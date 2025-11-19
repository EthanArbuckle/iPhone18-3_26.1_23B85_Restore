void sub_2099D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38)
{
  sub_244204(v38 - 240);
  if (*(v38 - 145) < 0)
  {
    operator delete(*(v38 - 168));
    sub_2446A0(v38 - 144);
    v39 = *(v38 - 120);
    if (!v39)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_2446A0(v38 - 144);
    v39 = *(v38 - 120);
    if (!v39)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  *(v38 - 112) = v39;
  operator delete(v39);
  _Unwind_Resume(a1);
}

BOOL sub_209CB8(uint64_t *a1)
{
  v2 = 0;
  v3 = 1;
  while (1)
  {
    v4 = &qword_2267D40[3 * v2];
    v5 = *(a1 + 23);
    v6 = a1[1];
    if ((v5 & 0x80000000) == 0)
    {
      v6 = *(a1 + 23);
    }

    v7 = *(v4 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = v4[1];
    }

    if (v6 == v7)
    {
      break;
    }

LABEL_2:
    v3 = v2++ < 0x39;
    if (v2 == 58)
    {
      return v3;
    }
  }

  if (v6)
  {
    v9 = 0;
    v10 = v5 >> 63;
    while (1)
    {
      if (v10)
      {
        v11 = *a1;
      }

      else
      {
        v11 = a1;
      }

      v12 = __tolower(*(v11 + v9));
      v13 = *v4;
      if (v8 >= 0)
      {
        v13 = &qword_2267D40[3 * v2];
      }

      if (v12 != __tolower(*(v13 + v9)))
      {
        break;
      }

      ++v9;
      v14 = *(a1 + 23);
      v10 = v14 >> 63;
      if ((v14 & 0x80000000) != 0)
      {
        v14 = a1[1];
      }

      if (v9 >= v14)
      {
        return v3;
      }
    }

    goto LABEL_2;
  }

  return v3;
}

uint64_t sub_209DBC(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = *(*a1 + 8);
    if (v2)
    {
      v3 = *(a2 + 23);
      if (v3 < 0)
      {
        v4 = *(a2 + 8);
        if (!v4 || (**a2 & 0xDFu) - 65 >= 0x1A)
        {
          return 0;
        }
      }

      else
      {
        if (!*(a2 + 23) || (*a2 & 0xDFu) - 65 >= 0x1A)
        {
          return 0;
        }

        v4 = *(a2 + 23);
      }

      if (v4 < 2 || (v3 >= 0 ? (v5 = *(a2 + 23)) : (v5 = *(a2 + 8)), v5 < 2))
      {
LABEL_31:
        if ((v2 + 280) == sub_BC168(v2 + 272, a2))
        {
          v14 = *a1;
          v15 = *(*a1 + 8);
          if (v15)
          {
            v16 = *(a2 + 23);
            v17 = v16;
            v18 = *(a2 + 8);
            if ((v16 & 0x80u) == 0)
            {
              v19 = *(a2 + 23);
            }

            else
            {
              v19 = *(a2 + 8);
            }

            if (v19)
            {
              if ((v15 + 8) != sub_BC284(v15, a2))
              {
                return 0;
              }

              v16 = *(a2 + 23);
              v18 = *(a2 + 8);
              v14 = *a1;
              v17 = *(a2 + 23);
            }

            if (v17 >= 0)
            {
              v20 = v16;
            }

            else
            {
              v20 = v18;
            }

            if (v20)
            {
              v21 = *(v14 + 8);
              if ((v21 + 200) != sub_BC284(v21 + 192, a2))
              {
                return 0;
              }

              v16 = *(a2 + 23);
              v18 = *(a2 + 8);
              v14 = *a1;
              v17 = *(a2 + 23);
            }

            if (v17 < 0)
            {
              v16 = v18;
            }

            if (v16)
            {
              v22 = *(v14 + 8);
              if ((v22 + 40) != sub_BC284(v22 + 32, a2))
              {
                return 0;
              }

              v14 = *a1;
            }

            v23 = *(v14 + 8);
            if ((v23 + 280) != sub_BC168(v23 + 272, a2))
            {
              return 0;
            }
          }

          operator new();
        }
      }

      else
      {
        if (v3 >= 0)
        {
          v6 = a2;
        }

        else
        {
          v6 = *a2;
        }

        v7 = 1;
        while (1)
        {
          v8 = *(v6 + v7);
          v9 = (v8 - 48) >= 0xA && (v8 & 0xFFFFFFDF) - 65 >= 0x1A;
          if (v9 && v8 != 95)
          {
            if ((v3 & 0x80000000) != 0)
            {
              v10 = *(a2 + 8);
              if (*(*a2 + v7) != 46)
              {
                return 0;
              }
            }

            else
            {
              v10 = *(a2 + 23);
              if (*(a2 + v7) != 46)
              {
                return 0;
              }
            }

            if (v7 >= v10 - 1)
            {
              break;
            }
          }

          if (v5 == ++v7)
          {
            goto LABEL_31;
          }
        }
      }
    }
  }

  return 0;
}

unint64_t sub_20A044(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v15 = *a1;
    v16 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) + 1;
    if (v16 > 0x666666666666666)
    {
      sub_1794();
    }

    v17 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v15) >> 3);
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    if (v17 >= 0x333333333333333)
    {
      v18 = 0x666666666666666;
    }

    else
    {
      v18 = v16;
    }

    v39 = a1;
    if (v18)
    {
      if (v18 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    __p = 0;
    v36 = 8 * ((a2 - v15) >> 3);
    v37 = v36;
    v38 = 0;
    sub_20A344(&__p, a3);
    v4 = sub_20A590(a1, &__p, v4);
    v30 = v36;
    v29 = v37;
    if (v37 != v36)
    {
      do
      {
        v31 = v29 - 40;
        v37 = v29 - 40;
        if (*(v29 - 9) < 0)
        {
          operator delete(*(v29 - 32));
          v31 = v37;
        }

        v29 = v31;
      }

      while (v31 != v30);
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v7)
  {
    *v7 = *a3;
    v27 = (v7 + 8);
    if (*(a3 + 31) < 0)
    {
      sub_325C(v27, *(a3 + 8), *(a3 + 16));
    }

    else
    {
      v28 = *(a3 + 8);
      *(v7 + 24) = *(a3 + 24);
      *v27 = v28;
    }

    *(v7 + 32) = *(a3 + 32);
    a1[1] = v7 + 40;
  }

  else
  {
    v8 = a1[1];
    if (v7 >= 0x28)
    {
      v8 = v7 + 40;
      *v7 = *(v7 - 40);
      v9 = *(v7 - 32);
      *(v7 + 24) = *(v7 - 16);
      *(v7 + 8) = v9;
      *(v7 - 24) = 0;
      *(v7 - 16) = 0;
      *(v7 - 32) = 0;
      *(v7 + 32) = *(v7 - 8);
    }

    a1[1] = v8;
    if (v7 != a2 + 40)
    {
      v10 = 0;
      v11 = a2 - v7 + 40;
      do
      {
        v13 = v7 + v10;
        *(v7 + v10 - 40) = *(v7 + v10 - 80);
        v14 = (v7 + v10 - 32);
        if (*(v7 + v10 - 9) < 0)
        {
          operator delete(*v14);
        }

        v12 = *(v13 - 72);
        *(v7 + v10 - 16) = *(v13 - 56);
        *v14 = v12;
        *(v13 - 49) = 0;
        *(v13 - 72) = 0;
        *(v13 - 8) = *(v13 - 48);
        v10 -= 40;
      }

      while (v11 != v10);
      v8 = a1[1];
    }

    v19 = v8 <= a3 || v4 > a3;
    v20 = 40;
    if (v19)
    {
      v20 = 0;
    }

    v21 = a3 + v20;
    v23 = *(a3 + v20);
    v22 = a3 + v20 + 8;
    *v4 = v23;
    v24 = (v4 + 8);
    if (v4 != v21)
    {
      v25 = *(v21 + 31);
      if (*(v4 + 31) < 0)
      {
        if (v25 >= 0)
        {
          v32 = v22;
        }

        else
        {
          v32 = *(v21 + 8);
        }

        if (v25 >= 0)
        {
          v33 = *(v21 + 31);
        }

        else
        {
          v33 = *(v21 + 16);
        }

        sub_13B38(v24, v32, v33);
      }

      else if ((*(v21 + 31) & 0x80) != 0)
      {
        sub_13A68(v24, *(v21 + 8), *(v21 + 16));
      }

      else
      {
        v26 = *v22;
        *(v4 + 24) = *(v22 + 16);
        *v24 = v26;
      }
    }

    *(v4 + 32) = *(v21 + 32);
  }

  return v4;
}

void sub_20A330(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C5440(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_20A344(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      v11 = 0x999999999999999ALL * ((v4 - *a1) >> 3);
      if (v4 == *a1)
      {
        v11 = 1;
      }

      if (v11 < 0x666666666666667)
      {
        operator new();
      }

      sub_1808();
    }

    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3) + 1;
    v7 = v6 / -2;
    if (v5 == v4)
    {
      v4 = v5 - 40 * (v6 / 2);
    }

    else
    {
      v8 = 40 * v7;
      do
      {
        v10 = v5 + v8;
        *(v5 + 40 * v7) = *v5;
        if (*(v5 + v8 + 31) < 0)
        {
          operator delete(*(v10 + 8));
        }

        v9 = *(v5 + 8);
        *(v10 + 24) = *(v5 + 24);
        *(v10 + 8) = v9;
        *(v5 + 31) = 0;
        *(v5 + 8) = 0;
        *(v10 + 32) = *(v5 + 32);
        v5 += 40;
      }

      while (v5 != v4);
      v4 = v5 + 40 * v7;
      v5 = a1[1];
    }

    a1[1] = v5 + 40 * v7;
    a1[2] = v4;
  }

  *v4 = *a2;
  result = (v4 + 8);
  if (*(a2 + 31) < 0)
  {
    result = sub_325C(result, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v13 = *(a2 + 8);
    *(v4 + 24) = *(a2 + 24);
    *result = v13;
  }

  *(v4 + 32) = *(a2 + 32);
  a1[2] += 40;
  return result;
}

uint64_t sub_20A590(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = *v9;
      v10 = *(v9 + 8);
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 8) = v10;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 8) = 0;
      *(v8 + 32) = *(v9 + 32);
      v9 += 40;
      v8 += 40;
    }

    while (v9 != v7);
    v11 = a3;
    do
    {
      if (*(v11 + 31) < 0)
      {
        operator delete(*(v11 + 8));
      }

      v11 += 40;
    }

    while (v11 != v7);
  }

  v12 = *a1;
  v13 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v14 = v13 + v12 - a3;
  if (v12 != a3)
  {
    v15 = v12;
    v16 = v13 + v12 - a3;
    do
    {
      *v16 = *v15;
      v17 = *(v15 + 8);
      *(v16 + 24) = *(v15 + 24);
      *(v16 + 8) = v17;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 8) = 0;
      *(v16 + 32) = *(v15 + 32);
      v15 += 40;
      v16 += 40;
    }

    while (v15 != a3);
    do
    {
      if (*(v12 + 31) < 0)
      {
        operator delete(*(v12 + 8));
      }

      v12 += 40;
    }

    while (v12 != a3);
  }

  a2[1] = v14;
  v18 = *a1;
  *a1 = v14;
  a1[1] = v18;
  a2[1] = v18;
  v19 = a1[1];
  a1[1] = a2[2];
  a2[2] = v19;
  v20 = a1[2];
  a1[2] = a2[3];
  a2[3] = v20;
  *a2 = a2[1];
  return v6;
}

void sub_20AED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a32);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(a25);
  _Unwind_Resume(exception_object);
}

