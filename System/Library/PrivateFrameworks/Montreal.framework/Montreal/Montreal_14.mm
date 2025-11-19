void sub_19D3BAEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (a21 < 0)
    {
LABEL_5:
      operator delete(a16);
      _Unwind_Resume(a1);
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

BOOL sub_19D3BAF40(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_19D2AEA14();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_19D3BAFCC(const char *a1, const char **a2)
{
  sub_19D2AE334(&v8);
  v4 = strlen(a1);
  sub_19D2AE554(&v8, a1, v4);
  v5 = *a2;
  v6 = strlen(v5);
  sub_19D2AE554(&v8, v5, v6);
  std::stringbuf::str();
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x19EAFA410](&v12);
}

void sub_19D3BB148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

void sub_19D3BB15C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

std::logic_error *sub_19D3BB170(std::logic_error *a1, const std::string *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C8] + 16);
  return result;
}

const void **sub_19D3BB1B4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_19D3BB1E8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_19D3BB21C(void *a1@<X0>, void *a2@<X8>)
{
  sub_19D370C7C(&__p, a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_19D3BB80C(__p, v8, a2);
  v3 = __p;
  if (__p)
  {
    v4 = v8;
    v5 = __p;
    if (v8 != __p)
    {
      do
      {
        v6 = *(v4 - 25);
        v4 -= 6;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = __p;
    }

    v8 = v3;
    operator delete(v5);
  }
}

void sub_19D3BB2AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2AD850(v2);
  sub_19D36EE34(va);
  _Unwind_Resume(a1);
}

void sub_19D3BB2C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_19D370EB8(&__p, (a1 + 24));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_19D3BB960(__p, v8, a2);
  v3 = __p;
  if (__p)
  {
    v4 = v8;
    v5 = __p;
    if (v8 != __p)
    {
      do
      {
        v6 = *(v4 - 17);
        v4 -= 5;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = __p;
    }

    v8 = v3;
    operator delete(v5);
  }
}

void sub_19D3BB35C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2AD850(v2);
  sub_19D36F93C(va);
  _Unwind_Resume(a1);
}

std::string *sub_19D3BB378(uint64_t a1, std::string *this, std::string *__str, __int128 *a4, uint64_t a5)
{
  v5 = this;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __str;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19D2AE2B4();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_19D2AD81C();
    }

    v28 = 8 * ((this - v11) >> 3);
    v50 = v28;
    v29 = 24 * a5;
    v30 = (v28 + 24 * a5);
    do
    {
      if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
      {
        sub_19D2AD6B8(v28, v7->__r_.__value_.__l.__data_, v7->__r_.__value_.__l.__size_);
      }

      else
      {
        v31 = *&v7->__r_.__value_.__l.__data_;
        *(v28 + 16) = *(&v7->__r_.__value_.__l + 2);
        *v28 = v31;
      }

      v28 += 24;
      ++v7;
      v29 -= 24;
    }

    while (v29);
    v32 = *(a1 + 8) - v5;
    memcpy(v30, v5, v32);
    *(a1 + 8) = v5;
    v33 = v5 - *a1;
    v34 = v50 - v33;
    memcpy((v50 - v33), *a1, v33);
    v35 = *a1;
    *a1 = v34;
    *(a1 + 8) = &v30[v32];
    *(a1 + 16) = 0;
    if (v35)
    {
      operator delete(v35);
    }

    return v50;
  }

  v15 = v10 - this;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - this) >> 3)) >= a5)
  {
    v23 = &this[a5];
    v24 = &v10[-a5];
    if (v24 >= v10)
    {
      *(a1 + 8) = v10;
      if (v10 == v23)
      {
LABEL_36:
        v41 = &v7[a5];
        v42 = v5;
        do
        {
          std::string::operator=(v42++, v7++);
        }

        while (v7 != v41);
        return v5;
      }
    }

    else
    {
      v25 = &v10[-a5];
      v26 = *(a1 + 8);
      do
      {
        v27 = *&v25->__r_.__value_.__l.__data_;
        *(v26 + 16) = *(&v25->__r_.__value_.__l + 2);
        *v26 = v27;
        v26 += 24;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        ++v25;
      }

      while (v25 < v10);
      *(a1 + 8) = v26;
      if (v10 == v23)
      {
        goto LABEL_36;
      }
    }

    v36 = 0;
    v37 = (&this[a5] - v10);
    do
    {
      v40 = &v36[v10 - 24];
      if (v36[v10 - 1] < 0)
      {
        operator delete(*v40);
      }

      v38 = v24 + (v36 - 24);
      v39 = *v38;
      *&v36[v10 - 8] = *(v38 + 2);
      *v40 = v39;
      v36[v24 - 1] = 0;
      *v38 = 0;
      v36 -= 24;
    }

    while (v37 != v36);
    goto LABEL_36;
  }

  v16 = (__str + v15);
  v17 = sub_19D3BB754(a1, (__str + v15), a4, *(a1 + 8));
  v18 = v17;
  *(a1 + 8) = v17;
  if (v15 >= 1)
  {
    v19 = v17 - 24 * a5;
    if (v19 >= v10)
    {
      v21 = v17;
    }

    else
    {
      v20 = v17 - 24 * a5;
      v21 = v17;
      do
      {
        v22 = *v20;
        *(v21 + 16) = *(v20 + 16);
        *v21 = v22;
        v21 += 24;
        *(v20 + 8) = 0;
        *(v20 + 16) = 0;
        *v20 = 0;
        v20 += 24;
      }

      while (v20 < v10);
    }

    *(a1 + 8) = v21;
    if (v17 != &v5[a5])
    {
      v43 = 0;
      v44 = &v5[a5] - v17;
      do
      {
        v47 = &v43[v18 - 24];
        if (v43[v18 - 1] < 0)
        {
          operator delete(*v47);
        }

        v45 = &v43[v19 - 24];
        v46 = *v45;
        *&v43[v18 - 8] = *(v45 + 16);
        *v47 = v46;
        v43[v19 - 1] = 0;
        *v45 = 0;
        v43 -= 24;
      }

      while (v44 != v43);
    }

    v48 = v5;
    do
    {
      std::string::operator=(v48++, v7++);
    }

    while (v7 != v16);
  }

  return v5;
}

void sub_19D3BB73C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2AE2CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3BB754(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v8 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      while ((*(v5 + 23) & 0x80000000) == 0)
      {
        v6 = *v5;
        *(a4 + 16) = *(v5 + 2);
        *a4 = v6;
        a4 += 24;
        v5 = (v5 + 24);
        v8 = a4;
        if (v5 == a3)
        {
          return a4;
        }
      }

      sub_19D2AD6B8(a4, *v5, *(v5 + 1));
      v5 = (v5 + 24);
      a4 = v8 + 24;
      v8 += 24;
    }

    while (v5 != a3);
  }

  return a4;
}

uint64_t sub_19D3BB80C(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 3)
    {
      if (*(i + 23) < 0)
      {
        sub_19D2AD6B8(v10, *i, *(i + 1));
        v9 = *(i + 24);
        v13 = *(i + 10);
        v12 = v9;
        if ((SHIBYTE(v11) & 0x80000000) == 0)
        {
LABEL_7:
          *__p = *v10;
          v15 = v11;
          goto LABEL_10;
        }
      }

      else
      {
        v7 = *i;
        v11 = *(i + 2);
        *v10 = v7;
        v8 = *(i + 24);
        v13 = *(i + 10);
        v12 = v8;
        if ((SHIBYTE(v11) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      sub_19D2AD6B8(__p, v10[0], v10[1]);
LABEL_10:
      sub_19D37D5A4(a3, __p);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v11) < 0)
        {
LABEL_14:
          operator delete(v10[0]);
        }
      }

      else if (SHIBYTE(v11) < 0)
      {
        goto LABEL_14;
      }
    }
  }

  return a3;
}

void sub_19D3BB914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3BB960(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i = (i + 40))
    {
      if (*(i + 23) < 0)
      {
        sub_19D2AD6B8(v10, *i, *(i + 1));
        v9 = *(i + 3);
        v13 = *(i + 8);
        v12 = v9;
        if ((SHIBYTE(v11) & 0x80000000) == 0)
        {
LABEL_7:
          *__p = *v10;
          v15 = v11;
          goto LABEL_10;
        }
      }

      else
      {
        v7 = *i;
        v8 = *(i + 3);
        v11 = *(i + 2);
        *v10 = v7;
        v13 = *(i + 8);
        v12 = v8;
        if ((SHIBYTE(v11) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      sub_19D2AD6B8(__p, v10[0], v10[1]);
LABEL_10:
      sub_19D37D5A4(a3, __p);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v11) < 0)
        {
LABEL_14:
          operator delete(v10[0]);
        }
      }

      else if (SHIBYTE(v11) < 0)
      {
        goto LABEL_14;
      }
    }
  }

  return a3;
}

void sub_19D3BBA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3BBAB0(uint64_t a1, __int128 *a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v6 = *(a2 + 3);
    v5 = *(a2 + 4);
    v7 = v5 - v6;
    if (v5 == v6)
    {
      goto LABEL_7;
    }

LABEL_5:
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D2AD6B8(a1, *a2, *(a2 + 1));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v9 = *(a2 + 3);
  v8 = *(a2 + 4);
  v7 = v8 - v9;
  if (v8 != v9)
  {
    goto LABEL_5;
  }

LABEL_7:
  *(a1 + 48) = *(a2 + 12);
  return a1;
}

void sub_19D3BBB88(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_19D4546CC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3BBBAC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_19D3BBC00(uint64_t a1, __int128 *a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v6 = *(a2 + 3);
    v5 = *(a2 + 4);
    v7 = v5 - v6;
    if (v5 == v6)
    {
      goto LABEL_7;
    }

LABEL_5:
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D2AD6B8(a1, *a2, *(a2 + 1));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v9 = *(a2 + 3);
  v8 = *(a2 + 4);
  v7 = v8 - v9;
  if (v8 != v9)
  {
    goto LABEL_5;
  }

LABEL_7:
  *(a1 + 48) = *(a2 + 12);
  return a1;
}

void sub_19D3BBCD8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_19D4546CC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3BBCFC(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 24) = *(a2 + 24);
  return result;
}

void sub_19D3BBD90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3BBDAC(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 24) = *(a2 + 24);
  return result;
}

void sub_19D3BBE40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D3BBE5C(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3BB1A4(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void **sub_19D3BBEC8(void **result)
{
  if (*(result + 24) == 1)
  {
    v1 = *result;
    if (*result)
    {
      v2 = result[1];
      v3 = *result;
      if (v2 != v1)
      {
        v4 = result;
        do
        {
          v2 -= 96;
          sub_19D3715C0(v2);
        }

        while (v2 != v1);
        result = v4;
        v3 = *v4;
      }

      result[1] = v1;
      v5 = result;
      operator delete(v3);
      return v5;
    }
  }

  return result;
}

uint64_t sub_19D3BBF48(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      v3 = *(a1 + 96);
      v4 = *(a1 + 88);
      if (v3 != v2)
      {
        do
        {
          v3 = sub_19D3715C0(v3 - 96);
        }

        while (v3 != v2);
        v4 = *(a1 + 88);
      }

      *(a1 + 96) = v2;
      operator delete(v4);
    }
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 24);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(a1 + 24);
    }

    *(a1 + 32) = v5;
    operator delete(v7);
  }

  v9 = *a1;
  if (*a1)
  {
    v10 = *(a1 + 8);
    v11 = *a1;
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *a1;
    }

    *(a1 + 8) = v9;
    operator delete(v11);
  }

  return a1;
}

