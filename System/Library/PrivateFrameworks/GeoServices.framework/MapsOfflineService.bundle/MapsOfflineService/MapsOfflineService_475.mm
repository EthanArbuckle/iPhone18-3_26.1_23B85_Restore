uint64_t sub_1959254(uint64_t result, int a2)
{
  v2 = *(result + 8);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return sub_19592E8(result, v4);
  }

  return result;
}

uint64_t sub_1959280(uint64_t result, int a2, int a3)
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

uint64_t sub_19592E8(uint64_t a1, int a2)
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
    }

    else
    {
      v11 = operator new(v10 + 8);
    }

    *(a1 + 16) = v11;
    *(a1 + 12) = v9;
    if (v5 && (v12 = *v5, v12 >= 1))
    {
      memcpy(v11 + 2, v5 + 2, 8 * v12);
      v11 = *(a1 + 16);
      *v11 = *v5;
      if (!v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v11 = 0;
      if (!v7)
      {
LABEL_15:
        operator delete(v5);
        v11 = *(a1 + 16);
      }
    }

    v2 = *(a1 + 8);
    v5 = v11;
  }

  return &v5[2 * v2 + 2];
}

uint64_t sub_19593CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (!v4 || (v5 = *v4, *v4 == *(a1 + 12)))
  {
    sub_19592E8(a1, 1);
    v4 = *(a1 + 16);
    v5 = *v4;
  }

  *v4 = v5 + 1;
  v6 = *(a1 + 8);
  *(a1 + 8) = v6 + 1;
  *&v4[2 * v6 + 2] = a2;
  return a2;
}

uint64_t sub_1959448(uint64_t result, const char *a2, int a3, uint64_t a4)
{
  if ((result & 0x80000000) == 0)
  {
    if (*(a4 + 23) >= 0)
    {
      v4 = a4;
    }

    else
    {
      v4 = *a4;
    }

    fprintf(__stderrp, "[libprotobuf %s %s:%d] %s\n", off_2721548[result], a2, a3, v4);
    v5 = __stderrp;

    return fflush(v5);
  }

  return result;
}

_BYTE *sub_19594D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*a1)
  {
    return sub_194E7E8(a2, *a1, *(a1 + 8));
  }

  else
  {
    return sub_3608D0(a2, &unk_2366970);
  }
}

