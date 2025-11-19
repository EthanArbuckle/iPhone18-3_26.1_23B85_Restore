void sub_E90ECC(uint64_t a1@<X0>, uint64_t a2@<X2>, __n128 *a3@<X8>)
{
  *v6 = 0;
  *&v6[8] = &off_2669FE0;
  sub_434934(a3, v6);
  sub_E9B4D4(v7, a1, 4u, a3);
  sub_E81754(a1, a2);
}

void sub_E915CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v15 - 105) < 0)
  {
    operator delete(*(v15 - 128));
  }

  sub_1959728(&__p);
  if (*(v15 - 73) < 0)
  {
    operator delete(*(v15 - 96));
    sub_CF3C94(v14);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v14);
  _Unwind_Resume(a1);
}

void sub_E91740(uint64_t a1, unsigned int a2, __int128 *a3)
{
  *&v8 = a2;
  *(&v8 + 1) = &off_2669FE0;
  v9[0] = 1;
  if (*(a3 + 23) < 0)
  {
    sub_325C(&v10, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    v11 = *(a3 + 2);
  }

  sub_435A00(&__p, v9, 1uLL);
  sub_4349A4(a1, &v8, &__p);
  v4 = __p.n128_u64[0];
  if (__p.n128_u64[0])
  {
    v5 = __p.n128_u64[1];
    v6 = __p.n128_u64[0];
    if (__p.n128_u64[1] != __p.n128_u64[0])
    {
      do
      {
        if (*(v5 - 1) < 0)
        {
          operator delete(*(v5 - 24));
        }

        v5 -= 32;
      }

      while (v5 != v4);
      v6 = __p.n128_u64[0];
    }

    __p.n128_u64[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }
}

void sub_E91858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_2430CC(&a11);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E91884(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v8[0] = 0;
  v8[1] = &off_2669FE0;
  sub_434934(a3, v8);
  sub_E9BBEC(v9, a1, 4u, a3);
  if (*(nullsub_1(a2) + 128) == 1)
  {
    v6 = nullsub_1(a2);
    sub_4F96C0(v6);
  }

  if (*(nullsub_1(a2) + 128) == 1)
  {
    v7 = nullsub_1(a2);
    sub_4F96C8(v7);
  }

  operator new();
}

void sub_E91B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  sub_CF3C94(&a10);
  operator delete(v26);
  if ((*(v27 - 57) & 0x80000000) == 0)
  {
    sub_CF3C94(v25);
    _Unwind_Resume(a1);
  }

  operator delete(*(v27 - 80));
  sub_CF3C94(v25);
  _Unwind_Resume(a1);
}

void sub_E91C74(_DWORD *a1@<X0>, __n128 *a2@<X8>)
{
  v11.n128_u64[0] = 0;
  v11.n128_u64[1] = &off_2669FE0;
  sub_434934(a2, &v11);
  sub_E9B860(v21, a1, 4u, a2);
  v4 = a1[10];
  if ((v4 & 0x20) != 0)
  {
    if ((v4 & 0x100) == 0 || a1[22] <= 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = a1[16];
    if ((v4 & 0x100) == 0)
    {
      if (v5 <= 0)
      {
LABEL_14:
        if ((v23 & 0x80000000) == 0)
        {
          return;
        }

LABEL_29:
        operator delete(v22);
        return;
      }

      goto LABEL_13;
    }

    if (v5 <= 0)
    {
      goto LABEL_14;
    }

    if (a1[22] < 1)
    {
LABEL_13:
      operator new();
    }
  }

  if (!sub_7E7E4(1u))
  {
    goto LABEL_14;
  }

  sub_19594F8(&v11);
  sub_4A5C(&v11, "Got an ETARequest with current and deprecated waypoints.", 56);
  if ((v20 & 0x10) != 0)
  {
    v7 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v7 = v16;
    }

    v8 = v15;
    v6 = v7 - v15;
    if (v7 - v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if ((v20 & 8) == 0)
    {
      v6 = 0;
      HIBYTE(v10) = 0;
      goto LABEL_24;
    }

    v8 = v13;
    v6 = v14 - v13;
    if ((v14 - v13) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_31:
      sub_3244();
    }
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v6;
  if (v6)
  {
    memmove(&__dst, v8, v6);
  }

LABEL_24:
  *(&__dst + v6) = 0;
  sub_7E854(&__dst, 1u);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  std::locale::~locale(&__p);
  std::ostream::~ostream();
  std::ios::~ios();
  if (v23 < 0)
  {
    goto LABEL_29;
  }
}

void sub_E92010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a16);
  if (*(v17 - 57) < 0)
  {
    operator delete(*(v17 - 80));
    sub_CF3C94(v16);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v16);
  _Unwind_Resume(a1);
}

void sub_E9209C(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + 40) |= 0x20u;
  v6 = *(a1 + 336);
  if (v6)
  {
    *(v6 + 16) |= 2u;
    v7 = *(v6 + 80);
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v8 = *(a1 + 8);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (v8)
  {
    v9 = *v9;
  }

  v6 = sub_14BD814(v9);
  *(a1 + 336) = v6;
  *(v6 + 16) |= 2u;
  v7 = *(v6 + 80);
  if (!v7)
  {
LABEL_7:
    v10 = *(v6 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v7 = sub_14BD794(v11);
    *(v6 + 80) = v7;
  }

LABEL_10:
  v12 = *a2 + -978307200.0;
  v13 = *(v7 + 16);
  *(v7 + 16) = v13 | 1;
  v14 = a2[1] + -978307200.0;
  *(v7 + 24) = v12;
  *(v7 + 32) = v14;
  v15 = a2[2] == 1;
  *(v7 + 16) = v13 | 7;
  *(v7 + 40) = v15;
  sub_1957E24(a1, __p);
  sub_12201C0(__p, 0, a3);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_E921E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E921FC(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + 40) |= 0x40u;
  v6 = *(a1 + 312);
  if (v6)
  {
    *(v6 + 16) |= 2u;
    v7 = *(v6 + 80);
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v8 = *(a1 + 8);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (v8)
  {
    v9 = *v9;
  }

  v6 = sub_14BD814(v9);
  *(a1 + 312) = v6;
  *(v6 + 16) |= 2u;
  v7 = *(v6 + 80);
  if (!v7)
  {
LABEL_7:
    v10 = *(v6 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v7 = sub_14BD794(v11);
    *(v6 + 80) = v7;
  }

LABEL_10:
  v12 = *a2 + -978307200.0;
  v13 = *(v7 + 16);
  *(v7 + 16) = v13 | 1;
  v14 = a2[1] + -978307200.0;
  *(v7 + 24) = v12;
  *(v7 + 32) = v14;
  v15 = a2[2] == 1;
  *(v7 + 16) = v13 | 7;
  *(v7 + 40) = v15;
  sub_1957E24(a1, __p);
  sub_12201C0(__p, 0, a3);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_E92340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E9235C(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + 40) |= 0x10u;
  v5 = *(a1 + 280);
  if (!v5)
  {
    v6 = a1;
    v7 = *(a1 + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      v8 = *v8;
    }

    v5 = sub_14BD794(v8);
    a1 = v6;
    *(v6 + 280) = v5;
  }

  v9 = *a2 + -978307200.0;
  v10 = *(v5 + 16);
  *(v5 + 16) = v10 | 1;
  v11 = a2[1] + -978307200.0;
  *(v5 + 24) = v9;
  *(v5 + 32) = v11;
  v12 = a2[2] == 1;
  *(v5 + 16) = v10 | 7;
  *(v5 + 40) = v12;
  sub_1957E24(a1, __p);
  sub_12201C0(__p, 0, a3);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_E92458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_E92474(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + 40) |= 0x10u;
  v6 = *(a1 + 152);
  if (v6)
  {
    *(v6 + 16) |= 2u;
    v7 = *(v6 + 80);
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v8 = *(a1 + 8);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
  if (v8)
  {
    v9 = *v9;
  }

  v6 = sub_14BD814(v9);
  *(a1 + 152) = v6;
  *(v6 + 16) |= 2u;
  v7 = *(v6 + 80);
  if (!v7)
  {
LABEL_7:
    v10 = *(v6 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v7 = sub_14BD794(v11);
    *(v6 + 80) = v7;
  }

LABEL_10:
  v12 = *a2 + -978307200.0;
  v13 = *(v7 + 16);
  *(v7 + 16) = v13 | 1;
  v14 = a2[1] + -978307200.0;
  *(v7 + 24) = v12;
  *(v7 + 32) = v14;
  v15 = a2[2] == 1;
  *(v7 + 16) = v13 | 7;
  *(v7 + 40) = v15;
  sub_1957E24(a1, __p);
  sub_12201C0(__p, 0, a3);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_E925B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E925D4@<X0>(int a1@<W0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 <= 51)
  {
    if (a1 != 44)
    {
      if (a1 == 48)
      {
        sub_14C5B60(v22, 0, 0);
        sub_122030C(a2, 0, __p);
        v7 = sub_194DB28(v22, __p);
        if (v21 < 0)
        {
          v11 = v7;
          operator delete(__p[0]);
          if (v11)
          {
            goto LABEL_6;
          }
        }

        else if (v7)
        {
LABEL_6:
          sub_14C65CC(v18);
          sub_E921FC(v18, a3, a4);
          sub_14C6928(v18);
          return sub_14C6928(v22);
        }

        operator new();
      }

LABEL_12:
      operator new();
    }

    sub_1753618(v22, 0, 0);
    sub_122030C(a2, 0, __p);
    v9 = sub_194DB28(v22, __p);
    if (v21 < 0)
    {
      v14 = v9;
      operator delete(__p[0]);
      if (v14)
      {
        goto LABEL_15;
      }
    }

    else if (v9)
    {
LABEL_15:
      sub_17541D0(v19);
      sub_E9209C(v19, a3, a4);
      sub_1754598(v19);
      return sub_1754598(v22);
    }

    operator new();
  }

  if (a1 != 52)
  {
    if (a1 != 1026)
    {
      goto LABEL_12;
    }

    sub_1438EE8(v22, 0, 0);
    sub_122030C(a2, 0, __p);
    v8 = sub_194DB28(v22, __p);
    if (v21 < 0)
    {
      v13 = v8;
      operator delete(__p[0]);
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else if (v8)
    {
LABEL_11:
      sub_1439378(v16, v22);
      sub_E92474(v16, a3, a4);
      sub_1439560(v16);
      return sub_1439560(v22);
    }

    operator new();
  }

  sub_14CC850(v22, 0, 0);
  sub_122030C(a2, 0, __p);
  v10 = sub_194DB28(v22, __p);
  if (v21 < 0)
  {
    v15 = v10;
    operator delete(__p[0]);
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_26:
    operator new();
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  sub_14CD338(v17);
  sub_E9235C(v17, a3, a4);
  sub_14CD6F8(v17);
  return sub_14CD6F8(v22);
}

void sub_E929E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_14CD6F8(&a33);
  sub_14CD6F8(&STACK[0x690]);
  _Unwind_Resume(a1);
}

void sub_E92A04(_Unwind_Exception *a1)
{
  sub_1754598(&STACK[0x458]);
  sub_1754598(&STACK[0x690]);
  _Unwind_Resume(a1);
}

void sub_E92A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1439560(&a9);
  sub_1439560(&STACK[0x690]);
  _Unwind_Resume(a1);
}

void sub_E92A3C(_Unwind_Exception *a1)
{
  sub_14C6928(&STACK[0x288]);
  sub_14C6928(&STACK[0x690]);
  _Unwind_Resume(a1);
}

void sub_E92B48(uint64_t a1@<X0>, const void **a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2;
  if ((*(a1 + 40) & 4) != 0)
  {
    v6 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v6 + 8))
      {
LABEL_4:
        sub_11FD59C(&v30, 0, 0);
        if (sub_194DB28(&v30, *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL))
        {
          __p.__r_.__value_.__r.__words[0] = 0;
          __p.__r_.__value_.__l.__size_ = &off_2669FE0;
          sub_434934(a3, &__p);
LABEL_63:
          sub_11FD994(&v30);
          return;
        }

        if (*(v3 + 23) >= 0)
        {
          v15 = *(v3 + 23);
        }

        else
        {
          v15 = v3[1];
        }

        if (v15 + 6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v15 + 6 >= 0x17)
        {
          operator new();
        }

        __p.__r_.__value_.__r.__words[2] = 0;
        *(&__p.__r_.__value_.__s + 23) = v15 + 6;
        *&__p.__r_.__value_.__l.__data_ = 0x206120746F47uLL;
        if (v15)
        {
          if (*(v3 + 23) >= 0)
          {
            v16 = v3;
          }

          else
          {
            v16 = *v3;
          }

          memmove(__p.__r_.__value_.__r.__words + 6, v16, v15);
        }

        *(__p.__r_.__value_.__r.__words + v15 + 6) = 0;
        v17 = std::string::append(&__p, " with a malformed session_state.", 0x20uLL);
        v18 = v17->__r_.__value_.__r.__words[0];
        size = v17->__r_.__value_.__l.__size_;
        v26[0] = v17->__r_.__value_.__r.__words[2];
        *(v26 + 3) = *(&v17->__r_.__value_.__r.__words[2] + 3);
        v20 = SHIBYTE(v17->__r_.__value_.__r.__words[2]);
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          *&v25 = 7;
          *(&v25 + 1) = &off_2669FE0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          if ((v20 & 0x80000000) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          *&v25 = 7;
          *(&v25 + 1) = &off_2669FE0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          if ((v20 & 0x80000000) == 0)
          {
LABEL_48:
            __p.__r_.__value_.__l.__size_ = v18;
            __p.__r_.__value_.__r.__words[2] = size;
            *v28 = v26[0];
            *&v28[3] = *(v26 + 3);
            v29 = v20;
LABEL_51:
            sub_435A00(&v24, &__p, 1uLL);
            sub_4349A4(a3, &v25, &v24);
            v21 = v24.n128_u64[0];
            if (v24.n128_u64[0])
            {
              v22 = v24.n128_u64[1];
              v23 = v24.n128_u64[0];
              if (v24.n128_u64[1] != v24.n128_u64[0])
              {
                do
                {
                  if (*(v22 - 1) < 0)
                  {
                    operator delete(*(v22 - 24));
                  }

                  v22 -= 32;
                }

                while (v22 != v21);
                v23 = v24.n128_u64[0];
              }

              v24.n128_u64[1] = v21;
              operator delete(v23);
            }

            if (v29 < 0)
            {
              operator delete(__p.__r_.__value_.__l.__size_);
            }

            if (v20 < 0)
            {
              operator delete(v18);
            }

            goto LABEL_63;
          }
        }

        sub_325C(&__p.__r_.__value_.__s.__data_[8], v18, size);
        goto LABEL_51;
      }
    }

    else if (*(v6 + 23))
    {
      goto LABEL_4;
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v7 + 6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v7 + 6 >= 0x17)
  {
    operator new();
  }

  *&v30.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v30.__r_.__value_.__s + 23) = v7 + 6;
  v30.__r_.__value_.__r.__words[0] = 0x206120746F47;
  if (v7)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    memmove(v30.__r_.__value_.__r.__words + 6, a2, v7);
  }

  *(v30.__r_.__value_.__r.__words + v7 + 6) = 0;
  v8 = std::string::append(&v30, " with missing session_state where routing expects one.", 0x36uLL);
  v9 = v8->__r_.__value_.__r.__words[0];
  v10 = v8->__r_.__value_.__l.__size_;
  LODWORD(v25) = v8->__r_.__value_.__r.__words[2];
  *(&v25 + 3) = *(&v8->__r_.__value_.__r.__words[2] + 3);
  v11 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    v24.n128_u64[0] = 6;
    v24.n128_u64[1] = &off_2669FE0;
    v30.__r_.__value_.__s.__data_[0] = 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v24.n128_u64[0] = 6;
    v24.n128_u64[1] = &off_2669FE0;
    v30.__r_.__value_.__s.__data_[0] = 0;
    if ((v11 & 0x80000000) == 0)
    {
LABEL_19:
      v30.__r_.__value_.__l.__size_ = v9;
      v30.__r_.__value_.__r.__words[2] = v10;
      *v31 = v25;
      *&v31[3] = *(&v25 + 3);
      v32 = v11;
      goto LABEL_22;
    }
  }

  sub_325C(&v30.__r_.__value_.__s.__data_[8], v9, v10);
LABEL_22:
  sub_435A00(&__p, &v30, 1uLL);
  sub_4349A4(a3, &v24, &__p);
  v12 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    v13 = __p.__r_.__value_.__l.__size_;
    v14 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
    {
      do
      {
        if (*(v13 - 1) < 0)
        {
          operator delete(*(v13 - 24));
        }

        v13 -= 32;
      }

      while (v13 != v12);
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    __p.__r_.__value_.__l.__size_ = v12;
    operator delete(v14);
  }

  if ((v32 & 0x80000000) == 0)
  {
    if ((v11 & 0x80000000) == 0)
    {
      return;
    }

LABEL_34:
    operator delete(v9);
    return;
  }

  operator delete(v30.__r_.__value_.__l.__size_);
  if (v11 < 0)
  {
    goto LABEL_34;
  }
}

void sub_E93054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  operator delete(v20);
  sub_11FD994(&a20);
  _Unwind_Resume(a1);
}

void sub_E93070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *__p, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  sub_2430CC(&a10);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26);
    sub_11FD994(&a26);
    _Unwind_Resume(a1);
  }

  sub_11FD994(&a26);
  _Unwind_Resume(a1);
}

