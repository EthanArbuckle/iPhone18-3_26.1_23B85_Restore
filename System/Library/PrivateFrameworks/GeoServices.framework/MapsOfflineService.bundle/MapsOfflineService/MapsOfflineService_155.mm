void sub_993178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_53F320(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_993224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_9932C8(a1, v5);
  if (sub_4D1F6C(v5))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return sub_53A868(v5);
  }

  if (*(v5[0] + 23) < 0)
  {
    sub_325C(a2, *v5[0], *(v5[0] + 8));
    return sub_53A868(v5);
  }

  v4 = *v5[0];
  *(a2 + 16) = *(v5[0] + 16);
  *a2 = v4;
  return sub_53A868(v5);
}

uint64_t sub_9932C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_64B998(&v47);
  if (*(a1 + 23) < 0)
  {
    sub_325C(&v46, *a1, *(a1 + 8));
  }

  else
  {
    v46 = *a1;
  }

  v4 = 0;
  v5 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  size = v46.__r_.__value_.__l.__size_;
  if (v4 < v46.__r_.__value_.__l.__size_)
  {
    v7 = v46.__r_.__value_.__r.__words[0];
    while (1)
    {
      v8 = memchr(v7 + v4, 123, size - v4);
      v9 = v8 - v7;
      if (v8)
      {
        v10 = v9 == -1;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        break;
      }

      v11 = v9 + 1;
      v12 = v46.__r_.__value_.__l.__size_;
      v13 = (v5 & 0x80000000) == 0 ? v5 : v46.__r_.__value_.__l.__size_;
      if (v13 <= v11)
      {
        break;
      }

      v14 = v46.__r_.__value_.__r.__words[0];
      v15 = (v5 & 0x80000000) == 0 ? &v46 : v46.__r_.__value_.__r.__words[0];
      v16 = memchr(v15 + v11, 125, v13 - v11);
      v17 = v16 - v15;
      if (!v16 || v17 == -1)
      {
        break;
      }

      v19 = v17 - v9;
      v20 = v17 - v9 - 1;
      if (v17 - v9 == 1)
      {
        v4 = v17 + 1;
        v5 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          goto LABEL_7;
        }

        goto LABEL_9;
      }

      if ((v5 & 0x80000000) != 0)
      {
        if (v12 <= v9)
        {
LABEL_76:
          sub_49D4();
        }

        v5 = v12;
        if (v12 - v11 >= v20)
        {
          v21 = v17 - v9 - 1;
        }

        else
        {
          v21 = v12 - v11;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_77:
          sub_3244();
        }
      }

      else
      {
        if (v9 >= v5)
        {
          goto LABEL_76;
        }

        v14 = &v46;
        if (v5 - v11 >= v20)
        {
          v21 = v17 - v9 - 1;
        }

        else
        {
          v21 = v5 - v11;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_77;
        }
      }

      if (v21 >= 0x17)
      {
        operator new();
      }

      v45 = v21;
      if (v5 != v11)
      {
        memmove(&__dst, v14 + v11, v21);
      }

      *(&__dst + v21) = 0;
      sub_992B54(&__dst, a1, &__p);
      v22 = v41;
      v23 = v41;
      v24 = v40;
      if ((v41 & 0x80u) == 0)
      {
        v25 = v41;
      }

      else
      {
        v25 = v40;
      }

      if (v25)
      {
        v26 = v43;
        if ((v43 & 0x80u) != 0)
        {
          v26 = *(&v42 + 1);
        }

        if (v26)
        {
          v27 = *(&v49 + 1);
          if (*(&v49 + 1) >= v50)
          {
            v28 = sub_650B18(&v49, &v42);
          }

          else
          {
            sub_55C01C(*(&v49 + 1), &v42);
            v28 = v27 + 144;
          }

          *(&v49 + 1) = v28;
          v22 = v41;
          v24 = v40;
          v23 = v41;
        }

        if ((v23 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v23 & 0x80u) == 0)
        {
          v30 = v22;
        }

        else
        {
          v30 = v24;
        }

        std::string::replace(&v46, v9, v19 + 1, p_p, v30);
        v31 = v41;
        if ((v41 & 0x80u) != 0)
        {
          v31 = v40;
        }

        v4 = v31 + v9;
        sub_53F320(&v42);
        if ((v41 & 0x80000000) == 0)
        {
LABEL_54:
          if ((v45 & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

          goto LABEL_69;
        }
      }

      else
      {
        sub_64B998(a2);
        sub_53F320(&v42);
        if ((v41 & 0x80000000) == 0)
        {
          goto LABEL_54;
        }
      }

      operator delete(__p);
      if ((v45 & 0x80000000) == 0)
      {
LABEL_55:
        if (!v25)
        {
          goto LABEL_73;
        }

        goto LABEL_70;
      }

LABEL_69:
      operator delete(__dst);
      if (!v25)
      {
        goto LABEL_73;
      }

LABEL_70:
      ++v4;
      v5 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        goto LABEL_7;
      }

LABEL_9:
      if (v4 >= v5)
      {
        break;
      }

      v7 = &v46;
      size = v5;
    }
  }

  sub_64C184(&v47, &v46);
  v32 = v50;
  *(a2 + 16) = v48;
  *a2 = v47;
  v47 = 0uLL;
  *(a2 + 24) = v49;
  *(a2 + 40) = v32;
  v50 = 0;
  v49 = 0uLL;
  *(a2 + 48) = v51;
  *(a2 + 64) = v52;
  v48 = 0;
  v51 = 0uLL;
  *(a2 + 72) = v53;
  v52 = 0;
  v53 = 0uLL;
  v34 = v54;
  v33 = v55;
  v54 = 0;
  v55 = 0;
  *(a2 + 88) = v34;
  *(a2 + 96) = v33;
  LODWORD(v33) = v56;
  *(a2 + 108) = v57;
  *(a2 + 104) = v33;
  v35 = v58;
  v36 = v61;
  *(a2 + 128) = v59;
  *(a2 + 112) = v35;
  v58 = 0uLL;
  v37 = v60;
  *(a2 + 152) = v36;
  *(a2 + 136) = v37;
  v59 = 0;
  v60 = 0uLL;
  v61 = 0;
LABEL_73:
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  return sub_53A868(&v47);
}

void sub_9936CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_993C48(&a9);
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a41 & 0x80000000) == 0)
    {
LABEL_3:
      sub_53A868(&a43);
      _Unwind_Resume(a1);
    }
  }

  else if ((a41 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a36);
  sub_53A868(&a43);
  _Unwind_Resume(a1);
}

void sub_99374C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_993830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 80;
    v15 = -v12;
    do
    {
      sub_993AF8(v14);
      v14 -= 80;
      v15 += 80;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_993BD0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_993868(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    *(a1 + 24) = *(a2 + 24);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 24) = *(a2 + 24);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_325C((a1 + 32), *(a2 + 4), *(a2 + 5));
LABEL_6:
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = *(a2 + 7);
  v6 = *(a2 + 8);
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_993998(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_9939F8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_325C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        *(v4 + 16) = *(v6 + 2);
        *v4 = v8;
      }

      if (*(v6 + 47) < 0)
      {
        sub_325C((v4 + 24), *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v7 = *(v6 + 24);
        *(v4 + 40) = *(v6 + 5);
        *(v4 + 24) = v7;
      }

      v6 += 3;
      v4 = v10 + 48;
      v10 += 48;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_993AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_2C19CC(&a9);
  _Unwind_Resume(a1);
}

void sub_993AF8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 64) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *(a1 + 56);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return;
  }

  v6 = *a1;

  operator delete(v6);
}

void ***sub_993BD0(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 80;
          sub_993AF8(v4);
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

uint64_t sub_993C48(uint64_t a1)
{
  sub_53F320(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_993E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

void sub_993E6C(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t **a3@<X2>, void *a4@<X8>)
{
  *v23 = 0u;
  *v24 = 0u;
  v25 = 1065353216;
  v7 = *a3;
  v8 = a3[1];
  if (*a3 != v8)
  {
    do
    {
      if (!v24[1])
      {
        v9 = sub_504BC8(*a1, *v7, 0, "transfer");
        *&v26 = *(v9 + *(v9 - *v9 + 6));
        LODWORD(v27) = 0;
        sub_995D50(v23, &v26);
      }

      v10 = sub_504BC8(*a1, *v7, 0, "transfer");
      *&v26 = *(v10 + *(v10 - *v10 + 8));
      v27 = v24[1];
      sub_9960C4(v23, &v26);
      ++v7;
    }

    while (v7 != v8);
  }

  v11 = *a1;
  v12 = sub_994FB4(*a1, a2, 0, "transfer graph");
  v14 = (v12 - *v12);
  if (*v14 >= 0xBu)
  {
    v15 = v14[5];
    if (v15)
    {
      v16 = (v12 + v15 + *(v12 + v15));
      v17 = *v16;
      if (v17)
      {
        v18 = 8 * v17;
        v19 = v16 + 1;
        do
        {
          if (*(v11 + 3888) != 1 || sub_2D5204(*(v11 + 3872)))
          {
            operator new();
          }

          v19 += 2;
          v18 -= 8;
        }

        while (v18);
      }
    }
  }

  sub_996438(0, 0, 0, 1, v13);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v20 = v24[0];
  if (v24[0])
  {
    do
    {
      v21 = *v20;
      operator delete(v20);
      v20 = v21;
    }

    while (v21);
  }

  v22 = v23[0];
  v23[0] = 0;
  if (v22)
  {
    operator delete(v22);
  }
}

void sub_9945C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, char a13)
{
  if (__p)
  {
    operator delete(__p);
    if (!a10)
    {
      goto LABEL_6;
    }
  }

  else if (!a10)
  {
LABEL_6:
    sub_11BD8(&a13);
    _Unwind_Resume(a1);
  }

  operator delete(a10);
  sub_11BD8(&a13);
  _Unwind_Resume(a1);
}

void sub_99470C(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3 == *(a3 + 8) || (v5 = a1, v6 = sub_994FB4(*a1, a2, 0, "transfer graph"), v7 = (v6 - *v6), *v7 < 0xBu) || (v8 = v7[5]) == 0 || !*(v6 + v8 + *(v6 + v8)))
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 24) = 0;
    *(a4 + 16) = 0;
    return;
  }

  *(v5 + 24) = 1;
  sub_7E9A4(v76);
  sub_993E6C(v5, a2, a3, &v74);
  nullsub_1(&v73);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 24) = 0;
  *(a4 + 16) = 0;
  v9 = v74;
  v62 = v75;
  if (v74 == v75)
  {
    goto LABEL_117;
  }

  v61 = v5;
  while (2)
  {
    v72 = *v9;
    v10 = sub_995140(*v5, v72, 0, "transfer instruction");
    v11 = (v10 - *v10);
    if (*v11 < 0xBu || (v12 = v11[5]) == 0)
    {
      v64 = 0;
      size = 0;
      v17 = 0;
      memset(&v71, 0, sizeof(v71));
      memset(&v70, 0, sizeof(v70));
      goto LABEL_52;
    }

    v13 = v10 + v12;
    v14 = *(v10 + v12);
    memset(&v67, 0, sizeof(v67));
    sub_9952CC(&v67, *(v10 + v12 + v14));
    sub_995650(&v13[v14], &v67);
    v71 = v67;
    memset(&v70, 0, sizeof(v70));
    size = v67.__r_.__value_.__l.__size_;
    v16 = v67.__r_.__value_.__r.__words[0];
    v63 = v67.__r_.__value_.__r.__words[0] == v67.__r_.__value_.__l.__size_;
    v64 = v67.__r_.__value_.__r.__words[0];
    if (v67.__r_.__value_.__r.__words[0] == v67.__r_.__value_.__l.__size_)
    {
      v17 = 0;
LABEL_52:
      v63 = 1;
      v32 = 0;
      v33 = a4;
      v34 = *(a4 + 8);
      goto LABEL_74;
    }

    do
    {
      while (1)
      {
        sub_9D69F4(v16, &v67);
        v18 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
        v19 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
        v20 = v67.__r_.__value_.__l.__size_;
        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v67.__r_.__value_.__l.__size_;
        }

        if (v21)
        {
          v22 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
          v23 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
          v24 = v70.__r_.__value_.__l.__size_;
          if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v25 = v70.__r_.__value_.__l.__size_;
          }

          if (v25)
          {
            std::string::append(&v70, ", ", 2uLL);
            v18 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
            v20 = v67.__r_.__value_.__l.__size_;
            v22 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
            v24 = v70.__r_.__value_.__l.__size_;
            v23 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
            v19 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
          }

          if (v19 >= 0)
          {
            v26 = &v67;
          }

          else
          {
            v26 = v67.__r_.__value_.__r.__words[0];
          }

          if (v19 >= 0)
          {
            v27 = v18;
          }

          else
          {
            v27 = v20;
          }

          if (v23 >= 0)
          {
            v28 = 22;
          }

          else
          {
            v28 = (v70.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if (v23 >= 0)
          {
            v29 = v22;
          }

          else
          {
            v29 = v24;
          }

          if (v28 - v29 < v27)
          {
            if (0x7FFFFFFFFFFFFFF6 - v28 >= v29 + v27 - v28)
            {
              operator new();
            }

            sub_3244();
          }

          if (v27)
          {
            if (v23 >= 0)
            {
              v30 = &v70;
            }

            else
            {
              v30 = v70.__r_.__value_.__r.__words[0];
            }

            memmove(v30 + v29, v26, v27);
            v31 = v29 + v27;
            if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
            {
              v70.__r_.__value_.__l.__size_ = v29 + v27;
            }

            else
            {
              *(&v70.__r_.__value_.__s + 23) = v31 & 0x7F;
            }

            v30->__r_.__value_.__s.__data_[v31] = 0;
          }
        }

        if ((v69 & 0x80000000) == 0)
        {
          break;
        }

        operator delete(__p);
        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_48;
        }

LABEL_14:
        v16 += 88;
        if (v16 == size)
        {
          goto LABEL_70;
        }
      }

      if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

LABEL_48:
      operator delete(v67.__r_.__value_.__l.__data_);
      v16 += 88;
    }

    while (v16 != size);
LABEL_70:
    v17 = v70.__r_.__value_.__l.__size_;
    v32 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
    if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = v70.__r_.__value_.__l.__size_;
    }

    v33 = a4;
    v34 = *(a4 + 8);
    if (v44)
    {
      if (*a4 == v34)
      {
        goto LABEL_65;
      }

      v35 = *(v34 - 9);
      v36 = v35;
      if ((v35 & 0x80u) != 0)
      {
        v35 = *(v34 - 24);
      }

      if (v35 != v44)
      {
LABEL_65:
        v39 = 0;
        v33 = a4;
        v66 = 0;
        if (v34 >= *(a4 + 16))
        {
          goto LABEL_75;
        }

        goto LABEL_66;
      }

      if (v36 >= 0)
      {
        v37 = (v34 - 32);
      }

      else
      {
        v37 = *(v34 - 32);
      }

      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &v70;
      }

      else
      {
        v38 = v70.__r_.__value_.__r.__words[0];
      }

      v39 = memcmp(v37, v38, v44) == 0;
      v33 = a4;
      v66 = v39;
      if (v34 < *(a4 + 16))
      {
        goto LABEL_66;
      }

LABEL_75:
      v5 = v61;
      v41 = v64;
      *(a4 + 8) = sub_995AB0(v33, &v72, &v70, &v66);
      if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

LABEL_74:
    v39 = 1;
    v66 = 1;
    if (v34 >= v33[2])
    {
      goto LABEL_75;
    }

LABEL_66:
    v40 = v72;
    if (v32 < 0)
    {
      sub_325C(&v67, v70.__r_.__value_.__l.__data_, v17);
      v39 = v66;
      v5 = v61;
      v41 = v64;
      *v34 = v40;
      v42 = v34 + 8;
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_108;
      }

LABEL_68:
      v43 = *&v67.__r_.__value_.__l.__data_;
      *(v42 + 16) = *(&v67.__r_.__value_.__l + 2);
      *v42 = v43;
      *(v34 + 32) = v39;
      *(a4 + 8) = v34 + 40;
      if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

LABEL_76:
      operator delete(v70.__r_.__value_.__l.__data_);
      goto LABEL_77;
    }

    v67 = v70;
    v5 = v61;
    v41 = v64;
    *v34 = v72;
    v42 = v34 + 8;
    if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_108:
    sub_325C(v42, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
    v56 = SHIBYTE(v67.__r_.__value_.__r.__words[2]);
    *(v34 + 32) = v39;
    if (v56 < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
      *(a4 + 8) = v34 + 40;
      if ((SHIBYTE(v70.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    *(a4 + 8) = v34 + 40;
    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_76;
    }

LABEL_77:
    if (v41)
    {
      if (!v63)
      {
        do
        {
          v45 = *(size - 24);
          if (v45)
          {
            v46 = *(size - 16);
            v47 = *(size - 24);
            if (v46 != v45)
            {
              do
              {
                v48 = *(v46 - 3);
                if (v48)
                {
                  v49 = *(v46 - 2);
                  v50 = *(v46 - 3);
                  if (v49 != v48)
                  {
                    do
                    {
                      if (*(v49 - 1) < 0)
                      {
                        operator delete(*(v49 - 3));
                      }

                      v49 -= 4;
                    }

                    while (v49 != v48);
                    v50 = *(v46 - 3);
                  }

                  *(v46 - 2) = v48;
                  operator delete(v50);
                }

                v51 = v46 - 8;
                if (*(v46 - 41) < 0)
                {
                  operator delete(*v51);
                }

                v46 -= 8;
              }

              while (v51 != v45);
              v47 = *(size - 24);
            }

            *(size - 16) = v45;
            operator delete(v47);
          }

          v52 = *(size - 48);
          if (v52)
          {
            v53 = *(size - 40);
            v54 = *(size - 48);
            if (v53 != v52)
            {
              do
              {
                if (*(v53 - 1) < 0)
                {
                  operator delete(*(v53 - 24));
                }

                v53 -= 32;
              }

              while (v53 != v52);
              v54 = *(size - 48);
            }

            *(size - 40) = v52;
            operator delete(v54);
          }

          v55 = (size - 88);
          if (*(size - 65) < 0)
          {
            operator delete(*v55);
          }

          size -= 88;
        }

        while (v55 != v41);
      }

      operator delete(v41);
    }

    if (++v9 != v62)
    {
      continue;
    }

    break;
  }

  if (v74 != v75)
  {
    v57 = sub_504BC8(*v5, *(*(a3 + 8) - 8), 0, "transfer");
    v58 = *(v57 + *(v57 - *v57 + 8));
    v59 = sub_995140(*v5, *(v75 - 1), 0, "transfer instruction");
    *(a4 + 24) = v58 == *(v59 + *(v59 - *v59 + 6));
  }

LABEL_117:
  *(v5 + 2) = sub_7EA60(v76);
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }
}

void sub_994EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  sub_3108E8(a16);
  v37 = *(v35 - 144);
  if (v37)
  {
    *(v35 - 136) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void **sub_994F58(void **a1)
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
        v3 = sub_995430(v3 - 88);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_994FB4(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0x25u)
  {
    v9 = *(v8 + 18);
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

void sub_995110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_995140(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 0x27u)
  {
    v9 = *(v8 + 19);
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

void sub_99529C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_9952CC(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_995430(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
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
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v8 = v3 - 8;
        if (*(v3 - 41) < 0)
        {
          operator delete(*v8);
        }

        v3 -= 8;
      }

      while (v8 != v2);
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    if (v10 != v9)
    {
      do
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 24));
        }

        v10 -= 32;
      }

      while (v10 != v9);
      v11 = *(a1 + 40);
    }

    *(a1 + 48) = v9;
    operator delete(v11);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***sub_995568(void ***a1)
{
  if (*a1)
  {
    sub_9955A4(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_9955A4(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 3);
      if (v4)
      {
        v5 = *(v3 - 2);
        v6 = *(v3 - 3);
        if (v5 != v4)
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
          v6 = *(v3 - 3);
        }

        *(v3 - 2) = v4;
        operator delete(v6);
      }

      v7 = v3 - 8;
      if (*(v3 - 41) < 0)
      {
        operator delete(*v7);
      }

      v3 -= 8;
    }

    while (v7 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_995650(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = 4 * v3;
    v5 = a1 + 1;
    do
    {
      sub_995754((v5 + *v5), &v10);
      v8 = *(a2 + 8);
      if (v8 < *(a2 + 16))
      {
        v6 = v10;
        *(v8 + 16) = v11;
        *v8 = v6;
        v11 = 0;
        v10 = 0uLL;
        *(v8 + 24) = v12;
        *(v8 + 48) = 0;
        *(v8 + 56) = 0;
        *(v8 + 40) = 0;
        *(v8 + 40) = v13;
        *(v8 + 56) = v14;
        *(v8 + 64) = 0;
        v13 = 0uLL;
        *(v8 + 72) = 0;
        *(v8 + 80) = 0;
        *(v8 + 64) = v15;
        *(v8 + 80) = v16;
        v14 = 0;
        v15 = 0uLL;
        v16 = 0;
        v7 = v8 + 88;
      }

      else
      {
        v7 = sub_9958D0(a2, &v10);
      }

      *(a2 + 8) = v7;
      sub_995430(&v10);
      ++v5;
      v4 -= 4;
    }

    while (v4);
  }

  return a2;
}

void sub_995754(int *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 2;
  *(a2 + 32) = sub_12331FC();
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5 + *(a1 + v5));
  }

  else
  {
    v6 = 0;
  }

  sub_509164(v6, &v13);
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  v7 = v17;
  *(a2 + 40) = v16;
  *(a2 + 56) = v7;
  v8 = (a1 - *a1);
  if (*v8 >= 7u && (v9 = v8[3]) != 0)
  {
    v10 = (a1 + v9 + *(a1 + v9));
    v13 = 0uLL;
    v14 = 0;
    sub_943AEC(&v13, *v10);
    v19 = v10 + 1;
    v18 = &v10[*v10 + 1];
    sub_943E24(&v19, &v18, &v13, sub_509164);
    v11 = v13;
    v12 = v14;
  }

  else
  {
    v12 = 0;
    v11 = 0uLL;
  }

  *(a2 + 64) = v11;
  *(a2 + 80) = v12;
}

