void sub_1BFBCB0()
{
  sub_3608D0(__p, "earthstats.max_elevation");
  qword_27EE6A8 = 0;
  unk_27EE6B0 = 0;
  qword_27EE6B8 = 0;
  sub_68678C(&qword_27EE6A8, __p, &v2, 1uLL);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "earthstats.length");
  qword_27EE6C0 = 0;
  *algn_27EE6C8 = 0;
  qword_27EE6D0 = 0;
  sub_68678C(&qword_27EE6C0, __p, &v2, 1uLL);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "hotelstravel.trainstations");
  qword_27EE6D8 = 0;
  unk_27EE6E0 = 0;
  qword_27EE6E8 = 0;
  sub_68678C(&qword_27EE6D8, __p, &v2, 1uLL);
  if (v1 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1BF11F4();
}

void sub_1BFBDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1BFBDFC(uint64_t a1)
{
  sub_19594F8(&v24);
  std::ostream::operator<<();
  if ((v31 & 0x10) != 0)
  {
    v2 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v2 = v27;
    }

    locale = v26[4].__locale_;
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v1 = 0;
      v23 = 0;
      goto LABEL_14;
    }

    locale = v26[1].__locale_;
    v2 = v26[3].__locale_;
  }

  v1 = v2 - locale;
  if ((v2 - locale) > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v1 >= 0x17)
  {
    operator new();
  }

  v23 = v2 - locale;
  if (v1)
  {
    memmove(&__dst, locale, v1);
  }

LABEL_14:
  *(&__dst + v1) = 0;
  if (v23 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v5 = [NSString stringWithUTF8String:p_dst];
  if (v23 < 0)
  {
    operator delete(__dst);
  }

  v6 = [v5 dataUsingEncoding:4];
  v21 = 0;
  v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v21];
  v8 = v21;
  if (!v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v6;
      v9 = v7;
      v10 = [v9 keyEnumerator];
      v11 = 0;
      while (1)
      {
        v12 = [v10 nextObject];

        if (!v12)
        {
          break;
        }

        v13 = [v9 objectForKeyedSubscript:v12];
        v14 = [v13 integerValue];
        v11 = v12;
        v15 = [v11 UTF8String];
        v16 = [v11 lengthOfBytesUsingEncoding:4];
        v17 = v16;
        if (v16 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v16 >= 0x17)
        {
          operator new();
        }

        v23 = v16;
        if (v16)
        {
          memmove(&__dst, v15, v16);
        }

        *(&__dst + v17) = 0;

        v32 = &__dst;
        *(sub_1BFC310(a1 + 24, &__dst) + 56) = v14;
        if (v23 < 0)
        {
          operator delete(__dst);
        }
      }

      v6 = v19;
      v8 = 0;
    }
  }

  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v26);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1BFC230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1BFC310(uint64_t a1, void *a2)
{
  v2 = *sub_122356C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

BOOL sub_1BFC3BC(uint64_t *a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80000000) == 0)
  {
    if (v1 != 4)
    {
      return 0;
    }

    return *a1 == 1701080931;
  }

  if (a1[1] == 4)
  {
    a1 = *a1;
    return *a1 == 1701080931;
  }

  return 0;
}

uint64_t sub_1BFC400@<X0>(__int128 **a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      sub_1C04730(v18, v19);
      if (a3)
      {
        if (*(v5 + 23) < 0)
        {
          sub_325C(&v23, *v5, *(v5 + 1));
        }

        else
        {
          v11 = *v5;
          v23.__r_.__value_.__r.__words[2] = *(v5 + 2);
          *&v23.__r_.__value_.__l.__data_ = v11;
        }

        sub_1E78868(&v23);
        v12 = sub_1C0080C(&v23, a2, v18);
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v12 = sub_1C0080C(v5, a2, v18);
      }

      sub_11BD8(v18);
      if (v12)
      {
        if (v12 == 1)
        {
          if (v12 >> 32 >= ((a2[1] - *a2) >> 6))
          {
            goto LABEL_20;
          }

          v13 = *(*a2 + (v12 >> 32 << 6) + 24);
          v14 = sub_1CEAF00(v5);
          sub_1BFC60C(v21, v13, v14);
          ++v10;
        }
      }

      else
      {
        if (v12 >> 32 >= ((a2[1] - *a2) >> 6))
        {
LABEL_20:
          sub_6FAB4();
        }

        v15 = *(*a2 + (v12 >> 32 << 6) + 24);
        v16 = sub_1CEAF00(v5);
        sub_1BFC60C(v21, v15, v16);
        ++v9;
      }

      v5 += 4;
    }

    while (v5 != v6);
  }

  *a4 = v9;
  a4[1] = v10;
  sub_195F0F8((a4 + 2), v21);
  sub_11BD8(v19);
  return sub_11BD8(v21);
}

void sub_1BFC5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_11BD8(va);
  sub_11BD8(va1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1BFC60C(void *a1, unsigned int a2, uint64_t a3)
{
  v7 = a2;
  result = sub_1C00B6C(a1, &v7);
  if (result)
  {
    if (*(result + 5) < a3)
    {
      *(result + 5) = a3;
    }
  }

  else
  {
    *v6 = v7 | (a3 << 32);
    return sub_1C00C20(a1, v6);
  }

  return result;
}

void sub_1BFC678(__int128 **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v4 = a3;
  if (*a2 == a2[1])
  {
    v34 = *a1;
    if (a1[1] == *a1)
    {
      sub_6FAB4();
    }

    if (*(v34 + 23) < 0)
    {
      sub_325C(a3, *v34, *(v34 + 1));
    }

    else
    {
      v35 = *v34;
      *(a3 + 16) = *(v34 + 2);
      *a3 = v35;
    }

    *(v4 + 24) = *(v34 + 3);
    *(v4 + 32) = 1;
    return;
  }

  v55[0] = 0;
  v55[1] = 0;
  v54 = v55;
  v6 = *a1;
  v5 = a1[1];
  if (v5 == *a1)
  {
LABEL_61:
    if (v5 == v6)
    {
      sub_6FAB4();
    }

    if (*(v6 + 23) < 0)
    {
      sub_325C(v51, *v6, *(v6 + 1));
    }

    else
    {
      v38 = *v6;
      v52 = *(v6 + 2);
      *v51 = v38;
    }

    v39 = *(v6 + 3);
    v53 = v39 | 0x7FFFFFFF00000000;
    if (SHIBYTE(v52) < 0)
    {
      sub_325C(__p, v51[0], v51[1]);
    }

    else
    {
      *__p = *v51;
      v49 = v52;
    }

    v50 = v39 | 0x7FFFFFFF00000000;
    if ((SHIBYTE(v49) & 0x80000000) == 0)
    {
      *v4 = *__p;
      v40 = v50;
      *(v4 + 16) = v49;
      *(v4 + 24) = v40;
      *(v4 + 32) = 0;
      goto LABEL_86;
    }

    sub_325C(v4, __p[0], __p[1]);
    v41 = SHIBYTE(v49);
    *(v4 + 24) = v50;
    *(v4 + 32) = 0;
    if (v41 < 0)
    {
      goto LABEL_85;
    }

    goto LABEL_86;
  }

  v8 = 0;
  v9 = 0x7FFFFFFF;
  v10 = -1;
  v11 = -1;
  v12 = 0x7FFFFFFF;
  v46 = v4;
  do
  {
    v13 = &v6[2 * v8];
    if (*(v13 + 23) < 0)
    {
      sub_325C(v51, *v13, *(v13 + 1));
    }

    else
    {
      v14 = *v13;
      v52 = *(v13 + 2);
      *v51 = v14;
    }

    v15 = *(v13 + 3);
    v53 = v15;
    if (SHIBYTE(v52) < 0)
    {
      if (v51[1] != dword_4)
      {
        goto LABEL_13;
      }

      v16 = v51[0];
    }

    else
    {
      if (SHIBYTE(v52) != 4)
      {
        goto LABEL_13;
      }

      v16 = v51;
    }

    if (*v16 != 1701080931)
    {
LABEL_13:
      if (v55 == sub_19D5254(&v54, v51))
      {
        sub_7E36C(&v54, v51);
        v18 = *a2;
        v19 = a2[1];
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *a2) >> 3);
        if (v12 >= v20)
        {
          v21 = -1431655765 * ((v19 - *a2) >> 3);
        }

        else
        {
          v21 = v12;
        }

        if (v21 >= 1)
        {
          v22 = 0;
          v23 = 0;
          do
          {
            v24 = HIBYTE(v52);
            if (v52 < 0)
            {
              v24 = v51[1];
            }

            if (v24)
            {
              v25 = 0;
            }

            else
            {
              v25 = v23 < v9;
            }

            if (v25)
            {
              v9 = v23;
              v11 = v8;
            }

            else
            {
              if (v20 <= v23)
              {
                sub_6FAB4();
              }

              if (sub_219B0D4(v51, (v18 + v22)))
              {
                v12 = v23;
                v10 = v8;
              }

              v18 = *a2;
              v19 = a2[1];
            }

            ++v23;
            v20 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3);
            if (v12 >= v20)
            {
              v26 = -1431655765 * ((v19 - v18) >> 3);
            }

            else
            {
              v26 = v12;
            }

            v22 += 24;
          }

          while (v23 < v26);
        }

        v17 = 0;
        v3 = a1;
      }

      else
      {
        v17 = 4;
      }

      goto LABEL_44;
    }

    v27 = *a2;
    v28 = a2[1];
    if (SHIBYTE(v52) < 0)
    {
      sub_325C(__p, v51[0], v51[1]);
    }

    else
    {
      *__p = *v51;
      v49 = v52;
    }

    LODWORD(v50) = v15;
    HIDWORD(v50) = -1431655765 * ((v28 - v27) >> 3);
    if (SHIBYTE(v49) < 0)
    {
      v4 = v46;
      sub_325C(v46, __p[0], __p[1]);
      v3 = a1;
      v30 = SHIBYTE(v49);
      *(v46 + 24) = v50;
      *(v46 + 32) = 1;
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v4 = v46;
      v3 = a1;
      *v46 = *__p;
      v29 = v50;
      *(v46 + 16) = v49;
      *(v46 + 24) = v29;
      *(v46 + 32) = 1;
    }

    v17 = 1;
LABEL_44:
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51[0]);
    }

    if ((v17 | 4) != 4)
    {
      goto LABEL_88;
    }

    ++v8;
    v6 = *v3;
    v5 = v3[1];
    v31 = (v5 - *v3) >> 5;
  }

  while (v31 > v8);
  if ((v10 & 0x80000000) == 0)
  {
    if (v31 <= v10)
    {
      sub_6FAB4();
    }

    v32 = &v6[2 * v10];
    if (*(v32 + 23) < 0)
    {
      sub_325C(v51, *v32, *(v32 + 1));
    }

    else
    {
      v33 = *v32;
      v52 = *(v32 + 2);
      *v51 = v33;
    }

    v42 = *(v32 + 3);
    v53 = v42;
    if (SHIBYTE(v52) < 0)
    {
      sub_325C(__p, v51[0], v51[1]);
    }

    else
    {
      *__p = *v51;
      v49 = v52;
    }

    v50 = __PAIR64__(v12, v42);
    if (SHIBYTE(v49) < 0)
    {
      goto LABEL_84;
    }

LABEL_83:
    *v4 = *__p;
    v44 = v50;
    *(v4 + 16) = v49;
    *(v4 + 24) = v44;
    *(v4 + 32) = 1;
    goto LABEL_86;
  }

  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

  if (v31 <= v11)
  {
    sub_6FAB4();
  }

  v36 = &v6[2 * v11];
  if (*(v36 + 23) < 0)
  {
    sub_325C(v51, *v36, *(v36 + 1));
  }

  else
  {
    v37 = *v36;
    v52 = *(v36 + 2);
    *v51 = v37;
  }

  v43 = *(v36 + 3);
  v53 = v43;
  if (SHIBYTE(v52) < 0)
  {
    sub_325C(__p, v51[0], v51[1]);
  }

  else
  {
    *__p = *v51;
    v49 = v52;
  }

  v50 = __PAIR64__(v9, v43);
  if ((SHIBYTE(v49) & 0x80000000) == 0)
  {
    goto LABEL_83;
  }

LABEL_84:
  sub_325C(v4, __p[0], __p[1]);
  v45 = SHIBYTE(v49);
  *(v4 + 24) = v50;
  *(v4 + 32) = 1;
  if (v45 < 0)
  {
LABEL_85:
    operator delete(__p[0]);
  }

LABEL_86:
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

LABEL_88:
  sub_7E724(&v54, v55[0]);
}

void sub_1BFCBB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28, char *a29)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_7E724(&a28, a29);
  _Unwind_Resume(a1);
}

uint64_t sub_1BFCC34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120) == 1)
  {
    if ((*(a2 + 120) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 120))
  {
    return 1;
  }

  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (v3 != v4)
  {
    return v3 > v4;
  }

  v5 = *(a1 + 76);
  v6 = *(a2 + 76);
  v7 = v5 < v6;
  if (v5 == v6)
  {
    v8 = *(a1 + 68);
    v9 = *(a2 + 68);
    v7 = v8 < v9;
    if (v8 == v9)
    {
      return *(a1 + 72) < *(a2 + 72);
    }
  }

  return v7;
}

BOOL sub_1BFCCF4(uint64_t *a1, void *a2, uint64_t **a3)
{
  v4 = *(a3 + 23);
  if (v4 < 0)
  {
    if (a3[1] != (&dword_0 + 2))
    {
      return 0;
    }

    a3 = *a3;
  }

  else if (v4 != 2)
  {
    return 0;
  }

  if (*a3 != 20035)
  {
    return 0;
  }

  sub_1A489F0(a2, __p);
  if (sub_19F43EC(__p, "zh"))
  {
    v7 = *a1;
    if (a1[1] == *a1)
    {
      v5 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v5 = sub_1CF70F4((v7 + v8));
        if (!v5)
        {
          break;
        }

        ++v9;
        v7 = *a1;
        v8 += 64;
      }

      while (v9 < (a1[1] - *a1) >> 6);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1BFCDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BFCDFC(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (***a3)(void **__return_ptr, void, uint64_t, uint64_t)@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      (**a3)(v18, a3, v5 + v9, a2);
      if (SHIBYTE(v19) < 0)
      {
        sub_325C(__p, v18[0], v18[1]);
      }

      else
      {
        *__p = *v18;
        v14 = v19;
      }

      sub_1A7AC14(v15, __p);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }

      v11 = a4[1];
      if (v11 >= a4[2])
      {
        v12 = sub_1A3CA7C(a4, v15);
      }

      else
      {
        sub_19A25E4(a4[1], v15);
        v12 = v11 + 64;
      }

      a4[1] = v12;
      sub_195A77C(v17, v17[1]);
      if (v16 < 0)
      {
        operator delete(v15[0]);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }

      ++v10;
      v5 = *a1;
      v9 += 64;
    }

    while (v10 < (a1[1] - *a1) >> 6);
  }
}

void sub_1BFCF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_19A240C(&a15);
  _Unwind_Resume(a1);
}

void sub_1BFCFB8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *(v3 + 296);
  if (v4 == 5)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if (*(v3 + 288) != 5)
    {
      sub_5AF20();
    }

    sub_1C00E4C(a2, 0, *(v3 + 88), *(v3 + 96), (*(v3 + 96) - *(v3 + 88)) >> 6);
    v10 = *(v3 + 8);
    v11 = *(v3 + 16);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v10)
    {
      v13 = *(v3 + 8);
      v12 = *(v3 + 16);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *(v13 + 296) == 1;
        sub_1220A18(v12);
        if (!v11)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v14 = *(v13 + 296) == 1;
        if (!v11)
        {
LABEL_28:
          v16 = *(v3 + 8);
          v15 = *(v3 + 16);
          if (!v14)
          {
            goto LABEL_36;
          }

          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            if (*(v16 + 288) == 2)
            {
              sub_1220A18(v15);
LABEL_35:
              sub_1C00E4C(a2, a2[1], *(v16 + 208), *(v16 + 216), (*(v16 + 216) - *(v16 + 208)) >> 6);
              v16 = *(v3 + 8);
              v15 = *(v3 + 16);
LABEL_36:
              if (v15)
              {
                atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v16)
              {
                v18 = *(v3 + 8);
                v17 = *(v3 + 16);
                if (!v17)
                {
                  LODWORD(v16) = *(v18 + 296) == 4;
                  if (!v15)
                  {
LABEL_43:
                    if (!v16)
                    {
                      return;
                    }

                    v20 = *(v3 + 8);
                    v19 = *(v3 + 16);
                    if (v19)
                    {
                      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
                      if (*(v20 + 288) == 4)
                      {
                        sub_1220A18(v19);
LABEL_50:
                        sub_1C00E4C(a2, a2[1], *(v20 + 152), *(v20 + 160), (*(v20 + 160) - *(v20 + 152)) >> 6);
                        return;
                      }
                    }

                    else if (*(v20 + 288) == 4)
                    {
                      goto LABEL_50;
                    }

                    sub_5AF20();
                  }

LABEL_42:
                  sub_1220A18(v15);
                  goto LABEL_43;
                }

                atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                LODWORD(v16) = *(v18 + 296) == 4;
                sub_1220A18(v17);
              }

              if (!v15)
              {
                goto LABEL_43;
              }

              goto LABEL_42;
            }
          }

          else if (*(v16 + 288) == 2)
          {
            goto LABEL_35;
          }

          sub_5AF20();
        }
      }
    }

    else
    {
      v14 = 0;
      if (!v11)
      {
        goto LABEL_28;
      }
    }

    sub_1220A18(v11);
    goto LABEL_28;
  }

  if (v4 == 3)
  {
    if (*(v3 + 288))
    {
      sub_5AF20();
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *(v3 + 56);
    v6 = *(v3 + 64);
    goto LABEL_23;
  }

LABEL_6:
  v7 = *(a1 + 24);
  if (!v7)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  v8 = *(v7 + 72);
  if (v8 != 9 && v8 != 6)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *(v7 + 48);
    v6 = *(v7 + 56);
LABEL_23:

    sub_19A22C0(a2, v5, v6, (v6 - v5) >> 6);
    return;
  }

  sub_1C11C3C(v7, a2);
}

