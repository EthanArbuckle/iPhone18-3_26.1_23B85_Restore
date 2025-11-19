void sub_D9FC2C(void *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = a3;
  sub_E832A8(a2, a1 + 1);
  operator new();
}

void sub_D9FE2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_D9FE7C(v18);
  _Unwind_Resume(a1);
}

void ***sub_D9FE7C(void ***a1)
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
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            do
            {
              if (*(v9 - 17) < 0)
              {
                operator delete(*(v9 - 5));
              }

              v9 -= 6;
            }

            while (v9 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
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

uint64_t sub_D9FF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "FamiliarPathDecoderModule", 0x19uLL);
  v18 = 1;
  v4 = *(a2 + 32);
  if (v4 < *(a2 + 40))
  {
    result = sub_D0AE98(*(a2 + 32), "Runtime", &v18, a1);
    v6 = v4 + 48;
    *(a2 + 32) = v6;
    v7 = *(a1 + 8);
    if (v7 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = v7;
    if (v6 >= *(a2 + 40))
    {
      v8 = sub_D76CD0((a2 + 24), "Runtime[LI]", &v17, a1);
    }

    else
    {
      sub_D76E84(v6, "Runtime[LI]", &v17, a1);
      v8 = v6 + 48;
    }

    *(a2 + 32) = v8;
    v16 = 4;
    v15 = 1;
    if (v8 >= *(a2 + 40))
    {
      v9 = sub_D74F74((a2 + 24), "ContainsFamiliarRoute", &v16, &v15);
      *(a2 + 32) = v9;
      v14 = 4;
      if (v9 >= *(a2 + 40))
      {
LABEL_11:
        v10 = sub_D0C504((a2 + 24), "PathCodec.RoadPropertyAccesses", &v14, (a1 + 16));
        *(a2 + 32) = v10;
        v13 = 4;
        if (v10 >= *(a2 + 40))
        {
          goto LABEL_12;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_D75128(v8, "ContainsFamiliarRoute", &v16, &v15);
      v9 = v8 + 48;
      *(a2 + 32) = v9;
      v14 = 4;
      if (v9 >= *(a2 + 40))
      {
        goto LABEL_11;
      }
    }

    sub_D0C6B8(v9, "PathCodec.RoadPropertyAccesses", &v14, (a1 + 16));
    v10 = v9 + 48;
    *(a2 + 32) = v10;
    v13 = 4;
    if (v10 >= *(a2 + 40))
    {
LABEL_12:
      result = sub_D766C8((a2 + 24), "PathCodec.OutgoingRoadsAccesses", &v13, (a1 + 24));
      v6 = result;
      *(a2 + 32) = result;
      if (*(a1 + 9) != 1)
      {
        return result;
      }

      goto LABEL_17;
    }

LABEL_16:
    result = sub_D7687C(v10, "PathCodec.OutgoingRoadsAccesses", &v13, (a1 + 24));
    v6 = v10 + 48;
    *(a2 + 32) = v6;
    if (*(a1 + 9) != 1)
    {
      return result;
    }

    goto LABEL_17;
  }

  result = sub_D0ACE4((a2 + 24), "Runtime", &v18, a1);
  v6 = result;
  *(a2 + 32) = result;
  v7 = *(a1 + 8);
  if (v7 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(a1 + 9) != 1)
  {
    return result;
  }

LABEL_17:
  v12 = 4;
  v11 = 1;
  if (v6 >= *(a2 + 40))
  {
    result = sub_DA02CC((a2 + 24), "DecodingFailed", &v12, &v11);
    *(a2 + 32) = result;
  }

  else
  {
    sub_DA0480(v6, "DecodingFailed", &v12, &v11);
    result = v6 + 48;
    *(a2 + 32) = v6 + 48;
  }

  return result;
}

void sub_DA0214(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DA02CC(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA0480(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA046C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA0480(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA05D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      v5 = *(a1 + 16);
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            do
            {
              if (*(v9 - 17) < 0)
              {
                operator delete(*(v9 - 5));
              }

              v9 -= 6;
            }

            while (v9 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_DA0684(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7, uint64_t a8, uint64_t a9, char a10)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  sub_E81FBC(a2, a9, a1 + 128);
  *(a1 + 176) = a8;
  *(a1 + 184) = a7;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a9;
  *(a1 + 216) = a10;
  *(a1 + 224) = sub_E893A4(a2);
  *(a1 + 232) = *a6;
  v15 = sub_3B6890(*(a1 + 208));
  v16 = *v15;
  *(a1 + 140) = *(v15 + 8);
  *(a1 + 132) = v16;
  sub_1019024();
}

void sub_DA0C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  v53 = *v51;
  if (*v51)
  {
    *(v51 + 8) = v53;
    operator delete(v53);
  }

  *(v48 + 64) = v51;
  sub_D78EB0(&__p);
  sub_D78EB0(&a48);
  v54 = *(v48 + 104);
  if (v54)
  {
    *(v48 + 112) = v54;
    operator delete(v54);
  }

  sub_5ECEBC(v50);
  sub_39393C((v48 + 56));
  sub_39393C(v49);
  v55 = *v48;
  if (*v48)
  {
    *(v48 + 8) = v55;
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

void sub_DA11A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_DA11D4(void ***a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = (32 * v2);
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  v8 = a2[1];
  if (v8 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *&dword_18[8 * v2] = a2[3];
  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = (v7 + *a1 - v10);
    do
    {
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      *v13 = *v12;
      v14 = v12[3];
      v13[2] = v12[2];
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v13[3] = v14;
      v12 += 4;
      v13 += 4;
    }

    while (v12 != v10);
    do
    {
      v15 = *v9;
      if (*v9)
      {
        v9[1] = v15;
        operator delete(v15);
      }

      v9 += 4;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = (v7 + 4);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v7 + 4;
}

void sub_DA13D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_DA13F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA13F4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 32;
        v4 = *(v2 - 32);
        *(a1 + 16) = v2 - 32;
        if (!v4)
        {
          break;
        }

        *(v2 - 24) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 32;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_DA1464(void ***a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = (32 * v2);
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  v8 = a2[1];
  if (v8 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *&dword_18[8 * v2] = a2[3];
  v9 = *a1;
  v10 = a1[1];
  v11 = (v7 + *a1 - v10);
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = (v7 + *a1 - v10);
    do
    {
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      *v13 = *v12;
      v14 = v12[3];
      v13[2] = v12[2];
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v13[3] = v14;
      v12 += 4;
      v13 += 4;
    }

    while (v12 != v10);
    do
    {
      v15 = *v9;
      if (*v9)
      {
        v9[1] = v15;
        operator delete(v15);
      }

      v9 += 4;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = (v7 + 4);
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v7 + 4;
}

void sub_DA1660(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_DA13F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA1684(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

void sub_DA1784(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingPathFindingModule", 0x18uLL);
  v80.__r_.__value_.__s.__data_[0] = 1;
  LODWORD(__p[0]) = 0;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    v5 = sub_D7A03C((a2 + 24), "Runtime", &v80, a1, __p);
  }

  else
  {
    sub_D7A200(*(a2 + 32), "Runtime", &v80, a1, __p);
    v5 = v4 + 48;
  }

  *(a2 + 32) = v5;
  if (*(a1 + 31) >= 0)
  {
    v6 = *(a1 + 31);
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (v6 + 8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v6 + 8 >= 0x17)
  {
    operator new();
  }

  v80.__r_.__value_.__r.__words[2] = 0;
  *(&v80.__r_.__value_.__s + 23) = v6 + 8;
  *&v80.__r_.__value_.__l.__data_ = 0x5B656D69746E7552uLL;
  if (v6)
  {
    if (*(a1 + 31) >= 0)
    {
      v7 = (a1 + 8);
    }

    else
    {
      v7 = *(a1 + 8);
    }

    memmove(&v80.__r_.__value_.__r.__words[1], v7, v6);
  }

  *(&v80.__r_.__value_.__r.__words[1] + v6) = 0;
  v8 = std::string::append(&v80, "]", 1uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v76 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v79 = 1;
  v10 = *(a2 + 32);
  if (v10 >= *(a2 + 40))
  {
    *(a2 + 32) = sub_DA4690((a2 + 24), __p, &v79, a1);
    if (SHIBYTE(v76) < 0)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_40;
    }

LABEL_20:
    LOBYTE(__p[0]) = 4;
    v13 = *(a2 + 32);
    if (v13 >= *(a2 + 40))
    {
      goto LABEL_41;
    }

LABEL_21:
    sub_DA4A28(v13, "NumScannedNodes", __p, (a1 + 52));
    v14 = v13 + 48;
    *(a2 + 32) = v14;
    LOBYTE(__p[0]) = 4;
    if (v14 < *(a2 + 40))
    {
      goto LABEL_42;
    }

LABEL_22:
    v15 = sub_DA4B78((a2 + 24), "Paths", __p, (a1 + 32));
    *(a2 + 32) = v15;
    LOBYTE(__p[0]) = 4;
    if (v15 < *(a2 + 40))
    {
      goto LABEL_43;
    }

LABEL_23:
    v16 = sub_DA4E7C((a2 + 24), "Paths.Filtered", __p, (a1 + 36));
    *(a2 + 32) = v16;
    LOBYTE(__p[0]) = 4;
    if (v16 < *(a2 + 40))
    {
      goto LABEL_44;
    }

LABEL_24:
    v17 = sub_DA5180((a2 + 24), "Paths.OutOfCoverage", __p, (a1 + 40));
    *(a2 + 32) = v17;
    LOBYTE(__p[0]) = 4;
    if (v17 < *(a2 + 40))
    {
      goto LABEL_45;
    }

LABEL_25:
    v18 = sub_DA4E7C((a2 + 24), "Paths.NoResult", __p, (a1 + 44));
    *(a2 + 32) = v18;
    LOBYTE(__p[0]) = 4;
    if (v18 < *(a2 + 40))
    {
      goto LABEL_46;
    }

LABEL_26:
    v19 = sub_D796A8((a2 + 24), "Iterations", __p, (a1 + 48));
    *(a2 + 32) = v19;
    if (*(a1 + 48) >= 2u)
    {
      goto LABEL_47;
    }

LABEL_27:
    LOBYTE(__p[0]) = 4;
    if (v19 >= *(a2 + 40))
    {
      goto LABEL_51;
    }

LABEL_28:
    sub_D0D5CC(v19, "MaxAlgorithmIterations", __p, (a1 + 56));
    v20 = v19 + 48;
    *(a2 + 32) = v20;
    LOBYTE(__p[0]) = 4;
    if (v20 < *(a2 + 40))
    {
      goto LABEL_52;
    }

LABEL_29:
    v21 = sub_D0B2EC((a2 + 24), "BlockingIncidents", __p, (a1 + 64));
    *(a2 + 32) = v21;
    LOBYTE(__p[0]) = 4;
    if (v21 < *(a2 + 40))
    {
      goto LABEL_53;
    }

LABEL_30:
    v22 = sub_D0DD24((a2 + 24), "BlockedSequences", __p, (a1 + 72));
    *(a2 + 32) = v22;
    LOBYTE(__p[0]) = 1;
    if (v22 < *(a2 + 40))
    {
      goto LABEL_54;
    }

LABEL_31:
    v23 = sub_D0BBF8((a2 + 24), "BiasingPaths.AddTime", __p, (a1 + 80));
    *(a2 + 32) = v23;
    if (*(a1 + 92) == 1)
    {
      goto LABEL_55;
    }

LABEL_32:
    if (*(a1 + 93) == 1)
    {
      goto LABEL_59;
    }

    goto LABEL_33;
  }

  v11 = *a1;
  if (SHIBYTE(v76) < 0)
  {
    sub_325C(*(a2 + 32), __p[0], __p[1]);
  }

  else
  {
    v12 = *__p;
    *(v10 + 16) = v76;
    *v10 = v12;
  }

  *(v10 + 24) = 1;
  *(v10 + 32) = v11;
  *(v10 + 40) = 1;
  *(a2 + 32) = v10 + 48;
  if ((SHIBYTE(v76) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_39:
  operator delete(__p[0]);
  if ((SHIBYTE(v80.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_40:
  operator delete(v80.__r_.__value_.__l.__data_);
  LOBYTE(__p[0]) = 4;
  v13 = *(a2 + 32);
  if (v13 < *(a2 + 40))
  {
    goto LABEL_21;
  }

LABEL_41:
  v14 = sub_DA4874((a2 + 24), "NumScannedNodes", __p, (a1 + 52));
  *(a2 + 32) = v14;
  LOBYTE(__p[0]) = 4;
  if (v14 >= *(a2 + 40))
  {
    goto LABEL_22;
  }

LABEL_42:
  sub_DA4D2C(v14, "Paths", __p, (a1 + 32));
  v15 = v14 + 48;
  *(a2 + 32) = v15;
  LOBYTE(__p[0]) = 4;
  if (v15 >= *(a2 + 40))
  {
    goto LABEL_23;
  }

LABEL_43:
  sub_DA5030(v15, "Paths.Filtered", __p, (a1 + 36));
  v16 = v15 + 48;
  *(a2 + 32) = v16;
  LOBYTE(__p[0]) = 4;
  if (v16 >= *(a2 + 40))
  {
    goto LABEL_24;
  }

LABEL_44:
  sub_DA5334(v16, "Paths.OutOfCoverage", __p, (a1 + 40));
  v17 = v16 + 48;
  *(a2 + 32) = v17;
  LOBYTE(__p[0]) = 4;
  if (v17 >= *(a2 + 40))
  {
    goto LABEL_25;
  }

LABEL_45:
  sub_DA5030(v17, "Paths.NoResult", __p, (a1 + 44));
  v18 = v17 + 48;
  *(a2 + 32) = v18;
  LOBYTE(__p[0]) = 4;
  if (v18 >= *(a2 + 40))
  {
    goto LABEL_26;
  }

LABEL_46:
  sub_D7985C(v18, "Iterations", __p, (a1 + 48));
  v19 = v18 + 48;
  *(a2 + 32) = v19;
  if (*(a1 + 48) < 2u)
  {
    goto LABEL_27;
  }

LABEL_47:
  v80.__r_.__value_.__s.__data_[0] = 4;
  LODWORD(__p[0]) = 1;
  if (v19 >= *(a2 + 40))
  {
    v19 = sub_D799AC((a2 + 24), "Iterations.GreaterOne", &v80, __p);
  }

  else
  {
    sub_D79B60(v19, "Iterations.GreaterOne", &v80, __p);
    v19 += 48;
  }

  *(a2 + 32) = v19;
  LOBYTE(__p[0]) = 4;
  if (v19 < *(a2 + 40))
  {
    goto LABEL_28;
  }

LABEL_51:
  v20 = sub_D0D418((a2 + 24), "MaxAlgorithmIterations", __p, (a1 + 56));
  *(a2 + 32) = v20;
  LOBYTE(__p[0]) = 4;
  if (v20 >= *(a2 + 40))
  {
    goto LABEL_29;
  }

LABEL_52:
  sub_D0B4A0(v20, "BlockingIncidents", __p, (a1 + 64));
  v21 = v20 + 48;
  *(a2 + 32) = v21;
  LOBYTE(__p[0]) = 4;
  if (v21 >= *(a2 + 40))
  {
    goto LABEL_30;
  }

LABEL_53:
  sub_D0DED8(v21, "BlockedSequences", __p, (a1 + 72));
  v22 = v21 + 48;
  *(a2 + 32) = v22;
  LOBYTE(__p[0]) = 1;
  if (v22 >= *(a2 + 40))
  {
    goto LABEL_31;
  }

LABEL_54:
  sub_D0BDAC(v22, "BiasingPaths.AddTime", __p, (a1 + 80));
  v23 = v22 + 48;
  *(a2 + 32) = v23;
  if (*(a1 + 92) != 1)
  {
    goto LABEL_32;
  }

LABEL_55:
  v80.__r_.__value_.__s.__data_[0] = 4;
  LODWORD(__p[0]) = 1;
  if (v23 >= *(a2 + 40))
  {
    v23 = sub_DA5484((a2 + 24), "Paths.AvoidedQuickTurn", &v80, __p);
    *(a2 + 32) = v23;
    if (*(a1 + 93) == 1)
    {
      goto LABEL_59;
    }

LABEL_33:
    if (*(a1 + 94) == 1)
    {
      goto LABEL_63;
    }

    goto LABEL_34;
  }

  sub_DA5638(v23, "Paths.AvoidedQuickTurn", &v80, __p);
  v23 += 48;
  *(a2 + 32) = v23;
  if (*(a1 + 93) != 1)
  {
    goto LABEL_33;
  }

LABEL_59:
  v80.__r_.__value_.__s.__data_[0] = 4;
  LODWORD(__p[0]) = 1;
  if (v23 >= *(a2 + 40))
  {
    v23 = sub_DA5788((a2 + 24), "SkippedOnDemandComputation", &v80, __p);
    *(a2 + 32) = v23;
    if (*(a1 + 94) == 1)
    {
      goto LABEL_63;
    }

LABEL_34:
    if (*(a1 + 95) == 1)
    {
      goto LABEL_67;
    }

    goto LABEL_35;
  }

  sub_DA593C(v23, "SkippedOnDemandComputation", &v80, __p);
  v23 += 48;
  *(a2 + 32) = v23;
  if (*(a1 + 94) != 1)
  {
    goto LABEL_34;
  }

LABEL_63:
  v80.__r_.__value_.__s.__data_[0] = 4;
  LODWORD(__p[0]) = 1;
  if (v23 >= *(a2 + 40))
  {
    v23 = sub_DA5A8C((a2 + 24), "StoppedDueToNoRoutes", &v80, __p);
    *(a2 + 32) = v23;
    if (*(a1 + 95) == 1)
    {
      goto LABEL_67;
    }
  }

  else
  {
    sub_DA5C40(v23, "StoppedDueToNoRoutes", &v80, __p);
    v23 += 48;
    *(a2 + 32) = v23;
    if (*(a1 + 95) == 1)
    {
LABEL_67:
      v80.__r_.__value_.__s.__data_[0] = 4;
      LODWORD(__p[0]) = 1;
      if (v23 >= *(a2 + 40))
      {
        v23 = sub_D74F74((a2 + 24), "StoppedDueToTimeLimit", &v80, __p);
      }

      else
      {
        sub_D75128(v23, "StoppedDueToTimeLimit", &v80, __p);
        v23 += 48;
      }

      *(a2 + 32) = v23;
      LOBYTE(__p[0]) = 4;
      if (v23 >= *(a2 + 40))
      {
        goto LABEL_71;
      }

LABEL_36:
      sub_DA5F44(v23, "NumActiveOnDemandQueries", __p, (a1 + 96));
      v24 = v23 + 48;
      goto LABEL_72;
    }
  }

LABEL_35:
  LOBYTE(__p[0]) = 4;
  if (v23 < *(a2 + 40))
  {
    goto LABEL_36;
  }

LABEL_71:
  v24 = sub_DA5D90((a2 + 24), "NumActiveOnDemandQueries", __p, (a1 + 96));
LABEL_72:
  *(a2 + 32) = v24;
  if (!*(a1 + 116))
  {
    goto LABEL_101;
  }

  LOBYTE(__p[0]) = 1;
  if (v24 < *(a2 + 40))
  {
    sub_D0C3B4(v24, "PathGraphAugmentation.Runtime", __p, (a1 + 104));
    v25 = v24 + 48;
    *(a2 + 32) = v25;
    LOBYTE(__p[0]) = 4;
    if (v25 >= *(a2 + 40))
    {
      goto LABEL_75;
    }

LABEL_78:
    sub_DA6248(v25, "PathGraphAugmentation.NumPaths", __p, (a1 + 116));
    v26 = v25 + 48;
    *(a2 + 32) = v25 + 48;
    LOBYTE(__p[0]) = 4;
    if (v25 + 48 >= *(a2 + 40))
    {
      goto LABEL_76;
    }

    goto LABEL_79;
  }

  v25 = sub_D0C200((a2 + 24), "PathGraphAugmentation.Runtime", __p, (a1 + 104));
  *(a2 + 32) = v25;
  LOBYTE(__p[0]) = 4;
  if (v25 < *(a2 + 40))
  {
    goto LABEL_78;
  }

LABEL_75:
  v26 = sub_DA6094((a2 + 24), "PathGraphAugmentation.NumPaths", __p, (a1 + 116));
  *(a2 + 32) = v26;
  LOBYTE(__p[0]) = 4;
  if (v26 >= *(a2 + 40))
  {
LABEL_76:
    v27 = sub_DA6398((a2 + 24), "PathGraphAugmentation.NumUniqueSubPaths", __p, (a1 + 120));
    goto LABEL_80;
  }

LABEL_79:
  sub_DA654C(v26, "PathGraphAugmentation.NumUniqueSubPaths", __p, (a1 + 120));
  v27 = v26 + 48;
LABEL_80:
  *(a2 + 32) = v27;
  v80.__r_.__value_.__s.__data_[0] = 4;
  v28 = *(a1 + 128);
  v29 = v28 / 100;
  v30 = v28 % 100;
  if (v28 < 0)
  {
    v31 = -50;
  }

  else
  {
    v31 = 50;
  }

  __p[0] = (v29 + (((5243 * (v31 + v30)) >> 19) + ((5243 * (v31 + v30)) >> 31)));
  if (v27 >= *(a2 + 40))
  {
    v32 = sub_DA669C((a2 + 24), "PathGraphAugmentation.AddedSubPathLength", &v80, __p);
    *(a2 + 32) = v32;
    LOBYTE(__p[0]) = 4;
    if (v32 >= *(a2 + 40))
    {
LABEL_85:
      v33 = sub_DA69A0((a2 + 24), "PathGraphAugmentation.NumPathsLocalOptimality", __p, (a1 + 140));
      *(a2 + 32) = v33;
      LOBYTE(__p[0]) = 4;
      if (v33 >= *(a2 + 40))
      {
        goto LABEL_86;
      }

LABEL_90:
      sub_DA6E58(v33, "PathGraphAugmentation.NumUniqueSubPathsLocalOptimality", __p, (a1 + 136));
      v34 = v33 + 48;
      *(a2 + 32) = v34;
      LOBYTE(__p[0]) = 4;
      if (v34 >= *(a2 + 40))
      {
        goto LABEL_87;
      }

      goto LABEL_91;
    }
  }

  else
  {
    sub_DA6850(v27, "PathGraphAugmentation.AddedSubPathLength", &v80, __p);
    v32 = v27 + 48;
    *(a2 + 32) = v32;
    LOBYTE(__p[0]) = 4;
    if (v32 >= *(a2 + 40))
    {
      goto LABEL_85;
    }
  }

  sub_DA6B54(v32, "PathGraphAugmentation.NumPathsLocalOptimality", __p, (a1 + 140));
  v33 = v32 + 48;
  *(a2 + 32) = v33;
  LOBYTE(__p[0]) = 4;
  if (v33 < *(a2 + 40))
  {
    goto LABEL_90;
  }

LABEL_86:
  v34 = sub_DA6CA4((a2 + 24), "PathGraphAugmentation.NumUniqueSubPathsLocalOptimality", __p, (a1 + 136));
  *(a2 + 32) = v34;
  LOBYTE(__p[0]) = 4;
  if (v34 >= *(a2 + 40))
  {
LABEL_87:
    v35 = sub_D7C928((a2 + 24), "PathGraphAugmentation.NumLocalOptimalityChecks", __p, (a1 + 144));
    goto LABEL_92;
  }

LABEL_91:
  sub_D7CADC(v34, "PathGraphAugmentation.NumLocalOptimalityChecks", __p, (a1 + 144));
  v35 = v34 + 48;
LABEL_92:
  *(a2 + 32) = v35;
  v80.__r_.__value_.__s.__data_[0] = 4;
  v36 = *(a1 + 152);
  v37 = v36 / 100;
  v38 = v36 % 100;
  if (v36 < 0)
  {
    v39 = -50;
  }

  else
  {
    v39 = 50;
  }

  __p[0] = (v37 + (((5243 * (v39 + v38)) >> 19) + ((5243 * (v39 + v38)) >> 31)));
  if (v35 >= *(a2 + 40))
  {
    v40 = sub_DA6FA8((a2 + 24), "PathGraphAugmentation.CheckedSubPathLength", &v80, __p);
    *(a2 + 32) = v40;
    LOBYTE(__p[0]) = 1;
    if (v40 >= *(a2 + 40))
    {
      goto LABEL_97;
    }

LABEL_99:
    sub_DA7460(v40, "PathGraphAugmentation.MetricsRelevantClosureCheck.Runtime", __p, (a1 + 160));
    v24 = v40 + 48;
    goto LABEL_100;
  }

  sub_DA715C(v35, "PathGraphAugmentation.CheckedSubPathLength", &v80, __p);
  v40 = v35 + 48;
  *(a2 + 32) = v40;
  LOBYTE(__p[0]) = 1;
  if (v40 < *(a2 + 40))
  {
    goto LABEL_99;
  }

LABEL_97:
  v24 = sub_DA72AC((a2 + 24), "PathGraphAugmentation.MetricsRelevantClosureCheck.Runtime", __p, (a1 + 160));
LABEL_100:
  *(a2 + 32) = v24;
LABEL_101:
  if (!*(a1 + 192))
  {
    goto LABEL_140;
  }

  LOBYTE(__p[0]) = 1;
  if (v24 >= *(a2 + 40))
  {
    v41 = sub_D0BEFC((a2 + 24), "PathGraphExtractor.Runtime", __p, (a1 + 168));
    *(a2 + 32) = v41;
    LOBYTE(__p[0]) = 1;
    if (v41 >= *(a2 + 40))
    {
LABEL_104:
      v42 = sub_DA75B0((a2 + 24), "PathGraphExtractor.FamiliarPathSearch.Runtime", __p, (a1 + 176));
      *(a2 + 32) = v42;
      LOBYTE(__p[0]) = 4;
      if (v42 >= *(a2 + 40))
      {
        goto LABEL_105;
      }

      goto LABEL_118;
    }
  }

  else
  {
    sub_D0C0B0(v24, "PathGraphExtractor.Runtime", __p, (a1 + 168));
    v41 = v24 + 48;
    *(a2 + 32) = v41;
    LOBYTE(__p[0]) = 1;
    if (v41 >= *(a2 + 40))
    {
      goto LABEL_104;
    }
  }

  sub_DA7764(v41, "PathGraphExtractor.FamiliarPathSearch.Runtime", __p, (a1 + 176));
  v42 = v41 + 48;
  *(a2 + 32) = v42;
  LOBYTE(__p[0]) = 4;
  if (v42 >= *(a2 + 40))
  {
LABEL_105:
    v43 = sub_D7D538((a2 + 24), "PathGraphExtractor.NumPathGraphNodes", __p, (a1 + 184));
    *(a2 + 32) = v43;
    LOBYTE(__p[0]) = 4;
    if (v43 >= *(a2 + 40))
    {
      goto LABEL_106;
    }

    goto LABEL_119;
  }

LABEL_118:
  sub_D7D6EC(v42, "PathGraphExtractor.NumPathGraphNodes", __p, (a1 + 184));
  v43 = v42 + 48;
  *(a2 + 32) = v43;
  LOBYTE(__p[0]) = 4;
  if (v43 >= *(a2 + 40))
  {
LABEL_106:
    v44 = sub_DA78B4((a2 + 24), "PathGraphExtractor.NumShortcutGraphNodes", __p, (a1 + 188));
    *(a2 + 32) = v44;
    LOBYTE(__p[0]) = 4;
    if (v44 >= *(a2 + 40))
    {
      goto LABEL_107;
    }

    goto LABEL_120;
  }

LABEL_119:
  sub_DA7A68(v43, "PathGraphExtractor.NumShortcutGraphNodes", __p, (a1 + 188));
  v44 = v43 + 48;
  *(a2 + 32) = v44;
  LOBYTE(__p[0]) = 4;
  if (v44 >= *(a2 + 40))
  {
LABEL_107:
    v45 = sub_DA6398((a2 + 24), "PathGraphExtractor.NumShortcutGraphArcs", __p, (a1 + 192));
    *(a2 + 32) = v45;
    LOBYTE(__p[0]) = 4;
    if (v45 >= *(a2 + 40))
    {
      goto LABEL_108;
    }

    goto LABEL_121;
  }

LABEL_120:
  sub_DA654C(v44, "PathGraphExtractor.NumShortcutGraphArcs", __p, (a1 + 192));
  v45 = v44 + 48;
  *(a2 + 32) = v44 + 48;
  LOBYTE(__p[0]) = 4;
  if (v44 + 48 >= *(a2 + 40))
  {
LABEL_108:
    v46 = sub_DA78B4((a2 + 24), "PathGraphExtractor.NumFilteredInputPaths", __p, (a1 + 196));
    *(a2 + 32) = v46;
    LOBYTE(__p[0]) = 4;
    if (v46 >= *(a2 + 40))
    {
      goto LABEL_109;
    }

    goto LABEL_122;
  }

LABEL_121:
  sub_DA7A68(v45, "PathGraphExtractor.NumFilteredInputPaths", __p, (a1 + 196));
  v46 = v45 + 48;
  *(a2 + 32) = v46;
  LOBYTE(__p[0]) = 4;
  if (v46 >= *(a2 + 40))
  {
LABEL_109:
    v47 = sub_DA7BB8((a2 + 24), "PathGraphExtractor.NumAddedPaths", __p, (a1 + 200));
    *(a2 + 32) = v47;
    LOBYTE(__p[0]) = 4;
    if (v47 >= *(a2 + 40))
    {
      goto LABEL_110;
    }

    goto LABEL_123;
  }

LABEL_122:
  sub_DA7D6C(v46, "PathGraphExtractor.NumAddedPaths", __p, (a1 + 200));
  v47 = v46 + 48;
  *(a2 + 32) = v47;
  LOBYTE(__p[0]) = 4;
  if (v47 >= *(a2 + 40))
  {
LABEL_110:
    v48 = sub_DA6398((a2 + 24), "PathGraphExtractor.NumAddedPenaltyPaths", __p, (a1 + 204));
    *(a2 + 32) = v48;
    LOBYTE(__p[0]) = 4;
    if (v48 >= *(a2 + 40))
    {
      goto LABEL_111;
    }

    goto LABEL_124;
  }

LABEL_123:
  sub_DA654C(v47, "PathGraphExtractor.NumAddedPenaltyPaths", __p, (a1 + 204));
  v48 = v47 + 48;
  *(a2 + 32) = v48;
  LOBYTE(__p[0]) = 4;
  if (v48 >= *(a2 + 40))
  {
LABEL_111:
    v49 = sub_DA7EBC((a2 + 24), "PathGraphExtractor.NumAddedAvoidPaths", __p, (a1 + 220));
    *(a2 + 32) = v49;
    LOBYTE(__p[0]) = 4;
    if (v49 >= *(a2 + 40))
    {
      goto LABEL_112;
    }

    goto LABEL_125;
  }

LABEL_124:
  sub_DA8070(v48, "PathGraphExtractor.NumAddedAvoidPaths", __p, (a1 + 220));
  v49 = v48 + 48;
  *(a2 + 32) = v49;
  LOBYTE(__p[0]) = 4;
  if (v49 >= *(a2 + 40))
  {
LABEL_112:
    v50 = sub_D7C320((a2 + 24), "PathGraphExtractor.NumPenaltySearchRounds", __p, (a1 + 208));
    *(a2 + 32) = v50;
    LOBYTE(__p[0]) = 4;
    if (v50 >= *(a2 + 40))
    {
      goto LABEL_113;
    }

    goto LABEL_126;
  }

LABEL_125:
  sub_D7C4D4(v49, "PathGraphExtractor.NumPenaltySearchRounds", __p, (a1 + 208));
  v50 = v49 + 48;
  *(a2 + 32) = v50;
  LOBYTE(__p[0]) = 4;
  if (v50 >= *(a2 + 40))
  {
LABEL_113:
    v51 = sub_DA81C0((a2 + 24), "PathGraphExtractor.NumAbortedPenaltySearchRounds", __p, (a1 + 212));
    *(a2 + 32) = v51;
    LOBYTE(__p[0]) = 4;
    if (v51 >= *(a2 + 40))
    {
      goto LABEL_114;
    }

LABEL_127:
    sub_D7D0E4(v51, "PathGraphExtractor.NumScannedNodesPenaltySearch", __p, (a1 + 216));
    v52 = v51 + 48;
    *(a2 + 32) = v52;
    LOBYTE(__p[0]) = 4;
    if (v52 >= *(a2 + 40))
    {
      goto LABEL_115;
    }

    goto LABEL_128;
  }

LABEL_126:
  sub_DA8374(v50, "PathGraphExtractor.NumAbortedPenaltySearchRounds", __p, (a1 + 212));
  v51 = v50 + 48;
  *(a2 + 32) = v51;
  LOBYTE(__p[0]) = 4;
  if (v51 < *(a2 + 40))
  {
    goto LABEL_127;
  }

LABEL_114:
  v52 = sub_D7CF30((a2 + 24), "PathGraphExtractor.NumScannedNodesPenaltySearch", __p, (a1 + 216));
  *(a2 + 32) = v52;
  LOBYTE(__p[0]) = 4;
  if (v52 >= *(a2 + 40))
  {
LABEL_115:
    v53 = sub_DA7EBC((a2 + 24), "PathGraphExtractor.NumWitnessSearches", __p, (a1 + 224));
    goto LABEL_129;
  }

LABEL_128:
  sub_DA8070(v52, "PathGraphExtractor.NumWitnessSearches", __p, (a1 + 224));
  v53 = v52 + 48;
LABEL_129:
  *(a2 + 32) = v53;
  v80.__r_.__value_.__s.__data_[0] = 4;
  v54 = *(a1 + 232);
  v55 = v54 / 100;
  v56 = v54 % 100;
  if (v54 < 0)
  {
    v57 = -50;
  }

  else
  {
    v57 = 50;
  }

  __p[0] = (v55 + (((5243 * (v57 + v56)) >> 19) + ((5243 * (v57 + v56)) >> 31)));
  if (v53 < *(a2 + 40))
  {
    sub_DA8678(v53, "PathGraphExtractor.LengthLocalOptimalityChecks", &v80, __p);
    v58 = v53 + 48;
    *(a2 + 32) = v58;
    LOBYTE(__p[0]) = 4;
    if (v58 >= *(a2 + 40))
    {
      goto LABEL_134;
    }

LABEL_137:
    sub_D7D0E4(v58, "PathGraphExtractor.NumNonLocallyOptimalSubPaths", __p, (a1 + 240));
    v59 = v58 + 48;
    *(a2 + 32) = v59;
    LOBYTE(__p[0]) = 4;
    if (v59 >= *(a2 + 40))
    {
      goto LABEL_135;
    }

LABEL_138:
    sub_DA8374(v59, "PathGraphExtractor.NumFailedFamiliarPathSearches", __p, (a1 + 244));
    v24 = v59 + 48;
    goto LABEL_139;
  }

  v58 = sub_DA84C4((a2 + 24), "PathGraphExtractor.LengthLocalOptimalityChecks", &v80, __p);
  *(a2 + 32) = v58;
  LOBYTE(__p[0]) = 4;
  if (v58 < *(a2 + 40))
  {
    goto LABEL_137;
  }

LABEL_134:
  v59 = sub_D7CF30((a2 + 24), "PathGraphExtractor.NumNonLocallyOptimalSubPaths", __p, (a1 + 240));
  *(a2 + 32) = v59;
  LOBYTE(__p[0]) = 4;
  if (v59 < *(a2 + 40))
  {
    goto LABEL_138;
  }

LABEL_135:
  v24 = sub_DA81C0((a2 + 24), "PathGraphExtractor.NumFailedFamiliarPathSearches", __p, (a1 + 244));
LABEL_139:
  *(a2 + 32) = v24;
LABEL_140:
  if (!*(a1 + 276))
  {
    goto LABEL_161;
  }

  LOBYTE(__p[0]) = 1;
  if (v24 >= *(a2 + 40))
  {
    v60 = sub_D0CE10((a2 + 24), "PathConnector.Runtime", __p, (a1 + 248));
    *(a2 + 32) = v60;
    LOBYTE(__p[0]) = 1;
    if (v60 >= *(a2 + 40))
    {
LABEL_143:
      v61 = sub_DA87C8((a2 + 24), "PathConnector.ComputeMinimumCapacities.Runtime", __p, (a1 + 256));
      *(a2 + 32) = v61;
      LOBYTE(__p[0]) = 1;
      if (v61 >= *(a2 + 40))
      {
        goto LABEL_144;
      }

      goto LABEL_153;
    }
  }

  else
  {
    sub_D0CFC4(v24, "PathConnector.Runtime", __p, (a1 + 248));
    v60 = v24 + 48;
    *(a2 + 32) = v24 + 48;
    LOBYTE(__p[0]) = 1;
    if (v24 + 48 >= *(a2 + 40))
    {
      goto LABEL_143;
    }
  }

  sub_DA897C(v60, "PathConnector.ComputeMinimumCapacities.Runtime", __p, (a1 + 256));
  v61 = v60 + 48;
  *(a2 + 32) = v61;
  LOBYTE(__p[0]) = 1;
  if (v61 >= *(a2 + 40))
  {
LABEL_144:
    v62 = sub_DA87C8((a2 + 24), "PathConnector.ComputeNodesNearLiveArcs.Runtime", __p, (a1 + 264));
    *(a2 + 32) = v62;
    LOBYTE(__p[0]) = 4;
    if (v62 >= *(a2 + 40))
    {
      goto LABEL_145;
    }

    goto LABEL_154;
  }

LABEL_153:
  sub_DA897C(v61, "PathConnector.ComputeNodesNearLiveArcs.Runtime", __p, (a1 + 264));
  v62 = v61 + 48;
  *(a2 + 32) = v62;
  LOBYTE(__p[0]) = 4;
  if (v62 >= *(a2 + 40))
  {
LABEL_145:
    v63 = sub_DA8ACC((a2 + 24), "PathConnector.NumRounds", __p, (a1 + 272));
    *(a2 + 32) = v63;
    LOBYTE(__p[0]) = 4;
    if (v63 >= *(a2 + 40))
    {
      goto LABEL_146;
    }

    goto LABEL_155;
  }

LABEL_154:
  sub_DA8C80(v62, "PathConnector.NumRounds", __p, (a1 + 272));
  v63 = v62 + 48;
  *(a2 + 32) = v63;
  LOBYTE(__p[0]) = 4;
  if (v63 >= *(a2 + 40))
  {
LABEL_146:
    v64 = sub_DA8DD0((a2 + 24), "PathConnector.NumScannedNodes", __p, (a1 + 292));
    *(a2 + 32) = v64;
    LOBYTE(__p[0]) = 4;
    if (v64 >= *(a2 + 40))
    {
      goto LABEL_147;
    }

    goto LABEL_156;
  }

LABEL_155:
  sub_DA8F84(v63, "PathConnector.NumScannedNodes", __p, (a1 + 292));
  v64 = v63 + 48;
  *(a2 + 32) = v64;
  LOBYTE(__p[0]) = 4;
  if (v64 >= *(a2 + 40))
  {
LABEL_147:
    v65 = sub_D7CC2C((a2 + 24), "PathConnector.NumCheckedArcs", __p, (a1 + 276));
    *(a2 + 32) = v65;
    LOBYTE(__p[0]) = 4;
    if (v65 >= *(a2 + 40))
    {
      goto LABEL_148;
    }

    goto LABEL_157;
  }

LABEL_156:
  sub_D7CDE0(v64, "PathConnector.NumCheckedArcs", __p, (a1 + 276));
  v65 = v64 + 48;
  *(a2 + 32) = v65;
  LOBYTE(__p[0]) = 4;
  if (v65 >= *(a2 + 40))
  {
LABEL_148:
    v66 = sub_DA90D4((a2 + 24), "PathConnector.NumCheckedArcsFromAddedNodes", __p, (a1 + 280));
    *(a2 + 32) = v66;
    LOBYTE(__p[0]) = 4;
    if (v66 >= *(a2 + 40))
    {
      goto LABEL_149;
    }

LABEL_158:
    sub_DA958C(v66, "PathConnector.NumAddedArcs", __p, (a1 + 284));
    v67 = v66 + 48;
    *(a2 + 32) = v67;
    LOBYTE(__p[0]) = 4;
    if (v67 >= *(a2 + 40))
    {
      goto LABEL_150;
    }

LABEL_159:
    sub_DA6248(v67, "PathConnector.NumRoundsAborted", __p, (a1 + 288));
    v24 = v67 + 48;
    goto LABEL_160;
  }

LABEL_157:
  sub_DA9288(v65, "PathConnector.NumCheckedArcsFromAddedNodes", __p, (a1 + 280));
  v66 = v65 + 48;
  *(a2 + 32) = v66;
  LOBYTE(__p[0]) = 4;
  if (v66 < *(a2 + 40))
  {
    goto LABEL_158;
  }

LABEL_149:
  v67 = sub_DA93D8((a2 + 24), "PathConnector.NumAddedArcs", __p, (a1 + 284));
  *(a2 + 32) = v67;
  LOBYTE(__p[0]) = 4;
  if (v67 < *(a2 + 40))
  {
    goto LABEL_159;
  }

LABEL_150:
  v24 = sub_DA6094((a2 + 24), "PathConnector.NumRoundsAborted", __p, (a1 + 288));
LABEL_160:
  *(a2 + 32) = v24;
LABEL_161:
  if (!*(a1 + 76))
  {
    goto LABEL_170;
  }

  LOBYTE(__p[0]) = 1;
  if (v24 < *(a2 + 40))
  {
    sub_D0B7A4(v24, "BiasingPaths.AddTime[LI]", __p, (a1 + 80));
    v68 = v24 + 48;
    *(a2 + 32) = v24 + 48;
    LOBYTE(__p[0]) = 4;
    if (v24 + 48 >= *(a2 + 40))
    {
      goto LABEL_164;
    }

LABEL_167:
    sub_D0D8D0(v68, "BiasingPaths.Gaps", __p, (a1 + 88));
    v69 = v68 + 48;
    *(a2 + 32) = v69;
    LOBYTE(__p[0]) = 1;
    if (v69 >= *(a2 + 40))
    {
      goto LABEL_165;
    }

LABEL_168:
    sub_DA9890(v69, "PathGraphExtractor.FamiliarPathSearch.Runtime[LI]", __p, (a1 + 176));
    v70 = v69 + 48;
    goto LABEL_169;
  }

  v68 = sub_D0B5F0((a2 + 24), "BiasingPaths.AddTime[LI]", __p, (a1 + 80));
  *(a2 + 32) = v68;
  LOBYTE(__p[0]) = 4;
  if (v68 < *(a2 + 40))
  {
    goto LABEL_167;
  }

LABEL_164:
  v69 = sub_D0D71C((a2 + 24), "BiasingPaths.Gaps", __p, (a1 + 88));
  *(a2 + 32) = v69;
  LOBYTE(__p[0]) = 1;
  if (v69 < *(a2 + 40))
  {
    goto LABEL_168;
  }

LABEL_165:
  v70 = sub_DA96DC((a2 + 24), "PathGraphExtractor.FamiliarPathSearch.Runtime[LI]", __p, (a1 + 176));
LABEL_169:
  *(a2 + 32) = v70;
LABEL_170:
  if (*(a1 + 404) == 1)
  {
    sub_DA3A6C(a1 + 296, __p);
    sub_D0E630((a2 + 24), *(a2 + 32), v77, v78, 0xAAAAAAAAAAAAAAABLL * ((v78 - v77) >> 4));
    v71 = v77;
    if (v77)
    {
      v72 = v78;
      v73 = v77;
      if (v78 != v77)
      {
        do
        {
          v74 = *(v72 - 25);
          v72 -= 6;
          if (v74 < 0)
          {
            operator delete(*v72);
          }
        }

        while (v72 != v71);
        v73 = v77;
      }

      v78 = v71;
      operator delete(v73);
    }

    if (SHIBYTE(v76) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_DA3104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  *(v24 + 32) = v25;
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      sub_9DA0(v24);
      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  sub_9DA0(v24);
  _Unwind_Resume(a1);
}

void sub_DA3A6C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *(a2 + 1) = 0u;
  a2[5] = 0;
  *(a2 + 3) = 0u;
  v4 = a2 + 3;
  *(a2 + 23) = 13;
  qmemcpy(a2, "EVPathFinding", 13);
  __p.__r_.__value_.__s.__data_[0] = 1;
  v5 = sub_D0ACE4(a2 + 3, "Runtime", &__p, (a1 + 8));
  v6 = v5;
  v7 = a2[5];
  a2[4] = v5;
  __p.__r_.__value_.__s.__data_[0] = 1;
  if (v5 >= v7)
  {
    v8 = sub_D0C200(v4, "ChargingStationSearch.Runtime", &__p, (a1 + 16));
    a2[4] = v8;
    v9 = (a1 + 24);
    if (*(a1 + 24))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_D0C3B4(v5, "ChargingStationSearch.Runtime", &__p, (a1 + 16));
    v8 = v6 + 48;
    a2[4] = v8;
    v9 = (a1 + 24);
    if (*(a1 + 24))
    {
LABEL_3:
      __p.__r_.__value_.__s.__data_[0] = 4;
      if (v8 < a2[5])
      {
        sub_DA9B94(v8, "FoundChargingStations", &__p, v9);
        goto LABEL_8;
      }

      v12 = sub_DA99E0(v4, "FoundChargingStations", &__p, v9);
LABEL_14:
      v10 = v12;
      a2[4] = v12;
      v11 = (a1 + 40);
      if (*(a1 + 40))
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  v36[0] = 4;
  LODWORD(__p.__r_.__value_.__l.__data_) = 1;
  if (v8 >= a2[5])
  {
    v12 = sub_DA9CE4(v4, "NoFoundChargingStations", v36, &__p);
    goto LABEL_14;
  }

  sub_DA9E98(v8, "NoFoundChargingStations", v36, &__p);
LABEL_8:
  v10 = v8 + 48;
  a2[4] = v10;
  v11 = (a1 + 40);
  if (*(a1 + 40))
  {
LABEL_9:
    __p.__r_.__value_.__s.__data_[0] = 4;
    if (v10 < a2[5])
    {
      sub_DAA19C(v10, "PathGraphChargingStations", &__p, v11);
      goto LABEL_17;
    }

    v13 = sub_DA9FE8(v4, "PathGraphChargingStations", &__p, v11);
    goto LABEL_26;
  }

LABEL_15:
  v36[0] = 4;
  LODWORD(__p.__r_.__value_.__l.__data_) = 1;
  if (v10 < a2[5])
  {
    sub_DAA4A0(v10, "NoPathGraphChargingStations", v36, &__p);
LABEL_17:
    v14 = v10 + 48;
    a2[4] = v14;
    __p.__r_.__value_.__s.__data_[0] = 1;
    if (v14 >= a2[5])
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  v13 = sub_DAA2EC(v4, "NoPathGraphChargingStations", v36, &__p);
LABEL_26:
  v14 = v13;
  a2[4] = v13;
  __p.__r_.__value_.__s.__data_[0] = 1;
  if (v13 >= a2[5])
  {
LABEL_18:
    v15 = sub_D0C200(v4, "PathGraphAugmentation.Runtime", &__p, (a1 + 32));
    a2[4] = v15;
    __p.__r_.__value_.__s.__data_[0] = 1;
    if (v15 >= a2[5])
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_D0C3B4(v14, "PathGraphAugmentation.Runtime", &__p, (a1 + 32));
  v15 = v14 + 48;
  a2[4] = v15;
  __p.__r_.__value_.__s.__data_[0] = 1;
  if (v15 >= a2[5])
  {
LABEL_19:
    v16 = sub_D0BEFC(v4, "BuildShortcutGraph.Runtime", &__p, (a1 + 48));
    a2[4] = v16;
    __p.__r_.__value_.__s.__data_[0] = 1;
    if (v16 >= a2[5])
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_D0C0B0(v15, "BuildShortcutGraph.Runtime", &__p, (a1 + 48));
  v16 = v15 + 48;
  a2[4] = v16;
  __p.__r_.__value_.__s.__data_[0] = 1;
  if (v16 >= a2[5])
  {
LABEL_20:
    v17 = sub_389CC8(v4, "SearchInitialization.Runtime", &__p, (a1 + 56));
    a2[4] = v17;
    __p.__r_.__value_.__s.__data_[0] = 1;
    if (v17 >= a2[5])
    {
      goto LABEL_21;
    }

LABEL_30:
    sub_389570(v17, "ChargingFunctionPropagation.Runtime", &__p, (a1 + 64));
    v18 = v17 + 48;
    a2[4] = v18;
    v19 = (a1 + 104);
    if (*(a1 + 104))
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

LABEL_29:
  sub_389E7C(v16, "SearchInitialization.Runtime", &__p, (a1 + 56));
  v17 = v16 + 48;
  a2[4] = v17;
  __p.__r_.__value_.__s.__data_[0] = 1;
  if (v17 < a2[5])
  {
    goto LABEL_30;
  }

LABEL_21:
  v18 = sub_3893BC(v4, "ChargingFunctionPropagation.Runtime", &__p, (a1 + 64));
  a2[4] = v18;
  v19 = (a1 + 104);
  if (*(a1 + 104))
  {
LABEL_22:
    __p.__r_.__value_.__s.__data_[0] = 4;
    if (v18 < a2[5])
    {
      sub_DA5030(v18, "PathCandidates", &__p, v19);
      goto LABEL_43;
    }

    v20 = sub_DA4E7C(v4, "PathCandidates", &__p, v19);
    goto LABEL_46;
  }

LABEL_31:
  v36[0] = 4;
  LODWORD(__p.__r_.__value_.__l.__data_) = 1;
  if (v18 >= a2[5])
  {
    v18 = sub_DAA5F0(v4, "NoPath", v36, &__p);
    a2[4] = v18;
    if (*a1 < 0x33u)
    {
LABEL_33:
      __p.__r_.__value_.__s.__data_[0] = 4;
      if (v18 >= a2[5])
      {
        goto LABEL_47;
      }

      goto LABEL_34;
    }
  }

  else
  {
    sub_DAA7A4(v18, "NoPath", v36, &__p);
    v18 += 48;
    a2[4] = v18;
    if (*a1 < 0x33u)
    {
      goto LABEL_33;
    }
  }

  v36[0] = 4;
  LODWORD(__p.__r_.__value_.__l.__data_) = 1;
  if (v18 >= a2[5])
  {
    v20 = sub_D799AC(v4, "NoPath.HighInitialSoC", v36, &__p);
LABEL_46:
    v18 = v20;
    a2[4] = v20;
    __p.__r_.__value_.__s.__data_[0] = 4;
    if (v20 >= a2[5])
    {
      goto LABEL_47;
    }

LABEL_34:
    sub_DAAAA8(v18, "PathGraph.AddedNodes", &__p, (a1 + 80));
    v21 = v18 + 48;
    a2[4] = v21;
    __p.__r_.__value_.__s.__data_[0] = 4;
    if (v21 < a2[5])
    {
      goto LABEL_48;
    }

LABEL_35:
    v22 = sub_DAA8F4(v4, "PathGraph.AddedEdges", &__p, (a1 + 84));
    a2[4] = v22;
    __p.__r_.__value_.__s.__data_[0] = 4;
    if (v22 < a2[5])
    {
      goto LABEL_49;
    }

LABEL_36:
    v23 = sub_D0AFE8(v4, "ShortcutGraph.Nodes", &__p, (a1 + 88));
    a2[4] = v23;
    __p.__r_.__value_.__s.__data_[0] = 4;
    if (v23 < a2[5])
    {
      goto LABEL_50;
    }

LABEL_37:
    v24 = sub_D0AFE8(v4, "ShortcutGraph.Edges", &__p, (a1 + 96));
    a2[4] = v24;
    __p.__r_.__value_.__s.__data_[0] = 4;
    if (v24 < a2[5])
    {
      goto LABEL_51;
    }

    goto LABEL_38;
  }

  sub_D79B60(v18, "NoPath.HighInitialSoC", v36, &__p);
LABEL_43:
  v18 += 48;
  a2[4] = v18;
  __p.__r_.__value_.__s.__data_[0] = 4;
  if (v18 < a2[5])
  {
    goto LABEL_34;
  }

LABEL_47:
  v21 = sub_DAA8F4(v4, "PathGraph.AddedNodes", &__p, (a1 + 80));
  a2[4] = v21;
  __p.__r_.__value_.__s.__data_[0] = 4;
  if (v21 >= a2[5])
  {
    goto LABEL_35;
  }

LABEL_48:
  sub_DAAAA8(v21, "PathGraph.AddedEdges", &__p, (a1 + 84));
  v22 = v21 + 48;
  a2[4] = v22;
  __p.__r_.__value_.__s.__data_[0] = 4;
  if (v22 >= a2[5])
  {
    goto LABEL_36;
  }

LABEL_49:
  sub_D0B19C(v22, "ShortcutGraph.Nodes", &__p, (a1 + 88));
  v23 = v22 + 48;
  a2[4] = v23;
  __p.__r_.__value_.__s.__data_[0] = 4;
  if (v23 >= a2[5])
  {
    goto LABEL_37;
  }

LABEL_50:
  sub_D0B19C(v23, "ShortcutGraph.Edges", &__p, (a1 + 96));
  v24 = v23 + 48;
  a2[4] = v24;
  __p.__r_.__value_.__s.__data_[0] = 4;
  if (v24 < a2[5])
  {
LABEL_51:
    sub_DAADAC(v24, "ChargingFunctionPropagation.TargetLabels", &__p, (a1 + 72));
    v25 = v24 + 48;
    a2[4] = v24 + 48;
    v26 = a2[3];
    if (v26 == v24 + 48)
    {
      return;
    }

    goto LABEL_54;
  }

LABEL_38:
  v25 = sub_DAABF8(v4, "ChargingFunctionPropagation.TargetLabels", &__p, (a1 + 72));
  a2[4] = v25;
  v26 = a2[3];
  if (v26 == v25)
  {
    return;
  }

  do
  {
LABEL_54:
    if (*(a2 + 23) >= 0)
    {
      v27 = *(a2 + 23);
    }

    else
    {
      v27 = a2[1];
    }

    if (v27 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v27 + 1 >= 0x17)
    {
      operator new();
    }

    memset(&__p, 0, sizeof(__p));
    *(&__p.__r_.__value_.__s + 23) = v27 + 1;
    if (v27)
    {
      if (*(a2 + 23) >= 0)
      {
        v28 = a2;
      }

      else
      {
        v28 = *a2;
      }

      memmove(&__p, v28, v27);
    }

    *(&__p.__r_.__value_.__l.__data_ + v27) = 46;
    v29 = *(v26 + 23);
    if (v29 >= 0)
    {
      v30 = v26;
    }

    else
    {
      v30 = *v26;
    }

    if (v29 >= 0)
    {
      v31 = *(v26 + 23);
    }

    else
    {
      v31 = *(v26 + 8);
    }

    v32 = std::string::append(&__p, v30, v31);
    v33 = v32->__r_.__value_.__r.__words[0];
    *v36 = v32->__r_.__value_.__l.__size_;
    *&v36[7] = *(&v32->__r_.__value_.__r.__words[1] + 7);
    v34 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    if (*(v26 + 23) < 0)
    {
      operator delete(*v26);
    }

    *v26 = v33;
    *(v26 + 8) = *v36;
    *(v26 + 15) = *&v36[7];
    *(v26 + 23) = v34;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v26 += 48;
  }

  while (v26 != v25);
}

void sub_DA4358(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4384(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA43B0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA43DC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4408(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4434(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4460(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4478(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA44A4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA44D0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA44FC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA453C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4554(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4580(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA45AC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA45D8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4618(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

void sub_DA4658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_9DA0(v14);
    _Unwind_Resume(a1);
  }

  sub_9DA0(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_DA4690(uint64_t *a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = v10 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_DA4860(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA4874(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA4A28(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA4A14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA4A28(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA4B78(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA4D2C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA4D18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA4D2C(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA4E7C(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA5030(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA501C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA5030(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA5180(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA5334(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA5320(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA5334(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA5484(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA5638(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA5624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA5638(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA5788(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA593C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA5928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA593C(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA5A8C(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA5C40(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA5C2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA5C40(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA5D90(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA5F44(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA5F30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA5F44(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA6094(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA6248(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA6234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA6248(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA6398(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA654C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA6538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA654C(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA669C(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA6850(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA683C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA6850(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA69A0(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA6B54(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA6B40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA6B54(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA6CA4(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA6E58(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA6E44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA6E58(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA6FA8(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA715C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA7148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA715C(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA72AC(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA7460(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA744C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA7460(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA75B0(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA7764(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA7750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA7764(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA78B4(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA7A68(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA7A54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA7A68(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA7BB8(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA7D6C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA7D58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA7D6C(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA7EBC(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA8070(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA805C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA8070(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA81C0(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA8374(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA8360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA8374(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA84C4(uint64_t *a1, char *a2, char *a3, void *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA8678(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA8664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA8678(uint64_t a1, char *__s, char *a3, void *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v11 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = *a4;
    *(a1 + 40) = 1;
    operator delete(v11);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v14;
  *(a1 + 24) = v10;
  *(a1 + 32) = *a4;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA87C8(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA897C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA8968(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA897C(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA8ACC(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA8C80(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA8C6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA8C80(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA8DD0(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA8F84(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA8F70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA8F84(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA90D4(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA9288(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA9274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA9288(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA93D8(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA958C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA9578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA958C(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA96DC(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA9890(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA987C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA9890(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA99E0(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA9B94(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA9B80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA9B94(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA9CE4(uint64_t *a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DA9E98(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DA9E84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DA9E98(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DA9FE8(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DAA19C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DAA188(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAA19C(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAA2EC(uint64_t *a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DAA4A0(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DAA48C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAA4A0(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAA5F0(uint64_t *a1, char *a2, char *a3, int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DAA7A4(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DAA790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAA7A4(uint64_t a1, char *__s, char *a3, int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAA8F4(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DAAAA8(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DAAA94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAAAA8(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAABF8(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DAADAC(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DAAD98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAADAC(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAAEFC(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 88);
    v5 = *(a1 + 80);
    if (v4 != v3)
    {
      v6 = *(a1 + 88);
      do
      {
        v8 = *(v6 - 40);
        v6 -= 40;
        v7 = v8;
        if (v8)
        {
          *(v4 - 32) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = *(a1 + 80);
    }

    *(a1 + 88) = v3;
    operator delete(v5);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 56);
    if (v10 != v9)
    {
      v12 = *(a1 + 64);
      do
      {
        v14 = *(v12 - 32);
        v12 -= 32;
        v13 = v14;
        if (v14)
        {
          *(v10 - 24) = v13;
          operator delete(v13);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = *(a1 + 56);
    }

    *(a1 + 64) = v9;
    operator delete(v11);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(a1 + 40);
    v17 = *(a1 + 32);
    if (v16 != v15)
    {
      v18 = *(a1 + 40);
      do
      {
        v20 = *(v18 - 32);
        v18 -= 32;
        v19 = v20;
        if (v20)
        {
          *(v16 - 24) = v19;
          operator delete(v19);
        }

        v16 = v18;
      }

      while (v18 != v15);
      v17 = *(a1 + 32);
    }

    *(a1 + 40) = v15;
    operator delete(v17);
  }

  v21 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v21;
    operator delete(v21);
  }

  return a1;
}

uint64_t sub_DAB02C(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = (a1 + 8);
      if (*(a1 + 8))
      {
        sub_D7260C((a1 + 8));
        operator delete(*v4);
        *v4 = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v5 = (a1 + 32);
      if (*(a1 + 32))
      {
        sub_D714EC((a1 + 32));
        operator delete(*v5);
        *v5 = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      v6 = *(a2 + 56);
      *(a1 + 68) = *(a2 + 68);
LABEL_25:
      *(a1 + 56) = v6;
      goto LABEL_26;
    }

    v10 = (a1 + 32);
    v11 = (a1 + 8);
    if (*(a1 + 32))
    {
      sub_D714EC((a1 + 32));
      operator delete(*v10);
    }

    if (*v11)
    {
      sub_D7260C((a1 + 8));
      operator delete(*v11);
    }

    *v11 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v7 = *(a1 + 24);
      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 24);
        if (v8 != v7)
        {
          do
          {
            if (*(v8 - 1) < 0)
            {
              operator delete(*(v8 - 24));
            }

            v8 -= 32;
          }

          while (v8 != v7);
          v9 = *(a1 + 24);
        }

        *(a1 + 32) = v7;
        operator delete(v9);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      v6 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      goto LABEL_25;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_26:
  *a1 = *a2;
  return a1;
}

uint64_t sub_DAB214(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_DAB314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  strcpy(a2, "DrivingETAModule");
  *(a2 + 23) = 16;
  v14 = 1;
  v13 = 0;
  v4 = sub_D7A03C((a2 + 24), "Runtime", &v14, a1, &v13);
  v5 = v4;
  v6 = *(a2 + 40);
  *(a2 + 32) = v4;
  v12 = 4;
  if (v4 < v6)
  {
    sub_DAB708(v4, "SegmentsWithoutHSP", &v12, (a1 + 8));
    v7 = v5 + 48;
    *(a2 + 32) = v7;
    v11 = 4;
    if (v7 >= *(a2 + 40))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_DABA0C(v7, "PathsWithoutLiveSpeedsCoverage", &v11, (a1 + 16));
    v8 = v7 + 48;
    *(a2 + 32) = v8;
    v10 = 5;
    if (v8 >= *(a2 + 40))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = sub_DAB554((a2 + 24), "SegmentsWithoutHSP", &v12, (a1 + 8));
  *(a2 + 32) = v7;
  v11 = 4;
  if (v7 < *(a2 + 40))
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = sub_DAB858((a2 + 24), "PathsWithoutLiveSpeedsCoverage", &v11, (a1 + 16));
  *(a2 + 32) = v8;
  v10 = 5;
  if (v8 >= *(a2 + 40))
  {
LABEL_4:
    result = sub_DABB5C((a2 + 24), "LiveSpeedsCoverage", &v10, (a1 + 24));
    *(a2 + 32) = result;
    return result;
  }

LABEL_7:
  sub_DABD10(v8, "LiveSpeedsCoverage", &v10, (a1 + 24));
  result = v8 + 48;
  *(a2 + 32) = v8 + 48;
  return result;
}

void sub_DAB4E4(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DAB554(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DAB708(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DAB6F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAB708(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAB858(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DABA0C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DAB9F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DABA0C(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DABB5C(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DABD10(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DABCFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DABD10(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DABE60(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_DABF60(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_DAC060(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = sub_E7A3D0(a2);
  *(a1 + 4) = sub_E89098(a2);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_3ECFD8(a1 + 8, *a7, *(a7 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a7 + 8) - *a7) >> 4));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_3ED39C(a1 + 32, *(a7 + 24), *(a7 + 32), 0xE21A291C077975B9 * ((*(a7 + 32) - *(a7 + 24)) >> 3));
  v17 = *(a7 + 48);
  v18 = *(a7 + 64);
  v19 = *(a7 + 80);
  *(a1 + 102) = *(a7 + 94);
  *(a1 + 88) = v19;
  *(a1 + 72) = v18;
  *(a1 + 56) = v17;
  if (*(a7 + 127) < 0)
  {
    sub_325C((a1 + 112), *(a7 + 104), *(a7 + 112));
  }

  else
  {
    v20 = *(a7 + 104);
    *(a1 + 128) = *(a7 + 120);
    *(a1 + 112) = v20;
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_3ECFD8(a1 + 136, *a8, *(a8 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a8 + 8) - *a8) >> 4));
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  sub_3ED39C(a1 + 160, *(a8 + 24), *(a8 + 32), 0xE21A291C077975B9 * ((*(a8 + 32) - *(a8 + 24)) >> 3));
  v21 = *(a8 + 48);
  v22 = *(a8 + 64);
  v23 = *(a8 + 80);
  *(a1 + 230) = *(a8 + 94);
  *(a1 + 216) = v23;
  *(a1 + 200) = v22;
  *(a1 + 184) = v21;
  if (*(a8 + 127) < 0)
  {
    sub_325C((a1 + 240), *(a8 + 104), *(a8 + 112));
  }

  else
  {
    v24 = *(a8 + 104);
    *(a1 + 256) = *(a8 + 120);
    *(a1 + 240) = v24;
  }

  *(a1 + 264) = a10;
  *(a1 + 272) = a11;
  *(a1 + 280) = a4;
  *(a1 + 288) = a5;
  *(a1 + 296) = a6;
  *(a1 + 304) = sub_FF3C1C(a2, a9, 1);
  sub_DAC3F0(a2, a9, a1 + 8, a8, a3, *(a1 + 272), a10, a1 + 312);
  *(a1 + 656) = sub_E7A124(a2);
  *(a1 + 664) = v25;
  *(a1 + 668) = sub_E7A738(a2);
  *(a1 + 669) = sub_44F320(*(a1 + 328));
  *(a1 + 672) = a3;
  v26 = nullsub_1(a11);
  if (!sub_4C49D0(a1 + 8) && *(v26 + 128) == 1 && (sub_4F96B8(v26) | 4) == 6)
  {
    sub_4C515C(a1 + 8, 2);
  }

  if ((sub_4C5074(a1 + 136, 3) & 1) != 0 || (sub_4C50D8(a1 + 136, 9) & 1) != 0 || (sub_4C5074(a1 + 136, 1) & 1) != 0 || (sub_4C50D8(a1 + 136, 12) & 1) != 0 || sub_4C50D8(a1 + 136, 8))
  {
    sub_4C515C(a1 + 136, 7);
  }

  return a1;
}

void sub_DAC338(_Unwind_Exception *a1)
{
  sub_DACA48((v2 + 312));
  sub_419F70(v3);
  sub_419F70(v1);
  _Unwind_Resume(a1);
}

void sub_DAC3F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = sub_6EECC();
  v12 = sub_E7A428(a1);
  v13 = sub_E7A58C(a1);
  v14 = sub_E7A5E0(a1);
  if (*(nullsub_1(a6) + 128) == 1)
  {
    v15 = nullsub_1(a6);
    v16 = sub_4F96C8(v15);
  }

  else
  {
    v16 = 0;
  }

  v60 = sub_E7A124(a1);
  v61 = v17;
  v18 = sub_3B6890(a7);
  v19 = *(v18 + 4);
  v20 = *(v18 + 8);
  sub_E80194(a1, v56);
  v54[0] = 0;
  v54[1] = 0;
  v55 = 0;
  if (!v20)
  {
    v21 = *a5;
    v22 = a5[1];
    if (*a5 != v22)
    {
      while (*(v21 + 176) == 1)
      {
        v21 += 440;
        if (v21 == v22)
        {
          goto LABEL_11;
        }
      }
    }

    if (v21 == v22)
    {
LABEL_11:
      v45[0] = 0;
      v45[1] = 0;
      v46 = 0;
    }

    else
    {
      *v45 = *(v21 + 288);
      v46 = *(v21 + 304);
    }

    HIBYTE(v53) = 15;
    strcpy(v52, "RerouteCategory");
    memset(__p, 0, 24);
    v23 = sub_3AEC94(a7, v52, __p);
    sub_4EB344(&v47, v23);
    v24 = sub_4EB3E0(v56, &v47);
    v25 = __p[0];
    if (__p[0])
    {
      v26 = __p[1];
      v27 = __p[0];
      if (__p[1] != __p[0])
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
        v27 = __p[0];
      }

      __p[1] = v25;
      operator delete(v27);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52[0]);
    }

    strcpy(__p, "FilteredRerouteHistory");
    HIBYTE(__p[2]) = 22;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v29 = sub_3AEC94(a7, __p, &v47);
    sub_4EAA24(v50, v29);
    sub_4EAA28(a6, v45, v19, v14, v24, v50, v52);
    v30 = v47;
    *v54 = *v52;
    v55 = v53;
    v52[1] = 0;
    v53 = 0;
    v52[0] = 0;
    if (v47)
    {
      v31 = v48;
      v32 = v47;
      if (v48 != v47)
      {
        do
        {
          v33 = *(v31 - 1);
          v31 -= 3;
          if (v33 < 0)
          {
            operator delete(*v31);
          }
        }

        while (v31 != v30);
        v32 = v47;
      }

      v48 = v30;
      operator delete(v32);
    }

    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v52[0] = sub_4EF368(a6);
  LODWORD(v52[1]) = v34;
  sub_4ED880(a6, v45);
  v35 = sub_4EF5DC(a6);
  v36 = sub_4EF360(a6);
  sub_DAC7F8(a8, a3, a4, a2, v40, v12, v13, v14, v16, &v60, v54, v56, v52, v45, v35, v36);
  v37 = v45[1];
  if (v45[1])
  {
    v38 = v46;
    v39 = v45[1];
    if (v46 != v45[1])
    {
      do
      {
        v38 -= 72;
        sub_3E4690(v38);
      }

      while (v38 != v37);
      v39 = v45[1];
    }

    v46 = v37;
    operator delete(v39);
  }

  if (v54[0])
  {
    v54[1] = v54[0];
    operator delete(v54[0]);
  }

  if (v59)
  {
    operator delete(v59);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }
}

void sub_DAC784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_44D36C(&a48);
  _Unwind_Resume(a1);
}

uint64_t sub_DAC7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, char a7, char a8, char a9, uint64_t *a10, void *a11, __int128 *a12, uint64_t *a13, uint64_t a14, uint64_t *a15, __int128 *a16)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 28) = a6;
  *(a1 + 29) = a7;
  *(a1 + 30) = a8;
  *(a1 + 31) = a9;
  v17 = *a10;
  v18 = *(a10 + 2);
  *(a1 + 48) = 0;
  *(a1 + 40) = v18;
  *(a1 + 32) = v17;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v19 = a11[1];
  if (v19 != *a11)
  {
    if (((v19 - *a11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v20 = a12[2];
  v21 = a12[3];
  v22 = *(a12 + 63);
  v24 = *a12;
  v23 = a12[1];
  *(a1 + 144) = 0;
  *(a1 + 72) = v24;
  *(a1 + 135) = v22;
  *(a1 + 120) = v21;
  *(a1 + 104) = v20;
  *(a1 + 88) = v23;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v26 = *(a12 + 9);
  v25 = *(a12 + 10);
  if (v25 != v26)
  {
    if (((v25 - v26) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v27 = a12[6];
  *(a1 + 184) = *(a12 + 112);
  *(a1 + 168) = v27;
  v28 = *(a12 + 136);
  *(a1 + 192) = *(a12 + 120);
  *(a1 + 208) = v28;
  sub_81988((a1 + 224), a12 + 152);
  v29 = *a13;
  *(a1 + 256) = *(a13 + 2);
  *(a1 + 248) = v29;
  *(a1 + 264) = *a14;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  sub_D3785C(a1 + 272, *(a14 + 8), *(a14 + 16), 0x8E38E38E38E38E39 * ((*(a14 + 16) - *(a14 + 8)) >> 3));
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  sub_4F1814(a1 + 296, *a15, a15[1], 0xCCCCCCCCCCCCCCCDLL * ((a15[1] - *a15) >> 4));
  v30 = *a16;
  *(a1 + 336) = *(a16 + 2);
  *(a1 + 320) = v30;
  return a1;
}

void sub_DAC9F0(_Unwind_Exception *a1)
{
  sub_4F3AA4(v1 + 264);
  sub_44D36C((v3 - 72));
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void *sub_DACA48(void *a1)
{
  v2 = a1[37];
  if (v2)
  {
    v3 = a1[38];
    v4 = a1[37];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 6);
        if (v5)
        {
          *(v3 - 5) = v5;
          operator delete(v5);
        }

        v6 = v3 - 10;
        if (*(v3 - 57) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 10;
      }

      while (v6 != v2);
      v4 = a1[37];
    }

    a1[38] = v2;
    operator delete(v4);
  }

  v7 = a1[34];
  if (v7)
  {
    v8 = a1[35];
    v9 = a1[34];
    if (v8 != v7)
    {
      do
      {
        v8 -= 72;
        sub_3E4690(v8);
      }

      while (v8 != v7);
      v9 = a1[34];
    }

    a1[35] = v7;
    operator delete(v9);
  }

  v10 = a1[28];
  if (v10)
  {
    operator delete(v10);
  }

  v11 = a1[18];
  if (v11)
  {
    a1[19] = v11;
    operator delete(v11);
  }

  v12 = a1[6];
  if (v12)
  {
    a1[7] = v12;
    operator delete(v12);
  }

  return a1;
}

uint64_t sub_DACB34(uint64_t a1)
{
  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v5 = *(a1 + 8);
    sub_435834(&v6, (a1 + 24));
    v8 = *(a1 + 48);
    v4 = v8;
    *exception = off_2673D90;
    *(exception + 8) = v5;
    *(exception + 24) = v6;
    *(exception + 5) = v7;
    v6 = 0uLL;
    v7 = 0;
    *(exception + 12) = v4;
  }

  return a1 + 8;
}

uint64_t sub_DACC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "DrivingRouteSelectionModule", 0x1BuLL);
  v13 = 1;
  v12 = 0;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    v5 = sub_D7A03C((a2 + 24), "Runtime", &v13, a1, &v12);
    *(a2 + 32) = v5;
    LOBYTE(v12) = 4;
    if (v5 >= *(a2 + 40))
    {
LABEL_3:
      v6 = sub_D0DD24((a2 + 24), "LiveTrafficRoute", &v12, (a1 + 8));
      *(a2 + 32) = v6;
      LOBYTE(v12) = 4;
      if (v6 >= *(a2 + 40))
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_D7A200(*(a2 + 32), "Runtime", &v13, a1, &v12);
    v5 = v4 + 48;
    *(a2 + 32) = v5;
    LOBYTE(v12) = 4;
    if (v5 >= *(a2 + 40))
    {
      goto LABEL_3;
    }
  }

  sub_D0DED8(v5, "LiveTrafficRoute", &v12, (a1 + 8));
  v6 = v5 + 48;
  *(a2 + 32) = v6;
  LOBYTE(v12) = 4;
  if (v6 >= *(a2 + 40))
  {
LABEL_4:
    result = sub_DAD1CC((a2 + 24), "Routes", &v12, (a1 + 12));
    v8 = result;
    *(a2 + 32) = result;
    v9 = (a1 + 16);
    if (!*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = sub_DAD380(v6, "Routes", &v12, (a1 + 12));
  v8 = v6 + 48;
  *(a2 + 32) = v8;
  v9 = (a1 + 16);
  if (!*(a1 + 16))
  {
LABEL_5:
    v10 = (a1 + 20);
    if (!*(a1 + 20))
    {
      goto LABEL_6;
    }

LABEL_18:
    v13 = 4;
    v12 = 0;
    if (v8 >= *(a2 + 40))
    {
      result = sub_DAD7E8((a2 + 24), "ClosuresOnUserRoute", &v13, v10, &v12);
      v8 = result;
      *(a2 + 32) = result;
      if (*(a1 + 24) == 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = sub_DAD9AC(v8, "ClosuresOnUserRoute", &v13, v10, &v12);
      v8 += 48;
      *(a2 + 32) = v8;
      if (*(a1 + 24) == 1)
      {
        goto LABEL_22;
      }
    }

LABEL_7:
    v11 = (a1 + 28);
    if (!*(a1 + 28))
    {
      goto LABEL_8;
    }

LABEL_26:
    LOBYTE(v12) = 4;
    if (v8 >= *(a2 + 40))
    {
      result = sub_DA99E0((a2 + 24), "NumSoftClosureDetours", &v12, v11);
      v8 = result;
      *(a2 + 32) = result;
      if (*(a1 + 32) == 1)
      {
        goto LABEL_30;
      }
    }

    else
    {
      result = sub_DA9B94(v8, "NumSoftClosureDetours", &v12, v11);
      v8 += 48;
      *(a2 + 32) = v8;
      if (*(a1 + 32) == 1)
      {
        goto LABEL_30;
      }
    }

LABEL_9:
    if (*(a1 + 33) != 1)
    {
      return result;
    }

    goto LABEL_34;
  }

LABEL_14:
  v13 = 4;
  v12 = 0;
  if (v8 >= *(a2 + 40))
  {
    result = sub_DAD4D0((a2 + 24), "ClosureReroutes", &v13, v9, &v12);
    v8 = result;
    *(a2 + 32) = result;
    v10 = (a1 + 20);
    if (*(a1 + 20))
    {
      goto LABEL_18;
    }
  }

  else
  {
    result = sub_DAD694(v8, "ClosureReroutes", &v13, v9, &v12);
    v8 += 48;
    *(a2 + 32) = v8;
    v10 = (a1 + 20);
    if (*(a1 + 20))
    {
      goto LABEL_18;
    }
  }

LABEL_6:
  if (*(a1 + 24) != 1)
  {
    goto LABEL_7;
  }

LABEL_22:
  LOBYTE(v12) = 4;
  v13 = 1;
  if (v8 >= *(a2 + 40))
  {
    result = sub_DADB00((a2 + 24), "AllCandidatesSoftClosed", &v12, &v13);
    v8 = result;
    *(a2 + 32) = result;
    v11 = (a1 + 28);
    if (*(a1 + 28))
    {
      goto LABEL_26;
    }
  }

  else
  {
    result = sub_DADCB4(v8, "AllCandidatesSoftClosed", &v12, &v13);
    v8 += 48;
    *(a2 + 32) = v8;
    v11 = (a1 + 28);
    if (*(a1 + 28))
    {
      goto LABEL_26;
    }
  }

LABEL_8:
  if (*(a1 + 32) != 1)
  {
    goto LABEL_9;
  }

LABEL_30:
  LOBYTE(v12) = 4;
  v13 = 1;
  if (v8 >= *(a2 + 40))
  {
    result = sub_DADE04((a2 + 24), "NoDivergenceAtSoftClosure", &v12, &v13);
    v8 = result;
    *(a2 + 32) = result;
    if (*(a1 + 33) != 1)
    {
      return result;
    }
  }

  else
  {
    result = sub_DADFB8(v8, "NoDivergenceAtSoftClosure", &v12, &v13);
    v8 += 48;
    *(a2 + 32) = v8;
    if (*(a1 + 33) != 1)
    {
      return result;
    }
  }

LABEL_34:
  LOBYTE(v12) = 4;
  v13 = 1;
  if (v8 >= *(a2 + 40))
  {
    result = sub_DAE108((a2 + 24), "WaitForClosureConfidenceGain", &v12, &v13);
    *(a2 + 32) = result;
  }

  else
  {
    sub_DAE2BC(v8, "WaitForClosureConfidenceGain", &v12, &v13);
    result = v8 + 48;
    *(a2 + 32) = v8 + 48;
  }

  return result;
}

void sub_DAD0E0(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_DAD1CC(uint64_t *a1, char *a2, char *a3, unsigned int *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DAD380(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DAD36C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAD380(uint64_t a1, char *__s, char *a3, unsigned int *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAD4D0(uint64_t *a1, char *a2, char *a3, unsigned int *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 16 * ((a1[1] - *a1) >> 4);
  sub_DAD694(v18, a2, a3, a4, a5);
  v9 = 48 * v5 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v18 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 40) = *(v13 + 10);
      *(v14 + 24) = v16;
      v13 += 3;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 48;
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

void sub_DAD680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAD694(uint64_t a1, char *__s, char *a3, unsigned int *a4, int *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
    *(&__dst + v11) = 0;
    v12 = *a3;
    v13 = *a4;
    v14 = *a5;
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    operator delete(v15);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v18;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  return a1;
}

uint64_t sub_DAD7E8(uint64_t *a1, char *a2, char *a3, unsigned int *a4, int *a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 16 * ((a1[1] - *a1) >> 4);
  sub_DAD9AC(v18, a2, a3, a4, a5);
  v9 = 48 * v5 + 48;
  v10 = *a1;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v18 + *a1 - v11;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v16 = *(v13 + 24);
      *(v14 + 40) = *(v13 + 10);
      *(v14 + 24) = v16;
      v13 += 3;
      v14 += 48;
    }

    while (v13 != v11);
    do
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v10 += 48;
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

void sub_DAD998(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DAD9AC(uint64_t a1, char *__s, char *a3, unsigned int *a4, int *a5)
{
  v10 = strlen(__s);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v18) = v10;
  if (v10)
  {
    memcpy(&__dst, __s, v10);
    *(&__dst + v11) = 0;
    v12 = *a3;
    v13 = *a4;
    v14 = *a5;
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    operator delete(v15);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v18;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  return a1;
}

uint64_t sub_DADB00(uint64_t *a1, char *a2, char *a3, unsigned __int8 *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DADCB4(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DADCA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DADCB4(uint64_t a1, char *__s, char *a3, unsigned __int8 *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DADE04(uint64_t *a1, char *a2, char *a3, unsigned __int8 *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DADFB8(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_DADFA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_DADFB8(uint64_t a1, char *__s, char *a3, unsigned __int8 *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_DAE108(uint64_t *a1, char *a2, char *a3, unsigned __int8 *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_DAE2BC(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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