void sub_9958A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_995568(&a9);
  sub_995430(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_9958D0(void **a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v4 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  *v5 = *a2;
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 40) = *(a2 + 40);
  *(v5 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = *(a2 + 80);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v6 = v5 + 88;
  v7 = *a1;
  v8 = a1[1];
  v9 = v5 + *a1 - v8;
  if (*a1 != v8)
  {
    v10 = *a1;
    v11 = v5 + *a1 - v8;
    do
    {
      v12 = *v10;
      *(v11 + 16) = *(v10 + 2);
      *v11 = v12;
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      *(v11 + 24) = *(v10 + 24);
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 40) = *(v10 + 40);
      *(v11 + 56) = *(v10 + 7);
      *(v10 + 5) = 0;
      *(v10 + 6) = 0;
      *(v10 + 7) = 0;
      *(v11 + 72) = 0;
      *(v11 + 80) = 0;
      *(v11 + 64) = *(v10 + 4);
      *(v11 + 80) = *(v10 + 10);
      *(v10 + 8) = 0;
      *(v10 + 9) = 0;
      *(v10 + 10) = 0;
      v10 += 88;
      v11 += 88;
    }

    while (v10 != v8);
    do
    {
      v7 = (sub_995430(v7) + 88);
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

uint64_t sub_995AB0(uint64_t *a1, uint64_t *a2, uint64_t a3, char *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v7 = 0x666666666666666;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 8 * ((a1[1] - *a1) >> 3);
  sub_995C64(v16, a2, a3, a4);
  v8 = 40 * v4 + 40;
  v9 = *a1;
  v10 = a1[1];
  v11 = v16 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = v16 + *a1 - v10;
    v13 = *a1;
    do
    {
      *v12 = *v13;
      v14 = *(v13 + 8);
      *(v12 + 24) = *(v13 + 24);
      *(v12 + 8) = v14;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = 0;
      *(v12 + 32) = *(v13 + 32);
      v13 += 40;
      v12 += 40;
    }

    while (v13 != v10);
    do
    {
      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 40;
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

void sub_995C50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C5440(va);
  _Unwind_Resume(a1);
}

uint64_t sub_995C64(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
{
  v6 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C(__p, *a3, *(a3 + 8));
    v7 = *a4;
    *a1 = v6;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *__p = *a3;
    v12 = *(a3 + 16);
    v7 = *a4;
    *a1 = v6;
    v8 = a1 + 8;
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
LABEL_3:
      *v8 = *__p;
      *(v8 + 16) = v12;
      *(a1 + 32) = v7;
      return a1;
    }
  }

  sub_325C(v8, __p[0], __p[1]);
  v10 = SHIBYTE(v12);
  *(a1 + 32) = v7;
  if ((v10 & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(__p[0]);
  return a1;
}

void sub_995D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_995D50(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t *sub_9960C4(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_996438(void *a1, __n128 *a2, uint64_t a3, char a4, __n128 a5)
{
  while (2)
  {
    v9 = (a2 - 24);
    v10 = a2 - 3;
    v11 = &a2[-5].n128_i8[8];
    v12 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v12;
          v13 = a2 - v12;
          v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
          if (v14 > 2)
          {
            switch(v14)
            {
              case 3:
                v223 = *(v12 + 32);
                v224 = *(v12 + 40);
                v225 = *(v12 + 16);
                v226 = v223 < *(v12 + 8);
                v220 = v224 == v225;
                v227 = v224 > v225;
                if (!v220)
                {
                  v226 = v227;
                }

                v228 = a2[-1].n128_u64[1];
                v229 = a2[-1].n128_u64[0] < v223;
                v220 = v228 == v224;
                v230 = v228 > v224;
                if (!v220)
                {
                  v229 = v230;
                }

                if (!v226)
                {
                  if (!v229)
                  {
                    return;
                  }

                  v310 = *(v12 + 24);
                  v311 = *(v12 + 40);
                  v312 = a2[-1].n128_i64[1];
                  *(v12 + 24) = *v9;
                  *(v12 + 40) = v312;
                  a2[-1].n128_u64[1] = v311;
                  *v9 = v310;
                  v313 = *(v12 + 40);
                  v314 = *(v12 + 16);
                  v216 = *(v12 + 32) < *(v12 + 8);
                  v220 = v313 == v314;
                  v315 = v313 > v314;
                  if (!v220)
                  {
                    v216 = v315;
                  }

                  goto LABEL_271;
                }

                if (v229)
                {
                  v376 = *(v12 + 16);
                  v352 = *v12;
                  v231 = *v9;
                  *(v12 + 16) = a2[-1].n128_u64[1];
                  *v12 = v231;
                  v232 = v352;
                  v233 = v376;
                }

                else
                {
                  v379 = *(v12 + 16);
                  v355 = *v12;
                  *v12 = *(v12 + 24);
                  *(v12 + 16) = *(v12 + 40);
                  *(v12 + 24) = v355;
                  *(v12 + 40) = v379;
                  v327 = a2[-1].n128_u64[1];
                  v328 = *(v12 + 40);
                  v329 = a2[-1].n128_u64[0] < *(v12 + 32);
                  v220 = v327 == v328;
                  v330 = v327 > v328;
                  if (!v220)
                  {
                    v329 = v330;
                  }

                  if (!v329)
                  {
                    return;
                  }

                  v232 = *(v12 + 24);
                  v233 = *(v12 + 40);
                  v331 = a2[-1].n128_i64[1];
                  *(v12 + 24) = *v9;
                  *(v12 + 40) = v331;
                }

                a2[-1].n128_u64[1] = v233;
                *v9 = v232;
                return;
              case 4:

                sub_9976B0(v12, (v12 + 24), (v12 + 48), (a2 - 24), a5);
                return;
              case 5:
                sub_9976B0(v12, (v12 + 24), (v12 + 48), (v12 + 72), a5);
                v194 = a2[-1].n128_u64[1];
                v195 = *(v12 + 88);
                v196 = a2[-1].n128_u64[0] < *(v12 + 80);
                v220 = v194 == v195;
                v197 = v194 > v195;
                if (!v220)
                {
                  v196 = v197;
                }

                if (!v196)
                {
                  return;
                }

                v198 = *(v12 + 72);
                v199 = *(v12 + 88);
                v200 = a2[-1].n128_i64[1];
                *(v12 + 72) = *(a2 - 24);
                *(v12 + 88) = v200;
                a2[-1].n128_u64[1] = v199;
                *(a2 - 24) = v198;
                v201 = *(v12 + 88);
                v202 = *(v12 + 64);
                v203 = *(v12 + 80) < *(v12 + 56);
                v220 = v201 == v202;
                v204 = v201 > v202;
                if (!v220)
                {
                  v203 = v204;
                }

                if (!v203)
                {
                  return;
                }

                v205 = *(v12 + 48);
                *(v12 + 48) = *(v12 + 72);
                v207 = *(v12 + 56);
                v206 = *(v12 + 64);
                *(v12 + 64) = *(v12 + 88);
                *(v12 + 72) = v205;
                *(v12 + 88) = v206;
                v208 = *(v12 + 64);
                v209 = *(v12 + 40);
                v220 = v208 == v209;
                v210 = v208 > v209;
                if (v220)
                {
                  v210 = v207 < *(v12 + 32);
                }

                if (!v210)
                {
                  return;
                }

                v211 = *(v12 + 24);
                *(v12 + 24) = *(v12 + 48);
                v213 = *(v12 + 32);
                v212 = *(v12 + 40);
                *(v12 + 40) = *(v12 + 64);
                *(v12 + 48) = v211;
                *(v12 + 64) = v212;
                v214 = *(v12 + 40);
                v215 = *(v12 + 16);
                v220 = v214 == v215;
                v216 = v214 > v215;
                if (v220)
                {
                  v216 = v213 < *(v12 + 8);
                }

LABEL_271:
                if (v216)
                {
                  v378 = *(v12 + 16);
                  v354 = *v12;
                  *v12 = *(v12 + 24);
                  *(v12 + 16) = *(v12 + 40);
                  *(v12 + 24) = v354;
                  *(v12 + 40) = v378;
                }

                return;
            }
          }

          else
          {
            if (v14 < 2)
            {
              return;
            }

            if (v14 == 2)
            {
              v217 = a2[-1].n128_u64[1];
              v218 = *(v12 + 16);
              v219 = a2[-1].n128_u64[0] < *(v12 + 8);
              v220 = v217 == v218;
              v221 = v217 > v218;
              if (!v220)
              {
                v219 = v221;
              }

              if (v219)
              {
                v375 = *(v12 + 16);
                v351 = *v12;
                v222 = *(&a2[-2] + 8);
                *(v12 + 16) = a2[-1].n128_u64[1];
                *v12 = v222;
                a2[-1].n128_u64[1] = v375;
                *(a2 - 24) = v351;
              }

              return;
            }
          }

          if (v13 <= 575)
          {
            v234 = (v12 + 24);
            v236 = v12 == a2 || v234 == a2;
            if (a4)
            {
              if (!v236)
              {
                v237 = 0;
                n128_u64 = v12;
                do
                {
                  v240 = n128_u64[4];
                  v241 = n128_u64[5];
                  v242 = n128_u64[1];
                  v243 = n128_u64[2];
                  n128_u64 = v234->n128_u64;
                  v244 = v240 < v242;
                  if (v241 != v243)
                  {
                    v244 = v241 > v243;
                  }

                  if (v244)
                  {
                    v245 = *n128_u64;
                    v246 = v237;
                    do
                    {
                      v247 = v12 + v246;
                      *(v247 + 24) = *(v12 + v246);
                      *(v247 + 40) = *(v12 + v246 + 16);
                      if (!v246)
                      {
                        v239 = v12;
                        goto LABEL_204;
                      }

                      v249 = *(v247 - 16);
                      v248 = *(v247 - 8);
                      v250 = v240 < v249;
                      v220 = v241 == v248;
                      v251 = v241 > v248;
                      if (v220)
                      {
                        v251 = v250;
                      }

                      v246 -= 24;
                    }

                    while (v251);
                    v239 = (v12 + v246 + 24);
LABEL_204:
                    *v239 = v245;
                    v239[1] = v240;
                    v239[2] = v241;
                  }

                  v234 = (n128_u64 + 3);
                  v237 += 24;
                }

                while (n128_u64 + 3 != a2);
              }
            }

            else if (!v236)
            {
              do
              {
                v316 = a1[4];
                v317 = a1[5];
                v318 = a1[1];
                v319 = a1[2];
                a1 = v234->n128_u64;
                v320 = v316 < v318;
                if (v317 != v319)
                {
                  v320 = v317 > v319;
                }

                if (v320)
                {
                  v321 = *a1;
                  v322 = a1;
                  do
                  {
                    *v322 = *(v322 - 3);
                    v322[2] = *(v322 - 1);
                    v323 = *(v322 - 5);
                    v324 = *(v322 - 4);
                    v322 -= 3;
                    v325 = v316 < v323;
                    v220 = v317 == v324;
                    v326 = v317 > v324;
                    if (!v220)
                    {
                      v325 = v326;
                    }
                  }

                  while (v325);
                  *v322 = v321;
                  v322[1] = v316;
                  v322[2] = v317;
                }

                v234 = (a1 + 3);
              }

              while (a1 + 3 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v12 != a2)
            {
              v252 = (v14 - 2) >> 1;
              v253 = v252;
              do
              {
                v254 = v253;
                if (v252 >= v253)
                {
                  v255 = (2 * v253) | 1;
                  v256 = (v12 + 24 * v255);
                  if (2 * v254 + 2 < v14)
                  {
                    v257 = v256[2];
                    v258 = v256[5];
                    v259 = v256[1] < v256[4];
                    v220 = v257 == v258;
                    v260 = v257 > v258;
                    if (!v220)
                    {
                      v259 = v260;
                    }

                    v261 = !v259;
                    if (v259)
                    {
                      v262 = 24;
                    }

                    else
                    {
                      v262 = 0;
                    }

                    v256 = (v256 + v262);
                    if (!v261)
                    {
                      v255 = 2 * v254 + 2;
                    }
                  }

                  v263 = (v12 + 24 * v254);
                  v264 = v256[2];
                  v265 = v263[1];
                  v266 = v263[2];
                  v267 = v256[1] < v265;
                  v220 = v264 == v266;
                  v268 = v264 > v266;
                  if (!v220)
                  {
                    v267 = v268;
                  }

                  if (!v267)
                  {
                    v269 = *v263;
                    do
                    {
                      v272 = v263;
                      v263 = v256;
                      v273 = *v256;
                      v272[2] = v256[2];
                      *v272 = v273;
                      if (v252 < v255)
                      {
                        break;
                      }

                      v274 = (2 * v255) | 1;
                      v256 = (v12 + 24 * v274);
                      v275 = 2 * v255 + 2;
                      if (v275 < v14)
                      {
                        v276 = v256[2];
                        v277 = v256[5];
                        v278 = v256[1] < v256[4];
                        v220 = v276 == v277;
                        v279 = v276 > v277;
                        if (!v220)
                        {
                          v278 = v279;
                        }

                        v280 = !v278;
                        if (v278)
                        {
                          v281 = 24;
                        }

                        else
                        {
                          v281 = 0;
                        }

                        v256 = (v256 + v281);
                        if (!v280)
                        {
                          v274 = v275;
                        }
                      }

                      v270 = v256[2];
                      v220 = v270 == v266;
                      v271 = v270 > v266;
                      if (v220)
                      {
                        v271 = v256[1] < v265;
                      }

                      v255 = v274;
                    }

                    while (!v271);
                    *v263 = v269;
                    v263[1] = v265;
                    v263[2] = v266;
                  }
                }

                v253 = v254 - 1;
              }

              while (v254);
              v282 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
              do
              {
                v284 = 0;
                v377 = *(v12 + 16);
                v353 = *v12;
                v285 = v12;
                do
                {
                  v293 = (v285 + 24 * v284);
                  v291 = (v293 + 3);
                  v294 = (2 * v284) | 1;
                  v284 = 2 * v284 + 2;
                  if (v284 < v282)
                  {
                    v286 = v293[5];
                    v287 = v293[8];
                    v288 = v293[4] < v293[7];
                    v220 = v286 == v287;
                    v289 = v286 > v287;
                    if (!v220)
                    {
                      v288 = v289;
                    }

                    v290 = (v293 + 6);
                    if (v288)
                    {
                      v291 = v290;
                    }

                    else
                    {
                      v284 = v294;
                    }
                  }

                  else
                  {
                    v284 = v294;
                  }

                  v292 = *v291;
                  *(v285 + 16) = v291[1].n128_u64[0];
                  *v285 = v292;
                  v285 = v291;
                }

                while (v284 <= ((v282 - 2) >> 1));
                a2 = (a2 - 24);
                if (v291 == a2)
                {
                  v291[1].n128_u64[0] = v377;
                  *v291 = v353;
                }

                else
                {
                  v295 = *a2;
                  v291[1].n128_u64[0] = a2[1].n128_u64[0];
                  *v291 = v295;
                  a2[1].n128_u64[0] = v377;
                  *a2 = v353;
                  v296 = &v291[1].n128_i64[1] - v12;
                  if (v296 >= 25)
                  {
                    v297 = (-2 - 0x5555555555555555 * (v296 >> 3)) >> 1;
                    v298 = v12 + 24 * v297;
                    v299 = *(v298 + 16);
                    v300 = v291->n128_u64[1];
                    v301 = v291[1].n128_u64[0];
                    v302 = *(v298 + 8) < v300;
                    v220 = v299 == v301;
                    v303 = v299 > v301;
                    if (!v220)
                    {
                      v302 = v303;
                    }

                    if (v302)
                    {
                      v304 = v291->n128_u64[0];
                      do
                      {
                        v305 = v291;
                        v291 = v298;
                        v306 = *v298;
                        v305[1].n128_u64[0] = *(v298 + 16);
                        *v305 = v306;
                        if (!v297)
                        {
                          break;
                        }

                        v297 = (v297 - 1) >> 1;
                        v298 = v12 + 24 * v297;
                        v307 = *(v298 + 16);
                        v308 = *(v298 + 8) < v300;
                        v220 = v307 == v301;
                        v309 = v307 > v301;
                        if (!v220)
                        {
                          v308 = v309;
                        }
                      }

                      while (v308);
                      v291->n128_u64[0] = v304;
                      v291->n128_u64[1] = v300;
                      v291[1].n128_u64[0] = v301;
                    }
                  }
                }
              }

              while (v282-- > 2);
            }

            return;
          }

          v15 = v14 >> 1;
          v16 = (v12 + 24 * (v14 >> 1));
          v18 = a2[-1].n128_u64[0];
          v17 = a2[-1].n128_u64[1];
          if (v13 < 0xC01)
          {
            v27 = *(v12 + 8);
            v28 = *(v12 + 16);
            v29 = v16[1].n128_u64[0];
            v30 = v27 < v16->n128_u64[1];
            v220 = v28 == v29;
            v31 = v28 > v29;
            if (!v220)
            {
              v30 = v31;
            }

            v32 = v18 < v27;
            v220 = v17 == v28;
            v33 = v17 > v28;
            if (!v220)
            {
              v32 = v33;
            }

            if (!v30)
            {
              if (v32)
              {
                v360 = *(v12 + 16);
                v336 = *v12;
                v41 = *v9;
                *(v12 + 16) = a2[-1].n128_u64[1];
                *v12 = v41;
                a5 = v336;
                a2[-1].n128_u64[1] = v360;
                *v9 = v336;
                v42 = *(v12 + 16);
                v43 = v16[1].n128_u64[0];
                v44 = *(v12 + 8) < v16->n128_u64[1];
                v220 = v42 == v43;
                v45 = v42 > v43;
                if (!v220)
                {
                  v44 = v45;
                }

                if (v44)
                {
                  v361 = v16[1].n128_u64[0];
                  v337 = *v16;
                  v46 = *v12;
                  v16[1].n128_u64[0] = *(v12 + 16);
                  *v16 = v46;
                  a5 = v337;
                  *(v12 + 16) = v361;
                  *v12 = v337;
                  --a3;
                  if (a4)
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_101;
                }
              }

              goto LABEL_59;
            }

            if (v32)
            {
              v357 = v16[1].n128_u64[0];
              v333 = *v16;
              v34 = *v9;
              v16[1].n128_u64[0] = a2[-1].n128_u64[1];
              *v16 = v34;
            }

            else
            {
              v364 = v16[1].n128_u64[0];
              v340 = *v16;
              v74 = *v12;
              v16[1].n128_u64[0] = *(v12 + 16);
              *v16 = v74;
              a5 = v340;
              *(v12 + 16) = v364;
              *v12 = v340;
              v75 = a2[-1].n128_u64[1];
              v76 = *(v12 + 16);
              v77 = a2[-1].n128_u64[0] < *(v12 + 8);
              v220 = v75 == v76;
              v78 = v75 > v76;
              if (!v220)
              {
                v77 = v78;
              }

              if (!v77)
              {
LABEL_59:
                --a3;
                if (a4)
                {
                  goto LABEL_60;
                }

                goto LABEL_101;
              }

              v357 = *(v12 + 16);
              v333 = *v12;
              v79 = *v9;
              *(v12 + 16) = a2[-1].n128_u64[1];
              *v12 = v79;
            }

            a5 = v333;
            a2[-1].n128_u64[1] = v357;
            *v9 = v333;
            goto LABEL_59;
          }

          v19 = v16->n128_u64[1];
          v20 = v16[1].n128_u64[0];
          v21 = *(v12 + 16);
          v22 = v19 < *(v12 + 8);
          v220 = v20 == v21;
          v23 = v20 > v21;
          if (!v220)
          {
            v22 = v23;
          }

          v24 = v18 < v19;
          v220 = v17 == v20;
          v25 = v17 > v20;
          if (!v220)
          {
            v24 = v25;
          }

          if (v22)
          {
            if (v24)
            {
              v356 = *(v12 + 16);
              v332 = *v12;
              v26 = *v9;
              *(v12 + 16) = a2[-1].n128_u64[1];
              *v12 = v26;
LABEL_41:
              a2[-1].n128_u64[1] = v356;
              *v9 = v332;
              goto LABEL_42;
            }

            v362 = *(v12 + 16);
            v338 = *v12;
            v47 = *v16;
            *(v12 + 16) = v16[1].n128_u64[0];
            *v12 = v47;
            v16[1].n128_u64[0] = v362;
            *v16 = v338;
            v48 = a2[-1].n128_u64[1];
            v49 = v16[1].n128_u64[0];
            v50 = a2[-1].n128_u64[0] < v16->n128_u64[1];
            v220 = v48 == v49;
            v51 = v48 > v49;
            if (!v220)
            {
              v50 = v51;
            }

            if (v50)
            {
              v356 = v16[1].n128_u64[0];
              v332 = *v16;
              v52 = *v9;
              v16[1].n128_u64[0] = a2[-1].n128_u64[1];
              *v16 = v52;
              goto LABEL_41;
            }
          }

          else if (v24)
          {
            v358 = v16[1].n128_u64[0];
            v334 = *v16;
            v35 = *v9;
            v16[1].n128_u64[0] = a2[-1].n128_u64[1];
            *v16 = v35;
            a2[-1].n128_u64[1] = v358;
            *v9 = v334;
            v36 = v16[1].n128_u64[0];
            v37 = *(v12 + 16);
            v38 = v16->n128_u64[1] < *(v12 + 8);
            v220 = v36 == v37;
            v39 = v36 > v37;
            if (!v220)
            {
              v38 = v39;
            }

            if (v38)
            {
              v359 = *(v12 + 16);
              v335 = *v12;
              v40 = *v16;
              *(v12 + 16) = v16[1].n128_u64[0];
              *v12 = v40;
              v16[1].n128_u64[0] = v359;
              *v16 = v335;
            }
          }

LABEL_42:
          v53 = v12 + 24 * v15;
          v54 = (v53 - 24);
          v56 = *(v53 - 16);
          v55 = *(v53 - 8);
          v57 = *(v12 + 40);
          v58 = v56 < *(v12 + 32);
          v220 = v55 == v57;
          v59 = v55 > v57;
          if (!v220)
          {
            v58 = v59;
          }

          v60 = a2[-2].n128_u64[0];
          v61 = a2[-3].n128_u64[1] < v56;
          v220 = v60 == v55;
          v62 = v60 > v55;
          if (v220)
          {
            v62 = v61;
          }

          if (v58)
          {
            if (v62)
            {
              v63 = *(v12 + 24);
              v64 = *(v12 + 40);
              v65 = a2[-2].n128_i64[0];
              *(v12 + 24) = *v10;
              *(v12 + 40) = v65;
LABEL_65:
              a2[-2].n128_u64[0] = v64;
              *v10 = v63;
              goto LABEL_66;
            }

            v82 = *(v12 + 24);
            v83 = *(v12 + 40);
            v84 = v54[1].n128_i64[0];
            *(v12 + 24) = *v54;
            *(v12 + 40) = v84;
            v54[1].n128_u64[0] = v83;
            *v54 = v82;
            v85 = a2[-2].n128_u64[0];
            v86 = v54[1].n128_u64[0];
            v87 = a2[-3].n128_u64[1] < v54->n128_u64[1];
            v220 = v85 == v86;
            v88 = v85 > v86;
            if (!v220)
            {
              v87 = v88;
            }

            if (v87)
            {
              v365 = v54[1].n128_i64[0];
              v341 = *v54;
              v89 = *v10;
              v54[1].n128_u64[0] = a2[-2].n128_u64[0];
              *v54 = v89;
              v63 = v341;
              v64 = v365;
              goto LABEL_65;
            }
          }

          else if (v62)
          {
            v363 = v54[1].n128_i64[0];
            v339 = *v54;
            v66 = *v10;
            v54[1].n128_u64[0] = a2[-2].n128_u64[0];
            *v54 = v66;
            a2[-2].n128_u64[0] = v363;
            *v10 = v339;
            v67 = v54[1].n128_u64[0];
            v68 = *(v12 + 40);
            v69 = v54->n128_u64[1] < *(v12 + 32);
            v220 = v67 == v68;
            v70 = v67 > v68;
            if (!v220)
            {
              v69 = v70;
            }

            if (v69)
            {
              v71 = *(v12 + 24);
              v72 = *(v12 + 40);
              v73 = v54[1].n128_i64[0];
              *(v12 + 24) = *v54;
              *(v12 + 40) = v73;
              v54[1].n128_u64[0] = v72;
              *v54 = v71;
            }
          }

LABEL_66:
          v90 = v12 + 24 * v15;
          v91 = *(v90 + 32);
          v92 = *(v90 + 40);
          v93 = *(v12 + 64);
          v94 = v91 < *(v12 + 56);
          v220 = v92 == v93;
          v95 = v92 > v93;
          if (!v220)
          {
            v94 = v95;
          }

          v96 = a2[-4].n128_u64[1];
          v97 = a2[-4].n128_u64[0] < v91;
          v220 = v96 == v92;
          v98 = v96 > v92;
          if (!v220)
          {
            v97 = v98;
          }

          if (v94)
          {
            if (v97)
            {
              v99 = *(v12 + 48);
              v100 = *(v12 + 64);
              v101 = a2[-4].n128_i64[1];
              *(v12 + 48) = *v11;
              *(v12 + 64) = v101;
LABEL_82:
              a2[-4].n128_u64[1] = v100;
              *v11 = v99;
              goto LABEL_83;
            }

            v110 = *(v12 + 48);
            v111 = *(v12 + 64);
            v112 = *(v90 + 40);
            *(v12 + 48) = *(v90 + 24);
            *(v12 + 64) = v112;
            *(v90 + 40) = v111;
            *(v90 + 24) = v110;
            v113 = a2[-4].n128_u64[1];
            v114 = *(v90 + 40);
            v115 = a2[-4].n128_u64[0] < *(v90 + 32);
            v220 = v113 == v114;
            v116 = v113 > v114;
            if (!v220)
            {
              v115 = v116;
            }

            if (v115)
            {
              v367 = *(v90 + 40);
              v343 = *(v90 + 24);
              v117 = *v11;
              *(v90 + 40) = a2[-4].n128_u64[1];
              *(v90 + 24) = v117;
              v99 = v343;
              v100 = v367;
              goto LABEL_82;
            }
          }

          else if (v97)
          {
            v366 = *(v90 + 40);
            v342 = *(v90 + 24);
            v102 = *v11;
            *(v90 + 40) = a2[-4].n128_u64[1];
            *(v90 + 24) = v102;
            a2[-4].n128_u64[1] = v366;
            *v11 = v342;
            v103 = *(v90 + 40);
            v104 = *(v12 + 64);
            v105 = *(v90 + 32) < *(v12 + 56);
            v220 = v103 == v104;
            v106 = v103 > v104;
            if (!v220)
            {
              v105 = v106;
            }

            if (v105)
            {
              v107 = *(v12 + 48);
              v108 = *(v12 + 64);
              v109 = *(v90 + 40);
              *(v12 + 48) = *(v90 + 24);
              *(v12 + 64) = v109;
              *(v90 + 40) = v108;
              *(v90 + 24) = v107;
            }
          }

LABEL_83:
          v118 = v16->n128_u64[1];
          v119 = v16[1].n128_u64[0];
          v120 = v54[1].n128_u64[0];
          v121 = v118 < v54->n128_u64[1];
          v220 = v119 == v120;
          v122 = v119 > v120;
          if (!v220)
          {
            v121 = v122;
          }

          v123 = *(v90 + 40);
          v124 = *(v90 + 32) < v118;
          v220 = v123 == v119;
          v125 = v123 > v119;
          if (!v220)
          {
            v124 = v125;
          }

          if (v121)
          {
            if (v124)
            {
              v368 = v54[1].n128_u64[0];
              v344 = *v54;
              *v54 = *(v90 + 24);
              v54[1].n128_u64[0] = *(v90 + 40);
LABEL_99:
              *(v90 + 40) = v368;
              *(v90 + 24) = v344;
              goto LABEL_100;
            }

            v371 = v54[1].n128_u64[0];
            v347 = *v54;
            *v54 = *v16;
            v54[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v371;
            *v16 = v347;
            v130 = *(v90 + 40);
            v131 = v16[1].n128_u64[0];
            v132 = *(v90 + 32) < v16->n128_u64[1];
            v220 = v130 == v131;
            v133 = v130 > v131;
            if (!v220)
            {
              v132 = v133;
            }

            if (v132)
            {
              v368 = v16[1].n128_u64[0];
              v344 = *v16;
              *v16 = *(v90 + 24);
              v16[1].n128_u64[0] = *(v90 + 40);
              goto LABEL_99;
            }
          }

          else if (v124)
          {
            v369 = v16[1].n128_u64[0];
            v345 = *v16;
            *v16 = *(v90 + 24);
            v16[1].n128_u64[0] = *(v90 + 40);
            *(v90 + 40) = v369;
            *(v90 + 24) = v345;
            v126 = v16[1].n128_u64[0];
            v127 = v54[1].n128_u64[0];
            v128 = v16->n128_u64[1] < v54->n128_u64[1];
            v220 = v126 == v127;
            v129 = v126 > v127;
            if (!v220)
            {
              v128 = v129;
            }

            if (v128)
            {
              v370 = v54[1].n128_u64[0];
              v346 = *v54;
              *v54 = *v16;
              v54[1].n128_u64[0] = v16[1].n128_u64[0];
              v16[1].n128_u64[0] = v370;
              *v16 = v346;
            }
          }

LABEL_100:
          v372 = *(v12 + 16);
          v348 = *v12;
          v134 = *v16;
          *(v12 + 16) = v16[1].n128_u64[0];
          *v12 = v134;
          a5 = v348;
          v16[1].n128_u64[0] = v372;
          *v16 = v348;
          --a3;
          if (a4)
          {
LABEL_60:
            v80 = *(v12 + 8);
            v81 = *(v12 + 16);
            break;
          }

LABEL_101:
          v135 = *(v12 - 8);
          v80 = *(v12 + 8);
          v81 = *(v12 + 16);
          v136 = *(v12 - 16) < v80;
          v220 = v135 == v81;
          v137 = v135 > v81;
          if (!v220)
          {
            v136 = v137;
          }

          if (v136)
          {
            break;
          }

          v166 = a2[-1].n128_u64[1];
          v167 = v80 < a2[-1].n128_u64[0];
          v220 = v81 == v166;
          v168 = v81 > v166;
          if (!v220)
          {
            v167 = v168;
          }

          if (v167)
          {
            v169 = v12;
            do
            {
              v12 = v169 + 24;
              v171 = *(v169 + 32);
              v170 = *(v169 + 40);
              v172 = v80 < v171;
              v220 = v81 == v170;
              v173 = v81 > v170;
              if (!v220)
              {
                v172 = v173;
              }

              v169 = v12;
            }

            while (!v172);
          }

          else
          {
            v174 = v12 + 24;
            do
            {
              v12 = v174;
              if (v174 >= a2)
              {
                break;
              }

              v175 = *(v174 + 16);
              v176 = v80 < *(v174 + 8);
              v220 = v81 == v175;
              v177 = v81 > v175;
              if (v220)
              {
                v177 = v176;
              }

              v174 = v12 + 24;
            }

            while (!v177);
          }

          v178 = a2;
          if (v12 < a2)
          {
            v179 = a2;
            do
            {
              v178 = (v179 - 24);
              v181 = v179[-1].n128_u64[0];
              v180 = v179[-1].n128_u64[1];
              v182 = v80 < v181;
              v220 = v81 == v180;
              v183 = v81 > v180;
              if (!v220)
              {
                v182 = v183;
              }

              v179 = v178;
            }

            while (v182);
          }

          v184 = *a1;
          while (v12 < v178)
          {
            v374 = *(v12 + 16);
            v350 = *v12;
            v185 = *v178;
            *(v12 + 16) = v178[1].n128_u64[0];
            *v12 = v185;
            a5 = v350;
            v178[1].n128_u64[0] = v374;
            *v178 = v350;
            do
            {
              v186 = *(v12 + 32);
              v187 = *(v12 + 40);
              v12 += 24;
              v188 = v80 < v186;
              v220 = v81 == v187;
              v189 = v81 > v187;
              if (!v220)
              {
                v188 = v189;
              }
            }

            while (!v188);
            do
            {
              v190 = v178[-1].n128_u64[0];
              v191 = v178[-1].n128_u64[1];
              v178 = (v178 - 24);
              v192 = v80 < v190;
              v220 = v81 == v191;
              v193 = v81 > v191;
              if (!v220)
              {
                v192 = v193;
              }
            }

            while (v192);
          }

          if ((v12 - 24) != a1)
          {
            a5 = *(v12 - 24);
            a1[2] = *(v12 - 8);
            *a1 = a5;
          }

          a4 = 0;
          *(v12 - 24) = v184;
          *(v12 - 16) = v80;
          *(v12 - 8) = v81;
        }

        v138 = 0;
        v139 = *v12;
        do
        {
          v140 = *(v12 + v138 + 40);
          v220 = v140 == v81;
          v141 = v140 > v81;
          if (v220)
          {
            v141 = *(v12 + v138 + 32) < v80;
          }

          v138 += 24;
        }

        while (v141);
        v142 = v12 + v138;
        v143 = a2;
        if (v138 == 24)
        {
          v149 = a2;
          while (v142 < v149)
          {
            v144 = (v149 - 24);
            v151 = v149[-1].n128_u64[0];
            v150 = v149[-1].n128_u64[1];
            v152 = v151 < v80;
            v220 = v150 == v81;
            v153 = v150 > v81;
            if (!v220)
            {
              v152 = v153;
            }

            v149 = v144;
            if (v152)
            {
              goto LABEL_118;
            }
          }

          v144 = v149;
          v12 = v142;
        }

        else
        {
          do
          {
            v144 = (v143 - 24);
            v146 = v143[-1].n128_u64[0];
            v145 = v143[-1].n128_u64[1];
            v147 = v146 < v80;
            v220 = v145 == v81;
            v148 = v145 > v81;
            if (!v220)
            {
              v147 = v148;
            }

            v143 = v144;
          }

          while (!v147);
LABEL_118:
          v12 = v142;
          if (v142 < v144)
          {
            v154 = v144;
            do
            {
              v373 = *(v12 + 16);
              v349 = *v12;
              v155 = *v154;
              *(v12 + 16) = *(v154 + 16);
              *v12 = v155;
              a5 = v349;
              *(v154 + 16) = v373;
              *v154 = v349;
              do
              {
                v156 = *(v12 + 32);
                v157 = *(v12 + 40);
                v12 += 24;
                v158 = v156 < v80;
                v220 = v157 == v81;
                v159 = v157 > v81;
                if (!v220)
                {
                  v158 = v159;
                }
              }

              while (v158);
              do
              {
                v160 = *(v154 - 16);
                v161 = *(v154 - 8);
                v154 -= 24;
                v162 = v160 < v80;
                v220 = v161 == v81;
                v163 = v161 > v81;
                if (!v220)
                {
                  v162 = v163;
                }
              }

              while (!v162);
            }

            while (v12 < v154);
          }
        }

        if ((v12 - 24) != a1)
        {
          a5 = *(v12 - 24);
          a1[2] = *(v12 - 8);
          *a1 = a5;
        }

        *(v12 - 24) = v139;
        *(v12 - 16) = v80;
        *(v12 - 8) = v81;
        if (v142 >= v144)
        {
          break;
        }

LABEL_133:
        sub_996438(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }

      v164 = sub_9978B8(a1, (v12 - 24), a5);
      if (sub_9978B8(v12, a2, v165))
      {
        break;
      }

      if (!v164)
      {
        goto LABEL_133;
      }
    }

    a2 = (v12 - 24);
    if (!v164)
    {
      continue;
    }

    break;
  }
}

__n128 sub_9976B0(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_u64[1];
  v6 = a2[1].n128_u64[0];
  v7 = a1[1].n128_u64[0];
  v8 = v5 < a1->n128_u64[1];
  v9 = v6 == v7;
  v10 = v6 > v7;
  if (!v9)
  {
    v8 = v10;
  }

  v11 = a3[1].n128_u64[0];
  v12 = a3->n128_u64[1] < v5;
  v9 = v11 == v6;
  v13 = v11 > v6;
  if (!v9)
  {
    v12 = v13;
  }

  if (v8)
  {
    if (v12)
    {
      v14 = a1[1].n128_u64[0];
      result = *a1;
      v15 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v15;
LABEL_17:
      *a3 = result;
      a3[1].n128_u64[0] = v14;
      goto LABEL_18;
    }

    v24 = a1[1].n128_u64[0];
    result = *a1;
    v25 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v25;
    *a2 = result;
    a2[1].n128_u64[0] = v24;
    v26 = a3[1].n128_u64[0];
    v27 = a2[1].n128_u64[0];
    v28 = a3->n128_u64[1] < a2->n128_u64[1];
    v9 = v26 == v27;
    v29 = v26 > v27;
    if (!v9)
    {
      v28 = v29;
    }

    if (v28)
    {
      v14 = a2[1].n128_u64[0];
      result = *a2;
      v30 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v30;
      goto LABEL_17;
    }
  }

  else if (v12)
  {
    v16 = a2[1].n128_u64[0];
    result = *a2;
    v17 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v17;
    *a3 = result;
    a3[1].n128_u64[0] = v16;
    v18 = a2[1].n128_u64[0];
    v19 = a1[1].n128_u64[0];
    v20 = a2->n128_u64[1] < a1->n128_u64[1];
    v9 = v18 == v19;
    v21 = v18 > v19;
    if (!v9)
    {
      v20 = v21;
    }

    if (v20)
    {
      v22 = a1[1].n128_u64[0];
      result = *a1;
      v23 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v23;
      *a2 = result;
      a2[1].n128_u64[0] = v22;
    }
  }

LABEL_18:
  v31 = a4[1].n128_u64[0];
  v32 = a3[1].n128_u64[0];
  v33 = a4->n128_u64[1] < a3->n128_u64[1];
  v9 = v31 == v32;
  v34 = v31 > v32;
  if (!v9)
  {
    v33 = v34;
  }

  if (v33)
  {
    v35 = a3[1].n128_u64[0];
    result = *a3;
    v36 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v36;
    *a4 = result;
    a4[1].n128_u64[0] = v35;
    v37 = a3[1].n128_u64[0];
    v38 = a2[1].n128_u64[0];
    v39 = a3->n128_u64[1] < a2->n128_u64[1];
    v9 = v37 == v38;
    v40 = v37 > v38;
    if (!v9)
    {
      v39 = v40;
    }

    if (v39)
    {
      v41 = a2[1].n128_u64[0];
      result = *a2;
      v42 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v42;
      *a3 = result;
      a3[1].n128_u64[0] = v41;
      v43 = a2[1].n128_u64[0];
      v44 = a1[1].n128_u64[0];
      v45 = a2->n128_u64[1] < a1->n128_u64[1];
      v9 = v43 == v44;
      v46 = v43 > v44;
      if (!v9)
      {
        v45 = v46;
      }

      if (v45)
      {
        v47 = a1[1].n128_u64[0];
        result = *a1;
        v48 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v48;
        *a2 = result;
        a2[1].n128_u64[0] = v47;
      }
    }
  }

  return result;
}

BOOL sub_9978B8(uint64_t a1, void *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v40 = (a2 - 3);
        v41 = *(a1 + 32);
        v42 = *(a1 + 40);
        v43 = *(a1 + 16);
        v44 = v41 < *(a1 + 8);
        v7 = v42 == v43;
        v45 = v42 > v43;
        if (!v7)
        {
          v44 = v45;
        }

        v46 = *(a2 - 1);
        v47 = *(a2 - 2) < v41;
        v7 = v46 == v42;
        v48 = v46 > v42;
        if (!v7)
        {
          v47 = v48;
        }

        if (!v44)
        {
          if (v47)
          {
            v64 = *(a1 + 40);
            v65 = *(a1 + 24);
            v66 = *(a2 - 1);
            *(a1 + 24) = *v40;
            *(a1 + 40) = v66;
            *v40 = v65;
            *(a2 - 1) = v64;
            v67 = *(a1 + 40);
            v68 = *(a1 + 16);
            v69 = *(a1 + 32) < *(a1 + 8);
            v7 = v67 == v68;
            v70 = v67 > v68;
            if (!v7)
            {
              v69 = v70;
            }

            if (v69)
            {
              v71 = *(a1 + 16);
              v72 = *a1;
              *a1 = *(a1 + 24);
              *(a1 + 16) = *(a1 + 40);
              *(a1 + 24) = v72;
              *(a1 + 40) = v71;
              return 1;
            }
          }

          return 1;
        }

        if (v47)
        {
          v49 = *(a1 + 16);
          v50 = *a1;
          v51 = *(a2 - 1);
          *a1 = *v40;
          *(a1 + 16) = v51;
        }

        else
        {
          v81 = *(a1 + 16);
          v82 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 24) = v82;
          v83 = *(a1 + 32);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 40) = v81;
          v84 = *(a2 - 1);
          v85 = *(a1 + 40);
          v86 = *(a2 - 2) < v83;
          v7 = v84 == v85;
          v87 = v84 > v85;
          if (!v7)
          {
            v86 = v87;
          }

          if (!v86)
          {
            return 1;
          }

          v49 = *(a1 + 40);
          v50 = *(a1 + 24);
          v88 = *(a2 - 1);
          *(a1 + 24) = *v40;
          *(a1 + 40) = v88;
        }

        *v40 = v50;
        *(a2 - 1) = v49;
        return 1;
      case 4:
        sub_9976B0(a1, (a1 + 24), (a1 + 48), (a2 - 3), a3);
        return 1;
      case 5:
        sub_9976B0(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        v15 = *(a2 - 1);
        v16 = *(a1 + 88);
        v17 = *(a2 - 2) < *(a1 + 80);
        v7 = v15 == v16;
        v18 = v15 > v16;
        if (!v7)
        {
          v17 = v18;
        }

        if (v17)
        {
          v19 = *(a1 + 88);
          v20 = *(a1 + 72);
          v21 = *(a2 - 1);
          *(a1 + 72) = *(a2 - 3);
          *(a1 + 88) = v21;
          *(a2 - 3) = v20;
          *(a2 - 1) = v19;
          v22 = *(a1 + 88);
          v23 = *(a1 + 64);
          v24 = *(a1 + 80) < *(a1 + 56);
          v7 = v22 == v23;
          v25 = v22 > v23;
          if (!v7)
          {
            v24 = v25;
          }

          if (v24)
          {
            v26 = *(a1 + 48);
            *(a1 + 48) = *(a1 + 72);
            v28 = *(a1 + 56);
            v27 = *(a1 + 64);
            *(a1 + 64) = *(a1 + 88);
            *(a1 + 72) = v26;
            *(a1 + 88) = v27;
            v29 = *(a1 + 64);
            v30 = *(a1 + 40);
            v7 = v29 == v30;
            v31 = v29 > v30;
            if (v7)
            {
              v31 = v28 < *(a1 + 32);
            }

            if (v31)
            {
              v32 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 48);
              v34 = *(a1 + 32);
              v33 = *(a1 + 40);
              *(a1 + 40) = *(a1 + 64);
              *(a1 + 48) = v32;
              *(a1 + 64) = v33;
              v35 = *(a1 + 40);
              v36 = *(a1 + 16);
              v7 = v35 == v36;
              v37 = v35 > v36;
              if (v7)
              {
                v37 = v34 < *(a1 + 8);
              }

              if (v37)
              {
                v38 = *(a1 + 16);
                v39 = *a1;
                *a1 = *(a1 + 24);
                *(a1 + 16) = *(a1 + 40);
                *(a1 + 24) = v39;
                *(a1 + 40) = v38;
                return 1;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v4 = *(a2 - 1);
      v5 = *(a1 + 16);
      v6 = *(a2 - 2) < *(a1 + 8);
      v7 = v4 == v5;
      v8 = v4 > v5;
      if (!v7)
      {
        v6 = v8;
      }

      if (v6)
      {
        v9 = *(a1 + 16);
        v10 = *a1;
        v11 = *(a2 - 1);
        *a1 = *(a2 - 3);
        *(a1 + 16) = v11;
        *(a2 - 3) = v10;
        *(a2 - 1) = v9;
        return 1;
      }

      return 1;
    }
  }

  v52 = (a1 + 48);
  v53 = *(a1 + 32);
  v54 = *(a1 + 40);
  v56 = *(a1 + 8);
  v55 = *(a1 + 16);
  if (v54 == v55)
  {
    v57 = v53 < v56;
  }

  else
  {
    v57 = v54 > v55;
  }

  v59 = *(a1 + 56);
  v58 = *(a1 + 64);
  v60 = v59 < v53;
  v7 = v58 == v54;
  v61 = v58 > v54;
  if (!v7)
  {
    v60 = v61;
  }

  if (v57)
  {
    if (v60)
    {
      v62 = *(a1 + 16);
      v63 = *a1;
      *a1 = *v52;
      *(a1 + 16) = *(a1 + 64);
LABEL_59:
      *v52 = v63;
      *(a1 + 64) = v62;
      goto LABEL_60;
    }

    v89 = *(a1 + 16);
    v90 = *(a1 + 24);
    *(a1 + 24) = *a1;
    v91 = *(a1 + 32);
    *(a1 + 16) = *(a1 + 40);
    *a1 = v90;
    *(a1 + 40) = v89;
    v92 = *(a1 + 40);
    v7 = v58 == v92;
    v93 = v58 > v92;
    if (v7)
    {
      v93 = v59 < v91;
    }

    if (v93)
    {
      v62 = *(a1 + 40);
      v63 = *(a1 + 24);
      *(a1 + 24) = *v52;
      *(a1 + 40) = *(a1 + 64);
      goto LABEL_59;
    }
  }

  else if (v60)
  {
    v73 = *(a1 + 24);
    *(a1 + 24) = *v52;
    v75 = *(a1 + 32);
    v74 = *(a1 + 40);
    *(a1 + 40) = *(a1 + 64);
    *v52 = v73;
    *(a1 + 64) = v74;
    v76 = *(a1 + 40);
    v77 = v75 < v56;
    v7 = v76 == v55;
    v78 = v76 > v55;
    if (v7)
    {
      v78 = v77;
    }

    if (v78)
    {
      v79 = *(a1 + 16);
      v80 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v80;
      *(a1 + 40) = v79;
    }
  }

LABEL_60:
  v94 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v95 = 0;
  v96 = 0;
  while (1)
  {
    v97 = v94[1];
    v98 = v94[2];
    v100 = v52[1];
    v99 = v52[2];
    v101 = v97 < v100;
    v7 = v98 == v99;
    v102 = v98 > v99;
    if (v7)
    {
      v102 = v101;
    }

    if (v102)
    {
      break;
    }

LABEL_73:
    v52 = v94;
    v95 += 24;
    v94 += 3;
    if (v94 == a2)
    {
      return 1;
    }
  }

  v103 = *v94;
  v104 = v95;
  do
  {
    v105 = a1 + v104;
    *(v105 + 72) = *(a1 + v104 + 48);
    *(v105 + 88) = *(a1 + v104 + 64);
    if (v104 == -48)
    {
      *a1 = v103;
      *(a1 + 8) = v97;
      *(a1 + 16) = v98;
      if (++v96 != 8)
      {
        goto LABEL_73;
      }

      return v94 + 3 == a2;
    }

    v107 = *(v105 + 32);
    v106 = *(v105 + 40);
    v108 = v97 < v107;
    v7 = v98 == v106;
    v109 = v98 > v106;
    if (v7)
    {
      v109 = v108;
    }

    v104 -= 24;
  }

  while (v109);
  v110 = (a1 + v104);
  v110[9] = v103;
  v110[10] = v97;
  v110[11] = v98;
  if (++v96 != 8)
  {
    goto LABEL_73;
  }

  return v94 + 3 == a2;
}

void sub_997E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  strcpy(v8, "TransitAdvisoryBuilder");
  v8[23] = 22;
  memset(__p, 0, sizeof(__p));
  sub_3AEC94(a7, v8, __p);
  sub_998080();
}

void sub_997FB8(_Unwind_Exception *a1)
{
  sub_6E3B8((v1 + 1712));
  sub_6E3B8((v1 + 1608));
  sub_528AB4(v1 + 32);
  _Unwind_Resume(a1);
}

void sub_997FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_99819C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9981BC(uint64_t result, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    sub_998F28(result, (a2 + 3), *a2);
  }

  return result;
}

void sub_998E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_55A860(v55 - 136);
  sub_55A8B4(&a55);
  sub_559E14(&a15);
  sub_98ED24(&a18);
  sub_98ED24(&a37);
  _Unwind_Resume(a1);
}

void sub_998F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 1624);
  v5 = *(a1 + 1688);
  v6 = *(a1 + 1704);
  v8[0] = a2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v9 = *(a1 + 1632);
  v10 = *(a1 + 1648);
  v11 = *(a1 + 1664);
  v7 = *(a1 + 1680);
  v8[4] = v6;
  v12 = v7;
  sub_A06718(a3, v8);
}

void sub_9994E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *(v4 + 8) = v5;
  sub_55A8B4(va);
  sub_559E14(&STACK[0x208]);
  sub_55A8B4(&STACK[0x220]);
  sub_98ED24(&STACK[0x410]);
  sub_559E14(v6);
  v9 = *(v7 - 200);
  *(v7 - 200) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Unwind_Resume(a1);
}

void sub_99962C(uint64_t a1@<X3>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*a1 == 2 && *(a1 + 5672) >= 2u)
  {
    sub_999BA8(v2);
  }

  sub_99B3D8(v2);
}

