void (__cdecl ***sub_100031A20(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_10001792C((a1 + 3), 24);
  return a1;
}

void sub_100031C9C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100031CC4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *sub_100031E14(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100019AD4(result[1], *a2, *(a2 + 1));
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

uint64_t sub_100031E74(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_10000D024(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_100031ED4(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100003F50();
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
    sub_100032010(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_10000D024(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
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
  sub_100032068(&v14);
  return v8;
}

void sub_100031FFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100032068(va);
  _Unwind_Resume(a1);
}

void sub_100032010(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100003E64();
}

void **sub_100032068(void **a1)
{
  sub_10003209C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10003209C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_10000CCE0(&v5);
  }
}

uint64_t sub_1000320F0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_10000D2DC(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_100032144(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100003F50();
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
    sub_100032274(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_10000D2DC(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
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
  sub_1000322CC(&v14);
  return v8;
}

void sub_100032260(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000322CC(va);
  _Unwind_Resume(a1);
}

void sub_100032274(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100003E64();
}

uint64_t sub_1000322CC(uint64_t a1)
{
  sub_100032304(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100032304(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void **sub_100032364(void **a1)
{
  sub_100032398(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100032398(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_10000CCE0(&v5);
  }
}

float sub_1000323EC(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  sub_10000D024(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *sub_100032460(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_100003F50();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_100018E8C(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_10000D024(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_100032364(&v17);
  return v11;
}

void sub_100032574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100032364(va);
  _Unwind_Resume(a1);
}

void sub_100032588(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100003E64();
}

uint64_t sub_1000325D0(uint64_t a1)
{
  sub_100032608(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100032608(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

float sub_100032668(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  sub_10000D2DC(v5, *a2, a2[1], (a2[1] - *a2) >> 2);
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *sub_1000326D0(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_100003F50();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_100032588(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_10000D2DC(v10, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1000325D0(&v17);
  return v11;
}

void sub_1000327D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000325D0(va);
  _Unwind_Resume(a1);
}

void *sub_1000327EC(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100032954(a1, a2, a3, (a3 - a2) >> 2);
  sub_100032848(a1);
  return a1;
}

void sub_10003282C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100032848(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    v4 = v2 - v1;
    if (v4 < 2)
    {
      *(a1 + 8) = v1;

      sub_100032A08(a1);
    }

    else
    {
      v5 = 0.0;
      v6 = *a1;
      do
      {
        v7 = *v6++;
        v5 = v5 + v7;
      }

      while (v6 != v2);
      while (v1 < v2)
      {
        *v1 = *v1 / v5;
        ++v1;
      }

      sub_100032ADC(&v16, v4 - 1);
      v8 = *a1;
      v9 = *(a1 + 8) - 8;
      v10 = v16;
      if (v9 != *a1)
      {
        v11 = v8 + 1;
        v12 = *v8;
        *v16 = *v8;
        if (v8 + 1 != v9)
        {
          v13 = v10 + 1;
          do
          {
            v14 = *v11++;
            v12 = v12 + v14;
            *v13++ = v12;
          }

          while (v11 != v9);
        }
      }

      *a1 = v10;
      v15 = *(a1 + 16);
      *(a1 + 8) = v17;
      v16 = v8;
      *(&v17 + 1) = v15;
      if (v8)
      {
        *&v17 = v8;
        operator delete(v8);
      }
    }
  }
}

uint64_t sub_100032954(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000329CC(result, a4);
  }

  return result;
}

void sub_1000329B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000329CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100019CE4(a1, a2);
  }

  sub_100003F50();
}

void sub_100032A08(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_100019CE4(a1, v4 >> 3);
    }

    v6 = 0;
    if (v3 >> 3)
    {
      v7 = 8 * (v4 >> 3);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *sub_100032ADC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000329CC(result, a2);
  }

  return result;
}

void sub_100032B38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_100032B54(uint64_t a1, uint64_t a2, double **a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = sub_100032C04(a2);
  v8 = sub_100032C04(a2);
  if (v6 != v5)
  {
    v9 = v6 - v5;
    do
    {
      v10 = v9 >> 1;
      v11 = &v5[v9 >> 1];
      v13 = *v11;
      v12 = v11 + 1;
      v9 += ~(v9 >> 1);
      if ((v7 + v8 * 4294967300.0) * 5.42101086e-20 < v13)
      {
        v9 = v10;
      }

      else
      {
        v5 = v12;
      }
    }

    while (v9);
    v6 = v5;
  }

  return (v6 - *a3) >> 3;
}

uint64_t sub_100032C04(uint64_t a1)
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

uint64_t sub_100032CA4()
{
  sub_1000177C0(&v1);
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v4 < 0)
  {
    operator delete(v3[7].__locale_);
  }

  std::locale::~locale(v3);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100032DF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_100032E18(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_100032E9C(a1, v4, a2);
      a2 += 24;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_100032E9C(void *a1, void *a2, uint64_t a3)
{
  v3 = *sub_1000317EC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_100032F40(void *a1)
{
  sub_100032F78(a1);

  operator delete();
}

void *sub_100032F78(void *a1)
{
  *a1 = off_1000AD138;
  sub_100032FC0(a1);
  return a1;
}

void *sub_100032FC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    *(a1 + 24) = -1;
  }

  result = *(a1 + 8);
  if (result)
  {
    result = munmap(result, *(a1 + 16));
  }

  *(a1 + 8) = 0;
  return result;
}

double sub_100033008@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__parent_path(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003DBC();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

double sub_1000330D0@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003DBC();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void *sub_100033198(void *a1, _BYTE *a2, _BYTE *a3, unsigned __int8 __c, unsigned __int8 a5)
{
  memset(&v15, 0, sizeof(v15));
  std::string::push_back(&v15, __c);
  while (a2 != a3)
  {
    v10 = *a2;
    if (v10 == a5 || v10 == __c)
    {
      std::string::push_back(&v15, a5);
      LOBYTE(v10) = *a2;
    }

    std::string::push_back(&v15, v10);
    ++a2;
  }

  std::string::push_back(&v15, __c);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v15;
  }

  else
  {
    v11 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v13 = sub_1000192F4(a1, v11, size);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_10003327C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10003329C(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  sub_1000332FC(this, v3, v4);
  return this;
}

void sub_1000332E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000332FC(std::string *this, std::string *__src, std::string *a3)
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

void sub_100033458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100033474(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003DBC();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

double sub_100033550(uint64_t a1)
{
  *a1 = off_1000AD168;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = off_1000AD2B0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1024;
  return result;
}

uint64_t sub_1000335B8(uint64_t a1)
{
  *a1 = off_1000AD168;
  sub_100038C28((a1 + 96));
  v4 = (a1 + 72);
  sub_100030C98(&v4);
  v4 = (a1 + 48);
  sub_100030C98(&v4);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10003363C(uint64_t a1)
{
  sub_1000335B8(a1);

  operator delete();
}

uint64_t sub_100033704(uint64_t a1)
{
  result = sub_100033744((a1 + 96));
  *(result + 24) = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  return result;
}

uint64_t sub_100033744(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  if (v4 >= v3)
  {
    v4 = 0;
    ++v2;
    a1[4] = 0;
    a1[5] = v2;
  }

  v5 = a1[1];
  if (v2 == (a1[2] - v5) >> 3)
  {
    is_mul_ok(v3, 0x30uLL);
    operator new[]();
  }

  result = *(v5 + 8 * v2) + 48 * v4;
  a1[4] = v4 + 1;
  return result;
}

void sub_100033820(void *a1)
{
  sub_100024CA0(a1 + 6);
  sub_100024CA0(a1 + 9);
  a1[1] = "";
  a1[2] = 0;
  a1[4] = a1[3];

  sub_100033878((a1 + 12));
}

void sub_100033878(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 + 1 < ((*(a1 + 16) - *(a1 + 8)) >> 3))
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = (*(a1 + 16) - *(a1 + 8)) >> 3;
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 8 * v3;
    do
    {
      bzero(*(*(a1 + 8) + v4), 48 * *(a1 + 48));
      v4 += 8;
    }

    while (v5 != v4);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

void sub_1000338F4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  sub_100033820(a1);
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  sub_10001EA98((a1 + 24), a3 + 1);
  for (; a3; a3 -= v6)
  {
    if (a3 >= asc_1000A0733[*a2 >> 4])
    {
      v6 = asc_1000A0733[*a2 >> 4];
    }

    else
    {
      v6 = a3;
    }

    v15 = a2;
    sub_100033A74(a1 + 24, &v15);
    a2 += v6;
  }

  v15 = a2;
  sub_100033A74(a1 + 24, &v15);
  v7 = ((*(a1 + 32) - *(a1 + 24)) >> 3) - 1;
  v8 = v7 & ~(v7 >> 31);
  sub_100033B48((a1 + 48), v8 + 1);
  sub_100033B48((a1 + 72), v8 + 1);
  v9 = 0;
  do
  {
    sub_100033BF0((*(a1 + 48) + v9), 0x10uLL);
    sub_100033BF0((*(a1 + 72) + v9), 0x10uLL);
    v9 += 24;
  }

  while (24 * v8 + 24 != v9);
  v10 = sub_100033744((a1 + 96));
  v11 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  v15 = v10;
  v10[6] = v11;
  v10[7] = -1;
  v10[4] = 0;
  sub_100033C90(*(a1 + 72), &v15);
  v12 = sub_100033744((a1 + 96));
  v13 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  v14 = v12;
  v12[6] = v13;
  v12[7] = -1;
  v12[4] = v8;
  sub_100033C90(*(a1 + 48) + 24 * v8, &v14);
}

void sub_100033A74(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100003F50();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_10001A4C0(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

void sub_100033B48(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_100038CBC(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void *sub_100033BF0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_100004A84(result, a2);
    }

    sub_100003F50();
  }

  return result;
}

void sub_100033C90(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100003F50();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_100004A84(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

uint64_t sub_100033D64(uint64_t a1, int a2, int a3)
{
  v6 = sub_100033744((a1 + 96));
  v7 = *(a1 + 128) + *(a1 + 136) * *(a1 + 144) - 1;
  *(v6 + 20) = a3;
  *(v6 + 24) = v7;
  v12 = v6;
  *(v6 + 16) = a2;
  v8 = *(a1 + 24);
  v9 = *(v8 + 8 * (a3 + a2));
  v10 = *(v8 + 8 * a2);
  *v6 = v10;
  *(v6 + 8) = v9 - v10;
  sub_100033C90(*(a1 + 48) + 24 * a2, &v12);
  sub_100033C90(*(a1 + 72) + 24 * (*(v12 + 20) + a2), &v12);
  return v12;
}

void sub_100033E14(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = ((a1[4] - a1[3]) >> 3) - 1;
  v5 = v4 & ~(v4 >> 31);
  v6 = a1[6];
  while (1)
  {
    v7 = (v6 + 24 * v3);
    v8 = *v7;
    v9 = v7[1];
    if (v8 != v9)
    {
      break;
    }

LABEL_14:
    if (++v3 == v5 + 1)
    {
      __p = 0;
      v38 = 0;
      v39 = 0;
      v21 = *(v6 + 24 * v5);
      v22 = *(*v21 + 36);
      while (1)
      {
        v36 = *(*v21 + 40);
        if (!*(v36 + 40))
        {
          break;
        }

        v21 = &v36;
        sub_100033C90(&__p, &v36);
      }

      v29 = __p;
      v30 = v38;
      v31 = v38 - 8;
      if (__p != v38 && v31 > __p)
      {
        v33 = __p + 8;
        do
        {
          v34 = *(v33 - 1);
          *(v33 - 1) = *v31;
          *v31 = v34;
          v31 -= 8;
          v35 = v33 >= v31;
          v33 += 8;
        }

        while (!v35);
        v29 = __p;
        v30 = v38;
      }

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      sub_100038ABC(a2, v29, v30, (v30 - v29) >> 3);
      *(a2 + 24) = v22;
      if (__p)
      {
        v38 = __p;
        operator delete(__p);
      }

      return;
    }
  }

  v10 = (a1[9] + 24 * v3);
  v11 = *v10;
  v12 = v10[1];
  while (1)
  {
    v13 = *v8;
    *(*v8 + 40) = 0;
    if (v11 == v12)
    {
      break;
    }

    v14 = 0;
    v15 = 0.0;
    v16 = v11;
    do
    {
      v18 = *v16++;
      v17 = v18;
      v19 = *(v18 + 36) + *(v13 + 32);
      if (v19 > v15 || v14 == 0)
      {
        v14 = v17;
        v15 = v19;
      }
    }

    while (v16 != v12);
    if (!v14)
    {
      break;
    }

    *(v13 + 40) = v14;
    *(v13 + 36) = v15;
    if (++v8 == v9)
    {
      goto LABEL_14;
    }
  }

  if (sub_100048804() <= 2)
  {
    LOBYTE(__p) = 0;
    v23 = sub_1000192F4(&std::cerr, "unigram_model.cc", 16);
    sub_1000192F4(v23, "(", 1);
    v24 = std::ostream::operator<<();
    v25 = sub_1000192F4(v24, ") ", 2);
    v26 = sub_1000192F4(v25, "LOG(", 4);
    v27 = sub_1000192F4(v26, "ERROR", 5);
    v28 = sub_1000192F4(v27, ") ", 2);
    sub_1000192F4(v28, "Failed to find the best path in Viterbi.", 40);
    sub_1000179E8(&__p);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
}

void sub_100034040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100034070(void *a1@<X0>, uint64_t *a2@<X8>, float a3@<S0>)
{
  v5 = ((a1[4] - a1[3]) >> 3) - 1;
  sub_1000116E4(a2, a1[16] + a1[17] * a1[18]);
  v6 = 0;
  v25 = a1[6];
  v23 = a1;
  v24 = (v5 & ~(v5 >> 31)) + 1;
  do
  {
    v7 = (v25 + 24 * v6);
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      v10 = v23[9] + 24 * v6;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *a2;
      do
      {
        if (v12 != v11)
        {
          v14 = *(*v8 + 24);
          v15 = *v12;
          v16 = *(v13 + 4 * v14);
          v17 = v12;
          do
          {
            v18 = *(v13 + 4 * *(*v17 + 24)) + (a3 * *(*v17 + 32));
            if (*v17 != v15)
            {
              if (v18 >= v16)
              {
                v19 = v16;
              }

              else
              {
                v19 = *(v13 + 4 * *(*v17 + 24)) + (a3 * *(*v17 + 32));
              }

              if (v16 >= v18)
              {
                v18 = v16;
              }

              if (v18 <= (v19 + 50.0))
              {
                v20 = v18;
                v21 = exp((v19 - v18));
                v18 = log(v21 + 1.0) + v20;
              }
            }

            *(v13 + 4 * v14) = v18;
            ++v17;
            v16 = v18;
          }

          while (v17 != v11);
        }

        v8 += 8;
      }

      while (v8 != v9);
    }

    ++v6;
  }

  while (v6 != v24);
}

void sub_1000341F8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = ((a1[4] - a1[3]) >> 3) - 1;
  v5 = v4 & ~(v4 >> 31);
  v22 = a2;
  sub_1000116E4(a2, a1[16] + a1[17] * a1[18]);
  v23 = a1;
  v24 = a1[9];
  do
  {
    v6 = (v24 + 24 * v5);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      v9 = v23[6] + 24 * v5;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *v22;
      do
      {
        if (v10 != v11)
        {
          v13 = *(*v7 + 24);
          v14 = *v10;
          v15 = *(v12 + 4 * v13);
          v16 = v10;
          do
          {
            v17 = *(*v16 + 32) + *(v12 + 4 * *(*v16 + 24));
            if (*v16 != v14)
            {
              if (v17 >= v15)
              {
                v18 = v15;
              }

              else
              {
                v18 = *(*v16 + 32) + *(v12 + 4 * *(*v16 + 24));
              }

              if (v15 >= v17)
              {
                v17 = v15;
              }

              if (v17 <= (v18 + 50.0))
              {
                v19 = v17;
                v20 = exp((v18 - v17));
                v17 = log(v20 + 1.0) + v19;
              }
            }

            *(v12 + 4 * v13) = v17;
            ++v16;
            v15 = v17;
          }

          while (v16 != v11);
        }

        v7 += 8;
      }

      while (v7 != v8);
    }
  }

  while (v5-- > 0);
}

void sub_100034368(void *a1, void *a2, float a3)
{
  if (a2)
  {
    v7 = a1[3];
    v6 = a1[4];
    sub_100034070(a1, v20, 1.0);
    sub_1000341F8(a1, __p);
    v8 = ((v6 - v7) >> 3) - 1;
    v9 = a1[6];
    v10 = v20[0];
    v11 = *(v20[0] + *(**(v9 + 24 * (v8 & ~(v8 >> 31))) + 24));
    if (v8 >= 1)
    {
      for (i = 0; i != v8; ++i)
      {
        v13 = (v9 + 24 * i);
        v14 = *v13;
        v15 = v13[1];
        if (*v13 != v15)
        {
          v16 = __p[0];
          do
          {
            v17 = *(*v14 + 28);
            if ((v17 & 0x80000000) == 0)
            {
              v18 = *(*a2 + 4 * v17) + a3 * exp((((v10[*(*v14 + 24)] + *(*v14 + 32)) + v16[*(*v14 + 24)]) - v11));
              *(*a2 + 4 * v17) = v18;
            }

            v14 += 8;
          }

          while (v14 != v15);
        }
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
      v10 = v20[0];
    }

    if (v10)
    {
      v20[1] = v10;
      operator delete(v10);
    }
  }
}

void sub_1000344D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_1000344EC(void *a1, float a2)
{
  v5 = a1[3];
  v4 = a1[4];
  v6 = a1[16] + a1[17] * a1[18];
  LODWORD(__p[0]) = 0;
  sub_1000116E4(v29, v6);
  sub_100034070(a1, __p, a2);
  v7 = 0;
  v27 = a1[6];
  v25 = (((v4 - v5) >> 3) - 1) & ~((((v4 - v5) >> 3) - 1) >> 31);
  v26 = a1;
  do
  {
    v8 = (v27 + 24 * v7);
    v9 = *v8;
    v10 = v8[1];
    if (*v8 != v10)
    {
      v11 = (v26[9] + 24 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = __p[0];
      v15 = v29[0];
      do
      {
        if (v12 != v13)
        {
          v16 = *(*v9 + 24);
          v17 = v15[v16];
          v18 = v12;
          do
          {
            v19 = *v18++;
            v20 = *(v19 + 24);
            v21 = (v14[v20] + (a2 * *(v19 + 32))) - v14[v16];
            v17 = v17 + (expf(v21) * (v21 + v15[v20]));
            v15[v16] = v17;
          }

          while (v18 != v13);
        }

        v9 += 8;
      }

      while (v9 != v10);
    }

    ++v7;
  }

  while (v7 != v25 + 1);
  v22 = v29[0];
  v23 = *(v29[0] + *(**(v27 + 24 * v25) + 24));
  if (!__p[0] || (__p[1] = __p[0], operator delete(__p[0]), (v22 = v29[0]) != 0))
  {
    v29[1] = v22;
    operator delete(v22);
  }

  return -v23;
}

void sub_100034690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000346AC(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>, float a5@<S0>)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (a2 == 1)
  {
    if ((a3 & 1) == 0)
    {
      sub_100033E14(a1, &v143);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      sub_100038F80(a4, &v143, &v145[1], 1uLL);
      if (v143)
      {
        *&v144 = v143;
        operator delete(v143);
      }

      return;
    }
  }

  else if (!a2)
  {
    if (sub_100048804() <= 1)
    {
      LOBYTE(v143) = 0;
      v10 = sub_1000192F4(&std::cerr, "unigram_model.cc", 16);
      sub_1000192F4(v10, "(", 1);
      v11 = std::ostream::operator<<();
      v12 = sub_1000192F4(v11, ") ", 2);
      v13 = sub_1000192F4(v12, "LOG(", 4);
      v14 = sub_1000192F4(v13, "WARNING", 7);
      v15 = sub_1000192F4(v14, ") ", 2);
      sub_1000192F4(v15, "nbest_size >= 1. Returns empty result.", 38);
      sub_1000179E8(&v143);
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  v144 = 0u;
  memset(v145, 0, sizeof(v145));
  v143 = off_1000AD2E0;
  v146 = 512;
  v141 = 0;
  v142 = 0uLL;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v16 = sub_1000357B4(&v143);
  v137 = v16;
  v17 = ((v8[4] - v8[3]) >> 3) - 1;
  *v16 = **(v8[6] + 24 * (v17 & ~(v17 >> 31)));
  *(v16 + 8) = 0;
  *(v16 + 20) = 0;
  v18 = v8[16] + v8[17] * v8[18];
  *v129 = 0;
  sub_1000116E4(__p, v18);
  if (v6)
  {
    sub_100034070(v8, v129, a5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v129;
    __p[2] = *&v129[16];
    sub_100048D3C();
    v20 = sub_100032C04(v19);
    v21 = logf((vcvts_n_f32_u32(v20, 0x20uLL) + 0.0) + 0.0000001);
    v22 = -logf(-v21);
  }

  else
  {
    sub_100033E14(v8, v135);
    if (v135[0])
    {
      v135[1] = v135[0];
      operator delete(v135[0]);
    }

    v22 = *(*v16 + 36);
  }

  *(v16 + 16) = v22;
  sub_100038E80(&v141, &v137);
  v23 = v142;
  sub_1000391B8(v141, v142, (v142 - v141) >> 3);
  v120 = 0;
  v119 = (10 * v7);
  if (10 * v7 >= 512)
  {
    v24 = 512;
  }

  else
  {
    v24 = 10 * v7;
  }

  if (v24 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  v123 = v25;
  v124 = v6;
  while (1)
  {
    v26 = v141;
    if (v141 == v23)
    {
      break;
    }

    v27 = *v141;
    v28 = (v23 - v141) >> 3;
    if (v28 >= 2)
    {
      v29 = 0;
      v30 = v141;
      do
      {
        v31 = v30;
        v30 += v29 + 1;
        v32 = 2 * v29;
        v29 = (2 * v29) | 1;
        v33 = v32 + 2;
        if (v33 < v28 && *(*v30 + 16) < *(v30[1] + 16))
        {
          ++v30;
          v29 = v33;
        }

        *v31 = *v30;
      }

      while (v29 <= ((v28 - 2) >> 1));
      v34 = v23 - 8;
      if (v30 == (v23 - 8))
      {
        *v30 = v27;
      }

      else
      {
        *v30 = *v34;
        *v34 = v27;
        sub_1000391B8(v26, (v30 + 1), ((v30 + 1) - v26) >> 3);
      }
    }

    v23 = (v142 - 8);
    *&v142 = v142 - 8;
    v35 = *v27;
    v36 = v8[9];
    if (*v27 == **v36)
    {
      sub_100035874(a4, ((a4[1] - *a4) >> 5) + 1);
      v37 = (v27 + 1);
      while (1)
      {
        v38 = *v37;
        v39 = *v37;
        v40 = v39[1];
        v37 = (v39 + 1);
        if (!v40)
        {
          break;
        }

        sub_100033C90(a4[1] - 32, v38);
      }

      v41 = a4[1];
      *(v41 - 8) = *(v27 + 4);
      if (v7 == (v41 - *a4) >> 5)
      {
        break;
      }
    }

    else
    {
      v42 = (v36[3 * *(v35 + 16) + 1] - v36[3 * *(v35 + 16)]);
      *v129 = 0;
      sub_1000116E4(v134, v42);
      *v129 = 0;
      sub_1000116E4(v133, v42);
      v121 = v7;
      *v129 = 0;
      sub_10003933C(&v131, v42);
      v43 = *(v35 + 16);
      v44 = v8[9];
      if (v6)
      {
        v45 = *(v44 + 24 * v43);
        v46 = -100000000.0;
        if (*(v44 + 24 * v43 + 8) != v45)
        {
          v47 = 0;
          v48 = *(__p[0] + *(v35 + 24));
          v46 = -100000000.0;
          do
          {
            v49 = ((*(v27 + 5) + *(__p[0] + *(*(v45 + 8 * v47) + 24))) + (a5 * *(*(v45 + 8 * v47) + 32))) - v48;
            *(v134[0] + v47) = v49;
            sub_100048D3C();
            v51 = sub_100032C04(v50);
            v52 = logf((vcvts_n_f32_u32(v51, 0x20uLL) + 0.0) + 0.0000001);
            v53 = v49 - logf(-v52);
            *(v133[0] + v47) = v53;
            if (v53 > v46)
            {
              v46 = v53;
            }

            ++v47;
            v54 = *(v35 + 16);
            v44 = v8[9];
            v45 = *(v44 + 24 * v54);
          }

          while (v47 < (*(v44 + 24 * v54 + 8) - v45) >> 3);
          v43 = *(v35 + 16);
        }

        v55 = v131;
        if (v132 != v131)
        {
          v56 = *(v27 + 4);
          v57 = v133[0];
          if (((v132 - v131) >> 3) <= 1)
          {
            v58 = 1;
          }

          else
          {
            v58 = (v132 - v131) >> 3;
          }

          do
          {
            v59 = *v57++;
            v60 = expf(v59 - v46);
            v61 = (v56 - v59) + log1pf(-v60);
            v62 = v56 - fmaxf(v61, 0.0);
            v63 = expf(-fabsf(v61));
            *v55++ = (v62 - log1pf(v63));
            --v58;
          }

          while (v58);
        }

        v6 = v124;
      }

      v64 = *(v44 + 24 * v43);
      if (*(v44 + 24 * v43 + 8) != v64)
      {
        v65 = 0;
        do
        {
          v66 = *(v64 + 8 * v65);
          v67 = sub_1000357B4(&v143);
          *v129 = v67;
          *v67 = v66;
          if (v6)
          {
            *(v67 + 20) = *(v134[0] + v65);
            v68 = *(v131 + v65);
          }

          else
          {
            *(v67 + 20) = *(v66 + 32) + *(v27 + 5);
            v68 = *(v66 + 36) + *(v27 + 5);
          }

          *(v67 + 16) = v68;
          *(v67 + 8) = v27;
          sub_100038E80(&v141, v129);
          v23 = v142;
          sub_1000391B8(v141, v142, (v142 - v141) >> 3);
          ++v65;
          v64 = *(v8[9] + 24 * *(v35 + 16));
        }

        while (v65 < (*(v8[9] + 24 * *(v35 + 16) + 8) - v64) >> 3);
      }

      v7 = v121;
      if (!(((v145[1] + v145[2] * v146) < 0x3B9ACA00) | v120 & 1))
      {
        if (sub_100048804() <= 1)
        {
          v129[0] = 0;
          v69 = sub_1000192F4(&std::cerr, "unigram_model.cc", 16);
          sub_1000192F4(v69, "(", 1);
          v70 = std::ostream::operator<<();
          v71 = sub_1000192F4(v70, ") ", 2);
          v72 = sub_1000192F4(v71, "LOG(", 4);
          v73 = sub_1000192F4(v72, "WARNING", 7);
          v74 = sub_1000192F4(v73, ") ", 2);
          sub_1000192F4(v74, "Allocator size exceeds ", 23);
          v75 = std::ostream::operator<<();
          sub_1000192F4(v75, " with an example of length ", 27);
          v76 = ((v8[4] - v8[3]) >> 3) - 1;
          std::ostream::operator<<();
          sub_1000179E8(v129);
        }

        v120 = 1;
      }

      v77 = v141;
      if (((v23 - v141) >> 3) >> 4 < 0x271)
      {
        v6 = v124;
      }

      else
      {
        v139 = 0;
        v140 = 0uLL;
        memset(&v129[8], 0, 40);
        *v129 = off_1000AD2E0;
        v130 = 512;
        *v126 = 0u;
        v127 = 0u;
        v128 = 1065353216;
        ++HIDWORD(v119);
        if (sub_100048804() <= 1)
        {
          LOBYTE(v138) = 0;
          v78 = sub_1000192F4(&std::cerr, "unigram_model.cc", 16);
          sub_1000192F4(v78, "(", 1);
          v79 = std::ostream::operator<<();
          v80 = sub_1000192F4(v79, ") ", 2);
          v81 = sub_1000192F4(v80, "LOG(", 4);
          v82 = sub_1000192F4(v81, "WARNING", 7);
          v83 = sub_1000192F4(v82, ") ", 2);
          sub_1000192F4(v83, "Too big agenda size ", 20);
          v84 = std::ostream::operator<<();
          sub_1000192F4(v84, ". Shrinking (round ", 19);
          v85 = std::ostream::operator<<();
          sub_1000192F4(v85, ") down to ", 10);
          v86 = std::ostream::operator<<();
          sub_1000192F4(v86, ".", 1);
          sub_1000179E8(&v138);
        }

        if (v119 >= 1)
        {
          v118 = v8;
          v87 = 0;
          while (1)
          {
            v88 = v141;
            v89 = *v141;
            v138 = 0;
            if (!v89)
            {
              goto LABEL_101;
            }

            v90 = &v138;
            do
            {
              v91 = 0x9DDFEA08EB382D69 * ((8 * (v89 & 0x1FFFFFFF) + 8) ^ HIDWORD(v89));
              v92 = 0x9DDFEA08EB382D69 * (HIDWORD(v89) ^ (v91 >> 47) ^ v91);
              v93 = 0x9DDFEA08EB382D69 * (v92 ^ (v92 >> 47));
              if (v126[1])
              {
                v94 = vcnt_s8(v126[1]);
                v94.i16[0] = vaddlv_u8(v94);
                if (v94.u32[0] > 1uLL)
                {
                  v95 = 0x9DDFEA08EB382D69 * (v92 ^ (v92 >> 47));
                  if (v93 >= v126[1])
                  {
                    v95 = v93 % v126[1];
                  }
                }

                else
                {
                  v95 = v93 & (v126[1] - 1);
                }

                v96 = *(v126[0] + v95);
                if (v96)
                {
                  for (i = *v96; i; i = *i)
                  {
                    v98 = i[1];
                    if (v98 == v93)
                    {
                      if (i[2] == v89)
                      {
                        *v90 = i[3];
                        goto LABEL_101;
                      }
                    }

                    else
                    {
                      if (v94.u32[0] > 1uLL)
                      {
                        if (v98 >= v126[1])
                        {
                          v98 %= v126[1];
                        }
                      }

                      else
                      {
                        v98 &= v126[1] - 1;
                      }

                      if (v98 != v95)
                      {
                        break;
                      }
                    }
                  }
                }
              }

              v99 = sub_1000357B4(v129);
              v100 = *v89;
              *(v99 + 16) = *(v89 + 16);
              *v99 = v100;
              *v90 = v99;
              if (!v126[1])
              {
                goto LABEL_99;
              }

              v101 = vcnt_s8(v126[1]);
              v101.i16[0] = vaddlv_u8(v101);
              if (v101.u32[0] > 1uLL)
              {
                v102 = v93;
                if (v93 >= v126[1])
                {
                  v102 = v93 % v126[1];
                }
              }

              else
              {
                v102 = (v126[1] - 1) & v93;
              }

              v103 = *(v126[0] + v102);
              if (!v103 || (v104 = *v103) == 0)
              {
LABEL_99:
                operator new();
              }

              while (1)
              {
                v105 = v104[1];
                if (v105 == v93)
                {
                  break;
                }

                if (v101.u32[0] > 1uLL)
                {
                  if (v105 >= v126[1])
                  {
                    v105 %= v126[1];
                  }
                }

                else
                {
                  v105 &= v126[1] - 1;
                }

                if (v105 != v102)
                {
                  goto LABEL_99;
                }

LABEL_98:
                v104 = *v104;
                if (!v104)
                {
                  goto LABEL_99;
                }
              }

              if (v104[2] != v89)
              {
                goto LABEL_98;
              }

              v89 = *(v89 + 8);
              v90 = (v99 + 8);
            }

            while (v89);
LABEL_101:
            v125 = v138;
            sub_100038E80(&v139, &v125);
            sub_1000391B8(v139, v140, (v140 - v139) >> 3);
            v106 = (v23 - v88) >> 3;
            v6 = v124;
            v7 = v121;
            if (v106 >= 2)
            {
              v107 = 0;
              v108 = *v88;
              v109 = v88;
              do
              {
                v110 = v109;
                v109 += v107 + 1;
                v111 = 2 * v107;
                v107 = (2 * v107) | 1;
                v112 = v111 + 2;
                if (v112 < v106 && *(*v109 + 16) < *(v109[1] + 16))
                {
                  ++v109;
                  v107 = v112;
                }

                *v110 = *v109;
              }

              while (v107 <= ((v106 - 2) >> 1));
              v113 = v23 - 8;
              if (v109 == (v23 - 8))
              {
                *v109 = v108;
              }

              else
              {
                *v109 = *v113;
                *v113 = v108;
                sub_1000391B8(v88, (v109 + 1), v109 + 1 - v88);
              }
            }

            v23 = (v142 - 8);
            *&v142 = v142 - 8;
            if (++v87 == v123)
            {
              v77 = v141;
              v8 = v118;
              goto LABEL_114;
            }
          }
        }

        v6 = v124;
LABEL_114:
        if (v77)
        {
          *&v142 = v77;
          operator delete(v77);
        }

        v141 = v139;
        v122 = v140;
        v142 = v140;
        v114 = v144;
        v144 = *&v129[8];
        *&v129[8] = v114;
        v115 = *&v129[24];
        v116 = v146;
        *&v129[24] = v145[0];
        v117 = *&v145[1];
        *&v145[1] = *&v129[32];
        *&v129[32] = v117;
        v145[0] = v115;
        v146 = v130;
        v130 = v116;
        sub_100035910(v126);
        sub_10003595C(v129);
        v23 = v122;
      }

      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      if (v133[0])
      {
        v133[1] = v133[0];
        operator delete(v133[0]);
      }

      if (v134[0])
      {
        v134[1] = v134[0];
        operator delete(v134[0]);
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v141)
  {
    operator delete(v141);
  }

  sub_10003595C(&v143);
}

void sub_10003565C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51)
{
  sub_100035910(&a19);
  sub_10003595C(&a25);
  if (__p)
  {
    a33 = __p;
    operator delete(__p);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  v53 = *(v51 - 256);
  sub_100019148(&a25);
  if (v53)
  {
    operator delete(v53);
  }

  sub_10003595C((v51 - 224));
  _Unwind_Resume(a1);
}

uint64_t sub_1000357B4(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[4];
  if (v4 >= v3)
  {
    v4 = 0;
    ++v2;
    a1[4] = 0;
    a1[5] = v2;
  }

  v5 = a1[1];
  if (v2 == (a1[2] - v5) >> 3)
  {
    is_mul_ok(v3, 0x18uLL);
    operator new[]();
  }

  result = *(v5 + 8 * v2) + 24 * v4;
  a1[4] = v4 + 1;
  return result;
}

void sub_100035874(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      if (v3 != v6)
      {
        v7 = a1[1];
        do
        {
          v9 = *(v7 - 32);
          v7 -= 32;
          v8 = v9;
          if (v9)
          {
            *(v3 - 24) = v8;
            operator delete(v8);
          }

          v3 = v7;
        }

        while (v7 != v6);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_100039214(a1, v5);
  }
}

uint64_t sub_100035910(uint64_t a1)
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

void *sub_10003595C(void *a1)
{
  *a1 = off_1000AD2E0;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        operator delete[]();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000359F0(void *a1@<X0>, unint64_t *a2@<X8>, float a3@<S0>)
{
  if ((((a1[4] - a1[3]) >> 3) - 1) <= 0)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v6 = a1[16] + a1[17] * a1[18];
    LODWORD(__src[0]) = 0;
    sub_1000116E4(__p, v6);
    sub_100034070(a1, __src, a3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *__src;
    v43 = v41;
    sub_100048D3C();
    v8 = v7;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    __src[0] = 0;
    __src[1] = 0;
    v41 = 0;
    v9 = ((a1[4] - a1[3]) >> 3) - 1;
    v10 = **(a1[6] + 24 * (v9 & ~(v9 >> 31)));
    v11 = *(__p[0] + *(v10 + 24));
    v39 = v10;
    do
    {
      v12 = __src[0];
      __src[1] = __src[0];
      v13 = (a1[9] + 24 * *(v39 + 16));
      v14 = *v13;
      v15 = v13[1];
      v16 = __src[0];
      if (*v13 != v15)
      {
        do
        {
          v17 = exp(((*(__p[0] + *(*v14 + 24)) + (a3 * *(*v14 + 32))) - v11));
          if (v12 >= v41)
          {
            v18 = __src[0];
            v19 = v12 - __src[0];
            v20 = (v12 - __src[0]) >> 2;
            v21 = v20 + 1;
            if ((v20 + 1) >> 62)
            {
              sub_100003F50();
            }

            v22 = v41 - __src[0];
            if ((v41 - __src[0]) >> 1 > v21)
            {
              v21 = v22 >> 1;
            }

            if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v23 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v21;
            }

            if (v23)
            {
              sub_10000418C(__src, v23);
            }

            v24 = v20;
            v25 = (4 * v20);
            v26 = &v25[-v24];
            *v25 = v17;
            v12 = v25 + 1;
            memcpy(v26, v18, v19);
            v27 = __src[0];
            __src[0] = v26;
            __src[1] = v12;
            v41 = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            *v12++ = v17;
          }

          __src[1] = v12;
          v14 += 8;
        }

        while (v14 != v15);
        v16 = __src[0];
      }

      sub_1000327EC(v38, v16, v12);
      v28 = *(v39 + 16);
      v29 = a1[9];
      v30 = *(*(v29 + 24 * v28) + 8 * sub_100032B54(v38, v8, v38));
      v39 = v30;
      v31 = **a1[9];
      if (v30 != v31)
      {
        v11 = *(__p[0] + *(v30 + 24));
        sub_100033C90(a2, &v39);
      }

      if (v38[0])
      {
        v38[1] = v38[0];
        operator delete(v38[0]);
      }
    }

    while (v30 != v31);
    v33 = *a2;
    v32 = a2[1];
    if (*a2 != v32)
    {
      v34 = (v32 - 8);
      if (v34 > v33)
      {
        v35 = v33 + 8;
        do
        {
          v36 = *(v35 - 8);
          *(v35 - 8) = *v34;
          *v34-- = v36;
          v37 = v35 >= v34;
          v35 += 8;
        }

        while (!v37);
      }
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_100035CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100035D68(uint64_t a1, void *a2)
{
  v4 = *(a1 + 104);
  v5 = ((a2[4] - a2[3]) >> 3) - 1;
  v6 = a2[1];
  v7 = a2[2];
  sub_100019684(&__p, *(a1 + 92) + 1);
  v42 = v5;
  if (v5 < 1)
  {
    goto LABEL_40;
  }

  v43 = 0;
  v8 = 0;
  v9 = v4 + -10.0;
  v41 = v6 + v7;
  do
  {
    v10 = *(a2[3] + 8 * v8);
    v11 = __p;
    v12 = (v46 - __p) >> 4;
    v13 = *(a1 + 40);
    v14 = (*v13 >> 10 << ((*v13 >> 6) & 8));
    if ((v41 - v10) << 32)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = v10[v15];
        v18 = v14 ^ v17;
        v19 = v13[v18];
        if ((v19 & 0x800000FF) != v17)
        {
          break;
        }

        v14 = v18 ^ (v19 >> 10 << ((v19 >> 6) & 8));
        if ((v19 & 0x100) != 0)
        {
          if (v16 < v12)
          {
            v20 = &v11[16 * v16];
            *v20 = v13[v14] & 0x7FFFFFFF;
            *(v20 + 1) = v15 + 1;
          }

          ++v16;
        }

        ++v15;
      }

      while (v41 - v10 != v15);
    }

    else
    {
      v21 = *v10;
      if (*v10)
      {
        v16 = 0;
        v22 = 1;
        do
        {
          v23 = v14 ^ v21;
          v24 = v13[v23];
          if ((v24 & 0x800000FF) != v21)
          {
            break;
          }

          v14 = v23 ^ (v24 >> 10 << ((v24 >> 6) & 8));
          if ((v24 & 0x100) != 0)
          {
            if (v16 < v12)
            {
              v25 = &v11[16 * v16];
              *v25 = v13[v14] & 0x7FFFFFFF;
              *(v25 + 1) = v22;
            }

            ++v16;
          }

          v21 = v10[v22++];
        }

        while (v21);
      }

      else
      {
        v16 = 0;
      }
    }

    if (v16 >= v12)
    {
      v44 = 1;
      v26 = sub_1000192F4(&std::cerr, "unigram_model.cc", 16);
      sub_1000192F4(v26, "(", 1);
      v27 = std::ostream::operator<<();
      v28 = sub_1000192F4(v27, ") [", 3);
      v29 = sub_1000192F4(v28, "(num_nodes) < (trie_results.size())", 35);
      sub_1000192F4(v29, "] ", 2);
      sub_1000179E8(&v44);
    }

    if (!v16)
    {
LABEL_38:
      v40 = sub_100033D64(a2, v8, 1);
      *(v40 + 28) = *(a1 + 88);
      *(v40 + 32) = v9;
      goto LABEL_39;
    }

    v30 = 0;
    v31 = 0;
    do
    {
      while (1)
      {
        v32 = (__p + 16 * v30);
        v33 = (a2[3] + v43);
        v34 = -1;
        do
        {
          v35 = *v33++;
          ++v34;
        }

        while (v35 < &v10[*(v32 + 1)]);
        v36 = *v32;
        if ((*(**(a1 + 8) + 128))(*(a1 + 8), v36))
        {
          break;
        }

        v37 = v8;
        v38 = sub_100033D64(a2, v8, v34);
        *(v38 + 28) = v36;
        if ((*(**(a1 + 8) + 136))(*(a1 + 8), v36))
        {
          v39 = (*(a1 + 108) * v34) + -0.1;
        }

        else
        {
          v39 = (*(**(a1 + 8) + 96))(*(a1 + 8), v36);
        }

        *(v38 + 32) = v39;
        if (!v31)
        {
          v31 = *(v38 + 20) == 1;
          v8 = v37;
          break;
        }

        ++v30;
        v31 = 1;
        v8 = v37;
        if (v30 == v16)
        {
          goto LABEL_39;
        }
      }

      ++v30;
    }

    while (v30 != v16);
    if (!v31)
    {
      goto LABEL_38;
    }

LABEL_39:
    ++v8;
    v43 += 8;
  }

  while (v8 != v42);
LABEL_40:
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }
}

void sub_100036134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100036168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000362D0(a1);
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *v4 = off_1000AD188;
  *(v4 + 8) = a2 + 16;
  sub_1000159B4(v4);
  v5 = 0;
  *(a1 + 104) = 0x8000007F7FFFFFLL;
  while (v5 < (*(**(a1 + 8) + 16))(*(a1 + 8)))
  {
    if ((*(**(a1 + 8) + 104))(*(a1 + 8), v5))
    {
      v6 = (*(**(a1 + 8) + 96))(*(a1 + 8), v5);
      if (v6 >= *(a1 + 104))
      {
        v6 = *(a1 + 104);
      }

      *(a1 + 104) = v6;
      v7 = (*(**(a1 + 8) + 96))(*(a1 + 8), v5);
      if (*(a1 + 108) >= v7)
      {
        v7 = *(a1 + 108);
      }

      *(a1 + 108) = v7;
    }

    ++v5;
  }

  return a1;
}

uint64_t sub_1000362D0(uint64_t a1)
{
  *a1 = off_1000ACB30;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = off_1000ACC50;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = off_1000ACC50;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_10004AF14((a1 + 96));
  return a1;
}

void sub_100036374(_Unwind_Exception *a1)
{
  sub_1000138E0(v3);
  sub_1000138E0(v2);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    sub_100019278(v1, v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1000363A8(uint64_t *a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  v7 = a4 > 7;
  if (a4 <= 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4 - 8;
  }

  if (v7)
  {
    v9 = (a3 + 2);
  }

  else
  {
    v9 = "";
  }

  v10 = sub_100013944(a1, a2, v9, v8);
  *v10 = off_1000AD188;
  *(v10 + 104) = 0;
  v11 = (v10 + 104);
  *(v10 + 108) = 0;
  v12 = (v10 + 108);
  *(v10 + 112) = 0;
  sub_10004B130(&v16, a1 + 12);
  v13 = v16;
  sub_10004AF1C(&v16);
  if (!v13)
  {
    sub_100036518(a3, a4, v11, &v16);
    sub_10004B134(a1 + 12, &v16);
    sub_10004AF1C(&v16);
    (*(*a1 + 16))(&v16, a1);
    v14 = v16;
    sub_10004AF1C(&v16);
    if (!v14)
    {
      sub_100036518(a3 + 1, a4 - 4, v12, &v16);
      sub_10004B134(a1 + 12, &v16);
      sub_10004AF1C(&v16);
    }
  }

  return a1;
}

void sub_1000364E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004AF1C(va);
  sub_100014854(v2);
  _Unwind_Resume(a1);
}

void *sub_100036518@<X0>(_DWORD *a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  if (a2 <= 3)
  {
    v7 = 13;
    v6 = sub_1000177C0(&v8);
    sub_1000192F4(v6, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.h", 62);
    sub_1000192F4(&v8, "(", 1);
    std::ostream::operator<<();
    sub_1000192F4(&v8, ") [", 3);
    sub_1000192F4(&v8, "string.size() >= sizeof(T)", 26);
    sub_1000192F4(&v8, "] ", 2);
    sub_1000145A8(&v7, a4);
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    std::locale::~locale(v10);
    std::ostream::~ostream();
    return std::ios::~ios();
  }

  else
  {
    *a3 = *a1;

    return sub_10004AF14(a4);
  }
}

void sub_100036730(void *a1)
{
  sub_100014854(a1);

  operator delete();
}

void sub_100036768(_DWORD *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1[28])
  {
    (*(*a1 + 16))(&v23, a1);
    if (v23)
    {
      sub_10004AF1C(&v23);
LABEL_4:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return;
    }

    sub_10004AF1C(&v23);
    if (!a3)
    {
      goto LABEL_4;
    }

    v23 = off_1000AD168;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v30 = off_1000AD2B0;
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    v34 = 1024;
    sub_1000338F4(&v23, a2, a3);
    sub_100035D68(a1, &v23);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    sub_100033E14(&v23, &v21);
    v8 = v21;
    v9 = v22;
    if (v21 != v22)
    {
      v10 = *(a4 + 8);
      do
      {
        v11 = *v8;
        v12 = *(a4 + 16);
        if (v10 >= v12)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_100003F50();
          }

          v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
          if (2 * v15 > v14)
          {
            v14 = 2 * v15;
          }

          if (v15 >= 0x555555555555555)
          {
            v16 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            sub_100019068(a4, v16);
          }

          v17 = 24 * v13;
          *v17 = *v11;
          *(v17 + 16) = *(v11 + 28);
          v10 = 24 * v13 + 24;
          v18 = *(a4 + 8) - *a4;
          v19 = v17 - v18;
          memcpy((v17 - v18), *a4, v18);
          v20 = *a4;
          *a4 = v19;
          *(a4 + 8) = v10;
          *(a4 + 16) = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v10 = *v11;
          *(v10 + 16) = *(v11 + 28);
          v10 += 24;
        }

        *(a4 + 8) = v10;
        ++v8;
      }

      while (v8 != v9);
      v8 = v21;
    }

    if (v8)
    {
      v22 = v8;
      operator delete(v8);
    }

    sub_1000335B8(&v23);
  }

  else
  {

    sub_100036A58(a1, a2, a3, a4);
  }
}

void sub_100036A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  sub_1000335B8(&a13);
  _Unwind_Resume(a1);
}

void sub_100036A58(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  (*(*a1 + 16))(&v52);
  if (v52)
  {
    sub_10004AF1C(&v52);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  sub_10004AF1C(&v52);
  if (!a3)
  {
    goto LABEL_3;
  }

  if ((&_mh_execute_header + (a3 << 32)))
  {
    if (((&_mh_execute_header + (a3 << 32)) >> 32) < 0x1555555555555556)
    {
      operator new();
    }

    sub_100003F50();
  }

  if (a3 <= 0)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    v8 = 0;
    v9 = *(a1 + 104) + -10.0;
    v10 = a3 & 0x7FFFFFFF;
    v49 = -v10;
    v50 = a4;
    v51 = a3;
    v47 = v10;
    v48 = a2;
    do
    {
      v11 = *(12 * v8 + 4);
      if (a3 - v8 >= asc_1000A0733[*(a2 + v8) >> 4])
      {
        v12 = asc_1000A0733[*(a2 + v8) >> 4];
      }

      else
      {
        v12 = a3 - v8;
      }

      if (v10 <= v8)
      {
        goto LABEL_27;
      }

      v13 = 0;
      v14 = 0;
      v15 = (12 * v8 + 20);
      v16 = 1;
      do
      {
        v17 = *(a1 + 40);
        v18 = *(a2 + v8 + v16 - 1);
        LODWORD(v14) = (*(v17 + 4 * v14) >> 10 << ((*(v17 + 4 * v14) >> 6) & 8)) ^ v14 ^ v18;
        v19 = *(v17 + 4 * v14);
        if ((v19 & 0x800000FF) != v18)
        {
          break;
        }

        if ((v19 & 0x100) != 0)
        {
          v20 = *(v17 + 4 * ((v19 >> 10 << ((v19 >> 6) & 8)) ^ v14)) & 0x7FFFFFFF;
          if (((*(**(a1 + 8) + 128))(*(a1 + 8), v20) & 1) == 0)
          {
            if ((*(**(a1 + 8) + 136))(*(a1 + 8), v20))
            {
              v21 = (*(a1 + 108) * v16) + -0.1;
            }

            else
            {
              v21 = (*(**(a1 + 8) + 96))(*(a1 + 8), v20);
            }

            v22 = v21 + v11;
            if (*v15 == -1 || v22 > *(v15 - 1))
            {
              v23 = v22;
              *(v15 - 1) = v23;
              *v15 = v8;
              *(v15 - 2) = v20;
            }

            v13 |= v12 == v16;
          }
        }

        ++v16;
        v15 += 3;
      }

      while (v49 + v8 + v16 != 1);
      a3 = v51;
      v10 = v47;
      a2 = v48;
      if ((v13 & 1) == 0)
      {
LABEL_27:
        v24 = v9 + v11;
        if (*(12 * (v12 + v8) + 8) == -1 || v24 > *(12 * (v12 + v8) + 4))
        {
          *(12 * (v12 + v8) + 4) = v24;
          *(12 * (v12 + v8) + 8) = v8;
          *(12 * (v12 + v8)) = *(a1 + 88);
        }
      }

      v8 += v12;
    }

    while (v8 < a3);
    v26 = 0;
    v27 = v50;
    *v50 = 0;
    v50[1] = 0;
    v50[2] = 0;
    v28 = a3;
    do
    {
      v29 = 12 * v28;
      v30 = *(v29 + 8);
      if (a3 < v30)
      {
        sub_100030B94("string_view::substr");
      }

      v31 = v28 - v30;
      v32 = a2 + v30;
      if (a3 - v30 >= v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = a3 - v30;
      }

      v34 = v27[2];
      if (v26 >= v34)
      {
        v35 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *v27) >> 3);
        v36 = v35 + 1;
        if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_100003F50();
        }

        v37 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *v27) >> 3);
        if (2 * v37 > v36)
        {
          v36 = 2 * v37;
        }

        if (v37 >= 0x555555555555555)
        {
          v38 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          sub_100019068(v27, v38);
        }

        v39 = 24 * v35;
        *v39 = v32;
        *(v39 + 8) = v33;
        *(v39 + 16) = *v29;
        v26 = 24 * v35 + 24;
        v40 = v50[1] - *v50;
        v41 = v39 - v40;
        memcpy((v39 - v40), *v50, v40);
        v42 = *v50;
        *v50 = v41;
        v50[1] = v26;
        v50[2] = 0;
        v27 = v50;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v26 = v32;
        *(v26 + 8) = v33;
        *(v26 + 16) = *v29;
        v26 += 24;
      }

      a3 = v51;
      v27[1] = v26;
      v28 = *(v29 + 8);
    }

    while (v28 > 0);
    v43 = *v27;
    if (*v27 == v26 || (v44 = v26 - 24, v26 - 24 <= v43))
    {
      operator delete(0);
    }

    else
    {
      do
      {
        v52 = *v43;
        v45 = v52;
        *v43 = *v44;
        *v44 = v45;
        v46 = *(v43 + 16);
        *(v43 + 16) = *(v44 + 16);
        *(v44 + 16) = v46;
        v43 += 24;
        v44 -= 24;
      }

      while (v43 < v44);
    }
  }
}

void sub_100036F74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  v17 = *a13;
  if (*a13)
  {
    *(a13 + 8) = v17;
    operator delete(v17);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_100036FB8(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  (*(*a1 + 16))(__p);
  if (__p[0])
  {
    sub_10004AF1C(__p);
LABEL_3:
    memset(__p, 0, 24);
    sub_100018F9C(__p, 0, 0, 0);
    LODWORD(__p[3]) = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    sub_100018DC8(a5, __p, &__p[4], 1uLL);
    v10 = __p[0];
    if (!__p[0])
    {
      return;
    }

    __p[1] = __p[0];
    goto LABEL_5;
  }

  sub_10004AF1C(__p);
  if (!a3)
  {
    goto LABEL_3;
  }

  if (a4 >= 1024)
  {
    v11 = 1024;
  }

  else
  {
    v11 = a4;
  }

  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (a4 > 1)
  {
    __p[0] = off_1000AD168;
    memset(&__p[1], 0, 88);
    __p[12] = off_1000AD2B0;
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    v36 = 1024;
    sub_1000338F4(__p, a2, a3);
    sub_100035D68(a1, __p);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_1000346AC(__p, v12, 0, &v30, 0.0);
    v26 = *(&v30 + 1);
    for (i = v30; i != v26; i += 32)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v14 = *i;
      v15 = *(i + 8);
      if (*i != v15)
      {
        v16 = 0;
        do
        {
          v17 = *v14;
          if (v16 >= v29)
          {
            v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v27) >> 3);
            v19 = v18 + 1;
            if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_100003F50();
            }

            if (0x5555555555555556 * ((v29 - v27) >> 3) > v19)
            {
              v19 = 0x5555555555555556 * ((v29 - v27) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v29 - v27) >> 3) >= 0x555555555555555)
            {
              v20 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v20 = v19;
            }

            if (v20)
            {
              sub_100019068(&v27, v20);
            }

            v21 = 24 * v18;
            *v21 = *v17;
            *(v21 + 16) = *(v17 + 28);
            v16 = 24 * v18 + 24;
            v22 = (v21 - (v28 - v27));
            memcpy(v22, v27, v28 - v27);
            v23 = v27;
            v27 = v22;
            v28 = v16;
            v29 = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v16 = *v17;
            *(v16 + 16) = *(v17 + 28);
            v16 += 24;
          }

          v28 = v16;
          ++v14;
        }

        while (v14 != v15);
      }

      v24 = a5[1];
      if (v24 >= a5[2])
      {
        v25 = sub_100039488(a5, &v27, (i + 24));
      }

      else
      {
        sub_100039414(a5, &v27, (i + 24));
        v25 = (v24 + 32);
      }

      a5[1] = v25;
      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }
    }

    v27 = &v30;
    sub_100019148(&v27);
    sub_1000335B8(__p);
  }

  else
  {
    (*(*a1 + 40))(&v30, a1, a2, a3);
    *__p = v30;
    __p[2] = v31;
    v31 = 0;
    v30 = 0uLL;
    LODWORD(__p[3]) = 0;
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    sub_100018DC8(a5, __p, &__p[4], 1uLL);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v10 = v30;
    if (v30)
    {
      *(&v30 + 1) = v30;
LABEL_5:
      operator delete(v10);
    }
  }
}

void sub_1000373B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  a12 = a11;
  sub_100019148(&a12);
  sub_1000335B8(&__p);
  _Unwind_Resume(a1);
}

uint64_t *sub_100037460@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  (*(*a1 + 16))(&v26);
  if (v26)
  {
    result = sub_10004AF1C(&v26);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return result;
  }

  result = sub_10004AF1C(&v26);
  if (!a3)
  {
    goto LABEL_3;
  }

  v26 = off_1000AD168;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  v33 = off_1000AD2B0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v37 = 1024;
  sub_1000338F4(&v26, a2, a3);
  sub_100035D68(a1, &v26);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_1000359F0(&v26, &v24, a5);
  v11 = v24;
  v12 = v25;
  if (v24 != v25)
  {
    v13 = 0;
    do
    {
      v14 = *v11;
      v15 = *(a4 + 16);
      if (v13 >= v15)
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a4) >> 3);
        v17 = v16 + 1;
        if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_100003F50();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x555555555555555)
        {
          v19 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          sub_100019068(a4, v19);
        }

        v20 = 24 * v16;
        *v20 = *v14;
        *(v20 + 16) = *(v14 + 28);
        v13 = 24 * v16 + 24;
        v21 = *(a4 + 8) - *a4;
        v22 = v20 - v21;
        memcpy((v20 - v21), *a4, v21);
        v23 = *a4;
        *a4 = v22;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v13 = *v14;
        *(v13 + 16) = *(v14 + 28);
        v13 += 24;
      }

      *(a4 + 8) = v13;
      ++v11;
    }

    while (v11 != v12);
    v11 = v24;
  }

  if (v11)
  {
    v25 = v11;
    operator delete(v11);
  }

  return sub_1000335B8(&v26);
}

void sub_100037710(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, int a6@<W5>, uint64_t *j@<X8>, float a8@<S0>)
{
  v14 = a1;
  (*(*a1 + 16))(&v122);
  if (v122)
  {
    sub_10004AF1C(&v122);
LABEL_3:
    *j = 0;
    j[1] = 0;
    j[2] = 0;
    return;
  }

  sub_10004AF1C(&v122);
  if (!a3)
  {
    goto LABEL_3;
  }

  v134 = 0;
  v135 = 0;
  v136 = 0;
  v122 = off_1000AD168;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0;
  v129 = off_1000AD2B0;
  v130 = 0u;
  v131 = 0u;
  v132 = 0;
  v133 = 1024;
  sub_1000338F4(&v122, a2, a3);
  sub_100035D68(v14, &v122);
  sub_100034070(&v122, v121, a8);
  v16 = *(v121[0] + *(**(*(&v125 + 1) + 24 * ((((*(&v124 + 1) - v124) >> 3) - 1) & ~((((*(&v124 + 1) - v124) >> 3) - 1) >> 31))) + 24));
  if (!a6)
  {
    goto LABEL_31;
  }

  if (a5)
  {
    v96 = a2;
    v98 = a3;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    sub_100033E14(&v122, &__p);
    v100 = v14;
    v17 = __p;
    v18 = v105;
    if (__p != v105)
    {
      v19 = v119;
      do
      {
        v20 = *v17;
        if (v19 >= v120)
        {
          v21 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v118) >> 3);
          v22 = v21 + 1;
          if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_100003F50();
          }

          if (0x5555555555555556 * ((v120 - v118) >> 3) > v22)
          {
            v22 = 0x5555555555555556 * ((v120 - v118) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v120 - v118) >> 3) >= 0x555555555555555)
          {
            v23 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            sub_100019068(&v118, v23);
          }

          v24 = 24 * v21;
          *v24 = *v20;
          *(v24 + 16) = v20[1].n128_u32[3];
          v19 = (24 * v21 + 24);
          v25 = (v24 - (v119 - v118));
          memcpy(v25, v118, v119 - v118);
          v26 = v118;
          v118 = v25;
          v119 = v19;
          v120 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v19 = *v20;
          v19[1].n128_u32[0] = v20[1].n128_u32[3];
          v19 = (v19 + 24);
        }

        v119 = v19;
        ++v17;
      }

      while (v17 != v18);
    }

    v116 = 0.0;
    v27 = v135;
    if (v135 >= v136)
    {
      v29 = sub_1000395B0(&v134, &v118, &v116);
    }

    else
    {
      *v135 = 0;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      sub_100018F9C(v27, v118, v119, 0xAAAAAAAAAAAAAAABLL * ((v119 - v118) >> 3));
      v28 = v116;
      *(v27 + 24) = v28;
      v29 = (v27 + 32);
    }

    a2 = v96;
    a3 = v98;
    v14 = v100;
    v135 = v29;
    if (__p)
    {
      *&v105 = __p;
      operator delete(__p);
    }

    if (v118)
    {
      v119 = v118;
      operator delete(v118);
    }

LABEL_31:
    if (a5)
    {
      sub_1000346AC(&v122, a4 + 1, 1, &v118, a8);
      v95 = j;
      if (a6)
      {
        sub_1000396DC(&v116, (v119 - v118) >> 5);
        v37 = v118;
        v36 = v119;
        if (v119 != v118)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          do
          {
            if (&v37[v38] != (*&v116 + v39))
            {
              sub_1000397CC((*&v116 + v39), v37[v38].n128_u64[0], v37[v38].n128_u64[1], (v37[v38].n128_u64[1] - v37[v38].n128_u64[0]) >> 3);
              v37 = v118;
              v36 = v119;
            }

            ++v40;
            v39 += 24;
            v38 += 2;
          }

          while (v40 < (v36 - v37) >> 5);
        }

        sub_100033E14(&v122, &__p);
        v41 = v116;
        v42 = v117;
        if (*&v116 == *&v117)
        {
          v45 = v116;
        }

        else
        {
          v43 = __p;
          v44 = v105 - __p;
          v45 = v116;
          while (*(*&v45 + 8) - **&v45 != v44 || memcmp(**&v45, v43, v44))
          {
            *&v45 += 24;
            if (*&v45 == *&v42)
            {
              v45 = v42;
              break;
            }
          }
        }

        v61 = 0xAAAAAAAAAAAAAAABLL * ((*&v45 - *&v41) >> 3);
        v62 = v119;
        if (v61 == (v119 - v118) >> 5)
        {
          v64 = v119 - 2;
          v63 = v119[-2].n128_u64[0];
          if (v63)
          {
            v119[-2].n128_u64[1] = v63;
            operator delete(v63);
          }
        }

        else
        {
          v64 = &v118[2 * v61];
          if (&v64[2] != v119)
          {
            do
            {
              v65 = v64 + 2;
              sub_1000398F8(v64, v64 + 2);
              v64[1].n128_u32[2] = v64[3].n128_u32[2];
              v66 = v64 + 4;
              v64 += 2;
            }

            while (v66 != v62);
            v62 = v119;
            v64 = v65;
          }

          if (v62 != v64)
          {
            v67 = v62;
            do
            {
              v69 = v67[-2].n128_u64[0];
              v67 -= 2;
              v68 = v69;
              if (v69)
              {
                v62[-2].n128_u64[1] = v68;
                operator delete(v68);
              }

              v62 = v67;
            }

            while (v67 != v64);
          }
        }

        v119 = v64;
        if (__p)
        {
          *&v105 = __p;
          operator delete(__p);
        }

        __p = &v116;
        sub_100030C98(&__p);
      }

      v70 = v119[-2].n128_u64[0];
      v102 = v119 - 2;
      v71 = v119[-1].n128_f32[2];
      if (v70)
      {
        v119[-2].n128_u64[1] = v70;
        operator delete(v70);
      }

      v119 = v102;
      for (i = v118; i != v102; i += 2)
      {
        __p = 0;
        v105 = 0uLL;
        v73 = i->n128_u64[0];
        v74 = i->n128_i64[1];
        if (i->n128_u64[0] == v74)
        {
          v76 = 0.0;
        }

        else
        {
          v75 = 0;
          v76 = 0.0;
          do
          {
            v77 = *v73;
            v78 = *(*v73 + 32);
            if (v75 >= *(&v105 + 1))
            {
              v79 = 0xAAAAAAAAAAAAAAABLL * ((v75 - __p) >> 3);
              v80 = v79 + 1;
              if (v79 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_100003F50();
              }

              if (0x5555555555555556 * ((*(&v105 + 1) - __p) >> 3) > v80)
              {
                v80 = 0x5555555555555556 * ((*(&v105 + 1) - __p) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((*(&v105 + 1) - __p) >> 3) >= 0x555555555555555)
              {
                v81 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v81 = v80;
              }

              if (v81)
              {
                sub_100019068(&__p, v81);
              }

              v82 = 24 * v79;
              *v82 = *v77;
              *(v82 + 16) = *(v77 + 28);
              v75 = 24 * v79 + 24;
              v83 = (v82 - (v105 - __p));
              memcpy(v83, __p, v105 - __p);
              v84 = __p;
              __p = v83;
              v105 = v75;
              if (v84)
              {
                operator delete(v84);
              }
            }

            else
            {
              *v75 = *v77;
              *(v75 + 16) = *(v77 + 28);
              v75 += 24;
            }

            *&v105 = v75;
            v76 = v76 + (a8 * v78);
            ++v73;
          }

          while (v73 != v74);
        }

        *&v116 = v76 - v16;
        v85 = v135;
        if (v135 >= v136)
        {
          v86 = sub_10003994C(&v134, &__p, &v116);
        }

        else
        {
          *v135 = 0;
          *(v85 + 8) = 0;
          *(v85 + 16) = 0;
          sub_100018F9C(v85, __p, v105, 0xAAAAAAAAAAAAAAABLL * ((v105 - __p) >> 3));
          *(v85 + 24) = LODWORD(v116);
          v86 = (v85 + 32);
        }

        v135 = v86;
        if (__p)
        {
          *&v105 = __p;
          operator delete(__p);
        }
      }

      v87 = v134;
      v88 = v135;
      for (j = v95; v87 != v88; v87 += 32)
      {
        v89 = *(v87 + 24);
        if (v89 != 0.0)
        {
          v90 = v89 - v71;
          v91 = exp(v90);
          if (v90 <= -10.0)
          {
            v93 = v90 + v91 * -0.5 + v91 * v91 / 24.0 + pow(v91, 4.0) / -2880.0;
          }

          else
          {
            v92 = expm1(-v91);
            v93 = log(-v92);
          }

          v94 = v93;
          *(v87 + 24) = v94;
        }
      }

      __p = &v118;
      sub_100019148(&__p);
      v47 = v134;
      v46 = v135;
    }

    else
    {
      v47 = v134;
      v46 = v135;
      if (a4 > (&v135[-v134] >> 5))
      {
        v97 = a2;
        v99 = a3;
        v101 = v14;
        do
        {
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0;
          __p = off_1000AD168;
          v111 = off_1000AD2B0;
          v112 = 0u;
          v113 = 0u;
          v114 = 0;
          v115 = 1024;
          sub_1000338F4(&__p, a2, a3);
          sub_100035D68(v14, &__p);
          v118 = 0;
          v119 = 0;
          v120 = 0;
          sub_1000359F0(&__p, &v116, a8);
          v49 = v116;
          v48 = v117;
          v50 = 0.0;
          if (*&v116 != *&v117)
          {
            v51 = v119;
            do
            {
              v52 = **&v49;
              if (v51 >= v120)
              {
                v53 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v118) >> 3);
                v54 = v53 + 1;
                if (v53 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_100003F50();
                }

                if (0x5555555555555556 * ((v120 - v118) >> 3) > v54)
                {
                  v54 = 0x5555555555555556 * ((v120 - v118) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v120 - v118) >> 3) >= 0x555555555555555)
                {
                  v55 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v55 = v54;
                }

                if (v55)
                {
                  sub_100019068(&v118, v55);
                }

                v56 = 24 * v53;
                *v56 = *v52;
                *(v56 + 16) = v52[1].n128_u32[3];
                v51 = (24 * v53 + 24);
                v57 = (v56 - (v119 - v118));
                memcpy(v57, v118, v119 - v118);
                v58 = v118;
                v118 = v57;
                v119 = v51;
                v120 = 0;
                if (v58)
                {
                  operator delete(v58);
                }
              }

              else
              {
                *v51 = *v52;
                v51[1].n128_u32[0] = v52[1].n128_u32[3];
                v51 = (v51 + 24);
              }

              v119 = v51;
              v50 = v50 + (a8 * v52[2].n128_f32[0]);
              *&v49 += 8;
            }

            while (*&v49 != *&v48);
          }

          v103 = v50 - v16;
          v59 = v135;
          if (v135 >= v136)
          {
            v60 = sub_10003994C(&v134, &v118, &v103);
            v14 = v101;
          }

          else
          {
            *v135 = 0;
            *(v59 + 8) = 0;
            *(v59 + 16) = 0;
            sub_100018F9C(v59, v118, v119, 0xAAAAAAAAAAAAAAABLL * ((v119 - v118) >> 3));
            v14 = v101;
            *(v59 + 24) = v103;
            v60 = (v59 + 32);
          }

          a2 = v97;
          a3 = v99;
          v135 = v60;
          if (v116 != 0.0)
          {
            v117 = v116;
            operator delete(*&v116);
          }

          if (v118)
          {
            v119 = v118;
            operator delete(v118);
          }

          sub_1000335B8(&__p);
          v47 = v134;
          v46 = v135;
        }

        while (a4 > (&v135[-v134] >> 5));
      }
    }

    *j = v47;
    j[1] = v46;
    j[2] = v136;
    j = &v134;
    goto LABEL_120;
  }

  if (sub_100048804() <= 2)
  {
    LOBYTE(__p) = 0;
    v30 = sub_1000192F4(&std::cerr, "unigram_model.cc", 16);
    sub_1000192F4(v30, "(", 1);
    v31 = std::ostream::operator<<();
    v32 = sub_1000192F4(v31, ") ", 2);
    v33 = sub_1000192F4(v32, "LOG(", 4);
    v34 = sub_1000192F4(v33, "ERROR", 5);
    v35 = sub_1000192F4(v34, ") ", 2);
    sub_1000192F4(v35, "include_best not supported for wor false", 40);
    sub_1000179E8(&__p);
  }

