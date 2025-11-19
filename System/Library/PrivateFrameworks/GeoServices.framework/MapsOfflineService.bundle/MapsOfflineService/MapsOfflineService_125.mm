void sub_7DE4C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5DAA94(va);
  _Unwind_Resume(a1);
}

void sub_7DE4D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5DAA94(va);
  _Unwind_Resume(a1);
}

void sub_7DE4EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5DAA94(va);
  _Unwind_Resume(a1);
}

unint64_t sub_7DE500(uint64_t a1, void *a2, void *a3)
{
  result = sub_4D1DDC(a2, v18);
  v5 = v18[0];
  v6 = v18[1];
  v7 = v19;
  v8 = v20;
  if (v18[0])
  {
    if (v19)
    {
      while (1)
      {
        v11 = sub_4D1DC0(v5);
        result = sub_4D1DC0(v7);
        if (v6 >= v11 || v8 >= result)
        {
          if (v6 < v11 == v8 < result)
          {
            return result;
          }
        }

        else
        {
          v12 = sub_4D1F50(v5, v6);
          result = sub_4D1F50(v7, v8);
          if (v12 == result)
          {
            return result;
          }
        }

        v9 = *(sub_4D1F50(v5, v6) + 32);
        LODWORD(v17) = v9;
        BYTE6(v17) = BYTE6(v9);
        WORD2(v17) = WORD2(v9);
        v21 = &v17;
        v10 = sub_7E5858(a3, &v17);
        ++*(v10 + 6);
        v6 = (v6 + 1);
      }
    }

    for (result = sub_4D1DC0(v18[0]); v6 < result; result = sub_4D1DC0(v5))
    {
      v15 = *(sub_4D1F50(v5, v6) + 32);
      LODWORD(v17) = v15;
      BYTE6(v17) = BYTE6(v15);
      WORD2(v17) = WORD2(v15);
      v21 = &v17;
      v16 = sub_7E5858(a3, &v17);
      ++*(v16 + 6);
      v6 = (v6 + 1);
    }
  }

  else if (v19)
  {
    for (result = sub_4D1DC0(v19); v8 < result; result = sub_4D1DC0(v7))
    {
      v13 = *(sub_4D1F50(0, v6) + 32);
      LODWORD(v17) = v13;
      BYTE6(v17) = BYTE6(v13);
      WORD2(v17) = WORD2(v13);
      v21 = &v17;
      v14 = sub_7E5858(a3, &v17);
      ++*(v14 + 6);
      v6 = (v6 + 1);
    }
  }

  return result;
}

void sub_7DE720(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v5 = a2[157] - a2[156];
  if (v5)
  {
    v8 = 0;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 5);
    do
    {
      v10 = sub_50EFDC(a2 + 156, v8);
      if (!sub_734C10(v10))
      {
        goto LABEL_3;
      }

      v11 = *(sub_50EFDC(a2 + 156, v8) + 152);
      if (v8 >= -1 - 0x3333333333333333 * ((a2[157] - a2[156]) >> 5))
      {
        v12 = sub_4D1DC0(a2);
      }

      else
      {
        v12 = *(sub_50EFDC(a2 + 156, v8 + 1) + 152);
      }

      sub_5139E8(v26, v10);
      v36 = a3;
      v24 = 0;
      v25 = 0;
      v13 = sub_7E5BFC(a5, v26);
      v14 = v11 >= v12;
      if (v11 > v12)
      {
        v12 = v11;
      }

      if (!v14)
      {
        v15 = v13;
        do
        {
          v16 = *(sub_4D1F50(a2, v11) + 32);
          LODWORD(v23) = v16;
          BYTE6(v23) = BYTE6(v16);
          WORD2(v23) = WORD2(v16);
          v24 = &v23;
          v17 = *(sub_7E5858(a4, &v23) + 6);
          v19 = sub_4D23F8(a2, v11, v18);
          v20.f64[0] = v19 / v17;
          v20.f64[1] = v19;
          v15[11] = vaddq_f64(v20, v15[11]);
          ++v11;
        }

        while (v12 != v11);
      }

      if (v35 < 0)
      {
        operator delete(__p);
        if ((v33 & 0x80000000) == 0)
        {
LABEL_15:
          if ((v31 & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_21;
        }
      }

      else if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      operator delete(v32);
      if ((v31 & 0x80000000) == 0)
      {
LABEL_16:
        if ((v29 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }

LABEL_21:
      operator delete(v30);
      if ((v29 & 0x80000000) == 0)
      {
LABEL_17:
        if (v27 < 0)
        {
          goto LABEL_23;
        }

        goto LABEL_3;
      }

LABEL_22:
      operator delete(v28);
      if (v27 < 0)
      {
LABEL_23:
        operator delete(v26[0]);
      }

LABEL_3:
      ++v8;
    }

    while (v8 != v9);
  }
}

void sub_7DE950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_7DE964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_7DE978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_7DE98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7DE9A0(void *a1, unint64_t a2)
{
  if (0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7));
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

  return *a1 + 7808 * a2;
}

void sub_7DEADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void *sub_7DEBBC@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = result[156];
  v5 = result[157];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 != v5)
  {
    v7 = result;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 5);
    if (v8 != 1)
    {
      for (i = 1; i != v8; ++i)
      {
        v11 = sub_50EFDC(v7 + 156, i - 1);
        if (!sub_734E58(v11, a2))
        {
          v12 = sub_50EFDC(v7 + 156, i);
          v24 = sub_4D2544(v7, 0, 1, v11[19], 0, v13);
          v15 = sub_4D2544(v7, 0, 1, *(v12 + 152), 0, v14);
          v23 = v15;
          v16 = a3[1];
          if (v16 >= a3[2])
          {
            v10 = sub_7E6E60(a3, &v24, &v23);
          }

          else
          {
            sub_3320D0(a3[1], v24, v15);
            v10 = (v16 + 16);
          }

          a3[1] = v10;
        }
      }

      v5 = v7[157];
    }

    result = sub_734D94((v5 - 160), a2);
    if (result)
    {
      v18 = sub_4D2544(v7, 0, 1, *(v7[157] - 8), 0, v17);
      v24 = v18;
      v19 = sub_4D1DC0(v7);
      v21 = sub_4D2544(v7, 0, 1, v19 - 1, 1u, v20);
      v23 = v21;
      v22 = a3[1];
      if (v22 >= a3[2])
      {
        result = sub_7E6E60(a3, &v24, &v23);
      }

      else
      {
        sub_3320D0(a3[1], v18, v21);
        result = (v22 + 16);
      }

      a3[1] = result;
    }
  }

  return result;
}

void sub_7DED7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7DEDD0(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_13;
  }

LABEL_11:
  operator delete(*(a1 + 72));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_13:
  operator delete(*a1);
  return a1;
}