void sub_E93108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *__p, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29)
{
  sub_2430CC(&a16);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_E9315C(uint64_t a1@<X0>, const void **a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2;
  if ((*(a1 + 40) & 2) != 0)
  {
    v6 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v6 + 8))
      {
LABEL_4:
        sub_11FD59C(&v30, 0, 0);
        if (sub_194DB28(&v30, *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL))
        {
          __p.__r_.__value_.__r.__words[0] = 0;
          __p.__r_.__value_.__l.__size_ = &off_2669FE0;
          sub_434934(a3, &__p);
LABEL_63:
          sub_11FD994(&v30);
          return;
        }

        if (*(v3 + 23) >= 0)
        {
          v15 = *(v3 + 23);
        }

        else
        {
          v15 = v3[1];
        }

        if (v15 + 6 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v15 + 6 >= 0x17)
        {
          operator new();
        }

        __p.__r_.__value_.__r.__words[2] = 0;
        *(&__p.__r_.__value_.__s + 23) = v15 + 6;
        *&__p.__r_.__value_.__l.__data_ = 0x206120746F47uLL;
        if (v15)
        {
          if (*(v3 + 23) >= 0)
          {
            v16 = v3;
          }

          else
          {
            v16 = *v3;
          }

          memmove(__p.__r_.__value_.__r.__words + 6, v16, v15);
        }

        *(__p.__r_.__value_.__r.__words + v15 + 6) = 0;
        v17 = std::string::append(&__p, " with a malformed session_state.", 0x20uLL);
        v18 = v17->__r_.__value_.__r.__words[0];
        size = v17->__r_.__value_.__l.__size_;
        v26[0] = v17->__r_.__value_.__r.__words[2];
        *(v26 + 3) = *(&v17->__r_.__value_.__r.__words[2] + 3);
        v20 = SHIBYTE(v17->__r_.__value_.__r.__words[2]);
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          *&v25 = 7;
          *(&v25 + 1) = &off_2669FE0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          if ((v20 & 0x80000000) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          *&v25 = 7;
          *(&v25 + 1) = &off_2669FE0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          if ((v20 & 0x80000000) == 0)
          {
LABEL_48:
            __p.__r_.__value_.__l.__size_ = v18;
            __p.__r_.__value_.__r.__words[2] = size;
            *v28 = v26[0];
            *&v28[3] = *(v26 + 3);
            v29 = v20;
LABEL_51:
            sub_435A00(&v24, &__p, 1uLL);
            sub_4349A4(a3, &v25, &v24);
            v21 = v24.n128_u64[0];
            if (v24.n128_u64[0])
            {
              v22 = v24.n128_u64[1];
              v23 = v24.n128_u64[0];
              if (v24.n128_u64[1] != v24.n128_u64[0])
              {
                do
                {
                  if (*(v22 - 1) < 0)
                  {
                    operator delete(*(v22 - 24));
                  }

                  v22 -= 32;
                }

                while (v22 != v21);
                v23 = v24.n128_u64[0];
              }

              v24.n128_u64[1] = v21;
              operator delete(v23);
            }

            if (v29 < 0)
            {
              operator delete(__p.__r_.__value_.__l.__size_);
            }

            if (v20 < 0)
            {
              operator delete(v18);
            }

            goto LABEL_63;
          }
        }

        sub_325C(&__p.__r_.__value_.__s.__data_[8], v18, size);
        goto LABEL_51;
      }
    }

    else if (*(v6 + 23))
    {
      goto LABEL_4;
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v7 + 6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v7 + 6 >= 0x17)
  {
    operator new();
  }

  *&v30.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v30.__r_.__value_.__s + 23) = v7 + 6;
  v30.__r_.__value_.__r.__words[0] = 0x206120746F47;
  if (v7)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    memmove(v30.__r_.__value_.__r.__words + 6, a2, v7);
  }

  *(v30.__r_.__value_.__r.__words + v7 + 6) = 0;
  v8 = std::string::append(&v30, " with missing session_state where routing expects one.", 0x36uLL);
  v9 = v8->__r_.__value_.__r.__words[0];
  v10 = v8->__r_.__value_.__l.__size_;
  LODWORD(v25) = v8->__r_.__value_.__r.__words[2];
  *(&v25 + 3) = *(&v8->__r_.__value_.__r.__words[2] + 3);
  v11 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    v24.n128_u64[0] = 6;
    v24.n128_u64[1] = &off_2669FE0;
    v30.__r_.__value_.__s.__data_[0] = 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v24.n128_u64[0] = 6;
    v24.n128_u64[1] = &off_2669FE0;
    v30.__r_.__value_.__s.__data_[0] = 0;
    if ((v11 & 0x80000000) == 0)
    {
LABEL_19:
      v30.__r_.__value_.__l.__size_ = v9;
      v30.__r_.__value_.__r.__words[2] = v10;
      *v31 = v25;
      *&v31[3] = *(&v25 + 3);
      v32 = v11;
      goto LABEL_22;
    }
  }

  sub_325C(&v30.__r_.__value_.__s.__data_[8], v9, v10);
LABEL_22:
  sub_435A00(&__p, &v30, 1uLL);
  sub_4349A4(a3, &v24, &__p);
  v12 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0])
  {
    v13 = __p.__r_.__value_.__l.__size_;
    v14 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
    {
      do
      {
        if (*(v13 - 1) < 0)
        {
          operator delete(*(v13 - 24));
        }

        v13 -= 32;
      }

      while (v13 != v12);
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    __p.__r_.__value_.__l.__size_ = v12;
    operator delete(v14);
  }

  if ((v32 & 0x80000000) == 0)
  {
    if ((v11 & 0x80000000) == 0)
    {
      return;
    }

LABEL_34:
    operator delete(v9);
    return;
  }

  operator delete(v30.__r_.__value_.__l.__size_);
  if (v11 < 0)
  {
    goto LABEL_34;
  }
}

void sub_E93668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  operator delete(v20);
  sub_11FD994(&a20);
  _Unwind_Resume(a1);
}

void sub_E93684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *__p, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  sub_2430CC(&a10);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26);
    sub_11FD994(&a26);
    _Unwind_Resume(a1);
  }

  sub_11FD994(&a26);
  _Unwind_Resume(a1);
}

void sub_E9371C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *__p, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29)
{
  sub_2430CC(&a16);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_E93770(void *a1@<X0>, unsigned int a2@<W1>, __n128 *a3@<X8>)
{
  v29.n128_u64[0] = 0;
  v29.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v29);
  sub_E9B4D4(&v29, a1, a2, a3);
  if (sub_585D8(&v29))
  {
    v6 = a1[45];
    if (!v6)
    {
      v6 = &off_2776700;
    }

    if ((*(v6 + 246) & 1) == 0)
    {
      v7 = a1[42];
      if (!v7)
      {
        v7 = &off_2772E28;
      }

      v8 = v7[11];
      if (!v8)
      {
        v8 = &off_2773678;
      }

      v9 = v8[4];
      if (!v9)
      {
        v9 = &off_2773608;
      }

      if ((v9[2] & 2) != 0)
      {
        operator new();
      }
    }

    if (!sub_E79FF8(a1))
    {
      if (sub_E7A5E0(a1) == 7)
      {
        operator new();
      }

      v10 = &off_27721B8;
      if (a1[53])
      {
        v10 = a1[53];
      }

      v11 = *(v10 + 8);
      if (v11 >= 2)
      {
        v12 = v10[5];
        v13 = v12 ? (v12 + 1) : 0;
        v14 = 8 * v11;
        if (8 * v11 != 8)
        {
          v15 = v13 + 8;
          v16 = v13 + v14;
          while (1)
          {
            v17 = *(*v15 + 72);
            if (!v17)
            {
              v17 = &off_2772310;
            }

            if (*(v17 + 26) == 1)
            {
              break;
            }

            v15 += 8;
            if (v15 == v16)
            {
              goto LABEL_31;
            }
          }

          if (!sub_E816E4(a1))
          {
            operator new();
          }
        }
      }
    }

LABEL_31:
    if (a1[45])
    {
      v18 = a1[45];
    }

    else
    {
      v18 = &off_2776700;
    }

    v19 = *(v18 + 18);
    if (v19)
    {
      v20 = 0;
      v21 = v18[10];
      v22 = 4 * v19;
      do
      {
        v23 = sub_899A0(*v21);
        if (v23 == 5)
        {
          operator new();
        }

        if (((1 << v23) & v20) != 0)
        {
          if (v23 > 5)
          {
            v24 = 0;
            v25 = "";
          }

          else
          {
            v24 = qword_22ACDE0[v23];
            v25 = off_2674408[v23];
          }

          v26[0] = v25;
          v26[1] = v24;
          sub_E93C68("The field clientCapabilities.supports_multipoint_routing contains duplicate entry for ", v26, __p);
          sub_E9BF80(&v29, 5, __p);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v20 |= 1 << v23;
        ++v21;
        v22 -= 4;
      }

      while (v22);
    }
  }

  if (v30 < 0)
  {
    operator delete(v29.n128_u64[1]);
  }
}

void sub_E93BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
LABEL_3:
      sub_CF3C94(a10);
      _Unwind_Resume(a1);
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a22);
  sub_CF3C94(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_E93C68@<X0>(const char *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v13);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v14, a1, v6);
  sub_4A5C(v7, *a2, a2[1]);
  if ((v24 & 0x10) != 0)
  {
    v9 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v9 = v20;
    }

    v10 = v19;
    v8 = v9 - v19;
    if (v9 - v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v8 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v10 = v17;
    v8 = v18 - v17;
    if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a3[23] = v8;
  if (v8)
  {
    memmove(a3, v10, v8);
  }

LABEL_12:
  a3[v8] = 0;
  v14 = v11;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v16);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E93ED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E93EE4(void *a1@<X0>, unsigned int a2@<W1>, __n128 *a3@<X8>)
{
  v29.n128_u64[0] = 0;
  v29.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v29);
  sub_E9BBEC(&v29, a1, a2, a3);
  if (sub_585D8(&v29))
  {
    v6 = a1[40];
    if (!v6)
    {
      v6 = &off_2776700;
    }

    if ((*(v6 + 246) & 1) == 0)
    {
      v7 = a1[39];
      if (!v7)
      {
        v7 = &off_2772E28;
      }

      v8 = v7[11];
      if (!v8)
      {
        v8 = &off_2773678;
      }

      v9 = v8[4];
      if (!v9)
      {
        v9 = &off_2773608;
      }

      if ((v9[2] & 2) != 0)
      {
        operator new();
      }
    }

    if ((sub_E7C0C0(a1) & 1) == 0)
    {
      if (sub_394BD0() == 7)
      {
        operator new();
      }

      v10 = &off_2773F38;
      if (a1[45])
      {
        v10 = a1[45];
      }

      v11 = *(v10 + 8);
      if (v11 >= 2)
      {
        v12 = v10[5];
        v13 = v12 ? (v12 + 1) : 0;
        v14 = 8 * v11;
        if (8 * v11 != 8)
        {
          v15 = v13 + 8;
          v16 = v13 + v14;
          while (1)
          {
            v17 = *(*v15 + 480);
            if (!v17)
            {
              v17 = &off_2772310;
            }

            if (*(v17 + 26) == 1)
            {
              break;
            }

            v15 += 8;
            if (v15 == v16)
            {
              goto LABEL_31;
            }
          }

          if ((sub_394BD0() & 1) == 0)
          {
            operator new();
          }
        }
      }
    }

LABEL_31:
    if (a1[40])
    {
      v18 = a1[40];
    }

    else
    {
      v18 = &off_2776700;
    }

    v19 = *(v18 + 18);
    if (v19)
    {
      v20 = 0;
      v21 = v18[10];
      v22 = 4 * v19;
      do
      {
        v23 = sub_899A0(*v21);
        if (v23 == 5)
        {
          operator new();
        }

        if (((1 << v23) & v20) != 0)
        {
          if (v23 > 5)
          {
            v24 = 0;
            v25 = "";
          }

          else
          {
            v24 = qword_22ACDE0[v23];
            v25 = off_2674408[v23];
          }

          v26[0] = v25;
          v26[1] = v24;
          sub_E93C68("The field clientCapabilities.supports_multipoint_routing contains duplicate entry for ", v26, __p);
          sub_E9BF80(&v29, 5, __p);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v20 |= 1 << v23;
        ++v21;
        v22 -= 4;
      }

      while (v22);
    }
  }

  if (v30 < 0)
  {
    operator delete(v29.n128_u64[1]);
  }
}

void sub_E94340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
LABEL_3:
      sub_CF3C94(a10);
      _Unwind_Resume(a1);
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a22);
  sub_CF3C94(a10);
  _Unwind_Resume(a1);
}

void sub_E943DC(void *a1@<X0>, unsigned int a2@<W1>, __n128 *a3@<X8>)
{
  v28.n128_u64[0] = 0;
  v28.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v28);
  sub_E9B860(&v28, a1, a2, a3);
  if (sub_585D8(&v28))
  {
    v6 = a1[44];
    if (!v6)
    {
      v6 = &off_2776700;
    }

    if ((*(v6 + 246) & 1) == 0)
    {
      v7 = a1[40];
      if (!v7)
      {
        v7 = &off_2773678;
      }

      v8 = v7[4];
      if (!v8)
      {
        v8 = &off_2773608;
      }

      if ((v8[2] & 2) != 0)
      {
        operator new();
      }
    }

    if ((sub_E81C28(a1) & 1) == 0)
    {
      if (sub_394BD0() == 7)
      {
        operator new();
      }

      v9 = &off_27721B8;
      if (a1[48])
      {
        v9 = a1[48];
      }

      v10 = *(v9 + 8);
      if (v10 >= 2)
      {
        v11 = v9[5];
        v12 = v11 ? (v11 + 1) : 0;
        v13 = 8 * v10;
        if (8 * v10 != 8)
        {
          v14 = v12 + 8;
          v15 = v12 + v13;
          while (1)
          {
            v16 = *(*v14 + 72);
            if (!v16)
            {
              v16 = &off_2772310;
            }

            if (*(v16 + 26) == 1)
            {
              break;
            }

            v14 += 8;
            if (v14 == v15)
            {
              goto LABEL_29;
            }
          }

          if (!sub_E81708(a1))
          {
            operator new();
          }
        }
      }
    }

LABEL_29:
    if (a1[44])
    {
      v17 = a1[44];
    }

    else
    {
      v17 = &off_2776700;
    }

    v18 = *(v17 + 18);
    if (v18)
    {
      v19 = 0;
      v20 = v17[10];
      v21 = 4 * v18;
      do
      {
        v22 = sub_899A0(*v20);
        if (v22 == 5)
        {
          operator new();
        }

        if (((1 << v22) & v19) != 0)
        {
          if (v22 > 5)
          {
            v23 = 0;
            v24 = "";
          }

          else
          {
            v23 = qword_22ACDE0[v22];
            v24 = off_2674408[v22];
          }

          v25[0] = v24;
          v25[1] = v23;
          sub_E93C68("The field clientCapabilities.supports_multipoint_routing contains duplicate entry for ", v25, __p);
          sub_E9BF80(&v28, 5, __p);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v19 |= 1 << v22;
        ++v20;
        v21 -= 4;
      }

      while (v21);
    }
  }

  if (v29 < 0)
  {
    operator delete(v28.n128_u64[1]);
  }
}

void sub_E94824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
LABEL_3:
      sub_CF3C94(a10);
      _Unwind_Resume(a1);
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a22);
  sub_CF3C94(a10);
  _Unwind_Resume(a1);
}

void sub_E948C0(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, __n128 *a4@<X8>)
{
  *__p = 0;
  *&__p[8] = &off_2669FE0;
  sub_434934(a4, __p);
  sub_E9BBEC(v36, a1, a3, a4);
  if ((sub_585D8(v36) & 1) == 0)
  {
    goto LABEL_58;
  }

  v40 = 17;
  strcpy(__p, "RequestValidation");
  __dst = 0;
  v50 = 0;
  v51 = 0;
  v8 = sub_3AEC94(a2, __p, &__dst);
  v9 = __dst;
  if (__dst)
  {
    v10 = v50;
    v11 = __dst;
    if (v50 != __dst)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __dst;
    }

    v50 = v9;
    operator delete(v11);
  }

  if (v40 < 0)
  {
    operator delete(*__p);
  }

  v40 = 15;
  strcpy(__p, "invalid_app_ids");
  v13 = sub_5F680(v8, __p);
  if (v40 < 0)
  {
    operator delete(*__p);
  }

  v14 = sub_E82FAC(a1);
  v15 = v14;
  v16 = *(v14 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v14 + 8);
  }

  if (!v16)
  {
    v17 = sub_E83004(a1);
    sub_E8305C(a1);
    sub_E830B0(a1);
    if (sub_7E7E4(1u))
    {
      sub_19594F8(__p);
      sub_4A5C(__p, "App id missing in proto message (is_internal_client: ", 53);
      v18 = std::ostream::operator<<();
      sub_4A5C(v18, ", is_internal_tool: ", 20);
      v19 = std::ostream::operator<<();
      v20 = sub_4A5C(v19, ", os_version: ", 14);
      v21 = *(v17 + 23);
      if (v21 >= 0)
      {
        v22 = v17;
      }

      else
      {
        v22 = *v17;
      }

      if (v21 >= 0)
      {
        v23 = *(v17 + 23);
      }

      else
      {
        v23 = *(v17 + 8);
      }

      v24 = sub_4A5C(v20, v22, v23);
      sub_4A5C(v24, ").", 2);
      if ((v48 & 0x10) != 0)
      {
        v26 = v47;
        if (v47 < v44)
        {
          v47 = v44;
          v26 = v44;
        }

        v27 = v43;
        v25 = v26 - v43;
        if (v26 - v43 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if ((v48 & 8) == 0)
        {
          v25 = 0;
          HIBYTE(v51) = 0;
LABEL_35:
          *(&__dst + v25) = 0;
          sub_7E854(&__dst, 1u);
          if (SHIBYTE(v51) < 0)
          {
            operator delete(__dst);
          }

          if (v46 < 0)
          {
            operator delete(v45);
          }

          std::locale::~locale(&__p[16]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_40;
        }

        v27 = v41;
        v25 = v42 - v41;
        if ((v42 - v41) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_62:
          sub_3244();
        }
      }

      if (v25 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v51) = v25;
      if (v25)
      {
        memmove(&__dst, v27, v25);
      }

      goto LABEL_35;
    }
  }

LABEL_40:
  v28 = *v13;
  v29 = v13[1];
  if (*v13 != v29)
  {
    v30 = *(v15 + 23);
    if (v30 >= 0)
    {
      v31 = *(v15 + 23);
    }

    else
    {
      v31 = *(v15 + 8);
    }

    if (v30 >= 0)
    {
      v32 = v15;
    }

    else
    {
      v32 = *v15;
    }

    while (1)
    {
      if (v28[2] != 1)
      {
        sub_5AF20();
      }

      v33 = *(*v28 + 23);
      v34 = v33;
      if ((v33 & 0x80u) != 0)
      {
        v33 = *(*v28 + 8);
      }

      if (v33 == v31)
      {
        v35 = v34 >= 0 ? *v28 : **v28;
        if (!memcmp(v35, v32, v31))
        {
          break;
        }
      }

      v28 += 4;
      if (v28 == v29)
      {
        goto LABEL_58;
      }
    }

    sub_E99C18("Request denied based on its app id: ", v15, __p);
    sub_E9BF80(v36, 3, __p);
    if (v40 < 0)
    {
      operator delete(*__p);
    }
  }

LABEL_58:
  if (v38 < 0)
  {
    operator delete(v37);
  }
}

void sub_E94D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v24 - 65) < 0)
  {
    operator delete(*(v24 - 88));
  }

  sub_1959728(&a18);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_CF3C94(v23);
  _Unwind_Resume(a1);
}

