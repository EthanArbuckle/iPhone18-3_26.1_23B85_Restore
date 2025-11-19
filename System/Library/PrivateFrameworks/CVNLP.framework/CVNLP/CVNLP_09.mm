const void **sub_1D9DA7438(uint64_t a1, const void **a2)
{
  v2 = a1;
  v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (v3)
  {
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

    v7 = a1;
    do
    {
      while (1)
      {
        v9 = (v3 - 32);
        v8 = *(v3 - 32);
        v10 = *(v3 - 9);
        if (v10 >= 0)
        {
          v11 = *(v3 - 9);
        }

        else
        {
          v11 = *(v3 - 24);
        }

        if (v10 >= 0)
        {
          v12 = (v3 - 32);
        }

        else
        {
          v12 = *(v3 - 32);
        }

        if (v5 >= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v5;
        }

        v14 = memcmp(v12, v6, v13);
        v15 = v11 < v5;
        if (v14)
        {
          v15 = v14 < 0;
        }

        if (v15)
        {
          break;
        }

        v3 = *(v3 + 8);
        v7 = v9;
        if (!v3)
        {
          goto LABEL_24;
        }
      }

      v3 = *(v3 + 16);
    }

    while (v3);
    v9 = v7;
LABEL_24:
    if (v9 != v2)
    {
      v16 = *(v9 + 23);
      if (v16 >= 0)
      {
        v17 = *(v9 + 23);
      }

      else
      {
        v17 = v9[1];
      }

      if (v16 >= 0)
      {
        v18 = v9;
      }

      else
      {
        v18 = *v9;
      }

      if (v17 >= v5)
      {
        v19 = v5;
      }

      else
      {
        v19 = v17;
      }

      v20 = memcmp(v6, v18, v19);
      v21 = v5 < v17;
      if (v20)
      {
        v21 = v20 < 0;
      }

      if (!v21)
      {
        return v9;
      }
    }
  }

  return v2;
}

void *sub_1D9DA7550(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  *a1 = &unk_1F554F760;
  sub_1D9DA75B8((a1 + 1), v5);
  return a1;
}

uint64_t sub_1D9DA75B8(uint64_t a1, uint64_t *a2)
{
  sub_1D9D100A8(&v4);
  sub_1D9D12280(&v4, "OutOfVocabularyError: ", 22);
  sub_1D9D12280(&v4, *a2, a2[1]);
  std::stringbuf::str();
  v4 = *MEMORY[0x1E69E54E8];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v5 = MEMORY[0x1E69E5548] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v8);
}

void sub_1D9DA771C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA7730(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA7744(std::exception *this)
{
  this->__vftable = &unk_1F554F760;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9DA77B8(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_1D9DA77D4(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  v3 = sub_1D9DA7814(exception, a1);
  __cxa_throw(v3, &unk_1F554F798, sub_1D9DA78C0);
}

uint64_t sub_1D9DA7814(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &unk_1F554F868;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F554F7F0;
  *(a1 + 8) = &unk_1F554F820;
  *(a1 + 24) = &unk_1F554F848;
  return a1;
}

uint64_t sub_1D9DA78C0(uint64_t a1)
{
  *(a1 + 24) = &unk_1F554F898;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  MEMORY[0x1DA740DD0](a1 + 8);
  return a1;
}

void sub_1D9DA7BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1D9DA7FD0(&a9);
  sub_1D9DA7FD0(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1D9DA7C58(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1D9DA8034(exception, a1);
  __cxa_throw(exception, &unk_1F554F798, sub_1D9DA78C0);
}

void sub_1D9DA7CB4(uint64_t a1)
{
  *(a1 + 24) = &unk_1F554F898;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  MEMORY[0x1DA740DD0](a1 + 8);

  JUMPOUT(0x1DA741280);
}

void sub_1D9DA7D58(uint64_t a1)
{
  *(a1 + 16) = &unk_1F554F898;
  v1 = *(a1 + 24);
  if (v1 && (*(*v1 + 32))(*(a1 + 24)))
  {
    *(a1 + 24) = 0;
  }

  JUMPOUT(0x1DA740DD0);
}

void sub_1D9DA7DEC(uint64_t a1)
{
  *(a1 + 16) = &unk_1F554F898;
  v1 = *(a1 + 24);
  if (v1 && (*(*v1 + 32))(*(a1 + 24)))
  {
    *(a1 + 24) = 0;
  }

  MEMORY[0x1DA740DD0]();

  JUMPOUT(0x1DA741280);
}

void sub_1D9DA7E9C(void *a1)
{
  *a1 = &unk_1F554F898;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  JUMPOUT(0x1DA740DD0);
}

void sub_1D9DA7F24(void *a1)
{
  *a1 = &unk_1F554F898;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  MEMORY[0x1DA740DD0](a1 - 2);

  JUMPOUT(0x1DA741280);
}

void *sub_1D9DA7FD0(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {
    v3 = v1;
    v4 = (*(*v2 + 32))(v2);
    v1 = v3;
    if (v4)
    {
      *v3 = 0;
    }
  }

  return v1;
}

uint64_t sub_1D9DA8034(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F554F868;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x1E69E55B8] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F554F898;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F554F7F0;
  *(a1 + 8) = &unk_1F554F820;
  *(a1 + 24) = &unk_1F554F848;
  return a1;
}

uint64_t sub_1D9DA8170(uint64_t a1)
{
  *a1 = &unk_1F554F5B8;
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1D9DA8428(*(a1 + 152));
  v3 = *(*(a1 + 104) + 56);
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFFELL) - 56;
  }

  else
  {
    v4 = 0;
  }

  sub_1D9DA5F10(v4);
  operator delete(*(a1 + 104));
  *a1 = &unk_1F554F6F0;
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_12;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_12:
  operator delete(*(a1 + 8));
  return a1;
}

void *sub_1D9DA8278(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 63) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 40));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void *sub_1D9DA82E0(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  return result;
}

void sub_1D9DA8408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_1D9D29D18(&a11);
  *(v11 + 8) = v12;
  sub_1D9D56614(&a9);
  _Unwind_Resume(a1);
}

void sub_1D9DA8428(uint64_t a1)
{
  if (a1)
  {
    sub_1D9DA8428(*a1);
    sub_1D9DA8428(*(a1 + 8));
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v2 = a1;

LABEL_6:
        operator delete(v2);
        return;
      }
    }

    else if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a1 + 32));
    v2 = a1;

    goto LABEL_6;
  }
}

void sub_1D9DA84BC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    sub_1D9D12B94(__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *__p = *(a2 + 8);
    v5 = *(a2 + 24);
  }

  *(a1 + 8) = *__p;
  *(a1 + 24) = v5;
  *a1 = &unk_1F554E158;
  if (*(a2 + 31) < 0)
  {
    sub_1D9D12B94(__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *__p = *(a2 + 8);
    v5 = *(a2 + 24);
  }

  operator new();
}

void sub_1D9DA85B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((*(v14 + 31) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v14 + 8));
  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D9DA8628(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 79) < 0)
      {
        operator delete(*(v2 + 56));
        if ((*(v2 + 55) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 32));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

void sub_1D9DA86B0(std::string::value_type *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  memset(&v6, 0, sizeof(v6));
  if (a2)
  {
    v4 = a2;
    do
    {
      std::string::push_back(&v6, *a1++);
      --v4;
    }

    while (v4);
  }

  sub_1D9DA87D0(&v6, a3);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_1D9DA873C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9DA875C(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v3 = 0;
  LOBYTE(__p) = 0;
  sub_1D9DA8CFC(a1, &__p, a2);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1D9DA87B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9DA87D0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v32 = a2;
  if (v4)
  {
    if (v3 >= 0)
    {
      v5 = *(a1 + 23);
    }

    else
    {
      v5 = *(a1 + 8);
    }

    v6 = CFStringCreateWithBytes(0, v4, v5, 0x8000100u, 0);
    __p[0] = v6;
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v10 = v6;
    if (!v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = 0;
  if (v10)
  {
LABEL_12:
    CFRelease(v10);
  }

LABEL_13:
  v11 = 0;
  v37 = xmmword_1D9DDCE00;
  while (v11 < objc_msgSend_length(v10, v7, v8, v9, v32))
  {
    v12 = sub_1D9DA05EC(v10, v11, &v37);
    v13 = v12;
    if (v12)
    {
      CFRetain(v12);
      cf = v13;
      v14 = CFGetTypeID(v13);
      if (v14 != CFStringGetTypeID())
      {
        v30 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v30, "Could not construct");
        __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (!cf)
      {
LABEL_47:
        v29 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v29, "Could not construct");
        __cxa_throw(v29, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      cf = 0;

      if (!cf)
      {
        goto LABEL_47;
      }
    }

    p_cf = &cf;
    sub_1D9D89274(&p_cf, __p);
    v15 = v39;
    if (v39 < v40)
    {
      v16 = *__p;
      v39[2] = v36;
      *v15 = v16;
      __p[1] = 0;
      v36 = 0;
      __p[0] = 0;
      v17 = v15 + 24;
LABEL_35:
      v39 = v17;
      goto LABEL_36;
    }

    v18 = v38;
    v19 = v39 - v38;
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3);
    v21 = v20 + 1;
    if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1D9D84AB0();
    }

    if (0x5555555555555556 * ((v40 - v38) >> 3) > v21)
    {
      v21 = 0x5555555555555556 * ((v40 - v38) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v40 - v38) >> 3) >= 0x555555555555555)
    {
      v22 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      if (v22 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v23 = 8 * ((v39 - v38) >> 3);
    *v23 = *__p;
    *(v23 + 16) = v36;
    __p[1] = 0;
    v36 = 0;
    __p[0] = 0;
    v17 = 24 * v20 + 24;
    v24 = (24 * v20 - v19);
    memcpy((v23 - v19), v18, v19);
    v38 = v24;
    v39 = v17;
    v40 = 0;
    if (!v18)
    {
      goto LABEL_35;
    }

    operator delete(v18);
    v39 = v17;
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_36:
    if (cf)
    {
      CFRelease(cf);
    }

    v11 += *(&v37 + 1);
  }

  sub_1D9DA82E0(v32, &v38);

  v25 = v38;
  if (v38)
  {
    v26 = v39;
    v27 = v38;
    if (v39 != v38)
    {
      do
      {
        v28 = *(v26 - 1);
        v26 -= 3;
        if (v28 < 0)
        {
          operator delete(*v26);
        }
      }

      while (v26 != v25);
      v27 = v38;
    }

    v39 = v25;
    operator delete(v27);
  }
}

void sub_1D9DA8B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_1D9D89420(va);
  sub_1D9D54C6C(va1);
  _Unwind_Resume(a1);
}

void sub_1D9DA8BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  __cxa_free_exception(v18);
  sub_1D9D89420(&a12);
  sub_1D9D54C6C(&a18);
  _Unwind_Resume(a1);
}

void sub_1D9DA8BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA8BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA8BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  sub_1D9D89420(&a10);

  sub_1D9D54C6C(&a21);
  _Unwind_Resume(a1);
}

void sub_1D9DA8C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA8CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

const void **sub_1D9DA8CC8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1D9DA8CFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D9D100A8(&v27);
  v6 = *a1;
  v7 = a1[1];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
  if (v8 == 1)
  {
    v9 = *(v6 + 23);
    if (v9 >= 0)
    {
      v10 = *a1;
    }

    else
    {
      v10 = *v6;
    }

    if (v9 >= 0)
    {
      v11 = *(v6 + 23);
    }

    else
    {
      v11 = *(v6 + 8);
    }

    sub_1D9D12280(&v27, v10, v11);
    std::stringbuf::str();
    goto LABEL_42;
  }

  if (!v8)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_42;
  }

  if (*(a2 + 23) >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v6 != v7)
  {
    if (v12)
    {
      do
      {
        v13 = *(v6 + 23);
        if (v13 >= 0)
        {
          v14 = v6;
        }

        else
        {
          v14 = *v6;
        }

        if (v13 >= 0)
        {
          v15 = *(v6 + 23);
        }

        else
        {
          v15 = *(v6 + 8);
        }

        sub_1D9D12280(&v27, v14, v15);
        v16 = strlen(v12);
        sub_1D9D12280(&v27, v12, v16);
        v6 += 24;
      }

      while (v6 != v7);
    }

    else
    {
      do
      {
        v17 = *(v6 + 23);
        if (v17 >= 0)
        {
          v18 = v6;
        }

        else
        {
          v18 = *v6;
        }

        if (v17 >= 0)
        {
          v19 = *(v6 + 23);
        }

        else
        {
          v19 = *(v6 + 8);
        }

        sub_1D9D12280(&v27, v18, v19);
        v6 += 24;
      }

      while (v6 != v7);
    }
  }

  v20 = v25;
  std::stringbuf::str();
  v21 = v26;
  v22 = *(a2 + 23);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a2 + 8);
  }

  if ((v26 & 0x80u) != 0)
  {
    v21 = v25[1];
    v20 = v25[0];
  }

  if (v21 >= v21 - v22)
  {
    v23 = v21 - v22;
  }

  else
  {
    v23 = v21;
  }

  if (v23 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D9D12168();
  }

  if (v23 >= 0x17)
  {
    operator new();
  }

  *(a3 + 23) = v23;
  if (v23)
  {
    memmove(a3, v20, v23);
    *(a3 + v23) = 0;
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    *a3 = 0;
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }
  }

  operator delete(v25[0]);
LABEL_42:
  v27 = *MEMORY[0x1E69E54E8];
  *(&v27 + *(v27 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v28 = MEMORY[0x1E69E5548] + 16;
  if (v30 < 0)
  {
    operator delete(v29[7].__locale_);
  }

  v28 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v29);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v31);
}

void sub_1D9DA9078(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X8>)
{
  sub_1D9D55FD4(a1, a2, " ", 1, &v16);
  sub_1D9DA82E0(&__p, &v16);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = __p;
  v5 = v15;
  if (__p == v15)
  {
    if (__p)
    {
      goto LABEL_14;
    }

LABEL_3:
    v6 = v16;
    if (!v16)
    {
      return;
    }

    goto LABEL_21;
  }

  do
  {
    v7 = *(v4 + 23);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = *v4;
      v7 = v4[1];
      memset(&v18, 0, sizeof(v18));
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = v4;
      memset(&v18, 0, sizeof(v18));
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    do
    {
      std::string::push_back(&v18, *v8++);
      --v7;
    }

    while (v7);
LABEL_9:
    sub_1D9D8F824(a3, &v18);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    v4 += 3;
  }

  while (v4 != v5);
  v4 = __p;
  if (!__p)
  {
    goto LABEL_3;
  }

LABEL_14:
  v9 = v15;
  if (v15 == v4)
  {
    v15 = v4;
    operator delete(v4);
    v6 = v16;
    if (!v16)
    {
      return;
    }

LABEL_21:
    v11 = v17;
    v12 = v6;
    if (v17 != v6)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v6);
      v12 = v16;
    }

    v17 = v6;
    operator delete(v12);
  }

  else
  {
    do
    {
      v10 = *(v9 - 1);
      v9 -= 3;
      if (v10 < 0)
      {
        operator delete(*v9);
      }
    }

    while (v9 != v4);
    v15 = v4;
    operator delete(__p);
    v6 = v16;
    if (v16)
    {
      goto LABEL_21;
    }
  }
}

void sub_1D9DA9224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D9D54C6C(va);
  _Unwind_Resume(a1);
}

void sub_1D9DA9238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D54C6C(v21);
  sub_1D9D54C6C(&a10);
  sub_1D9D54C6C(&a13);
  _Unwind_Resume(a1);
}

void sub_1D9DA9270(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v3 = 1;
  LOWORD(__p) = 32;
  sub_1D9DA8CFC(a1, &__p, a2);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1D9DA92D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9DA95D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v27 = *(v24 - 64);
  *(v24 - 64) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v28 = __cxa_begin_catch(a1);
    if (qword_1ECB71C28 != -1)
    {
      dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
    }

    v29 = qword_1ECB71C30;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = (*(*v28 + 16))(v28);
      *(v24 - 64) = 136315138;
      *(v24 - 60) = v30;
      _os_log_error_impl(&dword_1D9D0A000, v29, OS_LOG_TYPE_ERROR, "[CVNLPTokenIDConverter] Failed to load token id resources: %s", (v24 - 64), 0xCu);
    }

    __cxa_end_catch();
    if (a22 < 0)
    {
      operator delete(a17);
    }

    JUMPOUT(0x1D9DA9598);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_1D9DA9A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_1D9DA9F2C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1D9DA9F64(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9DA9F9C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1D9DA9FCC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001D9DDE9E6)
  {
    if (((v2 & 0x80000001D9DDE9E6 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001D9DDE9E6))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001D9DDE9E6 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D9DAA550(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_1D9D84AB0();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_1D9DAAF1C(unsigned int a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1ECB71C28 != -1)
  {
    dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
  }

  v4 = qword_1ECB71C30;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v19 = a2;
    _os_log_error_impl(&dword_1D9D0A000, v4, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  v6 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v5, CVNLPCationErrorDomain, a1, 0);
  v7 = MEMORY[0x1E695DF30];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v8, a2, v9);
  v16 = off_1ECB71978;
  v17 = v6;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, &v17, &v16, 1);
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v7, v13, *MEMORY[0x1E695D930], v10, v12);
  v15 = v14;

  objc_exception_throw(v14);
}