LABEL_120:
  *j = 0;
  j[1] = 0;
  j[2] = 0;
  if (v121[0])
  {
    v121[1] = v121[0];
    operator delete(v121[0]);
  }

  sub_1000335B8(&v122);
  v122 = &v134;
  sub_100019148(&v122);
}

void sub_10003821C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46)
{
  if (__p)
  {
    operator delete(__p);
  }

  v49 = v46[22];
  if (v49)
  {
    v46[23] = v49;
    operator delete(v49);
  }

  v50 = v46[25];
  if (v50)
  {
    v46[26] = v50;
    operator delete(v50);
  }

  sub_1000335B8(&a46);
  a46 = (v47 - 160);
  sub_100019148(&a46);
  _Unwind_Resume(a1);
}

float sub_10003836C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, float a4)
{
  v8 = off_1000AD168;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = off_1000AD2B0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v19 = 1024;
  sub_1000338F4(&v8, a2, a3);
  sub_100035D68(a1, &v8);
  v6 = sub_1000344EC(&v8, a4);
  sub_1000335B8(&v8);
  return v6;
}

void sub_10003842C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000335B8(va);
  _Unwind_Resume(a1);
}

BOOL sub_100038440(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  strcpy(__s, " ");
  v10 = strlen(__s);
  sub_100030444(&v43, a2, a3, __s, v10, 0);
  v46 = 0;
  v47 = 0;
  __p = 0;
  sub_100038B74(&__p, v43, v44, (v44 - v43) >> 4);
  v11 = __p;
  v12 = v46;
  if (__p == v46)
  {
    v14 = 0.0;
    if (__p)
    {
LABEL_11:
      v46 = v11;
      operator delete(v11);
    }
  }

  else
  {
    v13 = *(a1 + 104) + -10.0;
    v14 = 0.0;
    do
    {
      v15 = v11[1];
      v16 = (*(*a1 + 112))(a1, *v11, v15);
      if (v16 == *(a1 + 88))
      {
        v14 = v13 + v14;
      }

      else
      {
        if ((*(**(a1 + 8) + 136))(*(a1 + 8), v16))
        {
          v17 = (*(a1 + 108) * v15) + -0.1;
        }

        else
        {
          v17 = (*(**(a1 + 8) + 96))(*(a1 + 8), v16);
        }

        v14 = v17 + v14;
      }

      v11 += 2;
    }

    while (v11 != v12);
    v11 = __p;
    if (__p)
    {
      goto LABEL_11;
    }
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  strcpy(__s, " ");
  v18 = strlen(__s);
  sub_100030444(&v43, a4, a5, __s, v18, 0);
  v41 = 0;
  v42 = 0;
  v40 = 0;
  sub_100038B74(&v40, v43, v44, (v44 - v43) >> 4);
  v19 = v40;
  v20 = v41;
  if (v40 != v41)
  {
    v21 = *(a1 + 104) + -10.0;
    v22 = 0.0;
    do
    {
      v23 = v19[1];
      v24 = (*(*a1 + 112))(a1, *v19, v23);
      if (v24 == *(a1 + 88))
      {
        v22 = v21 + v22;
      }

      else
      {
        if ((*(**(a1 + 8) + 136))(*(a1 + 8), v24))
        {
          v25 = (*(a1 + 108) * v23) + -0.1;
        }

        else
        {
          v25 = (*(**(a1 + 8) + 96))(*(a1 + 8), v24);
        }

        v22 = v25 + v22;
      }

      v19 += 2;
    }

    while (v19 != v20);
    v19 = v40;
    if (!v40)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v22 = 0.0;
  if (v40)
  {
LABEL_24:
    v41 = v19;
    operator delete(v19);
  }

LABEL_25:
  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  v26 = vabds_f32(v14, v22);
  if (v26 > 0.0000001 && sub_100048804() <= 1)
  {
    LOBYTE(v43) = 0;
    v27 = sub_1000192F4(&std::cerr, "unigram_model.cc", 16);
    sub_1000192F4(v27, "(", 1);
    v28 = std::ostream::operator<<();
    v29 = sub_1000192F4(v28, ") ", 2);
    v30 = sub_1000192F4(v29, "LOG(", 4);
    v31 = sub_1000192F4(v30, "WARNING", 7);
    v32 = sub_1000192F4(v31, ") ", 2);
    v33 = sub_1000192F4(v32, "Two sentence piece sequences are not equivalent! Left: ", 55);
    v34 = sub_1000192F4(v33, a2, a3);
    sub_1000192F4(v34, ", Score: ", 9);
    v35 = std::ostream::operator<<();
    v36 = sub_1000192F4(v35, ". Right: ", 9);
    v37 = sub_1000192F4(v36, a4, a5);
    sub_1000192F4(v37, ", Score: ", 9);
    v38 = std::ostream::operator<<();
    sub_1000192F4(v38, ".", 1);
    sub_1000179E8(&v43);
  }

  return v26 <= 0.0000001;
}

void sub_1000388A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100038904(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_10001679C(a1, &v13);
  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(p_p->__r_.__value_.__l.__data_) = *(a1 + 104);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v5, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  memset(&__p, 0, sizeof(__p));
  std::string::resize(&__p, 4uLL, 0);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p.__r_.__value_.__r.__words[0];
  }

  LODWORD(v7->__r_.__value_.__l.__data_) = *(a1 + 108);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v13;
  }

  else
  {
    v10 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v13.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v10, v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_100038A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100038ABC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100038B38(result, a4);
  }

  return result;
}

