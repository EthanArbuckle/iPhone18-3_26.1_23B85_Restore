void sub_100059F24(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100059F84(exception, a1);
}

uint64_t sub_100059F84(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &off_1001835E0;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_100183568;
  *(a1 + 8) = off_100183598;
  *(a1 + 24) = off_1001835C0;
  return a1;
}

uint64_t sub_10005A030(uint64_t a1)
{
  *(a1 + 24) = &off_100183638;
  sub_10005A594((a1 + 32));
  std::out_of_range::~out_of_range((a1 + 8));
  return a1;
}

void sub_10005A280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_10005A594(va);
  sub_10005A594(va1);
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

void sub_10005A2EC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10005A5F0(exception, a1);
}

void sub_10005A348(uint64_t a1)
{
  *(a1 + 24) = &off_100183638;
  sub_10005A594((a1 + 32));
  std::out_of_range::~out_of_range((a1 + 8));

  operator delete();
}

void sub_10005A3BC(uint64_t a1)
{
  *(a1 + 16) = &off_100183638;
  sub_10005A594((a1 + 24));

  std::out_of_range::~out_of_range(a1);
}

void sub_10005A418(uint64_t a1)
{
  *(a1 + 16) = &off_100183638;
  sub_10005A594((a1 + 24));
  std::out_of_range::~out_of_range(a1);

  operator delete();
}

void sub_10005A490(void *a1)
{
  *a1 = &off_100183638;
  v1 = (a1 - 2);
  sub_10005A594(a1 + 1);

  std::out_of_range::~out_of_range(v1);
}

void sub_10005A4E8(void *a1)
{
  *a1 = &off_100183638;
  v1 = (a1 - 2);
  sub_10005A594(a1 + 1);
  std::out_of_range::~out_of_range(v1);

  operator delete();
}

void sub_10005A55C(std::out_of_range *a1)
{
  std::out_of_range::~out_of_range(a1);

  operator delete();
}

