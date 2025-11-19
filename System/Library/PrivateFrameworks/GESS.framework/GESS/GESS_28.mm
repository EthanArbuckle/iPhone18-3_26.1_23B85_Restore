void sub_24BEBD360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC98C0(va);
  _Unwind_Resume(a1);
}

void sub_24BEBD374(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = **a1;
  v9 = (*a1)[1];
  v10 = (v9 - v8) >> 2;
  if (v10 > a3)
  {
    v11 = v10 + a3;
    if ((v11 & 0x80000000) == 0)
    {
      if ((*a1)[6] || !*(*a2 + 48))
      {
        if (a3 < 0)
        {
          LODWORD(a3) = v11;
        }

        memset(v21, 0, 24);
        sub_24BCC9A1C(v21, v8, v9, (v9 - v8) >> 2);
        *(v21[0] + a3) = *(*a2 + 48) != 0;
        sub_24BD4D2C4(a1, a2, a3, v21, a4, a5);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BD4D730(exception, "[take] Cannot do a non-empty take from an array with zero elements.");
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }
  }

  sub_24BCE1268(v21);
  v14 = sub_24BC95264(v21, "[take] Received invalid axis ", 29);
  v15 = MEMORY[0x24C2543C0](v14, a3);
  v16 = sub_24BC95264(v15, " for array with ", 16);
  v17 = MEMORY[0x24C2543E0](v16, ((*a1)[1] - **a1) >> 2);
  sub_24BC95264(v17, " dimensions.", 12);
  v18 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v18, &v20);
  v18->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v18, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEBD8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a25);
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

void sub_24BEBD998(const void ***a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = -1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v8, __p, 1uLL);
  sub_24BEA4500(a1, __p, a3, a4, v10);
  sub_24BEBD374(v10, a2, 0, a3, a4);
}

void sub_24BEBDA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_24BE7F218(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEBDA80(const void ***a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const void ***a6@<X8>)
{
  v9 = (*a1)[1] - **a1;
  if ((v9 >> 2) <= a3 || (v10 = (v9 >> 2) + a3, (v10 & 0x80000000) != 0))
  {
    sub_24BCE1268(&v30);
    v18 = sub_24BC95264(&v30, "[take] Received invalid axis ", 29);
    v19 = MEMORY[0x24C2543C0](v18, a3);
    v20 = sub_24BC95264(v19, " for array with ", 16);
    v21 = MEMORY[0x24C2543E0](v20, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v21, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v29);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (!(*a1)[6])
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(v23, "[take] Cannot do a non-empty take from an array with zero elements.");
    __cxa_throw(v23, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (a3 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = v10;
  }

  LODWORD(v29.__r_.__value_.__l.__data_) = 0;
  sub_24BD0E524(&v30, v9 >> 2);
  v15 = *a1;
  memset(&v29, 0, sizeof(v29));
  sub_24BCC9A1C(&v29, *v15, v15[1], (v15[1] - *v15) >> 2);
  v16 = v30;
  *(v30 + v14) = a2;
  v17 = v29.__r_.__value_.__r.__words[0];
  *(v29.__r_.__value_.__r.__words[0] + 4 * v14) = a2 + 1;
  v26 = v16;
  v27 = v31;
  v31 = 0uLL;
  __p = v17;
  v25 = *&v29.__r_.__value_.__r.__words[1];
  v30 = 0;
  memset(&v29, 0, sizeof(v29));
  sub_24BEA8020(a1, &v26, &__p, a4, a5, v28);
  sub_24BEA7154(v28, v14, a4, a5, a6);
  sub_24BE7F218(v28);
  if (__p)
  {
    operator delete(__p);
  }

  if (v26)
  {
    operator delete(v26);
  }

  if (v29.__r_.__value_.__r.__words[0])
  {
    v29.__r_.__value_.__l.__size_ = v29.__r_.__value_.__r.__words[0];
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (v30)
  {
    *&v31 = v30;
    operator delete(v30);
  }
}

void sub_24BEBDCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a23);
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

void sub_24BEBDD94(const void ***a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void ***a5@<X8>)
{
  v10 = -1;
  v12 = 0;
  v13 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v10, &__p, 1uLL);
  sub_24BEA4500(a1, &__p, a3, a4, v14);
  sub_24BEBDA80(v14, a2, 0, a3, a4, a5);
  sub_24BE7F218(v14);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_24BEBDE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_24BE7F218(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEBDE7C(uint64_t **a1, __int128 *a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = (*a1)[1] - **a1;
  v7 = v6 >> 2;
  if ((v6 >> 2) > a3)
  {
    if (*(*a2 + 8) - **a2 == v6)
    {
      memset(&v38, 0, sizeof(v38));
      LODWORD(v39) = 1;
      sub_24BD0E524(&v37, v6 >> 2);
      if ((*a1)[1] == **a1)
      {
        v17 = 0;
      }

      else
      {
        v12 = 0;
        do
        {
          if ((v7 & (a3 >> 31)) + a3 != v12)
          {
            v13 = sub_24BD1EEAC(a1, v12);
            *(v37 + v12) = v13;
            v14 = sub_24BD1EEAC(a1, v12);
            v15 = sub_24BF02A98(a4, a5);
            sub_24BEA3040(0x400000007, v15, v16 | 0x100000000, v35, 0.0, v14, 1.0);
          }

          sub_24BCC3A64(&v38, a2);
          ++v12;
          v17 = ((*a1)[1] - **a1) >> 2;
        }

        while (v17 > v12);
      }

      sub_24BC94F74(&v39, v17);
      if (v39 != v40)
      {
        v18 = 0;
        v19 = (v40 - v39 - 4) >> 2;
        v20 = vdupq_n_s64(v19);
        v21 = (v19 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v22 = v39 + 8;
        do
        {
          v23 = vdupq_n_s64(v18);
          v24 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(v23, xmmword_24BFBC5B0)));
          if (vuzp1_s16(v24, *v20.i8).u8[0])
          {
            *(v22 - 2) = v18;
          }

          if (vuzp1_s16(v24, *&v20).i8[2])
          {
            *(v22 - 1) = v18 + 1;
          }

          if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, vorrq_s8(v23, xmmword_24BFBC5E0)))).i32[1])
          {
            *v22 = v18 + 2;
            v22[1] = v18 + 3;
          }

          v18 += 4;
          v22 += 4;
        }

        while (v21 != v18);
      }

      v25 = ((*a1)[1] - **a1) >> 2;
      LODWORD(v35[0]) = (*a1)[6] != 0;
      sub_24BD0E524(v36, v25);
      sub_24BEBC9A8(a1, &v38, &v39, v36, a4, a5);
    }

    sub_24BCE1268(&v39);
    v30 = sub_24BC95264(&v39, "[take_along_axis] Indices of dimension ", 39);
    v31 = MEMORY[0x24C2543E0](v30, (*(*a2 + 8) - **a2) >> 2);
    v32 = sub_24BC95264(v31, " does not match array of dimension ", 35);
    v33 = MEMORY[0x24C2543E0](v32, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v33, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v38);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(&v39);
  v26 = sub_24BC95264(&v39, "[take_along_axis] Received invalid axis ", 40);
  v27 = sub_24BC95264(v26, " for array with ", 16);
  v28 = MEMORY[0x24C2543E0](v27, ((*a1)[1] - **a1) >> 2);
  sub_24BC95264(v28, " dimensions.", 12);
  v29 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v29, &v38);
  v29->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v29, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEBE454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if ((v38 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a36);
      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v37);
  goto LABEL_6;
}

void sub_24BEBE594(uint64_t **a1, __int128 *a2, uint64_t **a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = (*a1)[1] - **a1;
  v8 = v7 >> 2;
  if ((v7 >> 2) > a4)
  {
    if (*(*a2 + 8) - **a2 == v7)
    {
      memset(&v44, 0, sizeof(v44));
      LODWORD(v45[0]) = 1;
      sub_24BD0E524(&v43, v7 >> 2);
      if ((*a1)[1] != **a1)
      {
        v13 = 0;
        do
        {
          if ((v8 & (a4 >> 31)) + a4 != v13)
          {
            v14 = sub_24BD1EEAC(a1, v13);
            *(v43 + v13) = v14;
            v15 = sub_24BD1EEAC(a1, v13);
            v16 = sub_24BF02A98(a5, a6);
            sub_24BEA3040(0x400000007, v16, v17 | 0x100000000, &v41, 0.0, v15, 1.0);
          }

          sub_24BCC3A64(&v44, a2);
          ++v13;
        }

        while (v13 < ((*a1)[1] - **a1) >> 2);
      }

      sub_24BEA4DE0(a3, *a2, a5, a6, v40);
      sub_24BEA3B14(v40, *(*a1 + 14), a5, a6, &v42);
      sub_24BE7F218(v40);
      v45[1] = 0;
      v46 = 0;
      v45[0] = 0;
      sub_24BCC9A1C(v45, *v42, *(v42 + 8), (*(v42 + 8) - *v42) >> 2);
      v18 = (((*a1)[1] - **a1) >> 2) + ((v45[1] - v45[0]) >> 2);
      LODWORD(v41) = 1;
      sub_24BD7B3FC(v45, v18, &v41);
      *v38 = *v45;
      v39 = v46;
      v45[0] = 0;
      v45[1] = 0;
      v46 = 0;
      sub_24BEA4500(&v42, v38, a5, a6, &v41);
      v19 = v41;
      v41 = 0uLL;
      v20 = *(&v42 + 1);
      v42 = v19;
      if (v20)
      {
        sub_24BC9EC78(v20);
      }

      sub_24BE7F218(&v41);
      if (v38[0])
      {
        v38[1] = v38[0];
        operator delete(v38[0]);
      }

      if (v45[0])
      {
        v45[1] = v45[0];
        operator delete(v45[0]);
      }

      sub_24BC94F74(v45, ((*a1)[1] - **a1) >> 2);
      if (v45[0] != v45[1])
      {
        v21 = 0;
        v22 = (v45[1] - v45[0] - 4) >> 2;
        v23 = vdupq_n_s64(v22);
        v24 = (v22 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v25 = v45[0] + 8;
        do
        {
          v26 = vdupq_n_s64(v21);
          v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_24BFBC5B0)));
          if (vuzp1_s16(v27, *v23.i8).u8[0])
          {
            *(v25 - 2) = v21;
          }

          if (vuzp1_s16(v27, *&v23).i8[2])
          {
            *(v25 - 1) = v21 + 1;
          }

          if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_24BFBC5E0)))).i32[1])
          {
            *v25 = v21 + 2;
            v25[1] = v21 + 3;
          }

          v21 += 4;
          v25 += 4;
        }

        while (v24 != v21);
      }

      sub_24BEBECE0(a1, &v44, &v42, v45, 4, a5, a6);
    }

    sub_24BCE1268(v45);
    v32 = sub_24BC95264(v45, "[put_along_axis] Indices of dimension ", 38);
    v33 = MEMORY[0x24C2543E0](v32, (*(*a2 + 8) - **a2) >> 2);
    v34 = sub_24BC95264(v33, " does not match array of dimension ", 35);
    v35 = MEMORY[0x24C2543E0](v34, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v35, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v44);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(v45);
  v28 = sub_24BC95264(v45, "[put_along_axis] Received invalid axis ", 39);
  v29 = sub_24BC95264(v28, " for array with ", 16);
  v30 = MEMORY[0x24C2543E0](v29, ((*a1)[1] - **a1) >> 2);
  sub_24BC95264(v30, " dimensions.", 12);
  v31 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v31, &v44);
  v31->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v31, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEBEBB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33)
{
  if (a31 < 0)
  {
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v33);
  goto LABEL_6;
}

void sub_24BEBECE0(uint64_t **a1, uint64_t ***a2, uint64_t **a3, int **a4, int a5, uint64_t a6, uint64_t a7)
{
  v90 = a5;
  v10 = *a2;
  v9 = a2[1];
  if ((v9 - *a2) >> 4 <= (((*a1)[1] - **a1) >> 2))
  {
    while (v10 != v9)
    {
      if (!*(*v10 + 14))
      {
        exception = __cxa_allocate_exception(8uLL);
        *exception = "[scatter] Boolean indices not supported.";
        __cxa_throw(exception, MEMORY[0x277D82740], 0);
      }

      v10 += 2;
    }

    sub_24BECDF4C(&v85, *a4, a4[1]);
    if (v85.__r_.__value_.__r.__words[2] == a4[1] - *a4)
    {
      if (!v85.__r_.__value_.__r.__words[2])
      {
        goto LABEL_14;
      }

      if ((*(v85.__r_.__value_.__r.__words[0] + 28) & 0x80000000) != 0)
      {
        goto LABEL_55;
      }

      size = v85.__r_.__value_.__l.__size_;
      if (v85.__r_.__value_.__l.__size_)
      {
        do
        {
          v17 = size;
          size = *(size + 8);
        }

        while (size);
      }

      else
      {
        p_size = &v85.__r_.__value_.__l.__size_;
        do
        {
          v17 = p_size[2];
          v19 = *v17 == p_size;
          p_size = v17;
        }

        while (v19);
      }

      if (*(v17 + 28) >= (((*a1)[1] - **a1) >> 2))
      {
LABEL_55:
        v55 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v55, "[scatter] Axes don't match array dimensions.");
      }

      else
      {
LABEL_14:
        if (v85.__r_.__value_.__r.__words[2] == (a2[1] - *a2) >> 4)
        {
          sub_24BEA97F0(a2, v15, 0, &v82);
          v79 = 0;
          v80 = 0;
          v81 = 0;
          if (v82 == v83 || &v79 == *v82)
          {
            v20 = 0;
            v21 = 0;
          }

          else
          {
            sub_24BCA2A30(&v79, **v82, (*v82)[1], ((*v82)[1] - **v82) >> 2);
            v20 = v79;
            v21 = v80;
          }

          v23 = **a1;
          v22 = (*a1)[1];
          if (((v21 - v20) >> 2) + ((v22 - v23) >> 2) == ((*a3)[1] - **a3) >> 2)
          {
            if (v21 != v20)
            {
              v24 = 0;
              do
              {
                v25 = sub_24BD1EEAC(a3, v24);
                if (v25 != *(v79 + v24))
                {
                  sub_24BCE1268(&v86);
                  v45 = sub_24BC95264(&v86, "[scatter] Update shape ", 23);
                  v46 = sub_24BF02DB8(v45, *a3);
                  v47 = sub_24BC95264(v46, " is not valid for broadcasted index shape ", 42);
                  v48 = sub_24BF02DB8(v47, &v79);
                  sub_24BC95264(v48, ".", 1);
                  v49 = __cxa_allocate_exception(0x10uLL);
                  std::stringbuf::str();
                  std::logic_error::logic_error(v49, &v78);
                  v49->__vftable = (MEMORY[0x277D828F8] + 16);
                  __cxa_throw(v49, &unk_285F94708, MEMORY[0x277D82610]);
                }

                ++v24;
              }

              while (v24 < (v80 - v79) >> 2);
              v23 = **a1;
              v22 = (*a1)[1];
            }

            if (v22 != v23)
            {
              v26 = 0;
              do
              {
                v27 = sub_24BD1EEAC(a3, v26 + ((v80 - v79) >> 2));
                if (v27 > sub_24BD1EEAC(a1, v26))
                {
                  sub_24BCE1268(&v86);
                  v50 = sub_24BC95264(&v86, "[scatter] Updates with shape ", 29);
                  v51 = sub_24BF02DB8(v50, *a3);
                  v52 = sub_24BC95264(v51, " are too large for array with shape ", 36);
                  v53 = sub_24BF02DB8(v52, *a1);
                  sub_24BC95264(v53, ".", 1);
                  v54 = __cxa_allocate_exception(0x10uLL);
                  std::stringbuf::str();
                  std::logic_error::logic_error(v54, &v78);
                  v54->__vftable = (MEMORY[0x277D828F8] + 16);
                  __cxa_throw(v54, &unk_285F94708, MEMORY[0x277D82610]);
                }

                ++v26;
              }

              while (v26 < ((*a1)[1] - **a1) >> 2);
            }

            v28 = sub_24BF02AE4(a2);
            v76 = v28;
            v77 = BYTE4(v28);
            if (!sub_24BE80D54(&v76, &dword_24BFF086C))
            {
              v30 = v83;
              v29 = v82;
              if (v82 != v83)
              {
                do
                {
                  v31 = v29[1];
                  v75[0] = *v29;
                  v75[1] = v31;
                  if (v31)
                  {
                    atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
                  }

                  sub_24BEA3B14(v75, v76, a6, a7, &v86);
                  v32 = v86;
                  v86 = 0uLL;
                  v33 = v29[1];
                  *v29 = v32;
                  if (v33)
                  {
                    sub_24BC9EC78(v33);
                  }

                  sub_24BE7F218(&v86);
                  sub_24BE7F218(v75);
                  v29 += 2;
                }

                while (v29 != v30);
              }

              *&v86 = sub_24BF02A98(a6, a7);
              DWORD2(v86) = v34;
              v78.__r_.__value_.__r.__words[0] = 1;
              if (!sub_24BE80C50(&v86 + 1, &v78) || *(*a1 + 60) << 32 != 0x800000000)
              {
                sub_24BEBD224(&v82, v82, a1);
                v35 = a3[1];
                v74[0] = *a3;
                v74[1] = v35;
                if (v35)
                {
                  atomic_fetch_add_explicit(v35 + 1, 1uLL, memory_order_relaxed);
                }

                sub_24BEA3B14(v74, *(*a1 + 14), a6, a7, &v78);
                v36 = v83;
                if (v83 >= v84)
                {
                  v38 = (v83 - v82) >> 4;
                  if ((v38 + 1) >> 60)
                  {
                    sub_24BC8E01C();
                  }

                  v39 = (v84 - v82) >> 3;
                  if (v39 <= v38 + 1)
                  {
                    v39 = v38 + 1;
                  }

                  if (v84 - v82 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v40 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v40 = v39;
                  }

                  v89 = &v82;
                  if (v40)
                  {
                    sub_24BCB53E8(&v82, v40);
                  }

                  *&v86 = 0;
                  *(&v86 + 1) = 16 * v38;
                  v88 = 0;
                  **(&v86 + 1) = *&v78.__r_.__value_.__l.__data_;
                  *&v78.__r_.__value_.__l.__data_ = 0uLL;
                  v87 = 16 * v38 + 16;
                  sub_24BCC9818(&v82, &v86);
                  v37 = v83;
                  sub_24BCC98C0(&v86);
                }

                else
                {
                  *v83 = *&v78.__r_.__value_.__l.__data_;
                  v37 = v36 + 16;
                  *&v78.__r_.__value_.__l.__data_ = 0uLL;
                }

                v83 = v37;
                sub_24BE7F218(&v78);
                sub_24BE7F218(v74);
                v41 = *a1;
                memset(__p, 0, sizeof(__p));
                sub_24BCC9A1C(__p, *v41, v41[1], (v41[1] - *v41) >> 2);
                v42 = (*a1)[7];
                v78.__r_.__value_.__r.__words[0] = sub_24BF02A98(a6, a7);
                LODWORD(v78.__r_.__value_.__r.__words[1]) = v43;
                sub_24BED1818();
              }

              sub_24BCE1268(&v86);
              v69 = sub_24BC95264(&v86, "[scatter] GPU scatter does not yet support ", 43);
              v70 = (*a1)[7];
              LODWORD(v78.__r_.__value_.__l.__data_) = v70;
              v78.__r_.__value_.__s.__data_[4] = BYTE4(v70);
              v71 = sub_24BF031F4(v69, &v78);
              sub_24BC95264(v71, " for the input or updates.", 26);
              v72 = __cxa_allocate_exception(0x10uLL);
              std::stringbuf::str();
              std::logic_error::logic_error(v72, &v78);
              v72->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(v72, &unk_285F94708, MEMORY[0x277D82610]);
            }

            v68 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v68, "[scatter] Got indices with invalid dtype. Indices must be integral.");
            v68->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v68, &unk_285F94708, MEMORY[0x277D82610]);
          }

          sub_24BCE1268(&v86);
          v61 = sub_24BC95264(&v86, "[scatter] Updates with ", 23);
          v62 = MEMORY[0x24C2543E0](v61, ((*a3)[1] - **a3) >> 2);
          v63 = sub_24BC95264(v62, " dimensions does not match the sum of the array (", 49);
          v64 = MEMORY[0x24C2543E0](v63, ((*a1)[1] - **a1) >> 2);
          v65 = sub_24BC95264(v64, ") and indices (", 15);
          v66 = MEMORY[0x24C2543E0](v65, (v80 - v79) >> 2);
          sub_24BC95264(v66, ") dimensions.", 13);
          v67 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(v67, &v78);
          v67->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v67, &unk_285F94708, MEMORY[0x277D82610]);
        }

        v55 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v55, "[scatter] Number of index arrays does not match number of axes.");
      }
    }

    else
    {
      v55 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v55, "[scatter] Repeat axes not allowed in scatter.");
    }

    v55->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v55, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(&v86);
  v56 = sub_24BC95264(&v86, "[scatter] Too many index arrays. Got ", 37);
  v57 = MEMORY[0x24C2543E0](v56, (a2[1] - *a2) >> 4);
  v58 = sub_24BC95264(v57, " index arrays for input with ", 29);
  v59 = MEMORY[0x24C2543E0](v58, ((*a1)[1] - **a1) >> 2);
  sub_24BC95264(v59, " dimensions.", 12);
  v60 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v60, &v85);
  v60->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v60, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEBF70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char *a29, char *a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, void *a35, void *a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v43 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a41);
      if (a29)
      {
        a30 = a29;
        operator delete(a29);
      }

      a29 = &a32;
      sub_24BCC961C(&a29);
      sub_24BCC8A84(&a35, a36);
      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v42);
  goto LABEL_6;
}