uint64_t sub_20AF90(uint64_t a1, uint64_t a2, const void **a3)
{
  v122 = 1;
  v123 = a1;
  v124 = &v125;
  v125 = 0;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v112, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v112[48], v19, v18);
    v112[v18 + 48] = 0;
    v20 = std::string::append(v112, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v112[48] = *(&v20->__r_.__value_.__l + 2);
    *&v112[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v110, 0, sizeof(v110));
    do
    {
      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v110.__r_.__value_.__l.__size_ == v27)
        {
          if ((v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v110.__r_.__value_.__l.__size_;
        v24 = v110.__r_.__value_.__r.__words[0];
        ++v110.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v110.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v110.__r_.__value_.__r.__words[2]);
        *(&v110.__r_.__value_.__s + 23) = (*(&v110.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v110;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
    }

    while (v26);
    v28 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
    v29 = &v110;
    if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v110.__r_.__value_.__l.__size_;
      v29 = v110.__r_.__value_.__r.__words[0];
    }

    if (v28)
    {
      v30 = (v29 + v28 - 1);
      if (v30 > v29)
      {
        v31 = &v29->__r_.__value_.__s.__data_[1];
        do
        {
          v32 = *(v31 - 1);
          *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
          v30->__r_.__value_.__s.__data_[0] = v32;
          v30 = (v30 - 1);
          v33 = v31++ >= v30;
        }

        while (!v33);
      }
    }

    v34 = std::string::insert(&v110, 0, "exprtk.hpp:", 0xBuLL);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v111.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v111.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, a1 + 104, &v112[32], &v111.__r_.__value_.__l.__data_, v113);
    v36 = *(a1 + 568);
    v37 = *(a1 + 560);
    v38 = 30 * ((v36 - v37) >> 3) - 1;
    if (v36 == v37)
    {
      v38 = 0;
    }

    if (v38 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v37 = *(a1 + 560);
      v36 = *(a1 + 568);
    }

    if (v36 == v37)
    {
      v40 = 0;
    }

    else
    {
      v39 = *(a1 + 592) + *(a1 + 584);
      v40 = *(v37 + 8 * (v39 / 0x1E)) + 136 * (v39 % 0x1E);
    }

    sub_C398C(v40, v113);
    ++*(a1 + 592);
    if (v121 < 0)
    {
      operator delete(__p);
      if ((v119 & 0x80000000) == 0)
      {
LABEL_65:
        if ((v117 & 0x80000000) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_74;
      }
    }

    else if ((v119 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    operator delete(v118);
    if ((v117 & 0x80000000) == 0)
    {
LABEL_66:
      if ((v115 & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_75;
    }

LABEL_74:
    operator delete(v116);
    if ((v115 & 0x80000000) == 0)
    {
LABEL_67:
      if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_76;
    }

LABEL_75:
    operator delete(v114);
    if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_68:
      if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_77;
    }

LABEL_76:
    operator delete(v111.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_69:
      if ((v112[55] & 0x80000000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_78;
    }

LABEL_77:
    operator delete(v110.__r_.__value_.__l.__data_);
    if ((v112[55] & 0x80000000) == 0)
    {
LABEL_70:
      if ((v112[23] & 0x80000000) == 0)
      {
        goto LABEL_192;
      }

LABEL_79:
      operator delete(*v112);
      goto LABEL_192;
    }

LABEL_78:
    operator delete(*&v112[32]);
    if ((v112[23] & 0x80000000) == 0)
    {
      goto LABEL_192;
    }

    goto LABEL_79;
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_81;
    }
  }

  else
  {
    *(a1 + 24) = v14 + 40;
    v15 = (v14 + 8);
    *(a1 + 104) = *v14;
    if (v13 == v14)
    {
      goto LABEL_81;
    }

    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((v16 & 0x80u) == 0)
  {
    v41 = v15;
  }

  else
  {
    v41 = *v15;
  }

  if ((v16 & 0x80u) == 0)
  {
    v42 = v16;
  }

  else
  {
    v42 = *(v14 + 16);
  }

  sub_13B38(a1 + 112, v41, v42);
LABEL_81:
  *(a1 + 136) = *(v14 + 32);
  v125 = sub_C5A5C(a1, 0);
  if (!v125)
  {
    *(&v109.__r_.__value_.__s + 23) = 1;
    LOWORD(v109.__r_.__value_.__l.__data_) = 48;
    v47 = std::string::insert(&v109, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
    v48 = *&v47->__r_.__value_.__l.__data_;
    v110.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v110.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    v49 = std::string::append(&v110, " for function: '", 0x10uLL);
    v50 = *&v49->__r_.__value_.__l.__data_;
    v111.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
    *&v111.__r_.__value_.__l.__data_ = v50;
    v49->__r_.__value_.__l.__size_ = 0;
    v49->__r_.__value_.__r.__words[2] = 0;
    v49->__r_.__value_.__r.__words[0] = 0;
    v51 = *(a3 + 23);
    if (v51 >= 0)
    {
      v52 = a3;
    }

    else
    {
      v52 = *a3;
    }

    if (v51 >= 0)
    {
      v53 = *(a3 + 23);
    }

    else
    {
      v53 = a3[1];
    }

    v54 = std::string::append(&v111, v52, v53);
    v55 = *&v54->__r_.__value_.__l.__data_;
    *&v112[16] = *(&v54->__r_.__value_.__l + 2);
    *v112 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    v56 = std::string::append(v112, "'", 1uLL);
    v57 = *&v56->__r_.__value_.__l.__data_;
    *&v112[48] = *(&v56->__r_.__value_.__l + 2);
    *&v112[32] = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    v58 = 21178;
    memset(&v106, 0, sizeof(v106));
    do
    {
      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        v62 = (v106.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v106.__r_.__value_.__l.__size_ == v62)
        {
          if ((v106.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_103:
          operator new();
        }

        v59 = v106.__r_.__value_.__l.__size_;
        v60 = v106.__r_.__value_.__r.__words[0];
        ++v106.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v106.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_103;
        }

        v59 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
        *(&v106.__r_.__value_.__s + 23) = (*(&v106.__r_.__value_.__s + 23) + 1) & 0x7F;
        v60 = &v106;
      }

      v61 = v60 + v59;
      *v61 = (v58 % 0xA) | 0x30;
      v61[1] = 0;
      v26 = v58 > 9;
      v58 /= 0xAu;
    }

    while (v26);
    v63 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
    v64 = &v106;
    if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v63 = v106.__r_.__value_.__l.__size_;
      v64 = v106.__r_.__value_.__r.__words[0];
    }

    if (v63)
    {
      v65 = (v64 + v63 - 1);
      if (v65 > v64)
      {
        v66 = &v64->__r_.__value_.__s.__data_[1];
        do
        {
          v67 = *(v66 - 1);
          *(v66 - 1) = v65->__r_.__value_.__s.__data_[0];
          v65->__r_.__value_.__s.__data_[0] = v67;
          v65 = (v65 - 1);
          v33 = v66++ >= v65;
        }

        while (!v33);
      }
    }

    v68 = std::string::insert(&v106, 0, "exprtk.hpp:", 0xBuLL);
    v69 = *&v68->__r_.__value_.__l.__data_;
    v108 = v68->__r_.__value_.__r.__words[2];
    *v107 = v69;
    v68->__r_.__value_.__l.__size_ = 0;
    v68->__r_.__value_.__r.__words[2] = 0;
    v68->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, a1 + 104, &v112[32], v107, v113);
    v70 = *(a1 + 568);
    v71 = *(a1 + 560);
    v72 = 30 * ((v70 - v71) >> 3) - 1;
    if (v70 == v71)
    {
      v72 = 0;
    }

    if (v72 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v71 = *(a1 + 560);
      v70 = *(a1 + 568);
    }

    if (v70 == v71)
    {
      v74 = 0;
    }

    else
    {
      v73 = *(a1 + 592) + *(a1 + 584);
      v74 = *(v71 + 8 * (v73 / 0x1E)) + 136 * (v73 % 0x1E);
    }

    sub_C398C(v74, v113);
    ++*(a1 + 592);
    if (v121 < 0)
    {
      operator delete(__p);
      if ((v119 & 0x80000000) == 0)
      {
LABEL_154:
        if ((v117 & 0x80000000) == 0)
        {
          goto LABEL_155;
        }

        goto LABEL_166;
      }
    }

    else if ((v119 & 0x80000000) == 0)
    {
      goto LABEL_154;
    }

    operator delete(v118);
    if ((v117 & 0x80000000) == 0)
    {
LABEL_155:
      if ((v115 & 0x80000000) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_167;
    }

LABEL_166:
    operator delete(v116);
    if ((v115 & 0x80000000) == 0)
    {
LABEL_156:
      if ((SHIBYTE(v108) & 0x80000000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_168;
    }

LABEL_167:
    operator delete(v114);
    if ((SHIBYTE(v108) & 0x80000000) == 0)
    {
LABEL_157:
      if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_158;
      }

      goto LABEL_169;
    }

LABEL_168:
    operator delete(v107[0]);
    if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_158:
      if ((v112[55] & 0x80000000) == 0)
      {
        goto LABEL_159;
      }

      goto LABEL_170;
    }

LABEL_169:
    operator delete(v106.__r_.__value_.__l.__data_);
    if ((v112[55] & 0x80000000) == 0)
    {
LABEL_159:
      if ((v112[23] & 0x80000000) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_171;
    }

LABEL_170:
    operator delete(*&v112[32]);
    if ((v112[23] & 0x80000000) == 0)
    {
LABEL_160:
      if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_161;
      }

      goto LABEL_172;
    }

LABEL_171:
    operator delete(*v112);
    if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_161:
      if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      goto LABEL_173;
    }

LABEL_172:
    operator delete(v111.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_162:
      if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_192;
      }

LABEL_174:
      operator delete(v109.__r_.__value_.__l.__data_);
      goto LABEL_192;
    }

LABEL_173:
    operator delete(v110.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v109.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_192;
    }

    goto LABEL_174;
  }

  if (*v13 == 41)
  {
    v43 = *(a1 + 24);
    if (*(a1 + 8) == v43)
    {
      v43 = a1 + 40;
      *(a1 + 104) = *(a1 + 40);
      v44 = (a1 + 48);
      v45 = *(a1 + 71);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_86:
        if ((v45 & 0x80) != 0)
        {
          sub_13A68((a1 + 112), *v44, *(v43 + 16));
        }

        else
        {
          v46 = *v44;
          *(a1 + 128) = *(v44 + 2);
          *(a1 + 112) = v46;
        }

        goto LABEL_210;
      }
    }

    else
    {
      *(a1 + 24) = v43 + 40;
      v44 = (v43 + 8);
      *(a1 + 104) = *v43;
      if (v13 == v43)
      {
        goto LABEL_210;
      }

      v45 = *(v43 + 31);
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
        goto LABEL_86;
      }
    }

    if ((v45 & 0x80u) == 0)
    {
      v96 = v44;
    }

    else
    {
      v96 = *v44;
    }

    if ((v45 & 0x80u) == 0)
    {
      v97 = v45;
    }

    else
    {
      v97 = *(v43 + 16);
    }

    sub_13B38(a1 + 112, v96, v97);
LABEL_210:
    *(a1 + 136) = *(v43 + 32);
    v100 = sub_2295F8(a1 + 344, a2, &v125);
    v98 = v100;
    if (!v100 || (*(*v100 + 32))(v100) == 2)
    {
      goto LABEL_225;
    }

    v101 = v125;
    if (!v125)
    {
      goto LABEL_219;
    }

    v102 = *(a2 + 32);
    v103 = (*(*v125 + 32))(v125);
    if (v102 == 1)
    {
      v104 = v103 != 17 && (*(*v101 + 32))(v101) != 18;
      *(v98 + 24) = v125;
      *(v98 + 32) = v104;
      goto LABEL_225;
    }

    if (v103 == 17)
    {
      goto LABEL_219;
    }

    if (v125)
    {
      if ((*(*v125 + 32))(v125) == 18)
      {
LABEL_219:
        v98 = 0;
LABEL_225:
        v122 = 0;
        return v98;
      }

      if (v125)
      {
        (*(*v125 + 8))(v125);
      }
    }

    v98 = 0;
    v125 = 0;
    goto LABEL_225;
  }

  if (*(a3 + 23) >= 0)
  {
    v75 = *(a3 + 23);
  }

  else
  {
    v75 = a3[1];
  }

  if (v75 + 52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v75 + 52 > 0x16)
  {
    operator new();
  }

  qmemcpy(v112, "ERR021 - Invalid number of arguments for function: '", 52);
  if (*(a3 + 23) >= 0)
  {
    v76 = a3;
  }

  else
  {
    v76 = *a3;
  }

  memmove(&v112[52], v76, v75);
  v112[v75 + 52] = 0;
  v77 = std::string::append(v112, "'", 1uLL);
  v78 = *&v77->__r_.__value_.__l.__data_;
  *&v112[48] = *(&v77->__r_.__value_.__l + 2);
  *&v112[32] = v78;
  v77->__r_.__value_.__l.__size_ = 0;
  v77->__r_.__value_.__r.__words[2] = 0;
  v77->__r_.__value_.__r.__words[0] = 0;
  v79 = 21203;
  memset(&v110, 0, sizeof(v110));
  do
  {
    if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
    {
      v83 = (v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v110.__r_.__value_.__l.__size_ == v83)
      {
        if ((v110.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_136:
        operator new();
      }

      v80 = v110.__r_.__value_.__l.__size_;
      v81 = v110.__r_.__value_.__r.__words[0];
      ++v110.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v110.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_136;
      }

      v80 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
      *(&v110.__r_.__value_.__s + 23) = (*(&v110.__r_.__value_.__s + 23) + 1) & 0x7F;
      v81 = &v110;
    }

    v82 = v81 + v80;
    *v82 = (v79 % 0xA) | 0x30;
    v82[1] = 0;
    v26 = v79 > 9;
    v79 /= 0xAu;
  }

  while (v26);
  v84 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
  v85 = &v110;
  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v84 = v110.__r_.__value_.__l.__size_;
    v85 = v110.__r_.__value_.__r.__words[0];
  }

  if (v84)
  {
    v86 = (v85 + v84 - 1);
    if (v86 > v85)
    {
      v87 = &v85->__r_.__value_.__s.__data_[1];
      do
      {
        v88 = *(v87 - 1);
        *(v87 - 1) = v86->__r_.__value_.__s.__data_[0];
        v86->__r_.__value_.__s.__data_[0] = v88;
        v86 = (v86 - 1);
        v33 = v87++ >= v86;
      }

      while (!v33);
    }
  }

  v89 = std::string::insert(&v110, 0, "exprtk.hpp:", 0xBuLL);
  v90 = *&v89->__r_.__value_.__l.__data_;
  v111.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
  *&v111.__r_.__value_.__l.__data_ = v90;
  v89->__r_.__value_.__l.__size_ = 0;
  v89->__r_.__value_.__r.__words[2] = 0;
  v89->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, a1 + 104, &v112[32], &v111.__r_.__value_.__l.__data_, v113);
  v91 = *(a1 + 568);
  v92 = *(a1 + 560);
  v93 = 30 * ((v91 - v92) >> 3) - 1;
  if (v91 == v92)
  {
    v93 = 0;
  }

  if (v93 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v92 = *(a1 + 560);
    v91 = *(a1 + 568);
  }

  if (v91 == v92)
  {
    v95 = 0;
  }

  else
  {
    v94 = *(a1 + 592) + *(a1 + 584);
    v95 = *(v92 + 8 * (v94 / 0x1E)) + 136 * (v94 % 0x1E);
  }

  sub_C398C(v95, v113);
  ++*(a1 + 592);
  if (v121 < 0)
  {
    operator delete(__p);
    if ((v119 & 0x80000000) == 0)
    {
LABEL_186:
      if ((v117 & 0x80000000) == 0)
      {
        goto LABEL_187;
      }

      goto LABEL_202;
    }
  }

  else if ((v119 & 0x80000000) == 0)
  {
    goto LABEL_186;
  }

  operator delete(v118);
  if ((v117 & 0x80000000) == 0)
  {
LABEL_187:
    if ((v115 & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_203;
  }

LABEL_202:
  operator delete(v116);
  if ((v115 & 0x80000000) == 0)
  {
LABEL_188:
    if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_204;
  }

LABEL_203:
  operator delete(v114);
  if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_189:
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_205;
  }

LABEL_204:
  operator delete(v111.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_190:
    if ((v112[55] & 0x80000000) == 0)
    {
      goto LABEL_191;
    }

    goto LABEL_206;
  }

LABEL_205:
  operator delete(v110.__r_.__value_.__l.__data_);
  if ((v112[55] & 0x80000000) == 0)
  {
LABEL_191:
    if ((v112[23] & 0x80000000) == 0)
    {
      goto LABEL_192;
    }

    goto LABEL_207;
  }

LABEL_206:
  operator delete(*&v112[32]);
  if ((v112[23] & 0x80000000) == 0)
  {
LABEL_192:
    v98 = 0;
    if (v122 != 1)
    {
      return v98;
    }

    goto LABEL_193;
  }

LABEL_207:
  operator delete(*v112);
  v98 = 0;
  if (v122 != 1)
  {
    return v98;
  }

LABEL_193:
  v99 = v124;
  if (*v124 && (*(**v124 + 32))(*v124) != 17)
  {
    if (!*v99)
    {
LABEL_199:
      *v99 = 0;
      return v98;
    }

    if ((*(**v99 + 32))(*v99) != 18)
    {
      if (*v99)
      {
        (*(**v99 + 8))(*v99);
      }

      goto LABEL_199;
    }
  }

  return v98;
}

uint64_t sub_20C400(uint64_t a1, uint64_t a2, const void **a3)
{
  v148 = 0;
  v149 = 0;
  v145[0] = 1;
  v146 = a1;
  v147 = &v148;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  v128 = a1 + 104;
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v135, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v135[48], v19, v18);
    v135[v18 + 48] = 0;
    v20 = std::string::append(v135, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v135[48] = *(&v20->__r_.__value_.__l + 2);
    *&v135[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v133, 0, sizeof(v133));
    do
    {
      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v133.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v133.__r_.__value_.__l.__size_ == v27)
        {
          if ((v133.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v133.__r_.__value_.__l.__size_;
        v24 = v133.__r_.__value_.__r.__words[0];
        ++v133.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v133.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v133.__r_.__value_.__r.__words[2]);
        *(&v133.__r_.__value_.__s + 23) = (*(&v133.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v133;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
    }

    while (v26);
    v28 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
    v29 = &v133;
    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v133.__r_.__value_.__l.__size_;
      v29 = v133.__r_.__value_.__r.__words[0];
    }

    if (v28)
    {
      v30 = (v29 + v28 - 1);
      if (v30 > v29)
      {
        v31 = &v29->__r_.__value_.__s.__data_[1];
        do
        {
          v32 = *(v31 - 1);
          *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
          v30->__r_.__value_.__s.__data_[0] = v32;
          v30 = (v30 - 1);
          v33 = v31++ >= v30;
        }

        while (!v33);
      }
    }

    v34 = std::string::insert(&v133, 0, "exprtk.hpp:", 0xBuLL);
    v35 = a1;
    v36 = *&v34->__r_.__value_.__l.__data_;
    v134.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v134.__r_.__value_.__l.__data_ = v36;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v128, &v135[32], &v134.__r_.__value_.__l.__data_, v136);
    v37 = *(a1 + 568);
    v38 = *(a1 + 560);
    v39 = 30 * ((v37 - v38) >> 3) - 1;
    if (v37 == v38)
    {
      v39 = 0;
    }

    if (v39 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v38 = *(a1 + 560);
      v37 = *(a1 + 568);
    }

    if (v37 == v38)
    {
      v41 = 0;
    }

    else
    {
      v40 = *(a1 + 592) + *(a1 + 584);
      v41 = *(v38 + 8 * (v40 / 0x1E)) + 136 * (v40 % 0x1E);
    }

    goto LABEL_212;
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_64;
    }
  }

  else
  {
    *(a1 + 24) = v14 + 40;
    v15 = (v14 + 8);
    *(a1 + 104) = *v14;
    if (v13 == v14)
    {
      goto LABEL_64;
    }

    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((v16 & 0x80u) == 0)
  {
    v42 = v15;
  }

  else
  {
    v42 = *v15;
  }

  if ((v16 & 0x80u) == 0)
  {
    v43 = v16;
  }

  else
  {
    v43 = *(v14 + 16);
  }

  sub_13B38(a1 + 112, v42, v43);
LABEL_64:
  *(a1 + 136) = *(v14 + 32);
  v44 = sub_C5A5C(a1, 0);
  v148 = v44;
  if (!v44)
  {
    goto LABEL_120;
  }

  if (*v13 != 44)
  {
    if (*(a3 + 23) >= 0)
    {
      v51 = *(a3 + 23);
    }

    else
    {
      v51 = a3[1];
    }

    if (v51 + 52 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v51 + 52 > 0x16)
    {
      operator new();
    }

    qmemcpy(v135, "ERR020 - Invalid number of arguments for function: '", 52);
    if (*(a3 + 23) >= 0)
    {
      v52 = a3;
    }

    else
    {
      v52 = *a3;
    }

    memmove(&v135[52], v52, v51);
    v135[v51 + 52] = 0;
    v53 = std::string::append(v135, "'", 1uLL);
    v54 = *&v53->__r_.__value_.__l.__data_;
    *&v135[48] = *(&v53->__r_.__value_.__l + 2);
    *&v135[32] = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    v55 = 21190;
    memset(&v133, 0, sizeof(v133));
    do
    {
      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        v59 = (v133.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v133.__r_.__value_.__l.__size_ == v59)
        {
          if ((v133.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_89:
          operator new();
        }

        v56 = v133.__r_.__value_.__l.__size_;
        v57 = v133.__r_.__value_.__r.__words[0];
        ++v133.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v133.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_89;
        }

        v56 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
        *(&v133.__r_.__value_.__s + 23) = (*(&v133.__r_.__value_.__s + 23) + 1) & 0x7F;
        v57 = &v133;
      }

      v58 = v57 + v56;
      *v58 = (v55 % 0xA) | 0x30;
      v58[1] = 0;
      v26 = v55 > 9;
      v55 /= 0xAu;
    }

    while (v26);
    v60 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
    v61 = &v133;
    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v60 = v133.__r_.__value_.__l.__size_;
      v61 = v133.__r_.__value_.__r.__words[0];
    }

    if (v60)
    {
      v62 = (v61 + v60 - 1);
      if (v62 > v61)
      {
        v63 = &v61->__r_.__value_.__s.__data_[1];
        do
        {
          v64 = *(v63 - 1);
          *(v63 - 1) = v62->__r_.__value_.__s.__data_[0];
          v62->__r_.__value_.__s.__data_[0] = v64;
          v62 = (v62 - 1);
          v33 = v63++ >= v62;
        }

        while (!v33);
      }
    }

    v65 = std::string::insert(&v133, 0, "exprtk.hpp:", 0xBuLL);
    v35 = a1;
    v66 = *&v65->__r_.__value_.__l.__data_;
    v134.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
    *&v134.__r_.__value_.__l.__data_ = v66;
    v65->__r_.__value_.__l.__size_ = 0;
    v65->__r_.__value_.__r.__words[2] = 0;
    v65->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v128, &v135[32], &v134.__r_.__value_.__l.__data_, v136);
    v67 = *(a1 + 568);
    v68 = *(a1 + 560);
    v69 = 30 * ((v67 - v68) >> 3) - 1;
    if (v67 == v68)
    {
      v69 = 0;
    }

    if (v69 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v68 = *(a1 + 560);
      v67 = *(a1 + 568);
    }

    if (v67 == v68)
    {
      v41 = 0;
    }

    else
    {
      v70 = *(a1 + 592) + *(a1 + 584);
      v41 = *(v68 + 8 * (v70 / 0x1E)) + 136 * (v70 % 0x1E);
    }

    goto LABEL_212;
  }

  v45 = (a1 + 40);
  v46 = (a1 + 48);
  v47 = *(a1 + 24);
  if (*(a1 + 8) == v47)
  {
    *v13 = *v45;
    v48 = (a1 + 48);
    v47 = a1 + 40;
    v49 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_69:
      if ((v49 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v48, *(v47 + 16));
      }

      else
      {
        v50 = *v48;
        *(a1 + 128) = *(v48 + 2);
        *(a1 + 112) = v50;
      }

      goto LABEL_114;
    }

LABEL_105:
    if ((v49 & 0x80u) == 0)
    {
      v71 = v48;
    }

    else
    {
      v71 = *v48;
    }

    if ((v49 & 0x80u) == 0)
    {
      v72 = v49;
    }

    else
    {
      v72 = *(v47 + 16);
    }

    sub_13B38(a1 + 112, v71, v72);
    goto LABEL_114;
  }

  *(a1 + 24) = v47 + 40;
  v48 = (v47 + 8);
  *(a1 + 104) = *v47;
  if (v13 != v47)
  {
    v49 = *(v47 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_105;
  }

LABEL_114:
  *(a1 + 136) = *(v47 + 32);
  v149 = sub_C5A5C(a1, 0);
  if (v149)
  {
    if (*v13 == 41)
    {
      v73 = *(a1 + 24);
      if (*(a1 + 8) == v73)
      {
        *v13 = *v45;
      }

      else
      {
        *(a1 + 24) = v73 + 10;
        v46 = (v73 + 2);
        *(a1 + 104) = *v73;
        v45 = v73;
        if (v13 == v73)
        {
LABEL_238:
          *(a1 + 136) = *(v45 + 4);
          v124 = sub_229C38(a1 + 344, a2, &v148);
          v145[0] = 0;
          goto LABEL_221;
        }
      }

      v122 = *(v45 + 31);
      if (*(a1 + 135) < 0)
      {
        if (v122 >= 0)
        {
          v126 = v46;
        }

        else
        {
          v126 = *v46;
        }

        if (v122 >= 0)
        {
          v127 = *(v45 + 31);
        }

        else
        {
          v127 = *(v45 + 2);
        }

        sub_13B38(a1 + 112, v126, v127);
      }

      else if ((*(v45 + 31) & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v46, *(v45 + 2));
      }

      else
      {
        v123 = *v46;
        *(a1 + 128) = v46[2];
        *(a1 + 112) = v123;
      }

      goto LABEL_238;
    }

    if (*(a3 + 23) >= 0)
    {
      v102 = *(a3 + 23);
    }

    else
    {
      v102 = a3[1];
    }

    if (v102 + 52 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v102 + 52 > 0x16)
    {
      operator new();
    }

    qmemcpy(v135, "ERR021 - Invalid number of arguments for function: '", 52);
    if (*(a3 + 23) >= 0)
    {
      v103 = a3;
    }

    else
    {
      v103 = *a3;
    }

    memmove(&v135[52], v103, v102);
    v135[v102 + 52] = 0;
    v104 = std::string::append(v135, "'", 1uLL);
    v105 = *&v104->__r_.__value_.__l.__data_;
    *&v135[48] = *(&v104->__r_.__value_.__l + 2);
    *&v135[32] = v105;
    v104->__r_.__value_.__l.__size_ = 0;
    v104->__r_.__value_.__r.__words[2] = 0;
    v104->__r_.__value_.__r.__words[0] = 0;
    v106 = 21203;
    memset(&v133, 0, sizeof(v133));
    do
    {
      if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
      {
        v110 = (v133.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v133.__r_.__value_.__l.__size_ == v110)
        {
          if ((v133.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_192:
          operator new();
        }

        v107 = v133.__r_.__value_.__l.__size_;
        v108 = v133.__r_.__value_.__r.__words[0];
        ++v133.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v133.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_192;
        }

        v107 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
        *(&v133.__r_.__value_.__s + 23) = (*(&v133.__r_.__value_.__s + 23) + 1) & 0x7F;
        v108 = &v133;
      }

      v109 = v108 + v107;
      *v109 = (v106 % 0xA) | 0x30;
      v109[1] = 0;
      v26 = v106 > 9;
      v106 /= 0xAu;
    }

    while (v26);
    v111 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
    v112 = &v133;
    if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v111 = v133.__r_.__value_.__l.__size_;
      v112 = v133.__r_.__value_.__r.__words[0];
    }

    if (v111)
    {
      v113 = (v112 + v111 - 1);
      if (v113 > v112)
      {
        v114 = &v112->__r_.__value_.__s.__data_[1];
        do
        {
          v115 = *(v114 - 1);
          *(v114 - 1) = v113->__r_.__value_.__s.__data_[0];
          v113->__r_.__value_.__s.__data_[0] = v115;
          v113 = (v113 - 1);
          v33 = v114++ >= v113;
        }

        while (!v33);
      }
    }

    v116 = std::string::insert(&v133, 0, "exprtk.hpp:", 0xBuLL);
    v35 = a1;
    v117 = *&v116->__r_.__value_.__l.__data_;
    v134.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
    *&v134.__r_.__value_.__l.__data_ = v117;
    v116->__r_.__value_.__l.__size_ = 0;
    v116->__r_.__value_.__r.__words[2] = 0;
    v116->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v128, &v135[32], &v134.__r_.__value_.__l.__data_, v136);
    v118 = *(a1 + 568);
    v119 = *(a1 + 560);
    v120 = 30 * ((v118 - v119) >> 3) - 1;
    if (v118 == v119)
    {
      v120 = 0;
    }

    if (v120 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v119 = *(a1 + 560);
      v118 = *(a1 + 568);
    }

    if (v118 == v119)
    {
      v41 = 0;
    }

    else
    {
      v121 = *(a1 + 592) + *(a1 + 584);
      v41 = *(v119 + 8 * (v121 / 0x1E)) + 136 * (v121 % 0x1E);
    }

LABEL_212:
    sub_C398C(v41, v136);
    ++*(v35 + 592);
    if (v144 < 0)
    {
      operator delete(__p);
      if ((v142 & 0x80000000) == 0)
      {
LABEL_214:
        if ((v140 & 0x80000000) == 0)
        {
          goto LABEL_215;
        }

        goto LABEL_224;
      }
    }

    else if ((v142 & 0x80000000) == 0)
    {
      goto LABEL_214;
    }

    operator delete(v141);
    if ((v140 & 0x80000000) == 0)
    {
LABEL_215:
      if ((v138 & 0x80000000) == 0)
      {
        goto LABEL_216;
      }

      goto LABEL_225;
    }

LABEL_224:
    operator delete(v139);
    if ((v138 & 0x80000000) == 0)
    {
LABEL_216:
      if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_217;
      }

      goto LABEL_226;
    }

LABEL_225:
    operator delete(v137);
    if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_217:
      if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_218;
      }

      goto LABEL_227;
    }

LABEL_226:
    operator delete(v134.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_218:
      if ((v135[55] & 0x80000000) == 0)
      {
        goto LABEL_219;
      }

      goto LABEL_228;
    }

LABEL_227:
    operator delete(v133.__r_.__value_.__l.__data_);
    if ((v135[55] & 0x80000000) == 0)
    {
LABEL_219:
      if ((v135[23] & 0x80000000) == 0)
      {
        goto LABEL_220;
      }

LABEL_229:
      operator delete(*v135);
      goto LABEL_220;
    }

LABEL_228:
    operator delete(*&v135[32]);
    if ((v135[23] & 0x80000000) == 0)
    {
      goto LABEL_220;
    }

    goto LABEL_229;
  }

  LODWORD(v44) = 1;