void sub_1BFD268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19A240C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1BFD2A4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  if (v3 && *(v3 + 296) == 3)
  {
    if (*(v3 + 288))
    {
      sub_5AF20();
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);

    return sub_19A22C0(a2, v4, v5, (v5 - v4) >> 6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_1BFD304(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  memset(v26, 0, sizeof(v26));
  if (*(a1 + 8) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = sub_1C047A8(a1, v8);
      sub_1DBAD7C((*(v9 + 24) & 0xFFFFFFFFFFFFFFFELL), v25);
      v10 = v25[0];
      v11 = v25[1];
      while (v10 != v11)
      {
        if (!sub_1BFC3BC(v10))
        {
          v12 = sub_19D5254(&v27, v10);
          if (v28 == v12)
          {
            sub_1A489AC(v26, v10);
            v14 = *(v10 + 6);
            if (*(v10 + 23) < 0)
            {
              sub_325C(&__p, *v10, *(v10 + 1));
            }

            else
            {
              v15 = *v10;
              __p.__r_.__value_.__r.__words[2] = *(v10 + 2);
              *&__p.__r_.__value_.__l.__data_ = v15;
            }

            v24 = v8 + (v14 << 32);
            sub_1C01208(&v27, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v13 = *(v10 + 6);
            if (*(v12 + 60) > v13)
            {
              *(v12 + 56) = v8;
              *(v12 + 60) = v13;
            }
          }
        }

        v10 += 2;
      }

      __p.__r_.__value_.__r.__words[0] = v25;
      sub_19E2C00(&__p);
      ++v8;
    }

    while (v8 < *(a1 + 8));
  }

  sub_1C012AC(&v20, &v27, v26);
  __p.__r_.__value_.__r.__words[0] = v26;
  sub_195E3E8(&__p);
  sub_1962CE0(&v27, v28[0]);
  if (v22[0] == v22[1])
  {
    *&v16 = 0;
    *a4 = 0u;
    *(a4 + 16) = v16;
    *(a4 + 40) = 0;
    *(a4 + 48) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 1065353216;
    *(a4 + 32) = 0;
    *(a4 + 64) = 0;
    *(a4 + 68) = 0x8000000080000000;
    *(a4 + 76) = 0x7FFFFFFF;
    *(a4 + 120) = 0;
    *(a4 + 122) = 0;
  }

  else
  {
    sub_1AE929C(v22, a3, a2, &__p);
    v17 = sub_19D5254(&v20, &__p);
    *&v18 = 0;
    *a4 = 0u;
    *(a4 + 16) = v18;
    *(a4 + 40) = 0;
    *(a4 + 48) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 1065353216;
    *(a4 + 32) = 0;
    *(a4 + 64) = 0;
    *(a4 + 68) = 0x8000000080000000;
    *(a4 + 76) = 0x7FFFFFFF;
    *(a4 + 120) = 0;
    *(a4 + 122) = 0;
    if (&v21 != v17)
    {
      v19 = sub_1C047A8(a1, *(v17 + 56));
      *(a4 + 24) = 1;
      std::string::operator=((a4 + 40), &__p);
      std::string::operator=(a4, (*(v19 + 32) & 0xFFFFFFFFFFFFFFFELL));
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  __p.__r_.__value_.__r.__words[0] = v22;
  sub_195E3E8(&__p);
  sub_1962CE0(&v20, v21);
}

void sub_1BFD5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1C01530(&a9);
  _Unwind_Resume(a1);
}

void sub_1BFD668(__int128 **a1@<X0>, void **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void (***a5)(void **__return_ptr, void, uint64_t, uint64_t)@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v22 = 0uLL;
  v23 = 0;
  v14 = sub_1BFCCA8(a4);
  if (!v14)
  {
    sub_1E78448();
  }

  sub_1E789A4(a2, &v22);
  if (a6)
  {
    sub_1BFCDFC(&v22, a4, a5, v21);
  }

  else
  {
    memset(v21, 0, sizeof(v21));
    sub_19A22C0(v21, v22, *(&v22 + 1), (*(&v22 + 1) - v22) >> 6);
  }

  sub_1BFC400(a1, v21, v14, &v19);
  v15 = v19;
  v16 = HIDWORD(v19);
  if (*(a4 + 23) < 0)
  {
    sub_325C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v18 = *(a4 + 16);
  }

  sub_1C01578(a7, a2, v16 + v15, v15, v16, __p, *(a4 + 32), *(a4 + 24), *(a4 + 28), a3, &v20);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  sub_11BD8(&v20);
  v19 = v21;
  sub_19A240C(&v19);
  v19 = &v22;
  sub_19A240C(&v19);
}

void sub_1BFD81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_11BD8(&a19);
  a18 = &a25;
  sub_19A240C(&a18);
  a18 = (v25 - 112);
  sub_19A240C(&a18);
  _Unwind_Resume(a1);
}

void sub_1BFD884(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void (***a5)(void **__return_ptr, void, uint64_t, uint64_t)@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  if (a6)
  {
    (**a5)(v17, a5, a1, a4);
  }

  else if (*(a1 + 23) < 0)
  {
    sub_325C(v17, *a1, *(a1 + 8));
  }

  else
  {
    *v17 = *a1;
    v18 = *(a1 + 16);
  }

  sub_1CEB124(v17, a2, v15);
  v11 = v16;
  if (v16)
  {
    v12 = 0;
    do
    {
      v12 += *(v11 + 5);
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  if (*(a4 + 23) < 0)
  {
    sub_325C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v14 = *(a4 + 16);
  }

  sub_1C01578(a7, a2, v12, 0, v12, __p, *(a4 + 32), *(a4 + 24), *(a4 + 28), a3, v15);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  sub_11BD8(v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_1BFD9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_11BD8(&a17);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1BFDA28(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memset(v14, 0, sizeof(v14));
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = v7 + 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v8 + 8 * v9;
    do
    {
      sub_1DBAD7C((*(*v8 + 24) & 0xFFFFFFFFFFFFFFFELL), v13);
      v11 = v13[0];
      v12 = v13[1];
      while (v11 != v12)
      {
        sub_1A489AC(v14, v11);
        v11 += 2;
      }

      v15 = v13;
      sub_19E2C00(&v15);
      v8 += 8;
    }

    while (v8 != v10);
  }

  sub_1AE929C(v14, a3, a2, a4);
  v13[0] = v14;
  sub_195E3E8(v13);
}

void sub_1BFDB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_195E3E8(&a10);
  _Unwind_Resume(a1);
}

void sub_1BFDB40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, void (***a8)(void **__return_ptr, void, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>, __n128 a10@<Q1>, int a11, char a12)
{
  if (*a1 == *(a1 + 8))
  {
    a10.n128_u64[0] = 0;
    *a9 = 0u;
    *(a9 + 16) = a10;
    *(a9 + 40) = 0;
    *(a9 + 48) = 0u;
    *(a9 + 80) = 0u;
    *(a9 + 96) = 0u;
    *(a9 + 112) = 1065353216;
    *(a9 + 32) = 0;
    *(a9 + 64) = 0;
    *(a9 + 68) = 0x8000000080000000;
    *(a9 + 76) = 0x7FFFFFFF;
    *(a9 + 120) = 0;
    *(a9 + 122) = 0;
    return;
  }

  v92 = 0uLL;
  v93 = 0;
  if (a12)
  {
    sub_1BFDA28(a3, a4, a5, v84);
    v92 = *v84;
    v93 = *&v84[16];
  }

  v42 = a4;
  a10.n128_u64[0] = 0;
  *v84 = 0u;
  *&v84[16] = a10;
  memset(&v86, 0, sizeof(v86));
  memset(v88, 0, sizeof(v88));
  v89 = 1065353216;
  v85 = 0;
  LOBYTE(v87) = 0;
  *(&v87 + 4) = 0x8000000080000000;
  HIDWORD(v87) = 0x7FFFFFFF;
  v90 = 0;
  v91 = 0;
  if (*(a3 + 8) >= 1)
  {
    v18 = 0;
    v45 = HIDWORD(a6);
    do
    {
      v19 = sub_1C047A8(a3, v18);
      sub_1DBAD7C((*(v19 + 24) & 0xFFFFFFFFFFFFFFFELL), v83);
      v20 = sub_58BBC(a5);
      sub_1BFC678(v83, v20, v79);
      if ((v82 & 1) == 0)
      {
        v29 = 4;
        goto LABEL_97;
      }

      if (a12)
      {
        v22 = SHIBYTE(v80);
        v23 = v79[1];
        if (v80 >= 0)
        {
          v24 = HIBYTE(v80);
        }

        else
        {
          v24 = v79[1];
        }

        v25 = HIBYTE(v93);
        if (v93 < 0)
        {
          v25 = *(&v92 + 1);
        }

        if (v24 != v25 || (v80 >= 0 ? (v26 = v79) : (v26 = v79[0]), v93 >= 0 ? (v27 = &v92) : (v27 = v92), memcmp(v26, v27, v24)))
        {
          if (v22 < 0)
          {
            if (v23 != dword_4)
            {
              goto LABEL_28;
            }

            v28 = v79[0];
          }

          else
          {
            if (v22 != 4)
            {
              goto LABEL_28;
            }

            v28 = v79;
          }

          if (*v28 != 1701080931)
          {
LABEL_28:
            v29 = 4;
            goto LABEL_97;
          }
        }
      }

      *&v21 = 0;
      *__p = 0u;
      v70 = v21;
      memset(&v72, 0, sizeof(v72));
      v74 = 0u;
      v75 = 0u;
      v71 = 0;
      LOBYTE(v73) = 0;
      *(&v73 + 4) = 0x8000000080000000;
      v76 = 1065353216;
      HIDWORD(v73) = 0x7FFFFFFF;
      v77 = 0;
      v78 = 0;
      if (v45)
      {
        if (*(a2 + 23) < 0)
        {
          sub_325C(v53, *a2, *(a2 + 8));
        }

        else
        {
          *v53 = *a2;
          v54 = *(a2 + 16);
        }

        v32 = *(v19 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v32 + 23) < 0)
        {
          sub_325C(v51, *v32, *(v32 + 8));
        }

        else
        {
          v33 = *v32;
          v52 = *(v32 + 16);
          *v51 = v33;
        }

        if (SHIBYTE(v80) < 0)
        {
          sub_325C(v47, v79[0], v79[1]);
        }

        else
        {
          *v47 = *v79;
          v48 = v80;
        }

        v49 = v81;
        v50 = v82;
        sub_1BFD884(v53, v51, v18, v47, a8, a7 == 1, v61);
        if (SBYTE7(v70) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *v61;
        v70 = v62;
        BYTE7(v62) = 0;
        LOBYTE(v61[0]) = 0;
        v71 = v63;
        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        v72 = v64;
        *(&v64.__r_.__value_.__s + 23) = 0;
        v64.__r_.__value_.__s.__data_[0] = 0;
        v73 = v65;
        sub_19608BC(&v74, v66);
        v77 = v67;
        v78 = v68;
        sub_11BD8(v66);
        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if (SBYTE7(v62) < 0)
        {
          operator delete(v61[0]);
        }

        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47[0]);
        }

        if (SHIBYTE(v52) < 0)
        {
          operator delete(v51[0]);
        }

        if (SHIBYTE(v54) < 0)
        {
          v34 = v53[0];
          goto LABEL_71;
        }
      }

      else
      {
        v30 = *(v19 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v30 + 23) < 0)
        {
          sub_325C(&v59, *v30, *(v30 + 8));
        }

        else
        {
          v31 = *v30;
          v60 = *(v30 + 16);
          v59 = v31;
        }

        if (SHIBYTE(v80) < 0)
        {
          sub_325C(v55, v79[0], v79[1]);
        }

        else
        {
          *v55 = *v79;
          v56 = v80;
        }

        v57 = v81;
        v58 = v82;
        sub_1BFD668(a1, &v59, v18, v55, a8, a7 == 1, v61);
        if (SBYTE7(v70) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *v61;
        v70 = v62;
        BYTE7(v62) = 0;
        LOBYTE(v61[0]) = 0;
        v71 = v63;
        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        v72 = v64;
        *(&v64.__r_.__value_.__s + 23) = 0;
        v64.__r_.__value_.__s.__data_[0] = 0;
        v73 = v65;
        sub_19608BC(&v74, v66);
        v77 = v67;
        v78 = v68;
        sub_11BD8(v66);
        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if (SBYTE7(v62) < 0)
        {
          operator delete(v61[0]);
        }

        if (SHIBYTE(v56) < 0)
        {
          operator delete(v55[0]);
        }

        if (SHIBYTE(v60) < 0)
        {
          v34 = v59;
LABEL_71:
          operator delete(v34);
        }
      }

      if (v77 == 1)
      {
        if ((v90 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else if (v90)
      {
        goto LABEL_83;
      }

      if (DWORD2(v70) == *&v84[24])
      {
        v35 = SHIDWORD(v73) < SHIDWORD(v87);
        if (HIDWORD(v73) == HIDWORD(v87))
        {
          v35 = SDWORD1(v73) < SDWORD1(v87);
          if (DWORD1(v73) == DWORD1(v87))
          {
            v35 = SDWORD2(v73) < SDWORD2(v87);
          }
        }

        if (!v35)
        {
LABEL_81:
          v29 = 4;
          goto LABEL_93;
        }
      }

      else if (SDWORD2(v70) <= *&v84[24])
      {
        goto LABEL_81;
      }

LABEL_83:
      std::string::operator=(v84, __p);
      *&v84[24] = *(&v70 + 1);
      v85 = v71;
      std::string::operator=(&v86, &v72);
      v87 = v73;
      v89 = v76;
      sub_1960DDC(v88, v75, 0);
      v90 = v77;
      v91 = v78;
      if (v82 == 1 && SDWORD2(v70) == (*(a1 + 8) - *a1) >> 6)
      {
        if (SHIBYTE(v80) < 0)
        {
          if (v79[1] == dword_4)
          {
            v36 = v79[0];
            goto LABEL_91;
          }
        }

        else if (SHIBYTE(v80) == 4)
        {
          v36 = v79;
LABEL_91:
          if (*v36 == 1701080931)
          {
            sub_1BFD304(a3, v42, a5, a9);
            v29 = 1;
            *(a9 + 120) = 1;
            goto LABEL_93;
          }
        }

        *a9 = *__p;
        v37 = v70;
        __p[1] = 0;
        *&v70 = 0;
        __p[0] = 0;
        v38 = *(&v70 + 1);
        *(a9 + 16) = v37;
        *(a9 + 24) = v38;
        *(a9 + 32) = v71;
        *(a9 + 40) = v72;
        memset(&v72, 0, sizeof(v72));
        *(a9 + 64) = v73;
        sub_195FFEC(a9 + 80, &v74);
        *(a9 + 120) = v77;
        *(a9 + 122) = v78;
        v29 = 1;
        goto LABEL_93;
      }

      v29 = 0;
LABEL_93:
      sub_11BD8(&v74);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v70) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_97:
      if (SHIBYTE(v80) < 0)
      {
        operator delete(v79[0]);
      }

      __p[0] = v83;
      sub_19E2C00(__p);
      if ((v29 | 4) != 4)
      {
        goto LABEL_112;
      }

      ++v18;
    }

    while (v18 < *(a3 + 8));
  }

  if (!a12)
  {
    goto LABEL_111;
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v86.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_111;
    }

    v39 = v86.__r_.__value_.__r.__words[0];
  }

  else
  {
    v39 = &v86;
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_111;
    }
  }

  if (LODWORD(v39->__r_.__value_.__l.__data_) == 1701080931)
  {
    sub_1BFD304(a3, v42, a5, a9);
    *(a9 + 120) = 1;
    goto LABEL_112;
  }

LABEL_111:
  *a9 = *v84;
  v40 = *&v84[16];
  memset(v84, 0, 24);
  v41 = *&v84[24];
  *(a9 + 16) = v40;
  *(a9 + 24) = v41;
  *(a9 + 32) = v85;
  *(a9 + 40) = v86;
  memset(&v86, 0, sizeof(v86));
  *(a9 + 64) = v87;
  sub_195FFEC(a9 + 80, v88);
  *(a9 + 120) = v90;
  *(a9 + 122) = v91;
LABEL_112:
  sub_11BD8(v88);
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if ((v84[23] & 0x80000000) != 0)
  {
    operator delete(*v84);
  }

  if (SHIBYTE(v93) < 0)
  {
    operator delete(v92);
  }
}

void sub_1BFE418(_Unwind_Exception *a1)
{
  sub_19D4D44(v1 - 256);
  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_1BFE4F8(__int128 **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X5>, int a5@<W7>, uint64_t a6@<X8>, __n128 a7@<Q1>, void (***a8)(void **__return_ptr, void, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t *a11)
{
  a7.n128_u64[0] = 0;
  *(a6 + 40) = 0;
  v32 = (a6 + 40);
  *a6 = 0u;
  *(a6 + 16) = a7;
  *(a6 + 48) = 0u;
  *(a6 + 80) = 0u;
  v30 = (a6 + 80);
  *(a6 + 96) = 0u;
  *(a6 + 112) = 1065353216;
  *(a6 + 64) = 0;
  v31 = (a6 + 64);
  *(a6 + 32) = 0;
  *(a6 + 68) = 0x8000000080000000;
  *(a6 + 76) = 0x7FFFFFFF;
  *(a6 + 120) = 0;
  v12 = (a6 + 120);
  *(a6 + 122) = 0;
  v14 = *a11;
  v13 = a11[1];
  if (*a11 != v13)
  {
    v16 = HIDWORD(a4);
    do
    {
      v17 = (v14 + 8);
      v18 = sub_1C047A8(a3, *v14);
      v19 = v18;
      *&v20 = 0;
      *__str = 0u;
      *&__str[16] = v20;
      memset(&v60, 0, sizeof(v60));
      v62 = 0u;
      v63 = 0u;
      v59 = 0;
      LOBYTE(v61) = 0;
      *(&v61 + 4) = 0x8000000080000000;
      v64 = 1065353216;
      HIDWORD(v61) = 0x7FFFFFFF;
      v65 = 0;
      v66 = 0;
      if (v16)
      {
        if (*(a2 + 23) < 0)
        {
          sub_325C(v42, *a2, *(a2 + 8));
        }

        else
        {
          *v42 = *a2;
          v43 = *(a2 + 16);
        }

        v25 = *(v19 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v25 + 23) < 0)
        {
          sub_325C(v40, *v25, *(v25 + 8));
        }

        else
        {
          v26 = *v25;
          v41 = *(v25 + 16);
          *v40 = v26;
        }

        v28 = *v14;
        if (*(v14 + 31) < 0)
        {
          sub_325C(v36, *(v14 + 8), *(v14 + 16));
        }

        else
        {
          v29 = *v17;
          v37 = *(v14 + 24);
          *v36 = v29;
        }

        v38 = *(v14 + 32);
        v39 = 1;
        sub_1BFD884(v42, v40, v28, v36, a8, a5, v50);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        *__str = *v50;
        *&__str[16] = v51;
        BYTE7(v51) = 0;
        LOBYTE(v50[0]) = 0;
        v59 = v52;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        v60 = __p;
        *(&__p.__r_.__value_.__s + 23) = 0;
        __p.__r_.__value_.__s.__data_[0] = 0;
        v61 = v54;
        sub_19608BC(&v62, v55);
        v65 = v56;
        v66 = v57;
        sub_11BD8(v55);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SBYTE7(v51) < 0)
        {
          operator delete(v50[0]);
        }

        if (SHIBYTE(v37) < 0)
        {
          operator delete(v36[0]);
        }

        if (SHIBYTE(v41) < 0)
        {
          operator delete(v40[0]);
        }

        if ((SHIBYTE(v43) & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        v27 = v42[0];
      }

      else
      {
        v21 = *(v18 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v21 + 23) < 0)
        {
          sub_325C(&v48, *v21, *(v21 + 8));
        }

        else
        {
          v22 = *v21;
          v49 = *(v21 + 16);
          v48 = v22;
        }

        v23 = *v14;
        if (*(v14 + 31) < 0)
        {
          sub_325C(v44, *(v14 + 8), *(v14 + 16));
        }

        else
        {
          v24 = *v17;
          v45 = *(v14 + 24);
          *v44 = v24;
        }

        v46 = *(v14 + 32);
        v47 = 1;
        sub_1BFD668(a1, &v48, v23, v44, a8, a5, v50);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        *__str = *v50;
        *&__str[16] = v51;
        BYTE7(v51) = 0;
        LOBYTE(v50[0]) = 0;
        v59 = v52;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        v60 = __p;
        *(&__p.__r_.__value_.__s + 23) = 0;
        __p.__r_.__value_.__s.__data_[0] = 0;
        v61 = v54;
        sub_19608BC(&v62, v55);
        v65 = v56;
        v66 = v57;
        sub_11BD8(v55);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SBYTE7(v51) < 0)
        {
          operator delete(v50[0]);
        }

        if (SHIBYTE(v45) < 0)
        {
          operator delete(v44[0]);
        }

        if ((SHIBYTE(v49) & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        v27 = v48;
      }

      operator delete(v27);
LABEL_46:
      if (sub_1BFCC34(__str, a6))
      {
        std::string::operator=(a6, __str);
        *(a6 + 24) = *&__str[24];
        *(a6 + 32) = v59;
        std::string::operator=(v32, &v60);
        *v31 = v61;
        if (__str != a6)
        {
          *(a6 + 112) = v64;
          sub_1960DDC(v30, v63, 0);
        }

        *v12 = v65;
        *(a6 + 122) = v66;
      }

      sub_11BD8(&v62);
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      v14 += 40;
    }

    while (v14 != v13);
  }
}

void sub_1BFE9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  sub_19D4D44(v55 - 240);
  sub_19D4D44(v54);
  _Unwind_Resume(a1);
}

void sub_1BFEA78(__int128 **a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unint64_t a6, unsigned int a7, int a8, void (***a9)(void **__return_ptr, void, uint64_t, uint64_t), int a10, void *a11, uint64_t *a12, uint64_t *a13, void *a14, void *a15, uint64_t *a16)
{
  v18 = *a13;
  v17 = a13[1];
  if (*a13 != v17)
  {
    v29 = a7;
    do
    {
      if (!sub_1C04888(a15, v18))
      {
        sub_23914(a15, v18);
        if (*(v18 + 23) < 0)
        {
          sub_325C(&v45, *v18, *(v18 + 8));
        }

        else
        {
          v21 = *v18;
          v46 = *(v18 + 16);
          v45 = v21;
        }

        v36 = 0uLL;
        v37 = 0;
        sub_68678C(&v36, &v45, &v47, 1uLL);
        sub_1AE97AC(&v36, a12, a4, v42);
        v44 = &v36;
        sub_195E3E8(&v44);
        if (SHIBYTE(v46) < 0)
        {
          operator delete(v45);
        }

        if (!sub_1C04888(a14, v42))
        {
          sub_23914(a14, v42);
          v22 = sub_19D52D4(a11, v42);
          if (v22)
          {
            if (*(a2 + 23) < 0)
            {
              sub_325C(__p, *a2, *(a2 + 8));
            }

            else
            {
              *__p = *a2;
              v35 = *(a2 + 16);
            }

            v16 = v16 & 0xFFFFFFFF00000000 | v29;
            LODWORD(v27) = a10;
            sub_1BFE4F8(a1, __p, a3, a6, a8, &v36, v23, a9, v27, v28, v22 + 5);
            v24 = a16;
            if (SHIBYTE(v35) < 0)
            {
              operator delete(__p[0]);
              v24 = a16;
            }

            if (v38 >= 1)
            {
              v25 = v24[1];
              if (v25 >= v24[2])
              {
                v26 = sub_1C0177C(v24, &v36);
              }

              else
              {
                sub_1C01680(v24, &v36);
                v26 = v25 + 128;
              }

              a16[1] = v26;
            }

            sub_11BD8(&v41);
            if (v40 < 0)
            {
              operator delete(v39);
            }

            if (SHIBYTE(v37) < 0)
            {
              operator delete(v36);
            }
          }
        }

        if (v43 < 0)
        {
          operator delete(v42[0]);
        }
      }

      v18 += 24;
    }

    while (v18 != v17);
  }
}

void sub_1BFED0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (*(v30 - 137) < 0)
  {
    operator delete(*(v30 - 160));
  }

  _Unwind_Resume(exception_object);
}

__int128 **sub_1BFED94@<X0>(__int128 **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unsigned int a7@<W6>, void (***a8)(void **__return_ptr, void, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>, __n128 a10@<Q1>, int a11)
{
  if (*result == result[1])
  {
    a10.n128_u64[0] = 0;
    *a9 = 0u;
    *(a9 + 16) = a10;
    *(a9 + 40) = 0;
    *(a9 + 48) = 0u;
    *(a9 + 80) = 0u;
    *(a9 + 96) = 0u;
    *(a9 + 112) = 1065353216;
    *(a9 + 32) = 0;
    *(a9 + 64) = 0;
    *(a9 + 68) = 0x8000000080000000;
    *(a9 + 76) = 0x7FFFFFFF;
    *(a9 + 120) = 0;
    *(a9 + 122) = 0;
    return result;
  }

  v13 = result;
  v131 = 0u;
  v132 = 0u;
  v133 = 1065353216;
  if (*(a3 + 8) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = sub_1C047A8(a3, v14);
      sub_1DBAD7C((*(v15 + 24) & 0xFFFFFFFFFFFFFFFELL), v111);
      v16 = v111[0];
      v17 = v111[1];
      while (v16 != v17)
      {
        *&v92[0] = v16;
        v18 = sub_1C04AF0(&v131, v16);
        *__p = v14;
        if (v16[23] < 0)
        {
          sub_325C(&__p[8], *v16, *(v16 + 1));
        }

        else
        {
          v19 = *v16;
          *&__p[24] = *(v16 + 2);
          *&__p[8] = v19;
        }

        v121 = *(v16 + 3);
        v20 = v18[6];
        if (v20 >= v18[7])
        {
          v22 = sub_1C01C18(v18 + 5, __p);
          v23 = __p[31];
          v18[6] = v22;
          if (v23 < 0)
          {
            operator delete(*&__p[8]);
          }
        }

        else
        {
          *v20 = *__p;
          v21 = *&__p[8];
          *(v20 + 24) = *&__p[24];
          *(v20 + 8) = v21;
          memset(&__p[8], 0, 24);
          *(v20 + 32) = v121;
          v18[6] = v20 + 40;
        }

        v16 += 32;
      }

      *__p = v111;
      sub_19E2C00(__p);
      ++v14;
    }

    while (v14 < *(a3 + 8));
  }

  v129 = 0uLL;
  v130 = 0;
  sub_3608D0(__p, "code");
  v24 = sub_1C04888(&v131, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v24)
  {
    sub_3608D0(__p, "code");
    v111[0] = __p;
    v26 = sub_1C04E64(&v131, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v27 = v26[5];
    for (i = v26[6]; v27 != i; v27 += 40)
    {
      v29 = (v27 + 8);
      v30 = sub_1C047A8(a3, *v27);
      v31 = v30;
      *&v32 = 0;
      *__p = 0u;
      *&__p[16] = v32;
      v123 = 0;
      v122 = 0uLL;
      memset(v125, 0, sizeof(v125));
      LODWORD(v121) = 0;
      LOBYTE(v124) = 0;
      *(&v124 + 4) = 0x8000000080000000;
      v126 = 1065353216;
      HIDWORD(v124) = 0x7FFFFFFF;
      v127 = 0;
      v128 = 0;
      if (HIDWORD(a6))
      {
        if (*(a2 + 23) < 0)
        {
          sub_325C(v103, *a2, *(a2 + 8));
        }

        else
        {
          *v103 = *a2;
          v104 = *(a2 + 16);
        }

        v37 = *(v31 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v37 + 23) < 0)
        {
          sub_325C(v101, *v37, *(v37 + 8));
        }

        else
        {
          v38 = *v37;
          v102 = *(v37 + 16);
          *v101 = v38;
        }

        v40 = *v27;
        if (v27[31] < 0)
        {
          sub_325C(v97, *(v27 + 1), *(v27 + 2));
        }

        else
        {
          v41 = *v29;
          v98 = *(v27 + 3);
          *v97 = v41;
        }

        v99 = *(v27 + 4);
        v100 = 1;
        sub_1BFD884(v103, v101, v40, v97, a8, a7 == 1, v111);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        *__p = *v111;
        *&__p[16] = v112;
        BYTE7(v112) = 0;
        LOBYTE(v111[0]) = 0;
        LODWORD(v121) = v113;
        if (SHIBYTE(v123) < 0)
        {
          operator delete(v122);
        }

        v122 = v114;
        v123 = v115;
        HIBYTE(v115) = 0;
        LOBYTE(v114) = 0;
        v124 = v116;
        sub_19608BC(v125, v117);
        v127 = v118;
        v128 = v119;
        sub_11BD8(v117);
        if (SHIBYTE(v115) < 0)
        {
          operator delete(v114);
        }

        if (SBYTE7(v112) < 0)
        {
          operator delete(v111[0]);
        }

        if (SHIBYTE(v98) < 0)
        {
          operator delete(v97[0]);
        }

        if (SHIBYTE(v102) < 0)
        {
          operator delete(v101[0]);
        }

        if (SHIBYTE(v104) < 0)
        {
          v39 = v103[0];
          goto LABEL_63;
        }
      }

      else
      {
        v33 = *(v30 + 32) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v33 + 23) < 0)
        {
          sub_325C(&v109, *v33, *(v33 + 8));
        }

        else
        {
          v34 = *v33;
          v110 = *(v33 + 16);
          v109 = v34;
        }

        v35 = *v27;
        if (v27[31] < 0)
        {
          sub_325C(v105, *(v27 + 1), *(v27 + 2));
        }

        else
        {
          v36 = *v29;
          v106 = *(v27 + 3);
          *v105 = v36;
        }

        v107 = *(v27 + 4);
        v108 = 1;
        sub_1BFD668(v13, &v109, v35, v105, a8, a7 == 1, v111);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        *__p = *v111;
        *&__p[16] = v112;
        BYTE7(v112) = 0;
        LOBYTE(v111[0]) = 0;
        LODWORD(v121) = v113;
        if (SHIBYTE(v123) < 0)
        {
          operator delete(v122);
        }

        v122 = v114;
        v123 = v115;
        HIBYTE(v115) = 0;
        LOBYTE(v114) = 0;
        v124 = v116;
        sub_19608BC(v125, v117);
        v127 = v118;
        v128 = v119;
        sub_11BD8(v117);
        if (SHIBYTE(v115) < 0)
        {
          operator delete(v114);
        }

        if (SBYTE7(v112) < 0)
        {
          operator delete(v111[0]);
        }

        if (SHIBYTE(v106) < 0)
        {
          operator delete(v105[0]);
        }

        if (SHIBYTE(v110) < 0)
        {
          v39 = v109;
LABEL_63:
          operator delete(v39);
        }
      }

      v42 = *&__p[24];
      v43 = (v13[1] - *v13) >> 6;
      if (v43 == *&__p[24])
      {
        sub_1BFD304(a3, a4, a5, a9);
        *(a9 + 120) = 1;
      }

      else
      {
        v44 = *(&v129 + 1);
        if (*(&v129 + 1) >= v130)
        {
          v45 = sub_1C0208C(&v129, __p);
        }

        else
        {
          sub_1C01F90(&v129, __p);
          v45 = v44 + 128;
        }

        *(&v129 + 1) = v45;
      }

      sub_11BD8(v125);
      if (SHIBYTE(v123) < 0)
      {
        operator delete(v122);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (v43 == v42)
      {
        goto LABEL_161;
      }
    }
  }

  v94 = 0;
  v95 = 0;
  v96 = 0;
  v46 = v132;
  if (v132)
  {
    v47 = 0;
    while (1)
    {
      v48 = (v46 + 2);
      v49 = *(v46 + 39);
      if (*(v46 + 39) < 0)
      {
        v51 = v46[3];
        if (!v51)
        {
          goto LABEL_96;
        }

        if (v51 != 4)
        {
          if (v47 < v96)
          {
            goto LABEL_93;
          }

          goto LABEL_91;
        }

        v50 = *v48;
      }

      else
      {
        if (!*(v46 + 39))
        {
          goto LABEL_96;
        }

        v50 = v46 + 2;
        if (v49 != 4)
        {
          if (v47 < v96)
          {
            goto LABEL_89;
          }

          goto LABEL_91;
        }
      }

      if (*v50 != 1701080931)
      {
        if (v47 < v96)
        {
          if ((v49 & 0x80) == 0)
          {
LABEL_89:
            v52 = *v48;
            *(v47 + 16) = v46[4];
            *v47 = v52;
            goto LABEL_94;
          }

          v51 = v46[3];
LABEL_93:
          sub_325C(v47, *v48, v51);
LABEL_94:
          v47 += 24;
LABEL_95:
          v95 = v47;
          goto LABEL_96;
        }

LABEL_91:
        v47 = sub_1CEE8(&v94, v48);
        goto LABEL_95;
      }

LABEL_96:
      v46 = *v46;
      if (!v46)
      {
        v53 = v94;
        goto LABEL_100;
      }
    }
  }

  v47 = 0;
  v53 = 0;
LABEL_100:
  *v111 = 0u;
  v112 = 0u;
  v113 = 1065353216;
  memset(v92, 0, sizeof(v92));
  v93 = 1065353216;
  if (v53 != v47)
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(v90, *a2, *(a2 + 8));
    }

    else
    {
      *v90 = *a2;
      v91 = *(a2 + 16);
    }

    v54 = sub_F931AC(a5);
    sub_1BFEA78(v13, v90, a3, a4, v55, a6, a7, a7 == 1, a8, a11, &v131, &v94, v54, v111, v92, &v129);
    if (SHIBYTE(v91) < 0)
    {
      operator delete(v90[0]);
    }

    for (j = v129; j != *(&v129 + 1); j += 128)
    {
      if (*(j + 32) > 0)
      {
        goto LABEL_115;
      }
    }

    if (*(a2 + 23) < 0)
    {
      sub_325C(v88, *a2, *(a2 + 8));
    }

    else
    {
      *v88 = *a2;
      v89 = *(a2 + 16);
    }

    v57 = sub_58BBC(a5);
    sub_1BFEA78(v13, v88, a3, a4, v58, a6, a7, a7 == 1, a8, a11, &v131, &v94, v57, v111, v92, &v129);
    if (SHIBYTE(v89) < 0)
    {
      operator delete(v88[0]);
    }
  }

