void sub_75979C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_7597B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_7597C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_7597D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_7597EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759814(uint64_t a1, void *a2, uint64_t a3)
{
  v51 = *a1;
  __p = 0;
  v60 = 0;
  v61 = 0;
  v3 = *(a3 + 40);
  v4 = *(a3 + 24);
  v5 = v3 >= v4;
  if (v3 > v4)
  {
    v4 = *(a3 + 40);
  }

  v52 = v4;
  if (!v5)
  {
    v7 = 0;
    do
    {
      v8 = v3;
      v9 = sub_69AD38(*(a1 + 8), v3);
      if ((v9 & 4) != 0)
      {
        v11 = v9 & 0xFFFFFFFFFFFFFFF3 | 8;
      }

      else
      {
        v11 = v9;
      }

      v54 = v8;
      if (v8 == *(a3 + 24) - 1)
      {
        v12 = **(a1 + 16);
      }

      else
      {
        v13 = sub_69AD38(*(a1 + 8), v8 + 1);
        if ((v13 & 4) != 0)
        {
          v12 = v13 & 0xFFFFFFFFFFFFFFF3 | 8;
        }

        else
        {
          v12 = v13;
        }
      }

      v7 += sub_4D23F8(*(a1 + 8), v54, v10);
      if (v11 != v12)
      {
        if (v11)
        {
          while (1)
          {
            v14 = __clz(__rbit64(v11));
            v15 = v60;
            v16 = __p;
            if (__p != v60)
            {
              while (*v16 != v14)
              {
                v16 += 40;
                if (v16 == v60)
                {
                  goto LABEL_26;
                }
              }
            }

            if (v16 == v60)
            {
LABEL_26:
              if (v60 >= v61)
              {
                v22 = 0xCCCCCCCCCCCCCCCDLL * ((v60 - __p) >> 3) + 1;
                if (v22 > 0x666666666666666)
                {
                  goto LABEL_93;
                }

                if (0x999999999999999ALL * ((v61 - __p) >> 3) > v22)
                {
                  v22 = 0x999999999999999ALL * ((v61 - __p) >> 3);
                }

                if (0xCCCCCCCCCCCCCCCDLL * ((v61 - __p) >> 3) >= 0x333333333333333)
                {
                  v23 = 0x666666666666666;
                }

                else
                {
                  v23 = v22;
                }

                if (v23)
                {
                  if (v23 <= 0x666666666666666)
                  {
                    operator new();
                  }

LABEL_94:
                  sub_1808();
                }

                v24 = 8 * ((v60 - __p) >> 3);
                *v24 = v14;
                *(v24 + 1) = 0;
                *(v24 + 16) = 0;
                *(v24 + 24) = 0;
                *(v24 + 8) = v7;
                *(v24 + 39) = 0;
                v26 = __p;
                v25 = v60;
                v27 = (v24 + __p - v60);
                if (__p != v60)
                {
                  v28 = __p;
                  v29 = (v24 + __p - v60);
                  do
                  {
                    *v29 = *v28;
                    v30 = *(v28 + 1);
                    *(v29 + 4) = v28[4];
                    *(v29 + 1) = v30;
                    v28[3] = 0;
                    v28[4] = 0;
                    v28[2] = 0;
                    v28 += 5;
                    v29 += 40;
                  }

                  while (v28 != v25);
                  do
                  {
                    if (*(v26 + 39) < 0)
                    {
                      operator delete(v26[2]);
                    }

                    v26 += 5;
                  }

                  while (v26 != v25);
                  v26 = __p;
                }

                v21 = (v24 + 40);
                __p = v27;
                v60 = (v24 + 40);
                v61 = 0;
                if (v26)
                {
                  operator delete(v26);
                }
              }

              else
              {
                *v60 = v14;
                v15[1] = 0;
                *(v15 + 2) = 0;
                *(v15 + 3) = 0;
                *(v15 + 1) = v7;
                v21 = v15 + 40;
                v15[39] = 0;
              }

              v60 = v21;
              v17 = *(a1 + 24);
              v19 = *v17;
              v18 = v17[1];
              v20 = *v17;
              if (*v17 != v18)
              {
LABEL_48:
                while (*v20 != v14)
                {
                  v20 += 40;
                  if (v20 == v18)
                  {
                    goto LABEL_54;
                  }
                }
              }
            }

            else
            {
              *(v16 + 1) += v7;
              v16[1] = 0;
              v17 = *(a1 + 24);
              v19 = *v17;
              v18 = v17[1];
              v20 = *v17;
              if (*v17 != v18)
              {
                goto LABEL_48;
              }
            }

            if (v20 == v18)
            {
LABEL_54:
              v31 = v17[2];
              if (v18 < v31)
              {
                *v18 = v14;
                v18[1] = 0;
                *(v18 + 2) = v57;
                *(v18 + 3) = v58;
                *(v18 + 2) = 0;
                *(v18 + 3) = 0;
                *(v18 + 1) = v7;
                *(v18 + 8) = v55;
                *(v18 + 35) = *(&v55 + 3);
                v18[39] = 0;
                v17[1] = v18 + 40;
                v17[1] = v18 + 40;
                v11 &= v11 - 1;
                if (!v11)
                {
                  break;
                }
              }

              else
              {
                v32 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - v19) >> 3);
                v33 = v32 + 1;
                if (v32 + 1 > 0x666666666666666)
                {
LABEL_93:
                  sub_1794();
                }

                v34 = 0xCCCCCCCCCCCCCCCDLL * ((v31 - v19) >> 3);
                if (2 * v34 > v33)
                {
                  v33 = 2 * v34;
                }

                if (v34 >= 0x333333333333333)
                {
                  v35 = 0x666666666666666;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  if (v35 <= 0x666666666666666)
                  {
                    operator new();
                  }

                  goto LABEL_94;
                }

                v36 = 40 * v32;
                *v36 = v14;
                *(v36 + 1) = 0;
                *(v36 + 2) = v57;
                *(v36 + 6) = v58;
                *(v36 + 16) = 0;
                *(v36 + 24) = 0;
                *(v36 + 8) = v7;
                *(v36 + 32) = v55;
                *(v36 + 35) = *(&v55 + 3);
                *(v36 + 39) = 0;
                v38 = *v17;
                v37 = v17[1];
                v39 = v36 + *v17 - v37;
                if (*v17 != v37)
                {
                  v40 = *v17;
                  v41 = v36 + *v17 - v37;
                  do
                  {
                    *v41 = *v40;
                    v42 = *(v40 + 1);
                    *(v41 + 32) = *(v40 + 4);
                    *(v41 + 16) = v42;
                    *(v40 + 3) = 0;
                    *(v40 + 4) = 0;
                    *(v40 + 2) = 0;
                    v40 += 40;
                    v41 += 40;
                  }

                  while (v40 != v37);
                  do
                  {
                    if (v38[39] < 0)
                    {
                      operator delete(*(v38 + 2));
                    }

                    v38 += 40;
                  }

                  while (v38 != v37);
                  v38 = *v17;
                }

                *v17 = v39;
                v17[1] = (v36 + 40);
                v17[2] = 0;
                if (v38)
                {
                  operator delete(v38);
                }

                v17[1] = (v36 + 40);
                v11 &= v11 - 1;
                if (!v11)
                {
                  break;
                }
              }
            }

            else
            {
              *(v20 + 1) += v7;
              v20[1] = 1;
              v11 &= v11 - 1;
              if (!v11)
              {
                break;
              }
            }
          }
        }

        v7 = 0;
      }

      v3 = v54 + 1;
    }

    while (v54 + 1 != v52);
  }

  sub_7568F0(v51, a3, &__p, &v55);
  v43 = (a2 + 99);
  v44 = a2[99];
  if (v44)
  {
    v45 = a2[100];
    v46 = a2[99];
    if (v45 != v44)
    {
      do
      {
        if (*(v45 - 1) < 0)
        {
          operator delete(*(v45 - 24));
        }

        v45 -= 40;
      }

      while (v45 != v44);
      v46 = *v43;
    }

    a2[100] = v44;
    operator delete(v46);
    *v43 = 0;
    a2[100] = 0;
    a2[101] = 0;
  }

  *v43 = v55;
  a2[101] = v56;
  v47 = __p;
  if (__p)
  {
    v48 = v60;
    v49 = __p;
    if (v60 != __p)
    {
      do
      {
        if (*(v48 - 1) < 0)
        {
          operator delete(*(v48 - 3));
        }

        v48 -= 5;
      }

      while (v48 != v47);
      v49 = __p;
    }

    v60 = v47;
    operator delete(v49);
  }
}

void sub_759DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_528FAC(va);
  _Unwind_Resume(a1);
}

void sub_759E54()
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
  xmmword_27A53D0 = 0u;
  unk_27A53E0 = 0u;
  dword_27A53F0 = 1065353216;
  sub_3A9A34(&xmmword_27A53D0, v0);
  sub_3A9A34(&xmmword_27A53D0, v3);
  sub_3A9A34(&xmmword_27A53D0, __p);
  sub_3A9A34(&xmmword_27A53D0, v9);
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
    qword_27A53A8 = 0;
    qword_27A53B0 = 0;
    qword_27A53A0 = 0;
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

void sub_75A09C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A53B8)
  {
    qword_27A53C0 = qword_27A53B8;
    operator delete(qword_27A53B8);
  }

  _Unwind_Resume(exception_object);
}

void sub_75A148(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  sub_21E2C18(a2, 0, *(a3 + 968));
}