void sub_E94E2C(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, __n128 *a4@<X8>)
{
  *__p = 0;
  *&__p[8] = &off_2669FE0;
  sub_434934(a4, __p);
  sub_E9B860(v36, a1, a3, a4);
  if ((sub_585D8(v36) & 1) == 0)
  {
    goto LABEL_58;
  }

  v40 = 17;
  strcpy(__p, "RequestValidation");
  __dst = 0;
  v50 = 0;
  v51 = 0;
  v8 = sub_3AEC94(a2, __p, &__dst);
  v9 = __dst;
  if (__dst)
  {
    v10 = v50;
    v11 = __dst;
    if (v50 != __dst)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __dst;
    }

    v50 = v9;
    operator delete(v11);
  }

  if (v40 < 0)
  {
    operator delete(*__p);
  }

  v40 = 15;
  strcpy(__p, "invalid_app_ids");
  v13 = sub_5F680(v8, __p);
  if (v40 < 0)
  {
    operator delete(*__p);
  }

  v14 = sub_E82FA0(a1);
  v15 = v14;
  v16 = *(v14 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v14 + 8);
  }

  if (!v16)
  {
    v17 = sub_E82FE4(a1);
    sub_E83040(a1);
    sub_E83094(a1);
    if (sub_7E7E4(1u))
    {
      sub_19594F8(__p);
      sub_4A5C(__p, "App id missing in proto message (is_internal_client: ", 53);
      v18 = std::ostream::operator<<();
      sub_4A5C(v18, ", is_internal_tool: ", 20);
      v19 = std::ostream::operator<<();
      v20 = sub_4A5C(v19, ", os_version: ", 14);
      v21 = *(v17 + 23);
      if (v21 >= 0)
      {
        v22 = v17;
      }

      else
      {
        v22 = *v17;
      }

      if (v21 >= 0)
      {
        v23 = *(v17 + 23);
      }

      else
      {
        v23 = *(v17 + 8);
      }

      v24 = sub_4A5C(v20, v22, v23);
      sub_4A5C(v24, ").", 2);
      if ((v48 & 0x10) != 0)
      {
        v26 = v47;
        if (v47 < v44)
        {
          v47 = v44;
          v26 = v44;
        }

        v27 = v43;
        v25 = v26 - v43;
        if (v26 - v43 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if ((v48 & 8) == 0)
        {
          v25 = 0;
          HIBYTE(v51) = 0;
LABEL_35:
          *(&__dst + v25) = 0;
          sub_7E854(&__dst, 1u);
          if (SHIBYTE(v51) < 0)
          {
            operator delete(__dst);
          }

          if (v46 < 0)
          {
            operator delete(v45);
          }

          std::locale::~locale(&__p[16]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_40;
        }

        v27 = v41;
        v25 = v42 - v41;
        if ((v42 - v41) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_62:
          sub_3244();
        }
      }

      if (v25 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v51) = v25;
      if (v25)
      {
        memmove(&__dst, v27, v25);
      }

      goto LABEL_35;
    }
  }

LABEL_40:
  v28 = *v13;
  v29 = v13[1];
  if (*v13 != v29)
  {
    v30 = *(v15 + 23);
    if (v30 >= 0)
    {
      v31 = *(v15 + 23);
    }

    else
    {
      v31 = *(v15 + 8);
    }

    if (v30 >= 0)
    {
      v32 = v15;
    }

    else
    {
      v32 = *v15;
    }

    while (1)
    {
      if (v28[2] != 1)
      {
        sub_5AF20();
      }

      v33 = *(*v28 + 23);
      v34 = v33;
      if ((v33 & 0x80u) != 0)
      {
        v33 = *(*v28 + 8);
      }

      if (v33 == v31)
      {
        v35 = v34 >= 0 ? *v28 : **v28;
        if (!memcmp(v35, v32, v31))
        {
          break;
        }
      }

      v28 += 4;
      if (v28 == v29)
      {
        goto LABEL_58;
      }
    }

    sub_E99C18("Request denied based on its app id: ", v15, __p);
    sub_E9BF80(v36, 3, __p);
    if (v40 < 0)
    {
      operator delete(*__p);
    }
  }

LABEL_58:
  if (v38 < 0)
  {
    operator delete(v37);
  }
}

void sub_E95308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v24 - 65) < 0)
  {
    operator delete(*(v24 - 88));
  }

  sub_1959728(&a18);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_CF3C94(v23);
  _Unwind_Resume(a1);
}

BOOL sub_E95398(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    result = 1;
    if ((*(a1 + 16) & 1) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

  v3 = *(a1 + 32);
  v4 = v3 + 978307200.0;
  if (v3 + 978307200.0 <= 2147483650.0 && v4 >= v3 && v4 >= -2147483650.0)
  {
    result = 1;
    goto LABEL_16;
  }

  result = sub_7E7E4(3u);
  if (!result)
  {
LABEL_16:
    if ((*(a1 + 16) & 1) == 0)
    {
      return result;
    }

LABEL_17:
    v9 = *(a1 + 24);
    v10 = v9 + 978307200.0;
    if (v9 + 978307200.0 <= 2147483650.0 && v10 >= v9 && v10 >= -2147483650.0)
    {
      return result;
    }

    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v21);
    sub_4A5C(&v21, "Got a request with an invalid routeAttributes.timepoint.time (", 62);
    v13 = std::ostream::operator<<();
    sub_4A5C(v13, ").", 2);
    if ((v31 & 0x10) != 0)
    {
      v17 = v30;
      if (v30 < v27)
      {
        v30 = v27;
        v17 = v27;
      }

      v18 = v26;
      v14 = v17 - v26;
      if (v17 - v26 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if ((v31 & 8) == 0)
      {
        v14 = 0;
        v20 = 0;
LABEL_51:
        *(&__p + v14) = 0;
        sub_7E854(&__p, 3u);
        if (v20 < 0)
        {
          operator delete(__p);
        }

        if (v29 < 0)
        {
          operator delete(v28);
        }

        std::locale::~locale(&v23);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v18 = v24;
      v14 = v25 - v24;
      if ((v25 - v24) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_59:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v20 = v14;
    if (v14)
    {
      memmove(&__p, v18, v14);
    }

    goto LABEL_51;
  }

  sub_19594F8(&v21);
  sub_4A5C(&v21, "Got a request with an invalid routeAttributes.timepoint.current_user_time (", 75);
  v7 = std::ostream::operator<<();
  sub_4A5C(v7, ").", 2);
  if ((v31 & 0x10) != 0)
  {
    v15 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v15 = v27;
    }

    v16 = v26;
    v8 = v15 - v26;
    if (v15 - v26 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v8 = 0;
      v20 = 0;
      goto LABEL_43;
    }

    v16 = v24;
    v8 = v25 - v24;
    if ((v25 - v24) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_57:
      sub_3244();
    }
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  v20 = v8;
  if (v8)
  {
    memmove(&__p, v16, v8);
  }

LABEL_43:
  *(&__p + v8) = 0;
  sub_7E854(&__p, 3u);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  std::locale::~locale(&v23);
  std::ostream::~ostream();
  std::ios::~ios();
  result = 0;
  if (*(a1 + 16))
  {
    goto LABEL_17;
  }

  return result;
}

void sub_E958EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_E95964(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v20.n128_u64[0] = 0;
  v20.n128_u64[1] = &off_2669FE0;
  sub_434934(a2, &v20);
  if (fabs(*(a1 + 48)) > 90.0)
  {
    v4 = a2[1].n128_u64[1];
    if (v4 >= a2[2].n128_u64[0])
    {
      v5 = sub_E98D8C(&a2[1], "LatLng has a latitude outside of [-90,+90].");
    }

    else
    {
      sub_E98F04(a2[1].n128_u64[1], "LatLng has a latitude outside of [-90,+90].");
      v5 = v4 + 32;
    }

    a2[1].n128_u64[1] = v5;
  }

  v6 = *(a1 + 56);
  if (fabs(v6) > 180.0)
  {
    v7 = a2[1].n128_u64[1];
    if (v7 >= a2[2].n128_u64[0])
    {
      v8 = sub_E99020(&a2[1], "LatLng has a longitude outside of [-180,+180].");
    }

    else
    {
      sub_E99198(a2[1].n128_u64[1], "LatLng has a longitude outside of [-180,+180].");
      v8 = v7 + 32;
    }

    a2[1].n128_u64[1] = v8;
    v6 = *(a1 + 56);
  }

  if (*(a1 + 48) == 0.0 && v6 == 0.0 && sub_7E7E4(1u))
  {
    sub_19594F8(&v20);
    v9 = sub_4A5C(&v20, "LatLng 0,0 is a suspicious default coordinate: ", 47);
    v10 = sub_74700();
    v11 = sub_73F1C(v10);
    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = *v11;
    }

    if (v12 >= 0)
    {
      v14 = *(v11 + 23);
    }

    else
    {
      v14 = *(v11 + 8);
    }

    sub_4A5C(v9, v13, v14);
    if ((v29 & 0x10) != 0)
    {
      v16 = v28;
      if (v28 < v25)
      {
        v28 = v25;
        v16 = v25;
      }

      v17 = v24;
      v15 = v16 - v24;
      if (v16 - v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v29 & 8) == 0)
      {
        v15 = 0;
        v19 = 0;
LABEL_31:
        *(&__p + v15) = 0;
        sub_7E854(&__p, 1u);
        if (v19 < 0)
        {
          operator delete(__p);
        }

        if (v27 < 0)
        {
          operator delete(v26);
        }

        std::locale::~locale(&v21);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_36;
      }

      v17 = v22;
      v15 = v23 - v22;
      if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_38:
        sub_3244();
      }
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v19 = v15;
    if (v15)
    {
      memmove(&__p, v17, v15);
    }

    goto LABEL_31;
  }

LABEL_36:
  a2->n128_u64[0] = a2[1].n128_u64[0] != a2[1].n128_u64[1];
  a2->n128_u64[1] = &off_2669FE0;
}

void sub_E95CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_CF3C94(v15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_CF3C94(v15);
  _Unwind_Resume(a1);
}

void sub_E95D74(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  if (*(a1 + 48))
  {
    v4 = *(a1 + 48);
  }

  else
  {
    v4 = &off_277E5E8;
  }

  sub_E95964(v4, a2);
  v5 = *(a1 + 40);
  if ((v5 & 4) != 0)
  {
    v6 = *(a1 + 64);
    v7 = v6 + 978307200.0;
    v8 = v6 + 978307200.0 > 2147483650.0 || v7 < v6;
    if (v8 || v7 < -2147483650.0)
    {
      v10 = a2[1].n128_u64[1];
      if (v10 >= a2[2].n128_u64[0])
      {
        v11 = sub_E992B4(&a2[1], "Location timestamp not within bounds of common::TimeStamp.");
      }

      else
      {
        sub_E9942C(a2[1].n128_u64[1], "Location timestamp not within bounds of common::TimeStamp.");
        v11 = v10 + 32;
      }

      a2[1].n128_u64[1] = v11;
      v5 = *(a1 + 40);
    }
  }

  if ((v5 & 0x20) != 0)
  {
    v12 = *(a1 + 88);
    if (v12 < 0.0)
    {
      v13 = a2[1].n128_u64[1];
      if (v13 >= a2[2].n128_u64[0])
      {
        v14 = sub_E99548(&a2[1], "Location has a negative speed.");
      }

      else
      {
        sub_E996C0(a2[1].n128_u64[1], "Location has a negative speed.");
        v14 = v13 + 32;
      }

      a2[1].n128_u64[1] = v14;
      v12 = *(a1 + 88);
    }

    if (v12 > 140.0 && sub_7E7E4(1u))
    {
      sub_19594F8(&v30);
      v15 = sub_4A5C(&v30, "Location has a speed of more than 140 m/s (504 km/h): ", 54);
      v16 = sub_74700();
      v17 = sub_73F1C(v16);
      v18 = *(v17 + 23);
      if (v18 >= 0)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v17;
      }

      if (v18 >= 0)
      {
        v20 = *(v17 + 23);
      }

      else
      {
        v20 = *(v17 + 8);
      }

      sub_4A5C(v15, v19, v20);
      if ((v40 & 0x10) != 0)
      {
        v22 = v39;
        if (v39 < v36)
        {
          v39 = v36;
          v22 = v36;
        }

        v23 = v35;
        v21 = v22 - v35;
        if (v22 - v35 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if ((v40 & 8) == 0)
        {
          v21 = 0;
          v29 = 0;
LABEL_42:
          *(&__p + v21) = 0;
          sub_7E854(&__p, 1u);
          if (v29 < 0)
          {
            operator delete(__p);
          }

          if (v38 < 0)
          {
            operator delete(v37);
          }

          std::locale::~locale(&v32);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_47;
        }

        v23 = v33;
        v21 = v34 - v33;
        if ((v34 - v33) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_59:
          sub_3244();
        }
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v29 = v21;
      if (v21)
      {
        memmove(&__p, v23, v21);
      }

      goto LABEL_42;
    }
  }

LABEL_47:
  if ((*(a1 + 41) & 2) != 0)
  {
    v24 = *(a1 + 112);
    if (v24 != -1.0 && (v24 < 0.0 || v24 > 360.0))
    {
      v26 = a2[1].n128_u64[1];
      if (v26 >= a2[2].n128_u64[0])
      {
        v27 = sub_E997DC(&a2[1], "Location has a course outside of [0,360].");
      }

      else
      {
        sub_E99954(a2[1].n128_u64[1], "Location has a course outside of [0,360].");
        v27 = v26 + 32;
      }

      a2[1].n128_u64[1] = v27;
    }
  }

  a2->n128_u64[0] = a2[1].n128_u64[0] != a2[1].n128_u64[1];
  a2->n128_u64[1] = &off_2669FE0;
}

void sub_E9616C(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  sub_CF3C94(v1);
  _Unwind_Resume(a1);
}

void sub_E96184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_CF3C94(v15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_CF3C94(v15);
  _Unwind_Resume(a1);
}

void sub_E96228(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, __n128 *a4@<X8>)
{
  *__p = 0;
  *&__p[8] = &off_2669FE0;
  sub_434934(a4, __p);
  sub_E9B4D4(v36, a1, a3, a4);
  if ((sub_585D8(v36) & 1) == 0)
  {
    goto LABEL_60;
  }

  v40 = 17;
  strcpy(__p, "RequestValidation");
  __dst = 0;
  v50 = 0uLL;
  v8 = sub_3AEC94(a2, __p, &__dst);
  v9 = __dst;
  if (__dst)
  {
    v10 = v50;
    v11 = __dst;
    if (v50 != __dst)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = __dst;
    }

    *&v50 = v9;
    operator delete(v11);
  }

  if (v40 < 0)
  {
    operator delete(*__p);
  }

  v40 = 15;
  strcpy(__p, "invalid_app_ids");
  v13 = sub_5F680(v8, __p);
  if (v40 < 0)
  {
    operator delete(*__p);
  }

  v14 = sub_E893A4(a1);
  v15 = v14;
  v16 = *(v14 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v14 + 8);
  }

  if (!v16)
  {
    v17 = sub_E82FC4(a1);
    sub_E83024(a1);
    sub_E83078(a1);
    if (sub_7E7E4(1u))
    {
      sub_19594F8(__p);
      sub_4A5C(__p, "App id missing in proto message (is_internal_client: ", 53);
      v18 = std::ostream::operator<<();
      sub_4A5C(v18, ", is_internal_tool: ", 20);
      v19 = std::ostream::operator<<();
      v20 = sub_4A5C(v19, ", os_version: ", 14);
      v21 = *(v17 + 23);
      if (v21 >= 0)
      {
        v22 = v17;
      }

      else
      {
        v22 = *v17;
      }

      if (v21 >= 0)
      {
        v23 = *(v17 + 23);
      }

      else
      {
        v23 = *(v17 + 8);
      }

      v24 = sub_4A5C(v20, v22, v23);
      sub_4A5C(v24, ").", 2);
      if ((v48 & 0x10) != 0)
      {
        v26 = v47;
        if (v47 < v44)
        {
          v47 = v44;
          v26 = v44;
        }

        v27 = v43;
        v25 = v26 - v43;
        if (v26 - v43 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if ((v48 & 8) == 0)
        {
          v25 = 0;
          HIBYTE(v50) = 0;
LABEL_35:
          *(&__dst + v25) = 0;
          sub_7E854(&__dst, 1u);
          if (SHIBYTE(v50) < 0)
          {
            operator delete(__dst);
          }

          if (v46 < 0)
          {
            operator delete(v45);
          }

          std::locale::~locale(&__p[16]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_40;
        }

        v27 = v41;
        v25 = v42 - v41;
        if ((v42 - v41) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_64:
          sub_3244();
        }
      }

      if (v25 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v50) = v25;
      if (v25)
      {
        memmove(&__dst, v27, v25);
      }

      goto LABEL_35;
    }
  }

LABEL_40:
  v28 = *v13;
  v29 = v13[1];
  if (*v13 != v29)
  {
    v30 = *(v15 + 23);
    if (v30 >= 0)
    {
      v31 = *(v15 + 23);
    }

    else
    {
      v31 = *(v15 + 8);
    }

    if (v30 >= 0)
    {
      v32 = v15;
    }

    else
    {
      v32 = *v15;
    }

    while (1)
    {
      if (v28[2] != 1)
      {
        sub_5AF20();
      }

      v33 = *(*v28 + 23);
      v34 = v33;
      if ((v33 & 0x80u) != 0)
      {
        v33 = *(*v28 + 8);
      }

      if (v33 == v31)
      {
        v35 = v34 >= 0 ? *v28 : **v28;
        if (!memcmp(v35, v32, v31))
        {
          break;
        }
      }

      v28 += 4;
      if (v28 == v29)
      {
        goto LABEL_58;
      }
    }

    sub_E99C18("Request denied based on its app id: ", v15, __p);
    sub_E9BF80(v36, 3, __p);
    if (v40 < 0)
    {
      operator delete(*__p);
    }
  }

LABEL_58:
  if (!*(a1 + 536))
  {
    operator new();
  }

LABEL_60:
  if (v38 < 0)
  {
    operator delete(v37);
  }
}

void sub_E967E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v24 - 81) < 0)
  {
    operator delete(*(v24 - 104));
  }

  sub_1959728(&a18);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_CF3C94(v23);
  _Unwind_Resume(a1);
}