uint64_t sub_1D9DAB0A4(uint64_t a1, void *a2)
{
  v4 = a2;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v5 = objc_autoreleasePoolPush();
  objc_storeStrong((a1 + 32), a2);
  v6 = [CVNLPPerformance alloc];
  v9 = objc_msgSend_initWithOptions_(v6, v7, v4, v8);
  v10 = *(a1 + 40);
  *(a1 + 40) = v9;

  v11 = [CVNLPCaptionRuntimeParameters alloc];
  v14 = objc_msgSend_initWithOptions_(v11, v12, *(a1 + 32), v13);
  v15 = *(a1 + 48);
  *(a1 + 48) = v14;

  v16 = [CVNLPCaptionPostProcessingHandler alloc];
  v18 = objc_msgSend_initWithOptions_runtimeParameters_(v16, v17, *(a1 + 32), *(a1 + 48));
  v19 = *(a1 + 24);
  *(a1 + 24) = v18;

  v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v21 = dispatch_queue_create("caption_queue", v20);
  v22 = *(a1 + 64);
  *(a1 + 64) = v21;

  v23 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v24 = dispatch_queue_create("classify_queue", v23);
  v25 = *(a1 + 72);
  *(a1 + 72) = v24;

  v26 = *(a1 + 40);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1D9DAB2B0;
  v29[3] = &unk_1E858E018;
  v29[4] = a1;
  objc_msgSend_run_block_(v26, v27, @"Create", v29);
  objc_autoreleasePoolPop(v5);

  return a1;
}

void sub_1D9DAB2B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CVNLPVisionRequestHandler alloc];
  v4 = objc_msgSend_initWithOptions_runTimeParams_(v2, v3, *(v1 + 32), *(v1 + 48));
  v5 = *(v1 + 16);
  *(v1 + 16) = v4;

  v21 = objc_msgSend_objectForKeyedSubscript_(*(v1 + 32), v6, CVNLPCaptionModelType, v7);
  if (objc_msgSend_isEqualToString_(v21, v8, CVNLPCaptionModelLSTM, v9))
  {
    v10 = [CVNLPCaptionEncoderLSTM alloc];
    v12 = objc_msgSend_initWithOptions_runTimeParams_(v10, v11, *(v1 + 32), *(v1 + 48));
    v13 = off_1E858D9B0;
  }

  else
  {
    v14 = [CVNLPCaptionEncoderTransformer alloc];
    v12 = objc_msgSend_initWithOptions_runTimeParams_(v14, v15, *(v1 + 32), *(v1 + 48));
    v13 = off_1E858D9B8;
  }

  v16 = *v1;
  *v1 = v12;

  v17 = objc_alloc(*v13);
  v19 = objc_msgSend_initWithOptions_runTimeParams_(v17, v18, *(v1 + 32), *(v1 + 48));
  v20 = *(v1 + 8);
  *(v1 + 8) = v19;
}

id sub_1D9DAB3C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1D9DAB4E4;
  v11 = sub_1D9DAB4F4;
  v12 = 0;
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1D9DAB4FC;
  v6[3] = &unk_1E858E148;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  objc_msgSend_run_block_(v3, a2, @"Total", v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1D9DAB4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1D9DAB4E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D9DAB4FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  v20 = 0;
  v21 = &v20;
  v22 = 0x5012000000;
  v23 = sub_1D9DAB6C0;
  v24 = nullsub_20;
  v25 = &unk_1D9DF809A;
  v15 = v5;
  v6 = v5;
  v7 = objc_msgSend_objectForKeyedSubscript_(*(v5 + 32), a2, CVNLPCaptionScaleMethod, a4);
  v8 = *(v6 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1D9DAB6D0;
  v16[3] = &unk_1E858E170;
  v9 = v7;
  v17 = v9;
  v18 = &v20;
  v19 = v15;
  objc_msgSend_run_block_(v8, v10, @"Scale", v16);
  v11 = sub_1D9DAB8F8(v6, (v21 + 6), 0);
  v12 = v21[6];
  if (v12)
  {
    MEMORY[0x1DA741250](v12, 0x1000C8077774924);
  }

  _Block_object_dispose(&v20, 8);
  v13 = *(*(a1 + 32) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v11;
}

void sub_1D9DAB680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9DAB6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1D9DAB6C0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1D9DAB6D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3 == CVNLPCaptionScaleMethodvImage;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = *v2;
    sub_1D9D836E0(*(a1 + 56));
  }

  v23 = v3;
  isEqualToString = objc_msgSend_isEqualToString_(v23, v6, CVNLPCaptionScaleMethodCGInterpolationNone, v7);
  if (isEqualToString)
  {
    v11 = kCGInterpolationNone;
    goto LABEL_15;
  }

  if (objc_msgSend_isEqualToString_(v23, v9, CVNLPCaptionScaleMethodCGInterpolationLow, v10))
  {
    v11 = kCGInterpolationLow;
    goto LABEL_15;
  }

  if (objc_msgSend_isEqualToString_(v23, v12, CVNLPCaptionScaleMethodCGInterpolationMedium, v13))
  {
    v11 = kCGInterpolationMedium;
    goto LABEL_15;
  }

  if (objc_msgSend_isEqualToString_(v23, v14, CVNLPCaptionScaleMethodCGInterpolationHigh, v15))
  {
    v11 = kCGInterpolationHigh;
LABEL_15:

    v16 = *(a1 + 56);
    v17 = *(*v2 + 32);
    v18 = *(*v2 + 40);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v20 = CGBitmapContextCreate(0, v17, v18, 8uLL, 4 * v17, DeviceRGB, 0x4005u);
    CGContextSetInterpolationQuality(v20, v11);
    v25.size.width = v17;
    v25.size.height = v18;
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    CGContextDrawImage(v20, v25, v16);
    Image = CGBitmapContextCreateImage(v20);
    CGContextRelease(v20);
    CGColorSpaceRelease(DeviceRGB);
    v22 = *v2;
    sub_1D9D836E0(Image);
  }
}

id sub_1D9DAB8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 | a3)
  {
    v3 = dispatch_group_create();
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = sub_1D9DAB4E4;
    v24 = sub_1D9DAB4F4;
    v25 = 0;
    v8 = *(a1 + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1D9DABF7C;
    block[3] = &unk_1E858E148;
    block[4] = buf;
    block[5] = a1;
    block[6] = a3;
    block[7] = a2;
    dispatch_group_async(v3, v8, block);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_1D9DAB4E4;
    v17 = sub_1D9DAB4F4;
    v18 = 0;
    v9 = *(a1 + 72);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1D9DAC184;
    v12[3] = &unk_1E858E148;
    v12[6] = a3;
    v12[7] = a2;
    v12[4] = &v13;
    v12[5] = a1;
    dispatch_group_async(v3, v9, v12);
    dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    objc_storeStrong((a1 + 56), v14[5]);
    v4 = objc_msgSend_postProcessCaptions_visionObservations_(*(a1 + 24), v10, *(v21 + 5), v14[5]);
    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_1ECB71C28 != -1)
    {
      dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
    }

    v3 = qword_1ECB71C30;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1D9D0A000, v3, OS_LOG_TYPE_ERROR, "Input buffer and pixel buffer are both nil", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

void sub_1D9DABB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9DABB90(uint64_t a1, const char *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1D9DABC60;
  v5[3] = &unk_1E858E198;
  v5[4] = &v6;
  v5[5] = a1;
  v5[6] = a2;
  objc_msgSend_run_block_(v2, a2, @"ScalePx", v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

__CVBuffer *sub_1D9DABC60(uint64_t a1)
{
  result = sub_1D9D83868(*(a1 + 48), (**(a1 + 40) + 32));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

id sub_1D9DABCA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1D9DAB4E4;
  v11 = sub_1D9DAB4F4;
  v12 = 0;
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1D9DABDC4;
  v6[3] = &unk_1E858E148;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  objc_msgSend_run_block_(v3, a2, @"TotalPx", v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1D9DABDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1D9DABDC4(void *a1, const char *a2)
{
  v3 = a1[5];
  v4 = a1[6];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = *(v3 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1D9DABF34;
  v11[3] = &unk_1E858E198;
  v11[4] = &v12;
  v11[5] = v3;
  v11[6] = v4;
  objc_msgSend_run_block_(v5, a2, @"ScalePx", v11);
  v6 = v13[3];
  if (v6)
  {
    v7 = sub_1D9DAB8F8(v3, 0, v6);
    v8 = v13[3];
    if (v8 != v4)
    {
      CVPixelBufferUnlockBaseAddress(v8, 0);
      CFRelease(v13[3]);
    }
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);
  v9 = *(a1[4] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

void sub_1D9DABEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9DABF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9DABF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CVBuffer *sub_1D9DABF34(uint64_t a1)
{
  result = sub_1D9D83868(*(a1 + 48), (**(a1 + 40) + 32));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1D9DABF7C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[5];
  v9 = objc_msgSend_genderOption(*(v5 + 48), a2, a3, a4);
  if (!v9)
  {
    v9 = objc_msgSend_excludeGenderStrategy(*(v5 + 48), v6, v7, v8) == 2;
    v10 = a1[6];
    v11 = *v5;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = a1[7];
    v44 = 0;
    objc_msgSend_computeCaptionForImage_outputs_(v11, v6, v15, &v44);
    v12 = v44;
    v14 = objc_msgSend_computeCaptionForImageWithInputs_genderOption_(*(v5 + 8), v16, v12, v9);
    goto LABEL_6;
  }

  v10 = a1[6];
  v11 = *v5;
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v45 = 0;
  objc_msgSend_computeCaptionForPixelBuffer_outputs_(v11, v6, v10, &v45);
  v12 = v45;
  v14 = objc_msgSend_computeCaptionForImageWithInputs_genderOption_(*(v5 + 8), v13, v12, v9);
LABEL_6:
  v17 = *(a1[4] + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v14;

  v19 = *(v5 + 24);
  v20 = *(*(a1[4] + 8) + 40);
  v43 = 0;
  v22 = objc_msgSend_postProcessCaptions_genderOption_error_(v19, v21, v20, v9, &v43);
  v23 = v43;
  v24 = *(a1[4] + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v22;

  if (objc_msgSend_code(v23, v26, v27, v28) == 1001 || objc_msgSend_code(v23, v29, v30, v31) == 1002)
  {
    v32 = objc_msgSend_computeCaptionForImageWithInputs_genderOption_(*(v5 + 8), v29, v12, 0);
    v33 = *(a1[4] + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;

    v35 = *(v5 + 24);
    v36 = *(*(a1[4] + 8) + 40);
    v42 = v23;
    v38 = objc_msgSend_postProcessCaptions_genderOption_error_(v35, v37, v36, 0, &v42);
    v39 = v42;

    v40 = *(a1[4] + 8);
    v41 = *(v40 + 40);
    *(v40 + 40) = v38;

    v23 = v39;
  }
}

void sub_1D9DAC184(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[6];
  if (!v5)
  {
    v6 = a1[7];
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    operator new[]();
  }

  v9 = objc_msgSend_classifyImage_(*(a1[5] + 16), a2, v5, a4);
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

id sub_1D9DAC2F8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 8) == *a2)
  {
    if (qword_1ECB71C28 != -1)
    {
      dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
    }

    v18 = qword_1ECB71C30;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1D9D0A000, v18, OS_LOG_TYPE_ERROR, "Video Pixel Buffers are empty", buf, 2u);
    }

    v31 = 0;
  }

  else
  {
    v9 = objc_msgSend_genderOption(a1[6], a2, a3, a4);
    if (!v9)
    {
      v9 = objc_msgSend_excludeGenderStrategy(a1[6], v6, v7, v8) == 2;
    }

    v10 = *a1;
    v35 = 0;
    objc_msgSend_computeCaptionForVideoPixelBuffer_outputs_(v10, v6, a2, &v35);
    v12 = v35;
    v13 = *a2;
    if (*(a2 + 8) != *a2)
    {
      v14 = 0;
      do
      {
        CFRelease(*(v13 + 8 * v14++));
        v13 = *a2;
      }

      while (v14 < (*(a2 + 8) - *a2) >> 3);
    }

    v15 = objc_msgSend_computeCaptionForImageWithInputs_genderOption_(a1[1], v11, v12, v9);
    v16 = a1[3];
    v34 = 0;
    v18 = objc_msgSend_postProcessCaptions_genderOption_error_(v16, v17, v15, v9, &v34);
    v19 = v34;

    if (objc_msgSend_code(v19, v20, v21, v22) == 1001 || objc_msgSend_code(v19, v23, v24, v25) == 1002)
    {
      v26 = objc_msgSend_computeCaptionForImageWithInputs_genderOption_(a1[1], v23, v12, 0);

      v27 = a1[3];
      v33 = v19;
      v29 = objc_msgSend_postProcessCaptions_genderOption_error_(v27, v28, v26, 0, &v33);
      v30 = v33;

      v18 = v29;
      v19 = v30;
    }

    v31 = objc_msgSend_postProcessCaptions_visionObservations_(a1[3], v23, v18, 0);
  }

  return v31;
}

id sub_1D9DAC578(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3, a4);
  v9 = objc_msgSend_results(a1[5], v6, v7, v8);
  objc_msgSend_addEntriesFromDictionary_(v5, v10, v9, v11);

  v15 = objc_msgSend_performanceResults(*a1, v12, v13, v14);
  objc_msgSend_addEntriesFromDictionary_(v5, v16, v15, v17);

  v21 = objc_msgSend_performanceResults(a1[1], v18, v19, v20);
  objc_msgSend_addEntriesFromDictionary_(v5, v22, v21, v23);

  v27 = objc_msgSend_perfResults(a1[2], v24, v25, v26);
  v31 = objc_msgSend_results(v27, v28, v29, v30);
  objc_msgSend_addEntriesFromDictionary_(v5, v32, v31, v33);

  v37 = objc_msgSend_copy(v5, v34, v35, v36);

  return v37;
}

void sub_1D9DAC668(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1D9DAC908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CVNLPCTCTextDecodingPath;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D9DADF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9DAEC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v31 - 112), 8);

  _Unwind_Resume(a1);
}

__n128 sub_1D9DAED9C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1D9DAEDC0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1D9DAEDD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = LXCursorCreateByAdvancing();
  if (v11)
  {
    sub_1D9DAEEA4(*(*(a1 + 40) + 8) + 48, &v11);
    LXCursorConditionalProbability();
    v4 = v3 * 2.30258509;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (v4 < 0.0)
    {
      v5 = *(*(a1 + 56) + 8);
      v6 = *(v5 + 24);
      v7 = v4 - *(a1 + 64);
      v8 = fmax(v6, v7);
      v9 = fmin(v6, v7);
      if (v9 >= -1021.0)
      {
        v10 = exp(v9 - v8);
        v8 = log1p(v10) + v8;
      }

      *(v5 + 24) = v8;
    }
  }
}

void sub_1D9DAEEA4(uint64_t a1, void *a2)
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
    sub_1D9D84AB0();
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

    sub_1D9D10E9C();
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

void sub_1D9DAF454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, uint64_t a28, uint64_t a29, char a30)
{
  operator delete(v33);
  operator delete(__p);

  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v35 - 152), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1D9DAF584(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_languageModel(*(a1 + 32), a2, a3, a4);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  result = LMLanguageModelGetTokenIDForString();
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_1D9DAFABC()
{
  if (!v0)
  {
    JUMPOUT(0x1D9DAFAA0);
  }

  JUMPOUT(0x1D9DAFA98);
}

uint64_t sub_1D9DAFAC8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_letterCharacterSet(MEMORY[0x1E696AB08], a2, a3, a4);
  v8 = objc_msgSend_mutableCopy(v4, v5, v6, v7);
  v9 = qword_1ECB71BE8;
  qword_1ECB71BE8 = v8;

  v10 = qword_1ECB71BE8;
  v13 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v11, @"'.-/", v12);
  objc_msgSend_formUnionWithCharacterSet_(v10, v14, v13, v15);

  qword_1ECB71BE0 = objc_msgSend_invertedSet(qword_1ECB71BE8, v16, v17, v18);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D9DAFB90(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v11 = objc_msgSend_wordLanguageModel(*(*(a1 + 32) + 352), a2, a3, a4);
  objc_msgSend_languageModel(v11, v5, v6, v7);
  v8 = *(a1 + 72);
  v9 = *(a1 + 56) - *(a1 + 48);
  LMLanguageModelConditionalProbability();
  *(*(*(a1 + 40) + 8) + 24) = v10;
}

void *sub_1D9DAFC20(void *result, uint64_t a2)
{
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  v3 = *(a2 + 48);
  v2 = *(a2 + 56);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  return result;
}

void sub_1D9DAFCA0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9DAFCBC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t sub_1D9DAFD3C()
{
  qword_1ECB71C00 = dispatch_queue_create("com.apple.cvnlp.languagemodeling", 0);

  return MEMORY[0x1EEE66BB8]();
}

double sub_1D9DB0448(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 40) == 1 && (objc_msgSend_hasProblematicMixedScriptWords(v3, v4, v5, v6) & 1) != 0)
  {
    v8 = -1000.0;
  }

  else
  {
    v9 = objc_msgSend_characterCount(v7, v4, v5, v6) + 1;
    objc_msgSend_lexiconScore(v7, v10, v11, v12);
    v14 = v13;
    v18 = objc_msgSend_lexicons(*(a1 + 32), v15, v16, v17);
    objc_msgSend_decodingWeightValue(v18, v19, v20, v21);
    v23 = v22 * v14 / v9;

    objc_msgSend_characterLanguageModelLogProbability(v7, v24, v25, v26);
    v28 = v27;
    v32 = objc_msgSend_characterLanguageModel(*(a1 + 32), v29, v30, v31);
    objc_msgSend_decodingWeightValue(v32, v33, v34, v35);
    v40 = v39 * v28 / (v9 - objc_msgSend_pseudoSpaceCount(v7, v36, v37, v38));

    v41 = v40 + v23;
    v45 = objc_msgSend_wordLanguageModel(*(a1 + 32), v42, v43, v44);

    if (v45)
    {
      objc_msgSend_wordLanguageModelLogProbability(v7, v46, v47, v48);
      v50 = v49;
      v54 = objc_msgSend_wordLanguageModel(*(a1 + 32), v51, v52, v53);
      objc_msgSend_decodingWeightValue(v54, v55, v56, v57);
      v62 = v61 * v50 / (objc_msgSend_tokenCount(v7, v58, v59, v60) + 1);

      v41 = v62 + v41;
    }

    objc_msgSend_modelLogProbability(v7, v46, v47, v48);
    v8 = v63 / v9 + v41;
  }

  return v8;
}