void sub_999AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  *(v31 + 8) = v32;
  sub_55A8B4(&STACK[0x4B8]);
  sub_55A8B4(&a31);
  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  sub_55A8B4(&STACK[0x2C8]);
  sub_559E14(v31);
  _Unwind_Resume(a1);
}

void sub_999BA8(uint64_t a1@<X8>)
{
  sub_64B998(a1);
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_64B998(a1 + 192);
  *(a1 + 384) = 0;
  *(a1 + 392) = -1;
  *(a1 + 395) = -1;
  *(a1 + 407) = 0;
  *(a1 + 415) = 0;
  *(a1 + 399) = 0;
  *(a1 + 423) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 472) = sub_1CEE8(a1 + 464, "TRANSIT");
  *(a1 + 488) = 3;
  sub_587F3C(40);
}

void sub_99A4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_55A8B4(v35);
  _Unwind_Resume(a1);
}

uint64_t sub_99A634(std::string *this, char *a2, uint64_t a3)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v6 = this;
  }

  else
  {
    v6 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v7 = a2[23];
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = a2[23];
  }

  else
  {
    v9 = *(a2 + 1);
  }

  if (!v9)
  {
    v11 = 0;
LABEL_17:
    v12 = *(a3 + 23);
    if (v12 >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    if (v12 >= 0)
    {
      v14 = *(a3 + 23);
    }

    else
    {
      v14 = *(a3 + 8);
    }

    std::string::replace(this, v11, v9, v13, v14);
    return 1;
  }

  if (size < v9)
  {
    return 0;
  }

  v15 = v6 + size;
  v16 = *v8;
  v17 = v6;
  while (1)
  {
    v18 = size - v9;
    if (v18 == -1)
    {
      return 0;
    }

    result = memchr(v17, v16, v18 + 1);
    if (!result)
    {
      return result;
    }

    v19 = result;
    result = memcmp(result, v8, v9);
    if (!result)
    {
      break;
    }

    v17 = (v19 + 1);
    size = &v15[-v19 - 1];
    if (size < v9)
    {
      return 0;
    }
  }

  if (v19 != v15)
  {
    v11 = v19 - v6;
    if (v19 - v6 != -1)
    {
      goto LABEL_17;
    }
  }

  return result;
}

