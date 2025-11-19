void *sub_2438A963C(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

uint64_t sub_2438A9710(uint64_t a1)
{
  v1 = *(*a1 + 16);
  *a1 = *(*a1 + 8);
  return v1;
}

void *sub_2438A9730(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = &unk_28569D800;
  result[1] = a2;
  result[2] = a3;
  result[3] = 0;
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  result[4] = v4;
  return result;
}

BOOL sub_2438A9760(void *a1, void *a2, _DWORD *a3)
{
  v3 = a1[3];
  v4 = a1[2] - v3;
  if (a1[4] < v4)
  {
    v4 = a1[4];
  }

  if (v4)
  {
    *a2 = a1[1] + v3;
    a1[3] = v4 + v3;
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  result = v4 != 0;
  *a3 = v5;
  return result;
}

uint64_t sub_2438A97A8(uint64_t result, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    if (*(result + 32) < a2 || (v2 = *(result + 24), v2 < a2))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Can't backup that much!");
      __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }

    *(result + 24) = v2 - a2;
  }

  return result;
}

BOOL sub_2438A9834(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = v3 >= v2;
  v5 = v3 == v2;
  if (v3 >= v2)
  {
    v3 = *(a1 + 16);
  }

  *(a1 + 24) = v3;
  return v5 || !v4;
}

uint64_t sub_2438A9868(uint64_t result, uint64_t a2)
{
  v2 = *(*a2 + 16);
  *a2 = *(*a2 + 8);
  *(result + 24) = v2;
  return result;
}

uint64_t sub_2438A987C(uint64_t a1)
{
  sub_2438A9A08(&v6);
  v2 = sub_2438AA2A8(&v6, "SeekableArrayInputStream ", 25);
  v3 = MEMORY[0x245D431D0](v2, *(a1 + 24));
  v4 = sub_2438AA2A8(v3, " of ", 4);
  MEMORY[0x245D431D0](v4, *(a1 + 16));
  std::stringbuf::str();
  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v10);
}

void sub_2438A99F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438A9B74(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2438A9A08(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_2438AA734((a1 + 1), 16);
  return a1;
}

void sub_2438A9B4C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x245D432B0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438A9B74(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x245D432B0](a1 + 112);
  return a1;
}

void *sub_2438A9C94(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  *a1 = &unk_28569D850;
  a1[1] = a5;
  a1[2] = a2;
  a1[3] = a3;
  v8 = 0x40000;
  if (a6)
  {
    v8 = a6;
  }

  if (v8 >= a4)
  {
    v8 = a4;
  }

  a1[4] = a4;
  a1[5] = v8;
  a1[6] = 0;
  v9 = a1 + 6;
  a1[7] = 0;
  v10 = operator new(0x28uLL);
  sub_2438DECF0(v10, a5);
  v11 = *v9;
  *v9 = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  a1[8] = 0;
  return a1;
}

void sub_2438A9D54(_Unwind_Exception *a1)
{
  operator delete(v1);
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    sub_24398933C(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_2438A9D88(void *a1)
{
  *a1 = &unk_28569D850;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_2438A9DF8(void *__p)
{
  *__p = &unk_28569D850;
  v2 = __p[6];
  __p[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

BOOL sub_2438A9E78(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = *(*(a1 + 48) + 16) + *(*(a1 + 48) + 24) - v6;
LABEL_8:
    *a2 = v7;
    goto LABEL_9;
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v8 >= *(a1 + 32) - v10)
  {
    v6 = *(a1 + 32) - v10;
  }

  else
  {
    v6 = *(a1 + 40);
  }

  sub_2438DECAC(v9, v6);
  if (v6)
  {
    (*(**(a1 + 16) + 32))(*(a1 + 16), *(*(a1 + 48) + 16), v6, *(a1 + 56) + *(a1 + 24));
    v7 = *(*(a1 + 48) + 16);
    goto LABEL_8;
  }

LABEL_9:
  *(a1 + 56) += v6;
  *(a1 + 64) = 0;
  *a3 = v6;
  return v6 != 0;
}

void *sub_2438A9F40(void *result, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "can't backup negative distances");
    goto LABEL_10;
  }

  if (result[8])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "can't backup unless we just called Next");
LABEL_10:
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  if (result[5] < a2 || (v2 = result[7], v3 = v2 >= a2, v4 = v2 - a2, !v3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "can't backup that far");
    goto LABEL_10;
  }

  result[7] = v4;
  result[8] = a2;
  return result;
}

BOOL sub_2438AA014(void *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = a1[7] + a2;
  v3 = a1[4];
  if (v3 >= v2)
  {
    v4 = a1[7] + a2;
  }

  else
  {
    v4 = a1[4];
  }

  a1[7] = v4;
  a1[8] = 0;
  return v2 < v3;
}

void *sub_2438AA04C(void *result, uint64_t a2)
{
  v2 = *(*a2 + 16);
  *a2 = *(*a2 + 8);
  result[7] = v2;
  v3 = result[4];
  if (v2 > v3)
  {
    result[7] = v3;
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "seek too far");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  result[8] = 0;
  return result;
}

uint64_t sub_2438AA0D8(uint64_t a1)
{
  sub_2438A9A08(&v11);
  v2 = (*(**(a1 + 16) + 40))(*(a1 + 16));
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  v6 = sub_2438AA2A8(&v11, v4, v5);
  v7 = sub_2438AA2A8(v6, " from ", 6);
  v8 = MEMORY[0x245D431D0](v7, *(a1 + 24));
  v9 = sub_2438AA2A8(v8, " for ", 5);
  MEMORY[0x245D431D0](v9, *(a1 + 32));
  std::stringbuf::str();
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v15);
}

void sub_2438AA294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438A9B74(va);
  _Unwind_Resume(a1);
}

void *sub_2438AA2A8(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245D43150](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
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

    if (!sub_2438AA450(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245D43160](v13);
  return a1;
}

void sub_2438AA3E8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x245D43160](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2438AA3C8);
}

uint64_t sub_2438AA450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
      sub_2438AA5EC(__p, v12, __c);
      v13 = v18 >= 0 ? __p : __p[0];
      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (v18 < 0)
      {
        operator delete(__p[0]);
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

void sub_2438AA5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438AA5EC(void *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2438AA68C();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__len | 7) + 1;
    }

    v6 = operator new(v7);
    __b[1] = __len;
    __b[2] = v7 | 0x8000000000000000;
    *__b = v6;
  }

  else
  {
    *(__b + 23) = __len;
    v6 = __b;
    if (!__len)
    {
      goto LABEL_10;
    }
  }

  memset(v6, __c, __len);
LABEL_10:
  *(v6 + __len) = 0;
  return __b;
}

void sub_2438AA6A4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2438AA700(exception, a1);
  __cxa_throw(exception, off_278DDACB0, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2438AA700(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_2438AA734(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245D43260](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_2438AA7F0(a1);
  return a1;
}

void sub_2438AA7C8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_2438AA7F0(uint64_t a1)
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

void *sub_2438AA8F8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  *a1 = &unk_28569D8F8;
  a1[1] = a3;
  a1[2] = 0;
  a1[3] = a5;
  v8 = operator new(0x28uLL);
  sub_2438DECF0(v8, a2);
  v9 = a1[2];
  a1[2] = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v8 = a1[2];
  }

  sub_2438DECF4(v8, a4);
  return a1;
}

void sub_2438AA9A4(_Unwind_Exception *a1)
{
  operator delete(v2);
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_2438AA9F4(void *a1)
{
  *a1 = &unk_28569D8F8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *sub_2438AAA64(void *a1)
{
  *a1 = &unk_28569D8F8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_2438AAAD4(void *__p)
{
  *__p = &unk_28569D8F8;
  v2 = __p[2];
  __p[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

uint64_t sub_2438AAB54(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = 0;
  v8 = a1 + 16;
  v6 = *(a1 + 16);
  v7 = *(v8 + 8);
  *a3 = v7;
  v9 = *(v6 + 24);
  v10 = v9 + v7;
  do
  {
    v5 += *(v6 + 32);
  }

  while (v5 < v10);
  sub_2438DECF4(v6, v5);
  sub_2438DECAC(*(a1 + 16), v10);
  *a2 = *(*(a1 + 16) + 16) + v9;
  return 1;
}

void sub_2438AABC4(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = *(a1 + 16);
    v3 = *(v2 + 24);
    if (v3 < a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Can't backup that much!");
      __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
    }

    v4 = v3 - a2;

    sub_2438DECAC(v2, v4);
  }
}

void sub_2438AAC70()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2438DCACC(exception, "WriteAliasedRaw is not supported.");
  __cxa_throw(exception, &unk_2856A0958, std::logic_error::~logic_error);
}

uint64_t sub_2438AACD4(uint64_t a1)
{
  sub_2438A9A08(&v6);
  v2 = sub_2438AA2A8(&v6, "BufferedOutputStream ", 21);
  v3 = MEMORY[0x245D431D0](v2, *(*(a1 + 16) + 24));
  v4 = sub_2438AA2A8(v3, " of ", 4);
  MEMORY[0x245D431D0](v4, *(*(a1 + 16) + 32));
  std::stringbuf::str();
  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v10);
}

void sub_2438AAE54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438A9B74(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438AAE74(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 24);
  (*(**(a1 + 8) + 32))(*(a1 + 8), *(v2 + 16), v3);
  sub_2438DECAC(*(a1 + 16), 0);
  return v3;
}

void *sub_2438AAED4(void *result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    v6 = 0;
    v7 = *(result + 4);
    do
    {
      v8 = *(v5 + 5);
      if (v7 == v8)
      {
        if (((*(**v5 + 16))(*v5, v5 + 1, v5 + 20) & 1) == 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Failed to allocate buffer.");
          __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
        }

        v7 = 0;
        *(v5 + 4) = 0;
        v8 = *(v5 + 5);
      }

      v9 = v8 - v7;
      if (v3 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v3;
      }

      result = memcpy((v5[1] + v7), (a2 + v6), v10);
      v7 = *(v5 + 4) + v10;
      *(v5 + 4) = v7;
      v6 += v10;
      v3 -= v10;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2438AB014(void *a1)
{
  (*(**a1 + 24))(*a1, (*(a1 + 5) - *(a1 + 4)));
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(**a1 + 72);

  return v2();
}

uint64_t sub_2438AB09C(int *a1, uint64_t a2)
{
  v4 = (*(**a1 + 64))(*a1);
  v5 = a1[4];
  if ((*(**a1 + 80))())
  {
    (*(*a2 + 16))(a2, v4);
  }

  else
  {
    v5 = v4 + v5 - a1[5];
  }

  v6 = *(*a2 + 16);

  return v6(a2, v5);
}

void sub_2438AB1A8()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438ABF30(qword_27ED96958);

  sub_243967B44(sub_24396221C, qword_27ED96958);
}

void sub_2438AB214()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438AC5A0(qword_27ED96A98);

  sub_243967B44(sub_24396221C, qword_27ED96A98);
}

void sub_2438AB280()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438ACB9C(qword_27ED96A58);

  sub_243967B44(sub_24396221C, qword_27ED96A58);
}

void sub_2438AB2EC()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438AD698(&unk_27ED96B40);

  sub_243967B44(sub_24396221C, &unk_27ED96B40);
}

void sub_2438AB358()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438ADE50(qword_27ED969D0);

  sub_243967B44(sub_24396221C, qword_27ED969D0);
}

void sub_2438AB3C4()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438AE740(qword_27ED96B90);

  sub_243967B44(sub_24396221C, qword_27ED96B90);
}

void sub_2438AB430()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438AECE8(&unk_27ED968B8);

  sub_243967B44(sub_24396221C, &unk_27ED968B8);
}

void sub_2438AB49C()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438AF5A0(qword_27ED96B70);

  sub_243967B44(sub_24396221C, qword_27ED96B70);
}

void sub_2438AB508()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438AFA50(qword_27ED96888);

  sub_243967B44(sub_24396221C, qword_27ED96888);
}

void sub_2438AB574()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B0018(&unk_27ED96AC8);
  sub_243967B44(sub_24396221C, &unk_27ED96AC8);
  qword_27ED96AE0 = qword_27ED96958;
  unk_27ED96AE8 = qword_27ED96A98;
  qword_27ED96AF0 = qword_27ED96A58;
  unk_27ED96AF8 = &unk_27ED96B40;
  qword_27ED96B00 = qword_27ED969D0;
  unk_27ED96B08 = qword_27ED96B90;
  qword_27ED96B10 = qword_27ED96B70;
  unk_27ED96B18 = &unk_27ED968B8;
  qword_27ED96B20 = qword_27ED96888;
}

void sub_2438AB630()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B16B0(&unk_27ED96F18);
  sub_243967B44(sub_24396221C, &unk_27ED96F18);
  qword_27ED96F48 = &unk_27ED96AC8;
}

void sub_2438AB69C()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B1F4C(&unk_27ED96F50);

  sub_243967B44(sub_24396221C, &unk_27ED96F50);
}

void sub_2438AB708()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B2568(&unk_27ED96F80);

  sub_243967B44(sub_24396221C, &unk_27ED96F80);
}

void sub_2438AB774()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B2EF4(&unk_27ED96FB8);

  sub_243967B44(sub_24396221C, &unk_27ED96FB8);
}

void sub_2438AB7E0()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B34C4(qword_27ED96DD8);

  sub_243967B44(sub_24396221C, qword_27ED96DD8);
}

void sub_2438AB84C()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B3CF4(&unk_27ED96BB0);

  sub_243967B44(sub_24396221C, &unk_27ED96BB0);
}

void sub_2438AB8B8()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B453C(&unk_27ED96840);

  sub_243967B44(sub_24396221C, &unk_27ED96840);
}

void sub_2438AB924()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B4D1C(&unk_27ED96C00);

  sub_243967B44(sub_24396221C, &unk_27ED96C00);
}

void sub_2438AB990()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B5A34(qword_27ED96C68);

  sub_243967B44(sub_24396221C, qword_27ED96C68);
}

void sub_2438AB9FC()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B60D4(&unk_27ED96EA8);

  sub_243967B44(sub_24396221C, &unk_27ED96EA8);
}

void sub_2438ABA68()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B6FFC(&unk_27ED968F8);

  sub_243967B44(sub_24396221C, &unk_27ED968F8);
}

void sub_2438ABAD4()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B7B6C(qword_27ED96A00);

  sub_243967B44(sub_24396221C, qword_27ED96A00);
}

void sub_2438ABB40()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B806C(&unk_27ED96A28);

  sub_243967B44(sub_24396221C, &unk_27ED96A28);
}

void sub_2438ABBAC()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B8638(&unk_27ED96D58);

  sub_243967B44(sub_24396221C, &unk_27ED96D58);
}

void sub_2438ABC18()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B8C08(&unk_27ED96D88);

  sub_243967B44(sub_24396221C, &unk_27ED96D88);
}

void sub_2438ABC84()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B96A0(qword_27ED96BD8);

  sub_243967B44(sub_24396221C, qword_27ED96BD8);
}

void sub_2438ABCF0()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438B9E28(&unk_27ED96988);

  sub_243967B44(sub_24396221C, &unk_27ED96988);
}

void sub_2438ABD5C()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438BA888(&unk_27ED96CF0);

  sub_243967B44(sub_24396221C, &unk_27ED96CF0);
}

void sub_2438ABDC8()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438BB644(&unk_27ED96E00);
  sub_243967B44(sub_24396221C, &unk_27ED96E00);
  qword_27ED96E78 = &unk_27ED96CF0;
}

void sub_2438ABE34()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438BCC18(&unk_27ED96C90);

  sub_243967B44(sub_24396221C, &unk_27ED96C90);
}

void sub_2438ABEA0()
{
  sub_243967248(3006001, 3006001, "/Library/Caches/com.apple.xbs/Binaries/CloudKit/install/TempContent/Objects/CloudKit.build/ORC.build/DerivedSources/cmake/c++/src/orc_proto.pb.cc");
  sub_2438BDB14(&unk_27ED96FE8);
  sub_243967B44(sub_24396221C, &unk_27ED96FE8);
  qword_27ED97000 = &unk_27ED96C90;
  unk_27ED97008 = &unk_27ED96E00;
}