void sub_24BEBF910(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  v9 = v6;
  v10 = BYTE4(v6);
  sub_24BE9E788(&v9);
  v7 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v7, v7[1], (v7[1] - *v7) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEBFAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_24BCC961C(&a19);
  sub_24BE7F218(&a20);
  sub_24BE7F218(&a9);
  if (a15)
  {
    sub_24BC9EC78(a15);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_24BEBFB50@<X0>(uint64_t **result@<X0>, unsigned int **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v6 = result;
  v27 = *MEMORY[0x277D85DE8];
  v8 = *result;
  if ((*result)[6])
  {
    if (a2[1] - *a2 != 4 || ((v12 = **a2, v12 != -1) ? (v13 = (v8[1] - *v8) >> 2 == v12 + 1) : (v13 = 1), !v13))
    {
      v16 = result[1];
      *&v26 = *result;
      *(&v26 + 1) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
      }

      if (a3)
      {
        v17 = result[1];
        v23[0] = *result;
        v23[1] = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
        }

        sub_24BEA3B14(v23, 10, a4, a5, &v24);
        v18 = v24;
        v24 = 0uLL;
        v19 = *(&v26 + 1);
        v26 = v18;
        if (v19)
        {
          sub_24BC9EC78(v19);
        }

        sub_24BE7F218(&v24);
        sub_24BE7F218(v23);
      }

      sub_24BEB38AC(&v26, a2, 1, a4, a5, v22);
      sub_24BEB6798(v22, a4, a5);
    }

    v14 = v8[7];
    LODWORD(v26) = v14;
    BYTE4(v26) = BYTE4(v14);
    sub_24BE9E788(&v26);
    v15 = *v6;
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, *v15, v15[1], (v15[1] - *v15) >> 2);
    sub_24BF02A98(a4, a5);
    operator new();
  }

  v20 = result[1];
  *a6 = v8;
  a6[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BEBFEEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, void *__p, uint64_t a27)
{
  sub_24BCC961C(&a17);
  sub_24BE7F218(v27 - 112);
  sub_24BE7F218(&a19);
  if (a25)
  {
    sub_24BC9EC78(a25);
  }

  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEBFFC4(uint64_t **a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  sub_24BC94F74(&__p, ((*a1)[1] - **a1) >> 2);
  if (__p != v18)
  {
    v10 = 0;
    v11 = (v18 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5E0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  sub_24BEBFB50(a1, &__p, a2, a3, a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_24BEC0104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEC0120(const void ***a1, const void ***a2, uint64_t a3, uint64_t a4)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = (*a1)[7];
  LODWORD(v24) = v8;
  BYTE4(v24) = BYTE4(v8);
  v9 = (*a2)[7];
  LODWORD(v21) = v9;
  BYTE4(v21) = BYTE4(v9);
  v10 = sub_24BE80C80(&v24, &v21);
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v20, v10, a3, a4, &v24);
  v12 = a2[1];
  v19[0] = *a2;
  v19[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v19, v10, a3, a4, &v25);
  v21 = 0uLL;
  v22 = 0;
  sub_24BCC9984(&v21, &v24, v26, 2uLL);
  for (i = 16; i != -16; i -= 16)
  {
    sub_24BE7F218(&v24 + i);
  }

  sub_24BE7F218(v19);
  sub_24BE7F218(v20);
  v14 = **a1;
  v15 = (*a1)[1] - v14;
  v16 = **a2;
  if (v15 != (*a2)[1] - v16 || memcmp(v14, v16, v15))
  {
    sub_24BEA97F0(&v21, a3, a4, &v24);
    sub_24BCC97B8(&v21);
    v21 = v24;
    v22 = v25;
    v23 = &v24;
    v25 = 0;
    v24 = 0uLL;
    sub_24BCC961C(&v23);
  }

  v17 = *v21;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v17, v17[1], (v17[1] - *v17) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEC03FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25)
{
  a25 = &a21;
  sub_24BCC961C(&a25);
  _Unwind_Resume(a1);
}

void sub_24BEC04C0(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[33] = *MEMORY[0x277D85DE8];
  v8 = **a1;
  v9 = (*a1)[1];
  if (((v9 - v8) >> 2) <= a2 || -((v9 - v8) >> 2) > a2)
  {
    sub_24BCE1268(v21);
    v14 = sub_24BC95264(v21, "[cumsum] Axis ", 14);
    v15 = MEMORY[0x24C2543C0](v14, a2);
    v16 = sub_24BC95264(v15, " is out of bounds for array with ", 33);
    v17 = MEMORY[0x24C2543E0](v16, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v17, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v20);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v13 = (*a1)[7] & 0xFFFFFFFFFFLL;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, v8, v9, (v9 - v8) >> 2);
  sub_24BF02A98(a5, a6);
  operator new();
}

void sub_24BEC0774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a24);
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

void sub_24BEC0810(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[33] = *MEMORY[0x277D85DE8];
  v8 = **a1;
  v9 = (*a1)[1];
  if (((v9 - v8) >> 2) <= a2 || -((v9 - v8) >> 2) > a2)
  {
    sub_24BCE1268(v21);
    v14 = sub_24BC95264(v21, "[cumprod] Axis ", 15);
    v15 = MEMORY[0x24C2543C0](v14, a2);
    v16 = sub_24BC95264(v15, " is out of bounds for array with ", 33);
    v17 = MEMORY[0x24C2543E0](v16, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v17, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v20);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, v8, v9, (v9 - v8) >> 2);
  v13 = (*a1)[7];
  sub_24BF02A98(a5, a6);
  operator new();
}

void sub_24BEC0AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a24);
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

void sub_24BEC0B50(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[33] = *MEMORY[0x277D85DE8];
  v8 = **a1;
  v9 = (*a1)[1];
  if (((v9 - v8) >> 2) <= a2 || -((v9 - v8) >> 2) > a2)
  {
    sub_24BCE1268(v21);
    v14 = sub_24BC95264(v21, "[cummax] Axis ", 14);
    v15 = MEMORY[0x24C2543C0](v14, a2);
    v16 = sub_24BC95264(v15, " is out of bounds for array with ", 33);
    v17 = MEMORY[0x24C2543E0](v16, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v17, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v20);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, v8, v9, (v9 - v8) >> 2);
  v13 = (*a1)[7];
  sub_24BF02A98(a5, a6);
  operator new();
}

void sub_24BEC0DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a24);
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

void sub_24BEC0E8C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[33] = *MEMORY[0x277D85DE8];
  v8 = **a1;
  v9 = (*a1)[1];
  if (((v9 - v8) >> 2) <= a2 || -((v9 - v8) >> 2) > a2)
  {
    sub_24BCE1268(v21);
    v14 = sub_24BC95264(v21, "[cummin] Axis ", 14);
    v15 = MEMORY[0x24C2543C0](v14, a2);
    v16 = sub_24BC95264(v15, " is out of bounds for array with ", 33);
    v17 = MEMORY[0x24C2543E0](v16, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v17, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v20);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, v8, v9, (v9 - v8) >> 2);
  v13 = (*a1)[7];
  sub_24BF02A98(a5, a6);
  operator new();
}

void sub_24BEC1130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a24);
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

void sub_24BEC11CC(uint64_t **a1, uint64_t **a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a3;
  memset(v22, 0, sizeof(v22));
  sub_24BCC9910(v22, &v21, v22, 1uLL);
  v19 = a4;
  memset(v20, 0, sizeof(v20));
  sub_24BCC9910(v20, &v19, v20, 1uLL);
  v17 = a5;
  memset(v18, 0, sizeof(v18));
  sub_24BCC9910(v18, &v17, v18, 1uLL);
  v15 = 1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v15, __p, 1uLL);
  sub_24BEC138C(a1, a2, v22, v20, v18, __p, a6, 0, a7, a8);
}

void sub_24BEC1328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v23 = *(v21 - 88);
  if (v23)
  {
    *(v21 - 80) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEC138C(uint64_t **a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v15 = a1[1];
  v23[0] = *a1;
  v23[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  v16 = a2[1];
  v22[0] = *a2;
  v22[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  }

  memset(v21, 0, sizeof(v21));
  sub_24BCC9A1C(v21, *a3, a3[1], (a3[1] - *a3) >> 2);
  memset(v20, 0, sizeof(v20));
  sub_24BCC9A1C(v20, *a4, a4[1], (a4[1] - *a4) >> 2);
  memset(v19, 0, sizeof(v19));
  sub_24BCC9A1C(v19, *a4, a4[1], (a4[1] - *a4) >> 2);
  memset(v18, 0, sizeof(v18));
  sub_24BCC9A1C(v18, *a5, a5[1], (a5[1] - *a5) >> 2);
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *a6, a6[1], (a6[1] - *a6) >> 2);
  sub_24BEC1D74(v23, v22, v21, v20, v19, v18, __p, a7, a8, a9, a10);
}

void sub_24BEC1528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  sub_24BE7F218(v22 - 80);
  sub_24BE7F218(v22 - 64);
  _Unwind_Resume(a1);
}

void sub_24BEC15BC(uint64_t **a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x277D85DE8];
  v22 = *a3;
  memset(v18, 0, sizeof(v18));
  sub_24BCC9910(v18, &v22, &v23, 2uLL);
  v21 = *a4;
  memset(v17, 0, sizeof(v17));
  sub_24BCC9910(v17, &v21, &v22, 2uLL);
  v20 = *a5;
  memset(v16, 0, sizeof(v16));
  sub_24BCC9910(v16, &v20, &v21, 2uLL);
  v19 = 0x100000001;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v19, &v20, 2uLL);
  sub_24BEC138C(a1, a2, v18, v17, v16, __p, a6, 0, a7, a8);
}

void sub_24BEC1750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEC17BC(uint64_t **a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v30[4] = *MEMORY[0x277D85DE8];
  v28 = *a3;
  v29 = *(a3 + 2);
  memset(v18, 0, sizeof(v18));
  sub_24BCC9910(v18, &v28, v30, 3uLL);
  v25 = *a4;
  v26 = *(a4 + 2);
  memset(v17, 0, sizeof(v17));
  sub_24BCC9910(v17, &v25, &v27, 3uLL);
  v22 = *a5;
  v23 = *(a5 + 2);
  memset(v16, 0, sizeof(v16));
  sub_24BCC9910(v16, &v22, &v24, 3uLL);
  v19 = 0x100000001;
  v20 = 1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v19, &v21, 3uLL);
  sub_24BEC138C(a1, a2, v18, v17, v16, __p, a6, 0, a7, a8);
}

void sub_24BEC1978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEC19E4(uint64_t **a1, uint64_t **a2, void *a3, uint64_t *a4, void *a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  sub_24BC94F74(&v48, (a4[1] - *a4) >> 2);
  sub_24BC94F74(&v46, (a4[1] - *a4) >> 2);
  if (a4[1] != *a4)
  {
    v12 = 0;
    v31 = a2;
    do
    {
      v13 = *(*a5 + 4 * v12);
      v14 = sub_24BD1EEAC(a2, v12 + 1);
      *(v48 + 4 * v12) = (v14 - 1) * v13 - *(*a4 + 4 * v12);
      v15 = sub_24BD1EEAC(a1, v12 + 1);
      v16 = *(*a3 + 4 * v12);
      v17 = *(*a4 + 4 * v12);
      v32 = *(*a5 + 4 * v12);
      v18 = sub_24BD1EEAC(a2, v12 + 1);
      v19 = a5;
      v20 = a3;
      v21 = *(*a3 + 4 * v12);
      v22 = sub_24BD1EEAC(a1, v12 + 1);
      v23 = *a4;
      v24 = a4[1];
      *(v46 + 4 * v12) = v16 * (v15 - 1) - 2 * v17 + (v18 - 1) * v32 + v21 - v21 * v22 + *(*a4 + 4 * v12);
      ++v12;
      a3 = v20;
      a5 = v19;
      a2 = v31;
    }

    while (v12 < (v24 - v23) >> 2);
  }

  v25 = a1[1];
  v45[0] = *a1;
  v45[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(v25 + 1, 1uLL, memory_order_relaxed);
  }

  v26 = a2[1];
  v44[0] = *a2;
  v44[1] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
  }

  v27 = (a3[1] - *a3) >> 2;
  v42 = 1;
  sub_24BD0E524(&v43, v27);
  *v40 = v48;
  v41 = v49;
  v49 = 0;
  v48 = 0uLL;
  *v38 = v46;
  v39 = v47;
  v46 = 0uLL;
  v47 = 0;
  *v36 = *a5;
  v37 = a5[2];
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  *__p = *a3;
  v35 = a3[2];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_24BEC1D74(v45, v44, &v43, v40, v38, v36, __p, a6, 1, a7, a8);
}

void sub_24BEC1CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a31)
  {
    operator delete(a31);
  }

  v34 = *(v32 - 200);
  if (v34)
  {
    *(v32 - 192) = v34;
    operator delete(v34);
  }

  sub_24BE7F218(v32 - 176);
  sub_24BE7F218(v32 - 160);
  v35 = *(v32 - 144);
  if (v35)
  {
    *(v32 - 136) = v35;
    operator delete(v35);
  }

  v36 = *(v32 - 112);
  if (v36)
  {
    *(v32 - 104) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

void sub_24BEC1D74(uint64_t **a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v213[33] = *MEMORY[0x277D85DE8];
  v211 = a8;
  v210 = a9;
  v17 = (*a1)[1] - **a1;
  if (a8 == 1 || ((v17 >> 2) - 3) < 2)
  {
    v18 = v17 >> 2;
    if ((v17 >> 2) - 6 > 0xFFFFFFFC)
    {
      v19 = (*a1)[7];
      LODWORD(v213[0]) = v19;
      BYTE4(v213[0]) = BYTE4(v19);
      if (sub_24BE80D54(v213, dword_24BFEEC80))
      {
        v20 = (v18 - 2);
        v21 = (*a1)[1] - **a1;
        if (v21 >> 2 == v18)
        {
          if ((*a2)[1] - **a2 == v21)
          {
            v22 = v18 - 1;
            if (!(sub_24BD1EEAC(a1, v22) % a8))
            {
              if (a8 >= 2)
              {
                v23 = **a2;
                if ((*a2)[1] == v23)
                {
                  sub_24BC923C0();
                }

                if (*v23 % a8)
                {
                  sub_24BCE1268(v213);
                  v182 = sub_24BC95264(v213, "[conv] If groups > 1, the output channels must be divisible by the number", 73);
                  v183 = sub_24BC95264(v182, " of groups. Got ", 16);
                  v184 = **a2;
                  if ((*a2)[1] == v184)
                  {
                    sub_24BC923C0();
                  }

                  v195 = MEMORY[0x24C2543C0](v183, *v184);
                  v196 = sub_24BC95264(v195, " output channels and ", 21);
                  v197 = MEMORY[0x24C2543C0](v196, a8);
                  sub_24BC95264(v197, " groups.", 8);
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::stringbuf::str();
                  std::logic_error::logic_error(exception, &v212);
                  exception->__vftable = (MEMORY[0x277D828F8] + 16);
                  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
                }
              }

              v24 = sub_24BD1EEAC(a1, v22);
              if (v24 == sub_24BD1EEAC(a2, v22) * a8)
              {
                v25 = (*a1)[7];
                LODWORD(v213[0]) = v25;
                BYTE4(v213[0]) = BYTE4(v25);
                v26 = (*a2)[7];
                LODWORD(v212.__r_.__value_.__l.__data_) = v26;
                v212.__r_.__value_.__s.__data_[4] = BYTE4(v26);
                v27 = sub_24BE80C80(v213, &v212);
                v28 = a1[1];
                v209[0] = *a1;
                v209[1] = v28;
                if (v28)
                {
                  atomic_fetch_add_explicit(v28 + 1, 1uLL, memory_order_relaxed);
                }

                sub_24BEA3B14(v209, v27, a10, a11, v213);
                v29 = *v213;
                v213[0] = 0;
                v213[1] = 0;
                v30 = a1[1];
                *a1 = v29;
                if (v30)
                {
                  sub_24BC9EC78(v30);
                }

                sub_24BE7F218(v213);
                sub_24BE7F218(v209);
                v31 = a2[1];
                v208[0] = *a2;
                v208[1] = v31;
                if (v31)
                {
                  atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
                }

                sub_24BEA3B14(v208, v27, a10, a11, v213);
                v32 = *v213;
                v213[0] = 0;
                v213[1] = 0;
                v33 = a2[1];
                *a2 = v32;
                if (v33)
                {
                  sub_24BC9EC78(v33);
                }

                sub_24BE7F218(v213);
                sub_24BE7F218(v208);
                v34 = *a3;
                v35 = a3[1];
                if (v35 - *a3 <= 4)
                {
                  if (v35 == v34)
                  {
                    v36 = 1;
                  }

                  else
                  {
                    v36 = *v34;
                  }

                  LODWORD(v212.__r_.__value_.__l.__data_) = v36;
                  sub_24BD0E524(v213, v20);
                  v37 = *a3;
                  if (*a3)
                  {
                    a3[1] = v37;
                    operator delete(v37);
                    *a3 = 0;
                    a3[1] = 0;
                    a3[2] = 0;
                  }

                  *a3 = *v213;
                  a3[2] = v213[2];
                }

                v38 = *a4;
                v39 = a4[1];
                if (v39 - *a4 <= 4)
                {
                  if (v39 == v38)
                  {
                    v40 = 0;
                  }

                  else
                  {
                    v40 = *v38;
                  }

                  LODWORD(v212.__r_.__value_.__l.__data_) = v40;
                  sub_24BD0E524(v213, v20);
                  v41 = *a4;
                  if (*a4)
                  {
                    a4[1] = v41;
                    operator delete(v41);
                    *a4 = 0;
                    a4[1] = 0;
                    a4[2] = 0;
                  }

                  *a4 = *v213;
                  a4[2] = v213[2];
                }

                v42 = *a5;
                v43 = a5[1];
                if (v43 - *a5 <= 4)
                {
                  if (v43 == v42)
                  {
                    v44 = 0;
                  }

                  else
                  {
                    v44 = *v42;
                  }

                  LODWORD(v212.__r_.__value_.__l.__data_) = v44;
                  sub_24BD0E524(v213, v20);
                  v45 = *a5;
                  if (*a5)
                  {
                    a5[1] = v45;
                    operator delete(v45);
                    *a5 = 0;
                    a5[1] = 0;
                    a5[2] = 0;
                  }

                  *a5 = *v213;
                  a5[2] = v213[2];
                }

                v46 = *a6;
                v47 = a6[1];
                if (v47 - *a6 <= 4)
                {
                  if (v47 == v46)
                  {
                    v48 = 1;
                  }

                  else
                  {
                    v48 = *v46;
                  }

                  LODWORD(v212.__r_.__value_.__l.__data_) = v48;
                  sub_24BD0E524(v213, v20);
                  v49 = *a6;
                  if (*a6)
                  {
                    a6[1] = v49;
                    operator delete(v49);
                    *a6 = 0;
                    a6[1] = 0;
                    a6[2] = 0;
                  }

                  *a6 = *v213;
                  a6[2] = v213[2];
                }

                v50 = *a7;
                v51 = a7[1];
                if (v51 - *a7 <= 4)
                {
                  if (v51 == v50)
                  {
                    v52 = 1;
                  }

                  else
                  {
                    v52 = *v50;
                  }

                  LODWORD(v212.__r_.__value_.__l.__data_) = v52;
                  sub_24BD0E524(v213, v20);
                  v53 = *a7;
                  if (*a7)
                  {
                    a7[1] = v53;
                    operator delete(v53);
                    *a7 = 0;
                    a7[1] = 0;
                    a7[2] = 0;
                  }

                  *a7 = *v213;
                  a7[2] = v213[2];
                }

                v54 = *a4;
                v55 = a4[1];
                if (*a4 == v55)
                {
                  LOBYTE(v56) = 0;
                }

                else
                {
                  LOBYTE(v56) = 0;
                  do
                  {
                    v57 = *v54++;
                    v56 = v56 & 1 | (v57 >> 31);
                  }

                  while (v54 != v55);
                }

                for (i = *a5; i != a5[1]; ++i)
                {
                  v59 = *i;
                  v56 = v56 & 1 | (v59 >> 31);
                }

                if (v56)
                {
                  v60 = ((*a1)[1] - **a1) >> 2;
                  LODWORD(v212.__r_.__value_.__l.__data_) = 0;
                  sub_24BD0E524(v213, v60);
                  v61 = *a1;
                  memset(&v212, 0, sizeof(v212));
                  sub_24BCC9A1C(&v212, *v61, v61[1], (v61[1] - *v61) >> 2);
                  v62 = v213[0];
                  v63 = v212.__r_.__value_.__r.__words[0];
                  if (v20 >= 1)
                  {
                    v64 = *a4;
                    v65 = v213[0] + 4;
                    v66 = *a5;
                    v67 = (v212.__r_.__value_.__r.__words[0] + 4);
                    do
                    {
                      if ((*v64 & 0x80000000) != 0)
                      {
                        *v65 -= *v64;
                        *v64 = 0;
                      }

                      if ((*v66 & 0x80000000) != 0)
                      {
                        *v67 += *v66;
                        *v66 = 0;
                      }

                      ++v64;
                      ++v66;
                      ++v65;
                      ++v67;
                      --v20;
                    }

                    while (v20);
                  }

                  v206 = v62;
                  v207 = *&v213[1];
                  memset(v213, 0, 24);
                  __p = v63;
                  v205 = *&v212.__r_.__value_.__r.__words[1];
                  memset(&v212, 0, sizeof(v212));
                  sub_24BEA8020(a1, &v206, &__p, a10, a11, v203);
                  v68 = *v203;
                  v203[0] = 0;
                  v203[1] = 0;
                  v69 = a1[1];
                  *a1 = v68;
                  if (v69)
                  {
                    sub_24BC9EC78(v69);
                  }

                  sub_24BE7F218(v203);
                  if (__p)
                  {
                    *&v205 = __p;
                    operator delete(__p);
                  }

                  if (v206)
                  {
                    *&v207 = v206;
                    operator delete(v206);
                  }

                  if (v212.__r_.__value_.__r.__words[0])
                  {
                    v212.__r_.__value_.__l.__size_ = v212.__r_.__value_.__r.__words[0];
                    operator delete(v212.__r_.__value_.__l.__data_);
                  }

                  if (v213[0])
                  {
                    v213[1] = v213[0];
                    operator delete(v213[0]);
                  }
                }

                v70 = *a1;
                v71 = **a1;
                v72 = *v71;
                v199 = *a2;
                v73 = ***a2;
                sub_24BC94F74(v203, ((*a1)[1] - v71) >> 2);
                v74 = v203[0];
                *v203[0] = v72;
                v75 = (v70[1] - *v70) >> 2;
                v76 = (v75 - 2);
                v77 = *a3;
                v78 = a3[1] - *a3;
                if (v76 == v78 >> 2)
                {
                  v79 = *a4;
                  if (a4[1] - *a4 == v78)
                  {
                    v80 = *a5;
                    if (a5[1] - *a5 == v78)
                    {
                      v81 = *a6;
                      if (a6[1] - *a6 == v78)
                      {
                        v82 = *a7;
                        if (a7[1] - *a7 == v78)
                        {
                          v83 = v75 - 1;
                          if ((v75 - 1) < 2)
                          {
                            v83 = 1;
                          }

                          else
                          {
                            v84 = 0;
                            v85 = v75 - 2;
                            v86 = *v70 + 4;
                            v87 = *v199 + 4;
                            do
                            {
                              v88 = *(v81 + 4 * v84);
                              if (v88 <= 0)
                              {
                                sub_24BCE1268(v213);
                                v105 = sub_24BC95264(v213, "[conv] Kernel dilation sizes must be positive.", 46);
                                v106 = sub_24BC95264(v105, " Got kernel dilation ", 21);
                                v107 = sub_24BF02DB8(v106, a6);
                                sub_24BC95264(v107, ".", 1);
                                v108 = __cxa_allocate_exception(0x10uLL);
                                std::stringbuf::str();
                                std::logic_error::logic_error(v108, &v212);
                                v108->__vftable = (MEMORY[0x277D828F8] + 16);
                                __cxa_throw(v108, &unk_285F94708, MEMORY[0x277D82610]);
                              }

                              v89 = *(v82 + 4 * v84);
                              if (v89 <= 0)
                              {
                                sub_24BCE1268(v213);
                                v109 = sub_24BC95264(v213, "[conv] Input dilation sizes must be positive.", 45);
                                v110 = sub_24BC95264(v109, " Got input dilation ", 20);
                                v111 = sub_24BF02DB8(v110, a7);
                                sub_24BC95264(v111, ".", 1);
                                v112 = __cxa_allocate_exception(0x10uLL);
                                std::stringbuf::str();
                                std::logic_error::logic_error(v112, &v212);
                                v112->__vftable = (MEMORY[0x277D828F8] + 16);
                                __cxa_throw(v112, &unk_285F94708, MEMORY[0x277D82610]);
                              }

                              v90 = *(v79 + 4 * v84);
                              if (v90 < 0 || (v91 = *(v80 + 4 * v84), v91 < 0))
                              {
                                sub_24BCE1268(v213);
                                v95 = sub_24BC95264(v213, "[conv] Padding sizes must be non-negative.", 42);
                                v96 = sub_24BC95264(v95, " Got padding ", 13);
                                v97 = sub_24BF02DB8(v96, a4);
                                v98 = sub_24BC95264(v97, " | ", 3);
                                v99 = sub_24BF02DB8(v98, a5);
                                sub_24BC95264(v99, ".", 1);
                                v100 = __cxa_allocate_exception(0x10uLL);
                                std::stringbuf::str();
                                std::logic_error::logic_error(v100, &v212);
                                v100->__vftable = (MEMORY[0x277D828F8] + 16);
                                __cxa_throw(v100, &unk_285F94708, MEMORY[0x277D82610]);
                              }

                              v92 = *(v77 + 4 * v84);
                              if (v92 <= 0)
                              {
                                sub_24BCE1268(v213);
                                v101 = sub_24BC95264(v213, "[conv] Stride sizes must be positive.", 37);
                                v102 = sub_24BC95264(v101, " Got strides ", 13);
                                v103 = sub_24BF02DB8(v102, a3);
                                sub_24BC95264(v103, ".", 1);
                                v104 = __cxa_allocate_exception(0x10uLL);
                                std::stringbuf::str();
                                std::logic_error::logic_error(v104, &v212);
                                v104->__vftable = (MEMORY[0x277D828F8] + 16);
                                __cxa_throw(v104, &unk_285F94708, MEMORY[0x277D82610]);
                              }

                              v93 = (v91 + v90 + v88 - v88 * *(v87 + 4 * v84) + (*(v86 + 4 * v84) - 1) * v89) / v92;
                              v74[v84 + 1] = v93 + 1;
                              if (v93 < 0)
                              {
                                sub_24BCE1268(v213);
                                v113 = sub_24BC95264(v213, "[conv] Spatial dimensions of input after padding ", 49);
                                v114 = sub_24BC95264(v113, " cannot be smaller than weight spatial dimensions.", 50);
                                v115 = sub_24BC95264(v114, " Got error at axis ", 19);
                                v116 = MEMORY[0x24C2543C0](v115, v84 + 1);
                                v117 = sub_24BC95264(v116, " for input with shape ", 22);
                                v118 = sub_24BF02DB8(v117, v70);
                                v119 = sub_24BC95264(v118, ", padding low ", 14);
                                v120 = sub_24BF02DB8(v119, a4);
                                v121 = sub_24BC95264(v120, ", padding high ", 15);
                                v122 = sub_24BF02DB8(v121, a5);
                                v123 = sub_24BC95264(v122, ", and weight of shape ", 22);
                                v124 = sub_24BF02DB8(v123, v199);
                                sub_24BC95264(v124, ".", 1);
                                v125 = __cxa_allocate_exception(0x10uLL);
                                std::stringbuf::str();
                                std::logic_error::logic_error(v125, &v212);
                                v125->__vftable = (MEMORY[0x277D828F8] + 16);
                                __cxa_throw(v125, &unk_285F94708, MEMORY[0x277D82610]);
                              }

                              ++v84;
                            }

                            while (v85 != v84);
                          }

                          v74[v83] = v73;
                          memset(v202, 0, sizeof(v202));
                          sub_24BCC9A1C(v202, v74, v203[1], (v203[1] - v74) >> 2);
                          v94 = (*a1)[7];
                          sub_24BF02A98(a10, a11);
                          sub_24BED1C4C();
                        }

                        sub_24BCE1268(v213);
                        v177 = sub_24BC95264(v213, "[conv] Invalid input dilation ", 30);
                        v178 = sub_24BF02DB8(v177, a7);
                        v179 = sub_24BC95264(v178, "for ", 4);
                        v180 = MEMORY[0x24C2543C0](v179, v76);
                        sub_24BC95264(v180, "D convolution.", 14);
                        v181 = __cxa_allocate_exception(0x10uLL);
                        std::stringbuf::str();
                        std::logic_error::logic_error(v181, &v212);
                        v181->__vftable = (MEMORY[0x277D828F8] + 16);
                        __cxa_throw(v181, &unk_285F94708, MEMORY[0x277D82610]);
                      }

                      sub_24BCE1268(v213);
                      v172 = sub_24BC95264(v213, "[conv] Invalid kernel dilation ", 31);
                      v173 = sub_24BF02DB8(v172, a6);
                      v174 = sub_24BC95264(v173, "for ", 4);
                      v175 = MEMORY[0x24C2543C0](v174, v76);
                      sub_24BC95264(v175, "D convolution.", 14);
                      v176 = __cxa_allocate_exception(0x10uLL);
                      std::stringbuf::str();
                      std::logic_error::logic_error(v176, &v212);
                      v176->__vftable = (MEMORY[0x277D828F8] + 16);
                      __cxa_throw(v176, &unk_285F94708, MEMORY[0x277D82610]);
                    }
                  }

                  sub_24BCE1268(v213);
                  v126 = sub_24BC95264(v213, "[conv] Invalid padding ", 23);
                  v127 = sub_24BF02DB8(v126, a4);
                  v128 = sub_24BC95264(v127, " | ", 3);
                  v129 = sub_24BF02DB8(v128, a5);
                  v130 = sub_24BC95264(v129, "for ", 4);
                  v131 = MEMORY[0x24C2543C0](v130, v76);
                  sub_24BC95264(v131, "D convolution.", 14);
                  v132 = __cxa_allocate_exception(0x10uLL);
                  std::stringbuf::str();
                  std::logic_error::logic_error(v132, &v212);
                  v132->__vftable = (MEMORY[0x277D828F8] + 16);
                  __cxa_throw(v132, &unk_285F94708, MEMORY[0x277D82610]);
                }

                sub_24BCE1268(v213);
                v167 = sub_24BC95264(v213, "[conv] Invalid strides ", 23);
                v168 = sub_24BF02DB8(v167, a3);
                v169 = sub_24BC95264(v168, " for ", 5);
                v170 = MEMORY[0x24C2543C0](v169, v76);
                sub_24BC95264(v170, "D convolution.", 14);
                v171 = __cxa_allocate_exception(0x10uLL);
                std::stringbuf::str();
                std::logic_error::logic_error(v171, &v212);
                v171->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v171, &unk_285F94708, MEMORY[0x277D82610]);
              }

              sub_24BCE1268(v213);
              if (a8 == 1)
              {
                v161 = sub_24BC95264(v213, "[conv] Expect the input channels in the input", 45);
                v162 = sub_24BC95264(v161, " and weight array to match but got shapes -", 43);
                v163 = sub_24BC95264(v162, " input: ", 8);
                v164 = sub_24BF02DB8(v163, *a1);
                v165 = sub_24BC95264(v164, " and weight: ", 13);
                sub_24BF02DB8(v165, *a2);
              }

              else
              {
                v185 = sub_24BC95264(v213, "Given groups=", 13);
                v186 = MEMORY[0x24C2543C0](v185, a8);
                v187 = sub_24BC95264(v186, " and weights of shape ", 22);
                v188 = sub_24BF02DB8(v187, *a2);
                v189 = sub_24BC95264(v188, ", expected to have ", 19);
                v190 = sub_24BD1EEAC(a2, v22);
                v191 = MEMORY[0x24C2543C0](v189, (v190 * a8));
                v192 = sub_24BC95264(v191, " input channels but got ", 24);
                v193 = sub_24BD1EEAC(a1, v22);
                v194 = MEMORY[0x24C2543C0](v192, v193);
                sub_24BC95264(v194, " input channels instead.", 24);
              }

              v166 = __cxa_allocate_exception(0x10uLL);
              std::stringbuf::str();
              std::logic_error::logic_error(v166, &v212);
              v166->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(v166, &unk_285F94708, MEMORY[0x277D82610]);
            }

            sub_24BCE1268(v213);
            v155 = sub_24BC95264(v213, "[conv] The input channels must be divisible by the number", 57);
            v156 = sub_24BC95264(v155, " of groups. Got input with shape ", 33);
            v157 = sub_24BF02DB8(v156, *a1);
            v158 = sub_24BC95264(v157, " and ", 5);
            v159 = MEMORY[0x24C2543C0](v158, a8);
            sub_24BC95264(v159, " groups.", 8);
            v160 = __cxa_allocate_exception(0x10uLL);
            std::stringbuf::str();
            std::logic_error::logic_error(v160, &v212);
            v160->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v160, &unk_285F94708, MEMORY[0x277D82610]);
          }

          sub_24BCE1268(v213);
          v147 = sub_24BC95264(v213, "[conv] Invalid weight array with ", 33);
          v148 = MEMORY[0x24C2543E0](v147, ((*a2)[1] - **a2) >> 2);
          v149 = sub_24BC95264(v148, " dimensions for ", 16);
          v150 = MEMORY[0x24C2543C0](v149, (v18 - 2));
          v151 = sub_24BC95264(v150, "D convolution.", 14);
          v152 = sub_24BC95264(v151, " Expected an array with ", 24);
          v153 = MEMORY[0x24C2543C0](v152, v18);
          sub_24BC95264(v153, " dimensions following the format [C_out, ..., C_in].", 52);
          v154 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(v154, &v212);
          v154->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v154, &unk_285F94708, MEMORY[0x277D82610]);
        }

        sub_24BCE1268(v213);
        v139 = sub_24BC95264(v213, "[conv] Invalid input array with ", 32);
        v140 = MEMORY[0x24C2543E0](v139, ((*a1)[1] - **a1) >> 2);
        v141 = sub_24BC95264(v140, " dimensions for ", 16);
        v142 = MEMORY[0x24C2543C0](v141, (v18 - 2));
        v143 = sub_24BC95264(v142, "D convolution.", 14);
        v144 = sub_24BC95264(v143, " Expected an array with ", 24);
        v145 = MEMORY[0x24C2543C0](v144, v18);
        sub_24BC95264(v145, " dimensions following the format [N, ..., C_in].", 48);
        v146 = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(v146, &v212);
        v146->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v146, &unk_285F94708, MEMORY[0x277D82610]);
      }

      sub_24BCE1268(v213);
      v134 = sub_24BC95264(v213, "[conv] Invalid input array with type ", 37);
      v135 = (*a1)[7];
      LODWORD(v212.__r_.__value_.__l.__data_) = v135;
      v212.__r_.__value_.__s.__data_[4] = BYTE4(v135);
      v136 = sub_24BF031F4(v134, &v212);
      v137 = sub_24BC95264(v136, ".", 1);
      sub_24BC95264(v137, " Convolution currently only supports floating point types", 57);
      v138 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(v138, &v212);
      v138->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v138, &unk_285F94708, MEMORY[0x277D82610]);
    }

    v133 = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(v133, "[conv] Only works for inputs with 1-3 spatial dimensions. The inputs must be in the format [N, ..., C_in]");
  }

  else
  {
    v133 = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(v133, "[conv] Can only handle groups != 1 in 1D or 2D convolutions.");
  }

  __cxa_throw(v133, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEC334C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  if (a46 < 0)
  {
    operator delete(__p);
    if ((v50 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a48);
      if (a27)
      {
        operator delete(a27);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v50)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v49);
  goto LABEL_6;
}

void sub_24BEC3598(uint64_t **a1, uint64_t **a2, int a3, int a4, int a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v19 = a3;
  memset(v20, 0, sizeof(v20));
  sub_24BCC9910(v20, &v19, v20, 1uLL);
  v17 = a4;
  memset(v18, 0, sizeof(v18));
  sub_24BCC9910(v18, &v17, v18, 1uLL);
  v15 = a5;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v15, __p, 1uLL);
  sub_24BEC19E4(a1, a2, v20, v18, __p, a6, a7, a8);
}