void sub_100038B1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100038B38(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100004A84(a1, a2);
  }

  sub_100003F50();
}

uint64_t sub_100038B74(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10003077C(result, a4);
  }

  return result;
}

void sub_100038BD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100038BF0(void *a1)
{
  sub_100038C28(a1);

  operator delete();
}

void *sub_100038C28(void *a1)
{
  *a1 = off_1000AD2B0;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        operator delete[]();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100038CBC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100003F50();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_100038E28(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_1000322CC(v18);
  }
}

void sub_100038E28(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100003E64();
}

void sub_100038E80(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_100003F50();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_100003E64();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_100038F80(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100039008(result, a4);
  }

  return result;
}

void sub_100038FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100019148(&a9);
  _Unwind_Resume(a1);
}

void sub_100039008(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_100039044(a1, a2);
  }

  sub_100003F50();
}

void sub_100039044(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100003E64();
}

uint64_t sub_10003908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      sub_100038ABC(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_100039148(v8);
  return v4;
}

uint64_t sub_100039148(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000190F8(a1);
  }

  return a1;
}

void sub_100039180(void *a1)
{
  sub_10003595C(a1);

  operator delete();
}

uint64_t sub_1000391B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = (result + 8 * v3);
    v5 = *v4;
    v8 = *(a2 - 8);
    v6 = (a2 - 8);
    v7 = v8;
    v9 = *(v8 + 16);
    if (*(*v4 + 16) < v9)
    {
      do
      {
        v10 = v4;
        *v6 = v5;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = (result + 8 * v3);
        v5 = *v4;
        v6 = v10;
      }

      while (*(*v4 + 16) < v9);
      *v10 = v7;
    }
  }

  return result;
}