double sub_99A770@<D0>(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 8) != 1 || a2[1] - *a2 == 32 && (v4 = **a2, v5 = *(*a2 + 1), v5 - v4 == 104) && (v4 == v5 || (v7 = *(v4 + 8), v6 = *(v4 + 16), v7 == v6) || *(v6 - 5704) != 4))
  {
    sub_64B998(a3);
    *(a3 + 168) = 0;
    *(a3 + 160) = 0;
    *(a3 + 176) = 0;
    *(a3 + 184) = 0;
    sub_64B998(a3 + 192);
  }

  else
  {
    sub_9D4074(v10, a2);
    sub_9D4040(v10, &v11);
    if (!sub_9D427C(v10, &v11))
    {
LABEL_16:
      sub_64B998(a3);
      *(a3 + 168) = 0;
      *(a3 + 160) = 0;
      *(a3 + 176) = 0;
      *(a3 + 184) = 0;
      sub_64B998(a3 + 192);
      *(a3 + 384) = 0;
      *(a3 + 392) = -1;
      *(a3 + 395) = -1;
      *(a3 + 407) = 0;
      *(a3 + 415) = 0;
      *(a3 + 399) = 0;
      *(a3 + 423) = 0;
      *(a3 + 440) = 0;
      *(a3 + 448) = 0;
      *(a3 + 432) = 0;
      *(a3 + 456) = 0;
      *(a3 + 464) = 0u;
      *(a3 + 480) = 0u;
      *(a3 + 472) = sub_1CEE8(a3 + 464, "TRANSIT");
      *(a3 + 488) = 1;
      sub_587F3C(39);
    }

    while (1)
    {
      if (*sub_9D42B8(v10) == 2)
      {
        v8 = sub_9D42B8(v10);
        if (*(v8 + 120) != 0x7FFFFFFF && *(v8 + 124) == 1)
        {
          break;
        }
      }

      sub_9D40D8(v10);
      sub_9D4040(v10, &v11);
      if (!sub_9D427C(v10, &v11))
      {
        goto LABEL_16;
      }
    }

    sub_64B998(a3);
    *(a3 + 168) = 0;
    *(a3 + 160) = 0;
    *(a3 + 176) = 0;
    *(a3 + 184) = 0;
    sub_64B998(a3 + 192);
  }

  result = 0.0;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 399) = 0;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 423) = 0;
  *(a3 + 432) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 456) = 0;
  *(a3 + 480) = 0u;
  return result;
}

void sub_99ABF4(_Unwind_Exception *a1)
{
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
    sub_55A8B4(v1);
    _Unwind_Resume(a1);
  }

  sub_55A8B4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_99ACA8@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_A07334(a2, v23);
  sub_99CA68(v23, v25);
  if (v24 < 0)
  {
    operator delete(v23[1]);
  }

  if (!sub_4D1F6C(v25))
  {
    v6 = a3[1];
    if (v6 >= a3[2])
    {
      v7 = sub_99EF1C(a3, v25);
    }

    else
    {
      sub_5F4668(a3[1], v25);
      v7 = v6 + 496;
    }

    a3[1] = v7;
  }

  sub_A124F0((a1 + 1696), a2, *(a1 + 1688), *(a1 + 1624) + 1177, v22);
  sub_99CF6C(v22, v23);
  sub_53A868(v22);
  if (!sub_4D1F6C(v23))
  {
    v8 = a3[1];
    if (v8 >= a3[2])
    {
      v9 = sub_99EF1C(a3, v23);
    }

    else
    {
      sub_5F4668(a3[1], v23);
      v9 = v8 + 496;
    }

    a3[1] = v9;
  }

  v10 = *(a1 + 1624);
  v11 = *a3;
  v12 = a3[1];
  if (*(v10 + 1415) == 1 && 0xEF7BDEF7BDEF7BDFLL * ((v12 - v11) >> 4) >= 2 && *(v10 + 1444) <= 1u)
  {
    sub_99D4B0(v22);
  }

  for (; v11 != v12; v11 += 496)
  {
    v13 = sub_53A634(v11, 0);
    v14 = v13;
    v15 = *(v13 + 23);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = *v13;
    }

    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v13 + 8);
    }

    if (v15 >= 16)
    {
      v17 = &v16[v15];
      v18 = v16;
      do
      {
        v19 = memchr(v18, 123, v15 - 15);
        if (!v19)
        {
          break;
        }

        if (*v19 == 0x616E6F6974704F7BLL && *(v19 + 1) == 0x7D646F697265506CLL)
        {
          if (v19 != v17 && v19 - v16 != -1)
          {
            std::string::replace(v14, v19 - v16, 0x10uLL, byte_22A5B80, 0);
          }

          break;
        }

        v18 = v19 + 1;
        v15 = v17 - v18;
      }

      while (v17 - v18 >= 16);
    }
  }

  sub_55A8B4(v23);
  return sub_55A8B4(v25);
}

void sub_99AF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_55A8B4(&STACK[0x5D8]);
  sub_55A8B4(&a10);
  sub_55A8B4(&a72);
  sub_55A8B4(&STACK[0x3E8]);
  sub_559E14(v72);
  _Unwind_Resume(a1);
}

void sub_99B034()
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  sub_99B3D8(v0);
}

void sub_99B314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5EC004(va);
  sub_53A868(v2);
  sub_559E14((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_99B33C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_55A8B4(va);
  sub_559E14((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_99B3D8(uint64_t a1@<X8>)
{
  sub_64B998(a1);
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_64B998(a1 + 192);
  *(a1 + 384) = 0;
  *(a1 + 392) = -1;
  *(a1 + 395) = -1;
  *(a1 + 407) = 0;
  *(a1 + 415) = 0;
  *(a1 + 399) = 0;
  *(a1 + 423) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 472) = sub_1CEE8(a1 + 464, "TRANSIT");
  *(a1 + 488) = 2;
  sub_587F3C(4);
}

void sub_99B894(_Unwind_Exception *a1)
{
  if (v2 < 0)
  {
    operator delete(*(v3 - 112));
    sub_55A8B4(v1);
    _Unwind_Resume(a1);
  }

  sub_55A8B4(v1);
  _Unwind_Resume(a1);
}

void sub_99B960(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 1160);
  if (v5 == 0x7FFFFFFF)
  {
    goto LABEL_9;
  }

  v6 = *(a2 + 1191);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 1176);
  }

  v7 = !v6 || v5 == 0;
  if (v7 || *(*(a1 + 1624) + 1186))
  {
LABEL_9:
    sub_64B998(a4);
    *(a4 + 168) = 0;
    *(a4 + 160) = 0;
    *(a4 + 176) = 0;
    *(a4 + 184) = 0;
    sub_64B998(a4 + 192);
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0u;
    *(a4 + 464) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 392) = -1;
    *(a4 + 395) = -1;
    *(a4 + 399) = 0;
    *(a4 + 407) = 0;
    *(a4 + 415) = 0;
    *(a4 + 423) = 0;
    *(a4 + 432) = 0;
    *(a4 + 440) = 0;
    *(a4 + 448) = 0;
    *(a4 + 456) = 0;
    *(a4 + 480) = 0u;
  }

  else
  {
    sub_9D4074(&__p, a2);
    v10 = 0;
    while (1)
    {
      sub_9D4040(&__p, &__dst);
      if (!sub_9D427C(&__p, &__dst))
      {
        break;
      }

      if (*sub_9D42B8(&__p) == 2)
      {
        ++v10;
        if (*(sub_9D42B8(&__p) + 2104) == 1)
        {
          v11 = sub_9D42B8(&__p);
          v12 = *(v11 + 2072);
          v13 = *(v11 + 2080);
          if (v12 != v13)
          {
            while (1)
            {
              v14 = *v12;
              v15 = sub_3AFEE8(*(a1 + 1704));
              if ((sub_9BD018(v14, v15) & 1) == 0)
              {
                break;
              }

              if (++v12 == v13)
              {
                if ((0x66FD0EB66FD0EB67 * ((*(a3 + 80) - *(a3 + 72)) >> 3)) > *(sub_9D42B8(&__p) + 752))
                {
                  operator new();
                }

                sub_6FAB4();
              }
            }
          }
        }
      }

      sub_9D40D8(&__p);
    }

    sub_64B998(a4);
    *(a4 + 168) = 0;
    *(a4 + 160) = 0;
    *(a4 + 176) = 0;
    *(a4 + 184) = 0;
    sub_64B998(a4 + 192);
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0u;
    *(a4 + 464) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 392) = -1;
    *(a4 + 395) = -1;
    *(a4 + 399) = 0;
    *(a4 + 407) = 0;
    *(a4 + 415) = 0;
    *(a4 + 423) = 0;
    *(a4 + 432) = 0;
    *(a4 + 440) = 0;
    *(a4 + 448) = 0;
    *(a4 + 456) = 0;
    *(a4 + 480) = 0u;
  }
}

void sub_99C034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 - 137) < 0)
  {
    operator delete(*(v16 - 160));
  }

  if (*(v16 - 113) < 0)
  {
    operator delete(*(v16 - 136));
  }

  sub_1A104(&a11);
  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
    if (!__p)
    {
      goto LABEL_9;
    }
  }

  else if (!__p)
  {
LABEL_9:
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_99C1B8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = 0;
  v44 = 0;
  v45 = 0;
  sub_64B998(v29);
  sub_64B998(v30);
  v32 = 0;
  memset(v33, 255, sizeof(v33));
  v35 = 0;
  v34 = 0uLL;
  v36 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v40 = 0;
  sub_64B998(v41);
  sub_64B998(v42);
  v42[10] = xmmword_2291330;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = sub_9274F4(*(a1 + 16), "Advisory_Separator");
  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  sub_64FB18(v30, v6, __p);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v9 = 0;
    do
    {
      v10 = *(v7 + 488);
      if (v10 == 5)
      {
        sub_99FE28(&v26, v27, *(v7 + 168), *(v7 + 176), 0x8F5C28F5C28F5C29 * ((*(v7 + 176) - *(v7 + 168)) >> 5));
      }

      else if (v10 == 2)
      {
        if ((v7 + 168) != &v43)
        {
          sub_6025E0(&v43, *(v7 + 168), *(v7 + 176), 0x8F5C28F5C28F5C29 * ((*(v7 + 176) - *(v7 + 168)) >> 5));
        }
      }

      else
      {
        sub_99D778(a1, v30, v7);
        ++v9;
      }

      v7 += 496;
    }

    while (v7 != v8);
    if (v9)
    {
      v11 = "Advisory_Title_Notices";
      if (v9 == 1)
      {
        v11 = "Advisory_Title_Notice";
      }

      *v24 = *v11;
      v25 = *(v11 + 2);
      v12 = sub_9274F4(*(a1 + 24), v24);
      sub_64BC20(__p, v12);
      sub_53D784(v29, __p);
      sub_53A868(__p);
      v13 = v27;
      if (v27 >= v28)
      {
        v14 = sub_55DBE0(&v26, v29);
        v27 = v14;
        v15 = *(v14 - 16);
        if (v15 >= *(v14 - 8))
        {
LABEL_17:
          *(v14 - 16) = sub_1CEE8(v14 - 24, "TRANSIT");
          if ((SHIBYTE(v25) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

LABEL_30:
          operator delete(v24[0]);
          goto LABEL_18;
        }
      }

      else
      {
        sub_55BC9C(v27, v29);
        *(v13 + 768) = 2;
        *(v13 + 776) = 0;
        *(v13 + 792) = 0;
        *(v13 + 784) = 0;
        v14 = v13 + 800;
        v27 = v14;
        v15 = *(v14 - 16);
        if (v15 >= *(v14 - 8))
        {
          goto LABEL_17;
        }
      }

      *(v15 + 16) = 0x700000000000000;
      *v15 = *"TRANSIT";
      *(v14 - 16) = v15 + 24;
      *(v14 - 16) = v15 + 24;
      if ((SHIBYTE(v25) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_30;
    }
  }

LABEL_18:
  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  *(a3 + 384) = 0;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 399) = 0;
  *(a3 + 423) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0;
  *(a3 + 456) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 160) = 1;
  sub_5410A0(a3 + 352, *a2 + 352);
  sub_99D230(a1, 0xEF7BDEF7BDEF7BDFLL * ((a2[1] - *a2) >> 4), v24);
  sub_64BC20(__p, v24);
  sub_53D784(a3, __p);
  sub_53A868(__p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  *(a3 + 488) = 1;
  v16 = *(a3 + 176);
  if (*(*a2 + 488) == 3)
  {
    sub_99FE28((a3 + 168), v16, v26, v27, 0x8F5C28F5C28F5C29 * ((v27 - v26) >> 5));
    v17 = &v43;
  }

  else
  {
    sub_99FE28((a3 + 168), v16, v43, v44, 0x8F5C28F5C28F5C29 * ((v44 - v43) >> 5));
    v17 = &v26;
  }

  sub_99FE28((a3 + 168), *(a3 + 176), *v17, v17[1], 0x8F5C28F5C28F5C29 * ((v17[1] - *v17) >> 5));
  v18 = 0x8F5C28F5C28F5C29 * ((*(a3 + 176) - *(a3 + 168)) >> 5);
  if (v18 >= 2)
  {
    sub_99D230(a1, v18, v24);
    sub_64BC20(__p, v24);
    sub_53D784(a3, __p);
    sub_53A868(__p);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    sub_587F3C(4);
  }

  sub_594568(a3, v29);
  v19 = *(a3 + 168);
  for (i = *(a3 + 176); v19 != i; v19 += 800)
  {
    sub_93FE4(a3 + 464, *(a3 + 472), *(v19 + 776), *(v19 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(v19 + 784) - *(v19 + 776)) >> 3));
  }

  sub_93524(a3 + 464);
  __p[0] = &v26;
  sub_5EC004(__p);
  sub_53A868(v42);
  sub_53A868(v41);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v37);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_35:
      v21 = v32;
      if (v32 == -1)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(*(&v34 + 1));
  v21 = v32;
  if (v32 != -1)
  {
LABEL_39:
    (off_266F3F0[v21])(__p, &v31);
  }

LABEL_40:
  v32 = -1;
  sub_53A868(v30);
  sub_53A868(v29);
  v29[0] = &v43;
  sub_5EC004(v29);
}

