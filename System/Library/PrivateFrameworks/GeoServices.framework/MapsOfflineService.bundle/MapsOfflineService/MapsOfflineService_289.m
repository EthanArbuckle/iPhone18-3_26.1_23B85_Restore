void sub_11D1430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    v15 = a1;
    operator delete(__p);
    a1 = v15;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_11D1478(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x33u)
  {
    v9 = *(v8 + 25);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_11D15D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_11D1604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1957E24(a2, v14);
  sub_1957E24(a3, __p);
  v4 = v15;
  if ((v15 & 0x80u) == 0)
  {
    v5 = v15;
  }

  else
  {
    v5 = v14[1];
  }

  v6 = v13;
  v7 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (v5 == v6)
  {
    if ((v15 & 0x80u) == 0)
    {
      v8 = v14;
    }

    else
    {
      v8 = v14[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = memcmp(v8, v9, v5) == 0;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(__p[0]);
  v4 = v15;
LABEL_17:
  if ((v4 & 0x80) != 0)
  {
    operator delete(v14[0]);
  }

  return v10;
}

void sub_11D16EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_11D1708(uint64_t a1, uint64_t a2)
{
  sub_1957E24(a2, __p);
  if ((v7 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v3 = v7;
  }

  else
  {
    v3 = __p[1];
  }

  result = sub_AAD8(&v8, v2, v3);
  if (v7 < 0)
  {
    v5 = result;
    operator delete(__p[0]);
    return v5;
  }

  return result;
}

int *sub_11D178C(int *result, _BYTE *a2, int a3)
{
  v3 = *a2;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        *result = 9;
        return result;
      }

      goto LABEL_8;
    }

    *result = 7;
  }

  else
  {
    if (*a2)
    {
      if (v3 == 1)
      {
        *result = 8;
        return result;
      }

LABEL_8:
      *result = 0;
      return result;
    }

    if (a3 < 36000)
    {
      v4 = 7;
    }

    else
    {
      v4 = 8;
    }

    *result = v4;
  }

  return result;
}

uint64_t sub_11D17F8(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 56);
  if (v3 > 2)
  {
    if (v3 == 14)
    {
      v4 = 10;
      v5 = 1;
      v6 = *(a3 + 56);
      if (v6 <= 2)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v3 == 3)
    {
      v4 = 9;
      v5 = 1;
      v6 = *(a3 + 56);
      if (v6 > 2)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }

LABEL_10:
    v5 = 0;
    v4 = 0;
    v6 = *(a3 + 56);
    if (v6 > 2)
    {
      goto LABEL_13;
    }

LABEL_18:
    if (v6 == 1)
    {
      v7 = 0;
      v8 = 8;
      v9 = *a1;
      result = v4 == *a1;
      if (v4 == v9)
      {
        return result;
      }

      goto LABEL_27;
    }

    if (v6 == 2)
    {
      v7 = 0;
      v8 = 7;
      v9 = *a1;
      result = v4 == *a1;
      if (v4 == v9)
      {
        return result;
      }

      goto LABEL_27;
    }

LABEL_22:
    v8 = 0;
    v7 = 1;
    v9 = *a1;
    result = v4 == *a1;
    if (v4 == v9)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (v3 == 1)
  {
    v4 = 8;
    v5 = 1;
    v6 = *(a3 + 56);
    if (v6 <= 2)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v3 != 2)
  {
    goto LABEL_10;
  }

  v4 = 7;
  v5 = 1;
  v6 = *(a3 + 56);
  if (v6 <= 2)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (v6 == 14)
  {
    v7 = 0;
    v8 = 10;
    v9 = *a1;
    result = v4 == *a1;
    if (v4 == v9)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (v6 != 3)
  {
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 9;
  v9 = *a1;
  result = v4 == *a1;
  if (v4 == v9)
  {
    return result;
  }

LABEL_27:
  if (v8 != v9)
  {
    if (v4 >= v9)
    {
      v5 = 0;
    }

    if (v4 > v8 && (v5 & 1) != 0)
    {
      return 1;
    }

    else if ((v7 & 1) != 0 || v8 <= v4 || v8 >= v9)
    {
      v11 = *(a2 + 48);
      v12 = &off_2779808;
      if (!v11)
      {
        v11 = &off_2779808;
      }

      v13 = *(v11 + 7);
      if (*(a3 + 48))
      {
        v12 = *(a3 + 48);
      }

      return v13 < *(v12 + 7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_11D1AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_11D1B00(BOOL *a1, void *a2)
{
  HIBYTE(v6) = 6;
  strcpy(&__p, "enable");
  v3 = sub_5F9D0(a2, &__p);
  if (SHIBYTE(v6) < 0)
  {
    v4 = v3;
    operator delete(__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_11D2204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1A104((v17 + 112));
  sub_1A104((v17 + 16));
  _Unwind_Resume(a1);
}

void sub_11D22C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x11D22B8);
}

uint64_t sub_11D22F0(_BYTE *a1, void *a2, void *a3)
{
  if (*a1 != 1 || *a3 == a3[1])
  {
    return 1;
  }

  v4 = *a2;
  v3 = a2[1];
  if ((0x6FB586FB586FB587 * ((v3 - *a2) >> 3)) < 2)
  {
    return 1;
  }

  if (*v4 == -1 && v4[1] == -1 || *(v3 - 440) == -1 && *(v3 - 436) == -1)
  {
    return 1;
  }

  if (a1[138])
  {
    return 0;
  }

  v8 = sub_11D2418(a3, 0);
  result = sub_11D2614(a1, v8, a2);
  if (result)
  {

    return sub_11D26D8(a1);
  }

  return result;
}

unint64_t sub_11D2418(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 7)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 7);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + (a2 << 7);
}

void sub_11D2534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_11D2614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_11D3F24(a1, a2, a3))
  {
    return 1;
  }

  if (*(a1 + 1) == 1 && sub_4C4BD8(a2) <= *(a1 + 8))
  {
    return 0;
  }

  result = sub_11D2930(a1, a2, a3);
  if (result)
  {
    result = sub_11D3078(a1, a2, a3);
    if (result)
    {

      return sub_11D3B58(a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_11D26D8(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    sub_11ABC8C(v2, *(a1 + 144), 0, 0, 0);
  }

  return 1;
}

void sub_11D28EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    sub_49AEC0((v15 + 8));
    sub_11ABCB4(v16 - 216);
    _Unwind_Resume(a1);
  }

  sub_11ABCB4(v16 - 216);
  _Unwind_Resume(a1);
}

BOOL sub_11D2930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) != 1)
  {
    return 1;
  }

  v6 = *(a3 + 8);
  v7 = *(v6 - 153);
  if ((v7 & 0x8000000000000000) != 0)
  {
    if (!*(v6 - 168))
    {
      goto LABEL_30;
    }

    goto LABEL_6;
  }

  if (*(v6 - 153))
  {
LABEL_6:
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    if (v8 == v9)
    {
      goto LABEL_30;
    }

    if ((v7 & 0x80000000) != 0)
    {
      v14 = *(v6 - 176);
      v15 = *(v6 - 168);
      while (1)
      {
        v16 = *(v8 + 23);
        v17 = v16 >= 0 ? *(v8 + 23) : *(v8 + 8);
        if (v15 >= v17)
        {
          v18 = v16 >= 0 ? v8 : *v8;
          if (!memcmp(v14, v18, v17))
          {
            break;
          }
        }

        v8 += 24;
        if (v8 == v9)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v10 = (v6 - 176);
      while (1)
      {
        v11 = *(v8 + 23);
        v12 = v11 >= 0 ? *(v8 + 23) : *(v8 + 8);
        if (v12 <= v7)
        {
          v13 = v11 >= 0 ? v8 : *v8;
          if (!memcmp(v10, v13, v12))
          {
            break;
          }
        }

        v8 += 24;
        if (v8 == v9)
        {
          goto LABEL_30;
        }
      }
    }

    return 1;
  }

LABEL_30:
  v20 = sub_11D2CF0(a1, a2, a3);
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v27);
    sub_4A5C(&v27, "destination_to_route_end_distance: ", 35);
    v21 = std::ostream::operator<<();
    sub_4A5C(v21, " m", 2);
    if ((v37 & 0x10) != 0)
    {
      v23 = v36;
      if (v36 < v33)
      {
        v36 = v33;
        v23 = v33;
      }

      v24 = v32;
      v22 = v23 - v32;
      if (v23 - v32 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if ((v37 & 8) == 0)
      {
        v22 = 0;
        v26 = 0;
LABEL_42:
        *(&__p + v22) = 0;
        sub_7E854(&__p, 2u);
        if (v26 < 0)
        {
          operator delete(__p);
        }

        if (v35 < 0)
        {
          operator delete(v34);
        }

        std::locale::~locale(&v29);
        std::ostream::~ostream();
        std::ios::~ios();
        return v20 < *(a1 + 48);
      }

      v24 = v30;
      v22 = v31 - v30;
      if ((v31 - v30) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_49:
        sub_3244();
      }
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v26 = v22;
    if (v22)
    {
      memmove(&__p, v24, v22);
    }

    goto LABEL_42;
  }

  return v20 < *(a1 + 48);
}

void sub_11D2CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_11D2CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 168);
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    return result;
  }

  v6 = *(a3 + 8);
  v7 = sub_4C4AEC(a2);
  sub_2B7A20(*(a1 + 152), (((*(v7 + 36) & 0x20000000) << 19) | (*(v7 + 36) << 32) | *(v7 + 32)) ^ 0x1000000000000, v35);
  LODWORD(v8) = *(sub_4C4AD8(a2) + 16);
  sub_F3EAF4(v35, 0, &__p, 0.0, v8 / 1000000000.0);
  v10 = *(v34 - 3);
  v9 = *(v34 - 2);
  if (v10 != -1 || v9 != -1)
  {
    v12 = *(v6 - 440);
    v13 = *(v6 - 436);
    if (v12 != -1 || v13 != -1)
    {
      v15 = exp(3.14159265 - v9 * 6.28318531 / 4294967300.0);
      v16 = atan((v15 - 1.0 / v15) * 0.5) * 57.2957795 * 0.0174532925;
      v17.i64[0] = v10;
      v17.i64[1] = v12;
      v18 = exp(3.14159265 - v13 * 6.28318531 / 4294967300.0);
      v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795 * 0.0174532925;
      v20 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v17), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
      v32 = vsubq_f64(v20, vdupq_laneq_s64(v20, 1)).f64[0];
      v21 = sin((v16 - v19) * 0.5);
      v22 = v21 * v21;
      v23 = cos(v16);
      v24 = v23 * cos(v19);
      v25 = sin(0.5 * v32);
      v26 = atan2(sqrt(v25 * v25 * v24 + v22), sqrt(1.0 - (v25 * v25 * v24 + v22)));
      v27 = (v26 + v26) * 6372797.56 * 100.0;
      if (v27 >= 0.0)
      {
        v28 = v27;
        if (v27 >= 4.50359963e15)
        {
          goto LABEL_22;
        }

        v29 = (v27 + v27) + 1;
      }

      else
      {
        v28 = v27;
        if (v27 <= -4.50359963e15)
        {
          goto LABEL_22;
        }

        v29 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
      }

      v28 = (v29 >> 1);
LABEL_22:
      if (v28 >= 9.22337204e18)
      {
        *(a1 + 168) = 0x7FFFFFFFFFFFFFFELL;
        v30 = __p;
        if (!__p)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      if (v27 >= 0.0)
      {
        if (v27 >= 4.50359963e15)
        {
          goto LABEL_31;
        }

        v31 = (v27 + v27) + 1;
      }

      else
      {
        if (v27 <= -4.50359963e15)
        {
          goto LABEL_31;
        }

        v31 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
      }

      v27 = (v31 >> 1);
LABEL_31:
      *(a1 + 168) = v27;
      v30 = __p;
      if (!__p)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  *(a1 + 168) = 0x7FFFFFFFFFFFFFFFLL;
  v30 = __p;
  if (__p)
  {
LABEL_14:
    v34 = v30;
    operator delete(v30);
  }

LABEL_15:
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  return *(a1 + 168);
}

void sub_11D305C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_11D3078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 56) != 1)
  {
    return 1;
  }

  v6 = *(a3 + 8);
  v7 = *(v6 - 153);
  if ((v7 & 0x8000000000000000) != 0)
  {
    if (!*(v6 - 168))
    {
      goto LABEL_30;
    }
  }

  else if (!*(v6 - 153))
  {
    goto LABEL_30;
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v8 != v9)
  {
    if ((v7 & 0x80000000) != 0)
    {
      v14 = *(v6 - 176);
      v15 = *(v6 - 168);
      while (1)
      {
        v16 = *(v8 + 23);
        v17 = v16 >= 0 ? *(v8 + 23) : *(v8 + 8);
        if (v15 >= v17)
        {
          v18 = v16 >= 0 ? v8 : *v8;
          if (!memcmp(v14, v18, v17))
          {
            break;
          }
        }

        v8 += 24;
        if (v8 == v9)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v10 = (v6 - 176);
      while (1)
      {
        v11 = *(v8 + 23);
        v12 = v11 >= 0 ? *(v8 + 23) : *(v8 + 8);
        if (v12 <= v7)
        {
          v13 = v11 >= 0 ? v8 : *v8;
          if (!memcmp(v10, v13, v12))
          {
            break;
          }
        }

        v8 += 24;
        if (v8 == v9)
        {
          goto LABEL_30;
        }
      }
    }

    return 1;
  }

LABEL_30:
  if (sub_4C4BD8(a2) < *(a1 + 72))
  {
    return 1;
  }

  v20 = sub_11D3484(a1, a2, a3);
  v21 = sub_11D2CF0(a1, a2, a3);
  v22 = sub_11D3884(a1, a3);
  v23 = v21 + v20 + sub_4C4BD8(a2);
  if (v22 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v23 / v24;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v31);
    sub_4A5C(&v31, "detour_index: ", 14);
    std::ostream::operator<<();
    if ((v41 & 0x10) != 0)
    {
      v27 = v40;
      if (v40 < v37)
      {
        v40 = v37;
        v27 = v37;
      }

      v28 = v36;
      v26 = v27 - v36;
      if (v27 - v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if ((v41 & 8) == 0)
      {
        v26 = 0;
        v30 = 0;
LABEL_47:
        *(&__p + v26) = 0;
        sub_7E854(&__p, 2u);
        if (v30 < 0)
        {
          operator delete(__p);
        }

        if (v39 < 0)
        {
          operator delete(v38);
        }

        std::locale::~locale(&v33);
        std::ostream::~ostream();
        std::ios::~ios();
        return v25 < *(a1 + 64);
      }

      v28 = v34;
      v26 = v35 - v34;
      if ((v35 - v34) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_54:
        sub_3244();
      }
    }

    if (v26 >= 0x17)
    {
      operator new();
    }

    v30 = v26;
    if (v26)
    {
      memmove(&__p, v28, v26);
    }

    goto LABEL_47;
  }

  return v25 < *(a1 + 64);
}

void sub_11D3438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_11D3484(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  result = *(a1 + 160);
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = a2;
    v6 = *a3;
    v7 = sub_4C4AE4(a2);
    sub_2B7A20(*(a1 + 152), (((*(v7 + 36) & 0x20000000) << 19) | (*(v7 + 36) << 32) | *(v7 + 32)) ^ 0x1000000000000, v34);
    LODWORD(v5) = *(sub_4C4AD0(v5) + 16);
    sub_F49E14(v34, 1, 0, __p, 1.0);
    sub_3110C(__p, 0, 0, &v32, fmin((1000000000 - v5) / 1000000000.0, 1.0));
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v8 = v32;
    v10 = *v32;
    v9 = *(v32 + 1);
    if (*v32 == -1 && v9 == -1 || (v12 = *v6, v11 = v6[1], v12 == -1) && v11 == -1)
    {
      *(a1 + 160) = 0x7FFFFFFFFFFFFFFFLL;
      v33 = v8;
      operator delete(v8);
      v13 = v35;
      if (!v35)
      {
        return *(a1 + 160);
      }

LABEL_9:
      v36 = v13;
      operator delete(v13);
      return *(a1 + 160);
    }

    v14 = v32;
    v15 = exp(3.14159265 - v9 * 6.28318531 / 4294967300.0);
    v16 = atan((v15 - 1.0 / v15) * 0.5) * 57.2957795 * 0.0174532925;
    v17.i64[0] = v10;
    v17.i64[1] = v12;
    v18 = exp(3.14159265 - v11 * 6.28318531 / 4294967300.0);
    v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795 * 0.0174532925;
    v20 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v17), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v31 = vsubq_f64(v20, vdupq_laneq_s64(v20, 1)).f64[0];
    v21 = sin((v16 - v19) * 0.5);
    v22 = v21 * v21;
    v23 = cos(v16);
    v24 = v23 * cos(v19);
    v25 = sin(0.5 * v31);
    v26 = atan2(sqrt(v25 * v25 * v24 + v22), sqrt(1.0 - (v25 * v25 * v24 + v22)));
    v27 = (v26 + v26) * 6372797.56 * 100.0;
    if (v27 >= 0.0)
    {
      v28 = v27;
      if (v27 >= 4.50359963e15)
      {
        goto LABEL_18;
      }

      v29 = (v27 + v27) + 1;
    }

    else
    {
      v28 = v27;
      if (v27 <= -4.50359963e15)
      {
        goto LABEL_18;
      }

      v29 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
    }

    v28 = (v29 >> 1);
LABEL_18:
    if (v28 >= 9.22337204e18)
    {
      *(a1 + 160) = 0x7FFFFFFFFFFFFFFELL;
      v33 = v14;
      operator delete(v14);
      v13 = v35;
      if (!v35)
      {
        return *(a1 + 160);
      }

      goto LABEL_9;
    }

    if (v27 >= 0.0)
    {
      if (v27 >= 4.50359963e15)
      {
        goto LABEL_27;
      }

      v30 = (v27 + v27) + 1;
    }

    else
    {
      if (v27 <= -4.50359963e15)
      {
        goto LABEL_27;
      }

      v30 = (v27 + v27) - 1 + (((v27 + v27) - 1) >> 63);
    }

    v27 = (v30 >> 1);
LABEL_27:
    *(a1 + 160) = v27;
    v33 = v14;
    operator delete(v14);
    v13 = v35;
    if (!v35)
    {
      return *(a1 + 160);
    }

    goto LABEL_9;
  }

  return result;
}

void sub_11D3838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
    v22 = a16;
    if (!a16)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v22 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  operator delete(v22);
  _Unwind_Resume(exception_object);
}