uint64_t sub_100039214(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (a2 <= (v5 - v4) >> 5)
  {
    if (a2)
    {
      v11 = 32 * a2;
      v12 = v4 + 32 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 24) = 0;
        *(v4 + 16) = 0;
        v4 += 32;
        v11 -= 32;
      }

      while (v11);
      v4 = v12;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      sub_100003F50();
    }

    v8 = v6 >> 5;
    v9 = v5 - *result;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v21[4] = result;
    if (v10)
    {
      sub_100039044(result, v10);
    }

    v13 = 32 * v8;
    v14 = 32 * a2;
    v15 = 32 * v8;
    v16 = 32 * v8 + 32 * a2;
    do
    {
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 24) = 0;
      *(v15 + 16) = 0;
      v15 += 32;
      v14 -= 32;
    }

    while (v14);
    v17 = *(result + 8) - *result;
    v18 = v13 - v17;
    memcpy((v13 - v17), *result, v17);
    v19 = *v3;
    *v3 = v18;
    v3[1] = v16;
    v20 = v3[2];
    v3[2] = 0;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    return sub_1000325D0(v21);
  }

  return result;
}

void *sub_10003933C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000329CC(result, a2);
  }

  return result;
}

void sub_1000393F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_100039414(uint64_t a1, uint64_t *a2, float *a3)
{
  v5 = *(a1 + 8);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  sub_100018F9C(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  result = *a3;
  *(v5 + 24) = *a3;
  *(a1 + 8) = v5 + 32;
  return result;
}

char *sub_100039488(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_100003F50();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_100018E8C(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_100018F9C(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1000325D0(&v17);
  return v11;
}

void sub_10003959C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000325D0(va);
  _Unwind_Resume(a1);
}

char *sub_1000395B0(uint64_t a1, uint64_t *a2, double *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_100003F50();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v22 = a1;
  if (v9)
  {
    sub_100018E8C(a1, v9);
  }

  v10 = 32 * v3;
  v18 = 0;
  v19 = v10;
  v20 = v10;
  v21 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_100018F9C(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v11 = *a3;
  *(v10 + 24) = v11;
  v12 = v20 + 32;
  v13 = *(a1 + 8) - *a1;
  v14 = &v19[-v13];
  memcpy(&v19[-v13], *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v21;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  sub_1000325D0(&v18);
  return v12;
}

void sub_1000396C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000325D0(va);
  _Unwind_Resume(a1);
}

void *sub_1000396DC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100039780(result, a2);
  }

  return result;
}

void sub_100039780(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100038E28(a1, a2);
  }

  sub_100003F50();
}