void sub_E968A0(uint64_t a1@<X0>, unsigned int a2@<W1>, __n128 *a3@<X8>)
{
  v9.n128_u64[0] = 0;
  v9.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v9);
  sub_E9B4D4(v10, a1, a2, a3);
  if (sub_585D8(v10))
  {
    if ((*(a1 + 40) & 0x20) == 0)
    {
      operator new();
    }

    if (sub_E7A5E0(a1) != 8)
    {
      v6 = *(a1 + 336);
      if (!v6)
      {
        v6 = &off_2772E28;
      }

      v7 = v6[10];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = &off_2772DF8;
      }

      if (!sub_E95398(v8))
      {
        operator new();
      }
    }
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }
}

void sub_E96AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_CF3C94(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
    if (a27 < 0)
    {
LABEL_5:
      operator delete(a22);
      sub_CF3C94(v27);
      _Unwind_Resume(a1);
    }
  }

  else if (a27 < 0)
  {
    goto LABEL_5;
  }

  sub_CF3C94(v27);
  _Unwind_Resume(a1);
}

void sub_E96B88(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v13 = a2;
  if (a1 >= 0)
  {
    v4 = 50000;
  }

  else
  {
    v4 = -50000;
  }

  v14 = a1 / 100000 + (v4 + a1 % 100000) / 100000;
  sub_E96DA4("Total distance to reach waypoint ", " exceeds the maximum allowed value of ", " km.", v11);
  *&v10 = 16;
  *(&v10 + 1) = &off_2669FE0;
  LOBYTE(v14) = 14;
  if (SHIBYTE(v12) < 0)
  {
    sub_325C(&v15, v11[0], v11[1]);
  }

  else
  {
    v15 = *v11;
    v16 = v12;
  }

  sub_435A00(&__p, &v14, 1uLL);
  sub_4349F4(a3, &v10, &__p, v13);
  v5 = __p;
  if (__p)
  {
    v6 = v9;
    v7 = __p;
    if (v9 != __p)
    {
      do
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 3));
        }

        v6 -= 4;
      }

      while (v6 != v5);
      v7 = __p;
    }

    v9 = v5;
    operator delete(v7);
  }

  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v11[0]);
    return;
  }

  operator delete(v15);
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_19;
  }
}

void sub_E96D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_E96DA4@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v19, a1, v8);
  std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E97060(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E97074(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X8>)
{
  v20 = a4;
  v19 = 0;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v13.n128_u64[0] = 0;
  v13.n128_u64[1] = &off_2669FE0;
  sub_434934(a5, &v13);
  v13.n128_u64[0] = &v19;
  v13.n128_u64[1] = &v18;
  v14 = &v16;
  v15 = &v20;
  if (a1)
  {
    sub_E971A0(&v13, a1, *(*(a2 + 16) + 8), a5);
  }

  v9 = 0;
  v10 = *(a2 + 8);
  if (v10 <= 1)
  {
    v10 = 1;
  }

  v11 = 8 * (v10 - 1);
  while (v11 != v9)
  {
    v12 = *(a2 + 16) + v9;
    v9 += 8;
    sub_E971A0(&v13, *(v12 + 8), *(v12 + 16), a5);
  }

  if (a3)
  {
    sub_E971A0(&v13, *(*(a2 + 16) + 8 * *(a2 + 8)), a3, a5);
  }
}

void sub_E971A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 8) != &off_2669FE0 || *a4 != 0)
  {
    return;
  }

  v8 = sub_E99A70(a2);
  v9 = sub_E99A70(a3);
  if (v8 >= 0xFFFFFFFF00000000 && v8 == -1 || v9 >= 0xFFFFFFFF00000000 && v9 == -1)
  {
    operator new();
  }

  if (v8 != -1 || HIDWORD(v8) != 0xFFFFFFFF)
  {
    v10 = HIDWORD(v9);
    if (v9 != -1 || v10 != 0xFFFFFFFF)
    {
      v17 = v9;
      v18 = exp(3.14159265 - HIDWORD(v8) * 6.28318531 / 4294967300.0);
      v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795 * 0.0174532925;
      v20.i64[0] = v8;
      v20.i64[1] = v17;
      v21 = exp(3.14159265 - v10 * 6.28318531 / 4294967300.0);
      v22 = atan((v21 - 1.0 / v21) * 0.5) * 57.2957795 * 0.0174532925;
      v23 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v20), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
      v34 = vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0];
      v24 = sin((v19 - v22) * 0.5);
      v25 = v24 * v24;
      v26 = cos(v19);
      v27 = v26 * cos(v22);
      v28 = sin(0.5 * v34);
      v29 = atan2(sqrt(v28 * v28 * v27 + v25), sqrt(1.0 - (v28 * v28 * v27 + v25)));
      v30 = (v29 + v29) * 6372797.56 * 100.0;
      if (v30 >= 0.0)
      {
        v31 = v30;
        if (v30 >= 4.50359963e15)
        {
          goto LABEL_32;
        }

        v32 = (v30 + v30) + 1;
      }

      else
      {
        v31 = v30;
        if (v30 <= -4.50359963e15)
        {
          goto LABEL_32;
        }

        v32 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
      }

      v31 = (v32 >> 1);
LABEL_32:
      if (v31 >= 9.22337204e18)
      {
        v11 = 0x7FFFFFFFFFFFFFFELL;
        goto LABEL_16;
      }

      if (v30 >= 0.0)
      {
        if (v30 < 4.50359963e15)
        {
          v33 = (v30 + v30) + 1;
          goto LABEL_39;
        }
      }

      else if (v30 > -4.50359963e15)
      {
        v33 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
LABEL_39:
        v30 = (v33 >> 1);
      }

      v11 = v30;
      goto LABEL_16;
    }
  }

  v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_16:
  **(a1 + 8) += v11;
  v12 = *(a1 + 16);
  ++*v12;
  v13 = **(a1 + 24);
  if (**(a1 + 8) > v13)
  {
    sub_E96B88(v13, *v12, v35);
    sub_434BB0(a4, v35);
    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          if (*(v15 - 1) < 0)
          {
            operator delete(*(v15 - 3));
          }

          v15 -= 4;
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }
  }
}

void sub_E97600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_CF3C94(va);
  _Unwind_Resume(a1);
}

void sub_E97614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_CF3C94(&a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E97640(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v11.n128_u64[0] = 0;
  v11.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v11);
  if ((*(a1 + 40) & 0x40) != 0)
  {
    sub_E9B4D4(v14, a1, a2, a3);
    if (sub_585D8(v14))
    {
      if (*(a1 + 344))
      {
        v6 = *(a1 + 344);
      }

      else
      {
        v6 = &off_277E738;
      }

      sub_E95D74(v6, &v11);
      sub_E9BBFC(v14, &v11);
      v7 = __p;
      if (__p)
      {
        v8 = v13;
        v9 = __p;
        if (v13 != __p)
        {
          do
          {
            if (*(v8 - 1) < 0)
            {
              operator delete(*(v8 - 3));
            }

            v8 -= 4;
          }

          while (v8 != v7);
          v9 = __p;
        }

        v13 = v7;
        operator delete(v9);
      }

      if (*(a3 + 8) != &off_2669FE0 || *a3 != 0)
      {
        operator new();
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }
}

void sub_E97818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_CF3C94(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a27 & 0x80000000) == 0)
    {
LABEL_3:
      sub_CF3C94(v27);
      _Unwind_Resume(a1);
    }
  }

  else if ((a27 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a22);
  sub_CF3C94(v27);
  _Unwind_Resume(a1);
}