uint64_t sub_11D3884(uint64_t a1, unsigned int **a2)
{
  v2 = *(a1 + 176);
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = **a2;
    v3 = (*a2)[1];
    v5 = v4 == -1 && v3 == -1;
    if (v5 || ((v6 = a2[1], v7 = *(v6 - 110), v8 = *(v6 - 109), v7 == -1) ? (v9 = v8 == -1) : (v9 = 0), v9))
    {
      v2 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

    v10 = a1;
    v11 = exp(3.14159265 - v3 * 6.28318531 / 4294967300.0);
    v12 = atan((v11 - 1.0 / v11) * 0.5) * 57.2957795 * 0.0174532925;
    v13.i64[0] = v4;
    v13.i64[1] = v7;
    v14 = exp(3.14159265 - v8 * 6.28318531 / 4294967300.0);
    v15 = atan((v14 - 1.0 / v14) * 0.5) * 57.2957795 * 0.0174532925;
    v16 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v13), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v28 = vsubq_f64(v16, vdupq_laneq_s64(v16, 1)).f64[0];
    v17 = sin((v12 - v15) * 0.5);
    v18 = v17 * v17;
    v19 = cos(v12);
    v20 = v19 * cos(v15);
    v21 = sin(0.5 * v28);
    v22 = atan2(sqrt(v21 * v21 * v20 + v18), sqrt(1.0 - (v21 * v21 * v20 + v18)));
    v23 = (v22 + v22) * 6372797.56 * 100.0;
    if (v23 >= 0.0)
    {
      v24 = v23;
      if (v23 < 4.50359963e15)
      {
        v25 = (v23 + v23) + 1;
        goto LABEL_18;
      }
    }

    else
    {
      v24 = v23;
      if (v23 > -4.50359963e15)
      {
        v25 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_18:
        v24 = (v25 >> 1);
      }
    }

    a1 = v10;
    if (v24 < 9.22337204e18)
    {
      if (v23 >= 0.0)
      {
        if (v23 < 4.50359963e15)
        {
          v27 = (v23 + v23) + 1;
          goto LABEL_26;
        }
      }

      else if (v23 > -4.50359963e15)
      {
        v27 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_26:
        v23 = (v27 >> 1);
      }

      v2 = v23;
      goto LABEL_14;
    }

    v2 = 0x7FFFFFFFFFFFFFFELL;
LABEL_14:
    *(a1 + 176) = v2;
  }

  return v2;
}

BOOL sub_11D3B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 80) != 1)
  {
    return 1;
  }

  v6 = *(a3 + 8);
  v7 = *(v6 - 153);
  if ((v7 & 0x8000000000000000) != 0)
  {
    if (!*(v6 - 168))
    {
      goto LABEL_30;
    }

    goto LABEL_6;
  }

  if (*(v6 - 153))
  {
LABEL_6:
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    if (v8 == v9)
    {
      goto LABEL_30;
    }

    if ((v7 & 0x80000000) != 0)
    {
      v14 = *(v6 - 176);
      v15 = *(v6 - 168);
      while (1)
      {
        v16 = *(v8 + 23);
        v17 = v16 >= 0 ? *(v8 + 23) : *(v8 + 8);
        if (v15 >= v17)
        {
          v18 = v16 >= 0 ? v8 : *v8;
          if (!memcmp(v14, v18, v17))
          {
            break;
          }
        }

        v8 += 24;
        if (v8 == v9)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v10 = (v6 - 176);
      while (1)
      {
        v11 = *(v8 + 23);
        v12 = v11 >= 0 ? *(v8 + 23) : *(v8 + 8);
        if (v12 <= v7)
        {
          v13 = v11 >= 0 ? v8 : *v8;
          if (!memcmp(v10, v13, v12))
          {
            break;
          }
        }

        v8 += 24;
        if (v8 == v9)
        {
          goto LABEL_30;
        }
      }
    }

    return 1;
  }

LABEL_30:
  v20 = sub_11D2CF0(a1, a2, a3);
  v21 = sub_11D3884(a1, a3);
  if (v21 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  v23 = v20 / v22;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v29);
    sub_4A5C(&v29, "destination_to_end_over_route_index: ", 37);
    std::ostream::operator<<();
    if ((v39 & 0x10) != 0)
    {
      v25 = v38;
      if (v38 < v35)
      {
        v38 = v35;
        v25 = v35;
      }

      v26 = v34;
      v24 = v25 - v34;
      if (v25 - v34 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if ((v39 & 8) == 0)
      {
        v24 = 0;
        v28 = 0;
LABEL_45:
        *(&__p + v24) = 0;
        sub_7E854(&__p, 2u);
        if (v28 < 0)
        {
          operator delete(__p);
        }

        if (v37 < 0)
        {
          operator delete(v36);
        }

        std::locale::~locale(&v31);
        std::ostream::~ostream();
        std::ios::~ios();
        return v23 < *(a1 + 88);
      }

      v26 = v32;
      v24 = v33 - v32;
      if ((v33 - v32) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_52:
        sub_3244();
      }
    }

    if (v24 >= 0x17)
    {
      operator new();
    }

    v28 = v24;
    if (v24)
    {
      memmove(&__p, v26, v24);
    }

    goto LABEL_45;
  }

  return v23 < *(a1 + 88);
}

void sub_11D3ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

BOOL sub_11D3F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_4C4AEC(a2);
  v6 = *(*(a3 + 8) - 256);
  if (v6 == 3)
  {
    if (*(a1 + 137))
    {
      return 1;
    }
  }

  else if (v6 == 4 && (*(a1 + 136) & 1) != 0)
  {
    return 1;
  }

  if (*(a1 + 112) == *(a1 + 120))
  {
    return 0;
  }

  v8 = *(a1 + 152);
  v9 = sub_2B51D8(v8, *(v5 + 32) | ((*(v5 + 36) & 0x1FFFFFFF) << 32));
  v10 = (v9 - *v9);
  if (*v10 >= 0xDu && (v11 = v10[6]) != 0)
  {
    v12 = 4 * *(v9 + v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_2AF704(v8 + 3896, 1u, 0);
  v14 = &v13[-*v13];
  if (*v14 < 0xBu)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 5);
    if (v15)
    {
      v15 += &v13[*&v13[v15]];
    }
  }

  v16 = (v15 + v12 + 4 + *(v15 + v12 + 4));
  v17 = (v16 - *v16);
  if (*v17 >= 5u && (v18 = v17[2]) != 0)
  {
    v19 = (v16 + v18);
    v20 = *v19;
    v21 = *(v19 + v20);
    if (v21 >= 0x17)
    {
      operator new();
    }

    v32 = *(v19 + v20);
    if (v21)
    {
      memcpy(__dst, v19 + v20 + 4, v21);
    }

    *(__dst + v21) = 0;
    v22 = *(a1 + 112);
    v23 = *(a1 + 120);
    v24 = v32;
    if (v22 != v23)
    {
LABEL_27:
      if ((v24 & 0x80u) == 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = __dst[1];
      }

      if ((v24 & 0x80u) == 0)
      {
        v26 = __dst;
      }

      else
      {
        v26 = __dst[0];
      }

      while (1)
      {
        v27 = *(v22 + 23);
        v28 = v27;
        if (v27 < 0)
        {
          v27 = *(v22 + 8);
        }

        if (v27 == v25)
        {
          v29 = v28 >= 0 ? v22 : *v22;
          if (!memcmp(v29, v26, v25))
          {
            break;
          }
        }

        v22 += 24;
        if (v22 == v23)
        {
          result = 0;
          if ((v24 & 0x80) == 0)
          {
            return result;
          }

          goto LABEL_44;
        }
      }
    }
  }

  else
  {
    v32 = 0;
    LOBYTE(__dst[0]) = 0;
    v22 = *(a1 + 112);
    v23 = *(a1 + 120);
    v24 = 0;
    if (v22 != v23)
    {
      goto LABEL_27;
    }
  }

  result = v22 != v23;
  if ((v24 & 0x80) != 0)
  {
LABEL_44:
    v30 = result;
    operator delete(__dst[0]);
    return v30;
  }

  return result;
}

uint64_t sub_11D41E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  sub_1320D2C(a2, 0, 0);
  result = sub_681D7C(a1);
  v65 = (((*(result + 56) - *(result + 48)) << 30) - 0x100000000) >> 32;
  if (v65)
  {
    v5 = 0;
    v6 = 0;
    v67 = v3;
    v64 = a1;
    while (1)
    {
      v7 = *(v3 + 32);
      if (v7 && (v8 = *(v3 + 24), v8 < *v7))
      {
        *(v3 + 24) = v8 + 1;
        v9 = *&v7[2 * v8 + 2];
      }

      else
      {
        v10 = sub_1328F74(*(v3 + 16));
        v9 = sub_19593CC(v3 + 16, v10);
      }

      if (sub_11080F0(a1, v6))
      {
        v11 = 2;
        goto LABEL_25;
      }

      if (sub_1108134(a1, v6))
      {
        v11 = 3;
        goto LABEL_25;
      }

      if (!sub_110818C(a1, v6))
      {
        goto LABEL_24;
      }

      v12 = sub_681D7C(a1);
      sub_1107E34(v12, v6);
      v13 = sub_681D7C(a1);
      v14 = v6 + 1;
      v15 = v13[6];
      if (v14 >= (v13[7] - v15) >> 2)
      {
        goto LABEL_64;
      }

      v16 = *(v15 + 4 * v6);
      v17 = *(v15 + 4 * v14);
      if (v16 == v17)
      {
        break;
      }

      v18 = v13[9];
      v19 = v18 + 208 * v17;
      v20 = v18 + 208 * v16;
      while ((*(v20 + 40) & 1) == 0)
      {
        v20 += 208;
        if (v20 == v19)
        {
          goto LABEL_19;
        }
      }

      v11 = 4;
LABEL_25:
      *(v9 + 16) |= 2u;
      *(v9 + 56) = v11;
      result = sub_681D7C(a1);
      v25 = v6 + 1;
      v26 = *(result + 48);
      if (v25 >= (*(result + 56) - v26) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v61 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v66 = v6;
      v27 = *(v26 + 4 * v6);
      v28 = *(v26 + 4 * v25);
      if (v27 != v28)
      {
        v29 = *(result + 72);
        v30 = v29 + 208 * v28;
        v31 = v29 + 208 * v27;
        while (1)
        {
          v33 = *(v9 + 40);
          if (v33 && (v34 = *(v9 + 32), v34 < *v33))
          {
            *(v9 + 32) = v34 + 1;
            v35 = *&v33[2 * v34 + 2];
          }

          else
          {
            v36 = sub_1328E54(*(v9 + 24));
            v35 = sub_19593CC(v9 + 24, v36);
          }

          v37 = *(v35 + 16) | 2;
          *(v35 + 16) = v37;
          *(v35 + 68) = v5;
          v38 = *(v31 + 16);
          v39 = *(v31 + 24);
          if (v38 != v39)
          {
            break;
          }

LABEL_48:
          v46 = *(v31 + 8);
          *(v35 + 16) = v37 | 1;
          *(v35 + 64) = v46;
          v47 = *(v35 + 56);
          v3 = v67;
          if (v47 && (v48 = *(v35 + 48), v48 < *v47))
          {
            *(v35 + 48) = v48 + 1;
            v49 = *&v47[2 * v48 + 2];
          }

          else
          {
            v50 = sub_1328DD0(*(v35 + 40));
            v49 = sub_19593CC(v35 + 40, v50);
          }

          sub_131EF90(v68, 0, 0);
          v51 = *(v31 + 124);
          if (v51 == 0x7FFFFFFF)
          {
            v51 = -1;
          }

          v52 = *(v31 + 128);
          v70 = *(v31 + 120);
          v71 = v51;
          v69 |= 7u;
          v72 = v52;
          sub_131F850(v49, v68);
          result = sub_131F03C(v68);
          *(v49 + 16) |= 0x10u;
          *(v49 + 40) = 2;
          v53 = *(v31 + 156);
          if (v53 != 0x7FFFFFFF)
          {
            v54 = *(v35 + 56);
            if (v54 && (v55 = *(v35 + 48), v55 < *v54))
            {
              *(v35 + 48) = v55 + 1;
              result = *&v54[2 * v55 + 2];
            }

            else
            {
              v56 = sub_1328DD0(*(v35 + 40));
              result = sub_19593CC(v35 + 40, v56);
              v53 = *(v31 + 156);
            }

            v32 = *(result + 16);
            *(result + 28) = v53;
            *(result + 16) = v32 | 0x12;
            *(result + 40) = 3;
          }

          ++v5;
          v31 += 208;
          if (v31 == v30)
          {
            goto LABEL_4;
          }
        }

        while (1)
        {
          v40 = **v38;
          v41 = (v40 - *v40);
          if (*v41 >= 0x1Du && (v42 = v41[14]) != 0)
          {
            v43 = *(v40 + v42);
            if (*(*v38 + 38))
            {
              v44 = -v43;
            }

            else
            {
              v44 = v43;
            }

            v45 = *(v35 + 24);
            if (v45 != *(v35 + 28))
            {
LABEL_37:
              *(*(v35 + 32) + 8 * v45) = v44;
              *(v35 + 24) = v45 + 1;
              if (++v38 == v39)
              {
                goto LABEL_47;
              }

              continue;
            }
          }

          else
          {
            v44 = 0;
            v45 = *(v35 + 24);
            if (v45 != *(v35 + 28))
            {
              goto LABEL_37;
            }
          }

          sub_1959094((v35 + 24), v45 + 1);
          *(*(v35 + 32) + 8 * v45) = v44;
          *(v35 + 24) = v45 + 1;
          if (++v38 == v39)
          {
LABEL_47:
            v37 = *(v35 + 16);
            goto LABEL_48;
          }
        }
      }

LABEL_4:
      v6 = v66 + 1;
      a1 = v64;
      if (v66 + 1 == v65)
      {
        return result;
      }
    }

LABEL_19:
    v21 = sub_681D7C(a1);
    if (v14 >= (v21[7] - v21[6]) >> 2)
    {
      goto LABEL_64;
    }

    if (*(*v21 + 4 * v14) == *(*v21 + 4 * v6))
    {
      goto LABEL_21;
    }

    v22 = sub_681D7C(a1);
    if (v14 >= (v22[7] - v22[6]) >> 2)
    {
LABEL_64:
      v62 = __cxa_allocate_exception(0x40uLL);
      v63 = sub_2D390(v62, "vertex id out of range", 0x16uLL);
    }

    v23 = *(*v22 + 4 * v6);
    v24 = *(*v22 + 4 * v14);
    if (v23 != v24)
    {
      v57 = v22[3];
      v58 = v57 + 208 * v24;
      v59 = v57 + 208 * v23;
      while (*(v59 + 40) != 1)
      {
        v59 += 208;
        v11 = 1;
        if (v59 == v58)
        {
          goto LABEL_25;
        }
      }

LABEL_21:
      v11 = 5;
      goto LABEL_25;
    }

LABEL_24:
    v11 = 1;
    goto LABEL_25;
  }

  return result;
}

void sub_11D4784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_131F03C(va);
  sub_1320DE0(v5);
  _Unwind_Resume(a1);
}