double sub_1D9DB0668(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 32) == 1 && (objc_msgSend_hasProblematicMixedScriptWords(v3, v4, v5, v6) & 1) != 0)
  {

    return -1000.0;
  }

  else
  {
    v9 = objc_msgSend_characterCount(v7, v4, v5, v6) + 1;
    objc_msgSend_modelLogProbability(v7, v10, v11, v12);
    v14 = v13 / v9;

    return v14;
  }
}

const void **sub_1D9DB074C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1D9DB0780(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v3 = (a1 + 8);
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *a1 = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "MRLNeuralNetworkCreate returned nullptr");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1D9DB0988(&v14, MEMORY[0x1E69B2750], a2);
  v4 = *v3;
  if (*v3)
  {
    v5 = *(a1 + 16);
    v6 = *v3;
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *v3;
    }

    *(a1 + 16) = v4;
    operator delete(v6);
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  *(a1 + 8) = v14;
  *(a1 + 24) = v15;
  sub_1D9DB0988(&v14, MEMORY[0x1E69B2758], *a1);
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = *(a1 + 32);
    }

    *(a1 + 40) = v8;
    operator delete(v10);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  return a1;
}

void sub_1D9DB0934(_Unwind_Exception *a1)
{
  sub_1D9D9AC58(v4, *(v1 + 88));
  sub_1D9DB1094(v3, *(v1 + 64));
  sub_1D9D54C6C((v1 + 32));
  sub_1D9D54C6C(v2);
  sub_1D9DB105C(v1);
  _Unwind_Resume(a1);
}

void sub_1D9DB0988(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = a2(a3);
  v37 = v4;
  if (v4)
  {
    v5 = CFGetTypeID(v4);
    if (v5 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = v37;
    if (v37)
    {
      CFRetain(v37);
      CFRelease(v37);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1D9DB116C(&v31, v6);
  sub_1D9DB116C(&v25, v6);
  v26 = (v28 - v27) >> 3;
  while (!v31 || v32 == (v34 - v33) >> 3)
  {
    if (!v25 || v26 == (v28 - v27) >> 3)
    {
      goto LABEL_38;
    }

    v7 = v32;
    if (v31 == v25 && v32 == v26)
    {
      goto LABEL_38;
    }

LABEL_22:
    if ((v7 & 0x8000000000000000) != 0 || v7 >= (v34 - v33) >> 3)
    {
      v19 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v19, "DictionaryRef_iterator iterator out of range.");
      v19->__vftable = (MEMORY[0x1E69E55B8] + 16);
      __cxa_throw(v19, off_1E858DD40, MEMORY[0x1E69E5280]);
    }

    v10 = *(v33 + v7);
    if (!v10 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v10)))
    {
      v18 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v18, "Could not convert");
      __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    sub_1D9D89464(v10, &v40);
    v12 = *(v35 + v32);
    if (!v12 || (v13 = CFArrayGetTypeID(), v13 != CFGetTypeID(v12)))
    {
      v17 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v17, "Could not convert");
      __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    sub_1D9DB1384(v12, &v38);
    *v21 = v40;
    v22 = v41;
    *__p = v38;
    v24 = v39;
    v14 = a1[1];
    if (v14 >= a1[2])
    {
      a1[1] = sub_1D9D54CE0(a1, v21);
      v16 = __p[0];
      if (!__p[0])
      {
        goto LABEL_34;
      }

LABEL_33:
      __p[1] = v16;
      operator delete(v16);
      goto LABEL_34;
    }

    if (SHIBYTE(v22) < 0)
    {
      sub_1D9D12B94(a1[1], v21[0], v21[1]);
      a1[1] = v14 + 24;
      v16 = __p[0];
      if (__p[0])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *v21;
      *(v14 + 16) = v22;
      *v14 = v15;
      a1[1] = v14 + 24;
      v16 = __p[0];
      if (__p[0])
      {
        goto LABEL_33;
      }
    }

LABEL_34:
    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    ++v32;
  }

  v7 = v32;
  if (v31 != v25 || v32 != v26)
  {
    goto LABEL_22;
  }

LABEL_38:
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v37)
  {
    CFRelease(v37);
  }
}

void sub_1D9DB0D18(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1D9DB1028((v3 - 88));
  sub_1D9D54C6C(v1);
  _Unwind_Resume(a1);
}

void sub_1D9DB0D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27 = v25;
  *(v24 + 8) = v27;
  sub_1D9DB18BC(&a9);
  sub_1D9DB1128(&a16);
  sub_1D9DB1128(&a24);
  sub_1D9DB074C((v26 - 88));
  sub_1D9D54C6C(v24);
  _Unwind_Resume(a1);
}

