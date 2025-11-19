void sub_2438FED40(_Unwind_Exception *a1)
{
  sub_2438DF168((v1 + 11));
  *v1 = v2;
  sub_2438DF490(v1 + 3);
  _Unwind_Resume(a1);
}

void *sub_2438FED6C(void *a1)
{
  *a1 = &unk_2856A2500;
  v2 = (a1 + 11);
  sub_2438DF670((a1 + 16));
  sub_2438DF168(v2);
  *a1 = &unk_2856A2230;
  sub_2438DF490(a1 + 3);
  return a1;
}

void sub_2438FEDE8(void *a1)
{
  v1 = sub_2438FED6C(a1);

  operator delete(v1);
}

uint64_t sub_2438FEE10(uint64_t a1)
{
  sub_2438A9A08(&v7);
  v2 = sub_2438AA2A8(&v7, "Decimal128 vector  with ", 24);
  v3 = MEMORY[0x245D431D0](v2, *(a1 + 16));
  v4 = sub_2438AA2A8(v3, " of ", 4);
  v5 = MEMORY[0x245D431D0](v4, *(a1 + 8));
  sub_2438AA2A8(v5, ">", 1);
  std::stringbuf::str();
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v11);
}

void sub_2438FEF98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438A9B74(va);
  _Unwind_Resume(a1);
}

void sub_2438FEFAC(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    *(a1 + 8) = a2;
    sub_2438DECAC(a1 + 24, a2);
    sub_2438DF09C(a1 + 88, a2);

    sub_2438DEE58(a1 + 128, a2);
  }
}

__n128 sub_2438FF030(__n128 *a1, __n128 *a2, unsigned __int32 a3)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u32[0] = a3;
  return result;
}

uint64_t sub_2438FF040(uint64_t a1, std::string *__str)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v5 = __str->__r_.__value_.__r.__words[0];
  size = __str->__r_.__value_.__l.__size_;
  if (v4 >= 0)
  {
    v7 = __str;
  }

  else
  {
    v7 = __str->__r_.__value_.__r.__words[0];
  }

  if (v4 >= 0)
  {
    v8 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __str->__r_.__value_.__l.__size_;
  }

  if (v8 >= 1)
  {
    v9 = v7 + v8;
    v10 = v7;
    do
    {
      v11 = memchr(v10, 46, v8);
      if (!v11)
      {
        break;
      }

      if (*v11 == 46)
      {
        if (v11 == v9)
        {
          break;
        }

        v12 = v11 - v7;
        if (v12 == -1)
        {
          break;
        }

        if ((v4 & 0x80000000) != 0)
        {
          sub_2438BF99C(&__dst, v5, size);
          if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            LODWORD(v4) = HIBYTE(__str->__r_.__value_.__r.__words[2]);
          }

          else
          {
            v4 = __str->__r_.__value_.__l.__size_;
          }
        }

        else
        {
          __dst = *__str;
        }

        *(a1 + 16) = v4 + ~v12;
        v14 = std::string::replace(&__dst, v12, 1uLL, "");
        sub_2438DCE38(&v15, v14);
        *a1 = v15;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        return a1;
      }

      v10 = (v11 + 1);
      v8 = v9 - v10;
    }

    while (v9 - v10 >= 1);
  }

  sub_2438DCE38(&__dst, __str);
  *a1 = *&__dst.__r_.__value_.__l.__data_;
  *(a1 + 16) = 0;
  return a1;
}

void sub_2438FF194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438FF1B4(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2438FF1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2856A2230;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  sub_2438DECF0(a1 + 24, a3);
  *(a1 + 64) = 0;
  *(a1 + 72) = a3;
  memset(*(a1 + 40), 1, *(a1 + 8));
  *a1 = &unk_2856A2548;
  sub_2438DF2FC(a1 + 80, a3, a2);
  sub_2438DF2FC(a1 + 120, a3, a2);
  return a1;
}

void sub_2438FF284(_Unwind_Exception *a1)
{
  sub_2438DF670((v1 + 10));
  *v1 = v2;
  sub_2438DF490(v1 + 3);
  _Unwind_Resume(a1);
}

void *sub_2438FF2B0(void *a1)
{
  *a1 = &unk_2856A2548;
  v2 = (a1 + 10);
  sub_2438DF670((a1 + 15));
  sub_2438DF670(v2);
  *a1 = &unk_2856A2230;
  sub_2438DF490(a1 + 3);
  return a1;
}

void sub_2438FF32C(void *a1)
{
  v1 = sub_2438FF2B0(a1);

  operator delete(v1);
}

uint64_t sub_2438FF354(uint64_t a1)
{
  sub_2438A9A08(&v7);
  v2 = sub_2438AA2A8(&v7, "Timestamp vector <", 18);
  v3 = MEMORY[0x245D431D0](v2, *(a1 + 16));
  v4 = sub_2438AA2A8(v3, " of ", 4);
  v5 = MEMORY[0x245D431D0](v4, *(a1 + 8));
  sub_2438AA2A8(v5, ">", 1);
  std::stringbuf::str();
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v11);
}

void sub_2438FF4DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438A9B74(va);
  _Unwind_Resume(a1);
}

void sub_2438FF4F0(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    *(a1 + 8) = a2;
    sub_2438DECAC(a1 + 24, a2);
    sub_2438DEE58(a1 + 80, a2);

    sub_2438DEE58(a1 + 120, a2);
  }
}

void *sub_2438FF574(void *a1)
{
  *a1 = &unk_2856A26A8;
  v2 = operator new(0x80uLL);
  sub_243901344(v2);
  a1[1] = v2;
  return a1;
}

void *sub_2438FF5E0(void *a1, uint64_t a2)
{
  *a1 = &unk_2856A26A8;
  v4 = operator new(0x80uLL);
  v5 = *(a2 + 8);
  v6 = *(v5 + 16);
  *v4 = *v5;
  *(v4 + 1) = v6;
  v8 = *(v5 + 48);
  v7 = *(v5 + 64);
  v9 = *(v5 + 32);
  *(v4 + 80) = *(v5 + 80);
  *(v4 + 3) = v8;
  *(v4 + 4) = v7;
  *(v4 + 2) = v9;
  sub_2439013FC(v4 + 11, v5 + 88);
  v10 = *(v5 + 112);
  *(v4 + 30) = *(v5 + 120);
  *(v4 + 14) = v10;
  a1[1] = v4;
  return a1;
}

void sub_2438FF690(void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_2438D7A80((v2 + 11), v2[12]);

    operator delete(v2);
  }
}

uint64_t sub_2438FF6E4(uint64_t a1)
{
  *a1 = &unk_2856A26A8;
  sub_2438FF690((a1 + 8), 0);
  return a1;
}

void sub_2438FF72C(void ***a1)
{
  *a1 = &unk_2856A26A8;
  sub_2438FF690(a1 + 1, 0);

  operator delete(a1);
}

BOOL sub_2438FF784(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_2438D90F0();
  return *(v1 + 64) != *v2 || *(v1 + 68) != *(v2 + 1);
}

uint64_t sub_2438FF80C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(v2 + 24) = a2;
  *(v2 + 80) = a2 != 0;
  return result;
}

uint64_t sub_2438FF848(uint64_t result, _DWORD *a2)
{
  if (*a2 || (a2[1] - 11) > 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported file version specified.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  *(*(result + 8) + 64) = *a2;
  return result;
}

BOOL sub_2438FF938(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v5 = *(v2 + 96);
  v3 = v2 + 96;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a2)
  {
LABEL_9:
    v6 = v3;
  }

  return v6 != v3;
}

uint64_t sub_2438FF99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2856A26C8;
  *(a1 + 8) = 0u;
  v6 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = a3;
  v7 = a1 + 48;
  sub_2438FF5E0((a1 + 48), a4);
  *(a1 + 64) = a2;
  sub_2438BB734(a1 + 104);
  sub_2438BCCC8(a1 + 272);
  sub_2438B70A8(a1 + 368);
  sub_2438B86D8(a1 + 464);
  sub_2438CBBDC(v7, *(a1 + 40), &v20);
  v8 = v20;
  v20 = 0;
  v9 = *(a1 + 32);
  *(a1 + 32) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = v20;
    v20 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  sub_2438CD1C4(*(a1 + 64), *(a1 + 32), v7, &v20);
  v11 = v20;
  v20 = 0;
  v12 = *v6;
  *v6 = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
    v13 = v20;
    v20 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  sub_2438DB3C8(*(*(a1 + 56) + 32), *(a1 + 40), *(*(a1 + 56) + 36), *(*(a1 + 56) + 16), *(*(a1 + 56) + 8), *(*(a1 + 56) + 40), &v20);
  v14 = v20;
  v20 = 0;
  v15 = *(a1 + 16);
  *(a1 + 16) = v14;
  if (v15)
  {
    (*(*v15 + 8))(v15);
    v16 = v20;
    v20 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  v17 = operator new(0x20uLL);
  sub_2438AA9F0(v17, *(*(a1 + 56) + 40), *(a1 + 40), 0x400uLL, *(*(a1 + 56) + 8));
  v18 = *(a1 + 24);
  *(a1 + 24) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  sub_2438FFD74(a1);
  return a1;
}

void sub_2438FFC18(_Unwind_Exception *a1)
{
  v4 = v2;
  operator delete(v4);
  sub_2438B872C((v1 + 464));
  sub_2438B721C((v1 + 368));
  sub_2438BCEBC(v1 + 272);
  sub_2438BBAC0(v1 + 104);
  *(v1 + 48) = &unk_2856A26A8;
  sub_2438FF690((v1 + 56), 0);
  v6 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *v3;
  *v3 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Unwind_Resume(a1);
}

void sub_2438FFD74(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27ED97098, memory_order_acquire) & 1) == 0)
  {
    sub_243989AE4();
  }

  (*(**(a1 + 40) + 32))(*(a1 + 40), qword_27ED96470, qword_27ED97090);
  v2 = *(a1 + 96) + qword_27ED97090;
  *(a1 + 96) = v2;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = v2;
  v3 = *(a1 + 64);
  *(a1 + 256) = *(*(a1 + 56) + 24);
  *(a1 + 120) |= 0x3Eu;
  *(a1 + 260) = 1;
  v15 = 0;
  sub_243900E5C(a1, v3, a1 + 104, &v15);
  v4 = *(a1 + 288);
  v5 = *(a1 + 56);
  *(a1 + 344) = *(v5 + 32);
  v6 = *(v5 + 8);
  *(a1 + 288) = v4 | 0xE;
  *(a1 + 328) = 0;
  *(a1 + 336) = v6;
  v7 = *(v5 + 64);
  v8 = *(a1 + 296);
  if (v8 == *(a1 + 300))
  {
    sub_2438C01D4((a1 + 296), v8 + 1);
    v8 = *(a1 + 296);
    v5 = *(a1 + 56);
  }

  v9 = *(a1 + 304) + 4 * v8;
  *(a1 + 296) = v8 + 1;
  *(v9 + 8) = v7;
  v10 = *(v5 + 68);
  v11 = *(a1 + 296);
  if (v11 == *(a1 + 300))
  {
    sub_2438C01D4((a1 + 296), v11 + 1);
    v11 = *(a1 + 296);
  }

  v12 = *(a1 + 304) + 4 * v11;
  *(a1 + 296) = v11 + 1;
  *(v12 + 8) = v10;
  v13 = *(a1 + 288);
  *(a1 + 348) = 6;
  *(a1 + 288) = v13 | 0x11;
  sub_2438BFB70(&__p, "ORC");
  sub_2438C1BA0((a1 + 320), &qword_27ED97020, &__p);
  if (v17 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  v14 = *(a1 + 384) | 0x1F;
  *(a1 + 416) = *(a1 + 96);
  *(a1 + 424) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0;
  *(a1 + 384) = v14;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
}

void sub_2438FFF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2438FFF98(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (*(v4 + 80) == 1)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = *(v4 + 24);
      v8 = *(a1 + 88);
      do
      {
        v9 = v5 - v6;
        v10 = v7 - v8;
        if (v10 >= v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v10;
        }

        (*(**(a1 + 8) + 16))(*(a1 + 8), a2, v6, v11, 0);
        v8 = *(a1 + 88) + v11;
        *(a1 + 88) = v8;
        *(a1 + 72) += v11;
        if (v8 >= v7)
        {
          (*(**(a1 + 8) + 80))(*(a1 + 8));
          v8 = 0;
          *(a1 + 88) = 0;
        }

        v6 += v11;
        v5 = *(a2 + 16);
      }

      while (v6 < v5);
    }
  }

  else
  {
    *(a1 + 72) += *(a2 + 16);
    (*(**(a1 + 8) + 16))(*(a1 + 8), a2, 0);
  }

  if ((*(**(a1 + 8) + 32))(*(a1 + 8)) >= **(a1 + 56))
  {

    sub_243900140(a1);
  }
}

void sub_243900140(uint64_t a1)
{
  if (*(*(a1 + 56) + 80) == 1 && *(a1 + 88))
  {
    (*(**(a1 + 8) + 80))(*(a1 + 8));
    *(a1 + 88) = 0;
  }

  else
  {
    (*(**(a1 + 8) + 64))(*(a1 + 8));
  }

  (*(**(a1 + 8) + 120))(*(a1 + 8));
  v67 = 0;
  v68 = 0;
  v69 = 0;
  if (*(*(a1 + 56) + 80) == 1)
  {
    (*(**(a1 + 8) + 96))(*(a1 + 8), &v67);
  }

  (*(**(a1 + 8) + 24))(*(a1 + 8), &v67);
  sub_2438B4DF4(v56);
  v2 = v67;
  if (v68 != v67)
  {
    v3 = 0;
    v4 = 1;
    while (1)
    {
      v5 = v61;
      if (!v61)
      {
        break;
      }

      v6 = *v61;
      if (v59 >= *v61)
      {
        if (v6 == v60)
        {
LABEL_14:
          sub_243967234(&v58, v6 + 1);
          v5 = v61;
          v6 = *v61;
        }

        *v5 = v6 + 1;
        v8 = sub_2438BEB90(v58);
        v9 = &v61[2 * v59++];
        *(v9 + 1) = v8;
        goto LABEL_16;
      }

      v7 = &v61[2 * v59++];
      v8 = *(v7 + 1);
LABEL_16:
      sub_2438B3BC4(v8, v2 + 40 * v3);
      v3 = v4;
      v2 = v67;
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((v68 - v67) >> 3) > v4++;
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    v6 = v60;
    goto LABEL_14;
  }

LABEL_17:
  v53 = 0;
  v54 = 0;
  v55 = 0;
  (*(**(a1 + 8) + 40))(*(a1 + 8), &v53);
  v11 = v53;
  if (v54 != v53)
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = v65;
      if (!v65)
      {
        break;
      }

      v15 = *v65;
      if (v63 >= *v65)
      {
        if (v15 == v64)
        {
LABEL_24:
          sub_243967234(&v62, v15 + 1);
          v14 = v65;
          v15 = *v65;
        }

        *v14 = v15 + 1;
        v17 = sub_2438BEC24(v62);
        v18 = &v65[2 * v63++];
        *(v18 + 1) = v17;
        goto LABEL_26;
      }

      v16 = &v65[2 * v63++];
      v17 = *(v16 + 1);
LABEL_26:
      sub_2438B440C(v17, v11 + 40 * v12);
      v12 = v13;
      v11 = v53;
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((v54 - v53) >> 3) > v13++;
      if (!v10)
      {
        goto LABEL_27;
      }
    }

    v15 = v64;
    goto LABEL_24;
  }

LABEL_27:
  v57 |= 1u;
  sub_2438BFB70(&v70, "GMT");
  v19 = sub_2438C1BA0(&v66, &qword_27ED97020, &v70);
  if (SHIBYTE(v71) < 0)
  {
    operator delete(v70.n128_u64[0]);
  }

  v20 = *(a1 + 504);
  if (!v20)
  {
    v22 = *(a1 + 500);
LABEL_34:
    sub_243967234(a1 + 488, v22 + 1);
    v20 = *(a1 + 504);
    v22 = *v20;
    goto LABEL_35;
  }

  v21 = *(a1 + 496);
  v22 = *v20;
  if (v21 < *v20)
  {
    *(a1 + 496) = v21 + 1;
    v23 = *&v20[2 * v21 + 2];
    goto LABEL_36;
  }

  if (v22 == *(a1 + 500))
  {
    goto LABEL_34;
  }

LABEL_35:
  *v20 = v22 + 1;
  v23 = sub_2438BF030(*(a1 + 488));
  v24 = *(a1 + 496);
  v25 = *(a1 + 504) + 8 * v24;
  *(a1 + 496) = v24 + 1;
  *(v25 + 8) = v23;
LABEL_36:
  v70 = 0uLL;
  v71 = 0;
  (*(**(a1 + 8) + 48))(*(a1 + 8), &v70, v19);
  v26 = v70.n128_u64[0];
  if (v70.n128_u64[1] != v70.n128_u64[0])
  {
    v27 = 0;
    v28 = 1;
    while (1)
    {
      v29 = v23[5];
      if (!v29)
      {
        break;
      }

      v30 = *(v23 + 8);
      v31 = *v29;
      if (v30 >= *v29)
      {
        if (v31 == *(v23 + 9))
        {
LABEL_43:
          sub_243967234((v23 + 3), v31 + 1);
          v29 = v23[5];
          v31 = *v29;
        }

        *v29 = v31 + 1;
        v32 = sub_2438BE8AC(v23[3]);
        v33 = *(v23 + 8);
        v34 = v23[5] + 8 * v33;
        *(v23 + 8) = v33 + 1;
        *(v34 + 8) = v32;
        goto LABEL_45;
      }

      *(v23 + 8) = v30 + 1;
      v32 = *&v29[2 * v30 + 2];
LABEL_45:
      sub_2438B1500(v32, v26 + 120 * v27);
      v27 = v28;
      v26 = v70.n128_u64[0];
      v42 = 0xEEEEEEEEEEEEEEEFLL * ((v70.n128_u64[1] - v70.n128_u64[0]) >> 3) == v28++;
      if (v42)
      {
        goto LABEL_47;
      }
    }

    v31 = *(v23 + 9);
    goto LABEL_43;
  }

LABEL_47:
  (*(**(a1 + 8) + 72))(*(a1 + 8));
  if ((sub_243966D94(v56, *(a1 + 16)) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Failed to write stripe footer.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v35 = (*(**(a1 + 16) + 72))(*(a1 + 16));
  v36 = v35;
  if (v68 == v67)
  {
    v38 = 0;
    v37 = 0;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v39 = (v67 + 32);
    v40 = 1;
    do
    {
      v41 = *(v39 - 2);
      v42 = v41 == 8 || v41 == 6;
      if (v42)
      {
        v37 += *v39;
      }

      else
      {
        v38 += *v39;
      }

      v39 += 5;
      v10 = 0xCCCCCCCCCCCCCCCDLL * ((v68 - v67) >> 3) > v40++;
    }

    while (v10);
  }

  v43 = *(a1 + 384);
  *(a1 + 424) = v37;
  *(a1 + 432) = v38;
  v44 = *(a1 + 72);
  *(a1 + 384) = v43 | 0x1E;
  *(a1 + 440) = v35;
  *(a1 + 448) = v44;
  v45 = *(a1 + 144);
  if (!v45)
  {
    v47 = *(a1 + 140);
    goto LABEL_64;
  }

  v46 = *(a1 + 136);
  v47 = *v45;
  if (v46 >= *v45)
  {
    if (v47 != *(a1 + 140))
    {
LABEL_65:
      *v45 = v47 + 1;
      v48 = sub_2438BEF08(*(a1 + 128));
      v49 = *(a1 + 136);
      v50 = *(a1 + 144) + 8 * v49;
      *(a1 + 136) = v49 + 1;
      *(v50 + 8) = v48;
      goto LABEL_66;
    }

LABEL_64:
    sub_243967234(a1 + 128, v47 + 1);
    v45 = *(a1 + 144);
    v47 = *v45;
    goto LABEL_65;
  }

  *(a1 + 136) = v46 + 1;
  v48 = *&v45[2 * v46 + 2];
LABEL_66:
  sub_2438B7B08(v48, a1 + 368);
  *(a1 + 96) += v38 + v36 + v37;
  *(a1 + 80) += *(a1 + 72);
  (*(**(a1 + 8) + 112))(*(a1 + 8));
  v51 = *(a1 + 384) | 0x1F;
  *(a1 + 416) = *(a1 + 96);
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 384) = v51;
  *(a1 + 448) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  v72 = &v70;
  sub_2438E8468(&v72);
  v70.n128_u64[0] = &v53;
  sub_243901858(&v70);
  sub_2438B4ED0(v56);
  v56[0] = &v67;
  sub_243901858(v56);
}