void sub_11D4850(void *a1, uint64_t a2, uint64_t a3, int *a4, int a5, uint64_t a6, int a7, int32x2_t *a8)
{
  v16 = a5;
  if (sub_F6A05C(a1))
  {
    v13 = sub_10104F4(a8, a1, a4, &v16, a6, a7);
    v15 = *(v13 + 4);
    v14 = *(v13 + 5);
    if (v14 != v15)
    {
      if (((v14 - v15) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }
  }
}

void sub_11D4B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_131F03C(va);
  operator delete(v6);
  _Unwind_Resume(a1);
}

uint64_t sub_11D4B54(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v8 = a2[1];
  if (v8 >= a2[2])
  {
    v9 = sub_11D5AA0(a2);
  }

  else
  {
    sub_1324018(a2[1], 0, 0);
    v9 = v8 + 48;
    a2[1] = v9;
  }

  a2[1] = v9;
  *(v9 - 32) |= 1u;
  v10 = (v9 - 24);
  v11 = *(v9 - 40);
  v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
  if ((v11 & 1) == 0)
  {
    sub_194EA1C(v10, a3, v12);
    v13 = *(a3 + 48);
    v14 = *(v9 - 32);
    if (v13 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_194EA1C(v10, a3, *v12);
  v13 = *(a3 + 48);
  v14 = *(v9 - 32);
  if (v13 != -1)
  {
LABEL_6:
    v14 |= 4u;
    *(v9 - 32) = v14;
    *(v9 - 8) = v13;
  }

LABEL_7:
  *(v9 - 32) = v14 | 2;
  v15 = *(v9 - 16);
  if (!v15)
  {
    v16 = *(v9 - 40);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v15 = sub_132932C(v17);
    *(v9 - 16) = v15;
  }

  v18 = *(v15 + 16);
  *(v15 + 64) = a4;
  *(v15 + 16) = v18 | 5;
  v19 = *(v15 + 8);
  v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
  if (v19)
  {
    v20 = *v20;
  }

  sub_194EA1C((v15 + 48), (a3 + 24), v20);
  result = nullsub_1(a1);
  v22 = *result;
  v49 = *(result + 8);
  if (*result != v49)
  {
    while (1)
    {
      v25 = *(v15 + 40);
      if (!v25)
      {
        break;
      }

      v26 = *(v15 + 32);
      if (v26 >= *v25)
      {
        break;
      }

      *(v15 + 32) = v26 + 1;
      v27 = *&v25[2 * v26 + 2];
      sub_F6D05C(v22, &v50);
      v28 = v50;
      v29 = v51;
      v30 = v52;
      v31 = v53;
      if (v50)
      {
        goto LABEL_25;
      }

LABEL_21:
      if (v30)
      {
        while (v31 < sub_F6D024(v30))
        {
          v44 = sub_F6D17C(v28, v29);
          v45 = (*v44 - **v44);
          if (*v45 >= 0x1Du && (v46 = v45[14]) != 0)
          {
            if (*(v44 + 38))
            {
              v47 = -*(*v44 + v46);
            }

            else
            {
              v47 = *(*v44 + v46);
            }

            v48 = *(v27 + 24);
            if (v48 == *(v27 + 28))
            {
LABEL_42:
              v43 = v48 + 1;
              sub_1959094((v27 + 24), v48 + 1);
              *(*(v27 + 32) + 8 * v48) = v47;
              goto LABEL_43;
            }
          }

          else
          {
            v47 = 0;
            v48 = *(v27 + 24);
            if (v48 == *(v27 + 28))
            {
              goto LABEL_42;
            }
          }

          *(*(v27 + 32) + 8 * v48) = v47;
          v43 = v48 + 1;
LABEL_43:
          *(v27 + 24) = v43;
          ++v29;
        }
      }

LABEL_15:
      v23 = sub_F6D1F0(v22, 0);
      *(v27 + 16) |= 1u;
      *(v27 + 40) = v23 / 1000000000.0;
      v24 = sub_F6D024(v22);
      result = sub_F6D204(v22, v24 - 1);
      *(v27 + 16) |= 2u;
      *(v27 + 48) = result / 1000000000.0;
      v22 += 69;
      if (v22 == v49)
      {
        return result;
      }
    }

    v32 = sub_13291E4(*(v15 + 24));
    v27 = sub_19593CC(v15 + 24, v32);
    sub_F6D05C(v22, &v50);
    v28 = v50;
    v29 = v51;
    v30 = v52;
    v31 = v53;
    if (!v50)
    {
      goto LABEL_21;
    }

    while (1)
    {
LABEL_25:
      v34 = sub_F6D024(v28);
      v35 = v34;
      if (v30)
      {
        v36 = sub_F6D024(v30);
        if (v29 >= v35 || v31 >= v36)
        {
          if (v29 < v35 == v31 < v36)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v37 = sub_F6D17C(v28, v29);
          if (v37 == sub_F6D17C(v30, v31))
          {
            goto LABEL_15;
          }
        }
      }

      else if (v29 >= v34)
      {
        goto LABEL_15;
      }

      v38 = sub_F6D17C(v28, v29);
      v39 = (*v38 - **v38);
      if (*v39 >= 0x1Du && (v40 = v39[14]) != 0)
      {
        if (*(v38 + 38))
        {
          v41 = -*(*v38 + v40);
        }

        else
        {
          v41 = *(*v38 + v40);
        }

        v42 = *(v27 + 24);
        if (v42 != *(v27 + 28))
        {
LABEL_23:
          *(*(v27 + 32) + 8 * v42) = v41;
          v33 = v42 + 1;
          goto LABEL_24;
        }
      }

      else
      {
        v41 = 0;
        v42 = *(v27 + 24);
        if (v42 != *(v27 + 28))
        {
          goto LABEL_23;
        }
      }

      v33 = v42 + 1;
      sub_1959094((v27 + 24), v42 + 1);
      *(*(v27 + 32) + 8 * v42) = v41;
LABEL_24:
      *(v27 + 24) = v33;
      ++v29;
    }
  }

  return result;
}

uint64_t sub_11D4F6C(uint64_t a1, uint64_t a2)
{
  v56 = sub_45AC50(a1);
  v3 = *(a2 + 80);
  v54 = a2;
  v4 = *(a2 + 88);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    v6 = 8 * v3;
    v7 = &v5[v3];
    while (1)
    {
      v8 = *(*v5 + 32);
      if (!v8)
      {
        v8 = &off_276B418;
      }

      if ((v8[2] & 4) == 0 || *(v8 + 64) != 1)
      {
        break;
      }

      ++v5;
      v6 -= 8;
      if (!v6)
      {
        v5 = v7;
        break;
      }
    }
  }

  result = sub_588D8(a1);
  while (v56 != result)
  {
    v10 = *v5;
    *(v10 + 16) = *(*v5 + 16) | 2;
    v11 = *(v10 + 32);
    if (v11)
    {
      v12 = sub_45AC50(v56);
      if (sub_F69D6C(v12))
      {
        goto LABEL_39;
      }
    }

    else
    {
      v13 = *(v10 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v11 = sub_132932C(v14);
      *(v10 + 32) = v11;
      v15 = sub_45AC50(v56);
      if (sub_F69D6C(v15))
      {
        goto LABEL_39;
      }
    }

    v16 = sub_45AC50(v56);
    v17 = sub_F69654(v16);
    v18 = (*v17 - **v17);
    if (*v18 >= 0x1Du && (v19 = v18[14]) != 0)
    {
      v20 = *(*v17 + v19);
    }

    else
    {
      v20 = 0;
    }

    if (*(v17 + 38))
    {
      v21 = -v20;
    }

    else
    {
      v21 = v20;
    }

    v22 = *(*(v11 + 40) + 8);
    v23 = *(v22 + 24);
    if (v23)
    {
      v24 = *(v22 + 32);
      for (i = 8 * v23; i; i -= 8)
      {
        while (1)
        {
          v26 = *v24;
          if (*v24 == v21)
          {
            goto LABEL_39;
          }

          *(v11 + 16) |= 2u;
          v27 = *(v11 + 56);
          if (v27)
          {
            break;
          }

          v30 = *(v11 + 8);
          v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
          if (v30)
          {
            v31 = *v31;
          }

          v27 = sub_1329284(v31);
          *(v11 + 56) = v27;
          v28 = *(v27 + 16);
          v29 = (v27 + 16);
          if (v28 == *(v27 + 20))
          {
            goto LABEL_38;
          }

LABEL_30:
          *(*(v27 + 24) + 8 * v28) = v26;
          *v29 = v28 + 1;
          ++v24;
          i -= 8;
          if (!i)
          {
            goto LABEL_39;
          }
        }

        v28 = *(v27 + 16);
        v29 = (v27 + 16);
        if (v28 != *(v27 + 20))
        {
          goto LABEL_30;
        }

LABEL_38:
        sub_1959094(v29, v28 + 1);
        *(*(v27 + 24) + 8 * v28) = v26;
        *v29 = v28 + 1;
        ++v24;
      }
    }

LABEL_39:
    v32 = sub_F63CB0(v56);
    if (!sub_F69D6C(v32))
    {
      v33 = sub_F63CB0(v56);
      v34 = sub_F6C814(v33);
      v35 = (*v34 - **v34);
      if (*v35 >= 0x1Du && (v36 = v35[14]) != 0)
      {
        v37 = *(*v34 + v36);
      }

      else
      {
        v37 = 0;
      }

      v38 = *(v34 + 38) ? -v37 : v37;
      v39 = *(*(v11 + 40) + 8 * *(v11 + 32));
      v40 = *(v39 + 24);
      if (v40 >= 1)
      {
        v41 = v40 - 1;
        do
        {
          while (1)
          {
            v43 = *(*(v39 + 32) + 8 * v41);
            if (v43 == v38)
            {
              goto LABEL_58;
            }

            *(v11 + 16) |= 2u;
            v44 = *(v11 + 56);
            if (v44)
            {
              break;
            }

            v47 = *(v11 + 8);
            v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
            if (v47)
            {
              v48 = *v48;
            }

            v44 = sub_1329284(v48);
            *(v11 + 56) = v44;
            v45 = *(v44 + 32);
            v46 = (v44 + 32);
            if (v45 == *(v44 + 36))
            {
              goto LABEL_57;
            }

LABEL_49:
            *(*(v44 + 40) + 8 * v45) = v43;
            *v46 = v45 + 1;
            v42 = v41-- + 1;
            if (v42 <= 1)
            {
              goto LABEL_58;
            }
          }

          v45 = *(v44 + 32);
          v46 = (v44 + 32);
          if (v45 != *(v44 + 36))
          {
            goto LABEL_49;
          }

LABEL_57:
          sub_1959094(v46, v45 + 1);
          *(*(v44 + 40) + 8 * v45) = v43;
          *v46 = v45 + 1;
          v49 = v41-- + 1;
        }

        while (v49 > 1);
      }
    }

LABEL_58:
    ++v5;
    v50 = *(v54 + 88);
    if (v50)
    {
      v51 = v50 + 8;
    }

    else
    {
      v51 = 0;
    }

    v52 = (v51 + 8 * *(v54 + 80));
    if (v5 != v52)
    {
      while (1)
      {
        v53 = *(*v5 + 32);
        if (!v53)
        {
          v53 = &off_276B418;
        }

        if ((v53[2] & 4) == 0 || *(v53 + 64) != 1)
        {
          break;
        }

        if (++v5 == v52)
        {
          v5 = v52;
          break;
        }
      }
    }

    result = sub_588D8(a1);
    v56 += 48;
  }

  return result;
}

void sub_11D5348(uint64_t a1, uint64_t a2)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  sub_11D5D98(&v52, *(a1 + 32));
  v4 = *(a1 + 32);
  v50 = a1;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v47 = a2;
  if (v4)
  {
    v51 = &v6[v4];
    do
    {
      v7 = *v6;
      __p[0] = &unk_2290750;
      v58 = 0;
      v56 = 0;
      v57 = 0;
      __p[1] = 0;
      v8 = *(v7 + 24);
      if (v8 == 7 || (v8 - 1) / 7 + v8)
      {
        sub_11D5F08();
      }

      if (v8)
      {
        v9 = *(v7 + 32);
        v10 = &v9[v8];
        v11 = __p[0];
        do
        {
          v15 = 0;
          v18 = *v9;
          v19 = ~*v9 + (*v9 << 21);
          v20 = 21 * ((265 * (v19 ^ (v19 >> 24))) ^ ((265 * (v19 ^ (v19 >> 24))) >> 14));
          v21 = 2147483649u * (v20 ^ (v20 >> 28));
          for (i = v21 >> 7; ; i = v15 + v12)
          {
            v12 = i & v57;
            v13 = *&v11[v12];
            v14 = ((v13 ^ (0x101010101010101 * ((v20 ^ (v20 >> 28)) & 0x7F))) - 0x101010101010101) & ~(v13 ^ (0x101010101010101 * ((v20 ^ (v20 >> 28)) & 0x7F))) & 0x8080808080808080;
            if (v14)
            {
              break;
            }

LABEL_15:
            if ((v13 & (~v13 << 6) & 0x8080808080808080) != 0)
            {
              v17 = sub_11D60AC(__p, v21);
              *(__p[1] + v17) = v18;
              v11 = __p[0];
              goto LABEL_18;
            }

            v15 += 8;
          }

          while (*(__p[1] + ((v12 + (__clz(__rbit64(v14)) >> 3)) & v57)) != v18)
          {
            v14 &= v14 - 1;
            if (!v14)
            {
              goto LABEL_15;
            }
          }

LABEL_18:
          ++v9;
        }

        while (v9 != v10);
      }

      v22 = v53;
      if (v53 >= v54)
      {
        v26 = sub_11D643C(&v52, __p);
      }

      else
      {
        v23 = *__p;
        v24 = v56;
        __p[1] = 0;
        v56 = 0;
        __p[0] = &unk_2290750;
        *v53 = v23;
        v22[2] = v24;
        v25 = v57;
        v57 = 0;
        v22[3] = v25;
        v22[5] = v58;
        v58 = 0;
        v26 = (v22 + 6);
      }

      v53 = v26;
      if (v57)
      {
        operator delete(__p[0]);
      }

      ++v6;
    }

    while (v6 != v51);
    v27 = *(a1 + 32);
    if (v27)
    {
      if ((v27 & 0x80000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    a2 = v47;
  }

  v28 = *(a1 + 96);
  if (!v28)
  {
    v28 = &off_276B328;
  }

  v29 = v28[4];
  if (v29)
  {
    v30 = v29 + 1;
  }

  else
  {
    v30 = 0;
  }

  v31 = *(v28 + 6);
  if (v31)
  {
    v45 = &v30[v31];
    do
    {
      v46 = v30;
      v32 = *v30;
      v33 = *(*v30 + 5);
      if (v33)
      {
        v34 = v33 + 8;
      }

      else
      {
        v34 = 0;
      }

      v35 = *(v32 + 8);
      if (v35)
      {
        v48 = v34 + 8 * v35;
        do
        {
          v49 = v34;
          v36 = *(*v34 + 24);
          if (v36)
          {
            v37 = *(*v34 + 32);
            v38 = 8 * v36;
            do
            {
              __p[0] = *v37;
              sub_11D65E4((a2 + 8), __p);
              ++v37;
              v38 -= 8;
            }

            while (v38);
          }

          v39 = *(v50 + 64);
          if (v39 && (v40 = *(v50 + 56), v40 < *v39))
          {
            *(v50 + 56) = v40 + 1;
          }

          else
          {
            v41 = sub_132945C(*(v50 + 48));
            sub_19593CC(v50 + 48, v41);
          }

          v34 = v49 + 8;
          a2 = v47;
        }

        while (v49 + 8 != v48);
      }

      v30 = v46 + 1;
    }

    while (v46 + 1 != v45);
  }

  sub_1957E24(v50, __p);
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = *__p;
  *(a2 + 64) = v56;
  v42 = v52;
  if (v52)
  {
    v43 = v53;
    v44 = v52;
    if (v53 != v52)
    {
      do
      {
        if (*(v43 - 3))
        {
          operator delete(*(v43 - 6));
          *(v43 - 1) = 0;
          *(v43 - 6) = &unk_2290750;
          *(v43 - 5) = 0;
          *(v43 - 4) = 0;
          *(v43 - 3) = 0;
        }

        v43 -= 6;
      }

      while (v43 != v42);
      v44 = v52;
    }

    v53 = v42;
    operator delete(v44);
  }
}

void sub_11D5A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a18)
  {
    sub_21E92CC(&a19, a18, &a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11D5AA0(uint64_t *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v4 = 0x555555555555555;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v10 = 16 * ((a1[1] - *a1) >> 4);
  sub_1324018(v10, 0, 0);
  v5 = 48 * v1 + 48;
  v6 = a1[1];
  v7 = (v10 + *a1 - v6);
  sub_11D5BDC(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  a1[1] = v5;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v5;
}

void sub_11D5BC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_11D5CBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_11D5BDC(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      result = sub_1324018(a4, 0, 0);
      if (a4 != v7)
      {
        size = a4->__r_.__value_.__l.__size_;
        if ((size & 2) != 0)
        {
          size = 0;
        }

        else if (size)
        {
          size = *(size & 0xFFFFFFFFFFFFFFFCLL);
        }

        v10 = *(v7 + 8);
        if ((v10 & 2) != 0)
        {
          v10 = 0;
        }

        else if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (size == v10)
        {
          result = sub_1324980(a4, v7);
        }

        else
        {
          result = sub_132492C(a4, v7);
        }
      }

      v7 += 48;
      a4 += 2;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      result = sub_1324260(v6);
      v6 += 48;
    }
  }

  return result;
}

uint64_t sub_11D5CBC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1324260(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_11D5D10(void **a1)
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
        if (*(v3 - 3))
        {
          operator delete(*(v3 - 6));
          *(v3 - 1) = 0;
          *(v3 - 6) = &unk_2290750;
          *(v3 - 5) = 0;
          *(v3 - 4) = 0;
          *(v3 - 3) = 0;
        }

        v3 -= 6;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_11D5D98(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

unint64_t sub_11D60AC(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_11D61A4(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_11D61A4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_11D5F08();
  }

  return sub_11D61D4(a1);
}

uint64_t sub_11D61D4(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_27;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_27:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = *(*(result + 8) + 8 * i);
        v19 = 265 * ((~v18 + (v18 << 21)) ^ ((~v18 + (v18 << 21)) >> 24));
        v20 = 2147483649u * ((21 * (v19 ^ (v19 >> 14))) ^ ((21 * (v19 ^ (v19 >> 14))) >> 28));
        v21 = v13 & (v20 >> 7);
        v22 = *(v17->i64 + v21) & (~*(v17->i64 + v21) << 7) & 0x8080808080808080;
        if (v22)
        {
          v15 = v13 & (v20 >> 7);
        }

        else
        {
          v23 = 8;
          v15 = v13 & (v20 >> 7);
          do
          {
            v15 = (v15 + v23) & v13;
            v23 += 8;
            v22 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v22);
        }

        v16 = (v15 + (__clz(__rbit64(v22)) >> 3)) & v13;
        if ((((v16 - v21) ^ (i - v21)) & v13) > 7)
        {
          v24 = v17->u8[v16];
          v17->i8[v16] = v20 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v20 & 0x7F;
          v25 = *(result + 8);
          if (v24 == 128)
          {
            *(v25 + 8 * v16) = *(v25 + 8 * i);
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v26 = *(v25 + 8 * i);
            *(v25 + 8 * i) = *(v25 + 8 * v16);
            *(v25 + 8 * v16) = v26;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v20 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v20 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v27 = i - (i >> 3);
    v28 = i == 7;
    v29 = 6;
    if (!v28)
    {
      v29 = v27;
    }

    *(result + 40) = v29 - *(result + 16);
  }

  else
  {
    *(result + 40) = -*(result + 16);
  }

  return result;
}

uint64_t sub_11D643C(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 4) + 1;
  if (v5 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - v2) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - v2) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v2) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v8 = 16 * (v4 >> 4);
  v9 = *a2;
  v10 = a2[1];
  *a2 = &unk_2290750;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *v8 = v9;
  *(v8 + 16) = v10;
  *(v8 + 40) = *(a2 + 5);
  *(a2 + 5) = 0;
  v11 = v8 + 48;
  v12 = v8 - v4;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v12;
    do
    {
      v15 = *v13;
      v16 = *(v13 + 2);
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = &unk_2290750;
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = *(v13 + 3);
      *(v13 + 3) = 0;
      *(v14 + 24) = v17;
      *(v14 + 40) = *(v13 + 5);
      *(v13 + 5) = 0;
      v13 += 3;
      v14 += 48;
    }

    while (v13 != v3);
    do
    {
      if (*(v2 + 24))
      {
        operator delete(*v2);
        *(v2 + 40) = 0;
        *v2 = &unk_2290750;
        *(v2 + 8) = 0;
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      v2 += 48;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  a1[1] = v11;
  a1[2] = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v11;
}

void *sub_11D65E4(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
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
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_11D6918()
{
  byte_27C4057 = 3;
  LODWORD(qword_27C4040) = 5136193;
  byte_27C406F = 3;
  LODWORD(qword_27C4058) = 5136194;
  byte_27C4087 = 3;
  LODWORD(qword_27C4070) = 5136195;
  byte_27C409F = 15;
  strcpy(&qword_27C4088, "vehicle_mass_kg");
  byte_27C40B7 = 21;
  strcpy(&xmmword_27C40A0, "vehicle_cargo_mass_kg");
  byte_27C40CF = 19;
  strcpy(&qword_27C40B8, "vehicle_aux_power_w");
  byte_27C40E7 = 15;
  strcpy(&qword_27C40D0, "dcdc_efficiency");
  strcpy(&qword_27C40E8, "drive_train_efficiency");
  HIBYTE(word_27C40FE) = 22;
  operator new();
}

void sub_11D6AF4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C40FE) < 0)
  {
    sub_21E9350();
  }

  sub_21E935C();
  _Unwind_Resume(a1);
}

uint64_t sub_11D6B14(uint64_t a1, int a2, uint64_t *a3)
{
  sub_1326E7C(v73, 0, 0);
  v69 = a1;
  v4 = sub_58BBC(*(a1 + 8));
  v6 = *v4;
  v5 = *(v4 + 8);
LABEL_3:
  if (v6 != v5)
  {
    if (v78 && v77 < *v78)
    {
      v7 = &v78[2 * v77++];
      v8 = *(v7 + 1);
    }

    else
    {
      v9 = sub_132976C(v76);
      v8 = sub_19593CC(&v76, v9);
    }

    sub_4D1DDC(v6, &__p);
    v11 = *(&__p + 1);
    v10 = __p;
    v12 = v71;
    v13 = v72;
    while (1)
    {
      if (v10)
      {
        v15 = sub_4D1DC0(v10);
        v16 = v11 < v15;
        if (!v12)
        {
          if (v11 >= v15)
          {
            goto LABEL_2;
          }

          goto LABEL_24;
        }
      }

      else
      {
        if (!v12)
        {
          goto LABEL_2;
        }

        v16 = 0;
      }

      v17 = sub_4D1DC0(v12);
      if (v13 < v17 && v16)
      {
        v19 = sub_4D1F50(v10, v11);
        if (v19 == sub_4D1F50(v12, v13))
        {
          goto LABEL_2;
        }
      }

      else if (((v16 ^ (v13 < v17)) & 1) == 0)
      {
LABEL_2:
        v6 += 137;
        goto LABEL_3;
      }

LABEL_24:
      v20 = sub_4D1F50(v10, v11);
      v21 = (*v20 - **v20);
      if (*v21 >= 0x1Du && (v22 = v21[14]) != 0)
      {
        if (*(v20 + 38))
        {
          v23 = -*(*v20 + v22);
        }

        else
        {
          v23 = *(*v20 + v22);
        }

        v24 = *(v8 + 16);
        if (v24 != *(v8 + 20))
        {
LABEL_9:
          *(*(v8 + 24) + 8 * v24) = v23;
          v14 = v24 + 1;
          goto LABEL_10;
        }
      }

      else
      {
        v23 = 0;
        v24 = *(v8 + 16);
        if (v24 != *(v8 + 20))
        {
          goto LABEL_9;
        }
      }

      v14 = v24 + 1;
      sub_1959094((v8 + 16), v24 + 1);
      *(*(v8 + 24) + 8 * v24) = v23;
LABEL_10:
      *(v8 + 16) = v14;
      ++v11;
    }
  }

  v25 = 0;
  v26 = v69 + 32;
  do
  {
    v28 = *(v26 + 8 * v25);
    if (v28 != 0.0 && v28 != 1.79769313e308)
    {
      if (v84 && v83 < *v84)
      {
        v30 = &v84[2 * v83++];
        v31 = *(v30 + 1);
      }

      else
      {
        v32 = sub_13295A0(v82);
        v31 = sub_19593CC(&v82, v32);
      }

      sub_113C0E4(v25, &__p);
      *(v31 + 16) |= 1u;
      v33 = *(v31 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      sub_194EA30((v31 + 40), &__p, v34);
      if (SHIBYTE(v71) < 0)
      {
        operator delete(__p);
        v35 = *(v26 + 8 * v25);
        v37 = *(v31 + 24);
        v36 = (v31 + 24);
        if (v37 == *(v31 + 28))
        {
LABEL_51:
          v27 = v37 + 1;
          sub_1959094(v36, v37 + 1);
          *(*(v31 + 32) + 8 * v37) = v35;
          goto LABEL_35;
        }
      }

      else
      {
        v35 = *(v26 + 8 * v25);
        v37 = *(v31 + 24);
        v36 = (v31 + 24);
        if (v37 == *(v31 + 28))
        {
          goto LABEL_51;
        }
      }

      *(*(v31 + 32) + 8 * v37) = v35;
      v27 = v37 + 1;
LABEL_35:
      *v36 = v27;
    }

    ++v25;
  }

  while (v25 != 122);
  for (i = *(v69 + 1008); i; i &= i - 1)
  {
    v40 = __clz(__rbit64(i));
    if (v40 > 2)
    {
      switch(v40)
      {
        case 3:
          v41 = v79;
          if (v79 == v80)
          {
            v39 = v79 + 1;
            sub_1958E5C(&v79, v79 + 1);
            *(v81 + 4 * v41) = 3;
            goto LABEL_56;
          }

          *(v81 + 4 * v79) = 3;
          break;
        case 4:
          v41 = v79;
          if (v79 == v80)
          {
            v39 = v79 + 1;
            sub_1958E5C(&v79, v79 + 1);
            *(v81 + 4 * v41) = 4;
            goto LABEL_56;
          }

          *(v81 + 4 * v79) = 4;
          break;
        case 5:
          v41 = v79;
          if (v79 == v80)
          {
            v39 = v79 + 1;
            sub_1958E5C(&v79, v79 + 1);
            *(v81 + 4 * v41) = 5;
            goto LABEL_56;
          }

          *(v81 + 4 * v79) = 5;
          break;
        default:
          continue;
      }
    }

    else if (v40)
    {
      if (v40 == 1)
      {
        v41 = v79;
        if (v79 == v80)
        {
          v39 = v79 + 1;
          sub_1958E5C(&v79, v79 + 1);
          *(v81 + 4 * v41) = 1;
          goto LABEL_56;
        }

        *(v81 + 4 * v79) = 1;
      }

      else
      {
        if (v40 != 2)
        {
          continue;
        }

        v41 = v79;
        if (v79 == v80)
        {
          v39 = v79 + 1;
          sub_1958E5C(&v79, v79 + 1);
          *(v81 + 4 * v41) = 2;
          goto LABEL_56;
        }

        *(v81 + 4 * v79) = 2;
      }
    }

    else
    {
      v41 = v79;
      if (v79 == v80)
      {
        v39 = v79 + 1;
        sub_1958E5C(&v79, v79 + 1);
        *(v81 + 4 * v41) = 0;
        goto LABEL_56;
      }

      *(v81 + 4 * v79) = 0;
    }

    v39 = v41 + 1;
LABEL_56:
    v79 = v39;
  }

  v91 = a2;
  v75 |= 9u;
  v42 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
  if (v74)
  {
    v42 = *v42;
  }

  sub_194EA1C(&v88, (v69 + 1040), v42);
  v75 |= 4u;
  v43 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
  if (v74)
  {
    v43 = *v43;
  }

  sub_194EA1C(&v90, (v69 + 1064), v43);
  v75 |= 2u;
  v44 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
  if (v74)
  {
    v44 = *v44;
  }

  sub_194EA1C(&v89, (v69 + 1088), v44);
  v45 = *(v69 + 1016);
  v46 = *(v69 + 1024);
  if (v45 != v46)
  {
    while (1)
    {
      if (v87 && v86 < *v87)
      {
        v47 = &v87[2 * v86++];
        v48 = *(v47 + 1);
      }

      else
      {
        v49 = sub_13296C8(v85);
        v48 = sub_19593CC(&v85, v49);
      }

      *(v48 + 16) |= 1u;
      v50 = *(v48 + 8);
      v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
      if (v50)
      {
        v51 = *v51;
      }

      sub_194EA1C((v48 + 48), v45, v51);
      v52 = *(v45 + 24);
      *(v48 + 16) |= 2u;
      *(v48 + 56) = v52;
      v53 = *(v45 + 32);
      v54 = *(v45 + 40);
      if (v53 != v54)
      {
        break;
      }

LABEL_102:
      v45 += 56;
      if (v45 == v46)
      {
        goto LABEL_103;
      }
    }

    while (2)
    {
      v55 = *(v48 + 40);
      if (v55 && (v56 = *(v48 + 32), v56 < *v55))
      {
        *(v48 + 32) = v56 + 1;
        v57 = *&v55[2 * v56 + 2];
        *(v57 + 16) |= 1u;
        v58 = *(v57 + 8);
        v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL);
        if (v58)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v60 = sub_1329644(*(v48 + 24));
        v57 = sub_19593CC(v48 + 24, v60);
        *(v57 + 16) |= 1u;
        v61 = *(v57 + 8);
        v59 = (v61 & 0xFFFFFFFFFFFFFFFCLL);
        if (v61)
        {
LABEL_99:
          v59 = *v59;
        }
      }

      sub_194EA1C((v57 + 24), v53, v59);
      v62 = *(v53 + 24);
      *(v57 + 16) |= 2u;
      *(v57 + 32) = v62;
      v53 += 32;
      if (v53 == v54)
      {
        goto LABEL_102;
      }

      continue;
    }
  }

LABEL_103:
  v63 = a3;
  v64 = a3[1];
  if (v64 >= a3[2])
  {
    v65 = sub_11D7428(a3, v73);
  }

  else
  {
    sub_13271EC(a3[1], v73);
    v65 = v64 + 144;
    v63 = a3;
    a3[1] = v64 + 144;
  }

  v63[1] = v65;
  return sub_13272E4(v73);
}

void sub_11D721C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *(a3 + 8) = v8;
  sub_13272E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_11D729C(uint64_t *a1, uint64_t a2)
{
  sub_1328420(v19, 0, 0);
  v4 = *a1;
  v5 = a1[1];
  while (v4 != v5)
  {
    if (v22 && v21 < *v22)
    {
      v6 = &v22[2 * v21++];
      v7 = *(v6 + 1);
    }

    else
    {
      v8 = sub_1329800(v20);
      v7 = sub_19593CC(&v20, v8);
    }

    sub_13282E8(v7, v4);
    v9 = *(v4 + 40);
    if (v9)
    {
      v10 = v9 + 8;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v4 + 32);
    if (v11)
    {
      v12 = v10 + 8 * v11;
      do
      {
        v13 = *(*v10 + 16);
        if (v13)
        {
          v14 = *(*v10 + 24);
          v15 = 8 * v13;
          do
          {
            *&v17 = *v14;
            sub_11D65E4((a2 + 8), &v17);
            ++v14;
            v15 -= 8;
          }

          while (v15);
        }

        v10 += 8;
      }

      while (v10 != v12);
    }

    v4 += 144;
  }

  sub_1957E24(v19, &v17);
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = v17;
  *(a2 + 64) = v18;
  return sub_13284D4(v19);
}

void sub_11D73EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_13284D4(va);
  _Unwind_Resume(a1);
}

void sub_11D7400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_13284D4(va);
  _Unwind_Resume(a1);
}

void sub_11D7414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_13284D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_11D7428(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 16 * ((a1[1] - *a1) >> 4);
  sub_13271EC(v11, a2);
  v6 = 144 * v2 + 144;
  v7 = a1[1];
  v8 = (v11 + *a1 - v7);
  sub_11D757C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_11D7568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_11D765C(va);
  _Unwind_Resume(a1);
}

void sub_11D757C(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      sub_1326E7C(a4, 0, 0);
      if (a4 != v7)
      {
        size = a4->__r_.__value_.__l.__size_;
        if ((size & 2) != 0)
        {
          size = 0;
        }

        else if (size)
        {
          size = *(size & 0xFFFFFFFFFFFFFFFCLL);
        }

        v9 = *(v7 + 8);
        if ((v9 & 2) != 0)
        {
          v9 = 0;
        }

        else if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFCLL);
        }

        if (size == v9)
        {
          sub_132833C(a4, v7);
        }

        else
        {
          sub_13282E8(a4, v7);
        }
      }

      v7 += 144;
      a4 += 6;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_13272E4(v6);
      v6 += 144;
    }
  }
}