void sub_1D9DB0DFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); v1 != i; v1 = (v1 + 24))
  {
    if (*(v1 + 23) < 0)
    {
      sub_1D9D12B94(__p, *v1, *(v1 + 1));
    }

    else
    {
      v4 = *v1;
      v9 = *(v1 + 2);
      *__p = v4;
    }

    v10 = __p;
    if (sub_1D9D91134(a1 + 80, __p)[7])
    {
      v10 = __p;
      v5 = sub_1D9D91134(a1 + 80, __p);
      CFRelease(v5[7]);
      v10 = __p;
      sub_1D9D91134(a1 + 80, __p)[7] = 0;
    }

    v10 = __p;
    v6 = sub_1D9D90464(a1 + 56, __p);
    if (v6[7] != v6[8])
    {
      v10 = __p;
      v7 = sub_1D9D90464(a1 + 56, __p);
      v7[8] = v7[7];
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1D9DB0F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_1D9DB0F68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = MRLNeuralNetworkCopyStates();
  *a2 = result;
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFArrayGetTypeID();
    if (v5 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return result;
}

void sub_1D9DB0FF4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1D9D9AB6C(v1);
  _Unwind_Resume(a1);
}

const void **sub_1D9DB1028(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1D9DB105C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
  return a1;
}

void sub_1D9DB1094(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1D9DB1094(a1, *a2);
    sub_1D9DB1094(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    if (v4)
    {
      *(a2 + 8) = v4;
      operator delete(v4);
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

void *sub_1D9DB1128(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1D9DB116C(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    v5 = Count;
    v6 = *(a1 + 16);
    v7 = (*(a1 + 24) - v6) >> 3;
    if (Count <= v7)
    {
      if (Count < v7)
      {
        *(a1 + 24) = v6 + 8 * Count;
      }
    }

    else
    {
      sub_1D9DB1230(a1 + 16, Count - v7);
    }

    v8 = *(a1 + 40);
    v9 = (*(a1 + 48) - v8) >> 3;
    if (v5 <= v9)
    {
      if (v5 < v9)
      {
        *(a1 + 48) = &v8[v5];
      }
    }

    else
    {
      sub_1D9DB1230(v3, v5 - v9);
      v8 = *v3;
    }

    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), v8);
  }

  return a1;
}

void sub_1D9DB1230(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_1D9D84AB0();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_1D9DB1384(const __CFArray *a1@<X0>, void *a2@<X8>)
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

    sub_1D9D84AB0();
  }

  if (Count >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    if ((sub_1D9DB15D4(ValueAtIndex) & 0x100000000) != 0)
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

void sub_1D9DB1598(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9DB15D4(uint64_t a1)
{
  if (!a1)
  {
    return a1 & 0xFFFFFFFFFFLL;
  }

  v1 = a1;
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(v1))
  {
    a1 = sub_1D9DB1670(v1);
    return a1 & 0xFFFFFFFFFFLL;
  }

  v4 = CFBooleanGetTypeID();
  if (v4 == CFGetTypeID(v1))
  {
    return CFBooleanGetValue(v1) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9DB1670(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_21;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberSInt32Type;
      goto LABEL_29;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_29;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_18;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_21:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      LOBYTE(v14) = LOBYTE(valuePtr);
      if (!Value)
      {
        LOBYTE(v14) = 0;
      }

      v16 = SLOBYTE(valuePtr) < 0 && Value != 0;
      v17.i64[0] = Value != 0;
      v17.i64[1] = v16 << 63 >> 63;
      break;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberShortType;
LABEL_14:
      if (CFNumberGetValue(v12, v13, &valuePtr))
      {
        v14 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_32;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberIntType;
      goto LABEL_29;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_29;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_29;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = *&valuePtr;
      goto LABEL_30;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_18;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_29;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_29:
      v8 = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_30;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_18:
      v8 = CFNumberGetValue(v10, v11, &valuePtr);
      v9 = valuePtr;
LABEL_30:
      v14 = v9 | 0x100000000;
      if (!v8)
      {
        v14 = 0;
      }

LABEL_32:
      v17 = vshlq_u64(vdupq_n_s64(v14), xmmword_1D9DDEA60);
      break;
    default:
      LOBYTE(v14) = 0;
      v17 = 0uLL;
      break;
  }

  v18 = vandq_s8(vshlq_u64(v17, xmmword_1D9DDEA70), xmmword_1D9DDEA80);
  return v18.i64[0] | v14 | v18.i64[1];
}

uint64_t sub_1D9DB18BC(uint64_t a1)
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

void sub_1D9DB1BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CVNLPCaptionDecoderBlock;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1D9DB28B8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, __int128 a27, int64_t a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(a28) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((SHIBYTE(a28) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(a27);
LABEL_7:

  __cxa_begin_catch(a1);
  sub_1D9D94D70(&__p, "Failed to load decoder network");
  v31 = *(v28 + 40);
  espresso_plan_get_error_info();
  v33 = std::string::append(&__p, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  a28 = v33->__r_.__value_.__r.__words[2];
  a27 = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a28 >= 0)
  {
    v35 = &a27;
  }

  else
  {
    v35 = a27;
  }

  sub_1D9DAAF1C(3u, v35);
}

void sub_1D9DB2B00(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1D9DB1EFCLL);
}

void sub_1D9DB2B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_1D9DB4DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void **a57)
{
  sub_1D9DB18BC(&a29);
  if (*(v58 - 121) < 0)
  {
    operator delete(*(v58 - 144));
    if (!__p)
    {
LABEL_3:
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if (!a25)
  {
LABEL_4:
    if (!a26)
    {
LABEL_10:
      if (a23)
      {
        operator delete(a23);
        v60 = a24;
        if (!a24)
        {
LABEL_12:
          sub_1D9D54C6C(&a57);
          if (!v57)
          {
            goto LABEL_13;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v60 = a24;
        if (!a24)
        {
          goto LABEL_12;
        }
      }

      operator delete(v60);
      sub_1D9D54C6C(&a57);
      if (!v57)
      {
LABEL_13:
        v61 = a22;
        if (!a22)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

LABEL_18:
      operator delete(v57);
      v61 = a22;
      if (!a22)
      {
LABEL_15:

        _Unwind_Resume(a1);
      }

LABEL_14:
      operator delete(v61);
      goto LABEL_15;
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a25);
  if (!a26)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void *sub_1D9DB5258(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1D9D12B94(__dst, *a2, *(a2 + 1));
    __dst[3] = 0;
    __dst[4] = 0;
    __dst[5] = 0;
    v10 = *(a2 + 3);
    v9 = *(a2 + 4);
    v7 = v9 - v10;
    if (v9 == v10)
    {
      return __dst;
    }

LABEL_5:
    if ((v7 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v4 = *a2;
  __dst[2] = *(a2 + 2);
  *__dst = v4;
  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v7 = v5 - v6;
  if (v5 != v6)
  {
    goto LABEL_5;
  }

  return __dst;
}

void sub_1D9DB5330(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_1D9DB6660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if ((a34 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

uint64_t sub_1D9DB69FC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (!v5)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    objc_msgSend__copy_data_to_blob_to_(0, a2, v6, v12);
    v10 = *(a1 + 48);
    if (!v10)
    {
      return objc_msgSend__runBlockWithCopyOutputBlock_(*(a1 + 32), v8, *(a1 + 40), v9);
    }

    goto LABEL_3;
  }

  objc_msgSend_blockInput(*(a1 + 32), a2, a3, a4);
  objc_msgSend__copy_data_to_blob_to_(v5, v7, v6, v12);
  v10 = *(a1 + 48);
  if (v10)
  {
LABEL_3:
    MEMORY[0x1DA741250](v10, 0x1000C8052888210);
  }

  return objc_msgSend__runBlockWithCopyOutputBlock_(*(a1 + 32), v8, *(a1 + 40), v9);
}

void sub_1D9DB6C30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, int64_t a10)
{
  __cxa_begin_catch(a1);
  sub_1D9D94D70((v13 - 112), "Failed to execute decoder network");
  objc_msgSend_decoderPlan(v10, v15, v16, v17);
  espresso_plan_get_error_info();
  v19 = std::string::append((v13 - 112), v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  a10 = v19->__r_.__value_.__r.__words[2];
  a9 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (*(v13 - 89) < 0)
  {
    operator delete(*(v13 - 112));
  }

  if (a10 >= 0)
  {
    v21 = &a9;
  }

  else
  {
    v21 = a9;
  }

  sub_1D9DAAF1C(5u, v21);
}

void sub_1D9DB6CBC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1D9DB6B58);
}

void sub_1D9DB6CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();

  _Unwind_Resume(a1);
}

uint64_t sub_1D9DB6D28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_decoderPlan(*(a1 + 32), a2, a3, a4);
  result = espresso_plan_execute_sync();
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v7 = a1;
    v8 = exception;
    v9 = *(*(v7 + 32) + 40);
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v8, v10);
    __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1D9DB79E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9DB8830(va);
  _Unwind_Resume(a1);
}

void *sub_1D9DB7C50(void *result, uint64_t *a2, const void **a3)
{
  v5 = result;
  v6 = result + 1;
  if (result + 1 == a2)
  {
    goto LABEL_20;
  }

  v7 = *(a2 + 55);
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  if (v8 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v7 >= 0)
  {
    v11 = *(a2 + 55);
  }

  else
  {
    v11 = a2[5];
  }

  if (v7 >= 0)
  {
    v12 = a2 + 4;
  }

  else
  {
    v12 = a2[4];
  }

  if (v11 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  result = memcmp(v10, v12, v13);
  v14 = v9 < v11;
  if (result)
  {
    v14 = result < 0;
  }

  if (v14)
  {
LABEL_20:
    v15 = *a2;
    if (*v5 == a2)
    {
      v17 = a2;
    }

    else
    {
      if (v15)
      {
        v16 = *a2;
        do
        {
          v17 = v16;
          v16 = v16[1];
        }

        while (v16);
      }

      else
      {
        v22 = a2;
        do
        {
          v17 = v22[2];
          v23 = *v17 == v22;
          v22 = v17;
        }

        while (v23);
      }

      v24 = *(a3 + 23);
      v25 = *(v17 + 55);
      if (v25 >= 0)
      {
        v26 = *(v17 + 55);
      }

      else
      {
        v26 = v17[5];
      }

      if (v25 >= 0)
      {
        v27 = v17 + 4;
      }

      else
      {
        v27 = v17[4];
      }

      if (v24 >= 0)
      {
        v28 = *(a3 + 23);
      }

      else
      {
        v28 = a3[1];
      }

      if (v24 >= 0)
      {
        v29 = a3;
      }

      else
      {
        v29 = *a3;
      }

      if (v28 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v28;
      }

      result = memcmp(v27, v29, v30);
      v31 = v26 < v28;
      if (result)
      {
        v31 = result < 0;
      }

      if (!v31)
      {
        v33 = *v6;
        if (!*v6)
        {
          goto LABEL_93;
        }

        while (1)
        {
          while (1)
          {
            v34 = v33;
            v37 = v33[4];
            v35 = v33 + 4;
            v36 = v37;
            v38 = *(v35 + 23);
            if (v38 >= 0)
            {
              v39 = *(v35 + 23);
            }

            else
            {
              v39 = v35[1];
            }

            if (v38 >= 0)
            {
              v40 = v35;
            }

            else
            {
              v40 = v36;
            }

            if (v39 >= v28)
            {
              v41 = v28;
            }

            else
            {
              v41 = v39;
            }

            v42 = memcmp(v29, v40, v41);
            v43 = v28 < v39;
            if (v42)
            {
              v43 = v42 < 0;
            }

            if (!v43)
            {
              break;
            }

            v33 = *v34;
            if (!*v34)
            {
              goto LABEL_93;
            }
          }

          result = memcmp(v40, v29, v41);
          v44 = v39 < v28;
          if (result)
          {
            v44 = result < 0;
          }

          if (!v44)
          {
            return result;
          }

          v33 = v34[1];
          if (!v33)
          {
            goto LABEL_93;
          }
        }
      }
    }

    if (v15)
    {
      v32 = v17 + 1;
    }

    else
    {
      v32 = a2;
    }

    if (!*v32)
    {
      goto LABEL_93;
    }
  }

  else
  {
    result = memcmp(v12, v10, v13);
    v18 = v11 < v9;
    if (result)
    {
      v18 = result < 0;
    }

    if (v18)
    {
      v19 = a2[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
          v21 = v20;
        }

        while (v19);
      }

      else
      {
        v21 = a2;
        do
        {
          v45 = v21;
          v21 = v21[2];
        }

        while (*v21 != v45);
      }

      if (v21 == v6)
      {
        goto LABEL_93;
      }

      v48 = v21[4];
      v46 = v21 + 4;
      v47 = v48;
      v49 = *(v46 + 23);
      if (v49 >= 0)
      {
        v50 = *(v46 + 23);
      }

      else
      {
        v50 = v46[1];
      }

      if (v49 >= 0)
      {
        v51 = v46;
      }

      else
      {
        v51 = v47;
      }

      if (v50 >= v9)
      {
        v52 = v9;
      }

      else
      {
        v52 = v50;
      }

      v53 = memcmp(v10, v51, v52);
      v54 = v9 < v50;
      if (v53)
      {
        v54 = v53 < 0;
      }

      if (v54 || (v55 = *v6) == 0)
      {
LABEL_93:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v56 = v55;
          v59 = v55[4];
          v57 = v55 + 4;
          v58 = v59;
          v60 = *(v57 + 23);
          if (v60 >= 0)
          {
            v61 = *(v57 + 23);
          }

          else
          {
            v61 = v57[1];
          }

          if (v60 >= 0)
          {
            v62 = v57;
          }

          else
          {
            v62 = v58;
          }

          if (v61 >= v9)
          {
            v63 = v9;
          }

          else
          {
            v63 = v61;
          }

          v64 = memcmp(v10, v62, v63);
          v65 = v9 < v61;
          if (v64)
          {
            v65 = v64 < 0;
          }

          if (!v65)
          {
            break;
          }

          v55 = *v56;
          if (!*v56)
          {
            goto LABEL_93;
          }
        }

        result = memcmp(v62, v10, v63);
        v66 = v61 < v9;
        if (result)
        {
          v66 = result < 0;
        }

        if (!v66)
        {
          break;
        }

        v55 = v56[1];
        if (!v55)
        {
          goto LABEL_93;
        }
      }
    }
  }

  return result;
}

void sub_1D9DB8054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D90624(va);
  _Unwind_Resume(a1);
}

void sub_1D9DB8068(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_86;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = v6[1] ? v6[1] : v6;
  v51 = v9;
  if (!v9)
  {
    goto LABEL_86;
  }

  v10 = *(v9 + 2);
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v48 = *(v10 + 1);
        if (!v48)
        {
          break;
        }

        do
        {
          v10 = v48;
          v48 = *v48;
        }

        while (v48);
      }
    }

    else
    {
      for (*(v10 + 1) = 0; v11; v11 = *(v10 + 1))
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v50 = v10;
  if (a2 == a3)
  {
    v12 = a1;
    sub_1D9DB1094(a1, v9);
    if (v10)
    {
      goto LABEL_83;
    }

    goto LABEL_86;
  }

  v13 = a2;
  do
  {
    std::string::operator=((v9 + 32), (v13 + 32));
    if (v9 != v13)
    {
      v14 = *(v9 + 7);
      v16 = *(v13 + 7);
      v15 = *(v13 + 8);
      v17 = v15 - v16;
      v18 = *(v9 + 9);
      if (v18 - v14 < (v15 - v16))
      {
        if (v14)
        {
          *(v9 + 8) = v14;
          operator delete(v14);
          v18 = 0;
          *(v9 + 7) = 0;
          *(v9 + 8) = 0;
          *(v9 + 9) = 0;
        }

        v19 = v17 >> 2;
        if (!((v17 >> 2) >> 62))
        {
          if (v18 >> 1 > v19)
          {
            v19 = v18 >> 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (!(v20 >> 62))
          {
            operator new();
          }
        }

        sub_1D9D84AB0();
      }

      v21 = *(v9 + 8);
      v22 = v21 - v14;
      if (v21 - v14 >= v17)
      {
        if (v15 != v16)
        {
          v26 = *(v9 + 7);
          memmove(v14, *(v13 + 7), v15 - v16);
          v14 = v26;
        }

        v25 = &v14[v17];
      }

      else
      {
        if (v21 != v14)
        {
          memmove(v14, *(v13 + 7), v21 - v14);
          v21 = *(v9 + 8);
        }

        v23 = (v16 + v22);
        v24 = v15 - (v16 + v22);
        if (v24)
        {
          memmove(v21, v23, v24);
        }

        v25 = &v21[v24];
      }

      *(v9 + 8) = v25;
    }

    v27 = *v8;
    v28 = (a1 + 8);
    v29 = (a1 + 8);
    if (!*v8)
    {
LABEL_58:
      *v51 = 0;
      v51[1] = 0;
      v51[2] = v28;
      *v29 = v51;
      v42 = **a1;
      if (!v42)
      {
        goto LABEL_60;
      }

LABEL_59:
      *a1 = v42;
      goto LABEL_60;
    }

    v30 = *(v51 + 55);
    if (v30 >= 0)
    {
      v31 = *(v51 + 55);
    }

    else
    {
      v31 = v51[5];
    }

    if (v30 >= 0)
    {
      v32 = v51 + 4;
    }

    else
    {
      v32 = v51[4];
    }

    do
    {
      while (1)
      {
        v28 = v27;
        v35 = v27[4];
        v33 = v27 + 4;
        v34 = v35;
        v36 = *(v33 + 23);
        if (v36 >= 0)
        {
          v37 = *(v33 + 23);
        }

        else
        {
          v37 = v33[1];
        }

        if (v36 >= 0)
        {
          v38 = v33;
        }

        else
        {
          v38 = v34;
        }

        if (v37 >= v31)
        {
          v39 = v31;
        }

        else
        {
          v39 = v37;
        }

        v40 = memcmp(v32, v38, v39);
        v41 = v31 < v37;
        if (v40)
        {
          v41 = v40 < 0;
        }

        if (!v41)
        {
          break;
        }

        v27 = *v28;
        v29 = v28;
        if (!*v28)
        {
          goto LABEL_58;
        }
      }

      v27 = v28[1];
    }

    while (v27);
    *v51 = 0;
    v51[1] = 0;
    v51[2] = v28;
    v28[1] = v51;
    v42 = **a1;
    if (v42)
    {
      goto LABEL_59;
    }

LABEL_60:
    sub_1D9D1312C(*(a1 + 8), v51);
    ++*(a1 + 16);
    v9 = v50;
    v51 = v50;
    if (v50)
    {
      v10 = *(v50 + 2);
      if (v10)
      {
        v43 = *v10;
        if (*v10 == v50)
        {
          *v10 = 0;
          while (1)
          {
            v46 = *(v10 + 1);
            if (!v46)
            {
              break;
            }

            do
            {
              v10 = v46;
              v46 = *v46;
            }

            while (v46);
          }
        }

        else
        {
          for (*(v10 + 1) = 0; v43; v43 = *(v10 + 1))
          {
            do
            {
              v10 = v43;
              v43 = *v43;
            }

            while (v43);
          }
        }
      }

      v50 = v10;
      v44 = *(v13 + 1);
      if (!v44)
      {
        do
        {
LABEL_71:
          v4 = *(v13 + 2);
          v45 = *v4 == v13;
          v13 = v4;
        }

        while (!v45);
        goto LABEL_73;
      }
    }

    else
    {
      v10 = 0;
      v44 = *(v13 + 1);
      if (!v44)
      {
        goto LABEL_71;
      }
    }

    do
    {
      v4 = v44;
      v44 = *v44;
    }

    while (v44);
LABEL_73:
    if (!v9)
    {
      break;
    }

    v13 = v4;
  }

  while (v4 != a3);
  v12 = a1;
  sub_1D9DB1094(a1, v9);
  if (v10)
  {
LABEL_83:
    for (i = *(v10 + 2); i; i = *(i + 2))
    {
      v10 = i;
    }

    sub_1D9DB1094(v12, v10);
  }

LABEL_86:
  if (v4 != a3)
  {
    operator new();
  }
}

void sub_1D9DB85CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9DB8608(va);
  _Unwind_Resume(a1);
}

void sub_1D9DB85E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9DB8608(va);
  _Unwind_Resume(a1);
}

void sub_1D9DB85F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D90624(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9DB8608(uint64_t a1)
{
  sub_1D9DB1094(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1D9DB1094(*a1, v2);
  }

  return a1;
}

void sub_1D9DB8758(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
    if ((*(v2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      sub_1D9D90624(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 32));
  sub_1D9D90624(v1);
  _Unwind_Resume(a1);
}

void sub_1D9DB87A4(char *a1)
{
  if (a1)
  {
    sub_1D9DB87A4(*a1);
    sub_1D9DB87A4(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

uint64_t sub_1D9DB8830(uint64_t a1)
{
  sub_1D9DB87A4(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1D9DB87A4(v2);
  }

  return a1;
}

void *sub_1D9DB8880(uint64_t a1, const void **a2)
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

void sub_1D9DB8A24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D90624(va);
  _Unwind_Resume(a1);
}

void sub_1D9DB8A38(uint64_t a1, int a2)
{
  *(&__p.__r_.__value_.__s + 23) = 9;
  strcpy(&__p, "vocab.txt");
  sub_1D9D5D790(a1, &__p, &v13);
  v4 = sub_1D9D5480C(&v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v4)
  {
LABEL_4:
    *(&__p.__r_.__value_.__s + 23) = 9;
    strcpy(&__p, "vocab.txt");
    sub_1D9D5D790(a1, &__p, &v13);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      __dst = v14;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_6;
    }

    sub_1D9D12B94(&__dst, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_17:
        *(&__p.__r_.__value_.__s + 23) = 15;
        strcpy(&__p, "special_map.txt");
        sub_1D9D5D790(a1, &__p, &v13);
        v6 = sub_1D9D5480C(&v13);
        if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
        {
          v8 = v6;
          operator delete(v14.__r_.__value_.__l.__data_);
          if (v8)
          {
LABEL_19:
            *(&v12.__r_.__value_.__s + 23) = 15;
            strcpy(&v12, "special_map.txt");
            sub_1D9D5D790(a1, &v12, &v13);
            if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              v9 = v14;
              if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_21;
              }

LABEL_35:
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_28;
              }

              goto LABEL_36;
            }

            sub_1D9D12B94(&v9, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
            if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v14.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_35;
              }
            }

            else if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_35;
            }

LABEL_21:
            operator delete(v12.__r_.__value_.__l.__data_);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_28:
              operator delete(__p.__r_.__value_.__l.__data_);
              if (a2 == 2)
              {
                goto LABEL_29;
              }

              goto LABEL_37;
            }

LABEL_36:
            if (a2 == 2)
            {
LABEL_29:
              operator new();
            }

LABEL_37:
            if (a2 == 1)
            {
              operator new();
            }

            operator new();
          }
        }

        else if (v6)
        {
          goto LABEL_19;
        }

        *(&v9.__r_.__value_.__s + 23) = 0;
        v9.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_28;
        }

        goto LABEL_36;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_6:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

LABEL_9:
  *(&__p.__r_.__value_.__s + 23) = 19;
  strcpy(&__p, "sentencepiece.model");
  sub_1D9D5D790(a1, &__p, &v13);
  v5 = sub_1D9D5480C(&v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if (v5)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v5)
  {
LABEL_12:
    *(&v12.__r_.__value_.__s + 23) = 19;
    strcpy(&v12, "sentencepiece.model");
    sub_1D9D5D790(a1, &v12, &v13);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      __p = v14;
      if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_14;
    }

    sub_1D9D12B94(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        operator new();
      }
    }

    else if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_14:
    operator delete(v12.__r_.__value_.__l.__data_);
    goto LABEL_32;
  }

LABEL_25:
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Unable to find vocab file.");
  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
}

void sub_1D9DB9070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, void *a33, int a34, __int16 a35, char a36, char a37, int a38, __int16 a39, char a40, char a41)
{
  if (*(v41 - 65) < 0)
  {
    operator delete(*(v41 - 88));
  }

  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_1D9DB92A0(double a1, double a2)
{
  v2 = fmax(a1, a2);
  v3 = fmin(a1, a2);
  if (v3 >= -1021.0)
  {
    v4 = exp(v3 - v2);
    return log1p(v4) + v2;
  }

  return v2;
}

void sub_1D9DB9544(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = MEMORY[0x1E696AEC0];
  objc_msgSend_normalizedTotalLogProbability(v5, v8, v9, v10);
  v14 = objc_msgSend_stringWithFormat_(v7, v11, @"\t%@ : %.2f\n", v12, v17, v13);
  objc_msgSend_appendString_(v6, v15, v14, v16);
}

void sub_1D9DB9D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  _Block_object_dispose(&a23, 8);
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1D9DB9D5C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1D9DB9D80(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1D9DB9D98(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  objc_msgSend_normalizedTotalLogProbability(v5, v7, v8, v9);
  v12 = v6[7];
  v11 = v6[8];
  if (v12 >= v11)
  {
    v14 = v6[6];
    v15 = v12 - v14;
    v16 = (v12 - v14) >> 3;
    v17 = v16 + 1;
    if ((v16 + 1) >> 61)
    {
      sub_1D9D84AB0();
    }

    v18 = v11 - v14;
    if (v18 >> 2 > v17)
    {
      v17 = v18 >> 2;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (!(v19 >> 61))
      {
        operator new();
      }

      sub_1D9D10E9C();
    }

    v20 = (v12 - v14) >> 3;
    v21 = (8 * v16);
    v22 = (8 * v16 - 8 * v20);
    *v21 = v10;
    v13 = v21 + 1;
    memcpy(v22, v14, v15);
    v6[6] = v22;
    v6[7] = v13;
    v6[8] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v12 = v10;
    v13 = v12 + 8;
  }

  v6[7] = v13;
}

void sub_1D9DB9EFC(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a3;
  objc_msgSend_normalizedTotalLogProbability(v28, v4, v5, v6);
  if (v9 >= *(a1 + 48))
  {
    objc_msgSend_addPath_(*(a1 + 32), v7, v28, v8);
    if (*(a1 + 56) == 1)
    {
      v16 = objc_msgSend_characterLMState(v28, v10, v11, v12);
      if (v16)
      {
        if (objc_msgSend_hasExpanded(v28, v13, v14, v15))
        {
          v20 = objc_msgSend_latestExpandedSymbol(v28, v17, v18, v19);

          if (v20)
          {
            Copy = CVNLPLanguageModelWithStateCreateCopy(v16);
            v25 = objc_msgSend_latestExpandedSymbol(v28, v22, v23, v24);
            CVNLPLanguageModelWithStateUpdateWithContext(Copy, v25);

            objc_msgSend_setCharacterLMState_(v28, v26, Copy, v27);
            CFRelease(Copy);
          }
        }
      }
    }
  }

  else
  {
    objc_msgSend_addPath_(*(a1 + 40), v7, v28, v8);
  }
}

uint64_t CVNLPCaptionHandlerCreate(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x1E695E480];
  if (qword_1EE000600 != -1)
  {
    v5 = *MEMORY[0x1E695E480];
    dispatch_once(&qword_1EE000600, &unk_1F554FA50);
  }

  Instance = _CFRuntimeCreateInstance();
  sub_1D9DAB3C4(Instance + 16, v1);

  return Instance;
}

uint64_t sub_1D9DBA584(_Unwind_Exception *a1, int a2)
{
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v6 = objc_begin_catch(a1);
  v10 = objc_msgSend_userInfo(v6, v7, v8, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v10, v11, off_1ECB71978, v12);

  if (v2)
  {
    *v2 = v13;
  }

  objc_end_catch();
  return 0;
}

uint64_t CVNLPCaptionCreateForImage(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1D9DAB3C8(a1 + 16, a2, a4);
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, CVNLPCaptions, v6);
  v11 = objc_msgSend_copy(v7, v8, v9, v10);

  return v11;
}

uint64_t sub_1D9DBA68C(_Unwind_Exception *a1, int a2)
{
  v6 = v4;

  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v8 = objc_begin_catch(a1);
  v12 = objc_msgSend_userInfo(v8, v9, v10, v11);
  v15 = objc_msgSend_objectForKeyedSubscript_(v12, v13, off_1ECB71978, v14);

  if (v2)
  {
    *v2 = v15;
  }

  objc_end_catch();
  return 0;
}

uint64_t CVNLPCaptionCopyForImage(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1D9DAB3C8(a1 + 16, a2, a4);
  v8 = objc_msgSend_copy(v4, v5, v6, v7);

  return v8;
}

uint64_t sub_1D9DBA798(_Unwind_Exception *a1, int a2)
{
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v6 = objc_begin_catch(a1);
  v10 = objc_msgSend_userInfo(v6, v7, v8, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v10, v11, off_1ECB71978, v12);

  if (v2)
  {
    *v2 = v13;
  }

  objc_end_catch();
  return 0;
}

uint64_t CVNLPCaptionCopyForVideo(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], a2, a2, a4);
  v5 = objc_alloc(MEMORY[0x1E6988168]);
  v7 = objc_msgSend_initWithURL_options_(v5, v6, v4, 0);
  v10 = objc_msgSend_tracksWithMediaType_(v7, v8, *MEMORY[0x1E6987608], v9);
  v14 = objc_msgSend_firstObject(v10, v11, v12, v13);

  objc_msgSend_nominalFrameRate(v14, v15, v16, v17);
  v19 = v18;
  v20 = v18;
  NSLog(&cfstr_FpsIsF.isa, v18);
  v21 = objc_alloc(MEMORY[0x1E6987E68]);
  v24 = objc_msgSend_initWithAsset_(v21, v22, v7, v23);
  v25 = MEMORY[0x1E6960CC0];
  time = **&MEMORY[0x1E6960CC0];
  objc_msgSend_setRequestedTimeToleranceAfter_(v24, v26, &time, v27);
  time = *v25;
  objc_msgSend_setRequestedTimeToleranceBefore_(v24, v28, &time, v29);
  if (v7)
  {
    objc_msgSend_duration(v7, v30, v31, v32);
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  __p = 0;
  v58 = 0;
  v59 = 0;
  if (CMTimeGetSeconds(&time) * v20 + -1.0 > 0.0)
  {
    v35 = MEMORY[0x1E695E0F8];
    objc_autoreleasePoolPush();
    memset(&v56, 0, sizeof(v56));
    CMTimeMake(&v56, 0.0, v19);
    time = v56;
    v54 = 0;
    v37 = objc_msgSend_copyCGImageAtTime_actualTime_error_(v24, v36, &time, v55, &v54);
    v54;
    Width = CGImageGetWidth(v37);
    Height = CGImageGetHeight(v37);
    v63 = 0;
    v64 = &v63;
    v65 = 0x2050000000;
    v40 = qword_1EE0005F0;
    v66 = qword_1EE0005F0;
    if (!qword_1EE0005F0)
    {
      time.value = MEMORY[0x1E69E9820];
      *&time.timescale = 3221225472;
      time.epoch = sub_1D9DBD3D0;
      v61 = &unk_1E858DFE0;
      v62 = &v63;
      sub_1D9DBD3D0(&time);
      v40 = v64[3];
    }

    v41 = v40;
    _Block_object_dispose(&v63, 8);
    v42 = [v40 alloc];
    v44 = objc_msgSend_initWithCGImage_orientation_options_(v42, v43, v37, 1, v35);
    v46 = objc_msgSend_bufferWithWidth_height_format_options_error_(v44, v45, Width, Height, 1111970369, v35, 0);
    sub_1D9DABB90(a1 + 16, v46);
    operator new();
  }

  v47 = sub_1D9DAC2F8((a1 + 16), &__p, v33, v34);
  v51 = objc_msgSend_copy(v47, v48, v49, v50);

  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  return v51;
}

