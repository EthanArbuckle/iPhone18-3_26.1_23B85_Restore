void sub_2438DE63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

uint64_t sub_2438DE6C4()
{
  sub_2438A9A08(&v2);
  v0 = sub_2438AA2A8(&v2, "0x", 2);
  *(v0 + *(*v0 - 24) + 8) = *(v0 + *(*v0 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x245D431D0]();
  std::stringbuf::str();
  v2 = *MEMORY[0x277D82828];
  *(&v2 + *(v2 - 24)) = *(MEMORY[0x277D82828] + 24);
  v3 = MEMORY[0x277D82878] + 16;
  if (v5 < 0)
  {
    operator delete(v4[7].__locale_);
  }

  v3 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v4);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v6);
}

void sub_2438DE850(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438A9B74(va);
  _Unwind_Resume(a1);
}

std::runtime_error *sub_2438DE864(std::runtime_error *a1, uint64_t a2)
{
  sub_2438DE944(a2);
  v3 = std::string::insert(&v6, 0, "MalformedInputException at ");
  v4 = *&v3->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_2438DCB2C(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_2856A09C8;
  return a1;
}

void sub_2438DE910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438DE944(uint64_t a1)
{
  sub_2438A9A08(&v3);
  MEMORY[0x245D431C0](&v3, a1);
  std::stringbuf::str();
  v3 = *MEMORY[0x277D82828];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x277D82828] + 24);
  v4 = MEMORY[0x277D82878] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x245D432B0](&v7);
}

void sub_2438DEA94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438A9B74(va);
  _Unwind_Resume(a1);
}

std::runtime_error *sub_2438DEAA8(std::runtime_error *a1, uint64_t a2)
{
  std::operator+<char>();
  v4 = std::string::append(&v13, " at ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_2438DE944(a2);
  if ((v12 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v14, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_2438DCB2C(a1, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_2856A09C8;
  return a1;
}

void sub_2438DEBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
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

void *sub_2438DEC30(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = &unk_2856A09F0;
  a1[1] = a2;
  a1[2] = 0;
  v5 = a1 + 2;
  a1[3] = 0;
  a1[4] = 0;
  sub_2438DECF4(a1, a3);
  v6 = a1[3];
  if (a3 > v6)
  {
    bzero((*v5 + v6), a3 - v6);
  }

  a1[3] = a3;
  return a1;
}

void sub_2438DECAC(uint64_t a1, unint64_t a2)
{
  sub_2438DECF4(a1, a2);
  v4 = *(a1 + 24);
  if (a2 > v4)
  {
    bzero((*(a1 + 16) + v4), a2 - v4);
  }

  *(a1 + 24) = a2;
}

uint64_t sub_2438DECF4(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (*(result + 32) >= a2)
  {
    if (v4)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!v4)
  {
LABEL_5:
    result = (*(**(result + 8) + 16))(*(result + 8), a2);
    *(v3 + 16) = result;
    goto LABEL_6;
  }

  v5 = (*(**(result + 8) + 16))(*(result + 8), a2);
  *(v3 + 16) = v5;
  memcpy(v5, v4, *(v3 + 24));
  result = (*(**(v3 + 8) + 24))(*(v3 + 8), v4);
LABEL_6:
  *(v3 + 32) = a2;
  return result;
}

void *sub_2438DEDD8(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = &unk_2856A0A10;
  a1[1] = a2;
  a1[2] = 0;
  v5 = a1 + 2;
  a1[3] = 0;
  a1[4] = 0;
  sub_2438DEEA4(a1, a3);
  v6 = a1[3];
  if (a3 > v6)
  {
    bzero((*v5 + 8 * v6), 8 * (a3 - v6));
  }

  a1[3] = a3;
  return a1;
}

void sub_2438DEE58(uint64_t a1, unint64_t a2)
{
  sub_2438DEEA4(a1, a2);
  v4 = *(a1 + 24);
  if (a2 > v4)
  {
    bzero((*(a1 + 16) + 8 * v4), 8 * (a2 - v4));
  }

  *(a1 + 24) = a2;
}

uint64_t sub_2438DEEA4(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (*(result + 32) >= a2)
  {
    if (v4)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!v4)
  {
LABEL_5:
    result = (*(**(result + 8) + 16))(*(result + 8), 8 * a2);
    *(v3 + 16) = result;
    goto LABEL_6;
  }

  v5 = (*(**(result + 8) + 16))(*(result + 8), 8 * a2);
  *(v3 + 16) = v5;
  memcpy(v5, v4, 8 * *(v3 + 24));
  result = (*(**(v3 + 8) + 24))(*(v3 + 8), v4);
LABEL_6:
  *(v3 + 32) = a2;
  return result;
}

void *sub_2438DEF8C(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = &unk_2856A0A30;
  a1[1] = a2;
  a1[2] = 0;
  v5 = a1 + 2;
  a1[3] = 0;
  a1[4] = 0;
  sub_2438DEEA4(a1, a3);
  v6 = a1[3];
  if (a3 > v6)
  {
    bzero((*v5 + 8 * v6), 8 * (a3 - v6));
  }

  a1[3] = a3;
  return a1;
}

void *sub_2438DF010(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = &unk_2856A0A50;
  a1[1] = a2;
  a1[2] = 0;
  v5 = a1 + 2;
  a1[3] = 0;
  a1[4] = 0;
  sub_2438DF194(a1, a3);
  v6 = a1[3];
  v7 = a3 - v6;
  if (a3 > v6)
  {
    v8 = 16 * v6;
    do
    {
      v9 = (*v5 + v8);
      *v9 = 0;
      v9[1] = 0;
      v8 += 16;
      --v7;
    }

    while (v7);
  }

  a1[3] = a3;
  return a1;
}

uint64_t sub_2438DF09C(uint64_t a1, unint64_t a2)
{
  result = sub_2438DF194(a1, a2);
  v5 = *(a1 + 24);
  v6 = a2 - v5;
  if (a2 > v5)
  {
    v7 = 16 * v5;
    do
    {
      v8 = (*(a1 + 16) + v7);
      *v8 = 0;
      v8[1] = 0;
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *(a1 + 24) = a2;
  return result;
}

uint64_t sub_2438DF0F4(uint64_t a1)
{
  *a1 = &unk_2856A0A50;
  if (*(a1 + 16))
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
  }

  return a1;
}

void sub_2438DF16C(uint64_t a1)
{
  v1 = sub_2438DF0F4(a1);

  operator delete(v1);
}

uint64_t sub_2438DF194(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (*(result + 32) >= a2)
  {
    if (v4)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!v4)
  {
LABEL_5:
    result = (*(**(result + 8) + 16))(*(result + 8), 16 * a2);
    *(v3 + 16) = result;
    goto LABEL_6;
  }

  v5 = (*(**(result + 8) + 16))(*(result + 8), 16 * a2);
  *(v3 + 16) = v5;
  memcpy(v5, v4, 16 * *(v3 + 24));
  result = (*(**(v3 + 8) + 24))(*(v3 + 8), v4);
LABEL_6:
  *(v3 + 32) = a2;
  return result;
}

void *sub_2438DF27C(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = &unk_2856A0A70;
  a1[1] = a2;
  a1[2] = 0;
  v5 = a1 + 2;
  a1[3] = 0;
  a1[4] = 0;
  sub_2438DEEA4(a1, a3);
  v6 = a1[3];
  if (a3 > v6)
  {
    bzero((*v5 + 8 * v6), 8 * (a3 - v6));
  }

  a1[3] = a3;
  return a1;
}

void *sub_2438DF300(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = &unk_2856A0A90;
  a1[1] = a2;
  a1[2] = 0;
  v5 = a1 + 2;
  a1[3] = 0;
  a1[4] = 0;
  sub_2438DEEA4(a1, a3);
  v6 = a1[3];
  if (a3 > v6)
  {
    bzero((*v5 + 8 * v6), 8 * (a3 - v6));
  }

  a1[3] = a3;
  return a1;
}

void *sub_2438DF384(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = &unk_2856A0AB0;
  a1[1] = a2;
  a1[2] = 0;
  v5 = a1 + 2;
  a1[3] = 0;
  a1[4] = 0;
  sub_2438DECF4(a1, a3);
  v6 = a1[3];
  if (a3 > v6)
  {
    bzero((*v5 + v6), a3 - v6);
  }

  a1[3] = a3;
  return a1;
}

uint64_t sub_2438DF41C(uint64_t a1)
{
  *a1 = &unk_2856A09F0;
  if (*(a1 + 16))
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
  }

  return a1;
}

void sub_2438DF494(uint64_t a1)
{
  v1 = sub_2438DF41C(a1);

  operator delete(v1);
}

uint64_t sub_2438DF4BC(uint64_t a1)
{
  *a1 = &unk_2856A0A10;
  if (*(a1 + 16))
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
  }

  return a1;
}

void sub_2438DF534(uint64_t a1)
{
  v1 = sub_2438DF4BC(a1);

  operator delete(v1);
}

uint64_t sub_2438DF55C(uint64_t a1)
{
  *a1 = &unk_2856A0A30;
  if (*(a1 + 16))
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
  }

  return a1;
}

void sub_2438DF5D4(uint64_t a1)
{
  v1 = sub_2438DF55C(a1);

  operator delete(v1);
}

uint64_t sub_2438DF5FC(uint64_t a1)
{
  *a1 = &unk_2856A0A70;
  if (*(a1 + 16))
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
  }

  return a1;
}

void sub_2438DF674(uint64_t a1)
{
  v1 = sub_2438DF5FC(a1);

  operator delete(v1);
}

uint64_t sub_2438DF69C(uint64_t a1)
{
  *a1 = &unk_2856A0A90;
  if (*(a1 + 16))
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
  }

  return a1;
}

void sub_2438DF714(uint64_t a1)
{
  v1 = sub_2438DF69C(a1);

  operator delete(v1);
}

uint64_t sub_2438DF73C(uint64_t a1)
{
  *a1 = &unk_2856A0AB0;
  if (*(a1 + 16))
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8));
  }

  return a1;
}

void sub_2438DF7B4(uint64_t a1)
{
  v1 = sub_2438DF73C(a1);

  operator delete(v1);
}

uint64_t (**sub_2438DF7DC())()
{
  if ((atomic_load_explicit(&qword_27ED97058, memory_order_acquire) & 1) == 0)
  {
    sub_243989900();
  }

  return off_281AF4110;
}

unint64_t sub_2438DF820(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v3 = a3;
  if (a2 >= 8)
  {
    v4 = a2 >> 3;
    v5 = a1;
    do
    {
      v6 = *v5++;
      v3 = 5 * __ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * v6) | ((0x87C37B91114253D5 * v6) >> 33))) ^ v3, 37) + 1390208809;
      --v4;
    }

    while (v4);
  }

  v7 = 0;
  v8 = a2 & 7;
  v9 = a1 + (a2 & 0xFFFFFFF8);
  if (v8 > 3)
  {
    if ((a2 & 7) > 5)
    {
      if (v8 != 6)
      {
        v7 = v9[6] << 48;
      }

      v7 |= v9[5] << 40;
    }

    else if (v8 == 4)
    {
      goto LABEL_17;
    }

    v7 ^= v9[4] << 32;
LABEL_17:
    v7 ^= v9[3] << 24;
LABEL_18:
    v7 ^= v9[2] << 16;
    goto LABEL_19;
  }

  if ((a2 & 7) <= 1)
  {
    if ((a2 & 7) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    goto LABEL_18;
  }

LABEL_19:
  v7 ^= v9[1] << 8;
LABEL_20:
  v10 = v7 ^ *(a1 + (a2 & 0xFFFFFFF8));
  v3 ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * v10) | ((0x87C37B91114253D5 * v10) >> 33));
LABEL_21:
  v11 = 0xFF51AFD7ED558CCDLL * (a2 ^ (v3 >> 33) ^ v3);
  return (0xC4CEB9FE1A85EC53 * (v11 ^ (v11 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v11 ^ (v11 >> 33))) >> 33);
}