uint64_t *sub_10005A594(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_10005A5F0(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1001835E0;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_100183610;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100183638;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_100183568;
  *(a1 + 8) = off_100183598;
  *(a1 + 24) = off_1001835C0;
  return a1;
}

uint64_t sub_10005A72C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

std::logic_error *sub_10005A7C4(std::logic_error *a1)
{
  sub_10000459C(&__p, "Year is out of valid range: 1400..9999");
  std::logic_error::logic_error(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &off_100183610;
  return a1;
}

void sub_10005A880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_WORD *sub_10005A8A4(_WORD *result, unsigned int a2)
{
  if (!a2)
  {
    v3 = *result;
LABEL_4:
    sub_10005A8D0();
  }

  if (a2 >= 0xD)
  {
    v2 = *result;
    goto LABEL_4;
  }

  *result = a2;
  return result;
}

void sub_10005A924(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10005A984(exception, a1);
}

uint64_t sub_10005A984(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &off_1001835E0;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_1001836B8;
  *(a1 + 8) = off_1001836E8;
  *(a1 + 24) = off_100183710;
  return a1;
}

uint64_t sub_10005AA30(uint64_t a1)
{
  *(a1 + 24) = &off_100183638;
  sub_10005A594((a1 + 32));
  std::out_of_range::~out_of_range((a1 + 8));
  return a1;
}

void sub_10005AC80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_10005A594(va);
  sub_10005A594(va1);
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

void sub_10005ACEC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10005AF94(exception, a1);
}

void sub_10005AD48(uint64_t a1)
{
  *(a1 + 24) = &off_100183638;
  sub_10005A594((a1 + 32));
  std::out_of_range::~out_of_range((a1 + 8));

  operator delete();
}

void sub_10005ADBC(uint64_t a1)
{
  *(a1 + 16) = &off_100183638;
  sub_10005A594((a1 + 24));

  std::out_of_range::~out_of_range(a1);
}

void sub_10005AE18(uint64_t a1)
{
  *(a1 + 16) = &off_100183638;
  sub_10005A594((a1 + 24));
  std::out_of_range::~out_of_range(a1);

  operator delete();
}

void sub_10005AE90(void *a1)
{
  *a1 = &off_100183638;
  v1 = (a1 - 2);
  sub_10005A594(a1 + 1);

  std::out_of_range::~out_of_range(v1);
}

void sub_10005AEE8(void *a1)
{
  *a1 = &off_100183638;
  v1 = (a1 - 2);
  sub_10005A594(a1 + 1);
  std::out_of_range::~out_of_range(v1);

  operator delete();
}

void sub_10005AF5C(std::out_of_range *a1)
{
  std::out_of_range::~out_of_range(a1);

  operator delete();
}

uint64_t sub_10005AF94(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1001835E0;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_100183730;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100183638;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_1001836B8;
  *(a1 + 8) = off_1001836E8;
  *(a1 + 24) = off_100183710;
  return a1;
}

std::logic_error *sub_10005B0D0(std::logic_error *a1)
{
  sub_10000459C(&__p, "Month number is out of range 1..12");
  std::logic_error::logic_error(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &off_100183730;
  return a1;
}

void sub_10005B18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_WORD *sub_10005B1B0(_WORD *result, unsigned int a2)
{
  if (!a2)
  {
    v3 = *result;
LABEL_4:
    sub_10005B1DC();
  }

  if (a2 >= 0x20)
  {
    v2 = *result;
    goto LABEL_4;
  }

  *result = a2;
  return result;
}

void sub_10005B230(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10005B290(exception, a1);
}

uint64_t sub_10005B290(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &off_1001835E0;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_1001837B8;
  *(a1 + 8) = off_1001837E8;
  *(a1 + 24) = off_100183810;
  return a1;
}

uint64_t sub_10005B33C(uint64_t a1)
{
  *(a1 + 24) = &off_100183638;
  sub_10005A594((a1 + 32));
  std::out_of_range::~out_of_range((a1 + 8));
  return a1;
}

void sub_10005B58C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_10005A594(va);
  sub_10005A594(va1);
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

void sub_10005B5F8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10005B8A0(exception, a1);
}

void sub_10005B654(uint64_t a1)
{
  *(a1 + 24) = &off_100183638;
  sub_10005A594((a1 + 32));
  std::out_of_range::~out_of_range((a1 + 8));

  operator delete();
}

void sub_10005B6C8(uint64_t a1)
{
  *(a1 + 16) = &off_100183638;
  sub_10005A594((a1 + 24));

  std::out_of_range::~out_of_range(a1);
}

void sub_10005B724(uint64_t a1)
{
  *(a1 + 16) = &off_100183638;
  sub_10005A594((a1 + 24));
  std::out_of_range::~out_of_range(a1);

  operator delete();
}

void sub_10005B79C(void *a1)
{
  *a1 = &off_100183638;
  v1 = (a1 - 2);
  sub_10005A594(a1 + 1);

  std::out_of_range::~out_of_range(v1);
}

void sub_10005B7F4(void *a1)
{
  *a1 = &off_100183638;
  v1 = (a1 - 2);
  sub_10005A594(a1 + 1);
  std::out_of_range::~out_of_range(v1);

  operator delete();
}

void sub_10005B868(std::out_of_range *a1)
{
  std::out_of_range::~out_of_range(a1);

  operator delete();
}

uint64_t sub_10005B8A0(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1001835E0;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_100183830;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100183638;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_1001837B8;
  *(a1 + 8) = off_1001837E8;
  *(a1 + 24) = off_100183810;
  return a1;
}

std::logic_error *sub_10005B9DC(std::logic_error *a1)
{
  sub_10000459C(&__p, "Day of month value is out of range 1..31");
  std::logic_error::logic_error(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &off_100183830;
  return a1;
}

void sub_10005BA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_10005BABC(_DWORD *result, unsigned __int16 a2, unsigned __int16 a3, unsigned __int16 a4)
{
  v4 = (14 - a3) / 12;
  *result = 365 * (a2 - v4 + 4800) + a4 + ((a2 - v4 + 4800) >> 2) - (a2 - v4 + 4800) / 0x64u + (a2 - v4 + 4800) / 0x190u + ((858993460 * (153 * (a3 + 12 * v4 - 3) + 2)) >> 32) - 32045;
  if (a3 > 0xBu)
  {
    goto LABEL_14;
  }

  if (((1 << a3) & 0xA50) != 0)
  {
    v5 = 30;
    goto LABEL_4;
  }

  if (a3 == 2)
  {
    v5 = 28;
    if ((a2 & 3) == 0)
    {
      HIDWORD(v7) = -1030792151 * a2;
      LODWORD(v7) = HIDWORD(v7);
      v6 = v7 >> 2;
      LODWORD(v7) = HIDWORD(v7);
      if ((v7 >> 4) < 0xA3D70B || v6 > 0x28F5C28)
      {
        v5 = 29;
      }

      else
      {
        v5 = 28;
      }
    }
  }

  else
  {
LABEL_14:
    v5 = 31;
  }

LABEL_4:
  if (v5 < a4)
  {
    sub_10000459C(&v9, "Day of month is not valid for year");
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = &off_100183830;
    sub_10005B230(&v10);
  }

  return result;
}

void sub_10005BC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::out_of_range a15)
{
  std::out_of_range::~out_of_range(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005BCA8(unsigned int *a1, int *a2)
{
  result = *a1;
  if ((result + 2) >= 3)
  {
    v3 = *a2;
    if ((*a2 + 2) >= 3)
    {
      return (result - v3);
    }
  }

  else
  {
    if (result == -2)
    {
      return result;
    }

    v3 = *a2;
  }

  if (v3 == -2)
  {
    return 4294967294;
  }

  if (!result)
  {
    if (!v3)
    {
      return 4294967294;
    }

    return result;
  }

  if (result != -1)
  {
    if (v3 == -1)
    {
      return 0;
    }

    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }

    return (result - v3);
  }

  if (v3 == -1)
  {
    return 4294967294;
  }

  return result;
}

unint64_t sub_10005BD2C()
{
  v9.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *&v0 = 0xAAAAAAAAAAAAAAAALL;
  *(&v0 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v9.tm_mon = v0;
  *&v9.tm_isdst = v0;
  *&v9.tm_sec = v0;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  time(&v10);
  v1 = gmtime_r(&v10, &v9);
  v2 = v1;
  if (!v1)
  {
    v7 = std::runtime_error::runtime_error(&v11, "could not convert calendar time to UTC time");
    sub_10005BE40(v7);
  }

  v3 = LOWORD(v1->tm_year) + 1900;
  LOWORD(v11.__vftable) = 1400;
  sub_100059E9C(&v11, v3);
  v4 = LOWORD(v2->tm_mon) + 1;
  LOWORD(v10) = 1;
  sub_10005A8A4(&v10, v4);
  tm_mday_low = LOWORD(v2->tm_mday);
  v8 = 1;
  sub_10005B1B0(&v8, tm_mday_low);
  return LOWORD(v11.__vftable) | (v10 << 16) | (v8 << 32);
}

void sub_10005BE40(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10005BE9C(exception, a1);
}

uint64_t sub_10005BE9C(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &off_1001835E0;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_1001838A0;
  *(a1 + 8) = off_1001838D0;
  *(a1 + 24) = off_1001838F8;
  return a1;
}

uint64_t sub_10005BF48(uint64_t a1)
{
  *(a1 + 24) = &off_100183638;
  sub_10005A594((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_10005C17C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_10005A594(va);
  sub_10005A594(va1);
  (*(*v2 + 24))(v2);
  _Unwind_Resume(a1);
}

void sub_10005C1E8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10005C458(exception, a1);
}

void sub_10005C244(uint64_t a1)
{
  *(a1 + 24) = &off_100183638;
  sub_10005A594((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  operator delete();
}

void sub_10005C2B8(uint64_t a1)
{
  *(a1 + 16) = &off_100183638;
  sub_10005A594((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

void sub_10005C314(uint64_t a1)
{
  *(a1 + 16) = &off_100183638;
  sub_10005A594((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

void sub_10005C38C(void *a1)
{
  *a1 = &off_100183638;
  v1 = (a1 - 2);
  sub_10005A594(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void sub_10005C3E4(void *a1)
{
  *a1 = &off_100183638;
  v1 = (a1 - 2);
  sub_10005A594(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  operator delete();
}

uint64_t sub_10005C458(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1001835E0;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100183638;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_1001838A0;
  *(a1 + 8) = off_1001838D0;
  *(a1 + 24) = off_1001838F8;
  return a1;
}

void *sub_10005C624(void *result, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v7 = a2[1];
  *result = *a2;
  result[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a3[1];
  result[2] = *a3;
  result[3] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a4[1];
  result[4] = *a4;
  result[5] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a5[1];
  result[6] = *a5;
  result[7] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a6[1];
  result[8] = *a6;
  result[9] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a7[1];
  result[10] = *a7;
  result[11] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10005C6B8(uint64_t a1, unsigned __int8 *a2)
{
  v13 = "configType";
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v3;
  v11[1] = v3;
  sub_10000BD10(a2, &v13, v11);
  v10[0] = a2;
  memset(&v10[1], 0, 24);
  v10[4] = 0x8000000000000000;
  sub_10000DCFC(v10);
  if (sub_10000DD7C(v11, v10))
  {
    v4 = sub_100016CD8();
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = sub_10000DB44(v11);
  }

  if (*v4 == 3)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v6 = *(v5 + 23);
      if (v6 < 0)
      {
        if (v5[1] != 6)
        {
          goto LABEL_16;
        }

        v5 = *v5;
      }

      else if (v6 != 6)
      {
        goto LABEL_16;
      }

      v7 = *v5;
      v8 = *(v5 + 2);
      if (v7 == 1333030991 && v8 == 29813)
      {
        sub_10005C934();
      }
    }
  }

LABEL_16:
  sub_10005CAE0();
}

void sub_10005C85C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100183918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10005C8B0(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    sub_10000786C(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    sub_10000786C(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    sub_10000786C(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    sub_10000786C(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    sub_10000786C(v6);
  }

  v7 = a1[4];
  if (v7)
  {

    sub_10000786C(v7);
  }
}

void *sub_10005C9E8(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100183968;
  sub_100043D60(a1 + 3, a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_10005CA64(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100183968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10005CB94(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001839B8;
  sub_100070F04(a1 + 3, a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_10005CC10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1001839B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10005CC8C(uint64_t a1)
{
  *a1 = off_100183A08;
  v2 = 5489;
  *(a1 + 8) = 5489;
  v3 = (a1 + 8);
  v4 = 1;
  for (i = 3; i != 626; ++i)
  {
    v6 = 1812433253 * (v2 ^ (v2 >> 30));
    v2 = v6 + v4;
    *(a1 + 4 * i) = i + v6 - 2;
    ++v4;
  }

  *(a1 + 2504) = 0;
  v10.__padding_ = -1431655766;
  sub_10005CDD0(&v10);
  v7 = std::random_device::operator()(&v10);
  LODWORD(__src[0]) = v7;
  for (j = 1; j != 624; ++j)
  {
    v7 = j + 1812433253 * (v7 ^ (v7 >> 30));
    *(__src + j) = v7;
  }

  __src[312] = 0;
  memcpy(v3, __src, 0x9C8uLL);
  std::random_device::~random_device(&v10);
  return a1;
}

std::random_device *sub_10005CDD0(std::random_device *a1)
{
  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "/dev/urandom");
  std::random_device::random_device(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_10005CE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10005CE88(uint64_t a1, int a2, int a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_10005CF00(v4, a1 + 8, v4);
}

uint64_t sub_10005CF00(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {

      return sub_10005CFBC(a2);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 31;
      if (((v6 << v8) & 0x7FFFFFFF) != 0)
      {
        v9 = 32;
      }

      v10 = v9 - v8;
      v11 = v10 >> 5;
      if ((v10 & 0x1F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFF >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = sub_10005CFBC(a2) & v12;
      }

      while (v13 >= v6);
      return *a3 + v13;
    }
  }

  return result;
}

uint64_t sub_10005CFBC(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(a1 + 4 * v2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(a1 + 4 * ((v1 + 397) % 0x270uLL)) ^ ((v3 & 0x7FFFFFFE | *(a1 + 4 * v1) & 0x80000000) >> 1);
  *(a1 + 4 * v1) = v5;
  *(a1 + 2496) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t sub_10005D05C(int a1, sqlite3 *a2)
{
  if (a2)
  {
    return sqlite3_close(a2);
  }

  return result;
}

uint64_t sub_10005D06C(int a1, sqlite3_stmt *pStmt)
{
  if (pStmt)
  {
    return sqlite3_finalize(pStmt);
  }

  return result;
}

BOOL sub_10005D07C(uint64_t a1)
{
  if (*(a1 + 9) != 1 || (*(a1 + 8) & 1) != 0)
  {
    return 0;
  }

  if (!sqlite3_exec(*a1, "ROLLBACK;", 0, 0, 0))
  {
    result = 1;
    *(a1 + 8) = 1;
    return result;
  }

  v3 = *a1;
  v4 = qword_100192D80;
  result = os_log_type_enabled(qword_100192D80, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (result)
    {
      v12 = sqlite3_errmsg(v3);
      sub_10011BEE4(v12, &v13, v4);
      return 0;
    }
  }

  else if (result)
  {
    sub_10011BF20(v4, v5, v6, v7, v8, v9, v10, v11);
    return 0;
  }

  return result;
}

void sub_10005D164(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10002C628(a1);
}

uint64_t sub_10005D170(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__int128 *sub_10005D1A4()
{
  if (qword_100192B28 != -1)
  {
    sub_10011C024();
  }

  return &xmmword_100192B10;
}

void sub_10005D2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005D2C4()
{
  if (qword_100192B28 != -1)
  {
    sub_10011C024();
  }

  if (byte_100192B27 < 0)
  {
    sub_1000078D8(__p, xmmword_100192B10, *(&xmmword_100192B10 + 1));
  }

  else
  {
    *__p = xmmword_100192B10;
    v2 = unk_100192B20;
  }

  sub_10005FCAC(&v0, "devTaskedConfig.json");
}

uint64_t sub_10005D3F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10002B200();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_10005D438(std::string *a1@<X8>)
{
  if (qword_100192B28 != -1)
  {
    sub_10011C024();
  }

  sub_10000459C(__p, "events.allowlist");
  memset(a1, 170, sizeof(std::string));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(a1, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *byte_100192B10;
    a1->__r_.__value_.__r.__words[2] = *&byte_100192B10[16];
  }

  sub_1001186E4(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10005D518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005D554(std::string *a1@<X8>)
{
  if (qword_100192B28 != -1)
  {
    sub_10011C024();
  }

  sub_10000459C(__p, "events.whitelist");
  memset(a1, 170, sizeof(std::string));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(a1, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *byte_100192B10;
    a1->__r_.__value_.__r.__words[2] = *&byte_100192B10[16];
  }

  sub_1001186E4(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10005D634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005D670(std::string *a1@<X8>)
{
  if (qword_100192B28 != -1)
  {
    sub_10011C024();
  }

  sub_10000459C(__p, "currentConfiguration.json");
  memset(a1, 170, sizeof(std::string));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(a1, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *byte_100192B10;
    a1->__r_.__value_.__r.__words[2] = *&byte_100192B10[16];
  }

  sub_1001186E4(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10005D750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005D78C(std::string *a1@<X8>)
{
  if (qword_100192B28 != -1)
  {
    sub_10011C024();
  }

  sub_10000459C(__p, "journals");
  memset(a1, 170, sizeof(std::string));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(a1, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *byte_100192B10;
    a1->__r_.__value_.__r.__words[2] = *&byte_100192B10[16];
  }

  sub_1001186E4(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10005D86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005D8A8(std::string *a1@<X8>)
{
  if (qword_100192B28 != -1)
  {
    sub_10011C024();
  }

  sub_10000459C(__p, "state");
  memset(a1, 170, sizeof(std::string));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(a1, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *byte_100192B10;
    a1->__r_.__value_.__r.__words[2] = *&byte_100192B10[16];
  }

  sub_1001186E4(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10005D988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005D9C4(std::string *a1@<X8>)
{
  if (qword_100192B28 != -1)
  {
    sub_10011C024();
  }

  sub_10000459C(__p, "identity/budget_info.json");
  memset(a1, 170, sizeof(std::string));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(a1, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *byte_100192B10;
    a1->__r_.__value_.__r.__words[2] = *&byte_100192B10[16];
  }

  sub_1001186E4(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10005DAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005DAE0(std::string *a1@<X8>)
{
  if (qword_100192B28 != -1)
  {
    sub_10011C024();
  }

  sub_10000459C(__p, "identity/budget_info.stage");
  memset(a1, 170, sizeof(std::string));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(a1, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *byte_100192B10;
    a1->__r_.__value_.__r.__words[2] = *&byte_100192B10[16];
  }

  sub_1001186E4(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10005DBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005DBFC(void *a1@<X8>)
{
  if (qword_100192B28 != -1)
  {
    sub_10011C024();
  }

  sub_10000459C(v7, "aggregates");
  memset(&__dst, 170, sizeof(__dst));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&__dst, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    __dst = *byte_100192B10;
  }

  sub_1001186E4(&__dst, v7);
  sub_10000459C(v5, "reservoirs");
  memset(&v10, 170, sizeof(v10));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&v10, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    v10 = *byte_100192B10;
  }

  sub_1001186E4(&v10, v5);
  sub_10000459C(__p, "identity");
  memset(&v11, 170, sizeof(v11));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&v11, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    v11 = *byte_100192B10;
  }

  sub_1001186E4(&v11, __p);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_10006F448(a1, &__dst, &v12, 3uLL);
  for (i = 0; i != -9; i -= 3)
  {
    if (SHIBYTE(v11.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v11.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_10005DDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  while (v45 != &a28)
  {
    v47 = *(v45 - 1);
    v45 -= 3;
    if (v47 < 0)
    {
      operator delete(*v45);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_10005DF0C(void *a1@<X8>)
{
  if (qword_100192B28 != -1)
  {
    sub_10011C024();
  }

  sub_10000459C(v45, "aggregates");
  memset(&__dst, 170, sizeof(__dst));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&__dst, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    __dst = *byte_100192B10;
  }

  sub_1001186E4(&__dst, v45);
  sub_10000459C(v43, "Daily");
  sub_1001186E4(&__dst, v43);
  v48[0] = __dst;
  memset(&__dst, 0, sizeof(__dst));
  sub_10000459C(v40, "aggregates");
  memset(&v42, 170, sizeof(v42));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&v42, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    v42 = *byte_100192B10;
  }

  sub_1001186E4(&v42, v40);
  sub_10000459C(v38, "90Day");
  sub_1001186E4(&v42, v38);
  v48[1] = v42;
  memset(&v42, 0, sizeof(v42));
  sub_10000459C(v35, "aggregates");
  memset(&v37, 170, sizeof(v37));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&v37, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    v37 = *byte_100192B10;
  }

  sub_1001186E4(&v37, v35);
  sub_10000459C(v33, "Never");
  sub_1001186E4(&v37, v33);
  v48[2] = v37;
  memset(&v37, 0, sizeof(v37));
  sub_10000459C(v30, "reservoirs");
  memset(&v32, 170, sizeof(v32));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&v32, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    v32 = *byte_100192B10;
  }

  sub_1001186E4(&v32, v30);
  sub_10000459C(v28, "Daily");
  sub_1001186E4(&v32, v28);
  v48[3] = v32;
  memset(&v32, 0, sizeof(v32));
  sub_10000459C(v25, "reservoirs");
  memset(&v27, 170, sizeof(v27));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&v27, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    v27 = *byte_100192B10;
  }

  sub_1001186E4(&v27, v25);
  sub_10000459C(v23, "90Day");
  sub_1001186E4(&v27, v23);
  v48[4] = v27;
  memset(&v27, 0, sizeof(v27));
  sub_10000459C(v20, "reservoirs");
  memset(&v22, 170, sizeof(v22));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&v22, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    v22 = *byte_100192B10;
  }

  sub_1001186E4(&v22, v20);
  sub_10000459C(v18, "Never");
  sub_1001186E4(&v22, v18);
  v48[5] = v22;
  memset(&v22, 0, sizeof(v22));
  sub_10000459C(v15, "identity");
  memset(&v17, 170, sizeof(v17));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&v17, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    v17 = *byte_100192B10;
  }

  sub_1001186E4(&v17, v15);
  sub_10000459C(v13, "Daily");
  sub_1001186E4(&v17, v13);
  v48[6] = v17;
  memset(&v17, 0, sizeof(v17));
  sub_10000459C(v10, "identity");
  memset(&v12, 170, sizeof(v12));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&v12, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    v12 = *byte_100192B10;
  }

  sub_1001186E4(&v12, v10);
  sub_10000459C(v8, "90Day");
  sub_1001186E4(&v12, v8);
  v48[7] = v12;
  memset(&v12, 0, sizeof(v12));
  sub_10000459C(v5, "identity");
  memset(&v7, 170, sizeof(v7));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&v7, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    v7 = *byte_100192B10;
  }

  sub_1001186E4(&v7, v5);
  sub_10000459C(__p, "Never");
  sub_1001186E4(&v7, __p);
  v49 = v7;
  memset(&v7, 0, sizeof(v7));
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  sub_10006F448(a1, v48, &v50, 9uLL);
  for (i = 0; i != -27; i -= 3)
  {
    if (SHIBYTE(v49.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v49.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }
}

void sub_10005E684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (a81 < 0)
  {
    operator delete(a80);
  }

  if (a85 < 0)
  {
    operator delete(a84);
  }

  if (a83 < 0)
  {
    operator delete(a82);
  }

  if (a87 < 0)
  {
    operator delete(a86);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a88);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
  }

  while (v88 != &STACK[0x2D0])
  {
    v90 = *(v88 - 1);
    v88 -= 3;
    if (v90 < 0)
    {
      operator delete(*v88);
    }
  }

  _Unwind_Resume(a1);
}

void sub_10005E9A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10005E860);
}

void sub_10005E9D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10005E890);
}

void sub_10005EA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a70 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10005E8C0);
}

void sub_10005EA48()
{
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  JUMPOUT(0x10005E8F0);
}

void sub_10005EA80()
{
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  JUMPOUT(0x10005E920);
}

void sub_10005EAC8()
{
  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  JUMPOUT(0x10005E950);
}

void sub_10005EAF0(void *a1@<X8>)
{
  if (qword_100192B28 != -1)
  {
    sub_10011C024();
  }

  sub_10000459C(v11, "aggregate_persist_temp");
  memset(&__dst, 170, sizeof(__dst));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&__dst, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    __dst = *byte_100192B10;
  }

  sub_1001186E4(&__dst, v11);
  sub_10000459C(v9, "aggregate_resume_stage");
  memset(&v14, 170, sizeof(v14));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&v14, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    v14 = *byte_100192B10;
  }

  sub_1001186E4(&v14, v9);
  sub_10000459C(v7, "reservoir_persist_temp");
  memset(&v15, 170, sizeof(v15));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&v15, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    v15 = *byte_100192B10;
  }

  sub_1001186E4(&v15, v7);
  sub_10000459C(v5, "reservoir_resume_stage");
  memset(&v16, 170, sizeof(v16));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&v16, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    v16 = *byte_100192B10;
  }

  sub_1001186E4(&v16, v5);
  sub_10000459C(__p, "identity_persist_temp");
  memset(&v17, 170, sizeof(v17));
  if (byte_100192B10[23] < 0)
  {
    sub_1000078D8(&v17, *byte_100192B10, *&byte_100192B10[8]);
  }

  else
  {
    v17 = *byte_100192B10;
  }

  sub_1001186E4(&v17, __p);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_10006F448(a1, &__dst, &v18, 5uLL);
  for (i = 0; i != -15; i -= 3)
  {
    if (SHIBYTE(v17.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v17.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_10005EDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  while (v40 != &a40)
  {
    v42 = *(v40 - 1);
    v40 -= 3;
    if (v42 < 0)
    {
      operator delete(*v40);
    }
  }

  _Unwind_Resume(a1);
}

void sub_10005EF48(std::string *a1@<X8>)
{
  if (qword_100192B28 != -1)
  {
    sub_10011C024();
  }

  sub_10000459C(__p, "config.sqlite");
  memset(a1, 170, sizeof(std::string));
  if (byte_100192B27 < 0)
  {
    sub_1000078D8(a1, xmmword_100192B10, *(&xmmword_100192B10 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_100192B10;
    a1->__r_.__value_.__r.__words[2] = unk_100192B20;
  }

  sub_1001186E4(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10005F028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005F064(std::string *a1@<X8>)
{
  if (qword_100192B28 != -1)
  {
    sub_10011C024();
  }

  sub_10000459C(__p, "state.sqlite");
  memset(a1, 170, sizeof(std::string));
  if (byte_100192B27 < 0)
  {
    sub_1000078D8(a1, xmmword_100192B10, *(&xmmword_100192B10 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_100192B10;
    a1->__r_.__value_.__r.__words[2] = unk_100192B20;
  }

  sub_1001186E4(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10005F144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005F180(void *a1@<X8>)
{
  v2 = +[OSASystemConfiguration sharedInstance];
  v3 = [v2 pathCATasking];

  if (v3)
  {
    memset(__p, 170, sizeof(__p));
    sub_10000459C(__p, [v3 fileSystemRepresentation]);
    sub_10005FCAC(&v5, "taskedConfig.*\\.json");
  }

  v4 = qword_100192BB0;
  if (os_log_type_enabled(qword_100192BB0, OS_LOG_TYPE_FAULT))
  {
    sub_10011C038(v4);
  }

  a1[2] = 0;
  a1[3] = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[4] = 0;
}

void sub_10005F2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10005F300(_BYTE *a1@<X8>)
{
  v3 = +[OSASystemConfiguration sharedInstance];
  v2 = [v3 buildVersion];
  sub_10000459C(a1, [v2 UTF8String]);
}

void sub_10005F394(_BYTE *a1@<X8>)
{
  v6 = +[OSASystemConfiguration sharedInstance];
  v2 = [v6 productName];
  v3 = +[OSASystemConfiguration sharedInstance];
  v4 = [v3 productVersion];
  v5 = [NSString stringWithFormat:@"%@ %@", v2, v4];
  sub_10000459C(a1, [v5 UTF8String]);
}

void sub_10005F4A8(_BYTE *a1@<X8>)
{
  v6 = +[OSASystemConfiguration sharedInstance];
  v2 = [v6 buildVersion];
  v3 = +[OSASystemConfiguration sharedInstance];
  v4 = [v3 targetAudience];
  v5 = [NSString stringWithFormat:@"%@-%@", v2, v4];
  sub_10000459C(a1, [v5 UTF8String]);
}

void sub_10005F5BC(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = a1;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      goto LABEL_7;
    }

LABEL_6:
    v10 = [NSString stringWithUTF8String:v4];
    goto LABEL_8;
  }

  if (a1[1])
  {
    v4 = *a1;
    goto LABEL_6;
  }

LABEL_7:
  v10 = @"??? ???";
LABEL_8:
  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
LABEL_15:
      v8 = @"???";
      goto LABEL_17;
    }

    a2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    goto LABEL_15;
  }

  v6 = [NSString stringWithUTF8String:a2];
  if ([(__CFString *)v6 containsString:@"-"])
  {
    v7 = [(__CFString *)v6 componentsSeparatedByString:@"-"];
    v8 = [v7 firstObject];
  }

  else
  {
    v8 = v6;
  }

LABEL_17:
  v9 = [NSString stringWithFormat:@"%@ (%@)", v10, v8];
  sub_10000459C(a3, [v9 UTF8String]);
}

uint64_t sub_10005F764(const std::chrono::system_clock::time_point *a1)
{
  std::chrono::system_clock::to_time_t(a1);
  OSATimeIntervalApproximate();
  v2.__d_.__rep_ = std::chrono::system_clock::from_time_t(v1).__d_.__rep_;

  return sub_100024608(v2.__d_.__rep_);
}

uint64_t sub_10005F7B4()
{
  memset(&v2, 0, sizeof(v2));
  v1 = time(0);
  localtime_r(&v1, &v2);
  return v2.tm_gmtoff;
}

uint64_t sub_10005F828()
{
  *v6 = 0x1500000001;
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v3 = 16;
  v0 = sysctl(v6, 2u, &v4, &v3, 0, 0);
  if (v4)
  {
    v1 = v0 == -1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  else
  {
    return v5 + 1000000 * v4;
  }
}

std::chrono::duration<long long, std::ratio<1, 1000000>>::rep sub_10005F8C8()
{
  *v4 = 0xE00000001;
  v5 = 1;
  v6 = getpid();
  memset(__b, 170, sizeof(__b));
  v2 = 648;
  if (sysctl(v4, 4u, __b, &v2, 0, 0) < 0)
  {
    return -1;
  }

  rep = std::chrono::system_clock::now().__d_.__rep_;
  return (rep - std::chrono::system_clock::from_time_t(__b[0]).__d_.__rep_) / 1000000;
}

std::chrono::duration<long long, std::ratio<1, 1000000>>::rep sub_10005F9A0()
{
  v0 = sub_10005F828();
  if (v0 < 1)
  {
    v4 = qword_100192BB0;
    if (os_log_type_enabled(qword_100192BB0, OS_LOG_TYPE_ERROR))
    {
      sub_10011C0A8(v4);
    }

    return -1;
  }

  else
  {
    v1 = v0;
    rep = std::chrono::system_clock::now().__d_.__rep_;
    return (rep - std::chrono::system_clock::from_time_t(v1 / 0xF4240).__d_.__rep_) / 1000000;
  }
}

__darwin_time_t sub_10005FA3C()
{
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  v0 = clock_gettime(_CLOCK_UPTIME_RAW, &__tp);
  if (!v0)
  {
    return __tp.tv_sec;
  }

  v1 = v0;
  v2 = qword_100192BB0;
  if (os_log_type_enabled(qword_100192BB0, OS_LOG_TYPE_ERROR))
  {
    sub_10011C118(v1, v2);
  }

  return -1;
}

uint64_t sub_10005FAE4()
{
  v2 = 8;
  v3 = 0;
  if (sysctlbyname("hw.memsize", &v3, &v2, 0, 0) == -1)
  {
    v0 = qword_100192BB0;
    if (os_log_type_enabled(qword_100192BB0, OS_LOG_TYPE_ERROR))
    {
      sub_10011C190(v0);
    }
  }

  return v3;
}

void sub_10005FB90(_BYTE *a1@<X8>)
{
  v3 = +[OSASystemConfiguration sharedInstance];
  v2 = [v3 modelCode];
  sub_10000459C(a1, [v2 UTF8String]);
}

id sub_10005FC24()
{
  v0 = +[OSASystemConfiguration sharedInstance];
  v1 = [v0 optInApple];

  return v1;
}

void sub_10005FC74(id a1)
{
  v1 = getuid();
  pw_dir = getpwuid(v1)->pw_dir;

  std::string::assign(&xmmword_100192B10, pw_dir);
}

void sub_10005FCAC(void *a1, char *__s)
{
  *a1 = 0;
  a1[1] = 0;
  strlen(__s);
  sub_10005FD18(a1);
}

void sub_10005FD00(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_10000786C(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005FD18(void *a1)
{
  if (*a1)
  {
    operator new();
  }

  operator new();
}

void sub_10005FEEC(uint64_t a1, const void *a2, uint64_t a3, unsigned int a4)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v7;
  *__p = v7;
  *&v12[48] = v7;
  v13 = v7;
  *&v12[16] = v7;
  *&v12[32] = v7;
  v11 = v7;
  *v12 = v7;
  *v9 = v7;
  v10 = v7;
  v8[1] = v7;
  v8[2] = v7;
  v8[0] = v7;
  sub_100062D24(v8, a1);
  memset(&v12[8], 0, 44);
  *&v12[52] = 0xFFFFFFFFLL;
  *(&v14 + 4) = 0;
  __p[1] = 0;
  v16 = 0;
  __p[0] = 0;
  v13 = 0uLL;
  LOBYTE(v14) = 0;
  sub_100062A8C(v8, a2, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[1])
  {
    *&v10 = v9[1];
    operator delete(v9[1]);
  }
}

void sub_100060004(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void *sub_1000600FC(void *a1)
{
  std::locale::locale(&v4);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v5[0].__locale_ = v2;
  v6 = v2;
  sub_100060248(v5, &v4);
  sub_1000601B4(v5, a1);
  std::locale::~locale(v5);
  std::locale::~locale(&v4);
  return a1;
}

void sub_100060190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, std::locale a11)
{
  std::locale::~locale(&a11);
  std::locale::~locale(&a10);
  _Unwind_Resume(a1);
}

void sub_1000601B4(void *a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_100191D70, memory_order_acquire) & 1) == 0)
  {
    sub_10011C200();
  }

  std::mutex::lock(&stru_100191D30);
  sub_100060390(a1, a2);

  std::mutex::unlock(&stru_100191D30);
}

std::locale *sub_100060248(std::locale *a1, const std::locale *a2)
{
  v4 = std::locale::locale(a1);
  sub_1000602D0(v4, a2, &v6);
  std::locale::~locale(&v6);
  return a1;
}

std::locale::__imp *sub_1000602D0@<X0>(std::locale *a1@<X0>, const std::locale *a2@<X1>, std::locale *a3@<X8>)
{
  a3->__locale_ = 0xAAAAAAAAAAAAAAAALL;
  std::locale::locale(a3, a1);
  std::locale::operator=(a1, a2);
  a1[1].__locale_ = std::locale::use_facet(a2, &std::ctype<char>::id);
  if (std::locale::has_facet(a2, &std::messages<char>::id))
  {
    v5 = std::locale::use_facet(a2, &std::messages<char>::id);
  }

  else
  {
    v5 = 0;
  }

  a1[2].__locale_ = v5;
  result = std::locale::use_facet(a2, &std::collate<char>::id);
  a1[3].__locale_ = result;
  return result;
}

void sub_100060390(void *a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_100191DA8, memory_order_acquire) & 1) == 0)
  {
    sub_10011C258();
  }

  v4 = sub_100060AC0(&unk_100191D90, a1);
  if (v4 == &qword_100191D98)
  {
    *a2 = 0xAAAAAAAAAAAAAAAALL;
    a2[1] = 0xAAAAAAAAAAAAAAAALL;
    operator new();
  }

  v5 = off_100191D78;
  v6 = v4[8];
  if (off_100191D78 != v6)
  {
    v7 = &v20;
    v20.__locale_ = &v20;
    v21 = &v20;
    if (&v20 == v6 || (v8 = v6[1].__locale_, v8 == &v20))
    {
      v11 = -1;
    }

    else
    {
      locale = v6->__locale_;
      *(locale + 1) = v8;
      v8->__locale_ = locale;
      v10 = v20.__locale_;
      *(v20.__locale_ + 1) = v6;
      v6->__locale_ = v10;
      v6[1].__locale_ = &v20;
      --qword_100191D88;
      v20.__locale_ = v6;
      *(&v21 + 1) = 1;
      v7 = v21;
      if (v21 == &off_100191D78)
      {
        goto LABEL_13;
      }

      v11 = 0;
    }

    v12 = v7[1].__locale_;
    if (v12 != &off_100191D78)
    {
      v13 = v7->__locale_;
      *(v13 + 1) = v12;
      *v12 = v13;
      v14 = off_100191D78;
      *(off_100191D78 + 1) = v7;
      v7->__locale_ = v14;
      v7[1].__locale_ = &off_100191D78;
      off_100191D78 = v7;
      *(&v21 + 1) = v11;
      ++qword_100191D88;
    }

LABEL_13:
    v15 = off_100191D78;
    v16 = *(off_100191D78 + 4);
    if (v16[1] == a1[1] && v16[2] == a1[2] && v16[3] == a1[3])
    {
      v4[8] = off_100191D78;
      if (v4 + 4 == v15[4])
      {
        sub_100060B7C(&v20);
        v5 = off_100191D78;
        goto LABEL_18;
      }

      v18 = "&(mpos->first) == mpos->second->second";
      v19 = 106;
    }

    else
    {
      v18 = "*(s_data.cont.back().second) == k";
      v19 = 103;
    }

    __assert_rtn("do_get", "object_cache.hpp", v19, v18);
  }

LABEL_18:
  *a2 = v5[2];
  v17 = v5[3];
  a2[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t sub_1000609DC(uint64_t a1)
{
  sub_100060A64(a1 + 24, *(a1 + 32));
  sub_100060B7C(a1);
  return a1;
}

void *sub_100060A14(uint64_t a1, uint64_t *__p)
{
  v3 = *__p;
  v4 = __p[1];
  *(v3 + 8) = v4;
  *v4 = v3;
  --*(a1 + 16);
  v5 = __p[3];
  if (v5)
  {
    sub_10000786C(v5);
  }

  operator delete(__p);
  return v4;
}

void sub_100060A64(uint64_t a1, std::locale *a2)
{
  if (a2)
  {
    sub_100060A64(a1, a2->__locale_);
    sub_100060A64(a1, a2[1].__locale_);
    std::locale::~locale(a2 + 4);

    operator delete(a2);
  }
}

void *sub_100060AC0(uint64_t a1, void *a2)
{
  v3 = (a1 + 8);
  result = sub_100060B2C(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == result)
  {
    return v3;
  }

  v5 = a2[1];
  v6 = result[5];
  v7 = v5 >= v6;
  if (v5 == v6)
  {
    v8 = a2[2];
    v9 = result[6];
    v7 = v8 >= v9;
    if (v8 == v9)
    {
      v7 = a2[3] >= result[7];
    }
  }

  if (!v7)
  {
    return v3;
  }

  return result;
}

void *sub_100060B2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = a4;
  if (a3)
  {
    v5 = a2[1];
    v6 = a2[2];
    do
    {
      v7 = a3[5];
      v8 = v7 >= v5;
      if (v7 == v5)
      {
        v9 = a3[6];
        v8 = v9 >= v6;
        if (v9 == v6)
        {
          v8 = a3[7] >= a2[3];
        }
      }

      v10 = !v8;
      v11 = v10 == 0;
      if (v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        result = a3;
      }

      a3 = a3[v12];
    }

    while (a3);
  }

  return result;
}

void sub_100060B7C(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          sub_10000786C(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

std::locale *sub_100060BF4(std::locale *a1, uint64_t a2)
{
  v3 = sub_100060C78(a1, a2);
  v3[36].__locale_ = &v3[37];
  v3[37].__locale_ = 0;
  v3[40].__locale_ = 0;
  v3[41].__locale_ = 0;
  v3[38].__locale_ = 0;
  v3[39].__locale_ = &v3[40];
  v3[43].__locale_ = 0;
  v3[44].__locale_ = 0;
  v3[42].__locale_ = &v3[43];
  sub_100060CCC(v3);
  return a1;
}

void sub_100060C40(_Unwind_Exception *a1)
{
  sub_1000620CC(v1 + 336, *(v1 + 344));
  sub_100062180(v1 + 312, *(v1 + 320));
  sub_1000621E4(v1 + 288, *(v1 + 296));
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::locale *sub_100060C78(std::locale *a1, uint64_t a2)
{
  v4 = std::locale::locale(a1, a2);
  v5 = *(a2 + 8);
  v4[3].__locale_ = *(a2 + 24);
  *&v4[1].__locale_ = v5;
  sub_100061148(v4);
  return a1;
}

void sub_100060CCC(uint64_t a1)
{
  memset(v25, 170, 24);
  sub_10006151C(v25);
  v2 = HIBYTE(v25[2]);
  if (SHIBYTE(v25[2]) < 0)
  {
    v2 = v25[1];
  }

  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (((*(*v3 + 24))(v3, v25, a1) & 0x80000000) != 0)
      {
        memset(&v24, 170, sizeof(v24));
        sub_10000459C(&v24, "Unable to open message catalog: ");
        __str.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
        __str.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
        sub_1000615A8(&v24.__r_.__value_.__l.__data_, v25, &__p);
        std::runtime_error::runtime_error(&__str, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_10005BE40(&__str);
      }

      for (i = 0; i != 22; ++i)
      {
        v5 = off_100183C48[i];
        memset(&v24, 0, sizeof(v24));
        v6 = *v5;
        if (*v5)
        {
          v7 = (v5 + 1);
          do
          {
            v8 = (*(**(a1 + 8) + 56))(*(a1 + 8), v6);
            std::string::append(&v24, 1uLL, v8);
            v9 = *v7++;
            v6 = v9;
          }

          while (v9);
        }

        memset(&__p, 170, sizeof(__p));
        (*(**(a1 + 16) + 32))(&__p);
        memset(&__str, 0, sizeof(__str));
        size = __p.__r_.__value_.__l.__size_;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        if (size)
        {
          v11 = 0;
          v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) >> 63;
          do
          {
            if (v12)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            else
            {
              p_p = &__p;
            }

            v14 = (*(**(a1 + 8) + 72))(*(a1 + 8), p_p->__r_.__value_.__s.__data_[v11], 0);
            std::string::append(&__str, 1uLL, v14);
            ++v11;
            v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) >> 63;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v15 = __p.__r_.__value_.__l.__size_;
            }
          }

          while (v11 < v15);
        }

        v21 = i;
        v25[4] = &v21;
        v16 = sub_100061AE4(a1 + 288, &v21);
        std::string::operator=((v16 + 5), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }
      }

      if ((atomic_load_explicit(&qword_100191E30, memory_order_acquire) & 1) == 0)
      {
        sub_10011C2D4();
      }

      for (j = 0; j != 14; ++j)
      {
        memset(&v24, 170, sizeof(v24));
        (*(**(a1 + 16) + 32))(&v24);
        v18 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
        v19 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
        if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v18 = v24.__r_.__value_.__l.__size_;
        }

        if (v18)
        {
          v20 = dword_100142D70[j];
          __p.__r_.__value_.__r.__words[0] = &v24;
          *(sub_100061BBC(a1 + 312, &v24.__r_.__value_.__l.__data_) + 56) = v20;
          v19 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
        }

        if (v19 < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  *(a1 + 360) = sub_100061720(a1, (a1 + 364));
  if (SHIBYTE(v25[2]) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_1000610B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::runtime_error a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  std::runtime_error::~runtime_error(&a10);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void sub_100061148(uint64_t a1)
{
  *(a1 + 32) = 0u;
  v2 = a1 + 32;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  memset(v26, 170, sizeof(v26));
  sub_10006151C(v26);
  v3 = HIBYTE(v26[2]);
  if (SHIBYTE(v26[2]) < 0)
  {
    v3 = v26[1];
  }

  if (v3 && (v4 = *(a1 + 16)) != 0)
  {
    v5 = (*(*v4 + 24))(v4, v26, a1);
    if ((v5 & 0x80000000) != 0)
    {
      memset(v25, 170, sizeof(v25));
      sub_10000459C(v25, "Unable to open message catalog: ");
      v24.__vftable = 0xAAAAAAAAAAAAAAAALL;
      v24.__imp_.__imp_ = 0xAAAAAAAAAAAAAAAALL;
      sub_1000615A8(v25, v26, &__p);
      std::runtime_error::runtime_error(&v24, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_10005BE40(&v24);
    }

    for (i = 1; i != 60; ++i)
    {
      memset(v25, 170, sizeof(v25));
      v7 = *(a1 + 16);
      sub_10000459C(&__p, *(&off_100183A68 + i));
      (*(*v7 + 32))(v25, v7, v5, 0, i, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 = 0;
      v9 = HIBYTE(v25[2]);
      v10 = v25[0];
      v11 = v25[1];
      if ((HIBYTE(v25[2]) & 0x80) != 0)
      {
        while (1)
        {
          v12 = v10;
          if (v8 >= v11)
          {
            break;
          }

LABEL_13:
          *(v2 + *(v12 + v8++)) = i;
          if ((v9 & 0x80) == 0)
          {
            goto LABEL_10;
          }
        }

        operator delete(v10);
      }

      else
      {
LABEL_10:
        if (v8 < v9)
        {
          v12 = v25;
          goto LABEL_13;
        }
      }
    }

    (*(**(a1 + 16) + 40))(*(a1 + 16), v5);
  }

  else
  {
    for (j = 1; j != 60; ++j)
    {
      v14 = *(&off_100183A68 + j);
      v15 = *v14;
      if (*v14)
      {
        v16 = v14 + 1;
        do
        {
          *(v2 + v15) = j;
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }
  }

  v18 = 0;
  v19 = a1 + 97;
  do
  {
    if (*(v19 + v18))
    {
      v20 = 0;
    }

    else
    {
      v20 = ((v18 + 65) & 0x80) == 0;
    }

    if (v20)
    {
      v21 = *(*(*(a1 + 8) + 16) + 4 * v18 + 260);
      if ((v21 & 0x1000) != 0)
      {
        v22 = 22;
      }

      else
      {
        if ((v21 & 0x8000) == 0)
        {
          goto LABEL_34;
        }

        v22 = 23;
      }

      *(v19 + v18) = v22;
    }

LABEL_34:
    ++v18;
  }

  while (v18 != 191);
  if (SHIBYTE(v26[2]) < 0)
  {
    operator delete(v26[0]);
  }
}

void sub_100061504(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x10006150CLL);
  }

  sub_10002C628(a1);
}

void sub_10006151C(void *a1@<X8>)
{
  v2 = sub_1000616B0();
  std::mutex::lock(v2);
  memset(a1, 170, 24);
  v3 = sub_1000616E8();
  if (*(v3 + 23) < 0)
  {
    sub_1000078D8(a1, *v3, v3[1]);
  }

  else
  {
    v4 = *v3;
    a1[2] = v3[2];
    *a1 = v4;
  }

  std::mutex::unlock(v2);
}

uint64_t sub_1000615A8@<X0>(const void **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  memset(a3, 170, 24);
  result = sub_100048378(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    result = memmove(&v8[v5], v10, v6);
  }

  v8[v5 + v6] = 0;
  return result;
}

void *sub_1000616B0()
{
  if ((atomic_load_explicit(&qword_100191DF0, memory_order_acquire) & 1) == 0)
  {
    sub_10011C320();
  }

  return &unk_100191DB0;
}

uint64_t *sub_1000616E8()
{
  if ((atomic_load_explicit(&qword_100191E10, memory_order_acquire) & 1) == 0)
  {
    sub_10011C378();
  }

  return &qword_100191DF8;
}

uint64_t sub_100061720(uint64_t a1, _BYTE *a2)
{
  strcpy(__s, "a");
  memset(&__s1, 170, sizeof(__s1));
  sub_100061E44(a1, &__s[1], &__s1);
  v4 = strlen(__s);
  v5 = v4;
  v6 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v4 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    if (v4 == -1)
    {
      sub_10002EAB0();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v4 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_8;
    }

    p_s1 = &__s1;
  }

  if (memcmp(p_s1, __s, v5))
  {
LABEL_8:
    v48 = 65;
    memset(&v45, 170, sizeof(v45));
    sub_100061E44(a1, &v48 + 1, &v45);
    v47 = 59;
    memset(&__p, 170, sizeof(__p));
    sub_100061E44(a1, &v47 + 1, &__p);
    size = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __s1.__r_.__value_.__l.__size_;
    }

    if ((size & 0x80000000) != 0)
    {
LABEL_65:
      LOBYTE(v18) = 0;
      v16 = 3;
      goto LABEL_83;
    }

    v9 = 0;
    v10 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v45.__r_.__value_.__r.__words[1];
    }

    v11 = v45.__r_.__value_.__r.__words[0];
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v45;
    }

    if (v10 < 0)
    {
      v12 = -1;
    }

    else
    {
      v12 = v10;
    }

    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &__s1;
    }

    else
    {
      v13 = __s1.__r_.__value_.__r.__words[0];
    }

    v14 = (size + 1);
    v15 = (v12 + 1);
    while (v15 != v9)
    {
      if (v13->__r_.__value_.__s.__data_[v9] != v11->__r_.__value_.__s.__data_[v9])
      {
        LODWORD(v15) = v9;
        break;
      }

      if (v14 == ++v9)
      {
        goto LABEL_30;
      }
    }

    LODWORD(v14) = v15;
    if (!v15)
    {
      goto LABEL_65;
    }

LABEL_30:
    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &__s1;
    }

    else
    {
      v17 = __s1.__r_.__value_.__r.__words[0];
    }

    if (v14 == 1)
    {
      v24 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      v26 = v45.__r_.__value_.__l.__size_;
      v25 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v17->__r_.__value_.__s.__data_[(v14 - 1)];
      v19 = 0;
      if (size)
      {
        v20 = 1;
        v21 = v17;
        do
        {
          v22 = v21->__r_.__value_.__s.__data_[0];
          v21 = (v21 + 1);
          if (v22 == v18)
          {
            ++v19;
          }

          v23 = size > v20++;
        }

        while (v23);
      }

      v24 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      v25 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      v26 = v45.__r_.__value_.__l.__size_;
      v27 = 0;
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v28 = v45.__r_.__value_.__l.__size_;
      }

      if (v28)
      {
        v29 = v45.__r_.__value_.__r.__words[0];
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v45;
        }

        v30 = 1;
        do
        {
          v31 = v29->__r_.__value_.__s.__data_[0];
          v29 = (v29 + 1);
          if (v31 == v18)
          {
            ++v27;
          }

          v23 = v28 > v30++;
        }

        while (v23);
      }

      if (v19 == v27)
      {
        v32 = 0;
        if (size)
        {
          v33 = 1;
          do
          {
            v34 = v17->__r_.__value_.__s.__data_[0];
            v17 = (v17 + 1);
            if (v34 == v18)
            {
              ++v32;
            }

            v23 = size > v33++;
          }

          while (v23);
        }

        v35 = __p.__r_.__value_.__l.__size_;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        if (v35)
        {
          v36 = 0;
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v38 = 1;
          do
          {
            v39 = p_p->__r_.__value_.__s.__data_[0];
            p_p = (p_p + 1);
            if (v39 == v18)
            {
              ++v36;
            }

            v23 = v35 > v38++;
          }

          while (v23);
        }

        else
        {
          v36 = 0;
        }

        if (v32 == v36)
        {
          v16 = 2;
          goto LABEL_83;
        }
      }
    }

    if (v25 >= 0)
    {
      v40 = v24;
    }

    else
    {
      v40 = v26;
    }

    v16 = 3;
    if (size == v40)
    {
      v41 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v41 = __p.__r_.__value_.__l.__size_;
      }

      v42 = size == v41;
      if (size == v41)
      {
        LOBYTE(v18) = v14;
      }

      else
      {
        LOBYTE(v18) = 0;
      }

      if (v42)
      {
        v16 = 1;
      }

      else
      {
        v16 = 3;
      }
    }

    else
    {
      LOBYTE(v18) = 0;
    }

LABEL_83:
    *a2 = v18;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if ((*(&__s1.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_88;
    }

    return v16;
  }

  v16 = 0;
  *a2 = 0;
  if (v6 < 0)
  {
LABEL_88:
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_100061A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_10002C628(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100061AE4(uint64_t a1, int *a2)
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

uint64_t sub_100061BBC(uint64_t a1, const void **a2)
{
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  result = *sub_100061C8C(a1, v3, a2);
  if (!result)
  {
    memset(&v3[1], 170, 24);
    sub_100061D28();
  }

  return result;
}

uint64_t sub_100061C8C(uint64_t a1, uint64_t *a2, const void **a3)
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
        if (!sub_10000BFA4(a1, a3, (v4 + 32)))
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

      if (!sub_10000BFA4(a1, (v8 + 32), a3))
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

void sub_100061DC4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100061DE0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100061DE0(uint64_t a1, void **__p)
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

void sub_100061E44(uint64_t a1@<X0>, _BYTE *a2@<X2>, std::string *a3@<X8>)
{
  if (*a2)
  {
    sub_10011C3D8();
  }

  memset(&__p, 0, sizeof(__p));
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  (*(**(a1 + 24) + 32))(&v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  for (__p = v22; ; std::string::erase(&__p, size - 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      break;
    }

    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_ || *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_ - 1))
    {
      goto LABEL_13;
    }

LABEL_11:
    ;
  }

  if (*(&__p.__r_.__value_.__s + 23))
  {
    if (*(&v22.__r_.__value_.__r.__words[2] + SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 7))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  size = 0;
LABEL_13:
  std::string::reserve(a3, 2 * size + 2);
  v5 = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (v5)
  {
    v7 = 0;
    v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) >> 63;
    v9 = 1;
    do
    {
      if (v8)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        p_p = &__p;
      }

      v11 = p_p->__r_.__value_.__s.__data_[v7];
      if (v11 == 255)
      {
        v12 = std::string::append(a3, 1uLL, -1);
        v13 = 98;
      }

      else
      {
        v12 = std::string::append(a3, 1uLL, v11 + 1);
        v13 = 97;
      }

      std::string::append(v12, 1uLL, v13);
      v7 = v9;
      v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) >> 63;
      v14 = __p.__r_.__value_.__l.__size_;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }
    }

    while (v14 > v9++);
  }

  v16 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v16 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = a3->__r_.__value_.__r.__words[0];
  }

  if (v16 >= 0)
  {
    v18 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = a3->__r_.__value_.__l.__size_;
  }

  v19 = v17 + v18;
  v20 = memchr(v17, 0, v18);
  if (v20)
  {
    v21 = v20 == v19;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    __assert_rtn("transform", "cpp_regex_traits.hpp", 569, "std::find(result2.begin(), result2.end(), charT(0)) == result2.end()");
  }

  if (v6 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10006206C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (a18 < 0)
    {
      JUMPOUT(0x100062008);
    }

    JUMPOUT(0x100062010);
  }

  _Unwind_Resume(a1);
}

void sub_1000620CC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1000620CC(a1, *a2);
    sub_1000620CC(a1, a2[1]);
    sub_100062128((a2 + 4));

    operator delete(a2);
  }
}

void sub_100062128(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_100062180(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100062180(a1, *a2);
    sub_100062180(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1000621E4(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1000621E4(a1, *a2);
    sub_1000621E4(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void sub_1000622E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  a9 = 0;
  if (v9)
  {
    sub_100062388(&a9, v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_100062308(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100062348(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100062388(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000620CC(a2 + 336, *(a2 + 344));
    sub_100062180(a2 + 312, *(a2 + 320));
    sub_1000621E4(a2 + 288, *(a2 + 296));
    std::locale::~locale(a2);

    operator delete();
  }
}

uint64_t sub_1000623FC(uint64_t a1, void *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *sub_1000624FC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1000624FC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = a3[1];
    v7 = a3[2];
    v8 = a3[3];
    while (1)
    {
      while (1)
      {
        v9 = v4;
        v10 = v4[5];
        if (v6 != v10)
        {
          break;
        }

        v11 = v9[6];
        if (v7 == v11)
        {
          v12 = v9[7];
          if (v8 >= v12)
          {
            if (v12 >= v8)
            {
              goto LABEL_18;
            }

            goto LABEL_15;
          }
        }

        else if (v7 >= v11)
        {
          if (v11 >= v7)
          {
            goto LABEL_18;
          }

          goto LABEL_15;
        }

LABEL_12:
        v4 = *v9;
        result = v9;
        if (!*v9)
        {
          goto LABEL_18;
        }
      }

      if (v6 < v10)
      {
        goto LABEL_12;
      }

      if (v10 >= v6)
      {
        goto LABEL_18;
      }

LABEL_15:
      result = v9 + 1;
      v4 = v9[1];
      if (!v4)
      {
        goto LABEL_18;
      }
    }
  }

  v9 = result;
LABEL_18:
  *a2 = v9;
  return result;
}

uint64_t sub_100062588(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::locale::~locale(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1000625D4(uint64_t a1, void *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *sub_1000624FC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1000626D8(uint64_t **a1, void *a2)
{
  v3 = sub_100060AC0(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100041464(a1, v3);
  std::locale::~locale(v4 + 4);
  operator delete(v4);
  return 1;
}

void sub_1000627D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  a9 = 0;
  if (v9)
  {
    sub_100062874(&a9, v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000627F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100062834(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100062874(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      sub_10000786C(v2);
    }

    operator delete();
  }
}

void sub_100062968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  a9 = 0;
  if (v9)
  {
    sub_100062A0C(&a9, v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006298C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000629CC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100062A0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 376);
    if (v3)
    {
      *(a2 + 384) = v3;
      operator delete(v3);
    }

    operator delete(*(a2 + 352));
    v4 = *(a2 + 32);
    if (v4)
    {
      sub_10000786C(v4);
    }

    v5 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v5;
      operator delete(v5);
    }

    operator delete();
  }
}

void sub_100062A8C(uint64_t a1, const void *a2, uint64_t a3, unsigned int a4)
{
  *(*a1 + 40) = a4;
  v8 = (a4 >> 20) & 1;
  *(a1 + 24) = (a4 & 0x100000) != 0;
  *(a1 + 128) = a3;
  *(a1 + 136) = a2;
  *(a1 + 120) = a2;
  if (a2 == a3 && (a4 & 0x1000003) != 0)
  {

    sub_100063EB4(a1, 17, 0);
    return;
  }

  if ((a4 & 3) > 1)
  {
    if ((a4 & 3) != 2)
    {
      sub_10000459C(__p, "An invalid combination of regular expression syntax flags was used.");
      sub_100064770(a1, 21, 0, __p);
      goto LABEL_23;
    }

    v10 = sub_100064700;
    goto LABEL_12;
  }

  if ((a4 & 3) != 0)
  {
    v10 = sub_1000644EC;
LABEL_12:
    *(a1 + 104) = v10;
    *(a1 + 112) = 0;
    goto LABEL_13;
  }

  *(a1 + 104) = sub_100063F80;
  *(a1 + 112) = 0;
  v9 = sub_100064468(a1, 0, 0x18uLL);
  v9[4] = 0;
  *(v9 + 20) = (*(*a1 + 40) & 0x100000) != 0;
LABEL_13:
  v11 = sub_100064848(a1);
  sub_100064960(a1, -1);
  v12 = *a1;
  *(*a1 + 40) = a4;
  if (v8 != *(a1 + 24))
  {
    *(a1 + 24) = v8;
  }

  if (v11)
  {
    if (!*(v12 + 44))
    {
      v13 = *(a1 + 144);
      *(v12 + 64) = v13 + 1;
      if (*(a1 + 184) > v13)
      {
        v14 = *(a1 + 120);
        v15 = *(a1 + 136);
        sub_10000459C(__p, "Found a backreference to a non-existant sub-expression.");
        sub_100064770(a1, 6, v15 - v14, __p);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100064AF0(a1, a2, a3);
    }

    return;
  }

  v16 = *(a1 + 120);
  v17 = *(a1 + 136);
  sub_10000459C(__p, "Found a closing) with no corresponding opening parenthesis.");
  sub_100064770(a1, 8, v17 - v16, __p);
LABEL_23:
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100062CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100062D24(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *a1 = a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a2 + 360) = *(a2 + 352);
  *(a2 + 44) = 0;
  *(a1 + 80) = sub_100062EC4(*v3, "wslowerupperalpha", "slowerupperalpha");
  *(a1 + 84) = sub_100062EC4(**(a1 + 8), "slowerupperalpha", "lowerupperalpha");
  *(a1 + 88) = sub_100062EC4(**(a1 + 8), "lowerupperalpha", "upperalpha");
  *(a1 + 92) = sub_100062EC4(**(a1 + 8), "upperalpha", "alpha");
  v4 = sub_100062EC4(**(a1 + 8), "alpha", "");
  *(a1 + 96) = v4;
  v5 = *(a1 + 80);
  *(*a1 + 368) = v5;
  if (!v5)
  {
    v7 = "m_word_mask != 0";
    v8 = 278;
    goto LABEL_12;
  }

  if (!*(a1 + 84))
  {
    v7 = "m_mask_space != 0";
    v8 = 279;
    goto LABEL_12;
  }

  if (!*(a1 + 88))
  {
    v7 = "m_lower_mask != 0";
    v8 = 280;
    goto LABEL_12;
  }

  if (!*(a1 + 92))
  {
    v7 = "m_upper_mask != 0";
    v8 = 281;
    goto LABEL_12;
  }

  if (!v4)
  {
    v7 = "m_alpha_mask != 0";
    v8 = 282;
LABEL_12:
    __assert_rtn("basic_regex_creator", "basic_regex_creator.hpp", v8, v7);
  }

  return a1;
}

void sub_100062EA8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100062EC4(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v6 = sub_100063008(a1, a2, a3);
  if (!v6)
  {
    memset(__p, 170, sizeof(__p));
    sub_100052DF0(__p, a2, a3, a3 - a2);
    v7 = HIBYTE(__p[2]);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      v7 = __p[1];
    }

    (*(**(a1 + 8) + 48))(*(a1 + 8), v8, &v7[v8]);
    v9 = HIBYTE(__p[2]);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      v9 = __p[1];
    }

    v6 = sub_100063008(a1, v10, &v9[v10]);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v6;
}

void sub_100062FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100063008(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  if (!*(a1 + 328))
  {
    goto LABEL_6;
  }

  sub_100052DF0(__p, __src, a3, a3 - __src);
  v6 = sub_10000F260(a1 + 312, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 320 == v6)
  {
LABEL_6:
    v8 = sub_100063110(__src, a3) + 1;
    if (v8 >= 0x16)
    {
      sub_10011C430();
    }

    v7 = (&unk_1001432EC + 4 * v8);
  }

  else
  {
    v7 = (v6 + 56);
  }

  return *v7;
}

void sub_1000630EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100063110(_BYTE *a1, _BYTE *a2)
{
  memset(v8, 170, sizeof(v8));
  sub_10000459C(&v69, "alnum");
  v71 = 0;
  *__dst = v69;
  *&__dst[16] = v70;
  v69 = 0uLL;
  v70 = 0;
  v73 = 0;
  sub_10000459C(&v66, "alpha");
  v68 = 1;
  v74 = v66;
  v75 = v67;
  v66 = 0uLL;
  v67 = 0;
  v76 = 1;
  sub_10000459C(&v63, "blank");
  v65 = 2;
  v77 = v63;
  v78 = v64;
  v63 = 0uLL;
  v64 = 0;
  v79 = 2;
  sub_10000459C(&v60, "cntrl");
  v62 = 3;
  v80 = v60;
  v81 = v61;
  v60 = 0uLL;
  v61 = 0;
  v82 = 3;
  sub_10000459C(&v57, "d");
  v59 = 4;
  v83 = v57;
  v84 = v58;
  v57 = 0uLL;
  v58 = 0;
  v85 = 4;
  sub_10000459C(&v54, "digit");
  v56 = 5;
  v86 = v54;
  v87 = v55;
  v54 = 0uLL;
  v55 = 0;
  v88 = 5;
  sub_10000459C(&v51, "graph");
  v53 = 6;
  v89 = v51;
  v90 = v52;
  v51 = 0uLL;
  v52 = 0;
  v91 = 6;
  sub_10000459C(&v48, "h");
  v50 = 7;
  v92 = v48;
  v93 = v49;
  v48 = 0uLL;
  v49 = 0;
  v94 = 7;
  sub_10000459C(&v45, "l");
  v47 = 8;
  v95 = v45;
  v96 = v46;
  v45 = 0uLL;
  v46 = 0;
  v97 = 8;
  sub_10000459C(&v42, "lower");
  v44 = 9;
  v98 = v42;
  v99 = v43;
  v42 = 0uLL;
  v43 = 0;
  v100 = 9;
  sub_10000459C(&v39, "print");
  v41 = 10;
  v101 = v39;
  v102 = v40;
  v39 = 0uLL;
  v40 = 0;
  v103 = 10;
  sub_10000459C(&v36, "punct");
  v38 = 11;
  v104 = v36;
  v105 = v37;
  v36 = 0uLL;
  v37 = 0;
  v106 = 11;
  sub_10000459C(&v33, "s");
  v35 = 12;
  v107 = v33;
  v108 = v34;
  v33 = 0uLL;
  v34 = 0;
  v109 = 12;
  sub_10000459C(&v30, "space");
  v32 = 13;
  v110 = v30;
  v111 = v31;
  v30 = 0uLL;
  v31 = 0;
  v112 = 13;
  sub_10000459C(&v27, "u");
  v29 = 14;
  v113 = v27;
  v114 = v28;
  v27 = 0uLL;
  v28 = 0;
  v115 = 14;
  sub_10000459C(&v24, "unicode");
  v26 = 15;
  v116 = v24;
  v117 = v25;
  v24 = 0uLL;
  v25 = 0;
  v118 = 15;
  sub_10000459C(&v21, "upper");
  v23 = 16;
  v119 = v21;
  v120 = v22;
  v21 = 0uLL;
  v22 = 0;
  v121 = 16;
  sub_10000459C(v18, "v");
  v20 = 17;
  v122 = *v18;
  v123 = v19;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  v124 = 17;
  sub_10000459C(v15, "w");
  v17 = 18;
  v125 = *v15;
  v126 = v16;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v127 = 18;
  sub_10000459C(v12, "word");
  v14 = 19;
  v128 = *v12;
  v129 = v13;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  v130 = 19;
  sub_10000459C(__p, "xdigit");
  v11 = 20;
  v131 = *__p;
  v132 = v10;
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  v133 = 20;
  sub_100063B1C(v8, __dst, 21);
  v4 = 672;
  do
  {
    if (*(&v70 + v4 + 7) < 0)
    {
      operator delete(*(&v69 + v4));
    }

    v4 -= 32;
  }

  while (v4);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60);
  }

  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63);
  }

  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69);
  }

  memset(__dst, 170, sizeof(__dst));
  sub_100052DF0(__dst, a1, a2, a2 - a1);
  v5 = sub_10000F260(v8, __dst);
  if (&v8[1] == v5)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = *(v5 + 56);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  sub_100062180(v8, v8[1]);
  return v6;
}

void sub_100063844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(*(v11 + 576));
  }

  sub_100062180(&a10, a11);
  _Unwind_Resume(a1);
}

void *sub_100063B1C(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_100063B9C(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_100063B9C(void *a1, uint64_t a2, const void **a3)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  result = *sub_100063C58(a1, a2, v5, &v4, a3);
  if (!result)
  {
    memset(&v5[1], 170, 24);
    sub_100063DFC();
  }

  return result;
}

uint64_t sub_100063C58(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_10000BFA4(a1, a5, (a2 + 32)))
  {
    if (!sub_10000BFA4(a1, (a2 + 32), a5))
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
      if (!sub_10000BFA4(a1, a5, v15 + 4))
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

  if (sub_10000BFA4(a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_100061C8C(a1, a3, a5);
}

void sub_100063E98(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100061DE0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100063EB4(std::string *a1, int a2, uint64_t a3)
{
  memset(__p, 170, sizeof(__p));
  sub_100064CA4(**(a1->__r_.__value_.__r.__words[0] + 24), a2, __p);
  sub_100064770(a1, a2, a3, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100063F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100063F80(std::string *a1)
{
  v2 = a1[5].__r_.__value_.__r.__words[2];
  v3 = 0;
  switch(*(*a1->__r_.__value_.__l.__size_ + *v2 + 32))
  {
    case 1:

      return sub_100064D38(a1);
    case 2:
      return v3;
    case 3:
      a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);
      v6 = (*(a1->__r_.__value_.__r.__words[0] + 40) & 0x400) == 0;
      v7 = 12;
      v8 = 4;
      goto LABEL_40;
    case 4:
      a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);
      v6 = (*(a1->__r_.__value_.__r.__words[0] + 40) & 0x400) == 0;
      v7 = 11;
      v8 = 3;
LABEL_40:
      if (v6)
      {
        v16 = v8;
      }

      else
      {
        v16 = v7;
      }

      sub_100064468(a1, v16, 0x10uLL);
      return 1;
    case 5:
      a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);
      v17 = *(a1->__r_.__value_.__r.__words[0] + 40);
      v3 = 1;
      if ((v17 & 0x1000) != 0)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      if ((v17 & 0x2000) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      *(sub_100064468(a1, 5, 0x18uLL) + 16) = v19;
      return v3;
    case 6:
      if (v2 != a1[5].__r_.__value_.__l.__data_)
      {
        a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);
        v9 = 0;
        goto LABEL_26;
      }

      sub_10000459C(__p, "The repeat operator * cannot start a regular expression.");
      sub_100064770(a1, 13, 0, __p);
      goto LABEL_58;
    case 7:
      if (v2 == a1[5].__r_.__value_.__l.__data_)
      {
        sub_10000459C(__p, "The repeat operator + cannot start a regular expression.");
        sub_100064770(a1, 13, 0, __p);
        goto LABEL_58;
      }

      a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);
      v9 = 1;
LABEL_26:
      v15 = -1;
      goto LABEL_29;
    case 8:
      if (v2 == a1[5].__r_.__value_.__l.__data_)
      {
        sub_10000459C(__p, "The repeat operator ? cannot start a regular expression.");
        sub_100064770(a1, 13, 0, __p);
LABEL_58:
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        return 0;
      }

      a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);
      v9 = 0;
      v15 = 1;
LABEL_29:

      return sub_100065990(a1, v9, v15);
    case 9:

      return sub_100066644(a1);
    case 0xB:
      goto LABEL_36;
    case 0xC:

      return sub_10006502C(a1);
    case 0xD:
      if ((*(a1->__r_.__value_.__r.__words[0] + 40) & 0xA00) != 0x800)
      {
        goto LABEL_33;
      }

      size = a1[5].__r_.__value_.__l.__size_;
      v3 = 1;
      break;
    case 0xF:
      a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);

      return sub_100065E18(a1, 0);
    case 0x10:
      if ((*(a1->__r_.__value_.__r.__words[0] + 41) & 2) == 0)
      {
        goto LABEL_33;
      }

      data = a1[5].__r_.__value_.__l.__data_;
      sub_10000459C(__p, "Found a closing repetition operator } with no corresponding {.");
      sub_100064770(a1, 9, v2 - data, __p);
      goto LABEL_58;
    case 0x1A:
      if ((*(a1->__r_.__value_.__r.__words[0] + 42) & 2) == 0)
      {
        goto LABEL_33;
      }

LABEL_36:

      return sub_1000663E4(a1);
    default:
LABEL_33:

      return sub_100064700(a1);
  }

  while (v2 != size)
  {
    a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);
    v11 = *v2;
    v12 = v11 > 0xD;
    v13 = (1 << v11) & 0x3400;
    v14 = v12 || v13 == 0;
    ++v2;
    if (!v14)
    {
      return v3;
    }
  }

  return 1;
}

void sub_100064438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_100064468(uint64_t *a1, int a2, unint64_t a3)
{
  if (a2 == 13)
  {
    *(a1 + 32) = 1;
  }

  v5 = *a1;
  v6 = *(*a1 + 352);
  v7 = (*(*a1 + 360) - v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(*a1 + 360) = v6 + v7;
  v8 = a1[2];
  if (v8)
  {
    *(v8 + 8) = v7 - v8 + v6;
    v5 = *a1;
  }

  v9 = sub_10006AE00((v5 + 344), a3);
  a1[2] = v9;
  *(v9 + 8) = 0;
  result = a1[2];
  *result = a2;
  return result;
}

uint64_t sub_1000644EC(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(**(a1 + 8) + *v1 + 32);
  if (v2 <= 6)
  {
    if (*(**(a1 + 8) + *v1 + 32) > 4u)
    {
      if (v2 != 5)
      {
        v5 = *(a1 + 16);
        if (!v5 || *v5 == 3)
        {
          goto LABEL_44;
        }

        *(a1 + 136) = v1 + 1;
        v6 = 0;
        goto LABEL_39;
      }

      *(a1 + 136) = v1 + 1;
      v9 = *(*a1 + 40);
      if ((v9 & 0x1000) != 0)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      if ((v9 & 0x2000) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      *(sub_100064468(a1, 5, 0x18uLL) + 16) = v11;
    }

    else
    {
      if (v2 == 3)
      {
        *(a1 + 136) = v1 + 1;
        v4 = 4;
      }

      else
      {
        if (v2 != 4)
        {
          goto LABEL_44;
        }

        *(a1 + 136) = v1 + 1;
        v4 = 3;
      }

      sub_100064468(a1, v4, 0x10uLL);
    }

    return 1;
  }

  if (*(**(a1 + 8) + *v1 + 32) <= 8u)
  {
    if (v2 != 7)
    {
      v7 = *(a1 + 16);
      if (!v7 || *v7 == 3 || (*(*a1 + 41) & 0x10) == 0)
      {
        goto LABEL_44;
      }

      *(a1 + 136) = v1 + 1;
      v6 = 0;
      v8 = 1;
      goto LABEL_40;
    }

    v12 = *(a1 + 16);
    if (!v12 || *v12 == 3 || (*(*a1 + 41) & 0x10) == 0)
    {
      goto LABEL_44;
    }

    *(a1 + 136) = v1 + 1;
    v6 = 1;
LABEL_39:
    v8 = -1;
LABEL_40:

    return sub_100065990(a1, v6, v8);
  }

  switch(v2)
  {
    case 9u:

      return sub_100066644(a1);
    case 0x1Au:
      if ((*(*a1 + 42) & 2) == 0)
      {
LABEL_44:

        return sub_100064700(a1);
      }

      return sub_1000663E4(a1);
    case 0xCu:

      return sub_10006C530(a1);
    default:
      goto LABEL_44;
  }
}

uint64_t sub_100064700(uint64_t a1)
{
  if ((*(*a1 + 40) & 0xA03) != 0x800 || !sub_10006B248(*(a1 + 8), **(a1 + 136), *(a1 + 84)))
  {
    sub_10006919C(a1, **(a1 + 136));
  }

  ++*(a1 + 136);
  return 1;
}

void sub_100064770(std::string *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    sub_1000078D8(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  sub_10006D0F8(a1, a2, a3, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

BOOL sub_100064848(uint64_t a1)
{
  v2 = *(a1 + 180) + 1;
  *(a1 + 180) = v2;
  if (v2 >= 0x191)
  {
    v3 = *(a1 + 136);
    v4 = *(a1 + 120);
    sub_10000459C(__p, "Exceeded nested brace limit.");
    sub_100064770(a1, 18, v3 - v4, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  do
  {
    v6 = *(a1 + 128);
    v5 = *(a1 + 136);
    if (v5 == v6)
    {
      break;
    }

    v7 = *(a1 + 104);
    v8 = *(a1 + 112);
    v9 = (a1 + (v8 >> 1));
    if (v8)
    {
      v7 = *(*v9 + v7);
    }
  }

  while ((v7(v9) & 1) != 0);
  result = v5 == v6;
  --*(a1 + 180);
  return result;
}

void sub_10006493C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100064960(std::string *a1, uint64_t a2)
{
  data = a1[8].__r_.__value_.__l.__data_;
  size = a1[8].__r_.__value_.__l.__size_;
  v5 = a1[7].__r_.__value_.__r.__words[0] != *(a1->__r_.__value_.__r.__words[0] + 360) - *(a1->__r_.__value_.__r.__words[0] + 352) || data == size;
  if (v5 || *(size - 8) <= a2 || (*(a1->__r_.__value_.__r.__words[0] + 40) & 0x1000003) == 0)
  {
    while (1)
    {
      if (data == size)
      {
        return 1;
      }

      v10 = *(size - 8);
      v8 = size - 8;
      v9 = v10;
      if (v10 <= a2)
      {
        return 1;
      }

      a1[8].__r_.__value_.__l.__size_ = v8;
      v11 = *(a1->__r_.__value_.__r.__words[0] + 352);
      v12 = (*(a1->__r_.__value_.__r.__words[0] + 360) - v11 + 7) & 0xFFFFFFFFFFFFFFF8;
      *(a1->__r_.__value_.__r.__words[0] + 360) = v11 + v12;
      if (*(v11 + v9) != 16)
      {
        break;
      }

      *(v11 + v9 + 16) = v12 - v9;
      data = a1[8].__r_.__value_.__l.__data_;
      size = a1[8].__r_.__value_.__l.__size_;
    }

    v14 = a1[5].__r_.__value_.__r.__words[2];
    v15 = a1[5].__r_.__value_.__l.__data_;
    sub_10000459C(__p, "Internal logic failed while compiling the expression, probably you added a repeat to something non-repeatable!");
    sub_100064770(a1, 21, v14 - v15, __p);
  }

  else
  {
    v6 = a1[5].__r_.__value_.__r.__words[2];
    v7 = a1[5].__r_.__value_.__l.__data_;
    sub_10000459C(__p, "Can't terminate a sub-expression with an alternation operator |.");
    sub_100064770(a1, 17, v6 - v7, __p);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_100064AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100064AF0(uint64_t *result, const void *a2, uint64_t a3)
{
  if (!*(*result + 44))
  {
    v5 = result;
    sub_100064468(result, 6, 0x10uLL);
    v6 = *v5;
    *(v6 + 56) = a3 - a2;
    v7 = sub_10006AE00((v6 + 344), a3 - a2 + 1);
    v8 = v7;
    *(*v5 + 48) = v7;
    v9 = a3 - a2;
    if (v9)
    {
      memmove(v7, a2, v9);
    }

    v8[v9] = 0;
    v10 = *v5;
    *(v10 + 44) = 0;
    v11 = *(v10 + 352);
    *(v10 + 72) = v11;
    sub_10006DB0C(v5, v11);
    v12 = *v5;
    if (*(v5 + 48) == 1)
    {
      *(v12 + 400) = 1;
      result = sub_10006DBC8(v5, *(v12 + 72));
      v12 = *v5;
      if (*(*v5 + 44))
      {
        return result;
      }
    }

    else
    {
      *(v12 + 400) = 0;
    }

    sub_10006DE68(v5, *(v12 + 72));
    v13 = *v5;
    *(v13 + 84) = 0u;
    v13 = (v13 + 84);
    v13[14] = 0u;
    v13[15] = 0u;
    v13[12] = 0u;
    v13[13] = 0u;
    v13[10] = 0u;
    v13[11] = 0u;
    v13[8] = 0u;
    v13[9] = 0u;
    v13[6] = 0u;
    v13[7] = 0u;
    v13[4] = 0u;
    v13[5] = 0u;
    v13[2] = 0u;
    v13[3] = 0u;
    v13[1] = 0u;
    v14 = *v5;
    *(*v5 + 340) = 0;
    *(v5 + 40) = 0;
    if (*(v5 + 48) == 1)
    {
      v15 = *(v14 + 64);
      v18 = 0;
      sub_10006E1AC((v5 + 56), v15 + 1, &v18);
      v14 = *v5;
    }

    sub_10006E29C(v5, *(v14 + 72), (v14 + 84), (v14 + 340), 3);
    v16 = sub_10006EBEC(v5, *(*v5 + 72));
    v17 = *v5;
    *(v17 + 80) = v16;
    return sub_10006EC54(v5, *(v17 + 72));
  }

  return result;
}

_BYTE *sub_100064CA4@<X0>(_BYTE *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (!*(result + 38))
  {
    goto LABEL_9;
  }

  v3 = *(result + 37);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = result + 296;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v4 != result + 296 && *(v4 + 8) <= a2)
  {
    if (v4[63] < 0)
    {
      return sub_1000078D8(a3, *(v4 + 5), *(v4 + 6));
    }

    else
    {
      v6 = *(v4 + 40);
      *(a3 + 16) = *(v4 + 7);
      *a3 = v6;
    }
  }

  else
  {
LABEL_9:
    if (a2 <= 21)
    {
      v5 = off_100183C48[a2];
    }

    else
    {
      v5 = "Unknown error.";
    }

    return sub_10000459C(a3, v5);
  }

  return result;
}

uint64_t sub_100064D38(uint64_t a1)
{
  v2 = *(a1 + 128);
  v3 = (*(a1 + 136) + 1);
  *(a1 + 136) = v3;
  if (v3 == v2)
  {
    goto LABEL_28;
  }

  v4 = *a1;
  v5 = *(*a1 + 40);
  if ((v5 & 0x203) != 0 && (*(*a1 + 40) & 0x1003) != 4097)
  {
LABEL_12:
    if ((v5 & 0x400000) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 144) + 1;
      *(a1 + 144) = v9;
      if ((v5 & 0x800000) != 0)
      {
        v25 = &v3[~*(a1 + 120)];
        sub_1000684F8(v4 + 376, &v25);
      }
    }

    v10 = sub_100064468(a1, 0, 0x18uLL);
    v10[4] = v9;
    v11 = *a1;
    v12 = *(*a1 + 40);
    *(v10 + 20) = (v12 & 0x100000) != 0;
    v13 = *(v11 + 352);
    v14 = v10 - v13;
    v15 = *(a1 + 168);
    v16 = (*(v11 + 360) - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    *(v11 + 360) = v13 + v16;
    *(a1 + 168) = v16;
    v17 = *(a1 + 176);
    *(a1 + 176) = 0;
    v18 = *(a1 + 148);
    *(a1 + 148) = -1;
    sub_100064848(a1);
    if (!sub_100064960(a1, v14))
    {
      return 0;
    }

    if (*(a1 + 176) == 1)
    {
      *(sub_100064468(a1, 28, 0x18uLL) + 16) = (v12 & 0x100000) != 0;
    }

    v19 = *a1;
    *(*a1 + 40) = v12;
    if (((v12 >> 20) & 1) != *(a1 + 24))
    {
      *(a1 + 24) = (v12 & 0x100000) != 0;
    }

    *(a1 + 176) = v17;
    *(a1 + 148) = v18;
    v3 = *(a1 + 136);
    if (v3 != *(a1 + 128))
    {
      if (*(**(a1 + 8) + *v3 + 32) == 2)
      {
        if (v9 && (v12 & 0x800000) != 0)
        {
          v20 = (v9 - 1);
          v22 = v19 + 376;
          v21 = *(v19 + 376);
          if (v20 >= (*(v22 + 8) - v21) >> 4)
          {
            sub_10006911C();
          }

          *(v21 + 16 * v20 + 8) = &v3[-*(a1 + 120)];
        }

        *(a1 + 136) = v3 + 1;
        v23 = 1;
        v24 = sub_100064468(a1, 1, 0x18uLL);
        v24[4] = v9;
        *(v24 + 20) = (*(*a1 + 40) & 0x100000) != 0;
        *(a1 + 160) = v14;
        *(a1 + 168) = v15;
        return v23;
      }

      return 0;
    }

LABEL_28:
    sub_100063EB4(a1, 8, &v3[-*(a1 + 120)]);
    return 0;
  }

  v7 = *(**(a1 + 8) + *v3 + 32);
  if (v7 == 6)
  {

    return sub_100067F74(a1);
  }

  else
  {
    if (v7 != 8)
    {
      goto LABEL_12;
    }

    return sub_100066924(a1);
  }
}

uint64_t sub_10006502C(uint64_t a1)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  v4 = v3 + 1;
  *(a1 + 136) = v3 + 1;
  if (v3 + 1 == v2)
  {
    v11 = *(a1 + 120);
    sub_10000459C(&__p, "Incomplete escape sequence found.");
    sub_100064770(a1, 5, &v4[-v11], &__p);
LABEL_7:
    if (SHIBYTE(v57) < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *v5;
  v7 = *v5 + 32;
  v8 = 0;
  v9 = 0;
  switch(*(v7 + *v4))
  {
    case 0x11:

      return sub_10006997C(a1);
    case 0x12:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 7;
      goto LABEL_36;
    case 0x13:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 8;
      goto LABEL_36;
    case 0x14:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 9;
      goto LABEL_36;
    case 0x15:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 10;
      goto LABEL_36;
    case 0x16:
      goto LABEL_39;
    case 0x17:
      v8 = 1;
      goto LABEL_39;
    case 0x18:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 11;
      goto LABEL_36;
    case 0x19:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 12;
      goto LABEL_36;
    case 0x21:
      if ((*(*a1 + 40) & 0x203) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    case 0x30:

      return sub_100069AC0(a1);
    case 0x31:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 19;
      goto LABEL_36;
    case 0x32:
      *(a1 + 136) = v3 + 2;
      v17 = *(*a1 + 40);
      v12 = 1;
      if ((v17 & 0x1000) != 0)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      if ((v17 & 0x2000) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      *(sub_100064468(a1, 5, 0x18uLL) + 16) = v19;
      return v12;
    case 0x33:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 20;
      goto LABEL_36;
    case 0x34:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 21;
LABEL_36:
      sub_100064468(v15, v16, 0x10uLL);
      return 1;
    case 0x36:
      goto LABEL_48;
    case 0x37:
      v9 = 1;
LABEL_48:
      v25 = v3 + 2;
      *(a1 + 136) = v3 + 2;
      if (v3 + 2 == v2)
      {
        v27 = *(a1 + 120);
        sub_10000459C(&__p, "Incomplete property escape found.");
        sub_100064770(a1, 5, &v2[-v27], &__p);
        goto LABEL_7;
      }

      if (*(v7 + *v25) == 15)
      {
        while (*(v7 + *v25) != 16)
        {
          *(a1 + 136) = ++v25;
          if (v25 == v2)
          {
            v26 = *(a1 + 120);
            sub_10000459C(&__p, "Closing } missing from property escape sequence.");
            sub_100064770(a1, 5, &v2[-v26], &__p);
            goto LABEL_7;
          }
        }

        *(a1 + 136) = v25 + 1;
        v28 = sub_100062EC4(v6, v3 + 3, v25);
      }

      else
      {
        v28 = sub_100062EC4(v6, v3 + 2, v3 + 3);
        ++*(a1 + 136);
      }

      if (!v28)
      {
        v38 = *(a1 + 136);
        v39 = *(a1 + 120);
        sub_10000459C(&__p, "Escape sequence was neither a valid property nor a valid character class name.");
        sub_100064770(a1, 4, v38 - v39, &__p);
        goto LABEL_7;
      }

      v61 = 0xAAAAAAAAAAAA0000;
      v57 = 0;
      v58 = 0;
      __p = &v56;
      v56 = 0;
      v59 = 0;
      v60 = 0;
      v64 = 0;
      v65 = 0;
      v63 = &v64;
      v62 = 0xAAAAAAAA00000000;
      if (v9)
      {
        LOBYTE(v61) = 1;
      }

      HIDWORD(v61) = v28;
      BYTE4(v62) = 0;
      v37 = sub_100069134(a1, &__p);
      v12 = v37 != 0;
      if (!v37)
      {
        sub_100063EB4(a1, 4, *(a1 + 136) - *(a1 + 120));
      }

      sub_100069150(&__p);
      return v12;
    case 0x39:
      if ((*(*a1 + 40) & 0x203) != 0)
      {
        goto LABEL_38;
      }

      v29 = v3 + 2;
      *(a1 + 136) = v3 + 2;
      if (v3 + 2 == v2)
      {
        goto LABEL_98;
      }

      v30 = *v29;
      v31 = *(v7 + *v29);
      v32 = v31 == 20;
      if (v31 == 25)
      {
        v32 = 1;
      }

      v33 = v31 == 15 || v32;
      if (v31 > 0x19 || ((1 << v31) & 0x2108000) == 0)
      {
        v36 = 0;
      }

      else
      {
        v29 = v3 + 3;
        *(a1 + 136) = v3 + 3;
        if (v3 + 3 == v2)
        {
LABEL_98:
          v47 = *(a1 + 120);
          sub_10000459C(&__p, "Incomplete \\g escape found.");
          sub_100064770(a1, 5, &v2[-v47], &__p);
          goto LABEL_7;
        }

        if (v31 == 20)
        {
          v35 = 21;
        }

        else
        {
          v35 = 25;
        }

        if (v31 == 15)
        {
          v36 = 16;
        }

        else
        {
          v36 = v35;
        }

        v30 = *v29;
      }

      if (v30 == 45)
      {
        *(a1 + 136) = ++v29;
        if (v29 == v2)
        {
          goto LABEL_98;
        }
      }

      v54 = v29;
      v40 = sub_1000685D0(v5, &v54, v2, 10);
      v41 = v33 ^ 1;
      if (v40 >= 0)
      {
        v41 = 1;
      }

      if ((v41 & 1) == 0)
      {
        v43 = *(a1 + 128);
        v42 = *(a1 + 136);
        if (v42 == v43)
        {
          v40 = 0x40000000;
        }

        else
        {
          v44 = 0;
          v45 = **(a1 + 8) + 32;
          v46 = *(a1 + 136);
          while (v36 != *(v45 + *v46))
          {
            *(a1 + 136) = ++v46;
            --v44;
            if (v46 == v43)
            {
              goto LABEL_101;
            }
          }

          if (!v44)
          {
            v40 = 0x40000000;
            goto LABEL_104;
          }

LABEL_101:
          v48 = 0;
          do
          {
            v49 = *v42++;
            v48 ^= (v48 << 6) + (v48 >> 2) + 2654435769u + v49;
          }

          while (v42 != v46);
          v40 = (v48 % 0x7FFFFFFF) | 0x40000000;
LABEL_104:
          v42 = v46;
        }

        v54 = v42;
      }

      if (v30 == 45)
      {
        v40 = *(a1 + 144) - v40 + 1;
      }

      if ((v40 - 1) <= 0x3FFFFFFE || v40 >= 0x40000000 && sub_100069C28(*a1, v40) >= 1)
      {
        *(a1 + 136) = v54;
        v50 = sub_100064468(a1, 13, 0x18uLL);
        v50[4] = v40;
        *(v50 + 20) = (*(*a1 + 40) & 0x100000) != 0;
        v51 = v40 >= 0x40000000;
        if (v40 <= *(a1 + 184))
        {
          v51 = 1;
        }

        if (!v51)
        {
          *(a1 + 184) = v40;
        }

        v52 = v54;
        *(a1 + 136) = v54;
        v12 = 1;
        if (v31 > 0x19 || ((1 << v31) & 0x2108000) == 0)
        {
          return v12;
        }

        if (v52 != *(a1 + 128) && v36 == *(**(a1 + 8) + *v52 + 32))
        {
          *(a1 + 136) = v52 + 1;
          return v12;
        }

        v53 = *(a1 + 120);
        sub_10000459C(&__p, "Incomplete \\g escape found.");
        sub_100064770(a1, 5, &v52[-v53], &__p);
        goto LABEL_7;
      }

      sub_100063EB4(a1, 6, *(a1 + 136) - *(a1 + 120));
      return 0;
    case 0x3A:
      if ((*(*a1 + 40) & 0x203) != 0)
      {
        goto LABEL_38;
      }

      v13 = sub_100064468(a1, 0, 0x18uLL);
      v13[4] = -5;
      v14 = *a1;
      *(v13 + 20) = (*(*a1 + 40) & 0x100000) != 0;
      v14[45] = (v14[44] + ((v14[45] - v14[44] + 7) & 0xFFFFFFFFFFFFFFF8));
      ++*(a1 + 136);
      return 1;
    case 0x3B:
      if ((*(*a1 + 40) & 0x203) == 0)
      {
        v20 = *(a1 + 120);
        *(a1 + 120) = &unk_10014339F;
        *(a1 + 128) = &unk_1001433B3;
        *(a1 + 136) = &unk_10014339F;
        result = sub_100064848(a1);
        *(a1 + 128) = v2;
        *(a1 + 136) = v3 + 2;
        *(a1 + 120) = v20;
        return result;
      }

LABEL_38:
      v8 = 0;
LABEL_39:
      v21 = sub_100062EC4(v6, v3 + 1, v3 + 2);
      if (v21)
      {
        v61 = 0xAAAAAAAAAAAA0000;
        v57 = 0;
        v58 = 0;
        __p = &v56;
        v56 = 0;
        v59 = 0;
        v60 = 0;
        v64 = 0;
        v65 = 0;
        v63 = &v64;
        v62 = 0xAAAAAAAA00000000;
        if (v8)
        {
          LOBYTE(v61) = 1;
        }

        HIDWORD(v61) = v21;
        BYTE4(v62) = 0;
        v22 = sub_10006A624(a1, &__p);
        v12 = v22 != 0;
        v23 = *(a1 + 136);
        if (v22)
        {
          *(a1 + 136) = v23 + 1;
        }

        else
        {
          sub_100063EB4(a1, 4, v23 - *(a1 + 120));
        }

        sub_10006B310(&v63, v64);
        if (v58)
        {
          v59 = v58;
          operator delete(v58);
        }

        sub_10006B310(&__p, v56);
      }

      else
      {
LABEL_44:
        v24 = sub_1000692C8(a1);
        sub_10006919C(a1, v24);
        return 1;
      }

      return v12;
    default:
      goto LABEL_44;
  }
}

void sub_10006593C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100065990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 128);
  v7 = *(a1 + 136);
  if (v7 != v6 && ((*(*a1 + 40) & 0x203) != 0 ? (v8 = (*(*a1 + 40) & 0x1003) == 4097) : (v8 = 1), v8))
  {
    if ((*(*a1 + 40) & 0xA01) == 0x800)
    {
      do
      {
        v9 = sub_10006B248(*(a1 + 8), *v7, *(a1 + 84));
        v6 = *(a1 + 128);
        v7 = *(a1 + 136);
        if (!v9)
        {
          break;
        }

        *(a1 + 136) = ++v7;
      }

      while (v7 != v6);
    }

    if (v7 == v6 || *(**(a1 + 8) + *v7 + 32) != 8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      *(a1 + 136) = ++v7;
    }

    if (v7 == v6)
    {
      v11 = 0;
      v7 = v6;
    }

    else if ((*(*a1 + 40) & 3) != 0 || *(**(a1 + 8) + *v7 + 32) != 7)
    {
      v11 = 0;
    }

    else
    {
      *(a1 + 136) = ++v7;
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
    v10 = 1;
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    v15 = *(a1 + 120);
    sub_10000459C(__p, "Nothing to repeat.");
    sub_100064770(a1, 13, &v7[-v15], __p);
    if (v42 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v13 = *v12;
  if (*v12 > 0x1Cu)
  {
    goto LABEL_34;
  }

  if (((1 << v13) & 0x14331F99) != 0)
  {
    v14 = &v7[-*(a1 + 120)];
LABEL_18:
    sub_100063EB4(a1, 13, v14);
    return 0;
  }

  if (v13 != 1)
  {
    if (v13 == 2)
    {
      v18 = v12[4];
      if (v18 >= 2)
      {
        v19 = v18 - 1;
        v20 = *(v12 + v19 + 24);
        v12[4] = v19;
        v21 = sub_100064468(a1, 2, 0x19uLL);
        v21[4] = 1;
        *(v21 + 24) = v20;
        v12 = *(a1 + 16);
      }
    }

LABEL_34:
    v22 = v12 - *(*a1 + 352);
    goto LABEL_36;
  }

  v22 = *(a1 + 160);
LABEL_36:
  v23 = sub_100068C28(a1, v22, 18, 0x138uLL);
  *(v23 + 288) = a2;
  *(v23 + 296) = a3;
  *(v23 + 309) = v10;
  *(v23 + 308) = 0;
  v24 = v23 - *(*a1 + 352);
  v25 = sub_100064468(a1, 16, 0x18uLL);
  *(v25 + 2) = v24 - v25 + *(*a1 + 352);
  v26 = *(*a1 + 352);
  v27 = (*(*a1 + 360) - v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(*a1 + 360) = v26 + v27;
  *(v26 + v24 + 16) = v27 - v24;
  if (!v11)
  {
    return 1;
  }

  v29 = *(a1 + 128);
  v28 = *(a1 + 136);
  if (v28 != v29)
  {
    while (1)
    {
LABEL_38:
      if ((*(*a1 + 40) & 0xA03) == 0x800)
      {
        if (v28 == v29)
        {
          break;
        }

        do
        {
          v30 = sub_10006B248(*(a1 + 8), *v28, *(a1 + 84));
          v29 = *(a1 + 128);
          v28 = *(a1 + 136);
          if (!v30)
          {
            break;
          }

          *(a1 + 136) = ++v28;
        }

        while (v28 != v29);
      }

      if (v28 == v29)
      {
        break;
      }

      v31 = **(a1 + 8) + 32;
      v32 = *(v31 + *v28);
      if (v32 != 1)
      {
        if (v32 <= 0xF && ((1 << v32) & 0x81C0) != 0)
        {
          v14 = &v28[-*(a1 + 120)];
          goto LABEL_18;
        }

        break;
      }

      if ((v28 + 2) >= v29 || *(v31 + v28[1]) != 8 || *(v31 + v28[2]) != 13)
      {
        break;
      }

      while (v28 != v29)
      {
        v33 = (v28 + 1);
        *(a1 + 136) = v28 + 1;
        v34 = *(v31 + *v28++);
        if (v34 == 2)
        {
          v28 = v33;
          goto LABEL_38;
        }
      }
    }
  }

  v36 = sub_100068C28(a1, v22, 0, 0x18uLL);
  *(v36 + 16) = -3;
  *(v36 + 20) = (*(*a1 + 40) & 0x100000) != 0;
  v37 = sub_100068C28(a1, v22 + 24, 16, 0x18uLL);
  v38 = *(*a1 + 352);
  v39 = (*(*a1 + 360) - v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(*a1 + 360) = v38 + v39;
  *(v37 + 16) = v38 - v37 + v39;
  v16 = 1;
  v40 = sub_100064468(a1, 1, 0x18uLL);
  v40[4] = -3;
  *(v40 + 20) = (*(*a1 + 40) & 0x100000) != 0;
  return v16;
}

void sub_100065DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100065E18(uint64_t a1, int a2)
{
  v5 = (a1 + 136);
  v4 = *(a1 + 136);
  v6 = *(a1 + 128);
  while (v4 != v6)
  {
    v7 = sub_10006B248(*(a1 + 8), *v4, *(a1 + 84));
    v6 = *(a1 + 128);
    v4 = *(a1 + 136);
    if (!v7)
    {
      break;
    }

    *v5 = ++v4;
  }

  if (v4 == v6)
  {
    if ((*(*a1 + 40) & 0x203) == 0)
    {
      v28 = **(a1 + 8) + 32;
      v29 = v4 - 1;
      do
      {
        *v5 = v29;
        v30 = *v29--;
      }

      while (*(v28 + v30) != 15);
      goto LABEL_68;
    }

    v23 = *(a1 + 120);
    sub_10000459C(__p, "Missing } in quantified repetition.");
    sub_100064770(a1, 9, &v6[-v23], __p);
    goto LABEL_40;
  }

  v8 = sub_1000685D0(*(a1 + 8), v5, v6, 10);
  if (v8 < 0)
  {
    if ((*(*a1 + 40) & 0x203) == 0)
    {
      v34 = **(a1 + 8) + 32;
      v35 = (*(a1 + 136) - 1);
      do
      {
        *v5 = v35;
        v36 = *v35--;
      }

      while (*(v34 + v36) != 15);
      goto LABEL_68;
    }

    v24 = *(a1 + 136);
    v25 = *(a1 + 120);
    sub_10000459C(__p, "Missing } in quantified repetition.");
    sub_100064770(a1, 9, v24 - v25, __p);
    goto LABEL_40;
  }

  v9 = *(a1 + 136);
  if (v9 == *(a1 + 128))
  {
    v12 = *(a1 + 136);
    goto LABEL_38;
  }

  v10 = v8;
  do
  {
    v11 = sub_10006B248(*(a1 + 8), *v9, *(a1 + 84));
    v12 = *(a1 + 128);
    v9 = *(a1 + 136);
    if (!v11)
    {
      break;
    }

    *v5 = ++v9;
  }

  while (v9 != v12);
  if (v9 == v12)
  {
LABEL_38:
    if ((*(*a1 + 40) & 0x203) == 0)
    {
      v31 = **(a1 + 8) + 32;
      v32 = v9 - 1;
      do
      {
        *v5 = v32;
        v33 = *v32--;
      }

      while (*(v31 + v33) != 15);
      goto LABEL_68;
    }

    goto LABEL_39;
  }

  v13 = v10;
  if (*(**(a1 + 8) + *v9 + 32) == 27)
  {
    while (1)
    {
      v14 = *(a1 + 128);
      v15 = (*(a1 + 136) + 1);
      *(a1 + 136) = v15;
      if (v15 == v14)
      {
        break;
      }

      if (!sub_10006B248(*(a1 + 8), *v15, *(a1 + 84)))
      {
        v14 = *(a1 + 128);
        v15 = *(a1 + 136);
        break;
      }
    }

    if (v15 != v14)
    {
      v16 = sub_1000685D0(*(a1 + 8), v5, v14, 10);
      if (v16 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = -1;
      }

      else
      {
        v13 = v16;
      }

      v12 = *(a1 + 128);
      v9 = *(a1 + 136);
      goto LABEL_23;
    }

    if ((*(*a1 + 40) & 0x203) == 0)
    {
      v44 = **(a1 + 8) + 32;
      v45 = v15 - 1;
      do
      {
        *v5 = v45;
        v46 = *v45--;
      }

      while (*(v44 + v46) != 15);
      goto LABEL_68;
    }

    v37 = *(a1 + 120);
    sub_10000459C(__p, "Missing } in quantified repetition.");
    sub_100064770(a1, 9, &v14[-v37], __p);
LABEL_40:
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

LABEL_23:
  while (v9 != v12)
  {
    v17 = sub_10006B248(*(a1 + 8), *v9, *(a1 + 84));
    v12 = *(a1 + 128);
    v9 = *(a1 + 136);
    if (!v17)
    {
      break;
    }

    *v5 = ++v9;
  }

  if (v9 == v12)
  {
    if ((*(*a1 + 40) & 0x203) == 0)
    {
      v41 = **(a1 + 8) + 32;
      v42 = v9 - 1;
      do
      {
        *v5 = v42;
        v43 = *v42--;
      }

      while (*(v41 + v43) != 15);
      goto LABEL_68;
    }

    goto LABEL_39;
  }

  v18 = *(a1 + 8);
  v19 = *v18;
  if (!a2)
  {
    goto LABEL_28;
  }

  if (*(v19 + *v9 + 32) != 12)
  {
    v40 = *(a1 + 120);
    sub_10000459C(__p, "Missing } in quantified repetition.");
    sub_100064770(a1, 9, &v9[-v40], __p);
    goto LABEL_40;
  }

  *v5 = ++v9;
  if (v9 == v12)
  {
LABEL_39:
    v26 = *(a1 + 120);
    sub_10000459C(__p, "Missing } in quantified repetition.");
    sub_100064770(a1, 9, &v12[-v26], __p);
    goto LABEL_40;
  }

LABEL_28:
  v20 = v19 + 32;
  if (*(v20 + *v9) != 16)
  {
    v38 = v9 - 1;
    do
    {
      *v5 = v38;
      v39 = *v38--;
    }

    while (*(v20 + v39) != 15);
LABEL_68:

    return sub_100064700(a1);
  }

  *v5 = v9 + 1;
  if (v10 > v13)
  {
    *(a1 + 136) = v9 - 1;
    if (sub_10006B248(v18, *(v9 - 1), *(a1 + 80)))
    {
      do
      {
        v21 = *(a1 + 136);
        *(a1 + 136) = v21 - 1;
      }

      while (sub_10006B248(*(a1 + 8), *(v21 - 1), *(a1 + 80)));
    }

    v22 = *(a1 + 136) + 1;
    *(a1 + 136) = v22;
    sub_100063EB4(a1, 10, v22 - *(a1 + 120));
    return 0;
  }

  return sub_100065990(a1, v10, v13);
}

void sub_1000663A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000663E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && *v2 || (*(*a1 + 40) & 0x1000003) == 0)
  {
    v6 = *(a1 + 144);
    if (*(a1 + 152) < v6)
    {
      *(a1 + 152) = v6;
    }

    v7 = *(a1 + 148);
    if ((v7 & 0x80000000) == 0)
    {
      *(a1 + 144) = v7;
    }

    ++*(a1 + 136);
    v8 = sub_100064468(a1, 16, 0x18uLL) - *(*a1 + 352);
    v9 = sub_100068C28(a1, *(a1 + 168), 17, 0x120uLL);
    v10 = v8 + 288;
    v11 = *(*a1 + 352);
    v12 = (*(*a1 + 360) - v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    *(*a1 + 360) = v11 + v12;
    *(v9 + 16) = v11 - v9 + v12;
    *(a1 + 168) = *(*a1 + 360) - *(*a1 + 352);
    if (*(a1 + 176) == 1)
    {
      v13 = *(a1 + 24);
      *(sub_100064468(a1, 28, 0x18uLL) + 16) = v13;
    }

    v15 = *(a1 + 200);
    v14 = *(a1 + 208);
    if (v15 >= v14)
    {
      v17 = *(a1 + 192);
      v18 = v15 - v17;
      v19 = (v15 - v17) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        sub_10002C63C();
      }

      v21 = v14 - v17;
      if (v21 >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      v22 = v21 >= 0x7FFFFFFFFFFFFFF8;
      v23 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v22)
      {
        v23 = v20;
      }

      if (v23)
      {
        sub_100007BA0(a1 + 192, v23);
      }

      v24 = (v15 - v17) >> 3;
      v25 = (8 * v19);
      v26 = (8 * v19 - 8 * v24);
      *v25 = v10;
      v16 = v25 + 1;
      memcpy(v26, v17, v18);
      v27 = *(a1 + 192);
      *(a1 + 192) = v26;
      *(a1 + 200) = v16;
      *(a1 + 208) = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *v15 = v10;
      v16 = v15 + 8;
    }

    *(a1 + 200) = v16;
    return 1;
  }

  else
  {
    v3 = *(a1 + 136);
    v4 = *(a1 + 120);
    sub_10000459C(__p, "A regular expression cannot start with the alternation operator |.");
    sub_100064770(a1, 17, v3 - v4, __p);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }
}

void sub_100066620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100066644(uint64_t a1)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 136) + 1;
  *(a1 + 136) = v3;
  if (v3 == v2)
  {
    v14 = *(a1 + 120);
    sub_10000459C(&__p, "Character set declaration starting with [ terminated prematurely - either no ] was found or the set had no content.");
    sub_100064770(a1, 7, v3 - v14, &__p);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  v18 = 0u;
  __p = &v18;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v22 = 2863267840;
  v23 = 0xAAAAAA0100000000;
  v4 = v3;
  v5 = v3;
  while (1)
  {
    v6 = **(a1 + 8);
    v7 = *(v6 + 32 + *v4);
    if (v7 <= 9)
    {
      if (v7 != 4)
      {
        if (v7 == 9)
        {
          if (!sub_10006B848(a1, &__p))
          {
            goto LABEL_33;
          }

          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (v4 != v3)
      {
        goto LABEL_23;
      }

      LOBYTE(v22) = 1;
      v11 = v4 + 1;
      v5 = v4 + 1;
LABEL_21:
      *(a1 + 136) = v11;
      goto LABEL_24;
    }

    if (v7 != 10)
    {
      if (v7 != 12)
      {
        goto LABEL_23;
      }

      v8 = v4 + 1;
      *(a1 + 136) = v4 + 1;
      v9 = *(v6 + 32 + v4[1]);
      if (v9 == 23)
      {
        v12 = sub_100062EC4(v6, v8, v4 + 2);
        v8 = *(a1 + 136);
        if (!v12)
        {
          goto LABEL_22;
        }

        LODWORD(v23) = v23 | v12;
      }

      else
      {
        if (v9 != 22 || (v10 = sub_100062EC4(v6, v8, v4 + 2), v8 = *(a1 + 136), !v10))
        {
LABEL_22:
          *(a1 + 136) = v8 - 1;
LABEL_23:
          sub_10006B6C4(a1, &__p);
          goto LABEL_24;
        }

        HIDWORD(v22) |= v10;
      }

      BYTE4(v23) = 0;
      v11 = v8 + 1;
      goto LABEL_21;
    }

    if (v4 != v5)
    {
      break;
    }

    sub_10006B6C4(a1, &__p);
    v5 = v4;
LABEL_24:
    v4 = *(a1 + 136);
    if (v4 == *(a1 + 128))
    {
      goto LABEL_25;
    }
  }

  *(a1 + 136) = v4 + 1;
  if (BYTE1(v22) == 1)
  {
    v15 = sub_100069C88(a1, &__p);
  }

  else
  {
    v15 = sub_10006A624(a1, &__p);
  }

  if (!v15)
  {
    sub_100063EB4(a1, 4, *(a1 + 136) - *(a1 + 120));
LABEL_25:
    v13 = 0;
    goto LABEL_34;
  }

LABEL_33:
  v13 = 1;
LABEL_34:
  sub_10006B310(&v24, v25[0]);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  sub_10006B310(&__p, v18);
  return v13;
}

uint64_t sub_100066924(uint64_t a1)
{
  v3 = (a1 + 136);
  v2 = *(a1 + 136);
  v4 = v2 + 1;
  *(a1 + 136) = v2 + 1;
  v5 = *(a1 + 128);
  v6 = *(a1 + 8);
  if (v2 + 1 == v5)
  {
    v10 = *v6 + 32;
    do
    {
      *v3 = v2;
      v11 = *v2--;
      --v4;
    }

    while (*(v10 + v11) != 1);
    goto LABEL_8;
  }

  v7 = *v6 + 32;
  if (*(v7 + *v4) == 13)
  {
    do
    {
      if (v4 == v5)
      {
        break;
      }

      *v3 = v4 + 1;
      v8 = *(v7 + *v4++);
    }

    while (v8 != 2);
    return 1;
  }

  v13 = sub_100064468(a1, 0, 0x18uLL);
  v14 = *a1;
  v15 = *(*a1 + 40);
  *(v13 + 20) = (v15 & 0x100000) != 0;
  v16 = *(a1 + 168);
  v17 = *(v14 + 352);
  v18 = (*(v14 + 360) - v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v14 + 360) = v17 + v18;
  *(a1 + 168) = v18;
  v235 = *(a1 + 176);
  *(a1 + 176) = 0;
  v19 = *(a1 + 148);
  v20 = *(a1 + 144);
  *(a1 + 148) = -1;
  *(a1 + 152) = v20;
  v21 = *(a1 + 8);
  v22 = *(a1 + 136);
  v23 = *v22;
  v24 = *v21 + 32;
  v25 = *(v24 + *v22);
  if (v25 > 0x13)
  {
    if (*(v24 + *v22) > 0x23u)
    {
      switch(v25)
      {
        case '$':
LABEL_63:
          v234 = v16;
          v59 = 0;
          v31 = 0;
          v13[4] = 0;
          *v3 = v22 + 1;
LABEL_231:
          v93 = 1;
          goto LABEL_232;
        case '%':
          v234 = v16;
          v31 = -1;
          break;
        case '5':
          v234 = v16;
          v31 = -2;
          break;
        default:
          goto LABEL_76;
      }
    }

    else
    {
      if (v25 == 20)
      {
        v56 = v22 + 1;
        *(a1 + 136) = v22 + 1;
        if (v22 + 1 == *(a1 + 128))
        {
          do
          {
            *v3 = v22;
            v58 = *v22--;
            --v56;
          }

          while (*(v24 + v58) != 1);
          v12 = &v56[-*(a1 + 120)];
          goto LABEL_9;
        }

        v57 = *(v24 + *v56);
        if (v57 == 53)
        {
          v234 = v16;
          v31 = -2;
        }

        else
        {
          if (v57 != 37)
          {
            *v3 = v22;
            v23 = 62;
            goto LABEL_25;
          }

          v234 = v16;
          v31 = -1;
        }

        v13[4] = v31;
        *(a1 + 136) = v22 + 2;
        v59 = sub_100064468(a1, 16, 0x18uLL) - *(*a1 + 352);
        sub_100064468(a1, 26, 0x18uLL);
        v70 = *a1;
        v71 = *(*a1 + 352);
        v72 = *(*a1 + 360);
LABEL_75:
        v73 = (v72 - v71 + 7) & 0xFFFFFFFFFFFFFFF8;
        *(v70 + 360) = v71 + v73;
        *(a1 + 168) = v73;
        goto LABEL_231;
      }

      if (v25 != 21)
      {
        if (v25 != 25)
        {
          goto LABEL_76;
        }

LABEL_25:
        v234 = v16;
        if ((v15 & 0x400000) != 0)
        {
          v31 = 0;
        }

        else
        {
          v31 = v20 + 1;
          *(a1 + 144) = v20 + 1;
          if ((v15 & 0x800000) != 0)
          {
            __p[0] = &v22[-*(a1 + 120) - 2];
            __p[1] = 0;
            sub_1000684F8(v14 + 376, __p);
            v22 = *(a1 + 136);
          }
        }

        v13[4] = v31;
        v78 = (v22 + 1);
        *(a1 + 136) = v22 + 1;
        v79 = *(a1 + 128);
        if (v22 + 1 == v79)
        {
          v85 = **(a1 + 8) + 32;
          do
          {
            *v3 = v22;
            v86 = *v22--;
            --v78;
          }

          while (*(v85 + v86) != 1);
          sub_100063EB4(a1, 20, &v78[-*(a1 + 120)]);
        }

        else
        {
          v80 = v22 + 1;
          v81 = (v22 + 1);
          do
          {
            if (*v81 == v23)
            {
              sub_100068944(*a1, v78, v81, v31);
              v59 = 0;
              ++*(a1 + 136);
              goto LABEL_231;
            }

            *v3 = ++v81;
            ++v80;
          }

          while (v81 != v79);
          v82 = **(a1 + 8) + 32;
          v83 = v81 - 1;
          do
          {
            *v3 = v83;
            v84 = *v83--;
            --v80;
          }

          while (*(v82 + v84) != 1);
          sub_100063EB4(a1, 20, &v80[-*(a1 + 120)]);
        }

        return 0;
      }

      v234 = v16;
      v31 = -3;
    }

    v13[4] = v31;
    *(a1 + 136) = v22 + 1;
    v69 = sub_100064468(a1, 16, 0x18uLL);
    v70 = *a1;
    v71 = *(*a1 + 352);
    v72 = *(*a1 + 360);
    v59 = v69 - v71;
    goto LABEL_75;
  }

  if (*(v24 + *v22) <= 0xAu)
  {
    if (v25 != 1)
    {
      if (v25 != 2)
      {
        if (v25 == 7)
        {
          v234 = v16;
          *(a1 + 136) = v22 + 1;
          v26 = sub_1000685D0(v21, v3, *(a1 + 128), 10);
          v27 = **(a1 + 8);
          v28 = *(a1 + 136);
          if (v26 < 1 || *(v27 + *v28 + 32) != 2)
          {
            v75 = v27 + 32;
            v76 = v28 - 1;
            do
            {
              *v3 = v76;
              v77 = *v76--;
              --v28;
            }

            while (*(v75 + v77) != 1);
            goto LABEL_20;
          }

          v29 = *(a1 + 144);
          if ((v29 ^ 0x7FFFFFFFFFFFFFFFuLL) < v26)
          {
LABEL_20:
            v30 = *(a1 + 120);
            sub_10000459C(__p, "An invalid or unterminated recursive sub-expression.");
            sub_100064770(a1, 20, &v28[-v30], __p);
            goto LABEL_249;
          }

          v35 = v26 + v29;
          goto LABEL_230;
        }

        goto LABEL_76;
      }

      v60 = v22 - 1;
      do
      {
        *v3 = v60;
        v61 = *v60--;
        --v22;
      }

      while (*(v24 + v61) != 1);
LABEL_66:
      v12 = &v22[-*(a1 + 120)];
      goto LABEL_9;
    }

    v13[4] = -4;
    v40 = v22 + 1;
    *(a1 + 136) = v22 + 1;
    v41 = *(a1 + 128);
    if (v22 + 1 == v41)
    {
      do
      {
        *v3 = v22;
        v55 = *v22--;
        --v40;
      }

      while (*(v24 + v55) != 1);
      goto LABEL_115;
    }

    v234 = v16;
    v42 = sub_1000685D0(v21, v3, v41, 10);
    v43 = *(a1 + 128);
    v4 = *(a1 + 136);
    v44 = v4 - v43;
    if (v4 == v43)
    {
      v106 = **(a1 + 8) + 32;
      v107 = v4 - 1;
      do
      {
        *v3 = v107;
        v108 = *v107--;
        --v4;
      }

      while (*(v106 + v108) != 1);
      goto LABEL_8;
    }

    v45 = v42;
    v46 = *v4;
    if (v46 <= 0x43)
    {
      if (v46 == 39 || v46 == 60)
      {
        v22 = v4 + 1;
        *v3 = v4 + 1;
        if (v4 + 1 == v43)
        {
LABEL_51:
          v52 = **(a1 + 8) + 32;
          v53 = v22 - 1;
          do
          {
            *v3 = v53;
            v54 = *v53--;
            --v22;
          }

          while (*(v52 + v54) != 1);
          goto LABEL_66;
        }

        v47 = 0;
        v48 = v44 + 1;
        v49 = v4;
        while (1)
        {
          v51 = *++v49;
          v50 = v51;
          if (v51 == 39 || v50 == 62)
          {
            break;
          }

          *v3 = v4 + 2;
          --v47;
          v4 = v49;
          if (v48 == v47)
          {
            v22 = v49 + 1;
            goto LABEL_51;
          }
        }

        if (v47)
        {
          v128 = 0;
          v129 = -v47;
          do
          {
            v130 = *v22++;
            v128 ^= (v128 << 6) + 2654435769u + (v128 >> 2) + v130;
            --v129;
          }

          while (v129);
          v131 = (v128 % 0x7FFFFFFF) | 0x40000000;
        }

        else
        {
          v131 = 0x40000000;
        }

        sub_100064468(a1, 27, 0x18uLL)[4] = v131;
        v143 = *(a1 + 136);
        v144 = *v143;
        if (v144 == 62 || v144 == 39)
        {
          v145 = v143 + 1;
          *(a1 + 136) = v143 + 1;
          v146 = *(a1 + 128);
          if (v143 + 1 != v146)
          {
            v147 = **(a1 + 8) + 32;
            if (*(v147 + *v145) != 2)
            {
              v22 = v143 + 1;
              do
              {
                *v3 = v143;
                v162 = *v143--;
                --v22;
              }

              while (*(v147 + v162) != 1);
              goto LABEL_66;
            }

            v40 = v143 + 2;
            *v3 = v143 + 2;
            if (v143 + 2 == v146)
            {
              do
              {
                *v3 = v145;
                v148 = *v145--;
                --v40;
              }

              while (*(v147 + v148) != 1);
              goto LABEL_115;
            }

            goto LABEL_304;
          }

          ++v143;
        }

        v156 = **(a1 + 8) + 32;
        v157 = v143 - 1;
        do
        {
          *v3 = v157;
          v158 = *v157--;
          --v143;
        }

        while (*(v156 + v158) != 1);
        v159 = *(a1 + 120);
        sub_10000459C(__p, "Unterminated named capture.");
        sub_100064770(a1, 20, &v143[-v159], __p);
        goto LABEL_249;
      }

      goto LABEL_149;
    }

    if (v46 != 82)
    {
      if (v46 == 68)
      {
        v109 = &_mh_execute_header.magic + 1;
        do
        {
          if (v4 == v43 || *v4 != v46)
          {
            goto LABEL_171;
          }

          *v3 = ++v4;
          v46 = aDefine[v109++];
        }

        while (v109 != 7);
        if (v4 == v43)
        {
LABEL_171:
          v132 = **(a1 + 8) + 32;
          v133 = v4 - 1;
          do
          {
            *v3 = v133;
            v134 = *v133--;
            --v4;
          }

          while (*(v132 + v134) != 1);
          goto LABEL_8;
        }

        sub_100064468(a1, 27, 0x18uLL)[4] = 9999;
        v4 = *(a1 + 136);
        v110 = **(a1 + 8) + 32;
        if (*(v110 + *v4) != 2)
        {
          v217 = v4 - 1;
          do
          {
            *v3 = v217;
            v218 = *v217--;
            --v4;
          }

          while (*(v110 + v218) != 1);
          goto LABEL_8;
        }

        v40 = v4 + 1;
        *(a1 + 136) = v4 + 1;
        if (v4 + 1 != *(a1 + 128))
        {
          goto LABEL_304;
        }

        do
        {
          *v3 = v4;
          v111 = *v4--;
          --v40;
        }

        while (*(v110 + v111) != 1);
        goto LABEL_115;
      }

LABEL_149:
      if (v42 < 1)
      {
        v137 = **(a1 + 8) + 32;
        if (*(v137 + *v4) != 8)
        {
          v160 = v4 - 1;
          do
          {
            *v3 = v160;
            v161 = *v160--;
            --v4;
          }

          while (*(v137 + v161) != 1);
          goto LABEL_8;
        }

        v40 = v4 + 1;
        *v3 = v4 + 1;
        if (v4 + 1 == v43)
        {
          do
          {
            *v3 = v4;
            v140 = *v4--;
            --v40;
          }

          while (*(v137 + v140) != 1);
          goto LABEL_115;
        }

        v138 = *(v137 + *v40);
        if (v138 == 20)
        {
          v231 = v4 + 2;
          *v3 = v4 + 2;
          if (v4 + 2 == v43)
          {
            do
            {
              *v3 = v40;
              v232 = *v40--;
              --v231;
            }

            while (*(v137 + v232) != 1);
            v12 = &v231[-*(a1 + 120)];
            goto LABEL_9;
          }

          if ((*(v137 + *v231) | 0x10) != 0x35)
          {
            v4 += 2;
            do
            {
              *v3 = v40;
              v233 = *v40--;
              --v4;
            }

            while (*(v137 + v233) != 1);
            goto LABEL_8;
          }
        }

        else if (v138 != 37 && v138 != 53)
        {
          v40 = v4 + 1;
          do
          {
            *v3 = v4;
            v139 = *v4--;
            --v40;
          }

          while (*(v137 + v139) != 1);
          goto LABEL_115;
        }

        v59 = 0;
        *v3 = v4 - 1;
LABEL_305:
        v31 = -4;
        goto LABEL_231;
      }

      sub_100064468(a1, 27, 0x18uLL)[4] = v42;
      v4 = *(a1 + 136);
      v116 = **(a1 + 8) + 32;
      if (*(v116 + *v4) != 2)
      {
        v149 = v4 - 1;
        do
        {
          *v3 = v149;
          v150 = *v149--;
          --v4;
        }

        while (*(v116 + v150) != 1);
        goto LABEL_8;
      }

      v40 = v4 + 1;
      *(a1 + 136) = v4 + 1;
      if (v4 + 1 == *(a1 + 128))
      {
        do
        {
          *v3 = v4;
          v117 = *v4--;
          --v40;
        }

        while (*(v116 + v117) != 1);
        goto LABEL_115;
      }

LABEL_304:
      v59 = 0;
      goto LABEL_305;
    }

    v22 = v4 + 1;
    *v3 = v4 + 1;
    if (v4 + 1 == v43)
    {
      v141 = **(a1 + 8) + 32;
      do
      {
        *v3 = v4;
        v142 = *v4--;
        --v22;
      }

      while (*(v141 + v142) != 1);
      goto LABEL_66;
    }

    if (*v22 != 38)
    {
      v45 = -sub_1000685D0(*(a1 + 8), v3, v43, 10);
      goto LABEL_302;
    }

    v118 = (v4 + 2);
    *(a1 + 136) = v4 + 2;
    v119 = **(a1 + 8);
    if (v4 + 2 == v43)
    {
      v216 = 1;
    }

    else
    {
      if (*(v119 + 32 + *v118) == 2)
      {
        v120 = 0;
        v121 = 1;
        v122 = v118;
LABEL_291:
        if (v121)
        {
          v222 = 0x4000000000000000;
        }

        else
        {
          v223 = 0;
          do
          {
            v224 = *v118++;
            v223 ^= (v223 << 6) + 2654435769u + (v223 >> 2) + v224;
          }

          while (v118 != v122);
          v222 = ((v223 % 0x7FFFFFFF) << 32) | 0x4000000000000000;
        }

        if (v120)
        {
          return 0;
        }

        v45 = -v222 >> 32;
        goto LABEL_302;
      }

      v219 = v4 + 3;
      v220 = -3;
      while (1)
      {
        *v3 = v219;
        if (v44 == v220)
        {
          break;
        }

        v221 = *v219++;
        --v220;
        if (*(v119 + 32 + v221) == 2)
        {
          v122 = v219 - 1;
          v120 = v219 - 1 == v43;
          v121 = v220 == -3;
          goto LABEL_291;
        }
      }

      v216 = v219 == v43;
      v118 = v219;
    }

    v225 = (v118 - 1);
    do
    {
      *v3 = v225;
      v226 = *v225--;
      --v118;
    }

    while (*(v119 + 32 + v226) != 1);
    sub_100063EB4(a1, 20, &v118[-*(a1 + 120)]);
    if (v216)
    {
      return 0;
    }

LABEL_302:
    sub_100064468(a1, 27, 0x18uLL)[4] = (v45 >> 63) & (v45 - 1);
    v4 = *(a1 + 136);
    v227 = **(a1 + 8) + 32;
    if (*(v227 + *v4) != 2)
    {
      v229 = v4 - 1;
      do
      {
        *v3 = v229;
        v230 = *v229--;
        --v4;
      }

      while (*(v227 + v230) != 1);
      goto LABEL_8;
    }

    v40 = v4 + 1;
    *(a1 + 136) = v4 + 1;
    if (v4 + 1 == *(a1 + 128))
    {
      do
      {
        *v3 = v4;
        v228 = *v4--;
        --v40;
      }

      while (*(v227 + v228) != 1);
      goto LABEL_115;
    }

    goto LABEL_304;
  }

  switch(v25)
  {
    case 0xBu:
      *(a1 + 148) = v20;
      goto LABEL_63;
    case 0xEu:
      *(a1 + 136) = v22 + 1;
      v62 = sub_1000685D0(v21, v3, *(a1 + 128), 10);
      if (v62 > 0)
      {
        v63 = *(a1 + 144) - v62;
        if (v63 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v64 = **(a1 + 8) + 32;
          v65 = *(a1 + 136);
          v66 = (v65 - 1);
          do
          {
            *v3 = v66;
            v67 = *v66--;
            --v65;
          }

          while (*(v64 + v67) != 1);
          v68 = *(a1 + 120);
          sub_10000459C(__p, "An invalid or unterminated recursive sub-expression.");
          sub_100064770(a1, 20, v65 - v68, __p);
          goto LABEL_249;
        }

        v234 = v16;
        v35 = v63 + 1;
        goto LABEL_230;
      }

      --*v3;
      goto LABEL_99;
    case 0x11u:
      v234 = v16;
      v32 = sub_1000685D0(v21, v3, *(a1 + 128), 10);
      v33 = **(a1 + 8);
      v34 = *(a1 + 136);
      if (v32 < 0 || (v35 = v32, *(v33 + *v34 + 32) != 2))
      {
        v36 = v33 + 32;
        v37 = v34 - 1;
        do
        {
          *v3 = v37;
          v38 = *v37--;
          --v34;
        }

        while (*(v36 + v38) != 1);
        v39 = *(a1 + 120);
        sub_10000459C(__p, "The recursive sub-expression refers to an invalid marking group, or is unterminated.");
        sub_100064770(a1, 20, &v34[-v39], __p);
        goto LABEL_249;
      }

      goto LABEL_230;
  }

LABEL_76:
  switch(v23)
  {
    case '&':
      v98 = (v22 + 1);
      v103 = *(a1 + 128);
      *(a1 + 136) = v22 + 1;
      if (v22 + 1 == v103)
      {
        v234 = v16;
        v115 = 1;
      }

      else
      {
        v104 = *(v24 + *v98);
        if (v104 == 2)
        {
          v99 = 0;
          v105 = (v22 + 1);
LABEL_163:
          if (v104 == 2)
          {
LABEL_209:
            if (!v99)
            {
              v234 = v16;
              v35 = 0x40000000;
              goto LABEL_230;
            }

            return 0;
          }

          v126 = 0;
          do
          {
            v127 = *v98++;
            v126 ^= (v126 << 6) + 2654435769u + (v126 >> 2) + v127;
          }

          while (v98 != v105);
LABEL_213:
          if (!v99)
          {
            v234 = v16;
            v35 = (v126 % 0x7FFFFFFF) | 0x40000000;
            goto LABEL_230;
          }

          return 0;
        }

        v123 = v103 - v22 - 2;
        v124 = v22 + 2;
        while (1)
        {
          *v3 = v124;
          if (!v123)
          {
            break;
          }

          v125 = *v124++;
          --v123;
          if (*(v24 + v125) == 2)
          {
            v105 = (v124 - 1);
            v99 = v105 == v103;
            goto LABEL_163;
          }
        }

        v234 = v16;
        v115 = v124 == v103;
        v98 = v124;
      }

      v135 = v98 - 1;
      do
      {
        *v3 = v135;
        v136 = *v135--;
        --v98;
      }

      while (*(v24 + v136) != 1);
LABEL_228:
      sub_100063EB4(a1, 20, &v98[-*(a1 + 120)]);
      if (!v115)
      {
        v35 = 0xAAAAAAAAAAAAAAAALL;
        goto LABEL_230;
      }

      return 0;
    case 'P':
      v40 = v22 + 1;
      *(a1 + 136) = v22 + 1;
      v97 = *(a1 + 128);
      if (v22 + 1 != v97)
      {
        if (*v40 != 62)
        {
          break;
        }

        v98 = (v22 + 2);
        *v3 = v22 + 2;
        if (v22 + 2 == v97)
        {
          v234 = v16;
          v115 = 1;
        }

        else
        {
          if (*(v24 + *v98) == 2)
          {
            v99 = 0;
            v100 = 1;
            v101 = (v22 + 2);
LABEL_208:
            if (v100)
            {
              goto LABEL_209;
            }

            v126 = 0;
            do
            {
              v155 = *v98++;
              v126 ^= (v126 << 6) + 2654435769u + (v126 >> 2) + v155;
            }

            while (v98 != v101);
            goto LABEL_213;
          }

          v151 = (v22 - v97);
          v152 = v22 + 3;
          v153 = -3;
          while (1)
          {
            *v3 = v152;
            if (v151 == v153)
            {
              break;
            }

            v154 = *v152++;
            --v153;
            if (*(v24 + v154) == 2)
            {
              v101 = (v152 - 1);
              v99 = v101 == v97;
              v100 = v153 == -3;
              goto LABEL_208;
            }
          }

          v234 = v16;
          v115 = v152 == v97;
          v98 = v152;
        }

        v163 = v98 - 1;
        do
        {
          *v3 = v163;
          v164 = *v163--;
          --v98;
        }

        while (*(v24 + v164) != 1);
        goto LABEL_228;
      }

      do
      {
        *v3 = v22;
        v102 = *v22--;
        --v40;
      }

      while (*(v24 + v102) != 1);
LABEL_115:
      v12 = &v40[-*(a1 + 120)];
      goto LABEL_9;
    case 'R':
      v40 = v22 + 1;
      *v3 = v22 + 1;
      if (*(v24 + v22[1]) == 2)
      {
        v234 = v16;
        v35 = 0;
LABEL_230:
        v13[4] = 0;
        v165 = sub_100064468(a1, 29, 0x20uLL);
        *(v165 + 2) = v35;
        v165[6] = 0;
        v166 = *(*a1 + 40);
        v59 = 0;
        v31 = 0;
        *(sub_100064468(a1, 28, 0x18uLL) + 16) = (v166 & 0x100000) != 0;
        goto LABEL_231;
      }

      do
      {
        *v3 = v22;
        v74 = *v22--;
        --v40;
      }

      while (*(v24 + v74) != 1);
      goto LABEL_115;
  }

LABEL_99:
  v87 = sub_100068AA4(a1);
  v4 = *(a1 + 136);
  if (v4 == *(a1 + 128))
  {
    v94 = **(a1 + 8) + 32;
    v95 = v4 - 1;
    do
    {
      *v3 = v95;
      v96 = *v95--;
      --v4;
    }

    while (*(v94 + v96) != 1);
    goto LABEL_8;
  }

  v88 = v87 & 0x100000;
  v89 = *a1;
  v90 = *(*a1 + 40) & 0x100000;
  *(a1 + 176) = (v87 & 0x100000) != v90;
  v13[4] = 0;
  v91 = **(a1 + 8) + 32;
  v92 = *(v91 + *v4);
  if (v92 == 2)
  {
    *(v89 + 40) = v87;
    if (((v87 >> 20) & 1) != *(a1 + 24))
    {
      *(a1 + 24) = (v87 & 0x100000) != 0;
    }

    v93 = 0;
    v112 = v235;
    if (v88 != v90)
    {
      v112 = 1;
    }

    v235 = v112;
    goto LABEL_142;
  }

  if (v92 != 36)
  {
    v113 = v4 - 1;
    do
    {
      *v3 = v113;
      v114 = *v113--;
      --v4;
    }

    while (*(v91 + v114) != 1);
LABEL_8:
    v12 = &v4[-*(a1 + 120)];
LABEL_9:
    sub_100063EB4(a1, 20, v12);
    return 0;
  }

  *(v89 + 40) = v87;
  if (((v87 >> 20) & 1) != *(a1 + 24))
  {
    *(a1 + 24) = (v87 & 0x100000) != 0;
  }

  *v3 = v4 + 1;
  v93 = 1;
LABEL_142:
  v234 = v16;
  v59 = 0;
  v31 = 0;
  if (v88 != v90)
  {
    *(sub_100064468(a1, 28, 0x18uLL) + 16) = v88 >> 20;
  }

LABEL_232:
  sub_100064848(a1);
  v167 = v13 - v17;
  if ((sub_100064960(a1, v167) & 1) == 0)
  {
    v177 = **(a1 + 8) + 32;
    v178 = *(a1 + 136);
    v179 = (v178 - 1);
    do
    {
      *v3 = v179;
      v180 = *v179--;
      --v178;
    }

    while (*(v177 + v180) != 1);
    v181 = *(a1 + 120);
    sub_10000459C(__p, "Invalid alternation operators within (?...) block.");
    sub_100064770(a1, 20, v178 - v181, __p);
    goto LABEL_249;
  }

  v168 = *(a1 + 136);
  v169 = *(a1 + 8);
  if (v168 == *(a1 + 128))
  {
    v192 = *v169 + 32;
    v193 = v168 - 1;
    do
    {
      *v3 = v193;
      v194 = *v193--;
    }

    while (*(v192 + v194) != 1);
    sub_100063EB4(a1, 8, &v168[-*(a1 + 120)]);
    return 0;
  }

  if (*(*v169 + *v168 + 32) != 2)
  {
    sub_10011C45C();
  }

  *v3 = v168 + 1;
  if (v93)
  {
    if (*(a1 + 176) == 1)
    {
      *(sub_100064468(a1, 28, 0x18uLL) + 16) = (v15 & 0x100000) != 0;
    }

    *(*a1 + 40) = v15;
    if (((v15 >> 20) & 1) != *(a1 + 24))
    {
      *(a1 + 24) = (v15 & 0x100000) != 0;
    }
  }

  if (v59)
  {
    v170 = *(*a1 + 352);
    v171 = (*(*a1 + 360) - v170 + 7) & 0xFFFFFFFFFFFFFFF8;
    *(*a1 + 360) = v170 + v171;
    *&v59[v170 + 16] = v171 - v59;
    if (*(a1 + 16) == &v59[v170] && v31 != -2)
    {
      v172 = **(a1 + 8) + 32;
      v173 = *(a1 + 136);
      v174 = (v173 - 1);
      do
      {
        *v3 = v174;
        v175 = *v174--;
        --v173;
      }

      while (*(v172 + v175) != 1);
      v176 = *(a1 + 120);
      sub_10000459C(__p, "Invalid or empty zero width assertion.");
      sub_100064770(a1, 20, v173 - v176, __p);
      goto LABEL_249;
    }
  }

  if (v31 != -4)
  {
    goto LABEL_275;
  }

  v182 = *(*a1 + 352);
  v183 = v182 + v18;
  if (*(v182 + v18) != 17)
  {
    v195 = sub_100068C28(a1, v18, 17, 0x120uLL);
    *(v195 + 16) = *(*a1 + 360) - v195;
    v196 = *(*(*a1 + 352) + v18 + *(*(*a1 + 352) + v18 + 8));
LABEL_270:
    if (v196)
    {
      v203 = v196 == 27;
    }

    else
    {
      v203 = 1;
    }

    if (v203)
    {
      goto LABEL_275;
    }

    v211 = **(a1 + 8) + 32;
    v212 = *(a1 + 136);
    v213 = (v212 - 1);
    do
    {
      *v3 = v213;
      v214 = *v213--;
      --v212;
    }

    while (*(v211 + v214) != 1);
    v215 = *(a1 + 120);
    sub_10000459C(__p, "A repetition operator cannot be applied to a zero-width assertion.");
    sub_100064770(a1, 13, v212 - v215, __p);
LABEL_249:
    if (v237 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v184 = *(*a1 + 360) - v182;
  v185 = *(v183 + 16);
  v186 = v185 < 1 || v184 <= (v185 + v18);
  if (!v186 && *(v183 + v185) == 17)
  {
    v187 = **(a1 + 8) + 32;
    v188 = *(a1 + 136);
    v189 = (v188 - 1);
    do
    {
      *v3 = v189;
      v190 = *v189--;
      --v188;
    }

    while (*(v187 + v190) != 1);
    v191 = *(a1 + 120);
    sub_10000459C(__p, "More than one alternation operator | was encountered inside a conditional expression.");
    sub_100064770(a1, 2, v188 - v191, __p);
    goto LABEL_249;
  }

  v197 = (v183 + *(v183 + 8));
  v196 = *v197;
  if (*v197 != 27)
  {
    goto LABEL_270;
  }

  if (v197[4] == 9999)
  {
    v198 = **(a1 + 8) + 32;
    v199 = *(a1 + 136);
    v200 = (v199 - 1);
    do
    {
      *v3 = v200;
      v201 = *v200--;
      --v199;
    }

    while (*(v198 + v201) != 1);
    v202 = *(a1 + 120);
    sub_10000459C(__p, "Alternation operators are not allowed inside a DEFINE block.");
    sub_100064770(a1, 2, v199 - v202, __p);
    goto LABEL_249;
  }

LABEL_275:
  v204 = sub_100064468(a1, 1, 0x18uLL);
  v204[4] = v31;
  v205 = *a1;
  v206 = *(*a1 + 40);
  *(v204 + 20) = (v206 & 0x100000) != 0;
  *(a1 + 160) = v167;
  *(a1 + 168) = v234;
  *(a1 + 176) = v235;
  v207 = *(a1 + 152);
  if (v207 > *(a1 + 144))
  {
    *(a1 + 144) = v207;
  }

  *(a1 + 148) = v19;
  result = 1;
  if (v31 >= 1 && (v206 & 0x800000) != 0)
  {
    v208 = v31 - 1;
    v210 = v205 + 376;
    v209 = *(v205 + 376);
    if (v208 >= (*(v210 + 8) - v209) >> 4)
    {
      sub_10006911C();
    }

    *(v209 + 16 * v208 + 8) = *(a1 + 136) + ~*(a1 + 120);
  }

  return result;
}

void sub_100067F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100067F74(uint64_t a1)
{
  v3 = *(a1 + 128);
  v2 = *(a1 + 136);
  v4 = v2 + 1;
  *(a1 + 136) = v2 + 1;
  if (v2 + 1 == v3)
  {
    v12 = **(a1 + 8) + 32;
    do
    {
      *(a1 + 136) = v2;
      v13 = *v2--;
      --v4;
    }

    while (*(v12 + v13) != 1);
    goto LABEL_71;
  }

  v5 = *v4;
  if (v5 > 0x4F)
  {
    if (v5 != 80)
    {
      if (v5 == 83)
      {
        v6 = v2 + 2;
        *(a1 + 136) = v6;
        if (v6 == v3)
        {
          v42 = **(a1 + 8) + 32;
          do
          {
            *(a1 + 136) = v4;
            v43 = *v4--;
            --v6;
          }

          while (*(v42 + v43) != 1);
          goto LABEL_67;
        }

        v28 = sub_100069004(a1, "KIP");
        v4 = *(a1 + 136);
        if (v28)
        {
          v29 = *(a1 + 8);
          if (v4 == *(a1 + 128))
          {
            v30 = *v29;
          }

          else
          {
            v30 = *v29;
            if (*(v30 + *v4 + 32) == 2)
            {
              *(a1 + 136) = v4 + 1;
              v31 = sub_100064468(a1, 32, 0x18uLL);
              result = 1;
              v31[4] = 1;
              v27 = *a1;
              goto LABEL_46;
            }
          }

          v63 = v30 + 32;
          v64 = v4 - 1;
          do
          {
            *(a1 + 136) = v64;
            v65 = *v64--;
            --v4;
          }

          while (*(v63 + v65) != 1);
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      if (v5 != 84)
      {
        goto LABEL_69;
      }

      v6 = v2 + 2;
      *(a1 + 136) = v6;
      if (v6 == v3)
      {
        v38 = **(a1 + 8) + 32;
        do
        {
          *(a1 + 136) = v4;
          v39 = *v4--;
          --v6;
        }

        while (*(v38 + v39) != 1);
        goto LABEL_67;
      }

      v14 = sub_100069004(a1, "HEN");
      v4 = *(a1 + 136);
      if (!v14)
      {
        goto LABEL_69;
      }

      v15 = *(a1 + 8);
      if (v4 == *(a1 + 128))
      {
        v16 = *v15;
      }

      else
      {
        v16 = *v15;
        if (*(v16 + *v4 + 32) == 2)
        {
          *(a1 + 136) = v4 + 1;
          sub_100064468(a1, 33, 0x10uLL);
LABEL_40:
          v27 = *a1;
          result = 1;
LABEL_46:
          *(v27 + 401) = 1;
          return result;
        }
      }

      v57 = v16 + 32;
      v58 = v4 - 1;
      do
      {
        *(a1 + 136) = v58;
        v59 = *v58--;
        --v4;
      }

      while (*(v57 + v59) != 1);
      goto LABEL_71;
    }

    v6 = v2 + 2;
    *(a1 + 136) = v6;
    if (v6 == v3)
    {
      v34 = **(a1 + 8) + 32;
      do
      {
        *(a1 + 136) = v4;
        v35 = *v4--;
        --v6;
      }

      while (*(v34 + v35) != 1);
      goto LABEL_67;
    }

    v21 = sub_100069004(a1, "RUNE");
    v4 = *(a1 + 136);
    if (!v21)
    {
      goto LABEL_69;
    }

    v22 = *(a1 + 8);
    if (v4 == *(a1 + 128))
    {
      v23 = *v22;
    }

    else
    {
      v23 = *v22;
      if (*(v23 + *v4 + 32) == 2)
      {
        *(a1 + 136) = v4 + 1;
        sub_100064468(a1, 32, 0x18uLL)[4] = 0;
        goto LABEL_40;
      }
    }

    v54 = v23 + 32;
    v55 = v4 - 1;
    do
    {
      *(a1 + 136) = v55;
      v56 = *v55--;
      --v4;
    }

    while (*(v54 + v56) != 1);
    goto LABEL_71;
  }

  if (v5 == 65)
  {
    v6 = v2 + 2;
    *(a1 + 136) = v6;
    if (v6 != v3)
    {
      v17 = sub_100069004(a1, "CCEPT");
      v4 = *(a1 + 136);
      if (v17)
      {
        v18 = *(a1 + 8);
        if (v4 == *(a1 + 128))
        {
          v19 = *v18;
        }

        else
        {
          v19 = *v18;
          if (*(v19 + *v4 + 32) == 2)
          {
            *(a1 + 136) = v4 + 1;
            v10 = a1;
            v11 = 31;
            goto LABEL_29;
          }
        }

        v51 = v19 + 32;
        v52 = v4 - 1;
        do
        {
          *(a1 + 136) = v52;
          v53 = *v52--;
          --v4;
        }

        while (*(v51 + v53) != 1);
        goto LABEL_71;
      }

      goto LABEL_69;
    }

    v32 = **(a1 + 8) + 32;
    do
    {
      *(a1 + 136) = v4;
      v33 = *v4--;
      --v6;
    }

    while (*(v32 + v33) != 1);
    goto LABEL_67;
  }

  if (v5 == 67)
  {
    v6 = v2 + 2;
    *(a1 + 136) = v6;
    if (v6 == v3)
    {
      v40 = **(a1 + 8) + 32;
      do
      {
        *(a1 + 136) = v4;
        v41 = *v4--;
        --v6;
      }

      while (*(v40 + v41) != 1);
      goto LABEL_67;
    }

    v24 = sub_100069004(a1, "OMMIT");
    v4 = *(a1 + 136);
    if (v24)
    {
      v25 = *(a1 + 8);
      if (v4 == *(a1 + 128))
      {
        v26 = *v25;
      }

      else
      {
        v26 = *v25;
        if (*(v26 + *v4 + 32) == 2)
        {
          *(a1 + 136) = v4 + 1;
          sub_100064468(a1, 32, 0x18uLL)[4] = 2;
          goto LABEL_40;
        }
      }

      v60 = v26 + 32;
      v61 = v4 - 1;
      do
      {
        *(a1 + 136) = v61;
        v62 = *v61--;
        --v4;
      }

      while (*(v60 + v62) != 1);
      goto LABEL_71;
    }

LABEL_69:
    v48 = **(a1 + 8) + 32;
    v49 = v4 - 1;
    do
    {
      *(a1 + 136) = v49;
      v50 = *v49--;
      --v4;
    }

    while (*(v48 + v50) != 1);
LABEL_71:
    v47 = &v4[-*(a1 + 120)];
    goto LABEL_72;
  }

  if (v5 != 70)
  {
    goto LABEL_69;
  }

  v6 = v2 + 2;
  *(a1 + 136) = v6;
  v7 = *(a1 + 8);
  if (v6 != v3)
  {
    v8 = *v7;
    if (*(*v7 + *v6 + 32) == 2)
    {
      goto LABEL_10;
    }

    v9 = sub_100069004(a1, "AIL");
    v6 = *(a1 + 136);
    if (v9)
    {
      v3 = *(a1 + 128);
      v8 = **(a1 + 8);
LABEL_10:
      if (v6 != v3 && *(v8 + *v6 + 32) == 2)
      {
        *(a1 + 136) = v6 + 1;
        v10 = a1;
        v11 = 30;
LABEL_29:
        sub_100064468(v10, v11, 0x10uLL);
        return 1;
      }

      v44 = v8 + 32;
      v45 = v6 - 1;
      do
      {
        *(a1 + 136) = v45;
        v46 = *v45--;
        --v6;
      }

      while (*(v44 + v46) != 1);
      goto LABEL_67;
    }

    v4 = *(a1 + 136);
    goto LABEL_69;
  }

  v36 = *v7 + 32;
  do
  {
    *(a1 + 136) = v4;
    v37 = *v4--;
    --v6;
  }

  while (*(v36 + v37) != 1);
LABEL_67:
  v47 = &v6[-*(a1 + 120)];
LABEL_72:
  sub_100063EB4(a1, 20, v47);
  return 0;
}

void sub_1000684F8(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_10002C63C();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1000690D4(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_1000685D0(uint64_t a1, void *a2, _BYTE *a3, int a4)
{
  *&v25[48] = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v25[16] = v7;
  *&v25[32] = v7;
  *v25 = v7;
  std::locale::locale(v25);
  __sb = off_100183E70;
  memset(&v25[8], 0, 48);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v22.__rdbuf_ = 0xAAAAAAAAAAAAAAAALL;
  v23 = v8;
  *&v22.__parray_size_ = v8;
  *&v22.__iarray_cap_ = v8;
  *&v22.__iarray_ = v8;
  *&v22.__event_size_ = v8;
  *&v22.__fn_ = v8;
  *&v22.__width_ = v8;
  *&v22.__fmtflags_ = v8;
  v21[1] = 0;
  std::ios_base::init(&v22, &__sb);
  *&v23 = 0;
  DWORD2(v23) = -1;
  v9 = *a2;
  v10 = std::locale::use_facet(&v20, &std::numpunct<char>::id);
  v11 = (v10->__vftable[1].~facet_0)(v10);
  v12 = memchr(v9, v11, a3 - v9);
  if (v12)
  {
    a3 = v12;
  }

  std::locale::~locale(&v20);
  (__sb[3])(&__sb, *a2, &a3[-*a2]);
  std::ios_base::clear((v21 + *(v21[0] - 24)), 0);
  if (a4 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = -a4;
  }

  if (v13 == 8)
  {
    v14 = 64;
  }

  else
  {
    v14 = 2;
  }

  if (v13 == 16)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  *(&v21[1] + *(v21[0] - 24)) = *(&v21[1] + *(v21[0] - 24)) & 0xFFFFFFB5 | v15;
  v20.__locale_ = 0xAAAAAAAAAAAAAAAALL;
  v16 = std::istream::operator>>();
  if ((*(v16 + *(*v16 - 24) + 32) & 5) != 0)
  {
    locale = -1;
  }

  else
  {
    if (*&v25[16] >= *&v25[24])
    {
      v18 = (__sb[7])(&__sb);
    }

    else
    {
      v18 = *&v25[24] - *&v25[16];
    }

    *a2 = &a3[-v18];
    locale = v20.__locale_;
  }

  std::istream::~istream();
  std::locale::~locale(v25);
  return locale;
}

void sub_1000688FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11)
{
  std::istream::~istream();
  *(v13 - 136) = v11;
  std::locale::~locale(v12 + 1);
  _Unwind_Resume(a1);
}

int *sub_100068944(uint64_t a1, char *a2, char *a3, unsigned int a4)
{
  if (a2 == a3)
  {
    v7 = 0x4000000000000000;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *a2++;
      v5 ^= (v5 << 6) + (v5 >> 2) + 2654435769u + v6;
    }

    while (a2 != a3);
    v7 = ((v5 % 0x7FFFFFFF) << 32) | 0x4000000000000000;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v9 >= v8)
  {
    v11 = (v9 - *a1) >> 3;
    if ((v11 + 1) >> 61)
    {
      sub_10002C63C();
    }

    v12 = v8 - *a1;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      sub_100007BA0(a1, v14);
    }

    v15 = (8 * v11);
    *v15 = v7 | a4;
    v10 = (8 * v11 + 8);
    v16 = *(a1 + 8) - *a1;
    v17 = v15 - v16;
    memcpy(v15 - v16, *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v9 = v7 | a4;
    v10 = (v9 + 1);
  }

  *(a1 + 8) = v10;
  v19 = *a1;

  return sub_100068E78(v19, v10);
}

uint64_t sub_100068AA4(uint64_t a1)
{
  v1 = *(*a1 + 40);
  v2 = *(a1 + 136);
  while (1)
  {
    v3 = v2;
    v4 = *v2;
    if (v4 > 114)
    {
      if (v4 == 120)
      {
        v1 = v1 | 0x800;
      }

      else
      {
        if (v4 != 115)
        {
          return v1;
        }

        v1 = v1 & 0xFFFFCFFF | 0x1000;
      }

      goto LABEL_11;
    }

    if (v4 == 105)
    {
      v1 = v1 | 0x100000;
      goto LABEL_11;
    }

    if (v4 != 109)
    {
      break;
    }

    v1 = v1 & 0xFFFFFBFF;
LABEL_11:
    v2 = v3 + 1;
    *(a1 + 136) = v3 + 1;
    if (v3 + 1 == *(a1 + 128))
    {
      v5 = **(a1 + 8) + 32;
      do
      {
        *(a1 + 136) = v3;
        v6 = *v3--;
      }

      while (*(v5 + v6) != 1);
LABEL_14:
      sub_100063EB4(a1, 8, &v3[-*(a1 + 120) + 1]);
      return 0;
    }
  }

  if (v4 == 45)
  {
    v8 = v3 + 1;
    *(a1 + 136) = v3 + 1;
    v9 = *(a1 + 128);
    if (v3 + 1 == v9)
    {
      v13 = **(a1 + 8) + 32;
      do
      {
        *(a1 + 136) = v3;
        v14 = *v3--;
      }

      while (*(v13 + v14) != 1);
    }

    else
    {
      do
      {
        v10 = *v8;
        if (v10 > 0x72)
        {
          if (v10 == 120)
          {
            v1 = v1 & 0xFFFFF7FF;
          }

          else
          {
            if (v10 != 115)
            {
              return v1;
            }

            v1 = v1 & 0xFFFFCFFF | 0x2000;
          }
        }

        else if (v10 == 105)
        {
          v1 = v1 & 0xFFEFFFFF;
        }

        else
        {
          if (v10 != 109)
          {
            return v1;
          }

          v1 = v1 | 0x400;
        }

        *(a1 + 136) = ++v8;
      }

      while (v8 != v9);
      v11 = **(a1 + 8) + 32;
      v3 = v8 - 1;
      do
      {
        *(a1 + 136) = v3;
        v12 = *v3--;
      }

      while (*(v11 + v12) != 1);
    }

    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_100068C28(void *a1, unint64_t a2, int a3, unint64_t a4)
{
  v7 = *a1;
  v8 = *(*a1 + 352);
  v9 = (*(*a1 + 360) - v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(*a1 + 360) = v8 + v9;
  v10 = a1[2];
  if (v10)
  {
    *(v10 + 8) = v9 - v10 + v8;
    v11 = a1[2];
    v7 = *a1;
    v8 = *(*a1 + 352);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 - v8;
  result = sub_100068ED4((v7 + 344), a2, a4);
  *(result + 8) = a4;
  *result = a3;
  a1[2] = *(*a1 + 352) + a4 + v12;
  return result;
}

std::locale *sub_100068CC8(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

void sub_100068D0C(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  operator delete();
}

void *sub_100068D70(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = a2;
  result[3] = a2;
  result[4] = a2 + a3;
  return result;
}

double sub_100068D80@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x10) != 0)
  {
    v7 = -1;
    goto LABEL_19;
  }

  v5 = a1[2];
  v6 = a1[4] - v5;
  if (!a3)
  {
    v7 = -1;
    if (a2 < 0 || v6 < a2)
    {
      goto LABEL_19;
    }

    v9 = v5 + a2;
LABEL_15:
    v8 = a1[4];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v7 = -1;
    v10 = a1[3] - v5 + a2;
    if (v10 < 0 || v10 > v6)
    {
      goto LABEL_19;
    }

    v9 = a1[3] + a2;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    v9 = a1[3];
    goto LABEL_18;
  }

  v7 = -1;
  if ((a2 & 0x8000000000000000) == 0 && v6 >= a2)
  {
    v8 = a1[4];
    v9 = v8 - a2;
LABEL_16:
    a1[3] = v9;
    a1[4] = v8;
LABEL_18:
    v7 = v9 - v5;
  }

LABEL_19:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

double sub_100068E30@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x10) == 0)
  {
    v4 = a1[2];
    v5 = *(a2 + 128);
    if (v5 <= a1[4] - v4)
    {
      v6 = v4 + v5;
      v7 = a1[4];
      a1[3] = v6;
      a1[4] = v7;
    }
  }

  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = -1;
  return result;
}

int *sub_100068E78(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = a2 - 2;
    if (a2 - 2 != result)
    {
      v3 = a2 - 4;
      do
      {
        if (v2[1] >= v3[1])
        {
          break;
        }

        v4 = *v3;
        *v3 = *v2;
        *v2 = v4;
        v5 = v3[1];
        v3[1] = v2[1];
        v2[1] = v5;
        v2 -= 2;
        v3 -= 2;
      }

      while (v2 != result);
    }
  }

  return result;
}

uint64_t sub_100068ED4(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v4 - v3 < a2)
  {
    sub_10011C488();
  }

  if (*a1 - v4 < a3)
  {
    sub_100068F60(a1, v4 - v3 + a3);
    v3 = a1[1];
    v4 = a1[2];
  }

  v8 = v3 + a2;
  memmove((v3 + a2 + a3), (v3 + a2), v4 - (v3 + a2));
  a1[2] += a3;
  return v8;
}

void sub_100068F60(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1 - v3;
  }

  else
  {
    v4 = 1024;
  }

  do
  {
    v5 = v4;
    v4 *= 2;
  }

  while (v5 < a2);
  v6 = *(a1 + 16) - v3;
  v7 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = operator new(v7);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    memcpy(v8, *(a1 + 8), v6);
  }

  operator delete(v10);
  *(a1 + 8) = v9;
  *(a1 + 16) = &v9[v6];
  *a1 = &v9[v7];
}

uint64_t sub_100069004(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 1;
  }

  v3 = *(a1 + 136);
  v4 = a2 + 1;
  while (v2 == *v3)
  {
    *(a1 + 136) = v3 + 1;
    if (v3 + 1 == *(a1 + 128))
    {
      v9 = **(a1 + 8) + 32;
      do
      {
        *(a1 + 136) = v3;
        v10 = *v3--;
      }

      while (*(v9 + v10) != 1);
      goto LABEL_14;
    }

    v5 = *v4++;
    v2 = v5;
    ++v3;
    if (!v5)
    {
      return 1;
    }
  }

  v7 = **(a1 + 8) + 32;
  if (*(v7 + *v3) == 1)
  {
    goto LABEL_15;
  }

  --v3;
  do
  {
    *(a1 + 136) = v3;
    v8 = *v3--;
  }

  while (*(v7 + v8) != 1);
LABEL_14:
  ++v3;
LABEL_15:
  sub_100063EB4(a1, 20, &v3[-*(a1 + 120)]);
  return 0;
}

void sub_1000690D4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100025BBC();
}

char *sub_100069134(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 49) == 1)
  {
    return sub_100069C88(a1, a2);
  }

  else
  {
    return sub_10006A624(a1, a2);
  }
}

uint64_t sub_100069150(uint64_t a1)
{
  sub_10006B310(a1 + 64, *(a1 + 72));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  sub_10006B310(a1, *(a1 + 8));
  return a1;
}

char *sub_10006919C(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 && *v4 == 2)
  {
    v5 = v4 - *(*a1 + 352);
    sub_10006AE00((*a1 + 344), 1uLL);
    v6 = &v5[*(*a1 + 352)];
    a1[2] = v6;
    if (*(a1 + 24) == 1)
    {
      v7 = *(*a1[1] + 8);
      LOBYTE(a2) = (*(*v7 + 40))(v7, a2);
    }

    v8 = *(v6 + 4);
    v6[v8 + 24] = a2;
    *(v6 + 4) = v8 + 1;
  }

  else
  {
    v6 = sub_100064468(a1, 2, 0x19uLL);
    *(v6 + 4) = 1;
    if (*(a1 + 24) == 1)
    {
      v9 = *(*a1[1] + 8);
      LOBYTE(a2) = (*(*v9 + 40))(v9, a2);
    }

    v6[24] = a2;
  }

  return v6;
}

uint64_t sub_1000692C8(std::string *a1)
{
  v2 = &a1[5].__r_.__value_.__r.__words[2];
  v3 = a1[5].__r_.__value_.__r.__words[2];
  size = a1[5].__r_.__value_.__l.__size_;
  if (v3 == size)
  {
    data = a1[5].__r_.__value_.__l.__data_;
    sub_10000459C(__p, "Escape sequence terminated prematurely.");
    sub_100064770(a1, 5, v3 - data, __p);
    goto LABEL_9;
  }

  v5 = a1->__r_.__value_.__l.__size_;
  v6 = *v3;
  v7 = *v5 + 32;
  v8 = *(v7 + v6);
  if (v8 <= 0x1F)
  {
    if (*(v7 + v6) > 0x1Cu)
    {
      switch(v8)
      {
        case 0x1Du:
          LOBYTE(v6) = 12;
          break;
        case 0x1Eu:
          LOBYTE(v6) = 10;
          break;
        case 0x1Fu:
          LOBYTE(v6) = 13;
          break;
      }

      goto LABEL_48;
    }

    if (v8 != 17)
    {
      if (v8 == 18)
      {
        LOBYTE(v6) = 8;
      }

      else if (v8 == 28)
      {
        LOBYTE(v6) = 7;
      }

      goto LABEL_48;
    }

    v59 = v3;
    if (sub_1000685D0(v5, &v59, v3 + 1, 8))
    {
      v19 = *a1->__r_.__value_.__l.__size_ + 32;
      v20 = a1[5].__r_.__value_.__r.__words[2];
      v21 = (v20 - 1);
      do
      {
        *v2 = v21;
        v22 = *v21--;
        --v20;
      }

      while (*(v19 + v22) != 12);
      v23 = a1[5].__r_.__value_.__l.__data_;
      sub_10000459C(__p, "Invalid octal escape sequence.");
      sub_100064770(a1, 5, v20 - v23, __p);
      goto LABEL_9;
    }

    v34 = size - v3;
    if (size - v3 >= 4)
    {
      v34 = 4;
    }

    v12 = sub_1000685D0(a1->__r_.__value_.__l.__size_, v2, (a1[5].__r_.__value_.__r.__words[2] + v34), 8);
    if (v12 >= 0x80)
    {
      v35 = *a1->__r_.__value_.__l.__size_ + 32;
      v36 = a1[5].__r_.__value_.__r.__words[2];
      v37 = (v36 - 1);
      do
      {
        *v2 = v37;
        v38 = *v37--;
        --v36;
      }

      while (*(v35 + v38) != 12);
      v39 = a1[5].__r_.__value_.__l.__data_;
      sub_10000459C(__p, "Octal escape sequence is invalid.");
      sub_100064770(a1, 5, v36 - v39, __p);
      goto LABEL_9;
    }

LABEL_70:
    LOBYTE(v6) = v12;
    return v6;
  }

  if (*(v7 + v6) <= 0x22u)
  {
    switch(v8)
    {
      case ' ':
        LOBYTE(v6) = 9;
        break;
      case '!':
        LOBYTE(v6) = 11;
        break;
      case '""':
        v10 = v3 + 1;
        *v2 = (v3 + 1);
        if (v3 + 1 == size)
        {
          do
          {
            *v2 = v3;
            v15 = *v3--;
            --v10;
          }

          while (*(v7 + v15) != 12);
          v16 = a1[5].__r_.__value_.__l.__data_;
          sub_10000459C(__p, "Hexadecimal escape sequence terminated prematurely.");
          sub_100064770(a1, 5, v10 - v16, __p);
        }

        else if (*(v7 + *v10) == 15)
        {
          v11 = v3 + 2;
          *v2 = v11;
          if (v11 == size)
          {
            do
            {
              *v2 = v10;
              v17 = *v10--;
              --v11;
            }

            while (*(v7 + v17) != 12);
            v18 = a1[5].__r_.__value_.__l.__data_;
            sub_10000459C(__p, "Missing } in hexadecimal escape sequence.");
            sub_100064770(a1, 5, v11 - v18, __p);
          }

          else
          {
            v12 = sub_1000685D0(v5, v2, size, 16);
            v13 = a1[5].__r_.__value_.__r.__words[2];
            v14 = *a1->__r_.__value_.__l.__size_;
            if (v13 != a1[5].__r_.__value_.__l.__size_ && v12 <= 0x7F && *(v14 + *v13 + 32) == 16)
            {
              *v2 = (v13 + 1);
              goto LABEL_70;
            }

            v48 = v14 + 32;
            v49 = v13 - 1;
            do
            {
              *v2 = v49;
              v50 = *v49--;
              --v13;
            }

            while (*(v48 + v50) != 12);
            v51 = a1[5].__r_.__value_.__l.__data_;
            sub_10000459C(__p, "Hexadecimal escape sequence was invalid.");
            sub_100064770(a1, 10, v13 - v51, __p);
          }
        }

        else
        {
          v40 = size - v10;
          if (size - v10 >= 2)
          {
            v40 = 2;
          }

          v12 = sub_1000685D0(v5, v2, &v10[v40], 16);
          if (v12 < 0x100)
          {
            goto LABEL_70;
          }

          v43 = *a1->__r_.__value_.__l.__size_ + 32;
          v44 = a1[5].__r_.__value_.__r.__words[2];
          v45 = (v44 - 1);
          do
          {
            *v2 = v45;
            v46 = *v45--;
            --v44;
          }

          while (*(v43 + v46) != 12);
          v47 = a1[5].__r_.__value_.__l.__data_;
          sub_10000459C(__p, "Escape sequence did not encode a valid character.");
          sub_100064770(a1, 5, v44 - v47, __p);
        }

LABEL_9:
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_11;
    }

    goto LABEL_48;
  }

  if (v8 == 35)
  {
    v24 = (v3 + 1);
    *v2 = (v3 + 1);
    if (v3 + 1 == size)
    {
      do
      {
        *v2 = v3;
        v25 = *v3--;
        --v24;
      }

      while (*(v7 + v25) != 12);
      v26 = a1[5].__r_.__value_.__l.__data_;
      sub_10000459C(__p, "ASCII escape sequence terminated prematurely.");
      sub_100064770(a1, 5, v24 - v26, __p);
      goto LABEL_9;
    }

    LODWORD(v6) = *v24 - ((*v24 + ((*v24 >> 10) & 0x1F)) & 0xFFFFFFE0);
    ++v3;
LABEL_48:
    *v2 = (v3 + 1);
    return v6;
  }

  if (v8 != 56)
  {
    if (v8 == 38)
    {
      LOBYTE(v6) = 27;
    }

    goto LABEL_48;
  }

  v28 = v3 + 1;
  *v2 = (v3 + 1);
  if (v3 + 1 == size)
  {
    do
    {
      *v2 = v3;
      v33 = *v3--;
      --v28;
    }

    while (*(v7 + v33) != 12);
    v32 = &v28[-a1[5].__r_.__value_.__r.__words[0]];
LABEL_60:
    sub_100063EB4(a1, 5, v32);
    goto LABEL_11;
  }

  if (*(v7 + *v28) != 15)
  {
LABEL_92:
    v56 = *v5 + 32;
    v57 = v28 - 1;
    do
    {
      *v2 = v57;
      v58 = *v57--;
      --v28;
    }

    while (*(v56 + v58) != 12);
    sub_100063EB4(a1, 5, &v28[-a1[5].__r_.__value_.__r.__words[0]]);
LABEL_11:
    LOBYTE(v6) = 0;
    return v6;
  }

  v29 = v3 + 1;
  while (*(v7 + *v28) != 16)
  {
    *v2 = ++v28;
    ++v29;
    if (v28 == size)
    {
      v30 = v28 - 1;
      do
      {
        *v2 = v30;
        v31 = *v30--;
        --v29;
      }

      while (*(v7 + v31) != 12);
      v32 = &v29[-a1[5].__r_.__value_.__r.__words[0]];
      goto LABEL_60;
    }
  }

  memset(__p, 170, sizeof(__p));
  *v2 = (v28 + 1);
  sub_10006B364(v3 + 2, *v5, v28, __p);
  v41 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    if (__p[1])
    {
      if (__p[1] == 1)
      {
        v42 = __p[0];
        goto LABEL_84;
      }

      operator delete(__p[0]);
LABEL_91:
      v5 = a1->__r_.__value_.__l.__size_;
      v28 = a1[5].__r_.__value_.__r.__words[2];
      goto LABEL_92;
    }
  }

  else if (HIBYTE(__p[2]))
  {
    if (HIBYTE(__p[2]) == 1)
    {
      v42 = __p;
LABEL_84:
      LOBYTE(v6) = *v42;
      goto LABEL_88;
    }

    goto LABEL_91;
  }

  v52 = *a1->__r_.__value_.__l.__size_ + 32;
  v53 = a1[5].__r_.__value_.__r.__words[2];
  v54 = (v53 - 1);
  do
  {
    *v2 = v54;
    v55 = *v54--;
    --v53;
  }

  while (*(v52 + v55) != 12);
  sub_100063EB4(a1, 3, v53 - a1[5].__r_.__value_.__r.__words[0]);
  LOBYTE(v6) = 0;
  v41 = HIBYTE(__p[2]);
LABEL_88:
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}