void sub_1D9DBACDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CVNLPCaptionCreateForCVPixelBuffer(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1D9DABCA8(a1 + 16, a2, a4);
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, CVNLPCaptions, v6);
  v11 = objc_msgSend_copy(v7, v8, v9, v10);

  return v11;
}

uint64_t sub_1D9DBAE94(_Unwind_Exception *a1, int a2)
{
  v6 = v4;

  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v8 = objc_begin_catch(a1);
  v12 = objc_msgSend_userInfo(v8, v9, v10, v11);
  v15 = objc_msgSend_objectForKeyedSubscript_(v12, v13, off_1ECB71978, v14);

  if (v2)
  {
    *v2 = v15;
  }

  objc_end_catch();
  return 0;
}

uint64_t CVNLPCaptionCopyForCVPixelBuffer(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1D9DABCA8(a1 + 16, a2, a4);
  v8 = objc_msgSend_copy(v4, v5, v6, v7);

  return v8;
}

uint64_t sub_1D9DBAFA0(_Unwind_Exception *a1, int a2)
{
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v6 = objc_begin_catch(a1);
  v10 = objc_msgSend_userInfo(v6, v7, v8, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v10, v11, off_1ECB71978, v12);

  if (v2)
  {
    *v2 = v13;
  }

  objc_end_catch();
  return 0;
}

uint64_t CVNLPCaptionCopyClassificationResults(uint64_t a1)
{
  v1 = *(a1 + 72);
  v5 = objc_msgSend_copy(v1, v2, v3, v4);

  return v5;
}

uint64_t sub_1D9DBB090(_Unwind_Exception *a1, int a2)
{
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v6 = objc_begin_catch(a1);
  v10 = objc_msgSend_userInfo(v6, v7, v8, v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v10, v11, off_1ECB71978, v12);

  if (v2)
  {
    *v2 = v13;
  }

  objc_end_catch();
  return 0;
}

uint64_t CVNLPCaptionCopyPerformanceMetrics(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1D9DAC578((a1 + 16), a2, a3, a4);
  v8 = objc_msgSend_copy(v4, v5, v6, v7);

  return v8;
}

void sub_1D9DBB820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, __int128 buf, uint64_t a29, int a30, __int16 a31, char a32, char a33, __int128 a34, int a35, __int16 a36, char a37, char a38)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_1D9D5DA90(&a9);
  if (a33 < 0)
  {
    operator delete(*(&buf + 1));
  }

  if (a38 < 0)
  {
    operator delete(a34);
  }

  switch(a2)
  {
    case 6:
      v45 = __cxa_begin_catch(exception_object);
      v46 = v45;
      if (v38)
      {
        *v38 = sub_1D9DBC894(v45);
      }

      v47 = sub_1D9D54F4C(5);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = (*(*v46 + 16))(v46);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v48;
        _os_log_impl(&dword_1D9D0A000, v47, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
      }

      break;
    case 5:
      v49 = __cxa_begin_catch(exception_object);
      v50 = v49;
      if (v38)
      {
        *v38 = sub_1D9DBC81C(v49);
      }

      v47 = sub_1D9D54F4C(5);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v51 = (*(*v50 + 16))(v50);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v51;
        _os_log_impl(&dword_1D9D0A000, v47, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
      }

      break;
    case 4:
      v52 = __cxa_begin_catch(exception_object);
      v53 = v52;
      if (v38)
      {
        *v38 = sub_1D9DBC5C0(v52);
      }

      v47 = sub_1D9D54F4C(5);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v54 = (*(*v53 + 16))(v53);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v54;
        _os_log_impl(&dword_1D9D0A000, v47, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
      }

      break;
    case 3:
      v55 = __cxa_begin_catch(exception_object);
      v56 = v55;
      if (v38)
      {
        *v38 = sub_1D9DBC364(v55);
      }

      v47 = sub_1D9D54F4C(5);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v57 = (*(*v56 + 16))(v56);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v57;
        _os_log_impl(&dword_1D9D0A000, v47, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
      }

      break;
    default:
      v58 = __cxa_begin_catch(exception_object);
      if (a2 != 2)
      {
        v61 = sub_1D9D54F4C(5);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1D9D0A000, v61, OS_LOG_TYPE_ERROR, "Unknown error encountered during initWithOptions. See NSError object for more details.", &buf, 2u);
        }

        sub_1D9DBE148(&buf + 8, "Unknown error encountered during initWithOptions.");
        *&buf = &unk_1F554FAD0;
        if (v38)
        {
          *v38 = sub_1D9DBC02C(&buf);
        }

        v62 = sub_1D9D54F4C(5);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          if (a33 >= 0)
          {
            v63 = &buf + 8;
          }

          else
          {
            v63 = *(&buf + 1);
          }

          LODWORD(a34) = 136315138;
          *(&a34 + 4) = v63;
          _os_log_impl(&dword_1D9D0A000, v62, OS_LOG_TYPE_ERROR, "%s", &a34, 0xCu);
        }

        sub_1D9DBC2A4(&buf);
        __cxa_end_catch();
LABEL_49:
        JUMPOUT(0x1D9DBB6B8);
      }

      v59 = v58;
      if (v38)
      {
        *v38 = sub_1D9DBC2EC(v58);
      }

      v47 = sub_1D9D54F4C(5);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v60 = (*(*v59 + 16))(v59);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v60;
        _os_log_impl(&dword_1D9D0A000, v47, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
      }

      break;
  }

  __cxa_end_catch();
  goto LABEL_49;
}

id sub_1D9DBC02C(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = (*(*a1 + 16))(a1);
  v2 = strlen(v1);
  if (v1)
  {
    v14 = CFStringCreateWithBytes(0, v1, v2, 0x8000100u, 0);
    if (!v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v14 = 0;
  }

  sub_1D9D896B0(*MEMORY[0x1E695E650], &cf);
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v15 = v4;
  v5 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  v16 = v5;
  v12[0] = &v15;
  v12[1] = 1;
  v6 = sub_1D9D8A8A8(v12);
  v8 = v6;
  if (v6)
  {
    CFRelease(v6);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v9 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v7, CVNLPVideoCaptioningModelErrorDomain, 7, v8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void sub_1D9DBC1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D9D89420(va);
  _Unwind_Resume(a1);
}

void sub_1D9DBC1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  __cxa_free_exception(v13);
  sub_1D9D89420(&a13);
  _Unwind_Resume(a1);
}

void sub_1D9DBC214(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1D9D3FB90(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9DBC250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  sub_1D9D8A864(va2);
  sub_1D9D89320(va);
  sub_1D9D89320(va1);
  _Unwind_Resume(a1);
}

void sub_1D9DBC274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D9D89320(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9DBC288(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

std::exception *sub_1D9DBC2A4(std::exception *a1)
{
  std::exception::~exception(a1);
  if (*(v2 + 31) < 0)
  {
    operator delete(a1[1].__vftable);
  }

  return a1;
}

id sub_1D9DBC2EC(uint64_t a1)
{
  v1 = sub_1D9D8A654(a1);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v2, CVNLPVideoCaptioningModelErrorDomain, 7, v1);

  return v3;
}

id sub_1D9DBC364(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = (*(*a1 + 16))(a1);
  v2 = strlen(v1);
  if (v1)
  {
    v14 = CFStringCreateWithBytes(0, v1, v2, 0x8000100u, 0);
    if (!v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v14 = 0;
  }

  sub_1D9D896B0(*MEMORY[0x1E695E650], &cf);
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v15 = v4;
  v5 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  v16 = v5;
  v12[0] = &v15;
  v12[1] = 1;
  v6 = sub_1D9D8A8A8(v12);
  v8 = v6;
  if (v6)
  {
    CFRelease(v6);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v9 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v7, CVNLPVideoCaptioningModelErrorDomain, 6, v8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void sub_1D9DBC51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D9D89420(va);
  _Unwind_Resume(a1);
}

void sub_1D9DBC530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  __cxa_free_exception(v13);
  sub_1D9D89420(&a13);
  _Unwind_Resume(a1);
}

void sub_1D9DBC54C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1D9D3FB90(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9DBC588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  sub_1D9D8A864(va2);
  sub_1D9D89320(va);
  sub_1D9D89320(va1);
  _Unwind_Resume(a1);
}

void sub_1D9DBC5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D9D89320(va);
  _Unwind_Resume(a1);
}

id sub_1D9DBC5C0(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = (*(*a1 + 16))(a1);
  v2 = strlen(v1);
  if (v1)
  {
    v14 = CFStringCreateWithBytes(0, v1, v2, 0x8000100u, 0);
    if (!v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v14 = 0;
  }

  sub_1D9D896B0(*MEMORY[0x1E695E650], &cf);
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v15 = v4;
  v5 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  v16 = v5;
  v12[0] = &v15;
  v12[1] = 1;
  v6 = sub_1D9D8A8A8(v12);
  v8 = v6;
  if (v6)
  {
    CFRelease(v6);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v9 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v7, CVNLPVideoCaptioningModelErrorDomain, 5, v8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void sub_1D9DBC778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D9D89420(va);
  _Unwind_Resume(a1);
}

void sub_1D9DBC78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  __cxa_free_exception(v13);
  sub_1D9D89420(&a13);
  _Unwind_Resume(a1);
}

void sub_1D9DBC7A8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1D9D3FB90(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9DBC7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  sub_1D9D8A864(va2);
  sub_1D9D89320(va);
  sub_1D9D89320(va1);
  _Unwind_Resume(a1);
}

void sub_1D9DBC808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1D9D89320(va);
  _Unwind_Resume(a1);
}

id sub_1D9DBC81C(uint64_t a1)
{
  v1 = sub_1D9D8A654(a1);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v2, CVNLPVideoCaptioningModelErrorDomain, 3, v1);

  return v3;
}

id sub_1D9DBC894(uint64_t a1)
{
  v1 = sub_1D9D8A654(a1);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v2, CVNLPVideoCaptioningModelErrorDomain, 4, v1);

  return v3;
}

void sub_1D9DBCD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *buf, uint64_t *a37, int a38, __int16 a39, char a40, char a41, int a42, __int16 a43, char a44, char a45)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a19);
  }

  sub_1D9D5DA90(&buf);
  switch(a2)
  {
    case 6:
      v49 = __cxa_begin_catch(exception_object);
      v50 = v49;
      if (v45)
      {
        *v45 = sub_1D9DBC894(v49);
      }

      v51 = sub_1D9D54F4C(5);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = (*(*v50 + 16))(v50);
        LODWORD(buf) = 136315138;
        *(v46 + 4) = v52;
        _os_log_impl(&dword_1D9D0A000, v51, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
      }

      break;
    case 5:
      v53 = __cxa_begin_catch(exception_object);
      v54 = v53;
      if (v45)
      {
        *v45 = sub_1D9DBC81C(v53);
      }

      v51 = sub_1D9D54F4C(5);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v55 = (*(*v54 + 16))(v54);
        LODWORD(buf) = 136315138;
        *(v46 + 4) = v55;
        _os_log_impl(&dword_1D9D0A000, v51, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
      }

      break;
    case 4:
      v56 = __cxa_begin_catch(exception_object);
      v57 = v56;
      if (v45)
      {
        *v45 = sub_1D9DBC5C0(v56);
      }

      v51 = sub_1D9D54F4C(5);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v58 = (*(*v57 + 16))(v57);
        LODWORD(buf) = 136315138;
        *(v46 + 4) = v58;
        _os_log_impl(&dword_1D9D0A000, v51, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
      }

      break;
    case 3:
      v59 = __cxa_begin_catch(exception_object);
      v60 = v59;
      if (v45)
      {
        *v45 = sub_1D9DBC364(v59);
      }

      v51 = sub_1D9D54F4C(5);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v61 = (*(*v60 + 16))(v60);
        LODWORD(buf) = 136315138;
        *(v46 + 4) = v61;
        _os_log_impl(&dword_1D9D0A000, v51, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
      }

      break;
    default:
      v62 = __cxa_begin_catch(exception_object);
      if (a2 != 2)
      {
        sub_1D9DBE148(&a37, "Unknown error encountered during generateCaption.");
        buf = &unk_1F554FAD0;
        if (v45)
        {
          *v45 = sub_1D9DBC02C(&buf);
        }

        v65 = sub_1D9D54F4C(5);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          if (a45 >= 0)
          {
            v66 = &a37;
          }

          else
          {
            v66 = a37;
          }

          LODWORD(a19) = 136315138;
          *(&a19 + 4) = v66;
          _os_log_impl(&dword_1D9D0A000, v65, OS_LOG_TYPE_ERROR, "%s", &a19, 0xCu);
        }

        sub_1D9DBC2A4(&buf);
        __cxa_end_catch();
LABEL_45:
        JUMPOUT(0x1D9DBCCD4);
      }

      v63 = v62;
      if (v45)
      {
        *v45 = sub_1D9DBC2EC(v62);
      }

      v51 = sub_1D9D54F4C(5);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v64 = (*(*v63 + 16))(v63);
        LODWORD(buf) = 136315138;
        *(v46 + 4) = v64;
        _os_log_impl(&dword_1D9D0A000, v51, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
      }

      break;
  }

  __cxa_end_catch();
  goto LABEL_45;
}

Class sub_1D9DBD3D0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1EE0005F8)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = sub_1D9DBD524;
    v5[4] = &unk_1E858E018;
    v5[5] = v5;
    v6 = xmmword_1E858E3D0;
    v7 = 0;
    qword_1EE0005F8 = _sl_dlopen();
    v2 = v5[0];
    if (qword_1EE0005F8)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VNImageBuffer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1EE0005F0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9DBD524(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EE0005F8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9DBD598(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7 = objc_msgSend_objectForKey_(v3, v5, v4, v6);
  v11 = v7;
  if (!v7)
  {
    v14 = v4;
    v18 = objc_msgSend_UTF8String(v14, v15, v16, v17);
    sub_1D9D94D70(v20, v18);
    exception = __cxa_allocate_exception(0x28uLL);
    sub_1D9DBD6BC(exception, v20);
    __cxa_throw(exception, &unk_1F554E348, sub_1D9D594FC);
  }

  v12 = objc_msgSend_intValue(v7, v8, v9, v10);

  return v12;
}

void sub_1D9DBD664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9DBD6BC(uint64_t a1, uint64_t a2)
{
  sub_1D9D100A8(&v9);
  sub_1D9D12280(&v9, "[KeyError] ", 11);
  sub_1D9D12280(&v9, "Key not found in dictionary: ", 29);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  sub_1D9D12280(&v9, v5, v6);
  std::stringbuf::str();
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](&v13);
  *a1 = &unk_1F554E848;
  v7 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v7 = *(a1 + 16);
  }

  std::runtime_error::runtime_error(a1, v7);
  *a1 = &unk_1F554E848;
  return a1;
}