uint64_t sub_11D765C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_13272E4(i - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_11D76B0(uint64_t a1)
{
  v14 = 11;
  v12 = 0;
  strcpy(v13, "RoadSnapper");
  v10 = 0;
  v11 = 0;
  v1 = sub_3AEC94(a1, v13, &v10);
  v9 = 11;
  strcpy(__p, "enable_xray");
  v2 = sub_5F9D0(v1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = v10;
  if (v10)
  {
    v4 = v11;
    v5 = v10;
    if (v11 != v10)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = v10;
    }

    v11 = v3;
    operator delete(v5);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return v2;
}

void sub_11D77C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

uint64_t sub_11D782C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_131EB18(v41, 0, 0);
  v7 = *a1;
  v8 = a1[1];
  while (v7 != v8)
  {
    if (v44 && v43 < *v44)
    {
      v9 = &v44[2 * v43++];
      v10 = *(v9 + 1);
      *(v10 + 16) |= 1u;
      v11 = *(v10 + 72);
      if (v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = sub_1328C8C(v42);
      v10 = sub_19593CC(&v42, v12);
      *(v10 + 16) |= 1u;
      v11 = *(v10 + 72);
      if (v11)
      {
        goto LABEL_12;
      }
    }

    v13 = *(v10 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v11 = sub_16F5828(v14);
    *(v10 + 72) = v11;
LABEL_12:
    sub_EC6DFC(v7, v11, v6);
    v15 = *(v7 + 176);
    for (i = *(v7 + 184); v15 != i; v15 += 13)
    {
      v17 = *(v10 + 40);
      if (v17 && (v18 = *(v10 + 32), v18 < *v17))
      {
        *(v10 + 32) = v18 + 1;
        v19 = *&v17[2 * v18 + 2];
      }

      else
      {
        sub_1328C08(*(v10 + 24));
        v19 = sub_19593CC(v10 + 24, v20);
      }

      *&v6 = sub_11D7B6C(a2, v15, v19);
    }

    v21 = *(v7 + 200);
    for (j = *(v7 + 208); v21 != j; v21 += 13)
    {
      v23 = *(v10 + 64);
      if (v23 && (v24 = *(v10 + 56), v24 < *v23))
      {
        *(v10 + 56) = v24 + 1;
        v25 = *&v23[2 * v24 + 2];
      }

      else
      {
        sub_1328C08(*(v10 + 48));
        v25 = sub_19593CC(v10 + 48, v26);
      }

      *&v6 = sub_11D7B6C(a2, v21, v25);
    }

    v7 += 240;
  }

  if (v44)
  {
    v27 = v44 + 2;
  }

  else
  {
    v27 = 0;
  }

  if (v43)
  {
    v28 = &v27[2 * v43];
    do
    {
      v29 = *v27;
      v30 = *(*v27 + 32);
      v31 = *(*v27 + 40);
      if (v31)
      {
        v32 = v31 + 8;
      }

      else
      {
        v32 = 0;
      }

      if (v30)
      {
        v33 = 8 * v30;
        do
        {
          *&v39 = *(*v32 + 40);
          sub_11D65E4((a3 + 8), &v39);
          v32 += 8;
          v33 -= 8;
        }

        while (v33);
      }

      v34 = *(v29 + 56);
      v35 = *(v29 + 64);
      if (v35)
      {
        v36 = v35 + 8;
      }

      else
      {
        v36 = 0;
      }

      if (v34)
      {
        v37 = 8 * v34;
        do
        {
          *&v39 = *(*v36 + 40);
          sub_11D65E4((a3 + 8), &v39);
          v36 += 8;
          v37 -= 8;
        }

        while (v37);
      }

      v27 += 2;
    }

    while (v27 != v28);
  }

  sub_1957E24(v41, &v39);
  if (*(a3 + 71) < 0)
  {
    operator delete(*(a3 + 48));
  }

  *(a3 + 48) = v39;
  *(a3 + 64) = v40;
  return sub_131EBCC(v41);
}

void sub_11D7AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_131EBCC(va);
  _Unwind_Resume(a1);
}

void sub_11D7B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_131EBCC(va);
  _Unwind_Resume(a1);
}

void sub_11D7B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_131EBCC(va);
  _Unwind_Resume(a1);
}

void sub_11D7B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_131EBCC(va);
  _Unwind_Resume(a1);
}

void sub_11D7B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_131EBCC(va);
  _Unwind_Resume(a1);
}

void sub_11D7B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_131EBCC(va);
  _Unwind_Resume(a1);
}