LABEL_120:
  sub_C00FC(v44, &v132);
  v74 = std::string::insert(&v132, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
  v75 = *&v74->__r_.__value_.__l.__data_;
  v133.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
  *&v133.__r_.__value_.__l.__data_ = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  v76 = std::string::append(&v133, " for function: '", 0x10uLL);
  v77 = *&v76->__r_.__value_.__l.__data_;
  v134.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
  *&v134.__r_.__value_.__l.__data_ = v77;
  v76->__r_.__value_.__l.__size_ = 0;
  v76->__r_.__value_.__r.__words[2] = 0;
  v76->__r_.__value_.__r.__words[0] = 0;
  v78 = *(a3 + 23);
  if (v78 >= 0)
  {
    v79 = a3;
  }

  else
  {
    v79 = *a3;
  }

  if (v78 >= 0)
  {
    v80 = *(a3 + 23);
  }

  else
  {
    v80 = a3[1];
  }

  v81 = std::string::append(&v134, v79, v80);
  v82 = *&v81->__r_.__value_.__l.__data_;
  *&v135[16] = *(&v81->__r_.__value_.__l + 2);
  *v135 = v82;
  v81->__r_.__value_.__l.__size_ = 0;
  v81->__r_.__value_.__r.__words[2] = 0;
  v81->__r_.__value_.__r.__words[0] = 0;
  v83 = std::string::append(v135, "'", 1uLL);
  v84 = *&v83->__r_.__value_.__l.__data_;
  *&v135[48] = *(&v83->__r_.__value_.__l + 2);
  *&v135[32] = v84;
  v83->__r_.__value_.__l.__size_ = 0;
  v83->__r_.__value_.__r.__words[2] = 0;
  v83->__r_.__value_.__r.__words[0] = 0;
  v85 = 21178;
  memset(&v129, 0, sizeof(v129));
  do
  {
    if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
    {
      v89 = (v129.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v129.__r_.__value_.__l.__size_ == v89)
      {
        if ((v129.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_135:
        operator new();
      }

      v86 = v129.__r_.__value_.__l.__size_;
      v87 = v129.__r_.__value_.__r.__words[0];
      ++v129.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v129.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_135;
      }

      v86 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
      *(&v129.__r_.__value_.__s + 23) = (*(&v129.__r_.__value_.__s + 23) + 1) & 0x7F;
      v87 = &v129;
    }

    v88 = v87 + v86;
    *v88 = (v85 % 0xA) | 0x30;
    v88[1] = 0;
    v26 = v85 > 9;
    v85 /= 0xAu;
  }

  while (v26);
  v90 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
  v91 = &v129;
  if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v90 = v129.__r_.__value_.__l.__size_;
    v91 = v129.__r_.__value_.__r.__words[0];
  }

  if (v90)
  {
    v92 = (v91 + v90 - 1);
    if (v92 > v91)
    {
      v93 = &v91->__r_.__value_.__s.__data_[1];
      do
      {
        v94 = *(v93 - 1);
        *(v93 - 1) = v92->__r_.__value_.__s.__data_[0];
        v92->__r_.__value_.__s.__data_[0] = v94;
        v92 = (v92 - 1);
        v33 = v93++ >= v92;
      }

      while (!v33);
    }
  }

  v95 = std::string::insert(&v129, 0, "exprtk.hpp:", 0xBuLL);
  v96 = *&v95->__r_.__value_.__l.__data_;
  v131 = v95->__r_.__value_.__r.__words[2];
  *v130 = v96;
  v95->__r_.__value_.__l.__size_ = 0;
  v95->__r_.__value_.__r.__words[2] = 0;
  v95->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v128, &v135[32], v130, v136);
  v97 = *(a1 + 568);
  v98 = *(a1 + 560);
  v99 = 30 * ((v97 - v98) >> 3) - 1;
  if (v97 == v98)
  {
    v99 = 0;
  }

  if (v99 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v98 = *(a1 + 560);
    v97 = *(a1 + 568);
  }

  if (v97 == v98)
  {
    v101 = 0;
  }

  else
  {
    v100 = *(a1 + 592) + *(a1 + 584);
    v101 = *(v98 + 8 * (v100 / 0x1E)) + 136 * (v100 % 0x1E);
  }

  sub_C398C(v101, v136);
  ++*(a1 + 592);
  if (v144 < 0)
  {
    operator delete(__p);
    if ((v142 & 0x80000000) == 0)
    {
LABEL_153:
      if ((v140 & 0x80000000) == 0)
      {
        goto LABEL_154;
      }

      goto LABEL_165;
    }
  }

  else if ((v142 & 0x80000000) == 0)
  {
    goto LABEL_153;
  }

  operator delete(v141);
  if ((v140 & 0x80000000) == 0)
  {
LABEL_154:
    if ((v138 & 0x80000000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_166;
  }

LABEL_165:
  operator delete(v139);
  if ((v138 & 0x80000000) == 0)
  {
LABEL_155:
    if ((SHIBYTE(v131) & 0x80000000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_167;
  }

LABEL_166:
  operator delete(v137);
  if ((SHIBYTE(v131) & 0x80000000) == 0)
  {
LABEL_156:
    if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_168;
  }

LABEL_167:
  operator delete(v130[0]);
  if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_157:
    if ((v135[55] & 0x80000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_169;
  }

LABEL_168:
  operator delete(v129.__r_.__value_.__l.__data_);
  if ((v135[55] & 0x80000000) == 0)
  {
LABEL_158:
    if ((v135[23] & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_170;
  }

LABEL_169:
  operator delete(*&v135[32]);
  if ((v135[23] & 0x80000000) == 0)
  {
LABEL_159:
    if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_171;
  }

LABEL_170:
  operator delete(*v135);
  if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_160:
    if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_172;
  }

LABEL_171:
  operator delete(v134.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_161:
    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_173;
    }

    goto LABEL_220;
  }

LABEL_172:
  operator delete(v133.__r_.__value_.__l.__data_);
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_173:
    operator delete(v132.__r_.__value_.__l.__data_);
  }

LABEL_220:
  v124 = 0;
LABEL_221:
  sub_22A84C(v145);
  return v124;
}

void sub_20D7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57)
{
  if (a42 < 0)
  {
    operator delete(__p);
    if (a35 < 0)
    {
LABEL_5:
      operator delete(a30);
      if ((a56 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a35 < 0)
  {
    goto LABEL_5;
  }

  if ((a56 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a49 & 0x80000000) == 0)
    {
LABEL_11:
      sub_22A84C(v57 - 144);
      _Unwind_Resume(a1);
    }

LABEL_10:
    operator delete(a44);
    goto LABEL_11;
  }

LABEL_9:
  operator delete(a51);
  if ((a49 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

uint64_t sub_20DAF0(uint64_t a1, uint64_t a2, const void **a3)
{
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v153[0] = 1;
  v154 = a1;
  v155 = &v156;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  v136 = a1 + 104;
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v143, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v143[48], v19, v18);
    v143[v18 + 48] = 0;
    v20 = std::string::append(v143, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v143[48] = *(&v20->__r_.__value_.__l + 2);
    *&v143[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v141, 0, sizeof(v141));
    do
    {
      if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v141.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v141.__r_.__value_.__l.__size_ == v27)
        {
          if ((v141.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v141.__r_.__value_.__l.__size_;
        v24 = v141.__r_.__value_.__r.__words[0];
        ++v141.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v141.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v141.__r_.__value_.__r.__words[2]);
        *(&v141.__r_.__value_.__s + 23) = (*(&v141.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v141;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
    }

    while (v26);
    v28 = HIBYTE(v141.__r_.__value_.__r.__words[2]);
    v29 = &v141;
    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v141.__r_.__value_.__l.__size_;
      v29 = v141.__r_.__value_.__r.__words[0];
    }

    if (v28)
    {
      v30 = (v29 + v28 - 1);
      if (v30 > v29)
      {
        v31 = &v29->__r_.__value_.__s.__data_[1];
        do
        {
          v32 = *(v31 - 1);
          *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
          v30->__r_.__value_.__s.__data_[0] = v32;
          v30 = (v30 - 1);
          v33 = v31++ >= v30;
        }

        while (!v33);
      }
    }

    v34 = std::string::insert(&v141, 0, "exprtk.hpp:", 0xBuLL);
    v35 = a1;
    v36 = *&v34->__r_.__value_.__l.__data_;
    v142.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v142.__r_.__value_.__l.__data_ = v36;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v136, &v143[32], &v142.__r_.__value_.__l.__data_, v144);
    v37 = *(a1 + 568);
    v38 = *(a1 + 560);
    v39 = 30 * ((v37 - v38) >> 3) - 1;
    if (v37 == v38)
    {
      v39 = 0;
    }

    if (v39 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v38 = *(a1 + 560);
      v37 = *(a1 + 568);
    }

    if (v37 == v38)
    {
      v41 = 0;
    }

    else
    {
      v40 = *(a1 + 592) + *(a1 + 584);
      v41 = *(v38 + 8 * (v40 / 0x1E)) + 136 * (v40 % 0x1E);
    }

    goto LABEL_119;
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_64;
    }
  }

  else
  {
    *(a1 + 24) = v14 + 40;
    v15 = (v14 + 8);
    *(a1 + 104) = *v14;
    if (v13 == v14)
    {
      goto LABEL_64;
    }

    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((v16 & 0x80u) == 0)
  {
    v42 = v15;
  }

  else
  {
    v42 = *v15;
  }

  if ((v16 & 0x80u) == 0)
  {
    v43 = v16;
  }

  else
  {
    v43 = *(v14 + 16);
  }

  sub_13B38(a1 + 112, v42, v43);
LABEL_64:
  *(a1 + 136) = *(v14 + 32);
  v44 = sub_C5A5C(a1, 0);
  v156 = v44;
  if (!v44)
  {
LABEL_155:
    sub_C00FC(v44, &v140);
    v80 = std::string::insert(&v140, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
    v81 = *&v80->__r_.__value_.__l.__data_;
    v141.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
    *&v141.__r_.__value_.__l.__data_ = v81;
    v80->__r_.__value_.__l.__size_ = 0;
    v80->__r_.__value_.__r.__words[2] = 0;
    v80->__r_.__value_.__r.__words[0] = 0;
    v82 = std::string::append(&v141, " for function: '", 0x10uLL);
    v83 = *&v82->__r_.__value_.__l.__data_;
    v142.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
    *&v142.__r_.__value_.__l.__data_ = v83;
    v82->__r_.__value_.__l.__size_ = 0;
    v82->__r_.__value_.__r.__words[2] = 0;
    v82->__r_.__value_.__r.__words[0] = 0;
    v84 = *(a3 + 23);
    if (v84 >= 0)
    {
      v85 = a3;
    }

    else
    {
      v85 = *a3;
    }

    if (v84 >= 0)
    {
      v86 = *(a3 + 23);
    }

    else
    {
      v86 = a3[1];
    }

    v87 = std::string::append(&v142, v85, v86);
    v88 = *&v87->__r_.__value_.__l.__data_;
    *&v143[16] = *(&v87->__r_.__value_.__l + 2);
    *v143 = v88;
    v87->__r_.__value_.__l.__size_ = 0;
    v87->__r_.__value_.__r.__words[2] = 0;
    v87->__r_.__value_.__r.__words[0] = 0;
    v89 = std::string::append(v143, "'", 1uLL);
    v90 = *&v89->__r_.__value_.__l.__data_;
    *&v143[48] = *(&v89->__r_.__value_.__l + 2);
    *&v143[32] = v90;
    v89->__r_.__value_.__l.__size_ = 0;
    v89->__r_.__value_.__r.__words[2] = 0;
    v89->__r_.__value_.__r.__words[0] = 0;
    v91 = 21178;
    memset(&v137, 0, sizeof(v137));
    do
    {
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        v95 = (v137.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v137.__r_.__value_.__l.__size_ == v95)
        {
          if ((v137.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_170:
          operator new();
        }

        v92 = v137.__r_.__value_.__l.__size_;
        v93 = v137.__r_.__value_.__r.__words[0];
        ++v137.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v137.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_170;
        }

        v92 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
        *(&v137.__r_.__value_.__s + 23) = (*(&v137.__r_.__value_.__s + 23) + 1) & 0x7F;
        v93 = &v137;
      }

      v94 = v93 + v92;
      *v94 = (v91 % 0xA) | 0x30;
      v94[1] = 0;
      v26 = v91 > 9;
      v91 /= 0xAu;
    }

    while (v26);
    v96 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
    v97 = &v137;
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v96 = v137.__r_.__value_.__l.__size_;
      v97 = v137.__r_.__value_.__r.__words[0];
    }

    if (v96)
    {
      v98 = (v97 + v96 - 1);
      if (v98 > v97)
      {
        v99 = &v97->__r_.__value_.__s.__data_[1];
        do
        {
          v100 = *(v99 - 1);
          *(v99 - 1) = v98->__r_.__value_.__s.__data_[0];
          v98->__r_.__value_.__s.__data_[0] = v100;
          v98 = (v98 - 1);
          v33 = v99++ >= v98;
        }

        while (!v33);
      }
    }

    v101 = std::string::insert(&v137, 0, "exprtk.hpp:", 0xBuLL);
    v102 = *&v101->__r_.__value_.__l.__data_;
    v139 = v101->__r_.__value_.__r.__words[2];
    *v138 = v102;
    v101->__r_.__value_.__l.__size_ = 0;
    v101->__r_.__value_.__r.__words[2] = 0;
    v101->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v136, &v143[32], v138, v144);
    v103 = *(a1 + 568);
    v104 = *(a1 + 560);
    v105 = 30 * ((v103 - v104) >> 3) - 1;
    if (v103 == v104)
    {
      v105 = 0;
    }

    if (v105 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v104 = *(a1 + 560);
      v103 = *(a1 + 568);
    }

    if (v103 == v104)
    {
      v107 = 0;
    }

    else
    {
      v106 = *(a1 + 592) + *(a1 + 584);
      v107 = *(v104 + 8 * (v106 / 0x1E)) + 136 * (v106 % 0x1E);
    }

    sub_C398C(v107, v144);
    ++*(a1 + 592);
    if (v152 < 0)
    {
      operator delete(__p);
      if ((v150 & 0x80000000) == 0)
      {
LABEL_188:
        if ((v148 & 0x80000000) == 0)
        {
          goto LABEL_189;
        }

        goto LABEL_201;
      }
    }

    else if ((v150 & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

    operator delete(v149);
    if ((v148 & 0x80000000) == 0)
    {
LABEL_189:
      if ((v146 & 0x80000000) == 0)
      {
        goto LABEL_190;
      }

      goto LABEL_202;
    }

LABEL_201:
    operator delete(v147);
    if ((v146 & 0x80000000) == 0)
    {
LABEL_190:
      if ((SHIBYTE(v139) & 0x80000000) == 0)
      {
        goto LABEL_191;
      }

      goto LABEL_203;
    }

LABEL_202:
    operator delete(v145);
    if ((SHIBYTE(v139) & 0x80000000) == 0)
    {
LABEL_191:
      if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_192;
      }

      goto LABEL_204;
    }

LABEL_203:
    operator delete(v138[0]);
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_192:
      if ((v143[55] & 0x80000000) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_205;
    }

LABEL_204:
    operator delete(v137.__r_.__value_.__l.__data_);
    if ((v143[55] & 0x80000000) == 0)
    {
LABEL_193:
      if ((v143[23] & 0x80000000) == 0)
      {
        goto LABEL_194;
      }

      goto LABEL_206;
    }

LABEL_205:
    operator delete(*&v143[32]);
    if ((v143[23] & 0x80000000) == 0)
    {
LABEL_194:
      if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_195;
      }

      goto LABEL_207;
    }

LABEL_206:
    operator delete(*v143);
    if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_195:
      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_196;
      }

      goto LABEL_208;
    }

LABEL_207:
    operator delete(v142.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_196:
      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_197;
      }

LABEL_209:
      operator delete(v140.__r_.__value_.__l.__data_);
      goto LABEL_197;
    }

LABEL_208:
    operator delete(v141.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_197;
    }

    goto LABEL_209;
  }

  if (*v13 != 44)
  {
    goto LABEL_85;
  }

  v45 = (a1 + 40);
  v46 = (a1 + 48);
  v47 = *(a1 + 24);
  if (*(a1 + 8) == v47)
  {
    *v13 = *v45;
    v48 = (a1 + 48);
    v47 = a1 + 40;
    v49 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_69:
      if ((v49 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v48, *(v47 + 16));
      }

      else
      {
        v50 = *v48;
        *(a1 + 128) = *(v48 + 2);
        *(a1 + 112) = v50;
      }

      goto LABEL_80;
    }
  }

  else
  {
    *(a1 + 24) = v47 + 40;
    v48 = (v47 + 8);
    *(a1 + 104) = *v47;
    if (v13 == v47)
    {
      goto LABEL_80;
    }

    v49 = *(v47 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }
  }

  if ((v49 & 0x80u) == 0)
  {
    v51 = v48;
  }

  else
  {
    v51 = *v48;
  }

  if ((v49 & 0x80u) == 0)
  {
    v52 = v49;
  }

  else
  {
    v52 = *(v47 + 16);
  }

  sub_13B38(a1 + 112, v51, v52);
LABEL_80:
  *(a1 + 136) = *(v47 + 32);
  v157 = sub_C5A5C(a1, 0);
  if (!v157)
  {
    LODWORD(v44) = 1;
    goto LABEL_155;
  }

  if (*v13 != 44)
  {
LABEL_85:
    if (*(a3 + 23) >= 0)
    {
      v55 = *(a3 + 23);
    }

    else
    {
      v55 = a3[1];
    }

    if (v55 + 52 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v55 + 52 > 0x16)
    {
      operator new();
    }

    qmemcpy(v143, "ERR020 - Invalid number of arguments for function: '", 52);
    if (*(a3 + 23) >= 0)
    {
      v56 = a3;
    }

    else
    {
      v56 = *a3;
    }

    memmove(&v143[52], v56, v55);
    v143[v55 + 52] = 0;
    v57 = std::string::append(v143, "'", 1uLL);
    v58 = *&v57->__r_.__value_.__l.__data_;
    *&v143[48] = *(&v57->__r_.__value_.__l + 2);
    *&v143[32] = v58;
    v57->__r_.__value_.__l.__size_ = 0;
    v57->__r_.__value_.__r.__words[2] = 0;
    v57->__r_.__value_.__r.__words[0] = 0;
    v59 = 21190;
    memset(&v141, 0, sizeof(v141));
    do
    {
      if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
      {
        v63 = (v141.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v141.__r_.__value_.__l.__size_ == v63)
        {
          if ((v141.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_103:
          operator new();
        }

        v60 = v141.__r_.__value_.__l.__size_;
        v61 = v141.__r_.__value_.__r.__words[0];
        ++v141.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v141.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_103;
        }

        v60 = HIBYTE(v141.__r_.__value_.__r.__words[2]);
        *(&v141.__r_.__value_.__s + 23) = (*(&v141.__r_.__value_.__s + 23) + 1) & 0x7F;
        v61 = &v141;
      }

      v62 = v61 + v60;
      *v62 = (v59 % 0xA) | 0x30;
      v62[1] = 0;
      v26 = v59 > 9;
      v59 /= 0xAu;
    }

    while (v26);
    v64 = HIBYTE(v141.__r_.__value_.__r.__words[2]);
    v65 = &v141;
    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v64 = v141.__r_.__value_.__l.__size_;
      v65 = v141.__r_.__value_.__r.__words[0];
    }

    if (v64)
    {
      v66 = (v65 + v64 - 1);
      if (v66 > v65)
      {
        v67 = &v65->__r_.__value_.__s.__data_[1];
        do
        {
          v68 = *(v67 - 1);
          *(v67 - 1) = v66->__r_.__value_.__s.__data_[0];
          v66->__r_.__value_.__s.__data_[0] = v68;
          v66 = (v66 - 1);
          v33 = v67++ >= v66;
        }

        while (!v33);
      }
    }

    v69 = std::string::insert(&v141, 0, "exprtk.hpp:", 0xBuLL);
    v35 = a1;
    v70 = *&v69->__r_.__value_.__l.__data_;
    v142.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
    *&v142.__r_.__value_.__l.__data_ = v70;
    v69->__r_.__value_.__l.__size_ = 0;
    v69->__r_.__value_.__r.__words[2] = 0;
    v69->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v136, &v143[32], &v142.__r_.__value_.__l.__data_, v144);
    v71 = *(a1 + 568);
    v72 = *(a1 + 560);
    v73 = 30 * ((v71 - v72) >> 3) - 1;
    if (v71 == v72)
    {
      v73 = 0;
    }

    if (v73 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v72 = *(a1 + 560);
      v71 = *(a1 + 568);
    }

    if (v71 == v72)
    {
      v41 = 0;
    }

    else
    {
      v74 = *(a1 + 592) + *(a1 + 584);
      v41 = *(v72 + 8 * (v74 / 0x1E)) + 136 * (v74 % 0x1E);
    }

    goto LABEL_119;
  }

  v53 = *(a1 + 24);
  if (*(a1 + 8) == v53)
  {
    *v13 = *v45;
    v54 = (a1 + 48);
    v53 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v53 + 40;
    v54 = (v53 + 8);
    *(a1 + 104) = *v53;
    if (v13 == v53)
    {
      goto LABEL_149;
    }
  }

  v75 = *(v53 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v75 >= 0)
    {
      v77 = v54;
    }

    else
    {
      v77 = *v54;
    }

    if (v75 >= 0)
    {
      v78 = *(v53 + 31);
    }

    else
    {
      v78 = *(v53 + 16);
    }

    sub_13B38(a1 + 112, v77, v78);
  }

  else if ((*(v53 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v54, *(v53 + 16));
  }

  else
  {
    v76 = *v54;
    *(a1 + 128) = v54[2];
    *(a1 + 112) = v76;
  }

LABEL_149:
  *(a1 + 136) = *(v53 + 32);
  v158 = sub_C5A5C(a1, 0);
  if (!v158)
  {
    LODWORD(v44) = 2;
    goto LABEL_155;
  }

  if (*v13 == 41)
  {
    v79 = *(a1 + 24);
    if (*(a1 + 8) == v79)
    {
      *v13 = *v45;
    }

    else
    {
      *(a1 + 24) = v79 + 10;
      v46 = (v79 + 2);
      *(a1 + 104) = *v79;
      v45 = v79;
      if (v13 == v79)
      {
        goto LABEL_256;
      }
    }

    v130 = *(v45 + 31);
    if (*(a1 + 135) < 0)
    {
      if (v130 >= 0)
      {
        v132 = v46;
      }

      else
      {
        v132 = *v46;
      }

      if (v130 >= 0)
      {
        v133 = *(v45 + 31);
      }

      else
      {
        v133 = *(v45 + 2);
      }

      sub_13B38(a1 + 112, v132, v133);
    }

    else if ((*(v45 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 112), *v46, *(v45 + 2));
    }

    else
    {
      v131 = *v46;
      *(a1 + 128) = v46[2];
      *(a1 + 112) = v131;
    }

LABEL_256:
    *(a1 + 136) = *(v45 + 4);
    v134 = sub_22A9B8(a1 + 344, a2, &v156);
    v135 = v134;
    if (v134)
    {
      if ((*(*v134 + 32))(v134) == 2)
      {
        v108 = v135;
LABEL_266:
        v153[0] = 0;
        goto LABEL_198;
      }

      v108 = 0;
      if (!v156)
      {
        goto LABEL_266;
      }

      if (!v157)
      {
        goto LABEL_266;
      }

      if (!v158)
      {
        goto LABEL_266;
      }

      if (*(a2 + 32) == 3)
      {
        v108 = v135;
        if (sub_22AC8C(v135, &v156))
        {
          goto LABEL_266;
        }
      }

      sub_1CD05C(*(a1 + 352), &v156);
    }

    v108 = 0;
    goto LABEL_266;
  }

  if (*(a3 + 23) >= 0)
  {
    v110 = *(a3 + 23);
  }

  else
  {
    v110 = a3[1];
  }

  if (v110 + 52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v110 + 52 > 0x16)
  {
    operator new();
  }

  qmemcpy(v143, "ERR021 - Invalid number of arguments for function: '", 52);
  if (*(a3 + 23) >= 0)
  {
    v111 = a3;
  }

  else
  {
    v111 = *a3;
  }

  memmove(&v143[52], v111, v110);
  v143[v110 + 52] = 0;
  v112 = std::string::append(v143, "'", 1uLL);
  v113 = *&v112->__r_.__value_.__l.__data_;
  *&v143[48] = *(&v112->__r_.__value_.__l + 2);
  *&v143[32] = v113;
  v112->__r_.__value_.__l.__size_ = 0;
  v112->__r_.__value_.__r.__words[2] = 0;
  v112->__r_.__value_.__r.__words[0] = 0;
  v114 = 21203;
  memset(&v141, 0, sizeof(v141));
  do
  {
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      v118 = (v141.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v141.__r_.__value_.__l.__size_ == v118)
      {
        if ((v141.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_228:
        operator new();
      }

      v115 = v141.__r_.__value_.__l.__size_;
      v116 = v141.__r_.__value_.__r.__words[0];
      ++v141.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v141.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_228;
      }

      v115 = HIBYTE(v141.__r_.__value_.__r.__words[2]);
      *(&v141.__r_.__value_.__s + 23) = (*(&v141.__r_.__value_.__s + 23) + 1) & 0x7F;
      v116 = &v141;
    }

    v117 = v116 + v115;
    *v117 = (v114 % 0xA) | 0x30;
    v117[1] = 0;
    v26 = v114 > 9;
    v114 /= 0xAu;
  }

  while (v26);
  v119 = HIBYTE(v141.__r_.__value_.__r.__words[2]);
  v120 = &v141;
  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v119 = v141.__r_.__value_.__l.__size_;
    v120 = v141.__r_.__value_.__r.__words[0];
  }

  if (v119)
  {
    v121 = (v120 + v119 - 1);
    if (v121 > v120)
    {
      v122 = &v120->__r_.__value_.__s.__data_[1];
      do
      {
        v123 = *(v122 - 1);
        *(v122 - 1) = v121->__r_.__value_.__s.__data_[0];
        v121->__r_.__value_.__s.__data_[0] = v123;
        v121 = (v121 - 1);
        v33 = v122++ >= v121;
      }

      while (!v33);
    }
  }

  v124 = std::string::insert(&v141, 0, "exprtk.hpp:", 0xBuLL);
  v35 = a1;
  v125 = *&v124->__r_.__value_.__l.__data_;
  v142.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
  *&v142.__r_.__value_.__l.__data_ = v125;
  v124->__r_.__value_.__l.__size_ = 0;
  v124->__r_.__value_.__r.__words[2] = 0;
  v124->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v136, &v143[32], &v142.__r_.__value_.__l.__data_, v144);
  v126 = *(a1 + 568);
  v127 = *(a1 + 560);
  v128 = 30 * ((v126 - v127) >> 3) - 1;
  if (v126 == v127)
  {
    v128 = 0;
  }

  if (v128 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v127 = *(a1 + 560);
    v126 = *(a1 + 568);
  }

  if (v126 == v127)
  {
    v41 = 0;
  }

  else
  {
    v129 = *(a1 + 592) + *(a1 + 584);
    v41 = *(v127 + 8 * (v129 / 0x1E)) + 136 * (v129 % 0x1E);
  }