void sub_24390085C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __cxa_free_exception(v13);
  *(v14 - 72) = v14 - 96;
  sub_2438E8468((v14 - 72));
  *(v14 - 72) = &a10;
  sub_243901858((v14 - 72));
  sub_2438B4ED0(&a13);
  a13 = v14 - 120;
  sub_243901858(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_2439008F8(uint64_t a1)
{
  if (*(a1 + 72))
  {
    sub_243900140(a1);
  }

  sub_243900974(a1);
  sub_243900A28(a1);
  sub_243900C3C(a1);
  v2 = *(**(a1 + 40) + 48);

  return v2();
}

uint64_t sub_243900974(uint64_t a1)
{
  if ((sub_243966D94(a1 + 464, *(a1 + 16)) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Failed to write metadata.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  result = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a1 + 288) |= 0x20u;
  *(a1 + 352) = result;
  return result;
}

void sub_243900A28(uint64_t a1)
{
  v2 = *(a1 + 96) - *(a1 + 232);
  v3 = *(a1 + 80);
  *(a1 + 120) |= 0xCu;
  *(a1 + 240) = v2;
  *(a1 + 248) = v3;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  (*(**(a1 + 8) + 56))(*(a1 + 8), &v16);
  v4 = v16;
  if (v17 != v16)
  {
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = *(a1 + 216);
      if (!v7)
      {
        break;
      }

      v8 = *(a1 + 208);
      v9 = *v7;
      if (v8 >= *v7)
      {
        if (v9 == *(a1 + 212))
        {
LABEL_8:
          sub_243967234(a1 + 200, v9 + 1);
          v7 = *(a1 + 216);
          v9 = *v7;
        }

        *v7 = v9 + 1;
        v10 = sub_2438BE8AC(*(a1 + 200));
        v11 = *(a1 + 208);
        v12 = *(a1 + 216) + 8 * v11;
        *(a1 + 208) = v11 + 1;
        *(v12 + 8) = v10;
        goto LABEL_10;
      }

      *(a1 + 208) = v8 + 1;
      v10 = *&v7[2 * v8 + 2];
LABEL_10:
      sub_2438B1500(v10, v4 + 120 * v5);
      v5 = v6;
      v4 = v16;
      if (0xEEEEEEEEEEEEEEEFLL * ((v17 - v16) >> 3) == v6++)
      {
        goto LABEL_12;
      }
    }

    v9 = *(a1 + 212);
    goto LABEL_8;
  }

LABEL_12:
  if ((sub_243966D94(a1 + 104, *(a1 + 16)) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Failed to write file footer.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v14 = (*(**(a1 + 16) + 72))(*(a1 + 16));
  *(a1 + 288) |= 2u;
  *(a1 + 328) = v14;
  v19 = &v16;
  sub_2438E8468(&v19);
}

void sub_243900C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  __cxa_free_exception(v12);
  a12 = &a9;
  sub_2438E8468(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_243900C3C(uint64_t a1)
{
  if ((sub_243966D94(a1 + 272, *(a1 + 24)) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Failed to write post script.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v4 = (*(**(a1 + 24) + 72))(*(a1 + 24));
  return (*(**(a1 + 40) + 32))(*(a1 + 40), &v4, 1);
}

std::string *sub_243900D1C(uint64_t a1, std::string *__str, const std::string *a3)
{
  v6 = *(a1 + 192);
  if (!v6)
  {
    v8 = *(a1 + 188);
LABEL_6:
    sub_243967234(a1 + 176, v8 + 1);
    v6 = *(a1 + 192);
    v8 = *v6;
    goto LABEL_7;
  }

  v7 = *(a1 + 184);
  v8 = *v6;
  if (v7 < *v6)
  {
    *(a1 + 184) = v7 + 1;
    v9 = *&v6[2 * v7 + 2];
    goto LABEL_8;
  }

  if (v8 == *(a1 + 188))
  {
    goto LABEL_6;
  }

LABEL_7:
  *v6 = v8 + 1;
  v9 = sub_2438BEF9C(*(a1 + 176));
  v10 = *(a1 + 184);
  v11 = *(a1 + 192) + 8 * v10;
  *(a1 + 184) = v10 + 1;
  *(v11 + 8) = v9;
LABEL_8:
  v12 = v9[3];
  *(v9 + 4) |= 1u;
  if (v12 == &qword_27ED97020)
  {
    sub_2438BF924(v9 + 3, __str);
  }

  else
  {
    std::string::operator=(v12, __str);
  }

  v15 = v9[4];
  v14 = v9 + 4;
  v13 = v15;
  *(v14 - 4) |= 2u;
  if (v15 == &qword_27ED97020)
  {

    return sub_2438BF924(v14, a3);
  }

  else
  {

    return std::string::operator=(v13, a3);
  }
}

uint64_t sub_243900E5C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  sub_2438B6190(v36);
  v8 = (*(*a2 + 64))(a2);
  v37 |= 2u;
  v39 = v8;
  v9 = (*(*a2 + 72))(a2);
  v37 |= 4u;
  v40 = v9;
  v10 = (*(*a2 + 80))(a2);
  v37 |= 8u;
  v41 = v10;
  v11 = (*(*a2 + 32))(a2);
  if (v11 >= 0x12)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unknown type.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v37 |= 1u;
  v38 = v11;
  v12 = *a4;
  v13 = *(a3 + 64);
  if (!v13)
  {
    v15 = *(a3 + 60);
    goto LABEL_7;
  }

  v14 = *(a3 + 56);
  v15 = *v13;
  if (v14 >= *v13)
  {
    if (v15 != *(a3 + 60))
    {
LABEL_8:
      *v13 = v15 + 1;
      v16 = sub_2438BEE74(*(a3 + 48));
      v17 = *(a3 + 56);
      v18 = *(a3 + 64) + 8 * v17;
      *(a3 + 56) = v17 + 1;
      *(v18 + 8) = v16;
      goto LABEL_9;
    }

LABEL_7:
    sub_243967234(a3 + 48, v15 + 1);
    v13 = *(a3 + 64);
    v15 = *v13;
    goto LABEL_8;
  }

  *(a3 + 56) = v14 + 1;
  v16 = *&v13[2 * v14 + 2];
LABEL_9:
  sub_2438B6F98(v16, v36);
  for (i = 0; i < (*(*a2 + 40))(a2); ++i)
  {
    if ((*(*a2 + 32))(a2) != 12)
    {
      goto LABEL_25;
    }

    v20 = *(*(a3 + 64) + 8 * v12 + 8);
    v21 = (*(*a2 + 56))(a2, i);
    v22 = *(v20 + 64);
    if (!v22)
    {
      v24 = *(v20 + 60);
      goto LABEL_17;
    }

    v23 = *(v20 + 56);
    v24 = *v22;
    if (v23 >= *v22)
    {
      if (v24 == *(v20 + 60))
      {
LABEL_17:
        sub_243967234(v20 + 48, v24 + 1);
        v22 = *(v20 + 64);
        v24 = *v22;
      }

      *v22 = v24 + 1;
      v26 = *(v20 + 48);
      if (v26)
      {
        if (*(v26 + 112))
        {
          sub_243961E70(*(v20 + 48), &unk_28569EFD0, 24);
        }

        v25 = sub_243961B18(v26, 0x18uLL, sub_2438BFB5C);
      }

      else
      {
        v25 = operator new(0x18uLL);
      }

      v25->__r_.__value_.__r.__words[0] = 0;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v27 = *(v20 + 56);
      v28 = *(v20 + 64) + 8 * v27;
      *(v20 + 56) = v27 + 1;
      *(v28 + 8) = v25;
      goto LABEL_24;
    }

    *(v20 + 56) = v23 + 1;
    v25 = *&v22[2 * v23 + 2];
LABEL_24:
    std::string::operator=(v25, v21);
LABEL_25:
    v29 = *(*(a3 + 64) + 8 * v12 + 8);
    v30 = *a4 + 1;
    *a4 = v30;
    v31 = *(v29 + 24);
    if (v31 == *(v29 + 28))
    {
      sub_2438C01D4((v29 + 24), v31 + 1);
      v31 = *(v29 + 24);
    }

    v32 = *(v29 + 32) + 4 * v31;
    *(v29 + 24) = v31 + 1;
    *(v32 + 8) = v30;
    v33 = (*(*a2 + 48))(a2, i);
    sub_243900E5C(a1, v33, a3, a4);
  }

  return sub_2438B6210(v36);
}

void sub_24390127C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_2438B6210(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2439012A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x200uLL);
  result = sub_2438FF99C(v8, a1, a2, a3);
  *a4 = v8;
  return result;
}

void sub_24390131C(uint64_t a1)
{
  v1 = sub_24390170C(a1);

  operator delete(v1);
}

uint64_t sub_243901344(uint64_t a1)
{
  *(a1 + 64) = *sub_2438D9128();
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *a1 = xmmword_24398E2F0;
  *(a1 + 16) = xmmword_24398E300;
  *(a1 + 32) = 1;
  *(a1 + 40) = sub_2438DF7DC();
  *(a1 + 48) = 0;
  *(a1 + 56) = MEMORY[0x277D82670];
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 112) = 0x3FA999999999999ALL;
  *(a1 + 120) = 1;
  return a1;
}

uint64_t *sub_2439013FC(uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_243901454(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_243901454(uint64_t *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_2439014DC(v5, v5 + 1, v4 + 4, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *sub_2439014DC(uint64_t **a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = sub_243901564(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x28uLL);
    v7[4] = *a4;
    sub_2438D8944(a1, v11, v8, v7);
  }

  return v7;
}

void *sub_243901564(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
    if (v10[4] < *a5)
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
          v18 = v16[4];
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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

uint64_t sub_24390170C(uint64_t a1)
{
  *a1 = &unk_2856A26C8;
  sub_2438B872C((a1 + 464));
  sub_2438B721C((a1 + 368));
  sub_2438BCEBC(a1 + 272);
  sub_2438BBAC0(a1 + 104);
  *(a1 + 48) = &unk_2856A26A8;
  sub_2438FF690((a1 + 56), 0);
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_243901858(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 40;
      v7 = v4 - 40;
      v8 = v4 - 40;
      do
      {
        v9 = *v8;
        v8 -= 40;
        (*v9)(v7);
        v6 -= 40;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unint64_t sub_243901918(void *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, size_t a5)
{
  v41[1] = *MEMORY[0x277D85DE8];
  if (a5 > 7)
  {
    v12 = (*a2 + 1);
    bzero(a1, 2 * v12);
    v13 = *a4 & 0xF;
    if (v13 <= 0xA)
    {
      v14 = 0;
      v15 = *a4 >> 4;
      *a3 = v13 + 5;
      v16 = 32 << v13;
      v17 = (32 << v13) | 1;
      v18 = v13 + 6;
      v19 = a4 + a5 - 7;
      v20 = a4 + a5 - 4;
      v21 = 4;
      v22 = a4;
      while (1)
      {
        v28 = 2 * v16 - 1;
        v29 = v28 - v17;
        v30 = v15 & (v16 - 1);
        v31 = v15 & v28;
        if (v31 >= v16)
        {
          v32 = v28 - v17;
        }

        else
        {
          v32 = 0;
        }

        v33 = v31 - v32;
        v34 = v18 - 1;
        if (v30 < v29)
        {
          v33 = v30;
        }

        else
        {
          v34 = v18;
        }

        v26 = v34 + v21;
        v35 = v33 - 1;
        if (v33 <= 0)
        {
          v36 = v33 - 1;
        }

        else
        {
          v36 = 1 - v33;
        }

        v17 += v36;
        *(a1 + v14++) = v35;
        v37 = v35 != 0;
        if (v17 < v16)
        {
          if (v17 < 2)
          {
            break;
          }

          v38 = __clz(v17);
          v18 = 32 - v38;
          v16 = 1 << (v38 ^ 0x1F);
        }

        if (v14 >= v12)
        {
          break;
        }

        v39 = v26 >> 3;
        if (v22 <= v19 || v22 + v39 <= v20)
        {
          v22 = (v22 + v39);
          v21 = v26 & 7;
        }

        else
        {
          v21 = (v26 + 8 * (v22 - v20)) & 0x1F;
          v22 = (a4 + a5 - 4);
        }

        v15 = *v22 >> v21;
        if (!v37)
        {
          v23 = __clz(__rbit32(~v15 | 0x80000000));
          if (v23 >= 0x18)
          {
            do
            {
              if (v22 <= v19)
              {
                v22 = (v22 + 3);
              }

              else
              {
                v21 = (v21 + 8 * (v22 - v19)) & 0x1F;
                v22 = (a4 + a5 - 4);
              }

              v15 = *v22 >> v21;
              v23 = __clz(__rbit32(~v15 | 0x80000000));
              v14 += 36;
            }

            while (v23 > 0x17);
          }

          v24 = 3 * (v23 >> 1);
          v25 = v23 & 0x1E;
          v14 += v24 + ((v15 >> v25) & 3);
          v26 = v21 + v25 + 2;
          if (v14 >= v12)
          {
            break;
          }

          v27 = v26 >> 3;
          if (v22 <= v19 || v22 + v27 <= v20)
          {
            v22 = (v22 + v27);
            v21 = v26 & 7;
          }

          else
          {
            v21 = (v26 + 8 * (v22 - v20)) & 0x1F;
            v22 = (a4 + a5 - 4);
          }

          v15 = *v22 >> v21;
        }
      }

      if (v17 == 1)
      {
        if (v14 > v12)
        {
          result = -48;
          goto LABEL_46;
        }

        if (v26 <= 32)
        {
          *a2 = v14 - 1;
          result = v22 + ((v26 + 7) >> 3) - a4;
          goto LABEL_46;
        }
      }

      result = -20;
      goto LABEL_46;
    }

    result = -44;
  }

  else
  {
    v41[0] = 0;
    memcpy(v41, a4, a5);
    result = sub_243901918(a1, a2, a3, v41, 8);
    if (result > a5 && result < 0xFFFFFFFFFFFFFF89)
    {
      result = -20;
    }
  }

LABEL_46:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_243901C14(_BYTE *a1, unint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, char *a6, unint64_t a7)
{
  v10 = *MEMORY[0x277D85DE8];
  result = sub_243901C74(a1, a2, a3, a4, a5, a6, a7, v9, 0x36CuLL);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_243901C74(_BYTE *a1, unint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, char *a6, unint64_t a7, unsigned __int16 *a8, unint64_t a9)
{
  if (!a7)
  {
    return -72;
  }

  v13 = *a6;
  if (*a6 < 0)
  {
    v15 = (v13 - 126) >> 1;
    if (v15 < a7)
    {
      v14 = v13 - 127;
      if (v13 - 127 < a2)
      {
        if (v13 != 127)
        {
          v17 = 0;
          v18 = a6 + 1;
          do
          {
            v19 = &a1[v17];
            *v19 = *v18 >> 4;
            v20 = *v18++;
            v19[1] = v20 & 0xF;
            v17 += 2;
          }

          while (v17 < v14);
LABEL_12:
          *(a3 + 48) = 0;
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0u;
          *a3 = 0u;
          if (v14)
          {
            v21 = 0;
            v22 = 0;
            v23 = 1;
            while (1)
            {
              v24 = a1[v21];
              if (v24 > 0xC)
              {
                break;
              }

              ++*(a3 + 4 * v24);
              v22 += 1 << a1[v21] >> 1;
              v21 = v23;
              if (v14 <= v23++)
              {
                if (v22 - 4096 < 0xFFFFF001)
                {
                  return -20;
                }

                v26 = __clz(v22);
                *a5 = 32 - v26;
                v27 = (1 << -v26) - v22;
                v28 = __clz(v27);
                if (0x80000000 >> v28 != v27)
                {
                  return -20;
                }

                v29 = 32 - v28;
                a1[v14] = v29;
                ++*(a3 + 4 * v29);
                v30 = *(a3 + 4);
                v16 = -20;
                if (v30 >= 2 && (v30 & 1) == 0)
                {
                  *a4 = v14 + 1;
                  return v15 + 1;
                }

                return v16;
              }
            }
          }

          return -20;
        }

        *(a3 + 48) = 0;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
      }

      return -20;
    }
  }

  else if (v13 < a7)
  {
    v14 = sub_2439020B8(a1, a2 - 1, a6 + 1, *a6, 6u, a8, a9);
    v15 = v13;
    v16 = v14;
    if (v14 > 0xFFFFFFFFFFFFFF88)
    {
      return v16;
    }

    goto LABEL_12;
  }

  return -72;
}

uint64_t sub_243901E4C(_WORD *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  v6 = -46;
  if (a3 <= 0xFF)
  {
    v7 = a3 + 1;
    if ((1 << a4) + 2 * v7 + 8 <= a6)
    {
      if (a4 <= 0xC)
      {
        v8 = 0;
        v9 = a1 + 2;
        v10 = a5 + 2 * a3 + 2;
        v11 = (1 << a4);
        v12 = (v11 - 1);
        v13 = 1;
        v14 = v11 - 1;
        v15 = a3;
        do
        {
          v16 = *(a2 + 2 * v8);
          if (v16 == -1)
          {
            v18 = &v9[2 * v14--];
            *(v18 + 2) = v8;
            v17 = 1;
          }

          else
          {
            v17 = *(a2 + 2 * v8);
            if (((0x8000 << a4) >> 16) <= v16)
            {
              v13 = 0;
            }
          }

          *(a5 + 2 * v8++) = v17;
        }

        while (v7 != v8);
        *a1 = a4;
        a1[1] = v13;
        v19 = v11 >> 1;
        if (v14 == v12)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = v19 + (v11 >> 3) + 3;
          do
          {
            v24 = *(a2 + 2 * v20);
            *(v10 + v21) = v22;
            if (v24 >= 9)
            {
              v25 = 0;
              if (v24 <= 0x10)
              {
                v26 = 16;
              }

              else
              {
                v26 = v24;
              }

              v27 = (v26 - 9) >> 3;
              v28 = vdupq_n_s64(v27);
              v29 = (v10 + v21 + 16);
              do
              {
                v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v25), xmmword_24398C940)));
                if (v30.i8[0])
                {
                  *(v29 - 1) = v22;
                }

                if (v30.i8[4])
                {
                  *v29 = v22;
                }

                v25 += 2;
                v29 += 2;
              }

              while (((v27 + 2) & 0x3FFFFFFFFFFFFFFELL) != v25);
            }

            v21 += v24;
            ++v20;
            v22 += 0x101010101010101;
          }

          while (v20 != v7);
          v31 = 0;
          v32 = 0;
          v33 = (a5 + 2 * v15 + 3);
          do
          {
            LOBYTE(v9[2 * (v32 & v12) + 1]) = *(v33 - 1);
            v34 = *v33;
            v33 += 2;
            LOBYTE(v9[2 * ((v32 + v23) & v12) + 1]) = v34;
            v32 = (v32 + 2 * v23) & v12;
            v31 += 2;
          }

          while (v31 < v11);
        }

        else
        {
          v35 = 0;
          v36 = 0;
          do
          {
            v37 = *(a2 + 2 * v35);
            if (v37 >= 1)
            {
              for (i = 0; i != v37; ++i)
              {
                LOBYTE(v9[2 * v36 + 1]) = v35;
                do
                {
                  v36 = (v19 + (v11 >> 3) + 3 + v36) & v12;
                }

                while (v36 > v14);
              }
            }

            ++v35;
          }

          while (v35 != v7);
          if (v36)
          {
            return -1;
          }
        }

        v39 = a1 + 7;
        v40 = (1 << a4);
        do
        {
          v41 = *(v39 - 1);
          v42 = *(a5 + 2 * v41);
          *(a5 + 2 * v41) = v42 + 1;
          LOBYTE(v41) = a4 - 31 + __clz(v42);
          *v39 = v41;
          *(v39 - 3) = (v42 << v41) - v11;
          v39 += 4;
          --v40;
        }

        while (v40);
        return 0;
      }

      else
      {
        return -44;
      }
    }
  }

  return v6;
}

uint64_t sub_2439020B8(_BYTE *a1, uint64_t a2, _DWORD *a3, size_t a4, unsigned int a5, unsigned __int16 *a6, unint64_t a7)
{
  v124 = 255;
  if (a7 < 0x204)
  {
    return -1;
  }

  v125 = 0;
  v7 = sub_243901918(a6, &v124, &v125, a3, a4);
  if (v7 > 0xFFFFFFFFFFFFFF88)
  {
    return v7;
  }

  if (v125 > a5 || (((1 << v125) + 4 * (1 << v125) + 2 * (v124 + 1) + 19) & 0xFFFFFFFFFFFFFFFCLL) + 516 > a7)
  {
    return -44;
  }

  v16 = sub_243901E4C(a6 + 256, a6, v124, v125, &a6[2 * (1 << v125) + 260], a7 - (4 * (1 << v125) + 4) - 516);
  if (v16 > 0xFFFFFFFFFFFFFF88)
  {
    return v16;
  }

  v17 = a3 + v7;
  v7 = a4 - v7;
  v18 = &a1[a2];
  v19 = (v18 - 3);
  if (!a6[257])
  {
    v132 = 0;
    v130 = 0u;
    v131 = 0u;
    v128 = 0;
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v7 = sub_243902854(&v130, v17, v7);
    if (v7 > 0xFFFFFFFFFFFFFF88)
    {
      return v7;
    }

    sub_243902974(&v128, &v130, a6 + 256);
    sub_243902974(&v126, &v130, a6 + 256);
    v21 = DWORD2(v130);
    v22 = v129;
    v23 = v130;
    v25 = *(&v131 + 1);
    v24 = v132;
    v26 = v127;
    v27 = v128;
    v28 = v126;
    v29 = v131;
    for (i = a1; v21 <= 0x40; i += 4)
    {
      if (v29 >= v24)
      {
        LODWORD(v31) = v21 >> 3;
        v21 &= 7u;
        v32 = 1;
      }

      else
      {
        if (v29 == v25)
        {
          break;
        }

        v31 = v21 >> 3;
        v32 = (v29 - v31) >= v25;
        if ((v29 - v31) < v25)
        {
          LODWORD(v31) = v29 - v25;
        }

        v21 -= 8 * v31;
      }

      v29 = (v29 - v31);
      v23 = *v29;
      if (i >= v19 || !v32)
      {
        break;
      }

      v33 = (v22 + 4 * v27);
      v34 = *v33;
      v35 = *(v33 + 2);
      v36 = *(v33 + 3);
      v37 = v21 + v36;
      v38 = (v23 >> -v37) & dword_24398E350[v36];
      *i = v35;
      v39 = (v26 + 4 * v28);
      v40 = *v39;
      v41 = *(v39 + 2);
      v42 = *(v39 + 3);
      v43 = v37 + v42;
      v44 = (v23 >> -v43) & dword_24398E350[v42];
      i[1] = v41;
      v45 = (v22 + 4 * v38 + 4 * v34);
      v46 = *v45;
      v47 = *(v45 + 2);
      v48 = *(v45 + 3);
      v49 = v43 + v48;
      v27 = ((v23 >> -v49) & dword_24398E350[v48]) + v46;
      i[2] = v47;
      v50 = (v26 + 4 * v44 + 4 * v40);
      v51 = *v50;
      LOBYTE(v40) = *(v50 + 2);
      v52 = *(v50 + 3);
      v21 = v49 + v52;
      v28 = ((v23 >> -v21) & dword_24398E350[v52]) + v51;
      i[3] = v40;
    }

    v54 = (v18 - 2);
    if (i > v18 - 2)
    {
      return -70;
    }

    v55 = (i - a1);
    for (j = i + 1; ; j += 2)
    {
      v57 = (v22 + 4 * v27);
      v58 = *v57;
      v59 = *(v57 + 2);
      v60 = *(v57 + 3);
      v61 = v21 + v60;
      v62 = dword_24398E350[v60];
      *(j - 1) = v59;
      if (v61 > 0x40)
      {
        v120 = (v26 + 4 * v28 + 2);
        v121 = 2;
LABEL_105:
        *j = *v120;
        return &v55[v121];
      }

      if (v29 >= v24)
      {
        break;
      }

      if (v29 != v25)
      {
        v63 = v61 >> 3;
        if ((v29 - v63) < v25)
        {
          LODWORD(v63) = v29 - v25;
        }

        v64 = v61 - 8 * v63;
        goto LABEL_43;
      }

      v64 = v61;
      v65 = v23;
LABEL_44:
      if (j > v54)
      {
        return -70;
      }

      v27 = ((v23 >> -v61) & v62) + v58;
      v66 = (v26 + 4 * v28);
      v67 = *v66;
      v68 = *(v66 + 2);
      v69 = *(v66 + 3);
      v70 = v64 + v69;
      v71 = dword_24398E350[v69];
      *j = v68;
      if (v70 > 0x40)
      {
        v120 = (v22 + 4 * v27 + 2);
        ++j;
        v121 = 3;
        goto LABEL_105;
      }

      if (v29 >= v24)
      {
        LODWORD(v72) = v70 >> 3;
        v21 = v70 & 7;
      }

      else
      {
        if (v29 == v25)
        {
          v21 = v70;
          v23 = v65;
          goto LABEL_53;
        }

        v72 = v70 >> 3;
        if ((v29 - v72) < v25)
        {
          LODWORD(v72) = v29 - v25;
        }

        v21 = v70 - 8 * v72;
      }

      v29 = (v29 - v72);
      v23 = *v29;
LABEL_53:
      v28 = ((v65 >> -v70) & v71) + v67;
      v55 += 2;
      v73 = j + 1;
      if (v73 > v54)
      {
        return -70;
      }
    }

    LODWORD(v63) = v61 >> 3;
    v64 = v61 & 7;
LABEL_43:
    v29 = (v29 - v63);
    v65 = *v29;
    goto LABEL_44;
  }

  v130 = 0uLL;
  *&v131 = 0;
  v128 = 0;
  v129 = 0;
  v126 = 0;
  v127 = 0;
  if (!v7)
  {
    return -72;
  }

  *(&v131 + 1) = v17;
  v132 = v17 + 8;
  if (v7 >= 8)
  {
    v20 = *(a3 + a4 - 8);
    *&v131 = a3 + a4 - 8;
    *&v130 = v20;
    if (!HIBYTE(v20))
    {
      return -1;
    }

    DWORD2(v130) = 8 - (__clz(HIBYTE(v20)) ^ 0x1F);
    if (v7 > 0xFFFFFFFFFFFFFF88)
    {
      return v7;
    }

    goto LABEL_67;
  }

  v53 = *v17;
  *&v131 = v17;
  *&v130 = v53;
  if (v7 > 4)
  {
    if (v7 != 5)
    {
      if (v7 != 6)
      {
        v53 |= v17[6] << 48;
      }

      v53 += v17[5] << 40;
    }

    v53 += v17[4] << 32;
    goto LABEL_62;
  }

  if (v7 != 2)
  {
    if (v7 == 3)
    {
LABEL_63:
      v53 += v17[2] << 16;
      goto LABEL_64;
    }

    if (v7 != 4)
    {
      goto LABEL_65;
    }

LABEL_62:
    v53 += v17[3] << 24;
    goto LABEL_63;
  }

LABEL_64:
  *&v130 = v53 + (v17[1] << 8);
LABEL_65:
  if (!*(a3 + a4 - 1))
  {
    return -20;
  }

  DWORD2(v130) = __clz(*(a3 + a4 - 1)) - 8 * v7 + 41;
LABEL_67:
  sub_243902974(&v128, &v130, a6 + 256);
  sub_243902974(&v126, &v130, a6 + 256);
  v74 = DWORD2(v130);
  v75 = v129;
  v76 = v130;
  v78 = *(&v131 + 1);
  v77 = v132;
  v79 = v127;
  v80 = v128;
  v81 = v126;
  v82 = v131;
  for (k = a1; v74 <= 0x40; k += 4)
  {
    if (v82 >= v77)
    {
      LODWORD(v84) = v74 >> 3;
      v74 &= 7u;
      v85 = 1;
    }

    else
    {
      if (v82 == v78)
      {
        break;
      }

      v84 = v74 >> 3;
      v85 = (v82 - v84) >= v78;
      if ((v82 - v84) < v78)
      {
        LODWORD(v84) = v82 - v78;
      }

      v74 -= 8 * v84;
    }

    v82 = (v82 - v84);
    v76 = *v82;
    if (k >= v19 || !v85)
    {
      break;
    }

    v86 = (v75 + 4 * v80);
    v87 = *v86;
    v88 = *(v86 + 2);
    LODWORD(v86) = *(v86 + 3);
    v89 = (v76 << v74) >> -v86;
    v90 = v74 + v86;
    *k = v88;
    v91 = (v79 + 4 * v81);
    v92 = *v91;
    v93 = *(v91 + 2);
    LODWORD(v91) = *(v91 + 3);
    v94 = (v76 << v90) >> -v91;
    v95 = v90 + v91;
    k[1] = v93;
    v96 = (v75 + 4 * v89 + 4 * v87);
    v97 = *v96;
    v98 = *(v96 + 2);
    LODWORD(v96) = *(v96 + 3);
    v99 = (v76 << v95) >> -v96;
    v100 = v95 + v96;
    v80 = v99 + v97;
    k[2] = v98;
    v101 = (v79 + 4 * v94 + 4 * v92);
    v102 = *v101;
    v103 = *(v101 + 2);
    LODWORD(v101) = *(v101 + 3);
    v104 = (v76 << v100) >> -v101;
    v74 = v100 + v101;
    v81 = v104 + v102;
    k[3] = v103;
  }

  v105 = (v18 - 2);
  if (k > v18 - 2)
  {
    return -70;
  }

  v106 = (k - a1);
  for (m = k + 1; ; m += 2)
  {
    v108 = (v75 + 4 * v80);
    v109 = *v108;
    v110 = *(v108 + 2);
    v111 = *(v108 + 3);
    v112 = v74 + v111;
    *(m - 1) = v110;
    if (v74 + v111 > 0x40)
    {
      v122 = (v79 + 4 * v81 + 2);
      v123 = 2;
      goto LABEL_108;
    }

    if (v82 >= v77)
    {
      LODWORD(v113) = v112 >> 3;
      v112 &= 7u;
LABEL_89:
      v82 = (v82 - v113);
      v114 = *v82;
      goto LABEL_90;
    }

    if (v82 != v78)
    {
      v113 = v112 >> 3;
      if ((v82 - v113) < v78)
      {
        LODWORD(v113) = v82 - v78;
      }

      v112 -= 8 * v113;
      goto LABEL_89;
    }

    v114 = v76;
LABEL_90:
    if (m > v105)
    {
      return -70;
    }

    v80 = ((v76 << v74) >> -v111) + v109;
    v115 = (v79 + 4 * v81);
    v116 = *v115;
    v117 = *(v115 + 3);
    v74 = v112 + v117;
    *m = *(v115 + 2);
    if (v112 + v117 > 0x40)
    {
      break;
    }

    if (v82 >= v77)
    {
      LODWORD(v118) = v74 >> 3;
      v74 &= 7u;
    }

    else
    {
      if (v82 == v78)
      {
        v76 = v114;
        goto LABEL_99;
      }

      v118 = v74 >> 3;
      if ((v82 - v118) < v78)
      {
        LODWORD(v118) = v82 - v78;
      }

      v74 -= 8 * v118;
    }

    v82 = (v82 - v118);
    v76 = *v82;
LABEL_99:
    v81 = ((v114 << v112) >> -v117) + v116;
    v106 += 2;
    v119 = m + 1;
    if (v119 > v105)
    {
      return -70;
    }
  }

  v122 = (v75 + 4 * v80 + 2);
  ++m;
  v123 = 3;
LABEL_108:
  *m = *v122;
  return &v106[v123];
}

uint64_t sub_243902854(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    *(a1 + 24) = a2;
    *(a1 + 32) = a2 + 8;
    if (a3 >= 8)
    {
      v3 = *&a2[a3 - 8];
      *(a1 + 16) = &a2[a3 - 8];
      *a1 = v3;
      if (!a2[a3 - 1])
      {
        *(a1 + 8) = 0;
        return -1;
      }

      v4 = 8 - (__clz(a2[a3 - 1]) ^ 0x1F);
      goto LABEL_21;
    }

    *(a1 + 16) = a2;
    v5 = *a2;
    *a1 = v5;
    if (a3 > 4)
    {
      if (a3 != 5)
      {
        if (a3 != 6)
        {
          v5 |= a2[6] << 48;
          *a1 = v5;
        }

        v5 += a2[5] << 40;
        *a1 = v5;
      }

      v5 += a2[4] << 32;
      *a1 = v5;
    }

    else
    {
      if (a3 == 2)
      {
LABEL_18:
        *a1 = v5 + (a2[1] << 8);
LABEL_19:
        if (!a2[a3 - 1])
        {
          *(a1 + 8) = 0;
          return -20;
        }

        v4 = __clz(a2[a3 - 1]) - 8 * a3 + 41;
LABEL_21:
        *(a1 + 8) = v4;
        return a3;
      }

      if (a3 == 3)
      {
LABEL_17:
        v5 += a2[2] << 16;
        *a1 = v5;
        goto LABEL_18;
      }

      if (a3 != 4)
      {
        goto LABEL_19;
      }
    }

    v5 += a2[3] << 24;
    *a1 = v5;
    goto LABEL_17;
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return -72;
}

void *sub_243902974(void *result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *a3;
  v4 = *(a2 + 8) + v3;
  v5 = (*a2 >> -(*(a2 + 8) + v3)) & dword_24398E350[v3];
  *(a2 + 8) = v4;
  *result = v5;
  if (v4 <= 0x40)
  {
    v6 = *(a2 + 16);
    if (v6 >= *(a2 + 32))
    {
      v10 = (v6 - (v4 >> 3));
      *(a2 + 16) = v10;
      v11 = v4 & 7;
LABEL_9:
      *(a2 + 8) = v11;
      *a2 = *v10;
      goto LABEL_10;
    }

    v7 = *(a2 + 24);
    if (v6 != v7)
    {
      v8 = v4 >> 3;
      if (v6 - v8 >= v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = (v6 - v7);
      }

      v10 = (v6 - v9);
      *(a2 + 16) = v10;
      v11 = v4 - 8 * v9;
      goto LABEL_9;
    }
  }

LABEL_10:
  result[1] = a3 + 2;
  return result;
}

void sub_243902A14(uint64_t a1)
{
  if (a1)
  {
    pthread_mutex_lock((a1 + 96));
    *(a1 + 256) = 1;
    pthread_mutex_unlock((a1 + 96));
    pthread_cond_broadcast((a1 + 160));
    pthread_cond_broadcast((a1 + 208));
    if (*(a1 + 32))
    {
      v2 = 0;
      do
      {
        pthread_join(*(*(a1 + 24) + 8 * v2++), 0);
      }

      while (v2 < *(a1 + 32));
    }

    pthread_mutex_destroy((a1 + 96));
    pthread_cond_destroy((a1 + 160));
    pthread_cond_destroy((a1 + 208));
    v4 = *(a1 + 8);
    v3 = *(a1 + 16);
    if (*(a1 + 48))
    {
      if (v4)
      {
        v4(v3);
      }

      else
      {
        free(*(a1 + 48));
      }

      v4 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    if (*(a1 + 24))
    {
      if (v4)
      {
        v4(v3);
      }

      else
      {
        free(*(a1 + 24));
      }
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = *(a1 + 16);

      v5(v6, a1);
    }

    else
    {

      free(a1);
    }
  }
}

unint64_t sub_243902B30(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v4 = a1;
  if (a2 < 0x20)
  {
    v13 = a3 + 0x27D4EB2F165667C5;
  }

  else
  {
    v5 = a1 + a2 - 31;
    v6 = a3 + 0x60EA27EEADC0B5D6;
    v7 = a3 - 0x3D4D51C2D82B14B1;
    v8 = a3 + 0x61C8864E7A143579;
    do
    {
      v9 = __ROR8__(v6 - 0x3D4D51C2D82B14B1 * *v4, 33);
      v6 = 0x9E3779B185EBCA87 * v9;
      v10 = __ROR8__(v7 - 0x3D4D51C2D82B14B1 * v4[1], 33);
      v7 = 0x9E3779B185EBCA87 * v10;
      v11 = __ROR8__(a3 - 0x3D4D51C2D82B14B1 * v4[2], 33);
      a3 = 0x9E3779B185EBCA87 * v11;
      v12 = __ROR8__(v8 - 0x3D4D51C2D82B14B1 * v4[3], 33);
      v8 = 0x9E3779B185EBCA87 * v12;
      v4 += 4;
    }

    while (v4 < v5);
    v13 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(v7, 57) + __ROR8__(v6, 63) + __ROR8__(a3, 52) + __ROR8__(v8, 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v9, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v10, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v11, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v12, 33))) - 0x7A1435883D4D519DLL;
  }

  return sub_243902F58(v13 + a2, v4, a2);
}

uint64_t sub_243902C88(uint64_t a1, unint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 8) = vaddq_s64(vdupq_n_s64(a2), xmmword_24398E3D0);
  *(a1 + 24) = a2;
  *(a1 + 32) = a2 + 0x61C8864E7A143579;
  return 0;
}

uint64_t sub_243902CD0(uint64_t a1, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    *a1 += __n;
    v6 = *(a1 + 72);
    if (v6 + __n <= 0x1F)
    {
      memcpy((a1 + v6 + 40), __src, __n);
      LODWORD(v7) = *(a1 + 72) + v3;
LABEL_11:
      *(a1 + 72) = v7;
      return 0;
    }

    v8 = &__src[__n];
    if (v6)
    {
      memcpy((a1 + 40 + v6), __src, (32 - v6));
      v9 = __ROR8__(*(a1 + 16) - 0x3D4D51C2D82B14B1 * *(a1 + 48), 33);
      *(a1 + 8) = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 8) - 0x3D4D51C2D82B14B1 * *(a1 + 40), 33);
      *(a1 + 16) = 0x9E3779B185EBCA87 * v9;
      v10 = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 32) - 0x3D4D51C2D82B14B1 * *(a1 + 64), 33);
      *(a1 + 24) = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 24) - 0x3D4D51C2D82B14B1 * *(a1 + 56), 33);
      *(a1 + 32) = v10;
      v4 += (32 - *(a1 + 72));
      *(a1 + 72) = 0;
    }

    if (v4 + 32 <= v8)
    {
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      v13 = *(a1 + 24);
      v14 = *(a1 + 32);
      do
      {
        v11 = 0x9E3779B185EBCA87 * __ROR8__(v11 - 0x3D4D51C2D82B14B1 * *v4, 33);
        *(a1 + 8) = v11;
        v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * *(v4 + 1), 33);
        *(a1 + 16) = v12;
        v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * *(v4 + 2), 33);
        *(a1 + 24) = v13;
        v14 = 0x9E3779B185EBCA87 * __ROR8__(v14 - 0x3D4D51C2D82B14B1 * *(v4 + 3), 33);
        *(a1 + 32) = v14;
        v4 += 32;
      }

      while (v4 <= v8 - 32);
    }

    if (v4 < v8)
    {
      v7 = v8 - v4;
      memcpy((a1 + 40), v4, v7);
      goto LABEL_11;
    }
  }

  return 0;
}

