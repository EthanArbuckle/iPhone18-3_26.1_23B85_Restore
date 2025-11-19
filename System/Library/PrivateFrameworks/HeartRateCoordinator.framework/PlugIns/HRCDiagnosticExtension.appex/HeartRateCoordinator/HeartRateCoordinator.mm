void sub_100000E2C(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000EE4;
  block[3] = &unk_100008340;
  v5 = a2;
  v7 = *(a1 + 40);
  v6 = *(a1 + 32);
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100000EE4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = sub_10000391C();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000039E4(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v7[0] = 67240192;
    v7[1] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set audio accessory limited logging to: %{public,BOOL}d", v7, 8u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000014B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001538(uint64_t a1, char a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001604;
  block[3] = &unk_100008390;
  v9 = a3;
  v11 = a2;
  v7 = *(a1 + 32);
  v5 = v7;
  v10 = v7;
  v6 = v9;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100001604(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = sub_10000391C();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100003A9C(v2);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7[0] = 67240192;
      v7[1] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Limited logging state query result: %{public,BOOL}d", v7, 8u);
    }

    *(*(*(a1 + 48) + 8) + 24) = *(a1 + 56);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100001E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001EA4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void sub_100001EC4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 0;
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void sub_100002000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

std::__fs::filesystem::path *sub_10000206C@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000029B8(a3, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  return sub_100002940(a3, this);
}

void sub_1000020C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100002178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100002730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a16)
  {
    sub_100002B4C(a16);
  }

  if (a22)
  {
    sub_100002B4C(a22);
  }

  if (a36 == 1 && a28 < 0)
  {
    operator delete(__p);
  }

  __p = (v37 - 128);
  sub_100003078(&__p);

  _Unwind_Resume(a1);
}

uint64_t sub_100002830(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100002CCC(a1, a2);
  }

  else
  {
    sub_100002C54(a1, a2);
    result = v3 + 80;
  }

  *(a1 + 8) = result;
  return result;
}

char *sub_100002870(char *__dst, std::string *__str)
{
  if (__dst[80] == 1)
  {
    std::string::operator=(__dst, __str);
    v4 = *(&__str[2].__r_.__value_.__r.__words[1] + 2);
    v5 = *&__str[2].__r_.__value_.__l.__data_;
    *(__dst + 2) = *&__str[1].__r_.__value_.__r.__words[1];
    *(__dst + 3) = v5;
    *(__dst + 58) = v4;
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000029B8(__dst, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v6 = *&__str->__r_.__value_.__l.__data_;
      *(__dst + 2) = *(&__str->__r_.__value_.__l + 2);
      *__dst = v6;
    }

    v7 = *&__str[1].__r_.__value_.__r.__words[1];
    v8 = *&__str[2].__r_.__value_.__r.__words[2];
    *(__dst + 3) = *&__str[2].__r_.__value_.__l.__data_;
    *(__dst + 4) = v8;
    *(__dst + 2) = v7;
    __dst[80] = 1;
  }

  return __dst;
}

BOOL sub_100002904(const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) == 0;
}

std::__fs::filesystem::path *sub_100002940(std::__fs::filesystem::path *a1, std::__fs::filesystem::path *this)
{
  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    std::string::operator=(&a1->__pn_, &this->__pn_);
  }

  else
  {
    if (std::__fs::filesystem::path::__filename(a1).__size_)
    {
      std::string::push_back(&a1->__pn_, 47);
    }

    v4 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v4 >= 0)
    {
      size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__pn_.__r_.__value_.__l.__size_;
    }

    std::string::append(&a1->__pn_, v5, size);
  }

  return a1;
}

void *sub_1000029B8(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100002A5C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_100002A74(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100002AD0(exception, a1);
}

std::logic_error *sub_100002AD0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100002B04()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100002B4C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_100002BB8(std::__fs::filesystem::path *a1, std::error_code *__ec)
{
  if (((1 << a1[3].__pn_.__r_.__value_.__s.__data_[1]) & 0x53) != 0)
  {
    std::__fs::filesystem::__status(a1, __ec);
    LOBYTE(v4) = v7;
  }

  else
  {
    v4 = a1[3].__pn_.__r_.__value_.__s.__data_[0];
    if (__ec)
    {
      if ((v4 - 255) > 0xFFFFFF01)
      {
        __ec->__val_ = 0;
        __ec->__cat_ = std::system_category();
      }

      else
      {
        v5 = std::generic_category();
        *&__ec->__val_ = 2;
        __ec->__cat_ = v5;
        LOBYTE(v4) = a1[3].__pn_.__r_.__value_.__s.__data_[0];
      }
    }
  }

  return v4;
}

__n128 sub_100002C54(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_1000029B8(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = a2[2];
  v7 = a2[4];
  *(v4 + 48) = a2[3];
  *(v4 + 64) = v7;
  *(v4 + 32) = result;
  *(a1 + 8) = v4 + 80;
  return result;
}

uint64_t sub_100002CCC(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_100002E30();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    sub_100002E48(a1, v6);
  }

  v7 = 80 * v2;
  v19 = 0;
  v20 = v7;
  v21 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_1000029B8(v7, *a2, *(a2 + 1));
    v9 = v20;
    v10 = v21;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v12 = a2[3];
  v11 = a2[4];
  *(v7 + 32) = a2[2];
  *(v7 + 48) = v12;
  *(v7 + 64) = v11;
  *&v21 = v10 + 80;
  v13 = *(a1 + 8);
  v14 = v9 + *a1 - v13;
  sub_100002EA0(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_100002FE4(&v19);
  return v18;
}

void sub_100002E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100002FE4(va);
  _Unwind_Resume(a1);
}

void sub_100002E48(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_100002B04();
}

uint64_t sub_100002EA0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = v6[2];
      v9 = v6[4];
      *(a4 + 48) = v6[3];
      *(a4 + 64) = v9;
      *(a4 + 32) = v8;
      v6 += 5;
      a4 += 80;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 5;
    }
  }

  return sub_100002F64(v11);
}