void sub_99C854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  a9 = &a38;
  sub_5EC004(&a9);
  sub_53F5F4(&a41);
  a41 = v41 - 112;
  sub_5EC004(&a41);
  _Unwind_Resume(a1);
}

void sub_99CA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_99CA68@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1 != 0x7FFFFFFF)
  {
    v3 = *(a1 + 31);
    if ((v3 & 0x80u) != 0)
    {
      v3 = *(a1 + 16);
    }

    if (v3)
    {
      sub_64B998(a2);
      *(a2 + 168) = 0;
      *(a2 + 160) = 0;
      *(a2 + 176) = 0;
      *(a2 + 184) = 0;
      sub_64B998(a2 + 192);
      *(a2 + 384) = 0;
      *(a2 + 392) = -1;
      *(a2 + 395) = -1;
      *(a2 + 407) = 0;
      *(a2 + 415) = 0;
      *(a2 + 399) = 0;
      *(a2 + 423) = 0;
      *(a2 + 440) = 0;
      *(a2 + 448) = 0;
      *(a2 + 432) = 0;
      *(a2 + 456) = 0;
      *(a2 + 464) = 0u;
      *(a2 + 480) = 0u;
      *(a2 + 472) = sub_1CEE8(a2 + 464, "TRANSIT");
      *(a2 + 488) = 1;
      sub_587F3C(39);
    }
  }

  sub_64B998(a2);
  *(a2 + 168) = 0;
  *(a2 + 160) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  sub_64B998(a2 + 192);
  result = 0.0;
  *(a2 + 384) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 392) = -1;
  *(a2 + 395) = -1;
  *(a2 + 399) = 0;
  *(a2 + 407) = 0;
  *(a2 + 415) = 0;
  *(a2 + 423) = 0;
  *(a2 + 432) = 0;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  *(a2 + 456) = 0;
  *(a2 + 480) = 0u;
  return result;
}

void sub_99CE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  *(v28 + 8) = v29;
  if (a28 < 0)
  {
    operator delete(__p);
    sub_55A8B4(v28);
    _Unwind_Resume(a1);
  }

  sub_55A8B4(v28);
  _Unwind_Resume(a1);
}

void sub_99CF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_5EC004(va);
  sub_53A868(v9);
  _Unwind_Resume(a1);
}

double sub_99CF6C@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = sub_4D1F6C(a1);
  sub_64B998(a2);
  *(a2 + 168) = 0;
  *(a2 + 160) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  if (!v3)
  {
    sub_64B998(a2 + 192);
    *(a2 + 384) = 0;
    *(a2 + 392) = -1;
    *(a2 + 395) = -1;
    *(a2 + 407) = 0;
    *(a2 + 415) = 0;
    *(a2 + 399) = 0;
    *(a2 + 423) = 0;
    *(a2 + 440) = 0;
    *(a2 + 448) = 0;
    *(a2 + 432) = 0;
    *(a2 + 456) = 0;
    *(a2 + 464) = 0u;
    *(a2 + 480) = 0u;
    *(a2 + 472) = sub_1CEE8(a2 + 464, "TRANSIT");
    *(a2 + 488) = 4;
    sub_587F3C(39);
  }

  sub_64B998(a2 + 192);
  result = 0.0;
  *(a2 + 384) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 464) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 392) = -1;
  *(a2 + 395) = -1;
  *(a2 + 399) = 0;
  *(a2 + 407) = 0;
  *(a2 + 415) = 0;
  *(a2 + 423) = 0;
  *(a2 + 432) = 0;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  *(a2 + 456) = 0;
  *(a2 + 480) = 0u;
  return result;
}

void sub_99D1F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5EC004(va);
  sub_53A868(v2);
  _Unwind_Resume(a1);
}

void sub_99D230(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_56AFC8(a1 + 32, a2, &v29);
  *v26 = 0u;
  *v27 = 0u;
  v28 = 1065353216;
  for (i = *(sub_58BBC(&v29) + 16); i; i = *i)
  {
    v8 = nullsub_1(i + 5);
    __p[0] = i + 2;
    v9 = sub_353894(v26, (i + 2));
    v10 = (v9 + 5);
    if (v9 + 5 != v8)
    {
      v11 = *(v9 + 63);
      v12 = *(v8 + 23);
      if (v11 < 0)
      {
        if (v12 >= 0)
        {
          v6 = v8;
        }

        else
        {
          v6 = *v8;
        }

        if (v12 >= 0)
        {
          v7 = *(v8 + 23);
        }

        else
        {
          v7 = *(v8 + 8);
        }

        sub_13B38(v10, v6, v7);
      }

      else if ((*(v8 + 23) & 0x80) != 0)
      {
        sub_13A68(v10, *v8, *(v8 + 8));
      }

      else
      {
        v13 = *v8;
        *(v10 + 16) = *(v8 + 16);
        *v10 = v13;
      }
    }
  }

  sub_67F320(&v29, __p);
  sub_6A5584(__p, v26, *(a1 + 24), 0, a3);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = v27[0];
  if (v27[0])
  {
    do
    {
      v22 = *v14;
      if (*(v14 + 63) < 0)
      {
        operator delete(v14[5]);
        if (*(v14 + 39) < 0)
        {
LABEL_33:
          operator delete(v14[2]);
        }
      }

      else if (*(v14 + 39) < 0)
      {
        goto LABEL_33;
      }

      operator delete(v14);
      v14 = v22;
    }

    while (v22);
  }

  v15 = v26[0];
  v26[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = v32;
  if (v32)
  {
    do
    {
      v17 = *v16;
      sub_55F7FC((v16 + 2));
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = v31;
  v31 = 0;
  if (v18)
  {
    operator delete(v18);
  }

  v19 = v29;
  if (v29)
  {
    v20 = v30;
    v21 = v29;
    if (v30 != v29)
    {
      do
      {
        v23 = *(v20 - 1);
        v20 -= 3;
        if (v23 < 0)
        {
          operator delete(*v20);
        }
      }

      while (v20 != v19);
      v21 = v29;
    }

    v30 = v19;
    operator delete(v21);
  }
}

void sub_99D438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_2CD04(&a16);
    sub_53A58C(&a22);
    _Unwind_Resume(a1);
  }

  sub_2CD04(&a16);
  sub_53A58C(&a22);
  _Unwind_Resume(a1);
}

void sub_99D4B0(uint64_t a1@<X8>)
{
  sub_64B998(a1);
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_64B998(a1 + 192);
  *(a1 + 384) = 0;
  *(a1 + 392) = -1;
  *(a1 + 395) = -1;
  *(a1 + 407) = 0;
  *(a1 + 415) = 0;
  *(a1 + 399) = 0;
  *(a1 + 423) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 472) = sub_1CEE8(a1 + 464, "TRANSIT");
  *(a1 + 488) = 1;
  sub_587F3C(39);
}

void sub_99D714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_55A8B4(v15);
    _Unwind_Resume(a1);
  }

  sub_55A8B4(v15);
  _Unwind_Resume(a1);
}

void sub_99D778(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = sub_9274F4(*(a1 + 16), "Period");
  v7 = *a2;
  v6 = a2[1];
  v8 = sub_66242C(a3, 0);
  sub_64C184(a2, v8);
  v9 = a2[1];
  v12 = *(v9 - 24);
  v11 = (v9 - 24);
  v10 = v12;
  v13 = SHIBYTE(v11->__r_.__value_.__r.__words[2]);
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    size = HIBYTE(v11->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v11->__r_.__value_.__l.__size_;
  }

  if (size >= 16)
  {
    v16 = v14 + size;
    v17 = v14;
    do
    {
      v18 = memchr(v17, 123, size - 15);
      if (!v18)
      {
        break;
      }

      if (*v18 == 0x616E6F6974704F7BLL && *(v18 + 1) == 0x7D646F697265506CLL)
      {
        if (v18 != v16 && v18 - v14 != -1)
        {
          v20 = *(v5 + 23);
          if (v20 >= 0)
          {
            v21 = v5;
          }

          else
          {
            v21 = *v5;
          }

          if (v20 >= 0)
          {
            v22 = *(v5 + 23);
          }

          else
          {
            v22 = v5[1];
          }

          std::string::replace(v11, v18 - v14, 0x10uLL, v21, v22);
        }

        break;
      }

      v17 = (v18 + 1);
      size = v16 - v17;
    }

    while (v16 - v17 >= 16);
  }

  v23 = a3[3];
  v24 = a3[4];
  if (v23 != v24)
  {
    __val = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    do
    {
      v30 = a2[4];
      if (v30 >= a2[5])
      {
        v31 = sub_650B18(a2 + 3, v23);
      }

      else
      {
        sub_55C01C(a2[4], v23);
        v31 = v30 + 144;
        a2[4] = v30 + 144;
      }

      a2[4] = v31;
      v32 = v23[23];
      v33 = v32;
      if ((v32 & 0x80u) != 0)
      {
        v32 = *(v23 + 1);
      }

      if (v32 == 6)
      {
        v25 = *v23;
        if (v33 >= 0)
        {
          v26 = v23;
        }

        else
        {
          v26 = *v23;
        }

        v27 = *v26;
        v28 = *(v26 + 2);
        if (v27 == 1952531579 && v28 == 32101)
        {
LABEL_50:
          if (v33 < 0)
          {
            sub_325C(&v74, v25, *(v23 + 1));
            v39 = SHIBYTE(v74.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

LABEL_52:
            v40 = v39 - 1;
            *(&v74.__r_.__value_.__s + 23) = v40 & 0x7F;
            v41 = &v74;
          }

          else
          {
            v38 = *v23;
            v74.__r_.__value_.__r.__words[2] = *(v23 + 2);
            *&v74.__r_.__value_.__l.__data_ = v38;
            v39 = SHIBYTE(v74.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
            {
              goto LABEL_52;
            }

LABEL_54:
            v41 = v74.__r_.__value_.__r.__words[0];
            v40 = --v74.__r_.__value_.__l.__size_;
          }

          v41->__r_.__value_.__s.__data_[v40] = 0;
          std::to_string(&v71, __val);
          v42 = std::string::append(&v71, "}", 1uLL);
          v43 = *&v42->__r_.__value_.__l.__data_;
          v73 = v42->__r_.__value_.__r.__words[2];
          *__p = v43;
          v42->__r_.__value_.__l.__size_ = 0;
          v42->__r_.__value_.__r.__words[2] = 0;
          v42->__r_.__value_.__r.__words[0] = 0;
          if (v73 >= 0)
          {
            v44 = __p;
          }

          else
          {
            v44 = __p[0];
          }

          if (v73 >= 0)
          {
            v45 = HIBYTE(v73);
          }

          else
          {
            v45 = __p[1];
          }

          std::string::append(&v74, v44, v45);
          if (SHIBYTE(v73) < 0)
          {
            operator delete(__p[0]);
            if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_66;
            }

LABEL_63:
            v46 = a2[4];
            v47 = v46 - 144;
            if ((v46 - 144) != &v74)
            {
LABEL_67:
              if (*(v46 - 121) < 0)
              {
                if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v49 = &v74;
                }

                else
                {
                  v49 = v74.__r_.__value_.__r.__words[0];
                }

                if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v50 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v50 = v74.__r_.__value_.__l.__size_;
                }

                sub_13B38(v47, v49, v50);
              }

              else if ((*(&v74.__r_.__value_.__s + 23) & 0x80) != 0)
              {
                sub_13A68(v47, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
              }

              else
              {
                v48 = *&v74.__r_.__value_.__l.__data_;
                *(v47 + 16) = *(&v74.__r_.__value_.__l + 2);
                *v47 = v48;
              }
            }
          }

          else
          {
            if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_63;
            }

LABEL_66:
            operator delete(v71.__r_.__value_.__l.__data_);
            v46 = a2[4];
            v47 = v46 - 144;
            if ((v46 - 144) != &v74)
            {
              goto LABEL_67;
            }
          }

          v51 = a2[1];
          v54 = *(v51 - 24);
          v53 = (v51 - 24);
          v52 = v54;
          v55 = SHIBYTE(v53->__r_.__value_.__r.__words[2]);
          if (v55 >= 0)
          {
            v56 = v53;
          }

          else
          {
            v56 = v52;
          }

          if (v55 >= 0)
          {
            v57 = HIBYTE(v53->__r_.__value_.__r.__words[2]);
          }

          else
          {
            v57 = v53->__r_.__value_.__l.__size_;
          }

          v58 = v23[23];
          if (v58 >= 0)
          {
            v59 = v23;
          }

          else
          {
            v59 = *v23;
          }

          if (v58 >= 0)
          {
            v60 = v23[23];
          }

          else
          {
            v60 = *(v23 + 1);
          }

          if (v60)
          {
            if (v57 >= v60)
            {
              v61 = v56 + v57;
              v62 = *v59;
              v63 = v56;
              do
              {
                v64 = v57 - v60;
                if (v64 == -1)
                {
                  break;
                }

                v65 = memchr(v63, v62, v64 + 1);
                if (!v65)
                {
                  break;
                }

                v66 = v65;
                if (!memcmp(v65, v59, v60))
                {
                  if (v66 != v61)
                  {
                    v67 = v66 - v56;
                    if (v66 - v56 != -1)
                    {
                      goto LABEL_99;
                    }
                  }

                  break;
                }

                v63 = (v66 + 1);
                v57 = v61 - (v66 + 1);
              }

              while (v57 >= v60);
            }
          }

          else
          {
            v67 = 0;
LABEL_99:
            if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v68 = &v74;
            }

            else
            {
              v68 = v74.__r_.__value_.__r.__words[0];
            }

            if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v69 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v69 = v74.__r_.__value_.__l.__size_;
            }

            std::string::replace(v53, v67, v60, v68, v69);
          }

          if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v74.__r_.__value_.__l.__data_);
          }
        }
      }

      else if (v32 == 11)
      {
        v25 = *v23;
        v34 = v33 >= 0 ? v23 : *v23;
        v35 = *v34;
        v36 = *(v34 + 3);
        if (v35 == 0x6557664F7961447BLL && v36 == 0x7D6B656557664F79)
        {
          goto LABEL_50;
        }
      }

      v23 += 144;
    }

    while (v23 != v24);
  }
}

void sub_99DBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_99DC70(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v7[2] = a2[2];
        v8 = *v7;
        sub_6013A4(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v9 = *v7;
        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_7:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_99DD58(void *a1)
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

void sub_99DDA0(void *a1, const void ***a2, const void **a3, unint64_t a4)
{
  v7 = a1[5];
  if (v7 < a4)
  {
    if (v7)
    {
      v8 = v7 + ((a3 - *a2) >> 5);
      if (v8 >= 1)
      {
        v9 = &a2[v8 >> 7];
        v10 = &(*v9)[4 * (v8 & 0x7F)];
        v11 = a1[4];
        v12 = a1[1];
        v13 = (v12 + 8 * (v11 >> 7));
        if (a1[2] == v12)
        {
          goto LABEL_15;
        }

LABEL_11:
        v21 = &(*v13)[32 * (v11 & 0x7F)];
LABEL_16:
        v25 = v13;
        v26 = v21;
        sub_99E3CC(a2, a3, v9, v10, &v25);
        sub_99DF88(a1, v9, v10, a4 - a1[5]);
        return;
      }

      v22 = 127 - v8;
      v9 = &a2[-(v22 >> 7)];
      v10 = &(*v9)[4 * (~v22 & 0x7F)];
      v11 = a1[4];
      v23 = a1[1];
      v13 = (v23 + 8 * (v11 >> 7));
      if (a1[2] != v23)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = a3;
      v9 = a2;
      v11 = a1[4];
      v20 = a1[1];
      v13 = (v20 + 8 * (v11 >> 7));
      if (a1[2] != v20)
      {
        goto LABEL_11;
      }
    }

LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  v14 = a1[1];
  v15 = (v14 + 8 * (a1[4] >> 7));
  if (a1[2] == v14)
  {
    v16 = 0;
    if (a4)
    {
LABEL_8:
      v17 = a4 + ((a3 - *a2) >> 5);
      if (v17 < 1)
      {
        v24 = 127 - v17;
        v18 = &a2[-(v24 >> 7)];
        v19 = &(*v18)[4 * (~v24 & 0x7F)];
      }

      else
      {
        v18 = &a2[v17 >> 7];
        v19 = &(*v18)[4 * (v17 & 0x7F)];
      }

      goto LABEL_18;
    }
  }

  else
  {
    v16 = &(*v15)[32 * (a1[4] & 0x7FLL)];
    if (a4)
    {
      goto LABEL_8;
    }
  }

  v19 = a3;
  v18 = a2;
LABEL_18:
  v25 = v15;
  v26 = v16;
  sub_99E3CC(a2, a3, v18, v19, &v25);
  sub_99E1EC(a1, v25, v26);
}

void *sub_99DF88(void *result, void *a2, void *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[1];
  v9 = result[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 16 * (v9 - v8) - 1;
  }

  v11 = result[5];
  v12 = v11 + result[4];
  v13 = v10 - v12;
  if (a4 > v13)
  {
    result = sub_99E694(result, a4 - v13);
    v11 = v7[5];
    v8 = v7[1];
    v9 = v7[2];
    v12 = v7[4] + v11;
  }

  v14 = (v8 + 8 * (v12 >> 7));
  if (v9 != v8)
  {
    v15 = (*v14 + 32 * (v12 & 0x7F));
    v16 = v15;
    if (a4)
    {
      goto LABEL_8;
    }

LABEL_12:
    v26 = (v8 + 8 * (v12 >> 7));
    if (v15 == v16)
    {
      return result;
    }

    goto LABEL_15;
  }

  v15 = 0;
  v16 = 0;
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_8:
  v17 = a4 + ((v16 - *v14) >> 5);
  if (v17 < 1)
  {
    v18 = 127 - v17;
    v26 = &v14[-(v18 >> 7)];
    v16 = *v26 + 32 * (~v18 & 0x7F);
    if (v15 == v16)
    {
      return result;
    }
  }

  else
  {
    v26 = &v14[v17 >> 7];
    v16 = *v26 + 32 * (v17 & 0x7F);
    if (v15 == v16)
    {
      return result;
    }
  }

LABEL_15:
  v23 = v7;
  v24 = v16;
  do
  {
    if (v14 != v26)
    {
      v16 = *v14 + 4096;
    }

    if (v15 == v16)
    {
      v16 = v15;
    }

    else
    {
      v19 = 0;
      v25 = v15;
      do
      {
        *v15 = 0;
        v15[1] = 0;
        v15[2] = 0;
        v20 = a3[1];
        if (v20 != *a3)
        {
          if (((v20 - *a3) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v15[3] = a3[3];
        a3 += 4;
        if (a3 - *a2 == "work/NaturalLanguage")
        {
          v21 = a2[1];
          ++a2;
          a3 = v21;
        }

        v15 += 4;
        v19 -= 32;
      }

      while (v15 != v16);
      v7 = v23;
      v11 = v23[5];
      v15 = v25;
    }

    v11 += (v16 - v15) >> 5;
    v7[5] = v11;
    v16 = v24;
    if (v14 == v26)
    {
      break;
    }

    v22 = v14[1];
    ++v14;
    v15 = v22;
  }

  while (v22 != v24);
  return result;
}

void sub_99E1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v11;
    v12 = a1;
    operator delete(v11);
    a1 = v12;
  }

  *(a9 + 40) += -v9 >> 5;
  _Unwind_Resume(a1);
}

void sub_99E1EC(void *a1, char *a2, uint64_t a3)
{
  v5 = a1[4];
  v4 = a1[5];
  v7 = a1[1];
  v6 = a1[2];
  v8 = (v7 + 8 * ((v5 + v4) >> 7));
  if (v6 == v7)
  {
    v9 = 0;
    if (!a3)
    {
      return;
    }
  }

  else
  {
    v9 = *v8 + 32 * ((v5 + v4) & 0x7F);
    if (v9 == a3)
    {
      return;
    }
  }

  v10 = ((v9 - *v8) >> 5) + 16 * (v8 - a2);
  v11 = (a3 - *a2) >> 5;
  v12 = v10 - v11;
  if (v10 - v11 < 1)
  {
    return;
  }

  v13 = (v7 + 8 * (v5 >> 7));
  if (v6 == v7)
  {
    v14 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v14 = *v13 + 32 * (a1[4] & 0x7FLL);
    if (a3 == v14)
    {
LABEL_13:
      if (v14 == v9)
      {
        goto LABEL_23;
      }

      do
      {
LABEL_18:
        v17 = *v14;
        if (*v14)
        {
          *(v14 + 8) = v17;
          operator delete(v17);
        }

        v14 += 32;
        if (v14 - *v13 == 4096)
        {
          v18 = *(v13 + 1);
          v13 += 8;
          v14 = v18;
        }
      }

      while (v14 != v9);
      v7 = a1[1];
      v6 = a1[2];
      v5 = a1[4];
      v4 = a1[5];
      goto LABEL_23;
    }
  }

  v15 = v11 + 16 * (a2 - v13);
  if (v15 == (v14 - *v13) >> 5)
  {
    goto LABEL_13;
  }

  if (v15 >= 1)
  {
    v13 += 8 * (v15 >> 7);
    v14 = *v13 + 32 * (v15 & 0x7F);
    goto LABEL_13;
  }

  v16 = 127 - v15;
  v13 -= 8 * (v16 >> 7);
  v14 = *v13 + 32 * (~v16 & 0x7F);
  if (v14 != v9)
  {
    goto LABEL_18;
  }

LABEL_23:
  if (v6 == v7)
  {
    v19 = 0;
  }

  else
  {
    v19 = 16 * (v6 - v7) - 1;
  }

  v20 = v4 - v12;
  a1[5] = v20;
  if (v19 - (v20 + v5) >= 0x100)
  {
    do
    {
      operator delete(*(v6 - 8));
      v21 = a1[1];
      v6 = a1[2] - 8;
      a1[2] = v6;
      if (v6 == v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = 16 * (v6 - v21) - 1;
      }
    }

    while ((v22 - (a1[5] + a1[4])) > 0xFF);
  }
}

double sub_99E3CC(const void ***a1, const void **a2, const void ***a3, char **a4, char ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
  }

  else
  {
    v10 = a1 + 1;
    sub_99E480(a2, *a1 + 512, *a5, a5[1], &v13);
    v8 = *(&v14 + 1);
    v7 = v14;
    *a5 = v14;
    for (a5[1] = v8; v10 != a3; a5[1] = v8)
    {
      v11 = *v10++;
      sub_99E480(v11, (v11 + 4096), v7, v8, &v13);
      v8 = *(&v14 + 1);
      v7 = v14;
      *a5 = v14;
    }

    a2 = *v10;
  }

  sub_99E480(a2, a4, v7, v8, &v13);
  result = *&v14;
  *a5 = v14;
  return result;
}

void sub_99E480(const void **a1@<X1>, char **a2@<X2>, char **a3@<X3>, char **a4@<X4>, const void ***a5@<X8>)
{
  v6 = a1;
  if (a1 == a2)
  {
    goto LABEL_36;
  }

  v24 = a5;
  v25 = a2;
  v7 = *a3;
  while (1)
  {
    v9 = (v7 - a4 + 4096) >> 5;
    if ((a2 - v6) >> 5 < v9)
    {
      v9 = (a2 - v6) >> 5;
    }

    if (v9)
    {
      break;
    }

LABEL_5:
    v8 = a3[1];
    ++a3;
    v7 = v8;
    a4 = v8;
  }

  v10 = 32 * v9;
  v26 = &v6[4 * v9];
  v27 = a3;
  do
  {
    if (v6 != a4)
    {
      v12 = *v6;
      v11 = v6[1];
      v13 = v11 - *v6;
      v14 = a4[2];
      v15 = *a4;
      if (v14 - *a4 < v13)
      {
        if (v15)
        {
          a4[1] = v15;
          operator delete(v15);
          v14 = 0;
          *a4 = 0;
          a4[1] = 0;
          a4[2] = 0;
        }

        v16 = v13 >> 3;
        if (!((v13 >> 3) >> 61))
        {
          if (v14 >> 2 > v16)
          {
            v16 = v14 >> 2;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (!(v17 >> 61))
          {
            operator new();
          }
        }

        sub_1794();
      }

      v18 = a4[1];
      v19 = v18 - v15;
      if (v18 - v15 >= v13)
      {
        if (v11 != v12)
        {
          v23 = *a4;
          memmove(v15, *v6, v11 - *v6);
          v15 = v23;
        }

        v22 = &v15[v13];
      }

      else
      {
        if (v18 != v15)
        {
          memmove(v15, *v6, v18 - v15);
          v18 = a4[1];
        }

        v20 = &v12[v19];
        v21 = v11 - &v12[v19];
        if (v21)
        {
          memmove(v18, v20, v21);
        }

        v22 = &v18[v21];
      }

      a4[1] = v22;
    }

    a4[3] = v6[3];
    v6 += 4;
    a4 += 4;
    v10 -= 32;
  }

  while (v10);
  a2 = v25;
  v6 = v26;
  if (v26 != v25)
  {
    a3 = v27;
    goto LABEL_5;
  }

  a3 = v27;
  if (a4 == (*v27 + 4096))
  {
    a3 = v27 + 1;
    a4 = v27[1];
  }

  a5 = v24;
LABEL_36:
  *a5 = v6;
  a5[1] = a3;
  a5[2] = a4;
}

void *sub_99E694(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x7F) != 0)
  {
    v5 = (v4 >> 7) + 1;
  }

  else
  {
    v5 = v4 >> 7;
  }

  v6 = result[4];
  if (v5 >= v6 >> 7)
  {
    v7 = v6 >> 7;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 7)
  {
    for (result[4] = v6 - (v7 << 7); v7; --v7)
    {
      v12 = v2[1];
      v14 = *v12;
      v2[1] = v12 + 1;
      result = sub_2133C(v2, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 7; v7; --v7)
    {
      v13 = v2[1];
      v14 = *v13;
      v2[1] = v13 + 1;
      result = sub_2133C(v2, &v14);
    }
  }

  return result;
}

void sub_99ED24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_99ED90(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x84210842108421)
  {
    sub_1794();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 4) >= 0x42108421084210)
  {
    v5 = 0x84210842108421;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x84210842108421)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = (16 * ((a1[1] - *a1) >> 4));
  sub_5F4668(v15, a2);
  v6 = 496 * v2 + 496;
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
      sub_55A4D0(v12, v11);
      v11 += 496;
      v12 = v13 + 496;
    }

    while (v11 != v8);
    do
    {
      sub_55A8B4(v7);
      v7 += 496;
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

void sub_99EF08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_55A860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_99EF1C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x84210842108421)
  {
    sub_1794();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 4) >= 0x42108421084210)
  {
    v5 = 0x84210842108421;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x84210842108421)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = (16 * ((a1[1] - *a1) >> 4));
  sub_5F4668(v15, a2);
  v6 = 496 * v2 + 496;
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
      sub_55A4D0(v12, v11);
      v11 += 496;
      v12 = v13 + 496;
    }

    while (v11 != v8);
    do
    {
      sub_55A8B4(v7);
      v7 += 496;
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

void sub_99F094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_55A860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_99F0A8(uint64_t a1)
{
  v2 = *(a1 + 776);
  if (v2)
  {
    v3 = *(a1 + 784);
    v4 = *(a1 + 776);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 776);
    }

    *(a1 + 784) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 768);
  if (v6 != -1)
  {
    (off_266F418[v6])(&v8, a1);
  }

  *(a1 + 768) = -1;
  return a1;
}