void sub_7DEE84(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v7 = sub_58BBC(a4);
  if (*v7 == v7[1])
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        do
        {
          if (v8[21] != a3 || *(v9 + 21) == a3 && *(v8 + 22) < v9[22])
          {
            v8 = v9;
          }

          v9 = *v9;
        }

        while (v9);
      }

      v10 = sub_5139E8(&v37, v8 + 1);
    }

    else
    {
      v10 = sub_734CE0(&v37);
    }

    if (!sub_734C10(v10))
    {
      goto LABEL_31;
    }

    v11 = *nullsub_1(a4);
    sub_5139E8(v14, &v37);
    sub_7DEBBC(v11, &v37, &v12);
    sub_5139E8(v24, v14);
    __p = 0;
    v35 = 0;
    v36 = 0;
    if (v13 != v12)
    {
      if (((v13 - v12) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    if (v23 < 0)
    {
      operator delete(v22);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_21:
        if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_39;
      }
    }

    else if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    operator delete(v20);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_22:
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }

LABEL_39:
    operator delete(v18);
    if ((v17 & 0x80000000) == 0)
    {
LABEL_23:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_41:
      operator delete(v14[0]);
LABEL_24:
      sub_68ED40(a4, v24);
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v33 < 0)
      {
        operator delete(v32);
        if ((v31 & 0x80000000) == 0)
        {
LABEL_28:
          if ((v29 & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_44;
        }
      }

      else if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      operator delete(v30);
      if ((v29 & 0x80000000) == 0)
      {
LABEL_29:
        if ((v27 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_45:
        operator delete(v26);
        if (v25 < 0)
        {
          goto LABEL_46;
        }

LABEL_31:
        if ((v46 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_47;
      }

LABEL_44:
      operator delete(v28);
      if ((v27 & 0x80000000) == 0)
      {
LABEL_30:
        if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

LABEL_46:
        operator delete(v24[0]);
        if ((v46 & 0x80000000) == 0)
        {
LABEL_32:
          if ((v44 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_48;
        }

LABEL_47:
        operator delete(v45);
        if ((v44 & 0x80000000) == 0)
        {
LABEL_33:
          if ((v42 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_49;
        }

LABEL_48:
        operator delete(v43);
        if ((v42 & 0x80000000) == 0)
        {
LABEL_34:
          if ((v40 & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_50;
        }

LABEL_49:
        operator delete(v41);
        if ((v40 & 0x80000000) == 0)
        {
LABEL_35:
          if ((v38 & 0x80000000) == 0)
          {
            return;
          }

          goto LABEL_51;
        }

LABEL_50:
        operator delete(v39);
        if ((v38 & 0x80000000) == 0)
        {
          return;
        }

LABEL_51:
        operator delete(v37);
        return;
      }

      goto LABEL_45;
    }

LABEL_40:
    operator delete(v16);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_41;
  }
}

void sub_7DF170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_7DEDD0(&a32);
  sub_3E5388(v32 - 200);
  _Unwind_Resume(a1);
}

void sub_7DF18C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_3E5388(&a13);
  sub_3E5388(v52 - 200);
  _Unwind_Resume(a1);
}

void sub_7DF21C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  if (a4[147] == a4[148])
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        do
        {
          if (v5[21] != a3 || *(v6 + 21) == a3 && *(v5 + 22) < v6[22])
          {
            v5 = v6;
          }

          v6 = *v6;
        }

        while (v6);
      }

      v7 = sub_5139E8(&v33, v5 + 1);
    }

    else
    {
      v7 = sub_734CE0(&v33);
    }

    if (!sub_734C10(v7))
    {
      goto LABEL_31;
    }

    sub_5139E8(v10, &v33);
    sub_7DEBBC(a4, &v33, &v8);
    sub_5139E8(v20, v10);
    __p = 0;
    v31 = 0;
    v32 = 0;
    if (v9 != v8)
    {
      if (((v9 - v8) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    if (v19 < 0)
    {
      operator delete(v18);
      if ((v17 & 0x80000000) == 0)
      {
LABEL_21:
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_39;
      }
    }

    else if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    operator delete(v16);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_22:
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }

LABEL_39:
    operator delete(v14);
    if ((v13 & 0x80000000) == 0)
    {
LABEL_23:
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_41:
      operator delete(v10[0]);
LABEL_24:
      sub_68ED88((a4 + 147), v20);
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      if (v29 < 0)
      {
        operator delete(v28);
        if ((v27 & 0x80000000) == 0)
        {
LABEL_28:
          if ((v25 & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_44;
        }
      }

      else if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      operator delete(v26);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_29:
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_45:
        operator delete(v22);
        if (v21 < 0)
        {
          goto LABEL_46;
        }

LABEL_31:
        if ((v42 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_47;
      }

LABEL_44:
      operator delete(v24);
      if ((v23 & 0x80000000) == 0)
      {
LABEL_30:
        if ((v21 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

LABEL_46:
        operator delete(v20[0]);
        if ((v42 & 0x80000000) == 0)
        {
LABEL_32:
          if ((v40 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_48;
        }

LABEL_47:
        operator delete(v41);
        if ((v40 & 0x80000000) == 0)
        {
LABEL_33:
          if ((v38 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_49;
        }

LABEL_48:
        operator delete(v39);
        if ((v38 & 0x80000000) == 0)
        {
LABEL_34:
          if ((v36 & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_50;
        }

LABEL_49:
        operator delete(v37);
        if ((v36 & 0x80000000) == 0)
        {
LABEL_35:
          if ((v34 & 0x80000000) == 0)
          {
            return;
          }

          goto LABEL_51;
        }

LABEL_50:
        operator delete(v35);
        if ((v34 & 0x80000000) == 0)
        {
          return;
        }

LABEL_51:
        operator delete(v33);
        return;
      }

      goto LABEL_45;
    }

LABEL_40:
    operator delete(v12);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_41;
  }
}

void sub_7DF4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_7DEDD0(&a32);
  sub_3E5388(v32 - 200);
  _Unwind_Resume(a1);
}

void sub_7DF50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_3E5388(&a13);
  sub_3E5388(v52 - 200);
  _Unwind_Resume(a1);
}

void sub_7DF588(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *(a3 + 8) = 0u;
  *a3 = v5;
  *(a3 + 24) = 0u;
  *(a3 + 40) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a3 + 8, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v7 = *(a3 + 16);
    v8 = prime >= *&v7;
    if (prime > *&v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v8)
  {
    v9 = vcvtps_u32_f32(*(a3 + 32) / *(a3 + 40));
    if (*&v7 < 3uLL || (v10 = vcnt_s8(v7), v10.i16[0] = vaddlv_u8(v10), v10.u32[0] > 1uLL))
    {
      v9 = std::__next_prime(v9);
    }

    else
    {
      v11 = 1 << -__clz(v9 - 1);
      if (v9 >= 2)
      {
        v9 = v11;
      }
    }

    if (prime <= v9)
    {
      prime = v9;
    }

    if (prime < *&v7)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_23914((a3 + 8), (i + 2));
  }
}

uint64_t sub_7DF6E0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_7DF74C(BOOL *a1, void *a2)
{
  v6 = 21;
  strcpy(__p, "output_all_road_names");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_7DF848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7DF868(BOOL *a1, uint64_t a2)
{
  v5[23] = 10;
  strcpy(v5, "RouteNamer");
  memset(v4, 0, sizeof(v4));
  v3 = sub_3AEC94(a2, v5, v4);
  sub_41D598(v3, v6);
  sub_7E1BF8(a1, v6);
}

void sub_7DF9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_7DFA0C(BOOL *a1, uint64_t a2, uint64_t a3)
{
  v7[23] = 10;
  strcpy(v7, "RouteNamer");
  memset(v6, 0, sizeof(v6));
  v5 = sub_3AEC94(a2, v7, v6);
  sub_41D60C(v5, 3u, *(a3 + 1566), v8);
  sub_7E1BF8(a1, v8);
}

void sub_7DFB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_7DFBC0(uint64_t result, void *a2)
{
  if (*(result + 1) == 1)
  {
    memset(v4, 0, sizeof(v4));
    v5 = 1065353216;
    v2 = result;
    sub_7DFC3C(result, a2, v4);
    sub_7DFD6C(v2, a2, v4);
    return sub_7DCC34(v4);
  }

  return result;
}

void sub_7DFC3C(uint64_t a1, uint64_t a2, void *a3)
{
  *v15 = 0u;
  *__p = 0u;
  v17 = 1065353216;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    do
    {
      sub_7DE500(a1, v3, v15);
      v3 += 1582;
    }

    while (v3 != v4);
    v8 = *(a2 + 8) - *a2;
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0x5DDB1ADCB91F64A7 * (v8 >> 4);
      do
      {
        sub_7E0E44(a1, (*a2 + v9), v10++, v15, a3);
        v9 += 12656;
      }

      while (v11 != v10);
    }
  }

  v12 = __p[0];
  if (__p[0])
  {
    do
    {
      v13 = *v12;
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = v15[0];
  v15[0] = 0;
  if (v14)
  {
    operator delete(v14);
  }
}

void sub_7DFD6C(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v4 = *(a3 + 16);
  if (v4)
  {
    while (1)
    {
      v5 = v4[21];
      v6 = *(v4 + 22);
      v7 = v4[23];
      sub_5139E8(v55, v4 + 1);
      *&v65 = v5;
      *(&v65 + 1) = v6;
      v66 = v7;
      if (v6 >= 0.0)
      {
        v8 = v69;
        if (v69 >= v70)
        {
          v10 = sub_7E7608(&v68, v55);
        }

        else
        {
          sub_5139E8(v69, v55);
          v9 = v65;
          v8[21] = v66;
          *(v8 + 19) = v9;
          v10 = v8 + 22;
        }

        v69 = v10;
        sub_7E657C(v68, v10, v52, 0x2E8BA2E8BA2E8BA3 * ((v10 - v68) >> 4));
      }

      if (v64 < 0)
      {
        operator delete(__p);
        if ((v62 & 0x80000000) == 0)
        {
LABEL_11:
          if ((v60 & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_17;
        }
      }

      else if ((v62 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(v61);
      if ((v60 & 0x80000000) == 0)
      {
LABEL_12:
        if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

LABEL_17:
      operator delete(v59);
      if ((v58 & 0x80000000) == 0)
      {
LABEL_13:
        if (v56 < 0)
        {
          goto LABEL_19;
        }

        goto LABEL_3;
      }

LABEL_18:
      operator delete(v57);
      if (v56 < 0)
      {
LABEL_19:
        operator delete(v55[0]);
      }

LABEL_3:
      v4 = *v4;
      if (!v4)
      {
        v4 = v68;
        v11 = v69;
        goto LABEL_22;
      }
    }
  }

  v11 = 0;
LABEL_22:
  *v52 = 0u;
  *v53 = 0u;
  v54 = 1065353216;
  *v49 = 0u;
  *v50 = 0u;
  v51 = 1065353216;
  if (v4 != v11)
  {
    while (1)
    {
      v12 = v53[1];
      if (v53[1] >= (0x5DDB1ADCB91F64A7 * ((a2[1] - *a2) >> 4)))
      {
        goto LABEL_84;
      }

      if (sub_138B0(v49, v4))
      {
LABEL_27:
        sub_7E7CBC(v68, v69, v55, 0x2E8BA2E8BA2E8BA3 * ((v69 - v68) >> 4));
        sub_7E494C(&v68, v69 - 22);
        goto LABEL_24;
      }

      v13 = v4[19];
      if (v52[1])
      {
        v14 = vcnt_s8(v52[1]);
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] > 1uLL)
        {
          v15 = v4[19];
          if (v13 >= v52[1])
          {
            v15 = v13 % v52[1];
          }
        }

        else
        {
          v15 = (v52[1] - 1) & v13;
        }

        v16 = *(v52[0] + v15);
        if (v16)
        {
          v17 = *v16;
          if (v17)
          {
            if (v14.u32[0] < 2uLL)
            {
              while (1)
              {
                v19 = v17[1];
                if (v13 == v19)
                {
                  if (v17[2] == v13)
                  {
                    goto LABEL_27;
                  }
                }

                else if ((v19 & (v52[1] - 1)) != v15)
                {
                  goto LABEL_48;
                }

                v17 = *v17;
                if (!v17)
                {
                  goto LABEL_48;
                }
              }
            }

            do
            {
              v18 = v17[1];
              if (v13 == v18)
              {
                if (v17[2] == v13)
                {
                  goto LABEL_27;
                }
              }

              else
              {
                if (v18 >= v52[1])
                {
                  v18 %= v52[1];
                }

                if (v18 != v15)
                {
                  break;
                }
              }

              v17 = *v17;
            }

            while (v17);
          }
        }
      }

LABEL_48:
      sub_5139E8(v39, v4);
      sub_7E12E0((*a2 + 12656 * v4[19]), v4, &v37);
      sub_5139E8(v55, v39);
      v65 = 0uLL;
      v66 = 0;
      if (v38 != v37)
      {
        if (((v38 - v37) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v48 < 0)
      {
        operator delete(v47);
        if ((v46 & 0x80000000) == 0)
        {
LABEL_55:
          if ((v44 & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_74;
        }
      }

      else if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      operator delete(v45);
      if ((v44 & 0x80000000) == 0)
      {
LABEL_56:
        if (v42 < 0)
        {
          goto LABEL_75;
        }

        goto LABEL_57;
      }

LABEL_74:
      operator delete(v43);
      if (v42 < 0)
      {
LABEL_75:
        operator delete(v41);
        if ((v40 & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_76;
      }

LABEL_57:
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

LABEL_76:
      operator delete(v39[0]);
LABEL_58:
      v20 = *a2 + 12656 * v4[19];
      v21 = v20 + 1176;
      v22 = *(v20 + 1184);
      if (v22 >= *(v20 + 1192))
      {
        v23 = sub_692F88(v21, v55);
      }

      else
      {
        sub_5139E8(v22, v55);
        v22[19] = 0;
        v22[20] = 0;
        v22[21] = 0;
        if (*(&v65 + 1) != v65)
        {
          if (((*(&v65 + 1) - v65) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v23 = v22 + 22;
        *(v21 + 8) = v22 + 22;
      }

      *(v21 + 8) = v23;
      sub_23914(v49, v4);
      sub_7E6F6C(v52, v4 + 19);
      sub_7E7CBC(v68, v69, &v67, 0x2E8BA2E8BA2E8BA3 * ((v69 - v68) >> 4));
      sub_7E494C(&v68, v69 - 22);
      if (v65)
      {
        *(&v65 + 1) = v65;
        operator delete(v65);
      }

      if (v64 < 0)
      {
        operator delete(__p);
        if ((v62 & 0x80000000) == 0)
        {
LABEL_68:
          if ((v60 & 0x80000000) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_79;
        }
      }

      else if ((v62 & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      operator delete(v61);
      if ((v60 & 0x80000000) == 0)
      {
LABEL_69:
        if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_80;
      }

LABEL_79:
      operator delete(v59);
      if ((v58 & 0x80000000) == 0)
      {
LABEL_70:
        if (v56 < 0)
        {
          goto LABEL_81;
        }

        goto LABEL_24;
      }

LABEL_80:
      operator delete(v57);
      if (v56 < 0)
      {
LABEL_81:
        operator delete(v55[0]);
      }

LABEL_24:
      v4 = v68;
      if (v68 == v69)
      {
        v12 = v53[1];
        goto LABEL_84;
      }
    }
  }

  v12 = 0;
LABEL_84:
  v24 = a2[1];
  v25 = 0x5DDB1ADCB91F64A7 * ((v24 - *a2) >> 4);
  if (v12 != v25 && v24 != *a2)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      sub_7E188C(a1, a3, v28, (*a2 + v27));
      v28 = (v28 + 1);
      v27 += 12656;
    }

    while (v25 != v28);
  }

  v29 = v50[0];
  if (v50[0])
  {
    do
    {
      v34 = *v29;
      if (*(v29 + 39) < 0)
      {
        operator delete(v29[2]);
      }

      operator delete(v29);
      v29 = v34;
    }

    while (v34);
  }

  v30 = v49[0];
  v49[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  v31 = v53[0];
  if (v53[0])
  {
    do
    {
      v32 = *v31;
      operator delete(v31);
      v31 = v32;
    }

    while (v32);
  }

  v33 = v52[0];
  v52[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  if (v68)
  {
    sub_7E494C(&v68, v68);
    operator delete(v68);
  }
}

void sub_7E03FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  v49 = *v44;
  if (*v44)
  {
    *(v46 + 160) = v49;
    operator delete(v49);
  }

  sub_3E5388(v46);
  *(v45 + 8) = v46;
  sub_7DEDD0(&a44);
  sub_23D9C(&a33);
  sub_11BD8(&a39);
  sub_7E4910((v47 - 144));
  _Unwind_Resume(a1);
}

_BYTE *sub_7E04F4(_BYTE *result, uint64_t *a2)
{
  v3 = result;
  if ((*result & 1) != 0 || result[1] == 1)
  {
    v4 = *a2;
    v5 = a2[1];
    if (*a2 == v5)
    {
      goto LABEL_11;
    }

    v6 = v4 + 976;
    do
    {
      result = sub_68EC38(v4, v3[2]);
      v4 += 976;
      if (result)
      {
        v7 = v6 == v5;
      }

      else
      {
        v7 = 1;
      }

      v6 += 976;
    }

    while (!v7);
    if (result)
    {
LABEL_11:
      memset(v11, 0, sizeof(v11));
      v12 = 1065353216;
      sub_7E0644(v3, a2, v11);
      if (v3[1] == 1)
      {
        sub_7E0784(v3, a2, v11);
      }

      if (*v3 == 1)
      {
        if ((v3[4] & 1) != 0 || (v3[3] & 1) != 0 || (v8 = *a2, v9 = a2[1], *a2 == v9))
        {
LABEL_19:
          sub_7CC804(a2);
        }

        else
        {
          while (1)
          {
            v10 = nullsub_1(v8);
            if (v10[1] - *v10 != 12656)
            {
              break;
            }

            v8 += 7808;
            if (v8 == v9)
            {
              goto LABEL_19;
            }
          }
        }
      }

      return sub_7DCC34(v11);
    }
  }

  return result;
}

void sub_7E0644(uint64_t a1, uint64_t *a2, void *a3)
{
  *v17 = 0u;
  *__p = 0u;
  v19 = 1065353216;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v8 = nullsub_1(v3);
      sub_7DE500(a1, *v8, v17);
      v3 += 7808;
    }

    while (v3 != v4);
    v9 = a2[1] - *a2;
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0x4FBCDA3AC10C9715 * (v9 >> 7);
      do
      {
        v13 = nullsub_1(*a2 + v10);
        sub_7E0E44(a1, *v13, v11++, v17, a3);
        v10 += 7808;
      }

      while (v12 != v11);
    }
  }

  v14 = __p[0];
  if (__p[0])
  {
    do
    {
      v15 = *v14;
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = v17[0];
  v17[0] = 0;
  if (v16)
  {
    operator delete(v16);
  }
}

void sub_7E0784(uint64_t a1, void *a2, uint64_t a3)
{
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v6 = *(a3 + 16);
  if (v6)
  {
    while (1)
    {
      v7 = v6[21];
      v8 = *(v6 + 22);
      v9 = v6[23];
      sub_5139E8(v53, v6 + 1);
      *&v63 = v7;
      *(&v63 + 1) = v8;
      v64 = v9;
      if (v8 >= 0.0)
      {
        v10 = v67;
        if (v67 >= v68)
        {
          v12 = sub_7E7608(&v66, v53);
        }

        else
        {
          sub_5139E8(v67, v53);
          v11 = v63;
          v10[21] = v64;
          *(v10 + 19) = v11;
          v12 = v10 + 22;
        }

        v67 = v12;
        sub_7E657C(v66, v12, v50, 0x2E8BA2E8BA2E8BA3 * ((v12 - v66) >> 4));
      }

      if (v62 < 0)
      {
        operator delete(__p);
        if ((v60 & 0x80000000) == 0)
        {
LABEL_11:
          if ((v58 & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_17;
        }
      }

      else if ((v60 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(v59);
      if ((v58 & 0x80000000) == 0)
      {
LABEL_12:
        if ((v56 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

LABEL_17:
      operator delete(v57);
      if ((v56 & 0x80000000) == 0)
      {
LABEL_13:
        if (v54 < 0)
        {
          goto LABEL_19;
        }

        goto LABEL_3;
      }

LABEL_18:
      operator delete(v55);
      if (v54 < 0)
      {
LABEL_19:
        operator delete(v53[0]);
      }

LABEL_3:
      v6 = *v6;
      if (!v6)
      {
        v6 = v66;
        v13 = v67;
        goto LABEL_22;
      }
    }
  }

  v13 = 0;
LABEL_22:
  *v50 = 0u;
  *v51 = 0u;
  v52 = 1065353216;
  *v47 = 0u;
  *v48 = 0u;
  v49 = 1065353216;
  if (v6 != v13)
  {
    while (1)
    {
      v14 = v51[1];
      if (v51[1] >= (0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7)))
      {
        goto LABEL_77;
      }

      if (sub_138B0(v47, v6))
      {
LABEL_24:
        sub_7E7954(v66, v67, v53, 0x2E8BA2E8BA2E8BA3 * ((v67 - v66) >> 4));
        sub_7E494C(&v66, v67 - 22);
        goto LABEL_25;
      }

      v15 = v6[19];
      if (v50[1])
      {
        v16 = vcnt_s8(v50[1]);
        v16.i16[0] = vaddlv_u8(v16);
        if (v16.u32[0] > 1uLL)
        {
          v17 = v6[19];
          if (v15 >= v50[1])
          {
            v17 = v15 % v50[1];
          }
        }

        else
        {
          v17 = (v50[1] - 1) & v15;
        }

        v18 = *(v50[0] + v17);
        if (v18)
        {
          v19 = *v18;
          if (v19)
          {
            if (v16.u32[0] < 2uLL)
            {
              while (1)
              {
                v21 = v19[1];
                if (v15 == v21)
                {
                  if (v19[2] == v15)
                  {
                    goto LABEL_24;
                  }
                }

                else if ((v21 & (v50[1] - 1)) != v17)
                {
                  goto LABEL_48;
                }

                v19 = *v19;
                if (!v19)
                {
                  goto LABEL_48;
                }
              }
            }

            do
            {
              v20 = v19[1];
              if (v15 == v20)
              {
                if (v19[2] == v15)
                {
                  goto LABEL_24;
                }
              }

              else
              {
                if (v20 >= v50[1])
                {
                  v20 %= v50[1];
                }

                if (v20 != v17)
                {
                  break;
                }
              }

              v19 = *v19;
            }

            while (v19);
          }
        }
      }

LABEL_48:
      v22 = sub_7E10C4(a2, v15);
      v23 = *nullsub_1(v22);
      sub_5139E8(v37, v6);
      sub_7E12E0(v23, v6, &v35);
      sub_5139E8(v53, v37);
      v63 = 0uLL;
      v64 = 0;
      if (v36 != v35)
      {
        if (((v36 - v35) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v46 < 0)
      {
        operator delete(v45);
        if ((v44 & 0x80000000) == 0)
        {
LABEL_55:
          if ((v42 & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_68;
        }
      }

      else if ((v44 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      operator delete(v43);
      if ((v42 & 0x80000000) == 0)
      {
LABEL_56:
        if (v40 < 0)
        {
          goto LABEL_69;
        }

        goto LABEL_57;
      }

LABEL_68:
      operator delete(v41);
      if (v40 < 0)
      {
LABEL_69:
        operator delete(v39);
        if ((v38 & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_70;
      }

LABEL_57:
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

LABEL_70:
      operator delete(v37[0]);
LABEL_58:
      sub_68ED40((*a2 + 7808 * v6[19]), v53);
      sub_23914(v47, v6);
      sub_7E6F6C(v50, v6 + 19);
      sub_7E7954(v66, v67, &v65, 0x2E8BA2E8BA2E8BA3 * ((v67 - v66) >> 4));
      sub_7E494C(&v66, v67 - 22);
      if (v63)
      {
        *(&v63 + 1) = v63;
        operator delete(v63);
      }

      if (v62 < 0)
      {
        operator delete(__p);
        if ((v60 & 0x80000000) == 0)
        {
LABEL_62:
          if ((v58 & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_73;
        }
      }

      else if ((v60 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      operator delete(v59);
      if ((v58 & 0x80000000) == 0)
      {
LABEL_63:
        if ((v56 & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_74;
      }

LABEL_73:
      operator delete(v57);
      if ((v56 & 0x80000000) == 0)
      {
LABEL_64:
        if (v54 < 0)
        {
          goto LABEL_75;
        }

        goto LABEL_25;
      }

LABEL_74:
      operator delete(v55);
      if (v54 < 0)
      {
LABEL_75:
        operator delete(v53[0]);
      }

LABEL_25:
      v6 = v66;
      if (v66 == v67)
      {
        v14 = v51[1];
        goto LABEL_77;
      }
    }
  }

  v14 = 0;
LABEL_77:
  v24 = a2[1];
  v25 = 0x4FBCDA3AC10C9715 * ((v24 - *a2) >> 7);
  if (v14 != v25 && v24 != *a2)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      sub_7E14F4(a1, a3, v28, (*a2 + v27));
      v28 = (v28 + 1);
      v27 += 7808;
    }

    while (v25 != v28);
  }

  v29 = v48[0];
  if (v48[0])
  {
    do
    {
      v34 = *v29;
      if (*(v29 + 39) < 0)
      {
        operator delete(v29[2]);
      }

      operator delete(v29);
      v29 = v34;
    }

    while (v34);
  }

  v30 = v47[0];
  v47[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  v31 = v51[0];
  if (v51[0])
  {
    do
    {
      v32 = *v31;
      operator delete(v31);
      v31 = v32;
    }

    while (v32);
  }

  v33 = v50[0];
  v50[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  if (v66)
  {
    sub_7E494C(&v66, v66);
    operator delete(v66);
  }
}

void sub_7E0D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62)
{
  if (__p)
  {
    a62 = __p;
    operator delete(__p);
  }

  sub_3E5388(&a42);
  if (a9)
  {
    operator delete(a9);
  }

  sub_3E5388(&a12);
  sub_23D9C(&a31);
  sub_11BD8(&a37);
  sub_7E4910((v62 - 144));
  _Unwind_Resume(a1);
}

void sub_7E0E44(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v5 = a2[157] - a2[156];
  if (v5)
  {
    v8 = 0;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 5);
    do
    {
      v10 = sub_50EFDC(a2 + 156, v8);
      if (!sub_734C10(v10))
      {
        goto LABEL_3;
      }

      v11 = *(sub_50EFDC(a2 + 156, v8) + 152);
      if (v8 >= -1 - 0x3333333333333333 * ((a2[157] - a2[156]) >> 5))
      {
        v12 = sub_4D1DC0(a2);
      }

      else
      {
        v12 = *(sub_50EFDC(a2 + 156, v8 + 1) + 152);
      }

      sub_5139E8(v26, v10);
      v36 = a3;
      v24 = 0;
      v25 = 0;
      v13 = sub_7E5BFC(a5, v26);
      v14 = v11 >= v12;
      if (v11 > v12)
      {
        v12 = v11;
      }

      if (!v14)
      {
        v15 = v13;
        do
        {
          v16 = *(sub_4D1F50(a2, v11) + 32);
          LODWORD(v23) = v16;
          BYTE6(v23) = BYTE6(v16);
          WORD2(v23) = WORD2(v16);
          v24 = &v23;
          v17 = *(sub_7E5858(a4, &v23) + 6);
          v19 = sub_4D23F8(a2, v11, v18);
          v20.f64[0] = v19 / v17;
          v20.f64[1] = v19;
          v15[11] = vaddq_f64(v20, v15[11]);
          ++v11;
        }

        while (v12 != v11);
      }

      if (v35 < 0)
      {
        operator delete(__p);
        if ((v33 & 0x80000000) == 0)
        {
LABEL_15:
          if ((v31 & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_21;
        }
      }

      else if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      operator delete(v32);
      if ((v31 & 0x80000000) == 0)
      {
LABEL_16:
        if ((v29 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }

LABEL_21:
      operator delete(v30);
      if ((v29 & 0x80000000) == 0)
      {
LABEL_17:
        if (v27 < 0)
        {
          goto LABEL_23;
        }

        goto LABEL_3;
      }

LABEL_22:
      operator delete(v28);
      if (v27 < 0)
      {
LABEL_23:
        operator delete(v26[0]);
      }

LABEL_3:
      ++v8;
    }

    while (v8 != v9);
  }
}

void sub_7E1074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_7E1088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_7E109C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_7E10B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7E10C4(void *a1, unint64_t a2)
{
  if (0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7));
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

  return *a1 + 7808 * a2;
}

void sub_7E1200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void *sub_7E12E0@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = result[156];
  v5 = result[157];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 != v5)
  {
    v7 = result;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 5);
    if (v8 != 1)
    {
      for (i = 1; i != v8; ++i)
      {
        v11 = sub_50EFDC(v7 + 156, i - 1);
        if (!sub_734E58(v11, a2))
        {
          v12 = sub_50EFDC(v7 + 156, i);
          v24 = sub_4D2544(v7, 0, 1, v11[19], 0, v13);
          v15 = sub_4D2544(v7, 0, 1, *(v12 + 152), 0, v14);
          v23 = v15;
          v16 = a3[1];
          if (v16 >= a3[2])
          {
            v10 = sub_7E6E60(a3, &v24, &v23);
          }

          else
          {
            sub_3320D0(a3[1], v24, v15);
            v10 = (v16 + 16);
          }

          a3[1] = v10;
        }
      }

      v5 = v7[157];
    }

    result = sub_734D94((v5 - 160), a2);
    if (result)
    {
      v18 = sub_4D2544(v7, 0, 1, *(v7[157] - 8), 0, v17);
      v24 = v18;
      v19 = sub_4D1DC0(v7);
      v21 = sub_4D2544(v7, 0, 1, v19 - 1, 1u, v20);
      v23 = v21;
      v22 = a3[1];
      if (v22 >= a3[2])
      {
        result = sub_7E6E60(a3, &v24, &v23);
      }

      else
      {
        sub_3320D0(a3[1], v18, v21);
        result = (v22 + 16);
      }

      a3[1] = result;
    }
  }

  return result;
}

void sub_7E14A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_7E14F4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v7 = sub_58BBC(a4);
  if (*v7 == v7[1])
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        do
        {
          if (v8[21] != a3 || *(v9 + 21) == a3 && *(v8 + 22) < v9[22])
          {
            v8 = v9;
          }

          v9 = *v9;
        }

        while (v9);
      }

      v10 = sub_5139E8(&v37, v8 + 1);
    }

    else
    {
      v10 = sub_734CE0(&v37);
    }

    if (!sub_734C10(v10))
    {
      goto LABEL_31;
    }

    v11 = *nullsub_1(a4);
    sub_5139E8(v14, &v37);
    sub_7E12E0(v11, &v37, &v12);
    sub_5139E8(v24, v14);
    __p = 0;
    v35 = 0;
    v36 = 0;
    if (v13 != v12)
    {
      if (((v13 - v12) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    if (v23 < 0)
    {
      operator delete(v22);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_21:
        if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_39;
      }
    }

    else if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    operator delete(v20);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_22:
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }

LABEL_39:
    operator delete(v18);
    if ((v17 & 0x80000000) == 0)
    {
LABEL_23:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_41:
      operator delete(v14[0]);
LABEL_24:
      sub_68ED40(a4, v24);
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v33 < 0)
      {
        operator delete(v32);
        if ((v31 & 0x80000000) == 0)
        {
LABEL_28:
          if ((v29 & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_44;
        }
      }

      else if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      operator delete(v30);
      if ((v29 & 0x80000000) == 0)
      {
LABEL_29:
        if ((v27 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_45:
        operator delete(v26);
        if (v25 < 0)
        {
          goto LABEL_46;
        }

LABEL_31:
        if ((v46 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_47;
      }

LABEL_44:
      operator delete(v28);
      if ((v27 & 0x80000000) == 0)
      {
LABEL_30:
        if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

LABEL_46:
        operator delete(v24[0]);
        if ((v46 & 0x80000000) == 0)
        {
LABEL_32:
          if ((v44 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_48;
        }

LABEL_47:
        operator delete(v45);
        if ((v44 & 0x80000000) == 0)
        {
LABEL_33:
          if ((v42 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_49;
        }

LABEL_48:
        operator delete(v43);
        if ((v42 & 0x80000000) == 0)
        {
LABEL_34:
          if ((v40 & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_50;
        }

LABEL_49:
        operator delete(v41);
        if ((v40 & 0x80000000) == 0)
        {
LABEL_35:
          if ((v38 & 0x80000000) == 0)
          {
            return;
          }

          goto LABEL_51;
        }

LABEL_50:
        operator delete(v39);
        if ((v38 & 0x80000000) == 0)
        {
          return;
        }

LABEL_51:
        operator delete(v37);
        return;
      }

      goto LABEL_45;
    }

LABEL_40:
    operator delete(v16);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_41;
  }
}

void sub_7E17E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_7DEDD0(&a32);
  sub_3E5388(v32 - 200);
  _Unwind_Resume(a1);
}

void sub_7E17FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_3E5388(&a13);
  sub_3E5388(v52 - 200);
  _Unwind_Resume(a1);
}

void sub_7E188C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  if (a4[147] == a4[148])
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        do
        {
          if (v5[21] != a3 || *(v6 + 21) == a3 && *(v5 + 22) < v6[22])
          {
            v5 = v6;
          }

          v6 = *v6;
        }

        while (v6);
      }

      v7 = sub_5139E8(&v33, v5 + 1);
    }

    else
    {
      v7 = sub_734CE0(&v33);
    }

    if (!sub_734C10(v7))
    {
      goto LABEL_31;
    }

    sub_5139E8(v10, &v33);
    sub_7E12E0(a4, &v33, &v8);
    sub_5139E8(v20, v10);
    __p = 0;
    v31 = 0;
    v32 = 0;
    if (v9 != v8)
    {
      if (((v9 - v8) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    if (v19 < 0)
    {
      operator delete(v18);
      if ((v17 & 0x80000000) == 0)
      {
LABEL_21:
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_39;
      }
    }

    else if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    operator delete(v16);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_22:
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }

LABEL_39:
    operator delete(v14);
    if ((v13 & 0x80000000) == 0)
    {
LABEL_23:
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_41:
      operator delete(v10[0]);
LABEL_24:
      sub_68ED88((a4 + 147), v20);
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      if (v29 < 0)
      {
        operator delete(v28);
        if ((v27 & 0x80000000) == 0)
        {
LABEL_28:
          if ((v25 & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_44;
        }
      }

      else if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      operator delete(v26);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_29:
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_45:
        operator delete(v22);
        if (v21 < 0)
        {
          goto LABEL_46;
        }

LABEL_31:
        if ((v42 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_47;
      }

LABEL_44:
      operator delete(v24);
      if ((v23 & 0x80000000) == 0)
      {
LABEL_30:
        if ((v21 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

LABEL_46:
        operator delete(v20[0]);
        if ((v42 & 0x80000000) == 0)
        {
LABEL_32:
          if ((v40 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_48;
        }

LABEL_47:
        operator delete(v41);
        if ((v40 & 0x80000000) == 0)
        {
LABEL_33:
          if ((v38 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_49;
        }

LABEL_48:
        operator delete(v39);
        if ((v38 & 0x80000000) == 0)
        {
LABEL_34:
          if ((v36 & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_50;
        }

LABEL_49:
        operator delete(v37);
        if ((v36 & 0x80000000) == 0)
        {
LABEL_35:
          if ((v34 & 0x80000000) == 0)
          {
            return;
          }

          goto LABEL_51;
        }

LABEL_50:
        operator delete(v35);
        if ((v34 & 0x80000000) == 0)
        {
          return;
        }

LABEL_51:
        operator delete(v33);
        return;
      }

      goto LABEL_45;
    }

LABEL_40:
    operator delete(v12);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_41;
  }
}

void sub_7E1B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_7DEDD0(&a32);
  sub_3E5388(v32 - 200);
  _Unwind_Resume(a1);
}

void sub_7E1B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_3E5388(&a13);
  sub_3E5388(v52 - 200);
  _Unwind_Resume(a1);
}

void sub_7E1BF8(BOOL *a1, void *a2)
{
  v6 = 21;
  strcpy(__p, "output_all_road_names");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_7E1CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7E1D14(BOOL *a1, uint64_t a2)
{
  v5[23] = 10;
  strcpy(v5, "RouteNamer");
  memset(v4, 0, sizeof(v4));
  v3 = sub_3AEC94(a2, v5, v4);
  sub_41D820(v3, v6);
  sub_7E42D4(a1, v6);
}

void sub_7E1E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_7E1EB8(BOOL *a1, uint64_t a2, uint64_t a3)
{
  v7[23] = 10;
  strcpy(v7, "RouteNamer");
  memset(v6, 0, sizeof(v6));
  v5 = sub_3AEC94(a2, v7, v6);
  sub_41D60C(v5, 2u, *(a3 + 1566), v8);
  sub_7E42D4(a1, v8);
}

void sub_7E2030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_7E206C(uint64_t result, void *a2)
{
  if (*(result + 1) == 1)
  {
    memset(v4, 0, sizeof(v4));
    v5 = 1065353216;
    v2 = result;
    sub_7E20E8(result, a2, v4);
    sub_7E2218(v2, a2, v4);
    return sub_7DCC34(v4);
  }

  return result;
}

void sub_7E20E8(uint64_t a1, uint64_t a2, void *a3)
{
  *v15 = 0u;
  *__p = 0u;
  v17 = 1065353216;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    do
    {
      sub_7E32F0(a1, v3, v15);
      v3 += 1582;
    }

    while (v3 != v4);
    v8 = *(a2 + 8) - *a2;
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0x5DDB1ADCB91F64A7 * (v8 >> 4);
      do
      {
        sub_7E351C(a1, (*a2 + v9), v10++, v15, a3);
        v9 += 12656;
      }

      while (v11 != v10);
    }
  }

  v12 = __p[0];
  if (__p[0])
  {
    do
    {
      v13 = *v12;
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = v15[0];
  v15[0] = 0;
  if (v14)
  {
    operator delete(v14);
  }
}

void sub_7E2218(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v4 = *(a3 + 16);
  if (v4)
  {
    while (1)
    {
      v5 = v4[21];
      v6 = *(v4 + 22);
      v7 = v4[23];
      sub_5139E8(v55, v4 + 1);
      *&v65 = v5;
      *(&v65 + 1) = v6;
      v66 = v7;
      if (v6 >= 0.0)
      {
        v8 = v69;
        if (v69 >= v70)
        {
          v10 = sub_7E8024(&v68, v55);
        }

        else
        {
          sub_5139E8(v69, v55);
          v9 = v65;
          v8[21] = v66;
          *(v8 + 19) = v9;
          v10 = v8 + 22;
        }

        v69 = v10;
        sub_7E657C(v68, v10, v52, 0x2E8BA2E8BA2E8BA3 * ((v10 - v68) >> 4));
      }

      if (v64 < 0)
      {
        operator delete(__p);
        if ((v62 & 0x80000000) == 0)
        {
LABEL_11:
          if ((v60 & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_17;
        }
      }

      else if ((v62 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(v61);
      if ((v60 & 0x80000000) == 0)
      {
LABEL_12:
        if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

LABEL_17:
      operator delete(v59);
      if ((v58 & 0x80000000) == 0)
      {
LABEL_13:
        if (v56 < 0)
        {
          goto LABEL_19;
        }

        goto LABEL_3;
      }

LABEL_18:
      operator delete(v57);
      if (v56 < 0)
      {
LABEL_19:
        operator delete(v55[0]);
      }

LABEL_3:
      v4 = *v4;
      if (!v4)
      {
        v4 = v68;
        v11 = v69;
        goto LABEL_22;
      }
    }
  }

  v11 = 0;
LABEL_22:
  *v52 = 0u;
  *v53 = 0u;
  v54 = 1065353216;
  *v49 = 0u;
  *v50 = 0u;
  v51 = 1065353216;
  if (v4 != v11)
  {
    while (1)
    {
      v12 = v53[1];
      if (v53[1] >= (0x5DDB1ADCB91F64A7 * ((a2[1] - *a2) >> 4)))
      {
        goto LABEL_84;
      }

      if (sub_138B0(v49, v4))
      {
LABEL_27:
        sub_7E86D8(v68, v69, v55, 0x2E8BA2E8BA2E8BA3 * ((v69 - v68) >> 4));
        sub_7E494C(&v68, v69 - 22);
        goto LABEL_24;
      }

      v13 = v4[19];
      if (v52[1])
      {
        v14 = vcnt_s8(v52[1]);
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] > 1uLL)
        {
          v15 = v4[19];
          if (v13 >= v52[1])
          {
            v15 = v13 % v52[1];
          }
        }

        else
        {
          v15 = (v52[1] - 1) & v13;
        }

        v16 = *(v52[0] + v15);
        if (v16)
        {
          v17 = *v16;
          if (v17)
          {
            if (v14.u32[0] < 2uLL)
            {
              while (1)
              {
                v19 = v17[1];
                if (v13 == v19)
                {
                  if (v17[2] == v13)
                  {
                    goto LABEL_27;
                  }
                }

                else if ((v19 & (v52[1] - 1)) != v15)
                {
                  goto LABEL_48;
                }

                v17 = *v17;
                if (!v17)
                {
                  goto LABEL_48;
                }
              }
            }

            do
            {
              v18 = v17[1];
              if (v13 == v18)
              {
                if (v17[2] == v13)
                {
                  goto LABEL_27;
                }
              }

              else
              {
                if (v18 >= v52[1])
                {
                  v18 %= v52[1];
                }

                if (v18 != v15)
                {
                  break;
                }
              }

              v17 = *v17;
            }

            while (v17);
          }
        }
      }

LABEL_48:
      sub_5139E8(v39, v4);
      sub_7E39BC((*a2 + 12656 * v4[19]), v4, &v37);
      sub_5139E8(v55, v39);
      v65 = 0uLL;
      v66 = 0;
      if (v38 != v37)
      {
        if (((v38 - v37) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v48 < 0)
      {
        operator delete(v47);
        if ((v46 & 0x80000000) == 0)
        {
LABEL_55:
          if ((v44 & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_74;
        }
      }

      else if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      operator delete(v45);
      if ((v44 & 0x80000000) == 0)
      {
LABEL_56:
        if (v42 < 0)
        {
          goto LABEL_75;
        }

        goto LABEL_57;
      }

LABEL_74:
      operator delete(v43);
      if (v42 < 0)
      {
LABEL_75:
        operator delete(v41);
        if ((v40 & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_76;
      }

LABEL_57:
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

LABEL_76:
      operator delete(v39[0]);
LABEL_58:
      v20 = *a2 + 12656 * v4[19];
      v21 = v20 + 1176;
      v22 = *(v20 + 1184);
      if (v22 >= *(v20 + 1192))
      {
        v23 = sub_692F88(v21, v55);
      }

      else
      {
        sub_5139E8(v22, v55);
        v22[19] = 0;
        v22[20] = 0;
        v22[21] = 0;
        if (*(&v65 + 1) != v65)
        {
          if (((*(&v65 + 1) - v65) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v23 = v22 + 22;
        *(v21 + 8) = v22 + 22;
      }

      *(v21 + 8) = v23;
      sub_23914(v49, v4);
      sub_7E6F6C(v52, v4 + 19);
      sub_7E86D8(v68, v69, &v67, 0x2E8BA2E8BA2E8BA3 * ((v69 - v68) >> 4));
      sub_7E494C(&v68, v69 - 22);
      if (v65)
      {
        *(&v65 + 1) = v65;
        operator delete(v65);
      }

      if (v64 < 0)
      {
        operator delete(__p);
        if ((v62 & 0x80000000) == 0)
        {
LABEL_68:
          if ((v60 & 0x80000000) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_79;
        }
      }

      else if ((v62 & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      operator delete(v61);
      if ((v60 & 0x80000000) == 0)
      {
LABEL_69:
        if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_80;
      }

LABEL_79:
      operator delete(v59);
      if ((v58 & 0x80000000) == 0)
      {
LABEL_70:
        if (v56 < 0)
        {
          goto LABEL_81;
        }

        goto LABEL_24;
      }

LABEL_80:
      operator delete(v57);
      if (v56 < 0)
      {
LABEL_81:
        operator delete(v55[0]);
      }

LABEL_24:
      v4 = v68;
      if (v68 == v69)
      {
        v12 = v53[1];
        goto LABEL_84;
      }
    }
  }

  v12 = 0;
LABEL_84:
  v24 = a2[1];
  v25 = 0x5DDB1ADCB91F64A7 * ((v24 - *a2) >> 4);
  if (v12 != v25 && v24 != *a2)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      sub_7E3F68(a1, a3, v28, (*a2 + v27));
      v28 = (v28 + 1);
      v27 += 12656;
    }

    while (v25 != v28);
  }

  v29 = v50[0];
  if (v50[0])
  {
    do
    {
      v34 = *v29;
      if (*(v29 + 39) < 0)
      {
        operator delete(v29[2]);
      }

      operator delete(v29);
      v29 = v34;
    }

    while (v34);
  }

  v30 = v49[0];
  v49[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  v31 = v53[0];
  if (v53[0])
  {
    do
    {
      v32 = *v31;
      operator delete(v31);
      v31 = v32;
    }

    while (v32);
  }

  v33 = v52[0];
  v52[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  if (v68)
  {
    sub_7E494C(&v68, v68);
    operator delete(v68);
  }
}

void sub_7E28A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  v49 = *v44;
  if (*v44)
  {
    *(v46 + 160) = v49;
    operator delete(v49);
  }

  sub_3E5388(v46);
  *(v45 + 8) = v46;
  sub_7DEDD0(&a44);
  sub_23D9C(&a33);
  sub_11BD8(&a39);
  sub_7E4910((v47 - 144));
  _Unwind_Resume(a1);
}

_BYTE *sub_7E29A0(_BYTE *result, uint64_t *a2)
{
  v3 = result;
  if ((*result & 1) != 0 || result[1] == 1)
  {
    v4 = *a2;
    v5 = a2[1];
    if (*a2 == v5)
    {
      goto LABEL_11;
    }

    v6 = v4 + 976;
    do
    {
      result = sub_68EC38(v4, v3[2]);
      v4 += 976;
      if (result)
      {
        v7 = v6 == v5;
      }

      else
      {
        v7 = 1;
      }

      v6 += 976;
    }

    while (!v7);
    if (result)
    {
LABEL_11:
      memset(v11, 0, sizeof(v11));
      v12 = 1065353216;
      sub_7E2AF0(v3, a2, v11);
      if (v3[1] == 1)
      {
        sub_7E2C30(v3, a2, v11);
      }

      if (*v3 == 1)
      {
        if ((v3[4] & 1) != 0 || (v3[3] & 1) != 0 || (v8 = *a2, v9 = a2[1], *a2 == v9))
        {
LABEL_19:
          sub_7CD604(a2);
        }

        else
        {
          while (1)
          {
            v10 = nullsub_1(v8);
            if (v10[1] - *v10 != 12656)
            {
              break;
            }

            v8 += 7808;
            if (v8 == v9)
            {
              goto LABEL_19;
            }
          }
        }
      }

      return sub_7DCC34(v11);
    }
  }

  return result;
}

void sub_7E2AF0(uint64_t a1, uint64_t *a2, void *a3)
{
  *v17 = 0u;
  *__p = 0u;
  v19 = 1065353216;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v8 = nullsub_1(v3);
      sub_7E32F0(a1, *v8, v17);
      v3 += 7808;
    }

    while (v3 != v4);
    v9 = a2[1] - *a2;
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0x4FBCDA3AC10C9715 * (v9 >> 7);
      do
      {
        v13 = nullsub_1(*a2 + v10);
        sub_7E351C(a1, *v13, v11++, v17, a3);
        v10 += 7808;
      }

      while (v12 != v11);
    }
  }

  v14 = __p[0];
  if (__p[0])
  {
    do
    {
      v15 = *v14;
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = v17[0];
  v17[0] = 0;
  if (v16)
  {
    operator delete(v16);
  }
}

void sub_7E2C30(uint64_t a1, void *a2, uint64_t a3)
{
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v6 = *(a3 + 16);
  if (v6)
  {
    while (1)
    {
      v7 = v6[21];
      v8 = *(v6 + 22);
      v9 = v6[23];
      sub_5139E8(v53, v6 + 1);
      *&v63 = v7;
      *(&v63 + 1) = v8;
      v64 = v9;
      if (v8 >= 0.0)
      {
        v10 = v67;
        if (v67 >= v68)
        {
          v12 = sub_7E8024(&v66, v53);
        }

        else
        {
          sub_5139E8(v67, v53);
          v11 = v63;
          v10[21] = v64;
          *(v10 + 19) = v11;
          v12 = v10 + 22;
        }

        v67 = v12;
        sub_7E657C(v66, v12, v50, 0x2E8BA2E8BA2E8BA3 * ((v12 - v66) >> 4));
      }

      if (v62 < 0)
      {
        operator delete(__p);
        if ((v60 & 0x80000000) == 0)
        {
LABEL_11:
          if ((v58 & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_17;
        }
      }

      else if ((v60 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(v59);
      if ((v58 & 0x80000000) == 0)
      {
LABEL_12:
        if ((v56 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

LABEL_17:
      operator delete(v57);
      if ((v56 & 0x80000000) == 0)
      {
LABEL_13:
        if (v54 < 0)
        {
          goto LABEL_19;
        }

        goto LABEL_3;
      }

LABEL_18:
      operator delete(v55);
      if (v54 < 0)
      {
LABEL_19:
        operator delete(v53[0]);
      }

LABEL_3:
      v6 = *v6;
      if (!v6)
      {
        v6 = v66;
        v13 = v67;
        goto LABEL_22;
      }
    }
  }

  v13 = 0;
LABEL_22:
  *v50 = 0u;
  *v51 = 0u;
  v52 = 1065353216;
  *v47 = 0u;
  *v48 = 0u;
  v49 = 1065353216;
  if (v6 != v13)
  {
    while (1)
    {
      v14 = v51[1];
      if (v51[1] >= (0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7)))
      {
        goto LABEL_77;
      }

      if (sub_138B0(v47, v6))
      {
LABEL_24:
        sub_7E8370(v66, v67, v53, 0x2E8BA2E8BA2E8BA3 * ((v67 - v66) >> 4));
        sub_7E494C(&v66, v67 - 22);
        goto LABEL_25;
      }

      v15 = v6[19];
      if (v50[1])
      {
        v16 = vcnt_s8(v50[1]);
        v16.i16[0] = vaddlv_u8(v16);
        if (v16.u32[0] > 1uLL)
        {
          v17 = v6[19];
          if (v15 >= v50[1])
          {
            v17 = v15 % v50[1];
          }
        }

        else
        {
          v17 = (v50[1] - 1) & v15;
        }

        v18 = *(v50[0] + v17);
        if (v18)
        {
          v19 = *v18;
          if (v19)
          {
            if (v16.u32[0] < 2uLL)
            {
              while (1)
              {
                v21 = v19[1];
                if (v15 == v21)
                {
                  if (v19[2] == v15)
                  {
                    goto LABEL_24;
                  }
                }

                else if ((v21 & (v50[1] - 1)) != v17)
                {
                  goto LABEL_48;
                }

                v19 = *v19;
                if (!v19)
                {
                  goto LABEL_48;
                }
              }
            }

            do
            {
              v20 = v19[1];
              if (v15 == v20)
              {
                if (v19[2] == v15)
                {
                  goto LABEL_24;
                }
              }

              else
              {
                if (v20 >= v50[1])
                {
                  v20 %= v50[1];
                }

                if (v20 != v17)
                {
                  break;
                }
              }

              v19 = *v19;
            }

            while (v19);
          }
        }
      }

LABEL_48:
      v22 = sub_7E37A0(a2, v15);
      v23 = *nullsub_1(v22);
      sub_5139E8(v37, v6);
      sub_7E39BC(v23, v6, &v35);
      sub_5139E8(v53, v37);
      v63 = 0uLL;
      v64 = 0;
      if (v36 != v35)
      {
        if (((v36 - v35) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v46 < 0)
      {
        operator delete(v45);
        if ((v44 & 0x80000000) == 0)
        {
LABEL_55:
          if ((v42 & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_68;
        }
      }

      else if ((v44 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      operator delete(v43);
      if ((v42 & 0x80000000) == 0)
      {
LABEL_56:
        if (v40 < 0)
        {
          goto LABEL_69;
        }

        goto LABEL_57;
      }

LABEL_68:
      operator delete(v41);
      if (v40 < 0)
      {
LABEL_69:
        operator delete(v39);
        if ((v38 & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_70;
      }

LABEL_57:
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

LABEL_70:
      operator delete(v37[0]);
LABEL_58:
      sub_68ED40((*a2 + 7808 * v6[19]), v53);
      sub_23914(v47, v6);
      sub_7E6F6C(v50, v6 + 19);
      sub_7E8370(v66, v67, &v65, 0x2E8BA2E8BA2E8BA3 * ((v67 - v66) >> 4));
      sub_7E494C(&v66, v67 - 22);
      if (v63)
      {
        *(&v63 + 1) = v63;
        operator delete(v63);
      }

      if (v62 < 0)
      {
        operator delete(__p);
        if ((v60 & 0x80000000) == 0)
        {
LABEL_62:
          if ((v58 & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_73;
        }
      }

      else if ((v60 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      operator delete(v59);
      if ((v58 & 0x80000000) == 0)
      {
LABEL_63:
        if ((v56 & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_74;
      }

LABEL_73:
      operator delete(v57);
      if ((v56 & 0x80000000) == 0)
      {
LABEL_64:
        if (v54 < 0)
        {
          goto LABEL_75;
        }

        goto LABEL_25;
      }

LABEL_74:
      operator delete(v55);
      if (v54 < 0)
      {
LABEL_75:
        operator delete(v53[0]);
      }

LABEL_25:
      v6 = v66;
      if (v66 == v67)
      {
        v14 = v51[1];
        goto LABEL_77;
      }
    }
  }

  v14 = 0;
LABEL_77:
  v24 = a2[1];
  v25 = 0x4FBCDA3AC10C9715 * ((v24 - *a2) >> 7);
  if (v14 != v25 && v24 != *a2)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      sub_7E3BD0(a1, a3, v28, (*a2 + v27));
      v28 = (v28 + 1);
      v27 += 7808;
    }

    while (v25 != v28);
  }

  v29 = v48[0];
  if (v48[0])
  {
    do
    {
      v34 = *v29;
      if (*(v29 + 39) < 0)
      {
        operator delete(v29[2]);
      }

      operator delete(v29);
      v29 = v34;
    }

    while (v34);
  }

  v30 = v47[0];
  v47[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  v31 = v51[0];
  if (v51[0])
  {
    do
    {
      v32 = *v31;
      operator delete(v31);
      v31 = v32;
    }

    while (v32);
  }

  v33 = v50[0];
  v50[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  if (v66)
  {
    sub_7E494C(&v66, v66);
    operator delete(v66);
  }
}

void sub_7E3228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62)
{
  if (__p)
  {
    a62 = __p;
    operator delete(__p);
  }

  sub_3E5388(&a42);
  if (a9)
  {
    operator delete(a9);
  }

  sub_3E5388(&a12);
  sub_23D9C(&a31);
  sub_11BD8(&a37);
  sub_7E4910((v62 - 144));
  _Unwind_Resume(a1);
}

unint64_t sub_7E32F0(uint64_t a1, void *a2, void *a3)
{
  result = sub_4D1DDC(a2, v21);
  v5 = v21[0];
  v6 = v21[1];
  v7 = v22;
  v8 = v23;
  if (v21[0])
  {
    if (v22)
    {
      while (1)
      {
        v12 = sub_4D1DC0(v5);
        result = sub_4D1DC0(v7);
        if (v6 >= v12 || v8 >= result)
        {
          if (v6 < v12 == v8 < result)
          {
            return result;
          }
        }

        else
        {
          v13 = sub_4D1F50(v5, v6);
          result = sub_4D1F50(v7, v8);
          if (v13 == result)
          {
            return result;
          }
        }

        v9 = sub_4D1F50(v5, v6);
        v10 = *(v9 + 36);
        LODWORD(v20) = *(v9 + 32);
        WORD2(v20) = v10;
        BYTE6(v20) = (v10 & 0x20000000) == 0;
        v24 = &v20;
        v11 = sub_7E5858(a3, &v20);
        ++*(v11 + 6);
        v6 = (v6 + 1);
      }
    }

    for (result = sub_4D1DC0(v21[0]); v6 < result; result = sub_4D1DC0(v5))
    {
      v17 = sub_4D1F50(v5, v6);
      v18 = *(v17 + 36);
      LODWORD(v20) = *(v17 + 32);
      WORD2(v20) = v18;
      BYTE6(v20) = (v18 & 0x20000000) == 0;
      v24 = &v20;
      v19 = sub_7E5858(a3, &v20);
      ++*(v19 + 6);
      v6 = (v6 + 1);
    }
  }

  else if (v22)
  {
    for (result = sub_4D1DC0(v22); v8 < result; result = sub_4D1DC0(v7))
    {
      v14 = sub_4D1F50(0, v6);
      v15 = *(v14 + 36);
      LODWORD(v20) = *(v14 + 32);
      WORD2(v20) = v15;
      BYTE6(v20) = (v15 & 0x20000000) == 0;
      v24 = &v20;
      v16 = sub_7E5858(a3, &v20);
      ++*(v16 + 6);
      v6 = (v6 + 1);
    }
  }

  return result;
}

void sub_7E351C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v5 = a2[157] - a2[156];
  if (v5)
  {
    v8 = 0;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 5);
    do
    {
      v10 = sub_50EFDC(a2 + 156, v8);
      if (!sub_734C10(v10))
      {
        goto LABEL_3;
      }

      v11 = *(sub_50EFDC(a2 + 156, v8) + 152);
      if (v8 >= -1 - 0x3333333333333333 * ((a2[157] - a2[156]) >> 5))
      {
        v12 = sub_4D1DC0(a2);
      }

      else
      {
        v12 = *(sub_50EFDC(a2 + 156, v8 + 1) + 152);
      }

      sub_5139E8(v27, v10);
      v37 = a3;
      v25 = 0;
      v26 = 0;
      v13 = sub_7E5BFC(a5, v27);
      v14 = v11 >= v12;
      if (v11 > v12)
      {
        v12 = v11;
      }

      if (!v14)
      {
        v15 = v13;
        do
        {
          v16 = sub_4D1F50(a2, v11);
          v17 = *(v16 + 36);
          LODWORD(v24) = *(v16 + 32);
          WORD2(v24) = v17;
          BYTE6(v24) = (v17 & 0x20000000) == 0;
          v25 = &v24;
          v18 = *(sub_7E5858(a4, &v24) + 6);
          v20 = sub_4D23F8(a2, v11, v19);
          v21.f64[0] = v20 / v18;
          v21.f64[1] = v20;
          v15[11] = vaddq_f64(v21, v15[11]);
          ++v11;
        }

        while (v12 != v11);
      }

      if (v36 < 0)
      {
        operator delete(__p);
        if ((v34 & 0x80000000) == 0)
        {
LABEL_15:
          if ((v32 & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_21;
        }
      }

      else if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      operator delete(v33);
      if ((v32 & 0x80000000) == 0)
      {
LABEL_16:
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }

LABEL_21:
      operator delete(v31);
      if ((v30 & 0x80000000) == 0)
      {
LABEL_17:
        if (v28 < 0)
        {
          goto LABEL_23;
        }

        goto LABEL_3;
      }

LABEL_22:
      operator delete(v29);
      if (v28 < 0)
      {
LABEL_23:
        operator delete(v27[0]);
      }

LABEL_3:
      ++v8;
    }

    while (v8 != v9);
  }
}

void sub_7E3750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_7E3764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_7E3778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_7E378C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7E37A0(void *a1, unint64_t a2)
{
  if (0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7));
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

  return *a1 + 7808 * a2;
}

void sub_7E38DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void *sub_7E39BC@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = result[156];
  v5 = result[157];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v4 != v5)
  {
    v7 = result;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 5);
    if (v8 != 1)
    {
      for (i = 1; i != v8; ++i)
      {
        v11 = sub_50EFDC(v7 + 156, i - 1);
        if (!sub_734E58(v11, a2))
        {
          v12 = sub_50EFDC(v7 + 156, i);
          v24 = sub_4D2544(v7, 0, 1, v11[19], 0, v13);
          v15 = sub_4D2544(v7, 0, 1, *(v12 + 152), 0, v14);
          v23 = v15;
          v16 = a3[1];
          if (v16 >= a3[2])
          {
            v10 = sub_7E6E60(a3, &v24, &v23);
          }

          else
          {
            sub_3320D0(a3[1], v24, v15);
            v10 = (v16 + 16);
          }

          a3[1] = v10;
        }
      }

      v5 = v7[157];
    }

    result = sub_734D94((v5 - 160), a2);
    if (result)
    {
      v18 = sub_4D2544(v7, 0, 1, *(v7[157] - 8), 0, v17);
      v24 = v18;
      v19 = sub_4D1DC0(v7);
      v21 = sub_4D2544(v7, 0, 1, v19 - 1, 1u, v20);
      v23 = v21;
      v22 = a3[1];
      if (v22 >= a3[2])
      {
        result = sub_7E6E60(a3, &v24, &v23);
      }

      else
      {
        sub_3320D0(a3[1], v18, v21);
        result = (v22 + 16);
      }

      a3[1] = result;
    }
  }

  return result;
}

void sub_7E3B7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_7E3BD0(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v7 = sub_58BBC(a4);
  if (*v7 == v7[1])
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        do
        {
          if (v8[21] != a3 || *(v9 + 21) == a3 && *(v8 + 22) < v9[22])
          {
            v8 = v9;
          }

          v9 = *v9;
        }

        while (v9);
      }

      v10 = sub_5139E8(&v37, v8 + 1);
    }

    else
    {
      v10 = sub_734CE0(&v37);
    }

    if (!sub_734C10(v10))
    {
      goto LABEL_31;
    }

    v11 = *nullsub_1(a4);
    sub_5139E8(v14, &v37);
    sub_7E39BC(v11, &v37, &v12);
    sub_5139E8(v24, v14);
    __p = 0;
    v35 = 0;
    v36 = 0;
    if (v13 != v12)
    {
      if (((v13 - v12) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v12)
    {
      v13 = v12;
      operator delete(v12);
    }

    if (v23 < 0)
    {
      operator delete(v22);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_21:
        if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_39;
      }
    }

    else if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    operator delete(v20);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_22:
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }

LABEL_39:
    operator delete(v18);
    if ((v17 & 0x80000000) == 0)
    {
LABEL_23:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_41:
      operator delete(v14[0]);
LABEL_24:
      sub_68ED40(a4, v24);
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v33 < 0)
      {
        operator delete(v32);
        if ((v31 & 0x80000000) == 0)
        {
LABEL_28:
          if ((v29 & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_44;
        }
      }

      else if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      operator delete(v30);
      if ((v29 & 0x80000000) == 0)
      {
LABEL_29:
        if ((v27 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_45:
        operator delete(v26);
        if (v25 < 0)
        {
          goto LABEL_46;
        }

LABEL_31:
        if ((v46 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_47;
      }

LABEL_44:
      operator delete(v28);
      if ((v27 & 0x80000000) == 0)
      {
LABEL_30:
        if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

LABEL_46:
        operator delete(v24[0]);
        if ((v46 & 0x80000000) == 0)
        {
LABEL_32:
          if ((v44 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_48;
        }

LABEL_47:
        operator delete(v45);
        if ((v44 & 0x80000000) == 0)
        {
LABEL_33:
          if ((v42 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_49;
        }

LABEL_48:
        operator delete(v43);
        if ((v42 & 0x80000000) == 0)
        {
LABEL_34:
          if ((v40 & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_50;
        }

LABEL_49:
        operator delete(v41);
        if ((v40 & 0x80000000) == 0)
        {
LABEL_35:
          if ((v38 & 0x80000000) == 0)
          {
            return;
          }

          goto LABEL_51;
        }

LABEL_50:
        operator delete(v39);
        if ((v38 & 0x80000000) == 0)
        {
          return;
        }

LABEL_51:
        operator delete(v37);
        return;
      }

      goto LABEL_45;
    }

LABEL_40:
    operator delete(v16);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_41;
  }
}

void sub_7E3EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_7DEDD0(&a32);
  sub_3E5388(v32 - 200);
  _Unwind_Resume(a1);
}

void sub_7E3ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_3E5388(&a13);
  sub_3E5388(v52 - 200);
  _Unwind_Resume(a1);
}

void sub_7E3F68(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  if (a4[147] == a4[148])
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        do
        {
          if (v5[21] != a3 || *(v6 + 21) == a3 && *(v5 + 22) < v6[22])
          {
            v5 = v6;
          }

          v6 = *v6;
        }

        while (v6);
      }

      v7 = sub_5139E8(&v33, v5 + 1);
    }

    else
    {
      v7 = sub_734CE0(&v33);
    }

    if (!sub_734C10(v7))
    {
      goto LABEL_31;
    }

    sub_5139E8(v10, &v33);
    sub_7E39BC(a4, &v33, &v8);
    sub_5139E8(v20, v10);
    __p = 0;
    v31 = 0;
    v32 = 0;
    if (v9 != v8)
    {
      if (((v9 - v8) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    if (v19 < 0)
    {
      operator delete(v18);
      if ((v17 & 0x80000000) == 0)
      {
LABEL_21:
        if ((v15 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_39;
      }
    }

    else if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    operator delete(v16);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_22:
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    }

LABEL_39:
    operator delete(v14);
    if ((v13 & 0x80000000) == 0)
    {
LABEL_23:
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_41:
      operator delete(v10[0]);
LABEL_24:
      sub_68ED88((a4 + 147), v20);
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      if (v29 < 0)
      {
        operator delete(v28);
        if ((v27 & 0x80000000) == 0)
        {
LABEL_28:
          if ((v25 & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_44;
        }
      }

      else if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      operator delete(v26);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_29:
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_45:
        operator delete(v22);
        if (v21 < 0)
        {
          goto LABEL_46;
        }

LABEL_31:
        if ((v42 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_47;
      }

LABEL_44:
      operator delete(v24);
      if ((v23 & 0x80000000) == 0)
      {
LABEL_30:
        if ((v21 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

LABEL_46:
        operator delete(v20[0]);
        if ((v42 & 0x80000000) == 0)
        {
LABEL_32:
          if ((v40 & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_48;
        }

LABEL_47:
        operator delete(v41);
        if ((v40 & 0x80000000) == 0)
        {
LABEL_33:
          if ((v38 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_49;
        }

LABEL_48:
        operator delete(v39);
        if ((v38 & 0x80000000) == 0)
        {
LABEL_34:
          if ((v36 & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_50;
        }

LABEL_49:
        operator delete(v37);
        if ((v36 & 0x80000000) == 0)
        {
LABEL_35:
          if ((v34 & 0x80000000) == 0)
          {
            return;
          }

          goto LABEL_51;
        }

LABEL_50:
        operator delete(v35);
        if ((v34 & 0x80000000) == 0)
        {
          return;
        }

LABEL_51:
        operator delete(v33);
        return;
      }

      goto LABEL_45;
    }

LABEL_40:
    operator delete(v12);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_41;
  }
}

void sub_7E423C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_7DEDD0(&a32);
  sub_3E5388(v32 - 200);
  _Unwind_Resume(a1);
}

void sub_7E4258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_3E5388(&a13);
  sub_3E5388(v52 - 200);
  _Unwind_Resume(a1);
}

void sub_7E42D4(BOOL *a1, void *a2)
{
  v6 = 21;
  strcpy(__p, "output_all_road_names");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_7E43D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7E43F0(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x864B8A7DE6D1DLL)
  {
    sub_1794();
  }

  if (0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 7) > v3)
  {
    v3 = 0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 7);
  }

  if ((0x4FBCDA3AC10C9715 * ((a1[2] - *a1) >> 7)) >= 0x4325C53EF368ELL)
  {
    v5 = 0x864B8A7DE6D1DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x864B8A7DE6D1DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = (a1[1] - *a1) >> 7 << 7;
  sub_6047A4(v15, a2);
  v6 = 7808 * v2 + 7808;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = v15 + v9;
    do
    {
      v13 = sub_789CC8(v12, v11);
      v11 += 7808;
      v12 = v13 + 7808;
    }

    while (v11 != v8);
    do
    {
      sub_5C1158(v7);
      v7 += 7808;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_7E457C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7E48B0(va);
  _Unwind_Resume(a1);
}

void *sub_7E4590(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x7E3F1F8FC7E3F1F9 * ((v2 - *a2) >> 4)) < 0x381C0E070381C1)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_7E4708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  if (*(v14 + 1136) == 1)
  {
    sub_3A9518(v13);
  }

  sub_602010(&a11);
  *(v11 + 8) = v12;
  sub_605394(&a9);
  _Unwind_Resume(a1);
}

void *sub_7E473C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x70913F8BCD29C245 * ((v2 - *a2) >> 3)) < 0x3A196B1EDD80E9)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_7E4874(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_605704(va);
  _Unwind_Resume(a1);
}

void sub_7E4888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_5EBFA8(v4);
  sub_6033B4(va1);
  *(v2 + 8) = v3;
  sub_605704(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7E48B0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 7808;
    sub_5C1158(i - 7808);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***sub_7E4910(void ***a1)
{
  if (*a1)
  {
    sub_7E494C(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_7E494C(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      if (*(v4 - 25) < 0)
      {
        operator delete(*(v4 - 6));
        if ((*(v4 - 57) & 0x80000000) == 0)
        {
LABEL_6:
          if ((*(v4 - 81) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      else if ((*(v4 - 57) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      operator delete(*(v4 - 10));
      if ((*(v4 - 81) & 0x80000000) == 0)
      {
LABEL_7:
        if ((*(v4 - 121) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

LABEL_12:
      operator delete(*(v4 - 13));
      if ((*(v4 - 121) & 0x80000000) == 0)
      {
LABEL_8:
        v5 = v4 - 22;
        if (*(v4 - 153) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_3;
      }

LABEL_13:
      operator delete(*(v4 - 18));
      v5 = v4 - 22;
      if (*(v4 - 153) < 0)
      {
LABEL_14:
        operator delete(*v5);
      }

LABEL_3:
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

double sub_7E4A14(uint64_t *a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
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

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *(&v17 + 1) = 0;
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  a2[1] = 0;
  a2[2] = 0;
  *v6 = v8;
  *(v6 + 8) = v7;
  *(v6 + 16) = v9;
  v10 = a2[3];
  *&dword_18[12 * v2] = v10;
  v11 = a2[4];
  *(v6 + 32) = v11;
  *(v6 + 40) = *(a2 + 10);
  if (v11)
  {
    v12 = *(v10 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v12 >= v9)
      {
        v12 %= v9;
      }
    }

    else
    {
      v12 &= v9 - 1;
    }

    *(v7 + 8 * v12) = 48 * v2 + 24;
    a2[3] = 0;
    a2[4] = 0;
  }

  *&v17 = v6 + 48;
  v13 = a1[1];
  v14 = v6 + *a1 - v13;
  sub_7E4BB0(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  result = *&v17;
  *(a1 + 1) = v17;
  if (v15)
  {
    operator delete(v15);
    return *&v17;
  }

  return result;
}

void sub_7E4B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_7E4CC8(va);
  _Unwind_Resume(a1);
}

void sub_7E4BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v8 = a2 + v6;
      v9 = a4 + v6;
      v11 = *(a2 + v6);
      v10 = *(a2 + v6 + 8);
      *(v8 + 8) = 0;
      *v9 = v11;
      *(v9 + 16) = *(a2 + v6 + 16);
      *(v8 + 16) = 0;
      v12 = *(a2 + v6 + 32);
      v13 = *(a2 + v6 + 40);
      v14 = *(a2 + v6 + 24);
      *(v9 + 8) = v10;
      *(a4 + v6 + 24) = v14;
      *(v9 + 32) = v12;
      *(v9 + 40) = v13;
      if (v12)
      {
        v7 = *(v14 + 8);
        v15 = *(v9 + 16);
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

        *(v10 + 8 * v7) = a4 + v6 + 24;
        *(a2 + v6 + 24) = 0;
        *(a2 + v6 + 32) = 0;
      }

      v6 += 48;
    }

    while (a2 + v6 != a3);
    while (v5 != a3)
    {
      v16 = *(v5 + 24);
      if (v16)
      {
        do
        {
          v18 = *v16;
          if (*(v16 + 39) < 0)
          {
            operator delete(v16[2]);
          }

          operator delete(v16);
          v16 = v18;
        }

        while (v18);
      }

      v17 = *(v5 + 8);
      *(v5 + 8) = 0;
      if (v17)
      {
        operator delete(v17);
      }

      v5 += 48;
    }
  }
}

void **sub_7E4CC8(void **a1)
{
  sub_7E4CFC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_7E4CFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v4 = *(i - 24);
    if (v4)
    {
      do
      {
        v6 = *v4;
        if (*(v4 + 39) < 0)
        {
          operator delete(v4[2]);
        }

        operator delete(v4);
        v4 = v6;
      }

      while (v6);
    }

    v5 = *(i - 40);
    *(i - 40) = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }
}

uint64_t sub_7E4D94(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_7E558C(a1, *a2, *(a2 + 8), 0x5DDB1ADCB91F64A7 * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5 != v4)
  {
    if ((0x2E8BA2E8BA2E8BA3 * ((v5 - v4) >> 4)) < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  sub_7E4590((a1 + 136), (a2 + 136));
  v10 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v10;
  sub_55BD50(a1 + 176, a2 + 176);
  sub_55BD50(a1 + 336, a2 + 336);
  sub_55BD50(a1 + 496, a2 + 496);
  sub_55BD50(a1 + 656, a2 + 656);
  sub_55BD50(a1 + 816, a2 + 816);
  sub_99A14((a1 + 976), (a2 + 976));
  sub_55BD50(a1 + 1000, a2 + 1000);
  *(a1 + 1160) = *(a2 + 1160);
  sub_55F1E8(a1 + 1168, a2 + 1168);
  *(a1 + 1280) = *(a2 + 1280);
  sub_5F4380(a1 + 1288, (a2 + 1288));
  sub_5F49A4(a1 + 2376, a2 + 2376);
  *(a1 + 7192) = 0;
  *(a1 + 7176) = 0u;
  v11 = *(a2 + 7176);
  v12 = *(a2 + 7184);
  if (v12 != v11)
  {
    if (((v12 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = *(a2 + 7200);
  *(a1 + 7208) = *(a2 + 7208);
  *(a1 + 7200) = v13;
  if (*(a2 + 7239) < 0)
  {
    sub_325C((a1 + 7216), *(a2 + 7216), *(a2 + 7224));
  }

  else
  {
    v14 = *(a2 + 7216);
    *(a1 + 7232) = *(a2 + 7232);
    *(a1 + 7216) = v14;
  }

  if (*(a2 + 7263) < 0)
  {
    sub_325C((a1 + 7240), *(a2 + 7240), *(a2 + 7248));
  }

  else
  {
    v15 = *(a2 + 7240);
    *(a1 + 7256) = *(a2 + 7256);
    *(a1 + 7240) = v15;
  }

  sub_55F1E8(a1 + 7264, a2 + 7264);
  *(a1 + 7392) = 0;
  *(a1 + 7376) = 0u;
  sub_605408(a1 + 7376, *(a2 + 7376), *(a2 + 7384), 0xFAFAFAFAFAFAFAFBLL * ((*(a2 + 7384) - *(a2 + 7376)) >> 4));
  sub_7C0E48((a1 + 7400), (a2 + 7400));
  if (*(a2 + 7447) < 0)
  {
    sub_325C((a1 + 7424), *(a2 + 7424), *(a2 + 7432));
  }

  else
  {
    v16 = *(a2 + 7424);
    *(a1 + 7440) = *(a2 + 7440);
    *(a1 + 7424) = v16;
  }

  if (*(a2 + 7471) < 0)
  {
    sub_325C((a1 + 7448), *(a2 + 7448), *(a2 + 7456));
  }

  else
  {
    v17 = *(a2 + 7448);
    *(a1 + 7464) = *(a2 + 7464);
    *(a1 + 7448) = v17;
  }

  if (*(a2 + 7495) < 0)
  {
    sub_325C((a1 + 7472), *(a2 + 7472), *(a2 + 7480));
  }

  else
  {
    v18 = *(a2 + 7472);
    *(a1 + 7488) = *(a2 + 7488);
    *(a1 + 7472) = v18;
  }

  *(a1 + 7512) = 0;
  *(a1 + 7496) = 0u;
  v19 = *(a2 + 7496);
  v20 = *(a2 + 7504);
  if (v20 != v19)
  {
    if (((v20 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 7536) = 0;
  *(a1 + 7520) = 0u;
  sub_5713F4(a1 + 7520, *(a2 + 7520), *(a2 + 7528), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 7528) - *(a2 + 7520)) >> 5));
  *(a1 + 7544) = 0u;
  *(a1 + 7560) = 0;
  sub_5713F4(a1 + 7544, *(a2 + 7544), *(a2 + 7552), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 7552) - *(a2 + 7544)) >> 5));
  sub_7E473C((a1 + 7568), (a2 + 7568));
  sub_7E473C((a1 + 7592), (a2 + 7592));
  *(a1 + 7616) = *(a2 + 7616);
  sub_55BD50(a1 + 7624, a2 + 7624);
  *(a1 + 7800) = 0;
  *(a1 + 7784) = 0u;
  sub_5CEC4C(a1 + 7784, *(a2 + 7784), *(a2 + 7792), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 7792) - *(a2 + 7784)) >> 5));
  return a1;
}

void sub_7E52B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11, char *a12)
{
  if (a12[3375] < 0)
  {
    operator delete(*v14);
    if ((a12[3351] & 0x80000000) == 0)
    {
LABEL_4:
      sub_528FAC((v12 + 7400));
      sub_5D9FE8((v12 + 7376));
      sub_53E440(v12 + 7264);
      if (a12[3167] < 0)
      {
        operator delete(*a10);
        if ((a12[3143] & 0x80000000) == 0)
        {
          goto LABEL_6;
        }
      }

      else if ((a12[3143] & 0x80000000) == 0)
      {
LABEL_6:
        v16 = *(v12 + 7176);
        if (!v16)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      operator delete(*a11);
      v16 = *(v12 + 7176);
      if (!v16)
      {
LABEL_8:
        sub_5C1688(v12 + 2376);
        sub_559E70((v12 + 1288));
        sub_53E440(v12 + 1168);
        sub_53A868(v12 + 1000);
        sub_1A104((v12 + 976));
        sub_53A868(v12 + 816);
        sub_53A868(v12 + 656);
        sub_53A868(v12 + 496);
        sub_53A868(v12 + 336);
        sub_53A868(v12 + 176);
        sub_68B6E8((v12 + 136));
        sub_5EBF44(v13);
        sub_6910B8(v12);
        _Unwind_Resume(a1);
      }

LABEL_7:
      *(v12 + 7184) = v16;
      operator delete(v16);
      goto LABEL_8;
    }
  }

  else if ((a12[3351] & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*a9);
  goto LABEL_4;
}

void sub_7E5560()
{
  if (!*(v0 + v1))
  {
    JUMPOUT(0x7E5490);
  }

  JUMPOUT(0x7E5488);
}

void sub_7E5570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_5F4178(va);
  sub_6910B8(v5);
  _Unwind_Resume(a1);
}

void sub_7E558C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x52DA224E52347)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_7E5688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v11)
  {
    v14 = v10 - v12;
    v15 = -v11;
    do
    {
      v14 = sub_694110(v14) - 12656;
      v15 += 12656;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_7E56C4(&a9);
  _Unwind_Resume(a1);
}

void ***sub_7E56C4(void ***result)
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
          v4 = sub_694110(v4 - 12656);
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

uint64_t sub_7E5740(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 7808;
    sub_78B5C0(i - 7808);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_7E57A0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) != 1)
    {
LABEL_8:
      operator delete(v2);
      return a1;
    }

    if (*(v2 + 167) < 0)
    {
      operator delete(*(v2 + 144));
      if ((*(v2 + 135) & 0x80000000) == 0)
      {
LABEL_5:
        if ((*(v2 + 111) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    else if ((*(v2 + 135) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(v2 + 112));
    if ((*(v2 + 111) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(v2 + 71) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }

LABEL_12:
    operator delete(*(v2 + 88));
    if ((*(v2 + 71) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(v2 + 39) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      operator delete(*(v2 + 16));
      goto LABEL_8;
    }

LABEL_13:
    operator delete(*(v2 + 48));
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  return a1;
}

uint64_t *sub_7E5858(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v4 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v4 = v3 + 1;
  }

  v5 = 0x2127599BF4325C37 * (v4 ^ (v3 >> 23));
  v6 = v5 ^ (v5 >> 47);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_28;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5 ^ (v5 >> 47);
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_28:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (__PAIR64__(*(v11 + 10), *(v11 + 4)) == __PAIR64__(WORD2(v2), v2) && *(v11 + 22) == BYTE6(v2))
        {
          return v11;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_28;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v14 = v11[1];
    if (v14 == v6)
    {
      break;
    }

    if (v14 >= *&v7)
    {
      v14 %= *&v7;
    }

    if (v14 != v9)
    {
      goto LABEL_28;
    }

LABEL_21:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_28;
    }
  }

  if (__PAIR64__(*(v11 + 10), *(v11 + 4)) != __PAIR64__(WORD2(v2), v2) || *(v11 + 22) != BYTE6(v2))
  {
    goto LABEL_21;
  }

  return v11;
}

void *sub_7E5BFC(void *a1, void *a2)
{
  v4 = sub_7E5FB0(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_25;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_25:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        if (sub_734D94(v10 + 2, a2) && v10[21] == a2[19])
        {
          return v10;
        }
      }

      else if ((v11 & (*&v6 - 1)) != v8)
      {
        goto LABEL_25;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v12 = v10[1];
    if (v12 == v5)
    {
      break;
    }

    if (v12 >= *&v6)
    {
      v12 %= *&v6;
    }

    if (v12 != v8)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  if (!sub_734D94(v10 + 2, a2) || v10[21] != a2[19])
  {
    goto LABEL_18;
  }

  return v10;
}

void sub_7E5F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7E57A0(va);
  _Unwind_Resume(a1);
}

void sub_7E5F9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7E57A0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_7E5FB0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 16);
  }

  if (v9 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if (v9 >= 0)
  {
    v4 = HIBYTE(v9);
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_AAD8(&v10, v3, v4);
  if (SHIBYTE(v9) < 0)
  {
    v6 = v5;
    operator delete(__p[0]);
    v5 = v6;
  }

  return ((((v5 + 2656449171u) ^ 0x7A69) << 6) + (((v5 + 2656449171u) ^ 0x7A69) >> 2) + *(a2 + 152) + 2654435769) ^ (v5 + 2656449171u) ^ 0x7A69;
}

uint64_t sub_7E6078(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    if (v6 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 176 * v2;
  v12 = 176 * v2;
  v13 = 0;
  v7 = sub_5139E8(176 * v2, a2);
  *(v7 + 152) = *(a2 + 152);
  *(v7 + 168) = *(a2 + 168);
  v12 += 176;
  sub_7E61D4(a1, &__p);
  v8 = a1[1];
  sub_7E64B4(&__p, v11);
  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_7E61C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7E647C(va);
  _Unwind_Resume(a1);
}

void sub_7E61D4(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = *a1;
    v9 = v4 + *a1 - v6;
    do
    {
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
      *(v9 + 24) = *(v8 + 24);
      v11 = *(v8 + 32);
      *(v9 + 48) = *(v8 + 48);
      *(v9 + 32) = v11;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v9 + 56) = *(v8 + 56);
      *(v9 + 64) = *(v8 + 64);
      v12 = *(v8 + 72);
      *(v9 + 88) = *(v8 + 88);
      *(v9 + 72) = v12;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 72) = 0;
      v13 = *(v8 + 96);
      *(v9 + 112) = *(v8 + 112);
      *(v9 + 96) = v13;
      *(v8 + 104) = 0;
      *(v8 + 112) = 0;
      *(v8 + 96) = 0;
      *(v9 + 120) = *(v8 + 120);
      v14 = *(v8 + 128);
      *(v9 + 144) = *(v8 + 144);
      *(v9 + 128) = v14;
      *(v8 + 136) = 0;
      *(v8 + 144) = 0;
      *(v8 + 128) = 0;
      v15 = *(v8 + 152);
      *(v9 + 168) = *(v8 + 168);
      *(v9 + 152) = v15;
      v8 += 176;
      v9 += 176;
    }

    while (v8 != v6);
  }

  sub_7E635C(a1, v5, v6);
  a2[1] = v7;
  v16 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v16;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
}

void sub_7E635C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    for (i = a2; i != a3; i += 176)
    {
      if (*(i + 151) < 0)
      {
        operator delete(*(i + 128));
        if ((*(i + 119) & 0x80000000) == 0)
        {
LABEL_6:
          if ((*(i + 95) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      else if ((*(i + 119) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      operator delete(*(i + 96));
      if ((*(i + 95) & 0x80000000) == 0)
      {
LABEL_7:
        if ((*(i + 55) & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

LABEL_12:
      operator delete(*(i + 72));
      if ((*(i + 55) & 0x80000000) == 0)
      {
LABEL_8:
        if (*(i + 23) < 0)
        {
          goto LABEL_14;
        }

        continue;
      }

LABEL_13:
      operator delete(*(i + 32));
      if (*(i + 23) < 0)
      {
LABEL_14:
        operator delete(*i);
      }
    }
  }
}

uint64_t sub_7E6414(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 176;
        sub_5ED330(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_7E647C(uint64_t a1)
{
  sub_7E64B4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_7E64B4(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
      if ((*(i - 57) & 0x80000000) == 0)
      {
LABEL_6:
        if ((*(i - 81) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(i - 57) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 80));
    if ((*(i - 81) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(i - 121) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_12:
    operator delete(*(i - 104));
    if ((*(i - 121) & 0x80000000) == 0)
    {
LABEL_8:
      if (*(i - 153) < 0)
      {
        goto LABEL_14;
      }

      continue;
    }

LABEL_13:
    operator delete(*(i - 144));
    if (*(i - 153) < 0)
    {
LABEL_14:
      operator delete(*(i - 176));
    }
  }
}

void sub_7E657C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return;
  }

  v6 = v4 >> 1;
  v7 = (a1 + 176 * (v4 >> 1));
  v8 = a2 - 176;
  v9 = (a2 - 24);
  v10 = (v7 + 19);
  v11 = *(v7 + 20);
  v12 = *(a2 - 16);
  v13 = v11 < v12;
  if (v11 == v12 && (v14 = *(v7 + 21), v15 = *(a2 - 8), v13 = v14 < v15, v14 == v15) && (v13 = *v9 < *v10, *v9 == *v10))
  {
    v16 = *(v7 + 23);
    v17 = v16 < 0;
    if (v16 >= 0)
    {
      v18 = v7;
    }

    else
    {
      v18 = *v7;
    }

    if (v17)
    {
      v19 = v7[1];
    }

    else
    {
      v19 = *(v7 + 23);
    }

    v20 = *(a2 - 153);
    v21 = *(a2 - 168);
    v22 = a2;
    v23 = a2 - 176;
    if ((v20 & 0x80u) == 0)
    {
      v24 = (a2 - 176);
    }

    else
    {
      v24 = *(a2 - 176);
    }

    if ((v20 & 0x80u) == 0)
    {
      v25 = v20;
    }

    else
    {
      v25 = v21;
    }

    if (v25 >= v19)
    {
      v26 = v19;
    }

    else
    {
      v26 = v25;
    }

    v27 = memcmp(v18, v24, v26);
    if (v27)
    {
      v28 = v27;
      a2 = v22;
      v8 = v23;
      if ((v28 & 0x80000000) == 0)
      {
        return;
      }
    }

    else
    {
      a2 = v22;
      v8 = v23;
      if (v19 >= v25)
      {
        return;
      }
    }
  }

  else if (!v13)
  {
    return;
  }

  *v66 = *v8;
  v29 = *(v8 + 16);
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v30 = *(a2 - 152);
  v67 = v29;
  v68 = v30;
  *v69 = *(a2 - 144);
  v31 = *(a2 - 128);
  v32 = *(a2 - 120);
  *(a2 - 136) = 0;
  *(a2 - 128) = 0;
  *(a2 - 144) = 0;
  v70 = v31;
  v71 = v32;
  v72 = *(a2 - 112);
  v33 = *(a2 - 104);
  v74 = *(a2 - 88);
  *v73 = v33;
  *(a2 - 104) = 0;
  *(a2 - 96) = 0;
  v34 = *(a2 - 80);
  v76 = *(a2 - 64);
  *__p = v34;
  *(a2 - 88) = 0;
  *(a2 - 80) = 0;
  *(a2 - 72) = 0;
  *(a2 - 64) = 0;
  v77 = *(a2 - 56);
  v35 = *(a2 - 48);
  v79 = *(a2 - 32);
  v78 = v35;
  *(a2 - 48) = 0;
  *(a2 - 40) = 0;
  *(a2 - 32) = 0;
  v36 = *v9;
  v81 = v9[2];
  v80 = v36;
  sub_52C14C(v8, v7);
  v37 = v7[21];
  *v9 = *v10;
  *(v9 + 2) = v37;
  if (v4 < 2)
  {
    goto LABEL_52;
  }

  v38 = *(&v80 + 1);
  v39 = v81;
  v40 = v80;
  v41 = v66[0];
  if (SHIBYTE(v67) >= 0)
  {
    v41 = v66;
  }

  v64 = v80;
  __s2 = v41;
  if (SHIBYTE(v67) >= 0)
  {
    v42 = HIBYTE(v67);
  }

  else
  {
    v42 = v66[1];
  }

  v43 = v7;
  v44 = v42;
  while (1)
  {
    v45 = v10;
    v46 = v6 - 1;
    v6 = (v6 - 1) >> 1;
    v7 = (a1 + 176 * v6);
    v10 = (v7 + 19);
    v47 = *(v7 + 20);
    v48 = v47 < v38;
    if (v47 == v38)
    {
      v49 = *(v7 + 21);
      v48 = v49 < v39;
      if (v49 == v39)
      {
        v48 = v40 < *v10;
        if (v40 == *v10)
        {
          break;
        }
      }
    }

    if (!v48)
    {
      goto LABEL_51;
    }

LABEL_47:
    sub_52C14C(v43, (a1 + 176 * v6));
    v56 = v7[21];
    *(v43 + 152) = *v10;
    *(v43 + 168) = v56;
    v43 = a1 + 176 * v6;
    v42 = v44;
    if (v46 <= 1)
    {
      goto LABEL_52;
    }
  }

  v50 = *(v7 + 23);
  if (v50 >= 0)
  {
    v51 = (a1 + 176 * v6);
  }

  else
  {
    v51 = *v7;
  }

  if (v50 >= 0)
  {
    v52 = *(v7 + 23);
  }

  else
  {
    v52 = v7[1];
  }

  if (v42 >= v52)
  {
    v53 = v52;
  }

  else
  {
    v53 = v42;
  }

  v54 = v42;
  v55 = memcmp(v51, __s2, v53);
  if (v55)
  {
    v40 = v64;
    if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  v57 = v52 >= v54;
  v40 = v64;
  if (!v57)
  {
    goto LABEL_47;
  }

LABEL_51:
  v7 = v43;
  v10 = v45;
LABEL_52:
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  v58 = *v66;
  v7[2] = v67;
  *v7 = v58;
  HIBYTE(v67) = 0;
  LOBYTE(v66[0]) = 0;
  v7[3] = v68;
  if (*(v7 + 55) < 0)
  {
    operator delete(v7[4]);
  }

  v59 = *v69;
  v7[6] = v70;
  *(v7 + 2) = v59;
  HIBYTE(v70) = 0;
  LOBYTE(v69[0]) = 0;
  v7[7] = v71;
  *(v7 + 16) = v72;
  if (*(v7 + 95) < 0)
  {
    operator delete(v7[9]);
  }

  v60 = *v73;
  v7[11] = v74;
  *(v7 + 9) = v60;
  HIBYTE(v74) = 0;
  LOBYTE(v73[0]) = 0;
  if (*(v7 + 119) < 0)
  {
    operator delete(v7[12]);
  }

  v61 = *__p;
  v7[14] = v76;
  *(v7 + 6) = v61;
  HIBYTE(v76) = 0;
  LOBYTE(__p[0]) = 0;
  *(v7 + 30) = v77;
  if (*(v7 + 151) < 0)
  {
    operator delete(v7[16]);
  }

  v62 = v78;
  v7[18] = v79;
  *(v7 + 8) = v62;
  v63 = v80;
  *(v10 + 2) = v81;
  *v10 = v63;
  if (SHIBYTE(v76) < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v74) < 0)
    {
      goto LABEL_68;
    }

LABEL_64:
    if ((SHIBYTE(v70) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

LABEL_69:
    operator delete(v69[0]);
    if (SHIBYTE(v67) < 0)
    {
LABEL_70:
      operator delete(v66[0]);
    }
  }

  else
  {
    if ((SHIBYTE(v74) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

LABEL_68:
    operator delete(v73[0]);
    if (SHIBYTE(v70) < 0)
    {
      goto LABEL_69;
    }

LABEL_65:
    if (SHIBYTE(v67) < 0)
    {
      goto LABEL_70;
    }
  }
}

__n128 sub_7E69A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v5 = *(a1 + 24);
  v22 = *(a1 + 16);
  v21 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v6 = *(a1 + 56);
  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v7 = *(a1 + 64);
  v26 = *(a1 + 88);
  v25 = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v28 = *(a1 + 112);
  v27 = *(a1 + 96);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a1 + 120);
  v30 = *(a1 + 144);
  v29 = *(a1 + 128);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v32 = *(a1 + 168);
  v31 = *(a1 + 152);
  v11 = sub_7E6D10(a1, a3, a4);
  v12 = v11;
  v13 = (a2 - 176);
  if (a2 - 176 != v11)
  {
    sub_52C14C(v11, (a2 - 176));
    v14 = *(a2 - 24);
    *(v12 + 168) = *(a2 - 8);
    *(v12 + 152) = v14;
    if (*(a2 - 153) < 0)
    {
      operator delete(*v13);
    }

    *(a2 - 160) = v22;
    *v13 = v21;
    *(a2 - 152) = v5;
    v15 = (a2 - 144);
    if (*(a2 - 121) < 0)
    {
      operator delete(*v15);
    }

    *(a2 - 128) = v24;
    *v15 = v23;
    *(a2 - 120) = v6;
    *(a2 - 112) = v7;
    v16 = (a2 - 104);
    if (*(a2 - 81) < 0)
    {
      operator delete(*v16);
    }

    v17 = v12 + 176;
    *(a2 - 88) = v26;
    *v16 = v25;
    v18 = (a2 - 80);
    if (*(a2 - 57) < 0)
    {
      operator delete(*v18);
    }

    *(a2 - 64) = v28;
    *v18 = v27;
    *(a2 - 56) = v8;
    v19 = (a2 - 48);
    if (*(a2 - 25) < 0)
    {
      operator delete(*v19);
    }

    *(a2 - 32) = v30;
    *v19 = v29;
    *(a2 - 8) = v32;
    *(a2 - 24) = v31;
    sub_7E657C(a1, v17, a3, 0x2E8BA2E8BA2E8BA3 * ((v17 - a1) >> 4));
    return result;
  }

  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
    *v12 = v21;
    *(v12 + 16) = v22;
    *(v12 + 24) = v5;
    if ((*(v12 + 55) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v11 = v21;
    *(v11 + 16) = v22;
    *(v11 + 24) = v5;
    if ((*(v11 + 55) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  operator delete(*(v12 + 32));
LABEL_16:
  *(v12 + 32) = v23;
  *(v12 + 48) = v24;
  *(v12 + 56) = v6;
  *(v12 + 64) = v7;
  if (*(v12 + 95) < 0)
  {
    operator delete(*(v12 + 72));
    *(v12 + 88) = v26;
    *(v12 + 72) = v25;
    if ((*(v12 + 119) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_25:
    operator delete(*(v12 + 96));
    goto LABEL_18;
  }

  *(v12 + 88) = v26;
  *(v12 + 72) = v25;
  if (*(v12 + 119) < 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  *(v12 + 112) = v28;
  *(v12 + 96) = v27;
  *(v12 + 120) = v8;
  if (*(v12 + 151) < 0)
  {
    operator delete(*(v12 + 128));
  }

  *(v12 + 144) = v30;
  *(v12 + 128) = v29;
  result = v31;
  *(v12 + 168) = v32;
  *(v12 + 152) = v31;
  return result;
}

uint64_t sub_7E6D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v8 = a1;
    a1 += 176 * v5 + 176;
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = *(a1 + 160);
      v12 = *(a1 + 336);
      v13 = v11 < v12;
      if (v11 == v12 && (v14 = *(a1 + 168), v15 = *(a1 + 344), v13 = v14 < v15, v14 == v15) && (v16 = *(a1 + 328), v17 = *(a1 + 152), v18 = v16 == v17, v13 = v16 < v17, v18))
      {
        v19 = *(a1 + 23);
        if (v19 >= 0)
        {
          v20 = a1;
        }

        else
        {
          v20 = *a1;
        }

        if (v19 >= 0)
        {
          v21 = *(a1 + 23);
        }

        else
        {
          v21 = *(a1 + 8);
        }

        v22 = *(a1 + 199);
        if (v22 >= 0)
        {
          v23 = (a1 + 176);
        }

        else
        {
          v23 = *(a1 + 176);
        }

        if (v22 >= 0)
        {
          v24 = *(a1 + 199);
        }

        else
        {
          v24 = *(a1 + 184);
        }

        if (v24 >= v21)
        {
          v25 = v21;
        }

        else
        {
          v25 = v24;
        }

        v26 = memcmp(v20, v23, v25);
        if (v26)
        {
          if (v26 < 0)
          {
            goto LABEL_2;
          }
        }

        else if (v21 < v24)
        {
LABEL_2:
          a1 += 176;
          v5 = v10;
        }
      }

      else if (v13)
      {
        goto LABEL_2;
      }
    }

    sub_52C14C(v8, a1);
    v7 = *(a1 + 168);
    *(v8 + 152) = *(a1 + 152);
    *(v8 + 168) = v7;
  }

  while (v5 <= v6);
  return a1;
}

void *sub_7E6E60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    sub_1794();
  }

  v6 = *(a1 + 16) - *a1;
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

  if (v7)
  {
    if (!(v7 >> 60))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = sub_3320D0((16 * v3), *a2, *a3);
  v9 = v8 + 2;
  v10 = *a1;
  v11 = *(a1 + 8) - *a1;
  v12 = v8 - v11;
  memcpy(v8 - v11, *a1, v11);
  *a1 = v12;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_7E6F54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_7E6F6C(void *a1, unint64_t *a2)
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

__n128 sub_7E72A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v5 = *(a1 + 24);
  v22 = *(a1 + 16);
  v21 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v6 = *(a1 + 56);
  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v7 = *(a1 + 64);
  v26 = *(a1 + 88);
  v25 = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v28 = *(a1 + 112);
  v27 = *(a1 + 96);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a1 + 120);
  v30 = *(a1 + 144);
  v29 = *(a1 + 128);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v32 = *(a1 + 168);
  v31 = *(a1 + 152);
  v11 = sub_7E6D10(a1, a3, a4);
  v12 = v11;
  v13 = (a2 - 176);
  if (a2 - 176 != v11)
  {
    sub_52C14C(v11, (a2 - 176));
    v14 = *(a2 - 24);
    *(v12 + 168) = *(a2 - 8);
    *(v12 + 152) = v14;
    if (*(a2 - 153) < 0)
    {
      operator delete(*v13);
    }

    *(a2 - 160) = v22;
    *v13 = v21;
    *(a2 - 152) = v5;
    v15 = (a2 - 144);
    if (*(a2 - 121) < 0)
    {
      operator delete(*v15);
    }

    *(a2 - 128) = v24;
    *v15 = v23;
    *(a2 - 120) = v6;
    *(a2 - 112) = v7;
    v16 = (a2 - 104);
    if (*(a2 - 81) < 0)
    {
      operator delete(*v16);
    }

    v17 = v12 + 176;
    *(a2 - 88) = v26;
    *v16 = v25;
    v18 = (a2 - 80);
    if (*(a2 - 57) < 0)
    {
      operator delete(*v18);
    }

    *(a2 - 64) = v28;
    *v18 = v27;
    *(a2 - 56) = v8;
    v19 = (a2 - 48);
    if (*(a2 - 25) < 0)
    {
      operator delete(*v19);
    }

    *(a2 - 32) = v30;
    *v19 = v29;
    *(a2 - 8) = v32;
    *(a2 - 24) = v31;
    sub_7E657C(a1, v17, a3, 0x2E8BA2E8BA2E8BA3 * ((v17 - a1) >> 4));
    return result;
  }

  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
    *v12 = v21;
    *(v12 + 16) = v22;
    *(v12 + 24) = v5;
    if ((*(v12 + 55) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v11 = v21;
    *(v11 + 16) = v22;
    *(v11 + 24) = v5;
    if ((*(v11 + 55) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  operator delete(*(v12 + 32));
LABEL_16:
  *(v12 + 32) = v23;
  *(v12 + 48) = v24;
  *(v12 + 56) = v6;
  *(v12 + 64) = v7;
  if (*(v12 + 95) < 0)
  {
    operator delete(*(v12 + 72));
    *(v12 + 88) = v26;
    *(v12 + 72) = v25;
    if ((*(v12 + 119) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_25:
    operator delete(*(v12 + 96));
    goto LABEL_18;
  }

  *(v12 + 88) = v26;
  *(v12 + 72) = v25;
  if (*(v12 + 119) < 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  *(v12 + 112) = v28;
  *(v12 + 96) = v27;
  *(v12 + 120) = v8;
  if (*(v12 + 151) < 0)
  {
    operator delete(*(v12 + 128));
  }

  *(v12 + 144) = v30;
  *(v12 + 128) = v29;
  result = v31;
  *(v12 + 168) = v32;
  *(v12 + 152) = v31;
  return result;
}

uint64_t sub_7E7608(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    if (v6 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 176 * v2;
  v12 = 176 * v2;
  v13 = 0;
  v7 = sub_5139E8(176 * v2, a2);
  *(v7 + 152) = *(a2 + 152);
  *(v7 + 168) = *(a2 + 168);
  v12 += 176;
  sub_7E7764(a1, &__p);
  v8 = a1[1];
  sub_7E64B4(&__p, v11);
  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_7E7750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7E647C(va);
  _Unwind_Resume(a1);
}

void sub_7E7764(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = *a1;
    v9 = v4 + *a1 - v6;
    do
    {
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
      *(v9 + 24) = *(v8 + 24);
      v11 = *(v8 + 32);
      *(v9 + 48) = *(v8 + 48);
      *(v9 + 32) = v11;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v9 + 56) = *(v8 + 56);
      *(v9 + 64) = *(v8 + 64);
      v12 = *(v8 + 72);
      *(v9 + 88) = *(v8 + 88);
      *(v9 + 72) = v12;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 72) = 0;
      v13 = *(v8 + 96);
      *(v9 + 112) = *(v8 + 112);
      *(v9 + 96) = v13;
      *(v8 + 104) = 0;
      *(v8 + 112) = 0;
      *(v8 + 96) = 0;
      *(v9 + 120) = *(v8 + 120);
      v14 = *(v8 + 128);
      *(v9 + 144) = *(v8 + 144);
      *(v9 + 128) = v14;
      *(v8 + 136) = 0;
      *(v8 + 144) = 0;
      *(v8 + 128) = 0;
      v15 = *(v8 + 152);
      *(v9 + 168) = *(v8 + 168);
      *(v9 + 152) = v15;
      v8 += 176;
      v9 += 176;
    }

    while (v8 != v6);
  }

  sub_7E635C(a1, v5, v6);
  a2[1] = v7;
  v16 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v16;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
}

uint64_t sub_7E78EC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 176;
        sub_5ED330(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

__n128 sub_7E7954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v5 = *(a1 + 24);
  v22 = *(a1 + 16);
  v21 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v6 = *(a1 + 56);
  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v7 = *(a1 + 64);
  v26 = *(a1 + 88);
  v25 = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v28 = *(a1 + 112);
  v27 = *(a1 + 96);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a1 + 120);
  v30 = *(a1 + 144);
  v29 = *(a1 + 128);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v32 = *(a1 + 168);
  v31 = *(a1 + 152);
  v11 = sub_7E6D10(a1, a3, a4);
  v12 = v11;
  v13 = (a2 - 176);
  if (a2 - 176 != v11)
  {
    sub_52C14C(v11, (a2 - 176));
    v14 = *(a2 - 24);
    *(v12 + 168) = *(a2 - 8);
    *(v12 + 152) = v14;
    if (*(a2 - 153) < 0)
    {
      operator delete(*v13);
    }

    *(a2 - 160) = v22;
    *v13 = v21;
    *(a2 - 152) = v5;
    v15 = (a2 - 144);
    if (*(a2 - 121) < 0)
    {
      operator delete(*v15);
    }

    *(a2 - 128) = v24;
    *v15 = v23;
    *(a2 - 120) = v6;
    *(a2 - 112) = v7;
    v16 = (a2 - 104);
    if (*(a2 - 81) < 0)
    {
      operator delete(*v16);
    }

    v17 = v12 + 176;
    *(a2 - 88) = v26;
    *v16 = v25;
    v18 = (a2 - 80);
    if (*(a2 - 57) < 0)
    {
      operator delete(*v18);
    }

    *(a2 - 64) = v28;
    *v18 = v27;
    *(a2 - 56) = v8;
    v19 = (a2 - 48);
    if (*(a2 - 25) < 0)
    {
      operator delete(*v19);
    }

    *(a2 - 32) = v30;
    *v19 = v29;
    *(a2 - 8) = v32;
    *(a2 - 24) = v31;
    sub_7E657C(a1, v17, a3, 0x2E8BA2E8BA2E8BA3 * ((v17 - a1) >> 4));
    return result;
  }

  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
    *v12 = v21;
    *(v12 + 16) = v22;
    *(v12 + 24) = v5;
    if ((*(v12 + 55) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v11 = v21;
    *(v11 + 16) = v22;
    *(v11 + 24) = v5;
    if ((*(v11 + 55) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  operator delete(*(v12 + 32));
LABEL_16:
  *(v12 + 32) = v23;
  *(v12 + 48) = v24;
  *(v12 + 56) = v6;
  *(v12 + 64) = v7;
  if (*(v12 + 95) < 0)
  {
    operator delete(*(v12 + 72));
    *(v12 + 88) = v26;
    *(v12 + 72) = v25;
    if ((*(v12 + 119) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_25:
    operator delete(*(v12 + 96));
    goto LABEL_18;
  }

  *(v12 + 88) = v26;
  *(v12 + 72) = v25;
  if (*(v12 + 119) < 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  *(v12 + 112) = v28;
  *(v12 + 96) = v27;
  *(v12 + 120) = v8;
  if (*(v12 + 151) < 0)
  {
    operator delete(*(v12 + 128));
  }

  *(v12 + 144) = v30;
  *(v12 + 128) = v29;
  result = v31;
  *(v12 + 168) = v32;
  *(v12 + 152) = v31;
  return result;
}

__n128 sub_7E7CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v5 = *(a1 + 24);
  v22 = *(a1 + 16);
  v21 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v6 = *(a1 + 56);
  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v7 = *(a1 + 64);
  v26 = *(a1 + 88);
  v25 = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v28 = *(a1 + 112);
  v27 = *(a1 + 96);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a1 + 120);
  v30 = *(a1 + 144);
  v29 = *(a1 + 128);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v32 = *(a1 + 168);
  v31 = *(a1 + 152);
  v11 = sub_7E6D10(a1, a3, a4);
  v12 = v11;
  v13 = (a2 - 176);
  if (a2 - 176 != v11)
  {
    sub_52C14C(v11, (a2 - 176));
    v14 = *(a2 - 24);
    *(v12 + 168) = *(a2 - 8);
    *(v12 + 152) = v14;
    if (*(a2 - 153) < 0)
    {
      operator delete(*v13);
    }

    *(a2 - 160) = v22;
    *v13 = v21;
    *(a2 - 152) = v5;
    v15 = (a2 - 144);
    if (*(a2 - 121) < 0)
    {
      operator delete(*v15);
    }

    *(a2 - 128) = v24;
    *v15 = v23;
    *(a2 - 120) = v6;
    *(a2 - 112) = v7;
    v16 = (a2 - 104);
    if (*(a2 - 81) < 0)
    {
      operator delete(*v16);
    }

    v17 = v12 + 176;
    *(a2 - 88) = v26;
    *v16 = v25;
    v18 = (a2 - 80);
    if (*(a2 - 57) < 0)
    {
      operator delete(*v18);
    }

    *(a2 - 64) = v28;
    *v18 = v27;
    *(a2 - 56) = v8;
    v19 = (a2 - 48);
    if (*(a2 - 25) < 0)
    {
      operator delete(*v19);
    }

    *(a2 - 32) = v30;
    *v19 = v29;
    *(a2 - 8) = v32;
    *(a2 - 24) = v31;
    sub_7E657C(a1, v17, a3, 0x2E8BA2E8BA2E8BA3 * ((v17 - a1) >> 4));
    return result;
  }

  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
    *v12 = v21;
    *(v12 + 16) = v22;
    *(v12 + 24) = v5;
    if ((*(v12 + 55) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v11 = v21;
    *(v11 + 16) = v22;
    *(v11 + 24) = v5;
    if ((*(v11 + 55) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  operator delete(*(v12 + 32));
LABEL_16:
  *(v12 + 32) = v23;
  *(v12 + 48) = v24;
  *(v12 + 56) = v6;
  *(v12 + 64) = v7;
  if (*(v12 + 95) < 0)
  {
    operator delete(*(v12 + 72));
    *(v12 + 88) = v26;
    *(v12 + 72) = v25;
    if ((*(v12 + 119) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_25:
    operator delete(*(v12 + 96));
    goto LABEL_18;
  }

  *(v12 + 88) = v26;
  *(v12 + 72) = v25;
  if (*(v12 + 119) < 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  *(v12 + 112) = v28;
  *(v12 + 96) = v27;
  *(v12 + 120) = v8;
  if (*(v12 + 151) < 0)
  {
    operator delete(*(v12 + 128));
  }

  *(v12 + 144) = v30;
  *(v12 + 128) = v29;
  result = v31;
  *(v12 + 168) = v32;
  *(v12 + 152) = v31;
  return result;
}

uint64_t sub_7E8024(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    if (v6 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 176 * v2;
  v12 = 176 * v2;
  v13 = 0;
  v7 = sub_5139E8(176 * v2, a2);
  *(v7 + 152) = *(a2 + 152);
  *(v7 + 168) = *(a2 + 168);
  v12 += 176;
  sub_7E8180(a1, &__p);
  v8 = a1[1];
  sub_7E64B4(&__p, v11);
  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_7E816C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7E647C(va);
  _Unwind_Resume(a1);
}

void sub_7E8180(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = *a1;
    v9 = v4 + *a1 - v6;
    do
    {
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
      *(v9 + 24) = *(v8 + 24);
      v11 = *(v8 + 32);
      *(v9 + 48) = *(v8 + 48);
      *(v9 + 32) = v11;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v9 + 56) = *(v8 + 56);
      *(v9 + 64) = *(v8 + 64);
      v12 = *(v8 + 72);
      *(v9 + 88) = *(v8 + 88);
      *(v9 + 72) = v12;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 72) = 0;
      v13 = *(v8 + 96);
      *(v9 + 112) = *(v8 + 112);
      *(v9 + 96) = v13;
      *(v8 + 104) = 0;
      *(v8 + 112) = 0;
      *(v8 + 96) = 0;
      *(v9 + 120) = *(v8 + 120);
      v14 = *(v8 + 128);
      *(v9 + 144) = *(v8 + 144);
      *(v9 + 128) = v14;
      *(v8 + 136) = 0;
      *(v8 + 144) = 0;
      *(v8 + 128) = 0;
      v15 = *(v8 + 152);
      *(v9 + 168) = *(v8 + 168);
      *(v9 + 152) = v15;
      v8 += 176;
      v9 += 176;
    }

    while (v8 != v6);
  }

  sub_7E635C(a1, v5, v6);
  a2[1] = v7;
  v16 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v16;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
}

uint64_t sub_7E8308(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 176;
        sub_5ED330(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

__n128 sub_7E8370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v5 = *(a1 + 24);
  v22 = *(a1 + 16);
  v21 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v6 = *(a1 + 56);
  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v7 = *(a1 + 64);
  v26 = *(a1 + 88);
  v25 = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v28 = *(a1 + 112);
  v27 = *(a1 + 96);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a1 + 120);
  v30 = *(a1 + 144);
  v29 = *(a1 + 128);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v32 = *(a1 + 168);
  v31 = *(a1 + 152);
  v11 = sub_7E6D10(a1, a3, a4);
  v12 = v11;
  v13 = (a2 - 176);
  if (a2 - 176 != v11)
  {
    sub_52C14C(v11, (a2 - 176));
    v14 = *(a2 - 24);
    *(v12 + 168) = *(a2 - 8);
    *(v12 + 152) = v14;
    if (*(a2 - 153) < 0)
    {
      operator delete(*v13);
    }

    *(a2 - 160) = v22;
    *v13 = v21;
    *(a2 - 152) = v5;
    v15 = (a2 - 144);
    if (*(a2 - 121) < 0)
    {
      operator delete(*v15);
    }

    *(a2 - 128) = v24;
    *v15 = v23;
    *(a2 - 120) = v6;
    *(a2 - 112) = v7;
    v16 = (a2 - 104);
    if (*(a2 - 81) < 0)
    {
      operator delete(*v16);
    }

    v17 = v12 + 176;
    *(a2 - 88) = v26;
    *v16 = v25;
    v18 = (a2 - 80);
    if (*(a2 - 57) < 0)
    {
      operator delete(*v18);
    }

    *(a2 - 64) = v28;
    *v18 = v27;
    *(a2 - 56) = v8;
    v19 = (a2 - 48);
    if (*(a2 - 25) < 0)
    {
      operator delete(*v19);
    }

    *(a2 - 32) = v30;
    *v19 = v29;
    *(a2 - 8) = v32;
    *(a2 - 24) = v31;
    sub_7E657C(a1, v17, a3, 0x2E8BA2E8BA2E8BA3 * ((v17 - a1) >> 4));
    return result;
  }

  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
    *v12 = v21;
    *(v12 + 16) = v22;
    *(v12 + 24) = v5;
    if ((*(v12 + 55) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v11 = v21;
    *(v11 + 16) = v22;
    *(v11 + 24) = v5;
    if ((*(v11 + 55) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  operator delete(*(v12 + 32));
LABEL_16:
  *(v12 + 32) = v23;
  *(v12 + 48) = v24;
  *(v12 + 56) = v6;
  *(v12 + 64) = v7;
  if (*(v12 + 95) < 0)
  {
    operator delete(*(v12 + 72));
    *(v12 + 88) = v26;
    *(v12 + 72) = v25;
    if ((*(v12 + 119) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_25:
    operator delete(*(v12 + 96));
    goto LABEL_18;
  }

  *(v12 + 88) = v26;
  *(v12 + 72) = v25;
  if (*(v12 + 119) < 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  *(v12 + 112) = v28;
  *(v12 + 96) = v27;
  *(v12 + 120) = v8;
  if (*(v12 + 151) < 0)
  {
    operator delete(*(v12 + 128));
  }

  *(v12 + 144) = v30;
  *(v12 + 128) = v29;
  result = v31;
  *(v12 + 168) = v32;
  *(v12 + 152) = v31;
  return result;
}

__n128 sub_7E86D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v5 = *(a1 + 24);
  v22 = *(a1 + 16);
  v21 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v6 = *(a1 + 56);
  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v7 = *(a1 + 64);
  v26 = *(a1 + 88);
  v25 = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v28 = *(a1 + 112);
  v27 = *(a1 + 96);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a1 + 120);
  v30 = *(a1 + 144);
  v29 = *(a1 + 128);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v32 = *(a1 + 168);
  v31 = *(a1 + 152);
  v11 = sub_7E6D10(a1, a3, a4);
  v12 = v11;
  v13 = (a2 - 176);
  if (a2 - 176 != v11)
  {
    sub_52C14C(v11, (a2 - 176));
    v14 = *(a2 - 24);
    *(v12 + 168) = *(a2 - 8);
    *(v12 + 152) = v14;
    if (*(a2 - 153) < 0)
    {
      operator delete(*v13);
    }

    *(a2 - 160) = v22;
    *v13 = v21;
    *(a2 - 152) = v5;
    v15 = (a2 - 144);
    if (*(a2 - 121) < 0)
    {
      operator delete(*v15);
    }

    *(a2 - 128) = v24;
    *v15 = v23;
    *(a2 - 120) = v6;
    *(a2 - 112) = v7;
    v16 = (a2 - 104);
    if (*(a2 - 81) < 0)
    {
      operator delete(*v16);
    }

    v17 = v12 + 176;
    *(a2 - 88) = v26;
    *v16 = v25;
    v18 = (a2 - 80);
    if (*(a2 - 57) < 0)
    {
      operator delete(*v18);
    }

    *(a2 - 64) = v28;
    *v18 = v27;
    *(a2 - 56) = v8;
    v19 = (a2 - 48);
    if (*(a2 - 25) < 0)
    {
      operator delete(*v19);
    }

    *(a2 - 32) = v30;
    *v19 = v29;
    *(a2 - 8) = v32;
    *(a2 - 24) = v31;
    sub_7E657C(a1, v17, a3, 0x2E8BA2E8BA2E8BA3 * ((v17 - a1) >> 4));
    return result;
  }

  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
    *v12 = v21;
    *(v12 + 16) = v22;
    *(v12 + 24) = v5;
    if ((*(v12 + 55) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v11 = v21;
    *(v11 + 16) = v22;
    *(v11 + 24) = v5;
    if ((*(v11 + 55) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  operator delete(*(v12 + 32));
LABEL_16:
  *(v12 + 32) = v23;
  *(v12 + 48) = v24;
  *(v12 + 56) = v6;
  *(v12 + 64) = v7;
  if (*(v12 + 95) < 0)
  {
    operator delete(*(v12 + 72));
    *(v12 + 88) = v26;
    *(v12 + 72) = v25;
    if ((*(v12 + 119) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_25:
    operator delete(*(v12 + 96));
    goto LABEL_18;
  }

  *(v12 + 88) = v26;
  *(v12 + 72) = v25;
  if (*(v12 + 119) < 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  *(v12 + 112) = v28;
  *(v12 + 96) = v27;
  *(v12 + 120) = v8;
  if (*(v12 + 151) < 0)
  {
    operator delete(*(v12 + 128));
  }

  *(v12 + 144) = v30;
  *(v12 + 128) = v29;
  result = v31;
  *(v12 + 168) = v32;
  *(v12 + 152) = v31;
  return result;
}

void sub_7E8A40()
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
  xmmword_27AAB70 = 0u;
  unk_27AAB80 = 0u;
  dword_27AAB90 = 1065353216;
  sub_3A9A34(&xmmword_27AAB70, v0);
  sub_3A9A34(&xmmword_27AAB70, v3);
  sub_3A9A34(&xmmword_27AAB70, __p);
  sub_3A9A34(&xmmword_27AAB70, v9);
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
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27AAB48 = 0;
    qword_27AAB50 = 0;
    qword_27AAB40 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_7E8C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27AAB58)
  {
    qword_27AAB60 = qword_27AAB58;
    operator delete(qword_27AAB58);
  }

  _Unwind_Resume(exception_object);
}

void sub_7E8D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *__src)
{
  *a1 = a2;
  memcpy((a1 + 8), __src, 0x92CuLL);
  if (__src[2375] < 0)
  {
    sub_325C((a1 + 2360), *(__src + 294), *(__src + 295));
  }

  else
  {
    v10 = *(__src + 147);
    *(a1 + 2376) = *(__src + 296);
    *(a1 + 2360) = v10;
  }

  v11 = *(__src + 2376);
  v12 = *(__src + 2392);
  v13 = *(__src + 2408);
  *(a1 + 2432) = *(__src + 2424);
  *(a1 + 2416) = v13;
  *(a1 + 2400) = v12;
  *(a1 + 2384) = v11;
  v14 = *(__src + 2440);
  v15 = *(__src + 2456);
  v16 = *(__src + 2472);
  *(a1 + 2496) = *(__src + 2488);
  *(a1 + 2480) = v16;
  *(a1 + 2464) = v15;
  *(a1 + 2448) = v14;
  v17 = *(__src + 2504);
  v18 = *(__src + 2520);
  v19 = *(__src + 2536);
  *(a1 + 2560) = *(__src + 2552);
  *(a1 + 2544) = v19;
  *(a1 + 2528) = v18;
  *(a1 + 2512) = v17;
  sub_527724(a1 + 2576, a4);
  sub_92AA50(a1 + 4152, a2);
  sub_21E2C18(a3, 4, *(a4 + 968));
}

void sub_7E8E84(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + v4);
  sub_1F1A8(v1 + v3);
  sub_528AB4(v1 + 2576);
  if (*(v1 + 2383) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void sub_7E9014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1F1A8(&a9);
  sub_1F1A8(&a11);
  operator delete();
}

uint64_t sub_7E9040(uint64_t a1)
{
  v2 = *(a1 + 4224);
  *(a1 + 4224) = 0;
  if (v2)
  {
    sub_559B98(v2);
    operator delete();
  }

  v3 = *(a1 + 4216);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 4200);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    sub_528AB4(a1 + 2576);
    if ((*(a1 + 2383) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else
  {
    sub_528AB4(a1 + 2576);
    if ((*(a1 + 2383) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  operator delete(*(a1 + 2360));
  return a1;
}

uint64_t *sub_7E9154(std::string *a1, uint64_t a2, char *a3)
{
  v6 = sub_3EB950(a2);
  v7 = *v6;
  v8 = v6[1];
  if (*v6 != v8)
  {
    do
    {
      if ((*(v7 + 1162) & 1) == 0)
      {
        v9 = *v7;
        if (*v7 == 23)
        {
          if (!v7[2] && !*(v7 + 1136))
          {
            goto LABEL_4;
          }

          v9 = *v7;
        }

        if (v9 == 24 && !v7[2] && (v7[284] & 1) == 0 && a1[167].__r_.__value_.__s.__data_[18] == 1)
        {
          sub_64C184(a3, "{SFSymbol}");
          sub_588170(1, &v20);
          sub_64BF94(a3, "{SFSymbol}");
        }

        v10 = v7[2];
        v16[0] = *v7;
        v16[2] = v10;
        v17[0] = 0;
        v18 = 0;
        if (*(v7 + 1136) == 1)
        {
          sub_52B7D8(v17, (v7 + 4));
          v18 = 1;
        }

        v11 = *(v7 + 286);
        *&v19[15] = *(v7 + 1159);
        *v19 = v11;
        sub_7E959C(a1, v16, 0, &v20);
        if (v18 == 1)
        {
          sub_3A9518(v17);
        }

        sub_64C184(a3, &v20);
        v12 = a1[166].__r_.__value_.__s.__data_[7];
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }

        if (v12)
        {
          break;
        }
      }

LABEL_4:
      v7 += 292;
    }

    while (v7 != v8);
  }

  result = sub_3EB950(a2);
  for (i = *result; i != result[1]; i += 1168)
  {
    v15 = *i == 23 && *(i + 8) == 0;
    if (v15 && !*(i + 1136))
    {
      if (*a3 != *(a3 + 1))
      {
        memset(&v20, 0, sizeof(v20));
        sub_64FB18(a3, qword_22A18D8, &v20.__r_.__value_.__l.__data_);
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }
      }

      sub_64C184(a3, "{SFSymbol}");
      sub_588170(0, &v20);
      sub_64BF94(a3, "{SFSymbol}");
    }
  }

  return result;
}

void sub_7E9508(_Unwind_Exception *a1)
{
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  _Unwind_Resume(a1);
}

void sub_7E959C(std::string *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  v8 = *(a2 + 8);
  if ((v8 - 6) > 4)
  {
    v11 = *a2;
    v26 = *a2;
    v27 = v8;
    v28[0] = 0;
    v29 = 0;
    if (*(a2 + 1136) == 1)
    {
      sub_52B7D8(v28, a2 + 16);
      v29 = 1;
      v11 = v26;
    }

    *v30 = *(a2 + 1144);
    *&v30[15] = *(a2 + 1159);
    v43 = 0;
    v42 = 0uLL;
    if (v11)
    {
      sub_7ECCD0(a1, v11, a3, &v38);
    }

    else if (v27)
    {
      sub_7ED1B0(&v27, &v38);
    }

    else
    {
      if (*v30 != 1 || !*&v30[8])
      {
        goto LABEL_19;
      }

      sub_7ED390(a1, v30, &v38);
    }

    v42 = v38;
    v43 = v39;
LABEL_19:
    if (v29 == 1)
    {
      sub_3A9518(v28);
    }

    v12 = HIBYTE(v43);
    if (v43 < 0)
    {
      v12 = *(&v42 + 1);
    }

    if (v12)
    {
      v13 = sub_9274F4(a1[174].__r_.__value_.__r.__words[2], &v42);
      if (*(v13 + 23) < 0)
      {
        sub_325C(a4, *v13, v13[1]);
      }

      else
      {
        v14 = *v13;
        a4->__r_.__value_.__r.__words[2] = v13[2];
        *&a4->__r_.__value_.__l.__data_ = v14;
      }
    }

    else
    {
      *(&a4->__r_.__value_.__s + 23) = 0;
      a4->__r_.__value_.__s.__data_[0] = 0;
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    return;
  }

  if ((*(a2 + 1136) & 1) == 0)
  {
    sub_4F0F0C();
  }

  sub_52B7D8(&v38, a2 + 16);
  v9 = *a2;
  v10 = *(a2 + 8);
  v31 = *a2;
  v32 = v10;
  v33[0] = 0;
  v34 = 0;
  if (*(a2 + 1136) == 1)
  {
    sub_52B7D8(v33, a2 + 16);
    v34 = 1;
    v9 = v31;
  }

  *v35 = *(a2 + 1144);
  *&v35[15] = *(a2 + 1159);
  v37 = 0;
  __p[0] = 0;
  __p[1] = 0;
  if (v9)
  {
    sub_7ECCD0(a1, v9, a3, &v42);
  }

  else if (v32)
  {
    sub_7ED1B0(&v32, &v42);
  }

  else
  {
    if (*v35 != 1 || !*&v35[8])
    {
      goto LABEL_34;
    }

    sub_7ED390(a1, v35, &v42);
  }

  *__p = v42;
  v37 = v43;
LABEL_34:
  if (v34 == 1)
  {
    sub_3A9518(v33);
  }

  v15 = HIBYTE(v37);
  if (v37 < 0)
  {
    v15 = __p[1];
  }

  if (v15)
  {
    v16 = sub_9274F4(a1[174].__r_.__value_.__r.__words[2], __p);
    if (*(v16 + 23) < 0)
    {
      sub_325C(a4, *v16, v16[1]);
    }

    else
    {
      v17 = *v16;
      a4->__r_.__value_.__r.__words[2] = v16[2];
      *&a4->__r_.__value_.__l.__data_ = v17;
    }

    size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = a4->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a4->__r_.__value_.__l.__size_;
    }

    if (size >= 14)
    {
      v20 = v19 + size;
      v21 = v19;
      do
      {
        v22 = memchr(v21, 123, size - 13);
        if (!v22)
        {
          break;
        }

        if (*v22 == 0x636E49616572417BLL && *(v22 + 6) == 0x7D746E656469636ELL)
        {
          if (v22 != v20 && v22 - v19 != -1)
          {
            if ((v41 & 0x80u) == 0)
            {
              v24 = v40;
            }

            else
            {
              v24 = v40[0];
            }

            if ((v41 & 0x80u) == 0)
            {
              v25 = v41;
            }

            else
            {
              v25 = v40[1];
            }

            std::string::replace(a4, v22 - v19, 0xEuLL, v24, v25);
          }

          break;
        }

        v21 = (v22 + 1);
        size = v20 - v21;
      }

      while (v20 - v21 >= 14);
    }
  }

  else
  {
    *(&a4->__r_.__value_.__s + 23) = 0;
    a4->__r_.__value_.__s.__data_[0] = 0;
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  sub_3A9518(&v38);
}

void sub_7E9970(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(STACK[0x920]);
  }

  sub_3A9518(&STACK[0x940]);
  _Unwind_Resume(a1);
}

void sub_7E9A04(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_64B998(a2);
  v5 = sub_68C7DC(a1);
  v4 = 1;
  sub_64E428(a2, "{distance}", &v5, &v4);
  sub_64C184(a2, "{distance}");
}

void sub_7E9AE4(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_68C5B4(a2);
  if (sub_67AE58(a1 + 2576) && *(a1 + 3996) == 1 && v6 != 0)
  {
    sub_568F30(v6, "_Stop", *(a1 + 3544), 0, v21);
    v9 = std::string::insert(v21, 0, "MPR_NUM_STOPS", 0xDuLL);
    v26 = v9->__r_.__value_.__r.__words[2];
    *__p = *&v9->__r_.__value_.__l.__data_;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v26 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if (v26 >= 0)
    {
      v11 = HIBYTE(v26);
    }

    else
    {
      v11 = __p[1];
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    v24 = v11;
    if (v11)
    {
      memmove(&__dst, v10, v11);
      *(&__dst + v11) = 0;
      if (v24 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      do
      {
        *p_dst = __toupper(*v10);
        p_dst = (p_dst + 1);
        v10 = (v10 + 1);
        --v11;
      }

      while (v11);
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
LABEL_26:
        if ((v21[23] & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

LABEL_55:
        operator delete(*v21);
LABEL_27:
        std::to_string(&v20, v6);
        v26 = 0xC00000000000000;
        *__p = *"{StopsCount}";
        v27 = v20;
        memset(&v20, 0, sizeof(v20));
        memset(v21, 0, sizeof(v21));
        v22 = 1065353216;
        sub_2C7D4(v21, __p);
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v26) & 0x80000000) == 0)
          {
LABEL_29:
            if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_51;
          }
        }

        else if ((SHIBYTE(v26) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        operator delete(__p[0]);
        if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_30:
          v13 = *(a1 + 4200);
          v18 = *(a1 + 4192);
          v19 = v13;
          if (!v13)
          {
LABEL_32:
            sub_6A58C4(&__dst, v21, &v18, 0, __p);
            v14 = v19;
            if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v14->__on_zero_shared)(v14);
              std::__shared_weak_count::__release_weak(v14);
            }

            sub_64C184(a3, __p);
            if (SHIBYTE(v26) < 0)
            {
              operator delete(__p[0]);
            }

            v15 = *&v21[16];
            if (!*&v21[16])
            {
LABEL_38:
              v16 = *v21;
              *v21 = 0;
              if (v16)
              {
                operator delete(v16);
              }

              if (v24 < 0)
              {
                operator delete(__dst);
              }

              return;
            }

            while (1)
            {
              v17 = *v15;
              if (*(v15 + 63) < 0)
              {
                operator delete(v15[5]);
                if (*(v15 + 39) < 0)
                {
LABEL_48:
                  operator delete(v15[2]);
                }
              }

              else if (*(v15 + 39) < 0)
              {
                goto LABEL_48;
              }

              operator delete(v15);
              v15 = v17;
              if (!v17)
              {
                goto LABEL_38;
              }
            }
          }

LABEL_31:
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          goto LABEL_32;
        }

LABEL_51:
        operator delete(v20.__r_.__value_.__l.__data_);
        v13 = *(a1 + 4200);
        v18 = *(a1 + 4192);
        v19 = v13;
        if (!v13)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }
    }

    operator delete(__p[0]);
    if ((v21[23] & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

  v8 = *nullsub_1(a2) + 12008;

  sub_7ED5CC(a1, v8, a3);
}

void sub_7E9ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_2CD04(&a18);
  if (a31 < 0)
  {
    operator delete(a26);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_7E9FC4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_64B9EC(a3, (a1 + 3753), qword_22A18D8);
  v7 = sub_68C7DC(a2);
  v6 = 1;
  sub_64E428(a3, "{distance}", &v7, &v6);
  sub_64C184(a3, "{distance}");
  sub_7E9AE4(a1, a2, a3);
}

void sub_7EA070(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_64B9EC(a3, (a1 + 3753), qword_22A18D8);
  if (*(a1 + 3991) == 1)
  {
    v6 = sub_3EB950(a2);
    if (*v6 != v6[1])
    {
      v7 = sub_3EB950(a2);
      v8 = *v7;
      if ((*(*v7 + 1160) & 1) == 0)
      {
        v9 = *(v8 + 8);
        v12[0] = *v8;
        v12[2] = v9;
        v13[0] = 0;
        v14 = 0;
        if (*(v8 + 1136) == 1)
        {
          sub_52B7D8(v13, v8 + 16);
          v14 = 1;
        }

        v10 = *(v8 + 1144);
        *&v15[15] = *(v8 + 1159);
        *v15 = v10;
        sub_7E959C(a1, v12, 1, &v16);
        if (v14 == 1)
        {
          sub_3A9518(v13);
        }

        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v16.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          sub_64C184(a3, &v16);
          if (*(v8 + 1144) == 1)
          {
            if (*(v8 + 1152))
            {
              sub_7EA24C(a1, v8 + 1144);
            }
          }
        }

        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void sub_7EA1E4(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x478]) == 1)
  {
    sub_3A9518(v2 + 16);
    sub_53A868(v1);
    _Unwind_Resume(a1);
  }

  sub_53A868(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_7EA24C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (*a2 == 1 && result != 0)
  {
    std::to_string(&v4, result);
    sub_649C24(v5, "{StopsCount}");
  }

  return result;
}

void sub_7EA2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_53F320(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_7EA304(_BYTE *a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  if ((a1[3991] & 1) == 0)
  {
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -1;
    *(a3 + 43) = -1;
    *(a3 + 47) = 0;
    *(a3 + 55) = 0;
    *(a3 + 63) = 0;
    *(a3 + 71) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    return;
  }

  if (a1[2504] == 1)
  {
    v6 = sub_67AE68((a1 + 2576));
    if (v6 != 0x7FFFFFFF && v6 > SHIDWORD(v6))
    {
      __p[0] = 0x100000027;
      sub_5880E4(__p, a3);
      return;
    }
  }

  v7 = sub_3EB950(a2);
  v8 = *v7;
  v9 = v7[1];
  while (v8 != v9)
  {
    if (*(v8 + 1161))
    {
      goto LABEL_9;
    }

    v10 = sub_3EB950(a2);
    v11 = *v10;
    v12 = *v8;
    if (*v8 == **v10)
    {
      if (*(v8 + 8) == v11[2])
      {
        v13 = *(v8 + 1136);
        v14 = *(v11 + 1136);
        if (v13 != v14 || v13 == 0)
        {
          if (v13 == v14)
          {
            goto LABEL_8;
          }
        }

        else if (sub_65901C(v8 + 16, (v11 + 4)))
        {
          goto LABEL_8;
        }
      }

      v12 = *v8;
    }

    if (v12 == 23 && !*(v8 + 8) && (*(v8 + 1136) & 1) == 0)
    {
LABEL_8:
      if (sub_7EA908(a1, v8) >> 32)
      {
        operator new();
      }
    }

LABEL_9:
    v8 += 1168;
  }

  if (sub_68DFF0(a2))
  {
    operator new();
  }

  if (sub_68E388(a2))
  {
    operator new();
  }

  if ((sub_68D828(a2, 4) & 1) != 0 || sub_68D828(a2, 9))
  {
    operator new();
  }

  __p[0] = a1;
  sub_7F6CB0(0, 0, __p, 0, 1);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 40) = -1;
  *(a3 + 43) = -1;
  *(a3 + 47) = 0;
  *(a3 + 55) = 0;
  *(a3 + 63) = 0;
  *(a3 + 71) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
}

void sub_7EA8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (!v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_7EA908(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 <= 10)
  {
    if ((v2 - 1) >= 8)
    {
      if ((v2 - 9) < 2)
      {
        return 0x100000003;
      }

      if (!v2)
      {
        v5 = *(a2 + 8);
        if (v5 <= 0xA && ((1 << v5) & 0x14A) == 0)
        {
          if (((1 << v5) & 0x34) != 0)
          {
            return 0x1000003E7;
          }

          if (((1 << v5) & 0x680) != 0)
          {
            if ((*(a2 + 1136) & 1) == 0)
            {
              sub_4F0F0C();
            }

            sub_52B7D8(v7, a2 + 16);
            if (v8 <= 0x16)
            {
              v6 = qword_22A1A80[v8] | qword_22A19C8[v8];
              sub_3A9518(v7);
              return v6 | 0x100000000;
            }

            sub_3A9518(v7);
          }
        }
      }
    }

    return 0;
  }

  if (v2 < 21)
  {
    return 0;
  }

  if (v2 <= 22)
  {
    if (v2 == 21)
    {
      return 0x10000002FLL;
    }

    else
    {
      return 0x100000005;
    }
  }

  if (v2 == 23)
  {
    return 0x100000033;
  }

  if (v2 != 24)
  {
    return 0;
  }

  v4 = 0x200000000;
  if (!*(a1 + 4026))
  {
    v4 = 0;
  }

  return v4 | 1;
}