void sub_24BEC36B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEC3704(uint64_t **a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = *a3;
  memset(v17, 0, sizeof(v17));
  sub_24BCC9910(v17, &v20, &v21, 2uLL);
  v19 = *a4;
  memset(v16, 0, sizeof(v16));
  sub_24BCC9910(v16, &v19, &v20, 2uLL);
  v18 = *a5;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v18, &v19, 2uLL);
  sub_24BEC19E4(a1, a2, v17, v16, __p, a6, a7, a8);
}

void sub_24BEC385C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEC38B0(uint64_t **a1, uint64_t **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  *&v26[4] = *MEMORY[0x277D85DE8];
  v24 = *a3;
  v25 = *(a3 + 2);
  memset(v17, 0, sizeof(v17));
  sub_24BCC9910(v17, &v24, v26, 3uLL);
  v21 = *a4;
  v22 = *(a4 + 2);
  memset(v16, 0, sizeof(v16));
  sub_24BCC9910(v16, &v21, &v23, 3uLL);
  v18 = *a5;
  v19 = *(a5 + 2);
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v18, &v20, 3uLL);
  sub_24BEC19E4(a1, a2, v17, v16, __p, a6, a7, a8);
}

void sub_24BEC3A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEC3A74(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v58 = *MEMORY[0x277D85DE8];
  v14 = sub_24BEC42B4("quantized_matmul", 16, a1, a2, a3, a4, a5, a6, a7) >> 32;
  v15 = *a1;
  v16 = **a1;
  v17 = (*a1)[1];
  if ((v17 - v16) >= 9 && ((*a2)[1] - **a2) >= 9)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    sub_24BEA2D98(&v55, v16, v17 - 8, (v17 - 8 - v16) >> 2);
    v18 = **a2;
    v19 = (*a2)[1] - 8;
    memset(&v54, 0, sizeof(v54));
    sub_24BEA2D98(&v54, v18, v19, (v19 - v18) >> 2);
    sub_24BF02B58(&v55, &v54, &__p);
    if (((*a1)[1] - **a1) <= 4)
    {
      sub_24BC923C0();
    }

    LODWORD(v51) = *((*a1)[1] - 8);
    sub_24BC97D60(&__p, &v51);
    v20 = (*a1)[1];
    if (v20 == **a1)
    {
      sub_24BC923C0();
    }

    LODWORD(v51) = *(v20 - 4);
    sub_24BC97D60(&__p, &v51);
    sub_24BEA4DE0(a1, &__p, a9, a10, &v51);
    v21 = v51;
    v51 = 0uLL;
    v22 = a1[1];
    *a1 = v21;
    if (v22)
    {
      sub_24BC9EC78(v22);
    }

    sub_24BE7F218(&v51);
    if (((*a2)[1] - **a2) < 5)
    {
      goto LABEL_26;
    }

    v23 = (*a2)[1];
    v24 = v53;
    *(v53 - 2) = *(v23 - 8);
    *(v24 - 1) = *(v23 - 4);
    sub_24BEA4DE0(a2, &__p, a9, a10, &v51);
    v25 = v51;
    v51 = 0uLL;
    v26 = a2[1];
    *a2 = v25;
    if (v26)
    {
      sub_24BC9EC78(v26);
    }

    sub_24BE7F218(&v51);
    v27 = *(*a3 + 8);
    if (v27 == **a3)
    {
      goto LABEL_26;
    }

    *(v53 - 1) = *(v27 - 4);
    sub_24BEA4DE0(a3, &__p, a9, a10, &v51);
    v28 = v51;
    v51 = 0uLL;
    v29 = *(a3 + 8);
    *a3 = v28;
    if (v29)
    {
      sub_24BC9EC78(v29);
    }

    sub_24BE7F218(&v51);
    v30 = *(*a4 + 8);
    if (v30 == **a4)
    {
LABEL_26:
      sub_24BC923C0();
    }

    *(v53 - 1) = *(v30 - 4);
    sub_24BEA4DE0(a4, &__p, a9, a10, &v51);
    v31 = v51;
    v51 = 0uLL;
    v32 = *(a4 + 8);
    *a4 = v31;
    if (v32)
    {
      sub_24BC9EC78(v32);
    }

    sub_24BE7F218(&v51);
    if (__p)
    {
      v53 = __p;
      operator delete(__p);
    }

    if (v54.__r_.__value_.__r.__words[0])
    {
      v54.__r_.__value_.__l.__size_ = v54.__r_.__value_.__r.__words[0];
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    v15 = *a1;
  }

  v33 = v15[7];
  LODWORD(v55) = v33;
  BYTE4(v55) = BYTE4(v33);
  v34 = *(*a3 + 56);
  LODWORD(v54.__r_.__value_.__l.__data_) = v34;
  v54.__r_.__value_.__s.__data_[4] = BYTE4(v34);
  v35 = sub_24BE80C80(&v55, &v54);
  LODWORD(v55) = v35;
  BYTE4(v55) = BYTE4(v35);
  v36 = *(*a4 + 56);
  LODWORD(v54.__r_.__value_.__l.__data_) = v36;
  v54.__r_.__value_.__s.__data_[4] = BYTE4(v36);
  v37 = sub_24BE80C80(&v55, &v54);
  LODWORD(v51) = v37;
  BYTE4(v51) = BYTE4(v37);
  if (sub_24BE80D54(&v51, dword_24BFEEC80))
  {
    v38 = *a1;
    memset(&v54, 0, sizeof(v54));
    sub_24BCC9A1C(&v54, *v38, v38[1], (v38[1] - *v38) >> 2);
    *(v54.__r_.__value_.__l.__size_ - 4) = v14;
    memset(&v54, 0, sizeof(v54));
    sub_24BF02A98(a9, a10);
    operator new();
  }

  sub_24BCE1268(&v55);
  v39 = sub_24BC95264(&v55, "[quantized_matmul] Only real floating types are supported but ", 62);
  v40 = sub_24BC95264(v39, "the passed types where x.dtype() == ", 36);
  v41 = (*a1)[7];
  LODWORD(v54.__r_.__value_.__l.__data_) = v41;
  v54.__r_.__value_.__s.__data_[4] = BYTE4(v41);
  v42 = sub_24BF031F4(v40, &v54);
  v43 = sub_24BC95264(v42, ", scales.dtype() == ", 20);
  v44 = *(*a3 + 56);
  LODWORD(__p) = v44;
  BYTE4(__p) = BYTE4(v44);
  v45 = sub_24BF031F4(v43, &__p);
  v46 = sub_24BC95264(v45, " and biases.dtype() == ", 23);
  v47 = *(*a4 + 56);
  v49 = v47;
  v50 = BYTE4(v47);
  sub_24BF031F4(v46, &v49);
  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(exception, &v54);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEC4134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((v43 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a41);
      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v42);
  goto LABEL_6;
}

uint64_t sub_24BEC42B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t **a5, uint64_t **a6, char a7, unsigned int a8, unsigned int a9)
{
  v9 = *a4;
  if (*(*a4 + 14) != 3)
  {
    sub_24BCE1268(v82);
    v33 = sub_24BC95264(v82, "[", 1);
    v34 = sub_24BC95264(v33, a1, a2);
    v35 = sub_24BC95264(v34, "] The weight matrix should be uint32 ", 37);
    v36 = sub_24BC95264(v35, "but received ", 13);
    v37 = (*a4)[7];
    LODWORD(v81.__r_.__value_.__l.__data_) = v37;
    v81.__r_.__value_.__s.__data_[4] = BYTE4(v37);
    sub_24BF031F4(v36, &v81);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v81);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v13 = **a5;
  v12 = (*a5)[1];
  v14 = **a6;
  if (v12 - v13 != (*a6)[1] - v14 || memcmp(**a5, v14, v12 - v13))
  {
    sub_24BCE1268(v82);
    v26 = sub_24BC95264(v82, "[", 1);
    v27 = sub_24BC95264(v26, a1, a2);
    v28 = sub_24BC95264(v27, "] Scales and biases should have the same shape. ", 48);
    v29 = sub_24BC95264(v28, "Received scales with shape ", 27);
    v30 = sub_24BF02DB8(v29, *a5);
    v31 = sub_24BC95264(v30, " and biases with ", 17);
    sub_24BF02DB8(v31, *a6);
    v32 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v32, &v81);
    v32->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v32, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v18 = *v9;
  v17 = v9[1];
  v19 = &v17[-*v9];
  if (memcmp(v18, v13, v19 - 8))
  {
    sub_24BCE1268(v82);
    v39 = sub_24BC95264(v82, "[", 1);
    v40 = sub_24BC95264(v39, a1, a2);
    v41 = sub_24BC95264(v40, "] Weight, scales and biases should have the same batch shape. ", 62);
    v42 = sub_24BC95264(v41, "Received weight with shape ", 27);
    v43 = sub_24BF02DB8(v42, *a4);
    v44 = sub_24BC95264(v43, ", scales with ", 14);
    v45 = sub_24BF02DB8(v44, *a5);
    v46 = sub_24BC95264(v45, " and biases with ", 17);
    sub_24BF02DB8(v46, *a6);
    v47 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v47, &v81);
    v47->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v47, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (v17 == v18 || v12 == v13)
  {
    goto LABEL_16;
  }

  v20 = &v18[v19];
  v21 = (32 * *&v18[v19 - 4] / a9);
  if (v21 != *(v12 - 1) * a8)
  {
    sub_24BCE1268(v82);
    v48 = sub_24BC95264(v82, "[", 1);
    v49 = sub_24BC95264(v48, a1, a2);
    v50 = sub_24BC95264(v49, "] The shapes of the weight and scales are ", 42);
    v51 = sub_24BC95264(v50, "incompatible based on bits and group_size. w.shape() == ", 56);
    v52 = sub_24BF02DB8(v51, *a4);
    v53 = sub_24BC95264(v52, " and scales.shape() == ", 23);
    v54 = sub_24BF02DB8(v53, *a5);
    v55 = sub_24BC95264(v54, " with group_size=", 17);
    v56 = MEMORY[0x24C2543C0](v55, a8);
    v57 = sub_24BC95264(v56, " and bits=", 10);
    MEMORY[0x24C2543C0](v57, a9);
    v58 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v58, &v81);
    v58->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v58, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v22 = *(*a3 + 8);
  if (v22 == **a3)
  {
    goto LABEL_16;
  }

  v23 = *(v22 - 4);
  if (a7)
  {
    if (v19 > 4)
    {
      v24 = (32 * *&v18[v19 - 4] / a9);
      v21 = *(v20 - 2);
      goto LABEL_14;
    }

LABEL_16:
    sub_24BC923C0();
  }

  if (v19 <= 4)
  {
    goto LABEL_16;
  }

  v24 = *(v20 - 2);
LABEL_14:
  if (v24 != v23)
  {
    sub_24BCE1268(v82);
    v59 = sub_24BC95264(v82, "[", 1);
    v60 = sub_24BC95264(v59, a1, a2);
    v61 = sub_24BC95264(v60, "] Last dimension of first input with ", 37);
    v62 = sub_24BC95264(v61, "shape (..., ", 12);
    v63 = MEMORY[0x24C2543C0](v62, v23);
    v64 = sub_24BC95264(v63, ") does not match ", 17);
    v65 = sub_24BC95264(v64, "the expanded quantized matrix (", 31);
    v66 = MEMORY[0x24C2543C0](v65, v24);
    v67 = sub_24BC95264(v66, ", ", 2);
    v68 = MEMORY[0x24C2543C0](v67, v21);
    v69 = sub_24BC95264(v68, ") computed from shape ", 22);
    v70 = sub_24BF02DB8(v69, *a4);
    v71 = sub_24BC95264(v70, " with group_size=", 17);
    v72 = MEMORY[0x24C2543C0](v71, a8);
    v73 = sub_24BC95264(v72, ", bits=", 7);
    v74 = MEMORY[0x24C2543C0](v73, a9);
    v75 = sub_24BC95264(v74, " and transpose=", 15);
    *(v75 + *(*v75 - 24) + 8) |= 1u;
    MEMORY[0x24C254390]();
    v76 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v76, &v81);
    v76->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v76, &unk_285F94708, MEMORY[0x277D82610]);
  }

  return v23 | (v21 << 32);
}