uint64_t sub_99F154(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v6 = *(v4 - 24);
        if (v6)
        {
          v7 = *(v4 - 16);
          v8 = *(v4 - 24);
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
            v8 = *(v4 - 24);
          }

          *(v4 - 16) = v6;
          operator delete(v8);
        }

        v10 = v4 - 800;
        v11 = *(v4 - 32);
        if (v11 != -1)
        {
          (off_266F418[v11])(&v13, v4 - 800);
        }

        *(v4 - 32) = -1;
        v4 -= 800;
      }

      while (v10 != v5);
    }
  }

  return a1;
}

char *sub_99F244(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xEF7BDEF7BDEF7BDFLL * ((v9 - v10) >> 4)) >= a5)
    {
      v15 = v10 - a2;
      if ((0xEF7BDEF7BDEF7BDFLL * ((v10 - a2) >> 4)) >= a5)
      {
        v19 = 496 * a5;
        v20 = &a2[496 * a5];
        v21 = v10 - 496 * a5;
        for (i = a1[1]; v21 < v10; i = v23 + 496)
        {
          sub_55A4D0(i, v21);
          v21 += 496;
        }

        a1[1] = i;
        if (v10 != v20)
        {
          v24 = v10 - 496;
          v25 = &v5[v19 - v10];
          v26 = v24 - v19;
          do
          {
            sub_53B8B8(v24, v26);
            v24 -= 496;
            v26 -= 496;
            v25 += 496;
          }

          while (v25);
        }

        v27 = v7 + 496 * a5;
        v28 = v5;
        do
        {
          sub_60226C(v28, v7);
          v7 += 496;
          v28 += 496;
        }

        while (v7 != v27);
      }

      else
      {
        v17 = v15 + a3;
        if (v15 + a3 == a4)
        {
          v18 = a1[1];
          a1[1] = v10;
          if (v15 < 1)
          {
            return v5;
          }
        }

        else
        {
          v45 = 0;
          do
          {
            sub_5F4668((v10 + v45), v17 + v45);
            v45 += 496;
          }

          while (v17 + v45 != a4);
          v18 = v10 + v45;
          a1[1] = v10 + v45;
          if (v15 < 1)
          {
            return v5;
          }
        }

        v46 = 496 * a5;
        v47 = &v5[496 * a5];
        v48 = v18 - 496 * a5;
        for (j = v18; v48 < v10; j = v50 + 496)
        {
          sub_55A4D0(j, v48);
          v48 += 496;
        }

        a1[1] = j;
        if (v18 != v47)
        {
          v51 = v18 - 496;
          v52 = &v5[v46 - v18];
          v53 = v51 - v46;
          do
          {
            sub_53B8B8(v51, v53);
            v51 -= 496;
            v53 -= 496;
            v52 += 496;
          }

          while (v52);
        }

        v54 = v5;
        do
        {
          sub_60226C(v54, v7);
          v7 += 496;
          v54 += 496;
        }

        while (v7 != v17);
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x1084210842108421 * ((v10 - *a1) >> 4);
      if (v12 > 0x84210842108421)
      {
        sub_1794();
      }

      v13 = 0xEF7BDEF7BDEF7BDFLL * ((v9 - v11) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x42108421084210)
      {
        v14 = 0x84210842108421;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x84210842108421)
        {
          operator new();
        }

        sub_1808();
      }

      v29 = (16 * ((a2 - v11) >> 4));
      v56 = v29;
      v30 = 496 * a5;
      v31 = &v29[62 * a5];
      do
      {
        sub_5F4668(v29, v7);
        v29 += 62;
        v7 += 496;
        v30 -= 496;
      }

      while (v30);
      v32 = a1[1];
      v33 = v5;
      if (v32 != v5)
      {
        v34 = v5;
        v35 = v31;
        do
        {
          sub_55A4D0(v35, v34);
          v34 += 496;
          v35 = v36 + 496;
        }

        while (v34 != v32);
        v37 = v5;
        do
        {
          v37 = sub_55A8B4(v37) + 496;
        }

        while (v37 != v32);
        v33 = a1[1];
      }

      v38 = v31 + v33 - v5;
      a1[1] = v5;
      v39 = *a1;
      v40 = *a1 - v5;
      v41 = v56 + v40;
      if (*a1 != v5)
      {
        v42 = *a1;
        v43 = v56 + v40;
        do
        {
          sub_55A4D0(v43, v42);
          v42 += 496;
          v43 = v44 + 496;
        }

        while (v42 != v5);
        do
        {
          sub_55A8B4(v39);
          v39 += 496;
        }

        while (v39 != v5);
        v39 = *a1;
      }

      *a1 = v41;
      a1[1] = v38;
      a1[2] = 0;
      if (v39)
      {
        operator delete(v39);
      }

      return v56;
    }
  }

  return v5;
}

void sub_99F624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_55A860(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_99F63C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xEF7BDEF7BDEF7BDFLL * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_55A8B4(v10 - 496);
        }

        while (v10 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x84210842108421)
    {
      v12 = 0xEF7BDEF7BDEF7BDFLL * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x42108421084210)
      {
        v14 = 0x84210842108421;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x84210842108421)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0xEF7BDEF7BDEF7BDFLL * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_60226C(v8, v5);
        v5 += 496;
        v8 += 496;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 496;
      result = sub_55A8B4(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        result = sub_60226C(v8, v5);
        v5 += 496;
        v8 += 496;
        v16 -= 496;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_5F4668((v15 + v19), v17 + v19);
        v19 += 496;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_99F8B0(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 496;
    v7 = -v4;
    do
    {
      v6 = sub_55A8B4(v6) - 496;
      v7 += 496;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void *sub_99F8DC(void *result, unint64_t a2)
{
  if (0x8F5C28F5C28F5C29 * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x51EB851EB851ECLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_99F9C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_55B054(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_99F9DC(void *a1, void *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      v14[0] = *v6;
      v15 = 3;
      v17 = 0;
      __p = 0uLL;
      v7 = a3[1];
      if (v7 >= a3[2])
      {
        v9 = sub_99FB7C(a3, v14);
        v10 = __p;
        a3[1] = v9;
        if (v10)
        {
          v11 = *(&__p + 1);
          v12 = v10;
          if (*(&__p + 1) != v10)
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

            while (v11 != v10);
            v12 = __p;
          }

          *(&__p + 1) = v10;
          operator delete(v12);
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 768) = -1;
        v8 = v15;
        if (v15 != -1)
        {
          v18[0] = v7;
          (off_266F480[v15])(v18, v14);
          *(v7 + 768) = v8;
        }

        *(v7 + 792) = 0;
        *(v7 + 776) = 0u;
        *(v7 + 776) = __p;
        *(v7 + 792) = v17;
        __p = 0uLL;
        v17 = 0;
        a3[1] = v7 + 800;
      }

      if (v15 != -1)
      {
        (off_266F418[v15])(v18, v14);
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return a3;
}

uint64_t sub_99FB7C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x51EB851EB851EBLL)
  {
    sub_1794();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 5);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 5) >= 0x28F5C28F5C28F5)
  {
    v6 = 0x51EB851EB851EBLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    if (v6 <= 0x51EB851EB851EBLL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 800 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  *v7 = 0;
  *(v7 + 768) = -1;
  v8 = *(a2 + 768);
  if (v8 != -1)
  {
    v19 = v7;
    (off_266F480[v8])(&v19, a2);
    *(v7 + 768) = v8;
  }

  *(v7 + 776) = *(a2 + 776);
  *(v7 + 784) = *(a2 + 784);
  *(a2 + 784) = 0;
  *(a2 + 792) = 0;
  *(a2 + 776) = 0;
  *&v17 = v7 + 800;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_55B144(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_55B054(&v15);
  return v14;
}

void sub_99FD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55B054(va);
  _Unwind_Resume(a1);
}

void sub_99FD2C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              v8 = *(v6 - 1);
              v6 -= 3;
              if (v8 < 0)
              {
                operator delete(*v6);
              }
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v9 = v3 - 800;
        v10 = *(v3 - 8);
        if (v10 != -1)
        {
          (off_266F418[v10])(&v11, v3 - 800);
        }

        *(v3 - 8) = -1;
        v3 -= 800;
      }

      while (v9 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_99FE28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v8 = a1;
  v10 = a1[1];
  v9 = a1[2];
  if ((0x8F5C28F5C28F5C29 * ((v9 - v10) >> 5)) >= a5)
  {
    v15 = v10 - a2;
    if ((0x8F5C28F5C28F5C29 * ((v10 - a2) >> 5)) < a5)
    {
      v16 = v15 + a3;
      v17 = sub_9A0490(a1, v15 + a3, a4, a1[1]);
      v18 = v17;
      v8[1] = v17;
      if (v15 < 1)
      {
        return v5;
      }

      v19 = 800 * v6;
      v20 = v17;
      if (v17 - 800 * v6 < v10)
      {
        v59 = 800 * v6;
        v62 = v6;
        v66 = v8;
        v21 = 0;
        v22 = -800 * v6;
        do
        {
          v23 = v22 + v18;
          v24 = v21 + v18;
          *v24 = 0;
          *(v24 + 768) = -1;
          v25 = *(v22 + v18 + 768);
          if (v25 != -1)
          {
            v67 = v21 + v18;
            (off_266F480[v25])(&v67, v22 + v18);
            *(v24 + 768) = v25;
          }

          *(v24 + 792) = 0;
          *(v24 + 776) = 0u;
          *(v24 + 776) = *(v23 + 776);
          *(v24 + 784) = *(v23 + 784);
          *(v23 + 792) = 0;
          *(v23 + 776) = 0u;
          v22 += 800;
          v21 += 800;
        }

        while (v22 + v18 < v10);
        v20 = v21 + v18;
        v6 = v62;
        v8 = v66;
        v19 = v59;
      }

      v8[1] = v20;
      if (v18 != v5 + v19)
      {
        v52 = v18 - 800;
        v53 = v5 + 800 * v6 - v18;
        v54 = v18 - 800 - 800 * v6;
        do
        {
          sub_9A05B4(v52, v54);
          v52 -= 800;
          v54 -= 800;
          v53 += 800;
        }

        while (v53);
      }

      v55 = 0;
      while (1)
      {
        v56 = v5 + v55;
        v57 = *(v5 + v55 + 768);
        v58 = *(a3 + v55 + 768);
        if (v57 == -1)
        {
          if (v58 != -1)
          {
LABEL_53:
            v67 = v5 + v55;
            (off_266F4A0[v58])(&v67, v5 + v55, a3 + v55);
          }
        }

        else
        {
          if (v58 != -1)
          {
            goto LABEL_53;
          }

          (off_266F418[v57])(&v67, v5 + v55);
          *(v56 + 768) = -1;
        }

        if (a3 + v55 != v56)
        {
          sub_74300((v5 + v55 + 776), *(a3 + v55 + 776), *(a3 + v55 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + v55 + 784) - *(a3 + v55 + 776)) >> 3));
        }

        v55 += 800;
        if (a3 + v55 == v16)
        {
          return v5;
        }
      }
    }

    v26 = 800 * a5;
    v27 = v10 - 800 * a5;
    v28 = a1[1];
    if (v27 < v10)
    {
      v60 = 800 * a5;
      v29 = 0;
      do
      {
        v30 = v27 + v29;
        v31 = v10 + v29;
        *v31 = 0;
        *(v31 + 768) = -1;
        v32 = *(v27 + v29 + 768);
        if (v32 != -1)
        {
          v67 = v10 + v29;
          (off_266F480[v32])(&v67, v27 + v29);
          *(v31 + 768) = v32;
        }

        *(v31 + 792) = 0;
        *(v31 + 776) = 0u;
        *(v31 + 776) = *(v30 + 776);
        *(v31 + 784) = *(v30 + 784);
        *(v30 + 792) = 0;
        *(v30 + 776) = 0u;
        v29 += 800;
      }

      while (v27 + v29 < v10);
      v28 = v10 + v29;
      v26 = v60;
      v6 = a5;
    }

    v8[1] = v28;
    if (v10 != v5 + v26)
    {
      v45 = v10 - 800;
      v46 = v5 + 800 * v6 - v10;
      v47 = v10 - 800 - 800 * v6;
      do
      {
        sub_9A05B4(v45, v47);
        v45 -= 800;
        v47 -= 800;
        v46 += 800;
      }

      while (v46);
    }

    v48 = 0;
    while (1)
    {
      v49 = v5 + v48;
      v50 = *(v5 + v48 + 768);
      v51 = *(a3 + v48 + 768);
      if (v50 == -1)
      {
        if (v51 != -1)
        {
LABEL_40:
          v67 = v5 + v48;
          (off_266F4A0[v51])(&v67, v5 + v48, a3 + v48);
        }
      }

      else
      {
        if (v51 != -1)
        {
          goto LABEL_40;
        }

        (off_266F418[v50])(&v67, v5 + v48);
        *(v49 + 768) = -1;
      }

      if (a3 + v48 != v49)
      {
        sub_74300((v5 + v48 + 776), *(a3 + v48 + 776), *(a3 + v48 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + v48 + 784) - *(a3 + v48 + 776)) >> 3));
      }

      v48 += 800;
      if (a3 + v48 == a3 + 800 * v6)
      {
        return v5;
      }
    }
  }

  v11 = *a1;
  v12 = a5 - 0x70A3D70A3D70A3D7 * ((v10 - *a1) >> 5);
  if (v12 > 0x51EB851EB851EBLL)
  {
    sub_1794();
  }

  v13 = 0x8F5C28F5C28F5C29 * ((v9 - v11) >> 5);
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x28F5C28F5C28F5)
  {
    v14 = 0x51EB851EB851EBLL;
  }

  else
  {
    v14 = v12;
  }

  v70 = a1;
  if (v14)
  {
    if (v14 <= 0x51EB851EB851EBLL)
    {
      operator new();
    }

    sub_1808();
  }

  v33 = 0;
  v34 = 32 * ((a2 - v11) >> 5);
  v67 = 0;
  v68 = v34;
  v69 = v34;
  v35 = 800 * a5;
  v61 = v34 + 800 * a5;
  do
  {
    v36 = v34 + v33;
    *v36 = 0;
    *(v36 + 768) = -1;
    v37 = *(a3 + v33 + 768);
    if (v37 != -1)
    {
      v71 = v34 + v33;
      (off_266F438[v37])(&v71, a3 + v33);
      *(v36 + 768) = v37;
    }

    *(v36 + 792) = 0;
    *(v36 + 776) = 0u;
    sub_353184(v36 + 776, *(a3 + v33 + 776), *(a3 + v33 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + v33 + 784) - *(a3 + v33 + 776)) >> 3));
    v33 += 800;
  }

  while (v35 != v33);
  *&v69 = v61;
  v38 = v68;
  sub_55B144(a1, a2, a1[1], v61);
  v39 = *a1;
  v40 = v68;
  *&v69 = v61 + a1[1] - a2;
  a1[1] = a2;
  v41 = v40 + v39 - a2;
  sub_55B144(a1, v39, a2, v41);
  v42 = *a1;
  *a1 = v41;
  v43 = a1[2];
  *(a1 + 1) = v69;
  *&v69 = v42;
  *(&v69 + 1) = v43;
  v67 = v42;
  v68 = v42;
  sub_55B054(&v67);
  return v38;
}

void sub_9A0424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_55B054(va);
  _Unwind_Resume(a1);
}

void sub_9A0448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  sub_55ABBC(v16 + v15);
  a15 = v16 + v15;
  sub_55B054(&a13);
  _Unwind_Resume(a1);
}

void sub_9A046C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  sub_55AB60(v16 + v15);
  a15 = v16 + v15;
  sub_55B054(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_9A0490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v9 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 768) = -1;
      v7 = *(v6 + 768);
      if (v7 != -1)
      {
        v10 = v4;
        (off_266F438[v7])(&v10, v6);
        *(v4 + 768) = v7;
      }

      *(v4 + 792) = 0;
      *(v4 + 776) = 0u;
      sub_353184(v4 + 776, *(v6 + 776), *(v6 + 784), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 784) - *(v6 + 776)) >> 3));
      v6 += 800;
      v4 = v9 + 800;
      v9 += 800;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_9A057C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_55ABBC(v2);
  sub_99F154(va);
  _Unwind_Resume(a1);
}