float sub_11D7B6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_2B51D8(a1, a2[4]);
  v7 = (v5 - *v5);
  if (*v7 >= 0x1Du && (v8 = v7[14]) != 0)
  {
    v9 = *(v5 + v8);
    v10 = *(a3 + 16);
    *(a3 + 40) = v9;
    if (*(a2 + 43) != 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = *(a3 + 16);
    *(a3 + 40) = 0;
    if (*(a2 + 43) != 1)
    {
LABEL_4:
      v11 = v10 | 4;
      if (*(a2 + 41) != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    }
  }

  v25 = *(a2 + 42);
  if (v25 < 3)
  {
    v26 = v25 + 1;
  }

  else
  {
    v26 = 0;
  }

  v11 = v10 | 0xC;
  *(a3 + 48) = v26;
  if (*(a2 + 41) == 1)
  {
LABEL_5:
    if (*(a2 + 40))
    {
      v12 = 2 * (*(a2 + 40) == 1);
    }

    else
    {
      v12 = 1;
    }

    v11 |= 0x10u;
    *(a3 + 52) = v12;
  }

LABEL_9:
  *(a3 + 16) = v11 | 1;
  v13 = *(a3 + 24);
  if (!v13)
  {
    v14 = *(a3 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_16F5828(v15);
    *(a3 + 24) = v13;
  }

  sub_EC6DFC(a2 + 2, v13, v6);
  v16 = *a2;
  v17 = *(a3 + 16);
  v18 = a2[3];
  *(a3 + 16) = v17 | 0xC0;
  *(a3 + 60) = v16;
  *(a3 + 64) = v18;
  result = *(a2 + 18);
  if (result != 3.4028e38)
  {
    *(a3 + 16) = v17 | 0xC2;
    v20 = *(a3 + 32);
    if (!v20)
    {
      v21 = *(a3 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_1328B6C(v22);
      *(a3 + 32) = v20;
      result = *(a2 + 18);
    }

    *(v20 + 16) |= 1u;
    *(v20 + 48) = result;
    v23 = a2[10];
    for (i = a2[11]; v23 != i; v23 += 32)
    {
      v27 = *(v20 + 40);
      if (v27 && (v28 = *(v20 + 32), v28 < *v27))
      {
        *(v20 + 32) = v28 + 1;
        v29 = *&v27[2 * v28 + 2];
      }

      else
      {
        v30 = sub_1328AE4(*(v20 + 24));
        v29 = sub_19593CC(v20 + 24, v30);
      }

      *(v29 + 16) |= 1u;
      v31 = *(v29 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      sub_194EA1C((v29 + 24), v23, v32);
      result = *(v23 + 24);
      *(v29 + 16) |= 2u;
      *(v29 + 32) = result;
    }
  }

  return result;
}

void sub_11D7D8C()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27C4118 = 0u;
  unk_27C4128 = 0u;
  dword_27C4138 = 1065353216;
  sub_3A9A34(&xmmword_27C4118, v0);
  sub_3A9A34(&xmmword_27C4118, v3);
  sub_3A9A34(&xmmword_27C4118, __p);
  sub_3A9A34(&xmmword_27C4118, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_11D7F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27C4118);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

double sub_11D7FD4(uint64_t a1, char a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_11D7FF8@<X0>(unsigned __int8 **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_131A2D8(v204, 0, 0);
  *v201 = 0u;
  *__p = 0u;
  v203 = 1065353216;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    while (1)
    {
      for (i = *(v5 + 3); i; i = *i)
      {
        sub_DAF9C4(v201, i + 2);
      }

      v9 = *v5;
      if (v9 == 2)
      {
        v206 |= 4u;
        v7 = v212;
        if (!v212)
        {
          v11 = (v205 & 0xFFFFFFFFFFFFFFFCLL);
          if (v205)
          {
            v11 = *v11;
          }

          v7 = sub_13298C4(v11);
          v212 = v7;
        }
      }

      else if (v9 == 1)
      {
        v206 |= 2u;
        v7 = v211;
        if (!v211)
        {
          v12 = (v205 & 0xFFFFFFFFFFFFFFFCLL);
          if (v205)
          {
            v12 = *v12;
          }

          v7 = sub_13294F0(v12);
          v211 = v7;
        }
      }

      else
      {
        if (*v5)
        {
          goto LABEL_5;
        }

        v206 |= 1u;
        v7 = v210;
        if (!v210)
        {
          v10 = (v205 & 0xFFFFFFFFFFFFFFFCLL);
          if (v205)
          {
            v10 = *v10;
          }

          v7 = sub_1328D30(v10);
          v210 = v7;
        }
      }

      sub_225EEC4(v7, v5 + 6);
LABEL_5:
      v5 += 72;
      if (v5 == v6)
      {
        v13 = __p[0];
        if (!__p[0])
        {
          break;
        }

        v185 = a2;
LABEL_25:
        v14 = v13[2];
        if (v14 >= 0)
        {
          v15 = v13[2];
        }

        else
        {
          v15 = -v14;
        }

        v16 = sub_335D84(a2, v15);
        v17 = v16 > 0xFFFFFFFEFFFFFFFFLL;
        v18 = v16;
        if (!v16)
        {
          v17 = 1;
        }

        if (v16 > 0xFFFFFFFEFFFFFFFFLL)
        {
          v18 = 0;
        }

        v19 = v14 < 1 || v17;
        if (v19)
        {
          v20 = 0x1000000000000;
        }

        else
        {
          v20 = 0;
        }

        if (v17)
        {
          v21 = 0;
        }

        else
        {
          v21 = v16 & 0xFFFF00000000;
        }

        v22 = v21 | v18;
        v23 = sub_2B51D8(a2, v21 | v18);
        v24 = v23;
        if (v209 && (v25 = v208, v208 < *v209))
        {
          ++v208;
          v26 = *&v209[2 * v25 + 2];
          v27 = (v23 - *v23);
          if (*v27 < 0x1Du)
          {
            goto LABEL_44;
          }

LABEL_46:
          v28 = v27[14];
          if (v28)
          {
            v28 = *(v24 + v28);
          }
        }

        else
        {
          v29 = sub_1328A5C(v207);
          v26 = sub_19593CC(&v207, v29);
          v27 = (v24 - *v24);
          if (*v27 >= 0x1Du)
          {
            goto LABEL_46;
          }

LABEL_44:
          v28 = 0;
        }

        if (v19)
        {
          v28 = -v28;
        }

        *(v26 + 16) |= 4u;
        *(v26 + 40) = v28;
        v30 = (v24 - *v24);
        if (*v30 >= 0xDu && (v31 = v30[6]) != 0)
        {
          v32 = 4 * *(v24 + v31);
        }

        else
        {
          v32 = 0;
        }

        v33 = sub_2AF704(a2 + 3896, 1u, 0);
        v34 = &v33[-*v33];
        if (*v34 < 0xBu)
        {
          v35 = 0;
        }

        else
        {
          v35 = *(v34 + 5);
          if (v35)
          {
            v35 += &v33[*&v33[v35]];
          }
        }

        v36 = (v35 + v32 + 4 + *(v35 + v32 + 4));
        v37 = (v36 - *v36);
        if (*v37 >= 5u && (v38 = v37[2]) != 0)
        {
          v39 = (v36 + v38);
          v40 = *v39;
          v41 = *(v39 + v40);
          if (v41 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v214) = *(v39 + v40);
          if (v41)
          {
            memcpy(&__dst, v39 + v40 + 4, v41);
          }

          p_dst = (&__dst + v41);
        }

        else
        {
          HIBYTE(v214) = 0;
          p_dst = &__dst;
        }

        *p_dst = 0;
        *(v26 + 16) |= 1u;
        v43 = *(v26 + 8);
        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43)
        {
          v44 = *v44;
        }

        sub_194EA30((v26 + 24), &__dst, v44);
        if (SHIBYTE(v214) < 0)
        {
          operator delete(__dst);
        }

        sub_2B7A20(a2, v22 | v20, &__dst);
        v195 = v215 == 0;
        v197 = v26;
        v186 = v13;
        if (v215)
        {
          if (*(&__dst + 1) != v214)
          {
            v45 = *(v214 - 1);
            v46 = sub_2B4D24(__dst, v45, 0);
            v47 = &v46[*&v46[-*v46 + 4]];
            v48 = &v47[4 * HIDWORD(v45) + *v47];
            v49 = (v48 + 4 + *(v48 + 4));
            v50 = (v49 + *(v49 - *v49 + 6));
            v51 = *(v50 + *v50);
            v199 = ((v214 - *(&__dst + 1)) >> 3) - 1;
            v52 = *(*(&__dst + 1) + 8 * v199);
            v191 = __dst;
            v53 = sub_2B4D24(__dst, v52, 0);
            v54 = &v53[-*v53];
            v55 = *v54;
            if (v55 >= 7)
            {
              if (*(v54 + 3))
              {
                v56 = *&v53[*(v54 + 3)];
              }

              else
              {
                v56 = 0;
              }

              goto LABEL_91;
            }

            v56 = 0;
            if (v55 >= 5)
            {
LABEL_91:
              v68 = *(v54 + 2);
              if (v68)
              {
                v68 += &v53[*&v53[v68]];
              }
            }

            else
            {
              v68 = 0;
            }

            v62 = v51 - 1;
            v63 = (v68 + 4 * HIDWORD(v52) + 4 + *(v68 + 4 * HIDWORD(v52) + 4));
            v70 = &v63[-*v63];
            v189 = v56;
            if (*v70 < 7u || (v71 = *(v70 + 3)) == 0)
            {
              v61 = 0;
              v195 = 0;
              v200 = v52;
              v64 = &__dst + 8;
              v65 = *(&__dst + 1);
              v66 = v214;
              if (!v215)
              {
                goto LABEL_96;
              }

LABEL_81:
              if (v65 == v66)
              {
                LODWORD(v67) = 0;
              }

              else
              {
                LODWORD(v67) = -1;
              }

              v190 = v67;
              if (v199 != v67)
              {
LABEL_101:
                v196 = (v191 + 136);
                v192 = (v191 + 160);
                v193 = v64;
                v187 = v191 + 16;
                v188 = (v191 + 184);
                v194 = v67;
                while (1)
                {
                  v78 = v61 + 4;
                  v79 = &v61[4 * v62 + 4];
                  v80 = *v79;
                  v81 = *(v79 + 1);
                  v82 = sub_57A90(v200);
                  v83 = v200 & ~(-1 << (v82 & 0xFE));
                  v84 = sub_581D8(v83);
                  v85 = sub_581D8(v83 >> 1);
                  v86 = &v63[-*v63];
                  v87 = *v86;
                  v198 = v62;
                  if (v87 < 0xD)
                  {
                    if (v87 < 0xB)
                    {
                      goto LABEL_111;
                    }
                  }

                  else if (v86[6])
                  {
                    v88 = *&v63[4 * v62 + 4 + v86[6] + *&v63[v86[6]]];
                    goto LABEL_112;
                  }

                  if (!v86[5] || (v89 = *&v63[2 * v62 + 4 + v86[5] + *&v63[v86[5]]], v89 == 0xFFFF))
                  {
LABEL_111:
                    v88 = 0x7FFFFFFF;
                    goto LABEL_112;
                  }

                  v90 = v86[4];
                  if (v90)
                  {
                    LODWORD(v90) = *&v63[v90];
                  }

                  v88 = v189 + v89 + v90;
LABEL_112:
                  if (v82 >= 2)
                  {
                    v91 = 1 << -(v82 >> 1);
                  }

                  else
                  {
                    v91 = -2;
                  }

                  if ((v85 * v91 + 4 * v81) >= 0xFFFFFFFE)
                  {
                    v92 = -2;
                  }

                  else
                  {
                    v92 = v85 * v91 + 4 * v81;
                  }

                  *(v197 + 16) |= 2u;
                  v93 = *(v197 + 32);
                  if (v93)
                  {
                    v94 = *(v93 + 32);
                    if (!v94)
                    {
                      goto LABEL_126;
                    }
                  }

                  else
                  {
                    v95 = *(v197 + 8);
                    v96 = (v95 & 0xFFFFFFFFFFFFFFFCLL);
                    if (v95)
                    {
                      v96 = *v96;
                    }

                    v93 = sub_13289BC(v96);
                    *(v197 + 32) = v93;
                    v94 = *(v93 + 32);
                    if (!v94)
                    {
LABEL_126:
                      v99 = sub_16F5828(*(v93 + 16));
                      v98 = sub_19593CC(v93 + 16, v99);
                      goto LABEL_127;
                    }
                  }

                  v97 = *(v93 + 24);
                  if (v97 >= *v94)
                  {
                    goto LABEL_126;
                  }

                  *(v93 + 24) = v97 + 1;
                  v98 = *&v94[2 * v97 + 2];
LABEL_127:
                  v100 = exp(v92 * -6.28318531 / 4294967300.0 + 3.14159265);
                  v101 = atan((v100 + -1.0 / v100) * 0.5);
                  v102 = *(v98 + 40);
                  *(v98 + 48) = v101 * 57.2957795;
                  *(v98 + 56) = (v84 * v91 + 4 * v80) * 360.0 / 4294967300.0 + -180.0;
                  *(v98 + 40) = v102 | 7;
                  *(v98 + 64) = v88 / 100.0;
                  v103 = *v61;
                  if (!v195)
                  {
                    v62 = v198 - 1;
                    if (v198 - 1 >= v103)
                    {
                      v113 = v193;
                      v114 = *v193;
                      v116 = v191;
                      v112 = (v191 + 112);
                      v137 = (v199 - 1);
                      if (v137 < (v193[1] - *v193) >> 3)
                      {
                        goto LABEL_177;
                      }

                      goto LABEL_214;
                    }

                    v111 = &v78[4 * v62];
                    if (*v79 != *v111 || (v112 = (v191 + 112), *(v79 + 1) != *(v111 + 1)) || (v113 = v193, v114 = *v193, v115 = v193[1] - *v193, v116 = v191, v103 == 2) && v115 == 8)
                    {
LABEL_140:
                      v110 = v199;
                      goto LABEL_215;
                    }

                    v62 = v198 - 2;
                    v137 = (v199 - 1);
                    if (v137 >= v115 >> 3)
                    {
                      goto LABEL_214;
                    }

LABEL_177:
                    while (2)
                    {
                      v138 = *(v114 + 8 * v137);
                      v218 = 0;
                      v219 = v138;
                      v216 = &v218;
                      v217 = &v219;
                      v139 = v116[482] + 1;
                      v116[482] = v139;
                      if (!*v116)
                      {
                        exception = __cxa_allocate_exception(0x40uLL);
                        v222 = *v217;
                        v220 = sub_7FCF0(1u);
                        v221 = v165;
                        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v220, &v223);
                        if ((v225 & 0x80u) == 0)
                        {
                          v166 = &v223;
                        }

                        else
                        {
                          v166 = v223;
                        }

                        if ((v225 & 0x80u) == 0)
                        {
                          v167 = v225;
                        }

                        else
                        {
                          v167 = v224;
                        }

                        v168 = sub_2D390(exception, v166, v167);
                      }

                      v140 = v112;
                      if (*v112 == v138 || (v140 = (v191 + 136), *v196 == v138) || (v140 = (v191 + 160), *v192 == v138) || (v140 = (v191 + 184), *v188 == v138))
                      {
                        ++v116[483];
                        *(v140 + 1) = v139;
                        v141 = *(v140 + 2);
                        if (!v141)
                        {
                          v174 = __cxa_allocate_exception(0x40uLL);
                          v222 = *v217;
                          v220 = sub_7FCF0(1u);
                          v221 = v175;
                          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v220, &v223);
                          if ((v225 & 0x80u) == 0)
                          {
                            v176 = &v223;
                          }

                          else
                          {
                            v176 = v223;
                          }

                          if ((v225 & 0x80u) == 0)
                          {
                            v177 = v225;
                          }

                          else
                          {
                            v177 = v224;
                          }

                          v178 = sub_2D390(v174, v176, v177);
                        }

                        goto LABEL_183;
                      }

                      v146 = v116[21];
                      v147 = v116[18];
                      v148 = v116[15];
                      v149 = v116[24];
                      v141 = sub_2D52A4(*v116, 1, v138, 1);
                      if (v148 >= v139)
                      {
                        v150 = v139;
                      }

                      else
                      {
                        v150 = v148;
                      }

                      v151 = v147 >= v150;
                      if (v147 < v150)
                      {
                        v150 = v147;
                      }

                      v152 = 4 * (v148 < v139);
                      if (!v151)
                      {
                        v152 = 5;
                      }

                      if (v146 < v150)
                      {
                        v152 = 6;
                        v150 = v146;
                      }

                      if (v149 < v150)
                      {
                        v152 = 7;
                      }

                      v153 = v187 + 24 * v152;
                      *v153 = v219;
                      *(v153 + 8) = v116[482];
                      *(v153 + 16) = v141;
                      v113 = v193;
                      v112 = (v191 + 112);
                      if (v141)
                      {
LABEL_183:
                        v142 = (v141 + *v141);
                        v143 = (v142 - *v142);
                        v144 = *v143;
                        if (v144 < 7)
                        {
                          goto LABEL_200;
                        }
                      }

                      else
                      {
                        sub_2B572C(&v216);
                        v142 = 0;
                        v113 = v193;
                        v112 = (v191 + 112);
                        v143 = (&loc_1120530 + 1);
                        v144 = *(&loc_1120530 + 1);
                        if (*(&loc_1120530 + 1) < 7u)
                        {
LABEL_200:
                          v145 = 0;
                          if (v144 >= 5)
                          {
                            goto LABEL_201;
                          }

                          goto LABEL_203;
                        }
                      }

                      if (v143[3])
                      {
                        v145 = *(v142 + v143[3]);
                      }

                      else
                      {
                        v145 = 0;
                      }

LABEL_201:
                      v154 = v143[2];
                      if (v154)
                      {
                        v155 = v142 + v154 + *(v142 + v154);
                      }

                      else
                      {
LABEL_203:
                        v155 = 0;
                      }

                      v63 = &v155[4 * HIDWORD(v138) + 4 + *&v155[4 * HIDWORD(v138) + 4]];
                      if (*&v63[-*v63 + 6])
                      {
                        v156 = &v63[*&v63[-*v63 + 6]];
                        v61 = &v156[*v156];
                      }

                      else
                      {
                        v61 = 0;
                      }

                      v62 = *v61 - 2;
                      v157 = &v61[4 * (*v61 - 1) + 4];
                      v158 = &v61[4 * v62 + 4];
                      if (*v157 != *v158 || *(v157 + 1) != *(v158 + 1))
                      {
                        v189 = v145;
LABEL_213:
                        v200 = v138;
LABEL_214:
                        v110 = v137;
                        goto LABEL_215;
                      }

                      v137 = (v137 - 1);
                      v114 = *v113;
                      if (v137 >= (v113[1] - *v113) >> 3)
                      {
                        v189 = v145;
                        v62 = *v61 - 3;
                        goto LABEL_213;
                      }

                      continue;
                    }
                  }

                  v62 = v198 + 1;
                  if (v198 + 1 >= v103)
                  {
                    v106 = v193;
                    v107 = *v193;
                    v109 = v191;
                    v105 = (v191 + 112);
                    v110 = (v199 + 1);
                    if (v110 < (v193[1] - *v193) >> 3)
                    {
                      goto LABEL_142;
                    }

                    goto LABEL_215;
                  }

                  v104 = &v78[4 * v62];
                  if (*v79 != *v104)
                  {
                    goto LABEL_140;
                  }

                  v105 = (v191 + 112);
                  if (*(v79 + 1) != *(v104 + 1))
                  {
                    goto LABEL_140;
                  }

                  v106 = v193;
                  v107 = *v193;
                  v108 = v193[1] - *v193;
                  v109 = v191;
                  v110 = v199;
                  if (v103 == 2 && v108 == 8)
                  {
                    goto LABEL_215;
                  }

                  v62 = v198 + 2;
                  v110 = (v199 + 1);
                  if (v110 >= v108 >> 3)
                  {
                    goto LABEL_215;
                  }

                  while (1)
                  {
LABEL_142:
                    v117 = *(v107 + 8 * v110);
                    v218 = 0;
                    v219 = v117;
                    v216 = &v218;
                    v217 = &v219;
                    v118 = v109[482] + 1;
                    v109[482] = v118;
                    if (!*v109)
                    {
                      v169 = __cxa_allocate_exception(0x40uLL);
                      v222 = *v217;
                      v220 = sub_7FCF0(1u);
                      v221 = v170;
                      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v220, &v223);
                      if ((v225 & 0x80u) == 0)
                      {
                        v171 = &v223;
                      }

                      else
                      {
                        v171 = v223;
                      }

                      if ((v225 & 0x80u) == 0)
                      {
                        v172 = v225;
                      }

                      else
                      {
                        v172 = v224;
                      }

                      v173 = sub_2D390(v169, v171, v172);
                    }

                    v119 = v105;
                    if (*v105 == v117 || (v119 = (v191 + 136), *v196 == v117) || (v119 = (v191 + 160), *v192 == v117) || (v119 = (v191 + 184), *v188 == v117))
                    {
                      ++v109[483];
                      *(v119 + 1) = v118;
                      v120 = *(v119 + 2);
                      if (!v120)
                      {
                        v179 = __cxa_allocate_exception(0x40uLL);
                        v222 = *v217;
                        v220 = sub_7FCF0(1u);
                        v221 = v180;
                        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v220, &v223);
                        if ((v225 & 0x80u) == 0)
                        {
                          v181 = &v223;
                        }

                        else
                        {
                          v181 = v223;
                        }

                        if ((v225 & 0x80u) == 0)
                        {
                          v182 = v225;
                        }

                        else
                        {
                          v182 = v224;
                        }

                        v183 = sub_2D390(v179, v181, v182);
                      }

LABEL_148:
                      v121 = (v120 + *v120);
                      v122 = (v121 - *v121);
                      v123 = *v122;
                      if (v123 < 7)
                      {
                        goto LABEL_165;
                      }

                      goto LABEL_149;
                    }

                    v125 = v117;
                    v126 = v109[21];
                    v127 = v109[18];
                    v128 = v109[15];
                    v129 = v109[24];
                    v120 = sub_2D52A4(*v109, 1, v117, 1);
                    if (v128 >= v118)
                    {
                      v130 = v118;
                    }

                    else
                    {
                      v130 = v128;
                    }

                    v131 = v127 >= v130;
                    if (v127 < v130)
                    {
                      v130 = v127;
                    }

                    v132 = 4 * (v128 < v118);
                    if (!v131)
                    {
                      v132 = 5;
                    }

                    if (v126 < v130)
                    {
                      v132 = 6;
                      v130 = v126;
                    }

                    if (v129 < v130)
                    {
                      v132 = 7;
                    }

                    v133 = v187 + 24 * v132;
                    *v133 = v219;
                    *(v133 + 8) = v109[482];
                    *(v133 + 16) = v120;
                    v106 = v193;
                    v105 = (v191 + 112);
                    v117 = v125;
                    if (v120)
                    {
                      goto LABEL_148;
                    }

                    sub_2B572C(&v216);
                    v121 = 0;
                    v106 = v193;
                    v105 = (v191 + 112);
                    v117 = v125;
                    v122 = (&loc_1120530 + 1);
                    v123 = *(&loc_1120530 + 1);
                    if (*(&loc_1120530 + 1) < 7u)
                    {
LABEL_165:
                      v124 = 0;
                      if (v123 < 5)
                      {
                        goto LABEL_168;
                      }

                      goto LABEL_166;
                    }

LABEL_149:
                    v124 = v122[3] ? *(v121 + v122[3]) : 0;
LABEL_166:
                    v134 = v122[2];
                    if (v134)
                    {
                      v135 = v121 + v134 + *(v121 + v134);
                      goto LABEL_169;
                    }

LABEL_168:
                    v135 = 0;
LABEL_169:
                    v63 = &v135[4 * HIDWORD(v117) + 4 + *&v135[4 * HIDWORD(v117) + 4]];
                    if (!*&v63[-*v63 + 6])
                    {
                      break;
                    }

                    v136 = *&v63[-*v63 + 6];
                    v61 = &v63[v136 + *&v63[v136]];
                    if (*(v61 + 2) != *(v61 + 4) || *(v61 + 3) != *(v61 + 5))
                    {
                      goto LABEL_211;
                    }

                    v110 = (v110 + 1);
                    v107 = *v106;
                    if (v110 >= (v106[1] - *v106) >> 3)
                    {
                      v200 = v117;
                      v189 = v124;
                      v62 = 2;
                      goto LABEL_215;
                    }
                  }

                  v61 = 0;
LABEL_211:
                  v200 = v117;
                  v189 = v124;
                  v62 = 1;
LABEL_215:
                  v199 = v110;
                  if (v110 == v194 && v62 == v190)
                  {
                    v65 = *(&__dst + 1);
                    a2 = v185;
LABEL_220:
                    if (v65)
                    {
                      v214 = v65;
                      operator delete(v65);
                    }

                    v13 = *v186;
                    if (!*v186)
                    {
                      goto LABEL_234;
                    }

                    goto LABEL_25;
                  }
                }
              }

LABEL_100:
              if (v62 == v190)
              {
                goto LABEL_220;
              }

              goto LABEL_101;
            }

LABEL_228:
            v61 = &v63[v71 + *&v63[v71]];
            v200 = v52;
            v64 = &__dst + 8;
            v65 = *(&__dst + 1);
            v66 = v214;
            if (v215)
            {
              goto LABEL_81;
            }

            goto LABEL_96;
          }

LABEL_80:
          v61 = 0;
          v199 = 0;
          v200 = 0;
          v189 = 0;
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v191 = 0;
          v195 = 1;
          v65 = *(&__dst + 1);
          v66 = v214;
          if (!v215)
          {
            goto LABEL_96;
          }

          goto LABEL_81;
        }

        if (*(&__dst + 1) == v214)
        {
          goto LABEL_80;
        }

        v52 = **(&__dst + 1);
        v191 = __dst;
        v57 = sub_2B4D24(__dst, **(&__dst + 1), 0);
        v58 = &v57[-*v57];
        v59 = *v58;
        if (v59 >= 7)
        {
          if (*(v58 + 3))
          {
            v60 = *&v57[*(v58 + 3)];
          }

          else
          {
            v60 = 0;
          }

          goto LABEL_223;
        }

        v60 = 0;
        if (v59 >= 5)
        {
LABEL_223:
          v69 = *(v58 + 2);
          if (v69)
          {
            v69 += &v57[*&v57[v69]];
          }
        }

        else
        {
          v69 = 0;
        }

        v63 = (v69 + 4 * HIDWORD(v52) + 4 + *(v69 + 4 * HIDWORD(v52) + 4));
        v159 = &v63[-*v63];
        v189 = v60;
        if (*v159 < 7u)
        {
          v61 = 0;
          v62 = 0;
          v195 = 1;
          v199 = 0;
          v200 = v52;
          v64 = &__dst + 8;
          v65 = *(&__dst + 1);
          v66 = v214;
          if (v215)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v71 = *(v159 + 3);
          v199 = 0;
          if (v71)
          {
            v62 = 0;
            goto LABEL_228;
          }

          v61 = 0;
          v195 = 1;
          v200 = v52;
          v62 = 0;
          v64 = &__dst + 8;
          v65 = *(&__dst + 1);
          v66 = v214;
          if (v215)
          {
            goto LABEL_81;
          }
        }

LABEL_96:
        if (v65 == v66)
        {
          LODWORD(v67) = 0;
          v190 = 0;
          if (v199)
          {
            goto LABEL_101;
          }
        }

        else
        {
          v72 = *(v66 - 1);
          v73 = sub_2B4D24(__dst, v72, 0);
          v74 = &v73[*&v73[-*v73 + 4]];
          v75 = &v74[4 * HIDWORD(v72) + *v74];
          v76 = (v75 + 4 + *(v75 + 4));
          v65 = *(&__dst + 1);
          v77 = (v76 + *(v76 - *v76 + 6));
          v190 = *(v77 + *v77);
          v67 = (v214 - *(&__dst + 1)) >> 3;
          if (v199 != v67)
          {
            goto LABEL_101;
          }
        }

        goto LABEL_100;
      }
    }
  }