void sub_24BEC4920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a20);
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

void sub_24BEC49A4(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11)
{
  v49 = *MEMORY[0x277D85DE8];
  if (*(a5 + 16) & 1) != 0 || (*(a6 + 16))
  {
    v41 = sub_24BEC42B4("gather_qmm", 10, a1, a2, a3, a4, a7, a8, a9);
    LOBYTE(v38[0]) = 0;
    v39 = 0;
    if (*(a5 + 16) == 1)
    {
      v15 = *(a5 + 8);
      v38[0] = *a5;
      v38[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }

      v39 = 1;
    }

    sub_24BEC50EC(v38, a1, a10, a11, &v40);
    if (v39 == 1)
    {
      sub_24BE7F218(v38);
    }

    LOBYTE(v35[0]) = 0;
    v36 = 0;
    if (*(a6 + 16) == 1)
    {
      v16 = *(a6 + 8);
      v35[0] = *a6;
      v35[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v36 = 1;
    }

    sub_24BEC50EC(v35, a2, a10, a11, &v37);
    if (v36 == 1)
    {
      sub_24BE7F218(v35);
    }

    sub_24BF02B58(v40, v37, &v33);
    sub_24BEA4DE0(&v40, &v33, a10, a11, &v48);
    v17 = v48;
    v48 = 0uLL;
    v18 = *(&v40 + 1);
    v40 = v17;
    if (v18)
    {
      sub_24BC9EC78(v18);
    }

    sub_24BE7F218(&v48);
    sub_24BEA4DE0(&v37, &v33, a10, a11, &v48);
    v19 = v48;
    v48 = 0uLL;
    v20 = *(&v37 + 1);
    v37 = v19;
    if (v20)
    {
      sub_24BC9EC78(v20);
    }

    sub_24BE7F218(&v48);
    v31[0] = 0;
    v31[1] = 0;
    v32 = 0;
    sub_24BCC9A1C(v31, v33, v34, (v34 - v33) >> 2);
    if (*(*a1 + 8) - **a1 > 4uLL)
    {
      LODWORD(v48) = *(*(*a1 + 8) - 8);
      sub_24BC97D60(v31, &v48);
      sub_24BC97D60(v31, &v41 + 1);
      v21 = *(*a1 + 56);
      LODWORD(v48) = v21;
      BYTE4(v48) = BYTE4(v21);
      v22 = *(*a3 + 56);
      v46 = v22;
      v47 = BYTE4(v22);
      v23 = sub_24BE80C80(&v48, &v46);
      LODWORD(v48) = v23;
      BYTE4(v48) = BYTE4(v23);
      v24 = *(*a4 + 56);
      v46 = v24;
      v47 = BYTE4(v24);
      sub_24BE80C80(&v48, &v46);
      v31[0] = 0;
      v31[1] = 0;
      v32 = 0;
      sub_24BF02A98(a10, a11);
      operator new();
    }

    sub_24BC923C0();
  }

  v25 = *(a1 + 8);
  v45[0] = *a1;
  v45[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(v25 + 1, 1uLL, memory_order_relaxed);
  }

  v26 = a2[1];
  v44[0] = *a2;
  v44[1] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
  }

  v27 = *(a3 + 8);
  v43[0] = *a3;
  v43[1] = v27;
  if (v27)
  {
    atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = *(a4 + 8);
  v42[0] = *a4;
  v42[1] = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  sub_24BEC3A74(v45, v44, v43, v42, a7, a8, a9, a8, a10, a11);
}

void sub_24BEC4F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, char a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, char a56)
{
  sub_24BE7F218(&a54);
  sub_24BE7F218(&a56);
  sub_24BE7F218(v56 - 248);
  sub_24BE7F218(v56 - 232);
  _Unwind_Resume(a1);
}