void sub_75A254(_BYTE *a1@<X1>, int a2@<W2>, _BYTE *a3@<X8>)
{
  if (a1[1] == 1)
  {
    v27.__r_.__value_.__r.__words[2] = 0x700000000000000;
    *&v27.__r_.__value_.__l.__data_ = *"_PLURAL";
    if (!a2)
    {
LABEL_3:
      v5 = 0;
      HIBYTE(v26) = 0;
      LOBYTE(__p[0]) = 0;
      goto LABEL_6;
    }
  }

  else
  {
    *(&v27.__r_.__value_.__s + 23) = 0;
    v27.__r_.__value_.__s.__data_[0] = 0;
    if (!a2)
    {
      goto LABEL_3;
    }
  }

  *__p = *"_SECONDARY";
  v26 = 0xA00000000000000;
  v5 = 10;
LABEL_6:
  std::string::append(&v27, __p, v5);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  switch(*a1)
  {
    case 0:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v12 = size + 9;
      if (size + 9 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v12;
      a3[8] = 68;
      *a3 = *"SIDE_ROAD";
      v21 = a3 + 9;
      if (size)
      {
        goto LABEL_118;
      }

      goto LABEL_122;
    case 1:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v13 = size + 9;
      if (size + 9 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v13 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v13;
      a3[8] = 68;
      *a3 = *"MAIN_ROAD";
      v21 = a3 + 9;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 2:
    case 3:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v7 = size + 9;
      if (size + 9 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v7 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v7;
      a3[8] = 72;
      *a3 = *"BIKE_PATH";
      v21 = a3 + 9;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 4:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v10 = size + 14;
      if (size + 14 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v10 >= 0x17)
      {
        operator new();
      }

      a3[9] = 0;
      *(a3 + 5) = 0;
      *(a3 + 3) = 0;
      *(a3 + 2) = 0;
      a3[23] = v10;
      strcpy(a3, "PROTECTE");
      v21 = a3 + 14;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 5:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v15 = size + 9;
      if (size + 9 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v15;
      a3[8] = 69;
      *a3 = *"BIKE_LANE";
      v21 = a3 + 9;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 6:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v17 = size + 11;
      if (size + 11 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v17 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v17;
      *(a3 + 7) = 1145130834;
      *a3 = *"SHARED_ROAD";
      v21 = a3 + 11;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 7:
      a3[23] = 15;
      strcpy(a3, "PEDESTRIAN_PATH");
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_142;
      }

      return;
    case 8:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v27.__r_.__value_.__l.__size_;
      }

      v20 = v19 + 8;
      if (v19 + 8 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v20 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      v23 = a3 + 8;
      *(a3 + 2) = 0;
      a3[23] = v20;
      *a3 = 0x4B4C415745444953;
      if (v19)
      {
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v27;
        }

        else
        {
          v24 = v27.__r_.__value_.__r.__words[0];
        }

        memmove(v23, v24, v19);
      }

      *(v23 + v19) = 0;
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_142;
      }

      return;
    case 9:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v11 = size + 10;
      if (size + 10 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v11 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v11;
      *(a3 + 4) = 18516;
      *a3 = *"PAVED_PATH";
      v21 = a3 + 10;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 0xA:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v18 = size + 12;
      if (size + 12 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v18 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v18;
      *(a3 + 2) = 1213481296;
      *a3 = *"UNPAVED_PATH";
      v21 = a3 + 12;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 0xB:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v9 = size + 12;
      if (size + 12 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v9 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v9;
      *(a3 + 2) = 1145130834;
      *a3 = *"UNPAVED_ROAD";
      v21 = a3 + 12;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 0xC:
      a3[23] = 6;
      strcpy(a3, "STAIRS");
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_142;
      }

      return;
    case 0xD:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v16 = size + 22;
      if (size + 22 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      a3[17] = 0;
      *(a3 + 9) = 0;
      *(a3 + 5) = 0;
      a3[23] = v16;
      strcpy(a3, "FERRY_INFRA_DESC");
      v21 = a3 + 22;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 0xE:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      if (size + 32 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (size + 32 > 0x16)
      {
        operator new();
      }

      qmemcpy(a3, "RAILWAY_SHUTTLE_INFRA_DESCRIPTOR", 32);
      v21 = a3 + 32;
      goto LABEL_118;
    case 0xF:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      if (size + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (size + 24 > 0x16)
      {
        operator new();
      }

      qmemcpy(a3, "SHUTTLE_INFRA_DESCRIPTOR", 24);
      v21 = a3 + 24;
      goto LABEL_118;
    case 0x10:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v8 = size + 11;
      if (size + 11 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_143;
      }

      if (v8 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v8;
      *(a3 + 7) = 1213481296;
      *a3 = *"SHARED_PATH";
      v21 = a3 + 11;
      if (!size)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    case 0x11:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v14 = size + 10;
      if (size + 10 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_143:
        sub_3244();
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      a3[23] = v14;
      *(a3 + 4) = 17748;
      *a3 = *"BIKE_ROUTE";
      v21 = a3 + 10;
      if (!size)
      {
        goto LABEL_122;
      }

LABEL_118:
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v27;
      }

      else
      {
        v22 = v27.__r_.__value_.__r.__words[0];
      }

      memmove(v21, v22, size);
LABEL_122:
      *(v21 + size) = 0;
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_142;
    default:
      *a3 = 0;
      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_142:
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      return;
  }
}

void sub_75AE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (a21 < 0)
    {
LABEL_5:
      operator delete(a16);
      _Unwind_Resume(a1);
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void sub_75AED0(uint64_t *a1@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  v4 = a2[1];
  if (*a2 == v4)
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - *a2) >> 3) != 2)
  {
    a3->__r_.__value_.__r.__words[2] = 0xE00000000000000;
    *&a3->__r_.__value_.__l.__data_ = *"{description1}";
    v7 = a2[1] - *a2;
    if (!v7)
    {
      return;
    }

    goto LABEL_10;
  }

  v8 = sub_9274F4(*a1, "TWO_ROAD_DESCRIPTIONS");
  if (*(v8 + 23) < 0)
  {
    sub_325C(a3, *v8, v8[1]);
    v7 = a2[1] - *a2;
    if (!v7)
    {
      return;
    }

    goto LABEL_10;
  }

  v9 = *v8;
  a3->__r_.__value_.__r.__words[2] = v8[2];
  *&a3->__r_.__value_.__l.__data_ = v9;
  v7 = a2[1] - *a2;
  if (v7)
  {
LABEL_10:
    v10 = 0;
    v11 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
    do
    {
      v12 = sub_75B1D4(a2, v10);
      sub_75A254(v12, v10 != 0, v27);
      v13 = sub_9274F4(*a1, v27);
      if (*(v13 + 23) < 0)
      {
        sub_325C(__p, *v13, v13[1]);
      }

      else
      {
        v14 = *v13;
        v26 = v13[2];
        *__p = v14;
      }

      if (v10 == 1)
      {
        v15 = *"{description2}";
      }

      else
      {
        v15 = *"{description1}";
      }

      v24 = v15;
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v17 = a3;
      }

      else
      {
        v17 = a3->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = a3->__r_.__value_.__l.__size_;
      }

      if (size >= 14)
      {
        v18 = v17 + size;
        v19 = v17;
        do
        {
          v20 = memchr(v19, 123, size - 13);
          if (!v20)
          {
            break;
          }

          if (*v20 == v24 && *(v20 + 6) == *(&v24 + 6))
          {
            if (v20 != v18 && v20 - v17 != -1)
            {
              if (SHIBYTE(v26) >= 0)
              {
                v22 = __p;
              }

              else
              {
                v22 = __p[0];
              }

              if (SHIBYTE(v26) >= 0)
              {
                v23 = HIBYTE(v26);
              }

              else
              {
                v23 = __p[1];
              }

              std::string::replace(a3, v20 - v17, 0xEuLL, v22, v23);
            }

            break;
          }

          v19 = (v20 + 1);
          size = v18 - v19;
        }

        while (v18 - v19 >= 14);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p[0]);
        if (v28 < 0)
        {
LABEL_45:
          operator delete(v27[0]);
        }
      }

      else if (v28 < 0)
      {
        goto LABEL_45;
      }

      ++v10;
    }

    while (v10 != v11);
  }
}

void sub_75B150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v24 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  if ((*(v24 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v24);
  _Unwind_Resume(exception_object);
}

uint64_t sub_75B1D4(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 40 * a2;
}

void sub_75B328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_75E2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
    if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
  {
LABEL_3:
    if (SLOBYTE(STACK[0x377]) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  operator delete(STACK[0x378]);
  if (SLOBYTE(STACK[0x377]) < 0)
  {
LABEL_4:
    operator delete(STACK[0x360]);
    if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
  {
LABEL_5:
    if (SLOBYTE(STACK[0x347]) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(STACK[0x348]);
  if (SLOBYTE(STACK[0x347]) < 0)
  {
LABEL_6:
    operator delete(STACK[0x330]);
    if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  if ((SLOBYTE(STACK[0x32F]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SLOBYTE(STACK[0x317]) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(STACK[0x318]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
LABEL_8:
    operator delete(STACK[0x300]);
    if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  if ((SLOBYTE(STACK[0x2FF]) & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x2E7]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(STACK[0x2E8]);
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
LABEL_10:
    operator delete(STACK[0x2D0]);
    if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  if ((SLOBYTE(STACK[0x2CF]) & 0x80000000) == 0)
  {
LABEL_11:
    if (SLOBYTE(STACK[0x2B7]) < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x2B8]);
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
LABEL_12:
    operator delete(STACK[0x2A0]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
LABEL_13:
    if (SLOBYTE(STACK[0x287]) < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x288]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
LABEL_14:
    operator delete(STACK[0x270]);
    if (SLOBYTE(STACK[0x26F]) < 0)
    {
LABEL_37:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
LABEL_38:
        if (SLOBYTE(STACK[0x23F]) < 0)
        {
LABEL_39:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
          {
LABEL_40:
            if (SLOBYTE(STACK[0x20F]) < 0)
            {
LABEL_41:
              operator delete(a75);
              if ((a74 & 0x80000000) == 0)
              {
LABEL_42:
                if (a72 < 0)
                {
LABEL_43:
                  operator delete(a69);
                  if ((a68 & 0x80000000) == 0)
                  {
LABEL_44:
                    _Unwind_Resume(a1);
                  }

LABEL_36:
                  operator delete(a63);
                  _Unwind_Resume(a1);
                }

LABEL_35:
                if ((a68 & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_36;
              }

LABEL_34:
              operator delete(a73);
              if (a72 < 0)
              {
                goto LABEL_43;
              }

              goto LABEL_35;
            }

LABEL_33:
            if ((a74 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          }

LABEL_32:
          operator delete(STACK[0x210]);
          if (SLOBYTE(STACK[0x20F]) < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_33;
        }

LABEL_31:
        if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_32;
      }

LABEL_30:
      operator delete(STACK[0x240]);
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_37;
  }

  goto LABEL_29;
}

void sub_75E4CC(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_75E808(a1, a2, &v9);
  v4 = v9;
  if (v9 != v10)
  {
    do
    {
      v5 = *(v4 + 8);
      if (v5 <= 1)
      {
        v5 = 1;
      }

      v6 = (v5 - 1);
      v7 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2) - 1;
      v8 = *(v4 + 16);
      if (v8 + 1 < v7)
      {
        v7 = v8 + 1;
      }

      if (v7 != v6)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((12 * v7 - 4 * (v6 + 2 * v6)) >> 2) <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1794();
      }

      v4 += 24;
    }

    while (v4 != v10);
    v4 = v9;
  }

  if (v4)
  {
    operator delete(v4);
  }
}

void sub_75E76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18)
{
  v21 = *v19;
  if (*v19)
  {
    *(v18 + 16) = v21;
    operator delete(v21);
  }

  *(a11 + 8) = v18;
  if (__p)
  {
    operator delete(__p);
    v22 = a15;
    if (!a15)
    {
LABEL_5:
      v23 = a18;
      if (!a18)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v22 = a15;
    if (!a15)
    {
      goto LABEL_5;
    }
  }

  operator delete(v22);
  v23 = a18;
  if (!a18)
  {
LABEL_6:
    sub_37484(a11);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v23);
  sub_37484(a11);
  _Unwind_Resume(a1);
}

void sub_75E808(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v40[0] = off_266C618;
  v40[1] = a1;
  v41 = v40;
  sub_2CD1E0(v4, v40, a2, __p);
  if (v41 == v40)
  {
    (*(*v41 + 32))(v41);
    v5 = __p[1];
    v6 = __p[0];
    if (__p[0] == __p[1])
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v41)
    {
      (*(*v41 + 40))();
    }

    v5 = __p[1];
    v6 = __p[0];
    if (__p[0] == __p[1])
    {
      goto LABEL_34;
    }
  }

  v7 = v6;
  while (1)
  {
    v8 = *v7;
    if (*v7 != *(v7 + 1))
    {
      break;
    }

    v7 += 24;
    if (v7 == v5)
    {
      goto LABEL_34;
    }
  }

  if (v7 == v5)
  {
LABEL_34:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (!v6)
    {
      return;
    }

LABEL_35:
    v26 = __p[1];
    v27 = v6;
    if (__p[1] != v6)
    {
      v28 = __p[1];
      do
      {
        v30 = *(v28 - 3);
        v28 -= 24;
        v29 = v30;
        if (v30)
        {
          *(v26 - 2) = v29;
          operator delete(v29);
        }

        v26 = v28;
      }

      while (v28 != v6);
      v27 = __p[0];
    }

    __p[1] = v6;
    operator delete(v27);
    return;
  }

  v38 = a3;
  v9 = v5 - v6;
  if (!v9)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = __p[0];
    if (!__p[0])
    {
      return;
    }

    goto LABEL_35;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
  v15 = HIDWORD(*v8);
  v16 = *v8;
  while (1)
  {
    while (1)
    {
      v17 = sub_75EF04(__p, v11);
      if (v17[1] - *v17 != 8)
      {
        break;
      }

      v18 = sub_75EF04(__p, v11);
      v19 = *v18;
      if (**v18 != v16 || v19[1] != v15 || v11 == -1 - 0x5555555555555555 * ((__p[1] - __p[0]) >> 3))
      {
        v20 = v12 - v10;
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v10) >> 3);
        v22 = v21 + 1;
        if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        if (0x5555555555555556 * (-v10 >> 3) > v22)
        {
          v22 = 0x5555555555555556 * (-v10 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v10 >> 3) >= 0x555555555555555)
        {
          v23 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          if (v23 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v24 = 24 * v21;
        *v24 = v16 | (v15 << 32);
        *(v24 + 8) = v13;
        *(v24 + 16) = v11;
        v12 = 24 * v21 + 24;
        v25 = (v24 + 24 * (v20 / -24));
        memcpy(v25, v10, v20);
        if (v10)
        {
          operator delete(v10);
        }

        v10 = v25;
        v16 = *v19;
        v15 = HIDWORD(*v19);
        v13 = v11;
      }

      if (v14 == ++v11)
      {
LABEL_46:
        *v38 = v10;
        v38[1] = v12;
        v38[2] = 0;
        v6 = __p[0];
        if (__p[0])
        {
          goto LABEL_35;
        }

        return;
      }
    }

    if (v11 == -1 - 0x5555555555555555 * ((__p[1] - __p[0]) >> 3))
    {
      break;
    }

    if (v14 == ++v11)
    {
      goto LABEL_46;
    }
  }

  v31 = v11 + 1;
  v32 = v12 - v10;
  v33 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v10) >> 3) + 1;
  if (v33 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (-v10 >> 3) > v33)
  {
    v33 = 0x5555555555555556 * (-v10 >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * (-v10 >> 3) >= 0x555555555555555)
  {
    v34 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v34 = v33;
  }

  if (v34)
  {
    if (v34 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v35 = (8 * ((v12 - v10) >> 3));
  *v35 = v16 | (v15 << 32);
  v35[1] = v13;
  v35[2] = v31;
  v36 = v35 + 3;
  v37 = v35 - v32;
  memcpy(v35 - v32, v10, v32);
  if (v10)
  {
    operator delete(v10);
  }

  *v38 = v37;
  v38[1] = v36;
  v38[2] = 0;
  v6 = __p[0];
  if (__p[0])
  {
    goto LABEL_35;
  }
}

void sub_75ED04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_34BE0(va);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_75ED44(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_75F120(a1, a2, a3, &v21);
  v9 = *(a4 + 24);
  if (v9 == 1)
  {
    sub_75F120(a1, a2, a4, __p);
    *v18 = *__p;
    v19 = v17;
    v20 = 1;
  }

  else
  {
    LOBYTE(v18[0]) = 0;
    v20 = 0;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 2) <= 1)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    if ((v9 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_2CBF08(*a1, *a2, __p);
  v10 = __p[0];
  if (__p[0] != __p[1])
  {
    sub_75F214(a1, __p, &v21, a5);
    v10 = __p[0];
    if (__p[0])
    {
      goto LABEL_9;
    }

LABEL_18:
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_9:
  v11 = __p[1];
  v12 = v10;
  if (__p[1] != v10)
  {
    v13 = __p[1];
    do
    {
      v15 = *(v13 - 3);
      v13 -= 24;
      v14 = v15;
      if (v15)
      {
        *(v11 - 2) = v14;
        operator delete(v14);
      }

      v11 = v13;
    }

    while (v13 != v10);
    v12 = __p[0];
  }

  __p[1] = v10;
  operator delete(v12);
  if (v20)
  {
LABEL_19:
    if (v18[0])
    {
      operator delete(v18[0]);
    }
  }

LABEL_21:
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }
}

void sub_75EEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  sub_34BE0(&a9);
  if ((v19 & 1) != 0 && __p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_75EF04(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 24 * a2;
}

void sub_75F040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_75F120(uint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  sub_2CB8B4(*a1, *a2, &__p);
  sub_75FA98(&__p, a3, a4);
  v6 = __p;
  if (__p)
  {
    v7 = v18;
    v8 = __p;
    if (v18 != __p)
    {
      v9 = v18;
      do
      {
        v12 = *(v9 - 3);
        v9 -= 3;
        v11 = v12;
        if (v12)
        {
          v13 = *(v7 - 2);
          v10 = v11;
          if (v13 != v11)
          {
            v14 = *(v7 - 2);
            do
            {
              v16 = *(v14 - 3);
              v14 -= 24;
              v15 = v16;
              if (v16)
              {
                *(v13 - 2) = v15;
                operator delete(v15);
              }

              v13 = v14;
            }

            while (v14 != v11);
            v10 = *v9;
          }

          *(v7 - 2) = v11;
          operator delete(v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
      v8 = __p;
    }

    v18 = v6;
    operator delete(v8);
  }
}

void sub_75F200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_52FF0(va);
  _Unwind_Resume(a1);
}

void sub_75F214(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  __p = 0;
  v75 = 0;
  v76 = 0;
  v7 = *a2;
  v8 = a2[1];
  p_p = &__p;
  LOBYTE(v78) = 0;
  if (v8 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = 0;
  v10 = *a3;
  v11 = a3[1];
  v12 = *(v11 - 12) - **a3;
  if (v12)
  {
    v14 = *(v11 - 8);
    v13 = v10[1];
  }

  else
  {
    v13 = v10[1];
    v14 = *(v11 - 8);
    i = 0.0;
    if (v13 == v14)
    {
      goto LABEL_14;
    }
  }

  v16 = --v12;
  if (v12 < -v12)
  {
    v16 = v12;
  }

    ;
  }

    ;
  }

LABEL_14:
  v17 = __p;
  if (!__p)
  {
    goto LABEL_41;
  }

  do
  {
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = *(v19 - 12) - **v17;
    if (v20)
    {
      v22 = *(v19 - 8);
      v21 = v18[1];
    }

    else
    {
      v21 = v18[1];
      v22 = *(v19 - 8);
      j = 0.0;
      if (v21 == v22)
      {
        goto LABEL_28;
      }
    }

    v24 = --v20;
    if (v20 < -v20)
    {
      v24 = v20;
    }

      ;
    }

    while (j < -180.0)
    {
      j = j + 360.0;
    }

LABEL_28:
    v25 = j + 180.0;
    v26 = v25 + -360.0;
    if (v25 <= 360.0)
    {
      v26 = v25;
    }

    sub_455D0(i, v26);
    if (v27 < *(a1 + 8))
    {
      v28 = *v17;
      v29 = *(v17 + 1);
      v30 = v29 - 12;
      if (*v17 != v29 && v30 > v28)
      {
        v32 = v28 + 3;
        do
        {
          v33 = *(v32 - 1);
          v34 = *(v32 - 3);
          v35 = *(v30 + 8);
          *(v32 - 3) = *v30;
          *(v32 - 1) = v35;
          *v30 = v34;
          *(v30 + 8) = v33;
          v30 -= 12;
          v36 = v32 >= v30;
          v32 += 3;
        }

        while (!v36);
      }
    }

    v17 += 24;
  }

  while (v17);
  v17 = __p;
  v9 = v75;
LABEL_41:
  v73 = a4;
  if (v17 == v9)
  {
    v47 = v9;
    v59 = v75;
    if (v9 != v75)
    {
      goto LABEL_78;
    }

    goto LABEL_73;
  }

  v37 = *v17;
  v38 = *(v17 + 1);
  v39 = *(v38 - 12) - **v17;
  if (v39)
  {
    v41 = *(v38 - 8);
    v40 = v37[1];
  }

  else
  {
    v40 = v37[1];
    v41 = *(v38 - 8);
    k = 0.0;
    if (v40 == v41)
    {
      goto LABEL_53;
    }
  }

  v43 = --v39;
  if (v39 < -v39)
  {
    v43 = v39;
  }

    ;
  }

  while (k < -180.0)
  {
    k = k + 360.0;
  }

LABEL_53:
  sub_455D0(k, i);
  if (v45 <= *(a1 + 8))
  {
    sub_760014(v44, a3, v17);
  }

  if (v17 == v9)
  {
    v47 = v17;
    v59 = v75;
    if (v17 != v75)
    {
      goto LABEL_78;
    }

LABEL_73:
    v60 = a3;
    v61 = __p;
    v62 = v73;
    if (__p != v59)
    {
      goto LABEL_84;
    }

LABEL_74:
    *v62 = 0;
    v62[1] = 0;
    v62[2] = 0;
    if (v61)
    {
      goto LABEL_87;
    }

    return;
  }

  v46 = v17 + 24;
  if (v17 + 24 != v9)
  {
    v47 = v17;
    while (1)
    {
      v48 = v17;
      v17 = v46;
      v49 = *(v48 + 3);
      v50 = *(v48 + 4);
      v51 = *(v50 - 12);
      v52 = v51 - *v49;
      if (v51 != *v49)
      {
        break;
      }

      v53 = v49[1];
      v54 = *(v50 - 8);
      m = 0.0;
      if (v53 != v54)
      {
        goto LABEL_63;
      }

LABEL_70:
      sub_455D0(m, i);
      if (v58 <= *(a1 + 8))
      {
        sub_760014(v57, a3, v17);
      }

      v46 = v17 + 24;
      if (v17 + 24 == v9)
      {
        goto LABEL_77;
      }
    }

    v54 = *(v50 - 8);
    v53 = v49[1];
LABEL_63:
    v56 = --v52;
    if (v52 < -v52)
    {
      v56 = v52;
    }

      ;
    }

    while (m < -180.0)
    {
      m = m + 360.0;
    }

    goto LABEL_70;
  }

  v47 = v17;
LABEL_77:
  v59 = v75;
  if (v47 == v75)
  {
    goto LABEL_73;
  }

LABEL_78:
  v62 = v73;
  v60 = a3;
  v63 = v59;
  v59 = v47;
  if (v63 != v47)
  {
    v64 = v63;
    do
    {
      v66 = *(v64 - 3);
      v64 -= 24;
      v65 = v66;
      if (v66)
      {
        *(v63 - 2) = v65;
        operator delete(v65);
      }

      v63 = v64;
    }

    while (v64 != v47);
  }

  v75 = v47;
  v61 = __p;
  if (__p == v47)
  {
    goto LABEL_74;
  }

LABEL_84:
  p_p = a1;
  v78 = v60;
  sub_7605CC(v61, v59, &p_p, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v59 - v61) >> 3)), 1);
  v61 = __p;
  v62[1] = 0;
  v62[2] = 0;
  *v62 = 0;
  v67 = *(v61 + 1);
  if (v67 != *v61)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v67 - *v61) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

LABEL_87:
  v68 = v75;
  v69 = v61;
  if (v75 != v61)
  {
    v70 = v75;
    do
    {
      v72 = *(v70 - 3);
      v70 -= 24;
      v71 = v72;
      if (v72)
      {
        *(v68 - 2) = v71;
        operator delete(v71);
      }

      v68 = v70;
    }

    while (v70 != v61);
    v69 = __p;
  }

  v75 = v61;
  operator delete(v69);
}

void sub_75FA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_75FA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_35390(va);
  _Unwind_Resume(a1);
}

void sub_75FA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_75FA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_35390(va);
  _Unwind_Resume(a1);
}

void sub_75FA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_75FA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_75FA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_75FA98(uint64_t a1@<X1>, void *a2@<X2>, char **a3@<X8>)
{
  v6 = (a2[1] - *a2) >> 2;
  v29 = -1;
  v7 = 0xAAAAAAAAAAAAAAABLL * v6;
  v30 = 0x7FFFFFFF;
  v27 = -1;
  v28 = 0x7FFFFFFF;
  __p = 0;
  v25 = 0;
  v26 = 0;
  v8 = 1;
  while (v7 != v8)
  {
    v9 = sub_41224(a2, v8 - 1);
    v10 = sub_41224(a2, v8++);
    if (sub_3BF04(v9, v10, a1, &__p))
    {
      v11 = *(__p + 2);
      v29 = *__p;
      v30 = v11;
      v12 = v8 - 1;
      goto LABEL_6;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2) - 2;
  if (v12 + 1 < v13)
  {
    v14 = v12 + 1;
  }

  else
  {
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2) - 2;
  }

  if (v13 <= v12 + 1)
  {
LABEL_12:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v17 = v7 - v12 + 2;
    if (v7 - v12 != -2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    while (1)
    {
      v15 = sub_41224(a2, v13);
      v16 = sub_41224(a2, v13 + 1);
      if (sub_3BF04(v15, v16, a1, &__p))
      {
        break;
      }

      if (v14 == --v13)
      {
        goto LABEL_12;
      }
    }

    v18 = *(v25 - 1);
    v27 = *(v25 - 3);
    v28 = v18;
    v7 = v13 + 1;
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v19 = v13 + 1 - v12;
    v17 = v19 + 2;
    if (v19 != -2)
    {
LABEL_16:
      if (v17 < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }
  }

  if (v7 != v12)
  {
    v20 = *a2 + 12 * v7;
    v21 = (*a2 + 12 * v12);
    do
    {
      sub_376F0(a3, v21);
      v21 = (v21 + 12);
    }

    while (v21 != v20);
  }

  if (v29 != -1 || HIDWORD(v29) != -1)
  {
    sub_75FD84(a3, *a3, &v29);
  }

  if (v27 != -1 || HIDWORD(v27) != -1)
  {
    sub_376F0(a3, &v27);
  }

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }
}

void sub_75FD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
    v14 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

char *sub_75FD84(void *a1, char *__src, unint64_t a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (__src == v6)
    {
      v15 = *a3;
      *(v6 + 2) = *(a3 + 8);
      *v6 = v15;
      a1[1] = v6 + 12;
      return v4;
    }

    v8 = __src + 12;
    if (v6 < 0xC)
    {
      v9 = a1[1];
      a1[1] = v6;
      if (v6 == v8)
      {
LABEL_21:
        v17 = v9 <= a3 || v4 > a3;
        v18 = 12;
        if (v17)
        {
          v18 = 0;
        }

        v19 = a3 + v18;
        v20 = *v19;
        *(v4 + 2) = *(v19 + 8);
        *v4 = v20;
        return v4;
      }
    }

    else
    {
      v9 = v6 + 12;
      v10 = *(v6 - 12);
      *(v6 + 2) = *(v6 - 1);
      *v6 = v10;
      a1[1] = v6 + 12;
      if (v6 == v8)
      {
        goto LABEL_21;
      }
    }

    memmove(__src + 12, __src, v6 - v8);
    v9 = a1[1];
    goto LABEL_21;
  }

  v11 = *a1;
  v12 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 2) + 1;
  if (v12 > 0x1555555555555555)
  {
    sub_1794();
  }

  v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 2);
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0xAAAAAAAAAAAAAAALL)
  {
    v14 = 0x1555555555555555;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    if (v14 <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 4 * ((__src - v11) >> 2);
  if (!(0xAAAAAAAAAAAAAAABLL * ((__src - v11) >> 2)))
  {
    if (__src - v11 < 1)
    {
      operator new();
    }

    v16 = 4 * ((__src - v11) >> 2) - 12 * ((1 - 0x5555555555555555 * ((4 * ((__src - v11) >> 2)) >> 2) + ((1 - 0x5555555555555555 * ((4 * ((__src - v11) >> 2)) >> 2)) >> 63)) >> 1);
  }

  v21 = *a3;
  *(v16 + 8) = *(a3 + 8);
  *v16 = v21;
  memcpy((v16 + 12), __src, a1[1] - __src);
  v22 = *a1;
  v23 = v16 + 12 + a1[1] - v4;
  a1[1] = v4;
  v24 = v4 - v22;
  v25 = (v16 - (v4 - v22));
  memcpy(v25, v22, v24);
  v26 = *a1;
  *a1 = v25;
  a1[1] = v23;
  a1[2] = 0;
  if (v26)
  {
    operator delete(v26);
  }

  return v16;
}

void sub_75FFFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_760014(uint64_t a1, void *a2, void *a3)
{
  sub_7601CC(&v6, a2);
  sub_7601CC(&v5, a3);
  sub_3C188(&v4, &v6);
}

void sub_760170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3C214(va);
  v4 = *(v2 - 112);
  if (v4)
  {
    *(v2 - 104) = v4;
    operator delete(v4);
    v5 = *(v2 - 88);
    if (!v5)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *(v2 - 88);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v2 - 80) = v5;
  operator delete(v5);
  _Unwind_Resume(a1);
}

void *sub_7601CC(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 2)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = result;
  return result;
}

void sub_760290(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_7602AC(void *a1, uint64_t *a2, void *a3)
{
  v3 = (a1[1] - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = (32 * v3);
  v9 = *a2;
  v8[1] = 0;
  *v8 = v9;
  v8[2] = 0;
  v8[3] = 0;
  v10 = a3[1] - *a3;
  if (v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v10 >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = v8 + 4;
  v12 = *a1;
  v13 = a1[1];
  v14 = (v8 + *a1 - v13);
  if (v13 != *a1)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      *v16 = *v15;
      v16[1] = 0;
      v16[2] = 0;
      v16[3] = 0;
      *(v16 + 1) = *(v15 + 1);
      v16[3] = v15[3];
      v15[1] = 0;
      v15[2] = 0;
      v15[3] = 0;
      v15 += 4;
      v16 += 4;
    }

    while (v15 != v13);
    do
    {
      v17 = v12[1];
      if (v17)
      {
        v12[2] = v17;
        operator delete(v17);
      }

      v12 += 4;
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

void sub_760484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v5;
    operator delete(v5);
  }

  sub_37A3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_760518(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_266C618;
  a2[1] = v2;
  return result;
}

uint64_t sub_760554(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing18RoadDivisionFinder23get_tnps_for_linestringERKNS_6common6VectorINS2_10CoordinateENSt3__19allocatorIS4_EEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing18RoadDivisionFinder23get_tnps_for_linestringERKNS_6common6VectorINS2_10CoordinateENSt3__19allocatorIS4_EEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing18RoadDivisionFinder23get_tnps_for_linestringERKNS_6common6VectorINS2_10CoordinateENSt3__19allocatorIS4_EEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing18RoadDivisionFinder23get_tnps_for_linestringERKNS_6common6VectorINS2_10CoordinateENSt3__19allocatorIS4_EEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_7605CC(char *a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a2 - 24;
  v7 = a1;
  v8 = a2 - a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v9 > 2)
  {
    switch(v9)
    {
      case 3:

        sub_7612F8(a1, a1 + 3, v6, a3);
      case 4:

        sub_7614A8(a1, a1 + 3, (a1 + 48), v6, a3);
      case 5:

        sub_7615DC(a1, a1 + 3, (a1 + 48), (a1 + 72), v6, a3);
    }
  }

  else
  {
    if (v9 < 2)
    {
      return;
    }

    if (v9 == 2)
    {
      sub_760014(a1, *(a3 + 8), v6);
    }
  }

  if (v8 <= 575)
  {
    if (a5)
    {
      if (a1 != a2 && a1 + 24 != a2)
      {
        sub_760014(a1, *(a3 + 8), a1 + 3);
      }
    }

    else if (a1 != a2 && a1 + 24 != a2)
    {
      sub_760014(a1, *(a3 + 8), a1 + 3);
    }
  }

  else
  {
    if (a4)
    {
      if (v8 >= 0xC01)
      {
        sub_7612F8(a1, &a1[24 * (v9 >> 1)], v6, a3);
      }

      sub_7612F8(&a1[24 * (v9 >> 1)], a1, v6, a3);
    }

    if (a1 != a2)
    {
      v10 = (v9 - 2) >> 1;
      do
      {
        v11 = v10;
        if (((v9 - 2) >> 1) >= v10)
        {
          v12 = (2 * v10) | 1;
          if (2 * v10 + 2 < v9)
          {
            sub_760014(a1, *(a3 + 8), &a1[24 * v12]);
          }

          sub_760014(a1, *(a3 + 8), &a1[24 * v12]);
        }

        --v10;
      }

      while (v11);
      v13 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v14 = a2;
      do
      {
        v26 = v14;
        v16 = 0;
        v24 = *(v7 + 1);
        v25 = *v7;
        v23 = *(v7 + 2);
        *(v7 + 1) = 0;
        *(v7 + 2) = 0;
        v17 = v7;
        *v7 = 0;
        do
        {
          v18 = &v17[24 * v16];
          v19 = v18 + 24;
          v20 = 2 * v16;
          v16 = (2 * v16) | 1;
          if (v20 + 2 < v13)
          {
            sub_760014(a1, *(a3 + 8), v18 + 3);
          }

          a1 = *v17;
          if (*v17)
          {
            *(v17 + 1) = a1;
            operator delete(a1);
            *v17 = 0;
            *(v17 + 1) = 0;
            *(v17 + 2) = 0;
          }

          *v17 = *v19;
          *(v17 + 2) = *(v18 + 5);
          *v19 = 0;
          *(v18 + 4) = 0;
          *(v18 + 5) = 0;
          v17 = v18 + 24;
        }

        while (v16 <= ((v13 - 2) >> 1));
        v14 = v26 - 24;
        if (v19 == v26 - 24)
        {
          *v19 = v25;
          *(v18 + 4) = v24;
          *(v18 + 5) = v23;
        }

        else
        {
          v21 = *(v26 - 1);
          *v19 = *(v26 - 24);
          *(v18 + 5) = v21;
          *(v26 - 3) = v25;
          *(v26 - 2) = v24;
          *(v26 - 1) = v23;
          v22 = v19 - v7 + 24;
          if (v22 >= 25)
          {
            sub_760014(a1, *(a3 + 8), &v7[24 * ((-2 - 0x5555555555555555 * (v22 >> 3)) >> 1)]);
          }
        }
      }

      while (v13-- > 2);
    }
  }
}

void sub_761284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_761760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        sub_7612F8(a1, (a1 + 24), a2 - 24, a3);
      case 4:
        sub_7614A8(a1, (a1 + 24), a1 + 48, a2 - 24, a3);
      case 5:
        sub_7615DC(a1, (a1 + 24), a1 + 48, a1 + 72, a2 - 24, a3);
    }

LABEL_11:
    sub_7612F8(a1, (a1 + 24), a1 + 48, a3);
  }

  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      sub_760014(a1, *(a3 + 8), (a2 - 24));
    }

    goto LABEL_11;
  }

  return 1;
}

void sub_761A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_761A1C(uint64_t *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3B1348(a2);
  a1[2] = sub_3AF6B4(*a1);
  v3 = *a1;
  v5 = 0;
  LOBYTE(__p) = 0;
  sub_762A18((a1 + 3), v3, &__p);
}

void sub_761AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_761ABC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_761B38(a1, a2, a3);
  v4 = a3[138];
  for (i = a3[139]; v4 != i; v4 += 2616)
  {
    v6 = *(v4 + 160);
    if (v6 != 17 && v6 != 85)
    {
      *(v4 + 2057) = *sub_6B57E8(a3 + 1479, *(v4 + 16));
    }
  }
}

void sub_761B38(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_4D1DC0(a3);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      do
      {
        v10 = sub_578320(a3 + 138, v7++);
      }

      while (i >= *(v10 + 24));
      v11 = sub_4D1F50(a3, i);
      sub_762084(a1, v11);
      v12 = sub_761F68(a1, v11);
      --v7;
      if ((v12 & 0x100) != 0)
      {
        v16 = a3[1480];
        v17 = a3[1481];
        if (v16 >= v17)
        {
          v18 = a3[1479];
          v19 = (v16 - v18);
          v20 = v16 - v18 + 1;
          if (v20 < 0)
          {
            goto LABEL_83;
          }

          v21 = v17 - v18;
          if (2 * v21 > v20)
          {
            v20 = 2 * v21;
          }

          if (v21 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v22 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            operator new();
          }

          v40 = v16 - v18;
          *v19 = v12;
          v9 = v19 + 1;
LABEL_67:
          memcpy(0, v18, v40);
          a3[1479] = 0;
          a3[1480] = v9;
          a3[1481] = 0;
          if (v18)
          {
            operator delete(v18);
          }

          goto LABEL_4;
        }

        *v16 = v12;
        v9 = v16 + 1;
      }

      else
      {
        if (*(a1 + 80) != 1)
        {
          goto LABEL_37;
        }

        v13 = (*v11 - **v11);
        v14 = *v13;
        if (*(v11 + 38))
        {
          if (v14 < 0x11)
          {
            goto LABEL_37;
          }

          v15 = v13[8];
          if (!v15)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v14 < 0xF)
          {
            goto LABEL_37;
          }

          v15 = v13[7];
          if (!v15)
          {
            goto LABEL_37;
          }
        }

        v23 = *(*v11 + v15);
        if (!*(*v11 + v15))
        {
          v23 = -1.0;
        }

        v25 = v23 >= 0.0 && ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || *&v23 == 0;
        if (!v25 || v23 <= 0.0)
        {
LABEL_37:
          v29 = sub_762230(a1, a2, a3, v7, i);
          v32 = *&v29 > -1 && ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v29 - 1) < 0xFFFFFFFFFFFFFLL || (*&v29 & 0x7FFFFFFFFFFFFFFFLL) == 0;
          v33 = 3;
          if (!v32 || v29 <= 0.0)
          {
            goto LABEL_51;
          }

          if (v29 <= *(a1 + 40))
          {
            if (v29 <= *(a1 + 48))
            {
              v33 = 3;
            }

            else
            {
              v33 = 2;
            }

            v34 = a3[1480];
            v35 = a3[1481];
            if (v34 >= v35)
            {
LABEL_57:
              v18 = a3[1479];
              v36 = (v34 - v18);
              v37 = v34 - v18 + 1;
              if (v37 < 0)
              {
                goto LABEL_83;
              }

              v38 = v35 - v18;
              if (2 * v38 > v37)
              {
                v37 = 2 * v38;
              }

              if (v38 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v39 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v39 = v37;
              }

              if (v39)
              {
                operator new();
              }

              v40 = v34 - v18;
              *v36 = v33;
              v9 = v36 + 1;
              goto LABEL_67;
            }
          }

          else
          {
            v33 = 1;
LABEL_51:
            v34 = a3[1480];
            v35 = a3[1481];
            if (v34 >= v35)
            {
              goto LABEL_57;
            }
          }

          *v34 = v33;
          v9 = v34 + 1;
          goto LABEL_4;
        }

        if (v23 <= *(a1 + 64))
        {
          if (v23 <= *(a1 + 72))
          {
            v26 = 3;
            v27 = a3[1480];
            v28 = a3[1481];
            if (v27 >= v28)
            {
LABEL_71:
              v18 = a3[1479];
              v41 = (v27 - v18);
              v42 = v27 - v18 + 1;
              if (v42 < 0)
              {
LABEL_83:
                sub_1794();
              }

              v43 = v28 - v18;
              if (2 * v43 > v42)
              {
                v42 = 2 * v43;
              }

              if (v43 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v44 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v44 = v42;
              }

              if (v44)
              {
                operator new();
              }

              v40 = v27 - v18;
              *v41 = v26;
              v9 = v41 + 1;
              goto LABEL_67;
            }
          }

          else
          {
            v26 = 2;
            v27 = a3[1480];
            v28 = a3[1481];
            if (v27 >= v28)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          v26 = 1;
          v27 = a3[1480];
          v28 = a3[1481];
          if (v27 >= v28)
          {
            goto LABEL_71;
          }
        }

        *v27 = v26;
        v9 = v27 + 1;
      }

LABEL_4:
      a3[1480] = v9;
    }
  }
}

uint64_t sub_761F68(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (v4 >= 0x2F && v3[23])
  {
    v5 = v2[v3[23]];
    v6 = v5 > 0x1A;
    v7 = (1 << v5) & 0x4810001;
    if (!v6 && v7 != 0)
    {
      return 256;
    }
  }

  if (!*(a2 + 38))
  {
    if (v4 >= 0x9B)
    {
      if (!v3[77])
      {
        goto LABEL_23;
      }

      v10 = *&v2[v3[77]];
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

LABEL_22:
    if (v4 < 0x2F)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v4 < 0x9B)
  {
    goto LABEL_22;
  }

  if (!v3[77])
  {
    goto LABEL_23;
  }

  v10 = *&v2[v3[77]];
  if ((v10 & 0x20) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v3[23])
  {
    v11 = v10 & 4;
    if (v2[v3[23]] == 23 || v11 != 0)
    {
      return 257;
    }

LABEL_23:
    v13 = v3[23];
    if (v13)
    {
      v14 = v2[v13];
      v6 = v14 > 0x2F;
      v15 = (1 << v14) & 0xE2E040048000;
      if (!v6 && v15 != 0)
      {
        return 259;
      }
    }

    return 0;
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_23;
  }

  return 257;
}

void sub_762084(uint64_t *a1, void *a2)
{
  v3 = (*a2 - **a2);
  if (*v3 >= 0xDu && (v4 = v3[6]) != 0)
  {
    v5 = 4 * *(*a2 + v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2AF704(a1[2] + 3896, 1u, 0);
  v7 = &v6[-*v6];
  if (*v7 < 0xBu)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 + 5);
    if (v8)
    {
      v8 += &v6[*&v6[v8]];
    }
  }

  v9 = (v8 + v5 + 4 + *(v8 + v5 + 4));
  v10 = (v9 - *v9);
  if (*v10 >= 5u && (v11 = v10[2]) != 0)
  {
    v12 = (v9 + v11);
    v13 = *v12;
    v14 = *(v12 + v13);
    if (v14 >= 0x17)
    {
      operator new();
    }

    v17 = *(v12 + v13);
    if (v14)
    {
      memcpy(&__dst, v12 + v13 + 4, v14);
    }

    p_dst = (&__dst + v14);
  }

  else
  {
    v17 = 0;
    p_dst = &__dst;
  }

  *p_dst = 0;
  sub_762700((a1 + 3), *a1, &__dst);
  if (v17 < 0)
  {
    operator delete(__dst);
  }
}

void sub_762214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_762230(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unint64_t a5)
{
  v9 = sub_50EA30(a3 + 138, a4);
  v11 = sub_4D23F8(a3, a5, v10);
  v13 = *(a1 + 24);
  if (v11 > v13)
  {
    goto LABEL_2;
  }

  v17 = *(v9 + 1008);
  if (v17 < v13)
  {
    if (v17)
    {
      v18 = *(v9 + 1020);
      if (v18)
      {
        v19 = v17 * 0.1;
        v20 = v18;
        return v19 / v20 * 3.6;
      }
    }

LABEL_2:
    v14 = *(a1 + 8);
    v15 = sub_4D1F50(a3, a5);
    return sub_76240C(v14, *(v15 + 32) & 0xFFFFFFFFFFFFFFLL, 0);
  }

  if (a5 < *(v9 + 40))
  {
    goto LABEL_2;
  }

  v21 = 0;
  v22 = 0;
  v23 = a5;
  while (1)
  {
    v24 = sub_4D23F8(a3, v23, v12);
    v25 = sub_3CF22C(a2);
    v26 = *sub_762504((v25 + 40), v23);
    v27 = v24 + v21;
    v28 = *(a1 + 24);
    if (v24 + v21 > v28)
    {
      break;
    }

    v22 += v26;
    v21 += v24;
    if (v23-- <= *(v9 + 40))
    {
      goto LABEL_20;
    }
  }

  v30 = (v28 - v21) / v24 * v26;
  if (v30 >= 0.0)
  {
    if (v30 >= 4.50359963e15)
    {
      goto LABEL_19;
    }

    v31 = (v30 + v30) + 1;
  }

  else
  {
    if (v30 <= -4.50359963e15)
    {
      goto LABEL_19;
    }

    v31 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
  }

  v30 = (v31 >> 1);
LABEL_19:
  v22 += v30;
  v27 = *(a1 + 24);
LABEL_20:
  if (!v27 || !v22)
  {
    goto LABEL_2;
  }

  v19 = v27 * 0.1;
  v20 = v22;
  return v19 / v20 * 3.6;
}

double sub_76240C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_36383C(a1, a2);
  if (!v6)
  {
    return sub_363970(a1, a2);
  }

  v7 = &v6[-*v6];
  v8 = *v7;
  if (v8 < 9 || !*(v7 + 4))
  {
    v9 = 0xFFFF;
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_7:
    if (*(a1 + 3872))
    {
      if (v8 >= 0xF)
      {
        v10 = *(v7 + 7);
        if (v10)
        {
          v11 = &v6[v10 + *&v6[v10]];
          if (*v11 >= *(a1 + 3872))
          {
            v12 = *&v11[2 * *(a1 + 3872) + 2];
            if ((v12 + 1) > 1u)
            {
              v14 = v12;
              return v14 / 100.0;
            }
          }
        }
      }
    }

    goto LABEL_12;
  }

  v9 = *&v6[*(v7 + 4)];
  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  result = -1.0;
  if ((v9 - 1) <= 0xFFFDu)
  {
    v14 = v9;
    return v14 / 100.0;
  }

  return result;
}

uint64_t sub_762504(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 2);
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

  return *a1 + 4 * a2;
}

void sub_762620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_762700(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = a1 + 64;
  v5 = *(a3 + 23);
  v6 = a3[1];
  if (v5 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  v8 = *(a1 + 87);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 72);
  }

  if (v7 != v8 || (v5 >= 0 ? (v10 = a3) : (v10 = *a3), v9 >= 0 ? (v11 = v4) : (v11 = *v4), result = memcmp(v10, v11, v7), result))
  {
    if (v4 != a3)
    {
      if (v9 < 0)
      {
        if (v5 >= 0)
        {
          v14 = a3;
        }

        else
        {
          v14 = *a3;
        }

        sub_13B38(v4, v14, v7);
      }

      else if (v5 < 0)
      {
        sub_13A68(v4, *a3, v6);
      }

      else
      {
        v13 = *a3;
        *(v4 + 16) = a3[2];
        *v4 = v13;
      }
    }

    operator new();
  }

  return result;
}

void sub_7629A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_762A18(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(a1 + 41) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 64), *a3, *(a3 + 1));
  }

  else
  {
    v3 = *a3;
    *(a1 + 80) = *(a3 + 2);
    *(a1 + 64) = v3;
  }

  operator new();
}