LABEL_115:
  for (k = v129; k != *(&v129 + 1); k += 128)
  {
    if (*(k + 32) > 0)
    {
      goto LABEL_143;
    }
  }

  sub_3608D0(__p, &unk_236C8E4);
  v60 = sub_1C04888(&v131, __p);
  v61 = v60;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (!v61)
    {
      goto LABEL_143;
    }
  }

  else if (!v60)
  {
    goto LABEL_143;
  }

  if (*(a2 + 23) < 0)
  {
    sub_325C(v86, *a2, *(a2 + 8));
  }

  else
  {
    *v86 = *a2;
    v87 = *(a2 + 16);
  }

  sub_3608D0(v84, &unk_236C8E4);
  sub_3608D0(v82, &unk_236C8E4);
  v134 = v82;
  v62 = sub_1C04E64(&v131, v82);
  LODWORD(v74) = a11;
  sub_1BFE4F8(v13, v86, a3, a6, a7 == 1, __p, v63, a8, v74, v75, v62 + 5);
  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  if (v85 < 0)
  {
    operator delete(v84[0]);
  }

  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86[0]);
  }

  sub_3608D0(v84, &unk_236C8E4);
  sub_4BE060(v111, v84);
  if (v85 < 0)
  {
    operator delete(v84[0]);
  }

  if (*&__p[24] >= 1)
  {
    v64 = *(&v129 + 1);
    if (*(&v129 + 1) >= v130)
    {
      v65 = sub_1C0208C(&v129, __p);
    }

    else
    {
      sub_1C01F90(&v129, __p);
      v65 = v64 + 128;
    }

    *(&v129 + 1) = v65;
  }

  sub_11BD8(v125);
  if (SHIBYTE(v123) < 0)
  {
    operator delete(v122);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

LABEL_143:
  v66 = v129;
  if (v129 == *(&v129 + 1))
  {
    *&v25 = 0;
    *a9 = 0u;
    *(a9 + 16) = v25;
    *(a9 + 40) = 0;
    *(a9 + 48) = 0u;
    *(a9 + 80) = 0u;
    *(a9 + 96) = 0u;
    *(a9 + 112) = 1065353216;
    *(a9 + 32) = 0;
    *(a9 + 64) = 0;
    *(a9 + 68) = 0x8000000080000000;
    *(a9 + 76) = 0x7FFFFFFF;
    *(a9 + 120) = 0;
    *(a9 + 122) = 0;
    goto LABEL_160;
  }

  if (*(&v129 + 1) - v129 != 128)
  {
    v84[0] = sub_1BFCC34;
    sub_1C02244(v129, *(&v129 + 1), v84, 126 - 2 * __clz((*(&v129 + 1) - v129) >> 7), 1);
    v66 = v129;
    if (*(&v129 + 1) == v129)
    {
      sub_6FAB4();
    }

    if (*(v129 + 23) < 0)
    {
      sub_325C(a9, *v129, *(v129 + 8));
    }

    else
    {
      v68 = *v129;
      *(a9 + 16) = *(v129 + 16);
      *a9 = v68;
    }

    v71 = *(v66 + 24);
    *(a9 + 32) = *(v66 + 32);
    *(a9 + 24) = v71;
    if ((*(v66 + 63) & 0x80000000) == 0)
    {
      v72 = *(v66 + 40);
      *(a9 + 56) = *(v66 + 56);
      *(a9 + 40) = v72;
      goto LABEL_159;
    }

LABEL_158:
    sub_325C((a9 + 40), *(v66 + 40), *(v66 + 48));
    goto LABEL_159;
  }

  if (*(v129 + 23) < 0)
  {
    sub_325C(a9, *v129, *(v129 + 8));
  }

  else
  {
    v67 = *v129;
    *(a9 + 16) = *(v129 + 16);
    *a9 = v67;
  }

  v69 = *(v66 + 24);
  *(a9 + 32) = *(v66 + 32);
  *(a9 + 24) = v69;
  if (*(v66 + 63) < 0)
  {
    goto LABEL_158;
  }

  v70 = *(v66 + 40);
  *(a9 + 56) = *(v66 + 56);
  *(a9 + 40) = v70;
LABEL_159:
  *(a9 + 64) = *(v66 + 64);
  sub_195F0F8(a9 + 80, v66 + 80);
  v73 = *(v66 + 120);
  *(a9 + 122) = *(v66 + 122);
  *(a9 + 120) = v73;
LABEL_160:
  sub_23D9C(v92);
  sub_23D9C(v111);
  *__p = &v94;
  sub_195E3E8(__p);
LABEL_161:
  *__p = &v129;
  sub_1C045B0(__p);
  return sub_1C04984(&v131);
}

void sub_1BFFA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (*(v48 + 23) < 0)
  {
    operator delete(*v48);
  }

  sub_23D9C(&a43);
  sub_23D9C(&STACK[0x210]);
  STACK[0x290] = &a48;
  sub_195E3E8(&STACK[0x290]);
  STACK[0x290] = v49 - 192;
  sub_1C045B0(&STACK[0x290]);
  sub_1C04984(v49 - 160);
  _Unwind_Resume(a1);
}

void sub_1BFFC70(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, void *a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, __n128 a10@<Q1>)
{
  if (!*(a3 + 8) || (sub_1EF5DC8(v40, 1, 0, 0, 1), v16 = *a6, v22 = *(a6 + 8), *a6 == v22))
  {
LABEL_18:
    a10.n128_u64[0] = 0;
    *a9 = 0u;
    *(a9 + 16) = a10;
    *(a9 + 40) = 0;
    *(a9 + 48) = 0u;
    *(a9 + 80) = 0u;
    *(a9 + 96) = 0u;
    *(a9 + 112) = 1065353216;
    *(a9 + 32) = 0;
    *(a9 + 64) = 0;
    *(a9 + 68) = 0x8000000080000000;
    *(a9 + 76) = 0x7FFFFFFF;
    *(a9 + 120) = 0;
    *(a9 + 122) = 0;
  }

  else
  {
    while (1)
    {
      v17 = *v16;
      v18 = *(v16 + 8);
      v38 = 0uLL;
      v39 = 0;
      if (v17)
      {
        sub_1BFD2A4(a1, v28);
      }

      else
      {
        sub_1BFCFB8(a1, v28);
      }

      sub_1A3CEA0(&v38);
      v38 = *v28;
      v39 = v29;
      v28[1] = 0;
      v29 = 0;
      v28[0] = 0;
      v41 = v28;
      sub_19A240C(&v41);
      if (*(a2 + 23) < 0)
      {
        sub_325C(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v27 = *(a2 + 16);
      }

      a6 = a6 & 0xFFFFFFFF00000000 | v18;
      sub_1BFDB40(&v38, __p, a3, a4, a5, v17, a6, v40, v28, v19, a7, a8);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }

      if (v30)
      {
        *a9 = *v28;
        v20 = v29;
        v28[1] = 0;
        v29 = 0;
        v28[0] = 0;
        v21 = v30;
        *(a9 + 16) = v20;
        *(a9 + 24) = v21;
        *(a9 + 32) = v31;
        *(a9 + 40) = v32;
        *(a9 + 56) = v33;
        v33 = 0;
        v32 = 0uLL;
        *(a9 + 64) = v34;
        sub_195FFEC(a9 + 80, v35);
        *(a9 + 120) = v36;
        *(a9 + 122) = v37;
        goto LABEL_21;
      }

      if (sub_1BFCCF4(&v38, a5, a4))
      {
        break;
      }

      sub_11BD8(v35);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28[0]);
      }

      v28[0] = &v38;
      sub_19A240C(v28);
      v16 += 12;
      if (v16 == v22)
      {
        goto LABEL_18;
      }
    }

    sub_1BFD304(a3, a4, a5, a9);
LABEL_21:
    sub_11BD8(v35);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }

    v28[0] = &v38;
    sub_19A240C(v28);
  }
}

void sub_1BFFF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  sub_19D4D44(&a20);
  a20 = v20 - 144;
  sub_19A240C(&a20);
  _Unwind_Resume(a1);
}

void sub_1BFFF8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>, __n128 a9@<Q1>)
{
  if (!*(a3 + 8) || (sub_1EF5DC8(v28, 1, 0, 0, 1), v16 = *a6, v15 = *(a6 + 8), *a6 == v15))
  {
LABEL_17:
    a9.n128_u64[0] = 0;
    *a8 = 0u;
    *(a8 + 16) = a9;
    *(a8 + 40) = 0;
    *(a8 + 48) = 0u;
    *(a8 + 80) = 0u;
    *(a8 + 96) = 0u;
    *(a8 + 112) = 1065353216;
    *(a8 + 32) = 0;
    *(a8 + 64) = 0;
    *(a8 + 68) = 0x8000000080000000;
    *(a8 + 76) = 0x7FFFFFFF;
    *(a8 + 120) = 0;
    *(a8 + 122) = 0;
  }

  else
  {
    while (1)
    {
      v17 = *v16;
      v18 = *(v16 + 8);
      v26 = 0uLL;
      v27 = 0;
      if (v17)
      {
        sub_1BFD2A4(a1, &v24);
      }

      else
      {
        sub_1BFCFB8(a1, &v24);
      }

      sub_1A3CEA0(&v26);
      v26 = v24;
      v27 = v25;
      v25 = 0;
      v24 = 0uLL;
      v29 = &v24;
      sub_19A240C(&v29);
      if (*(a2 + 23) < 0)
      {
        sub_325C(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v23 = *(a2 + 16);
      }

      a6 = a6 & 0xFFFFFFFF00000000 | v18;
      sub_1BFED94(&v26, __p, a3, a4, a5, v17, a6, v28, a8, v19, a7);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      if (*(a8 + 24))
      {
        break;
      }

      sub_11BD8(a8 + 80);
      if (*(a8 + 63) < 0)
      {
        operator delete(*(a8 + 40));
      }

      if (*(a8 + 23) < 0)
      {
        operator delete(*a8);
      }

      *&v24 = &v26;
      sub_19A240C(&v24);
      v16 += 12;
      if (v16 == v15)
      {
        goto LABEL_17;
      }
    }

    *&v24 = &v26;
    sub_19A240C(&v24);
  }
}

void sub_1C00198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a20 = &a24;
  sub_19A240C(&a20);
  _Unwind_Resume(a1);
}

void sub_1C001D4(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, unsigned __int16 *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, __n128 a7@<Q1>)
{
  if (!*(a2 + 8))
  {
    a7.n128_u64[0] = 0;
    *a6 = 0u;
    *(a6 + 16) = a7;
    *(a6 + 40) = 0;
    *(a6 + 48) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 112) = 1065353216;
    *(a6 + 32) = 0;
    *(a6 + 64) = 0;
    *(a6 + 68) = 0x8000000080000000;
    *(a6 + 76) = 0x7FFFFFFF;
    *(a6 + 120) = 0;
    *(a6 + 122) = 0;
    return;
  }

  v12 = *(a4 + 23);
  if (v12 < 0)
  {
    if (*(a4 + 1) != 2)
    {
LABEL_11:
      v14 = "zh-hant";
      goto LABEL_12;
    }

    v13 = *a4;
  }

  else
  {
    v13 = a4;
    if (v12 != 2)
    {
      goto LABEL_11;
    }
  }

  if (bswap32(*v13) >> 16 == 19024)
  {
    v14 = "ja";
  }

  else
  {
    v14 = "zh-hant";
  }

LABEL_12:
  sub_3608D0(&v81, v14);
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a2 + 8);
  if (v17)
  {
    v18 = 8 * v17;
    while (1)
    {
      v19 = *v16;
      v20 = *(*v16 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v21 = *(v20 + 23);
      if (v21 < 0)
      {
        v20 = *v20;
        v21 = *((*(*v16 + 32) & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      *&v68 = v20;
      *(&v68 + 1) = v21;
      v22 = *(a1 + 23);
      if (v22 < 0)
      {
        v23 = *a1;
        v22 = a1[1];
      }

      else
      {
        v23 = a1;
      }

      *&v65 = v23;
      *(&v65 + 1) = v22;
      if (sub_1CF6DDC(&v68, &v65))
      {
        break;
      }

      ++v16;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_24;
      }
    }

    *&v24 = 0;
    v68 = 0u;
    v69 = v24;
    v71 = 0;
    v72 = 0u;
    v76 = 0u;
    v77 = 0u;
    v70 = 0;
    v73 = 0;
    v74 = 0x8000000080000000;
    v78 = 1065353216;
    v75 = 0x7FFFFFFF;
    v79 = 0;
    v80 = 0;
    v65 = 0u;
    v66 = 0u;
    v67 = 1065353216;
    v47 = *(a1 + 23);
    if ((v47 & 0x8000000000000000) != 0)
    {
      v47 = a1[1];
    }

    v61 = 0;
    v62[0] = v47;
    sub_1C05158(&v65, &v61);
    v48 = *(v19 + 32);
    if (SHIBYTE(v82) < 0)
    {
      sub_325C(__p, v81, *(&v81 + 1));
    }

    else
    {
      *__p = v81;
      v64 = v82;
    }

    sub_1C01578(a6, (v48 & 0xFFFFFFFFFFFFFFFELL), 1, 1, 1, __p, 1, 0, 0, 0, &v65);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(__p[0]);
    }

    *(a6 + 121) = 1;
    v51 = *(a1 + 23);
    if (v51 < 0)
    {
      v51 = a1[1];
    }

    v52 = *(v19 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v53 = *(v52 + 23);
    if (v53 < 0)
    {
      v53 = *(v52 + 8);
    }

    *(a6 + 122) = v51 == v53;
    sub_11BD8(&v65);
    sub_11BD8(&v76);
    if (SHIBYTE(v72) < 0)
    {
      operator delete(v71);
    }

    if (SBYTE7(v69) < 0)
    {
      operator delete(v68);
    }
  }

  else
  {
LABEL_24:
    v62[0] = 0;
    v62[1] = 0;
    v61 = v62;
    v25 = *(a3 + 40);
    if (v25)
    {
      v26 = (v25 + 8);
    }

    else
    {
      v26 = 0;
    }

    v27 = *(a3 + 32);
    if (v27)
    {
      v56 = a5;
      v28 = 8 * v27;
      do
      {
        v29 = *v26;
        LODWORD(v65) = *(*v26 + 32);
        *&v68 = &v65;
        v30 = sub_1C04658(&v61, &v65);
        v31 = v30;
        v32 = *(v29 + 24);
        v33 = v30[6];
        if (v33 >= v30[7])
        {
          v34 = sub_1CEE8((v30 + 5), v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        else
        {
          sub_1A48C68(v30 + 5, (v32 & 0xFFFFFFFFFFFFFFFELL));
          v34 = v33 + 24;
        }

        v31[6] = v34;
        ++v26;
        v28 -= 8;
      }

      while (v28);
      v35 = v61;
      a5 = v56;
      if (v61 != v62)
      {
        do
        {
          v36 = *(v35 + 8);
          if (*(a2 + 8) > v36 && (v36 & 0x80000000) == 0)
          {
            v38 = v35[5];
            v37 = v35[6];
            while (v38 != v37)
            {
              v39 = v38[23];
              if (v39 < 0)
              {
                v40 = *v38;
                v39 = *(v38 + 1);
              }

              else
              {
                v40 = v38;
              }

              *&v68 = v40;
              *(&v68 + 1) = v39;
              v41 = *(a1 + 23);
              if (v41 < 0)
              {
                v42 = *a1;
                v41 = a1[1];
              }

              else
              {
                v42 = a1;
              }

              *&v65 = v42;
              *(&v65 + 1) = v41;
              if (sub_1CF6DDC(&v68, &v65))
              {
                *&v43 = 0;
                v68 = 0u;
                v69 = v43;
                v71 = 0;
                v72 = 0u;
                v76 = 0u;
                v77 = 0u;
                v70 = 0;
                v73 = 0;
                v74 = 0x8000000080000000;
                v78 = 1065353216;
                v75 = 0x7FFFFFFF;
                v79 = 0;
                v80 = 0;
                v65 = 0u;
                v66 = 0u;
                v67 = 1065353216;
                v49 = *(a1 + 23);
                if (v49 < 0)
                {
                  v49 = a1[1];
                }

                v60[0] = 0;
                v60[1] = v49;
                sub_1C05158(&v65, v60);
                v50 = *(sub_1C047A8(a2, *(v35 + 8)) + 32);
                if (SHIBYTE(v82) < 0)
                {
                  sub_325C(v58, v81, *(&v81 + 1));
                }

                else
                {
                  *v58 = v81;
                  v59 = v82;
                }

                sub_1C01578(a6, (v50 & 0xFFFFFFFFFFFFFFFELL), 1, 1, 1, v58, 1, 0, 0, 0, &v65);
                if (SHIBYTE(v59) < 0)
                {
                  operator delete(v58[0]);
                }

                *(a6 + 121) = 1;
                v54 = *(a1 + 23);
                if (v54 < 0)
                {
                  v54 = a1[1];
                }

                v55 = v38[23];
                if (v55 < 0)
                {
                  v55 = *(v38 + 1);
                }

                *(a6 + 122) = v54 == v55;
                sub_11BD8(&v65);
                sub_11BD8(&v76);
                if (SHIBYTE(v72) < 0)
                {
                  operator delete(v71);
                }

                if (SBYTE7(v69) < 0)
                {
                  operator delete(v68);
                }

                goto LABEL_83;
              }

              v38 += 24;
            }
          }

          v44 = v35[1];
          if (v44)
          {
            do
            {
              v45 = v44;
              v44 = *v44;
            }

            while (v44);
          }

          else
          {
            do
            {
              v45 = v35[2];
              v46 = *v45 == v35;
              v35 = v45;
            }

            while (!v46);
          }

          v35 = v45;
        }

        while (v45 != v62);
      }
    }

    sub_1BFD304(a2, a4, a5, a6);
LABEL_83:
    sub_1C050F8(&v61, v62[0]);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81);
  }
}

void sub_1C0076C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_11BD8(&a31);
  sub_19D4D44(&a36);
  if (*(v36 - 97) < 0)
  {
    operator delete(*(v36 - 120));
  }

  _Unwind_Resume(a1);
}

unint64_t sub_1C0080C(uint64_t **a1, uint64_t *a2, void *a3)
{
  result = 0xFFFFFFFF00000002;
  v5 = *a2;
  v6 = a2[1];
  v21 = 0;
  v7 = v6 - v5;
  if (!v7)
  {
    return result;
  }

  v8 = 0;
  v9 = v7 >> 6;
  v10 = a3[2];
  v11 = *(a1 + 23);
  v12 = a1[1];
  if ((v11 & 0x80u) == 0)
  {
    v13 = *(a1 + 23);
  }

  else
  {
    v13 = a1[1];
  }

  if ((v11 & 0x80u) != 0)
  {
    a1 = *a1;
  }

  if (v9 <= 1)
  {
    v9 = 1;
  }

  while (v10)
  {
    v14 = v10;
    while (v8 != *(v14 + 4))
    {
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_13;
      }
    }

LABEL_24:
    v21 = ++v8;
    if (v8 == v9)
    {
      return result;
    }
  }

LABEL_13:
  v15 = (v5 + (v8 << 6));
  v16 = *(v15 + 23);
  if (v16 >= 0)
  {
    v17 = *(v15 + 23);
  }

  else
  {
    v17 = v15[1];
  }

  if (v17 < v13)
  {
    goto LABEL_24;
  }

  v18 = 0;
  if (v16 < 0)
  {
    v15 = *v15;
  }

  while ((v11 & 0x80) == 0)
  {
    if (v18 >= v11)
    {
      goto LABEL_27;
    }

LABEL_23:
    v19 = *(v15 + v18);
    v20 = *(a1 + v18++);
    if (v19 != v20)
    {
      goto LABEL_24;
    }
  }

  if (v12 > v18)
  {
    goto LABEL_23;
  }

  v11 = v12;
LABEL_27:
  sub_1C00940(a3, &v21);
  if (v11 == v17)
  {
    return (v21 << 32) | 1;
  }

  else
  {
    return v8 << 32;
  }
}

uint64_t *sub_1C00940(void *a1, int *a2)
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

uint64_t *sub_1C00B6C(void *a1, int *a2)
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
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
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

uint64_t *sub_1C00C20(void *a1, int *a2)
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

std::string *sub_1C00E4C(void *a1, uint64_t a2, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 6)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 6;
      if (v17 >= a5)
      {
        sub_1C01008(a1, a2, a1[1], a2 + (a5 << 6));
        v18 = (v7 + 64 * a5);
      }

      else
      {
        a1[1] = sub_1A7EA50(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        sub_1C01008(a1, v5, v10, v5 + 64 * a5);
        v18 = (v7 + v16);
      }

      sub_1A3CF08(v23, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 6);
    if (v12 >> 58)
    {
      sub_1794();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 5 > v12)
    {
      v12 = v14 >> 5;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFC0)
    {
      v15 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      sub_19A1FA8(a1, v15);
    }

    v19 = v13 >> 6 << 6;
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = a5 << 6;
    v21 = v19 + (a5 << 6);
    do
    {
      sub_19A25E4(v19, v7);
      v19 += 64;
      v7 = (v7 + 64);
      v20 -= 64;
    }

    while (v20);
    v24 = v21;
    v5 = sub_1C010AC(a1, v23, v5);
    sub_19A20EC(v23);
  }

  return v5;
}