uint64_t sub_100002F64(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100002F9C(a1);
  }

  return a1;
}

void sub_100002F9C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 57);
    v1 -= 10;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_100002FE4(uint64_t a1)
{
  sub_10000301C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10000301C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 10;
      *(a1 + 16) = v2 - 10;
      if (*(v2 - 57) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_100003078(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000030CC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000030CC(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 57);
    v3 -= 10;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

std::string *sub_10000311C(std::string *this, std::string **a2)
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
  sub_10000317C(this, v3, v4);
  return this;
}

void sub_100003160(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10000317C(std::string *this, std::string *__src, std::string *a3)
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
    sub_1000032F4(__p, __src, a3, v7);
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

void sub_1000032D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000032F4(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100002A5C();
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

std::string *sub_1000033A4(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  sub_10000317C(this, a2, v3);
  return this;
}

void sub_1000033E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100003488(uint64_t a1, const std::__fs::filesystem::path *a2)
{
  sub_100003580(a2, __p);
  if (SHIBYTE(v5) < 0)
  {
    sub_1000029B8(__dst, __p[0], __p[1]);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *__dst = *__p;
    v7 = v5;
  }

  v2 = sub_100003648(__dst, "AccessoryHR");
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__dst[0]);
  }

  return v2;
}

void sub_100003518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100003534(uint64_t a1, uint64_t a2)
{
  if (sub_1000037E0(a2, &off_100008488))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_100003580@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__filename(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100002A5C();
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

BOOL sub_100003648(uint64_t *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    v6 = a1;
    a1 = *a1;
    v5 = v6[1];
  }

  v8[0] = a1;
  v8[1] = v5;
  return sub_10000369C(v8, __s, v4);
}

uint64_t sub_1000036E0(void *a1, unint64_t a2, size_t a3, void *__s2, size_t a5)
{
  v5 = a1[1];
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    sub_100003750("string_view::substr");
  }

  if (v7 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  if (a5 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = a5;
  }

  LODWORD(result) = memcmp((*a1 + a2), __s2, v10);
  if (v9 < a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  if (v9 == a5)
  {
    v12 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v12;
  }
}

void sub_100003750(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000037AC(exception, a1);
}

std::logic_error *sub_1000037AC(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

BOOL sub_1000037E0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100003834(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1000038B4()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t *sub_10000390C(uint64_t *result)
{
  v1 = *(result + 23);
  v2 = *result;
  return result;
}

id sub_10000391C()
{
  if (qword_10000C1E0 != -1)
  {
    sub_100003D20();
  }

  v1 = qword_10000C1E8;

  return v1;
}

void sub_100003960(id a1)
{
  qword_10000C1E8 = os_log_create("com.apple.HeartRateCoordinator", "HRCDiagnosticExtension");

  _objc_release_x1();
}

void sub_1000039E4(uint64_t *a1)
{
  v6 = *a1;
  sub_100003900();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100003A9C(uint64_t *a1)
{
  v6 = *a1;
  sub_100003900();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100003B54()
{
  if (__cxa_guard_acquire(&qword_10000C1B8))
  {
    qword_10000C1C0 = off_100008418;
    qword_10000C1D8 = &qword_10000C1C0;
    __cxa_atexit(sub_100002194, &qword_10000C1C0, &_mh_execute_header);
    __cxa_guard_release(&qword_10000C1B8);
  }
}

void sub_100003BCC(uint64_t a1)
{
  v2 = sub_10000390C(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136446210;
  *(v3 + 4) = v9;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error iterating directory: %{public}s", v5, 0xCu);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_100003C38(uint64_t a1)
{
  v2 = sub_10000390C(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136446210;
  *(v3 + 4) = v9;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error checking if directory exists: %{public}s", v5, 0xCu);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_100003CA4(uint64_t *a1)
{
  sub_10000390C(a1);
  sub_100003900();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
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

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__root_directory(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::__fs::filesystem::file_time_type std::__fs::filesystem::__last_write_time(const std::__fs::filesystem::path *a1, std::error_code *__ec)
{
  v4.__d_.__rep_ = std::__fs::filesystem::__last_write_time(a1, __ec).__d_.__rep_;
  v3 = *(&v4.__d_.__rep_ + 1);
  v2 = *&v4.__d_.__rep_;
  *(&result.__d_.__rep_ + 1) = v3;
  *&result.__d_.__rep_ = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}