void *sub_1000397CC(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100038B38(v6, v10);
    }

    sub_100003F50();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

__n128 sub_1000398F8(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

char *sub_10003994C(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_100003F50();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v21 = a1;
  if (v9)
  {
    sub_100018E8C(a1, v9);
  }

  v10 = 32 * v3;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  v20 = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  sub_100018F9C(v10, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(v10 + 24) = *a3;
  v11 = v19 + 32;
  v12 = *(a1 + 8) - *a1;
  v13 = &v18[-v12];
  memcpy(&v18[-v12], *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v20;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1000325D0(&v17);
  return v11;
}

void sub_100039A60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000325D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100039A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000362D0(a1);
  *v4 = &off_1000AD310;
  v4[1] = a2 + 16;
  sub_1000159B4(v4);
  return a1;
}

void sub_100039AE0(void *a1)
{
  sub_100014854(a1);

  operator delete();
}

void sub_100039B18(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*a1 + 16))(&v21);
  if (v21)
  {
    sub_10004AF1C(&v21);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  sub_10004AF1C(&v21);
  if (!a3)
  {
    goto LABEL_3;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  do
  {
    v8 = sub_10001E3C0(a1[2], a2, a3, 0);
    v9 = (*(*a1 + 112))(a1, a2, v8);
    v11 = *(a4 + 8);
    v10 = *(a4 + 16);
    if (v11 >= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a4) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100003F50();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a4) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        sub_100019068(a4, v16);
      }

      v17 = 24 * v13;
      *v17 = a2;
      *(v17 + 8) = v8;
      *(v17 + 16) = v9;
      v12 = 24 * v13 + 24;
      v18 = *(a4 + 8) - *a4;
      v19 = v17 - v18;
      memcpy((v17 - v18), *a4, v18);
      v20 = *a4;
      *a4 = v19;
      *(a4 + 8) = v12;
      *(a4 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v11 = a2;
      *(v11 + 8) = v8;
      v12 = v11 + 24;
      *(v11 + 16) = v9;
    }

    *(a4 + 8) = v12;
    a2 += v8;
    a3 -= v8;
  }

  while (a3);
}

void sub_100039CF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100039D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000362D0(a1);
  *v4 = &off_1000AD428;
  v4[1] = a2 + 16;
  sub_1000159B4(v4);
  return a1;
}

void sub_100039D84(void *a1)
{
  sub_100014854(a1);

  operator delete();
}

void sub_100039DBC(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*a1 + 16))(&v22);
  if (v22)
  {
    sub_10004AF1C(&v22);
LABEL_3:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  sub_10004AF1C(&v22);
  if (!a3)
  {
    goto LABEL_3;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_100016ADC(a2, a3, 0, 0, &v22);
  v8 = v22;
  v9 = v23;
  if (v22 != v23)
  {
    do
    {
      v10 = (*(*a1 + 112))(a1, *v8, v8[1]);
      v12 = *(a4 + 8);
      v11 = *(a4 + 16);
      if (v12 >= v11)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a4) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_100003F50();
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a4) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          sub_100019068(a4, v17);
        }

        v18 = 24 * v14;
        *v18 = *v8;
        *(v18 + 16) = v10;
        v13 = 24 * v14 + 24;
        v19 = *(a4 + 8) - *a4;
        v20 = v18 - v19;
        memcpy((v18 - v19), *a4, v19);
        v21 = *a4;
        *a4 = v20;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v12 = *v8;
        *(v12 + 16) = v10;
        v13 = v12 + 24;
      }

      *(a4 + 8) = v13;
      v8 += 2;
    }

    while (v8 != v9);
    v8 = v22;
  }

  if (v8)
  {
    v23 = v8;
    operator delete(v8);
  }
}

void sub_100039FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100039FE4()
{
  sub_10004F988(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc");
  sub_10003C0CC(&unk_1000B66E8, 0);

  sub_10006CFB0(sub_100063CBC, &unk_1000B66E8);
}

void sub_10003A054()
{
  sub_10004F988(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc");
  sub_10003B300(&unk_1000B6690, 0);

  sub_10006CFB0(sub_100063CBC, &unk_1000B6690);
}

void sub_10003A0C4()
{
  sub_10004F988(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc");
  sub_10003A134(&unk_1000B6640, 0);

  sub_10006CFB0(sub_100063CBC, &unk_1000B6640);
}

uint64_t sub_10003A134(uint64_t a1, uint64_t a2)
{
  *a1 = off_1000AD540;
  *(a1 + 8) = a2;
  sub_100051448(a1 + 16, a2);
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_1000B57B8, memory_order_acquire))
  {
    sub_10006967C(dword_1000B57B8);
  }

  *(a1 + 48) = &qword_1000B6A48;
  *(a1 + 56) = &qword_1000B6A48;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_10003A1C8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_1000AD540;
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = sub_10003CF68((a1 + 8));
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v8 >= 0)
    {
      v9 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v8 >= 0)
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v7, v9, v10);
  }

  sub_10008D64C(v5, a2 + 16);
  *(a1 + 48) = &qword_1000B6A48;
  v11 = *(a2 + 40);
  if (v11)
  {
    v12 = *v4;
    if (*v4)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 40);
  }

  *(a1 + 56) = &qword_1000B6A48;
  if ((v11 & 2) != 0)
  {
    v13 = *v4;
    if (*v4)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v13);
  }

  v14 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v14;
  return a1;
}

uint64_t sub_10003A30C(uint64_t a1)
{
  sub_10003A348(a1);
  sub_10003A468((a1 + 8));
  sub_100051530(a1 + 16);
  return a1;
}

uint64_t *sub_10003A348(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 140);
    v3 = sub_10004FD04(v10, "CHECK failed: GetArena() == nullptr: ");
    sub_10004FE40(&v9, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
  }

LABEL_4:
  result = (a1 + 48);
  if (*(a1 + 48) != &qword_1000B6A48)
  {
    v5 = sub_10003CD54(result);
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  v7 = *(a1 + 56);
  v6 = (a1 + 56);
  if (v7 != &qword_1000B6A48)
  {
    v8 = sub_10003CD54(v6);
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  return result;
}

void sub_10003A450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10003A468(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (!*(v1 & 0xFFFFFFFFFFFFFFFELL) && v2 != 0)
    {
      if (*(v2 + 31) < 0)
      {
        operator delete(*(v2 + 8));
      }

      operator delete();
    }
  }

  return result;
}

void sub_10003A4E4(uint64_t a1)
{
  sub_10003A30C(a1);

  operator delete();
}

void *sub_10003A528()
{
  if (atomic_load_explicit(dword_1000B57B8, memory_order_acquire))
  {
    sub_10006967C(dword_1000B57B8);
  }

  return &unk_1000B6640;
}

unsigned __int8 *sub_10003A568(uint64_t a1)
{
  result = sub_100059758((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v3 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
    }

    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v5 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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
  }

LABEL_11:
  if ((v3 & 0x1C) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 40) = 0;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 31) < 0)
    {
      **(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    else
    {
      *(v7 + 8) = 0;
      *(v7 + 31) = 0;
    }
  }

  return result;
}

uint64_t sub_10003A638(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v36 = a2;
  v5 = 0;
  if ((sub_10003CE28(a3, v36, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (*v36 + 1);
      v8 = **v36;
      if ((**v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      v26 = sub_10006E2E8(*v36, v9 - 128);
      *v36 = v26;
      if (!v26)
      {
        goto LABEL_62;
      }

      v7 = v26;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 40) |= 1u;
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = (a1 + 48);
LABEL_39:
            v23 = sub_10004C9D8(v19, v18);
            v24 = sub_10006E3A8(v23, *v36, a3);
LABEL_40:
            *v36 = v24;
            if (!v24)
            {
              goto LABEL_62;
            }

            goto LABEL_41;
          }

LABEL_43:
          if (v8)
          {
            v25 = (v8 & 7) == 4;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          if (v8 < 0x640)
          {
            v28 = *(a1 + 8);
            if (v28)
            {
              v29 = (v28 & 0xFFFFFFFFFFFFFFFELL) + 8;
            }

            else
            {
              v29 = sub_10003CF68((a1 + 8));
              v7 = *v36;
            }

            v24 = sub_10006E88C(v8, v29, v7, a3);
          }

          else
          {
            v24 = sub_10005C01C((a1 + 16), v8, v7, &unk_1000B6640, (a1 + 8), a3);
          }

          goto LABEL_40;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_43;
        }

        v5 |= 4u;
        v15 = v7 + 1;
        v16 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v17 = *v15;
        v16 = v16 + (v17 << 7) - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v15 = v7 + 2;
LABEL_25:
          *v36 = v15;
          *(a1 + 64) = v16;
          goto LABEL_41;
        }

        v34 = sub_10006E234(v7, v16);
        *v36 = v34;
        *(a1 + 64) = v35;
        if (!v34)
        {
LABEL_62:
          *v36 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 40) |= 2u;
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = (a1 + 56);
            goto LABEL_39;
          }

          goto LABEL_43;
        }

        if (v10 == 4)
        {
          if (v8 != 32)
          {
            goto LABEL_43;
          }

          v5 |= 8u;
          v20 = v7 + 1;
          v21 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          v22 = *v20;
          v21 = v21 + (v22 << 7) - 128;
          if ((v22 & 0x80000000) == 0)
          {
            v20 = v7 + 2;
LABEL_34:
            *v36 = v20;
            *(a1 + 68) = v21;
            goto LABEL_41;
          }

          v30 = sub_10006E234(v7, v21);
          *v36 = v30;
          *(a1 + 68) = v31;
          if (!v30)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (v10 != 5 || v8 != 40)
          {
            goto LABEL_43;
          }

          v5 |= 0x10u;
          v11 = v7 + 1;
          v12 = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          v13 = *v11;
          v12 = v12 + (v13 << 7) - 128;
          if ((v13 & 0x80000000) == 0)
          {
            v11 = v7 + 2;
LABEL_15:
            *v36 = v11;
            *(a1 + 72) = v12;
            goto LABEL_41;
          }

          v32 = sub_10006E234(v7, v12);
          *v36 = v32;
          *(a1 + 72) = v33;
          if (!v32)
          {
            goto LABEL_62;
          }
        }
      }

LABEL_41:
      if (sub_10003CE28(a3, v36, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (*v36 + 2);
LABEL_6:
    *v36 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return *v36;
}

char *sub_10003A948(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_10004F000(a3, v4);
    }

    v8 = *(a1 + 64);
    *v4 = 16;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v13 = v10 >> 7;
          ++v4;
          v14 = v10 >> 14;
          v10 >>= 7;
        }

        while (v14);
        *(v4 - 1) = v13;
        if ((v6 & 2) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v4[2] = v10;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  v4 = sub_10003ABFC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v6 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_27:
  v4 = sub_10003ABFC(a3, 3, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_6;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = sub_10004F000(a3, v4);
  }

  v15 = *(a1 + 68);
  *v4 = 32;
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v16 = v15 >> 7;
    if (v15 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v4;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v4 - 1) = v17;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v4[2] = v16;
      v4 += 3;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    v4[1] = v15;
    v4 += 2;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_6:
  if (*a3 <= v4)
  {
    v4 = sub_10004F000(a3, v4);
  }

  v7 = *(a1 + 72);
  *v4 = 40;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++v4;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
    }

    else
    {
      v4[2] = v9;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_39:
  v19 = sub_10005D814(a1 + 16, 200, 0x20000000, v4, a3);
  v20 = v19;
  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v20;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v23 + 31);
  if (v24 < 0)
  {
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
  }

  else
  {
    v25 = (v23 + 8);
  }

  if ((*a3 - v19) >= v24)
  {
    v26 = v24;
    memcpy(v19, v25, v24);
    v20 += v26;
    return v20;
  }

  return sub_10004F118(a3, v25, v24, v19);
}

char *sub_10003ABFC(unint64_t *a1, int a2, const void **a3, char *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return &v14[v4];
      }
    }

    else if ((v5 - a4 + 14) >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return sub_10004F360(a1, a2, a3, a4);
}