uint64_t sub_1C01008(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (a2 + v6 - a4);
    v8 = *(a1 + 8);
    do
    {
      sub_19A25E4(v8, v10);
      v10 += 4;
      v8 += 64;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1C01168(&v12, a2, v7, v6);
}

uint64_t sub_1C010AC(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  sub_19A1FF0(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_19A1FF0(a1, v7, a3, v9);
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

uint64_t sub_1C01168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      std::string::operator=((a4 + v7 - 64), (a3 + v7 - 64));
      *(a4 + v7 - 40) = *(a3 + v7 - 40);
      if (a3 != a4)
      {
        sub_1A3CF90((a4 + v7 - 24), *(a3 + v7 - 24), (a3 - 16 + v7));
      }

      v7 -= 64;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t sub_1C01208(uint64_t a1, void *a2)
{
  v2 = *sub_122356C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1C012AC(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1C01314(a1, a2);
  v5[3] = 0;
  v5[4] = 0;
  v5 += 3;
  v5[2] = 0;
  sub_353184(v5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void *sub_1C01314(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1C0136C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1C0136C(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1C013F4(v5, v5 + 1, v4 + 4);
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

uint64_t sub_1C013F4(void *a1, void *a2, void *a3)
{
  result = *sub_1962A30(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1C01478();
  }

  return result;
}

void sub_1C01514(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1962C7C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1C01530(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_195E3E8(&v3);
  sub_1962CE0(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_1C01578(uint64_t a1, __int128 *a2, int a3, int a4, int a5, __int128 *a6, char a7, int a8, int a9, int a10, uint64_t a11)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v18 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v18;
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 32) = a5;
  if (*(a6 + 23) < 0)
  {
    sub_325C((a1 + 40), *a6, *(a6 + 1));
  }

  else
  {
    v19 = *a6;
    *(a1 + 56) = *(a6 + 2);
    *(a1 + 40) = v19;
  }

  *(a1 + 64) = a7;
  *(a1 + 68) = a8;
  *(a1 + 72) = a9;
  *(a1 + 76) = a10;
  sub_195F0F8(a1 + 80, a11);
  *(a1 + 120) = 0;
  *(a1 + 122) = 0;
  return a1;
}

void sub_1C0164C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1C01680(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_325C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 3);
  *(v4 + 32) = *(a2 + 8);
  *(v4 + 24) = v6;
  if (*(a2 + 63) < 0)
  {
    sub_325C((v4 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v7 = *(a2 + 40);
    *(v4 + 56) = *(a2 + 7);
    *(v4 + 40) = v7;
  }

  *(v4 + 64) = a2[4];
  result = sub_195F0F8(v4 + 80, (a2 + 5));
  v9 = *(a2 + 60);
  *(v4 + 122) = *(a2 + 122);
  *(v4 + 120) = v9;
  *(a1 + 8) = v4 + 128;
  return result;
}

void sub_1C0173C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1C0177C(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v22 = a1;
  if (v7)
  {
    sub_1C01934(a1, v7);
  }

  v8 = v2 << 7;
  v19 = 0;
  v20 = v8;
  v21 = v8;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(v8 + 16) = *(a2 + 2);
    *v8 = v9;
  }

  v10 = *(a2 + 3);
  *(v8 + 32) = *(a2 + 8);
  *(v8 + 24) = v10;
  if (*(a2 + 63) < 0)
  {
    sub_325C((v8 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v11 = *(a2 + 40);
    *(v8 + 56) = *(a2 + 7);
    *(v8 + 40) = v11;
  }

  *(v8 + 64) = a2[4];
  sub_195F0F8(v8 + 80, (a2 + 5));
  v12 = *(a2 + 60);
  *(v8 + 122) = *(a2 + 122);
  *(v8 + 120) = v12;
  *&v21 = v21 + 128;
  v13 = a1[1];
  v14 = v20 + *a1 - v13;
  sub_1C0197C(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_1C01B98(&v19);
  return v18;
}

void sub_1C018F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  sub_1C01B98(va);
  _Unwind_Resume(a1);
}

void sub_1C01934(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1C0197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 80;
    do
    {
      v9 = *(v8 - 80);
      *(v4 + 16) = *(v8 - 64);
      *v4 = v9;
      *(v8 - 72) = 0;
      *(v8 - 64) = 0;
      *(v8 - 80) = 0;
      v10 = *(v8 - 56);
      *(v4 + 32) = *(v8 - 48);
      *(v4 + 24) = v10;
      v11 = *(v8 - 40);
      *(v4 + 56) = *(v8 - 24);
      *(v4 + 40) = v11;
      *(v8 - 32) = 0;
      *(v8 - 24) = 0;
      *(v8 - 40) = 0;
      *(v4 + 64) = *(v8 - 16);
      sub_195FFEC(v4 + 80, v8);
      v12 = *(v8 + 40);
      *(v4 + 122) = *(v8 + 42);
      *(v4 + 120) = v12;
      v4 = v18 + 128;
      v18 += 128;
      v13 = v8 + 48;
      v8 += 128;
    }

    while (v13 != a3);
    v16 = 1;
    while (v6 != a3)
    {
      sub_1C01AAC(a1, v6);
      v6 += 128;
    }
  }

  return sub_1C01B0C(v15);
}

void sub_1C01AAC(uint64_t a1, uint64_t a2)
{
  sub_11BD8(a2 + 80);
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_1C01B0C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1C01B44(a1);
  }

  return a1;
}

void sub_1C01B44(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 128;
      sub_1C01AAC(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1C01B98(uint64_t a1)
{
  sub_1C01BD0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1C01BD0(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 128;
    sub_1C01AAC(v5, v4 - 128);
  }
}

uint64_t sub_1C01C18(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1C01D60(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v7 + 32) = *(a2 + 32);
  *&v17 = 40 * v2 + 40;
  v9 = a1[1];
  v10 = 40 * v2 + *a1 - v9;
  sub_1C01DB8(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1C01EFC(&v15);
  return v14;
}

void sub_1C01D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1C01EFC(va);
  _Unwind_Resume(a1);
}

void sub_1C01D60(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1808();
}

uint64_t sub_1C01DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 40;
    }
  }

  return sub_1C01E7C(v9);
}

uint64_t sub_1C01E7C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1C01EB4(a1);
  }

  return a1;
}

void sub_1C01EB4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 9) < 0)
    {
      operator delete(*(v1 - 32));
    }

    v1 -= 40;
  }
}

uint64_t sub_1C01EFC(uint64_t a1)
{
  sub_1C01F34(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1C01F34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1C01F90(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_325C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 3);
  *(v4 + 32) = *(a2 + 8);
  *(v4 + 24) = v6;
  if (*(a2 + 63) < 0)
  {
    sub_325C((v4 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v7 = *(a2 + 40);
    *(v4 + 56) = *(a2 + 7);
    *(v4 + 40) = v7;
  }

  *(v4 + 64) = a2[4];
  result = sub_195F0F8(v4 + 80, (a2 + 5));
  v9 = *(a2 + 60);
  *(v4 + 122) = *(a2 + 122);
  *(v4 + 120) = v9;
  *(a1 + 8) = v4 + 128;
  return result;
}

void sub_1C0204C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1C0208C(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v22 = a1;
  if (v7)
  {
    sub_1C01934(a1, v7);
  }

  v8 = v2 << 7;
  v19 = 0;
  v20 = v8;
  v21 = v8;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(v8 + 16) = *(a2 + 2);
    *v8 = v9;
  }

  v10 = *(a2 + 3);
  *(v8 + 32) = *(a2 + 8);
  *(v8 + 24) = v10;
  if (*(a2 + 63) < 0)
  {
    sub_325C((v8 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v11 = *(a2 + 40);
    *(v8 + 56) = *(a2 + 7);
    *(v8 + 40) = v11;
  }

  *(v8 + 64) = a2[4];
  sub_195F0F8(v8 + 80, (a2 + 5));
  v12 = *(a2 + 60);
  *(v8 + 122) = *(a2 + 122);
  *(v8 + 120) = v12;
  *&v21 = v21 + 128;
  v13 = a1[1];
  v14 = v20 + *a1 - v13;
  sub_1C0197C(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_1C01B98(&v19);
  return v18;
}

void sub_1C02200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  sub_1C01B98(va);
  _Unwind_Resume(a1);
}

void sub_1C02244(__int128 *a1, void **a2, uint64_t (**a3)(__int128 *, uint64_t), uint64_t a4, char a5)
{
LABEL_1:
  v9 = (a2 - 16);
  v46 = (a2 - 32);
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 7;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if ((*a3)(a2 - 8, v10))
        {
LABEL_82:
          v41 = v10;
LABEL_83:
          v45 = v9;
LABEL_84:

          sub_1C03990(v41, v45);
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      sub_1C028EC(v10, (v10 + 128), (v10 + 256), a2 - 8, a3);
      return;
    }

    if (v13 == 5)
    {
      sub_1C028EC(v10, (v10 + 128), (v10 + 256), (v10 + 384), a3);
      if (!(*a3)(a2 - 8, v10 + 384))
      {
        return;
      }

      sub_1C03990(v10 + 384, a2 - 8);
      if (!(*a3)((v10 + 384), v10 + 256))
      {
        return;
      }

      sub_1C03990(v10 + 256, (v10 + 384));
      if (!(*a3)((v10 + 256), v10 + 128))
      {
        return;
      }

      v42 = v10 + 128;
      v43 = (v10 + 256);
LABEL_100:
      sub_1C03990(v42, v43);
      if ((*a3)((v10 + 128), v10))
      {
        v45 = (v10 + 128);
        v41 = v10;
        goto LABEL_84;
      }

      return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        sub_1C02A3C(v10, a2, a3);
      }

      else
      {

        sub_1C02CB0(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_1C03B70(v10, a2, a2, a3);
      }

      return;
    }

    v14 = (v10 + (v13 >> 1 << 7));
    v15 = *a3;
    if (v13 >= 0x81)
    {
      v16 = v15((v10 + (v13 >> 1 << 7)), v10);
      v17 = (*a3)(a2 - 8, v14);
      if (v16)
      {
        if (v17)
        {
          v18 = a1;
          goto LABEL_27;
        }

        sub_1C03990(a1, v14);
        if ((*a3)(a2 - 8, v14))
        {
          v18 = v14;
LABEL_27:
          v22 = (a2 - 16);
LABEL_28:
          sub_1C03990(v18, v22);
        }
      }

      else if (v17)
      {
        sub_1C03990(v14, a2 - 8);
        if ((*a3)(v14, a1))
        {
          v18 = a1;
          v22 = v14;
          goto LABEL_28;
        }
      }

      v24 = (*a3)(v14 - 8, (a1 + 8));
      v25 = (*a3)(v46, (v14 - 8));
      if (v24)
      {
        if (v25)
        {
          v26 = (a1 + 8);
          goto LABEL_40;
        }

        sub_1C03990((a1 + 8), v14 - 8);
        if ((*a3)(v46, (v14 - 8)))
        {
          v26 = (v14 - 8);
LABEL_40:
          v27 = (a2 - 32);
LABEL_41:
          sub_1C03990(v26, v27);
        }
      }

      else if (v25)
      {
        sub_1C03990((v14 - 8), v46);
        if ((*a3)(v14 - 8, (a1 + 8)))
        {
          v26 = (a1 + 8);
          v27 = v14 - 8;
          goto LABEL_41;
        }
      }

      v28 = (*a3)(v14 + 8, (a1 + 16));
      v29 = (*a3)(a2 - 24, (v14 + 8));
      if (v28)
      {
        if (v29)
        {
          v30 = (a1 + 16);
          goto LABEL_50;
        }

        sub_1C03990((a1 + 16), v14 + 8);
        if ((*a3)(a2 - 24, (v14 + 8)))
        {
          v30 = (v14 + 8);
LABEL_50:
          v31 = (a2 - 48);
LABEL_51:
          sub_1C03990(v30, v31);
        }
      }

      else if (v29)
      {
        sub_1C03990((v14 + 8), a2 - 24);
        if ((*a3)(v14 + 8, (a1 + 16)))
        {
          v30 = (a1 + 16);
          v31 = v14 + 8;
          goto LABEL_51;
        }
      }

      v32 = (*a3)(v14, (v14 - 8));
      v33 = (*a3)(v14 + 8, v14);
      if (v32)
      {
        if (v33)
        {
          v34 = v14 + 8;
          v35 = (v14 - 8);
          goto LABEL_60;
        }

        sub_1C03990((v14 - 8), v14);
        if ((*a3)(v14 + 8, v14))
        {
          v34 = v14 + 8;
          v35 = v14;
LABEL_60:
          sub_1C03990(v35, v34);
        }
      }

      else if (v33)
      {
        sub_1C03990(v14, v14 + 8);
        if ((*a3)(v14, (v14 - 8)))
        {
          v35 = (v14 - 8);
          v34 = v14;
          goto LABEL_60;
        }
      }

      v21 = a1;
      v23 = v14;
LABEL_62:
      sub_1C03990(v21, v23);
      goto LABEL_63;
    }

    v19 = v15(v10, v10 + (v13 >> 1 << 7));
    v20 = (*a3)(a2 - 8, a1);
    if (v19)
    {
      if (v20)
      {
        v21 = v14;
LABEL_37:
        v23 = (a2 - 16);
        goto LABEL_62;
      }

      sub_1C03990(v14, a1);
      if ((*a3)(a2 - 8, a1))
      {
        v21 = a1;
        goto LABEL_37;
      }
    }

    else if (v20)
    {
      sub_1C03990(a1, a2 - 8);
      if ((*a3)(a1, v14))
      {
        v21 = v14;
        v23 = a1;
        goto LABEL_62;
      }
    }

LABEL_63:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 8, a1) & 1) == 0)
    {
      v10 = sub_1C02F08(a1, a2, a3);
      goto LABEL_70;
    }

    v36 = sub_1C031EC(a1, a2, a3);
    if ((v37 & 1) == 0)
    {
      goto LABEL_68;
    }

    v38 = sub_1C034D4(a1, v36, a3);
    v10 = (v36 + 8);
    if (sub_1C034D4(v36 + 8, a2, a3))
    {
      a4 = -v12;
      a2 = v36;
      if (v38)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v38)
    {
LABEL_68:
      sub_1C02244(a1, v36, a3, -v12, a5 & 1);
      v10 = (v36 + 8);
LABEL_70:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  v39 = (*a3)((v10 + 128), v10);
  v40 = (*a3)(v9, v10 + 128);
  if ((v39 & 1) == 0)
  {
    if (!v40)
    {
      return;
    }

    v42 = v10 + 128;
    v43 = v9;
    goto LABEL_100;
  }

  if (v40)
  {
    goto LABEL_82;
  }

  sub_1C03990(v10, (v10 + 128));
  if ((*a3)(v9, v10 + 128))
  {
    v41 = v10 + 128;
    goto LABEL_83;
  }
}

void sub_1C028EC(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t (**a5)(__int128 *, uint64_t))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1;
LABEL_9:
      v13 = a3;
      goto LABEL_10;
    }

    sub_1C03990(a1, a2);
    if ((*a5)(a3, a2))
    {
      v12 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    sub_1C03990(a2, a3);
    if ((*a5)(a2, a1))
    {
      v12 = a1;
      v13 = a2;
LABEL_10:
      sub_1C03990(v12, v13);
    }
  }

  if ((*a5)(a4, a3))
  {
    sub_1C03990(a3, a4);
    if ((*a5)(a3, a2))
    {
      sub_1C03990(a2, a3);
      if ((*a5)(a2, a1))
      {

        sub_1C03990(a1, a2);
      }
    }
  }
}

void sub_1C02A3C(uint64_t a1, void **a2, uint64_t (**a3)(void **, uint64_t))
{
  if (a1 != a2)
  {
    v5 = (a1 + 128);
    if ((a1 + 128) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*a3)(v5, v8))
        {
          *v16 = *v9;
          v17 = v9[2];
          v9[1] = 0;
          v9[2] = 0;
          *v9 = 0;
          v18 = *(v8 + 152);
          v19 = *(v8 + 160);
          __p = *(v8 + 168);
          v21 = *(v8 + 184);
          *(v8 + 176) = 0;
          *(v8 + 184) = 0;
          *(v8 + 168) = 0;
          v22 = *(v8 + 192);
          sub_195FFEC(v23, (v8 + 208));
          v24 = *(v8 + 248);
          v25 = *(v8 + 250);
          v10 = v7;
          while (1)
          {
            v11 = a1 + v10;
            if (*(a1 + v10 + 151) < 0)
            {
              operator delete(*(v11 + 128));
            }

            *(v11 + 128) = *v11;
            v12 = *(v11 + 16);
            v13 = *(v11 + 24);
            *(v11 + 23) = 0;
            *v11 = 0;
            *(v11 + 144) = v12;
            *(v11 + 152) = v13;
            *(v11 + 160) = *(v11 + 32);
            if (*(v11 + 191) < 0)
            {
              operator delete(*(v11 + 168));
            }

            v14 = a1 + v10;
            *(v11 + 168) = *(a1 + v10 + 40);
            *(v11 + 184) = *(a1 + v10 + 56);
            *(v14 + 63) = 0;
            *(v14 + 40) = 0;
            *(v14 + 192) = *(a1 + v10 + 64);
            sub_19608BC(a1 + v10 + 208, (a1 + v10 + 80));
            *(v14 + 248) = *(v14 + 120);
            *(v14 + 250) = *(v14 + 122);
            if (!v10)
            {
              break;
            }

            v10 -= 128;
            if (((*a3)(v16, v14 - 128) & 1) == 0)
            {
              v15 = a1 + v10 + 128;
              goto LABEL_14;
            }
          }

          v15 = a1;
LABEL_14:
          if (*(v15 + 23) < 0)
          {
            operator delete(*v15);
          }

          *v15 = *v16;
          *(v15 + 16) = v17;
          HIBYTE(v17) = 0;
          LOBYTE(v16[0]) = 0;
          *(v14 + 24) = v18;
          *(v14 + 32) = v19;
          if (*(v15 + 63) < 0)
          {
            operator delete(*(v14 + 40));
          }

          *(v14 + 40) = __p;
          *(v14 + 56) = v21;
          HIBYTE(v21) = 0;
          LOBYTE(__p) = 0;
          *(v14 + 64) = v22;
          sub_19608BC(v14 + 80, v23);
          *(v14 + 120) = v24;
          *(v14 + 122) = v25;
          sub_11BD8(v23);
          if (SHIBYTE(v21) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v17) < 0)
          {
            operator delete(v16[0]);
          }
        }

        v5 = v9 + 16;
        v7 += 128;
        v8 = v9;
      }

      while (v9 + 16 != a2);
    }
  }
}

void sub_1C02CB0(void **a1, void **a2, uint64_t (**a3)(void **, void **))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 16;
    if (a1 + 16 != a2)
    {
      v7 = a1 - 16;
      do
      {
        v8 = v5;
        if ((*a3)(v5, v4))
        {
          *v15 = *v8;
          v16 = v8[2];
          v8[1] = 0;
          v8[2] = 0;
          *v8 = 0;
          v17 = v4[19];
          v18 = *(v4 + 40);
          __p = *(v4 + 21);
          v20 = v4[23];
          v4[22] = 0;
          v4[23] = 0;
          v4[21] = 0;
          v21 = *(v4 + 12);
          sub_195FFEC(v22, v4 + 26);
          v23 = *(v4 + 124);
          v24 = *(v4 + 250);
          v9 = v7;
          do
          {
            if (*(v9 + 279) < 0)
            {
              operator delete(v9[32]);
            }

            *(v9 + 16) = *(v9 + 8);
            v10 = v9[18];
            v11 = v9[19];
            *(v9 + 151) = 0;
            *(v9 + 128) = 0;
            v9[34] = v10;
            v9[35] = v11;
            *(v9 + 72) = *(v9 + 40);
            v12 = v9 + 37;
            if (*(v9 + 319) < 0)
            {
              operator delete(*v12);
            }

            *v12 = *(v9 + 21);
            v9[39] = v9[23];
            *(v9 + 191) = 0;
            *(v9 + 168) = 0;
            *(v9 + 20) = *(v9 + 12);
            sub_19608BC((v9 + 42), v9 + 26);
            *(v9 + 188) = *(v9 + 124);
            *(v9 + 378) = *(v9 + 250);
            v13 = (*a3)(v15, v9);
            v9 -= 16;
          }

          while ((v13 & 1) != 0);
          if (*(v9 + 279) < 0)
          {
            operator delete(v9[32]);
          }

          v14 = v9 + 37;
          *(v9 + 16) = *v15;
          v9[34] = v16;
          HIBYTE(v16) = 0;
          LOBYTE(v15[0]) = 0;
          v9[35] = v17;
          *(v9 + 72) = v18;
          if (*(v9 + 319) < 0)
          {
            operator delete(*v14);
          }

          *v14 = __p;
          v9[39] = v20;
          HIBYTE(v20) = 0;
          LOBYTE(__p) = 0;
          *(v9 + 20) = v21;
          sub_19608BC((v9 + 42), v22);
          *(v9 + 188) = v23;
          *(v9 + 378) = v24;
          sub_11BD8(v22);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v16) < 0)
          {
            operator delete(v15[0]);
          }
        }

        v5 = v8 + 16;
        v7 += 16;
        v4 = v8;
      }

      while (v8 + 16 != a2);
    }
  }
}

unint64_t sub_1C02F08(unint64_t a1, __int128 *a2, uint64_t (**a3)(void **, unint64_t))
{
  *v23 = *a1;
  v6 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v8 = a1 + 24;
  v7 = *(a1 + 24);
  v24 = v6;
  v25 = v7;
  v26 = *(a1 + 32);
  *__p = *(a1 + 40);
  v28 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v29 = *(a1 + 64);
  sub_195FFEC(v30, (a1 + 80));
  v31 = *(a1 + 120);
  v32 = *(a1 + 122);
  if ((*a3)(v23, (a2 - 8)))
  {
    v9 = a1;
    do
    {
      v9 += 128;
    }

    while (((*a3)(v23, v9) & 1) == 0);
  }

  else
  {
    v10 = a1 + 128;
    do
    {
      v9 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = (*a3)(v23, v10);
      v10 = v9 + 128;
    }

    while (!v11);
  }

  if (v9 < a2)
  {
    do
    {
      a2 -= 8;
    }

    while (((*a3)(v23, a2) & 1) != 0);
  }

  while (v9 < a2)
  {
    sub_1C03990(v9, a2);
    do
    {
      v9 += 128;
    }

    while (!(*a3)(v23, v9));
    do
    {
      a2 -= 8;
    }

    while (((*a3)(v23, a2) & 1) != 0);
  }

  v12 = (v9 - 128);
  if (v9 - 128 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v12;
    *(a1 + 16) = *(v9 - 112);
    *a1 = v13;
    *(v9 - 105) = 0;
    *(v9 - 128) = 0;
    v14 = *(v9 - 96);
    *v8 = *(v9 - 104);
    *(v8 + 8) = v14;
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    v15 = *(v9 - 88);
    *(a1 + 56) = *(v9 - 72);
    *(a1 + 40) = v15;
    *(v9 - 65) = 0;
    *(v9 - 88) = 0;
    *(a1 + 64) = *(v9 - 64);
    sub_19608BC(a1 + 80, (v9 - 48));
    v16 = *(v9 - 8);
    *(a1 + 122) = *(v9 - 6);
    *(a1 + 120) = v16;
  }

  if (*(v9 - 105) < 0)
  {
    operator delete(*v12);
  }

  v17 = *v23;
  *(v9 - 112) = v24;
  *v12 = v17;
  HIBYTE(v24) = 0;
  LOBYTE(v23[0]) = 0;
  v18 = v26;
  *(v9 - 104) = v25;
  *(v9 - 96) = v18;
  v19 = (v9 - 88);
  if (*(v9 - 65) < 0)
  {
    operator delete(*v19);
  }

  v20 = *__p;
  *(v9 - 72) = v28;
  *v19 = v20;
  HIBYTE(v28) = 0;
  LOBYTE(__p[0]) = 0;
  *(v9 - 64) = v29;
  sub_19608BC(v9 - 48, v30);
  v21 = v31;
  *(v9 - 6) = v32;
  *(v9 - 8) = v21;
  sub_11BD8(v30);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return v9;
}

