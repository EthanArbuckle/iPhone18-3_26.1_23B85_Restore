void sub_1000592C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void YAML::Scanner::ScanAnchorOrAlias(YAML::Scanner *this)
{
  memset(&__str, 0, sizeof(__str));
  YAML::Scanner::InsertPotentialSimpleKey(this);
  *(this + 73) = 0;
  v2 = *(this + 1);
  v3 = *(this + 4);
  v4 = YAML::Stream::get(this);
  while (YAML::Stream::operator BOOL(this))
  {
    v5 = sub_10005962C();
    *&v16 = 0;
    *(&v16 + 1) = this;
    if (!*(this + 8) && !YAML::Stream::_ReadAheadTo(this, 0))
    {
      break;
    }

    if ((sub_1000550E8(v5, &v16) & 0x80000000) != 0)
    {
      break;
    }

    v6 = YAML::Stream::get(this);
    std::string::push_back(&__str, v6);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v11 = *(this + 4);
    v21 = *(this + 1);
    v22 = v11;
    if (v4 == 42)
    {
      v12 = "alias not found after *";
    }

    else
    {
      v12 = "anchor not found after &";
    }

    sub_10000143C(&v16, v12);
    sub_100041860(exception, &v21, &v16);
    *exception = off_100075368;
  }

  if (YAML::Stream::operator BOOL(this))
  {
    if ((v8 = sub_10005978C(), *&v16 = 0, *(&v16 + 1) = this, !*(this + 8)) && !YAML::Stream::_ReadAheadTo(this, 0) || (sub_1000550E8(v8, &v16) & 0x80000000) != 0)
    {
      v13 = __cxa_allocate_exception(0x38uLL);
      v14 = *(this + 4);
      v21 = *(this + 1);
      v22 = v14;
      if (v4 == 42)
      {
        v15 = "illegal character found while scanning alias";
      }

      else
      {
        v15 = "illegal character found while scanning anchor";
      }

      sub_10000143C(&v16, v15);
      sub_100041860(v13, &v21, &v16);
      *v13 = off_100075368;
    }
  }

  if (v4 == 42)
  {
    v9 = 17;
  }

  else
  {
    v9 = 16;
  }

  LODWORD(v16) = 0;
  DWORD1(v16) = v9;
  *(&v16 + 1) = v2;
  v17 = v3;
  *__p = 0u;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  std::string::operator=(__p, &__str);
  sub_10005B214(this + 96, &v16);
  v21 = v19 + 1;
  sub_100002260(&v21);
  if (SBYTE7(v19[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1000595BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      if (*(v17 - 49) < 0)
      {
        operator delete(*(v17 - 72));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void *sub_10005962C()
{
  if ((atomic_load_explicit(&qword_100078468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078468))
  {
    sub_10000143C(__p, "[]{},");
    YAML::RegEx::RegEx(&v4, __p, 3);
    v1 = sub_100054EE8();
    YAML::operator|(&v4, v1, &v6);
    YAML::operator!(&v6, &unk_100078448);
    v8 = &v7;
    sub_100051FAC(&v8);
    v8 = &v5;
    sub_100051FAC(&v8);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(sub_100053FE4, &unk_100078448, &_mh_execute_header);
    __cxa_guard_release(&qword_100078468);
  }

  return &unk_100078448;
}

void sub_100059728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16)
{
  *(v17 - 24) = v16 + 8;
  sub_100051FAC((v17 - 24));
  *(v17 - 24) = &a16;
  sub_100051FAC((v17 - 24));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_100078468);
  _Unwind_Resume(a1);
}

void *sub_10005978C()
{
  if ((atomic_load_explicit(&qword_100078490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078490))
  {
    YAML::RegEx::RegEx(&v4, __p, 3);
    v1 = sub_100054EE8();
    YAML::operator|(&v4, v1, &unk_100078470);
    v6 = &v5;
    sub_100051FAC(&v6);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(sub_100053FE4, &unk_100078470, &_mh_execute_header);
    __cxa_guard_release(&qword_100078490);
  }

  return &unk_100078470;
}

void sub_100059868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_100078490);
  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanTag(YAML::Scanner *this)
{
  YAML::Scanner::InsertPotentialSimpleKey(this);
  *(this + 73) = 0;
  v2 = *(this + 1);
  v3 = *(this + 4);
  *&v11 = 0x1200000000;
  *(&v11 + 1) = v2;
  v12 = v3;
  *__p = 0u;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  YAML::Stream::get(this);
  if (YAML::Stream::operator BOOL(this) && YAML::Stream::peek(this) == 60)
  {
    YAML::ScanVerbatimTag(this, &__str);
    std::string::operator=(__p, &__str);
    v15 = 0;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_25;
  }

  v9 = 0;
  YAML::ScanTagHandle(this, &v9, &__str);
  std::string::operator=(__p, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v4 = BYTE7(v14[0]);
  if (v9 == 1)
  {
    v5 = __p[1];
  }

  else
  {
    v5 = __p[1];
    if ((SBYTE7(v14[0]) & 0x80u) == 0)
    {
      v6 = BYTE7(v14[0]);
    }

    else
    {
      v6 = __p[1];
    }

    if (!v6)
    {
      v8 = 4;
LABEL_24:
      v15 = v8;
      goto LABEL_25;
    }
  }

  if (SBYTE7(v14[0]) < 0)
  {
    v4 = v5;
  }

  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v15 = v7;
  if (v9 && YAML::Stream::peek(this) == 33)
  {
    YAML::Stream::get(this);
    YAML::ScanTagSuffix(this, &__str);
    sub_1000012A8(v14 + 1, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v8 = 3;
    goto LABEL_24;
  }

LABEL_25:
  sub_10005B214(this + 96, &v11);
  __str.__r_.__value_.__r.__words[0] = v14 + 8;
  sub_100002260(&__str);
  if (SBYTE7(v14[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100059A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000546CC(&a16);
  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanPlainScalar(YAML::Scanner *this)
{
  memset(&__str, 0, sizeof(__str));
  v14 = 0;
  v13 = 0;
  v19 = 0;
  if (*(this + 39))
  {
    v2 = sub_100059C34();
  }

  else
  {
    v2 = sub_100059D6C();
  }

  v3 = 0;
  v10 = v2;
  v11 = 0;
  if (!*(this + 39))
  {
    v3 = YAML::Scanner::GetTopIndent(this) + 1;
  }

  v12 = v3;
  v15 = 2;
  HIBYTE(v13) = 1;
  v16 = 1;
  v17 = 0x1FFFFFFFFLL;
  v18 = 2;
  YAML::Scanner::InsertPotentialSimpleKey(this);
  v4 = *(this + 1);
  v5 = *(this + 4);
  YAML::ScanScalar(this, &v10, &v6);
  __str = v6;
  *(this + 146) = v19;
  *(this + 147) = 0;
  v6.__r_.__value_.__r.__words[0] = 0x1300000000;
  v6.__r_.__value_.__l.__size_ = v4;
  LODWORD(v6.__r_.__value_.__r.__words[2]) = v5;
  *__p = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  std::string::operator=(__p, &__str);
  sub_10005B214(this + 96, &v6);
  v21 = v8 + 1;
  sub_100002260(&v21);
  if (SBYTE7(v8[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void *sub_100059C34()
{
  if ((atomic_load_explicit(&qword_1000784B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000784B8))
  {
    v1 = sub_10005AAC4();
    v2 = sub_100054EE8();
    sub_1000585E0(&v3);
    YAML::operator+(v2, &v3, &v5);
    YAML::operator|(v1, &v5, &unk_100078498);
    v7 = &v6;
    sub_100051FAC(&v7);
    v7 = &v4;
    sub_100051FAC(&v7);
    __cxa_atexit(sub_100053FE4, &unk_100078498, &_mh_execute_header);
    __cxa_guard_release(&qword_1000784B8);
  }

  return &unk_100078498;
}

void sub_100059D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v12 - 24) = v11 + 8;
  sub_100051FAC((v12 - 24));
  *(v12 - 24) = &a11;
  sub_100051FAC((v12 - 24));
  __cxa_guard_abort(&qword_1000784B8);
  _Unwind_Resume(a1);
}

void *sub_100059D6C()
{
  if ((atomic_load_explicit(&qword_100078508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078508))
  {
    v1 = sub_10005ADA4();
    v2 = sub_100054EE8();
    sub_1000585E0(&v3);
    YAML::operator+(v2, &v3, &v5);
    YAML::operator|(v1, &v5, &unk_1000784E8);
    v7 = &v6;
    sub_100051FAC(&v7);
    v7 = &v4;
    sub_100051FAC(&v7);
    __cxa_atexit(sub_100053FE4, &unk_1000784E8, &_mh_execute_header);
    __cxa_guard_release(&qword_100078508);
  }

  return &unk_1000784E8;
}

void sub_100059E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v12 - 24) = v11 + 8;
  sub_100051FAC((v12 - 24));
  *(v12 - 24) = &a11;
  sub_100051FAC((v12 - 24));
  __cxa_guard_abort(&qword_100078508);
  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanQuotedScalar(std::string::size_type *this)
{
  memset(&__str, 0, sizeof(__str));
  v2 = YAML::Stream::peek(this);
  v15 = 0;
  v16 = 0;
  v19 = 0;
  v18 = 0;
  memset(v17, 0, 7);
  v20[0] = 0;
  *(v20 + 5) = 0;
  if (v2 == 39)
  {
    YAML::RegEx::RegEx(&v7, 39);
    v3 = sub_10005A100();
    YAML::operator!(v3, &p_size);
    YAML::operator&(&v7, &p_size, v13);
    v22 = &v12;
    sub_100051FAC(&v22);
    p_size = &v7.__r_.__value_.__l.__size_;
    sub_100051FAC(&p_size);
    v4 = 39;
  }

  else
  {
    YAML::RegEx::RegEx(v13, v2);
    v4 = 92;
  }

  v15 = v13;
  v16 = 1;
  BYTE2(v17[1]) = v4;
  v17[0] = 0;
  v18 = 2;
  BYTE1(v17[1]) = 1;
  v19 = 0;
  v20[0] = 0x200000000;
  YAML::Scanner::InsertPotentialSimpleKey(this);
  v5 = this[1];
  v6 = *(this + 4);
  YAML::Stream::get(this);
  YAML::ScanScalar(this, &v15, &v7);
  __str = v7;
  *(this + 73) = 256;
  v7.__r_.__value_.__r.__words[0] = 0x1400000000;
  v7.__r_.__value_.__l.__size_ = v5;
  LODWORD(v7.__r_.__value_.__r.__words[2]) = v6;
  *__p = 0u;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  std::string::operator=(__p, &__str);
  sub_10005B214((this + 12), &v7);
  p_size = v9 + 1;
  sub_100002260(&p_size);
  if (SBYTE7(v9[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v7.__r_.__value_.__r.__words[0] = &v14;
  sub_100051FAC(&v7);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_10005A078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  *(v20 - 56) = v19 + 8;
  sub_100051FAC((v20 - 56));
  a19 = &a10;
  sub_100051FAC(&a19);
  _Unwind_Resume(a1);
}

void *sub_10005A100()
{
  if ((atomic_load_explicit(&qword_100078558, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078558))
  {
    sub_10000143C(__p, "''");
    YAML::RegEx::RegEx(&unk_100078538, __p, 6);
    if (v2 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(sub_100053FE4, &unk_100078538, &_mh_execute_header);
    __cxa_guard_release(&qword_100078558);
  }

  return &unk_100078538;
}

void sub_10005A1B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_100078558);
  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanBlockScalar(YAML::Scanner *this)
{
  memset(&__p, 0, sizeof(__p));
  v26 = 0;
  v27 = 0;
  v32 = 0;
  v30 = 0;
  v34 = 0;
  v35 = 0;
  v28 = 1;
  v29 = 1;
  v21 = *(this + 1);
  v20 = *(this + 4);
  v31 = YAML::Stream::get(this) == 62;
  v33 = 0;
  v2 = sub_10005A8F8();
  v22.__r_.__value_.__r.__words[0] = 0;
  v22.__r_.__value_.__l.__size_ = this;
  if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
  {
    v3 = sub_1000550E8(v2, &v22);
    if (v3 >= 1)
    {
      while (1)
      {
        v4 = YAML::Stream::get(this);
        v5 = v4;
        if (v4 == 45)
        {
          v33 = -1;
          goto LABEL_23;
        }

        if (v4 == 43)
        {
          v33 = 1;
          goto LABEL_23;
        }

        if ((atomic_load_explicit(&qword_1000783A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000783A0))
        {
          YAML::RegEx::RegEx(&dword_100078380, 48, 57);
          __cxa_atexit(sub_100053FE4, &dword_100078380, &_mh_execute_header);
          __cxa_guard_release(&qword_1000783A0);
        }

        memset(&v37, 0, sizeof(v37));
        std::string::push_back(&v37, v5);
        size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
        v7 = v37.__r_.__value_.__r.__words[0];
        if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v37.__r_.__value_.__l.__size_;
        }

        else
        {
          v7 = &v37;
        }

        v22.__r_.__value_.__r.__words[0] = v7;
        *&v22.__r_.__value_.__r.__words[1] = size;
        if ((dword_100078380 - 3) >= 0xFFFFFFFE && size == 0)
        {
          v9 = 0;
          if ((*(&v37.__r_.__value_.__s + 23) & 0x80) != 0)
          {
LABEL_17:
            operator delete(v37.__r_.__value_.__l.__data_);
            if (v9)
            {
              goto LABEL_21;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v9 = sub_10005AFF0(&dword_100078380, &v22) >= 0;
          if ((*(&v37.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            goto LABEL_17;
          }
        }

        if (v9)
        {
LABEL_21:
          if (v5 == 48)
          {
            exception = __cxa_allocate_exception(0x38uLL);
            v17 = *(this + 4);
            v37.__r_.__value_.__r.__words[0] = *(this + 1);
            LODWORD(v37.__r_.__value_.__r.__words[1]) = v17;
            sub_10000143C(&v22, "cannot set zero indentation for a block scalar");
            sub_100041860(exception, &v37, &v22);
            *exception = off_100075368;
          }

          v28 = v5 - 48;
          LOBYTE(v29) = 0;
        }

LABEL_23:
        if (!--v3)
        {
          goto LABEL_27;
        }
      }
    }
  }

  while (1)
  {
LABEL_27:
    if ((atomic_load_explicit(&qword_1000780A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000780A8))
    {
      v10 = sub_100055048();
      v11 = sub_100053F44();
      YAML::operator|(v10, v11, &unk_100078088);
      __cxa_atexit(sub_100053FE4, &unk_100078088, &_mh_execute_header);
      __cxa_guard_release(&qword_1000780A8);
    }

    v22.__r_.__value_.__r.__words[0] = 0;
    v22.__r_.__value_.__l.__size_ = this;
    if (!*(this + 8) && !YAML::Stream::_ReadAheadTo(this, 0))
    {
      break;
    }

    if ((sub_1000550E8(&unk_100078088, &v22) & 0x80000000) != 0)
    {
      break;
    }

    YAML::Stream::eat(this, 1);
  }

  if ((atomic_load_explicit(&qword_100078210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078210))
  {
    YAML::RegEx::RegEx(&dword_1000781F0, 35);
    __cxa_atexit(sub_100053FE4, &dword_1000781F0, &_mh_execute_header);
    __cxa_guard_release(&qword_100078210);
  }

  LODWORD(v22.__r_.__value_.__l.__data_) = dword_1000781F0;
  WORD2(v22.__r_.__value_.__r.__words[0]) = word_1000781F4;
  v23[0] = 0;
  *&v22.__r_.__value_.__r.__words[1] = 0uLL;
  sub_100052400(&v22.__r_.__value_.__l.__size_, qword_1000781F8, unk_100078200, (unk_100078200 - qword_1000781F8) >> 5);
  v37.__r_.__value_.__r.__words[0] = 0;
  v37.__r_.__value_.__l.__size_ = this;
  if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
  {
    v12 = sub_1000550E8(&v22, &v37);
    v37.__r_.__value_.__r.__words[0] = &v22.__r_.__value_.__l.__size_;
    sub_100051FAC(&v37);
    if ((v12 & 0x80000000) == 0)
    {
      while (YAML::Stream::operator BOOL(this))
      {
        v13 = sub_100054020();
        v22.__r_.__value_.__r.__words[0] = 0;
        v22.__r_.__value_.__l.__size_ = this;
        if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (sub_1000550E8(v13, &v22) & 0x80000000) == 0)
        {
          break;
        }

        YAML::Stream::eat(this, 1);
      }
    }
  }

  else
  {
    v37.__r_.__value_.__r.__words[0] = &v22.__r_.__value_.__l.__size_;
    sub_100051FAC(&v37);
  }

  if (YAML::Stream::operator BOOL(this))
  {
    if ((v14 = sub_100054020(), v22.__r_.__value_.__r.__words[0] = 0, v22.__r_.__value_.__l.__size_ = this, !*(this + 8)) && !YAML::Stream::_ReadAheadTo(this, 0) || (sub_1000550E8(v14, &v22) & 0x80000000) != 0)
    {
      v18 = __cxa_allocate_exception(0x38uLL);
      v19 = *(this + 4);
      v37.__r_.__value_.__r.__words[0] = *(this + 1);
      LODWORD(v37.__r_.__value_.__r.__words[1]) = v19;
      sub_10000143C(&v22, "unexpected character in block scalar");
      sub_100041860(v18, &v37, &v22);
      *v18 = off_100075368;
    }
  }

  if ((YAML::Scanner::GetTopIndent(this) & 0x80000000) == 0)
  {
    TopIndent = YAML::Scanner::GetTopIndent(this);
    v28 += TopIndent;
  }

  HIBYTE(v29) = 0;
  v32 = 0;
  HIDWORD(v34) = 2;
  YAML::ScanScalar(this, &v26, &v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v22;
  *(this + 73) = 1;
  v22.__r_.__value_.__r.__words[0] = 0x1400000000;
  v22.__r_.__value_.__l.__size_ = v21;
  LODWORD(v22.__r_.__value_.__r.__words[2]) = v20;
  *v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  std::string::operator=(v23, &__p);
  sub_10005B214(this + 96, &v22);
  v37.__r_.__value_.__r.__words[0] = v24 + 8;
  sub_100002260(&v37);
  if (SBYTE7(v24[0]) < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10005A818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  __cxa_guard_abort(&qword_100078210);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10005A8F8()
{
  if ((atomic_load_explicit(&qword_100078580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078580))
  {
    v1 = sub_10005AF0C();
    v2 = sub_100057E80();
    YAML::operator+(v1, v2, &v9);
    v3 = sub_100057E80();
    v4 = sub_10005AF0C();
    YAML::operator+(v3, v4, &v7);
    YAML::operator|(&v9, &v7, &v11);
    v5 = sub_10005AF0C();
    YAML::operator|(&v11, v5, &v13);
    v6 = sub_100057E80();
    YAML::operator|(&v13, v6, &unk_100078560);
    v15 = &v14;
    sub_100051FAC(&v15);
    v15 = &v12;
    sub_100051FAC(&v15);
    v15 = &v8;
    sub_100051FAC(&v15);
    v7 = &v10;
    sub_100051FAC(&v7);
    __cxa_atexit(sub_100053FE4, &unk_100078560, &_mh_execute_header);
    __cxa_guard_release(&qword_100078580);
  }

  return &unk_100078560;
}

void sub_10005AA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v15 - 24) = &a11;
  sub_100051FAC((v15 - 24));
  a10 = &a15;
  sub_100051FAC(&a10);
  __cxa_guard_abort(&qword_100078580);
  _Unwind_Resume(a1);
}

void *sub_10005AAC4()
{
  if ((atomic_load_explicit(&qword_1000784E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000784E0))
  {
    YAML::RegEx::RegEx(&v16, 58);
    v1 = sub_100054EE8();
    YAML::RegEx::RegEx(&v10);
    YAML::operator|(v1, &v10, &v12);
    sub_10000143C(v6, ",]}");
    YAML::RegEx::RegEx(&v8, v6, 3);
    YAML::operator|(&v12, &v8, &v14);
    YAML::operator+(&v16, &v14, &v18);
    sub_10000143C(__p, ",?[]{}");
    YAML::RegEx::RegEx(&v4, __p, 3);
    YAML::operator|(&v18, &v4, &unk_1000784C0);
    v20 = &v5;
    sub_100051FAC(&v20);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = &v19;
    sub_100051FAC(&v4);
    v4 = &v15;
    sub_100051FAC(&v4);
    v4 = &v9;
    sub_100051FAC(&v4);
    if (v7 < 0)
    {
      operator delete(v6[0]);
    }

    v8 = &v13;
    sub_100051FAC(&v8);
    v8 = &v11;
    sub_100051FAC(&v8);
    v14 = &v17;
    sub_100051FAC(&v14);
    __cxa_atexit(sub_100053FE4, &unk_1000784C0, &_mh_execute_header);
    __cxa_guard_release(&qword_1000784E0);
  }

  return &unk_1000784C0;
}

void sub_10005AC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35)
{
  *(v36 - 40) = v35 + 8;
  sub_100051FAC((v36 - 40));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a16 = (v36 - 64);
  sub_100051FAC(&a16);
  a16 = (v36 - 128);
  sub_100051FAC(&a16);
  a16 = &a27;
  sub_100051FAC(&a16);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  a26 = &a35;
  sub_100051FAC(&a26);
  a26 = &a31;
  sub_100051FAC(&a26);
  *(v36 - 136) = v36 - 96;
  sub_100051FAC((v36 - 136));
  __cxa_guard_abort(&qword_1000784E0);
  _Unwind_Resume(a1);
}

void *sub_10005ADA4()
{
  if ((atomic_load_explicit(&qword_100078530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100078530))
  {
    YAML::RegEx::RegEx(&v6, 58);
    v1 = sub_100054EE8();
    YAML::RegEx::RegEx(&v2);
    YAML::operator|(v1, &v2, &v4);
    YAML::operator+(&v6, &v4, &unk_100078510);
    v8 = &v5;
    sub_100051FAC(&v8);
    v8 = &v3;
    sub_100051FAC(&v8);
    v4 = &v7;
    sub_100051FAC(&v4);
    __cxa_atexit(sub_100053FE4, &unk_100078510, &_mh_execute_header);
    __cxa_guard_release(&qword_100078530);
  }

  return &unk_100078510;
}

void sub_10005AEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  *(v15 - 24) = v14 + 8;
  sub_100051FAC((v15 - 24));
  *(v15 - 24) = &a11;
  sub_100051FAC((v15 - 24));
  a14 = (v15 - 48);
  sub_100051FAC(&a14);
  __cxa_guard_abort(&qword_100078530);
  _Unwind_Resume(a1);
}

void *sub_10005AF0C()
{
  if ((atomic_load_explicit(&qword_1000785A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000785A8))
  {
    sub_10000143C(__p, "+-");
    YAML::RegEx::RegEx(&unk_100078588, __p, 3);
    if (v2 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(sub_100053FE4, &unk_100078588, &_mh_execute_header);
    __cxa_guard_release(&qword_1000785A8);
  }

  return &unk_100078588;
}

void sub_10005AFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_1000785A8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005AFF0(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = 0xFFFFFFFFLL;
  if (*a1 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        if (*(*a2 + a2[2]) == *(a1 + 4))
        {
          return 1;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (v4 == 2)
      {
        v10 = *(*a2 + a2[2]);
        if (*(a1 + 4) <= v10)
        {
          if (*(a1 + 5) < v10)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return 1;
          }
        }
      }
    }

    else if (a2[2] >= a2[1])
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (v4 > 4)
  {
    if (v4 == 5)
    {
      v21 = *(a1 + 8);
      if (v21 != *(a1 + 16))
      {
        if (sub_10005AFF0(v21, a2) >= 0)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return 1;
        }
      }
    }

    else if (v4 == 6)
    {
      v11 = *(a1 + 8);
      if (*(a1 + 16) == v11)
      {
        return 0;
      }

      v12 = 0;
      v13 = 0;
      LODWORD(v5) = 0;
      while (1)
      {
        v24 = a2[2];
        v23 = *a2;
        v14 = v24 + v5;
        if (v5 + v24 < 0 != __OFADD__(v5, v24))
        {
          v14 = 0;
        }

        v24 = v14;
        if ((*(v11 + v12) - 3) >= 0xFFFFFFFE && v14 >= *(&v23 + 1))
        {
          break;
        }

        v16 = sub_10005AFF0(v11 + v12, &v23);
        if (v16 == -1)
        {
          break;
        }

        v5 = (v16 + v5);
        ++v13;
        v11 = *(a1 + 8);
        v12 += 32;
        if (v13 >= (*(a1 + 16) - v11) >> 5)
        {
          return v5;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  else if (v4 == 3)
  {
    v17 = *(a1 + 8);
    if (*(a1 + 16) != v17)
    {
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v20 = sub_10005AFF0(v17 + v18, a2);
        if ((v20 & 0x80000000) == 0)
        {
          break;
        }

        ++v19;
        v17 = *(a1 + 8);
        v18 += 32;
        if (v19 >= (*(a1 + 16) - v17) >> 5)
        {
          return 0xFFFFFFFFLL;
        }
      }

      return v20;
    }
  }

  else if (v4 == 4)
  {
    v6 = *(a1 + 8);
    if (*(a1 + 16) != v6)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = sub_10005AFF0(v6 + v7, a2);
        if (v9 == -1)
        {
          break;
        }

        if (v8)
        {
          v5 = v5;
        }

        else
        {
          v5 = v9;
        }

        ++v8;
        v6 = *(a1 + 8);
        v7 += 32;
        if (v8 >= (*(a1 + 16) - v6) >> 5)
        {
          return v5;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t sub_10005B214(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 51 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_100055C9C(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x33)) + 80 * (v8 % 0x33);
  v10 = *a2;
  *(v9 + 16) = *(a2 + 4);
  *v9 = v10;
  if (*(a2 + 47) < 0)
  {
    sub_100001C60((v9 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v11 = *(a2 + 24);
    *(v9 + 40) = *(a2 + 5);
    *(v9 + 24) = v11;
  }

  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  result = sub_100001FDC(v9 + 48, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  *(v9 + 72) = *(a2 + 18);
  ++*(a1 + 40);
  return result;
}

void sub_10005B32C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void *sub_10005B348(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_10005B3D0(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_10005B3D0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10005B9CC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10005B5A4(a1, &v10);
}

void sub_10005B558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10005B5A4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_10005B9CC(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_10005B6AC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10005B9CC(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_10005B7B8(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_10005B9CC(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_10005B8C0(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10005B9CC(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_10005B9CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100001B50();
}

uint64_t sub_10005BA14(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

double YAML::Scanner::InsertPotentialSimpleKey(YAML::Scanner *this)
{
  if (*(this + 146) == 1)
  {
    v2 = *(this + 24);
    if (v2)
    {
      v3 = *(*(*(this + 20) + 8 * ((v2 + *(this + 23) - 1) / 0x55uLL)) + 48 * ((v2 + *(this + 23) - 1) % 0x55uLL) + 16);
      v4 = *(this + 39);
      if (v3 == v4)
      {
        return result;
      }
    }

    else
    {
      v4 = *(this + 39);
    }

    v5 = *(this + 4);
    v16 = *(this + 1);
    v17 = v5;
    v18 = v4;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    if (!v4)
    {
      v6 = YAML::Scanner::PushIndentTo(this);
      v19 = v6;
      if (v6)
      {
        *(v6 + 8) = 2;
        v20 = *(v6 + 16);
        *v20 = 2;
      }
    }

    v7 = *(this + 1);
    v8 = *(this + 4);
    *&v11 = 0xE00000000;
    *(&v11 + 1) = v7;
    v12 = v8;
    *__p = 0u;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    sub_100055BA4(this + 96, &v11);
    v22 = v14 + 1;
    sub_100002260(&v22);
    if (SBYTE7(v14[0]) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = *(this + 17) + *(this + 16) - 1;
    v21 = (*(*(this + 13) + 8 * (v9 / 0x33)) + 80 * (v9 % 0x33));
    *v21 = 2;
    *&result = sub_10005BE00(this + 152, &v16).n128_u64[0];
  }

  return result;
}

void sub_10005BC04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000546CC(va);
  _Unwind_Resume(a1);
}

void *YAML::Scanner::InvalidateSimpleKey(void *this)
{
  v1 = this[24];
  if (v1)
  {
    v2 = v1 - 1;
    v3 = (*(this[20] + 8 * ((this[23] + v2) / 0x55uLL)) + 48 * ((this[23] + v2) % 0x55uLL));
    if (v3[2] == this[39])
    {
      v4 = v3[3];
      if (v4)
      {
        *(v4 + 8) = 1;
      }

      v5 = v3[4];
      if (v5)
      {
        *v5 = 1;
      }

      v6 = v3[5];
      if (v6)
      {
        *v6 = 1;
      }

      this[24] = v2;
      return sub_10005C084(this + 19, 1);
    }
  }

  return this;
}

uint64_t YAML::Scanner::VerifySimpleKey(YAML::Scanner *this)
{
  v1 = *(this + 24);
  if (!v1)
  {
    return 0;
  }

  v3 = v1 - 1;
  v4 = *(*(this + 20) + 8 * ((*(this + 23) + v3) / 0x55uLL)) + 48 * ((*(this + 23) + v3) % 0x55uLL);
  if (*(v4 + 16) != *(this + 39))
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v5 = *(v4 + 32);
  v7 = *(v4 + 40);
  v8 = *v4;
  v9 = *(v4 + 4);
  *(this + 24) = v3;
  sub_10005C084(this + 19, 1);
  if (*(this + 3) == v9 && *(this + 2) - v8 <= 1024)
  {
    if (v6)
    {
      *(v6 + 8) = 0;
    }

    if (v5)
    {
      *v5 = 0;
    }

    result = 1;
    if (v7)
    {
      v11 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if (v6)
    {
      *(v6 + 8) = 1;
    }

    if (v5)
    {
      *v5 = 1;
    }

    result = 0;
    if (v7)
    {
      v11 = 1;
LABEL_19:
      *v7 = v11;
    }
  }

  return result;
}

uint64_t YAML::Scanner::PopAllSimpleKeys(uint64_t this)
{
  v1 = *(this + 192);
  if (v1)
  {
    v2 = this;
    do
    {
      *(v2 + 192) = v1 - 1;
      this = sub_10005C084((v2 + 152), 1);
      v1 = *(v2 + 192);
    }

    while (v1);
  }

  return this;
}

__n128 sub_10005BE00(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 85 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_10005BEB0(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x55)) + 48 * (v8 % 0x55);
  result = *a2;
  v11 = *(a2 + 32);
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 32) = v11;
  *v9 = result;
  ++*(a1 + 40);
  return result;
}

void *sub_10005BEB0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10004FE34(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100055E70(a1, &v10);
}

void sub_10005C038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005C084(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 85 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x55)
  {
    a2 = 1;
  }

  if (v5 < 0xAA)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void YAML::SingleDocParser::SingleDocParser(YAML::SingleDocParser *this, YAML::Scanner *a2, const YAML::Directives *a3)
{
  *this = a2;
  *(this + 1) = a3;
  operator new();
}

void YAML::SingleDocParser::~SingleDocParser(char **this)
{
  sub_10000623C((this + 3), this[4]);
  v2 = this[2];
  this[2] = 0;
  if (v2)
  {
    sub_100054D80(v2);
    operator delete();
  }
}

unint64_t YAML::SingleDocParser::HandleDocument(uint64_t a1, uint64_t a2)
{
  if (YAML::Scanner::empty(*a1))
  {
    sub_10005E230();
  }

  if (*(a1 + 48))
  {
    sub_10005E204();
  }

  v4 = YAML::Scanner::peek(*a1);
  (*(*a2 + 16))(a2, v4 + 8);
  if (*(YAML::Scanner::peek(*a1) + 4) == 1)
  {
    YAML::Scanner::pop(*a1);
  }

  YAML::SingleDocParser::HandleNode(a1, a2);
  (*(*a2 + 24))(a2);
  result = YAML::Scanner::empty(*a1);
  if ((result & 1) == 0)
  {
    do
    {
      result = YAML::Scanner::peek(*a1);
      if (*(result + 4) != 2)
      {
        break;
      }

      YAML::Scanner::pop(*a1);
      result = YAML::Scanner::empty(*a1);
    }

    while (!result);
  }

  return result;
}

void YAML::SingleDocParser::HandleNode(uint64_t a1, uint64_t a2)
{
  if (YAML::Scanner::empty(*a1))
  {
    __p.__r_.__value_.__r.__words[0] = YAML::Scanner::mark(*a1);
    LODWORD(__p.__r_.__value_.__r.__words[1]) = v4;
    (*(*a2 + 32))(a2, &__p, 0);
    return;
  }

  v5 = YAML::Scanner::peek(*a1);
  v26 = *(v5 + 8);
  v27 = *(v5 + 16);
  if (*(YAML::Scanner::peek(*a1) + 4) == 15)
  {
    sub_10000143C(&__p, "?");
    (*(*a2 + 72))(a2, &v26, &__p, 0, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    YAML::SingleDocParser::HandleMap(a1, a2);
    (*(*a2 + 80))(a2);
    return;
  }

  if (*(YAML::Scanner::peek(*a1) + 4) == 17)
  {
    v6 = YAML::Scanner::peek(*a1);
    v7 = YAML::SingleDocParser::LookupAnchor(a1, &v26, v6 + 24);
    (*(*a2 + 40))(a2, &v26, v7);
    YAML::Scanner::pop(*a1);
    return;
  }

  memset(&__p, 0, sizeof(__p));
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  YAML::SingleDocParser::ParseProperties(a1, &__p, &v21, &v22);
  v8 = HIBYTE(v24);
  if (v24 < 0)
  {
    v8 = v23;
  }

  if (v8)
  {
    (*(*a2 + 88))(a2, &v26, &v22);
  }

  v9 = YAML::Scanner::peek(*a1);
  v10 = v9;
  v11 = *(v9 + 4);
  if (v11 != 19)
  {
LABEL_17:
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      if (v11 == 20)
      {
        v13 = "!";
      }

      else
      {
        v13 = "?";
      }

      std::string::assign(&__p, v13);
      v11 = *(v10 + 4);
    }

    if (v11 > 8)
    {
      if ((v11 - 19) < 2)
      {
        (*(*a2 + 48))(a2, &v26, &__p, v21, v10 + 24);
        goto LABEL_37;
      }

      if (v11 != 9)
      {
        if (v11 != 14)
        {
          goto LABEL_34;
        }

        v14 = *(a1 + 16);
        v15 = v14[5];
        if (!v15 || *(*(v14[1] + (((v15 + v14[4] - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v15 + v14[4] - 1) & 0x3FF)) != 4)
        {
          goto LABEL_34;
        }
      }

      (*(*a2 + 72))(a2, &v26, &__p, v21, 2);
      YAML::SingleDocParser::HandleMap(a1, a2);
    }

    else
    {
      if (v11 == 3)
      {
        (*(*a2 + 56))(a2, &v26, &__p, v21, 1);
        YAML::SingleDocParser::HandleSequence(a1, a2);
        goto LABEL_39;
      }

      if (v11 != 4)
      {
        if (v11 == 8)
        {
          (*(*a2 + 56))(a2, &v26, &__p, v21, 2);
          YAML::SingleDocParser::HandleSequence(a1, a2);
LABEL_39:
          v18 = (*a2 + 64);
LABEL_45:
          (*v18)(a2);
          goto LABEL_46;
        }

LABEL_34:
        v16 = sub_100018F5C(&__p, "?");
        v17 = v21;
        if (v16)
        {
          (*(*a2 + 32))(a2, &v26, v21);
        }

        else
        {
          sub_10000143C(v19, &unk_10006B9FB);
          (*(*a2 + 48))(a2, &v26, &__p, v17, v19);
          if (v20 < 0)
          {
            operator delete(v19[0]);
          }
        }

        goto LABEL_46;
      }

      (*(*a2 + 72))(a2, &v26, &__p, v21, 1);
      YAML::SingleDocParser::HandleMap(a1, a2);
    }

    v18 = (*a2 + 80);
    goto LABEL_45;
  }

  if (!YAML::IsNullString((v9 + 24)))
  {
    v11 = *(v10 + 4);
    goto LABEL_17;
  }

  (*(*a2 + 32))(a2, &v26, v21);
LABEL_37:
  YAML::Scanner::pop(*a1);
LABEL_46:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10005C8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
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

  _Unwind_Resume(exception_object);
}

unint64_t YAML::SingleDocParser::HandleMap(int64x2_t **a1, uint64_t a2)
{
  result = YAML::Scanner::peek(*a1);
  v5 = *(result + 4);
  if (v5 > 13)
  {
    if (v5 == 14)
    {

      return YAML::SingleDocParser::HandleCompactMap(a1, a2);
    }

    else if (v5 == 15)
    {

      return YAML::SingleDocParser::HandleCompactMapWithNoKey(a1, a2);
    }
  }

  else if (v5 == 4)
  {

    return YAML::SingleDocParser::HandleBlockMap(a1, a2);
  }

  else if (v5 == 9)
  {

    return YAML::SingleDocParser::HandleFlowMap(a1, a2);
  }

  return result;
}

uint64_t YAML::SingleDocParser::LookupAnchor(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = sub_10000E230(a1 + 24, a3);
  if (a1 + 32 == v5)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    sub_10000143C(v8, "the referenced anchor is not defined");
    sub_100041860(exception, a2, v8);
    *exception = off_100075368;
  }

  return *(v5 + 56);
}

void sub_10005CAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

unint64_t YAML::SingleDocParser::ParseProperties(int64x2_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
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

  if (*(a4 + 23) < 0)
  {
    **a4 = 0;
    *(a4 + 8) = 0;
  }

  else
  {
    *a4 = 0;
    *(a4 + 23) = 0;
  }

  *a3 = 0;
  result = YAML::Scanner::empty(*a1);
  if ((result & 1) == 0)
  {
    do
    {
      result = YAML::Scanner::peek(*a1);
      v9 = *(result + 4);
      if (v9 == 16)
      {
        YAML::SingleDocParser::ParseAnchor(a1, a3, a4);
      }

      else
      {
        if (v9 != 18)
        {
          return result;
        }

        YAML::SingleDocParser::ParseTag(a1, a2);
      }

      result = YAML::Scanner::empty(*a1);
    }

    while (!result);
  }

  return result;
}

unint64_t YAML::SingleDocParser::HandleSequence(int64x2_t **a1, uint64_t a2)
{
  result = YAML::Scanner::peek(*a1);
  v5 = *(result + 4);
  if (v5 == 8)
  {

    return YAML::SingleDocParser::HandleFlowSequence(a1, a2);
  }

  else if (v5 == 3)
  {

    return YAML::SingleDocParser::HandleBlockSequence(a1, a2);
  }

  return result;
}

uint64_t YAML::SingleDocParser::HandleBlockSequence(uint64_t a1, uint64_t a2)
{
  YAML::Scanner::pop(*a1);
  v4 = *(a1 + 16);
  LODWORD(v17) = 2;
  sub_10005DE14(v4, &v17);
  do
  {
    if (YAML::Scanner::empty(*a1))
    {
      exception = __cxa_allocate_exception(0x38uLL);
      v15 = YAML::Scanner::mark(*a1);
      v16 = v14;
      sub_10000143C(&v17, "end of sequence not found");
      sub_100041860(exception, &v15, &v17);
      *exception = off_100075368;
    }

    v5 = YAML::Scanner::peek(*a1);
    v6 = v5;
    v7 = *(v5 + 16);
    v17 = *v5;
    v18 = v7;
    if (*(v5 + 47) < 0)
    {
      sub_100001C60(&__p, *(v5 + 24), *(v5 + 32));
    }

    else
    {
      v8 = *(v5 + 24);
      v20 = *(v5 + 40);
      __p = v8;
    }

    memset(v21, 0, sizeof(v21));
    sub_100001FDC(v21, *(v6 + 48), *(v6 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 56) - *(v6 + 48)) >> 3));
    v22 = *(v6 + 72);
    if ((DWORD1(v17) & 0xFFFFFFFD) != 5)
    {
      v12 = __cxa_allocate_exception(0x38uLL);
      sub_10000143C(&v15, "end of sequence not found");
      sub_100041860(v12, &v17 + 2, &v15);
      *v12 = off_100075368;
    }

    YAML::Scanner::pop(*a1);
    v9 = DWORD1(v17);
    if (DWORD1(v17) != 5)
    {
      if (YAML::Scanner::empty(*a1) || (v10 = YAML::Scanner::peek(*a1), (*(v10 + 4) | 2) != 7))
      {
        YAML::SingleDocParser::HandleNode(a1, a2);
      }

      else
      {
        (*(*a2 + 32))(a2, v10 + 8, 0);
      }
    }

    v15 = v21;
    sub_100002260(&v15);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }
  }

  while (v9 != 5);
  return sub_10005D1F8(*(a1 + 16), 2);
}

void sub_10005CEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

uint64_t YAML::SingleDocParser::HandleFlowSequence(uint64_t a1, uint64_t a2)
{
  YAML::Scanner::pop(*a1);
  v4 = *(a1 + 16);
  v18[0] = 4;
  sub_10005DE14(v4, v18);
  while (1)
  {
    if (YAML::Scanner::empty(*a1))
    {
      exception = __cxa_allocate_exception(0x38uLL);
      v9 = a1;
      v10 = exception;
      v19 = YAML::Scanner::mark(*v9);
      v20 = v11;
      sub_10000143C(v18, "end of sequence flow not found");
      sub_100041860(v10, &v19, v18);
      *v10 = off_100075368;
    }

    if (*(YAML::Scanner::peek(*a1) + 4) == 10)
    {
      break;
    }

    YAML::SingleDocParser::HandleNode(a1, a2);
    if (YAML::Scanner::empty(*a1))
    {
      v12 = __cxa_allocate_exception(0x38uLL);
      v13 = a1;
      v14 = v12;
      v19 = YAML::Scanner::mark(*v13);
      v20 = v15;
      sub_10000143C(v18, "end of sequence flow not found");
      sub_100041860(v14, &v19, v18);
      *v14 = off_100075368;
    }

    v5 = YAML::Scanner::peek(*a1);
    v6 = *(v5 + 4);
    if (v6 != 10)
    {
      if (v6 != 13)
      {
        v16 = v5;
        v17 = __cxa_allocate_exception(0x38uLL);
        sub_10000143C(v18, "end of sequence flow not found");
        sub_100041860(v17, (v16 + 8), v18);
        *v17 = off_100075368;
      }

      YAML::Scanner::pop(*a1);
    }
  }

  YAML::Scanner::pop(*a1);
  return sub_10005D1F8(*(a1 + 16), 4);
}

void sub_10005D1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10005D1F8(void *a1, int a2)
{
  v3 = a1[5];
  if (v3)
  {
    v4 = *(*(a1[1] + (((v3 + a1[4] - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v3 + a1[4] - 1) & 0x3FF));
  }

  else
  {
    v4 = 0;
  }

  if (v4 != a2)
  {
    sub_10005E25C();
  }

  a1[5] = v3 - 1;

  return sub_10005BA14(a1, 1);
}

uint64_t YAML::SingleDocParser::HandleBlockMap(uint64_t a1, uint64_t a2)
{
  YAML::Scanner::pop(*a1);
  v4 = *(a1 + 16);
  LODWORD(v16) = 1;
  sub_10005DE14(v4, &v16);
  do
  {
    while (1)
    {
      if (YAML::Scanner::empty(*a1))
      {
        exception = __cxa_allocate_exception(0x38uLL);
        v14 = YAML::Scanner::mark(*a1);
        v15 = v12;
        sub_10000143C(&v16, "end of map not found");
        sub_100041860(exception, &v14, &v16);
        *exception = off_100075368;
      }

      v5 = YAML::Scanner::peek(*a1);
      v6 = v5;
      v7 = *(v5 + 16);
      v16 = *v5;
      v17 = v7;
      if (*(v5 + 47) < 0)
      {
        sub_100001C60(&__p, *(v5 + 24), *(v5 + 32));
      }

      else
      {
        v8 = *(v5 + 24);
        v19 = *(v5 + 40);
        __p = v8;
      }

      memset(v20, 0, sizeof(v20));
      sub_100001FDC(v20, *(v6 + 48), *(v6 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 56) - *(v6 + 48)) >> 3));
      v21 = *(v6 + 72);
      if (DWORD1(v16) == 6)
      {
        YAML::Scanner::pop(*a1);
        v9 = 0;
      }

      else
      {
        if (DWORD1(v16) == 14)
        {
          YAML::Scanner::pop(*a1);
          YAML::SingleDocParser::HandleNode(a1, a2);
        }

        else
        {
          if (DWORD1(v16) != 15)
          {
            v13 = __cxa_allocate_exception(0x38uLL);
            sub_10000143C(&v14, "end of map not found");
            sub_100041860(v13, &v16 + 2, &v14);
            *v13 = off_100075368;
          }

          (*(*a2 + 32))(a2, &v16 + 8, 0);
        }

        if (YAML::Scanner::empty(*a1) || *(YAML::Scanner::peek(*a1) + 4) != 15)
        {
          (*(*a2 + 32))(a2, &v16 + 8, 0);
        }

        else
        {
          YAML::Scanner::pop(*a1);
          YAML::SingleDocParser::HandleNode(a1, a2);
        }

        v9 = 1;
      }

      v14 = v20;
      sub_100002260(&v14);
      if (SHIBYTE(v19) < 0)
      {
        break;
      }

      if ((v9 & 1) == 0)
      {
        return sub_10005D1F8(*(a1 + 16), 1);
      }
    }

    operator delete(__p);
  }

  while ((v9 & 1) != 0);
  return sub_10005D1F8(*(a1 + 16), 1);
}

void sub_10005D54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      sub_1000546CC(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

uint64_t YAML::SingleDocParser::HandleFlowMap(uint64_t a1, uint64_t a2)
{
  YAML::Scanner::pop(*a1);
  v4 = *(a1 + 16);
  v20[0] = 3;
  sub_10005DE14(v4, v20);
  while (1)
  {
    if (YAML::Scanner::empty(*a1))
    {
      exception = __cxa_allocate_exception(0x38uLL);
      v21 = YAML::Scanner::mark(*a1);
      v22 = v11;
      sub_10000143C(v20, "end of map flow not found");
      sub_100041860(exception, &v21, v20);
      *exception = off_100075368;
    }

    v5 = YAML::Scanner::peek(*a1);
    v21 = *(v5 + 8);
    v22 = *(v5 + 16);
    v6 = *(v5 + 4);
    if (v6 == 14)
    {
      YAML::Scanner::pop(*a1);
      YAML::SingleDocParser::HandleNode(a1, a2);
      goto LABEL_7;
    }

    if (v6 == 11)
    {
      break;
    }

    (*(*a2 + 32))(a2, &v21, 0);
LABEL_7:
    if (YAML::Scanner::empty(*a1) || *(YAML::Scanner::peek(*a1) + 4) != 15)
    {
      (*(*a2 + 32))(a2, &v21, 0);
    }

    else
    {
      YAML::Scanner::pop(*a1);
      YAML::SingleDocParser::HandleNode(a1, a2);
    }

    if (YAML::Scanner::empty(*a1))
    {
      v12 = __cxa_allocate_exception(0x38uLL);
      v13 = a1;
      v14 = v12;
      v18 = YAML::Scanner::mark(*v13);
      v19 = v15;
      sub_10000143C(v20, "end of map flow not found");
      sub_100041860(v14, &v18, v20);
      *v14 = off_100075368;
    }

    v7 = YAML::Scanner::peek(*a1);
    v8 = *(v7 + 4);
    if (v8 != 11)
    {
      if (v8 != 13)
      {
        v16 = v7;
        v17 = __cxa_allocate_exception(0x38uLL);
        sub_10000143C(v20, "end of map flow not found");
        sub_100041860(v17, (v16 + 8), v20);
        *v17 = off_100075368;
      }

      YAML::Scanner::pop(*a1);
    }
  }

  YAML::Scanner::pop(*a1);
  return sub_10005D1F8(*(a1 + 16), 3);
}

void sub_10005D8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    __cxa_free_exception(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t YAML::SingleDocParser::HandleCompactMap(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  LODWORD(v7) = 5;
  sub_10005DE14(v4, &v7);
  v5 = YAML::Scanner::peek(*a1);
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  YAML::Scanner::pop(*a1);
  YAML::SingleDocParser::HandleNode(a1, a2);
  if (YAML::Scanner::empty(*a1) || *(YAML::Scanner::peek(*a1) + 4) != 15)
  {
    (*(*a2 + 32))(a2, &v7, 0);
  }

  else
  {
    YAML::Scanner::pop(*a1);
    YAML::SingleDocParser::HandleNode(a1, a2);
  }

  return sub_10005D1F8(*(a1 + 16), 5);
}

uint64_t YAML::SingleDocParser::HandleCompactMapWithNoKey(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v7 = 5;
  sub_10005DE14(v4, &v7);
  v5 = YAML::Scanner::peek(*a1);
  (*(*a2 + 32))(a2, v5 + 8, 0);
  YAML::Scanner::pop(*a1);
  YAML::SingleDocParser::HandleNode(a1, a2);
  return sub_10005D1F8(*(a1 + 16), 5);
}

void YAML::SingleDocParser::ParseTag(uint64_t a1, uint64_t a2)
{
  v4 = YAML::Scanner::peek(*a1);
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v6 = v4;
    exception = __cxa_allocate_exception(0x38uLL);
    sub_10000143C(v9, "cannot assign multiple tags to the same node");
    sub_100041860(exception, (v6 + 8), v9);
    *exception = off_100075368;
  }

  YAML::Tag::Tag(v9, v4);
  YAML::Tag::Translate(v9, *(a1 + 8), &__p);
  std::string::operator=(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  YAML::Scanner::pop(*a1);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_10005DC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void YAML::SingleDocParser::ParseAnchor(int64x2_t **a1, uint64_t *a2, std::string *a3)
{
  v6 = YAML::Scanner::peek(*a1);
  v7 = v6;
  if (*a2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    sub_10000143C(v10, "cannot assign multiple anchors to the same node");
    sub_100041860(exception, &v7->__r_.__value_.__r.__words[1], v10);
    *exception = off_100075368;
  }

  std::string::operator=(a3, v6 + 1);
  *a2 = YAML::SingleDocParser::RegisterAnchor(a1, &v7[1]);
  v8 = *a1;

  YAML::Scanner::pop(v8);
}

void sub_10005DD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t YAML::SingleDocParser::RegisterAnchor(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 48) + 1;
  *(a1 + 48) = v3;
  *(sub_10005E0B4(a1 + 24, a2) + 56) = v3;
  return v3;
}

void *sub_10005DE14(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_10005DE9C(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_10005DE9C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10005B9CC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10005B5A4(a1, &v10);
}

void sub_10005E024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005E070(uint64_t a1)
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

uint64_t sub_10005E0B4(uint64_t a1, const void **a2)
{
  result = *sub_1000229D8(a1, &v3, a2);
  if (!result)
  {
    sub_10005E14C();
  }

  return result;
}

void sub_10005E1E8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000061D8(v3, v2);
  _Unwind_Resume(a1);
}

void YAML::Stream::Stream(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  operator new[]();
}

void YAML::Stream::~Stream(YAML::Stream *this)
{
  if (*(this + 9))
  {
    operator delete[]();
  }

  sub_10005EF8C(this + 3);
}

uint64_t YAML::Stream::peek(YAML::Stream *this)
{
  if (*(this + 8))
  {
    return *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL));
  }

  else
  {
    return 4;
  }
}

BOOL YAML::Stream::operator BOOL(void *a1)
{
  if (!*(*a1 + *(**a1 - 24) + 32))
  {
    return 1;
  }

  if (a1[8])
  {
    return *(*(a1[4] + ((a1[7] >> 9) & 0x7FFFFFFFFFFFF8)) + (a1[7] & 0xFFFLL)) != 4;
  }

  return 0;
}

uint64_t YAML::Stream::get(YAML::Stream *this)
{
  if (*(this + 8))
  {
    v2 = *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL));
  }

  else
  {
    v2 = 4;
  }

  YAML::Stream::AdvanceCurrent(this);
  ++*(this + 4);
  if (v2 == 10)
  {
    *(this + 12) = (*(this + 3) + 1);
  }

  return v2;
}

uint64_t YAML::Stream::AdvanceCurrent(YAML::Stream *this)
{
  v2 = *(this + 8);
  if (!v2 || (++*(this + 7), *(this + 8) = v2 - 1, result = sub_10005F038(this + 24, 1), ++*(this + 2), !*(this + 8)))
  {

    return YAML::Stream::_ReadAheadTo(this, 0);
  }

  return result;
}

void YAML::Stream::get(YAML::Stream *this@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v3 = a2;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a3, a2);
  if (v3 >= 1)
  {
    do
    {
      v6 = YAML::Stream::get(this);
      std::string::push_back(a3, v6);
      --v3;
    }

    while (v3);
  }
}

void sub_10005E748(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

YAML::Stream *YAML::Stream::eat(YAML::Stream *this, int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    v3 = this;
    do
    {
      this = YAML::Stream::get(v3);
      --v2;
    }

    while (v2);
  }

  return this;
}

BOOL YAML::Stream::_ReadAheadTo(YAML::Stream *this, unint64_t a2)
{
  for (i = *this; !*(i + *(*i - 24) + 32); i = *this)
  {
    v5 = *(this + 8);
    if (v5 > a2)
    {
      return v5 > a2;
    }

    v6 = *(this + 5);
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v6 != 1)
        {
          continue;
        }

LABEL_11:
        YAML::Stream::StreamInUtf16(this);
        continue;
      }

      YAML::Stream::StreamInUtf8(this);
    }

    else
    {
      if (v6 == 2)
      {
        goto LABEL_11;
      }

      if (v6 == 3 || v6 == 4)
      {
        YAML::Stream::StreamInUtf32(this);
      }
    }
  }

  v8 = 4;
  sub_10005EB30(this + 3, &v8);
  v5 = *(this + 8);
  return v5 > a2;
}

void *YAML::Stream::StreamInUtf8(YAML::Stream *this)
{
  result = YAML::Stream::GetNextByte(this);
  if (!*(*this + *(**this - 24) + 32))
  {
    v3 = result;
    return sub_10005EB30(this + 3, &v3);
  }

  return result;
}

void *YAML::Stream::StreamInUtf16(YAML::Stream *this)
{
  v2 = *(this + 5);
  NextByte = YAML::Stream::GetNextByte(this);
  result = YAML::Stream::GetNextByte(this);
  v15 = result;
  if (*(*this + *(**this - 24) + 32))
  {
    return result;
  }

  v4 = v2 == 2;
  v5 = v2 != 2;
  if (v2 == 2)
  {
    p_NextByte = &NextByte;
  }

  else
  {
    p_NextByte = &v15;
  }

  v7 = *p_NextByte;
  if ((v7 & 0xFC) != 0xDC)
  {
    v10 = *(&NextByte + (v2 == 2)) | (v7 << 8);
    if ((v7 & 0xFC) != 0xD8)
    {
LABEL_13:
      v8 = (this + 24);
      v9 = v10;
      goto LABEL_14;
    }

    while (1)
    {
      v11 = v10;
      NextByte = YAML::Stream::GetNextByte(this);
      v15 = YAML::Stream::GetNextByte(this);
      if (*(*this + *(**this - 24) + 32))
      {
        break;
      }

      v12 = *(&NextByte + v5);
      v10 = *(&NextByte + v4) | (v12 << 8);
      v13 = (v12 + 32);
      if (v13 > 0xFB)
      {
        v10 = (v10 & 0x3FF | ((v11 & 0x3FF) << 10)) + 0x10000;
        goto LABEL_13;
      }

      sub_10005EC88(this + 3, 0xFFFDuLL);
      if (v13 <= 0xF7)
      {
        v8 = (this + 24);
        v9 = v11;
        goto LABEL_14;
      }
    }
  }

  v8 = (this + 24);
  v9 = 65533;
LABEL_14:

  return sub_10005EC88(v8, v9);
}

void *YAML::Stream::StreamInUtf32(YAML::Stream *this)
{
  if (*(this + 5) == 4)
  {
    v2 = &unk_10006475C;
  }

  else
  {
    v2 = &unk_10006474C;
  }

  v6[0] = YAML::Stream::GetNextByte(this);
  v6[1] = YAML::Stream::GetNextByte(this);
  v6[2] = YAML::Stream::GetNextByte(this);
  result = YAML::Stream::GetNextByte(this);
  v6[3] = result;
  if (!*(*this + *(**this - 24) + 32))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v5 = v6[*&v2[v4]] | (v5 << 8);
      v4 += 4;
    }

    while (v4 != 16);

    return sub_10005EC88(this + 3, v5);
  }

  return result;
}

void *sub_10005EB30(void *result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 9) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = sub_10005EDB8(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 9) & 0x7FFFFFFFFFFFF8)) + (v8 & 0xFFF)) = *a2;
  ++v3[5];
  return result;
}

uint64_t YAML::Stream::GetNextByte(YAML::Stream *this)
{
  v2 = *(this + 11);
  if (v2 < *(this + 10))
  {
    goto LABEL_5;
  }

  v3 = *(*this + *(**this - 24) + 40);
  v4 = (*(*v3 + 64))(v3, *(this + 9), 2048);
  *(this + 10) = v4;
  *(this + 11) = 0;
  if (v4 || (v5 = (*this + *(**this - 24)), std::ios_base::clear(v5, v5->__rdstate_ | 2), *(this + 10)))
  {
    v2 = *(this + 11);
LABEL_5:
    v6 = *(this + 9);
    *(this + 11) = v2 + 1;
    return *(v6 + v2);
  }

  return 0;
}

void *sub_10005EC88(void *a1, unint64_t a2)
{
  if (a2 == 4)
  {
    v3 = 65533;
  }

  else
  {
    v3 = a2;
  }

  if (v3 > 0x7F)
  {
    if (v3 > 0x7FF)
    {
      if (v3 >> 16)
      {
        v9 = (v3 >> 18) & 7 | 0xF0;
        sub_10005EB30(a1, &v9);
        v8 = (v3 >> 12) & 0x3F | 0x80;
        sub_10005EB30(a1, &v8);
        v7 = (v3 >> 6) & 0x3F | 0x80;
        sub_10005EB30(a1, &v7);
        v6 = v3 & 0x3F | 0x80;
        v4 = &v6;
      }

      else
      {
        v12 = (v3 >> 12) | 0xE0;
        sub_10005EB30(a1, &v12);
        v11 = (v3 >> 6) & 0x3F | 0x80;
        sub_10005EB30(a1, &v11);
        v10 = v3 & 0x3F | 0x80;
        v4 = &v10;
      }
    }

    else
    {
      v14 = (v3 >> 6) | 0xC0;
      sub_10005EB30(a1, &v14);
      v13 = v3 & 0x3F | 0x80;
      v4 = &v13;
    }
  }

  else
  {
    v15 = v3;
    v4 = &v15;
  }

  return sub_10005EB30(a1, v4);
}

void *sub_10005EDB8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10005B9CC(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10005B5A4(a1, &v10);
}

void sub_10005EF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005EF8C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 4096;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_100054AE0(a1);
}

uint64_t sub_10005F038(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x1000)
  {
    a2 = 1;
  }

  if (v2 < 0x2000)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 4096;
  }

  return v4 ^ 1u;
}

uint64_t YAML::Tag::Tag(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  *a1 = v4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (v4 <= 1)
  {
    if (v4 > 1)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v4 == 2)
  {
LABEL_7:
    v5 = (a2 + 24);
LABEL_9:
    std::string::operator=((a1 + 32), v5);
    return a1;
  }

  if (v4 == 3)
  {
    std::string::operator=((a1 + 8), (a2 + 24));
    v5 = *(a2 + 48);
    goto LABEL_9;
  }

  if (v4 != 4)
  {
LABEL_11:
    __assert_rtn("Tag", "tag.cpp", 28, "false");
  }

  return a1;
}

void sub_10005F158(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void YAML::Tag::Translate(YAML::Tag *this@<X0>, const YAML::Directives *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *this;
  if (*this <= 1)
  {
    if (!v6)
    {
      if (*(this + 55) < 0)
      {
        v10 = *(this + 4);
        v11 = *(this + 5);

        sub_100001C60(a3, v10, v11);
      }

      else
      {
        *a3 = *(this + 2);
        *(a3 + 16) = *(this + 6);
      }

      return;
    }

    if (v6 != 1)
    {
      goto LABEL_29;
    }

    sub_10000143C(v13, "!");
    YAML::Directives::TranslateTagHandle(a2, v13, __p);
    sub_100029BE8(__p, this + 4, a3);
  }

  else
  {
    if (v6 != 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {

          sub_10000143C(a3, "!");
          return;
        }

LABEL_29:
        sub_10005F3FC();
      }

      std::operator+<char>();
      v8 = std::string::append(&v12, "!");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v14 = v8->__r_.__value_.__r.__words[2];
      *v13 = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      YAML::Directives::TranslateTagHandle(a2, v13, __p);
      sub_100029BE8(__p, this + 4, a3);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }

      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        v7 = v12.__r_.__value_.__r.__words[0];
        goto LABEL_22;
      }

      return;
    }

    sub_10000143C(v13, "!!");
    YAML::Directives::TranslateTagHandle(a2, v13, __p);
    sub_100029BE8(__p, this + 4, a3);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    v7 = v13[0];
LABEL_22:
    operator delete(v7);
  }
}

void sub_10005F37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
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

uint64_t sub_10005F428(uint64_t result, unsigned __int8 **a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = **a2;
  if (v6 == 45)
  {
    v8 = v4 + 1;
    v7 = v4[1];
  }

  else
  {
    v7 = **a2;
    v8 = *a2;
  }

  v9 = v7 - 48;
  if (v7 == 48)
  {
    v18 = 0;
    v20 = 0;
    v14 = 0;
    v21 = 0;
    v13 = 0.0;
    v45 = *++v8;
    v10 = v45;
    goto LABEL_40;
  }

  if ((v7 - 49) > 8)
  {
    if (*(result + 48))
    {
      __assert_rtn("ParseNumber", "reader.h", 1532, "!HasParseError()");
    }

    v43 = (v8 - v5);
    v44 = 3;
    goto LABEL_104;
  }

  v11 = *++v8;
  v10 = v11;
  v12 = v11 - 48;
  v13 = 0.0;
  if (v6 != 45)
  {
    if (v12 <= 9)
    {
      v14 = 0;
      v15 = 429496729;
      while (1)
      {
        if (v9 > 0x19999998)
        {
          if (v9 != 429496729)
          {
LABEL_96:
            v15 = v9;
            goto LABEL_21;
          }

          if (v10 > 0x35)
          {
            goto LABEL_21;
          }
        }

        v17 = *++v8;
        v9 = v10 + 10 * v9 - 48;
        ++v14;
        v10 = v17;
        if (v17 - 48 >= 0xA)
        {
LABEL_28:
          v18 = 0;
          v20 = 0;
          goto LABEL_29;
        }
      }
    }

    goto LABEL_111;
  }

  if (v12 > 9)
  {
LABEL_111:
    v18 = 0;
    v20 = 0;
    v14 = 0;
LABEL_29:
    v21 = 0;
    goto LABEL_40;
  }

  v14 = 0;
  v15 = 214748364;
  while (1)
  {
    if (v9 > 0xCCCCCCB)
    {
      if (v9 != 214748364)
      {
        goto LABEL_96;
      }

      if (v10 > 0x38)
      {
        break;
      }
    }

    v16 = *++v8;
    v9 = v10 + 10 * v9 - 48;
    ++v14;
    v10 = v16;
    if (v16 - 48 >= 0xA)
    {
      goto LABEL_28;
    }
  }

  v10 = 57;
LABEL_21:
  v18 = v15;
  if (v6 == 45)
  {
    while (v18 <= 0xCCCCCCCCCCCCCCBLL || v18 == 0xCCCCCCCCCCCCCCCLL && v10 <= 0x38)
    {
      v19 = *++v8;
      v18 = (v10 & 0xF) + 10 * v18;
      ++v14;
      v10 = v19;
      if (v19 - 48 >= 0xA)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    while (v18 <= 0x1999999999999998 || v18 == 0x1999999999999999 && v10 <= 0x35)
    {
      v22 = *++v8;
      v18 = (v10 & 0xF) + 10 * v18;
      ++v14;
      v10 = v22;
      if (v22 - 48 >= 0xA)
      {
LABEL_38:
        v20 = 0;
        v13 = 0.0;
        goto LABEL_39;
      }
    }
  }

  v13 = v18;
  do
  {
    v23 = *++v8;
    v13 = (v10 - 48) + v13 * 10.0;
    v10 = v23;
  }

  while (v23 - 48 < 0xA);
  v20 = 1;
LABEL_39:
  v21 = 1;
  v9 = v15;
LABEL_40:
  v24 = v4 - v5;
  if (v10 == 46)
  {
    v25 = *++v8;
    v10 = v25;
    if (v25 - 58 <= 0xFFFFFFF5)
    {
      if (*(result + 48))
      {
        __assert_rtn("ParseNumber", "reader.h", 1575, "!HasParseError()");
      }

      v43 = (v8 - v5);
      v44 = 14;
      goto LABEL_104;
    }

    v26 = 0;
    if (v20)
    {
      goto LABEL_52;
    }

    if (!v21)
    {
      v18 = v9;
    }

    while (v10 <= 0x39 && !(v18 >> 53))
    {
      v28 = *++v8;
      v27 = v28;
      v18 = v10 - 48 + 10 * v18;
      --v26;
      if (v18)
      {
        ++v14;
      }

      v10 = v27;
      if (v27 <= 47)
      {
        v29 = 0;
        v13 = v18;
        goto LABEL_80;
      }
    }

    v13 = v18;
LABEL_52:
    while (v10 <= 0x39)
    {
      if (v14 <= 16)
      {
        v13 = (v10 - 48) + v13 * 10.0;
        --v26;
        if (v13 > 0.0)
        {
          ++v14;
        }
      }

      v30 = *++v8;
      v10 = v30;
      if (v30 <= 47)
      {
        v29 = 0;
        goto LABEL_80;
      }
    }

    v20 = 1;
  }

  else
  {
    v26 = 0;
  }

  v31 = v9;
  if ((v10 | 0x20) != 0x65)
  {
    v52 = v9;
    v53 = v18;
    v54 = v9;
    v55 = v24;
    v56 = result;
    if ((v20 & 1) == 0)
    {
      if (v21)
      {
        if (v6 == 45)
        {
          result = sub_10000784C(a3, -v18);
          if ((result & 1) == 0)
          {
            if (*(v56 + 48))
            {
              __assert_rtn("ParseNumber", "reader.h", 1731, "!HasParseError()");
            }

            *(v56 + 48) = 16;
            *(v56 + 56) = v55;
          }

          goto LABEL_95;
        }

        result = sub_100006D00((a3 + 40), 1);
        *(result + 8) = 0;
        *(result + 16) = 0;
        *result = v53;
        if (v53 < 0)
        {
          v50 = 278;
        }

        else
        {
          v50 = 406;
        }

        if (v53 >> 31)
        {
          v42 = 470;
        }

        else
        {
          v42 = 502;
        }

        if (HIDWORD(v53))
        {
          v42 = v50;
        }
      }

      else
      {
        result = sub_100006D00((a3 + 40), 1);
        *(result + 8) = 0;
        *(result + 16) = 0;
        if (v6 == 45)
        {
          *result = -v54;
          v51 = -v54 < 0;
          v42 = 182;
        }

        else
        {
          *result = v52;
          v51 = v54 < 0;
          v42 = 470;
        }

        if (!v51)
        {
          v42 = 502;
        }
      }

LABEL_94:
      *(result + 22) = v42;
      goto LABEL_95;
    }

    v29 = 0;
LABEL_80:
    v38 = v26 + v29;
    if (v38 > -309)
    {
      if ((v38 & 0x80000000) == 0)
      {
        if (v38 >= 0x135)
        {
          v46 = "n >= 0 && n <= 308";
          v47 = 48;
          v48 = "pow10.h";
          v49 = "Pow10";
          goto LABEL_114;
        }

        v39 = v13 * dbl_100062A38[v38];
        goto LABEL_88;
      }

      v40 = -v38;
    }

    else
    {
      v39 = 0.0;
      if (v38 < 0xFFFFFD98)
      {
LABEL_91:
        result = sub_100006D00((a3 + 40), 1);
        v41 = -v39;
        if (v6 != 45)
        {
          v41 = v39;
        }

        *(result + 8) = 0;
        *(result + 16) = 0;
        *result = v41;
        v42 = 534;
        goto LABEL_94;
      }

      v13 = v13 / 1.0e308;
      v40 = -308 - v38;
    }

    v39 = v13 / dbl_100062A38[v40];
LABEL_88:
    if (v39 > 1.79769313e308)
    {
      if (!*(result + 48))
      {
        goto LABEL_90;
      }

      v46 = "!HasParseError()";
      v47 = 1707;
      v48 = "reader.h";
      v49 = "ParseNumber";
LABEL_114:
      __assert_rtn(v49, v48, v47, v46);
    }

    goto LABEL_91;
  }

  v32 = v8[1];
  if (v21)
  {
    v31 = v18;
  }

  if (!v20)
  {
    v13 = v31;
  }

  if (v32 == 43 || v32 == 45)
  {
    v29 = v8[2] - 48;
    if (v29 < 0xA)
    {
      v8 += 3;
      if (v32 == 43)
      {
        goto LABEL_67;
      }

      if (v26 >= 1)
      {
        __assert_rtn("ParseNumber", "reader.h", 1639, "expFrac <= 0");
      }

      v34 = *v8;
      if ((v34 - 48) > 9)
      {
LABEL_75:
        v36 = 1;
      }

      else
      {
        while (1)
        {
          v29 = v34 + 10 * v29 - 48;
          if (v29 > (v26 + 2147483639) / 10)
          {
            break;
          }

          v35 = *++v8;
          v34 = v35;
          if ((v35 - 48) >= 0xA)
          {
            goto LABEL_75;
          }
        }

        do
        {
          v37 = *++v8;
          v36 = 1;
        }

        while ((v37 - 48) < 0xA);
      }

      goto LABEL_78;
    }

    v8 += 2;
    goto LABEL_102;
  }

  v29 = v32 - 48;
  if ((v32 - 48) > 9)
  {
    ++v8;
LABEL_102:
    if (*(result + 48))
    {
      __assert_rtn("ParseNumber", "reader.h", 1660, "!HasParseError()");
    }

    v43 = (v8 - v5);
    v44 = 15;
LABEL_104:
    *(result + 48) = v44;
    *(result + 56) = v43;
    goto LABEL_95;
  }

  v8 += 2;
  do
  {
LABEL_67:
    v33 = *v8;
    if ((v33 - 48) > 9)
    {
      v36 = 0;
LABEL_78:
      if (v36)
      {
        v29 = -v29;
      }

      goto LABEL_80;
    }

    ++v8;
    v29 = v33 + 10 * v29 - 48;
  }

  while (v29 <= 308 - v26);
  if (*(result + 48))
  {
    __assert_rtn("ParseNumber", "reader.h", 1655, "!HasParseError()");
  }

LABEL_90:
  *(result + 48) = 13;
  *(result + 56) = v24;
LABEL_95:
  *a2 = v8;
  a2[1] = v5;
  return result;
}

void sub_10005FBAC(_Unwind_Exception *a1)
{
  *v1 = v3;
  v1[1] = v2;
  _Unwind_Resume(a1);
}

_DWORD *sub_10005FD2C(_DWORD *a1, void *a2, uint64_t a3)
{
  if (*a1)
  {
    __assert_rtn("ParseObject", "reader.h", 787, "!HasParseError()");
  }

  return sub_100009694(a1, a2, a3);
}

_DWORD *sub_10005FD64(_DWORD *a1, void *a2, uint64_t a3)
{
  if (*a1)
  {
    __assert_rtn("ParseObject", "reader.h", 796, "!HasParseError()");
  }

  return sub_100009694(a1, a2, a3);
}

_DWORD *sub_10005FD9C(_DWORD *a1, void *a2, uint64_t a3)
{
  if (*a1)
  {
    __assert_rtn("ParseObject", "reader.h", 750, "!HasParseError()");
  }

  return sub_100009694(a1, a2, a3);
}

uint64_t sub_10005FE00(uint64_t a1, unsigned __int8 **a2, void *a3, int *a4, __n128 a5)
{
  v9 = 0;
  while (1)
  {
    result = sub_1000065AC(a1, a2, a3, a5);
    if (*a4)
    {
      return result;
    }

    v11 = *a2;
    for (i = *a2; ; ++i)
    {
      v13 = *i;
      v14 = v13 > 0x20;
      v15 = (1 << v13) & 0x100002600;
      if (v14 || v15 == 0)
      {
        break;
      }

      ++v11;
    }

    ++v9;
    *a2 = i;
    v17 = *i;
    if (v17 != 44)
    {
      if (v17 == 93)
      {
        *a2 = i + 1;
        result = sub_1000077A8(a3, v9);
        if (result)
        {
          return result;
        }

        if (*a4)
        {
          __assert_rtn("ParseArray", "reader.h", 836, "!HasParseError()");
        }

LABEL_25:
        v22 = (*a2 - a2[1]);
        v23 = 16;
      }

      else
      {
        v22 = (v11 - a2[1]);
        v23 = 7;
      }

      *a4 = v23;
      *(a1 + 56) = v22;
      return result;
    }

    v18 = i + 1;
    *a2 = i + 1;
    while (1)
    {
      v19 = *v18;
      v14 = v19 > 0x20;
      v20 = (1 << v19) & 0x100002600;
      if (v14 || v20 == 0)
      {
        break;
      }

      ++v18;
    }

    *a2 = v18;
    if (*v18 == 93)
    {
      result = sub_1000077A8(a3, v9);
      if (result)
      {
        ++*a2;
        return result;
      }

      if (*a4)
      {
        __assert_rtn("ParseArray", "reader.h", 845, "!HasParseError()");
      }

      goto LABEL_25;
    }
  }
}

_DWORD *sub_10005FF98(_DWORD *a1, void *a2, uint64_t a3)
{
  if (*a1)
  {
    __assert_rtn("ParseArray", "reader.h", 818, "!HasParseError()");
  }

  return sub_100009694(a1, a2, a3);
}

_DWORD *sub_100060028(_DWORD *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    __assert_rtn("ParseStringToStream", "reader.h", 1033, "!HasParseError()");
  }

  *result = 10;
  *(a2 + 56) = a3;
  return result;
}

uint64_t sub_1000601A0(uint64_t result, unsigned __int8 **a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = **a2;
  if (v6 == 45)
  {
    v8 = v4 + 1;
    v7 = v4[1];
  }

  else
  {
    v7 = **a2;
    v8 = *a2;
  }

  v9 = v7 - 48;
  if (v7 == 48)
  {
    v18 = 0;
    v20 = 0;
    v14 = 0;
    v21 = 0;
    v13 = 0.0;
    v45 = *++v8;
    v10 = v45;
    goto LABEL_40;
  }

  if ((v7 - 49) > 8)
  {
    if (*(result + 48))
    {
      __assert_rtn("ParseNumber", "reader.h", 1532, "!HasParseError()");
    }

    v43 = (v8 - v5);
    v44 = 3;
    goto LABEL_104;
  }

  v11 = *++v8;
  v10 = v11;
  v12 = v11 - 48;
  v13 = 0.0;
  if (v6 != 45)
  {
    if (v12 <= 9)
    {
      v14 = 0;
      v15 = 429496729;
      while (1)
      {
        if (v9 > 0x19999998)
        {
          if (v9 != 429496729)
          {
LABEL_96:
            v15 = v9;
            goto LABEL_21;
          }

          if (v10 > 0x35)
          {
            goto LABEL_21;
          }
        }

        v17 = *++v8;
        v9 = v10 + 10 * v9 - 48;
        ++v14;
        v10 = v17;
        if (v17 - 48 >= 0xA)
        {
LABEL_28:
          v18 = 0;
          v20 = 0;
          goto LABEL_29;
        }
      }
    }

    goto LABEL_111;
  }

  if (v12 > 9)
  {
LABEL_111:
    v18 = 0;
    v20 = 0;
    v14 = 0;
LABEL_29:
    v21 = 0;
    goto LABEL_40;
  }

  v14 = 0;
  v15 = 214748364;
  while (1)
  {
    if (v9 > 0xCCCCCCB)
    {
      if (v9 != 214748364)
      {
        goto LABEL_96;
      }

      if (v10 > 0x38)
      {
        break;
      }
    }

    v16 = *++v8;
    v9 = v10 + 10 * v9 - 48;
    ++v14;
    v10 = v16;
    if (v16 - 48 >= 0xA)
    {
      goto LABEL_28;
    }
  }

  v10 = 57;
LABEL_21:
  v18 = v15;
  if (v6 == 45)
  {
    while (v18 <= 0xCCCCCCCCCCCCCCBLL || v18 == 0xCCCCCCCCCCCCCCCLL && v10 <= 0x38)
    {
      v19 = *++v8;
      v18 = (v10 & 0xF) + 10 * v18;
      ++v14;
      v10 = v19;
      if (v19 - 48 >= 0xA)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    while (v18 <= 0x1999999999999998 || v18 == 0x1999999999999999 && v10 <= 0x35)
    {
      v22 = *++v8;
      v18 = (v10 & 0xF) + 10 * v18;
      ++v14;
      v10 = v22;
      if (v22 - 48 >= 0xA)
      {
LABEL_38:
        v20 = 0;
        v13 = 0.0;
        goto LABEL_39;
      }
    }
  }

  v13 = v18;
  do
  {
    v23 = *++v8;
    v13 = (v10 - 48) + v13 * 10.0;
    v10 = v23;
  }

  while (v23 - 48 < 0xA);
  v20 = 1;
LABEL_39:
  v21 = 1;
  v9 = v15;
LABEL_40:
  v24 = v4 - v5;
  if (v10 == 46)
  {
    v25 = *++v8;
    v10 = v25;
    if (v25 - 58 <= 0xFFFFFFF5)
    {
      if (*(result + 48))
      {
        __assert_rtn("ParseNumber", "reader.h", 1575, "!HasParseError()");
      }

      v43 = (v8 - v5);
      v44 = 14;
      goto LABEL_104;
    }

    v26 = 0;
    if (v20)
    {
      goto LABEL_52;
    }

    if (!v21)
    {
      v18 = v9;
    }

    while (v10 <= 0x39 && !(v18 >> 53))
    {
      v28 = *++v8;
      v27 = v28;
      v18 = v10 - 48 + 10 * v18;
      --v26;
      if (v18)
      {
        ++v14;
      }

      v10 = v27;
      if (v27 <= 47)
      {
        v29 = 0;
        v13 = v18;
        goto LABEL_80;
      }
    }

    v13 = v18;
LABEL_52:
    while (v10 <= 0x39)
    {
      if (v14 <= 16)
      {
        v13 = (v10 - 48) + v13 * 10.0;
        --v26;
        if (v13 > 0.0)
        {
          ++v14;
        }
      }

      v30 = *++v8;
      v10 = v30;
      if (v30 <= 47)
      {
        v29 = 0;
        goto LABEL_80;
      }
    }

    v20 = 1;
  }

  else
  {
    v26 = 0;
  }

  v31 = v9;
  if ((v10 | 0x20) != 0x65)
  {
    v52 = v9;
    v53 = v18;
    v54 = v9;
    v55 = v24;
    v56 = result;
    if ((v20 & 1) == 0)
    {
      if (v21)
      {
        if (v6 == 45)
        {
          result = sub_10000784C(a3, -v18);
          if ((result & 1) == 0)
          {
            if (*(v56 + 48))
            {
              __assert_rtn("ParseNumber", "reader.h", 1731, "!HasParseError()");
            }

            *(v56 + 48) = 16;
            *(v56 + 56) = v55;
          }

          goto LABEL_95;
        }

        result = sub_100006D00((a3 + 40), 1);
        *(result + 8) = 0;
        *(result + 16) = 0;
        *result = v53;
        if (v53 < 0)
        {
          v50 = 278;
        }

        else
        {
          v50 = 406;
        }

        if (v53 >> 31)
        {
          v42 = 470;
        }

        else
        {
          v42 = 502;
        }

        if (HIDWORD(v53))
        {
          v42 = v50;
        }
      }

      else
      {
        result = sub_100006D00((a3 + 40), 1);
        *(result + 8) = 0;
        *(result + 16) = 0;
        if (v6 == 45)
        {
          *result = -v54;
          v51 = -v54 < 0;
          v42 = 182;
        }

        else
        {
          *result = v52;
          v51 = v54 < 0;
          v42 = 470;
        }

        if (!v51)
        {
          v42 = 502;
        }
      }

LABEL_94:
      *(result + 22) = v42;
      goto LABEL_95;
    }

    v29 = 0;
LABEL_80:
    v38 = v26 + v29;
    if (v38 > -309)
    {
      if ((v38 & 0x80000000) == 0)
      {
        if (v38 >= 0x135)
        {
          v46 = "n >= 0 && n <= 308";
          v47 = 48;
          v48 = "pow10.h";
          v49 = "Pow10";
          goto LABEL_114;
        }

        v39 = v13 * dbl_100062A38[v38];
        goto LABEL_88;
      }

      v40 = -v38;
    }

    else
    {
      v39 = 0.0;
      if (v38 < 0xFFFFFD98)
      {
LABEL_91:
        result = sub_100006D00((a3 + 40), 1);
        v41 = -v39;
        if (v6 != 45)
        {
          v41 = v39;
        }

        *(result + 8) = 0;
        *(result + 16) = 0;
        *result = v41;
        v42 = 534;
        goto LABEL_94;
      }

      v13 = v13 / 1.0e308;
      v40 = -308 - v38;
    }

    v39 = v13 / dbl_100062A38[v40];
LABEL_88:
    if (v39 > 1.79769313e308)
    {
      if (!*(result + 48))
      {
        goto LABEL_90;
      }

      v46 = "!HasParseError()";
      v47 = 1707;
      v48 = "reader.h";
      v49 = "ParseNumber";
LABEL_114:
      __assert_rtn(v49, v48, v47, v46);
    }

    goto LABEL_91;
  }

  v32 = v8[1];
  if (v21)
  {
    v31 = v18;
  }

  if (!v20)
  {
    v13 = v31;
  }

  if (v32 == 43 || v32 == 45)
  {
    v29 = v8[2] - 48;
    if (v29 < 0xA)
    {
      v8 += 3;
      if (v32 == 43)
      {
        goto LABEL_67;
      }

      if (v26 >= 1)
      {
        __assert_rtn("ParseNumber", "reader.h", 1639, "expFrac <= 0");
      }

      v34 = *v8;
      if ((v34 - 48) > 9)
      {
LABEL_75:
        v36 = 1;
      }

      else
      {
        while (1)
        {
          v29 = v34 + 10 * v29 - 48;
          if (v29 > (v26 + 2147483639) / 10)
          {
            break;
          }

          v35 = *++v8;
          v34 = v35;
          if ((v35 - 48) >= 0xA)
          {
            goto LABEL_75;
          }
        }

        do
        {
          v37 = *++v8;
          v36 = 1;
        }

        while ((v37 - 48) < 0xA);
      }

      goto LABEL_78;
    }

    v8 += 2;
    goto LABEL_102;
  }

  v29 = v32 - 48;
  if ((v32 - 48) > 9)
  {
    ++v8;
LABEL_102:
    if (*(result + 48))
    {
      __assert_rtn("ParseNumber", "reader.h", 1660, "!HasParseError()");
    }

    v43 = (v8 - v5);
    v44 = 15;
LABEL_104:
    *(result + 48) = v44;
    *(result + 56) = v43;
    goto LABEL_95;
  }

  v8 += 2;
  do
  {
LABEL_67:
    v33 = *v8;
    if ((v33 - 48) > 9)
    {
      v36 = 0;
LABEL_78:
      if (v36)
      {
        v29 = -v29;
      }

      goto LABEL_80;
    }

    ++v8;
    v29 = v33 + 10 * v29 - 48;
  }

  while (v29 <= 308 - v26);
  if (*(result + 48))
  {
    __assert_rtn("ParseNumber", "reader.h", 1655, "!HasParseError()");
  }

LABEL_90:
  *(result + 48) = 13;
  *(result + 56) = v24;
LABEL_95:
  *a2 = v8;
  a2[1] = v5;
  return result;
}

void sub_100060924(_Unwind_Exception *a1)
{
  *v1 = v3;
  v1[1] = v2;
  _Unwind_Resume(a1);
}

_BYTE *sub_100060F20(_BYTE *a1, uint64_t *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v7 = a3;
  *a1 = 92;
  result = sub_1000073A0(*a2, 1);
  *result = a3;
  if (v7 == 117)
  {
    *sub_1000073A0(*a2, 1) = 48;
    *sub_1000073A0(*a2, 1) = 48;
    v9 = a0123456789abcd[a4 >> 4];
    *sub_1000073A0(*a2, 1) = v9;
    v10 = a0123456789abcd[a4 & 0xF];
    result = sub_1000073A0(*a2, 1);
    *result = v10;
  }

  return result;
}

uint64_t sub_100061080(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 88;
  v4 = (a1 - 88);
  v5 = (a1 - 88);
  do
  {
    v6 = *v5;
    v5 -= 11;
    result = (*v6)(v4);
    v3 -= 88;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

void sub_1000610F4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t siri::dialogengine::StringJoin()
{
  return siri::dialogengine::StringJoin();
}

{
  return siri::dialogengine::StringJoin();
}

uint64_t siri::dialogengine::FindLocaleFile()
{
  return siri::dialogengine::FindLocaleFile();
}

{
  return siri::dialogengine::FindLocaleFile();
}

uint64_t siri::dialogengine::FindParamsFile()
{
  return siri::dialogengine::FindParamsFile();
}

{
  return siri::dialogengine::FindParamsFile();
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

void operator delete[]()
{
    ;
  }
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

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}