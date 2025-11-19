uint64_t sub_100000BD0(uint64_t result)
{
  *result = 11265;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100000BEC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100001EA0(a1, a2);
  }

  else
  {
    sub_100001E40(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void (__cdecl ***sub_100000C2C(void (__cdecl ***a1)(std::ifstream *__hidden this), uint64_t *a2))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  a1[1] = 0;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 2);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_100000DC4(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100000DFC(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this), const std::string *a2, int a3))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v6 = a1 + 2;
  *a1 = v8;
  *(*(v8 - 3) + a1) = v7;
  a1[1] = 0;
  v9 = (*(*a1 - 3) + a1);
  std::ios_base::init(v9, a1 + 3);
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  a1[2] = v11;
  *(*(v11 - 3) + v6) = v10;
  *a1 = v12;
  sub_1000023E4((a1 + 3), a2, a3);
  return a1;
}

void sub_10000108C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_1000010B4(void *a1, uint64_t a2, unsigned __int8 a3)
{
  std::istream::sentry::sentry();
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

void sub_100001218(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1000011D8);
  }

  __cxa_rethrow();
}

uint64_t sub_1000012A8(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100002620(a1, a2);
  }

  else
  {
    sub_1000025C0(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1000012E8(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

_BYTE *sub_10000143C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001AA8();
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

BOOL sub_1000014F4(uint64_t a1, uint64_t *a2)
{
  sub_1000018DC(v24, a2);
  v3 = v25;
  if (v25)
  {
    v20 = v25;
    v4 = *(a1 + 8);
    if (*(a1 + 16) != v4)
    {
      v5 = 0;
      while (1)
      {
        v7 = (v4 + 24 * v5);
        v6 = *v7;
        if (v7[1] != *v7)
        {
          break;
        }

LABEL_28:
        sub_1000027F4(v24, "\n", 1);
        ++v5;
        v4 = *(a1 + 8);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v4) >> 3) <= v5)
        {
          goto LABEL_29;
        }
      }

      v8 = 0;
      v9 = 0;
      while (1)
      {
        v10 = (v6 + v8);
        if (*(v10 + 23) < 0)
        {
          sub_100001C60(__dst, *v10, *(v10 + 1));
        }

        else
        {
          v11 = *v10;
          *&__dst[16] = *(v10 + 2);
          *__dst = v11;
        }

        sub_10000143C(&__p, ",");
        v12 = siri::dialogengine::StringContains();
        v13 = v12;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (v13)
          {
LABEL_13:
            std::operator+<char>();
            v14 = std::string::append(&__p, "\u200E");
            v15 = v14->__r_.__value_.__r.__words[0];
            v23[0] = v14->__r_.__value_.__l.__size_;
            *(v23 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
            v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
            v14->__r_.__value_.__l.__size_ = 0;
            v14->__r_.__value_.__r.__words[2] = 0;
            v14->__r_.__value_.__r.__words[0] = 0;
            if ((__dst[23] & 0x80000000) != 0)
            {
              operator delete(*__dst);
            }

            *__dst = v15;
            *&__dst[8] = v23[0];
            *&__dst[15] = *(v23 + 7);
            __dst[23] = v16;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        else if (v12)
        {
          goto LABEL_13;
        }

        if (__dst[23] >= 0)
        {
          v17 = __dst;
        }

        else
        {
          v17 = *__dst;
        }

        if (__dst[23] >= 0)
        {
          v18 = __dst[23];
        }

        else
        {
          v18 = *&__dst[8];
        }

        sub_1000027F4(v24, v17, v18);
        if (v9 != 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 24 * v5 + 8) - *(*(a1 + 8) + 24 * v5)) >> 3) - 1)
        {
          sub_1000027F4(v24, ",", 1);
        }

        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        ++v9;
        v6 = *(*(a1 + 8) + 24 * v5);
        v8 += 24;
        if (0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 24 * v5 + 8) - v6) >> 3) <= v9)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_29:
    v3 = v20;
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v24 + *(v24[0] - 3)), *(&v24[4] + *(v24[0] - 3)) | 4);
    }
  }

  else
  {
    puts("Could not open file!");
  }

  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return v3 != 0;
}

void sub_100001868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_1000018DC(void (__cdecl ***a1)(std::ofstream *__hidden this), uint64_t *a2))(std::ofstream *__hidden this)
{
  a1[58] = 0;
  *a1 = v5;
  *(*(v5 - 3) + a1) = v4;
  v6 = (*(*a1 - 3) + a1);
  std::ios_base::init(v6, a1 + 1);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_100001A70(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100001AC0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100001B1C(exception, a1);
}

std::logic_error *sub_100001B1C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100001B50()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t sub_100001B98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

void *sub_100001C60(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100001AA8();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_100001D04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::ostream::~ostream();
}

void sub_100001DCC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_100002260(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_100001E40(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_100001FDC(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_100001EA0(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000020B0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100002304(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_100001FDC(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_10000235C(&v14);
  return v8;
}

void sub_100001FC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000235C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100001FDC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100002064(result, a4);
  }

  return result;
}

void sub_100002044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100002260(&a9);
  _Unwind_Resume(a1);
}

void sub_100002064(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_1000020C8(a1, a2);
  }

  sub_1000020B0();
}

void sub_1000020C8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100001B50();
}

char *sub_100002120(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100001C60(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_1000021E0(v9);
  return v4;
}

uint64_t sub_1000021E0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100002218(a1);
  }

  return a1;
}

void sub_100002218(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_100002260(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000022B4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000022B4(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_100002304(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100001B50();
}

void **sub_10000235C(void **a1)
{
  sub_100002390(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100002390(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_100002260(&v5);
  }
}

uint64_t sub_1000023E4(uint64_t a1, const std::string *a2, int a3)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_1000024B8(a1);
  return a1;
}

void sub_100002490(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1000024B8(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_1000025C0(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100001C60(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_100002620(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000020B0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_1000020C8(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100001C60(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_100002760(&v17);
  return v11;
}

void sub_10000274C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100002760(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100002760(uint64_t a1)
{
  sub_100002798(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100002798(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void *sub_1000027F4(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_10000299C(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100002934(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100002914);
}

uint64_t sub_10000299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100001AA8();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100002B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string::size_type sub_100002B84(void *a1, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= 2)
  {
    sub_100039B10(a2);
    return 0;
  }

  sub_10000143C(&__p, "--templateDir");
  siri::dialogengine::GetOption();
  siri::dialogengine::ExpandPath();
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&v153, "--catId");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&v153, "--locale");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&v153, "--outputDir");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&v153, "--params");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&v153, "--selectedParams");
  siri::dialogengine::GetOption();
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&v153, "--json");
  v3 = siri::dialogengine::OptionExists();
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&v153, "--expandOpts");
  siri::dialogengine::OptionExists();
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&v153, "--evaluateConditions");
  v4 = siri::dialogengine::OptionExists();
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&v153, "--richResult");
  siri::dialogengine::OptionExists();
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&v153, "--getAllSchemasAndGlobalParams");
  v5 = siri::dialogengine::OptionExists();
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  sub_10000143C(&v153, "--getRepresentativeDialog");
  v6 = siri::dialogengine::OptionExists();
  if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v153.__r_.__value_.__l.__data_);
  }

  v7 = v126;
  if ((v126 & 0x80u) != 0)
  {
    v7 = v125;
  }

  if (!v7)
  {
    v11 = sub_1000027F4(&std::cout, "Error: no ", 10);
    v12 = "--locale";
    v13 = 8;
LABEL_46:
    v14 = sub_1000027F4(v11, v12, v13);
    v15 = " option specified";
    v16 = 17;
    goto LABEL_47;
  }

  v8 = v131;
  if ((v131 & 0x80u) != 0)
  {
    v8 = v130[1];
  }

  if (!v8)
  {
    v11 = sub_1000027F4(&std::cout, "Error: no ", 10);
    v12 = "--templateDir";
    v13 = 13;
    goto LABEL_46;
  }

  v9 = v129;
  if ((v129 & 0x80u) != 0)
  {
    v9 = v128;
  }

  if (!v9)
  {
    v11 = sub_1000027F4(&std::cout, "Error: no ", 10);
    v12 = "--catId";
    v13 = 7;
    goto LABEL_46;
  }

  if (v6)
  {
    siri::dialogengine::StringSplit();
    v10 = v118;
    if ((v118 & 0x80u) != 0)
    {
      v10 = v117;
    }

    if (v10)
    {
      siri::dialogengine::StringSplit();
      sub_100005FE0(&__p);
      __p = v153;
      memset(&v153, 0, sizeof(v153));
      __dst[0].__locale_ = &v153;
      sub_100002260(__dst);
LABEL_152:
      sub_100006020(&v153, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      sub_10000143C(v147, &unk_10006B9FB);
      sub_100004B38(v130, v147, &v127, __dst);
      if (SHIBYTE(v148) < 0)
      {
        operator delete(v147[0]);
      }

      sub_1000051E0(__dst, &v153, v147);
      v54 = HIBYTE(v148);
      v55 = HIBYTE(v148);
      v56 = v147[1];
      if (v148 >= 0)
      {
        v57 = HIBYTE(v148);
      }

      else
      {
        v57 = v147[1];
      }

      if (!v57)
      {
        v58 = v118;
        if ((v118 & 0x80u) != 0)
        {
          v58 = v117;
        }

        if (!v58)
        {
          v143[1].__locale_ = 0;
          v144 = 0;
          v143[0].__locale_ = 0;
          sub_100007CFC(v143, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3));
          v59 = 0;
          v60 = 0;
          v139[0] = 0;
          v139[1] = 0;
          v140 = 0;
          locale = v143[0].__locale_;
          v61 = v143[1].__locale_;
          v63 = 0xAAAAAAAAAAAAAAABLL * ((v143[1].__locale_ - v143[0].__locale_) >> 3);
          if (v63 != 31)
          {
            v64 = 0;
            v65 = 1 << v63;
            if (v63 <= 1)
            {
              v66 = 1;
            }

            else
            {
              v66 = 0xAAAAAAAAAAAAAAABLL * ((v143[1].__locale_ - v143[0].__locale_) >> 3);
            }

            do
            {
              v135 = 0uLL;
              v136 = 0;
              if (v61 != locale)
              {
                v67 = 0;
                v68 = 0;
                do
                {
                  if ((v64 >> v68))
                  {
                    sub_1000012A8(&v135, (v143[0].__locale_ + v67));
                  }

                  ++v68;
                  v67 += 24;
                }

                while (v66 != v68);
                if (v135 != *(&v135 + 1))
                {
                  sub_100000BEC(v139, &v135);
                }
              }

              v133[0] = &v135;
              sub_100002260(v133);
              ++v64;
            }

            while (v64 != v65);
            v60 = v139[0];
            v59 = v139[1];
          }

          v69 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v59 - v60));
          if (v59 == v60)
          {
            v70 = 0;
          }

          else
          {
            v70 = v69;
          }

          sub_100007D84(v60, v59, v70, 1);
          v71 = v139[0];
          v72 = v139[1];
          if (v139[0] != v139[1])
          {
            do
            {
              sub_10000943C(&v135, *v71, v71[1]);
              sub_1000051E0(__dst, &v135, v133);
              if (SHIBYTE(v148) < 0)
              {
                operator delete(v147[0]);
              }

              v148 = v134;
              *v147 = *v133;
              if ((v134 & 0x8000000000000000) == 0)
              {
                v73 = HIBYTE(v134);
              }

              else
              {
                v73 = v133[1];
              }

              sub_10000623C(&v135, *(&v135 + 1));
              v71 += 3;
              if (v73)
              {
                v74 = 1;
              }

              else
              {
                v74 = v71 == v72;
              }
            }

            while (!v74);
          }

          *&v135 = v139;
          sub_100001DCC(&v135);
          v139[0] = v143;
          sub_100002260(v139);
          v54 = HIBYTE(v148);
          v56 = v147[1];
          v55 = HIBYTE(v148);
        }
      }

      if (v55 >= 0)
      {
        v75 = v54;
      }

      else
      {
        v75 = v56;
      }

      v2 = v75 != 0;
      if (v75)
      {
        if (v55 >= 0)
        {
          v76 = v147;
        }

        else
        {
          v76 = v147[0];
        }

        v77 = sub_1000027F4(&std::cout, v76, v75);
      }

      else
      {
        v77 = sub_1000027F4(&std::cout, "Error: No dialog contains all selected parameters.", 50);
      }

      std::ios_base::getloc((v77 + *(*v77 - 24)));
      v78 = std::locale::use_facet(v143, &std::ctype<char>::id);
      (v78->__vftable[2].~facet_0)(v78, 10);
      std::locale::~locale(v143);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v148) < 0)
      {
        operator delete(v147[0]);
      }

      sub_100005E58(__dst, __dst[1].__locale_);
      sub_10000623C(&v153, v153.__r_.__value_.__l.__size_);
LABEL_201:
      v153.__r_.__value_.__r.__words[0] = &__p;
      sub_100002260(&v153);
      goto LABEL_48;
    }

    siri::dialogengine::CreateJSONStringVal();
    sub_10000143C(&v153, "templateDir");
    v154 = *v147;
    v147[0] = 0;
    v147[1] = 0;
    siri::dialogengine::CreateJSONStringVal();
    sub_10000143C(&v155, "catId");
    v157 = *&v143[0].__locale_;
    v143[0].__locale_ = 0;
    v143[1].__locale_ = 0;
    siri::dialogengine::CreateJSONStringVal();
    sub_10000143C(v158, "locale");
    v159 = *v139;
    v139[0] = 0;
    v139[1] = 0;
    sub_100005720(__dst, &v153.__r_.__value_.__l.__data_, 3);
    for (i = 0; i != -15; i -= 5)
    {
      v32 = (&v153.__r_.__value_.__l.__data_ + i * 8);
      v33 = __dst[i].__locale_;
      if (v33)
      {
        sub_100005EB4(v33);
      }

      if (*(v32 + 103) < 0)
      {
        operator delete(v32[10]);
      }
    }

    siri::dialogengine::ConstructJSONString();
    sub_10000143C(&v153, &unk_10006B9FB);
    sub_10000143C(v143, &unk_10006B9FB);
    sub_10000143C(v139, &unk_10006B9FB);
    siri::dialogengine::PrepareRequestFromJson();
    if (SHIBYTE(v140) < 0)
    {
      operator delete(v139[0]);
    }

    if (SHIBYTE(v144) < 0)
    {
      operator delete(v143[0].__locale_);
    }

    if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v153.__r_.__value_.__l.__data_);
    }

    siri::dialogengine::Context::GetFile(&v132, v133[0]);
    v2 = v132.__r_.__value_.__r.__words[0];
    if (v132.__r_.__value_.__r.__words[0])
    {
      v115 = v132.__r_.__value_.__r.__words[0];
      siri::dialogengine::File::GetParameters(v143, v132.__r_.__value_.__l.__data_);
      v34 = v143[0].__locale_;
      v35 = v143[1].__locale_;
      while (v34 != v35)
      {
        siri::dialogengine::PropertyBase::GetType(v139, v34);
        v36 = HIBYTE(v140);
        if (SHIBYTE(v140) < 0)
        {
          if (v139[1] != 14)
          {
            goto LABEL_127;
          }

          v37 = v139[0];
        }

        else
        {
          if (SHIBYTE(v140) != 14)
          {
            goto LABEL_127;
          }

          v37 = v139;
        }

        v38 = *v37;
        v39 = *(v37 + 6);
        v40 = v38 == 0x422E676F6C616964 && v39 == 0x6E61656C6F6F422ELL;
        if (!v40)
        {
LABEL_127:
          siri::dialogengine::PropertyBase::GetName(&v135, v34);
          size = __p.__r_.__value_.__l.__size_;
          if (__p.__r_.__value_.__l.__size_ >= __p.__r_.__value_.__r.__words[2])
          {
            v43 = 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3);
            v44 = v43 + 1;
            if (v43 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1000020B0();
            }

            if (0x5555555555555556 * ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3) > v44)
            {
              v44 = 0x5555555555555556 * ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
            {
              v45 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v45 = v44;
            }

            *(&v154 + 1) = &__p;
            if (v45)
            {
              sub_1000020C8(&__p, v45);
            }

            v46 = 8 * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3);
            v47 = v135;
            *(v46 + 16) = v136;
            *v46 = v47;
            v136 = 0;
            v135 = 0uLL;
            v48 = 24 * v43 + 24;
            v49 = 24 * v43 - (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]);
            memcpy((v46 - (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0])), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]);
            v50 = __p.__r_.__value_.__r.__words[0];
            v51 = __p.__r_.__value_.__r.__words[2];
            __p.__r_.__value_.__r.__words[0] = v49;
            *&__p.__r_.__value_.__r.__words[1] = v48;
            v153.__r_.__value_.__r.__words[2] = v50;
            *&v154 = v51;
            v153.__r_.__value_.__r.__words[0] = v50;
            v153.__r_.__value_.__l.__size_ = v50;
            sub_100002760(&v153);
            __p.__r_.__value_.__l.__size_ = v48;
            if (SHIBYTE(v136) < 0)
            {
              operator delete(v135);
            }
          }

          else
          {
            v42 = v135;
            *(__p.__r_.__value_.__l.__size_ + 16) = v136;
            *size = v42;
            __p.__r_.__value_.__l.__size_ = size + 24;
          }

          v36 = HIBYTE(v140);
        }

        if (v36 < 0)
        {
          operator delete(v139[0]);
        }

        v34 = (v34 + 336);
      }

      v153.__r_.__value_.__r.__words[0] = v143;
      sub_100005F20(&v153);
      v2 = v115;
    }

    else
    {
      v52 = sub_1000027F4(&std::cout, "Specified CAT file not found.", 29);
      std::ios_base::getloc((v52 + *(*v52 - 24)));
      v53 = std::locale::use_facet(&v153, &std::ctype<char>::id);
      (v53->__vftable[2].~facet_0)(v53, 10);
      std::locale::~locale(&v153);
      std::ostream::put();
      std::ostream::flush();
    }

    if (v132.__r_.__value_.__l.__size_)
    {
      sub_100005EB4(v132.__r_.__value_.__l.__size_);
    }

    if (v133[1])
    {
      sub_100005EB4(v133[1]);
    }

    if (SHIBYTE(v148) < 0)
    {
      operator delete(v147[0]);
    }

    sub_100005E58(__dst, __dst[1].__locale_);
    if (!v2)
    {
      goto LABEL_201;
    }

    goto LABEL_152;
  }

  if (v5)
  {
    siri::dialogengine::CreateJSONStringVal();
    sub_10000143C(&v153, "templateDir");
    v154 = *&__dst[0].__locale_;
    __dst[0].__locale_ = 0;
    __dst[1].__locale_ = 0;
    siri::dialogengine::CreateJSONStringVal();
    sub_10000143C(&v155, "catId");
    v157 = *v147;
    v147[0] = 0;
    v147[1] = 0;
    siri::dialogengine::CreateJSONStringVal();
    sub_10000143C(v158, "locale");
    v159 = *&v143[0].__locale_;
    v143[0].__locale_ = 0;
    v143[1].__locale_ = 0;
    sub_100005720(&__p, &v153.__r_.__value_.__l.__data_, 3);
    for (j = 0; j != -15; j -= 5)
    {
      v21 = (&v153.__r_.__value_.__l.__data_ + j * 8);
      v22 = __dst[j].__locale_;
      if (v22)
      {
        sub_100005EB4(v22);
      }

      if (*(v21 + 103) < 0)
      {
        operator delete(v21[10]);
      }
    }

    if (__dst[1].__locale_)
    {
      sub_100005EB4(__dst[1].__locale_);
    }

    siri::dialogengine::ConstructJSONString();
    sub_10000143C(__dst, &unk_10006B9FB);
    sub_10000143C(v147, &unk_10006B9FB);
    sub_10000143C(v143, &unk_10006B9FB);
    siri::dialogengine::PrepareRequestFromJson();
    if (SHIBYTE(v144) < 0)
    {
      operator delete(v143[0].__locale_);
    }

    if (SHIBYTE(v148) < 0)
    {
      operator delete(v147[0]);
    }

    if (SHIBYTE(v161) < 0)
    {
      operator delete(__dst[0].__locale_);
    }

    siri::dialogengine::GetAllSchemasAndGlobalParams(v139[0], v23);
    siri::dialogengine::ConstructJSONString();
    if (v148 >= 0)
    {
      v24 = v147;
    }

    else
    {
      v24 = v147[0];
    }

    puts(v24);
    if (SHIBYTE(v148) < 0)
    {
      operator delete(v147[0]);
    }

    sub_100005E58(__dst, __dst[1].__locale_);
    if (v139[1])
    {
      sub_100005EB4(v139[1]);
    }

    if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v153.__r_.__value_.__l.__data_);
    }

    sub_100005E58(&__p, __p.__r_.__value_.__l.__size_);
    v2 = 1;
    goto LABEL_48;
  }

  if ((v3 & 1) == 0)
  {
    v25 = v123;
    if ((v123 & 0x80u) != 0)
    {
      v25 = v122;
    }

    if (!v25)
    {
      v11 = sub_1000027F4(&std::cout, "Error: no ", 10);
      v12 = "--outputDir";
      v13 = 11;
      goto LABEL_46;
    }
  }

  if (!v4)
  {
    goto LABEL_94;
  }

  v26 = v120;
  if ((v120 & 0x80u) != 0)
  {
    v26 = v119[1];
  }

  if (v26)
  {
LABEL_94:
    sub_100004B38(v130, v119, &v127, v133);
    if (v134)
    {
      if (v3)
      {
        siri::dialogengine::ConstructJSONString();
        if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v153;
        }

        else
        {
          v27 = v153.__r_.__value_.__r.__words[0];
        }

        if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = HIBYTE(v153.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v28 = v153.__r_.__value_.__l.__size_;
        }

        v29 = sub_1000027F4(&std::cout, v27, v28);
        std::ios_base::getloc((v29 + *(*v29 - 24)));
        v30 = std::locale::use_facet(&__p, &std::ctype<char>::id);
        (v30->__vftable[2].~facet_0)(v30, 10);
        std::locale::~locale(&__p);
        std::ostream::put();
        std::ostream::flush();
        if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v153.__r_.__value_.__l.__data_);
        }