LABEL_119:
  sub_C398C(v41, v144);
  ++*(v35 + 592);
  if (v152 < 0)
  {
    operator delete(__p);
    if ((v150 & 0x80000000) == 0)
    {
LABEL_121:
      if ((v148 & 0x80000000) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_130;
    }
  }

  else if ((v150 & 0x80000000) == 0)
  {
    goto LABEL_121;
  }

  operator delete(v149);
  if ((v148 & 0x80000000) == 0)
  {
LABEL_122:
    if ((v146 & 0x80000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_131;
  }

LABEL_130:
  operator delete(v147);
  if ((v146 & 0x80000000) == 0)
  {
LABEL_123:
    if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_132;
  }

LABEL_131:
  operator delete(v145);
  if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_124:
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_133;
  }

LABEL_132:
  operator delete(v142.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_125:
    if ((v143[55] & 0x80000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_134;
  }

LABEL_133:
  operator delete(v141.__r_.__value_.__l.__data_);
  if ((v143[55] & 0x80000000) == 0)
  {
LABEL_126:
    if ((v143[23] & 0x80000000) != 0)
    {
      goto LABEL_135;
    }

    goto LABEL_197;
  }

LABEL_134:
  operator delete(*&v143[32]);
  if ((v143[23] & 0x80000000) != 0)
  {
LABEL_135:
    operator delete(*v143);
  }

LABEL_197:
  v108 = 0;
LABEL_198:
  sub_1EB0E4(v153);
  return v108;
}

void sub_20F004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (a42 < 0)
  {
    operator delete(__p);
    if (a35 < 0)
    {
LABEL_5:
      operator delete(a30);
      if ((a56 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a35 < 0)
  {
    goto LABEL_5;
  }

  if ((a56 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a49 & 0x80000000) == 0)
    {
LABEL_11:
      sub_1EB0E4(v58 - 152);
      _Unwind_Resume(a1);
    }

LABEL_10:
    operator delete(a44);
    goto LABEL_11;
  }

LABEL_9:
  operator delete(a51);
  if ((a49 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

uint64_t sub_20F334(uint64_t a1, uint64_t a2, const void **a3)
{
  v161 = 0u;
  v162 = 0u;
  v158[0] = 1;
  v159 = a1;
  v160 = &v161;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  v141 = a1 + 104;
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v148, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v148[48], v19, v18);
    v148[v18 + 48] = 0;
    v20 = std::string::append(v148, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v148[48] = *(&v20->__r_.__value_.__l + 2);
    *&v148[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v146, 0, sizeof(v146));
    do
    {
      if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v146.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v146.__r_.__value_.__l.__size_ == v27)
        {
          if ((v146.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v146.__r_.__value_.__l.__size_;
        v24 = v146.__r_.__value_.__r.__words[0];
        ++v146.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v146.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v146.__r_.__value_.__r.__words[2]);
        *(&v146.__r_.__value_.__s + 23) = (*(&v146.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v146;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
    }

    while (v26);
    v28 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
    v29 = &v146;
    if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v146.__r_.__value_.__l.__size_;
      v29 = v146.__r_.__value_.__r.__words[0];
    }

    if (v28)
    {
      v30 = (v29 + v28 - 1);
      if (v30 > v29)
      {
        v31 = &v29->__r_.__value_.__s.__data_[1];
        do
        {
          v32 = *(v31 - 1);
          *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
          v30->__r_.__value_.__s.__data_[0] = v32;
          v30 = (v30 - 1);
          v33 = v31++ >= v30;
        }

        while (!v33);
      }
    }

    v34 = std::string::insert(&v146, 0, "exprtk.hpp:", 0xBuLL);
    v35 = a1;
    v36 = *&v34->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v36;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v141, &v148[32], &v147.__r_.__value_.__l.__data_, v149);
    v37 = *(a1 + 568);
    v38 = *(a1 + 560);
    v39 = 30 * ((v37 - v38) >> 3) - 1;
    if (v37 == v38)
    {
      v39 = 0;
    }

    if (v39 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v38 = *(a1 + 560);
      v37 = *(a1 + 568);
    }

    if (v37 == v38)
    {
      v41 = 0;
    }

    else
    {
      v40 = *(a1 + 592) + *(a1 + 584);
      v41 = *(v38 + 8 * (v40 / 0x1E)) + 136 * (v40 % 0x1E);
    }

    goto LABEL_137;
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_64;
    }
  }

  else
  {
    *(a1 + 24) = v14 + 40;
    v15 = (v14 + 8);
    *(a1 + 104) = *v14;
    if (v13 == v14)
    {
      goto LABEL_64;
    }

    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((v16 & 0x80u) == 0)
  {
    v42 = v15;
  }

  else
  {
    v42 = *v15;
  }

  if ((v16 & 0x80u) == 0)
  {
    v43 = v16;
  }

  else
  {
    v43 = *(v14 + 16);
  }

  sub_13B38(a1 + 112, v42, v43);
LABEL_64:
  *(a1 + 136) = *(v14 + 32);
  v44 = sub_C5A5C(a1, 0);
  v161.i64[0] = v44;
  if (!v44)
  {
LABEL_173:
    sub_C00FC(v44, &v145);
    v86 = std::string::insert(&v145, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
    v87 = *&v86->__r_.__value_.__l.__data_;
    v146.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
    *&v146.__r_.__value_.__l.__data_ = v87;
    v86->__r_.__value_.__l.__size_ = 0;
    v86->__r_.__value_.__r.__words[2] = 0;
    v86->__r_.__value_.__r.__words[0] = 0;
    v88 = std::string::append(&v146, " for function: '", 0x10uLL);
    v89 = *&v88->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v89;
    v88->__r_.__value_.__l.__size_ = 0;
    v88->__r_.__value_.__r.__words[2] = 0;
    v88->__r_.__value_.__r.__words[0] = 0;
    v90 = *(a3 + 23);
    if (v90 >= 0)
    {
      v91 = a3;
    }

    else
    {
      v91 = *a3;
    }

    if (v90 >= 0)
    {
      v92 = *(a3 + 23);
    }

    else
    {
      v92 = a3[1];
    }

    v93 = std::string::append(&v147, v91, v92);
    v94 = *&v93->__r_.__value_.__l.__data_;
    *&v148[16] = *(&v93->__r_.__value_.__l + 2);
    *v148 = v94;
    v93->__r_.__value_.__l.__size_ = 0;
    v93->__r_.__value_.__r.__words[2] = 0;
    v93->__r_.__value_.__r.__words[0] = 0;
    v95 = std::string::append(v148, "'", 1uLL);
    v96 = *&v95->__r_.__value_.__l.__data_;
    *&v148[48] = *(&v95->__r_.__value_.__l + 2);
    *&v148[32] = v96;
    v95->__r_.__value_.__l.__size_ = 0;
    v95->__r_.__value_.__r.__words[2] = 0;
    v95->__r_.__value_.__r.__words[0] = 0;
    v97 = 21178;
    memset(&v142, 0, sizeof(v142));
    do
    {
      if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
      {
        v101 = (v142.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v142.__r_.__value_.__l.__size_ == v101)
        {
          if ((v142.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_188:
          operator new();
        }

        v98 = v142.__r_.__value_.__l.__size_;
        v99 = v142.__r_.__value_.__r.__words[0];
        ++v142.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v142.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_188;
        }

        v98 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
        *(&v142.__r_.__value_.__s + 23) = (*(&v142.__r_.__value_.__s + 23) + 1) & 0x7F;
        v99 = &v142;
      }

      v100 = v99 + v98;
      *v100 = (v97 % 0xA) | 0x30;
      v100[1] = 0;
      v26 = v97 > 9;
      v97 /= 0xAu;
    }

    while (v26);
    v102 = HIBYTE(v142.__r_.__value_.__r.__words[2]);
    v103 = &v142;
    if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v102 = v142.__r_.__value_.__l.__size_;
      v103 = v142.__r_.__value_.__r.__words[0];
    }

    if (v102)
    {
      v104 = (v103 + v102 - 1);
      if (v104 > v103)
      {
        v105 = &v103->__r_.__value_.__s.__data_[1];
        do
        {
          v106 = *(v105 - 1);
          *(v105 - 1) = v104->__r_.__value_.__s.__data_[0];
          v104->__r_.__value_.__s.__data_[0] = v106;
          v104 = (v104 - 1);
          v33 = v105++ >= v104;
        }

        while (!v33);
      }
    }

    v107 = std::string::insert(&v142, 0, "exprtk.hpp:", 0xBuLL);
    v108 = *&v107->__r_.__value_.__l.__data_;
    v144 = v107->__r_.__value_.__r.__words[2];
    *v143 = v108;
    v107->__r_.__value_.__l.__size_ = 0;
    v107->__r_.__value_.__r.__words[2] = 0;
    v107->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v141, &v148[32], v143, v149);
    v109 = *(a1 + 568);
    v110 = *(a1 + 560);
    v111 = 30 * ((v109 - v110) >> 3) - 1;
    if (v109 == v110)
    {
      v111 = 0;
    }

    if (v111 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v110 = *(a1 + 560);
      v109 = *(a1 + 568);
    }

    if (v109 == v110)
    {
      v113 = 0;
    }

    else
    {
      v112 = *(a1 + 592) + *(a1 + 584);
      v113 = *(v110 + 8 * (v112 / 0x1E)) + 136 * (v112 % 0x1E);
    }

    sub_C398C(v113, v149);
    ++*(a1 + 592);
    if (v157 < 0)
    {
      operator delete(__p);
      if ((v155 & 0x80000000) == 0)
      {
LABEL_206:
        if ((v153 & 0x80000000) == 0)
        {
          goto LABEL_207;
        }

        goto LABEL_219;
      }
    }

    else if ((v155 & 0x80000000) == 0)
    {
      goto LABEL_206;
    }

    operator delete(v154);
    if ((v153 & 0x80000000) == 0)
    {
LABEL_207:
      if ((v151 & 0x80000000) == 0)
      {
        goto LABEL_208;
      }

      goto LABEL_220;
    }

LABEL_219:
    operator delete(v152);
    if ((v151 & 0x80000000) == 0)
    {
LABEL_208:
      if ((SHIBYTE(v144) & 0x80000000) == 0)
      {
        goto LABEL_209;
      }

      goto LABEL_221;
    }

LABEL_220:
    operator delete(v150);
    if ((SHIBYTE(v144) & 0x80000000) == 0)
    {
LABEL_209:
      if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_210;
      }

      goto LABEL_222;
    }

LABEL_221:
    operator delete(v143[0]);
    if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_210:
      if ((v148[55] & 0x80000000) == 0)
      {
        goto LABEL_211;
      }

      goto LABEL_223;
    }

LABEL_222:
    operator delete(v142.__r_.__value_.__l.__data_);
    if ((v148[55] & 0x80000000) == 0)
    {
LABEL_211:
      if ((v148[23] & 0x80000000) == 0)
      {
        goto LABEL_212;
      }

      goto LABEL_224;
    }

LABEL_223:
    operator delete(*&v148[32]);
    if ((v148[23] & 0x80000000) == 0)
    {
LABEL_212:
      if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_213;
      }

      goto LABEL_225;
    }

LABEL_224:
    operator delete(*v148);
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_213:
      if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_214;
      }

      goto LABEL_226;
    }

LABEL_225:
    operator delete(v147.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_214:
      if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_215;
      }

LABEL_227:
      operator delete(v145.__r_.__value_.__l.__data_);
      goto LABEL_215;
    }

LABEL_226:
    operator delete(v146.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_215;
    }

    goto LABEL_227;
  }

  if (*v13 != 44)
  {
    goto LABEL_103;
  }

  v45 = (a1 + 40);
  v46 = (a1 + 48);
  v47 = *(a1 + 24);
  if (*(a1 + 8) == v47)
  {
    *v13 = *v45;
    v48 = (a1 + 48);
    v47 = a1 + 40;
    v49 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_69:
      if ((v49 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v48, *(v47 + 16));
      }

      else
      {
        v50 = *v48;
        *(a1 + 128) = *(v48 + 2);
        *(a1 + 112) = v50;
      }

      goto LABEL_80;
    }
  }

  else
  {
    *(a1 + 24) = v47 + 40;
    v48 = (v47 + 8);
    *(a1 + 104) = *v47;
    if (v13 == v47)
    {
      goto LABEL_80;
    }

    v49 = *(v47 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }
  }

  if ((v49 & 0x80u) == 0)
  {
    v51 = v48;
  }

  else
  {
    v51 = *v48;
  }

  if ((v49 & 0x80u) == 0)
  {
    v52 = v49;
  }

  else
  {
    v52 = *(v47 + 16);
  }

  sub_13B38(a1 + 112, v51, v52);
LABEL_80:
  *(a1 + 136) = *(v47 + 32);
  v161.i64[1] = sub_C5A5C(a1, 0);
  if (!v161.i64[1])
  {
    LODWORD(v44) = 1;
    goto LABEL_173;
  }

  if (*v13 != 44)
  {
    goto LABEL_103;
  }

  v53 = *(a1 + 24);
  if (*(a1 + 8) == v53)
  {
    *v13 = *v45;
    v54 = (a1 + 48);
    v53 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v53 + 40;
    v54 = (v53 + 8);
    *(a1 + 104) = *v53;
    if (v13 == v53)
    {
      goto LABEL_98;
    }
  }

  v55 = *(v53 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v55 >= 0)
    {
      v57 = v54;
    }

    else
    {
      v57 = *v54;
    }

    if (v55 >= 0)
    {
      v58 = *(v53 + 31);
    }

    else
    {
      v58 = *(v53 + 16);
    }

    sub_13B38(a1 + 112, v57, v58);
  }

  else if ((*(v53 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v54, *(v53 + 16));
  }

  else
  {
    v56 = *v54;
    *(a1 + 128) = v54[2];
    *(a1 + 112) = v56;
  }

LABEL_98:
  *(a1 + 136) = *(v53 + 32);
  v162.i64[0] = sub_C5A5C(a1, 0);
  if (!v162.i64[0])
  {
    LODWORD(v44) = 2;
    goto LABEL_173;
  }

  if (*v13 != 44)
  {
LABEL_103:
    if (*(a3 + 23) >= 0)
    {
      v61 = *(a3 + 23);
    }

    else
    {
      v61 = a3[1];
    }

    if (v61 + 52 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v61 + 52 > 0x16)
    {
      operator new();
    }

    qmemcpy(v148, "ERR020 - Invalid number of arguments for function: '", 52);
    if (*(a3 + 23) >= 0)
    {
      v62 = a3;
    }

    else
    {
      v62 = *a3;
    }

    memmove(&v148[52], v62, v61);
    v148[v61 + 52] = 0;
    v63 = std::string::append(v148, "'", 1uLL);
    v64 = *&v63->__r_.__value_.__l.__data_;
    *&v148[48] = *(&v63->__r_.__value_.__l + 2);
    *&v148[32] = v64;
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    v65 = 21190;
    memset(&v146, 0, sizeof(v146));
    do
    {
      if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
      {
        v69 = (v146.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v146.__r_.__value_.__l.__size_ == v69)
        {
          if ((v146.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_121:
          operator new();
        }

        v66 = v146.__r_.__value_.__l.__size_;
        v67 = v146.__r_.__value_.__r.__words[0];
        ++v146.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v146.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_121;
        }

        v66 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
        *(&v146.__r_.__value_.__s + 23) = (*(&v146.__r_.__value_.__s + 23) + 1) & 0x7F;
        v67 = &v146;
      }

      v68 = v67 + v66;
      *v68 = (v65 % 0xA) | 0x30;
      v68[1] = 0;
      v26 = v65 > 9;
      v65 /= 0xAu;
    }

    while (v26);
    v70 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
    v71 = &v146;
    if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v70 = v146.__r_.__value_.__l.__size_;
      v71 = v146.__r_.__value_.__r.__words[0];
    }

    if (v70)
    {
      v72 = (v71 + v70 - 1);
      if (v72 > v71)
      {
        v73 = &v71->__r_.__value_.__s.__data_[1];
        do
        {
          v74 = *(v73 - 1);
          *(v73 - 1) = v72->__r_.__value_.__s.__data_[0];
          v72->__r_.__value_.__s.__data_[0] = v74;
          v72 = (v72 - 1);
          v33 = v73++ >= v72;
        }

        while (!v33);
      }
    }

    v75 = std::string::insert(&v146, 0, "exprtk.hpp:", 0xBuLL);
    v35 = a1;
    v76 = *&v75->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v76;
    v75->__r_.__value_.__l.__size_ = 0;
    v75->__r_.__value_.__r.__words[2] = 0;
    v75->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v141, &v148[32], &v147.__r_.__value_.__l.__data_, v149);
    v77 = *(a1 + 568);
    v78 = *(a1 + 560);
    v79 = 30 * ((v77 - v78) >> 3) - 1;
    if (v77 == v78)
    {
      v79 = 0;
    }

    if (v79 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v78 = *(a1 + 560);
      v77 = *(a1 + 568);
    }

    if (v77 == v78)
    {
      v41 = 0;
    }

    else
    {
      v80 = *(a1 + 592) + *(a1 + 584);
      v41 = *(v78 + 8 * (v80 / 0x1E)) + 136 * (v80 % 0x1E);
    }

    goto LABEL_137;
  }

  v59 = *(a1 + 24);
  if (*(a1 + 8) == v59)
  {
    *v13 = *v45;
    v60 = (a1 + 48);
    v59 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v59 + 40;
    v60 = (v59 + 8);
    *(a1 + 104) = *v59;
    if (v13 == v59)
    {
      goto LABEL_167;
    }
  }

  v81 = *(v59 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v81 >= 0)
    {
      v83 = v60;
    }

    else
    {
      v83 = *v60;
    }

    if (v81 >= 0)
    {
      v84 = *(v59 + 31);
    }

    else
    {
      v84 = *(v59 + 16);
    }

    sub_13B38(a1 + 112, v83, v84);
  }

  else if ((*(v59 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v60, *(v59 + 16));
  }

  else
  {
    v82 = *v60;
    *(a1 + 128) = v60[2];
    *(a1 + 112) = v82;
  }

LABEL_167:
  *(a1 + 136) = *(v59 + 32);
  v162.i64[1] = sub_C5A5C(a1, 0);
  if (!v162.i64[1])
  {
    LODWORD(v44) = 3;
    goto LABEL_173;
  }

  if (*v13 == 41)
  {
    v85 = *(a1 + 24);
    if (*(a1 + 8) == v85)
    {
      *v13 = *v45;
    }

    else
    {
      *(a1 + 24) = v85 + 10;
      v46 = (v85 + 2);
      *(a1 + 104) = *v85;
      v45 = v85;
      if (v13 == v85)
      {
        goto LABEL_274;
      }
    }

    v136 = *(v45 + 31);
    if (*(a1 + 135) < 0)
    {
      if (v136 >= 0)
      {
        v138 = v46;
      }

      else
      {
        v138 = *v46;
      }

      if (v136 >= 0)
      {
        v139 = *(v45 + 31);
      }

      else
      {
        v139 = *(v45 + 2);
      }

      sub_13B38(a1 + 112, v138, v139);
    }

    else if ((*(v45 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 112), *v46, *(v45 + 2));
    }

    else
    {
      v137 = *v46;
      *(a1 + 128) = v46[2];
      *(a1 + 112) = v137;
    }

LABEL_274:
    *(a1 + 136) = *(v45 + 4);
    v140 = sub_22B1B4(a1 + 344, a2, &v161);
    v114 = v140;
    if (!v140 || (*(*v140 + 32))(v140) == 2)
    {
      goto LABEL_281;
    }

    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(v161), vceqzq_s64(v162)))) & 1) == 0)
    {
      if (*(a2 + 32) == 4 && (sub_22B4D4(v114, &v161) & 1) != 0)
      {
        goto LABEL_281;
      }

      sub_1CE09C(*(a1 + 352), &v161);
    }

    v114 = 0;