unint64_t sub_243902E7C(void *a1)
{
  if (*a1 < 0x20uLL)
  {
    v1 = a1[3] + 0x27D4EB2F165667C5;
  }

  else
  {
    v1 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(a1[2], 57) + __ROR8__(a1[1], 63) + __ROR8__(a1[3], 52) + __ROR8__(a1[4], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[2], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[3], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[4], 33))) - 0x7A1435883D4D519DLL;
  }

  return sub_243902F58(v1 + *a1, a1 + 5, *a1);
}

unint64_t sub_243902F58(unint64_t a1, uint64_t *a2, char a3)
{
  v3 = a3 & 0x1F;
  if (v3 >= 8)
  {
    do
    {
      v4 = *a2++;
      a1 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v4, 33)) ^ a1, 37);
      v3 -= 8;
    }

    while (v3 > 7);
  }

  if (v3 >= 4)
  {
    v5 = *a2;
    a2 = (a2 + 4);
    a1 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v5) ^ a1, 41);
    v3 -= 4;
  }

  for (; v3; --v3)
  {
    v6 = *a2;
    a2 = (a2 + 1);
    a1 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v6) ^ a1, 53);
  }

  v7 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (a1 ^ (a1 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (a1 ^ (a1 >> 33))) >> 29));
  return v7 ^ HIDWORD(v7);
}

uint64_t sub_243903034(unint64_t a1)
{
  if (a1 >= 0xFFFFFFFFFFFFFF89)
  {
    return -a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243903040(_WORD *a1, unsigned __int16 *a2, int a3, int a4, _WORD *a5, unint64_t a6)
{
  v6 = (1 << a4);
  LODWORD(v7) = v6 >> 1;
  if (a4)
  {
    v7 = v7;
  }

  else
  {
    v7 = 1;
  }

  v8 = (a3 + 2);
  if (((2 * ((1 << a4) + v8)) & 0xFFFFFFFFFFFFFFFCLL) + 8 > a6)
  {
    return -44;
  }

  v10 = (v6 - 1);
  v11 = (v6 >> 3) + (v6 >> 1) + 3;
  *a1 = a4;
  v12 = &a5[v8];
  a1[1] = a3;
  *a5 = 0;
  v13 = (a3 + 1);
  if (a3 == -1)
  {
    a5[v13] = v6 + 1;
    v23 = &v12[v6];
  }

  else
  {
    v14 = 0;
    if (v8 <= 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = v8;
    }

    v15 = a5 + 1;
    v16 = v8 - 1;
    v17 = v6 - 1;
    do
    {
      v18 = a2[v14];
      v19 = *(v15 - 1);
      if (v18 == 0xFFFF)
      {
        *v15 = v19 + 1;
        v12[v17--] = v14;
      }

      else
      {
        *v15 = v19 + v18;
      }

      ++v15;
      ++v14;
    }

    while (v16 != v14);
    a5[v13] = v6 + 1;
    if (v17 != v10)
    {
      v35 = 0;
      v36 = 0;
      do
      {
        v37 = a2[v35];
        if (v37 >= 1)
        {
          for (i = 0; i != v37; ++i)
          {
            v12[v36] = v35;
            do
            {
              v36 = (v36 + v11) & v10;
            }

            while (v36 > v17);
          }
        }

        ++v35;
      }

      while (v35 != v13);
      goto LABEL_40;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = &v12[v6];
    do
    {
      v24 = a2[v20];
      *&v23[v21] = v22;
      if (v24 >= 9)
      {
        v25 = 0;
        if (v24 <= 0x10)
        {
          v26 = 16;
        }

        else
        {
          v26 = v24;
        }

        v27 = (v26 - 9) >> 3;
        v28 = vdupq_n_s64(v27);
        v29 = &v23[v21 + 16];
        do
        {
          v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v25), xmmword_24398C940)));
          if (v30.i8[0])
          {
            *(v29 - 1) = v22;
          }

          if (v30.i8[4])
          {
            *v29 = v22;
          }

          v25 += 2;
          v29 += 16;
        }

        while (((v27 + 2) & 0x3FFFFFFFFFFFFFFELL) != v25);
      }

      v21 += v24;
      ++v20;
      v22 += 0x101010101010101;
    }

    while (v20 != v13);
  }

  v31 = 0;
  v32 = 0;
  v33 = v23 + 1;
  do
  {
    v12[v32 & v10] = *(v33 - 1);
    v34 = *v33;
    v33 += 2;
    v12[(v32 + v11) & v10] = v34;
    v32 = (v32 + 2 * v11) & v10;
    v31 += 2;
  }

  while (v31 < v6);
LABEL_40:
  v39 = (1 << a4);
  v40 = 1 << a4;
  do
  {
    v41 = *v12++;
    v42 = a5[v41];
    a5[v41] = v42 + 1;
    a1[v42 + 2] = v40++;
    --v39;
  }

  while (v39);
  v43 = 0;
  v44 = (a4 << 16) - v6;
  if (v13 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v13;
  }

  v45 = &a1[2 * v7 + 4];
  do
  {
    v47 = *a2++;
    v46 = v47;
    if (v47 == 0xFFFF || v46 == 1)
    {
      *(v45 - 1) = v43 - 1;
      *v45 = v44;
      ++v43;
    }

    else if (v46)
    {
      v49 = __clz(v46 - 1);
      *(v45 - 1) = v43 - v46;
      *v45 = ((a4 - 31 + v49) << 16) - (v46 << (a4 - 31 + v49));
      v43 += v46;
    }

    else
    {
      *v45 = v44 + 0x10000;
    }

    v45 += 2;
    --v13;
  }

  while (v13);
  return 0;
}

uint64_t sub_24390331C(_WORD *a1, unint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5 > 0xC)
  {
    return -44;
  }

  if (a5 < 5)
  {
    return -1;
  }

  LODWORD(v6) = ((a5 + a5 * a4 + 6) >> 3) + 3;
  if (a4)
  {
    v6 = v6;
  }

  else
  {
    v6 = 512;
  }

  return sub_243903364(a1, a2, a3, a4, a5, v6 <= a2);
}

uint64_t sub_243903364(_WORD *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = (a4 + 1);
  if (a4 == -1)
  {
    return -1;
  }

  v8 = 0;
  v9 = 0;
  v10 = a5 - 5;
  v11 = 1 << a5;
  v12 = (1 << a5) + 1;
  v13 = (a5 + 1);
  v14 = a1 + a2 - 2;
  v15 = 4;
  v16 = a1;
  while (1)
  {
    if (!v8)
    {
      LODWORD(v17) = v9;
      goto LABEL_25;
    }

    LODWORD(v17) = v9;
    if (v9 < v6)
    {
      v17 = v9;
      while (!*(a3 + 2 * v17))
      {
        if (v6 == ++v17)
        {
          goto LABEL_43;
        }
      }
    }

    if (v17 == v6)
    {
      break;
    }

    if (v17 >= v9 + 24)
    {
      while (a6 || v16 <= v14)
      {
        v19 = v10 + (0xFFFF << v15);
        *v16++ = v19;
        v10 = HIWORD(v19);
        v18 = v9 + 24;
        v20 = v9 + 48;
        v9 += 24;
        if (v17 < v20)
        {
          goto LABEL_17;
        }
      }

      return -70;
    }

    v18 = v9;
LABEL_17:
    v21 = v18 + 3;
    while (v17 >= v21)
    {
      v10 += 3 << v15;
      v15 += 2;
      v21 = v18 + 6;
      v18 += 3;
    }

    v10 += (v17 - v18) << v15;
    if (v15 < 15)
    {
      v15 += 2;
    }

    else
    {
      if (!a6 && v16 > v14)
      {
        return -70;
      }

      *v16++ = v10;
      v10 >>= 16;
      v15 -= 14;
    }

LABEL_25:
    v22 = *(a3 + 2 * v17);
    v23 = ~v12 + 2 * v11;
    if (v22 >= 0)
    {
      v24 = *(a3 + 2 * v17);
    }

    else
    {
      v24 = -v22;
    }

    v12 -= v24;
    v25 = v22 + 1;
    if (v25 >= v11)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26 + v25;
    v28 = v26 + v25 < v23;
    v8 = v27 == 1;
    if (v12 < 1)
    {
      return -1;
    }

    if (v12 >= v11)
    {
      v30 = v13;
    }

    else
    {
      v29 = v11;
      LODWORD(v30) = v13;
      do
      {
        v30 = (v30 - 1);
        v11 = v29 >> 1;
        v31 = v12 < v29 >> 1;
        v29 >>= 1;
      }

      while (v31);
    }

    v10 += v27 << v15;
    v15 = v15 + v13 - v28;
    if (v15 >= 17)
    {
      if (!a6 && v16 > v14)
      {
        return -70;
      }

      *v16++ = v10;
      v10 >>= 16;
      v15 -= 16;
    }

    v9 = v17 + 1;
    if (v17 + 1 < v6)
    {
      v13 = v30;
      if (v12 != 1)
      {
        continue;
      }
    }

    break;
  }

LABEL_43:
  v32 = v15 + 7;
  v31 = v15 < -7;
  v33 = v15 + 14;
  if (!v31)
  {
    v33 = v32;
  }

  if (v12 != 1)
  {
    return -1;
  }

  if (!a6 && v16 > v14)
  {
    return -70;
  }

  *v16 = v10;
  return v16 + (v33 >> 3) - a1;
}

uint64_t sub_243903580(unsigned int a1, unsigned int a2, unsigned int a3, int a4)
{
  v4 = 31 - a4 - __clz(a2 - 1);
  v5 = 32 - __clz(a2);
  v6 = 33 - __clz(a3);
  if (v5 >= v6)
  {
    v5 = v6;
  }

  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = 11;
  }

  if (v4 >= v7)
  {
    v4 = v7;
  }

  if (v5 > v4)
  {
    v4 = v5;
  }

  if (v4 <= 5)
  {
    v4 = 5;
  }

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2439035EC(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v3 = 29 - __clz(a2 - 1);
  v4 = 32 - __clz(a2);
  v5 = 33 - __clz(a3);
  if (v4 >= v5)
  {
    v4 = v5;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = 11;
  }

  if (v3 >= v6)
  {
    v3 = v6;
  }

  if (v4 > v3)
  {
    v3 = v4;
  }

  if (v3 <= 5)
  {
    v3 = 5;
  }

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_243903654(__int16 *a1, unsigned int a2, unsigned int *a3, unint64_t a4, unsigned int a5, int a6)
{
  if (a2)
  {
    result = a2;
  }

  else
  {
    result = 11;
  }

  if (result < 5)
  {
    return -1;
  }

  if (result > 0xC)
  {
    return -44;
  }

  v8 = 32 - __clz(a4);
  v9 = 33 - __clz(a5);
  if (v8 >= v9)
  {
    v8 = v9;
  }

  if (result < v8)
  {
    return -1;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a6)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  v14 = 62 - result;
  v15 = 1 << result;
  v16 = a4 >> result;
  LODWORD(v17) = 1 << result;
  do
  {
    v18 = a3[v12];
    if (v18 == a4)
    {
      return 0;
    }

    v19 = v12;
    if (v18)
    {
      if (v18 <= v16)
      {
        a1[v12] = v13;
        LODWORD(v17) = v17 - 1;
      }

      else
      {
        v20 = 0x4000000000000000uLL / a4 * v18;
        v21 = v20 >> v14;
        if (((v20 >> v14) & 0xFFF8) == 0 && v20 - ((v20 >> v14) << v14) > dword_24398E3E0[(v20 >> v14)] << (42 - result))
        {
          LOWORD(v21) = v21 + 1;
        }

        if (v21 > v10)
        {
          v11 = v19;
          v10 = v21;
        }

        a1[v19] = v21;
        LODWORD(v17) = v17 - v21;
      }
    }

    else
    {
      a1[v12] = 0;
    }

    v12 = v19 + 1;
  }

  while (v19 + 1 <= a5);
  v22 = &a1[v11];
  v23 = *v22;
  if (-v17 < *v22 >> 1)
  {
LABEL_52:
    *v22 = v23 + v17;
    return result;
  }

  v24 = 0;
  v25 = (3 * a4) >> (result + 1);
  v26 = a5 + 1;
  v27 = a3;
  v28 = v26;
  v29 = a1;
  do
  {
    v31 = *v27++;
    v30 = v31;
    if (v31)
    {
      if (v30 <= v16)
      {
        *v29 = v13;
      }

      else
      {
        if (v30 > v25)
        {
          *v29 = -2;
          goto LABEL_37;
        }

        *v29 = 1;
      }

      ++v24;
      a4 -= v30;
    }

    else
    {
      *v29 = 0;
    }

LABEL_37:
    ++v29;
    --v28;
  }

  while (v28);
  v17 = (v15 - v24);
  if (v15 != v24)
  {
    if (a4 / v17 > v25)
    {
      v32 = a1;
      v33 = a5 + 1;
      v34 = a3;
      v35 = 3 * a4 / (2 * v17);
      do
      {
        if (*v32 == -2)
        {
          v36 = *v34;
          if (v36 <= v35)
          {
            *v32 = 1;
            ++v24;
            a4 -= v36;
          }
        }

        ++v34;
        ++v32;
        --v33;
      }

      while (v33);
      LODWORD(v17) = v15 - v24;
    }

    if (v24 == v26)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      do
      {
        if (a3[v37] > v38)
        {
          v39 = v37;
          v38 = a3[v37];
        }

        ++v37;
      }

      while (v26 != v37);
      v22 = &a1[v39];
      v23 = *v22;
      goto LABEL_52;
    }

    if (a4)
    {
      v40 = 0;
      v41 = ~(-1 << (61 - result));
      v42 = ((v17 << v14) + v41) / a4;
      while (1)
      {
        v43 = v40;
        if (a1[v40] == -2)
        {
          v44 = v41 + v42 * a3[v40];
          v45 = v41 >> v14;
          if (v44 >> v14 == v45)
          {
            return -1;
          }

          a1[v43] = (v44 >> v14) - v45;
          v41 = v44;
        }

        v40 = v43 + 1;
        if (v43 + 1 > a5)
        {
          return result;
        }
      }
    }

    if (v17)
    {
      v46 = 0;
      do
      {
        v47 = v46;
        v48 = a1[v46];
        if (v48 >= 1)
        {
          LODWORD(v17) = v17 - 1;
          a1[v47] = v48 + 1;
        }

        if (v47 == a5)
        {
          v46 = 0;
        }

        else
        {
          v46 = v47 + 1;
        }
      }

      while (v17);
    }
  }

  return result;
}

uint64_t sub_243903968(uint64_t a1, unsigned int a2)
{
  *a1 = 0;
  *(a1 + 2) = a2;
  *(a1 + 4) = 0;
  *(a1 + 8 * a2 + 8) = 0;
  return 0;
}