void sub_1D9DBD894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 39) < 0)
  {
    operator delete(*v11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9DBD8C8()
{
  qword_1EE000610 = 0;
  qword_1EE000620 = 0;
  unk_1EE000628 = 0;
  qword_1EE000618 = "CVNLPCaption";
  qword_1EE000630 = sub_1D9DBD924;
  xmmword_1EE000638 = 0u;
  unk_1EE000648 = 0u;
  result = _CFRuntimeRegisterClass();
  qword_1EE000608 = result;
  return result;
}

void sub_1D9DBD924(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t sub_1D9DBD9A0(uint64_t a1, uint64_t a2)
{
  sub_1D9D100A8(&v9);
  sub_1D9D12280(&v9, "[InvalidArgument] ", 18);
  sub_1D9D12280(&v9, "Invalid model URL: ", 19);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  sub_1D9D12280(&v9, v5, v6);
  std::stringbuf::str();
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](&v13);
  *a1 = &unk_1F554F350;
  v7 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v7 = *(a1 + 16);
  }

  std::logic_error::logic_error(a1, v7);
  *a1 = &unk_1F554F350;
  return a1;
}

void sub_1D9DBDB78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 39) < 0)
  {
    operator delete(*v11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9DBDBCC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F554FA80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA741280);
}

void sub_1D9DBDC20(uint64_t a1)
{
  v2 = *(a1 + 608);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 592);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 576);
  *(a1 + 576) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 568);
  *(a1 + 568) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(a1 + 560) == 1)
  {
    v6 = *(a1 + 536);
    if (v6)
    {
      v7 = *(a1 + 544);
      v8 = *(a1 + 536);
      if (v7 != v6)
      {
        do
        {
          v9 = *(v7 - 1);
          v7 -= 3;
          if (v9 < 0)
          {
            operator delete(*v7);
          }
        }

        while (v7 != v6);
        v8 = *(a1 + 536);
      }

      *(a1 + 544) = v6;
      operator delete(v8);
    }
  }

  sub_1D9D64478((a1 + 304));
  *(a1 + 248) = &unk_1F554E3C8;
  v10 = *(a1 + 296);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(a1 + 264);
  if (v11)
  {
    *(a1 + 272) = v11;
    operator delete(v11);
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
    if ((*(a1 + 207) & 0x80000000) == 0)
    {
LABEL_27:
      if ((*(a1 + 183) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_36;
    }
  }

  else if ((*(a1 + 207) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(*(a1 + 184));
  if ((*(a1 + 183) & 0x80000000) == 0)
  {
LABEL_28:
    if ((*(a1 + 159) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(*(a1 + 160));
  if ((*(a1 + 159) & 0x80000000) == 0)
  {
LABEL_29:
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(*(a1 + 136));
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
LABEL_30:
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(*(a1 + 112));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_31:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_40:
    operator delete(*(a1 + 48));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_41;
  }

LABEL_39:
  operator delete(*(a1 + 72));
  if (*(a1 + 71) < 0)
  {
    goto LABEL_40;
  }

LABEL_32:
  if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return;
  }

LABEL_41:
  v12 = *(a1 + 24);

  operator delete(v12);
}

uint64_t sub_1D9DBDEE4(uint64_t a1, int *a2)
{
  sub_1D9D100A8(&v7);
  sub_1D9D12280(&v7, "[InvalidArgument] ", 18);
  sub_1D9D12280(&v7, "Received lengthPenalty=", 23);
  v4 = *a2;
  std::ostream::operator<<();
  sub_1D9D12280(&v7, ", which is outside the allowed range of [0.0, 10.0]. Please set to a floating point number between 0 and 10.", 108);
  std::stringbuf::str();
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](&v11);
  *a1 = &unk_1F554F350;
  v5 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v5 = *(a1 + 16);
  }

  std::logic_error::logic_error(a1, v5);
  *a1 = &unk_1F554F350;
  return a1;
}

void sub_1D9DBE0BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 + 39) < 0)
  {
    operator delete(*v11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D9DBE0F0(std::exception *a1)
{
  std::exception::~exception(a1);
  if (*(v2 + 31) < 0)
  {
    operator delete(a1[1].__vftable);
  }

  JUMPOUT(0x1DA741280);
}

uint64_t sub_1D9DBE148(uint64_t a1, const char *a2)
{
  sub_1D9D100A8(&v5);
  sub_1D9D12280(&v5, "[UnknownError] ", 15);
  v3 = strlen(a2);
  sub_1D9D12280(&v5, a2, v3);
  std::stringbuf::str();
  v5 = *MEMORY[0x1E69E54E8];
  *(&v5 + *(v5 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v6 = MEMORY[0x1E69E5548] + 16;
  if (v8 < 0)
  {
    operator delete(v7[7].__locale_);
  }

  v6 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v7);
  std::ostream::~ostream();
  return MEMORY[0x1DA7411E0](&v9);
}

void sub_1D9DBE2B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9DBE2CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D55298(va);
  _Unwind_Resume(a1);
}

void sub_1D9DBE3FC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1D9DBE964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v29 = v27;
  operator delete(v28);

  _Unwind_Resume(a1);
}

id sub_1D9DBEA0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_classifierRevisions(*(a1 + 32), v6, v7, v8);
  v12 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v5, v11);

  if (v12)
  {
    v16 = objc_msgSend_unsignedIntegerValue(v12, v13, v14, v15);
    v20 = 0;
    objc_msgSend_setRevision_error_(v3, v17, v16 + 3737841664, &v20);
    v18 = v20;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void sub_1D9DBEAD4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D9DBECEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9DBED38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D9DBED50(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = qword_1ECB71C20;
  v13 = qword_1ECB71C20;
  if (!qword_1ECB71C20)
  {
    v14[0] = 0;
    if (!qword_1ECB71C10)
    {
      v14[1] = MEMORY[0x1E69E9820];
      v14[2] = 3221225472;
      v14[3] = sub_1D9DBF2A4;
      v14[4] = &unk_1E858E018;
      v14[5] = v14;
      v15 = xmmword_1E858E460;
      v16 = 0;
      qword_1ECB71C10 = _sl_dlopen();
      if (!qword_1ECB71C10)
      {
        goto LABEL_9;
      }

      if (v14[0])
      {
        free(v14[0]);
      }
    }

    v11[3] = objc_getClass("VNImageRequestHandler");
    if (v11[3])
    {
      qword_1ECB71C20 = v11[3];
      v2 = v11[3];
      goto LABEL_8;
    }

LABEL_9:
    abort_report_np();
    __break(1u);
  }

LABEL_8:
  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = [v2 alloc];
  v6 = objc_msgSend_initWithCVPixelBuffer_options_(v4, v5, *(a1 + 40), MEMORY[0x1E695E0F8]);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1D9DBEF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9DBEF78(void *a1, const char *a2)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = *(*(a1[5] + 8) + 40);
  v32[0] = *(v3 + 40);
  v32[1] = *(v3 + 32);
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v32, 2);
  v31 = 0;
  objc_msgSend_performRequests_error_(v4, v6, v5, &v31);
  v7 = v31;

  if (!v7)
  {
    v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10);
    v15 = objc_msgSend_results(*(a1[4] + 40), v12, v13, v14);
    objc_msgSend_addObjectsFromArray_(v11, v16, v15, v17);

    v21 = objc_msgSend_results(*(a1[4] + 32), v18, v19, v20);
    objc_msgSend_addObjectsFromArray_(v11, v22, v21, v23);

    v27 = objc_msgSend_copy(v11, v24, v25, v26);
    v28 = *(a1[6] + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;
  }

  v30 = *MEMORY[0x1E69E9840];
}

Class sub_1D9DBF150(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ECB71C10)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = sub_1D9DBF2A4;
    v5[4] = &unk_1E858E018;
    v5[5] = v5;
    v6 = xmmword_1E858E460;
    v7 = 0;
    qword_1ECB71C10 = _sl_dlopen();
    v2 = v5[0];
    if (qword_1ECB71C10)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VN6Mb1ME89lyW3HpahkEygIG");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1ECB71C08 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9DBF2A4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ECB71C10 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1D9DBF318(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ECB71C10)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = sub_1D9DBF2A4;
    v5[4] = &unk_1E858E018;
    v5[5] = v5;
    v6 = xmmword_1E858E460;
    v7 = 0;
    qword_1ECB71C10 = _sl_dlopen();
    v2 = v5[0];
    if (qword_1ECB71C10)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VNVYvzEtX1JlUdu8xx5qhDI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1ECB71C18 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1D9DBF46C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ECB71C10)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = sub_1D9DBF2A4;
    v5[4] = &unk_1E858E018;
    v5[5] = v5;
    v6 = xmmword_1E858E460;
    v7 = 0;
    qword_1ECB71C10 = _sl_dlopen();
    v2 = v5[0];
    if (qword_1ECB71C10)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VNImageRequestHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1ECB71C20 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9DBF5C0(uint64_t a1, CFTypeRef *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v6 = MRLNeuralNetworkCreate();
  sub_1D9DB0780(a1, v6);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 104) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 120) = 1065353216;
  return a1;
}

void sub_1D9DBF64C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9DB074C(va);
  _Unwind_Resume(a1);
}

const void **sub_1D9DBF660(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

float sub_1D9DBF694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 104) + 24))(&__p);
  v6 = (*(**(a1 + 104) + 40))(*(a1 + 104), a2, a3);
  v7 = (v15 - __p) >> 2;
  LOBYTE(cf) = 0;
  v17 = 0;
  sub_1D9DBFB24(a1, __p, v7, &cf, 1, v18);
  if (v17 == 1 && cf)
  {
    CFRelease(cf);
  }

  v8 = v6;
  v9 = 2;
  if (!v18[0])
  {
    v9 = 4;
  }

  v10 = *&v18[v9];
  if (v18[0])
  {
    v11 = v7 - 1;
  }

  else
  {
    v11 = v6;
  }

  if (!v18[0])
  {
    v8 = v7 - 1;
  }

  v12 = *(v19 + 4 * v8 + 4 * v10 * v11);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_1D9DBF7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_1D9D8BA40(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1D9DBF804(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v8[0] = 0;
  v8[8] = 0;
  sub_1D9DBF9B0(a1, v8, 1, &v9);
  v6 = *a2;
  v5 = a2[1];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v7 = v5 - v6;
  if (v7)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * (v7 >> 3)) >> 62))
    {
      operator new();
    }

    sub_1D9D84AB0();
  }
}

void sub_1D9DBF998(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_1D9DBF9B0(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  (*(**(a1 + 104) + 24))(&__p);
  LOBYTE(v13) = 0;
  v8 = *(a2 + 8);
  if (v8 == 1)
  {
    v9 = *a2;
    if (*a2)
    {
      CFRetain(*a2);
    }

    v13 = v9;
    v10 = __p;
    v11 = v15;
    LOBYTE(cf) = 0;
    v17 = 0;
    if (v9)
    {
      CFRetain(v9);
    }

    v12 = v11 - v10;
    cf = v9;
    v17 = 1;
  }

  else
  {
    v10 = __p;
    v12 = v15 - __p;
    LOBYTE(cf) = 0;
    v17 = 0;
  }

  sub_1D9DBFB24(a1, v10, v12 >> 2, &cf, a3, a4);
  if (v17 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (v8 && v13)
  {
    CFRelease(v13);
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }
}

void sub_1D9DBFAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  sub_1D9D8BA40(&a15);
  sub_1D9D8BA40(&a10);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D9DBFB24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LOBYTE(cf) = 0;
  v18 = 0;
  if (*(a4 + 8) == 1)
  {
    v11 = *a4;
    if (*a4)
    {
      CFRetain(*a4);
    }

    cf = v11;
    v18 = 1;
  }

  sub_1D9D8FAE4(a1, a2, a3, &cf);
  if (v18 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (a3 <= 1)
  {
    a3 = 1;
  }

  v12 = *a1;
  OutputDimension = MRLNeuralNetworkGetOutputDimension();
  if (a5 == 1)
  {
    v14 = OutputDimension;
  }

  else
  {
    v14 = a3;
  }

  if (a5 != 1)
  {
    a3 = OutputDimension;
  }

  v15 = *a1;
  result = MRLNeuralNetworkGetOutput();
  *a6 = a5;
  *(a6 + 8) = v14;
  *(a6 + 16) = a3;
  *(a6 + 24) = result;
  return result;
}

void **sub_1D9DBFC20(void **a1)
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
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
        }

        v3 -= 5;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_1D9DBFC94(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = a1[2];
    v5 = a1[1];
    if (v4 != v3)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 24));
        }

        v4 -= 40;
      }

      while (v4 != v3);
      v5 = a1[1];
    }

    a1[2] = v3;
    operator delete(v5);
  }

  return a1;
}

void sub_1D9DBFD1C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 8);
  if (*(a1 + 16) != v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v3 + v5;
      v8 = *(v3 + v5 + 39);
      if (v8 >= 0)
      {
        v9 = *(v3 + v5 + 39);
      }

      else
      {
        v9 = *(v7 + 24);
      }

      if (v9 + 1 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1D9D12168();
      }

      if (v9 + 1 >= 0x17)
      {
        operator new();
      }

      v14 = 0;
      v15 = 0;
      __p = 0;
      HIBYTE(v15) = v9 + 1;
      if (v9)
      {
        if (v8 >= 0)
        {
          v10 = (v7 + 16);
        }

        else
        {
          v10 = *(v7 + 16);
        }

        memmove(&__p, v10, v9);
      }

      *(&__p + v9) = 32;
      if (v15 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v15 >= 0)
      {
        v12 = HIBYTE(v15);
      }

      else
      {
        v12 = v14;
      }

      std::string::append(a2, p_p, v12);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p);
      }

      ++v6;
      v3 = *(a1 + 8);
      v5 += 40;
    }

    while (v6 < 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - v3) >> 3));
  }
}

void sub_1D9DBFEA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((*(v15 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v15);
  _Unwind_Resume(exception_object);
}

void sub_1D9DBFEFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      operator new();
    }

    sub_1D9D9AF54();
  }
}

void sub_1D9DC0058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_1D9DC0078(&a11);
  *(v11 + 8) = v12;
  sub_1D9DC00DC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1D9DC0078(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 40;
    }
  }

  return a1;
}

void ***sub_1D9DC00DC(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          if (*(v4 - 1) < 0)
          {
            operator delete(*(v4 - 3));
          }

          v4 -= 5;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_1D9DC0160(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          if (*(v10 - 1) < 0)
          {
            operator delete(*(v10 - 3));
          }

          v10 -= 5;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x666666666666666)
    {
      v20 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v21 = 2 * v20;
      if (2 * v20 <= a4)
      {
        v21 = a4;
      }

      if (v20 >= 0x333333333333333)
      {
        v22 = 0x666666666666666;
      }

      else
      {
        v22 = v21;
      }

      if (v22 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1D9D9AF54();
  }

  v12 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * (v12 - v8) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v5;
        std::string::operator=((v8 + 2), (v5 + 16));
        v8 += 5;
        v5 += 40;
      }

      while (v5 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      if (*(v12 - 1) < 0)
      {
        operator delete(*(v12 - 3));
      }

      v12 -= 5;
    }

    a1[1] = v8;
  }

  else
  {
    v13 = a2 + v12 - v8;
    v14 = v12 - v8;
    if (v12 != v8)
    {
      v15 = a2;
      do
      {
        *v8 = *v15;
        std::string::operator=((v8 + 2), (v15 + 16));
        v15 += 40;
        v8 += 5;
      }

      while (v15 != v13);
      v12 = a1[1];
    }

    v23 = v12;
    v16 = v12;
    if (v13 != a3)
    {
      v17 = v14 + v5 + 16;
      v16 = v12;
      do
      {
        while (1)
        {
          v19 = v17 - 16;
          *v16 = *(v17 - 16);
          *(v16 + 2) = *(v17 - 8);
          *(v16 + 3) = *(v17 - 4);
          if (*(v17 + 23) < 0)
          {
            break;
          }

          v18 = *v17;
          v16[4] = *(v17 + 16);
          *(v16 + 1) = v18;
          v16 += 5;
          v23 = v16;
          v17 += 40;
          if (v19 + 40 == a3)
          {
            goto LABEL_18;
          }
        }

        sub_1D9D12B94(v16 + 16, *v17, *(v17 + 8));
        v16 = v23 + 5;
        v23 += 5;
        v17 += 40;
      }

      while (v19 + 40 != a3);
    }

LABEL_18:
    a1[1] = v16;
  }
}

void sub_1D9DC04A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1D9DC0078(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_1D9DC04C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1D9DC0078(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_1D9DC04D8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1D9D9AF54();
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

  v16 = a1;
  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1D9D10E9C();
  }

  v6 = 40 * v2;
  __p = 0;
  v13 = v6;
  v14 = 40 * v2;
  v15 = 0;
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 12) = *(a2 + 12);
  if (*(a2 + 39) < 0)
  {
    sub_1D9D12B94((v6 + 16), *(a2 + 16), *(a2 + 24));
    v6 = v14;
  }

  else
  {
    *(40 * v2 + 0x10) = *(a2 + 16);
    *(40 * v2 + 0x20) = *(a2 + 32);
  }

  v14 = v6 + 40;
  sub_1D9D9B118(a1, &__p);
  v7 = a1[1];
  v9 = v13;
  v8 = v14;
  if (v14 != v13)
  {
    do
    {
      v11 = v8 - 40;
      v14 = v8 - 40;
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 24));
        v11 = v14;
      }

      v8 = v11;
    }

    while (v11 != v9);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_1D9DC0658(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D9D9B264(va);
  _Unwind_Resume(a1);
}