LABEL_281:
    v158[0] = 0;
    goto LABEL_216;
  }

  if (*(a3 + 23) >= 0)
  {
    v116 = *(a3 + 23);
  }

  else
  {
    v116 = a3[1];
  }

  if (v116 + 52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v116 + 52 > 0x16)
  {
    operator new();
  }

  qmemcpy(v148, "ERR021 - Invalid number of arguments for function: '", 52);
  if (*(a3 + 23) >= 0)
  {
    v117 = a3;
  }

  else
  {
    v117 = *a3;
  }

  memmove(&v148[52], v117, v116);
  v148[v116 + 52] = 0;
  v118 = std::string::append(v148, "'", 1uLL);
  v119 = *&v118->__r_.__value_.__l.__data_;
  *&v148[48] = *(&v118->__r_.__value_.__l + 2);
  *&v148[32] = v119;
  v118->__r_.__value_.__l.__size_ = 0;
  v118->__r_.__value_.__r.__words[2] = 0;
  v118->__r_.__value_.__r.__words[0] = 0;
  v120 = 21203;
  memset(&v146, 0, sizeof(v146));
  do
  {
    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      v124 = (v146.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v146.__r_.__value_.__l.__size_ == v124)
      {
        if ((v146.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_246:
        operator new();
      }

      v121 = v146.__r_.__value_.__l.__size_;
      v122 = v146.__r_.__value_.__r.__words[0];
      ++v146.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v146.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_246;
      }

      v121 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
      *(&v146.__r_.__value_.__s + 23) = (*(&v146.__r_.__value_.__s + 23) + 1) & 0x7F;
      v122 = &v146;
    }

    v123 = v122 + v121;
    *v123 = (v120 % 0xA) | 0x30;
    v123[1] = 0;
    v26 = v120 > 9;
    v120 /= 0xAu;
  }

  while (v26);
  v125 = HIBYTE(v146.__r_.__value_.__r.__words[2]);
  v126 = &v146;
  if ((v146.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v125 = v146.__r_.__value_.__l.__size_;
    v126 = v146.__r_.__value_.__r.__words[0];
  }

  if (v125)
  {
    v127 = (v126 + v125 - 1);
    if (v127 > v126)
    {
      v128 = &v126->__r_.__value_.__s.__data_[1];
      do
      {
        v129 = *(v128 - 1);
        *(v128 - 1) = v127->__r_.__value_.__s.__data_[0];
        v127->__r_.__value_.__s.__data_[0] = v129;
        v127 = (v127 - 1);
        v33 = v128++ >= v127;
      }

      while (!v33);
    }
  }

  v130 = std::string::insert(&v146, 0, "exprtk.hpp:", 0xBuLL);
  v35 = a1;
  v131 = *&v130->__r_.__value_.__l.__data_;
  v147.__r_.__value_.__r.__words[2] = v130->__r_.__value_.__r.__words[2];
  *&v147.__r_.__value_.__l.__data_ = v131;
  v130->__r_.__value_.__l.__size_ = 0;
  v130->__r_.__value_.__r.__words[2] = 0;
  v130->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v141, &v148[32], &v147.__r_.__value_.__l.__data_, v149);
  v132 = *(a1 + 568);
  v133 = *(a1 + 560);
  v134 = 30 * ((v132 - v133) >> 3) - 1;
  if (v132 == v133)
  {
    v134 = 0;
  }

  if (v134 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v133 = *(a1 + 560);
    v132 = *(a1 + 568);
  }

  if (v132 == v133)
  {
    v41 = 0;
  }

  else
  {
    v135 = *(a1 + 592) + *(a1 + 584);
    v41 = *(v133 + 8 * (v135 / 0x1E)) + 136 * (v135 % 0x1E);
  }