uint64_t sub_10003AD28(uint64_t a1)
{
  result = sub_1000605A4(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    result += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      result += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 8) == 0)
      {
LABEL_6:
        if ((v3 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  v10 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  result += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  result += ((9 * (__clz(*(a1 + 68) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) != 0)
  {
LABEL_7:
    result += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v4 = *(a1 + 8);
  if (v4)
  {
    v11 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    result += v12;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_10003AE94(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  {
    sub_10003D858();
  }

  sub_10003AF1C(a1, lpsrc);
}

void sub_10003AF1C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 375);
    v4 = sub_10004FD04(v19, "CHECK failed: (&from) != (this): ");
    sub_10004FE40(&v18, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v19);
  }

  sub_10008D64C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_10003CF68((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 40);
  if ((v13 & 0x1F) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_10004C990((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_28;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    v16 = *(a2 + 56);
    *(a1 + 40) |= 2u;
    v17 = *(a1 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990((a1 + 56), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v13 & 4) == 0)
    {
LABEL_17:
      if ((v13 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(a1 + 64) = *(a2 + 64);
    if ((v13 & 8) == 0)
    {
LABEL_18:
      if ((v13 & 0x10) == 0)
      {
LABEL_20:
        *(a1 + 40) |= v13;
        return;
      }

LABEL_19:
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_20;
    }

LABEL_29:
    *(a1 + 68) = *(a2 + 68);
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }
}

void sub_10003B0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10003B0B8(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_10003A568(a1);

    sub_10003AF1C(a1, a2);
  }
}

uint64_t *sub_10003B10C(uint64_t a1, uint64_t a2)
{
  sub_10005A6F8(a1 + 16, a2 + 16);
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v9 = sub_10003CF68((a2 + 8));
      v5 = *v4;
      if (*v4)
      {
        goto LABEL_6;
      }

LABEL_21:
      v10 = sub_10003CF68((a1 + 8));
      goto LABEL_7;
    }
  }

  else if ((v6 & 1) == 0)
  {
    v7 = 0;
    v8 = *(a1 + 40);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = v8;
    goto LABEL_9;
  }

  v9 = (v6 & 0xFFFFFFFFFFFFFFFELL) + 8;
  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v10 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
LABEL_7:
  v11 = *(v10 + 16);
  v12 = *v10;
  v13 = *(v9 + 16);
  *v10 = *v9;
  *(v10 + 16) = v13;
  *v9 = v12;
  *(v9 + 16) = v11;
  v5 = *(a1 + 8);
  LODWORD(v11) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v11;
  if (v5)
  {
    v14 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    v7 = 1;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_9:
  v14 = v5;
LABEL_10:
  result = (a1 + 48);
  if (*(a1 + 48) != &qword_1000B6A48 || *(a2 + 48) != &qword_1000B6A48)
  {
    v16 = sub_10004C9D8(result, v14);
    result = sub_10004C9D8((a2 + 48), v14);
    v17 = v16[2];
    v18 = *v16;
    v19 = result[2];
    *v16 = *result;
    v16[2] = v19;
    *result = v18;
    result[2] = v17;
    v5 = *v4;
    v7 = *v4 & 1;
  }

  if (v7)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a1 + 56) != &qword_1000B6A48 || *(a2 + 56) != &qword_1000B6A48)
  {
    v20 = sub_10004C9D8((a1 + 56), v5);
    result = sub_10004C9D8((a2 + 56), v5);
    v21 = v20[2];
    v22 = *v20;
    v23 = result[2];
    *v20 = *result;
    v20[2] = v23;
    *result = v22;
    result[2] = v21;
  }

  v24 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v24;
  LODWORD(v24) = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v24;
  return result;
}

uint64_t sub_10003B300(uint64_t a1, uint64_t a2)
{
  *a1 = off_1000AD5C0;
  *(a1 + 8) = a2;
  sub_100051448(a1 + 16, a2);
  *(a1 + 48) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_1000B5798, memory_order_acquire))
  {
    sub_10006967C(dword_1000B5798);
  }

  *(a1 + 72) = &qword_1000B6A48;
  *(a1 + 80) = 0;
  return a1;
}

void sub_10003B390(_Unwind_Exception *a1)
{
  sub_10003D1A4(v2);
  sub_100051530(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_10003B3B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = off_1000AD5C0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 68) = 0;
  *(a1 + 52) = 0u;
  *(a1 + 44) = 0;
  sub_10003D354(a1 + 48, a2 + 48);
  v5 = *(a2 + 8);
  if (v5)
  {
    if (*v4)
    {
      v6 = ((*v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v6 = sub_10003CF68(v4);
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 31);
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 16);
    if (v7 >= 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v7 >= 0)
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v6, v9, v10);
  }

  sub_10008D64C(a1 + 16, a2 + 16);
  *(a1 + 72) = &qword_1000B6A48;
  if (*(a2 + 40))
  {
    v11 = *v4;
    if (*v4)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

void sub_10003B4C4(_Unwind_Exception *a1)
{
  sub_10003D264((v1 + 48));
  sub_100051530(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_10003B4F4(uint64_t a1)
{
  sub_10003B538(a1);
  sub_10003A468((a1 + 8));
  sub_10003D1A4((a1 + 48));
  sub_100051530(a1 + 16);
  return a1;
}

uint64_t sub_10003B538(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 486);
    v3 = sub_10004FD04(v8, "CHECK failed: GetArena() == nullptr: ");
    sub_10004FE40(&v7, &v3->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v8);
  }

LABEL_4:
  v5 = *(v1 + 72);
  v4 = (v1 + 72);
  if (v5 != &qword_1000B6A48)
  {
    v6 = sub_10003CD54(v4);
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete();
  }

  return result;
}

void sub_10003B600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10003B61C(uint64_t a1)
{
  sub_10003B4F4(a1);

  operator delete();
}

void *sub_10003B654()
{
  if (atomic_load_explicit(dword_1000B5798, memory_order_acquire))
  {
    sub_10006967C(dword_1000B5798);
  }

  return &unk_1000B6690;
}

unsigned __int8 *sub_10003B694(uint64_t a1)
{
  sub_100059758((a1 + 16));
  result = sub_10003D044((a1 + 48));
  if (*(a1 + 40))
  {
    v3 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

  *(a1 + 80) = 0;
  *(a1 + 40) = 0;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 31) < 0)
    {
      **(v5 + 8) = 0;
      *(v5 + 16) = 0;
    }

    else
    {
      *(v5 + 8) = 0;
      *(v5 + 31) = 0;
    }
  }

  return result;
}

uint64_t sub_10003B728(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  v5 = 0;
  if ((sub_10003CE28(a3, v28, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (*v28 + 1);
      v8 = **v28;
      if ((**v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      v24 = sub_10006E2E8(*v28, v9 - 128);
      *v28 = v24;
      if (!v24)
      {
        goto LABEL_48;
      }

      v7 = v24;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 29)
        {
          v5 |= 2u;
          *(a1 + 80) = *v7;
          *v28 = v7 + 1;
          goto LABEL_44;
        }

        goto LABEL_13;
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          v14 = v7 - 1;
          while (1)
          {
            v15 = v14 + 1;
            *v28 = v14 + 1;
            v16 = *(a1 + 64);
            if (!v16)
            {
              break;
            }

            v21 = *(a1 + 56);
            v17 = *v16;
            if (v21 < *v16)
            {
              *(a1 + 56) = v21 + 1;
              v18 = *&v16[2 * v21 + 2];
              goto LABEL_27;
            }

            if (v17 == *(a1 + 60))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v16 = v17 + 1;
            v18 = sub_10003CA94(*(a1 + 48));
            v19 = *(a1 + 56);
            v20 = *(a1 + 64) + 8 * v19;
            *(a1 + 56) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = *v28;
LABEL_27:
            v14 = sub_10008BF44(a3, v18, v15);
            *v28 = v14;
            if (!v14)
            {
              goto LABEL_48;
            }

            if (*a3 <= v14 || *v14 != 18)
            {
              goto LABEL_44;
            }
          }

          v17 = *(a1 + 60);
LABEL_23:
          sub_10007BCC0(a1 + 48, v17 + 1);
          v16 = *(a1 + 64);
          v17 = *v16;
          goto LABEL_24;
        }

LABEL_13:
        if (v8)
        {
          v12 = (v8 & 7) == 4;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          a3[10].i32[0] = v8 - 1;
          goto LABEL_2;
        }

        if (v8 < 0x640)
        {
          v26 = *(a1 + 8);
          if (v26)
          {
            v27 = (v26 & 0xFFFFFFFFFFFFFFFELL) + 8;
          }

          else
          {
            v27 = sub_10003CF68((a1 + 8));
            v7 = *v28;
          }

          v13 = sub_10006E88C(v8, v27, v7, a3);
        }

        else
        {
          v13 = sub_10005C01C((a1 + 16), v8, v7, &unk_1000B6690, (a1 + 8), a3);
        }

        goto LABEL_43;
      }

      if (v10 != 1 || v8 != 10)
      {
        goto LABEL_13;
      }

      *(a1 + 40) |= 1u;
      v22 = *(a1 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = sub_10004C9D8((a1 + 72), v22);
      v13 = sub_10006E3A8(v23, *v28, a3);
LABEL_43:
      *v28 = v13;
      if (!v13)
      {
LABEL_48:
        *v28 = 0;
        goto LABEL_2;
      }

LABEL_44:
      if (sub_10003CE28(a3, v28, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (*v28 + 2);
LABEL_6:
    *v28 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return *v28;
}

char *sub_10003B9C0(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_10003ABFC(a3, 1, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_10004F000(a3, v4);
      }

      v9 = sub_10002FEAC(a1 + 48, i);
      *v4 = 18;
      v10 = *(v9 + 44);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
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
          v4[2] = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v10;
        v11 = v4 + 2;
      }

      v4 = sub_10003A948(v9, v11, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_10004F000(a3, v4);
    }

    v15 = *(a1 + 80);
    *v4 = 29;
    *(v4 + 1) = v15;
    v4 += 5;
  }

  v16 = sub_10005D814(a1 + 16, 200, 0x20000000, v4, a3);
  v17 = v16;
  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v17;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 31);
  if (v21 < 0)
  {
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
  }

  else
  {
    v22 = (v20 + 8);
  }

  if ((*a3 - v16) >= v21)
  {
    v23 = v21;
    memcpy(v16, v22, v21);
    v17 += v23;
    return v17;
  }

  return sub_10004F118(a3, v22, v21, v16);
}

uint64_t sub_10003BBAC(uint64_t a1)
{
  v2 = sub_1000605A4(a1 + 16);
  v3 = *(a1 + 56);
  v4 = v2 + v3;
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_10003AD28(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 40);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v11 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v10 & 2) != 0)
    {
      v4 += 5;
    }
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v4 += v17;
  }

  *(a1 + 44) = v4;
  return v4;
}

void sub_10003BCB0(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  {
    sub_10003D858();
  }

  sub_10003BD38(a1, lpsrc);
}

void sub_10003BD38(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 674);
    v4 = sub_10004FD04(v17, "CHECK failed: (&from) != (this): ");
    sub_10004FE40(&v16, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v17);
  }

  sub_10008D64C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_10003CF68((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_10003D354(a1 + 48, a2 + 48);
  v13 = *(a2 + 40);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 72);
      *(a1 + 40) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_10004C990((a1 + 72), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    }

    if ((v13 & 2) != 0)
    {
      *(a1 + 80) = *(a2 + 80);
    }

    *(a1 + 40) |= v13;
  }
}

void sub_10003BE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10003BE80(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_10003B694(a1);

    sub_10003BD38(a1, a2);
  }
}

uint64_t sub_10003BECC(uint64_t a1)
{
  result = sub_10005AABC(a1 + 16);
  if (result)
  {

    return sub_10003BF18(a1 + 48);
  }

  return result;
}

BOOL sub_10003BF18(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = sub_10002FEAC(a1, v2);
  }

  while ((sub_10005AABC(v5 + 16) & 1) != 0);
  return v3 < 1;
}

float sub_10003BF70(uint64_t a1, uint64_t a2)
{
  sub_10005A6F8(a1 + 16, a2 + 16);
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v7 = sub_10003CF68((a2 + 8));
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_5:
    v7 = (v6 & 0xFFFFFFFFFFFFFFFELL) + 8;
    if (v4)
    {
LABEL_6:
      v8 = (v4 & 0xFFFFFFFFFFFFFFFELL) + 8;
LABEL_7:
      v9 = *(v8 + 16);
      v10 = *v8;
      v11 = *(v7 + 16);
      *v8 = *v7;
      *(v8 + 16) = v11;
      *v7 = v10;
      *(v7 + 16) = v9;
      goto LABEL_8;
    }

LABEL_15:
    v8 = sub_10003CF68((a1 + 8));
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v12 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v12;
  sub_10003D500((a1 + 48), a2 + 48);
  v13 = *(a1 + 8);
  if (v13)
  {
    v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*(a1 + 72) != &qword_1000B6A48 || *(a2 + 72) != &qword_1000B6A48)
  {
    v14 = sub_10004C9D8((a1 + 72), v13);
    v15 = sub_10004C9D8((a2 + 72), v13);
    v16 = v14[2];
    v17 = *v14;
    v18 = v15[2];
    *v14 = *v15;
    v14[2] = v18;
    *v15 = v17;
    v15[2] = v16;
  }

  result = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = result;
  return result;
}

uint64_t sub_10003C0CC(uint64_t a1, uint64_t a2)
{
  *a1 = off_1000AD640;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_1000B5778, memory_order_acquire))
  {
    sub_10006967C(dword_1000B5778);
  }

  return a1;
}

uint64_t sub_10003C154(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = off_1000AD640;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_10003D6AC(a1 + 16, a2 + 16);
  *(a1 + 40) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    if (*v4)
    {
      v6 = ((*v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v6 = sub_10003CF68(v4);
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 31);
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 16);
    if (v7 >= 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v7 >= 0)
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v6, v9, v10);
  }

  return a1;
}

uint64_t sub_10003C234(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2)
  {
    if (!*(v2 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 755);
    v4 = sub_10004FD04(v7, "CHECK failed: GetArena() == nullptr: ");
    sub_10004FE40(&v6, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

LABEL_4:
  sub_10003A468(v3);
  sub_10003D5EC((a1 + 16));
  return a1;
}

void sub_10003C2CC(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  sub_10004BA50(a1);
}

void sub_10003C2F0(uint64_t a1)
{
  sub_10003C234(a1);

  operator delete();
}

void *sub_10003C330()
{
  if (atomic_load_explicit(dword_1000B5778, memory_order_acquire))
  {
    sub_10006967C(dword_1000B5778);
  }

  return &unk_1000B66E8;
}

unsigned __int8 *sub_10003C370(uint64_t a1)
{
  result = sub_10003D0F4((a1 + 16));
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 31) < 0)
    {
      **(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }

    else
    {
      *(v4 + 8) = 0;
      *(v4 + 31) = 0;
    }
  }

  return result;
}

char *sub_10003C3C4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  if ((sub_10003CE28(a3, &v22, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v22 + 1;
      v6 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      v19 = sub_10006E2E8(v22, v7 - 128);
      v22 = v19;
      if (!v19)
      {
        return 0;
      }

      v5 = v19;
      v6 = v20;
LABEL_6:
      if (v6 == 10)
      {
        v11 = v5 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          v22 = v11 + 1;
          v13 = *(a1 + 32);
          if (!v13)
          {
            break;
          }

          v18 = *(a1 + 24);
          v14 = *v13;
          if (v18 < *v13)
          {
            *(a1 + 24) = v18 + 1;
            v15 = *&v13[2 * v18 + 2];
            goto LABEL_23;
          }

          if (v14 == *(a1 + 28))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v13 = v14 + 1;
          v15 = sub_10003CB64(*(a1 + 16));
          v16 = *(a1 + 24);
          v17 = *(a1 + 32) + 8 * v16;
          *(a1 + 24) = v16 + 1;
          *(v17 + 8) = v15;
          v12 = v22;
LABEL_23:
          v11 = sub_10008C00C(a3, v15, v12);
          v22 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_14;
          }
        }

        v14 = *(a1 + 28);
LABEL_19:
        sub_10007BCC0(a1 + 16, v14 + 1);
        v13 = *(a1 + 32);
        v14 = *v13;
        goto LABEL_20;
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        a3[10].i32[0] = v6 - 1;
        return v22;
      }

      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + 8;
      }

      else
      {
        v10 = sub_10003CF68((a1 + 8));
        v5 = v22;
      }

      v22 = sub_10006E88C(v6, v10, v5, a3);
      if (!v22)
      {
        return 0;
      }

LABEL_14:
      if (sub_10003CE28(a3, &v22, a3[11].i32[1]))
      {
        return v22;
      }
    }

    v5 = v22 + 2;
LABEL_5:
    v22 = v5;
    goto LABEL_6;
  }

  return v22;
}

char *sub_10003C594(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_10004F000(a3, __dst);
      }

      v8 = sub_1000300A0(a1 + 16, i);
      *__dst = 10;
      v9 = *(v8 + 44);
      if (v9 > 0x7F)
      {
        __dst[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = __dst + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          __dst[2] = v11;
          v10 = __dst + 3;
        }
      }

      else
      {
        __dst[1] = v9;
        v10 = __dst + 2;
      }

      __dst = sub_10003B9C0(v8, v10, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return __dst;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if ((*a3 - __dst) >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return sub_10004F118(a3, v18, v17, __dst);
}

uint64_t sub_10003C6FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_10003BBAC(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 40) = v2;
  return v2;
}

void sub_10003C7A0(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  {
    sub_10003D858();
  }

  sub_10003C828(a1, lpsrc);
}

void sub_10003C828(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_10004FCEC(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 877);
    v4 = sub_10004FD04(v14, "CHECK failed: (&from) != (this): ");
    sub_10004FE40(&v13, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v14);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_10003CF68((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_10003D6AC(a1 + 16, a2 + 16);
}

void sub_10003C8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10003C90C(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_10003C370(a1);

    sub_10003C828(a1, a2);
  }
}

BOOL sub_10003C960(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = sub_1000300A0(a1, v2);
    if (!sub_10005AABC(v5 + 16))
    {
      break;
    }
  }

  while (sub_10003BF18(v5 + 48));
  return v3 < 1;
}

double sub_10003C9C8(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      v7 = sub_10003CF68((a2 + 8));
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_5:
    v7 = (v6 & 0xFFFFFFFFFFFFFFFELL) + 8;
    if (v4)
    {
LABEL_6:
      v8 = (v4 & 0xFFFFFFFFFFFFFFFELL) + 8;
LABEL_7:
      v9 = *(v8 + 16);
      v10 = *v8;
      v11 = *(v7 + 16);
      *v8 = *v7;
      *(v8 + 16) = v11;
      *v7 = v10;
      *(v7 + 16) = v9;
      goto LABEL_8;
    }

LABEL_12:
    v8 = sub_10003CF68(v5);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:

  *&result = sub_10003D500((a1 + 16), a2 + 16).n128_u64[0];
  return result;
}

uint64_t sub_10003CA94(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  v2 = sub_10004C500(a1, 80);
  sub_10003A134(v2, a1);
  return v2;
}

uint64_t sub_10003CB64(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  v2 = sub_10004C500(a1, 88);
  sub_10003B300(v2, a1);
  return v2;
}

uint64_t sub_10003CC34(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
  }

  v2 = sub_10004C500(a1, 48);
  sub_10003C0CC(v2, a1);
  return v2;
}

uint64_t sub_10003CD54(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arenastring.h", 363);
    v3 = sub_10004FD04(v6, "CHECK failed: !tagged_ptr_.IsTagged(): ");
    sub_10004FE40(&v5, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v6);
    result = *a1;
  }

  if (!result)
  {
    sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arenastring.h", 364);
    v4 = sub_10004FD04(v6, "CHECK failed: tagged_ptr_.UnsafeGet() != nullptr: ");
    sub_10004FE40(&v5, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v6);
    return *a1;
  }

  return result;
}

