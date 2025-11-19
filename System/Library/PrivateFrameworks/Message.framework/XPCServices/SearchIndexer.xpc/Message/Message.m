int main(int argc, const char **argv, const char **envp)
{
  sub_1004A58F4("com.apple.email.SearchIndexer", 0x1DuLL, 1);
  sub_1004A5844();

  v5 = _set_user_dir_suffix();
  swift_unknownObjectRelease();

  if (v5)
  {
    type metadata accessor for Service();
    v4 = static Service.main()();
    exit(v4);
  }

  sub_1004A58F4("_set_user_dir_suffix failed", 0x1BuLL, 1);
  sub_1004A69A4();
  __break(1u);
  result = swift_errorInMain();
  __break(1u);
  return result;
}

void *SetDetailsEncLabel(uint64_t a1, char *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32) + 304 * v3;
  *v4 = *(v4 - 304);
  *(v4 + 4) = -1;
  sub_100008830((v4 + 8), a2);
  result = memcpy((*(a1 + 32) + 304 * v3 + 32), (a1 + 532), 0x10CuLL);
  ++*(a1 + 40);
  return result;
}

_BYTE *sub_100001DF4(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100008878();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void PsSourceInit(int a1)
{
  dword_1005DEAB0 = 0;
  dword_1005DEAB4 = a1;
  if (qword_1005DEAB8)
  {
    operator delete[]();
  }

  operator new[]();
}

void PsSourceFinish(void)
{
  v0 = (2 * dword_1005DEAB4);
  v1 = qword_1005DEAB8;
  v2 = v0 & (v0 >> 31);
  v3 = v0 - 1;
  do
  {
    v4 = __OFSUB__(v0, 1);
    LODWORD(v0) = v0 - 1;
    if (v0 < 0 != v4)
    {
      goto LABEL_5;
    }

    v5 = *(qword_1005DEAB8 + v3--);
  }

  while (v5 == 32);
  v2 = v0 + 1;
LABEL_5:
  *(qword_1005DEAB8 + v2) = 0;
  fprintf(__stderrp, "(      %s) do-src\n", v1);
  v6 = qword_1005DEAB8;
  v7 = 2 * dword_1005DEAB4;
  memset(qword_1005DEAB8, 32, v7);
  *(v6 + v7) = 0;
  operator delete[]();
}

size_t PsSource(size_t result, const unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v4 = (result - a2) / dword_1005DEAB4 * dword_1005DEAB4;
  if (v4 >= dword_1005DEAB0)
  {
    v5 = a3;
    dword_1005DEAB0 = v4 + dword_1005DEAB4;
    v6 = (2 * dword_1005DEAB4);
    v7 = qword_1005DEAB8;
    v8 = v6 & (v6 >> 31);
    v9 = v6 - 1;
    while (1)
    {
      v10 = __OFSUB__(v6, 1);
      LODWORD(v6) = v6 - 1;
      if (v6 < 0 != v10)
      {
        break;
      }

      v11 = *(qword_1005DEAB8 + v9--);
      if (v11 != 32)
      {
        v8 = v6 + 1;
        break;
      }
    }

    *(qword_1005DEAB8 + v8) = 0;
    fprintf(__stderrp, "(      %s) do-src\n", v7);
    v12 = qword_1005DEAB8;
    v13 = dword_1005DEAB4;
    memset(qword_1005DEAB8, 32, 2 * dword_1005DEAB4);
    *(v12 + 2 * v13) = 0;
    v14 = &a2[v4];
    if (v13 >= v5 - v14)
    {
      v15 = (v5 - v14);
    }

    else
    {
      v15 = v13;
    }

    fprintf(__stderrp, "(%05x ", v4);
    if (v15 >= 1)
    {
      do
      {
        v17 = *v14++;
        v16 = v17;
        if (v17 == 10)
        {
          v18 = 32;
        }

        else
        {
          v18 = v16;
        }

        if (v18 == 13)
        {
          v18 = 32;
        }

        if (v18 == 9)
        {
          LOBYTE(v18) = 32;
        }

        switch(v16)
        {
          case '\\':
            v19 = __stderrp;
            v20 = "\\\\ ";
            break;
          case ')':
            v19 = __stderrp;
            v20 = "\\) ";
            break;
          case '(':
            v19 = __stderrp;
            v20 = "\\( ";
            break;
          default:
            if ((v18 - 32) > 0x5E)
            {
              fprintf(__stderrp, "%02x");
            }

            else
            {
              fprintf(__stderrp, "%c ");
            }

            goto LABEL_27;
        }

        fputs(v20, v19);
LABEL_27:
        --v15;
      }

      while (v15);
    }

    result = fwrite(") do-src\n", 9uLL, 1uLL, __stderrp);
    v21 = next_do_src_line;
    *(&do_src_offset + (next_do_src_line & 0xF)) = v4;
    next_do_src_line = v21 + 1;
  }

  return result;
}

uint64_t PsMark(uint64_t result, int a2, const unsigned __int8 *a3, int a4)
{
  v4 = (result - a3) % dword_1005DEAB4;
  if (a4)
  {
    v5 = 120;
  }

  else
  {
    v5 = 45;
  }

  v6 = qword_1005DEAB8;
  v7 = 2 * v4;
  *(qword_1005DEAB8 + v7) = 61;
  *(v6 + v7 + 1) = 61;
  if (a2 >= 2)
  {
    v8 = (v6 + 2 * v4 + 3);
    v9 = a2 - 1;
    do
    {
      *(v8 - 1) = v5;
      *v8 = v5;
      v8 += 2;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t PsHighlight(uint64_t result, const unsigned __int8 *a2, int a3, int a4)
{
  v4 = result - a2 + 1;
  v5 = v4 / dword_1005DEAB4 * dword_1005DEAB4;
  v6 = v4 % dword_1005DEAB4;
  v7 = next_do_src_line - 1;
  v8 = 1;
  while (*(&do_src_offset + (v7 & 0xF)) != v5)
  {
    ++v8;
    --v7;
    if (v8 == 17)
    {
      return result;
    }
  }

  return fprintf(__stderrp, "%d %d %d do-highlight%d\n", v8, v6 - 1, a3, a4);
}

void InitDetectEncodingState(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 31) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 145) = 0u;
  *(a1 + 196) = xmmword_1004B11F0;
  *(a1 + 240) = xmmword_1004B1200;
  *(a1 + 256) = 1200;
  *(a1 + 236) = -1;
  *(a1 + 228) = -1;
  *(a1 + 220) = -1;
  *(a1 + 212) = 23;
  do
  {
    if ((dword_1004C17A8[dword_1004B1270[v1]] & 0x200) == 0)
    {
      *(a1 + 264 + 4 * v2++) = v1;
    }

    ++v1;
  }

  while (v1 != 67);
  *(a1 + 260) = v2;
  bzero((a1 + 532), 0x334uLL);
}

uint64_t ApplyCompressedProb(unsigned __int8 *a1, int a2, int a3, uint64_t a4)
{
  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  v6 = (a4 + 1068);
  v7 = a4 + 532;
  v8 = -1;
  v9 = (a4 + 532);
  v10 = &a1[a2];
  do
  {
    v12 = *a1++;
    v11 = v12;
    if (!v12)
    {
      break;
    }

    v13 = v11 & 0xF;
    if ((v11 & 0xF) != 0)
    {
      v14 = v11 >> 4;
      v15 = &v9[v14];
      v16 = &v6[v14];
      v17 = (v15 - v7) >> 2;
      v18 = v13;
      v19 = a1;
      v20 = v15;
      v21 = v16;
      do
      {
        v23 = *v19++;
        v22 = v23;
        v24 = v8 <= v23;
        if (v8 >= v23)
        {
          result = result;
        }

        else
        {
          result = v17;
        }

        if (v24)
        {
          v8 = v22;
        }

        if (a3 >= 1)
        {
          v25 = 3 * a3 * v22 / 0x64u;
          if (*v20 > v25)
          {
            v25 = *v20;
          }

          *v20 = v25;
          *v21 = 1;
        }

        LODWORD(v17) = v17 + 1;
        ++v21;
        ++v20;
        --v18;
      }

      while (v18);
      a1 += v13;
      v9 = &v15[v13];
      v6 = &v16[v13];
    }

    else
    {
      v9 += v11;
      v6 += v11;
    }
  }

  while (a1 < v10);
  return result;
}

uint64_t TopCompressedProb(const char *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  result = 0;
  v6 = &a1[a2];
  do
  {
    v8 = *a1++;
    v7 = v8;
    if (!v8)
    {
      break;
    }

    v9 = v7 & 0xF;
    if ((v7 & 0xF) != 0)
    {
      v10 = (v7 >> 4) + v3;
      v11 = v7 & 0xF;
      v12 = a1;
      v13 = v10;
      do
      {
        v15 = *v12++;
        v14 = v15;
        v16 = v4 <= v15;
        if (v4 >= v15)
        {
          result = result;
        }

        else
        {
          result = v13;
        }

        if (v16)
        {
          v4 = v14;
        }

        ++v13;
        --v11;
      }

      while (v11);
      a1 += v9;
      v3 = v10 + v9;
    }

    else
    {
      v3 += v7;
    }
  }

  while (a1 < v6);
  return result;
}

uint64_t HintBinaryLookup8(uint64_t a1, signed int a2, unint64_t *a3)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = bswap64(*a3);
    do
    {
      v5 = (v3 + a2) >> 1;
      v6 = bswap64(*(a1 + 20 * v5));
      v7 = v6 >= v4;
      v8 = v6 > v4;
      v9 = !v7;
      v10 = v8 - v9;
      if (v10 < 0)
      {
        v3 = v5 + 1;
      }

      else
      {
        a2 = (v3 + a2) >> 1;
        if (!v10)
        {
          return v5;
        }
      }
    }

    while (v3 < a2);
  }

  return 0xFFFFFFFFLL;
}

uint64_t HintBinaryLookup4(uint64_t a1, signed int a2, unsigned int *a3)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = bswap32(*a3);
    do
    {
      v5 = (v3 + a2) >> 1;
      v6 = bswap32(*(a1 + 20 * v5));
      v7 = v6 >= v4;
      v8 = v6 > v4;
      v9 = !v7;
      v10 = v8 - v9;
      if (v10 < 0)
      {
        v3 = v5 + 1;
      }

      else
      {
        a2 = (v3 + a2) >> 1;
        if (!v10)
        {
          return v5;
        }
      }
    }

    while (v3 < a2);
  }

  return 0xFFFFFFFFLL;
}

uint64_t ApplyTldHint(char *__s, int a2, uint64_t a3)
{
  if (*__s == 126)
  {
    return 0;
  }

  memset(v17, 170, sizeof(v17));
  sub_100001DF4(__p, __s);
  MakeChar4(__p, v17);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17[2]) >= 0)
  {
    v7 = v17;
  }

  else
  {
    v7 = v17[0];
  }

  v8 = HintBinaryLookup4(byte_1004C3BD8, 247, v7);
  if (v8 < 0)
  {
    v3 = 0;
  }

  else
  {
    v9 = ApplyCompressedProb(&byte_1004C3BD8[20 * v8 + 4], 16, a2, a3);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 4;
    }

    *(a3 + 48) = v10;
    v11 = *(a3 + 32);
    if (v11)
    {
      v12 = *(a3 + 40);
      v13 = v11 + 304 * v12;
      *v13 = 0;
      *(v13 + 4) = v10;
      sub_100008830((v13 + 8), __s);
      memcpy((*(a3 + 32) + 304 * v12 + 32), (a3 + 532), 0x10CuLL);
      ++*(a3 + 40);
    }

    v3 = 1;
  }

  if (SHIBYTE(v17[2]) < 0)
  {
    operator delete(v17[0]);
  }

  return v3;
}

void sub_100002758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ApplyCharsetHint(char *__s, int a2, uint64_t a3)
{
  if (*__s == 126)
  {
    return 0;
  }

  memset(&__str, 170, sizeof(__str));
  sub_100001DF4(&__p, __s);
  MakeChar44(&__p, &__str);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  v8 = HintBinaryLookup8(byte_1004C4F24, 438, p_str);
  if (v8 < 0)
  {
    v3 = 0;
    goto LABEL_61;
  }

  v9 = ApplyCompressedProb(&byte_1004C4F24[20 * v8 + 8], 12, a2, a3);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = 4;
  }

  *(a3 + 48) = v10;
  if (*(a3 + 204) == 23 && *(a3 + 208) == 23)
  {
    v11 = 604;
    switch(v9)
    {
      case 9u:
        v12 = 12;
        goto LABEL_34;
      case 0xAu:
        *(a3 + 52) = 0;
        v11 = 572;
        goto LABEL_43;
      case 0xBu:
        v15 = 34;
        goto LABEL_32;
      case 0xCu:
        v12 = 9;
LABEL_34:
        *(a3 + 52) = v12;
        *(a3 + 568) += 120;
        v11 = 580;
        goto LABEL_43;
      case 0xDu:
        *(a3 + 52) = 0;
        v11 = 584;
        goto LABEL_43;
      case 0xEu:
        v16 = 28;
        goto LABEL_41;
      case 0xFu:
        *(a3 + 52) = 0;
        v11 = 592;
        goto LABEL_43;
      case 0x10u:
        v17 = 29;
        goto LABEL_39;
      case 0x11u:
        v13 = 25;
        goto LABEL_36;
      case 0x12u:
        goto LABEL_43;
      case 0x14u:
        v14 = 23;
        goto LABEL_22;
      case 0x16u:
        *(a3 + 52) = 0;
        v11 = 620;
        goto LABEL_43;
      case 0x17u:
        v14 = 20;
LABEL_22:
        *(a3 + 52) = v14;
        *(a3 + 612) += 120;
        v11 = 624;
        goto LABEL_43;
      case 0x19u:
        v13 = 17;
LABEL_36:
        *(a3 + 52) = v13;
        *(a3 + 632) += 120;
        v11 = 600;
        goto LABEL_43;
      case 0x1Au:
        v11 = 636;
        goto LABEL_43;
      case 0x1Bu:
        *(a3 + 52) = 0;
        v11 = 640;
        goto LABEL_43;
      case 0x1Cu:
        v16 = 14;
LABEL_41:
        *(a3 + 52) = v16;
        *(a3 + 588) += 120;
        v11 = 644;
        goto LABEL_43;
      case 0x1Du:
        v17 = 16;
LABEL_39:
        *(a3 + 52) = v17;
        *(a3 + 648) += 120;
        v11 = 596;
        goto LABEL_43;
      case 0x1Eu:
        *(a3 + 52) = 0;
        v11 = 652;
        goto LABEL_43;
      case 0x22u:
        v15 = 11;
LABEL_32:
        *(a3 + 52) = v15;
        *(a3 + 668) += 120;
        v11 = 576;
        goto LABEL_43;
      case 0x26u:
        *(a3 + 52) = 0;
        v11 = 684;
        goto LABEL_43;
      case 0x2Bu:
        *(a3 + 52) = 0;
        v11 = 704;
LABEL_43:
        *(a3 + v11) += 120;
        break;
      default:
        break;
    }
  }

  v18 = *(a3 + 32);
  if (v18)
  {
    v19 = *(a3 + 40);
    v20 = v18 + 304 * v19;
    *v20 = 0;
    *(v20 + 4) = v10;
    sub_100008830((v20 + 8), __s);
    memcpy((*(a3 + 32) + 304 * v19 + 32), (a3 + 532), 0x10CuLL);
    ++*(a3 + 40);
  }

  if (v10 > 4 || ((1 << v10) & 0x16) == 0)
  {
    *(a3 + 768) -= 2400;
  }

  std::string::basic_string(&__p, &__str, 0, 4uLL, &v26);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 4 || LODWORD(__p.__r_.__value_.__l.__data_) != 1919251317)
    {
      goto LABEL_60;
    }

LABEL_58:
    *(a3 + 764) += 7200;
    goto LABEL_60;
  }

  if (__p.__r_.__value_.__l.__size_ != 4)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_60;
  }

  v22 = *__p.__r_.__value_.__l.__data_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (v22 == 1919251317)
  {
    goto LABEL_58;
  }

LABEL_60:
  v3 = 1;
LABEL_61:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_100002B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ApplyEncodingHint(int a1, int a2, uint64_t a3)
{
  v5 = 0;
  v6 = a1 ^ (a1 >> 31);
  while (dword_1004B1270[v5] != v6)
  {
    if (++v5 == 67)
    {
      v5 = -1;
      break;
    }
  }

  if (a1 >= 0)
  {
    v7 = 6 * a2;
  }

  else
  {
    v7 = -6 * a2;
  }

  *(a3 + 532 + 4 * v5) += v7;
  if (*(a3 + 32))
  {
    v8 = MyEncodingName(v6);
    v9 = *(a3 + 40);
    v10 = *(a3 + 32) + 304 * v9;
    *v10 = 0xFFFFFFFF00000000;
    sub_100008830((v10 + 8), v8);
    memcpy((*(a3 + 32) + 304 * v9 + 32), (a3 + 532), 0x10CuLL);
    ++*(a3 + 40);
  }

  return 1;
}

uint64_t ApplyUILanguageHint(unsigned int a1, int a2, uint64_t a3)
{
  if (a1 == 26)
  {
    return 0;
  }

  memset(v21, 170, sizeof(v21));
  v6 = LanguageName(a1);
  sub_100001DF4(__p, v6);
  MakeChar8(__p, v21);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = HIBYTE(v21[2]);
  if (SHIBYTE(v21[2]) >= 0)
  {
    v8 = v21;
  }

  else
  {
    v8 = v21[0];
  }

  v9 = HintBinaryLookup8(byte_1004C715C, 151, v8);
  if (v9 < 0)
  {
    v3 = 0;
    if ((v7 & 0x80) == 0)
    {
      return v3;
    }

    goto LABEL_19;
  }

  v10 = ApplyCompressedProb(&byte_1004C715C[20 * v9 + 8], 12, a2, a3);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 4;
  }

  *(a3 + 48) = v11;
  v12 = *(a3 + 32);
  v13 = SHIBYTE(v21[2]);
  if (!v12)
  {
    v3 = 1;
    if ((SHIBYTE(v21[2]) & 0x80) == 0)
    {
      return v3;
    }

    goto LABEL_19;
  }

  v14 = v21[0];
  v15 = *(a3 + 40);
  v16 = v12 + 304 * v15;
  *v16 = 0;
  *(v16 + 4) = v11;
  if (v13 >= 0)
  {
    v17 = v21;
  }

  else
  {
    v17 = v14;
  }

  sub_100008830((v16 + 8), v17);
  memcpy((*(a3 + 32) + 304 * v15 + 32), (a3 + 532), 0x10CuLL);
  ++*(a3 + 40);
  v3 = 1;
  if ((HIBYTE(v21[2]) & 0x80) != 0)
  {
LABEL_19:
    operator delete(v21[0]);
  }

  return v3;
}

void sub_100002DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ApplyDefaultHint(unsigned int a1, uint64_t a2)
{
  v3 = 0;
  v4 = (a2 + 532);
  do
  {
    v5 = 3 * byte_1004C7D28[v3];
    if (dword_1004C17A8[dword_1004B1270[v3]])
    {
      v5 = 0;
    }

    *(v4 + v3++) = v5;
  }

  while (v3 != 67);
  if (a1 < 2)
  {
    *(a2 + 768) = *(a2 + 540) - 60;
  }

  if (FLAGS_demo_nodefault == 1)
  {
    *(v4 + 252) = 0u;
    v4[14] = 0u;
    v4[15] = 0u;
    v4[12] = 0u;
    v4[13] = 0u;
    v4[10] = 0u;
    v4[11] = 0u;
    v4[8] = 0u;
    v4[9] = 0u;
    v4[6] = 0u;
    v4[7] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = *(a2 + 40);
    v8 = v6 + 304 * v7;
    *v8 = 0xFFFFFFFF00000000;
    v9 = (v8 + 8);
    if (*(v8 + 31) < 0)
    {
      *(v8 + 16) = 7;
      v9 = *v9;
    }

    else
    {
      *(v8 + 31) = 7;
    }

    strcpy(v9, "Default");
    memcpy((*(a2 + 32) + 304 * v7 + 32), v4, 0x10CuLL);
    ++*(a2 + 40);
  }

  return 1;
}