void sub_762C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((*(v19 + 87) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v19 + 87) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v19 + 64));
  _Unwind_Resume(exception_object);
}

void sub_76300C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_763044(uint64_t *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3B1348(a2);
  a1[2] = sub_3AF6B4(*a1);
  v3 = *a1;
  v5 = 0;
  LOBYTE(__p) = 0;
  sub_763B6C((a1 + 3), v3, &__p);
}

void sub_7630C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7630E4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_763160(a1, a2, a3);
  v4 = a3[138];
  for (i = a3[139]; v4 != i; v4 += 2616)
  {
    v6 = *(v4 + 160);
    if (v6 != 17 && v6 != 85)
    {
      *(v4 + 2057) = *sub_6B57E8(a3 + 1479, *(v4 + 16));
    }
  }
}

void sub_763160(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_4D1DC0(a3);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      do
      {
        v10 = sub_578320(a3 + 138, v7++);
      }

      while (i >= *(v10 + 24));
      v11 = sub_4D1F50(a3, i);
      sub_7636A8(a1, v11);
      v12 = sub_761F68(a1, v11);
      --v7;
      if ((v12 & 0x100) != 0)
      {
        v16 = a3[1480];
        v17 = a3[1481];
        if (v16 >= v17)
        {
          v18 = a3[1479];
          v19 = (v16 - v18);
          v20 = v16 - v18 + 1;
          if (v20 < 0)
          {
            goto LABEL_83;
          }

          v21 = v17 - v18;
          if (2 * v21 > v20)
          {
            v20 = 2 * v21;
          }

          if (v21 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v22 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            operator new();
          }

          v40 = v16 - v18;
          *v19 = v12;
          v9 = v19 + 1;
LABEL_67:
          memcpy(0, v18, v40);
          a3[1479] = 0;
          a3[1480] = v9;
          a3[1481] = 0;
          if (v18)
          {
            operator delete(v18);
          }

          goto LABEL_4;
        }

        *v16 = v12;
        v9 = v16 + 1;
      }

      else
      {
        if (*(a1 + 80) != 1)
        {
          goto LABEL_37;
        }

        v13 = (*v11 - **v11);
        v14 = *v13;
        if (*(v11 + 38))
        {
          if (v14 < 0x11)
          {
            goto LABEL_37;
          }

          v15 = v13[8];
          if (!v15)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v14 < 0xF)
          {
            goto LABEL_37;
          }

          v15 = v13[7];
          if (!v15)
          {
            goto LABEL_37;
          }
        }

        v23 = *(*v11 + v15);
        if (!*(*v11 + v15))
        {
          v23 = -1.0;
        }

        v25 = v23 >= 0.0 && ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || *&v23 == 0;
        if (!v25 || v23 <= 0.0)
        {
LABEL_37:
          v29 = sub_762230(a1, a2, a3, v7, i);
          v32 = *&v29 > -1 && ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v29 - 1) < 0xFFFFFFFFFFFFFLL || (*&v29 & 0x7FFFFFFFFFFFFFFFLL) == 0;
          v33 = 3;
          if (!v32 || v29 <= 0.0)
          {
            goto LABEL_51;
          }

          if (v29 <= *(a1 + 40))
          {
            if (v29 <= *(a1 + 48))
            {
              v33 = 3;
            }

            else
            {
              v33 = 2;
            }

            v34 = a3[1480];
            v35 = a3[1481];
            if (v34 >= v35)
            {
LABEL_57:
              v18 = a3[1479];
              v36 = (v34 - v18);
              v37 = v34 - v18 + 1;
              if (v37 < 0)
              {
                goto LABEL_83;
              }

              v38 = v35 - v18;
              if (2 * v38 > v37)
              {
                v37 = 2 * v38;
              }

              if (v38 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v39 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v39 = v37;
              }

              if (v39)
              {
                operator new();
              }

              v40 = v34 - v18;
              *v36 = v33;
              v9 = v36 + 1;
              goto LABEL_67;
            }
          }

          else
          {
            v33 = 1;
LABEL_51:
            v34 = a3[1480];
            v35 = a3[1481];
            if (v34 >= v35)
            {
              goto LABEL_57;
            }
          }

          *v34 = v33;
          v9 = v34 + 1;
          goto LABEL_4;
        }

        if (v23 <= *(a1 + 64))
        {
          if (v23 <= *(a1 + 72))
          {
            v26 = 3;
            v27 = a3[1480];
            v28 = a3[1481];
            if (v27 >= v28)
            {
LABEL_71:
              v18 = a3[1479];
              v41 = (v27 - v18);
              v42 = v27 - v18 + 1;
              if (v42 < 0)
              {
LABEL_83:
                sub_1794();
              }

              v43 = v28 - v18;
              if (2 * v43 > v42)
              {
                v42 = 2 * v43;
              }

              if (v43 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v44 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v44 = v42;
              }

              if (v44)
              {
                operator new();
              }

              v40 = v27 - v18;
              *v41 = v26;
              v9 = v41 + 1;
              goto LABEL_67;
            }
          }

          else
          {
            v26 = 2;
            v27 = a3[1480];
            v28 = a3[1481];
            if (v27 >= v28)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          v26 = 1;
          v27 = a3[1480];
          v28 = a3[1481];
          if (v27 >= v28)
          {
            goto LABEL_71;
          }
        }

        *v27 = v26;
        v9 = v27 + 1;
      }