void *sub_2438ABF30(void *a1)
{
  *a1 = &unk_28569D988;
  a1[1] = 0;
  a1[2] = 0;
  if (atomic_load_explicit(dword_281AF3E00, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3E00);
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  return a1;
}

uint64_t sub_2438ABFB8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569D988;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2438BFC64((a1 + 8), v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  return a1;
}

void *sub_2438AC04C(void *a1)
{
  *a1 = &unk_28569D988;
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438AC090(uint64_t *a1)
{
  *a1 = &unk_28569D988;
  sub_2438BF788(a1 + 1);

  operator delete(a1);
}

void sub_2438AC0E4(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v2 = *(a1 + 8);
  v1 = a1 + 8;
  *(v1 + 8) = 0;
  if (v2)
  {
    sub_2438BFCC0(v1);
  }
}

uint64_t sub_2438AC10C(uint64_t a1, char **a2)
{
  v4 = *(a1 + 8);
  v23 = (a1 + 8);
  v24 = 0uLL;
  v25 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v25 = *(v5 + 16);
    v24 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v22, &v24);
  sub_2439657D8(v21, v22, 0);
  do
  {
    while (1)
    {
      v7 = *a2;
      if (*a2 >= a2[1])
      {
        v8 = 0;
LABEL_9:
        v10 = sub_2439655D8(a2, v8);
        v9 = v10 | ((v10 - 1 < 0x7F) << 32);
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_10;
      }

      v8 = *v7;
      if (*v7 < 1)
      {
        goto LABEL_9;
      }

      *a2 = v7 + 1;
      v9 = v8 | 0x100000000;
      if ((v9 & 0x100000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_10:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_30;
        }

        *(a1 + 16) |= 4u;
        v13 = *a2;
        if (*a2 < a2[1] && (*v13 & 0x80000000) == 0)
        {
          v14 = *v13;
          v15 = (a1 + 40);
          goto LABEL_28;
        }

        v14 = sub_2439650E0(a2);
        if ((v17 & 1) == 0)
        {
          goto LABEL_41;
        }

        v15 = (a1 + 40);
        goto LABEL_29;
      }

      if (v11 != 2)
      {
        break;
      }

      if (v9 != 16)
      {
        goto LABEL_30;
      }

      *(a1 + 16) |= 2u;
      v13 = *a2;
      if (*a2 < a2[1] && (*v13 & 0x80000000) == 0)
      {
        v14 = *v13;
        v15 = (a1 + 32);
        goto LABEL_28;
      }

      v14 = sub_2439650E0(a2);
      if ((v16 & 1) == 0)
      {
        goto LABEL_41;
      }

      v15 = (a1 + 32);
LABEL_29:
      *v15 = -(v14 & 1) ^ (v14 >> 1);
    }

    if (v11 == 1 && v9 == 8)
    {
      *(a1 + 16) |= 1u;
      v13 = *a2;
      if (*a2 < a2[1] && (*v13 & 0x80000000) == 0)
      {
        v14 = *v13;
        v15 = (a1 + 24);
LABEL_28:
        *a2 = v13 + 1;
        goto LABEL_29;
      }

      v14 = sub_2439650E0(a2);
      if ((v18 & 1) == 0)
      {
        break;
      }

      v15 = (a1 + 24);
      goto LABEL_29;
    }

LABEL_30:
    if (!v9)
    {
      v19 = 1;
      goto LABEL_40;
    }
  }

  while (sub_243967FF0(a2, v9, v21));
LABEL_41:
  v19 = 0;
LABEL_40:
  sub_243965918(v21);
  sub_2438BF88C(&v23);
  return v19;
}

void sub_2438AC344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438AC36C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_243968AF4(1, *(a1 + 24), a2);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_243968AF4(2, *(a1 + 32), a2);
  if ((v4 & 4) != 0)
  {
LABEL_4:
    sub_243968AF4(3, *(a1 + 40), a2);
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  if (v5)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = v7[1];
  }

  return sub_243965944(a2, v6, v8);
}