uint64_t ExtractTLD(char *a1, char *__dst, int a3, const char **a4, int *a5)
{
  v10 = a3;
  result = strncpy(__dst, "~", a3);
  v12 = v10 - 1;
  __dst[v10 - 1] = 0;
  *a4 = 0;
  *a5 = 0;
  if (a1)
  {
    result = strlen(a1);
    v13 = result;
    if (result)
    {
      if (result < 11)
      {
        result = strncpy(__dst, a1, v10);
        __dst[v12] = 0;
      }

      else
      {
        result = strchr(a1, 47);
        if (result)
        {
          v14 = result;
          if (result != a1 && *(result - 1) == 58 && *(result + 1) == 47)
          {
            v15 = result - a1;
            if (result == a1)
            {
LABEL_11:
              v16 = (result + 2);
              v17 = strchr((result + 2), 47);
              v18 = &a1[v13 & 0x7FFFFFFF];
              if (v17)
              {
                v18 = v17;
              }

              v19 = v18 - v16;
              result = memchr((v14 + 2), 58, v18 - v16);
              if (result)
              {
                v19 = result - v16;
              }

              v20 = v19 + 2;
              v21 = (v19 + v14 + 3);
              v22 = -1;
              while (v20 >= 3)
              {
                --v20;
                v23 = *(v21 - 2);
                --v21;
                ++v22;
                if (v23 == 46)
                {
                  if (v22 >= a3)
                  {
                    v24 = v12;
                  }

                  else
                  {
                    v24 = v22;
                  }

                  result = memcpy(__dst, v21, v24);
                  __dst[v24] = 0;
                  break;
                }
              }

              *a4 = v16;
              *a5 = v19;
            }

            else
            {
              while (a1[v15 - 1] != 46)
              {
                if (!--v15)
                {
                  goto LABEL_11;
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

void *ApplyHints(char *a1, char *a2, char *a3, int a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  memset(__dst, 170, sizeof(__dst));
  ExtractTLD(a1, __dst, 16, &v36, &v35);
  *(a7 + 48) = 4;
  if (a2)
  {
    LODWORD(v15) = 4;
    if (*a2 == 126)
    {
      LODWORD(a2) = 0;
    }

    else
    {
      *(a7 + 52) = 4;
      LODWORD(a2) = ApplyCharsetHint(a2, 100, a7);
      v15 = *(a7 + 48);
      *(a7 + 204) = dword_1004B1270[v15];
      if (v15 == 4 || v15 == 1)
      {
        *(a7 + 64) = 1;
      }
    }
  }

  else
  {
    LODWORD(v15) = 4;
  }

  if (a3)
  {
    if (*a3 != 126)
    {
      *(a7 + 52) = v15;
      LODWORD(a2) = ApplyCharsetHint(a3, 100, a7) + a2;
      v16 = *(a7 + 48);
      LODWORD(v15) = *(a7 + 48);
      *(a7 + 208) = dword_1004B1270[v16];
      if (v16 == 4 || v15 == 1)
      {
        *(a7 + 64) = 1;
      }
    }
  }

  if (a4 != 23)
  {
    *(a7 + 52) = v15;
    ApplyEncodingHint(a4, 50, a7);
    LODWORD(a2) = a2 + 1;
  }

  if (a5 != 26)
  {
    *(a7 + 52) = *(a7 + 48);
    LODWORD(a2) = ApplyUILanguageHint(a5, 50, a7) + a2;
  }

  if (a1)
  {
    *(a7 + 200) = CompactEncDet::TopEncodingOfTLDHint(__dst, v14);
    if (a2 == 1)
    {
      if (*__dst != 7171939)
      {
        *(a7 + 52) = *(a7 + 48);
        ApplyTldHint(__dst, 50, a7);
        v19 = *(a7 + 48);
        if (v19 == 4 || v19 == 1)
        {
          *(a7 + 64) = 1;
        }
      }

      goto LABEL_31;
    }

    if (a2)
    {
      goto LABEL_31;
    }

    *(a7 + 52) = *(a7 + 48);
    v17 = ApplyTldHint(__dst, 100, a7);
    LODWORD(a2) = v17;
    v18 = *(a7 + 48);
    if (v18 == 4 || v18 == 1)
    {
      *(a7 + 64) = 1;
    }

    if (!(*__dst ^ 0x7568 | __dst[2]))
    {
      *(a7 + 64) = 1;
      if (v17)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

  if (!a2)
  {
LABEL_25:
    *(a7 + 64) = 1;
    *(a7 + 52) = *(a7 + 48);
    ApplyDefaultHint(a6, a7);
  }

LABEL_31:
  *(a7 + 628) = *(a7 + 556) - 60;
  v20 = *(a7 + 544) - 60;
  *(a7 + 608) = v20;
  *(a7 + 660) = v20;
  v21 = *(a7 + 564);
  *(a7 + 564) = v21 - 60;
  *(a7 + 672) = v21 - 120;
  v22 = *(a7 + 32);
  if (v22)
  {
    v23 = *(a7 + 40);
    v24 = v22 + 304 * v23;
    *v24 = 0xFFFFFFFF00000000;
    v25 = (v24 + 8);
    if (*(v24 + 31) < 0)
    {
      *(v24 + 16) = 8;
      v25 = *v25;
    }

    else
    {
      *(v24 + 31) = 8;
    }

    strcpy(v25, "Endhints");
    memcpy((*(a7 + 32) + 304 * v23 + 32), (a7 + 532), 0x10CuLL);
    v26 = *(a7 + 40) + 1;
    *(a7 + 40) = v26;
    if (FLAGS_enc_detect_detail2 == 1)
    {
      v27 = dword_1005CCDDC;
      if ((dword_1005CCDDC & 0x80000000) == 0)
      {
        v28 = *(a7 + 32) + 304 * v26;
        *v28 = 0;
        *(v28 + 4) = v27;
        v29 = (v28 + 8);
        if (*(v28 + 31) < 0)
        {
          *(v28 + 16) = 0;
          v29 = *v29;
        }

        else
        {
          *(v28 + 31) = 0;
        }

        *v29 = 0;
        memcpy((*(a7 + 32) + 304 * v26 + 32), (a7 + 532), 0x10CuLL);
        LODWORD(v26) = *(a7 + 40) + 1;
        *(a7 + 40) = v26;
      }

      v30 = dword_1005CCDE0;
      if ((dword_1005CCDE0 & 0x80000000) == 0)
      {
        v31 = v26;
        v32 = *(a7 + 32) + 304 * v26;
        *v32 = 0;
        *(v32 + 4) = v30;
        v33 = (v32 + 8);
        if (*(v32 + 31) < 0)
        {
          *(v32 + 16) = 0;
          v33 = *v33;
        }

        else
        {
          *(v32 + 31) = 0;
        }

        *v33 = 0;
        memcpy((*(a7 + 32) + 304 * v31 + 32), (a7 + 532), 0x10CuLL);
        ++*(a7 + 40);
      }
    }
  }

  if (*(a7 + 48) == *(a7 + 52))
  {
    *(a7 + 52) = 0;
  }

  if (FLAGS_force127 == 1)
  {
    *(a7 + 65) = FLAGS_force127;
    if (FLAGS_enc_detect_source == 1)
    {
      PsHighlight(0, *a7, 0, 2);
    }
  }

  if (FLAGS_counts == 1)
  {
    if (*(a7 + 64) == 1)
    {
      ++dword_1005DEAC0;
    }

    if (*(a7 + 65) == 1)
    {
      ++dword_1005DEAC4;
    }
  }

  return memcpy((a7 + 800), (a7 + 532), 0x10CuLL);
}

uint64_t CompactEncDet::TopEncodingOfTLDHint(CompactEncDet *this, const char *a2)
{
  memset(v10, 170, sizeof(v10));
  sub_100001DF4(__p, this);
  MakeChar4(__p, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = SHIBYTE(v10[2]);
  v3 = v10[0];
  if (v10[2] >= 0)
  {
    v4 = v10;
  }

  else
  {
    v4 = v10[0];
  }

  v5 = HintBinaryLookup4(byte_1004C3BD8, 247, v4);
  if (v5 < 0)
  {
    v6 = 23;
    if ((v2 & 0x80000000) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

  v6 = dword_1004B1270[TopCompressedProb(&byte_1004C3BD8[20 * v5 + 4], 16)];
  if (v2 < 0)
  {
LABEL_8:
    operator delete(v3);
  }

  return v6;
}

void sub_100003678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *InitialBytesBoost(unsigned __int8 *result, int a2, uint64_t a3)
{
  if (a2 < 4)
  {
    return result;
  }

  v4 = *result;
  v5 = result[1];
  v6 = v5 | (v4 << 8);
  v7 = result[3] | (result[2] << 8);
  v8 = (result[2] << 8) | (v6 << 16);
  if (v8 != -272908544)
  {
    v12 = _byteswap_ushort(*(result + 1)) | (v6 << 16);
    if (v12 == -131072)
    {
      *(a3 + 212) = 60;
      v9 = 57;
      v10 = 1200;
LABEL_9:
      v11 = 760;
      goto LABEL_16;
    }

    if (v12 == 65279)
    {
      *(a3 + 212) = 59;
      v9 = 56;
      v10 = 1200;
LABEL_7:
      v11 = 756;
      goto LABEL_16;
    }

    if (v6 == 65534)
    {
      *(a3 + 212) = 58;
      v9 = 39;
      v10 = 1800;
LABEL_15:
      v11 = 688;
      goto LABEL_16;
    }

    if (v6 == 65279)
    {
      *(a3 + 212) = 57;
      v9 = 37;
      v10 = 1800;
LABEL_13:
      v11 = 680;
      goto LABEL_16;
    }

    if (!v8 && byte_1004C7D6B[result[3]])
    {
      *(a3 + 756) += 600;
      v9 = 56;
      v10 = -600;
      goto LABEL_9;
    }

    if ((v12 & 0xFFFFFF) == 0 && byte_1004C7D6B[v4])
    {
      *(a3 + 760) += 600;
      v9 = 57;
      v10 = -600;
      goto LABEL_7;
    }

    if (!*result && byte_1004C7D6B[v5])
    {
      v9 = 37;
      v10 = 600;
      goto LABEL_13;
    }

    if (!result[1] && byte_1004C7D6B[v4])
    {
      v9 = 39;
      v10 = 600;
      goto LABEL_15;
    }

    if (v12 == -1 || !v12)
    {
      v10 = -600;
      *(a3 + 756) = vadd_s32(*(a3 + 756), vdup_n_s32(0xFFFFFDA8));
      *(a3 + 680) -= 600;
      v9 = -1;
      goto LABEL_15;
    }

    if (v6 == 0xFFFF || !v6)
    {
      *(a3 + 680) -= 600;
      v9 = -1;
      v10 = -600;
      goto LABEL_15;
    }

    v9 = -1;
    if (v8 == -2556160)
    {
      goto LABEL_53;
    }

    v10 = 7200;
    v11 = 764;
    switch(v12)
    {
      case -1991225785:
        goto LABEL_16;
      case 1195984440:
        goto LABEL_16;
      case 1347093252:
        goto LABEL_16;
    }

    v11 = 764;
    if (v8 == 529205248)
    {
      goto LABEL_16;
    }

    if (v6 == 30938)
    {
      goto LABEL_16;
    }

    if (v12 == 626017350)
    {
      goto LABEL_16;
    }

    v11 = 764;
    if ((_byteswap_ushort(*(result + 1)) & 0xFF1F | (v6 << 16)) == 0x63535700 || (_byteswap_ushort(*(result + 1)) & 0xFF1F | (v6 << 16)) == 0x66535700)
    {
      goto LABEL_16;
    }

    v11 = 764;
    if (v12 <= 1213681695)
    {
      if (v12 > 943870034)
      {
        if (v12 == 943870035)
        {
          goto LABEL_16;
        }

        v20 = 1128485700;
      }

      else
      {
        if (v12 == 23487344)
        {
          goto LABEL_16;
        }

        v20 = 704662861;
      }

      goto LABEL_75;
    }

    if (v12 <= 1346655070)
    {
      if (v12 != 1213681696)
      {
        v20 = 1296891946;
        goto LABEL_75;
      }

      if (a2 < 0x13)
      {
        goto LABEL_99;
      }

      v22 = *result == 0x75636F442E505748 && *(result + 1) == 0x6C69462E746E656DLL;
      if (!v22 || *(result + 11) != 0x562E656C69462E74)
      {
        v24 = *result == 0x75636F4420505748 && *(result + 1) == 0x6C694620746E656DLL;
        if (!v24 || *(result + 11) != 0x5620656C69462074)
        {
          goto LABEL_99;
        }
      }
    }

    else
    {
      if (v12 != 1346655071)
      {
        if (v12 == 1397312848)
        {
          goto LABEL_16;
        }

        v20 = 2135247942;
LABEL_75:
        if (v12 != v20)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (a2 < 0xE || (*result == 0x535245565F534450 ? (v21 = *(result + 6) == 0x44495F4E4F495352) : (v21 = 0), !v21))
      {
LABEL_99:
        v10 = 2400;
        goto LABEL_54;
      }
    }

LABEL_53:
    v10 = 7200;
LABEL_54:
    v11 = 764;
    goto LABEL_16;
  }

  *(a3 + 212) = 22;
  *(a3 + 540) += 1200;
  v9 = 2;
  v10 = 1200;
  v11 = 768;
LABEL_16:
  *(a3 + v11) += v10;
LABEL_17:
  v13 = *(a3 + 680);
  v14 = v13 > 0 || *(a3 + 688) >= 1;
  v15 = *(a3 + 756);
  if (v15 <= 0 && *(a3 + 760) < 1)
  {
    v16 = 0;
    if (v14)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v16 = 1;
  if (!v14)
  {
LABEL_23:
    *(a3 + 680) = v13 - 4800;
    *(a3 + 688) -= 9600;
  }

LABEL_24:
  if ((v16 & 1) == 0)
  {
    *(a3 + 756) = v15 - 4800;
    *(a3 + 760) -= 4800;
  }

  if ((FLAGS_ced_allow_utf8utf8 & 1) == 0)
  {
    *(a3 + 768) -= 4800;
  }

  *(a3 + 796) -= 4800;
  if (*(a3 + 32))
  {
    memset(__str, 170, sizeof(__str));
    snprintf(__str, 0x10uLL, "%04x%04x", v6, v7);
    v18 = *(a3 + 40);
    v17 = (a3 + 40);
    v19 = *(v17 - 1) + 304 * v18;
    *v19 = 0;
    *(v19 + 4) = v9;
    sub_100008830((v19 + 8), __str);
    result = memcpy((*(v17 - 1) + 304 * v18 + 32), v17 + 123, 0x10CuLL);
    ++*v17;
  }

  return result;
}

uint64_t Base64ScanLen(const unsigned __int8 *a1, const unsigned __int8 *a2)
{
  if (a2 - a1 >= 4 && *a1 == 43 && a1[1] == 43 && a1[2] == 43)
  {
    return 81;
  }

  v3 = a1;
  do
  {
    if (v3 >= a2)
    {
      break;
    }

    v4 = *v3++;
  }

  while ((byte_1004B137C[v4] & 0x80000000) == 0);
  return (~a1 + v3);
}

BOOL GoodUnicodeFromBase64(const unsigned __int8 *a1, const unsigned __int8 *a2)
{
  v2 = a2 - a1;
  if (a2 <= a1)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = a1;
    do
    {
      v9 = *v7++;
      v8 = v9;
      v10 = v9 - 97;
      v11 = v9 - 65;
      if (v9 == 48)
      {
        v12 = v6 + 1;
      }

      else
      {
        v12 = v6;
      }

      v13 = v8 == 43;
      if (v8 == 43)
      {
        v14 = v6;
      }

      else
      {
        v14 = v12;
      }

      if (v13)
      {
        v15 = v3 + 1;
      }

      else
      {
        v15 = v3;
      }

      v16 = v11 > 0x19;
      if (v11 > 0x19)
      {
        v17 = v5;
      }

      else
      {
        v14 = v6;
        v17 = v5 + 1;
      }

      if (!v16)
      {
        v15 = v3;
      }

      if (v10 <= 0x19)
      {
        ++v4;
      }

      else
      {
        v6 = v14;
        v5 = v17;
        v3 = v15;
      }
    }

    while (v7 != a2);
  }

  v18 = v2 >> 4;
  if (v3 > (v2 >> 4) + 1 || v4 <= v18 || v5 <= v18 || v6 <= v2 >> 5)
  {
    return 0;
  }

  v23 = v2 & 7;
  v24 = a1[v2 - 1];
  if (v23 != 6)
  {
    return v23 != 3 || (byte_1004B137C[v24] & 3) == 0;
  }

  return (byte_1004B137C[v24] & 0xF) == 0;
}

uint64_t UTF7BoostWhack(uint64_t result, int a2, int a3)
{
  v3 = *(result + 4 * a2 + 1544);
  if (v3 >= *(result + 88))
  {
    v4 = result;
    ++*(result + 84);
    if (a3 != 45)
    {
      if ((a3 - 48) >= 0xA && ((a3 & 0xDF) - 65) >= 0x1Au && ((a3 - 43) & 0xFB) != 0)
      {
LABEL_6:
        v5 = *(v4 + 708);
LABEL_7:
        *(v4 + 708) = v5 - 600;
        return result;
      }

      v6 = (*result + v3 + 1);
      result = Base64ScanLen(v6, *(result + 8));
      if (result != 3 && result != 6)
      {
        v8 = result;
        if ((result & 7) == 7 || ((1 << (result & 7)) & 0x49) == 0)
        {
          goto LABEL_6;
        }

        result = GoodUnicodeFromBase64(v6, &v6[result]);
        v5 = *(v4 + 708);
        if (!result)
        {
          goto LABEL_7;
        }

        *(v4 + 708) = v5 + 600;
        *(v4 + 88) = v3 + v8 + 1;
      }
    }
  }

  return result;
}

_DWORD *BinaryBoostWhack(_DWORD *result, unsigned int a2, unsigned int a3)
{
  v3 = 1 << ((a2 >> 6) & 2 | (a3 >> 7));
  v4 = 1 << ((a2 >> 3) & 0x1C | (a3 >> 6));
  v5 = result[19];
  if ((v5 & v3) == 0)
  {
    result[19] = v5 | v3;
    v6 = result[17] + 1;
    result[17] = v6;
    if (v6 == 4)
    {
      result[191] += 1200;
    }
  }

  v7 = result[20];
  if ((v7 & v4) == 0)
  {
    result[20] = v7 | v4;
    v8 = result[18];
    result[18] = v8 + 1;
    if (v8 >= 10)
    {
      result[191] += 2400;
    }
  }

  return result;
}

uint64_t UTF1632BoostWhack(uint64_t result, char a2, int a3)
{
  if (a3)
  {
    v3 = -600;
    *(result + 756) = vadd_s32(*(result + 756), vdup_n_s32(0xFFFFFDA8));
    v4 = 688;
    v5 = 680;
  }

  else
  {
    *(result + 680) -= 600;
    *(result + 688) -= 600;
    if ((a2 & 3u) - 1 >= 2)
    {
      if ((a2 & 3) != 0)
      {
        return result;
      }

      v3 = 60;
      v4 = 756;
      v5 = 760;
    }

    else
    {
      v3 = 60;
      v4 = 760;
      v5 = 756;
    }
  }

  *(result + v5) -= 600;
  *(result + v4) += v3;
  return result;
}

uint64_t CheckUTF8Seq(_DWORD *a1, char a2)
{
  v2 = a1[335];
  v3 = a1[337];
  if (v2 >= v3)
  {
    v4 = 0;
    goto LABEL_12;
  }

  v4 = 0;
  v5 = a1 + 24;
  v6 = a1 + 2 * v2 + 1449;
  v7 = &a1[v2 + 434];
  do
  {
    v8 = *(v6 - 1);
    v9 = *v6;
    if (v2 <= 0)
    {
      v10 = a1[23];
    }

    else
    {
      v10 = a1[23];
      if (*v7 == *(v7 - 1) + 2)
      {
        v11 = v10;
        goto LABEL_8;
      }
    }

    v11 = 0;
    v12 = byte_1004B147C[16 * v10 + 2];
    ++v5[v12];
    a1[23] = 0;
LABEL_8:
    v13 = vuzp1_s16(vceq_s32(vdup_n_s32(v8), 0xDF000000C9), 0xDF000000C9);
    v14 = v9;
    v15 = vand_s8(vzip1_s16(v13, vdup_lane_s16(v13, 1)), vand_s8(vceq_s16((*&vdup_n_s16(v9) & 0xFF00FF00FF00FFLL), 0xAB0093009200AELL), 0x8000400020001));
    v15.i32[0] = vaddv_s16(v15) & 0xF;
    v16 = vcnt_s8(v15);
    v16.i16[0] = vaddlv_u8(v16);
    v17 = v8 >> 4;
    v18 = byte_1004B147C[16 * v11 + v17];
    ++v5[v18];
    v4 += v16.i32[0];
    v19 = byte_1004B14FC[16 * a1[23] + v17];
    a1[23] = v19;
    v20 = byte_1004B147C[16 * v19 + (v14 >> 4)];
    v6 += 2;
    ++v5[v20];
    a1[23] = byte_1004B14FC[16 * a1[23] + (v14 >> 4)];
    ++v2;
    ++v7;
  }

  while (v3 != v2);
  if (v4 > 0)
  {
    a1[134] += 120 * v4;
    a1[137] += 120 * v4;
  }

LABEL_12:
  v21 = a1[27];
  v22 = a1[28];
  v24 = a1[25];
  v23 = a1[26];
  v25 = (120 * (4 * v22 + 2 * v23 + 3 * (v21 - v4))) >> a2;
  v26 = v25 + a1[135];
  v27 = a1[192];
  v28 = v21 + v23;
  v29 = a1[29];
  a1[28] = 0;
  a1[29] = v28 + v22 + v29;
  v30 = (120 * v24) >> a2;
  a1[135] = v26 - v30;
  a1[192] = v25 + v27 - v30;
  *(a1 + 13) = 0;
  a1[25] = 0;
  return (v25 - v30);
}

uint64_t CheckUTF8UTF8Seq(uint64_t a1, char a2)
{
  v2 = *(a1 + 1340);
  v3 = *(a1 + 1348);
  if (2 * v2 < 2 * v3)
  {
    v4 = a1 + 1448 + 2 * v3;
    v5 = a1 + 1448 + 2 * v2;
    v6 = a1 + 128;
    do
    {
      v7 = *(a1 + 120);
      if (v2 < 1 || *(a1 + 1736 + 4 * v2) != *(a1 + 1736 + 4 * (v2 - 1)) + 2)
      {
        *(a1 + 124) = 0;
        v8 = byte_1004B157C[16 * v7 + 2];
        ++*(v6 + 4 * v8);
        v7 = byte_1004B15FC[16 * v7 + 2];
      }

      v9 = *(a1 + 124);
      if (v5 + v9 + 1 < v4)
      {
        v10 = *(v5 + v9);
        v11 = (*(v9 + v5 + 1) >> 4) & 3;
        v12 = v11 | 4;
        if (v10 != 226)
        {
          v12 = (*(v9 + v5 + 1) >> 4) & 3;
        }

        v13 = (v10 - 194) > 9 || ((1 << (v10 + 62)) & 0x219) == 0;
        v14 = v11 | 8;
        if (v13)
        {
          v14 = (*(v9 + v5 + 1) >> 4) & 3;
        }

        if ((v10 & 0xF0) == 0xC0)
        {
          v15 = v14;
        }

        else
        {
          v15 = v12;
        }

        v16 = v11 | 0xC;
        if (v10 == 195)
        {
          v17 = v16;
        }

        else
        {
          v17 = v15;
        }

        *(a1 + 124) = v9 ^ byte_1004C7E6B[16 * v7 + v17];
        v18 = byte_1004B157C[16 * v7 + v17];
        ++*(v6 + 4 * v18);
        *(a1 + 120) = byte_1004B15FC[16 * v7 + v17];
        LODWORD(v2) = v2 + 1;
      }

      v5 += 2;
    }

    while (v5 < v4);
  }

  v19 = *(a1 + 148);
  v20 = *(a1 + 140) + *(a1 + 136) + *(a1 + 144);
  *(a1 + 768) += (240 * v20) >> a2;
  *(a1 + 148) = v20 + v19;
  *(a1 + 132) = 0;
  *(a1 + 140) = 0;
  return ((240 * v20) >> a2);
}

_DWORD *CheckIso2022ActiveSeq(_DWORD *result)
{
  v1 = 2 * result[335];
  v2 = result[337];
  if (v1 < 2 * v2)
  {
    v3 = result + 2 * v2 + 1448;
    for (i = result + v1 + 1448; i < v3; i += 2)
    {
      v5 = *i;
      switch(v5)
      {
        case 0xEu:
          result[154] -= 600;
          if (!result[38])
          {
            goto LABEL_22;
          }

          break;
        case 0xFu:
          result[154] -= 600;
          v8 = result[38];
          if (v8)
          {
            if (v8 == 3)
            {
              v9 = 60;
            }

            else
            {
              if (v8 != 2)
              {
                goto LABEL_31;
              }

              v9 = -60;
            }

            result[178] += v9;
            result[175] += v9;
            goto LABEL_31;
          }

LABEL_22:
          result[178] -= 2400;
          v7 = result[175] - 2400;
LABEL_23:
          result[175] = v7;
          result[38] = 1;
          continue;
        case 0x1Bu:
          v6 = i[1];
          if (v6 == 40)
          {
            v13 = result[38];
            if (v13 == 3)
            {
              v14 = 60;
LABEL_30:
              result[154] += v14;
            }

            else if (v13 == 2)
            {
              v14 = -60;
              goto LABEL_30;
            }

LABEL_31:
            result[38] = 2;
            continue;
          }

          if (v6 != 36)
          {
            result[154] -= 600;
            result[178] -= 600;
            v7 = result[175] - 600;
            goto LABEL_23;
          }

          break;
        default:
          if (v5 <= 31)
          {
            v10 = v5 > 0xD;
            v11 = (1 << v5) & 0x3600;
            if (v10 || v11 == 0)
            {
              result[154] -= 600;
              result[178] -= 600;
              result[175] -= 600;
            }
          }

          continue;
      }

      result[38] = 3;
    }
  }

  if (!result[38])
  {
    result[178] &= result[178] >> 31;
    result[175] &= result[175] >> 31;
    result[154] &= result[154] >> 31;
  }

  return result;
}

_DWORD *CheckHzActiveSeq(_DWORD *result)
{
  v1 = 2 * result[334];
  v2 = result[336];
  if (v1 < 2 * v2)
  {
    v3 = result + 2 * v2 + 1352;
    for (i = result + v1 + 1352; i < v3; i += 2)
    {
      if (*i == 126)
      {
        v5 = i[1];
        if (v5 == 123)
        {
          result[39] = 3;
          if (*i != 126)
          {
            continue;
          }

          v5 = i[1];
        }

        if (v5 == 125)
        {
          v6 = result[39];
          if (v6 == 3)
          {
            v7 = 60;
LABEL_12:
            result[173] += v7;
          }

          else if (v6 == 2)
          {
            v7 = -60;
            goto LABEL_12;
          }

          result[39] = 2;
        }
      }
    }
  }

  if (!result[39])
  {
    result[173] &= result[173] >> 31;
  }

  return result;
}

uint64_t CheckEucJpSeq(uint64_t result)
{
  v1 = 2 * *(result + 1340);
  v2 = *(result + 1348);
  if (v1 < 2 * v2)
  {
    v3 = result + 1448 + 2 * v2;
    v4 = (result + 1448 + v1);
    v5 = *(result + 160);
    do
    {
      if (v5)
      {
        *(result + 560) += 120;
      }

      v6 = *v4;
      v7 = v4[1];
      if (v6 < 0)
      {
        if (v6 != -113)
        {
          goto LABEL_10;
        }

        v5 ^= 1u;
        v8 = v5 & 1;
      }

      else
      {
        v8 = 0;
        v5 = 0;
      }

      *(result + 160) = v8;
LABEL_10:
      if ((v7 & 0x80000000) == 0)
      {
        v9 = 0;
        v5 = 0;
LABEL_14:
        *(result + 160) = v9;
        goto LABEL_15;
      }

      if (v7 == -113)
      {
        v5 ^= 1u;
        v9 = v5 & 1;
        goto LABEL_14;
      }

LABEL_15:
      v4 += 2;
    }

    while (v4 < v3);
  }

  return result;
}

int32x2_t CheckBinaryDensity(int a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = *(a2 + 1736);
    v4 = -2400;
    if (v3 > 6143)
    {
      goto LABEL_10;
    }

    v5 = a1 - *a2;
    if (v5 >= 0x2000)
    {
      goto LABEL_10;
    }

    v6 = *(a2 + 1348);
    v7 = v5 - v3;
    if (v7 > 32 * v6)
    {
      *(a2 + 764) -= 2400;
      result = vadd_s32(*(a2 + 756), vdup_n_s32(0xFFFFF6A0));
      *(a2 + 756) = result;
      *(a2 + 680) -= 2400;
      *(a2 + 688) -= 2400;
    }

    if (v6 >= 8 && 8 * v6 >= v7 && *(a2 + 68) >= 2)
    {
      v4 = 60;
LABEL_10:
      *(a2 + 764) += v4;
      result = vadd_s32(*(a2 + 756), vdup_n_s32(v4));
      *(a2 + 756) = result;
      *(a2 + 680) += v4;
      *(a2 + 688) += v4;
    }
  }

  return result;
}

void ActiveSpecialBoostWhack(int a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 1344) - *(a2 + 1336);
  v4 = *(a2 + 1348);
  v5 = *(a2 + 1340);
  if ((*(a2 + 196) & 6) == 0 || v3 < 1)
  {
    goto LABEL_24;
  }

  v46 = *(a2 + 1340);
  v48 = *(a2 + 1348);
  v7 = 0;
  v8 = a2 + 1352;
  v9 = a2 + 1544;
  do
  {
    v10 = *(v2 + 1336);
    v11 = v10;
    v12 = v7 + v10;
    v13 = 2 * (v7 + v10);
    v14 = *(v8 + v13);
    v15 = *(v8 + v13 + 1);
    if (v14 != 126)
    {
      if (v14 == 43)
      {
        UTF7BoostWhack(v2, v12, *(v8 + v13 + 1));
        if (*(v2 + 32))
        {
          memset(__str, 170, sizeof(__str));
          snprintf(__str, 0x10uLL, "%02x%02x+", 43, v15);
          v16 = byte_1004B167C[v15 + 11008];
          v17 = *(v2 + 40);
          v18 = *(v2 + 32) + 304 * v17;
          *v18 = *(v9 + 4 * (v7 + v11));
          *(v18 + 4) = v16;
          sub_100008830((v18 + 8), __str);
          memcpy((*(v2 + 32) + 304 * v17 + 32), (v2 + 532), 0x10CuLL);
          ++*(v2 + 40);
        }
      }

      goto LABEL_20;
    }

    v19 = 600;
    if (*(v8 + v13 + 1) <= 0x7Cu)
    {
      if (v15 == 10)
      {
        goto LABEL_18;
      }

      if (v15 == 123)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v15 != 125)
    {
      if (v15 == 126)
      {
        goto LABEL_18;
      }

LABEL_16:
      v19 = -600;
    }

LABEL_17:
    *(v2 + 692) += v19;
LABEL_18:
    if (*(v2 + 32))
    {
      memset(__str, 170, sizeof(__str));
      snprintf(__str, 0x10uLL, "%02x%02x~", 126, v15);
      v20 = byte_1004B167C[v15 + 32256];
      v21 = *(v2 + 40);
      v22 = *(v2 + 32) + 304 * v21;
      *v22 = *(v9 + 4 * (v7 + v11));
      *(v22 + 4) = v20;
      sub_100008830((v22 + 8), __str);
      memcpy((*(v2 + 32) + 304 * v21 + 32), (v2 + 532), 0x10CuLL);
      ++*(v2 + 40);
    }

LABEL_20:
    ++v7;
  }

  while (v3 != v7);
  v4 = v48;
  v5 = v46;
  if (*(v2 + 84) > 7 && !*(v2 + 88))
  {
    *(v2 + 708) -= 4800;
  }

LABEL_24:
  v23 = v4 - v5;
  if ((*(v2 + 196) & 0x10F8) == 0 || v23 < 1)
  {
    goto LABEL_58;
  }

  v25 = 0;
  v26 = 0;
  v27 = v2 + 1448;
  v47 = v4 - v5;
  v49 = v2 + 1736;
  v28 = v2 + 2120;
  v45 = v2 + 2120;
  while (2)
  {
    v29 = v25 + *(v2 + 1340);
    v30 = 2 * v29;
    v31 = *(v27 + v30);
    v32 = *(v49 + 4 * v29);
    v33 = *(v27 + v30 + 1);
    if (v26 <= *(v28 + 4 * v29))
    {
      v26 = *(v28 + 4 * v29);
    }

    if (v31 == 255)
    {
      if (v33 == 255)
      {
        UTF1632BoostWhack(v2, v32, 255);
      }

      if (*(v2 + 32))
      {
        memset(__str, 170, sizeof(__str));
        snprintf(__str, 0x10uLL, "%02x%02xF", 255, v33);
        v35 = byte_1004B167C[v33 + 65280];
        v36 = *(v2 + 40);
        v37 = v2;
        v38 = *(v2 + 32) + 304 * v36;
        *v38 = *(v49 + 4 * v29);
        *(v38 + 4) = v35;
        sub_100008830((v38 + 8), __str);
        memcpy((*(v2 + 32) + 304 * v36 + 32), (v2 + 532), 0x10CuLL);
        ++*(v2 + 40);
        goto LABEL_46;
      }
    }

    else if (!*(v27 + 2 * v29))
    {
      if (*(v27 + v30 + 1))
      {
        if (byte_1004C7D6B[v33])
        {
          v34 = (*(v49 + 4 * v29) & 1) == 0;
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          *(v49 + 4 * v29) = v32 & 0xFFFFFFFE;
        }
      }

      else
      {
        UTF1632BoostWhack(v2, v32, 0);
      }

      if (*(v2 + 32))
      {
        memset(__str, 170, sizeof(__str));
        snprintf(__str, 0x10uLL, "%02x%02xZ", 0, v33);
        v39 = byte_1004B167C[v33];
        v37 = v2;
        v41 = *(v2 + 40);
        v40 = (v2 + 40);
        v42 = *(v40 - 1) + 304 * v41;
        *v42 = *(v49 + 4 * v29);
        *(v42 + 4) = v39;
        sub_100008830((v42 + 8), __str);
        memcpy((*(v40 - 1) + 304 * v41 + 32), (v37 + 532), 0x10CuLL);
        ++*v40;
LABEL_46:
        v2 = v37;
        v28 = v45;
        v23 = v47;
      }
    }

    if ((*(v2 + 196) & 0x80) != 0)
    {
      BinaryBoostWhack(v2, v31, v33);
    }

    if (v23 != ++v25)
    {
      continue;
    }

    break;
  }

  v43 = *(v2 + 196);
  if ((v43 & 0x10) == 0)
  {
    if ((v43 & 0x20) == 0)
    {
      goto LABEL_52;
    }

LABEL_62:
    CheckUTF8UTF8Seq(v2, v26);
    v43 = *(v2 + 196);
    if ((v43 & 8) != 0)
    {
      goto LABEL_63;
    }

LABEL_53:
    if ((v43 & 4) == 0)
    {
      goto LABEL_54;
    }

LABEL_64:
    CheckHzActiveSeq(v2);
    v43 = *(v2 + 196);
    if ((v43 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

LABEL_55:
    CheckEucJpSeq(v2);
    v43 = *(v2 + 196);
    goto LABEL_56;
  }

  CheckUTF8Seq(v2, v26);
  v43 = *(v2 + 196);
  if ((v43 & 0x20) != 0)
  {
    goto LABEL_62;
  }

LABEL_52:
  if ((v43 & 8) == 0)
  {
    goto LABEL_53;
  }

LABEL_63:
  CheckIso2022ActiveSeq(v2);
  v43 = *(v2 + 196);
  if ((v43 & 4) != 0)
  {
    goto LABEL_64;
  }

LABEL_54:
  if ((v43 & 0x1000) != 0)
  {
    goto LABEL_55;
  }

LABEL_56:
  if ((v43 & 0xC0) != 0)
  {
    CheckBinaryDensity(a1, v2, v23);
  }

LABEL_58:
  if (*(v2 + 32))
  {
    SetDetailsEncLabel(v2, "seq");
  }
}

uint64_t RepeatedBigram(int *a1, unsigned int a2, int a3)
{
  v3 = (a3 | (a2 << 8)) & 0x1FF0;
  if (a2 >= 0x20)
  {
    v3 = a3 | (a2 << 8);
  }

  if (v3 == a1[55] || v3 == a1[56] || v3 == a1[57] || v3 == a1[58])
  {
    return 1;
  }

  v4 = 0;
  a1[a1[54] + 55] = v3;
  a1[54] = (a1[54] + 1) & 3;
  return v4;
}

uint64_t ReRank(uint64_t result)
{
  *(result + 248) = -1;
  v1 = *(result + 260);
  if (v1 >= 1)
  {
    v2 = (result + 264);
    v3 = result + 532;
    v4 = 0xFFFFFFFFLL;
    v5 = 0xFFFFFFFFLL;
    do
    {
      v7 = *v2++;
      v6 = v7;
      v8 = *(v3 + 4 * v7);
      if (v5 >= v8)
      {
        if (v4 < v8 && dword_1004C167C[dword_1004B1270[*(result + 240)]] != dword_1004C167C[dword_1004B1270[v6]])
        {
          *(result + 252) = v8;
          *(result + 244) = v6;
          goto LABEL_10;
        }
      }

      else
      {
        v9 = *(result + 240);
        if (dword_1004C167C[dword_1004B1270[v9]] != dword_1004C167C[dword_1004B1270[v6]])
        {
          *(result + 252) = v5;
          *(result + 244) = v9;
          v8 = *(v3 + 4 * v6);
          v4 = v5;
        }

        v5 = v8;
        *(result + 248) = v8;
        *(result + 240) = v6;
      }

      v8 = v4;
LABEL_10:
      v4 = v8;
      --v1;
    }

    while (v1);
  }

  return result;
}

_DWORD *SimplePrune(_DWORD *result, int a2)
{
  v2 = result[62];
  result[49] = 0;
  v3 = result[65];
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = v2 - a2;
    v7 = result + 66;
    do
    {
      v8 = v7[v4];
      if (result[v8 + 133] >= v6)
      {
        result[49] |= dword_1004C17A8[dword_1004B1270[v8]];
        v7[v5++] = v8;
        v3 = result[65];
      }

      ++v4;
    }

    while (v4 < v3);
  }

  result[65] = v5;
  return result;
}

uint64_t CalcReliable(uint64_t result)
{
  *(result + 45) = 0;
  v1 = *(result + 1348);
  if (!v1 || *(result + 248) - *(result + 252) >= FLAGS_ced_reliable_difference || v1 == 1 && *(result + 240) == byte_1004B167C[__rev16(*(result + 1448))])
  {
    *(result + 45) = 1;
    return result;
  }

  v2 = *(result + 260);
  if (v2 == 3)
  {
    v3 = dword_1004C167C[dword_1004B1270[*(result + 264)]];
    if (v3 != dword_1004C167C[dword_1004B1270[*(result + 268)]] || v3 != dword_1004C167C[dword_1004B1270[*(result + 272)]])
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return result;
    }

LABEL_15:
    *(result + 44) = 257;
    return result;
  }

  if (dword_1004C167C[dword_1004B1270[*(result + 264)]] == dword_1004C167C[dword_1004B1270[*(result + 268)]])
  {
LABEL_14:
    if (*(result + 56) >= 3)
    {
      goto LABEL_15;
    }
  }

  return result;
}

BOOL BoostLatin127Trigrams(int a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2 - 2;
  if (a1 + 32 >= v3)
  {
    v4 = *(a2 + 8) - *a2 - 2;
  }

  else
  {
    v4 = a1 + 32;
  }

  if (v3 > a1)
  {
    v6 = 0;
    v7 = &v2[v4];
    v8 = &v2[a1];
    v24 = (a2 + 652);
    v25 = (a2 + 596);
    v22 = (a2 + 568);
    v23 = (a2 + 704);
    v20 = (a2 + 536);
    v21 = (a2 + 580);
    v9 = (a2 + 548);
    v10 = (a2 + 592);
    v11 = v8;
    while (1)
    {
      v12 = *++v11;
      v13 = byte_1004C18D4[v8[2]];
      v14 = (qword_1004C19D8[byte_1004C18D4[v12] | (32 * byte_1004C18D4[*v8])] >> (2 * v13)) & 3;
      if (((qword_1004C19D8[byte_1004C18D4[v12] | (32 * byte_1004C18D4[*v8])] >> (2 * v13)) & 3) != 0)
      {
        break;
      }

LABEL_16:
      v8 = v11;
      if (v11 >= v7)
      {
        return v6 > 0;
      }
    }

    if (FLAGS_enc_detect_source == 1)
    {
      PsHighlight(v8, *a2, v14, 1);
    }

    if (v14 == 1)
    {
      v15 = -1;
      v18 = v20;
      v16 = v9;
      v17 = v10;
    }

    else
    {
      if (v14 == 2)
      {
        v15 = 1;
        v17 = v21;
        v16 = v22;
LABEL_15:
        *v16 += 60;
        *v17 += 60;
        v6 += v15;
        goto LABEL_16;
      }

      *(a2 + 648) += 60;
      v15 = 1;
      v16 = v24;
      v18 = v25;
      v17 = v23;
    }

    *v18 += 60;
    goto LABEL_15;
  }

  return 0;
}

uint64_t BoostPrune(uint64_t result, uint64_t a2, int a3)
{
  v3 = a3;
  v111 = result;
  v5 = *(a2 + 1348);
  v118 = v5 - *(a2 + 1340);
  if (a3 == 2)
  {
    if ((*(a2 + 46) & 1) == 0 && v5 <= 11)
    {
      v6 = 0;
      if (v5 <= 2)
      {
        v5 = 2;
      }

      v7 = v5 + 1;
      do
      {
        *(a2 + v6 + 532) = *(a2 + v6 + 532) - *(a2 + v6 + 800) + *(a2 + v6 + 800) * v7 / 12;
        v6 += 4;
      }

      while (v6 != 268);
      *(a2 + 46) = 1;
      if (*(a2 + 32))
      {
        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *__str = v8;
        v126 = v8;
        snprintf(__str, 0x20uLL, "Hints %d/%d", v7, 12);
        SetDetailsEncLabel(a2, __str);
        v3 = 2;
      }
    }

    v110 = (a2 + 56);
    ++*(a2 + 56);
  }

  else
  {
    v63 = *(a2 + 1344);
    v64 = *(a2 + 1336);
    v65 = *(a2 + 56);
    *(a2 + 56) = v65 + 1;
    v110 = (a2 + 56);
    if (*(a2 + 260) < 2)
    {
      goto LABEL_217;
    }

    if ((v65 & 0x80000000) == 0 && v63 - v64 == -v118)
    {
      return result;
    }
  }

  if (v118 < 1)
  {
    v117 = 0;
    goto LABEL_107;
  }

  LOBYTE(v9) = 0;
  v117 = 0;
  LODWORD(v10) = 0;
  v11 = 0;
  v116 = a2 + 1448;
  v12 = a2 + 1736;
  v13 = a2 + 532;
  v14 = a2 + 264;
  v113 = 32;
  v114 = 32;
  do
  {
    v121 = v9;
    v122 = v11;
    v15 = v10;
    v16 = *(a2 + 1340) + v11;
    v17 = *(v116 + 2 * v16);
    v18 = *(v116 + 2 * v16 + 1);
    v10 = v17 & 0xF0 | (v18 >> 4);
    v119 = *(v12 + 4 * v16);
    if (v16 >= 1 && *(v12 + 4 * v16) == *(v12 + 4 * (v16 - 1)) + 2)
    {
      v19 = (~v10 & 0xCC) == 0 || (~v15 & 0xCC) == 0;
    }

    else
    {
      v19 = 0;
    }

    v123 = *(a2 + 1340) + v11;
    v124 = *(v116 + 2 * v16);
    v20 = *(a2 + 2120 + 4 * v16);
    v21 = RepeatedBigram(a2, v17, v18);
    if (v21)
    {
      v22 = 0;
      v23 = 0;
      v24 = v124;
      goto LABEL_72;
    }

    v25 = 0xFu >> v20;
    if ((FLAGS_demo_nodefault & 1) == 0)
    {
      *(v13 + 4 * *(a2 + 48)) += v25;
      *(v13 + 4 * *(a2 + 52)) += v25;
    }

    v24 = v124;
    v115 = v21;
    if (*(a2 + 260) < 1)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v26 = 0;
      v23 = 0;
      v22 = 0;
      v27 = 0;
      v28 = 1 << ((v124 >> 3) & 0x1C | (v18 >> 6));
      v29 = FLAGS_enc_detect_detail2;
      v30 = dword_1005CCDDC;
      v31 = dword_1005CCDE0;
      v33 = v124 == v114 && v18 == v113;
      do
      {
        v34 = *(v14 + 4 * v26);
        v35 = dword_1004B1270[v34];
        if (v34 == 58)
        {
          v36 = *(a2 + 80);
          if ((v36 & v28) != 0)
          {
            v37 = 2;
          }

          else
          {
            v37 = 0;
            *(a2 + 80) = v36 | v28;
            ++*(a2 + 72);
          }
        }

        else
        {
          v37 = 0;
        }

        v38 = &unk_100589638 + 808 * v34;
        v39 = v38[v10 + 552];
        if (v38[v10 + 552])
        {
          if (v39)
          {
            v40 = *(*&v38[8 * ((v18 >> 5) & 3)] + (v18 & 0x1F | (32 * (v124 & 0x1F))));
          }

          else
          {
            v40 = *(v38 + 9);
          }

          v41 = (v38[(v18 & 0x80 ^ v124) + 40] + v39 + v38[v18 + 296] + v40) >> v37 >> v20;
          *(v13 + 4 * v34) += v41;
          if (v29)
          {
            if (v30 == v34)
            {
              v23 = v41;
            }

            if (v31 == v34)
            {
              v22 = v41;
            }
          }
        }

        else if (!v33)
        {
          *(v13 + 4 * v34) -= 0x258u >> v20;
          v27 = 1;
        }

        if (v19 && (dword_1004C17A8[v35] & 0x400) != 0)
        {
          *(v13 + 4 * v34) += v25;
        }

        ++v26;
      }

      while (v26 < *(a2 + 260));
      v42 = (v27 & 1) == 0;
      if (v27)
      {
        v43 = v18;
      }

      else
      {
        v43 = v113;
      }

      v44 = v114;
      v21 = v115;
      v24 = v124;
      if (!v42)
      {
        v44 = v124;
      }

      v113 = v43;
      v114 = v44;
    }

    v45 = v119;
    if (v123 < 16)
    {
      v46 = byte_1004B167C[v18 | (v24 << 8)];
      *(v13 + 4 * v46) += v25;
    }

    ++v117;
    if (*(a2 + 65) == 1)
    {
      v47 = &v119[*a2 - 1];
    }

    else
    {
      if (*(a2 + 64) != 1)
      {
        goto LABEL_72;
      }

      v52 = &v119[*a2];
      v47 = (v52 - 1);
      if ((v122 & 7) != 0 && (v52 + 2) <= *(a2 + 8) && ((qword_1004C19D8[byte_1004C18D4[*v52] | (32 * byte_1004C18D4[*(v52 - 1)])] >> (2 * byte_1004C18D4[v52[1]])) & 2) == 0)
      {
        goto LABEL_72;
      }
    }

    v48 = v119 & 0xFFFFFFE0;
    if (*(a2 + 60) <= (v119 & 0xFFFFFFE0))
    {
      v120 = v47;
      v49 = BoostLatin127Trigrams(v45 & 0xFFFFFFE0, a2);
      v50 = *(a2 + 65);
      if (FLAGS_counts == 1 && (*(a2 + 65) & 1) == 0 && v49)
      {
        ++dword_1005DEAC4;
      }

      if (!(v50 & 1 | ((FLAGS_enc_detect_source & 1) == 0) | !v49))
      {
        v51 = v49;
        PsHighlight(v120, *a2, 0, 2);
        v49 = v51;
        v50 = *(a2 + 65);
      }

      *(a2 + 65) = v50 | v49;
      *(a2 + 60) = v48 + 32;
      v24 = v124;
      v21 = v115;
    }

LABEL_72:
    ++*(a2 + 164 + ((v24 >> 3) & 0x1C));
    if (*(a2 + 32))
    {
      memset(__str, 170, sizeof(__str));
      if (v20)
      {
        v53 = 45;
      }

      else
      {
        v53 = 32;
      }

      v54 = 93;
      if (!v21)
      {
        v54 = 32;
      }

      v109 = v54;
      v55 = 91;
      if (!v21)
      {
        v55 = 32;
      }

      v56 = v24;
      snprintf(__str, 0x10uLL, "%c%02x%02x%c%c", v55, v24, v18, v109, v53);
      v57 = byte_1004B167C[v18 | (v56 << 8)];
      v58 = *(a2 + 40);
      v59 = *(a2 + 32) + 304 * v58;
      *v59 = *(a2 + 1736 + 4 * v123);
      *(v59 + 4) = v57;
      sub_100008830((v59 + 8), __str);
      memcpy((*(a2 + 32) + 304 * v58 + 32), (a2 + 532), 0x10CuLL);
      ++*(a2 + 40);
      LOBYTE(v24) = v124;
    }

    if (FLAGS_enc_detect_detail2 == 1 && v23 | v22)
    {
      *&v60 = 0xAAAAAAAAAAAAAAAALL;
      *(&v60 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__str = v60;
      v126 = v60;
      if (v22 >= 0)
      {
        v61 = 43;
      }

      else
      {
        v61 = 45;
      }

      v108 = v61;
      if (v23 >= 0)
      {
        v62 = 43;
      }

      else
      {
        v62 = 45;
      }

      snprintf(__str, 0x20uLL, "%c%d %c%d", v62, v23, v108, v22);
      SetDetailsEncLabel(a2, __str);
      LOBYTE(v24) = v124;
    }

    v9 = (v24 | v121);
    v11 = v122 + 1;
    v12 = a2 + 1736;
  }

  while (v122 + 1 != v118);
  if (v117 >= 1 && (v9 & 0x80000000) == 0)
  {
    v66 = *(a2 + 260);
    if (v66 >= 1)
    {
      for (i = 0; i < v66; ++i)
      {
        v68 = *(v14 + 4 * i);
        if ((dword_1004C17A8[dword_1004B1270[v68]] & 0x100) != 0)
        {
          *(v13 + 4 * v68) -= 60 * v117;
          v66 = *(a2 + 260);
        }
      }
    }

    v117 = 1;
  }

  v3 = a3;
LABEL_107:
  if (*(a2 + 196))
  {
    ActiveSpecialBoostWhack(v111, a2);
    v3 = a3;
  }

  *(a2 + 16) = v111;
  *(a2 + 1336) = *(a2 + 1344);
  v69 = *(a2 + 1348);
  *(a2 + 1340) = v69;
  if (v3 == 2)
  {
    if (*(a2 + 92))
    {
      *(a2 + 540) -= 120;
    }

    if (*(a2 + 120))
    {
      *(a2 + 768) -= 120;
    }

    if (!*(a2 + 116))
    {
      *(a2 + 540) -= 4800;
      *(a2 + 768) -= 4800;
    }

    if (!*(a2 + 148))
    {
      *(a2 + 768) -= 4800;
    }

    v70 = *(a2 + 68);
    if (v70 <= 3)
    {
      if (v70 == 3)
      {
        v71 = -1200;
      }

      else
      {
        v71 = -2400;
      }

      *(a2 + 764) += v71;
    }

    if (v69 < 1 || (*(a2 + 196) & 8) == 0 || *(a2 + 1448) != 27 || *(a2 + 1449) != 36)
    {
      goto LABEL_142;
    }

    v72 = *a2 + *(a2 + 1736);
    if (v72 >= *(a2 + 8) - 3)
    {
      v73 = -600;
      v75 = 700;
      v76 = 712;
      v77 = 616;
    }

    else
    {
      v73 = 600;
      v74 = *(v72 + 2);
      v75 = 700;
      v76 = 712;
      v77 = 616;
      if (v74 != 66 && v74 != 64)
      {
        if (v74 != 41)
        {
          goto LABEL_142;
        }

        v78 = *(v72 + 3);
        if (v78 == 71)
        {
          goto LABEL_134;
        }

        if (v78 != 67)
        {
          if (v78 == 65)
          {
LABEL_134:
            v73 = 600;
            v75 = 616;
            v76 = 700;
            v77 = 712;
            goto LABEL_141;
          }

LABEL_142:
          if (*(a2 + 32))
          {
            SetDetailsEncLabel(a2, "pre-final");
          }

          result = ReRank(a2);
          v79 = 0;
LABEL_145:
          v3 = a3;
          goto LABEL_146;
        }

        v73 = 600;
        v75 = 616;
        v76 = 712;
        v77 = 700;
      }
    }

LABEL_141:
    *(a2 + v77) += v73;
    *(a2 + v76) -= 600;
    *(a2 + v75) -= 600;
    goto LABEL_142;
  }

  result = ReRank(a2);
  if (v3 == 1)
  {
    if (*(a2 + 32))
    {
      result = SetDetailsEncLabel(a2, "slow-end");
      v79 = 1;
      goto LABEL_145;
    }

    v79 = 1;
  }

  else
  {
    v79 = 0;
  }

LABEL_146:
  v80 = *(a2 + 256);
  v81 = *(a2 + 240) == 58;
  if (v80 >= 301)
  {
    if (v117)
    {
      v82 = -300;
    }

    else
    {
      v82 = -150;
    }

    *(a2 + 256) = v80 + v82;
  }

  v83 = v80 << v81;
  v84 = *(a2 + 248);
  *(a2 + 196) = 0;
  v85 = *(a2 + 260);
  if (v85 >= 1)
  {
    v86 = 0;
    v87 = 0;
    v88 = v84 - v83;
    v89 = a2 + 264;
    while (1)
    {
      v90 = *(v89 + 4 * v86);
      result = *(a2 + 532 + 4 * v90);
      if (v79)
      {
        v91 = dword_1004B1270[v90];
        if ((dword_1004C17A8[v91] & 1) != 0 && result <= 0)
        {
          break;
        }
      }

      if (result >= v88)
      {
        LODWORD(v91) = dword_1004B1270[v90];
LABEL_164:
        *(a2 + 196) |= dword_1004C17A8[v91];
        *(v89 + 4 * v87++) = v90;
        v85 = *(a2 + 260);
      }

LABEL_165:
      if (++v86 >= v85)
      {
        goto LABEL_168;
      }
    }

    if (v90 != *(a2 + 240) || result < v88)
    {
      goto LABEL_165;
    }

    goto LABEL_164;
  }

  v87 = 0;
LABEL_168:
  if (*(a2 + 32))
  {
    *&v93 = 0xAAAAAAAAAAAAAAAALL;
    *(&v93 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__str = v93;
    v126 = v93;
    snprintf(__str, 0x20uLL, "%d prune", v83 / 30);
    result = SetDetailsEncLabel(a2, __str);
    v3 = a3;
  }

  *(a2 + 260) = v87;
  v94 = *(a2 + 1348);
  if (v3 != 2)
  {
    goto LABEL_198;
  }

  if (!v94)
  {
    v95 = *(a2 + 240);
    if (v95 > 0x3A || ((1 << v95) & 0x400350000200000) == 0)
    {
      *(a2 + 240) = 0;
      *(a2 + 532) += 1200;
    }
  }

  v96 = *(a2 + 240);
  if (*(a2 + 180) < 1)
  {
    switch(v96)
    {
      case 4:
        v97 = 1;
        v98 = 536;
        break;
      case 28:
        v97 = 14;
        v98 = 588;
        break;
      case 22:
        v97 = 13;
        v98 = 584;
        break;
      default:
        goto LABEL_191;
    }

LABEL_190:
    *(a2 + 240) = v97;
    *(a2 + v98) += 1200;
    goto LABEL_191;
  }

  if (v96 > 13)
  {
    if (v96 == 14)
    {
      v97 = 28;
      v98 = 644;
    }

    else
    {
      if (v96 != 34)
      {
        goto LABEL_191;
      }

      v97 = 11;
      v98 = 576;
    }

    goto LABEL_190;
  }

  if (v96 == 1)
  {
    v97 = 4;
    v98 = 548;
    goto LABEL_190;
  }

  if (v96 == 13)
  {
    v97 = 22;
    v98 = 620;
    goto LABEL_190;
  }

LABEL_191:
  if (*(a2 + 32))
  {
    *&v99 = 0xAAAAAAAAAAAAAAAALL;
    *(&v99 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__str = v99;
    v126 = v99;
    snprintf(__str, 0x20uLL, "final %d", v111 - *a2);
    SetDetailsEncLabel(a2, __str);
    v100 = *(a2 + 248) - *(a2 + 252);
    if (v100 > 59)
    {
      MyEncodingName(dword_1004B1270[*(a2 + 240)]);
      if (v100 > 0x5DB)
      {
        snprintf(__str, 0x20uLL, "%s");
      }

      else
      {
        snprintf(__str, 0x20uLL, "+%d %s");
      }
    }

    else
    {
      MyEncodingName(dword_1004B1270[*(a2 + 240)]);
      snprintf(__str, 0x20uLL, "+%d.%d %s ");
    }

    v101 = *(a2 + 40);
    v102 = *(a2 + 240);
    v103 = *(a2 + 32) + 304 * v101;
    *v103 = *(v103 - 304);
    *(v103 + 4) = v102;
    sub_100008830((v103 + 8), __str);
    result = memcpy((*(a2 + 32) + 304 * v101 + 32), (a2 + 532), 0x10CuLL);
    ++*(a2 + 40);
    v94 = *(a2 + 1348);
  }

LABEL_198:
  v105 = *(a2 + 248) - *(a2 + 252) >= FLAGS_ced_reliable_difference || v94 == 0;
  *(a2 + 45) = v105;
  if (v94 == 1 && *(a2 + 240) == byte_1004B167C[__rev16(*(a2 + 1448))])
  {
    *(a2 + 45) = 1;
  }

  v106 = *(a2 + 260);
  if (v106 == 1)
  {
    goto LABEL_216;
  }

  if (v106 != 3)
  {
    if (v106 != 2 || dword_1004C167C[dword_1004B1270[*(a2 + 264)]] != dword_1004C167C[dword_1004B1270[*(a2 + 268)]] || *v110 <= 2)
    {
      return result;
    }

LABEL_216:
    *(a2 + 45) = 1;
LABEL_217:
    *(a2 + 44) = 1;
    return result;
  }

  v107 = dword_1004C167C[dword_1004B1270[*(a2 + 264)]];
  if (v107 == dword_1004C167C[dword_1004B1270[*(a2 + 268)]] && v107 == dword_1004C167C[dword_1004B1270[*(a2 + 272)]] && *v110 >= 3)
  {
    goto LABEL_216;
  }

  return result;
}

uint64_t IncrementAndBoostPrune(unsigned __int8 *a1, int a2, uint64_t a3, int a4, int a5)
{
  *(a3 + 24) = a1;
  if (a2 < 2)
  {
    v5 = 32;
  }

  else
  {
    v5 = a1[1];
  }

  v6 = *a1;
  v7 = a5 - 1;
  v8 = *(a3 + 1344 + 4 * v7);
  if (v8 < 17)
  {
    goto LABEL_11;
  }

  v9 = 0;
  if (!*a1 || v6 == 43 || v6 == 126)
  {
    return v9;
  }

  if (v8 < 0x30)
  {
LABEL_11:
    v10 = a1 - *a3;
    v11 = 2 * v8;
    v12 = a3 + 96 * v7 + 1352;
    *(v12 + v11) = v6;
    *(v12 + v11 + 1) = v5;
    v13 = a3 + 192 * v7 + 4 * v8;
    *(v13 + 1544) = v10;
    *(v13 + 1928) = a4;
    ++*(a3 + 1344 + 4 * v7);
    LOBYTE(v8) = v8 + 1;
  }

  else if (a5 == 2)
  {
    *(a3 + 44) = 1;
  }

  if ((*(a3 + 44) & 1) == 0 && (v8 & 7) != 0)
  {
    return 0;
  }

  BoostPrune((a1 + 2), a3, 0);
  return 1;
}

uint64_t DumpSummary(uint64_t a1, int a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = a1 + 4 * a2;
  printf("  %sSummary[%2d]: ", off_100589628[a2], *(v6 + 1344));
  v7 = *(v6 + 1344);
  if (v3 >= v7)
  {
    v3 = v7;
  }

  else
  {
    v3 = v3;
  }

  if (v3 >= 1)
  {
    v8 = 0;
    v9 = (a1 + 96 * a2 + 1353);
    do
    {
      printf("%02x%02x ", *(v9 - 1), *v9);
      if ((~v8 & 7) == 0)
      {
        printf("  ");
      }

      v9 += 2;
      ++v8;
    }

    while (v3 != v8);
  }

  return putchar(10);
}

size_t BeginDetail(uint64_t a1)
{
  fprintf(__stderrp, "%d [", 67);
  for (i = 0; i != 67; ++i)
  {
    v3 = __stderrp;
    v4 = MyEncodingName(dword_1004B1270[i]);
    fprintf(v3, "(%s)", v4);
    HIDWORD(v5) = -858993459 * (i - 9);
    LODWORD(v5) = HIDWORD(v5);
    if ((v5 >> 1) <= 0x19999998)
    {
      fwrite("\n    ", 5uLL, 1uLL, __stderrp);
    }
  }

  result = fwrite("] size-detail\n", 0xEuLL, 1uLL, __stderrp);
  *(a1 + 40) = 0;
  return result;
}

size_t DumpDetail(uint64_t a1)
{
  result = fprintf(__stderrp, "%d count-detail\n", *(a1 + 40));
  v3 = *(a1 + 40);
  if (v3 > 1)
  {
    v4 = *(a1 + 32);
    v5 = v4 + 304 * v3 - 576;
    do
    {
      v6 = v3--;
      *(v4 + 304 * v6 - 304) -= *(v4 + 304 * v6 - 608);
      v7 = 67;
      v8 = v5;
      do
      {
        v8[76] -= *v8;
        ++v8;
        --v7;
      }

      while (v7);
      v5 -= 304;
    }

    while (v6 > 2);
    LODWORD(v3) = *(a1 + 40);
  }

  if (v3 >= 1)
  {
    v9 = 0;
    v10 = 32;
    while (1)
    {
      v11 = *(a1 + 32);
      v12 = v11 + 304 * v9;
      v13 = (v12 + 8);
      v14 = *(v12 + 31);
      if (v14 < 0)
      {
        break;
      }

      LODWORD(v12) = *(v12 + 31);
      if ((v14 & 0x80000000) != 0)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (*(v13 + v12 - 1) == 33)
      {
        fwrite("1 0.9 0.9 do-flag\n", 0x12uLL, 1uLL, __stderrp);
        v11 = *(a1 + 32);
      }

      v15 = *(v11 + 304 * v9);
      if (v15 >= 0x20)
      {
        v16 = 32;
      }

      else
      {
        v16 = 43;
      }

      if (v15 < 0x10)
      {
        v16 = 95;
      }

      if (v15 < 3)
      {
        v16 = 61;
      }

      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v17 = 32;
      }

      v18 = v11 + 304 * v9;
      v19 = (v18 + 8);
      if (*(v18 + 31) < 0)
      {
        v19 = *v19;
      }

      fprintf(__stderrp, "(%c%s) %d [", v17, v19, *(v11 + 304 * v9 + 4));
      for (i = 0; i != 67; ++i)
      {
        fprintf(__stderrp, "%d ", *(*(a1 + 32) + v10 + 4 * i));
        HIDWORD(v21) = -858993459 * (i - 9);
        LODWORD(v21) = HIDWORD(v21);
        if ((v21 >> 1) <= 0x19999998)
        {
          fwrite("  ", 2uLL, 1uLL, __stderrp);
        }
      }

      result = fwrite("] do-detail-e\n", 0xEuLL, 1uLL, __stderrp);
      ++v9;
      v10 += 304;
      if (v9 >= *(a1 + 40))
      {
        goto LABEL_34;
      }
    }

    v12 = *(v12 + 16);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v13 = *v13;
    goto LABEL_12;
  }

LABEL_34:
  *(a1 + 40) = 0;
  return result;
}

BOOL QuickPrintableAsciiScan(int8x8_t *a1, int a2)
{
  v2 = a1 + a2;
  do
  {
    v3 = a1;
    if (a1 >= (v2 - 7))
    {
      break;
    }

    ++a1;
    v4 = vorr_s8(vadd_s8(*v3, 0x101010101010101), vadd_s8(*v3, 0xE0E0E0E0E0E0E0E0));
  }

  while (((v4.i32[0] | v4.i32[1] | ((*&v4 | HIDWORD(*&v4)) >> 16) | ((v4.i32[0] | v4.i32[1] | ((*&v4 | HIDWORD(*&v4)) >> 16)) >> 8)) & 0x80) == 0);
  do
  {
    v5 = v3;
    if (v3 >= v2)
    {
      break;
    }

    v3 = (v3 + 1);
  }

  while (byte_1004C7D6B[v5->u8[0]]);
  return v5 >= v2;
}

BOOL TextInsideTag(const unsigned __int8 *a1, const unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v3 = a2 - 192;
  if (a2 - 192 < a1)
  {
    v3 = a1;
  }

  v4 = a2 - 1;
  while (1)
  {
    if (v3 > v4)
    {
      return 0;
    }

    v5 = *(a2 - 1);
    if ((v5 & 0xFFFFFFFD) == 0x3C)
    {
      break;
    }

    v6 = v5 != 47 || a2 >= a3;
    if (!v6 && *a2 == 42)
    {
      return 1;
    }

    v4 = a2 - 2;
    --a2;
  }

  if (v5 == 60)
  {
    return 1;
  }

  if (v5 != 62 || a2 - 7 < a1)
  {
    return 0;
  }

  v7 = *(a2 - 7);
  if (v7 == 115)
  {
    return (*(a2 - 6) & 0xDF) == 0x43 && (*(a2 - 5) & 0xDF) == 0x52 && (*(a2 - 4) & 0xDF) == 0x49 && (*(a2 - 3) & 0xDF) == 0x50 && (*(a2 - 2) & 0xDF) == 0x54;
  }

  return v7 == 60 && (*(a2 - 6) & 0xDF) == 0x54 && (*(a2 - 5) & 0xDF) == 0x49 && (*(a2 - 4) & 0xDF) == 0x54 && (*(a2 - 3) & 0xDF) == 0x4C && (*(a2 - 2) & 0xDF) == 0x45;
}

uint64_t LookupWatchEnc(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (*(a1 + 8) != 8)
    {
      a1 = *a1;
      goto LABEL_9;
    }

    a1 = *a1;
  }

  else if (v1 != 8)
  {
    goto LABEL_9;
  }

  if (*a1 == 0x3846545538465455)
  {
    return 59;
  }

LABEL_9:
  v3 = -1431655766;
  if (!EncodingFromName(a1, &v3))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  while (dword_1004B1270[result] != v3)
  {
    if (++result == 67)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t CompatibleEnc(unsigned int a1, unsigned int a2)
{
  result = 0;
  if (a1 > 0x4A)
  {
    return result;
  }

  if (a2 > 0x4A)
  {
    return result;
  }

  result = 1;
  if (a1 == a2)
  {
    return result;
  }

  if (a2 == 23)
  {
    return result;
  }

  if (a1 == 23)
  {
    return result;
  }

  if (a2 == 24)
  {
    return result;
  }

  if (a1 == 24)
  {
    return result;
  }

  v4 = dword_1004C167C[a1];
  v5 = dword_1004C167C[a2];
  if (v4 == v5)
  {
    return result;
  }

  if (a1 == 63)
  {
    if (a2 == 22 || !v5)
    {
      return result;
    }

    if (a2 != 63)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (a2 != 63)
  {
    return 0;
  }

  if (a1 != 22)
  {
LABEL_17:
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Rescore(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (FLAGS_counts == 1)
  {
    ++dword_1005DEACC;
  }

  v6 = *(a4 + 1348);
  if (v6 < 1)
  {
    return a1;
  }

  v7 = 0;
  v8 = 0;
  v9 = a3 - a2;
  v10 = a4 + 264;
  v11 = a4 + 532;
  do
  {
    v12 = *(a4 + 1736 + 4 * v7);
    if (v12 < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(a2 - 1 + v12) & 0xC0;
    }

    v14 = v12 + 1;
    if (v14 >= v9)
    {
      v15 = 0;
    }

    else
    {
      v15 = (*(a2 + v14) >> 4) & 0xC;
    }

    v16 = v12 + 2;
    if (v16 >= v9)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(a2 + v16) >> 6;
    }

    v18 = (v13 | v15 | v17) & 0xAAAAAAAA | (*(a2 + v12) >> 1) & 0x20;
    if (v18 == 32)
    {
      v19 = *(a4 + 260);
      if (v19 < 1)
      {
        goto LABEL_26;
      }

      for (i = 0; i < v19; ++i)
      {
        v21 = *(v10 + 4 * i);
        if ((dword_1004C17A8[dword_1004B1270[v21]] & 0x800) != 0)
        {
          *(v11 + 4 * v21) += 60;
          v19 = *(a4 + 260);
          v8 = 1;
        }
      }
    }

    if (v18 == 170)
    {
      v22 = *(a4 + 260);
      if (v22 >= 1)
      {
        for (j = 0; j < v22; ++j)
        {
          v24 = *(v10 + 4 * j);
          if ((dword_1004C17A8[dword_1004B1270[v24]] & 0x800) != 0)
          {
            *(v11 + 4 * v24) -= 60;
            v22 = *(a4 + 260);
            v8 = 1;
          }
        }
      }
    }

LABEL_26:
    ++v7;
  }

  while (v7 != v6);
  if (v8)
  {
    ReRank(a4);
    a1 = dword_1004B1270[*(a4 + 240)];
    if (*(a4 + 32))
    {
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__str = v25;
      v32 = v25;
      v26 = MyEncodingName(a1);
      snprintf(__str, 0x20uLL, "=Rescore %s", v26);
      v27 = 0;
      while (dword_1004B1270[v27] != a1)
      {
        if (++v27 == 67)
        {
          LODWORD(v27) = -1;
          break;
        }
      }

      v28 = *(a4 + 40);
      v29 = *(a4 + 32) + 304 * v28;
      *v29 = 0;
      *(v29 + 4) = v27;
      sub_100008830((v29 + 8), __str);
      memcpy((*(a4 + 32) + 304 * v28 + 32), (a4 + 532), 0x10CuLL);
      ++*(a4 + 40);
    }

    SimplePrune(a4, 300);
    CalcReliable(a4);
  }

  return a1;
}

uint64_t RobustScan(const char *a1, unsigned int a2, int a3, int *a4, _DWORD *a5)
{
  v5 = a5;
  if (FLAGS_counts == 1)
  {
    ++dword_1005DEAD0;
  }

  if (a3 >= 1)
  {
    bzero(a5, 4 * a3);
  }

  v10 = vmin_s32(vdup_n_s32(a2), 0x1000000040000);
  v11 = &a1[v10.i32[0]];
  v12 = (v11 - 1);
  if (FLAGS_enc_detect_source == 1)
  {
    PsSourceInit(32);
  }

  if (v12 > a1)
  {
    v13 = 0;
    v14 = (v11 - 3);
    v15 = &a1[v10.i32[1] - 1];
    v16 = &a1[v10.i32[0] - 1];
    while (1)
    {
      while (a1 < v14 && (((a1[1] | *a1) | (a1[2] | a1[3])) & 0x80) == 0)
      {
        a1 += 4;
      }

      if (a1 >= v12)
      {
        v19 = v13;
      }

      else
      {
        v17 = v16 - a1;
        a1 += 2;
        while (1)
        {
          v18 = *(a1 - 2);
          if (v18 < 0)
          {
            break;
          }

          ++a1;
          if (!--v17)
          {
            v19 = v13;
            a1 = v16;
            goto LABEL_18;
          }
        }

        if (a3 >= 1)
        {
          v20 = *(a1 - 1);
          v21 = v18 & 0xF0 | (v20 >> 4);
          v22 = v20 & 0x80 ^ v18;
          v23 = (32 * (v18 & 0x1Fu)) & 0xFFFFFFFFFFFFFFE0 | v20 & 0x1F;
          v24 = a3;
          v25 = a4;
          v26 = v5;
          do
          {
            v27 = *v25++;
            v28 = &unk_100589638 + 808 * v27;
            v29 = v28[v21 + 552];
            if (v29)
            {
              v30 = *(*&v28[8 * ((v20 >> 5) & 3)] + v23);
            }

            else
            {
              v30 = *(v28 + 9);
            }

            *v26++ += v28[v20 + 296] + v28[v22 + 40] + v29 + v30;
            --v24;
          }

          while (v24);
        }

        v19 = (v13 + 1);
        if (v13 >= 1000 && a1 > v15)
        {
          goto LABEL_30;
        }
      }

LABEL_18:
      v13 = v19;
      if (a1 >= v12)
      {
        goto LABEL_30;
      }
    }
  }

  v19 = 0;
LABEL_30:
  if (FLAGS_enc_detect_source == 1)
  {
    fprintf(__stderrp, "(  bigram_count = %d) do-src\n", v19);
    if (v19 <= 1)
    {
      LODWORD(v19) = 1;
    }

    if (a3 >= 1)
    {
      v31 = a3;
      do
      {
        v32 = __stderrp;
        v33 = *a4++;
        v34 = MyEncodingName(dword_1004B1270[v33]);
        LODWORD(v33) = *v5++;
        fprintf(v32, "(  enc[%-12.12s] = %7d (avg %d)) do-src\n", v34, v33, v33 / v19);
        --v31;
      }

      while (v31);
    }

    PsSourceFinish();
  }

  return v19;
}

uint64_t Rescan(uint64_t a1, const char *a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, char a11, uint64_t a12)
{
  v12 = a2;
  if (FLAGS_counts == 1)
  {
    ++dword_1005DEAD4;
  }

  if (a4 - a3 >= 801)
  {
    v14 = a9;
    v15 = a4 - a2;
    v16 = *(a12 + 204);
    if (v16 == 23)
    {
      v16 = *(a12 + 208);
      if (v16 == 23)
      {
        v16 = *(a12 + 212);
      }
    }

    v17 = dword_1004B1270[*(a12 + 244)];
    v18 = (a3 - a2 + ((a4 - a3) >> 1)) & 0xFFFFFFFE;
    v19 = &a2[v18];
    if ((v19 - 192) >= a3)
    {
      v20 = (v19 - 192);
    }

    else
    {
      v20 = a3;
    }

    v21 = v18 | 1;
    v22 = v19 - 1;
    v79 = *(a12 + 45);
    while (v20 <= v22)
    {
      v23 = *v22--;
      --v21;
      if ((v23 & 0x80000000) == 0)
      {
        v18 = v21 & 0xFFFFFFFE;
        break;
      }
    }

    v24 = a12;
    v81 = a4 - a2;
    if (*(a12 + 32))
    {
      v78 = a8;
      v76 = a6;
      v77 = a7;
      v75 = a5;
      SetDetailsEncLabel(a12, ">> Rescan");
      DumpDetail(a12);
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__str = v25;
      *&__str[16] = v25;
      snprintf(__str, 0x20uLL, ">> Rescan[%d..%d]", v18, v15);
      v15 = v81;
      fprintf(__stderrp, "() end-detail (%s) start-detail\n\n", __str);
      v14 = a9;
      a5 = v75;
      a6 = v76;
      a7 = v77;
      a8 = v78;
      v12 = a2;
    }

    v83 = -86;
    v82 = -1431655766;
    BYTE4(v74) = a11;
    LODWORD(v74) = a10;
    v26 = InternalDetectEncoding(5, &v12[v18], v15 - v18, a5, a6, a7, a8, v14, v74, v84, &v83, &v82);
    v27 = v83;
    *(a12 + 45) = v83;
    v28 = a1;
    if (v26 != 24)
    {
      v29 = CompatibleEnc(v16, v26);
      v28 = a1;
      if (v29)
      {
        if (dword_1004CD6EC[v16] >= dword_1004CD6EC[v26])
        {
          v28 = v16;
        }

        else
        {
          v28 = v26;
        }
      }

      if (v27 && v79 && (CompatibleEnc(a1, v26) & 1) != 0)
      {
        if (dword_1004CD6EC[a1] >= dword_1004CD6EC[v26])
        {
          return a1;
        }

        else
        {
          return v26;
        }
      }

      if (v27)
      {
        v30 = CompatibleEnc(a1, v26) & v29;
        v24 = a12;
        if (v30)
        {
          return v28;
        }
      }

      else
      {
        v24 = a12;
      }
    }

    v31 = 0;
    v104 = 0xAAAAAAAAAAAAAAAALL;
    *&v32 = 0xAAAAAAAAAAAAAAAALL;
    *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v103 = v32;
    v102 = v32;
    v101 = v32;
    v100 = v32;
    v99 = v32;
    v98 = v32;
    v97 = v32;
    v96 = v32;
    v95 = v32;
    v94 = v32;
    v93 = v32;
    v92 = v32;
    v91 = v32;
    v90 = v32;
    *&__str[20] = v32;
    *&__str[4] = v32;
    *(v88 + 12) = v32;
    v87[14] = v32;
    v88[0] = v32;
    v87[12] = v32;
    v87[13] = v32;
    v87[10] = v32;
    v87[11] = v32;
    v87[8] = v32;
    v87[9] = v32;
    v87[6] = v32;
    v87[7] = v32;
    v87[4] = v32;
    v87[5] = v32;
    v87[2] = v32;
    v87[3] = v32;
    v87[0] = v32;
    v87[1] = v32;
    while (dword_1004B1270[v31] != a1)
    {
      if (++v31 == 67)
      {
        LODWORD(v31) = -1;
        break;
      }
    }

    v33 = 0;
    *__str = v31;
    while (dword_1004B1270[v33] != v17)
    {
      if (++v33 == 67)
      {
        LODWORD(v33) = -1;
        break;
      }
    }

    if (v31 == v33)
    {
      v34 = 1;
    }

    else
    {
      *&__str[4] = v33;
      v34 = 2;
    }

    v35 = 0;
    while (dword_1004B1270[v35] != v26)
    {
      if (++v35 == 67)
      {
        LODWORD(v35) = -1;
        break;
      }
    }

    v36 = 0;
    while (*&__str[v36] != v35)
    {
      v36 += 4;
      if (4 * v34 == v36)
      {
        *&__str[4 * v34++] = v35;
        break;
      }
    }

    v37 = 0;
    while (dword_1004B1270[v37] != v82)
    {
      if (++v37 == 67)
      {
        LODWORD(v37) = -1;
        break;
      }
    }

    v38 = 0;
    while (*&__str[v38] != v37)
    {
      v38 += 4;
      if (4 * v34 == v38)
      {
        *&__str[4 * v34++] = v37;
        break;
      }
    }

    v39 = *(v24 + 204);
    if (v39 != 23)
    {
      v40 = 0;
      while (dword_1004B1270[v40] != v39)
      {
        if (++v40 == 67)
        {
          LODWORD(v40) = -1;
          break;
        }
      }

      v41 = v34;
      v42 = __str;
      v43 = v34;
      while (1)
      {
        v44 = *v42;
        v42 += 4;
        if (v44 == v40)
        {
          break;
        }

        if (!--v43)
        {
          ++v34;
          *&__str[4 * v41] = v40;
          break;
        }
      }
    }

    v45 = *(v24 + 208);
    if (v45 != 23)
    {
      v46 = 0;
      while (dword_1004B1270[v46] != v45)
      {
        if (++v46 == 67)
        {
          LODWORD(v46) = -1;
          break;
        }
      }

      v47 = v34;
      v48 = __str;
      v49 = v34;
      while (1)
      {
        v50 = *v48;
        v48 += 4;
        if (v50 == v46)
        {
          break;
        }

        if (!--v49)
        {
          ++v34;
          *&__str[4 * v47] = v46;
          break;
        }
      }
    }

    v51 = *(v24 + 212);
    if (v51 != 23)
    {
      v52 = 0;
      while (dword_1004B1270[v52] != v51)
      {
        if (++v52 == 67)
        {
          LODWORD(v52) = -1;
          break;
        }
      }

      v53 = v34;
      v54 = __str;
      v55 = v34;
      while (1)
      {
        v56 = *v54;
        v54 += 4;
        if (v56 == v52)
        {
          break;
        }

        if (!--v55)
        {
          ++v34;
          *&__str[4 * v53] = v52;
          break;
        }
      }
    }

    v57 = *(v24 + 200);
    if (v57 != 23)
    {
      v58 = 0;
      while (dword_1004B1270[v58] != v57)
      {
        if (++v58 == 67)
        {
          LODWORD(v58) = -1;
          break;
        }
      }

      v59 = v34;
      v60 = __str;
      v61 = v34;
      while (1)
      {
        v62 = *v60;
        v60 += 4;
        if (v62 == v58)
        {
          break;
        }

        if (!--v61)
        {
          ++v34;
          *&__str[4 * v59] = v58;
          break;
        }
      }
    }

    if (*(v24 + 32))
    {
      SetDetailsEncLabel(v24, ">> RobustScan");
      DumpDetail(v24);
      *&v63 = 0xAAAAAAAAAAAAAAAALL;
      *(&v63 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__s = v63;
      v86 = v63;
      snprintf(__s, 0x20uLL, ">> RobustScan[0..%d]", v81);
      fprintf(__stderrp, "() end-detail (%s) start-detail\n\n", __s);
    }

    v64 = RobustScan(a2, v81, v34, __str, v87);
    v65 = 0;
    v66 = -1;
    do
    {
      if (v66 < *(v87 + v65))
      {
        v28 = dword_1004B1270[*&__str[v65]];
        v66 = *(v87 + v65);
      }

      v65 += 4;
    }

    while (4 * v34 != v65);
    if (*(v24 + 32))
    {
      *&v67 = 0xAAAAAAAAAAAAAAAALL;
      *(&v67 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__s = v67;
      v86 = v67;
      v68 = MyEncodingName(v28);
      snprintf(__s, 0x20uLL, "=Robust[%d] %s", v64, v68);
      v69 = 0;
      while (dword_1004B1270[v69] != v28)
      {
        if (++v69 == 67)
        {
          LODWORD(v69) = -1;
          break;
        }
      }

      v71 = *(v24 + 40);
      v70 = (v24 + 40);
      v72 = *(v70 - 1) + 304 * v71;
      *v72 = 0;
      *(v72 + 4) = v69;
      sub_100008830((v72 + 8), __s);
      memcpy((*(v70 - 1) + 304 * v71 + 32), (a12 + 532), 0x10CuLL);
      ++*v70;
    }

    return v28;
  }

  return a1;
}

uint64_t InternalDetectEncoding(char a1, int8x8_t *a2, int a3, char *a4, char *a5, char *a6, int a7, unsigned int a8, unsigned int a9, char a10, _DWORD *a11, _BYTE *a12, _DWORD *a13)
{
  *a11 = 0;
  *a12 = 0;
  *a13 = 24;
  if (!a3)
  {
    v19 = 0;
    *a12 = 1;
    return v19;
  }

  if (a3 <= 500 && a10 && QuickPrintableAsciiScan(a2, a3))
  {
    *a12 = 1;
    return 24;
  }

  memset(__b, 170, sizeof(__b));
  InitDetectEncodingState(__b);
  v99 = 0;
  v86 = a1;
  if (FLAGS_enc_detect_detail)
  {
    operator new[]();
  }

  v87 = a4;
  v88 = a8;
  v89 = a5;
  v90 = a6;
  if (a3 >= FLAGS_enc_detect_slow_max_kb << 10)
  {
    v20 = FLAGS_enc_detect_slow_max_kb << 10;
  }

  else
  {
    v20 = a3;
  }

  if (a3 >= FLAGS_enc_detect_fast_max_kb << 10)
  {
    v21 = FLAGS_enc_detect_fast_max_kb << 10;
  }

  else
  {
    v21 = a3;
  }

  v22 = a2 + v21;
  v94 = (v22 - 1);
  if (FLAGS_enc_detect_fast_max_kb << 10 >= v20)
  {
    v23 = a2 + v20 - 1;
  }

  else
  {
    v23 = (v22 - 1);
  }

  __b[0] = a2;
  __b[1] = a2 + v21;
  __b[2] = a2;
  __b[3] = a2 - 2;
  if (a10)
  {
    v24 = &unk_1004C3AD8;
  }

  else
  {
    v24 = &unk_1004C39D8;
  }

  if (__b[4])
  {
    BeginDetail(__b);
    v25 = sub_100001DF4(__str, "");
    v26 = LookupWatchEnc(v25);
    dword_1005CCDDC = v26;
    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
      v26 = dword_1005CCDDC;
    }

    if ((v26 & 0x80000000) == 0)
    {
      fprintf(__stderrp, "/track-me %d def\n", v26);
    }

    v27 = sub_100001DF4(__str, "");
    v28 = LookupWatchEnc(v27);
    dword_1005CCDE0 = v28;
    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
      v28 = dword_1005CCDE0;
    }

    if ((v28 & 0x80000000) == 0)
    {
      fprintf(__stderrp, "/track-me2 %d def\n", v28);
    }

    fprintf(__stderrp, "%% kDerateHintsBelow = %d\n", 12);
  }

  v29 = a2 + a3;
  if (FLAGS_enc_detect_source == 1)
  {
    PsSourceInit(32);
  }

  ApplyHints(v87, v89, a6, a7, a8, a9, __b);
  InitialBytesBoost(a2, a3, __b);
  v95 = v20;
  v96 = 0;
  v84 = a7;
  v85 = 0;
  v92 = (v22 - 3);
  v30 = a2;
  v93 = (v29 - 1);
  v97 = a2 + a3;
  while (1)
  {
    while (v30 < v23)
    {
      while (2)
      {
        v31 = v30 - 1;
        v32 = a3 + a2 + 1 - v30;
        do
        {
          v33 = v30;
          v30 = v31 + 1;
          if (v31 + 1 >= v23)
          {
            goto LABEL_50;
          }

          v34 = *++v31;
          v35 = v24[v34];
          v30 = v33 + 1;
          --v32;
        }

        while (!v24[v34]);
        if (FLAGS_enc_detect_source == 1)
        {
          PsSource(v31, a2, v97);
        }

        if (v86 & 4 | a9 || !TextInsideTag(a2, v31, v23))
        {
          v36 = 0;
LABEL_45:
          if (FLAGS_enc_detect_source == 1)
          {
            PsMark(v31, 2, a2, v36);
          }

          v37 = IncrementAndBoostPrune(v31, v32, __b, v36, v35);
          v30 = &v31[v35];
          if (v37)
          {
            if ((__b[5] & 0x100000000) != 0)
            {
              v30 = &v33[v35];
            }

            else
            {
              if ((__b[24] & 0x100000000) != 0)
              {
                goto LABEL_50;
              }

              v30 = &v31[v35];
            }
          }

          else
          {
LABEL_50:
            if (v30 < v23)
            {
              continue;
            }
          }

          v29 = a2 + a3;
          goto LABEL_52;
        }

        break;
      }

      if (v96 < 12)
      {
        ++v96;
        v36 = 4;
        goto LABEL_45;
      }

      v30 = v31 + 1;
      v29 = a2 + a3;
      while (v30 <= v23)
      {
        v44 = *v30++;
        if ((v44 & 0xFFFFFFFD) == 0x3C)
        {
          goto LABEL_75;
        }
      }

      v30 = v31 + 2;
LABEL_75:
      v85 = 1;
    }

LABEL_52:
    if (v30 == v93)
    {
      v40 = *v30;
      v39 = v94;
      if (v24[v40])
      {
        v38 = 1;
        IncrementAndBoostPrune(v30, 1, __b, 0, v24[v40]);
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
      v39 = v94;
    }

    if (FLAGS_enc_detect_source == 1)
    {
      PsSource(v30, a2, v29);
      v41 = qword_1005DEAB8;
      v42 = 2 * ((v30 - a2) % dword_1005DEAB4);
      v43 = qword_1005DEAB8 + v42;
      *v43 = 61;
      *(v41 + v42 + 1) = 61;
      *(v43 + 2) = 11565;
    }

    BoostPrune(v30, __b, 1);
    if ((__b[5] & 0x100000000) != 0)
    {
      v45 = v30;
      goto LABEL_101;
    }

    if ((__b[24] & 0x100000000) == 0 || v30 >= v39)
    {
      break;
    }

    v95 += FLAGS_enc_detect_slow_max_kb << 10;
    if (v95 <= v21)
    {
      v23 = &a2[-1] + v95 + 7;
    }

    else
    {
      v23 = v39;
    }

    if ((__b[24] & 0x600000000) == 0)
    {
      v24 = &unk_1004C3AD8;
    }
  }

  if (v30 >= v39)
  {
    v45 = v30;
    goto LABEL_97;
  }

  while (1)
  {
    if (v30 >= v92)
    {
      v46 = v94;
    }

    else
    {
      v46 = v94;
      do
      {
        if ((((v30[1] | *v30) | (v30[2] | v30[3])) & 0x80) != 0)
        {
          break;
        }

        v30 += 4;
      }

      while (v30 < v92);
    }

    if (v30 < v46)
    {
      break;
    }

    v45 = v30;
LABEL_94:
    v30 = v45;
    if (v45 >= v94)
    {
      goto LABEL_97;
    }
  }

  v47 = 0;
  while ((v30[v47] & 0x80000000) == 0)
  {
    ++v47;
    if (!&v30[1 - (a2 + v21) + v47])
    {
      v45 = &v30[v47];
      goto LABEL_94;
    }
  }

  if (FLAGS_enc_detect_source)
  {
    PsSource(&v30[v47], a2, v97);
    v48 = qword_1005DEAB8;
    v49 = 2 * ((v30 - a2 + v47) % dword_1005DEAB4);
    v50 = qword_1005DEAB8 + v49;
    *v50 = 61;
    *(v48 + v49 + 1) = 61;
    *(v50 + 2) = 11565;
  }

  v45 = &v30[v47 + 2];
  if (!IncrementAndBoostPrune(&v30[v47], v97 - (v30 + v47), __b, 0, 2) || BYTE4(__b[5]) != 1)
  {
    goto LABEL_94;
  }

  v45 = &v30[v47 + 2];
LABEL_97:
  if (v45 == v93)
  {
    v51 = v38;
  }

  else
  {
    v51 = 1;
  }

  v29 = a2 + a3;
  if (v51)
  {
LABEL_101:
    v52 = v84;
    goto LABEL_102;
  }

  v69 = *v45;
  v52 = v84;
  if (v24[v69])
  {
    IncrementAndBoostPrune(v45, 1, __b, 0, v24[v69]);
    v53 = a10;
  }

  else
  {
LABEL_102:
    v53 = a10;
  }

  if (FLAGS_enc_detect_source == 1)
  {
    PsSource(v45, a2, v29);
    v54 = qword_1005DEAB8;
    v55 = 2 * ((v45 - a2) % dword_1005DEAB4);
    v56 = qword_1005DEAB8 + v55;
    *v56 = 61;
    *(v54 + v55 + 1) = 61;
    *(v56 + 2) = 11565;
  }

  BoostPrune(v45, __b, 2);
  if (FLAGS_enc_detect_summary == 1)
  {
    DumpSummary(__b, 0, 32);
    DumpSummary(__b, 1, 32);
  }

  if (FLAGS_enc_detect_source == 1)
  {
    PsSourceFinish();
  }

  v57 = __b[30];
  if (LODWORD(__b[30]) != 0 || (v85 & 1) == 0)
  {
    v19 = dword_1004B1270[SLODWORD(__b[30])];
    v61 = __b[26];
    if (LODWORD(__b[26]) != 23 && HIDWORD(__b[25]) == 23)
    {
      v63 = __b[26];
    }

    else
    {
      v63 = HIDWORD(__b[25]);
    }

    v64 = HIDWORD(__b[26]);
    if (HIDWORD(__b[26]) != 23 && v63 == 23)
    {
      v66 = HIDWORD(__b[26]);
    }

    else
    {
      v66 = v63;
    }

    if (v66 == 23)
    {
      if (LODWORD(__b[30]) == 1)
      {
        v67 = a2 + a3;
        if ((__b[8] & 0x100) == 0)
        {
          goto LABEL_161;
        }

        goto LABEL_159;
      }

      v67 = a2 + a3;
      if (!dword_1004C167C[v19] || v19 <= 0x3F && ((1 << v19) & 0x8000000001800000) != 0)
      {
        v68 = 1;
        goto LABEL_152;
      }

      v66 = __b[25];
      if (LODWORD(__b[25]) == 23)
      {
        v68 = 0;
        goto LABEL_152;
      }
    }

    else
    {
      v68 = CompatibleEnc(v66, HIDWORD(__b[25]));
      if (!v68 || (v68 = CompatibleEnc(v66, v61)) == 0)
      {
        v67 = a2 + a3;
LABEL_152:
        if ((__b[8] & 0x100) == 0 || v57 != 1 && dword_1004C167C[v19] && (v19 > 0x3F || ((1 << v19) & 0x8000000001800000) == 0) && (v57 > 0x29 || ((1 << v57) & 0x20020011200) == 0))
        {
          if (!v68)
          {
            if (BYTE5(__b[5]) != 1)
            {
              v77 = 0;
              goto LABEL_169;
            }

            v79 = (v19 - 10) < 0x36 && ((0x20000000007803uLL >> (v19 - 10)) & 1) != 0 || v57 == 5 || (dword_1004C167C[v19] - 13) < 2;
            v77 = 0;
            if (!v79)
            {
              goto LABEL_169;
            }

            if (SHIDWORD(__b[168]) < 6)
            {
              goto LABEL_169;
            }

            v77 = v86 & 1;
            v76 = 1;
            if ((v86 & 1) == 0)
            {
              goto LABEL_169;
            }

LABEL_162:
            if (v76)
            {
              v78 = 1;
              goto LABEL_170;
            }

LABEL_169:
            v19 = Rescore(v19, a2, v67, __b);
            v76 = BYTE5(__b[5]);
            v78 = v77;
LABEL_170:
            *a13 = dword_1004B1270[SHIDWORD(__b[30])];
            if (v86 & 1) != 0 || (v77 & v76 & 1) != 0 || (dword_1004C17A8[v19])
            {
              if ((v78 & 1) == 0)
              {
                BYTE5(__b[5]) = 0;
              }
            }

            else
            {
              v19 = Rescan(v19, a2, v45, v67, v87, v89, v90, v52, v88, a9, v53, __b);
            }

            if (__b[4])
            {
              DumpDetail(__b);
            }

            *a11 = v45 - a2 + 1;
            *a12 = BYTE5(__b[5]);
            goto LABEL_179;
          }

LABEL_161:
          v77 = 1;
          v76 = BYTE5(__b[5]);
          goto LABEL_162;
        }

LABEL_159:
        v76 = 1;
        BYTE5(__b[5]) = 1;
        v77 = 1;
        goto LABEL_162;
      }

      v68 = CompatibleEnc(v66, v64);
      v67 = a2 + a3;
      if (!v68)
      {
        goto LABEL_152;
      }
    }

    v68 = CompatibleEnc(v66, v19);
    goto LABEL_152;
  }

  if (__b[4])
  {
    v58 = __b[5];
    v59 = __b[4] + 304 * SLODWORD(__b[5]);
    *v59 = *(v59 - 304);
    *(v59 + 4) = -1;
    v60 = (v59 + 8);
    if (*(v59 + 31) < 0)
    {
      *(v59 + 16) = 15;
      v60 = *v60;
    }

    else
    {
      *(v59 + 31) = 15;
    }

    strcpy(v60, ">> Recurse/tags");
    memcpy((__b[4] + 304 * v58 + 32), &__b[66] + 4, 0x10CuLL);
    ++LODWORD(__b[5]);
    DumpDetail(__b);
    *&__str[28] = -1431655766;
    *&__str[20] = 0xAAAAAAAAAAAAAAAALL;
    strcpy(__str, ">> Recurse for tags");
    fprintf(__stderrp, "() end-detail (%s) start-detail\n\n", __str);
  }

  BYTE4(v83) = v53;
  LODWORD(v83) = a9;
  v70 = InternalDetectEncoding(4, a2, a3, v87, v89, v90, v52, v88, v83, a11, a12, a13);
  v19 = v70;
  if (__b[4])
  {
    *&v71 = 0xAAAAAAAAAAAAAAAALL;
    *(&v71 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__str = v71;
    *&__str[16] = v71;
    v72 = MyEncodingName(v70);
    snprintf(__str, 0x20uLL, "=2 %s", v72);
    v73 = 0;
    while (dword_1004B1270[v73] != v19)
    {
      if (++v73 == 67)
      {
        LODWORD(v73) = -1;
        break;
      }
    }

    v74 = __b[5];
    v75 = __b[4] + 304 * SLODWORD(__b[5]);
    *v75 = 0;
    *(v75 + 4) = v73;
    sub_100008830((v75 + 8), __str);
    memcpy((__b[4] + 304 * v74 + 32), &__b[66] + 4, 0x10CuLL);
    ++LODWORD(__b[5]);
    DumpDetail(__b);
  }

LABEL_179:
  v80 = v99;
  v99 = 0;
  if (v80)
  {
    sub_100008920(&v99, v80);
  }

  return v19;
}

void sub_1000080E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = a33;
  a33 = 0;
  if (v34)
  {
    sub_100008920(&a33, v34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CompactEncDet::DetectEncoding(int8x8_t *a1, int a2, char *a3, char *a4, char *a5, int a6, unsigned int a7, unsigned int a8, char a9, int *a10, _BYTE *a11)
{
  if (FLAGS_ced_echo_input == 1)
  {
    memset(__dst, 170, 24);
    if (a2 < 0)
    {
      sub_100008878();
    }

    v55 = a8;
    if (a2 >= 0x17)
    {
      operator new();
    }

    __dst[23] = a2;
    if (a2)
    {
      memcpy(__dst, a1, a2);
    }

    __dst[a2] = 0;
    v18 = __dst;
    if (__dst[23] < 0)
    {
      v18 = *__dst;
    }

    fprintf(__stderrp, "CompactEncDet::DetectEncoding()\n%s\n\n", v18);
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }

    a8 = v55;
  }

  if (FLAGS_counts == 1)
  {
    dword_1005DEACC = 0;
    dword_1005DEAD4 = 0;
    dword_1005DEAD0 = 0;
    dword_1005DEAC0 = 0;
    dword_1005DEAC4 = 0;
    dword_1005DEAD8 = 1;
  }

  if (FLAGS_dirtsimple == 1)
  {
    v19 = 0;
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v72 + 12) = v20;
    v71 = v20;
    v72[0] = v20;
    v69 = v20;
    v70 = v20;
    v67 = v20;
    v68 = v20;
    v65 = v20;
    v66 = v20;
    v63 = v20;
    v64 = v20;
    v61 = v20;
    v62 = v20;
    v59 = v20;
    v60 = v20;
    *__dst = v20;
    *&__dst[16] = v20;
    *&v57[12] = v20;
    v56[14] = v20;
    *v57 = v20;
    v56[12] = v20;
    v56[13] = v20;
    v56[10] = v20;
    v56[11] = v20;
    v56[8] = v20;
    v56[9] = v20;
    v56[6] = v20;
    v56[7] = v20;
    v56[4] = v20;
    v56[5] = v20;
    v56[2] = v20;
    v56[3] = v20;
    v56[0] = v20;
    v56[1] = v20;
    v21 = xmmword_1004B1220;
    v22 = xmmword_1004B1230;
    v23 = &__dst[8];
    v24 = vdupq_n_s64(4uLL);
    v25 = vdupq_n_s64(0x43uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v25, v22)), *v21.i8).u8[0])
      {
        *(v23 - 2) = v19;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x43uLL), *&v22)), *&v21).i8[2])
      {
        *(v23 - 1) = v19 + 1;
      }

      if (vuzp1_s16(*&v21, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x43uLL), *&v21))).i32[1])
      {
        *v23 = v19 + 2;
        v23[1] = v19 + 3;
      }

      v19 += 4;
      v21 = vaddq_s64(v21, v24);
      v22 = vaddq_s64(v22, v24);
      v23 += 4;
    }

    while (v19 != 68);
    RobustScan(a1, a2, 67, __dst, v56);
    v26 = 0;
    v27 = -1;
    v28 = 23;
    do
    {
      if (v27 < *(v56 + v26))
      {
        v28 = dword_1004B1270[*&__dst[v26]];
        v27 = *(v56 + v26);
      }

      v26 += 4;
    }

    while (v26 != 268);
    if (a2 >= 0x40000)
    {
      v29 = 0x40000;
    }

    else
    {
      v29 = a2;
    }

    *a10 = v29;
    *a11 = 1;
    if (FLAGS_counts)
    {
      printf("CEDcounts ");
      while (dword_1005DEAD8--)
      {
        printf("encdet ");
      }

      while (dword_1005DEACC--)
      {
        printf("rescore ");
      }

      while (dword_1005DEAD4--)
      {
        printf("rescan ");
      }

      while (dword_1005DEAD0--)
      {
        printf("robust ");
      }

      while (dword_1005DEAC0--)
      {
        printf("looking ");
      }

      while (dword_1005DEAC4--)
      {
        printf("doing ");
      }

LABEL_58:
      putchar(10);
    }
  }

  else
  {
    v28 = InternalDetectEncoding(0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, __dst);
    if (FLAGS_counts == 1)
    {
      printf("CEDcounts ");
      while (dword_1005DEAD8--)
      {
        printf("encdet ");
      }

      while (dword_1005DEACC--)
      {
        printf("rescore ");
      }

      while (dword_1005DEAD4--)
      {
        printf("rescan ");
      }

      while (dword_1005DEAD0--)
      {
        printf("robust ");
      }

      while (dword_1005DEAC0--)
      {
        printf("looking ");
      }

      while (dword_1005DEAC4--)
      {
        printf("doing ");
      }

      goto LABEL_58;
    }
  }

  return v28;
}

std::string *sub_100008774(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_100008830(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_100008774(a1, __s, v4);
}

void sub_100008890(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000088EC(exception, a1);
}

std::logic_error *sub_1000088EC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100008920(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 - 8);
    if (v2)
    {
      v3 = a2 + 304 * v2 - 296;
      v4 = -304 * v2;
      do
      {
        if (*(v3 + 23) < 0)
        {
          operator delete(*v3);
        }

        v3 -= 304;
        v4 += 304;
      }

      while (v4);
    }

    operator delete[]();
  }
}

const char *MyEncodingName(unsigned int a1)
{
  if ((a1 & 0x80000000) == 0)
  {
    if (!a1)
    {
      return "Latin1";
    }

    if (a1 <= 0x4A)
    {
      return EncodingName(a1);
    }

    if (a1 <= 0x4E)
    {
      v2 = a1 - 75;
      v3 = off_1005969B0;
      return v3[v2];
    }

    v2 = a1 - 100;
    if (a1 - 100 <= 0x13)
    {
      v3 = off_1005969D8;
      return v3[v2];
    }
  }

  return "~";
}

_BYTE *MakeChar44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  memset(a2, 170, 24);
  result = sub_100001DF4(a2, "________");
  v4 = *(a1 + 23);
  v5 = a1[1];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(a1 + 23);
  }

  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = v4 >> 63;
    v10 = 1;
    do
    {
      if (v9)
      {
        v11 = *a1;
      }

      else
      {
        v11 = a1;
      }

      v12 = *(v11 + v6);
      if (a0123456789[v12 + 256])
      {
        if (v8 <= 3)
        {
          v13 = a0123456789[v12];
          if (result[23] >= 0)
          {
            v14 = result;
          }

          else
          {
            v14 = *result;
          }

          v14[v8++] = v13;
        }
      }

      else if (byte_1004CDA18[v12])
      {
        if (v7 > 3)
        {
          if (result[23] >= 0)
          {
            v16 = result;
          }

          else
          {
            v16 = *result;
          }

          v16[4] = v16[5];
          if (result[23] >= 0)
          {
            v17 = result;
          }

          else
          {
            v17 = *result;
          }

          v17[5] = v17[6];
          if (result[23] >= 0)
          {
            v18 = result;
          }

          else
          {
            v18 = *result;
          }

          v18[6] = v18[7];
          v15 = 7;
        }

        else
        {
          v15 = v7 + 4;
        }

        v19 = a0123456789[v12];
        if (result[23] >= 0)
        {
          v20 = result;
        }

        else
        {
          v20 = *result;
        }

        v20[v15] = v19;
        ++v7;
      }

      v6 = v10;
      v21 = *(a1 + 23);
      v9 = v21 >> 63;
      if ((v21 & 0x80000000) != 0)
      {
        v21 = a1[1];
      }
    }

    while (v21 > v10++);
  }

  return result;
}

_BYTE *MakeChar4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  memset(a2, 170, 24);
  result = sub_100001DF4(a2, "____");
  v4 = *(a1 + 23);
  v5 = *(a1 + 23);
  v6 = v4 < 0;
  v7 = a1[1];
  if (v4 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      if (v6)
      {
        v12 = *a1;
      }

      else
      {
        v12 = a1;
      }

      v13 = *(v12 + v9);
      if (byte_1004CDA18[v13] | a0123456789[v13 + 256])
      {
        v14 = v10 <= 3;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        if (result[23] >= 0)
        {
          v15 = result;
        }

        else
        {
          v15 = *result;
        }

        v15[v10++] = a0123456789[v13];
        v5 = *(a1 + 23);
        v7 = a1[1];
      }

      v9 = v11;
      v6 = (v5 & 0x80u) != 0;
      if ((v5 & 0x80u) == 0)
      {
        v16 = v5;
      }

      else
      {
        v16 = v7;
      }

      v14 = v16 > v11++;
    }

    while (v14);
  }

  return result;
}

_BYTE *MakeChar8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  memset(a2, 170, 24);
  result = sub_100001DF4(a2, "________");
  v4 = *(a1 + 23);
  v5 = *(a1 + 23);
  v6 = v4 < 0;
  v7 = a1[1];
  if (v4 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      if (v6)
      {
        v12 = *a1;
      }

      else
      {
        v12 = a1;
      }

      v13 = *(v12 + v9);
      if (byte_1004CDA18[v13] | a0123456789[v13 + 256])
      {
        v14 = v10 <= 7;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        if (result[23] >= 0)
        {
          v15 = result;
        }

        else
        {
          v15 = *result;
        }

        v15[v10++] = a0123456789[v13];
        v5 = *(a1 + 23);
        v7 = a1[1];
      }

      v9 = v11;
      v6 = (v5 & 0x80u) != 0;
      if ((v5 & 0x80u) == 0)
      {
        v16 = v5;
      }

      else
      {
        v16 = v7;
      }

      v14 = v16 > v11++;
    }

    while (v14);
  }

  return result;
}