void sub_E978B8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int16 a4@<W3>, __n128 *a5@<X8>)
{
  v50[0] = 0;
  v50[1] = &off_2669FE0;
  sub_434934(a5, v50);
  v10 = sub_E7A5E0(a1);
  v11 = v10;
  if (v10 > 0xD)
  {
    v12 = 0;
  }

  else if (((1 << v10) & 0x37F9) != 0)
  {
    v12 = 3;
  }

  else
  {
    if (((1 << v10) & 6) == 0)
    {
      v13 = 0;
      goto LABEL_18;
    }

    v12 = 4;
  }

  if (v12 >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (v10 > 0xD)
  {
    goto LABEL_13;
  }

  if (((1 << v10) & 0x2E0) != 0)
  {
    v14 = 3;
    goto LABEL_19;
  }

  if (((1 << v10) & 0x3408) != 0)
  {
    v14 = 2;
    goto LABEL_19;
  }

  if (((1 << v10) & 0x910) == 0)
  {
LABEL_13:
    if (v10 - 1 < 2)
    {
      v14 = 4;
      goto LABEL_19;
    }
  }

LABEL_18:
  v14 = 0;
LABEL_19:
  sub_E9B4D4(v56, a1, v13, a5);
  if (v14 >= HIBYTE(a4))
  {
    v15 = HIBYTE(a4);
  }

  else
  {
    v15 = v14;
  }

  sub_E9B4D4(v53, a1, v15, a5);
  if ((*(a1 + 40) & 4) == 0)
  {
    operator new();
  }

  HIBYTE(v49[2]) = 17;
  strcpy(v49, "DirectionsRequest");
  sub_E92B48(a1, v49, v50);
  sub_E9BBFC(v53, v50);
  v16 = __p_8;
  if (__p_8)
  {
    v17 = v52;
    v18 = __p_8;
    if (v52 != __p_8)
    {
      do
      {
        if (*(v17 - 1) < 0)
        {
          operator delete(*(v17 - 3));
        }

        v17 -= 4;
      }

      while (v17 != v16);
      v18 = __p_8;
    }

    v52 = v16;
    operator delete(v18);
  }

  if (SHIBYTE(v49[2]) < 0)
  {
    operator delete(v49[0]);
  }

  if ((*(nullsub_1(a2) + 128) & 1) == 0)
  {
    operator new();
  }

  if ((*(a1 + 42) & 1) == 0)
  {
    if (v11)
    {
      if (!*(a1 + 88))
      {
        operator new();
      }
    }

    goto LABEL_111;
  }

  if (sub_E81B98(a1) && (sub_E7FD98(a1) & 0x100000000) == 0)
  {
    operator new();
  }

  if (*(a1 + 424))
  {
    v19 = *(a1 + 424);
  }

  else
  {
    v19 = &off_27721B8;
  }

  if ((v19[2] & 0x10) == 0)
  {
    operator new();
  }

  if (!*(v19 + 16))
  {
    operator new();
  }

  if ((v19[2] & 2) != 0 && !*(v19 + 13))
  {
    operator new();
  }

  v20 = sub_3AF114(a3);
  v21 = sub_2D5630(*v20);
  if (*(v19 + 13) == 2 && (v21 & 1) == 0 && (*(v19 + 16) - 9) >= 2)
  {
    operator new();
  }

  if ((v19[2] & 2) != 0 && *(nullsub_1(a2) + 128) == 1)
  {
    v22 = sub_E84AD8(*(v19 + 13));
    v23 = nullsub_1(a2);
    v24 = sub_4F96C0(v23);
    if (v22 != v24)
    {
      sub_EA7178(v22, v49);
      sub_EA7178(v24, v47);
      sub_E98558("Different route source in the OriginalWaypointRoute (", v49, ") and the session state (", v47, ") of the request.", v50);
      sub_E9BF80(v56, 7, v50);
      if (SHIBYTE(__p_8) < 0)
      {
        operator delete(v50[0]);
        if ((v48 & 0x80000000) == 0)
        {
LABEL_62:
          if ((SHIBYTE(v49[2]) & 0x80000000) == 0)
          {
            goto LABEL_68;
          }

LABEL_67:
          operator delete(v49[0]);
          goto LABEL_68;
        }
      }

      else if ((v48 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      operator delete(v47[0]);
      if ((SHIBYTE(v49[2]) & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

LABEL_68:
  v25 = *(v19 + 16);
  if (v25 == 10)
  {
    if ((v19[2] & 2) == 0)
    {
      operator new();
    }

    goto LABEL_80;
  }

  if (v25 == 13)
  {
    if ((v19[2] & 4) == 0)
    {
      operator new();
    }

    goto LABEL_80;
  }

  if (v25 != 11)
  {
LABEL_80:
    v34 = v19 + 4;
    v33 = *(v19 + 8);
    if (!v33)
    {
      operator new();
    }

    v36 = v19[5];
    v35 = v19 + 5;
    v37 = v36 + 1;
    if (v36)
    {
      v31 = v37;
    }

    else
    {
      v31 = 0;
    }

    v32 = &v31[v33];
    v30 = v35;
    v27 = v34;
    goto LABEL_85;
  }

  v28 = *(v19 + 8);
  v27 = v19 + 4;
  v26 = v28;
  v30 = v27 + 1;
  v29 = v27[1];
  if (v29)
  {
    v31 = v29 + 1;
  }

  else
  {
    v31 = 0;
  }

  if (!v26)
  {
    goto LABEL_89;
  }

  v32 = &v31[v26];
  do
  {
LABEL_85:
    if ((*(*v31 + 40) & 3) == 0)
    {
      operator new();
    }

    ++v31;
  }

  while (v31 != v32);
LABEL_89:
  if (sub_585D8(v53) && *(nullsub_1(a2) + 128) == 1)
  {
    v38 = nullsub_1(a2);
    v39 = sub_4F9718(v38);
    v40 = *v27;
    if (v39 < v40)
    {
      operator new();
    }

    if (*v30)
    {
      v41 = (*v30 + 1);
    }

    else
    {
      v41 = 0;
    }

    if (!*v27)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v40 = *v27;
    if (*v30)
    {
      v41 = (*v30 + 1);
    }

    else
    {
      v41 = 0;
    }

    if (!*v27)
    {
      goto LABEL_111;
    }
  }

  v42 = 8 * v40;
  v43 = v41 + 8 * v40;
  while (1)
  {
    v44 = *(*v41 + 72);
    if (!v44)
    {
      v44 = &off_2772310;
    }

    if ((*(v44 + 17) & 4) != 0)
    {
      break;
    }

    v45 = *(*v41 + 80);
    if (!v45)
    {
      v45 = &off_2772310;
    }

    if ((*(v45 + 17) & 4) != 0)
    {
      break;
    }

    v41 += 8;
    v42 -= 8;
    if (!v42)
    {
      goto LABEL_111;
    }
  }

  v46 = *(*(v43 - 8) + 80);
  if (!v46)
  {
    v46 = &off_2772310;
  }

  if (*(v46 + 26) != 1)
  {
    operator new();
  }

LABEL_111:
  if ((v55 & 0x80000000) == 0)
  {
    if ((v58 & 0x80000000) == 0)
    {
      return;
    }

LABEL_115:
    operator delete(v57);
    return;
  }

  operator delete(v54);
  if (v58 < 0)
  {
    goto LABEL_115;
  }
}

void sub_E983A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
    if ((*(v39 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(v39 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    sub_CF3C94(v38);
    _Unwind_Resume(a1);
  }

  operator delete(*(v39 - 96));
  sub_CF3C94(v38);
  _Unwind_Resume(a1);
}

void sub_E98520()
{
  if (*(v0 - 73) < 0)
  {
    JUMPOUT(0xE98508);
  }

  JUMPOUT(0xE984F0);
}

uint64_t sub_E98558@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, _BYTE *a6@<X8>)
{
  sub_D7B0(v30);
  v12 = strlen(a1);
  v13 = sub_4A5C(&v31, a1, v12);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = sub_4A5C(v13, v15, v16);
  v18 = strlen(a3);
  v19 = sub_4A5C(v17, a3, v18);
  v20 = *(a4 + 23);
  if (v20 >= 0)
  {
    v21 = a4;
  }

  else
  {
    v21 = *a4;
  }

  if (v20 >= 0)
  {
    v22 = *(a4 + 23);
  }

  else
  {
    v22 = *(a4 + 8);
  }

  v23 = sub_4A5C(v19, v21, v22);
  v24 = strlen(a5);
  sub_4A5C(v23, a5, v24);
  if ((v41 & 0x10) != 0)
  {
    v26 = v40;
    if (v40 < v37)
    {
      v40 = v37;
      v26 = v37;
    }

    v27 = v36;
    v25 = v26 - v36;
    if (v26 - v36 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if ((v41 & 8) == 0)
    {
      v25 = 0;
      a6[23] = 0;
      goto LABEL_24;
    }

    v27 = v34;
    v25 = v35 - v34;
    if ((v35 - v34) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_28:
      sub_3244();
    }
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  a6[23] = v25;
  if (v25)
  {
    memmove(a6, v27, v25);
  }

LABEL_24:
  a6[v25] = 0;
  v31 = v28;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v33);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E9883C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E98850(uint64_t a1@<X0>, unsigned int a2@<W1>, __n128 *a3@<X8>)
{
  v38.n128_u64[0] = 0;
  v38.n128_u64[1] = &off_2669FE0;
  sub_434934(a3, &v38);
  if (sub_E7AAB8(a1))
  {
    v6 = sub_E9B4D4(v41, a1, a2, a3);
    if ((sub_585D8(v6) & 1) == 0)
    {
LABEL_46:
      if (v43 < 0)
      {
        operator delete(v42);
      }

      return;
    }

    v7 = *(a1 + 464);
    if (v7)
    {
      v8 = *(a1 + 464);
    }

    else
    {
      v8 = &off_2772200;
    }

    v9 = *(v8 + 12) + 1;
    if (*(a1 + 112) == v9)
    {
LABEL_28:
      if (!v7)
      {
        v7 = &off_2772200;
      }

      v23 = *(v7 + 12);
      v24 = v7[7];
      if (v24)
      {
        v25 = v24 + 1;
      }

      else
      {
        v25 = 0;
      }

      if (v23)
      {
        v26 = &v25[v23];
        do
        {
          v27 = *(*v25 + 6);
          v28 = *(*v25 + 4);
          if (v28)
          {
            v29 = v28 + 8;
          }

          else
          {
            v29 = 0;
          }

          if (v27)
          {
            v30 = 8 * v27;
            do
            {
              if (((*(*v29 + 16) >> 2) & 1) != (*(*v29 + 16) & 2u) >> 1 || *(*v29 + 36) < *(*v29 + 32))
              {
                operator new();
              }

              v29 += 8;
              v30 -= 8;
            }

            while (v30);
          }

          ++v25;
        }

        while (v25 != v26);
      }

      goto LABEL_46;
    }

    std::to_string(&v32, v9);
    v10 = std::string::insert(&v32, 0, "Wrong number of familiar route legs (expected: ", 0x2FuLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v33, ", got: ", 7uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v31, *(a1 + 112));
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v31;
    }

    else
    {
      v14 = v31.__r_.__value_.__r.__words[0];
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v31.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v34, v14, size);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v35, ")", 1uLL);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v37 = v18->__r_.__value_.__r.__words[2];
    *__p = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    sub_434A40(8, __p, &v38);
    sub_E9BBFC(v41, &v38);
    v20 = v39;
    if (v39)
    {
      v21 = v40;
      v22 = v39;
      if (v40 != v39)
      {
        do
        {
          if (*(v21 - 1) < 0)
          {
            operator delete(*(v21 - 3));
          }

          v21 -= 4;
        }

        while (v21 != v20);
        v22 = v39;
      }

      v40 = v20;
      operator delete(v22);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_23:
        if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_51;
      }
    }

    else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    operator delete(v35.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_24:
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_52;
    }

LABEL_51:
    operator delete(v31.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_53;
    }

LABEL_52:
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_27:
        v7 = *(a1 + 464);
        goto LABEL_28;
      }

LABEL_54:
      operator delete(v32.__r_.__value_.__l.__data_);
      goto LABEL_27;
    }

LABEL_53:
    operator delete(v33.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }
}

void sub_E98C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_CF3C94(v48 - 136);
  if (a47 < 0)
  {
    operator delete(__p);
    if ((a40 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a40 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a35);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a9);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
LABEL_14:
      if (*(v48 - 57) < 0)
      {
        operator delete(*(v48 - 80));
        sub_CF3C94(v47);
        _Unwind_Resume(a1);
      }

      sub_CF3C94(v47);
      _Unwind_Resume(a1);
    }

LABEL_13:
    operator delete(a15);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t sub_E98D8C(uint64_t *a1, char *a2)
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

  v15 = 32 * v2;
  sub_E98F04((32 * v2), a2);
  v7 = 32 * v2 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = v15 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v15 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v11 += 32;
      v12 += 32;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
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

void sub_E98EF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E98F04(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    *a1 = 0;
    v6 = a1 + 8;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = __dst;
    sub_325C(v6, __dst, *(&__dst + 1));
    operator delete(v7);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = 0;
  v6 = a1 + 8;
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v6 = __dst;
  *(v6 + 2) = v10;
  return a1;
}

uint64_t sub_E99020(uint64_t *a1, char *a2)
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

  v15 = 32 * v2;
  sub_E99198((32 * v2), a2);
  v7 = 32 * v2 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = v15 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v15 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v11 += 32;
      v12 += 32;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
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

void sub_E99184(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E99198(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    *a1 = 0;
    v6 = a1 + 8;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = __dst;
    sub_325C(v6, __dst, *(&__dst + 1));
    operator delete(v7);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = 0;
  v6 = a1 + 8;
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v6 = __dst;
  *(v6 + 2) = v10;
  return a1;
}

uint64_t sub_E992B4(uint64_t *a1, char *a2)
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

  v15 = 32 * v2;
  sub_E9942C((32 * v2), a2);
  v7 = 32 * v2 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = v15 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v15 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v11 += 32;
      v12 += 32;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
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

void sub_E99418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E9942C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    *a1 = 0;
    v6 = a1 + 8;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = __dst;
    sub_325C(v6, __dst, *(&__dst + 1));
    operator delete(v7);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = 0;
  v6 = a1 + 8;
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v6 = __dst;
  *(v6 + 2) = v10;
  return a1;
}

uint64_t sub_E99548(uint64_t *a1, char *a2)
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

  v15 = 32 * v2;
  sub_E996C0((32 * v2), a2);
  v7 = 32 * v2 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = v15 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v15 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v11 += 32;
      v12 += 32;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
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

void sub_E996AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E996C0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    *a1 = 0;
    v6 = a1 + 8;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = __dst;
    sub_325C(v6, __dst, *(&__dst + 1));
    operator delete(v7);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = 0;
  v6 = a1 + 8;
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v6 = __dst;
  *(v6 + 2) = v10;
  return a1;
}

uint64_t sub_E997DC(uint64_t *a1, char *a2)
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

  v15 = 32 * v2;
  sub_E99954((32 * v2), a2);
  v7 = 32 * v2 + 32;
  v8 = *a1;
  v9 = a1[1];
  v10 = v15 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v15 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      v11 += 32;
      v12 += 32;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
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

void sub_E99940(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_E99954(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    *a1 = 0;
    v6 = a1 + 8;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = __dst;
    sub_325C(v6, __dst, *(&__dst + 1));
    operator delete(v7);
    return a1;
  }

  LOBYTE(__dst) = 0;
  *a1 = 0;
  v6 = a1 + 8;
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v6 = __dst;
  *(v6 + 2) = v10;
  return a1;
}

uint64_t sub_E99A70(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 == 2)
  {
    v6 = *(a1 + 24);
    if (!v6)
    {
      v6 = &off_2776E58;
    }

    v5 = v6[10];
  }

  else
  {
    if (v1 == 4)
    {
      v4 = &off_2776F10;
      if (*(a1 + 40))
      {
        v4 = *(a1 + 40);
      }

      v2 = v4[6];
      v3 = &off_277E738;
    }

    else
    {
      if (v1 != 3)
      {
        return -1;
      }

      v2 = *(a1 + 32);
      v3 = &off_2776ED0;
    }

    if (!v2)
    {
      v2 = v3;
    }

    v5 = v2[6];
  }

  v7 = &off_277E5E8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = *(v7 + 7);
  v9 = -1;
  if (v8 <= 180.0)
  {
    v10 = *(v7 + 6);
    if (fabs(v10) <= 85.0511288 && v8 >= -180.0)
    {
      v11 = sin(fmin(fmax(v10, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
      LODWORD(v12) = ((log((v11 + 1.0) / (1.0 - v11)) / -12.5663706 + 0.5) * 4294967300.0);
      if (v12 >= 0xFFFFFFFE)
      {
        v12 = 4294967294;
      }

      else
      {
        v12 = v12;
      }

      return ((v8 + 180.0) / 360.0 * 4294967300.0) | (v12 << 32);
    }
  }

  return v9;
}

uint64_t sub_E99C18@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_E99E94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_E99EA8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_5F328(v10);
  if (sub_E81B98(a1))
  {
    operator new();
  }

  if (sub_E81BBC(a1))
  {
    operator new();
  }

  if (sub_E816E4(a1))
  {
    operator new();
  }

  v4 = sub_E839F4(a1);
  sub_E9A230(v10, v4, a2);
  v5 = v11;
  if (v11)
  {
    do
    {
      v6 = *v5;
      v7 = *(v5 + 12);
      if (v7 != -1)
      {
        (off_2674438[v7])(&v9, v5 + 5);
      }

      *(v5 + 12) = -1;
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v8 = v10[0];
  v10[0] = 0;
  if (v8)
  {
    operator delete(v8);
  }
}

void sub_E9A230(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_27BAC60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27BAC60))
  {
    sub_5F328(&unk_27BAC68);
    __cxa_guard_release(&qword_27BAC60);
  }

  *(&__p.__r_.__value_.__s + 23) = 3;
  LODWORD(__p.__r_.__value_.__l.__data_) = 7958113;
  v6 = sub_5FAAC(a1, &__p, &unk_27BAC68);
  sub_5ADDC(a3, v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = 0;
  do
  {
    std::to_string(&__p, v7);
    v8 = sub_5FAAC(a1, &__p, &unk_27BAC68);
    sub_5FC7C(a3, v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    ++v7;
  }

  while (a2 + 1 != v7);
}

void sub_E9A364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_E9A3AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  HIBYTE(v14[2]) = 21;
  strcpy(v14, "ETAURequestValidation");
  __p = 0;
  v12 = 0;
  v13 = 0;
  v5 = sub_3AEC94(a2, v14, &__p);
  v6 = sub_E83A98(a1);
  sub_E9A230(v5, v6, a3);
  v7 = __p;
  if (__p)
  {
    v8 = v12;
    v9 = __p;
    if (v12 != __p)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v12 = v7;
    operator delete(v9);
  }

  if (SHIBYTE(v14[2]) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_E9A4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_E9A4CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  HIBYTE(v14[2]) = 20;
  strcpy(v14, "ETARequestValidation");
  __p = 0;
  v12 = 0;
  v13 = 0;
  v5 = sub_3AEC94(a2, v14, &__p);
  v6 = sub_E83B3C(a1);
  sub_E9A230(v5, v6, a3);
  v7 = __p;
  if (__p)
  {
    v8 = v12;
    v9 = __p;
    if (v12 != __p)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v12 = v7;
    operator delete(v9);
  }

  if (SHIBYTE(v14[2]) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_E9A5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_E9A5F0(uint64_t a1)
{
  v2 = sub_E9AD14(&xmmword_27BAC90, a1);
  if (v2)
  {
    return *(v2 + 40);
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v14);
    v4 = sub_4A5C(&v14, "The Level ", 10);
    v5 = *(a1 + 23);
    if (v5 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    if (v5 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = *(a1 + 8);
    }

    v8 = sub_4A5C(v4, v6, v7);
    sub_4A5C(v8, " is not a valid RequestValidationLevel.", 39);
    if ((v24 & 0x10) != 0)
    {
      v10 = v23;
      if (v23 < v20)
      {
        v23 = v20;
        v10 = v20;
      }

      v11 = v19;
      v9 = v10 - v19;
      if (v10 - v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if ((v24 & 8) == 0)
      {
        v9 = 0;
        v13 = 0;
LABEL_22:
        *(&__p + v9) = 0;
        sub_7E854(&__p, 3u);
        if (v13 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }

        std::locale::~locale(&v16);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v11 = v17;
      v9 = v18 - v17;
      if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_28:
        sub_3244();
      }
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__p, v11, v9);
    }

    goto LABEL_22;
  }

  return result;
}

void sub_E9A8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t **sub_E9A8E4(void *a1, uint64_t a2)
{
  v2 = a2;
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

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_E9ACE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_E9ACFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_E9AD14(void *a1, uint64_t a2)
{
  v2 = a2;
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

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void sub_E9AECC()
{
  v1 = 8;
  strcpy(v0, "disabled");
  v3 = 269;
  strcpy(v2, "warn_internal");
  v5 = 516;
  strcpy(v4, "warn");
  v7 = 13;
  strcpy(v6, "fail_internal");
  v8 = 3;
  v10 = 1028;
  strcpy(__p, "fail");
  xmmword_27BAC90 = 0u;
  unk_27BACA0 = 0u;
  dword_27BACB0 = 1065353216;
  sub_E9A8E4(&xmmword_27BAC90, v0);
  sub_E9A8E4(&xmmword_27BAC90, v2);
  sub_E9A8E4(&xmmword_27BAC90, v4);
  sub_E9A8E4(&xmmword_27BAC90, v6);
  sub_E9A8E4(&xmmword_27BAC90, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v6[0]);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v4[0]);
  if ((v3 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v0[0]);
    return;
  }

LABEL_10:
  operator delete(v2[0]);
  if (v1 < 0)
  {
    goto LABEL_11;
  }
}

void sub_E9B0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  sub_23D9C(&xmmword_27BAC90);
  if (a43 < 0)
  {
    operator delete(__p);
    if ((a36 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a29 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a31);
  if ((a29 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a22 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_E9B14C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  if (a3)
  {
    v8 = sub_E83024(a2);
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (v8)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    *a1 = v9 <= a3;
    *(a1 + 1) = v10 <= a3;
    v11 = sub_E82FC4(a2);
    v12 = sub_E893A4(a2);
    if (*(v11 + 23) >= 0)
    {
      v13 = *(v11 + 23);
    }

    else
    {
      v13 = *(v11 + 8);
    }

    if (v13 + 13 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    v14 = v12;
    if (v13 + 13 >= 0x17)
    {
      operator new();
    }

    v28.__r_.__value_.__s.__data_[13] = 0;
    HIWORD(v28.__r_.__value_.__r.__words[1]) = 0;
    v28.__r_.__value_.__r.__words[2] = 0;
    *(&v28.__r_.__value_.__s + 23) = v13 + 13;
    strcpy(&v28, " os_version=");
    if (v13)
    {
      if (*(v11 + 23) >= 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = *v11;
      }

      memmove(&v28.__r_.__value_.__r.__words[1] + 5, v15, v13);
    }

    *(&v28.__r_.__value_.__r.__words[1] + v13 + 5) = 0;
    v16 = std::string::append(&v28, " app_id=", 0xAuLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = *(v14 + 23);
    if (v18 >= 0)
    {
      v19 = v14;
    }

    else
    {
      v19 = *v14;
    }

    if (v18 >= 0)
    {
      v20 = *(v14 + 23);
    }

    else
    {
      v20 = *(v14 + 8);
    }

    v21 = std::string::append(&v29, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v30, "", 1uLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v32 = v23->__r_.__value_.__r.__words[2];
    *__p = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (v32 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if (v32 >= 0)
    {
      v26 = HIBYTE(v32);
    }

    else
    {
      v26 = __p[1];
    }

    std::string::append(v5, v25, v26);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_38;
      }
    }

    else if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_34:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return a1;
      }

LABEL_39:
      operator delete(v28.__r_.__value_.__l.__data_);
      return a1;
    }

LABEL_38:
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_39;
  }

  return a1;
}

void sub_E9B3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v35 + 31) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a10);
  if ((*(v35 + 31) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(*v36);
  _Unwind_Resume(exception_object);
}

uint64_t sub_E9B4D8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  if (a3)
  {
    v8 = sub_E83040(a2);
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (v8)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    *a1 = v9 <= a3;
    *(a1 + 1) = v10 <= a3;
    v11 = sub_E82FE4(a2);
    v12 = sub_E82FA0(a2);
    if (*(v11 + 23) >= 0)
    {
      v13 = *(v11 + 23);
    }

    else
    {
      v13 = *(v11 + 8);
    }

    if (v13 + 13 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    v14 = v12;
    if (v13 + 13 >= 0x17)
    {
      operator new();
    }

    v28.__r_.__value_.__s.__data_[13] = 0;
    HIWORD(v28.__r_.__value_.__r.__words[1]) = 0;
    v28.__r_.__value_.__r.__words[2] = 0;
    *(&v28.__r_.__value_.__s + 23) = v13 + 13;
    strcpy(&v28, " os_version=");
    if (v13)
    {
      if (*(v11 + 23) >= 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = *v11;
      }

      memmove(&v28.__r_.__value_.__r.__words[1] + 5, v15, v13);
    }

    *(&v28.__r_.__value_.__r.__words[1] + v13 + 5) = 0;
    v16 = std::string::append(&v28, " app_id=", 0xAuLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = *(v14 + 23);
    if (v18 >= 0)
    {
      v19 = v14;
    }

    else
    {
      v19 = *v14;
    }

    if (v18 >= 0)
    {
      v20 = *(v14 + 23);
    }

    else
    {
      v20 = *(v14 + 8);
    }

    v21 = std::string::append(&v29, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v30, "", 1uLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v32 = v23->__r_.__value_.__r.__words[2];
    *__p = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (v32 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if (v32 >= 0)
    {
      v26 = HIBYTE(v32);
    }

    else
    {
      v26 = __p[1];
    }

    std::string::append(v5, v25, v26);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_38;
      }
    }

    else if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_34:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return a1;
      }

LABEL_39:
      operator delete(v28.__r_.__value_.__l.__data_);
      return a1;
    }

LABEL_38:
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_39;
  }

  return a1;
}

void sub_E9B76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v35 + 31) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a10);
  if ((*(v35 + 31) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(*v36);
  _Unwind_Resume(exception_object);
}

uint64_t sub_E9B864(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  if (a3)
  {
    v8 = sub_E8305C(a2);
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (v8)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    *a1 = v9 <= a3;
    *(a1 + 1) = v10 <= a3;
    v11 = sub_E83004(a2);
    v12 = sub_E82FAC(a2);
    if (*(v11 + 23) >= 0)
    {
      v13 = *(v11 + 23);
    }

    else
    {
      v13 = *(v11 + 8);
    }

    if (v13 + 13 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    v14 = v12;
    if (v13 + 13 >= 0x17)
    {
      operator new();
    }

    v28.__r_.__value_.__s.__data_[13] = 0;
    HIWORD(v28.__r_.__value_.__r.__words[1]) = 0;
    v28.__r_.__value_.__r.__words[2] = 0;
    *(&v28.__r_.__value_.__s + 23) = v13 + 13;
    strcpy(&v28, " os_version=");
    if (v13)
    {
      if (*(v11 + 23) >= 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = *v11;
      }

      memmove(&v28.__r_.__value_.__r.__words[1] + 5, v15, v13);
    }

    *(&v28.__r_.__value_.__r.__words[1] + v13 + 5) = 0;
    v16 = std::string::append(&v28, " app_id=", 0xAuLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = *(v14 + 23);
    if (v18 >= 0)
    {
      v19 = v14;
    }

    else
    {
      v19 = *v14;
    }

    if (v18 >= 0)
    {
      v20 = *(v14 + 23);
    }

    else
    {
      v20 = *(v14 + 8);
    }

    v21 = std::string::append(&v29, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    v23 = std::string::append(&v30, "", 1uLL);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v32 = v23->__r_.__value_.__r.__words[2];
    *__p = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (v32 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    if (v32 >= 0)
    {
      v26 = HIBYTE(v32);
    }

    else
    {
      v26 = __p[1];
    }

    std::string::append(v5, v25, v26);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_33:
        if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_38;
      }
    }

    else if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_34:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return a1;
      }

LABEL_39:
      operator delete(v28.__r_.__value_.__l.__data_);
      return a1;
    }

LABEL_38:
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_39;
  }

  return a1;
}

void sub_E9BAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v35 + 31) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a10);
  if ((*(v35 + 31) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(*v36);
  _Unwind_Resume(exception_object);
}

uint64_t sub_E9BBFC(uint64_t result, uint64_t a2)
{
  if (*result == 1)
  {
    v2 = result;
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    if (v3 != v4)
    {
      v5 = result + 8;
      while (1)
      {
        v6 = *(v2 + 31);
        v7 = v6 >= 0 ? v5 : *(v2 + 8);
        v8 = v6 >= 0 ? *(v2 + 31) : *(v2 + 16);
        std::string::append((v3 + 8), v7, v8);
        result = sub_7E7E4(3u);
        if (result)
        {
          break;
        }

LABEL_5:
        v3 += 32;
        if (v3 == v4)
        {
          goto LABEL_37;
        }
      }

      sub_19594F8(&v21);
      sub_D166D4(v3, __p);
      if ((v20 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v20 & 0x80u) == 0)
      {
        v10 = v20;
      }

      else
      {
        v10 = __p[1];
      }

      sub_4A5C(&v21, v9, v10);
      if (v20 < 0)
      {
        operator delete(__p[0]);
        v11 = v30;
        if ((v30 & 0x10) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v11 = v30;
        if ((v30 & 0x10) == 0)
        {
LABEL_21:
          if ((v11 & 8) == 0)
          {
            v12 = 0;
            v20 = 0;
LABEL_33:
            *(__p + v12) = 0;
            sub_7E854(__p, 3u);
            if (v20 < 0)
            {
              operator delete(__p[0]);
            }

            v21 = v18;
            *(&v21 + *(v18 - 3)) = v17;
            if (v28 < 0)
            {
              operator delete(v27);
            }

            std::locale::~locale(&v23);
            std::ostream::~ostream();
            result = std::ios::~ios();
            goto LABEL_5;
          }

          v13 = v24[2];
          v14 = v24;
LABEL_27:
          v15 = *v14;
          v12 = v13 - *v14;
          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v12 >= 0x17)
          {
            operator new();
          }

          v20 = v13 - *v14;
          if (v12)
          {
            memmove(__p, v15, v12);
          }

          goto LABEL_33;
        }
      }

      v13 = v29;
      v14 = &v25;
      if (v29 < v26)
      {
        v29 = v26;
        v13 = v26;
        v14 = &v25;
      }

      goto LABEL_27;
    }

LABEL_37:
    if (*(v2 + 1))
    {
      return sub_434B40(*(v2 + 32), a2);
    }
  }

  return result;
}

void sub_E9BF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_E9BF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_E9BF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_E9BF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a20);
  _Unwind_Resume(a1);
}

void sub_E9BF80(uint64_t a1, char a2, __int128 *a3)
{
  sub_434A40(a2, a3, v7);
  sub_E9BBFC(a1, v7);
  v4 = __p;
  if (__p)
  {
    v5 = v9;
    v6 = __p;
    if (v9 != __p)
    {
      do
      {
        if (*(v5 - 1) < 0)
        {
          operator delete(*(v5 - 3));
        }

        v5 -= 4;
      }

      while (v5 != v4);
      v6 = __p;
    }

    v9 = v4;
    operator delete(v6);
  }
}

uint64_t sub_E9C020@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a2;
  v90.n128_u64[0] = 0;
  v90.n128_u64[1] = &off_2669FE0;
  sub_434934(a2, &v90);
  v4 = *(a1 + 16);
  if ((v4 & 0x400) == 0)
  {
    v90.n128_u8[0] = 9;
    v5 = v3[1].n128_u64[1];
    if (v5 >= v3[2].n128_u64[0])
    {
      result = sub_E61050(&v3[1], &v90, "Got a WaypointTyped without a waypoint type specified.");
LABEL_200:
      v3[1].n128_u64[1] = result;
      goto LABEL_201;
    }

    sub_E611D0(v3[1].n128_u64[1], &v90, "Got a WaypointTyped without a waypoint type specified.");
LABEL_199:
    result = v5 + 32;
    goto LABEL_200;
  }

  v82 = a1;
  if (v4)
  {
    v7 = *(a1 + 24);
    if ((*(v7 + 40) & 2) != 0)
    {
      sub_E95964(*(v7 + 80), &v90);
      v9 = v90.n128_u32[0];
      v10 = __p;
      if (__p)
      {
        v11 = v3;
        v12 = v92;
        v13 = __p;
        if (v92 != __p)
        {
          do
          {
            if (*(v12 - 1) < 0)
            {
              operator delete(*(v12 - 3));
            }

            v12 -= 4;
          }

          while (v12 != v10);
          v13 = __p;
        }

        *&v92 = v10;
        operator delete(v13);
        v3 = v11;
      }

      a1 = v82;
      if (!v9)
      {
LABEL_26:
        if (sub_194F918(v7 + 16, dword_278D138))
        {
          v15 = sub_1950CD0(v7 + 16, dword_278D138, qword_278D140);
          sub_E9D420(v15, &v87);
          v16 = v88;
          v17 = v89;
          if (v88 != v89)
          {
            while (!sub_7E7E4(3u))
            {
LABEL_30:
              v16 += 32;
              if (v16 == v17)
              {
                v16 = v88;
                goto LABEL_61;
              }
            }

            sub_19594F8(&v90);
            sub_D166D4(v16, &__dst);
            if (v102 >= 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst;
            }

            if (v102 >= 0)
            {
              v20 = HIBYTE(v102);
            }

            else
            {
              v20 = *(&__dst + 1);
            }

            sub_4A5C(&v90, p_dst, v20);
            if (SHIBYTE(v102) < 0)
            {
              operator delete(__dst);
              v21 = v97;
              if ((v97 & 0x10) == 0)
              {
                goto LABEL_40;
              }
            }

            else
            {
              v21 = v97;
              if ((v97 & 0x10) == 0)
              {
LABEL_40:
                if ((v21 & 8) == 0)
                {
                  v22 = 0;
                  HIBYTE(v102) = 0;
LABEL_52:
                  *(&__dst + v22) = 0;
                  sub_7E854(&__dst, 3u);
                  a1 = v82;
                  if (SHIBYTE(v102) < 0)
                  {
                    operator delete(__dst);
                  }

                  v90.n128_u64[0] = v84;
                  *(v90.n128_u64 + *(v84 - 24)) = v18;
                  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v95.__r_.__value_.__l.__data_);
                  }

                  std::locale::~locale(&__p);
                  std::ostream::~ostream();
                  std::ios::~ios();
                  goto LABEL_30;
                }

                v23 = v93;
                v24 = &v92;
LABEL_46:
                v25 = *v24;
                v22 = v23 - *v24;
                if (v22 > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_3244();
                }

                if (v22 >= 0x17)
                {
                  operator new();
                }

                HIBYTE(v102) = v23 - *v24;
                if (v22)
                {
                  memmove(&__dst, v25, v22);
                }

                goto LABEL_52;
              }
            }

            v23 = v96;
            v24 = &v93 + 1;
            if (v96 < v94)
            {
              v96 = v94;
              v23 = v94;
              v24 = &v93 + 1;
            }

            goto LABEL_46;
          }

LABEL_61:
          if (v16)
          {
            v27 = v89;
            v28 = v16;
            if (v89 != v16)
            {
              do
              {
                if (*(v27 - 1) < 0)
                {
                  operator delete(*(v27 - 3));
                }

                v27 -= 32;
              }

              while (v27 != v16);
              v28 = v88;
            }

            v89 = v16;
            operator delete(v28);
          }

LABEL_69:
          v75 = 1;
          if ((*(a1 + 16) & 2) == 0)
          {
            goto LABEL_172;
          }

          goto LABEL_86;
        }

        if (!sub_7E7E4(1u))
        {
          goto LABEL_69;
        }

        sub_19594F8(&v90);
        sub_4A5C(&v90, "Got a WaypointID without a resolved place from JavaDispatcher.", 62);
        if ((v97 & 0x10) != 0)
        {
          v29 = v96;
          if (v96 < v94)
          {
            v96 = v94;
            v29 = v94;
          }

          v30 = &v93 + 1;
        }

        else
        {
          if ((v97 & 8) == 0)
          {
            v26 = 0;
            HIBYTE(v88) = 0;
            goto LABEL_81;
          }

          v30 = &v92;
          v29 = v93;
        }

        v31 = *v30;
        v26 = v29 - *v30;
        if (v26 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v26 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v88) = v29 - *v30;
        if (v26)
        {
          memmove(&v87, v31, v26);
        }

LABEL_81:
        v87.n128_u8[v26] = 0;
        sub_7E854(&v87, 1u);
        if (SHIBYTE(v88) < 0)
        {
          operator delete(v87.n128_u64[0]);
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        std::locale::~locale(&__p);
        std::ostream::~ostream();
        std::ios::~ios();
        v75 = 1;
        if ((*(a1 + 16) & 2) == 0)
        {
          goto LABEL_172;
        }

        goto LABEL_86;
      }

      v90.n128_u8[0] = 9;
      v8 = v3[1].n128_u64[1];
      if (v8 >= v3[2].n128_u64[0])
      {
        v14 = sub_EA0BB0(&v3[1], &v90, "Got an invalid WaypointID.location_hint.");
        goto LABEL_25;
      }

      sub_EA0D30(v3[1].n128_u64[1], &v90, "Got an invalid WaypointID.location_hint.");
    }

    else
    {
      v90.n128_u8[0] = 9;
      v8 = v3[1].n128_u64[1];
      if (v8 >= v3[2].n128_u64[0])
      {
        v14 = sub_EA0910(&v3[1], &v90, "Got a WaypointID missing the location_hint");
LABEL_25:
        v3[1].n128_u64[1] = v14;
        goto LABEL_26;
      }

      sub_EA0A90(v3[1].n128_u64[1], &v90, "Got a WaypointID missing the location_hint");
    }

    v14 = v8 + 32;
    goto LABEL_25;
  }

  v75 = 0;
  if ((*(a1 + 16) & 2) == 0)
  {
    goto LABEL_172;
  }

LABEL_86:
  v32 = *(a1 + 32);
  if ((*(v32 + 16) & 1) == 0)
  {
    goto LABEL_96;
  }

  sub_E95964(*(v32 + 48), &v90);
  v33 = v90.n128_u32[0];
  v34 = __p;
  if (__p)
  {
    v35 = v3;
    v36 = v92;
    v37 = __p;
    if (v92 != __p)
    {
      do
      {
        if (*(v36 - 1) < 0)
        {
          operator delete(*(v36 - 3));
        }

        v36 -= 4;
      }

      while (v36 != v34);
      v37 = __p;
    }

    *&v92 = v34;
    operator delete(v37);
    v3 = v35;
    a1 = v82;
  }

  if (v33)
  {
LABEL_96:
    v90.n128_u8[0] = 9;
    v38 = v3[1].n128_u64[1];
    if (v38 >= v3[2].n128_u64[0])
    {
      v39 = sub_EA0E50(&v3[1], &v90, "Got an invalid WaypointPlace.center.");
    }

    else
    {
      sub_EA0FD0(v3[1].n128_u64[1], &v90, "Got an invalid WaypointPlace.center.");
      v39 = v38 + 32;
    }

    v3[1].n128_u64[1] = v39;
  }

  ++v75;
  v40 = *(v32 + 40);
  v41 = (v40 + 8);
  if (!v40)
  {
    v41 = 0;
  }

  v42 = *(v32 + 32);
  if (!v42)
  {
    goto LABEL_172;
  }

  v74 = v3;
  v76 = &v41[v42];
  while (2)
  {
    v77 = v41;
    sub_E9D8BC(*v41, &v87);
    v45 = v88;
    v44 = v89;
    v83 = v89;
    if (v88 == v89)
    {
      if (v88)
      {
        goto LABEL_166;
      }

      goto LABEL_106;
    }

    do
    {
      if (!sub_7E7E4(1u))
      {
        goto LABEL_111;
      }

      v99 = 0;
      v90.n128_u64[0] = v81;
      *(v90.n128_u64 + *(v81 - 24)) = v80;
      v46 = (&v90 + *(v90.n128_u64[0] - 24));
      std::ios_base::init(v46, &v90.n128_i8[8]);
      v46[1].__vftable = 0;
      v46[1].__fmtflags_ = -1;
      std::locale::locale(&__p);
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      memset(&v95, 0, sizeof(v95));
      v97 = 16;
      v96 = &v95;
      std::string::append(&v95, 0x16uLL, 0);
      size = v95.__r_.__value_.__l.__size_;
      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v95.__r_.__value_.__r.__words[2]);
      }

      *(&v93 + 1) = &v95;
      *&v94 = &v95;
      *(&v94 + 1) = &v95 + size;
      if (*v45)
      {
        sub_435B54(*v45, &v100);
        v48 = std::string::append(&v100, " ", 1uLL);
        v49 = *&v48->__r_.__value_.__l.__data_;
        v102 = v48->__r_.__value_.__r.__words[2];
        __dst = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        v50 = v45 + 8;
        if ((v45[31] & 0x80u) == 0)
        {
          v51 = v45[31];
        }

        else
        {
          v50 = *(v45 + 1);
          v51 = *(v45 + 2);
        }

        if (v102 >= 0)
        {
          v52 = 22;
        }

        else
        {
          v52 = (v102 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v102 >= 0)
        {
          v53 = HIBYTE(v102);
        }

        else
        {
          v53 = *(&__dst + 1);
        }

        if (v52 - v53 < v51)
        {
          if (0x7FFFFFFFFFFFFFF6 - v52 >= v53 + v51 - v52)
          {
            operator new();
          }

          sub_3244();
        }

        if (v51)
        {
          if (v102 >= 0)
          {
            v55 = &__dst;
          }

          else
          {
            v55 = __dst;
          }

          memmove(v55 + v53, v50, v51);
          v56 = v53 + v51;
          if (SHIBYTE(v102) < 0)
          {
            *(&__dst + 1) = v53 + v51;
          }

          else
          {
            HIBYTE(v102) = v56 & 0x7F;
          }

          *(v55 + v56) = 0;
        }

        *v85 = __dst;
        v86 = v102;
        v102 = 0;
        __dst = 0uLL;
        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v100.__r_.__value_.__l.__data_);
        }
      }

      else if (v45[31] < 0)
      {
        sub_325C(v85, *(v45 + 1), *(v45 + 2));
      }

      else
      {
        v54 = *(v45 + 8);
        v86 = *(v45 + 3);
        *v85 = v54;
      }

      if (v86 >= 0)
      {
        v57 = v85;
      }

      else
      {
        v57 = v85[0];
      }

      if (v86 >= 0)
      {
        v58 = HIBYTE(v86);
      }

      else
      {
        v58 = v85[1];
      }

      sub_4A5C(&v90, v57, v58);
      if (SHIBYTE(v86) < 0)
      {
        operator delete(v85[0]);
        v59 = v97;
        if ((v97 & 0x10) != 0)
        {
LABEL_152:
          v61 = v96;
          v62 = &v93 + 1;
          if (v96 < v94)
          {
            v96 = v94;
            v61 = v94;
            v62 = &v93 + 1;
          }

          goto LABEL_155;
        }
      }

      else
      {
        v59 = v97;
        if ((v97 & 0x10) != 0)
        {
          goto LABEL_152;
        }
      }

      if ((v59 & 8) != 0)
      {
        v61 = v93;
        v62 = &v92;
LABEL_155:
        v63 = *v62;
        v60 = v61 - *v62;
        if (v60 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v60 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v102) = v61 - *v62;
        if (v60)
        {
          memmove(&__dst, v63, v60);
        }

        goto LABEL_161;
      }

      v60 = 0;
      HIBYTE(v102) = 0;
LABEL_161:
      *(&__dst + v60) = 0;
      sub_7E854(&__dst, 1u);
      if (SHIBYTE(v102) < 0)
      {
        operator delete(__dst);
      }

      v90.n128_u64[0] = v79;
      *(v90.n128_u64 + *(v79 - 24)) = v78;
      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      std::locale::~locale(&__p);
      std::ostream::~ostream();
      std::ios::~ios();
      a1 = v82;
      v44 = v83;
LABEL_111:
      v45 += 32;
    }

    while (v45 != v44);
    v45 = v88;
    if (v88)
    {
LABEL_166:
      v64 = v89;
      v43 = v45;
      if (v89 != v45)
      {
        do
        {
          if (*(v64 - 1) < 0)
          {
            operator delete(*(v64 - 3));
          }

          v64 -= 32;
        }

        while (v64 != v45);
        v43 = v88;
      }

      v89 = v45;
      operator delete(v43);
    }

LABEL_106:
    v41 = v77 + 1;
    if (v77 + 1 != v76)
    {
      continue;
    }

    break;
  }

  v3 = v74;
LABEL_172:
  if ((*(a1 + 16) & 4) != 0)
  {
    v66 = *(a1 + 40);
    v65 = v75 + 1;
    if (*(v66 + 40))
    {
      sub_E95D74(*(v66 + 48), &v90);
      if (v90.n128_u32[0])
      {
        v87.n128_u8[0] = 9;
        v69 = v3[1].n128_u64[1];
        if (v69 >= v3[2].n128_u64[0])
        {
          v70 = sub_EA1390(&v3[1], &v87, "Got an invalid WaypointTyped.WaypointLocation.");
        }

        else
        {
          sub_EA1510(v3[1].n128_u64[1], &v87, "Got an invalid WaypointTyped.WaypointLocation.");
          v70 = v69 + 32;
        }

        v3[1].n128_u64[1] = v70;
      }

      sub_434B40(v3, &v90);
      v71 = __p;
      if (__p)
      {
        v72 = v92;
        v73 = __p;
        if (v92 != __p)
        {
          do
          {
            if (*(v72 - 1) < 0)
            {
              operator delete(*(v72 - 3));
            }

            v72 -= 4;
          }

          while (v72 != v71);
          v73 = __p;
        }

        *&v92 = v71;
        operator delete(v73);
      }
    }

    else
    {
      v90.n128_u8[0] = 9;
      v67 = v3[1].n128_u64[1];
      if (v67 >= v3[2].n128_u64[0])
      {
        v68 = sub_EA10F0(&v3[1], &v90, "Got a missing WaypointTyped.WaypointLocation.");
      }

      else
      {
        sub_EA1270(v3[1].n128_u64[1], &v90, "Got a missing WaypointTyped.WaypointLocation.");
        v68 = v67 + 32;
      }

      v3[1].n128_u64[1] = v68;
    }
  }

  else
  {
    v65 = v75;
  }

  if (!v65)
  {
    v90.n128_u8[0] = 9;
    v5 = v3[1].n128_u64[1];
    if (v5 >= v3[2].n128_u64[0])
    {
      result = sub_E5F370(&v3[1], &v90, "Got a WaypointTyped without any waypoint message specified.");
      goto LABEL_200;
    }

    sub_E5F4F0(v3[1].n128_u64[1], &v90, "Got a WaypointTyped without any waypoint message specified.");
    goto LABEL_199;
  }

  if (v65 != 1)
  {
    v90.n128_u8[0] = 9;
    v5 = v3[1].n128_u64[1];
    if (v5 >= v3[2].n128_u64[0])
    {
      result = sub_E61050(&v3[1], &v90, "Got more than one waypoint message in a WaypointTyped.");
      goto LABEL_200;
    }

    sub_E611D0(v3[1].n128_u64[1], &v90, "Got more than one waypoint message in a WaypointTyped.");
    goto LABEL_199;
  }

  result = v3[1].n128_i64[1];
LABEL_201:
  v3->n128_u64[0] = v3[1].n128_u64[0] != result;
  v3->n128_u64[1] = &off_2669FE0;
  return result;
}

void sub_E9D07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_CF3C94(&a40);
  sub_CF3C94(v40);
  _Unwind_Resume(a1);
}

void sub_E9D278(_Unwind_Exception *a1)
{
  *(v2 + 24) = v1;
  sub_CF3C94(v2);
  _Unwind_Resume(a1);
}

void sub_E9D2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_1959728(&a37);
  sub_CF3C94(&a31);
  sub_CF3C94(a10);
  _Unwind_Resume(a1);
}

void sub_E9D31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  if (*(v54 - 113) < 0)
  {
    operator delete(*(v54 - 136));
  }

  sub_1959728(&a40);
  sub_CF3C94(&a34);
  sub_CF3C94(a10);
  _Unwind_Resume(a1);
}