uint64_t sub_24BEC50EC@<X0>(uint64_t result@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(result + 16) != 1)
  {
    v9 = *a2;
    v10 = **a2;
    v11 = v9[1] - 8;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    sub_24BEA2D98(&v19, v10, v11, (v11 - v10) >> 2);
    v12 = v19;
    if (v19 == v20)
    {
      v15 = 1.0;
    }

    else
    {
      v13 = 1;
      do
      {
        v14 = *v12++;
        v13 *= v14;
      }

      while (v12 != v20);
      v15 = v13;
    }

    v16 = sub_24BF02A98(a3, a4);
    sub_24BEA3040(0x400000003, v16, v17 | 0x100000000, v18, 0.0, v15, 1.0);
  }

  v6 = *(result + 8);
  *a5 = *result;
  a5[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_24BEC5238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a12);
  if (a14)
  {
    a15 = a14;
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void sub_24BEC527C(uint64_t **a1, uint64_t **a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[tensordot] axis must be greater or equal to 0.");
  }

  else
  {
    v7 = (*a1)[1] - **a1;
    v8 = (*a2)[1];
    if ((v8 - **a2) >> 2 >= (v7 >> 2))
    {
      v9 = v7 >> 2;
    }

    else
    {
      v9 = (v8 - **a2) >> 2;
    }

    if (v9 >= a3)
    {
      __p = 0;
      v40 = 0;
      v41 = 0;
      __src = 0;
      v37 = 0;
      v38 = 0;
      if (a3)
      {
        v10 = 0;
        v11 = -a3;
        do
        {
          v12 = v37;
          if (v37 >= v38)
          {
            v14 = __src;
            v15 = v37 - __src;
            v16 = (v37 - __src) >> 2;
            v17 = v16 + 1;
            if ((v16 + 1) >> 62)
            {
              sub_24BC8E01C();
            }

            v18 = v38 - __src;
            if ((v38 - __src) >> 1 > v17)
            {
              v17 = v18 >> 1;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v19 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            if (v19)
            {
              sub_24BC92E0C(&__src, v19);
            }

            v20 = (4 * v16);
            v21 = &v20[-((v37 - __src) >> 2)];
            *v20 = v10;
            v13 = (v20 + 1);
            memcpy(v21, v14, v15);
            v22 = __src;
            __src = v21;
            v37 = v13;
            v38 = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v37 = v10;
            v13 = v12 + 4;
          }

          v37 = v13;
          v23 = v11 + v10;
          v24 = v40;
          if (v40 >= v41)
          {
            v26 = __p;
            v27 = v40 - __p;
            v28 = (v40 - __p) >> 2;
            v29 = v28 + 1;
            if ((v28 + 1) >> 62)
            {
              sub_24BC8E01C();
            }

            v30 = v41 - __p;
            if ((v41 - __p) >> 1 > v29)
            {
              v29 = v30 >> 1;
            }

            if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v31 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v29;
            }

            if (v31)
            {
              sub_24BC92E0C(&__p, v31);
            }

            *(4 * v28) = v23;
            v25 = 4 * v28 + 4;
            memcpy(0, v26, v27);
            v32 = __p;
            __p = 0;
            v40 = v25;
            v41 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v40 = v23;
            v25 = (v24 + 4);
          }

          v40 = v25;
          ++v10;
        }

        while (v11 + v10);
      }

      sub_24BEC5568(a1, a2, &__p, &__src, a4, a5);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[tensordot] axis must be less than the number of dimensions of a and b.");
  }

  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEC5568(uint64_t **a1, uint64_t **a2, char **a3, int **a4, uint64_t a5, uint64_t a6)
{
  v140[3] = *MEMORY[0x277D85DE8];
  if (a3[1] - *a3 == a4[1] - *a4)
  {
    v13 = *a1;
    v12 = a1[1];
    v140[0] = *a1;
    v140[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    v14 = *a2;
    v15 = a2[1];
    v138 = *a2;
    v139 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    }

    v16 = *a3;
    v17 = a3[1] - *a3;
    if (v17)
    {
      v18 = v17 >> 2;
      v20 = v13;
      v19 = *v13;
      v21 = (v20[1] - v19) >> 2;
      v22 = *a4;
      v23 = a4[1] - *a4;
      if (v18 <= 1)
      {
        v18 = 1;
      }

      v24 = 1;
      do
      {
        v26 = *v16;
        v16 += 4;
        v25 = v26;
        v27 = v21 + v26;
        if ((v26 & 0x80000000) != 0)
        {
          v25 = v27;
        }

        if (v21 <= v25 || !v23)
        {
          goto LABEL_119;
        }

        v28 = *v22;
        v29 = (v14[1] - *v14) >> 2;
        if ((v28 & 0x80000000) != 0)
        {
          v28 += v29;
        }

        if (v29 <= v28)
        {
LABEL_119:
          sub_24BC923C0();
        }

        v30 = *(v19 + 4 * v25);
        if (v30 != *(*v14 + 4 * v28))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "[tensordot] a and b must have the same shape on the contracted axes.");
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
        }

        v24 *= v30;
        --v23;
        ++v22;
        --v18;
      }

      while (v18);
    }

    else
    {
      v21 = (v13[1] - *v13) >> 2;
    }

    LOBYTE(v136[0]) = 0;
    sub_24BC9FEFC(v137, v21);
    v122 = a5;
    v123 = a6;
    v31 = (v138[1] - *v138) >> 2;
    LOBYTE(v133) = 0;
    sub_24BC9FEFC(v136, v31);
    v32 = a3;
    v33 = *a3;
    v34 = a3[1];
    if (v33 != v34)
    {
      v35 = v140[0];
      v36 = v137[0];
      v37 = v33;
      do
      {
        v38 = *v37;
        if (*v37 < 0)
        {
          v38 += (v35[1] - *v35) >> 2;
        }

        *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
        ++v37;
      }

      while (v37 != v34);
    }

    v39 = *a4;
    v40 = a4[1];
    if (*a4 != v40)
    {
      v41 = v138;
      v42 = v136[0];
      do
      {
        v43 = *v39;
        if (*v39 < 0)
        {
          v43 += (v41[1] - *v41) >> 2;
        }

        *(v42 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        ++v39;
      }

      while (v39 != v40);
    }

    v133 = 0;
    v134 = 0;
    v135 = 0;
    __p = 0;
    v131 = 0;
    v132 = 0;
    v128 = 0;
    v129 = 0;
    __src = 0;
    v44 = *a1;
    v45 = **a1;
    v124 = a4;
    if ((*a1)[1] != v45)
    {
      v46 = 0;
      v125 = 1;
      do
      {
        if (((*(v137[0] + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
        {
          v47 = v134;
          if (v134 >= v135)
          {
            v49 = v133;
            v50 = v134 - v133;
            v51 = (v134 - v133) >> 2;
            v52 = v51 + 1;
            if ((v51 + 1) >> 62)
            {
              sub_24BC8E01C();
            }

            v53 = v135 - v133;
            if ((v135 - v133) >> 1 > v52)
            {
              v52 = v53 >> 1;
            }

            v54 = v53 >= 0x7FFFFFFFFFFFFFFCLL;
            v55 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v54)
            {
              v55 = v52;
            }

            if (v55)
            {
              sub_24BC92E0C(&v133, v55);
            }

            v56 = (4 * v51);
            v57 = &v56[-((v134 - v133) >> 2)];
            *v56 = v46;
            v48 = (v56 + 1);
            memcpy(v57, v49, v50);
            v58 = v133;
            v133 = v57;
            v134 = v48;
            v135 = 0;
            if (v58)
            {
              operator delete(v58);
            }
          }

          else
          {
            *v134 = v46;
            v48 = v47 + 4;
          }

          v134 = v48;
          v59 = sub_24BD1EEAC(a1, v46);
          v60 = sub_24BD1EEAC(a1, v46);
          v61 = v128;
          if (v128 >= v129)
          {
            v63 = __src;
            v64 = v128 - __src;
            v65 = (v128 - __src) >> 2;
            v66 = v65 + 1;
            if ((v65 + 1) >> 62)
            {
              sub_24BC8E01C();
            }

            v67 = v129 - __src;
            if ((v129 - __src) >> 1 > v66)
            {
              v66 = v67 >> 1;
            }

            v54 = v67 >= 0x7FFFFFFFFFFFFFFCLL;
            v68 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v54)
            {
              v68 = v66;
            }

            if (v68)
            {
              sub_24BC92E0C(&__src, v68);
            }

            *(4 * v65) = v60;
            v62 = 4 * v65 + 4;
            memcpy(0, v63, v64);
            v69 = __src;
            __src = 0;
            v128 = v62;
            v129 = 0;
            if (v69)
            {
              operator delete(v69);
            }
          }

          else
          {
            *v128 = v60;
            v62 = (v61 + 4);
          }

          v125 *= v59;
          v128 = v62;
          v44 = *a1;
          v45 = **a1;
        }

        ++v46;
      }

      while (v46 < (v44[1] - v45) >> 2);
      v33 = *v32;
      v34 = v32[1];
    }

    if (v33 != v34)
    {
      v70 = v134;
      do
      {
        v71 = *v33;
        if (v70 >= v135)
        {
          v72 = v133;
          v73 = v70 - v133;
          v74 = (v70 - v133) >> 2;
          v75 = v74 + 1;
          if ((v74 + 1) >> 62)
          {
            sub_24BC8E01C();
          }

          v76 = v135 - v133;
          if ((v135 - v133) >> 1 > v75)
          {
            v75 = v76 >> 1;
          }

          if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v77 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v77 = v75;
          }

          if (v77)
          {
            sub_24BC92E0C(&v133, v77);
          }

          v78 = (v70 - v133) >> 2;
          v79 = (4 * v74);
          v80 = (4 * v74 - 4 * v78);
          *v79 = v71;
          v70 = (v79 + 1);
          memcpy(v80, v72, v73);
          v81 = v133;
          v133 = v80;
          v134 = v70;
          v135 = 0;
          if (v81)
          {
            operator delete(v81);
          }
        }

        else
        {
          *v70 = v71;
          v70 += 4;
        }

        v134 = v70;
        ++v33;
      }

      while (v33 != v34);
    }

    v82 = *a4;
    v83 = a4[1];
    if (*v124 != v83)
    {
      v84 = v131;
      do
      {
        v85 = *v82;
        if (v84 >= v132)
        {
          v86 = __p;
          v87 = v84 - __p;
          v88 = (v84 - __p) >> 2;
          v89 = v88 + 1;
          if ((v88 + 1) >> 62)
          {
            sub_24BC8E01C();
          }

          v90 = v132 - __p;
          if ((v132 - __p) >> 1 > v89)
          {
            v89 = v90 >> 1;
          }

          if (v90 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v91 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v91 = v89;
          }

          if (v91)
          {
            sub_24BC92E0C(&__p, v91);
          }

          v92 = (v84 - __p) >> 2;
          v93 = (4 * v88);
          v94 = (4 * v88 - 4 * v92);
          *v93 = v85;
          v84 = (v93 + 1);
          memcpy(v94, v86, v87);
          v95 = __p;
          __p = v94;
          v131 = v84;
          v132 = 0;
          if (v95)
          {
            operator delete(v95);
          }
        }

        else
        {
          *v84 = v85;
          v84 += 4;
        }

        v131 = v84;
        ++v82;
      }

      while (v82 != v83);
    }

    v96 = *a2;
    v97 = **a2;
    if ((*a2)[1] != v97)
    {
      v98 = 0;
      v99 = 1;
      do
      {
        if (((*(v136[0] + ((v98 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
        {
          v100 = v131;
          if (v131 >= v132)
          {
            v102 = __p;
            v103 = v131 - __p;
            v104 = (v131 - __p) >> 2;
            v105 = v104 + 1;
            if ((v104 + 1) >> 62)
            {
              sub_24BC8E01C();
            }

            v106 = v132 - __p;
            if ((v132 - __p) >> 1 > v105)
            {
              v105 = v106 >> 1;
            }

            if (v106 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v107 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v107 = v105;
            }

            if (v107)
            {
              sub_24BC92E0C(&__p, v107);
            }

            *(4 * v104) = v98;
            v101 = 4 * v104 + 4;
            memcpy(0, v102, v103);
            v108 = __p;
            __p = 0;
            v131 = v101;
            v132 = 0;
            if (v108)
            {
              operator delete(v108);
            }
          }

          else
          {
            *v131 = v98;
            v101 = (v100 + 4);
          }

          v131 = v101;
          v109 = sub_24BD1EEAC(a2, v98);
          v110 = sub_24BD1EEAC(a2, v98);
          v111 = v128;
          if (v128 >= v129)
          {
            v113 = __src;
            v114 = v128 - __src;
            v115 = (v128 - __src) >> 2;
            v116 = v115 + 1;
            if ((v115 + 1) >> 62)
            {
              sub_24BC8E01C();
            }

            v117 = v129 - __src;
            if ((v129 - __src) >> 1 > v116)
            {
              v116 = v117 >> 1;
            }

            if (v117 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v118 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v118 = v116;
            }

            if (v118)
            {
              sub_24BC92E0C(&__src, v118);
            }

            *(4 * v115) = v110;
            v112 = 4 * v115 + 4;
            memcpy(0, v113, v114);
            v119 = __src;
            __src = 0;
            v128 = v112;
            v129 = 0;
            if (v119)
            {
              operator delete(v119);
            }
          }

          else
          {
            *v128 = v110;
            v112 = (v111 + 4);
          }

          v99 *= v109;
          v128 = v112;
          v96 = *a2;
          v97 = **a2;
        }

        ++v98;
      }

      while (v98 < (v96[1] - v97) >> 2);
    }

    memset(v126, 0, sizeof(v126));
    sub_24BCC9A1C(v126, v133, v134, (v134 - v133) >> 2);
    sub_24BEACEBC(v140, v126, v122, v123);
  }

  v121 = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(v121, "[tensordot] axes must have the same size.");
  __cxa_throw(v121, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEC6194(const void ***a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v11[0] = (*a1)[6];
  v11[1] = 1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, v11, &v12, 2uLL);
  sub_24BEA4500(a1, __p, a3, a4, v10);
  sub_24BEA6698(a2, 0, (((*a2)[1] - **a2) >> 2) - 1, a3, a4, v8);
  sub_24BEA3FE8(v10, v8, a3, a4);
}

void sub_24BEC62B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  sub_24BE7F218(&a10);
  sub_24BE7F218(&a15);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEC62F8(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  if ((*a1)[1] != **a1)
  {
    v8 = (*a2)[1];
    if (v8 != **a2)
    {
      if (*((*a1)[1] - 4) == *(v8 - 4))
      {
        v12 = -1;
        memset(v13, 0, sizeof(v13));
        sub_24BCC9910(v13, &v12, v13, 1uLL);
        v10 = -1;
        memset(__p, 0, sizeof(__p));
        sub_24BCC9910(__p, &v10, __p, 1uLL);
        sub_24BEC5568(a1, a2, v13, __p, a3, a4);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      sub_24BD4D730(exception, "[inner] a and b must have the same last dimension.");
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }
  }

  sub_24BEA3FE8(a1, a2, a3, a4);
}

void sub_24BEC64B8(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v130 = *MEMORY[0x277D85DE8];
  v7 = **a2;
  v8 = (*a2)[1];
  v10 = **a3;
  v9 = (*a3)[1];
  v11 = v8 - v7;
  if (v8 == v7 || v9 == v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[addmm] Got 0 dimension input. Inputs must have at least one dimension.");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (v11 == 4)
  {
    v127.__r_.__value_.__r.__words[0] = 0xFFFFFFFF00000001;
    v122 = 0;
    v123 = 0;
    __p = 0;
    sub_24BCC9910(&__p, &v127, &v127.__r_.__value_.__l.__size_, 2uLL);
    sub_24BEA4500(a2, &__p, a6, a7, &v128);
    v18 = v128;
    v128 = 0uLL;
    v19 = a2[1];
    *a2 = v18;
    if (v19)
    {
      sub_24BC9EC78(v19);
    }

    sub_24BE7F218(&v128);
    if (__p)
    {
      v122 = __p;
      operator delete(__p);
    }

    v20 = **a3;
    v21 = (*a3)[1];
  }

  else
  {
    v20 = **a3;
    v21 = (*a3)[1];
  }

  if (v21 - v20 == 4)
  {
    v127.__r_.__value_.__r.__words[0] = 0x1FFFFFFFFLL;
    v119 = 0;
    v120 = 0;
    v118 = 0;
    sub_24BCC9910(&v118, &v127, &v127.__r_.__value_.__l.__size_, 2uLL);
    sub_24BEA4500(a3, &v118, a6, a7, &v128);
    v22 = v128;
    v128 = 0uLL;
    v23 = a3[1];
    *a3 = v22;
    if (v23)
    {
      sub_24BC9EC78(v23);
    }

    sub_24BE7F218(&v128);
    if (v118)
    {
      v119 = v118;
      operator delete(v118);
    }
  }

  v24 = (*a2)[1];
  if (v24 == **a2)
  {
    sub_24BC923C0();
  }

  v25 = *a3;
  if (((*a3)[1] - **a3) <= 4)
  {
    sub_24BC923C0();
  }

  if (*(v24 - 4) != *((*a3)[1] - 8))
  {
    sub_24BCE1268(&v128);
    v87 = sub_24BC95264(&v128, "[addmm] Last dimension of first input with shape ", 49);
    v88 = sub_24BF02DB8(v87, *a2);
    v89 = sub_24BC95264(v88, " must match second to last dimension of", 39);
    v90 = sub_24BC95264(v89, " second input with shape ", 25);
    v91 = sub_24BF02DB8(v90, *a3);
    sub_24BC95264(v91, ".", 1);
    v92 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v92, &v127);
    v92->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v92, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v26 = (*a2)[7];
  LODWORD(v128) = v26;
  BYTE4(v128) = BYTE4(v26);
  v27 = v25[7];
  LODWORD(v127.__r_.__value_.__l.__data_) = v27;
  v127.__r_.__value_.__s.__data_[4] = BYTE4(v27);
  v28 = sub_24BE80C80(&v128, &v127);
  LODWORD(v128) = v28;
  BYTE4(v128) = BYTE4(v28);
  v29 = (*a1)[7];
  LODWORD(v127.__r_.__value_.__l.__data_) = v29;
  v127.__r_.__value_.__s.__data_[4] = BYTE4(v29);
  v30 = sub_24BE80C80(&v128, &v127);
  v116 = v30;
  v117 = BYTE4(v30);
  if ((sub_24BE80D54(&v116, dword_24BFEEC80) & 1) == 0)
  {
    sub_24BCE1268(&v128);
    v93 = sub_24BC95264(&v128, "[addmm] Only real floating point types are supported but ", 57);
    v94 = (*a1)[7];
    LODWORD(v127.__r_.__value_.__l.__data_) = v94;
    v127.__r_.__value_.__s.__data_[4] = BYTE4(v94);
    v95 = sub_24BF031F4(v93, &v127);
    v96 = sub_24BC95264(v95, ", ", 2);
    v97 = (*a2)[7];
    LODWORD(v126[0]) = v97;
    BYTE4(v126[0]) = BYTE4(v97);
    v98 = sub_24BF031F4(v96, v126);
    v99 = sub_24BC95264(v98, " and ", 5);
    v100 = (*a3)[7];
    LODWORD(v125[0]) = v100;
    BYTE4(v125[0]) = BYTE4(v100);
    v101 = sub_24BF031F4(v99, v125);
    v102 = sub_24BC95264(v101, " were provided which results in ", 32);
    v103 = sub_24BF031F4(v102, &v116);
    sub_24BC95264(v103, ", which is not a real floating point type.", 42);
    v104 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v104, &v127);
    v104->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v104, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v31 = a2[1];
  v115[0] = *a2;
  v115[1] = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v115, v116, a6, a7, &v128);
  v32 = v128;
  v128 = 0uLL;
  v33 = a2[1];
  *a2 = v32;
  if (v33)
  {
    sub_24BC9EC78(v33);
  }

  sub_24BE7F218(&v128);
  sub_24BE7F218(v115);
  v34 = a3[1];
  v114[0] = *a3;
  v114[1] = v34;
  if (v34)
  {
    atomic_fetch_add_explicit(v34 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v114, v116, a6, a7, &v128);
  v35 = v128;
  v128 = 0uLL;
  v36 = a3[1];
  *a3 = v35;
  if (v36)
  {
    sub_24BC9EC78(v36);
  }

  sub_24BE7F218(&v128);
  sub_24BE7F218(v114);
  v37 = a1[1];
  v113[0] = *a1;
  v113[1] = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(v37 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v113, v116, a6, a7, &v128);
  v38 = (v9 - v10) >> 2;
  v39 = v128;
  v128 = 0uLL;
  v40 = a1[1];
  *a1 = v39;
  if (v40)
  {
    sub_24BC9EC78(v40);
  }

  sub_24BE7F218(&v128);
  sub_24BE7F218(v113);
  v41 = *a2;
  v42 = **a2;
  v43 = (*a2)[1];
  v44 = (*a3)[1] - **a3;
  if ((v43 - v42) < 9)
  {
    if (v44 < 9)
    {
      goto LABEL_67;
    }
  }

  else if (v44 == 8 && ((*a1)[1] - **a1) <= 4)
  {
    memset(&v127, 0, sizeof(v127));
    sub_24BCC9A1C(&v127, *v41, v41[1], (v41[1] - *v41) >> 2);
    LODWORD(v126[0]) = -1;
    HIDWORD(v126[0]) = *(v127.__r_.__value_.__l.__size_ - 4);
    v111 = 0;
    v112 = 0;
    v110 = 0;
    sub_24BCC9910(&v110, v126, &v126[1], 2uLL);
    sub_24BEA4500(a2, &v110, a6, a7, &v128);
    v45 = v128;
    v128 = 0uLL;
    v46 = a2[1];
    *a2 = v45;
    if (v46)
    {
      sub_24BC9EC78(v46);
    }

    sub_24BE7F218(&v128);
    if (v110)
    {
      v111 = v110;
      operator delete(v110);
    }

    v47 = *a3;
    v48 = **a3;
    v49 = (*a3)[1];
    if (v49 != v48)
    {
      v50 = *(v49 - 4);
      size = v127.__r_.__value_.__l.__size_;
      *(v127.__r_.__value_.__l.__size_ - 4) = v50;
      v52 = size - 4;
      if (v38 == 1)
      {
        v127.__r_.__value_.__l.__size_ = v52;
      }

      v53 = **a2;
      if ((*a2)[1] != v53)
      {
        LODWORD(v125[0]) = *v53;
        if (v47[1] - v48 > 4)
        {
          HIDWORD(v125[0]) = *(v48 + 4);
          v129 = 0;
          v128 = 0uLL;
          sub_24BCC9910(&v128, v125, &v125[1], 2uLL);
          sub_24BEA4DE0(a1, &v128, a6, a7, v126);
          v54 = *v126;
          v126[0] = 0;
          v126[1] = 0;
          v55 = a1[1];
          *a1 = v54;
          if (v55)
          {
            sub_24BC9EC78(v55);
          }

          sub_24BE7F218(v126);
          if (v128)
          {
            *(&v128 + 1) = v128;
            operator delete(v128);
          }

          v56 = **a2;
          if ((*a2)[1] != v56)
          {
            LODWORD(v124) = *v56;
            v57 = **a3;
            if (((*a3)[1] - v57) > 4)
            {
              DWORD1(v124) = *(v57 + 4);
              memset(v109, 0, sizeof(v109));
              sub_24BCC9910(v109, &v124, &v124 + 8, 2uLL);
              sub_24BF02A98(a6, a7);
              operator new();
            }
          }

          sub_24BC923C0();
        }
      }

      sub_24BC923C0();
    }

    sub_24BC923C0();
  }

  v128 = 0uLL;
  v129 = 0;
  sub_24BEA2D98(&v128, v42, v43 - 8, (v43 - 8 - v42) >> 2);
  v58 = **a3;
  v59 = (*a3)[1] - 8;
  memset(&v127, 0, sizeof(v127));
  sub_24BEA2D98(&v127, v58, v59, (v59 - v58) >> 2);
  sub_24BF02B58(&v128, &v127, v126);
  if (((*a2)[1] - **a2) <= 4)
  {
    sub_24BC923C0();
  }

  LODWORD(v125[0]) = *((*a2)[1] - 8);
  sub_24BC97D60(v126, v125);
  v60 = (*a2)[1];
  if (v60 == **a2)
  {
    sub_24BC923C0();
  }

  LODWORD(v125[0]) = *(v60 - 4);
  sub_24BC97D60(v126, v125);
  sub_24BEA4DE0(a2, v126, a6, a7, v125);
  v61 = *v125;
  v125[0] = 0;
  v125[1] = 0;
  v62 = a2[1];
  *a2 = v61;
  if (v62)
  {
    sub_24BC9EC78(v62);
  }

  sub_24BE7F218(v125);
  if (((*a3)[1] - **a3) <= 4)
  {
    sub_24BC923C0();
  }

  v63 = (*a3)[1];
  v64 = v126[1];
  *(v126[1] - 2) = *(v63 - 8);
  *(v64 - 1) = *(v63 - 4);
  sub_24BEA4DE0(a3, v126, a6, a7, v125);
  v65 = *v125;
  v125[0] = 0;
  v125[1] = 0;
  v66 = a3[1];
  *a3 = v65;
  if (v66)
  {
    sub_24BC9EC78(v66);
  }

  sub_24BE7F218(v125);
  if (v126[0])
  {
    v126[1] = v126[0];
    operator delete(v126[0]);
  }

  if (v127.__r_.__value_.__r.__words[0])
  {
    v127.__r_.__value_.__l.__size_ = v127.__r_.__value_.__r.__words[0];
    operator delete(v127.__r_.__value_.__l.__data_);
  }

  if (v128)
  {
    *(&v128 + 1) = v128;
    operator delete(v128);
  }

  v41 = *a2;
LABEL_67:
  memset(&v127, 0, sizeof(v127));
  sub_24BCC9A1C(&v127, *v41, v41[1], (v41[1] - *v41) >> 2);
  v67 = (*a3)[1];
  if (v67 != **a3)
  {
    v68 = v127.__r_.__value_.__l.__size_;
    *(v127.__r_.__value_.__l.__size_ - 4) = *(v67 - 4);
    memset(v126, 0, sizeof(v126));
    sub_24BCC9A1C(v126, v127.__r_.__value_.__l.__data_, v68, (v68 - v127.__r_.__value_.__r.__words[0]) >> 2);
    v69 = v11 & 0x3FFFFFFFCLL;
    v70 = (v11 & 0x3FFFFFFFCLL) == 4 || v38 == 1;
    v71 = v70;
    if (v70)
    {
      v72 = -4;
      v73 = -8;
      if (v69 != 4)
      {
        v73 = -4;
      }

      if (v38 == 1)
      {
        v72 = 0;
      }

      v74 = v72 - v73;
      if (v74)
      {
        v75 = v126[1] + v73;
        v76 = v126[1] + v73 + v74;
        v77 = -(v73 + v74);
        if (v126[1] != v76)
        {
          memmove(v126[1] + v73, v76, -(v73 + v74));
        }

        v126[1] = &v75[v77];
      }
    }

    sub_24BF02B58(*a1, v126, v125);
    sub_24BEA4DE0(a1, v125, a6, a7, &v128);
    v78 = v128;
    v128 = 0uLL;
    v79 = a1[1];
    *a1 = v78;
    if (v79)
    {
      sub_24BC9EC78(v79);
    }

    sub_24BE7F218(&v128);
    if (v71)
    {
      v80 = *a1;
      v129 = 0;
      v128 = 0uLL;
      sub_24BCC9A1C(&v128, *v80, v80[1], (v80[1] - *v80) >> 2);
      if (v38 == 1)
      {
        LODWORD(v124) = 1;
        sub_24BC97D60(&v128, &v124);
      }

      if (v69 == 4)
      {
        sub_24BC97D60(&v128, (*(&v128 + 1) - 4));
        v82 = *(&v128 + 1);
        v81 = v128;
        v83 = *(&v128 + 1) - v128;
        *(*(&v128 + 1) - 8) = 1;
      }

      else
      {
        v82 = *(&v128 + 1);
        v81 = v128;
        v83 = *(&v128 + 1) - v128;
      }

      v107 = 0;
      v108 = 0;
      v106 = 0;
      sub_24BCC9A1C(&v106, v81, v82, v83 >> 2);
      sub_24BEA4500(a1, &v106, a6, a7, &v124);
      v84 = v124;
      v124 = 0uLL;
      v85 = a1[1];
      *a1 = v84;
      if (v85)
      {
        sub_24BC9EC78(v85);
      }

      sub_24BE7F218(&v124);
      if (v106)
      {
        v107 = v106;
        operator delete(v106);
      }

      if (v128)
      {
        *(&v128 + 1) = v128;
        operator delete(v128);
      }
    }

    memset(v105, 0, sizeof(v105));
    sub_24BCC9A1C(v105, v127.__r_.__value_.__l.__data_, v127.__r_.__value_.__l.__size_, (v127.__r_.__value_.__l.__size_ - v127.__r_.__value_.__r.__words[0]) >> 2);
    sub_24BF02A98(a6, a7);
    operator new();
  }

  sub_24BC923C0();
}

void sub_24BEC73B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  if (a67 < 0)
  {
    operator delete(__p);
    if ((v69 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a68);
      _Unwind_Resume(a1);
    }
  }

  else if (!v69)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v68);
  goto LABEL_6;
}

void sub_24BEC7698(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v104[29] = *MEMORY[0x277D85DE8];
  v13 = *(a5 + 16);
  if (*(a4 + 16) == 1)
  {
    if ((*(a5 + 16) & 1) == 0)
    {
LABEL_7:
      v14 = *(a6 + 16);
      goto LABEL_8;
    }
  }

  else if ((*(a5 + 16) & 1) == 0)
  {
    if ((*(a6 + 16) & 1) == 0)
    {
      v60 = *MEMORY[0x277D85DE8];

      sub_24BEBB9E0(a1, a2, a7, a8);
    }

    goto LABEL_7;
  }

  v14 = 1;
LABEL_8:
  if (a3 == 32 || a3 == 64)
  {
    v15 = (*a1)[1] - **a1;
    if (v15)
    {
      v16 = (*a2)[1] == **a2;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v81 = **a2;
      if (v15 == 4)
      {
        v102.__r_.__value_.__r.__words[0] = 0xFFFFFFFF00000001;
        v99 = 0;
        v100 = 0;
        __p = 0;
        sub_24BCC9910(&__p, &v102, &v102.__r_.__value_.__l.__size_, 2uLL);
        sub_24BEA4500(a1, &__p, a7, a8, v103);
        v17 = *v103;
        v103[0] = 0;
        v103[1] = 0;
        v18 = a1[1];
        *a1 = v17;
        if (v18)
        {
          sub_24BC9EC78(v18);
        }

        sub_24BE7F218(v103);
        if (__p)
        {
          v99 = __p;
          operator delete(__p);
        }

        v19 = **a2;
        v20 = (*a2)[1];
      }

      else
      {
        v19 = **a2;
        v20 = (*a2)[1];
      }

      if (v20 - v19 == 4)
      {
        v102.__r_.__value_.__r.__words[0] = 0x1FFFFFFFFLL;
        v96 = 0;
        v97 = 0;
        v95 = 0;
        sub_24BCC9910(&v95, &v102, &v102.__r_.__value_.__l.__size_, 2uLL);
        sub_24BEA4500(a2, &v95, a7, a8, v103);
        v21 = *v103;
        v103[0] = 0;
        v103[1] = 0;
        v22 = a2[1];
        *a2 = v21;
        if (v22)
        {
          sub_24BC9EC78(v22);
        }

        sub_24BE7F218(v103);
        if (v95)
        {
          v96 = v95;
          operator delete(v95);
        }
      }

      v23 = (*a1)[1];
      if (v23 != **a1)
      {
        v24 = *a2;
        if (((*a2)[1] - **a2) > 4)
        {
          if (*(v23 - 4) == *((*a2)[1] - 8))
          {
            v25 = (*a1)[7];
            LODWORD(v103[0]) = v25;
            BYTE4(v103[0]) = BYTE4(v25);
            v26 = v24[7];
            LODWORD(v102.__r_.__value_.__l.__data_) = v26;
            v102.__r_.__value_.__s.__data_[4] = BYTE4(v26);
            v27 = sub_24BE80C80(v103, &v102);
            v93 = v27;
            v94 = BYTE4(v27);
            if (sub_24BE80D54(&v93, dword_24BFEEC80))
            {
              v28 = a1[1];
              v92[0] = *a1;
              v92[1] = v28;
              if (v28)
              {
                atomic_fetch_add_explicit(v28 + 1, 1uLL, memory_order_relaxed);
              }

              sub_24BEA3B14(v92, v93, a7, a8, v103);
              v29 = *v103;
              v103[0] = 0;
              v103[1] = 0;
              v30 = a1[1];
              *a1 = v29;
              if (v30)
              {
                sub_24BC9EC78(v30);
              }

              sub_24BE7F218(v103);
              sub_24BE7F218(v92);
              v31 = a2[1];
              v91[0] = *a2;
              v91[1] = v31;
              if (v31)
              {
                atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
              }

              sub_24BEA3B14(v91, v93, a7, a8, v103);
              v32 = *v103;
              v103[0] = 0;
              v103[1] = 0;
              v33 = a2[1];
              *a2 = v32;
              if (v33)
              {
                sub_24BC9EC78(v33);
              }

              sub_24BE7F218(v103);
              sub_24BE7F218(v91);
              v34 = **a1;
              v35 = (*a1)[1] - 8;
              memset(&v102, 0, sizeof(v102));
              sub_24BEA2D98(&v102, v34, v35, (v35 - v34) >> 2);
              v36 = **a2;
              v37 = (*a2)[1] - 8;
              memset(v90, 0, sizeof(v90));
              sub_24BEA2D98(v90, v36, v37, (v37 - v36) >> 2);
              sub_24BF02B58(&v102, v90, &v88);
              LODWORD(v103[0]) = 1;
              sub_24BC97D60(&v88, v103);
              LODWORD(v103[0]) = 1;
              sub_24BC97D60(&v88, v103);
              if (((*a1)[1] - **a1) > 4)
              {
                v38 = (*a2)[1];
                if (v38 != **a2)
                {
                  v39 = v88;
                  v40 = v89 - v88;
                  v41 = (*a1)[1];
                  v42 = *(v38 - 4);
                  v43 = *(v41 - 8);
                  v44 = *(v41 - 4);
                  v45 = ((v89 - v88) << 30) - 0x200000000;
                  *(v88 + (v45 >> 30)) = v43;
                  v46 = (v40 << 30) - 0x100000000;
                  *&v39[v46 >> 30] = v44;
                  sub_24BEA4DE0(a1, &v88, a7, a8, v103);
                  v47 = v45 >> 32;
                  v48 = v46 >> 32;
                  v49 = *v103;
                  v103[0] = 0;
                  v103[1] = 0;
                  v50 = a1[1];
                  *a1 = v49;
                  if (v50)
                  {
                    sub_24BC9EC78(v50);
                  }

                  sub_24BE7F218(v103);
                  v51 = v88;
                  *(v88 + v47) = v44;
                  v51[v48] = v42;
                  sub_24BEA4DE0(a2, &v88, a7, a8, v103);
                  v52 = *v103;
                  v103[0] = 0;
                  v103[1] = 0;
                  v53 = a2[1];
                  *a2 = v52;
                  if (v53)
                  {
                    sub_24BC9EC78(v53);
                  }

                  sub_24BE7F218(v103);
                  v85 = 0;
                  v86 = 0;
                  v87 = 0;
                  sub_24BCC9A1C(&v85, v88, v89, (v89 - v88) >> 2);
                  v54 = v85;
                  *(v85 + v47) = v43;
                  v54[v48] = v42;
                  v55 = a1[1];
                  v103[0] = *a1;
                  v103[1] = v55;
                  if (v55)
                  {
                    atomic_fetch_add_explicit(v55 + 1, 1uLL, memory_order_relaxed);
                  }

                  v56 = a2[1];
                  v103[2] = *a2;
                  v103[3] = v56;
                  if (v56)
                  {
                    atomic_fetch_add_explicit(v56 + 1, 1uLL, memory_order_relaxed);
                  }

                  memset(v84, 0, 24);
                  sub_24BCC9984(v84, v103, v104, 2uLL);
                  for (i = 2; i != -2; i -= 2)
                  {
                    sub_24BE7F218(&v103[i]);
                  }

                  if (*(a4 + 16) == 1)
                  {
                    LOBYTE(v101) = 1;
                    v58 = sub_24BE80CB4();
                    sub_24BED2144(v103, &v101, 1, (v58 & 0xFFFFFFFFFFLL));
                  }

                  if (v14)
                  {
                    LOBYTE(v101) = 1;
                    v59 = sub_24BE80CB4();
                    sub_24BED2144(v103, &v101, 1, (v59 & 0xFFFFFFFFFFLL));
                  }

                  memset(v83, 0, sizeof(v83));
                  sub_24BCC9A1C(v83, v85, v86, (v86 - v85) >> 2);
                  sub_24BF02A98(a7, a8);
                  operator new();
                }

                sub_24BC923C0();
              }

              sub_24BC923C0();
            }

            sub_24BCE1268(v103);
            v68 = sub_24BC95264(v103, "[block_masked_mm] Only real floating point types are supported but ", 67);
            v69 = (*a1)[7];
            LODWORD(v102.__r_.__value_.__l.__data_) = v69;
            v102.__r_.__value_.__s.__data_[4] = BYTE4(v69);
            v70 = sub_24BF031F4(v68, &v102);
            v71 = sub_24BC95264(v70, " and ", 5);
            v72 = (*a2)[7];
            LODWORD(v90[0]) = v72;
            BYTE4(v90[0]) = BYTE4(v72);
            v73 = sub_24BF031F4(v71, v90);
            v74 = sub_24BC95264(v73, " were provided which results in ", 32);
            v75 = sub_24BF031F4(v74, &v93);
            sub_24BC95264(v75, ", which is not a real floating point type.", 42);
            exception = __cxa_allocate_exception(0x10uLL);
            std::stringbuf::str();
            std::logic_error::logic_error(exception, &v102);
            exception->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
          }

          sub_24BCE1268(v103);
          v62 = sub_24BC95264(v103, "[block_masked_mm] Last dimension of first input with shape ", 59);
          v63 = sub_24BF02DB8(v62, *a1);
          v64 = sub_24BC95264(v63, " must match second to last dimension of", 39);
          v65 = sub_24BC95264(v64, " second input with shape ", 25);
          v66 = sub_24BF02DB8(v65, *a2);
          sub_24BC95264(v66, ".", 1);
          v67 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(v67, &v102);
          v67->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v67, &unk_285F94708, MEMORY[0x277D82610]);
        }

        sub_24BC923C0();
      }

      sub_24BC923C0();
    }

    v61 = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(v61, "[block_masked_mm] Got 0 dimension input. Inputs must have at least one dimension.");
    __cxa_throw(v61, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(v103);
  v77 = sub_24BC95264(v103, "[block_masked_mm] Only block_sizes 32, 64 are supported.", 56);
  v78 = sub_24BC95264(v77, "Got block size ", 15);
  v79 = MEMORY[0x24C2543C0](v78, a3);
  sub_24BC95264(v79, ".", 1);
  v80 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v80, &v102);
  v80->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v80, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEC86A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
    if ((v74 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a73);
      _Unwind_Resume(a1);
    }
  }

  else if (!v74)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v73);
  goto LABEL_6;
}

void sub_24BEC891C(const void ***a1, const void ***a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v89 = *MEMORY[0x277D85DE8];
  if (*(a3 + 16) & 1) != 0 || (*(a4 + 16))
  {
    v12 = **a1;
    v13 = (*a1)[1];
    if (v13 != v12 && (*a2)[1] != **a2)
    {
      if (v13 - v12 == 4)
      {
        v87.__r_.__value_.__r.__words[0] = 0xFFFFFFFF00000001;
        v85 = 0;
        v86 = 0;
        __p = 0;
        sub_24BCC9910(&__p, &v87, &v87.__r_.__value_.__l.__size_, 2uLL);
        sub_24BEA4500(a1, &__p, a5, a6, &v88);
        v15 = v88;
        v88 = 0uLL;
        v16 = a1[1];
        *a1 = v15;
        if (v16)
        {
          sub_24BC9EC78(v16);
        }

        sub_24BE7F218(&v88);
        if (__p)
        {
          v85 = __p;
          operator delete(__p);
        }

        v17 = **a2;
        v18 = (*a2)[1];
      }

      else
      {
        v17 = **a2;
        v18 = (*a2)[1];
      }

      if (v18 - v17 == 4)
      {
        v87.__r_.__value_.__r.__words[0] = 0x1FFFFFFFFLL;
        v82 = 0;
        v83 = 0;
        v81 = 0;
        sub_24BCC9910(&v81, &v87, &v87.__r_.__value_.__l.__size_, 2uLL);
        sub_24BEA4500(a2, &v81, a5, a6, &v88);
        v19 = v88;
        v88 = 0uLL;
        v20 = a2[1];
        *a2 = v19;
        if (v20)
        {
          sub_24BC9EC78(v20);
        }

        sub_24BE7F218(&v88);
        if (v81)
        {
          v82 = v81;
          operator delete(v81);
        }
      }

      v21 = (*a1)[1];
      if (v21 != **a1)
      {
        v22 = *a2;
        if (((*a2)[1] - **a2) > 4)
        {
          if (*(v21 - 1) == *((*a2)[1] - 2))
          {
            v23 = (*a1)[7];
            LODWORD(v88) = v23;
            BYTE4(v88) = BYTE4(v23);
            v24 = v22[7];
            LODWORD(v87.__r_.__value_.__l.__data_) = v24;
            v87.__r_.__value_.__s.__data_[4] = BYTE4(v24);
            v25 = sub_24BE80C80(&v88, &v87);
            v79 = v25;
            v80 = BYTE4(v25);
            if (sub_24BE80D54(&v79, dword_24BFEEC80))
            {
              v26 = a1[1];
              v78[0] = *a1;
              v78[1] = v26;
              if (v26)
              {
                atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
              }

              sub_24BEA3B14(v78, v79, a5, a6, &v88);
              v27 = v88;
              v88 = 0uLL;
              v28 = a1[1];
              *a1 = v27;
              if (v28)
              {
                sub_24BC9EC78(v28);
              }

              sub_24BE7F218(&v88);
              sub_24BE7F218(v78);
              v29 = a2[1];
              v77[0] = *a2;
              v77[1] = v29;
              if (v29)
              {
                atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
              }

              sub_24BEA3B14(v77, v79, a5, a6, &v88);
              v30 = v88;
              v88 = 0uLL;
              v31 = a2[1];
              *a2 = v30;
              if (v31)
              {
                sub_24BC9EC78(v31);
              }

              sub_24BE7F218(&v88);
              sub_24BE7F218(v77);
              LOBYTE(v74[0]) = 0;
              v75 = 0;
              if (*(a3 + 16) == 1)
              {
                v32 = *(a3 + 8);
                v74[0] = *a3;
                v74[1] = v32;
                if (v32)
                {
                  atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
                }

                v75 = 1;
              }

              sub_24BEC50EC(v74, a1, a5, a6, &v76);
              if (v75 == 1)
              {
                sub_24BE7F218(v74);
              }

              LOBYTE(v71[0]) = 0;
              v72 = 0;
              if (*(a4 + 16) == 1)
              {
                v33 = *(a4 + 8);
                v71[0] = *a4;
                v71[1] = v33;
                if (v33)
                {
                  atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
                }

                v72 = 1;
              }

              sub_24BEC50EC(v71, a2, a5, a6, &v73);
              if (v72 == 1)
              {
                sub_24BE7F218(v71);
              }

              v34 = *(v76 + 56);
              LODWORD(v88) = v34;
              BYTE4(v88) = BYTE4(v34);
              if (sub_24BE80D54(&v88, dword_24BFF8830))
              {
                v35 = *(v73 + 56);
                LODWORD(v88) = v35;
                BYTE4(v88) = BYTE4(v35);
                if (sub_24BE80D54(&v88, dword_24BFF8830))
                {
                  v70 = v76;
                  if (*(&v76 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v76 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  sub_24BEA3B14(&v70, 3, a5, a6, &v88);
                  v36 = v88;
                  v88 = 0uLL;
                  v37 = *(&v76 + 1);
                  v76 = v36;
                  if (v37)
                  {
                    sub_24BC9EC78(v37);
                  }

                  sub_24BE7F218(&v88);
                  sub_24BE7F218(&v70);
                  v69 = v73;
                  if (*(&v73 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v73 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  sub_24BEA3B14(&v69, 3, a5, a6, &v88);
                  v38 = v88;
                  v88 = 0uLL;
                  v39 = *(&v73 + 1);
                  v73 = v38;
                  if (v39)
                  {
                    sub_24BC9EC78(v39);
                  }

                  sub_24BE7F218(&v88);
                  sub_24BE7F218(&v69);
                  if (((*a1)[1] - **a1) > 4)
                  {
                    v68 = *((*a1)[1] - 2);
                    v40 = (*a2)[1];
                    if (v40 != **a2)
                    {
                      v67 = *(v40 - 1);
                      sub_24BF02B58(v76, v73, &v87);
                      sub_24BEA4DE0(&v76, &v87, a5, a6, &v88);
                      v41 = v88;
                      v88 = 0uLL;
                      v42 = *(&v76 + 1);
                      v76 = v41;
                      if (v42)
                      {
                        sub_24BC9EC78(v42);
                      }

                      sub_24BE7F218(&v88);
                      sub_24BEA4DE0(&v73, &v87, a5, a6, &v88);
                      v43 = v88;
                      v88 = 0uLL;
                      v44 = *(&v73 + 1);
                      v73 = v43;
                      if (v44)
                      {
                        sub_24BC9EC78(v44);
                      }

                      sub_24BE7F218(&v88);
                      v64 = 0;
                      v65 = 0;
                      v66 = 0;
                      sub_24BCC9A1C(&v64, v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_, (v87.__r_.__value_.__l.__size_ - v87.__r_.__value_.__r.__words[0]) >> 2);
                      sub_24BC97D60(&v64, &v68);
                      sub_24BC97D60(&v64, &v67);
                      memset(v63, 0, sizeof(v63));
                      sub_24BCC9A1C(v63, v64, v65, (v65 - v64) >> 2);
                      sub_24BF02A98(a5, a6);
                      operator new();
                    }

                    sub_24BC923C0();
                  }

                  sub_24BC923C0();
                }

                exception = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(exception, "[gather_mm] Got rhs_indices with invalid dtype. Indices must be integral.");
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(exception, "[gather_mm] Got lhs_indices with invalid dtype. Indices must be integral.");
              }

              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
            }

            sub_24BCE1268(&v88);
            v53 = sub_24BC95264(&v88, "[gather_mm] Only real floating point types are supported but ", 61);
            v54 = (*a1)[7];
            LODWORD(v87.__r_.__value_.__l.__data_) = v54;
            v87.__r_.__value_.__s.__data_[4] = BYTE4(v54);
            v55 = sub_24BF031F4(v53, &v87);
            v56 = sub_24BC95264(v55, " and ", 5);
            v57 = (*a2)[7];
            LODWORD(v64) = v57;
            BYTE4(v64) = BYTE4(v57);
            v58 = sub_24BF031F4(v56, &v64);
            v59 = sub_24BC95264(v58, " were provided which results in ", 32);
            v60 = sub_24BF031F4(v59, &v79);
            sub_24BC95264(v60, ", which is not a real floating point type.", 42);
            v61 = __cxa_allocate_exception(0x10uLL);
            std::stringbuf::str();
            std::logic_error::logic_error(v61, &v87);
            v61->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v61, &unk_285F94708, MEMORY[0x277D82610]);
          }

          sub_24BCE1268(&v88);
          v47 = sub_24BC95264(&v88, "[gather_mm] Last dimension of first input with shape ", 53);
          v48 = sub_24BF02DB8(v47, *a1);
          v49 = sub_24BC95264(v48, " must match second to last dimension of", 39);
          v50 = sub_24BC95264(v49, " second input with shape ", 25);
          v51 = sub_24BF02DB8(v50, *a2);
          sub_24BC95264(v51, ".", 1);
          v52 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(v52, &v87);
          v52->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v52, &unk_285F94708, MEMORY[0x277D82610]);
        }

        sub_24BC923C0();
      }

      sub_24BC923C0();
    }

    v46 = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(v46, "[gather_mm] Got 0 dimension input. Inputs must have at least one dimension.");
    __cxa_throw(v46, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v45 = *MEMORY[0x277D85DE8];

  sub_24BEBB9E0(a1, a2, a5, a6);
}

void sub_24BEC9430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, char a60)
{
  if (a59 < 0)
  {
    operator delete(__p);
    if ((v61 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a60);
      _Unwind_Resume(a1);
    }
  }

  else if (!v61)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v60);
  goto LABEL_6;
}

void sub_24BEC9628(uint64_t **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35[33] = *MEMORY[0x277D85DE8];
  v6 = ((*a1)[1] - **a1) >> 2;
  if (v6 > 1)
  {
    v8 = (v6 & (a3 >> 31)) + a3;
    if (v8 < v6)
    {
      v10 = (v6 & (a4 >> 31)) + a4;
      if (v10 < v6)
      {
        if (v8 != v10)
        {
          v14 = -a2 & ~(-a2 >> 31);
          v15 = a2 & ~(a2 >> 31);
          v16 = sub_24BD1EEAC(a1, v8) - v14;
          v17 = sub_24BD1EEAC(a1, v10) - v15;
          if (v17 < v16)
          {
            v16 = v17;
          }

          v18 = sub_24BF02A98(a5, a6);
          sub_24BEA3040(0x400000007, v18, v19 | 0x100000000, v35, v14, ((v16 & ~(v16 >> 31)) + v14), 1.0);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BD4D730(exception, "[diagonal] axis1 and axis2 cannot be the same axis");
        __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
      }

      sub_24BCE1268(v35);
      v28 = sub_24BC95264(v35, "[diagonal] Invalid axis2 ", 25);
      v29 = MEMORY[0x24C2543C0](v28, a4);
      v30 = sub_24BC95264(v29, " for array with ", 16);
      v31 = MEMORY[0x24C2543C0](v30, v6);
      sub_24BC95264(v31, " dimensions.", 12);
      v32 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(v32, &v34);
      v32->__vftable = (MEMORY[0x277D828E8] + 16);
      __cxa_throw(v32, &unk_285F92800, MEMORY[0x277D825F8]);
    }

    sub_24BCE1268(v35);
    v23 = sub_24BC95264(v35, "[diagonal] Invalid axis1 ", 25);
    v24 = MEMORY[0x24C2543C0](v23, a3);
    v25 = sub_24BC95264(v24, " for array with ", 16);
    v26 = MEMORY[0x24C2543C0](v25, v6);
    sub_24BC95264(v26, " dimensions.", 12);
    v27 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v27, &v34);
    v27->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(v27, &unk_285F92800, MEMORY[0x277D825F8]);
  }

  sub_24BCE1268(v35);
  v20 = sub_24BC95264(v35, "[diagonal] Array must have at least two dimensions, but got ", 60);
  v21 = MEMORY[0x24C2543C0](v20, v6);
  sub_24BC95264(v21, " dimensions.", 12);
  v22 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v22, &v34);
  v22->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v22, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEC9B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void sub_24BEC9C80(uint64_t **a1, int a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = ((*a1)[1] - **a1) >> 2;
  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v6 = *(*a1 + 12);
      if (a2 >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = -a2;
      }

      LODWORD(v14.__r_.__value_.__l.__data_) = v7 + v6;
      HIDWORD(v14.__r_.__value_.__r.__words[0]) = v7 + v6;
      memset(__p, 0, sizeof(__p));
      sub_24BCC9910(__p, &v14, &v14.__r_.__value_.__l.__size_, 2uLL);
      v8 = (*a1)[7] & 0xFFFFFFFFFFLL;
      sub_24BEA51FC(__p);
    }

    sub_24BCE1268(__p);
    v10 = sub_24BC95264(__p, "[diag] array must be 1-D or 2-D, got array with ", 48);
    v11 = MEMORY[0x24C2543E0](v10, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v11, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v14);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v9 = *MEMORY[0x277D85DE8];

  sub_24BEC9628(a1, a2, 0, 1, a3, a4);
}

void sub_24BECA168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (*(v12 - 73) < 0)
  {
    operator delete(*(v12 - 96));
    if ((v11 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v11)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v10);
  goto LABEL_6;
}

void sub_24BECA260(uint64_t **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = ((*a1)[1] - **a1) >> 2;
  if (v7 > 1)
  {
    v8 = (v7 & (a3 >> 31)) + a3;
    if (v8 < v7)
    {
      v9 = (v7 & (a4 >> 31)) + a4;
      if (v9 < v7)
      {
        if (v8 != v9)
        {
          sub_24BEC9628(a1, a2, a3, a4, a6, a7);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BD4D730(exception, "[trace] axis1 and axis2 cannot be the same axis");
        __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
      }

      sub_24BCE1268(v27);
      v20 = sub_24BC95264(v27, "[trace] Invalid axis2 ", 22);
      v21 = MEMORY[0x24C2543C0](v20, a4);
      v22 = sub_24BC95264(v21, " for array with ", 16);
      v23 = MEMORY[0x24C2543C0](v22, v7);
      sub_24BC95264(v23, " dimensions.", 12);
      v24 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(v24, &v26);
      v24->__vftable = (MEMORY[0x277D828E8] + 16);
      __cxa_throw(v24, &unk_285F92800, MEMORY[0x277D825F8]);
    }

    sub_24BCE1268(v27);
    v14 = sub_24BC95264(v27, "[trace] Invalid axis1 ", 22);
    v15 = MEMORY[0x24C2543C0](v14, a3);
    v16 = sub_24BC95264(v15, " for array with ", 16);
    v17 = MEMORY[0x24C2543C0](v16, v7);
    sub_24BC95264(v17, " dimensions.", 12);
    v18 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v18, &v26);
    v18->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(v18, &unk_285F92800, MEMORY[0x277D825F8]);
  }

  sub_24BCE1268(v27);
  v10 = sub_24BC95264(v27, "[trace] Array must have at least two dimensions, but got ", 57);
  v11 = MEMORY[0x24C2543C0](v10, v7);
  sub_24BC95264(v11, " dimensions.", 12);
  v12 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v12, &v26);
  v12->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v12, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BECA594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a17);
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

void sub_24BECA660(uint64_t *a1, uint64_t **a2)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  sub_24BCC9548(&v31, *a1, a1[1], (a1[1] - *a1) >> 4);
  v4 = sub_24BE9CE30(&v31, v32, *a2, a2[1], (a2[1] - *a2) >> 4);
  v5 = *a1;
  v6 = *(**a1 + 64);
  if (v6)
  {
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
  }

  else
  {
    v7 = sub_24BF02A98(v4, 0);
    v8 = v9;
    v5 = *a1;
  }

  v30 = 0;
  v10 = 0uLL;
  v29 = 0u;
  v28 = 0;
  *__p = 0u;
  v11 = a1[1];
  if (v5 == v11)
  {
    v24 = 0;
  }

  else
  {
    do
    {
      v12 = *v5;
      v13 = *(&v29 + 1);
      if (*(&v29 + 1) >= v30)
      {
        v14 = sub_24BED25E4(&v29, v12);
      }

      else
      {
        **(&v29 + 1) = 0;
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        sub_24BCC9A1C(v13, *v12, v12[1], (v12[1] - *v12) >> 2);
        v14 = v13 + 24;
      }

      *(&v29 + 1) = v14;
      v15 = *(*v5 + 56);
      v16 = __p[1];
      if (__p[1] >= v28)
      {
        v18 = (__p[1] - __p[0]) >> 3;
        if ((v18 + 1) >> 61)
        {
          sub_24BC8E01C();
        }

        v19 = (v28 - __p[0]) >> 2;
        if (v19 <= v18 + 1)
        {
          v19 = v18 + 1;
        }

        if (v28 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          sub_24BCD06EC(__p, v20);
        }

        v21 = (8 * v18);
        *v21 = v15 & 0xFFFFFFFFFFLL;
        v17 = (8 * v18 + 8);
        v22 = v21 - (__p[1] - __p[0]);
        memcpy(v22, __p[0], __p[1] - __p[0]);
        v23 = __p[0];
        __p[0] = v22;
        __p[1] = v17;
        v28 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *__p[1] = v15 & 0xFFFFFFFFFFLL;
        v17 = v16 + 8;
      }

      __p[1] = v17;
      v5 += 16;
    }

    while (v5 != v11);
    v10 = v29;
    v24 = v30;
  }

  v25 = v10;
  v26 = v24;
  v30 = 0;
  v29 = 0uLL;
  sub_24BF02A98(v7, v8 | 0x100000000);
  operator new();
}

void sub_24BECA934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, char a20)
{
  a17 = &a20;
  sub_24BCC961C(&a17);
  _Unwind_Resume(a1);
}

void sub_24BECA9BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(*a1 + 8) == **a1)
  {
    v9 = 1;
    v11 = 0;
    v12 = 0;
    __p = 0;
    sub_24BCC9910(&__p, &v9, &__p, 1uLL);
    sub_24BEA4500(a1, &__p, a2, a3, a4);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v6 = *(a1 + 8);
    *a4 = *a1;
    *(a4 + 8) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_24BECAA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BECAA90(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_24BE9CDA0(a4, (a1[1] - *a1) >> 4);
  v8 = *a1;
  for (i = a1[1]; v8 != i; v8 += 16)
  {
    sub_24BECA9BC(v8, a2, a3, &v17);
    v11 = a4[1];
    v10 = a4[2];
    if (v11 >= v10)
    {
      v13 = (v11 - *a4) >> 4;
      if ((v13 + 1) >> 60)
      {
        sub_24BC8E01C();
      }

      v14 = v10 - *a4;
      v15 = v14 >> 3;
      if (v14 >> 3 <= (v13 + 1))
      {
        v15 = v13 + 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v22 = a4;
      if (v16)
      {
        sub_24BCB53E8(a4, v16);
      }

      v18 = 0;
      v19 = (16 * v13);
      v21 = 0;
      *v19 = v17;
      v17 = 0uLL;
      v20 = 16 * v13 + 16;
      sub_24BCC9818(a4, &v18);
      v12 = a4[1];
      sub_24BCC98C0(&v18);
    }

    else
    {
      *v11 = v17;
      v12 = v11 + 1;
      v17 = 0uLL;
    }

    a4[1] = v12;
    sub_24BE7F218(&v17);
  }
}

void sub_24BECAC1C(const void ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = ((*a1)[1] - **a1) >> 2;
  if (v9 == 1)
  {
    v11 = v8[6];
    LODWORD(v20) = 1;
    HIDWORD(v20) = v11;
    v15 = 0;
    v16 = 0;
    __p = 0;
    sub_24BCC9910(&__p, &v20, &v21, 2uLL);
    sub_24BEA4500(a1, &__p, a2, a3, a4);
    v10 = __p;
    if (__p)
    {
      v15 = __p;
      goto LABEL_7;
    }
  }

  else if (v9)
  {
    v12 = a1[1];
    *a4 = v8;
    *(a4 + 8) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v20 = 0x100000001;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    sub_24BCC9910(&v17, &v20, &v21, 2uLL);
    sub_24BEA4500(a1, &v17, a2, a3, a4);
    v10 = v17;
    if (v17)
    {
      v18 = v17;
LABEL_7:
      operator delete(v10);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_24BECAD5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BECAD94(const void ****a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_24BE9CDA0(a4, (a1[1] - *a1) >> 4);
  v8 = *a1;
  for (i = a1[1]; v8 != i; v8 += 2)
  {
    sub_24BECAC1C(v8, a2, a3, &v17);
    v11 = a4[1];
    v10 = a4[2];
    if (v11 >= v10)
    {
      v13 = (v11 - *a4) >> 4;
      if ((v13 + 1) >> 60)
      {
        sub_24BC8E01C();
      }

      v14 = v10 - *a4;
      v15 = v14 >> 3;
      if (v14 >> 3 <= (v13 + 1))
      {
        v15 = v13 + 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v22 = a4;
      if (v16)
      {
        sub_24BCB53E8(a4, v16);
      }

      v18 = 0;
      v19 = (16 * v13);
      v21 = 0;
      *v19 = v17;
      v17 = 0uLL;
      v20 = 16 * v13 + 16;
      sub_24BCC9818(a4, &v18);
      v12 = a4[1];
      sub_24BCC98C0(&v18);
    }

    else
    {
      *v11 = v17;
      v12 = v11 + 1;
      v17 = 0uLL;
    }

    a4[1] = v12;
    sub_24BE7F218(&v17);
  }
}

void sub_24BECAF20(const void ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v27[4] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = **a1;
  v10 = (*a1)[1];
  v11 = (v10 - v9) >> 2;
  if (v11 == 2)
  {
    if (v10 == v9 || (LODWORD(v25) = *v9, (v10 - v9) <= 4))
    {
      sub_24BC923C0();
    }

    HIDWORD(v25) = *(v9 + 1);
    v26 = 1;
    v17 = 0;
    v18 = 0;
    __p = 0;
    sub_24BCC9910(&__p, &v25, v27, 3uLL);
    sub_24BEA4500(a1, &__p, a2, a3, a4);
    v12 = __p;
    if (__p)
    {
      v17 = __p;
      goto LABEL_12;
    }
  }

  else if (v11 == 1)
  {
    v13 = v8[6];
    LODWORD(v25) = 1;
    HIDWORD(v25) = v13;
    v26 = 1;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    sub_24BCC9910(&v19, &v25, v27, 3uLL);
    sub_24BEA4500(a1, &v19, a2, a3, a4);
    v12 = v19;
    if (v19)
    {
      v20 = v19;
      goto LABEL_12;
    }
  }

  else if (v11)
  {
    v14 = a1[1];
    *a4 = v8;
    *(a4 + 8) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v25 = 0x100000001;
    v26 = 1;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    sub_24BCC9910(&v22, &v25, v27, 3uLL);
    sub_24BEA4500(a1, &v22, a2, a3, a4);
    v12 = v22;
    if (v22)
    {
      v23 = v22;
LABEL_12:
      operator delete(v12);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_24BECB0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BECB134(const void ****a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_24BE9CDA0(a4, (a1[1] - *a1) >> 4);
  v8 = *a1;
  for (i = a1[1]; v8 != i; v8 += 2)
  {
    sub_24BECAF20(v8, a2, a3, &v17);
    v11 = a4[1];
    v10 = a4[2];
    if (v11 >= v10)
    {
      v13 = (v11 - *a4) >> 4;
      if ((v13 + 1) >> 60)
      {
        sub_24BC8E01C();
      }

      v14 = v10 - *a4;
      v15 = v14 >> 3;
      if (v14 >> 3 <= (v13 + 1))
      {
        v15 = v13 + 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v16 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v22 = a4;
      if (v16)
      {
        sub_24BCB53E8(a4, v16);
      }

      v18 = 0;
      v19 = (16 * v13);
      v21 = 0;
      *v19 = v17;
      v17 = 0uLL;
      v20 = 16 * v13 + 16;
      sub_24BCC9818(a4, &v18);
      v12 = a4[1];
      sub_24BCC98C0(&v18);
    }

    else
    {
      *v11 = v17;
      v12 = v11 + 1;
      v17 = 0uLL;
    }

    a4[1] = v12;
    sub_24BE7F218(&v17);
  }
}

uint64_t **sub_24BECB2C0@<X0>(uint64_t **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v4 = result;
  __p[6] = *MEMORY[0x277D85DE8];
  v6 = *result;
  if (*(*result + 14) == 12)
  {
    memset(__p, 0, 24);
    sub_24BCC9A1C(__p, *v6, v6[1], (v6[1] - *v6) >> 2);
    v9 = (*v4)[7];
    sub_24BF02A98(a2, a3);
    operator new();
  }

  v10 = result[1];
  *a4 = v6;
  a4[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BECB478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_24BCC961C(&a17);
  sub_24BE7F218(&a18);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BECB4CC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *(*a1 + 56);
  LODWORD(v32) = v9;
  BYTE4(v32) = BYTE4(v9);
  v10 = *(*a2 + 56);
  LODWORD(v31[0]) = v10;
  BYTE4(v31[0]) = BYTE4(v10);
  v11 = sub_24BE80C80(&v32, v31);
  v33 = v11;
  v34 = BYTE4(v11);
  if ((sub_24BE80D54(&v33, dword_24BFF8830) & 1) != 0 || !v33)
  {
    v12 = a1[1];
    v30[0] = *a1;
    v30[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    sub_24BEA3B14(v30, v33, *a5, a5[1], v31);
    v13 = a2[1];
    v28[0] = *a2;
    v28[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
    }

    sub_24BEA3B14(v28, v33, *a5, a5[1], v29);
    sub_24BEAD8B0(v31, v29, *a5, a5[1], &v32);
    sub_24BE7F218(v29);
    sub_24BE7F218(v28);
    sub_24BE7F218(v31);
    sub_24BE7F218(v30);
    v14 = *v32;
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
    sub_24BF02A98(*a5, a5[1]);
    operator new();
  }

  sub_24BCE1268(&v32);
  v15 = sub_24BC95264(&v32, "[", 1);
  v16 = *(a4 + 23);
  if (v16 >= 0)
  {
    v17 = a4;
  }

  else
  {
    v17 = *a4;
  }

  if (v16 >= 0)
  {
    v18 = *(a4 + 23);
  }

  else
  {
    v18 = *(a4 + 8);
  }

  v19 = sub_24BC95264(v15, v17, v18);
  v20 = sub_24BC95264(v19, "] Only allowed on integer or BOOLean types but got types ", 57);
  v21 = *(*a1 + 56);
  LODWORD(v31[0]) = v21;
  BYTE4(v31[0]) = BYTE4(v21);
  v22 = sub_24BF031F4(v20, v31);
  v23 = sub_24BC95264(v22, " and ", 5);
  v24 = *(*a2 + 56);
  LODWORD(v29[0]) = v24;
  BYTE4(v29[0]) = BYTE4(v24);
  v25 = sub_24BF031F4(v23, v29);
  sub_24BC95264(v25, ".", 1);
  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  MEMORY[0x24C254100](exception, v31);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BECB800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a29 < 0)
  {
    operator delete(__p);
    if ((v31 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a30);
      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v30);
  goto LABEL_6;
}

void sub_24BECB8D8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  sub_24BC836D4(__p, "bitwise_and");
  sub_24BECB4CC(a1, a2, 0, __p, v7);
}

void sub_24BECB950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BECB974(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  sub_24BC836D4(__p, "bitwise_or");
  sub_24BECB4CC(a1, a2, 1, __p, v7);
}

void sub_24BECB9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BECBA10(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  sub_24BC836D4(__p, "bitwise_xor");
  sub_24BECB4CC(a1, a2, 2, __p, v7);
}

void sub_24BECBA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BECBAAC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a3;
  v20[1] = a4;
  v8 = *(*a1 + 56);
  __p = v8;
  __p_4 = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19[0]) = v9;
  BYTE4(v19[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&__p, v19);
  __p = v10;
  __p_4 = BYTE4(v10);
  v11 = sub_24BE80C80(&__p, dword_24BFF09F8);
  v12 = a1[1];
  v18[0] = *a1;
  v18[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v18, v11, a3, a4, v19);
  v13 = a2[1];
  v16[0] = *a2;
  v16[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v16, v11, a3, a4, v17);
  sub_24BC836D4(&__p, "left_shift");
  sub_24BECB4CC(v19, v17, 3, &__p, v20);
}

void sub_24BECBC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a18);
  sub_24BE7F218(&a16);
  sub_24BE7F218(&a22);
  sub_24BE7F218(&a20);
  _Unwind_Resume(a1);
}

void sub_24BECBC64(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a3;
  v20[1] = a4;
  v8 = *(*a1 + 56);
  __p = v8;
  __p_4 = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19[0]) = v9;
  BYTE4(v19[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&__p, v19);
  __p = v10;
  __p_4 = BYTE4(v10);
  v11 = sub_24BE80C80(&__p, dword_24BFF09F8);
  v12 = a1[1];
  v18[0] = *a1;
  v18[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v18, v11, a3, a4, v19);
  v13 = a2[1];
  v16[0] = *a2;
  v16[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v16, v11, a3, a4, v17);
  sub_24BC836D4(&__p, "right_shift");
  sub_24BECB4CC(v19, v17, 4, &__p, v20);
}

void sub_24BECBDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a18);
  sub_24BE7F218(&a16);
  sub_24BE7F218(&a22);
  sub_24BE7F218(&a20);
  _Unwind_Resume(a1);
}

uint64_t **sub_24BECBE1C@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v5 = result;
  v26 = *MEMORY[0x277D85DE8];
  v7 = *result;
  if (*a2 != *(*result + 14))
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    sub_24BCC9A1C(&v23, *v7, v7[1], (v7[1] - *v7) >> 2);
    v12 = *(*v5 + 60);
    v13 = *(a2 + 4);
    if ((*v5)[1] == **v5 && v13 != v12)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[view] Changing the type of a scalar is only allowed for types with the same size.");
      goto LABEL_18;
    }

    if (v13 <= v12)
    {
      if (v13 >= v12)
      {
        v15 = v24;
LABEL_16:
        memset(__p, 0, sizeof(__p));
        sub_24BCC9A1C(__p, v23, v15, (v15 - v23) >> 2);
        v19 = *a2;
        sub_24BF02A98(a3, a4);
        operator new();
      }

      v15 = v24;
      v18 = *(v24 - 4) * (v12 / v13);
    }

    else
    {
      v15 = v24;
      v16 = *(v24 - 4);
      v17 = v13 / v12;
      v18 = v16 / v17;
      if (v16 % v17)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "[view] When viewing as a larger dtype, the size in bytes of the last axis must be a multiple of the requested type size.");
LABEL_18:
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
      }
    }

    *(v15 - 4) = v18;
    goto LABEL_16;
  }

  v8 = result[1];
  *a5 = v7;
  a5[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BECC0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  __cxa_free_exception(v19);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BECC15C(uint64_t **a1@<X0>, int **a2@<X1>, unsigned int **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  if (*a3 == v9)
  {
    v22 = a1[1];
    *a6 = *a1;
    a6[1] = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (a2[1] - *a2 < (v9 - v8))
    {
      sub_24BCE1268(v36);
      v28 = sub_24BC95264(v36, "[roll] At least one shift value per axis is required, ", 54);
      v29 = MEMORY[0x24C2543E0](v28, a2[1] - *a2);
      v30 = sub_24BC95264(v29, " provided for ", 14);
      v31 = MEMORY[0x24C2543E0](v30, a3[1] - *a3);
      sub_24BC95264(v31, " axes.", 6);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v35);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }

    memset(&v35, 0, sizeof(v35));
    v14 = a1[1];
    *a6 = *a1;
    a6[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
      v8 = *a3;
      v9 = a3[1];
    }

    if (v9 != v8)
    {
      v15 = *v8;
      v16 = (*a1)[1] - **a1;
      if ((v15 & 0x80000000) == 0 || (v15 = v15 + (v16 >> 2), v15 >= 0))
      {
        if (v15 < (v16 >> 2))
        {
          v17 = **a2;
          if (v17 < 0)
          {
            v19 = sub_24BD1EEAC(a1, v15);
            v18 = 0;
          }

          else
          {
            v18 = sub_24BD1EEAC(a1, v15);
            v19 = sub_24BD1EEAC(a1, v15);
          }

          v33 = v18 + v17 / v19 * v19 - v17;
          memset(&__p, 0, sizeof(__p));
          sub_24BCC9910(&__p, &v33, &__p, 1uLL);
          sub_24BEA8718(a6, &__p, v15, a4, a5, v36);
          sub_24BCC97B8(&v35.__r_.__value_.__l.__data_);
          v35 = v36[0];
          memset(v36, 0, 24);
          v37 = v36;
          sub_24BCC961C(&v37);
          if (__p.__r_.__value_.__r.__words[0])
          {
            __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v20 = v35.__r_.__value_.__r.__words[0];
          v21 = *v35.__r_.__value_.__l.__data_;
          *v35.__r_.__value_.__l.__data_ = *(v35.__r_.__value_.__r.__words[0] + 16);
          *(v20 + 16) = v21;
          *&v36[0].__r_.__value_.__l.__data_ = 0uLL;
          sub_24BE7F218(v36);
          sub_24BEAA09C(&v35, v15, a4, a5);
        }
      }

      sub_24BCE1268(v36);
      v23 = sub_24BC95264(v36, "[roll] Invalid axis ", 20);
      v24 = MEMORY[0x24C2543C0](v23, **a3);
      v25 = sub_24BC95264(v24, " for array with ", 16);
      v26 = MEMORY[0x24C2543E0](v25, ((*a1)[1] - **a1) >> 2);
      sub_24BC95264(v26, " dimensions.", 12);
      v27 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(v27, &__p);
      v27->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v27, &unk_285F94708, MEMORY[0x277D82610]);
    }

    v36[0].__r_.__value_.__r.__words[0] = &v35;
    sub_24BCC961C(v36);
  }
}

void sub_24BECC528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a23);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void sub_24BECC5F8(const void ***a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void ***a5@<X8>)
{
  v10 = *a1;
  v28 = 0;
  v27 = 0uLL;
  sub_24BCC9A1C(&v27, *v10, v10[1], (v10[1] - *v10) >> 2);
  v21 = -1;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  sub_24BCC9910(&v22, &v21, &v22, 1uLL);
  sub_24BEA4500(a1, &v22, a3, a4, v25);
  v17 = a2;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  sub_24BCC9910(&v18, &v17, &v18, 1uLL);
  v13 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  sub_24BCC9910(&v14, &v13, &v14, 1uLL);
  sub_24BECC15C(v25, &v18, &v14, a3, a4, v26);
  *__p = v27;
  v12 = v28;
  v28 = 0;
  v27 = 0uLL;
  sub_24BEA4500(v26, __p, a3, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_24BE7F218(v26);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  sub_24BE7F218(v25);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v27)
  {
    *(&v27 + 1) = v27;
    operator delete(v27);
  }
}

void sub_24BECC794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(v23 - 96);
  if (a14)
  {
    operator delete(a14);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_24BE7F218(v23 - 112);
  if (a22)
  {
    operator delete(a22);
  }

  v25 = *(v23 - 80);
  if (v25)
  {
    *(v23 - 72) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void sub_24BECC828(const void ***a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void ***a5@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *v5++;
      v7 += v8;
    }

    while (v5 != v6);
  }

  sub_24BECC5F8(a1, v7, a3, a4, a5);
}

void sub_24BECC854(uint64_t **a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v15 = a2;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_24BCC9910(&v16, &v15, &v16, 1uLL);
  v11 = a3;
  v13 = 0;
  v14 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v11, &__p, 1uLL);
  sub_24BECC15C(a1, &v16, &__p, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_24BECC920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

void sub_24BECC954(uint64_t **a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v12 = a2;
  sub_24BD0E524(__p, (*(a3 + 8) - *a3) >> 2);
  sub_24BECC15C(a1, __p, a3, a4, a5, a6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_24BECC9E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BECCA00(uint64_t **a1@<X0>, int **a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  if (*a2 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = *v11++;
      v13 += v14;
    }

    while (v11 != v12);
  }

  v19 = v13;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  sub_24BCC9910(&v20, &v19, &v20, 1uLL);
  v15 = a3;
  v17 = 0;
  v18 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v15, &__p, 1uLL);
  sub_24BECC15C(a1, &v20, &__p, a4, a5, a6);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_24BECCAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
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

uint64_t sub_24BECCB28@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = (*a1)[7];
  v14 = v8;
  v15 = BYTE4(v8);
  result = sub_24BE80D54(&v14, dword_24BFF0870);
  v10 = *a1;
  if (result)
  {
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, *v10, v10[1], (v10[1] - *v10) >> 2);
    sub_24BF02A98(a2, a3);
    operator new();
  }

  v11 = a1[1];
  *a4 = v10;
  a4[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BECCCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_24BCC961C(&a17);
  sub_24BE7F218(v17 - 56);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BECCD44(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  v11 = v6;
  v12 = BYTE4(v6);
  v7 = sub_24BE80D54(&v11, dword_24BFF0870);
  v8 = *a1;
  if (v7)
  {
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, *v8, v8[1], (v8[1] - *v8) >> 2);
    sub_24BF02A98(a2, a3);
    operator new();
  }

  v9 = v8[7];
  sub_24BF02A98(v7, 0);
  sub_24BEA51FC(v8);
}

void sub_24BECCF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_24BCC961C(&a17);
  sub_24BE7F218(&a18);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BECCF78(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  memset(__p, 0, 24);
  sub_24BCC9A1C(__p, *v7, v7[1], (v7[1] - *v7) >> 2);
  v8 = (*a1)[7];
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BECD110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_24BCC961C(&a17);
  sub_24BE7F218(&a18);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BECD164(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, _BYTE *a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_24BCC9A1C(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_24BCC9A1C(a1 + 24, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_24BCC9A1C(a1 + 48, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 72) = *a5;
  return a1;
}

void sub_24BECD204(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BECD238(void *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a1 != *a2)
  {
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = a1[1];
    *a1 = v3;
    a1[1] = v4;
    if (v5)
    {
      sub_24BC9EC78(v5);
    }
  }

  return a1;
}

void *sub_24BECD290(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  sub_24BECD314(a1, a2, a3, v4);
  return a1;
}

uint64_t sub_24BECD314(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BECD3A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BECD3C0(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  __p[3] = a4;
  v4 = a3;
  memset(__p, 0, 24);
  sub_24BCC9910(__p, &v4, __p, 1uLL);
  sub_24BCC9FE4();
}

void sub_24BECD444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    sub_24BC9EC78(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BECD474(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BECD798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void sub_24BECD800(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECD89C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98D78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

double sub_24BECD9A4(uint64_t a1, uint64_t *a2, __int128 *a3, __int128 *a4, uint64_t *a5)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *a1 = &unk_285F98DC8;
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a3 + 2);
  v9 = *a3;
  *(a3 + 2) = 0;
  *a3 = 0u;
  v10 = *(a4 + 2);
  v11 = *a4;
  *a4 = 0;
  *(a4 + 8) = 0u;
  v12 = *a5;
  *(a1 + 40) = v7;
  *(a1 + 24) = &unk_285F9C020;
  *(a1 + 32) = v6;
  *(a1 + 48) = v9;
  *(a1 + 64) = v8;
  *(a1 + 72) = v11;
  *(a1 + 88) = v10;
  *(a1 + 96) = v12;
  return result;
}

void sub_24BECDA4C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98DC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECDAE8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98E18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECDB84(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98E68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BECDC74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285F98EB8;
  v4 = *a2;
  v5 = *(a2 + 2);
  *(a1 + 48) = 0;
  v6 = a1 + 48;
  *(v6 - 8) = v5;
  *(v6 - 24) = &unk_285F9DD28;
  *(v6 - 16) = v4;
  *(v6 + 8) = 0u;
  sub_24BCC9A1C(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_24BECDD34(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98EB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECDDD0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98F08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void *sub_24BECDE4C(void *result, _DWORD *a2)
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
        v11 = &v4[-*result] >> 1;
      }

      sub_24BC92E0C(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

void *sub_24BECDF4C(void *a1, int *a2, int *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_24BECDFD0(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

uint64_t sub_24BECDFD0(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_24BD48104(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_24BECE068(void *a1, int *a2, int *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_24BECDFD0(a1, v4, v6++);
    }

    while (v6 != a3);
  }

  return a1;
}

void *sub_24BECE178(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F98F58;
  sub_24BECE288((a1 + 3), *a2, *(a2 + 8), a3, a4, a5);
  return a1;
}

void sub_24BECE20C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98F58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BECE288(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  *(a1 + 16) = a3;
  *a1 = &unk_285F9E1F0;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_24BCC9A1C(a1 + 24, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_24BCC9A1C(a1 + 48, *a5, a5[1], (a5[1] - *a5) >> 2);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_24BCC9A1C(a1 + 72, *a6, a6[1], (a6[1] - *a6) >> 2);
  return a1;
}

void sub_24BECE340(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BECE400(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F98FA8;
  sub_24BECE510((a1 + 3), *a2, *(a2 + 8), a3, a4, a5);
  return a1;
}

void sub_24BECE494(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98FA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BECE510(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  *(a1 + 16) = a3;
  *a1 = &unk_285F9E278;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_24BCC9A1C(a1 + 24, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_24BCC9A1C(a1 + 48, *a5, a5[1], (a5[1] - *a5) >> 2);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_24BCC9A1C(a1 + 72, *a6, a6[1], (a6[1] - *a6) >> 2);
  return a1;
}

void sub_24BECE5C8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BECE5FC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BCD06B0(result, a2);
  }

  return result;
}

void sub_24BECE664(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BECE704(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285F98FF8;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a4;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(v8 - 8) = v6;
  *(v8 - 24) = &unk_285F9E410;
  *(v8 - 16) = v5;
  *(v8 + 8) = 0u;
  sub_24BCC9A1C(v8, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 72) = v7;
  return a1;
}

void sub_24BECE7CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F98FF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECE868(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99048;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void *sub_24BECE970(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F99098;
  sub_24BECEA80((a1 + 3), *a2, *(a2 + 8), a3, a4, a5);
  return a1;
}

void sub_24BECEA04(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99098;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BECEA80(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  *(a1 + 16) = a3;
  *a1 = &unk_285F9D970;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_24BCC9A1C(a1 + 24, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_24BCC9A1C(a1 + 48, *a5, a5[1], (a5[1] - *a5) >> 2);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_24BCC9A1C(a1 + 72, *a6, a6[1], (a6[1] - *a6) >> 2);
  return a1;
}

void sub_24BECEB38(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BECEB6C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC91F24(result, a2);
  }

  return result;
}

void sub_24BECEBD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BECEC64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285F990E8;
  v4 = *a2;
  v5 = *(a2 + 2);
  *(a1 + 48) = 0;
  v6 = a1 + 48;
  *(v6 - 8) = v5;
  *(v6 - 24) = &unk_285F9E840;
  *(v6 - 16) = v4;
  *(v6 + 8) = 0u;
  sub_24BCC9A1C(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_24BECED24(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F990E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BECEE14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285F99138;
  v4 = *a2;
  v5 = *(a2 + 2);
  *(a1 + 48) = 0;
  v6 = a1 + 48;
  *(v6 - 8) = v5;
  *(v6 - 24) = &unk_285F9C240;
  *(v6 - 16) = v4;
  *(v6 + 8) = 0u;
  sub_24BCC9A1C(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_24BECEED4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99138;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECEF70(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99188;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECF00C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F991D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECF0A8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99228;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECF144(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECF1E0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F992C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECF27C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECF364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_24BC9EC78(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BECF394(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BECF600(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void sub_24BECF668(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99368;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BECF768(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285F993B8;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a3;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(v8 - 8) = v6;
  *(v8 - 4) = v7;
  *(v8 - 24) = &unk_285F9DDB0;
  *(v8 - 16) = v5;
  *(v8 + 8) = 0u;
  sub_24BCC9A1C(v8, *a4, a4[1], (a4[1] - *a4) >> 2);
  return a1;
}

void sub_24BECF82C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F993B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECF8C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99408;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECF964(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECFA00(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F994A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECFA9C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F994F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECFB38(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99548;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECFBD4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99598;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECFC70(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F995E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECFD0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99638;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECFDA8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99688;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECFE44(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F996D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECFEE0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BECFF7C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0018(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F997C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED00B4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0150(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED01EC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F998B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0288(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0324(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99958;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED03C0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F999A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED045C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F999F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED04F8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99A48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0594(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99A98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0630(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99AE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED06CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99B38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0768(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99B88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0804(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99BD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED08A0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99C28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED093C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99C78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED09D8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99CC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0A74(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99D18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0B10(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99D68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0BAC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99DB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0C48(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99E08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0CE4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99E58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0D80(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0E1C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0EB8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0F54(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED0FF0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F99FE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED108C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED1128(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A088;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED11C4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A0D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED1260(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A128;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED12FC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A178;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED1398(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A1C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED1434(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

__int128 *sub_24BED14B0(__int128 *result, void *a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 == *(result + 3))
  {
    v5 = *(result + 1);
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *result) >> 3;
      }

      v9 = *(result + 4);
      v11[4] = *(v3 + 4);
      sub_24BCB53E8(v9, v8);
    }

    v6 = (((v5 - *result) >> 4) + 1 + ((((v5 - *result) >> 4) + 1) >> 63)) >> 1;
    result = sub_24BDFEB14(v11, v5, v4, &v5[-v6]);
    v4 = v7;
    *(v3 + 1) -= 16 * v6;
    *(v3 + 2) = v7;
  }

  *v4 = *a2;
  v10 = a2[1];
  *(v4 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 16;
  return result;
}

void *sub_24BED1664(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F9A268;
  sub_24BED1770((a1 + 3), *a2, *(a2 + 8), a3, a4);
  return a1;
}

void sub_24BED16F4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BED1770(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5)
{
  *(a1 + 16) = a3;
  *a1 = &unk_285F9CE48;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_24BCC9A1C(a1 + 24, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_24BCC9A1C(a1 + 48, *a5, a5[1], (a5[1] - *a5) >> 2);
  return a1;
}

void sub_24BED17FC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BED189C(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285F9A2B8;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *a3;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(v8 - 8) = v6;
  *(v8 - 4) = v7;
  *(v8 - 24) = &unk_285F9DF48;
  *(v8 - 16) = v5;
  *(v8 + 8) = 0u;
  sub_24BCC9A1C(v8, *a4, a4[1], (a4[1] - *a4) >> 2);
  return a1;
}

void sub_24BED1960(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A2B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED19FC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED1A98(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED1B34(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A3A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED1BD0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A3F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void *sub_24BED1D00(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, int *a7, char *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F9A448;
  sub_24BED1E30((a1 + 3), *a2, *(a2 + 8), a3, a4, a5, a6, *a7, *a8);
  return a1;
}

void sub_24BED1DB4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BED1E30(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, int a8, char a9)
{
  *(a1 + 16) = a3;
  *a1 = &unk_285F9C4E8;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_24BCC9A1C(a1 + 24, *a5, a5[1], (a5[1] - *a5) >> 2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_24BCC9A1C(a1 + 48, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_24BCC9A1C(a1 + 72, *a6, a6[1], (a6[1] - *a6) >> 2);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_24BCC9A1C(a1 + 96, *a7, a7[1], (a7[1] - *a7) >> 2);
  *(a1 + 120) = a8;
  *(a1 + 124) = a9;
  return a1;
}

void sub_24BED1F24(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[10] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[7] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[4] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BED1F90(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A498;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED202C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A4E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED20C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A538;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED2144(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  __p[3] = a4;
  v4 = a3;
  memset(__p, 0, 24);
  sub_24BCC9910(__p, &v4, __p, 1uLL);
  sub_24BCC9FE4();
}

void sub_24BED21C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    sub_24BC9EC78(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BED21F8(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BED2464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

void sub_24BED24CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED2568(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A5D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BED25E4(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_24BC8E01C();
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

  v18 = a1;
  if (v6)
  {
    sub_24BC91DBC(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_24BCC9A1C(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_24BC91E14(&v14);
  return v8;
}

void sub_24BED2700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC91E14(va);
  _Unwind_Resume(a1);
}

void sub_24BED2734(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A628;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED27D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A678;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED286C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A6C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED2908(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED29A4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A768;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED2A40(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A7B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED2ADC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A808;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED2B78(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F9A858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BED2BF4(uint64_t a1)
{
  sub_24BCE1268(v4);
  sub_24BC95264(v4, "[Primitive::jvp] Not implemented for ", 37);
  (*(*a1 + 40))(a1, v4);
  sub_24BC95264(v4, ".", 1);
  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(exception, &v3);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BED2CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_6:
      a15 = *MEMORY[0x277D82828];
      *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82828] + 24);
      a16 = MEMORY[0x277D82878] + 16;
      if (a29 < 0)
      {
        operator delete(a24);
      }

      a16 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&a17);
      std::ostream::~ostream();
      MEMORY[0x24C2547D0](&a32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v32);
  goto LABEL_6;
}

void sub_24BED2E18(uint64_t a1)
{
  sub_24BCE1268(v4);
  sub_24BC95264(v4, "[Primitive::vjp] Not implemented for ", 37);
  (*(*a1 + 40))(a1, v4);
  sub_24BC95264(v4, ".", 1);
  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(exception, &v3);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BED2F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_6:
      a15 = *MEMORY[0x277D82828];
      *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82828] + 24);
      a16 = MEMORY[0x277D82878] + 16;
      if (a29 < 0)
      {
        operator delete(a24);
      }

      a16 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&a17);
      std::ostream::~ostream();
      MEMORY[0x24C2547D0](&a32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v32);
  goto LABEL_6;
}

void sub_24BED303C(uint64_t a1)
{
  sub_24BCE1268(v4);
  sub_24BC95264(v4, "[Primitive::vmap] Not implemented for ", 38);
  (*(*a1 + 40))(a1, v4);
  sub_24BC95264(v4, ".", 1);
  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(exception, &v3);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BED3128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_6:
      a15 = *MEMORY[0x277D82828];
      *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82828] + 24);
      a16 = MEMORY[0x277D82878] + 16;
      if (a29 < 0)
      {
        operator delete(a24);
      }

      a16 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&a17);
      std::ostream::~ostream();
      MEMORY[0x24C2547D0](&a32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v32);
  goto LABEL_6;
}

void sub_24BED3260(uint64_t a1)
{
  sub_24BCE1268(v4);
  sub_24BC95264(v4, "[Primitive::output_shapes] ", 27);
  (*(*a1 + 40))(a1, v4);
  sub_24BC95264(v4, " cannot infer output shapes.", 28);
  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(exception, &v3);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BED334C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_6:
      a15 = *MEMORY[0x277D82828];
      *(&a15 + *(a15 - 24)) = *(MEMORY[0x277D82828] + 24);
      a16 = MEMORY[0x277D82878] + 16;
      if (a29 < 0)
      {
        operator delete(a24);
      }

      a16 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&a17);
      std::ostream::~ostream();
      MEMORY[0x24C2547D0](&a32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v33)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v32);
  goto LABEL_6;
}

void sub_24BED34A8(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  sub_24BEB7124(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BED3574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BED3664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BED3694(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*(a2 + 8) - *a2 >= 0x11uLL)
  {
    sub_24BEA3D40(v5, v5 + 2, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  v6 = v5[1];
  v8[0] = *v5;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCC9984(a3, v8, &v9, 1uLL);
  sub_24BE7F218(v8);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_24BED3774(uint64_t **a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2[1] - *a2 == 4)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v3 = *a1;
    v4 = a1[1];
    v5 = *MEMORY[0x277D85DE8];

    sub_24BCC9548(a3, v3, v4, (v4 - v3) >> 4);
  }

  else
  {
    v6 = **a1;
    v7 = (*a1)[1];
    v11[0] = v6;
    v11[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      v8 = (*a1)[1];
      v12 = **a1;
      v13 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v12 = v6;
      v13 = 0;
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_24BCC9984(a3, v11, &v14, 2uLL);
    for (i = 2; i != -2; i -= 2)
    {
      sub_24BE7F218(&v11[i]);
    }

    v10 = *MEMORY[0x277D85DE8];
  }
}

void sub_24BED38A8(_Unwind_Exception *a1)
{
  for (i = 16; i != -16; i -= 16)
  {
    sub_24BE7F218(v1 + i);
  }

  _Unwind_Resume(a1);
}

void sub_24BED38CC(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEA3D40(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BED39F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

void sub_24BED3A58(uint64_t **a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (**a2 == -1 && (*a2)[1] == -1)
  {
    v37 = *a1;
    v38 = (*a1)[1];
    *a4 = **a1;
    *(a4 + 8) = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    v40 = v37[2];
    v39 = v37[3];
    *(a4 + 16) = v40;
    *(a4 + 24) = v39;
    if (v39)
    {
      atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
    }

    *(a4 + 32) = -1;
  }

  else
  {
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[1];
    *&v50 = v7;
    *(&v50 + 1) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      v6 = *a1;
    }

    v9 = v6[2];
    v10 = v6[3];
    *&v49 = v9;
    *(&v49 + 1) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = (*(v7 + 8) - *v7) >> 2;
    v13 = **a2;
    v12 = (*a2)[1];
    if (v13 == -1)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = (*(v7 + 8) - *v7) >> 2;
    }

    v15 = (v9[1] - *v9) >> 2;
    if (v12 == -1)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = v15;
    }

    if (v14 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    v46 = *a3;
    v47 = *(a3 + 8);
    v48 = v17;
    v18 = v12 + v17 - v15;
    v45 = v18;
    v44[0] = v7;
    v44[1] = *(&v50 + 1);
    if (*(&v50 + 1))
    {
      atomic_fetch_add_explicit((*(&v50 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_24BEEF1E8(&v46, v44, v42);
    v19 = *v42;
    v42[0] = 0;
    v42[1] = 0;
    v20 = *(&v50 + 1);
    v50 = v19;
    if (v20)
    {
      sub_24BC9EC78(v20);
    }

    sub_24BE7F218(v42);
    sub_24BE7F218(v44);
    v43 = v49;
    if (*(&v49 + 1))
    {
      atomic_fetch_add_explicit((*(&v49 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_24BEEF1E8(&v46, &v43, v42);
    v21 = v13 + v17 - v11;
    v22 = *v42;
    v42[0] = 0;
    v42[1] = 0;
    v23 = *(&v49 + 1);
    v49 = v22;
    if (v23)
    {
      sub_24BC9EC78(v23);
    }

    sub_24BE7F218(v42);
    sub_24BE7F218(&v43);
    if (v18 != v21)
    {
      sub_24BC94F74(v42, (*(v49 + 8) - *v49) >> 2);
      v24 = v42[0];
      v25 = v42[1];
      if (v42[0] != v42[1])
      {
        v26 = 0;
        v27 = (v42[1] - v42[0] - 4) >> 2;
        v28 = vdupq_n_s64(v27);
        v29 = (v27 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v30 = v42[0] + 8;
        do
        {
          v31 = vdupq_n_s64(v26);
          v32 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_24BFBC5B0)));
          if (vuzp1_s16(v32, *v28.i8).u8[0])
          {
            *(v30 - 2) = v26;
          }

          if (vuzp1_s16(v32, *&v28).i8[2])
          {
            *(v30 - 1) = v26 + 1;
          }

          if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_24BFBC5E0)))).i32[1])
          {
            *v30 = v26 + 2;
            v30[1] = v26 + 3;
          }

          v26 += 4;
          v30 += 4;
        }

        while (v29 != v26);
      }

      v33 = &v24[4 * v18];
      v34 = (v25 - (v33 + 4));
      if (v25 != v33 + 4)
      {
        memmove(v33, v33 + 4, v25 - (v33 + 4));
        v24 = v42[0];
      }

      v42[1] = &v34[v33];
      sub_24BEAAF40(v42, &v24[4 * v21], &v45);
      memset(__p, 0, sizeof(__p));
      sub_24BCC9A1C(__p, v42[0], v42[1], (v42[1] - v42[0]) >> 2);
      sub_24BEACEBC(&v49, __p, *a3, *(a3 + 8) | 0x100000000);
    }

    v35 = *(&v50 + 1);
    *a4 = v50;
    *(a4 + 8) = v35;
    if (v35)
    {
      atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
    }

    v36 = *(&v49 + 1);
    *(a4 + 16) = v49;
    *(a4 + 24) = v36;
    if (v36)
    {
      atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
    }

    *(a4 + 32) = v21;
    sub_24BE7F218(&v49);
    sub_24BE7F218(&v50);
  }
}

void sub_24BED3DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  sub_24BE7F218(v20 - 80);
  sub_24BE7F218(v20 - 64);
  _Unwind_Resume(a1);
}

void sub_24BED3E58(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v9 = *a3;
  sub_24BC94F74(&v33, (*(**a3 + 8) - ***a3) >> 2);
  v10 = v33;
  v11 = v34;
  if (v33 != v34)
  {
    v12 = 0;
    v13 = (v34 - v33 - 4) >> 2;
    v14 = vdupq_n_s64(v13);
    v15 = (v13 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v16 = v33 + 8;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v18, *v14.i8).u8[0])
      {
        *(v16 - 2) = v12;
      }

      if (vuzp1_s16(v18, *&v14).i8[2])
      {
        *(v16 - 1) = v12 + 1;
      }

      if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_24BFBC5E0)))).i32[1])
      {
        *v16 = v12 + 2;
        v16[1] = v12 + 3;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v15 != v12);
  }

  v19 = *(v11 - 2);
  *(v11 - 2) = *(v11 - 1);
  *(v11 - 1) = v19;
  v20 = *a4;
  v21 = *(a4 + 8);
  if (*a4 != v21)
  {
    do
    {
      if (*v20 == 1)
      {
        v25 = v9[1];
        *&v32 = *v9;
        *(&v32 + 1) = v25;
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
        }

        if (*(a1 + 20) != 1.0)
        {
          v26 = *(*v9 + 56);
          sub_24BCCBB70();
        }

        v27 = *a2;
        memset(__p, 0, sizeof(__p));
        sub_24BCC9A1C(__p, v33, v34, (v34 - v33) >> 2);
        sub_24BEACEBC(v27, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      if (!*v20)
      {
        v22 = v9[1];
        *&v32 = *v9;
        *(&v32 + 1) = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        if (*(a1 + 20) != 1.0)
        {
          v23 = *(*v9 + 56);
          sub_24BCCBB70();
        }

        v24 = *a2;
        memset(v31, 0, sizeof(v31));
        sub_24BCC9A1C(v31, v33, v34, (v34 - v33) >> 2);
        sub_24BEACEBC(v24 + 2, v31, *(a1 + 8), *(a1 + 16) | 0x100000000);
      }

      v28 = v9[1];
      *&v32 = *v9;
      *(&v32 + 1) = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      if (*(a1 + 24) != 1.0)
      {
        v29 = *(*v9 + 56);
        sub_24BCCBB70();
      }

      sub_24BE811EC(a5, &v32);
      sub_24BE7F218(&v32);
      ++v20;
    }

    while (v20 != v21);
    v10 = v33;
  }

  if (v10)
  {
    v34 = v10;
    operator delete(v10);
  }
}

void sub_24BED4350(uint64_t a1, uint64_t ***a2, unsigned int **a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = **a3;
  if (v7 < 1)
  {
    v8 = v6[1];
    v23 = *v6;
    v24 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_24BEACB34(v6, v7, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, &v23);
  }

  v9 = *a2;
  v10 = (*a3)[1];
  if (v10 < 1)
  {
    v11 = v9[3];
    v21 = v9[2];
    v22 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_24BEACB34((v9 + 2), v10, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, &v21);
  }

  v12 = *a2;
  v13 = (*a3)[2];
  if (v13 < 1)
  {
    v14 = v12[4];
    v15 = v12[5];
    v19 = v14;
    v20 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_24BEACB34((v12 + 4), v13, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, &v19);
    v14 = v19;
  }

  v18[0] = v14;
  v18[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  }

  v17[0] = v23;
  v17[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
  }

  v16[0] = v21;
  v16[1] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEC64B8(v18, v17, v16, a1 + 20, a1 + 24, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BED45C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_24BE7F218(v22 - 104);
  sub_24BE7F218(v22 - 88);
  _Unwind_Resume(a1);
}

void sub_24BED46B8(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 56);
  sub_24BCCCD5C();
}

void sub_24BED480C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  sub_24BE7F218(va3);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  sub_24BE7F218(va2);
  _Unwind_Resume(a1);
}

void sub_24BED4934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BED4988(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 56);
  sub_24BCCCD5C();
}

void sub_24BED4AC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  sub_24BE7F218(va3);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  sub_24BE7F218(va2);
  _Unwind_Resume(a1);
}

void sub_24BED4BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BED4C30(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 56);
  sub_24BCCCD5C();
}

void sub_24BED4D68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  sub_24BE7F218(va3);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  sub_24BE7F218(va2);
  _Unwind_Resume(a1);
}

void sub_24BED4E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BED4ED8(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 56);
  sub_24BCCCD5C();
}

void sub_24BED5010(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  sub_24BE7F218(va3);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  sub_24BE7F218(va2);
  _Unwind_Resume(a1);
}

void sub_24BED512C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BED5180(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 56);
  sub_24BCCCD5C();
}

void sub_24BED5294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_24BE7F218(va2);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BED53A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BED556C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = &a16;
  v18 = -32;
  do
  {
    sub_24BE7F218(v17);
    v17 = (v19 - 16);
    v18 += 16;
  }

  while (v18);
  sub_24BE7F218(&a10);
  sub_24BE7F218(&a12);
  _Unwind_Resume(a1);
}

void sub_24BED55EC(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[5] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v4);
  sub_24BEB93D8(v4, v5, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BED5714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v18 - 56);
  sub_24BE7F218(v17 + 16);
  sub_24BE7F218(&a17);
  _Unwind_Resume(a1);
}

void sub_24BED579C(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = *(**a2 + 56);
  sub_24BCCCD5C();
}

void sub_24BED58B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_24BE7F218(va2);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BED59BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BED59EC(uint64_t a1, const void ****a2, int **a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a3;
  v4 = *(a1 + 24);
  v5 = v3 >= 0 && v3 <= v4;
  v6 = *a2;
  if (v5)
  {
    v7 = (v4 + 1);
  }

  else
  {
    v7 = v4;
  }

  sub_24BEB5980(v6, v7, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BED5AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BED5B90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BED5C44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BED5CB8(uint64_t a1, uint64_t ***a2, int **a3)
{
  v5 = **a3;
  v7 = *(a1 + 20);
  v6 = *(a1 + 24);
  if (v5 < 0 || v6 < v5)
  {
    v9 = *(a1 + 24);
  }

  else
  {
    v9 = v6 + 1;
  }

  v10 = *a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (v7)
  {
    sub_24BEB48F0(v10, v9, 1, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  sub_24BEB4390(v10, v9, 1, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BED5D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a10);
  a10 = &a12;
  sub_24BCC961C(&a10);
  _Unwind_Resume(a1);
}

void sub_24BED5E60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BED5F14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BED5F30(uint64_t a1, uint64_t ***a2, int **a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = **a3;
  v4 = *(a1 + 20);
  v5 = v3 >= 0 && v3 <= v4;
  v6 = *a2;
  if (v5)
  {
    v7 = (v4 + 1);
  }

  else
  {
    v7 = v4;
  }

  sub_24BEB515C(v6, v7, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BED6008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BED6038(uint64_t a1@<X0>, uint64_t ***a2@<X1>, void *a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = **a2;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  sub_24BCC9A1C(&v9, *v5, v5[1], (v5[1] - *v5) >> 2);
  v6 = v9;
  v7 = v10;
  *(v9 + *(a1 + 24)) = 1;
  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_24BCC9A1C(&__p, v6, v7, (v7 - v6) >> 2);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCE220C(a3, &__p, &v15, 1uLL);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_24BED611C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BED616C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t ***a3@<X2>, void *a4@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 20) != *(**a3 + 14))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[astype] Type of cotangents does not match primal output type.");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v5 = (*a3)[1];
  v8[0] = **a3;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v8, *(**a2 + 56), *(a1 + 8), *(a1 + 16) | 0x100000000, v9);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_24BCC9984(a4, v9, &v10, 1uLL);
  sub_24BE7F218(v9);
  sub_24BE7F218(v8);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_24BED62B4(uint64_t a1@<X0>, uint64_t ***a2@<X2>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = (*a2)[1];
  v6[0] = **a2;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v6, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v7);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCC9984(a3, v7, &v8, 1uLL);
  sub_24BE7F218(v7);
  sub_24BE7F218(v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_24BED6370(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_24BE7F218(va1);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BED6394(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = (*a2)[1];
  v8[0] = **a2;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v8, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000, v11);
  memset(v9, 0, sizeof(v9));
  sub_24BCC9984(v9, v11, &v12, 1uLL);
  sub_24BEEF168(a4, v9, a3);
  v10 = v9;
  sub_24BCC961C(&v10);
  sub_24BE7F218(v11);
  sub_24BE7F218(v8);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_24BED647C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void **);
  sub_24BCC961C(va1);
  sub_24BE7F218(va2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BED64C8(uint64_t a1, uint64_t ***a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *(**a2 + 12);
  v4 = *(**a3 + 48);
  sub_24BEA52D0(*a2, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BED6884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  sub_24BE7F218(v27 - 96);
  sub_24BE7F218(&a27);
  sub_24BE7F218(v27 - 128);
  sub_24BE7F218(v27 - 112);
  _Unwind_Resume(a1);
}

void sub_24BED6974(uint64_t a1, uint64_t a2, void **a3)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v4 = (*a3)[1];
  v7[0] = **a3;
  v7[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v6, 0, sizeof(v6));
  sub_24BCC9A1C(v6, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
  memset(__p, 0, sizeof(__p));
  sub_24BD7E680(__p, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 3);
  sub_24BEA4290(v7, v6, __p, *(a1 + 72), *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BED6A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_24BE7F218(v16 - 40);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  sub_24BE7F218(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_24BED6AE8(void *a1, void *a2)
{
  v5 = a1 + 3;
  v4 = a1[3];
  v6 = v5[1] - v4;
  v8 = a2 + 3;
  v7 = a2[3];
  if (v6 == v8[1] - v7 && !memcmp(v4, v7, v6) && (v9 = a1[6], v10 = a1[7] - v9, v11 = a2[6], v10 == a2[7] - v11) && !memcmp(v9, v11, v10))
  {
    return a1[9] == a2[9];
  }

  else
  {
    return 0;
  }
}

void *sub_24BED6B78(void *result, void *a2)
{
  v2 = *(result + 5);
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return result;
      }

      v4 = "BitwiseOr";
      return sub_24BC95264(a2, v4, 9);
    }

    v3 = "BitwiseAnd";
    return sub_24BC95264(a2, v3, 10);
  }

  if (v2 == 2)
  {
    v3 = "BitwiseXor";
    return sub_24BC95264(a2, v3, 10);
  }

  if (v2 != 3)
  {
    if (v2 != 4)
    {
      return result;
    }

    v3 = "RightShift";
    return sub_24BC95264(a2, v3, 10);
  }

  v4 = "LeftShift";
  return sub_24BC95264(a2, v4, 9);
}

void sub_24BED6C00(uint64_t a1, uint64_t **a2, int **a3)
{
  v5[11] = *MEMORY[0x277D85DE8];
  sub_24BED3A58(a2, a3, a1 + 8, v5);
  memset(v4, 0, sizeof(v4));
  sub_24BCC9A1C(v4, *v5[0], *(v5[0] + 8), (*(v5[0] + 8) - *v5[0]) >> 2);
  v3 = *(v5[0] + 56);
  operator new();
}

void sub_24BED6E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a22;
  sub_24BCC961C(&__p);
  sub_24BE7F218(v26 - 72);
  __p = &a14;
  sub_24BCC961C(&__p);
  for (i = 16; i != -16; i -= 16)
  {
    sub_24BE7F218(v26 - 104 + i);
  }

  if (a18)
  {
    sub_24BC9EC78(a18);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  sub_24BE7F218(v25 + 16);
  sub_24BE7F218(&a25);
  _Unwind_Resume(a1);
}

void sub_24BED6FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BED7034(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t ***a3@<X2>, void *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = **a2;
  v7 = *a3;
  v8 = **a3;
  v10 = *v8;
  v9 = v8[1];
  v11 = v9 - *v8;
  v13 = *v6;
  v12 = v6[1];
  v22 = 0;
  v23 = 0;
  v24 = 0;
  LODWORD(v25[0]) = 0;
  if (v9 != v10)
  {
    LODWORD(v14) = 0;
    v15 = (v11 >> 2) - ((v12 - v13) >> 2);
    do
    {
      if (v14 < v15 || (v16 = *(*v6 + 4 * (v14 - v15)), v16 != sub_24BD1EEAC(v7, v14)))
      {
        sub_24BC97D60(&v22, v25);
      }

      v14 = SLODWORD(v25[0]) + 1;
      ++LODWORD(v25[0]);
    }

    while (v14 < ((*v7)[1] - **v7) >> 2);
  }

  sub_24BEB160C(v7, &v22, 1, *(a1 + 8), *(a1 + 16) | 0x100000000, v21);
  __p = 0;
  v19 = 0;
  v20 = 0;
  sub_24BCC9A1C(&__p, *v6, v6[1], (v6[1] - *v6) >> 2);
  sub_24BEA4500(v21, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, v25);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_24BCC9984(a4, v25, &v26, 1uLL);
  sub_24BE7F218(v25);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  sub_24BE7F218(v21);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_24BED71D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_24BE7F218(&a18);
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a13);
  if (a15)
  {
    a16 = a15;
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_24BED722C(uint64_t a1@<X0>, uint64_t ***a2@<X2>, void *a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  sub_24BEA4DE0(*a2, (a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000, v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_24BCC9984(a3, v5, &v6, 1uLL);
  sub_24BE7F218(v5);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_24BED72C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BED72E4(uint64_t a1@<X0>, uint64_t ***a2@<X1>, int **a3@<X2>, void *a4@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = **a3;
  v7 = **a2;
  v8 = (*a2)[1];
  *&v22 = v7;
  *(&v22 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  if ((v6 & 0x80000000) == 0)
  {
    __src = 0;
    v20 = 0;
    v21 = 0;
    sub_24BCC9A1C(&__src, *v7, v7[1], (v7[1] - *v7) >> 2);
    v9 = ((*(a1 + 32) - *(a1 + 24)) >> 2) - ((*(v22 + 8) - *v22) >> 2) + 1;
    LODWORD(v14[0]) = 1;
    sub_24BEAB510(&__src, __src, v9, v14);
    v6 += v9;
    sub_24BEAAF40((a1 + 24), (*(a1 + 24) + 4 * v6), __src + 4 * v6);
    v17 = 0;
    v18 = 0;
    __p = 0;
    sub_24BCC9A1C(&__p, __src, v20, (v20 - __src) >> 2);
    sub_24BEA4500(&v22, &__p, *(a1 + 8), *(a1 + 16) | 0x100000000, v14);
    v10 = *v14;
    v14[0] = 0;
    v14[1] = 0;
    v11 = *(&v22 + 1);
    v22 = v10;
    if (v11)
    {
      sub_24BC9EC78(v11);
    }

    sub_24BE7F218(v14);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    if (__src)
    {
      v20 = __src;
      operator delete(__src);
    }
  }

  sub_24BEA4DE0(&v22, (a1 + 24), *(a1 + 8), *(a1 + 16) | 0x100000000, v23);
  __src = 0;
  v20 = 0;
  v21 = 0;
  sub_24BCC9984(&__src, v23, &v24, 1uLL);
  v13 = v6;
  v14[1] = 0;
  v15 = 0;
  v14[0] = 0;
  sub_24BCC9910(v14, &v13, v14, 1uLL);
  sub_24BEEF168(a4, &__src, v14);
  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  v14[0] = &__src;
  sub_24BCC961C(v14);
  sub_24BE7F218(v23);
  sub_24BE7F218(&v22);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_24BED7508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_24BE7F218(&a21);
  _Unwind_Resume(a1);
}

BOOL sub_24BED7598(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  v4 = *(v3 + 8) - v2;
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  return v4 == *(v6 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

void sub_24BED7698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BED7778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  sub_24BCC961C(va);
  sub_24BE7F218(va1);
  _Unwind_Resume(a1);
}

void sub_24BED77A8(uint64_t a1, uint64_t *a2, int **a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (**a3 < 1)
  {
    v5 = *(v4 + 8);
    v6[0] = *v4;
    v6[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_24BEACB34(v4, **a3, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v6);
  }

  sub_24BEA0B68(v6, *(a1 + 20), *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BED7954(uint64_t a1, uint64_t ***a2, _DWORD **a3)
{
  v17[11] = *MEMORY[0x277D85DE8];
  v5 = **a3;
  v6 = *a2;
  v7 = **a2;
  if (((v7[1] - *v7) >> 2) - 2 <= v5)
  {
    sub_24BEACB34(v6, v5, 0, *(a1 + 8), *(a1 + 16) | 0x100000000, v17);
    LODWORD(v5) = 0;
  }

  else
  {
    v8 = v6[1];
    v17[0] = v7;
    v17[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      LODWORD(v5) = **a3;
    }
  }

  v16 = v5;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      sub_24BC8DE9C(__p, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      *__p = *(a1 + 24);
      v12 = *(a1 + 40);
    }

    sub_24BEA27B4(v17, __p, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  if (*(a1 + 47) < 0)
  {
    sub_24BC8DE9C(v9, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    *v9 = *(a1 + 24);
    v10 = *(a1 + 40);
  }

  sub_24BEA2554(v17, v9, *(a1 + 8), *(a1 + 16) | 0x100000000);
}