uint64_t sub_2438DF970(uint64_t a1)
{
  *a1 = &unk_2856A0B98;
  close(*(a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return nullsub_1(a1);
}

void sub_2438DF9E0(uint64_t a1)
{
  v1 = sub_2438DF970(a1);

  operator delete(v1);
}

void sub_2438DFA08(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_2438BF99C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v4 = *(a1 + 16);
  }

  sub_2438DFA90(__p, a2);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2438DFA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2438DFA90(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  if (*(a1 + 23) < 0)
  {
    sub_2438BF99C(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  sub_2438DFFF0(v4, &__p);
  *a2 = v4;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_2438DFB44(uint64_t a1)
{
  *a1 = &unk_2856A0BD8;
  if ((*(a1 + 48) & 1) == 0)
  {
    close(*(a1 + 32));
    *(a1 + 48) = 1;
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_2438DFBB4(uint64_t a1)
{
  v1 = sub_2438DFB44(a1);

  operator delete(v1);
}

void sub_2438DFBDC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x38uLL);
  if (*(a1 + 23) < 0)
  {
    sub_2438BF99C(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  sub_2438E0364(v4, &__p);
  *a2 = v4;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

ssize_t sub_2438DFCA0(uint64_t a1, void *a2, size_t a3, off_t a4)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Buffer is null");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  result = pread(*(a1 + 32), a2, a3, a4);
  if (result == -1)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    sub_2438DCB2C(v7, &v9);
    __cxa_throw(v7, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  if (result != a3)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    sub_2438DCB2C(v8, &v9);
    __cxa_throw(v8, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return result;
}

void sub_2438DFDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

ssize_t sub_2438DFE24(uint64_t a1, const void *a2, size_t a3)
{
  if (*(a1 + 48) == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Cannot write to closed stream.");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  result = write(*(a1 + 32), a2, a3);
  if (result == -1)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    sub_2438DCB2C(v7, &v9);
    __cxa_throw(v7, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  if (result != a3)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    sub_2438DCB2C(v8, &v9);
    __cxa_throw(v8, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  *(a1 + 40) += a3;
  return result;
}

void sub_2438DFF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t sub_2438DFFB4(uint64_t result)
{
  if ((*(result + 48) & 1) == 0)
  {
    v1 = result;
    result = close(*(result + 32));
    *(v1 + 48) = 1;
  }

  return result;
}

uint64_t sub_2438DFFF0(uint64_t a1, const std::string *a2)
{
  *a1 = &unk_2856A0B98;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::operator=((a1 + 8), a2);
  v4 = v3;
  if (*(a1 + 31) < 0)
  {
    v4 = *v3;
  }

  v5 = open(v4, 0);
  *(a1 + 32) = v5;
  if (v5 == -1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v8 = std::string::append(&v26, ": ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = __error();
    v11 = strerror(*v10);
    v12 = std::string::append(&v27, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v28, " (");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = __error();
    std::to_string(&v25, *v16);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v25;
    }

    else
    {
      v17 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v29, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v30, ")");
    v22 = *&v21->__r_.__value_.__l.__data_;
    *&v24.st_uid = *(&v21->__r_.__value_.__l + 2);
    *&v24.st_dev = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    sub_2438DCB2C(exception, &v24);
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  if (fstat(v5, &v24) == -1)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    sub_2438DCB2C(v23, &v30);
    __cxa_throw(v23, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  *(a1 + 40) = v24.st_size;
  return a1;
}

void sub_2438E023C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 57) < 0)
  {
    operator delete(*(v45 - 80));
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  if (*(v45 - 121) < 0)
  {
    operator delete(*(v45 - 144));
  }

  if (*(v45 - 153) < 0)
  {
    operator delete(*(v45 - 176));
  }

  if (a41 < 0)
  {
    operator delete(a36);
    if ((v44 & 1) == 0)
    {
LABEL_18:
      if (*(v41 + 31) < 0)
      {
        operator delete(*v42);
      }

      nullsub_1(v41);
      _Unwind_Resume(a1);
    }
  }

  else if (!v44)
  {
    goto LABEL_18;
  }

  __cxa_free_exception(v43);
  goto LABEL_18;
}

uint64_t sub_2438E0364(uint64_t a1, const std::string *a2)
{
  *a1 = &unk_2856A0BD8;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  std::string::operator=((a1 + 8), a2);
  *(a1 + 48) = 0;
  v4 = v3;
  if (*(a1 + 31) < 0)
  {
    v4 = *v3;
  }

  v5 = open(v4, 1537, 384);
  *(a1 + 32) = v5;
  if (v5 == -1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v8 = std::string::append(&v24, ": ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = __error();
    v11 = strerror(*v10);
    v12 = std::string::append(&v25, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v26, " (");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = __error();
    std::to_string(&v23, *v16);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v23;
    }

    else
    {
      v17 = v23.__r_.__value_.__r.__words[0];
    }

    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v23.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v27, v17, size);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v28, ")");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    sub_2438DCB2C(exception, &v29);
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return a1;
}

void sub_2438E0550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v46 - 57) < 0)
  {
    operator delete(*(v46 - 80));
  }

  if (*(v46 - 89) < 0)
  {
    operator delete(*(v46 - 112));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v45 & 1) == 0)
    {
LABEL_18:
      if (*(v42 + 31) < 0)
      {
        operator delete(*v43);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v45)
  {
    goto LABEL_18;
  }

  __cxa_free_exception(v44);
  goto LABEL_18;
}

void *sub_2438E0654(void *a1)
{
  *a1 = &unk_2856A0C60;
  v2 = operator new(0x30uLL);
  sub_2438E623C(v2);
  a1[1] = v2;
  return a1;
}

void *sub_2438E06C0(void *a1, uint64_t a2)
{
  *a1 = &unk_2856A0C60;
  v4 = operator new(0x30uLL);
  v5 = v4;
  v6 = *(a2 + 8);
  v7 = *v6;
  *(v4 + 2) = *(v6 + 2);
  *v4 = v7;
  if (*(v6 + 47) < 0)
  {
    sub_2438BF99C(v4 + 24, *(v6 + 3), *(v6 + 4));
  }

  else
  {
    v8 = *(v6 + 24);
    *(v4 + 5) = *(v6 + 5);
    *(v4 + 24) = v8;
  }

  a1[1] = v5;
  return a1;
}

void *sub_2438E076C(void *a1)
{
  *a1 = &unk_2856A0C60;
  v4 = a1[1];
  v2 = a1 + 1;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2438E6898(v2, v3);
  }

  return a1;
}

void sub_2438E07BC(void *__p)
{
  *__p = &unk_2856A0C60;
  v4 = __p[1];
  v2 = __p + 1;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2438E6898(v2, v3);
  }

  operator delete(__p);
}

void *sub_2438E081C(void *a1)
{
  *a1 = &unk_2856A0C80;
  v2 = operator new(0x58uLL);
  v2[1] = v2 + 1;
  v2[2] = v2 + 1;
  v2[3] = 0;
  v2[4] = v2 + 4;
  *v2 = 0;
  v2[5] = v2 + 4;
  v2[6] = 0;
  v2[7] = 0;
  v2[8] = -1;
  *(v2 + 72) = 1;
  *(v2 + 19) = 6;
  *(v2 + 80) = 0;
  a1[1] = v2;
  return a1;
}

void sub_2438E08A0(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_2438E630C(v2 + 4);
    sub_2438E62A8(v2 + 1);

    operator delete(v2);
  }
}

uint64_t sub_2438E08F8(uint64_t a1)
{
  *a1 = &unk_2856A0C80;
  sub_2438E08A0((a1 + 8), 0);
  return a1;
}

void sub_2438E0940(void **a1)
{
  *a1 = &unk_2856A0C80;
  sub_2438E08A0(a1 + 1, 0);

  operator delete(a1);
}

uint64_t sub_2438E0998(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 2;
  sub_2438E68E4((v3 + 8), *(a2 + 8), a2);
  sub_2438E630C((*(a1 + 8) + 32));
  return a1;
}

int *sub_2438E09E0()
{
  if ((atomic_load_explicit(&qword_27ED97088, memory_order_acquire) & 1) == 0)
  {
    sub_243989968();
  }

  return &dword_27ED97080;
}

uint64_t sub_2438E0A18(uint64_t a1)
{
  if ((*(a1 + 16) & 8) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Unknown compression type");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return *(a1 + 72);
}

uint64_t sub_2438E0A8C@<X0>(uint64_t result@<X0>, std::string *a2@<X8>)
{
  if (*(result + 56) == *(result + 64))
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v3 = result;
    sub_2438A9A08(&v8);
    v4 = *(v3 + 56);
    v5 = *(v3 + 64);
    __str.__r_.__value_.__r.__words[0] = &v8;
    __str.__r_.__value_.__l.__size_ = ".";
    while (v4 != v5)
    {
      sub_2438E6B28(&__str, v4);
      v4 += 24;
    }

    std::stringbuf::str();
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    std::string::basic_string(a2, &__str, 0, size - 1, &v13);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v8 = *MEMORY[0x277D82828];
    *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
    v9 = MEMORY[0x277D82878] + 16;
    if (v11 < 0)
    {
      operator delete(v10[7].__locale_);
    }

    v9 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v10);
    std::ostream::~ostream();
    return MEMORY[0x245D432B0](&v12);
  }

  return result;
}

void sub_2438E0C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_2438A9B74(&a16);
  _Unwind_Resume(a1);
}

unint64_t sub_2438E0C88(uint64_t a1, void *a2, uint64_t a3)
{
  result = (*(*a3 + 16))(a3);
  v6 = *(*a2 + 8 * (result >> 6));
  if (((1 << result) & v6) == 0)
  {
    v7 = result;
    *(*a2 + 8 * (result >> 6)) = v6 | (1 << result);
    for (result = (*(*a3 + 24))(a3); v7 <= result; result = (*(*a3 + 24))(a3))
    {
      *(*a2 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
      ++v7;
    }
  }

  return result;
}

uint64_t sub_2438E0D88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (*(*a3 + 16))(a3);
  v7 = v6 >> 6;
  v8 = 1 << v6;
  v9 = ((1 << v6) & *(*a2 + 8 * (v6 >> 6))) != 0;
  if ((*(*a3 + 40))(a3))
  {
    v10 = 0;
    do
    {
      v11 = (*(*a3 + 48))(a3, v10);
      v9 |= sub_2438E0D88(a1, a2, v11);
      ++v10;
    }

    while (v10 < (*(*a3 + 40))(a3));
  }

  v12 = *a2;
  if (v9)
  {
    v13 = *(v12 + 8 * v7) | v8;
  }

  else
  {
    v13 = *(v12 + 8 * v7) & ~v8;
  }

  *(v12 + 8 * v7) = v13;
  return v9 & 1;
}

unint64_t sub_2438E0ED4(uint64_t a1, uint64_t a2)
{
  p_p = (*(*a2 + 16))(a2);
  __p.__r_.__value_.__r.__words[0] = &p_p;
  sub_2438E6B98((a1 + 24), &p_p, &unk_24398D59B, &__p)[5] = a2;
  v4 = (*(*a2 + 32))(a2);
  result = (*(*a2 + 40))(a2);
  if (v4 == 12)
  {
    if (result)
    {
      for (i = 0; i < result; ++i)
      {
        v7 = (*(*a2 + 56))(a2, i);
        sub_2438E11B8((a1 + 56), v7);
        v8 = (*(*a2 + 48))(a2, i);
        v9 = (*(*v8 + 16))(v8);
        sub_2438E0A8C(a1, &__p);
        p_p = &__p;
        *(sub_2438E6E8C(a1, &__p.__r_.__value_.__l.__data_, &unk_24398D59B, &p_p) + 7) = v9;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v10 = (*(*a2 + 48))(a2, i);
        sub_2438E0ED4(a1, v10);
        v11 = *(a1 + 64);
        v12 = (v11 - 24);
        if (*(v11 - 1) < 0)
        {
          operator delete(*v12);
        }

        *(a1 + 64) = v12;
        result = (*(*a2 + 40))(a2);
      }
    }
  }

  else if (result)
  {
    for (j = 0; j < result; ++j)
    {
      v14 = (*(*a2 + 48))(a2, j);
      sub_2438E0ED4(a1, v14);
      result = (*(*a2 + 40))(a2);
    }
  }

  return result;
}

void sub_2438E119C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2438E11B8(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2438E6CB8(a1, a2);
  }

  else
  {
    sub_2438E6C58(a1, a2);
    result = (v3 + 24);
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2438E11F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(*(*(a1 + 48) + 16) + 56);
  LOBYTE(v17) = 0;
  sub_2438E13A0(a2, v6, &v17);
  if ((*(**(*(a1 + 48) + 24) + 32))(*(*(a1 + 48) + 24)) == 12 && (v7 = *(a3 + 8), *v7 == 2))
  {
    v8 = *(v7 + 16);
    while (v8 != v7 + 8)
    {
      sub_2438E14B4(a1, a2, *(v8 + 16));
      v8 = *(v8 + 8);
      v7 = *(a3 + 8);
    }
  }

  else
  {
    v9 = (*(**(*(a1 + 48) + 24) + 32))(*(*(a1 + 48) + 24));
    v10 = *(a3 + 8);
    v11 = *v10;
    if (v9 == 12 && v11 == 1)
    {
      v14 = *(v10 + 5);
      while (v14 != v10 + 8)
      {
        sub_2438E1678(a1, a2, (v14 + 16));
        v14 = *(v14 + 8);
        v10 = *(a3 + 8);
      }
    }

    else if (v11 == 3)
    {
      v13 = *(v10 + 2);
      while (v13 != v10 + 2)
      {
        sub_2438E1770(a1, a2, *(v13 + 16));
        v13 = *(v13 + 8);
        v10 = *(a3 + 8);
      }
    }

    else
    {
      v15 = a2[1];
      if (v15 >= 1)
      {
        v17 = *a2;
        v18 = 0;
        sub_2438E7334(&v17, v15);
      }
    }
  }

  result = sub_2438E0D88(a1, a2, *(*(a1 + 48) + 24));
  **a2 |= 1uLL;
  return result;
}

void sub_2438E13A0(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  *(a1 + 8) = 0;
  if (a2)
  {
    v6 = *(a1 + 16);
    v7 = v6 << 6;
    if (v6 << 6 >= a2)
    {
      *(a1 + 8) = a2;
    }

    else
    {
      v15 = 0;
      v16 = 0uLL;
      if ((a2 & 0x8000000000000000) != 0)
      {
        sub_243980874();
      }

      v8 = v6 << 7;
      if (v8 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v8 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v7 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      sub_2438E7030(&v15, v9);
      v11 = v15;
      v12 = *(&v16 + 1);
      v15 = *a1;
      v10 = v15;
      v13 = *(a1 + 8);
      *a1 = v11;
      *(a1 + 8) = a2;
      *(a1 + 16) = v12;
      v16 = v13;
      if (v10)
      {
        operator delete(v10);
      }
    }

    v14 = *a1;
    if (*a3 == 1)
    {
      v15 = *a1;
      LODWORD(v16) = 0;
      sub_2438E7334(&v15, a2);
    }

    else
    {
      v15 = *a1;
      LODWORD(v16) = 0;
      sub_2438E73E8(&v15, a2);
    }
  }
}

void sub_2438E149C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2438E14B4(uint64_t a1, void *a2, unint64_t a3)
{
  if ((*(**(*(a1 + 48) + 24) + 40))(*(*(a1 + 48) + 24)) <= a3)
  {
    sub_2438C102C(&v14);
    v8 = sub_2438AA2A8(v15, "Invalid column selected ", 24);
    v9 = MEMORY[0x245D431D0](v8, a3);
    v10 = sub_2438AA2A8(v9, " out of ", 8);
    v11 = (*(**(*(a1 + 48) + 24) + 40))(*(*(a1 + 48) + 24));
    MEMORY[0x245D431D0](v10, v11);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    sub_2438DCB2C(exception, &v13);
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v6 = (*(**(*(a1 + 48) + 24) + 48))(*(*(a1 + 48) + 24), a3);

  return sub_2438E0C88(v6, a2, v6);
}

void sub_2438E1630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_2438C12D0(&a15);
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

unint64_t sub_2438E1678(uint64_t a1, void *a2, const void **a3)
{
  v5 = sub_2438E7498(a1, a3);
  if (a1 + 8 == v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    sub_2438DCB2C(exception, &v9);
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v6 = *(v5 + 56);

  return sub_2438E1770(a1, a2, v6);
}

void sub_2438E1738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

unint64_t sub_2438E1770(uint64_t a1, void *a2, unint64_t a3)
{
  v14 = a3;
  if (a2[1] <= a3)
  {
    sub_2438C102C(v12);
    v7 = sub_2438AA2A8(v13, "Invalid type id selected ", 25);
    v8 = MEMORY[0x245D431D0](v7, a3);
    v9 = sub_2438AA2A8(v8, " out of ", 8);
    MEMORY[0x245D431B0](v9, a2[1]);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    sub_2438DCB2C(exception, &v11);
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v12[0] = &v14;
  v4 = sub_2438E6B98((a1 + 24), &v14, &unk_24398D59B, v12);
  return sub_2438E0C88(v4, a2, v4[5]);
}

void sub_2438E1878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_2438C12D0(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void *sub_2438E18C0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  a1[4] = 0;
  *a1 = a1 + 1;
  a1[3] = a1 + 4;
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  sub_2438E0ED4(a1, *(a2 + 24));
  return a1;
}

void sub_2438E192C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  a10 = v13;
  sub_2438E758C(&a10);
  sub_2438D7A80(v11, *(v10 + 32));
  sub_2438E7528(v10, *(v10 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_2438E1960(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = &unk_2856A0CA0;
  *(a1 + 8) = sub_2438F6488();
  v6 = *a2;
  *(a1 + 16) = *a2;
  v7 = a2[1];
  *(a1 + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = *(a1 + 16);
  }

  v8 = *(a3 + 8);
  v9 = *(v8 + 72);
  LODWORD(v8) = *(v8 + 76);
  *(a1 + 40) = 0;
  *(a1 + 32) = v9;
  *(a1 + 36) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = *(v6 + 16);
  sub_2438DF380((a1 + 72), *(v6 + 48), 0);
  *(a1 + 112) = 0;
  sub_2438B70A8(a1 + 168);
  sub_2438B4DF4(a1 + 264);
  v10 = *(*(a3 + 8) + 80);
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  v11 = *(*(a1 + 64) + 32);
  *(a1 + 144) = 0;
  v12 = (a1 + 144);
  *(a1 + 368) = 0;
  *(a1 + 376) = v10;
  *(a1 + 416) = 1065353216;
  *(a1 + 136) = v11;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_2438DEE58(a1 + 72, v11);
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      *(*(a1 + 88) + 8 * v14) = v15;
      sub_2438B71C8(v21, *(*(*(a1 + 64) + 40) + (v13 >> 29) + 8));
      v16 = *(a3 + 8);
      v17 = *(v16 + 56);
      if (v23 >= v17 && v23 < *(v16 + 64) + v17)
      {
        if (v14 < *(a1 + 136))
        {
          *(a1 + 136) = v14;
        }

        if (v14 >= *v12)
        {
          *v12 = v14 + 1;
        }
      }

      v15 += v24[3];
      sub_2438B721C(v21);
      ++v14;
      v13 += 0x100000000;
    }

    while (v11 != v14);
  }

  v18 = *(a1 + 136);
  *(a1 + 128) = v18;
  if (v18)
  {
    if (v18 == v11)
    {
      v19 = *(*(a1 + 64) + 144);
    }

    else
    {
      v19 = *(*(a1 + 88) + 8 * v18) - 1;
    }
  }

  else
  {
    v19 = -1;
  }

  *(a1 + 120) = v19;
  sub_2438E18C0(v21, *(a1 + 16));
  sub_2438E11F8(v21, (a1 + 40), a3);
  v25 = v24;
  sub_2438E758C(&v25);
  sub_2438D7A80(v22, v22[1]);
  sub_2438E7528(v21, v21[1]);
  return a1;
}

void sub_2438E1BA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438E1C7C(va);
  sub_2438E7630((v2 + 48));
  v5 = v2[46];
  v2[46] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_2438B4ED0(v2 + 33);
  sub_2438B721C(v2 + 21);
  v6 = v2[14];
  v2[14] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_2438DF710((v3 + 4));
  if (*v3)
  {
    operator delete(*v3);
  }

  v7 = v2[3];
  if (v7)
  {
    sub_2438CB880(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2438E1C7C(uint64_t a1)
{
  v3 = (a1 + 56);
  sub_2438E758C(&v3);
  sub_2438D7A80(a1 + 24, *(a1 + 32));
  sub_2438E7528(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_2438E1CF4(void *a1)
{
  result = a1[14];
  if (!result)
  {
    sub_2438F9DD8(*(a1[2] + 24), a1 + 5, &v6);
    v3 = v6;
    v6 = 0;
    v4 = a1[14];
    a1[14] = v3;
    if (v4)
    {
      (*(*v4 + 8))(v4);
      v5 = v6;
      v6 = 0;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }
    }

    return a1[14];
  }

  return result;
}

void *sub_2438E1DAC(void *result, unint64_t a2)
{
  v2 = result[18];
  if (!v2)
  {
    return result;
  }

  v3 = result;
  v4 = result[8];
  v5 = *(v4 + 32);
  if (v2 == v5)
  {
    v6 = *(v4 + 144);
    if (v6 <= a2)
    {
LABEL_20:
      result[17] = v5;
      result[15] = v6;
      return result;
    }
  }

  if (v2 < v5 && *(result[11] + 8 * v2) <= a2)
  {
    v6 = *(v4 + 144);
    goto LABEL_20;
  }

  v7 = v2 - 1;
  v8 = 1;
  while (v2 != v8)
  {
    v9 = *(result[11] + 8 * v8++);
    if (v9 > a2)
    {
      v7 = v8 - 2;
      break;
    }
  }

  if (v7 >= result[16])
  {
    result[17] = v7;
    result[19] = a2 - *(result[11] + 8 * v7);
    result[15] = a2;
    sub_2438E1EEC(result);
    v10 = *(v3 + 152);
    v11 = *(*(v3 + 64) + 152);
    if (v11 && *(v3 + 224) && (v10 / v11))
    {
      sub_2438E2214(v3, v10 / v11);
    }

    v12 = *(**(v3 + 368) + 16);

    return v12();
  }

  else
  {
    result[17] = v5;
    result[15] = *(v4 + 144);
  }

  return result;
}

uint64_t sub_2438E1EEC(uint64_t a1)
{
  v2 = *(a1 + 368);
  *(a1 + 368) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_2438B7B08((a1 + 168), *(*(*(a1 + 64) + 40) + 8 * *(a1 + 136) + 8));
  v3 = (*(***(a1 + 16) + 16))(**(a1 + 16));
  if (vaddvq_s64(vaddq_s64(*(a1 + 216), *(a1 + 232))) >= v3)
  {
    v9 = v3;
    sub_2438C102C(v24);
    v10 = sub_2438AA2A8(v25, "Malformed StripeInformation at stripe index ", 44);
    v11 = MEMORY[0x245D431D0](v10, *(a1 + 136));
    v12 = sub_2438AA2A8(v11, ": fileLength=", 13);
    v13 = MEMORY[0x245D431D0](v12, v9);
    v14 = sub_2438AA2A8(v13, ", StripeInfo=(offset=", 21);
    v15 = MEMORY[0x245D431D0](v14, *(a1 + 216));
    v16 = sub_2438AA2A8(v15, ", indexLength=", 14);
    v17 = MEMORY[0x245D431D0](v16, *(a1 + 224));
    v18 = sub_2438AA2A8(v17, ", dataLength=", 13);
    v19 = MEMORY[0x245D431D0](v18, *(a1 + 232));
    v20 = sub_2438AA2A8(v19, ", footerLength=", 15);
    v21 = MEMORY[0x245D431D0](v20, *(a1 + 240));
    sub_2438AA2A8(v21, ")", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    sub_2438DCB2C(exception, &v23);
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  sub_2438E2650((a1 + 168), *(a1 + 16), v24);
  if ((a1 + 264) != v24)
  {
    sub_2438B58E8(a1 + 264, v24);
  }

  sub_2438B4ED0(v24);
  *(a1 + 160) = *(a1 + 248);
  if (*(a1 + 280))
  {
    v4 = sub_2438F64F8(*(a1 + 360));
  }

  else
  {
    v4 = *(a1 + 8);
  }

  sub_2438F45A0(v24, a1, *(a1 + 136), a1 + 168, a1 + 264, *(a1 + 216), **(a1 + 16), v4);
  sub_2438C74F0(*(*(a1 + 16) + 24), v24, &v23);
  v5 = v23.__r_.__value_.__r.__words[0];
  v23.__r_.__value_.__r.__words[0] = 0;
  v6 = *(a1 + 368);
  *(a1 + 368) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v7 = v23.__r_.__value_.__r.__words[0];
    v23.__r_.__value_.__r.__words[0] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  return j_nullsub_1_0(v24);
}

void sub_2438E21B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_2438C12D0(&a15);
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

void sub_2438E2214(uint64_t a1, int a2)
{
  sub_2438E7838(a1 + 384);
  v4 = *(a1 + 296);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 216);
    do
    {
      v7 = *(*(a1 + 304) + 8 * v5 + 8);
      *&v25 = *(v7 + 28);
      if (((*(*(a1 + 40) + ((v25 >> 3) & 0x1FFFFFF8)) >> v25) & 1) != 0 && (*(v7 + 16) & 1) != 0 && *(v7 + 24) == 6)
      {
        v8 = *(a1 + 16);
        v9 = *(v8 + 40);
        v10 = operator new(0x48uLL);
        sub_2438A9D84(v10, *v8, v6, *(v7 + 32), *(v8 + 48), 0);
        v32 = v10;
        sub_2438DB514(v9, &v32, *(*(a1 + 16) + 32), *(*(a1 + 16) + 48), &v33);
        v11 = v32;
        v32 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        sub_2438B1FEC(v30);
        if ((sub_243966404(v30, v33) & 1) == 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_2438DCB60(exception, "Failed to parse the row index");
          __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
        }

        v27 = &v25;
        v12 = sub_2438E7894(a1 + 384, &v25, &unk_24398D59B, &v27);
        sub_2438B2504(v12 + 1, v30);
        sub_2438B2040(v30);
        v13 = v33;
        v33 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }

        v4 = *(a1 + 296);
      }

      v6 += *(v7 + 32);
      ++v5;
    }

    while (v5 < v4);
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  memset(v30, 0, sizeof(v30));
  v31 = 1065353216;
  v14 = *(a1 + 400);
  if (v14)
  {
    v15 = a2;
    do
    {
      v16 = v14[2];
      v17 = *(v14[8] + 8 * v15 + 8);
      *&v25 = &v25;
      *(&v25 + 1) = &v25;
      v26 = 0;
      sub_2438E25EC(&v27, &v25);
      sub_2438E62A8(&v25);
      v18 = v28;
      v19 = v28 - 24;
      if (*(v17 + 24))
      {
        v20 = 0;
        do
        {
          v21 = *(*(v17 + 32) + 8 * v20 + 8);
          v22 = operator new(0x18uLL);
          v22[1] = v19;
          v22[2] = v21;
          v23 = *(v18 - 24);
          *v22 = v23;
          *(v23 + 8) = v22;
          *(v18 - 24) = v22;
          ++*(v18 - 8);
          ++v20;
        }

        while (v20 != *(v17 + 24));
      }

      sub_2438A9704(&v33, v19);
      *&v25 = v16;
      *(&v25 + 1) = v33;
      sub_2438E80E8(v30, &v25, &v25);
      v14 = *v14;
    }

    while (v14);
  }

  (*(**(a1 + 368) + 40))(*(a1 + 368), v30);
  sub_2438E7E54(v30);
  *&v30[0] = &v27;
  sub_2438E7DD0(v30);
}

void sub_2438E252C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  sub_2438E7E54(&a15);
  a15 = &a12;
  sub_2438E7DD0(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_2438E25EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_2438E7EA0(a1, a2);
  }

  else
  {
    sub_2438E7FD0(a1, *(a1 + 8), a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2438E2650@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[7] + a1[6];
  v7 = a1[8];
  v6 = a1[9];
  v8 = *(a2 + 40);
  v9 = operator new(0x48uLL);
  sub_2438A9D84(v9, *a2, v5 + v7, v6, *(a2 + 48), 0);
  v21 = v9;
  sub_2438DB514(v8, &v21, *(a2 + 32), *(a2 + 48), &v22);
  v10 = v21;
  v21 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  sub_2438B4DF4(a3);
  if ((sub_243966404(a3, v22) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438BFB70(&v19, "bad StripeFooter from ");
    (*(*v22 + 56))(v17);
    if ((v18 & 0x80u) == 0)
    {
      v13 = v17;
    }

    else
    {
      v13 = v17[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v14 = v18;
    }

    else
    {
      v14 = v17[1];
    }

    v15 = std::string::append(&v19, v13, v14);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    sub_2438DCB2C(exception, &v20);
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  result = v22;
  v22 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_2438E2818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
{
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
    if ((v30 & 1) == 0)
    {
LABEL_10:
      sub_2438B4ED0(v28);
      v33 = *(v31 - 72);
      *(v31 - 72) = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v29);
  goto LABEL_10;
}

uint64_t sub_2438E2904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_2856A0CF0;
  *(a1 + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_2438E06C0((a1 + 24), a3);
  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  *(a1 + 56) = *(*(a1 + 8) + 16);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_2438E2ACC(a1);
  v8 = *(a1 + 56);
  *(a1 + 64) = *(v8 + 32);
  sub_2438F98E4(*(*(v8 + 64) + 8), v8, &v17);
  v9 = *(a1 + 8);
  v10 = v17;
  v17 = 0;
  v11 = *(v9 + 24);
  *(v9 + 24) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = v17;
    v17 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v13 = *(a1 + 8);
  v14 = *(v13 + 8);
  v15 = 0x40000;
  if ((*(v14 + 16) & 4) != 0)
  {
    v15 = *(v14 + 64);
  }

  *(v13 + 32) = v15;
  *(*(a1 + 8) + 40) = sub_2438E0A18(v14);
  return a1;
}

void sub_2438E2A4C(_Unwind_Exception *exception_object)
{
  v3 = v1[9];
  v1[9] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = v1[4];
  v1[3] = &unk_2856A0C60;
  v1[4] = 0;
  if (v4)
  {
    sub_2438E6898(v1 + 32, v4);
  }

  v5 = v1[2];
  if (v5)
  {
    sub_2438CB880(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_2438E2ACC(uint64_t a1)
{
  v2 = (*(*a1 + 16))(a1);
  v15 = v2;
  if (v2 || (HIDWORD(v2) - 13) <= 0xFFFFFFFD)
  {
    v3 = sub_2438AA2A8(*(*(a1 + 32) + 8), "Warning: ORC file ", 18);
    v4 = (*(***(a1 + 8) + 40))(**(a1 + 8));
    v5 = *(v4 + 23);
    if (v5 >= 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = *v4;
    }

    if (v5 >= 0)
    {
      v7 = *(v4 + 23);
    }

    else
    {
      v7 = *(v4 + 8);
    }

    v8 = sub_2438AA2A8(v3, v6, v7);
    v9 = sub_2438AA2A8(v8, " was written in an unknown format version ", 42);
    sub_2438D8F30(&v15);
    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = __p[1];
    }

    v12 = sub_2438AA2A8(v9, v10, v11);
    sub_2438AA2A8(v12, "\n", 1);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2438E2BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438E2C18@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_2438BDBA0(v8);
  v9 |= 1u;
  v4 = v10;
  if (!v10)
  {
    v4 = sub_2438BF43C(0);
    v10 = v4;
  }

  sub_2438BDAB0(v4, *(*(a1 + 8) + 8));
  v9 |= 2u;
  v5 = v11;
  if (!v11)
  {
    v5 = sub_2438BF3A8(0);
    v11 = v5;
  }

  sub_2438BCBB4(v5, *(a1 + 56));
  v9 |= 0xCu;
  v12 = *(a1 + 40);
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  if (!sub_243966F6C(v8, a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Failed to serialize file tail");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  return sub_2438BDC94(v8);
}

void sub_2438E2D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v11);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  sub_2438BDC94(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_2438E2D70(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    sub_2438E2DB4(a1);
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    return *(v2 + 32);
  }

  else
  {
    return 0;
  }
}

void *sub_2438E2DB4(void *result)
{
  v1 = result;
  v2 = result[1];
  v3 = *(v2 + 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 56);
  v6 = result[5];
  v7 = v5 + v4 + result[6];
  if (v6 < v7 + 1)
  {
    v23 = v5;
    sub_2438C102C(v26);
    v14 = sub_2438AA2A8(v27, "Invalid Metadata length: fileLength=", 36);
    v15 = MEMORY[0x245D431D0](v14, v1[5]);
    v16 = sub_2438AA2A8(v15, ", metadataLength=", 17);
    v17 = MEMORY[0x245D431D0](v16, v4);
    v18 = sub_2438AA2A8(v17, ", footerLength=", 15);
    v19 = MEMORY[0x245D431D0](v18, v23);
    v20 = sub_2438AA2A8(v19, ", postscriptLength=", 19);
    MEMORY[0x245D431D0](v20, v1[6]);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    sub_2438DCB2C(exception, &v25);
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  if (v4)
  {
    v8 = ~v7;
    v9 = *(v2 + 40);
    v10 = operator new(0x48uLL);
    sub_2438A9D84(v10, *v2, v6 + v8, v4, *(v2 + 48), 0);
    v24 = v10;
    sub_2438DB514(v9, &v24, *(v1[1] + 32), *(v1[1] + 48), v26);
    v11 = v24;
    v24 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = operator new(0x30uLL);
    sub_2438B86D8(v12);
    v13 = v1[9];
    v1[9] = v12;
    if (v13)
    {
      (*(*v13 + 8))(v13);
      v12 = v1[9];
    }

    if ((sub_243966404(v12, v26[0]) & 1) == 0)
    {
      v22 = __cxa_allocate_exception(0x10uLL);
      sub_2438DCB60(v22, "Failed to parse the metadata");
      __cxa_throw(v22, &unk_2856A0970, std::runtime_error::~runtime_error);
    }

    result = v26[0];
    v26[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(v1 + 80) = 1;
  return result;
}

void sub_2438E302C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      sub_2438C12D0(&a17);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void *sub_2438E30F4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  if ((*(*a1 + 104))(a1) < a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "stripe index out of range");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  sub_2438B71C8(v16, *(*(a1[7] + 40) + 8 * v3 + 8));
  v6 = operator new(0x58uLL);
  v7 = v19;
  v8 = a1[1];
  v9 = *v8;
  v10 = v8[6];
  v11 = *(v8 + 10);
  v12 = v8[4];
  v13 = v18;
  *(v6 + 8) = v17;
  *v6 = &unk_2856A1E18;
  *(v6 + 24) = v13;
  *(v6 + 5) = v7;
  *(v6 + 6) = v9;
  *(v6 + 7) = v10;
  *(v6 + 16) = v11;
  *(v6 + 9) = v12;
  *(v6 + 10) = 0;
  *a3 = v6;
  return sub_2438B721C(v16);
}

unint64_t sub_2438E3230(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 8);
  if (*(v1 + 24) == 2)
  {
    v2 = *(v1 + 32);
    v3 = *(v2 + 8);
    v4 = *(v2 + 12);
  }

  else
  {
    v5 = sub_2438D90F0();
    v3 = *v5;
    v4 = *(v5 + 1);
  }

  return v3 | (v4 << 32);
}

uint64_t sub_2438E3284(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((*(v1 + 16) & 0x20) == 0)
  {
    return 0;
  }

  v3 = *(v1 + 156);
  if (v3 <= 2)
  {
    return v3;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t sub_2438E32AC(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((*(v1 + 16) & 0x20) != 0)
  {
    return *(v1 + 156);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2438E32C8(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 8);
  if ((*(v1 + 16) & 0x10) != 0)
  {
    return *(v1 + 76);
  }

  else
  {
    return 0;
  }
}

void *sub_2438E335C@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  v3 = result[7];
  if (*(v3 + 80) >= 1)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = sub_2438E6AA8(a2, 0, 0, *(*(*(v3 + 88) + 8 * v5 + 8) + 24));
      v6 = *a2;
      *result = *a2;
      result[1] = a2;
      *(v6 + 8) = result;
      *a2 = result;
      ++a2[2];
      ++v5;
      v3 = v4[7];
    }

    while (v5 < *(v3 + 80));
  }

  return result;
}

void *sub_2438E3408@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *(v4 + 80);
  if (v5 < 1)
  {
LABEL_16:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DD494(exception, "key not found");
    __cxa_throw(exception, off_278DDACA8, MEMORY[0x277D825E0]);
  }

  v6 = *(v4 + 88) + 8;
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  while (1)
  {
    v10 = *v6;
    v11 = *(*v6 + 24);
    v12 = *(v11 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v11 + 8);
    }

    if (v12 == v8)
    {
      v14 = v13 >= 0 ? *(*v6 + 24) : *v11;
      result = memcmp(v14, v9, v8);
      if (!result)
      {
        break;
      }
    }

    v6 += 8;
    if (!--v5)
    {
      goto LABEL_16;
    }
  }

  v17 = *(v10 + 32);
  if (*(v17 + 23) < 0)
  {
    v19 = *v17;
    v20 = *(v17 + 1);

    return sub_2438BF99C(a3, v19, v20);
  }

  else
  {
    v18 = *v17;
    *(a3 + 16) = *(v17 + 2);
    *a3 = v18;
  }

  return result;
}

uint64_t sub_2438E3548(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a4 + 32);
  if (v5 >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = *(a2 + 48);
    v37 = *(a2 + 56) + v9;
    v35 = *(a4 + 32);
    v36 = a4;
    do
    {
      v10 = *(*(a4 + 40) + 8 * v8 + 8);
      v11 = *(v10 + 32);
      v12 = v11 + v9;
      if (*(v10 + 24) == 6)
      {
        v38 = v11 + v9;
        v39 = *(v10 + 32);
        if (v12 > v37)
        {
          sub_2438C102C(v42);
          v22 = sub_2438AA2A8(&v43, "Malformed RowIndex stream meta in stripe ", 41);
          v23 = MEMORY[0x245D431D0](v22, a3);
          v24 = sub_2438AA2A8(v23, ": streamOffset=", 15);
          v25 = MEMORY[0x245D431D0](v24, v9);
          v26 = sub_2438AA2A8(v25, ", streamLength=", 15);
          v27 = MEMORY[0x245D431D0](v26, v39);
          v28 = sub_2438AA2A8(v27, ", stripeOffset=", 15);
          v29 = MEMORY[0x245D431D0](v28, *(a2 + 48));
          v30 = sub_2438AA2A8(v29, ", stripeIndexLength=", 20);
          MEMORY[0x245D431D0](v30, *(a2 + 56));
          exception = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          sub_2438DCB2C(exception, &v41);
          __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
        }

        v13 = v7;
        v14 = *(v7 + 8);
        v15 = *(v14 + 40);
        v16 = operator new(0x48uLL);
        sub_2438A9D84(v16, *v14, v9, v39, *(v14 + 48), 0);
        v40 = v16;
        sub_2438DB514(v15, &v40, *(*(v13 + 8) + 32), *(*(v13 + 8) + 48), &v41);
        v7 = v13;
        v17 = v40;
        v40 = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }

        sub_2438B1FEC(v42);
        if ((sub_243966404(v42, v41.__r_.__value_.__l.__data_) & 1) == 0)
        {
          v32 = __cxa_allocate_exception(0x10uLL);
          sub_2438DCB60(v32, "Failed to parse RowIndex from stripe footer");
          __cxa_throw(v32, &unk_2856A0970, std::runtime_error::~runtime_error);
        }

        v18 = v44;
        if (v44 >= 1)
        {
          v19 = *(v10 + 28);
          v20 = 8;
          do
          {
            if (*(*(v45 + v20) + 48))
            {
              v21 = *(*(v45 + v20) + 48);
            }

            else
            {
              v21 = &unk_27ED96AC8;
            }

            sub_2438D770C((*a5 + 24 * v19), v21);
            v20 += 8;
            --v18;
          }

          while (v18);
        }

        sub_2438B2040(v42);
        result = v41.__r_.__value_.__r.__words[0];
        v41.__r_.__value_.__r.__words[0] = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        v5 = v35;
        a4 = v36;
        v12 = v38;
      }

      ++v8;
      v9 = v12;
    }

    while (v8 != v5);
  }

  return result;
}

void sub_2438E3844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_2438C12D0(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

BOOL sub_2438E3914(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + 80);
  if (v3 < 1)
  {
    return 0;
  }

  else
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

    v6 = *(v2 + 88);
    if (v4 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 1;
    v9 = 1;
    do
    {
      v10 = *(*(v6 + 8 * v8) + 24);
      v11 = *(v10 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v10 + 8);
      }

      if (v11 == v5)
      {
        v13 = v12 >= 0 ? *(*(v6 + 8 * v8) + 24) : *v10;
        if (!memcmp(v13, v7, v5))
        {
          break;
        }
      }

      v9 = v8++ < v3;
    }

    while (v8 - v3 != 1);
  }

  return v9;
}

void sub_2438E39F0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    sub_2438E2DB4(a1);
  }

  v6 = *(a1 + 72);
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "No stripe statistics in file");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  sub_2438E8304(v17, *(*(*(v6 + 40) + 8 * a2 + 8) + 32));
  sub_2438B71C8(v16, *(*(*(a1 + 56) + 40) + 8 * a2 + 8));
  sub_2438E2650(v16, *(a1 + 8), v13);
  sub_2438E3548(a1, v16, a2, v13, v17);
  if (v14)
  {
    v7 = sub_2438F64F8(v15);
  }

  else
  {
    v7 = sub_2438F6488();
  }

  v8 = v7;
  v11[0] = (*(*a1 + 192))(a1);
  v12 = v8;
  v9 = operator new(0x28uLL);
  sub_2438ECD88(v9, *(*(*(a1 + 72) + 40) + 8 * a2 + 8), v17, v11);
  *a3 = v9;
  sub_2438B4ED0(v13);
  sub_2438B721C(v16);
  v13[0] = v17;
  sub_2438E83F4(v13);
}

uint64_t sub_2438E3BD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6[0] = (*(*a1 + 192))(a1);
  v7 = 0;
  v4 = operator new(0x20uLL);
  result = sub_2438EC93C(v4, a1[7], v6);
  *a2 = v4;
  return result;
}

void *sub_2438E3C68@<X0>(void *a1@<X0>, unsigned int a2@<W1>, void **a3@<X8>)
{
  v4 = a1[7];
  if (a2 >= *(v4 + 104))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "column index out of range");
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  sub_2438B02E4(v10, *(*(v4 + 112) + 8 * a2 + 8));
  v8[0] = (*(*a1 + 192))(a1);
  v9 = 0;
  *a3 = sub_2438EC604(v10, v8);
  return sub_2438B050C(v10);
}

void sub_2438E3DBC(uint64_t a1)
{
  sub_2438E081C(&v2);
  (*(*a1 + 224))(a1, &v2);
  v2 = &unk_2856A0C80;
  sub_2438E08A0(&v3, 0);
}

void sub_2438E3E88(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x1A8uLL);
  v7 = v6;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10[0] = v8;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2438E1960(v6, v10, a2);
  *a3 = v7;
  if (v9)
  {

    sub_2438CB880(v9);
  }
}

void sub_2438E3F24(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_2438CB880(v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438E3F44(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_24398D730[v1];
  }
}

unint64_t sub_2438E3F68(uint64_t a1, int a2)
{
  memset(__p, 0, sizeof(__p));
  v4 = *(*(*(a1 + 8) + 16) + 56);
  v7 = 1;
  sub_2438E13A0(__p, v4, &v7);
  v5 = sub_2438E3FFC(a1, a2, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_2438E3FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2438E3FFC(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = *(a1 + 56);
  v5 = *(v4 + 32);
  if (a2 < 0 || v5 <= a2)
  {
    if (v5 < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v7 = (*(v4 + 40) + 8);
      do
      {
        v8 = *v7++;
        v9 = *(v8 + 64);
        if (v6 <= v9)
        {
          v6 = v9;
        }

        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v6 = *(*(*(v4 + 40) + 8 * a2 + 8) + 64);
  }

  v10 = *(v4 + 56);
  v11 = 0;
  if (v10 >= 1)
  {
    v12 = 0;
    v13 = *a3;
    v14 = v10 & ~(v10 >> 31);
    do
    {
      if ((*(v13 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12))
      {
        v15 = *(*(v4 + 64) + 8 * v12 + 8);
        v16 = sub_2438E3F44(v15);
        v17 = *(v15 + 96);
        v18 = v17 > 0x11;
        v19 = (1 << v17) & 0x30180;
        if (!v18 && v19 != 0)
        {
          v22 = 2 * v6;
          goto LABEL_25;
        }

        v11 += v16;
      }

      ++v12;
    }

    while (v14 != v12);
  }

  v21 = (*(***(a1 + 8) + 24))(**(a1 + 8));
  if (v21 * v11 >= v6)
  {
    v22 = v6;
  }

  else
  {
    v22 = v21 * v11;
  }

  v4 = *(a1 + 56);
LABEL_25:
  v23 = *(a1 + 8);
  v24 = *(v23 + 8);
  v25 = *(v24 + 56);
  v26 = *(v24 + 80);
  v27 = *(v4 + 32);
  v28 = *(v23 + 40);
  if (v28)
  {
    v36 = *(v4 + 32);
    v29 = *(v4 + 56);
    if (v29 < 1)
    {
      v31 = 0;
    }

    else
    {
      v30 = 0;
      v31 = 0;
      v32 = *a3;
      do
      {
        if ((*(v32 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v30))
        {
          v31 += *(v23 + 32) * sub_2438E3F44(*(*(v4 + 64) + 8 * v30 + 8));
        }

        ++v30;
      }

      while (v29 != v30);
    }

    v33 = v31 << (v28 == 2);
    v27 = v36;
  }

  else
  {
    v33 = 0;
  }

  v34 = v25 + 0x4000;
  if (v22 > v25 + 0x4000)
  {
    v34 = v22;
  }

  if (v34 <= v26)
  {
    v34 = v26;
  }

  return v34 + 8 * v27 + v33;
}

unint64_t sub_2438E4210(uint64_t a1, uint64_t a2, int a3)
{
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v6 = *(*(*(a1 + 8) + 16) + 56);
  LOBYTE(v12[0]) = 0;
  sub_2438E13A0(&v15, v6, v12);
  sub_2438E18C0(v12, *(a1 + 8));
  v7 = (*(**(*(a1 + 8) + 24) + 32))(*(*(a1 + 8) + 24));
  v8 = *(a2 + 8);
  if (v7 != 12 || v8 == a2)
  {
    if (v16 >= 1)
    {
      v18 = v15;
      v19 = 0;
      sub_2438E7334(&v18, v16);
    }
  }

  else
  {
    do
    {
      sub_2438E14B4(v12, &v15, *(v8 + 16));
      v8 = *(v8 + 8);
    }

    while (v8 != a2);
  }

  sub_2438E0D88(v12, &v15, *(*(a1 + 8) + 24));
  *v15 = (*v15 | 1);
  v10 = sub_2438E3FFC(a1, a3, &v15);
  v18 = &v14;
  sub_2438E758C(&v18);
  sub_2438D7A80(v13, v13[1]);
  sub_2438E7528(v12, v12[1]);
  if (v15)
  {
    operator delete(v15);
  }

  return v10;
}

void sub_2438E4368(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438E1C7C(va);
  v4 = *(v2 - 72);
  if (v4)
  {
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_2438E439C(uint64_t a1, uint64_t a2, int a3)
{
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v6 = *(*(*(a1 + 8) + 16) + 56);
  LOBYTE(v12[0]) = 0;
  sub_2438E13A0(&v15, v6, v12);
  sub_2438E18C0(v12, *(a1 + 8));
  v7 = (*(**(*(a1 + 8) + 24) + 32))(*(*(a1 + 8) + 24));
  v8 = *(a2 + 8);
  if (v7 != 12 || v8 == a2)
  {
    if (v16 >= 1)
    {
      v18 = v15;
      v19 = 0;
      sub_2438E7334(&v18, v16);
    }
  }

  else
  {
    do
    {
      sub_2438E1678(v12, &v15, (v8 + 16));
      v8 = *(v8 + 8);
    }

    while (v8 != a2);
  }

  sub_2438E0D88(v12, &v15, *(*(a1 + 8) + 24));
  *v15 = (*v15 | 1);
  v10 = sub_2438E3FFC(a1, a3, &v15);
  v18 = &v14;
  sub_2438E758C(&v18);
  sub_2438D7A80(v13, v13[1]);
  sub_2438E7528(v12, v12[1]);
  if (v15)
  {
    operator delete(v15);
  }

  return v10;
}

void sub_2438E44F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438E1C7C(va);
  v4 = *(v2 - 72);
  if (v4)
  {
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_2438E4528(uint64_t a1, uint64_t a2, int a3)
{
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v6 = *(*(*(a1 + 8) + 16) + 56);
  LOBYTE(v10[0]) = 0;
  sub_2438E13A0(&v13, v6, v10);
  sub_2438E18C0(v10, *(a1 + 8));
  v7 = *(a2 + 8);
  if (v7 == a2)
  {
    if (v14 >= 1)
    {
      v16 = v13;
      v17 = 0;
      sub_2438E7334(&v16, v14);
    }
  }

  else
  {
    do
    {
      sub_2438E1770(v10, &v13, *(v7 + 16));
      v7 = *(v7 + 8);
    }

    while (v7 != a2);
  }

  sub_2438E0D88(v10, &v13, *(*(a1 + 8) + 24));
  *v13 = (*v13 | 1);
  v8 = sub_2438E3FFC(a1, a3, &v13);
  v16 = &v12;
  sub_2438E758C(&v16);
  sub_2438D7A80(v11, v11[1]);
  sub_2438E7528(v10, v10[1]);
  if (v13)
  {
    operator delete(v13);
  }

  return v8;
}

void sub_2438E4650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438E1C7C(va);
  v4 = *(v2 - 72);
  if (v4)
  {
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2438E4684(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  if (*(a1 + 136) >= v4)
  {
    *(a2 + 16) = 0;
    result = 0;
    if (v4)
    {
      *(a1 + 120) = *(*(*(*(a1 + 64) + 40) + (((v4 << 32) - 0x100000000) >> 29) + 8) + 80) + *(*(a1 + 88) + 8 * v4 - 8);
    }

    else
    {
      *(a1 + 120) = 0;
    }
  }

  else
  {
    v5 = *(a1 + 152);
    if (!v5)
    {
      sub_2438E1EEC(a1);
      v5 = *(a1 + 152);
    }

    v6 = *(a1 + 160) - v5;
    if (v6 >= *(a2 + 8))
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = v6;
    }

    *(a2 + 16) = v7;
    v8 = **(a1 + 368);
    if (*(a1 + 376) == 1)
    {
      (*(v8 + 32))();
    }

    else
    {
      (*(v8 + 24))();
    }

    v10 = *(a1 + 136);
    v11 = *(a1 + 152);
    v12 = *(a1 + 160);
    *(a1 + 120) = v11 + *(*(a1 + 88) + 8 * v10);
    *(a1 + 152) = v11 + v7;
    if (v11 + v7 >= v12)
    {
      *(a1 + 136) = v10 + 1;
      *(a1 + 152) = 0;
    }

    return v7 != 0;
  }

  return result;
}

uint64_t sub_2438E47E0(uint64_t a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = *(*(a1 + 16) + 48);
  v4 = *(a1 + 376);
  v5 = *(*v2 + 96);

  return v5();
}

void sub_2438E4878(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2438BFB70(&__s2, "ORC");
  v6 = __n;
  if ((__n & 0x8000000000000000) != 0)
  {
    v11 = v19;
    v12 = *(a2 + 24);
    if (v19 > a3 || v12 < v19)
    {
LABEL_23:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCB60(exception, "Invalid ORC postscript length");
      __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
    }

    v9 = (~v19 + *(a2 + 16) + v12);
    p_s2 = __s2;
  }

  else
  {
    v7 = *(a2 + 24);
    if (__n > a3 || v7 < __n)
    {
      goto LABEL_23;
    }

    v9 = (~__n + *(a2 + 16) + v7);
    p_s2 = &__s2;
    v11 = __n;
  }

  if (memcmp(v9, p_s2, v11))
  {
    v14 = operator new[](v11);
    (*(*a1 + 32))(a1, v14, v11, 0);
    if ((__n & 0x80u) == 0)
    {
      v15 = &__s2;
    }

    else
    {
      v15 = __s2;
    }

    if (memcmp(v14, v15, v11))
    {
      v17 = __cxa_allocate_exception(0x10uLL);
      sub_2438DCB60(v17, "Not an ORC file");
      __cxa_throw(v17, &unk_2856A0970, std::runtime_error::~runtime_error);
    }

    operator delete[](v14);
    v6 = __n;
  }

  if (v6 < 0)
  {
    operator delete(__s2);
  }
}

void sub_2438E4A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete[](v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2438E4A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_2438E4878(a1, a2, a3);
  v9 = operator new(0x60uLL);
  sub_2438BCCC8(v9);
  if (v8 < a3 + 1)
  {
    sub_2438C102C(&v18);
    v11 = sub_2438AA2A8(&v18.__r_.__value_.__r.__words[2], "Invalid ORC postscript length: ", 31);
    v12 = MEMORY[0x245D431D0](v11, a3);
    v13 = sub_2438AA2A8(v12, ", file length = ", 16);
    v14 = (*(*a1 + 16))(a1);
    MEMORY[0x245D431D0](v13, v14);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    sub_2438DCB2C(exception, &v17);
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  result = sub_243966644(v9, ~a3 + v7 + v8, a3);
  if ((result & 1) == 0)
  {
    v16 = __cxa_allocate_exception(0x10uLL);
    (*(*a1 + 40))(a1);
    std::operator+<char>();
    sub_2438DCB2C(v16, &v18);
    __cxa_throw(v16, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  *a4 = v9;
  return result;
}

void sub_2438E4C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      sub_2438C12D0(&a15);
      (*(*v20 + 8))(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

uint64_t sub_2438E4D08(uint64_t a1)
{
  sub_2438C102C(v32);
  v2 = *(a1 + 56);
  if (v2 < 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "Footer is corrupt: no types found");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  v3 = 0;
  v4 = *(a1 + 64) + 8;
  do
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(v5 + 24);
    if (v6 >= 1)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = *(v5 + 32) + 4 * i;
        v9 = *(v8 + 8);
        if (v3 >= v9)
        {
          v15 = sub_2438AA2A8(&v33, "Footer is corrupt: malformed link from type ", 44);
          v16 = MEMORY[0x245D43190](v15, v3);
          v17 = sub_2438AA2A8(v16, " to ", 4);
          MEMORY[0x245D43190](v17, v9);
          v18 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          sub_2438DCB2C(v18, &v31);
          __cxa_throw(v18, &unk_2856A0970, std::runtime_error::~runtime_error);
        }

        if (v9 >= v2)
        {
          v12 = sub_2438AA2A8(&v33, "Footer is corrupt: types(", 25);
          v13 = MEMORY[0x245D43190](v12, v9);
          sub_2438AA2A8(v13, ") not exists", 12);
          v14 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          sub_2438DCB2C(v14, &v31);
          __cxa_throw(v14, &unk_2856A0970, std::runtime_error::~runtime_error);
        }

        if (i && *(v8 + 4) >= v9)
        {
          v19 = sub_2438AA2A8(&v33, "Footer is corrupt: subType(", 27);
          v20 = MEMORY[0x245D43190](v19, (i - 1));
          v21 = sub_2438AA2A8(v20, ") >= subType(", 13);
          v22 = MEMORY[0x245D43190](v21, i);
          v23 = sub_2438AA2A8(v22, ") in types(", 11);
          v24 = MEMORY[0x245D43190](v23, v3);
          v25 = sub_2438AA2A8(v24, "). (", 4);
          v26 = MEMORY[0x245D431A0](v25, *(*(v5 + 32) + 4 * i + 4));
          v27 = sub_2438AA2A8(v26, " >= ", 4);
          v28 = MEMORY[0x245D43190](v27, v9);
          sub_2438AA2A8(v28, ")", 1);
          v29 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          sub_2438DCB2C(v29, &v31);
          __cxa_throw(v29, &unk_2856A0970, std::runtime_error::~runtime_error);
        }
      }
    }

    ++v3;
  }

  while (v3 != v2);
  v32[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v32 + *(v32[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v33 = v10;
  v34 = MEMORY[0x277D82878] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v35);
  std::iostream::~basic_iostream();
  return MEMORY[0x245D432B0](&v37);
}

void sub_2438E511C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_2438C12D0(&a15);
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

uint64_t sub_2438E517C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(a2 + 16);
  v12 = sub_2438E0A18(a4);
  v13 = operator new(0x28uLL);
  sub_2438A9730(v13, v11 + a3, *(a4 + 56), 0);
  v20 = v13;
  if ((*(a4 + 16) & 4) != 0)
  {
    v14 = *(a4 + 64);
  }

  else
  {
    v14 = 0x40000;
  }

  sub_2438DB514(v12, &v20, v14, a5, &v21);
  v15 = v20;
  v20 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = operator new(0xA8uLL);
  sub_2438BB734(v16);
  if ((sub_243966404(v16, v21) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    (*(*a1 + 40))(a1);
    std::operator+<char>();
    sub_2438DCB2C(exception, &v19);
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

  sub_2438E4D08(v16);
  *a6 = v16;
  result = v21;
  v21 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_2438E5330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      (*(*v17 + 8))(v17);
      if (a17)
      {
        (*(*a17 + 8))(a17);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_2438E5408(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  sub_2438E8528(&v52, v6);
  v7 = *(a2 + 8);
  *(v52 + 48) = vextq_s8(*(v7 + 8), *(v7 + 8), 8uLL);
  if (*(v7 + 47) < 0)
  {
    sub_2438BF99C(&__dst, *(v7 + 24), *(v7 + 32));
  }

  else
  {
    __dst = *(v7 + 24);
    v51 = *(v7 + 40);
  }

  v8 = HIBYTE(v51);
  if (v51 < 0)
  {
    v8 = *(&__dst + 1);
  }

  if (v8)
  {
    sub_2438BDBA0(v44);
    if ((sub_24396649C(v44, &__dst) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCB60(exception, "Failed to parse the file tail from string");
      __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
    }

    v9 = v52;
    v10 = operator new(0x60uLL);
    v11 = v10;
    if (v46)
    {
      v12 = v46;
    }

    else
    {
      v12 = &unk_27ED96C90;
    }

    sub_2438BCDE8(v10, v12);
    v13 = *(v9 + 8);
    *(v9 + 8) = v11;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v52;
    v15 = operator new(0xA8uLL);
    v16 = v15;
    if (v47)
    {
      v17 = v47;
    }

    else
    {
      v17 = &unk_27ED96E00;
    }

    sub_2438BBA08(v15, v17);
    v18 = *(v14 + 16);
    *(v14 + 16) = v16;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v48;
    v20 = v49;
    sub_2438BDC94(v44);
  }

  else
  {
    v21 = **(a2 + 8);
    v22 = (*(**a1 + 16))();
    if (v22 >= v21)
    {
      v19 = v21;
    }

    else
    {
      v19 = v22;
    }

    if (v19 >= 0x4000)
    {
      v23 = 0x4000;
    }

    else
    {
      v23 = v19;
    }

    if (v19 <= 3)
    {
      v37 = __cxa_allocate_exception(0x10uLL);
      sub_2438DCB60(v37, "File size too small");
      __cxa_throw(v37, &unk_2856A0970, std::runtime_error::~runtime_error);
    }

    v24 = operator new(0x28uLL);
    sub_2438DECF0(v24, *(v52 + 48));
    (*(**a1 + 32))(*a1, v24[2], v23, v19 - v23);
    v20 = *(v24[2] + v23 - 1);
    sub_2438E4A78(*a1, v24, v20, v44);
    v25 = v52;
    v26 = v44[0];
    v27 = *(v52 + 8);
    *(v52 + 8) = v44[0];
    if (v27)
    {
      (*(*v27 + 8))(v27);
      v25 = v52;
      v26 = *(v52 + 8);
    }

    v28 = *(v26 + 56);
    v29 = v20 + v28 + 1;
    if (v19 <= v29)
    {
      sub_2438C102C(v44);
      v38 = sub_2438AA2A8(&v45, "Invalid ORC tailSize=", 21);
      v39 = MEMORY[0x245D431D0](v38, v20 + v28 + 1);
      v40 = sub_2438AA2A8(v39, ", fileLength=", 13);
      MEMORY[0x245D431D0](v40, v19);
      v41 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      sub_2438DCB2C(v41, &v43);
      __cxa_throw(v41, &unk_2856A0970, std::runtime_error::~runtime_error);
    }

    if (v29 <= 0x4000)
    {
      v30 = v23 - v29;
    }

    else
    {
      sub_2438DECAC(v24, *(v26 + 56));
      (*(**a1 + 32))(*a1, v24[2], v28, v19 - v29);
      v30 = 0;
      v25 = v52;
      v26 = *(v52 + 8);
    }

    sub_2438E517C(*a1, v24, v30, v26, *(v25 + 48), v44);
    v31 = *(v52 + 16);
    *(v52 + 16) = v44[0];
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    (*(*v24 + 8))(v24);
  }

  v32 = v52;
  v33 = *a1;
  *a1 = 0;
  v34 = *v32;
  *v32 = v33;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = operator new(0x58uLL);
  v42 = v52;
  v52 = 0uLL;
  sub_2438E2904(v35, &v42, a2, v19, v20);
  *a3 = v35;
  if (*(&v42 + 1))
  {
    sub_2438CB880(*(&v42 + 1));
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(__dst);
  }

  if (*(&v52 + 1))
  {
    sub_2438CB880(*(&v52 + 1));
  }
}

void sub_2438E5924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      sub_2438C12D0(&a17);
      (*(*v19 + 8))(v19);
      if (*(v20 - 121) < 0)
      {
        operator delete(*(v20 - 144));
      }

      v22 = *(v20 - 104);
      if (v22)
      {
        sub_2438CB880(v22);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void *sub_2438E5A54@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  *(a4 + 8) = 0;
  *a4 = a4 + 8;
  v5 = *(a1 + 56);
  if (*(v5 + 32) <= a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v54, a2);
    v36 = std::string::insert(&v54, 0, "Illegal stripe index: ");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    std::logic_error::logic_error(exception, &v50);
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  v8 = sub_2438B71C8(&v54, *(*(v5 + 40) + 8 * a2 + 8));
  sub_2438E2650(v8, *(a1 + 8), &v50);
  v9 = v51;
  if (v51 >= 1)
  {
    v10 = 0;
    v11 = v55;
    v12 = (a3 + 8);
    do
    {
      v13 = *(v52 + 8 * v10 + 8);
      v15 = *(v13 + 24);
      v14 = *(v13 + 28);
      v49 = v14;
      v16 = *(v13 + 32);
      if (v15 == 8)
      {
        if (!*(a3 + 16))
        {
          goto LABEL_14;
        }

        v17 = *v12;
        if (*v12)
        {
          v18 = a3 + 8;
          do
          {
            v19 = *(v17 + 28);
            v20 = v19 >= v14;
            v21 = v19 < v14;
            if (v20)
            {
              v18 = v17;
            }

            v17 = *(v17 + 8 * v21);
          }

          while (v17);
          if (v18 != v12 && v14 >= *(v18 + 28))
          {
LABEL_14:
            v22 = *(a1 + 8);
            v23 = *(v22 + 40);
            v24 = operator new(0x48uLL);
            sub_2438A9D84(v24, *v22, v11, v16, *(v22 + 48), 0);
            v47 = v24;
            sub_2438DB514(v23, &v47, *(*(a1 + 8) + 32), *(*(a1 + 8) + 48), &v48);
            v25 = v47;
            v47 = 0;
            if (v25)
            {
              (*(*v25 + 8))(v25);
            }

            sub_2438B2F94(v44);
            if ((sub_243966404(v44, v48) & 1) == 0)
            {
              v34 = __cxa_allocate_exception(0x10uLL);
              sub_2438DCB60(v34, "Failed to parse BloomFilterIndex");
              __cxa_throw(v34, &unk_2856A0970, std::runtime_error::~runtime_error);
            }

            v41 = 0;
            v42 = 0;
            v43 = 0;
            if (v45 >= 1)
            {
              for (i = 0; i < v45; ++i)
              {
                v27 = *(v13 + 28);
                LODWORD(v39) = *(v13 + 24);
                sub_2438C1A58(&v39, *(v53 + 8 * v27 + 8), *(v46 + 8 * i + 8), v56);
                v28 = v56[0];
                v39 = v56[0];
                v29 = operator new(0x20uLL);
                v29->__vftable = &unk_2856A0F10;
                v29->__shared_owners_ = 0;
                v29->__shared_weak_owners_ = 0;
                v29[1].__vftable = v28;
                v40 = v29;
                v56[0] = 0;
                sub_2438E5FB4(&v41, &v39);
                if (v40)
                {
                  sub_2438CB880(v40);
                }

                v30 = v56[0];
                v56[0] = 0;
                if (v30)
                {
                  (*(*v30 + 8))(v30);
                }
              }
            }

            v56[0] = &v49;
            v31 = (sub_2438E8844(a4, &v49, &unk_24398D59B, v56) + 5);
            if (v31 != &v41)
            {
              sub_2438E63B0(v31, v41, v42, (v42 - v41) >> 4);
            }

            v39 = &v41;
            sub_2438E676C(&v39);
            sub_2438B2FE8(v44);
            v32 = v48;
            v48 = 0;
            if (v32)
            {
              (*(*v32 + 8))(v32);
            }

            v9 = v51;
          }
        }
      }

      v11 += v16;
      ++v10;
    }

    while (v10 < v9);
  }

  sub_2438B4ED0(&v50);
  return sub_2438B721C(&v54);
}

void sub_2438E5E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 177) < 0)
  {
    operator delete(*(v32 - 200));
    if ((v30 & 1) == 0)
    {
LABEL_8:
      sub_2438E86EC(a10, *(a10 + 8));
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v31);
  goto LABEL_8;
}

void **sub_2438E5FB4(void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_243980874();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v18[4] = result;
    if (v10)
    {
      v11 = sub_2438E6734(result, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[16 * v10];
    v12 = &v11[16 * v7];
    *v12 = *a2;
    v6 = v12 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v14 = v3[1] - *v3;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *v3, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v6;
    v17 = v3[2];
    v3[2] = v13;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_2438E87BC(v18);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void sub_2438E60AC(void *a1)
{
  v1 = sub_2438E67C0(a1);

  operator delete(v1);
}

void *sub_2438E60D4(void *a1)
{
  *a1 = &unk_2856A0CF0;
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  a1[3] = &unk_2856A0C60;
  a1[4] = 0;
  if (v3)
  {
    sub_2438E6898(a1 + 32, v3);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_2438CB880(v4);
  }

  return a1;
}

void sub_2438E6180(void *__p)
{
  *__p = &unk_2856A0CF0;
  v2 = __p[9];
  __p[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = __p[4];
  __p[3] = &unk_2856A0C60;
  __p[4] = 0;
  if (v3)
  {
    sub_2438E6898(__p + 32, v3);
  }

  v4 = __p[2];
  if (v4)
  {
    sub_2438CB880(v4);
  }

  operator delete(__p);
}

void *sub_2438E623C(void *a1)
{
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v2 = MEMORY[0x277D82670];
  *a1 = -1;
  a1[1] = v2;
  a1[2] = sub_2438DF7DC();
  return a1;
}

void sub_2438E628C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438E62A8(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_2438E630C(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      sub_2438E636C(a1, v2);
      v2 = v5;
    }
  }
}

void sub_2438E636C(int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void sub_2438E63B0(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    sub_2438E64F0(a1);
    if (a4 >> 60)
    {
      sub_243980874();
    }

    v9 = *(a1 + 16) - *a1;
    v10 = v9 >> 3;
    if (v9 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_2438E6530(a1, v11);
    v12 = sub_2438E656C(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 4)
  {
    sub_2438E6670(&v18, a2, (a2 + v13), v8);
    v12 = sub_2438E656C(a1, (a2 + v13), a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = v12;
    return;
  }

  sub_2438E6670(&v19, a2, a3, v8);
  v15 = v14;
  v16 = *(a1 + 8);
  if (v16 != v14)
  {
    do
    {
      v17 = *(v16 - 8);
      if (v17)
      {
        sub_2438CB880(v17);
      }

      v16 -= 16;
    }

    while (v16 != v15);
  }

  *(a1 + 8) = v15;
}

void sub_2438E64F0(uint64_t *a1)
{
  if (*a1)
  {
    sub_2438E66E8(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

char *sub_2438E6530(void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    sub_243980874();
  }

  result = sub_2438E6734(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[16 * v4];
  return result;
}

void *sub_2438E656C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_2438E65F4(v7);
  return v4;
}

uint64_t sub_2438E65F4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2438E662C(a1);
  }

  return a1;
}

void sub_2438E662C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_2438CB880(v3);
    }

    v1 -= 16;
  }
}

uint64_t *sub_2438E6670(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_2438CB880(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_2438E66E8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_2438CB880(v4);
    }
  }

  a1[1] = v2;
}

void *sub_2438E6734(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    sub_2438C1CC8();
  }

  return operator new(16 * a2);
}

void sub_2438E676C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2438E66E8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_2438E67C0(void *a1)
{
  *a1 = &unk_2856A0CA0;
  sub_2438E7630((a1 + 48));
  v2 = a1[46];
  a1[46] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_2438B4ED0(a1 + 33);
  sub_2438B721C(a1 + 21);
  v3 = a1[14];
  a1[14] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_2438DF710((a1 + 9));
  v4 = a1[5];
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    sub_2438CB880(v5);
  }

  return a1;
}

void sub_2438E6898(int a1, void **__p)
{
  if (__p)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }

    operator delete(__p);
  }
}

uint64_t *sub_2438E68E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  for (i = a1[1]; a2 != a3 && i != a1; i = i[1])
  {
    i[2] = *(a2 + 16);
    a2 = *(a2 + 8);
  }

  if (i == a1)
  {
    return sub_2438E6934(a1, a1, a2, a3);
  }

  else
  {
    return sub_2438E6A38(a1, i, a1);
  }
}

uint64_t *sub_2438E6934(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    v8 = operator new(0x18uLL);
    v9 = v8;
    *v8 = 0;
    v8[1] = 0;
    v10 = *(a3 + 8);
    v8[2] = *(a3 + 16);
    v11 = 1;
    if (v10 != a4)
    {
      v12 = v8;
      do
      {
        v8 = operator new(0x18uLL);
        *v8 = v12;
        v8[1] = 0;
        v8[2] = *(v10 + 16);
        v12[1] = v8;
        ++v11;
        v10 = *(v10 + 8);
        v12 = v8;
      }

      while (v10 != a4);
    }

    v13 = *a2;
    *(v13 + 8) = v9;
    *v9 = v13;
    *a2 = v8;
    v8[1] = a2;
    *(a1 + 16) += v11;
    return v9;
  }

  return a2;
}

void sub_2438E6A04(void *a1)
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

uint64_t *sub_2438E6A38(uint64_t a1, uint64_t *__p, uint64_t *a3)
{
  if (__p != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *__p;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = __p[1];
      --*(a1 + 16);
      operator delete(__p);
      __p = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

void *sub_2438E6AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = operator new(0x28uLL);
  v8 = v7;
  *v7 = a2;
  v7[1] = a3;
  if (*(a4 + 23) < 0)
  {
    sub_2438BF99C(v7 + 16, *a4, *(a4 + 8));
  }

  else
  {
    *(v7 + 1) = *a4;
    v7[4] = *(a4 + 16);
  }

  return v8;
}

uint64_t sub_2438E6B28(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  sub_2438AA2A8(v3, a2, v5);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = strlen(*(a1 + 8));
    sub_2438AA2A8(*a1, v6, v7);
  }

  return a1;
}

uint64_t *sub_2438E6B98(uint64_t **a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = v6[4];
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x30uLL);
    v11[4] = **a4;
    v11[5] = 0;
    sub_2438D8944(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

void *sub_2438E6C58(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_2438BF99C(result[1], *a2, *(a2 + 1));
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

char *sub_2438E6CB8(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_243980874();
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

  v22 = a1;
  if (v6)
  {
    v7 = sub_2438D8BEC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v18 = v7;
  v19 = v8;
  v9 = &v7[24 * v6];
  v20 = v8;
  v21 = v9;
  if (*(a2 + 23) < 0)
  {
    sub_2438BF99C(v8, *a2, *(a2 + 1));
    v8 = v19;
    v11 = v20;
    v9 = v21;
  }

  else
  {
    v10 = *a2;
    *(v8 + 2) = *(a2 + 2);
    *v8 = v10;
    v11 = &v7[24 * v2];
  }

  v12 = v11 + 24;
  v13 = *(a1 + 8) - *a1;
  v14 = &v8[-v13];
  memcpy(&v8[-v13], *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v9;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  sub_2438E6DF8(&v18);
  return v12;
}

void sub_2438E6DE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438E6DF8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2438E6DF8(uint64_t a1)
{
  sub_2438E6E30(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2438E6E30(uint64_t a1, void **a2)
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

_OWORD *sub_2438E6E8C(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_2438E6F28(a1, &v12, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x40uLL);
    v9 = *a4;
    v10 = *(*a4 + 2);
    v7[2] = **a4;
    *(v7 + 6) = v10;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    *(v7 + 7) = 0;
    sub_2438D8944(a1, v12, v8, v7);
  }

  return v7;
}

uint64_t sub_2438E6F28(uint64_t a1, uint64_t *a2, const void **a3)
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
        if (!sub_2438E6FC4(a1, a3, (v4 + 32)))
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

      if (!sub_2438E6FC4(a1, (v8 + 32), a3))
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

BOOL sub_2438E6FC4(uint64_t a1, const void **a2, const void **a3)
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

void sub_2438E7030(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      sub_243980874();
    }

    v10 = 0;
    v11 = 0uLL;
    sub_2438E70EC(&v10, a2);
    v3 = a1[1];
    v8 = *a1;
    v9 = 0;
    v6 = &v8[8 * (v3 >> 6)];
    v7 = v3 & 0x3F;
    sub_2438E7130(&v10, &v8, &v6, v3);
    v4 = *a1;
    *a1 = v10;
    v10 = v4;
    v5 = *(a1 + 1);
    *(a1 + 1) = v11;
    v11 = v5;
    if (v4)
    {
      operator delete(v4);
    }
  }
}

void sub_2438E70D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2438E70EC(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    sub_243980874();
  }

  if (a2)
  {
    v3 = ((a2 - 1) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  result = sub_2438C1ECC(a1, v3);
  *a1 = result;
  a1[1] = 0;
  a1[2] = v5;
  return result;
}

void sub_2438E7130(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_2438E71D4(&v18, &v16, &v14, &v13);
}

void sub_2438E71D4(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_2438E7264(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_2438E7264(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void *sub_2438E7334(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_2438E73E8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_2438E7498(uint64_t a1, const void **a2)
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
    v7 = sub_2438E6FC4(a1, (v3 + 32), a2);
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
  if (v6 == v2 || sub_2438E6FC4(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void sub_2438E7528(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_2438E7528(a1, *a2);
    sub_2438E7528(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_2438E758C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2438E75E0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2438E75E0(void ***a1)
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

uint64_t sub_2438E7630(uint64_t a1)
{
  sub_2438E766C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2438E766C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_2438B2040(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_2438E76B0(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2438E70EC(a1, v4);
    sub_2438E770C(a1, *a2, 0, (*a2 + 8 * (*(a2 + 8) >> 6)), *(a2 + 8) & 0x3F, *(a2 + 8));
  }

  return a1;
}

void sub_2438E770C(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  sub_2438E7794(a2, a3, a4, a5, &v11, v13);
}

void sub_2438E7794(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

void sub_2438E7838(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_2438E766C(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *sub_2438E7894(uint64_t a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = *a2;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if (result[2] == v6)
            {
              return result;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_2438E7AB4(a1, *a2, a4, &v22);
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_2438E7B30(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_2438E7A9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2438E7D74(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2438E7AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x48uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v8[2] = **a3;
  result = sub_2438B1FEC((v8 + 3));
  *(a4 + 16) = 1;
  return result;
}

void sub_2438E7B30(uint64_t a1, size_t __n)
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

      sub_2438E7C20(a1, prime);
    }
  }
}

void sub_2438E7C20(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (a2 >> 61)
    {
      sub_2438C1CC8();
    }

    v4 = operator new(8 * a2);
    v5 = *a1;
    *a1 = v4;
    if (v5)
    {
      operator delete(v5);
    }

    v6 = 0;
    *(a1 + 8) = a2;
    do
    {
      *(*a1 + 8 * v6++) = 0;
    }

    while (a2 != v6);
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = v7[1];
      v9 = vcnt_s8(a2);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      *(*a1 + 8 * v8) = a1 + 16;
      v11 = *v7;
      if (*v7)
      {
        do
        {
          v12 = v11[1];
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= a2)
            {
              v12 %= a2;
            }
          }

          else
          {
            v12 &= a2 - 1;
          }

          if (v12 != v8)
          {
            v13 = *a1;
            if (!*(*a1 + 8 * v12))
            {
              v13[v12] = v7;
              goto LABEL_24;
            }

            *v7 = *v11;
            *v11 = *v13[v12];
            *v13[v12] = v11;
            v11 = v7;
          }

          v12 = v8;
LABEL_24:
          v7 = v11;
          v11 = *v11;
          v8 = v12;
        }

        while (v11);
      }
    }
  }

  else
  {
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      operator delete(v10);
    }

    *(a1 + 8) = 0;
  }
}

void sub_2438E7D74(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2438B2040(v2 + 3);
    }

    operator delete(v2);
  }
}

void sub_2438E7DD0(void ***a1)
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
        sub_2438E62A8(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2438E7E54(uint64_t a1)
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

uint64_t sub_2438E7EA0(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_243980874();
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

  v17 = a1;
  if (v6)
  {
    v7 = sub_2438D8BEC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[3 * v2];
  *(&v16 + 1) = &v7[3 * v6];
  sub_2438E7FD0(a1, v15, a2);
  *&v16 = v15 + 3;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  sub_2438E8014(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_2438E8098(&v14);
  return v13;
}

void sub_2438E7FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2438E8098(va);
  _Unwind_Resume(a1);
}

void sub_2438E7FD0(uint64_t a1, uint64_t *a2, void *a3)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  v3 = a3[2];
  if (v3)
  {
    v5 = *a3;
    v4 = a3[1];
    v6 = *(*a3 + 8);
    v7 = *v4;
    *(v7 + 8) = v6;
    *v6 = v7;
    v8 = *a2;
    *(v8 + 8) = v4;
    *v4 = v8;
    *a2 = v5;
    *(v5 + 8) = a2;
    a2[2] = v3;
    a3[2] = 0;
  }
}

void sub_2438E8014(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_2438E7FD0(a1, a4, v8);
      v8 += 3;
      a4 += 3;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_2438E62A8(v6);
      v6 += 3;
    }
  }
}

uint64_t sub_2438E8098(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_2438E62A8((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2438E80E8(uint64_t a1, unint64_t *a2, _OWORD *a3)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = *a2;
      if (v6 >= v7)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == v6)
        {
          if (i[2] == v6)
          {
            return i;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v11 >= v7)
            {
              v11 %= v7;
            }
          }

          else
          {
            v11 &= v7 - 1;
          }

          if (v11 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v6;
  *(i + 1) = *a3;
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_2438E7B30(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v3);
  if (v19)
  {
    *i = *v19;
LABEL_38:
    *v19 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v18 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v20 = *(*i + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v20 >= v7)
      {
        v20 %= v7;
      }
    }

    else
    {
      v20 &= v7 - 1;
    }

    v19 = (*a1 + 8 * v20);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return i;
}

void *sub_2438E8304(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2438E83A8(a1, a2);
    v4 = a1[1];
    v5 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v4, v5);
    a1[1] = &v4[v5];
  }

  return a1;
}

char *sub_2438E83A8(void *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    sub_243980874();
  }

  result = sub_2438D8BEC(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[24 * v4];
  return result;
}

void sub_2438E83F4(void ***a1)
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
        sub_2438E8468(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_2438E8468(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 120;
      v7 = v4 - 120;
      v8 = v4 - 120;
      do
      {
        v9 = *v8;
        v8 -= 120;
        (*v9)(v7);
        v6 -= 120;
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

void *sub_2438E8528(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2856A0E98;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_2438E8588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_2438E85F0(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438E85B0(uint64_t a1, uint64_t a2)
{
  if (sub_2438CB7D8(a2, &unk_2856A0EE8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2438E85F0(int a1, uint64_t *__p)
{
  if (__p)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = __p[2];
    __p[2] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = __p[1];
    __p[1] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *__p;
    *__p = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    operator delete(__p);
  }
}

void sub_2438E86EC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_2438E86EC(a1, *a2);
    sub_2438E86EC(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_2438E676C(&v4);
    operator delete(a2);
  }
}

uint64_t sub_2438E874C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2438E877C(uint64_t a1, uint64_t a2)
{
  if (sub_2438CB7D8(a2, &unk_2856A0F50))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void **sub_2438E87BC(void **a1)
{
  sub_2438E87F0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2438E87F0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_2438CB880(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t **sub_2438E8844(uint64_t **a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 8);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = a1 + 1;
LABEL_10:
    v11 = operator new(0x40uLL);
    v11[8] = **a4;
    *(v11 + 6) = 0;
    *(v11 + 7) = 0;
    *(v11 + 5) = 0;
    sub_2438D8944(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

uint64_t sub_2438E890C(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = *a2;
  *a2 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = a3;
  *(a1 + 56) = 0;
  *a1 = &unk_2856A0F70;
  *(a1 + 40) = operator new[](0x400uLL);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void *sub_2438E8994(void *a1)
{
  *a1 = &unk_2856A0F70;
  v2 = a1[5];
  if (v2)
  {
    operator delete[](v2);
  }

  return sub_2438EBF7C(a1);
}

void sub_2438E89F4(void *a1)
{
  v1 = sub_2438E8994(a1);

  operator delete(v1);
}

uint64_t sub_2438E8A1C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = result;
    v3 = *(*result + 48);
    if (*(result + 72) == 1)
    {
      v3(result, (v1 - 3));
      (*(*v2 + 48))(v2, *(v2 + 64));
      v4 = **(v2 + 40);
      v5 = *v2;
      if (*(v2 + 48) == 1)
      {
        result = (*(v5 + 64))(v2, v4);
      }

      else
      {
        result = (*(v5 + 56))(v2, v4);
      }
    }

    else
    {
      result = (v3)(result, -*(result + 32));
      if (*(v2 + 32))
      {
        v6 = 0;
        do
        {
          v7 = *(*(v2 + 40) + 8 * v6);
          v8 = *v2;
          if (*(v2 + 48) == 1)
          {
            result = (*(v8 + 64))(v2, v7);
          }

          else
          {
            result = (*(v8 + 56))(v2, v7);
          }

          ++v6;
        }

        while (v6 < *(v2 + 32));
      }
    }

    *(v2 + 72) = 0;
    *(v2 + 32) = 0;
    *(v2 + 80) = 0;
  }

  return result;
}

uint64_t sub_2438E8BC4(uint64_t a1)
{
  sub_2438E8A1C(a1);
  (*(**(a1 + 8) + 24))(*(a1 + 8), (*(a1 + 24) - *(a1 + 16)));
  result = (*(**(a1 + 8) + 72))(*(a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_2438E8C48(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 32);
  if (!v4)
  {
    v6 = *(result + 40);
    *(result + 32) = 1;
    *v6 = a2;
    *(result + 80) = 1;
    return result;
  }

  if (*(result + 72) != 1)
  {
    v7 = *(result + 80);
    v8 = *(result + 40);
    v9 = (v8 + 8 * v4);
    v10 = *(v9 - 1);
    if (v7 == 1 || *(result + 64) + v10 != a2)
    {
      *(result + 64) = a2 - v10;
      v14 = 1;
      if (a2 - v10 == (a2 - v10))
      {
        v14 = 2;
      }

      *(result + 80) = v14;
    }

    else
    {
      v11 = v7 + 1;
      *(result + 80) = v11;
      if (v11 == 3)
      {
        v12 = v4 - 2;
        if (v12)
        {
          *(result + 32) = v12;
          v13 = *(v8 + 8 * v12);
          result = sub_2438E8A1C(result);
          **(v3 + 40) = v13;
        }

        *(v3 + 72) = 1;
        *(v3 + 32) = 3;
        return result;
      }
    }

    v15 = v4 + 1;
    *(result + 32) = v15;
    *v9 = a2;
    if (v15 != 128)
    {
      return result;
    }

LABEL_17:

    return sub_2438E8A1C(result);
  }

  if (**(result + 40) + *(result + 64) * v4 != a2)
  {
    result = sub_2438E8A1C(result);
    v17 = *(v3 + 32);
    v16 = *(v3 + 40);
    *(v3 + 32) = v17 + 1;
    *(v16 + 8 * v17) = a2;
    *(v3 + 80) = 1;
    return result;
  }

  v5 = v4 + 1;
  *(result + 32) = v5;
  if (v5 == 130)
  {
    goto LABEL_17;
  }

  return result;
}

double sub_2438E8D9C(uint64_t a1, uint64_t *a2, char a3)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = &unk_2856A0FC8;
  *(a1 + 8) = v3;
  *(a1 + 16) = a3;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 49) = 0u;
  return result;
}

uint64_t sub_2438E8DD8(unint64_t a1, uint64_t a2)
{
  (*(**(a1 + 8) + 48))(*(a1 + 8));
  *(a1 + 48) = *(a1 + 40);
  sub_2438E8E74(a1);
  v4 = sub_2438A9710(a2);
  v5 = *(*a1 + 24);

  return v5(a1, v4);
}

unint64_t sub_2438E8E74(unint64_t result)
{
  v1 = result;
  v3 = *(result + 40);
  v2 = *(result + 48);
  if (v3 == v2)
  {
    v11 = 0;
    v10 = 0;
    result = (*(**(result + 8) + 16))(*(result + 8), &v10, &v11);
    if ((result & 1) == 0)
    {
      goto LABEL_12;
    }

    v3 = v10;
    v2 = &v10[v11];
    *(v1 + 40) = v10;
    *(v1 + 48) = v2;
  }

  v4 = v3 + 1;
  *(v1 + 40) = v3 + 1;
  v5 = *v3;
  if (v5 < 0)
  {
    *(v1 + 24) = -v5;
    *(v1 + 64) = 0;
    return result;
  }

  *(v1 + 24) = (v5 + 3);
  *(v1 + 64) = 1;
  if (v4 == v2)
  {
    v11 = 0;
    v10 = 0;
    if ((*(**(v1 + 8) + 16))(*(v1 + 8), &v10, &v11))
    {
      v4 = v10;
      v6 = &v10[v11];
      *(v1 + 40) = v10;
      *(v1 + 48) = v6;
      goto LABEL_8;
    }

LABEL_12:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCB60(exception, "bad read in readByte");
    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

LABEL_8:
  *(v1 + 40) = v4 + 1;
  *(v1 + 56) = *v4;
  v7 = *(v1 + 16);
  result = sub_2438E93B4(v1);
  v8 = -(result & 1) ^ (result >> 1);
  if (!v7)
  {
    v8 = result;
  }

  *(v1 + 32) = v8;
  return result;
}

unint64_t sub_2438E901C(unint64_t result, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v3 + 24);
      if (!v4)
      {
        result = sub_2438E8E74(v3);
        v4 = *(v3 + 24);
      }

      if (v4 >= v2)
      {
        v5 = v2;
      }

      else
      {
        v5 = v4;
      }

      *(v3 + 24) = v4 - v5;
      if (*(v3 + 64) == 1)
      {
        *(v3 + 32) += *(v3 + 56) * v5;
      }

      else if (v4)
      {
        v7 = *(v3 + 40);
        v6 = *(v3 + 48);
        v8 = v5;
        do
        {
          if (v7 == v6)
          {
            v12 = 0;
            v11 = 0;
            result = (*(**(v3 + 8) + 16))(*(v3 + 8), &v11, &v12);
            if ((result & 1) == 0)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              sub_2438DCB60(exception, "bad read in readByte");
              __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
            }

            v7 = v11;
            v6 = &v11[v12];
            *(v3 + 40) = v11;
            *(v3 + 48) = v6;
          }

          *(v3 + 40) = v7 + 1;
          v9 = (*v7++ >> 7) ^ 1u;
          v8 -= v9;
        }

        while (v8);
      }

      v2 -= v5;
    }

    while (v2);
  }

  return result;
}

unint64_t sub_2438E916C(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  if (a4 && a3)
  {
    v7 = 0;
    while (!*(a4 + v7))
    {
      if (a3 == ++v7)
      {
        return result;
      }
    }
  }

  if (v7 < a3)
  {
    v8 = *(result + 24);
    while (1)
    {
      if (!v8)
      {
        result = sub_2438E8E74(v6);
        v8 = *(v6 + 24);
      }

      v9 = v8 >= a3 - v7 ? a3 - v7 : v8;
      if (*(v6 + 64) == 1)
      {
        break;
      }

      if (a4)
      {
        v10 = 0;
        if (v9)
        {
          v15 = (a4 + v7);
          v16 = v9;
          v17 = (a2 + 8 * v7);
          do
          {
            if (*v15++)
            {
              v19 = *(v6 + 16);
              result = sub_2438E93B4(v6);
              v20 = -(result & 1) ^ (result >> 1);
              if (!v19)
              {
                v20 = result;
              }

              *v17 = v20;
              ++v10;
            }

            ++v17;
            --v16;
          }

          while (v16);
        }

        goto LABEL_42;
      }

      if (*(v6 + 16))
      {
        if (v9)
        {
          v22 = (a2 + 8 * v7);
          v23 = v9;
          do
          {
            result = sub_2438E93B4(v6);
            *v22++ = -(result & 1) ^ (result >> 1);
            --v23;
          }

          while (v23);
          goto LABEL_50;
        }
      }

      else if (v9)
      {
        v24 = (a2 + 8 * v7);
        v25 = v9;
        do
        {
          result = sub_2438E93B4(v6);
          *v24++ = result;
          --v25;
        }

        while (v25);
LABEL_50:
        v10 = v9;
LABEL_42:
        v8 = *(v6 + 24) - v10;
        *(v6 + 24) = v8;
        v7 += v9;
        if (a4 && v7 < a3)
        {
          while (!*(a4 + v7))
          {
            if (++v7 >= a3)
            {
              return result;
            }
          }
        }

        goto LABEL_52;
      }

      v8 = *(v6 + 24);
      v7 += v9;
LABEL_52:
      if (v7 >= a3)
      {
        return result;
      }
    }

    if (a4)
    {
      if (v9)
      {
        v10 = 0;
        v11 = (a4 + v7);
        v12 = v9;
        v13 = (a2 + 8 * v7);
        do
        {
          if (*v11++)
          {
            *v13 = *(v6 + 32) + *(v6 + 56) * v10++;
          }

          ++v13;
          --v12;
        }

        while (v12);
        goto LABEL_41;
      }
    }

    else if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        *(a2 + 8 * v7 + 8 * i) = *(v6 + 32) + *(v6 + 56) * i;
      }

      v10 = v9;
      goto LABEL_41;
    }

    v10 = 0;
LABEL_41:
    *(v6 + 32) += *(v6 + 56) * v10;
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_2438E93B4(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v3 == v2)
  {
    v13 = 0;
    v12 = 0;
    if (((*(**(a1 + 8) + 16))(*(a1 + 8), &v12, &v13) & 1) == 0)
    {
LABEL_13:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCB60(exception, "bad read in readByte");
      __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
    }

    v3 = v12;
    v2 = &v12[v13];
    *(a1 + 40) = v12;
    *(a1 + 48) = v2;
  }

  v4 = (v3 + 1);
  *(a1 + 40) = v3 + 1;
  result = *v3;
  if (result < 0)
  {
    v6 = result & 0x7F;
    for (i = 7; ; i += 7)
    {
      if (v4 == v2)
      {
        v13 = 0;
        v12 = 0;
        if (((*(**(a1 + 8) + 16))(*(a1 + 8), &v12, &v13) & 1) == 0)
        {
          goto LABEL_13;
        }

        v4 = v12;
        v2 = &v12[v13];
        *(a1 + 40) = v12;
        *(a1 + 48) = v2;
      }

      v8 = (v4 + 1);
      *(a1 + 40) = v4 + 1;
      v9 = *v4;
      v10 = *v4;
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      v6 |= (v10 & 0x7F) << i;
      v4 = v8;
    }

    return (v10 << i) | v6;
  }

  return result;
}

uint64_t sub_2438E9548(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2856A0FC8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return nullsub_1(a1);
}

void sub_2438E95C4(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2856A0FC8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = nullsub_1(a1);

  operator delete(v3);
}

uint64_t sub_2438E9644(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == *(a1 + 48))
  {
    v7 = 0;
    v6 = 0;
    if (((*(**(a1 + 8) + 16))(*(a1 + 8), &v6, &v7) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCB60(exception, "bad read in RleDecoderV2::readByte");
      __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
    }

    v2 = v6;
    v3 = &v6[v7];
    *(a1 + 40) = v6;
    *(a1 + 48) = v3;
  }

  *(a1 + 40) = v2 + 1;
  return *v2;
}

uint64_t sub_2438E971C(uint64_t a1, uint64_t *a2, char a3, uint64_t a4)
{
  v6 = *a2;
  *a2 = 0;
  *a1 = &unk_2856A1030;
  *(a1 + 8) = v6;
  *(a1 + 16) = a3;
  *(a1 + 17) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  sub_2438DF2FC(a1 + 160, a4, 0);
  sub_2438DF2FC(a1 + 200, a4, 0);
  return a1;
}

void sub_2438E97B8(_Unwind_Exception *a1)
{
  sub_2438DF670(v1 + 160);
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  nullsub_1(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2438E9810(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 8) + 48))(*(a1 + 8));
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  v4 = sub_2438A9710(a2);
  v5 = *(*a1 + 24);

  return v5(a1, v4);
}

uint64_t sub_2438E98A8(uint64_t result, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      if (v2 >= 0x40)
      {
        v4 = 64;
      }

      else
      {
        v4 = v2;
      }

      result = (*(*v3 + 32))(v3, v6, v4, 0);
      v2 -= v4;
    }

    while (v2);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2438E995C(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = result;
    for (i = 0; i < a3; i += result)
    {
      v9 = i;
      while (a4)
      {
        if (*(a4 + v9))
        {
          i = v9;
          break;
        }

        if (a3 == ++v9)
        {
          return result;
        }
      }

      if (*(v7 + 32) == *(v7 + 24))
      {
        *(v7 + 96) = 0;
        *(v7 + 88) = 0;
        v10 = sub_2438E9644(v7);
        *(v7 + 17) = v10;
      }

      else
      {
        v10 = *(v7 + 17);
      }

      v11 = a3 - i;
      v12 = v10 >> 6;
      if (v10 >> 6 > 1)
      {
        if (v12 == 2)
        {
          result = sub_2438E9CC0(v7, a2, i, v11, a4);
        }

        else
        {
          result = sub_2438E9FD8(v7, a2, i, v11, a4);
        }
      }

      else if (v12)
      {
        result = sub_2438E9B7C(v7, a2, i, v11, a4);
      }

      else
      {
        result = sub_2438E9A44(v7, a2, i, v11, a4);
      }
    }
  }

  return result;
}

unint64_t sub_2438E9A44(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (*(a1 + 32) == *(a1 + 24))
  {
    v10 = 0;
    v11 = *(a1 + 17);
    v12 = (v11 >> 3) & 7;
    *(a1 + 64) = v12 + 1;
    *(a1 + 24) = (v11 & 7) + 3;
    *(a1 + 32) = 0;
    v13 = 8 * v12;
    do
    {
      v10 |= sub_2438E9644(a1) << v13;
      v13 -= 8;
    }

    while (v13 != -8);
    *(a1 + 72) = v10;
    if (*(a1 + 16) == 1)
    {
      *(a1 + 72) = -(v10 & 1) ^ (v10 >> 1);
    }
  }

  v14 = *(a1 + 32);
  if (*(a1 + 24) - v14 >= a4)
  {
    result = a4;
  }

  else
  {
    result = *(a1 + 24) - v14;
  }

  if (a5)
  {
    if (result + a3 > a3)
    {
      v16 = (a2 + 8 * a3);
      v17 = (a5 + a3);
      v18 = result;
      do
      {
        if (*v17++)
        {
          *v16 = *(a1 + 72);
          ++*(a1 + 32);
        }

        ++v16;
        --v18;
      }

      while (v18);
    }
  }

  else if (result + a3 > a3)
  {
    v20 = *(a1 + 72);
    v21 = (a2 + 8 * a3);
    v22 = result;
    do
    {
      *v21++ = v20;
      ++*(a1 + 32);
      --v22;
    }

    while (v22);
  }

  return result;
}

unint64_t sub_2438E9B7C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  if (v10 == v11)
  {
    v12 = *(a1 + 17);
    *(a1 + 88) = byte_24398D7EA[(v12 >> 1) & 0x1F];
    *(a1 + 24) = (v12 & 1) << 8;
    v13 = sub_2438E9644(a1);
    v10 = 0;
    v11 = (*(a1 + 24) | v13) + 1;
    *(a1 + 24) = v11;
    *(a1 + 32) = 0;
  }

  v14 = v11 - v10;
  if (v14 < a4)
  {
    a4 = v14;
  }

  *(a1 + 32) += sub_2438EA2F4(a1, a2, a3, a4, *(a1 + 88), a5);
  if (*(a1 + 16) == 1)
  {
    if (a5)
    {
      if (a4 + a3 > a3)
      {
        v15 = (a2 + 8 * a3);
        v16 = (a5 + a3);
        v17 = a4;
        do
        {
          if (*v16++)
          {
            *v15 = -(*v15 & 1) ^ (*v15 >> 1);
          }

          ++v15;
          --v17;
        }

        while (v17);
      }
    }

    else if (a4 + a3 > a3)
    {
      v19 = (a2 + 8 * a3);
      v20 = a4;
      do
      {
        *v19 = -(*v19 & 1) ^ (*v19 >> 1);
        ++v19;
        --v20;
      }

      while (v20);
    }
  }

  return a4;
}

unint64_t sub_2438E9CC0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  if (v11 == v10)
  {
    v12 = *(a1 + 17);
    *(a1 + 88) = byte_24398D7EA[(v12 >> 1) & 0x1F];
    *(a1 + 24) = (v12 & 1) << 8;
    *(a1 + 24) = (*(a1 + 24) | sub_2438E9644(a1)) + 1;
    *(a1 + 32) = 0;
    v13 = sub_2438E9644(a1);
    *(a1 + 64) = (v13 >> 5) + 1;
    *(a1 + 100) = byte_24398D7EA[v13 & 0x1F];
    v14 = sub_2438E9644(a1);
    v15 = v14 & 0x1F;
    if (v15)
    {
      v16 = (v14 >> 5) + 1;
      v17 = *(a1 + 64);
      if (v17)
      {
        v18 = 0;
        v19 = 8 * v17 - 8;
        do
        {
          --v17;
          v18 |= sub_2438E9644(a1) << v19;
          v19 -= 8;
        }

        while (v17);
        v20 = 8 * *(a1 + 64) - 1;
      }

      else
      {
        v18 = 0;
        LOBYTE(v20) = -1;
      }

      v21 = 1 << v20;
      if ((v21 & v18) != 0)
      {
        v22 = -(v18 & ~v21);
      }

      else
      {
        v22 = v18;
      }

      *(a1 + 120) = v22;
      sub_2438DEE58(a1 + 160, *(a1 + 24));
      *(a1 + 104) = 0;
      sub_2438EA2F4(a1, *(a1 + 176), 0, *(a1 + 24), *(a1 + 88), 0);
      *(a1 + 92) = 0;
      *(a1 + 96) = 0;
      sub_2438DEE58(a1 + 200, v15);
      *(a1 + 112) = 0;
      v23 = v16 + *(a1 + 100);
      if (v23 < 0x41)
      {
        sub_2438EA2F4(a1, *(a1 + 216), 0, v15, byte_24398D80A[v23], 0);
        *(a1 + 92) = 0;
        *(a1 + 96) = 0;
        *(a1 + 144) = ~(-1 << *(a1 + 100));
        sub_2438EA408(a1);
        v10 = *(a1 + 24);
        v11 = *(a1 + 32);
        goto LABEL_13;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCB60(exception, "Corrupt PATCHED_BASE encoded data (patchBitSize + pgw > 64)!");
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_2438DCB60(exception, "Corrupt PATCHED_BASE encoded data (pl==0)!");
    }

    __cxa_throw(exception, &unk_2856A0970, std::runtime_error::~runtime_error);
  }

LABEL_13:
  v24 = v10 - v11;
  if (v24 < a4)
  {
    a4 = v24;
  }

  if (a4 + a3 > a3)
  {
    v25 = (a2 + 8 * a3);
    v26 = (a5 + a3);
    v27 = a4;
    do
    {
      if (!a5 || *v26)
      {
        v28 = *(a1 + 104);
        if (v28 == *(a1 + 152))
        {
          *v25 = ((*(a1 + 136) << *(a1 + 88)) | *(*(a1 + 176) + 8 * v28)) + *(a1 + 120);
          v29 = *(a1 + 112) + 1;
          *(a1 + 112) = v29;
          if (v29 < *(a1 + 224))
          {
            sub_2438EA408(a1);
            *(a1 + 152) += *(a1 + 104);
          }
        }

        else
        {
          *v25 = *(*(a1 + 176) + 8 * v28) + *(a1 + 120);
        }

        ++*(a1 + 32);
        ++*(a1 + 104);
      }

      ++v25;
      ++v26;
      --v27;
    }

    while (v27);
  }

  return a4;
}

unint64_t sub_2438E9FD8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  if (v10 == v11)
  {
    v12 = *(a1 + 17);
    v13 = (v12 >> 1) & 0x1F;
    if (v13)
    {
      LODWORD(v13) = byte_24398D7EA[v13];
    }

    *(a1 + 88) = v13;
    *(a1 + 24) = (v12 & 1) << 8;
    v14 = sub_2438E9644(a1);
    v15 = *(a1 + 24);
    *(a1 + 56) = 0;
    *(a1 + 24) = (v15 | v14) + 1;
    *(a1 + 32) = 0;
    if (*(a1 + 16))
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = sub_2438E9644(a1);
        v16 |= (v18 & 0x7F) << v17;
        v17 += 7;
      }

      while (v18 < 0);
      v19 = -(v16 & 1) ^ (v16 >> 1);
    }

    else
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = sub_2438E9644(a1);
        v19 |= (v21 & 0x7F) << v20;
        v20 += 7;
      }

      while (v21 < 0);
    }

    v22 = 0;
    v23 = 0;
    *(a1 + 72) = v19;
    *(a1 + 80) = v19;
    do
    {
      v24 = sub_2438E9644(a1);
      v22 |= (v24 & 0x7F) << v23;
      v23 += 7;
    }

    while (v24 < 0);
    *(a1 + 56) = -(v22 & 1) ^ (v22 >> 1);
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
  }

  v25 = v11 - v10;
  if (v25 < a4)
  {
    a4 = v25;
  }

  v26 = a4 + a3;
  v27 = a4 + a3 > a3;
  v28 = a3;
  if (a5 && a4 + a3 > a3)
  {
    v28 = a3;
    while (!*(a5 + v28))
    {
      if (++v28 >= v26)
      {
        goto LABEL_25;
      }
    }

    v27 = 1;
  }

  if (!v10 && v27)
  {
    *(a2 + 8 * v28++) = *(a1 + 72);
    v10 = *(a1 + 32) + 1;
    *(a1 + 32) = v10;
  }

LABEL_25:
  v29 = *(a1 + 88);
  v30 = v28 < v26;
  if (v29)
  {
    if (a5 && v28 < v26)
    {
      while (!*(a5 + v28))
      {
        if (++v28 >= v26)
        {
          goto LABEL_42;
        }
      }

      v30 = 1;
    }

    if (v30 && v10 <= 1)
    {
      v35 = *(a1 + 56) + *(a1 + 72);
      *(a2 + 8 * v28++) = v35;
      *(a1 + 80) = v35;
      ++*(a1 + 32);
    }

LABEL_42:
    *(a1 + 32) += sub_2438EA2F4(a1, a2, v28, v26 - v28, v29, a5);
    if ((*(a1 + 56) & 0x8000000000000000) != 0)
    {
      if (v26 > v28)
      {
        v40 = a3 + a4 - v28;
        v41 = (a2 + 8 * v28);
        v42 = (a5 + v28);
        do
        {
          if (!a5 || *v42)
          {
            v43 = *(a1 + 80) - *v41;
            *v41 = v43;
            *(a1 + 80) = v43;
          }

          ++v41;
          ++v42;
          --v40;
        }

        while (v40);
      }
    }

    else if (v26 > v28)
    {
      v36 = a3 + a4 - v28;
      v37 = (a2 + 8 * v28);
      v38 = (a5 + v28);
      do
      {
        if (!a5 || *v38)
        {
          v39 = *v37 + *(a1 + 80);
          *v37 = v39;
          *(a1 + 80) = v39;
        }

        ++v37;
        ++v38;
        --v36;
      }

      while (v36);
    }
  }

  else if (v28 < v26)
  {
    v31 = a3 + a4 - v28;
    v32 = (a2 + 8 * v28);
    v33 = (a5 + v28);
    do
    {
      if (!a5 || *v33)
      {
        v34 = *(a1 + 56) + *(a1 + 80);
        *v32 = v34;
        *(a1 + 80) = v34;
        ++*(a1 + 32);
      }

      ++v32;
      ++v33;
      --v31;
    }

    while (v31);
  }

  return a4;
}

uint64_t sub_2438EA2F4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = a4 + a3;
  if (a4 + a3 > a3)
  {
    v9 = a3;
    v12 = 0;
    while (1)
    {
      if (a6 && !*(a6 + v9))
      {
        goto LABEL_11;
      }

      v13 = *(a1 + 92);
      v14 = *(a1 + 92);
      if (v13 >= a5)
      {
        v15 = 0;
        LODWORD(v17) = a5;
        if (!a5)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v15 = 0;
        v16 = *(a1 + 96);
        v17 = a5;
        do
        {
          v15 = (v15 << v13) | v16 & ~(-1 << v14);
          v17 -= v13;
          v16 = sub_2438E9644(a1);
          v13 = 8;
          *(a1 + 92) = 8;
          *(a1 + 96) = v16;
          v14 = 8;
        }

        while (v17 > 8);
        if (!v17)
        {
          goto LABEL_10;
        }
      }

      v18 = v13 - v17;
      *(a1 + 92) = v18;
      v15 = (v15 << v17) | (*(a1 + 96) >> v18) & ~(-1 << v17);
LABEL_10:
      *(a2 + 8 * v9) = v15;
      ++v12;
LABEL_11:
      if (++v9 == v6)
      {
        return v12;
      }
    }
  }

  return 0;
}

uint64_t sub_2438EA408(uint64_t result)
{
  v1 = *(result + 112);
  v2 = *(result + 216);
  v3 = *(result + 100);
  v4 = *(v2 + 8 * v1) >> v3;
  *(result + 128) = v4;
  v5 = *(result + 144);
  v6 = v5 & *(v2 + 8 * v1);
  *(result + 136) = v6;
  if (v4 == 255)
  {
    v7 = 0;
    v8 = v1 + 1;
    while (!v6)
    {
      v7 += 255;
      *(result + 152) = v7;
      *(result + 112) = v8;
      v9 = *(v2 + 8 * v8) >> v3;
      *(result + 128) = v9;
      v6 = *(v2 + 8 * v8) & v5;
      *(result + 136) = v6;
      ++v8;
      if (v9 != 255)
      {
        v4 = v9;
        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  *(result + 152) = v7 + v4;
  return result;
}

uint64_t sub_2438EA48C(void *a1)
{
  *a1 = &unk_2856A1030;
  sub_2438DF670((a1 + 25));
  sub_2438DF670((a1 + 20));
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return nullsub_1(a1);
}

void sub_2438EA518(void *a1)
{
  *a1 = &unk_2856A1030;
  sub_2438DF670((a1 + 25));
  sub_2438DF670((a1 + 20));
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = nullsub_1(a1);

  operator delete(v3);
}

uint64_t sub_2438EA5A8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, double a6)
{
  if (a6 > 1.0 || a6 <= 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v23, a6);
    v21 = std::string::insert(&v23, 0, "Invalid p value: ");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    sub_2438DCBC4(exception, &v24);
    __cxa_throw(exception, &unk_2856A0988, std::runtime_error::~runtime_error);
  }

  if ((a5 & 1) == 0)
  {
    *(a1 + 88) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 104) = 0u;
    if (a4 + a3 > a3)
    {
      v6 = (a2 + 8 * a3);
      v7 = a4;
      do
      {
        v9 = *v6++;
        v8 = v9;
        v10 = 64 - __clz(v9);
        if (!v9)
        {
          v10 = 0;
        }

        v11 = &byte_24398D80A[v10];
        if (v8 >= 0)
        {
          v12 = v11;
        }

        else
        {
          v12 = &byte_24398D84A;
        }

        v13 = *v12;
        if (v13 > 0x40)
        {
          v14 = 31;
        }

        else
        {
          v14 = byte_24398D88C[v13];
        }

        ++*(a1 + 88 + 4 * v14);
        --v7;
      }

      while (v7);
    }
  }

  v15 = ((1.0 - a6) * a4);
  for (i = 0x1Fu; ; --i)
  {
    v17 = i;
    v15 -= *(a1 + 88 + 4 * i);
    if (v15 < 0)
    {
      break;
    }

    if (!v17)
    {
      return 0;
    }
  }

  return byte_24398D7EA[i];
}

void sub_2438EA754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2438EA7B4(uint64_t a1, uint64_t *a2, char a3, char a4)
{
  v5 = *a2;
  *a2 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = a3;
  *(a1 + 56) = 0;
  *a1 = &unk_2856A1080;
  *(a1 + 64) = a4;
  *(a1 + 80) = 0;
  *(a1 + 40) = operator new[](0x1000uLL);
  *(a1 + 216) = operator new[](0x1000uLL);
  *(a1 + 224) = operator new[](0x1000uLL);
  *(a1 + 232) = operator new[](0x1000uLL);
  *(a1 + 240) = operator new[](0x1000uLL);
  return a1;
}

uint64_t sub_2438EA868(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = *(result + 40);
  if (v4 == 1)
  {
    *(result + 80) = a2 - *v5;
    *(result + 32) = 2;
    v5[1] = a2;
    if (*v5 == a2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0x200000000;
    }

    goto LABEL_11;
  }

  if (!v4)
  {
LABEL_3:
    *(v3 + 32) = 1;
    *v5 = a2;
    v6 = 0x100000001;
LABEL_11:
    *(v3 + 68) = v6;
    return result;
  }

  v7 = &v5[v4];
  v8 = *(v7 - 1);
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  if (*(result + 80) || v8 != a2)
  {
    v12 = *(result + 68);
    if (v12 >= 3)
    {
      if (v12 >= 0xB)
      {
        BYTE8(v16) = 1;
        v13 = 3;
      }

      else
      {
        v13 = 0;
      }

      LODWORD(v15[0]) = v13;
      result = sub_2438EB00C(result, v15);
      v12 = *(v3 + 68);
      v4 = *(v3 + 32);
    }

    if (v12 - 1 <= 1 && *(*(v3 + 40) + 8 * v4 - 8) != a2)
    {
      *(v3 + 68) = 0;
      *(v3 + 72) = v12;
    }

    v5 = *(v3 + 40);
    if (!v4)
    {
      goto LABEL_3;
    }

    v14 = &v5[v4];
    *(v3 + 80) = a2 - *(v14 - 1);
    *(v3 + 32) = v4 + 1;
    *v14 = a2;
    v11 = *(v3 + 72) + 1;
    *(v3 + 72) = v11;
  }

  else
  {
    *(result + 32) = v4 + 1;
    *v7 = a2;
    v9 = *(result + 72);
    if (v9)
    {
      *(result + 32) = v4 - 2;
      *(result + 68) = 3;
      *(result + 72) = v9 - 2;
      sub_2438EAA44(result, v15);
      result = sub_2438EB00C(v3, v15);
      v10 = *(v3 + 40);
      *v10 = a2;
      v10[1] = a2;
      v10[2] = a2;
      *(v3 + 32) = 3;
      v11 = *(v3 + 68);
    }

    else
    {
      v11 = *(result + 68) + 1;
      *(result + 68) = v11;
    }
  }

  if (v11 == 512)
  {
    sub_2438EAA44(v3, v15);
    return sub_2438EB00C(v3, v15);
  }

  return result;
}

void sub_2438EAA44(void *a1, uint64_t a2)
{
  v4 = a1[4];
  if (v4 <= 3)
  {
    goto LABEL_15;
  }

  v5 = 0;
  v6 = 0;
  LOBYTE(v7) = 1;
  *(a2 + 88) = 1;
  v8 = a1[5];
  v9 = *v8;
  *(a2 + 80) = *v8;
  v10 = v8[1];
  v11 = v10 - v9;
  v12 = a1[30];
  v13 = *(a2 + 40);
  *(a2 + 40) = v13 + 1;
  *(v12 + 8 * v13) = v10 - v9;
  v14 = v4 - 1;
  LOBYTE(v4) = 1;
  v15 = v9;
  LOBYTE(v16) = 1;
  do
  {
    v17 = v5 + 1;
    v19 = v8[v5];
    v18 = v8[v5 + 1];
    v20 = *(a2 + 80);
    if (v18 < v20)
    {
      v20 = v8[v5 + 1];
    }

    if (v15 <= v18)
    {
      v15 = v8[v5 + 1];
    }

    v21 = v18 - v19;
    *(a2 + 80) = v20;
    if (v17 >= 2)
    {
      if (v21 < 0)
      {
        v21 = v19 - v18;
      }

      v22 = *(a2 + 40);
      *(a2 + 40) = v22 + 1;
      *(v12 + 8 * v22) = v21;
      v23 = *(v12 + 8 * v5);
      if (v6 <= v23)
      {
        v6 = v23;
      }
    }

    v7 = v7 & (v18 >= v19);
    LODWORD(v4) = v4 & (v18 <= v19);
    v16 = (v18 - v19 == v11) & v16;
    v5 = v17;
  }

  while (v14 != v17);
  *(a2 + 88) = v16;
  v24 = *(a2 + 80);
  if ((v24 ^ v15) < 0 && ((v15 - v24) ^ v15) < 0)
  {
LABEL_15:
    sub_2438EB0DC(a1, a2);
    *(a2 + 52) = sub_2438EA5A8(a1, a1[28], 0, a1[4], 0, 1.0);
LABEL_16:
    v25 = 1;
LABEL_17:
    *a2 = v25;
    return;
  }

  if (v15 == v24)
  {
    if ((v16 & 1) == 0)
    {
      v46 = v15;
      exception = __cxa_allocate_exception(0x10uLL);
      v48 = a2;
      v49 = exception;
      std::to_string(&v71, *(v48 + 80));
      v50 = std::string::append(&v71, "==");
      v51 = *&v50->__r_.__value_.__l.__data_;
      v72.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
      *&v72.__r_.__value_.__l.__data_ = v51;
      v50->__r_.__value_.__l.__size_ = 0;
      v50->__r_.__value_.__r.__words[2] = 0;
      v50->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v70, v46);
      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = &v70;
      }

      else
      {
        v52 = v70.__r_.__value_.__r.__words[0];
      }

      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v70.__r_.__value_.__l.__size_;
      }

      v54 = std::string::append(&v72, v52, size);
      v55 = *&v54->__r_.__value_.__l.__data_;
      v73.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v73.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v73, ", isFixedDelta cannot be false");
      v57 = *&v56->__r_.__value_.__l.__data_;
      v74.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v74.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      sub_2438DCBC4(v49, &v74);
      __cxa_throw(v49, &unk_2856A0988, std::runtime_error::~runtime_error);
    }

    if (v18 != v19)
    {
      v58 = v15;
      v59 = __cxa_allocate_exception(0x10uLL);
      v60 = a2;
      v61 = v59;
      std::to_string(&v71, *(v60 + 80));
      v62 = std::string::append(&v71, "==");
      v63 = *&v62->__r_.__value_.__l.__data_;
      v72.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
      *&v72.__r_.__value_.__l.__data_ = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v70, v58);
      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = &v70;
      }

      else
      {
        v64 = v70.__r_.__value_.__r.__words[0];
      }

      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v65 = v70.__r_.__value_.__l.__size_;
      }

      v66 = std::string::append(&v72, v64, v65);
      v67 = *&v66->__r_.__value_.__l.__data_;
      v73.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
      *&v73.__r_.__value_.__l.__data_ = v67;
      v66->__r_.__value_.__l.__size_ = 0;
      v66->__r_.__value_.__r.__words[2] = 0;
      v66->__r_.__value_.__r.__words[0] = 0;
      v68 = std::string::append(&v73, ", currDelta should be zero");
      v69 = *&v68->__r_.__value_.__l.__data_;
      v74.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
      *&v74.__r_.__value_.__l.__data_ = v69;
      v68->__r_.__value_.__l.__size_ = 0;
      v68->__r_.__value_.__r.__words[2] = 0;
      v68->__r_.__value_.__r.__words[0] = 0;
      sub_2438DCBC4(v61, &v74);
      __cxa_throw(v61, &unk_2856A0988, std::runtime_error::~runtime_error);
    }

    *(a2 + 8) = 0;
    goto LABEL_22;
  }

  if (v16)
  {
    *a2 = 3;
    *(a2 + 8) = v11;
  }

  else
  {
    if (v10 != v9)
    {
      v26 = 64 - __clz(v6);
      v27 = v6 ? v26 : 0;
      *(a2 + 64) = byte_24398D80A[v27];
      if ((v7 | v4))
      {
LABEL_22:
        v25 = 3;
        goto LABEL_17;
      }
    }

    sub_2438EB0DC(a1, a2);
    v28 = sub_2438EA5A8(a1, a1[28], 0, a1[4], 0, 1.0);
    *(a2 + 52) = v28;
    v29 = a1[4];
    v30 = (v29 * 0.1);
    v31 = a1 + 11;
    v32 = 0x1Fu;
    while (1)
    {
      v33 = v32;
      v30 -= *(v31 + v32);
      if (v30 < 0)
      {
        break;
      }

      --v32;
      if (!v33)
      {
        v34 = 0;
        goto LABEL_35;
      }
    }

    v34 = byte_24398D7EA[v32];
LABEL_35:
    *(a2 + 48) = v34;
    if ((v28 - v34) < 2)
    {
      goto LABEL_16;
    }

    if (v29)
    {
      v35 = a1[5];
      v36 = a1[29];
      v37 = v29;
      do
      {
        v38 = *v35++;
        v39 = v38 - *(a2 + 80);
        v40 = *(a2 + 32);
        *(a2 + 32) = v40 + 1;
        *(v36 + 8 * v40) = v39;
        --v37;
      }

      while (v37);
    }

    else
    {
      v36 = a1[29];
    }

    v41 = sub_2438EA5A8(a1, v36, 0, v29, 0, 0.95);
    v42 = 0;
    *(a2 + 56) = v41;
    v43 = 0x1Fu;
    while (1)
    {
      v44 = v43;
      v42 -= *(v31 + v43);
      if (v42 < 0)
      {
        break;
      }

      --v43;
      if (!v44)
      {
        v45 = 0;
        goto LABEL_46;
      }
    }

    v45 = byte_24398D7EA[v43];
LABEL_46:
    *(a2 + 60) = v45;
    if (v45 == v41)
    {
      goto LABEL_16;
    }

    *a2 = 2;

    sub_2438EB120(a1, a2);
  }
}

void sub_2438EAF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
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

  if (v34)
  {
    __cxa_free_exception(v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2438EB00C(uint64_t result, int *a2)
{
  if (*(result + 32))
  {
    v2 = result;
    v3 = *a2;
    if (*a2 > 1)
    {
      if (v3 == 2)
      {
        result = sub_2438EB6DC(result, a2);
        goto LABEL_11;
      }

      if (v3 == 3)
      {
        result = sub_2438EB948(result, a2);
        goto LABEL_11;
      }
    }

    else
    {
      if (!v3)
      {
        result = sub_2438EB4C0(result);
        goto LABEL_11;
      }

      if (v3 == 1)
      {
        result = sub_2438EB5E0(result, a2);
LABEL_11:
        *(v2 + 32) = 0;
        *(v2 + 80) = 0;
        return result;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCACC(exception, "Not implemented yet");
    __cxa_throw(exception, &unk_2856A0958, std::logic_error::~logic_error);
  }

  return result;
}

uint64_t sub_2438EB0DC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *(result + 48);
    v4 = *(result + 224);
    v5 = *(result + 40);
    do
    {
      v7 = *v5++;
      v6 = v7;
      v8 = (2 * v7) ^ (v7 >> 63);
      if (v3)
      {
        v6 = v8;
      }

      v9 = *(a2 + 24);
      *(a2 + 24) = v9 + 1;
      *(v4 + 8 * v9) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_2438EB120(void *a1, uint64_t a2)
{
  v4 = a1[4];
  *(a2 + 76) = v4 / 0x14;
  v5 = *(a2 + 56);
  v6 = *(a2 + 60) - v5;
  *(a2 + 68) = v6;
  if (v6 >= 0x41)
  {
    *(a2 + 68) = 64;
  }

  else
  {
    v7 = byte_24398D80A[v6];
    *(a2 + 68) = v7;
    if (v7 != 64)
    {
      v8 = ~(-1 << v5);
      goto LABEL_6;
    }
  }

  *(a2 + 68) = 56;
  *(a2 + 56) = 8;
  v8 = 255;
LABEL_6:
  v34 = 0;
  v35 = 0;
  v36 = 0;
  __p = 0;
  v32 = 0;
  v33 = 0;
  v9 = 0;
  if (!v4)
  {
    v11 = 0;
    *(a2 + 76) = 0;
LABEL_17:
    v15 = 0;
    goto LABEL_21;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a1[29];
  do
  {
    if (*(v13 + 8 * v10) > v8)
    {
      if (v10 - v12 > v11)
      {
        v11 = v10 - v12;
      }

      v30 = v10 - v12;
      sub_2439867B8(&v34, &v30);
      v30 = *(a1[29] + 8 * v10) >> *(a2 + 56);
      sub_2439867B8(&__p, &v30);
      v13 = a1[29];
      ++v9;
      *(v13 + 8 * v10) &= v8;
      v4 = a1[4];
      v12 = v10;
    }

    ++v10;
  }

  while (v10 < v4);
  *(a2 + 76) = v9;
  if (!v11 && v9)
  {
    *(a2 + 72) = 1;
    v14 = __p;
LABEL_27:
    v19 = 0;
    v20 = 0;
    v21 = v34;
    v22 = *(a2 + 68);
    v23 = a1[27];
    do
    {
      v24 = v21[v20];
      v25 = v14[v20];
      if (v24 >= 256)
      {
        v19 += (v24 - 256) / 0xFFuLL + 1;
        do
        {
          v26 = v24;
          v27 = *(a2 + 16);
          *(a2 + 16) = v27 + 1;
          *(v23 + 8 * v27) = 255 << v22;
          v24 = v26 - 255;
        }

        while (v26 > 0x1FE);
      }

      ++v20;
      v28 = (v24 << v22) | v25;
      v29 = *(a2 + 16);
      *(a2 + 16) = v29 + 1;
      *(v23 + 8 * v29) = v28;
      ++v19;
    }

    while (v19 < v9);
    goto LABEL_32;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    v16 = &byte_24398D84A;
    v17 = 1;
    goto LABEL_24;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v15 = 64 - __clz(v11);
LABEL_21:
  v16 = &byte_24398D80A[v15];
  if (v11 == 511)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

LABEL_24:
  v18 = *v16;
  *(a2 + 72) = v18;
  if (v18 > 8)
  {
    v9 += v17;
    *(a2 + 72) = 8;
    *(a2 + 76) = v9;
  }

  v14 = __p;
  if (v9)
  {
    goto LABEL_27;
  }

LABEL_32:
  if (v14)
  {
    v32 = v14;
    operator delete(v14);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }
}

void sub_2438EB39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

uint64_t sub_2438EB3CC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    if (!*(a1 + 72))
    {
      v3 = *(a1 + 68);
      if (!v3)
      {
        goto LABEL_5;
      }

      if (v3 > 2)
      {
        if (v3 >= 0xB)
        {
          LODWORD(v4[0]) = 3;
          BYTE8(v5) = 1;
        }

        goto LABEL_4;
      }

      *(a1 + 68) = 0;
      *(a1 + 72) = v3;
    }

    sub_2438EAA44(a1, v4);
LABEL_4:
    sub_2438EB00C(a1, v4);
  }

LABEL_5:
  (*(**(a1 + 8) + 24))(*(a1 + 8), (*(a1 + 24) - *(a1 + 16)));
  result = (*(**(a1 + 8) + 72))(*(a1 + 8));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_2438EB4C0(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = (2 * **(a1 + 40)) ^ (**(a1 + 40) >> 63);
  }

  else
  {
    v2 = **(a1 + 40);
  }

  if (v2 < 0)
  {
    v4 = &byte_24398D84A;
  }

  else
  {
    v3 = 64 - __clz(v2);
    if (!v2)
    {
      v3 = 0;
    }

    v4 = &byte_24398D80A[v3];
  }

  v5 = *v4;
  v6 = (v5 & 7) == 0;
  v7 = v5 >> 3;
  if ((v5 & 7) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  v9 = (__PAIR64__(v7, v5 & 7) - 1) >> 32;
  v10 = *(a1 + 68) - 3;
  *(a1 + 68) = v10;
  result = (*(*a1 + 48))(a1, (v10 | (8 * (v7 - v6))));
  if ((v9 & 0x80000000) == 0)
  {
    v12 = v7 + v8 + 1;
    v13 = 8 * v9;
    do
    {
      result = (*(*a1 + 48))(a1, (v2 >> v13));
      --v12;
      v13 -= 8;
    }

    while (v12 > 0);
  }

  *(a1 + 68) = 0;
  return result;
}

uint64_t sub_2438EB5E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 52);
  if (*(a1 + 64) == 1)
  {
    if (v3 > 0x40)
    {
      v3 = 0x40u;
      goto LABEL_7;
    }

    v3 = byte_24398D84B[v3];
  }

  if (v3 <= 0x40)
  {
LABEL_7:
    v4 = (2 * byte_24398D88C[v3]) | 0x40;
    goto LABEL_8;
  }

  v4 = 126;
LABEL_8:
  v5 = *(a1 + 72) - 1;
  *(a1 + 72) = v5;
  (*(*a1 + 48))(a1, (BYTE1(v5) & 1 | v4));
  (*(*a1 + 48))(a1, v5);
  result = sub_2438EBB80(a1, *(a1 + 224), 0, *(a1 + 32), v3);
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_2438EB6DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4 > 0x40)
  {
    v5 = 190;
  }

  else
  {
    v5 = (2 * byte_24398D88C[v4]) | 0x80;
  }

  v6 = *(a1 + 72) - 1;
  *(a1 + 72) = v6;
  v7 = *(a2 + 80);
  v8 = v7;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = -v7;
    *(a2 + 80) = -v7;
  }

  v9 = 64 - __clz(v8);
  if (!v8)
  {
    v9 = 0;
  }

  v10 = byte_24398D80A[v9] + 1;
  v11 = (v10 & 7) == 0;
  v12 = v10 >> 3;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    *(a2 + 80) = (1 << (8 * v13 - 1)) | v8;
  }

  v14 = (v6 >> 8) & 1 | v5;
  v15 = *(a2 + 68);
  if (v15 > 0x40)
  {
    v16 = 31;
  }

  else
  {
    v16 = byte_24398D88C[v15];
  }

  v17 = v16 | (32 * (v13 - 1));
  v18 = (32 * *(a2 + 72) + 224) | *(a2 + 76);
  (*(*a1 + 48))(a1, v14);
  (*(*a1 + 48))(a1, v6);
  (*(*a1 + 48))(a1, v17);
  (*(*a1 + 48))(a1, v18);
  if (v13)
  {
    v19 = 8 * (v13 - 1);
    do
    {
      (*(*a1 + 48))(a1, (*(a2 + 80) >> v19));
      v19 -= 8;
      v20 = __OFSUB__(v13--, 1);
    }

    while (!((v13 < 0) ^ v20 | (v13 == 0)));
  }

  v21 = *(a2 + 56);
  if (v21 > 0x40)
  {
    v22 = 64;
  }

  else
  {
    v22 = byte_24398D80A[v21];
  }

  sub_2438EBB80(a1, *(a1 + 232), 0, *(a1 + 32), v22);
  v23 = *(a2 + 68) + *(a2 + 72);
  if (v23 > 0x40)
  {
    v24 = 64;
  }

  else
  {
    v24 = byte_24398D80A[v23];
  }

  result = sub_2438EBB80(a1, *(a1 + 216), 0, *(a2 + 76), v24);
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_2438EB948(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (*(a1 + 64) == 1)
  {
    if (v4 > 0x40)
    {
      v4 = 64;
    }

    else
    {
      v4 = byte_24398D84B[v4];
    }
  }

  if (*(a2 + 88) == 1)
  {
    v5 = *(a1 + 68);
    if (v5 < 4)
    {
      v5 = *(a1 + 72);
      *(a1 + 72) = 0;
    }

    else
    {
      *(a1 + 68) = 0;
    }

    v6 = -64;
  }

  else
  {
    if (v4 == 1)
    {
      v4 = 2;
    }

    if (v4 > 0x40)
    {
      v6 = -2;
    }

    else
    {
      v6 = (2 * byte_24398D88C[v4]) | 0xC0;
    }

    v5 = *(a1 + 72);
    *(a1 + 72) = 0;
  }

  v7 = v5 - 1;
  (*(*a1 + 48))(a1, (((v5 - 1) >> 8) & 1 | v6));
  (*(*a1 + 48))(a1, v7);
  v8 = **(a1 + 40);
  v9 = *a1;
  if (*(a1 + 48) == 1)
  {
    (*(v9 + 64))(a1, v8);
  }

  else
  {
    (*(v9 + 56))(a1, v8);
  }

  if (*(a2 + 88) == 1)
  {
    v10 = *(a2 + 8);
    v11 = *(*a1 + 64);

    return v11(a1, v10);
  }

  else
  {
    (*(*a1 + 64))(a1, **(a1 + 240));
    v13 = *(a1 + 240);
    v14 = *(a1 + 32) - 2;

    return sub_2438EBB80(a1, v13, 1u, v14, v4);
  }
}

uint64_t sub_2438EBB80(uint64_t result, uint64_t a2, unsigned int a3, unint64_t a4, unsigned int a5)
{
  if (!a2 || !a4 || !a5)
  {
    return result;
  }

  v6 = a3;
  v8 = result;
  if (a5 > 0x40)
  {
    v9 = 64;
  }

  else
  {
    v9 = byte_24398D84B[a5];
  }

  if (v9 == a5)
  {
    v10 = a4 + a3;
    if (a5 > 7)
    {
      if (v10 > a3)
      {
        v27 = a5 >> 3;
        v28 = a3;
        do
        {
          v29 = v27;
          v30 = 8 * v27 - 8;
          do
          {
            result = (*(*v8 + 48))(v8, (*(a2 + 8 * v28) >> v30));
            v30 -= 8;
            --v29;
          }

          while (v29);
          ++v28;
        }

        while (v28 != v10);
      }
    }

    else
    {
      v34 = ~(-1 << a5);
      v11 = 8u / a5;
      v12 = a4 % v11;
      v13 = v10 - (a4 % v11);
      if (v13 > a3)
      {
        v14 = 8 - a5;
        do
        {
          v15 = 0;
          LOBYTE(v16) = 0;
          v17 = v14;
          do
          {
            v18 = *(a2 + 8 * (v6 + v15++)) & v34;
            v16 = (v16 | (v18 << v17));
            v17 -= a5;
          }

          while (v15 < v11);
          result = (*(*v8 + 48))(v8, v16);
          v6 += v11;
        }

        while (v6 < v13);
      }

      if (v12)
      {
        if (v10 >= v12)
        {
          LOBYTE(v19) = 0;
          v31 = 8 - a5;
          do
          {
            LOBYTE(v19) = v19 | ((*(a2 + 8 * v13++) & v34) << v31);
            v31 -= a5;
          }

          while (v13 < v10);
        }

        else
        {
          LOBYTE(v19) = 0;
        }

LABEL_39:
        v32 = *(*v8 + 48);
        v33 = v19;

        return v32(v8, v33);
      }
    }
  }

  else
  {
    v20 = a4 + a3;
    if (v20 > a3)
    {
      LOBYTE(v19) = 0;
      v21 = 8;
      v22 = a3;
      do
      {
        while (1)
        {
          v23 = *(a2 + 8 * v22);
          if (v21 >= a5)
          {
            v26 = v19;
            v24 = a5;
          }

          else
          {
            v24 = a5;
            do
            {
              v24 -= v21;
              v25 = v19 | (v23 >> v24);
              v23 &= ~(-1 << v24);
              result = (*(*v8 + 48))(v8, v25);
              LOBYTE(v19) = 0;
              v26 = 0;
              v21 = 8;
            }

            while (v24 > 8);
          }

          v21 -= v24;
          v19 = (v26 | (v23 << v21));
          if (v21)
          {
            break;
          }

          result = (*(*v8 + 48))(v8, v19);
          LOBYTE(v19) = 0;
          v21 = 8;
          v22 = ++v6;
          if (v20 <= v6)
          {
            return result;
          }
        }

        v22 = ++v6;
      }

      while (v20 > v6);
      if (v21 != 8)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

void sub_2438EBEC8(void *a1)
{
  v1 = sub_2438EBEF0(a1);

  operator delete(v1);
}

void *sub_2438EBEF0(void *a1)
{
  *a1 = &unk_2856A1080;
  v2 = a1[5];
  if (v2)
  {
    operator delete[](v2);
  }

  v3 = a1[27];
  if (v3)
  {
    operator delete[](v3);
  }

  v4 = a1[28];
  if (v4)
  {
    operator delete[](v4);
  }

  v5 = a1[29];
  if (v5)
  {
    operator delete[](v5);
  }

  v6 = a1[30];
  if (v6)
  {
    operator delete[](v6);
  }

  return sub_2438EBF7C(a1);
}

void *sub_2438EBF7C(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2856A10F0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_2438EBFF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  if (a3 == 1)
  {
    v12 = operator new(0xF8uLL);
    v13 = *a1;
    *a1 = 0;
    v15 = v13;
    sub_2438EA864(v12, &v15, a2, a4);
    *a5 = v12;
    result = v15;
    v15 = 0;
    if (!result)
    {
      return result;
    }

    return (*(*result + 8))(result);
  }

  if (a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCACC(exception, "Not implemented yet");
    __cxa_throw(exception, &unk_2856A0958, std::logic_error::~logic_error);
  }

  v8 = operator new(0x58uLL);
  v9 = *a1;
  *a1 = 0;
  v16 = v9;
  sub_2438E8990(v8, &v16, a2);
  *a5 = v8;
  result = v16;
  v16 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_2438EC158@<X0>(uint64_t *a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a3 == 1)
  {
    v13 = operator new(0xF0uLL);
    v14 = *a1;
    *a1 = 0;
    v16 = v14;
    sub_2438E980C(v13, &v16, a2, a4);
    *a5 = v13;
    result = v16;
    v16 = 0;
    if (!result)
    {
      return result;
    }

    return (*(*result + 8))(result, v10);
  }

  if (a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2438DCACC(exception, "Not implemented yet");
    __cxa_throw(exception, &unk_2856A0958, std::logic_error::~logic_error);
  }

  v8 = operator new(0x48uLL);
  v9 = *a1;
  *a1 = 0;
  v17 = v9;
  v10.n128_f64[0] = sub_2438E8D9C(v8, &v17, a2);
  *a5 = v8;
  result = v17;
  v17 = 0;
  if (result)
  {
    return (*(*result + 8))(result, v10);
  }

  return result;
}

uint64_t sub_2438EC2C0(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    v5 = a3;
    v7 = result;
    v8 = a4;
    do
    {
      if (!a4 || *v8)
      {
        result = (*(*v7 + 40))(v7, *a2);
      }

      ++a2;
      ++v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2438EC37C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >= 0x80)
  {
    do
    {
      (*(*a1 + 48))(a1, v2 | 0xFFFFFF80);
      v4 = v2 >> 7;
      v5 = v2 >= 0x4000;
      v2 >>= 7;
    }

    while (v5);
  }

  else
  {
    LOBYTE(v4) = a2;
  }

  v6 = *(*a1 + 48);

  return v6(a1, v4);
}

uint64_t sub_2438EC424(uint64_t result, char a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4 == *(result + 24))
  {
    v8 = 0;
    result = (*(**(result + 8) + 16))(*(result + 8), result + 56, &v8);
    if ((result & 1) == 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v7 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v7, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
    }

    v4 = 0;
    v3[3] = v8;
  }

  v5 = v3[7];
  v3[2] = v4 + 1;
  *(v5 + v4) = a2;
  return result;
}

uint64_t sub_2438EC4D8(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v5 = *(a1 + 16);
  if ((*(**(a1 + 8) + 80))(*(a1 + 8)))
  {
    (*(*a2 + 16))(a2, v4);
  }

  else
  {
    v5 = v5 + v4 - *(a1 + 24);
  }

  (*(*a2 + 16))(a2, v5);
  v6 = *(a1 + 32);
  v7 = *(*a2 + 16);

  return v7(a2, v6);
}

void *sub_2438EC604(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = operator new(0x40uLL);
    sub_2438ED7B0(v6, a1);
  }

  else if ((v3 & 2) != 0)
  {
    v6 = operator new(0x40uLL);
    sub_2438ED700(v6, a1);
  }

  else if ((v3 & 4) != 0)
  {
    v6 = operator new(0x70uLL);
    sub_2438ED860(v6, a1, a2);
  }

  else if ((v3 & 8) != 0)
  {
    v6 = operator new(0x40uLL);
    sub_2438ED48C(v6, a1, a2);
  }

  else if ((v3 & 0x10) != 0)
  {
    v6 = operator new(0x70uLL);
    sub_2438ED5D8(v6, a1, a2);
  }

  else if ((v3 & 0x80) != 0)
  {
    v6 = operator new(0x58uLL);
    sub_2438EDA2C(v6, a1, a2);
  }

  else if ((v3 & 0x20) != 0)
  {
    v6 = operator new(0x38uLL);
    sub_2438ED52C(v6, a1, a2);
  }

  else
  {
    v5 = operator new(0x30uLL);
    v6 = v5;
    if ((v3 & 0x40) != 0)
    {
      sub_2438ED3F4(v5, a1, a2);
    }

    else
    {
      *v5 = &unk_2856A11D8;
      v5[1] = &unk_2856A1240;
      *(v5 + 4) = 0;
      *(v5 + 20) = 0;
      v7 = *(a1 + 96);
      v5[3] = 0;
      v5[4] = v7;
      *(v5 + 16) = *(a1 + 112);
    }
  }

  return v6;
}