void sub_E9D420(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  __p[0] = 0;
  __p[1] = &off_2669FE0;
  sub_434934(a2, __p);
  if (!*(a1 + 208))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 128);
    if (v5 + v4 == 1)
    {
      if (v4 == 1)
      {
        sub_E9DB10(*(*(a1 + 64) + 8), __p);
        sub_434BB0(a2, __p);
        v6 = v30;
        if (v30)
        {
          v7 = v31;
          v8 = v30;
          if (v31 != v30)
          {
            do
            {
              if (*(v7 - 1) < 0)
              {
                operator delete(*(v7 - 3));
              }

              v7 -= 4;
            }

            while (v7 != v6);
            v8 = v30;
          }

          v31 = v6;
          operator delete(v8);
        }
      }

      if (v5 == 1)
      {
        sub_E9E6D0(*(*(a1 + 136) + 8), __p);
        sub_434BB0(a2, __p);
        v26 = v30;
        if (v30)
        {
          v27 = v31;
          v28 = v30;
          if (v31 != v30)
          {
            do
            {
              if (*(v27 - 1) < 0)
              {
                operator delete(*(v27 - 3));
              }

              v27 -= 4;
            }

            while (v27 != v26);
            v28 = v30;
          }

          v31 = v26;
          operator delete(v28);
        }
      }

      v25 = a2[1].n128_u64[0] != a2[1].n128_u64[1];
      goto LABEL_45;
    }

    v37 = 9;
    std::to_string(&v33, v4);
    v9 = std::string::insert(&v33, 0, "Got a PlaceResponse with invalid result size (should contain exactly one place or maps result, got ", 0x63uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v34, " place result and ", 0x12uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v32, v5);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v32;
    }

    else
    {
      v13 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    v15 = std::string::append(&v35, v13, size);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v36, " maps result).", 0xEuLL);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v30 = v17->__r_.__value_.__r.__words[2];
    *__p = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = a2[1].n128_u64[1];
    if (v19 >= a2[2].n128_u64[0])
    {
      v23 = sub_E5C160(&a2[1], &v37, __p);
      v24 = HIBYTE(v30);
      a2[1].n128_u64[1] = v23;
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v19 = 9;
      v20 = (v19 + 8);
      v21 = HIBYTE(v30);
      if (SHIBYTE(v30) < 0)
      {
        sub_325C(v20, __p[0], __p[1]);
        a2[1].n128_u64[1] = v19 + 32;
        if ((v21 & 0x80) == 0)
        {
LABEL_22:
          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v36.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_24:
              if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_25;
              }

              goto LABEL_30;
            }
          }

          else if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          operator delete(v32.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_25:
            if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_31;
          }