LABEL_4:
      a3[1480] = v9;
    }
  }
}

uint64_t sub_763590(uint64_t a1, int **a2)
{
  LOWORD(result) = sub_761F68(a1, a2);
  if ((result & 0x100) != 0)
  {
    return result;
  }

  if (*(a1 + 80) != 1)
  {
    return 3;
  }

  v5 = (*a2 - **a2);
  v6 = *v5;
  if (!*(a2 + 38))
  {
    if (v6 >= 0xF)
    {
      v7 = v5[7];
      if (v7)
      {
        goto LABEL_9;
      }
    }

    return 3;
  }

  if (v6 < 0x11)
  {
    return 3;
  }

  v7 = v5[8];
  if (!v7)
  {
    LOBYTE(result) = 3;
    return result;
  }

LABEL_9:
  v8 = *(*a2 + v7);
  if (!*(*a2 + v7))
  {
    v8 = -1.0;
  }

  v10 = v8 >= 0.0 && ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || *&v8 == 0;
  LOBYTE(result) = 3;
  if (v10 && v8 > 0.0)
  {
    if (v8 > *(a1 + 64))
    {
      return 1;
    }

    if (v8 > *(a1 + 72))
    {
      return 2;
    }
  }

  return result;
}

void sub_7636A8(uint64_t *a1, void *a2)
{
  v3 = (*a2 - **a2);
  if (*v3 >= 0xDu && (v4 = v3[6]) != 0)
  {
    v5 = 4 * *(*a2 + v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2AF704(a1[2] + 3896, 1u, 0);
  v7 = &v6[-*v6];
  if (*v7 < 0xBu)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 + 5);
    if (v8)
    {
      v8 += &v6[*&v6[v8]];
    }
  }

  v9 = (v8 + v5 + 4 + *(v8 + v5 + 4));
  v10 = (v9 - *v9);
  if (*v10 >= 5u && (v11 = v10[2]) != 0)
  {
    v12 = (v9 + v11);
    v13 = *v12;
    v14 = *(v12 + v13);
    if (v14 >= 0x17)
    {
      operator new();
    }

    v17 = *(v12 + v13);
    if (v14)
    {
      memcpy(&__dst, v12 + v13 + 4, v14);
    }

    p_dst = (&__dst + v14);
  }

  else
  {
    v17 = 0;
    p_dst = &__dst;
  }

  *p_dst = 0;
  sub_763854((a1 + 3), *a1, &__dst);
  if (v17 < 0)
  {
    operator delete(__dst);
  }
}

void sub_763838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_763854(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = a1 + 64;
  v5 = *(a3 + 23);
  v6 = a3[1];
  if (v5 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  v8 = *(a1 + 87);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 72);
  }

  if (v7 != v8 || (v5 >= 0 ? (v10 = a3) : (v10 = *a3), v9 >= 0 ? (v11 = v4) : (v11 = *v4), result = memcmp(v10, v11, v7), result))
  {
    if (v4 != a3)
    {
      if (v9 < 0)
      {
        if (v5 >= 0)
        {
          v14 = a3;
        }

        else
        {
          v14 = *a3;
        }

        sub_13B38(v4, v14, v7);
      }

      else if (v5 < 0)
      {
        sub_13A68(v4, *a3, v6);
      }

      else
      {
        v13 = *a3;
        *(v4 + 16) = a3[2];
        *v4 = v13;
      }
    }

    operator new();
  }

  return result;
}

void sub_763AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_763B6C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(a1 + 41) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 64), *a3, *(a3 + 1));
  }

  else
  {
    v3 = *a3;
    *(a1 + 80) = *(a3 + 2);
    *(a1 + 64) = v3;
  }

  operator new();
}

void sub_763DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((*(v19 + 87) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v19 + 87) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v19 + 64));
  _Unwind_Resume(exception_object);
}

void sub_764160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_764198(uint64_t *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3B1348(a2);
  a1[2] = sub_3AF6B4(*a1);
  v3 = *a1;
  v5 = 0;
  LOBYTE(__p) = 0;
  sub_764D38((a1 + 3), v3, &__p);
}

void sub_76421C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_764238(uint64_t a1, uint64_t a2, void *a3)
{
  sub_7642B4(a1, a2, a3);
  v4 = a3[138];
  for (i = a3[139]; v4 != i; v4 += 2616)
  {
    v6 = *(v4 + 160);
    if (v6 != 17 && v6 != 85)
    {
      *(v4 + 2057) = *sub_6B57E8(a3 + 1479, *(v4 + 16));
    }
  }
}

void sub_7642B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_4D1DC0(a3);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      do
      {
        v10 = sub_578320(a3 + 138, v7++);
      }

      while (v8 >= *(v10 + 24));
      v11 = sub_4D1F50(a3, v8);
      sub_764684(a1, v11);
      v12 = sub_764568(a1, v11);
      --v7;
      if ((v12 & 0x100) == 0)
      {
        break;
      }

      v20 = a3[1480];
      v21 = a3[1481];
      if (v20 >= v21)
      {
        v22 = a3[1479];
        v23 = (v20 - v22);
        v24 = v20 - v22 + 1;
        if (v24 < 0)
        {
          goto LABEL_49;
        }

        v25 = v21 - v22;
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v26 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          operator new();
        }

        v30 = v20 - v22;
        *v23 = v12;
        v9 = (v23 + 1);
LABEL_46:
        memcpy(0, v22, v30);
        a3[1479] = 0;
        a3[1480] = v9;
        a3[1481] = 0;
        if (v22)
        {
          operator delete(v22);
        }

        goto LABEL_4;
      }

      *v20 = v12;
      v9 = (v20 + 1);
LABEL_4:
      a3[1480] = v9;
      if (++v8 == v6)
      {
        return;
      }
    }

    v13 = sub_764830(a1, a2, a3, v7, v8);
    v16 = *&v13 > -1 && ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v13 - 1) < 0xFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFLL) == 0;
    v17 = 3;
    if (v16 && v13 > 0.0)
    {
      if (v13 <= *(a1 + 40))
      {
        if (v13 <= *(a1 + 48))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v18 = a3[1480];
        v19 = a3[1481];
        if (v18 >= v19)
        {
LABEL_36:
          v22 = a3[1479];
          v27 = v18 - v22 + 1;
          if (v27 < 0)
          {
LABEL_49:
            sub_1794();
          }

          v28 = v19 - v22;
          if (2 * v28 > v27)
          {
            v27 = 2 * v28;
          }

          if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v29 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            operator new();
          }

          v30 = v18 - v22;
          *(v18 - v22) = v17;
          v9 = v18 - v22 + 1;
          goto LABEL_46;
        }

        goto LABEL_22;
      }

      v17 = 1;
    }

    v18 = a3[1480];
    v19 = a3[1481];
    if (v18 >= v19)
    {
      goto LABEL_36;
    }

LABEL_22:
    *v18 = v17;
    v9 = (v18 + 1);
    goto LABEL_4;
  }
}

uint64_t sub_764568(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (v4 >= 0x2F && v3[23])
  {
    v5 = v2[v3[23]];
    v6 = v5 > 0x1A;
    v7 = (1 << v5) & 0x4810001;
    if (!v6 && v7 != 0)
    {
      return 256;
    }
  }

  if ((*(a2 + 39) & 0x20) != 0)
  {
    if (v4 >= 0x9B)
    {
      if (!v3[77])
      {
        goto LABEL_23;
      }

      v10 = *&v2[v3[77]];
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

LABEL_22:
    if (v4 < 0x2F)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v4 < 0x9B)
  {
    goto LABEL_22;
  }

  if (!v3[77])
  {
    goto LABEL_23;
  }

  v10 = *&v2[v3[77]];
  if ((v10 & 0x20) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v3[23])
  {
    v11 = v10 & 4;
    if (v2[v3[23]] == 23 || v11 != 0)
    {
      return 257;
    }

LABEL_23:
    v13 = v3[23];
    if (v13)
    {
      v14 = v2[v13];
      v6 = v14 > 0x2F;
      v15 = (1 << v14) & 0xE2E040048000;
      if (!v6 && v15 != 0)
      {
        return 259;
      }
    }

    return 0;
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_23;
  }

  return 257;
}

void sub_764684(uint64_t *a1, void *a2)
{
  v3 = (*a2 - **a2);
  if (*v3 >= 0xDu && (v4 = v3[6]) != 0)
  {
    v5 = 4 * *(*a2 + v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2AF704(a1[2] + 3896, 1u, 0);
  v7 = &v6[-*v6];
  if (*v7 < 0xBu)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 + 5);
    if (v8)
    {
      v8 += &v6[*&v6[v8]];
    }
  }

  v9 = (v8 + v5 + 4 + *(v8 + v5 + 4));
  v10 = (v9 - *v9);
  if (*v10 >= 5u && (v11 = v10[2]) != 0)
  {
    v12 = (v9 + v11);
    v13 = *v12;
    v14 = *(v12 + v13);
    if (v14 >= 0x17)
    {
      operator new();
    }

    v17 = *(v12 + v13);
    if (v14)
    {
      memcpy(&__dst, v12 + v13 + 4, v14);
    }

    p_dst = (&__dst + v14);
  }

  else
  {
    v17 = 0;
    p_dst = &__dst;
  }

  *p_dst = 0;
  sub_764A20((a1 + 3), *a1, &__dst);
  if (v17 < 0)
  {
    operator delete(__dst);
  }
}

void sub_764814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_764830(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unint64_t a5)
{
  v9 = sub_50EA30(a3 + 138, a4);
  v11 = sub_4D23F8(a3, a5, v10);
  v13 = *(a1 + 24);
  if (v11 > v13)
  {
    goto LABEL_2;
  }

  v17 = *(v9 + 1008);
  if (v17 < v13)
  {
    if (v17)
    {
      v18 = *(v9 + 1020);
      if (v18)
      {
        v19 = v17 * 0.1;
        v20 = v18;
        return v19 / v20 * 3.6;
      }
    }

LABEL_2:
    v14 = *(a1 + 8);
    v15 = sub_4D1F50(a3, a5);
    return sub_76240C(v14, (((*(v15 + 36) & 0x20000000) << 19) | (*(v15 + 36) << 32) | *(v15 + 32)) ^ 0x1000000000000, 0);
  }

  if (a5 < *(v9 + 40))
  {
    goto LABEL_2;
  }

  v21 = 0;
  v22 = 0;
  v23 = a5;
  while (1)
  {
    v24 = sub_4D23F8(a3, v23, v12);
    v25 = sub_3CF22C(a2);
    v26 = *sub_762504((v25 + 40), v23);
    v27 = v24 + v21;
    v28 = *(a1 + 24);
    if (v24 + v21 > v28)
    {
      break;
    }

    v22 += v26;
    v21 += v24;
    if (v23-- <= *(v9 + 40))
    {
      goto LABEL_20;
    }
  }

  v30 = (v28 - v21) / v24 * v26;
  if (v30 >= 0.0)
  {
    if (v30 >= 4.50359963e15)
    {
      goto LABEL_19;
    }

    v31 = (v30 + v30) + 1;
  }

  else
  {
    if (v30 <= -4.50359963e15)
    {
      goto LABEL_19;
    }

    v31 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
  }

  v30 = (v31 >> 1);
LABEL_19:
  v22 += v30;
  v27 = *(a1 + 24);
LABEL_20:
  if (!v27 || !v22)
  {
    goto LABEL_2;
  }

  v19 = v27 * 0.1;
  v20 = v22;
  return v19 / v20 * 3.6;
}

uint64_t sub_764A20(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = a1 + 64;
  v5 = *(a3 + 23);
  v6 = a3[1];
  if (v5 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  v8 = *(a1 + 87);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 72);
  }

  if (v7 != v8 || (v5 >= 0 ? (v10 = a3) : (v10 = *a3), v9 >= 0 ? (v11 = v4) : (v11 = *v4), result = memcmp(v10, v11, v7), result))
  {
    if (v4 != a3)
    {
      if (v9 < 0)
      {
        if (v5 >= 0)
        {
          v14 = a3;
        }

        else
        {
          v14 = *a3;
        }

        sub_13B38(v4, v14, v7);
      }

      else if (v5 < 0)
      {
        sub_13A68(v4, *a3, v6);
      }

      else
      {
        v13 = *a3;
        *(v4 + 16) = a3[2];
        *v4 = v13;
      }
    }

    operator new();
  }

  return result;
}

void sub_764CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_764D38(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(a1 + 41) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (*(a3 + 23) < 0)
  {
    sub_325C((a1 + 64), *a3, *(a3 + 1));
  }

  else
  {
    v3 = *a3;
    *(a1 + 80) = *(a3 + 2);
    *(a1 + 64) = v3;
  }

  operator new();
}

void sub_764F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((*(v19 + 87) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v19 + 87) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v19 + 64));
  _Unwind_Resume(exception_object);
}

void sub_76532C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_765364()
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
  xmmword_27A6460 = 0u;
  *algn_27A6470 = 0u;
  dword_27A6480 = 1065353216;
  sub_3A9A34(&xmmword_27A6460, v0);
  sub_3A9A34(&xmmword_27A6460, v3);
  sub_3A9A34(&xmmword_27A6460, __p);
  sub_3A9A34(&xmmword_27A6460, v9);
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
    qword_27A6438 = 0;
    qword_27A6440 = 0;
    qword_27A6430 = 0;
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

void sub_7655AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A6448)
  {
    qword_27A6450 = qword_27A6448;
    operator delete(qword_27A6448);
  }

  _Unwind_Resume(exception_object);
}

double sub_765658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = -1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = -1;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  result = NAN;
  *(a2 + 120) = xmmword_229B660;
  *(a2 + 136) = -1;
  *(a2 + 144) = -1;
  *(a2 + 152) = -29536;
  return result;
}

BOOL sub_7656EC(void *a1)
{
  result = sub_765858(a1);
  if (result)
  {
    if (*(sub_7669FC(a1 + 4, a1[7]) + 88) <= *(*a1 + 40))
    {
      return 0;
    }

    v3 = a1[11];
    if (!v3)
    {
      return 0;
    }

    v4 = a1[8];
    v5 = a1[9] - 104 * (0x4EC4EC4EC4EC4EC5 * ((a1[9] - v4) >> 3) - v3);
    if (v5 == v4)
    {
      return 0;
    }

    while (1)
    {
      v6 = !*(v5 - 32) || *(v5 - 64) == 0;
      v7 = v6 || *(v5 - 56) == 0;
      if (!v7 && *(v5 - 16) != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v5 -= 104;
      if (v5 == v4)
      {
        return 0;
      }
    }

    if (v5 == v4)
    {
      return 0;
    }

    v8 = *(sub_7669FC(a1 + 4, a1[7]) + 88) - *(v5 - 16);
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v9 = v8 / 100;
    v10 = v8 % 100;
    if (v8 < 0)
    {
      v11 = -50;
    }

    else
    {
      v11 = 50;
    }

    return v9 + (((5243 * (v11 + v10)) >> 19) + ((5243 * (v11 + v10)) >> 31)) >= *(*a1 + 166);
  }

  return result;
}

BOOL sub_765858(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == -1)
  {
    return 0;
  }

  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (v2 == v3)
  {
    return 0;
  }

  if (v1 >= 0x4EC4EC4EC4EC4EC5 * ((v3 - v2) >> 3))
  {
    return 0;
  }

  v5 = sub_7669FC((a1 + 64), v1);
  if (*(v5 + 72))
  {
    v6 = *(v5 + 40) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || *(v5 + 48) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  if (v9 == -1)
  {
    return 0;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (v10 == v11 || v9 >= 0x4EC4EC4EC4EC4EC5 * ((v11 - v10) >> 3))
  {
    return 0;
  }

  v12 = sub_7669FC((a1 + 32), v9);
  result = 0;
  if (*(v12 + 72))
  {
    if (*(v12 + 40))
    {
      if (*(v12 + 48))
      {
        result = 0;
        v13 = *(a1 + 128);
        if (v13)
        {
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            return *(a1 + 152) >> 5 < 0x465u;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_765990(void *a1)
{
  v1 = a1 + 4;
  v2 = a1[7];
  if (v2 == 0x4EC4EC4EC4EC4EC5 * ((a1[5] - a1[4]) >> 3) - 1)
  {
    return 26;
  }

  if (!v2)
  {
    return 41;
  }

  v4 = 0;
  for (i = 0; i != v2; ++i)
  {
    v6 = sub_7669FC(v1, i);
    if (*(v6 + 72))
    {
      v7 = *(v6 + 40) == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7 && *(v6 + 48) != 0)
    {
      ++v4;
    }
  }

  return (v4 + 41);
}

BOOL sub_765A80(void *a1)
{
  result = sub_765858(a1);
  if (result)
  {
    v3 = *(sub_7669FC(a1 + 4, a1[7]) + 88);
    v4 = (a1[11] + 1) * *(*a1 + 64);
    if (v4 >= 0.0)
    {
      if (v4 >= 4.50359963e15)
      {
        goto LABEL_8;
      }

      v5 = (v4 + v4) + 1;
    }

    else
    {
      if (v4 <= -4.50359963e15)
      {
        goto LABEL_8;
      }

      v5 = (v4 + v4) - 1 + (((v4 + v4) - 1) >> 63);
    }

    v4 = (v5 >> 1);
LABEL_8:
    if (v3 > v4)
    {
      return 0;
    }

    v6 = a1[7];
    if (v6 && a1[16] > *(*a1 + 8))
    {
      return 0;
    }

    v7 = 0x4EC4EC4EC4EC4EC5 * ((a1[5] - a1[4]) >> 3);
    if (v6)
    {
      if (v7 > 4)
      {
        return 0;
      }
    }

    v8 = v7 - 1;
    if (v6 == v7 - 1)
    {
      return 0;
    }

    if (!v6)
    {
      v13 = 1;
      goto LABEL_37;
    }

    v9 = sub_7669FC(a1 + 4, v6 - 1);
    if (!*(v9 + 72) || ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*(v9 + 40)), vceqzq_s64(*v9)), xmmword_22671F0)) & 0xF) == 0 ? (v10 = *(v9 + 32) == 0) : (v10 = 1), v10))
    {
      v14 = *(v9 + 80);
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = *(v9 + 88);
      }

      goto LABEL_34;
    }

    v11 = vcvtd_n_f64_s64(*(v9 + 88) + *(v9 + 80), 1uLL);
    if (v11 >= 0.0)
    {
      if (v11 < 4.50359963e15)
      {
        v12 = (v11 + v11) + 1;
        goto LABEL_32;
      }
    }

    else if (v11 > -4.50359963e15)
    {
      v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
LABEL_32:
      v11 = (v12 >> 1);
    }

    v14 = v11;
LABEL_34:
    v15 = fabs((v3 - v14));
    if (v15)
    {
      v13 = v3 / v15 <= *(*a1 + 72);
    }

    else
    {
      v13 = 0;
    }

LABEL_37:
    if (v6 >= v8)
    {
      LODWORD(v20) = 1;
      return v13 & v20;
    }

    v16 = sub_7669FC(a1 + 4, v6 + 1);
    if (!*(v16 + 72) || ((vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*(v16 + 40)), vceqzq_s64(*v16)), xmmword_22671F0)) & 0xF) == 0 ? (v17 = *(v16 + 32) == 0) : (v17 = 1), v17))
    {
      v21 = *(v16 + 80);
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = *(v16 + 88);
      }

      goto LABEL_54;
    }

    v18 = vcvtd_n_f64_s64(*(v16 + 88) + *(v16 + 80), 1uLL);
    if (v18 >= 0.0)
    {
      if (v18 < 4.50359963e15)
      {
        v19 = (v18 + v18) + 1;
        goto LABEL_52;
      }
    }

    else if (v18 > -4.50359963e15)
    {
      v19 = (v18 + v18) - 1 + (((v18 + v18) - 1) >> 63);
LABEL_52:
      v18 = (v19 >> 1);
    }

    v21 = v18;