LABEL_234:
  sub_1957E24(v204, a3);
  v160 = __p[0];
  if (__p[0])
  {
    do
    {
      v161 = *v160;
      operator delete(v160);
      v160 = v161;
    }

    while (v161);
  }

  v162 = v201[0];
  v201[0] = 0;
  if (v162)
  {
    operator delete(v162);
  }

  return sub_131A40C(v204);
}

void sub_11D91DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_11BD8(&a27);
  sub_131A40C(&a33);
  _Unwind_Resume(a1);
}

void sub_11D92A8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    sub_11D937C(a1, a2);
    a1[1] = v10;
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(v3 + 8) = v4;
    *(v3 + 16) = v5;
    *(a2 + 16) = 0;
    v6 = *(a2 + 24);
    *(v3 + 24) = v6;
    v7 = *(a2 + 32);
    *(v3 + 32) = v7;
    *(v3 + 40) = *(a2 + 40);
    if (v7)
    {
      v8 = *(v6 + 8);
      v9 = *(v3 + 16);
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

      *(v4 + 8 * v8) = v3 + 24;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
    }

    v11 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 48) = v11;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    a1[1] = v3 + 72;
  }
}

double sub_11D937C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *(&v16 + 1) = 0;
  *v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 8) = v7;
  *(v6 + 16) = v8;
  v9 = *(a2 + 24);
  *&dword_18[18 * v2] = v9;
  v10 = *(a2 + 32);
  *(v6 + 32) = v10;
  *(v6 + 40) = *(a2 + 40);
  if (v10)
  {
    v11 = *(v9 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v11 >= v8)
      {
        v11 %= v8;
      }
    }

    else
    {
      v11 &= v8 - 1;
    }

    *(v7 + 8 * v11) = 72 * v2 + 24;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
  }

  *&stru_20.segname[72 * v2 + 8] = *(a2 + 48);
  *(&stru_20.vmsize + 9 * v2) = *(a2 + 64);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *&v16 = v6 + 72;
  v12 = a1[1];
  v13 = v6 + *a1 - v12;
  sub_11D9548(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  result = *&v16;
  *(a1 + 1) = v16;
  if (v14)
  {
    operator delete(v14);
    return *&v16;
  }

  return result;
}

void sub_11D9534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_11D967C(va);
  _Unwind_Resume(a1);
}

void sub_11D9548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v9 = a2 + v6;
      v10 = a4 + v6;
      *v10 = *(a2 + v6);
      v11 = *(a2 + v6 + 8);
      v12 = *(a2 + v6 + 16);
      *(v9 + 8) = 0;
      *(v10 + 8) = v11;
      *(v10 + 16) = v12;
      *(v9 + 16) = 0;
      v13 = *(a2 + v6 + 24);
      *(a4 + v6 + 24) = v13;
      v14 = *(a2 + v6 + 32);
      *(v10 + 32) = v14;
      *(v10 + 40) = *(a2 + v6 + 40);
      if (v14)
      {
        v7 = *(v13 + 8);
        v15 = *(v10 + 16);
        if ((v15 & (v15 - 1)) != 0)
        {
          if (v7 >= v15)
          {
            v7 %= v15;
          }
        }

        else
        {
          v7 &= v15 - 1;
        }

        *(v11 + 8 * v7) = a4 + v6 + 24;
        *(a2 + v6 + 24) = 0;
        *(a2 + v6 + 32) = 0;
      }

      v8 = *(v9 + 48);
      *(v10 + 64) = *(v9 + 64);
      *(v10 + 48) = v8;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 48) = 0;
      v6 += 72;
    }

    while (a2 + v6 != a3);
    while (1)
    {
      if (v5 == a3)
      {
        return;
      }

      if (*(v5 + 71) < 0)
      {
        operator delete(*(v5 + 48));
        v16 = *(v5 + 24);
        if (v16)
        {
          do
          {
LABEL_14:
            v17 = *v16;
            operator delete(v16);
            v16 = v17;
          }

          while (v17);
        }
      }

      else
      {
        v16 = *(v5 + 24);
        if (v16)
        {
          goto LABEL_14;
        }
      }

      v18 = *(v5 + 8);
      *(v5 + 8) = 0;
      if (v18)
      {
        operator delete(v18);
      }

      v5 += 72;
    }
  }
}

void **sub_11D967C(void **a1)
{
  sub_11D96B0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_11D96B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      v4 = *(i - 48);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = *(i - 48);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
LABEL_7:
    v6 = *(i - 64);
    *(i - 64) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }
}

uint64_t sub_11D9744(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_3B767C(a2) & 1) != 0 || sub_E81BBC(a1) && (sub_3B6AFC(a2) & 1) != 0 || sub_E81B98(a1) && (sub_3B6DDC(a2) & 1) != 0 || sub_E816E4(a1) && (sub_3B739C(a2) & 1) != 0 || sub_E81BE0(a1) && sub_3B70BC(a2))
  {
    operator new();
  }

  v6 = sub_74700();
  sub_E893A4(a1);
  nullsub_1(v6);
  sub_E82FC4(a1);
  nullsub_1(v6);
  sub_E85C1C(a1);
  nullsub_1(v6);
  v7 = sub_E7A5E0(a1);
  v8 = v7;
  v9 = *(a1 + 336);
  if (!v9)
  {
    v9 = &off_2772E28;
  }

  v10 = *(v9 + 32);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      if ((v7 - 3) >= 2)
      {
        if (v7 == 8)
        {

          sub_E2CC3C();
        }

        if (v7 != 12)
        {

          sub_E39D24();
        }
      }

      v15 = *(a3 + 24);
      if (v15)
      {
        if (v15 == a3)
        {
          v30 = v29;
          (*(*v15 + 24))(v15, v29);
        }

        else
        {
          v30 = (*(*v15 + 16))(v15);
        }
      }

      else
      {
        v30 = 0;
      }

      sub_E006D0();
    }

    if (v10 != 3)
    {
LABEL_27:
      operator new();
    }

    if (sub_E85BB8(a1))
    {
      sub_11FD59C(&__p, 0, 0);
      sub_194DB28(&__p, *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL);
      v12 = v28;
      if (!v28)
      {
        v12 = &off_27344E8;
      }

      if ((v12[2] & 0x40) == 0)
      {
        v13 = 11;
        goto LABEL_47;
      }

      v17 = *(v12 + 31);
      if (v17 <= 6)
      {
        v18 = &unk_22B0FDC;
        goto LABEL_46;
      }

      sub_11FD994(&__p);
    }

    if (v8 == 3 || v8 == 12)
    {
      v20 = *(a3 + 24);
      if (v20)
      {
        if (v20 == a3)
        {
          v34 = v33;
          (*(*v20 + 24))(v20, v33);
        }

        else
        {
          v34 = (*(*v20 + 16))(v20);
        }
      }

      else
      {
        v34 = 0;
      }

      sub_DFBDB4();
    }

    v21 = *(a3 + 24);
    if (v21)
    {
      if (v21 == a3)
      {
        v46 = v45;
        (*(*v21 + 24))(v21, v45);
      }

      else
      {
        v46 = (*(*v21 + 16))(v21);
      }
    }

    else
    {
      v46 = 0;
    }

    sub_D63428();
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v11 = *(a3 + 24);
      if (v11)
      {
        if (v11 == a3)
        {
          v42 = v41;
          (*(*v11 + 24))(v11, v41);
        }

        else
        {
          v42 = (*(*v11 + 16))(v11);
        }
      }

      else
      {
        v42 = 0;
      }

      sub_E1F278();
    }

    goto LABEL_27;
  }

  if (sub_E7A55C(a1))
  {
    nullsub_1(v6);
    v14 = *(a3 + 24);
    if (v14)
    {
      if (v14 == a3)
      {
        v44 = v43;
        (*(*v14 + 24))(v14, v43);
      }

      else
      {
        v44 = (*(*v14 + 16))(v14);
      }
    }

    else
    {
      v44 = 0;
    }

    sub_DC22FC();
  }

  if (sub_E85BB8(a1))
  {
    sub_11FD59C(&__p, 0, 0);
    sub_194DB28(&__p, *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL);
    v16 = v28;
    if (!v28)
    {
      v16 = &off_27344E8;
    }

    v17 = *(v16 + 31);
    if (v17 < 7)
    {
      v18 = &unk_22B0FC0;
LABEL_46:
      v13 = v18[v17];
LABEL_47:
      sub_11FD994(&__p);
      v19 = *(a3 + 24);
      if (v13 != 11)
      {
        if (v13 == 12)
        {
          if (v19)
          {
            if (v19 == a3)
            {
              v38 = v37;
              (*(*v19 + 24))(v19, v37);
            }

            else
            {
              v38 = (*(*v19 + 16))(v19);
            }
          }

          else
          {
            v38 = 0;
          }

          sub_DF20DC();
        }

        if (v19)
        {
          if (v19 == a3)
          {
            v36 = v35;
            (*(*v19 + 24))(v19, v35);
          }

          else
          {
            v36 = (*(*v19 + 16))(v19);
          }
        }

        else
        {
          v36 = 0;
        }

        sub_DF2A44();
      }

      if (v19)
      {
        if (v19 == a3)
        {
          v40 = v39;
          (*(*v19 + 24))(v19, v39);
        }

        else
        {
          v40 = (*(*v19 + 16))(v19);
        }
      }

      else
      {
        v40 = 0;
      }

      sub_DF16D8();
    }

    sub_11FD994(&__p);
  }

  if (v8 == 3 || v8 == 12)
  {
    v22 = *(a3 + 24);
    if (v22)
    {
      if (v22 == a3)
      {
        v32 = v31;
        (*(*v22 + 24))(v22, v31);
      }

      else
      {
        v32 = (*(*v22 + 16))(v22);
      }
    }

    else
    {
      v32 = 0;
    }

    sub_DFE290();
  }

  if (sub_E7A58C(a1))
  {
    nullsub_1(v6);
  }

  v23 = *(a3 + 24);
  if (v23)
  {
    if (v23 == a3)
    {
      v48 = v47;
      (*(*v23 + 24))(v23, v47);
    }

    else
    {
      v48 = (*(*v23 + 16))(v23);
    }
  }

  else
  {
    v48 = 0;
  }

  sub_D8C630(a1, a2, v47);
  result = v48;
  if (v48 == v47)
  {
    return (*(*v48 + 32))(v48, v24, v25);
  }

  if (v48)
  {
    return (*(*v48 + 40))(v48);
  }

  return result;
}

void sub_11DA250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_11FD994(va);
  _Unwind_Resume(a1);
}

void sub_11DA278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_11FD994(va);
  _Unwind_Resume(a1);
}

void sub_11DA2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_11DA2EC(uint64_t a1, uint64_t a2)
{
  if (!sub_7E7E4(1u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v11);
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  sub_4A5C(&v11, v4, v5);
  if ((v21 & 0x10) != 0)
  {
    v7 = v20;
    if (v20 < v17)
    {
      v20 = v17;
      v7 = v17;
    }

    v8 = v16;
    v6 = v7 - v16;
    if (v7 - v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v21 & 8) == 0)
    {
      v6 = 0;
      v10 = 0;
LABEL_19:
      *(&__dst + v6) = 0;
      sub_7E854(&__dst, 1u);
      if (v10 < 0)
      {
        operator delete(__dst);
      }

      if (v19 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v13);
      std::ostream::~ostream();
      std::ios::~ios();
LABEL_24:
      operator new();
    }

    v8 = v14;
    v6 = v15 - v14;
    if ((v15 - v14) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  v10 = v6;
  if (v6)
  {
    memmove(&__dst, v8, v6);
  }

  goto LABEL_19;
}

void sub_11DA95C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_11DA978(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_11DAA04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_3B767C(a2) & 1) == 0 && (!sub_E81C04(a1) || !sub_3B6DDC(a2)))
  {
    v6 = sub_74700();
    sub_E82FAC(a1);
    nullsub_1(v6);
    sub_E83004(a1);
    nullsub_1(v6);
    v7 = *(a1 + 312);
    if (!v7)
    {
      v7 = &off_2772E28;
    }

    if (*(v7 + 32))
    {
      operator new();
    }

    v8 = sub_E85B04(a1);
    v9 = *(a3 + 24);
    if (v8)
    {
      if (v9)
      {
        if (v9 == a3)
        {
          v11 = v10;
          (*(*v9 + 24))(v9, v10);
        }

        else
        {
          v11 = (*(*v9 + 16))(v9);
        }
      }

      else
      {
        v11 = 0;
      }

      sub_DC7DB4();
    }

    if (v9)
    {
      if (v9 == a3)
      {
        v13 = v12;
        (*(*v9 + 24))(v9, v12);
      }

      else
      {
        v13 = (*(*v9 + 16))(v9);
      }
    }

    else
    {
      v13 = 0;
    }

    sub_DB0E74();
  }

  operator new();
}

void sub_11DAD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_11DB210(va);
  _Unwind_Resume(a1);
}

void sub_11DAD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_11DB210(va);
  _Unwind_Resume(a1);
}