LABEL_30:
          operator delete(v35.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_26:
            if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_27:
              v25 = 1;
LABEL_45:
              a2->n128_u64[0] = v25;
              a2->n128_u64[1] = &off_2669FE0;
              return;
            }

LABEL_32:
            operator delete(v33.__r_.__value_.__l.__data_);
            goto LABEL_27;
          }

LABEL_31:
          operator delete(v34.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v22 = *__p;
        *(v19 + 24) = v30;
        *v20 = v22;
        a2[1].n128_u64[1] = v19 + 32;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }
}

void sub_E9D758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  *(v42 + 24) = v43;
  operator delete(__p);
  if (*(v44 - 73) < 0)
  {
    operator delete(*(v44 - 96));
    if (a23 < 0)
    {
LABEL_9:
      operator delete(a18);
      if (a42 < 0)
      {
LABEL_10:
        operator delete(a37);
        if (a35 < 0)
        {
LABEL_11:
          operator delete(a30);
          if (a29 < 0)
          {
LABEL_12:
            operator delete(a24);
            sub_CF3C94(v42);
            _Unwind_Resume(a1);
          }

LABEL_6:
          sub_CF3C94(v42);
          _Unwind_Resume(a1);
        }

LABEL_5:
        if (a29 < 0)
        {
          goto LABEL_12;
        }

        goto LABEL_6;
      }

LABEL_4:
      if (a35 < 0)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }
  }

  else if (a23 < 0)
  {
    goto LABEL_9;
  }

  if (a42 < 0)
  {
    goto LABEL_10;
  }

  goto LABEL_4;
}

uint64_t sub_E9D8BC@<X0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v12.n128_u64[0] = 0;
  v12.n128_u64[1] = &off_2669FE0;
  sub_434934(a2, &v12);
  if ((*(a1 + 16) & 1) == 0)
  {
    v12.n128_u8[0] = 9;
    v4 = a2[1].n128_u64[1];
    if (v4 >= a2[2].n128_u64[0])
    {
      v9 = sub_EA1B70(&a2[1], &v12, "Got a RoadAccessPoint without a location.");
LABEL_18:
      a2[1].n128_u64[1] = v9;
      goto LABEL_19;
    }

    sub_EA1CF0(a2[1].n128_u64[1], &v12, "Got a RoadAccessPoint without a location.");
LABEL_16:
    v9 = v4 + 32;
    goto LABEL_18;
  }

  sub_E95964(*(a1 + 24), &v12);
  v5 = v12.n128_u32[0];
  v6 = __p;
  if (__p)
  {
    v7 = v14;
    v8 = __p;
    if (v14 != __p)
    {
      do
      {
        if (*(v7 - 1) < 0)
        {
          operator delete(*(v7 - 3));
        }

        v7 -= 4;
      }

      while (v7 != v6);
      v8 = __p;
    }

    v14 = v6;
    operator delete(v8);
  }

  if (v5)
  {
    v12.n128_u8[0] = 9;
    v4 = a2[1].n128_u64[1];
    if (v4 >= a2[2].n128_u64[0])
    {
      v9 = sub_EA1E10(&a2[1], &v12, "Got an invalid RoadAccessPoint.location");
      goto LABEL_18;
    }

    sub_EA1F90(a2[1].n128_u64[1], &v12, "Got an invalid RoadAccessPoint.location");
    goto LABEL_16;
  }

LABEL_19:
  if (*(a1 + 52) | *(a1 + 36))
  {
    result = a2[1].n128_i64[1];
  }

  else
  {
    v12.n128_u8[0] = 9;
    v11 = a2[1].n128_u64[1];
    if (v11 >= a2[2].n128_u64[0])
    {
      result = sub_EA20B0(&a2[1], &v12, "Got a RoadAccessPoint which is invalid for all transport modes.");
    }

    else
    {
      sub_EA2230(a2[1].n128_u64[1], &v12, "Got a RoadAccessPoint which is invalid for all transport modes.");
      result = v11 + 32;
    }

    a2[1].n128_u64[1] = result;
  }

  a2->n128_u64[0] = a2[1].n128_u64[0] != result;
  a2->n128_u64[1] = &off_2669FE0;
  return result;
}

void sub_E9DA8C(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  sub_CF3C94(v1);
  _Unwind_Resume(a1);
}

void sub_E9DAB8(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  sub_CF3C94(v1);
  _Unwind_Resume(a1);
}

void sub_E9DAE4(_Unwind_Exception *a1)
{
  *(v1 + 24) = v2;
  sub_CF3C94(v1);
  _Unwind_Resume(a1);
}