LABEL_54:
    v20 = fabs((v3 - v21));
    if (v20)
    {
      LODWORD(v20) = v3 / v20 <= *(*a1 + 72);
    }

    return v13 & v20;
  }

  return result;
}

uint64_t sub_765DE4(uint64_t a1)
{
  if (!sub_765A80(a1))
  {
    return 98;
  }

  v2 = sub_7669FC((a1 + 32), *(a1 + 56));
  v3 = sub_765EDC(v2) - *(a1 + 152);
  if (v3 > 18000)
  {
    v3 -= 36000;
  }

  if (v3 < -17999)
  {
    v3 += 36000;
  }

  v4 = v3 / 100.0;
  v5 = sub_76607C(a1, v4);
  if (v5 != 3)
  {
    v7 = v5;
    if (sub_766724(a1, v4))
    {
      return v7;
    }

    else
    {
      return 98;
    }
  }

  if (!sub_766268(a1))
  {
    return 98;
  }

  return sub_7665DC(a1);
}

uint64_t sub_765EDC(uint64_t a1)
{
  if (!*(a1 + 72) || !*(a1 + 40) || (v1 = *(a1 + 48)) == 0 || !*(a1 + 32) || !*a1 || (v2 = *(a1 + 8)) == 0)
  {
    if (*(a1 + 32) && *a1)
    {
      v6 = 40;
      if (*(a1 + 8))
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 40;
    }

    v7 = a1 + v6;
    v8 = *(v7 + 38);
    v9 = *(v7 + 8);
    v10 = (v9 - *v9);
    v11 = *v10;
    if (v8)
    {
      if (v11 < 9)
      {
        return 0;
      }

      v12 = v10[4];
      if (!v12)
      {
        return 0;
      }
    }

    else
    {
      if (v11 < 5)
      {
        return 0;
      }

      v12 = v10[2];
      if (!v12)
      {
        return 0;
      }
    }

    return *(v9 + v12);
  }

  v3 = (v1 - *v1);
  v4 = *v3;
  if (!*(a1 + 78))
  {
    if (v4 < 5)
    {
      goto LABEL_28;
    }

    v5 = v3[2];
    if (!v5)
    {
      goto LABEL_28;
    }

LABEL_27:
    v14 = *(v1 + v5);
    goto LABEL_29;
  }

  if (v4 >= 9)
  {
    v5 = v3[4];
    if (v5)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v14 = 0;
LABEL_29:
  v15 = (v2 - *v2);
  v16 = *v15;
  if (*(a1 + 38))
  {
    if (v16 < 9 || (v17 = v15[4]) == 0)
    {
LABEL_36:
      v18 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if (v16 < 5)
    {
      goto LABEL_36;
    }

    v17 = v15[2];
    if (!v17)
    {
      goto LABEL_36;
    }
  }

  v18 = *(v2 + v17);
LABEL_37:
  v19 = v18 - v14;
  if (v19 > 18000)
  {
    v19 -= 36000;
  }

  if (v19 < -17999)
  {
    v19 += 36000;
  }

  v20 = llround(v19 / 100.0 * 0.5 * 100.0);
  v21 = __OFADD__(v14, v20);
  v22 = v14 + v20;
  if (v22 < 0 != v21)
  {
    v22 += 36000;
  }

  return v22 % 0x8CA0u;
}

uint64_t sub_76607C(uint64_t *a1, double a2)
{
  v2 = *a1;
  if ((0x4EC4EC4EC4EC4EC5 * ((a1[5] - a1[4]) >> 3)) <= 3 && !a1[7] && ((v4 = a2, v5 = sub_7669FC(a1 + 4, 0), a2 = v4, v6 = vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*(v5 + 40)), vceqzq_s64(*v5)), xmmword_22671F0)) & 0xF, *(v5 + 72)) ? (v7 = v6 == 0) : (v7 = 0), v7 ? (v8 = *(v5 + 32) == 0) : (v8 = 1), !v8 && (v9 = a1[5], *(v9 - 32)) && *(v9 - 64) && *(v9 - 56) && *(v9 - 72) && *(v9 - 104) && *(v9 - 96) && a1[16] <= *(v2 + 8)))
  {
    v10 = 128;
    v11 = *(v2 + 144);
    if (v11 < v4)
    {
      return 61;
    }
  }

  else
  {
    v10 = 136;
    v11 = *(v2 + 144);
    if (v11 < a2)
    {
      return 61;
    }
  }

  v13 = *(v2 + v10);
  if (v13 < a2)
  {
    return 2;
  }

  v14 = *(v2 + 120);
  if (v14 < a2)
  {
    return 63;
  }

  if (-v11 > a2)
  {
    return 60;
  }

  if (-v13 > a2)
  {
    return 1;
  }

  if (-v14 <= a2)
  {
    return 3;
  }

  return 62;
}

uint64_t sub_766268(void *a1)
{
  v1 = a1[5];
  v2 = a1 + 4;
  v3 = v1 - a1[4];
  if ((0x4EC4EC4EC4EC4EC5 * (v3 >> 3)) > 4)
  {
    return 0;
  }

  v4 = a1[7];
  if (v3 == 416 && v4 != 1)
  {
    return 0;
  }

  if (*(v1 - 32) && *(v1 - 64) && *(v1 - 56) && *(v1 - 72) && *(v1 - 104) && *(v1 - 96))
  {
    v7 = vcvtd_n_f64_s64(*(v1 - 16) + *(v1 - 24), 1uLL);
    if (v7 >= 0.0)
    {
      if (v7 < 4.50359963e15)
      {
        v8 = (v7 + v7) + 1;
        goto LABEL_55;
      }
    }

    else if (v7 > -4.50359963e15)
    {
      v8 = (v7 + v7) - 1 + (((v7 + v7) - 1) >> 63);
LABEL_55:
      v7 = (v8 >> 1);
    }

    v10 = v7;
    goto LABEL_19;
  }

  v9 = -24;
  if (*(v1 - 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = -16;
  }

  v10 = *(v1 + v9);
LABEL_19:
  v11 = sub_7669FC(a1 + 4, a1[7]);
  v12 = vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*(v11 + 40)), vceqzq_s64(*v11)), xmmword_22671F0)) & 0xF;
  if (*(v11 + 72))
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13 && *(v11 + 32) != 0)
  {
    v16 = vcvtd_n_f64_s64(*(v11 + 88) + *(v11 + 80), 1uLL);
    if (v16 >= 0.0)
    {
      if (v16 < 4.50359963e15)
      {
        v17 = (v16 + v16) + 1;
        goto LABEL_35;
      }
    }

    else if (v16 > -4.50359963e15)
    {
      v17 = (v16 + v16) - 1 + (((v16 + v16) - 1) >> 63);
LABEL_35:
      v16 = (v17 >> 1);
    }

    v15 = v16;
    goto LABEL_37;
  }

  v15 = *(v11 + 80);
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = *(v11 + 88);
  }

LABEL_37:
  if (fabs((v10 - v15) / a1[16] + -0.5) > *(*a1 + 104))
  {
    return 0;
  }

  v19 = (a1[5] - a1[4]) >> 3;
  v20 = 0x4EC4EC4EC4EC4EC5 * v19 - 1;
  if (v4)
  {
    v21 = sub_7669FC(v2, v4 - 1);
    v22 = (1.0 - sub_766884(a1, v21)) * *(*a1 + 96);
    v23 = sub_765EDC(v21) - *(a1 + 76);
    if (v23 > 18000)
    {
      v23 -= 36000;
    }

    if (v23 < -17999)
    {
      v23 += 36000;
    }

    v24 = fabs(v23 / 100.0) >= v22;
    if (v4 < v20)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v24 = 1;
    if (0x4EC4EC4EC4EC4EC5 * v19 != 1)
    {
LABEL_45:
      v25 = sub_7669FC(v2, v4 + 1);
      v26 = (1.0 - sub_766884(a1, v25)) * *(*a1 + 96);
      v27 = sub_765EDC(v25) - *(a1 + 76);
      if (v27 > 18000)
      {
        v27 -= 36000;
      }

      if (v27 < -17999)
      {
        v27 += 36000;
      }

      v28 = fabs(v27 / 100.0) >= v26;
      return v24 & v28;
    }
  }

  v28 = 1;
  return v24 & v28;
}