uint64_t sub_243903998(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int16 *a5, int a6)
{
  if (a4 < 3 || a2 < 9)
  {
    return 0;
  }

  v6 = a3 + a4;
  v7 = a1 + a2 - 8;
  v10 = *a5;
  v8 = a5 + 2;
  v9 = v10;
  v11 = 1 << (v10 - 1);
  if (!v10)
  {
    v11 = 1;
  }

  v12 = &v8[2 * v11];
  v13 = &v12[4 * *(a3 + a4 - 1)];
  v14 = v8[((((*(v13 + 1) + 0x8000) & 0xFFFF0000) - *(v13 + 1)) >> ((*(v13 + 1) + 0x8000) >> 16)) + *v13];
  if (a4)
  {
    v23 = *(v6 - 3);
    v17 = (v6 - 3);
    v24 = &v12[4 * v17[1]];
    LODWORD(v22) = v8[((((*(v24 + 1) + 0x8000) & 0xFFFF0000) - *(v24 + 1)) >> ((*(v24 + 1) + 0x8000) >> 16)) + *v24];
    v25 = &v12[4 * v23];
    v26 = *v25;
    v27 = *(v25 + 1) + v14;
    v28 = v27 >> 16;
    v29 = dword_24398E400[v27 >> 16] & v14;
    v20 = v8[(v14 >> SBYTE2(v27)) + v26];
    v30 = v27 >> 19;
    *a1 = v29;
    v21 = (a1 + (v27 >> 19));
    if (!a6 && v21 > v7)
    {
      v21 = v7;
    }

    v15 = v28 & 7;
    v16 = v29 >> (8 * v30);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v18 = *(v6 - 2);
    v17 = (v6 - 2);
    v19 = &v12[4 * v18];
    v20 = v8[((((*(v19 + 1) + 0x8000) & 0xFFFF0000) - *(v19 + 1)) >> ((*(v19 + 1) + 0x8000) >> 16)) + *v19];
    v21 = a1;
    LODWORD(v22) = v8[((((*(v13 + 1) + 0x8000) & 0xFFFF0000) - *(v13 + 1)) >> ((*(v13 + 1) + 0x8000) >> 16)) + *v13];
  }

  v22 = v22;
  v31 = v20;
  if ((a4 & 2) == 0)
  {
    v32 = *(v17 - 2);
    v17 -= 2;
    v33 = &v12[4 * v17[1]];
    v34 = *v33;
    v35 = (*(v33 + 1) + v22) >> 16;
    v36 = (dword_24398E400[v35] & v22) << v15;
    v37 = v15 + v35;
    v22 = v8[(v22 >> v35) + v34];
    v38 = &v12[4 * v32];
    LODWORD(v35) = *v38;
    v39 = (*(v38 + 1) + v31) >> 16;
    v40 = v36 | ((dword_24398E400[v39] & v31) << v37) | v16;
    v41 = v37 + v39;
    v31 = v8[(v31 >> v39) + v35];
    v42 = v41 >> 3;
    *v21 = v40;
    v21 = (v21 + v42);
    if (!a6 && v21 > v7)
    {
      v21 = v7;
    }

    v15 = v41 & 7;
    v16 = v40 >> (8 * v42);
  }

  if (v17 <= a3)
  {
    v60 = v21;
  }

  else
  {
    do
    {
      v43 = *(v17 - 4);
      v17 -= 4;
      v44 = &v12[4 * v17[3]];
      v45 = (v22 + *(v44 + 1)) >> 16;
      v46 = v15 + ((v22 + *(v44 + 1)) >> 16);
      v47 = v8[(v22 >> ((v22 + *(v44 + 1)) >> 16)) + *v44];
      v48 = &v12[4 * v17[2]];
      v49 = (v31 + *(v48 + 1)) >> 16;
      v50 = v15 + v45 + v49;
      v51 = v8[(v31 >> ((v31 + *(v48 + 1)) >> 16)) + *v48];
      v52 = (*&v12[4 * v17[1] + 2] + v47) >> 16;
      v53 = *&v12[4 * v43];
      v54 = (*&v12[4 * v43 + 2] + v51) >> 16;
      v55 = v50 + v52 + v54;
      v56 = v55 >> 3;
      v57 = v21 + (v55 >> 3) > v7 && a6 == 0;
      v58 = (v22 & dword_24398E400[v45]) << v15;
      v22 = v8[(v47 >> ((*&v12[4 * v17[1] + 2] + v47) >> 16)) + *&v12[4 * v17[1]]];
      v59 = v58 | v16 | ((v31 & dword_24398E400[v49]) << v46) | ((dword_24398E400[v52] & v47) << v50) | ((dword_24398E400[v54] & v51) << (v50 + ((*&v12[4 * v17[1] + 2] + v47) >> 16)));
      v31 = v8[(v51 >> v54) + v53];
      if (v57)
      {
        v60 = v7;
      }

      else
      {
        v60 = (v21 + v56);
      }

      *v21 = v59;
      v16 = v59 >> (8 * v56);
      v15 = v55 & 7;
      v21 = v60;
    }

    while (v17 > a3);
  }

  v61 = dword_24398E400[v9];
  v62 = ((v22 & v61) << v15) | v16;
  v63 = (v15 + v9) >> 3;
  *v60 = v62;
  v64 = (v60 + v63);
  if (v60 + v63 > v7)
  {
    v64 = v7;
  }

  v65 = (v15 + v9) & 7;
  v66 = ((v31 & v61) << v65) | (v62 >> (8 * v63));
  v67 = v65 + v9;
  v68 = v67 >> 3;
  *v64 = v66;
  v69 = (v64 + v68);
  if (v64 + v68 > v7)
  {
    v69 = v7;
  }

  v70 = v67 & 7;
  v71 = (v66 >> (8 * v68)) | (1 << v70);
  v72 = v70 + 1;
  *v69 = v71;
  v73 = v69 + (v72 >> 3);
  if (v73 > v7)
  {
    v73 = v7;
  }

  if (v73 >= v7)
  {
    return 0;
  }

  if ((v72 & 7) != 0)
  {
    return v73 - a1 + 1;
  }

  return v73 - a1;
}

uint64_t sub_243903D5C(unsigned int *a1, unsigned int *a2, unsigned __int8 *a3, uint64_t a4)
{
  v7 = a1;
  v8 = *a2;
  bzero(a1, 4 * (*a2 + 1));
  if (a4)
  {
    if (a4 >= 1)
    {
      v9 = &a3[a4];
      do
      {
        v10 = *a3++;
        ++v7[v10];
      }

      while (a3 < v9);
    }

    do
    {
      v11 = v8;
    }

    while (!v7[v8--]);
    LODWORD(result) = 0;
    *a2 = v8 + 1;
    v14 = -1;
    do
    {
      v16 = *v7++;
      v15 = v16;
      if (v16 <= result)
      {
        result = result;
      }

      else
      {
        result = v15;
      }

      ++v14;
    }

    while (v14 < v11);
  }

  else
  {
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t sub_243903E18(unsigned int *a1, unsigned int *a2, unsigned __int8 *a3, unint64_t a4, char *a5, unint64_t a6)
{
  if (a4 <= 0x5DB)
  {
    return sub_243903D5C(a1, a2, a3, a4);
  }

  if ((a5 & 3) != 0)
  {
    return -1;
  }

  if (a6 < 0x1000)
  {
    return -66;
  }

  return sub_243903E7C(a1, a2, a3, a4, 0, a5);
}

uint64_t sub_243903E7C(void *a1, unsigned int *a2, unsigned int *a3, uint64_t a4, int a5, char *a6)
{
  v6 = a4;
  v9 = 4 * (*a2 + 1);
  if (a4)
  {
    v13 = (a3 + a4);
    bzero(a6, 0x1000uLL);
    v14 = a3;
    v15 = a3;
    if (v6 >= 20)
    {
      v16 = a6 + 1024;
      v17 = a6 + 2048;
      v18 = a6 + 3072;
      v19 = *a3;
      v14 = a3;
      v15 = a3;
      do
      {
        v20 = v15[1];
        ++*&a6[4 * v19];
        ++*&v16[4 * BYTE1(v19)];
        ++*&v17[4 * BYTE2(v19)];
        ++*&v18[4 * HIBYTE(v19)];
        v21 = v15[2];
        ++*&a6[4 * v20];
        ++*&v16[4 * BYTE1(v20)];
        ++*&v17[4 * BYTE2(v20)];
        ++*&v18[(v20 >> 22) & 0x3FC];
        v22 = v15[3];
        ++*&a6[4 * v21];
        ++*&v16[4 * BYTE1(v21)];
        ++*&v17[4 * BYTE2(v21)];
        ++*&v18[(v21 >> 22) & 0x3FC];
        v23 = v15[4];
        v15 += 4;
        v19 = v23;
        ++*&a6[4 * v22];
        ++*&v16[4 * BYTE1(v22)];
        ++*&v17[4 * BYTE2(v22)];
        ++*&v18[(v22 >> 22) & 0x3FC];
        v14 += 4;
      }

      while (v15 + 1 < (v13 - 15));
    }

    if (v15 < v13)
    {
      v24 = (a3 + v6 - v14);
      do
      {
        v25 = *v15;
        v15 = (v15 + 1);
        ++*&a6[4 * v25];
        --v24;
      }

      while (v24);
    }

    v26 = 0;
    v27 = 0uLL;
    do
    {
      v28 = vaddq_s32(vaddq_s32(*&a6[v26 + 2048], *&a6[v26 + 1024]), vaddq_s32(*&a6[v26 + 3072], *&a6[v26]));
      *&a6[v26] = v28;
      v27 = vmaxq_u32(v28, v27);
      v26 += 16;
    }

    while (v26 != 1024);
    v6 = vmaxvq_u32(v27);
    v29 = 256;
    do
    {
      --v29;
    }

    while (!*&a6[4 * v29]);
    if (a5 && v29 > *a2)
    {
      return -48;
    }

    else
    {
      *a2 = v29;
      memmove(a1, a6, v9);
    }
  }

  else
  {
    bzero(a1, 4 * (*a2 + 1));
    *a2 = 0;
  }

  return v6;
}

uint64_t sub_243904100(void *a1, unsigned int *a2, unsigned int *a3, unint64_t a4, char *a5, unint64_t a6)
{
  if ((a5 & 3) != 0)
  {
    return -1;
  }

  if (a6 < 0x1000)
  {
    return -66;
  }

  if (*a2 <= 0xFE)
  {
    return sub_243903E7C(a1, a2, a3, a4, 1, a5);
  }

  *a2 = 255;
  return sub_243903E18(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24390414C(_BYTE *a1, unint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, unint64_t a7)
{
  v7 = -a6 & 3;
  v8 = a7 - v7;
  if (a7 >= v7)
  {
    v9 = a6 + v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if (v8 < 0x2EC)
  {
    return -1;
  }

  if (a4 > 0xFF)
  {
    return -46;
  }

  *(v9 + 480) = 0;
  v14 = (a5 + 1);
  if (v14 >= 2)
  {
    v15 = 0;
    v16 = vdupq_n_s64(v14 - 2);
    v17 = -((v14 + 14) & 0x1FFFFFFF0);
    v18 = (v9 + 496);
    v19 = 496;
    do
    {
      v20 = vdupq_n_s64(v19 - 496);
      v21 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_24398C940)));
      if (vuzp1_s8(vuzp1_s16(v21, *v16.i8), *v16.i8).u8[0])
      {
        *(v18 - 15) = a5 + v15;
      }

      if (vuzp1_s8(vuzp1_s16(v21, *&v16), *&v16).i8[1])
      {
        *(v18 - 14) = a5 - 1 + v15;
      }

      if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_24398E4E0)))), *&v16).i8[2])
      {
        *(v18 - 13) = a5 - 2 + v15;
        *(v18 - 12) = a5 - 3 + v15;
      }

      v22 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_24398E4D0)));
      if (vuzp1_s8(*&v16, vuzp1_s16(v22, *&v16)).i32[1])
      {
        *(v18 - 11) = a5 - 4 + v15;
      }

      if (vuzp1_s8(*&v16, vuzp1_s16(v22, *&v16)).i8[5])
      {
        *(v18 - 10) = a5 - 5 + v15;
      }

      if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_24398E4C0))))).i8[6])
      {
        *(v18 - 9) = a5 - 6 + v15;
        *(v18 - 8) = a5 - 7 + v15;
      }

      v23 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_24398E4B0)));
      if (vuzp1_s8(vuzp1_s16(v23, *v16.i8), *v16.i8).u8[0])
      {
        *(v18 - 7) = a5 - 8 + v15;
      }

      if (vuzp1_s8(vuzp1_s16(v23, *&v16), *&v16).i8[1])
      {
        *(v18 - 6) = a5 - 9 + v15;
      }

      if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_24398E4A0)))), *&v16).i8[2])
      {
        *(v18 - 5) = a5 - 10 + v15;
        *(v18 - 4) = a5 - 11 + v15;
      }

      v24 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_24398E490)));
      if (vuzp1_s8(*&v16, vuzp1_s16(v24, *&v16)).i32[1])
      {
        *(v18 - 3) = a5 - 12 + v15;
      }

      if (vuzp1_s8(*&v16, vuzp1_s16(v24, *&v16)).i8[5])
      {
        *(v18 - 2) = a5 - 13 + v15;
      }

      if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_24398E480))))).i8[6])
      {
        *(v18 - 1) = a5 - 14 + v15;
        *v18 = a5 - 15 + v15;
      }

      v19 += 16;
      v15 -= 16;
      v18 += 16;
    }

    while (v17 != v15);
  }

  if (a4)
  {
    v25 = (a3 + 8);
    v26 = (v9 + 493);
    v27 = a4;
    do
    {
      v28 = *v25;
      v25 += 8;
      *v26++ = *(v9 + 480 + v28);
      --v27;
    }

    while (v27);
  }

  if (!a2)
  {
    return -70;
  }

  v40 = 12;
  if ((-v9 & 3) != 0)
  {
    return -1;
  }

  v29 = a1 + 1;
  if (a4 >= 2)
  {
    v31 = sub_243903D5C((v9 + 400), &v40, (v9 + 493), a4);
    if (v31 != a4 && v31 != 1)
    {
      v32 = sub_2439035EC(6u, a4, v40);
      v33 = sub_243903654((v9 + 452), v32, (v9 + 400), a4, v40, 0);
      if (v33 > 0xFFFFFFFFFFFFFF88)
      {
        return v33;
      }

      v10 = sub_24390331C(a1 + 1, a2 - 1, v9 + 452, v40, v32);
      if (v10 > 0xFFFFFFFFFFFFFF88)
      {
        return v10;
      }

      v33 = sub_243903040(v9, (v9 + 452), v40, v32, (v9 + 236), 0xA4uLL);
      if (v33 > 0xFFFFFFFFFFFFFF88)
      {
        return v33;
      }

      v34 = &v29[v10];
      v35 = sub_243903984(&v29[v10], a2 - 1 - v10, v9 + 493, a4, v9);
      v10 = v35;
      if (v35 > 0xFFFFFFFFFFFFFF88)
      {
        return v10;
      }

      if (v35)
      {
        v10 = &v34[v35] - v29;
        if (v10 > 0xFFFFFFFFFFFFFF88)
        {
          return v10;
        }

        if (v10 >= 2 && v10 < a4 >> 1)
        {
          *a1 = v10++;
          return v10;
        }
      }
    }
  }

  if (a4 > 0x80)
  {
    return -1;
  }

  v10 = ((a4 + 1) >> 1) + 1;
  if (v10 > a2)
  {
    return -70;
  }

  *a1 = a4 + 127;
  *(v9 + 493 + a4) = 0;
  if (a4)
  {
    v36 = 0;
    v37 = (v9 + 494);
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      v37 += 2;
      *v29++ = v39 + 16 * v38;
      v36 += 2;
    }

    while (v36 < a4);
  }

  return v10;
}