LABEL_137:
  sub_C398C(v41, v149);
  ++*(v35 + 592);
  if (v157 < 0)
  {
    operator delete(__p);
    if ((v155 & 0x80000000) == 0)
    {
LABEL_139:
      if ((v153 & 0x80000000) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_148;
    }
  }

  else if ((v155 & 0x80000000) == 0)
  {
    goto LABEL_139;
  }

  operator delete(v154);
  if ((v153 & 0x80000000) == 0)
  {
LABEL_140:
    if ((v151 & 0x80000000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_149;
  }

LABEL_148:
  operator delete(v152);
  if ((v151 & 0x80000000) == 0)
  {
LABEL_141:
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_150;
  }

LABEL_149:
  operator delete(v150);
  if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_142:
    if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_151;
  }

LABEL_150:
  operator delete(v147.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v146.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_143:
    if ((v148[55] & 0x80000000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_152;
  }

LABEL_151:
  operator delete(v146.__r_.__value_.__l.__data_);
  if ((v148[55] & 0x80000000) == 0)
  {
LABEL_144:
    if ((v148[23] & 0x80000000) != 0)
    {
      goto LABEL_153;
    }

    goto LABEL_215;
  }

LABEL_152:
  operator delete(*&v148[32]);
  if ((v148[23] & 0x80000000) != 0)
  {
LABEL_153:
    operator delete(*v148);
  }

LABEL_215:
  v114 = 0;
LABEL_216:
  sub_F0508(v158);
  return v114;
}

void sub_210908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (a42 < 0)
  {
    operator delete(__p);
    if (a35 < 0)
    {
LABEL_5:
      operator delete(a30);
      if ((a56 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a35 < 0)
  {
    goto LABEL_5;
  }

  if ((a56 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a49 & 0x80000000) == 0)
    {
LABEL_11:
      sub_F0508(v58 - 168);
      _Unwind_Resume(a1);
    }

LABEL_10:
    operator delete(a44);
    goto LABEL_11;
  }

LABEL_9:
  operator delete(a51);
  if ((a49 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

uint64_t sub_210C38(uint64_t a1, uint64_t a2, const void **a3)
{
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v165[0] = 1;
  v166 = a1;
  v167 = &v168;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  v148 = a1 + 104;
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v155, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v155[48], v19, v18);
    v155[v18 + 48] = 0;
    v20 = std::string::append(v155, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v155[48] = *(&v20->__r_.__value_.__l + 2);
    *&v155[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v153, 0, sizeof(v153));
    do
    {
      if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v153.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v153.__r_.__value_.__l.__size_ == v27)
        {
          if ((v153.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v153.__r_.__value_.__l.__size_;
        v24 = v153.__r_.__value_.__r.__words[0];
        ++v153.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v153.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v153.__r_.__value_.__r.__words[2]);
        *(&v153.__r_.__value_.__s + 23) = (*(&v153.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v153;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
    }

    while (v26);
    v28 = HIBYTE(v153.__r_.__value_.__r.__words[2]);
    v29 = &v153;
    if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v153.__r_.__value_.__l.__size_;
      v29 = v153.__r_.__value_.__r.__words[0];
    }

    if (v28)
    {
      v30 = (v29 + v28 - 1);
      if (v30 > v29)
      {
        v31 = &v29->__r_.__value_.__s.__data_[1];
        do
        {
          v32 = *(v31 - 1);
          *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
          v30->__r_.__value_.__s.__data_[0] = v32;
          v30 = (v30 - 1);
          v33 = v31++ >= v30;
        }

        while (!v33);
      }
    }

    v34 = std::string::insert(&v153, 0, "exprtk.hpp:", 0xBuLL);
    v35 = a1;
    v36 = *&v34->__r_.__value_.__l.__data_;
    v154.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v154.__r_.__value_.__l.__data_ = v36;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v148, &v155[32], &v154.__r_.__value_.__l.__data_, v156);
    v37 = *(a1 + 568);
    v38 = *(a1 + 560);
    v39 = 30 * ((v37 - v38) >> 3) - 1;
    if (v37 == v38)
    {
      v39 = 0;
    }

    if (v39 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v38 = *(a1 + 560);
      v37 = *(a1 + 568);
    }

    if (v37 == v38)
    {
      v41 = 0;
    }

    else
    {
      v40 = *(a1 + 592) + *(a1 + 584);
      v41 = *(v38 + 8 * (v40 / 0x1E)) + 136 * (v40 % 0x1E);
    }

    goto LABEL_155;
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_64;
    }
  }

  else
  {
    *(a1 + 24) = v14 + 40;
    v15 = (v14 + 8);
    *(a1 + 104) = *v14;
    if (v13 == v14)
    {
      goto LABEL_64;
    }

    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((v16 & 0x80u) == 0)
  {
    v42 = v15;
  }

  else
  {
    v42 = *v15;
  }

  if ((v16 & 0x80u) == 0)
  {
    v43 = v16;
  }

  else
  {
    v43 = *(v14 + 16);
  }

  sub_13B38(a1 + 112, v42, v43);
LABEL_64:
  *(a1 + 136) = *(v14 + 32);
  v44 = sub_C5A5C(a1, 0);
  v168.i64[0] = v44;
  if (!v44)
  {
LABEL_191:
    sub_C00FC(v44, &v152);
    v92 = std::string::insert(&v152, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
    v93 = *&v92->__r_.__value_.__l.__data_;
    v153.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
    *&v153.__r_.__value_.__l.__data_ = v93;
    v92->__r_.__value_.__l.__size_ = 0;
    v92->__r_.__value_.__r.__words[2] = 0;
    v92->__r_.__value_.__r.__words[0] = 0;
    v94 = std::string::append(&v153, " for function: '", 0x10uLL);
    v95 = *&v94->__r_.__value_.__l.__data_;
    v154.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
    *&v154.__r_.__value_.__l.__data_ = v95;
    v94->__r_.__value_.__l.__size_ = 0;
    v94->__r_.__value_.__r.__words[2] = 0;
    v94->__r_.__value_.__r.__words[0] = 0;
    v96 = *(a3 + 23);
    if (v96 >= 0)
    {
      v97 = a3;
    }

    else
    {
      v97 = *a3;
    }

    if (v96 >= 0)
    {
      v98 = *(a3 + 23);
    }

    else
    {
      v98 = a3[1];
    }

    v99 = std::string::append(&v154, v97, v98);
    v100 = *&v99->__r_.__value_.__l.__data_;
    *&v155[16] = *(&v99->__r_.__value_.__l + 2);
    *v155 = v100;
    v99->__r_.__value_.__l.__size_ = 0;
    v99->__r_.__value_.__r.__words[2] = 0;
    v99->__r_.__value_.__r.__words[0] = 0;
    v101 = std::string::append(v155, "'", 1uLL);
    v102 = *&v101->__r_.__value_.__l.__data_;
    *&v155[48] = *(&v101->__r_.__value_.__l + 2);
    *&v155[32] = v102;
    v101->__r_.__value_.__l.__size_ = 0;
    v101->__r_.__value_.__r.__words[2] = 0;
    v101->__r_.__value_.__r.__words[0] = 0;
    v103 = 21178;
    memset(&v149, 0, sizeof(v149));
    do
    {
      if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
      {
        v107 = (v149.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v149.__r_.__value_.__l.__size_ == v107)
        {
          if ((v149.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_206:
          operator new();
        }

        v104 = v149.__r_.__value_.__l.__size_;
        v105 = v149.__r_.__value_.__r.__words[0];
        ++v149.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v149.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_206;
        }

        v104 = HIBYTE(v149.__r_.__value_.__r.__words[2]);
        *(&v149.__r_.__value_.__s + 23) = (*(&v149.__r_.__value_.__s + 23) + 1) & 0x7F;
        v105 = &v149;
      }

      v106 = v105 + v104;
      *v106 = (v103 % 0xA) | 0x30;
      v106[1] = 0;
      v26 = v103 > 9;
      v103 /= 0xAu;
    }

    while (v26);
    v108 = HIBYTE(v149.__r_.__value_.__r.__words[2]);
    v109 = &v149;
    if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v108 = v149.__r_.__value_.__l.__size_;
      v109 = v149.__r_.__value_.__r.__words[0];
    }

    if (v108)
    {
      v110 = (v109 + v108 - 1);
      if (v110 > v109)
      {
        v111 = &v109->__r_.__value_.__s.__data_[1];
        do
        {
          v112 = *(v111 - 1);
          *(v111 - 1) = v110->__r_.__value_.__s.__data_[0];
          v110->__r_.__value_.__s.__data_[0] = v112;
          v110 = (v110 - 1);
          v33 = v111++ >= v110;
        }

        while (!v33);
      }
    }

    v113 = std::string::insert(&v149, 0, "exprtk.hpp:", 0xBuLL);
    v114 = *&v113->__r_.__value_.__l.__data_;
    v151 = v113->__r_.__value_.__r.__words[2];
    *v150 = v114;
    v113->__r_.__value_.__l.__size_ = 0;
    v113->__r_.__value_.__r.__words[2] = 0;
    v113->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v148, &v155[32], v150, v156);
    v115 = *(a1 + 568);
    v116 = *(a1 + 560);
    v117 = 30 * ((v115 - v116) >> 3) - 1;
    if (v115 == v116)
    {
      v117 = 0;
    }

    if (v117 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v116 = *(a1 + 560);
      v115 = *(a1 + 568);
    }

    if (v115 == v116)
    {
      v119 = 0;
    }

    else
    {
      v118 = *(a1 + 592) + *(a1 + 584);
      v119 = *(v116 + 8 * (v118 / 0x1E)) + 136 * (v118 % 0x1E);
    }

    sub_C398C(v119, v156);
    ++*(a1 + 592);
    if (v164 < 0)
    {
      operator delete(__p);
      if ((v162 & 0x80000000) == 0)
      {
LABEL_224:
        if ((v160 & 0x80000000) == 0)
        {
          goto LABEL_225;
        }

        goto LABEL_237;
      }
    }

    else if ((v162 & 0x80000000) == 0)
    {
      goto LABEL_224;
    }

    operator delete(v161);
    if ((v160 & 0x80000000) == 0)
    {
LABEL_225:
      if ((v158 & 0x80000000) == 0)
      {
        goto LABEL_226;
      }

      goto LABEL_238;
    }

LABEL_237:
    operator delete(v159);
    if ((v158 & 0x80000000) == 0)
    {
LABEL_226:
      if ((SHIBYTE(v151) & 0x80000000) == 0)
      {
        goto LABEL_227;
      }

      goto LABEL_239;
    }

LABEL_238:
    operator delete(v157);
    if ((SHIBYTE(v151) & 0x80000000) == 0)
    {
LABEL_227:
      if ((SHIBYTE(v149.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_228;
      }

      goto LABEL_240;
    }

LABEL_239:
    operator delete(v150[0]);
    if ((SHIBYTE(v149.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_228:
      if ((v155[55] & 0x80000000) == 0)
      {
        goto LABEL_229;
      }

      goto LABEL_241;
    }

LABEL_240:
    operator delete(v149.__r_.__value_.__l.__data_);
    if ((v155[55] & 0x80000000) == 0)
    {
LABEL_229:
      if ((v155[23] & 0x80000000) == 0)
      {
        goto LABEL_230;
      }

      goto LABEL_242;
    }

LABEL_241:
    operator delete(*&v155[32]);
    if ((v155[23] & 0x80000000) == 0)
    {
LABEL_230:
      if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_231;
      }

      goto LABEL_243;
    }

LABEL_242:
    operator delete(*v155);
    if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_231:
      if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_232;
      }

      goto LABEL_244;
    }

LABEL_243:
    operator delete(v154.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_232:
      if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_233;
      }

LABEL_245:
      operator delete(v152.__r_.__value_.__l.__data_);
      goto LABEL_233;
    }

LABEL_244:
    operator delete(v153.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_245;
  }

  if (*v13 != 44)
  {
    goto LABEL_121;
  }

  v45 = (a1 + 40);
  v46 = (a1 + 48);
  v47 = *(a1 + 24);
  if (*(a1 + 8) == v47)
  {
    *v13 = *v45;
    v48 = (a1 + 48);
    v47 = a1 + 40;
    v49 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_69:
      if ((v49 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v48, *(v47 + 16));
      }

      else
      {
        v50 = *v48;
        *(a1 + 128) = *(v48 + 2);
        *(a1 + 112) = v50;
      }

      goto LABEL_80;
    }
  }

  else
  {
    *(a1 + 24) = v47 + 40;
    v48 = (v47 + 8);
    *(a1 + 104) = *v47;
    if (v13 == v47)
    {
      goto LABEL_80;
    }

    v49 = *(v47 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }
  }

  if ((v49 & 0x80u) == 0)
  {
    v51 = v48;
  }

  else
  {
    v51 = *v48;
  }

  if ((v49 & 0x80u) == 0)
  {
    v52 = v49;
  }

  else
  {
    v52 = *(v47 + 16);
  }

  sub_13B38(a1 + 112, v51, v52);
LABEL_80:
  *(a1 + 136) = *(v47 + 32);
  v168.i64[1] = sub_C5A5C(a1, 0);
  if (!v168.i64[1])
  {
    LODWORD(v44) = 1;
    goto LABEL_191;
  }

  if (*v13 != 44)
  {
    goto LABEL_121;
  }

  v53 = *(a1 + 24);
  if (*(a1 + 8) == v53)
  {
    *v13 = *v45;
    v54 = (a1 + 48);
    v53 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v53 + 40;
    v54 = (v53 + 8);
    *(a1 + 104) = *v53;
    if (v13 == v53)
    {
      goto LABEL_98;
    }
  }

  v55 = *(v53 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v55 >= 0)
    {
      v57 = v54;
    }

    else
    {
      v57 = *v54;
    }

    if (v55 >= 0)
    {
      v58 = *(v53 + 31);
    }

    else
    {
      v58 = *(v53 + 16);
    }

    sub_13B38(a1 + 112, v57, v58);
  }

  else if ((*(v53 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v54, *(v53 + 16));
  }

  else
  {
    v56 = *v54;
    *(a1 + 128) = v54[2];
    *(a1 + 112) = v56;
  }

LABEL_98:
  *(a1 + 136) = *(v53 + 32);
  v169.i64[0] = sub_C5A5C(a1, 0);
  if (!v169.i64[0])
  {
    LODWORD(v44) = 2;
    goto LABEL_191;
  }

  if (*v13 != 44)
  {
    goto LABEL_121;
  }

  v59 = *(a1 + 24);
  if (*(a1 + 8) == v59)
  {
    *v13 = *v45;
    v60 = (a1 + 48);
    v59 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v59 + 40;
    v60 = (v59 + 8);
    *(a1 + 104) = *v59;
    if (v13 == v59)
    {
      goto LABEL_116;
    }
  }

  v61 = *(v59 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v61 >= 0)
    {
      v63 = v60;
    }

    else
    {
      v63 = *v60;
    }

    if (v61 >= 0)
    {
      v64 = *(v59 + 31);
    }

    else
    {
      v64 = *(v59 + 16);
    }

    sub_13B38(a1 + 112, v63, v64);
  }

  else if ((*(v59 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v60, *(v59 + 16));
  }

  else
  {
    v62 = *v60;
    *(a1 + 128) = v60[2];
    *(a1 + 112) = v62;
  }

LABEL_116:
  *(a1 + 136) = *(v59 + 32);
  v169.i64[1] = sub_C5A5C(a1, 0);
  if (!v169.i64[1])
  {
    LODWORD(v44) = 3;
    goto LABEL_191;
  }

  if (*v13 != 44)
  {
LABEL_121:
    if (*(a3 + 23) >= 0)
    {
      v67 = *(a3 + 23);
    }

    else
    {
      v67 = a3[1];
    }

    if (v67 + 52 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v67 + 52 > 0x16)
    {
      operator new();
    }

    qmemcpy(v155, "ERR020 - Invalid number of arguments for function: '", 52);
    if (*(a3 + 23) >= 0)
    {
      v68 = a3;
    }

    else
    {
      v68 = *a3;
    }

    memmove(&v155[52], v68, v67);
    v155[v67 + 52] = 0;
    v69 = std::string::append(v155, "'", 1uLL);
    v70 = *&v69->__r_.__value_.__l.__data_;
    *&v155[48] = *(&v69->__r_.__value_.__l + 2);
    *&v155[32] = v70;
    v69->__r_.__value_.__l.__size_ = 0;
    v69->__r_.__value_.__r.__words[2] = 0;
    v69->__r_.__value_.__r.__words[0] = 0;
    v71 = 21190;
    memset(&v153, 0, sizeof(v153));
    do
    {
      if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
      {
        v75 = (v153.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v153.__r_.__value_.__l.__size_ == v75)
        {
          if ((v153.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_139:
          operator new();
        }

        v72 = v153.__r_.__value_.__l.__size_;
        v73 = v153.__r_.__value_.__r.__words[0];
        ++v153.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v153.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_139;
        }

        v72 = HIBYTE(v153.__r_.__value_.__r.__words[2]);
        *(&v153.__r_.__value_.__s + 23) = (*(&v153.__r_.__value_.__s + 23) + 1) & 0x7F;
        v73 = &v153;
      }

      v74 = v73 + v72;
      *v74 = (v71 % 0xA) | 0x30;
      v74[1] = 0;
      v26 = v71 > 9;
      v71 /= 0xAu;
    }

    while (v26);
    v76 = HIBYTE(v153.__r_.__value_.__r.__words[2]);
    v77 = &v153;
    if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v76 = v153.__r_.__value_.__l.__size_;
      v77 = v153.__r_.__value_.__r.__words[0];
    }

    if (v76)
    {
      v78 = (v77 + v76 - 1);
      if (v78 > v77)
      {
        v79 = &v77->__r_.__value_.__s.__data_[1];
        do
        {
          v80 = *(v79 - 1);
          *(v79 - 1) = v78->__r_.__value_.__s.__data_[0];
          v78->__r_.__value_.__s.__data_[0] = v80;
          v78 = (v78 - 1);
          v33 = v79++ >= v78;
        }

        while (!v33);
      }
    }

    v81 = std::string::insert(&v153, 0, "exprtk.hpp:", 0xBuLL);
    v35 = a1;
    v82 = *&v81->__r_.__value_.__l.__data_;
    v154.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
    *&v154.__r_.__value_.__l.__data_ = v82;
    v81->__r_.__value_.__l.__size_ = 0;
    v81->__r_.__value_.__r.__words[2] = 0;
    v81->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v148, &v155[32], &v154.__r_.__value_.__l.__data_, v156);
    v83 = *(a1 + 568);
    v84 = *(a1 + 560);
    v85 = 30 * ((v83 - v84) >> 3) - 1;
    if (v83 == v84)
    {
      v85 = 0;
    }

    if (v85 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v84 = *(a1 + 560);
      v83 = *(a1 + 568);
    }

    if (v83 == v84)
    {
      v41 = 0;
    }

    else
    {
      v86 = *(a1 + 592) + *(a1 + 584);
      v41 = *(v84 + 8 * (v86 / 0x1E)) + 136 * (v86 % 0x1E);
    }

    goto LABEL_155;
  }

  v65 = *(a1 + 24);
  if (*(a1 + 8) == v65)
  {
    *v13 = *v45;
    v66 = (a1 + 48);
    v65 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v65 + 40;
    v66 = (v65 + 8);
    *(a1 + 104) = *v65;
    if (v13 == v65)
    {
      goto LABEL_185;
    }
  }

  v87 = *(v65 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v87 >= 0)
    {
      v89 = v66;
    }

    else
    {
      v89 = *v66;
    }

    if (v87 >= 0)
    {
      v90 = *(v65 + 31);
    }

    else
    {
      v90 = *(v65 + 16);
    }

    sub_13B38(a1 + 112, v89, v90);
  }

  else if ((*(v65 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v66, *(v65 + 16));
  }

  else
  {
    v88 = *v66;
    *(a1 + 128) = v66[2];
    *(a1 + 112) = v88;
  }

LABEL_185:
  *(a1 + 136) = *(v65 + 32);
  v170 = sub_C5A5C(a1, 0);
  if (!v170)
  {
    LODWORD(v44) = 4;
    goto LABEL_191;
  }

  if (*v13 == 41)
  {
    v91 = *(a1 + 24);
    if (*(a1 + 8) == v91)
    {
      *v13 = *v45;
    }

    else
    {
      *(a1 + 24) = v91 + 10;
      v46 = (v91 + 2);
      *(a1 + 104) = *v91;
      v45 = v91;
      if (v13 == v91)
      {
        goto LABEL_292;
      }
    }

    v142 = *(v45 + 31);
    if (*(a1 + 135) < 0)
    {
      if (v142 >= 0)
      {
        v144 = v46;
      }

      else
      {
        v144 = *v46;
      }

      if (v142 >= 0)
      {
        v145 = *(v45 + 31);
      }

      else
      {
        v145 = *(v45 + 2);
      }

      sub_13B38(a1 + 112, v144, v145);
    }

    else if ((*(v45 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 112), *v46, *(v45 + 2));
    }

    else
    {
      v143 = *v46;
      *(a1 + 128) = v46[2];
      *(a1 + 112) = v143;
    }

LABEL_292:
    *(a1 + 136) = *(v45 + 4);
    v146 = sub_22BB34(a1 + 344, a2, &v168);
    v147 = v146;
    if (v146)
    {
      if ((*(*v146 + 32))(v146) == 2)
      {
        v120 = v147;
LABEL_301:
        v165[0] = 0;
        goto LABEL_234;
      }

      v120 = 0;
      if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(v168), vceqzq_s64(v169)))))
      {
        goto LABEL_301;
      }

      if (!v170)
      {
        goto LABEL_301;
      }

      if (*(a2 + 32) == 5)
      {
        v120 = v147;
        if (sub_22C1A8(v147, &v168))
        {
          goto LABEL_301;
        }
      }

      sub_22BE90(*(a1 + 352), &v168);
    }

    v120 = 0;
    goto LABEL_301;
  }

  if (*(a3 + 23) >= 0)
  {
    v122 = *(a3 + 23);
  }

  else
  {
    v122 = a3[1];
  }

  if (v122 + 52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v122 + 52 > 0x16)
  {
    operator new();
  }

  qmemcpy(v155, "ERR021 - Invalid number of arguments for function: '", 52);
  if (*(a3 + 23) >= 0)
  {
    v123 = a3;
  }

  else
  {
    v123 = *a3;
  }

  memmove(&v155[52], v123, v122);
  v155[v122 + 52] = 0;
  v124 = std::string::append(v155, "'", 1uLL);
  v125 = *&v124->__r_.__value_.__l.__data_;
  *&v155[48] = *(&v124->__r_.__value_.__l + 2);
  *&v155[32] = v125;
  v124->__r_.__value_.__l.__size_ = 0;
  v124->__r_.__value_.__r.__words[2] = 0;
  v124->__r_.__value_.__r.__words[0] = 0;
  v126 = 21203;
  memset(&v153, 0, sizeof(v153));
  do
  {
    if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
    {
      v130 = (v153.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v153.__r_.__value_.__l.__size_ == v130)
      {
        if ((v153.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_264:
        operator new();
      }

      v127 = v153.__r_.__value_.__l.__size_;
      v128 = v153.__r_.__value_.__r.__words[0];
      ++v153.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v153.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_264;
      }

      v127 = HIBYTE(v153.__r_.__value_.__r.__words[2]);
      *(&v153.__r_.__value_.__s + 23) = (*(&v153.__r_.__value_.__s + 23) + 1) & 0x7F;
      v128 = &v153;
    }

    v129 = v128 + v127;
    *v129 = (v126 % 0xA) | 0x30;
    v129[1] = 0;
    v26 = v126 > 9;
    v126 /= 0xAu;
  }

  while (v26);
  v131 = HIBYTE(v153.__r_.__value_.__r.__words[2]);
  v132 = &v153;
  if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v131 = v153.__r_.__value_.__l.__size_;
    v132 = v153.__r_.__value_.__r.__words[0];
  }

  if (v131)
  {
    v133 = (v132 + v131 - 1);
    if (v133 > v132)
    {
      v134 = &v132->__r_.__value_.__s.__data_[1];
      do
      {
        v135 = *(v134 - 1);
        *(v134 - 1) = v133->__r_.__value_.__s.__data_[0];
        v133->__r_.__value_.__s.__data_[0] = v135;
        v133 = (v133 - 1);
        v33 = v134++ >= v133;
      }

      while (!v33);
    }
  }

  v136 = std::string::insert(&v153, 0, "exprtk.hpp:", 0xBuLL);
  v35 = a1;
  v137 = *&v136->__r_.__value_.__l.__data_;
  v154.__r_.__value_.__r.__words[2] = v136->__r_.__value_.__r.__words[2];
  *&v154.__r_.__value_.__l.__data_ = v137;
  v136->__r_.__value_.__l.__size_ = 0;
  v136->__r_.__value_.__r.__words[2] = 0;
  v136->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v148, &v155[32], &v154.__r_.__value_.__l.__data_, v156);
  v138 = *(a1 + 568);
  v139 = *(a1 + 560);
  v140 = 30 * ((v138 - v139) >> 3) - 1;
  if (v138 == v139)
  {
    v140 = 0;
  }

  if (v140 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v139 = *(a1 + 560);
    v138 = *(a1 + 568);
  }

  if (v138 == v139)
  {
    v41 = 0;
  }

  else
  {
    v141 = *(a1 + 592) + *(a1 + 584);
    v41 = *(v139 + 8 * (v141 / 0x1E)) + 136 * (v141 % 0x1E);
  }

LABEL_155:
  sub_C398C(v41, v156);
  ++*(v35 + 592);
  if (v164 < 0)
  {
    operator delete(__p);
    if ((v162 & 0x80000000) == 0)
    {
LABEL_157:
      if ((v160 & 0x80000000) == 0)
      {
        goto LABEL_158;
      }

      goto LABEL_166;
    }
  }

  else if ((v162 & 0x80000000) == 0)
  {
    goto LABEL_157;
  }

  operator delete(v161);
  if ((v160 & 0x80000000) == 0)
  {
LABEL_158:
    if ((v158 & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_167;
  }

LABEL_166:
  operator delete(v159);
  if ((v158 & 0x80000000) == 0)
  {
LABEL_159:
    if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_168;
  }

LABEL_167:
  operator delete(v157);
  if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_160:
    if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_169;
  }

LABEL_168:
  operator delete(v154.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_161:
    if ((v155[55] & 0x80000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_170;
  }

LABEL_169:
  operator delete(v153.__r_.__value_.__l.__data_);
  if ((v155[55] & 0x80000000) == 0)
  {
LABEL_162:
    if ((v155[23] & 0x80000000) != 0)
    {
      goto LABEL_171;
    }

    goto LABEL_233;
  }

LABEL_170:
  operator delete(*&v155[32]);
  if ((v155[23] & 0x80000000) != 0)
  {
LABEL_171:
    operator delete(*v155);
  }

LABEL_233:
  v120 = 0;
LABEL_234:
  sub_22C7F0(v165);
  return v120;
}

void sub_2122F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (a42 < 0)
  {
    operator delete(__p);
    if (a35 < 0)
    {
LABEL_5:
      operator delete(a30);
      if ((a56 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a35 < 0)
  {
    goto LABEL_5;
  }

  if ((a56 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a49 & 0x80000000) == 0)
    {
LABEL_11:
      sub_22C7F0(v58 - 168);
      _Unwind_Resume(a1);
    }

LABEL_10:
    operator delete(a44);
    goto LABEL_11;
  }

LABEL_9:
  operator delete(a51);
  if ((a49 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

uint64_t sub_212620(uint64_t a1, uint64_t a2, const void **a3)
{
  v175 = 0u;
  v176 = 0u;
  v174 = 0u;
  v171[0] = 1;
  v172 = a1;
  v173 = &v174;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  v154 = a1 + 104;
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v161, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v161[48], v19, v18);
    v161[v18 + 48] = 0;
    v20 = std::string::append(v161, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v161[48] = *(&v20->__r_.__value_.__l + 2);
    *&v161[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v159, 0, sizeof(v159));
    do
    {
      if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v159.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v159.__r_.__value_.__l.__size_ == v27)
        {
          if ((v159.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v159.__r_.__value_.__l.__size_;
        v24 = v159.__r_.__value_.__r.__words[0];
        ++v159.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v159.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v159.__r_.__value_.__r.__words[2]);
        *(&v159.__r_.__value_.__s + 23) = (*(&v159.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v159;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
    }

    while (v26);
    v28 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    v29 = &v159;
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v159.__r_.__value_.__l.__size_;
      v29 = v159.__r_.__value_.__r.__words[0];
    }

    if (v28)
    {
      v30 = (v29 + v28 - 1);
      if (v30 > v29)
      {
        v31 = &v29->__r_.__value_.__s.__data_[1];
        do
        {
          v32 = *(v31 - 1);
          *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
          v30->__r_.__value_.__s.__data_[0] = v32;
          v30 = (v30 - 1);
          v33 = v31++ >= v30;
        }

        while (!v33);
      }
    }

    v34 = std::string::insert(&v159, 0, "exprtk.hpp:", 0xBuLL);
    v35 = a1;
    v36 = *&v34->__r_.__value_.__l.__data_;
    v160.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v160.__r_.__value_.__l.__data_ = v36;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v154, &v161[32], &v160.__r_.__value_.__l.__data_, v162);
    v37 = *(a1 + 568);
    v38 = *(a1 + 560);
    v39 = 30 * ((v37 - v38) >> 3) - 1;
    if (v37 == v38)
    {
      v39 = 0;
    }

    if (v39 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v38 = *(a1 + 560);
      v37 = *(a1 + 568);
    }

    if (v37 == v38)
    {
      v41 = 0;
    }

    else
    {
      v40 = *(a1 + 592) + *(a1 + 584);
      v41 = *(v38 + 8 * (v40 / 0x1E)) + 136 * (v40 % 0x1E);
    }

    goto LABEL_173;
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_64;
    }
  }

  else
  {
    *(a1 + 24) = v14 + 40;
    v15 = (v14 + 8);
    *(a1 + 104) = *v14;
    if (v13 == v14)
    {
      goto LABEL_64;
    }

    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((v16 & 0x80u) == 0)
  {
    v42 = v15;
  }

  else
  {
    v42 = *v15;
  }

  if ((v16 & 0x80u) == 0)
  {
    v43 = v16;
  }

  else
  {
    v43 = *(v14 + 16);
  }

  sub_13B38(a1 + 112, v42, v43);
LABEL_64:
  *(a1 + 136) = *(v14 + 32);
  v44 = sub_C5A5C(a1, 0);
  v174.i64[0] = v44;
  if (!v44)
  {
LABEL_209:
    sub_C00FC(v44, &v158);
    v98 = std::string::insert(&v158, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
    v99 = *&v98->__r_.__value_.__l.__data_;
    v159.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
    *&v159.__r_.__value_.__l.__data_ = v99;
    v98->__r_.__value_.__l.__size_ = 0;
    v98->__r_.__value_.__r.__words[2] = 0;
    v98->__r_.__value_.__r.__words[0] = 0;
    v100 = std::string::append(&v159, " for function: '", 0x10uLL);
    v101 = *&v100->__r_.__value_.__l.__data_;
    v160.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
    *&v160.__r_.__value_.__l.__data_ = v101;
    v100->__r_.__value_.__l.__size_ = 0;
    v100->__r_.__value_.__r.__words[2] = 0;
    v100->__r_.__value_.__r.__words[0] = 0;
    v102 = *(a3 + 23);
    if (v102 >= 0)
    {
      v103 = a3;
    }

    else
    {
      v103 = *a3;
    }

    if (v102 >= 0)
    {
      v104 = *(a3 + 23);
    }

    else
    {
      v104 = a3[1];
    }

    v105 = std::string::append(&v160, v103, v104);
    v106 = *&v105->__r_.__value_.__l.__data_;
    *&v161[16] = *(&v105->__r_.__value_.__l + 2);
    *v161 = v106;
    v105->__r_.__value_.__l.__size_ = 0;
    v105->__r_.__value_.__r.__words[2] = 0;
    v105->__r_.__value_.__r.__words[0] = 0;
    v107 = std::string::append(v161, "'", 1uLL);
    v108 = *&v107->__r_.__value_.__l.__data_;
    *&v161[48] = *(&v107->__r_.__value_.__l + 2);
    *&v161[32] = v108;
    v107->__r_.__value_.__l.__size_ = 0;
    v107->__r_.__value_.__r.__words[2] = 0;
    v107->__r_.__value_.__r.__words[0] = 0;
    v109 = 21178;
    memset(&v155, 0, sizeof(v155));
    do
    {
      if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
      {
        v113 = (v155.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v155.__r_.__value_.__l.__size_ == v113)
        {
          if ((v155.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_224:
          operator new();
        }

        v110 = v155.__r_.__value_.__l.__size_;
        v111 = v155.__r_.__value_.__r.__words[0];
        ++v155.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v155.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_224;
        }

        v110 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
        *(&v155.__r_.__value_.__s + 23) = (*(&v155.__r_.__value_.__s + 23) + 1) & 0x7F;
        v111 = &v155;
      }

      v112 = v111 + v110;
      *v112 = (v109 % 0xA) | 0x30;
      v112[1] = 0;
      v26 = v109 > 9;
      v109 /= 0xAu;
    }

    while (v26);
    v114 = HIBYTE(v155.__r_.__value_.__r.__words[2]);
    v115 = &v155;
    if ((v155.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v114 = v155.__r_.__value_.__l.__size_;
      v115 = v155.__r_.__value_.__r.__words[0];
    }

    if (v114)
    {
      v116 = (v115 + v114 - 1);
      if (v116 > v115)
      {
        v117 = &v115->__r_.__value_.__s.__data_[1];
        do
        {
          v118 = *(v117 - 1);
          *(v117 - 1) = v116->__r_.__value_.__s.__data_[0];
          v116->__r_.__value_.__s.__data_[0] = v118;
          v116 = (v116 - 1);
          v33 = v117++ >= v116;
        }

        while (!v33);
      }
    }

    v119 = std::string::insert(&v155, 0, "exprtk.hpp:", 0xBuLL);
    v120 = *&v119->__r_.__value_.__l.__data_;
    v157 = v119->__r_.__value_.__r.__words[2];
    *v156 = v120;
    v119->__r_.__value_.__l.__size_ = 0;
    v119->__r_.__value_.__r.__words[2] = 0;
    v119->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v154, &v161[32], v156, v162);
    v121 = *(a1 + 568);
    v122 = *(a1 + 560);
    v123 = 30 * ((v121 - v122) >> 3) - 1;
    if (v121 == v122)
    {
      v123 = 0;
    }

    if (v123 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v122 = *(a1 + 560);
      v121 = *(a1 + 568);
    }

    if (v121 == v122)
    {
      v125 = 0;
    }

    else
    {
      v124 = *(a1 + 592) + *(a1 + 584);
      v125 = *(v122 + 8 * (v124 / 0x1E)) + 136 * (v124 % 0x1E);
    }

    sub_C398C(v125, v162);
    ++*(a1 + 592);
    if (v170 < 0)
    {
      operator delete(__p);
      if ((v168 & 0x80000000) == 0)
      {
LABEL_242:
        if ((v166 & 0x80000000) == 0)
        {
          goto LABEL_243;
        }

        goto LABEL_255;
      }
    }

    else if ((v168 & 0x80000000) == 0)
    {
      goto LABEL_242;
    }

    operator delete(v167);
    if ((v166 & 0x80000000) == 0)
    {
LABEL_243:
      if ((v164 & 0x80000000) == 0)
      {
        goto LABEL_244;
      }

      goto LABEL_256;
    }

LABEL_255:
    operator delete(v165);
    if ((v164 & 0x80000000) == 0)
    {
LABEL_244:
      if ((SHIBYTE(v157) & 0x80000000) == 0)
      {
        goto LABEL_245;
      }

      goto LABEL_257;
    }

LABEL_256:
    operator delete(v163);
    if ((SHIBYTE(v157) & 0x80000000) == 0)
    {
LABEL_245:
      if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_246;
      }

      goto LABEL_258;
    }

LABEL_257:
    operator delete(v156[0]);
    if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_246:
      if ((v161[55] & 0x80000000) == 0)
      {
        goto LABEL_247;
      }

      goto LABEL_259;
    }

LABEL_258:
    operator delete(v155.__r_.__value_.__l.__data_);
    if ((v161[55] & 0x80000000) == 0)
    {
LABEL_247:
      if ((v161[23] & 0x80000000) == 0)
      {
        goto LABEL_248;
      }

      goto LABEL_260;
    }

LABEL_259:
    operator delete(*&v161[32]);
    if ((v161[23] & 0x80000000) == 0)
    {
LABEL_248:
      if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_249;
      }

      goto LABEL_261;
    }

LABEL_260:
    operator delete(*v161);
    if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_249:
      if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_250;
      }

      goto LABEL_262;
    }

LABEL_261:
    operator delete(v160.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_250:
      if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_251;
      }

LABEL_263:
      operator delete(v158.__r_.__value_.__l.__data_);
      goto LABEL_251;
    }

LABEL_262:
    operator delete(v159.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_263;
  }

  if (*v13 != 44)
  {
    goto LABEL_139;
  }

  v45 = (a1 + 40);
  v46 = (a1 + 48);
  v47 = *(a1 + 24);
  if (*(a1 + 8) == v47)
  {
    *v13 = *v45;
    v48 = (a1 + 48);
    v47 = a1 + 40;
    v49 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_69:
      if ((v49 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v48, *(v47 + 16));
      }

      else
      {
        v50 = *v48;
        *(a1 + 128) = *(v48 + 2);
        *(a1 + 112) = v50;
      }

      goto LABEL_80;
    }
  }

  else
  {
    *(a1 + 24) = v47 + 40;
    v48 = (v47 + 8);
    *(a1 + 104) = *v47;
    if (v13 == v47)
    {
      goto LABEL_80;
    }

    v49 = *(v47 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }
  }

  if ((v49 & 0x80u) == 0)
  {
    v51 = v48;
  }

  else
  {
    v51 = *v48;
  }

  if ((v49 & 0x80u) == 0)
  {
    v52 = v49;
  }

  else
  {
    v52 = *(v47 + 16);
  }

  sub_13B38(a1 + 112, v51, v52);
LABEL_80:
  *(a1 + 136) = *(v47 + 32);
  v174.i64[1] = sub_C5A5C(a1, 0);
  if (!v174.i64[1])
  {
    LODWORD(v44) = 1;
    goto LABEL_209;
  }

  if (*v13 != 44)
  {
    goto LABEL_139;
  }

  v53 = *(a1 + 24);
  if (*(a1 + 8) == v53)
  {
    *v13 = *v45;
    v54 = (a1 + 48);
    v53 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v53 + 40;
    v54 = (v53 + 8);
    *(a1 + 104) = *v53;
    if (v13 == v53)
    {
      goto LABEL_98;
    }
  }

  v55 = *(v53 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v55 >= 0)
    {
      v57 = v54;
    }

    else
    {
      v57 = *v54;
    }

    if (v55 >= 0)
    {
      v58 = *(v53 + 31);
    }

    else
    {
      v58 = *(v53 + 16);
    }

    sub_13B38(a1 + 112, v57, v58);
  }

  else if ((*(v53 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v54, *(v53 + 16));
  }

  else
  {
    v56 = *v54;
    *(a1 + 128) = v54[2];
    *(a1 + 112) = v56;
  }

LABEL_98:
  *(a1 + 136) = *(v53 + 32);
  v175.i64[0] = sub_C5A5C(a1, 0);
  if (!v175.i64[0])
  {
    LODWORD(v44) = 2;
    goto LABEL_209;
  }

  if (*v13 != 44)
  {
    goto LABEL_139;
  }

  v59 = *(a1 + 24);
  if (*(a1 + 8) == v59)
  {
    *v13 = *v45;
    v60 = (a1 + 48);
    v59 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v59 + 40;
    v60 = (v59 + 8);
    *(a1 + 104) = *v59;
    if (v13 == v59)
    {
      goto LABEL_116;
    }
  }

  v61 = *(v59 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v61 >= 0)
    {
      v63 = v60;
    }

    else
    {
      v63 = *v60;
    }

    if (v61 >= 0)
    {
      v64 = *(v59 + 31);
    }

    else
    {
      v64 = *(v59 + 16);
    }

    sub_13B38(a1 + 112, v63, v64);
  }

  else if ((*(v59 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v60, *(v59 + 16));
  }

  else
  {
    v62 = *v60;
    *(a1 + 128) = v60[2];
    *(a1 + 112) = v62;
  }

LABEL_116:
  *(a1 + 136) = *(v59 + 32);
  v175.i64[1] = sub_C5A5C(a1, 0);
  if (!v175.i64[1])
  {
    LODWORD(v44) = 3;
    goto LABEL_209;
  }

  if (*v13 != 44)
  {
    goto LABEL_139;
  }

  v65 = *(a1 + 24);
  if (*(a1 + 8) == v65)
  {
    *v13 = *v45;
    v66 = (a1 + 48);
    v65 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v65 + 40;
    v66 = (v65 + 8);
    *(a1 + 104) = *v65;
    if (v13 == v65)
    {
      goto LABEL_134;
    }
  }

  v67 = *(v65 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v67 >= 0)
    {
      v69 = v66;
    }

    else
    {
      v69 = *v66;
    }

    if (v67 >= 0)
    {
      v70 = *(v65 + 31);
    }

    else
    {
      v70 = *(v65 + 16);
    }

    sub_13B38(a1 + 112, v69, v70);
  }

  else if ((*(v65 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v66, *(v65 + 16));
  }

  else
  {
    v68 = *v66;
    *(a1 + 128) = v66[2];
    *(a1 + 112) = v68;
  }

LABEL_134:
  *(a1 + 136) = *(v65 + 32);
  *&v176 = sub_C5A5C(a1, 0);
  if (!v176)
  {
    LODWORD(v44) = 4;
    goto LABEL_209;
  }

  if (*v13 != 44)
  {
LABEL_139:
    if (*(a3 + 23) >= 0)
    {
      v73 = *(a3 + 23);
    }

    else
    {
      v73 = a3[1];
    }

    if (v73 + 52 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v73 + 52 > 0x16)
    {
      operator new();
    }

    qmemcpy(v161, "ERR020 - Invalid number of arguments for function: '", 52);
    if (*(a3 + 23) >= 0)
    {
      v74 = a3;
    }

    else
    {
      v74 = *a3;
    }

    memmove(&v161[52], v74, v73);
    v161[v73 + 52] = 0;
    v75 = std::string::append(v161, "'", 1uLL);
    v76 = *&v75->__r_.__value_.__l.__data_;
    *&v161[48] = *(&v75->__r_.__value_.__l + 2);
    *&v161[32] = v76;
    v75->__r_.__value_.__l.__size_ = 0;
    v75->__r_.__value_.__r.__words[2] = 0;
    v75->__r_.__value_.__r.__words[0] = 0;
    v77 = 21190;
    memset(&v159, 0, sizeof(v159));
    do
    {
      if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
      {
        v81 = (v159.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v159.__r_.__value_.__l.__size_ == v81)
        {
          if ((v159.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_157:
          operator new();
        }

        v78 = v159.__r_.__value_.__l.__size_;
        v79 = v159.__r_.__value_.__r.__words[0];
        ++v159.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v159.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_157;
        }

        v78 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
        *(&v159.__r_.__value_.__s + 23) = (*(&v159.__r_.__value_.__s + 23) + 1) & 0x7F;
        v79 = &v159;
      }

      v80 = v79 + v78;
      *v80 = (v77 % 0xA) | 0x30;
      v80[1] = 0;
      v26 = v77 > 9;
      v77 /= 0xAu;
    }

    while (v26);
    v82 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    v83 = &v159;
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v82 = v159.__r_.__value_.__l.__size_;
      v83 = v159.__r_.__value_.__r.__words[0];
    }

    if (v82)
    {
      v84 = (v83 + v82 - 1);
      if (v84 > v83)
      {
        v85 = &v83->__r_.__value_.__s.__data_[1];
        do
        {
          v86 = *(v85 - 1);
          *(v85 - 1) = v84->__r_.__value_.__s.__data_[0];
          v84->__r_.__value_.__s.__data_[0] = v86;
          v84 = (v84 - 1);
          v33 = v85++ >= v84;
        }

        while (!v33);
      }
    }

    v87 = std::string::insert(&v159, 0, "exprtk.hpp:", 0xBuLL);
    v35 = a1;
    v88 = *&v87->__r_.__value_.__l.__data_;
    v160.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
    *&v160.__r_.__value_.__l.__data_ = v88;
    v87->__r_.__value_.__l.__size_ = 0;
    v87->__r_.__value_.__r.__words[2] = 0;
    v87->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v154, &v161[32], &v160.__r_.__value_.__l.__data_, v162);
    v89 = *(a1 + 568);
    v90 = *(a1 + 560);
    v91 = 30 * ((v89 - v90) >> 3) - 1;
    if (v89 == v90)
    {
      v91 = 0;
    }

    if (v91 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v90 = *(a1 + 560);
      v89 = *(a1 + 568);
    }

    if (v89 == v90)
    {
      v41 = 0;
    }

    else
    {
      v92 = *(a1 + 592) + *(a1 + 584);
      v41 = *(v90 + 8 * (v92 / 0x1E)) + 136 * (v92 % 0x1E);
    }

    goto LABEL_173;
  }

  v71 = *(a1 + 24);
  if (*(a1 + 8) == v71)
  {
    *v13 = *v45;
    v72 = (a1 + 48);
    v71 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v71 + 40;
    v72 = (v71 + 8);
    *(a1 + 104) = *v71;
    if (v13 == v71)
    {
      goto LABEL_203;
    }
  }

  v93 = *(v71 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v93 >= 0)
    {
      v95 = v72;
    }

    else
    {
      v95 = *v72;
    }

    if (v93 >= 0)
    {
      v96 = *(v71 + 31);
    }

    else
    {
      v96 = *(v71 + 16);
    }

    sub_13B38(a1 + 112, v95, v96);
  }

  else if ((*(v71 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v72, *(v71 + 16));
  }

  else
  {
    v94 = *v72;
    *(a1 + 128) = v72[2];
    *(a1 + 112) = v94;
  }

LABEL_203:
  *(a1 + 136) = *(v71 + 32);
  *(&v176 + 1) = sub_C5A5C(a1, 0);
  if (!*(&v176 + 1))
  {
    LODWORD(v44) = 5;
    goto LABEL_209;
  }

  if (*v13 == 41)
  {
    v97 = *(a1 + 24);
    if (*(a1 + 8) == v97)
    {
      *v13 = *v45;
    }

    else
    {
      *(a1 + 24) = v97 + 10;
      v46 = (v97 + 2);
      *(a1 + 104) = *v97;
      v45 = v97;
      if (v13 == v97)
      {
        goto LABEL_310;
      }
    }

    v148 = *(v45 + 31);
    if (*(a1 + 135) < 0)
    {
      if (v148 >= 0)
      {
        v150 = v46;
      }

      else
      {
        v150 = *v46;
      }

      if (v148 >= 0)
      {
        v151 = *(v45 + 31);
      }

      else
      {
        v151 = *(v45 + 2);
      }

      sub_13B38(a1 + 112, v150, v151);
    }

    else if ((*(v45 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 112), *v46, *(v45 + 2));
    }

    else
    {
      v149 = *v46;
      *(a1 + 128) = v46[2];
      *(a1 + 112) = v149;
    }

LABEL_310:
    *(a1 + 136) = *(v45 + 4);
    v152 = sub_22CB30(a1 + 344, a2, &v174);
    v153 = v152;
    if (v152)
    {
      if ((*(*v152 + 32))(v152) == 2)
      {
        v126 = v153;
LABEL_320:
        v171[0] = 0;
        goto LABEL_252;
      }

      v126 = 0;
      if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(v174), vceqzq_s64(v175)))))
      {
        goto LABEL_320;
      }

      if (!v176)
      {
        goto LABEL_320;
      }

      if (!*(&v176 + 1))
      {
        goto LABEL_320;
      }

      if (*(a2 + 32) == 6)
      {
        v126 = v153;
        if (sub_22D280(v153, &v174))
        {
          goto LABEL_320;
        }
      }

      sub_22CED0(*(a1 + 352), &v174);
    }

    v126 = 0;
    goto LABEL_320;
  }

  if (*(a3 + 23) >= 0)
  {
    v128 = *(a3 + 23);
  }

  else
  {
    v128 = a3[1];
  }

  if (v128 + 52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v128 + 52 > 0x16)
  {
    operator new();
  }

  qmemcpy(v161, "ERR021 - Invalid number of arguments for function: '", 52);
  if (*(a3 + 23) >= 0)
  {
    v129 = a3;
  }

  else
  {
    v129 = *a3;
  }

  memmove(&v161[52], v129, v128);
  v161[v128 + 52] = 0;
  v130 = std::string::append(v161, "'", 1uLL);
  v131 = *&v130->__r_.__value_.__l.__data_;
  *&v161[48] = *(&v130->__r_.__value_.__l + 2);
  *&v161[32] = v131;
  v130->__r_.__value_.__l.__size_ = 0;
  v130->__r_.__value_.__r.__words[2] = 0;
  v130->__r_.__value_.__r.__words[0] = 0;
  v132 = 21203;
  memset(&v159, 0, sizeof(v159));
  do
  {
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      v136 = (v159.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v159.__r_.__value_.__l.__size_ == v136)
      {
        if ((v159.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_282:
        operator new();
      }

      v133 = v159.__r_.__value_.__l.__size_;
      v134 = v159.__r_.__value_.__r.__words[0];
      ++v159.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v159.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_282;
      }

      v133 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
      *(&v159.__r_.__value_.__s + 23) = (*(&v159.__r_.__value_.__s + 23) + 1) & 0x7F;
      v134 = &v159;
    }

    v135 = v134 + v133;
    *v135 = (v132 % 0xA) | 0x30;
    v135[1] = 0;
    v26 = v132 > 9;
    v132 /= 0xAu;
  }

  while (v26);
  v137 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
  v138 = &v159;
  if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v137 = v159.__r_.__value_.__l.__size_;
    v138 = v159.__r_.__value_.__r.__words[0];
  }

  if (v137)
  {
    v139 = (v138 + v137 - 1);
    if (v139 > v138)
    {
      v140 = &v138->__r_.__value_.__s.__data_[1];
      do
      {
        v141 = *(v140 - 1);
        *(v140 - 1) = v139->__r_.__value_.__s.__data_[0];
        v139->__r_.__value_.__s.__data_[0] = v141;
        v139 = (v139 - 1);
        v33 = v140++ >= v139;
      }

      while (!v33);
    }
  }

  v142 = std::string::insert(&v159, 0, "exprtk.hpp:", 0xBuLL);
  v35 = a1;
  v143 = *&v142->__r_.__value_.__l.__data_;
  v160.__r_.__value_.__r.__words[2] = v142->__r_.__value_.__r.__words[2];
  *&v160.__r_.__value_.__l.__data_ = v143;
  v142->__r_.__value_.__l.__size_ = 0;
  v142->__r_.__value_.__r.__words[2] = 0;
  v142->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v154, &v161[32], &v160.__r_.__value_.__l.__data_, v162);
  v144 = *(a1 + 568);
  v145 = *(a1 + 560);
  v146 = 30 * ((v144 - v145) >> 3) - 1;
  if (v144 == v145)
  {
    v146 = 0;
  }

  if (v146 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v145 = *(a1 + 560);
    v144 = *(a1 + 568);
  }

  if (v144 == v145)
  {
    v41 = 0;
  }

  else
  {
    v147 = *(a1 + 592) + *(a1 + 584);
    v41 = *(v145 + 8 * (v147 / 0x1E)) + 136 * (v147 % 0x1E);
  }