LABEL_311:
        v2 = 1;
LABEL_313:
        sub_100005E58(v133, v133[1]);
        goto LABEL_48;
      }

      if ((v129 & 0x80u) == 0)
      {
        v79 = v129;
      }

      else
      {
        v79 = v128;
      }

      v80 = &v153;
      sub_1000094C0(&v153, v79 + 1);
      if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v80 = v153.__r_.__value_.__r.__words[0];
      }

      if (v79)
      {
        if ((v129 & 0x80u) == 0)
        {
          v81 = &v127;
        }

        else
        {
          v81 = v127;
        }

        memmove(v80, v81, v79);
      }

      *(&v80->__r_.__value_.__l.__data_ + v79) = 35;
      if ((v126 & 0x80u) == 0)
      {
        v82 = &v124;
      }

      else
      {
        v82 = v124;
      }

      if ((v126 & 0x80u) == 0)
      {
        v83 = v126;
      }

      else
      {
        v83 = v125;
      }

      v84 = std::string::append(&v153, v82, v83);
      v132 = *v84;
      v84->__r_.__value_.__l.__size_ = 0;
      v84->__r_.__value_.__r.__words[2] = 0;
      v84->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v153.__r_.__value_.__l.__data_);
      }

      sub_100000BD0(&__p);
      sub_10000143C(&v153, &unk_10006B9FB);
      sub_10000143C(&v154, "print");
      sub_10000143C(&v156, "speak");
      __dst[0].__locale_ = 0;
      __dst[1].__locale_ = 0;
      v161 = 0;
      sub_10000954C(__dst, &v153, &v157 + 8, 3uLL);
      sub_100000BE4(&__p, __dst);
      v147[0] = __dst;
      sub_100002260(v147);
      for (k = 0; k != -72; k -= 24)
      {
        if (v158[k - 9] < 0)
        {
          operator delete(*(&v156 + k));
        }
      }

      v86 = v133[0];
      if (v133[0] != &v133[1])
      {
        do
        {
          if (*(v86 + 55) < 0)
          {
            sub_100001C60(__dst, *(v86 + 4), *(v86 + 5));
          }

          else
          {
            *&__dst[0].__locale_ = *(v86 + 2);
            v161 = *(v86 + 6);
          }

          memset(&v153, 0, sizeof(v153));
          sub_10000954C(&v153, __dst, v162, 1uLL);
          sub_100000BE4(&__p, &v153);
          v147[0] = &v153;
          sub_100002260(v147);
          if (SHIBYTE(v161) < 0)
          {
            operator delete(__dst[0].__locale_);
          }

          v87 = *(v86 + 8);
          v149 = *(v86 + 7);
          v150 = v87;
          if (v87)
          {
            atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          siri::dialogengine::GetJSONArrayVal();
          if (v150)
          {
            sub_100005EB4(v150);
          }

          v89 = __dst[0].__locale_;
          v88 = __dst[1].__locale_;
          while (v89 != v88)
          {
            v90 = *(v89 + 1);
            v145 = *v89;
            v146 = v90;
            if (v90)
            {
              atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            siri::dialogengine::GetJSONObjectVal();
            if (v146)
            {
              sub_100005EB4(v146);
            }

            sub_10000143C(&v153, "print");
            v91 = sub_100007A70(v147, &v153.__r_.__value_.__l.__data_);
            v92 = v91[1];
            v141 = *v91;
            v142 = v92;
            if (v92)
            {
              atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            siri::dialogengine::GetJSONStringVal();
            if (v142)
            {
              sub_100005EB4(v142);
            }

            if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v153.__r_.__value_.__l.__data_);
            }

            sub_10000143C(&v153, "speak");
            v93 = sub_100007A70(v147, &v153.__r_.__value_.__l.__data_);
            v94 = v93[1];
            v137 = *v93;
            v138 = v94;
            if (v94)
            {
              atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            siri::dialogengine::GetJSONStringVal();
            if (v138)
            {
              sub_100005EB4(v138);
            }

            if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v153.__r_.__value_.__l.__data_);
            }

            sub_10000143C(&v153, &unk_10006B9FB);
            if (SHIBYTE(v144) < 0)
            {
              sub_100001C60(&v154, v143[0].__locale_, v143[1].__locale_);
            }

            else
            {
              v154 = *&v143[0].__locale_;
              v155 = v144;
            }

            if (SHIBYTE(v140) < 0)
            {
              sub_100001C60(&v156, v139[0], v139[1]);
            }

            else
            {
              v156 = *v139;
              *&v157 = v140;
            }

            v135 = 0uLL;
            v136 = 0;
            sub_10000954C(&v135, &v153, &v157 + 8, 3uLL);
            sub_100000BE4(&__p, &v135);
            v152 = &v135;
            sub_100002260(&v152);
            for (m = 0; m != -72; m -= 24)
            {
              if (v158[m - 9] < 0)
              {
                operator delete(*(&v156 + m));
              }
            }

            if (SHIBYTE(v140) < 0)
            {
              operator delete(v139[0]);
            }

            if (SHIBYTE(v144) < 0)
            {
              operator delete(v143[0].__locale_);
            }

            sub_100005E58(v147, v147[1]);
            v89 = (v89 + 16);
          }

          v153.__r_.__value_.__r.__words[0] = __dst;
          sub_100007C5C(&v153);
          v96 = *(v86 + 1);
          if (v96)
          {
            do
            {
              v97 = v96;
              v96 = *v96;
            }

            while (v96);
          }

          else
          {
            do
            {
              v97 = *(v86 + 2);
              v40 = *v97 == v86;
              v86 = v97;
            }

            while (!v40);
          }

          v86 = v97;
        }

        while (v97 != &v133[1]);
      }

      v98 = SHIBYTE(v132.__r_.__value_.__r.__words[2]);
      if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v99 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v99 = v132.__r_.__value_.__l.__size_;
      }

      v100 = &v153;
      sub_1000094C0(&v153, v99 + 4);
      if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v100 = v153.__r_.__value_.__r.__words[0];
      }

      if (v99)
      {
        if (v98 >= 0)
        {
          v101 = &v132;
        }

        else
        {
          v101 = v132.__r_.__value_.__r.__words[0];
        }

        memmove(v100, v101, v99);
      }

      strcpy(v100 + v99, ".csv");
      siri::dialogengine::JoinPath();
      v102 = sub_1000014F4(&__p, __dst);
      if (SHIBYTE(v161) < 0)
      {
        operator delete(__dst[0].__locale_);
      }

      if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v153.__r_.__value_.__l.__data_);
      }

      v153.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
      sub_100001DCC(&v153);
      if (v102)
      {
        v103 = &v153;
        sub_1000094C0(&v153, v99 + 4);
        if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v103 = v153.__r_.__value_.__r.__words[0];
        }

        if (v99)
        {
          if (v98 >= 0)
          {
            v104 = &v132;
          }

          else
          {
            v104 = v132.__r_.__value_.__r.__words[0];
          }

          memmove(v103, v104, v99);
        }

        strcpy(v103 + v99, ".csv");
        siri::dialogengine::JoinPath();
        v105 = sub_1000027F4(&std::cout, "CSV written to: ", 16);
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
          v107 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v107 = __p.__r_.__value_.__l.__size_;
        }

        v108 = sub_1000027F4(v105, p_p, v107);
        std::ios_base::getloc((v108 + *(*v108 - 24)));
        v109 = std::locale::use_facet(__dst, &std::ctype<char>::id);
        (v109->__vftable[2].~facet_0)(v109, 10);
        std::locale::~locale(__dst);
        std::ostream::put();
        std::ostream::flush();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v153.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v113 = sub_1000027F4(&std::cout, "Error writing to CSV!", 21);
        std::ios_base::getloc((v113 + *(*v113 - 24)));
        v114 = std::locale::use_facet(&v153, &std::ctype<char>::id);
        (v114->__vftable[2].~facet_0)(v114, 10);
        std::locale::~locale(&v153);
        std::ostream::put();
        std::ostream::flush();
      }

      if (v98 < 0)
      {
        operator delete(v132.__r_.__value_.__l.__data_);
      }

      if (v102)
      {
        goto LABEL_311;
      }
    }

    v2 = 0;
    goto LABEL_313;
  }

  v110 = sub_1000027F4(&std::cout, "Error: ", 7);
  v111 = sub_1000027F4(v110, "--evaluateConditions", 20);
  v112 = sub_1000027F4(v111, " specified, but ", 16);
  v14 = sub_1000027F4(v112, "--params", 8);
  v15 = " option unspecified";
  v16 = 19;
LABEL_47:
  v17 = sub_1000027F4(v14, v15, v16);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v153, &std::ctype<char>::id);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v153);
  std::ostream::put();
  std::ostream::flush();
  v2 = 0;
LABEL_48:
  if (v118 < 0)
  {
    operator delete(v116);
  }

  if (v120 < 0)
  {
    operator delete(v119[0]);
  }

  if (v123 < 0)
  {
    operator delete(v121);
  }

  if (v126 < 0)
  {
    operator delete(v124);
  }

  if (v129 < 0)
  {
    operator delete(v127);
  }

  if (v131 < 0)
  {
    operator delete(v130[0]);
  }

  return v2;
}

void sub_1000042D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  if (*(v55 - 233) < 0)
  {
    operator delete(*(v55 - 256));
  }

  if (a52 < 0)
  {
    operator delete(__p);
  }

  sub_100005E58(&a54, a55);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100004AF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100005EB4(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100004B38(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v38 = 0;
  v39 = 0;
  locale = &v38;
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v7)
  {
    sub_1000062A0(v40, 0, 1024, 0);
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    v34.__locale_ = v9;
    v35 = v9;
    if (*(sub_10000638C(v40, &v34) + 88))
    {
      v10 = sub_1000027F4(&std::cout, "Could not parse params string!", 30);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v34, &std::ctype<char>::id);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v34);
      std::ostream::put();
      std::ostream::flush();
    }

    else
    {
      siri::dialogengine::ConvertJSONToJSONObj();
      sub_100005E58(&locale, v38);
      v12 = v35;
      locale = v34.__locale_;
      v38 = v35;
      v39 = v36;
      if (v36)
      {
        *(v35 + 2) = &v38;
        v34.__locale_ = &v35;
        v35 = 0;
        v36 = 0;
        v12 = 0;
      }

      else
      {
        locale = &v38;
      }

      sub_100005E58(&v34, v12);
    }

    sub_100007964(v40);
  }

  siri::dialogengine::CreateJSONStringVal();
  sub_10000143C(v40, "templateDir");
  v42 = *v31;
  v31[0] = 0;
  v31[1] = 0;
  siri::dialogengine::CreateJSONStringVal();
  sub_10000143C(v43, "catId");
  v44 = *&v29[0].__locale_;
  v29[0].__locale_ = 0;
  v29[1].__locale_ = 0;
  siri::dialogengine::CreateJSONStringVal();
  sub_10000143C(v45, "locale");
  v46 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  siri::dialogengine::CreateJSONObjectVal();
  sub_10000143C(v47, "parameters");
  v48 = *v33;
  v33[0] = 0;
  v33[1] = 0;
  sub_100005720(&v34, v40, 4);
  for (i = 0; i != -20; i -= 5)
  {
    v14 = &v40[i];
    v15 = *(&v48 + i * 8 + 8);
    if (v15)
    {
      sub_100005EB4(v15);
    }

    if (*(v14 + 143) < 0)
    {
      operator delete(v14[15]);
    }
  }

  siri::dialogengine::ConstructJSONString();
  sub_10000143C(v31, &unk_10006B9FB);
  sub_10000143C(v29, &unk_10006B9FB);
  sub_10000143C(__p, &unk_10006B9FB);
  siri::dialogengine::PrepareRequestFromJson();
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if (v30 < 0)
  {
    operator delete(v29[0].__locale_);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  siri::dialogengine::Context::GetFile(v31, v33[0]);
  if (v31[0])
  {
    siri::dialogengine::File::ExpandAsDAG();
  }

  else
  {
    v16 = sub_1000027F4(&std::cout, "Could not locate CAT file: ", 27);
    v17 = *(a3 + 23);
    if (v17 >= 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    if (v17 >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = *(a3 + 8);
    }

    v20 = sub_1000027F4(v16, v18, v19);
    v21 = sub_1000027F4(v20, " in template dir: ", 18);
    v22 = *(a1 + 23);
    if (v22 >= 0)
    {
      v23 = a1;
    }

    else
    {
      v23 = *a1;
    }

    if (v22 >= 0)
    {
      v24 = *(a1 + 23);
    }

    else
    {
      v24 = *(a1 + 8);
    }

    v25 = sub_1000027F4(v21, v23, v24);
    std::ios_base::getloc((v25 + *(*v25 - 24)));
    v26 = std::locale::use_facet(v29, &std::ctype<char>::id);
    (v26->__vftable[2].~facet_0)(v26, 10);
    std::locale::~locale(v29);
    std::ostream::put();
    std::ostream::flush();
    a4[2] = 0;
    a4[1] = 0;
    *a4 = a4 + 1;
  }

  if (v31[1])
  {
    sub_100005EB4(v31[1]);
  }

  if (v33[1])
  {
    sub_100005EB4(v33[1]);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  sub_100005E58(&v34, v35);
  sub_100005E58(&locale, v38);
}

void sub_100005034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::locale a33, uint64_t a34, uint64_t a35, char a36, void *a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_100007964(&__p);
  sub_100005E58(&a36, a37);
  _Unwind_Resume(a1);
}

void sub_1000051E0(void *a1@<X0>, const void ***a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v40 = a1 + 1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v5 = v4[8];
      v51 = v4[7];
      v52 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      siri::dialogengine::GetJSONArrayVal();
      if (v52)
      {
        sub_100005EB4(v52);
      }

      v7 = v53[0];
      v6 = v53[1];
      while (v7 != v6)
      {
        v8 = v7[1];
        v46 = *v7;
        v47 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        siri::dialogengine::GetJSONObjectVal();
        sub_10000143C(&__p, "print");
        v9 = sub_100007A70(&__str, &__p);
        v10 = v9[1];
        v49 = *v9;
        v50 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        siri::dialogengine::GetJSONStringVal();
        if (v50)
        {
          sub_100005EB4(v50);
        }

        if (SHIBYTE(v45) < 0)
        {
          operator delete(__p);
        }

        sub_100005E58(&__str, __str.__r_.__value_.__l.__size_);
        if (v47)
        {
          sub_100005EB4(v47);
        }

        if (*(a3 + 23) < 0)
        {
          sub_100001C60(&__str, *a3, *(a3 + 8));
        }

        else
        {
          __str = *a3;
        }

        v44 = 0;
        v45 = 0;
        __p = &v44;
        v11 = std::string::find(&__str, 36, 0);
        v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        size = __str.__r_.__value_.__l.__size_;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v14 = __str.__r_.__value_.__l.__size_;
        }

        if (v11 < v14)
        {
          v15 = v11;
          do
          {
            v16 = v15 + 1;
            LOBYTE(v17) = (v12 & 0x80u) != 0;
            if ((v12 & 0x80u) != 0)
            {
              v12 = size;
            }

            if (v16 >= v12)
            {
              v18 = v15 + 1;
            }

            else
            {
              v18 = v15 + 1;
              do
              {
                p_str = __str.__r_.__value_.__r.__words[0];
                if ((v17 & 1) == 0)
                {
                  p_str = &__str;
                }

                v20 = p_str->__r_.__value_.__s.__data_[v18];
                if (v20 < 0)
                {
                  v21 = __maskrune(v20, 0x4000uLL);
                }

                else
                {
                  v21 = _DefaultRuneLocale.__runetype[v20] & 0x4000;
                }

                if (v21)
                {
                  break;
                }

                v22 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
                v23 = v22->__r_.__value_.__s.__data_[v18];
                if (v23 < 0 ? __maskrune(v23, 0x2000uLL) : _DefaultRuneLocale.__runetype[v23] & 0x2000)
                {
                  break;
                }

                ++v18;
                v25 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
                v17 = SHIBYTE(__str.__r_.__value_.__r.__words[2]) >> 63;
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v25 = __str.__r_.__value_.__l.__size_;
                }
              }

              while (v18 < v25);
              if (v18 > v16)
              {
                std::string::basic_string(&v42, &__str, v15 + 1, v18 + ~v15, v54);
                sub_100007B40(&__p, &v42.__r_.__value_.__l.__data_);
                if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v42.__r_.__value_.__l.__data_);
                }
              }
            }

            if (*(a3 + 23) >= 0)
            {
              v26 = *(a3 + 23);
            }

            else
            {
              v26 = *(a3 + 8);
            }

            std::string::basic_string(&v42, &__str, v18, v26, v54);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            __str = v42;
            v27 = std::string::find(&__str, 36, 0);
            v15 = v27;
            v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            size = __str.__r_.__value_.__l.__size_;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v28 = __str.__r_.__value_.__l.__size_;
            }
          }

          while (v27 < v28);
        }

        if (v45 == a2[2])
        {
          v29 = __p;
          if (__p == &v44)
          {
            v32 = 1;
          }

          else
          {
            v30 = *a2;
            do
            {
              v31 = sub_100007BE4(&v42, v29 + 4, v30 + 4);
              v32 = v31;
              if (!v31)
              {
                break;
              }

              v33 = v29[1];
              v34 = v29;
              if (v33)
              {
                do
                {
                  v29 = v33;
                  v33 = *v33;
                }

                while (v33);
              }

              else
              {
                do
                {
                  v29 = v34[2];
                  v35 = *v29 == v34;
                  v34 = v29;
                }

                while (!v35);
              }

              v36 = v30[1];
              if (v36)
              {
                do
                {
                  v37 = v36;
                  v36 = *v36;
                }

                while (v36);
              }

              else
              {
                do
                {
                  v37 = v30[2];
                  v35 = *v37 == v30;
                  v30 = v37;
                }

                while (!v35);
              }

              v30 = v37;
            }

            while (v29 != &v44);
          }
        }

        else
        {
          v32 = 0;
        }

        sub_10000623C(&__p, v44);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v32)
        {
          __str.__r_.__value_.__r.__words[0] = v53;
          sub_100007C5C(&__str);
          return;
        }

        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        v7 += 2;
      }

      __str.__r_.__value_.__r.__words[0] = v53;
      sub_100007C5C(&__str);
      v38 = v4[1];
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = v4[2];
          v35 = *v39 == v4;
          v4 = v39;
        }

        while (!v35);
      }

      v4 = v39;
    }

    while (v39 != v40);
  }

  sub_10000143C(a3, &unk_10006B9FB);
}