uint64_t CompactEncDet_detectEncoding(int8x8_t *a1, int a2, char *a3, int a4, int a5, unsigned int a6, _BYTE *a7)
{
  if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  v9 = 0;
  return CompactEncDet::DetectEncoding(a1, a2, 0, a3, 0, a5, a6, v7, 0, &v9, a7);
}

const char *EncodingName(unsigned int a1)
{
  if (a1 <= 0x4A)
  {
    return off_100596A78[3 * a1];
  }

  else
  {
    return "invalid_encoding";
  }
}

const char *MimeEncodingName(unsigned int a1)
{
  if (a1 <= 0x4A)
  {
    return off_100596A78[3 * a1 + 1];
  }

  else
  {
    return "";
  }
}

uint64_t EncodingFromName(uint64_t result, _DWORD *a2)
{
  *a2 = 23;
  if (result)
  {
    v3 = result;
    v4 = 0;
    for (i = off_100596A78; strcasecmp(v3, *i); i += 3)
    {
      if (++v4 == 75)
      {
        return 0;
      }
    }

    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t EncodingNameAliasToEncoding(char *a1)
{
  v3 = a1;
  if (!a1)
  {
    return 23;
  }

  if ((atomic_load_explicit(&qword_1005DEAE8, memory_order_acquire) & 1) == 0)
  {
    sub_10000C7C0();
  }

  if (qword_1005DEAE0 != -1)
  {
    sub_10000C844();
  }

  v1 = sub_10000C408(&xmmword_1005DEAF0, &v3);
  if (v1)
  {
    return *(v1 + 6);
  }

  else
  {
    return 23;
  }
}

void sub_100008F0C(id a1)
{
  v1 = 0;
  v2 = off_100596A78;
  do
  {
    v3 = *v2;
    v2 += 3;
    v6 = v3;
    v7 = &v6;
    *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = v1++;
  }

  while (v1 != 75);
  v4 = 0;
  v5 = &off_100596A80;
  do
  {
    v6 = *v5;
    if (!sub_10000C408(&xmmword_1005DEAF0, &v6))
    {
      v7 = &v6;
      *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = v4;
    }

    ++v4;
    v5 += 3;
  }

  while (v4 != 75);
  v6 = "5601";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 16;
  v6 = "646";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 24;
  v6 = "852";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 39;
  v6 = "866";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 42;
  v6 = "8859-1";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "ansi-1251";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 26;
  v6 = "ansi_x3.4-1968";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 24;
  v6 = "arabic";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 5;
  v6 = "ascii";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "ascii-7-bit";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 24;
  v6 = "asmo-708";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 5;
  v6 = "bhaskar";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 55;
  v6 = "big5";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 13;
  v6 = "big5-cp950";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 20;
  v6 = "big5-hkscs";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 47;
  v6 = "chinese";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 14;
  v6 = "cns";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 19;
  v6 = "cns11643";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 19;
  v6 = "cp1250";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 29;
  v6 = "cp1251";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 26;
  v6 = "cp1252";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 27;
  v6 = "cp1253";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 41;
  v6 = "cp1254";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 31;
  v6 = "cp1255";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 36;
  v6 = "cp1256";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 35;
  v6 = "cp1257";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 32;
  v6 = "cp819";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "cp852";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 39;
  v6 = "cp866";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 42;
  v6 = "cp-866";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 42;
  v6 = "cp874";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 34;
  v6 = "cp932";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 21;
  v6 = "cp950";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 20;
  v6 = "csbig5";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 13;
  v6 = "cseucjpkdfmtjapanese";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 10;
  v6 = "cseuckr";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 16;
  v6 = "csgb2312";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 14;
  v6 = "csibm852";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 39;
  v6 = "csibm866";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 42;
  v6 = "csiso2022jp";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 12;
  v6 = "csiso2022kr";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 44;
  v6 = "csiso58gb231280";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 14;
  v6 = "csiso88598i";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 37;
  v6 = "csisolatin1";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "csisolatin2";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 1;
  v6 = "csisolatin3";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 2;
  v6 = "csisolatin4";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 3;
  v6 = "csisolatin5";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 8;
  v6 = "csisolatin6";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 9;
  v6 = "csisolatinarabic";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 5;
  v6 = "csisolatincyrillic";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 4;
  v6 = "csisolatingreek";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 6;
  v6 = "csisolatinhebrew";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 7;
  v6 = "csksc56011987";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 16;
  v6 = "csmacintosh";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 53;
  v6 = "csn-369103";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 40;
  v6 = "csshiftjis";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 11;
  v6 = "csunicode";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 57;
  v6 = "csunicode11";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 57;
  v6 = "csunicode11utf7";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 54;
  v6 = "csunicodeascii";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 57;
  v6 = "csunicodelatin1";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 57;
  v6 = "cyrillic";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 4;
  v6 = "ecma-114";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 5;
  v6 = "ecma-118";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 6;
  v6 = "elot_928";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 6;
  v6 = "euc";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 18;
  v6 = "euc-cn";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 15;
  v6 = "euc-dec";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 18;
  v6 = "euc-jp";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 10;
  v6 = "euc-kr";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 16;
  v6 = "eucgb2312_cn";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 14;
  v6 = "gb";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 14;
  v6 = "gb18030";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 46;
  v6 = "gb2132";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 14;
  v6 = "gb2312";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 14;
  v6 = "gb_2312-80";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 14;
  v6 = "gbk";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 45;
  v6 = "greek";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 6;
  v6 = "greek8";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 6;
  v6 = "hebrew";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 7;
  v6 = "htchanakya";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 56;
  v6 = "hz-gb-2312";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 62;
  v6 = "ibm819";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "ibm852";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 39;
  v6 = "ibm874";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 34;
  v6 = "iso-10646";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 57;
  v6 = "iso-10646-j-1";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 57;
  v6 = "iso-10646-ucs-2";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 17;
  v6 = "iso-10646-ucs-4";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 59;
  v6 = "iso-10646-ucs-basic";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 57;
  v6 = "iso-10646-unicode-latin1";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 57;
  v6 = "iso-2022-cn";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 48;
  v6 = "iso-2022-jp";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 12;
  v6 = "iso-2022-kr";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 44;
  v6 = "iso-8559-1";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "iso-874";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 34;
  v6 = "iso-8858-1";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "iso-8859-0";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 30;
  v6 = "iso-8859-1";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "iso-8859-10";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 9;
  v6 = "iso-8859-11";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 33;
  v6 = "iso-8859-13";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 43;
  v6 = "iso-8859-15";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 30;
  v6 = "iso-8859-2";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 1;
  v6 = "iso-8859-3";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 2;
  v6 = "iso-8859-4";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 3;
  v6 = "iso-8859-5";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 4;
  v6 = "iso-8859-6";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 5;
  v6 = "iso-8859-7";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 6;
  v6 = "iso-8859-8";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 7;
  v6 = "iso-8859-8-i";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 37;
  v6 = "iso-8859-9";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 8;
  v6 = "iso-9959-1";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "iso-ir-100";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "iso-ir-101";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 1;
  v6 = "iso-ir-109";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 2;
  v6 = "iso-ir-110";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 3;
  v6 = "iso-ir-126";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 6;
  v6 = "iso-ir-127";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 5;
  v6 = "iso-ir-138";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 7;
  v6 = "iso-ir-144";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 4;
  v6 = "iso-ir-148";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 8;
  v6 = "iso-ir-149";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 16;
  v6 = "iso-ir-157";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 9;
  v6 = "iso-ir-58";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 14;
  v6 = "iso-latin-1";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "iso_2022-cn";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 48;
  v6 = "iso_2022-kr";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 44;
  v6 = "iso_8859-1";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "iso_8859-10:1992";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 9;
  v6 = "iso_8859-11";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 33;
  v6 = "iso_8859-13";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 43;
  v6 = "iso_8859-15";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 30;
  v6 = "iso_8859-1:1987";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "iso_8859-2";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 1;
  v6 = "iso_8859-2:1987";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 1;
  v6 = "iso_8859-3";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 2;
  v6 = "iso_8859-3:1988";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 2;
  v6 = "iso_8859-4";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 3;
  v6 = "iso_8859-4:1988";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 3;
  v6 = "iso_8859-5";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 4;
  v6 = "iso_8859-5:1988";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 4;
  v6 = "iso_8859-6";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 5;
  v6 = "iso_8859-6:1987";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 5;
  v6 = "iso_8859-7";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 6;
  v6 = "iso_8859-7:1987";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 6;
  v6 = "iso_8859-8";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 7;
  v6 = "iso_8859-8:1988:";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 7;
  v6 = "iso_8859-9";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 8;
  v6 = "iso_8859-9:1989";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 8;
  v6 = "jagran";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 52;
  v6 = "jis";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 12;
  v6 = "koi8-cs";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 40;
  v6 = "koi8-r";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 25;
  v6 = "koi8-ru";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 28;
  v6 = "koi8-u";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 28;
  v6 = "koi8r";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 25;
  v6 = "koi8u";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 28;
  v6 = "korean";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 16;
  v6 = "ks-c-5601";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 16;
  v6 = "ks-c-5601-1987";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 16;
  v6 = "ks_c_5601-1989";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 16;
  v6 = "ksc";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 16;
  v6 = "l1";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "l2";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 1;
  v6 = "l3";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 2;
  v6 = "l4";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 3;
  v6 = "l5";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 8;
  v6 = "l6";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 9;
  v6 = "latin-1";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "latin1";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "latin2";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 1;
  v6 = "latin3";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 2;
  v6 = "latin4";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 3;
  v6 = "latin5";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 8;
  v6 = "latin6";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 9;
  v6 = "mac";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 53;
  v6 = "macintosh";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 53;
  v6 = "macintosh-roman";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 53;
  v6 = "ms932";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 21;
  v6 = "ms_kanji";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 21;
  v6 = "shift-jis";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 11;
  v6 = "shift_jis";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 11;
  v6 = "sjis";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 11;
  v6 = "sjs";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 11;
  v6 = "sun_eu_greek";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 6;
  v6 = "tab";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 51;
  v6 = "tam";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 50;
  v6 = "tis-620";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 33;
  v6 = "tscii";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 49;
  v6 = "un";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 23;
  v6 = "unicode";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 17;
  v6 = "unicode-1-1-utf-7";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 54;
  v6 = "unicode-1-1-utf-8";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 22;
  v6 = "unicode-2-0-utf-7";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 54;
  v6 = "unknown";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 23;
  v6 = "us";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "us-ascii";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 0;
  v6 = "utf-16be";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 57;
  v6 = "utf-16le";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 58;
  v6 = "utf-32be";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 59;
  v6 = "utf-32le";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 60;
  v6 = "utf-7";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 54;
  v6 = "utf-8";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 22;
  v6 = "utf7";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 54;
  v6 = "utf8";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 22;
  v6 = "visual";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 38;
  v6 = "win-1250";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 29;
  v6 = "win-1251";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 26;
  v6 = "window-874";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 34;
  v6 = "windows-1250";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 29;
  v6 = "windows-1251";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 26;
  v6 = "windows-1252";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 27;
  v6 = "windows-1253";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 41;
  v6 = "windows-1254";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 31;
  v6 = "windows-1255";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 36;
  v6 = "windows-1256";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 35;
  v6 = "windows-1257";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 32;
  v6 = "windows-31j";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 21;
  v6 = "windows-874";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 34;
  v6 = "windows-936";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 45;
  v6 = "x-big5";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 13;
  v6 = "x-binaryenc";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 61;
  v6 = "x-cp1250";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 29;
  v6 = "x-cp1251";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 26;
  v6 = "x-cp1252";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 27;
  v6 = "x-cp1253";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 41;
  v6 = "x-cp1254";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 31;
  v6 = "x-cp1255";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 36;
  v6 = "x-cp1256";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 35;
  v6 = "x-cp1257";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 32;
  v6 = "x-euc-jp";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 10;
  v6 = "x-euc-tw";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 19;
  v6 = "x-gbk";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 45;
  v6 = "x-iso-10646-ucs-2-be";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 57;
  v6 = "x-iso-10646-ucs-2-le";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 58;
  v6 = "x-iso-10646-ucs-4-be";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 59;
  v6 = "x-iso-10646-ucs-4-le";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 60;
  v6 = "x-jis";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 12;
  v6 = "x-mac-roman";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 53;
  v6 = "x-shift_jis";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 11;
  v6 = "x-sjis";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 11;
  v6 = "x-unicode-2-0-utf-7";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 54;
  v6 = "x-utf8utf8";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 63;
  v6 = "x-x-big5";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 13;
  v6 = "zh_cn.euc";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 14;
  v6 = "zh_tw-big5";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 13;
  v6 = "zh_tw-euc";
  v7 = &v6;
  *(sub_10000BDC4(&xmmword_1005DEAF0, &v6) + 6) = 19;
  v7 = "";
  sub_10000C508(&xmmword_1005DEAF0, &v7);
}

uint64_t sub_10000BD78(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t **sub_10000BDC4(void *a1, char **a2)
{
  v4 = sub_10000C020(a1, *a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_10000C0AC(a1, v11[2], *a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_10000C020(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = 0;
    v4 = a2 + 1;
    while ((v2 & 0x80) == 0)
    {
      if ((_DefaultRuneLocale.__runetype[v2] & 0x500) != 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      v5 = *v4++;
      v2 = v5;
      if (!v5)
      {
        return v3;
      }
    }

    if (!__maskrune(v2, 0x500uLL))
    {
      goto LABEL_6;
    }

LABEL_5:
    v3 = 5 * v3 + __tolower(*(v4 - 1));
    goto LABEL_6;
  }

  return 0;
}

BOOL sub_10000C0AC(uint64_t a1, char *a2, char *a3)
{
  do
  {
    while (1)
    {
      v5 = *a2++;
      if (v5 < 0)
      {
        if (__maskrune(v5, 0x500uLL))
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      if ((_DefaultRuneLocale.__runetype[v5] & 0x500) != 0)
      {
        break;
      }

LABEL_5:
      if (!*(a2 - 1))
      {
        goto LABEL_6;
      }
    }

    do
    {
LABEL_6:
      v6 = *a3++;
      if (v6 < 0)
      {
        if (__maskrune(v6, 0x500uLL))
        {
          break;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v6] & 0x500) != 0)
      {
        break;
      }
    }

    while (*(a3 - 1));
    v7 = __tolower(*(a2 - 1));
    v8 = __tolower(*(a3 - 1));
  }

  while (v7 == v8 && *(a2 - 1));
  return v7 == v8;
}

void sub_10000C180()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_10000C1B4(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_10000C2A4(a1, prime);
    }
  }
}

void sub_10000C2A4(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_10000C180();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t **sub_10000C408(void *a1, char **a2)
{
  v4 = sub_10000C020(a1, *a2);
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

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (sub_10000C0AC(a1, i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *sub_10000C508(void *a1, char **a2)
{
  result = sub_10000C540(a1, a2);
  if (result)
  {
    sub_10000C640(a1, result);
    return 1;
  }

  return result;
}

uint64_t **sub_10000C540(void *a1, char **a2)
{
  v4 = sub_10000C020(a1, *a2);
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

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_10000C0AC(a1, i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_10000C640(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_10000C684(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_10000C684@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void sub_10000C7C0()
{
  if (__cxa_guard_acquire(&qword_1005DEAE8))
  {
    unk_1005DEB00 = 0u;
    xmmword_1005DEAF0 = 0u;
    dword_1005DEB10 = 1065353216;
    __cxa_atexit(sub_100008F08, &xmmword_1005DEAF0, &_mh_execute_header);

    __cxa_guard_release(&qword_1005DEAE8);
  }
}

const char *LanguageName(unsigned int a1)
{
  if (a1 > 0xA0)
  {
    return "invalid_language";
  }

  else
  {
    return off_1005971C0[4 * a1];
  }
}

uint64_t StateWithTasks.makeActivity(makeStatus:accountError:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v9 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17[-v11 - 8];
  if (*(v4 + 192))
  {
    v13 = *(v4 + 168);
    memcpy(v17, v4, sizeof(v17));

    v14 = sub_1000CBCD0();
    sub_10000E268(a3, v12, &qword_1005CCEB0, &qword_1004E9140);
    return sub_10000CA08(v13, v14, a1, a2, v12, a4);
  }

  else
  {
    sub_10000E268(a3, v12, &qword_1005CCEB0, &qword_1004E9140);
    return Activity.init(mailboxesWithPendingWork:accountError:)(_swiftEmptySetSingleton, v12, a4);
  }
}

uint64_t sub_10000C9C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000CA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v88 = a5;
  v89 = a4;
  v87 = a6;
  v9 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v86 = &v82 - v11;
  v12 = type metadata accessor for ConnectionStatus(0);
  v94 = *(v12 - 8);
  v13 = *(v94 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v93 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v82 - v16;
  v17 = sub_10000C9C0(&qword_1005CCED8, &qword_1004CDB98);
  v90 = *(v17 - 8);
  v91 = v17;
  v18 = *(v90 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = (&v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v19);
  v95 = &v82 - v23;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = a1 + 32;
    v84 = v24 - 1;
    v27 = _swiftEmptyArrayStorage;
    v85 = a1 + 32;
    do
    {
      v28 = (v26 + 176 * v25);
      v29 = v25;
      while (1)
      {
        if (v29 >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v30 = v28[9];
        v105 = v28[8];
        v106 = v30;
        v107 = v28[10];
        v31 = v28[5];
        v101 = v28[4];
        v102 = v31;
        v32 = v28[7];
        v103 = v28[6];
        v104 = v32;
        v33 = v28[1];
        v97 = *v28;
        v98 = v33;
        v34 = v28[3];
        v99 = v28[2];
        v100 = v34;
        v25 = v29 + 1;
        result = sub_100011B00(v33, DWORD2(v33), a2);
        if ((result & 1) != 0 || v103)
        {
          break;
        }

        v28 += 11;
        ++v29;
        if (v24 == v25)
        {
          goto LABEL_16;
        }
      }

      sub_10000E08C(&v97, v96);
      result = swift_isUniquelyReferenced_nonNull_native();
      v108 = v27;
      v83 = a3;
      if ((result & 1) == 0)
      {
        result = sub_1000919E8(0, v27[2] + 1, 1);
        v27 = v108;
      }

      v36 = v27[2];
      v35 = v27[3];
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        result = sub_1000919E8((v35 > 1), v36 + 1, 1);
        v37 = v36 + 1;
        v27 = v108;
      }

      v27[2] = v37;
      v38 = &v27[22 * v36];
      v39 = v97;
      v40 = v99;
      v38[3] = v98;
      v38[4] = v40;
      v38[2] = v39;
      v41 = v100;
      v42 = v101;
      v43 = v103;
      v38[7] = v102;
      v38[8] = v43;
      v38[5] = v41;
      v38[6] = v42;
      v44 = v104;
      v45 = v105;
      v46 = v107;
      v38[11] = v106;
      v38[12] = v46;
      v38[9] = v44;
      v38[10] = v45;
      a3 = v83;
      v26 = v85;
    }

    while (v84 != v29);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

LABEL_16:

  result = a3(v47);
  v48 = result;
  v49 = v27[2];
  if (v49)
  {
    v50 = 0;
    v51 = (v27 + 4);
    v52 = _swiftEmptyArrayStorage;
    while (v50 < v27[2])
    {
      v53 = *v51;
      v54 = v51[2];
      v98 = v51[1];
      v99 = v54;
      v55 = v51[3];
      v56 = v51[4];
      v57 = v51[6];
      v102 = v51[5];
      v103 = v57;
      v100 = v55;
      v101 = v56;
      v58 = v51[7];
      v59 = v51[8];
      v60 = v51[10];
      v106 = v51[9];
      v107 = v60;
      v104 = v58;
      v105 = v59;
      v97 = v53;
      if (*(v48 + 16))
      {
        result = sub_100063B5C(v98, DWORD2(v98));
        if (v61)
        {
          v62 = v93;
          sub_10000E2D0(*(v48 + 56) + *(v94 + 72) * result, v93, type metadata accessor for ConnectionStatus);
          v63 = v62;
          v64 = v92;
          sub_10000E338(v63, v92, type metadata accessor for ConnectionStatus);
          v65 = *(v91 + 48);
          v66 = v106;
          v21[8] = v105;
          v21[9] = v66;
          v21[10] = v107;
          v67 = v102;
          v21[4] = v101;
          v21[5] = v67;
          v68 = v104;
          v21[6] = v103;
          v21[7] = v68;
          v69 = v98;
          *v21 = v97;
          v21[1] = v69;
          v70 = v100;
          v21[2] = v99;
          v21[3] = v70;
          sub_10000E338(v64, v21 + v65, type metadata accessor for ConnectionStatus);
          sub_10000E13C(v21, v95);
          sub_10000E08C(&v97, v96);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_10008504C(0, v52[2] + 1, 1, v52);
          }

          v72 = v52[2];
          v71 = v52[3];
          if (v72 >= v71 >> 1)
          {
            v52 = sub_10008504C(v71 > 1, v72 + 1, 1, v52);
          }

          v52[2] = v72 + 1;
          result = sub_10000E13C(v95, v52 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v72);
        }
      }

      ++v50;
      v51 += 11;
      if (v49 == v50)
      {
        goto LABEL_28;
      }
    }

LABEL_34:
    __break(1u);
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
LABEL_28:

    v73 = v27[2];
    sub_10000E1AC();
    result = sub_1004A5D64();
    v96[0] = result;
    v74 = v27[2];
    if (!v74)
    {
LABEL_32:

      v79 = v96[0];
      v80 = v88;
      v81 = v86;
      sub_10000E268(v88, v86, &qword_1005CCEB0, &qword_1004E9140);
      sub_10000D4F4(v52, v79, v81, v87);
      return sub_10000E200(v80);
    }

    v75 = 0;
    v76 = v27 + 5;
    while (v75 < v27[2])
    {
      ++v75;
      v78 = *(v76 - 1);
      v77 = *v76;

      sub_1000883C4(&v97, v78, v77);

      v76 += 22;
      if (v74 == v75)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t MessageSectionData.mailbox.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
}

uint64_t MessageSectionData.mailbox.setter(uint64_t a1, int a2)
{
  v5 = *v2;

  *v2 = a1;
  *(v2 + 2) = a2;
  return result;
}

uint64_t StateWithTasks.InSyncMailbox.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
}

uint64_t StateWithTasks.InSyncMailbox.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RemoteMailbox.Status.highestModificationSequence.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t RemoteMailbox.Status.highestModificationSequence.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_10000D16C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s13IMAP2Behavior14StateWithTasksV13InSyncMailboxV23__derived_struct_equalsySbAE_AEtFZ_0(&v5, &v7) & 1;
}

uint64_t StateWithTasks.inSyncMailboxes.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 192) == 1)
  {
    v3 = *(v1 + 168);
    v4 = sub_10000C9C0(&qword_1005CCEC8, &qword_1004CDB28);
    v5 = sub_10000DF44(&qword_1005CCED0, &qword_1005CCEC8, &qword_1004CDB28);
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = sub_10000D2F0;
    v6[4] = 0;
    v6[5] = sub_10000D47C;
    v6[6] = 0;
  }

  else
  {
    v4 = sub_10000C9C0(&qword_1005CCEB8, &qword_1004CDB20);
    result = sub_10000DF44(&qword_1005CCEC0, &qword_1005CCEB8, &qword_1004CDB20);
    v5 = result;
    v6 = _swiftEmptyArrayStorage;
  }

  a1[3] = v4;
  a1[4] = v5;
  *a1 = v6;
  return result;
}

uint64_t sub_10000D2F0(_OWORD *a1)
{
  v2 = type metadata accessor for MailboxSyncState();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = a1[9];
  v23 = a1[8];
  v24 = v9;
  v25 = a1[10];
  v10 = a1[5];
  v20[4] = a1[4];
  v20[5] = v10;
  v11 = a1[7];
  v21 = a1[6];
  v22 = v11;
  v12 = a1[1];
  v20[0] = *a1;
  v20[1] = v12;
  v13 = a1[3];
  v20[2] = a1[2];
  v20[3] = v13;
  if (v21)
  {
    v14 = v21 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
    swift_beginAccess();
    v15 = _s13SelectedStateV7WrappedVMa(0);
    sub_10000E2D0(v14 + *(v15 + 20), v6, type metadata accessor for MailboxSyncState);
    sub_10000E338(v6, v8, type metadata accessor for MailboxSyncState);
    sub_10000E08C(v20, &v19);
    v16 = sub_1000D1280();
    sub_10000E3A0(v8, type metadata accessor for MailboxSyncState);
    sub_10000E0E8(v20);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10000D47C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 6);
  v7 = *(a1 + 168);
  if (v7 < 2)
  {
    v8 = a1[20];
  }

  else
  {
    v8 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7 > 1;
}

uint64_t sub_10000D4F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v97 = a2;
  v75 = a1;
  v6 = _s15MissingMessagesO10IncompleteVMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v76 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = _s15MissingMessagesOMa(0);
  v9 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v90 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for MailboxSyncState();
  v11 = *(*(v81 - 8) + 64);
  v12 = __chkstk_darwin(v81);
  v95 = (&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v94 = &v73 - v14;
  v15 = type metadata accessor for Activity.MailboxStatus(0);
  v96 = *(v15 - 8);
  v16 = *(v96 + 64);
  v17 = __chkstk_darwin(v15);
  v78 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v84 = &v73 - v19;
  v77 = type metadata accessor for ConnectionStatus(0);
  v20 = *(*(v77 - 8) + 64);
  v21 = __chkstk_darwin(v77);
  v79 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v83 = &v73 - v23;
  v24 = sub_10000C9C0(qword_1005CCEE8, &unk_1004CDBA0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v88 = &v73 - v26;
  v27 = sub_10000C9C0(&qword_1005CCED8, &qword_1004CDB98);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = (&v73 - v30);
  v32 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v73 - v34;
  v74 = a3;
  sub_10000E268(a3, &v73 - v34, &qword_1005CCEB0, &qword_1004E9140);
  v89 = a4;
  Activity.init(mailboxesWithPendingWork:accountError:)(v97, v35, a4);
  v36 = *(v75 + 16);
  if (v36)
  {
    v37 = *(v27 + 48);
    v38 = v75 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v85 = *(v28 + 72);
    v86 = (v96 + 56);
    v87 = v37;
    v39 = v36 - 1;
    v80 = v15;
    v41 = v83;
    v40 = v84;
    while (1)
    {
      sub_10000E268(v38, v31, &qword_1005CCED8, &qword_1004CDB98);
      v42 = v31[9];
      v102 = v31[8];
      v103 = v42;
      v104 = v31[10];
      v43 = v31[5];
      v99[4] = v31[4];
      v99[5] = v43;
      v44 = v31[7];
      v100 = v31[6];
      v101 = v44;
      v45 = v31[1];
      v99[0] = *v31;
      v99[1] = v45;
      v46 = v31[3];
      v99[2] = v31[2];
      v99[3] = v46;
      v96 = *(&v99[0] + 1);
      v97 = *&v99[0];
      sub_10000E338(v31 + v87, v41, type metadata accessor for ConnectionStatus);
      if (v100)
      {
        v92 = v39;
        v47 = v100 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v48 = v47 + *(_s13SelectedStateV7WrappedVMa(0) + 20);
        v49 = v94;
        sub_10000E2D0(v48, v94, type metadata accessor for MailboxSyncState);
        v50 = v49;
        v51 = v95;
        sub_10000E2D0(v50, v95, type metadata accessor for MailboxSyncState);
        v53 = v51[19];
        v52 = v51[20];
        v54 = v51[21];
        v55 = (sub_100014D94(12, v53) & 1) == 0 || (sub_100014D94(12, v52) & 1) != 0 || (sub_100167D14(v53, v52) & 1) != 0 && (sub_100014D94(12, v54) & 1) != 0;
        sub_10000E2D0(v95 + *(v81 + 68), v90, _s15MissingMessagesOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v93 = v38;
        v91 = v55;
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v57 = v76;
            sub_10000E338(v90, v76, _s15MissingMessagesO10IncompleteVMa);

            sub_10000E08C(v99, v98);

            v58 = sub_1000E666C();
            v60 = v59;
            v62 = v61;
            sub_10000E3A0(v57, _s15MissingMessagesO10IncompleteVMa);
            v63 = (v62 & 1) == 0;
            if (v62)
            {
              v64 = 0;
            }

            else
            {
              v64 = v58;
            }

            if (v63)
            {
              v65 = v60;
            }

            else
            {
              v65 = 0;
            }

            v66 = !v63;
            goto LABEL_25;
          }

          sub_10000E08C(v99, v98);

          sub_10000E3A0(v90, _s15MissingMessagesOMa);
        }

        else
        {

          sub_10000E08C(v99, v98);
        }

        v64 = 0;
        v65 = 0;
        v66 = 1;
LABEL_25:
        v69 = v95;
        v70 = sub_1000D0D48();

        sub_10000E0E8(v99);
        sub_10000E3A0(v94, type metadata accessor for MailboxSyncState);
        v41 = v83;
        sub_10000E3A0(v83, type metadata accessor for ConnectionStatus);
        sub_10000E3A0(v69, type metadata accessor for MailboxSyncState);
        v40 = v84;
        *v84 = v91;
        *(v40 + 8) = v64;
        *(v40 + 16) = v65;
        *(v40 + 24) = v66;
        *(v40 + 25) = v70 & 1;
        v15 = v80;
        swift_storeEnumTagMultiPayload();
        v39 = v92;
        v38 = v93;
        goto LABEL_35;
      }

      sub_10000E338(v41, v79, type metadata accessor for ConnectionStatus);
      v67 = swift_getEnumCaseMultiPayload();
      if (v67 <= 1)
      {
        break;
      }

      v68 = v78;
      if (v67 == 2)
      {
        sub_10000E338(v79, v78, type metadata accessor for ConnectionStatus.Error);
      }

      else if (v67 != 3)
      {

        goto LABEL_33;
      }

      swift_storeEnumTagMultiPayload();

LABEL_34:
      sub_10000E338(v68, v40, type metadata accessor for Activity.MailboxStatus);
LABEL_35:
      v71 = v88;
      sub_10000E338(v40, v88, type metadata accessor for Activity.MailboxStatus);
      (*v86)(v71, 0, 1, v15);
      Activity.subscript.setter(v71, v97, v96);
      sub_10000E0E8(v99);
      if (!v39)
      {
        goto LABEL_37;
      }

      --v39;
      v38 += v85;
    }

    v68 = v78;

    sub_10000E3A0(v79, type metadata accessor for ConnectionStatus);
LABEL_33:
    swift_storeEnumTagMultiPayload();
    goto LABEL_34;
  }

LABEL_37:

  return sub_10000E200(v74);
}

void *variable initialization expression of StateWithTasks.mailboxesToSelectLoggingHelper()
{
  _s30MailboxesToSelectLoggingHelperCMa();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t _s13IMAP2Behavior14StateWithTasksV13InSyncMailboxV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t result, char *a2)
{
  if ((*(result + 8) | (*(result + 8) << 32)) != (*(a2 + 2) | (*(a2 + 2) << 32)))
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    if (*(result + 24) != *(a2 + 3))
    {
      return 0;
    }

    v9 = result;
    if ((sub_1000FFC98(*(result + 16), *(a2 + 2)) & 1) == 0)
    {
      return 0;
    }

    v10 = a2[40];
    if (*(v9 + 40))
    {
      if ((a2[40] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(v9 + 32) != *(a2 + 4))
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    return 1;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000DEFC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000DF44(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000DEFC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000DF8C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

__n128 sub_10000DFD4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000DFE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000E030(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000E13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CCED8, &qword_1004CDB98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000E1AC()
{
  result = qword_1005CCEE0;
  if (!qword_1005CCEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CCEE0);
  }

  return result;
}

uint64_t sub_10000E200(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CCEB0, &qword_1004E9140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E268(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000C9C0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E2D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000E338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000E3A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000E408(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    result = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000E540(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_10000E67C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_10000E84C()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1004A5804();
}

uint64_t sub_10000E8B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  return sub_1004A6D44();
}

uint64_t sub_10000E8C4(IMAP2Persistence::CredentialsRequestID a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + *(a3 + 36));
  v7 = *v5;
  v6 = v5[1];
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v10 = UInt32.init(_:)(a1);

  return v10;
}

uint64_t sub_10000EA20@<X0>(unsigned int a1@<W0>, Swift::UInt32 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a1;
  v45 = a5;
  v9 = *(a4 + 16);
  v10 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = type metadata accessor for ClientCommand(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_1004A6374();
  v36 = *(v13 - 8);
  v37 = v13;
  v14 = *(v36 + 64);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v40 = AssociatedTypeWitness;
  v39 = *(AssociatedTypeWitness - 8);
  v17 = *(v39 + 64);
  __chkstk_darwin(v18);
  v38 = &v36 - v19;
  v20.underlying = a2;
  sub_10000E8C4(v20, a3, a4);
  v21 = *(v10 + 64);
  v43 = v5;
  v41 = v9;
  v21();

  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
  {
    (*(v36 + 8))(v16, v37);
    v22 = 1;
    v23 = v45;
  }

  else
  {
    v24 = *(TupleTypeMetadata2 + 48);
    v25 = v38;
    v26 = v39;
    v27 = v40;
    (*(v39 + 32))(v38, v16, v40);
    v28 = &v16[v24];
    v29 = v45;
    sub_10000F8F8(v28, v45);
    v30 = *(a4 + 36);
    v31 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v33 = swift_getAssociatedConformanceWitness();
    v46 = v27;
    v47 = v31;
    v48 = AssociatedConformanceWitness;
    v49 = v33;
    v34 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap();
    sub_10016C124(v42, v25, v34);
    (*(v26 + 8))(v25, v27);
    v22 = 0;
    v23 = v29;
  }

  return (*(*(v44 - 8) + 56))(v23, v22, 1);
}

unint64_t sub_10000ED94(unsigned int a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_1004A6374();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v34 = AssociatedTypeWitness;
  v33 = *(AssociatedTypeWitness - 8);
  v15 = *(v33 + 64);
  __chkstk_darwin(v16);
  v32 = &v29 - v17;
  v18.underlying = a2;
  sub_10000E8C4(v18, a3, a4);
  v19 = *(v8 + 72);
  v35 = v7;
  v19();

  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
  {
    (*(v30 + 8))(v14, v31);
    return 0xF000000000000007;
  }

  else
  {
    v31 = *&v14[*(TupleTypeMetadata2 + 48)];
    v22 = v32;
    v21 = v33;
    v23 = v34;
    (*(v33 + 32))(v32, v14, v34);
    v24 = *(a4 + 36);
    v25 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = swift_getAssociatedConformanceWitness();
    v37 = v25;
    v38 = v23;
    v39 = AssociatedConformanceWitness;
    v40 = v27;
    v28 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap();
    sub_10016C2C4(v36, v22, v28);
    (*(v21 + 8))(v22, v23);
    return v31;
  }
}

uint64_t sub_10000F0B4(uint64_t a1, IMAP2Persistence::CredentialsRequestID a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000E8C4(a2, a3, a4);
  (*(*(a4 + 24) + 80))(a1, v7, v8, v9, v10, *(a4 + 16));
}

uint64_t sub_10000F168(uint64_t a1, IMAP2Persistence::CredentialsRequestID a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000E8C4(a2, a3, a4);
  (*(*(a4 + 24) + 88))(a1, v7, v8, v9, v10, *(a4 + 16));
}

uint64_t sub_10000F21C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v37 = a5;
  v38 = a7;
  v41 = a6;
  v42 = a1;
  v35 = a3;
  v36 = a4;
  v11 = *(a8 + 16);
  v10 = *(a8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1004A6374();
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = *(v32 + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - v15;
  v40 = *(AssociatedTypeWitness - 8);
  v17 = *(v40 + 64);
  __chkstk_darwin(v18);
  v34 = &v32 - v19;
  v20 = *(a8 + 36);
  v39 = v8;
  v21 = (v8 + v20);
  v22 = *v21;
  v23 = v21[1];
  v24 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v27 = AssociatedConformanceWitness;
  v28 = v40;
  sub_10016C45C(v42, v22, AssociatedTypeWitness, v24, v27, v26, v16);
  if ((*(v28 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v32 + 8))(v16, v33);
    type metadata accessor for AuthenticatedTaskWithCustomHistory.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v29 = v42;
    *(v29 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v31 = v34;
    (*(v28 + 32))(v34, v16, AssociatedTypeWitness);
    (*(v10 + 96))(v31, v35, v36, v37, v41, v38, v11, v10);
    return (*(v28 + 8))(v31, AssociatedTypeWitness);
  }
}

uint64_t sub_10000F598(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000F5E4(int a1, uint64_t a2)
{
  v30 = a1;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1004A6374();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  v26 = &v25 - v14;
  v15 = *(a2 + 36);
  v29 = v2;
  v16 = (v2 + v15);
  v17 = *v16;
  v18 = v16[1];
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  sub_10016C704(v30, v18, v19, AssociatedTypeWitness, AssociatedConformanceWitness, v21, v10);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v27 + 8))(v10, v28);
    type metadata accessor for AuthenticatedTaskWithCustomHistory.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v22 = v30;
    *(v22 + 4) = 1;
    return swift_willThrow();
  }

  else
  {
    v24 = v26;
    (*(v11 + 32))(v26, v10, AssociatedTypeWitness);
    (*(v4 + 104))(v24, v5, v4);
    return (*(v11 + 8))(v24, AssociatedTypeWitness);
  }
}

uint64_t sub_10000F8F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for SegmentResequencer.ByteCount(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10000F9AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000F9F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SearchRequest.Predicate.Day(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000FA60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000FAA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000FAF8(uint64_t a1, _DWORD *a2)
{
  v2 = a2 + 2;
  if (*a2 != *a1)
  {
    return 0;
  }

  v3 = *(a1 + 152);
  v73 = *(a1 + 136);
  v74 = v3;
  v75 = *(a1 + 168);
  v76 = *(a1 + 184);
  v4 = *(a1 + 88);
  v69 = *(a1 + 72);
  v70 = v4;
  v5 = *(a1 + 120);
  v71 = *(a1 + 104);
  v72 = v5;
  v6 = *(a1 + 24);
  v65 = *(a1 + 8);
  v66 = v6;
  v7 = *(a1 + 56);
  v67 = *(a1 + 40);
  v68 = v7;
  if (sub_10000FE74(&v65) != 1)
  {
    v14 = *(v2 + 9);
    v61 = *(v2 + 8);
    v62 = v14;
    v63 = *(v2 + 10);
    v64 = *(v2 + 176);
    v15 = *(v2 + 5);
    v57 = *(v2 + 4);
    v58 = v15;
    v16 = *(v2 + 7);
    v59 = *(v2 + 6);
    v60 = v16;
    v17 = *(v2 + 1);
    v53 = *v2;
    v54 = v17;
    v18 = *(v2 + 3);
    v55 = *(v2 + 2);
    v56 = v18;
    if (sub_10000FE74(&v53) == 1)
    {
      return 0;
    }

    v51[8] = v73;
    v51[9] = v74;
    v51[10] = v75;
    v52 = v76;
    v51[4] = v69;
    v51[5] = v70;
    v51[6] = v71;
    v51[7] = v72;
    v51[0] = v65;
    v51[1] = v66;
    v51[2] = v67;
    v51[3] = v68;
    if (sub_10000FE88(v51) == 1)
    {
      v19 = UInt32.init(_:)(v51);
      v20 = *(v19 + 80);
      v81 = *(v19 + 64);
      v82 = v20;
      v83 = *(v19 + 96);
      *&v84 = *(v19 + 112);
      v21 = *(v19 + 16);
      v77 = *v19;
      v78 = v21;
      v22 = *(v19 + 48);
      v79 = *(v19 + 32);
      v80 = v22;
      v47 = v61;
      v48 = v62;
      v49 = v63;
      v50 = v64;
      v43 = v57;
      v44 = v58;
      v45 = v59;
      v46 = v60;
      v39 = v53;
      v40 = v54;
      v41 = v55;
      v42 = v56;
      if (sub_10000FE88(&v39) == 1)
      {
        v23 = UInt32.init(_:)(&v39);
        v24 = *(v23 + 80);
        v92 = *(v23 + 64);
        v93 = v24;
        v94 = *(v23 + 96);
        *&v95 = *(v23 + 112);
        v25 = *(v23 + 16);
        v88 = *v23;
        v89 = v25;
        v26 = *(v23 + 48);
        v90 = *(v23 + 32);
        v91 = v26;
        return static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v77, &v88);
      }
    }

    else
    {
      v27 = UInt32.init(_:)(v51);
      v28 = v27[9];
      v85 = v27[8];
      v86 = v28;
      v87 = v27[10];
      v29 = v27[5];
      v81 = v27[4];
      v82 = v29;
      v30 = v27[7];
      v83 = v27[6];
      v84 = v30;
      v31 = v27[1];
      v77 = *v27;
      v78 = v31;
      v32 = v27[3];
      v79 = v27[2];
      v80 = v32;
      v50 = v64;
      v48 = v62;
      v49 = v63;
      v46 = v60;
      v47 = v61;
      v44 = v58;
      v45 = v59;
      v42 = v56;
      v43 = v57;
      v40 = v54;
      v41 = v55;
      v39 = v53;
      if (sub_10000FE88(&v39) != 1)
      {
        v33 = UInt32.init(_:)(&v39);
        v34 = v33[9];
        v96 = v33[8];
        v97 = v34;
        v98 = v33[10];
        v35 = v33[5];
        v92 = v33[4];
        v93 = v35;
        v36 = v33[7];
        v94 = v33[6];
        v95 = v36;
        v37 = v33[1];
        v88 = *v33;
        v89 = v37;
        v38 = v33[3];
        v90 = v33[2];
        v91 = v38;
        return static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v77, &v88);
      }
    }

    UInt32.init(_:)(&v39);
    return 0;
  }

  v8 = *(v2 + 9);
  v61 = *(v2 + 8);
  v62 = v8;
  v63 = *(v2 + 10);
  v64 = *(v2 + 176);
  v9 = *(v2 + 5);
  v57 = *(v2 + 4);
  v58 = v9;
  v10 = *(v2 + 7);
  v59 = *(v2 + 6);
  v60 = v10;
  v11 = *(v2 + 1);
  v53 = *v2;
  v54 = v11;
  v12 = *(v2 + 3);
  v55 = *(v2 + 2);
  v56 = v12;
  result = sub_10000FE74(&v53);
  if (result != 1)
  {
    return 0;
  }

  return result;
}

BOOL sub_10000FE20(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_1001024BC(*a1, *a2);
  v8 = v2 == v4 && v3 == v5;
  return (v6 & 1) != 0 && v8;
}

uint64_t sub_10000FE74(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000FE90(uint64_t a1)
{
  v5 = *v1;
  v6 = *(*v1 + 16);
  if (v6)
  {
    v3 = 0;
    v2 = 32;
    while (*a1 != *&v5[v2])
    {
      ++v3;
      v2 += 192;
      if (v6 == v3)
      {
        goto LABEL_5;
      }
    }

    sub_10001025C(a1, v21);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

LABEL_5:
  if (qword_1005CCDE8 != -1)
  {
    swift_once();
  }

  if (v6 >= qword_1005DDEB0)
  {
    v20 = *(v5 + 2);
    if (v20)
    {
      v2 = v1;
      v1 = sub_100039EE0(v20);
      sub_10001025C(a1, v21);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v1 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    v5 = sub_100139818(v5);
    if ((v1 & 0x8000000000000000) == 0)
    {
LABEL_16:
      if (v1 < *(v5 + 2))
      {
        result = sub_100010294(a1, &v5[192 * v1 + 32]);
        *v2 = v5;
        return result;
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    result = sub_100139818(v5);
    v5 = result;
LABEL_19:
    if (v3 >= *(v5 + 2))
    {
      __break(1u);
    }

    else
    {
      result = sub_100010294(a1, &v5[v2]);
      *v1 = v5;
    }

    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1000854E4(0, *(v5 + 2) + 1, 1, v5);
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1000854E4((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[192 * v8];
  v10 = *a1;
  v11 = *(a1 + 16);
  v12 = *(a1 + 48);
  *(v9 + 4) = *(a1 + 32);
  *(v9 + 5) = v12;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 112);
  *(v9 + 8) = *(a1 + 96);
  *(v9 + 9) = v15;
  *(v9 + 6) = v13;
  *(v9 + 7) = v14;
  v16 = *(a1 + 128);
  v17 = *(a1 + 144);
  v18 = *(a1 + 160);
  *(v9 + 201) = *(a1 + 169);
  *(v9 + 11) = v17;
  *(v9 + 12) = v18;
  *(v9 + 10) = v16;
  *v1 = v5;
  return sub_10001025C(a1, v21);
}

uint64_t sub_1000100C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000100DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000100F4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10001010C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001013C(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100010150(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10001018C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 185))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 184);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1000101D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 184) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 184) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1000102DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Command();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ClientCommand(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010764(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v15 = *&v7[*(sub_10000C9C0(&qword_1005CD0A0, &unk_1004E9360) + 48) + 8];
    }

    sub_10000F8F8(v7, v12);
    sub_10000F8F8(v12, a1);
    v14 = 0;
  }

  else
  {
    if ((EnumCaseMultiPayload - 2) < 2)
    {
      sub_1000107C8(v7);
    }

    v14 = 1;
  }

  return (*(v9 + 56))(a1, v14, 1, v8);
}

uint64_t MailboxSyncStatus.latestSyncedChange.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t EngineAccountMailboxLoggerID.mailbox.setter(uint64_t a1, int a2)
{
  v5 = *(v2 + 8);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t type metadata accessor for Command()
{
  result = qword_1005CD060;
  if (!qword_1005CD060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  result = qword_1005DC1A8;
  if (!qword_1005DC1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000105C8()
{
  type metadata accessor for ClientCommand(319);
  if (v0 <= 0x3F)
  {
    sub_100010650();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100010650()
{
  if (!qword_1005CD070)
  {
    type metadata accessor for ClientCommand(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005CD070);
    }
  }
}

__n128 sub_1000106B8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}