LABEL_173:
  sub_C398C(v41, v162);
  ++*(v35 + 592);
  if (v170 < 0)
  {
    operator delete(__p);
    if ((v168 & 0x80000000) == 0)
    {
LABEL_175:
      if ((v166 & 0x80000000) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_184;
    }
  }

  else if ((v168 & 0x80000000) == 0)
  {
    goto LABEL_175;
  }

  operator delete(v167);
  if ((v166 & 0x80000000) == 0)
  {
LABEL_176:
    if ((v164 & 0x80000000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_185;
  }

LABEL_184:
  operator delete(v165);
  if ((v164 & 0x80000000) == 0)
  {
LABEL_177:
    if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_186;
  }

LABEL_185:
  operator delete(v163);
  if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_178:
    if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_187;
  }

LABEL_186:
  operator delete(v160.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_179:
    if ((v161[55] & 0x80000000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_188;
  }

LABEL_187:
  operator delete(v159.__r_.__value_.__l.__data_);
  if ((v161[55] & 0x80000000) == 0)
  {
LABEL_180:
    if ((v161[23] & 0x80000000) != 0)
    {
      goto LABEL_189;
    }

    goto LABEL_251;
  }

LABEL_188:
  operator delete(*&v161[32]);
  if ((v161[23] & 0x80000000) != 0)
  {
LABEL_189:
    operator delete(*v161);
  }

LABEL_251:
  v126 = 0;
LABEL_252:
  sub_22DA10(v171);
  return v126;
}

void sub_213DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, char a58)
{
  if (a42 < 0)
  {
    operator delete(__p);
    if (a35 < 0)
    {
LABEL_5:
      operator delete(a30);
      if ((a56 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a35 < 0)
  {
    goto LABEL_5;
  }

  if ((a56 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a49 & 0x80000000) == 0)
    {
LABEL_11:
      sub_22DA10(v58 - 184);
      _Unwind_Resume(a1);
    }

LABEL_10:
    operator delete(a44);
    goto LABEL_11;
  }

LABEL_9:
  operator delete(a51);
  if ((a49 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

uint64_t sub_2140D8(uint64_t a1, uint64_t a2, const void **a3)
{
  v183 = 0;
  v181 = 0u;
  v182 = 0u;
  v180 = 0u;
  v177[0] = 1;
  v178 = a1;
  v179 = &v180;
  v6 = *(a1 + 24);
  if (*(a1 + 8) == v6)
  {
    v6 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v8 = a1 + 104;
    v7 = (a1 + 48);
    v9 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_4:
      if ((v9 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v7, *(v6 + 16));
      }

      else
      {
        v10 = *v7;
        *(a1 + 128) = *(v7 + 2);
        *(a1 + 112) = v10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = (v6 + 8);
    *(a1 + 104) = *v6;
    v8 = a1 + 104;
    *(a1 + 24) = v6 + 40;
    if (a1 + 104 == v6)
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = *v7;
  }

  if ((v9 & 0x80u) == 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v6 + 16);
  }

  sub_13B38(a1 + 112, v11, v12);
LABEL_15:
  *(v8 + 32) = *(v6 + 32);
  v13 = (a1 + 104);
  v160 = a1 + 104;
  if (*(a1 + 104) != 40)
  {
    if (*(a3 + 23) >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    if (v18 + 48 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v18 + 48 > 0x16)
    {
      operator new();
    }

    qmemcpy(v167, "ERR018 - Expecting argument list for function: '", 48);
    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(&v167[48], v19, v18);
    v167[v18 + 48] = 0;
    v20 = std::string::append(v167, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&v167[48] = *(&v20->__r_.__value_.__l + 2);
    *&v167[32] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = 21163;
    memset(&v165, 0, sizeof(v165));
    do
    {
      if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
      {
        v27 = (v165.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v165.__r_.__value_.__l.__size_ == v27)
        {
          if ((v165.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_39:
          operator new();
        }

        size = v165.__r_.__value_.__l.__size_;
        v24 = v165.__r_.__value_.__r.__words[0];
        ++v165.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v165.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_39;
        }

        size = HIBYTE(v165.__r_.__value_.__r.__words[2]);
        *(&v165.__r_.__value_.__s + 23) = (*(&v165.__r_.__value_.__s + 23) + 1) & 0x7F;
        v24 = &v165;
      }

      v25 = v24 + size;
      *v25 = (v22 % 0xA) | 0x30;
      v25[1] = 0;
      v26 = v22 > 9;
      v22 /= 0xAu;
    }

    while (v26);
    v28 = HIBYTE(v165.__r_.__value_.__r.__words[2]);
    v29 = &v165;
    if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v165.__r_.__value_.__l.__size_;
      v29 = v165.__r_.__value_.__r.__words[0];
    }

    if (v28)
    {
      v30 = (v29 + v28 - 1);
      if (v30 > v29)
      {
        v31 = &v29->__r_.__value_.__s.__data_[1];
        do
        {
          v32 = *(v31 - 1);
          *(v31 - 1) = v30->__r_.__value_.__s.__data_[0];
          v30->__r_.__value_.__s.__data_[0] = v32;
          v30 = (v30 - 1);
          v33 = v31++ >= v30;
        }

        while (!v33);
      }
    }

    v34 = std::string::insert(&v165, 0, "exprtk.hpp:", 0xBuLL);
    v35 = a1;
    v36 = *&v34->__r_.__value_.__l.__data_;
    v166.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v166.__r_.__value_.__l.__data_ = v36;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v160, &v167[32], &v166.__r_.__value_.__l.__data_, v168);
    v37 = *(a1 + 568);
    v38 = *(a1 + 560);
    v39 = 30 * ((v37 - v38) >> 3) - 1;
    if (v37 == v38)
    {
      v39 = 0;
    }

    if (v39 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v38 = *(a1 + 560);
      v37 = *(a1 + 568);
    }

    if (v37 == v38)
    {
      v41 = 0;
    }

    else
    {
      v40 = *(a1 + 592) + *(a1 + 584);
      v41 = *(v38 + 8 * (v40 / 0x1E)) + 136 * (v40 % 0x1E);
    }

    goto LABEL_191;
  }

  v14 = *(a1 + 24);
  if (*(a1 + 8) == v14)
  {
    v14 = a1 + 40;
    *(a1 + 104) = *(a1 + 40);
    v15 = (a1 + 48);
    v16 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v16 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v15, *(v14 + 16));
      }

      else
      {
        v17 = *v15;
        *(a1 + 128) = *(v15 + 2);
        *(a1 + 112) = v17;
      }

      goto LABEL_64;
    }
  }

  else
  {
    *(a1 + 24) = v14 + 40;
    v15 = (v14 + 8);
    *(a1 + 104) = *v14;
    if (v13 == v14)
    {
      goto LABEL_64;
    }

    v16 = *(v14 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((v16 & 0x80u) == 0)
  {
    v42 = v15;
  }

  else
  {
    v42 = *v15;
  }

  if ((v16 & 0x80u) == 0)
  {
    v43 = v16;
  }

  else
  {
    v43 = *(v14 + 16);
  }

  sub_13B38(a1 + 112, v42, v43);
LABEL_64:
  *(a1 + 136) = *(v14 + 32);
  v44 = sub_C5A5C(a1, 0);
  v180.i64[0] = v44;
  if (!v44)
  {
LABEL_227:
    sub_C00FC(v44, &v164);
    v104 = std::string::insert(&v164, 0, "ERR019 - Failed to parse argument ", 0x22uLL);
    v105 = *&v104->__r_.__value_.__l.__data_;
    v165.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
    *&v165.__r_.__value_.__l.__data_ = v105;
    v104->__r_.__value_.__l.__size_ = 0;
    v104->__r_.__value_.__r.__words[2] = 0;
    v104->__r_.__value_.__r.__words[0] = 0;
    v106 = std::string::append(&v165, " for function: '", 0x10uLL);
    v107 = *&v106->__r_.__value_.__l.__data_;
    v166.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
    *&v166.__r_.__value_.__l.__data_ = v107;
    v106->__r_.__value_.__l.__size_ = 0;
    v106->__r_.__value_.__r.__words[2] = 0;
    v106->__r_.__value_.__r.__words[0] = 0;
    v108 = *(a3 + 23);
    if (v108 >= 0)
    {
      v109 = a3;
    }

    else
    {
      v109 = *a3;
    }

    if (v108 >= 0)
    {
      v110 = *(a3 + 23);
    }

    else
    {
      v110 = a3[1];
    }

    v111 = std::string::append(&v166, v109, v110);
    v112 = *&v111->__r_.__value_.__l.__data_;
    *&v167[16] = *(&v111->__r_.__value_.__l + 2);
    *v167 = v112;
    v111->__r_.__value_.__l.__size_ = 0;
    v111->__r_.__value_.__r.__words[2] = 0;
    v111->__r_.__value_.__r.__words[0] = 0;
    v113 = std::string::append(v167, "'", 1uLL);
    v114 = *&v113->__r_.__value_.__l.__data_;
    *&v167[48] = *(&v113->__r_.__value_.__l + 2);
    *&v167[32] = v114;
    v113->__r_.__value_.__l.__size_ = 0;
    v113->__r_.__value_.__r.__words[2] = 0;
    v113->__r_.__value_.__r.__words[0] = 0;
    v115 = 21178;
    memset(&v161, 0, sizeof(v161));
    do
    {
      if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
      {
        v119 = (v161.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v161.__r_.__value_.__l.__size_ == v119)
        {
          if ((v161.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_242:
          operator new();
        }

        v116 = v161.__r_.__value_.__l.__size_;
        v117 = v161.__r_.__value_.__r.__words[0];
        ++v161.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v161.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_242;
        }

        v116 = HIBYTE(v161.__r_.__value_.__r.__words[2]);
        *(&v161.__r_.__value_.__s + 23) = (*(&v161.__r_.__value_.__s + 23) + 1) & 0x7F;
        v117 = &v161;
      }

      v118 = v117 + v116;
      *v118 = (v115 % 0xA) | 0x30;
      v118[1] = 0;
      v26 = v115 > 9;
      v115 /= 0xAu;
    }

    while (v26);
    v120 = HIBYTE(v161.__r_.__value_.__r.__words[2]);
    v121 = &v161;
    if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v120 = v161.__r_.__value_.__l.__size_;
      v121 = v161.__r_.__value_.__r.__words[0];
    }

    if (v120)
    {
      v122 = (v121 + v120 - 1);
      if (v122 > v121)
      {
        v123 = &v121->__r_.__value_.__s.__data_[1];
        do
        {
          v124 = *(v123 - 1);
          *(v123 - 1) = v122->__r_.__value_.__s.__data_[0];
          v122->__r_.__value_.__s.__data_[0] = v124;
          v122 = (v122 - 1);
          v33 = v123++ >= v122;
        }

        while (!v33);
      }
    }

    v125 = std::string::insert(&v161, 0, "exprtk.hpp:", 0xBuLL);
    v126 = *&v125->__r_.__value_.__l.__data_;
    v163 = v125->__r_.__value_.__r.__words[2];
    *v162 = v126;
    v125->__r_.__value_.__l.__size_ = 0;
    v125->__r_.__value_.__r.__words[2] = 0;
    v125->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v160, &v167[32], v162, v168);
    v127 = *(a1 + 568);
    v128 = *(a1 + 560);
    v129 = 30 * ((v127 - v128) >> 3) - 1;
    if (v127 == v128)
    {
      v129 = 0;
    }

    if (v129 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v128 = *(a1 + 560);
      v127 = *(a1 + 568);
    }

    if (v127 == v128)
    {
      v131 = 0;
    }

    else
    {
      v130 = *(a1 + 592) + *(a1 + 584);
      v131 = *(v128 + 8 * (v130 / 0x1E)) + 136 * (v130 % 0x1E);
    }

    sub_C398C(v131, v168);
    ++*(a1 + 592);
    if (v176 < 0)
    {
      operator delete(__p);
      if ((v174 & 0x80000000) == 0)
      {
LABEL_260:
        if ((v172 & 0x80000000) == 0)
        {
          goto LABEL_261;
        }

        goto LABEL_273;
      }
    }

    else if ((v174 & 0x80000000) == 0)
    {
      goto LABEL_260;
    }

    operator delete(v173);
    if ((v172 & 0x80000000) == 0)
    {
LABEL_261:
      if ((v170 & 0x80000000) == 0)
      {
        goto LABEL_262;
      }

      goto LABEL_274;
    }

LABEL_273:
    operator delete(v171);
    if ((v170 & 0x80000000) == 0)
    {
LABEL_262:
      if ((SHIBYTE(v163) & 0x80000000) == 0)
      {
        goto LABEL_263;
      }

      goto LABEL_275;
    }

LABEL_274:
    operator delete(v169);
    if ((SHIBYTE(v163) & 0x80000000) == 0)
    {
LABEL_263:
      if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_264;
      }

      goto LABEL_276;
    }

LABEL_275:
    operator delete(v162[0]);
    if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_264:
      if ((v167[55] & 0x80000000) == 0)
      {
        goto LABEL_265;
      }

      goto LABEL_277;
    }

LABEL_276:
    operator delete(v161.__r_.__value_.__l.__data_);
    if ((v167[55] & 0x80000000) == 0)
    {
LABEL_265:
      if ((v167[23] & 0x80000000) == 0)
      {
        goto LABEL_266;
      }

      goto LABEL_278;
    }

LABEL_277:
    operator delete(*&v167[32]);
    if ((v167[23] & 0x80000000) == 0)
    {
LABEL_266:
      if ((SHIBYTE(v166.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_267;
      }

      goto LABEL_279;
    }

LABEL_278:
    operator delete(*v167);
    if ((SHIBYTE(v166.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_267:
      if ((SHIBYTE(v165.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_268;
      }

      goto LABEL_280;
    }

LABEL_279:
    operator delete(v166.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v165.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_268:
      if ((SHIBYTE(v164.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_269;
      }

LABEL_281:
      operator delete(v164.__r_.__value_.__l.__data_);
      goto LABEL_269;
    }

LABEL_280:
    operator delete(v165.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v164.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_269;
    }

    goto LABEL_281;
  }

  if (*v13 != 44)
  {
    goto LABEL_157;
  }

  v45 = (a1 + 40);
  v46 = (a1 + 48);
  v47 = *(a1 + 24);
  if (*(a1 + 8) == v47)
  {
    *v13 = *v45;
    v48 = (a1 + 48);
    v47 = a1 + 40;
    v49 = *(a1 + 71);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_69:
      if ((v49 & 0x80) != 0)
      {
        sub_13A68((a1 + 112), *v48, *(v47 + 16));
      }

      else
      {
        v50 = *v48;
        *(a1 + 128) = *(v48 + 2);
        *(a1 + 112) = v50;
      }

      goto LABEL_80;
    }
  }

  else
  {
    *(a1 + 24) = v47 + 40;
    v48 = (v47 + 8);
    *(a1 + 104) = *v47;
    if (v13 == v47)
    {
      goto LABEL_80;
    }

    v49 = *(v47 + 31);
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }
  }

  if ((v49 & 0x80u) == 0)
  {
    v51 = v48;
  }

  else
  {
    v51 = *v48;
  }

  if ((v49 & 0x80u) == 0)
  {
    v52 = v49;
  }

  else
  {
    v52 = *(v47 + 16);
  }

  sub_13B38(a1 + 112, v51, v52);
LABEL_80:
  *(a1 + 136) = *(v47 + 32);
  v180.i64[1] = sub_C5A5C(a1, 0);
  if (!v180.i64[1])
  {
    LODWORD(v44) = 1;
    goto LABEL_227;
  }

  if (*v13 != 44)
  {
    goto LABEL_157;
  }

  v53 = *(a1 + 24);
  if (*(a1 + 8) == v53)
  {
    *v13 = *v45;
    v54 = (a1 + 48);
    v53 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v53 + 40;
    v54 = (v53 + 8);
    *(a1 + 104) = *v53;
    if (v13 == v53)
    {
      goto LABEL_98;
    }
  }

  v55 = *(v53 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v55 >= 0)
    {
      v57 = v54;
    }

    else
    {
      v57 = *v54;
    }

    if (v55 >= 0)
    {
      v58 = *(v53 + 31);
    }

    else
    {
      v58 = *(v53 + 16);
    }

    sub_13B38(a1 + 112, v57, v58);
  }

  else if ((*(v53 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v54, *(v53 + 16));
  }

  else
  {
    v56 = *v54;
    *(a1 + 128) = v54[2];
    *(a1 + 112) = v56;
  }

LABEL_98:
  *(a1 + 136) = *(v53 + 32);
  v181.i64[0] = sub_C5A5C(a1, 0);
  if (!v181.i64[0])
  {
    LODWORD(v44) = 2;
    goto LABEL_227;
  }

  if (*v13 != 44)
  {
    goto LABEL_157;
  }

  v59 = *(a1 + 24);
  if (*(a1 + 8) == v59)
  {
    *v13 = *v45;
    v60 = (a1 + 48);
    v59 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v59 + 40;
    v60 = (v59 + 8);
    *(a1 + 104) = *v59;
    if (v13 == v59)
    {
      goto LABEL_116;
    }
  }

  v61 = *(v59 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v61 >= 0)
    {
      v63 = v60;
    }

    else
    {
      v63 = *v60;
    }

    if (v61 >= 0)
    {
      v64 = *(v59 + 31);
    }

    else
    {
      v64 = *(v59 + 16);
    }

    sub_13B38(a1 + 112, v63, v64);
  }

  else if ((*(v59 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v60, *(v59 + 16));
  }

  else
  {
    v62 = *v60;
    *(a1 + 128) = v60[2];
    *(a1 + 112) = v62;
  }

LABEL_116:
  *(a1 + 136) = *(v59 + 32);
  v181.i64[1] = sub_C5A5C(a1, 0);
  if (!v181.i64[1])
  {
    LODWORD(v44) = 3;
    goto LABEL_227;
  }

  if (*v13 != 44)
  {
    goto LABEL_157;
  }

  v65 = *(a1 + 24);
  if (*(a1 + 8) == v65)
  {
    *v13 = *v45;
    v66 = (a1 + 48);
    v65 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v65 + 40;
    v66 = (v65 + 8);
    *(a1 + 104) = *v65;
    if (v13 == v65)
    {
      goto LABEL_134;
    }
  }

  v67 = *(v65 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v67 >= 0)
    {
      v69 = v66;
    }

    else
    {
      v69 = *v66;
    }

    if (v67 >= 0)
    {
      v70 = *(v65 + 31);
    }

    else
    {
      v70 = *(v65 + 16);
    }

    sub_13B38(a1 + 112, v69, v70);
  }

  else if ((*(v65 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v66, *(v65 + 16));
  }

  else
  {
    v68 = *v66;
    *(a1 + 128) = v66[2];
    *(a1 + 112) = v68;
  }

LABEL_134:
  *(a1 + 136) = *(v65 + 32);
  *&v182 = sub_C5A5C(a1, 0);
  if (!v182)
  {
    LODWORD(v44) = 4;
    goto LABEL_227;
  }

  if (*v13 != 44)
  {
    goto LABEL_157;
  }

  v71 = *(a1 + 24);
  if (*(a1 + 8) == v71)
  {
    *v13 = *v45;
    v72 = (a1 + 48);
    v71 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v71 + 40;
    v72 = (v71 + 8);
    *(a1 + 104) = *v71;
    if (v13 == v71)
    {
      goto LABEL_152;
    }
  }

  v73 = *(v71 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v73 >= 0)
    {
      v75 = v72;
    }

    else
    {
      v75 = *v72;
    }

    if (v73 >= 0)
    {
      v76 = *(v71 + 31);
    }

    else
    {
      v76 = *(v71 + 16);
    }

    sub_13B38(a1 + 112, v75, v76);
  }

  else if ((*(v71 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v72, *(v71 + 16));
  }

  else
  {
    v74 = *v72;
    *(a1 + 128) = v72[2];
    *(a1 + 112) = v74;
  }

LABEL_152:
  *(a1 + 136) = *(v71 + 32);
  *(&v182 + 1) = sub_C5A5C(a1, 0);
  if (!*(&v182 + 1))
  {
    LODWORD(v44) = 5;
    goto LABEL_227;
  }

  if (*v13 != 44)
  {
LABEL_157:
    if (*(a3 + 23) >= 0)
    {
      v79 = *(a3 + 23);
    }

    else
    {
      v79 = a3[1];
    }

    if (v79 + 52 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v79 + 52 > 0x16)
    {
      operator new();
    }

    qmemcpy(v167, "ERR020 - Invalid number of arguments for function: '", 52);
    if (*(a3 + 23) >= 0)
    {
      v80 = a3;
    }

    else
    {
      v80 = *a3;
    }

    memmove(&v167[52], v80, v79);
    v167[v79 + 52] = 0;
    v81 = std::string::append(v167, "'", 1uLL);
    v82 = *&v81->__r_.__value_.__l.__data_;
    *&v167[48] = *(&v81->__r_.__value_.__l + 2);
    *&v167[32] = v82;
    v81->__r_.__value_.__l.__size_ = 0;
    v81->__r_.__value_.__r.__words[2] = 0;
    v81->__r_.__value_.__r.__words[0] = 0;
    v83 = 21190;
    memset(&v165, 0, sizeof(v165));
    do
    {
      if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
      {
        v87 = (v165.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v165.__r_.__value_.__l.__size_ == v87)
        {
          if ((v165.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

LABEL_175:
          operator new();
        }

        v84 = v165.__r_.__value_.__l.__size_;
        v85 = v165.__r_.__value_.__r.__words[0];
        ++v165.__r_.__value_.__l.__size_;
      }

      else
      {
        if (HIBYTE(v165.__r_.__value_.__r.__words[2]) == 22)
        {
          goto LABEL_175;
        }

        v84 = HIBYTE(v165.__r_.__value_.__r.__words[2]);
        *(&v165.__r_.__value_.__s + 23) = (*(&v165.__r_.__value_.__s + 23) + 1) & 0x7F;
        v85 = &v165;
      }

      v86 = v85 + v84;
      *v86 = (v83 % 0xA) | 0x30;
      v86[1] = 0;
      v26 = v83 > 9;
      v83 /= 0xAu;
    }

    while (v26);
    v88 = HIBYTE(v165.__r_.__value_.__r.__words[2]);
    v89 = &v165;
    if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v88 = v165.__r_.__value_.__l.__size_;
      v89 = v165.__r_.__value_.__r.__words[0];
    }

    if (v88)
    {
      v90 = (v89 + v88 - 1);
      if (v90 > v89)
      {
        v91 = &v89->__r_.__value_.__s.__data_[1];
        do
        {
          v92 = *(v91 - 1);
          *(v91 - 1) = v90->__r_.__value_.__s.__data_[0];
          v90->__r_.__value_.__s.__data_[0] = v92;
          v90 = (v90 - 1);
          v33 = v91++ >= v90;
        }

        while (!v33);
      }
    }

    v93 = std::string::insert(&v165, 0, "exprtk.hpp:", 0xBuLL);
    v35 = a1;
    v94 = *&v93->__r_.__value_.__l.__data_;
    v166.__r_.__value_.__r.__words[2] = v93->__r_.__value_.__r.__words[2];
    *&v166.__r_.__value_.__l.__data_ = v94;
    v93->__r_.__value_.__l.__size_ = 0;
    v93->__r_.__value_.__r.__words[2] = 0;
    v93->__r_.__value_.__r.__words[0] = 0;
    sub_C3328(1, v160, &v167[32], &v166.__r_.__value_.__l.__data_, v168);
    v95 = *(a1 + 568);
    v96 = *(a1 + 560);
    v97 = 30 * ((v95 - v96) >> 3) - 1;
    if (v95 == v96)
    {
      v97 = 0;
    }

    if (v97 == *(a1 + 592) + *(a1 + 584))
    {
      sub_C35C4((a1 + 552));
      v96 = *(a1 + 560);
      v95 = *(a1 + 568);
    }

    if (v95 == v96)
    {
      v41 = 0;
    }

    else
    {
      v98 = *(a1 + 592) + *(a1 + 584);
      v41 = *(v96 + 8 * (v98 / 0x1E)) + 136 * (v98 % 0x1E);
    }

    goto LABEL_191;
  }

  v77 = *(a1 + 24);
  if (*(a1 + 8) == v77)
  {
    *v13 = *v45;
    v78 = (a1 + 48);
    v77 = a1 + 40;
  }

  else
  {
    *(a1 + 24) = v77 + 40;
    v78 = (v77 + 8);
    *(a1 + 104) = *v77;
    if (v13 == v77)
    {
      goto LABEL_221;
    }
  }

  v99 = *(v77 + 31);
  if (*(a1 + 135) < 0)
  {
    if (v99 >= 0)
    {
      v101 = v78;
    }

    else
    {
      v101 = *v78;
    }

    if (v99 >= 0)
    {
      v102 = *(v77 + 31);
    }

    else
    {
      v102 = *(v77 + 16);
    }

    sub_13B38(a1 + 112, v101, v102);
  }

  else if ((*(v77 + 31) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *v78, *(v77 + 16));
  }

  else
  {
    v100 = *v78;
    *(a1 + 128) = v78[2];
    *(a1 + 112) = v100;
  }

LABEL_221:
  *(a1 + 136) = *(v77 + 32);
  v183 = sub_C5A5C(a1, 0);
  if (!v183)
  {
    LODWORD(v44) = 6;
    goto LABEL_227;
  }

  if (*v13 == 41)
  {
    v103 = *(a1 + 24);
    if (*(a1 + 8) == v103)
    {
      *v13 = *v45;
    }

    else
    {
      *(a1 + 24) = v103 + 10;
      v46 = (v103 + 2);
      *(a1 + 104) = *v103;
      v45 = v103;
      if (v13 == v103)
      {
        goto LABEL_328;
      }
    }

    v154 = *(v45 + 31);
    if (*(a1 + 135) < 0)
    {
      if (v154 >= 0)
      {
        v156 = v46;
      }

      else
      {
        v156 = *v46;
      }

      if (v154 >= 0)
      {
        v157 = *(v45 + 31);
      }

      else
      {
        v157 = *(v45 + 2);
      }

      sub_13B38(a1 + 112, v156, v157);
    }

    else if ((*(v45 + 31) & 0x80) != 0)
    {
      sub_13A68((a1 + 112), *v46, *(v45 + 2));
    }

    else
    {
      v155 = *v46;
      *(a1 + 128) = v46[2];
      *(a1 + 112) = v155;
    }

LABEL_328:
    *(a1 + 136) = *(v45 + 4);
    v158 = sub_22DDEC(a1 + 344, a2, &v180);
    v159 = v158;
    if (v158)
    {
      if ((*(*v158 + 32))(v158) == 2)
      {
        v132 = v159;
LABEL_339:
        v177[0] = 0;
        goto LABEL_270;
      }

      v132 = 0;
      if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(v180), vceqzq_s64(v181)))))
      {
        goto LABEL_339;
      }

      if (!v182)
      {
        goto LABEL_339;
      }

      if (!*(&v182 + 1))
      {
        goto LABEL_339;
      }

      if (!v183)
      {
        goto LABEL_339;
      }

      if (*(a2 + 32) == 7)
      {
        v132 = v159;
        if (sub_22E4BC(v159, &v180))
        {
          goto LABEL_339;
        }
      }

      sub_22E074(*(a1 + 352), &v180);
    }

    v132 = 0;
    goto LABEL_339;
  }

  if (*(a3 + 23) >= 0)
  {
    v134 = *(a3 + 23);
  }

  else
  {
    v134 = a3[1];
  }

  if (v134 + 52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v134 + 52 > 0x16)
  {
    operator new();
  }

  qmemcpy(v167, "ERR021 - Invalid number of arguments for function: '", 52);
  if (*(a3 + 23) >= 0)
  {
    v135 = a3;
  }

  else
  {
    v135 = *a3;
  }

  memmove(&v167[52], v135, v134);
  v167[v134 + 52] = 0;
  v136 = std::string::append(v167, "'", 1uLL);
  v137 = *&v136->__r_.__value_.__l.__data_;
  *&v167[48] = *(&v136->__r_.__value_.__l + 2);
  *&v167[32] = v137;
  v136->__r_.__value_.__l.__size_ = 0;
  v136->__r_.__value_.__r.__words[2] = 0;
  v136->__r_.__value_.__r.__words[0] = 0;
  v138 = 21203;
  memset(&v165, 0, sizeof(v165));
  do
  {
    if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
    {
      v142 = (v165.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v165.__r_.__value_.__l.__size_ == v142)
      {
        if ((v165.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_3244();
        }

LABEL_300:
        operator new();
      }

      v139 = v165.__r_.__value_.__l.__size_;
      v140 = v165.__r_.__value_.__r.__words[0];
      ++v165.__r_.__value_.__l.__size_;
    }

    else
    {
      if (HIBYTE(v165.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_300;
      }

      v139 = HIBYTE(v165.__r_.__value_.__r.__words[2]);
      *(&v165.__r_.__value_.__s + 23) = (*(&v165.__r_.__value_.__s + 23) + 1) & 0x7F;
      v140 = &v165;
    }

    v141 = v140 + v139;
    *v141 = (v138 % 0xA) | 0x30;
    v141[1] = 0;
    v26 = v138 > 9;
    v138 /= 0xAu;
  }

  while (v26);
  v143 = HIBYTE(v165.__r_.__value_.__r.__words[2]);
  v144 = &v165;
  if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v143 = v165.__r_.__value_.__l.__size_;
    v144 = v165.__r_.__value_.__r.__words[0];
  }

  if (v143)
  {
    v145 = (v144 + v143 - 1);
    if (v145 > v144)
    {
      v146 = &v144->__r_.__value_.__s.__data_[1];
      do
      {
        v147 = *(v146 - 1);
        *(v146 - 1) = v145->__r_.__value_.__s.__data_[0];
        v145->__r_.__value_.__s.__data_[0] = v147;
        v145 = (v145 - 1);
        v33 = v146++ >= v145;
      }

      while (!v33);
    }
  }

  v148 = std::string::insert(&v165, 0, "exprtk.hpp:", 0xBuLL);
  v35 = a1;
  v149 = *&v148->__r_.__value_.__l.__data_;
  v166.__r_.__value_.__r.__words[2] = v148->__r_.__value_.__r.__words[2];
  *&v166.__r_.__value_.__l.__data_ = v149;
  v148->__r_.__value_.__l.__size_ = 0;
  v148->__r_.__value_.__r.__words[2] = 0;
  v148->__r_.__value_.__r.__words[0] = 0;
  sub_C3328(1, v160, &v167[32], &v166.__r_.__value_.__l.__data_, v168);
  v150 = *(a1 + 568);
  v151 = *(a1 + 560);
  v152 = 30 * ((v150 - v151) >> 3) - 1;
  if (v150 == v151)
  {
    v152 = 0;
  }

  if (v152 == *(a1 + 592) + *(a1 + 584))
  {
    sub_C35C4((a1 + 552));
    v151 = *(a1 + 560);
    v150 = *(a1 + 568);
  }

  if (v150 == v151)
  {
    v41 = 0;
  }

  else
  {
    v153 = *(a1 + 592) + *(a1 + 584);
    v41 = *(v151 + 8 * (v153 / 0x1E)) + 136 * (v153 % 0x1E);
  }

LABEL_191:
  sub_C398C(v41, v168);
  ++*(v35 + 592);
  if (v176 < 0)
  {
    operator delete(__p);
    if ((v174 & 0x80000000) == 0)
    {
LABEL_193:
      if ((v172 & 0x80000000) == 0)
      {
        goto LABEL_194;
      }

      goto LABEL_202;
    }
  }

  else if ((v174 & 0x80000000) == 0)
  {
    goto LABEL_193;
  }

  operator delete(v173);
  if ((v172 & 0x80000000) == 0)
  {
LABEL_194:
    if ((v170 & 0x80000000) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_203;
  }

LABEL_202:
  operator delete(v171);
  if ((v170 & 0x80000000) == 0)
  {
LABEL_195:
    if ((SHIBYTE(v166.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_204;
  }

LABEL_203:
  operator delete(v169);
  if ((SHIBYTE(v166.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_196:
    if ((SHIBYTE(v165.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_197;
    }

    goto LABEL_205;
  }

LABEL_204:
  operator delete(v166.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v165.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_197:
    if ((v167[55] & 0x80000000) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_206;
  }

LABEL_205:
  operator delete(v165.__r_.__value_.__l.__data_);
  if ((v167[55] & 0x80000000) == 0)
  {
LABEL_198:
    if ((v167[23] & 0x80000000) != 0)
    {
      goto LABEL_207;
    }

    goto LABEL_269;
  }

LABEL_206:
  operator delete(*&v167[32]);
  if ((v167[23] & 0x80000000) != 0)
  {
LABEL_207:
    operator delete(*v167);
  }

LABEL_269:
  v132 = 0;
LABEL_270:
  sub_22EEE0(v177);
  return v132;
}