void sub_9A0598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_55AB60(v2);
  sub_99F154(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9A05B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 768);
  v5 = *(a2 + 768);
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == -1)
  {
    (off_266F418[v4])(&v13, a1);
    *(a1 + 768) = -1;
    goto LABEL_6;
  }

  v12 = a1;
  (off_266F4C0[v5])(&v12, a1, a2);
LABEL_6:
  v6 = *(a1 + 776);
  if (v6)
  {
    v7 = (a1 + 776);
    v8 = *(a1 + 784);
    v9 = *(a1 + 776);
    if (v8 != v6)
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

      while (v8 != v6);
      v9 = *v7;
    }

    *(a1 + 784) = v6;
    operator delete(v9);
    *v7 = 0;
    *(a1 + 784) = 0;
    *(a1 + 792) = 0;
  }

  *(a1 + 776) = *(a2 + 776);
  *(a1 + 784) = *(a2 + 784);
  *(a2 + 792) = 0;
  *(a2 + 776) = 0u;
  return a1;
}

uint64_t sub_9A06D4(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 768);
  if (v2 != -1)
  {
    if (!v2)
    {
      return result;
    }

    result = (off_266F418[v2])(&v3, v1);
  }

  *(v1 + 768) = 0;
  return result;
}

__n128 sub_9A072C(__n128 **a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[48].n128_u32[0];
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    (off_266F418[v5])(&v8, v4);
LABEL_7:
    v4[48].n128_u32[0] = -1;
    result = *a3;
    v4[1].n128_u64[0] = a3[1].n128_u64[0];
    *v4 = result;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a3->n128_u64[0] = 0;
    v4[48].n128_u32[0] = 1;
    return result;
  }

  if (*(a2 + 23) < 0)
  {
    v6 = a2;
    operator delete(*a2);
    a2 = v6;
  }

  result = *a3;
  *(a2 + 16) = a3[1].n128_u64[0];
  *a2 = result;
  a3[1].n128_u8[7] = 0;
  a3->n128_u8[0] = 0;
  return result;
}

void sub_9A07F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 768);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 2)
  {
    v5 = a3;
    (off_266F418[v4])(&v6, v3);
    a3 = v5;
LABEL_7:
    *(v3 + 768) = -1;
    sub_55B2F8(v3, a3);
    *(v3 + 768) = 2;
    return;
  }

  sub_9A091C(a2, a3);
}

uint64_t sub_9A0894(uint64_t result, void *a2, void *a3)
{
  v3 = *result;
  v4 = *(*result + 768);
  if (v4 != -1)
  {
    if (v4 == 3)
    {
      *a2 = *a3;
      return result;
    }

    v5 = a3;
    result = (off_266F418[v4])(&v6, v3);
    a3 = v5;
  }

  *v3 = *a3;
  *(v3 + 768) = 3;
  return result;
}

uint64_t sub_9A091C(uint64_t a1, uint64_t a2)
{
  sub_53D784(a1, a2);
  sub_53D784(a1 + 160, a2 + 160);
  v4 = *(a1 + 352);
  v5 = *(a2 + 352);
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == -1)
  {
    (off_266F3F0[v4])(&v10, a1 + 320);
    *(a1 + 352) = -1;
    goto LABEL_6;
  }

  v9 = a1 + 320;
  (off_266F458[v5])(&v9);
LABEL_6:
  *(a1 + 360) = *(a2 + 360);
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v6 = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = v6;
  *(a2 + 391) = 0;
  *(a2 + 368) = 0;
  *(a1 + 392) = *(a2 + 392);
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  v7 = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 400) = v7;
  *(a2 + 423) = 0;
  *(a2 + 400) = 0;
  *(a1 + 424) = *(a2 + 424);
  sub_53D784(a1 + 432, a2 + 432);
  sub_53D784(a1 + 592, a2 + 592);
  *(a1 + 752) = *(a2 + 752);
  return a1;
}

void sub_9A3CA8(_Unwind_Exception *a1)
{
  if (qword_27B3060)
  {
    qword_27B3068 = qword_27B3060;
    operator delete(qword_27B3060);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_9A3F40(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  memset(v39, 0, sizeof(v39));
  v40 = 1065353216;
  v42 = 0;
  v43 = 0;
  __p = 0;
  sub_3320D0(v38, a2 + 24, *a1);
  sub_3320D0(v37, v38, v2 + 24);
  sub_A1328C(v36, v38, v2 + 24, *(v3 + 8));
  sub_A11B2C(v35, v38, v2 + 24);
  sub_681624(v34, v38, v2 + 24, v39);
  v4 = *v2;
  v5 = *(v2 + 8);
  if (*v2 != v5)
  {
    v29 = v3;
    v30 = v2;
    v28 = *(v2 + 8);
    do
    {
      sub_9E3BE4(v37, v4, &v32);
      sub_9A4294(v7, &v32, v4, v39);
      v8 = sub_9A4D28(v3, v36, v4, v39);
      sub_9A5198(v8, v35, v34, v4, v39);
      v9 = v32;
      if (v32)
      {
        v10 = v33;
        v6 = v32;
        if (v33 != v32)
        {
          v31 = v4;
          v11 = v33;
          do
          {
            v14 = *(v11 - 3);
            v11 -= 3;
            v13 = v14;
            if (v14)
            {
              v15 = *(v10 - 2);
              v12 = v13;
              if (v15 != v13)
              {
                v16 = *(v10 - 2);
                do
                {
                  v19 = *(v16 - 3);
                  v16 -= 3;
                  v18 = v19;
                  if (v19)
                  {
                    v20 = *(v15 - 2);
                    v17 = v18;
                    if (v20 != v18)
                    {
                      do
                      {
                        v21 = *(v20 - 2);
                        if (v21 != -1)
                        {
                          (off_266F4E0[v21])(v44, v20 - 42);
                        }

                        *(v20 - 2) = -1;
                        v20 -= 44;
                      }

                      while (v20 != v18);
                      v17 = *v16;
                    }

                    *(v15 - 2) = v18;
                    operator delete(v17);
                  }

                  v15 = v16;
                }

                while (v16 != v13);
                v12 = *v11;
              }

              *(v10 - 2) = v13;
              operator delete(v12);
            }

            v10 = v11;
          }

          while (v11 != v9);
          v4 = v31;
          v6 = v32;
          v3 = v29;
          v2 = v30;
          v5 = v28;
        }

        v33 = v9;
        operator delete(v6);
      }

      v4 += 412;
    }

    while (v4 != v5);
  }

  if ((v2 + 168) != &__p)
  {
    sub_9A64E4((v2 + 168), __p, v42, 0x6DB6DB6DB6DB6DB7 * ((v42 - __p) >> 4));
  }

  v22 = __p;
  if (!__p)
  {
    return sub_9A698C(v39);
  }

  v23 = v42;
  v24 = __p;
  if (v42 == __p)
  {
    goto LABEL_38;
  }

  do
  {
    if (*(v23 - 9) < 0)
    {
      operator delete(*(v23 - 4));
      if (*(v23 - 41) < 0)
      {
LABEL_35:
        operator delete(*(v23 - 8));
        v25 = v23 - 14;
        v26 = *(v23 - 20);
        if (v26 == -1)
        {
          goto LABEL_29;
        }

LABEL_36:
        (off_266F4F0[v26])(v36, v25);
        goto LABEL_29;
      }
    }

    else if (*(v23 - 41) < 0)
    {
      goto LABEL_35;
    }

    v25 = v23 - 14;
    v26 = *(v23 - 20);
    if (v26 != -1)
    {
      goto LABEL_36;
    }

LABEL_29:
    *(v23 - 20) = -1;
    v23 = v25;
  }

  while (v25 != v22);
  v24 = __p;
LABEL_38:
  v42 = v22;
  operator delete(v24);
  return sub_9A698C(v39);
}

void sub_9A4238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_97EA80(a9);
  sub_9A698C(&a29);
  _Unwind_Resume(a1);
}

void sub_9A426C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_9A6304(&a14);
  sub_97EA80(a9);
  sub_9A698C(&a29);
  _Unwind_Resume(a1);
}

void sub_9A4294(uint64_t a1, uint64_t ***a2, void *a3, void *a4)
{
  v83 = *a2;
  v81 = a2[1];
  if (*a2 != v81)
  {
    v4 = a4;
    v87 = a4 + 5;
    v82 = a3;
    do
    {
      v5 = a3[133];
      v6 = a3[134];
      if (v5 >= v6)
      {
        v8 = a3[132];
        v9 = v5 - v8;
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
        v11 = v10 + 1;
        if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          if (v13 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

LABEL_133:
          sub_1808();
        }

        v14 = 24 * v10;
        *v14 = 0;
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        v15 = (24 * v10 - v9);
        memcpy(v15, v8, v9);
        v82[132] = v15;
        v82[133] = 24 * v10 + 24;
        v82[134] = 0;
        if (v8)
        {
          operator delete(v8);
        }

        a3 = v82;
        v7 = 24 * v10 + 24;
      }

      else
      {
        *v5 = 0;
        *(v5 + 1) = 0;
        v7 = (v5 + 24);
        *(v5 + 2) = 0;
      }

      a3[133] = v7;
      v85 = v7;
      v86 = *v83;
      v84 = v83[1];
      if (*v83 != v84)
      {
        do
        {
          v16 = *(v7 - 16);
          v17 = *(v7 - 8);
          if (v16 >= v17)
          {
            v21 = *(v7 - 24);
            v22 = v16 - v21;
            v23 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v21) >> 3);
            v24 = v23 + 1;
            if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            v25 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v21) >> 3);
            if (2 * v25 > v24)
            {
              v24 = 2 * v25;
            }

            if (v25 >= 0x555555555555555)
            {
              v26 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v26 = v24;
            }

            if (v26)
            {
              if (v26 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              goto LABEL_133;
            }

            v27 = 24 * v23;
            *v27 = 0;
            *(v27 + 8) = 0;
            *(v27 + 16) = 0;
            v18 = 24 * v23 + 24;
            v28 = (24 * v23 - v22);
            memcpy(v28, v21, v22);
            *(v85 - 24) = v28;
            *(v85 - 16) = v18;
            *(v85 - 8) = 0;
            if (v21)
            {
              operator delete(v21);
            }

            *(v85 - 16) = v18;
            v20 = *v86;
            v19 = v86[1];
            if (*v86 != v19)
            {
LABEL_36:
              v90 = v18;
              v91 = (v18 - 24);
              v89 = v19;
              while (1)
              {
                v30 = *(v20 + 168);
                if (v30 == 1)
                {
                  v36 = *(v18 - 16);
                  if (v36 >= *(v18 - 8))
                  {
                    v29 = sub_9A6C6C(v91, v20 + 8);
                  }

                  else
                  {
                    sub_55BD50(*(v18 - 16), v20 + 8);
                    *(v36 + 160) = 1;
                    v29 = v36 + 168;
                    *(v18 - 16) = v36 + 168;
                  }

                  goto LABEL_38;
                }

                if (!v30)
                {
                  break;
                }

LABEL_39:
                v20 += 176;
                if (v20 == v19)
                {
                  goto LABEL_20;
                }
              }

              v31 = sub_94AD3C(v4, v20 + 8);
              v32 = v4[1];
              if (v32)
              {
                v33 = v31;
                v34 = vcnt_s8(v32);
                v34.i16[0] = vaddlv_u8(v34);
                if (v34.u32[0] > 1uLL)
                {
                  v35 = v31;
                  if (v31 >= *&v32)
                  {
                    v35 = v31 % *&v32;
                  }
                }

                else
                {
                  v35 = (*&v32 - 1) & v31;
                }

                v37 = *(*v4 + 8 * v35);
                if (v37)
                {
                  v38 = *v37;
                  if (*v37)
                  {
                    if (v34.u32[0] < 2uLL)
                    {
                      while (1)
                      {
                        v40 = v38[1];
                        if (v40 == v33)
                        {
                          if (sub_55DD5C((v38 + 2), v20 + 8))
                          {
                            goto LABEL_109;
                          }
                        }

                        else if ((v40 & (*&v32 - 1)) != v35)
                        {
                          goto LABEL_64;
                        }

                        v38 = *v38;
                        if (!v38)
                        {
                          goto LABEL_64;
                        }
                      }
                    }

                    do
                    {
                      v39 = v38[1];
                      if (v39 == v33)
                      {
                        if (sub_55DD5C((v38 + 2), v20 + 8))
                        {
LABEL_109:
                          v67 = v38[16];
                          v69 = *(v18 - 16);
                          v68 = *(v18 - 8);
                          if (v69 >= v68)
                          {
LABEL_110:
                            v70 = *v91;
                            v71 = v69 - *v91;
                            v72 = 0xCF3CF3CF3CF3CF3DLL * (v71 >> 3) + 1;
                            if (v72 > 0x186186186186186)
                            {
                              sub_1794();
                            }

                            v73 = 0xCF3CF3CF3CF3CF3DLL * ((v68 - v70) >> 3);
                            if (2 * v73 > v72)
                            {
                              v72 = 2 * v73;
                            }

                            if (v73 >= 0xC30C30C30C30C3)
                            {
                              v74 = 0x186186186186186;
                            }

                            else
                            {
                              v74 = v72;
                            }

                            if (v74)
                            {
                              if (v74 <= 0x186186186186186)
                              {
                                operator new();
                              }

                              goto LABEL_133;
                            }

                            v75 = 8 * (v71 >> 3);
                            *v75 = v67;
                            *(v75 + 160) = 0;
                            v76 = v75 - v71;
                            if (v70 != v69)
                            {
                              v77 = v75 - v71;
                              v78 = v70;
                              do
                              {
                                *v77 = 0;
                                *(v77 + 160) = -1;
                                v79 = v78[40];
                                if (v79 != -1)
                                {
                                  v93 = v77;
                                  (off_266F550[v79])(&v93, v78);
                                  *(v77 + 160) = v79;
                                }

                                v78 += 42;
                                v77 += 168;
                              }

                              while (v78 != v69);
                              v18 = v90;
                              do
                              {
                                v80 = v70[40];
                                if (v80 != -1)
                                {
                                  (off_266F540[v80])(&v93, v70);
                                }

                                v70[40] = -1;
                                v70 += 42;
                              }

                              while (v70 != v69);
                              v70 = *v91;
                            }

                            v29 = v75 + 168;
                            *(v18 - 24) = v76;
                            *(v18 - 16) = v75 + 168;
                            *(v18 - 8) = 0;
                            v19 = v89;
                            if (v70)
                            {
                              operator delete(v70);
                            }

                            v4 = a4;
LABEL_38:
                            *(v18 - 16) = v29;
                            goto LABEL_39;
                          }

LABEL_108:
                          *v69 = v67;
                          v69[40] = 0;
                          v29 = (v69 + 42);
                          v19 = v89;
                          goto LABEL_38;
                        }
                      }

                      else
                      {
                        if (v39 >= *&v32)
                        {
                          v39 %= *&v32;
                        }

                        if (v39 != v35)
                        {
                          break;
                        }
                      }

                      v38 = *v38;
                    }

                    while (v38);
                  }
                }
              }

LABEL_64:
              v41 = v4[5];
              v42 = v4[6];
              v43 = 0x6DB6DB6DB6DB6DB7 * ((v42 - v41) >> 4);
              v92 = v43;
              v44 = v4[7];
              if (v42 < v44)
              {
                *v42 = 0;
                *(v42 + 32) = -1;
                v45 = *(v20 + 40);
                if (v45 != -1)
                {
                  v93 = v42;
                  (off_266F518[v45])(&v93, v20 + 8);
                  *(v42 + 32) = v45;
                }

                *(v42 + 40) = *(v20 + 48);
                if (*(v20 + 79) < 0)
                {
                  sub_325C((v42 + 48), *(v20 + 56), *(v20 + 64));
                }

                else
                {
                  v46 = *(v20 + 56);
                  *(v42 + 64) = *(v20 + 72);
                  *(v42 + 48) = v46;
                }

                *(v42 + 72) = *(v20 + 80);
                if (*(v20 + 111) < 0)
                {
                  sub_325C((v42 + 80), *(v20 + 88), *(v20 + 96));
                }

                else
                {
                  v50 = *(v20 + 88);
                  *(v42 + 96) = *(v20 + 104);
                  *(v42 + 80) = v50;
                }

                *(v42 + 104) = *(v20 + 112);
                v51 = v42 + 112;
                v4[6] = v42 + 112;
                goto LABEL_107;
              }

              if ((v43 + 1) > 0x249249249249249)
              {
                sub_1794();
              }

              v47 = 0x6DB6DB6DB6DB6DB7 * ((v44 - v41) >> 4);
              v48 = 2 * v47;
              if (2 * v47 <= v43 + 1)
              {
                v48 = v43 + 1;
              }

              if (v47 >= 0x124924924924924)
              {
                v49 = 0x249249249249249;
              }

              else
              {
                v49 = v48;
              }

              v97 = v87;
              if (v49)
              {
                if (v49 <= 0x249249249249249)
                {
                  operator new();
                }

                goto LABEL_133;
              }

              v52 = 112 * v43;
              v93 = 0;
              v94 = v52;
              v95 = 112 * v43;
              v96 = 0;
              *v52 = 0;
              *(v52 + 32) = -1;
              v53 = *(v20 + 40);
              if (v53 != -1)
              {
                v98[0] = v52;
                (off_266F518[v53])(v98, v20 + 8);
                *(v52 + 32) = v53;
              }

              *(v52 + 40) = *(v20 + 48);
              if (*(v20 + 79) < 0)
              {
                sub_325C((v52 + 48), *(v20 + 56), *(v20 + 64));
              }

              else
              {
                v54 = *(v20 + 56);
                *(v52 + 64) = *(v20 + 72);
                *(v52 + 48) = v54;
              }

              *(v52 + 72) = *(v20 + 80);
              if (*(v20 + 111) < 0)
              {
                sub_325C((v52 + 80), *(v20 + 88), *(v20 + 96));
              }

              else
              {
                v55 = *(v20 + 88);
                *(v52 + 96) = *(v20 + 104);
                *(v52 + 80) = v55;
              }

              *(v52 + 104) = *(v20 + 112);
              v51 = v95 + 112;
              v95 += 112;
              v56 = v4[5];
              v57 = v4[6];
              v58 = v94 + v56 - v57;
              if (v56 == v57)
              {
LABEL_105:
                v66 = v4[5];
                v4[5] = v58;
                v4[6] = v51;
                v4[7] = v96;
                if (v66)
                {
                  operator delete(v66);
                }

LABEL_107:
                v4[6] = v51;
                sub_9A7108(v4, v20 + 8);
                v67 = v92;
                v18 = v90;
                v69 = *(v90 - 16);
                v68 = *(v90 - 8);
                if (v69 >= v68)
                {
                  goto LABEL_110;
                }

                goto LABEL_108;
              }

              v59 = 0;
              do
              {
                v62 = v58 + v59;
                v63 = v56 + v59;
                *v62 = 0;
                *(v62 + 32) = -1;
                v64 = *(v56 + v59 + 32);
                if (v64 != -1)
                {
                  v98[0] = v58 + v59;
                  (off_266F588[v64])(v98, v56 + v59);
                  *(v62 + 32) = v64;
                }

                v59 += 112;
                *(v62 + 40) = *(v63 + 40);
                v60 = *(v63 + 48);
                *(v62 + 64) = *(v63 + 64);
                *(v62 + 48) = v60;
                *(v63 + 56) = 0;
                *(v63 + 64) = 0;
                *(v63 + 48) = 0;
                *(v62 + 72) = *(v63 + 72);
                v61 = *(v63 + 80);
                *(v62 + 96) = *(v63 + 96);
                *(v62 + 80) = v61;
                *(v63 + 88) = 0;
                *(v63 + 96) = 0;
                *(v63 + 80) = 0;
                *(v62 + 104) = *(v63 + 104);
              }

              while (v56 + v59 != v57);
              v4 = a4;
              while (2)
              {
                if (*(v56 + 103) < 0)
                {
                  operator delete(*(v56 + 80));
                  if (*(v56 + 71) < 0)
                  {
                    goto LABEL_103;
                  }

LABEL_100:
                  v65 = *(v56 + 32);
                  if (v65 != -1)
                  {
LABEL_104:
                    (off_266F4F0[v65])(v98, v56);
                  }
                }

                else
                {
                  if ((*(v56 + 71) & 0x80000000) == 0)
                  {
                    goto LABEL_100;
                  }

LABEL_103:
                  operator delete(*(v56 + 48));
                  v65 = *(v56 + 32);
                  if (v65 != -1)
                  {
                    goto LABEL_104;
                  }
                }

                *(v56 + 32) = -1;
                v56 += 112;
                if (v56 == v57)
                {
                  goto LABEL_105;
                }

                continue;
              }
            }
          }

          else
          {
            *v16 = 0;
            *(v16 + 1) = 0;
            v18 = (v16 + 24);
            *(v16 + 2) = 0;
            *(v7 - 16) = v16 + 24;
            v20 = *v86;
            v19 = v86[1];
            if (*v86 != v19)
            {
              goto LABEL_36;
            }
          }

LABEL_20:
          v7 = v85;
          v86 += 3;
        }

        while (v86 != v84);
      }

      a3 = v82;
      v83 += 3;
    }

    while (v83 != v81);
  }
}

void sub_9A4C54(_Unwind_Exception *a1)
{
  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
    sub_55DB28(v2);
    *(v1 + 48) = v2;
    _Unwind_Resume(a1);
  }

  sub_55DB28(v2);
  *(v1 + 48) = v2;
  _Unwind_Resume(a1);
}

void sub_9A4C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (*(v14 + 71) < 0)
  {
    operator delete(*(v14 + 48));
    sub_55DB28(v14);
    sub_55F0EC(va);
    _Unwind_Resume(a1);
  }

  sub_55DB28(v14);
  sub_55F0EC(va);
  _Unwind_Resume(a1);
}

void sub_9A4CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_55DB84(v14);
  sub_55F0EC(va);
  _Unwind_Resume(a1);
}

void sub_9A4CF8(_Unwind_Exception *a1)
{
  sub_55DB84(v2);
  *(v1 + 48) = v2;
  _Unwind_Resume(a1);
}