unint64_t sub_1C031EC(uint64_t a1, __int128 *a2, uint64_t (**a3)(uint64_t, void **))
{
  *v25 = *a1;
  v6 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v8 = a1 + 24;
  v7 = *(a1 + 24);
  v26 = v6;
  v27 = v7;
  v28 = *(a1 + 32);
  *__p = *(a1 + 40);
  v30 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v31 = *(a1 + 64);
  sub_195FFEC(v32, (a1 + 80));
  v9 = 0;
  v33 = *(a1 + 120);
  v34 = *(a1 + 122);
  do
  {
    v10 = (*a3)(a1 + v9 + 128, v25);
    v9 += 128;
  }

  while ((v10 & 1) != 0);
  v11 = a1 + v9;
  if (v9 == 128)
  {
    do
    {
      if (v11 >= a2)
      {
        break;
      }

      a2 -= 8;
    }

    while (((*a3)(a2, v25) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 8;
    }

    while (!(*a3)(a2, v25));
  }

  v12 = a1 + v9;
  if (v11 < a2)
  {
    v13 = a2;
    do
    {
      sub_1C03990(v12, v13);
      do
      {
        v12 += 128;
      }

      while (((*a3)(v12, v25) & 1) != 0);
      do
      {
        v13 -= 8;
      }

      while (!(*a3)(v13, v25));
    }

    while (v12 < v13);
  }

  v14 = (v12 - 128);
  if (v12 - 128 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v15 = *v14;
    *(a1 + 16) = *(v12 - 112);
    *a1 = v15;
    *(v12 - 105) = 0;
    *(v12 - 128) = 0;
    v16 = *(v12 - 96);
    *v8 = *(v12 - 104);
    *(v8 + 8) = v16;
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    v17 = *(v12 - 88);
    *(a1 + 56) = *(v12 - 72);
    *(a1 + 40) = v17;
    *(v12 - 65) = 0;
    *(v12 - 88) = 0;
    *(a1 + 64) = *(v12 - 64);
    sub_19608BC(a1 + 80, (v12 - 48));
    v18 = *(v12 - 8);
    *(a1 + 122) = *(v12 - 6);
    *(a1 + 120) = v18;
  }

  if (*(v12 - 105) < 0)
  {
    operator delete(*v14);
  }

  v19 = *v25;
  *(v12 - 112) = v26;
  *v14 = v19;
  HIBYTE(v26) = 0;
  LOBYTE(v25[0]) = 0;
  v20 = v28;
  *(v12 - 104) = v27;
  *(v12 - 96) = v20;
  v21 = (v12 - 88);
  if (*(v12 - 65) < 0)
  {
    operator delete(*v21);
  }

  v22 = *__p;
  *(v12 - 72) = v30;
  *v21 = v22;
  HIBYTE(v30) = 0;
  LOBYTE(__p[0]) = 0;
  *(v12 - 64) = v31;
  sub_19608BC(v12 - 48, v32);
  v23 = v33;
  *(v12 - 6) = v34;
  *(v12 - 8) = v23;
  sub_11BD8(v32);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  return v12 - 128;
}

BOOL sub_1C034D4(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, uint64_t))
{
  v4 = a2;
  v6 = (a2 - a1) >> 7;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v12 = a2 - 8;
        v13 = (*a3)(a1 + 8, a1);
        v14 = (*a3)(v12, (a1 + 8));
        if (v13)
        {
          if (v14)
          {
            v7 = a1;
          }

          else
          {
            sub_1C03990(a1, a1 + 8);
            if (!(*a3)(v12, (a1 + 8)))
            {
              return 1;
            }

            v7 = (a1 + 8);
          }

          v8 = v12;
          goto LABEL_30;
        }

        if (!v14)
        {
          return 1;
        }

        v10 = (a1 + 8);
        v11 = v12;
        break;
      case 4:
        sub_1C028EC(a1, a1 + 8, a1 + 16, a2 - 8, a3);
        return 1;
      case 5:
        v9 = a2 - 8;
        sub_1C028EC(a1, a1 + 8, a1 + 16, a1 + 24, a3);
        if (!(*a3)(v9, (a1 + 24)))
        {
          return 1;
        }

        sub_1C03990((a1 + 24), v9);
        if (!(*a3)(a1 + 24, (a1 + 16)))
        {
          return 1;
        }

        sub_1C03990((a1 + 16), a1 + 24);
        if (!(*a3)(a1 + 16, (a1 + 8)))
        {
          return 1;
        }

        v10 = (a1 + 8);
        v11 = a1 + 16;
        break;
      default:
        goto LABEL_16;
    }

    sub_1C03990(v10, v11);
    if ((*a3)(a1 + 8, a1))
    {
      v8 = a1 + 8;
      v7 = a1;
      goto LABEL_30;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 8, a1))
    {
      v7 = a1;
      v8 = v4 - 8;
LABEL_30:
      sub_1C03990(v7, v8);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v15 = a1 + 16;
  v16 = (*a3)(a1 + 8, a1);
  v17 = (*a3)(a1 + 16, (a1 + 8));
  if (v16)
  {
    if (v17)
    {
      v18 = a1;
    }

    else
    {
      sub_1C03990(a1, a1 + 8);
      if (!(*a3)(a1 + 16, (a1 + 8)))
      {
        goto LABEL_35;
      }

      v18 = (a1 + 8);
    }

    v19 = a1 + 16;
    goto LABEL_34;
  }

  if (v17)
  {
    sub_1C03990((a1 + 8), a1 + 16);
    if ((*a3)(a1 + 8, a1))
    {
      v19 = a1 + 8;
      v18 = a1;
LABEL_34:
      sub_1C03990(v18, v19);
    }
  }

LABEL_35:
  v20 = a1 + 24;
  if (a1 + 24 == v4)
  {
    return 1;
  }

  v21 = 0;
  v22 = 0;
  v33 = v4;
  while (1)
  {
    if ((*a3)(v20, v15))
    {
      v23 = *(v20 + 3);
      v35 = *(v20 + 2);
      *v34 = *v20;
      *(v20 + 1) = 0;
      *(v20 + 2) = 0;
      *v20 = 0;
      v36 = v23;
      v37 = *(v20 + 8);
      __p = *(v20 + 40);
      v39 = *(v20 + 7);
      *(v20 + 6) = 0;
      *(v20 + 7) = 0;
      *(v20 + 5) = 0;
      v40 = v20[4];
      sub_195FFEC(v41, v20 + 10);
      v42 = *(v20 + 60);
      v43 = *(v20 + 122);
      v24 = v21;
      while (1)
      {
        v25 = (a1 + v24);
        if (*(a1 + v24 + 407) < 0)
        {
          operator delete(v25[48]);
        }

        *(v25 + 24) = *(v25 + 16);
        v26 = v25[34];
        v27 = v25[35];
        *(v25 + 279) = 0;
        *(v25 + 256) = 0;
        v25[50] = v26;
        v25[51] = v27;
        *(v25 + 104) = *(v25 + 72);
        v28 = (v25 + 53);
        if (*(v25 + 447) < 0)
        {
          operator delete(*v28);
        }

        v29 = a1 + v24;
        v30 = a1 + v24 + 296;
        *(v28 + 2) = *(a1 + v24 + 312);
        *v28 = *v30;
        v29[319] = 0;
        v29[296] = 0;
        *(v29 + 28) = *(a1 + v24 + 320);
        sub_19608BC(a1 + v24 + 464, (a1 + v24 + 336));
        *(v29 + 252) = *(v29 + 188);
        v29[506] = v29[378];
        if (v24 == -256)
        {
          break;
        }

        v24 -= 128;
        if (((*a3)(v34, (v29 + 128)) & 1) == 0)
        {
          v31 = a1 + v24 + 384;
          goto LABEL_47;
        }
      }

      v31 = a1;
LABEL_47:
      if (*(v31 + 23) < 0)
      {
        operator delete(*v31);
      }

      *v31 = *v34;
      *(v31 + 16) = v35;
      HIBYTE(v35) = 0;
      LOBYTE(v34[0]) = 0;
      *(v29 + 35) = v36;
      *(v29 + 72) = v37;
      if (*(v31 + 63) < 0)
      {
        operator delete(*v30);
      }

      *v30 = __p;
      *(v30 + 16) = v39;
      HIBYTE(v39) = 0;
      LOBYTE(__p) = 0;
      *(v29 + 20) = v40;
      sub_19608BC((v29 + 336), v41);
      *(v29 + 188) = v42;
      v29[378] = v43;
      sub_11BD8(v41);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p);
      }

      v4 = v33;
      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34[0]);
      }

      if (++v22 == 8)
      {
        return v20 + 8 == v33;
      }
    }

    v15 = v20;
    v21 += 128;
    v20 += 8;
    if (v20 == v4)
    {
      return 1;
    }
  }
}

void sub_1C0397C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D4D44(va);
  _Unwind_Resume(a1);
}

void sub_1C03990(uint64_t a1, __int128 *a2)
{
  *v10 = *a1;
  v4 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = a1 + 24;
  v11 = v4;
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *__p = *(a1 + 40);
  v15 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v16 = *(a1 + 64);
  sub_195FFEC(v17, (a1 + 80));
  v18 = *(a1 + 120);
  v19 = *(a1 + 122);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v6 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v6;
  *(a2 + 23) = 0;
  *a2 = 0;
  v7 = *(a2 + 8);
  *v5 = *(a2 + 3);
  *(v5 + 8) = v7;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v8 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 40) = v8;
  *(a2 + 63) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = a2[4];
  sub_19608BC(a1 + 80, a2 + 10);
  v9 = *(a2 + 60);
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 120) = v9;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *v10;
  *(a2 + 2) = v11;
  *(a2 + 3) = v12;
  *(a2 + 8) = v13;
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 5));
  }

  *(a2 + 40) = *__p;
  *(a2 + 7) = v15;
  a2[4] = v16;
  sub_19608BC((a2 + 5), v17);
  *(a2 + 60) = v18;
  *(a2 + 122) = v19;
  sub_11BD8(v17);
}

uint64_t sub_1C03B70(__int128 *a1, __int128 *a2, uint64_t a3, unsigned int (**a4)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 7;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[8 * v9];
      do
      {
        sub_1C03C80(a1, a4, v8, v11);
        v11 -= 8;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if ((*a4)(v12, a1))
        {
          sub_1C03990(v12, a1);
          sub_1C03C80(a1, a4, v8, a1);
        }

        v12 += 128;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        sub_1C03F58(a1, v6, a4, v8);
        v6 -= 128;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void sub_1C03C80(uint64_t a1, unsigned int (**a2)(__int128 *, uint64_t), uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v25 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 7)
    {
      v9 = (a4 - a1) >> 6;
      v10 = v9 + 1;
      v11 = (a1 + ((v9 + 1) << 7));
      v12 = v9 + 2;
      if (v9 + 2 < a3 && (*a2)(v11, (v11 + 8)))
      {
        v11 += 8;
        v10 = v12;
      }

      if (((*a2)(v11, v5) & 1) == 0)
      {
        *v26 = *v5;
        v13 = *(v5 + 2);
        v14 = *(v5 + 3);
        *(v5 + 1) = 0;
        *(v5 + 2) = 0;
        *v5 = 0;
        v27 = v13;
        v28 = v14;
        v29 = *(v5 + 8);
        *__p = *(v5 + 40);
        v31 = *(v5 + 7);
        *(v5 + 6) = 0;
        *(v5 + 7) = 0;
        *(v5 + 5) = 0;
        v32 = v5[4];
        sub_195FFEC(v33, v5 + 10);
        v34 = *(v5 + 60);
        v35 = *(v5 + 122);
        do
        {
          v15 = v11;
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          v16 = *v11;
          *(v5 + 2) = *(v11 + 2);
          *v5 = v16;
          *(v11 + 23) = 0;
          *v11 = 0;
          v17 = *(v11 + 8);
          *(v5 + 3) = *(v11 + 3);
          *(v5 + 8) = v17;
          if (*(v5 + 63) < 0)
          {
            operator delete(*(v5 + 5));
          }

          v18 = *(v11 + 40);
          *(v5 + 7) = *(v11 + 7);
          *(v5 + 40) = v18;
          *(v11 + 63) = 0;
          *(v11 + 40) = 0;
          v5[4] = v11[4];
          sub_19608BC((v5 + 5), v11 + 10);
          v19 = *(v11 + 60);
          *(v5 + 122) = *(v11 + 122);
          *(v5 + 60) = v19;
          if (v25 < v10)
          {
            break;
          }

          v20 = (2 * v10) | 1;
          v11 = (a1 + (v20 << 7));
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v20;
          }

          else if ((*a2)((a1 + (v20 << 7)), (v11 + 8)))
          {
            v11 += 8;
          }

          else
          {
            v10 = v20;
          }

          v5 = v15;
        }

        while (!(*a2)(v11, v26));
        if (*(v15 + 23) < 0)
        {
          operator delete(*v15);
        }

        v21 = *v26;
        *(v15 + 2) = v27;
        *v15 = v21;
        HIBYTE(v27) = 0;
        LOBYTE(v26[0]) = 0;
        v22 = v29;
        *(v15 + 3) = v28;
        *(v15 + 8) = v22;
        if (*(v15 + 63) < 0)
        {
          operator delete(*(v15 + 5));
        }

        v23 = *__p;
        *(v15 + 7) = v31;
        *(v15 + 40) = v23;
        HIBYTE(v31) = 0;
        LOBYTE(__p[0]) = 0;
        v15[4] = v32;
        sub_19608BC((v15 + 5), v33);
        v24 = v34;
        *(v15 + 122) = v35;
        *(v15 + 60) = v24;
        sub_11BD8(v33);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }
      }
    }
  }
}

void sub_1C03F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D4D44(va);
  _Unwind_Resume(a1);
}

void sub_1C03F58(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v22 = *a1;
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v23 = v8;
    v24 = v9;
    v25 = *(a1 + 32);
    *__p = *(a1 + 40);
    v27 = *(a1 + 56);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    v28 = *(a1 + 64);
    sub_195FFEC(v29, (a1 + 80));
    v30 = *(a1 + 120);
    v31 = *(a1 + 122);
    v10 = sub_1C04234(a1, a3, a4);
    v11 = v10;
    v12 = (a2 - 128);
    v13 = *(v10 + 23);
    if (v10 == (a2 - 128))
    {
      if (v13 < 0)
      {
        operator delete(*v10);
      }

      *(v11 + 2) = v23;
      *v11 = v22;
      *(v11 + 3) = v24;
      *(v11 + 8) = v25;
      if (*(v11 + 63) < 0)
      {
        operator delete(*(v11 + 5));
      }

      *(v11 + 7) = v27;
      *(v11 + 40) = *__p;
      v11[4] = v28;
      sub_19608BC((v11 + 5), v29);
      v21 = v30;
      *(v11 + 122) = v31;
      *(v11 + 60) = v21;
    }

    else
    {
      if (v13 < 0)
      {
        operator delete(*v10);
      }

      v14 = *v12;
      *(v11 + 2) = *(a2 - 112);
      *v11 = v14;
      v15 = *(a2 - 104);
      *(a2 - 105) = 0;
      *(a2 - 128) = 0;
      v16 = *(a2 - 96);
      *(v11 + 3) = v15;
      *(v11 + 8) = v16;
      if (*(v11 + 63) < 0)
      {
        operator delete(*(v11 + 5));
      }

      v17 = (a2 - 88);
      v18 = *(a2 - 88);
      *(v11 + 7) = *(a2 - 72);
      *(v11 + 40) = v18;
      *(a2 - 65) = 0;
      *(a2 - 88) = 0;
      v11[4] = *(a2 - 64);
      sub_19608BC((v11 + 5), (a2 - 48));
      v19 = *(a2 - 8);
      *(v11 + 122) = *(a2 - 6);
      *(v11 + 60) = v19;
      v20 = (v11 + 8);
      if (*(a2 - 105) < 0)
      {
        operator delete(*v12);
      }

      *v12 = v22;
      *(a2 - 112) = v23;
      *(a2 - 104) = v24;
      *(a2 - 96) = v25;
      if (*(a2 - 65) < 0)
      {
        operator delete(*v17);
      }

      *v17 = *__p;
      *(a2 - 72) = v27;
      *(a2 - 64) = v28;
      sub_19608BC(a2 - 48, v29);
      *(a2 - 8) = v30;
      *(a2 - 6) = v31;
      sub_1C0435C(a1, v20, a3, (v20 - a1) >> 7);
    }

    sub_11BD8(v29);
  }
}

void sub_1C04220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_19D4D44(va);
  _Unwind_Resume(a1);
}

__int128 *sub_1C04234(__int128 *a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[8 * v6];
    v9 = v8 + 8;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 16;
      if ((*a2)((v8 + 8), (v8 + 16)))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    *(v9 + 23) = 0;
    *v9 = 0;
    v14 = *(v9 + 8);
    *(a1 + 3) = *(v9 + 3);
    *(a1 + 8) = v14;
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 5));
    }

    v15 = *(v9 + 40);
    *(a1 + 7) = *(v9 + 7);
    *(a1 + 40) = v15;
    *(v9 + 63) = 0;
    *(v9 + 40) = 0;
    a1[4] = v9[4];
    sub_19608BC((a1 + 5), v9 + 10);
    v16 = *(v9 + 60);
    *(a1 + 122) = *(v9 + 122);
    *(a1 + 60) = v16;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void sub_1C0435C(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, void **), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + (v4 >> 1 << 7));
    v10 = (a2 - 128);
    if ((*a3)(v9, (a2 - 128)))
    {
      *v20 = *v10;
      v11 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      v12 = *(a2 - 104);
      v21 = v11;
      v22 = v12;
      v23 = *(a2 - 96);
      *__p = *(a2 - 88);
      v25 = *(a2 - 72);
      *(a2 - 80) = 0;
      *(a2 - 72) = 0;
      *(a2 - 88) = 0;
      v26 = *(a2 - 64);
      sub_195FFEC(v27, (a2 - 48));
      v28 = *(a2 - 8);
      v29 = *(a2 - 6);
      do
      {
        v13 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v14 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v14;
        *(v9 + 23) = 0;
        *v9 = 0;
        v15 = v9 + 3;
        v16 = *(v9 + 8);
        *(v10 + 3) = *(v9 + 3);
        *(v10 + 8) = v16;
        if (*(v10 + 63) < 0)
        {
          operator delete(*(v10 + 5));
        }

        v17 = *(v9 + 40);
        *(v10 + 7) = *(v9 + 7);
        *(v10 + 40) = v17;
        *(v9 + 63) = 0;
        *(v9 + 40) = 0;
        v10[4] = v9[4];
        sub_19608BC((v10 + 5), v9 + 10);
        v19 = v9 + 60;
        v18 = *(v9 + 60);
        *(v10 + 122) = *(v9 + 122);
        *(v10 + 60) = v18;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + (v8 << 7));
        v10 = v13;
      }

      while (((*a3)(v9, v20) & 1) != 0);
      if (*(v13 + 23) < 0)
      {
        operator delete(*v13);
      }

      *v13 = *v20;
      *(v13 + 2) = v21;
      HIBYTE(v21) = 0;
      LOBYTE(v20[0]) = 0;
      *v15 = v22;
      *(v13 + 8) = v23;
      if (*(v13 + 63) < 0)
      {
        operator delete(*(v13 + 5));
      }

      *(v13 + 40) = *__p;
      *(v13 + 7) = v25;
      HIBYTE(v25) = 0;
      LOBYTE(__p[0]) = 0;
      v13[4] = v26;
      sub_19608BC((v13 + 5), v27);
      *v19 = v28;
      *(v13 + 122) = v29;
      sub_11BD8(v27);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }
    }
  }
}

void sub_1C045B0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1C04604(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1C04604(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_1C01AAC(a1, i))
  {
    i -= 128;
  }

  *(a1 + 8) = a2;
}

uint64_t *sub_1C04658(uint64_t a1, int *a2)
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

uint64_t sub_1C04730(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_195F170(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1C00940(a1, i + 4);
  }

  return a1;
}