void CVNLPLanguageModelCreate(CFTypeRef cf)
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1D9DC1FA8(&v1, cf);
  if (v1)
  {
    CFRetain(v1);
  }

  operator new();
}

void sub_1D9DC1A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (*(v53 - 97) < 0)
  {
    operator delete(*(v53 - 120));
    if (a31 < 0)
    {
LABEL_5:
      operator delete(__p);
      if ((a24 & 0x80000000) == 0)
      {
LABEL_9:
        sub_1D9D8777C(v53 - 160);
        if (a37 < 0)
        {
          operator delete(a32);
        }

        if (a53 < 0)
        {
          operator delete(a48);
        }

        if (*(v53 - 217) < 0)
        {
          operator delete(*(v53 - 240));
        }

        if (*(v53 - 177) < 0)
        {
          operator delete(*(v53 - 200));
          sub_1D9DB074C((v53 - 168));
          _Unwind_Resume(a1);
        }

        sub_1D9DB074C((v53 - 168));
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a19);
      goto LABEL_9;
    }
  }

  else if (a31 < 0)
  {
    goto LABEL_5;
  }

  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void *sub_1D9DC1FA8(void *result, CFTypeRef cf)
{
  v2 = result;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    result = CFDictionaryGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

void sub_1D9DC204C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1D9DB1028(v1);
  _Unwind_Resume(a1);
}

void sub_1D9DC2084(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  sub_1D9D100A8(&v31);
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

  v9 = sub_1D9D12280(&v31, v7, v8);
  sub_1D9D12280(v9, "/", 1);
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  v13 = sub_1D9D12280(&v31, v11, v12);
  sub_1D9D12280(v13, "/", 1);
  std::stringbuf::str();
  if ((v30 & 0x8000000000000000) == 0)
  {
    p_src = &__src;
    if (v30 >= (v30 - 1))
    {
      v15 = v30 - 1;
    }

    else
    {
      v15 = v30;
    }

    if (v15 < 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_18;
    }

LABEL_45:
    sub_1D9D12168();
  }

  p_src = __src;
  if (v29 >= v29 - 1)
  {
    v15 = v29 - 1;
  }

  else
  {
    v15 = v29;
  }

  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_45;
  }

LABEL_18:
  if (v15 >= 0x17)
  {
    operator new();
  }

  v26 = v15;
  if (v15)
  {
    memmove(v25, p_src, v15);
    *(v25 + v15) = 0;
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    LOBYTE(v25[0]) = 0;
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }
  }

  operator delete(__src);
LABEL_21:
  v31 = *MEMORY[0x1E69E54E8];
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v32 = MEMORY[0x1E69E5548] + 16;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  v32 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v33);
  std::ostream::~ostream();
  MEMORY[0x1DA7411E0](&v35);
  if ((v26 & 0x80u) == 0)
  {
    v18 = v25;
  }

  else
  {
    v18 = v25[0];
  }

  if (v18)
  {
    if ((v26 & 0x80u) == 0)
    {
      v19 = v26;
    }

    else
    {
      v19 = v25[1];
    }

    cf = CFStringCreateWithBytes(0, v18, v19, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if ((v26 & 0x80) != 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    cf = 0;
    if ((v26 & 0x80) != 0)
    {
LABEL_32:
      operator delete(v25[0]);
    }
  }

  v20 = objc_msgSend_createBundle(*(a2 + 24), v18, v16, v17, v25[0]);
  v22 = objc_msgSend_pathForResource_ofType_(v20, v21, cf, 0);
  v23 = v22;
  if (!v22)
  {
    v22 = &stru_1F554FF38;
  }

  sub_1D9D87968(v22, a1);

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1D9DC23F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_1D9D89420(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

CFDictionaryRef CVNLPLanguageModelCopyTokenIDMap(uint64_t a1)
{
  (*(**(a1 + 120) + 56))(&v35);
  __p = 0;
  v38 = 0;
  v39 = 0;
  sub_1D9DC7C08(&__p, v36[1]);
  v1 = v35;
  if (v35 != v36)
  {
    v2 = v38;
    do
    {
      if (v2 >= v39)
      {
        v3 = (v2 - __p) >> 4;
        if ((v3 + 1) >> 60)
        {
          sub_1D9D84AB0();
        }

        v4 = (v39 - __p) >> 3;
        if (v4 <= v3 + 1)
        {
          v4 = v3 + 1;
        }

        if (v39 - __p >= 0x7FFFFFFFFFFFFFF0)
        {
          v5 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v5 = v4;
        }

        p_p = &__p;
        if (v5)
        {
          if (!(v5 >> 60))
          {
            operator new();
          }

          sub_1D9D10E9C();
        }

        v40 = 0;
        v41 = 16 * v3;
        v42 = 16 * v3;
        v43 = 0;
        sub_1D9DC82F4((16 * v3), v1 + 32, v1 + 14);
        v6 = __p;
        v7 = v38;
        v8 = (v41 - (v38 - __p));
        v2 = (v42 + 16);
        v42 += 16;
        v9 = v38 - __p;
        if (v38 != __p)
        {
          v10 = v9 - 16;
          v11 = __p;
          v12 = (v41 - (v38 - __p));
          if ((v9 - 16) < 0x30)
          {
            goto LABEL_53;
          }

          if (v8 < __p + (v10 & 0xFFFFFFFFFFFFFFF0) + 16)
          {
            v11 = __p;
            v12 = (v41 - (v38 - __p));
            if (__p < v41 + (v10 & 0xFFFFFFFFFFFFFFF0) - v9 + 16)
            {
              goto LABEL_53;
            }
          }

          v13 = v9 >> 4;
          v14 = (v10 >> 4) + 1;
          v15 = 16 * (v14 & 0x1FFFFFFFFFFFFFFCLL);
          v11 = (__p + v15);
          v12 = &v8[v15];
          v16 = (v41 - 16 * v13 + 32);
          v17 = (__p + 32);
          v18 = v14 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v19 = *(v17 - 1);
            v20 = *v17;
            v21 = v17[1];
            *(v16 - 2) = *(v17 - 2);
            *(v16 - 1) = v19;
            *v16 = v20;
            v16[1] = v21;
            v16 += 4;
            *(v17 - 2) = 0uLL;
            *(v17 - 1) = 0uLL;
            *v17 = 0uLL;
            v17[1] = 0uLL;
            v17 += 4;
            v18 -= 4;
          }

          while (v18);
          if (v14 != (v14 & 0x1FFFFFFFFFFFFFFCLL))
          {
LABEL_53:
            do
            {
              *v12 = *v11;
              *v11 = 0;
              *(v12 + 1) = v11[1];
              v11[1] = 0;
              v11 += 2;
              v12 += 16;
            }

            while (v11 != v7);
          }

          do
          {
            v22 = v6[1];
            if (v22)
            {
              CFRelease(v22);
            }

            if (*v6)
            {
              CFRelease(*v6);
            }

            v6 += 2;
          }

          while (v6 != v7);
          v6 = __p;
        }

        __p = v8;
        v38 = v2;
        v41 = v6;
        v42 = v6;
        v39 = v43;
        if (v6)
        {
          operator delete(v6);
        }
      }

      else
      {
        sub_1D9DC82F4(v2, v1 + 32, v1 + 14);
        v2 += 2;
      }

      v38 = v2;
      v23 = v1[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v1[2];
          v25 = *v24 == v1;
          v1 = v24;
        }

        while (!v25);
      }

      v1 = v24;
    }

    while (v24 != v36);
  }

  v26 = sub_1D9DC7CD8(&__p);
  v27 = __p;
  if (__p)
  {
    v28 = v38;
    v29 = __p;
    if (v38 != __p)
    {
      do
      {
        v30 = *(v28 - 1);
        if (v30)
        {
          CFRelease(v30);
        }

        v32 = *(v28 - 2);
        v28 -= 2;
        v31 = v32;
        if (v32)
        {
          CFRelease(v31);
        }
      }

      while (v28 != v27);
      v29 = __p;
    }

    v38 = v27;
    operator delete(v29);
  }

  Copy = CFDictionaryCreateCopy(0, v26);
  CFRelease(v26);
  sub_1D9D9AC58(&v35, v36[0]);
  return Copy;
}

void sub_1D9DC27F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10, char *a11)
{
  sub_1D9DB074C(&a9);
  sub_1D9D9AC58(&a10, a11);
  _Unwind_Resume(a1);
}

void sub_1D9DC2814(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, char *);
  v6 = va_arg(va1, void);
  sub_1D9DC8088(va1);
  sub_1D9D9AC58(va, v5);
  _Unwind_Resume(a1);
}

CFDictionaryRef CVNLPLanguageModelCopyIDTokenMap(uint64_t a1)
{
  (*(**(a1 + 120) + 64))(&v35);
  __p = 0;
  v38 = 0;
  v39 = 0;
  sub_1D9DC7C08(&__p, v36[1]);
  v1 = v35;
  if (v35 != v36)
  {
    v2 = v38;
    do
    {
      if (v2 >= v39)
      {
        v3 = (v2 - __p) >> 4;
        if ((v3 + 1) >> 60)
        {
          sub_1D9D84AB0();
        }

        v4 = (v39 - __p) >> 3;
        if (v4 <= v3 + 1)
        {
          v4 = v3 + 1;
        }

        if (v39 - __p >= 0x7FFFFFFFFFFFFFF0)
        {
          v5 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v5 = v4;
        }

        p_p = &__p;
        if (v5)
        {
          if (!(v5 >> 60))
          {
            operator new();
          }

          sub_1D9D10E9C();
        }

        v40 = 0;
        v41 = 16 * v3;
        v42 = 16 * v3;
        v43 = 0;
        sub_1D9DC8464((16 * v3), *(v1 + 8), (v1 + 5));
        v6 = __p;
        v7 = v38;
        v8 = (v41 - (v38 - __p));
        v2 = (v42 + 16);
        v42 += 16;
        v9 = v38 - __p;
        if (v38 != __p)
        {
          v10 = v9 - 16;
          v11 = __p;
          v12 = (v41 - (v38 - __p));
          if ((v9 - 16) < 0x30)
          {
            goto LABEL_53;
          }

          if (v8 < __p + (v10 & 0xFFFFFFFFFFFFFFF0) + 16)
          {
            v11 = __p;
            v12 = (v41 - (v38 - __p));
            if (__p < v41 + (v10 & 0xFFFFFFFFFFFFFFF0) - v9 + 16)
            {
              goto LABEL_53;
            }
          }

          v13 = v9 >> 4;
          v14 = (v10 >> 4) + 1;
          v15 = 16 * (v14 & 0x1FFFFFFFFFFFFFFCLL);
          v11 = (__p + v15);
          v12 = &v8[v15];
          v16 = (v41 - 16 * v13 + 32);
          v17 = (__p + 32);
          v18 = v14 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v19 = *(v17 - 1);
            v20 = *v17;
            v21 = v17[1];
            *(v16 - 2) = *(v17 - 2);
            *(v16 - 1) = v19;
            *v16 = v20;
            v16[1] = v21;
            v16 += 4;
            *(v17 - 2) = 0uLL;
            *(v17 - 1) = 0uLL;
            *v17 = 0uLL;
            v17[1] = 0uLL;
            v17 += 4;
            v18 -= 4;
          }

          while (v18);
          if (v14 != (v14 & 0x1FFFFFFFFFFFFFFCLL))
          {
LABEL_53:
            do
            {
              *v12 = *v11;
              *v11 = 0;
              *(v12 + 1) = v11[1];
              v11[1] = 0;
              v11 += 2;
              v12 += 16;
            }

            while (v11 != v7);
          }

          do
          {
            v22 = v6[1];
            if (v22)
            {
              CFRelease(v22);
            }

            if (*v6)
            {
              CFRelease(*v6);
            }

            v6 += 2;
          }

          while (v6 != v7);
          v6 = __p;
        }

        __p = v8;
        v38 = v2;
        v41 = v6;
        v42 = v6;
        v39 = v43;
        if (v6)
        {
          operator delete(v6);
        }
      }

      else
      {
        sub_1D9DC8464(v2, *(v1 + 8), (v1 + 5));
        v2 += 2;
      }

      v38 = v2;
      v23 = v1[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v1[2];
          v25 = *v24 == v1;
          v1 = v24;
        }

        while (!v25);
      }

      v1 = v24;
    }

    while (v24 != v36);
  }

  v26 = sub_1D9DC7CD8(&__p);
  v27 = __p;
  if (__p)
  {
    v28 = v38;
    v29 = __p;
    if (v38 != __p)
    {
      do
      {
        v30 = *(v28 - 1);
        if (v30)
        {
          CFRelease(v30);
        }

        v32 = *(v28 - 2);
        v28 -= 2;
        v31 = v32;
        if (v32)
        {
          CFRelease(v31);
        }
      }

      while (v28 != v27);
      v29 = __p;
    }

    v38 = v27;
    operator delete(v29);
  }

  Copy = CFDictionaryCreateCopy(0, v26);
  CFRelease(v26);
  sub_1D9D9ABD4(&v35, v36[0]);
  return Copy;
}

void sub_1D9DC2BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, char a10, char *a11)
{
  sub_1D9DB074C(&a9);
  sub_1D9D9ABD4(&a10, a11);
  _Unwind_Resume(a1);
}

void sub_1D9DC2BE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, char *);
  v6 = va_arg(va1, void);
  sub_1D9DC8088(va1);
  sub_1D9D9ABD4(va, v5);
  _Unwind_Resume(a1);
}

void CVNLPLanguageModelConditionalProbabilityForTokenString_0(uint64_t a1, const __CFString *a2, const void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (qword_1ECB71C28 != -1)
    {
      dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
    }

    v3 = qword_1ECB71C30;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v17[23] = 20;
      strcpy(v17, "Received null token.");
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v17;
      _os_log_error_impl(&dword_1D9D0A000, v3, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
      if ((v17[23] & 0x80000000) != 0)
      {
        operator delete(*v17);
      }
    }

    goto LABEL_6;
  }

  sub_1D9DC50E0(&buf, a2);
  v7 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v7 = *(&buf + 1);
  }

  if (v7)
  {
    sub_1D9D896B0(a3, &v11);
    memset(v13, 0, sizeof(v13));
    v14 = 0;
    if (v11)
    {
      v12 = &v11;
      sub_1D9D89274(&v12, v17);
      v14 = *&v17[16];
      *v13 = *v17;
    }

    sub_1D9D89320(&v11);
    if ((v16 & 0x80u) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf;
    }

    if ((v16 & 0x80u) == 0)
    {
      v10 = v16;
    }

    else
    {
      v10 = *(&buf + 1);
    }

    sub_1D9DBF694(a1 + 16, p_buf, v10);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(*v13);
    }

    if (v16 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1ECB71C28 != -1)
    {
      dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
    }

    v8 = qword_1ECB71C30;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v17[23] = 21;
      strcpy(v17, "Received empty token.");
      *v13 = 136315138;
      *&v13[4] = v17;
      _os_log_error_impl(&dword_1D9D0A000, v8, OS_LOG_TYPE_ERROR, "%s", v13, 0xCu);
      if ((v17[23] & 0x80000000) != 0)
      {
        operator delete(*v17);
      }
    }

    if (v16 < 0)
    {
LABEL_16:
      operator delete(buf);
    }
  }