void *sub_9A4D28(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_A21C90(v47, a3);
  while (1)
  {
    sub_A21CE8(v47, &v24);
    v6 = sub_A21B4C(v47, &v24);
    sub_98ED24(&v24);
    if (!v6)
    {
      return sub_98ED24(v47);
    }

    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    memset(v28, 255, sizeof(v28));
    v29 = 0;
    v31 = 0;
    v30 = 0;
    v32 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    v36 = 0;
    v27 = 0;
    v37 = 0;
    memset(v38, 255, sizeof(v38));
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v40 = 0;
    v43 = 0;
    v44 = 0;
    v46 = 0;
    v45 = 0;
    v7 = *sub_A21CB8(v47);
    if (v7 > 4)
    {
      if (v7 > 6)
      {
        if (v7 == 7)
        {
          v17 = sub_A21CB8(v47);
          sub_A14348(a2, v17, v23);
        }

        else
        {
          if (v7 != 8)
          {
            goto LABEL_31;
          }

          v13 = sub_A21CB8(v47);
          sub_A14668(a2, v13, 0, v23);
        }

        goto LABEL_30;
      }

      if (v7 == 5)
      {
        v15 = sub_A21CB8(v47);
        sub_A21730(v47, &__p);
        sub_A21834(v47, 0xFFFFFFFFFFFFFFFFLL, v20);
        sub_A14B44(a2, v15, &__p, v20, v23);
      }

      else
      {
        sub_A21730(v47, &__p);
        sub_A21834(v47, 0xFFFFFFFFFFFFFFFFLL, v20);
        sub_A14004(a2, &__p, v20, v23);
      }

      sub_9A58F8(&v24, v23);
      sub_97E978(v23);
      if (v20[0])
      {
        v20[1] = v20[0];
        operator delete(v20[0]);
      }

      goto LABEL_27;
    }

    if (v7 <= 2)
    {
      if (v7 != 1)
      {
        if (v7 != 2)
        {
          goto LABEL_31;
        }

        v8 = sub_A21CB8(v47);
        sub_A13298(a2, v8, 0, v23);
LABEL_30:
        sub_9A58F8(&v24, v23);
        sub_97E978(v23);
        goto LABEL_31;
      }

      v14 = sub_A21CB8(v47);
      sub_A21834(v47, 0xFFFFFFFFFFFFFFFFLL, &__p);
      sub_A14D94(a2, v14, &__p, v23);
LABEL_26:
      sub_9A58F8(&v24, v23);
      sub_97E978(v23);
LABEL_27:
      if (__p)
      {
        v22 = __p;
        operator delete(__p);
      }

      goto LABEL_31;
    }

    if (v7 == 3)
    {
      v16 = sub_A21CB8(v47);
      sub_A21730(v47, &__p);
      sub_A15300(a2, v16, &__p, v23);
      goto LABEL_26;
    }

    v9 = sub_A21CB8(v47);
    sub_A21730(v47, &__p);
    sub_A13AD0(a2, v9, &__p, v23);
    sub_9A58F8(&v24, v23);
    sub_97E978(v23);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }

    v10 = sub_A21CB8(v47);
    if (*(&v25 + 1) != v26)
    {
      v11 = *(v10 + 3424);
      for (i = *(v10 + 3432); v11 != i; v11 += 464)
      {
        sub_5410A0(v11 + 320, *(&v25 + 1));
      }
    }

LABEL_31:
    v18 = sub_A21CB8(v47);
    sub_9A5B04(v18, &v24, v18, a4);
    sub_97E978(&v24);
    sub_A21708(v47);
  }
}

void sub_9A50BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
    sub_97E978(&a49);
    sub_98ED24((v49 - 216));
    _Unwind_Resume(a1);
  }

  sub_97E978(&a49);
  sub_98ED24((v49 - 216));
  _Unwind_Resume(a1);
}

void sub_9A5198(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, void *a5)
{
  v5 = *a4;
  v46 = a4[1];
  if (*a4 != v46)
  {
    v7 = a2;
    v50 = a5 + 5;
    while (1)
    {
      v8 = *v5;
      v9 = v5[1];
      v48 = v5;
      v51 = v9;
      if (*v5 != v9)
      {
        break;
      }

LABEL_3:
      sub_A0C17C(a3, v48);
      v5 = v48 + 4;
      if (v48 + 4 == v46)
      {
        return;
      }
    }

    while (1)
    {
      sub_A11B34(v7, v8, v52);
      if (v55 > 2)
      {
        if (v55 != 3 && v55 != 4)
        {
          goto LABEL_87;
        }

        v10 = HIBYTE(v54);
        if (v54 < 0)
        {
          v10 = v53;
        }

        if (!v10)
        {
          goto LABEL_87;
        }
      }

      else if (v55 == 1)
      {
        if (v52[0] == -1)
        {
          goto LABEL_87;
        }
      }

      else if (v55 != 2 || v52[1] == -1 && v52[0] == -1 && v53 == v54)
      {
        goto LABEL_87;
      }

      v11 = sub_94AD3C(a5, v52);
      v12 = a5[1];
      if (v12)
      {
        v13 = v11;
        v14 = vcnt_s8(v12);
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] > 1uLL)
        {
          v15 = v11;
          if (v11 >= *&v12)
          {
            v15 = v11 % *&v12;
          }
        }

        else
        {
          v15 = (*&v12 - 1) & v11;
        }

        v16 = *(*a5 + 8 * v15);
        if (v16)
        {
          v17 = *v16;
          if (*v16)
          {
            if (v14.u32[0] < 2uLL)
            {
              while (1)
              {
                v19 = v17[1];
                if (v19 == v13)
                {
                  if (sub_55DD5C((v17 + 2), v52))
                  {
                    goto LABEL_41;
                  }
                }

                else if ((v19 & (*&v12 - 1)) != v15)
                {
                  goto LABEL_42;
                }

                v17 = *v17;
                if (!v17)
                {
                  goto LABEL_42;
                }
              }
            }

            do
            {
              v18 = v17[1];
              if (v18 == v13)
              {
                if (sub_55DD5C((v17 + 2), v52))
                {
LABEL_41:
                  v20 = v17[16];
                  goto LABEL_86;
                }
              }

              else
              {
                if (v18 >= *&v12)
                {
                  v18 %= *&v12;
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

LABEL_42:
      v21 = a5[5];
      v22 = a5[6];
      v23 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v21) >> 4);
      v63 = v23;
      v24 = a5[7];
      if (v22 < v24)
      {
        *v22 = 0;
        *(v22 + 32) = -1;
        v25 = v55;
        if (v55 != -1)
        {
          v64 = v22;
          (off_266F518[v55])(&v64, v52);
          *(v22 + 32) = v25;
        }

        *(v22 + 40) = v56;
        if (SHIBYTE(v58) < 0)
        {
          sub_325C((v22 + 48), v57, *(&v57 + 1));
        }

        else
        {
          v26 = v57;
          *(v22 + 64) = v58;
          *(v22 + 48) = v26;
        }

        *(v22 + 72) = v59;
        if (SHIBYTE(v61) < 0)
        {
          sub_325C((v22 + 80), __p, *(&__p + 1));
        }

        else
        {
          v30 = __p;
          *(v22 + 96) = v61;
          *(v22 + 80) = v30;
        }

        *(v22 + 104) = v62;
        v31 = v22 + 112;
        a5[6] = v22 + 112;
        goto LABEL_85;
      }

      if ((v23 + 1) > 0x249249249249249)
      {
        sub_1794();
      }

      v27 = 0x6DB6DB6DB6DB6DB7 * ((v24 - v21) >> 4);
      v28 = 2 * v27;
      if (2 * v27 <= v23 + 1)
      {
        v28 = v23 + 1;
      }

      if (v27 >= 0x124924924924924)
      {
        v29 = 0x249249249249249;
      }

      else
      {
        v29 = v28;
      }

      v68 = v50;
      if (v29)
      {
        if (v29 <= 0x249249249249249)
        {
          operator new();
        }

        sub_1808();
      }

      v32 = 112 * v23;
      v64 = 0;
      v65 = v32;
      v66 = 112 * v23;
      v67 = 0;
      *v32 = 0;
      *(v32 + 32) = -1;
      v33 = v55;
      if (v55 != -1)
      {
        v69[0] = v32;
        (off_266F518[v55])(v69, v52);
        *(v32 + 32) = v33;
      }

      *(v32 + 40) = v56;
      if (SHIBYTE(v58) < 0)
      {
        sub_325C((v32 + 48), v57, *(&v57 + 1));
      }

      else
      {
        *(v32 + 48) = v57;
        *(v32 + 64) = v58;
      }

      *(v32 + 72) = v59;
      if (SHIBYTE(v61) < 0)
      {
        sub_325C((v32 + 80), __p, *(&__p + 1));
      }

      else
      {
        *(v32 + 80) = __p;
        *(v32 + 96) = v61;
      }

      *(v32 + 104) = v62;
      v31 = v66 + 112;
      v66 += 112;
      v35 = a5[5];
      v34 = a5[6];
      v36 = v65 + v35 - v34;
      if (v35 != v34)
      {
        break;
      }

LABEL_83:
      v44 = a5[5];
      a5[5] = v36;
      a5[6] = v31;
      a5[7] = v67;
      if (v44)
      {
        operator delete(v44);
      }

LABEL_85:
      a5[6] = v31;
      sub_9A7108(a5, v52);
      v9 = v51;
      v20 = v63;
LABEL_86:
      *(v8 + 64) = v20;
      *(v8 + 72) = v20;
LABEL_87:
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p);
        if ((SHIBYTE(v58) & 0x80000000) == 0)
        {
LABEL_89:
          v45 = v55;
          if (v55 == -1)
          {
            goto LABEL_6;
          }

LABEL_93:
          (off_266F4F0[v45])(&v64, v52);
          goto LABEL_6;
        }
      }

      else if ((SHIBYTE(v58) & 0x80000000) == 0)
      {
        goto LABEL_89;
      }

      operator delete(v57);
      v45 = v55;
      if (v55 != -1)
      {
        goto LABEL_93;
      }

LABEL_6:
      v8 += 104;
      if (v8 == v9)
      {
        goto LABEL_3;
      }
    }

    v37 = 0;
    do
    {
      v40 = v36 + v37;
      v41 = v35 + v37;
      *v40 = 0;
      *(v40 + 32) = -1;
      v42 = *(v35 + v37 + 32);
      if (v42 != -1)
      {
        v69[0] = v36 + v37;
        (off_266F588[v42])(v69, v35 + v37);
        *(v40 + 32) = v42;
      }

      v37 += 112;
      *(v40 + 40) = *(v41 + 40);
      v38 = *(v41 + 48);
      *(v40 + 64) = *(v41 + 64);
      *(v40 + 48) = v38;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      *(v41 + 48) = 0;
      *(v40 + 72) = *(v41 + 72);
      v39 = *(v41 + 80);
      *(v40 + 96) = *(v41 + 96);
      *(v40 + 80) = v39;
      *(v41 + 88) = 0;
      *(v41 + 96) = 0;
      *(v41 + 80) = 0;
      *(v40 + 104) = *(v41 + 104);
    }

    while (v35 + v37 != v34);
    v7 = a2;
    while (1)
    {
      if (*(v35 + 103) < 0)
      {
        operator delete(*(v35 + 80));
        if ((*(v35 + 71) & 0x80000000) == 0)
        {
LABEL_78:
          v43 = *(v35 + 32);
          if (v43 == -1)
          {
            goto LABEL_75;
          }

LABEL_82:
          (off_266F4F0[v43])(v69, v35);
          goto LABEL_75;
        }
      }

      else if ((*(v35 + 71) & 0x80000000) == 0)
      {
        goto LABEL_78;
      }

      operator delete(*(v35 + 48));
      v43 = *(v35 + 32);
      if (v43 != -1)
      {
        goto LABEL_82;
      }

LABEL_75:
      *(v35 + 32) = -1;
      v35 += 112;
      if (v35 == v34)
      {
        goto LABEL_83;
      }
    }
  }
}

void sub_9A5808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 71) < 0)
  {
    operator delete(*(v7 + 48));
  }

  sub_55DB28(v7);
  sub_55F0EC((v8 - 136));
  sub_5CEBB8(va);
  _Unwind_Resume(a1);
}

void sub_9A589C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5CEBB8(va);
  _Unwind_Resume(a1);
}

void sub_9A58B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5CEBB8(va);
  _Unwind_Resume(a1);
}

void sub_9A58C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5CEBB8(va);
  _Unwind_Resume(a1);
}

void sub_9A58DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5CEBB8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9A58F8(uint64_t a1, uint64_t a2)
{
  sub_9A67C8(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_9A67C8((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v4 = *(a1 + 80);
  v5 = *(a2 + 80);
  if (v4 == -1)
  {
    if (v5 == -1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 == -1)
  {
    (off_266F4F0[v4])(&v13, a1 + 48);
    *(a1 + 80) = -1;
    goto LABEL_6;
  }

  v13 = a1 + 48;
  (off_266F560[v5])(&v13);
LABEL_6:
  *(a1 + 88) = *(a2 + 88);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v6 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v6;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v7 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v7;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  *(a1 + 152) = *(a2 + 152);
  v8 = *(a1 + 192);
  v9 = *(a2 + 192);
  if (v8 == -1)
  {
    if (v9 == -1)
    {
      goto LABEL_15;
    }
  }

  else if (v9 == -1)
  {
    (off_266F4F0[v8])(&v13, a1 + 160);
    *(a1 + 192) = -1;
    goto LABEL_15;
  }

  v13 = a1 + 160;
  (off_266F560[v9])(&v13);
LABEL_15:
  *(a1 + 200) = *(a2 + 200);
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v10 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v10;
  *(a2 + 231) = 0;
  *(a2 + 208) = 0;
  *(a1 + 232) = *(a2 + 232);
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  v11 = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 240) = v11;
  *(a2 + 263) = 0;
  *(a2 + 240) = 0;
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

void sub_9A5B04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sub_9A619C(a2))
  {
    return;
  }

  v7 = *a2;
  v8 = *(a2 + 8);
  while (v7 != v8)
  {
    v10 = *(v7 + 32);
    if (v10 > 2)
    {
      if (v10 == 3 || v10 == 4)
      {
        if ((*(v7 + 23) & 0x8000000000000000) != 0)
        {
          if (*(v7 + 8))
          {
            goto LABEL_22;
          }
        }

        else if (*(v7 + 23))
        {
          goto LABEL_22;
        }
      }
    }

    else if (v10 == 1)
    {
      if (*v7 != -1)
      {
        goto LABEL_22;
      }
    }

    else if (v10 == 2 && (*(v7 + 4) != -1 || *v7 != -1 || *(v7 + 8) != *(v7 + 16)))
    {
LABEL_22:
      v11 = sub_9A6E7C(a4, v7);
      if (v11)
      {
        v12 = v11[16];
        v13 = *(a3 + 1952);
        v14 = *(a3 + 1960);
        if (v13 >= v14)
        {
          goto LABEL_29;
        }

LABEL_3:
        *v13 = v12;
        v9 = v13 + 8;
      }

      else
      {
        v15 = a4[6];
        v56 = 0x6DB6DB6DB6DB6DB7 * ((v15 - a4[5]) >> 4);
        if (v15 >= a4[7])
        {
          v16 = sub_9A6FB4(a4 + 5, v7);
        }

        else
        {
          sub_55F1E8(v15, v7);
          v16 = v15 + 112;
          a4[6] = v15 + 112;
        }

        a4[6] = v16;
        sub_9A7108(a4, v7);
        v12 = v56;
        v13 = *(a3 + 1952);
        v14 = *(a3 + 1960);
        if (v13 < v14)
        {
          goto LABEL_3;
        }

LABEL_29:
        v17 = *(a3 + 1944);
        v18 = v13 - v17;
        v19 = (v13 - v17) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
LABEL_121:
          sub_1794();
        }

        v21 = v14 - v17;
        if (v21 >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (!(v22 >> 61))
          {
            operator new();
          }

          goto LABEL_122;
        }

        v23 = (v13 - v17) >> 3;
        v24 = (8 * v19);
        v25 = (8 * v19 - 8 * v23);
        *v24 = v12;
        v9 = v24 + 1;
        memcpy(v25, v17, v18);
        *(a3 + 1944) = v25;
        *(a3 + 1952) = v9;
        *(a3 + 1960) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      *(a3 + 1952) = v9;
    }

    v7 += 112;
  }

  v26 = *(a2 + 24);
  v27 = *(a2 + 32);
  while (v26 != v27)
  {
    v29 = *(v26 + 32);
    if (v29 > 2)
    {
      if (v29 == 3 || v29 == 4)
      {
        if ((*(v26 + 23) & 0x8000000000000000) != 0)
        {
          if (*(v26 + 8))
          {
            goto LABEL_60;
          }
        }

        else if (*(v26 + 23))
        {
          goto LABEL_60;
        }
      }
    }

    else if (v29 == 1)
    {
      if (*v26 != -1)
      {
        goto LABEL_60;
      }
    }

    else if (v29 == 2 && (*(v26 + 4) != -1 || *v26 != -1 || *(v26 + 8) != *(v26 + 16)))
    {
LABEL_60:
      v30 = sub_9A6E7C(a4, v26);
      if (v30)
      {
        v31 = v30[16];
        v32 = *(a3 + 1928);
        v33 = *(a3 + 1936);
        if (v32 >= v33)
        {
          goto LABEL_67;
        }

LABEL_41:
        *v32 = v31;
        v28 = v32 + 8;
      }

      else
      {
        v34 = a4[6];
        v57 = 0x6DB6DB6DB6DB6DB7 * ((v34 - a4[5]) >> 4);
        if (v34 >= a4[7])
        {
          v35 = sub_9A6FB4(a4 + 5, v26);
        }

        else
        {
          sub_55F1E8(v34, v26);
          v35 = v34 + 112;
          a4[6] = v34 + 112;
        }

        a4[6] = v35;
        sub_9A7108(a4, v26);
        v31 = v57;
        v32 = *(a3 + 1928);
        v33 = *(a3 + 1936);
        if (v32 < v33)
        {
          goto LABEL_41;
        }

LABEL_67:
        v36 = *(a3 + 1920);
        v37 = v32 - v36;
        v38 = (v32 - v36) >> 3;
        v39 = v38 + 1;
        if ((v38 + 1) >> 61)
        {
          goto LABEL_121;
        }

        v40 = v33 - v36;
        if (v40 >> 2 > v39)
        {
          v39 = v40 >> 2;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF8)
        {
          v41 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v39;
        }

        if (v41)
        {
          if (!(v41 >> 61))
          {
            operator new();
          }

LABEL_122:
          sub_1808();
        }

        v42 = (v32 - v36) >> 3;
        v43 = (8 * v38);
        v44 = (8 * v38 - 8 * v42);
        *v43 = v31;
        v28 = v43 + 1;
        memcpy(v44, v36, v37);
        *(a3 + 1920) = v44;
        *(a3 + 1928) = v28;
        *(a3 + 1936) = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      *(a3 + 1928) = v28;
    }

    v26 += 112;
  }

  v45 = *(a2 + 80);
  if (v45 > 2)
  {
    if (v45 == 3 || v45 == 4)
    {
      v46 = *(a2 + 71);
      if ((v46 & 0x80u) != 0)
      {
        v46 = *(a2 + 56);
      }

      if (v46)
      {
        goto LABEL_90;
      }
    }

LABEL_101:
    v48 = *(a2 + 192);
    if (v48 <= 2)
    {
      goto LABEL_102;
    }

LABEL_92:
    if (v48 == 3 || v48 == 4)
    {
      v49 = *(a2 + 183);
      if ((v49 & 0x80u) != 0)
      {
        v49 = *(a2 + 168);
      }

      if (v49)
      {
        goto LABEL_109;
      }
    }
  }

  else
  {
    if (v45 == 1)
    {
      if (*(a2 + 48) == -1)
      {
        goto LABEL_101;
      }
    }

    else if (v45 != 2 || *(a2 + 52) == -1 && *(a2 + 48) == -1 && *(a2 + 56) == *(a2 + 64))
    {
      goto LABEL_101;
    }

LABEL_90:
    v47 = sub_9A6E7C(a4, a2 + 48);
    if (v47)
    {
      *(a3 + 1968) = v47[16];
      v48 = *(a2 + 192);
      if (v48 > 2)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v50 = a4[6];
      v58 = 0x6DB6DB6DB6DB6DB7 * ((v50 - a4[5]) >> 4);
      if (v50 >= a4[7])
      {
        v51 = sub_9A6FB4(a4 + 5, a2 + 48);
      }

      else
      {
        sub_55F1E8(v50, a2 + 48);
        v51 = v50 + 112;
        a4[6] = v50 + 112;
      }

      a4[6] = v51;
      sub_9A7108(a4, a2 + 48);
      *(a3 + 1968) = v58;
      v48 = *(a2 + 192);
      if (v48 > 2)
      {
        goto LABEL_92;
      }
    }

LABEL_102:
    if (v48 == 1)
    {
      if (*(a2 + 160) == -1)
      {
        return;
      }
    }

    else if (v48 != 2 || *(a2 + 164) == -1 && *(a2 + 160) == -1 && *(a2 + 168) == *(a2 + 176))
    {
      return;
    }

LABEL_109:
    if (*(a3 + 792) == 1)
    {
      v52 = sub_9A6E7C(a4, a2 + 160);
      if (v52)
      {
        v53 = v52[16];
      }

      else
      {
        v54 = a4[6];
        v59 = 0x6DB6DB6DB6DB6DB7 * ((v54 - a4[5]) >> 4);
        if (v54 >= a4[7])
        {
          v55 = sub_9A6FB4(a4 + 5, a2 + 160);
        }

        else
        {
          sub_55F1E8(v54, a2 + 160);
          v55 = v54 + 112;
          a4[6] = v54 + 112;
        }

        a4[6] = v55;
        sub_9A7108(a4, a2 + 160);
        v53 = v59;
      }

      *(a3 + 712) = v53;
    }
  }
}