unint64_t sub_243904648(void *a1, _DWORD *a2, char *a3, unint64_t a4, _DWORD *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = 0;
  result = sub_243901C14(v43, 0x100uLL, v42, &v33, &v33 + 1, a3, a4);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    *a5 = v42[0] != 0;
    v9 = HIDWORD(v33);
    if (HIDWORD(v33) <= 0xC)
    {
      v10 = v33;
      if (v33 <= *a2 + 1)
      {
        v11 = a1 + 1;
        *a1 = HIDWORD(v33);
        if (v9)
        {
          v12 = 0;
          v13 = 0;
          do
          {
            v14 = v42[v12 + 1] << v12;
            v42[v12 + 1] = v13;
            v13 += v14;
            ++v12;
          }

          while (v9 != v12);
        }

        if (v10)
        {
          v15 = v43;
          v16 = v10;
          v17 = a1 + 1;
          do
          {
            v18 = *v15++;
            v19 = v9 + 1 - v18;
            if (v18)
            {
              v20 = v19;
            }

            else
            {
              v20 = 0;
            }

            *v17++ = v20;
            --v16;
          }

          while (v16);
          v38 = 0;
          v39 = 0;
          v41 = 0;
          v40 = 0;
          v34 = 0;
          v35 = 0;
          v37 = 0;
          v21 = v10;
          v22 = (a1 + 1);
          v36 = 0;
          do
          {
            v23 = *v22;
            v22 += 8;
            ++*(&v38 + v23);
            --v21;
          }

          while (v21);
        }

        else
        {
          v38 = 0;
          v39 = 0;
          v41 = 0;
          v40 = 0;
          v34 = 0;
          v35 = 0;
          v37 = 0;
          v36 = 0;
        }

        v24 = &v34 + v9;
        v24[1] = 0;
        if (v9)
        {
          v25 = 0;
          v26 = &v38 + v9;
          do
          {
            *v24-- = v25;
            v27 = *v26--;
            v25 = (v27 + v25) >> 1;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
        }

        if (v10)
        {
          v28 = v10;
          do
          {
            v29 = *v11;
            v30 = *v11;
            v31 = *(&v34 + v30);
            *(&v34 + v30) = v31 + 1;
            if (v30)
            {
              *v11 = (v31 << -v30) | v29;
            }

            ++v11;
            --v28;
          }

          while (v28);
        }

        *a2 = v10 - 1;
      }

      else
      {
        result = -48;
      }
    }

    else
    {
      result = -44;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_243904864(void *a1, unsigned int *a2, unsigned int a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  v130 = *MEMORY[0x277D85DE8];
  v6 = -a5 & 3;
  v7 = a6 - v6;
  if (a6 >= v6)
  {
    v8 = (a5 + v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (v7 >> 8 < 0x13)
  {
    result = -66;
    goto LABEL_115;
  }

  if (a3 > 0xFF)
  {
    result = -46;
    goto LABEL_115;
  }

  v14 = v8 + 2;
  v15 = a3 + 1;
  bzero(v8, 0x1300uLL);
  v16 = a2;
  v17 = a3 + 1;
  do
  {
    v19 = *v16++;
    v18 = v19;
    v20 = 189 - __clz(v19);
    if (v19 >= 0xA5)
    {
      v18 = v20;
    }

    ++LOWORD(v8[v18 + 1024]);
    --v17;
  }

  while (v17);
  v21 = 0;
  v22 = *(v8 + 2430);
  do
  {
    v23 = &v8[v21];
    v22 += LOWORD(v8[v21 + 1214]);
    *(v23 + 2428) = v22;
    *(v23 + 2429) = v22;
    --v21;
  }

  while (v21 != -191);
  v24 = 0;
  v25 = v8 + 4102;
  do
  {
    v26 = a2[v24];
    v27 = 189 - __clz(v26);
    if (v26 < 0xA5)
    {
      v27 = a2[v24];
    }

    v28 = 4 * v27;
    v29 = *&v25[v28];
    *&v25[v28] = v29 + 1;
    v30 = &v14[2 * v29];
    *v30 = v26;
    *(v30 + 6) = v24++;
  }

  while (v15 != v24);
  v31 = 0x3FFFFFFFFFFFFFE6;
  do
  {
    v32 = LOWORD(v8[v31 + 1215]);
    v33 = HIWORD(v8[v31 + 1215]) - v32;
    if (v33 >= 2)
    {
      sub_2439065F0(&v14[2 * v32], 0, (v33 - 1));
    }

    ++v31;
  }

  while (v31 * 4);
  v34 = 0;
  v35 = (a3 << 32) + 0x100000000;
  v36 = &v8[2 * a3 + 3];
  do
  {
    v37 = *(v36 - 1);
    --v34;
    v35 -= 0x100000000;
    v36 -= 4;
  }

  while (!v37);
  if (a4)
  {
    v38 = a4;
  }

  else
  {
    v38 = 11;
  }

  v39 = a3 + v34 + 1;
  v40 = a3 + v34 + 256;
  v8[514] = *(v36 - 1) + v37;
  *v36 = 256;
  v36[4] = 256;
  v41 = a3 + v34 + 2;
  if (v39 >= 2)
  {
    v42 = 0;
    v43 = a3 - 1 + v34;
    if (v40 <= 257)
    {
      v44 = 257;
    }

    else
    {
      v44 = v40;
    }

    v45 = vdupq_n_s64(v44 - 257);
    v46 = v8 + 522;
    v47 = (v44 - 253) & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v48 = vdupq_n_s64(v42);
      v49 = vmovn_s64(vcgeq_u64(v45, vorrq_s8(v48, xmmword_24398C940)));
      if (vuzp1_s16(v49, *v45.i8).u8[0])
      {
        *(v46 - 6) = 0x40000000;
      }

      if (vuzp1_s16(v49, *&v45).i8[2])
      {
        *(v46 - 4) = 0x40000000;
      }

      if (vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, vorrq_s8(v48, xmmword_24398E4E0)))).i32[1])
      {
        *(v46 - 2) = 0x40000000;
        *v46 = 0x40000000;
      }

      v42 += 4;
      v46 += 8;
    }

    while (v47 != v42);
    *v8 = 0x80000000;
    v50 = 257;
    if (v40 <= 257)
    {
      v51 = 257;
    }

    else
    {
      v51 = v40;
    }

    v52 = v51 - 256;
    v53 = v8 + 516;
    v54 = 256;
    do
    {
      v55 = v14[2 * v43];
      v56 = v14[2 * v54];
      v57 = v55 >= v56;
      v58 = v55 < v56;
      if (v57)
      {
        v59 = v54 + 1;
      }

      else
      {
        v59 = v54;
      }

      if (!v57)
      {
        v54 = v43;
      }

      v60 = v43 - v58;
      v61 = v14[2 * v60];
      v62 = v14[2 * v59];
      v63 = v61 >= v62;
      if (v61 < v62)
      {
        v64 = v60;
      }

      else
      {
        v64 = v59;
      }

      v65 = &v14[2 * v54];
      v66 = &v14[2 * v64];
      v67 = !v63;
      *v53 = *v66 + *v65;
      v53 += 2;
      if (v63)
      {
        v54 = v59 + 1;
      }

      else
      {
        v54 = v59;
      }

      v43 = v60 - v67;
      *(v66 + 2) = v50;
      *(v65 + 2) = v50++;
      --v52;
    }

    while (v52);
    HIBYTE(v14[2 * v40 + 1]) = 0;
    v68 = &v8[2 * a3 + 513 + 2 * v34] + 3;
    do
    {
      *v68 = HIBYTE(v14[2 * *(v68 - 3) + 1]) + 1;
      v68 -= 8;
      --v40;
    }

    while (v40 > 256);
  }

  else
  {
    *v8 = 0x80000000;
    HIBYTE(v14[2 * v40 + 1]) = 0;
  }

  if ((v39 & 0x8000000000000000) == 0)
  {
    v69 = v41;
    v70 = v8 + 15;
    do
    {
      *v70 = HIBYTE(v14[2 * *(v70 - 3) + 1]) + 1;
      v70 += 8;
      --v69;
    }

    while (v69);
  }

  v71 = HIBYTE(v14[2 * v39 + 1]);
  v72 = v71;
  v73 = v71 - v38;
  if (v71 > v38)
  {
    v72 = v38;
    v74 = *(v14 + (v35 >> 29) + 7);
    if (v38 >= v74)
    {
      v75 = 0;
      v79 = v35 >> 32;
      LODWORD(v34) = a3 + v34 + 1;
    }

    else
    {
      v75 = 0;
      v34 = a3 + v34 + 1;
      v76 = v34 << 32;
      v77 = &v8[2 * v34 + 3] + 3;
      do
      {
        v75 += (1 << v73) + (-1 << (v71 - v74));
        *v77 = v38;
        v78 = *(v77 - 8);
        v77 -= 8;
        LOBYTE(v74) = v78;
        v76 -= 0x100000000;
        LODWORD(v34) = v34 - 1;
      }

      while (v38 < v78);
      v79 = v76 >> 32;
    }

    v80 = v34 + 1;
    v81 = v79 + 1;
    v82 = &v8[2 * v79 + 3] + 3;
    do
    {
      v83 = *v82;
      v82 -= 8;
      --v80;
      --v81;
    }

    while (v38 == v83);
    v84 = v75 >> v73;
    v127 = 0xF0F0F0F0F0F0F0F0;
    *&v85 = 0xF0F0F0F0F0F0F0F0;
    *(&v85 + 1) = 0xF0F0F0F0F0F0F0F0;
    v125 = v85;
    v126 = v85;
    v124 = v85;
    if ((v81 & 0x8000000000000000) == 0)
    {
      v86 = &v8[2 * v80 + 3] + 3;
      v87 = v38;
      do
      {
        v89 = *v86;
        v86 -= 8;
        v88 = v89;
        if (v87 <= v89)
        {
          v90 = v80;
        }

        else
        {
          *(&v124 + v38 - v88) = v80;
          v90 = v80;
          v87 = v88;
        }

        --v80;
      }

      while (v90 > 0);
    }

    if (v84 >= 1)
    {
      do
      {
        v91 = __clz(v84);
        if (v91 == 31)
        {
LABEL_85:
          v92 = 1;
        }

        else
        {
          v92 = 32 - v91;
          while (1)
          {
            v93 = *(&v124 + v92);
            v94 = v92 - 1;
            if (v93 != -252645136)
            {
              v95 = *(&v124 + v94);
              if (v95 == -252645136 || v14[2 * v93] <= (2 * v14[2 * v95]))
              {
                break;
              }
            }

            --v92;
            if ((v94 & 0xFFFFFFFE) == 0)
            {
              goto LABEL_85;
            }
          }

          if (v92 > 0xC)
          {
            goto LABEL_90;
          }
        }

        do
        {
          if (*(&v124 + v92) != -252645136)
          {
            break;
          }

          ++v92;
        }

        while (v92 != 13);
LABEL_90:
        v96 = v92 - 1;
        v97 = *(&v124 + v92);
        v98 = *(&v124 + (v92 - 1));
        ++HIBYTE(v14[2 * v97 + 1]);
        if (v98 == -252645136)
        {
          v99 = v97;
        }

        else
        {
          v99 = v98;
        }

        *(&v124 + v96) = v99;
        v100 = -252645136;
        if (v97)
        {
          v101 = v97 - 1;
          if (v38 - v92 == HIBYTE(v14[2 * v101 + 1]))
          {
            v100 = v101;
          }

          else
          {
            v100 = -252645136;
          }
        }

        v102 = -1 << v96;
        *(&v124 + v92) = v100;
        v103 = __OFADD__(v102, v84);
        v84 += v102;
      }

      while (!((v84 < 0) ^ v103 | (v84 == 0)));
    }

    if (v84 < 0)
    {
      v118 = DWORD1(v124);
      do
      {
        v119 = v118 + 1;
        v120 = v118 + 252645136;
        v121 = v84;
        while (v120)
        {
          --HIBYTE(v14[2 * v119++ + 1]);
          ++v120;
          v57 = __CFADD__(v121++, 1);
          if (v57)
          {
            goto LABEL_100;
          }
        }

        v118 = v81 + 2;
        v122 = &v8[2 * v81 + 3] + 3;
        LODWORD(v81) = v81 + 1;
        do
        {
          v123 = *v122;
          v122 -= 8;
          LODWORD(v81) = v81 - 1;
          --v118;
        }

        while (v38 == v123);
        --HIBYTE(v14[2 * v118 + 1]);
        v84 = v121 + 1;
      }

      while (v121 <= -2);
    }
  }

LABEL_100:
  if (v72 <= 0xC)
  {
    v124 = 0uLL;
    WORD4(v125) = 0;
    *&v125 = 0;
    memset(v128, 0, sizeof(v128));
    v129 = 0;
    if ((v39 & 0x8000000000000000) == 0)
    {
      v104 = v41;
      v105 = v8 + 15;
      do
      {
        v106 = *v105;
        v105 += 8;
        ++*(&v124 + v106);
        --v104;
      }

      while (v104);
    }

    if (v72)
    {
      v107 = 0;
      v108 = v72;
      do
      {
        *(v128 + v108) = v107;
        v107 = (*(&v124 + v108) + v107) >> 1;
      }

      while (v108-- > 1);
    }

    v110 = v8 + 15;
    v111 = a3 + 1;
    do
    {
      v112 = *(v110 - 1);
      v113 = *v110;
      v110 += 8;
      a1[v112 + 1] = v113;
      --v111;
    }

    while (v111);
    v114 = 1;
    do
    {
      v115 = a1[v114];
      v116 = *(v128 + v115);
      *(v128 + v115) = v116 + 1;
      if (v115)
      {
        a1[v114] = (v116 << -v115) | v115;
      }

      ++v114;
      --v15;
    }

    while (v15);
    result = v72;
    *a1 = v72;
  }

  else
  {
    result = -1;
  }

LABEL_115:
  v117 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_243904F94(uint64_t a1, unsigned int *a2, int a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  v3 = 0;
  v4 = (a1 + 8);
  v5 = (a3 + 1);
  do
  {
    v7 = *v4;
    v4 += 8;
    v6 = v7;
    v8 = *a2++;
    v3 += v6 * v8;
    --v5;
  }

  while (v5);
  return v3 >> 3;
}

BOOL sub_243904FC8(uint64_t a1, int *a2, int a3)
{
  if (a3 < 0)
  {
    return 1;
  }

  v3 = 0;
  v4 = (a1 + 8);
  v5 = (a3 + 1);
  do
  {
    v6 = *a2++;
    v9 = v6 == 0;
    v8 = *v4;
    v4 += 8;
    v7 = v8;
    v9 = !v9 && v7 == 0;
    v10 = v9;
    v3 |= v10;
    --v5;
  }

  while (v5);
  return v3 == 0;
}

uint64_t sub_243905010(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 <= 8)
  {
    return 0;
  }

  v7 = *a5;
  v5 = a5 + 1;
  v6 = v7;
  v8 = a1 + a2 - 8;
  if (((v7 * a4) >> 3) + 8 > a2 || v6 >= 0xC)
  {
    if (a4 <= 0)
    {
      v10 = -(-a4 & 3);
    }

    else
    {
      v10 = a4 & 3;
    }

    if (v10 < 1)
    {
      v12 = 0;
      v17 = 0;
      v18 = a1;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = (a3 + a4 - 1);
      v14 = v10 + 1;
      do
      {
        v15 = *v13--;
        v16 = v5[v15];
        v12 = (v12 >> v16) | v16 & 0xFFFFFFFFFFFFFF00;
        v11 += v16;
        --v14;
      }

      while (v14 > 1);
      LODWORD(a4) = a4 - v10;
      v17 = v11 & 7;
      *a1 = v12 >> -v11;
      v18 = (a1 + (v11 >> 3));
      if (v18 > v8)
      {
        v18 = (a1 + a2 - 8);
      }
    }

    if ((a4 & 7) != 0)
    {
      for (i = 0; i != -3; --i)
      {
        v32 = v5[*(a3 + a4 - 1 + i)];
        v12 = (v12 >> v32) | v32;
        LOBYTE(v17) = v32 + v17;
      }

      a4 = a4 - 4;
      v33 = v5[*(a3 + a4)];
      v12 = (v12 >> v33) | v33 & 0xFFFFFFFFFFFFFF00;
      v34 = v33 + v17;
      v35 = v34;
      v36 = v12 >> -v34;
      v17 = v34 & 7;
      *v18 = v36;
      v18 = (v18 + (v35 >> 3));
      if (v18 > v8)
      {
        v18 = (a1 + a2 - 8);
      }
    }

    if (a4 >= 1)
    {
      v37 = a4;
      v38 = a3 + a4;
      v39 = v38 - 1;
      v40 = v38 - 5;
      do
      {
        for (j = 0; j != -3; --j)
        {
          v42 = v5[*(v39 + j)];
          v12 = (v12 >> v42) | v42;
          LOBYTE(v17) = v42 + v17;
        }

        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = v5[*(v37 + a3 - 4)];
        v47 = (v12 >> v46) | v46 & 0xFFFFFFFFFFFFFF00;
        v48 = v46 + v17;
        *v18 = v47 >> -v48;
        v49 = (v18 + (v48 >> 3));
        do
        {
          v50 = v5[*(v40 + v43)];
          v45 = (v45 >> v50) | v50;
          v44 += v50;
          --v43;
        }

        while (v43 != -3);
        v51 = v48 & 7;
        if (v49 > v8)
        {
          v49 = v8;
        }

        v52 = v5[*(a3 - 8 + v37)];
        v53 = v52 + v44;
        v12 = (v45 >> v52) | v52 & 0xFFFFFFFFFFFFFF00 | (v47 >> v53);
        v54 = v53 + v51;
        v55 = v54;
        v56 = v12 >> -v54;
        v17 = v54 & 7;
        *v49 = v56;
        v18 = (v49 + (v55 >> 3));
        if (v18 > v8)
        {
          v18 = v8;
        }

        v39 -= 8;
        v40 -= 8;
        v57 = v37 <= 8;
        v37 -= 8;
      }

      while (!v57);
    }
  }

  else if (v6 <= 8)
  {
    if (v6 == 7)
    {
      if (a4 <= 0)
      {
        v75 = -(-a4 & 7);
      }

      else
      {
        v75 = a4 & 7;
      }

      if (v75 < 1)
      {
        v12 = 0;
        v17 = 0;
        v18 = a1;
      }

      else
      {
        v76 = 0;
        v12 = 0;
        v77 = (a3 + a4 - 1);
        v78 = v75 + 1;
        do
        {
          v79 = *v77--;
          v80 = v5[v79];
          v12 = (v12 >> v80) | v80 & 0xFFFFFFFFFFFFFF00;
          v76 += v80;
          --v78;
        }

        while (v78 > 1);
        LODWORD(a4) = a4 - v75;
        v17 = v76 & 7;
        *a1 = v12 >> -v76;
        v18 = (a1 + (v76 >> 3));
      }

      if ((a4 & 0xF) != 0)
      {
        for (k = 0; k != -7; --k)
        {
          v137 = v5[*(a3 + a4 - 1 + k)];
          v12 = (v12 >> v137) | v137;
          LOBYTE(v17) = v137 + v17;
        }

        a4 = a4 - 8;
        v138 = v5[*(a3 + a4)];
        v12 = (v12 >> v138) | v138 & 0xFFFFFFFFFFFFFF00;
        v139 = v138 + v17;
        v140 = v139;
        v141 = v12 >> -v139;
        v17 = v139 & 7;
        *v18 = v141;
        v18 = (v18 + (v140 >> 3));
      }

      if (a4 >= 1)
      {
        v142 = a4;
        v143 = a3 + a4;
        v144 = v143 - 1;
        v145 = v143 - 9;
        do
        {
          for (m = 0; m != -7; --m)
          {
            v147 = v5[*(v144 + m)];
            v12 = (v12 >> v147) | v147;
            LOBYTE(v17) = v147 + v17;
          }

          v148 = 0;
          v149 = 0;
          v150 = 0;
          v151 = v5[*(v142 + a3 - 8)];
          v152 = (v12 >> v151) | v151 & 0xFFFFFFFFFFFFFF00;
          v153 = v151 + v17;
          *v18 = v152 >> -v153;
          do
          {
            v154 = v5[*(v145 + v148)];
            v150 = (v150 >> v154) | v154;
            v149 += v154;
            --v148;
          }

          while (v148 != -7);
          v155 = (v18 + (v153 >> 3));
          v156 = v5[*(a3 - 16 + v142)];
          v157 = v156 + v149;
          v12 = (v150 >> v156) | v156 & 0xFFFFFFFFFFFFFF00 | (v152 >> v157);
          v158 = v157 + (v153 & 7);
          v159 = v158;
          v160 = v12 >> -v158;
          v17 = v158 & 7;
          *v155 = v160;
          v18 = (v155 + (v159 >> 3));
          v144 -= 16;
          v145 -= 16;
          v57 = v142 <= 16;
          v142 -= 16;
        }

        while (!v57);
      }
    }

    else
    {
      if (v6 != 8)
      {
LABEL_70:
        v81 = a4 % 9;
        if (a4 % 9 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v82 = 0;
          v12 = 0;
          v83 = (a3 + a4 - 1);
          v84 = v81 + 1;
          do
          {
            v85 = *v83--;
            v86 = v5[v85];
            v12 = (v12 >> v86) | v86 & 0xFFFFFFFFFFFFFF00;
            v82 += v86;
            --v84;
          }

          while (v84 > 1);
          LODWORD(a4) = a4 - v81;
          v17 = v82 & 7;
          *a1 = v12 >> -v82;
          v18 = (a1 + (v82 >> 3));
        }

        HIDWORD(v209) = 954437177 * a4 + 238609294;
        LODWORD(v209) = HIDWORD(v209);
        if ((v209 >> 1) >= 0xE38E38F)
        {
          v210 = a4;
          for (n = -1; n != -9; --n)
          {
            v212 = v5[*(a3 + a4 + n)];
            v12 = (v12 >> v212) | v212;
            LOBYTE(v17) = v212 + v17;
          }

          LODWORD(a4) = a4 - 9;
          v213 = v5[*(a3 + v210 - 9)];
          v12 = (v12 >> v213) | v213;
          v214 = v213 + v17;
          v215 = v214;
          v216 = v12 >> -v214;
          v17 = v214 & 7;
          *v18 = v216;
          v18 = (v18 + (v215 >> 3));
        }

        if (a4 >= 1)
        {
          v217 = a4;
          v218 = a3 + a4;
          do
          {
            for (ii = -1; ii != -9; --ii)
            {
              v220 = v5[*(v218 + ii)];
              v12 = (v12 >> v220) | v220;
              LOBYTE(v17) = v220 + v17;
            }

            v221 = 0;
            v222 = 0;
            v223 = v5[*(v217 + a3 - 9)];
            v224 = (v12 >> v223) | v223;
            v225 = v223 + v17;
            *v18 = v224 >> -v225;
            for (jj = -10; jj != -18; --jj)
            {
              v227 = v5[*(v218 + jj)];
              v222 = (v222 >> v227) | v227;
              v221 += v227;
            }

            v228 = (v18 + (v225 >> 3));
            v229 = v5[*(a3 - 18 + v217)];
            v230 = v229 + v221;
            v12 = (v222 >> v229) | (v224 >> v230) | v229;
            v231 = v230 + (v225 & 7);
            v232 = v231;
            v233 = v12 >> -v231;
            v17 = v231 & 7;
            *v228 = v233;
            v18 = (v228 + (v232 >> 3));
            v218 -= 18;
            v57 = v217 <= 18;
            v217 -= 18;
          }

          while (!v57);
        }

        goto LABEL_48;
      }

      v25 = a4 % 7;
      if (a4 % 7 < 1)
      {
        v12 = 0;
        v17 = 0;
        v18 = a1;
      }

      else
      {
        v26 = 0;
        v12 = 0;
        v27 = (a3 + a4 - 1);
        v28 = v25 + 1;
        do
        {
          v29 = *v27--;
          v30 = v5[v29];
          v12 = (v12 >> v30) | v30 & 0xFFFFFFFFFFFFFF00;
          v26 += v30;
          --v28;
        }

        while (v28 > 1);
        LODWORD(a4) = a4 - v25;
        v17 = v26 & 7;
        *a1 = v12 >> -v26;
        v18 = (a1 + (v26 >> 3));
      }

      HIDWORD(v185) = -1227133513 * a4 + 306783378;
      LODWORD(v185) = HIDWORD(v185);
      if ((v185 >> 1) >= 0x12492493)
      {
        v186 = a4;
        for (kk = -1; kk != -7; --kk)
        {
          v188 = v5[*(a3 + a4 + kk)];
          v12 = (v12 >> v188) | v188;
          LOBYTE(v17) = v188 + v17;
        }

        LODWORD(a4) = a4 - 7;
        v189 = v5[*(a3 + v186 - 7)];
        v12 = (v12 >> v189) | v189 & 0xFFFFFFFFFFFFFF00;
        v190 = v189 + v17;
        v191 = v190;
        v192 = v12 >> -v190;
        v17 = v190 & 7;
        *v18 = v192;
        v18 = (v18 + (v191 >> 3));
      }

      if (a4 >= 1)
      {
        v193 = a4;
        v194 = a3 + a4;
        do
        {
          for (mm = -1; mm != -7; --mm)
          {
            v196 = v5[*(v194 + mm)];
            v12 = (v12 >> v196) | v196;
            LOBYTE(v17) = v196 + v17;
          }

          v197 = 0;
          v198 = 0;
          v199 = v5[*(v193 + a3 - 7)];
          v200 = (v12 >> v199) | v199 & 0xFFFFFFFFFFFFFF00;
          v201 = v199 + v17;
          *v18 = v200 >> -v201;
          for (nn = -8; nn != -14; --nn)
          {
            v203 = v5[*(v194 + nn)];
            v198 = (v198 >> v203) | v203;
            v197 += v203;
          }

          v204 = (v18 + (v201 >> 3));
          v205 = v5[*(a3 - 14 + v193)];
          v206 = (v198 >> v205) | v205 & 0xFFFFFFFFFFFFFF00;
          LOBYTE(v205) = v205 + v197;
          v12 = v206 | (v200 >> v205);
          LOBYTE(v205) = v205 + (v201 & 7);
          v207 = v205;
          v208 = v12 >> -v205;
          v17 = v205 & 7;
          *v204 = v208;
          v18 = (v204 + (v207 >> 3));
          v194 -= 14;
          v57 = v193 <= 14;
          v193 -= 14;
        }

        while (!v57);
      }
    }
  }

  else
  {
    switch(v6)
    {
      case 9:
        v63 = a4 % 6;
        if (a4 % 6 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v64 = 0;
          v12 = 0;
          v65 = (a3 + a4 - 1);
          v66 = v63 + 1;
          do
          {
            v67 = *v65--;
            v68 = v5[v67];
            v12 = (v12 >> v68) | v68 & 0xFFFFFFFFFFFFFF00;
            v64 += v68;
            --v66;
          }

          while (v66 > 1);
          LODWORD(a4) = a4 - v63;
          v17 = v64 & 7;
          *a1 = v12 >> -v64;
          v18 = (a1 + (v64 >> 3));
        }

        HIDWORD(v87) = -1431655765 * a4 + 715827880;
        LODWORD(v87) = HIDWORD(v87);
        if ((v87 >> 2) >= 0x15555555)
        {
          v88 = a4;
          for (i1 = -1; i1 != -6; --i1)
          {
            v90 = v5[*(a3 + a4 + i1)];
            v12 = (v12 >> v90) | v90;
            LOBYTE(v17) = v90 + v17;
          }

          LODWORD(a4) = a4 - 6;
          v91 = v5[*(a3 + v88 - 6)];
          v12 = (v12 >> v91) | v91 & 0xFFFFFFFFFFFFFF00;
          v92 = v91 + v17;
          v93 = v92;
          v94 = v12 >> -v92;
          v17 = v92 & 7;
          *v18 = v94;
          v18 = (v18 + (v93 >> 3));
        }

        if (a4 >= 1)
        {
          v95 = a4;
          v96 = a3 + a4;
          do
          {
            for (i2 = -1; i2 != -6; --i2)
            {
              v98 = v5[*(v96 + i2)];
              v12 = (v12 >> v98) | v98;
              LOBYTE(v17) = v98 + v17;
            }

            v99 = 0;
            v100 = 0;
            v101 = v5[*(v95 + a3 - 6)];
            v102 = (v12 >> v101) | v101 & 0xFFFFFFFFFFFFFF00;
            v103 = v101 + v17;
            *v18 = v102 >> -v103;
            for (i3 = -7; i3 != -12; --i3)
            {
              v105 = v5[*(v96 + i3)];
              v100 = (v100 >> v105) | v105;
              v99 += v105;
            }

            v106 = (v18 + (v103 >> 3));
            v107 = v5[*(a3 - 12 + v95)];
            v108 = (v100 >> v107) | v107 & 0xFFFFFFFFFFFFFF00;
            LOBYTE(v107) = v107 + v99;
            v12 = v108 | (v102 >> v107);
            LOBYTE(v107) = v107 + (v103 & 7);
            v109 = v107;
            v110 = v12 >> -v107;
            v17 = v107 & 7;
            *v106 = v110;
            v18 = (v106 + (v109 >> 3));
            v96 -= 12;
            v57 = v95 <= 12;
            v95 -= 12;
          }

          while (!v57);
        }

        break;
      case 10:
        v69 = a4 % 5;
        if (a4 % 5 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v70 = 0;
          v12 = 0;
          v71 = (a3 + a4 - 1);
          v72 = v69 + 1;
          do
          {
            v73 = *v71--;
            v74 = v5[v73];
            v12 = (v12 >> v74) | v74 & 0xFFFFFFFFFFFFFF00;
            v70 += v74;
            --v72;
          }

          while (v72 > 1);
          LODWORD(a4) = a4 - v69;
          v17 = v70 & 7;
          *a1 = v12 >> -v70;
          v18 = (a1 + (v70 >> 3));
        }

        HIDWORD(v111) = -858993459 * a4 + 429496728;
        LODWORD(v111) = HIDWORD(v111);
        if ((v111 >> 1) >= 0x19999999)
        {
          v112 = a4;
          for (i4 = -1; i4 != -5; --i4)
          {
            v114 = v5[*(a3 + a4 + i4)];
            v12 = (v12 >> v114) | v114;
            LOBYTE(v17) = v114 + v17;
          }

          LODWORD(a4) = a4 - 5;
          v115 = v5[*(a3 + v112 - 5)];
          v12 = (v12 >> v115) | v115;
          v116 = v115 + v17;
          v117 = v116;
          v118 = v12 >> -v116;
          v17 = v116 & 7;
          *v18 = v118;
          v18 = (v18 + (v117 >> 3));
        }

        if (a4 >= 1)
        {
          v119 = a4;
          v120 = a3 + a4;
          do
          {
            for (i5 = -1; i5 != -5; --i5)
            {
              v122 = v5[*(v120 + i5)];
              v12 = (v12 >> v122) | v122;
              LOBYTE(v17) = v122 + v17;
            }

            v123 = 0;
            v124 = 0;
            v125 = v5[*(v119 + a3 - 5)];
            v126 = (v12 >> v125) | v125;
            v127 = v125 + v17;
            *v18 = v126 >> -v127;
            for (i6 = -6; i6 != -10; --i6)
            {
              v129 = v5[*(v120 + i6)];
              v124 = (v124 >> v129) | v129;
              v123 += v129;
            }

            v130 = (v18 + (v127 >> 3));
            v131 = v5[*(a3 - 10 + v119)];
            v132 = v131 + v123;
            v12 = (v124 >> v131) | (v126 >> v132) | v131;
            v133 = v132 + (v127 & 7);
            v134 = v133;
            v135 = v12 >> -v133;
            v17 = v133 & 7;
            *v130 = v135;
            v18 = (v130 + (v134 >> 3));
            v120 -= 10;
            v57 = v119 <= 10;
            v119 -= 10;
          }

          while (!v57);
        }

        break;
      case 11:
        v19 = a4 % 5;
        if (a4 % 5 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v20 = 0;
          v12 = 0;
          v21 = (a3 + a4 - 1);
          v22 = v19 + 1;
          do
          {
            v23 = *v21--;
            v24 = v5[v23];
            v12 = (v12 >> v24) | v24 & 0xFFFFFFFFFFFFFF00;
            v20 += v24;
            --v22;
          }

          while (v22 > 1);
          LODWORD(a4) = a4 - v19;
          v17 = v20 & 7;
          *a1 = v12 >> -v20;
          v18 = (a1 + (v20 >> 3));
        }

        HIDWORD(v161) = -858993459 * a4 + 429496728;
        LODWORD(v161) = HIDWORD(v161);
        if ((v161 >> 1) >= 0x19999999)
        {
          v162 = a4;
          for (i7 = -1; i7 != -5; --i7)
          {
            v164 = v5[*(a3 + a4 + i7)];
            v12 = (v12 >> v164) | v164;
            LOBYTE(v17) = v164 + v17;
          }

          LODWORD(a4) = a4 - 5;
          v165 = v5[*(a3 + v162 - 5)];
          v12 = (v12 >> v165) | v165 & 0xFFFFFFFFFFFFFF00;
          v166 = v165 + v17;
          v167 = v166;
          v168 = v12 >> -v166;
          v17 = v166 & 7;
          *v18 = v168;
          v18 = (v18 + (v167 >> 3));
        }

        if (a4 >= 1)
        {
          v169 = a4;
          v170 = a3 + a4;
          do
          {
            for (i8 = -1; i8 != -5; --i8)
            {
              v172 = v5[*(v170 + i8)];
              v12 = (v12 >> v172) | v172;
              LOBYTE(v17) = v172 + v17;
            }

            v173 = 0;
            v174 = 0;
            v175 = v5[*(v169 + a3 - 5)];
            v176 = (v12 >> v175) | v175 & 0xFFFFFFFFFFFFFF00;
            v177 = v175 + v17;
            *v18 = v176 >> -v177;
            for (i9 = -6; i9 != -10; --i9)
            {
              v179 = v5[*(v170 + i9)];
              v174 = (v174 >> v179) | v179;
              v173 += v179;
            }

            v180 = (v18 + (v177 >> 3));
            v181 = v5[*(a3 - 10 + v169)];
            v182 = (v174 >> v181) | v181 & 0xFFFFFFFFFFFFFF00;
            LOBYTE(v181) = v181 + v173;
            v12 = v182 | (v176 >> v181);
            LOBYTE(v181) = v181 + (v177 & 7);
            v183 = v181;
            v184 = v12 >> -v181;
            v17 = v181 & 7;
            *v180 = v184;
            v18 = (v180 + (v183 >> 3));
            v170 -= 10;
            v57 = v169 <= 10;
            v169 -= 10;
          }

          while (!v57);
        }

        break;
      default:
        goto LABEL_70;
    }
  }

LABEL_48:
  v58 = (v12 >> 1) | 0x8000000000000000;
  v59 = v17 + 1;
  v60 = (v17 + 1);
  *v18 = v58 >> -v60;
  v61 = v18 + (v60 >> 3);
  if (v61 > v8)
  {
    v61 = v8;
  }

  if (v61 >= v8)
  {
    return 0;
  }

  if ((v59 & 7) != 0)
  {
    return v61 - a1 + 1;
  }

  else
  {
    return v61 - a1;
  }
}

unint64_t sub_243905E64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  result = 0;
  if (a2 >= 0x11 && a4 >= 0xC)
  {
    v11 = (a4 + 3) >> 2;
    v12 = a1 + 6;
    result = sub_243905010((a1 + 6), a2 - 6, a3, v11, a5);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      if (result - 0x10000 < 0xFFFFFFFFFFFF0001)
      {
        return 0;
      }

      v13 = a1 + a2;
      *a1 = result;
      v14 = v12 + result;
      result = sub_243905010((v12 + result), v13 - (v12 + result), a3 + v11, (a4 + 3) >> 2, a5);
      if (result <= 0xFFFFFFFFFFFFFF88)
      {
        if (result - 0x10000 < 0xFFFFFFFFFFFF0001)
        {
          return 0;
        }

        *(a1 + 2) = result;
        v15 = (v14 + result);
        result = sub_243905010(v15, v13 - v15, a3 + v11 + v11, (a4 + 3) >> 2, a5);
        if (result <= 0xFFFFFFFFFFFFFF88)
        {
          if (result - 0x10000 < 0xFFFFFFFFFFFF0001)
          {
            return 0;
          }

          v16 = a3 + a4;
          *(a1 + 4) = result;
          v17 = v15 + result;
          result = sub_243905010((v15 + result), v13 - (v15 + result), a3 + v11 + v11 + v11, v16 - (a3 + v11 + v11 + v11), a5);
          if (result <= 0xFFFFFFFFFFFFFF88)
          {
            if (result - 0x10000 < 0xFFFFFFFFFFFF0001)
            {
              return 0;
            }

            return &v17[result - a1];
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_243905FBC(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unint64_t a5, void *a6, unsigned int *a7, char a8)
{
  v9 = a1;
  if ((a8 & 2) != 0)
  {
    v15 = 0;
    if (a3 != -1)
    {
      v16 = a7;
      v17 = a3 + 1;
      do
      {
        if (*v16++)
        {
          ++v15;
        }

        --v17;
      }

      while (v17);
    }

    v19 = 32 - __clz(v15);
    if (v19 <= a1)
    {
      v32 = (a6 + 1);
      v33 = a3 + 1;
      v21 = -2;
      v34 = v19;
      v20 = a1;
      while (1)
      {
        v22 = sub_243904864(a6, a7, a3, v19, a4, a5);
        if (v22 <= 0xFFFFFFFFFFFFFF88)
        {
          if (v22 < v19 && v19 > v34)
          {
            return v20;
          }

          v23 = sub_24390414C((a4 + 748), a5 - 748, a6, a3, v22, a4, a5);
          if (v23 <= 0xFFFFFFFFFFFFFF88)
          {
            v24 = 0;
            if ((a3 & 0x80000000) == 0)
            {
              v25 = v32;
              v26 = v33;
              v27 = a7;
              do
              {
                v29 = *v25;
                v25 += 8;
                v28 = v29;
                v30 = *v27++;
                v24 += v28 * v30;
                --v26;
              }

              while (v26);
              v24 >>= 3;
            }

            v31 = v24 + v23;
            if (v31 > v21 + 1)
            {
              return v20;
            }

            if (v31 >= v21)
            {
              v20 = v20;
            }

            else
            {
              v21 = v31;
              v20 = v19;
            }
          }
        }

        if (++v19 > v9)
        {
          return v20;
        }
      }
    }

    return a1;
  }

  else
  {

    return sub_243903580(a1, a2, a3, 1);
  }
}

uint64_t sub_2439061A8(unsigned __int8 *a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8, unint64_t a9, char *a10, int *a11, char a12)
{
  v66 = a5;
  v12 = -a8 & 7;
  v13 = a9 - v12;
  if (a9 >= v12)
  {
    v14 = a8 + v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (v13 >> 3 < 0x3E1)
  {
    return -66;
  }

  v15 = 0;
  if (!a2 || !a4)
  {
    return v15;
  }

  if (a4 > 0x20000)
  {
    return -72;
  }

  if (a6 > 0xC)
  {
    return -44;
  }

  if (a5 > 0xFF)
  {
    return -46;
  }

  if (!a5)
  {
    a5 = 255;
    v66 = 255;
  }

  if (a6)
  {
    v22 = a6;
  }

  else
  {
    v22 = 11;
  }

  v23 = (a12 & 4) == 0 || a11 == 0;
  v24 = v23;
  if (v23 || *a11 != 2)
  {
    __src = v24;
    v62 = v22;
    if (a4 >= 0xA000 && (a12 & 8) != 0)
    {
      v65 = a5;
      v25 = sub_243903D5C(v14, &v65, a3, 4096);
      v64 = v66;
      if (sub_243903D5C(v14, &v64, &a3[a4 - 4096], 4096) + v25 < 0x45)
      {
        return 0;
      }
    }

    v26 = sub_243904100(v14, &v66, a3, a4, (v14 + 3080), 0x1000uLL);
    v15 = v26;
    if (v26 > 0xFFFFFFFFFFFFFF88)
    {
      return v15;
    }

    if (v26 == a4)
    {
      *a1 = *a3;
      return 1;
    }

    if (v26 <= (a4 >> 7) + 4)
    {
      return 0;
    }

    if (a11)
    {
      v27 = *a11;
      if (*a11 == 1)
      {
        if ((v66 & 0x80000000) == 0)
        {
          v28 = 0;
          v29 = (a10 + 8);
          v30 = v66 + 1;
          v31 = v14;
          do
          {
            v32 = *v31++;
            v23 = v32 == 0;
            v34 = *v29;
            v29 += 8;
            v33 = v34;
            v36 = !v23 && v33 == 0;
            v28 |= v36;
            --v30;
          }

          while (v30);
          if (v28)
          {
            *a11 = 0;
            goto LABEL_56;
          }
        }

        v27 = 1;
      }

      v23 = v27 == 0;
      v37 = __src;
      if (v23)
      {
        v37 = 1;
      }

      if ((v37 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

LABEL_56:
    v38 = sub_243905FBC(v62, a4, v66, v14 + 3080, 0x1300uLL, (v14 + 1024), v14, a12);
    v15 = sub_243904864((v14 + 1024), v14, v66, v38, v14 + 3080, 0x1300uLL);
    if (v15 > 0xFFFFFFFFFFFFFF88)
    {
      return v15;
    }

    v63 = v66;
    bzero((v14 + 1024 + 8 * (v66 + 2)), 2056 - 8 * (v66 + 2));
    __srca = (v14 + 1024);
    v39 = sub_24390414C(a1, a2, v14 + 1024, v63, v15, v14 + 3080, 0x2ECuLL);
    v15 = v39;
    if (v39 > 0xFFFFFFFFFFFFFF88)
    {
      return v15;
    }

    if (a11)
    {
      if (*a11)
      {
        if ((v66 & 0x80000000) != 0)
        {
          goto LABEL_67;
        }

        v40 = 0;
        v41 = (a10 + 8);
        v42 = v66 + 1;
        v43 = v14;
        v44 = v42;
        do
        {
          v46 = *v41;
          v41 += 8;
          v45 = v46;
          v47 = *v43++;
          v40 += v45 * v47;
          --v44;
        }

        while (v44);
        v48 = 0;
        v49 = (v14 + 1032);
        do
        {
          v51 = *v49;
          v49 += 8;
          v50 = v51;
          v52 = *v14;
          v14 += 4;
          v48 += v50 * v52;
          --v42;
        }

        while (v42);
        if (v39 + 12 >= a4 || v40 >> 3 <= v39 + (v48 >> 3))
        {
LABEL_67:
          v53 = &a1[a2];
          v54 = a1;
          v55 = a1;
          v56 = a3;
          v57 = a4;
          v58 = a7;
          v59 = a10;
          return sub_243906738(v54, v55, v53, v56, v57, v58, v59);
        }

        goto LABEL_71;
      }

      if (v39 + 12 < a4)
      {
LABEL_71:
        *a11 = 0;
        goto LABEL_72;
      }
    }

    else if (v39 + 12 < a4)
    {
LABEL_72:
      if (a10)
      {
        memcpy(a10, __srca, 0x808uLL);
      }

      v55 = &a1[v15];
      v53 = &a1[a2];
      v54 = a1;
      v56 = a3;
      v57 = a4;
      v58 = a7;
      v59 = __srca;
      return sub_243906738(v54, v55, v53, v56, v57, v58, v59);
    }

    return 0;
  }

  return sub_243906738(a1, a1, &a1[a2], a3, a4, a7, a10);
}

uint64_t sub_2439065F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3 - a2;
  if (a3 - a2 >= 8)
  {
    v13 = a3;
    if (a3 > a2)
    {
      do
      {
        v14 = (v4 + 8 * v13);
        v15 = *v14;
        v16 = (v3 - 1);
        v17 = v13 - v3;
        v18 = 8 * v3;
        do
        {
          if (*(v4 + v18) > v15)
          {
            v16 = (v16 + 1);
            v19 = *(v4 + 8 * v16);
            *(v4 + 8 * v16) = *(v4 + v18);
            *(v4 + v18) = v19;
          }

          v18 += 8;
          --v17;
        }

        while (v17);
        v20 = *(v4 + 8 * (v16 + 1));
        *(v4 + 8 * (v16 + 1)) = *v14;
        *v14 = v20;
        if (v16 + 1 - v3 >= v13 - (v16 + 1))
        {
          result = sub_2439065F0(v4, (v16 + 2), v13);
          v13 = v16;
        }

        else
        {
          result = sub_2439065F0(v4, v3, v16);
          v3 = (v16 + 2);
        }
      }

      while (v3 < v13);
    }
  }

  else if (v5 >= 1)
  {
    v6 = result + 8 * a2;
    v7 = (v5 + 1);
    v8 = 1;
    do
    {
      v9 = *(v6 + 8 * v8);
      v10 = v8;
      while (1)
      {
        v11 = v10 - 1;
        v12 = (v6 + 8 * (v10 - 1));
        if (*v12 >= v9)
        {
          break;
        }

        *(v6 + 8 * v10--) = *v12;
        if (v11 + 1 <= 1)
        {
          LODWORD(v10) = 0;
          break;
        }
      }

      *(v6 + 8 * v10) = v9;
      ++v8;
    }

    while (v8 != v7);
  }

  return result;
}

unint64_t sub_243906738(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t *a7)
{
  v10 = a3 - a2;
  if (a6)
  {
    result = sub_243905E64(a2, v10, a4, a5, a7);
  }

  else
  {
    result = sub_243905010(a2, v10, a4, a5, a7);
  }

  v12 = a2 + result - a1;
  if (v12 >= a5 - 1)
  {
    v12 = 0;
  }

  if (!result)
  {
    v12 = 0;
  }

  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    return v12;
  }

  return result;
}

uint64_t sub_2439067B0(unint64_t a1)
{
  if (a1 > 0xFF00FF00FF00FEFFLL)
  {
    return -72;
  }

  v1 = a1 + (a1 >> 8);
  v2 = (0x20000 - a1) >> 11;
  if (a1 >= 0x20000)
  {
    v2 = 0;
  }

  result = v1 + v2;
  if (!(v1 + v2))
  {
    return -72;
  }

  return result;
}

uint64_t sub_2439067F8(__int128 *a1)
{
  v1 = *a1;
  if ((*a1 == 0) != (*(a1 + 1) == 0))
  {
    return 0;
  }

  if (v1)
  {
    v4 = v1(*(a1 + 2), 5240);
  }

  else
  {
    v4 = malloc(0x1478uLL);
  }

  v2 = v4;
  if (v4)
  {
    v6 = *a1;
    v7 = *(a1 + 2);
    bzero(v4, 0x1478uLL);
    *(v2 + 848) = v6;
    *(v2 + 864) = v7;
    sub_243906ACC(v2);
    *(v2 + 5208) = 0u;
    *(v2 + 5224) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
    *(v2 + 176) = 0u;
    *(v2 + 192) = 0u;
    *(v2 + 208) = 0u;
    *(v2 + 60) = 3;
    *(v2 + 48) = 1;
  }

  return v2;
}

unint64_t sub_2439068DC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 880))
    {
      return -64;
    }

    if (*(result + 656) <= result)
    {
      v2 = *(result + 664);
      sub_243906964(result);
      if (v2 > v1)
      {
        return 0;
      }
    }

    else
    {
      sub_243906964(result);
    }

    v3 = v1[107];
    if (v3)
    {
      v3(v1[108], v1);
    }

    else
    {
      free(v1);
    }

    return 0;
  }

  return result;
}

void sub_243906964(uint64_t a1)
{
  sub_243906ACC(a1);
  sub_243944718(*(a1 + 3704));
  *(a1 + 3704) = 0;
  v2 = *(a1 + 856);
  v3 = *(a1 + 864);
  v4 = *(a1 + 656);
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  if (v4)
  {
    if (v2)
    {

      v2(v3);
    }

    else
    {

      free(v4);
    }
  }
}

uint64_t sub_2439069F4(uint64_t result, __int128 *a2, int a3)
{
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  v3 = *a2;
  *(result + 16) = *(a2 + 12);
  *(result + 4) = v3;
  v4 = *(a2 + 9);
  *(result + 32) = *(a2 + 28);
  *(result + 40) = v4;
  *(result + 44) = a3;
  if ((*(a2 + 6) - 6) >= 0xFFFFFFFD)
  {
    if (*a2 > 0xEu)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 2;
  }

  *(result + 144) = v5;
  if (*(a2 + 6) < 7u)
  {
    v6 = 2;
  }

  else if (*a2 > 0x10u)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  *(result + 140) = v6;
  if (*(a2 + 6) < 7u)
  {
    v7 = 2;
  }

  else if (*a2 > 0x1Au)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  *(result + 96) = v7;
  *(result + 192) = 0x20000;
  if (a3 >= 10)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  *(result + 200) = v8;
  return result;
}

double sub_243906ACC(uint64_t a1)
{
  v2 = a1 + 3632;
  if (*(a1 + 3632))
  {
    v3 = *(a1 + 856);
    if (v3)
    {
      v3(*(a1 + 864));
    }

    else
    {
      free(*(a1 + 3632));
    }
  }

  sub_2439087B0(*(a1 + 3664));
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

__n128 sub_243906B2C@<Q0>(unsigned int *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  if (a3)
  {
    v6 = a2 == -1;
  }

  else
  {
    v6 = 0;
  }

  v7 = 513;
  if (!v6)
  {
    v7 = a2;
  }

  if (a4 != 2)
  {
    v7 = a2;
  }

  if (a4 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  if (a4 == 1)
  {
    v9 = a2;
  }

  else
  {
    v9 = v7;
  }

  if (v8 >= 0x40000001 || v9 >= 0x40000001)
  {
    v11 = *a1;
    if (v9 == -1)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v10 = 32 - __clz(v9 + v8 - 1);
    if (v9 + v8 < 0x40)
    {
      v10 = 6;
    }

    v11 = *a1;
    if (*a1 > v10)
    {
      *a1 = v10;
      v11 = v10;
    }
  }

  v12 = (1 << v11) + v8;
  v13 = v9 + v8;
  v14 = v12 >> 31;
  v15 = 32 - __clz(v12 - 1);
  if (v14)
  {
    v15 = 31;
  }

  if (1 << v11 < v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  if (v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = v11;
  }

  v18 = a1[1];
  v19 = v18 - (a1[6] > 5);
  if (a1[2] > v17 + 1)
  {
    a1[2] = v17 + 1;
  }

  if (v19 > v17)
  {
    a1[1] = v18 + v17 - v19;
  }

LABEL_33:
  if (v11 <= 9)
  {
    *a1 = 10;
  }

  v20 = a1[6];
  if (a4 == 2 && v20 - 3 >= 0xFFFFFFFE)
  {
    if (a1[2] >= 0x19)
    {
      a1[2] = 24;
    }

    if (a1[1] >= 0x19)
    {
      a1[1] = 24;
    }
  }

  if (a5 <= 1 && v20 - 6 >= 0xFFFFFFFD)
  {
    v21 = a1[3];
    v22 = v21 | 0x18;
    if (v21 >= 6)
    {
      v22 = 30;
    }

    if (v21 >= 4)
    {
      v23 = v22;
    }

    else
    {
      v23 = 28;
    }

    if (a1[2] > v23)
    {
      a1[2] = v23;
    }
  }

  *a6 = *a1;
  result = *(a1 + 3);
  *(a6 + 12) = result;
  return result;
}

double sub_243906CC8@<D0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a4 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  if (a2 != -1 || v7)
  {
    if (v7)
    {
      v9 = a2 == -1;
    }

    else
    {
      v9 = 0;
    }

    v10 = 500;
    if (!v9)
    {
      v10 = 0;
    }

    v8 = v7 + a2 + v10;
  }

  else
  {
    v8 = -1;
  }

  v25 = v5;
  v26 = v6;
  v11 = 3;
  if (a1 >= 0x16)
  {
    v12 = 22;
  }

  else
  {
    v12 = a1;
  }

  if (a1 < 0)
  {
    v12 = 0;
  }

  if (a1)
  {
    v11 = v12;
  }

  v13 = v8 < 0x40001;
  if (v8 <= 0x20000)
  {
    ++v13;
  }

  if (v8 > 0x4000)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  v15 = &unk_24398E760 + 644 * v14 + 28 * v11;
  v21 = *v15;
  v16 = *(v15 + 4);
  v17 = *(v15 + 5);
  v18 = *(v15 + 6);
  if (a1 <= 0xFFFE0000)
  {
    v19 = -131072;
  }

  else
  {
    v19 = a1;
  }

  if (a1 < 0)
  {
    v17 = -v19;
  }

  v22 = v16;
  v23 = v17;
  v24 = v18;
  *&result = sub_243906B2C(&v21, a2, a3, a4, 0, a5).n128_u64[0];
  return result;
}

uint64_t sub_243906DAC(int *a1, __int128 *a2, int a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8, unint64_t a9)
{
  v14 = a9;
  v15 = 1 << *a1;
  if (v15 >= a7)
  {
    v15 = a7;
  }

  if (!a7)
  {
    v15 = 1;
  }

  if (!a9)
  {
    v14 = 0x20000;
  }

  if (v14 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  v17 = a1[4] != 3 && a8 == 0;
  v18 = 3;
  if (v17)
  {
    v18 = 4;
  }

  v19 = v16 / v18;
  v20 = (8 * (v16 / v18) + 63) & 0xFFFFFFFFFFFFFFC0;
  v21 = sub_2439086EC(a1, a4, 0, 1);
  v28 = *a2;
  v29 = *(a2 + 2);
  v22 = sub_24393B7CC(&v28);
  v28 = *a2;
  v29 = *(a2 + 2);
  v23 = sub_24393B800(&v28, v16);
  if (*a2 == 1)
  {
    v24 = (12 * v23 + 63) & 0xFFFFFFFFFFFFFFC0;
  }

  else
  {
    v24 = 0;
  }

  v25 = (((8 * ((v16 * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFF0) + 79) & 0xFFFFFFFFFFFFFFC0;
  if (!a8)
  {
    v25 = 0;
  }

  v26 = 25424;
  if (!a3)
  {
    v26 = 20184;
  }

  return a5 + a6 + v26 + v21 + v16 + 3 * v19 + v20 + v22 + v25 + v24 + 32;
}

uint64_t sub_243906F24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 8) - *a1;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = (v3 >> 3);
    v5 = (*a1 + 6);
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    do
    {
      v9 = *(v5 - 1);
      if (v9 < 0x40)
      {
        LOBYTE(v10) = byte_24398E508[*(v5 - 1)];
      }

      else
      {
        v10 = 50 - __clz(v9);
      }

      v11 = __clz(*(v5 - 3));
      v12 = *v5;
      *v8 = v10;
      *v6 = 31 - v11;
      if (v12 < 0x80)
      {
        LOBYTE(v13) = byte_24398E548[v12];
      }

      else
      {
        v13 = 67 - __clz(v12);
      }

      v5 += 4;
      *v7++ = v13;
      ++v8;
      ++v6;
      --v4;
    }

    while (v4);
  }

  v14 = *(a1 + 72);
  if (v14 == 1)
  {
    *(v2 + *(a1 + 76)) = 35;
    v14 = *(a1 + 72);
  }

  if (v14 == 2)
  {
    *(v1 + *(a1 + 76)) = 52;
  }

  return 0;
}

uint64_t (*sub_243907004(int a1, int a2, int a3))()
{
  v3 = a1 - 3;
  v4 = a2 != 1 || v3 > 2;
  v5 = &off_2856A2870[3 * a3] + v3;
  if (v4)
  {
    v5 = &off_2856A2730[10 * a3] + a1;
  }

  return *v5;
}

uint64_t sub_243907044(uint64_t result)
{
  *(result + 24) = *(result + 16);
  *(result + 8) = *result;
  *(result + 72) = 0;
  return result;
}

uint64_t sub_24390705C(void *a1, _DWORD *__src, void *__dst, _DWORD *a4, uint64_t a5, char *a6, unint64_t a7)
{
  v7 = a7;
  v15 = a1[2];
  v14 = a1[3];
  v16 = a4[7];
  v17 = a4[18];
  if (v17 == 1)
  {
    goto LABEL_9;
  }

  if (v17 == 2)
  {
    LODWORD(v38) = 255;
    goto LABEL_4;
  }

  if (v16 != 1)
  {
LABEL_9:
    v19 = a7;
    LODWORD(v38) = 255;
    v21 = __src + 514;
    v35 = v16 > 7;
    v36 = __src[514];
    memcpy(__dst, __src, 0x810uLL);
  }

  else
  {
    v19 = a7;
    v20 = a4[6];
    LODWORD(v38) = 255;
    v35 = 0;
    v36 = __src[514];
    memcpy(__dst, __src, 0x810uLL);
    if (v20)
    {
LABEL_16:
      v18 = 0;
      v7 = v19;
      goto LABEL_17;
    }

    v21 = __src + 514;
  }

  v22 = v14 - v15;
  v23 = 63;
  if (*v21 == 2)
  {
    v23 = 6;
  }

  if (v23 >= v22)
  {
    goto LABEL_16;
  }

  v7 = v19;
  v24 = sub_243904100(a6, &v38, v15, v22, a6, v19);
  v25 = v24;
  if (v24 > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_38;
  }

  if (v24 == v22)
  {
    v18 = 1;
    goto LABEL_17;
  }

  if (v24 <= (v22 >> 7) + 4)
  {
LABEL_5:
    v18 = 0;
LABEL_17:
    *a5 = v18;
    *(a5 + 136) = 0;
    goto LABEL_18;
  }

  v31 = v36;
  if (v36 == 1)
  {
    v31 = sub_243904FC8(__src, a6, v38);
  }

  v37 = v31;
  bzero(__dst, 0x808uLL);
  v32 = sub_243905FBC(11, v22, v38, (a6 + 1024), v19 - 1024, __dst, a6, 2 * v35);
  v25 = sub_243904864(__dst, a6, v38, v32, (a6 + 1024), v19 - 1024);
  if (v25 > 0xFFFFFFFFFFFFFF88)
  {
LABEL_38:
    *(a5 + 136) = v25;
    return v25;
  }

  v33 = sub_243904F94(__dst, a6, v38);
  v25 = sub_24390414C((a5 + 4), 0x80uLL, __dst, v38, v25, (a6 + 1024), v7 - 1024);
  if (v37)
  {
    v34 = sub_243904F94(__src, a6, v38);
    if (v34 < v22 && (v25 + 12 >= v22 || v34 <= v25 + v33))
    {
      memcpy(__dst, __src, 0x810uLL);
      v18 = 3;
      goto LABEL_17;
    }
  }

  if (v25 + v33 >= v22)
  {
LABEL_4:
    memcpy(__dst, __src, 0x810uLL);
    goto LABEL_5;
  }

  *a5 = 2;
  *(__dst + 514) = 1;
  *(a5 + 136) = v25;
  if (v25 > 0xFFFFFFFFFFFFFF88)
  {
    return v25;
  }

LABEL_18:
  v26 = a1[1] - *a1;
  if (v26)
  {
    sub_24390A250(a1, v26 >> 3, (__src + 516), (__dst + 258), (a5 + 156), a5 + 289, a4[7], a6, &v38, a6 + 212, v7 - 212);
    v26 = v40;
    if (v40 > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_23;
    }

    v27 = v38;
    v28 = v39;
    v29 = v41;
  }

  else
  {
    v29 = 0;
    v28 = 0;
    *(__dst + 1401) = 0;
    v27 = 0;
    __dst[701] = 0;
  }

  *(a5 + 144) = v27;
  *(a5 + 152) = v28;
  *(a5 + 304) = v29;
LABEL_23:
  *(a5 + 296) = v26;
  if (v26 >= 0xFFFFFFFFFFFFFF89)
  {
    return v26;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2439073B4(uint64_t a1, char *a2, unint64_t a3, char *__src, size_t __n, int a6, int a7)
{
  if (!*a1)
  {
    return -60;
  }

  v11 = a2;
  v13 = a3;
  v14 = 0;
  if (a6 && *a1 == 1)
  {
    v15 = sub_243908C90(a2, a3, (a1 + 224), *(a1 + 736) - 1, *(a1 + 640));
    v14 = v15;
    if (v15 > 0xFFFFFFFFFFFFFF88)
    {
      return v14;
    }

    v13 -= v15;
    v11 += v15;
    *a1 = 2;
  }

  if (!__n)
  {
    return v14;
  }

  v88 = (a1 + 3192);
  v16 = *(a1 + 3192);
  if (*(a1 + 3328))
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 == __src;
  }

  v18 = !v17;
  if (v17)
  {
    v19 = *(a1 + 3208);
    v21 = *(a1 + 3220);
    LODWORD(v20) = *(a1 + 3216);
  }

  else
  {
    v19 = *(a1 + 3200);
    v20 = &v16[-v19];
    v21 = *(a1 + 3216);
    *(a1 + 3220) = v21;
    *(a1 + 3216) = v20;
    *(a1 + 3208) = v19;
    *(a1 + 3200) = __src - v20;
    if (v20 - v21 <= 7)
    {
      *(a1 + 3220) = v20;
      v21 = v20;
    }
  }

  v24 = &__src[__n];
  *v88 = &__src[__n];
  if (&__src[__n] > v19 + v21 && v19 + v20 > __src)
  {
    v26 = &v24[-v19];
    if (v26 > v20)
    {
      LODWORD(v26) = v20;
    }

    *(a1 + 3220) = v26;
  }

  if (v18)
  {
    *(a1 + 3328) = 0;
    *(a1 + 3236) = v20;
  }

  if (*(a1 + 320) == 1)
  {
    v27 = *(a1 + 1008);
    if (v27 == __src)
    {
      v28 = *(a1 + 1024);
      v30 = *(a1 + 1036);
      LODWORD(v29) = *(a1 + 1032);
    }

    else
    {
      v28 = *(a1 + 1016);
      v29 = &v27[-v28];
      v30 = *(a1 + 1032);
      *(a1 + 1036) = v30;
      *(a1 + 1032) = v29;
      *(a1 + 1024) = v28;
      *(a1 + 1016) = __src - v29;
      if (v29 - v30 <= 7)
      {
        *(a1 + 1036) = v29;
        v30 = v29;
      }
    }

    *(a1 + 1008) = v24;
    if (v24 > v28 + v30 && v28 + v29 > __src)
    {
      v31 = &v24[-v28];
      if (v31 > v29)
      {
        LODWORD(v31) = v29;
      }

      *(a1 + 1036) = v31;
    }
  }

  if (!a6)
  {
    sub_24390A590(v88, (a1 + 656), (a1 + 224), __src, v24);
    v22 = sub_24390A854(a1, v11, v13, __src, __n, 0);
    goto LABEL_123;
  }

  v80 = v14;
  v32 = *(a1 + 728);
  v33 = *(a1 + 228);
  if (*(a1 + 260))
  {
    sub_243902CD0(a1 + 760, __src, __n);
  }

  v34 = 1 << v33;
  v79 = a7;
  v86 = v34;
  v87 = a7 & 1;
  v83 = (a1 + 4112);
  v84 = (a1 + 3176);
  v89 = (a1 + 4032);
  v81 = __n;
  v35 = __n;
  v36 = v11;
  v37 = v13;
  do
  {
    v38 = v87;
    if (v32 < v35)
    {
      v38 = 0;
    }

    v93 = v38;
    if (v37 < 6)
    {
      return -70;
    }

    if (v35 < v32)
    {
      v32 = v35;
    }

    sub_24390A590(v88, (a1 + 656), (a1 + 224), __src, __src + v32);
    v39 = *(a1 + 3200);
    v92 = &__src[v32];
    v40 = *(a1 + 3232);
    if (v40 + v34 < (__src + v32 - v39) || v40 != *(a1 + 3216))
    {
      v40 = 0;
      *(a1 + 3232) = 0;
      *(a1 + 3440) = 0;
    }

    v41 = __src - v39;
    v42 = *(a1 + 3220);
    if (v40 + v34 < v41)
    {
      if (v42 < v41 - v34)
      {
        *(a1 + 3220) = v41 - v34;
        v42 = v41 - v34;
      }

      if (*(a1 + 3216) < v42)
      {
        *(a1 + 3216) = v42;
      }

      *(a1 + 3232) = 0;
      *(a1 + 3440) = 0;
    }

    if (*(a1 + 3236) < v42)
    {
      *(a1 + 3236) = v42;
    }

    if (*(a1 + 280))
    {
      v43 = sub_24390A9A0(a1, __src, v32);
      v22 = v43;
      if (v43 > 0xFFFFFFFFFFFFFF88)
      {
        return v22;
      }

      if (!v43)
      {
        if (!*(a1 + 920) && *(a1 + 936) - *(a1 + 928) <= 0x1FuLL && *(a1 + 952) - *(a1 + 944) <= 9uLL && sub_24390AD74(__src, v32))
        {
          v72 = *__src;
          *v36 = v93 | (8 * v32) | 2;
          v36[2] = v32 >> 13;
          v36[3] = v72;
          v22 = 4;
LABEL_67:
          if (*(v84->i64[0] + 5604) == 2)
          {
            *(v84->i64[0] + 5604) = 1;
          }

          goto LABEL_117;
        }

        v44 = sub_24390CF7C(a1, v36, v37, __src, v32, v93);
        if (v44 != -70)
        {
          v22 = v44;
          if (v44 > 0xFFFFFFFFFFFFFF88)
          {
            return v22;
          }

          v47 = *(a1 + 252);
          v48 = v47 <= 7 ? 6 : v47 - 1;
          if (v44 && v44 < v32 - (v32 >> v48) + 1)
          {
            *v84 = vextq_s8(*v84, *v84, 8uLL);
            goto LABEL_67;
          }
        }
      }

      v22 = v32 + 3;
      if (v32 + 3 > v37)
      {
        return -70;
      }

      *v36 = v93 | (8 * v32);
      v36[2] = v32 >> 13;
      memcpy(v36 + 3, __src, v32);
      if (v22 > 0xFFFFFFFFFFFFFF88)
      {
        return v22;
      }

      goto LABEL_67;
    }

    if (*(a1 + 364) != 1)
    {
      v46 = sub_24390A854(a1, v36 + 3, v37 - 3, __src, v32, 1);
      v22 = v46;
      if (v46 > 0xFFFFFFFFFFFFFF88)
      {
        return v22;
      }

      if (v46 == 1)
      {
        v73 = 2;
        v74 = v32;
LABEL_112:
        *v36 = v73 | v93 | (8 * v74);
        v36[2] = v74 >> 13;
        v22 = v46 + 3;
        goto LABEL_117;
      }

      if (v46)
      {
        v73 = 4;
        v74 = v46;
        goto LABEL_112;
      }

      goto LABEL_77;
    }

    v45 = sub_24390A9A0(a1, __src, v32);
    v22 = v45;
    if (v45 > 0xFFFFFFFFFFFFFF88)
    {
      return v22;
    }

    if (v45 == 1)
    {
      if (*(v84->i64[0] + 5604) == 2)
      {
        *(v84->i64[0] + 5604) = 1;
      }

LABEL_77:
      v22 = v32 + 3;
      if (v32 + 3 > v37)
      {
        return -70;
      }

      *v36 = v93 | (8 * v32);
      v36[2] = v32 >> 13;
      memcpy(v36 + 3, __src, v32);
      goto LABEL_116;
    }

    v82 = v11;
    v49 = 0;
    v50 = *(a1 + 936) - *(a1 + 928);
    v51 = v50 >> 3;
    v96 = a1 + 4112;
    v97 = 0;
    if ((v50 >> 3) >= 5)
    {
      sub_24390B390(&v96, 0, (v50 >> 3), a1, (a1 + 928));
      v49 = v97;
      *(v96 + 4 * v97) = v51;
    }

    v52 = v84->i64[0];
    v96 = *(v84->i64[0] + 5616);
    LODWORD(v97) = *(v52 + 5624);
    v94 = v96;
    v95 = v97;
    *v89 = 0u;
    *(a1 + 4048) = 0u;
    *(a1 + 4064) = 0u;
    *(a1 + 4080) = 0u;
    *(a1 + 4096) = 0u;
    if (v49)
    {
      v90 = v49;
      sub_24390B23C(a1 + 3952, (a1 + 928), 0, *v83);
      v22 = 0;
      v53 = 0;
      v91 = 0;
      v78 = v37;
      v54 = v37;
      v55 = v36;
      v85 = v36;
      while (1)
      {
        v56 = sub_24390B334(a1 + 3952);
        v57 = *(a1 + 3960);
        v58 = *(a1 + 3952);
        v59 = v57 - v58;
        if (v57 == v58)
        {
          v60 = 0;
        }

        else
        {
          v60 = 0;
          v61 = v59 >> 3;
          v62 = *(a1 + 4028);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v63 = (v58 + 6);
          do
          {
            v64 = *v63;
            v63 += 4;
            v60 += v64 + 3;
            if (!v62 && *(a1 + 4024) == 2)
            {
              v60 += 0x10000;
            }

            --v62;
            --v61;
          }

          while (v61);
        }

        v65 = v60 + v56;
        v66 = v60 + v56 + v91;
        v91 = v66;
        if (v53 == v90)
        {
          v65 = v65 + v32 - v66;
          v67 = v93;
        }

        else
        {
          sub_24390B23C(v89, (a1 + 928), v83[v53], v83[v53 + 1]);
          v67 = 0;
        }

        v68 = sub_24390AEDC(a1, a1 + 3952, &v96, &v94, v55, v54, __src, v65, v67, 1);
        if (v68 > 0xFFFFFFFFFFFFFF88)
        {
          break;
        }

        __src += v65;
        v55 += v68;
        v54 -= v68;
        v22 += v68;
        v69 = *(a1 + 4080);
        *(a1 + 3984) = *(a1 + 4064);
        *(a1 + 4000) = v69;
        *(a1 + 4016) = *(a1 + 4096);
        v70 = *(a1 + 4048);
        *(a1 + 3952) = *v89;
        *(a1 + 3968) = v70;
        ++v53;
        v36 = v85;
        if (v53 > v90)
        {
          v71 = v84->i64[0];
          *(v71 + 5616) = v96;
          *(v71 + 5624) = v97;
          v37 = v78;
          goto LABEL_115;
        }
      }

      v22 = v68;
      v37 = v78;
      v36 = v85;
    }

    else
    {
      v22 = sub_24390AEDC(a1, a1 + 928, &v96, &v94, v36, v37, __src, v32, v93, 0);
    }

LABEL_115:
    v11 = v82;
LABEL_116:
    if (v22 >= 0xFFFFFFFFFFFFFF89)
    {
      return v22;
    }

LABEL_117:
    v36 += v22;
    v37 -= v22;
    *(a1 + 920) = 0;
    __src = v92;
    v35 -= v32;
    v34 = v86;
  }

  while (v35);
  if (v79 && v36 > v11)
  {
    *a1 = 3;
  }

  v22 = v36 - v11;
  v14 = v80;
  __n = v81;
LABEL_123:
  if (v22 <= 0xFFFFFFFFFFFFFF88)
  {
    v75 = *(a1 + 744) + __n;
    *(a1 + 744) = v75;
    *(a1 + 752) += v22 + v14;
    v76 = *(a1 + 736);
    if (v75 + 1 <= v76 || v76 == 0)
    {
      v22 += v14;
    }

    else
    {
      return -72;
    }
  }

  return v22;
}

uint64_t sub_243907C14(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3 + 8;
  *(a1 + 2056) = 1;
  v41 = 31;
  v42[0] = 255;
  *v43 = 1;
  v9 = sub_243904648(a1, v42, (a3 + 8), a4 - 8, v43);
  if (!*v43)
  {
    *(a1 + 2056) = 2;
  }

  if (v9 < 0xFFFFFFFFFFFFFF89 && v42[0] > 0xFEu)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v9 < 0xFFFFFFFFFFFFFF89 && v42[0] > 0xFEu)
  {
    v11 = a3 + a4;
    v12 = v8 + v10;
    v42[0] = 0;
    v13 = sub_243901C10(v43, &v41, v42, (v8 + v10), v11 - (v8 + v10));
    if (v13 <= 0xFFFFFFFFFFFFFF88 && v42[0] < 9u)
    {
      v14 = v13;
      v15 = sub_243903040((a1 + 2064), v43, 31, v42[0], a2, 0x2200uLL);
      v16 = (v12 + v14);
      v17 = v15 >= 0xFFFFFFFFFFFFFF89 ? v12 : v12 + v14;
      if (v15 <= 0xFFFFFFFFFFFFFF88)
      {
        v39 = 0;
        v40 = 52;
        v18 = sub_243901C10(v42, &v40, &v39, v16, v11 - v16);
        if (v18 <= 0xFFFFFFFFFFFFFF88 && v39 <= 9)
        {
          v19 = v18;
          if (sub_243903040((a1 + 2836), v42, v40, v39, a2, 0x2200uLL) <= 0xFFFFFFFFFFFFFF88)
          {
            if (v40 >= 0x34)
            {
              v21 = 0;
              while (*(v42 + v21))
              {
                v21 += 2;
                if (v21 == 106)
                {
                  v20 = 2;
                  goto LABEL_22;
                }
              }
            }

            v20 = 1;
LABEL_22:
            *(a1 + 5608) = v20;
            v22 = (v17 + v19);
            v39 = 0;
            v40 = 35;
            v23 = sub_243901C10(v42, &v40, &v39, v22, v11 - v22);
            if (v23 <= 0xFFFFFFFFFFFFFF88 && v39 <= 9)
            {
              v24 = v23;
              if (sub_243903040((a1 + 4288), v42, v40, v39, a2, 0x2200uLL) <= 0xFFFFFFFFFFFFFF88)
              {
                if (v40 >= 0x23)
                {
                  v26 = 0;
                  while (*(v42 + v26))
                  {
                    v26 += 2;
                    if (v26 == 72)
                    {
                      v25 = 2;
                      goto LABEL_31;
                    }
                  }
                }

                v25 = 1;
LABEL_31:
                *(a1 + 5612) = v25;
                v27 = (v22 + v24);
                v28 = v22 + v24 + 12;
                if (v28 <= v11)
                {
                  *(a1 + 5616) = *v27;
                  *(a1 + 5620) = v27[1];
                  *(a1 + 5624) = v27[2];
                  v31 = __clz(v11 - v28 + 0x20000) ^ 0x1F;
                  if (v11 - v28 >= 0xFFFE0000)
                  {
                    v31 = 31;
                  }

                  if (v41 >= v31)
                  {
                    v33 = v31 + 1;
                    v34 = v43;
                    while (*v34++)
                    {
                      if (!--v33)
                      {
                        v32 = 2;
                        goto LABEL_42;
                      }
                    }
                  }

                  v32 = 1;
LABEL_42:
                  v36 = 0;
                  *(a1 + 5604) = v32;
                  while (1)
                  {
                    v37 = *(a1 + 5616 + v36);
                    if (!v37 || v11 - v28 < v37)
                    {
                      break;
                    }

                    v36 += 4;
                    if (v36 == 12)
                    {
                      result = v28 - a3;
                      goto LABEL_33;
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

  result = -30;
LABEL_33:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_243907F2C(uint64_t a1, _DWORD *a2, unint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, unint64_t a8, int a9)
{
  if (!a6)
  {
    v13 = a3;
    result = sub_243908DF0(a1, a7, a8, a3, 0, a9);
    if (result >= 0xFFFFFFFFFFFFFF89)
    {
      return result;
    }

    result = sub_24390BC68(*(a1 + 3176), a1 + 3192, a1 + 1008, (a1 + 656), (a1 + 224), a2, v13, a4, a5, 0, *(a1 + 3496));
LABEL_26:
    if (result > 0xFFFFFFFFFFFFFF88)
    {
      return result;
    }

    *(a1 + 640) = result;
    *(a1 + 648) = v13;
    return 0;
  }

  v13 = *(a6 + 8);
  if (!v13 || a8 >= 0x20000 && a8 != -1 && 6 * v13 <= a8 && *(a6 + 6068) || (v14 = *(a7 + 68), v14 == 3))
  {
    result = sub_243908DF0(a1, a7, a8, *(a6 + 8), 0, a9);
    if (result >= 0xFFFFFFFFFFFFFF89)
    {
      return result;
    }

    result = sub_24390BC68(*(a1 + 3176), a1 + 3192, a1 + 1008, (a1 + 656), (a1 + 224), *a6, *(a6 + 8), *(a6 + 16), a5, 0, *(a1 + 3496));
    goto LABEL_26;
  }

  v15 = *(a6 + 244);
  v16 = *(a6 + 384);
  if (v15)
  {
    goto LABEL_6;
  }

  if (a8 == -1 || qword_24398E710[v16] >= a8)
  {
    if (v14 == 2)
    {
      goto LABEL_34;
    }
  }

  else if (v14 != 1)
  {
LABEL_34:
    v33 = *(a7 + 160);
    v34 = *(a7 + 176);
    v35 = *(a7 + 128);
    v71 = *(a7 + 144);
    v72 = v33;
    v36 = *(a7 + 192);
    v73 = v34;
    v74 = v36;
    v37 = *(a7 + 96);
    v38 = *(a7 + 112);
    v39 = *(a7 + 64);
    v67 = *(a7 + 80);
    v68 = v37;
    v69 = v38;
    v70 = v35;
    v40 = *(a7 + 32);
    v65 = *(a7 + 48);
    v66 = v39;
    v41 = *(a7 + 16);
    *v63 = *a7;
    *&v63[16] = v41;
    v42 = *&v63[4];
    *&v63[4] = *(a6 + 360);
    *&v63[16] = *(a6 + 372);
    v64 = v40;
    *&v63[4] = v42;
    LODWORD(v71) = *(a6 + 6072);
    result = sub_243908DF0(a1, v63, a8, 0, 1, a9);
    if (result > 0xFFFFFFFFFFFFFF88)
    {
      return result;
    }

    *(a1 + 688) = *(a1 + 672);
    v43 = *(a6 + 384);
    if (v43 == 1)
    {
      v44 = 0;
      v45 = 1 << *(a6 + 368);
      v46 = a1 + 3192;
      v47 = *(a1 + 3304);
      v48 = *(a6 + 216);
      goto LABEL_37;
    }

    v50 = v43 - 3;
    if ((v43 - 3) <= 2 && *(a6 + 6072) == 1)
    {
      v44 = 0;
      v51 = *(a6 + 368);
      v45 = 1 << v51;
      v46 = a1 + 3192;
      v47 = *(a1 + 3304);
      v48 = *(a6 + 216);
    }

    else
    {
      v44 = 1 << *(a6 + 364);
      v51 = *(a6 + 368);
      v45 = 1 << v51;
      v46 = a1 + 3192;
      v47 = *(a1 + 3304);
      v48 = *(a6 + 216);
      if (v50 >= 0xFFFFFFFE)
      {
LABEL_37:
        v49 = 0;
        do
        {
          v47[v49] = v48[v49] >> 8;
          ++v49;
        }

        while (v45 != v49);
LABEL_45:
        v52 = *(a1 + 252);
        if (v52 != 1 && ((v52 - 3) > 2 || *(a1 + 368) != 1))
        {
          v54 = *(a1 + 3320);
          v55 = *(a6 + 232);
          if ((*(a6 + 384) - 3) >= 0xFFFFFFFE)
          {
            for (; v44; --v44)
            {
              v56 = *v55++;
              *v54++ = v56 >> 8;
            }
          }

          else
          {
            memcpy(v54, v55, 4 * v44);
          }
        }

        if ((*(a6 + 384) - 6) >= 0xFFFFFFFD && *(a6 + 6072) == 1)
        {
          memcpy(*(a1 + 3248), *(a6 + 160), v45);
          *(a1 + 3288) = *(a6 + 200);
        }

        v58 = *(a1 + 3240);
        if (v58)
        {
          v59 = 4 << v58;
        }

        else
        {
          v59 = 0;
        }

        bzero(*(a1 + 3312), v59);
        v60 = *(a1 + 680);
        if (*(a1 + 688) < v60)
        {
          *(a1 + 688) = v60;
        }

        v61 = *(a6 + 104);
        v62 = *(a6 + 120);
        *(v46 + 32) = *(a6 + 136);
        *v46 = v61;
        *(v46 + 16) = v62;
        *(a1 + 3232) = *(a6 + 144);
        goto LABEL_66;
      }
    }

    memcpy(v47, v48, 4 << v51);
    goto LABEL_45;
  }

  if (*(a7 + 48))
  {
    goto LABEL_34;
  }

LABEL_6:
  v17 = *(a7 + 176);
  v72 = *(a7 + 160);
  v73 = v17;
  v74 = *(a7 + 192);
  v18 = *(a7 + 112);
  v68 = *(a7 + 96);
  v69 = v18;
  v19 = *(a7 + 144);
  v70 = *(a7 + 128);
  v71 = v19;
  v20 = *(a7 + 48);
  v64 = *(a7 + 32);
  v65 = v20;
  v21 = *(a7 + 80);
  v66 = *(a7 + 64);
  v67 = v21;
  v22 = *(a7 + 16);
  *v63 = *a7;
  *&v63[16] = v22;
  v23 = *(a6 + 368) - 2;
  if (v23 <= 6)
  {
    v23 = 6;
  }

  if (v16 - 3 >= 3 || v15 == 0)
  {
    v25 = *(a6 + 368);
  }

  else
  {
    v25 = v23;
  }

  v26 = *&v63[4];
  v75 = *(a6 + 360);
  v76 = v25;
  v77 = *(a6 + 372);
  v78 = *(a6 + 380);
  v79 = v16;
  sub_243906B2C(&v75, a8, v13, 1, v71, &v63[4]);
  v27 = *(a6 + 6072);
  *&v63[4] = v26;
  LODWORD(v71) = v27;
  result = sub_243908DF0(a1, v63, a8, 0, 0, a9);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v29 = *(a6 + 104) - *(a6 + 112);
    if (*(a6 + 128) != v29)
    {
      *(a1 + 3440) = a6 + 104;
      v30 = *(a1 + 3216);
      if (v30 < v29)
      {
        *(a1 + 3192) = *(a1 + 3200) + v29;
        *(a1 + 3220) = v29;
        *(a1 + 3216) = v29;
        v30 = v29;
      }

      *(a1 + 3232) = v30;
    }

LABEL_66:
    *(a1 + 640) = *(a6 + 6064);
    *(a1 + 648) = *(a6 + 8);
    memcpy(*(a1 + 3176), (a6 + 408), 0x1600uLL);
    return 0;
  }

  return result;
}

unint64_t sub_243908418(uint64_t a1, char *a2, unint64_t a3, char *a4, size_t a5)
{
  result = sub_2439073B4(a1, a2, a3, a4, a5, 1, 1);
  v9 = result;
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    return result;
  }

  v10 = *a1;
  if (!*a1)
  {
    return -60;
  }

  v11 = &a2[result];
  v12 = a3 - result;
  if (v10 == 3)
  {
    v14 = v11;
  }

  else
  {
    if (v10 == 1)
    {
      result = sub_243908C90(v11, v12, (a1 + 224), 0, 0);
      if (result > 0xFFFFFFFFFFFFFF88)
      {
        return result;
      }

      v12 -= result;
      v13 = &v11[result];
      *a1 = 2;
    }

    else
    {
      v13 = v11;
    }

    if (v12 < 4)
    {
      return -70;
    }

    *v13 = 1;
    v14 = v13 + 3;
    v12 -= 3;
  }

  if (!*(a1 + 260))
  {
    goto LABEL_16;
  }

  v15 = sub_243902E7C((a1 + 760));
  if (v12 < 4)
  {
    return -70;
  }

  *v14 = v15;
  v14 += 4;
LABEL_16:
  *a1 = 0;
  result = v14 - v11;
  if ((v14 - v11) <= 0xFFFFFFFFFFFFFF88)
  {
    v16 = *(a1 + 736);
    if (v16 && v16 != *(a1 + 744) + 1)
    {
      return -72;
    }

    else
    {
      result += v9;
    }
  }

  return result;
}

unint64_t sub_243908544(uint64_t a1, char *a2, unint64_t a3, char *a4, unint64_t a5, _DWORD *a6, unint64_t a7, uint64_t a8)
{
  result = sub_243907F2C(a1, a6, a7, 0, 0, 0, a8, a5, 0);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {

    return sub_243908418(a1, a2, a3, a4, a5);
  }

  return result;
}

unint64_t sub_2439085F4(uint64_t a1, char *a2, unint64_t a3, char *a4, unint64_t a5, _DWORD *a6, unint64_t a7, int a8)
{
  *v22 = 0uLL;
  if (a6)
  {
    v16 = a7;
  }

  else
  {
    v16 = 0;
  }

  *&v22[24] = 0;
  *&v22[16] = 0;
  sub_243906CC8(a8, a5, v16, 0, v22);
  v21 = 0;
  *v19 = *v22;
  *&v19[12] = *&v22[12];
  v20 = 1;
  if (a8)
  {
    v17 = a8;
  }

  else
  {
    v17 = 3;
  }

  sub_2439069F4(a1 + 432, v19, v17);

  return sub_243908544(a1, a2, a3, a4, a5, a6, a7, a1 + 432);
}

unint64_t sub_2439086EC(int *a1, int a2, int a3, int a4)
{
  v4 = a1[6];
  if ((!a3 || a4) && (v4 == 1 || a2 == 1 && v4 - 3 < 3))
  {
    v5 = 0;
  }

  else
  {
    v5 = 4 << a1[1];
  }

  v6 = a1[2];
  if (a4 && a1[4] == 3)
  {
    v7 = *a1;
    if (*a1 >= 0x11)
    {
      v7 = 17;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 >= 6;
  v9 = v4 - 6;
  v10 = v9 == 0 || !v8 || a4 == 0;
  v11 = 128;
  if (!v10)
  {
    v11 = 149312;
  }

  v12 = v9 >= 0xFFFFFFFD && a2 == 1;
  v13 = ((1 << v6) + 63) & 0xFFFFFFFFFFFFFFC0;
  v14 = 4 << v6;
  if (!v12)
  {
    v13 = 0;
  }

  if (v7)
  {
    v15 = 4 << v7;
  }

  else
  {
    v15 = 0;
  }

  return v11 + v5 + v14 + v13 + v15;
}

uint64_t sub_2439087B0(void *a1)
{
  if (a1)
  {
    v2 = a1[756];
    v3 = a1[757];
    v4 = a1[4];
    v5 = v4 > a1 || a1[5] <= a1;
    a1[12] = 0;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    if (v4)
    {
      if (!v2)
      {
        free(v4);
        if (!v5)
        {
          return 0;
        }

        goto LABEL_12;
      }

      v2(v3);
    }

    if (v5)
    {
      if (v2)
      {
        (v2)(v3, a1);
        return 0;
      }

LABEL_12:
      free(a1);
    }
  }

  return 0;
}

uint64_t sub_24390885C(uint64_t a1, unsigned int *a2, uint64_t a3, unint64_t a4, char *__src, uint64_t a6, int a7)
{
  v8 = __src;
  v10 = a2;
  v12 = *a2;
  v13 = *(a1 + 3672);
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    if (!*(a1 + 3680))
    {
      v56 = 0;
      goto LABEL_6;
    }

    v14 = (a1 + 3688);
  }

  v56 = *v14;
LABEL_6:
  v15 = &__src[a6];
  v16 = *(a1 + 3176);
  *v59 = *(v16 + 5616);
  *&v59[8] = *(v16 + 5624);
  if (v12 >= a4)
  {
    v20 = v12;
    v39 = v12;
    goto LABEL_66;
  }

  v52 = v12;
  v53 = &__src[a6];
  v17 = v15 - 32;
  v19 = *v59;
  v18 = *&v59[4];
  v57 = *&v59[8];
  v20 = v12;
  v21 = v12;
  v54 = v15 - 32;
  while (1)
  {
    v22 = (a3 + 16 * v20);
    v23 = v22[2];
    if (!v23 && !*v22)
    {
      break;
    }

    v24 = v22[1];
    if (a7 == 2)
    {
      v25 = *v22 + 3;
      goto LABEL_28;
    }

    v26 = *v22;
    if (v24)
    {
      v27 = v19 == v26;
    }

    else
    {
      v27 = 0;
    }

    if (v27)
    {
      v25 = 1;
    }

    else if (v18 == v26)
    {
      if (v24)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }
    }

    else if (v57 == v26)
    {
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }
    }

    else if (v24 || v19 - 1 != v26)
    {
      v25 = v26 + 3;
      if (v26 != 0 && v26 < 0xFFFFFFFD)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v25 = 3;
    }

    v28 = v24 != 0;
    v29 = v25 - v28;
    if (v25 == v28)
    {
      goto LABEL_28;
    }

    if (v29 == 3)
    {
      v26 = v19 - 1;
    }

    else
    {
      v26 = *&v59[4 * v29];
    }

    if (v29 == 1)
    {
      v18 = v57;
    }

LABEL_27:
    *&v59[4] = v19;
    *&v59[8] = v18;
    v57 = v18;
    v18 = v19;
    v19 = v26;
    *v59 = v26;
LABEL_28:
    if (*(a1 + 360))
    {
      v30 = *(v10 + 1) + (v24 + v23);
      *(v10 + 1) = v30;
      v31 = v30 <= 1 << *(a1 + 228) ? v30 + v56 : 1 << *(a1 + 228);
      if (v31 + 3 < v25)
      {
        return -107;
      }

      v32 = *(a1 + 244) != 3 && *(a1 + 408) == 0;
      v33 = 3;
      if (v32)
      {
        v33 = 4;
      }

      if (v33 > v23)
      {
        return -107;
      }
    }

    if (*(a1 + 984) <= (v21 - *v10))
    {
      return -107;
    }

    v34 = *(a1 + 952);
    if (&v8[v24] > v17)
    {
      v58 = v21;
      v35 = a4;
      v36 = a3;
      sub_24390C0CC(v34, v8, &v8[v24], v17);
      a4 = v35;
      a3 = v36;
LABEL_42:
      *(a1 + 952) += v24;
      v37 = *(a1 + 936);
      if (v24 >= 0x10000)
      {
        *(a1 + 1000) = 1;
        *(a1 + 1004) = (v37 - *(a1 + 928)) >> 3;
      }

      v17 = v54;
      v10 = a2;
      v21 = v58;
      goto LABEL_48;
    }

    *v34 = *v8;
    if (v24 >= 0x11)
    {
      v38 = *(a1 + 952);
      *(v38 + 16) = *(v8 + 1);
      if ((v24 - 16) >= 0x11)
      {
        v58 = v21;
        v40 = v38 + v24;
        v41 = (v38 + 32);
        v42 = (v8 + 48);
        do
        {
          *v41 = *(v42 - 1);
          v43 = *v42;
          v42 += 2;
          v41[1] = v43;
          v41 += 2;
        }

        while (v41 < v40);
        goto LABEL_42;
      }
    }

    *(a1 + 952) += v24;
    v37 = *(a1 + 936);
LABEL_48:
    *(v37 + 4) = v24;
    *v37 = v25;
    if (v23 - 3 >= 0x10000)
    {
      *(a1 + 1000) = 2;
      *(a1 + 1004) = (v37 - *(a1 + 928)) >> 3;
    }

    *(v37 + 6) = v23 - 3;
    *(a1 + 936) = v37 + 8;
    v8 += (v24 + v23);
    v20 = (v21 + 1);
    v21 = v20;
    v39 = v20;
    if (v20 >= a4)
    {
      goto LABEL_74;
    }
  }

  v39 = v21;
LABEL_74:
  if (a7 == 2)
  {
    v15 = v53;
    if (v39 != v52)
    {
      if (v39 - 1 >= (v52 + 2))
      {
        v51 = *(a3 + 16 * (v39 - 3));
LABEL_81:
        *&v59[4] = *(a3 + 16 * (v39 - 2));
        *&v59[8] = v51;
      }

      else
      {
        if (v39 == v52 + 2)
        {
          v51 = *v59;
          goto LABEL_81;
        }

        *&v59[4] = *v59;
      }

      *v59 = *(a3 + 16 * (v39 - 1));
    }
  }

  else
  {
    v15 = v53;
  }

LABEL_66:
  v44 = *(a1 + 3184);
  *(v44 + 5616) = *v59;
  *(v44 + 5624) = *&v59[8];
  v45 = a3 + 16 * v20;
  v48 = *(v45 + 4);
  v47 = (v45 + 4);
  v46 = v48;
  if (v48)
  {
    memcpy(*(a1 + 952), v8, v46);
    *(a1 + 952) += v46;
    v49 = *v47;
    v8 += v49;
    *(v10 + 1) += v49;
  }

  if (v8 != v15)
  {
    return -107;
  }

  result = 0;
  *v10 = v39 + 1;
  return result;
}

uint64_t sub_243908C90(_DWORD *a1, unint64_t a2, _DWORD *a3, unint64_t a4, unsigned int a5)
{
  v5 = a5 > 0xFF;
  if (a5)
  {
    ++v5;
  }

  if ((a5 & 0xFFFF0000) != 0)
  {
    ++v5;
  }

  if (a3[10])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = a3[1];
  v8 = a3[8];
  if (v8)
  {
    v9 = 1 << v7 >= a4;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = a4 >> 8 > 0x100;
  if (a4 > 0xFF)
  {
    ++v11;
  }

  if (a4 > 0xFFFFFFFE)
  {
    ++v11;
  }

  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = 32;
  }

  else
  {
    v13 = 0;
  }

  if (a2 < 0x12)
  {
    return -70;
  }

  v16 = v13 | (v6 + 4 * (a3[9] > 0)) | (v12 << 6);
  if (*a3)
  {
    v17 = 0;
  }

  else
  {
    *a1 = -47205080;
    v17 = 1;
  }

  v14 = (v17 * 4) | 1;
  LOBYTE(a1[v17]) = v16;
  if ((v10 & 1) == 0)
  {
    *(a1 + v14) = 8 * v7 - 80;
    v14 = (v17 * 4) | 2;
  }

  switch(v6)
  {
    case 3:
      *(a1 + v14) = a5;
      v14 += 4;
      break;
    case 2:
      *(a1 + v14) = a5;
      v14 += 2;
      break;
    case 1:
      *(a1 + v14++) = a5;
      break;
  }

  switch(v12)
  {
    case 1:
      *(a1 + v14) = a4 - 256;
      v14 += 2;
      break;
    case 2:
      *(a1 + v14) = a4;
      v14 += 4;
      break;
    case 3:
      *(a1 + v14) = a4;
      v14 += 8;
      break;
    default:
      if (v10)
      {
        *(a1 + v14++) = a4;
      }

      break;
  }

  return v14;
}

uint64_t sub_243908DF0(uint64_t a1, _OWORD *a2, unint64_t a3, unint64_t a4, int a5, int a6)
{
  *(a1 + 920) = 1;
  *(a1 + 224) = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[4];
  *(a1 + 272) = a2[3];
  *(a1 + 288) = v12;
  *(a1 + 240) = v10;
  *(a1 + 256) = v11;
  v13 = a2[5];
  v14 = a2[6];
  v15 = a2[8];
  *(a1 + 336) = a2[7];
  *(a1 + 352) = v15;
  *(a1 + 304) = v13;
  *(a1 + 320) = v14;
  v16 = a2[9];
  v17 = a2[10];
  v18 = a2[12];
  *(a1 + 400) = a2[11];
  *(a1 + 416) = v18;
  *(a1 + 368) = v16;
  *(a1 + 384) = v17;
  v19 = a1 + 320;
  if (*(a1 + 320) == 1)
  {
    sub_24393B764((a1 + 320), (a1 + 228));
  }

  v20 = 1 << *(a1 + 228);
  if (v20 >= a3)
  {
    v20 = a3;
  }

  if (!a3)
  {
    v20 = 1;
  }

  if (*(a1 + 416) >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = *(a1 + 416);
  }

  if (*(a1 + 408))
  {
    v22 = 1;
  }

  else
  {
    v22 = *(a1 + 244) == 3;
  }

  if (v22)
  {
    v23 = 3;
  }

  else
  {
    v23 = 4;
  }

  if (a6 == 1)
  {
    if (*(a1 + 352))
    {
      v24 = 0;
    }

    else
    {
      if (v21 > 0xFF00FF00FF00FEFFLL)
      {
        goto LABEL_24;
      }

      v26 = (0x20000 - v21) >> 11;
      if (v21 >= 0x20000)
      {
        v26 = 0;
      }

      v27 = v21 + (v21 >> 8) + v26;
      if (!v27)
      {
LABEL_24:
        v27 = -72;
      }

      v24 = v27 + 1;
    }

    v28 = v21 + v20;
    if (*(a1 + 348))
    {
      v25 = 0;
    }

    else
    {
      v25 = v28;
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v121 = *v19;
  v122 = *(v19 + 16);
  v120 = v21;
  v29 = 1;
  v118 = sub_24393B800(&v121, v21);
  if (!(a4 >> 29) && *(a1 + 3192) - *(a1 + 3200) <= 0xDF000000uLL)
  {
    v29 = *(a1 + 924) == 0;
  }

  v30 = sub_243906DAC((a1 + 228), v19, *(a1 + 880) != 0, *(a1 + 368), v25, v24, a3, *(a1 + 408), *(a1 + 416));
  v31 = v30;
  if (v30 > 0xFFFFFFFFFFFFFF88)
  {
    return v31;
  }

  v32 = *(a1 + 880);
  if (!v32)
  {
    ++*(a1 + 716);
  }

  v33 = *(a1 + 664);
  v34 = *(a1 + 656);
  v117 = v23;
  v35 = *(a1 + 696) - *(a1 + 680) >= 3 * v30 && *(a1 + 716) > 128;
  if (v33 - v34 < v30 || v35)
  {
    if (!v32)
    {
      v47 = *(a1 + 856);
      v48 = *(a1 + 864);
      *(a1 + 656) = 0u;
      *(a1 + 672) = 0u;
      *(a1 + 688) = 0u;
      *(a1 + 704) = 0u;
      *(a1 + 720) = 0;
      if (v34)
      {
        if (v47)
        {
          v47(v48);
        }

        else
        {
          free(v34);
        }
      }

      v61 = *(a1 + 848);
      v62 = v61 ? v61(*(a1 + 864), v31) : malloc(v31);
      v39 = v120;
      if (v62)
      {
        *(a1 + 656) = v62;
        *(a1 + 664) = &v62[v31];
        *(a1 + 672) = v62;
        *(a1 + 688) = v62;
        v63 = &v62[v31] & 0xFFFFFFFFFFFFFFC0;
        *(a1 + 704) = v63;
        *(a1 + 720) = 0;
        *(a1 + 680) = v62;
        *(a1 + 696) = v63;
        *(a1 + 712) = 0;
        *(a1 + 716) = 0;
        if (v31 > 5631)
        {
          *(a1 + 672) = v62 + 5632;
          *(a1 + 680) = v62 + 5632;
          *(a1 + 688) = v62 + 5632;
          *(a1 + 3176) = v62;
          if (v31 >> 10 > 0xA)
          {
            *(a1 + 672) = v62 + 11264;
            *(a1 + 680) = v62 + 11264;
            *(a1 + 688) = v62 + 11264;
            *(a1 + 3184) = v62 + 5632;
            if (v31 >> 3 > 0x9DA)
            {
              v115 = a6;
              v116 = v24;
              *(a1 + 672) = v62 + 20184;
              v38 = (a1 + 720);
              *(a1 + 688) = v62 + 20184;
              v37 = (a1 + 712);
              *(a1 + 3496) = v62 + 11264;
              *(a1 + 680) = v62 + 20184;
              *(a1 + 712) = 0;
              v29 = 1;
              goto LABEL_45;
            }

            *(a1 + 712) = 1;
            *(a1 + 3496) = 0;
          }

          else
          {
            *(a1 + 712) = 1;
            *(a1 + 3184) = 0;
          }
        }

        else
        {
          *(a1 + 712) = 1;
          *(a1 + 3176) = 0;
        }
      }
    }

    return -64;
  }

  v115 = a6;
  v116 = v24;
  v36 = *(a1 + 720);
  *(a1 + 680) = *(a1 + 672);
  *(a1 + 696) = v33 & 0xFFFFFFFFFFFFFFC0;
  v37 = (a1 + 712);
  *(a1 + 712) = 0;
  v38 = (a1 + 720);
  if (v36 >= 2)
  {
    *(a1 + 720) = 1;
  }

  v39 = v120;
LABEL_45:
  *(a1 + 3448) = *(a1 + 228);
  *(a1 + 3460) = *(a1 + 240);
  *(a1 + 3488) = *(a1 + 400) == 1;
  *(a1 + 744) = 0u;
  *(a1 + 736) = a3 + 1;
  if (a3 == -1)
  {
    *(a1 + 256) = 0;
  }

  *(a1 + 728) = v39;
  v40 = v39;
  sub_243902C88(a1 + 760, 0);
  *a1 = 1;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0;
  v41 = *(a1 + 3176);
  *(v41 + 5624) = 8;
  *(v41 + 5616) = 0x400000001;
  *(v41 + 2056) = 0;
  *(v41 + 5604) = 0;
  *(v41 + 5608) = 0;
  v31 = sub_243909A68(a1 + 3192, a1 + 656, (a1 + 228), *(a1 + 368), a5, v29, 1);
  if (v31 <= 0xFFFFFFFFFFFFFF88)
  {
    v42 = *v38;
    v43 = v40 / v23;
    v44 = v40;
    v45 = v37;
    if (*v38 > 1)
    {
      v46 = v116;
    }

    else
    {
      v46 = v116;
      if (!v42)
      {
        v50 = *(a1 + 672);
        *(a1 + 688) = v50;
        v51 = *(a1 + 664);
        *(a1 + 704) = v51 & 0xFFFFFFFFFFFFFFC0;
        v52 = -v50 & 0x3FLL;
        v53 = v50 + v52;
        if (v53 > v51)
        {
          v42 = 0;
          v49 = 0;
          goto LABEL_63;
        }

        *(a1 + 672) = v53;
        *(a1 + 680) = v53;
        if (v52)
        {
          *(a1 + 688) = v53;
        }
      }

      v42 = 2;
      *v38 = 2;
    }

    v49 = (8 * v43 + 63) & 0xFFFFFFFFFFFFFFC0;
    if (v49)
    {
      v49 = *(a1 + 696) - v49;
      if (v49 >= *(a1 + 680))
      {
        if (v49 < *(a1 + 688))
        {
          *(a1 + 688) = v49;
        }

        *(a1 + 696) = v49;
      }

      else
      {
        v49 = 0;
        *v45 = 1;
      }
    }

LABEL_63:
    *(a1 + 928) = v49;
    if (*(a1 + 320) != 1)
    {
      goto LABEL_102;
    }

    v54 = 8 << *(a1 + 324);
    if (v42 <= 1)
    {
      v55 = *(a1 + 672);
      *(a1 + 688) = v55;
      v56 = *(a1 + 664);
      *(a1 + 704) = v56 & 0xFFFFFFFFFFFFFFC0;
      v57 = -v55 & 0x3FLL;
      v58 = v55 + v57;
      if (v58 > v56)
      {
        goto LABEL_72;
      }

      *(a1 + 672) = v58;
      *(a1 + 680) = v58;
      if (v57)
      {
        *(a1 + 688) = v58;
      }

      *v38 = 2;
    }

    v59 = (v54 + 63) & 0xFFFFFFFFFFFFFFC0;
    if (v59)
    {
      v60 = (*(a1 + 696) - v59);
      if (v60 >= *(a1 + 680))
      {
        if (v60 < *(a1 + 688))
        {
          *(a1 + 688) = v60;
        }

        *(a1 + 696) = v60;
      }

      else
      {
        v60 = 0;
        *v45 = 1;
      }

LABEL_85:
      *(a1 + 1048) = v60;
      bzero(v60, v54);
      v42 = *(a1 + 720);
      if (v42 > 1)
      {
        v44 = v120;
        v64 = v118;
      }

      else
      {
        v44 = v120;
        v64 = v118;
        if (!v42)
        {
          v66 = *(a1 + 672);
          *(a1 + 688) = v66;
          v67 = *(a1 + 664);
          *(a1 + 704) = v67 & 0xFFFFFFFFFFFFFFC0;
          v68 = -v66 & 0x3FLL;
          v69 = v66 + v68;
          if (v69 > v67)
          {
            v42 = 0;
            v65 = 0;
LABEL_101:
            *(a1 + 3120) = v65;
            *(a1 + 3128) = v64;
            *(a1 + 1040) = 0;
            *(a1 + 1016) = " ";
            *(a1 + 1024) = " ";
            *(a1 + 1032) = 0x200000002;
            *(a1 + 1008) = "\n";
            *(a1 + 1056) = 0;
LABEL_102:
            if (!*(a1 + 408))
            {
              goto LABEL_116;
            }

            v70 = v44 / 3 + 1;
            *(a1 + 5232) = v70;
            if (v42 <= 1)
            {
              v71 = *(a1 + 672);
              *(a1 + 688) = v71;
              v72 = *(a1 + 664);
              *(a1 + 704) = v72 & 0xFFFFFFFFFFFFFFC0;
              v73 = -v71 & 0x3FLL;
              v74 = v71 + v73;
              if (v74 > v72)
              {
                v42 = 0;
                v75 = 0;
LABEL_115:
                *(a1 + 5224) = v75;
LABEL_116:
                if (v42 <= 2)
                {
                  if (!v42)
                  {
                    v78 = *(a1 + 672);
                    *(a1 + 688) = v78;
                    v79 = *(a1 + 664);
                    *(a1 + 704) = v79 & 0xFFFFFFFFFFFFFFC0;
                    v80 = -v78 & 0x3FLL;
                    v81 = v78 + v80;
                    if (v81 > v79)
                    {
                      *(a1 + 944) = 0;
                      *(a1 + 992) = v44;
                      *(a1 + 3504) = v115;
                      *(a1 + 3520) = v25;
                      v82 = *(a1 + 672);
                      *(a1 + 688) = v82;
                      v83 = *(a1 + 664);
                      *(a1 + 704) = v83 & 0xFFFFFFFFFFFFFFC0;
                      v84 = -v82 & 0x3FLL;
                      v85 = v82 + v84;
                      if (v85 > v83)
                      {
                        *(a1 + 3512) = 0;
                        *(a1 + 3560) = v46;
                        v86 = *(a1 + 672);
                        *(a1 + 688) = v86;
                        v87 = *(a1 + 664);
                        *(a1 + 704) = v87 & 0xFFFFFFFFFFFFFFC0;
                        v88 = -v86 & 0x3FLL;
                        v89 = v86 + v88;
                        if (v89 <= v87)
                        {
                          *(a1 + 672) = v89;
                          *(a1 + 680) = v89;
                          if (v88)
                          {
                            *(a1 + 688) = v89;
                          }

                          v42 = 3;
                          *v38 = 3;
                          if (v46)
                          {
                            goto LABEL_146;
                          }
                        }

                        else
                        {
                          v42 = 0;
                        }

                        goto LABEL_154;
                      }

                      *(a1 + 672) = v85;
                      *(a1 + 680) = v85;
                      if (v84)
                      {
                        *(a1 + 688) = v85;
                      }

                      v42 = 3;
                      *v38 = 3;
                      if (v25)
                      {
                        goto LABEL_127;
                      }

                      goto LABEL_144;
                    }

                    *(a1 + 672) = v81;
                    *(a1 + 680) = v81;
                    if (v80)
                    {
                      *(a1 + 688) = v81;
                    }
                  }

                  v42 = 3;
                  *v38 = 3;
                }

                if (v44 == -32)
                {
                  v76 = 0;
                }

                else
                {
                  v76 = *(a1 + 696) - v44 - 32;
                  if (v76 >= *(a1 + 680))
                  {
                    if (v76 < *(a1 + 688))
                    {
                      *(a1 + 688) = v76;
                    }

                    *(a1 + 696) = v76;
                  }

                  else
                  {
                    v76 = 0;
                    *v45 = 1;
                  }
                }

                *(a1 + 944) = v76;
                *(a1 + 992) = v44;
                *(a1 + 3504) = v115;
                *(a1 + 3520) = v25;
                if (v25)
                {
LABEL_127:
                  v77 = *(a1 + 696) - v25;
                  if (v77 >= *(a1 + 680))
                  {
                    if (v77 < *(a1 + 688))
                    {
                      *(a1 + 688) = v77;
                    }

                    *(a1 + 696) = v77;
                  }

                  else
                  {
                    v77 = 0;
                    *v45 = 1;
                  }

LABEL_145:
                  *(a1 + 3512) = v77;
                  *(a1 + 3560) = v46;
                  if (v46)
                  {
LABEL_146:
                    v90 = *(a1 + 696) - v46;
                    if (v90 >= *(a1 + 680))
                    {
                      if (v90 < *(a1 + 688))
                      {
                        *(a1 + 688) = v90;
                      }

                      *(a1 + 696) = v90;
                    }

                    else
                    {
                      v90 = 0;
                      *v45 = 1;
                    }

LABEL_155:
                    *(a1 + 3552) = v90;
                    if (*(a1 + 320) != 1)
                    {
LABEL_168:
                      if (*a1 == 1 && *v19 != 1)
                      {
                        *(a1 + 3168) = 0;
                        *(a1 + 3152) = 0u;
                        *(a1 + 3136) = 0u;
                      }

                      *(a1 + 984) = v43;
                      v98 = *(a1 + 720);
                      if (v98 <= 2)
                      {
                        if (!v98)
                        {
                          v103 = *(a1 + 672);
                          *(a1 + 688) = v103;
                          v104 = *(a1 + 664);
                          *(a1 + 704) = v104 & 0xFFFFFFFFFFFFFFC0;
                          v105 = -v103 & 0x3FLL;
                          v106 = v103 + v105;
                          if (v106 > v104)
                          {
                            *(a1 + 960) = 0;
                            v107 = *(a1 + 672);
                            *(a1 + 688) = v107;
                            v108 = *(a1 + 664);
                            *(a1 + 704) = v108 & 0xFFFFFFFFFFFFFFC0;
                            v109 = -v107 & 0x3FLL;
                            v110 = v107 + v109;
                            if (v110 > v108)
                            {
                              *(a1 + 968) = 0;
                              v111 = *(a1 + 672);
                              *(a1 + 688) = v111;
                              v112 = *(a1 + 664);
                              *(a1 + 704) = v112 & 0xFFFFFFFFFFFFFFC0;
                              v113 = -v111 & 0x3FLL;
                              v114 = v111 + v113;
                              if (v114 > v112)
                              {
                                goto LABEL_191;
                              }

                              *(a1 + 672) = v114;
                              *(a1 + 680) = v114;
                              if (v113)
                              {
                                *(a1 + 688) = v114;
                              }

                              *v38 = 3;
LABEL_190:
                              if (v117 <= v44)
                              {
                                v101 = *(a1 + 696) - v43;
                                if (v101 >= *(a1 + 680))
                                {
                                  if (v101 < *(a1 + 688))
                                  {
                                    *(a1 + 688) = v101;
                                  }

                                  *(a1 + 696) = v101;
                                }

                                else
                                {
                                  v101 = 0;
                                  *v45 = 1;
                                }

                                goto LABEL_197;
                              }

LABEL_191:
                              v101 = 0;
LABEL_197:
                              v31 = 0;
                              *(a1 + 976) = v101;
                              *(a1 + 924) = 1;
                              return v31;
                            }

                            *(a1 + 672) = v110;
                            *(a1 + 680) = v110;
                            if (v109)
                            {
                              *(a1 + 688) = v110;
                            }

                            *v38 = 3;
LABEL_182:
                            if (v117 <= v44)
                            {
                              v100 = *(a1 + 696) - v43;
                              if (v100 >= *(a1 + 680))
                              {
                                if (v100 < *(a1 + 688))
                                {
                                  *(a1 + 688) = v100;
                                }

                                *(a1 + 696) = v100;
                              }

                              else
                              {
                                v100 = 0;
                                *v45 = 1;
                              }
                            }

                            else
                            {
                              v100 = 0;
                            }

                            *(a1 + 968) = v100;
                            goto LABEL_190;
                          }

                          *(a1 + 672) = v106;
                          *(a1 + 680) = v106;
                          if (v105)
                          {
                            *(a1 + 688) = v106;
                          }
                        }

                        *v38 = 3;
                      }

                      if (v117 <= v44)
                      {
                        v99 = *(a1 + 696) - v43;
                        if (v99 >= *(a1 + 680))
                        {
                          if (v99 < *(a1 + 688))
                          {
                            *(a1 + 688) = v99;
                          }

                          *(a1 + 696) = v99;
                        }

                        else
                        {
                          v99 = 0;
                          *v45 = 1;
                        }
                      }

                      else
                      {
                        v99 = 0;
                      }

                      *(a1 + 960) = v99;
                      goto LABEL_182;
                    }

                    v91 = (*(a1 + 324) - *(a1 + 328));
                    v92 = 1 << (*(a1 + 324) - *(a1 + 328));
                    if (v42 <= 2)
                    {
                      v93 = *(a1 + 672);
                      *(a1 + 688) = v93;
                      v94 = *(a1 + 664);
                      *(a1 + 704) = v94 & 0xFFFFFFFFFFFFFFC0;
                      v95 = -v93 & 0x3FLL;
                      v96 = v93 + v95;
                      if (v96 > v94)
                      {
                        v97 = 0;
LABEL_167:
                        *(a1 + 1064) = v97;
                        bzero(v97, v92);
                        v44 = v120;
                        goto LABEL_168;
                      }

                      *(a1 + 672) = v96;
                      *(a1 + 680) = v96;
                      if (v95)
                      {
                        *(a1 + 688) = v96;
                      }

                      *v38 = 3;
                    }

                    v97 = (*(a1 + 696) - v92);
                    if (v97 >= *(a1 + 680))
                    {
                      if (v97 < *(a1 + 688))
                      {
                        *(a1 + 688) = v97;
                      }

                      *(a1 + 696) = v97;
                    }

                    else
                    {
                      v97 = 0;
                      *v45 = 1;
                    }

                    goto LABEL_167;
                  }

LABEL_154:
                  v90 = 0;
                  goto LABEL_155;
                }

LABEL_144:
                v77 = 0;
                goto LABEL_145;
              }

              *(a1 + 672) = v74;
              *(a1 + 680) = v74;
              if (v73)
              {
                *(a1 + 688) = v74;
              }

              v42 = 2;
              *v38 = 2;
            }

            v75 = (16 * v70 + 63) & 0xFFFFFFFFFFFFFFC0;
            if (v75)
            {
              v75 = *(a1 + 696) - v75;
              if (v75 >= *(a1 + 680))
              {
                if (v75 < *(a1 + 688))
                {
                  *(a1 + 688) = v75;
                }

                *(a1 + 696) = v75;
              }

              else
              {
                v75 = 0;
                *v45 = 1;
              }
            }

            goto LABEL_115;
          }

          *(a1 + 672) = v69;
          *(a1 + 680) = v69;
          if (v68)
          {
            *(a1 + 688) = v69;
          }
        }

        v42 = 2;
        *v38 = 2;
      }

      v65 = (12 * v64 + 63) & 0xFFFFFFFFFFFFFFC0;
      if (v65)
      {
        v65 = *(a1 + 696) - v65;
        if (v65 >= *(a1 + 680))
        {
          if (v65 < *(a1 + 688))
          {
            *(a1 + 688) = v65;
          }

          *(a1 + 696) = v65;
        }

        else
        {
          v65 = 0;
          *v45 = 1;
        }
      }

      goto LABEL_101;
    }

LABEL_72:
    v60 = 0;
    goto LABEL_85;
  }

  return v31;
}