uint64_t sub_1C047A8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_194DB40(v8, 3, "../../submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/repeated_field.h", 1760);
    v4 = sub_194DB58(v8, "CHECK failed: (index) >= (0): ");
    sub_194DB98(&v7, &v4->__r_.__value_.__l.__data_);
    sub_194DBA0(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_194DB40(v8, 3, "../../submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/repeated_field.h", 1761);
    v5 = sub_194DB58(v8, "CHECK failed: (index) < (current_size_): ");
    sub_194DB98(&v7, &v5->__r_.__value_.__l.__data_);
    sub_194DBA0(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1C04868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_194DBA0(va);
  _Unwind_Resume(a1);
}

const void **sub_1C04888(void *a1, const void **a2)
{
  v4 = sub_1220A84(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_1220AC4(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_1C04984(uint64_t a1)
{
  sub_1C049C0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1C049C0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1C04A04((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1C04A04(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_1C04A4C(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1C04A4C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1C04AA0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1C04AA0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

const void **sub_1C04AF0(void *a1, const void **a2)
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
    sub_1C04D64();
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

void sub_1C04D50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1C04E18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1C04E18(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1C04A04(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **sub_1C04E64(void *a1, const void **a2)
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
    operator new();
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

void sub_1C050E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1C04E18(va);
  _Unwind_Resume(a1);
}

void sub_1C050F8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1C050F8(a1, *a2);
    sub_1C050F8(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_195E3E8(&v4);
    operator delete(a2);
  }
}

uint64_t *sub_1C05158(void *a1, int *a2)
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

void sub_1C05388()
{
  __chkstk_darwin();
  sub_3608D0(&v1245, "AW");
  sub_3608D0(&v1242, "ABW");
  v1244 = 40;
  sub_195E43C(v1247, &v1245, &v1242);
  sub_3608D0(&v1240, "AF");
  sub_3608D0(&v1237, "AFG");
  v1239 = 41;
  sub_195E43C(&v1248, &v1240, &v1237);
  sub_3608D0(&v1235, "AO");
  sub_3608D0(&v1232, "AGO");
  v1234 = 42;
  sub_195E43C(&v1249, &v1235, &v1232);
  sub_3608D0(&v1230, "AI");
  sub_3608D0(&v1227, "AIA");
  v1229 = 43;
  sub_195E43C(&v1250, &v1230, &v1227);
  sub_3608D0(&v1225, "AX");
  sub_3608D0(&v1222, "ALA");
  v1224 = 246;
  sub_195E43C(&v1251, &v1225, &v1222);
  sub_3608D0(&v1220, "AL");
  sub_3608D0(&v1217, "ALB");
  v1219 = 76;
  sub_195E43C(&v1252, &v1220, &v1217);
  sub_3608D0(&v1215, "AD");
  sub_3608D0(&v1212, "AND");
  v1214 = 78;
  sub_195E43C(&v1253, &v1215, &v1212);
  sub_3608D0(&v1210, "AN");
  sub_3608D0(&v1207, "ANT");
  v1209 = 44;
  sub_195E43C(&v1254, &v1210, &v1207);
  sub_3608D0(&v1205, "AE");
  sub_3608D0(&v1202, "ARE");
  v1204 = 2;
  sub_195E43C(&v1255, &v1205, &v1202);
  sub_3608D0(&v1200, "AR");
  sub_3608D0(&v1197, "ARG");
  v1199 = 80;
  sub_195E43C(&v1256, &v1200, &v1197);
  sub_3608D0(&v1195, "AM");
  sub_3608D0(&v1192, "ARM");
  v1194 = 45;
  sub_195E43C(&v1257, &v1195, &v1192);
  sub_3608D0(&v1190, "AS");
  sub_3608D0(&v1187, "ASM");
  v1189 = 77;
  sub_195E43C(&v1258, &v1190, &v1187);
  sub_3608D0(&v1185, "AQ");
  sub_3608D0(&v1182, "ATA");
  v1184 = 46;
  sub_195E43C(&v1259, &v1185, &v1182);
  sub_3608D0(&v1180, "TF");
  sub_3608D0(&v1177, "ATF");
  v1179 = 125;
  sub_195E43C(&v1260, &v1180, &v1177);
  sub_3608D0(&v1175, "AG");
  sub_3608D0(&v1172, "ATG");
  v1174 = 79;
  sub_195E43C(&v1261, &v1175, &v1172);
  sub_3608D0(&v1170, "AU");
  sub_3608D0(&v1167, "AUS");
  v1169 = 22;
  sub_195E43C(&v1262, &v1170, &v1167);
  sub_3608D0(&v1165, "AT");
  sub_3608D0(&v1162, "AUT");
  v1164 = 81;
  sub_195E43C(&v1263, &v1165, &v1162);
  sub_3608D0(&v1160, "AZ");
  sub_3608D0(&v1157, "AZE");
  v1159 = 82;
  sub_195E43C(&v1264, &v1160, &v1157);
  sub_3608D0(&v1155, "BI");
  sub_3608D0(&v1152, "BDI");
  v1154 = 96;
  sub_195E43C(&v1265, &v1155, &v1152);
  sub_3608D0(&v1150, "BE");
  sub_3608D0(&v1147, "BEL");
  v1149 = 87;
  sub_195E43C(&v1266, &v1150, &v1147);
  sub_3608D0(&v1145, "BJ");
  sub_3608D0(&v1142, "BEN");
  v1144 = 3;
  sub_195E43C(&v1267, &v1145, &v1142);
  sub_3608D0(&v1140, "BQ");
  sub_3608D0(&v1137, "BES");
  v1139 = 248;
  sub_195E43C(&v1268, &v1140, &v1137);
  sub_3608D0(&v1135, "BF");
  sub_3608D0(&v1132, "BFA");
  v1134 = 11;
  sub_195E43C(&v1269, &v1135, &v1132);
  sub_3608D0(&v1130, "BD");
  sub_3608D0(&v1127, "BGD");
  v1129 = 84;
  sub_195E43C(&v1270, &v1130, &v1127);
  sub_3608D0(&v1125, "BG");
  sub_3608D0(&v1122, "BGR");
  v1124 = 95;
  sub_195E43C(&v1271, &v1125, &v1122);
  sub_3608D0(&v1120, "BH");
  sub_3608D0(&v1117, "BHR");
  v1119 = 12;
  sub_195E43C(&v1272, &v1120, &v1117);
  sub_3608D0(&v1115, "BS");
  sub_3608D0(&v1112, "BHS");
  v1114 = 83;
  sub_195E43C(&v1273, &v1115, &v1112);
  sub_3608D0(&v1110, "BA");
  sub_3608D0(&v1107, "BIH");
  v1109 = 92;
  sub_195E43C(&v1274, &v1110, &v1107);
  sub_3608D0(&v1105, "BL");
  sub_3608D0(&v1102, "BLM");
  v1104 = 237;
  sub_195E43C(&v1275, &v1105, &v1102);
  sub_3608D0(&v1100, "BY");
  sub_3608D0(&v1097, "BLR");
  v1099 = 86;
  sub_195E43C(&v1276, &v1100, &v1097);
  sub_3608D0(&v1095, "BZ");
  sub_3608D0(&v1092, "BLZ");
  v1094 = 88;
  sub_195E43C(&v1277, &v1095, &v1092);
  sub_3608D0(&v1090, "BM");
  sub_3608D0(&v1087, "BMU");
  v1089 = 89;
  sub_195E43C(&v1278, &v1090, &v1087);
  sub_3608D0(&v1085, "BO");
  sub_3608D0(&v1082, "BOL");
  v1084 = 91;
  sub_195E43C(&v1279, &v1085, &v1082);
  sub_3608D0(&v1080, "BR");
  sub_3608D0(&v1077, "BRA");
  v1079 = 25;
  sub_195E43C(&v1280, &v1080, &v1077);
  sub_3608D0(&v1075, "BB");
  sub_3608D0(&v1072, "BRB");
  v1074 = 85;
  sub_195E43C(&v1281, &v1075, &v1072);
  sub_3608D0(&v1070, "BN");
  sub_3608D0(&v1067, "BRN");
  v1069 = 94;
  sub_195E43C(&v1282, &v1070, &v1067);
  sub_3608D0(&v1065, "BT");
  sub_3608D0(&v1062, "BTN");
  v1064 = 90;
  sub_195E43C(&v1283, &v1065, &v1062);
  sub_3608D0(&v1060, "BV");
  sub_3608D0(&v1057, "BVT");
  v1059 = 245;
  sub_195E43C(&v1284, &v1060, &v1057);
  sub_3608D0(&v1055, "BW");
  sub_3608D0(&v1052, "BWA");
  v1054 = 93;
  sub_195E43C(&v1285, &v1055, &v1052);
  sub_3608D0(&v1050, "CF");
  sub_3608D0(&v1047, "CAF");
  v1049 = 63;
  sub_195E43C(&v1286, &v1050, &v1047);
  sub_3608D0(&v1045, "CA");
  sub_3608D0(&v1042, "CAN");
  v1044 = 98;
  sub_195E43C(&v1287, &v1045, &v1042);
  sub_3608D0(&v1040, "CC");
  sub_3608D0(&v1037, "CCK");
  v1039 = 47;
  sub_195E43C(&v1288, &v1040, &v1037);
  sub_3608D0(&v1035, "CH");
  sub_3608D0(&v1032, "CHE");
  v1034 = 211;
  sub_195E43C(&v1289, &v1035, &v1032);
  sub_3608D0(&v1030, "CL");
  sub_3608D0(&v1027, "CHL");
  v1029 = 102;
  sub_195E43C(&v1290, &v1030, &v1027);
  sub_3608D0(&v1025, "CN");
  sub_3608D0(&v1022, "CHN");
  v1024 = 4;
  sub_195E43C(&v1291, &v1025, &v1022);
  sub_3608D0(&v1020, "CI");
  sub_3608D0(&v1017, "CIV");
  v1019 = 26;
  sub_195E43C(&v1292, &v1020, &v1017);
  sub_3608D0(&v1015, "CM");
  sub_3608D0(&v1012, "CMR");
  v1014 = 27;
  sub_195E43C(&v1293, &v1015, &v1012);
  sub_3608D0(&v1010, "CD");
  sub_3608D0(&v1007, "COD");
  v1009 = 106;
  sub_195E43C(&v1294, &v1010, &v1007);
  sub_3608D0(&v1005, "CG");
  sub_3608D0(&v1002, "COG");
  v1004 = 105;
  sub_195E43C(&v1295, &v1005, &v1002);
  sub_3608D0(&v1000, "CK");
  sub_3608D0(&v997, "COK");
  v999 = 107;
  sub_195E43C(&v1296, &v1000, &v997);
  sub_3608D0(&v995, "CO");
  sub_3608D0(&v992, "COL");
  v994 = 28;
  sub_195E43C(&v1297, &v995, &v992);
  sub_3608D0(&v990, "KM");
  sub_3608D0(&v987, "COM");
  v989 = 104;
  sub_195E43C(&v1298, &v990, &v987);
  sub_3608D0(&v985, "CV");
  sub_3608D0(&v982, "CPV");
  v984 = 99;
  sub_195E43C(&v1299, &v985, &v982);
  sub_3608D0(&v980, "CR");
  sub_3608D0(&v977, "CRI");
  v979 = 13;
  sub_195E43C(&v1300, &v980, &v977);
  sub_3608D0(&v975, "CU");
  sub_3608D0(&v972, "CUB");
  v974 = 109;
  sub_195E43C(&v1301, &v975, &v972);
  sub_3608D0(&v970, "CW");
  sub_3608D0(&v967, "CUW");
  v969 = 247;
  sub_195E43C(&v1302, &v970, &v967);
  sub_3608D0(&v965, "CX");
  sub_3608D0(&v962, "CXR");
  v964 = 103;
  sub_195E43C(&v1303, &v965, &v962);
  sub_3608D0(&v960, "KY");
  sub_3608D0(&v957, "CYM");
  v959 = 100;
  sub_195E43C(&v1304, &v960, &v957);
  sub_3608D0(&v955, "CY");
  sub_3608D0(&v952, "CYP");
  v954 = 110;
  sub_195E43C(&v1305, &v955, &v952);
  sub_3608D0(&v950, "CZ");
  sub_3608D0(&v947, "CZE");
  v949 = 111;
  sub_195E43C(&v1306, &v950, &v947);
  sub_3608D0(&v945, "DE");
  sub_3608D0(&v942, "DEU");
  v944 = 129;
  sub_195E43C(&v1307, &v945, &v942);
  sub_3608D0(&v940, "DJ");
  sub_3608D0(&v937, "DJI");
  v939 = 113;
  sub_195E43C(&v1308, &v940, &v937);
  sub_3608D0(&v935, "DM");
  sub_3608D0(&v932, "DMA");
  v934 = 114;
  sub_195E43C(&v1309, &v935, &v932);
  sub_3608D0(&v930, "DK");
  sub_3608D0(&v927, "DNK");
  v929 = 112;
  sub_195E43C(&v1310, &v930, &v927);
  sub_3608D0(&v925, "DO");
  sub_3608D0(&v922, "DOM");
  v924 = 29;
  sub_195E43C(&v1311, &v925, &v922);
  sub_3608D0(&v920, "DZ");
  sub_3608D0(&v917, "DZA");
  v919 = 0;
  sub_195E43C(&v1312, &v920, &v917);
  sub_3608D0(&v915, "EC");
  sub_3608D0(&v912, "ECU");
  v914 = 30;
  sub_195E43C(&v1313, &v915, &v912);
  sub_3608D0(&v910, "EG");
  sub_3608D0(&v907, "EGY");
  v909 = 64;
  sub_195E43C(&v1314, &v910, &v907);
  sub_3608D0(&v905, "ER");
  sub_3608D0(&v902, "ERI");
  v904 = 116;
  sub_195E43C(&v1315, &v905, &v902);
  sub_3608D0(&v900, "EH");
  sub_3608D0(&v897, "ESH");
  v899 = 65;
  sub_195E43C(&v1316, &v900, &v897);
  sub_3608D0(&v895, "ES");
  sub_3608D0(&v892, "ESP");
  v894 = 206;
  sub_195E43C(&v1317, &v895, &v892);
  sub_3608D0(&v890, "EE");
  sub_3608D0(&v887, "EST");
  v889 = 117;
  sub_195E43C(&v1318, &v890, &v887);
  sub_3608D0(&v885, "ET");
  sub_3608D0(&v882, "ETH");
  v884 = 31;
  sub_195E43C(&v1319, &v885, &v882);
  sub_3608D0(&v880, "FI");
  sub_3608D0(&v877, "FIN");
  v879 = 121;
  sub_195E43C(&v1320, &v880, &v877);
  sub_3608D0(&v875, "FJ");
  sub_3608D0(&v872, "FJI");
  v874 = 120;
  sub_195E43C(&v1321, &v875, &v872);
  sub_3608D0(&v870, "FK");
  sub_3608D0(&v867, "FLK");
  v869 = 118;
  sub_195E43C(&v1322, &v870, &v867);
  sub_3608D0(&v865, "FR");
  sub_3608D0(&v862, "FRA");
  v864 = 122;
  sub_195E43C(&v1323, &v865, &v862);
  sub_3608D0(&v860, "FO");
  sub_3608D0(&v857, "FRO");
  v859 = 119;
  sub_195E43C(&v1324, &v860, &v857);
  sub_3608D0(&v855, "FM");
  sub_3608D0(&v852, "FSM");
  v854 = 166;
  sub_195E43C(&v1325, &v855, &v852);
  sub_3608D0(&v850, "GA");
  sub_3608D0(&v847, "GAB");
  v849 = 126;
  sub_195E43C(&v1326, &v850, &v847);
  sub_3608D0(&v845, "GB");
  sub_3608D0(&v842, "GBR");
  v844 = 225;
  sub_195E43C(&v1327, &v845, &v842);
  sub_3608D0(&v840, "GE");
  sub_3608D0(&v837, "GEO");
  v839 = 128;
  sub_195E43C(&v1328, &v840, &v837);
  sub_3608D0(&v835, "GG");
  sub_3608D0(&v832, "GGY");
  v834 = 256;
  sub_195E43C(&v1329, &v835, &v832);
  sub_3608D0(&v830, "GH");
  sub_3608D0(&v827, "GHA");
  v829 = 66;
  sub_195E43C(&v1330, &v830, &v827);
  sub_3608D0(&v825, "GI");
  sub_3608D0(&v822, "GIB");
  v824 = 67;
  sub_195E43C(&v1331, &v825, &v822);
  sub_3608D0(&v820, "GN");
  sub_3608D0(&v817, "GIN");
  v819 = 135;
  sub_195E43C(&v1332, &v820, &v817);
  sub_3608D0(&v815, "GP");
  sub_3608D0(&v812, "GLP");
  v814 = 133;
  sub_195E43C(&v1333, &v815, &v812);
  sub_3608D0(&v810, "GM");
  sub_3608D0(&v807, "GMB");
  v809 = 127;
  sub_195E43C(&v1334, &v810, &v807);
  sub_3608D0(&v805, "GW");
  sub_3608D0(&v802, "GNB");
  v804 = 68;
  sub_195E43C(&v1335, &v805, &v802);
  sub_3608D0(&v800, "GQ");
  sub_3608D0(&v797, "GNQ");
  v799 = 115;
  sub_195E43C(&v1336, &v800, &v797);
  sub_3608D0(&v795, "GR");
  sub_3608D0(&v792, "GRC");
  v794 = 130;
  sub_195E43C(&v1337, &v795, &v792);
  sub_3608D0(&v790, "GD");
  sub_3608D0(&v787, "GRD");
  v789 = 132;
  sub_195E43C(&v1338, &v790, &v787);
  sub_3608D0(&v785, "GL");
  sub_3608D0(&v782, "GRL");
  v784 = 131;
  sub_195E43C(&v1339, &v785, &v782);
  sub_3608D0(&v780, "GT");
  sub_3608D0(&v777, "GTM");
  v779 = 32;
  sub_195E43C(&v1340, &v780, &v777);
  sub_3608D0(&v775, "GF");
  sub_3608D0(&v772, "GUF");
  v774 = 123;
  sub_195E43C(&v1341, &v775, &v772);
  sub_3608D0(&v770, "GU");
  sub_3608D0(&v767, "GUM");
  v769 = 134;
  sub_195E43C(&v1342, &v770, &v767);
  sub_3608D0(&v765, "GY");
  sub_3608D0(&v762, "GUY");
  v764 = 136;
  sub_195E43C(&v1343, &v765, &v762);
  sub_3608D0(&v760, "HK");
  sub_3608D0(&v757, "HKG");
  v759 = 5;
  sub_195E43C(&v1344, &v760, &v757);
  sub_3608D0(&v755, "HM");
  sub_3608D0(&v752, "HMD");
  v754 = 240;
  sub_195E43C(&v1345, &v755, &v752);
  sub_3608D0(&v750, "HN");
  sub_3608D0(&v747, "HND");
  v749 = 14;
  sub_195E43C(&v1346, &v750, &v747);
  sub_3608D0(&v745, "HR");
  sub_3608D0(&v742, "HRV");
  v744 = 108;
  sub_195E43C(&v1347, &v745, &v742);
  sub_3608D0(&v740, "HT");
  sub_3608D0(&v737, "HTI");
  v739 = 137;
  sub_195E43C(&v1348, &v740, &v737);
  sub_3608D0(&v735, "HU");
  sub_3608D0(&v732, "HUN");
  v734 = 138;
  sub_195E43C(&v1349, &v735, &v732);
  sub_3608D0(&v730, "ID");
  sub_3608D0(&v727, "IDN");
  v729 = 69;
  sub_195E43C(&v1350, &v730, &v727);
  sub_3608D0(&v725, "IM");
  sub_3608D0(&v722, "IMN");
  v724 = 255;
  sub_195E43C(&v1351, &v725, &v722);
  sub_3608D0(&v720, "IN");
  sub_3608D0(&v717, "IND");
  v719 = 140;
  sub_195E43C(&v1352, &v720, &v717);
  sub_3608D0(&v715, "IO");
  sub_3608D0(&v712, "IOT");
  v714 = 48;
  sub_195E43C(&v1353, &v715, &v712);
  sub_3608D0(&v710, "IE");
  sub_3608D0(&v707, "IRL");
  v709 = 143;
  sub_195E43C(&v1354, &v710, &v707);
  sub_3608D0(&v705, "IR");
  sub_3608D0(&v702, "IRN");
  v704 = 141;
  sub_195E43C(&v1355, &v705, &v702);
  sub_3608D0(&v700, "IQ");
  sub_3608D0(&v697, "IRQ");
  v699 = 142;
  sub_195E43C(&v1356, &v700, &v697);
  sub_3608D0(&v695, "IS");
  sub_3608D0(&v692, "ISL");
  v694 = 139;
  sub_195E43C(&v1357, &v695, &v692);
  sub_3608D0(&v690, "IL");
  sub_3608D0(&v687, "ISR");
  v689 = 75;
  sub_195E43C(&v1358, &v690, &v687);
  sub_3608D0(&v685, "IT");
  sub_3608D0(&v682, "ITA");
  v684 = 144;
  sub_195E43C(&v1359, &v685, &v682);
  sub_3608D0(&v680, "JM");
  sub_3608D0(&v677, "JAM");
  v679 = 15;
  sub_195E43C(&v1360, &v680, &v677);
  sub_3608D0(&v675, "JE");
  sub_3608D0(&v672, "JEY");
  v674 = 254;
  sub_195E43C(&v1361, &v675, &v672);
  sub_3608D0(&v670, "JO");
  sub_3608D0(&v667, "JOR");
  v669 = 33;
  sub_195E43C(&v1362, &v670, &v667);
  sub_3608D0(&v665, "JP");
  sub_3608D0(&v662, "JPN");
  v664 = 10;
  sub_195E43C(&v1363, &v665, &v662);
  sub_3608D0(&v660, "KZ");
  sub_3608D0(&v657, "KAZ");
  v659 = 145;
  sub_195E43C(&v1364, &v660, &v657);
  sub_3608D0(&v655, "KE");
  sub_3608D0(&v652, "KEN");
  v654 = 34;
  sub_195E43C(&v1365, &v655, &v652);
  sub_3608D0(&v650, "KG");
  sub_3608D0(&v647, "KGZ");
  v649 = 149;
  sub_195E43C(&v1366, &v650, &v647);
  sub_3608D0(&v645, "KH");
  sub_3608D0(&v642, "KHM");
  v644 = 97;
  sub_195E43C(&v1367, &v645, &v642);
  sub_3608D0(&v640, "KI");
  sub_3608D0(&v637, "KIR");
  v639 = 146;
  sub_195E43C(&v1368, &v640, &v637);
  sub_3608D0(&v635, "KN");
  sub_3608D0(&v632, "KNA");
  v634 = 193;
  sub_195E43C(&v1369, &v635, &v632);
  sub_3608D0(&v630, "KR");
  sub_3608D0(&v627, "KOR");
  v629 = 148;
  sub_195E43C(&v1370, &v630, &v627);
  sub_3608D0(&v625, "KW");
  sub_3608D0(&v622, "KWT");
  v624 = 16;
  sub_195E43C(&v1371, &v625, &v622);
  sub_3608D0(&v620, "LA");
  sub_3608D0(&v617, "LAO");
  v619 = 150;
  sub_195E43C(&v1372, &v620, &v617);
  sub_3608D0(&v615, "LB");
  sub_3608D0(&v612, "LBN");
  v614 = 152;
  sub_195E43C(&v1373, &v615, &v612);
  sub_3608D0(&v610, "LR");
  sub_3608D0(&v607, "LBR");
  v609 = 153;
  sub_195E43C(&v1374, &v610, &v607);
  sub_3608D0(&v605, "LY");
  sub_3608D0(&v602, "LBY");
  v604 = 154;
  sub_195E43C(&v1375, &v605, &v602);
  sub_3608D0(&v600, "LC");
  sub_3608D0(&v597, "LCA");
  v599 = 194;
  sub_195E43C(&v1376, &v600, &v597);
  sub_3608D0(&v595, "LI");
  sub_3608D0(&v592, "LIE");
  v594 = 70;
  sub_195E43C(&v1377, &v595, &v592);
  sub_3608D0(&v590, "LK");
  sub_3608D0(&v587, "LKA");
  v589 = 207;
  sub_195E43C(&v1378, &v590, &v587);
  sub_3608D0(&v585, "LS");
  sub_3608D0(&v582, "LSO");
  v584 = 49;
  sub_195E43C(&v1379, &v585, &v582);
  sub_3608D0(&v580, "LT");
  sub_3608D0(&v577, "LTU");
  v579 = 155;
  sub_195E43C(&v1380, &v580, &v577);
  sub_3608D0(&v575, "LU");
  sub_3608D0(&v572, "LUX");
  v574 = 156;
  sub_195E43C(&v1381, &v575, &v572);
  sub_3608D0(&v570, "LV");
  sub_3608D0(&v567, "LVA");
  v569 = 151;
  sub_195E43C(&v1382, &v570, &v567);
  sub_3608D0(&v565, "MO");
  sub_3608D0(&v562, "MAC");
  v564 = 157;
  sub_195E43C(&v1383, &v565, &v562);
  sub_3608D0(&v560, "MF");
  sub_3608D0(&v557, "MAF");
  v559 = 236;
  sub_195E43C(&v1384, &v560, &v557);
  sub_3608D0(&v555, "MA");
  sub_3608D0(&v552, "MAR");
  v554 = 171;
  sub_195E43C(&v1385, &v555, &v552);
  sub_3608D0(&v550, "MC");
  sub_3608D0(&v547, "MCO");
  v549 = 71;
  sub_195E43C(&v1386, &v550, &v547);
  sub_3608D0(&v545, "MD");
  sub_3608D0(&v542, "MDA");
  v544 = 167;
  sub_195E43C(&v1387, &v545, &v542);
  sub_3608D0(&v540, "MG");
  sub_3608D0(&v537, "MDG");
  v539 = 159;
  sub_195E43C(&v1388, &v540, &v537);
  sub_3608D0(&v535, "MV");
  sub_3608D0(&v532, "MDV");
  v534 = 50;
  sub_195E43C(&v1389, &v535, &v532);
  sub_3608D0(&v530, "MX");
  sub_3608D0(&v527, "MEX");
  v529 = 165;
  sub_195E43C(&v1390, &v530, &v527);
  sub_3608D0(&v525, "MH");
  sub_3608D0(&v522, "MHL");
  v524 = 51;
  sub_195E43C(&v1391, &v525, &v522);
  sub_3608D0(&v520, "MK");
  sub_3608D0(&v517, "MKD");
  v519 = 158;
  sub_195E43C(&v1392, &v520, &v517);
  sub_3608D0(&v515, "ML");
  sub_3608D0(&v512, "MLI");
  v514 = 17;
  sub_195E43C(&v1393, &v515, &v512);
  sub_3608D0(&v510, "MT");
  sub_3608D0(&v507, "MLT");
  v509 = 162;
  sub_195E43C(&v1394, &v510, &v507);
  sub_3608D0(&v505, "MM");
  sub_3608D0(&v502, "MMR");
  v504 = 173;
  sub_195E43C(&v1395, &v505, &v502);
  sub_3608D0(&v500, "ME");
  sub_3608D0(&v497, "MNE");
  v499 = 169;
  sub_195E43C(&v1396, &v500, &v497);
  sub_3608D0(&v495, "MN");
  sub_3608D0(&v492, "MNG");
  v494 = 168;
  sub_195E43C(&v1397, &v495, &v492);
  sub_3608D0(&v490, "MP");
  sub_3608D0(&v487, "MNP");
  v489 = 179;
  sub_195E43C(&v1398, &v490, &v487);
  sub_3608D0(&v485, "MZ");
  sub_3608D0(&v482, "MOZ");
  v484 = 172;
  sub_195E43C(&v1399, &v485, &v482);
  sub_3608D0(&v480, "MR");
  sub_3608D0(&v477, "MRT");
  v479 = 163;
  sub_195E43C(&v1400, &v480, &v477);
  sub_3608D0(&v475, "MS");
  sub_3608D0(&v472, "MSR");
  v474 = 170;
  sub_195E43C(&v1401, &v475, &v472);
  sub_3608D0(&v470, "MQ");
  sub_3608D0(&v467, "MTQ");
  v469 = 52;
  sub_195E43C(&v1402, &v470, &v467);
  sub_3608D0(&v465, "MU");
  sub_3608D0(&v462, "MUS");
  v464 = 164;
  sub_195E43C(&v1403, &v465, &v462);
  sub_3608D0(&v460, "MW");
  sub_3608D0(&v457, "MWI");
  v459 = 160;
  sub_195E43C(&v1404, &v460, &v457);
  sub_3608D0(&v455, "MY");
  sub_3608D0(&v452, "MYS");
  v454 = 161;
  sub_195E43C(&v1405, &v455, &v452);
  sub_3608D0(&v450, "YT");
  sub_3608D0(&v447, "MYT");
  v449 = 53;
  sub_195E43C(&v1406, &v450, &v447);
  sub_3608D0(&v445, "NA");
  sub_3608D0(&v442, "NAM");
  v444 = 174;
  sub_195E43C(&v1407, &v445, &v442);
  sub_3608D0(&v440, "NC");
  sub_3608D0(&v437, "NCL");
  v439 = 177;
  sub_195E43C(&v1408, &v440, &v437);
  sub_3608D0(&v435, "NE");
  sub_3608D0(&v432, "NER");
  v434 = 35;
  sub_195E43C(&v1409, &v435, &v432);
  sub_3608D0(&v430, "NF");
  sub_3608D0(&v427, "NFK");
  v429 = 23;
  sub_195E43C(&v1410, &v430, &v427);
  sub_3608D0(&v425, "NG");
  sub_3608D0(&v422, "NGA");
  v424 = 6;
  sub_195E43C(&v1411, &v425, &v422);
  sub_3608D0(&v420, "NI");
  sub_3608D0(&v417, "NIC");
  v419 = 18;
  sub_195E43C(&v1412, &v420, &v417);
  sub_3608D0(&v415, "NU");
  sub_3608D0(&v412, "NIU");
  v414 = 178;
  sub_195E43C(&v1413, &v415, &v412);
  sub_3608D0(&v410, "NL");
  sub_3608D0(&v407, "NLD");
  v409 = 176;
  sub_195E43C(&v1414, &v410, &v407);
  sub_3608D0(&v405, "NO");
  sub_3608D0(&v402, "NOR");
  v404 = 180;
  sub_195E43C(&v1415, &v405, &v402);
  sub_3608D0(&v400, "NP");
  sub_3608D0(&v397, "NPL");
  v399 = 175;
  sub_195E43C(&v1416, &v400, &v397);
  sub_3608D0(&v395, "NR");
  sub_3608D0(&v392, "NRU");
  v394 = 54;
  sub_195E43C(&v1417, &v395, &v392);
  sub_3608D0(&v390, "NZ");
  sub_3608D0(&v387, "NZL");
  v389 = 24;
  sub_195E43C(&v1418, &v390, &v387);
  sub_3608D0(&v385, "OM");
  sub_3608D0(&v382, "OMN");
  v384 = 7;
  sub_195E43C(&v1419, &v385, &v382);
  sub_3608D0(&v380, "PA");
  sub_3608D0(&v377, "PAN");
  v379 = 19;
  sub_195E43C(&v1420, &v380, &v377);
  sub_3608D0(&v375, "PE");
  sub_3608D0(&v372, "PER");
  v374 = 184;
  sub_195E43C(&v1421, &v375, &v372);
  sub_3608D0(&v370, "PF");
  sub_3608D0(&v367, "PYF");
  v369 = 124;
  sub_195E43C(&v1422, &v370, &v367);
  sub_3608D0(&v365, "PG");
  sub_3608D0(&v362, "PNG");
  v364 = 56;
  sub_195E43C(&v1423, &v365, &v362);
  sub_3608D0(&v360, "PH");
  sub_3608D0(&v357, "PHL");
  v359 = 185;
  sub_195E43C(&v1424, &v360, &v357);
  sub_3608D0(&v355, "PK");
  sub_3608D0(&v352, "PAK");
  v354 = 181;
  sub_195E43C(&v1425, &v355, &v352);
  sub_3608D0(&v350, "PL");
  sub_3608D0(&v347, "POL");
  v349 = 186;
  sub_195E43C(&v1426, &v350, &v347);
  sub_3608D0(&v345, "PM");
  sub_3608D0(&v342, "SPM");
  v344 = 241;
  sub_195E43C(&v1427, &v345, &v342);
  sub_3608D0(&v340, "PN");
  sub_3608D0(&v337, "PCN");
  v339 = 55;
  sub_195E43C(&v1428, &v340, &v337);
  sub_3608D0(&v335, "PR");
  sub_3608D0(&v332, "PRI");
  v334 = 253;
  sub_195E43C(&v1429, &v335, &v332);
  sub_3608D0(&v330, "PS");
  sub_3608D0(&v327, "PSE");
  v329 = 36;
  sub_195E43C(&v1430, &v330, &v327);
  sub_3608D0(&v325, "PT");
  sub_3608D0(&v322, "PRT");
  v324 = 187;
  sub_195E43C(&v1431, &v325, &v322);
  sub_3608D0(&v320, "PW");
  sub_3608D0(&v317, "PLW");
  v319 = 182;
  sub_195E43C(&v1432, &v320, &v317);
  sub_3608D0(&v315, "PY");
  sub_3608D0(&v312, "PRY");
  v314 = 183;
  sub_195E43C(&v1433, &v315, &v312);
  sub_3608D0(&v310, "QA");
  sub_3608D0(&v307, "QAT");
  v309 = 8;
  sub_195E43C(&v1434, &v310, &v307);
  sub_3608D0(&v305, "RE");
  sub_3608D0(&v302, "REU");
  v304 = 188;
  sub_195E43C(&v1435, &v305, &v302);
  sub_3608D0(&v300, "RO");
  sub_3608D0(&v297, "ROU");
  v299 = 189;
  sub_195E43C(&v1436, &v300, &v297);
  sub_3608D0(&v295, "RS");
  sub_3608D0(&v292, "SRB");
  v294 = 199;
  sub_195E43C(&v1437, &v295, &v292);
  sub_3608D0(&v290, "RU");
  sub_3608D0(&v287, "RUS");
  v289 = 190;
  sub_195E43C(&v1438, &v290, &v287);
  sub_3608D0(&v285, "RW");
  sub_3608D0(&v282, "RWA");
  v284 = 191;
  sub_195E43C(&v1439, &v285, &v282);
  sub_3608D0(&v280, "SA");
  sub_3608D0(&v277, "SAU");
  v279 = 20;
  sub_195E43C(&v1440, &v280, &v277);
  sub_3608D0(&v275, "SB");
  sub_3608D0(&v272, "SLB");
  v274 = 58;
  sub_195E43C(&v1441, &v275, &v272);
  sub_3608D0(&v270, "SC");
  sub_3608D0(&v267, "SYC");
  v269 = 200;
  sub_195E43C(&v1442, &v270, &v267);
  sub_3608D0(&v265, "SD");
  sub_3608D0(&v262, "SDN");
  v264 = 208;
  sub_195E43C(&v1443, &v265, &v262);
  sub_3608D0(&v260, "SE");
  sub_3608D0(&v257, "SWE");
  v259 = 210;
  sub_195E43C(&v1444, &v260, &v257);
  sub_3608D0(&v255, "SG");
  sub_3608D0(&v252, "SGP");
  v254 = 202;
  sub_195E43C(&v1445, &v255, &v252);
  sub_3608D0(&v250, "SH");
  sub_3608D0(&v247, "SHN");
  v249 = 192;
  sub_195E43C(&v1446, &v250, &v247);
  sub_3608D0(&v245, "SI");
  sub_3608D0(&v242, "SVN");
  v244 = 204;
  sub_195E43C(&v1447, &v245, &v242);
  sub_3608D0(&v240, "SJ");
  sub_3608D0(&v237, "SJM");
  v239 = 72;
  sub_195E43C(&v1448, &v240, &v237);
  sub_3608D0(&v235, "SK");
  sub_3608D0(&v232, "SVK");
  v234 = 203;
  sub_195E43C(&v1449, &v235, &v232);
  sub_3608D0(&v230, "SL");
  sub_3608D0(&v227, "SLE");
  v229 = 201;
  sub_195E43C(&v1450, &v230, &v227);
  sub_3608D0(&v225, "SM");
  sub_3608D0(&v222, "SMR");
  v224 = 197;
  sub_195E43C(&v1451, &v225, &v222);
  sub_3608D0(&v220, "SN");
  sub_3608D0(&v217, "SEN");
  v219 = 37;
  sub_195E43C(&v1452, &v220, &v217);
  sub_3608D0(&v215, "SO");
  sub_3608D0(&v212, "SOM");
  v214 = 205;
  sub_195E43C(&v1453, &v215, &v212);
  sub_3608D0(&v210, "SR");
  sub_3608D0(&v207, "SUR");
  v209 = 209;
  sub_195E43C(&v1454, &v210, &v207);
  sub_3608D0(&v205, "SS");
  sub_3608D0(&v202, "SSD");
  v204 = 243;
  sub_195E43C(&v1455, &v205, &v202);
  sub_3608D0(&v200, "ST");
  sub_3608D0(&v197, "STP");
  v199 = 198;
  sub_195E43C(&v1456, &v200, &v197);
  sub_3608D0(&v195, "SV");
  sub_3608D0(&v192, "SLV");
  v194 = 21;
  sub_195E43C(&v1457, &v195, &v192);
  sub_3608D0(&v190, "SX");
  sub_3608D0(&v187, "SXM");
  v189 = 234;
  sub_195E43C(&v1458, &v190, &v187);
  sub_3608D0(&v185, "SY");
  sub_3608D0(&v182, "SYR");
  v184 = 212;
  sub_195E43C(&v1459, &v185, &v182);
  sub_3608D0(&v180, "SZ");
  sub_3608D0(&v177, "SWZ");
  v179 = 59;
  sub_195E43C(&v1460, &v180, &v177);
  sub_3608D0(&v175, "TC");
  sub_3608D0(&v172, "TCA");
  v174 = 222;
  sub_195E43C(&v1461, &v175, &v172);
  sub_3608D0(&v170, "TD");
  sub_3608D0(&v167, "TCD");
  v169 = 101;
  sub_195E43C(&v1462, &v170, &v167);
  sub_3608D0(&v165, "TF");
  sub_3608D0(&v162, "ATF");
  v164 = 125;
  sub_195E43C(&v1463, &v165, &v162);
  sub_3608D0(&v160, "TG");
  sub_3608D0(&v157, "TGO");
  v159 = 216;
  sub_195E43C(&v1464, &v160, &v157);
  sub_3608D0(&v155, "TH");
  sub_3608D0(&v152, "THA");
  v154 = 214;
  sub_195E43C(&v1465, &v155, &v152);
  sub_3608D0(&v150, "TJ");
  sub_3608D0(&v147, "TJK");
  v149 = 213;
  sub_195E43C(&v1466, &v150, &v147);
  sub_3608D0(&v145, "TK");
  sub_3608D0(&v142, "TKL");
  v144 = 244;
  sub_195E43C(&v1467, &v145, &v142);
  sub_3608D0(&v140, "TL");
  sub_3608D0(&v137, "TLS");
  v139 = 215;
  sub_195E43C(&v1468, &v140, &v137);
  sub_3608D0(&v135, "TM");
  sub_3608D0(&v132, "TKM");
  v134 = 221;
  sub_195E43C(&v1469, &v135, &v132);
  sub_3608D0(&v130, "TN");
  sub_3608D0(&v127, "TUN");
  v129 = 219;
  sub_195E43C(&v1470, &v130, &v127);
  sub_3608D0(&v125, "TO");
  sub_3608D0(&v122, "TON");
  v124 = 217;
  sub_195E43C(&v1471, &v125, &v122);
  sub_3608D0(&v120, "TR");
  sub_3608D0(&v117, "TUR");
  v119 = 220;
  sub_195E43C(&v1472, &v120, &v117);
  sub_3608D0(&v115, "TT");
  sub_3608D0(&v112, "TTO");
  v114 = 218;
  sub_195E43C(&v1473, &v115, &v112);
  sub_3608D0(&v110, "TV");
  sub_3608D0(&v107, "TUV");
  v109 = 60;
  sub_195E43C(&v1474, &v110, &v107);
  sub_3608D0(&v105, "TZ");
  sub_3608D0(&v102, "TZA");
  v104 = 38;
  sub_195E43C(&v1475, &v105, &v102);
  sub_3608D0(&v100, "UA");
  sub_3608D0(&v97, "UKR");
  v99 = 224;
  sub_195E43C(&v1476, &v100, &v97);
  sub_3608D0(&v95, "UG");
  sub_3608D0(&v92, "UGA");
  v94 = 223;
  sub_195E43C(&v1477, &v95, &v92);
  sub_3608D0(&v90, "UM");
  sub_3608D0(&v87, "UMI");
  v89 = 251;
  sub_195E43C(&v1478, &v90, &v87);
  sub_3608D0(&v85, "US");
  sub_3608D0(&v82, "USA");
  v84 = 226;
  sub_195E43C(&v1479, &v85, &v82);
  sub_3608D0(&v80, "UY");
  sub_3608D0(&v77, "URY");
  v79 = 1;
  sub_195E43C(&v1480, &v80, &v77);
  sub_3608D0(&v75, "UZ");
  sub_3608D0(&v72, "UZB");
  v74 = 227;
  sub_195E43C(&v1481, &v75, &v72);
  sub_3608D0(&v70, "VA");
  sub_3608D0(&v67, "VAT");
  v69 = 74;
  sub_195E43C(&v1482, &v70, &v67);
  sub_3608D0(&v65, "VC");
  sub_3608D0(&v62, "VCT");
  v64 = 195;
  sub_195E43C(&v1483, &v65, &v62);
  sub_3608D0(&v60, "VE");
  sub_3608D0(&v57, "VEN");
  v59 = 39;
  sub_195E43C(&v1484, &v60, &v57);
  sub_3608D0(&v55, "VG");
  sub_3608D0(&v52, "VGB");
  v54 = 229;
  sub_195E43C(&v1485, &v55, &v52);
  sub_3608D0(&v50, "VI");
  sub_3608D0(&v47, "VIR");
  v49 = 242;
  sub_195E43C(&v1486, &v50, &v47);
  sub_3608D0(&v45, "VN");
  sub_3608D0(&v42, "VNM");
  v44 = 9;
  sub_195E43C(&v1487, &v45, &v42);
  sub_3608D0(&v40, "VU");
  sub_3608D0(&v37, "VUT");
  v39 = 228;
  sub_195E43C(&v1488, &v40, &v37);
  sub_3608D0(&v35, "WF");
  sub_3608D0(&v32, "WLF");
  v34 = 230;
  sub_195E43C(&v1489, &v35, &v32);
  sub_3608D0(&v30, "WS");
  sub_3608D0(&v27, "WSM");
  v29 = 196;
  sub_195E43C(&v1490, &v30, &v27);
  sub_3608D0(&v25, "YE");
  sub_3608D0(&v22, "YEM");
  v24 = 231;
  sub_195E43C(&v1491, &v25, &v22);
  sub_3608D0(&v20, "YT");
  sub_3608D0(&v17, "MYT");
  v19 = 53;
  sub_195E43C(&v1492, &v20, &v17);
  sub_3608D0(&v15, "ZA");
  sub_3608D0(v12, "ZAF");
  v14 = 62;
  sub_195E43C(&v1493, &v15, v12);
  sub_3608D0(v10, "ZM");
  sub_3608D0(v7, "ZMB");
  v9 = 232;
  sub_195E43C(&v1494, v10, v7);
  sub_3608D0(v5, "ZW");
  sub_3608D0(__p, "ZWE");
  v4 = 233;
  sub_195E43C(&v1495, v5, __p);
  sub_1966280(qword_27EE750, v1247, 249);
  v0 = &v1496;
  v1 = -13944;
  do
  {
    if (*v0 < 0)
    {
      operator delete(*(v0 - 23));
    }

    if (*(v0 - 24) < 0)
    {
      operator delete(*(v0 - 47));
    }

    v0 -= 56;
    v1 += 56;
  }

  while (v1);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v48 < 0)
  {
    operator delete(v47);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v58 < 0)
  {
    operator delete(v57);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v63 < 0)
  {
    operator delete(v62);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v68 < 0)
  {
    operator delete(v67);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v73 < 0)
  {
    operator delete(v72);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (v78 < 0)
  {
    operator delete(v77);
  }

  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (v83 < 0)
  {
    operator delete(v82);
  }

  if (v86 < 0)
  {
    operator delete(v85);
  }

  if (v88 < 0)
  {
    operator delete(v87);
  }

  if (v91 < 0)
  {
    operator delete(v90);
  }

  if (v93 < 0)
  {
    operator delete(v92);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v98 < 0)
  {
    operator delete(v97);
  }

  if (v101 < 0)
  {
    operator delete(v100);
  }

  if (v103 < 0)
  {
    operator delete(v102);
  }

  if (v106 < 0)
  {
    operator delete(v105);
  }

  if (v108 < 0)
  {
    operator delete(v107);
  }

  if (v111 < 0)
  {
    operator delete(v110);
  }

  if (v113 < 0)
  {
    operator delete(v112);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v118 < 0)
  {
    operator delete(v117);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  if (v123 < 0)
  {
    operator delete(v122);
  }

  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (v128 < 0)
  {
    operator delete(v127);
  }

  if (v131 < 0)
  {
    operator delete(v130);
  }

  if (v133 < 0)
  {
    operator delete(v132);
  }

  if (v136 < 0)
  {
    operator delete(v135);
  }

  if (v138 < 0)
  {
    operator delete(v137);
  }

  if (v141 < 0)
  {
    operator delete(v140);
  }

  if (v143 < 0)
  {
    operator delete(v142);
  }

  if (v146 < 0)
  {
    operator delete(v145);
  }

  if (v148 < 0)
  {
    operator delete(v147);
  }

  if (v151 < 0)
  {
    operator delete(v150);
  }

  if (v153 < 0)
  {
    operator delete(v152);
  }

  if (v156 < 0)
  {
    operator delete(v155);
  }

  if (v158 < 0)
  {
    operator delete(v157);
  }

  if (v161 < 0)
  {
    operator delete(v160);
  }

  if (v163 < 0)
  {
    operator delete(v162);
  }

  if (v166 < 0)
  {
    operator delete(v165);
  }

  if (v168 < 0)
  {
    operator delete(v167);
  }

  if (v171 < 0)
  {
    operator delete(v170);
  }

  if (v173 < 0)
  {
    operator delete(v172);
  }

  if (v176 < 0)
  {
    operator delete(v175);
  }

  if (v178 < 0)
  {
    operator delete(v177);
  }

  if (v181 < 0)
  {
    operator delete(v180);
  }

  if (v183 < 0)
  {
    operator delete(v182);
  }

  if (v186 < 0)
  {
    operator delete(v185);
  }

  if (v188 < 0)
  {
    operator delete(v187);
  }

  if (v191 < 0)
  {
    operator delete(v190);
  }

  if (v193 < 0)
  {
    operator delete(v192);
  }

  if (v196 < 0)
  {
    operator delete(v195);
  }

  if (v198 < 0)
  {
    operator delete(v197);
  }

  if (v201 < 0)
  {
    operator delete(v200);
  }

  if (v203 < 0)
  {
    operator delete(v202);
  }

  if (v206 < 0)
  {
    operator delete(v205);
  }

  if (v208 < 0)
  {
    operator delete(v207);
  }

  if (v211 < 0)
  {
    operator delete(v210);
  }

  if (v213 < 0)
  {
    operator delete(v212);
  }

  if (v216 < 0)
  {
    operator delete(v215);
  }

  if (v218 < 0)
  {
    operator delete(v217);
  }

  if (v221 < 0)
  {
    operator delete(v220);
  }

  if (v223 < 0)
  {
    operator delete(v222);
  }

  if (v226 < 0)
  {
    operator delete(v225);
  }

  if (v228 < 0)
  {
    operator delete(v227);
  }

  if (v231 < 0)
  {
    operator delete(v230);
  }

  if (v233 < 0)
  {
    operator delete(v232);
  }

  if (v236 < 0)
  {
    operator delete(v235);
  }

  if (v238 < 0)
  {
    operator delete(v237);
  }

  if (v241 < 0)
  {
    operator delete(v240);
  }

  if (v243 < 0)
  {
    operator delete(v242);
  }

  if (v246 < 0)
  {
    operator delete(v245);
  }

  if (v248 < 0)
  {
    operator delete(v247);
  }

  if (v251 < 0)
  {
    operator delete(v250);
  }

  if (v253 < 0)
  {
    operator delete(v252);
  }

  if (v256 < 0)
  {
    operator delete(v255);
  }

  if (v258 < 0)
  {
    operator delete(v257);
  }

  if (v261 < 0)
  {
    operator delete(v260);
  }

  if (v263 < 0)
  {
    operator delete(v262);
  }

  if (v266 < 0)
  {
    operator delete(v265);
  }

  if (v268 < 0)
  {
    operator delete(v267);
  }

  if (v271 < 0)
  {
    operator delete(v270);
  }

  if (v273 < 0)
  {
    operator delete(v272);
  }

  if (v276 < 0)
  {
    operator delete(v275);
  }

  if (v278 < 0)
  {
    operator delete(v277);
  }

  if (v281 < 0)
  {
    operator delete(v280);
  }

  if (v283 < 0)
  {
    operator delete(v282);
  }

  if (v286 < 0)
  {
    operator delete(v285);
  }

  if (v288 < 0)
  {
    operator delete(v287);
  }

  if (v291 < 0)
  {
    operator delete(v290);
  }

  if (v293 < 0)
  {
    operator delete(v292);
  }

  if (v296 < 0)
  {
    operator delete(v295);
  }

  if (v298 < 0)
  {
    operator delete(v297);
  }

  if (v301 < 0)
  {
    operator delete(v300);
  }

  if (v303 < 0)
  {
    operator delete(v302);
  }

  if (v306 < 0)
  {
    operator delete(v305);
  }

  if (v308 < 0)
  {
    operator delete(v307);
  }

  if (v311 < 0)
  {
    operator delete(v310);
  }

  if (v313 < 0)
  {
    operator delete(v312);
  }

  if (v316 < 0)
  {
    operator delete(v315);
  }

  if (v318 < 0)
  {
    operator delete(v317);
  }

  if (v321 < 0)
  {
    operator delete(v320);
  }

  if (v323 < 0)
  {
    operator delete(v322);
  }

  if (v326 < 0)
  {
    operator delete(v325);
  }

  if (v328 < 0)
  {
    operator delete(v327);
  }

  if (v331 < 0)
  {
    operator delete(v330);
  }

  if (v333 < 0)
  {
    operator delete(v332);
  }

  if (v336 < 0)
  {
    operator delete(v335);
  }

  if (v338 < 0)
  {
    operator delete(v337);
  }

  if (v341 < 0)
  {
    operator delete(v340);
  }

  if (v343 < 0)
  {
    operator delete(v342);
  }

  if (v346 < 0)
  {
    operator delete(v345);
  }

  if (v348 < 0)
  {
    operator delete(v347);
  }

  if (v351 < 0)
  {
    operator delete(v350);
  }

  if (v353 < 0)
  {
    operator delete(v352);
  }

  if (v356 < 0)
  {
    operator delete(v355);
  }

  if (v358 < 0)
  {
    operator delete(v357);
  }

  if (v361 < 0)
  {
    operator delete(v360);
  }

  if (v363 < 0)
  {
    operator delete(v362);
  }

  if (v366 < 0)
  {
    operator delete(v365);
  }

  if (v368 < 0)
  {
    operator delete(v367);
  }

  if (v371 < 0)
  {
    operator delete(v370);
  }

  if (v373 < 0)
  {
    operator delete(v372);
  }

  if (v376 < 0)
  {
    operator delete(v375);
  }

  if (v378 < 0)
  {
    operator delete(v377);
  }

  if (v381 < 0)
  {
    operator delete(v380);
  }

  if (v383 < 0)
  {
    operator delete(v382);
  }

  if (v386 < 0)
  {
    operator delete(v385);
  }

  if (v388 < 0)
  {
    operator delete(v387);
  }

  if (v391 < 0)
  {
    operator delete(v390);
  }

  if (v393 < 0)
  {
    operator delete(v392);
  }

  if (v396 < 0)
  {
    operator delete(v395);
  }

  if (v398 < 0)
  {
    operator delete(v397);
  }

  if (v401 < 0)
  {
    operator delete(v400);
  }

  if (v403 < 0)
  {
    operator delete(v402);
  }

  if (v406 < 0)
  {
    operator delete(v405);
  }

  if (v408 < 0)
  {
    operator delete(v407);
  }

  if (v411 < 0)
  {
    operator delete(v410);
  }

  if (v413 < 0)
  {
    operator delete(v412);
  }

  if (v416 < 0)
  {
    operator delete(v415);
  }

  if (v418 < 0)
  {
    operator delete(v417);
  }

  if (v421 < 0)
  {
    operator delete(v420);
  }

  if (v423 < 0)
  {
    operator delete(v422);
  }

  if (v426 < 0)
  {
    operator delete(v425);
  }

  if (v428 < 0)
  {
    operator delete(v427);
  }

  if (v431 < 0)
  {
    operator delete(v430);
  }

  if (v433 < 0)
  {
    operator delete(v432);
  }

  if (v436 < 0)
  {
    operator delete(v435);
  }

  if (v438 < 0)
  {
    operator delete(v437);
  }

  if (v441 < 0)
  {
    operator delete(v440);
  }

  if (v443 < 0)
  {
    operator delete(v442);
  }

  if (v446 < 0)
  {
    operator delete(v445);
  }

  if (v448 < 0)
  {
    operator delete(v447);
  }

  if (v451 < 0)
  {
    operator delete(v450);
  }

  if (v453 < 0)
  {
    operator delete(v452);
  }

  if (v456 < 0)
  {
    operator delete(v455);
  }

  if (v458 < 0)
  {
    operator delete(v457);
  }

  if (v461 < 0)
  {
    operator delete(v460);
  }

  if (v463 < 0)
  {
    operator delete(v462);
  }

  if (v466 < 0)
  {
    operator delete(v465);
  }

  if (v468 < 0)
  {
    operator delete(v467);
  }

  if (v471 < 0)
  {
    operator delete(v470);
  }

  if (v473 < 0)
  {
    operator delete(v472);
  }

  if (v476 < 0)
  {
    operator delete(v475);
  }

  if (v478 < 0)
  {
    operator delete(v477);
  }

  if (v481 < 0)
  {
    operator delete(v480);
  }

  if (v483 < 0)
  {
    operator delete(v482);
  }

  if (v486 < 0)
  {
    operator delete(v485);
  }

  if (v488 < 0)
  {
    operator delete(v487);
  }

  if (v491 < 0)
  {
    operator delete(v490);
  }

  if (v493 < 0)
  {
    operator delete(v492);
  }

  if (v496 < 0)
  {
    operator delete(v495);
  }

  if (v498 < 0)
  {
    operator delete(v497);
  }

  if (v501 < 0)
  {
    operator delete(v500);
  }

  if (v503 < 0)
  {
    operator delete(v502);
  }

  if (v506 < 0)
  {
    operator delete(v505);
  }

  if (v508 < 0)
  {
    operator delete(v507);
  }

  if (v511 < 0)
  {
    operator delete(v510);
  }

  if (v513 < 0)
  {
    operator delete(v512);
  }

  if (v516 < 0)
  {
    operator delete(v515);
  }

  if (v518 < 0)
  {
    operator delete(v517);
  }

  if (v521 < 0)
  {
    operator delete(v520);
  }

  if (v523 < 0)
  {
    operator delete(v522);
  }

  if (v526 < 0)
  {
    operator delete(v525);
  }

  if (v528 < 0)
  {
    operator delete(v527);
  }

  if (v531 < 0)
  {
    operator delete(v530);
  }

  if (v533 < 0)
  {
    operator delete(v532);
  }

  if (v536 < 0)
  {
    operator delete(v535);
  }

  if (v538 < 0)
  {
    operator delete(v537);
  }

  if (v541 < 0)
  {
    operator delete(v540);
  }

  if (v543 < 0)
  {
    operator delete(v542);
  }

  if (v546 < 0)
  {
    operator delete(v545);
  }

  if (v548 < 0)
  {
    operator delete(v547);
  }

  if (v551 < 0)
  {
    operator delete(v550);
  }

  if (v553 < 0)
  {
    operator delete(v552);
  }

  if (v556 < 0)
  {
    operator delete(v555);
  }

  if (v558 < 0)
  {
    operator delete(v557);
  }

  if (v561 < 0)
  {
    operator delete(v560);
  }

  if (v563 < 0)
  {
    operator delete(v562);
  }

  if (v566 < 0)
  {
    operator delete(v565);
  }

  if (v568 < 0)
  {
    operator delete(v567);
  }

  if (v571 < 0)
  {
    operator delete(v570);
  }

  if (v573 < 0)
  {
    operator delete(v572);
  }

  if (v576 < 0)
  {
    operator delete(v575);
  }

  if (v578 < 0)
  {
    operator delete(v577);
  }

  if (v581 < 0)
  {
    operator delete(v580);
  }

  if (v583 < 0)
  {
    operator delete(v582);
  }

  if (v586 < 0)
  {
    operator delete(v585);
  }

  if (v588 < 0)
  {
    operator delete(v587);
  }

  if (v591 < 0)
  {
    operator delete(v590);
  }

  if (v593 < 0)
  {
    operator delete(v592);
  }

  if (v596 < 0)
  {
    operator delete(v595);
  }

  if (v598 < 0)
  {
    operator delete(v597);
  }

  if (v601 < 0)
  {
    operator delete(v600);
  }

  if (v603 < 0)
  {
    operator delete(v602);
  }

  if (v606 < 0)
  {
    operator delete(v605);
  }

  if (v608 < 0)
  {
    operator delete(v607);
  }

  if (v611 < 0)
  {
    operator delete(v610);
  }

  if (v613 < 0)
  {
    operator delete(v612);
  }

  if (v616 < 0)
  {
    operator delete(v615);
  }

  if (v618 < 0)
  {
    operator delete(v617);
  }

  if (v621 < 0)
  {
    operator delete(v620);
  }

  if (v623 < 0)
  {
    operator delete(v622);
  }

  if (v626 < 0)
  {
    operator delete(v625);
  }

  if (v628 < 0)
  {
    operator delete(v627);
  }

  if (v631 < 0)
  {
    operator delete(v630);
  }

  if (v633 < 0)
  {
    operator delete(v632);
  }

  if (v636 < 0)
  {
    operator delete(v635);
  }

  if (v638 < 0)
  {
    operator delete(v637);
  }

  if (v641 < 0)
  {
    operator delete(v640);
  }

  if (v643 < 0)
  {
    operator delete(v642);
  }

  if (v646 < 0)
  {
    operator delete(v645);
  }

  if (v648 < 0)
  {
    operator delete(v647);
  }

  if (v651 < 0)
  {
    operator delete(v650);
  }

  if (v653 < 0)
  {
    operator delete(v652);
  }

  if (v656 < 0)
  {
    operator delete(v655);
  }

  if (v658 < 0)
  {
    operator delete(v657);
  }

  if (v661 < 0)
  {
    operator delete(v660);
  }

  if (v663 < 0)
  {
    operator delete(v662);
  }

  if (v666 < 0)
  {
    operator delete(v665);
  }

  if (v668 < 0)
  {
    operator delete(v667);
  }

  if (v671 < 0)
  {
    operator delete(v670);
  }

  if (v673 < 0)
  {
    operator delete(v672);
  }

  if (v676 < 0)
  {
    operator delete(v675);
  }

  if (v678 < 0)
  {
    operator delete(v677);
  }

  if (v681 < 0)
  {
    operator delete(v680);
  }

  if (v683 < 0)
  {
    operator delete(v682);
  }

  if (v686 < 0)
  {
    operator delete(v685);
  }

  if (v688 < 0)
  {
    operator delete(v687);
  }

  if (v691 < 0)
  {
    operator delete(v690);
  }

  if (v693 < 0)
  {
    operator delete(v692);
  }

  if (v696 < 0)
  {
    operator delete(v695);
  }

  if (v698 < 0)
  {
    operator delete(v697);
  }

  if (v701 < 0)
  {
    operator delete(v700);
  }

  if (v703 < 0)
  {
    operator delete(v702);
  }

  if (v706 < 0)
  {
    operator delete(v705);
  }

  if (v708 < 0)
  {
    operator delete(v707);
  }

  if (v711 < 0)
  {
    operator delete(v710);
  }

  if (v713 < 0)
  {
    operator delete(v712);
  }

  if (v716 < 0)
  {
    operator delete(v715);
  }

  if (v718 < 0)
  {
    operator delete(v717);
  }

  if (v721 < 0)
  {
    operator delete(v720);
  }

  if (v723 < 0)
  {
    operator delete(v722);
  }

  if (v726 < 0)
  {
    operator delete(v725);
  }

  if (v728 < 0)
  {
    operator delete(v727);
  }

  if (v731 < 0)
  {
    operator delete(v730);
  }

  if (v733 < 0)
  {
    operator delete(v732);
  }

  if (v736 < 0)
  {
    operator delete(v735);
  }

  if (v738 < 0)
  {
    operator delete(v737);
  }

  if (v741 < 0)
  {
    operator delete(v740);
  }

  if (v743 < 0)
  {
    operator delete(v742);
  }

  if (v746 < 0)
  {
    operator delete(v745);
  }

  if (v748 < 0)
  {
    operator delete(v747);
  }

  if (v751 < 0)
  {
    operator delete(v750);
  }

  if (v753 < 0)
  {
    operator delete(v752);
  }

  if (v756 < 0)
  {
    operator delete(v755);
  }

  if (v758 < 0)
  {
    operator delete(v757);
  }

  if (v761 < 0)
  {
    operator delete(v760);
  }

  if (v763 < 0)
  {
    operator delete(v762);
  }

  if (v766 < 0)
  {
    operator delete(v765);
  }

  if (v768 < 0)
  {
    operator delete(v767);
  }

  if (v771 < 0)
  {
    operator delete(v770);
  }

  if (v773 < 0)
  {
    operator delete(v772);
  }

  if (v776 < 0)
  {
    operator delete(v775);
  }

  if (v778 < 0)
  {
    operator delete(v777);
  }

  if (v781 < 0)
  {
    operator delete(v780);
  }

  if (v783 < 0)
  {
    operator delete(v782);
  }

  if (v786 < 0)
  {
    operator delete(v785);
  }

  if (v788 < 0)
  {
    operator delete(v787);
  }

  if (v791 < 0)
  {
    operator delete(v790);
  }

  if (v793 < 0)
  {
    operator delete(v792);
  }

  if (v796 < 0)
  {
    operator delete(v795);
  }

  if (v798 < 0)
  {
    operator delete(v797);
  }

  if (v801 < 0)
  {
    operator delete(v800);
  }

  if (v803 < 0)
  {
    operator delete(v802);
  }

  if (v806 < 0)
  {
    operator delete(v805);
  }

  if (v808 < 0)
  {
    operator delete(v807);
  }

  if (v811 < 0)
  {
    operator delete(v810);
  }

  if (v813 < 0)
  {
    operator delete(v812);
  }

  if (v816 < 0)
  {
    operator delete(v815);
  }

  if (v818 < 0)
  {
    operator delete(v817);
  }

  if (v821 < 0)
  {
    operator delete(v820);
  }

  if (v823 < 0)
  {
    operator delete(v822);
  }

  if (v826 < 0)
  {
    operator delete(v825);
  }

  if (v828 < 0)
  {
    operator delete(v827);
  }

  if (v831 < 0)
  {
    operator delete(v830);
  }

  if (v833 < 0)
  {
    operator delete(v832);
  }

  if (v836 < 0)
  {
    operator delete(v835);
  }

  if (v838 < 0)
  {
    operator delete(v837);
  }

  if (v841 < 0)
  {
    operator delete(v840);
  }

  if (v843 < 0)
  {
    operator delete(v842);
  }

  if (v846 < 0)
  {
    operator delete(v845);
  }

  if (v848 < 0)
  {
    operator delete(v847);
  }

  if (v851 < 0)
  {
    operator delete(v850);
  }

  if (v853 < 0)
  {
    operator delete(v852);
  }

  if (v856 < 0)
  {
    operator delete(v855);
  }

  if (v858 < 0)
  {
    operator delete(v857);
  }

  if (v861 < 0)
  {
    operator delete(v860);
  }

  if (v863 < 0)
  {
    operator delete(v862);
  }

  if (v866 < 0)
  {
    operator delete(v865);
  }

  if (v868 < 0)
  {
    operator delete(v867);
  }

  if (v871 < 0)
  {
    operator delete(v870);
  }

  if (v873 < 0)
  {
    operator delete(v872);
  }

  if (v876 < 0)
  {
    operator delete(v875);
  }

  if (v878 < 0)
  {
    operator delete(v877);
  }

  if (v881 < 0)
  {
    operator delete(v880);
  }

  if (v883 < 0)
  {
    operator delete(v882);
  }

  if (v886 < 0)
  {
    operator delete(v885);
  }

  if (v888 < 0)
  {
    operator delete(v887);
  }

  if (v891 < 0)
  {
    operator delete(v890);
  }

  if (v893 < 0)
  {
    operator delete(v892);
  }

  if (v896 < 0)
  {
    operator delete(v895);
  }

  if (v898 < 0)
  {
    operator delete(v897);
  }

  if (v901 < 0)
  {
    operator delete(v900);
  }

  if (v903 < 0)
  {
    operator delete(v902);
  }

  if (v906 < 0)
  {
    operator delete(v905);
  }

  if (v908 < 0)
  {
    operator delete(v907);
  }

  if (v911 < 0)
  {
    operator delete(v910);
  }

  if (v913 < 0)
  {
    operator delete(v912);
  }

  if (v916 < 0)
  {
    operator delete(v915);
  }

  if (v918 < 0)
  {
    operator delete(v917);
  }

  if (v921 < 0)
  {
    operator delete(v920);
  }

  if (v923 < 0)
  {
    operator delete(v922);
  }

  if (v926 < 0)
  {
    operator delete(v925);
  }

  if (v928 < 0)
  {
    operator delete(v927);
  }

  if (v931 < 0)
  {
    operator delete(v930);
  }

  if (v933 < 0)
  {
    operator delete(v932);
  }

  if (v936 < 0)
  {
    operator delete(v935);
  }

  if (v938 < 0)
  {
    operator delete(v937);
  }

  if (v941 < 0)
  {
    operator delete(v940);
  }

  if (v943 < 0)
  {
    operator delete(v942);
  }

  if (v946 < 0)
  {
    operator delete(v945);
  }

  if (v948 < 0)
  {
    operator delete(v947);
  }

  if (v951 < 0)
  {
    operator delete(v950);
  }

  if (v953 < 0)
  {
    operator delete(v952);
  }

  if (v956 < 0)
  {
    operator delete(v955);
  }

  if (v958 < 0)
  {
    operator delete(v957);
  }

  if (v961 < 0)
  {
    operator delete(v960);
  }

  if (v963 < 0)
  {
    operator delete(v962);
  }

  if (v966 < 0)
  {
    operator delete(v965);
  }

  if (v968 < 0)
  {
    operator delete(v967);
  }

  if (v971 < 0)
  {
    operator delete(v970);
  }

  if (v973 < 0)
  {
    operator delete(v972);
  }

  if (v976 < 0)
  {
    operator delete(v975);
  }

  if (v978 < 0)
  {
    operator delete(v977);
  }

  if (v981 < 0)
  {
    operator delete(v980);
  }

  if (v983 < 0)
  {
    operator delete(v982);
  }

  if (v986 < 0)
  {
    operator delete(v985);
  }

  if (v988 < 0)
  {
    operator delete(v987);
  }

  if (v991 < 0)
  {
    operator delete(v990);
  }

  if (v993 < 0)
  {
    operator delete(v992);
  }

  if (v996 < 0)
  {
    operator delete(v995);
  }

  if (v998 < 0)
  {
    operator delete(v997);
  }

  if (v1001 < 0)
  {
    operator delete(v1000);
  }

  if (v1003 < 0)
  {
    operator delete(v1002);
  }

  if (v1006 < 0)
  {
    operator delete(v1005);
  }

  if (v1008 < 0)
  {
    operator delete(v1007);
  }

  if (v1011 < 0)
  {
    operator delete(v1010);
  }

  if (v1013 < 0)
  {
    operator delete(v1012);
  }

  if (v1016 < 0)
  {
    operator delete(v1015);
  }

  if (v1018 < 0)
  {
    operator delete(v1017);
  }

  if (v1021 < 0)
  {
    operator delete(v1020);
  }

  if (v1023 < 0)
  {
    operator delete(v1022);
  }

  if (v1026 < 0)
  {
    operator delete(v1025);
  }

  if (v1028 < 0)
  {
    operator delete(v1027);
  }

  if (v1031 < 0)
  {
    operator delete(v1030);
  }

  if (v1033 < 0)
  {
    operator delete(v1032);
  }

  if (v1036 < 0)
  {
    operator delete(v1035);
  }

  if (v1038 < 0)
  {
    operator delete(v1037);
  }

  if (v1041 < 0)
  {
    operator delete(v1040);
  }

  if (v1043 < 0)
  {
    operator delete(v1042);
  }

  if (v1046 < 0)
  {
    operator delete(v1045);
  }

  if (v1048 < 0)
  {
    operator delete(v1047);
  }

  if (v1051 < 0)
  {
    operator delete(v1050);
  }

  if (v1053 < 0)
  {
    operator delete(v1052);
  }

  if (v1056 < 0)
  {
    operator delete(v1055);
  }

  if (v1058 < 0)
  {
    operator delete(v1057);
  }

  if (v1061 < 0)
  {
    operator delete(v1060);
  }

  if (v1063 < 0)
  {
    operator delete(v1062);
  }

  if (v1066 < 0)
  {
    operator delete(v1065);
  }

  if (v1068 < 0)
  {
    operator delete(v1067);
  }

  if (v1071 < 0)
  {
    operator delete(v1070);
  }

  if (v1073 < 0)
  {
    operator delete(v1072);
  }

  if (v1076 < 0)
  {
    operator delete(v1075);
  }

  if (v1078 < 0)
  {
    operator delete(v1077);
  }

  if (v1081 < 0)
  {
    operator delete(v1080);
  }

  if (v1083 < 0)
  {
    operator delete(v1082);
  }

  if (v1086 < 0)
  {
    operator delete(v1085);
  }

  if (v1088 < 0)
  {
    operator delete(v1087);
  }

  if (v1091 < 0)
  {
    operator delete(v1090);
  }

  if (v1093 < 0)
  {
    operator delete(v1092);
  }

  if (v1096 < 0)
  {
    operator delete(v1095);
  }

  if (v1098 < 0)
  {
    operator delete(v1097);
  }

  if (v1101 < 0)
  {
    operator delete(v1100);
  }

  if (v1103 < 0)
  {
    operator delete(v1102);
  }

  if (v1106 < 0)
  {
    operator delete(v1105);
  }

  if (v1108 < 0)
  {
    operator delete(v1107);
  }

  if (v1111 < 0)
  {
    operator delete(v1110);
  }

  if (v1113 < 0)
  {
    operator delete(v1112);
  }

  if (v1116 < 0)
  {
    operator delete(v1115);
  }

  if (v1118 < 0)
  {
    operator delete(v1117);
  }

  if (v1121 < 0)
  {
    operator delete(v1120);
  }

  if (v1123 < 0)
  {
    operator delete(v1122);
  }

  if (v1126 < 0)
  {
    operator delete(v1125);
  }

  if (v1128 < 0)
  {
    operator delete(v1127);
  }

  if (v1131 < 0)
  {
    operator delete(v1130);
  }

  if (v1133 < 0)
  {
    operator delete(v1132);
  }

  if (v1136 < 0)
  {
    operator delete(v1135);
  }

  if (v1138 < 0)
  {
    operator delete(v1137);
  }

  if (v1141 < 0)
  {
    operator delete(v1140);
  }

  if (v1143 < 0)
  {
    operator delete(v1142);
  }

  if (v1146 < 0)
  {
    operator delete(v1145);
  }

  if (v1148 < 0)
  {
    operator delete(v1147);
  }

  if (v1151 < 0)
  {
    operator delete(v1150);
  }

  if (v1153 < 0)
  {
    operator delete(v1152);
  }

  if (v1156 < 0)
  {
    operator delete(v1155);
  }

  if (v1158 < 0)
  {
    operator delete(v1157);
  }

  if (v1161 < 0)
  {
    operator delete(v1160);
  }

  if (v1163 < 0)
  {
    operator delete(v1162);
  }

  if (v1166 < 0)
  {
    operator delete(v1165);
  }

  if (v1168 < 0)
  {
    operator delete(v1167);
  }

  if (v1171 < 0)
  {
    operator delete(v1170);
  }

  if (v1173 < 0)
  {
    operator delete(v1172);
  }

  if (v1176 < 0)
  {
    operator delete(v1175);
  }

  if (v1178 < 0)
  {
    operator delete(v1177);
  }

  if (v1181 < 0)
  {
    operator delete(v1180);
  }

  if (v1183 < 0)
  {
    operator delete(v1182);
  }

  if (v1186 < 0)
  {
    operator delete(v1185);
  }

  if (v1188 < 0)
  {
    operator delete(v1187);
  }

  if (v1191 < 0)
  {
    operator delete(v1190);
  }

  if (v1193 < 0)
  {
    operator delete(v1192);
  }

  if (v1196 < 0)
  {
    operator delete(v1195);
  }

  if (v1198 < 0)
  {
    operator delete(v1197);
  }

  if (v1201 < 0)
  {
    operator delete(v1200);
  }

  if (v1203 < 0)
  {
    operator delete(v1202);
  }

  if (v1206 < 0)
  {
    operator delete(v1205);
  }

  if (v1208 < 0)
  {
    operator delete(v1207);
  }

  if (v1211 < 0)
  {
    operator delete(v1210);
  }

  if (v1213 < 0)
  {
    operator delete(v1212);
  }

  if (v1216 < 0)
  {
    operator delete(v1215);
  }

  if (v1218 < 0)
  {
    operator delete(v1217);
  }

  if (v1221 < 0)
  {
    operator delete(v1220);
  }

  if (v1223 < 0)
  {
    operator delete(v1222);
  }

  if (v1226 < 0)
  {
    operator delete(v1225);
  }

  if (v1228 < 0)
  {
    operator delete(v1227);
  }

  if (v1231 < 0)
  {
    operator delete(v1230);
  }

  if (v1233 < 0)
  {
    operator delete(v1232);
  }

  if (v1236 < 0)
  {
    operator delete(v1235);
  }

  if (v1238 < 0)
  {
    operator delete(v1237);
  }

  if (v1241 < 0)
  {
    operator delete(v1240);
  }

  if (v1243 < 0)
  {
    operator delete(v1242);
  }

  if (v1246 < 0)
  {
    operator delete(v1245);
  }
}