LABEL_6:
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1D9DC2F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, const void *a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_1D9D89320(&a12);
  if (a26 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

CFArrayRef CVNLPLanguageModelCopyConditionalProbabilities(uint64_t a1, const void *a2, const void *a3)
{
  sub_1D9D896B0(a3, &cf);
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  if (cf)
  {
    v30[0] = &cf;
    sub_1D9D89274(v30, __p);
    *v32 = *__p;
    v33 = v35;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (!a2 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not convert");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(a2);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (Count << 32)
  {
    if (Count <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v7 = 0;
  if (Count >= 1)
  {
    v26 = a1;
    v8 = 0;
    v9 = Count & 0x7FFFFFFF;
    v10 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
      if (!ValueAtIndex || (v12 = CFStringGetTypeID(), v12 != CFGetTypeID(ValueAtIndex)))
      {
        v28 = v7;
        v29 = 0;
        v27 = v10;
        v24 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v24, "Could not convert");
        __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      sub_1D9D89464(ValueAtIndex, __p);
      v13 = v7 - v10;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
      v15 = v14 + 1;
      if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        v28 = v7;
        v29 = 0;
        v27 = v10;
        sub_1D9D84AB0();
      }

      if (0x5555555555555556 * (-v10 >> 3) > v15)
      {
        v15 = 0x5555555555555556 * (-v10 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v10 >> 3) >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        v28 = v7;
        v29 = 0;
        v27 = v10;
        sub_1D9D10E9C();
      }

      v17 = 8 * ((v7 - v10) >> 3);
      *v17 = *__p;
      *(v17 + 16) = v35;
      __p[1] = 0;
      v35 = 0;
      __p[0] = 0;
      memcpy((24 * v14 - v13), v10, v13);
      if (v10)
      {
        operator delete(v10);
        if (SHIBYTE(v35) < 0)
        {
          operator delete(__p[0]);
        }

        v10 = v17 - v13;
      }

      else
      {
        v10 = v17 - v13;
      }

      v7 = (v17 + 24);
      ++v8;
    }

    while (v9 != v8);
    v28 = v7;
    v29 = 0;
    v27 = v10;
    a1 = v26;
  }

  sub_1D9DBF804(a1 + 16, &v27, v30);
  v18 = v27;
  if (v27)
  {
    v19 = v28;
    v20 = v27;
    if (v28 != v27)
    {
      do
      {
        v21 = *(v19 - 1);
        v19 -= 3;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = v27;
    }

    v28 = v18;
    operator delete(v20);
  }

  v22 = sub_1D9DC85D0(v30);
  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  return v22;
}

void sub_1D9DC3460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1D9D89320(va);
  _Unwind_Resume(a1);
}

void sub_1D9DC3474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

CFArrayRef CVNLPLanguageModelCopyNextTokenConditionalProbabilitiesOverVocabulary(uint64_t a1, const void *a2)
{
  sub_1D9D896B0(a2, &cf);
  __p[0] = 0;
  __p[1] = 0;
  v40 = 0;
  if (cf)
  {
    v32[0] = &cf;
    sub_1D9D89274(v32, &v35);
    *__p = v35;
    v40 = v36;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  LOBYTE(v33) = 0;
  v34 = 0;
  sub_1D9DBF9B0(a1 + 16, &v33, 1, &v35);
  if (v34 == 1 && v33)
  {
    CFRelease(v33);
  }

  v3 = v36;
  v4 = (*(**(a1 + 120) + 88))(*(a1 + 120));
  memset(v32, 0, sizeof(v32));
  if (v4)
  {
    if (!(v4 >> 62))
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v5 = (*(**(a1 + 120) + 88))(*(a1 + 120));
  if (v5)
  {
    v7 = v36;
    v6 = v37;
    v8 = *(&v35 + 1);
    if (!v35)
    {
      v16 = v5 >= 0xC && v36 == 1;
      if (v16 && (-v37 - 4 * v3 + 4) >= 0x20)
      {
        v17 = v5 & 0xFFFFFFFFFFFFFFF8;
        v28 = (4 * v3 + v37 + 12);
        v29 = 16;
        v30 = v5 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v31 = *v28;
          *(v29 - 16) = *(v28 - 1);
          *v29 = v31;
          v28 += 2;
          v29 += 32;
          v30 -= 8;
        }

        while (v30);
        if (v5 == v17)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = v5 - v17;
      v19 = (4 * v17);
      v20 = (4 * v7 * v17 + 4 * v3 + v6 - 4);
      v21 = 4 * v7;
      do
      {
        *v19++ = *v20;
        v20 = (v20 + v21);
        --v18;
      }

      while (v18);
      goto LABEL_27;
    }

    v9 = v3 - 1;
    if (v5 <= 0xB || (v10 = 4 * *(&v35 + 1) * v9, (-v37 - v10) < 0x20))
    {
      v11 = 0;
LABEL_15:
      v12 = v5 - v11;
      v13 = (4 * v11);
      v14 = (&v13[v8 * v9] + v6);
      do
      {
        v15 = *v14++;
        *v13++ = v15;
        --v12;
      }

      while (v12);
      goto LABEL_27;
    }

    v11 = v5 & 0xFFFFFFFFFFFFFFF8;
    v24 = (v10 + v37 + 16);
    v25 = 16;
    v26 = v5 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v27 = *v24;
      *(v25 - 16) = *(v24 - 1);
      *v25 = v27;
      v24 += 2;
      v25 += 32;
      v26 -= 8;
    }

    while (v26);
    if (v5 != v11)
    {
      goto LABEL_15;
    }
  }

LABEL_27:
  v22 = sub_1D9DC85D0(v32);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  return v22;
}

void sub_1D9DC3844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1D9D89320(va);
  _Unwind_Resume(a1);
}

void sub_1D9DC3858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    operator delete(v24);
    if (a24 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a24 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef CVNLPLanguageModelCopyConditionalProbabilitiesForTokenIDs(uint64_t a1, const void *a2, const void *a3)
{
  if (!a2 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D89454(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1D9DB1384(a2, &v15);
  if (!a3 || (v7 = CFArrayGetTypeID(), v7 != CFGetTypeID(a3)))
  {
    v12 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v12, "Could not convert");
    __cxa_throw(v12, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1D9DB1384(a3, &__p);
  if (v16 != v15)
  {
    if (((v16 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v18 = 0;
  v19 = 0;
  LOBYTE(v20) = 0;
  v21 = 0;
  sub_1D9D8FAE4(a1 + 16, __p, (v14 - __p) >> 2, &v20);
  if (v21 == 1 && v20)
  {
    CFRelease(v20);
  }

  v8 = *(a1 + 16);
  MRLNeuralNetworkGetOutputDimension();
  v9 = *(a1 + 16);
  MRLNeuralNetworkGetOutput();
  memset(v17, 0, sizeof(v17));
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  return sub_1D9DC85D0(v17);
}

void sub_1D9DC3B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (v20)
  {
    *v19 = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef CVNLPLanguageModelCopyNextTokenIDConditionalProbabilitiesOverVocabulary(uint64_t a1, const void *a2)
{
  if (!a2 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D89454(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1D9DB1384(a2, &__p);
  v5 = (v27 - __p) >> 2;
  v29 = 0;
  v30 = 0;
  LOBYTE(cf) = 0;
  v32 = 0;
  sub_1D9D8FAE4(a1 + 16, __p, v5, &cf);
  if (v32 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(a1 + 16);
  OutputDimension = MRLNeuralNetworkGetOutputDimension();
  v9 = *(a1 + 16);
  Output = MRLNeuralNetworkGetOutput();
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  v11 = (*(**(a1 + 120) + 88))(*(a1 + 120));
  v27 = 0;
  v28 = 0;
  __p = 0;
  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v12 = (*(**(a1 + 120) + 88))(*(a1 + 120));
  if (v12)
  {
    v13 = v6 - 1;
    if (v12 <= 0xB || (v14 = 4 * OutputDimension * v13, (-Output - v14) < 0x20))
    {
      v15 = 0;
LABEL_18:
      v16 = v12 - v15;
      v17 = (4 * v15);
      v18 = (&v17[OutputDimension * v13] + Output);
      do
      {
        v19 = *v18++;
        *v17++ = v19;
        --v16;
      }

      while (v16);
      return sub_1D9DC85D0(&__p);
    }

    v15 = v12 & 0xFFFFFFFFFFFFFFF8;
    v21 = (v14 + Output + 16);
    v22 = 16;
    v23 = v12 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v24 = *v21;
      *(v22 - 16) = *(v21 - 1);
      *v22 = v24;
      v21 += 2;
      v22 += 32;
      v23 -= 8;
    }

    while (v23);
    if (v12 != v15)
    {
      goto LABEL_18;
    }
  }

  return sub_1D9DC85D0(&__p);
}

void sub_1D9DC3ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

float CVNLPLanguageModelConditionalProbabilityForTokenID(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  LOBYTE(cf) = 0;
  v12 = 0;
  sub_1D9D8FAE4(a1 + 16, a3, a4, &cf);
  if (v12 == 1 && cf)
  {
    CFRelease(cf);
  }

  v7 = *(a1 + 16);
  OutputDimension = MRLNeuralNetworkGetOutputDimension();
  v9 = *(a1 + 16);
  return *(MRLNeuralNetworkGetOutput() + 4 * a2 + 4 * OutputDimension * (a4 - 1));
}

void sub_1D9DC3FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1D9D8BA40(&a11);
  sub_1D9D8BA40(&a9);
  _Unwind_Resume(a1);
}

float CVNLPLanguageModelLogJointProbability(uint64_t a1, const void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 120);
  sub_1D9D896B0(a2, &cf);
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  if (cf)
  {
    p_cf = &cf;
    sub_1D9D89274(&p_cf, buf);
    *v41 = *buf;
    v42 = *&buf[16];
    if (cf)
    {
      CFRelease(cf);
    }
  }

  LOBYTE(v34) = 0;
  v35 = 0;
  sub_1D9DBF9B0(a1 + 16, &v34, 1, &p_cf);
  if (v35 == 1 && v34)
  {
    CFRelease(v34);
  }

  sub_1D9DA87D0(v41, &__p);
  v5 = v37;
  v4 = v38;
  if (v38 == 0xAAAAAAAAAAAAAAABLL * ((v33 - __p) >> 3) + 1 && v5 == (*(*v3 + 88))(v3))
  {
    v6 = v4 - 1;
    if (v4 == 1)
    {
      v9 = 0.0;
      v17 = *(v3 + 55);
      if ((v17 & 0x8000000000000000) == 0)
      {
LABEL_23:
        v18 = v3 + 32;
        goto LABEL_39;
      }
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0.0;
      do
      {
        v10 = (__p + v7);
        v11 = *(__p + v7 + 23);
        if ((v11 & 0x8000000000000000) != 0)
        {
          v12 = *v10;
          v11 = v10[1];
        }

        else
        {
          v12 = __p + v7;
        }

        v13 = (*(*v3 + 40))(v3, v12, v11);
        v14 = v13;
        if (p_cf)
        {
          v15 = v8;
        }

        else
        {
          v15 = v13;
        }

        if (!p_cf)
        {
          v14 = v8;
        }

        v16 = &v38;
        if (p_cf)
        {
          v16 = &v37;
        }

        v9 = logf(*(v39 + 4 * v14 + 4 * *v16 * v15)) + v9;
        ++v8;
        v7 += 24;
      }

      while (v6 != v8);
      v17 = *(v3 + 55);
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }
    }

    v18 = *(v3 + 32);
    v17 = *(v3 + 40);
LABEL_39:
    v25 = (*(*v3 + 40))(v3, v18, v17);
    v26 = v25;
    if (p_cf)
    {
      v27 = v6;
    }

    else
    {
      v27 = v25;
    }

    if (!p_cf)
    {
      v26 = v6;
    }

    v28 = &v37;
    if (!p_cf)
    {
      v28 = &v38;
    }

    v20 = logf(*(v39 + 4 * v26 + 4 * *v28 * v27)) + v9;
    v21 = __p;
    if (!__p)
    {
      goto LABEL_47;
    }

    goto LABEL_29;
  }

  if (qword_1ECB71C28 != -1)
  {
    dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
  }

  v19 = qword_1ECB71C30;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v31 = (*(*v3 + 88))(v3);
    *buf = 134218752;
    *&buf[4] = v31;
    *&buf[12] = 2048;
    *&buf[14] = 1 - 0x5555555555555555 * ((v33 - __p) >> 3);
    *&buf[22] = 2048;
    v44 = v5;
    v45 = 2048;
    v46 = v4;
    _os_log_error_impl(&dword_1D9D0A000, v19, OS_LOG_TYPE_ERROR, "Expected output sequence to have dimensions (vocab=%ld, time=%ld), but got (vocab=%ld, time=%ld)", buf, 0x2Au);
  }

  v20 = -INFINITY;
  v21 = __p;
  if (!__p)
  {
LABEL_47:
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_31;
  }

LABEL_29:
  v22 = v33;
  if (v33 == v21)
  {
    v33 = v21;
    operator delete(v21);
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
LABEL_48:
      v29 = *MEMORY[0x1E69E9840];
      return v20;
    }
  }

  else
  {
    do
    {
      v24 = *(v22 - 1);
      v22 -= 3;
      if (v24 < 0)
      {
        operator delete(*v22);
      }
    }

    while (v22 != v21);
    v33 = v21;
    operator delete(__p);
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

LABEL_31:
  operator delete(v41[0]);
  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_1D9DC447C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_1D9D54C6C(&a9);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CVNLPLanguageModelWithStateCreate(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (qword_1EE000680 != -1)
  {
    v6 = *MEMORY[0x1E695E480];
    dispatch_once(&qword_1EE000680, &unk_1F554FB40);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0;
  *(Instance + 24) = 0;
  *(Instance + 32) = 0;
  *(Instance + 40) = 0;
  *(Instance + 48) = 0;
  v4 = CFRetain(a1);
  *(Instance + 56) = v4;
  (*(*v4[15] + 24))(__p);
  sub_1D9DC49D4((Instance + 16), __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return Instance;
}

void sub_1D9DC462C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      v20 = *v18;
      if (!*v18)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  v20 = *v18;
  if (!*v18)
  {
LABEL_4:
    sub_1D9D8BA40(v17);
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v16 + 40) = v20;
  operator delete(v20);
  sub_1D9D8BA40(v17);
  _Unwind_Resume(a1);
}

uint64_t CVNLPLanguageModelWithStateUpdateWithContext(uint64_t a1, const void *a2)
{
  sub_1D9D896B0(a2, &cf);
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  if (cf)
  {
    __p[0] = &cf;
    sub_1D9D89274(__p, &v12);
    *v10 = v12;
    v11 = v13;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if ((SHIBYTE(v11) & 0x8000000000000000) != 0)
  {
    v5 = v10[0];
    if (!v10[1])
    {
      v7 = 0;
      goto LABEL_19;
    }

    v3 = a1 + 56;
    v4 = *(*(a1 + 56) + 120);
  }

  else
  {
    if (!HIBYTE(v11))
    {
      return 0;
    }

    v3 = a1 + 56;
    v4 = *(*(a1 + 56) + 120);
  }

  (*(*v4 + 24))(__p);
  (*(**(*v3 + 120) + 24))(&v12);
  sub_1D9DC49D4((a1 + 16), &v12);
  if (v12)
  {
    *(&v12 + 1) = v12;
    operator delete(v12);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    return 1;
  }

  v7 = 1;
  v5 = v10[0];
LABEL_19:
  operator delete(v5);
  return v7;
}

void sub_1D9DC4854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 - 40);
  if (v20)
  {
    *(v18 - 32) = v20;
    operator delete(v20);
    v21 = __p;
    if (!__p)
    {
LABEL_3:
      if ((a18 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a13);
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v21 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v21);
  if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

BOOL CVNLPLanguageModelWithStateUpdateWithContextIDs(uint64_t a1, const void *a2)
{
  if (!a2 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D89454(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1D9DB1384(a2, &__p);
  v6 = __p;
  v5 = v11;
  if (v11 == __p)
  {
    v7 = __p;
    if (!__p)
    {
      return v5 != v6;
    }

    goto LABEL_5;
  }

  sub_1D9DC49D4((a1 + 16), &__p);
  v7 = __p;
  if (__p)
  {
LABEL_5:
    v11 = v7;
    operator delete(v7);
  }

  return v5 != v6;
}

void sub_1D9DC49A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D9DC49D4(void *a1, unsigned int **a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  if (a2[1] != *a2)
  {
    v4 = **a2;
    operator new();
  }

  v5 = *(v3 + 16);
  OutputDimension = MRLNeuralNetworkGetOutputDimension();
  v7 = *(v3 + 16);
  v14 = 0;
  v15 = 1;
  v16 = OutputDimension;
  Output = MRLNeuralNetworkGetOutput();
  v20 = v19;
  v21 = 0;
  cf = Output;
  v19[0] = &unk_1F554E2B8;
  v19[1] = &v14;
  v22 = OutputDimension;
  if (OutputDimension)
  {
    if (!(OutputDimension >> 62))
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  v12 = a1[2];
  if (v12)
  {
    a1[3] = v12;
    operator delete(v12);
    a1[2] = 0;
    a1[3] = 0;
    a1[4] = 0;
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  memmove(0, cf, 4 * v22);
  result = v20;
  if (v20 == v19)
  {
    result = (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    result = (*(*v20 + 40))(v20, v8, v9, v10);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D9DC4DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_1D9D3FB90(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CVNLPLanguageModelWithStateConditionalProbability(uint64_t a1, const __CFString *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (qword_1ECB71C28 != -1)
    {
      dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
    }

    v2 = qword_1ECB71C30;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = 20;
      strcpy(__p, "Received null token.");
      *buf = 136315138;
      *&buf[4] = __p;
      _os_log_error_impl(&dword_1D9D0A000, v2, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(*__p);
      }
    }

    goto LABEL_6;
  }

  sub_1D9DC50E0(__p, a2);
  if ((v9 & 0x8000000000000000) != 0)
  {
    if (*&__p[8])
    {
      v5 = *__p;
LABEL_21:
      v7 = *(*(a1 + 32) + 4 * (*(**(*(a1 + 56) + 120) + 40))(*(*(a1 + 56) + 120), v5));
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if (v9)
  {
    v5 = __p;
    goto LABEL_21;
  }

  if (qword_1ECB71C28 != -1)
  {
    dispatch_once(&qword_1ECB71C28, &unk_1F554F548);
  }

  v6 = qword_1ECB71C30;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = 21;
    strcpy(buf, "Received empty token.");
    *v12 = 136315138;
    v13 = buf;
    _os_log_error_impl(&dword_1D9D0A000, v6, OS_LOG_TYPE_ERROR, "%s", v12, 0xCu);
    if (v11 < 0)
    {
      operator delete(*buf);
    }
  }

  if (v9 < 0)
  {
LABEL_17:
    operator delete(*__p);
  }

LABEL_6:
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1D9DC50B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1D9DC50E0(_BYTE *a1, const __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1D9D89454(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return sub_1D9D89464(a2, a1);
}

CFArrayRef CVNLPLanguageModelWithStateCopyConditionalProbabilitiesOverVocabulary(uint64_t a1)
{
  memset(v4, 0, sizeof(v4));
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1 != v2)
  {
    if (((v1 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  return sub_1D9DC85D0(v4);
}

void sub_1D9DC5228(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}