uint64_t sub_2438AC438(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  v4 = *(a1 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v3 += ((9 * (__clz((2 * *(a1 + 32)) ^ (*(a1 + 32) >> 63) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v4 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 += ((9 * (__clz((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 63) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v4 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v4 & 4) != 0)
  {
LABEL_9:
    v3 += ((9 * (__clz((2 * *(a1 + 40)) ^ (*(a1 + 40) >> 63) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_10:
  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_2438AC508(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v3[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v5;
          return result;
        }

LABEL_7:
        v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return result;
}

void *sub_2438AC5A0(void *a1)
{
  *a1 = &unk_28569DA28;
  a1[1] = 0;
  a1[2] = 0;
  if (atomic_load_explicit(dword_281AF3E90, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3E90);
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  return a1;
}

uint64_t sub_2438AC628(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569DA28;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2438BFC64((a1 + 8), v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  return a1;
}

void *sub_2438AC6BC(void *a1)
{
  *a1 = &unk_28569DA28;
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438AC700(uint64_t *a1)
{
  *a1 = &unk_28569DA28;
  sub_2438BF788(a1 + 1);

  operator delete(a1);
}

void sub_2438AC754(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v2 = *(a1 + 8);
  v1 = a1 + 8;
  *(v1 + 8) = 0;
  if (v2)
  {
    sub_2438BFCC0(v1);
  }
}

BOOL sub_2438AC77C(uint64_t a1, char **a2)
{
  v4 = *(a1 + 8);
  v23 = (a1 + 8);
  v24 = 0uLL;
  v25 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v25 = *(v5 + 16);
    v24 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v22, &v24);
  sub_2439657D8(v21, v22, 0);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = *a2;
          if (*a2 >= a2[1])
          {
            break;
          }

          v8 = *v7;
          if (*v7 < 1)
          {
            goto LABEL_9;
          }

          *a2 = v7 + 1;
          v9 = v8 | 0x100000000;
          if ((v9 & 0x100000000) != 0)
          {
            goto LABEL_10;
          }

LABEL_28:
          v19 = v9 == 0;
          if (!v9 || !sub_243967FF0(a2, v9, v21))
          {
            goto LABEL_38;
          }
        }

        v8 = 0;
LABEL_9:
        v10 = sub_2439655D8(a2, v8);
        v9 = v10 | ((v10 - 1 < 0x7F) << 32);
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_10:
        v11 = v9 >> 3;
        if (v9 >> 3 != 3)
        {
          break;
        }

        if (v9 != 25)
        {
          goto LABEL_28;
        }

        *(a1 + 16) |= 4u;
        v26 = 0;
        v17 = *a2;
        if ((*(a2 + 2) - *a2) < 8)
        {
          if (!sub_24396504C(a2, &v26))
          {
            goto LABEL_37;
          }

          v18 = v26;
        }

        else
        {
          v18 = *v17;
          *a2 = v17 + 8;
        }

        *(a1 + 40) = v18;
      }

      if (v11 != 2)
      {
        break;
      }

      if (v9 != 17)
      {
        goto LABEL_28;
      }

      *(a1 + 16) |= 2u;
      v26 = 0;
      v15 = *a2;
      if ((*(a2 + 2) - *a2) < 8)
      {
        if (!sub_24396504C(a2, &v26))
        {
          goto LABEL_37;
        }

        v16 = v26;
      }

      else
      {
        v16 = *v15;
        *a2 = v15 + 8;
      }

      *(a1 + 32) = v16;
    }

    if (v11 != 1 || v9 != 9)
    {
      goto LABEL_28;
    }

    *(a1 + 16) |= 1u;
    v26 = 0;
    v13 = *a2;
    if ((*(a2 + 2) - *a2) >= 8)
    {
      v14 = *v13;
      *a2 = v13 + 8;
      goto LABEL_19;
    }

    if (!sub_24396504C(a2, &v26))
    {
      break;
    }

    v14 = v26;
LABEL_19:
    *(a1 + 24) = v14;
  }

LABEL_37:
  v19 = 0;
LABEL_38:
  sub_243965918(v21);
  sub_2438BF88C(&v23);
  return v19;
}

void sub_2438AC9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438AC9D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_243968CD0(1, a2, *(a1 + 24));
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_243968CD0(2, a2, *(a1 + 32));
  if ((v4 & 4) != 0)
  {
LABEL_4:
    sub_243968CD0(3, a2, *(a1 + 40));
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  if (v5)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = v7[1];
  }

  return sub_243965944(a2, v6, v8);
}

uint64_t sub_2438ACAA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  v4 = *(a1 + 16);
  v5 = v3 + 9;
  if ((v4 & 1) == 0)
  {
    v5 = v3;
  }

  if ((v4 & 2) != 0)
  {
    v5 += 9;
  }

  if ((v4 & 4) != 0)
  {
    v5 += 9;
  }

  if ((v4 & 7) != 0)
  {
    v3 = v5;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_2438ACB04(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v3[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v5;
          return result;
        }

LABEL_7:
        v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return result;
}

void *sub_2438ACB9C(void *a1)
{
  *a1 = &unk_28569DAC8;
  a1[1] = 0;
  a1[2] = 0;
  if (atomic_load_explicit(dword_281AF3E78, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3E78);
  }

  a1[3] = &qword_27ED97020;
  a1[4] = &qword_27ED97020;
  a1[5] = &qword_27ED97020;
  a1[6] = &qword_27ED97020;
  a1[7] = 0;
  return a1;
}

void *sub_2438ACC30(void *a1, uint64_t a2)
{
  *a1 = &unk_28569DAC8;
  a1[1] = 0;
  v4 = *(a2 + 16);
  a1[2] = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_2438BFC64(a1 + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
    v4 = *(a2 + 16);
  }

  a1[3] = &qword_27ED97020;
  if (v4)
  {
    v6 = *(a2 + 24);
    if (v6 != &qword_27ED97020)
    {
      sub_2438BF924(a1 + 3, v6);
      v4 = *(a2 + 16);
    }
  }

  a1[4] = &qword_27ED97020;
  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 32);
    if (v7 != &qword_27ED97020)
    {
      sub_2438BF924(a1 + 4, v7);
      v4 = *(a2 + 16);
    }
  }

  a1[5] = &qword_27ED97020;
  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 40);
    if (v8 != &qword_27ED97020)
    {
      sub_2438BF924(a1 + 5, v8);
      v4 = *(a2 + 16);
    }
  }

  a1[6] = &qword_27ED97020;
  if ((v4 & 8) != 0)
  {
    v9 = *(a2 + 48);
    if (v9 != &qword_27ED97020)
    {
      sub_2438BF924(a1 + 6, v9);
    }
  }

  a1[7] = *(a2 + 56);
  return a1;
}

void sub_2438ACD44(void *a1)
{
  v2 = a1[3];
  if (v2 != &qword_27ED97020 && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v4 = a1[4];
  if (v4 != &qword_27ED97020 && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete(v4);
  }

  v6 = a1[5];
  if (v6 != &qword_27ED97020 && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete(v6);
  }

  v8 = a1[6];
  if (v8 != &qword_27ED97020 && v8 != 0)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete(v8);
  }
}

void *sub_2438ACE30(void *a1)
{
  *a1 = &unk_28569DAC8;
  v2 = a1 + 1;
  sub_2438ACD44(a1);
  sub_2438BF788(v2);
  return a1;
}

void sub_2438ACE80(uint64_t *a1)
{
  *a1 = &unk_28569DAC8;
  v2 = a1 + 1;
  sub_2438ACD44(a1);
  sub_2438BF788(v2);

  operator delete(a1);
}

void sub_2438ACEE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if ((v1 & 1) == 0)
  {
    if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v3 = *(a1 + 32);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    v5 = *(a1 + 48);
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }

    goto LABEL_22;
  }

  v2 = *(a1 + 24);
  if (*(v2 + 23) < 0)
  {
    **v2 = 0;
    *(v2 + 8) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_4:
  if ((v1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v4 = *(a1 + 40);
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  *v4 = 0;
  *(v4 + 23) = 0;
  if ((v1 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v7 = *(a1 + 8);
  v6 = a1 + 8;
  *(v6 + 48) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {
    sub_2438BFCC0(v6);
  }
}

uint64_t sub_2438ACFC0(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v22 = (a1 + 8);
  v23 = 0uLL;
  v24 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v24 = *(v5 + 16);
    v23 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v21, &v23);
  sub_2439657D8(v20, v21, 0);
  while (1)
  {
    while (1)
    {
      v7 = *a2;
      if (*a2 >= a2[1])
      {
        v8 = 0;
      }

      else
      {
        v8 = *v7;
        if (*v7 >= 1)
        {
          *a2 = (v7 + 1);
          v9 = v8 | 0x100000000;
          if ((v9 & 0x100000000) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_10;
        }
      }

      v10 = sub_2439655D8(a2, v8);
      v9 = v10 | ((v10 - 1 < 0x7F) << 32);
      if ((v9 & 0x100000000) == 0)
      {
        goto LABEL_39;
      }

LABEL_10:
      v11 = v9 >> 3;
      if (v9 >> 3 > 2)
      {
        break;
      }

      if (v11 == 1)
      {
        if (v9 != 10)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 1u;
        v12 = *(a1 + 24);
        if (v12 == &qword_27ED97020)
        {
          sub_2438BF924((a1 + 24), &qword_27ED97020);
          v12 = *(a1 + 24);
        }
      }

      else
      {
        if (v11 != 2 || v9 != 18)
        {
LABEL_39:
          if (!v9)
          {
            v18 = 1;
            goto LABEL_46;
          }

          v16 = sub_243967FF0(a2, v9, v20);
          goto LABEL_41;
        }

        *(a1 + 16) |= 2u;
        v12 = *(a1 + 32);
        if (v12 == &qword_27ED97020)
        {
          sub_2438BF924((a1 + 32), &qword_27ED97020);
          v12 = *(a1 + 32);
        }
      }

LABEL_38:
      v16 = sub_243969704(a2, v12);
LABEL_41:
      if (!v16)
      {
        goto LABEL_47;
      }
    }

    if (v11 != 3)
    {
      if (v11 == 4)
      {
        if (v9 != 34)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 4u;
        v12 = *(a1 + 40);
        if (v12 == &qword_27ED97020)
        {
          sub_2438BF924((a1 + 40), &qword_27ED97020);
          v12 = *(a1 + 40);
        }
      }

      else
      {
        if (v11 != 5 || v9 != 42)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 8u;
        v12 = *(a1 + 48);
        if (v12 == &qword_27ED97020)
        {
          sub_2438BF924((a1 + 48), &qword_27ED97020);
          v12 = *(a1 + 48);
        }
      }

      goto LABEL_38;
    }

    if (v9 != 24)
    {
      goto LABEL_39;
    }

    *(a1 + 16) |= 0x10u;
    v14 = *a2;
    if (*a2 < a2[1])
    {
      v15 = *v14;
      if ((v15 & 0x8000000000000000) == 0)
      {
        *a2 = (v14 + 1);
        goto LABEL_44;
      }
    }

    v15 = sub_2439650E0(a2);
    if ((v17 & 1) == 0)
    {
      break;
    }

LABEL_44:
    *(a1 + 56) = -(v15 & 1) ^ (v15 >> 1);
  }

LABEL_47:
  v18 = 0;
LABEL_46:
  sub_243965918(v20);
  sub_2438BF88C(&v22);
  return v18;
}

void sub_2438AD260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438AD288(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_243969034(1, *(a1 + 24), a2);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_243969034(2, *(a1 + 32), a2);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  sub_243968AF4(3, *(a1 + 56), a2);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_23:
  sub_243969034(4, *(a1 + 40), a2);
  if ((v4 & 8) != 0)
  {
LABEL_6:
    sub_243969034(5, *(a1 + 48), a2);
  }

LABEL_7:
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  if (v5)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = v7[1];
  }

  return sub_243965944(a2, v6, v8);
}

uint64_t sub_2438AD384(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  v4 = *(a1 + 16);
  if ((v4 & 0x1F) == 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v6 = *(a1 + 24);
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 2) == 0)
    {
LABEL_8:
      if ((v4 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 23);
  v11 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v11 = v10;
  }

  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    v15 = *(a1 + 48);
    v16 = *(v15 + 23);
    v17 = *(v15 + 8);
    if ((v16 & 0x80u) == 0)
    {
      v17 = v16;
    }

    v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_19:
  v12 = *(a1 + 40);
  v13 = *(v12 + 23);
  v14 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v13;
  }

  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v4 & 0x10) != 0)
  {
LABEL_11:
    v3 += ((9 * (__clz((2 * *(a1 + 56)) ^ (*(a1 + 56) >> 63) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_12:
  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_2438AD504(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x1F) != 0)
  {
    if (v5)
    {
      result = v3 + 1;
      data = v3[1].__r_.__value_.__l.__data_;
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v7 = *(a2 + 24);
      if (data != v7)
      {
        if (data == &qword_27ED97020)
        {
          result = sub_2438BF924(result, v7);
          if ((v5 & 2) == 0)
          {
            goto LABEL_15;
          }

LABEL_9:
          result = (v3 + 32);
          size = v3[1].__r_.__value_.__l.__size_;
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
          v9 = *(a2 + 32);
          if (size != v9)
          {
            if (size == &qword_27ED97020)
            {
              result = sub_2438BF924(result, v9);
            }

            else
            {
              result = std::string::operator=(size, v9);
            }
          }

LABEL_15:
          if ((v5 & 4) != 0)
          {
            result = (v3 + 40);
            v10 = v3[1].__r_.__value_.__r.__words[2];
            LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
            v11 = *(a2 + 40);
            if (v10 != v11)
            {
              if (v10 == &qword_27ED97020)
              {
                result = sub_2438BF924(result, v11);
                if ((v5 & 8) != 0)
                {
LABEL_20:
                  result = v3 + 2;
                  v12 = v3[2].__r_.__value_.__l.__data_;
                  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
                  v13 = *(a2 + 48);
                  if (v12 != v13)
                  {
                    if (v12 == &qword_27ED97020)
                    {
                      result = sub_2438BF924(result, v13);
                    }

                    else
                    {
                      result = std::string::operator=(v12, v13);
                    }
                  }
                }

LABEL_26:
                if ((v5 & 0x10) != 0)
                {
                  v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
                }

                LODWORD(v3->__r_.__value_.__r.__words[2]) |= v5;
                return result;
              }

              result = std::string::operator=(v10, v11);
            }
          }

          if ((v5 & 8) != 0)
          {
            goto LABEL_20;
          }

          goto LABEL_26;
        }

        result = std::string::operator=(data, v7);
      }
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2438AD698(uint64_t a1)
{
  *a1 = &unk_28569DB68;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  if (atomic_load_explicit(dword_281AF3F00, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3F00);
  }

  return a1;
}

void sub_2438AD710(_Unwind_Exception *a1)
{
  sub_2438AD72C(v1 + 24);
  sub_2438BF788(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2438AD72C(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if (!*v2)
      {
        operator delete(v2);
      }
    }
  }

  return a1;
}

uint64_t sub_2438AD770(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569DB68;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    sub_2438BFA30((a1 + 24), v5);
    v6 = *(a1 + 32);
    *(a1 + 24) += *(a2 + 24);
    memcpy((v6 + 8), (*(a2 + 32) + 8), 8 * *(a2 + 24));
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    sub_2438BFC64(v4, v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  return a1;
}

void sub_2438AD828(_Unwind_Exception *a1)
{
  sub_2438AD72C(v2 + 24);
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438AD84C(uint64_t a1)
{
  *a1 = &unk_28569DB68;
  if (*(a1 + 28) >= 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      if (!*v2)
      {
        operator delete(v2);
      }
    }
  }

  sub_2438BF788((a1 + 8));
  return a1;
}

void sub_2438AD8B8(uint64_t a1)
{
  v1 = sub_2438AD84C(a1);

  operator delete(v1);
}

void sub_2438AD8E0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = a1 + 8;
  *(v1 + 16) = 0;
  *(v1 + 8) = 0;
  if (v2)
  {
    sub_2438BFCC0(v1);
  }
}

uint64_t sub_2438AD8F8(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v25 = (a1 + 8);
  v26 = 0uLL;
  v27 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v27 = *(v5 + 16);
    v26 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v24, &v26);
  sub_2439657D8(v23, v24, 0);
  while (1)
  {
    while (1)
    {
      v7 = *a2;
      if (*a2 >= a2[1])
      {
        v8 = 0;
      }

      else
      {
        v8 = *v7;
        if (*v7 >= 1)
        {
          *a2 = (v7 + 1);
          v9 = v8 | 0x100000000;
          if ((v9 & 0x100000000) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_10;
        }
      }

      v10 = sub_2439655D8(a2, v8);
      v9 = v10 | ((v10 - 1 < 0x7F) << 32);
      if ((v9 & 0x100000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_10:
      if ((v9 & 0xFFFFFFF8) != 8)
      {
LABEL_16:
        if (!v9)
        {
          v21 = 1;
          goto LABEL_34;
        }

        goto LABEL_17;
      }

      if (v9 == 8)
      {
        v13 = sub_243989360(1, 0xAu, a2, a1 + 24);
        goto LABEL_19;
      }

      if (v9 == 10)
      {
        break;
      }

LABEL_17:
      v13 = sub_243967FF0(a2, v9, v23);
LABEL_19:
      if ((v13 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v11 = *a2;
    if (*a2 >= a2[1])
    {
      break;
    }

    v12 = *v11;
    if ((v12 & 0x80000000) != 0)
    {
      break;
    }

    *a2 = (v11 + 1);
LABEL_22:
    v14 = sub_243989BA4(a2, v12);
    while (sub_243964994(a2) >= 1)
    {
      v15 = *a2;
      if (*a2 >= a2[1] || (v16 = *v15, (v16 & 0x8000000000000000) != 0))
      {
        v17 = sub_2439650E0(a2);
        if ((v18 & 1) == 0)
        {
          goto LABEL_35;
        }

        v16 = v17;
      }

      else
      {
        *a2 = (v15 + 1);
      }

      v19 = *(a1 + 24);
      if (v19 == *(a1 + 28))
      {
        sub_2438BFA30((a1 + 24), v19 + 1);
        v19 = *(a1 + 24);
      }

      v20 = *(a1 + 32) + 8 * v19;
      *(a1 + 24) = v19 + 1;
      *(v20 + 8) = v16;
    }

    sub_2439648F0(a2, v14);
  }

  v12 = sub_243965380(a2);
  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

LABEL_35:
  v21 = 0;
LABEL_34:
  sub_243965918(v23);
  sub_2438BF88C(&v25);
  return v21;
}

void sub_2438ADAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438ADB28(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) >= 1)
  {
    if (*(a2 + 16) < 5)
    {
      sub_243965B70(a2, 0xAu);
      v4 = *(a2 + 16);
    }

    else
    {
      *(*(a2 + 8))++ = 10;
      v4 = *(a2 + 16) - 1;
      *(a2 + 16) = v4;
    }

    v5 = *(a1 + 40);
    if (v4 < 5)
    {
      sub_243965B70(a2, v5);
    }

    else
    {
      v6 = *(a2 + 8);
      if (v5 < 0x80)
      {
        v8 = *(a1 + 40);
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = *(a2 + 8);
        do
        {
          *v7++ = v5 | 0x80;
          v8 = v5 >> 7;
          v9 = v5 >> 14;
          v5 >>= 7;
        }

        while (v9);
      }

      *v7 = v8;
      v10 = v7 - v6 + 1;
      *(a2 + 8) += v10;
      *(a2 + 16) -= v10;
    }

    v11 = *(a1 + 24);
    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = *(*(a1 + 32) + 8 * i + 8);
        if (*(a2 + 16) < 10)
        {
          sub_243965BCC(a2, v13);
        }

        else
        {
          v14 = *(a2 + 8);
          if (v13 < 0x80)
          {
            v16 = *(*(a1 + 32) + 8 * i + 8);
            v15 = *(a2 + 8);
          }

          else
          {
            v15 = *(a2 + 8);
            do
            {
              *v15++ = v13 | 0x80;
              v16 = v13 >> 7;
              v17 = v13 >> 14;
              v13 >>= 7;
            }

            while (v17);
          }

          *v15 = v16;
          v18 = v15 - v14 + 1;
          *(a2 + 8) += v18;
          *(a2 + 16) -= v18;
        }
      }
    }
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v20 = (v19 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v20 = &qword_27ED97020;
  }

  if (v20[23] < 0)
  {
    v20 = *v20;
  }

  if (v19)
  {
    v21 = (v19 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v21 = &qword_27ED97020;
  }

  v22 = *(v21 + 23);
  if (v22 < 0)
  {
    v22 = v21[1];
  }

  return sub_243965944(a2, v20, v22);
}

uint64_t sub_2438ADD00(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v3 = &qword_27ED97020;
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = sub_243969840((a1 + 24));
  v6 = 11;
  v7 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v5 >= 0)
  {
    v6 = v7;
  }

  v8 = v6 + v4;
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (!v5)
  {
    v8 = v4;
  }

  *(a1 + 40) = v9;
  result = v8 + v5;
  *(a1 + 20) = result;
  return result;
}

std::string *sub_2438ADD94(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    data_low = SLODWORD(v3[1].__r_.__value_.__l.__data_);
    v6 = v3 + 1;
    sub_2438BFA30(v6, data_low + v5);
    v8 = v6->__r_.__value_.__l.__size_ + 8 * data_low;
    LODWORD(v6->__r_.__value_.__l.__data_) += *(a2 + 24);
    v9 = 8 * *(a2 + 24);
    v10 = (*(a2 + 32) + 8);

    return memcpy((v8 + 8), v10, v9);
  }

  return result;
}

void *sub_2438ADE50(void *a1)
{
  *a1 = &unk_28569DC08;
  a1[1] = 0;
  a1[2] = 0;
  if (atomic_load_explicit(dword_281AF3E30, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3E30);
  }

  a1[3] = &qword_27ED97020;
  a1[4] = &qword_27ED97020;
  a1[5] = &qword_27ED97020;
  return a1;
}

void *sub_2438ADEE0(void *a1, uint64_t a2)
{
  *a1 = &unk_28569DC08;
  a1[1] = 0;
  v4 = *(a2 + 16);
  a1[2] = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_2438BFC64(a1 + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
    v4 = *(a2 + 16);
  }

  a1[3] = &qword_27ED97020;
  if (v4)
  {
    v6 = *(a2 + 24);
    if (v6 != &qword_27ED97020)
    {
      sub_2438BF924(a1 + 3, v6);
      v4 = *(a2 + 16);
    }
  }

  a1[4] = &qword_27ED97020;
  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 32);
    if (v7 != &qword_27ED97020)
    {
      sub_2438BF924(a1 + 4, v7);
      v4 = *(a2 + 16);
    }
  }

  a1[5] = &qword_27ED97020;
  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 40);
    if (v8 != &qword_27ED97020)
    {
      sub_2438BF924(a1 + 5, v8);
    }
  }

  return a1;
}

void sub_2438ADFCC(void *a1)
{
  v2 = a1[3];
  if (v2 != &qword_27ED97020 && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v4 = a1[4];
  if (v4 != &qword_27ED97020 && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete(v4);
  }

  v6 = a1[5];
  if (v6 != &qword_27ED97020 && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete(v6);
  }
}

void *sub_2438AE090(void *a1)
{
  *a1 = &unk_28569DC08;
  v2 = a1 + 1;
  sub_2438ADFCC(a1);
  sub_2438BF788(v2);
  return a1;
}

void sub_2438AE0E0(uint64_t *a1)
{
  *a1 = &unk_28569DC08;
  v2 = a1 + 1;
  sub_2438ADFCC(a1);
  sub_2438BF788(v2);

  operator delete(a1);
}

void sub_2438AE140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    goto LABEL_17;
  }

  if (v1)
  {
    v2 = *(a1 + 24);
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v4 = *(a1 + 40);
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

    goto LABEL_17;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_10:
  v3 = *(a1 + 32);
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v1 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  *v3 = 0;
  *(v3 + 23) = 0;
  if ((v1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {
    sub_2438BFCC0(v5);
  }
}

uint64_t sub_2438AE1EC(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v19 = (a1 + 8);
  v20 = 0uLL;
  v21 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v21 = *(v5 + 16);
    v20 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v18, &v20);
  sub_2439657D8(v17, v18, 0);
  while (1)
  {
    v7 = *a2;
    if (*a2 >= a2[1])
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7;
      if (*v7 >= 1)
      {
        *a2 = (v7 + 1);
        v9 = v8 | 0x100000000;
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_10;
      }
    }

    v10 = sub_2439655D8(a2, v8);
    v9 = v10 | ((v10 - 1 < 0x7F) << 32);
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_10:
    v11 = v9 >> 3;
    if (v9 >> 3 != 3)
    {
      break;
    }

    if (v9 != 26)
    {
      goto LABEL_28;
    }

    *(a1 + 16) |= 4u;
    v13 = *(a1 + 40);
    if (v13 == &qword_27ED97020)
    {
      sub_2438BF924((a1 + 40), &qword_27ED97020);
      v13 = *(a1 + 40);
    }

LABEL_27:
    v14 = sub_243969704(a2, v13);
LABEL_30:
    if (!v14)
    {
      v15 = 0;
      goto LABEL_33;
    }
  }

  if (v11 == 2)
  {
    if (v9 != 18)
    {
      goto LABEL_28;
    }

    *(a1 + 16) |= 2u;
    v13 = *(a1 + 32);
    if (v13 == &qword_27ED97020)
    {
      sub_2438BF924((a1 + 32), &qword_27ED97020);
      v13 = *(a1 + 32);
    }

    goto LABEL_27;
  }

  if (v11 == 1 && v9 == 10)
  {
    *(a1 + 16) |= 1u;
    v13 = *(a1 + 24);
    if (v13 == &qword_27ED97020)
    {
      sub_2438BF924((a1 + 24), &qword_27ED97020);
      v13 = *(a1 + 24);
    }

    goto LABEL_27;
  }

LABEL_28:
  if (v9)
  {
    v14 = sub_243967FF0(a2, v9, v17);
    goto LABEL_30;
  }

  v15 = 1;
LABEL_33:
  sub_243965918(v17);
  sub_2438BF88C(&v19);
  return v15;
}

void sub_2438AE3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438AE400(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_243969034(1, *(a1 + 24), a2);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_243969034(2, *(a1 + 32), a2);
  if ((v4 & 4) != 0)
  {
LABEL_4:
    sub_243969034(3, *(a1 + 40), a2);
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  if (v5)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = v7[1];
  }

  return sub_243965944(a2, v6, v8);
}

uint64_t sub_2438AE4CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  v4 = *(a1 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      v9 = *(a1 + 24);
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v4 & 2) == 0)
      {
LABEL_8:
        if ((v4 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_9;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 4) != 0)
    {
LABEL_9:
      v5 = *(a1 + 40);
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_12:
  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_2438AE5D8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      result = v3 + 1;
      data = v3[1].__r_.__value_.__l.__data_;
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      v7 = *(a2 + 24);
      if (data != v7)
      {
        if (data == &qword_27ED97020)
        {
          result = sub_2438BF924(result, v7);
          if ((v5 & 2) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_9;
        }

        result = std::string::operator=(data, v7);
      }
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_9:
    result = (v3 + 32);
    size = v3[1].__r_.__value_.__l.__size_;
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
    v9 = *(a2 + 32);
    if (size != v9)
    {
      if (size == &qword_27ED97020)
      {
        result = sub_2438BF924(result, v9);
        if ((v5 & 4) == 0)
        {
          return result;
        }
      }

      else
      {
        result = std::string::operator=(size, v9);
        if ((v5 & 4) == 0)
        {
          return result;
        }
      }

      goto LABEL_15;
    }

LABEL_14:
    if ((v5 & 4) == 0)
    {
      return result;
    }

LABEL_15:
    v11 = v3[1].__r_.__value_.__r.__words[2];
    v10 = &v3[1].__r_.__value_.__r.__words[2];
    result = v11;
    *(v10 - 6) |= 4u;
    v12 = *(a2 + 40);
    if (v11 != v12)
    {
      if (result == &qword_27ED97020)
      {

        return sub_2438BF924(v10, v12);
      }

      else
      {

        return std::string::operator=(result, v12);
      }
    }
  }

  return result;
}

void *sub_2438AE740(void *a1)
{
  *a1 = &unk_28569DCA8;
  a1[1] = 0;
  a1[2] = 0;
  if (atomic_load_explicit(dword_281AF3F30, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3F30);
  }

  a1[3] = 0;
  return a1;
}

uint64_t sub_2438AE7C4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569DCA8;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2438BFC64((a1 + 8), v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void *sub_2438AE850(void *a1)
{
  *a1 = &unk_28569DCA8;
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438AE894(uint64_t *a1)
{
  *a1 = &unk_28569DCA8;
  sub_2438BF788(a1 + 1);

  operator delete(a1);
}

void sub_2438AE8E8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  v1 = a1 + 8;
  *(v1 + 8) = 0;
  if (v2)
  {
    sub_2438BFCC0(v1);
  }
}

uint64_t sub_2438AE90C(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v21 = (a1 + 8);
  v22 = 0uLL;
  v23 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v23 = *(v5 + 16);
    v22 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v20, &v22);
  sub_2439657D8(v19, v20, 0);
  do
  {
    while (1)
    {
      v7 = *a2;
      if (*a2 >= a2[1])
      {
        v8 = 0;
LABEL_9:
        v10 = sub_2439655D8(a2, v8);
        v9 = v10 | ((v10 - 1 < 0x7F) << 32);
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_10;
      }

      v8 = *v7;
      if (*v7 < 1)
      {
        goto LABEL_9;
      }

      *a2 = (v7 + 1);
      v9 = v8 | 0x100000000;
      if ((v9 & 0x100000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_10:
      if (v9 >> 3 != 2)
      {
        break;
      }

      if (v9 != 16)
      {
        goto LABEL_24;
      }

      *(a1 + 16) |= 2u;
      v12 = *a2;
      if (*a2 >= a2[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = *v12;
        v14 = (a1 + 28);
        if ((*v12 & 0x80000000) == 0)
        {
LABEL_23:
          *a2 = (v12 + 1);
          goto LABEL_31;
        }
      }

      v16 = sub_24396529C(a2, v13);
      if (v16 < 0)
      {
        goto LABEL_34;
      }

      v13 = v16;
      v14 = (a1 + 28);
LABEL_31:
      *v14 = -(v13 & 1) ^ (v13 >> 1);
    }

    if (v9 >> 3 == 1 && v9 == 8)
    {
      *(a1 + 16) |= 1u;
      v12 = *a2;
      if (*a2 >= a2[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = *v12;
        v14 = (a1 + 24);
        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }
      }

      v15 = sub_24396529C(a2, v13);
      v13 = v15;
      if (v15 < 0)
      {
        break;
      }

      v14 = (a1 + 24);
      goto LABEL_31;
    }

LABEL_24:
    if (!v9)
    {
      v17 = 1;
      goto LABEL_33;
    }
  }

  while (sub_243967FF0(a2, v9, v19));
LABEL_34:
  v17 = 0;
LABEL_33:
  sub_243965918(v19);
  sub_2438BF88C(&v21);
  return v17;
}

void sub_2438AEAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438AEB1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2439689D0(1, *(a1 + 24), a2);
  }

  if ((v4 & 2) != 0)
  {
    sub_2439689D0(2, *(a1 + 28), a2);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  if (v5)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = v7[1];
  }

  return sub_243965944(a2, v6, v8);
}

uint64_t sub_2438AEBC8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  v4 = *(a1 + 16);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      v3 += ((9 * (__clz((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v4 & 2) != 0)
    {
      v3 += ((9 * (__clz((2 * *(a1 + 28)) ^ (*(a1 + 28) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_2438AEC68(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      LODWORD(v3[1].__r_.__value_.__l.__data_) = *(a2 + 24);
    }

    if ((v5 & 2) != 0)
    {
      HIDWORD(v3[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    }

    LODWORD(v3->__r_.__value_.__r.__words[2]) |= v5;
  }

  return result;
}

uint64_t sub_2438AECE8(uint64_t a1)
{
  *a1 = &unk_28569DD48;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_281AF3DD0, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3DD0);
  }

  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return a1;
}

uint64_t sub_2438AED78(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569DD48;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2438BFC64((a1 + 8), v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  return a1;
}

void *sub_2438AEE14(void *a1)
{
  *a1 = &unk_28569DD48;
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438AEE58(uint64_t *a1)
{
  *a1 = &unk_28569DD48;
  sub_2438BF788(a1 + 1);

  operator delete(a1);
}

void sub_2438AEEAC(uint64_t a1)
{
  if ((*(a1 + 16) & 0x3F) != 0)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  v2 = *(a1 + 8);
  v1 = a1 + 8;
  *(v1 + 8) = 0;
  if (v2)
  {
    sub_2438BFCC0(v1);
  }
}

uint64_t sub_2438AEEDC(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v35 = (a1 + 8);
  v36 = 0uLL;
  v37 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v37 = *(v5 + 16);
    v36 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v34, &v36);
  sub_2439657D8(v33, v34, 0);
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v7 = *a2;
            if (*a2 >= a2[1])
            {
              v8 = 0;
LABEL_9:
              v10 = sub_2439655D8(a2, v8);
              v9 = v10 | ((v10 - 1 < 0x7F) << 32);
              if ((v9 & 0x100000000) == 0)
              {
                goto LABEL_44;
              }

              goto LABEL_10;
            }

            v8 = *v7;
            if (*v7 < 1)
            {
              goto LABEL_9;
            }

            *a2 = (v7 + 1);
            v9 = v8 | 0x100000000;
            if ((v9 & 0x100000000) == 0)
            {
              goto LABEL_44;
            }

LABEL_10:
            v11 = v9 >> 3;
            if (v9 >> 3 <= 3)
            {
              break;
            }

            if (v11 == 4)
            {
              if (v9 != 32)
              {
                goto LABEL_44;
              }

              *(a1 + 16) |= 8u;
              v19 = *a2;
              if (*a2 >= a2[1] || (v20 = *v19, (v20 & 0x8000000000000000) != 0))
              {
                v20 = sub_2439650E0(a2);
                if ((v26 & 1) == 0)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                *a2 = (v19 + 1);
              }

              *(a1 + 48) = -(v20 & 1) ^ (v20 >> 1);
            }

            else if (v11 == 5)
            {
              if (v9 != 40)
              {
                goto LABEL_44;
              }

              *(a1 + 16) |= 0x10u;
              v23 = *a2;
              if (*a2 >= a2[1])
              {
                v24 = 0;
              }

              else
              {
                v24 = *v23;
                if ((*v23 & 0x80000000) == 0)
                {
                  *a2 = (v23 + 1);
                  goto LABEL_60;
                }
              }

              v30 = sub_24396529C(a2, v24);
              v24 = v30;
              if (v30 < 0)
              {
                goto LABEL_63;
              }

LABEL_60:
              *(a1 + 56) = v24;
            }

            else
            {
              if (v11 != 6 || v9 != 48)
              {
                goto LABEL_44;
              }

              *(a1 + 16) |= 0x20u;
              v15 = *a2;
              if (*a2 >= a2[1])
              {
                v16 = 0;
              }

              else
              {
                v16 = *v15;
                if ((*v15 & 0x80000000) == 0)
                {
                  *a2 = (v15 + 1);
                  goto LABEL_57;
                }
              }

              v29 = sub_24396529C(a2, v16);
              v16 = v29;
              if (v29 < 0)
              {
                goto LABEL_63;
              }

LABEL_57:
              *(a1 + 60) = v16;
            }
          }

          if (v11 != 1)
          {
            break;
          }

          if (v9 != 8)
          {
            goto LABEL_44;
          }

          *(a1 + 16) |= 1u;
          v17 = *a2;
          if (*a2 >= a2[1] || (v18 = *v17, (v18 & 0x8000000000000000) != 0))
          {
            v18 = sub_2439650E0(a2);
            if ((v25 & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          else
          {
            *a2 = (v17 + 1);
          }

          *(a1 + 24) = -(v18 & 1) ^ (v18 >> 1);
        }

        if (v11 != 2)
        {
          break;
        }

        if (v9 != 16)
        {
          goto LABEL_44;
        }

        *(a1 + 16) |= 2u;
        v21 = *a2;
        if (*a2 >= a2[1] || (v22 = *v21, (v22 & 0x8000000000000000) != 0))
        {
          v22 = sub_2439650E0(a2);
          if ((v28 & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        else
        {
          *a2 = (v21 + 1);
        }

        *(a1 + 32) = -(v22 & 1) ^ (v22 >> 1);
      }

      if (v11 != 3 || v9 != 24)
      {
        break;
      }

      *(a1 + 16) |= 4u;
      v13 = *a2;
      if (*a2 >= a2[1] || (v14 = *v13, (v14 & 0x8000000000000000) != 0))
      {
        v14 = sub_2439650E0(a2);
        if ((v27 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        *a2 = (v13 + 1);
      }

      *(a1 + 40) = -(v14 & 1) ^ (v14 >> 1);
    }

LABEL_44:
    if (!v9)
    {
      v31 = 1;
      goto LABEL_62;
    }
  }

  while (sub_243967FF0(a2, v9, v33));
LABEL_63:
  v31 = 0;
LABEL_62:
  sub_243965918(v33);
  sub_2438BF88C(&v35);
  return v31;
}

void sub_2438AF22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438AF254(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_243968AF4(1, *(a1 + 24), a2);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_243968AF4(2, *(a1 + 32), a2);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  sub_243968AF4(3, *(a1 + 40), a2);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  sub_243968AF4(4, *(a1 + 48), a2);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_25:
  sub_243968670(5, *(a1 + 56), a2);
  if ((v4 & 0x20) != 0)
  {
LABEL_7:
    sub_243968670(6, *(a1 + 60), a2);
  }

LABEL_8:
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  if (v5)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = v7[1];
  }

  return sub_243965944(a2, v6, v8);
}

uint64_t sub_2438AF368(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  v4 = *(a1 + 16);
  if ((v4 & 0x3F) == 0)
  {
    goto LABEL_16;
  }

  if (v4)
  {
    v3 += ((9 * (__clz((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 63) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v4 & 2) == 0)
    {
LABEL_8:
      if ((v4 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_8;
  }

  v3 += ((9 * (__clz((2 * *(a1 + 32)) ^ (*(a1 + 32) >> 63) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v3 += ((9 * (__clz((2 * *(a1 + 48)) ^ (*(a1 + 48) >> 63) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v4 & 0x10) == 0)
    {
LABEL_11:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_19:
  v3 += ((9 * (__clz((2 * *(a1 + 40)) ^ (*(a1 + 40) >> 63) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v4 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_21:
  v9 = *(a1 + 56);
  v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v9 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 11;
  }

  v3 += v11;
  if ((v4 & 0x20) != 0)
  {
LABEL_12:
    v5 = *(a1 + 60);
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 11;
    }

    v3 += v7;
  }

LABEL_16:
  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_2438AF4D8(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x3F) != 0)
  {
    if (v5)
    {
      v3[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
LABEL_11:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v5;
        return result;
      }

LABEL_10:
      HIDWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
      goto LABEL_11;
    }

LABEL_17:
    LODWORD(v3[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return result;
}

void *sub_2438AF5A0(void *a1)
{
  *a1 = &unk_28569DDE8;
  a1[1] = 0;
  a1[2] = 0;
  if (atomic_load_explicit(dword_281AF3F18, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3F18);
  }

  a1[3] = 0;
  return a1;
}

uint64_t sub_2438AF624(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569DDE8;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2438BFC64((a1 + 8), v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void *sub_2438AF6B0(void *a1)
{
  *a1 = &unk_28569DDE8;
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438AF6F4(uint64_t *a1)
{
  *a1 = &unk_28569DDE8;
  sub_2438BF788(a1 + 1);

  operator delete(a1);
}

void sub_2438AF748(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = a1 + 8;
  *(v1 + 16) = 0;
  *(v1 + 8) = 0;
  if (v2)
  {
    sub_2438BFCC0(v1);
  }
}

uint64_t sub_2438AF760(uint64_t a1, char **a2)
{
  v4 = *(a1 + 8);
  v19 = (a1 + 8);
  v20 = 0uLL;
  v21 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v21 = *(v5 + 16);
    v20 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v18, &v20);
  sub_2439657D8(v17, v18, 0);
  do
  {
    while (1)
    {
      v7 = *a2;
      if (*a2 >= a2[1])
      {
        v8 = 0;
LABEL_9:
        v10 = sub_2439655D8(a2, v8);
        v9 = v10 | ((v10 - 1 < 0x7F) << 32);
        if ((v9 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_10;
      }

      v8 = *v7;
      if (*v7 < 1)
      {
        goto LABEL_9;
      }

      *a2 = v7 + 1;
      v9 = v8 | 0x100000000;
      if ((v9 & 0x100000000) == 0)
      {
        break;
      }

LABEL_10:
      if (v9 != 8 || (v9 & 0xFFFFFFF8) != 8)
      {
        break;
      }

      *(a1 + 16) |= 1u;
      v12 = *a2;
      if (*a2 >= a2[1] || (v13 = *v12, (v13 & 0x8000000000000000) != 0))
      {
        v13 = sub_2439650E0(a2);
        if ((v14 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        *a2 = v12 + 1;
      }

      *(a1 + 24) = -(v13 & 1) ^ (v13 >> 1);
    }

    if (!v9)
    {
      v15 = 1;
      goto LABEL_23;
    }
  }

  while (sub_243967FF0(a2, v9, v17));
LABEL_24:
  v15 = 0;
LABEL_23:
  sub_243965918(v17);
  sub_2438BF88C(&v19);
  return v15;
}

void sub_2438AF8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438AF8F0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    sub_243968AF4(1, *(a1 + 24), a2);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = &qword_27ED97020;
  }

  if (v5[23] < 0)
  {
    v5 = *v5;
  }

  if (v4)
  {
    v6 = (v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    v7 = v6[1];
  }

  return sub_243965944(a2, v5, v7);
}

uint64_t sub_2438AF980(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  if (*(a1 + 16))
  {
    v3 += ((9 * (__clz((2 * *(a1 + 24)) ^ (*(a1 + 24) >> 63) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_2438AF9E4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    v3[1].__r_.__value_.__r.__words[0] = v5;
  }

  return result;
}

void *sub_2438AFA50(void *a1)
{
  *a1 = &unk_28569DE88;
  a1[1] = 0;
  a1[2] = 0;
  if (atomic_load_explicit(dword_281AF3DB8, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3DB8);
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  return a1;
}

uint64_t sub_2438AFAD8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569DE88;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2438BFC64((a1 + 8), v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  return a1;
}

void *sub_2438AFB6C(void *a1)
{
  *a1 = &unk_28569DE88;
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438AFBB0(uint64_t *a1)
{
  *a1 = &unk_28569DE88;
  sub_2438BF788(a1 + 1);

  operator delete(a1);
}

void sub_2438AFC04(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v2 = *(a1 + 8);
  v1 = a1 + 8;
  *(v1 + 8) = 0;
  if (v2)
  {
    sub_2438BFCC0(v1);
  }
}

uint64_t sub_2438AFC2C(uint64_t a1, char **a2)
{
  v4 = *(a1 + 8);
  v23 = (a1 + 8);
  v24 = 0uLL;
  v25 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v25 = *(v5 + 16);
    v24 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v22, &v24);
  sub_2439657D8(v21, v22, 0);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = *a2;
          if (*a2 >= a2[1])
          {
            v8 = 0;
LABEL_9:
            v10 = sub_2439655D8(a2, v8);
            v9 = v10 | ((v10 - 1 < 0x7F) << 32);
            if ((v9 & 0x100000000) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_10;
          }

          v8 = *v7;
          if (*v7 < 1)
          {
            goto LABEL_9;
          }

          *a2 = v7 + 1;
          v9 = v8 | 0x100000000;
          if ((v9 & 0x100000000) == 0)
          {
            goto LABEL_29;
          }

LABEL_10:
          v11 = v9 >> 3;
          if (v9 >> 3 != 3)
          {
            break;
          }

          if (v9 != 24)
          {
            goto LABEL_29;
          }

          *(a1 + 16) |= 4u;
          v13 = *a2;
          if (*a2 >= a2[1] || *v13 < 0)
          {
            *(a1 + 40) = sub_2439650E0(a2);
            if ((v17 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v14 = *v13;
            v15 = (a1 + 40);
LABEL_28:
            *v15 = v14;
            *a2 = v13 + 1;
          }
        }

        if (v11 != 2)
        {
          break;
        }

        if (v9 != 16)
        {
          goto LABEL_29;
        }

        *(a1 + 16) |= 2u;
        v13 = *a2;
        if (*a2 < a2[1] && (*v13 & 0x80000000) == 0)
        {
          v14 = *v13;
          v15 = (a1 + 32);
          goto LABEL_28;
        }

        *(a1 + 32) = sub_2439650E0(a2);
        if ((v16 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      if (v11 != 1 || v9 != 8)
      {
        break;
      }

      *(a1 + 16) |= 1u;
      v13 = *a2;
      if (*a2 < a2[1] && (*v13 & 0x80000000) == 0)
      {
        v14 = *v13;
        v15 = (a1 + 24);
        goto LABEL_28;
      }

      *(a1 + 24) = sub_2439650E0(a2);
      if ((v18 & 1) == 0)
      {
LABEL_37:
        v19 = 0;
        goto LABEL_39;
      }
    }

LABEL_29:
    if (!v9)
    {
      break;
    }

    if (!sub_243967FF0(a2, v9, v21))
    {
      goto LABEL_37;
    }
  }

  v19 = 1;
LABEL_39:
  sub_243965918(v21);
  sub_2438BF88C(&v23);
  return v19;
}

void sub_2438AFE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438AFE7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_2439688B0(1, *(a1 + 24), a2);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_2439688B0(2, *(a1 + 32), a2);
  if ((v4 & 4) != 0)
  {
LABEL_4:
    sub_2439688B0(3, *(a1 + 40), a2);
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  if (v5)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = v7[1];
  }

  return sub_243965944(a2, v6, v8);
}

uint64_t sub_2438AFF48(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  v4 = *(a1 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v3 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v4 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 += ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v4 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v4 & 4) != 0)
  {
LABEL_9:
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_10:
  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_2438B0018(uint64_t a1)
{
  *a1 = &unk_28569DF28;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_281AF3EA8, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3EA8);
  }

  *(a1 + 97) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return a1;
}

uint64_t sub_2438B00B8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569DF28;
  *(a1 + 8) = 0;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_2438BFC64((a1 + 8), v5 & 0xFFFFFFFFFFFFFFFELL);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    v7 = operator new(0x30uLL);
    sub_2438ABFB8(v7, *(a2 + 24));
    *(a1 + 24) = v7;
    v4 = *(a2 + 16);
    if ((v4 & 2) == 0)
    {
LABEL_5:
      *(a1 + 32) = 0;
      if ((v4 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else
  {
    *(a1 + 24) = 0;
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }
  }

  v8 = operator new(0x30uLL);
  sub_2438AC628(v8, *(a2 + 32));
  *(a1 + 32) = v8;
  v4 = *(a2 + 16);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    *(a1 + 40) = 0;
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = operator new(0x40uLL);
  sub_2438ACC30(v9, *(a2 + 40));
  *(a1 + 40) = v9;
  v4 = *(a2 + 16);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    *(a1 + 48) = 0;
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = operator new(0x30uLL);
  sub_2438AD770(v10, *(a2 + 48));
  *(a1 + 48) = v10;
  v4 = *(a2 + 16);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    *(a1 + 56) = 0;
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = operator new(0x30uLL);
  sub_2438ADEE0(v11, *(a2 + 56));
  *(a1 + 56) = v11;
  v4 = *(a2 + 16);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    *(a1 + 64) = 0;
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = operator new(0x20uLL);
  sub_2438AE7C4(v12, *(a2 + 64));
  *(a1 + 64) = v12;
  v4 = *(a2 + 16);
  if ((v4 & 0x40) == 0)
  {
LABEL_10:
    *(a1 + 72) = 0;
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

LABEL_20:
    v14 = operator new(0x40uLL);
    sub_2438AED78(v14, *(a2 + 80));
    *(a1 + 80) = v14;
    if ((*(a2 + 16) & 0x100) == 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v6 = operator new(0x30uLL);
    sub_2438AFAD8(v6, *(a2 + 88));
    goto LABEL_22;
  }

LABEL_19:
  v13 = operator new(0x20uLL);
  sub_2438AF624(v13, *(a2 + 72));
  *(a1 + 72) = v13;
  v4 = *(a2 + 16);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  *(a1 + 80) = 0;
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v6 = 0;
LABEL_22:
  *(a1 + 88) = v6;
  v15 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v15;
  return a1;
}

void sub_2438B02A0(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

void *sub_2438B02E8(void *a1)
{
  *a1 = &unk_28569DF28;
  sub_2438B0338(a1);
  sub_2438BF788(a1 + 1);
  return a1;
}

void *sub_2438B0338(void *result)
{
  if (result != &unk_27ED96AC8)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[4];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[5];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[6];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[7];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[8];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[9];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[10];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    result = v1[11];
    if (result)
    {
      v10 = *(*result + 8);

      return v10();
    }
  }

  return result;
}

void sub_2438B0510(void *a1)
{
  v1 = sub_2438B02E8(a1);

  operator delete(v1);
}

void sub_2438B0538(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_22;
  }

  if (v2)
  {
    sub_2438AC0E4(*(a1 + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  sub_2438AC754(*(a1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_9:
  sub_2438ACEE0(*(a1 + 40));
  if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v3 = *(a1 + 48);
  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 16) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {
    sub_2438BFCC0(v4);
  }

LABEL_12:
  if ((v2 & 0x10) == 0)
  {
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    sub_2438AE8E8(*(a1 + 64));
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_20;
    }

LABEL_18:
    v6 = *(a1 + 72);
    v8 = *(v6 + 8);
    v7 = v6 + 8;
    *(v7 + 16) = 0;
    *(v7 + 8) = 0;
    if (v8)
    {
      sub_2438BFCC0(v7);
    }

    goto LABEL_20;
  }

  sub_2438AE140(*(a1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_20:
  if ((v2 & 0x80) != 0)
  {
    sub_2438AEEAC(*(a1 + 80));
  }

LABEL_22:
  if ((v2 & 0x100) != 0)
  {
    sub_2438AFC04(*(a1 + 88));
  }

  if ((v2 & 0xE00) != 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  v10 = *(a1 + 8);
  v9 = a1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    sub_2438BFCC0(v9);
  }
}

uint64_t sub_2438B0648(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v62 = (a1 + 8);
  v63 = 0uLL;
  v64 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v64 = *(v5 + 16);
    v63 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v61, &v63);
  sub_2439657D8(v60, v61, 0);
  while (1)
  {
    while (1)
    {
      v7 = *a2;
      if (*a2 >= *(a2 + 8))
      {
        v8 = 0;
      }

      else
      {
        v8 = *v7;
        if (*v7 >= 1)
        {
          *a2 = v7 + 1;
          v9 = v8 | 0x100000000;
          if ((v9 & 0x100000000) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_14;
        }
      }

      v10 = sub_2439655D8(a2, v8);
      v9 = v10 | ((v10 - 1 < 0x7F) << 32);
      if ((v9 & 0x100000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      v12 = v9 >> 3;
      if (v9 >> 3 <= 6)
      {
        break;
      }

      if (v9 >> 3 <= 9)
      {
        if (v12 == 7)
        {
          if (v9 != 58)
          {
            goto LABEL_10;
          }

          *(a1 + 16) |= 0x20u;
          v27 = *(a1 + 64);
          if (!v27)
          {
            v27 = sub_2438BE65C(0);
            *(a1 + 64) = v27;
          }

          v28 = *a2;
          if (*a2 >= *(a2 + 8) || (v29 = *v28, (v29 & 0x80000000) != 0))
          {
            v29 = sub_243965380(a2);
            if ((v29 & 0x80000000) != 0)
            {
              goto LABEL_140;
            }
          }

          else
          {
            *a2 = v28 + 1;
          }

          v53 = sub_243989C1C(a2, v29);
          v49 = v53;
          if ((v53 & 0x8000000000000000) != 0 || !sub_2438AE90C(v27, a2))
          {
            goto LABEL_140;
          }
        }

        else if (v12 == 8)
        {
          if (v9 != 66)
          {
            goto LABEL_10;
          }

          *(a1 + 16) |= 0x40u;
          v38 = *(a1 + 72);
          if (!v38)
          {
            v38 = sub_2438BE784(0);
            *(a1 + 72) = v38;
          }

          v39 = *a2;
          if (*a2 >= *(a2 + 8) || (v40 = *v39, (v40 & 0x80000000) != 0))
          {
            v40 = sub_243965380(a2);
            if ((v40 & 0x80000000) != 0)
            {
              goto LABEL_140;
            }
          }

          else
          {
            *a2 = v39 + 1;
          }

          v56 = sub_243989C1C(a2, v40);
          v49 = v56;
          if ((v56 & 0x8000000000000000) != 0 || !sub_2438AF760(v38, a2))
          {
            goto LABEL_140;
          }
        }

        else
        {
          if (v12 != 9 || v9 != 74)
          {
            goto LABEL_10;
          }

          *(a1 + 16) |= 0x80u;
          v16 = *(a1 + 80);
          if (!v16)
          {
            v16 = sub_2438BE6F0(0);
            *(a1 + 80) = v16;
          }

          v17 = *a2;
          if (*a2 >= *(a2 + 8) || (v18 = *v17, (v18 & 0x80000000) != 0))
          {
            v18 = sub_243965380(a2);
            if ((v18 & 0x80000000) != 0)
            {
              goto LABEL_140;
            }
          }

          else
          {
            *a2 = v17 + 1;
          }

          v50 = sub_243989C1C(a2, v18);
          v49 = v50;
          if ((v50 & 0x8000000000000000) != 0 || !sub_2438AEEDC(v16, a2))
          {
            goto LABEL_140;
          }
        }

        goto LABEL_137;
      }

      if (v12 == 10)
      {
        if (v9 != 80)
        {
          goto LABEL_10;
        }

        *(a1 + 16) |= 0x800u;
        v33 = *a2;
        if (*a2 >= *(a2 + 8) || (v34 = *v33, (v34 & 0x8000000000000000) != 0))
        {
          v34 = sub_2439650E0(a2);
          if ((v46 & 1) == 0)
          {
            goto LABEL_140;
          }
        }

        else
        {
          *a2 = v33 + 1;
        }

        *(a1 + 112) = v34 != 0;
      }

      else if (v12 == 11)
      {
        if (v9 != 88)
        {
          goto LABEL_10;
        }

        *(a1 + 16) |= 0x400u;
        v25 = *a2;
        if (*a2 >= *(a2 + 8) || (v44 = *v25, v44 < 0))
        {
          *(a1 + 104) = sub_2439650E0(a2);
          if ((v47 & 1) == 0)
          {
            goto LABEL_140;
          }
        }

        else
        {
          *(a1 + 104) = v44;
LABEL_95:
          *a2 = v25 + 1;
        }
      }

      else
      {
        if (v12 != 12 || v9 != 98)
        {
LABEL_10:
          if (!v9)
          {
            v58 = 1;
            goto LABEL_139;
          }

          v11 = sub_243967FF0(a2, v9, v60);
          goto LABEL_12;
        }

        *(a1 + 16) |= 0x100u;
        v22 = *(a1 + 88);
        if (!v22)
        {
          v22 = sub_2438BE818(0);
          *(a1 + 88) = v22;
        }

        v23 = *a2;
        if (*a2 >= *(a2 + 8) || (v24 = *v23, (v24 & 0x80000000) != 0))
        {
          v24 = sub_243965380(a2);
          if ((v24 & 0x80000000) != 0)
          {
            goto LABEL_140;
          }
        }

        else
        {
          *a2 = v23 + 1;
        }

        v52 = sub_243989C1C(a2, v24);
        v49 = v52;
        if ((v52 & 0x8000000000000000) != 0 || !sub_2438AFC2C(v22, a2))
        {
          goto LABEL_140;
        }

LABEL_137:
        v11 = sub_243964938(a2, v49);
LABEL_12:
        if ((v11 & 1) == 0)
        {
          goto LABEL_140;
        }
      }
    }

    if (v9 >> 3 > 3)
    {
      break;
    }

    if (v12 != 1)
    {
      if (v12 == 2)
      {
        if (v9 != 18)
        {
          goto LABEL_10;
        }

        *(a1 + 16) |= 1u;
        v35 = *(a1 + 24);
        if (!v35)
        {
          v35 = sub_2438BE378(0);
          *(a1 + 24) = v35;
        }

        v36 = *a2;
        if (*a2 >= *(a2 + 8) || (v37 = *v36, (v37 & 0x80000000) != 0))
        {
          v37 = sub_243965380(a2);
          if ((v37 & 0x80000000) != 0)
          {
            goto LABEL_140;
          }
        }

        else
        {
          *a2 = v36 + 1;
        }

        v55 = sub_243989C1C(a2, v37);
        v49 = v55;
        if ((v55 & 0x8000000000000000) != 0 || !sub_2438AC10C(v35, a2))
        {
          goto LABEL_140;
        }
      }

      else
      {
        if (v12 != 3 || v9 != 26)
        {
          goto LABEL_10;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 32);
        if (!v13)
        {
          v13 = sub_2438BE40C(0);
          *(a1 + 32) = v13;
        }

        v14 = *a2;
        if (*a2 >= *(a2 + 8) || (v15 = *v14, (v15 & 0x80000000) != 0))
        {
          v15 = sub_243965380(a2);
          if ((v15 & 0x80000000) != 0)
          {
            goto LABEL_140;
          }
        }

        else
        {
          *a2 = v14 + 1;
        }

        v48 = sub_243989C1C(a2, v15);
        v49 = v48;
        if ((v48 & 0x8000000000000000) != 0 || !sub_2438AC77C(v13, a2))
        {
          goto LABEL_140;
        }
      }

      goto LABEL_137;
    }

    if (v9 != 8)
    {
      goto LABEL_10;
    }

    *(a1 + 16) |= 0x200u;
    v25 = *a2;
    if (*a2 < *(a2 + 8))
    {
      v26 = *v25;
      if ((v26 & 0x8000000000000000) == 0)
      {
        *(a1 + 96) = v26;
        goto LABEL_95;
      }
    }

    *(a1 + 96) = sub_2439650E0(a2);
    if ((v45 & 1) == 0)
    {
      goto LABEL_140;
    }
  }

  if (v12 == 4)
  {
    if (v9 != 34)
    {
      goto LABEL_10;
    }

    *(a1 + 16) |= 4u;
    v30 = *(a1 + 40);
    if (!v30)
    {
      v30 = sub_2438BE4A0(0);
      *(a1 + 40) = v30;
    }

    v31 = *a2;
    if (*a2 >= *(a2 + 8) || (v32 = *v31, (v32 & 0x80000000) != 0))
    {
      v32 = sub_243965380(a2);
      if ((v32 & 0x80000000) != 0)
      {
        goto LABEL_140;
      }
    }

    else
    {
      *a2 = v31 + 1;
    }

    v54 = sub_243989C1C(a2, v32);
    v49 = v54;
    if ((v54 & 0x8000000000000000) != 0 || !sub_2438ACFC0(v30, a2))
    {
      goto LABEL_140;
    }

    goto LABEL_137;
  }

  if (v12 != 5)
  {
    if (v12 != 6 || v9 != 50)
    {
      goto LABEL_10;
    }

    *(a1 + 16) |= 0x10u;
    v19 = *(a1 + 56);
    if (!v19)
    {
      v19 = sub_2438BE5C8(0);
      *(a1 + 56) = v19;
    }

    v20 = *a2;
    if (*a2 >= *(a2 + 8) || (v21 = *v20, (v21 & 0x80000000) != 0))
    {
      v21 = sub_243965380(a2);
      if ((v21 & 0x80000000) != 0)
      {
        goto LABEL_140;
      }
    }

    else
    {
      *a2 = v20 + 1;
    }

    v51 = sub_243989C1C(a2, v21);
    v49 = v51;
    if ((v51 & 0x8000000000000000) != 0 || !sub_2438AE1EC(v19, a2))
    {
      goto LABEL_140;
    }

    goto LABEL_137;
  }

  if (v9 != 42)
  {
    goto LABEL_10;
  }

  *(a1 + 16) |= 8u;
  v41 = *(a1 + 48);
  if (!v41)
  {
    v41 = sub_2438BE534(0);
    *(a1 + 48) = v41;
  }

  v42 = *a2;
  if (*a2 >= *(a2 + 8) || (v43 = *v42, (v43 & 0x80000000) != 0))
  {
    v43 = sub_243965380(a2);
    if ((v43 & 0x80000000) != 0)
    {
      goto LABEL_140;
    }
  }

  else
  {
    *a2 = v42 + 1;
  }

  v57 = sub_243989C1C(a2, v43);
  v49 = v57;
  if ((v57 & 0x8000000000000000) == 0 && sub_2438AD8F8(v41, a2))
  {
    goto LABEL_137;
  }

LABEL_140:
  v58 = 0;
LABEL_139:
  sub_243965918(v60);
  sub_2438BF88C(&v62);
  return v58;
}

void sub_2438B0DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B0DF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if ((v4 & 0x200) != 0)
  {
    sub_2439688B0(1, *(a1 + 96), a2);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  sub_243969590(2, *(a1 + 24), a2);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_243969590(3, *(a1 + 32), a2);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  sub_243969590(4, *(a1 + 40), a2);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  sub_243969590(5, *(a1 + 48), a2);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  sub_243969590(6, *(a1 + 56), a2);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  sub_243969590(7, *(a1 + 64), a2);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  sub_243969590(8, *(a1 + 72), a2);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  sub_243969590(9, *(a1 + 80), a2);
  if ((v4 & 0x800) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  sub_243968D90(10, *(a1 + 112), a2);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_37:
  sub_2439688B0(11, *(a1 + 104), a2);
  if ((v4 & 0x100) != 0)
  {
LABEL_13:
    sub_243969590(12, *(a1 + 88), a2);
  }

LABEL_14:
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  if (v5)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = v7[1];
  }

  return sub_243965944(a2, v6, v8);
}

uint64_t sub_2438B0F9C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v3 = &qword_27ED97020;
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_16;
  }

  if (v5)
  {
    v8 = sub_2438AC438(*(a1 + 24));
    v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v5 = *(a1 + 16);
    if ((v5 & 2) == 0)
    {
LABEL_9:
      if ((v5 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_9;
  }

  v9 = sub_2438ACAA0(*(a1 + 32));
  v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v5 = *(a1 + 16);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = sub_2438AD384(*(a1 + 40));
  v4 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v5 = *(a1 + 16);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = sub_2438ADD00(*(a1 + 48));
  v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v5 = *(a1 + 16);
  if ((v5 & 0x10) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_28:
    v13 = sub_2438AEBC8(*(a1 + 64));
    v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v5 = *(a1 + 16);
    if ((v5 & 0x40) == 0)
    {
LABEL_14:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_27:
  v12 = sub_2438AE4CC(*(a1 + 56));
  v4 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v5 = *(a1 + 16);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_13:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_29:
  v14 = sub_2438AF980(*(a1 + 72));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v5 = *(a1 + 16);
  if ((v5 & 0x80) != 0)
  {
LABEL_15:
    v6 = sub_2438AF368(*(a1 + 80));
    v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v5 = *(a1 + 16);
  }

LABEL_16:
  if ((v5 & 0xF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      v15 = sub_2438AFF48(*(a1 + 88));
      v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      v5 = *(a1 + 16);
      if ((v5 & 0x200) == 0)
      {
LABEL_19:
        if ((v5 & 0x400) == 0)
        {
LABEL_21:
          v4 += (v5 >> 10) & 2;
          goto LABEL_22;
        }

LABEL_20:
        v4 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
        goto LABEL_21;
      }
    }

    else if ((v5 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    v4 += ((9 * (__clz(*(a1 + 96) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_22:
  *(a1 + 20) = v4;
  return v4;
}

std::string *sub_2438B1254(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_61;
  }

  if (v5)
  {
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    data = v3[1].__r_.__value_.__l.__data_;
    if (!data)
    {
      data = sub_2438BE378(0);
      v3[1].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 24))
    {
      v7 = *(a2 + 24);
    }

    else
    {
      v7 = qword_27ED96958;
    }

    result = sub_2438AC508(data, v7);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
  size = v3[1].__r_.__value_.__l.__size_;
  if (!size)
  {
    size = sub_2438BE40C(0);
    v3[1].__r_.__value_.__l.__size_ = size;
  }

  if (*(a2 + 32))
  {
    v9 = *(a2 + 32);
  }

  else
  {
    v9 = qword_27ED96A98;
  }

  result = sub_2438ACB04(size, v9);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_25:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 4u;
  v10 = v3[1].__r_.__value_.__r.__words[2];
  if (!v10)
  {
    v10 = sub_2438BE4A0(0);
    v3[1].__r_.__value_.__r.__words[2] = v10;
  }

  if (*(a2 + 40))
  {
    v11 = *(a2 + 40);
  }

  else
  {
    v11 = qword_27ED96A58;
  }

  result = sub_2438AD504(v10, v11);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_31:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 8u;
  v12 = v3[2].__r_.__value_.__l.__data_;
  if (!v12)
  {
    v12 = sub_2438BE534(0);
    v3[2].__r_.__value_.__r.__words[0] = v12;
  }

  if (*(a2 + 48))
  {
    v13 = *(a2 + 48);
  }

  else
  {
    v13 = &unk_27ED96B40;
  }

  result = sub_2438ADD94(v12, v13);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_43:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x20u;
    v16 = v3[2].__r_.__value_.__r.__words[2];
    if (!v16)
    {
      v16 = sub_2438BE65C(0);
      v3[2].__r_.__value_.__r.__words[2] = v16;
    }

    if (*(a2 + 64))
    {
      v17 = *(a2 + 64);
    }

    else
    {
      v17 = qword_27ED96B90;
    }

    result = sub_2438AEC68(v16, v17);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_55;
    }

    goto LABEL_49;
  }

LABEL_37:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x10u;
  v14 = v3[2].__r_.__value_.__l.__size_;
  if (!v14)
  {
    v14 = sub_2438BE5C8(0);
    v3[2].__r_.__value_.__l.__size_ = v14;
  }

  if (*(a2 + 56))
  {
    v15 = *(a2 + 56);
  }

  else
  {
    v15 = qword_27ED969D0;
  }

  result = sub_2438AE5D8(v14, v15);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_49:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x40u;
  v18 = v3[3].__r_.__value_.__l.__data_;
  if (!v18)
  {
    v18 = sub_2438BE784(0);
    v3[3].__r_.__value_.__r.__words[0] = v18;
  }

  if (*(a2 + 72))
  {
    v19 = *(a2 + 72);
  }

  else
  {
    v19 = qword_27ED96B70;
  }

  result = sub_2438AF9E4(v18, v19);
  if ((v5 & 0x80) != 0)
  {
LABEL_55:
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x80u;
    v20 = v3[3].__r_.__value_.__l.__size_;
    if (!v20)
    {
      v20 = sub_2438BE6F0(0);
      v3[3].__r_.__value_.__l.__size_ = v20;
    }

    if (*(a2 + 80))
    {
      v21 = *(a2 + 80);
    }

    else
    {
      v21 = &unk_27ED968B8;
    }

    result = sub_2438AF4D8(v20, v21);
  }

LABEL_61:
  if ((v5 & 0xF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    v22 = v3[3].__r_.__value_.__r.__words[2];
    if (!v22)
    {
      v22 = sub_2438BE818(0);
      v3[3].__r_.__value_.__r.__words[2] = v22;
    }

    if (*(a2 + 88))
    {
      v23 = *(a2 + 88);
    }

    else
    {
      v23 = qword_27ED96888;
    }

    result = sub_2438AC508(v22, v23);
    if ((v5 & 0x200) == 0)
    {
LABEL_64:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_65;
      }

LABEL_76:
      v3[4].__r_.__value_.__l.__size_ = *(a2 + 104);
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_64;
  }

  v3[4].__r_.__value_.__r.__words[0] = *(a2 + 96);
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_76;
  }

LABEL_65:
  if ((v5 & 0x800) != 0)
  {
LABEL_66:
    v3[4].__r_.__value_.__s.__data_[16] = *(a2 + 112);
  }

LABEL_67:
  LODWORD(v3->__r_.__value_.__r.__words[2]) |= v5;
  return result;
}

std::string *sub_2438B1500(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2438B0538(result);

    return sub_2438B1254(v4, a2);
  }

  return result;
}

__n128 sub_2438B1554(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  v3 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  v4 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  v5 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v5;
  v6 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v6;
  v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v7;
  v8 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v8;
  v9 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v9;
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  v12 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v12;
  *(a2 + 88) = v10;
  *(a2 + 96) = v11;
  v13 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  LOBYTE(v13) = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v13;
  LODWORD(v13) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v13;
  v15 = (a1 + 8);
  v14 = *(a1 + 8);
  v18 = *(a2 + 8);
  v16 = (a2 + 8);
  v17 = v18;
  if (v14)
  {
    if ((v17 & 1) == 0)
    {
      sub_2438BF7E4(v16);
      v19 = v24;
      v14 = *v15;
      if (*v15)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }

LABEL_5:
    v19 = v17 & 0xFFFFFFFFFFFFFFFELL;
    if (v14)
    {
LABEL_6:
      v20 = (v14 & 0xFFFFFFFFFFFFFFFELL);
LABEL_7:
      v21 = v20[1].n128_u64[0];
      result = *v20;
      v23 = *(v19 + 16);
      *v20 = *v19;
      v20[1].n128_u64[0] = v23;
      *v19 = result;
      *(v19 + 16) = v21;
      return result;
    }

LABEL_9:
    sub_2438BF7E4(v15);
    goto LABEL_7;
  }

  if (v17)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_2438B16B0(uint64_t a1)
{
  *a1 = &unk_28569DFC8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  if (atomic_load_explicit(dword_281AF4090, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF4090);
  }

  *(a1 + 48) = 0;
  return a1;
}

void sub_2438B172C(_Unwind_Exception *a1)
{
  sub_2438AD72C(v1 + 24);
  sub_2438BF788(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B174C(uint64_t a1)
{
  *a1 = &unk_28569DFC8;
  if (a1 != &unk_27ED96F18)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  if (*(a1 + 28) >= 1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      if (!*v3)
      {
        operator delete(v3);
      }
    }
  }

  sub_2438BF788((a1 + 8));
  return a1;
}

void sub_2438B17F4(uint64_t a1)
{
  v1 = sub_2438B174C(a1);

  operator delete(v1);
}

void sub_2438B181C(uint64_t a1)
{
  *(a1 + 24) = 0;
  if (*(a1 + 16))
  {
    sub_2438B0538(*(a1 + 48));
  }

  v3 = *(a1 + 8);
  v2 = a1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    sub_2438BFCC0(v2);
  }
}

uint64_t sub_2438B187C(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v30 = (a1 + 8);
  v31 = 0uLL;
  v32 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v32 = *(v5 + 16);
    v31 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v29, &v31);
  sub_2439657D8(v28, v29, 0);
  while (1)
  {
    v7 = *a2;
    if (*a2 >= a2[1])
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7;
      if (*v7 >= 1)
      {
        *a2 = (v7 + 1);
        v9 = v8 | 0x100000000;
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_10;
      }
    }

    v10 = sub_2439655D8(a2, v8);
    v9 = v10 | ((v10 - 1 < 0x7F) << 32);
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_10:
    if (v9 >> 3 == 2)
    {
      break;
    }

    if (v9 >> 3 != 1)
    {
      goto LABEL_23;
    }

    if (v9 == 8)
    {
      v16 = sub_243989360(1, 0xAu, a2, a1 + 24);
LABEL_25:
      if ((v16 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v9 != 10)
      {
        goto LABEL_23;
      }

      v11 = *a2;
      if (*a2 >= a2[1] || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        v12 = sub_243965380(a2);
        if ((v12 & 0x80000000) != 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        *a2 = (v11 + 1);
      }

      v19 = sub_243989BA4(a2, v12);
      while (sub_243964994(a2) >= 1)
      {
        v20 = *a2;
        if (*a2 >= a2[1] || (v21 = *v20, (v21 & 0x8000000000000000) != 0))
        {
          v22 = sub_2439650E0(a2);
          if ((v23 & 1) == 0)
          {
            goto LABEL_46;
          }

          v21 = v22;
        }

        else
        {
          *a2 = (v20 + 1);
        }

        v24 = *(a1 + 24);
        if (v24 == *(a1 + 28))
        {
          sub_2438BFA30((a1 + 24), v24 + 1);
          v24 = *(a1 + 24);
        }

        v25 = *(a1 + 32) + 8 * v24;
        *(a1 + 24) = v24 + 1;
        *(v25 + 8) = v21;
      }

      sub_2439648F0(a2, v19);
    }
  }

  if (v9 != 18)
  {
LABEL_23:
    if (!v9)
    {
      v26 = 1;
      goto LABEL_45;
    }

    v16 = sub_243967FF0(a2, v9, v28);
    goto LABEL_25;
  }

  *(a1 + 16) |= 1u;
  v13 = *(a1 + 48);
  if (!v13)
  {
    v13 = sub_2438BE8AC(0);
    *(a1 + 48) = v13;
  }

  v14 = *a2;
  if (*a2 >= a2[1] || (v15 = *v14, (v15 & 0x80000000) != 0))
  {
    v15 = sub_243965380(a2);
    if ((v15 & 0x80000000) != 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    *a2 = (v14 + 1);
  }

  v17 = sub_243989C1C(a2, v15);
  v18 = v17;
  if ((v17 & 0x8000000000000000) == 0 && sub_2438B0648(v13, a2))
  {
    v16 = sub_243964938(a2, v18);
    goto LABEL_25;
  }

LABEL_46:
  v26 = 0;
LABEL_45:
  sub_243965918(v28);
  sub_2438BF88C(&v30);
  return v26;
}

void sub_2438B1B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B1B48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) >= 1)
  {
    if (*(a2 + 16) < 5)
    {
      sub_243965B70(a2, 0xAu);
      v4 = *(a2 + 16);
    }

    else
    {
      *(*(a2 + 8))++ = 10;
      v4 = *(a2 + 16) - 1;
      *(a2 + 16) = v4;
    }

    v5 = *(a1 + 40);
    if (v4 < 5)
    {
      sub_243965B70(a2, v5);
    }

    else
    {
      v6 = *(a2 + 8);
      if (v5 < 0x80)
      {
        v8 = *(a1 + 40);
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = *(a2 + 8);
        do
        {
          *v7++ = v5 | 0x80;
          v8 = v5 >> 7;
          v9 = v5 >> 14;
          v5 >>= 7;
        }

        while (v9);
      }

      *v7 = v8;
      v10 = v7 - v6 + 1;
      *(a2 + 8) += v10;
      *(a2 + 16) -= v10;
    }

    v11 = *(a1 + 24);
    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = *(*(a1 + 32) + 8 * i + 8);
        if (*(a2 + 16) < 10)
        {
          sub_243965BCC(a2, v13);
        }

        else
        {
          v14 = *(a2 + 8);
          if (v13 < 0x80)
          {
            v16 = *(*(a1 + 32) + 8 * i + 8);
            v15 = *(a2 + 8);
          }

          else
          {
            v15 = *(a2 + 8);
            do
            {
              *v15++ = v13 | 0x80;
              v16 = v13 >> 7;
              v17 = v13 >> 14;
              v13 >>= 7;
            }

            while (v17);
          }

          *v15 = v16;
          v18 = v15 - v14 + 1;
          *(a2 + 8) += v18;
          *(a2 + 16) -= v18;
        }
      }
    }
  }

  if (*(a1 + 16))
  {
    sub_243969590(2, *(a1 + 48), a2);
  }

  v19 = *(a1 + 8);
  if (v19)
  {
    v20 = (v19 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v20 = &qword_27ED97020;
  }

  if (v20[23] < 0)
  {
    v20 = *v20;
  }

  if (v19)
  {
    v21 = (v19 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v21 = &qword_27ED97020;
  }

  v22 = *(v21 + 23);
  if (v22 < 0)
  {
    v22 = v21[1];
  }

  return sub_243965944(a2, v20, v22);
}

uint64_t sub_2438B1D38(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v3 = &qword_27ED97020;
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = sub_243969840((a1 + 24));
  v6 = 11;
  v7 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v5 >= 0)
  {
    v6 = v7;
  }

  v8 = v6 + v4;
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (!v5)
  {
    v8 = v4;
  }

  *(a1 + 40) = v9;
  v10 = v8 + v5;
  if (*(a1 + 16))
  {
    v11 = sub_2438B0F9C(*(a1 + 48));
    v10 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  *(a1 + 20) = v10;
  return v10;
}

std::string *sub_2438B1E04(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    data_low = SLODWORD(v3[1].__r_.__value_.__l.__data_);
    sub_2438BFA30(&v3[1], data_low + v5);
    v7 = v3[1].__r_.__value_.__l.__size_ + 8 * data_low;
    LODWORD(v3[1].__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((v7 + 8), (*(a2 + 32) + 8), 8 * *(a2 + 24));
  }

  if (*(a2 + 16))
  {
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
    data = v3[2].__r_.__value_.__l.__data_;
    if (!data)
    {
      data = sub_2438BE8AC(0);
      v3[2].__r_.__value_.__r.__words[0] = data;
    }

    if (*(a2 + 48))
    {
      v9 = *(a2 + 48);
    }

    else
    {
      v9 = &unk_27ED96AC8;
    }

    return sub_2438B1254(data, v9);
  }

  return result;
}

std::string *sub_2438B1EE8(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2438B181C(result);

    return sub_2438B1E04(v4, a2);
  }

  return result;
}

uint64_t sub_2438B1F4C(uint64_t a1)
{
  *a1 = &unk_28569E068;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_281AF40A8, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF40A8);
  }

  return a1;
}

void sub_2438B1FCC(_Unwind_Exception *a1)
{
  sub_2438BFD08(v2);
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

void *sub_2438B1FF0(void *a1)
{
  *a1 = &unk_28569E068;
  sub_2438BFD08(a1 + 3);
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438B2044(void *a1)
{
  v1 = sub_2438B1FF0(a1);

  operator delete(v1);
}

void sub_2438B206C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_2438B181C(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    sub_2438BFCC0(v5);
  }
}

uint64_t sub_2438B20EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v27 = (a1 + 8);
  v28 = 0uLL;
  v29 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v29 = *(v5 + 16);
    v28 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v26, &v28);
  sub_2439657D8(v25, v26, 0);
  while (1)
  {
    v7 = *a2;
    if (*a2 >= *(a2 + 8))
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7;
      if (*v7 >= 1)
      {
        *a2 = v7 + 1;
        v9 = v8 | 0x100000000;
        if ((v9 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_10;
      }
    }

    v10 = sub_2439655D8(a2, v8);
    v9 = v10 | ((v10 - 1 < 0x7F) << 32);
    if ((v9 & 0x100000000) == 0)
    {
      break;
    }

LABEL_10:
    if (v9 != 10 || (v9 & 0xFFFFFFF8) != 8)
    {
      break;
    }

    v13 = *(a1 + 40);
    if (!v13)
    {
      v15 = *(a1 + 36);
LABEL_21:
      sub_243967234(a1 + 24, v15 + 1);
      v13 = *(a1 + 40);
      v15 = *v13;
      goto LABEL_22;
    }

    v14 = *(a1 + 32);
    v15 = *v13;
    if (v14 < *v13)
    {
      *(a1 + 32) = v14 + 1;
      v16 = *&v13[2 * v14 + 2];
      goto LABEL_23;
    }

    if (v15 == *(a1 + 36))
    {
      goto LABEL_21;
    }

LABEL_22:
    *v13 = v15 + 1;
    v16 = sub_2438BE940(*(a1 + 24));
    v17 = *(a1 + 32);
    v18 = *(a1 + 40) + 8 * v17;
    *(a1 + 32) = v17 + 1;
    *(v18 + 8) = v16;
LABEL_23:
    v19 = *a2;
    if (*a2 >= *(a2 + 8) || (v20 = *v19, (v20 & 0x80000000) != 0))
    {
      v20 = sub_243965380(a2);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *a2 = v19 + 1;
    }

    v21 = sub_243989C1C(a2, v20);
    v22 = v21;
    if ((v21 & 0x8000000000000000) != 0 || !sub_2438B187C(v16, a2))
    {
LABEL_31:
      v23 = 0;
      goto LABEL_33;
    }

    v12 = sub_243964938(a2, v22);
LABEL_30:
    if ((v12 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (v9)
  {
    v12 = sub_243967FF0(a2, v9, v25);
    goto LABEL_30;
  }

  v23 = 1;
LABEL_33:
  sub_243965918(v25);
  sub_2438BF88C(&v27);
  return v23;
}

void sub_2438B22EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B2314(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      sub_243969590(1, *(*(a1 + 40) + 8 * i + 8), a2);
    }
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  if (v7[23] < 0)
  {
    v7 = *v7;
  }

  if (v6)
  {
    v8 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v8 = &qword_27ED97020;
  }

  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    v9 = v8[1];
  }

  return sub_243965944(a2, v7, v9);
}

uint64_t sub_2438B23C4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &qword_27ED97020;
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = *(a1 + 32);
  v6 = v4 + v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = sub_2438B1D38(*(*(a1 + 40) + 8 * v7 + 8));
      v6 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      ++v7;
    }

    while (v5 != v7);
  }

  *(a1 + 20) = v6;
  return v6;
}

std::string *sub_2438B2468(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_243967130(&v3[1], v5);
    result = sub_2438BFD94(v3 + 1, v7, (v6 + 8), v5, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v8;
    v9 = v3[1].__r_.__value_.__r.__words[2];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

std::string *sub_2438B2504(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2438B206C(result);

    return sub_2438B2468(v4, a2);
  }

  return result;
}

uint64_t sub_2438B2568(uint64_t a1)
{
  *a1 = &unk_28569E108;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  if (atomic_load_explicit(dword_281AF40C0, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF40C0);
  }

  *(a1 + 40) = &qword_27ED97020;
  *(a1 + 48) = 0;
  return a1;
}

void sub_2438B25F0(_Unwind_Exception *a1)
{
  sub_2438AD72C(v1 + 24);
  sub_2438BF788(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B260C(uint64_t a1)
{
  *a1 = &unk_28569E108;
  sub_2438B2678(a1);
  if (*(a1 + 28) >= 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      if (!*v2)
      {
        operator delete(v2);
      }
    }
  }

  sub_2438BF788((a1 + 8));
  return a1;
}

void sub_2438B2678(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 != &qword_27ED97020 && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete(v1);
  }
}

void sub_2438B26E0(uint64_t a1)
{
  v1 = sub_2438B260C(a1);

  operator delete(v1);
}

void sub_2438B2708(uint64_t a1)
{
  *(a1 + 24) = 0;
  if (*(a1 + 16))
  {
    v1 = *(a1 + 40);
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

  v3 = *(a1 + 8);
  v2 = a1 + 8;
  *(v2 + 40) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {
    sub_2438BFCC0(v2);
  }
}

uint64_t sub_2438B2750(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v35 = (a1 + 8);
  v36 = 0uLL;
  v37 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v37 = *(v5 + 16);
    v36 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v34, &v36);
  sub_2439657D8(v33, v34, 0);
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_4:
        v7 = *a2;
        if (*a2 >= a2[1])
        {
          v8 = 0;
LABEL_9:
          v10 = sub_2439655D8(a2, v8);
          v9 = v10 | ((v10 - 1 < 0x7F) << 32);
          if ((v9 & 0x100000000) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_10;
        }

        v8 = *v7;
        if (*v7 < 1)
        {
          goto LABEL_9;
        }

        *a2 = (v7 + 1);
        v9 = v8 | 0x100000000;
        if ((v9 & 0x100000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_10:
        v11 = v9 >> 3;
        if (v9 >> 3 == 3)
        {
          if (v9 == 26)
          {
            *(a1 + 16) |= 1u;
            v27 = *(a1 + 40);
            if (v27 == &qword_27ED97020)
            {
              sub_2438BF924((a1 + 40), &qword_27ED97020);
              v27 = *(a1 + 40);
            }

            v28 = sub_243969704(a2, v27);
            goto LABEL_40;
          }

          goto LABEL_38;
        }

        if (v11 == 2)
        {
          break;
        }

        if (v11 != 1 || v9 != 8)
        {
          goto LABEL_38;
        }

        *(a1 + 16) |= 2u;
        v13 = *a2;
        if (*a2 >= a2[1])
        {
          v14 = 0;
          goto LABEL_48;
        }

        v14 = *v13;
        if (*v13 < 0)
        {
LABEL_48:
          v30 = sub_24396529C(a2, v14);
          *(a1 + 48) = v30;
          if (v30 < 0)
          {
            goto LABEL_51;
          }
        }

        else
        {
          *(a1 + 48) = v14;
          *a2 = (v13 + 1);
        }
      }

      if (v9 == 18)
      {
        v28 = sub_2438B2A84(a2, (a1 + 24));
        goto LABEL_40;
      }

      if (v9 != 17)
      {
        break;
      }

      v38 = 0;
      v15 = *a2;
      if ((*(a2 + 2) - *a2) < 8)
      {
        if (!sub_24396504C(a2, &v38))
        {
LABEL_51:
          v31 = 0;
          goto LABEL_53;
        }
      }

      else
      {
        v38 = *v15;
        *a2 = (v15 + 1);
      }

      v16 = *(a1 + 24);
      if (v16 == *(a1 + 28))
      {
        sub_2438BFA30((a1 + 24), v16 + 1);
        v16 = *(a1 + 24);
      }

      v17 = v38;
      v18 = *(a1 + 32) + 8 * v16;
      v19 = v16 + 1;
      *(a1 + 24) = v16 + 1;
      *(v18 + 8) = v17;
      v20 = *a2;
      v21 = *(a2 + 2) - *a2;
      if (v21 > 0)
      {
        v22 = v21 / 9u;
        if ((v21 / 9u) >= *(a1 + 28) - v19)
        {
          v22 = *(a1 + 28) - v19;
        }

        if (v22 >= 1)
        {
          v23 = 0;
          v24 = v16 + 2;
          v25 = 8 * v19 + 8;
          v26 = *a2;
          while (*v26 == 17)
          {
            v38 = *(v26 + 1);
            *(*(a1 + 32) + v25) = v38;
            ++v23;
            *(a1 + 24) = v24++;
            v25 += 8;
            v26 += 9;
            if (v22 == v23)
            {
              v23 = v22;
              goto LABEL_44;
            }
          }

          if (!v23)
          {
            goto LABEL_4;
          }

LABEL_44:
          v29 = 9 * v23;
          if (9 * v23 <= v21)
          {
            *a2 = v20 + v29;
          }

          else
          {
            sub_243964A9C(a2, v29, v21);
          }
        }
      }
    }

LABEL_38:
    if (!v9)
    {
      break;
    }

    v28 = sub_243967FF0(a2, v9, v33);
LABEL_40:
    if (!v28)
    {
      goto LABEL_51;
    }
  }

  v31 = 1;
LABEL_53:
  sub_243965918(v33);
  sub_2438BF88C(&v35);
  return v31;
}

void sub_2438B2A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

BOOL sub_2438B2A84(uint64_t a1, signed int *a2)
{
  v4 = *a1;
  if (*a1 >= *(a1 + 8) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    v5 = sub_243965380(a1);
    if ((v5 & 0x80000000) != 0)
    {
      return 0;
    }
  }

  else
  {
    *a1 = v4 + 1;
  }

  if ((v5 & 7) != 0)
  {
    return 0;
  }

  v7 = *a2;
  v8 = v5 >> 3;
  v9 = sub_2439649D0(a1);
  v10 = sub_243964994(a1);
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v9 == -1)
  {
    v11 = v10;
  }

  if (v11 < v5)
  {
    v20 = 0;
    if (v5 >= 8)
    {
      do
      {
        v12 = *a1;
        if ((*(a1 + 8) - *a1) < 8)
        {
          result = sub_24396504C(a1, &v20);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v20 = *v12;
          *a1 = v12 + 8;
        }

        v13 = *a2;
        if (*a2 == a2[1])
        {
          sub_2438BFA30(a2, v13 + 1);
          v13 = *a2;
        }

        v14 = v20;
        v15 = *(a2 + 1) + 8 * v13;
        *a2 = v13 + 1;
        *(v15 + 8) = v14;
        --v8;
      }

      while (v8);
    }

    return 1;
  }

  v16 = v7 + v8;
  if (*a2 < (v7 + v8))
  {
    sub_2438BFA30(a2, v7 + v8);
    v17 = *a2;
    v18 = v16 - v17;
    if (v18 >= 1)
    {
      bzero((*(a2 + 1) + 8 * v17 + 8), 8 * v18);
    }
  }

  *a2 = v16;
  if (a2[1] < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(a2 + 1) + 8;
  }

  if (sub_243964D70(a1, (v19 + 8 * v7), v5))
  {
    return 1;
  }

  if (*a2 < 1)
  {
    return 0;
  }

  result = 0;
  *a2 = v7;
  return result;
}

uint64_t sub_2438B2C4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if ((v4 & 2) != 0)
  {
    sub_243968790(1, *(a1 + 48), a2);
  }

  v5 = *(a1 + 24);
  if (v5 >= 1)
  {
    v6 = 8;
    do
    {
      sub_243968C18(2, *(*(a1 + 32) + v6), a2);
      v6 += 8;
      --v5;
    }

    while (v5);
  }

  if (v4)
  {
    sub_2439693C0(3, *(a1 + 40), a2);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v8 = &qword_27ED97020;
  }

  if (v8[23] < 0)
  {
    v8 = *v8;
  }

  if (v7)
  {
    v9 = (v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v9 = &qword_27ED97020;
  }

  v10 = *(v9 + 23);
  if (v10 < 0)
  {
    v10 = v9[1];
  }

  return sub_243965944(a2, v8, v10);
}

uint64_t sub_2438B2D30(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  v4 = v3 + *(a1 + 24) + 8 * *(a1 + 24);
  v5 = *(a1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = *(v6 + 23);
      v8 = *(v6 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v8 = v7;
      }

      v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v5 & 2) != 0)
    {
      v4 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  *(a1 + 20) = v4;
  return v4;
}

void *sub_2438B2DE4(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(result + 1, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(v3 + 6);
    sub_2438BFA30(v3 + 6, v6 + v5);
    v7 = v3[4] + 8 * v6;
    *(v3 + 6) += *(a2 + 24);
    result = memcpy((v7 + 8), (*(a2 + 32) + 8), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      result = v3 + 5;
      v9 = v3[5];
      *(v3 + 4) |= 1u;
      v10 = *(a2 + 40);
      if (v9 != v10)
      {
        if (v9 == &qword_27ED97020)
        {
          result = sub_2438BF924(result, v10);
          if ((v8 & 2) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }

        result = std::string::operator=(v9, v10);
      }
    }

    if ((v8 & 2) == 0)
    {
LABEL_12:
      *(v3 + 4) |= v8;
      return result;
    }

LABEL_11:
    *(v3 + 12) = *(a2 + 48);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_2438B2EF4(uint64_t a1)
{
  *a1 = &unk_28569E1A8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_281AF40D8, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF40D8);
  }

  return a1;
}

void sub_2438B2F74(_Unwind_Exception *a1)
{
  sub_2438BFD08(v2);
  sub_2438BF788(v1);
  _Unwind_Resume(a1);
}

void *sub_2438B2F98(void *a1)
{
  *a1 = &unk_28569E1A8;
  sub_2438BFD08(a1 + 3);
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438B2FEC(void *a1)
{
  v1 = sub_2438B2F98(a1);

  operator delete(v1);
}

void sub_2438B3014(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_2438B2708(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    sub_2438BFCC0(v5);
  }
}

uint64_t sub_2438B3094(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v27 = (a1 + 8);
  v28 = 0uLL;
  v29 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v29 = *(v5 + 16);
    v28 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v26, &v28);
  sub_2439657D8(v25, v26, 0);
  while (1)
  {
    v7 = *a2;
    if (*a2 >= *(a2 + 8))
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7;
      if (*v7 >= 1)
      {
        *a2 = v7 + 1;
        v9 = v8 | 0x100000000;
        if ((v9 & 0x100000000) == 0)
        {
          break;
        }

        goto LABEL_10;
      }
    }

    v10 = sub_2439655D8(a2, v8);
    v9 = v10 | ((v10 - 1 < 0x7F) << 32);
    if ((v9 & 0x100000000) == 0)
    {
      break;
    }

LABEL_10:
    if (v9 != 10 || (v9 & 0xFFFFFFF8) != 8)
    {
      break;
    }

    v13 = *(a1 + 40);
    if (!v13)
    {
      v15 = *(a1 + 36);
LABEL_21:
      sub_243967234(a1 + 24, v15 + 1);
      v13 = *(a1 + 40);
      v15 = *v13;
      goto LABEL_22;
    }

    v14 = *(a1 + 32);
    v15 = *v13;
    if (v14 < *v13)
    {
      *(a1 + 32) = v14 + 1;
      v16 = *&v13[2 * v14 + 2];
      goto LABEL_23;
    }

    if (v15 == *(a1 + 36))
    {
      goto LABEL_21;
    }

LABEL_22:
    *v13 = v15 + 1;
    v16 = sub_2438BEA68(*(a1 + 24));
    v17 = *(a1 + 32);
    v18 = *(a1 + 40) + 8 * v17;
    *(a1 + 32) = v17 + 1;
    *(v18 + 8) = v16;
LABEL_23:
    v19 = *a2;
    if (*a2 >= *(a2 + 8) || (v20 = *v19, (v20 & 0x80000000) != 0))
    {
      v20 = sub_243965380(a2);
      if ((v20 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *a2 = v19 + 1;
    }

    v21 = sub_243989C1C(a2, v20);
    v22 = v21;
    if ((v21 & 0x8000000000000000) != 0 || !sub_2438B2750(v16, a2))
    {
LABEL_31:
      v23 = 0;
      goto LABEL_33;
    }

    v12 = sub_243964938(a2, v22);
LABEL_30:
    if ((v12 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (v9)
  {
    v12 = sub_243967FF0(a2, v9, v25);
    goto LABEL_30;
  }

  v23 = 1;
LABEL_33:
  sub_243965918(v25);
  sub_2438BF88C(&v27);
  return v23;
}

void sub_2438B3294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B32BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      sub_243969590(1, *(*(a1 + 40) + 8 * i + 8), a2);
    }
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  if (v7[23] < 0)
  {
    v7 = *v7;
  }

  if (v6)
  {
    v8 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v8 = &qword_27ED97020;
  }

  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    v9 = v8[1];
  }

  return sub_243965944(a2, v7, v9);
}

uint64_t sub_2438B336C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &qword_27ED97020;
  if (v2)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v4 = v3[1];
  }

  v5 = *(a1 + 32);
  v6 = v4 + v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = sub_2438B2D30(*(*(a1 + 40) + 8 * v7 + 8));
      v6 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      ++v7;
    }

    while (v5 != v7);
  }

  *(a1 + 20) = v6;
  return v6;
}

std::string *sub_2438B3410(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_243967130(&v3[1], v5);
    result = sub_2438BFE54(&v3[1], v7, (v6 + 8), v5, *v3[1].__r_.__value_.__r.__words[2] - LODWORD(v3[1].__r_.__value_.__r.__words[1]));
    v8 = LODWORD(v3[1].__r_.__value_.__r.__words[1]) + v5;
    LODWORD(v3[1].__r_.__value_.__r.__words[1]) = v8;
    v9 = v3[1].__r_.__value_.__r.__words[2];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

void *sub_2438B34C4(void *a1)
{
  *a1 = &unk_28569E248;
  a1[1] = 0;
  a1[2] = 0;
  if (atomic_load_explicit(dword_281AF4028, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF4028);
  }

  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_2438B354C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569E248;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2438BFC64((a1 + 8), v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void *sub_2438B35DC(void *a1)
{
  *a1 = &unk_28569E248;
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438B3620(uint64_t *a1)
{
  *a1 = &unk_28569E248;
  sub_2438BF788(a1 + 1);

  operator delete(a1);
}

void sub_2438B3674(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  v1 = a1 + 8;
  *(v1 + 8) = 0;
  if (v2)
  {
    sub_2438BFCC0(v1);
  }
}

uint64_t sub_2438B3698(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v32 = (a1 + 8);
  v33 = 0uLL;
  v34 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v34 = *(v5 + 16);
    v33 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v31, &v33);
  sub_2439657D8(&v28, v31, 0);
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = *a2;
          if (*a2 >= a2[1])
          {
            v8 = 0;
LABEL_9:
            v10 = sub_2439655D8(a2, v8);
            v9 = v10 | ((v10 - 1 < 0x7F) << 32);
            if ((v9 & 0x100000000) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_10;
          }

          v8 = *v7;
          if (*v7 < 1)
          {
            goto LABEL_9;
          }

          *a2 = (v7 + 1);
          v9 = v8 | 0x100000000;
          if ((v9 & 0x100000000) == 0)
          {
            goto LABEL_29;
          }

LABEL_10:
          v11 = v9 >> 3;
          if (v9 >> 3 != 3)
          {
            break;
          }

          if (v9 != 24)
          {
            goto LABEL_29;
          }

          *(a1 + 16) |= 4u;
          v15 = *a2;
          if (*a2 >= a2[1] || (v17 = *v15, v17 < 0))
          {
            *(a1 + 32) = sub_2439650E0(a2);
            if ((v18 & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          else
          {
            *(a1 + 32) = v17;
LABEL_28:
            *a2 = (v15 + 1);
          }
        }

        if (v11 != 2)
        {
          break;
        }

        if (v9 != 16)
        {
          goto LABEL_29;
        }

        *(a1 + 16) |= 2u;
        v15 = *a2;
        if (*a2 >= a2[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = *v15;
          if ((*v15 & 0x80000000) == 0)
          {
            *(a1 + 28) = v16;
            goto LABEL_28;
          }
        }

        v19 = sub_24396529C(a2, v16);
        *(a1 + 28) = v19;
        if (v19 < 0)
        {
          goto LABEL_54;
        }
      }

      if (v11 != 1 || v9 != 8)
      {
        break;
      }

      v13 = *a2;
      if (*a2 >= a2[1])
      {
        LODWORD(v14) = 0;
      }

      else
      {
        LODWORD(v14) = *v13;
        if ((*v13 & 0x80000000) == 0)
        {
          *a2 = (v13 + 1);
          goto LABEL_39;
        }
      }

      v14 = sub_24396529C(a2, v14);
      if (v14 < 0)
      {
        goto LABEL_54;
      }

LABEL_39:
      if (sub_2438ABF14(v14))
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v14;
      }

      else
      {
        if (v30 < 5)
        {
          sub_243965B70(&v28, 8u);
          v20 = v30;
        }

        else
        {
          *v29++ = 8;
          v20 = --v30;
        }

        if (v20 < 5)
        {
          sub_243965B70(&v28, v14);
        }

        else
        {
          v21 = v29;
          if (v14 < 0x80)
          {
            LOBYTE(v23) = v14;
            v22 = v29;
          }

          else
          {
            v22 = v29;
            do
            {
              *v22++ = v14 | 0x80;
              v23 = v14 >> 7;
              v24 = v14 >> 14;
              LODWORD(v14) = v14 >> 7;
            }

            while (v24);
          }

          *v22 = v23;
          v25 = v22 - v21 + 1;
          v29 += v25;
          v30 -= v25;
        }
      }
    }

LABEL_29:
    if (!v9)
    {
      v26 = 1;
      goto LABEL_53;
    }
  }

  while (sub_243967FF0(a2, v9, &v28));
LABEL_54:
  v26 = 0;
LABEL_53:
  sub_243965918(&v28);
  sub_2438BF88C(&v32);
  return v26;
}

void sub_2438B3980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B39AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_243968670(1, *(a1 + 24), a2);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_243968790(2, *(a1 + 28), a2);
  if ((v4 & 4) != 0)
  {
LABEL_4:
    sub_2439688B0(3, *(a1 + 32), a2);
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  if (v5)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = v7[1];
  }

  return sub_243965944(a2, v6, v8);
}

uint64_t sub_2438B3A78(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  v4 = *(a1 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v3 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = *(a1 + 24);
  v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 11;
  }

  v3 += v8;
  if ((v4 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((v4 & 4) != 0)
  {
LABEL_9:
    v3 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_10:
  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_2438B3B44(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      LODWORD(v3[1].__r_.__value_.__l.__data_) = *(a2 + 24);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v5;
          return result;
        }

LABEL_7:
        v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    HIDWORD(v3[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return result;
}

std::string *sub_2438B3BC4(std::string *result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2438B3674(result);

    return sub_2438B3B44(v4, a2);
  }

  return result;
}

__n128 sub_2438B3C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  v3 = *(a1 + 28);
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = v3;
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  LODWORD(v4) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  v9 = *(a2 + 8);
  v7 = (a2 + 8);
  v8 = v9;
  if (v5)
  {
    if ((v8 & 1) == 0)
    {
      sub_2438BF7E4(v7);
      v10 = v15;
      v5 = *v6;
      if (*v6)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }

LABEL_5:
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if (v5)
    {
LABEL_6:
      v11 = (v5 & 0xFFFFFFFFFFFFFFFELL);
LABEL_7:
      v12 = v11[1].n128_u64[0];
      result = *v11;
      v14 = *(v10 + 16);
      *v11 = *v10;
      v11[1].n128_u64[0] = v14;
      *v10 = result;
      *(v10 + 16) = v12;
      return result;
    }

LABEL_9:
    sub_2438BF7E4(v6);
    goto LABEL_7;
  }

  if (v8)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_2438B3CF4(uint64_t a1)
{
  *a1 = &unk_28569E2E8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_281AF3F48, memory_order_acquire))
  {
    sub_2439644F4(dword_281AF3F48);
  }

  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t sub_2438B3D80(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28569E2E8;
  *(a1 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2438BFC64((a1 + 8), v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v5;
  return a1;
}

void *sub_2438B3E18(void *a1)
{
  *a1 = &unk_28569E2E8;
  sub_2438BF788(a1 + 1);
  return a1;
}

void sub_2438B3E5C(uint64_t *a1)
{
  *a1 = &unk_28569E2E8;
  sub_2438BF788(a1 + 1);

  operator delete(a1);
}

void sub_2438B3EB0(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  v1 = a1 + 8;
  *(v1 + 8) = 0;
  if (v2)
  {
    sub_2438BFCC0(v1);
  }
}

uint64_t sub_2438B3ED8(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v32 = (a1 + 8);
  v33 = 0uLL;
  v34 = 0;
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = *v5;
    v34 = *(v5 + 16);
    v33 = v6;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_243965F20(v31, &v33);
  sub_2439657D8(&v28, v31, 0);
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = *a2;
          if (*a2 >= a2[1])
          {
            v8 = 0;
LABEL_9:
            v10 = sub_2439655D8(a2, v8);
            v9 = v10 | ((v10 - 1 < 0x7F) << 32);
            if ((v9 & 0x100000000) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_10;
          }

          v8 = *v7;
          if (*v7 < 1)
          {
            goto LABEL_9;
          }

          *a2 = (v7 + 1);
          v9 = v8 | 0x100000000;
          if ((v9 & 0x100000000) == 0)
          {
            goto LABEL_29;
          }

LABEL_10:
          v11 = v9 >> 3;
          if (v9 >> 3 != 3)
          {
            break;
          }

          if (v9 != 24)
          {
            goto LABEL_29;
          }

          *(a1 + 16) |= 4u;
          v15 = *a2;
          if (*a2 >= a2[1])
          {
            v17 = 0;
            goto LABEL_36;
          }

          v17 = *v15;
          if (*v15 < 0)
          {
LABEL_36:
            v19 = sub_24396529C(a2, v17);
            *(a1 + 32) = v19;
            if (v19 < 0)
            {
              goto LABEL_55;
            }
          }

          else
          {
            *(a1 + 32) = v17;
LABEL_28:
            *a2 = (v15 + 1);
          }
        }

        if (v11 != 2)
        {
          break;
        }

        if (v9 != 16)
        {
          goto LABEL_29;
        }

        *(a1 + 16) |= 2u;
        v15 = *a2;
        if (*a2 >= a2[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = *v15;
          if ((*v15 & 0x80000000) == 0)
          {
            *(a1 + 28) = v16;
            goto LABEL_28;
          }
        }

        v18 = sub_24396529C(a2, v16);
        *(a1 + 28) = v18;
        if (v18 < 0)
        {
          goto LABEL_55;
        }
      }

      if (v11 != 1 || v9 != 8)
      {
        break;
      }

      v13 = *a2;
      if (*a2 >= a2[1])
      {
        LODWORD(v14) = 0;
      }

      else
      {
        LODWORD(v14) = *v13;
        if ((*v13 & 0x80000000) == 0)
        {
          *a2 = (v13 + 1);
          goto LABEL_40;
        }
      }

      v14 = sub_24396529C(a2, v14);
      if (v14 < 0)
      {
        goto LABEL_55;
      }

LABEL_40:
      if (v14 > 3)
      {
        if (v30 < 5)
        {
          sub_243965B70(&v28, 8u);
          v20 = v30;
        }

        else
        {
          *v29++ = 8;
          v20 = --v30;
        }

        if (v20 < 5)
        {
          sub_243965B70(&v28, v14);
        }

        else
        {
          v21 = v29;
          if (v14 < 0x80)
          {
            LOBYTE(v23) = v14;
            v22 = v29;
          }

          else
          {
            v22 = v29;
            do
            {
              *v22++ = v14 | 0x80;
              v23 = v14 >> 7;
              v24 = v14 >> 14;
              LODWORD(v14) = v14 >> 7;
            }

            while (v24);
          }

          *v22 = v23;
          v25 = v22 - v21 + 1;
          v29 += v25;
          v30 -= v25;
        }
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v14;
      }
    }

LABEL_29:
    if (!v9)
    {
      v26 = 1;
      goto LABEL_54;
    }
  }

  while (sub_243967FF0(a2, v9, &v28));
LABEL_55:
  v26 = 0;
LABEL_54:
  sub_243965918(&v28);
  sub_2438BF88C(&v32);
  return v26;
}

void sub_2438B41C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2438BF88C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438B41F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_243968670(1, *(a1 + 24), a2);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_243968790(2, *(a1 + 28), a2);
  if ((v4 & 4) != 0)
  {
LABEL_4:
    sub_243968790(3, *(a1 + 32), a2);
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = &qword_27ED97020;
  }

  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  if (v5)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = &qword_27ED97020;
  }

  v8 = *(v7 + 23);
  if (v8 < 0)
  {
    v8 = v7[1];
  }

  return sub_243965944(a2, v6, v8);
}

uint64_t sub_2438B42BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = &qword_27ED97020;
  if (v1)
  {
    v2 = (v1 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = v2[1];
  }

  v4 = *(a1 + 16);
  if ((v4 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v3 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = *(a1 + 24);
  v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 11;
  }

  v3 += v8;
  if ((v4 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((v4 & 4) != 0)
  {
LABEL_9:
    v3 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  *(a1 + 20) = v3;
  return v3;
}

std::string *sub_2438B438C(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2438BFC64(&result->__r_.__value_.__l.__size_, v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      LODWORD(v3[1].__r_.__value_.__l.__data_) = *(a2 + 24);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          LODWORD(v3->__r_.__value_.__r.__words[2]) |= v5;
          return result;
        }

LABEL_7:
        LODWORD(v3[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    HIDWORD(v3[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return result;
}