void sub_E9DB10(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  __p[0] = 0;
  __p[1] = &off_2669FE0;
  sub_434934(a2, __p);
  v3 = *(a1 + 128);
  if (!v3)
  {
    goto LABEL_13;
  }

  v78.__r_.__value_.__s.__data_[0] = 9;
  sub_4B09C4(v3, &__dst);
  v4 = std::string::insert(&__dst, 0, "PlaceResponse with non-success status (", 0x27uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v76.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v76.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v76, ").", 2uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v64.__locale_ = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = a2[1].n128_u64[1];
  if (v8 >= a2[2].n128_u64[0])
  {
    a2[1].n128_u64[1] = sub_E5C160(&a2[1], &v78, __p);
    if ((SHIBYTE(v64.__locale_) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

  *v8 = v78.__r_.__value_.__s.__data_[0];
  v9 = (v8 + 8);
  if (SHIBYTE(v64.__locale_) < 0)
  {
    sub_325C(v9, __p[0], __p[1]);
    a2[1].n128_u64[1] = v8 + 32;
    if ((SHIBYTE(v64.__locale_) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_5:
    operator delete(__p[0]);
    if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v10 = *__p;
  *(v8 + 24) = v64;
  *v9 = v10;
  a2[1].n128_u64[1] = v8 + 32;
  if (SHIBYTE(v64.__locale_) < 0)
  {
    goto LABEL_5;
  }

LABEL_11:
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_6:
    operator delete(v76.__r_.__value_.__l.__data_);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_7:
    operator delete(__dst.__r_.__value_.__l.__data_);
    v11 = *(a1 + 56);
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  v11 = *(a1 + 56);
  if (!v11)
  {
LABEL_8:
    LOBYTE(__p[0]) = 9;
    v12 = a2[1].n128_u64[1];
    if (v12 >= a2[2].n128_u64[0])
    {
      v13 = sub_EA1630(&a2[1], __p, "PlaceResponse without any components.");
    }

    else
    {
      sub_EA17B0(a2[1].n128_u64[1], __p, "PlaceResponse without any components.");
      v13 = v12 + 32;
    }

    a2[1].n128_u64[1] = v13;
    v11 = *(a1 + 56);
    v16 = *(a1 + 64);
    if (v16)
    {
      v15 = (v16 + 8);
    }

    else
    {
      v15 = 0;
    }

    if (!v11)
    {
      goto LABEL_107;
    }

    goto LABEL_22;
  }

LABEL_14:
  v14 = *(a1 + 64);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

LABEL_22:
  v17 = v15;
  v51 = &v15[v11];
  v18 = &__p[1];
  while (2)
  {
    v52 = v17;
    v19 = *v17;
    if (*(*v17 + 136) != 3)
    {
      goto LABEL_23;
    }

    v20 = *(v19 + 64);
    v21 = v20 ? v20 + 8 : 0;
    v22 = *(v19 + 56);
    if (!v22)
    {
      goto LABEL_23;
    }

    v53 = v21 + 8 * v22;
    while (2)
    {
      v54 = v21;
      v23 = *(*v21 + 80);
      if (!v23)
      {
        v23 = &off_2782800;
      }

      v24 = v23[4];
      if (v24)
      {
        v25 = (v24 + 1);
      }

      else
      {
        v25 = 0;
      }

      v26 = *(v23 + 6);
      if (!v26)
      {
        goto LABEL_30;
      }

      v55 = &v25[v26];
      while (2)
      {
        sub_E9D8BC(*v25, &v76);
        v56 = v25;
        v29 = v76.__r_.__value_.__r.__words[2];
        v28 = v77;
        v57 = v77;
        if (v76.__r_.__value_.__r.__words[2] == v77)
        {
          if (v76.__r_.__value_.__r.__words[2])
          {
            goto LABEL_102;
          }

          goto LABEL_40;
        }

        do
        {
          if (!sub_7E7E4(1u))
          {
            goto LABEL_45;
          }

          v75 = 0;
          __p[0] = v61;
          *(__p + *(v61 - 3)) = v60;
          v30 = (__p + *(__p[0] - 3));
          std::ios_base::init(v30, v18);
          v30[1].__vftable = 0;
          v30[1].__fmtflags_ = -1;
          std::locale::locale(&v64);
          v65[0] = 0;
          v65[1] = 0;
          v66 = 0;
          v73 = 16;
          v72 = v70;
          memset(v70, 0, sizeof(v70));
          v71 = 5632;
          v67 = v70;
          v68 = v70;
          v69 = &v71;
          if (*v29)
          {
            sub_435B54(*v29, &v78);
            v31 = std::string::append(&v78, " ", 1uLL);
            v32 = v18;
            v33 = *&v31->__r_.__value_.__l.__data_;
            __dst.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
            *&__dst.__r_.__value_.__l.__data_ = v33;
            v31->__r_.__value_.__l.__size_ = 0;
            v31->__r_.__value_.__r.__words[2] = 0;
            v31->__r_.__value_.__r.__words[0] = 0;
            v34 = v29[31];
            if (v34 >= 0)
            {
              v35 = v29 + 8;
            }

            else
            {
              v35 = *(v29 + 1);
            }

            if (v34 >= 0)
            {
              v36 = v29[31];
            }

            else
            {
              v36 = *(v29 + 2);
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v37 = 22;
            }

            else
            {
              v37 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            if (v37 - size < v36)
            {
              if (0x7FFFFFFFFFFFFFF6 - v37 >= size + v36 - v37)
              {
                operator new();
              }

              sub_3244();
            }

            v18 = v32;
            if (v36)
            {
              if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst.__r_.__value_.__r.__words[0];
              }

              memmove(p_dst + size, v35, v36);
              v41 = size + v36;
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                __dst.__r_.__value_.__l.__size_ = size + v36;
              }

              else
              {
                *(&__dst.__r_.__value_.__s + 23) = v41 & 0x7F;
              }

              p_dst->__r_.__value_.__s.__data_[v41] = 0;
            }

            v62 = __dst;
            memset(&__dst, 0, sizeof(__dst));
            if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v78.__r_.__value_.__l.__data_);
            }

            v28 = v57;
          }

          else if (v29[31] < 0)
          {
            sub_325C(&v62, *(v29 + 1), *(v29 + 2));
          }

          else
          {
            v39 = *(v29 + 8);
            v62.__r_.__value_.__r.__words[2] = *(v29 + 3);
            *&v62.__r_.__value_.__l.__data_ = v39;
          }

          if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v42 = &v62;
          }

          else
          {
            v42 = v62.__r_.__value_.__r.__words[0];
          }

          if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v43 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v43 = v62.__r_.__value_.__l.__size_;
          }

          sub_4A5C(__p, v42, v43);
          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
            v44 = v73;
            if ((v73 & 0x10) != 0)
            {
LABEL_88:
              v46 = v72;
              v47 = &v67;
              if (v72 < v68)
              {
                v72 = v68;
                v46 = v68;
                v47 = &v67;
              }

              goto LABEL_91;
            }
          }

          else
          {
            v44 = v73;
            if ((v73 & 0x10) != 0)
            {
              goto LABEL_88;
            }
          }

          if ((v44 & 8) != 0)
          {
            v46 = v66;
            v47 = v65;
LABEL_91:
            v48 = *v47;
            v45 = v46 - *v47;
            if (v45 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v45 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v46 - *v47;
            if (v45)
            {
              memmove(&__dst, v48, v45);
            }

            goto LABEL_97;
          }

          v45 = 0;
          *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_97:
          __dst.__r_.__value_.__s.__data_[v45] = 0;
          sub_7E854(&__dst, 1u);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __p[0] = v58;
          *(__p + *(v58 - 3)) = v59;
          if (SHIBYTE(v71) < 0)
          {
            operator delete(*v70);
          }

          std::locale::~locale(&v64);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_45:
          v29 += 32;
        }

        while (v29 != v28);
        v29 = v76.__r_.__value_.__r.__words[2];
        if (v76.__r_.__value_.__r.__words[2])
        {
LABEL_102:
          v49 = v77;
          v27 = v29;
          if (v77 != v29)
          {
            do
            {
              if (*(v49 - 1) < 0)
              {
                operator delete(*(v49 - 3));
              }

              v49 -= 32;
            }

            while (v49 != v29);
            v27 = v76.__r_.__value_.__r.__words[2];
          }

          v77 = v29;
          operator delete(v27);
        }

LABEL_40:
        v25 = v56 + 1;
        if (v56 + 1 != v55)
        {
          continue;
        }

        break;
      }

LABEL_30:
      v21 = v54 + 8;
      if (v54 + 8 != v53)
      {
        continue;
      }

      break;
    }

LABEL_23:
    v17 = v52 + 1;
    if (v52 + 1 != v51)
    {
      continue;
    }

    break;
  }

LABEL_107:
  a2->n128_u64[0] = a2[1].n128_u64[0] != a2[1].n128_u64[1];
  a2->n128_u64[1] = &off_2669FE0;
}

void sub_E9E464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  *(a9 + 24) = v53;
  if (a41 < 0)
  {
    operator delete(__p);
    if (*(v54 - 169) < 0)
    {
LABEL_5:
      operator delete(*(v54 - 192));
      if ((*(v54 - 89) & 0x80000000) == 0)
      {
LABEL_9:
        v56 = *(a9 + 16);
        if (v56)
        {
          sub_21E5278(a9, v56, (a9 + 16));
        }

        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(*(v54 - 112));
      goto LABEL_9;
    }
  }

  else if (*(v54 - 169) < 0)
  {
    goto LABEL_5;
  }

  if ((*(v54 - 89) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_E9E6D0(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  if (*(a1 + 64) != 1)
  {
    operator new();
  }

  __p[0] = 0;
  __p[1] = &off_2669FE0;
  sub_434934(a2, __p);
  if ((*(a1 + 16) & 1) == 0)
  {
    LOBYTE(__p[0]) = 9;
    v4 = a2[1].n128_u64[1];
    if (v4 >= a2[2].n128_u64[0])
    {
      v5 = sub_EA18D0(&a2[1], __p, "Maps result contains no place.");
    }

    else
    {
      sub_EA1A50(a2[1].n128_u64[1], __p, "Maps result contains no place.");
      v5 = v4 + 32;
    }

    a2[1].n128_u64[1] = v5;
  }

  if (*(a1 + 24))
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = &off_27868A0;
  }

  sub_E9DB10(v6, __p);
  sub_434BB0(a2, __p);
  v7 = v11;
  if (v11)
  {
    v8 = v12;
    v9 = v11;
    if (v12 != v11)
    {
      do
      {
        if (*(v8 - 1) < 0)
        {
          operator delete(*(v8 - 3));
        }

        v8 -= 4;
      }

      while (v8 != v7);
      v9 = v11;
    }

    v12 = v7;
    operator delete(v9);
  }
}

void sub_E9E8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xE9E8A0);
}

void sub_E9E8C4(uint64_t a1@<X0>, unsigned int a2@<W1>, __n128 *a3@<X8>)
{
  __p[0] = 0;
  __p[1] = &off_2669FE0;
  sub_434934(a3, __p);
  sub_E9B4D4(v21, a1, a2, a3);
  if (sub_585D8(v21))
  {
    if (*(a1 + 64) >= 1)
    {
      operator new();
    }

    v6 = *(a1 + 112);
    if (v6 <= 1)
    {
      operator new();
    }

    v7 = *(a1 + 120);
    if (v7)
    {
      v8 = (v7 + 8);
    }

    else
    {
      v8 = 0;
    }

    v9 = &v8[v6];
    do
    {
      sub_E9C020(*v8, __p);
      sub_E9BBFC(v21, __p);
      v11 = v19;
      if (v19)
      {
        v12 = v20;
        v10 = v19;
        if (v20 != v19)
        {
          do
          {
            if (*(v12 - 1) < 0)
            {
              operator delete(*(v12 - 3));
            }

            v12 -= 4;
          }

          while (v12 != v11);
          v10 = v19;
        }

        v20 = v11;
        operator delete(v10);
      }

      ++v8;
    }

    while (v8 != v9);
    if (sub_E79FF8(a1))
    {
      v13 = sub_E7A5E0(a1);
      v14 = *(a1 + 424) ? *(a1 + 424) : &off_27721B8;
      sub_E9EC48(a1 + 104, v14, 1, v13, __p);
      sub_E9BBFC(v21, __p);
      v15 = v19;
      if (v19)
      {
        v16 = v20;
        v17 = v19;
        if (v20 != v19)
        {
          do
          {
            if (*(v16 - 1) < 0)
            {
              operator delete(*(v16 - 3));
            }

            v16 -= 4;
          }

          while (v16 != v15);
          v17 = v19;
        }

        v20 = v15;
        operator delete(v17);
      }
    }
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }
}

void sub_E9EBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_CF3C94(&a10);
  if (a25 < 0)
  {
    operator delete(__p);
    sub_CF3C94(v25);
    _Unwind_Resume(a1);
  }

  sub_CF3C94(v25);
  _Unwind_Resume(a1);
}

void sub_E9EC48(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, __n128 *a5@<X8>)
{
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v10 = *(a1 + 8);
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  sub_EA2350(v12, &v12[*(a1 + 8)], &v86);
  *v83 = 0u;
  *v84 = 0u;
  v85 = 1065353216;
  v13 = v86;
  v14 = v87;
  if (v86 == v87)
  {
    v15 = 0;
    v16 = v86;
  }

  else
  {
    do
    {
      sub_EA2594(v83, v13);
      v13 += 24;
    }

    while (v13 != v14);
    v15 = v84[1];
    v13 = v86;
    v16 = v87;
  }

  v17 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v13) >> 3);
  if (v15 < v17)
  {
    operator new();
  }

  v18 = *(a1 + 8);
  if (v17 < v18)
  {
    operator new();
  }

  v19 = *(a2 + 32);
  if (!v19)
  {
    v75[0] = 0;
    v75[1] = &off_2669FE0;
    sub_434934(a5, v75);
    goto LABEL_120;
  }

  v20 = *(a2 + 40);
  v21 = (v20 + 8);
  if (!v20)
  {
    v21 = 0;
  }

  v22 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (!v22)
  {
    v33 = 0;
    v27 = v21;
LABEL_33:
    v34 = &v21[v19];
    do
    {
      v35 = *v27++;
      v36 = *(v35 + 80);
      if (!v36)
      {
        v36 = &off_2772310;
      }

      if (*(v36 + 26) == 1)
      {
        ++v33;
      }
    }

    while (v27 != v34);
    goto LABEL_39;
  }

  v23 = 0;
  v24 = 0;
  v25 = v22 + 1;
  v26 = (v22 + 1) & 0x3FFFFFFFFFFFFFFELL;
  v27 = &v21[v26];
  v28 = v21 + 1;
  v29 = v26;
  do
  {
    v30 = *(*(v28 - 1) + 80);
    v31 = *(*v28 + 80);
    if (!v30)
    {
      v30 = &off_2772310;
    }

    if (!v31)
    {
      v31 = &off_2772310;
    }

    v32 = *(v31 + 26);
    if (*(v30 + 26) == 1)
    {
      ++v23;
    }

    if (v32 == 1)
    {
      ++v24;
    }

    v28 += 2;
    v29 -= 2;
  }

  while (v29);
  v33 = v24 + v23;
  if (v25 != v26)
  {
    goto LABEL_33;
  }

LABEL_39:
  __p = 0;
  v81 = 0;
  v82 = 0;
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(*(*(a2 + 40) + 8) + 72))
  {
    v37 = *(*(*(a2 + 40) + 8) + 72);
  }

  else
  {
    v37 = &off_2772310;
  }

  sub_E82D18(v37, &v78);
  if (sub_585D8(&v78))
  {
    v38 = v81;
    if (v81 >= v82)
    {
      v41 = __p;
      v42 = v81 - __p;
      v43 = 0xAAAAAAAAAAAAAAABLL * ((v81 - __p) >> 3);
      v44 = v43 + 1;
      if (v43 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      if (0x5555555555555556 * ((v82 - __p) >> 3) > v44)
      {
        v44 = 0x5555555555555556 * ((v82 - __p) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v82 - __p) >> 3) >= 0x555555555555555)
      {
        v45 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v45 = v44;
      }

      if (v45)
      {
        if (v45 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v46 = 8 * ((v81 - __p) >> 3);
      *v46 = v78;
      *(v46 + 16) = v79;
      v40 = 24 * v43 + 24;
      v47 = (v46 - v42);
      if (v41 != v38)
      {
        v48 = v47;
        do
        {
          v49 = *v41;
          v48[2] = *(v41 + 2);
          *v48 = v49;
          v48 += 3;
          v41 += 24;
        }

        while (v41 != v38);
        v41 = __p;
      }

      __p = v47;
      v81 = (v46 + 24);
      v82 = 0;
      if (v41)
      {
        operator delete(v41);
      }
    }

    else
    {
      v39 = v78;
      *(v81 + 2) = v79;
      *v38 = v39;
      v40 = (v38 + 24);
    }

    v81 = v40;
  }

  v50 = *(a2 + 40);
  if (v50)
  {
    v51 = v50 + 8;
  }

  else
  {
    v51 = 0;
  }

  v52 = *(a2 + 32);
  if (v52)
  {
    v53 = 8 * v52;
    do
    {
      if (*(*v51 + 80))
      {
        v54 = *(*v51 + 80);
      }

      else
      {
        v54 = &off_2772310;
      }

      if (*(v54 + 26) == 1)
      {
        sub_E82D18(v54, v75);
        if (sub_585D8(v75))
        {
          if (*(*v51 + 80))
          {
            v55 = *(*v51 + 80);
          }

          else
          {
            v55 = &off_2772310;
          }

          sub_E82D18(v55, v75);
          sub_EA2434(&__p, v75);
        }
      }

      v51 += 8;
      v53 -= 8;
    }

    while (v53);
  }

  *v75 = 0u;
  *v76 = 0u;
  v77 = 1065353216;
  v56 = __p;
  v57 = v81;
  if (__p == v81)
  {
    v58 = 0;
  }

  else
  {
    do
    {
      if (sub_585D8(v56))
      {
        sub_EA2594(v75, v56);
      }

      v56 += 24;
    }

    while (v56 != v57);
    v58 = v76[1];
    v56 = __p;
    v57 = v81;
  }

  v59 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 3);
  if (v58 < v59)
  {
    operator new();
  }

  if (v59 <= v33)
  {
    operator new();
  }

  v60 = v86;
  if (a3 == 1)
  {
    v61 = 0;
  }

  else
  {
    v61 = 24;
  }

  v62 = &v56[v61];
  v63 = 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 3);
  v64 = (v57 - v62) >> 3;
  if ((0xAAAAAAAAAAAAAAABLL * v64) < v63)
  {
    v63 = 0xAAAAAAAAAAAAAAABLL * v64;
  }

  if (v63)
  {
    v65 = &v86[24 * v63];
    v66 = 24 * v63;
    while (sub_588E8(v60, v62))
    {
      v60 += 24;
      v62 += 24;
      v66 -= 24;
      if (!v66)
      {
        v60 = v65;
        break;
      }
    }
  }

  if (a4 == 7)
  {
    if (v60 == v86 || __p == v62)
    {
      sub_3608D0(&v73, "Got a request for changing waypoints during a nav session in which the UUIDs of the origin (in the input waypoints and the original user route, respectively) do not match, but the origin must not be deleted.");
      sub_434A40(9, &v73, a5);
    }

    else
    {
      if (v60 != v87 || v81 != v62)
      {
        goto LABEL_103;
      }

      sub_3608D0(&v73, "Got a request for changing waypoints during a nav session, but waypoint UUIDs in the input are the same as in the original user route.");
      sub_434A40(9, &v73, a5);
    }

LABEL_112:
    if (v74 < 0)
    {
      operator delete(v73.n128_u64[0]);
    }

    goto LABEL_114;
  }

  if (a3 == 1)
  {
    if (v60 == v87 && v81 == v62)
    {
      goto LABEL_103;
    }

    goto LABEL_111;
  }

  if (v60 != v87)
  {
LABEL_111:
    sub_3608D0(&v73, "Request has waypoint UUID inconsistency between input waypoints and original user route.");
    sub_434A40(9, &v73, a5);
    goto LABEL_112;
  }

LABEL_103:
  v73.n128_u64[0] = 0;
  v73.n128_u64[1] = &off_2669FE0;
  sub_434934(a5, &v73);
LABEL_114:
  v67 = v76[0];
  if (v76[0])
  {
    do
    {
      v68 = *v67;
      operator delete(v67);
      v67 = v68;
    }

    while (v68);
  }

  v69 = v75[0];
  v75[0] = 0;
  if (v69)
  {
    operator delete(v69);
  }

  if (__p)
  {
    v81 = __p;
    operator delete(__p);
  }

LABEL_120:
  v70 = v84[0];
  if (v84[0])
  {
    do
    {
      v71 = *v70;
      operator delete(v70);
      v70 = v71;
    }

    while (v71);
  }

  v72 = v83[0];
  v83[0] = 0;
  if (v72)
  {
    operator delete(v72);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }
}

void sub_E9F4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_11BD8(&a16);
  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  sub_11BD8(&a31);
  v33 = *(v31 - 104);
  if (v33)
  {
    *(v31 - 96) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void sub_E9F5CC(uint64_t a1@<X0>, unsigned int a2@<W1>, __n128 *a3@<X8>)
{
  __p[0] = 0;
  __p[1] = &off_2669FE0;
  sub_434934(a3, __p);
  sub_E9BBEC(v21, a1, a2, a3);
  if (sub_585D8(v21))
  {
    if (!*(a1 + 152))
    {
      operator new();
    }

    if (*(a1 + 56))
    {
      operator new();
    }

    if (*(a1 + 104))
    {
      operator new();
    }

    v6 = *(a1 + 160);
    if (v6)
    {
      v7 = (v6 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 152);
    if (v8)
    {
      v9 = &v7[v8];
      do
      {
        sub_E9C020(*v7, __p);
        sub_E9BBFC(v21, __p);
        v11 = v19;
        if (v19)
        {
          v12 = v20;
          v10 = v19;
          if (v20 != v19)
          {
            do
            {
              if (*(v12 - 1) < 0)
              {
                operator delete(*(v12 - 3));
              }

              v12 -= 4;
            }

            while (v12 != v11);
            v10 = v19;
          }

          v20 = v11;
          operator delete(v10);
        }

        ++v7;
      }

      while (v7 != v9);
    }

    if (sub_E7C0C0(a1))
    {
      v13 = sub_394BD0();
      v14 = *(a1 + 360) ? *(a1 + 360) : &off_2773F38;
      sub_E9F9B0(a1 + 144, v14, 2, v13, __p);
      sub_E9BBFC(v21, __p);
      v15 = v19;
      if (v19)
      {
        v16 = v20;
        v17 = v19;
        if (v20 != v19)
        {
          do
          {
            if (*(v16 - 1) < 0)
            {
              operator delete(*(v16 - 3));
            }

            v16 -= 4;
          }

          while (v16 != v15);
          v17 = v19;
        }

        v20 = v15;
        operator delete(v17);
      }
    }
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }
}

void sub_E9F904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      sub_CF3C94(v25);
      _Unwind_Resume(a1);
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  sub_CF3C94(v25);
  _Unwind_Resume(a1);
}