void (__cdecl ***sub_19594F8(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_12208C4((a1 + 1), 16);
  return a1;
}

void sub_195963C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

const void *sub_1959680@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_195CC18(a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t sub_1959728(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

const char **sub_1959854(const char **result)
{
  v1 = result;
  if (*result == 3)
  {
    v2 = 3;
  }

  else
  {
    v3 = atomic_load(&unk_27ECB38);
    if (v3 > 0)
    {
      goto LABEL_6;
    }

    v2 = *result;
  }

  result = off_278C168(v2, v1[1], *(v1 + 4), (v1 + 3));
LABEL_6:
  if (*v1 == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    sub_1959914(exception, v1[1], *(v1 + 4), v1 + 3);
  }

  return result;
}

void sub_195992C(std::exception *this)
{
  this->__vftable = &off_2721590;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

void sub_195998C(std::exception *a1)
{
  sub_195992C(a1);

  operator delete();
}

uint64_t sub_19599C4(uint64_t a1)
{
  result = a1 + 24;
  if (*(a1 + 47) < 0)
  {
    return *result;
  }

  return result;
}

void sub_19599E8(unint64_t a1, const char *a2)
{
  LODWORD(v5[0]) = 3;
  v5[1] = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/stubs/stringpiece.cc";
  v6 = 50;
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "size too big: ", 0xEuLL);
  __s = v10;
  v9 = sub_1959CD8(a1, v10) - v10;
  std::string::append(&__p, __s, v9);
  std::string::append(&__p, " details: ", 0xAuLL);
  v4 = strlen(a2);
  std::string::append(&__p, a2, v4);
  sub_1959854(v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1959AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1959B30(unsigned int a1, _BYTE *a2)
{
  if (a1 >= 0x3B9ACA00)
  {
    v2 = a1 / 0x5F5E100uLL;
    *a2 = *&a00010203040506[2 * v2];
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
      *a2 = *&a00010203040506[2 * v5];
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
      *a2 = *&a00010203040506[2 * v4];
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
      *a2 = *&a00010203040506[2 * v3];
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
  *a2 = *&a00010203040506[2 * a1];
  v6 = a2 + 2;
LABEL_11:
  *v6 = 0;
  return v6;
}

_BYTE *sub_1959CD8(unint64_t a1, _BYTE *a2)
{
  v2 = a1;
  if (HIDWORD(a1))
  {
    v4 = a1 / 0x3B9ACA00;
    v5 = sub_1959CD8(a1 / 0x3B9ACA00);
    v6 = v2 - 1000000000 * v4;
    *v5 = *&a00010203040506[2 * (v6 / 0x989680uLL)];
    v6 %= 0x989680u;
    v5[1] = *&a00010203040506[2 * (v6 / 0x186A0uLL)];
    v6 %= 0x186A0u;
    v5[2] = *&a00010203040506[2 * (v6 / 0x3E8uLL)];
    v6 %= 0x3E8u;
    v5[3] = *&a00010203040506[2 * (v6 / 0xAuLL)];
    v5[4] = (v6 % 0xA + 48);
    return v5 + 9;
  }

  else
  {

    return sub_1959B30(a1, a2);
  }
}

uint64_t sub_1959E04(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = *(a1 + 1);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if (v6 < 0)
    {
      v7 = 10;
    }

    else
    {
      v7 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    }

    result += v7;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1959E5C(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = *(a1 + 1);
  do
  {
    v5 = *v4++;
    result += (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1959EA8(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = *(a1 + 1);
  do
  {
    v5 = *v4++;
    result += (9 * (__clz((2 * v5) ^ (v5 >> 31) | 1) ^ 0x1F) + 73) >> 6;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1959F14(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = *(a1 + 1);
  do
  {
    v5 = *v4++;
    result += (9 * (__clz(v5 | 1) ^ 0x3F) + 73) >> 6;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1959F64(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = *(a1 + 1);
  do
  {
    v5 = *v4++;
    result += (9 * (__clz((2 * v5) ^ (v5 >> 63) | 1) ^ 0x3F) + 73) >> 6;
    --v1;
  }

  while (v1);
  return result;
}

std::logic_error *sub_195A000(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

std::string *sub_195A048(std::string *__dst, const std::string::value_type *__src, size_t __len)
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

uint64_t sub_195A108(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
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

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

_BYTE *sub_195A17C(unsigned int a1, _BYTE *a2)
{
  *a2 = a1;
  if (a1 <= 0x7F)
  {
    return a2 + 1;
  }

  *a2 = a1 | 0x80;
  v4 = a1 >> 7;
  a2[1] = v4;
  result = a2 + 2;
  if (a1 >= 0x4000)
  {
    LOBYTE(v5) = a2[1];
    do
    {
      *(result - 1) = v5 | 0x80;
      v5 = v4 >> 7;
      *result++ = v4 >> 7;
      v6 = v4 >> 14;
      v4 >>= 7;
    }

    while (v6);
  }

  return result;
}

void sub_195A1E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_195A244(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &off_2721590;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_325C((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

std::logic_error *sub_195A2D8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

_BYTE *sub_195A324(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
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

std::string *sub_195A3D4(std::string *this, std::string *__src, std::string *a3)
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
    sub_195A324(__p, __src, a3, v7);
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

void sub_195A530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_195A55C(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
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

uint64_t *sub_195A5E8(uint64_t *a1)
{
  v2 = *a1;
  if ((*a1 & 2) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      v3 = *v3;
      if (v3)
      {
LABEL_4:
        sub_194E00C(v3);
        operator delete();
      }
    }

    else if (v3)
    {
      goto LABEL_4;
    }
  }

  return a1;
}

void sub_195A650(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_195A668(void *a1)
{
  if (a1)
  {
    operator delete(a1, 0x40uLL);
  }
}

void *sub_195A678(uint64_t a1, void (*a2)(void), void *a3)
{
  v3 = *(a1 + 8);
  v4 = *v3;
  v5 = v3[1];
  if (!*v3)
  {
    return v3;
  }

  do
  {
    v8 = v4;
    if (a2)
    {
      a2();
    }

    else
    {
      operator delete(v3);
    }

    *a3 += v5;
    v4 = *v8;
    v5 = v8[1];
    v3 = v8;
  }

  while (*v8);
  return v8;
}

_BYTE *sub_195A70C(_BYTE *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = sub_1951F68(v3 + 40);
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

void sub_195A77C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_195A77C(a1, *a2);
    sub_195A77C(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_195A7EC(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void sub_195A80C(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void sub_195A82C(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void sub_195A84C(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void sub_195A86C(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void sub_195A88C(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

void sub_195A8AC(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v1 = *(a1 + 8);
    v3 = *(v1 - 8);
    v2 = (v1 - 8);
    if (!v3)
    {
      operator delete(v2);
    }
  }
}

uint64_t sub_195A8EC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_195A918(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return sub_195A96C(result, a2);
  }

  v3 = *v2;
  if (v3 >= *(result + 12))
  {
    return sub_195A96C(result, a2);
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

uint64_t sub_195A96C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {
    v7 = *(result + 8);
    v5 = *(result + 12);
    goto LABEL_11;
  }

  v5 = *(result + 8);
  v6 = *(result + 12);
  v7 = v5;
  if (v5 == v6)
  {
LABEL_11:
    result = sub_19592E8(result, v5 - v7 + 1);
    goto LABEL_12;
  }

  v8 = *v4;
  if (v8 != v6)
  {
    if (v5 >= v8)
    {
      v10 = v8 + 1;
      goto LABEL_13;
    }

    *&v4[2 * v8 + 2] = *&v4[2 * v5 + 2];
LABEL_12:
    v4 = *(v3 + 16);
    v10 = *v4 + 1;
LABEL_13:
    *v4 = v10;
    goto LABEL_14;
  }

  result = *&v4[2 * v5 + 2];
  if (result)
  {
    v9 = *v3 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    result = (*(*result + 8))(result);
    v4 = *(v3 + 16);
  }

LABEL_14:
  v11 = *(v3 + 8);
  *(v3 + 8) = v11 + 1;
  *&v4[2 * v11 + 2] = a2;
  return result;
}

unsigned __int8 *sub_195AA54(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = sub_194FBB8(v3 + 40);
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

uint64_t **sub_195AAC4(int **a1, int **a2, uint64_t **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_1951434(a3, *(v5 + 8), v5 + 5);
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

char *sub_195AB48(uint64_t a1, char *a2, __int128 *a3)
{
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    result = a2 + 1;
    goto LABEL_3;
  }

  result = sub_225F208(a2, *a2);
  if (result)
  {
    v5 = v16;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v13 = &result[v5];
        v14 = a3[1];
        v17 = *a3;
        v18 = v14;
        v19 = *(a3 + 4);
        result = sub_195ACC4(result, v13, &v17);
        if (v13 != result)
        {
          return 0;
        }

        return result;
      }

      v9 = a3[1];
      v17 = *a3;
      v18 = v9;
      v19 = *(a3 + 4);
      result = sub_195ACC4(result, v7, &v17);
      if (!result)
      {
        return result;
      }

      v10 = *(a1 + 8);
      v11 = result - v10;
      v12 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1958134(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v11;
      result += v11;
    }

    v22 = 0;
    v21 = 0;
    v20 = *v10;
    v15 = a3[1];
    v17 = *a3;
    v18 = v15;
    v19 = *(a3 + 4);
    if (sub_195ACC4(&v20 + v11, &v20 + v12, &v17) != &v20 + v12)
    {
      return 0;
    }

    return (*(a1 + 8) + v12);
  }

  return result;
}

char *sub_195ACC4(char *a1, unint64_t a2, unsigned int **a3)
{
  v3 = a1;
  while (v3 < a2)
  {
    v14 = 0;
    v3 = sub_1216520(v3, &v14);
    if (!v3)
    {
      break;
    }

    v6 = v14;
    if ((a3[1])(a3[2], v14))
    {
      v7 = *a3;
      v8 = **a3;
      if (v8 == (*a3)[1])
      {
        v9 = v8 + 1;
        sub_1958E5C(*a3, v8 + 1);
        *(*(v7 + 1) + 4 * v8) = v6;
      }

      else
      {
        *(*(v7 + 1) + 4 * v8) = v6;
        v9 = v8 + 1;
      }

      *v7 = v9;
    }

    else
    {
      v10 = *(a3 + 8);
      v11 = a3[3];
      v12 = ((*v11 & 1) != 0 ? (*v11 & 0xFFFFFFFFFFFFFFFCLL) + 8 : sub_11F1920(v11));
      sub_19586BC(v10, v6, v12);
    }
  }

  return v3;
}

uint64_t sub_195ADC0(uint64_t a1, char **a2, int a3)
{
  if (*a2 >= *a1)
  {
    v5 = *a2 - *(a1 + 8);
    if (*(a1 + 28) == v5)
    {
      if (v5 >= 1 && !*(a1 + 16))
      {
        *a2 = 0;
      }

      v3 = 1;
    }

    else
    {
      *a2 = sub_225EF0C(a1, v5, a3);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

char *sub_195AE54(uint64_t a1, char *__src, size_t __n)
{
  *(a1 + 84) = 0;
  if (__n >= 0x11)
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

    v7 = (&dword_0 + 2);
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
    v7 = (__src - v8);
LABEL_6:
    *(a1 + 72) = v7;
  }

  return v8;
}

void *sub_195AF20(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += sub_195606C(v5 + 40, *(v5 + 8));
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

void sub_195AFAC(void *a1)
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

uint64_t *sub_195B038(uint64_t a1, int *a2)
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

uint64_t sub_195B120(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_195B1B8(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_195B1B8(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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

uint64_t *sub_195B378(uint64_t *result, uint64_t *a2)
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

char *sub_195B714(uint64_t a1, char *a2, unsigned int *a3)
{
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    result = a2 + 1;
    goto LABEL_3;
  }

  result = sub_225F208(a2, *a2);
  if (result)
  {
    v5 = v13;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_195B860(result, v12, a3);
        if (v12 != result)
        {
          return 0;
        }

        return result;
      }

      result = sub_195B860(result, v7, a3);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1958134(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v9;
    if (sub_195B860(&v14 + v10, &v14 + v11, a3) != &v14 + v11)
    {
      return 0;
    }

    return (*(a1 + 8) + v11);
  }

  return result;
}

char *sub_195B860(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1216520(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1958E5C(a3, v7 + 1);
      *(*(a3 + 1) + 4 * v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + 4 * v7) = v10;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_195B908(uint64_t a1, char *a2, unsigned int *a3)
{
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    result = a2 + 1;
    goto LABEL_3;
  }

  result = sub_225F208(a2, *a2);
  if (result)
  {
    v5 = v13;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_195B860(result, v12, a3);
        if (v12 != result)
        {
          return 0;
        }

        return result;
      }

      result = sub_195B860(result, v7, a3);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1958134(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v9;
    if (sub_195B860(&v14 + v10, &v14 + v11, a3) != &v14 + v11)
    {
      return 0;
    }

    return (*(a1 + 8) + v11);
  }

  return result;
}

char *sub_195BA5C(uint64_t a1, char *a2, unsigned int *a3)
{
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    result = a2 + 1;
    goto LABEL_3;
  }

  result = sub_225F208(a2, *a2);
  if (result)
  {
    v5 = v13;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_195BBA8(result, v12, a3);
        if (v12 != result)
        {
          return 0;
        }

        return result;
      }

      result = sub_195BBA8(result, v7, a3);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1958134(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v9;
    if (sub_195BBA8(&v14 + v10, &v14 + v11, a3) != &v14 + v11)
    {
      return 0;
    }

    return (*(a1 + 8) + v11);
  }

  return result;
}

char *sub_195BBA8(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1216520(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1959094(a3, v7 + 1);
      *(*(a3 + 1) + 8 * v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + 8 * v7) = v10;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_195BC50(uint64_t a1, char *a2, unsigned int *a3)
{
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    result = a2 + 1;
    goto LABEL_3;
  }

  result = sub_225F208(a2, *a2);
  if (result)
  {
    v5 = v13;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_195BBA8(result, v12, a3);
        if (v12 != result)
        {
          return 0;
        }

        return result;
      }

      result = sub_195BBA8(result, v7, a3);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1958134(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v9;
    if (sub_195BBA8(&v14 + v10, &v14 + v11, a3) != &v14 + v11)
    {
      return 0;
    }

    return (*(a1 + 8) + v11);
  }

  return result;
}

char *sub_195BDA4(uint64_t a1, char *a2, unsigned int *a3)
{
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    result = a2 + 1;
    goto LABEL_3;
  }

  result = sub_225F208(a2, *a2);
  if (result)
  {
    v5 = v13;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_195BEF0(result, v12, a3);
        if (v12 != result)
        {
          return 0;
        }

        return result;
      }

      result = sub_195BEF0(result, v7, a3);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1958134(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v9;
    if (sub_195BEF0(&v14 + v10, &v14 + v11, a3) != &v14 + v11)
    {
      return 0;
    }

    return (*(a1 + 8) + v11);
  }

  return result;
}

char *sub_195BEF0(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1216520(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1958E5C(a3, v7 + 1);
      *(*(a3 + 1) + 4 * v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_195BFA4(uint64_t a1, char *a2, unsigned int *a3)
{
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    result = a2 + 1;
    goto LABEL_3;
  }

  result = sub_225F208(a2, *a2);
  if (result)
  {
    v5 = v13;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_195C0F0(result, v12, a3);
        if (v12 != result)
        {
          return 0;
        }

        return result;
      }

      result = sub_195C0F0(result, v7, a3);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1958134(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v9;
    if (sub_195C0F0(&v14 + v10, &v14 + v11, a3) != &v14 + v11)
    {
      return 0;
    }

    return (*(a1 + 8) + v11);
  }

  return result;
}

char *sub_195C0F0(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1216520(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1959094(a3, v7 + 1);
      *(*(a3 + 1) + 8 * v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_195C1A4(uint64_t a1, char *a2, unsigned int *a3)
{
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    result = a2 + 1;
    goto LABEL_3;
  }

  result = sub_225F208(a2, *a2);
  if (result)
  {
    v5 = v13;
    while (1)
    {
LABEL_3:
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        v12 = &result[v5];
        result = sub_195C2F0(result, v12, a3);
        if (v12 != result)
        {
          return 0;
        }

        return result;
      }

      result = sub_195C2F0(result, v7, a3);
      if (!result)
      {
        return result;
      }

      v9 = *(a1 + 8);
      v10 = result - v9;
      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1958134(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v8 - v10;
      result += v10;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v9;
    if (sub_195C2F0(&v14 + v10, &v14 + v11, a3) != &v14 + v11)
    {
      return 0;
    }

    return (*(a1 + 8) + v11);
  }

  return result;
}

char *sub_195C2F0(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1216520(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10 != 0;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1958D44(a3, v7 + 1);
      *(*(a3 + 1) + v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_195C3A0(uint64_t a1, char *a2, int a3, unsigned int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1958E5C(a4, *a4 + (v5 >> 2));
    v12 = *a4;
    v13 = (*(a4 + 1) + 4 * v12);
    *a4 = v12 + (v5 >> 2);
    memcpy(v13, v6, (v5 & 0xFFFFFFFC));
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
      sub_1958E5C(a4, *a4 + (v7 >> 2));
      v9 = *a4;
      v10 = (*(a4 + 1) + 4 * v9);
      *a4 = v9 + (v7 >> 2);
      memcpy(v10, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1958134(a1);
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

char *sub_195C4B0(uint64_t a1, char *a2, int a3, unsigned int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1959094(a4, *a4 + (v5 >> 3));
    v12 = *a4;
    v13 = (*(a4 + 1) + 8 * v12);
    *a4 = v12 + (v5 >> 3);
    memcpy(v13, v6, (v5 & 0xFFFFFFF8));
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
      sub_1959094(a4, *a4 + (v7 >> 3));
      v9 = *a4;
      v10 = (*(a4 + 1) + 8 * v9);
      *a4 = v9 + (v7 >> 3);
      memcpy(v10, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1958134(a1);
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

void sub_195C5D0(std::string **a1, int a2, unint64_t a3)
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

std::string *sub_195C698(std::string *result, int a2, uint64_t a3)
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

std::string::value_type *sub_195C758(std::string **a1, int a2, char *a3, uint64_t a4)
{
  v7 = *a3;
  if (*a3 < 0)
  {
    result = sub_225F208(a3, *a3);
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

    return sub_195CA98(a4, v8, v7, v18);
  }

  else if (*(a4 + 8) - v8 + 16 >= v7)
  {
    return &v8[v7];
  }

  else
  {

    return sub_195857C(a4, v8, v7);
  }
}

char *sub_195C8D8(std::string **a1, int a2, char *a3, int32x2_t *a4)
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
  v14 = sub_1958AB8(a1, a3, a4);
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

std::string *sub_195CA04(std::string *result, int a2, int a3)
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

std::string::value_type *sub_195CA98(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 < a3)
  {

    return sub_225F084();
  }

  else
  {
    v5 = a3;
    std::string::append(this, __s, a3);
    return &__s[v5];
  }
}

void sub_195CB10(uint64_t a1)
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

uint64_t sub_195CC18(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

void sub_195CC74(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1808();
}

void sub_195CD4C(uint64_t a1@<X8>)
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

std::string *sub_195CD90(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

uint64_t sub_195CDB4(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    sub_195A77C(a2, *(a2 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_195CE20(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_195CE64(uint64_t **a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v64 = 0;
  v6 = 0;
  v7 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v72 = 0uLL;
  v73 = 0;
  v70 = 0uLL;
  v71 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v65 = 0;
  v66 = 0;
  v8 = 0x7FFFFFFFLL;
  do
  {
    if (v3[1] == *v3)
    {
      goto LABEL_55;
    }

    v9 = sub_19C47B0(*v3);
    LODWORD(v83[0]) = 5;
    if (sub_195E4DC(v9, v83))
    {
      if (v3[1] == *v3)
      {
        sub_6FAB4();
      }

      v10 = sub_1DED534(*v3);
      if (v3[1] == *v3)
      {
        sub_6FAB4();
      }

      v11 = sub_1DED53C(*v3);
      v12 = v11;
      if (v10 > v6 || v10 == v6 && v11 < v8)
      {
        v13 = v74;
        v14 = v75;
        while (v14 != v13)
        {
          v14 -= 88;
          *&v77 = v14;
          sub_1961C3C(&v77);
        }

        v75 = v13;
        if (v13 >= v76)
        {
          v15 = sub_195E624(&v74, v3);
        }

        else
        {
          sub_195E590(&v74, v3);
          v15 = (v13 + 11);
        }

LABEL_54:
        v75 = v15;
        v8 = v12;
        v6 = v10;
        goto LABEL_55;
      }

      if (v10 == v6 && v11 == v8)
      {
        v33 = v75;
        if (v75 >= v76)
        {
          v15 = sub_195E624(&v74, v3);
        }

        else
        {
          sub_195E590(&v74, v3);
          v15 = v33 + 88;
        }

        v12 = v8;
        v10 = v6;
        goto LABEL_54;
      }
    }

    else
    {
      v16 = *v3;
      v17 = v3[1];
      while (v16 != v17)
      {
        if ((*(sub_73EBC(v16) + 17) & 1) != 0 && *(sub_73EBC(v16) + 184) == 1)
        {
          v18 = nullsub_1(a2);
          if (sub_195D73C(v16, (v18 + 1040)))
          {
            v19 = nullsub_1(a2);
            if (sub_195D804(v16, (v19 + 848)))
            {
              v20 = v68;
              if (v68 >= v69)
              {
                v21 = sub_195E9F0(&v67, v16);
              }

              else
              {
                sub_195EB38(v68, v16);
                v21 = v20 + 664;
              }

              v68 = v21;
            }

            else
            {
              v31 = v65;
              if (v65 >= v66)
              {
                v32 = sub_195E9F0(&v64, v16);
              }

              else
              {
                sub_195EB38(v65, v16);
                v32 = v31 + 664;
              }

              v65 = v32;
            }
          }

          else
          {
            v24 = sub_1DED534(v16);
            v25 = v24;
            if (v24 <= v7)
            {
              if (v24 == v7)
              {
                v28 = *(&v70 + 1);
                if (*(&v70 + 1) >= v71)
                {
                  v29 = sub_195E9F0(&v70, v16);
                }

                else
                {
                  sub_195EB38(*(&v70 + 1), v16);
                  v29 = v28 + 664;
                }

                *(&v70 + 1) = v29;
              }
            }

            else
            {
              v26 = *(&v70 + 1);
              v27 = v70;
              while (v26 != v27)
              {
                v26 = sub_196005C(v26 - 664);
              }

              *(&v70 + 1) = v27;
              if (v27 >= v71)
              {
                v30 = sub_195E9F0(&v70, v16);
              }

              else
              {
                sub_195EB38(v27, v16);
                v30 = v27 + 664;
              }

              *(&v70 + 1) = v30;
              v7 = v25;
            }
          }
        }

        else
        {
          v22 = *(&v72 + 1);
          if (*(&v72 + 1) >= v73)
          {
            v23 = sub_195E9F0(&v72, v16);
          }

          else
          {
            sub_195EB38(*(&v72 + 1), v16);
            v23 = v22 + 664;
          }

          *(&v72 + 1) = v23;
        }

        v16 = (v16 + 664);
      }
    }

LABEL_55:
    v3 += 11;
  }

  while (v3 != v4);
  v34 = v67;
  v35 = v68;
  if (v67 != v68)
  {
    v36 = &v67;
    v37 = v72;
    goto LABEL_61;
  }

  v37 = v72;
  if (v64 == v65)
  {
    if (v72 == *(&v72 + 1))
    {
      if (v70 == *(&v70 + 1))
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        v52 = v74;
        v53 = v75;
        if (v74 != v75)
        {
          v54 = -1;
          do
          {
            v55 = *v52;
            if (v52[1] != *v52)
            {
              v56 = 0;
              do
              {
                v57 = (v55 + 664 * v56);
                if (sub_1DED484(v57) <= v54)
                {
                  if (sub_1DED484(v57) == v54)
                  {
                    v60 = a3[1];
                    if (v60 >= a3[2])
                    {
                      v61 = sub_195E9F0(a3, v57);
                    }

                    else
                    {
                      sub_195EB38(a3[1], v57);
                      v61 = v60 + 664;
                    }

                    a3[1] = v61;
                  }
                }

                else
                {
                  v59 = *a3;
                    ;
                  }

                  a3[1] = v59;
                  if (v59 >= a3[2])
                  {
                    v62 = sub_195E9F0(a3, v57);
                  }

                  else
                  {
                    sub_195EB38(v59, v57);
                    v62 = v59 + 664;
                  }

                  a3[1] = v62;
                  v54 = sub_1DED484(v57);
                }

                ++v56;
                v55 = *v52;
              }

              while (0xA3784A062B2E43DBLL * ((v52[1] - *v52) >> 3) > v56);
            }

            v52 += 11;
          }

          while (v52 != v53);
        }

        goto LABEL_89;
      }

      v82 = 0;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v77 = 0u;
      if (v72 == *(&v72 + 1))
      {
LABEL_93:
        if (*(&v70 + 1) != v70)
        {
          sub_1960144(&v77, *(&v77 + 1), v70, *(&v70 + 1), 0xA3784A062B2E43DBLL * ((*(&v70 + 1) - v70) >> 3));
        }

        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        sub_1961B64(a3, v77, *(&v77 + 1), 0xA3784A062B2E43DBLL * ((*(&v77 + 1) - v77) >> 3));
        goto LABEL_88;
      }
    }

    else
    {
      v82 = 0;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v77 = 0u;
    }

    sub_1960144(&v77, 0, v72, *(&v72 + 1), 0xA3784A062B2E43DBLL * ((*(&v72 + 1) - v72) >> 3));
    goto LABEL_93;
  }

  v36 = &v64;
LABEL_61:
  sub_19618A4(v36, v36[1], v37, *(&v37 + 1), 0xA3784A062B2E43DBLL * ((*(&v37 + 1) - v37) >> 3));
  v77 = 0uLL;
  *&v78 = 0;
  v39 = *(&v70 + 1);
  v38 = v70;
  if (v70 == *(&v70 + 1))
  {
    j = v36[1];
  }

  else
  {
    do
    {
      if (*sub_1DED05C(v38) && *sub_1DED05C(v38) != 1)
      {
        v43 = *(&v77 + 1);
        if (*(&v77 + 1) >= v78)
        {
          v44 = sub_195E9F0(&v77, v38);
        }

        else
        {
          sub_195EB38(*(&v77 + 1), v38);
          v44 = v43 + 664;
        }

        *(&v77 + 1) = v44;
      }

      else
      {
        v40 = v36[1];
        if (v34 == v35)
        {
          v41 = &v66;
        }

        else
        {
          v41 = &v69;
        }

        if (v40 >= *v41)
        {
          v42 = sub_195E9F0(v36, v38);
        }

        else
        {
          sub_195EB38(v36[1], v38);
          v42 = v40 + 664;
          v36[1] = v40 + 664;
        }

        v36[1] = v42;
      }

      v38 = (v38 + 664);
    }

    while (v38 != v39);
    v46 = *(&v77 + 1);
    v45 = v77;
    for (j = v36[1]; v45 != v46; v45 = (v45 + 664))
    {
      v48 = *v36;
      v49 = nullsub_1(a2);
      v50 = 0xA3784A062B2E43DBLL * ((j - v48) >> 3);
      j = v36[1];
      if (v50 >= *(v49 + 24))
      {
        break;
      }

      v51 = v34 == v35 ? &v66 : &v69;
      if (j >= *v51)
      {
        j = sub_195E9F0(v36, v45);
      }

      else
      {
        sub_195EB38(v36[1], v45);
        j += 664;
        v36[1] = j;
      }

      v36[1] = j;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_1961B64(a3, *v36, j, 0xA3784A062B2E43DBLL * ((j - *v36) >> 3));
LABEL_88:
  v83[0] = &v77;
  sub_1961C3C(v83);
LABEL_89:
  *&v77 = &v64;
  sub_1961C3C(&v77);
  *&v77 = &v67;
  sub_1961C3C(&v77);
  *&v77 = &v70;
  sub_1961C3C(&v77);
  *&v77 = &v72;
  sub_1961C3C(&v77);
  *&v77 = &v74;
  sub_1961CC0(&v77);
}

void sub_195D61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void **a27)
{
  *(v27 - 96) = &a27;
  sub_1961C3C((v27 - 96));
  a27 = &a11;
  sub_1961C3C(&a27);
  a27 = &a14;
  sub_1961C3C(&a27);
  a27 = &a17;
  sub_1961C3C(&a27);
  a27 = &a21;
  sub_1961C3C(&a27);
  a27 = &a24;
  sub_1961CC0(&a27);
  _Unwind_Resume(a1);
}

BOOL sub_195D73C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_73EBC(a1);
  if (v4 != v5)
  {
    v7 = *(v6 + 144) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    if (v8 >= 0)
    {
      v9 = *(v7 + 23);
    }

    else
    {
      v9 = *(v7 + 8);
    }

    if (v8 >= 0)
    {
      v10 = (*(v6 + 144) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v10 = *v7;
    }

    while (1)
    {
      v11 = *(v4 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v4 + 8);
      }

      if (v11 == v9)
      {
        v13 = v12 >= 0 ? v4 : *v4;
        if (!memcmp(v13, v10, v9))
        {
          break;
        }
      }

      v4 += 24;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }
  }

  v14 = a2[1];
  return *sub_1DED05C(a1) == 1 && v4 != v14;
}

uint64_t sub_195D804(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_73EBC(a1);
  if (v4 != v5)
  {
    v7 = *(v6 + 144) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    if (v8 >= 0)
    {
      v9 = *(v7 + 23);
    }

    else
    {
      v9 = *(v7 + 8);
    }

    if (v8 >= 0)
    {
      v10 = (*(v6 + 144) & 0xFFFFFFFFFFFFFFFELL);
    }

    else
    {
      v10 = *v7;
    }

    while (1)
    {
      v11 = *(v4 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v4 + 8);
      }

      if (v11 == v9)
      {
        v13 = v12 >= 0 ? v4 : *v4;
        if (!memcmp(v13, v10, v9))
        {
          break;
        }
      }

      v4 += 24;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }
  }

  v14 = v4 == a2[1];
  return v14 ^ sub_1DED46C(a1);
}

void sub_195D8C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = 0xA3784A062B2E43DBLL * ((v4 - *a1) >> 3);
  if (v6 > 1)
  {
    v39 = 0;
    v40 = 0uLL;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    if (v5 == v4)
    {
      goto LABEL_31;
    }

    v8 = 0;
    do
    {
      if (sub_195D73C(v5, (a2 + 1040)))
      {
        if (sub_195D804(v5, (a2 + 848)))
        {
          v9 = v37;
          if (v37 >= v38)
          {
            v10 = sub_195E9F0(&v36, v5);
          }

          else
          {
            sub_195EB38(v37, v5);
            v10 = v9 + 83;
          }

          v37 = v10;
        }

        else
        {
          v14 = v34;
          if (v34 >= v35)
          {
            v15 = sub_195E9F0(&v33, v5);
          }

          else
          {
            sub_195EB38(v34, v5);
            v15 = v14 + 83;
          }

          v34 = v15;
        }
      }

      else
      {
        v11 = sub_1DED534(v5);
        if (v11 >= v8 && !sub_1DED4F4(v5))
        {
          v12 = v40;
          if (v11 > v8)
          {
            v13 = v39;
            while (v12 != v13)
            {
              v12 -= 664;
              sub_196005C(v12);
            }

            *&v40 = v13;
            v12 = v13;
          }

          if (v12 >= *(&v40 + 1))
          {
            v16 = sub_195E9F0(&v39, v5);
          }

          else
          {
            sub_195EB38(v12, v5);
            v16 = v12 + 664;
          }

          *&v40 = v16;
          v8 = v11;
        }
      }

      v5 = (v5 + 664);
    }

    while (v5 != v4);
    if (v36 == v37)
    {
LABEL_31:
      v19 = v39;
      if (v33 == v34)
      {
        *a3 = v39;
        *(a3 + 8) = v40;
        v40 = 0uLL;
        v39 = 0;
LABEL_59:
        v30 = &v33;
        sub_1961C3C(&v30);
        v33 = &v36;
        sub_1961C3C(&v33);
        v36 = &v39;
        sub_1961C3C(&v36);
        return;
      }

      v18 = &v33;
      v17 = 1;
    }

    else
    {
      v17 = 0;
      v18 = &v36;
      v19 = v39;
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    v20 = v40;
    if (v19 != v40)
    {
      v21 = v17 ? &v33 : &v36;
      do
      {
        if (*sub_1DED05C(v19) && *sub_1DED05C(v19) != 1)
        {
          v24 = v31;
          if (v31 >= v32)
          {
            v25 = sub_195E9F0(&v30, v19);
          }

          else
          {
            sub_195EB38(v31, v19);
            v25 = v24 + 83;
          }

          v31 = v25;
        }

        else
        {
          v22 = v21[1];
          if (v22 >= v21[2])
          {
            v23 = sub_195E9F0(v18, v19);
          }

          else
          {
            sub_195EB38(v21[1], v19);
            v23 = (v22 + 83);
            v21[1] = v22 + 83;
          }

          v21[1] = v23;
        }

        v19 = (v19 + 664);
      }

      while (v19 != v20);
      v26 = v30;
      v27 = v31;
      if (v30 != v31)
      {
        v28 = v21[1];
        do
        {
          if (0xA3784A062B2E43DBLL * ((v28 - *v18) >> 3) >= *(a2 + 32))
          {
            break;
          }

          if (v28 >= v21[2])
          {
            v28 = sub_195E9F0(v18, v26);
          }

          else
          {
            sub_195EB38(v28, v26);
            v28 += 664;
            v21[1] = v28;
          }

          v21[1] = v28;
          v26 = (v26 + 664);
        }

        while (v26 != v27);
      }
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v29 = &v36;
    if (v17)
    {
      v29 = &v33;
    }

    sub_1961B64(a3, *v18, v29[1], 0xA3784A062B2E43DBLL * (v29[1] - *v18));
    v41 = &v30;
    sub_1961C3C(&v41);
    goto LABEL_59;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;

  sub_1961B64(a3, v5, v4, v6);
}

void sub_195DCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void ****a10, uint64_t a11, uint64_t a12, void ***a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v19 - 88) = &a10;
  sub_1961C3C((v19 - 88));
  a10 = &a13;
  sub_1961C3C(&a10);
  a13 = &a16;
  sub_1961C3C(&a13);
  a16 = &a19;
  sub_1961C3C(&a16);
  _Unwind_Resume(a1);
}

void sub_195DD48(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, int a8@<W7>, void *a9@<X8>, char a10)
{
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  if (*(a6 + 8) == *a6)
  {
    sub_6FAB4();
  }

  v32 = sub_20A7DEC(*a6);
  if (*(a6 + 8) == *a6)
  {
    sub_6FAB4();
  }

  v30 = *(*a6 + 64);
  v48 = 0;
  v49 = 0uLL;
  if (sub_1A2EB9C(a7))
  {
    sub_198AF58(a6, a7, a8, &v42);
    if (v48)
    {
      *&v49 = v48;
      operator delete(v48);
    }

    v18 = v42;
    v48 = v42;
    v49 = v43;
    v19 = v43;
    v31 = v42 != v43;
  }

  else
  {
    v31 = 0;
    v18 = v48;
    v19 = v49;
  }

  if (v18 == v19)
  {
    sub_198AE70(a6, a8, &v42);
    if (v48)
    {
      *&v49 = v48;
      operator delete(v48);
    }

    v18 = v42;
    v48 = v42;
    v49 = v43;
    v19 = v43;
  }

  if (v18 != v19)
  {
    sub_1A2E7C4(&v48, v47);
    sub_1A9BA80(a5, *a3, v47, 0, &v45);
    v21 = v45;
    v20 = v46;
    if (0xAAAAAAAAAAAAAAABLL * ((v46 - v45) >> 4) < 0xAAAAAAAAAAAAAAABLL * ((v47[1] - v47[0]) >> 3))
    {
      v22 = *(a2 + 1528);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_1961D34(&v42, *(a1 + 496), *(a1 + 504), *(a1 + 504) - *(a1 + 496));
        if (v43 >= 0)
        {
          v28 = &v42;
        }

        else
        {
          v28 = v42;
        }

        *buf = 136315138;
        v51 = v28;
        _os_log_debug_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "missing forward data - %s ", buf, 0xCu);
        if (SHIBYTE(v43) < 0)
        {
          operator delete(v42);
        }

        v21 = v45;
        v20 = v46;
      }
    }

    for (; v21 != v20; v21 += 48)
    {
      if (*(v21 + 23) < 0)
      {
        sub_325C(&v38, *v21, *(v21 + 8));
      }

      else
      {
        v23 = *v21;
        v39 = *(v21 + 16);
        v38 = v23;
      }

      if (*(v21 + 47) < 0)
      {
        sub_325C(&__p, *(v21 + 24), *(v21 + 32));
      }

      else
      {
        v24 = *(v21 + 24);
        v41 = *(v21 + 40);
        __p = v24;
      }

      sub_1961DE0(v34, a1);
      v35 = *(a1 + 488);
      memset(v36, 0, sizeof(v36));
      sub_1963658(v36, *(a1 + 496), *(a1 + 504), *(a1 + 504) - *(a1 + 496));
      sub_1963724(&v37, a1 + 520);
      sub_1963A80(v33, a2);
      v25 = *(a4 + 24);
      if (!v25)
      {
        sub_2B7420();
      }

      (*(*v25 + 48))(&v42);
      sub_196609C(v33);
      sub_19661E8(v34);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38);
      }

      if (v44 == 1)
      {
        if (a10)
        {
          sub_1DED48C(&v42, 5u);
          if (*(a6 + 8) == *a6)
          {
            sub_6FAB4();
          }

          sub_1DED47C(&v42, (*(*a6 + 8) - **a6) >> 5);
        }

        if (v31)
        {
          sub_1DED48C(&v42, 6u);
        }

        sub_1DED52C(&v42, v32);
        sub_1DED544(&v42, v30);
        v26 = a9[1];
        if (v26 >= a9[2])
        {
          v27 = sub_195E9F0(a9, &v42);
        }

        else
        {
          sub_195EB38(a9[1], &v42);
          v27 = v26 + 664;
        }

        a9[1] = v27;
        if (v44)
        {
          sub_196005C(&v42);
        }
      }
    }

    v42 = &v45;
    sub_1965604(&v42);
    v42 = v47;
    sub_195E3E8(&v42);
    v18 = v48;
  }

  if (v18)
  {
    *&v49 = v18;
    operator delete(v18);
  }
}

void sub_195E1C8(_Unwind_Exception *a1)
{
  STACK[0x998] = v2 - 200;
  sub_1965604(&STACK[0x998]);
  STACK[0x998] = v2 - 176;
  sub_195E3E8(&STACK[0x998]);
  v4 = *(v2 - 152);
  if (v4)
  {
    *(v2 - 144) = v4;
    operator delete(v4);
  }

  STACK[0x998] = v1;
  sub_1961C3C(&STACK[0x998]);
  _Unwind_Resume(a1);
}

void sub_195E2DC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_195CC74(a1, a2);
  }

  sub_1794();
}

uint64_t sub_195E328(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
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
        sub_325C(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 16) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_746A0(v9);
  return v4;
}

void sub_195E3E8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_35136C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_195E43C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v6;
  }

  *(a1 + 48) = *(a3 + 6);
  return a1;
}

void sub_195E4C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_195E4DC(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 sub_195E590(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  sub_1961B64(v4, *a2, *(a2 + 8), 0xA3784A062B2E43DBLL * ((*(a2 + 8) - *a2) >> 3));
  result = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  *(v4 + 72) = *(a2 + 72);
  *(v4 + 56) = v7;
  *(v4 + 40) = v6;
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 88;
  return result;
}

uint64_t sub_195E624(uint64_t a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_195E7B0(a1, v6);
  }

  v7 = 88 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_1961B64(v7, *a2, *(a2 + 8), 0xA3784A062B2E43DBLL * ((*(a2 + 8) - *a2) >> 3));
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  v10 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v10;
  *(v7 + 72) = v9;
  *(v7 + 56) = v8;
  *&v19 = v19 + 88;
  v11 = *(a1 + 8);
  v12 = v18 + *a1 - v11;
  sub_195E80C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_195E968(&v17);
  return v16;
}

void sub_195E79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_195E968(va);
  _Unwind_Resume(a1);
}

void sub_195E7B0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_195E80C(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v7 = *(v6 + 3);
      v8 = *(v6 + 5);
      v9 = *(v6 + 7);
      *(a4 + 72) = *(v6 + 9);
      *(a4 + 56) = v9;
      *(a4 + 40) = v8;
      *(a4 + 24) = v7;
      v6 += 11;
      a4 += 88;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      v15 = v5;
      sub_1961C3C(&v15);
      v5 += 11;
    }
  }

  return sub_195E8E4(v11);
}

uint64_t sub_195E8E4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_195E91C(a1);
  }

  return a1;
}

void sub_195E91C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 11;
    v3 = v1;
    sub_1961C3C(&v3);
  }
}

void **sub_195E968(void **a1)
{
  sub_195E99C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_195E99C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 88);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_1961C3C(&v5);
  }
}

uint64_t sub_195E9F0(uint64_t a1, __int128 *a2)
{
  v2 = 0xA3784A062B2E43DBLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x62B2E43DAFCEA6)
  {
    sub_1794();
  }

  if (0x46F0940C565C87B6 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x46F0940C565C87B6 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xA3784A062B2E43DBLL * ((*(a1 + 16) - *a1) >> 3) >= 0x3159721ED7E753)
  {
    v6 = 0x62B2E43DAFCEA6;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_195FCA4(a1, v6);
  }

  v13 = 0;
  v14 = 664 * v2;
  sub_195EB38(664 * v2, a2);
  v15 = 664 * v2 + 664;
  v7 = *(a1 + 8);
  v8 = 664 * v2 + *a1 - v7;
  sub_195FD00(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_19600F4(&v13);
  return v12;
}

void sub_195EB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19600F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_195EB38(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v4;
  sub_130D74C(a1 + 32, a2 + 2);
  if (*(a2 + 271) < 0)
  {
    sub_325C((a1 + 248), *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 33);
    *(a1 + 248) = v5;
  }

  *(a1 + 272) = *(a2 + 34);
  if (*(a2 + 303) < 0)
  {
    sub_325C((a1 + 280), *(a2 + 35), *(a2 + 36));
  }

  else
  {
    v6 = *(a2 + 280);
    *(a1 + 296) = *(a2 + 37);
    *(a1 + 280) = v6;
  }

  if (*(a2 + 327) < 0)
  {
    sub_325C((a1 + 304), *(a2 + 38), *(a2 + 39));
  }

  else
  {
    v7 = a2[19];
    *(a1 + 320) = *(a2 + 40);
    *(a1 + 304) = v7;
  }

  *(a1 + 328) = *(a2 + 328);
  sub_195ED2C(a1 + 336, (a2 + 21));
  v8 = *(a2 + 63);
  *(a1 + 496) = *(a2 + 62);
  *(a1 + 504) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_195F64C(a1 + 512, (a2 + 32));
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  sub_353184(a1 + 552, *(a2 + 69), *(a2 + 70), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 70) - *(a2 + 69)) >> 3));
  v9 = a2[37];
  *(a1 + 576) = a2[36];
  *(a1 + 592) = v9;
  sub_195F8F0(a1 + 608, (a2 + 38));
  *(a1 + 648) = *(a2 + 648);
  return a1;
}

void sub_195ECA0(_Unwind_Exception *a1)
{
  if (*(v1 + 303) < 0)
  {
    operator delete(*v2);
  }

  sub_195FC60(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t sub_195ED2C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_353184(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
  }

  if (*(a2 + 71) < 0)
  {
    sub_325C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
  }

  if (*(a2 + 95) < 0)
  {
    sub_325C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
  }

  if (*(a2 + 119) < 0)
  {
    sub_325C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v7 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v7;
  }

  v8 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v8;
  sub_195EEB8((a1 + 136), a2 + 136);
  return a1;
}

void sub_195EE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 72));
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  a10 = v10;
  sub_195E3E8(&a10);
  _Unwind_Resume(a1);
}

void *sub_195EEB8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_195EF10(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_195EF10(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_195EF98(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t sub_195EF98(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_195B1B8(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_195F02C();
  }

  return v3;
}

uint64_t sub_195F0AC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_11BD8(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_195F0F8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_195F170(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_195F3C4(a1, i + 4);
  }

  return a1;
}

void sub_195F170(uint64_t a1, size_t __n)
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

      sub_195F260(a1, prime);
    }
  }
}

void sub_195F260(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_195F3C4(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_195F5F0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_195F5F0(a1, *a2);
    sub_195F5F0(a1, a2[1]);
    sub_11BD8((a2 + 5));

    operator delete(a2);
  }
}

uint64_t sub_195F64C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_195F170(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_195F6C4(a1, i + 4);
  }

  return a1;
}

uint64_t *sub_195F6C4(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_195F8F0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_195F170(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_195F968(a1, i + 4);
  }

  return a1;
}

uint64_t *sub_195F968(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_195FB98(uint64_t a1)
{
  sub_195F5F0(a1 + 136, *(a1 + 144));
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = a1;
  sub_195E3E8(&v3);
  return a1;
}

uint64_t sub_195FC1C(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_195FC60(uint64_t a1)
{
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  return sub_130D8F4(a1);
}

void sub_195FCA4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x62B2E43DAFCEA7)
  {
    operator new();
  }

  sub_1808();
}

void sub_195FD00(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_195FD70(a4, v7);
      v7 = (v7 + 664);
      a4 = v8 + 664;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_196005C(v6);
      v6 += 664;
    }
  }
}

uint64_t sub_195FD70(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v4;
  sub_195FF4C(a1 + 32, (a2 + 2));
  v5 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 248) = v5;
  *(a2 + 31) = 0;
  *(a2 + 32) = 0;
  *(a2 + 33) = 0;
  *(a1 + 272) = *(a2 + 34);
  v6 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 37);
  *(a1 + 280) = v6;
  *(a2 + 36) = 0;
  *(a2 + 37) = 0;
  *(a2 + 35) = 0;
  v7 = a2[19];
  *(a1 + 320) = *(a2 + 40);
  *(a1 + 304) = v7;
  *(a2 + 39) = 0;
  *(a2 + 40) = 0;
  *(a2 + 38) = 0;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0;
  *(a1 + 336) = a2[21];
  *(a1 + 352) = *(a2 + 44);
  *(a2 + 42) = 0;
  *(a2 + 43) = 0;
  *(a2 + 44) = 0;
  v8 = *(a2 + 360);
  *(a1 + 376) = *(a2 + 47);
  *(a1 + 360) = v8;
  *(a2 + 46) = 0;
  *(a2 + 47) = 0;
  *(a2 + 45) = 0;
  v9 = a2[24];
  *(a1 + 400) = *(a2 + 50);
  *(a1 + 384) = v9;
  *(a2 + 49) = 0;
  *(a2 + 50) = 0;
  *(a2 + 48) = 0;
  v10 = *(a2 + 408);
  *(a1 + 424) = *(a2 + 53);
  *(a1 + 408) = v10;
  *(a2 + 51) = 0;
  *(a2 + 52) = 0;
  *(a2 + 53) = 0;
  v11 = a2[27];
  *(a1 + 448) = *(a2 + 56);
  *(a1 + 432) = v11;
  *(a2 + 54) = 0;
  *(a2 + 55) = 0;
  *(a2 + 56) = 0;
  v12 = *(a2 + 57);
  *(a1 + 464) = *(a2 + 116);
  *(a1 + 456) = v12;
  *(a1 + 472) = *(a2 + 59);
  v13 = a1 + 480;
  v14 = *(a2 + 60);
  v15 = *(a2 + 61);
  *(a1 + 480) = v14;
  *(a1 + 488) = v15;
  if (v15)
  {
    *(v14 + 16) = v13;
    *(a2 + 59) = a2 + 30;
    *(a2 + 60) = 0;
    *(a2 + 61) = 0;
  }

  else
  {
    *(a1 + 472) = v13;
  }

  *(a1 + 496) = a2[31];
  a2[31] = 0u;
  sub_195FFEC(a1 + 512, a2 + 64);
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 552) = *(a2 + 69);
  *(a1 + 560) = a2[35];
  *(a2 + 71) = 0;
  *(a2 + 552) = 0u;
  v16 = a2[37];
  *(a1 + 576) = a2[36];
  *(a1 + 592) = v16;
  sub_195FFEC(a1 + 608, a2 + 76);
  *(a1 + 648) = *(a2 + 648);
  return a1;
}

uint64_t sub_195FF4C(uint64_t a1, uint64_t a2)
{
  sub_130D288(a1, 0, 0);
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_130F658(a1, a2);
    }

    else
    {
      sub_130F56C(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_195FFEC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t sub_196005C(uint64_t a1)
{
  sub_11BD8(a1 + 608);
  v4 = (a1 + 552);
  sub_195E3E8(&v4);
  sub_11BD8(a1 + 512);
  v2 = *(a1 + 504);
  if (v2)
  {
    sub_1220A18(v2);
  }

  sub_195FB98(a1 + 336);
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  sub_130D8F4((a1 + 32));
  return a1;
}

uint64_t sub_19600F4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 664;
    sub_196005C(i - 664);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__int128 *sub_1960144(void *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xA3784A062B2E43DBLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xA3784A062B2E43DBLL * ((v10 - a2) >> 3)) >= a5)
      {
        v19 = 664 * a5;
        sub_1960380(a1, a2, a1[1], a2 + 664 * a5);
        v20 = (v7 + v19);
        v21 = v5;
        do
        {
          sub_1960A0C(v21, v7);
          v7 = (v7 + 664);
          v21 += 664;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = sub_19604E8(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          sub_1960380(a1, v5, v10, v5 + 664 * a5);
          v18 = v5;
          do
          {
            sub_1960A0C(v18, v7);
            v7 = (v7 + 664);
            v18 += 664;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5C87B5F9D4D1BC25 * ((v10 - *a1) >> 3);
      if (v12 > 0x62B2E43DAFCEA6)
      {
        sub_1794();
      }

      v13 = a2 - v11;
      v14 = 0xA3784A062B2E43DBLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x3159721ED7E753)
      {
        v15 = 0x62B2E43DAFCEA6;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        sub_195FCA4(a1, v15);
      }

      v22 = 8 * (v13 >> 3);
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = 664 * a5;
      v24 = v22 + 664 * a5;
      do
      {
        sub_195EB38(v22, v7);
        v22 += 664;
        v7 = (v7 + 664);
        v23 -= 664;
      }

      while (v23);
      v27 = v24;
      v5 = sub_196042C(a1, v26, v5);
      sub_19600F4(v26);
    }
  }

  return v5;
}

uint64_t sub_1960380(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = (a2 + v7 - a4);
  if (v8 >= a3)
  {
    result = *(a1 + 8);
  }

  else
  {
    result = *(a1 + 8);
    do
    {
      v11 = sub_195FD70(result, v8);
      v8 = (v8 + 664);
      result = v11 + 664;
    }

    while (v8 < a3);
  }

  *(a1 + 8) = result;
  if (v7 != a4)
  {
    v12 = v7 - 664;
    v13 = a4 - v7;
    v14 = (a2 + v7 - 664 - a4);
    do
    {
      result = sub_196056C(v12, v14);
      v12 -= 664;
      v14 = (v14 - 664);
      v13 += 664;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_196042C(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  sub_195FD00(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_195FD00(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_19604E8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_195EB38(a4, v6);
      v6 = (v6 + 664);
      a4 += 664;
      v7 -= 664;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1960548(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 664;
    do
    {
      v4 = sub_196005C(v4) - 664;
      v2 += 664;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_196056C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v4;
  sub_1960698(a1 + 32, (a2 + 2));
  *(a1 + 272) = *(a2 + 34);
  v5 = (a1 + 280);
  if (*(a1 + 303) < 0)
  {
    operator delete(*v5);
  }

  v6 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 37);
  *v5 = v6;
  *(a2 + 303) = 0;
  *(a2 + 280) = 0;
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  v7 = a2[19];
  *(a1 + 320) = *(a2 + 40);
  *(a1 + 304) = v7;
  *(a2 + 327) = 0;
  *(a2 + 304) = 0;
  *(a1 + 328) = *(a2 + 328);
  sub_1960750(a1 + 336, (a2 + 21));
  v8 = a2[31];
  *(a2 + 62) = 0;
  *(a2 + 63) = 0;
  v9 = *(a1 + 504);
  *(a1 + 496) = v8;
  if (v9)
  {
    sub_1220A18(v9);
  }

  sub_19608BC(a1 + 512, a2 + 64);
  sub_19609CC(a1 + 552);
  *(a1 + 552) = *(a2 + 69);
  *(a1 + 560) = a2[35];
  *(a2 + 71) = 0;
  *(a2 + 552) = 0u;
  v10 = a2[37];
  *(a1 + 576) = a2[36];
  *(a1 + 592) = v10;
  sub_19608BC(a1 + 608, a2 + 76);
  *(a1 + 648) = *(a2 + 648);
  return a1;
}

uint64_t sub_1960698(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_130F658(a1, a2);
    }

    else
    {
      sub_130F56C(a1, a2);
    }
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v6 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v6;
  *(a2 + 239) = 0;
  *(a2 + 216) = 0;
  return a1;
}

uint64_t sub_1960750(uint64_t a1, uint64_t a2)
{
  sub_19609CC(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v4 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v4;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v6 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v6;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v7 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v7;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  v8 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v8;
  sub_1960850(a1 + 136, (a2 + 136));
  return a1;
}

void sub_1960850(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_195F5F0(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void sub_19608BC(uint64_t a1, uint64_t *a2)
{
  sub_1960960(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *sub_1960960(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void sub_19609CC(uint64_t a1)
{
  if (*a1)
  {
    sub_35136C(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t sub_1960A0C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = v4;
  sub_130F56C(a1 + 32, (a2 + 2));
  std::string::operator=((a1 + 248), (a2 + 248));
  *(a1 + 272) = *(a2 + 34);
  std::string::operator=((a1 + 280), (a2 + 280));
  std::string::operator=((a1 + 304), (a2 + 19));
  *(a1 + 328) = *(a2 + 328);
  if (a1 != a2)
  {
    sub_74300((a1 + 336), *(a2 + 42), *(a2 + 43), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 43) - *(a2 + 42)) >> 3));
  }

  std::string::operator=((a1 + 360), a2 + 15);
  std::string::operator=((a1 + 384), a2 + 16);
  std::string::operator=((a1 + 408), a2 + 17);
  std::string::operator=((a1 + 432), a2 + 18);
  v5 = *(a2 + 116);
  *(a1 + 456) = *(a2 + 57);
  *(a1 + 464) = v5;
  if (a1 != a2)
  {
    sub_1960BE4((a1 + 472), *(a2 + 59), a2 + 60);
  }

  v7 = *(a2 + 62);
  v6 = *(a2 + 63);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 504);
  *(a1 + 496) = v7;
  *(a1 + 504) = v6;
  if (v8)
  {
    sub_1220A18(v8);
  }

  if (a1 == a2)
  {
    *(a1 + 576) = *(a2 + 72);
    v10 = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 584) = v10;
    *(a1 + 604) = *(a2 + 151);
  }

  else
  {
    *(a1 + 544) = *(a2 + 136);
    sub_1961570((a1 + 512), *(a2 + 66), 0);
    sub_74300((a1 + 552), *(a2 + 69), *(a2 + 70), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 70) - *(a2 + 69)) >> 3));
    *(a1 + 576) = *(a2 + 72);
    v9 = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 584) = v9;
    *(a1 + 604) = *(a2 + 151);
    *(a1 + 640) = *(a2 + 160);
    sub_1961710((a1 + 608), *(a2 + 78), 0);
  }

  *(a1 + 648) = *(a2 + 648);
  return a1;
}

uint64_t **sub_1960BE4(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1961430(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          if (v8 != v9)
          {
            *(v8 + 18) = *(v9 + 18);
            sub_1960DDC(v8 + 5, v9[7], 0);
            v8 = v14;
          }

          sub_1960D6C(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1961430(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_1961484(&v12);
  }

  if (a2 != a3)
  {
    sub_19614DC();
  }

  return result;
}

void sub_1960D58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1961484(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1960D6C(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 8))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_12235F4(a1, v3, v5, a2);
  return a2;
}

void sub_1960DDC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        *(v8 + 5) = *(a2 + 5);
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_1960EF0(a1, v9, v8 + 4);
        sub_1961050(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_19613A4();
  }
}

void sub_1960EBC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_1960EF0(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_1961138(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *sub_1961050(void *result, void *a2, void *a3)
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

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_1961138(uint64_t a1, size_t __n)
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

      sub_1961228(a1, prime);
    }
  }
}

void sub_1961228(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_1961430(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_1961484(uint64_t a1)
{
  sub_195F5F0(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_195F5F0(*a1, v2);
  }

  return a1;
}

void sub_1961570(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v8[3] = a2[3];
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_1960EF0(a1, v9, v8 + 4);
        sub_1961050(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_1961684();
  }
}

void sub_1961650(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_1961710(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_1960EF0(a1, v9, v8 + 4);
        sub_1961050(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_196181C();
  }
}

void sub_19617E8(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

__int128 *sub_19618A4(void *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xA3784A062B2E43DBLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xA3784A062B2E43DBLL * ((v10 - a2) >> 3)) >= a5)
      {
        v19 = 664 * a5;
        sub_1960380(a1, a2, a1[1], a2 + 664 * a5);
        v20 = (v7 + v19);
        v21 = v5;
        do
        {
          sub_1960A0C(v21, v7);
          v7 = (v7 + 664);
          v21 += 664;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = sub_1961AE0(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          sub_1960380(a1, v5, v10, v5 + 664 * a5);
          v18 = v5;
          do
          {
            sub_1960A0C(v18, v7);
            v7 = (v7 + 664);
            v18 += 664;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5C87B5F9D4D1BC25 * ((v10 - *a1) >> 3);
      if (v12 > 0x62B2E43DAFCEA6)
      {
        sub_1794();
      }

      v13 = a2 - v11;
      v14 = 0xA3784A062B2E43DBLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x3159721ED7E753)
      {
        v15 = 0x62B2E43DAFCEA6;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        sub_195FCA4(a1, v15);
      }

      v22 = 8 * (v13 >> 3);
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = 664 * a5;
      v24 = v22 + 664 * a5;
      do
      {
        sub_195EB38(v22, v7);
        v22 += 664;
        v7 = (v7 + 664);
        v23 -= 664;
      }

      while (v23);
      v27 = v24;
      v5 = sub_196042C(a1, v26, v5);
      sub_19600F4(v26);
    }
  }

  return v5;
}

uint64_t sub_1961AE0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_195EB38(a4, v6);
      v6 = (v6 + 664);
      a4 += 664;
      v7 -= 664;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1961B40(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 664;
    do
    {
      v4 = sub_196005C(v4) - 664;
      v2 += 664;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1961B64(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1961BEC(result, a4);
  }

  return result;
}

void sub_1961BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1961C3C(&a9);
  _Unwind_Resume(a1);
}

void sub_1961BEC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x62B2E43DAFCEA7)
  {
    sub_195FCA4(a1, a2);
  }

  sub_1794();
}

void sub_1961C3C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_196005C(v4 - 664);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1961CC0(void ***a1)
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
        v4 -= 11;
        v6 = v4;
        sub_1961C3C(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

_BYTE *sub_1961D34(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

uint64_t sub_1961DE0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1962074(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 5));
  sub_1962420((a1 + 24), a2 + 24);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_1962488(a1 + 128, *(a2 + 128), *(a2 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 136) - *(a2 + 128)) >> 5));
  v4 = *(a2 + 152);
  v5 = *(a2 + 168);
  v6 = *(a2 + 183);
  *(a1 + 192) = 0;
  *(a1 + 183) = v6;
  *(a1 + 168) = v5;
  *(a1 + 152) = v4;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  sub_19626BC(a1 + 192, *(a2 + 192), *(a2 + 200), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 200) - *(a2 + 192)) >> 4));
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  sub_19626BC(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 4));
  v7 = *(a2 + 240);
  *(a1 + 248) = 0;
  *(a1 + 240) = v7;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  sub_1963658(a1 + 248, *(a2 + 248), *(a2 + 256), *(a2 + 256) - *(a2 + 248));
  v8 = *(a2 + 272);
  v9 = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 272) = v8;
  *(a1 + 288) = v9;
  sub_1962E1C(a1 + 312, a2 + 312);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0;
  sub_19631E8(a1 + 400, *(a2 + 400), *(a2 + 408), (*(a2 + 408) - *(a2 + 400)) >> 3);
  sub_19632A0((a1 + 424), a2 + 424);
  *(a1 + 448) = *(a2 + 448);
  if (*(a2 + 487) < 0)
  {
    sub_325C((a1 + 464), *(a2 + 464), *(a2 + 472));
  }

  else
  {
    v10 = *(a2 + 464);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 464) = v10;
  }

  return a1;
}

void sub_1961F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_195A77C(v10 + 424, *(v10 + 432));
  v14 = *(v10 + 400);
  if (v14)
  {
    *(v10 + 408) = v14;
    operator delete(v14);
  }

  sub_1962034(v10 + 312);
  v15 = *v12;
  if (*v12)
  {
    *(v10 + 256) = v15;
    operator delete(v15);
  }

  sub_19635C0(v11);
  sub_1963608(v10 + 24);
  a10 = v10;
  sub_196232C(&a10);
  _Unwind_Resume(a1);
}

void sub_1961FF4(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1962D98(va);
  JUMPOUT(0x1961FD8);
}

void sub_1962010()
{
  if (*(v0 + 120) == 1)
  {
    sub_16E5B34(v0 + 24);
  }

  JUMPOUT(0x1961FE0);
}

uint64_t sub_1962034(uint64_t a1)
{
  sub_196318C(a1 + 56, *(a1 + 64));

  return sub_16C9ED4(a1);
}

uint64_t sub_1962074(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19620FC(result, a4);
  }

  return result;
}

void sub_19620DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_196232C(&a9);
  _Unwind_Resume(a1);
}

void sub_19620FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    sub_1962148(a1, a2);
  }

  sub_1794();
}

void sub_1962148(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_19621A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_1963724(v4, v6);
      v6 += 160;
      v4 = v11 + 160;
      v11 += 160;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1962244(v8);
  return v4;
}

uint64_t sub_1962244(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1962290(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1962290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v12[3] = v5;
    v12[4] = v6;
    v8 = a3;
    do
    {
      v9 = *(v8 - 24);
      if (v9)
      {
        *(v8 - 16) = v9;
        operator delete(v9);
      }

      v12[0] = (v8 - 72);
      sub_195E3E8(v12);
      v12[0] = (v8 - 96);
      sub_195E3E8(v12);
      v12[0] = (v8 - 120);
      sub_195E3E8(v12);
      v10 = *(v8 - 128);
      if (v10)
      {
        sub_1220A18(v10);
      }

      v11 = *(v8 - 144);
      if (v11)
      {
        sub_1220A18(v11);
      }

      v8 -= 160;
    }

    while (v8 != a5);
  }
}

void sub_196232C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1962380(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1962380(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 160)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v7 = (i - 72);
    sub_195E3E8(&v7);
    v7 = (i - 96);
    sub_195E3E8(&v7);
    v7 = (i - 120);
    sub_195E3E8(&v7);
    v5 = *(i - 128);
    if (v5)
    {
      sub_1220A18(v5);
    }

    v6 = *(i - 144);
    if (v6)
    {
      sub_1220A18(v6);
    }
  }

  a1[1] = v2;
}

_BYTE *sub_1962420(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[96] = 0;
  if (*(a2 + 96) == 1)
  {
    sub_16E5A88(a1);
    a1[96] = 1;
  }

  return a1;
}

void sub_1962468(_Unwind_Exception *exception_object)
{
  if (*(v1 + 96) == 1)
  {
    sub_16E5B34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1962488(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1962510(result, a4);
  }

  return result;
}

void sub_19624F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1962638(&a9);
  _Unwind_Resume(a1);
}

void sub_1962510(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_196255C(a1, a2);
  }

  sub_1794();
}

void sub_196255C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_19625B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_16E5A88(a4);
      v6 += 96;
      a4 += 96;
      v7 -= 96;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1962614(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 96;
    do
    {
      v4 = sub_16E5B34(v4) - 96;
      v2 += 96;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1962638(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_16E5B34(v4 - 96);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_19626BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1962744(result, a4);
  }

  return result;
}

void sub_1962724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1962D98(&a9);
  _Unwind_Resume(a1);
}

void sub_1962744(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_1962790(a1, a2);
  }

  sub_1794();
}

void sub_1962790(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_19627E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a2 + v7);
      v9 = a4 + v7;
      if (*(a2 + v7 + 23) < 0)
      {
        sub_325C(v9, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        *(v9 + 16) = *(v8 + 2);
        *v9 = v10;
      }

      sub_19628CC((a4 + v7 + 24), a2 + v7 + 24);
      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1962884(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      sub_1962D44(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19628CC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1962924(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1962924(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_19629AC(v5, v5 + 1, v4 + 4);
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

uint64_t sub_19629AC(void *a1, void *a2, void *a3)
{
  result = *sub_1962A30(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1962BC4();
  }

  return result;
}

uint64_t *sub_1962A30(void *a1, void *a2, void *a3, uint64_t *a4, void *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2 || (sub_BA6DC(a5, a2 + 4) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((sub_BA6DC(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((sub_BA6DC(a2 + 4, a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = a2 + 1;
  v13 = a2[1];
  if (v13)
  {
    v14 = a2[1];
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
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

  if ((sub_BA6DC(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return sub_122356C(a1, a3, a5);
}

void sub_1962C60(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1962C7C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1962C7C(uint64_t a1, void **__p)
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

void sub_1962CE0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1962CE0(a1, *a2);
    sub_1962CE0(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1962D44(uint64_t a1)
{
  sub_1962CE0(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1962D98(void ***a1)
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
        v4 -= 48;
        sub_1962D44(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1962E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_16C5BAC(a1, a2);
  sub_1962E68((v4 + 56), a2 + 56);
  return a1;
}

void *sub_1962E68(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1962EC0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1962EC0(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1962F48(v5, v5 + 1, v4 + 4);
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

uint64_t sub_1962F48(void *a1, void *a2, void *a3)
{
  v3 = *sub_1962A30(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_1962FDC();
  }

  return v3;
}

uint64_t sub_1963054(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1963134(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_19630A0(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
  }

  return a1;
}

void sub_1963118(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1963134(uint64_t a1)
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

void sub_196318C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_196318C(a1, *a2);
    sub_196318C(a1, a2[1]);
    sub_1963134((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_19631E8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1963264(result, a4);
  }

  return result;
}

void sub_1963248(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1963264(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1232E30(a1, a2);
  }

  sub_1794();
}

void *sub_19632A0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_19632F8(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_19632F8(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1963380(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t sub_1963380(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_1963418(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1963418(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
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
    if (*(v10 + 7) < *a5)
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
          v18 = *(v16 + 28);
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

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
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

void **sub_19635C0(void **a1)
{
  v3 = a1 + 3;
  sub_1962D98(&v3);
  v3 = a1;
  sub_1962D98(&v3);
  return a1;
}

uint64_t sub_1963608(uint64_t a1)
{
  v3 = (a1 + 104);
  sub_1962638(&v3);
  if (*(a1 + 96) == 1)
  {
    sub_16E5B34(a1);
  }

  return a1;
}

uint64_t sub_1963658(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_19636D4(result, a4);
  }

  return result;
}

void sub_19636B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19636D4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_1794();
}

uint64_t sub_1963724(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_353184(a1 + 40, *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_353184(a1 + 64, *(a2 + 64), *(a2 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_353184(a1 + 88, *(a2 + 88), *(a2 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 96) - *(a2 + 88)) >> 3));
  v6 = *(a2 + 112);
  v7 = *(a2 + 128);
  *(a1 + 136) = 0;
  *(a1 + 128) = v7;
  *(a1 + 112) = v6;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_19638B4(a1 + 136, *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 2);
  return a1;
}

void sub_1963854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_195E3E8(va);
  sub_195E3E8(va);
  sub_195E3E8(va);
  v4 = *(v2 + 32);
  if (v4)
  {
    sub_1220A18(v4);
  }

  v5 = *(v2 + 16);
  if (v5)
  {
    sub_1220A18(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19638B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1963930(result, a4);
  }

  return result;
}

void sub_1963914(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1963930(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_196396C(a1, a2);
  }

  sub_1794();
}

void sub_196396C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_19639B4(uint64_t a1)
{
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  sub_195A77C(a1 + 424, *(a1 + 432));
  v2 = *(a1 + 400);
  if (v2)
  {
    *(a1 + 408) = v2;
    operator delete(v2);
  }

  sub_196318C(a1 + 368, *(a1 + 376));
  sub_16C9ED4(a1 + 312);
  v3 = *(a1 + 248);
  if (v3)
  {
    *(a1 + 256) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 216);
  sub_1962D98(&v5);
  v5 = (a1 + 192);
  sub_1962D98(&v5);
  v5 = (a1 + 128);
  sub_1962638(&v5);
  if (*(a1 + 120) == 1)
  {
    sub_16E5B34(a1 + 24);
  }

  v5 = a1;
  sub_196232C(&v5);
  return a1;
}

uint64_t sub_1963A80(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_1963D78(a1 + 8, (a2 + 8));
  *(a1 + 1200) = *(a2 + 1200);
  v4 = *(a2 + 1208);
  *(a1 + 1208) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1965774(a1 + 1216, a2 + 1216);
  sub_1965774(a1 + 1256, a2 + 1256);
  sub_1965C4C(a1 + 1296, (a2 + 1296));
  *(a1 + 1480) = 0;
  *(a1 + 1464) = 0u;
  sub_1962488(a1 + 1464, *(a2 + 1464), *(a2 + 1472), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1472) - *(a2 + 1464)) >> 5));
  v5 = *(a2 + 1488);
  v6 = *(a2 + 1504);
  v7 = *(a2 + 1520);
  *(a1 + 1536) = *(a2 + 1536);
  *(a1 + 1520) = v7;
  *(a1 + 1504) = v6;
  *(a1 + 1488) = v5;
  *(a1 + 1544) = 0;
  *(a1 + 1560) = 0;
  if (*(a2 + 1560) == 1)
  {
    *(a1 + 1544) = *(a2 + 1544);
    v8 = *(a2 + 1552);
    *(a1 + 1552) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1560) = 1;
  }

  *(a1 + 1568) = *(a2 + 1568);
  v9 = *(a2 + 1576);
  *(a1 + 1576) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1584) = 0;
  *(a1 + 1600) = 0;
  if (*(a2 + 1600) == 1)
  {
    *(a1 + 1584) = *(a2 + 1584);
    v10 = *(a2 + 1592);
    *(a1 + 1592) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1600) = 1;
  }

  *(a1 + 1608) = *(a2 + 1608);
  v11 = *(a2 + 1616);
  *(a1 + 1616) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1624) = 0;
  *(a1 + 1640) = 0;
  if (*(a2 + 1640) == 1)
  {
    *(a1 + 1624) = *(a2 + 1624);
    v12 = *(a2 + 1632);
    *(a1 + 1632) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 1640) = 1;
  }

  *(a1 + 1648) = *(a2 + 1648);
  v13 = *(a2 + 1656);
  *(a1 + 1656) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = (a1 + 1664);
  if (*(a2 + 1687) < 0)
  {
    sub_325C(v14, *(a2 + 1664), *(a2 + 1672));
  }

  else
  {
    v15 = *(a2 + 1664);
    *(a1 + 1680) = *(a2 + 1680);
    *v14 = v15;
  }

  *(a1 + 1688) = *(a2 + 1688);
  return a1;
}

void sub_1963CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 1656);
  if (v4)
  {
    sub_1220A18(v4);
  }

  if (*(v2 + 1640) == 1)
  {
    v5 = *(v2 + 1632);
    if (v5)
    {
      sub_1220A18(v5);
    }
  }

  v6 = *(v2 + 1616);
  if (v6)
  {
    sub_1220A18(v6);
  }

  if (*(v2 + 1600) == 1)
  {
    v7 = *(v2 + 1592);
    if (v7)
    {
      sub_1220A18(v7);
    }
  }

  v8 = *(v2 + 1576);
  if (v8)
  {
    sub_1220A18(v8);
  }

  if (*(v2 + 1560) == 1)
  {
    v9 = *(v2 + 1552);
    if (v9)
    {
      sub_1220A18(v9);
    }
  }

  sub_1962638(va);
  sub_1965E30(v2 + 1296);
  sub_1965BCC(v2 + 1256);
  sub_1965BCC(v2 + 1216);
  v10 = *(v2 + 1208);
  if (v10)
  {
    sub_1220A18(v10);
  }

  sub_1965ECC(v2 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1963D78(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 28);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 28) = v5;
  v6 = *(a2 + 44);
  v7 = *(a2 + 60);
  v8 = *(a2 + 76);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 76) = v8;
  *(a1 + 60) = v7;
  *(a1 + 44) = v6;
  v9 = *(a2 + 108);
  v10 = *(a2 + 124);
  v11 = *(a2 + 140);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 140) = v11;
  *(a1 + 124) = v10;
  *(a1 + 108) = v9;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  sub_353184(a1 + 176, a2[22], a2[23], 0xAAAAAAAAAAAAAAABLL * ((a2[23] - a2[22]) >> 3));
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_353184(a1 + 200, a2[25], a2[26], 0xAAAAAAAAAAAAAAABLL * ((a2[26] - a2[25]) >> 3));
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_353184(a1 + 224, a2[28], a2[29], 0xAAAAAAAAAAAAAAABLL * ((a2[29] - a2[28]) >> 3));
  *(a1 + 248) = *(a2 + 31);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  sub_1964538(a1 + 264, a2[33], a2[34], 0x6DB6DB6DB6DB6DB7 * ((a2[34] - a2[33]) >> 3));
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  sub_1964774(a1 + 288, a2[36], a2[37], 0xCCCCCCCCCCCCCCCDLL * ((a2[37] - a2[36]) >> 4));
  v12 = *(a2 + 39);
  v13 = *(a2 + 43);
  v14 = a2[45];
  *(a1 + 328) = *(a2 + 41);
  *(a1 + 344) = v13;
  *(a1 + 312) = v12;
  *(a1 + 360) = v14;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  sub_353184(a1 + 368, a2[46], a2[47], 0xAAAAAAAAAAAAAAABLL * ((a2[47] - a2[46]) >> 3));
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  sub_353184(a1 + 392, a2[49], a2[50], 0xAAAAAAAAAAAAAAABLL * ((a2[50] - a2[49]) >> 3));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  sub_353184(a1 + 416, a2[52], a2[53], 0xAAAAAAAAAAAAAAABLL * ((a2[53] - a2[52]) >> 3));
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  sub_353184(a1 + 440, a2[55], a2[56], 0xAAAAAAAAAAAAAAABLL * ((a2[56] - a2[55]) >> 3));
  sub_19649A8((a1 + 464), a2 + 58);
  sub_19649A8((a1 + 488), a2 + 61);
  sub_19649A8((a1 + 512), a2 + 64);
  sub_19649A8((a1 + 536), a2 + 67);
  *(a1 + 560) = *(a2 + 35);
  v15 = *(a2 + 36);
  v16 = *(a2 + 37);
  v17 = *(a2 + 38);
  *(a1 + 622) = *(a2 + 622);
  *(a1 + 592) = v16;
  *(a1 + 608) = v17;
  *(a1 + 576) = v15;
  *(a1 + 632) = 0;
  *(a1 + 648) = 0;
  *(a1 + 640) = 0;
  sub_1964BBC(a1 + 632, a2[79], a2[80], 0xAAAAAAAAAAAAAAABLL * ((a2[80] - a2[79]) >> 4));
  sub_1964ED0(a1 + 656, (a2 + 82));
  *(a1 + 696) = *(a2 + 174);
  *(a1 + 704) = 0;
  *(a1 + 720) = 0;
  *(a1 + 712) = 0;
  sub_1964BBC(a1 + 704, a2[88], a2[89], 0xAAAAAAAAAAAAAAABLL * ((a2[89] - a2[88]) >> 4));
  *(a1 + 744) = 0;
  *(a1 + 728) = 0u;
  sub_1964BBC(a1 + 728, a2[91], a2[92], 0xAAAAAAAAAAAAAAABLL * ((a2[92] - a2[91]) >> 4));
  *(a1 + 768) = 0;
  *(a1 + 752) = 0u;
  sub_353184(a1 + 752, a2[94], a2[95], 0xAAAAAAAAAAAAAAABLL * ((a2[95] - a2[94]) >> 3));
  *(a1 + 792) = 0;
  *(a1 + 776) = 0u;
  sub_1964BBC(a1 + 776, a2[97], a2[98], 0xAAAAAAAAAAAAAAABLL * ((a2[98] - a2[97]) >> 4));
  v18 = *(a2 + 50);
  v19 = *(a2 + 51);
  *(a1 + 832) = *(a2 + 208);
  *(a1 + 800) = v18;
  *(a1 + 816) = v19;
  *(a1 + 840) = 0;
  *(a1 + 856) = 0;
  *(a1 + 848) = 0;
  sub_353184(a1 + 840, a2[105], a2[106], 0xAAAAAAAAAAAAAAABLL * ((a2[106] - a2[105]) >> 3));
  v20 = a2[108];
  *(a1 + 869) = *(a2 + 869);
  *(a1 + 864) = v20;
  *(a1 + 880) = 0;
  *(a1 + 896) = 0;
  *(a1 + 888) = 0;
  sub_1965444(a1 + 880, a2[110], a2[111], 0xAAAAAAAAAAAAAAABLL * ((a2[111] - a2[110]) >> 4));
  *(a1 + 920) = 0;
  *(a1 + 904) = 0u;
  sub_353184(a1 + 904, a2[113], a2[114], 0xAAAAAAAAAAAAAAABLL * ((a2[114] - a2[113]) >> 3));
  sub_19649A8((a1 + 928), a2 + 116);
  sub_19649A8((a1 + 952), a2 + 119);
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 984) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 992) = 0;
  sub_1965688(a1 + 984, a2[123], a2[124], (a2[124] - a2[123]) >> 3);
  *(a1 + 1024) = 0;
  *(a1 + 1008) = 0u;
  sub_353184(a1 + 1008, a2[126], a2[127], 0xAAAAAAAAAAAAAAABLL * ((a2[127] - a2[126]) >> 3));
  *(a1 + 1048) = 0;
  *(a1 + 1032) = 0u;
  sub_353184(a1 + 1032, a2[129], a2[130], 0xAAAAAAAAAAAAAAABLL * ((a2[130] - a2[129]) >> 3));
  v21 = *(a2 + 66);
  v22 = *(a2 + 67);
  *(a1 + 1088) = *(a2 + 272);
  *(a1 + 1072) = v22;
  *(a1 + 1056) = v21;
  sub_19656FC(a1 + 1096, (a2 + 137));
  v23 = *(a2 + 71);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1136) = v23;
  sub_19649A8((a1 + 1160), a2 + 145);
  *(a1 + 1184) = *(a2 + 1184);
  return a1;
}

void sub_19642D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_23D9C(v23 + 1096);
  *(v29 - 88) = v22;
  sub_195E3E8((v29 - 88));
  *(v29 - 88) = v24;
  sub_195E3E8((v29 - 88));
  v31 = *v27;
  if (*v27)
  {
    *(v23 + 992) = v31;
    operator delete(v31);
  }

  sub_7E724(v23 + 952, *(v23 + 960));
  sub_7E724(v23 + 928, *(v23 + 936));
  *(v29 - 88) = v25;
  sub_195E3E8((v29 - 88));
  *(v29 - 88) = v21;
  sub_1965604((v29 - 88));
  *(v29 - 88) = a9;
  sub_195E3E8((v29 - 88));
  *(v29 - 88) = v28;
  sub_1964E4C((v29 - 88));
  *(v29 - 88) = a10;
  sub_195E3E8((v29 - 88));
  *(v29 - 88) = v26;
  sub_1964E4C((v29 - 88));
  *(v29 - 88) = a11;
  sub_1964E4C((v29 - 88));
  sub_19653BC(v23 + 656);
  *(v29 - 88) = a12;
  sub_1964E4C((v29 - 88));
  sub_7E724(v23 + 536, *(v23 + 544));
  sub_7E724(v23 + 512, *(v23 + 520));
  sub_7E724(v23 + 488, *(v23 + 496));
  sub_7E724(v23 + 464, *(v23 + 472));
  *(v29 - 88) = a13;
  sub_195E3E8((v29 - 88));
  *(v29 - 88) = a14;
  sub_195E3E8((v29 - 88));
  *(v29 - 88) = a15;
  sub_195E3E8((v29 - 88));
  *(v29 - 88) = a16;
  sub_195E3E8((v29 - 88));
  *(v29 - 88) = a17;
  sub_1964924((v29 - 88));
  *(v29 - 88) = a18;
  sub_19646F0((v29 - 88));
  *(v29 - 88) = a19;
  sub_195E3E8((v29 - 88));
  *(v29 - 88) = a20;
  sub_195E3E8((v29 - 88));
  *(v29 - 88) = a21;
  sub_195E3E8((v29 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_1964538(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19645C0(result, a4);
  }

  return result;
}

void sub_19645A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_19646F0(&a9);
  _Unwind_Resume(a1);
}

void sub_19645C0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_1964610(a1, a2);
  }

  sub_1794();
}

void sub_1964610(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_196466C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_1646474(a4, v6);
      v6 += 56;
      a4 += 56;
      v7 -= 56;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_19646CC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 56;
    do
    {
      v4 = sub_1646520(v4) - 56;
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19646F0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_1646520(v4 - 56);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1964774(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19647FC(result, a4);
  }

  return result;
}

void sub_19647DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1964924(&a9);
  _Unwind_Resume(a1);
}

void sub_19647FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    sub_1964848(a1, a2);
  }

  sub_1794();
}

void sub_1964848(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_19648A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_1646E00(a4, v6);
      v6 += 80;
      a4 += 80;
      v7 -= 80;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1964900(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 80;
    do
    {
      v4 = sub_1646EB8(v4) - 80;
      v2 += 80;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1964924(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_1646EB8(v4 - 80);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_19649A8(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1964A00(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_1964A00(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1964A88(v5, (v5 + 8), v4 + 4);
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

uint64_t sub_1964A88(uint64_t **a1, uint64_t *a2, const void **a3)
{
  result = *sub_598318(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1964B0C();
  }

  return result;
}

void sub_1964BA0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1962C7C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1964BBC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1964C44(result, a4);
  }

  return result;
}

void sub_1964C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1964E4C(&a9);
  _Unwind_Resume(a1);
}

void sub_1964C44(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_1964C90(a1, a2);
  }

  sub_1794();
}

void sub_1964C90(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1964CE8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_1964D70(a4, v6);
      v6 += 3;
      a4 += 48;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1964D48(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    do
    {
      sub_1964E04(v4);
      v4 -= 48;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1964D70(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_353184(a1 + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return a1;
}

void sub_1964DE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1964E04(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_195E3E8(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1964E4C(void ***a1)
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
        v4 -= 48;
        sub_1964E04(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1964ED0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_1964F48(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1965038(a1, i + 2);
  }

  return a1;
}

void sub_1964F48(uint64_t a1, size_t __n)
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

      sub_B07C(a1, prime);
    }
  }
}

const void **sub_1965038(void *a1, const void **a2)
{
  v4 = sub_1220A84(a1, a2);
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
    sub_1965298();
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

  if (!sub_1220AC4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1965274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1965358(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_196533C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1965358(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1965358(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_19653BC(uint64_t a1)
{
  sub_19653F8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_19653F8(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1965444(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19654CC(result, a4);
  }

  return result;
}

void sub_19654AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1965604(&a9);
  _Unwind_Resume(a1);
}

void sub_19654CC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_1965518(a1, a2);
  }

  sub_1794();
}

void sub_1965518(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1965570(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
  }

  return a1;
}

void sub_19655E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1965604(void ***a1)
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
        v4 -= 48;
        sub_1963134(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1965688(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1963264(result, a4);
  }

  return result;
}

void sub_19656E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19656FC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_1964F48(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_23914(a1, (i + 2));
  }

  return a1;
}

uint64_t sub_1965774(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_195F170(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_19657EC(a1, i + 2);
  }

  return a1;
}

const void **sub_19657EC(void *a1, const void **a2)
{
  v4 = sub_1220A84(a1, a2);
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
    sub_1965A48();
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

  if (!sub_1220AC4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1965A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1965AC4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1965AC4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1965B78(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1965B10(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  v5 = *(a2 + 4);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1965B78(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1220A18(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_1965BCC(uint64_t a1)
{
  sub_1965C08(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1965C08(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1965B78((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1965C4C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_353184(a1 + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_353184(a1 + 48, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_353184(a1 + 72, *(a2 + 9), *(a2 + 10), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 10) - *(a2 + 9)) >> 3));
  if (*(a2 + 119) < 0)
  {
    sub_325C((a1 + 96), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v5 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v5;
  }

  if (*(a2 + 143) < 0)
  {
    sub_325C((a1 + 120), *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 120) = v6;
  }

  if (*(a2 + 167) < 0)
  {
    sub_325C((a1 + 144), *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v7 = a2[9];
    *(a1 + 160) = *(a2 + 20);
    *(a1 + 144) = v7;
  }

  return a1;
}