void sub_11DAD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_11DAD74(uint64_t a1, uint64_t a2)
{
  if (!sub_7E7E4(1u))
  {
    goto LABEL_30;
  }

  sub_19594F8(&v16);
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = sub_4A5C(&v16, v4, v5);
  v7 = sub_4A5C(v6, ": ", 2);
  v8 = sub_74700();
  v9 = sub_73F1C(v8);
  v10 = *(v9 + 23);
  if (v10 >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = *v9;
  }

  if (v10 >= 0)
  {
    v12 = *(v9 + 23);
  }

  else
  {
    v12 = *(v9 + 8);
  }

  sub_4A5C(v7, v11, v12);
  if ((v26 & 0x10) != 0)
  {
    v14 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v14 = v22;
    }

    v15 = __src;
    v13 = v14 - __src;
    if (v14 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v13 = 0;
      v28 = 0;
LABEL_25:
      *(&__dst + v13) = 0;
      sub_7E854(&__dst, 1u);
      if (v28 < 0)
      {
        operator delete(__dst);
      }

      if (v24 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v18);
      std::ostream::~ostream();
      std::ios::~ios();
LABEL_30:
      operator new();
    }

    v15 = v19;
    v13 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_32:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  v28 = v13;
  if (v13)
  {
    memmove(&__dst, v15, v13);
  }

  goto LABEL_25;
}

void sub_11DB17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_11DB210(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_11DB29C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (sub_3B767C(a2))
  {
    operator new();
  }

  v5 = sub_74700();
  sub_E82FA0(a1);
  nullsub_1(v5);
  sub_E82FE4(a1);
  nullsub_1(v5);
  v6 = sub_E81ED4(a1);
  v7 = sub_E81E8C(a1);
  v8 = sub_E81F00(a1);
  v9 = v7 + v6 + v8 + sub_E81708(a1);
  if (*(a1 + 112))
  {
    v10 = 0;
    v11 = v9 == 1 && v6;
  }

  else
  {
    v10 = (*(a1 + 42) & 2) == 0;
    v11 = v9 == 1 && v6;
    if ((*(a1 + 42) & 2) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v11)
  {
    v12 = *(a3 + 24);
    if (v12)
    {
      if (v12 == a3)
      {
        v23 = v22;
        (*(*v12 + 24))(v12, v22);
      }

      else
      {
        v23 = (*(*v12 + 16))(v12);
      }
    }

    else
    {
      v23 = 0;
    }

    sub_D82F94();
  }

LABEL_15:
  v13 = v7 ^ 1;
  if (v9 != 1)
  {
    v13 = 1;
  }

  if ((v10 | v13) == 1)
  {
    if (!v9)
    {
      operator new();
    }

    v14 = *(a3 + 24);
    if (v14)
    {
      if (v14 == a3)
      {
        v21 = v20;
        (*(*v14 + 24))(v14, v20);
      }

      else
      {
        v21 = (*(*v14 + 16))(v14);
      }
    }

    else
    {
      v21 = 0;
    }

    sub_DD7E88();
    result = v21;
    if (v21 != v20)
    {
      goto LABEL_36;
    }

    v17 = *v21;
    return (*(v17 + 32))();
  }

  v15 = *(a3 + 24);
  if (v15)
  {
    if (v15 == a3)
    {
      v19 = v18;
      (*(*v15 + 24))(v15, v18);
    }

    else
    {
      v19 = (*(*v15 + 16))(v15);
    }
  }

  else
  {
    v19 = 0;
  }

  sub_DCFDC8();
  result = v19;
  if (v19 == v18)
  {
    v17 = *v19;
    return (*(v17 + 32))();
  }

LABEL_36:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_11DB6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_11DB714(uint64_t a1, uint64_t a2)
{
  if (!sub_7E7E4(1u))
  {
    goto LABEL_24;
  }

  sub_19594F8(&v9);
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  sub_4A5C(&v9, v4, v5);
  if ((v19 & 0x10) != 0)
  {
    v7 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v7 = v15;
    }

    v8 = v14;
    v6 = v7 - v14;
    if (v7 - v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v19 & 8) == 0)
    {
      v6 = 0;
      v21 = 0;
LABEL_19:
      *(&__dst + v6) = 0;
      sub_7E854(&__dst, 1u);
      if (v21 < 0)
      {
        operator delete(__dst);
      }

      if (v17 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v11);
      std::ostream::~ostream();
      std::ios::~ios();
LABEL_24:
      operator new();
    }

    v8 = v12;
    v6 = v13 - v12;
    if ((v13 - v12) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_3244();
    }
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  v21 = v6;
  if (v6)
  {
    memmove(&__dst, v8, v6);
  }

  goto LABEL_19;
}

void sub_11DBADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 - 193) < 0)
  {
    operator delete(*(v2 - 216));
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_11DBB20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_14D4598(va);
  sub_14D4598(v2 - 216);
  _Unwind_Resume(a1);
}

void sub_11DBB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11DBB70(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_11DBE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_11DBFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_11DC018(uint64_t a1, uint64_t a2, __int128 *a3, __n128 *a4)
{
  *a1 = off_2675F78;
  *(a1 + 8) = off_2675FC0;
  *(a1 + 16) = off_2675FE8;
  *(a1 + 24) = off_2676010;
  *(a1 + 32) = off_2676038;
  *(a1 + 40) = 0;
  *(a1 + 44) = 256;
  *(a1 + 46) = 0;
  *(a1 + 48) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *a3;
  *(a1 + 80) = *(a3 + 2);
  *(a1 + 64) = v4;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  result = *a4;
  *(a1 + 104) = a4[1].n128_u64[0];
  *(a1 + 88) = result;
  a4->n128_u64[1] = 0;
  a4[1].n128_u64[0] = 0;
  a4->n128_u64[0] = 0;
  return result;
}

void sub_11DC104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (v3)
  {
    if (v3 == a3)
    {
      v9 = v8;
      v4 = a2;
      v5 = a1;
      (*(*v3 + 24))(v3, v8);
      a1 = v5;
      a2 = v4;
    }

    else
    {
      v9 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v7 = 0;
  sub_11DC27C(a1, a2, v8, v6);
}

void sub_11DC248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_11DC27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_7E9A4(&v13);
  v8 = *(a2 + 608);
  sub_17541D0(v15);
  sub_17915F4(v16, a2 + 544);
  v16[18] = v8;
  v17 = v13;
  v18 = v14;
  v9 = *(a3 + 24);
  if (v9)
  {
    if (v9 == a3)
    {
      v20 = v19;
      (*(*v9 + 24))(v9, v19);
LABEL_6:
      v10 = *(a4 + 24);
      if (v10)
      {
        if (v10 == a4)
        {
          v22 = &v21;
          (*(*v10 + 24))(v10);
LABEL_11:
          if (*(a1 + 48))
          {
            operator new();
          }

          exception = __cxa_allocate_exception(0x40uLL);
          v12 = sub_2D390(exception, "Offline data provider in offline service is nullptr", 0x33uLL);
        }

        v10 = (*(*v10 + 16))(v10);
      }

      v22 = v10;
      goto LABEL_11;
    }

    v9 = (*(*v9 + 16))(v9);
  }

  v20 = v9;
  goto LABEL_6;
}

void sub_11DD554(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    sub_1792484(v39 + 576);
    sub_1758FB8(&STACK[0x3D0]);
    if (a38 < 0)
    {
      operator delete(__p);
    }

    sub_1F1A8(&a17);
    sub_1F1A8(&a19);
    sub_1F1A8(&a23);
    sub_1F1A8(&a28);
    __cxa_begin_catch(a1);
    if (*(v38 + 45) == 1)
    {
      sub_11E53FC();
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_11DD948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  __cxa_end_catch();
  sub_11E37A8(&a42);
  _Unwind_Resume(a1);
}

void sub_11DD960(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x11DD870);
  }

  JUMPOUT(0x11DD5C0);
}

uint64_t sub_11DD97C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_11DDA08(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_11DDA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (v3)
  {
    if (v3 == a3)
    {
      v9 = v8;
      v4 = a2;
      v5 = a1;
      (*(*v3 + 24))(v3, v8);
      a1 = v5;
      a2 = v4;
    }

    else
    {
      v9 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v7 = 0;
  sub_11DDC14(a1, a2, v8, v6);
}

void sub_11DDBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_11DDC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_7E9A4(&v13);
  v8 = *(a2 + 520);
  sub_14CD338(v15);
  sub_17915F4(v16, a2 + 456);
  v16[18] = v8;
  v17 = v13;
  v18 = v14;
  v9 = *(a3 + 24);
  if (v9)
  {
    if (v9 == a3)
    {
      v20 = v19;
      (*(*v9 + 24))(v9, v19);
LABEL_6:
      v10 = *(a4 + 24);
      if (v10)
      {
        if (v10 == a4)
        {
          v22 = v21;
          (*(*v10 + 24))(v10, v21);
LABEL_11:
          if (*(a1 + 48))
          {
            operator new();
          }

          exception = __cxa_allocate_exception(0x40uLL);
          v12 = sub_2D390(exception, "Offline data provider in offline service is nullptr", 0x33uLL);
        }

        v10 = (*(*v10 + 16))(v10);
      }

      v22 = v10;
      goto LABEL_11;
    }

    v9 = (*(*v9 + 16))(v9);
  }

  v20 = v9;
  goto LABEL_6;
}

void sub_11DED90(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_11DF0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  __cxa_end_catch();
  sub_11E38B0(&a43);
  _Unwind_Resume(a1);
}

void sub_11DF0FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x11DF014);
  }

  JUMPOUT(0x11DEDA4);
}

uint64_t sub_11DF114(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_11DF1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (v3)
  {
    if (v3 == a3)
    {
      v9 = v8;
      v4 = a2;
      v5 = a1;
      (*(*v3 + 24))(v3, v8);
      a1 = v5;
      a2 = v4;
    }

    else
    {
      v9 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v7 = 0;
  sub_11DF320(a1, a2, v8, v6);
}

void sub_11DF2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_11DF320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_7E9A4(&v13);
  v8 = *(a2 + 528);
  sub_14C65CC(v15);
  sub_17915F4(v16, a2 + 464);
  v16[18] = v8;
  v17 = v13;
  v18 = v14;
  v9 = *(a3 + 24);
  if (v9)
  {
    if (v9 == a3)
    {
      v20 = v19;
      (*(*v9 + 24))(v9, v19);
LABEL_6:
      v10 = *(a4 + 24);
      if (v10)
      {
        if (v10 == a4)
        {
          v22 = v21;
          (*(*v10 + 24))(v10, v21);
LABEL_11:
          if (*(a1 + 48))
          {
            operator new();
          }

          exception = __cxa_allocate_exception(0x40uLL);
          v12 = sub_2D390(exception, "Offline data provider in offline service is nullptr", 0x33uLL);
        }

        v10 = (*(*v10 + 16))(v10);
      }

      v22 = v10;
      goto LABEL_11;
    }

    v9 = (*(*v9 + 16))(v9);
  }

  v20 = v9;
  goto LABEL_6;
}

void sub_11E0498(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_11E0838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  __cxa_end_catch();
  sub_11E39B8(&a42);
  _Unwind_Resume(a1);
}

void sub_11E0850(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x11E0760);
  }

  JUMPOUT(0x11E04ACLL);
}

uint64_t sub_11E086C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_11E0900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (v3)
  {
    if (v3 == a3)
    {
      v9 = v8;
      v4 = a2;
      v5 = a1;
      (*(*v3 + 24))(v3, v8);
      a1 = v5;
      a2 = v4;
    }

    else
    {
      v9 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v7 = 0;
  sub_11E0A78(a1, a2, v8, v6);
}

void sub_11E0A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_11E0A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_7E9A4(&v13);
  v8 = *(a2 + 288);
  sub_18FA5D4(v15, a2);
  sub_17915F4(v16, a2 + 224);
  v16[18] = v8;
  v17 = v13;
  v18 = v14;
  v9 = *(a3 + 24);
  if (v9)
  {
    if (v9 == a3)
    {
      v20 = v19;
      (*(*v9 + 24))(v9, v19);
LABEL_6:
      v10 = *(a4 + 24);
      if (v10)
      {
        if (v10 == a4)
        {
          v22 = v21;
          (*(*v10 + 24))(v10, v21);
LABEL_11:
          if (*(a1 + 48))
          {
            operator new();
          }

          exception = __cxa_allocate_exception(0x40uLL);
          v12 = sub_2D390(exception, "Offline data provider in offline service is nullptr", 0x33uLL);
        }

        v10 = (*(*v10 + 16))(v10);
      }

      v22 = v10;
      goto LABEL_11;
    }

    v9 = (*(*v9 + 16))(v9);
  }

  v20 = v9;
  goto LABEL_6;
}

void sub_11E1BF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_11E1F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  __cxa_end_catch();
  sub_11E3AC0(&a42);
  _Unwind_Resume(a1);
}

void sub_11E1FA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x11E1EB8);
  }

  JUMPOUT(0x11E1C04);
}

uint64_t sub_11E1FC4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_11E2050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (v3)
  {
    if (v3 == a3)
    {
      v9 = v8;
      v4 = a2;
      v5 = a1;
      (*(*v3 + 24))(v3, v8);
      a1 = v5;
      a2 = v4;
    }

    else
    {
      v9 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v7 = 0;
  sub_11E21C8(a1, a2, v8, v6);
}

void sub_11E2194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_11E21C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_7E9A4(&v13);
  v8 = *(a2 + 256);
  sub_1439378(v15, a2);
  sub_17915F4(v16, a2 + 192);
  v16[18] = v8;
  v17 = v13;
  v18 = v14;
  v9 = *(a3 + 24);
  if (v9)
  {
    if (v9 == a3)
    {
      v20 = v19;
      (*(*v9 + 24))(v9, v19);
LABEL_6:
      v10 = *(a4 + 24);
      if (v10)
      {
        if (v10 == a4)
        {
          v22 = v21;
          (*(*v10 + 24))(v10, v21);
LABEL_11:
          if (*(a1 + 48))
          {
            operator new();
          }

          exception = __cxa_allocate_exception(0x40uLL);
          v12 = sub_2D390(exception, "Offline data provider in offline service is nullptr", 0x33uLL);
        }

        v10 = (*(*v10 + 16))(v10);
      }

      v22 = v10;
      goto LABEL_11;
    }

    v9 = (*(*v9 + 16))(v9);
  }

  v20 = v9;
  goto LABEL_6;
}

void sub_11E3340(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_11E36E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  __cxa_end_catch();
  sub_11E3BC8(&a42);
  _Unwind_Resume(a1);
}

void sub_11E36F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x11E3608);
  }

  JUMPOUT(0x11E3354);
}

uint64_t sub_11E3714(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_11E37A8(uint64_t a1)
{
  v2 = a1 + 680;
  v3 = *(a1 + 704);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 672);
    if (v4 != a1 + 648)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v4 + 32))(v4);
    goto LABEL_9;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 672);
  if (v4 == a1 + 648)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

LABEL_9:
  sub_17916A0(a1 + 544);

  return sub_1754598(a1);
}

uint64_t sub_11E38B0(uint64_t a1)
{
  v2 = a1 + 592;
  v3 = *(a1 + 616);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 584);
    if (v4 != a1 + 560)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v4 + 32))(v4);
    goto LABEL_9;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 584);
  if (v4 == a1 + 560)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

LABEL_9:
  sub_17916A0(a1 + 456);

  return sub_14CD6F8(a1);
}

uint64_t sub_11E39B8(uint64_t a1)
{
  v2 = a1 + 600;
  v3 = *(a1 + 624);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 592);
    if (v4 != a1 + 568)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v4 + 32))(v4);
    goto LABEL_9;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 592);
  if (v4 == a1 + 568)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

LABEL_9:
  sub_17916A0(a1 + 464);

  return sub_14C6928(a1);
}

uint64_t sub_11E3AC0(uint64_t a1)
{
  v2 = a1 + 360;
  v3 = *(a1 + 384);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 352);
    if (v4 != a1 + 328)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v4 + 32))(v4);
    goto LABEL_9;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 352);
  if (v4 == a1 + 328)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

LABEL_9:
  sub_17916A0(a1 + 224);

  return sub_18FA778(a1);
}

uint64_t sub_11E3BC8(uint64_t a1)
{
  v2 = a1 + 328;
  v3 = *(a1 + 352);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 320);
    if (v4 != a1 + 296)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v4 + 32))(v4);
    goto LABEL_9;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 320);
  if (v4 == a1 + 296)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

LABEL_9:
  sub_17916A0(a1 + 192);

  return sub_1439560(a1);
}

uint64_t sub_11E3CD0(uint64_t a1)
{
  *a1 = off_2675F78;
  *(a1 + 8) = off_2675FC0;
  *(a1 + 16) = off_2675FE8;
  *(a1 + 24) = off_2676010;
  *(a1 + 32) = off_2676038;
  if ((*(a1 + 111) & 0x80000000) == 0)
  {
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 64));
    v2 = *(a1 + 56);
    if (!v2)
    {
      return a1;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 88));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 56);
  if (!v2)
  {
    return a1;
  }

LABEL_7:
  if (atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  return a1;
}

void sub_11E3E18(uint64_t a1)
{
  *a1 = off_2675F78;
  *(a1 + 8) = off_2675FC0;
  *(a1 + 16) = off_2675FE8;
  *(a1 + 24) = off_2676010;
  *(a1 + 32) = off_2676038;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 56);
      if (!v2)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 64));
  v2 = *(a1 + 56);
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

LABEL_9:

  operator delete();
}

void sub_11E3F74(uint64_t a1)
{
  *(a1 - 8) = off_2675F78;
  *a1 = off_2675FC0;
  *(a1 + 8) = off_2675FE8;
  *(a1 + 16) = off_2676010;
  *(a1 + 24) = off_2676038;
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 56));
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 48);
  if (!v2)
  {
    return;
  }

LABEL_7:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_11E40C4(uint64_t a1)
{
  *(a1 - 8) = off_2675F78;
  *a1 = off_2675FC0;
  *(a1 + 8) = off_2675FE8;
  *(a1 + 16) = off_2676010;
  *(a1 + 24) = off_2676038;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 48);
      if (!v2)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 79) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 56));
  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

LABEL_9:

  operator delete();
}

void sub_11E4220(uint64_t a1)
{
  *(a1 - 16) = off_2675F78;
  *(a1 - 8) = off_2675FC0;
  *a1 = off_2675FE8;
  *(a1 + 8) = off_2676010;
  *(a1 + 16) = off_2676038;
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 48));
    v2 = *(a1 + 40);
    if (!v2)
    {
      return;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 72));
  if (*(a1 + 71) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 40);
  if (!v2)
  {
    return;
  }

LABEL_7:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_11E4370(uint64_t a1)
{
  *(a1 - 16) = off_2675F78;
  *(a1 - 8) = off_2675FC0;
  *a1 = off_2675FE8;
  *(a1 + 8) = off_2676010;
  *(a1 + 16) = off_2676038;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 40);
      if (!v2)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 48));
  v2 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

LABEL_9:

  operator delete();
}

void sub_11E44CC(uint64_t a1)
{
  *(a1 - 24) = off_2675F78;
  *(a1 - 16) = off_2675FC0;
  *(a1 - 8) = off_2675FE8;
  *a1 = off_2676010;
  *(a1 + 8) = off_2676038;
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 40));
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 32);
  if (!v2)
  {
    return;
  }