void sub_100005648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (a34)
  {
    sub_100005EB4(a34);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100005720(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      sub_1000057A4(a1, v4, a2);
      a2 += 5;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1000057A4(void *a1, uint64_t a2, const void **a3)
{
  v3 = *sub_100005838(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_1000059DC();
  }

  return v3;
}

uint64_t sub_100005838(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_100005B94(a1, a5, (a2 + 32)))
  {
    if (!sub_100005B94(a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_100005B94(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_100005B94(a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_100005AF8(a1, a3, a5);
}

uint64_t *sub_100005A54(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_100005C68(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_100005AAC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100005E04(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100005AF8(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_100005B94(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_100005B94(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL sub_100005B94(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

void *sub_100005C00(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100001C60(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 4);
  __dst[3] = *(a2 + 3);
  __dst[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

uint64_t *sub_100005C68(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_100005E04(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100005EB4(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_100005E58(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100005E58(a1, *a2);
    sub_100005E58(a1, a2[1]);
    sub_100005E04((a2 + 4));

    operator delete(a2);
  }
}

void sub_100005EB4(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_100005F20(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 42;
      v7 = v4 - 42;
      do
      {
        (**v7)(v7);
        v6 -= 42;
        v8 = v7 == v2;
        v7 -= 42;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100005FE0(uint64_t a1)
{
  if (*a1)
  {
    sub_1000022B4(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void *sub_100006020(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1000060A4(a1, v4, v6);
      v6 += 3;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_1000060A4(void *a1, uint64_t a2, const void **a3)
{
  result = *sub_100005838(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100006128();
  }

  return result;
}

void sub_1000061BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000061D8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1000061D8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_10000623C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10000623C(a1, *a2);
    sub_10000623C(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_1000062A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = a4;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = a3;
  *(result + 88) = 0;
  *(result + 96) = 0;
  if (!a2)
  {
    operator new();
  }

  return result;
}

uint64_t sub_100006334(uint64_t a1)
{
  free(*(a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    operator delete();
  }

  return result;
}

uint64_t sub_10000638C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v9 = a1;
  v10 = v3;
  v11 = 0u;
  v12 = 0u;
  v13 = 256;
  v14 = 0;
  v15 = 0;
  v16 = 2;
  v4 = sub_100006484(&v10, a2, a1);
  *(a1 + 88) = v4;
  *(a1 + 96) = v5;
  if (!v4)
  {
    v6 = *(a1 + 64);
    if (v6 - *(a1 + 56) != 24)
    {
      __assert_rtn("ParseStream", "document.h", 2259, "stack_.GetSize() == sizeof(ValueType)");
    }

    *(a1 + 64) = v6 - 24;
    if (v6 - 24 != a1)
    {
      v7 = *(v6 - 24);
      *(a1 + 16) = *(v6 - 8);
      *a1 = v7;
      *(v6 - 2) = 0;
    }
  }

  sub_1000078CC(&v9);
  sub_100006334(&v10);
  return a1;
}

void sub_100006460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_1000078CC(&a9);
  sub_100006334(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100006484(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  for (i = *a2; ; ++i)
  {
    v6 = *i;
    v7 = v6 > 0x20;
    v8 = (1 << v6) & 0x100002600;
    if (v7 || v8 == 0)
    {
      break;
    }
  }

  *a2 = i;
  if (!*i)
  {
    v15 = 1;
LABEL_19:
    v16 = &i[-a2[1]];
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    goto LABEL_16;
  }

  sub_1000065AC(a1, a2, a3);
  if (!*(a1 + 48))
  {
    for (i = *a2; ; ++i)
    {
      v10 = *i;
      v7 = v10 > 0x20;
      v11 = (1 << v10) & 0x100002600;
      if (v7 || v11 == 0)
      {
        break;
      }
    }

    *a2 = i;
    if (*i)
    {
      v15 = 2;
      goto LABEL_19;
    }
  }

LABEL_16:
  result = *(a1 + 48);
  v14 = *(a1 + 56);
  *(a1 + 24) = *(a1 + 16);
  return result;
}

uint64_t sub_100006574(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 - *(a1 + 16) < (24 * a2))
  {
    sub_10005FBCC();
  }

  v3 = v2 - 24 * a2;
  *(a1 + 24) = v3;
  return v3;
}

void sub_1000065AC(uint64_t result, void *a2, uint64_t a3)
{
  v3 = **a2;
  if (v3 > 0x6D)
  {
    switch(v3)
    {
      case '{':
        sub_100006944(result, a2, a3);
        return;
      case 't':
        sub_1000066B0(result, a2, a3);
        return;
      case 'n':
        sub_10000660C(result, a2, a3);
        return;
    }
  }

  else
  {
    switch(v3)
    {
      case '""':
        sub_10000681C(result, a2, a3);
        return;
      case '[':
        sub_100006C08(result, a2, a3);
        return;
      case 'f':
        sub_10000675C(result, a2, a3);
        return;
    }
  }

  sub_10005F428(result, a2, a3);
}

uint64_t sub_10000660C(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *a2;
  if (**a2 != 110)
  {
    sub_10005FBF8();
  }

  v4 = v3 + 1;
  *a2 = v3 + 1;
  if (v3[1] == 117 && (v4 = v3 + 2, *a2 = v3 + 2, v3[2] == 108) && (v4 = v3 + 3, *a2 = v3 + 3, v3[3] == 108))
  {
    *a2 = v3 + 4;
    result = sub_100006D00((a3 + 40), 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
  }

  else
  {
    if (*(result + 48))
    {
      sub_10005FC24();
    }

    v5 = &v4[-a2[1]];
    *(result + 48) = 3;
    *(result + 56) = v5;
  }

  return result;
}

uint64_t sub_1000066B0(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *a2;
  if (**a2 != 116)
  {
    sub_10005FC50();
  }

  v4 = v3 + 1;
  *a2 = v3 + 1;
  if (v3[1] == 114 && (v4 = v3 + 2, *a2 = v3 + 2, v3[2] == 117) && (v4 = v3 + 3, *a2 = v3 + 3, v3[3] == 101))
  {
    *a2 = v3 + 4;
    result = sub_100006D00((a3 + 40), 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
    *(result + 22) = 10;
  }

  else
  {
    if (*(result + 48))
    {
      sub_10005FC7C();
    }

    v5 = &v4[-a2[1]];
    *(result + 48) = 3;
    *(result + 56) = v5;
  }

  return result;
}

uint64_t sub_10000675C(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *a2;
  if (**a2 != 102)
  {
    sub_10005FCA8();
  }

  v4 = v3 + 1;
  *a2 = v3 + 1;
  if (v3[1] == 97 && (v4 = v3 + 2, *a2 = v3 + 2, v3[2] == 108) && (v4 = v3 + 3, *a2 = v3 + 3, v3[3] == 115) && (v4 = v3 + 4, *a2 = v3 + 4, v3[4] == 101))
  {
    *a2 = v3 + 5;
    result = sub_100006D00((a3 + 40), 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
    *(result + 22) = 9;
  }

  else
  {
    if (*(result + 48))
    {
      sub_10005FCD4();
    }

    v5 = &v4[-a2[1]];
    *(result + 48) = 3;
    *(result + 56) = v5;
  }

  return result;
}

double sub_10000681C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v11 = *a2;
  v12 = a2;
  if (*v11 != 34)
  {
    __assert_rtn("ParseString", "reader.h", 961, "s.Peek() == '\\'");
  }

  *&v11 = v11 + 1;
  v9 = a1;
  v10 = 0;
  sub_100006EB0(a1, &v11, &v9);
  if (!*(a1 + 48))
  {
    v5 = v10;
    v6 = sub_1000070A0(&v9);
    if ((sub_1000070D4(a3, v6, v5 - 1, 1) & 1) == 0)
    {
      if (*(a1 + 48))
      {
        __assert_rtn("ParseString", "reader.h", 983, "!HasParseError()");
      }

      v8 = v11 - *(&v11 + 1);
      *(a1 + 48) = 16;
      *(a1 + 56) = v8;
    }
  }

  result = *&v11;
  *v12 = v11;
  return result;
}

void sub_100006944(uint64_t a1, void *a2, void *a3)
{
  if (**a2 != 123)
  {
    sub_10005FD00();
  }

  ++*a2;
  v6 = sub_100006D00(a3 + 5, 1);
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 0;
  *(v6 + 22) = 3;
  for (i = *a2; ; ++i)
  {
    v8 = *i;
    v9 = v8 > 0x20;
    v10 = (1 << v8) & 0x100002600;
    if (v9 || v10 == 0)
    {
      break;
    }
  }

  *a2 = i;
  if (!*(a1 + 48))
  {
    v12 = *i;
    if (v12 == 125)
    {
      *a2 = i + 1;
      if ((sub_1000076CC(a3, 0) & 1) == 0)
      {
        sub_10005FD9C((a1 + 48), a2, a1);
      }
    }

    else if (v12 == 34)
    {
      v13 = 0;
      while (1)
      {
        v14.n128_f64[0] = sub_10000681C(a1, a2, a3);
        if (*(a1 + 48))
        {
          break;
        }

        v15 = *a2;
        for (j = *a2; ; ++j)
        {
          v17 = *j;
          v9 = v17 > 0x20;
          v18 = (1 << v17) & 0x100002600;
          if (v9 || v18 == 0)
          {
            break;
          }

          ++v15;
        }

        *a2 = j;
        if (*j != 58)
        {
          v34 = &v15[-a2[1]];
          v35 = 5;
          goto LABEL_53;
        }

        v20 = j + 1;
        *a2 = j + 1;
        while (1)
        {
          v21 = *v20;
          v9 = v21 > 0x20;
          v22 = (1 << v21) & 0x100002600;
          if (v9 || v22 == 0)
          {
            break;
          }

          ++v20;
        }

        *a2 = v20;
        sub_1000065AC(a1, a2, a3, v14);
        if (*(a1 + 48))
        {
          return;
        }

        v24 = *a2;
        for (k = *a2; ; ++k)
        {
          v26 = *k;
          v9 = v26 > 0x20;
          v27 = (1 << v26) & 0x100002600;
          if (v9 || v27 == 0)
          {
            break;
          }

          ++v24;
        }

        *a2 = k;
        ++v13;
        v29 = *k;
        if (v29 != 44)
        {
          if (v29 != 125)
          {
            v34 = &v24[-a2[1]];
            v35 = 6;
            goto LABEL_53;
          }

          *a2 = k + 1;
          if ((sub_1000076CC(a3, v13) & 1) == 0)
          {
            sub_10005FD2C((a1 + 48), a2, a1);
          }

          return;
        }

        i = k + 1;
        *a2 = k + 1;
        while (1)
        {
          v30 = *i;
          v9 = v30 > 0x20;
          v31 = (1 << v30) & 0x100002600;
          if (v9 || v31 == 0)
          {
            break;
          }

          ++i;
        }

        *a2 = i;
        v33 = *i;
        if (v33 == 125)
        {
          if (sub_1000076CC(a3, v13))
          {
            ++*a2;
          }

          else
          {
            sub_10005FD64((a1 + 48), a2, a1);
          }

          return;
        }

        if (v33 != 34)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
LABEL_46:
      v34 = &i[-a2[1]];
      v35 = 4;
LABEL_53:
      *(a1 + 48) = v35;
      *(a1 + 56) = v34;
    }
  }
}

uint64_t sub_100006C08(uint64_t a1, unsigned __int8 **a2, void *a3)
{
  if (**a2 != 91)
  {
    sub_10005FDD4();
  }

  ++*a2;
  result = sub_100006D00(a3 + 5, 1);
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 22) = 4;
  for (i = *a2; ; ++i)
  {
    v9 = *i;
    v10 = v9 > 0x20;
    v11 = (1 << v9) & 0x100002600;
    if (v10 || v11 == 0)
    {
      break;
    }
  }

  *a2 = i;
  if (!*(a1 + 48))
  {
    if (*i == 93)
    {
      *a2 = i + 1;
      result = sub_1000077A8(a3, 0);
      if ((result & 1) == 0)
      {
        return sub_10005FF98((a1 + 48), a2, a1);
      }
    }

    else
    {
      return sub_10005FE00(a1, a2, a3, (a1 + 48), v7);
    }
  }

  return result;
}

uint64_t sub_100006D00(void *a1, uint64_t a2)
{
  if (24 * a2 > a1[4] - a1[3])
  {
    sub_100006DAC(a1, a2);
  }

  return sub_100006D64(a1, a2);
}

uint64_t sub_100006D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10005FFFC();
  }

  if (24 * a2 > *(a1 + 32) - v2)
  {
    sub_10005FFD0();
  }

  *(a1 + 24) = v2 + 24 * a2;
  return v2;
}

char *sub_100006DAC(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[4] - v2 + ((a1[4] - v2 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v2 = 0;
    v3 = a1[5];
  }

  v4 = a1[3] + 24 * a2 - v2;
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return sub_100006E48(a1, v5);
}

char *sub_100006E48(void *a1, size_t size)
{
  v4 = a1[2];
  v5 = a1[3];
  if (size)
  {
    result = malloc_type_realloc(v4, size, 0x8EA412C4uLL);
  }

  else
  {
    free(v4);
    result = 0;
  }

  a1[2] = result;
  a1[3] = &result[v5 - v4];
  a1[4] = &result[size];
  return result;
}

_DWORD *sub_100006EB0(_DWORD *result, unsigned __int8 **a2, void **a3)
{
  v5 = result;
  while (1)
  {
    while (1)
    {
      v6 = *a2;
      v7 = **a2;
      if (v7 == 92)
      {
        break;
      }

      if (v7 == 34)
      {
        *a2 = v6 + 1;
        result = sub_100007344(*a3, 1);
        *result = 0;
        ++*(a3 + 2);
        return result;
      }

      if (v7 <= 0x1F)
      {
        v14 = *(v5 + 48);
        if (**a2)
        {
          if (v14)
          {
            sub_10006006C();
          }

          v15 = v6 - a2[1];
          v16 = 12;
        }

        else
        {
          if (v14)
          {
            sub_100060098();
          }

          v15 = v6 - a2[1];
          v16 = 11;
        }

        *(v5 + 48) = v16;
        goto LABEL_25;
      }

      *a2 = v6 + 1;
      v8 = *v6;
LABEL_6:
      result = sub_100007344(*a3, 1);
      *result = v8;
      ++*(a3 + 2);
    }

    v9 = a2[1];
    *a2 = v6 + 1;
    v10 = v6[1];
    v8 = byte_100062938[v10];
    if (v8)
    {
      *a2 = v6 + 2;
      goto LABEL_6;
    }

    v11 = v6 - v9;
    if (v10 != 117)
    {
      return sub_100060028((v5 + 48), v5, v11);
    }

    *a2 = v6 + 2;
    v18 = v6 - v9;
    result = sub_100007144(v5, a2, v11);
    if (*(v5 + 48))
    {
      return result;
    }

    v12 = result;
    if (result >> 10 == 54)
    {
      v17 = result;
      v13 = *a2;
      if (**a2 != 92)
      {
        goto LABEL_30;
      }

      *a2 = v13 + 1;
      if (v13[1] != 117)
      {
        goto LABEL_30;
      }

      *a2 = v13 + 2;
      result = sub_100007144(v5, a2, v18);
      if (*(v5 + 48))
      {
        return result;
      }

      if ((result - 57344) <= 0xFFFFFBFF)
      {
LABEL_30:
        *(v5 + 48) = 9;
        v15 = v18;
LABEL_25:
        *(v5 + 56) = v15;
        return result;
      }

      v12 = result + (v17 << 10) - 56613888;
    }

    result = sub_1000071E0(a3, v12);
  }
}

uint64_t sub_1000070A0(unsigned int *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = *(*a1 + 24);
  if (v3 - *(*a1 + 16) < v2)
  {
    sub_10005FBCC();
  }

  result = v3 - v2;
  *(v1 + 24) = v3 - v2;
  return result;
}

uint64_t sub_1000070D4(uint64_t a1, void *a2, int a3, int a4)
{
  v8 = sub_100006D00((a1 + 40), 1);
  if (a4)
  {
    v9 = *(a1 + 24);
    if (!v9)
    {
      sub_1000600C4();
    }

    sub_100007478(v8, a2, a3, v9);
  }

  else
  {
    sub_100007660(v8, a2, a3);
  }

  return 1;
}

uint64_t sub_100007144(uint64_t a1, void *a2, uint64_t a3)
{
  LODWORD(v3) = 0;
  v4 = *a2 + 1;
  v5 = 4;
  while (1)
  {
    v6 = *(v4 - 1);
    if ((v6 - 48) >= 0xA)
    {
      break;
    }

    v7 = -48;
LABEL_8:
    v3 = (v6 + 16 * v3 + v7);
    *a2 = v4++;
    if (!--v5)
    {
      return v3;
    }
  }

  if (*(v4 - 1) - 65 < 6)
  {
    v7 = -55;
    goto LABEL_8;
  }

  if (*(v4 - 1) - 97 < 6)
  {
    v7 = -87;
    goto LABEL_8;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_1000600F0();
  }

  *(a1 + 48) = 8;
  *(a1 + 56) = a3;
  return v3;
}

_BYTE *sub_1000071E0(void **a1, unsigned int a2)
{
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      if (HIWORD(a2))
      {
        if (a2 >= 0x110000)
        {
          sub_10006011C();
        }

        *sub_100007344(*a1, 1) = (a2 >> 18) | 0xF0;
        v6 = a1 + 1;
        ++*(a1 + 2);
        *sub_100007344(*a1, 1) = (a2 >> 12) & 0x3F | 0x80;
        ++*(a1 + 2);
      }

      else
      {
        *sub_100007344(*a1, 1) = (a2 >> 12) | 0xE0;
        v6 = a1 + 1;
        ++*(a1 + 2);
      }

      *sub_100007344(*a1, 1) = (a2 >> 6) & 0x3F | 0x80;
      ++*v6;
    }

    else
    {
      *sub_100007344(*a1, 1) = (a2 >> 6) | 0xC0;
      v6 = a1 + 1;
      ++*(a1 + 2);
    }

    result = sub_100007344(*a1, 1);
    *result = a2 & 0x3F | 0x80;
    v4 = v6;
  }

  else
  {
    v4 = a1 + 1;
    result = sub_100007344(*a1, 1);
    *result = a2;
  }

  ++*v4;
  return result;
}

uint64_t sub_100007344(void *a1, uint64_t a2)
{
  if (a1[4] - a1[3] < a2)
  {
    sub_1000073E0(a1, a2);
  }

  return sub_1000073A0(a1, a2);
}

uint64_t sub_1000073A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10005FFFC();
  }

  if (*(a1 + 32) - v2 < a2)
  {
    sub_10005FFD0();
  }

  *(a1 + 24) = v2 + a2;
  return v2;
}

char *sub_1000073E0(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[4] - v2 + ((a1[4] - v2 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v2 = 0;
    v3 = a1[5];
  }

  v4 = a1[3] + a2 - v2;
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return sub_100006E48(a1, v5);
}

void *sub_100007478(void *__dst, void *a2, int a3, size_t *a4)
{
  *__dst = 0;
  __dst[1] = 0;
  __dst[2] = 0;
  v5 = &unk_10006B9FB;
  if (a2)
  {
    v5 = a2;
  }

  v7 = v5;
  v8 = a3;
  if (!a2 && a3)
  {
    sub_100060148();
  }

  sub_1000074E0(__dst, &v7, a4);
  return __dst;
}

void *sub_1000074E0(_WORD *__dst, uint64_t a2, size_t *a3)
{
  v4 = __dst;
  if (*(a2 + 8) > 0x15u)
  {
    __dst[11] = 3077;
    v5 = *(a2 + 8);
    *__dst = v5;
    v6 = sub_100007568(a3, (v5 + 1));
    v4[1] = v6;
    v4 = v6;
  }

  else
  {
    __dst[11] = 7173;
    *(__dst + 21) = 21 - *(a2 + 8);
  }

  result = memcpy(v4, *a2, *(a2 + 8));
  *(v4 + *(a2 + 8)) = 0;
  return result;
}

uint64_t sub_100007568(size_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *a1;
  if (*a1)
  {
    v5 = v4[1];
    v6 = v5 + v3;
    if (v5 + v3 <= *v4)
    {
      goto LABEL_9;
    }
  }

  if (a1[1] <= v3)
  {
    v7 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v7 = a1[1];
  }

  if (sub_1000075F0(a1, v7))
  {
    v4 = *a1;
    v5 = *(*a1 + 8);
    v6 = v5 + v3;
LABEL_9:
    result = v4 + v5 + 24;
    v4[1] = v6;
    return result;
  }

  return 0;
}

size_t sub_1000075F0(size_t *a1, uint64_t a2)
{
  if (!a1[3])
  {
    operator new();
  }

  result = a2 + 24;
  if (a2 != -24)
  {
    result = malloc_type_malloc(result, 0x49BC497DuLL);
    if (result)
    {
      *result = a2;
      *(result + 8) = 0;
      *(result + 16) = *a1;
      *a1 = result;
      return 1;
    }
  }

  return result;
}

uint64_t sub_100007660(uint64_t result, void *a2, int a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (!a2 && a3)
  {
    __assert_rtn("GenericStringRef", "document.h", 322, "str != 0 || len == 0u");
  }

  v3 = &unk_10006B9FB;
  *(result + 22) = 1029;
  if (a2)
  {
    v3 = a2;
  }

  *(result + 8) = v3;
  *result = a3;
  return result;
}

uint64_t sub_1000076CC(void *a1, unsigned int a2)
{
  v4 = a2;
  v5 = sub_100007770((a1 + 5), a2);
  v6 = a1[8];
  if ((v6 - a1[7]) <= 0x17)
  {
    sub_100060174();
  }

  v7 = v5;
  v8 = a1[3];
  if (!v8)
  {
    sub_1000600C4();
  }

  *(v6 - 2) = 3;
  if (a2)
  {
    v9 = 48 * v4;
    v10 = sub_100007568(v8, v9);
    *(v6 - 16) = v10;
    memcpy(v10, v7, v9);
  }

  else
  {
    *(v6 - 16) = 0;
  }

  *(v6 - 24) = a2;
  *(v6 - 20) = a2;
  return 1;
}

uint64_t sub_100007770(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 - *(a1 + 16) < (48 * a2))
  {
    sub_10005FBCC();
  }

  v3 = v2 - 48 * a2;
  *(a1 + 24) = v3;
  return v3;
}

uint64_t sub_1000077A8(void *a1, unsigned int a2)
{
  v4 = a2;
  v5 = sub_100006574((a1 + 5), a2);
  v6 = a1[8];
  if ((v6 - a1[7]) <= 0x17)
  {
    sub_100060174();
  }

  v7 = v5;
  v8 = a1[3];
  if (!v8)
  {
    sub_1000600C4();
  }

  *(v6 - 2) = 4;
  if (a2)
  {
    v9 = 24 * v4;
    v10 = sub_100007568(v8, v9);
    *(v6 - 16) = v10;
    memcpy(v10, v7, v9);
  }

  else
  {
    *(v6 - 16) = 0;
  }

  *(v6 - 24) = a2;
  *(v6 - 20) = a2;
  return 1;
}

uint64_t sub_10000784C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006D00((a1 + 40), 1);
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = a2;
  *(v3 + 22) = 150;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(a2))
    {
      v4 = 406;
    }

    else
    {
      v4 = 470;
    }

    if (!(a2 >> 31))
    {
      v4 = 502;
    }

    goto LABEL_10;
  }

  if (a2 >= 0xFFFFFFFF80000000)
  {
    v4 = 182;
LABEL_10:
    *(v3 + 22) = v4;
  }

  return 1;
}

uint64_t *sub_1000078CC(uint64_t *a1)
{
  v2 = *a1;
  *(v2 + 64) = *(*a1 + 56);
  sub_100007908((v2 + 40));
  return a1;
}

void sub_100007908(void *a1)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1 + 2;
  if (v4 == v3)
  {
    free(v3);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  else
  {

    sub_100006E48(a1, v4 - v3);
  }
}

uint64_t sub_100007964(uint64_t a1)
{
  sub_100007998(a1);
  sub_100006334(a1 + 40);
  return a1;
}

uint64_t sub_100007998(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_1000079DC(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1000079DC(uint64_t a1)
{
  sub_100007A20(a1);
  if (*(a1 + 32))
  {
    operator delete();
  }

  return a1;
}

void *sub_100007A20(void **a1)
{
  result = *a1;
  if (result)
  {
    while (result != a1[2])
    {
      v3 = result[2];
      free(result);
      *a1 = v3;
      result = v3;
      if (!v3)
      {
        return result;
      }
    }

    result[1] = 0;
  }

  return result;
}

uint64_t sub_100007A70(uint64_t a1, const void **a2)
{
  v2 = *sub_100005AF8(a1, &v4, a2);
  if (!v2)
  {
    sub_100007AB0("map::at:  key not found");
  }

  return v2 + 56;
}

void sub_100007AB0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100007B0C(exception, a1);
}

std::logic_error *sub_100007B0C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_100007B40(uint64_t a1, const void **a2)
{
  v2 = *sub_100005AF8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

BOOL sub_100007BE4(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_100007C5C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100007CB0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100007CB0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_100005EB4(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_100007CFC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100002064(result, a4);
  }

  return result;
}

void sub_100007D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100002260(&a9);
  _Unwind_Resume(a1);
}

void sub_100007D84(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v208 = a2 - 4;
    v209 = a2 - 1;
    v207 = a2 - 7;
    v8 = a1;
    v211 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = a2 - v8;
          v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v141 = a1[3];
                v142 = a1[4];
                v143 = v142 - v141;
                v144 = *a1;
                v145 = a1[1];
                v146 = v145 - *a1;
                v147 = *(a2 - 3);
                v148 = *(a2 - 2) - v147;
                if (v142 - v141 <= v146)
                {
                  if (v148 <= v143)
                  {
                    return;
                  }

                  a1[3] = v147;
                  *(a2 - 3) = v141;
                  v193 = a1[4];
                  a1[4] = *(a2 - 2);
                  *(a2 - 2) = v193;
                  v194 = a1[5];
                  v209 = a1 + 5;
                  a1[5] = *(a2 - 1);
                  *(a2 - 1) = v194;
                  v196 = a1[3];
                  v195 = a1[4];
                  v198 = *a1;
                  v197 = a1[1];
                  if (v195 - v196 <= (v197 - *a1))
                  {
                    return;
                  }

                  *a1 = v196;
                  a1[1] = v195;
                  v149 = a1 + 2;
                  a1[3] = v198;
                  a1[4] = v197;
                }

                else
                {
                  if (v148 <= v143)
                  {
                    *a1 = v141;
                    a1[1] = v142;
                    a1[3] = v144;
                    a1[4] = v145;
                    v149 = a1 + 5;
                    v204 = a1[2];
                    a1[2] = a1[5];
                    a1[5] = v204;
                    v205 = *(a2 - 3);
                    if (*(a2 - 2) - v205 <= v146)
                    {
                      return;
                    }

                    a1[3] = v205;
                    *(a2 - 3) = v144;
                    v150 = a1[4];
                    a1[4] = *(a2 - 2);
                  }

                  else
                  {
                    v149 = a1 + 2;
                    *a1 = v147;
                    *(a2 - 3) = v144;
                    v150 = a1[1];
                    a1[1] = *(a2 - 2);
                  }

                  *(a2 - 2) = v150;
                }

                v206 = *v149;
                *v149 = *v209;
                *v209 = v206;
                return;
              case 4:
                sub_100008D50(a1, a1 + 3, a1 + 6, a2 - 3);
                return;
              case 5:
                sub_100008F34(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              v137 = *(a2 - 3);
              v138 = *a1;
              if (*(a2 - 2) - v137 > (a1[1] - *a1))
              {
                *a1 = v137;
                *(a2 - 3) = v138;
                v139 = a1[1];
                a1[1] = *(a2 - 2);
                *(a2 - 2) = v139;
                v140 = a1[2];
                a1[2] = *(a2 - 1);
                *(a2 - 1) = v140;
              }

              return;
            }
          }

          if (v9 <= 575)
          {
            if (a4)
            {
              if (a1 != a2)
              {
                v151 = a1 + 3;
                if (a1 + 3 != a2)
                {
                  v152 = 0;
                  v153 = a1;
                  do
                  {
                    v154 = v151;
                    v155 = v153[4];
                    if (v155 - v153[3] > (v153[1] - *v153))
                    {
                      *&v215 = v153[3];
                      *(&v215 + 1) = v155;
                      v216 = v153[5];
                      *v154 = 0;
                      v154[1] = 0;
                      v154[2] = 0;
                      v156 = v152;
                      while (1)
                      {
                        v157 = a1 + v156;
                        sub_100005FE0(a1 + v156 + 24);
                        *(v157 + 24) = *v157;
                        *(v157 + 5) = *(v157 + 2);
                        *(v157 + 1) = 0;
                        *(v157 + 2) = 0;
                        *v157 = 0;
                        if (!v156)
                        {
                          break;
                        }

                        v156 -= 24;
                        if (*(&v215 + 1) - v215 <= *(v157 - 2) - *(v157 - 3))
                        {
                          v158 = a1 + v156 + 24;
                          goto LABEL_129;
                        }
                      }

                      v158 = a1;
LABEL_129:
                      sub_100005FE0(v158);
                      *v158 = v215;
                      *(v158 + 16) = v216;
                      v215 = 0uLL;
                      v216 = 0;
                      *&v212 = &v215;
                      sub_100002260(&v212);
                    }

                    v151 = v154 + 3;
                    v152 += 24;
                    v153 = v154;
                  }

                  while (v154 + 3 != a2);
                }
              }
            }

            else if (a1 != a2)
            {
              v199 = a1 + 3;
              if (a1 + 3 != a2)
              {
                do
                {
                  v200 = v199;
                  v201 = a1[4];
                  if (v201 - a1[3] > (a1[1] - *a1))
                  {
                    *&v215 = a1[3];
                    *(&v215 + 1) = v201;
                    v216 = a1[5];
                    *v200 = 0;
                    v200[1] = 0;
                    v200[2] = 0;
                    do
                    {
                      v202 = a1;
                      sub_100005FE0((a1 + 3));
                      *(a1 + 3) = *a1;
                      a1[5] = a1[2];
                      *a1 = 0;
                      a1[1] = 0;
                      a1[2] = 0;
                      v203 = *(a1 - 3);
                      a1 -= 3;
                    }

                    while (*(&v215 + 1) - v215 > (*(v202 - 2) - v203));
                    sub_100005FE0((a1 + 3));
                    *(a1 + 3) = v215;
                    a1[5] = v216;
                    v215 = 0uLL;
                    v216 = 0;
                    *&v212 = &v215;
                    sub_100002260(&v212);
                  }

                  v199 = v200 + 3;
                  a1 = v200;
                }

                while (v200 + 3 != a2);
              }
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v159 = v11 >> 1;
              v160 = v11 >> 1;
              do
              {
                v161 = v160;
                if (v159 >= v160)
                {
                  v162 = (2 * v160) | 1;
                  v163 = &a1[3 * v162];
                  if (2 * v161 + 2 >= v10)
                  {
                    v167 = *v163;
                  }

                  else
                  {
                    v164 = v163[1] - *v163;
                    v165 = v163[4] - v163[3];
                    v166 = v164 > v165;
                    if (v164 <= v165)
                    {
                      v167 = *v163;
                    }

                    else
                    {
                      v167 = v163[3];
                    }

                    if (v166)
                    {
                      v163 += 3;
                      v162 = 2 * v161 + 2;
                    }
                  }

                  v168 = &a1[3 * v161];
                  v169 = v163[1] - v167;
                  v170 = v168[1];
                  if (v169 <= v170 - *v168)
                  {
                    *&v215 = *v168;
                    *(&v215 + 1) = v170;
                    v216 = v168[2];
                    *v168 = 0;
                    v168[1] = 0;
                    v168[2] = 0;
                    while (1)
                    {
                      v171 = v163;
                      sub_100005FE0(v168);
                      *v168 = *v171;
                      v168[2] = *(v171 + 16);
                      *v171 = 0;
                      *(v171 + 8) = 0;
                      *(v171 + 16) = 0;
                      if (v159 < v162)
                      {
                        break;
                      }

                      v163 = &a1[3 * ((2 * v162) | 1)];
                      if (2 * v162 + 2 >= v10)
                      {
                        v175 = *v163;
                        v162 = (2 * v162) | 1;
                      }

                      else
                      {
                        v172 = v163[1] - *v163;
                        v173 = v163[4] - v163[3];
                        v174 = v172 > v173;
                        if (v172 <= v173)
                        {
                          v175 = *v163;
                        }

                        else
                        {
                          v175 = v163[3];
                        }

                        if (v174)
                        {
                          v163 += 3;
                          v162 = 2 * v162 + 2;
                        }

                        else
                        {
                          v162 = (2 * v162) | 1;
                        }
                      }

                      v176 = v215;
                      v168 = v171;
                      if ((v163[1] - v175) > *(&v215 + 1) - v215)
                      {
                        goto LABEL_157;
                      }
                    }

                    v176 = v215;
LABEL_157:
                    v210 = v176;
                    sub_100005FE0(v171);
                    *v171 = v210;
                    *(v171 + 16) = v216;
                    v215 = 0uLL;
                    v216 = 0;
                    *&v212 = &v215;
                    sub_100002260(&v212);
                  }
                }

                v160 = v161 - 1;
              }

              while (v161);
              v177 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
              v178 = v211;
              do
              {
                v179 = 0;
                v180 = v178;
                v212 = *a1;
                v213 = a1[2];
                *a1 = 0;
                a1[1] = 0;
                a1[2] = 0;
                v181 = a1;
                do
                {
                  v182 = v181 + 24 * v179;
                  v183 = v182 + 24;
                  if (2 * v179 + 2 >= v177)
                  {
                    v179 = (2 * v179) | 1;
                  }

                  else
                  {
                    v185 = *(v182 + 48);
                    v184 = v182 + 48;
                    if (*(v184 - 16) - *(v184 - 24) <= (*(v184 + 8) - v185))
                    {
                      v179 = (2 * v179) | 1;
                    }

                    else
                    {
                      v183 = v184;
                      v179 = 2 * v179 + 2;
                    }
                  }

                  sub_100005FE0(v181);
                  *v181 = *v183;
                  *(v181 + 16) = *(v183 + 16);
                  *v183 = 0;
                  *(v183 + 8) = 0;
                  *(v183 + 16) = 0;
                  v181 = v183;
                }

                while (v179 <= ((v177 - 2) >> 1));
                v178 -= 3;
                sub_100005FE0(v183);
                if (v183 == v180 - 3)
                {
                  *v183 = v212;
                  *(v183 + 16) = v213;
                  v212 = 0uLL;
                  v213 = 0;
                }

                else
                {
                  *v183 = *(v180 - 3);
                  *(v183 + 16) = *(v180 - 1);
                  *v178 = 0;
                  *(v180 - 2) = 0;
                  *(v180 - 1) = 0;
                  sub_100005FE0((v180 - 3));
                  *(v180 - 3) = v212;
                  *(v180 - 1) = v213;
                  v212 = 0uLL;
                  v213 = 0;
                  v186 = v183 - a1 + 24;
                  if (v186 >= 25)
                  {
                    v187 = (-2 - 0x5555555555555555 * (v186 >> 3)) >> 1;
                    v188 = &a1[3 * v187];
                    v189 = *(v183 + 8);
                    if (v188[1] - *v188 > (v189 - *v183))
                    {
                      v190 = v180 - 3;
                      *&v215 = *v183;
                      *(&v215 + 1) = v189;
                      v216 = *(v183 + 16);
                      *v183 = 0;
                      *(v183 + 8) = 0;
                      *(v183 + 16) = 0;
                      do
                      {
                        v191 = v188;
                        sub_100005FE0(v183);
                        *v183 = *v191;
                        *(v183 + 16) = *(v191 + 16);
                        *v191 = 0;
                        *(v191 + 8) = 0;
                        *(v191 + 16) = 0;
                        v192 = v215;
                        if (!v187)
                        {
                          break;
                        }

                        v187 = (v187 - 1) >> 1;
                        v188 = &a1[3 * v187];
                        v183 = v191;
                      }

                      while ((v188[1] - *v188) > *(&v215 + 1) - v215);
                      sub_100005FE0(v191);
                      *v191 = v192;
                      *(v191 + 16) = v216;
                      v215 = 0uLL;
                      v216 = 0;
                      v214 = &v215;
                      sub_100002260(&v214);
                      v178 = v190;
                    }
                  }
                }

                *&v215 = &v212;
                sub_100002260(&v215);
                v166 = v177-- <= 2;
              }

              while (!v166);
            }

            return;
          }

          v12 = v10 >> 1;
          v13 = &a1[3 * (v10 >> 1)];
          v14 = *(a2 - 3);
          v15 = *(a2 - 2) - v14;
          if (v9 >= 0xC01)
          {
            v16 = *v13;
            v17 = v13[1];
            v18 = v17 - *v13;
            v19 = *a1;
            v20 = a1[1];
            v21 = v20 - *a1;
            if (v18 <= v21)
            {
              if (v15 <= v18)
              {
                goto LABEL_28;
              }

              *v13 = v14;
              *(a2 - 3) = v16;
              v32 = v13[1];
              v13[1] = *(a2 - 2);
              *(a2 - 2) = v32;
              v33 = v13 + 2;
              v34 = v13[2];
              v13[2] = *(a2 - 1);
              *(a2 - 1) = v34;
              v35 = v13[1];
              v37 = *a1;
              v36 = a1[1];
              if (v35 - *v13 <= (v36 - *a1))
              {
LABEL_28:
                v47 = &a1[3 * v12];
                v49 = *(v47 - 3);
                v50 = *(v47 - 2);
                v48 = v47 - 3;
                v51 = v50 - v49;
                v52 = a1[3];
                v53 = *(a2 - 6);
                v54 = *(a2 - 5) - v53;
                if (v51 <= a1[4] - v52)
                {
                  if (v54 <= v51)
                  {
                    goto LABEL_41;
                  }

                  *v48 = v53;
                  *(a2 - 6) = v49;
                  v57 = v48[1];
                  v48[1] = *(a2 - 5);
                  *(a2 - 5) = v57;
                  v59 = v48 + 2;
                  v58 = v48[2];
                  v48[2] = *(a2 - 4);
                  *(a2 - 4) = v58;
                  v60 = a1[3];
                  if (v48[1] - *v48 <= (a1[4] - v60))
                  {
LABEL_41:
                    v70 = &a1[3 * v12];
                    v72 = v70[3];
                    v73 = v70[4];
                    v71 = v70 + 3;
                    v74 = v73 - v72;
                    v75 = a1[6];
                    v76 = *(a2 - 9);
                    v77 = *(a2 - 8) - v76;
                    if (v73 - v72 <= (a1[7] - v75))
                    {
                      if (v77 <= v74)
                      {
                        goto LABEL_51;
                      }

                      *v71 = v76;
                      *(a2 - 9) = v72;
                      v80 = v71[1];
                      v71[1] = *(a2 - 8);
                      *(a2 - 8) = v80;
                      v82 = v71 + 2;
                      v81 = v71[2];
                      v71[2] = *(a2 - 7);
                      *(a2 - 7) = v81;
                      v72 = *v71;
                      v73 = v71[1];
                      v74 = v73 - *v71;
                      v83 = a1[6];
                      if (v74 <= a1[7] - v83)
                      {
LABEL_51:
                        v90 = *v13;
                        v89 = v13[1];
                        v91 = v89 - *v13;
                        v93 = *v48;
                        v92 = v48[1];
                        v94 = v92 - *v48;
                        if (v91 <= v94)
                        {
                          if (v74 <= v91)
                          {
LABEL_61:
                            v100 = *a1;
                            *a1 = v90;
                            a1[1] = v89;
                            *v13 = v100;
                            v43 = v13 + 2;
                            v30 = a1 + 2;
                            goto LABEL_62;
                          }

                          *v13 = v72;
                          v13[1] = v73;
                          *v71 = v90;
                          v71[1] = v89;
                          v97 = v13 + 2;
                          v96 = v13[2];
                          v13[2] = v71[2];
                          v71[2] = v96;
                          if (v74 <= v94)
                          {
                            v89 = v73;
                            v90 = v72;
                            goto LABEL_61;
                          }

                          *v48 = v72;
                          v48[1] = v73;
                          v95 = v48 + 2;
                          *v13 = v93;
                          v13[1] = v92;
                        }

                        else
                        {
                          if (v74 <= v91)
                          {
                            *v48 = v90;
                            v48[1] = v89;
                            *v13 = v93;
                            v13[1] = v92;
                            v95 = v13 + 2;
                            v98 = v48[2];
                            v48[2] = v13[2];
                            v13[2] = v98;
                            if (v74 <= v94)
                            {
                              v89 = v92;
                              v90 = v93;
                              goto LABEL_61;
                            }

                            *v13 = v72;
                            v13[1] = v73;
                          }

                          else
                          {
                            v95 = v48 + 2;
                            *v48 = v72;
                            v48[1] = v73;
                          }

                          v97 = v71 + 2;
                          *v71 = v93;
                          v71[1] = v92;
                        }

                        v99 = *v95;
                        *v95 = *v97;
                        *v97 = v99;
                        v90 = *v13;
                        v89 = v13[1];
                        goto LABEL_61;
                      }

                      a1[6] = v72;
                      *v71 = v83;
                      v84 = a1[7];
                      a1[7] = v71[1];
                      v71[1] = v84;
                      v78 = a1 + 8;
                    }

                    else
                    {
                      if (v77 <= v74)
                      {
                        a1[6] = v72;
                        *v71 = v75;
                        v85 = a1[7];
                        a1[7] = v71[1];
                        v71[1] = v85;
                        v78 = v71 + 2;
                        v86 = a1[8];
                        a1[8] = v71[2];
                        v71[2] = v86;
                        v87 = *(a2 - 9);
                        v72 = *v71;
                        v73 = v71[1];
                        v74 = v73 - *v71;
                        if (*(a2 - 8) - v87 <= v74)
                        {
                          goto LABEL_51;
                        }

                        *v71 = v87;
                        *(a2 - 9) = v72;
                        v79 = v71[1];
                        v71[1] = *(a2 - 8);
                      }

                      else
                      {
                        v78 = a1 + 8;
                        a1[6] = v76;
                        *(a2 - 9) = v75;
                        v79 = a1[7];
                        a1[7] = *(a2 - 8);
                      }

                      *(a2 - 8) = v79;
                      v82 = v207;
                    }

                    v88 = *v78;
                    *v78 = *v82;
                    *v82 = v88;
                    v72 = *v71;
                    v73 = v71[1];
                    v74 = v73 - *v71;
                    goto LABEL_51;
                  }

                  a1[3] = *v48;
                  *v48 = v60;
                  v61 = a1[4];
                  a1[4] = v48[1];
                  v48[1] = v61;
                  v55 = a1 + 5;
                }

                else
                {
                  if (v54 <= v51)
                  {
                    a1[3] = v49;
                    *v48 = v52;
                    v65 = a1[4];
                    a1[4] = v48[1];
                    v48[1] = v65;
                    v55 = v48 + 2;
                    v66 = a1[5];
                    a1[5] = v48[2];
                    v48[2] = v66;
                    v67 = *(a2 - 6);
                    v68 = *v48;
                    if (*(a2 - 5) - v67 <= (v48[1] - *v48))
                    {
                      goto LABEL_41;
                    }

                    *v48 = v67;
                    *(a2 - 6) = v68;
                    v56 = v48[1];
                    v48[1] = *(a2 - 5);
                  }

                  else
                  {
                    v55 = a1 + 5;
                    a1[3] = v53;
                    *(a2 - 6) = v52;
                    v56 = a1[4];
                    a1[4] = *(a2 - 5);
                  }

                  *(a2 - 5) = v56;
                  v59 = v208;
                }

                v69 = *v55;
                *v55 = *v59;
                *v59 = v69;
                goto LABEL_41;
              }

              *a1 = *v13;
              a1[1] = v35;
              v22 = a1 + 2;
              *v13 = v37;
              v13[1] = v36;
            }

            else
            {
              if (v15 <= v18)
              {
                *a1 = v16;
                a1[1] = v17;
                *v13 = v19;
                v13[1] = v20;
                v22 = v13 + 2;
                v44 = a1[2];
                a1[2] = v13[2];
                v13[2] = v44;
                v45 = *(a2 - 3);
                if (*(a2 - 2) - v45 <= v21)
                {
                  goto LABEL_28;
                }

                *v13 = v45;
                *(a2 - 3) = v19;
                v23 = v13[1];
                v13[1] = *(a2 - 2);
              }

              else
              {
                v22 = a1 + 2;
                *a1 = v14;
                *(a2 - 3) = v19;
                v23 = a1[1];
                a1[1] = *(a2 - 2);
              }

              *(a2 - 2) = v23;
              v33 = v209;
            }

            v46 = *v22;
            *v22 = *v33;
            *v33 = v46;
            goto LABEL_28;
          }

          v24 = *a1;
          v25 = a1[1];
          v26 = v25 - *a1;
          v27 = *v13;
          v28 = v13[1];
          v29 = v28 - *v13;
          if (v26 > v29)
          {
            if (v15 <= v26)
            {
              *v13 = v24;
              v13[1] = v25;
              *a1 = v27;
              a1[1] = v28;
              v30 = a1 + 2;
              v62 = v13[2];
              v13[2] = a1[2];
              a1[2] = v62;
              v63 = *(a2 - 3);
              if (*(a2 - 2) - v63 <= v29)
              {
                goto LABEL_63;
              }

              *a1 = v63;
              *(a2 - 3) = v27;
              v64 = a1[1];
              a1[1] = *(a2 - 2);
              *(a2 - 2) = v64;
            }

            else
            {
              v30 = v13 + 2;
              *v13 = v14;
              *(a2 - 3) = v27;
              v31 = v13[1];
              v13[1] = *(a2 - 2);
              *(a2 - 2) = v31;
            }

            v43 = v209;
            goto LABEL_62;
          }

          if (v15 > v26)
          {
            *a1 = v14;
            *(a2 - 3) = v24;
            v38 = a1[1];
            a1[1] = *(a2 - 2);
            *(a2 - 2) = v38;
            v39 = a1[2];
            a1[2] = *(a2 - 1);
            *(a2 - 1) = v39;
            v40 = a1[1];
            v42 = *v13;
            v41 = v13[1];
            if (v40 - *a1 > (v41 - *v13))
            {
              *v13 = *a1;
              v13[1] = v40;
              v30 = v13 + 2;
              v43 = a1 + 2;
              *a1 = v42;
              a1[1] = v41;
LABEL_62:
              v101 = *v30;
              *v30 = *v43;
              *v43 = v101;
            }
          }

LABEL_63:
          --a3;
          v102 = *a1;
          if (a4)
          {
            break;
          }

          v103 = a1[1];
          v104 = v103 - v102;
          if (*(a1 - 2) - *(a1 - 3) > (v103 - v102))
          {
            goto LABEL_66;
          }

          *&v215 = *a1;
          *(&v215 + 1) = v103;
          v216 = a1[2];
          *a1 = 0;
          a1[1] = 0;
          a1[2] = 0;
          if (v104 <= *(a2 - 2) - *(a2 - 3))
          {
            v125 = a1 + 3;
            do
            {
              v8 = v125;
              if (v125 >= a2)
              {
                break;
              }

              v126 = v125[1] - *v125;
              v125 += 3;
            }

            while (v104 <= v126);
          }

          else
          {
            v8 = a1;
            do
            {
              v123 = v8[3];
              v124 = v8[4];
              v8 += 3;
            }

            while (v104 <= v124 - v123);
          }

          v127 = a2;
          if (v8 < a2)
          {
            v127 = a2;
            do
            {
              v128 = *(v127 - 3);
              v129 = *(v127 - 2);
              v127 -= 3;
            }

            while (v104 > v129 - v128);
          }

          if (v8 < v127)
          {
            v130 = *v8;
            v131 = *v127;
            do
            {
              *v8 = v131;
              *v127 = v130;
              v132 = v8[1];
              v8[1] = v127[1];
              v127[1] = v132;
              v133 = v8[2];
              v8[2] = v127[2];
              v127[2] = v133;
              v103 = *(&v215 + 1);
              v102 = v215;
              v134 = *(&v215 + 1) - v215;
              do
              {
                v130 = v8[3];
                v135 = v8[4];
                v8 += 3;
              }

              while (v134 <= v135 - v130);
              do
              {
                v131 = *(v127 - 3);
                v136 = *(v127 - 2);
                v127 -= 3;
              }

              while (v134 > v136 - v131);
            }

            while (v8 < v127);
          }

          if (v8 - 3 != a1)
          {
            sub_100005FE0(a1);
            *a1 = *(v8 - 3);
            a1[2] = *(v8 - 1);
            *(v8 - 3) = 0;
            *(v8 - 2) = 0;
            *(v8 - 1) = 0;
          }

          sub_100005FE0((v8 - 3));
          *(v8 - 3) = v102;
          *(v8 - 2) = v103;
          *(v8 - 1) = v216;
          v215 = 0uLL;
          v216 = 0;
          *&v212 = &v215;
          sub_100002260(&v212);
          a4 = 0;
        }

        v103 = a1[1];
        v104 = v103 - v102;
LABEL_66:
        v105 = 0;
        *&v215 = *a1;
        *(&v215 + 1) = v103;
        v216 = a1[2];
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
        do
        {
          v106 = a1[v105 + 3];
          v107 = a1[v105 + 4] - v106;
          v105 += 3;
        }

        while (v107 > v104);
        v108 = &a1[v105];
        v109 = v211;
        if (v105 == 3)
        {
          v109 = v211;
          do
          {
            if (v108 >= v109)
            {
              break;
            }

            v112 = *(v109 - 3);
            v113 = *(v109 - 2);
            v109 -= 3;
          }

          while (v113 - v112 <= v104);
        }

        else
        {
          do
          {
            v110 = *(v109 - 3);
            v111 = *(v109 - 2);
            v109 -= 3;
          }

          while (v111 - v110 <= v104);
        }

        if (v108 >= v109)
        {
          v8 = v108;
        }

        else
        {
          v114 = *v109;
          v8 = v108;
          v115 = v109;
          do
          {
            *v8 = v114;
            *v115 = v106;
            v116 = v8[1];
            v8[1] = v115[1];
            v115[1] = v116;
            v117 = v8[2];
            v8[2] = v115[2];
            v115[2] = v117;
            v103 = *(&v215 + 1);
            v102 = v215;
            v118 = *(&v215 + 1) - v215;
            do
            {
              v106 = v8[3];
              v119 = v8[4];
              v8 += 3;
            }

            while (v119 - v106 > v118);
            do
            {
              v114 = *(v115 - 3);
              v120 = *(v115 - 2);
              v115 -= 3;
            }

            while (v120 - v114 <= v118);
          }

          while (v8 < v115);
        }

        if (v8 - 3 != a1)
        {
          sub_100005FE0(a1);
          *a1 = *(v8 - 3);
          a1[2] = *(v8 - 1);
          *(v8 - 3) = 0;
          *(v8 - 2) = 0;
          *(v8 - 1) = 0;
        }

        sub_100005FE0((v8 - 3));
        *(v8 - 3) = v102;
        *(v8 - 2) = v103;
        *(v8 - 1) = v216;
        v215 = 0uLL;
        v216 = 0;
        *&v212 = &v215;
        sub_100002260(&v212);
        v121 = v108 >= v109;
        a2 = v211;
        if (v121)
        {
          break;
        }

LABEL_88:
        sub_100007D84(a1, v8 - 3, a3, a4 & 1);
        a4 = 0;
      }

      v122 = sub_100009078(a1, v8 - 3);
      if (sub_100009078(v8, v211))
      {
        break;
      }

      if ((v122 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    a2 = v8 - 3;
    if ((v122 & 1) == 0)
    {
      continue;
    }

    break;
  }
}

uint64_t *sub_100008D50(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = a2[1] - *a2;
  v6 = *result;
  v7 = *a3;
  v8 = a3[1] - *a3;
  if (v5 <= result[1] - *result)
  {
    if (v8 > v5)
    {
      *a2 = v7;
      *a3 = v4;
      v11 = a2[1];
      a2[1] = a3[1];
      a3[1] = v11;
      v13 = a2 + 2;
      v12 = a2[2];
      a2[2] = a3[2];
      a3[2] = v12;
      v14 = *result;
      if (a2[1] - *a2 > (result[1] - *result))
      {
        *result = *a2;
        *a2 = v14;
        v15 = result[1];
        result[1] = a2[1];
        a2[1] = v15;
        v9 = result + 2;
LABEL_10:
        v19 = *v9;
        *v9 = *v13;
        *v13 = v19;
      }
    }
  }

  else
  {
    if (v8 > v5)
    {
      v9 = result + 2;
      *result = v7;
      *a3 = v6;
      v10 = result[1];
      result[1] = a3[1];
LABEL_9:
      a3[1] = v10;
      v13 = a3 + 2;
      goto LABEL_10;
    }

    *result = v4;
    *a2 = v6;
    v16 = result[1];
    result[1] = a2[1];
    a2[1] = v16;
    v9 = a2 + 2;
    v17 = result[2];
    result[2] = a2[2];
    a2[2] = v17;
    v18 = *a2;
    if (a3[1] - *a3 > (a2[1] - *a2))
    {
      *a2 = *a3;
      *a3 = v18;
      v10 = a2[1];
      a2[1] = a3[1];
      goto LABEL_9;
    }
  }

  v20 = *a3;
  if (a4[1] - *a4 > (a3[1] - *a3))
  {
    *a3 = *a4;
    *a4 = v20;
    v21 = a3[1];
    a3[1] = a4[1];
    a4[1] = v21;
    v22 = a3[2];
    a3[2] = a4[2];
    a4[2] = v22;
    v23 = *a2;
    if (a3[1] - *a3 > (a2[1] - *a2))
    {
      *a2 = *a3;
      *a3 = v23;
      v24 = a2[1];
      a2[1] = a3[1];
      a3[1] = v24;
      v25 = a2[2];
      a2[2] = a3[2];
      a3[2] = v25;
      v26 = *result;
      if (a2[1] - *a2 > (result[1] - *result))
      {
        *result = *a2;
        *a2 = v26;
        v27 = result[1];
        result[1] = a2[1];
        a2[1] = v27;
        v28 = result[2];
        result[2] = a2[2];
        a2[2] = v28;
      }
    }
  }

  return result;
}

uint64_t *sub_100008F34(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = sub_100008D50(a1, a2, a3, a4);
  v11 = *a4;
  if (a5[1] - *a5 > (a4[1] - *a4))
  {
    *a4 = *a5;
    *a5 = v11;
    v12 = a4[1];
    a4[1] = a5[1];
    a5[1] = v12;
    v13 = a4[2];
    a4[2] = a5[2];
    a5[2] = v13;
    v14 = *a3;
    if (a4[1] - *a4 > (a3[1] - *a3))
    {
      *a3 = *a4;
      *a4 = v14;
      v15 = a3[1];
      a3[1] = a4[1];
      a4[1] = v15;
      v16 = a3[2];
      a3[2] = a4[2];
      a4[2] = v16;
      v17 = *a2;
      if (a3[1] - *a3 > (a2[1] - *a2))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = a2[1];
        a2[1] = a3[1];
        a3[1] = v18;
        v19 = a2[2];
        a2[2] = a3[2];
        a3[2] = v19;
        v20 = *a1;
        if (a2[1] - *a2 > (a1[1] - *a1))
        {
          *a1 = *a2;
          *a2 = v20;
          v21 = a1[1];
          a1[1] = a2[1];
          a2[1] = v21;
          v22 = a1[2];
          a1[2] = a2[2];
          a2[2] = v22;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100009078(uint64_t *a1, uint64_t *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = a1[3];
        v10 = a1[4];
        v11 = v10 - v9;
        v12 = *a1;
        v13 = a1[1];
        v14 = v13 - *a1;
        v15 = *(a2 - 3);
        v16 = *(a2 - 2) - v15;
        if (v10 - v9 <= v14)
        {
          if (v16 <= v11)
          {
            return 1;
          }

          a1[3] = v15;
          *(a2 - 3) = v9;
          v30 = a1[4];
          a1[4] = *(a2 - 2);
          *(a2 - 2) = v30;
          v32 = a1 + 5;
          v31 = a1[5];
          a1[5] = *(a2 - 1);
          *(a2 - 1) = v31;
          v34 = a1[3];
          v33 = a1[4];
          v36 = *a1;
          v35 = a1[1];
          if (v33 - v34 <= (v35 - *a1))
          {
            return 1;
          }

          *a1 = v34;
          a1[1] = v33;
          v17 = a1 + 2;
          a1[3] = v36;
          a1[4] = v35;
        }

        else
        {
          if (v16 <= v11)
          {
            *a1 = v9;
            a1[1] = v10;
            a1[3] = v12;
            a1[4] = v13;
            v17 = a1 + 5;
            v39 = a1[2];
            a1[2] = a1[5];
            a1[5] = v39;
            v40 = *(a2 - 3);
            if (*(a2 - 2) - v40 <= v14)
            {
              return 1;
            }

            a1[3] = v40;
            *(a2 - 3) = v12;
            v18 = a1[4];
            a1[4] = *(a2 - 2);
          }

          else
          {
            v17 = a1 + 2;
            *a1 = v15;
            *(a2 - 3) = v12;
            v18 = a1[1];
            a1[1] = *(a2 - 2);
          }

          *(a2 - 2) = v18;
          v32 = a2 - 1;
        }

        v41 = *v17;
        *v17 = *v32;
        *v32 = v41;
        return 1;
      case 4:
        sub_100008D50(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        sub_100008F34(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 3);
      v6 = *a1;
      if (*(a2 - 2) - v5 > (a1[1] - *a1))
      {
        *a1 = v5;
        *(a2 - 3) = v6;
        v7 = a1[1];
        a1[1] = *(a2 - 2);
        *(a2 - 2) = v7;
        v8 = a1[2];
        a1[2] = *(a2 - 1);
        *(a2 - 1) = v8;
      }

      return 1;
    }
  }

  v19 = a1 + 6;
  v20 = a1[6];
  v22 = a1[3];
  v21 = a1[4];
  v23 = v21 - v22;
  v25 = *a1;
  v24 = a1[1];
  v26 = v24 - *a1;
  v27 = a1[7];
  v28 = v27 - v20;
  if (v21 - v22 > v26)
  {
    if (v28 <= v23)
    {
      *a1 = v22;
      a1[1] = v21;
      v29 = a1 + 5;
      v42 = a1[5];
      a1[3] = v25;
      a1[4] = v24;
      v43 = a1[2];
      a1[2] = v42;
      a1[5] = v43;
      if (v28 <= v26)
      {
        goto LABEL_31;
      }

      a1[3] = v20;
      a1[4] = v27;
    }

    else
    {
      v29 = a1 + 2;
      *a1 = v20;
      a1[1] = v27;
    }

    v38 = a1 + 8;
    a1[6] = v25;
    a1[7] = v24;
    goto LABEL_30;
  }

  if (v28 > v23)
  {
    v38 = a1 + 5;
    v37 = a1[5];
    a1[3] = v20;
    a1[4] = v27;
    a1[5] = a1[8];
    a1[6] = v22;
    a1[7] = v21;
    a1[8] = v37;
    if (v28 > v26)
    {
      *a1 = v20;
      a1[1] = v27;
      v29 = a1 + 2;
      a1[3] = v25;
      a1[4] = v24;
LABEL_30:
      v44 = *v29;
      *v29 = *v38;
      *v38 = v44;
    }
  }

LABEL_31:
  v45 = a1 + 9;
  if (a1 + 9 != a2)
  {
    v46 = 0;
    v47 = 0;
    do
    {
      v48 = v45[1];
      if (v48 - *v45 > (v19[1] - *v19))
      {
        *&v54 = *v45;
        *(&v54 + 1) = v48;
        v55 = v45[2];
        *v45 = 0;
        v45[1] = 0;
        v45[2] = 0;
        v49 = v46;
        while (1)
        {
          v50 = a1 + v49;
          sub_100005FE0(a1 + v49 + 72);
          *(v50 + 72) = *(v50 + 3);
          *(v50 + 11) = *(v50 + 8);
          *(v50 + 7) = 0;
          *(v50 + 8) = 0;
          *(v50 + 6) = 0;
          if (v49 == -48)
          {
            break;
          }

          v49 -= 24;
          if (*(&v54 + 1) - v54 <= *(v50 + 4) - *(v50 + 3))
          {
            v51 = a1 + v49 + 72;
            goto LABEL_39;
          }
        }

        v51 = a1;
LABEL_39:
        sub_100005FE0(v51);
        *v51 = v54;
        *(v51 + 16) = v55;
        v55 = 0;
        v54 = 0uLL;
        if (++v47 == 8)
        {
          v52 = v45 + 3 == a2;
          v56 = &v54;
          sub_100002260(&v56);
          return v52;
        }

        v56 = &v54;
        sub_100002260(&v56);
      }

      v19 = v45;
      v46 += 24;
      v45 += 3;
    }

    while (v45 != a2);
  }

  return 1;
}

void *sub_10000943C(void *a1, const void **a2, const void **a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1000060A4(a1, v4, v6);
      v6 += 3;
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_1000094C0(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001AA8();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_10000954C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100002064(result, a4);
  }

  return result;
}

void sub_1000095B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100002260(&a9);
  _Unwind_Resume(a1);
}

char *sub_1000095D4(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100001C60(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_1000021E0(v9);
  return v4;
}

_DWORD *sub_100009694(_DWORD *result, void *a2, uint64_t a3)
{
  v3 = *a2 - a2[1];
  *result = 16;
  *(a3 + 56) = v3;
  return result;
}

uint64_t sub_1000096AC(uint64_t *a1, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 3 || sub_100039B20())
  {
    sub_100039B10(a2);
    return 0;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= 3)
  {
    v6 = sub_1000027F4(&std::cout, "Error: insufficient arguments specified for catutil diff", 56);
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v7 = std::locale::use_facet(&v52, &std::ctype<char>::id);
    (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(&v52);
    std::ostream::put();
    std::ostream::flush();
    return 0;
  }

  v8 = *a1 + 48;
  sub_10000A0B8(&v64);
  v9 = *a1;
  sub_10000A0B8(&v62);
  v10 = v64;
  if (v64 && (v11 = v62) != 0)
  {
    siri::dialogengine::Context::GetFile(&v52, v64);
    if (v53[0])
    {
      sub_100005EB4(v53[0]);
    }

    siri::dialogengine::Context::GetFile(&v52, v11);
    if (v53[0])
    {
      sub_100005EB4(v53[0]);
    }

    v12 = siri::dialogengine::File::operator!=();
    sub_10000A424(v10, &v60);
    sub_10000A424(v11, &v58);
    v52.__locale_ = v53;
    v53[0] = 0;
    v55[0] = 0;
    v55[1] = 0;
    v53[1] = 0;
    v54 = v55;
    v57[0] = 0;
    v57[1] = 0;
    v56 = v57;
    v13 = v60;
    if (v60 != v61)
    {
      do
      {
        if (*(v13 + 55) < 0)
        {
          sub_100001C60(__dst, v13[4], v13[5]);
        }

        else
        {
          *&__dst[0].__locale_ = *(v13 + 2);
          v67 = v13[6];
        }

        v68 = v13[7];
        v14 = sub_10000A9C0(&v58, &__dst[0].__locale_);
        v15 = &v54;
        if (v59 == v14 || (v16 = *(v14 + 56), v17 = siri::dialogengine::Dialog::operator!=(), v15 = &v56, v17))
        {
          sub_10000AA50(v15, &__dst[0].__locale_);
        }

        if (SHIBYTE(v67) < 0)
        {
          operator delete(__dst[0].__locale_);
        }

        v18 = v13[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v13[2];
            v20 = *v19 == v13;
            v13 = v19;
          }

          while (!v20);
        }

        v13 = v19;
      }

      while (v19 != v61);
    }

    v21 = v58;
    if (v58 != v59)
    {
      do
      {
        if (*(v21 + 55) < 0)
        {
          sub_100001C60(__dst, v21[4], v21[5]);
        }

        else
        {
          *&__dst[0].__locale_ = *(v21 + 2);
          v67 = v21[6];
        }

        v68 = v21[7];
        if (v61 == sub_10000A9C0(&v60, &__dst[0].__locale_))
        {
          sub_10000AA50(&v52, &__dst[0].__locale_);
        }

        if (SHIBYTE(v67) < 0)
        {
          operator delete(__dst[0].__locale_);
        }

        v22 = v21[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v21[2];
            v20 = *v23 == v21;
            v21 = v23;
          }

          while (!v20);
        }

        v21 = v23;
      }

      while (v23 != v59);
    }

    if (v12)
    {
      v24 = sub_1000027F4(&std::cout, "CAT files are different.", 24);
      std::ios_base::getloc((v24 + *(*v24 - 24)));
      v25 = std::locale::use_facet(__dst, &std::ctype<char>::id);
      (v25->__vftable[2].~facet_0)(v25, 10);
      std::locale::~locale(__dst);
      std::ostream::put();
      std::ostream::flush();
      locale = v52.__locale_;
      if (v52.__locale_ != v53)
      {
        do
        {
          if (*(locale + 55) < 0)
          {
            sub_100001C60(__dst, *(locale + 4), *(locale + 5));
          }

          else
          {
            *&__dst[0].__locale_ = *(locale + 2);
            v67 = *(locale + 6);
          }

          std::operator+<char>();
          if ((v51 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v51 & 0x80u) == 0)
          {
            v28 = v51;
          }

          else
          {
            v28 = v50;
          }

          v29 = sub_1000027F4(&std::cout, p_p, v28);
          std::ios_base::getloc((v29 + *(*v29 - 24)));
          v30 = std::locale::use_facet(&v69, &std::ctype<char>::id);
          (v30->__vftable[2].~facet_0)(v30, 10);
          std::locale::~locale(&v69);
          std::ostream::put();
          std::ostream::flush();
          if (v51 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v67) < 0)
          {
            operator delete(__dst[0].__locale_);
          }

          v31 = *(locale + 1);
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = *(locale + 2);
              v20 = *v32 == locale;
              locale = v32;
            }

            while (!v20);
          }

          locale = v32;
        }

        while (v32 != v53);
      }

      v33 = v56;
      if (v56 != v57)
      {
        do
        {
          if (*(v33 + 55) < 0)
          {
            sub_100001C60(__dst, v33[4], v33[5]);
          }

          else
          {
            *&__dst[0].__locale_ = *(v33 + 2);
            v67 = v33[6];
          }

          std::operator+<char>();
          if ((v51 & 0x80u) == 0)
          {
            v34 = &__p;
          }

          else
          {
            v34 = __p;
          }

          if ((v51 & 0x80u) == 0)
          {
            v35 = v51;
          }

          else
          {
            v35 = v50;
          }

          v36 = sub_1000027F4(&std::cout, v34, v35);
          std::ios_base::getloc((v36 + *(*v36 - 24)));
          v37 = std::locale::use_facet(&v69, &std::ctype<char>::id);
          (v37->__vftable[2].~facet_0)(v37, 10);
          std::locale::~locale(&v69);
          std::ostream::put();
          std::ostream::flush();
          if (v51 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v67) < 0)
          {
            operator delete(__dst[0].__locale_);
          }

          v38 = v33[1];
          if (v38)
          {
            do
            {
              v39 = v38;
              v38 = *v38;
            }

            while (v38);
          }

          else
          {
            do
            {
              v39 = v33[2];
              v20 = *v39 == v33;
              v33 = v39;
            }

            while (!v20);
          }

          v33 = v39;
        }

        while (v39 != v57);
      }

      v40 = v54;
      if (v54 != v55)
      {
        do
        {
          if (*(v40 + 55) < 0)
          {
            sub_100001C60(__dst, v40[4], v40[5]);
          }

          else
          {
            *&__dst[0].__locale_ = *(v40 + 2);
            v67 = v40[6];
          }

          std::operator+<char>();
          if ((v51 & 0x80u) == 0)
          {
            v41 = &__p;
          }

          else
          {
            v41 = __p;
          }

          if ((v51 & 0x80u) == 0)
          {
            v42 = v51;
          }

          else
          {
            v42 = v50;
          }

          v43 = sub_1000027F4(&std::cout, v41, v42);
          std::ios_base::getloc((v43 + *(*v43 - 24)));
          v44 = std::locale::use_facet(&v69, &std::ctype<char>::id);
          (v44->__vftable[2].~facet_0)(v44, 10);
          std::locale::~locale(&v69);
          std::ostream::put();
          std::ostream::flush();
          if (v51 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v67) < 0)
          {
            operator delete(__dst[0].__locale_);
          }

          v45 = v40[1];
          if (v45)
          {
            do
            {
              v46 = v45;
              v45 = *v45;
            }

            while (v45);
          }

          else
          {
            do
            {
              v46 = v40[2];
              v20 = *v46 == v40;
              v40 = v46;
            }

            while (!v20);
          }

          v40 = v46;
        }

        while (v46 != v55);
      }
    }

    else
    {
      v47 = sub_1000027F4(&std::cout, "CAT files are equal.", 20);
      std::ios_base::getloc((v47 + *(*v47 - 24)));
      v48 = std::locale::use_facet(__dst, &std::ctype<char>::id);
      (v48->__vftable[2].~facet_0)(v48, 10);
      std::locale::~locale(__dst);
      std::ostream::put();
      std::ostream::flush();
    }

    v4 = v12 ^ 1u;
    sub_10000623C(&v56, v57[0]);
    sub_10000623C(&v54, v55[0]);
    sub_10000623C(&v52, v53[0]);
    sub_10000623C(&v58, v59[0]);
    sub_10000623C(&v60, v61[0]);
  }

  else
  {
    v4 = 0;
  }

  if (v63)
  {
    sub_100005EB4(v63);
  }

  if (v65)
  {
    sub_100005EB4(v65);
  }

  return v4;
}

void sub_100009FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::locale a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, char *a29, uint64_t a30, char a31, char *a32)
{
  std::locale::~locale((v32 - 128));
  sub_10000A50C(&a19);
  sub_10000623C(&a28, a29);
  sub_10000623C(&a31, a32);
  v34 = *(v32 - 152);
  if (v34)
  {
    sub_100005EB4(v34);
  }

  v35 = *(v32 - 136);
  if (v35)
  {
    sub_100005EB4(v35);
  }

  _Unwind_Resume(a1);
}

void sub_10000A0B8(void *a1@<X8>)
{
  if (siri::dialogengine::FileExists())
  {
    operator new();
  }

  std::operator+<char>();
  if ((v8 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v3 = v8;
  }

  else
  {
    v3 = __p[1];
  }

  v4 = sub_1000027F4(&std::cout, v2, v3);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(&v6, &std::ctype<char>::id);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v6);
  std::ostream::put();
  std::ostream::flush();
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_10000A424(siri::dialogengine::Context *a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  siri::dialogengine::Context::GetFile(&v8, a1);
  siri::dialogengine::File::GetRoot(&v6, v8);
  sub_10000A654(a1, v6, a2);
  if (v7)
  {
    sub_100005EB4(v7);
  }

  Fallback = siri::dialogengine::File::GetFallback(v8);
  sub_10000A654(a1, Fallback, a2);
  Phrases = siri::dialogengine::File::GetPhrases(v8);
  sub_10000A654(a1, Phrases, a2);
  if (v9)
  {
    sub_100005EB4(v9);
  }
}

void sub_10000A4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100005EB4(a10);
  }

  if (a12)
  {
    sub_100005EB4(a12);
  }

  sub_10000623C(v12, *(v12 + 8));
  _Unwind_Resume(a1);
}

char **sub_10000A50C(char **a1)
{
  sub_10000623C((a1 + 6), a1[7]);
  sub_10000623C((a1 + 3), a1[4]);
  sub_10000623C(a1, a1[1]);
  return a1;
}

void sub_10000A558(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10000A590(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10000A5C0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10000A600(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_10000A654(siri::dialogengine::Context *a1, siri::dialogengine::Group *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    siri::dialogengine::Group::GetNodes(&v19, a2);
    v6 = v19;
    for (i = v20; v6 != i; v6 += 16)
    {
      v8 = *v6;
      v7 = *(v6 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v8)
      {
        v9 = *v8;
        v10 = **v8;
        if (v11)
        {
          v12 = v11;
          siri::dialogengine::Context::GetFile(&v15, a1);
          siri::dialogengine::File::GetOrCreateId();
          if (v16)
          {
            sub_100005EB4(v16);
          }

          v15 = __p;
          *(sub_10000A870(a3, __p) + 56) = v12;
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }

          v9 = *v8;
        }

        v13 = *v9;
        if (v14)
        {
          sub_10000A654(a1, v14, a3);
        }
      }

      if (v7)
      {
        sub_100005EB4(v7);
      }
    }

    __p[0] = &v19;
    sub_100007C5C(__p);
  }
}

void sub_10000A818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    sub_100005EB4(v18);
  }

  __p = &a18;
  sub_100007C5C(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A870(uint64_t a1, const void **a2)
{
  result = *sub_100005AF8(a1, &v3, a2);
  if (!result)
  {
    sub_10000A908();
  }

  return result;
}

void sub_10000A9A4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000061D8(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A9C0(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_100005B94(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_100005B94(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_10000AA50(uint64_t a1, const void **a2)
{
  result = *sub_100005AF8(a1, &v3, a2);
  if (!result)
  {
    sub_100006128();
  }

  return result;
}

uint64_t sub_10000AAD0(void *a1, uint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) < 3 || sub_100039B20())
  {
    sub_100039B10(a2);
    return 0;
  }

  sub_10000143C(&__p, "--debug");
  v6 = siri::dialogengine::OptionExists();
  if (v46 < 0)
  {
    operator delete(__p);
  }

  siri::dialogengine::Log::SetOutputToStdout(v6, v5);
  sub_10000143C(&v47, "--templateDir");
  siri::dialogengine::GetOption();
  siri::dialogengine::ExpandPath();
  if (v46 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v47);
  }

  sub_10000143C(&__p, "--catId");
  siri::dialogengine::GetOption();
  if (v46 < 0)
  {
    operator delete(__p);
  }

  sub_10000143C(&__p, "--visualCatId");
  siri::dialogengine::GetOption();
  if (v46 < 0)
  {
    operator delete(__p);
  }

  sub_10000143C(&__p, "--excludeComputed");
  v7 = siri::dialogengine::OptionExists();
  if (v46 < 0)
  {
    operator delete(__p);
  }

  sub_10000143C(&__p, "--includeValueFromCat");
  v8 = siri::dialogengine::OptionExists();
  if (v46 < 0)
  {
    operator delete(__p);
  }

  v9 = v62;
  if ((v62 & 0x80u) != 0)
  {
    v9 = v61;
  }

  v10 = v9 != 0;
  if (!v9)
  {
    v11 = sub_1000027F4(&std::cerr, "Error: The option --templateDir is required", 45);
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v12 = std::locale::use_facet(&__p, &std::ctype<char>::id);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
  }

  v13 = v59;
  if ((v59 & 0x80u) != 0)
  {
    v13 = v58;
  }

  v14 = v56;
  if ((v56 & 0x80u) != 0)
  {
    v14 = v55;
  }

  if (v14)
  {
    if (!v13)
    {
      v19 = 0;
      goto LABEL_35;
    }

    v15 = sub_1000027F4(&std::cerr, "Warning: Both --catId and --visualCatId are specified; The option --visualCatId will be ignored", 101);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&__p, &std::ctype<char>::id);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
  }

  else if (!v13)
  {
    v41 = sub_1000027F4(&std::cerr, "Error: One of --catId or --visualCatId is required", 54);
    std::ios_base::getloc((v41 + *(*v41 - 24)));
    v42 = std::locale::use_facet(&__p, &std::ctype<char>::id);
    (v42->__vftable[2].~facet_0)(v42, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    v10 = 0;
    if (!v8)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v8)
  {
LABEL_32:
    v17 = sub_1000027F4(&std::cerr, "Warning: The option --includeValueFromCat should only be used with --visualCatId", 84);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&__p, &std::ctype<char>::id);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
  }

LABEL_33:
  v19 = 1;
LABEL_35:
  sub_10000143C(&__p, "--json");
  v20 = siri::dialogengine::OptionExists();
  if (v46 < 0)
  {
    operator delete(__p);
  }

  sub_10000143C(&__p, "--xml");
  v21 = siri::dialogengine::OptionExists();
  if (v46 < 0)
  {
    operator delete(__p);
  }

  v22 = v21 & v20;
  if (v21)
  {
    v23 = 2;
  }

  else
  {
    v23 = v20;
  }

  if (v22 == 1)
  {
    v24 = sub_1000027F4(&std::cerr, "Warning: Both --json and --xml are specified; The option --xml will be ignored", 84);
    std::ios_base::getloc((v24 + *(*v24 - 24)));
    v25 = std::locale::use_facet(&__p, &std::ctype<char>::id);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    v23 = 1;
  }

  if (v10)
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v48 = 0;
    v49 = 0;
    v47 = &v48;
    v50 = 0;
    siri::dialogengine::GetTemplateDirs();
    if (v19)
    {
      ParamsForDialogCat = siri::dialogengine::GetParamsForDialogCat();
    }

    else
    {
      ParamsForDialogCat = siri::dialogengine::GetParamsForVisualCat();
    }

    v27 = ParamsForDialogCat;
    v43[0] = &__p;
    sub_10000C88C(v43);
    if (v27)
    {
      if (v7)
      {
        siri::dialogengine::AllComputedParameterNames(&__p, v28);
        v29 = __p;
        if (__p != &v45)
        {
          do
          {
            siri::dialogengine::ParameterCollection::RemoveParameter();
            v30 = *(v29 + 1);
            if (v30)
            {
              do
              {
                v31 = v30;
                v30 = *v30;
              }

              while (v30);
            }

            else
            {
              do
              {
                v31 = *(v29 + 2);
                v32 = *v31 == v29;
                v29 = v31;
              }

              while (!v32);
            }

            v29 = v31;
          }

          while (v31 != &v45);
        }

        sub_10000623C(&__p, v45);
      }

      siri::dialogengine::Context::Context(&__p);
      siri::dialogengine::ParameterCollection::GetUniqueParameters(&v47, &__p);
      sub_10000B478(v43, v23);
      sub_100005E58(v43, v43[1]);
      siri::dialogengine::Context::~Context(&__p);
      v3 = 1;
    }

    else
    {
      v33 = v51;
      for (i = v52; v33 != i; v33 += 24)
      {
        v35 = sub_1000027F4(&std::cerr, "Error: ", 7);
        v36 = *(v33 + 23);
        if (v36 >= 0)
        {
          v37 = v33;
        }

        else
        {
          v37 = *v33;
        }

        if (v36 >= 0)
        {
          v38 = *(v33 + 23);
        }

        else
        {
          v38 = *(v33 + 8);
        }

        v39 = sub_1000027F4(v35, v37, v38);
        std::ios_base::getloc((v39 + *(*v39 - 24)));
        v40 = std::locale::use_facet(&__p, &std::ctype<char>::id);
        (v40->__vftable[2].~facet_0)(v40, 10);
        std::locale::~locale(&__p);
        std::ostream::put();
        std::ostream::flush();
      }

      v3 = 0;
    }

    sub_10000C75C(&v47, v48);
    __p = &v51;
    sub_100002260(&__p);
  }

  else
  {
    v3 = 0;
  }

  if (v56 < 0)
  {
    operator delete(v54);
  }

  if (v59 < 0)
  {
    operator delete(v57);
  }

  if (v62 < 0)
  {
    operator delete(v60);
  }

  return v3;
}

void sub_10000B2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_10000C75C(v17 - 192, *(v17 - 184));
  *(v17 - 192) = v17 - 160;
  sub_100002260((v17 - 192));
  if (*(v17 - 113) < 0)
  {
    operator delete(*(v17 - 136));
  }

  if (*(v17 - 89) < 0)
  {
    operator delete(*(v17 - 112));
  }

  if (*(v17 - 65) < 0)
  {
    operator delete(*(v17 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_10000B478(void *a1, int a2)
{
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v4 = (a1 + 1);
  v5 = *a1;
  if (*a1 == a1 + 1)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    do
    {
      sub_1000012A8(&v50, v5 + 2);
      v6 = *(v5 + 1);
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
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
    v9 = v50;
    v10 = v51;
  }

  v11 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v10 - v9));
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_10000C970(v9, v10, v12, 1);
  v13 = v50;
  if (v51 != v50)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = sub_10000E230(a1, &v13[v14]);
      v17 = *(v16 + 56);
      v18 = a1[2] - 1;
      if (a2 == 1)
      {
        if (!v15)
        {
          v25 = sub_1000027F4(&std::cout, "{", 1);
          std::ios_base::getloc((v25 + *(*v25 - 24)));
          v26 = std::locale::use_facet(&v47, &std::ctype<char>::id);
          (v26->__vftable[2].~facet_0)(v26, 10);
          std::locale::~locale(&v47);
          std::ostream::put();
          std::ostream::flush();
          v27 = sub_1000027F4(&std::cout, "  parameters: [", 17);
          std::ios_base::getloc((v27 + *(*v27 - 24)));
          v28 = std::locale::use_facet(&v47, &std::ctype<char>::id);
          (v28->__vftable[2].~facet_0)(v28, 10);
          std::locale::~locale(&v47);
          std::ostream::put();
          std::ostream::flush();
        }

        v29 = sub_1000027F4(&std::cout, "    {", 5);
        std::ios_base::getloc((v29 + *(*v29 - 24)));
        v30 = std::locale::use_facet(&v47, &std::ctype<char>::id);
        (v30->__vftable[2].~facet_0)(v30, 10);
        std::locale::~locale(&v47);
        std::ostream::put();
        std::ostream::flush();
        sub_10000143C(&v47, "name");
        siri::dialogengine::PropertyBase::GetName(__p, v17);
        sub_10000C298(&v47, __p, 1);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        if (v49 < 0)
        {
          operator delete(v47.__locale_);
        }

        sub_10000143C(&v47, "description");
        siri::dialogengine::PropertyBase::GetDescription(__p, v17);
        sub_10000C298(&v47, __p, 1);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        if (v49 < 0)
        {
          operator delete(v47.__locale_);
        }

        sub_10000143C(&v47, "semanticConcept");
        siri::dialogengine::ObjectProperty::GetSemanticConcept(__p, v17);
        sub_10000C298(&v47, __p, 1);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        if (v49 < 0)
        {
          operator delete(v47.__locale_);
        }

        sub_10000143C(&v47, "deprecated");
        siri::dialogengine::PropertyBase::GetDeprecated(__p, v17);
        sub_10000C298(&v47, __p, 1);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        if (v49 < 0)
        {
          operator delete(v47.__locale_);
        }

        sub_10000143C(&v47, "type");
        siri::dialogengine::PropertyBase::GetType(__p, v17);
        sub_10000C298(&v47, __p, 0);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        if (v49 < 0)
        {
          operator delete(v47.__locale_);
        }

        if (v15 == v18)
        {
          v31 = sub_1000027F4(&std::cout, "    }", 5);
          std::ios_base::getloc((v31 + *(*v31 - 24)));
          v32 = std::locale::use_facet(&v47, &std::ctype<char>::id);
          (v32->__vftable[2].~facet_0)(v32, 10);
          std::locale::~locale(&v47);
          std::ostream::put();
          std::ostream::flush();
          v33 = sub_1000027F4(&std::cout, "  ]", 3);
          std::ios_base::getloc((v33 + *(*v33 - 24)));
          v34 = std::locale::use_facet(&v47, &std::ctype<char>::id);
          (v34->__vftable[2].~facet_0)(v34, 10);
          std::locale::~locale(&v47);
          std::ostream::put();
          std::ostream::flush();
          v23 = "}";
          v24 = 1;
        }

        else
        {
          v23 = "    },";
          v24 = 6;
        }
      }

      else
      {
        if (a2 != 2)
        {
          siri::dialogengine::PropertyBase::GetName(&v47, *(v16 + 56));
          if ((v49 & 0x80u) == 0)
          {
            locale = &v47;
          }

          else
          {
            locale = v47.__locale_;
          }

          if ((v49 & 0x80u) == 0)
          {
            v36 = v49;
          }

          else
          {
            v36 = v48;
          }

          v37 = sub_1000027F4(&std::cout, locale, v36);
          v38 = sub_1000027F4(v37, ": ", 2);
          siri::dialogengine::PropertyBase::GetType(__p, v17);
          if ((v46 & 0x80u) == 0)
          {
            v39 = __p;
          }

          else
          {
            v39 = __p[0];
          }

          if ((v46 & 0x80u) == 0)
          {
            v40 = v46;
          }

          else
          {
            v40 = __p[1];
          }

          sub_1000027F4(v38, v39, v40);
          if (v46 < 0)
          {
            operator delete(__p[0]);
          }

          if (v49 < 0)
          {
            operator delete(v47.__locale_);
          }

          sub_10000143C(&v47, "description");
          siri::dialogengine::PropertyBase::GetDescription(__p, v17);
          sub_10000C5B4(&v47, __p);
          if (v46 < 0)
          {
            operator delete(__p[0]);
          }

          if (v49 < 0)
          {
            operator delete(v47.__locale_);
          }

          sub_10000143C(&v47, "semanticConcept");
          siri::dialogengine::ObjectProperty::GetSemanticConcept(__p, v17);
          sub_10000C5B4(&v47, __p);
          if (v46 < 0)
          {
            operator delete(__p[0]);
          }

          if (v49 < 0)
          {
            operator delete(v47.__locale_);
          }

          sub_10000143C(&v47, "deprecated");
          siri::dialogengine::PropertyBase::GetDeprecated(__p, v17);
          sub_10000C5B4(&v47, __p);
          if (v46 < 0)
          {
            operator delete(__p[0]);
          }

          if (v49 < 0)
          {
            operator delete(v47.__locale_);
          }

          v41 = &std::cout;
          goto LABEL_96;
        }

        if (!v15)
        {
          v19 = sub_1000027F4(&std::cout, "<parameters>", 12);
          std::ios_base::getloc((v19 + *(*v19 - 24)));
          v20 = std::locale::use_facet(&v47, &std::ctype<char>::id);
          (v20->__vftable[2].~facet_0)(v20, 10);
          std::locale::~locale(&v47);
          std::ostream::put();
          std::ostream::flush();
        }

        sub_1000027F4(&std::cout, "  <parameter", 12);
        sub_10000143C(&v47, "name");
        siri::dialogengine::PropertyBase::GetName(__p, v17);
        sub_10000C0B8(&v47, __p);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        if (v49 < 0)
        {
          operator delete(v47.__locale_);
        }

        sub_10000143C(&v47, "type");
        siri::dialogengine::PropertyBase::GetType(__p, v17);
        sub_10000C0B8(&v47, __p);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        if (v49 < 0)
        {
          operator delete(v47.__locale_);
        }

        sub_10000143C(&v47, "description");
        siri::dialogengine::PropertyBase::GetDescription(__p, v17);
        sub_10000C0B8(&v47, __p);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        if (v49 < 0)
        {
          operator delete(v47.__locale_);
        }

        sub_10000143C(&v47, "semanticConcept");
        siri::dialogengine::ObjectProperty::GetSemanticConcept(__p, v17);
        sub_10000C0B8(&v47, __p);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        if (v49 < 0)
        {
          operator delete(v47.__locale_);
        }

        sub_10000143C(&v47, "deprecated");
        siri::dialogengine::PropertyBase::GetDeprecated(__p, v17);
        sub_10000C0B8(&v47, __p);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        if (v49 < 0)
        {
          operator delete(v47.__locale_);
        }

        v21 = sub_1000027F4(&std::cout, "/>", 2);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(&v47, &std::ctype<char>::id);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(&v47);
        std::ostream::put();
        std::ostream::flush();
        if (v15 != v18)
        {
          goto LABEL_97;
        }

        v23 = "</parameters>";
        v24 = 13;
      }

      v41 = sub_1000027F4(&std::cout, v23, v24);
LABEL_96:
      std::ios_base::getloc((v41 + v41->__vftable[-2].~basic_ostream_0));
      v42 = std::locale::use_facet(&v47, &std::ctype<char>::id);
      (v42->__vftable[2].~facet_0)(v42, 10);
      std::locale::~locale(&v47);
      std::ostream::put();
      std::ostream::flush();
LABEL_97:
      ++v15;
      v13 = v50;
      v14 += 3;
    }

    while (v15 < 0xAAAAAAAAAAAAAAABLL * (v51 - v50));
  }

  if (a2 == 1 && !a1[2])
  {
    v43 = sub_1000027F4(&std::cout, "{}", 2);
    std::ios_base::getloc((v43 + *(*v43 - 24)));
    v44 = std::locale::use_facet(&v47, &std::ctype<char>::id);
    (v44->__vftable[2].~facet_0)(v44, 10);
    std::locale::~locale(&v47);
    std::ostream::put();
    std::ostream::flush();
  }

  v47.__locale_ = &v50;
  sub_100002260(&v47);
}

void sub_10000BF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::locale::~locale(&a16);
  __p = &a22;
  sub_100002260(&__p);
  _Unwind_Resume(a1);
}

void sub_10000C0B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    std::operator+<char>();
    v3 = std::string::append(&v15, "=");
    v4 = *&v3->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    siri::dialogengine::EncodeXmlString();
    if ((v14 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v6 = v14;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = std::string::append(&v16, v5, v6);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v17, "");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v19 = v9->__r_.__value_.__r.__words[2];
    v18 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v19 >= 0)
    {
      v11 = &v18;
    }

    else
    {
      v11 = v18;
    }

    if (v19 >= 0)
    {
      v12 = HIBYTE(v19);
    }

    else
    {
      v12 = *(&v18 + 1);
    }

    sub_1000027F4(&std::cout, v11, v12);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10000C21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000C298(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    std::operator+<char>();
    v5 = std::string::append(&v22, ": ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    sub_10000143C(&v18, "");
    sub_10000143C(&v16, "\\"");
    siri::dialogengine::StringReplace();
    if ((v21 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v8 = v21;
    }

    else
    {
      v8 = __p[1];
    }

    v9 = std::string::append(&v23, v7, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v24, "");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v26 = v11->__r_.__value_.__r.__words[2];
    *&v25[0].__locale_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v26 >= 0)
    {
      locale = v25;
    }

    else
    {
      locale = v25[0].__locale_;
    }

    if (v26 >= 0)
    {
      v14 = HIBYTE(v26);
    }

    else
    {
      v14 = v25[1].__locale_;
    }

    sub_1000027F4(&std::cout, locale, v14);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0].__locale_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v19 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
      if (!a3)
      {
        goto LABEL_31;
      }
    }

    else if (!a3)
    {
LABEL_31:
      std::ios_base::getloc((&std::cout + std::cout.__vftable[-2].~basic_ostream_0));
      v15 = std::locale::use_facet(v25, &std::ctype<char>::id);
      (v15->__vftable[2].~facet_0)(v15, 10);
      std::locale::~locale(v25);
      std::ostream::put();
      std::ostream::flush();
      return;
    }

    LOBYTE(v25[0].__locale_) = 44;
    sub_1000027F4(&std::cout, v25, 1);
    goto LABEL_31;
  }
}

void sub_10000C4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v38 - 41) < 0)
  {
    operator delete(*(v38 - 64));
  }

  if (*(v38 - 73) < 0)
  {
    operator delete(*(v38 - 96));
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000C5B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    std::operator+<char>();
    v4 = std::string::append(&v15, ": [");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = std::string::append(&v16, v7, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v17, "])");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v19 = v11->__r_.__value_.__r.__words[2];
    v18 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (v19 >= 0)
    {
      v13 = &v18;
    }

    else
    {
      v13 = v18;
    }

    if (v19 >= 0)
    {
      v14 = HIBYTE(v19);
    }

    else
    {
      v14 = *(&v18 + 1);
    }

    sub_1000027F4(&std::cout, v13, v14);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10000C6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000C75C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10000C75C(a1, *a2);
    sub_10000C75C(a1, a2[1]);
    sub_10000C7B8((a2 + 4));

    operator delete(a2);
  }
}

void sub_10000C7B8(uint64_t a1)
{
  sub_10000C808(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10000C808(uint64_t a1)
{
  sub_10000C844(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10000C844(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        sub_100005EB4(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_10000C88C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10000C8E0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10000C8E0(void ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 6;
    do
    {
      v6 = v4 + 3;
      sub_100002260(&v6);
      v6 = v4;
      sub_100002260(&v6);
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 3));
      }

      if (*(v4 - 25) < 0)
      {
        operator delete(*(v4 - 6));
      }

      v5 = v4 - 6;
      v4 -= 12;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

void sub_10000C970(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v6 = a2 - 3;
  v7 = a2 - 6;
  v192 = a2;
  v8 = a2 - 9;
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = v192 - v9;
    v11 = 0xAAAAAAAAAAAAAAABLL * (v192 - v9);
    v12 = v11 - 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return;
    }

    if (v11 == 2)
    {
      if (!sub_10000DB04(v6, v9))
      {
        return;
      }

LABEL_117:
      v129 = *v9;
      v195 = v9[2];
      v194 = v129;
      v130 = *v6;
      v9[2] = v6[2];
      *v9 = v130;
      v131 = v194;
      v132 = v195;
      goto LABEL_118;
    }

LABEL_9:
    if (v10 <= 575)
    {
      if (a4)
      {
        if (v9 != v192)
        {
          v133 = v9 + 3;
          if (v9 + 3 != v192)
          {
            v134 = 0;
            v135 = v9;
            do
            {
              v136 = v135;
              v135 = v133;
              if (sub_10000DB04(v133, v136))
              {
                v137 = *v135;
                v195 = v135[2];
                v194 = v137;
                v135[1] = 0;
                v135[2] = 0;
                *v135 = 0;
                v138 = v134;
                do
                {
                  v139 = (v9 + v138);
                  if (*(v9 + v138 + 47) < 0)
                  {
                    operator delete(v139[3]);
                  }

                  *(v139 + 3) = *v139;
                  v139[5] = v139[2];
                  *(v139 + 23) = 0;
                  *v139 = 0;
                  if (!v138)
                  {
                    v142 = v9;
                    goto LABEL_132;
                  }

                  v140 = sub_10000DB04(&v194, (v9 + v138 - 24));
                  v138 -= 24;
                }

                while (v140);
                v141 = *(v9 + v138 + 47);
                v142 = v9 + v138 + 24;
                if (v141 < 0)
                {
                  operator delete(*v142);
                }

LABEL_132:
                v143 = v194;
                *(v142 + 16) = v195;
                *v142 = v143;
              }

              v133 = v135 + 3;
              v134 += 24;
            }

            while (v135 + 3 != v192);
          }
        }
      }

      else if (v9 != v192)
      {
        v181 = v9 + 3;
        if (v9 + 3 != v192)
        {
          v182 = v9 - 3;
          do
          {
            v183 = a1;
            a1 = v181;
            if (sub_10000DB04(v181, v183))
            {
              v184 = *a1;
              v195 = a1[2];
              v194 = v184;
              a1[1] = 0;
              a1[2] = 0;
              *a1 = 0;
              v185 = v182;
              do
              {
                if (*(v185 + 71) < 0)
                {
                  operator delete(v185[6]);
                }

                *(v185 + 3) = *(v185 + 3);
                v185[8] = v185[5];
                *(v185 + 47) = 0;
                *(v185 + 24) = 0;
                v186 = sub_10000DB04(&v194, v185);
                v185 -= 3;
              }

              while (v186);
              if (*(v185 + 71) < 0)
              {
                operator delete(v185[6]);
              }

              v187 = v194;
              v185[8] = v195;
              *(v185 + 3) = v187;
            }

            v181 = a1 + 3;
            v182 += 3;
          }

          while (a1 + 3 != v192);
        }
      }

      return;
    }

    if (!a3)
    {
      if (v9 != v192)
      {
        v144 = v12 >> 1;
        v145 = v12 >> 1;
        do
        {
          v146 = v145;
          if (v144 >= v145)
          {
            v147 = (2 * v145) | 1;
            v148 = &a1[3 * v147];
            if (2 * v145 + 2 < v11 && sub_10000DB04(&a1[3 * v147], v148 + 3))
            {
              v148 += 3;
              v147 = 2 * v146 + 2;
            }

            v149 = &a1[3 * v146];
            if (!sub_10000DB04(v148, v149))
            {
              v150 = *v149;
              v195 = v149[2];
              v194 = v150;
              v149[1] = 0;
              v149[2] = 0;
              *v149 = 0;
              while (1)
              {
                v151 = v148;
                if (*(v149 + 23) < 0)
                {
                  operator delete(*v149);
                }

                v152 = *v148;
                v149[2] = v148[2];
                *v149 = v152;
                *(v148 + 23) = 0;
                *v148 = 0;
                if (v144 < v147)
                {
                  break;
                }

                v153 = (2 * v147) | 1;
                v148 = &a1[3 * v153];
                v147 = 2 * v147 + 2;
                if (v147 >= v11)
                {
                  v147 = v153;
                }

                else if (sub_10000DB04(&a1[3 * v153], v148 + 3))
                {
                  v148 += 3;
                }

                else
                {
                  v147 = v153;
                }

                v149 = v151;
                if (sub_10000DB04(v148, &v194))
                {
                  if (*(v151 + 23) < 0)
                  {
                    operator delete(*v151);
                  }

                  break;
                }
              }

              v154 = v194;
              v151[2] = v195;
              *v151 = v154;
            }
          }

          v145 = v146 - 1;
        }

        while (v146);
        v155 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
        v156 = v192;
        do
        {
          v157 = 0;
          v158 = v156;
          v191 = *a1;
          *&v196 = a1[1];
          *(&v196 + 7) = *(a1 + 15);
          v193 = *(a1 + 23);
          a1[1] = 0;
          a1[2] = 0;
          *a1 = 0;
          v159 = a1;
          do
          {
            v160 = v159;
            v161 = &v159[3 * v157];
            v159 = v161 + 3;
            v162 = 2 * v157;
            v157 = (2 * v157) | 1;
            v163 = v162 + 2;
            if (v162 + 2 < v155)
            {
              v164 = v161 + 6;
              if (sub_10000DB04(v161 + 3, v161 + 6))
              {
                v159 = v164;
                v157 = v163;
              }

              if (*(v160 + 23) < 0)
              {
                operator delete(*v160);
              }
            }

            v165 = *v159;
            v160[2] = v159[2];
            *v160 = v165;
            *(v159 + 23) = 0;
            *v159 = 0;
          }

          while (v157 <= ((v155 - 2) >> 1));
          v156 -= 3;
          if (v159 == v158 - 3)
          {
            *v159 = v191;
            v175 = *(&v196 + 7);
            v159[1] = v196;
            *(v159 + 15) = v175;
            *(v159 + 23) = v193;
          }

          else
          {
            v166 = *v156;
            v159[2] = *(v158 - 1);
            *v159 = v166;
            *(v158 - 3) = v191;
            v167 = v196;
            *(v158 - 9) = *(&v196 + 7);
            *(v158 - 2) = v167;
            *(v158 - 1) = v193;
            v168 = v159 - a1 + 24;
            if (v168 >= 25)
            {
              v169 = (-2 - 0x5555555555555555 * (v168 >> 3)) >> 1;
              v170 = &a1[3 * v169];
              if (sub_10000DB04(v170, v159))
              {
                v171 = *v159;
                v195 = v159[2];
                v194 = v171;
                v159[1] = 0;
                v159[2] = 0;
                *v159 = 0;
                while (1)
                {
                  v172 = v170;
                  if (*(v159 + 23) < 0)
                  {
                    operator delete(*v159);
                  }

                  v173 = *v170;
                  v159[2] = v170[2];
                  *v159 = v173;
                  *(v170 + 23) = 0;
                  *v170 = 0;
                  if (!v169)
                  {
                    break;
                  }

                  v169 = (v169 - 1) >> 1;
                  v170 = &a1[3 * v169];
                  v159 = v172;
                  if (!sub_10000DB04(v170, &v194))
                  {
                    if (*(v172 + 23) < 0)
                    {
                      operator delete(*v172);
                    }

                    break;
                  }
                }

                v174 = v194;
                v172[2] = v195;
                *v172 = v174;
              }
            }
          }
        }

        while (v155-- > 2);
      }

      return;
    }

    v13 = v11 >> 1;
    v14 = &v9[3 * v13];
    if (v10 >= 0xC01)
    {
      v15 = sub_10000DB04(&a1[3 * v13], a1);
      v16 = sub_10000DB04(v6, &a1[3 * v13]);
      if (v15)
      {
        if (v16)
        {
          v17 = *a1;
          v195 = a1[2];
          v194 = v17;
          v18 = *v6;
          a1[2] = v6[2];
          *a1 = v18;
          goto LABEL_26;
        }

        v35 = *a1;
        v195 = a1[2];
        v194 = v35;
        v36 = *v14;
        a1[2] = v14[2];
        *a1 = v36;
        v37 = v194;
        v14[2] = v195;
        *v14 = v37;
        if (sub_10000DB04(v6, &a1[3 * v13]))
        {
          v38 = *v14;
          v195 = v14[2];
          v194 = v38;
          v39 = *v6;
          v14[2] = v6[2];
          *v14 = v39;
LABEL_26:
          v40 = v194;
          v6[2] = v195;
          *v6 = v40;
        }
      }

      else if (v16)
      {
        v23 = *v14;
        v195 = v14[2];
        v194 = v23;
        v24 = *v6;
        v14[2] = v6[2];
        *v14 = v24;
        v25 = v194;
        v6[2] = v195;
        *v6 = v25;
        if (sub_10000DB04(&a1[3 * v13], a1))
        {
          v26 = *a1;
          v195 = a1[2];
          v194 = v26;
          v27 = *v14;
          a1[2] = v14[2];
          *a1 = v27;
          v28 = v194;
          v14[2] = v195;
          *v14 = v28;
        }
      }

      v41 = &a1[3 * v13 - 3];
      v42 = sub_10000DB04(v41, a1 + 3);
      v43 = sub_10000DB04(v7, v41);
      if (v42)
      {
        if (v43)
        {
          v44 = *(a1 + 3);
          v194 = v44;
          v45 = a1[5];
          v195 = v45;
          v46 = v7[2];
          *(a1 + 3) = *v7;
          a1[5] = v46;
          goto LABEL_38;
        }

        v194 = *(a1 + 3);
        v59 = v194;
        v195 = a1[5];
        v60 = v195;
        v61 = a1[3 * v13 - 1];
        *(a1 + 3) = *v41;
        a1[5] = v61;
        a1[3 * v13 - 1] = v60;
        *v41 = v59;
        if (sub_10000DB04(v7, v41))
        {
          v62 = *v41;
          v195 = a1[3 * v13 - 1];
          v194 = v62;
          v63 = *v7;
          a1[3 * v13 - 1] = v7[2];
          *v41 = v63;
          v44 = v194;
          v45 = v195;
LABEL_38:
          v7[2] = v45;
          *v7 = v44;
        }
      }

      else if (v43)
      {
        v47 = *v41;
        v195 = a1[3 * v13 - 1];
        v194 = v47;
        v48 = *v7;
        a1[3 * v13 - 1] = v7[2];
        *v41 = v48;
        v49 = v194;
        v7[2] = v195;
        *v7 = v49;
        if (sub_10000DB04(v41, a1 + 3))
        {
          v194 = *(a1 + 3);
          v50 = v194;
          v195 = a1[5];
          v51 = v195;
          v52 = a1[3 * v13 - 1];
          *(a1 + 3) = *v41;
          a1[5] = v52;
          a1[3 * v13 - 1] = v51;
          *v41 = v50;
        }
      }

      v64 = &a1[3 * v13];
      v65 = sub_10000DB04(v64 + 3, a1 + 6);
      v66 = sub_10000DB04(v8, v64 + 3);
      if (v65)
      {
        if (v66)
        {
          v67 = *(a1 + 3);
          v194 = v67;
          v68 = a1[8];
          v195 = v68;
          v69 = v8[2];
          *(a1 + 3) = *v8;
          a1[8] = v69;
          goto LABEL_47;
        }

        v194 = *(a1 + 3);
        v76 = v194;
        v195 = a1[8];
        v77 = v195;
        v78 = v64[5];
        *(a1 + 3) = *(v64 + 3);
        a1[8] = v78;
        v64[5] = v77;
        *(v64 + 3) = v76;
        if (sub_10000DB04(v8, v64 + 3))
        {
          v79 = *(v64 + 3);
          v195 = v64[5];
          v194 = v79;
          v80 = *v8;
          v64[5] = v8[2];
          *(v64 + 3) = v80;
          v67 = v194;
          v68 = v195;
LABEL_47:
          v8[2] = v68;
          *v8 = v67;
        }
      }

      else if (v66)
      {
        v70 = *(v64 + 3);
        v195 = v64[5];
        v194 = v70;
        v71 = *v8;
        v64[5] = v8[2];
        *(v64 + 3) = v71;
        v72 = v194;
        v8[2] = v195;
        *v8 = v72;
        if (sub_10000DB04(v64 + 3, a1 + 6))
        {
          v194 = *(a1 + 3);
          v73 = v194;
          v195 = a1[8];
          v74 = v195;
          v75 = v64[5];
          *(a1 + 3) = *(v64 + 3);
          a1[8] = v75;
          v64[5] = v74;
          *(v64 + 3) = v73;
        }
      }

      v81 = sub_10000DB04(v14, v41);
      v82 = sub_10000DB04(v64 + 3, v14);
      if (v81)
      {
        if (v82)
        {
          v83 = *v41;
          v195 = v41[2];
          v194 = v83;
          *v41 = *(v64 + 3);
          v41[2] = v64[5];
          goto LABEL_56;
        }

        v88 = *v41;
        v195 = v41[2];
        v194 = v88;
        *v41 = *v14;
        v41[2] = v14[2];
        v89 = v194;
        v14[2] = v195;
        *v14 = v89;
        if (sub_10000DB04(v64 + 3, v14))
        {
          v90 = *v14;
          v195 = v14[2];
          v194 = v90;
          *v14 = *(v64 + 3);
          v14[2] = v64[5];
LABEL_56:
          v91 = v194;
          v64[5] = v195;
          *(v64 + 3) = v91;
        }
      }

      else if (v82)
      {
        v84 = *v14;
        v195 = v14[2];
        v194 = v84;
        *v14 = *(v64 + 3);
        v14[2] = v64[5];
        v85 = v194;
        v64[5] = v195;
        *(v64 + 3) = v85;
        if (sub_10000DB04(v14, v41))
        {
          v86 = *v41;
          v195 = v41[2];
          v194 = v86;
          *v41 = *v14;
          v41[2] = v14[2];
          v87 = v194;
          v14[2] = v195;
          *v14 = v87;
        }
      }

      v92 = *a1;
      v195 = a1[2];
      v194 = v92;
      v93 = *v14;
      a1[2] = v14[2];
      *a1 = v93;
      v94 = v194;
      v14[2] = v195;
      *v14 = v94;
      goto LABEL_58;
    }

    v19 = sub_10000DB04(a1, &a1[3 * v13]);
    v20 = sub_10000DB04(v6, a1);
    if (!v19)
    {
      if (v20)
      {
        v29 = *a1;
        v195 = a1[2];
        v194 = v29;
        v30 = *v6;
        a1[2] = v6[2];
        *a1 = v30;
        v31 = v194;
        v6[2] = v195;
        *v6 = v31;
        if (sub_10000DB04(a1, &a1[3 * v13]))
        {
          v32 = *v14;
          v195 = v14[2];
          v194 = v32;
          v33 = *a1;
          v14[2] = a1[2];
          *v14 = v33;
          v34 = v194;
          a1[2] = v195;
          *a1 = v34;
        }
      }

      goto LABEL_58;
    }

    if (v20)
    {
      v21 = *v14;
      v195 = v14[2];
      v194 = v21;
      v22 = *v6;
      v14[2] = v6[2];
      *v14 = v22;
    }

    else
    {
      v53 = *v14;
      v195 = v14[2];
      v194 = v53;
      v54 = *a1;
      v14[2] = a1[2];
      *v14 = v54;
      v55 = v194;
      a1[2] = v195;
      *a1 = v55;
      if (!sub_10000DB04(v6, a1))
      {
        goto LABEL_58;
      }

      v56 = *a1;
      v195 = a1[2];
      v194 = v56;
      v57 = *v6;
      a1[2] = v6[2];
      *a1 = v57;
    }

    v58 = v194;
    v6[2] = v195;
    *v6 = v58;
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || sub_10000DB04(a1 - 3, a1))
    {
      v95 = 0;
      v96 = *a1;
      v197 = a1[2];
      v196 = v96;
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      do
      {
        v97 = sub_10000DB04(&a1[v95 + 3], &v196);
        v95 += 3;
      }

      while (v97);
      v98 = &a1[v95];
      v99 = v192;
      if (v95 == 3)
      {
        v99 = v192;
        do
        {
          if (v98 >= v99)
          {
            break;
          }

          v99 -= 3;
        }

        while (!sub_10000DB04(v99, &v196));
      }

      else
      {
        do
        {
          v99 -= 3;
        }

        while (!sub_10000DB04(v99, &v196));
      }

      v9 = &a1[v95];
      if (v98 < v99)
      {
        v100 = v99;
        do
        {
          v101 = *v9;
          v195 = v9[2];
          v194 = v101;
          v102 = *v100;
          v9[2] = v100[2];
          *v9 = v102;
          v103 = v194;
          v100[2] = v195;
          *v100 = v103;
          do
          {
            v9 += 3;
          }

          while (sub_10000DB04(v9, &v196));
          do
          {
            v100 -= 3;
          }

          while (!sub_10000DB04(v100, &v196));
        }

        while (v9 < v100);
      }

      v104 = (v9 - 3);
      if (v9 - 3 == a1)
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*v104);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v105 = *v104;
        a1[2] = *(v9 - 1);
        *a1 = v105;
        *(v9 - 1) = 0;
        *(v9 - 24) = 0;
      }

      v106 = v196;
      *(v9 - 1) = v197;
      *v104 = v106;
      if (v98 < v99)
      {
        goto LABEL_83;
      }

      v107 = sub_10000DD78(a1, v9 - 3);
      if (sub_10000DD78(v9, v192))
      {
        a2 = v9 - 3;
        if (!v107)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v107)
      {
LABEL_83:
        sub_10000C970(a1, v9 - 3, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v108 = *a1;
      v197 = a1[2];
      v196 = v108;
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      if (sub_10000DB04(&v196, v6))
      {
        v9 = a1;
        do
        {
          v9 += 3;
        }

        while (!sub_10000DB04(&v196, v9));
      }

      else
      {
        v109 = a1 + 3;
        do
        {
          v9 = v109;
          if (v109 >= v192)
          {
            break;
          }

          v110 = sub_10000DB04(&v196, v109);
          v109 = v9 + 3;
        }

        while (!v110);
      }

      v111 = v192;
      if (v9 < v192)
      {
        v111 = v192;
        do
        {
          v111 -= 3;
        }

        while (sub_10000DB04(&v196, v111));
      }

      while (v9 < v111)
      {
        v112 = *v9;
        v195 = v9[2];
        v194 = v112;
        v113 = *v111;
        v9[2] = v111[2];
        *v9 = v113;
        v114 = v194;
        v111[2] = v195;
        *v111 = v114;
        do
        {
          v9 += 3;
        }

        while (!sub_10000DB04(&v196, v9));
        do
        {
          v111 -= 3;
        }

        while (sub_10000DB04(&v196, v111));
      }

      v115 = (v9 - 3);
      if (v9 - 3 == a1)
      {
        if (*(v9 - 1) < 0)
        {
          operator delete(*v115);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v116 = *v115;
        a1[2] = *(v9 - 1);
        *a1 = v116;
        *(v9 - 1) = 0;
        *(v9 - 24) = 0;
      }

      a4 = 0;
      v117 = v196;
      *(v9 - 1) = v197;
      *v115 = v117;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      sub_10000DBBC(v9, v9 + 3, v9 + 6, v6);
      return;
    }

    if (v11 == 5)
    {
      sub_10000DBBC(v9, v9 + 3, v9 + 6, v9 + 9);
      if (sub_10000DB04(v6, v9 + 9))
      {
        v194 = *(v9 + 9);
        v119 = v194;
        v195 = v9[11];
        v120 = v195;
        v121 = v6[2];
        *(v9 + 9) = *v6;
        v9[11] = v121;
        v6[2] = v120;
        *v6 = v119;
        if (sub_10000DB04(v9 + 9, v9 + 6))
        {
          v122 = v9[8];
          v123 = *(v9 + 3);
          *(v9 + 3) = *(v9 + 9);
          v9[8] = v9[11];
          *(v9 + 9) = v123;
          v9[11] = v122;
          if (sub_10000DB04(v9 + 6, v9 + 3))
          {
            v124 = v9[5];
            v125 = *(v9 + 3);
            *(v9 + 3) = *(v9 + 3);
            v9[5] = v9[8];
            *(v9 + 3) = v125;
            v9[8] = v124;
            v126 = sub_10000DB04(v9 + 3, v9);
LABEL_181:
            if (v126)
            {
              v180 = *v9;
              v195 = v9[2];
              v194 = v180;
              *v9 = *(v9 + 3);
              v9[2] = v9[5];
              *(v9 + 3) = v194;
              v9[5] = v195;
            }
          }
        }
      }

      return;
    }

    goto LABEL_9;
  }

  v127 = sub_10000DB04(v9 + 3, v9);
  v128 = sub_10000DB04(v6, v9 + 3);
  if (v127)
  {
    if (v128)
    {
      goto LABEL_117;
    }

    v188 = *v9;
    v195 = v9[2];
    v194 = v188;
    *v9 = *(v9 + 3);
    v9[2] = v9[5];
    *(v9 + 3) = v194;
    v9[5] = v195;
    if (!sub_10000DB04(v6, v9 + 3))
    {
      return;
    }

    v131 = *(v9 + 3);
    v194 = v131;
    v132 = v9[5];
    v195 = v132;
    v189 = v6[2];
    *(v9 + 3) = *v6;
    v9[5] = v189;
LABEL_118:
    v6[2] = v132;
    *v6 = v131;
    return;
  }

  if (v128)
  {
    v194 = *(v9 + 3);
    v177 = v194;
    v195 = v9[5];
    v178 = v195;
    v179 = v6[2];
    *(v9 + 3) = *v6;
    v9[5] = v179;
    v6[2] = v178;
    *v6 = v177;
    v126 = sub_10000DB04(v9 + 3, v9);
    goto LABEL_181;
  }
}

void sub_10000DA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10000DB04(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (*(a1 + 23) < 0)
  {
    v4 = *a1;
  }

  siri::dialogengine::StringToLower();
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
  }

  siri::dialogengine::StringToLower();
  v7 = sub_10000E1C4(&v11, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  return v7;
}

void sub_10000DBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10000DBBC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = sub_10000DB04(a2, a1);
  v9 = sub_10000DB04(a3, a2);
  if (v8)
  {
    if (v9)
    {
      v10 = a1[2];
      v11 = *a1;
      v12 = a3[2];
      *a1 = *a3;
      a1[2] = v12;
LABEL_9:
      *a3 = v11;
      a3[2] = v10;
      goto LABEL_10;
    }

    v19 = a1[2];
    v20 = *a1;
    v21 = a2[2];
    *a1 = *a2;
    a1[2] = v21;
    *a2 = v20;
    a2[2] = v19;
    if (sub_10000DB04(a3, a2))
    {
      v10 = a2[2];
      v11 = *a2;
      v22 = a3[2];
      *a2 = *a3;
      a2[2] = v22;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v13 = a2[2];
    v14 = *a2;
    v15 = a3[2];
    *a2 = *a3;
    a2[2] = v15;
    *a3 = v14;
    a3[2] = v13;
    if (sub_10000DB04(a2, a1))
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
    }
  }

LABEL_10:
  if (sub_10000DB04(a4, a3))
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = a4[2];
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    a4[2] = v24;
    if (sub_10000DB04(a3, a2))
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if (sub_10000DB04(a2, a1))
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}