void sub_19D3BC048(__int128 **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_41:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3BB170(exception, a2);
    __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
  }

  while (1)
  {
    if (*(v4 + 23) < 0)
    {
      sub_19D2AD6B8(v25, *v4, *(v4 + 1));
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v12 = *(v4 + 3);
      v11 = *(v4 + 4);
      v10 = v11 - v12;
      if (v11 != v12)
      {
LABEL_9:
        if ((v10 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }
    }

    else
    {
      v7 = *v4;
      v26 = *(v4 + 2);
      *v25 = v7;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v9 = *(v4 + 3);
      v8 = *(v4 + 4);
      v10 = v8 - v9;
      if (v8 != v9)
      {
        goto LABEL_9;
      }
    }

    v30 = *(v4 + 12);
    if (SHIBYTE(v26) < 0)
    {
      sub_19D2AD6B8(__p, v25[0], v25[1]);
    }

    else
    {
      *__p = *v25;
      v24 = v26;
    }

    v13 = SHIBYTE(v24);
    if (v24 >= 0)
    {
      v14 = HIBYTE(v24);
    }

    else
    {
      v14 = __p[1];
    }

    v15 = *(a2 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a2 + 8);
    }

    if (v14 == v15)
    {
      if (v24 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      if (v16 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      v19 = memcmp(v17, v18, v14) == 0;
      if (v13 < 0)
      {
LABEL_25:
        operator delete(__p[0]);
      }
    }

    else
    {
      v19 = 0;
      if (SHIBYTE(v24) < 0)
      {
        goto LABEL_25;
      }
    }

    if (v19)
    {
      break;
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }

    v4 = (v4 + 56);
    if (v4 == v5)
    {
      goto LABEL_41;
    }
  }

  *a3 = *v25;
  v20 = v26;
  v21 = v27;
  v25[1] = 0;
  v26 = 0;
  v25[0] = 0;
  *(a3 + 16) = v20;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  if (v28 != v21)
  {
    if (((v28 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a3 + 48) = v30;
  if (v21)
  {
    v28 = v21;
    operator delete(v21);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_19D3BC2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
    sub_19D3BBBAC(va);
    _Unwind_Resume(a1);
  }

  sub_19D3BBBAC(va);
  _Unwind_Resume(a1);
}

void sub_19D3BC330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  _Unwind_Resume(exception_object);
}

void sub_19D3BC370(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
LABEL_41:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3BB170(exception, a2);
    __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
  }

  while (1)
  {
    if (*(v4 + 23) < 0)
    {
      sub_19D2AD6B8(v25, *v4, *(v4 + 1));
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v12 = *(v4 + 3);
      v11 = *(v4 + 4);
      v10 = v11 - v12;
      if (v11 != v12)
      {
LABEL_9:
        if ((v10 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }
    }

    else
    {
      v7 = *v4;
      v26 = *(v4 + 2);
      *v25 = v7;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v9 = *(v4 + 3);
      v8 = *(v4 + 4);
      v10 = v8 - v9;
      if (v8 != v9)
      {
        goto LABEL_9;
      }
    }

    v30 = *(v4 + 12);
    if (SHIBYTE(v26) < 0)
    {
      sub_19D2AD6B8(__p, v25[0], v25[1]);
    }

    else
    {
      *__p = *v25;
      v24 = v26;
    }

    v13 = SHIBYTE(v24);
    if (v24 >= 0)
    {
      v14 = HIBYTE(v24);
    }

    else
    {
      v14 = __p[1];
    }

    v15 = *(a2 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a2 + 8);
    }

    if (v14 == v15)
    {
      if (v24 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      if (v16 >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      v19 = memcmp(v17, v18, v14) == 0;
      if (v13 < 0)
      {
LABEL_25:
        operator delete(__p[0]);
      }
    }

    else
    {
      v19 = 0;
      if (SHIBYTE(v24) < 0)
      {
        goto LABEL_25;
      }
    }

    if (v19)
    {
      break;
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }

    v4 = (v4 + 56);
    if (v4 == v5)
    {
      goto LABEL_41;
    }
  }

  *a3 = *v25;
  v20 = v26;
  v21 = v27;
  v25[1] = 0;
  v26 = 0;
  v25[0] = 0;
  *(a3 + 16) = v20;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  if (v28 != v21)
  {
    if (((v28 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a3 + 48) = v30;
  if (v21)
  {
    v28 = v21;
    operator delete(v21);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_19D3BC60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
    sub_19D3BBBAC(va);
    _Unwind_Resume(a1);
  }

  sub_19D3BBBAC(va);
  _Unwind_Resume(a1);
}

void sub_19D3BC658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  _Unwind_Resume(exception_object);
}

CFArrayRef sub_19D3BC698(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  result = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_19D3BC810(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_19D3BC838@<X0>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4B8C(exception);
    goto LABEL_10;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(ValueAtIndex))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4670(exception);
LABEL_10:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_19D2C4680(ValueAtIndex, a3);
}

uint64_t sub_19D3BC938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 16);
  sub_19D3BC9D8(a1 + 16, "[InvalidArgument] ", a2, a3);
  *a1 = &unk_1F10BB1A8;
  v5 = v4;
  if (*(a1 + 39) < 0)
  {
    v5 = *v4;
  }

  std::logic_error::logic_error(a1, v5);
  *a1 = &unk_1F10BB1A8;
  return a1;
}

void sub_19D3BC9BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3BC9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_19D2AE334(v11);
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v9 = v11;
  sub_19D3BCAE8(v10, &v9);
  std::stringbuf::str();
  sub_19D2BE900(v11);
  return a1;
}

void sub_19D3BCA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

void sub_19D3BCA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

void sub_19D3BCA80(void **a1)
{
  if (*(MEMORY[0x19EAFA110]() + 39) < 0)
  {
    operator delete(a1[2]);
    v2 = a1;
  }

  else
  {
    v2 = a1;
  }

  operator delete(v2);
}

void *sub_19D3BCAE8(uint64_t a1, void **a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = strlen(*a1);
  sub_19D2AE554(v5, v4, v6);
  v7 = strlen(*(a1 + 8));
  sub_19D2AE554(*a2, *(a1 + 8), v7);
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = *(a1 + 16);
  }

  else
  {
    v11 = *v8;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  return sub_19D2AE554(v9, v11, v12);
}

uint64_t sub_19D3BCB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 16);
  sub_19D3BCC24(a1 + 16, "[InvalidArgument] ", a2, a3);
  *a1 = &unk_1F10BB1A8;
  v5 = v4;
  if (*(a1 + 39) < 0)
  {
    v5 = *v4;
  }

  std::logic_error::logic_error(a1, v5);
  *a1 = &unk_1F10BB1A8;
  return a1;
}

void sub_19D3BCC08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3BCC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_19D2AE334(v11);
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v9 = v11;
  sub_19D3BCAE8(v10, &v9);
  std::stringbuf::str();
  sub_19D2BE900(v11);
  return a1;
}

void sub_19D3BCCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

void sub_19D3BCCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

const void *sub_19D3BCCCC(const __CFDictionary *a1, CFStringRef a2)
{
  v3 = a2;
  data_high = HIBYTE(a2->data);
  if ((data_high & 0x80u) != 0)
  {
    a2 = a2->isa;
  }

  if (!a2)
  {
    cf = 0;
    if (a1)
    {
      goto LABEL_9;
    }

LABEL_12:
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  info = v3->info;
  if ((data_high & 0x80u) == 0)
  {
    v7 = data_high;
  }

  else
  {
    v7 = info;
  }

  a2 = CFStringCreateWithBytes(0, a2, v7, 0x8000100u, 0);
  cf = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_9:
  Value = CFDictionaryGetValue(a1, a2);
  a2 = cf;
  if (cf)
  {
LABEL_13:
    CFRelease(a2);
  }

LABEL_14:
  if (a1)
  {
    return Value;
  }

  else
  {
    return 0;
  }
}

void sub_19D3BCE14(const __CFArray *a1@<X0>, void *a2@<X8>)
{
  Count = CFArrayGetCount(a1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (Count << 32)
  {
    if (!(Count >> 61))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  if (Count >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    sub_19D3BD064(ValueAtIndex);
    if (v5)
    {
      operator new();
    }

    a2[2] = 0;
    *a2 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not convert");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_19D3BD028(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

const __CFNumber *sub_19D3BD064(const __CFNumber *result)
{
  if (*&result != 0.0)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      *&result = COERCE_DOUBLE(sub_19D3BD11C(v1));
    }

    else
    {
      v3 = CFBooleanGetTypeID();
      if (v3 == CFGetTypeID(v1))
      {
        *&result = CFBooleanGetValue(v1);
      }

      else
      {
        *&result = 0.0;
      }
    }
  }

  return result;
}

unint64_t sub_19D3BD11C(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      v8 = CFNumberGetValue(v2, v3, &valuePtr) == 0;
      v9 = valuePtr;
      goto LABEL_25;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      v8 = CFNumberGetValue(v14, v15, &valuePtr) == 0;
      v16.i16[0] = valuePtr;
      v17 = vmovl_s16(v16).i32[0];
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_23:
      v8 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
      v17 = valuePtr;
LABEL_24:
      v9 = v17;
      goto LABEL_25;
    case kCFNumberLongType:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_25;
    case kCFNumberDoubleType:
      valuePtr = 0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      v8 = CFNumberGetValue(v4, v5, &valuePtr) == 0;
      v9 = valuePtr;
LABEL_25:
      v18 = v9;
      goto LABEL_26;
    case kCFNumberCGFloatType:
      valuePtr = 0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      v8 = CFNumberGetValue(v10, v11, &valuePtr) == 0;
      v18 = *&valuePtr;
LABEL_26:
      if (v8)
      {
        v18 = 0.0;
      }

      v19 = *&v18 & 0xFFFFFFFFFFFFFF00;
      break;
    default:
      v19 = 0;
      LOBYTE(v18) = 0;
      break;
  }

  return LOBYTE(v18) | v19;
}

uint64_t sub_19D3BD354(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_19D2AD6B8(a1, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a3 + 8);
  if (v6 != *a3)
  {
    if (((v6 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 48) = *(a3 + 24);
  return a1;
}

void sub_19D3BD41C(void *a1)
{
  v4 = *v2;
  if (!*v2)
  {
    sub_19D2ABE10(a1);
  }

  *(v1 + 32) = v4;
  operator delete(v4);
  sub_19D2ABE10(a1);
}

double sub_19D3BD440(const __CFDictionary *a1, const __CFString *a2)
{
  v2 = sub_19D3BCCCC(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4B8C(exception);
    goto LABEL_6;
  }

  v3 = sub_19D3BD064(v2);
  if ((v4 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4670(exception);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return *&v3;
}

void sub_19D3BD4E4(const __CFArray *a1@<X0>, void *a2@<X8>)
{
  Count = CFArrayGetCount(a1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (Count << 32)
  {
    if (!(Count >> 62))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  if (Count >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    if ((sub_19D2A7128(ValueAtIndex) & 0x100000000) != 0)
    {
      operator new();
    }

    a2[2] = 0;
    *a2 = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not convert");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_19D3BD6F8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D3BD734(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_19D2AD6B8(a1, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a3 + 8);
  if (v6 != *a3)
  {
    if (((v6 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 48) = *(a3 + 24);
  return a1;
}

void sub_19D3BD7FC(void *a1)
{
  v4 = *v2;
  if (!*v2)
  {
    sub_19D2ABE10(a1);
  }

  *(v1 + 32) = v4;
  operator delete(v4);
  sub_19D2ABE10(a1);
}

uint64_t sub_19D3BD820(const __CFDictionary *a1, const __CFString *a2)
{
  v2 = sub_19D3BCCCC(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4B8C(exception);
    goto LABEL_6;
  }

  result = sub_19D2A7128(v2);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4670(exception);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_19D3BD8C0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_19D3BD8C0(a1, *a2);
    sub_19D3BD8C0(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void *sub_19D3BD95C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_19D3BDB04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BDB18(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D3BDB18(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      if (v3)
      {
        CFRelease(v3);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

CFArrayRef sub_19D3BDB7C(uint64_t **a1)
{
  v2 = a1[1] - *a1;
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_19D2C5DDC(&__p, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v18;
    do
    {
      v6 = *v3;
      v16 = *v3;
      if (v5 >= v19)
      {
        v5 = sub_19D3BDDDC(&__p, &v16);
      }

      else
      {
        valuePtr = v6;
        v7 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
        *v5 = v7;
        if (!v7)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v5 += 8;
      }

      v18 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  result = sub_19D2C5F9C(&__p);
  v9 = __p;
  if (__p)
  {
    v10 = result;
    v11 = v18;
    v12 = __p;
    if (v18 != __p)
    {
      do
      {
        v14 = *(v11 - 1);
        v11 -= 8;
        v13 = v14;
        if (v14)
        {
          CFRelease(v13);
        }
      }

      while (v11 != v9);
      v12 = __p;
    }

    v18 = v9;
    operator delete(v12);
    return v10;
  }

  return result;
}

void sub_19D3BDCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D3BDD38(va);
  _Unwind_Resume(a1);
}

void sub_19D3BDCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, const void **a12)
{
  sub_19D3BDDA8(v12);
  a12 = v12;
  sub_19D3BDD38(&a11);
  _Unwind_Resume(a1);
}

void sub_19D3BDD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D3BDD38(va);
  _Unwind_Resume(a1);
}

void sub_19D3BDD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D3BDD38(va);
  _Unwind_Resume(a1);
}

void **sub_19D3BDD38(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

const void **sub_19D3BDDA8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_19D3BDDDC(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_19D2AE2B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v8 = 8 * v3;
  valuePtr = *a2;
  v9 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  *(8 * v3) = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = v8 - (v11 - *a1);
  v13 = v8 + 8;
  v14 = v11 - *a1;
  if (v11 != *a1)
  {
    v15 = v14 - 8;
    v16 = *a1;
    v17 = v12;
    if ((v14 - 8) < 0x98)
    {
      goto LABEL_32;
    }

    if (v12 < v10 + (v15 & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v16 = *a1;
      v17 = v12;
      if (v10 < v2 + (v15 & 0xFFFFFFFFFFFFFFF8) - v14 + 8)
      {
        goto LABEL_32;
      }
    }

    v18 = v14 >> 3;
    v19 = (v15 >> 3) + 1;
    v20 = v19 & 0x3FFFFFFFFFFFFFFCLL;
    v16 = &v10[v20];
    v17 = (v12 + v20 * 8);
    v21 = (-8 * v18 + 8 * v3 + 16);
    v22 = (v10 + 2);
    v23 = v19 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v24 = *v22;
      *(v21 - 1) = *(v22 - 1);
      *v21 = v24;
      *(v22 - 1) = 0uLL;
      *v22 = 0uLL;
      v21 += 2;
      v22 += 2;
      v23 -= 4;
    }

    while (v23);
    if (v19 != (v19 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_32:
      do
      {
        *v17++ = *v16;
        *v16++ = 0;
      }

      while (v16 != v11);
    }

    do
    {
      if (*v10)
      {
        CFRelease(*v10);
      }

      ++v10;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v13;
}

void sub_19D3BE018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_19D3BDDA8(v9);
  sub_19D2C6134(&a9);
  _Unwind_Resume(a1);
}

CFArrayRef sub_19D3BE05C(int **a1)
{
  v2 = a1[1] - *a1;
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_19D2C5DDC(&__p, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v18;
    do
    {
      v6 = *v3;
      v16 = *v3;
      if (v5 >= v19)
      {
        v5 = sub_19D3BE218(&__p, &v16);
      }

      else
      {
        valuePtr = v6;
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        *v5 = v7;
        if (!v7)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v5 += 8;
      }

      v18 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  result = sub_19D2C5F9C(&__p);
  v9 = __p;
  if (__p)
  {
    v10 = result;
    v11 = v18;
    v12 = __p;
    if (v18 != __p)
    {
      do
      {
        v14 = *(v11 - 1);
        v11 -= 8;
        v13 = v14;
        if (v14)
        {
          CFRelease(v13);
        }
      }

      while (v11 != v9);
      v12 = __p;
    }

    v18 = v9;
    operator delete(v12);
    return v10;
  }

  return result;
}

void sub_19D3BE1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D3BDD38(va);
  _Unwind_Resume(a1);
}

void sub_19D3BE1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, const void **a12)
{
  sub_19D3BDDA8(v12);
  a12 = v12;
  sub_19D3BDD38(&a11);
  _Unwind_Resume(a1);
}

void sub_19D3BE1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D3BDD38(va);
  _Unwind_Resume(a1);
}

void sub_19D3BE204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D3BDD38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3BE218(unint64_t *a1, int *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_19D2AE2B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v8 = 8 * v3;
  valuePtr = *a2;
  v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(8 * v3) = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = v8 - (v11 - *a1);
  v13 = v8 + 8;
  v14 = v11 - *a1;
  if (v11 != *a1)
  {
    v15 = v14 - 8;
    v16 = *a1;
    v17 = v12;
    if ((v14 - 8) < 0x98)
    {
      goto LABEL_32;
    }

    if (v12 < v10 + (v15 & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v16 = *a1;
      v17 = v12;
      if (v10 < v2 + (v15 & 0xFFFFFFFFFFFFFFF8) - v14 + 8)
      {
        goto LABEL_32;
      }
    }

    v18 = v14 >> 3;
    v19 = (v15 >> 3) + 1;
    v20 = v19 & 0x3FFFFFFFFFFFFFFCLL;
    v16 = &v10[v20];
    v17 = (v12 + v20 * 8);
    v21 = (-8 * v18 + 8 * v3 + 16);
    v22 = (v10 + 2);
    v23 = v19 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v24 = *v22;
      *(v21 - 1) = *(v22 - 1);
      *v21 = v24;
      *(v22 - 1) = 0uLL;
      *v22 = 0uLL;
      v21 += 2;
      v22 += 2;
      v23 -= 4;
    }

    while (v23);
    if (v19 != (v19 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_32:
      do
      {
        *v17++ = *v16;
        *v16++ = 0;
      }

      while (v16 != v11);
    }

    do
    {
      if (*v10)
      {
        CFRelease(*v10);
      }

      ++v10;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v13;
}

void sub_19D3BE454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_19D3BDDA8(v9);
  sub_19D2C6134(&a9);
  _Unwind_Resume(a1);
}

CFDictionaryRef sub_19D3BE498(void *a1)
{
  __p = 0;
  v18 = 0;
  v19 = 0;
  sub_19D2C5354(&__p, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v18;
    do
    {
      if (v5 >= v19)
      {
        v5 = sub_19D3BE63C(&__p, v3 + 32, v3 + 7);
        v18 = v5;
        v6 = v3[1];
        if (v6)
        {
          do
          {
LABEL_8:
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
          goto LABEL_3;
        }
      }

      else
      {
        sub_19D3BE78C(v5, v3 + 32, v3 + 7);
        v5 += 2;
        v18 = v5;
        v6 = v3[1];
        if (v6)
        {
          goto LABEL_8;
        }
      }

      do
      {
        v7 = v3[2];
        v8 = *v7 == v3;
        v3 = v7;
      }

      while (!v8);
LABEL_3:
      v3 = v7;
    }

    while (v7 != v2);
  }

  result = sub_19D2C5444(&__p);
  v10 = __p;
  if (__p)
  {
    v11 = result;
    v12 = v18;
    v13 = __p;
    if (v18 != __p)
    {
      do
      {
        v14 = *(v12 - 1);
        if (v14)
        {
          CFRelease(v14);
        }

        v16 = *(v12 - 2);
        v12 -= 2;
        v15 = v16;
        if (v16)
        {
          CFRelease(v15);
        }
      }

      while (v12 != v10);
      v13 = __p;
    }

    v18 = v10;
    operator delete(v13);
    return v11;
  }

  return result;
}

void sub_19D3BE5D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2C64B0(va);
  _Unwind_Resume(a1);
}

void sub_19D3BE5F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2C64B0(va);
  _Unwind_Resume(a1);
}

const void **sub_19D3BE608(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

unint64_t sub_19D3BE63C(unint64_t *a1, const UInt8 *a2, const void **a3)
{
  v3 = (a1[1] - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    sub_19D2AE2B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v4)
  {
    v4 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v18 = a1;
  if (v7)
  {
    if (!(v7 >> 60))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  __p = 0;
  v15 = 16 * v3;
  v17 = 0;
  sub_19D3BE78C((16 * v3), a2, a3);
  v16 = 16 * v3 + 16;
  sub_19D2C57F4(a1, &__p);
  v8 = a1[1];
  v9 = v15;
  while (1)
  {
    v10 = v16;
    if (v16 == v9)
    {
      break;
    }

    v11 = (v16 - 16);
    v16 -= 16;
    v12 = *(v10 - 8);
    if (v12)
    {
      CFRelease(v12);
    }

    if (*v11)
    {
      CFRelease(*v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_19D3BE770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2C596C(va);
  _Unwind_Resume(a1);
}

CFStringRef *sub_19D3BE78C(CFStringRef *a1, const UInt8 *a2, const void **a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v8 = *a3;
  if (v8)
  {
    CFRetain(v8);
  }

  a1[1] = v8;
  return a1;
}

void sub_19D3BE854(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_19D3BE608(v1);
  _Unwind_Resume(a1);
}

const void *sub_19D3BE874@<X0>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4B8C(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_19D2A7050(ValueAtIndex, a3);
}

unint64_t sub_19D3BE928@<X0>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, _BYTE *a3@<X8>)
{
  if (!a1 || (v3 = *a2) == 0 || (Value = CFDictionaryGetValue(a1, v3)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4B8C(exception);
    goto LABEL_10;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(Value))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4670(exception);
LABEL_10:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_19D2C4680(Value, a3);
}

uint64_t sub_19D3BEA10(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_19D2AE2B4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = *(a2 + 32);
  v9 = 40 * v2 + 40;
  v10 = *a1;
  v11 = a1[1];
  v12 = v6 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v6 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 3);
      *(v14 + 32) = *(v13 + 8);
      *(v14 + 24) = v16;
      v13 = (v13 + 40);
      v14 += 40;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 40;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

double sub_19D3BEB94(const __CFDictionary *a1, const void **a2)
{
  if (!a1 || (v2 = *a2) == 0 || (Value = CFDictionaryGetValue(a1, v2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4B8C(exception);
    goto LABEL_8;
  }

  v4 = sub_19D3BD064(Value);
  if ((v5 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4670(exception);
LABEL_8:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return *&v4;
}

uint64_t sub_19D3BEC48(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_19D2AE2B4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  v7 = 48 * v2 + 48;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 10);
      *(v12 + 24) = v14;
      v11 += 3;
      v12 += 48;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v8 += 48;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_19D3BEDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 16);
  sub_19D3BEE74(a1 + 16, "[InvalidArgument] ", a2, a3);
  *a1 = &unk_1F10BB1A8;
  v5 = v4;
  if (*(a1 + 39) < 0)
  {
    v5 = *v4;
  }

  std::logic_error::logic_error(a1, v5);
  *a1 = &unk_1F10BB1A8;
  return a1;
}

void sub_19D3BEE58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3BEE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_19D2AE334(v11);
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v9 = v11;
  sub_19D3BCAE8(v10, &v9);
  std::stringbuf::str();
  sub_19D2BE900(v11);
  return a1;
}

void sub_19D3BEEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

void sub_19D3BEF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3BEF1C(const __CFDictionary *a1, const void **a2)
{
  if (!a1 || (v2 = *a2) == 0 || (Value = CFDictionaryGetValue(a1, v2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4B8C(exception);
    goto LABEL_8;
  }

  result = sub_19D2A7128(Value);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4670(exception);
LABEL_8:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

const void *sub_19D3BEFCC@<X0>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (!a1 || (v3 = *a2) == 0 || (Value = CFDictionaryGetValue(a1, v3)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4B8C(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_19D3BA4E0(Value, a3);
}

uint64_t sub_19D3BF060(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_19D2AE2B4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v6 = (32 * ((a1[1] - *a1) >> 5));
  sub_19D3BF1AC(v6, a2);
  v7 = 96 * v2 + 96;
  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_19D3BF1AC(v12, v11);
      v11 += 96;
      v12 = v13 + 12;
    }

    while (v11 != v9);
    do
    {
      sub_19D3715C0(v8);
      v8 += 96;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

__int128 **sub_19D3BF1AC(__int128 **a1, uint64_t a2)
{
  *v16 = *a2;
  v17 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *__p = *(a2 + 24);
  v15 = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_19D3710F4(a1, v16, __p);
  v3 = __p[0];
  if (__p[0])
  {
    v4 = __p[1];
    v5 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v6 = *(v4 - 4);
        if (v6)
        {
          *(v4 - 3) = v6;
          operator delete(v6);
        }

        v7 = (v4 - 56);
        if (*(v4 - 33) < 0)
        {
          operator delete(*v7);
        }

        v4 -= 56;
      }

      while (v7 != v3);
      v5 = __p[0];
    }

    __p[1] = v3;
    operator delete(v5);
  }

  v8 = v16[0];
  if (v16[0])
  {
    v9 = v16[1];
    v10 = v16[0];
    if (v16[1] != v16[0])
    {
      do
      {
        v11 = *(v9 - 4);
        if (v11)
        {
          *(v9 - 3) = v11;
          operator delete(v11);
        }

        v12 = (v9 - 56);
        if (*(v9 - 33) < 0)
        {
          operator delete(*v12);
        }

        v9 -= 56;
      }

      while (v12 != v8);
      v10 = v16[0];
    }

    v16[1] = v8;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_19D3BF2D0(const __CFDictionary **a1, const void **a2, uint64_t (*a3)(CFTypeRef *))
{
  v4 = *a1;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = *a2;
  if (!v6 || !CFDictionaryContainsKey(v4, v6))
  {
    return 1;
  }

  v8 = *a1;
  if (!*a1)
  {
LABEL_13:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3BB1A4(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v14 = *a2;
  sub_19D3BF588(v8, &v14, &cf);
  v9 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v13 = v9;
  v10 = a3(&v13);
  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void sub_19D3BF400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  sub_19D2BF898(va);
  sub_19D2BF898(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3BF434(CFTypeRef *a1)
{
  sub_19D3BA8A0("Random", cf);
  v2 = sub_19D3BF61C(a1, cf);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v2 == kCFCompareEqualTo)
  {
    return 0;
  }

  sub_19D3BA8A0("GaussianProcess", cf);
  v3 = sub_19D3BF61C(a1, cf);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v6 = a1;
    v7 = exception;
    v8 = sub_19D3BBE5C(v6);
    sub_19D2BF7EC(&v8, cf);
    sub_19D3BF6D8(v7, "Unexpected optimizer name: ", cf);
    __cxa_throw(v7, &unk_1F10BB128, sub_19D3B2DC4);
  }

  return 1;
}

void sub_19D3BF548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

const void *sub_19D3BF588@<X0>(const __CFDictionary *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (!a1 || (v3 = *a2) == 0 || (Value = CFDictionaryGetValue(a1, v3)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4B8C(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_19D2C05B4(Value, a3);
}

CFComparisonResult sub_19D3BF61C(CFTypeRef *a1, const __CFString **a2)
{
  v3 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v4 = *a2;
    if (!v4)
    {
      v5 = kCFCompareGreaterThan;
LABEL_9:
      CFRelease(v3);
      return v5;
    }

LABEL_5:
    CFRetain(v4);
    if (v3)
    {
      v5 = CFStringCompare(v3, v4, 0);
    }

    else
    {
      v5 = kCFCompareLessThan;
    }

    CFRelease(v4);
    if (!v3)
    {
      return v5;
    }

    goto LABEL_9;
  }

  v4 = *a2;
  if (*a2)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_19D3BF6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 16);
  sub_19D3BF778(a1 + 16, "[InvalidArgument] ", a2, a3);
  *a1 = &unk_1F10BB1A8;
  v5 = v4;
  if (*(a1 + 39) < 0)
  {
    v5 = *v4;
  }

  std::logic_error::logic_error(a1, v5);
  *a1 = &unk_1F10BB1A8;
  return a1;
}

void sub_19D3BF75C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3BF778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_19D2AE334(v11);
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v9 = v11;
  sub_19D3BCAE8(v10, &v9);
  std::stringbuf::str();
  sub_19D2BE900(v11);
  return a1;
}

void sub_19D3BF7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

void sub_19D3BF80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3BF820(const __CFDictionary **a1, const void **a2, uint64_t (*a3)(CFTypeRef *))
{
  v4 = *a1;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = *a2;
  if (!v6 || !CFDictionaryContainsKey(v4, v6))
  {
    return 0;
  }

  v8 = *a1;
  if (!*a1)
  {
LABEL_13:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3BB1A4(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v14 = *a2;
  sub_19D3BF588(v8, &v14, &cf);
  v9 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v13 = v9;
  v10 = a3(&v13);
  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

void sub_19D3BF950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  sub_19D2BF898(va);
  sub_19D2BF898(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3BF984(CFTypeRef *a1)
{
  sub_19D3BA8A0("Maximize", cf);
  v2 = sub_19D3BF61C(a1, cf);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v2 == kCFCompareEqualTo)
  {
    return 0;
  }

  sub_19D3BA8A0("Minimize", cf);
  v3 = sub_19D3BF61C(a1, cf);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v3)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v6 = a1;
    v7 = exception;
    v8 = sub_19D3BBE5C(v6);
    sub_19D2BF7EC(&v8, cf);
    sub_19D3BFAD8(v7, "Unexpected optimization direction: ", cf);
    __cxa_throw(v7, &unk_1F10BB128, sub_19D3B2DC4);
  }

  return 1;
}

void sub_19D3BFA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_19D3BFAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 16);
  sub_19D3BFB78(a1 + 16, "[InvalidArgument] ", a2, a3);
  *a1 = &unk_1F10BB1A8;
  v5 = v4;
  if (*(a1 + 39) < 0)
  {
    v5 = *v4;
  }

  std::logic_error::logic_error(a1, v5);
  *a1 = &unk_1F10BB1A8;
  return a1;
}

void sub_19D3BFB5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3BFB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_19D2AE334(v11);
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v9 = v11;
  sub_19D3BCAE8(v10, &v9);
  std::stringbuf::str();
  sub_19D2BE900(v11);
  return a1;
}

void sub_19D3BFBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

void sub_19D3BFC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D2BE900(va);
  _Unwind_Resume(a1);
}

void sub_19D3BFC20(uint64_t a1)
{
  v14[13] = *MEMORY[0x1E69E9840];
  sub_19D370C7C(&v3, a1);
  sub_19D370EB8(&v4, (a1 + 24));
  v2 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = v2;
  v7 = *(a1 + 80);
  sub_19D3B60F8(&__p, a1 + 88);
  sub_19D370C7C(&v9, &v3);
  sub_19D370EB8(&v10, &v4);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  sub_19D3B60F8(v14, &__p);
  sub_19D3C13C8(&v9);
}

void sub_19D3C00B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3BA644(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3C00CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3C00E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3B7AB4(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3C00FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_19D3BBF48(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3C0118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D3708F4(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3C0134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D36EE34(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3C0190(uint64_t a1)
{
  v14[13] = *MEMORY[0x1E69E9840];
  sub_19D370C7C(&v3, a1);
  sub_19D370EB8(&v4, (a1 + 24));
  v2 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = v2;
  v7 = *(a1 + 80);
  sub_19D3B60F8(&__p, a1 + 88);
  sub_19D370C7C(&v9, &v3);
  sub_19D370EB8(&v10, &v4);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  sub_19D3B60F8(v14, &__p);
  sub_19D3D15F4(&v9);
}

void sub_19D3C0620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3BA644(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3C063C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3C0650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3B7AB4(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3C066C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_19D3BBF48(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3C0688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D3708F4(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3C06A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D36EE34(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3C0700(uint64_t a1)
{
  v14[13] = *MEMORY[0x1E69E9840];
  sub_19D370C7C(&v3, a1);
  sub_19D370EB8(&v4, (a1 + 24));
  v2 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = v2;
  v7 = *(a1 + 80);
  sub_19D3B60F8(&__p, a1 + 88);
  sub_19D370C7C(&v9, &v3);
  sub_19D370EB8(&v10, &v4);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  sub_19D3B60F8(v14, &__p);
  sub_19D3D9A54(&v9);
}

void sub_19D3C0B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3BA644(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3C0BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3C0BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_19D3B7AB4(v16 - 120);
  sub_19D3D1048(va);
  _Unwind_Resume(a1);
}

void sub_19D3C0BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_19D3BBF48(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3C0BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D3708F4(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

void sub_19D3C0C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  sub_19D36EE34(&a24);
  sub_19D3BBF48(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3C0C70(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_19D2AE334(&v12);
  sub_19D2AE554(&v12, "[InvalidArgument] ", 18);
  v6 = strlen(a2);
  sub_19D2AE554(&v12, a2, v6);
  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  sub_19D2AE554(&v12, v8, v9);
  std::stringbuf::str();
  v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  MEMORY[0x19EAFA410](&v16);
  *a1 = &unk_1F10BB1A8;
  v10 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v10 = *(a1 + 16);
  }

  std::logic_error::logic_error(a1, v10);
  *a1 = &unk_1F10BB1A8;
  return a1;
}

void sub_19D3C0E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 39) < 0)
  {
    operator delete(*v11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3C0E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 60);
  v7 = *(a1 + 64);
  v30 = 0;
  v29 = &unk_1F10BB490;
  v31 = v5;
  v21[0] = 0;
  *v22 = v6;
  *&v22[4] = v7;
  memset(v23, 0, sizeof(v23));
  v24 = v25;
  v25[0] = 0;
  v26 = 0.0;
  v27[0] = 0;
  v25[1] = 0;
  v25[2] = &v26;
  v28 = 0;
  v33 = 0;
  v32 = &unk_1F10BB490;
  v34 = v5;
  v36 = 0;
  v35 = &unk_1F10BB4D0;
  v38 = HIDWORD(v7);
  v37 = *v22;
  sub_19D3BF1AC(v39, v23);
  v39[12] = v27[1];
  v40 = v28;
  v20 = &unk_1F10BB4D0;
  sub_19D3715C0(v23);
  v8 = *(a1 + 72);
  (*(**(a1 + 120) + 16))(&v29);
  v9 = *(a2 + 24);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = (*(*v9 + 48))(v9, &v29);
  (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
  std::chrono::steady_clock::now();
  LODWORD(v20) = 1;
  sub_19D3BA6D0(v21, &v29);
  v26 = v10;
  sub_19D3D0D3C(*(a1 + 120), v27);
  if (1 % v8)
  {
    goto LABEL_5;
  }

  v11 = *(a2 + 56);
  if (!v11)
  {
LABEL_17:
    sub_19D3D0FFC();
  }

  if (((*(*v11 + 48))(v11, &v20) & 1) == 0)
  {
LABEL_5:
    if (((*v32)(&v32, &v20) & 1) == 0)
    {
      v12 = (*v35)(&v35, &v20);
      sub_19D3715C0(v27);
      sub_19D3715C0(v21);
      sub_19D3715C0(&v29);
      if (v12)
      {
        goto LABEL_15;
      }

      v13 = 2;
      while (1)
      {
        (*(**(a1 + 120) + 16))(&v29);
        v14 = *(a2 + 24);
        if (!v14)
        {
          break;
        }

        v15 = (*(*v14 + 48))(v14, &v29);
        (*(**(a1 + 120) + 24))(*(a1 + 120), &v29);
        std::chrono::steady_clock::now();
        std::chrono::steady_clock::now();
        LODWORD(v20) = v13;
        sub_19D3BA6D0(v21, &v29);
        v26 = v15;
        sub_19D3D0D3C(*(a1 + 120), v27);
        if (!(v13 % v8))
        {
          v16 = *(a2 + 56);
          if (!v16)
          {
            goto LABEL_17;
          }

          if ((*(*v16 + 48))(v16, &v20))
          {
            goto LABEL_6;
          }
        }

        if ((*v32)(&v32, &v20))
        {
          goto LABEL_6;
        }

        v17 = (*v35)(&v35, &v20);
        sub_19D3715C0(v27);
        sub_19D3715C0(v21);
        sub_19D3715C0(&v29);
        ++v13;
        if (v17)
        {
          goto LABEL_15;
        }
      }

LABEL_16:
      sub_19D3D0FFC();
    }
  }

LABEL_6:
  sub_19D3715C0(v27);
  sub_19D3715C0(v21);
  sub_19D3715C0(&v29);
LABEL_15:
  sub_19D3D0D3C(*(a1 + 120), a3);
  v35 = &unk_1F10BB4D0;
  return sub_19D3715C0(v39);
}

void sub_19D3C1320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_19D3715C0(v39 + 112);
  sub_19D3715C0(v39 + 8);
  sub_19D3715C0(&a37);
  *(v40 - 240) = v37;
  sub_19D3715C0(v38 + 40);
  _Unwind_Resume(a1);
}

void sub_19D3C13C8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 != 1)
  {
    if (!v1)
    {
      sub_19D3C147C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D3C1834(exception, "Invalid optimizer in user config.");
    __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
  }

  sub_19D3C1658();
}

void sub_19D3C15F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBF48(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3C160C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3C1628(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3C17CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBF48(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3C17E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_19D3C1804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

std::logic_error *sub_19D3C1834(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C8] + 16);
  return result;
}

uint64_t sub_19D3C1868(uint64_t a1, uint64_t a2)
{
  sub_19D370C7C(&v34, a2);
  sub_19D370EB8(&v36, (a2 + 24));
  v4 = *(a2 + 64);
  v38 = *(a2 + 48);
  v39 = v4;
  v40 = *(a2 + 80);
  sub_19D3B60F8(&__p, a2 + 88);
  *a1 = &unk_1F10BB228;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_19D370C7C((a1 + 32), &v34);
  sub_19D370EB8((a1 + 56), &v36);
  v5 = v39;
  *(a1 + 80) = v38;
  *(a1 + 96) = v5;
  *(a1 + 112) = v40;
  sub_19D3B60F8(a1 + 120, &__p);
  if (v43 == 1)
  {
    v6 = __p;
    if (__p)
    {
      v7 = v42;
      v8 = __p;
      if (v42 != __p)
      {
        do
        {
          v7 = sub_19D3715C0(v7 - 96);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v42 = v6;
      operator delete(v8);
    }
  }

  v9 = v36;
  if (v36)
  {
    v10 = v37;
    v11 = v36;
    if (v37 != v36)
    {
      do
      {
        v12 = *(v10 - 17);
        v10 -= 5;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v36;
    }

    v37 = v9;
    operator delete(v11);
  }

  v13 = v34;
  if (v34)
  {
    v14 = v35;
    v15 = v34;
    if (v35 != v34)
    {
      do
      {
        v16 = *(v14 - 25);
        v14 -= 6;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v34;
    }

    v35 = v13;
    operator delete(v15);
  }

  *a1 = &unk_1F10BB1D0;
  sub_19D3C21BC(a1 + 152);
  if (*(a1 + 112) == 1)
  {
    v17 = 0;
    v18 = *(a1 + 108);
    *(a1 + 7744) = v18;
    v19 = 1;
    v20 = v18;
    do
    {
      v21 = 1812433253 * (v20 ^ (v20 >> 30));
      v20 = v21 + v19;
      *(a1 + 7748 + 4 * v17) = v17 + v21 + 1;
      ++v19;
      ++v17;
    }

    while (v17 != 623);
    *(a1 + 10240) = 0;
    *(a1 + 152) = v18;
    v22 = 1;
    v23 = 39;
    v24 = v18;
    do
    {
      v25 = 1812433253 * (v24 ^ (v24 >> 30));
      v24 = v25 + v22;
      *(a1 + 4 * v23) = v23 + v25 - 38;
      ++v22;
      ++v23;
    }

    while (v23 != 662);
    v26 = 0;
    *(a1 + 2648) = 0;
    *(a1 + 2680) = v18;
    v27 = 1;
    v28 = v18;
    do
    {
      v29 = 1812433253 * (v28 ^ (v28 >> 30));
      v28 = v29 + v27;
      *(a1 + 2684 + 4 * v26) = v26 + v29 + 1;
      ++v27;
      ++v26;
    }

    while (v26 != 623);
    v30 = 0;
    *(a1 + 5176) = 0;
    *(a1 + 5200) = v18;
    v31 = 1;
    do
    {
      v32 = 1812433253 * (v18 ^ (v18 >> 30));
      v18 = v32 + v31;
      *(a1 + 5204 + 4 * v30) = v30 + v32 + 1;
      ++v31;
      ++v30;
    }

    while (v30 != 623);
    *(a1 + 7696) = 0;
    sub_19D43888C();
  }

  return a1;
}

void sub_19D3C1B50(_Unwind_Exception *a1)
{
  sub_19D3C1C0C(v2);
  sub_19D3C1C5C(v1);
  _Unwind_Resume(a1);
}

void sub_19D3C1B80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4((v2 + 32));
  sub_19D3C2160(v3);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3C1BA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34((v2 + 32));
  sub_19D3C2160(v3);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3C1BC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3C2160(v2);
  sub_19D3BBF48(va);
  _Unwind_Resume(a1);
}

void sub_19D3C1BE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3708F4(va);
  _Unwind_Resume(a1);
}

void sub_19D3C1BF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D36EE34(va);
  _Unwind_Resume(a1);
}

std::random_device *sub_19D3C1C0C(std::random_device *a1)
{
  std::random_device::~random_device(a1 + 2524);
  std::random_device::~random_device(a1 + 1888);
  std::random_device::~random_device(a1 + 1258);
  std::random_device::~random_device(a1 + 626);
  return a1;
}

void *sub_19D3C1C5C(void *a1)
{
  *a1 = &unk_1F10BB228;
  sub_19D3BBF48((a1 + 4));
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_19D3C1CD8(uint64_t a1)
{
  *a1 = &unk_1F10BB1D0;
  std::random_device::~random_device((a1 + 10248));
  std::random_device::~random_device((a1 + 7704));
  std::random_device::~random_device((a1 + 5184));
  std::random_device::~random_device((a1 + 2656));
  *a1 = &unk_1F10BB228;
  sub_19D3BBF48(a1 + 32);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_19D3C1DA0(void *a1)
{
  *a1 = &unk_1F10BB1D0;
  std::random_device::~random_device(a1 + 2562);
  std::random_device::~random_device(a1 + 1926);
  std::random_device::~random_device(a1 + 1296);
  std::random_device::~random_device(a1 + 664);
  *a1 = &unk_1F10BB228;
  sub_19D3BBF48(a1 + 32);
  v2 = *(a1 + 1);
  if (v2)
  {
    v3 = *(a1 + 2);
    v4 = *(a1 + 1);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = *(a1 + 1);
    }

    *(a1 + 2) = v2;
    operator delete(v4);
  }

  operator delete(a1);
}

void sub_19D3C1E78(uint64_t a1@<X0>, __int128 **a2@<X8>)
{
  sub_19D3C2278(a1, &v32);
  sub_19D3C232C(a1, &v30);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_19D371930(&v27, v32, v33, 0x6DB6DB6DB6DB6DB7 * ((v33 - v32) >> 3));
  __p = 0;
  v25 = 0;
  v26 = 0;
  sub_19D371C6C(&__p, v30, v31, 0x6DB6DB6DB6DB6DB7 * ((v31 - v30) >> 3));
  sub_19D3710F4(a2, &v27, &__p);
  v4 = __p;
  if (__p)
  {
    v5 = v25;
    v6 = __p;
    if (v25 != __p)
    {
      do
      {
        v7 = *(v5 - 4);
        if (v7)
        {
          *(v5 - 3) = v7;
          operator delete(v7);
        }

        v8 = v5 - 7;
        if (*(v5 - 33) < 0)
        {
          operator delete(*v8);
        }

        v5 -= 7;
      }

      while (v8 != v4);
      v6 = __p;
    }

    v25 = v4;
    operator delete(v6);
  }

  v9 = v27;
  if (v27)
  {
    v10 = v28;
    v11 = v27;
    if (v28 != v27)
    {
      do
      {
        v12 = *(v10 - 4);
        if (v12)
        {
          *(v10 - 3) = v12;
          operator delete(v12);
        }

        v13 = v10 - 7;
        if (*(v10 - 33) < 0)
        {
          operator delete(*v13);
        }

        v10 -= 7;
      }

      while (v13 != v9);
      v11 = v27;
    }

    v28 = v9;
    operator delete(v11);
  }

  v14 = v30;
  if (v30)
  {
    v15 = v31;
    v16 = v30;
    if (v31 != v30)
    {
      do
      {
        v17 = *(v15 - 4);
        if (v17)
        {
          *(v15 - 3) = v17;
          operator delete(v17);
        }

        v18 = v15 - 7;
        if (*(v15 - 33) < 0)
        {
          operator delete(*v18);
        }

        v15 -= 7;
      }

      while (v18 != v14);
      v16 = v30;
    }

    v31 = v14;
    operator delete(v16);
  }

  v19 = v32;
  if (v32)
  {
    v20 = v33;
    v21 = v32;
    if (v33 != v32)
    {
      do
      {
        v22 = *(v20 - 32);
        if (v22)
        {
          *(v20 - 24) = v22;
          operator delete(v22);
        }

        v23 = (v20 - 56);
        if (*(v20 - 33) < 0)
        {
          operator delete(*v23);
        }

        v20 -= 56;
      }

      while (v23 != v19);
      v21 = v32;
    }

    v33 = v19;
    operator delete(v21);
  }
}

void sub_19D3C2090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_19D371E8C(va);
  sub_19D371E8C(va1);
  sub_19D371E8C((v4 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_19D3C20D0(uint64_t *a1, uint64_t *a2, double a3)
{
  sub_19D3BA6D0(v9, a2);
  v10 = a3;
  v5 = a1[2];
  if (v5 >= a1[3])
  {
    v7 = sub_19D3C30A8(a1 + 1, v9);
  }

  else
  {
    v6 = sub_19D3BA6D0(v5, v9);
    *(v6 + 12) = v10;
    v7 = (v6 + 13);
  }

  a1[2] = v7;
  return sub_19D3715C0(v9);
}

void sub_19D3C214C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3715C0(va);
  _Unwind_Resume(a1);
}

void **sub_19D3C2160(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_19D3C21BC(uint64_t a1)
{
  v2 = sub_19D370B80(a1);
  *(v2 + 2512) = xmmword_19D475ED0;
  sub_19D370B80(v2 + 2528);
  *(a1 + 5040) = -NAN;
  sub_19D370B80(a1 + 5048);
  *(a1 + 7560) = 0;
  *(a1 + 7568) = 0x3FF0000000000000;
  *(a1 + 7584) = 0;
  sub_19D370B80(a1 + 7592);
  return a1;
}

void sub_19D3C2230(_Unwind_Exception *a1)
{
  std::random_device::~random_device(v1 + 1888);
  std::random_device::~random_device(v1 + 1258);
  std::random_device::~random_device(v1 + 626);
  _Unwind_Resume(a1);
}

void sub_19D3C2278(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_19D370C7C(&__p, (a1 + 32));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_19D3C23E0(__p, v9, a2, a1);
  v4 = __p;
  if (__p)
  {
    v5 = v9;
    v6 = __p;
    if (v9 != __p)
    {
      do
      {
        v7 = *(v5 - 25);
        v5 -= 6;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p;
    }

    v9 = v4;
    operator delete(v6);
  }
}

void sub_19D3C2310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D371E8C(v2);
  sub_19D36EE34(va);
  _Unwind_Resume(a1);
}

void sub_19D3C232C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_19D370EB8(&__p, (a1 + 56));
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_19D3C2A28(__p, v9, a2, a1);
  v4 = __p;
  if (__p)
  {
    v5 = v9;
    v6 = __p;
    if (v9 != __p)
    {
      do
      {
        v7 = *(v5 - 17);
        v5 -= 5;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p;
    }

    v9 = v4;
    operator delete(v6);
  }
}

void sub_19D3C23C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D371E8C(v2);
  sub_19D36F93C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3C23E0(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a1;
    v9 = (a4 + 2664);
    do
    {
      if (*(v8 + 23) < 0)
      {
        sub_19D2AD6B8(v16, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        v17 = *(v8 + 2);
        *v16 = v10;
      }

      v11 = *(v8 + 24);
      v19 = *(v8 + 10);
      v18 = v11;
      v12 = v19;
      *v9 = v11;
      sub_19D3C2604(a4 + 152, v12, __p);
      sub_19D3BD354(v20, v16, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v13 = *(a3 + 8);
      if (v13 >= *(a3 + 16))
      {
        v15 = sub_19D3C27E8(a3, v20);
      }

      else
      {
        v14 = *v20;
        *(v13 + 16) = v21;
        *v13 = v14;
        v20[1] = 0;
        v21 = 0;
        *(v13 + 24) = 0;
        v20[0] = 0;
        *(v13 + 32) = 0;
        *(v13 + 40) = 0;
        if (v23 != v22)
        {
          if (((v23 - v22) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        *(v13 + 48) = v24;
        v15 = v13 + 56;
        *(a3 + 8) = v13 + 56;
      }

      *(a3 + 8) = v15;
      if (v22)
      {
        v23 = v22;
        operator delete(v22);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
        if (SHIBYTE(v17) < 0)
        {
LABEL_22:
          operator delete(v16[0]);
        }
      }

      else if (SHIBYTE(v17) < 0)
      {
        goto LABEL_22;
      }

      v8 += 3;
    }

    while (v8 != a2);
  }

  return a3;
}

void sub_19D3C25A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v23 = *v20;
  if (*v20)
  {
    *(v21 + 32) = v23;
    operator delete(v23);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  *(v19 + 8) = v21;
  sub_19D3BBBAC(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D3C2604@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = result;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  if (a2)
  {
    v6 = *(result + 2512);
    v7 = (*(result + 2520) - v6) * 5.42101086e-20;
    v8 = *(result + 2496);
    do
    {
      v9 = (v8 + 1) % 0x270;
      if (*(v4 + 4 * v9))
      {
        v10 = -1727483681;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10 ^ *(v4 + 4 * ((v8 + 397) % 0x270)) ^ ((*(v4 + 4 * v9) & 0x7FFFFFFE | *(v4 + 4 * v8) & 0x80000000) >> 1);
      *(v4 + 4 * v8) = v11;
      v12 = ((v11 ^ (v11 >> 11)) << 7) & 0x9D2C5680 ^ v11 ^ (v11 >> 11);
      if (v9 == 623)
      {
        v8 = 0;
      }

      else
      {
        v8 = v9 + 1;
      }

      v13 = *(v4 + 4 * v8);
      if (v9 >= 0xE3)
      {
        v14 = -227;
      }

      else
      {
        v14 = 397;
      }

      v15 = *(v4 + 4 * (v14 + v9));
      v16 = (v12 << 15) & 0xEFC60000 ^ v12;
      if (v13)
      {
        v17 = -1727483681;
      }

      else
      {
        v17 = 0;
      }

      result = v17 ^ v15 ^ ((v13 & 0x7FFFFFFE | *(v4 + 4 * v9) & 0x80000000) >> 1);
      v18 = ((result ^ (result >> 11)) << 7) & 0x9D2C5680 ^ result ^ (result >> 11);
      *(v4 + 4 * v9) = result;
      *v5++ = v6 + v7 * ((v16 ^ (v16 >> 18)) + ((v18 << 15) & 0xEFC60000 ^ v18 ^ (((v18 << 15) & 0xEFC60000 ^ v18) >> 18)) * 4294967300.0);
      --v3;
    }

    while (v3);
    *(v4 + 2496) = v8;
  }

  return result;
}

uint64_t sub_19D3C27E8(uint64_t a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_19D2AE2B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  v18 = a1;
  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v6 = 56 * v2;
  __p = 0;
  v15 = v6;
  v16 = 56 * v2;
  v17 = 0;
  *v6 = *a2;
  v7 = *(a2 + 24);
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = 0;
  *(a2 + 16) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v8 = *(a2 + 32);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(v6 + 48) = *(a2 + 48);
  v16 = v6 + 56;
  sub_19D372210(a1, &__p);
  v9 = *(a1 + 8);
  v10 = v15;
  while (1)
  {
    v11 = v16;
    if (v16 == v10)
    {
      break;
    }

    v16 -= 56;
    v12 = *(v11 - 32);
    if (v12)
    {
      *(v11 - 24) = v12;
      operator delete(v12);
    }

    if (*(v11 - 33) < 0)
    {
      operator delete(*(v11 - 56));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_19D3C29C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D372424(va);
  _Unwind_Resume(a1);
}

void sub_19D3C29DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 32) = v5;
    operator delete(v5);
    if ((*(v2 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      sub_19D372424(va);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  sub_19D372424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3C2A28(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      if (*(v7 + 23) < 0)
      {
        sub_19D2AD6B8(v17, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        v18 = *(v7 + 2);
        *v17 = v8;
      }

      v9 = *(v7 + 3);
      v20 = *(v7 + 8);
      v19 = v9;
      v10 = v20;
      *(a4 + 5192) = v9;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      v29 = 0;
      v16 = v7;
      if (v10)
      {
        if ((v10 & 0x80000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      v26 = 0;
      v27 = 0;
      v29 = 0;
      v28 = 0;
      sub_19D3BD734(v21, v17, &v26);
      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      v11 = *(v4 + 8);
      if (v11 >= *(v4 + 16))
      {
        v13 = sub_19D3C2E68(v4, v21);
      }

      else
      {
        v12 = *v21;
        *(v11 + 16) = v22;
        *v11 = v12;
        v21[1] = 0;
        v22 = 0;
        *(v11 + 24) = 0;
        v21[0] = 0;
        *(v11 + 32) = 0;
        *(v11 + 40) = 0;
        if (v24 != __p)
        {
          if (((v24 - __p) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        *(v11 + 48) = v25;
        v13 = v11 + 56;
        v4 = a3;
        *(a3 + 8) = v11 + 56;
      }

      *(v4 + 8) = v13;
      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21[0]);
        if (SHIBYTE(v18) < 0)
        {
LABEL_25:
          operator delete(v17[0]);
        }
      }

      else if (SHIBYTE(v18) < 0)
      {
        goto LABEL_25;
      }

      v7 = (v16 + 40);
    }

    while ((v16 + 40) != a2);
  }

  return v4;
}

void sub_19D3C2E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v27 = *v25;
  if (*v25)
  {
    *(v24 + 32) = v27;
    operator delete(v27);
  }

  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  *(a11 + 8) = v24;
  sub_19D3BBBAC(&a24);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D3C2E68(uint64_t a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_19D2AE2B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  v18 = a1;
  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v6 = 56 * v2;
  __p = 0;
  v15 = v6;
  v16 = 56 * v2;
  v17 = 0;
  *v6 = *a2;
  v7 = *(a2 + 24);
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = 0;
  *(a2 + 16) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v8 = *(a2 + 32);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(v6 + 48) = *(a2 + 48);
  v16 = v6 + 56;
  sub_19D372798(a1, &__p);
  v9 = *(a1 + 8);
  v10 = v15;
  while (1)
  {
    v11 = v16;
    if (v16 == v10)
    {
      break;
    }

    v16 -= 56;
    v12 = *(v11 - 32);
    if (v12)
    {
      *(v11 - 24) = v12;
      operator delete(v12);
    }

    if (*(v11 - 33) < 0)
    {
      operator delete(*(v11 - 56));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_19D3C3048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D372424(va);
  _Unwind_Resume(a1);
}

void sub_19D3C305C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 32) = v5;
    operator delete(v5);
    if ((*(v2 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      sub_19D372424(va);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  sub_19D372424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3C30A8(uint64_t *a1, uint64_t *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_19D2AE2B4();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x276276276276276)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v7 = 8 * ((a1[1] - *a1) >> 3);
  sub_19D3BA6D0(v7, a2);
  *(v7 + 96) = a2[12];
  v8 = 104 * v2 + 104;
  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      v14 = sub_19D3BF1AC(v13, v12);
      v14[12] = *(v12 + 96);
      v12 += 104;
      v13 = v14 + 13;
    }

    while (v12 != v10);
    do
    {
      sub_19D3715C0(v9);
      v9 += 104;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_19D3C3218(uint64_t a1, uint64_t a2)
{
  sub_19D370C7C(&v19, a2);
  sub_19D370EB8(&v21, (a2 + 24));
  v4 = *(a2 + 64);
  v23 = *(a2 + 48);
  v24 = v4;
  v25 = *(a2 + 80);
  sub_19D3B60F8(&__p, a2 + 88);
  *a1 = &unk_1F10BB228;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_19D370C7C((a1 + 32), &v19);
  sub_19D370EB8((a1 + 56), &v21);
  v5 = v24;
  *(a1 + 80) = v23;
  *(a1 + 96) = v5;
  *(a1 + 112) = v25;
  sub_19D3B60F8(a1 + 120, &__p);
  if (v28 == 1)
  {
    v6 = __p;
    if (__p)
    {
      v7 = v27;
      v8 = __p;
      if (v27 != __p)
      {
        do
        {
          v7 = sub_19D3715C0(v7 - 96);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v27 = v6;
      operator delete(v8);
    }
  }

  v9 = v21;
  if (v21)
  {
    v10 = v22;
    v11 = v21;
    if (v22 != v21)
    {
      do
      {
        v12 = *(v10 - 17);
        v10 -= 5;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v21;
    }

    v22 = v9;
    operator delete(v11);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
    {
      do
      {
        v16 = *(v14 - 25);
        v14 -= 6;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }

  *a1 = &unk_1F10BB258;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v17 = sub_19D36EBA8(a2);
  v18 = sub_19D36F6A8(a2);
  *(a1 + 216) = 0;
  *(a1 + 176) = v18 + v17;
  *(a1 + 184) = v18 + v17;
  *(a1 + 192) = xmmword_19D475EE0;
  *(a1 + 208) = 0x3FF0000000000000;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  operator new();
}

void sub_19D3C3910(_Unwind_Exception *a1)
{
  sub_19D372E78(v5);
  sub_19D3C1C0C((v6 + 304));
  v8 = v1[68];
  v1[68] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *v4 = &unk_1F10BB2F0;
  v9 = *(v6 + 248);
  if (v9)
  {
    v1[63] = v9;
    operator delete(v9);
  }

  sub_19D3CD11C(v3);
  sub_19D3C3E08(v2);
  sub_19D3C1C5C(v1);
  _Unwind_Resume(a1);
}

void sub_19D3C3BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3C3BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3C3D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D3708F4(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_19D3C3D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3C3D68(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_19D3CC560(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
    sub_19D3CC8B0((a1 + 24), *(a2 + 24), *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
    sub_19D3CCC00((a1 + 48), *(a2 + 48), (a2 + 56));
    sub_19D3CCC00((a1 + 72), *(a2 + 72), (a2 + 80));
  }

  return a1;
}

void **sub_19D3C3E08(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 7);
        v5 -= 56;
        v6 = v7;
        if (v7)
        {
          *(v3 - 6) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_19D3C3E84(uint64_t a1)
{
  v1 = sub_19D3CD1C0(a1);

  operator delete(v1);
}

__int128 **sub_19D3C3EAC@<X0>(uint64_t a1@<X0>, __int128 **a2@<X8>)
{
  v4 = a1 + 8;
  v5 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *(a1 + 8)) >> 3);
  v6 = sub_19D36EBA8((a1 + 32));
  v7 = 5 * (sub_19D36F6A8(v4 + 24) + v6);
  if (*(v4 + 136) == 1 && v7 <= (-1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5)))
  {
    v7 = -1431655765 * ((*(a1 + 128) - *(a1 + 120)) >> 5);
  }

  if (v5 >= v7)
  {
    (*(**(a1 + 544) + 16))(v10);
    sub_19D3BA6D0(a2, v10);
    return sub_19D3715C0(v10);
  }

  else
  {
    v8 = (*(a1 + 10656) + 96 * (-991146299 * ((*(a1 + 16) - *(a1 + 8)) >> 3)));

    return sub_19D3BA6D0(a2, v8);
  }
}

void sub_19D3C3FF0(uint64_t a1, __int128 **a2, double a3)
{
  sub_19D3C6444(a2, &__p);
  v5 = sub_19D3C85B8(a1 + 176, &__p);
  v7 = sqrt(v6);
  v16 = v7;
  v17 = v5;
  v8 = erfc((v5 - *(a1 + 528)) * -0.707106781 / v7) * 0.5;
  v15 = v8;
  v9 = *(a1 + 160);
  if (v9 >= *(a1 + 168))
  {
    sub_19D3CD37C((a1 + 152), &__p, &v17, &v16, &v15);
  }

  else
  {
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    if (v19 != __p)
    {
      if (((v19 - __p) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    *(v9 + 24) = v20;
    *(v9 + 32) = v5;
    *(v9 + 40) = v7;
    *(v9 + 48) = v8;
    v10 = v9 + 56;
    *(a1 + 160) = v9 + 56;
  }

  *(a1 + 160) = v10;
  v11 = *(a1 + 464);
  v12 = v11 + 1;
  *(a1 + 464) = v11 + 1;
  v13 = *(a1 + 440);
  v14 = (*(a1 + 448) - v13) >> 3;
  if (v11 + 1 <= v14)
  {
    if (v11 + 1 < v14)
    {
      *(a1 + 448) = v13 + 8 * v11 + 8;
    }
  }

  else
  {
    sub_19D3628E0(a1 + 440, v11 + 1 - v14);
    v12 = *(a1 + 464);
    v13 = *(a1 + 440);
  }

  *(v13 + 8 * v12 - 8) = a3;
  sub_19D3CD7B0(a1 + 176, &__p);
  sub_19D3CED6C(a1 + 472, a1 + 176);
}

void sub_19D3C41F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_19D3715C0(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19D3C4280(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = v1[9];
  v2 = v1[10];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = v1[12];
  v6 = HIDWORD(v5);
  if (v5 << 32)
  {
    v4 = *(a1 + 8);
    if (!v6)
    {
      __p = 0;
      v12 = 0;
      v14 = 0;
      v13 = 0;
      sub_19D3C4910(v4);
      operator new();
    }

    if ((v1[12] & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a1 + 56) = *(*(a1 + 8) + 96);
  if (v6)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = 0;
  v8 = 0;
  __p = 0;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  v9 = MEMORY[0];
  v15 = MEMORY[0];
  if ((a1 + 16) != &__p)
  {
    sub_19D3C4E20((a1 + 16), 0, v12, v12 >> 3);
    v8 = v14;
    v9 = v15;
    v7 = __p;
  }

  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  if (v7)
  {
    v12 = v7;
    operator delete(v7);
  }
}

void sub_19D3C4770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v16)
  {
    operator delete(v16);
  }

  if (v17)
  {
    operator delete(v17);
    if (!v15)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v15)
  {
    goto LABEL_7;
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

void sub_19D3C47F8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_19D2AE2B4();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

double sub_19D3C4910(uint64_t a1)
{
  if (*(a1 + 96))
  {
    sub_19D3C49F4(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 232), 1, &__C, __N);
    v2 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 264), 1, &__C, *(a1 + 288));
    v3 = __C;
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v3 + v2;
  }

  else
  {
    __A[0] = 0;
    vDSP_meanvD(*(a1 + 264), 1, __A, *(a1 + 288));
    return *__A;
  }
}

void sub_19D3C49D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3C49F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 96);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

void sub_19D3C4C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      *(a9 + 8) = v12;
      operator delete(v12);
      _Unwind_Resume(a1);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  *(a9 + 8) = v12;
  operator delete(v12);
  _Unwind_Resume(a1);
}

double sub_19D3C4CAC(uint64_t a1, uint64_t a2, const double **a3)
{
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_vsubD(*a3, 1, 0, 1, 0, 1, *(a2 + 24));
  cblas_dnrm2_NEWLAPACK();
  return v5 * v5 / (*(a1 + 24) * *(a1 + 24));
}

void sub_19D3C4DE4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

char *sub_19D3C4E20(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_19D2AE2B4();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t sub_19D3C4F7C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_19D370C7C(&v15, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BB370;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v15);
  sub_19D370EB8((a1 + 40), &__p);
  v6 = __p;
  if (__p)
  {
    v7 = v18;
    v8 = __p;
    if (v18 != __p)
    {
      do
      {
        v9 = *(v7 - 17);
        v7 -= 5;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __p;
    }

    v18 = v6;
    operator delete(v8);
  }

  v10 = v15;
  if (v15)
  {
    v11 = v16;
    v12 = v15;
    if (v16 != v15)
    {
      do
      {
        v13 = *(v11 - 25);
        v11 -= 6;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v15;
    }

    v16 = v10;
    operator delete(v12);
  }

  *a1 = &unk_1F10BB318;
  *(a1 + 64) = 5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_19D3C50C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_19D36EE34((v9 + 16));
  sub_19D3708F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3C5108(uint64_t a1)
{
  *a1 = &unk_1F10BB318;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  *a1 = &unk_1F10BB370;
  sub_19D3708F4((a1 + 16));
  return a1;
}

void sub_19D3C51A4(void *__p)
{
  *__p = &unk_1F10BB318;
  v2 = __p[9];
  if (v2)
  {
    v3 = __p[10];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = __p[9];
    }

    __p[10] = v2;
    operator delete(v4);
  }

  *__p = &unk_1F10BB370;
  v5 = __p[5];
  if (v5)
  {
    v6 = __p[6];
    v7 = __p[5];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = __p[5];
    }

    __p[6] = v5;
    operator delete(v7);
  }

  v9 = __p[2];
  if (v9)
  {
    v10 = __p[3];
    v11 = __p[2];
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __p[2];
    }

    __p[3] = v9;
    operator delete(v11);
  }

  operator delete(__p);
}

void sub_19D3C52E0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D3C5D14(a1);
  v6 = *(a1 + 72);
  if (v6 != *(a1 + 80))
  {
    sub_19D3BA6D0(a3, *(a1 + 72));
    *(a3 + 96) = *(v6 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v92, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    return;
  }

  v80 = a3;
  sub_19D3C6024(a2, &v96);
  sub_19D3C618C(a2, v93);
  v7 = v94;
  if (v94 != v95)
  {
    while (1)
    {
      v8 = *(v7 + 28);
      v9 = HIDWORD(v8);
      sub_19D3BA6D0(v92, &v96[12 * v8]);
      v81 = v9;
      if (v9 >= 1)
      {
        break;
      }

LABEL_91:
      sub_19D3715C0(v92);
      v73 = v7[1];
      if (v73)
      {
        do
        {
          v74 = v73;
          v73 = *v73;
        }

        while (v73);
      }

      else
      {
        do
        {
          v74 = v7[2];
          v75 = *v74 == v7;
          v7 = v74;
        }

        while (!v75);
      }

      v7 = v74;
      if (v74 == v95)
      {
        goto LABEL_97;
      }
    }

    v10 = 0;
    while (1)
    {
      sub_19D3C62B4(a1, v92, &__A);
      sub_19D3709B0(v92, &__A);
      sub_19D2A3E48(v91, v91[1]);
      sub_19D2A3E48(v90, v90[1]);
      v11 = __p;
      if (__p)
      {
        v12 = v89;
        v13 = __p;
        if (v89 != __p)
        {
          do
          {
            v14 = *(v12 - 4);
            if (v14)
            {
              *(v12 - 3) = v14;
              operator delete(v14);
            }

            v15 = v12 - 7;
            if (*(v12 - 33) < 0)
            {
              operator delete(*v15);
            }

            v12 -= 7;
          }

          while (v15 != v11);
          v13 = __p;
        }

        v89 = v11;
        operator delete(v13);
      }

      v16 = __A;
      if (*&__A != 0.0)
      {
        v17 = v87;
        v18 = __A;
        if (v87 != __A)
        {
          do
          {
            v19 = *(v17 - 4);
            if (v19)
            {
              *(v17 - 3) = v19;
              operator delete(v19);
            }

            v20 = (v17 - 7);
            if (*(v17 - 33) < 0)
            {
              operator delete(*v20);
            }

            v17 -= 7;
          }

          while (v20 != v16);
          v18 = __A;
        }

        v87 = v16;
        operator delete(v18);
      }

      v21 = *(a1 + 8);
      sub_19D3C6444(v92, &__B);
      v22 = *(v21 + 8);
      if (*(v22 + 96))
      {
        sub_19D3C49F4(*(v21 + 8), v98);
        *&__A = 0.0;
        vDSP_dotprD(v98[0], 1, *(v22 + 232), 1, &__A, v99);
        v23 = __A;
        *&__A = 0.0;
        vDSP_meanvD(*(v22 + 264), 1, &__A, *(v22 + 288));
        v24 = __A;
        v26 = *(v22 + 192);
        v25 = *(v22 + 196);
        v101 = 0.0;
        v102 = 0;
        __C = 0.0;
        if (v25 * v26)
        {
          if (((v25 * v26) & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v103 = v26;
        v104 = v25;
        if (v26)
        {
          v29 = *(v22 + 196);
          if (v29)
          {
            v30 = 0;
            v31 = *(v22 + 168);
            v32 = 8 * v29;
            if (v31 + 8 * v26 * v29)
            {
              v33 = v31 >= 8 * v29 + (8 * v26 - 8) * v25;
            }

            else
            {
              v33 = 1;
            }

            v35 = !v33 || (v25 | v29) < 0;
            v36 = (v29 < 6) | v35;
            v37 = (v31 + 16);
            v38 = 16;
            v39 = 8 * v25;
            v40 = 0;
            do
            {
              if (v36)
              {
                v41 = 0;
              }

              else
              {
                v42 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                v43 = v38;
                v44 = v37;
                do
                {
                  v45 = *v44;
                  *(v43 - 1) = *(v44 - 1);
                  *v43 = v45;
                  v44 += 2;
                  v43 += 2;
                  v42 -= 4;
                }

                while (v42);
                v41 = v29 & 0xFFFFFFFFFFFFFFFCLL;
                if ((v29 & 0xFFFFFFFFFFFFFFFCLL) == v29)
                {
                  goto LABEL_46;
                }
              }

              v46 = v29 - v41;
              v47 = 8 * v41;
              v48 = (v40 + 8 * v41);
              v49 = (v31 + v47);
              do
              {
                v50 = *v49++;
                *v48++ = v50;
                --v46;
              }

              while (v46);
LABEL_46:
              ++v30;
              v37 = (v37 + v32);
              v38 += v39;
              v40 += v39;
              v31 += v32;
            }

            while (v30 != v26);
          }

          if (v26 >= 1)
          {
            v51 = 0;
            v52 = 1;
            v53 = -1;
            do
            {
              if (v29 <= v52)
              {
                v54 = v52;
              }

              else
              {
                v54 = v29;
              }

              if (v51 + 1 < v29)
              {
                v55 = 0;
                v56 = v54 + v53;
                v57 = 8 * v51 * v25;
                if ((v54 + v53) < 4)
                {
                  goto LABEL_67;
                }

                if (v54 - v51 + v52 - 2 < v52)
                {
                  goto LABEL_67;
                }

                v58 = v56 & 0xFFFFFFFC;
                v55 = v56 & 0xFFFFFFFC;
                v59 = v52;
                do
                {
                  v60 = (v57 + 8 * v59);
                  *v60 = 0uLL;
                  v60[1] = 0uLL;
                  v59 += 4;
                  v58 -= 4;
                }

                while (v58);
                if (v56 != v55)
                {
LABEL_67:
                  v61 = v55 + v52;
                  do
                  {
                    *(v57 + 8 * v61++) = 0;
                  }

                  while (v54 != v61);
                }
              }

              ++v51;
              ++v52;
              --v53;
            }

            while (v51 != v26);
          }
        }

        sub_19D3C8BF8(&__C, v98, &__A);
        if (__C != 0.0)
        {
          v101 = __C;
          operator delete(*&__C);
        }

        v62 = *(v22 + 24);
        if (v83 != __B)
        {
          if (((v83 - __B) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        vDSP_vsubD(__B, 1, 0, 1, 0, 1, v84);
        cblas_dnrm2_NEWLAPACK();
        v64 = v63;
        v65 = *(v22 + 32);
        __C = 0.0;
        vDSP_dotprD(__A, 1, __A, 1, &__C, __p);
        v66 = __C;
        if (*&__A != 0.0)
        {
          v87 = __A;
          operator delete(__A);
        }

        v67 = -(v66 - exp(v64 * v64 * -0.5 / (v65 * v65)) * v62);
        if (v67 > 2.22044605e-16)
        {
          v68 = v67;
        }

        else
        {
          v68 = 0.0;
        }

        v69 = *(v22 + 16);
        if (v98[0])
        {
          v98[1] = v98[0];
          operator delete(v98[0]);
        }

        v27 = *&v24 + *&v23;
        v28 = sqrt(v69 + v68);
        if (v28 < 0.00000001)
        {
          goto LABEL_87;
        }
      }

      else
      {
        *&__A = 0.0;
        vDSP_meanvD(*(v22 + 264), 1, &__A, *(v22 + 288));
        v27 = *&__A;
        v28 = sqrt(sub_19D3C86D8(v22, &__B));
        if (v28 < 0.00000001)
        {
          goto LABEL_87;
        }
      }

      v70 = *(*(v21 + 8) + 96);
      if (v70 > 0)
      {
        if (*(v21 + 56) != v70)
        {
          (*(*v21 + 16))(v21);
        }

        (**v21)(v21, v27, v28);
        goto LABEL_88;
      }

LABEL_87:
      v71 = (*(*v21 + 8))(v21);
LABEL_88:
      v72 = *&v71;
      if (__B)
      {
        v83 = __B;
        operator delete(__B);
      }

      v85 = v72;
      sub_19D3C6830((a1 + 64), v92, &v85);
      if (++v10 == v81)
      {
        goto LABEL_91;
      }
    }
  }

LABEL_97:
  v76 = *(a1 + 72);
  sub_19D3BA6D0(v80, v76);
  *(v80 + 96) = v76[12];
  sub_19D3C6D74(*(a1 + 72), *(a1 + 80), v92, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
  sub_19D2AD8CC(&v94, v95[0]);
  v77 = v96;
  if (v96)
  {
    v78 = v97;
    v79 = v96;
    if (v97 != v96)
    {
      do
      {
        v78 = sub_19D3715C0(v78 - 96);
      }

      while (v78 != v77);
      v79 = v96;
    }

    v97 = v77;
    operator delete(v79);
  }
}

void sub_19D3C5B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, void *a43)
{
  sub_19D3715C0(v43);
  sub_19D2AD8CC(&a42, a43);
  sub_19D372E78((v44 - 240));
  _Unwind_Resume(a1);
}

uint64_t sub_19D3C5CB8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_19D3715C0(v3 - 104);
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_19D3C5D14(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 5;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v3 = *(a1 + 72);
  v2 = a1 + 72;
  if (v3 == *(a1 + 80))
  {
    v12 = 0;
    *(a1 + 64) = 5;
    if ((a1 + 64) == &v18)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  do
  {
    sub_19D3BA6D0(v17, v3);
    v17[12] = *(v3 + 96);
    sub_19D3C6D74(*(a1 + 72), *(a1 + 80), __p, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
    *(a1 + 80) = sub_19D3715C0(*(a1 + 80) - 104);
    v4 = *(a1 + 8);
    sub_19D3C6444(v17, __p);
    v5.n128_f64[0] = sub_19D3C85B8(*(v4 + 8), __p);
    v7 = sqrt(v6);
    if (v7 < 0.00000001 || (v8 = *(*(v4 + 8) + 96), v8 <= 0))
    {
      v10 = (*(*v4 + 8))(v4, v5);
    }

    else
    {
      if (*(v4 + 56) != v8)
      {
        v9 = v5.n128_u64[0];
        (*(*v4 + 16))(v4);
        v5.n128_u64[0] = v9;
      }

      (**v4)(v4, v5, v7);
    }

    *&v11 = v10;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v16 = v11;
    if (*&v11 > (*(**(a1 + 8) + 8))(*(a1 + 8)))
    {
      sub_19D3C6830(&v18, v17, &v16);
    }

    sub_19D3715C0(v17);
    v3 = *(a1 + 72);
  }

  while (v3 != *(a1 + 80));
  v12 = v19;
  *(a1 + 64) = v18;
  if ((a1 + 64) != &v18)
  {
LABEL_17:
    sub_19D3C6B24(v2, v12, v20, 0x4EC4EC4EC4EC4EC5 * (v20 - v12));
    v12 = v19;
  }

LABEL_18:
  if (v12)
  {
    v13 = v20;
    v14 = v12;
    if (v20 != v12)
    {
      do
      {
        v13 = sub_19D3715C0((v13 - 13));
      }

      while (v13 != v12);
      v14 = v19;
    }

    v20 = v12;
    operator delete(v14);
  }
}

void sub_19D3C5FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D3715C0(va);
  sub_19D3C5CB8(v6 - 128);
  _Unwind_Resume(a1);
}

void sub_19D3C5FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_19D3715C0(&a14);
  sub_19D3C5CB8(v14 - 128);
  _Unwind_Resume(a1);
}

void sub_19D3C6024(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  __p = 0;
  v8 = 0;
  v2 = *a1;
  v3 = a1[1];
  v9 = 0;
  p_p = &__p;
  v11 = 0;
  if (v3 != v2)
  {
    if ((0x4EC4EC4EC4EC4EC5 * ((v3 - v2) >> 3)) < 0x276276276276277)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_19D3C70D8(0, 0, a2);
  v4 = __p;
  if (__p)
  {
    v5 = v8;
    v6 = __p;
    if (v8 != __p)
    {
      do
      {
        v5 = sub_19D3715C0(v5 - 104);
      }

      while (v5 != v4);
      v6 = __p;
    }

    v8 = v4;
    operator delete(v6);
  }
}

void sub_19D3C615C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D372E78(v2);
  sub_19D3C2160(va);
  _Unwind_Resume(a1);
}

void sub_19D3C6178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19D3C71A4(va);
  _Unwind_Resume(a1);
}

void sub_19D3C618C(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = a2 + 16;
  *(a2 + 24) = 0;
  sub_19D3C721C(a1, __p);
  sub_19D3700AC(v7, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v3 = 50;
  do
  {
    v5 = sub_19D3C759C(v7);
    v4 = sub_19D3C73D0(a2, &v5);
    ++*v4;
    --v3;
  }

  while (v3);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  std::random_device::~random_device(&v8);
}

void sub_19D3C6254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
    sub_19D2AD8CC(v14, *v15);
    _Unwind_Resume(a1);
  }

  sub_19D2AD8CC(v14, *v15);
  _Unwind_Resume(a1);
}

void sub_19D3C62B4(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int128 **a3@<X8>)
{
  sub_19D3BA6D0(a3, a2);
  sub_19D3C77B4(a2, v8);
  sub_19D3C7704(a1, v8, &v9);
  sub_19D3C7B18(a2, v6);
  sub_19D3C7A68(a1, v6, &__p);
  sub_19D3C7DCC(a3);
  sub_19D3C7F7C(a3);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v9)
  {
    *(&v9 + 1) = v9;
    operator delete(v9);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_19D3C6384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    v21 = *(v19 - 64);
    if (!v21)
    {
LABEL_3:
      v22 = a17;
      if (!a17)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v21 = *(v19 - 64);
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  *(v19 - 56) = v21;
  operator delete(v21);
  v22 = a17;
  if (!a17)
  {
LABEL_4:
    sub_19D3715C0(v18);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v22);
  sub_19D3715C0(v18);
  _Unwind_Resume(a1);
}

void sub_19D3C6444(__int128 **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  sub_19D3C77B4(a1, &__p);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D3C4E20(a2, 0, 0, 0);
  *(a2 + 24) = 0;
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  sub_19D3C7B18(a1, &__p);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D3C4E20(a2, 0, 0, 0);
  *(a2 + 24) = 0;
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_19D3C67A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (v12)
  {
    operator delete(v12);
  }

  if (v11)
  {
    operator delete(v11);
  }

  if (__p)
  {
    operator delete(__p);
    v14 = *v10;
    if (!*v10)
    {
LABEL_7:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = *v10;
    if (!*v10)
    {
      goto LABEL_7;
    }
  }

  *(v10 + 8) = v14;
  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_19D3C6830(int *a1, uint64_t *a2, __int128 **a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 2);
  if (v4 >= *(a1 + 3))
  {
    v7 = sub_19D3C9130(a1 + 1, a2, a3);
  }

  else
  {
    v6 = sub_19D3BA6D0(v4, a2);
    v6[12] = *a3;
    v7 = (v6 + 13);
  }

  *(a1 + 2) = v7;
  sub_19D3C6F88(*(a1 + 1), v7, &v26, 0x4EC4EC4EC4EC4EC5 * ((v7 - *(a1 + 1)) >> 3));
  v8 = *(a1 + 2);
  v9 = *(a1 + 1);
  LODWORD(v10) = *a1;
  v11 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * (v8 - v9) > v11)
  {
    v27 = 0;
    v12 = 0uLL;
    v26 = 0u;
    if (v9 != v8)
    {
      do
      {
        if (*(&v26 + 1) >= v27)
        {
          v14 = sub_19D3C30A8(&v26, v9);
        }

        else
        {
          v13 = sub_19D3BA6D0(*(&v26 + 1), v9);
          v13[12] = v9[12];
          v14 = (v13 + 13);
        }

        *(&v26 + 1) = v14;
        sub_19D3C92A4(v26, v14, &v25, 0x4EC4EC4EC4EC4EC5 * ((v14 - v26) >> 3));
        sub_19D3C6D74(*(a1 + 1), *(a1 + 2), &v25, 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 2) - *(a1 + 1)) >> 3));
        v15 = sub_19D3715C0(*(a1 + 2) - 104);
        *(a1 + 2) = v15;
        v9 = *(a1 + 1);
      }

      while (v9 != v15);
      v12 = v26;
      LODWORD(v10) = *a1;
      v11 = *a1;
    }

    v16 = *(&v12 + 1);
    v17 = v12;
    v18 = 0x4EC4EC4EC4EC4EC5 * ((*(&v12 + 1) - v12) >> 3);
    if (v18 > v11)
    {
      do
      {
        sub_19D3C93F4(v17, v16, &v25, v18);
        v16 = *(&v26 + 1) - 104;
        sub_19D3715C0(*(&v26 + 1) - 104);
        *(&v26 + 1) = v16;
        v17 = v26;
        v18 = 0x4EC4EC4EC4EC4EC5 * ((v16 - v26) >> 3);
        v10 = *a1;
      }

      while (v18 > v10);
    }

    if (v10 >= 1)
    {
      do
      {
        v19 = v26;
        v20 = *(a1 + 2);
        if (v20 >= *(a1 + 3))
        {
          v22 = sub_19D3C30A8(a1 + 1, v26);
        }

        else
        {
          v21 = sub_19D3BA6D0(v20, v26);
          v21[12] = *(v19 + 96);
          v22 = (v21 + 13);
        }

        *(a1 + 2) = v22;
        sub_19D3C6F88(*(a1 + 1), v22, &v25, 0x4EC4EC4EC4EC4EC5 * ((v22 - *(a1 + 1)) >> 3));
        sub_19D3C93F4(v26, *(&v26 + 1), &v25, 0x4EC4EC4EC4EC4EC5 * ((*(&v26 + 1) - v26) >> 3));
        *(&v26 + 1) = sub_19D3715C0(*(&v26 + 1) - 104);
        LODWORD(v10) = v10 - 1;
      }

      while (v10);
      v17 = v26;
    }

    if (v17)
    {
      v23 = *(&v26 + 1);
      v24 = v17;
      if (*(&v26 + 1) != v17)
      {
        do
        {
          v23 = sub_19D3715C0(v23 - 104);
        }

        while (v23 != v17);
        v24 = v26;
      }

      *(&v26 + 1) = v17;
      operator delete(v24);
    }
  }
}

void sub_19D3C6AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D3C2160(va);
  _Unwind_Resume(a1);
}

void sub_19D3C6AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D3C2160(va);
  _Unwind_Resume(a1);
}

void sub_19D3C6B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D3C2160(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3C6B24(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = *(result + 16);
  v8 = *result;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(result + 8);
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_19D3715C0(v10 - 104);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      *(v6 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0x276276276276276)
    {
      v12 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x13B13B13B13B13BLL)
      {
        v14 = 0x276276276276276;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x276276276276276)
      {
        operator new();
      }
    }

    sub_19D2AE2B4();
  }

  v15 = *(result + 8);
  if (0x4EC4EC4EC4EC4EC5 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_19D3C3D68(v8, v5);
        *(v8 + 12) = *(v5 + 96);
        v5 += 104;
        v8 = (v8 + 104);
      }

      while (v5 != a3);
      v15 = *(v6 + 8);
    }

    while (v15 != v8)
    {
      v15 -= 104;
      result = sub_19D3715C0(v15);
    }

    *(v6 + 8) = v8;
  }

  else
  {
    v16 = (a2 + v15 - v8);
    if (v15 != v8)
    {
      do
      {
        sub_19D3C3D68(v8, v5);
        *(v8 + 12) = *(v5 + 96);
        v5 += 104;
        v8 = (v8 + 104);
      }

      while (v5 != v16);
      v15 = *(v6 + 8);
    }

    result = v15;
    if (v16 != a3)
    {
      result = v15;
      do
      {
        v17 = sub_19D3BA6D0(result, v16);
        v17[12] = v16[12];
        v16 += 13;
        result = (v17 + 13);
      }

      while (v16 != a3);
    }

    *(v6 + 8) = result;
  }

  return result;
}

uint64_t sub_19D3C6D74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    sub_19D3BF1AC(v10, result);
    v11 = v7[12];
    v8 = sub_19D3C6E80(v7, a3, a4);
    v9 = v8;
    if ((a2 - 104) == v8)
    {
      sub_19D3709B0(v8, v10);
      v9[12] = v11;
    }

    else
    {
      sub_19D3709B0(v8, a2 - 104);
      v9[12] = *(a2 - 8);
      sub_19D3709B0(a2 - 104, v10);
      *(a2 - 8) = v11;
      sub_19D3C6F88(v7, (v9 + 13), a3, 0x4EC4EC4EC4EC4EC5 * (v9 + 13 - v7));
    }

    return sub_19D3715C0(v10);
  }

  return result;
}

void sub_19D3C6E6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3715C0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D3C6E80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    a1 += 13 * v5 + 13;
    v8 = 2 * v5;
    v5 = (2 * v5) | 1;
    v9 = v8 + 2;
    if (v8 + 2 < a3)
    {
      sub_19D3BA6D0(v15, a1);
      v16 = *(a1 + 12);
      sub_19D3BA6D0(v13, a1 + 13);
      v14 = *(a1 + 25);
      v10 = v14;
      v11 = v16;
      sub_19D3715C0(v13);
      sub_19D3715C0(v15);
      if (v11 < v10)
      {
        a1 += 13;
        v5 = v9;
      }
    }

    sub_19D3709B0(v7, a1);
    *(v7 + 96) = a1[12];
  }

  while (v5 <= v6);
  return a1;
}

uint64_t sub_19D3C6F88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v27 = v7;
    v28 = v6;
    v29 = v4;
    v30 = v5;
    v9 = result;
    v10 = (a4 - 2) >> 1;
    v11 = (result + 104 * v10);
    sub_19D3BA6D0(v25, v11);
    v26 = *(v11 + 12);
    v12 = a2 - 104;
    sub_19D3BA6D0(v23, (a2 - 104));
    v24 = *(a2 - 8);
    v13 = v24;
    v14 = v26;
    sub_19D3715C0(v23);
    result = sub_19D3715C0(v25);
    if (v14 < v13)
    {
      sub_19D3BF1AC(v21, a2 - 104);
      v22 = *(a2 - 8);
      do
      {
        v15 = v11;
        sub_19D3709B0(v12, v11);
        *(v12 + 96) = v11[12];
        if (!v10)
        {
          break;
        }

        v10 = (v10 - 1) >> 1;
        v11 = (v9 + 104 * v10);
        sub_19D3BA6D0(v19, v11);
        v20 = *(v11 + 12);
        sub_19D3BA6D0(v18, v21);
        v16 = *&v22;
        v18[12] = v22;
        v17 = v20;
        sub_19D3715C0(v18);
        sub_19D3715C0(v19);
        v12 = v15;
      }

      while (v17 < v16);
      sub_19D3709B0(v15, v21);
      *(v15 + 96) = *&v22;
      return sub_19D3715C0(v21);
    }
  }

  return result;
}

uint64_t *sub_19D3C70D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      sub_19D3BA6D0(v9, v6);
      v9[12] = *(v6 + 96);
      sub_19D3BA6D0(v10, v9);
      v8 = a3[1];
      if (v8 < a3[2])
      {
        v7 = sub_19D3BF1AC(v8, v10) + 12;
      }

      else
      {
        v7 = sub_19D3BF060(a3, v10);
      }

      a3[1] = v7;
      sub_19D3715C0(v10);
      sub_19D3715C0(v9);
      v6 += 104;
    }

    while (v6 != a2);
  }

  return a3;
}

void sub_19D3C7188(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_19D3715C0(va1);
  sub_19D3715C0(va);
  _Unwind_Resume(a1);
}

void ***sub_19D3C71A4(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_19D3715C0(v4 - 104);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t *sub_19D3C721C@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  memset(__p, 0, 24);
  v2 = *result;
  v3 = result[1];
  __p[3] = __p;
  v5 = 0;
  if (v3 != v2)
  {
    if ((0x4EC4EC4EC4EC4EC5 * ((v3 - v2) >> 3)) < 0x276276276276277)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_19D3C7390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_19D3C71A4(va);
  _Unwind_Resume(a1);
}

void sub_19D3C73A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_19D3715C0(va1);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_19D3C2160(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D3C73D0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_13:
    operator new();
  }

  v3 = *a2;
  v4 = a1 + 16;
  v5 = *(a1 + 16);
  do
  {
    if (*(v5 + 28) >= v3)
    {
      v4 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 28) < v3));
  }

  while (v5);
  if (v4 == a1 + 16 || v3 < *(v4 + 28))
  {
    v6 = *a2;
    v7 = *(a1 + 16);
    while (1)
    {
      while (1)
      {
        v8 = v7;
        v9 = *(v7 + 7);
        if (v6 >= v9)
        {
          break;
        }

        v7 = *v8;
        if (!*v8)
        {
          goto LABEL_13;
        }
      }

      if (v9 >= v6)
      {
        break;
      }

      v7 = v8[1];
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    *(v8 + 8) = *a1;
  }

  v10 = *a2;
  while (1)
  {
    while (1)
    {
      v11 = v2;
      v12 = *(v2 + 28);
      if (v10 >= v12)
      {
        break;
      }

      v2 = *v11;
      if (!*v11)
      {
        goto LABEL_20;
      }
    }

    if (v12 >= v10)
    {
      return v11 + 4;
    }

    v2 = v11[1];
    if (!v2)
    {
LABEL_20:
      operator new();
    }
  }
}

unint64_t sub_19D3C759C(void *a1)
{
  v1 = a1[314];
  v2 = a1[315];
  v3 = a1[312];
  v4 = (v3 + 1) % 0x270uLL;
  v5 = *(a1 + v4);
  if (v5)
  {
    v6 = -1727483681;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 ^ *(a1 + (v3 + 397) % 0x270uLL) ^ ((v5 & 0x7FFFFFFE | *(a1 + v3) & 0x80000000) >> 1);
  *(a1 + v3) = v7;
  if (v4 == 623)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4 + 1;
  }

  v9 = *(a1 + v8);
  v10 = 397;
  if (v4 >= 0xE3)
  {
    v10 = -227;
  }

  v11 = *(a1 + v10 + v4);
  if (v9)
  {
    v12 = -1727483681;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 ^ v11 ^ ((v9 & 0x7FFFFFFE | *(a1 + v4) & 0x80000000) >> 1);
  *(a1 + v4) = v13;
  a1[312] = v8;
  v14 = v2 - v1;
  if (v2 != v1)
  {
    v15 = ((v7 ^ (v7 >> 11)) << 7) & 0x9D2C5680 ^ v7 ^ (v7 >> 11);
    v16 = ((v15 << 15) & 0xEFC60000 ^ v15 ^ (((v15 << 15) & 0xEFC60000 ^ v15) >> 18));
    v17 = ((v13 ^ (v13 >> 11)) << 7) & 0x9D2C5680 ^ v13 ^ (v13 >> 11);
    v18 = (v16 + ((v17 << 15) & 0xEFC60000 ^ v17 ^ (((v17 << 15) & 0xEFC60000 ^ v17) >> 18)) * 4294967300.0) * 5.42101086e-20;
    v19 = v14 >> 3;
    v2 = v1;
    do
    {
      v20 = v19 >> 1;
      v21 = &v2[v19 >> 1];
      v23 = *v21;
      v22 = v21 + 1;
      v19 += ~(v19 >> 1);
      if (v18 < v23)
      {
        v19 = v20;
      }

      else
      {
        v2 = v22;
      }
    }

    while (v19);
  }

  return (v2 - v1) >> 3;
}

double sub_19D3C7704@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36EBA8((a1 + 16)))
  {
    sub_19D36EC54((a1 + 16), v7);
    sub_19D436700(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_19D3C77B4(__int128 **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_19D3C8288(*a1, a1[1], 0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    v7 = 0;
    while (1)
    {
      if (*(v5 + 23) < 0)
      {
        sub_19D2AD6B8(__p, *v5, *(v5 + 1));
      }

      else
      {
        v8 = *v5;
        v19 = *(v5 + 2);
        *__p = v8;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      v10 = *(v5 + 3);
      v9 = *(v5 + 4);
      if (v9 != v10)
      {
        if (((v9 - v10) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      v23 = *(v5 + 12);
      v12 = v23;
      v13 = v7 + v23;
      if (v7 >= v13)
      {
        v7 += v23;
        if (SHIBYTE(v19) < 0)
        {
          goto LABEL_23;
        }

        goto LABEL_6;
      }

      if (v23 < 4)
      {
        break;
      }

      v11 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v14 = 16;
      v15 = (8 * v7 + 16);
      v16 = v11;
      do
      {
        v17 = *v14;
        *(v15 - 1) = *(v14 - 16);
        *v15 = v17;
        v14 += 32;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v12 != v11)
      {
        goto LABEL_21;
      }

LABEL_22:
      v21 = 0;
      operator delete(0);
      v7 = v13;
      if (SHIBYTE(v19) < 0)
      {
LABEL_23:
        operator delete(__p[0]);
      }

LABEL_6:
      v5 = (v5 + 56);
      if (v5 == v6)
      {
        return;
      }
    }

    v11 = 0;
    do
    {
LABEL_21:
      *(8 * v7 + 8 * v11) = *(8 * v11);
      ++v11;
    }

    while (v12 != v11);
    goto LABEL_22;
  }
}

void sub_19D3C7A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (!v19)
  {
    _Unwind_Resume(exception_object);
  }

  *(v18 + 8) = v19;
  operator delete(v19);
  _Unwind_Resume(exception_object);
}

double sub_19D3C7A68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_19D36F6A8(a1 + 16))
  {
    sub_19D36F758(a1 + 16, v7);
    sub_19D437344(a2, v7, a3);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7[0])
    {
      v7[1] = v7[0];
      operator delete(v7[0]);
    }
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_19D3C7B18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_19D3C8420(*(a1 + 24), *(a1 + 32), 0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v5 != v6)
  {
    v7 = 0;
    while (1)
    {
      if (*(v5 + 23) < 0)
      {
        sub_19D2AD6B8(__p, *v5, *(v5 + 1));
      }

      else
      {
        v8 = *v5;
        v19 = *(v5 + 2);
        *__p = v8;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      v10 = *(v5 + 3);
      v9 = *(v5 + 4);
      if (v9 != v10)
      {
        if (((v9 - v10) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      v23 = *(v5 + 12);
      v12 = v23;
      v13 = v7 + v23;
      if (v7 >= v13)
      {
        v7 += v23;
        if (SHIBYTE(v19) < 0)
        {
          goto LABEL_23;
        }

        goto LABEL_6;
      }

      if (v23 < 8)
      {
        break;
      }

      v11 = v23 & 0xFFFFFFFFFFFFFFF8;
      v14 = 16;
      v15 = (4 * v7 + 16);
      v16 = v11;
      do
      {
        v17 = *v14;
        *(v15 - 1) = *(v14 - 16);
        *v15 = v17;
        v14 += 32;
        v15 += 2;
        v16 -= 8;
      }

      while (v16);
      if (v12 != v11)
      {
        goto LABEL_21;
      }

LABEL_22:
      v21 = 0;
      operator delete(0);
      v7 = v13;
      if (SHIBYTE(v19) < 0)
      {
LABEL_23:
        operator delete(__p[0]);
      }

LABEL_6:
      v5 = (v5 + 56);
      if (v5 == v6)
      {
        return;
      }
    }

    v11 = 0;
    do
    {
LABEL_21:
      *(4 * v7 + 4 * v11) = *(4 * v11);
      ++v11;
    }

    while (v12 != v11);
    goto LABEL_22;
  }
}

void sub_19D3C7D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18)
{
  if (!v19)
  {
    _Unwind_Resume(exception_object);
  }

  *(v18 + 8) = v19;
  operator delete(v19);
  _Unwind_Resume(exception_object);
}

void sub_19D3C7DCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = 0;
    do
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        if ((v4 & 0x80000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      sub_19D3C4E20((v1 + 24), 0, 0, 0);
      *(v1 + 48) = 0;
      v3 += v4;
      v1 += 56;
    }

    while (v1 != v2);
  }
}

void sub_19D3C7F64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3C7F7C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 != v2)
  {
    v3 = 0;
    do
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        if ((v4 & 0x80000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      sub_19D3C812C((v1 + 24), 0, 0, 0);
      *(v1 + 48) = 0;
      v3 += v4;
      v1 += 56;
    }

    while (v1 != v2);
  }
}

void sub_19D3C8114(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_19D3C812C(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    sub_19D2AE2B4();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t sub_19D3C8288(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      sub_19D3BBAB0(v8, v6);
      if (SHIBYTE(v9) < 0)
      {
        sub_19D2AD6B8(__p, v8[0], v8[1]);
      }

      else
      {
        *__p = *v8;
        v14 = v9;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      if (v11 != v10)
      {
        if (((v11 - v10) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      v7 = v12;
      v18 = v12;
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }

      if (v10)
      {
        v11 = v10;
        operator delete(v10);
      }

      if (SHIBYTE(v9) < 0)
      {
        operator delete(v8[0]);
      }

      a3 += v7;
      v6 = (v6 + 56);
    }

    while (v6 != a2);
  }

  return a3;
}

void sub_19D3C83BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBBAC(va);
  _Unwind_Resume(a1);
}

void sub_19D3C83D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      sub_19D3BBBAC(&a10);
      _Unwind_Resume(a1);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  sub_19D3BBBAC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3C8420(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      sub_19D3BBC00(v8, v6);
      if (SHIBYTE(v9) < 0)
      {
        sub_19D2AD6B8(__p, v8[0], v8[1]);
      }

      else
      {
        *__p = *v8;
        v14 = v9;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      if (v11 != v10)
      {
        if (((v11 - v10) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      v7 = v12;
      v18 = v12;
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }

      if (v10)
      {
        v11 = v10;
        operator delete(v10);
      }

      if (SHIBYTE(v9) < 0)
      {
        operator delete(v8[0]);
      }

      a3 += v7;
      v6 = (v6 + 56);
    }

    while (v6 != a2);
  }

  return a3;
}

void sub_19D3C8554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3BBBAC(va);
  _Unwind_Resume(a1);
}

void sub_19D3C8568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      sub_19D3BBBAC(&a10);
      _Unwind_Resume(a1);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  sub_19D3BBBAC(&a10);
  _Unwind_Resume(a1);
}

double sub_19D3C85B8(uint64_t a1, const double **a2)
{
  if (*(a1 + 96))
  {
    sub_19D3C49F4(a1, __A);
    __C = 0.0;
    vDSP_dotprD(__A[0], 1, *(a1 + 232), 1, &__C, __N);
    v4 = __C;
    __C = 0.0;
    vDSP_meanvD(*(a1 + 264), 1, &__C, *(a1 + 288));
    v5 = __C;
    sub_19D3C87A0(a1, a2, __A);
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }

    return v5 + v4;
  }

  else
  {
    v7 = sub_19D3C4910(a1);
    sub_19D3C86D8(a1, a2);
    return v7;
  }
}

void sub_19D3C86B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19D3C86D8(uint64_t a1, const double **a2)
{
  if (*(a1 + 96))
  {
    sub_19D3C49F4(a1, __p);
    sub_19D3C87A0(a1, a2, __p);
    v5 = v4;
    v6 = *(a1 + 16);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    return v6 + v5;
  }

  else
  {
    v8 = *(a1 + 24);
    v9 = sub_19D3C4CAC(a1 + 8, a2, a2);
    return *(a1 + 16) + exp(v9 * -0.5) * v8;
  }
}

void sub_19D3C8784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3C87A0(uint64_t a1, const double **a2, uint64_t a3)
{
  sub_19D3C88B4(a1 + 168, __p);
  sub_19D3C8BF8(__p, a3, __B);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v6 = sub_19D3C4CAC(a1 + 8, a2, a2);
  __p[0] = 0;
  vDSP_dotprD(__B[0], 1, __B[0], 1, __p, __N);
  if (__B[0])
  {
    __B[1] = __B[0];
    operator delete(__B[0]);
  }

  exp(v6 * -0.5);
}

void sub_19D3C8884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_19D3C88B4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *(result + 24);
  v3 = *(result + 28);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v3 * v4)
  {
    if (((v3 * v4) & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(a2 + 24) = v4;
  *(a2 + 28) = v3;
  if (v4)
  {
    v5 = *(result + 28);
    if (v5)
    {
      v6 = *result;
      if (v5 > 5)
      {
        v10 = v6 >= 8 * (v5 + (v4 - 1) * v3) || v6 + 8 * v4 * v5 == 0;
        if (!v10 || ((v3 | v5) & 0x80000000) != 0)
        {
          v19 = 0;
          v20 = 0;
          do
          {
            v21 = v6;
            v22 = v20;
            result = v5;
            do
            {
              v23 = *v21++;
              *v22++ = v23;
              --result;
            }

            while (result);
            ++v19;
            v20 += v3;
            v6 += 8 * v5;
          }

          while (v19 != v4);
        }

        else
        {
          v11 = v5 & 0xFFFFFFFFFFFFFFFCLL;
          v12 = v5 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
          if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
          {
            v13 = 16;
            v14 = (v6 + 16);
            v15 = 8 * v5;
            do
            {
              v16 = v14;
              v17 = v13;
              result = v11;
              do
              {
                v18 = *v16;
                *(v17 - 1) = *(v16 - 1);
                *v17 = v18;
                v17 += 2;
                v16 += 2;
                result -= 4;
              }

              while (result);
              ++v12;
              v13 += 8 * v3;
              v14 = (v14 + v15);
            }

            while (v12 != v4);
          }

          else
          {
            v24 = 0;
            v25 = (v6 + 16);
            v26 = 8 * v5;
            v27 = 16;
            v28 = 8 * v3;
            result = v26 & 0xFFFFFFFFFFFFFFE0;
            v29 = (v6 + (v26 & 0xFFFFFFFFFFFFFFE0));
            do
            {
              v30 = v11;
              v31 = v27;
              v32 = v25;
              do
              {
                v33 = *v32;
                *(v31 - 1) = *(v32 - 1);
                *v31 = v33;
                v32 += 2;
                v31 += 2;
                v30 -= 4;
              }

              while (v30);
              v34 = v29;
              v35 = result;
              v36 = v12;
              do
              {
                v37 = *v34++;
                *v35++ = v37;
                --v36;
              }

              while (v36);
              ++v24;
              v25 = (v25 + v26);
              v27 += v28;
              result += v28;
              v29 = (v29 + v26);
            }

            while (v24 != v4);
          }
        }
      }

      else
      {
        v7 = (v6 + 16);
        v8 = 16;
        v9 = v4;
        do
        {
          *(v8 - 16) = *(v7 - 2);
          if (v5 != 1)
          {
            *(v8 - 8) = *(v7 - 1);
            if (v5 != 2)
            {
              *v8 = *v7;
              if (v5 != 3)
              {
                *(v8 + 8) = v7[1];
                if (v5 != 4)
                {
                  *(v8 + 16) = v7[2];
                }
              }
            }
          }

          v7 += v5;
          v8 += 8 * v3;
          --v9;
        }

        while (v9);
      }
    }

    if (v4 >= 1)
    {
      v38 = 0;
      v39 = *(v2 + 28);
      v40 = 1;
      v41 = -1;
      do
      {
        if (v39 <= v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = v39;
        }

        if (v38 + 1 < v39)
        {
          v43 = 0;
          v44 = v42 + v41;
          v45 = 8 * v38 * v3;
          if ((v42 + v41) < 4)
          {
            goto LABEL_49;
          }

          result = (v42 - v38 + v40 - 2);
          if (result < v40)
          {
            goto LABEL_49;
          }

          LODWORD(result) = v44 & 0xFFFFFFFC;
          v43 = v44 & 0xFFFFFFFC;
          v46 = v40;
          do
          {
            v47 = (v45 + 8 * v46);
            *v47 = 0uLL;
            v47[1] = 0uLL;
            v46 += 4;
            result = (result - 4);
          }

          while (result);
          if (v44 != v43)
          {
LABEL_49:
            v48 = v43 + v40;
            do
            {
              *(v45 + 8 * v48++) = 0;
            }

            while (v42 != v48);
          }
        }

        ++v38;
        ++v40;
        --v41;
      }

      while (v38 != v4);
    }
  }

  return result;
}

void sub_19D3C8BF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  v11 = 1;
  v12 = v5;
  v9 = *(a2 + 24);
  v10 = v5;
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v8 = 0;
  sub_19D3C8D6C(a2, v7);
  sub_19D3C8EAC(a1, __p);
  dgesv_NEWLAPACK();
  sub_19D3C8FF0(v7, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_19D3C8D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    v17 = a14;
    if (!a14)
    {
LABEL_3:
      if (!v15)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v17 = a14;
    if (!a14)
    {
      goto LABEL_3;
    }
  }

  operator delete(v17);
  if (!v15)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v15);
  _Unwind_Resume(exception_object);
}

void sub_19D3C8D6C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_mtransD(*a1, 1, 0, 1, 1uLL, 0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
}

void sub_19D3C8E8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3C8EAC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 28);
  if (v4 * v3)
  {
    if (((v4 * v3) & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_mtransD(*a1, 1, 0, 1, v3, v4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v3 | (v4 << 32);
}

void sub_19D3C8FD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3C8FF0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  vDSP_mtransD(*a1, 1, 0, 1, 0, 1uLL);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
}

void sub_19D3C9110(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3C9130(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x276276276276276)
  {
    sub_19D2AE2B4();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v7 = 0x276276276276276;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 <= 0x276276276276276)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v8 = 8 * ((a1[1] - *a1) >> 3);
  sub_19D3BA6D0(v8, a2);
  *(v8 + 96) = *a3;
  v9 = 104 * v3 + 104;
  v10 = *a1;
  v11 = a1[1];
  v12 = (v8 + *a1 - v11);
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v12;
    do
    {
      v15 = sub_19D3BF1AC(v14, v13);
      v15[12] = *(v13 + 96);
      v13 += 104;
      v14 = v15 + 13;
    }

    while (v13 != v11);
    do
    {
      sub_19D3715C0(v10);
      v10 += 104;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

uint64_t sub_19D3C92A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v27 = v7;
    v28 = v6;
    v29 = v4;
    v30 = v5;
    v9 = result;
    v10 = (a4 - 2) >> 1;
    v11 = (result + 104 * v10);
    sub_19D3BA6D0(v25, v11);
    v26 = *(v11 + 12);
    v12 = a2 - 104;
    sub_19D3BA6D0(v23, (a2 - 104));
    v24 = *(a2 - 8);
    v13 = v24;
    v14 = v26;
    sub_19D3715C0(v23);
    result = sub_19D3715C0(v25);
    if (v14 > v13)
    {
      sub_19D3BF1AC(v21, a2 - 104);
      v22 = *(a2 - 8);
      do
      {
        v15 = v11;
        sub_19D3709B0(v12, v11);
        *(v12 + 96) = v11[12];
        if (!v10)
        {
          break;
        }

        v10 = (v10 - 1) >> 1;
        v11 = (v9 + 104 * v10);
        sub_19D3BA6D0(v19, v11);
        v20 = *(v11 + 12);
        sub_19D3BA6D0(v18, v21);
        v16 = *&v22;
        v18[12] = v22;
        v17 = v20;
        sub_19D3715C0(v18);
        sub_19D3715C0(v19);
        v12 = v15;
      }

      while (v17 > v16);
      sub_19D3709B0(v15, v21);
      *(v15 + 96) = *&v22;
      return sub_19D3715C0(v21);
    }
  }

  return result;
}

uint64_t sub_19D3C93F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    sub_19D3BF1AC(v10, result);
    v11 = v7[12];
    v8 = sub_19D3C9500(v7, a3, a4);
    v9 = v8;
    if ((a2 - 104) == v8)
    {
      sub_19D3709B0(v8, v10);
      v9[12] = v11;
    }

    else
    {
      sub_19D3709B0(v8, a2 - 104);
      v9[12] = *(a2 - 8);
      sub_19D3709B0(a2 - 104, v10);
      *(a2 - 8) = v11;
      sub_19D3C92A4(v7, (v9 + 13), a3, 0x4EC4EC4EC4EC4EC5 * (v9 + 13 - v7));
    }

    return sub_19D3715C0(v10);
  }

  return result;
}

void sub_19D3C94EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3715C0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D3C9500(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    a1 += 13 * v5 + 13;
    v8 = 2 * v5;
    v5 = (2 * v5) | 1;
    v9 = v8 + 2;
    if (v8 + 2 < a3)
    {
      sub_19D3BA6D0(v15, a1);
      v16 = *(a1 + 12);
      sub_19D3BA6D0(v13, a1 + 13);
      v14 = *(a1 + 25);
      v10 = v14;
      v11 = v16;
      sub_19D3715C0(v13);
      sub_19D3715C0(v15);
      if (v11 > v10)
      {
        a1 += 13;
        v5 = v9;
      }
    }

    sub_19D3709B0(v7, a1);
    *(v7 + 96) = a1[12];
  }

  while (v5 <= v6);
  return a1;
}

uint64_t sub_19D3C9608(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_19D370C7C(&v36, a3);
  sub_19D370EB8(&__p, a3 + 3);
  *a1 = &unk_1F10BB370;
  *(a1 + 8) = a2;
  sub_19D370C7C((a1 + 16), &v36);
  sub_19D370EB8((a1 + 40), &__p);
  v8 = __p;
  if (__p)
  {
    v9 = v39;
    v10 = __p;
    if (v39 != __p)
    {
      do
      {
        v11 = *(v9 - 17);
        v9 -= 5;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v39 = v8;
    operator delete(v10);
  }

  v12 = v36;
  if (v36)
  {
    v13 = v37;
    v14 = v36;
    if (v37 != v36)
    {
      do
      {
        v15 = *(v13 - 25);
        v13 -= 6;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = v36;
    }

    v37 = v12;
    operator delete(v14);
  }

  *a1 = &unk_1F10BB3A0;
  v16 = sub_19D36EBA8(a3);
  *(a1 + 72) = 0u;
  *(a1 + 64) = &unk_1F10BB3E8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = -1;
  *(a1 + 160) = 0x7FF0000000000000;
  *(a1 + 168) = -5;
  *(a1 + 176) = 0;
  sub_19D3CA020(a1 + 64, v16);
  sub_19D3C21BC(a1 + 184);
  sub_19D36EC54(a3, v34);
  sub_19D3CA6A8(a1 + 64, v34);
  sub_19D3CA7E0(a1 + 64, v35);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if ((a4 & 0x100000000) != 0)
  {
    v17 = 0;
    *(a1 + 7776) = a4;
    v18 = 1;
    v19 = a4;
    do
    {
      v20 = 1812433253 * (v19 ^ (v19 >> 30));
      v19 = v20 + v18;
      *(a1 + 7780 + 4 * v17) = v17 + v20 + 1;
      ++v18;
      ++v17;
    }

    while (v17 != 623);
    *(a1 + 10272) = 0;
    *(a1 + 184) = a4;
    v21 = 1;
    v22 = 47;
    v23 = a4;
    do
    {
      v24 = 1812433253 * (v23 ^ (v23 >> 30));
      v23 = v24 + v21;
      *(a1 + 4 * v22) = v22 + v24 - 46;
      ++v21;
      ++v22;
    }

    while (v22 != 670);
    v25 = 0;
    *(a1 + 2680) = 0;
    *(a1 + 2712) = a4;
    v26 = 1;
    v27 = a4;
    do
    {
      v28 = 1812433253 * (v27 ^ (v27 >> 30));
      v27 = v28 + v26;
      *(a1 + 2716 + 4 * v25) = v25 + v28 + 1;
      ++v26;
      ++v25;
    }

    while (v25 != 623);
    v29 = 0;
    *(a1 + 5208) = 0;
    *(a1 + 5232) = a4;
    v30 = 1;
    v31 = a4;
    do
    {
      v32 = 1812433253 * (v31 ^ (v31 >> 30));
      v31 = v32 + v30;
      *(a1 + 5236 + 4 * v29) = v29 + v32 + 1;
      ++v30;
      ++v29;
    }

    while (v29 != 623);
    *(a1 + 7728) = 0;
    sub_19D43888C();
  }

  return a1;
}

void sub_19D3C991C(_Unwind_Exception *a1)
{
  sub_19D3C99D8(v3);
  *v1 = v2;
  sub_19D3708F4((v1 + 16));
  _Unwind_Resume(a1);
}

void *sub_19D3C99D8(void *a1)
{
  *a1 = &unk_1F10BB3E8;
  sub_19D437C34(a1[1]);
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_19D3C9A58(uint64_t a1)
{
  v1 = sub_19D3CAA98(a1);

  operator delete(v1);
}

void sub_19D3C9A80(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  *&v14 = &v14 + 8;
  v17[0] = 0;
  v17[1] = 0;
  v15 = 0;
  v16 = v17;
  v4 = (*(**(a1 + 8) + 8))(*(a1 + 8));
  sub_19D3BA6D0(a2, v13);
  *(a2 + 96) = v4;
  sub_19D3715C0(v13);
  sub_19D370C7C(&v18, (a1 + 16));
  sub_19D370EB8(&v20, (a1 + 40));
  sub_19D370344(&v18, 5, &v22);
  v5 = v20;
  if (v20)
  {
    v6 = v21;
    v7 = v20;
    if (v21 != v20)
    {
      do
      {
        v8 = *(v6 - 17);
        v6 -= 5;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v20;
    }

    v21 = v5;
    operator delete(v7);
  }

  v9 = v18;
  if (v18)
  {
    v10 = v19;
    v11 = v18;
    if (v19 != v18)
    {
      do
      {
        v12 = *(v10 - 25);
        v10 -= 6;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v18;
    }

    v19 = v9;
    operator delete(v11);
  }

  sub_19D3CAC14(a1, v22);
}

void sub_19D3C9EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_19D3715C0(va1);
  sub_19D3715C0(va);
  sub_19D372E78((v6 - 104));
  sub_19D3715C0(v5);
  _Unwind_Resume(a1);
}

void sub_19D3C9EDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3C2160(va);
  sub_19D372E78((v3 - 104));
  sub_19D3715C0(v2);
  _Unwind_Resume(a1);
}

void sub_19D3C9F00(_Unwind_Exception *a1)
{
  sub_19D3708F4((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3C9F1C(_Unwind_Exception *a1)
{
  sub_19D36EE34((v2 - 152));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3C9F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_19D3715C0(va);
  _Unwind_Resume(a1);
}

void sub_19D3C9F60(_Unwind_Exception *a1)
{
  sub_19D3C71A4((v2 - 80));
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

void sub_19D3C9F84(_Unwind_Exception *a1)
{
  sub_19D372E78((v2 - 104));
  sub_19D3715C0(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D3C9FC0(uint64_t *a1)
{
  sub_19D437C34(*a1);
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_19D3CA020(uint64_t a1, unsigned int a2)
{
  sub_19D3CA1C0(&v7, 0, a2);
  sub_19D3CA104(a1 + 8, &v7);
  sub_19D437C34(v7);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  *(a1 + 112) = 1;
  v3 = sub_19D4387CC(*(a1 + 8), 500);
  sub_19D3CA36C((a1 + 8), v3);
  v4 = sub_19D438724(*(a1 + 8), -1.0);
  sub_19D3CA36C((a1 + 8), v4);
  v5 = sub_19D438778(*(a1 + 8), -1.0);
  return sub_19D3CA36C((a1 + 8), v5);
}

void sub_19D3CA0F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3C9FC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D3CA104(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_19D437C34(*a1);
    v4 = sub_19D437F9C(*a2);
    *a1 = v4;
    if (*a2)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v8, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
    }

    sub_19D3C4E20((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_19D3C4E20((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
  }

  return a1;
}