LABEL_7:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_11E461C(uint64_t a1)
{
  *(a1 - 24) = off_2675F78;
  *(a1 - 16) = off_2675FC0;
  *(a1 - 8) = off_2675FE8;
  *a1 = off_2676010;
  *(a1 + 8) = off_2676038;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 32);
      if (!v2)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 40));
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

LABEL_9:

  operator delete();
}

void sub_11E4778(uint64_t a1)
{
  *(a1 - 32) = off_2675F78;
  *(a1 - 24) = off_2675FC0;
  *(a1 - 16) = off_2675FE8;
  *(a1 - 8) = off_2676010;
  *a1 = off_2676038;
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    v2 = *(a1 + 24);
    if (!v2)
    {
      return;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 56));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 24);
  if (!v2)
  {
    return;
  }

LABEL_7:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_11E48C8(uint64_t a1)
{
  *(a1 - 32) = off_2675F78;
  *(a1 - 24) = off_2675FC0;
  *(a1 - 16) = off_2675FE8;
  *(a1 - 8) = off_2676010;
  *a1 = off_2676038;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 24);
      if (!v2)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 32));
  v2 = *(a1 + 24);
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

LABEL_9:

  operator delete();
}

void *sub_11E4A24(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_11E4DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ***a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_1AB28(&__p);
  sub_1AA90(a10);
  _Unwind_Resume(a1);
}

void sub_11E4E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ***a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_1AA90(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_11E4E54(int a1)
{
  result = sub_7E7E4(1u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v14);
  v3 = sub_4A5C(&v14, "Stopped processing request of type ", 35);
  v4 = sub_178FF1C(a1);
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
    v7 = v4[1];
  }

  v8 = sub_4A5C(v3, v6, v7);
  sub_4A5C(v8, ", as it is disabled via the offline routing service configuration.", 66);
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
LABEL_26:
      sub_3244();
    }

LABEL_14:
    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__p, v11, v9);
    }

    goto LABEL_19;
  }

  if ((v24 & 8) != 0)
  {
    v11 = v17;
    v9 = v18 - v17;
    if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  v9 = 0;
  v13 = 0;
LABEL_19:
  *(&__p + v9) = 0;
  sub_7E854(&__p, 1u);
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
  return std::ios::~ios();
}

void sub_11E50DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_11E5128(int a1)
{
  result = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v14);
  v3 = sub_4A5C(&v14, "Stopped processing request of type ", 35);
  v4 = sub_178FF1C(a1);
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
    v7 = v4[1];
  }

  v8 = sub_4A5C(v3, v6, v7);
  sub_4A5C(v8, ", as the downloaded data is not compatible with the offline routing service.", 76);
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
LABEL_26:
      sub_3244();
    }

LABEL_14:
    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__p, v11, v9);
    }

    goto LABEL_19;
  }

  if ((v24 & 8) != 0)
  {
    v11 = v17;
    v9 = v18 - v17;
    if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  v9 = 0;
  v13 = 0;
LABEL_19:
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
  return std::ios::~ios();
}

void sub_11E53B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_11E5E6C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x767]) < 0)
  {
    operator delete(STACK[0x750]);
  }

  sub_1959728(&STACK[0x768]);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_11E605C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2676130;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_11E60D8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2676180;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_11E6138(void *a1)
{
  v2 = a1 + 14;
  v3 = a1[17];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[13];
    if (v4 != a1 + 10)
    {
      goto LABEL_5;
    }

LABEL_10:
    (*(*v4 + 32))(v4);
    v5 = a1[9];
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[13];
  if (v4 == a1 + 10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = a1[9];
  if (v5)
  {
LABEL_11:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

LABEL_13:
  v6 = a1[7];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[5];
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return a1;
}

void *sub_11E6318(void *a1)
{
  *a1 = off_26761D0;
  sub_11E6138(a1 + 1);
  return a1;
}

void sub_11E635C(void *a1)
{
  *a1 = off_26761D0;
  sub_11E6138(a1 + 1);

  operator delete();
}

void sub_11E646C(void *a1)
{
  sub_11E6138(a1 + 1);

  operator delete(a1);
}

void sub_11E64A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 552);
  sub_7EA60(a1 + 16);
  sub_2D577C(*(a1 + 40));
  sub_11E6940(v4, v5, v12);
  sub_11EC3DC(*(a1 + 56), v12);
  sub_7C9C0(1, v12, *(a1 + 72));
  v6 = v12[3];
  if (v12[3])
  {
    v7 = v12[4];
    v8 = v12[3];
    if (v12[4] != v12[3])
    {
      do
      {
        v9 = *(v7 - 25);
        v7 -= 6;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = v12[3];
    }

    v12[4] = v6;
    operator delete(v8);
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
    sub_7B390(*(a1 + 72));
    if (!*(a1 + 112))
    {
LABEL_11:
      if (!*(a1 + 144))
      {
        return;
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_7B390(*(a1 + 72));
    if (!*(a1 + 112))
    {
      goto LABEL_11;
    }
  }

  sub_CE25A8(v12, a2);
  sub_1792248(v15, 0, 0);
  sub_CE25A8(v13, v12);
  sub_11E6F24(&v14, v15);
  sub_1792484(v15);
  sub_1758FB8(v12);
  v10 = *(a1 + 112);
  if (!v10)
  {
    sub_2B7420();
  }

  (*(*v10 + 48))(v10, v13);
  sub_1792484(&v14);
  sub_1758FB8(v13);
  if (*(a1 + 144))
  {
LABEL_16:
    sub_2D577C(*(a1 + 40));
    memcpy((*(a1 + 56) + 16), v12, 0x8F9uLL);
    memcpy(v12, *(a1 + 56), sizeof(v12));
    v11 = *(a1 + 144);
    if (!v11)
    {
      sub_2B7420();
    }

    (*(*v11 + 48))(v11, v12);
  }
}

void sub_11E66E4(_Unwind_Exception *a1)
{
  sub_1792484(v1 + 576);
  sub_1758FB8(&STACK[0x910]);
  _Unwind_Resume(a1);
}

uint64_t sub_11E6700(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo317DirectionsRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS4_18DirectionsResponseEEEEEENSA_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNS9_6vectorINS9_4pairINS9_12basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEESQ_EENSO_ISR_EEEEENK3$_0clENS9_10shared_ptrINS_7routing18RoutingDataContextEEENSX_ISG_EEEUlONS_6common9ResponsesISC_EEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo317DirectionsRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS4_18DirectionsResponseEEEEEENSA_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNS9_6vectorINS9_4pairINS9_12basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEESQ_EENSO_ISR_EEEEENK3$_0clENS9_10shared_ptrINS_7routing18RoutingDataContextEEENSX_ISG_EEEUlONS_6common9ResponsesISC_EEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo317DirectionsRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS4_18DirectionsResponseEEEEEENSA_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNS9_6vectorINS9_4pairINS9_12basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEESQ_EENSO_ISR_EEEEENK3$_0clENS9_10shared_ptrINS_7routing18RoutingDataContextEEENSX_ISG_EEEUlONS_6common9ResponsesISC_EEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo317DirectionsRequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS4_18DirectionsResponseEEEEEENSA_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNS9_6vectorINS9_4pairINS9_12basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEESQ_EENSO_ISR_EEEEENK3$_0clENS9_10shared_ptrINS_7routing18RoutingDataContextEEENSX_ISG_EEEUlONS_6common9ResponsesISC_EEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_11E6778(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v4;
  v5 = *(a2 + 5);
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 7);
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 9);
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a1 + 80;
  v9 = *(a2 + 13);
  if (!v9)
  {
    goto LABEL_10;
  }

  if (v9 != a2 + 5)
  {
    v9 = (*(*v9 + 16))(v9);
LABEL_10:
    *(a1 + 104) = v9;
    goto LABEL_12;
  }

  *(a1 + 104) = v8;
  (*(**(a2 + 13) + 24))(*(a2 + 13), a1 + 80);
LABEL_12:
  v10 = *(a2 + 17);
  if (!v10)
  {
LABEL_15:
    *(a1 + 136) = v10;
    return a1;
  }

  if (v10 != a2 + 7)
  {
    v10 = (*(*v10 + 16))(v10);
    goto LABEL_15;
  }

  *(a1 + 136) = a1 + 112;
  (*(**(a2 + 17) + 24))(*(a2 + 17));
  return a1;
}

void sub_11E690C(_Unwind_Exception *a1)
{
  sub_11DDA08(v4);
  sub_1F1A8(v3);
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_11E6940(int a1, int a2, uint64_t a3)
{
  v6 = *(a3 + 2296);
  result = sub_7E7E4(1u);
  if (v6 != 1)
  {
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v46);
    v28 = sub_4A5C(&v46, "Completed ", 10);
    v29 = sub_178FF1C(a1);
    v30 = *(v29 + 23);
    if (v30 >= 0)
    {
      v31 = v29;
    }

    else
    {
      v31 = *v29;
    }

    if (v30 >= 0)
    {
      v32 = *(v29 + 23);
    }

    else
    {
      v32 = v29[1];
    }

    v33 = sub_4A5C(v28, v31, v32);
    v34 = sub_4A5C(v33, " request with ", 14);
    v35 = sub_152B68C(a2);
    v36 = *(v35 + 23);
    if (v36 >= 0)
    {
      v37 = v35;
    }

    else
    {
      v37 = *v35;
    }

    if (v36 >= 0)
    {
      v38 = *(v35 + 23);
    }

    else
    {
      v38 = v35[1];
    }

    v39 = sub_4A5C(v34, v37, v38);
    sub_4A5C(v39, " in ", 4);
    v40 = std::ostream::operator<<();
    sub_4A5C(v40, " ms.", 4);
    if ((v56 & 0x10) != 0)
    {
      v41 = v55;
      if (v55 < v52)
      {
        v55 = v52;
        v41 = v52;
      }

      v42 = v51;
      v27 = v41 - v51;
      if (v41 - v51 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if ((v56 & 8) == 0)
      {
        v27 = 0;
        v45 = 0;
        goto LABEL_50;
      }

      v42 = v49;
      v27 = v50 - v49;
      if ((v50 - v49) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_57:
        sub_3244();
      }
    }

    if (v27 >= 0x17)
    {
      operator new();
    }

    v45 = v27;
    if (!v27)
    {
      goto LABEL_50;
    }

LABEL_49:
    memmove(&__p, v42, v27);
    goto LABEL_50;
  }

  if (!result)
  {
    return result;
  }

  sub_19594F8(&v46);
  v8 = sub_4A5C(&v46, "Completed ", 10);
  v9 = sub_178FF1C(a1);
  v10 = *(v9 + 23);
  if (v10 >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = *v9;
  }

  if (v10 >= 0)
  {
    v12 = *(v9 + 23);
  }

  else
  {
    v12 = v9[1];
  }

  v13 = sub_4A5C(v8, v11, v12);
  v14 = sub_4A5C(v13, " with ", 6);
  v15 = sub_152B68C(a2);
  v16 = *(v15 + 23);
  if (v16 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = *v15;
  }

  if (v16 >= 0)
  {
    v18 = *(v15 + 23);
  }

  else
  {
    v18 = v15[1];
  }

  v19 = sub_4A5C(v14, v17, v18);
  sub_4A5C(v19, " in ", 4);
  v20 = std::ostream::operator<<();
  sub_4A5C(v20, " ms; data access: ", 18);
  sub_32AC08(a3);
  v21 = std::ostream::operator<<();
  sub_4A5C(v21, " non-empty and ", 15);
  sub_32A9A0(a3);
  v22 = std::ostream::operator<<();
  sub_4A5C(v22, " empty quad nodes, ", 19);
  sub_32AC38(a3);
  v23 = std::ostream::operator<<();
  sub_4A5C(v23, " MiB, ", 6);
  sub_32AD80(a3);
  v24 = std::ostream::operator<<();
  sub_4A5C(v24, " MiB (< ", 8);
  v25 = std::ostream::operator<<();
  sub_4A5C(v25, " KiB), ", 7);
  v26 = std::ostream::operator<<();
  sub_4A5C(v26, " ms.", 4);
  if ((v56 & 0x10) != 0)
  {
    v43 = v55;
    if (v55 < v52)
    {
      v55 = v52;
      v43 = v52;
    }

    v42 = v51;
    v27 = v43 - v51;
    if (v43 - v51 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_59:
      sub_3244();
    }

    goto LABEL_43;
  }

  if ((v56 & 8) != 0)
  {
    v42 = v49;
    v27 = v50 - v49;
    if ((v50 - v49) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_59;
    }

LABEL_43:
    if (v27 >= 0x17)
    {
      operator new();
    }

    v45 = v27;
    if (!v27)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v27 = 0;
  v45 = 0;
LABEL_50:
  *(&__p + v27) = 0;
  sub_7E854(&__p, 1u);
  if (v45 < 0)
  {
    operator delete(__p);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  std::locale::~locale(&v48);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_11E6EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

std::string *sub_11E6F24(std::string *a1, uint64_t a2)
{
  sub_1792248(a1, 0, 0);
  if (a1 != a2)
  {
    size = a1->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
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

    if (size == v5)
    {
      sub_1792A38(a1, a2);
    }

    else
    {
      sub_17929E4(a1, a2);
    }
  }

  return a1;
}

void sub_11E7A34(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  sub_1959728(&STACK[0x2A8]);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void *sub_11E7C04(void *a1)
{
  v2 = a1 + 14;
  v3 = a1[17];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[13];
    if (v4 != a1 + 10)
    {
      goto LABEL_5;
    }

LABEL_10:
    (*(*v4 + 32))(v4);
    v5 = a1[9];
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = a1[13];
  if (v4 == a1 + 10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = a1[9];
  if (v5)
  {
LABEL_11:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

LABEL_13:
  v6 = a1[7];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[5];
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  return a1;
}

void *sub_11E7DE4(void *a1)
{
  *a1 = off_2676260;
  sub_11E7C04(a1 + 1);
  return a1;
}

void sub_11E7E28(void *a1)
{
  *a1 = off_2676260;
  sub_11E7C04(a1 + 1);

  operator delete();
}

void sub_11E7F38(void *a1)
{
  sub_11E7C04(a1 + 1);

  operator delete(a1);
}

void sub_11E7F74(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 160);
  sub_7EA60(a1 + 16);
  sub_2D577C(*(a1 + 40));
  sub_11E6940(v4, v5, __src);
  sub_11EC3DC(*(a1 + 56), __src);
  sub_7C9C0(1, __src, *(a1 + 72));
  v6 = __src[3];
  if (__src[3])
  {
    v7 = __src[4];
    v8 = __src[3];
    if (__src[4] != __src[3])
    {
      do
      {
        v9 = *(v7 - 25);
        v7 -= 6;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = __src[3];
    }

    __src[4] = v6;
    operator delete(v8);
  }

  if (SHIBYTE(__src[2]) < 0)
  {
    operator delete(__src[0]);
    sub_7B390(*(a1 + 72));
    if (!*(a1 + 112))
    {
LABEL_11:
      if (!*(a1 + 144))
      {
        return;
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_7B390(*(a1 + 72));
    if (!*(a1 + 112))
    {
      goto LABEL_11;
    }
  }

  sub_11E840C(__src, a2);
  sub_1792248(v15, 0, 0);
  sub_11E840C(v13, __src);
  sub_11E6F24(&v14, v15);
  sub_1792484(v15);
  sub_14D4598(__src);
  v10 = *(a1 + 112);
  if (!v10)
  {
    sub_2B7420();
  }

  (*(*v10 + 48))(v10, v13);
  sub_1792484(&v14);
  sub_14D4598(v13);
  if (*(a1 + 144))
  {
LABEL_16:
    sub_2D577C(*(a1 + 40));
    memcpy((*(a1 + 56) + 16), __src, 0x8F9uLL);
    memcpy(__src, *(a1 + 56), sizeof(__src));
    v11 = *(a1 + 144);
    if (!v11)
    {
      sub_2B7420();
    }

    (*(*v11 + 48))(v11, __src);
  }
}

void sub_11E8188(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_14D4598(va);
  _Unwind_Resume(a1);
}

void sub_11E819C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9DA0(va);
  _Unwind_Resume(a1);
}

void sub_11E81B0(_Unwind_Exception *a1)
{
  sub_1792484(v1 + 168);
  sub_14D4598(&STACK[0x918]);
  _Unwind_Resume(a1);
}

uint64_t sub_11E81CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo310ETARequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS4_11ETAResponseEEEEEENSA_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNS9_6vectorINS9_4pairINS9_12basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEESQ_EENSO_ISR_EEEEENK3$_0clENS9_10shared_ptrINS_7routing18RoutingDataContextEEENSX_ISG_EEEUlONS_6common9ResponsesISC_EEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo310ETARequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS4_11ETAResponseEEEEEENSA_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNS9_6vectorINS9_4pairINS9_12basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEESQ_EENSO_ISR_EEEEENK3$_0clENS9_10shared_ptrINS_7routing18RoutingDataContextEEENSX_ISG_EEEUlONS_6common9ResponsesISC_EEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo310ETARequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS4_11ETAResponseEEEEEENSA_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNS9_6vectorINS9_4pairINS9_12basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEESQ_EENSO_ISR_EEEEENK3$_0clENS9_10shared_ptrINS_7routing18RoutingDataContextEEENSX_ISG_EEEUlONS_6common9ResponsesISC_EEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3msl21OfflineRoutingService13handleRequestERKN4maps7offline21ServiceRequestWrapperIN4geo310ETARequestEEENSt3__18functionIFvNS2_22ServiceResponseWrapperINS4_11ETAResponseEEEEEENSA_IFvNS_39OfflineRoutingServicePerformanceFiguresEEEERKNS9_6vectorINS9_4pairINS9_12basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEESQ_EENSO_ISR_EEEEENK3$_0clENS9_10shared_ptrINS_7routing18RoutingDataContextEEENSX_ISG_EEEUlONS_6common9ResponsesISC_EEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_11E8244(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v4;
  v5 = *(a2 + 5);
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 7);
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 9);
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a1 + 80;
  v9 = *(a2 + 13);
  if (!v9)
  {
    goto LABEL_10;
  }

  if (v9 != a2 + 5)
  {
    v9 = (*(*v9 + 16))(v9);
LABEL_10:
    *(a1 + 104) = v9;
    goto LABEL_12;
  }

  *(a1 + 104) = v8;
  (*(**(a2 + 13) + 24))(*(a2 + 13), a1 + 80);
LABEL_12:
  v10 = *(a2 + 17);
  if (!v10)
  {
LABEL_15:
    *(a1 + 136) = v10;
    return a1;
  }

  if (v10 != a2 + 7)
  {
    v10 = (*(*v10 + 16))(v10);
    goto LABEL_15;
  }

  *(a1 + 136) = a1 + 112;
  (*(**(a2 + 17) + 24))(*(a2 + 17));
  return a1;
}