uint64_t sub_7665DC(uint64_t a1)
{
  v2 = sub_7669FC((a1 + 32), *(a1 + 56));
  if (*(v2 + 8))
  {
    v3 = *v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3 || *(v2 + 32) == 0;
  v5 = 40;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = *(v2 + v5);
  v7 = (v6 - *v6);
  if (*v7 >= 0x2Fu && (v8 = v7[23]) != 0 && (v9 = *(v6 + v8), v9 <= 0x2B))
  {
    v10 = 0x80000001040uLL >> v9;
    v11 = *(a1 + 40);
    v12 = (v11 - 104);
    if (!*(v11 - 72))
    {
LABEL_20:
      v14 = v12[5];
      v15 = (v14 - *v14);
      if (*v15 < 0x2Fu)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
    v11 = *(a1 + 40);
    v12 = (v11 - 104);
    if (!*(v11 - 72))
    {
      goto LABEL_20;
    }
  }

  if (!*v12)
  {
    goto LABEL_20;
  }

  v3 = *(v11 - 96) == 0;
  v13 = 5;
  if (!v3)
  {
    v13 = 0;
  }

  v14 = v12[v13];
  v15 = (v14 - *v14);
  if (*v15 < 0x2Fu)
  {
    goto LABEL_24;
  }

LABEL_21:
  v16 = v15[23];
  if (v16)
  {
    v17 = *(v14 + v16);
    if (v17 <= 0x2B)
    {
      v18 = 0x80000001040uLL >> v17;
      goto LABEL_25;
    }
  }

LABEL_24:
  LOBYTE(v18) = 0;
LABEL_25:
  if ((v10 ^ v18) & 1 | (*(a1 + 128) > **a1))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_766724(void *a1, double a2)
{
  v4 = a1[7];
  if (v4)
  {
    if (v4 != 0x4EC4EC4EC4EC4EC5 * ((a1[5] - a1[4]) >> 3) - 2)
    {
      return 0;
    }

    v5 = v4 - 1;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_7669FC(a1 + 4, v5);
  v7 = sub_765EDC(v6) - *(a1 + 76);
  if (v7 > 18000)
  {
    v7 -= 36000;
  }

  if (v7 < -17999)
  {
    v7 += 36000;
  }

  v8 = v7;
  if (v4)
  {
    v9 = *(*a1 + 88);
    v10 = v8 / 100.0;
    if (a2 >= 0.0)
    {
      return v10 < v9 && a2 > 0.0;
    }
  }

  else
  {
    v9 = sub_766884(a1, v6) * *(*a1 + 80);
    v10 = v8 / 100.0;
    if (a2 >= 0.0)
    {
      return v10 < v9 && a2 > 0.0;
    }
  }

  if (v10 > -v9)
  {
    return 1;
  }

  return v10 < v9 && a2 > 0.0;
}

double sub_766884(void *a1, uint64_t a2)
{
  v4 = sub_7669FC(a1 + 4, a1[7]);
  v5 = vaddvq_s32(vandq_s8(vuzp1q_s32(vceqzq_s64(*(a2 + 40)), vceqzq_s64(*a2)), xmmword_22671F0)) & 0xF;
  if (*(a2 + 72))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6 && *(a2 + 32) != 0)
  {
    v9 = vcvtd_n_f64_s64(*(a2 + 88) + *(a2 + 80), 1uLL);
    if (v9 >= 0.0)
    {
      if (v9 < 4.50359963e15)
      {
        v10 = (v9 + v9) + 1;
        goto LABEL_17;
      }
    }

    else if (v9 > -4.50359963e15)
    {
      v10 = (v9 + v9) - 1 + (((v9 + v9) - 1) >> 63);
LABEL_17:
      v9 = (v10 >> 1);
    }

    v8 = v9;
    goto LABEL_19;
  }

  v8 = *(a2 + 80);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = *(a2 + 88);
  }

LABEL_19:
  v11 = a1[16] * 0.5;
  if (v11 >= 0.0)
  {
    if (v11 < 4.50359963e15)
    {
      v12 = (v11 + v11) + 1;
      goto LABEL_24;
    }
  }

  else if (v11 > -4.50359963e15)
  {
    v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
LABEL_24:
    v11 = (v12 >> 1);
  }

  return fabs((*(v4 + 88) - v8)) / v11;
}

uint64_t sub_7669FC(void *a1, unint64_t a2)
{
  if (0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 104 * a2;
}

void sub_766B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_766C24(void *a1)
{
  v1 = a1[5];
  v2 = a1 + 4;
  v3 = *(v1 - 8);
  v4 = (v1 - a1[4]) >> 3;
  v5 = 0x4EC4EC4EC4EC4EC5 * v4 - 1;
  if (0x4EC4EC4EC4EC4EC5 * v4 == 1)
  {
    v8 = *(v1 - 8);
  }

  else
  {
    v7 = 0;
    LOBYTE(v8) = *(v1 - 8);
    do
    {
      v9 = sub_7669FC(v2, v7);
      if (v7 <= a1[7])
      {
        v10 = *(v9 + 96);
      }

      else
      {
        v10 = 0;
      }

      v8 = (v10 | v8 & 1) != 0;
      v3 = v3 & (*(v9 + 96) != 0);
      ++v7;
    }

    while (v5 != v7);
  }

  return v8 & (v3 ^ 1u);
}

uint64_t sub_766CE0(uint64_t result, uint64_t a2)
{
  *(a2 + 8) = *a2;
  *(a2 + 24) = 0;
  v2 = (result + 32);
  v3 = (*(result + 40) - *(result + 32)) >> 3;
  v4 = 0x4EC4EC4EC4EC4EC5 * v3 - 1;
  if (0x4EC4EC4EC4EC4EC5 * v3 != 1)
  {
    v6 = result;
    v7 = 0;
    do
    {
      v8 = sub_7669FC(v2, v7);
      result = sub_766D84(v6, a2, v8, v7++ == *(v6 + 56));
    }

    while (v4 != v7);
  }

  return result;
}

uint64_t sub_766D84(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v20 = a4;
  v4 = *(a3 + 40);
  if (*(a3 + 72))
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || *(a3 + 48) == 0)
  {
    return result;
  }

  v9 = result;
  v10 = (v4 - *v4);
  if (*v10 >= 0x9Bu && (v11 = v10[77]) != 0)
  {
    v12 = *(v4 + v11 + 1) >> 7;
  }

  else
  {
    v12 = 0;
  }

  result = sub_765EDC(a3);
  v13 = result - v9[76];
  if (v13 > 18000)
  {
    v13 -= 36000;
  }

  if (v13 < -17999)
  {
    v13 += 36000;
  }

  v14 = v13 / 100.0;
  v19 = v14;
  v15 = *(a2 + 8);
  if (*a2 == v15)
  {
    goto LABEL_29;
  }

  v16 = *(v15 - 4);
  if (v12)
  {
    if (v16 >= 1 && v14 < 0.0)
    {
      if (a4)
      {
        v17 = *(*v9 + 112);
LABEL_28:
        v18 = v17;
        return sub_6E4B34(a2, &v18, &v20);
      }

      return result;
    }

LABEL_29:
    result = sub_6E4B34(a2, &v19, &v20);
    *(a2 + 24) = 1;
    return result;
  }

  if ((v16 & 0x80000000) == 0 || v14 <= 0.0)
  {
    goto LABEL_29;
  }

  if (a4)
  {
    v17 = -*(*v9 + 112);
    goto LABEL_28;
  }

  return result;
}

void *sub_766F20(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

void sub_766F2C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_765658(a1[3] + 992, a4);
  v8 = sub_4D1F50(a2, a3);
  v9 = (*v8 - **v8);
  if (*v9 < 0x2Fu || (v10 = v9[23]) == 0 || ((v11 = *(*v8 + v10), v12 = v11 > 0x36, v13 = (1 << v11) & 0x44000000000008, !v12) ? (v14 = v13 == 0) : (v14 = 1), v14))
  {
    v15 = sub_76747C(a1, a2, a3);
    if (v15 != -1)
    {
      v16 = sub_7675A8(a1, a2, v15);
      if (v16 != -1)
      {
        v60 = 0u;
        v61 = 0u;
        v62 = 0x1000000000000;
        v63 = 0u;
        v64 = 0u;
        v65 = 0x1000000000000;
        v66 = 0u;
        v67 = 0u;
        v68 = 0x1000000000000;
        v69 = 0u;
        v70 = 0u;
        v71 = 0x1000000000000;
        v72 = 0u;
        v73 = 0u;
        v76 = 0u;
        v75 = 0u;
        v74 = 0x1000000000000;
        v77 = 0x1000000000000;
        v78 = 0;
        v79 = 0x7FFFFFFFFFFFFFFFLL;
        __p = 0;
        v83 = 0;
        v81 = 0;
        v82 = 0;
        v17 = *a1;
        v18 = *(sub_4D1F50(a2, v15 - 1) + 32);
        v19 = sub_2B51D8(v17, v18 & 0xFFFFFFFFFFFFLL);
        if (*(v17 + 7772) == 1)
        {
          v20 = sub_30C50C(v17 + 3896, v18, 0);
          v21 = &v20[-*v20];
          if (*v21 < 5u)
          {
            v22 = 0;
          }

          else
          {
            v22 = *(v21 + 2);
            if (v22)
            {
              v22 += &v20[*&v20[v22]];
            }
          }

          v23 = v22 + ((v18 >> 30) & 0x3FFFC) + 4 + *(v22 + ((v18 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v23 = 0;
        }

        *&v60 = v19;
        *(&v60 + 1) = v23;
        *&v61 = sub_31D7E8(v17, v18 & 0xFFFFFFFFFFFFLL, 1);
        *(&v61 + 1) = v24;
        v62 = v18 & 0xFFFFFFFFFFFFFFLL;
        v25 = *a1;
        v26 = *(sub_4D1F50(a2, v16) + 32);
        v27 = sub_2B51D8(v25, v26 & 0xFFFFFFFFFFFFLL);
        if (*(v25 + 7772) == 1)
        {
          v28 = sub_30C50C(v25 + 3896, v26, 0);
          v29 = &v28[-*v28];
          if (*v29 < 5u)
          {
            v30 = 0;
          }

          else
          {
            v30 = *(v29 + 2);
            if (v30)
            {
              v30 += &v28[*&v28[v30]];
            }
          }

          v31 = v30 + ((v26 >> 30) & 0x3FFFC) + 4 + *(v30 + ((v26 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v31 = 0;
        }

        *&v63 = v27;
        *(&v63 + 1) = v31;
        *&v64 = sub_31D7E8(v25, v26 & 0xFFFFFFFFFFFFLL, 1);
        *(&v64 + 1) = v32;
        v65 = v26 & 0xFFFFFFFFFFFFFFLL;
        v33 = sub_4D1DC0(a2);
        if (v15 == 1)
        {
          v34 = 0;
        }

        else
        {
          v34 = v15 - 2;
        }

        if (v16 >= v33 - 1)
        {
          v35 = v16;
        }

        else
        {
          v35 = v16 + 1;
        }

        v36 = *a1;
        v37 = *(sub_4D1F50(a2, v34) + 32);
        v38 = sub_2B51D8(v36, v37 & 0xFFFFFFFFFFFFLL);
        if (*(v36 + 7772) == 1)
        {
          v39 = sub_30C50C(v36 + 3896, v37, 0);
          v40 = &v39[-*v39];
          if (*v40 < 5u)
          {
            v41 = 0;
          }

          else
          {
            v41 = *(v40 + 2);
            if (v41)
            {
              v41 += &v39[*&v39[v41]];
            }
          }

          v42 = v41 + ((v37 >> 30) & 0x3FFFC) + 4 + *(v41 + ((v37 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v42 = 0;
        }

        *&v66 = v38;
        *(&v66 + 1) = v42;
        *&v67 = sub_31D7E8(v36, v37 & 0xFFFFFFFFFFFFLL, 1);
        *(&v67 + 1) = v43;
        v68 = v37 & 0xFFFFFFFFFFFFFFLL;
        v44 = *a1;
        v45 = *(sub_4D1F50(a2, v35) + 32);
        v46 = sub_2B51D8(v44, v45 & 0xFFFFFFFFFFFFLL);
        if (*(v44 + 7772) == 1)
        {
          v47 = sub_30C50C(v44 + 3896, v45, 0);
          v48 = &v47[-*v47];
          if (*v48 < 5u)
          {
            v49 = 0;
          }

          else
          {
            v49 = *(v48 + 2);
            if (v49)
            {
              v49 += &v47[*&v47[v49]];
            }
          }

          v50 = v49 + ((v45 >> 30) & 0x3FFFC) + 4 + *(v49 + ((v45 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v50 = 0;
        }

        *&v69 = v46;
        *(&v69 + 1) = v50;
        *&v70 = sub_31D7E8(v44, v45 & 0xFFFFFFFFFFFFLL, 1);
        *(&v70 + 1) = v51;
        v71 = v45 & 0xFFFFFFFFFFFFFFLL;
        v52 = *a1;
        v53 = *(sub_4D1F50(a2, v15) + 32);
        v54 = sub_2B51D8(v52, v53 & 0xFFFFFFFFFFFFLL);
        if (*(v52 + 7772) == 1)
        {
          v55 = sub_30C50C(v52 + 3896, v53, 0);
          v56 = &v55[-*v55];
          if (*v56 < 5u)
          {
            v57 = 0;
          }

          else
          {
            v57 = *(v56 + 2);
            if (v57)
            {
              v57 += &v55[*&v55[v57]];
            }
          }

          v58 = v57 + ((v53 >> 30) & 0x3FFFC) + 4 + *(v57 + ((v53 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v58 = 0;
        }

        *&v72 = v54;
        *(&v72 + 1) = v58;
        *&v73 = sub_31D7E8(v52, v53 & 0xFFFFFFFFFFFFLL, 1);
        *(&v73 + 1) = v59;
        v74 = v53 & 0xFFFFFFFFFFFFFFLL;
        sub_767828(a1, &v60, a4);
        a4[17] = v15;
        a4[18] = v16;
        if (__p)
        {
          v81 = __p;
          operator delete(__p);
        }
      }
    }
  }
}

uint64_t sub_76747C(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(sub_4D1F50(a2, a3) + 32);
  sub_2B51D8(v6, v7 & 0xFFFFFFFFFFFFLL);
  if (*(v6 + 7772) == 1)
  {
    sub_30C50C(v6 + 3896, v7, 0);
  }

  sub_31D7E8(v6, v7 & 0xFFFFFFFFFFFFLL, 1);
  v8 = a3 + 1;
  do
  {
    if (v8 >= sub_4D1DC0(a2))
    {
      break;
    }

    v9 = sub_4D1F50(a2, v8);
    v10 = (*v9 - **v9);
    if (*v10 >= 0x2Fu)
    {
      v11 = v10[23];
      if (v11)
      {
        v12 = *(*v9 + v11);
        v13 = v12 > 0x36;
        v14 = (1 << v12) & 0x44000000000008;
        if (!v13 && v14 != 0)
        {
          return v8;
        }
      }
    }

    if (!sub_6A9E6C(a1[2], v9))
    {
      break;
    }

    ++v8;
  }

  while ((sub_31EE90(*a1, v7 & 0xFFFFFFFFFFFFFFLL, v9[4] & 0xFFFFFFFFFFFFFFLL) & 1) != 0);
  return -1;
}

uint64_t sub_7675A8(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = a3;
  if (sub_4D1DC0(a2) - 1 > a3)
  {
    do
    {
      v6 = v3 + 1;
      v7 = *a1;
      v8 = *(sub_4D1F50(a2, v3 + 1) + 32);
      v9 = sub_2B51D8(v7, v8 & 0xFFFFFFFFFFFFLL);
      if (*(v7 + 7772) == 1)
      {
        v10 = sub_30C50C(v7 + 3896, v8, 0);
        v11 = &v10[-*v10];
        if (*v11 < 5u)
        {
          v12 = 0;
        }

        else
        {
          v12 = *(v11 + 2);
          if (v12)
          {
            v12 += &v10[*&v10[v12]];
          }
        }

        v13 = (v12 + ((v8 >> 30) & 0x3FFFC) + 4 + *(v12 + ((v8 >> 30) & 0x3FFFC) + 4));
      }

      else
      {
        v13 = 0;
      }

      v14 = sub_31D7E8(v7, v8 & 0xFFFFFFFFFFFFLL, 1);
      v34[0] = v9;
      v34[1] = v13;
      v34[2] = v14;
      v34[3] = v15;
      v34[4] = (v8 & 0xFFFFFFFFFFFFFFLL);
      if (!sub_70EE0C(a1[1], v34))
      {
        break;
      }

      v16 = (v34[0] - *v34[0]);
      if (*v16 < 0x2Fu || (v17 = v16[23]) == 0 || ((v18 = *(v34[0] + v17), v19 = v18 > 0x36, v20 = (1 << v18) & 0x44000000000008, !v19) ? (v21 = v20 == 0) : (v21 = 1), v21))
      {
        v23 = *a1;
        v24 = *(sub_4D1F50(a2, v3) + 32);
        v25 = sub_2B51D8(v23, v24 & 0xFFFFFFFFFFFFLL);
        if (*(v23 + 7772) == 1)
        {
          v26 = sub_30C50C(v23 + 3896, v24, 0);
          v27 = &v26[-*v26];
          if (*v27 < 5u)
          {
            v28 = 0;
          }

          else
          {
            v28 = *(v27 + 2);
            if (v28)
            {
              v28 += &v26[*&v26[v28]];
            }
          }

          v29 = (v28 + ((v24 >> 30) & 0x3FFFC) + 4 + *(v28 + ((v24 >> 30) & 0x3FFFC) + 4));
        }

        else
        {
          v29 = 0;
        }

        v33[0] = v25;
        v33[1] = v29;
        v33[2] = sub_31D7E8(v23, v24 & 0xFFFFFFFFFFFFLL, 1);
        v33[3] = v30;
        v33[4] = (v24 & 0xFFFFFFFFFFFFFFLL);
        v31 = (v25 - *v25);
        if (*v31 < 0x2Fu)
        {
          return v3 + 1;
        }

        v32 = v31[23];
        if (!v32 || *(v25 + v32) != 50 || !sub_710994(a1[1], v34, v33, 0))
        {
          return v3 + 1;
        }

        return -1;
      }

      ++v3;
    }

    while (v6 < sub_4D1DC0(a2) - 1);
  }

  return -1;
}

void sub_767828(uint64_t *a1, uint64_t a2, void *a3)
{
  sub_69B1E0((a3 + 1), (a2 + 160));
  a3[16] = 0;
  v45 = sub_767C70(a1, a2, a3);
  sub_767F14(a1, a2, a3);
  while (1)
  {
    v6 = a3[2];
    v9 = *(v6 - 40);
    v8 = v6 - 40;
    v7 = v9;
    v10 = (v9 - *v9);
    if (*v10 >= 9u && (v11 = v10[4]) != 0)
    {
      v12 = *(v7 + v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = a3[16] + v12;
    a3[16] = v13;
    if (v13 > *(a1[3] + 1040))
    {
      goto LABEL_61;
    }

    sub_31B8F4(*a1, v8, (a2 + 256));
    v15 = *(a2 + 256);
    v14 = *(a2 + 264);
    if (v15 != v14)
    {
      while (1)
      {
        v16 = (*v15 - **v15);
        if (*v16 >= 0x2Fu)
        {
          v17 = v16[23];
          if (v17)
          {
            v18 = *(*v15 + v17);
            v19 = v18 > 0x36;
            v20 = (1 << v18) & 0x44000000000008;
            if (!v19 && v20 != 0)
            {
              break;
            }
          }
        }

        v15 += 5;
        if (v15 == v14)
        {
          goto LABEL_61;
        }
      }
    }

    if (v15 == v14)
    {
      goto LABEL_61;
    }

    v22 = *(v15 + 18);
    v23 = *(v15 + 8);
    v24 = sub_6B8D68(a3 + 1, 0);
    if (v23 == *(v24 + 32) && v22 == *(v24 + 36))
    {
      break;
    }

    v46 = 0u;
    v47 = 0u;
    v48 = 0x1000000000000;
    v50 = 0;
    v26 = *(a2 + 256);
    v27 = *(a2 + 264);
    v28 = v26;
    if (v26 != v27)
    {
      v28 = *(a2 + 256);
      while ((v28[4] & 0xFFFFFFFFFFFFFFLL) != (*(a2 + 72) & 0xFFFFFFFFFFFFFFLL))
      {
        v28 += 5;
        if (v28 == v27)
        {
          v28 = *(a2 + 264);
          break;
        }
      }
    }

    v51[0] = a1;
    v51[1] = v8;
    v51[2] = v15;
    v49 = v28 != v27;
    *(a2 + 281) |= v28 != v27;
    if (v28 == v27)
    {
      v52[0] = v51;
      v52[1] = a1;
      if (v26 != v27)
      {
        while (!sub_76C4DC(v52, v26))
        {
          v26 += 5;
          if (v26 == v27)
          {
            v26 = v27;
            break;
          }
        }

        v27 = *(a2 + 264);
      }

      v28 = v26;
      if (v26 == v27)
      {
        v28 = *(a2 + 256);
        v52[0] = v51;
        if (v28 != v27)
        {
          while ((sub_76C674(v52, v28) & 1) == 0)
          {
            v28 += 5;
            if (v28 == v27)
            {
              v28 = v27;
              break;
            }
          }

          v27 = *(a2 + 264);
        }
      }
    }

    if (v28 != v27)
    {
      v29 = *v28;
      v30 = *(v28 + 1);
      v48 = v28[4];
      v46 = v29;
      v47 = v30;
    }

    if (v48 && v46 && *(&v46 + 1))
    {
      if (v49 && a3[11] != -1)
      {
        goto LABEL_61;
      }

      sub_768204(a1, &v46, a2, a3);
    }

    sub_69B1E0((a3 + 1), v15);
  }

  sub_76809C(a1, a2, v45, a3);
  if (a3[11] != -1)
  {
    v31 = sub_769280(a1, a3);
    v32 = a3[8];
    *(a2 + 280) = v31;
    for (i = a3[9]; v32 != i; v32 += 13)
    {
      v35 = sub_765988(a3 + 8);
      if (v32 == v35 || v32 == (a3[9] - 104))
      {
        v34 = (a3 + 4);
        if (v32 == v35)
        {
          a3[7] = 0x4EC4EC4EC4EC4EC5 * ((a3[5] - a3[4]) >> 3);
          v34 = (a3 + 4);
        }
      }

      else if (sub_76943C(a1, a2, v32))
      {
        v34 = (a3 + 12);
      }

      else
      {
        v34 = (a3 + 4);
      }

      sub_76C914(v34, v32);
    }
  }

  if (!sub_765858(a3))
  {
LABEL_61:
    v39 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_62;
  }

  v36 = a3[4];
  v37 = a3[5];
  if (v36 == v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = 0;
    do
    {
      if (*(v36 + 72))
      {
        v40 = *(v36 + 40) == 0;
      }

      else
      {
        v40 = 1;
      }

      if (!v40 && *(v36 + 48))
      {
        ++v38;
      }

      v36 += 104;
    }

    while (v36 != v37);
  }

  v41 = sub_766C18(a3);
  if (*(v41 + 72))
  {
    v42 = *(v41 + 40) == 0;
  }

  else
  {
    v42 = 1;
  }

  v44 = !v42 && *(v41 + 48) != 0;
  v19 = v38 - v44 <= *(a1[3] + 1155);
  v39 = 0x7FFFFFFFFFFFFFFFLL;
  if (v19)
  {
    v39 = a3[16];
  }

LABEL_62:
  a3[16] = v39;
}

uint64_t sub_767C70(uint64_t *a1, int **a2, void *a3)
{
  if (*(a1[3] + 1159) != 1)
  {
    return 0;
  }

  v3 = (*a2 - **a2);
  if (*v3 < 0x63u)
  {
    return 0;
  }

  v4 = v3[49];
  if (!v4 || *(*a2 + v4) != 12)
  {
    return 0;
  }

  sub_31BCE0(*a1, a2, a2 + 32);
  v8 = a2[32];
  v9 = a2[33];
  if (v8 != v9)
  {
    while (1)
    {
      v10 = (*v8 - **v8);
      if (*v10 >= 0x63u)
      {
        v11 = v10[49];
        if (v11)
        {
          if (*(*v8 + v11) == 12)
          {
            break;
          }
        }
      }

      v8 += 10;
      if (v8 == v9)
      {
        return 0;
      }
    }
  }

  if (v8 == v9)
  {
    return 0;
  }

  v12 = sub_70E2E0(a1[1], a2 + 10, a2);
  v13 = sub_6B8D68(a3 + 1, 0);
  v14 = (*v13 - **v13);
  if (*v14 >= 0x9Bu && (v15 = v14[77]) != 0 && (*(*v13 + v15 + 1) & 0x80) != 0)
  {
    v24 = 0;
    v20 = a1;
    v21 = a2;
  }

  else
  {
    v16 = sub_6B8D68(a3 + 1, 0);
    v17 = *v16;
    v18 = *(v16 + 38);
    v19 = (*v16 - **v16);
    v20 = a1;
    v21 = a2;
    if (v18)
    {
      if (*v19 >= 0x9Bu)
      {
        v22 = v19[77];
        if (v22)
        {
          v23 = 2;
LABEL_22:
          v24 = (*(v17 + v22) & v23) != 0;
          goto LABEL_25;
        }
      }
    }

    else if (*v19 >= 0x9Bu)
    {
      v22 = v19[77];
      if (v22)
      {
        v23 = 1;
        goto LABEL_22;
      }
    }

    v24 = 0;
  }

LABEL_25:
  v25 = v21[32];
  v26 = v21[33];
  if (v25 != v26)
  {
    if (v24)
    {
      while (1)
      {
        if (*(v25 + 18) != *(v21 + 58) || v25[8] != *(v21 + 28))
        {
          v28 = sub_70E2E0(v20[1], a2 + 10, v25);
          v21 = a2;
          v20 = a1;
          if (v28 > v12)
          {
            break;
          }
        }

        v25 += 10;
        if (v25 == v26)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      while (1)
      {
        if (*(v25 + 18) != *(v21 + 58) || v25[8] != *(v21 + 28))
        {
          v30 = sub_70E2E0(v20[1], a2 + 10, v25);
          v21 = a2;
          v20 = a1;
          if (v30 < v12)
          {
            break;
          }
        }

        v25 += 10;
        if (v25 == v26)
        {
LABEL_42:
          v25 = v26;
          break;
        }
      }
    }
  }

  if (v25 != v21[33])
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 0x1000000000000;
    v37 = 0;
    v31 = *v25;
    v32 = *(v25 + 1);
    v36 = *(v25 + 4);
    v34 = v31;
    v35 = v32;
    sub_7684A8(v20, &v34, 0, a3);
    return 1;
  }

  return 0;
}

uint64_t sub_767F14(uint64_t *a1, uint64_t a2, void *a3)
{
  result = sub_31B8F4(*a1, a2, (a2 + 256));
  v12 = 0u;
  v13 = 0u;
  v14 = 0x1000000000000;
  v16 = 0;
  v7 = *(a2 + 256);
  v8 = *(a2 + 264);
  v9 = v7;
  if (v7 != v8)
  {
    v9 = *(a2 + 256);
    while ((v9[4] & 0xFFFFFFFFFFFFFFLL) != (*(a2 + 72) & 0xFFFFFFFFFFFFFFLL))
    {
      v9 += 5;
      if (v9 == v8)
      {
        v9 = *(a2 + 264);
        break;
      }
    }
  }

  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a2 + 160;
  v15 = v9 != v8;
  *(a2 + 281) |= v9 != v8;
  if (v9 == v8)
  {
    v18[0] = v17;
    v18[1] = a1;
    if (v7 != v8)
    {
      while (1)
      {
        result = sub_76C4DC(v18, v7);
        if (result)
        {
          break;
        }

        v7 += 5;
        if (v7 == v8)
        {
          v7 = v8;
          break;
        }
      }

      v8 = *(a2 + 264);
    }

    v9 = v7;
    if (v7 == v8)
    {
      v9 = *(a2 + 256);
      v18[0] = v17;
      if (v9 != v8)
      {
        while (1)
        {
          result = sub_76C674(v18, v9);
          if (result)
          {
            break;
          }

          v9 += 5;
          if (v9 == v8)
          {
            v9 = v8;
            break;
          }
        }

        v8 = *(a2 + 264);
      }
    }
  }

  if (v9 != v8)
  {
    v10 = v9[4];
    v11 = *(v9 + 1);
    v12 = *v9;
    v13 = v11;
    v14 = v10;
    if (v10)
    {
      if (v12)
      {
        if (*(&v12 + 1))
        {
          return sub_7684A8(a1, &v12, 0, a3);
        }
      }
    }
  }

  return result;
}

uint64_t sub_76809C(uint64_t *a1, __int128 *a2, char a3, uint64_t a4)
{
  *&v15[14] = *(a2 + 30);
  v5 = a2[1];
  v14 = *a2;
  *v15 = v5;
  v6 = *(a2 + 39);
  v16 = *(a2 + 38) == 0;
  v17 = v6;
  v19 = 1;
  v7 = (v14 - *v14);
  if (*v7 >= 0x63u && (v8 = v7[49]) != 0 && *(v14 + v8) == 12)
  {
    if (*(a2 + 28) == *(a2 + 38))
    {
      v9 = *(a2 + 78);
      v10 = *(a2 + 58);
      goto LABEL_8;
    }
  }

  else if (*(a2 + 8) == *(a2 + 18))
  {
    v9 = *(a2 + 38);
    v10 = *(a2 + 18);
LABEL_8:
    v18 = *(a4 + 88) == -1 && v10 == v9;
    if (a3)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v18 = 0;
  if (a3)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (*(a2 + 58) && *(a2 + 25) && *(a2 + 26))
  {
    v11 = a1;
    sub_7684A8(a1, a2 + 25, *(a2 + 31), a4);
    a1 = v11;
  }

LABEL_15:
  sub_7684A8(a1, &v14, *(a4 + 128), a4);
  result = sub_765EDC(*(a4 + 72) - 104);
  v13 = result + 18000;
  if (((result + 18000) >> 5) >= 0x465u)
  {
    v13 = result - 18000;
  }

  *(a4 + 152) = v13;
  return result;
}

uint64_t *sub_768204(uint64_t *result, int **a2, uint64_t a3, void *a4)
{
  v5 = a3 + 200;
  if (*(a3 + 232))
  {
    v6 = *(a3 + 200) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && *(a3 + 208) != 0)
  {
    v12 = (*a2 - **a2);
    if (*v12 < 0x63u || (v13 = v12[49]) == 0 || *(*a2 + v13) != 12 || (v14 = *(a4[2] - 40), v15 = (v14 - *v14), *v15 < 0x63u) || (v16 = v15[49]) == 0 || *(v14 + v16) != 12 || (v17 = result, v18 = a4, v19 = a2, v20 = sub_3116D0(a2), v21 = sub_3116D0(v5), a2 = v19, a4 = v18, v22 = v21, result = v17, v20 != v22))
    {
      v29 = result;
      v30 = a2;
      v31 = a4;
      sub_7684A8(result, v5, *(a3 + 248), a4);
      v32 = v31[16];
      v33 = v29;
      v34 = v30;
      v35 = v31;
LABEL_26:
      result = sub_7684A8(v33, v34, v32, v35);
      *v5 = 0u;
      *(v5 + 16) = 0u;
      *(a3 + 232) = 0x1000000000000;
      return result;
    }

    v23 = sub_70EE0C(v17[1], v19);
    v24 = v19;
    v25 = v18;
    if (v23)
    {
      goto LABEL_22;
    }

    v37 = (*v19 - **v19);
    v38 = *v37;
    if (*(v19 + 38))
    {
      if (v38 < 0x9B)
      {
        goto LABEL_38;
      }

      v39 = v37[77];
      if (!v39)
      {
        goto LABEL_38;
      }

      v40 = 2;
    }

    else
    {
      if (v38 < 0x9B)
      {
        goto LABEL_38;
      }

      v39 = v37[77];
      if (!v39)
      {
        goto LABEL_38;
      }

      v40 = 1;
    }

    if ((*(*v19 + v39) & v40) != 0)
    {
LABEL_22:
      if (*(a3 + 240) == 1)
      {
        v26 = sub_70E2E0(v17[1], v5, (a3 + 120));
        v27 = sub_70E2E0(v17[1], v19, (a3 + 120));
        v24 = v19;
        v25 = v18;
        if (fabs(v27) < fabs(v26))
        {
          v28 = *(a3 + 240);
          *(a3 + 240) = *(v19 + 40);
          *(v19 + 40) = v28;
        }
      }
    }

LABEL_38:
    sub_7684A8(v17, v24, *(a3 + 248), v25);
    v32 = v25[16];
    v33 = v17;
    v34 = v5;
    v35 = v25;
    goto LABEL_26;
  }

  if (*(result[3] + 1159) == 1 && (v8 = (*a2 - **a2), *v8 >= 0x63u) && (v9 = v8[49]) != 0 && *(*a2 + v9) == 12)
  {
    v10 = *a2;
    v11 = *(a2 + 1);
    *(a3 + 226) = *(a2 + 26);
    *v5 = v10;
    *(a3 + 216) = v11;
    *(a3 + 248) = a4[16];
  }

  else
  {
    v36 = a4[16];

    return sub_7684A8(result, a2, v36, a4);
  }

  return result;
}

uint64_t sub_7684A8(uint64_t *a1, int **a2, uint64_t a3, void *a4)
{
  v8 = a4[9];
  v9 = (a4 + 8);
  if (a4[8] != v8)
  {
    result = sub_768D6C(a1, a2, v8 - 104);
    if (result)
    {
      v11 = a4[9] - 104;
      v12 = 1;
      if (a2[5])
      {
        goto LABEL_8;
      }

LABEL_6:
      result = sub_70EE0C(a1[1], a2);
      if (result)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v15 = *a2;
        v16 = (*a2 - **a2);
        v17 = *v16;
        if (*(a2 + 38))
        {
          if (v17 >= 0x9B)
          {
            v18 = v16[77];
            if (v18)
            {
              if (!(v12 & 1 | ((*(v15 + v18) & 2) == 0)))
              {
                goto LABEL_8;
              }
            }
          }
        }

        else if (v17 >= 0x9B)
        {
          v19 = v16[77];
          if (v19)
          {
            if (!(v12 & 1 | ((*(v15 + v19) & 1) == 0)))
            {
              goto LABEL_8;
            }
          }
        }
      }

      v14 = 80;
      v13 = v11;
      goto LABEL_18;
    }
  }

  result = sub_7690EC(v9);
  v11 = result;
  v12 = 0;
  if ((a2[5] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  v13 = v11 + 40;
  v14 = 88;
LABEL_18:
  v20 = *a2;
  v21 = *(a2 + 1);
  *(v13 + 32) = a2[4];
  *v13 = v20;
  *(v13 + 16) = v21;
  *(v11 + v14) = a3;
  v22 = *a2;
  v23 = (*a2 - **a2);
  v24 = *v23;
  if (v24 < 0x2F || (v25 = v23[23]) == 0)
  {
    *(v11 + 96) = *(v11 + 96);
    if (*(a2 + 40) != 1)
    {
      return result;
    }

    goto LABEL_27;
  }

  v26 = *(v22 + v25);
  if (v26 > 0x2A)
  {
    if (v26 == 44)
    {
      goto LABEL_34;
    }

    if (v26 != 43)
    {
      goto LABEL_36;
    }
  }

  else if (v26 != 6 && v26 != 12)
  {
LABEL_36:
    *(v11 + 96) |= *(v22 + v25) == 14;
    if (*(a2 + 40) != 1)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (v24 >= 0x9B)
  {
    v28 = v23[77];
    if (v28)
    {
      if ((*(v22 + v28 + 2) & 0x20) != 0)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_34:
  *(v11 + 96) |= 1u;
  if (*(a2 + 40) == 1)
  {
LABEL_27:
    a4[11] = 0x4EC4EC4EC4EC4EC5 * ((a4[9] - a4[8]) >> 3) - 1;
  }

  return result;
}

BOOL sub_7686D8(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  v17 = a1;
  sub_7687E4(&v17, a2, v13);
  sub_7687E4(&v17, a3, v10);
  v4 = v14;
  if (v14)
  {
    while (!sub_138B0(v10, (v4 + 2)))
    {
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_11;
  }

LABEL_4:
  v5 = v15;
  if (v15)
  {
    while (!sub_76C7DC(v11, v5 + 4))
    {
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

LABEL_11:
    v8 = 1;
    goto LABEL_12;
  }

LABEL_7:
  v6 = v16;
  if (v16)
  {
    while (1)
    {
      v7 = sub_3A8760(v12, v6 + 2);
      v8 = v7 != 0;
      if (v7)
      {
        break;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

LABEL_12:
  sub_76C408(v10);
  sub_76C408(v13);
  return v8;
}

void sub_7687B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_76C408(va);
  _Unwind_Resume(a1);
}

void sub_7687C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_76C408(va);
  sub_76C408(va1);
  _Unwind_Resume(a1);
}

void sub_7687E4(uint64_t **a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2[1];
  v77 = *a2;
  v78 = v5;
  v79 = *(a2 + 4);
  v75 = 0uLL;
  v76 = 0;
  *v72 = 0u;
  v73 = 0u;
  v74 = 1065353216;
  *v69 = 0u;
  v70 = 0u;
  v71 = 1065353216;
  *v66 = 0u;
  *v67 = 0u;
  v68 = 1065353216;
  v6 = v4[3];
  if (*(v6 + 1048) >= 1)
  {
    v7 = 0;
    v8 = vdup_n_s32(0x4650u);
    v9 = vdup_n_s32(0xB9B0u);
    v10 = vdup_n_s32(0x8CA0u);
    v11 = vdup_n_s32(0xFFFF7360);
    v12 = vdup_n_s32(0xFFFFB9B1);
    v61 = vdupq_n_s64(0x4059000000000000uLL);
    do
    {
      if (v67[1] >= *(v6 + 1156))
      {
        break;
      }

      v62[0] = sub_3116D0(&v77);
      sub_76B888(v66, v62);
      if ((v15 & 1) == 0)
      {
        break;
      }

      if (v67[1] < *(v4[3] + 1157))
      {
        v16 = *v4;
        v17 = sub_31DDCC(*v4, v79 & 0xFFFFFFFFFFFFFFLL);
        sub_40C59C(v16, v17, __p);
        v18 = v65;
        if ((v65 & 0x80u) != 0)
        {
          v18 = __p[1];
        }

        if (v18)
        {
          sub_23914(v72, __p);
        }

        v19 = sub_2B51D8(*v4, v79 & 0xFFFFFFFFFFFFLL);
        v20 = (v19 - *v19);
        if (*v20 < 0x25u)
        {
          goto LABEL_19;
        }

        v21 = v20[18];
        if (!v21)
        {
          goto LABEL_19;
        }

        v22 = (v19 + v21 + *(v19 + v21));
        if (!*v22)
        {
          goto LABEL_19;
        }

        sub_310550((v22 + v22[1] + 4), v62);
        v23 = v63;
        v24 = v63;
        if ((v63 & 0x80u) != 0)
        {
          v24 = v62[2];
        }

        if (v24)
        {
          sub_76BC00(v69, v62);
          v23 = v63;
        }

        if ((v23 & 0x80) == 0)
        {
LABEL_19:
          if ((v65 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

LABEL_20:
          operator delete(__p[0]);
          goto LABEL_21;
        }

        operator delete(v62[1]);
        if (v65 < 0)
        {
          goto LABEL_20;
        }
      }

LABEL_21:
      sub_31B8F4(*v4, &v77, &v75);
      v25 = v75;
      if (v75 == *(&v75 + 1))
      {
        break;
      }

      v26 = (v77 - *v77);
      v27 = *v26;
      if (v27 < 9)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26[4];
        if (v26[4])
        {
          v28 = *(v77 + v28);
        }
      }

      for (i = (v75 + 40); i != *(&v75 + 1); i += 5)
      {
        if (BYTE6(v79))
        {
          if (v27 >= 0x49)
          {
            v37 = v26[36];
            if (v26[36])
            {
              goto LABEL_38;
            }
          }
        }

        else if (v27 >= 0x4B)
        {
          v37 = v26[37];
          if (v26[37])
          {
LABEL_38:
            v38 = *(v77 + v37);
            v39 = *i;
            v40 = (*i - **i);
            v41 = *v40;
            if (*(i + 38))
            {
              goto LABEL_43;
            }

            goto LABEL_39;
          }
        }

        v38 = 0xFFFF;
        v39 = *i;
        v40 = (*i - **i);
        v41 = *v40;
        if (*(i + 38))
        {
LABEL_43:
          if (v41 >= 0x4B)
          {
            v42 = v40[37];
            if (v42)
            {
              goto LABEL_45;
            }
          }

          goto LABEL_49;
        }

LABEL_39:
        if (v41 >= 0x49)
        {
          v42 = v40[36];
          if (v42)
          {
LABEL_45:
            v43 = *(v39 + v42);
            if (!BYTE6(v79))
            {
              goto LABEL_46;
            }

            goto LABEL_50;
          }
        }

LABEL_49:
        v43 = 0xFFFF;
        if (!BYTE6(v79))
        {
LABEL_46:
          if (v27 >= 0x4B)
          {
            v44 = v26[37];
            if (v26[37])
            {
              goto LABEL_52;
            }
          }

          goto LABEL_56;
        }

LABEL_50:
        if (v27 >= 0x49)
        {
          v44 = v26[36];
          if (v26[36])
          {
LABEL_52:
            v45 = *(v77 + v44);
            v46 = *v25;
            v47 = (*v25 - **v25);
            v48 = *v47;
            if (*(v25 + 38))
            {
              goto LABEL_57;
            }

            goto LABEL_53;
          }
        }

LABEL_56:
        v45 = 0xFFFF;
        v46 = *v25;
        v47 = (*v25 - **v25);
        v48 = *v47;
        if (*(v25 + 38))
        {
LABEL_57:
          if (v48 >= 0x4B)
          {
            v49 = v47[37];
            if (v49)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_28;
        }

LABEL_53:
        if (v48 >= 0x49)
        {
          v49 = v47[36];
          if (v49)
          {
LABEL_59:
            v30 = *(v46 + v49);
            goto LABEL_29;
          }
        }

LABEL_28:
        v30 = 0xFFFF;
LABEL_29:
        v31 = vadd_s32(__PAIR64__(v45, v38), v8);
        v32 = vsub_s32(__PAIR64__(v30, v43), vand_s8(vbsl_s8(vcgt_u32(v10, vand_s8(v31, 0xFFFF0000FFFFLL)), v31, vadd_s32(__PAIR64__(v45, v38), v9)), 0xFFFF0000FFFFLL));
        v33 = vadd_s32(v32, vand_s8(vcgt_s32(v32, v8), v11));
        v34 = vadd_s32(v33, vand_s8(vcgt_s32(v12, v33), v10));
        v35.i64[0] = v34.i32[0];
        v35.i64[1] = v34.i32[1];
        v36 = vabsq_f64(vdivq_f64(vcvtq_f64_s64(v35), v61));
        if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v36, 1), v36)).u8[0])
        {
          v25 = i;
        }
      }

      v7 += v28;
      v13 = *v25;
      v14 = *(v25 + 1);
      v79 = v25[4];
      v77 = v13;
      v78 = v14;
      v6 = v4[3];
    }

    while (v7 < *(v6 + 1048));
  }

  sub_76C088(a3, v72, v69, v66);
  v50 = v67[0];
  if (v67[0])
  {
    do
    {
      v51 = *v50;
      operator delete(v50);
      v50 = v51;
    }

    while (v51);
  }

  v52 = v66[0];
  v66[0] = 0;
  if (v52)
  {
    operator delete(v52);
  }

  v53 = v70;
  if (v70)
  {
    do
    {
      v57 = *v53;
      if (*(v53 + 47) < 0)
      {
        v58 = v53;
        operator delete(v53[3]);
        v53 = v58;
      }

      operator delete(v53);
      v53 = v57;
    }

    while (v57);
  }

  v54 = v69[0];
  v69[0] = 0;
  if (v54)
  {
    operator delete(v54);
  }

  v55 = v73;
  if (v73)
  {
    do
    {
      v59 = *v55;
      if (*(v55 + 39) < 0)
      {
        v60 = v55;
        operator delete(v55[2]);
        v55 = v60;
      }

      operator delete(v55);
      v55 = v59;
    }

    while (v59);
  }

  v56 = v72[0];
  v72[0] = 0;
  if (v56)
  {
    operator delete(v56);
  }

  if (v75)
  {
    *(&v75 + 1) = v75;
    operator delete(v75);
  }
}

void sub_768CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_11BD8(&a25);
  sub_37AFB0(&a31);
  sub_23D9C(&a37);
  v39 = *(v37 - 176);
  if (v39)
  {
    *(v37 - 168) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

BOOL sub_768D6C(uint64_t *a1, int **a2, uint64_t a3)
{
  if (sub_70EE0C(a1[1], a2))
  {
    goto LABEL_2;
  }

  v10 = *a2;
  v11 = (*a2 - **a2);
  v12 = *v11;
  if (!*(a2 + 38))
  {
    if (v12 < 0x9B)
    {
      goto LABEL_18;
    }

    v14 = v11[77];
    if (!v14 || (*(v10 + v14) & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_2:
    v6 = *(a2 + 41) ^ 1;
    if (*(a3 + 32))
    {
      v7 = *a3 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      goto LABEL_22;
    }

LABEL_7:
    if (v6)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v12 >= 0x9B)
  {
    v13 = v11[77];
    if (v13)
    {
      if ((*(v10 + v13) & 2) != 0)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_18:
  v6 = 0;
  if (*(a3 + 32))
  {
    v15 = *a3 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    goto LABEL_7;
  }

LABEL_22:
  if ((*(a3 + 8) != 0) | v6 & 1)
  {
    return 0;
  }

LABEL_23:
  v16 = (*a2 - **a2);
  if (*v16 >= 0x2Fu && (v17 = v16[23]) != 0)
  {
    v18 = *(*a2 + v17);
    v19 = *(a3 + 40);
    v20 = (v19 - *v19);
    if (*v20 < 0x2Fu)
    {
LABEL_31:
      if (v18 == 32)
      {
        goto LABEL_32;
      }

      return 0;
    }
  }

  else
  {
    v18 = 32;
    v19 = *(a3 + 40);
    v20 = (v19 - *v19);
    if (*v20 < 0x2Fu)
    {
      goto LABEL_31;
    }
  }

  v21 = v20[23];
  if (!v21)
  {
    goto LABEL_31;
  }

  if (v18 != *(v19 + v21))
  {
    return 0;
  }

LABEL_32:
  v22 = sub_31DDCC(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL);
  v23 = 0;
  if (v22 <= 0xFFFFFFFEFFFFFFFFLL && v22)
  {
    v23 = sub_31EE90(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, *(a3 + 72) & 0xFFFFFFFFFFFFFFLL);
  }

  v24 = sub_2B51D8(*a1, *(a2 + 8) | (*(a2 + 18) << 32));
  v25 = (v24 - *v24);
  v27 = *v25 >= 0x25u && (v26 = v25[18]) != 0 && *(v24 + v26 + *(v24 + v26)) && sub_31CB7C(*a1, *(a2 + 8) | (*(a2 + 18) << 32), *(a3 + 72) | (*(a3 + 76) << 32));
  v28 = sub_3116D0(a2);
  v29 = sub_3116D0((a3 + 40));
  v30 = *a2;
  v31 = (*a2 - **a2);
  v32 = *v31;
  if (v32 < 0x2F)
  {
    return (v28 == v29) & (v23 | v27);
  }

  if (!v31[23] || *(v30 + v31[23]) != 23)
  {
    if (v32 < 0x9B)
    {
      return (v28 == v29) & (v23 | v27);
    }

    v33 = v31[77];
    if (!v33 || (*(v30 + v33) & 4) == 0)
    {
      return (v28 == v29) & (v23 | v27);
    }
  }

  v34 = *(a3 + 40);
  v35 = (v34 - *v34);
  v36 = *v35;
  if (v36 < 0x2F)
  {
    return (v28 == v29) & (v23 | v27);
  }

  if (!v35[23] || *(v34 + v35[23]) != 23)
  {
    if (v36 >= 0x9B)
    {
      v38 = v35[77];
      if (v38)
      {
        v37 = (*(v34 + v38) & 4) == 0;
        goto LABEL_53;
      }
    }

    return (v28 == v29) & (v23 | v27);
  }

  v37 = 0;
LABEL_53:
  v8 = (v28 == v29) & (v23 | v27);
  if (((v28 == v29) & (v23 | v27)) != 0 || v37)
  {
    return v8;
  }

  if ((v28 == v29) | (v23 | v27) & 1)
  {
    return 1;
  }

  return sub_7686D8(a1, a2, (a3 + 40));
}

uint64_t sub_7690EC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 >= v3)
  {
    v5 = *a1;
    v6 = 0x4EC4EC4EC4EC4EC5 * ((v2 - *a1) >> 3);
    v7 = v6 + 1;
    if ((v6 + 1) > 0x276276276276276)
    {
      sub_1794();
    }

    v8 = 0x4EC4EC4EC4EC4EC5 * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x13B13B13B13B13BLL)
    {
      v9 = 0x276276276276276;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x276276276276276)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 8 * ((v2 - *a1) >> 3);
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 80) = 0u;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0x1000000000000;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 72) = xmmword_229F7D0;
    *(v10 + 88) = 0x7FFFFFFFFFFFFFFFLL;
    *(v10 + 96) = 0;
    v4 = 104 * v6 + 104;
    v11 = 104 * v6 - (v2 - v5);
    memcpy((v10 - (v2 - v5)), v5, v2 - v5);
    *a1 = v11;
    *(a1 + 8) = v4;
    *(a1 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0x1000000000000;
    *(v2 + 40) = 0u;
    *(v2 + 56) = 0u;
    *(v2 + 88) = 0x7FFFFFFFFFFFFFFFLL;
    *(v2 + 96) = 0;
    v4 = v2 + 104;
    *(v2 + 72) = xmmword_229F7D0;
  }

  *(a1 + 8) = v4;
  return v4 - 104;
}

uint64_t sub_769280(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (*(v2 + 520) != 1)
  {
    return 1;
  }

  v3 = *(a2 + 64);
  v4 = *(a2 + 72);
  if (v3 == v4)
  {
    v17 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = *(a2 + 64);
    do
    {
      v7 = *(v6 + 40);
      if (*(v6 + 72))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8 && *(v6 + 48) != 0)
      {
        v10 = (v7 - *v7);
        if (*v10 >= 0x2Fu)
        {
          v11 = v10[23];
          if (v11)
          {
            v12 = *(v7 + v11);
            v13 = v12 > 0x2F;
            v14 = (1 << v12) & 0xE2E040048000;
            if (!v13 && v14 != 0)
            {
              ++v5;
            }
          }
        }
      }

      v6 += 104;
    }

    while (v6 != v4);
    v17 = v5;
  }

  v18 = 0x4EC4EC4EC4EC4EC5 * ((v4 - v3) >> 3);
  if (*(v2 + 1162) == 1 && v18 >= *(v2 + 1154))
  {
    v19 = *(v2 + 1144) * v18 <= v17;
    if (*(v2 + 1161) == 1)
    {
LABEL_25:
      v20 = v18 < *(v2 + 1153);
      if (v3 != v4)
      {
        goto LABEL_26;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v19 = 0;
    if (*(v2 + 1161) == 1)
    {
      goto LABEL_25;
    }
  }

  v20 = 0;
  if (v3 != v4)
  {
LABEL_26:
    v21 = 0;
    do
    {
      if (*(v3 + 72))
      {
        v22 = *(v3 + 40) == 0;
      }

      else
      {
        v22 = 1;
      }

      if (!v22 && *(v3 + 48))
      {
        ++v21;
      }

      v3 += 104;
    }

    while (v3 != v4);
    goto LABEL_38;
  }

LABEL_37:
  v21 = 0;
LABEL_38:
  if (*(v2 + 1160) == 1)
  {
    v23 = v20 || v21 < *(v2 + 1152);
    if (v19)
    {
      v23 = 1;
    }

    return v23 & 1;
  }

  else
  {
    v24 = v20;
    if (v19)
    {
      v24 = 1;
    }

    return v24 & 1;
  }
}

BOOL sub_76943C(uint64_t *a1, int **a2, int **a3)
{
  v3 = a3 + 5;
  v4 = a3[5];
  if (*(a3 + 18))
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5 || a3[6] == 0;
  v7 = v6;
  if (v6)
  {
    v4 = *a3;
  }

  v8 = (v4 - *v4);
  v9 = *v8;
  if (*(a1[3] + 521) == 1 && v9 >= 0x9B)
  {
    if (v8[77] && (*(v4 + v8[77] + 2) & 2) != 0)
    {
      v10 = (*a2 - **a2);
      if (*v10 < 0x9Bu)
      {
        return 1;
      }

      v11 = v10[77];
      if (!v11)
      {
        return 1;
      }

      if ((*(*a2 + v11 + 2) & 2) == 0)
      {
        return 1;
      }
    }
  }

  else if (v9 < 0x2F)
  {
    goto LABEL_24;
  }

  v13 = v8[23];
  if (v13 && (*(v4 + v13) | 2) == 0xA)
  {
    return 1;
  }

LABEL_24:
  if (a2[35])
  {
    return 0;
  }

  v5 = v7 == 0;
  v14 = 5;
  if (!v5)
  {
    v14 = 0;
    v3 = a3;
  }

  v15 = a3[v14];
  v16 = (v15 - *v15);
  v17 = *v16;
  if (v17 < 0x2F || !v16[23])
  {
    return 0;
  }

  v18 = *(v15 + v16[23]);
  v19 = v18 > 0x2F;
  v20 = (1 << v18) & 0xE2E040048000;
  if (v19 || v20 == 0)
  {
    return 0;
  }

  if (v17 >= 0x9B)
  {
    v22 = v16[77];
    if (v22)
    {
      if ((*(v15 + v22) & 4) != 0)
      {
        return 0;
      }
    }
  }

  v26 = sub_31DDCC(*a1, v3[4] & 0xFFFFFFFFFFFFFFLL);
  if (v26 <= 0xFFFFFFFEFFFFFFFFLL && v26 != 0)
  {
    return 0;
  }

  result = 0;
  if (*(a3 + 18))
  {
    v28 = a3[5];
    if (v28)
    {
      if (a3[6])
      {
        v29 = a2[20];
        v30 = (v29 - *v29);
        if (*v30 >= 0x43u && (v31 = v30[33]) != 0)
        {
          v32 = *(v29 + v31);
        }

        else
        {
          v32 = 0;
        }

        v33 = a1[3];
        if (v32 >= *(v33 + 516))
        {
          return 0;
        }

        if (*(v33 + 1163) != 1)
        {
          return 1;
        }

        v34 = (v28 - *v28);
        v35 = *v34;
        if (*(a3 + 78))
        {
          if (v35 < 0x39)
          {
            return 1;
          }

          v36 = v34[28];
          if (!v36)
          {
            return 1;
          }

          v37 = *(v28 + v36);
          if ((v37 & 0x5000) != 0x4000)
          {
            if ((v37 & 0x2000) == 0)
            {
              return 1;
            }

            v38 = 2048;
            return (v38 & v37) != 0;
          }
        }

        else
        {
          if (v35 < 0x39)
          {
            return 1;
          }

          v39 = v34[28];
          if (!v39)
          {
            return 1;
          }

          v37 = *(v28 + v39);
          if ((v37 & 0x2800) != 0x2000)
          {
            if ((v37 & 0x4000) == 0)
            {
              return 1;
            }

            v38 = 4096;
            return (v38 & v37) != 0;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

void sub_7696C0(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_765658(a1[3] + 992, a4);
  v8 = sub_4D1F50(a2, a3);
  v9 = (*v8 - **v8);
  if (*v9 < 0x2Fu || (v10 = v9[23]) == 0 || ((v11 = *(*v8 + v10), v12 = v11 > 0x36, v13 = (1 << v11) & 0x44000000000008, !v12) ? (v14 = v13 == 0) : (v14 = 1), v14))
  {
    v15 = sub_769C10(a1, a2, a3);
    if (v15 != -1)
    {
      v16 = sub_769D3C(a1, a2, v15);
      if (v16 != -1)
      {
        v60 = 0u;
        v61 = 0u;
        v62 = 0x1000000000000;
        v63 = 0u;
        v64 = 0u;
        v65 = 0x1000000000000;
        v66 = 0u;
        v67 = 0u;
        v68 = 0x1000000000000;
        v69 = 0u;
        v70 = 0u;
        v71 = 0x1000000000000;
        v72 = 0u;
        v73 = 0u;
        v76 = 0u;
        v75 = 0u;
        v74 = 0x1000000000000;
        v77 = 0x1000000000000;
        v78 = 0;
        v79 = 0x7FFFFFFFFFFFFFFFLL;
        __p = 0;
        v83 = 0;
        v81 = 0;
        v82 = 0;
        v17 = *a1;
        v18 = *(sub_4D1F50(a2, v15 - 1) + 32);
        v19 = sub_2B51D8(v17, v18 & 0xFFFFFFFFFFFFLL);
        if (*(v17 + 7772) == 1)
        {
          v20 = sub_30C50C(v17 + 3896, v18, 0);
          v21 = &v20[-*v20];
          if (*v21 < 5u)
          {
            v22 = 0;
          }

          else
          {
            v22 = *(v21 + 2);
            if (v22)
            {
              v22 += &v20[*&v20[v22]];
            }
          }

          v23 = v22 + ((v18 >> 30) & 0x3FFFC) + 4 + *(v22 + ((v18 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v23 = 0;
        }

        *&v60 = v19;
        *(&v60 + 1) = v23;
        *&v61 = sub_31D7E8(v17, v18 & 0xFFFFFFFFFFFFLL, 1);
        *(&v61 + 1) = v24;
        v62 = v18 & 0xFFFFFFFFFFFFFFLL;
        v25 = *a1;
        v26 = *(sub_4D1F50(a2, v16) + 32);
        v27 = sub_2B51D8(v25, v26 & 0xFFFFFFFFFFFFLL);
        if (*(v25 + 7772) == 1)
        {
          v28 = sub_30C50C(v25 + 3896, v26, 0);
          v29 = &v28[-*v28];
          if (*v29 < 5u)
          {
            v30 = 0;
          }

          else
          {
            v30 = *(v29 + 2);
            if (v30)
            {
              v30 += &v28[*&v28[v30]];
            }
          }

          v31 = v30 + ((v26 >> 30) & 0x3FFFC) + 4 + *(v30 + ((v26 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v31 = 0;
        }

        *&v63 = v27;
        *(&v63 + 1) = v31;
        *&v64 = sub_31D7E8(v25, v26 & 0xFFFFFFFFFFFFLL, 1);
        *(&v64 + 1) = v32;
        v65 = v26 & 0xFFFFFFFFFFFFFFLL;
        v33 = sub_4D1DC0(a2);
        if (v15 == 1)
        {
          v34 = 0;
        }

        else
        {
          v34 = v15 - 2;
        }

        if (v16 >= v33 - 1)
        {
          v35 = v16;
        }

        else
        {
          v35 = v16 + 1;
        }

        v36 = *a1;
        v37 = *(sub_4D1F50(a2, v34) + 32);
        v38 = sub_2B51D8(v36, v37 & 0xFFFFFFFFFFFFLL);
        if (*(v36 + 7772) == 1)
        {
          v39 = sub_30C50C(v36 + 3896, v37, 0);
          v40 = &v39[-*v39];
          if (*v40 < 5u)
          {
            v41 = 0;
          }

          else
          {
            v41 = *(v40 + 2);
            if (v41)
            {
              v41 += &v39[*&v39[v41]];
            }
          }

          v42 = v41 + ((v37 >> 30) & 0x3FFFC) + 4 + *(v41 + ((v37 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v42 = 0;
        }

        *&v66 = v38;
        *(&v66 + 1) = v42;
        *&v67 = sub_31D7E8(v36, v37 & 0xFFFFFFFFFFFFLL, 1);
        *(&v67 + 1) = v43;
        v68 = v37 & 0xFFFFFFFFFFFFFFLL;
        v44 = *a1;
        v45 = *(sub_4D1F50(a2, v35) + 32);
        v46 = sub_2B51D8(v44, v45 & 0xFFFFFFFFFFFFLL);
        if (*(v44 + 7772) == 1)
        {
          v47 = sub_30C50C(v44 + 3896, v45, 0);
          v48 = &v47[-*v47];
          if (*v48 < 5u)
          {
            v49 = 0;
          }

          else
          {
            v49 = *(v48 + 2);
            if (v49)
            {
              v49 += &v47[*&v47[v49]];
            }
          }

          v50 = v49 + ((v45 >> 30) & 0x3FFFC) + 4 + *(v49 + ((v45 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v50 = 0;
        }

        *&v69 = v46;
        *(&v69 + 1) = v50;
        *&v70 = sub_31D7E8(v44, v45 & 0xFFFFFFFFFFFFLL, 1);
        *(&v70 + 1) = v51;
        v71 = v45 & 0xFFFFFFFFFFFFFFLL;
        v52 = *a1;
        v53 = *(sub_4D1F50(a2, v15) + 32);
        v54 = sub_2B51D8(v52, v53 & 0xFFFFFFFFFFFFLL);
        if (*(v52 + 7772) == 1)
        {
          v55 = sub_30C50C(v52 + 3896, v53, 0);
          v56 = &v55[-*v55];
          if (*v56 < 5u)
          {
            v57 = 0;
          }

          else
          {
            v57 = *(v56 + 2);
            if (v57)
            {
              v57 += &v55[*&v55[v57]];
            }
          }

          v58 = v57 + ((v53 >> 30) & 0x3FFFC) + 4 + *(v57 + ((v53 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v58 = 0;
        }

        *&v72 = v54;
        *(&v72 + 1) = v58;
        *&v73 = sub_31D7E8(v52, v53 & 0xFFFFFFFFFFFFLL, 1);
        *(&v73 + 1) = v59;
        v74 = v53 & 0xFFFFFFFFFFFFFFLL;
        sub_769FBC(a1, &v60, a4);
        a4[17] = v15;
        a4[18] = v16;
        if (__p)
        {
          v81 = __p;
          operator delete(__p);
        }
      }
    }
  }
}

uint64_t sub_769C10(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(sub_4D1F50(a2, a3) + 32);
  sub_2B51D8(v6, v7 & 0xFFFFFFFFFFFFLL);
  if (*(v6 + 7772) == 1)
  {
    sub_30C50C(v6 + 3896, v7, 0);
  }

  sub_31D7E8(v6, v7 & 0xFFFFFFFFFFFFLL, 1);
  v8 = a3 + 1;
  do
  {
    if (v8 >= sub_4D1DC0(a2))
    {
      break;
    }

    v9 = sub_4D1F50(a2, v8);
    v10 = (*v9 - **v9);
    if (*v10 >= 0x2Fu)
    {
      v11 = v10[23];
      if (v11)
      {
        v12 = *(*v9 + v11);
        v13 = v12 > 0x36;
        v14 = (1 << v12) & 0x44000000000008;
        if (!v13 && v14 != 0)
        {
          return v8;
        }
      }
    }

    if (!sub_6ABAB4(a1[2], v9))
    {
      break;
    }

    ++v8;
  }

  while ((sub_31EE90(*a1, v7 & 0xFFFFFFFFFFFFFFLL, v9[4] & 0xFFFFFFFFFFFFFFLL) & 1) != 0);
  return -1;
}

uint64_t sub_769D3C(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = a3;
  if (sub_4D1DC0(a2) - 1 > a3)
  {
    do
    {
      v6 = v3 + 1;
      v7 = *a1;
      v8 = *(sub_4D1F50(a2, v3 + 1) + 32);
      v9 = sub_2B51D8(v7, v8 & 0xFFFFFFFFFFFFLL);
      if (*(v7 + 7772) == 1)
      {
        v10 = sub_30C50C(v7 + 3896, v8, 0);
        v11 = &v10[-*v10];
        if (*v11 < 5u)
        {
          v12 = 0;
        }

        else
        {
          v12 = *(v11 + 2);
          if (v12)
          {
            v12 += &v10[*&v10[v12]];
          }
        }

        v13 = (v12 + ((v8 >> 30) & 0x3FFFC) + 4 + *(v12 + ((v8 >> 30) & 0x3FFFC) + 4));
      }

      else
      {
        v13 = 0;
      }

      v14 = sub_31D7E8(v7, v8 & 0xFFFFFFFFFFFFLL, 1);
      v34[0] = v9;
      v34[1] = v13;
      v34[2] = v14;
      v34[3] = v15;
      v34[4] = (v8 & 0xFFFFFFFFFFFFFFLL);
      if (!sub_712D18(a1[1], v34))
      {
        break;
      }

      v16 = (v34[0] - *v34[0]);
      if (*v16 < 0x2Fu || (v17 = v16[23]) == 0 || ((v18 = *(v34[0] + v17), v19 = v18 > 0x36, v20 = (1 << v18) & 0x44000000000008, !v19) ? (v21 = v20 == 0) : (v21 = 1), v21))
      {
        v23 = *a1;
        v24 = *(sub_4D1F50(a2, v3) + 32);
        v25 = sub_2B51D8(v23, v24 & 0xFFFFFFFFFFFFLL);
        if (*(v23 + 7772) == 1)
        {
          v26 = sub_30C50C(v23 + 3896, v24, 0);
          v27 = &v26[-*v26];
          if (*v27 < 5u)
          {
            v28 = 0;
          }

          else
          {
            v28 = *(v27 + 2);
            if (v28)
            {
              v28 += &v26[*&v26[v28]];
            }
          }

          v29 = (v28 + ((v24 >> 30) & 0x3FFFC) + 4 + *(v28 + ((v24 >> 30) & 0x3FFFC) + 4));
        }

        else
        {
          v29 = 0;
        }

        v33[0] = v25;
        v33[1] = v29;
        v33[2] = sub_31D7E8(v23, v24 & 0xFFFFFFFFFFFFLL, 1);
        v33[3] = v30;
        v33[4] = (v24 & 0xFFFFFFFFFFFFFFLL);
        v31 = (v25 - *v25);
        if (*v31 < 0x2Fu)
        {
          return v3 + 1;
        }

        v32 = v31[23];
        if (!v32 || *(v25 + v32) != 50 || !sub_710994(a1[1], v34, v33, 0))
        {
          return v3 + 1;
        }

        return -1;
      }

      ++v3;
    }

    while (v6 < sub_4D1DC0(a2) - 1);
  }

  return -1;
}

void sub_769FBC(uint64_t *a1, uint64_t a2, void *a3)
{
  sub_69B1E0((a3 + 1), (a2 + 160));
  a3[16] = 0;
  v45 = sub_76A404(a1, a2, a3);
  sub_76A6A8(a1, a2, a3);
  while (1)
  {
    v6 = a3[2];
    v9 = *(v6 - 40);
    v8 = v6 - 40;
    v7 = v9;
    v10 = (v9 - *v9);
    if (*v10 >= 9u && (v11 = v10[4]) != 0)
    {
      v12 = *(v7 + v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = a3[16] + v12;
    a3[16] = v13;
    if (v13 > *(a1[3] + 1040))
    {
      goto LABEL_61;
    }

    sub_31B8F4(*a1, v8, (a2 + 256));
    v15 = *(a2 + 256);
    v14 = *(a2 + 264);
    if (v15 != v14)
    {
      while (1)
      {
        v16 = (*v15 - **v15);
        if (*v16 >= 0x2Fu)
        {
          v17 = v16[23];
          if (v17)
          {
            v18 = *(*v15 + v17);
            v19 = v18 > 0x36;
            v20 = (1 << v18) & 0x44000000000008;
            if (!v19 && v20 != 0)
            {
              break;
            }
          }
        }

        v15 += 5;
        if (v15 == v14)
        {
          goto LABEL_61;
        }
      }
    }

    if (v15 == v14)
    {
      goto LABEL_61;
    }

    v22 = *(v15 + 18);
    v23 = *(v15 + 8);
    v24 = sub_6B8D68(a3 + 1, 0);
    if (v23 == *(v24 + 32) && v22 == *(v24 + 36))
    {
      break;
    }

    v46 = 0u;
    v47 = 0u;
    v48 = 0x1000000000000;
    v50 = 0;
    v26 = *(a2 + 256);
    v27 = *(a2 + 264);
    v28 = v26;
    if (v26 != v27)
    {
      v28 = *(a2 + 256);
      while ((v28[4] & 0xFFFFFFFFFFFFFFLL) != (*(a2 + 72) & 0xFFFFFFFFFFFFFFLL))
      {
        v28 += 5;
        if (v28 == v27)
        {
          v28 = *(a2 + 264);
          break;
        }
      }
    }

    v51[0] = a1;
    v51[1] = v8;
    v51[2] = v15;
    v49 = v28 != v27;
    *(a2 + 281) |= v28 != v27;
    if (v28 == v27)
    {
      v52[0] = v51;
      v52[1] = a1;
      if (v26 != v27)
      {
        while (!sub_76CAA0(v52, v26))
        {
          v26 += 5;
          if (v26 == v27)
          {
            v26 = v27;
            break;
          }
        }

        v27 = *(a2 + 264);
      }

      v28 = v26;
      if (v26 == v27)
      {
        v28 = *(a2 + 256);
        v52[0] = v51;
        if (v28 != v27)
        {
          while ((sub_76C674(v52, v28) & 1) == 0)
          {
            v28 += 5;
            if (v28 == v27)
            {
              v28 = v27;
              break;
            }
          }

          v27 = *(a2 + 264);
        }
      }
    }

    if (v28 != v27)
    {
      v29 = *v28;
      v30 = *(v28 + 1);
      v48 = v28[4];
      v46 = v29;
      v47 = v30;
    }

    if (v48 && v46 && *(&v46 + 1))
    {
      if (v49 && a3[11] != -1)
      {
        goto LABEL_61;
      }

      sub_76A998(a1, &v46, a2, a3);
    }

    sub_69B1E0((a3 + 1), v15);
  }

  sub_76A830(a1, a2, v45, a3);
  if (a3[11] != -1)
  {
    v31 = sub_769280(a1, a3);
    v32 = a3[8];
    *(a2 + 280) = v31;
    for (i = a3[9]; v32 != i; v32 += 13)
    {
      v35 = sub_765988(a3 + 8);
      if (v32 == v35 || v32 == (a3[9] - 104))
      {
        v34 = (a3 + 4);
        if (v32 == v35)
        {
          a3[7] = 0x4EC4EC4EC4EC4EC5 * ((a3[5] - a3[4]) >> 3);
          v34 = (a3 + 4);
        }
      }

      else if (sub_76943C(a1, a2, v32))
      {
        v34 = (a3 + 12);
      }

      else
      {
        v34 = (a3 + 4);
      }

      sub_76C914(v34, v32);
    }
  }

  if (!sub_765858(a3))
  {
LABEL_61:
    v39 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_62;
  }

  v36 = a3[4];
  v37 = a3[5];
  if (v36 == v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = 0;
    do
    {
      if (*(v36 + 72))
      {
        v40 = *(v36 + 40) == 0;
      }

      else
      {
        v40 = 1;
      }

      if (!v40 && *(v36 + 48))
      {
        ++v38;
      }

      v36 += 104;
    }

    while (v36 != v37);
  }

  v41 = sub_766C18(a3);
  if (*(v41 + 72))
  {
    v42 = *(v41 + 40) == 0;
  }

  else
  {
    v42 = 1;
  }

  v44 = !v42 && *(v41 + 48) != 0;
  v19 = v38 - v44 <= *(a1[3] + 1155);
  v39 = 0x7FFFFFFFFFFFFFFFLL;
  if (v19)
  {
    v39 = a3[16];
  }

LABEL_62:
  a3[16] = v39;
}