void sub_10003CE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10003CE28(uint64_t a1, char **a2, int a3)
{
  v6 = *a2;
  if (!*a2)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 209);
    v7 = sub_10004FD04(v13, "CHECK failed: *ptr: ");
    sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
    v6 = *a2;
  }

  if (v6 >= *a1)
  {
    v10 = v6 - *(a1 + 8);
    if (v10 >= 17)
    {
      sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 212);
      v11 = sub_10004FD04(v13, "CHECK failed: (overrun) <= (kSlopBytes): ");
      sub_10004FE40(&v12, &v11->__r_.__value_.__l.__data_);
      sub_10004FE48(v13);
    }

    if (*(a1 + 28) == v10)
    {
      if (v10 >= 1 && !*(a1 + 16))
      {
        *a2 = 0;
      }

      v8 = 1;
    }

    else
    {
      *a2 = sub_10006DBAC(a1, v10, a3);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_10003CF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10003CF68(unint64_t *a1)
{
  v2 = *a1;
  if ((*a1 & 1) == 0)
  {
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator new();
  }

  v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (*(v2 + 24))
  {
  }

  v3 = sub_10004BF84(v2, 0x20uLL, sub_10003D030);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *a1 = v3 | 1;
  *v3 = v2;
  return v3 + 8;
}

void sub_10003D030(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

unsigned __int8 *sub_10003D044(unsigned __int8 *result)
{
  v1 = *(result + 2);
  if ((v1 & 0x80000000) != 0)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_10004FD04(v7, "CHECK failed: (n) >= (0): ");
    sub_10004FE40(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_10004FE48(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      v4 = *v3++;
      result = sub_10003A568(v4);
      --v1;
    }

    while (v1);
    *(v2 + 2) = 0;
  }

  return result;
}

void sub_10003D0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_10003D0F4(unsigned __int8 *result)
{
  v1 = *(result + 2);
  if ((v1 & 0x80000000) != 0)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_10004FD04(v7, "CHECK failed: (n) >= (0): ");
    sub_10004FE40(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_10004FE48(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      v4 = *v3++;
      result = sub_10003B694(v4);
      --v1;
    }

    while (v1);
    *(v2 + 2) = 0;
  }

  return result;
}

void sub_10003D18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10003D1A4(uint64_t *a1)
{
  sub_10003D1E0(a1);

  return sub_10003D264(a1);
}

void sub_10003D1E0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_10003A30C(*v3);
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

uint64_t *sub_10003D264(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_10004BA64(v2);
  }

  return a1;
}

uint64_t sub_10003D298(uint64_t a1, int a2, unsigned int a3)
{
  if (a3 >= 0x7FFFFFF0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 128);
    v6 = sub_10004FD04(v11, "CHECK failed: limit >= 0 && limit <= INT_MAX - kSlopBytes: ");
    sub_10004FE40(&v10, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  v7 = *(a1 + 8);
  v8 = a2 - v7 + a3;
  *a1 = v7 + (v8 & (v8 >> 31));
  LODWORD(v7) = *(a1 + 28);
  *(a1 + 28) = v8;
  return (v7 - v8);
}

void sub_10003D33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10003D354(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_10004FD04(v11, "CHECK failed: (&other) != (this): ");
    sub_10004FE40(&v10, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_10007C9A8(a1, v5);
    sub_10003D440(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_10003D428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10003D440(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_10003D4F0(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_10003CA94(v18);
      sub_10003D4F0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

__n128 sub_10003D500(void *a1, uint64_t a2)
{
  if (a1 == a2)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2590);
    v4 = sub_10004FD04(v10, "CHECK failed: this != other: ");
    sub_10004FE40(&v9, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
  }

  if (*a1 != *a2)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2591);
    v5 = sub_10004FD04(v10, "CHECK failed: GetArena() == other->GetArena(): ");
    sub_10004FE40(&v9, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
  }

  v6 = a1[1];
  v7 = a1[2];
  result = *(a2 + 8);
  *(a1 + 1) = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

void sub_10003D5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10003D5EC(uint64_t *a1)
{
  sub_10003D628(a1);

  return sub_10003D264(a1);
}

void sub_10003D628(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_10003B4F4(*v3);
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

void sub_10003D6AC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_10004FD04(v11, "CHECK failed: (&other) != (this): ");
    sub_10004FE40(&v10, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_10007C9A8(a1, v5);
    sub_10003D798(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_10003D780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10003D798(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_10003D848(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_10003CB64(v18);
      sub_10003D848(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_10003D884()
{
  sub_10004F988(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_1000442C0(&unk_1000B6968, 0);

  sub_10006CFB0(sub_100063CBC, &unk_1000B6968);
}

void sub_10003D8F4()
{
  sub_10004F988(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_100043660(qword_1000B6928, 0);

  sub_10006CFB0(sub_100063CBC, qword_1000B6928);
}

void sub_10003D964()
{
  sub_10004F988(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_100040EE0(&unk_1000B6860, 0);

  sub_10006CFB0(sub_100063CBC, &unk_1000B6860);
}

void sub_10003D9D4()
{
  sub_10004F988(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_100042C50(&unk_1000B68E0, 0);

  sub_10006CFB0(sub_100063CBC, &unk_1000B68E0);
}

void sub_10003DA44()
{
  sub_10004F988(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_100042140(qword_1000B68B8, 0);

  sub_10006CFB0(sub_100063CBC, qword_1000B68B8);
}

void sub_10003DAB4()
{
  sub_10004F988(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_10003DDCC(&unk_1000B6718, 0);

  sub_10006CFB0(sub_100063CBC, &unk_1000B6718);
}

uint64_t *sub_10003DB34(int a1)
{
  if ((atomic_load_explicit(&qword_1000B6480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B6480))
  {
    byte_1000B6478 = sub_100063C3C(&off_1000ADCB0, dword_100091150, 4, byte_1000B6488);
    __cxa_guard_release(&qword_1000B6480);
  }

  v2 = sub_100063BB8(&off_1000ADCB0, dword_100091150, 4uLL, a1);
  if (v2 != -1)
  {
    return &byte_1000B6488[24 * v2];
  }

  if ((atomic_load_explicit(byte_1000B6A60, memory_order_acquire) & 1) == 0)
  {
    sub_100063CF4();
  }

  return &qword_1000B6A48;
}

uint64_t sub_10003DC1C(uint64_t *a1, _DWORD *a2)
{
  v5 = 0;
  sub_1000468AC(v4, a1);
  result = sub_100063ACC(&off_1000ADCB0, 4uLL, v4[0], v4[1], &v5);
  if (result)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t *sub_10003DC88(int a1)
{
  if ((atomic_load_explicit(&qword_1000B64F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B64F0))
  {
    byte_1000B64E8 = sub_100063C3C(&off_1000ADD10, dword_100091160, 6, byte_1000B64F8);
    __cxa_guard_release(&qword_1000B64F0);
  }

  v2 = sub_100063BB8(&off_1000ADD10, dword_100091160, 6uLL, a1);
  if (v2 != -1)
  {
    return &byte_1000B64F8[24 * v2];
  }

  if ((atomic_load_explicit(byte_1000B6A60, memory_order_acquire) & 1) == 0)
  {
    sub_100063CF4();
  }

  return &qword_1000B6A48;
}

uint64_t sub_10003DD70(uint64_t *a1, _DWORD *a2)
{
  v5 = 0;
  sub_1000468AC(v4, a1);
  result = sub_100063ACC(&off_1000ADD10, 6uLL, v4[0], v4[1], &v5);
  if (result)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10003DDCC(uint64_t a1, uint64_t a2)
{
  *a1 = off_1000AD730;
  *(a1 + 8) = a2;
  sub_100051448(a1 + 16, a2);
  *(a1 + 128) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = a2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (atomic_load_explicit(dword_1000B5870, memory_order_acquire))
  {
    sub_10006967C(dword_1000B5870);
  }

  *(a1 + 152) = &qword_1000B6A48;
  *(a1 + 160) = &qword_1000B6A48;
  *(a1 + 168) = &qword_1000B6A48;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = &qword_1000B6A48;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0x1F4000000001;
  *(a1 + 280) = 0xF42403F7FDF3BLL;
  *(a1 + 288) = 1061158912;
  *(a1 + 292) = xmmword_100091140;
  *(a1 + 308) = 16843009;
  *(a1 + 312) = 257;
  *(a1 + 316) = 1;
  *(a1 + 320) = 0xFFFFFFFF00000002;
  return a1;
}

void sub_10003DEF8(_Unwind_Exception *a1)
{
  sub_10007B360(v3);
  sub_10007B360(v5);
  sub_10007B360(v4);
  sub_10007B360(v2);
  sub_100051530(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_10003DF30(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = off_1000AD730;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  sub_100046C0C(a1 + 56, a2 + 56);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_100046C0C(a1 + 80, a2 + 80);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_100046C0C(a1 + 104, a2 + 104);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_100046C0C(a1 + 128, a2 + 128);
  v5 = *(a2 + 8);
  if (v5)
  {
    if (*v4)
    {
      v6 = ((*v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v6 = sub_10003CF68(v4);
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 31);
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 16);
    if (v7 >= 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    if (v7 >= 0)
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 31);
    }

    else
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFFFELL) + 16);
    }

    std::string::append(v6, v9, v10);
  }

  sub_10008D64C(a1 + 16, a2 + 16);
  *(a1 + 152) = &qword_1000B6A48;
  v11 = *(a2 + 40);
  if (v11)
  {
    v12 = *v4;
    if (*v4)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990((a1 + 152), (*(a2 + 152) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 40);
  }

  *(a1 + 160) = &qword_1000B6A48;
  if ((v11 & 2) != 0)
  {
    v13 = *v4;
    if (*v4)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990((a1 + 160), (*(a2 + 160) & 0xFFFFFFFFFFFFFFFELL), v13);
    v11 = *(a2 + 40);
  }

  *(a1 + 168) = &qword_1000B6A48;
  if ((v11 & 4) != 0)
  {
    v14 = *v4;
    if (*v4)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990((a1 + 168), (*(a2 + 168) & 0xFFFFFFFFFFFFFFFELL), v14);
    v11 = *(a2 + 40);
  }

  *(a1 + 176) = 0;
  if ((v11 & 8) != 0)
  {
    v15 = *v4;
    if (*v4)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C9B8((a1 + 176), (*(a2 + 176) & 0xFFFFFFFFFFFFFFFELL), v15);
    v11 = *(a2 + 40);
  }

  *(a1 + 184) = 0;
  if ((v11 & 0x10) != 0)
  {
    v16 = *v4;
    if (*v4)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C9B8((a1 + 184), (*(a2 + 184) & 0xFFFFFFFFFFFFFFFELL), v16);
    v11 = *(a2 + 40);
  }

  *(a1 + 192) = 0;
  if ((v11 & 0x20) != 0)
  {
    v17 = *v4;
    if (*v4)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C9B8((a1 + 192), (*(a2 + 192) & 0xFFFFFFFFFFFFFFFELL), v17);
    v11 = *(a2 + 40);
  }

  *(a1 + 200) = 0;
  if ((v11 & 0x40) != 0)
  {
    v18 = *v4;
    if (*v4)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C9B8((a1 + 200), (*(a2 + 200) & 0xFFFFFFFFFFFFFFFELL), v18);
    v11 = *(a2 + 40);
  }

  *(a1 + 208) = 0;
  if ((v11 & 0x80) != 0)
  {
    v19 = *v4;
    if (*v4)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C9B8((a1 + 208), (*(a2 + 208) & 0xFFFFFFFFFFFFFFFELL), v19);
    v11 = *(a2 + 40);
  }

  *(a1 + 216) = &qword_1000B6A48;
  if ((v11 & 0x100) != 0)
  {
    v20 = *v4;
    if (*v4)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_10004C990((a1 + 216), (*(a2 + 216) & 0xFFFFFFFFFFFFFFFELL), v20);
  }

  v21 = *(a2 + 224);
  v22 = *(a2 + 256);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = v22;
  *(a1 + 224) = v21;
  v23 = *(a2 + 272);
  v24 = *(a2 + 288);
  v25 = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 288) = v24;
  *(a1 + 304) = v25;
  *(a1 + 272) = v23;
  return a1;
}

void sub_10003E240(_Unwind_Exception *a1)
{
  sub_10003D264(v5);
  sub_10007B360(v4);
  sub_10007B360(v3);
  sub_10007B360(v2);
  sub_100051530(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t *sub_10003E2B8(uint64_t *a1)
{
  sub_10003E314(a1);
  sub_10003A468(a1 + 1);
  sub_10007B360(a1 + 16);
  sub_10007B360(a1 + 13);
  sub_10007B360(a1 + 10);
  sub_10007B360(a1 + 7);
  sub_100051530((a1 + 2));
  return a1;
}

uint64_t *sub_10003E314(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 519);
    v3 = sub_10004FD04(v17, "CHECK failed: GetArena() == nullptr: ");
    sub_10004FE40(&v16, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v17);
  }

LABEL_4:
  if (a1[19] != &qword_1000B6A48)
  {
    v4 = sub_10003CD54(a1 + 19);
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  if (a1[20] != &qword_1000B6A48)
  {
    v5 = sub_10003CD54(a1 + 20);
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  if (a1[21] != &qword_1000B6A48)
  {
    v6 = sub_10003CD54(a1 + 21);
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete();
  }

  if (a1[22])
  {
    v7 = sub_10003CD54(a1 + 22);
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete();
  }

  if (a1[23])
  {
    v8 = sub_10003CD54(a1 + 23);
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  if (a1[24])
  {
    v9 = sub_10003CD54(a1 + 24);
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete();
  }

  if (a1[25])
  {
    v10 = sub_10003CD54(a1 + 25);
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    operator delete();
  }

  result = a1 + 26;
  if (a1[26])
  {
    v12 = sub_10003CD54(result);
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    operator delete();
  }

  v14 = a1[27];
  v13 = a1 + 27;
  if (v14 != &qword_1000B6A48)
  {
    v15 = sub_10003CD54(v13);
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    operator delete();
  }

  return result;
}

void sub_10003E574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10003E590(uint64_t *a1)
{
  sub_10003E2B8(a1);

  operator delete();
}

void *sub_10003E5D0()
{
  if (atomic_load_explicit(dword_1000B5870, memory_order_acquire))
  {
    sub_10006967C(dword_1000B5870);
  }

  return &unk_1000B6718;
}

uint64_t sub_10003E610(uint64_t a1)
{
  sub_100059758((a1 + 16));
  sub_100046908(a1 + 56);
  sub_100046908(a1 + 80);
  sub_100046908(a1 + 104);
  result = sub_100046908(a1 + 128);
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_10;
  }

  if (v3)
  {
    v4 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    v6 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v5 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_24:
  v7 = *(a1 + 8);
  if (v7)
  {
    v15 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_10004D058((a1 + 176), &off_1000B5908);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_27:
  v8 = *(a1 + 8);
  if (v8)
  {
    v16 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_10004D058((a1 + 184), &off_1000B5888);
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_30:
  v9 = *(a1 + 8);
  if (v9)
  {
    v17 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_10004D058((a1 + 192), &off_1000B58A8);
  if ((v3 & 0x40) != 0)
  {
LABEL_33:
    v10 = *(a1 + 8);
    if (v10)
    {
      v18 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_10004D058((a1 + 200), &off_1000B58C8);
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_36;
    }

LABEL_10:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

LABEL_9:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_10;
  }

LABEL_36:
  v11 = *(a1 + 8);
  if (v11)
  {
    v19 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_10004D058((a1 + 208), &off_1000B58E8);
  if ((v3 & 0x100) != 0)
  {
LABEL_39:
    v12 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
    }
  }

LABEL_42:
  if ((v3 & 0xFE00) != 0)
  {
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 239) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(a1 + 247) = 0;
    *(a1 + 271) = 0;
    *(a1 + 255) = 0;
    *(a1 + 263) = 0;
    *(a1 + 272) = 1;
  }

  if (HIBYTE(v3))
  {
    *(a1 + 276) = 0x3F7FDF3B00001F40;
    *(a1 + 284) = 0x3F400000000F4240;
    *(a1 + 292) = xmmword_100091140;
  }

  if (*(a1 + 44))
  {
    *(a1 + 312) = 257;
    *(a1 + 308) = 16843009;
    *(a1 + 316) = 0x200000001;
  }

  *(a1 + 324) = -1;
  *(a1 + 40) = 0;
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 31) < 0)
    {
      **(v14 + 8) = 0;
      *(v14 + 16) = 0;
    }

    else
    {
      *(v14 + 8) = 0;
      *(v14 + 31) = 0;
    }
  }

  return result;
}

char *sub_10003E9AC(uint64_t a1, char *a2, uint64_t *a3)
{
  v6 = *(a1 + 64);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = sub_1000469CC(a1 + 56, i);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = *(v8 + 8), v9 > 127) || *a3 - a2 + 14 < v9)
      {
        a2 = sub_10004F578(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        memcpy(a2 + 2, v10, v9);
        a2 += v9 + 2;
      }
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    a2 = sub_10003ABFC(a3, 2, (*(a1 + 152) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v11 & 0x800000) == 0)
    {
LABEL_15:
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }
  }

  else if ((v11 & 0x800000) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v13 = *(a1 + 272);
  *a2 = 24;
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v15 | 0x80;
        v18 = v15 >> 7;
        ++a2;
        v19 = v15 >> 14;
        v15 >>= 7;
      }

      while (v19);
      *(a2 - 1) = v18;
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      a2[2] = v15;
      a2 += 3;
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    a2[1] = v13;
    a2 += 2;
    if ((v11 & 0x1000000) == 0)
    {
      goto LABEL_37;
    }
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v12 = *(a1 + 276);
  *a2 = 32;
  if (v12 > 0x7F)
  {
    a2[1] = v12 | 0x80;
    v14 = v12 >> 7;
    if (v12 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v14 | 0x80;
        v16 = v14 >> 7;
        ++a2;
        v17 = v14 >> 14;
        v14 >>= 7;
      }

      while (v17);
      *(a2 - 1) = v16;
    }

    else
    {
      a2[2] = v14;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v12;
    a2 += 2;
  }

LABEL_37:
  v20 = *(a1 + 88);
  if (v20 >= 1)
  {
    for (j = 0; j != v20; ++j)
    {
      v22 = sub_1000469CC(a1 + 80, j);
      v23 = *(v22 + 23);
      if (v23 < 0 && (v23 = *(v22 + 8), v23 > 127) || *a3 - a2 + 14 < v23)
      {
        a2 = sub_10004F578(a3, 5, v22, a2);
      }

      else
      {
        *a2 = 42;
        a2[1] = v23;
        if (*(v22 + 23) >= 0)
        {
          v24 = v22;
        }

        else
        {
          v24 = *v22;
        }

        memcpy(a2 + 2, v24, v23);
        a2 += v23 + 2;
      }
    }
  }

  if ((v11 & 0x200) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v26 = *(a1 + 224);
    *a2 = 48;
    if (v26 > 0x7F)
    {
      a2[1] = v26 | 0x80;
      v28 = v26 >> 7;
      if (v26 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v28 | 0x80;
          v31 = v28 >> 7;
          ++a2;
          v32 = v28 >> 14;
          v28 >>= 7;
        }

        while (v32);
        *(a2 - 1) = v31;
        if ((v11 & 2) != 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        a2[2] = v28;
        a2 += 3;
        if ((v11 & 2) != 0)
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      a2[1] = v26;
      a2 += 2;
      if ((v11 & 2) != 0)
      {
        goto LABEL_80;
      }
    }

LABEL_51:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_81;
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_51;
  }

LABEL_80:
  a2 = sub_10003ABFC(a3, 7, (*(a1 + 160) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v11 & 0x2000000) == 0)
  {
LABEL_52:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_84;
  }

LABEL_81:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v33 = *(a1 + 280);
  *a2 = 85;
  *(a2 + 1) = v33;
  a2 += 5;
  if ((v11 & 0x800) == 0)
  {
LABEL_53:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_54;
    }

LABEL_95:
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v38 = *(a1 + 228);
    *a2 = 96;
    if (v38 > 0x7F)
    {
      a2[1] = v38 | 0x80;
      v39 = v38 >> 7;
      if (v38 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v39 | 0x80;
          v40 = v39 >> 7;
          ++a2;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
        *(a2 - 1) = v40;
        if ((v11 & 0x1000) != 0)
        {
          goto LABEL_106;
        }
      }

      else
      {
        a2[2] = v39;
        a2 += 3;
        if ((v11 & 0x1000) != 0)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
      a2[1] = v38;
      a2 += 2;
      if ((v11 & 0x1000) != 0)
      {
        goto LABEL_106;
      }
    }

LABEL_55:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_117:
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v46 = *(a1 + 284);
    *a2 = 112;
    if (v46 > 0x7F)
    {
      a2[1] = v46 | 0x80;
      v47 = v46 >> 7;
      if (v46 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v47 | 0x80;
          v48 = v47 >> 7;
          ++a2;
          v49 = v47 >> 14;
          v47 >>= 7;
        }

        while (v49);
        *(a2 - 1) = v48;
        if ((v11 & 0x8000000) != 0)
        {
          goto LABEL_128;
        }
      }

      else
      {
        a2[2] = v47;
        a2 += 3;
        if ((v11 & 0x8000000) != 0)
        {
          goto LABEL_128;
        }
      }
    }

    else
    {
      a2[1] = v46;
      a2 += 2;
      if ((v11 & 0x8000000) != 0)
      {
        goto LABEL_128;
      }
    }

LABEL_57:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_131:
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v51 = *(a1 + 292);
    *a2 = 384;
    if (v51 > 0x7F)
    {
      a2[2] = v51 | 0x80;
      v52 = v51 >> 7;
      if (v51 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v52 | 0x80;
          v53 = v52 >> 7;
          ++a2;
          v54 = v52 >> 14;
          v52 >>= 7;
        }

        while (v54);
        *(a2 - 1) = v53;
        if ((v11 & 0x20000000) != 0)
        {
          goto LABEL_142;
        }
      }

      else
      {
        a2[3] = v52;
        a2 += 4;
        if ((v11 & 0x20000000) != 0)
        {
          goto LABEL_142;
        }
      }
    }

    else
    {
      a2[2] = v51;
      a2 += 3;
      if ((v11 & 0x20000000) != 0)
      {
        goto LABEL_142;
      }
    }

LABEL_59:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_60;
  }

LABEL_84:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v34 = *(a1 + 232);
  *a2 = 88;
  if (v34 > 0x7F)
  {
    a2[1] = v34 | 0x80;
    v35 = v34 >> 7;
    if (v34 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v35 | 0x80;
        v36 = v35 >> 7;
        ++a2;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
      *(a2 - 1) = v36;
      if ((v11 & 0x400) != 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      a2[2] = v35;
      a2 += 3;
      if ((v11 & 0x400) != 0)
      {
        goto LABEL_95;
      }
    }
  }

  else
  {
    a2[1] = v34;
    a2 += 2;
    if ((v11 & 0x400) != 0)
    {
      goto LABEL_95;
    }
  }

LABEL_54:
  if ((v11 & 0x1000) == 0)
  {
    goto LABEL_55;
  }

LABEL_106:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v42 = *(a1 + 240);
  *a2 = 104;
  if (v42 > 0x7F)
  {
    a2[1] = v42 | 0x80;
    v43 = v42 >> 7;
    if (v42 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v43 | 0x80;
        v44 = v43 >> 7;
        ++a2;
        v45 = v43 >> 14;
        v43 >>= 7;
      }

      while (v45);
      *(a2 - 1) = v44;
      if ((v11 & 0x4000000) != 0)
      {
        goto LABEL_117;
      }
    }

    else
    {
      a2[2] = v43;
      a2 += 3;
      if ((v11 & 0x4000000) != 0)
      {
        goto LABEL_117;
      }
    }
  }

  else
  {
    a2[1] = v42;
    a2 += 2;
    if ((v11 & 0x4000000) != 0)
    {
      goto LABEL_117;
    }
  }

LABEL_56:
  if ((v11 & 0x8000000) == 0)
  {
    goto LABEL_57;
  }

LABEL_128:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v50 = *(a1 + 288);
  *a2 = 125;
  *(a2 + 1) = v50;
  a2 += 5;
  if ((v11 & 0x10000000) != 0)
  {
    goto LABEL_131;
  }

LABEL_58:
  if ((v11 & 0x20000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_142:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v55 = *(a1 + 296);
  *a2 = 392;
  if (v55 > 0x7F)
  {
    a2[2] = v55 | 0x80;
    v56 = v55 >> 7;
    if (v55 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v56 | 0x80;
        v57 = v56 >> 7;
        ++a2;
        v58 = v56 >> 14;
        v56 >>= 7;
      }

      while (v58);
      *(a2 - 1) = v57;
      if ((v11 & 0x40000000) == 0)
      {
        goto LABEL_153;
      }
    }

    else
    {
      a2[3] = v56;
      a2 += 4;
      if ((v11 & 0x40000000) == 0)
      {
        goto LABEL_153;
      }
    }
  }

  else
  {
    a2[2] = v55;
    a2 += 3;
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_153;
    }
  }

LABEL_60:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v25 = *(a1 + 300);
  *a2 = 400;
  if (v25 > 0x7F)
  {
    a2[2] = v25 | 0x80;
    v27 = v25 >> 7;
    if (v25 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v27 | 0x80;
        v29 = v27 >> 7;
        ++a2;
        v30 = v27 >> 14;
        v27 >>= 7;
      }

      while (v30);
      *(a2 - 1) = v29;
    }

    else
    {
      a2[3] = v27;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v25;
    a2 += 3;
  }

LABEL_153:
  if (*(a1 + 44))
  {
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v59 = *(a1 + 308);
    *a2 = 408;
    a2[2] = v59;
    a2 += 3;
  }

  if ((*(a1 + 40) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v60 = *(a1 + 304);
    *a2 = 416;
    if (v60 > 0x7F)
    {
      a2[2] = v60 | 0x80;
      v61 = v60 >> 7;
      if (v60 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v61 | 0x80;
          v62 = v61 >> 7;
          ++a2;
          v63 = v61 >> 14;
          v61 >>= 7;
        }

        while (v63);
        *(a2 - 1) = v62;
      }

      else
      {
        a2[3] = v61;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v60;
      a2 += 3;
    }
  }

  v64 = *(a1 + 44);
  if ((v64 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v65 = *(a1 + 309);
    *a2 = 424;
    a2[2] = v65;
    a2 += 3;
    if ((v64 & 8) == 0)
    {
LABEL_169:
      if ((v64 & 4) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_177;
    }
  }

  else if ((v64 & 8) == 0)
  {
    goto LABEL_169;
  }

  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v66 = *(a1 + 311);
  *a2 = 432;
  a2[2] = v66;
  a2 += 3;
  if ((v64 & 4) != 0)
  {
LABEL_177:
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v67 = *(a1 + 310);
    *a2 = 440;
    a2[2] = v67;
    a2 += 3;
  }

LABEL_180:
  v68 = *(a1 + 40);
  if ((v68 & 0x4000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v69 = *(a1 + 245);
    *a2 = 448;
    a2[2] = v69;
    a2 += 3;
    if ((v68 & 0x10000) == 0)
    {
LABEL_182:
      if ((v68 & 0x8000) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_190;
    }
  }

  else if ((v68 & 0x10000) == 0)
  {
    goto LABEL_182;
  }

  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v70 = *(a1 + 247);
  *a2 = 456;
  a2[2] = v70;
  a2 += 3;
  if ((v68 & 0x8000) != 0)
  {
LABEL_190:
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v71 = *(a1 + 246);
    *a2 = 464;
    a2[2] = v71;
    a2 += 3;
  }

LABEL_193:
  v72 = *(a1 + 112);
  if (v72 >= 1)
  {
    for (k = 0; k != v72; ++k)
    {
      v74 = sub_1000469CC(a1 + 104, k);
      v75 = *(v74 + 23);
      if (v75 < 0 && (v75 = *(v74 + 8), v75 > 127) || *a3 - a2 + 13 < v75)
      {
        a2 = sub_10004F578(a3, 30, v74, a2);
      }

      else
      {
        *a2 = 498;
        a2[2] = v75;
        if (*(v74 + 23) >= 0)
        {
          v76 = v74;
        }

        else
        {
          v76 = *v74;
        }

        memcpy(a2 + 3, v76, v75);
        a2 += v75 + 3;
      }
    }
  }

  v77 = *(a1 + 136);
  if (v77 >= 1)
  {
    for (m = 0; m != v77; ++m)
    {
      v79 = sub_1000469CC(a1 + 128, m);
      v80 = *(v79 + 23);
      if (v80 < 0 && (v80 = *(v79 + 8), v80 > 127) || *a3 - a2 + 13 < v80)
      {
        a2 = sub_10004F578(a3, 31, v79, a2);
      }

      else
      {
        *a2 = 506;
        a2[2] = v80;
        if (*(v79 + 23) >= 0)
        {
          v81 = v79;
        }

        else
        {
          v81 = *v79;
        }

        memcpy(a2 + 3, v81, v80);
        a2 += v80 + 3;
      }
    }
  }

  v82 = *(a1 + 44);
  if ((v82 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v83 = *(a1 + 312);
    *a2 = 640;
    a2[2] = v83;
    a2 += 3;
  }

  if ((v82 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v84 = *(a1 + 313);
    *a2 = 648;
    a2[2] = v84;
    a2 += 3;
  }

  v85 = *(a1 + 40);
  if ((v85 & 0x40000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v86 = *(a1 + 249);
    *a2 = 656;
    a2[2] = v86;
    a2 += 3;
    if ((v85 & 0x20000) == 0)
    {
LABEL_227:
      if ((v85 & 4) == 0)
      {
        goto LABEL_228;
      }

      goto LABEL_236;
    }
  }

  else if ((v85 & 0x20000) == 0)
  {
    goto LABEL_227;
  }

  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v87 = *(a1 + 248);
  *a2 = 664;
  a2[2] = v87;
  a2 += 3;
  if ((v85 & 4) == 0)
  {
LABEL_228:
    if ((v85 & 0x100000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_237;
  }

LABEL_236:
  a2 = sub_10003ABFC(a3, 36, (*(a1 + 168) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v85 & 0x100000) == 0)
  {
    goto LABEL_246;
  }

LABEL_237:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v88 = *(a1 + 252);
  *a2 = 704;
  if (v88 > 0x7F)
  {
    a2[2] = v88 | 0x80;
    v89 = v88 >> 7;
    if (v88 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v89 | 0x80;
        v90 = v89 >> 7;
        ++a2;
        v91 = v89 >> 14;
        v89 >>= 7;
      }

      while (v91);
      *(a2 - 1) = v90;
    }

    else
    {
      a2[3] = v89;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v88;
    a2 += 3;
  }

LABEL_246:
  v92 = *(a1 + 44);
  if ((v92 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_10004F000(a3, a2);
    }

    v94 = *(a1 + 316);
    *a2 = 712;
    if (v94 > 0x7F)
    {
      a2[2] = v94 | 0x80;
      v96 = v94 >> 7;
      if (v94 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v96 | 0x80;
          v99 = v96 >> 7;
          ++a2;
          v100 = v96 >> 14;
          v96 >>= 7;
        }

        while (v100);
        *(a2 - 1) = v99;
        if ((v92 & 0x80) != 0)
        {
          goto LABEL_269;
        }
      }

      else
      {
        a2[3] = v96;
        a2 += 4;
        if ((v92 & 0x80) != 0)
        {
          goto LABEL_269;
        }
      }
    }

    else
    {
      a2[2] = v94;
      a2 += 3;
      if ((v92 & 0x80) != 0)
      {
        goto LABEL_269;
      }
    }

LABEL_248:
    if ((v92 & 0x100) == 0)
    {
      goto LABEL_280;
    }

    goto LABEL_249;
  }

  if ((v92 & 0x80) == 0)
  {
    goto LABEL_248;
  }

LABEL_269:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v101 = *(a1 + 320);
  *a2 = 720;
  if (v101 > 0x7F)
  {
    a2[2] = v101 | 0x80;
    v102 = v101 >> 7;
    if (v101 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v102 | 0x80;
        v103 = v102 >> 7;
        ++a2;
        v104 = v102 >> 14;
        v102 >>= 7;
      }

      while (v104);
      *(a2 - 1) = v103;
      if ((v92 & 0x100) == 0)
      {
        goto LABEL_280;
      }
    }

    else
    {
      a2[3] = v102;
      a2 += 4;
      if ((v92 & 0x100) == 0)
      {
        goto LABEL_280;
      }
    }
  }

  else
  {
    a2[2] = v101;
    a2 += 3;
    if ((v92 & 0x100) == 0)
    {
      goto LABEL_280;
    }
  }

LABEL_249:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v93 = *(a1 + 324);
  *a2 = 728;
  if (v93 > 0x7F)
  {
    a2[2] = v93 | 0x80;
    v95 = v93 >> 7;
    if (v93 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v95 | 0x80;
        v97 = v95 >> 7;
        ++a2;
        v98 = v95 >> 14;
        v95 >>= 7;
      }

      while (v98);
      *(a2 - 1) = v97;
    }

    else
    {
      a2[3] = v95;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v93;
    a2 += 3;
  }

LABEL_280:
  v105 = *(a1 + 40);
  if ((v105 & 8) != 0)
  {
    a2 = sub_10003ABFC(a3, 44, (*(a1 + 176) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v105 & 0x10) == 0)
    {
LABEL_282:
      if ((v105 & 0x20) == 0)
      {
        goto LABEL_283;
      }

      goto LABEL_295;
    }
  }

  else if ((v105 & 0x10) == 0)
  {
    goto LABEL_282;
  }

  a2 = sub_10003ABFC(a3, 45, (*(a1 + 184) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x20) == 0)
  {
LABEL_283:
    if ((v105 & 0x40) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_296;
  }

LABEL_295:
  a2 = sub_10003ABFC(a3, 46, (*(a1 + 192) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x40) == 0)
  {
LABEL_284:
    if ((v105 & 0x80) == 0)
    {
      goto LABEL_285;
    }

    goto LABEL_297;
  }

LABEL_296:
  a2 = sub_10003ABFC(a3, 47, (*(a1 + 200) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x80) == 0)
  {
LABEL_285:
    if ((v105 & 0x80000) == 0)
    {
      goto LABEL_286;
    }

    goto LABEL_298;
  }

LABEL_297:
  a2 = sub_10003ABFC(a3, 48, (*(a1 + 208) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x80000) == 0)
  {
LABEL_286:
    if ((v105 & 0x2000) == 0)
    {
      goto LABEL_287;
    }

    goto LABEL_301;
  }

LABEL_298:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v110 = *(a1 + 250);
  *a2 = 904;
  a2[2] = v110;
  a2 += 3;
  if ((v105 & 0x2000) == 0)
  {
LABEL_287:
    if ((v105 & 0x200000) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_304;
  }

LABEL_301:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v111 = *(a1 + 244);
  *a2 = 912;
  a2[2] = v111;
  a2 += 3;
  if ((v105 & 0x200000) == 0)
  {
LABEL_288:
    if ((v105 & 0x400000) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_307;
  }

LABEL_304:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v112 = *(a1 + 256);
  *a2 = 925;
  *(a2 + 2) = v112;
  a2 += 6;
  if ((v105 & 0x400000) == 0)
  {
LABEL_289:
    if ((v105 & 0x100) == 0)
    {
      goto LABEL_291;
    }

    goto LABEL_290;
  }

LABEL_307:
  if (*a3 <= a2)
  {
    a2 = sub_10004F000(a3, a2);
  }

  v113 = *(a1 + 264);
  *a2 = 928;
  if (v113 <= 0x7F)
  {
    a2[2] = v113;
    a2 += 3;
    if ((v105 & 0x100) == 0)
    {
      goto LABEL_291;
    }

LABEL_290:
    a2 = sub_10003ABFC(a3, 53, (*(a1 + 216) & 0xFFFFFFFFFFFFFFFELL), a2);
    goto LABEL_291;
  }

  a2[2] = v113 | 0x80;
  v114 = v113 >> 7;
  if (v113 >> 14)
  {
    a2 += 4;
    do
    {
      *(a2 - 1) = v114 | 0x80;
      v115 = v114 >> 7;
      ++a2;
      v116 = v114 >> 14;
      v114 >>= 7;
    }

    while (v116);
    *(a2 - 1) = v115;
    if ((v105 & 0x100) != 0)
    {
      goto LABEL_290;
    }
  }

  else
  {
    a2[3] = v114;
    a2 += 4;
    if ((v105 & 0x100) != 0)
    {
      goto LABEL_290;
    }
  }

LABEL_291:
  v106 = sub_10005D814(a1 + 16, 200, 0x20000000, a2, a3);
  v107 = v106;
  v108 = *(a1 + 8);
  if ((v108 & 1) == 0)
  {
    return v107;
  }

  v117 = v108 & 0xFFFFFFFFFFFFFFFELL;
  v118 = *(v117 + 31);
  if (v118 < 0)
  {
    v119 = *(v117 + 8);
    v118 = *(v117 + 16);
  }

  else
  {
    v119 = (v117 + 8);
  }

  if (*a3 - v106 >= v118)
  {
    v120 = v118;
    memcpy(v106, v119, v118);
    v107 += v120;
    return v107;
  }

  return sub_10004F118(a3, v119, v118, v106);
}