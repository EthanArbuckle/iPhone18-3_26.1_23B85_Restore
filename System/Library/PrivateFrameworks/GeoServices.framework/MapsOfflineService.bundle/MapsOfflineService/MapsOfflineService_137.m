void sub_88863C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  sub_703590(&a13);
  sub_703590(&a16);
  sub_703590(&a19);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_8886B4(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
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

  return *a1 + 40 * a2;
}

void sub_8887F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_8888D0(void **a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    while ((*(v2 + 113) & 1) == 0)
    {
      v2 += 144;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  v5 = *sub_8886B4(*a1, a1[1][2]);
  v6 = *sub_8886B4(*a1, a1[1][3]);
  v7 = (v5 - *v5);
  v8 = *v7;
  if (v8 >= 0x9B && v7[77])
  {
    v9 = *(v5 + v7[77] + 1) & 1;
    v10 = (v6 - *v6);
    v11 = *v10;
    if (v11 < 0x9B)
    {
LABEL_14:
      if (v9)
      {
        return 0;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
    v10 = (v6 - *v6);
    v11 = *v10;
    if (v11 < 0x9B)
    {
      goto LABEL_14;
    }
  }

  if (!v10[77])
  {
    goto LABEL_14;
  }

  if ((v9 ^ *(v6 + v10[77] + 1)))
  {
    return 0;
  }

LABEL_16:
  if (v8 >= 0x9B && v7[77])
  {
    v13 = v11 < 0x9B || (*(v5 + v7[77]) & 0x100) == 0;
    if (!v13 && v10[77] && (*(v6 + v10[77] + 1) & 1) != 0)
    {
      v14 = v7[23];
      if (v14)
      {
        v15 = *(v5 + v14);
        v16 = v10[23];
        if (v16)
        {
          if ((v15 == 0) != (*(v6 + v16) == 0))
          {
            return 0;
          }
        }

        else if (!v15)
        {
          return 0;
        }
      }

      else if (v10[23] && !*(v6 + v10[23]))
      {
        return 0;
      }
    }
  }

  return 1;
}

void sub_888A54(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  sub_6D3D8C(*a1, *(*a2 + 40 * a3 + 32) | ((*(*a2 + 40 * a3 + 36) & 0x1FFFFFFF) << 32), &v43);
  v12 = v43;
  v13 = v44;
  if (v43 == v44)
  {
    goto LABEL_36;
  }

  do
  {
    v14 = sub_30CC30(*a1, *v12);
    v15 = (v14 - *v14);
    if (*v15 < 5u)
    {
      goto LABEL_3;
    }

    v16 = v15[2];
    if (!v16 || *(v14 + v16) != 3)
    {
      goto LABEL_3;
    }

    sub_320200(*a1, *v12, &v41);
    v17 = v41;
    v18 = (v42 - v41) >> 3;
    if (v18 <= (-a3 - 0x3333333333333333 * ((a2[1] - *a2) >> 3)))
    {
      if (v41 != v42)
      {
        v19 = (40 * a3 + *a2 + 36);
        v20 = v41;
        while (*v20 == *(v19 - 1) && *(v20 + 2) == *v19 && (v20[6] ^ (*v19 >> 29) & 1) == 1)
        {
          v19 += 10;
          v20 += 8;
          if (v20 == v42)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_8;
      }

LABEL_16:
      v21 = *a4;
      v22 = a4[1];
      v23 = v41;
      v24 = v22 - *a4;
      if (v22 == *a4)
      {
        goto LABEL_28;
      }

      v25 = v18 < v24 >> 3;
      v26 = v18 - (v24 >> 3);
      if (!v25)
      {
        v27 = &v41[8 * v26 + 8];
        if (v27 != v41)
        {
          v30 = *v21;
          v28 = v21 + 1;
          v29 = v30;
          v23 = v41;
          while (__PAIR64__(*(v23 + 2), *v23) != __PAIR64__(WORD2(v29), v29) || v23[6] != BYTE6(v29))
          {
LABEL_20:
            v23 += 8;
            if (v23 == v27)
            {
              goto LABEL_8;
            }
          }

          v31 = (v23 + 14);
          v32 = v28;
          while (v32 != v22)
          {
            v33 = *v32;
            if (__PAIR64__(*(v31 - 1), *(v31 - 6)) == __PAIR64__(WORD2(*v32), *v32))
            {
              v34 = *v31;
              v31 += 8;
              ++v32;
              if (v34 == BYTE6(v33))
              {
                continue;
              }
            }

            goto LABEL_20;
          }

LABEL_28:
          if (v23 != v42)
          {
            sub_888DB4(a1, v12, a5, &__p);
            v35 = a5;
            sub_889A34(a6, *(a6 + 8), __p, v40, (v40 - __p) >> 7);
            v36 = __p;
            if (__p)
            {
              v37 = v40;
              v38 = __p;
              if (v40 != __p)
              {
                do
                {
                  v37 = sub_31104C(v37 - 16);
                }

                while (v37 != v36);
                v38 = __p;
              }

              v40 = v36;
              operator delete(v38);
            }

            v17 = v41;
            a5 = v35;
          }
        }
      }
    }

LABEL_8:
    if (v17)
    {
      v42 = v17;
      operator delete(v17);
    }

LABEL_3:
    ++v12;
  }

  while (v12 != v13);
  v12 = v43;
LABEL_36:
  if (v12)
  {
    v44 = v12;
    operator delete(v12);
  }
}

void sub_888D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  sub_703590(&a10);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
    v19 = a16;
    if (!a16)
    {
LABEL_3:
      sub_703590(v17);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v19 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  a17 = v19;
  operator delete(v19);
  sub_703590(v17);
  _Unwind_Resume(a1);
}

void ***sub_888DB4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v17 = a3;
  v7 = sub_30CC30(*a1, *a2);
  v8 = (v7 - *v7);
  if (*v8 >= 0xBu && (v9 = v8[5]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    sub_7035EC(a4, *v10);
    v16[0] = v10 + 1;
    v18 = &v10[*v10 + 1];
    sub_703864(v16, &v18, a4, sub_31095C);
    v11 = *a4;
  }

  else
  {
    a4[2] = 0;
    v11 = 0uLL;
    *a4 = 0u;
  }

  v12 = &xmmword_27AF170;
  if (a3)
  {
    v12 = &xmmword_27AF198;
  }

  v16[0] = a1;
  v16[1] = &v17;
  v16[2] = v12;
  result = sub_88168C(v11, *(&v11 + 1), v16);
  v14 = result;
  v15 = a4[1];
  if (result != v15)
  {
    while (v15 != v14)
    {
      v15 -= 16;
      result = sub_31104C(v15);
    }

    a4[1] = v14;
  }

  return result;
}

void sub_888F30(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  if (a3 <= v4)
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  }

  else
  {
    v5 = a3;
  }

  v23 = v5;
  if (v4 > a3)
  {
    v6 = a1;
    v7 = a3;
    do
    {
      if (v6[6] < 0)
      {
        break;
      }

      v8 = sub_8886B4(a2, v7);
      v9 = (*v8 - **v8);
      if (*v9 < 0x2Fu)
      {
        break;
      }

      v10 = v9[23];
      if (!v10)
      {
        break;
      }

      v11 = *(*v8 + v10);
      v12 = v11 > 0x2A;
      v13 = (1 << v11) & 0x50426810004;
      if (v12 || v13 == 0)
      {
        break;
      }

      sub_6D3D8C(*v6, *(*a2 + 40 * v7 + 32) | ((*(*a2 + 40 * v7 + 36) & 0x1FFFFFFF) << 32), &v27);
      v16 = v27;
      v15 = v28;
      if (v27 != v28)
      {
        v25 = v28;
        do
        {
          v17 = sub_30CC30(*v6, *v16);
          v18 = (v17 - *v17);
          if (*v18 >= 5u)
          {
            v19 = v18[2];
            if (v19)
            {
              if (*(v17 + v19) == 3)
              {
                v20 = sub_30CC30(*v6, *v16);
                v21 = (v20 - *v20);
                if (*v21 >= 7u)
                {
                  v22 = v21[3];
                  if (v22)
                  {
                    if (*(v20 + v22 + *(v20 + v22)))
                    {
                      operator new();
                    }
                  }
                }

                v6 = a1;
                operator delete(0);
                v15 = v25;
              }
            }
          }

          ++v16;
        }

        while (v16 != v15);
        v16 = v27;
      }

      if (v16)
      {
        v28 = v16;
        operator delete(v16);
      }

      ++v7;
    }

    while (v7 != v23);
  }
}

void sub_889428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_703590(&a17);
  operator delete(v21);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
    sub_703590(a10);
    _Unwind_Resume(a1);
  }

  sub_703590(a10);
  _Unwind_Resume(a1);
}

void sub_8898AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_8898E8(uint64_t *a1, __int128 *a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v5 = 0x1AF286BCA1AF286;
  }

  else
  {
    v5 = v3;
  }

  v12 = a1;
  if (v5)
  {
    if (v5 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v9 = 152 * v2;
  v11 = 0;
  sub_5139E8(152 * v2, a2);
  v10 = 152 * v2 + 152;
  sub_686A24(a1, &__p);
  v6 = a1[1];
  sub_60DF74(&__p, v9);
  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_889A20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_60DF3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_889A34(void *a1, void ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a3;
    v8 = a1[1];
    v7 = a1[2];
    if (a5 <= (v7 - v8) >> 7)
    {
      v13 = v8 - a2;
      v14 = (v8 - a2) >> 7;
      if (v14 >= a5)
      {
        v19 = a5 << 7;
        sub_889CFC(a1, a2, a1[1], &a2[16 * a5]);
        v20 = v19 + v6;
        v21 = v5;
        do
        {
          sub_88A13C(v21, v6);
          v6 += 128;
          v21 += 128;
        }

        while (v6 != v20);
      }

      else
      {
        v16 = v13 + a3;
        a1[1] = sub_88A074(a1, v13 + a3, a4, a1[1]);
        if (v14 >= 1)
        {
          sub_889CFC(a1, v5, v8, v5 + (a5 << 7));
          if (v8 != v5)
          {
            v18 = v5;
            do
            {
              sub_88A13C(v18, v6);
              v6 += 128;
              v18 += 128;
            }

            while (v6 != v16);
          }
        }
      }
    }

    else
    {
      v9 = *a1;
      v10 = a5 + ((v8 - *a1) >> 7);
      if (v10 >> 57)
      {
        sub_1794();
      }

      v11 = v7 - v9;
      if (v11 >> 6 > v10)
      {
        v10 = v11 >> 6;
      }

      if (v11 >= 0x7FFFFFFFFFFFFF80)
      {
        v12 = 0x1FFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      v31 = a1;
      if (v12)
      {
        if (!(v12 >> 57))
        {
          operator new();
        }

        sub_1808();
      }

      v22 = (a2 - v9) >> 7 << 7;
      __p = 0;
      v28 = v22;
      v29 = v22;
      v30 = 0;
      v23 = v22 + (a5 << 7);
      do
      {
        *v22 = 0;
        *(v22 + 8) = 0;
        *(v22 + 16) = 0;
        *v22 = *v6;
        *(v22 + 16) = *(v6 + 16);
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v22 + 24) = 0;
        *(v22 + 32) = 0;
        *(v22 + 40) = 0;
        *(v22 + 24) = *(v6 + 24);
        *(v22 + 40) = *(v6 + 40);
        *(v6 + 32) = 0;
        *(v6 + 40) = 0;
        *(v6 + 24) = 0;
        *(v22 + 48) = *(v6 + 48);
        *(v22 + 64) = 0;
        *(v22 + 72) = 0;
        *(v22 + 56) = 0;
        *(v22 + 56) = *(v6 + 56);
        *(v22 + 72) = *(v6 + 72);
        *(v6 + 56) = 0;
        *(v6 + 64) = 0;
        *(v6 + 72) = 0;
        *(v22 + 80) = 0;
        *(v22 + 88) = 0;
        *(v22 + 96) = 0;
        *(v22 + 80) = *(v6 + 80);
        *(v22 + 96) = *(v6 + 96);
        *(v6 + 80) = 0;
        *(v6 + 88) = 0;
        *(v6 + 96) = 0;
        *(v22 + 104) = 0;
        *(v22 + 112) = 0;
        *(v22 + 120) = 0;
        *(v22 + 104) = *(v6 + 104);
        *(v22 + 120) = *(v6 + 120);
        *(v6 + 104) = 0;
        *(v6 + 112) = 0;
        *(v6 + 120) = 0;
        v22 += 128;
        v6 += 128;
      }

      while (v22 != v23);
      v29 = v23;
      v5 = sub_889E28(a1, &__p, a2);
      v25 = v28;
      for (i = v29; v29 != v25; i = v29)
      {
        v29 = i - 128;
        sub_31104C((i - 128));
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_889CE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_703810(va);
  _Unwind_Resume(a1);
}

uint64_t sub_889CFC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  v5 = a2 + v4 - a4;
  for (i = v4; v5 < a3; i += 128)
  {
    *i = 0;
    *(i + 8) = 0;
    *(i + 16) = 0;
    *i = *v5;
    *(i + 16) = *(v5 + 16);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(i + 24) = 0;
    *(i + 32) = 0;
    *(i + 40) = 0;
    *(i + 24) = *(v5 + 24);
    *(i + 40) = *(v5 + 40);
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 24) = 0;
    *(i + 48) = *(v5 + 48);
    *(i + 64) = 0;
    *(i + 72) = 0;
    *(i + 56) = 0;
    *(i + 56) = *(v5 + 56);
    *(i + 72) = *(v5 + 72);
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    *(i + 80) = 0;
    *(i + 88) = 0;
    *(i + 96) = 0;
    *(i + 80) = *(v5 + 80);
    *(i + 96) = *(v5 + 96);
    *(v5 + 80) = 0;
    *(v5 + 88) = 0;
    *(v5 + 96) = 0;
    *(i + 104) = 0;
    *(i + 112) = 0;
    *(i + 120) = 0;
    *(i + 104) = *(v5 + 104);
    *(i + 120) = *(v5 + 120);
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
    *(v5 + 120) = 0;
    v5 += 128;
  }

  *(result + 8) = i;
  if (v4 != a4)
  {
    v7 = v4 - 128;
    v8 = a4 - v4;
    v9 = a2 + v4 - 128 - a4;
    do
    {
      result = sub_88A13C(v7, v9);
      v7 -= 128;
      v9 -= 128;
      v8 += 128;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_889E28(uint64_t a1, void *a2, void ***a3)
{
  v6 = a2[1];
  v7 = *(a1 + 8);
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = *v9;
      *(v8 + 16) = v9[2];
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = *(v9 + 3);
      *(v8 + 40) = v9[5];
      v9[4] = 0;
      v9[5] = 0;
      v9[3] = 0;
      *(v8 + 48) = *(v9 + 24);
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = 0;
      *(v8 + 56) = *(v9 + 7);
      *(v8 + 72) = v9[9];
      v9[7] = 0;
      v9[8] = 0;
      v9[9] = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 80) = *(v9 + 5);
      *(v8 + 96) = v9[12];
      v9[10] = 0;
      v9[11] = 0;
      v9[12] = 0;
      *(v8 + 104) = 0;
      *(v8 + 112) = 0;
      *(v8 + 120) = 0;
      *(v8 + 104) = *(v9 + 13);
      *(v8 + 120) = v9[15];
      v9[13] = 0;
      v9[14] = 0;
      v9[15] = 0;
      v9 += 16;
      v8 += 128;
    }

    while (v9 != v7);
    v10 = a3;
    do
    {
      v10 = sub_31104C(v10) + 16;
    }

    while (v10 != v7);
  }

  v11 = *a1;
  v12 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v13 = (v12 + v11 - a3);
  if (v11 != a3)
  {
    v14 = v11;
    v15 = (v12 + v11 - a3);
    do
    {
      *v15 = 0;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = *v14;
      *(v15 + 2) = v14[2];
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      *(v15 + 3) = 0;
      *(v15 + 4) = 0;
      *(v15 + 5) = 0;
      *(v15 + 24) = *(v14 + 3);
      *(v15 + 5) = v14[5];
      v14[4] = 0;
      v14[5] = 0;
      v14[3] = 0;
      *(v15 + 24) = *(v14 + 24);
      *(v15 + 8) = 0;
      *(v15 + 9) = 0;
      *(v15 + 7) = 0;
      *(v15 + 56) = *(v14 + 7);
      *(v15 + 9) = v14[9];
      v14[7] = 0;
      v14[8] = 0;
      v14[9] = 0;
      *(v15 + 10) = 0;
      *(v15 + 11) = 0;
      *(v15 + 12) = 0;
      *(v15 + 5) = *(v14 + 5);
      *(v15 + 12) = v14[12];
      v14[10] = 0;
      v14[11] = 0;
      v14[12] = 0;
      *(v15 + 13) = 0;
      *(v15 + 14) = 0;
      *(v15 + 15) = 0;
      *(v15 + 104) = *(v14 + 13);
      *(v15 + 15) = v14[15];
      v14[13] = 0;
      v14[14] = 0;
      v14[15] = 0;
      v14 += 16;
      v15 += 128;
    }

    while (v14 != a3);
    do
    {
      v11 = sub_31104C(v11) + 16;
    }

    while (v11 != a3);
  }

  a2[1] = v13;
  v16 = *a1;
  *a1 = v13;
  *(a1 + 8) = v16;
  a2[1] = v16;
  v17 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v17;
  v18 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_88A074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (result = a4; a2 != a3; result += 128)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = *a2;
    *(result + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 40);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(result + 48) = *(a2 + 48);
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 56) = 0;
    *(result + 56) = *(a2 + 56);
    *(result + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 80) = *(a2 + 80);
    *(result + 96) = *(a2 + 96);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
    *(result + 104) = *(a2 + 104);
    *(result + 120) = *(a2 + 120);
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    a2 += 128;
  }

  return result;
}

uint64_t sub_88A13C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 == v4)
    {
LABEL_11:
      *(a1 + 8) = v4;
      operator delete(v6);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 3));
        v7 = v5 - 6;
        if (*(v5 - 25) < 0)
        {
LABEL_9:
          operator delete(*v7);
        }
      }

      else
      {
        v7 = v5 - 6;
        if (*(v5 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v5 = v7;
      if (v7 == v4)
      {
        v6 = *a1;
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = (a1 + 24);
  v9 = *(a1 + 24);
  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 24);
  if (v10 != v9)
  {
    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        v12 = v10 - 6;
        if (*(v10 - 25) < 0)
        {
LABEL_20:
          operator delete(*v12);
        }
      }

      else
      {
        v12 = v10 - 6;
        if (*(v10 - 25) < 0)
        {
          goto LABEL_20;
        }
      }

      v10 = v12;
      if (v12 == v9)
      {
        v11 = *v8;
        break;
      }
    }
  }

  *(a1 + 32) = v9;
  operator delete(v11);
  *v8 = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
LABEL_23:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v13 = (a1 + 56);
  v14 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  if (v14)
  {
    v15 = *(a1 + 64);
    v16 = v14;
    if (v15 != v14)
    {
      do
      {
        if (*(v15 - 9) < 0)
        {
          operator delete(*(v15 - 4));
        }

        v15 -= 5;
      }

      while (v15 != v14);
      v16 = *v13;
    }

    *(a1 + 64) = v14;
    operator delete(v16);
    *v13 = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v17 = (a1 + 80);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = *(a1 + 88);
    v20 = *(a1 + 80);
    if (v19 == v18)
    {
LABEL_41:
      *(a1 + 88) = v18;
      operator delete(v20);
      *v17 = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      goto LABEL_42;
    }

    while (1)
    {
      if (*(v19 - 9) < 0)
      {
        operator delete(*(v19 - 4));
        v21 = v19 - 7;
        if (*(v19 - 33) < 0)
        {
LABEL_39:
          operator delete(*v21);
        }
      }

      else
      {
        v21 = v19 - 7;
        if (*(v19 - 33) < 0)
        {
          goto LABEL_39;
        }
      }

      v19 = v21;
      if (v21 == v18)
      {
        v20 = *v17;
        goto LABEL_41;
      }
    }
  }

LABEL_42:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v22 = (a1 + 104);
  v23 = *(a1 + 104);
  if (v23)
  {
    v24 = *(a1 + 112);
    v25 = *(a1 + 104);
    if (v24 == v23)
    {
LABEL_52:
      *(a1 + 112) = v23;
      operator delete(v25);
      *v22 = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      goto LABEL_53;
    }

    while (1)
    {
      if (*(v24 - 1) < 0)
      {
        operator delete(*(v24 - 3));
        v26 = v24 - 6;
        if (*(v24 - 25) < 0)
        {
LABEL_50:
          operator delete(*v26);
        }
      }

      else
      {
        v26 = v24 - 6;
        if (*(v24 - 25) < 0)
        {
          goto LABEL_50;
        }
      }

      v24 = v26;
      if (v26 == v23)
      {
        v25 = *v22;
        goto LABEL_52;
      }
    }
  }

LABEL_53:
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  return a1;
}

uint64_t sub_88A424(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 6 > v3)
  {
    v3 = v5 >> 6;
  }

  if (v5 >= 0x7FFFFFFFFFFFFF80)
  {
    v6 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v12 = v2 << 7;
  v14 = 0;
  sub_88A54C(v2 << 7, a2);
  v13 = (v2 << 7) + 128;
  sub_7036C4(a1, &__p);
  v7 = a1[1];
  v9 = v12;
  for (i = v13; v13 != v9; i = v13)
  {
    v13 = i - 128;
    sub_31104C((i - 128));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_88A538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_703810(va);
  _Unwind_Resume(a1);
}

uint64_t sub_88A54C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 48) = *(a2 + 48);
  sub_88A89C((a1 + 56), (a2 + 56));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  if (v8 != v7)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v10 = *(a2 + 104);
  v9 = *(a2 + 112);
  if (v9 != v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4) <= 0x555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_88A7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  *(v9 + 112) = v12;
  sub_2C1A58(&a9);
  sub_310494(v11);
  sub_3108E8((v9 + 56));
  sub_1AA90(v10);
  sub_1AA90(v9);
  _Unwind_Resume(a1);
}

void sub_88A86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  sub_2C1A58(&a9);
  sub_1AA90(v9);
  _Unwind_Resume(a1);
}

void *sub_88A89C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_88A9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_55C6CC(&a11);
  *(v11 + 8) = v12;
  sub_55C730(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_88AA00(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    *(v6 + 16) = *(a2 + 16);
  }

  v7 = v6;
  *(v6 + 24) = *(a2 + 24);
  v8 = v6 + 40;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      *(v13 + 24) = *(v12 + 24);
      v12 = (v12 + 40);
      v13 += 40;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
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

void sub_88ABB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88ABC4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_88ABC4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_88AC2C(void *a1, unsigned __int8 *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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
        if (*(v7 + 16) == v2)
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void *sub_88AF68(void *a1, unsigned int *a2)
{
  v4 = sub_88B29C(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
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
LABEL_23:
    sub_88B354();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (sub_734A5C((v10 + 2), a2))
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
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
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (!sub_734A5C((v10 + 2), a2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_88B288(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88B450(va);
  _Unwind_Resume(a1);
}

unint64_t sub_88B29C(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C(__p, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    *__p = *(a2 + 2);
    v9 = *(a2 + 3);
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

  return (((v2 + 2654435769) << 6) + ((v2 + 2654435769) >> 2) + v5 + 2654435769u) ^ (v2 + 2654435769);
}

void sub_88B418(_Unwind_Exception *a1)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
    sub_88B450(v1);
    _Unwind_Resume(a1);
  }

  sub_88B450(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_88B450(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 71) < 0)
      {
        operator delete(*(v2 + 48));
        if ((*(v2 + 47) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 47) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 24));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_88B4C0(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (1)
    {
      sub_23914(*a3, v3);
      if ((v7 & 1) == 0)
      {
        break;
      }

      sub_23914(a3[1], v3 + 128);
      if ((v8 & 1) == 0)
      {
        break;
      }

      if (sub_7345C4(v3 + 64))
      {
        sub_88AF68(a3[2], (v3 + 64));
        if ((v9 & 1) == 0)
        {
          break;
        }
      }

      v3 += 152;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2 && v3 + 152 != a2)
    {
      v10 = v3 + 280;
      do
      {
        sub_23914(*a3, v10 - 128);
        if (v12)
        {
          sub_23914(a3[1], v10);
          if (v13)
          {
            if (!sub_7345C4(v10 - 64) || (sub_88AF68(a3[2], (v10 - 64)), (v14 & 1) != 0))
            {
              sub_52C14C(v3, (v10 - 128));
              v3 += 152;
            }
          }
        }

        v11 = v10 + 24;
        v10 += 152;
      }

      while (v11 != a2);
    }
  }

  return v3;
}

unint64_t sub_88B5F8(void **a1)
{
  v2 = a1[1];
  result = sub_4D1DC0(*a1);
  if (v2 != result && (result = sub_4D1EF8(*a1, v2), v4) && (result = sub_4D1EF8(*a1, v2), (*(result + 48 * v5 - 8) & 1) != 0))
  {
    v6 = sub_4D1F50(*a1, a1[1]);
    v7 = a1[1] + 1;
    a1[1] = v7;
    do
    {
      result = sub_4D1DC0(*a1);
      if (v7 >= result)
      {
        break;
      }

      result = sub_4D1F50(*a1, a1[1]);
      v8 = *(result + 32);
      v9 = *(result + 36);
      v10 = *(result + 38);
      v7 = a1[1] + 1;
      a1[1] = v7;
      v11 = *(v6 + 32);
    }

    while (v8 != v11 || v9 != WORD2(v11) || v10 != BYTE6(v11));
  }

  else
  {
    a1[1] = (a1[1] + 1);
  }

  return result;
}

void sub_88B6E4(uint64_t *a1, uint64_t *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v7 = a1;
    if (a4 == 2)
    {
      v8 = (a2 - 19);
      if (sub_88B988(a3, (a2 - 19), a1))
      {

        sub_88D238(v7, v8);
      }
    }

    else if (a4 <= 0)
    {

      sub_88BF40(a1, a2, a3);
    }

    else
    {
      v9 = a5;
      v11 = a4 >> 1;
      v12 = &a1[19 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v20[0] = a5;
        v20[1] = &v21;
        v21 = 0;
        sub_88C328(a1, &a1[19 * (a4 >> 1)], a3, a4 >> 1, a5);
        v21 = v11;
        v16 = a4 - v11;
        v17 = v9 + 152 * v11;
        sub_88C328(v12, a2, a3, v16, v17);
        v21 = a4;
        v18 = (v9 + 152 * a4);
        v19 = v17;
        while (v19 != v18)
        {
          if (sub_88B988(a3, v19, v9))
          {
            sub_52C14C(v7, v19);
            v19 = (v19 + 152);
            v7 += 152;
            if (v9 == v17)
            {
LABEL_26:
              while (v19 != v18)
              {
                sub_52C14C(v7, v19);
                v19 = (v19 + 152);
                v7 += 152;
              }

              goto LABEL_27;
            }
          }

          else
          {
            sub_52C14C(v7, v9);
            v9 = (v9 + 152);
            v7 += 152;
            if (v9 == v17)
            {
              goto LABEL_26;
            }
          }
        }

        while (v9 != v17)
        {
          sub_52C14C(v7, v9);
          v9 = (v9 + 152);
          v7 += 152;
        }

LABEL_27:
        sub_88C7B0(v20);
      }

      else
      {
        sub_88B6E4(a1, &a1[19 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v15 = a4 - v11;
        sub_88B6E4(v12, a2, a3, v15, v9, a6);

        sub_88C88C(v7, v12, a2, a3, v11, v15, v9, a6);
      }
    }
  }
}

void sub_88B960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

void sub_88B974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_88B988(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 120);
  v4 = *(a3 + 120);
  if (v3 == 1 && v4 != 1)
  {
    return 1;
  }

  if (v3 != 1 && v4 == 1)
  {
    return 0;
  }

  if (*(*a1 + 97) == 1)
  {
    if (v3 == 2 && v4 != 2)
    {
      return 1;
    }

    if (v3 != 2 && v4 == 2)
    {
      return 0;
    }
  }

  v12 = a1[1];
  sub_5139E8(v30, a2);
  v13 = sub_88CC7C(v12, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_22:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_34;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_23:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_35:
    operator delete(v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_34:
  operator delete(v34);
  if (v33 < 0)
  {
    goto LABEL_35;
  }

LABEL_24:
  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_36:
  operator delete(v30[0]);
LABEL_25:
  v14 = a1[1];
  sub_5139E8(v30, a3);
  v15 = sub_88CC7C(v14, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_27:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_39;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_28:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_41:
    operator delete(v30[0]);
    v16 = v13 >= v15;
    if (v13 != v15)
    {
      return !v16;
    }

    goto LABEL_42;
  }

LABEL_40:
  operator delete(v32);
  if (v31 < 0)
  {
    goto LABEL_41;
  }

LABEL_30:
  v16 = v13 >= v15;
  if (v13 != v15)
  {
    return !v16;
  }

LABEL_42:
  v17 = a1[2];
  sub_5139E8(v30, a2);
  v18 = sub_88CC7C(v17, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_44:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_56;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_45:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_57:
    operator delete(v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_58;
  }

LABEL_56:
  operator delete(v34);
  if (v33 < 0)
  {
    goto LABEL_57;
  }

LABEL_46:
  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

LABEL_58:
  operator delete(v30[0]);
LABEL_47:
  v19 = a1[2];
  sub_5139E8(v30, a3);
  v20 = sub_88CC7C(v19, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_49:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_61;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_50:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_62;
  }

LABEL_61:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_51:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_63:
    operator delete(v30[0]);
    v16 = v18 >= v20;
    if (v18 != v20)
    {
      return !v16;
    }

    goto LABEL_64;
  }

LABEL_62:
  operator delete(v32);
  if (v31 < 0)
  {
    goto LABEL_63;
  }

LABEL_52:
  v16 = v18 >= v20;
  if (v18 != v20)
  {
    return !v16;
  }

LABEL_64:
  v21 = a1[1];
  sub_5139E8(v30, a2);
  v22 = sub_88CEB0(v21, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_66:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_78;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_67:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_79:
    operator delete(v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_80;
  }

LABEL_78:
  operator delete(v34);
  if (v33 < 0)
  {
    goto LABEL_79;
  }

LABEL_68:
  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_69;
  }

LABEL_80:
  operator delete(v30[0]);
LABEL_69:
  v23 = a1[1];
  sub_5139E8(v30, a3);
  v24 = sub_88CEB0(v23, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_71:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_83;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_72:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_84;
  }

LABEL_83:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_73:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

LABEL_85:
    operator delete(v30[0]);
    v16 = v22 >= v24;
    if (v22 != v24)
    {
      return !v16;
    }

    goto LABEL_86;
  }

LABEL_84:
  operator delete(v32);
  if (v31 < 0)
  {
    goto LABEL_85;
  }

LABEL_74:
  v16 = v22 >= v24;
  if (v22 == v24)
  {
LABEL_86:
    v25 = a1[2];
    sub_5139E8(v30, a2);
    v26 = sub_88CEB0(v25, v29);
    sub_88CE0C(v29);
    v27 = a1[2];
    sub_5139E8(v30, a3);
    v28 = sub_88CEB0(v27, v29);
    sub_88CE0C(v29);
    v16 = v26 >= v28;
  }

  return !v16;
}

void sub_88BE9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88BEB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88BEC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88BED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88BEEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88BF00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88BF14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88BF28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88BF40(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 152;
    if (a1 + 152 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if (!sub_88B988(a3, v5, v8))
        {
          goto LABEL_4;
        }

        v10 = *v9;
        v36 = *(v9 + 16);
        *v35 = v10;
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        *v9 = 0;
        v11 = *(v8 + 208);
        v39 = *(v8 + 200);
        v12 = *(v8 + 176);
        v38 = *(v8 + 184);
        *(v8 + 184) = 0;
        *(v8 + 192) = 0;
        *(v8 + 200) = 0;
        v37 = v12;
        v40 = v11;
        LODWORD(v12) = *(v8 + 216);
        v43 = *(v8 + 240);
        v42 = *(v8 + 224);
        *(v8 + 224) = 0;
        *(v8 + 232) = 0;
        v13 = *(v8 + 248);
        v45 = *(v8 + 264);
        __p = v13;
        *(v8 + 240) = 0;
        *(v8 + 248) = 0;
        *(v8 + 256) = 0;
        *(v8 + 264) = 0;
        LODWORD(v11) = *(v8 + 272);
        v41 = v12;
        v46 = v11;
        v14 = *(v8 + 280);
        v48 = *(v8 + 296);
        v47 = v14;
        *(v8 + 280) = 0;
        *(v8 + 288) = 0;
        v15 = v7;
        *(v8 + 296) = 0;
        while (1)
        {
          v16 = v15;
          v17 = a1 + v15;
          if (*(a1 + v15 + 175) < 0)
          {
            operator delete(*(v17 + 152));
          }

          *(v17 + 152) = *v17;
          v18 = *(v17 + 16);
          v19 = *(v17 + 24);
          *(v17 + 23) = 0;
          *v17 = 0;
          *(v17 + 168) = v18;
          *(v17 + 176) = v19;
          if (*(v17 + 207) < 0)
          {
            operator delete(*(v17 + 184));
          }

          v20 = a1 + v16;
          *(v17 + 184) = *(v17 + 32);
          *(v17 + 200) = *(v17 + 48);
          *(v20 + 55) = 0;
          *(v17 + 32) = 0;
          *(v20 + 208) = *(a1 + v16 + 56);
          *(v20 + 216) = *(a1 + v16 + 64);
          if (*(a1 + v16 + 247) < 0)
          {
            operator delete(*(v20 + 224));
          }

          *(v20 + 224) = *(v20 + 72);
          *(v20 + 240) = *(v20 + 88);
          *(v20 + 95) = 0;
          *(v20 + 72) = 0;
          if (*(v20 + 271) < 0)
          {
            operator delete(*(v20 + 248));
          }

          v21 = a1 + v16;
          v22 = *(a1 + v16 + 96);
          *(v20 + 264) = *(a1 + v16 + 112);
          *(v20 + 248) = v22;
          *(v21 + 119) = 0;
          *(v21 + 96) = 0;
          *(v21 + 272) = *(a1 + v16 + 120);
          v23 = (a1 + v16 + 280);
          if (*(a1 + v16 + 303) < 0)
          {
            operator delete(*v23);
          }

          v24 = *(v21 + 128);
          *(a1 + v16 + 296) = *(v21 + 144);
          *v23 = v24;
          *(v21 + 151) = 0;
          *(v21 + 128) = 0;
          if (!v16)
          {
            break;
          }

          v25 = sub_88B988(a3, v35, a1 + v16 - 152);
          v15 = v16 - 152;
          if ((v25 & 1) == 0)
          {
            v26 = a1 + v16;
            if ((*(a1 + v15 + 175) & 0x80000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }
        }

        v26 = a1;
        if ((*(a1 + 23) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_22:
        operator delete(*v26);
LABEL_23:
        v27 = a1 + v16;
        v28 = *v35;
        *(v26 + 16) = v36;
        *v26 = v28;
        HIBYTE(v36) = 0;
        LOBYTE(v35[0]) = 0;
        *(v26 + 24) = v37;
        if (*(v26 + 55) < 0)
        {
          operator delete(*(v27 + 32));
        }

        v29 = v38;
        *(v27 + 48) = v39;
        *(v27 + 32) = v29;
        HIBYTE(v39) = 0;
        LOBYTE(v38) = 0;
        *(v26 + 56) = v40;
        *(v26 + 64) = v41;
        if (*(v26 + 95) < 0)
        {
          operator delete(*(v27 + 72));
        }

        v30 = v42;
        *(v27 + 88) = v43;
        *(v27 + 72) = v30;
        HIBYTE(v43) = 0;
        LOBYTE(v42) = 0;
        if (*(v26 + 119) < 0)
        {
          operator delete(*(v27 + 96));
        }

        v31 = __p;
        *(v27 + 112) = v45;
        *(v27 + 96) = v31;
        HIBYTE(v45) = 0;
        LOBYTE(__p) = 0;
        *(v26 + 120) = v46;
        if (*(v26 + 151) < 0)
        {
          operator delete(*(v27 + 128));
          v33 = SHIBYTE(v45);
          v34 = v47;
          *(v27 + 144) = v48;
          *(v27 + 128) = v34;
          HIBYTE(v48) = 0;
          LOBYTE(v47) = 0;
          if (v33 < 0)
          {
            operator delete(__p);
            if ((SHIBYTE(v43) & 0x80000000) == 0)
            {
LABEL_34:
              if ((SHIBYTE(v39) & 0x80000000) == 0)
              {
                goto LABEL_35;
              }

              goto LABEL_39;
            }
          }

          else if ((SHIBYTE(v43) & 0x80000000) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v32 = v47;
          *(v27 + 144) = v48;
          *(v27 + 128) = v32;
          HIBYTE(v48) = 0;
          LOBYTE(v47) = 0;
          if ((SHIBYTE(v43) & 0x80000000) == 0)
          {
            goto LABEL_34;
          }
        }

        operator delete(v42);
        if ((SHIBYTE(v39) & 0x80000000) == 0)
        {
LABEL_35:
          if (SHIBYTE(v36) < 0)
          {
            goto LABEL_40;
          }

          goto LABEL_4;
        }

LABEL_39:
        operator delete(v38);
        if (SHIBYTE(v36) < 0)
        {
LABEL_40:
          operator delete(v35[0]);
        }

LABEL_4:
        v5 = v9 + 152;
        v7 += 152;
        v8 = v9;
      }

      while (v9 + 152 != a2);
    }
  }
}

uint64_t *sub_88C328(uint64_t *result, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = result;
    if (a4 == 2)
    {
      v42[0] = a5;
      v42[1] = &v43;
      v43 = 0;
      v13 = a2 - 19;
      if (sub_88B988(a3, (a2 - 19), result))
      {
        v14 = *v13;
        *(a5 + 16) = v13[2];
        *a5 = v14;
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        *(a5 + 24) = *(a2 - 16);
        v15 = *(a2 - 15);
        *(a5 + 48) = *(a2 - 13);
        *(a5 + 32) = v15;
        *(a2 - 14) = 0;
        *(a2 - 13) = 0;
        *(a2 - 15) = 0;
        *(a5 + 56) = *(a2 - 12);
        *(a5 + 64) = *(a2 - 22);
        v16 = *(a2 - 5);
        *(a5 + 88) = *(a2 - 8);
        *(a5 + 72) = v16;
        *(a2 - 9) = 0;
        *(a2 - 8) = 0;
        *(a2 - 10) = 0;
        v17 = *(a2 - 7);
        *(a5 + 112) = *(a2 - 5);
        *(a5 + 96) = v17;
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        *(a2 - 7) = 0;
        *(a5 + 120) = *(a2 - 8);
        v18 = *(a2 - 3);
        *(a5 + 144) = *(a2 - 1);
        *(a5 + 128) = v18;
        *(a2 - 2) = 0;
        *(a2 - 1) = 0;
        *(a2 - 3) = 0;
        ++v43;
        v19 = *(v5 + 16);
        *(a5 + 152) = *v5;
        *(a5 + 168) = v19;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *v5 = 0;
        *(a5 + 176) = *(v5 + 24);
        v20 = *(v5 + 32);
        *(a5 + 200) = *(v5 + 48);
        *(a5 + 184) = v20;
        *(v5 + 40) = 0;
        *(v5 + 48) = 0;
        *(v5 + 32) = 0;
        *(a5 + 208) = *(v5 + 56);
        *(a5 + 216) = *(v5 + 64);
        v21 = *(v5 + 72);
        *(a5 + 240) = *(v5 + 88);
        *(a5 + 224) = v21;
        *(v5 + 80) = 0;
        *(v5 + 88) = 0;
        *(v5 + 72) = 0;
        v22 = *(v5 + 96);
        *(a5 + 264) = *(v5 + 112);
        *(a5 + 248) = v22;
        *(v5 + 104) = 0;
        *(v5 + 112) = 0;
        *(v5 + 96) = 0;
        *(a5 + 272) = *(v5 + 120);
        v23 = (a5 + 280);
        v24 = (v5 + 128);
        v25 = *(v5 + 128);
        v26 = *(v5 + 144);
      }

      else
      {
        v33 = *v5;
        *(a5 + 16) = *(v5 + 16);
        *a5 = v33;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *v5 = 0;
        *(a5 + 24) = *(v5 + 24);
        v34 = *(v5 + 32);
        *(a5 + 48) = *(v5 + 48);
        *(a5 + 32) = v34;
        *(v5 + 40) = 0;
        *(v5 + 48) = 0;
        *(v5 + 32) = 0;
        *(a5 + 56) = *(v5 + 56);
        *(a5 + 64) = *(v5 + 64);
        v35 = *(v5 + 72);
        *(a5 + 88) = *(v5 + 88);
        *(a5 + 72) = v35;
        *(v5 + 80) = 0;
        *(v5 + 88) = 0;
        *(v5 + 72) = 0;
        v36 = *(v5 + 96);
        *(a5 + 112) = *(v5 + 112);
        *(a5 + 96) = v36;
        *(v5 + 104) = 0;
        *(v5 + 112) = 0;
        *(v5 + 96) = 0;
        *(a5 + 120) = *(v5 + 120);
        v37 = *(v5 + 128);
        *(a5 + 144) = *(v5 + 144);
        *(a5 + 128) = v37;
        *(v5 + 136) = 0;
        *(v5 + 144) = 0;
        *(v5 + 128) = 0;
        ++v43;
        v38 = v13[2];
        *(a5 + 152) = *v13;
        *(a5 + 168) = v38;
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        *(a5 + 176) = *(a2 - 16);
        v39 = *(a2 - 15);
        *(a5 + 200) = *(a2 - 13);
        *(a5 + 184) = v39;
        *(a2 - 14) = 0;
        *(a2 - 13) = 0;
        *(a2 - 15) = 0;
        *(a5 + 208) = *(a2 - 12);
        *(a5 + 216) = *(a2 - 22);
        v40 = *(a2 - 5);
        *(a5 + 240) = *(a2 - 8);
        *(a5 + 224) = v40;
        *(a2 - 9) = 0;
        *(a2 - 8) = 0;
        *(a2 - 10) = 0;
        v41 = *(a2 - 7);
        *(a5 + 264) = *(a2 - 5);
        *(a5 + 248) = v41;
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        *(a2 - 7) = 0;
        *(a5 + 272) = *(a2 - 8);
        v23 = (a5 + 280);
        v24 = a2 - 3;
        v25 = *(a2 - 3);
        v26 = *(a2 - 1);
      }

      *(a5 + 296) = v26;
      *v23 = v25;
      *v24 = 0;
      v24[1] = 0;
      v24[2] = 0;
      v42[0] = 0;
      return sub_88C7B0(v42);
    }

    else if (a4 == 1)
    {
      v6 = *result;
      *(a5 + 16) = result[2];
      *a5 = v6;
      result[1] = 0;
      result[2] = 0;
      *result = 0;
      *(a5 + 24) = result[3];
      v7 = *(result + 2);
      *(a5 + 48) = result[6];
      *(a5 + 32) = v7;
      result[5] = 0;
      result[6] = 0;
      result[4] = 0;
      *(a5 + 56) = result[7];
      *(a5 + 64) = *(result + 16);
      v8 = *(result + 9);
      *(a5 + 88) = result[11];
      *(a5 + 72) = v8;
      result[10] = 0;
      result[11] = 0;
      result[9] = 0;
      v9 = *(result + 6);
      *(a5 + 112) = result[14];
      *(a5 + 96) = v9;
      result[13] = 0;
      result[14] = 0;
      result[12] = 0;
      *(a5 + 120) = *(result + 30);
      v10 = *(result + 8);
      *(a5 + 144) = result[18];
      *(a5 + 128) = v10;
      result[17] = 0;
      result[18] = 0;
      result[16] = 0;
    }

    else if (a4 > 8)
    {
      v27 = a4 >> 1;
      v28 = 152 * (a4 >> 1);
      sub_88B6E4(result, &result[v28 / 8], a3, v27, a5, v27);
      sub_88B6E4(v28 + v5, a2, a3, a4 - v27, a5 + v28, a4 - v27);

      return sub_88D854(v5, v28 + v5, v28 + v5, a2, a5, a3);
    }

    else
    {

      return sub_88D428(result, a2, a5, a3);
    }
  }

  return result;
}

void sub_88C79C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_88C7B0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 95);
      do
      {
        if (v5[56] < 0)
        {
          operator delete(*(v5 + 33));
          if ((v5[24] & 0x80000000) == 0)
          {
LABEL_7:
            if ((*v5 & 0x80000000) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_13;
          }
        }

        else if ((v5[24] & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        operator delete(*(v5 + 1));
        if ((*v5 & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(v5 - 40) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_14;
        }

LABEL_13:
        operator delete(*(v5 - 23));
        if ((*(v5 - 40) & 0x80000000) == 0)
        {
LABEL_9:
          if (*(v5 - 72) < 0)
          {
            goto LABEL_15;
          }

          goto LABEL_4;
        }

LABEL_14:
        operator delete(*(v5 - 63));
        if (*(v5 - 72) < 0)
        {
LABEL_15:
          operator delete(*(v5 - 95));
        }

LABEL_4:
        ++v4;
        v5 += 152;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void sub_88C88C(uint64_t a1, __int128 *a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a6;
  if (a6)
  {
    while (1)
    {
      if (v43 <= a8 || a5 <= a8)
      {
        sub_88DBC8(a1, a2, a3, a4, a5, v43, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v13 = 0;
      v14 = -a5;
      while (1)
      {
        v15 = v13 + a1;
        if (sub_88B988(a4, a2, v13 + a1))
        {
          break;
        }

        v13 = (v13 + 152);
        if (__CFADD__(v14++, 1))
        {
          return;
        }
      }

      v17 = -v14;
      v18 = v43;
      v40 = a3;
      v41 = a8;
      if (-v14 >= v43)
      {
        if (v14 == -1)
        {
          sub_88D238(v13 + a1, a2);
          return;
        }

        v23 = v17 / 2;
        v21 = v13 + 152 * (v17 / 2) + a1;
        v45 = *a4;
        v46 = a4[2];
        v20 = a2;
        if (a2 != a3)
        {
          v37 = v17 / 2;
          v24 = 0x86BCA1AF286BCA1BLL * ((a3 - a2) >> 3);
          v20 = a2;
          do
          {
            v25 = v20 + 152 * (v24 >> 1);
            v26 = sub_88B988(&v45, v25, v21);
            if (v26)
            {
              v24 += ~(v24 >> 1);
            }

            else
            {
              v24 >>= 1;
            }

            if (v26)
            {
              v20 = v25 + 152;
            }
          }

          while (v24);
          v18 = v43;
          v23 = v37;
        }

        v19 = 0x86BCA1AF286BCA1BLL * ((v20 - a2) >> 3);
        a3 = v20;
        if (a2 != v21)
        {
LABEL_31:
          a3 = v21;
          if (a2 != v20)
          {
            v38 = v23;
            v39 = v19;
            sub_88D238(v21, a2);
            a3 = (v21 + 152);
            for (i = a2 + 152; i != v20; i += 152)
            {
              if (a3 == a2)
              {
                a2 = i;
              }

              sub_88D238(a3, i);
              a3 = (a3 + 152);
            }

            if (a3 != a2)
            {
              v28 = a3;
              v29 = a2;
              while (1)
              {
                sub_88D238(v28, v29);
                v29 += 152;
                v30 = v28 + 152 == a2;
                if (v29 == v20)
                {
                  if ((v28 + 152) == a2)
                  {
                    break;
                  }

                  v29 = a2 + 152;
                  v28 += 304;
                  while (1)
                  {
                    sub_88D238(v28 - 152, a2);
                    v30 = v28 == a2;
                    if (v29 != v20)
                    {
                      break;
                    }

                    v31 = v28 == a2;
                    v28 += 152;
                    if (v31)
                    {
                      goto LABEL_48;
                    }
                  }
                }

                else
                {
                  v28 += 152;
                }

                if (v30)
                {
                  a2 = v29;
                }
              }
            }

LABEL_48:
            v18 = v43;
            v23 = v38;
            v19 = v39;
          }
        }
      }

      else
      {
        v19 = v43 / 2;
        v20 = a2 + 152 * (v43 / 2);
        v21 = a2;
        if ((a2 - a1) != v13)
        {
          v22 = 0x86BCA1AF286BCA1BLL * ((a2 - a1 - v13) >> 3);
          v21 = v13 + a1;
          do
          {
            if (sub_88B988(a4, v20, v21 + 152 * (v22 >> 1)))
            {
              v22 >>= 1;
            }

            else
            {
              v21 += 152 * (v22 >> 1) + 152;
              v22 += ~(v22 >> 1);
            }
          }

          while (v22);
          v18 = v43;
          v19 = v43 / 2;
        }

        v23 = 0x86BCA1AF286BCA1BLL * ((v21 - a1 - v13) >> 3);
        a3 = (a2 + 152 * (v43 / 2));
        if (a2 != v21)
        {
          goto LABEL_31;
        }
      }

      a5 = -v14 - v23;
      v32 = v18 - v19;
      if (v23 + v19 >= v18 - (v23 + v19) - v14)
      {
        v35 = v23;
        v36 = v19;
        sub_88C88C(a3, v20, v40, a4, a5, v18 - v19, a7, v41);
        a2 = v21;
        a8 = v41;
        a5 = v35;
        v43 = v36;
        a1 = v15;
        if (!v36)
        {
          return;
        }
      }

      else
      {
        v33 = v21;
        a8 = v41;
        sub_88C88C(v13 + a1, v33, a3, a4, v23, v19, a7, v41);
        v34 = a3;
        a2 = v20;
        a3 = v40;
        v43 = v32;
        a1 = v34;
        if (!v32)
        {
          return;
        }
      }
    }
  }
}

void *sub_88CC7C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  *v16 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v17 = v6;
  v18 = v7;
  *v19 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  *(a2 + 56) = 0;
  v20 = v8;
  v21 = v9;
  v22 = *(a2 + 72);
  v10 = *(a2 + 80);
  v24 = *(a2 + 96);
  *v23 = v10;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v11 = *(a2 + 104);
  v26 = *(a2 + 120);
  *v25 = v11;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v27 = *(a2 + 128);
  v12 = *(a2 + 136);
  v29 = *(a2 + 152);
  *__p = v12;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v13 = sub_88D074(v4, v5, v15);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v24) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25[0]);
  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(v19[0]);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      return v13;
    }

LABEL_11:
    operator delete(v16[0]);
    return v13;
  }

LABEL_9:
  operator delete(v23[0]);
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (SHIBYTE(v17) < 0)
  {
    goto LABEL_11;
  }

  return v13;
}

void sub_88CDF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_88CE0C(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 103) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 127) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 104));
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(*(a1 + 40));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_11;
  }

LABEL_9:
  operator delete(*(a1 + 80));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_11:
  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_88CEB0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *v10 = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v11 = HIBYTE(v4);
  *v12 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v5 = *(a2 + 56);
  *(a2 + 56) = 0;
  v13 = HIBYTE(v5);
  v14 = *(a2 + 72);
  v6 = *(a2 + 80);
  v16 = *(a2 + 96);
  *v15 = v6;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v7 = *(a2 + 104);
  v18 = *(a2 + 120);
  *v17 = v7;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v19 = *(a2 + 128);
  v8 = *(a2 + 136);
  v21 = *(a2 + 152);
  *__p = v8;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  if (v2 != v3)
  {
    while (!sub_7345C4(&v14) || !sub_734A5C(&v14, v2 + 64))
    {
      v2 += 152;
      if (v2 == v3)
      {
        v2 = v3;
        if ((SHIBYTE(v21) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }
  }

  if (SHIBYTE(v21) < 0)
  {
LABEL_13:
    operator delete(__p[0]);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else
  {
LABEL_7:
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  operator delete(v17[0]);
  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    operator delete(v12[0]);
    if ((v11 & 0x80000000) == 0)
    {
      return v2;
    }

LABEL_17:
    operator delete(v10[0]);
    return v2;
  }

LABEL_15:
  operator delete(v15[0]);
  if (v13 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v11 < 0)
  {
    goto LABEL_17;
  }

  return v2;
}

void sub_88D060(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void *sub_88D074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v6 = (a3 + 136);
    if (*(a3 + 31) >= 0)
    {
      v7 = *(a3 + 31);
    }

    else
    {
      v7 = *(a3 + 16);
    }

    v8 = a1 + 128;
    if ((*(a3 + 31) & 0x80) != 0)
    {
      while (1)
      {
        v10 = (v8 - 128);
        v21 = *(v8 - 105);
        v22 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v8 - 120);
        }

        if (v21 == v7)
        {
          v23 = (v22 >= 0 ? v8 - 128 : *v10);
          if (!memcmp(v23, *(a3 + 8), v7))
          {
            break;
          }
        }

        v24 = *(v8 + 23);
        if (v24 >= 0)
        {
          v25 = *(v8 + 23);
        }

        else
        {
          v25 = *(v8 + 8);
        }

        v26 = *(a3 + 159);
        v27 = v26;
        if ((v26 & 0x80u) != 0)
        {
          v26 = *(a3 + 144);
        }

        if (v25 == v26)
        {
          v28 = v24 >= 0 ? v8 : *v8;
          v29 = v27 >= 0 ? v6 : *v6;
          if (!memcmp(v28, v29, v25))
          {
            return v10;
          }
        }

        v3 += 152;
        v20 = v8 + 24;
        v8 += 152;
        if (v20 == a2)
        {
          return a2;
        }
      }
    }

    else
    {
      while (1)
      {
        v10 = (v8 - 128);
        v11 = *(v8 - 105);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(v8 - 120);
        }

        if (v11 == v7)
        {
          v13 = (v12 >= 0 ? v8 - 128 : *v10);
          if (!memcmp(v13, (a3 + 8), v7))
          {
            break;
          }
        }

        v14 = *(v8 + 23);
        if (v14 >= 0)
        {
          v15 = *(v8 + 23);
        }

        else
        {
          v15 = *(v8 + 8);
        }

        v16 = *(a3 + 159);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(a3 + 144);
        }

        if (v15 == v16)
        {
          v18 = v14 >= 0 ? v8 : *v8;
          v19 = v17 >= 0 ? v6 : *v6;
          if (!memcmp(v18, v19, v15))
          {
            return v10;
          }
        }

        v3 += 152;
        v9 = v8 + 24;
        v8 += 152;
        if (v9 == a2)
        {
          return a2;
        }
      }
    }
  }

  return v3;
}

void sub_88D238(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  *v22 = *(a1 + 8);
  *&v22[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  *&v21[7] = *(a1 + 47);
  *v21 = *(a1 + 40);
  v7 = *(a1 + 55);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  *&v20[7] = *(a1 + 87);
  *v20 = *(a1 + 80);
  v11 = *(a1 + 95);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v15 = *(a1 + 96);
  *&v19[7] = *(a1 + 111);
  *v19 = *(a1 + 104);
  v12 = *(a1 + 119);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v13 = *(a1 + 120);
  v14 = v12;
  v17 = *(a1 + 128);
  *&v18[7] = *(a1 + 143);
  *v18 = *(a1 + 136);
  v16 = *(a1 + 151);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_52C14C(a1, a2);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v3;
  *(a2 + 8) = *v22;
  *(a2 + 15) = *&v22[7];
  *(a2 + 23) = v4;
  *(a2 + 24) = v5;
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  *(a2 + 32) = v6;
  *(a2 + 40) = *v21;
  *(a2 + 47) = *&v21[7];
  *(a2 + 55) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  *(a2 + 72) = v10;
  *(a2 + 80) = *v20;
  *(a2 + 87) = *&v20[7];
  *(a2 + 95) = v11;
  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  *(a2 + 96) = v15;
  *(a2 + 104) = *v19;
  *(a2 + 111) = *&v19[7];
  *(a2 + 119) = v14;
  *(a2 + 120) = v13;
  if (*(a2 + 151) < 0)
  {
    operator delete(*(a2 + 128));
  }

  *(a2 + 128) = v17;
  *(a2 + 136) = *v18;
  *(a2 + 143) = *&v18[7];
  *(a2 + 151) = v16;
}

uint64_t *sub_88D428(uint64_t *result, uint64_t *a2, uint64_t a3, void *a4)
{
  if (result != a2)
  {
    v6 = result;
    v35[0] = a3;
    v35[1] = &v36;
    v7 = *result;
    *(a3 + 16) = result[2];
    *a3 = v7;
    result[1] = 0;
    result[2] = 0;
    *result = 0;
    *(a3 + 24) = result[3];
    v8 = *(result + 2);
    *(a3 + 48) = result[6];
    *(a3 + 32) = v8;
    result[5] = 0;
    result[6] = 0;
    result[4] = 0;
    *(a3 + 56) = result[7];
    *(a3 + 64) = *(result + 16);
    v9 = *(result + 9);
    *(a3 + 88) = result[11];
    *(a3 + 72) = v9;
    result[10] = 0;
    result[11] = 0;
    result[9] = 0;
    v10 = *(result + 6);
    *(a3 + 112) = result[14];
    *(a3 + 96) = v10;
    result[13] = 0;
    result[14] = 0;
    result[12] = 0;
    *(a3 + 120) = *(result + 30);
    v11 = *(result + 8);
    *(a3 + 144) = result[18];
    *(a3 + 128) = v11;
    result[17] = 0;
    result[18] = 0;
    result[16] = 0;
    v36 = 1;
    v12 = (result + 19);
    if (result + 19 != a2)
    {
      v14 = 0;
      v15 = a3;
      do
      {
        while (1)
        {
          v21 = v12;
          v22 = (v15 + 152);
          if (sub_88B988(a4, v12, v15))
          {
            break;
          }

          v16 = *v21;
          *(v15 + 168) = *(v21 + 16);
          *v22 = v16;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *v21 = 0;
          *(v15 + 176) = *(v6 + 176);
          v17 = *(v6 + 184);
          *(v15 + 200) = *(v6 + 200);
          *(v15 + 184) = v17;
          *(v6 + 192) = 0;
          *(v6 + 200) = 0;
          *(v6 + 184) = 0;
          *(v15 + 208) = *(v6 + 208);
          *(v15 + 216) = *(v6 + 216);
          v18 = *(v6 + 224);
          *(v15 + 240) = *(v6 + 240);
          *(v15 + 224) = v18;
          *(v6 + 232) = 0;
          *(v6 + 240) = 0;
          *(v6 + 224) = 0;
          v19 = *(v6 + 248);
          *(v15 + 264) = *(v6 + 264);
          *(v15 + 248) = v19;
          *(v6 + 256) = 0;
          *(v6 + 264) = 0;
          *(v6 + 248) = 0;
          *(v15 + 272) = *(v6 + 272);
          v20 = *(v6 + 280);
          *(v15 + 296) = *(v6 + 296);
          *(v15 + 280) = v20;
          *(v6 + 288) = 0;
          *(v6 + 296) = 0;
          *(v6 + 280) = 0;
          ++v36;
          v12 = v21 + 152;
          v14 += 152;
          v15 += 152;
          v6 = v21;
          if ((v21 + 152) == a2)
          {
            goto LABEL_23;
          }
        }

        *v22 = *v15;
        v23 = *(v15 + 24);
        *(v15 + 168) = *(v15 + 16);
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        *v15 = 0;
        *(v15 + 176) = v23;
        *(v15 + 184) = *(v15 + 32);
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
        v24 = *(v15 + 48);
        v25 = *(v15 + 56);
        *(v15 + 48) = 0;
        *(v15 + 200) = v24;
        *(v15 + 208) = v25;
        *(v15 + 216) = *(v15 + 64);
        v26 = *(v15 + 72);
        *(v15 + 240) = *(v15 + 88);
        *(v15 + 224) = v26;
        *(v15 + 72) = 0;
        *(v15 + 80) = 0;
        v27 = *(v15 + 96);
        *(v15 + 264) = *(v15 + 112);
        *(v15 + 248) = v27;
        *(v15 + 88) = 0;
        *(v15 + 96) = 0;
        *(v15 + 104) = 0;
        *(v15 + 112) = 0;
        *(v15 + 272) = *(v15 + 120);
        v28 = *(v15 + 128);
        *(v15 + 296) = *(v15 + 144);
        *(v15 + 280) = v28;
        *(v15 + 128) = 0;
        *(v15 + 136) = 0;
        *(v15 + 144) = 0;
        v29 = a3;
        ++v36;
        if (v15 != a3)
        {
          v30 = v14;
          do
          {
            v31 = a3 + v30;
            if (!sub_88B988(a4, v21, a3 + v30 - 152))
            {
              v29 = a3 + v30;
              goto LABEL_22;
            }

            v32 = a3 + v30;
            if (*(a3 + v30 + 23) < 0)
            {
              operator delete(*v31);
            }

            *v31 = *(a3 + v30 - 152);
            *(v31 + 16) = *(a3 + v30 - 136);
            *(v32 - 129) = 0;
            *(v31 - 152) = 0;
            *(v32 + 24) = *(v32 - 128);
            if (*(v32 + 55) < 0)
            {
              operator delete(*(v32 + 32));
            }

            v33 = a3 + v30;
            *(v32 + 32) = *(v32 - 120);
            *(v32 + 48) = *(v32 - 104);
            *(v33 - 97) = 0;
            *(v32 - 120) = 0;
            *(v33 + 56) = *(a3 + v30 - 96);
            *(v33 + 64) = *(a3 + v30 - 88);
            if (*(a3 + v30 + 95) < 0)
            {
              operator delete(*(v33 + 72));
            }

            *(v33 + 72) = *(v33 - 80);
            *(v33 + 88) = *(v33 - 64);
            *(v33 - 57) = 0;
            *(v33 - 80) = 0;
            if (*(v33 + 119) < 0)
            {
              operator delete(*(v33 + 96));
            }

            v34 = a3 + v30;
            *(v33 + 96) = *(a3 + v30 - 56);
            *(v33 + 112) = *(a3 + v30 - 40);
            *(v34 - 33) = 0;
            *(v34 - 56) = 0;
            *(v34 + 120) = *(a3 + v30 - 32);
            if (*(a3 + v30 + 151) < 0)
            {
              operator delete(*(v34 + 128));
            }

            *(v34 + 128) = *(v34 - 24);
            *(v34 + 144) = *(v34 - 8);
            *(v34 - 1) = 0;
            *(v34 - 24) = 0;
            v30 -= 152;
          }

          while (v30);
          v29 = a3;
        }

LABEL_22:
        sub_52C14C(v29, v21);
        v12 = v21 + 152;
        v14 += 152;
        v15 = v22;
        v6 = v21;
      }

      while ((v21 + 152) != a2);
    }

LABEL_23:
    v35[0] = 0;
    return sub_88C7B0(v35);
  }

  return result;
}

void sub_88D82C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

void sub_88D840(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_88D854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a5;
  v8 = a3;
  v34[0] = a5;
  v34[1] = &v35;
  v35 = 0;
  if (a1 == a2)
  {
    v9 = 0;
    goto LABEL_3;
  }

  v16 = a1;
  if (a3 != a4)
  {
    while (1)
    {
      if (sub_88B988(a6, v8, v16))
      {
        v18 = *v8;
        *(v6 + 16) = *(v8 + 16);
        *v6 = v18;
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *v8 = 0;
        *(v6 + 24) = *(v8 + 24);
        v19 = *(v8 + 32);
        *(v6 + 48) = *(v8 + 48);
        *(v6 + 32) = v19;
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        *(v8 + 32) = 0;
        *(v6 + 56) = *(v8 + 56);
        *(v6 + 64) = *(v8 + 64);
        v20 = *(v8 + 72);
        *(v6 + 88) = *(v8 + 88);
        *(v6 + 72) = v20;
        *(v8 + 80) = 0;
        *(v8 + 88) = 0;
        *(v8 + 72) = 0;
        v21 = *(v8 + 96);
        *(v6 + 112) = *(v8 + 112);
        *(v6 + 96) = v21;
        *(v8 + 104) = 0;
        *(v8 + 112) = 0;
        *(v8 + 96) = 0;
        *(v6 + 120) = *(v8 + 120);
        v22 = *(v8 + 128);
        *(v6 + 144) = *(v8 + 144);
        *(v6 + 128) = v22;
        *(v8 + 136) = 0;
        *(v8 + 144) = 0;
        *(v8 + 128) = 0;
        v8 += 152;
      }

      else
      {
        v23 = *v16;
        *(v6 + 16) = *(v16 + 16);
        *v6 = v23;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        *v16 = 0;
        *(v6 + 24) = *(v16 + 24);
        v24 = *(v16 + 32);
        *(v6 + 48) = *(v16 + 48);
        *(v6 + 32) = v24;
        *(v16 + 40) = 0;
        *(v16 + 48) = 0;
        *(v16 + 32) = 0;
        *(v6 + 56) = *(v16 + 56);
        *(v6 + 64) = *(v16 + 64);
        v25 = *(v16 + 72);
        *(v6 + 88) = *(v16 + 88);
        *(v6 + 72) = v25;
        *(v16 + 80) = 0;
        *(v16 + 88) = 0;
        *(v16 + 72) = 0;
        v26 = *(v16 + 96);
        *(v6 + 112) = *(v16 + 112);
        *(v6 + 96) = v26;
        *(v16 + 104) = 0;
        *(v16 + 112) = 0;
        *(v16 + 96) = 0;
        *(v6 + 120) = *(v16 + 120);
        v27 = *(v16 + 128);
        *(v6 + 144) = *(v16 + 144);
        *(v6 + 128) = v27;
        *(v16 + 136) = 0;
        *(v16 + 144) = 0;
        *(v16 + 128) = 0;
        v16 += 152;
      }

      v9 = ++v35;
      v6 += 152;
      if (v16 == a2)
      {
        break;
      }

      if (v8 == a4)
      {
        goto LABEL_13;
      }
    }

LABEL_3:
    if (v8 != a4)
    {
      do
      {
        v10 = *v8;
        *(v6 + 16) = *(v8 + 16);
        *v6 = v10;
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *v8 = 0;
        *(v6 + 24) = *(v8 + 24);
        v11 = *(v8 + 32);
        *(v6 + 48) = *(v8 + 48);
        *(v6 + 32) = v11;
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        *(v8 + 32) = 0;
        *(v6 + 56) = *(v8 + 56);
        *(v6 + 64) = *(v8 + 64);
        v12 = *(v8 + 72);
        *(v6 + 88) = *(v8 + 88);
        *(v6 + 72) = v12;
        *(v8 + 80) = 0;
        *(v8 + 88) = 0;
        *(v8 + 72) = 0;
        v13 = *(v8 + 96);
        *(v6 + 112) = *(v8 + 112);
        *(v6 + 96) = v13;
        *(v8 + 104) = 0;
        *(v8 + 112) = 0;
        *(v8 + 96) = 0;
        *(v6 + 120) = *(v8 + 120);
        v14 = *(v8 + 128);
        *(v6 + 144) = *(v8 + 144);
        *(v6 + 128) = v14;
        *(v8 + 136) = 0;
        *(v8 + 144) = 0;
        *(v8 + 128) = 0;
        v8 += 152;
        v6 += 152;
        ++v9;
      }

      while (v8 != a4);
LABEL_15:
      v35 = v9;
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v9 = 0;
LABEL_13:
  if (v16 != a2)
  {
    do
    {
      v28 = *v16;
      *(v6 + 16) = *(v16 + 16);
      *v6 = v28;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *v16 = 0;
      *(v6 + 24) = *(v16 + 24);
      v29 = *(v16 + 32);
      *(v6 + 48) = *(v16 + 48);
      *(v6 + 32) = v29;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 32) = 0;
      *(v6 + 56) = *(v16 + 56);
      *(v6 + 64) = *(v16 + 64);
      v30 = *(v16 + 72);
      *(v6 + 88) = *(v16 + 88);
      *(v6 + 72) = v30;
      *(v16 + 80) = 0;
      *(v16 + 88) = 0;
      *(v16 + 72) = 0;
      v31 = *(v16 + 96);
      *(v6 + 112) = *(v16 + 112);
      *(v6 + 96) = v31;
      *(v16 + 104) = 0;
      *(v16 + 112) = 0;
      *(v16 + 96) = 0;
      *(v6 + 120) = *(v16 + 120);
      v32 = *(v16 + 128);
      *(v6 + 144) = *(v16 + 144);
      *(v6 + 128) = v32;
      *(v16 + 136) = 0;
      *(v16 + 144) = 0;
      *(v16 + 128) = 0;
      v16 += 152;
      v6 += 152;
      ++v9;
    }

    while (v16 != a2);
    goto LABEL_15;
  }

LABEL_16:
  v34[0] = 0;
  return sub_88C7B0(v34);
}

void sub_88DBB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_88DBC8(uint64_t a1, __int128 *a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v10 = a2;
  v11 = a1;
  v42[0] = a7;
  v42[1] = &v43;
  v43 = 0;
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        v29 = (a1 + v27);
        v30 = a7 + v27;
        v31 = *(a1 + v27);
        *(v30 + 16) = *(a1 + v27 + 16);
        *v30 = v31;
        v29[1] = 0;
        v29[2] = 0;
        *v29 = 0;
        *(v30 + 24) = *(a1 + v27 + 24);
        v32 = *(a1 + v27 + 32);
        *(v30 + 48) = *(a1 + v27 + 48);
        *(v30 + 32) = v32;
        v29[5] = 0;
        v29[6] = 0;
        v33 = *(a1 + v27 + 56);
        v29[4] = 0;
        *(v30 + 56) = v33;
        *(v30 + 64) = *(a1 + v27 + 64);
        v34 = *(a1 + v27 + 72);
        *(v30 + 88) = *(a1 + v27 + 88);
        *(v30 + 72) = v34;
        v29[10] = 0;
        v29[11] = 0;
        v35 = *(a1 + v27 + 96);
        v36 = *(a1 + v27 + 112);
        v29[9] = 0;
        *(v30 + 112) = v36;
        *(v30 + 96) = v35;
        v29[13] = 0;
        v29[14] = 0;
        LODWORD(v36) = *(a1 + v27 + 120);
        v29[12] = 0;
        *(v30 + 120) = v36;
        v37 = *(a1 + v27 + 128);
        *(v30 + 144) = *(a1 + v27 + 144);
        *(v30 + 128) = v37;
        v29[17] = 0;
        v29[18] = 0;
        v29[16] = 0;
        ++v28;
        v27 += 152;
      }

      while (v29 + 19 != a2);
      v43 = v28;
      v38 = (a7 + v27);
      v39 = a7 + v27 - 152;
      while (v10 != a3)
      {
        if (sub_88B988(a4, v10, v7))
        {
          sub_52C14C(v11, v10);
          v10 = (v10 + 152);
          v11 += 152;
          if (v38 == v7)
          {
            return sub_88C7B0(v42);
          }
        }

        else
        {
          sub_52C14C(v11, v7);
          v7 = (v7 + 152);
          v11 += 152;
          if (v38 == v7)
          {
            return sub_88C7B0(v42);
          }
        }
      }

      do
      {
        sub_52C14C(v11, v7);
        v11 += 152;
        v40 = v39 == v7;
        v7 = (v7 + 152);
      }

      while (!v40);
    }
  }

  else if (a2 != a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = a7 + v12;
      v15 = (a2 + v12);
      v16 = *(a2 + v12);
      *(v14 + 16) = *(a2 + v12 + 16);
      *v14 = v16;
      v15[1] = 0;
      v15[2] = 0;
      *v15 = 0;
      *(v14 + 24) = *(a2 + v12 + 24);
      v17 = *(a2 + v12 + 32);
      *(v14 + 48) = *(a2 + v12 + 48);
      *(v14 + 32) = v17;
      v15[5] = 0;
      v15[6] = 0;
      v18 = *(a2 + v12 + 56);
      v15[4] = 0;
      *(v14 + 56) = v18;
      *(v14 + 64) = *(a2 + v12 + 64);
      v19 = *(a2 + v12 + 72);
      *(v14 + 88) = *(a2 + v12 + 88);
      *(v14 + 72) = v19;
      v15[10] = 0;
      v15[11] = 0;
      v20 = *(a2 + v12 + 96);
      v21 = *(a2 + v12 + 112);
      v15[9] = 0;
      *(v14 + 112) = v21;
      *(v14 + 96) = v20;
      v15[13] = 0;
      v15[14] = 0;
      LODWORD(v21) = *(a2 + v12 + 120);
      v15[12] = 0;
      *(v14 + 120) = v21;
      v22 = *(a2 + v12 + 128);
      *(v14 + 144) = *(a2 + v12 + 144);
      *(v14 + 128) = v22;
      v15[17] = 0;
      v15[18] = 0;
      v15[16] = 0;
      ++v13;
      v12 += 152;
    }

    while (v15 + 19 != a3);
    v43 = v13;
    v23 = a3 - 152;
    v24 = (a7 + v12);
    while (v10 != v11)
    {
      v25 = sub_88B988(a4, v24 - 152, v10 - 152);
      if (v25)
      {
        v26 = (v10 - 152);
      }

      else
      {
        v26 = (v24 - 152);
      }

      if (v25)
      {
        v10 = (v10 - 152);
      }

      else
      {
        v24 = (v24 - 152);
      }

      sub_52C14C(v23, v26);
      v23 -= 152;
      if (v24 == v7)
      {
        return sub_88C7B0(v42);
      }
    }

    while (v24 != v7)
    {
      v24 = (v24 - 152);
      sub_52C14C(v23, v24);
      v23 -= 152;
    }
  }

  return sub_88C7B0(v42);
}

void sub_88DEB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

void sub_88DECC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_88DEE0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v7 = **a1;
  v8 = sub_2B51D8(v7, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v9 = sub_30C50C(v7 + 3896, a2, 0);
    v10 = &v9[-*v9];
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v11 += &v9[*&v9[v11]];
      }
    }

    v12 = v11 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v11 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v12 = 0;
  }

  *&v80 = v8;
  *(&v80 + 1) = v12;
  *&v81 = sub_31D7E8(v7, a2 & 0xFFFFFFFFFFFFLL, 1);
  *(&v81 + 1) = v13;
  v82 = a2;
  v14 = *v6;
  v15 = sub_2B51D8(*v6, a3 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    v16 = sub_30C50C(v14 + 3896, a3, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + ((a3 >> 30) & 0x3FFFC) + 4 + *(v18 + ((a3 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  v78[0] = v15;
  v78[1] = v19;
  v78[2] = sub_31D7E8(v14, a3 & 0xFFFFFFFFFFFFLL, 1);
  v78[3] = v20;
  v79 = a3;
  v21 = *(*(a1 + 8) + 32);
  v23 = a2 == v21;
  v22 = HIDWORD(v21) & 0xFFFFFF;
  v23 = v23 && (HIDWORD(a2) & 0xFFFFFF) == v22;
  if (v23)
  {
    return 0;
  }

  v24 = *(*(a1 + 16) + 32);
  if (a3 == v24 && (HIDWORD(a3) & 0xFFFFFF) == (HIDWORD(v24) & 0xFFFFFF))
  {
    return 0;
  }

  v75 = 0;
  v76 = 0;
  v77 = 0;
  sub_31B8F4(*v6, &v80, &v75);
  v26 = v75;
  v27 = v76;
  if (v75 == v76)
  {
    result = 0;
    if (v75)
    {
      goto LABEL_95;
    }

    return result;
  }

  do
  {
    if (__PAIR64__(*(v26 + 18), v26[8]) == __PAIR64__(WORD2(v79), v79) && *(v26 + 38) == BYTE6(v79))
    {
      goto LABEL_26;
    }

    v28 = *v6;
    *&__p = v82;
    *v62 = v80;
    v63 = v81;
    BYTE6(__p) = BYTE6(v82) == 0;
    if (!sub_31B71C(v28, v26, v62, v78))
    {
      goto LABEL_26;
    }

    v29 = *(v26 + 4);
    v59 = v29;
    v61 = BYTE6(v29);
    v60 = WORD2(v29);
    v57[0] = 0;
    v57[1] = 0;
    v58 = 0;
    sub_87EFA8(v6, &v59, v57, v62);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[0]);
    }

    v30 = *(a1 + 16);
    v31 = (*(&v80 + 1) - **(&v80 + 1));
    v32 = *v31;
    if (BYTE6(v82))
    {
      if (v32 >= 5)
      {
        v33 = v31[2];
        if (v33)
        {
          goto LABEL_38;
        }
      }
    }

    else if (v32 >= 9)
    {
      v33 = v31[4];
      if (v33)
      {
LABEL_38:
        v34 = *(*(&v80 + 1) + v33);
        v35 = *(v30 + 8);
        v36 = (v35 - *v35);
        v37 = *v36;
        if (*(v30 + 38))
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }
    }

    v34 = 0;
    v35 = *(v30 + 8);
    v36 = (v35 - *v35);
    v37 = *v36;
    if (*(v30 + 38))
    {
LABEL_43:
      if (v37 >= 9)
      {
        v38 = v36[4];
        if (v38)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_46;
    }

LABEL_39:
    if (v37 >= 5)
    {
      v38 = v36[2];
      if (v38)
      {
LABEL_45:
        v39 = *(v35 + v38);
        goto LABEL_47;
      }
    }

LABEL_46:
    v39 = 0;
LABEL_47:
    v40 = v34 + 18000;
    v41 = v34 - 18000;
    if ((v40 >> 5) < 0x465u)
    {
      v41 = v40;
    }

    v42 = v39 - v41;
    if (v42 > 18000)
    {
      v42 -= 36000;
    }

    if (v42 < -17999)
    {
      v42 += 36000;
    }

    if (fabs(v42 / 100.0) > *(v6 + 11) && sub_31B71C(*v6, v26, *(a1 + 8), v30) && sub_734C10(v62))
    {
      v43 = *(a1 + 32);
      if (*(v43 + 23) < 0)
      {
        operator delete(*v43);
      }

      v44 = *v62;
      *(v43 + 16) = v63;
      *v43 = v44;
      BYTE7(v63) = 0;
      LOBYTE(v62[0]) = 0;
      *(v43 + 24) = *(&v63 + 1);
      if (*(v43 + 55) < 0)
      {
        operator delete(*(v43 + 32));
      }

      v45 = __p;
      *(v43 + 48) = v65;
      *(v43 + 32) = v45;
      HIBYTE(v65) = 0;
      LOBYTE(__p) = 0;
      *(v43 + 56) = v66;
      *(v43 + 64) = v67;
      if (*(v43 + 95) < 0)
      {
        operator delete(*(v43 + 72));
      }

      v46 = v68;
      *(v43 + 88) = v69;
      *(v43 + 72) = v46;
      HIBYTE(v69) = 0;
      LOBYTE(v68) = 0;
      if (*(v43 + 119) < 0)
      {
        operator delete(*(v43 + 96));
      }

      v47 = v70;
      *(v43 + 112) = v71;
      *(v43 + 96) = v47;
      HIBYTE(v71) = 0;
      LOBYTE(v70) = 0;
      *(v43 + 120) = v72;
      if (*(v43 + 151) < 0)
      {
        operator delete(*(v43 + 128));
      }

      v48 = 0;
      v49 = v73;
      *(v43 + 144) = v74;
      *(v43 + 128) = v49;
      HIBYTE(v74) = 0;
      LOBYTE(v73) = 0;
      if ((SHIBYTE(v71) & 0x80000000) == 0)
      {
        goto LABEL_84;
      }
    }

    else if (sub_734C10(*(a1 + 40)) || !sub_734C10(v62))
    {
      if (SHIBYTE(v74) < 0)
      {
        operator delete(v73);
        v48 = 1;
        if ((SHIBYTE(v71) & 0x80000000) == 0)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v48 = 1;
        if ((SHIBYTE(v71) & 0x80000000) == 0)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      v50 = *(a1 + 40);
      if (*(v50 + 23) < 0)
      {
        operator delete(*v50);
      }

      v51 = *v62;
      *(v50 + 16) = v63;
      *v50 = v51;
      BYTE7(v63) = 0;
      LOBYTE(v62[0]) = 0;
      *(v50 + 24) = *(&v63 + 1);
      if (*(v50 + 55) < 0)
      {
        operator delete(*(v50 + 32));
      }

      v52 = __p;
      *(v50 + 48) = v65;
      *(v50 + 32) = v52;
      HIBYTE(v65) = 0;
      LOBYTE(__p) = 0;
      *(v50 + 56) = v66;
      *(v50 + 64) = v67;
      if (*(v50 + 95) < 0)
      {
        operator delete(*(v50 + 72));
      }

      v53 = v68;
      *(v50 + 88) = v69;
      *(v50 + 72) = v53;
      HIBYTE(v69) = 0;
      LOBYTE(v68) = 0;
      if (*(v50 + 119) < 0)
      {
        operator delete(*(v50 + 96));
      }

      v54 = v70;
      *(v50 + 112) = v71;
      *(v50 + 96) = v54;
      HIBYTE(v71) = 0;
      LOBYTE(v70) = 0;
      *(v50 + 120) = v72;
      if (*(v50 + 151) < 0)
      {
        operator delete(*(v50 + 128));
      }

      v55 = v73;
      *(v50 + 144) = v74;
      *(v50 + 128) = v55;
      HIBYTE(v74) = 0;
      LOBYTE(v73) = 0;
      v48 = 1;
      if ((SHIBYTE(v71) & 0x80000000) == 0)
      {
LABEL_84:
        if ((SHIBYTE(v69) & 0x80000000) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_89;
      }
    }

    operator delete(v70);
    if ((SHIBYTE(v69) & 0x80000000) == 0)
    {
LABEL_85:
      if (SHIBYTE(v65) < 0)
      {
        goto LABEL_24;
      }

      goto LABEL_90;
    }

LABEL_89:
    operator delete(v68);
    if (SHIBYTE(v65) < 0)
    {
LABEL_24:
      operator delete(__p);
      if ((SBYTE7(v63) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_91;
    }

LABEL_90:
    if ((SBYTE7(v63) & 0x80000000) == 0)
    {
LABEL_25:
      if (!v48)
      {
        goto LABEL_92;
      }

      goto LABEL_26;
    }

LABEL_91:
    operator delete(v62[0]);
    if (!v48)
    {
LABEL_92:
      result = 1;
      v26 = v75;
      if (v75)
      {
        goto LABEL_95;
      }

      return result;
    }

LABEL_26:
    v26 += 10;
  }

  while (v26 != v27);
  result = 0;
  v26 = v75;
  if (!v75)
  {
    return result;
  }

LABEL_95:
  v76 = v26;
  v56 = result;
  operator delete(v26);
  return v56;
}

void sub_88E5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_88E5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_3E5388(&a13);
  if (a32)
  {
    JUMPOUT(0x88E5E0);
  }

  JUMPOUT(0x88E5CCLL);
}

void sub_88E608(uint64_t *a1, uint64_t *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v7 = a1;
    if (a4 == 2)
    {
      v8 = (a2 - 19);
      if (sub_88E8AC(a3, (a2 - 19), a1))
      {

        sub_88D238(v7, v8);
      }
    }

    else if (a4 <= 0)
    {

      sub_88EE64(a1, a2, a3);
    }

    else
    {
      v9 = a5;
      v11 = a4 >> 1;
      v12 = &a1[19 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v20[0] = a5;
        v20[1] = &v21;
        v21 = 0;
        sub_88F24C(a1, &a1[19 * (a4 >> 1)], a3, a4 >> 1, a5);
        v21 = v11;
        v16 = a4 - v11;
        v17 = v9 + 152 * v11;
        sub_88F24C(v12, a2, a3, v16, v17);
        v21 = a4;
        v18 = (v9 + 152 * a4);
        v19 = v17;
        while (v19 != v18)
        {
          if (sub_88E8AC(a3, v19, v9))
          {
            sub_52C14C(v7, v19);
            v19 = (v19 + 152);
            v7 += 152;
            if (v9 == v17)
            {
LABEL_26:
              while (v19 != v18)
              {
                sub_52C14C(v7, v19);
                v19 = (v19 + 152);
                v7 += 152;
              }

              goto LABEL_27;
            }
          }

          else
          {
            sub_52C14C(v7, v9);
            v9 = (v9 + 152);
            v7 += 152;
            if (v9 == v17)
            {
              goto LABEL_26;
            }
          }
        }

        while (v9 != v17)
        {
          sub_52C14C(v7, v9);
          v9 = (v9 + 152);
          v7 += 152;
        }

LABEL_27:
        sub_88C7B0(v20);
      }

      else
      {
        sub_88E608(a1, &a1[19 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v15 = a4 - v11;
        sub_88E608(v12, a2, a3, v15, v9, a6);

        sub_88F6D4(v7, v12, a2, a3, v11, v15, v9, a6);
      }
    }
  }
}

void sub_88E884(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

void sub_88E898(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_88E8AC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 120);
  v4 = *(a3 + 120);
  if (v3 == 1 && v4 != 1)
  {
    return 1;
  }

  if (v3 != 1 && v4 == 1)
  {
    return 0;
  }

  if (*(*a1 + 97) == 1)
  {
    if (v3 == 2 && v4 != 2)
    {
      return 1;
    }

    if (v3 != 2 && v4 == 2)
    {
      return 0;
    }
  }

  v12 = a1[1];
  sub_5139E8(v30, a2);
  v13 = sub_88FAC4(v12, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_22:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_34;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_23:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_35:
    operator delete(v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_34:
  operator delete(v34);
  if (v33 < 0)
  {
    goto LABEL_35;
  }

LABEL_24:
  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_36:
  operator delete(v30[0]);
LABEL_25:
  v14 = a1[1];
  sub_5139E8(v30, a3);
  v15 = sub_88FAC4(v14, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_27:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_39;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_28:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_41:
    operator delete(v30[0]);
    v16 = v13 >= v15;
    if (v13 != v15)
    {
      return !v16;
    }

    goto LABEL_42;
  }

LABEL_40:
  operator delete(v32);
  if (v31 < 0)
  {
    goto LABEL_41;
  }

LABEL_30:
  v16 = v13 >= v15;
  if (v13 != v15)
  {
    return !v16;
  }

LABEL_42:
  v17 = a1[2];
  sub_5139E8(v30, a2);
  v18 = sub_88FAC4(v17, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_44:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_56;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_45:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_57:
    operator delete(v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_58;
  }

LABEL_56:
  operator delete(v34);
  if (v33 < 0)
  {
    goto LABEL_57;
  }

LABEL_46:
  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

LABEL_58:
  operator delete(v30[0]);
LABEL_47:
  v19 = a1[2];
  sub_5139E8(v30, a3);
  v20 = sub_88FAC4(v19, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_49:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_61;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_50:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_62;
  }

LABEL_61:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_51:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_63:
    operator delete(v30[0]);
    v16 = v18 >= v20;
    if (v18 != v20)
    {
      return !v16;
    }

    goto LABEL_64;
  }

LABEL_62:
  operator delete(v32);
  if (v31 < 0)
  {
    goto LABEL_63;
  }

LABEL_52:
  v16 = v18 >= v20;
  if (v18 != v20)
  {
    return !v16;
  }

LABEL_64:
  v21 = a1[1];
  sub_5139E8(v30, a2);
  v22 = sub_88FC54(v21, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_66:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_78;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_67:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_79:
    operator delete(v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_80;
  }

LABEL_78:
  operator delete(v34);
  if (v33 < 0)
  {
    goto LABEL_79;
  }

LABEL_68:
  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_69;
  }

LABEL_80:
  operator delete(v30[0]);
LABEL_69:
  v23 = a1[1];
  sub_5139E8(v30, a3);
  v24 = sub_88FC54(v23, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_71:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_83;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_72:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_84;
  }

LABEL_83:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_73:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

LABEL_85:
    operator delete(v30[0]);
    v16 = v22 >= v24;
    if (v22 != v24)
    {
      return !v16;
    }

    goto LABEL_86;
  }

LABEL_84:
  operator delete(v32);
  if (v31 < 0)
  {
    goto LABEL_85;
  }

LABEL_74:
  v16 = v22 >= v24;
  if (v22 == v24)
  {
LABEL_86:
    v25 = a1[2];
    sub_5139E8(v30, a2);
    v26 = sub_88FC54(v25, v29);
    sub_88CE0C(v29);
    v27 = a1[2];
    sub_5139E8(v30, a3);
    v28 = sub_88FC54(v27, v29);
    sub_88CE0C(v29);
    v16 = v26 >= v28;
  }

  return !v16;
}

void sub_88EDC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88EDD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88EDE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88EDFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88EE10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88EE24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88EE38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88EE4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_88EE64(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 152;
    if (a1 + 152 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if (!sub_88E8AC(a3, v5, v8))
        {
          goto LABEL_4;
        }

        v10 = *v9;
        v36 = *(v9 + 16);
        *v35 = v10;
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        *v9 = 0;
        v11 = *(v8 + 208);
        v39 = *(v8 + 200);
        v12 = *(v8 + 176);
        v38 = *(v8 + 184);
        *(v8 + 184) = 0;
        *(v8 + 192) = 0;
        *(v8 + 200) = 0;
        v37 = v12;
        v40 = v11;
        LODWORD(v12) = *(v8 + 216);
        v43 = *(v8 + 240);
        v42 = *(v8 + 224);
        *(v8 + 224) = 0;
        *(v8 + 232) = 0;
        v13 = *(v8 + 248);
        v45 = *(v8 + 264);
        __p = v13;
        *(v8 + 240) = 0;
        *(v8 + 248) = 0;
        *(v8 + 256) = 0;
        *(v8 + 264) = 0;
        LODWORD(v11) = *(v8 + 272);
        v41 = v12;
        v46 = v11;
        v14 = *(v8 + 280);
        v48 = *(v8 + 296);
        v47 = v14;
        *(v8 + 280) = 0;
        *(v8 + 288) = 0;
        v15 = v7;
        *(v8 + 296) = 0;
        while (1)
        {
          v16 = v15;
          v17 = a1 + v15;
          if (*(a1 + v15 + 175) < 0)
          {
            operator delete(*(v17 + 152));
          }

          *(v17 + 152) = *v17;
          v18 = *(v17 + 16);
          v19 = *(v17 + 24);
          *(v17 + 23) = 0;
          *v17 = 0;
          *(v17 + 168) = v18;
          *(v17 + 176) = v19;
          if (*(v17 + 207) < 0)
          {
            operator delete(*(v17 + 184));
          }

          v20 = a1 + v16;
          *(v17 + 184) = *(v17 + 32);
          *(v17 + 200) = *(v17 + 48);
          *(v20 + 55) = 0;
          *(v17 + 32) = 0;
          *(v20 + 208) = *(a1 + v16 + 56);
          *(v20 + 216) = *(a1 + v16 + 64);
          if (*(a1 + v16 + 247) < 0)
          {
            operator delete(*(v20 + 224));
          }

          *(v20 + 224) = *(v20 + 72);
          *(v20 + 240) = *(v20 + 88);
          *(v20 + 95) = 0;
          *(v20 + 72) = 0;
          if (*(v20 + 271) < 0)
          {
            operator delete(*(v20 + 248));
          }

          v21 = a1 + v16;
          v22 = *(a1 + v16 + 96);
          *(v20 + 264) = *(a1 + v16 + 112);
          *(v20 + 248) = v22;
          *(v21 + 119) = 0;
          *(v21 + 96) = 0;
          *(v21 + 272) = *(a1 + v16 + 120);
          v23 = (a1 + v16 + 280);
          if (*(a1 + v16 + 303) < 0)
          {
            operator delete(*v23);
          }

          v24 = *(v21 + 128);
          *(a1 + v16 + 296) = *(v21 + 144);
          *v23 = v24;
          *(v21 + 151) = 0;
          *(v21 + 128) = 0;
          if (!v16)
          {
            break;
          }

          v25 = sub_88E8AC(a3, v35, a1 + v16 - 152);
          v15 = v16 - 152;
          if ((v25 & 1) == 0)
          {
            v26 = a1 + v16;
            if ((*(a1 + v15 + 175) & 0x80000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }
        }

        v26 = a1;
        if ((*(a1 + 23) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_22:
        operator delete(*v26);
LABEL_23:
        v27 = a1 + v16;
        v28 = *v35;
        *(v26 + 16) = v36;
        *v26 = v28;
        HIBYTE(v36) = 0;
        LOBYTE(v35[0]) = 0;
        *(v26 + 24) = v37;
        if (*(v26 + 55) < 0)
        {
          operator delete(*(v27 + 32));
        }

        v29 = v38;
        *(v27 + 48) = v39;
        *(v27 + 32) = v29;
        HIBYTE(v39) = 0;
        LOBYTE(v38) = 0;
        *(v26 + 56) = v40;
        *(v26 + 64) = v41;
        if (*(v26 + 95) < 0)
        {
          operator delete(*(v27 + 72));
        }

        v30 = v42;
        *(v27 + 88) = v43;
        *(v27 + 72) = v30;
        HIBYTE(v43) = 0;
        LOBYTE(v42) = 0;
        if (*(v26 + 119) < 0)
        {
          operator delete(*(v27 + 96));
        }

        v31 = __p;
        *(v27 + 112) = v45;
        *(v27 + 96) = v31;
        HIBYTE(v45) = 0;
        LOBYTE(__p) = 0;
        *(v26 + 120) = v46;
        if (*(v26 + 151) < 0)
        {
          operator delete(*(v27 + 128));
          v33 = SHIBYTE(v45);
          v34 = v47;
          *(v27 + 144) = v48;
          *(v27 + 128) = v34;
          HIBYTE(v48) = 0;
          LOBYTE(v47) = 0;
          if (v33 < 0)
          {
            operator delete(__p);
            if ((SHIBYTE(v43) & 0x80000000) == 0)
            {
LABEL_34:
              if ((SHIBYTE(v39) & 0x80000000) == 0)
              {
                goto LABEL_35;
              }

              goto LABEL_39;
            }
          }

          else if ((SHIBYTE(v43) & 0x80000000) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v32 = v47;
          *(v27 + 144) = v48;
          *(v27 + 128) = v32;
          HIBYTE(v48) = 0;
          LOBYTE(v47) = 0;
          if ((SHIBYTE(v43) & 0x80000000) == 0)
          {
            goto LABEL_34;
          }
        }

        operator delete(v42);
        if ((SHIBYTE(v39) & 0x80000000) == 0)
        {
LABEL_35:
          if (SHIBYTE(v36) < 0)
          {
            goto LABEL_40;
          }

          goto LABEL_4;
        }

LABEL_39:
        operator delete(v38);
        if (SHIBYTE(v36) < 0)
        {
LABEL_40:
          operator delete(v35[0]);
        }

LABEL_4:
        v5 = v9 + 152;
        v7 += 152;
        v8 = v9;
      }

      while (v9 + 152 != a2);
    }
  }
}

uint64_t *sub_88F24C(uint64_t *result, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = result;
    if (a4 == 2)
    {
      v42[0] = a5;
      v42[1] = &v43;
      v43 = 0;
      v13 = a2 - 19;
      if (sub_88E8AC(a3, (a2 - 19), result))
      {
        v14 = *v13;
        *(a5 + 16) = v13[2];
        *a5 = v14;
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        *(a5 + 24) = *(a2 - 16);
        v15 = *(a2 - 15);
        *(a5 + 48) = *(a2 - 13);
        *(a5 + 32) = v15;
        *(a2 - 14) = 0;
        *(a2 - 13) = 0;
        *(a2 - 15) = 0;
        *(a5 + 56) = *(a2 - 12);
        *(a5 + 64) = *(a2 - 22);
        v16 = *(a2 - 5);
        *(a5 + 88) = *(a2 - 8);
        *(a5 + 72) = v16;
        *(a2 - 9) = 0;
        *(a2 - 8) = 0;
        *(a2 - 10) = 0;
        v17 = *(a2 - 7);
        *(a5 + 112) = *(a2 - 5);
        *(a5 + 96) = v17;
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        *(a2 - 7) = 0;
        *(a5 + 120) = *(a2 - 8);
        v18 = *(a2 - 3);
        *(a5 + 144) = *(a2 - 1);
        *(a5 + 128) = v18;
        *(a2 - 2) = 0;
        *(a2 - 1) = 0;
        *(a2 - 3) = 0;
        ++v43;
        v19 = *(v5 + 16);
        *(a5 + 152) = *v5;
        *(a5 + 168) = v19;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *v5 = 0;
        *(a5 + 176) = *(v5 + 24);
        v20 = *(v5 + 32);
        *(a5 + 200) = *(v5 + 48);
        *(a5 + 184) = v20;
        *(v5 + 40) = 0;
        *(v5 + 48) = 0;
        *(v5 + 32) = 0;
        *(a5 + 208) = *(v5 + 56);
        *(a5 + 216) = *(v5 + 64);
        v21 = *(v5 + 72);
        *(a5 + 240) = *(v5 + 88);
        *(a5 + 224) = v21;
        *(v5 + 80) = 0;
        *(v5 + 88) = 0;
        *(v5 + 72) = 0;
        v22 = *(v5 + 96);
        *(a5 + 264) = *(v5 + 112);
        *(a5 + 248) = v22;
        *(v5 + 104) = 0;
        *(v5 + 112) = 0;
        *(v5 + 96) = 0;
        *(a5 + 272) = *(v5 + 120);
        v23 = (a5 + 280);
        v24 = (v5 + 128);
        v25 = *(v5 + 128);
        v26 = *(v5 + 144);
      }

      else
      {
        v33 = *v5;
        *(a5 + 16) = *(v5 + 16);
        *a5 = v33;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *v5 = 0;
        *(a5 + 24) = *(v5 + 24);
        v34 = *(v5 + 32);
        *(a5 + 48) = *(v5 + 48);
        *(a5 + 32) = v34;
        *(v5 + 40) = 0;
        *(v5 + 48) = 0;
        *(v5 + 32) = 0;
        *(a5 + 56) = *(v5 + 56);
        *(a5 + 64) = *(v5 + 64);
        v35 = *(v5 + 72);
        *(a5 + 88) = *(v5 + 88);
        *(a5 + 72) = v35;
        *(v5 + 80) = 0;
        *(v5 + 88) = 0;
        *(v5 + 72) = 0;
        v36 = *(v5 + 96);
        *(a5 + 112) = *(v5 + 112);
        *(a5 + 96) = v36;
        *(v5 + 104) = 0;
        *(v5 + 112) = 0;
        *(v5 + 96) = 0;
        *(a5 + 120) = *(v5 + 120);
        v37 = *(v5 + 128);
        *(a5 + 144) = *(v5 + 144);
        *(a5 + 128) = v37;
        *(v5 + 136) = 0;
        *(v5 + 144) = 0;
        *(v5 + 128) = 0;
        ++v43;
        v38 = v13[2];
        *(a5 + 152) = *v13;
        *(a5 + 168) = v38;
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        *(a5 + 176) = *(a2 - 16);
        v39 = *(a2 - 15);
        *(a5 + 200) = *(a2 - 13);
        *(a5 + 184) = v39;
        *(a2 - 14) = 0;
        *(a2 - 13) = 0;
        *(a2 - 15) = 0;
        *(a5 + 208) = *(a2 - 12);
        *(a5 + 216) = *(a2 - 22);
        v40 = *(a2 - 5);
        *(a5 + 240) = *(a2 - 8);
        *(a5 + 224) = v40;
        *(a2 - 9) = 0;
        *(a2 - 8) = 0;
        *(a2 - 10) = 0;
        v41 = *(a2 - 7);
        *(a5 + 264) = *(a2 - 5);
        *(a5 + 248) = v41;
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        *(a2 - 7) = 0;
        *(a5 + 272) = *(a2 - 8);
        v23 = (a5 + 280);
        v24 = a2 - 3;
        v25 = *(a2 - 3);
        v26 = *(a2 - 1);
      }

      *(a5 + 296) = v26;
      *v23 = v25;
      *v24 = 0;
      v24[1] = 0;
      v24[2] = 0;
      v42[0] = 0;
      return sub_88C7B0(v42);
    }

    else if (a4 == 1)
    {
      v6 = *result;
      *(a5 + 16) = result[2];
      *a5 = v6;
      result[1] = 0;
      result[2] = 0;
      *result = 0;
      *(a5 + 24) = result[3];
      v7 = *(result + 2);
      *(a5 + 48) = result[6];
      *(a5 + 32) = v7;
      result[5] = 0;
      result[6] = 0;
      result[4] = 0;
      *(a5 + 56) = result[7];
      *(a5 + 64) = *(result + 16);
      v8 = *(result + 9);
      *(a5 + 88) = result[11];
      *(a5 + 72) = v8;
      result[10] = 0;
      result[11] = 0;
      result[9] = 0;
      v9 = *(result + 6);
      *(a5 + 112) = result[14];
      *(a5 + 96) = v9;
      result[13] = 0;
      result[14] = 0;
      result[12] = 0;
      *(a5 + 120) = *(result + 30);
      v10 = *(result + 8);
      *(a5 + 144) = result[18];
      *(a5 + 128) = v10;
      result[17] = 0;
      result[18] = 0;
      result[16] = 0;
    }

    else if (a4 > 8)
    {
      v27 = a4 >> 1;
      v28 = 152 * (a4 >> 1);
      sub_88E608(result, &result[v28 / 8], a3, v27, a5, v27);
      sub_88E608(v28 + v5, a2, a3, a4 - v27, a5 + v28, a4 - v27);

      return sub_890244(v5, v28 + v5, v28 + v5, a2, a5, a3);
    }

    else
    {

      return sub_88FE18(result, a2, a5, a3);
    }
  }

  return result;
}

void sub_88F6C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

void sub_88F6D4(uint64_t a1, __int128 *a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a6;
  if (a6)
  {
    while (1)
    {
      if (v43 <= a8 || a5 <= a8)
      {
        sub_8905B8(a1, a2, a3, a4, a5, v43, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v13 = 0;
      v14 = -a5;
      while (1)
      {
        v15 = v13 + a1;
        if (sub_88E8AC(a4, a2, v13 + a1))
        {
          break;
        }

        v13 = (v13 + 152);
        if (__CFADD__(v14++, 1))
        {
          return;
        }
      }

      v17 = -v14;
      v18 = v43;
      v40 = a3;
      v41 = a8;
      if (-v14 >= v43)
      {
        if (v14 == -1)
        {
          sub_88D238(v13 + a1, a2);
          return;
        }

        v23 = v17 / 2;
        v21 = v13 + 152 * (v17 / 2) + a1;
        v45 = *a4;
        v46 = a4[2];
        v20 = a2;
        if (a2 != a3)
        {
          v37 = v17 / 2;
          v24 = 0x86BCA1AF286BCA1BLL * ((a3 - a2) >> 3);
          v20 = a2;
          do
          {
            v25 = v20 + 152 * (v24 >> 1);
            v26 = sub_88E8AC(&v45, v25, v21);
            if (v26)
            {
              v24 += ~(v24 >> 1);
            }

            else
            {
              v24 >>= 1;
            }

            if (v26)
            {
              v20 = v25 + 152;
            }
          }

          while (v24);
          v18 = v43;
          v23 = v37;
        }

        v19 = 0x86BCA1AF286BCA1BLL * ((v20 - a2) >> 3);
        a3 = v20;
        if (a2 != v21)
        {
LABEL_31:
          a3 = v21;
          if (a2 != v20)
          {
            v38 = v23;
            v39 = v19;
            sub_88D238(v21, a2);
            a3 = (v21 + 152);
            for (i = a2 + 152; i != v20; i += 152)
            {
              if (a3 == a2)
              {
                a2 = i;
              }

              sub_88D238(a3, i);
              a3 = (a3 + 152);
            }

            if (a3 != a2)
            {
              v28 = a3;
              v29 = a2;
              while (1)
              {
                sub_88D238(v28, v29);
                v29 += 152;
                v30 = v28 + 152 == a2;
                if (v29 == v20)
                {
                  if ((v28 + 152) == a2)
                  {
                    break;
                  }

                  v29 = a2 + 152;
                  v28 += 304;
                  while (1)
                  {
                    sub_88D238(v28 - 152, a2);
                    v30 = v28 == a2;
                    if (v29 != v20)
                    {
                      break;
                    }

                    v31 = v28 == a2;
                    v28 += 152;
                    if (v31)
                    {
                      goto LABEL_48;
                    }
                  }
                }

                else
                {
                  v28 += 152;
                }

                if (v30)
                {
                  a2 = v29;
                }
              }
            }

LABEL_48:
            v18 = v43;
            v23 = v38;
            v19 = v39;
          }
        }
      }

      else
      {
        v19 = v43 / 2;
        v20 = a2 + 152 * (v43 / 2);
        v21 = a2;
        if ((a2 - a1) != v13)
        {
          v22 = 0x86BCA1AF286BCA1BLL * ((a2 - a1 - v13) >> 3);
          v21 = v13 + a1;
          do
          {
            if (sub_88E8AC(a4, v20, v21 + 152 * (v22 >> 1)))
            {
              v22 >>= 1;
            }

            else
            {
              v21 += 152 * (v22 >> 1) + 152;
              v22 += ~(v22 >> 1);
            }
          }

          while (v22);
          v18 = v43;
          v19 = v43 / 2;
        }

        v23 = 0x86BCA1AF286BCA1BLL * ((v21 - a1 - v13) >> 3);
        a3 = (a2 + 152 * (v43 / 2));
        if (a2 != v21)
        {
          goto LABEL_31;
        }
      }

      a5 = -v14 - v23;
      v32 = v18 - v19;
      if (v23 + v19 >= v18 - (v23 + v19) - v14)
      {
        v35 = v23;
        v36 = v19;
        sub_88F6D4(a3, v20, v40, a4, a5, v18 - v19, a7, v41);
        a2 = v21;
        a8 = v41;
        a5 = v35;
        v43 = v36;
        a1 = v15;
        if (!v36)
        {
          return;
        }
      }

      else
      {
        v33 = v21;
        a8 = v41;
        sub_88F6D4(v13 + a1, v33, a3, a4, v23, v19, a7, v41);
        v34 = a3;
        a2 = v20;
        a3 = v40;
        v43 = v32;
        a1 = v34;
        if (!v32)
        {
          return;
        }
      }
    }
  }
}

void *sub_88FAC4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  *v16 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v17 = v6;
  v18 = v7;
  *v19 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  *(a2 + 56) = 0;
  v20 = v8;
  v21 = v9;
  v22 = *(a2 + 72);
  v10 = *(a2 + 80);
  v24 = *(a2 + 96);
  *v23 = v10;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v11 = *(a2 + 104);
  v26 = *(a2 + 120);
  *v25 = v11;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v27 = *(a2 + 128);
  v12 = *(a2 + 136);
  v29 = *(a2 + 152);
  *__p = v12;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v13 = sub_88D074(v4, v5, v15);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v24) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25[0]);
  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(v19[0]);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      return v13;
    }

LABEL_11:
    operator delete(v16[0]);
    return v13;
  }

LABEL_9:
  operator delete(v23[0]);
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (SHIBYTE(v17) < 0)
  {
    goto LABEL_11;
  }

  return v13;
}

void sub_88FC40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_88FC54(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *v10 = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v11 = HIBYTE(v4);
  *v12 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v5 = *(a2 + 56);
  *(a2 + 56) = 0;
  v13 = HIBYTE(v5);
  v14 = *(a2 + 72);
  v6 = *(a2 + 80);
  v16 = *(a2 + 96);
  *v15 = v6;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v7 = *(a2 + 104);
  v18 = *(a2 + 120);
  *v17 = v7;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v19 = *(a2 + 128);
  v8 = *(a2 + 136);
  v21 = *(a2 + 152);
  *__p = v8;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  if (v2 != v3)
  {
    while (!sub_7345C4(&v14) || !sub_734A5C(&v14, v2 + 64))
    {
      v2 += 152;
      if (v2 == v3)
      {
        v2 = v3;
        if ((SHIBYTE(v21) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }
  }

  if (SHIBYTE(v21) < 0)
  {
LABEL_13:
    operator delete(__p[0]);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else
  {
LABEL_7:
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  operator delete(v17[0]);
  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    operator delete(v12[0]);
    if ((v11 & 0x80000000) == 0)
    {
      return v2;
    }

LABEL_17:
    operator delete(v10[0]);
    return v2;
  }

LABEL_15:
  operator delete(v15[0]);
  if (v13 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v11 < 0)
  {
    goto LABEL_17;
  }

  return v2;
}

void sub_88FE04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_88FE18(uint64_t *result, uint64_t *a2, uint64_t a3, void *a4)
{
  if (result != a2)
  {
    v6 = result;
    v35[0] = a3;
    v35[1] = &v36;
    v7 = *result;
    *(a3 + 16) = result[2];
    *a3 = v7;
    result[1] = 0;
    result[2] = 0;
    *result = 0;
    *(a3 + 24) = result[3];
    v8 = *(result + 2);
    *(a3 + 48) = result[6];
    *(a3 + 32) = v8;
    result[5] = 0;
    result[6] = 0;
    result[4] = 0;
    *(a3 + 56) = result[7];
    *(a3 + 64) = *(result + 16);
    v9 = *(result + 9);
    *(a3 + 88) = result[11];
    *(a3 + 72) = v9;
    result[10] = 0;
    result[11] = 0;
    result[9] = 0;
    v10 = *(result + 6);
    *(a3 + 112) = result[14];
    *(a3 + 96) = v10;
    result[13] = 0;
    result[14] = 0;
    result[12] = 0;
    *(a3 + 120) = *(result + 30);
    v11 = *(result + 8);
    *(a3 + 144) = result[18];
    *(a3 + 128) = v11;
    result[17] = 0;
    result[18] = 0;
    result[16] = 0;
    v36 = 1;
    v12 = (result + 19);
    if (result + 19 != a2)
    {
      v14 = 0;
      v15 = a3;
      do
      {
        while (1)
        {
          v21 = v12;
          v22 = (v15 + 152);
          if (sub_88E8AC(a4, v12, v15))
          {
            break;
          }

          v16 = *v21;
          *(v15 + 168) = *(v21 + 16);
          *v22 = v16;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *v21 = 0;
          *(v15 + 176) = *(v6 + 176);
          v17 = *(v6 + 184);
          *(v15 + 200) = *(v6 + 200);
          *(v15 + 184) = v17;
          *(v6 + 192) = 0;
          *(v6 + 200) = 0;
          *(v6 + 184) = 0;
          *(v15 + 208) = *(v6 + 208);
          *(v15 + 216) = *(v6 + 216);
          v18 = *(v6 + 224);
          *(v15 + 240) = *(v6 + 240);
          *(v15 + 224) = v18;
          *(v6 + 232) = 0;
          *(v6 + 240) = 0;
          *(v6 + 224) = 0;
          v19 = *(v6 + 248);
          *(v15 + 264) = *(v6 + 264);
          *(v15 + 248) = v19;
          *(v6 + 256) = 0;
          *(v6 + 264) = 0;
          *(v6 + 248) = 0;
          *(v15 + 272) = *(v6 + 272);
          v20 = *(v6 + 280);
          *(v15 + 296) = *(v6 + 296);
          *(v15 + 280) = v20;
          *(v6 + 288) = 0;
          *(v6 + 296) = 0;
          *(v6 + 280) = 0;
          ++v36;
          v12 = v21 + 152;
          v14 += 152;
          v15 += 152;
          v6 = v21;
          if ((v21 + 152) == a2)
          {
            goto LABEL_23;
          }
        }

        *v22 = *v15;
        v23 = *(v15 + 24);
        *(v15 + 168) = *(v15 + 16);
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        *v15 = 0;
        *(v15 + 176) = v23;
        *(v15 + 184) = *(v15 + 32);
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
        v24 = *(v15 + 48);
        v25 = *(v15 + 56);
        *(v15 + 48) = 0;
        *(v15 + 200) = v24;
        *(v15 + 208) = v25;
        *(v15 + 216) = *(v15 + 64);
        v26 = *(v15 + 72);
        *(v15 + 240) = *(v15 + 88);
        *(v15 + 224) = v26;
        *(v15 + 72) = 0;
        *(v15 + 80) = 0;
        v27 = *(v15 + 96);
        *(v15 + 264) = *(v15 + 112);
        *(v15 + 248) = v27;
        *(v15 + 88) = 0;
        *(v15 + 96) = 0;
        *(v15 + 104) = 0;
        *(v15 + 112) = 0;
        *(v15 + 272) = *(v15 + 120);
        v28 = *(v15 + 128);
        *(v15 + 296) = *(v15 + 144);
        *(v15 + 280) = v28;
        *(v15 + 128) = 0;
        *(v15 + 136) = 0;
        *(v15 + 144) = 0;
        v29 = a3;
        ++v36;
        if (v15 != a3)
        {
          v30 = v14;
          do
          {
            v31 = a3 + v30;
            if (!sub_88E8AC(a4, v21, a3 + v30 - 152))
            {
              v29 = a3 + v30;
              goto LABEL_22;
            }

            v32 = a3 + v30;
            if (*(a3 + v30 + 23) < 0)
            {
              operator delete(*v31);
            }

            *v31 = *(a3 + v30 - 152);
            *(v31 + 16) = *(a3 + v30 - 136);
            *(v32 - 129) = 0;
            *(v31 - 152) = 0;
            *(v32 + 24) = *(v32 - 128);
            if (*(v32 + 55) < 0)
            {
              operator delete(*(v32 + 32));
            }

            v33 = a3 + v30;
            *(v32 + 32) = *(v32 - 120);
            *(v32 + 48) = *(v32 - 104);
            *(v33 - 97) = 0;
            *(v32 - 120) = 0;
            *(v33 + 56) = *(a3 + v30 - 96);
            *(v33 + 64) = *(a3 + v30 - 88);
            if (*(a3 + v30 + 95) < 0)
            {
              operator delete(*(v33 + 72));
            }

            *(v33 + 72) = *(v33 - 80);
            *(v33 + 88) = *(v33 - 64);
            *(v33 - 57) = 0;
            *(v33 - 80) = 0;
            if (*(v33 + 119) < 0)
            {
              operator delete(*(v33 + 96));
            }

            v34 = a3 + v30;
            *(v33 + 96) = *(a3 + v30 - 56);
            *(v33 + 112) = *(a3 + v30 - 40);
            *(v34 - 33) = 0;
            *(v34 - 56) = 0;
            *(v34 + 120) = *(a3 + v30 - 32);
            if (*(a3 + v30 + 151) < 0)
            {
              operator delete(*(v34 + 128));
            }

            *(v34 + 128) = *(v34 - 24);
            *(v34 + 144) = *(v34 - 8);
            *(v34 - 1) = 0;
            *(v34 - 24) = 0;
            v30 -= 152;
          }

          while (v30);
          v29 = a3;
        }

LABEL_22:
        sub_52C14C(v29, v21);
        v12 = v21 + 152;
        v14 += 152;
        v15 = v22;
        v6 = v21;
      }

      while ((v21 + 152) != a2);
    }

LABEL_23:
    v35[0] = 0;
    return sub_88C7B0(v35);
  }

  return result;
}

void sub_89021C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

void sub_890230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_890244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a5;
  v8 = a3;
  v34[0] = a5;
  v34[1] = &v35;
  v35 = 0;
  if (a1 == a2)
  {
    v9 = 0;
    goto LABEL_3;
  }

  v16 = a1;
  if (a3 != a4)
  {
    while (1)
    {
      if (sub_88E8AC(a6, v8, v16))
      {
        v18 = *v8;
        *(v6 + 16) = *(v8 + 16);
        *v6 = v18;
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *v8 = 0;
        *(v6 + 24) = *(v8 + 24);
        v19 = *(v8 + 32);
        *(v6 + 48) = *(v8 + 48);
        *(v6 + 32) = v19;
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        *(v8 + 32) = 0;
        *(v6 + 56) = *(v8 + 56);
        *(v6 + 64) = *(v8 + 64);
        v20 = *(v8 + 72);
        *(v6 + 88) = *(v8 + 88);
        *(v6 + 72) = v20;
        *(v8 + 80) = 0;
        *(v8 + 88) = 0;
        *(v8 + 72) = 0;
        v21 = *(v8 + 96);
        *(v6 + 112) = *(v8 + 112);
        *(v6 + 96) = v21;
        *(v8 + 104) = 0;
        *(v8 + 112) = 0;
        *(v8 + 96) = 0;
        *(v6 + 120) = *(v8 + 120);
        v22 = *(v8 + 128);
        *(v6 + 144) = *(v8 + 144);
        *(v6 + 128) = v22;
        *(v8 + 136) = 0;
        *(v8 + 144) = 0;
        *(v8 + 128) = 0;
        v8 += 152;
      }

      else
      {
        v23 = *v16;
        *(v6 + 16) = *(v16 + 16);
        *v6 = v23;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        *v16 = 0;
        *(v6 + 24) = *(v16 + 24);
        v24 = *(v16 + 32);
        *(v6 + 48) = *(v16 + 48);
        *(v6 + 32) = v24;
        *(v16 + 40) = 0;
        *(v16 + 48) = 0;
        *(v16 + 32) = 0;
        *(v6 + 56) = *(v16 + 56);
        *(v6 + 64) = *(v16 + 64);
        v25 = *(v16 + 72);
        *(v6 + 88) = *(v16 + 88);
        *(v6 + 72) = v25;
        *(v16 + 80) = 0;
        *(v16 + 88) = 0;
        *(v16 + 72) = 0;
        v26 = *(v16 + 96);
        *(v6 + 112) = *(v16 + 112);
        *(v6 + 96) = v26;
        *(v16 + 104) = 0;
        *(v16 + 112) = 0;
        *(v16 + 96) = 0;
        *(v6 + 120) = *(v16 + 120);
        v27 = *(v16 + 128);
        *(v6 + 144) = *(v16 + 144);
        *(v6 + 128) = v27;
        *(v16 + 136) = 0;
        *(v16 + 144) = 0;
        *(v16 + 128) = 0;
        v16 += 152;
      }

      v9 = ++v35;
      v6 += 152;
      if (v16 == a2)
      {
        break;
      }

      if (v8 == a4)
      {
        goto LABEL_13;
      }
    }

LABEL_3:
    if (v8 != a4)
    {
      do
      {
        v10 = *v8;
        *(v6 + 16) = *(v8 + 16);
        *v6 = v10;
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *v8 = 0;
        *(v6 + 24) = *(v8 + 24);
        v11 = *(v8 + 32);
        *(v6 + 48) = *(v8 + 48);
        *(v6 + 32) = v11;
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        *(v8 + 32) = 0;
        *(v6 + 56) = *(v8 + 56);
        *(v6 + 64) = *(v8 + 64);
        v12 = *(v8 + 72);
        *(v6 + 88) = *(v8 + 88);
        *(v6 + 72) = v12;
        *(v8 + 80) = 0;
        *(v8 + 88) = 0;
        *(v8 + 72) = 0;
        v13 = *(v8 + 96);
        *(v6 + 112) = *(v8 + 112);
        *(v6 + 96) = v13;
        *(v8 + 104) = 0;
        *(v8 + 112) = 0;
        *(v8 + 96) = 0;
        *(v6 + 120) = *(v8 + 120);
        v14 = *(v8 + 128);
        *(v6 + 144) = *(v8 + 144);
        *(v6 + 128) = v14;
        *(v8 + 136) = 0;
        *(v8 + 144) = 0;
        *(v8 + 128) = 0;
        v8 += 152;
        v6 += 152;
        ++v9;
      }

      while (v8 != a4);
LABEL_15:
      v35 = v9;
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v9 = 0;
LABEL_13:
  if (v16 != a2)
  {
    do
    {
      v28 = *v16;
      *(v6 + 16) = *(v16 + 16);
      *v6 = v28;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *v16 = 0;
      *(v6 + 24) = *(v16 + 24);
      v29 = *(v16 + 32);
      *(v6 + 48) = *(v16 + 48);
      *(v6 + 32) = v29;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 32) = 0;
      *(v6 + 56) = *(v16 + 56);
      *(v6 + 64) = *(v16 + 64);
      v30 = *(v16 + 72);
      *(v6 + 88) = *(v16 + 88);
      *(v6 + 72) = v30;
      *(v16 + 80) = 0;
      *(v16 + 88) = 0;
      *(v16 + 72) = 0;
      v31 = *(v16 + 96);
      *(v6 + 112) = *(v16 + 112);
      *(v6 + 96) = v31;
      *(v16 + 104) = 0;
      *(v16 + 112) = 0;
      *(v16 + 96) = 0;
      *(v6 + 120) = *(v16 + 120);
      v32 = *(v16 + 128);
      *(v6 + 144) = *(v16 + 144);
      *(v6 + 128) = v32;
      *(v16 + 136) = 0;
      *(v16 + 144) = 0;
      *(v16 + 128) = 0;
      v16 += 152;
      v6 += 152;
      ++v9;
    }

    while (v16 != a2);
    goto LABEL_15;
  }

LABEL_16:
  v34[0] = 0;
  return sub_88C7B0(v34);
}

void sub_8905A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_8905B8(uint64_t a1, __int128 *a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v10 = a2;
  v11 = a1;
  v42[0] = a7;
  v42[1] = &v43;
  v43 = 0;
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        v29 = (a1 + v27);
        v30 = a7 + v27;
        v31 = *(a1 + v27);
        *(v30 + 16) = *(a1 + v27 + 16);
        *v30 = v31;
        v29[1] = 0;
        v29[2] = 0;
        *v29 = 0;
        *(v30 + 24) = *(a1 + v27 + 24);
        v32 = *(a1 + v27 + 32);
        *(v30 + 48) = *(a1 + v27 + 48);
        *(v30 + 32) = v32;
        v29[5] = 0;
        v29[6] = 0;
        v33 = *(a1 + v27 + 56);
        v29[4] = 0;
        *(v30 + 56) = v33;
        *(v30 + 64) = *(a1 + v27 + 64);
        v34 = *(a1 + v27 + 72);
        *(v30 + 88) = *(a1 + v27 + 88);
        *(v30 + 72) = v34;
        v29[10] = 0;
        v29[11] = 0;
        v35 = *(a1 + v27 + 96);
        v36 = *(a1 + v27 + 112);
        v29[9] = 0;
        *(v30 + 112) = v36;
        *(v30 + 96) = v35;
        v29[13] = 0;
        v29[14] = 0;
        LODWORD(v36) = *(a1 + v27 + 120);
        v29[12] = 0;
        *(v30 + 120) = v36;
        v37 = *(a1 + v27 + 128);
        *(v30 + 144) = *(a1 + v27 + 144);
        *(v30 + 128) = v37;
        v29[17] = 0;
        v29[18] = 0;
        v29[16] = 0;
        ++v28;
        v27 += 152;
      }

      while (v29 + 19 != a2);
      v43 = v28;
      v38 = (a7 + v27);
      v39 = a7 + v27 - 152;
      while (v10 != a3)
      {
        if (sub_88E8AC(a4, v10, v7))
        {
          sub_52C14C(v11, v10);
          v10 = (v10 + 152);
          v11 += 152;
          if (v38 == v7)
          {
            return sub_88C7B0(v42);
          }
        }

        else
        {
          sub_52C14C(v11, v7);
          v7 = (v7 + 152);
          v11 += 152;
          if (v38 == v7)
          {
            return sub_88C7B0(v42);
          }
        }
      }

      do
      {
        sub_52C14C(v11, v7);
        v11 += 152;
        v40 = v39 == v7;
        v7 = (v7 + 152);
      }

      while (!v40);
    }
  }

  else if (a2 != a3)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = a7 + v12;
      v15 = (a2 + v12);
      v16 = *(a2 + v12);
      *(v14 + 16) = *(a2 + v12 + 16);
      *v14 = v16;
      v15[1] = 0;
      v15[2] = 0;
      *v15 = 0;
      *(v14 + 24) = *(a2 + v12 + 24);
      v17 = *(a2 + v12 + 32);
      *(v14 + 48) = *(a2 + v12 + 48);
      *(v14 + 32) = v17;
      v15[5] = 0;
      v15[6] = 0;
      v18 = *(a2 + v12 + 56);
      v15[4] = 0;
      *(v14 + 56) = v18;
      *(v14 + 64) = *(a2 + v12 + 64);
      v19 = *(a2 + v12 + 72);
      *(v14 + 88) = *(a2 + v12 + 88);
      *(v14 + 72) = v19;
      v15[10] = 0;
      v15[11] = 0;
      v20 = *(a2 + v12 + 96);
      v21 = *(a2 + v12 + 112);
      v15[9] = 0;
      *(v14 + 112) = v21;
      *(v14 + 96) = v20;
      v15[13] = 0;
      v15[14] = 0;
      LODWORD(v21) = *(a2 + v12 + 120);
      v15[12] = 0;
      *(v14 + 120) = v21;
      v22 = *(a2 + v12 + 128);
      *(v14 + 144) = *(a2 + v12 + 144);
      *(v14 + 128) = v22;
      v15[17] = 0;
      v15[18] = 0;
      v15[16] = 0;
      ++v13;
      v12 += 152;
    }

    while (v15 + 19 != a3);
    v43 = v13;
    v23 = a3 - 152;
    v24 = (a7 + v12);
    while (v10 != v11)
    {
      v25 = sub_88E8AC(a4, v24 - 152, v10 - 152);
      if (v25)
      {
        v26 = (v10 - 152);
      }

      else
      {
        v26 = (v24 - 152);
      }

      if (v25)
      {
        v10 = (v10 - 152);
      }

      else
      {
        v24 = (v24 - 152);
      }

      sub_52C14C(v23, v26);
      v23 -= 152;
      if (v24 == v7)
      {
        return sub_88C7B0(v42);
      }
    }

    while (v24 != v7)
    {
      v24 = (v24 - 152);
      sub_52C14C(v23, v24);
      v23 -= 152;
    }
  }

  return sub_88C7B0(v42);
}

void sub_8908A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

void sub_8908BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8908D0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v7 = **a1;
  v8 = sub_2B51D8(v7, a2 & 0xFFFFFFFFFFFFLL);
  if (*(v7 + 7772) == 1)
  {
    v9 = sub_30C50C(v7 + 3896, a2, 0);
    v10 = &v9[-*v9];
    if (*v10 < 5u)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v10 + 2);
      if (v11)
      {
        v11 += &v9[*&v9[v11]];
      }
    }

    v12 = v11 + ((a2 >> 30) & 0x3FFFC) + 4 + *(v11 + ((a2 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v12 = 0;
  }

  *&v80 = v8;
  *(&v80 + 1) = v12;
  *&v81 = sub_31D7E8(v7, a2 & 0xFFFFFFFFFFFFLL, 1);
  *(&v81 + 1) = v13;
  v82 = a2;
  v14 = *v6;
  v15 = sub_2B51D8(*v6, a3 & 0xFFFFFFFFFFFFLL);
  if (*(v14 + 7772) == 1)
  {
    v16 = sub_30C50C(v14 + 3896, a3, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + ((a3 >> 30) & 0x3FFFC) + 4 + *(v18 + ((a3 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  v78[0] = v15;
  v78[1] = v19;
  v78[2] = sub_31D7E8(v14, a3 & 0xFFFFFFFFFFFFLL, 1);
  v78[3] = v20;
  v79 = a3;
  v21 = *(*(a1 + 8) + 32);
  v23 = a2 == v21;
  v22 = HIDWORD(v21) & 0xFFFFFF;
  v23 = v23 && (HIDWORD(a2) & 0xFFFFFF) == v22;
  if (v23)
  {
    return 0;
  }

  v24 = *(*(a1 + 16) + 32);
  if (a3 == v24 && (HIDWORD(a3) & 0xFFFFFF) == (HIDWORD(v24) & 0xFFFFFF))
  {
    return 0;
  }

  v75 = 0;
  v76 = 0;
  v77 = 0;
  sub_31B8F4(*v6, &v80, &v75);
  v26 = v75;
  v27 = v76;
  if (v75 == v76)
  {
    result = 0;
    if (v75)
    {
      goto LABEL_95;
    }

    return result;
  }

  do
  {
    if (__PAIR64__(*(v26 + 18), v26[8]) == __PAIR64__(WORD2(v79), v79) && *(v26 + 38) == BYTE6(v79))
    {
      goto LABEL_26;
    }

    v28 = *v6;
    *&__p = v82;
    *v62 = v80;
    v63 = v81;
    BYTE6(__p) = BYTE6(v82) == 0;
    if (!sub_31B71C(v28, v26, v62, v78))
    {
      goto LABEL_26;
    }

    v29 = *(v26 + 4);
    v59 = v29;
    v61 = BYTE6(v29);
    v60 = WORD2(v29);
    v57[0] = 0;
    v57[1] = 0;
    v58 = 0;
    sub_883128(v6, &v59, v57, v62);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57[0]);
    }

    v30 = *(a1 + 16);
    v31 = (*(&v80 + 1) - **(&v80 + 1));
    v32 = *v31;
    if (BYTE6(v82))
    {
      if (v32 >= 5)
      {
        v33 = v31[2];
        if (v33)
        {
          goto LABEL_38;
        }
      }
    }

    else if (v32 >= 9)
    {
      v33 = v31[4];
      if (v33)
      {
LABEL_38:
        v34 = *(*(&v80 + 1) + v33);
        v35 = *(v30 + 8);
        v36 = (v35 - *v35);
        v37 = *v36;
        if (*(v30 + 38))
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }
    }

    v34 = 0;
    v35 = *(v30 + 8);
    v36 = (v35 - *v35);
    v37 = *v36;
    if (*(v30 + 38))
    {
LABEL_43:
      if (v37 >= 9)
      {
        v38 = v36[4];
        if (v38)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_46;
    }

LABEL_39:
    if (v37 >= 5)
    {
      v38 = v36[2];
      if (v38)
      {
LABEL_45:
        v39 = *(v35 + v38);
        goto LABEL_47;
      }
    }

LABEL_46:
    v39 = 0;
LABEL_47:
    v40 = v34 + 18000;
    v41 = v34 - 18000;
    if ((v40 >> 5) < 0x465u)
    {
      v41 = v40;
    }

    v42 = v39 - v41;
    if (v42 > 18000)
    {
      v42 -= 36000;
    }

    if (v42 < -17999)
    {
      v42 += 36000;
    }

    if (fabs(v42 / 100.0) > *(v6 + 11) && sub_31B71C(*v6, v26, *(a1 + 8), v30) && sub_734C10(v62))
    {
      v43 = *(a1 + 32);
      if (*(v43 + 23) < 0)
      {
        operator delete(*v43);
      }

      v44 = *v62;
      *(v43 + 16) = v63;
      *v43 = v44;
      BYTE7(v63) = 0;
      LOBYTE(v62[0]) = 0;
      *(v43 + 24) = *(&v63 + 1);
      if (*(v43 + 55) < 0)
      {
        operator delete(*(v43 + 32));
      }

      v45 = __p;
      *(v43 + 48) = v65;
      *(v43 + 32) = v45;
      HIBYTE(v65) = 0;
      LOBYTE(__p) = 0;
      *(v43 + 56) = v66;
      *(v43 + 64) = v67;
      if (*(v43 + 95) < 0)
      {
        operator delete(*(v43 + 72));
      }

      v46 = v68;
      *(v43 + 88) = v69;
      *(v43 + 72) = v46;
      HIBYTE(v69) = 0;
      LOBYTE(v68) = 0;
      if (*(v43 + 119) < 0)
      {
        operator delete(*(v43 + 96));
      }

      v47 = v70;
      *(v43 + 112) = v71;
      *(v43 + 96) = v47;
      HIBYTE(v71) = 0;
      LOBYTE(v70) = 0;
      *(v43 + 120) = v72;
      if (*(v43 + 151) < 0)
      {
        operator delete(*(v43 + 128));
      }

      v48 = 0;
      v49 = v73;
      *(v43 + 144) = v74;
      *(v43 + 128) = v49;
      HIBYTE(v74) = 0;
      LOBYTE(v73) = 0;
      if ((SHIBYTE(v71) & 0x80000000) == 0)
      {
        goto LABEL_84;
      }
    }

    else if (sub_734C10(*(a1 + 40)) || !sub_734C10(v62))
    {
      if (SHIBYTE(v74) < 0)
      {
        operator delete(v73);
        v48 = 1;
        if ((SHIBYTE(v71) & 0x80000000) == 0)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v48 = 1;
        if ((SHIBYTE(v71) & 0x80000000) == 0)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      v50 = *(a1 + 40);
      if (*(v50 + 23) < 0)
      {
        operator delete(*v50);
      }

      v51 = *v62;
      *(v50 + 16) = v63;
      *v50 = v51;
      BYTE7(v63) = 0;
      LOBYTE(v62[0]) = 0;
      *(v50 + 24) = *(&v63 + 1);
      if (*(v50 + 55) < 0)
      {
        operator delete(*(v50 + 32));
      }

      v52 = __p;
      *(v50 + 48) = v65;
      *(v50 + 32) = v52;
      HIBYTE(v65) = 0;
      LOBYTE(__p) = 0;
      *(v50 + 56) = v66;
      *(v50 + 64) = v67;
      if (*(v50 + 95) < 0)
      {
        operator delete(*(v50 + 72));
      }

      v53 = v68;
      *(v50 + 88) = v69;
      *(v50 + 72) = v53;
      HIBYTE(v69) = 0;
      LOBYTE(v68) = 0;
      if (*(v50 + 119) < 0)
      {
        operator delete(*(v50 + 96));
      }

      v54 = v70;
      *(v50 + 112) = v71;
      *(v50 + 96) = v54;
      HIBYTE(v71) = 0;
      LOBYTE(v70) = 0;
      *(v50 + 120) = v72;
      if (*(v50 + 151) < 0)
      {
        operator delete(*(v50 + 128));
      }

      v55 = v73;
      *(v50 + 144) = v74;
      *(v50 + 128) = v55;
      HIBYTE(v74) = 0;
      LOBYTE(v73) = 0;
      v48 = 1;
      if ((SHIBYTE(v71) & 0x80000000) == 0)
      {
LABEL_84:
        if ((SHIBYTE(v69) & 0x80000000) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_89;
      }
    }

    operator delete(v70);
    if ((SHIBYTE(v69) & 0x80000000) == 0)
    {
LABEL_85:
      if (SHIBYTE(v65) < 0)
      {
        goto LABEL_24;
      }

      goto LABEL_90;
    }

LABEL_89:
    operator delete(v68);
    if (SHIBYTE(v65) < 0)
    {
LABEL_24:
      operator delete(__p);
      if ((SBYTE7(v63) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_91;
    }

LABEL_90:
    if ((SBYTE7(v63) & 0x80000000) == 0)
    {
LABEL_25:
      if (!v48)
      {
        goto LABEL_92;
      }

      goto LABEL_26;
    }

LABEL_91:
    operator delete(v62[0]);
    if (!v48)
    {
LABEL_92:
      result = 1;
      v26 = v75;
      if (v75)
      {
        goto LABEL_95;
      }

      return result;
    }

LABEL_26:
    v26 += 10;
  }

  while (v26 != v27);
  result = 0;
  v26 = v75;
  if (!v75)
  {
    return result;
  }

LABEL_95:
  v76 = v26;
  v56 = result;
  operator delete(v26);
  return v56;
}

void sub_890F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_890FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_3E5388(&a13);
  if (a32)
  {
    JUMPOUT(0x890FD0);
  }

  JUMPOUT(0x890FBCLL);
}

unint64_t sub_890FF8(void **a1)
{
  v2 = a1[1];
  result = sub_4D1DC0(*a1);
  if (v2 != result && (result = sub_4D1EF8(*a1, v2), v4) && (result = sub_4D1EF8(*a1, v2), (*(result + 48 * v5 - 8) & 1) != 0))
  {
    v6 = sub_4D1F50(*a1, a1[1]);
    v7 = a1[1] + 1;
    a1[1] = v7;
    do
    {
      result = sub_4D1DC0(*a1);
      if (v7 >= result)
      {
        break;
      }

      result = sub_4D1F50(*a1, a1[1]);
      v8 = *(result + 32);
      v9 = *(result + 36);
      v7 = a1[1] + 1;
      a1[1] = v7;
    }

    while (v8 != *(v6 + 32) || v9 != *(v6 + 36));
  }

  else
  {
    a1[1] = (a1[1] + 1);
  }

  return result;
}

void sub_8910C8(uint64_t *a1, uint64_t *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v7 = a1;
    if (a4 == 2)
    {
      v8 = (a2 - 19);
      if (sub_89136C(a3, (a2 - 19), a1))
      {

        sub_88D238(v7, v8);
      }
    }

    else if (a4 <= 0)
    {

      sub_891924(a1, a2, a3);
    }

    else
    {
      v9 = a5;
      v11 = a4 >> 1;
      v12 = &a1[19 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v20[0] = a5;
        v20[1] = &v21;
        v21 = 0;
        sub_891D0C(a1, &a1[19 * (a4 >> 1)], a3, a4 >> 1, a5);
        v21 = v11;
        v16 = a4 - v11;
        v17 = v9 + 152 * v11;
        sub_891D0C(v12, a2, a3, v16, v17);
        v21 = a4;
        v18 = (v9 + 152 * a4);
        v19 = v17;
        while (v19 != v18)
        {
          if (sub_89136C(a3, v19, v9))
          {
            sub_52C14C(v7, v19);
            v19 = (v19 + 152);
            v7 += 152;
            if (v9 == v17)
            {
LABEL_26:
              while (v19 != v18)
              {
                sub_52C14C(v7, v19);
                v19 = (v19 + 152);
                v7 += 152;
              }

              goto LABEL_27;
            }
          }

          else
          {
            sub_52C14C(v7, v9);
            v9 = (v9 + 152);
            v7 += 152;
            if (v9 == v17)
            {
              goto LABEL_26;
            }
          }
        }

        while (v9 != v17)
        {
          sub_52C14C(v7, v9);
          v9 = (v9 + 152);
          v7 += 152;
        }

LABEL_27:
        sub_88C7B0(v20);
      }

      else
      {
        sub_8910C8(a1, &a1[19 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v15 = a4 - v11;
        sub_8910C8(v12, a2, a3, v15, v9, a6);

        sub_892194(v7, v12, a2, a3, v11, v15, v9, a6);
      }
    }
  }
}

void sub_891344(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

void sub_891358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_89136C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 120);
  v4 = *(a3 + 120);
  if (v3 == 1 && v4 != 1)
  {
    return 1;
  }

  if (v3 != 1 && v4 == 1)
  {
    return 0;
  }

  if (*(*a1 + 97) == 1)
  {
    if (v3 == 2 && v4 != 2)
    {
      return 1;
    }

    if (v3 != 2 && v4 == 2)
    {
      return 0;
    }
  }

  v12 = a1[1];
  sub_5139E8(v30, a2);
  v13 = sub_892584(v12, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_22:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_34;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_23:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_35:
    operator delete(v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_34:
  operator delete(v34);
  if (v33 < 0)
  {
    goto LABEL_35;
  }

LABEL_24:
  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_36:
  operator delete(v30[0]);
LABEL_25:
  v14 = a1[1];
  sub_5139E8(v30, a3);
  v15 = sub_892584(v14, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_27:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_39;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_28:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_41:
    operator delete(v30[0]);
    v16 = v13 >= v15;
    if (v13 != v15)
    {
      return !v16;
    }

    goto LABEL_42;
  }

LABEL_40:
  operator delete(v32);
  if (v31 < 0)
  {
    goto LABEL_41;
  }

LABEL_30:
  v16 = v13 >= v15;
  if (v13 != v15)
  {
    return !v16;
  }

LABEL_42:
  v17 = a1[2];
  sub_5139E8(v30, a2);
  v18 = sub_892584(v17, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_44:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_56;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_45:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_57:
    operator delete(v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_58;
  }

LABEL_56:
  operator delete(v34);
  if (v33 < 0)
  {
    goto LABEL_57;
  }

LABEL_46:
  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

LABEL_58:
  operator delete(v30[0]);
LABEL_47:
  v19 = a1[2];
  sub_5139E8(v30, a3);
  v20 = sub_892584(v19, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_49:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_61;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_50:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_62;
  }

LABEL_61:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_51:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_63:
    operator delete(v30[0]);
    v16 = v18 >= v20;
    if (v18 != v20)
    {
      return !v16;
    }

    goto LABEL_64;
  }

LABEL_62:
  operator delete(v32);
  if (v31 < 0)
  {
    goto LABEL_63;
  }

LABEL_52:
  v16 = v18 >= v20;
  if (v18 != v20)
  {
    return !v16;
  }

LABEL_64:
  v21 = a1[1];
  sub_5139E8(v30, a2);
  v22 = sub_892714(v21, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_66:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_78;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_67:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_79:
    operator delete(v32);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_80;
  }

LABEL_78:
  operator delete(v34);
  if (v33 < 0)
  {
    goto LABEL_79;
  }

LABEL_68:
  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_69;
  }

LABEL_80:
  operator delete(v30[0]);
LABEL_69:
  v23 = a1[1];
  sub_5139E8(v30, a3);
  v24 = sub_892714(v23, v29);
  if (v39 < 0)
  {
    operator delete(__p);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_71:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_83;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_72:
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_84;
  }

LABEL_83:
  operator delete(v34);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_73:
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

LABEL_85:
    operator delete(v30[0]);
    v16 = v22 >= v24;
    if (v22 != v24)
    {
      return !v16;
    }

    goto LABEL_86;
  }

LABEL_84:
  operator delete(v32);
  if (v31 < 0)
  {
    goto LABEL_85;
  }

LABEL_74:
  v16 = v22 >= v24;
  if (v22 == v24)
  {
LABEL_86:
    v25 = a1[2];
    sub_5139E8(v30, a2);
    v26 = sub_892714(v25, v29);
    sub_88CE0C(v29);
    v27 = a1[2];
    sub_5139E8(v30, a3);
    v28 = sub_892714(v27, v29);
    sub_88CE0C(v29);
    v16 = v26 >= v28;
  }

  return !v16;
}

void sub_891880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_891894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_8918A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_8918BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_8918D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_8918E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_8918F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_89190C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

void sub_891924(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 152;
    if (a1 + 152 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if (!sub_89136C(a3, v5, v8))
        {
          goto LABEL_4;
        }

        v10 = *v9;
        v36 = *(v9 + 16);
        *v35 = v10;
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        *v9 = 0;
        v11 = *(v8 + 208);
        v39 = *(v8 + 200);
        v12 = *(v8 + 176);
        v38 = *(v8 + 184);
        *(v8 + 184) = 0;
        *(v8 + 192) = 0;
        *(v8 + 200) = 0;
        v37 = v12;
        v40 = v11;
        LODWORD(v12) = *(v8 + 216);
        v43 = *(v8 + 240);
        v42 = *(v8 + 224);
        *(v8 + 224) = 0;
        *(v8 + 232) = 0;
        v13 = *(v8 + 248);
        v45 = *(v8 + 264);
        __p = v13;
        *(v8 + 240) = 0;
        *(v8 + 248) = 0;
        *(v8 + 256) = 0;
        *(v8 + 264) = 0;
        LODWORD(v11) = *(v8 + 272);
        v41 = v12;
        v46 = v11;
        v14 = *(v8 + 280);
        v48 = *(v8 + 296);
        v47 = v14;
        *(v8 + 280) = 0;
        *(v8 + 288) = 0;
        v15 = v7;
        *(v8 + 296) = 0;
        while (1)
        {
          v16 = v15;
          v17 = a1 + v15;
          if (*(a1 + v15 + 175) < 0)
          {
            operator delete(*(v17 + 152));
          }

          *(v17 + 152) = *v17;
          v18 = *(v17 + 16);
          v19 = *(v17 + 24);
          *(v17 + 23) = 0;
          *v17 = 0;
          *(v17 + 168) = v18;
          *(v17 + 176) = v19;
          if (*(v17 + 207) < 0)
          {
            operator delete(*(v17 + 184));
          }

          v20 = a1 + v16;
          *(v17 + 184) = *(v17 + 32);
          *(v17 + 200) = *(v17 + 48);
          *(v20 + 55) = 0;
          *(v17 + 32) = 0;
          *(v20 + 208) = *(a1 + v16 + 56);
          *(v20 + 216) = *(a1 + v16 + 64);
          if (*(a1 + v16 + 247) < 0)
          {
            operator delete(*(v20 + 224));
          }

          *(v20 + 224) = *(v20 + 72);
          *(v20 + 240) = *(v20 + 88);
          *(v20 + 95) = 0;
          *(v20 + 72) = 0;
          if (*(v20 + 271) < 0)
          {
            operator delete(*(v20 + 248));
          }

          v21 = a1 + v16;
          v22 = *(a1 + v16 + 96);
          *(v20 + 264) = *(a1 + v16 + 112);
          *(v20 + 248) = v22;
          *(v21 + 119) = 0;
          *(v21 + 96) = 0;
          *(v21 + 272) = *(a1 + v16 + 120);
          v23 = (a1 + v16 + 280);
          if (*(a1 + v16 + 303) < 0)
          {
            operator delete(*v23);
          }

          v24 = *(v21 + 128);
          *(a1 + v16 + 296) = *(v21 + 144);
          *v23 = v24;
          *(v21 + 151) = 0;
          *(v21 + 128) = 0;
          if (!v16)
          {
            break;
          }

          v25 = sub_89136C(a3, v35, a1 + v16 - 152);
          v15 = v16 - 152;
          if ((v25 & 1) == 0)
          {
            v26 = a1 + v16;
            if ((*(a1 + v15 + 175) & 0x80000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }
        }

        v26 = a1;
        if ((*(a1 + 23) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_22:
        operator delete(*v26);
LABEL_23:
        v27 = a1 + v16;
        v28 = *v35;
        *(v26 + 16) = v36;
        *v26 = v28;
        HIBYTE(v36) = 0;
        LOBYTE(v35[0]) = 0;
        *(v26 + 24) = v37;
        if (*(v26 + 55) < 0)
        {
          operator delete(*(v27 + 32));
        }

        v29 = v38;
        *(v27 + 48) = v39;
        *(v27 + 32) = v29;
        HIBYTE(v39) = 0;
        LOBYTE(v38) = 0;
        *(v26 + 56) = v40;
        *(v26 + 64) = v41;
        if (*(v26 + 95) < 0)
        {
          operator delete(*(v27 + 72));
        }

        v30 = v42;
        *(v27 + 88) = v43;
        *(v27 + 72) = v30;
        HIBYTE(v43) = 0;
        LOBYTE(v42) = 0;
        if (*(v26 + 119) < 0)
        {
          operator delete(*(v27 + 96));
        }

        v31 = __p;
        *(v27 + 112) = v45;
        *(v27 + 96) = v31;
        HIBYTE(v45) = 0;
        LOBYTE(__p) = 0;
        *(v26 + 120) = v46;
        if (*(v26 + 151) < 0)
        {
          operator delete(*(v27 + 128));
          v33 = SHIBYTE(v45);
          v34 = v47;
          *(v27 + 144) = v48;
          *(v27 + 128) = v34;
          HIBYTE(v48) = 0;
          LOBYTE(v47) = 0;
          if (v33 < 0)
          {
            operator delete(__p);
            if ((SHIBYTE(v43) & 0x80000000) == 0)
            {
LABEL_34:
              if ((SHIBYTE(v39) & 0x80000000) == 0)
              {
                goto LABEL_35;
              }

              goto LABEL_39;
            }
          }

          else if ((SHIBYTE(v43) & 0x80000000) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v32 = v47;
          *(v27 + 144) = v48;
          *(v27 + 128) = v32;
          HIBYTE(v48) = 0;
          LOBYTE(v47) = 0;
          if ((SHIBYTE(v43) & 0x80000000) == 0)
          {
            goto LABEL_34;
          }
        }

        operator delete(v42);
        if ((SHIBYTE(v39) & 0x80000000) == 0)
        {
LABEL_35:
          if (SHIBYTE(v36) < 0)
          {
            goto LABEL_40;
          }

          goto LABEL_4;
        }

LABEL_39:
        operator delete(v38);
        if (SHIBYTE(v36) < 0)
        {
LABEL_40:
          operator delete(v35[0]);
        }

LABEL_4:
        v5 = v9 + 152;
        v7 += 152;
        v8 = v9;
      }

      while (v9 + 152 != a2);
    }
  }
}

uint64_t *sub_891D0C(uint64_t *result, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = result;
    if (a4 == 2)
    {
      v42[0] = a5;
      v42[1] = &v43;
      v43 = 0;
      v13 = a2 - 19;
      if (sub_89136C(a3, (a2 - 19), result))
      {
        v14 = *v13;
        *(a5 + 16) = v13[2];
        *a5 = v14;
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        *(a5 + 24) = *(a2 - 16);
        v15 = *(a2 - 15);
        *(a5 + 48) = *(a2 - 13);
        *(a5 + 32) = v15;
        *(a2 - 14) = 0;
        *(a2 - 13) = 0;
        *(a2 - 15) = 0;
        *(a5 + 56) = *(a2 - 12);
        *(a5 + 64) = *(a2 - 22);
        v16 = *(a2 - 5);
        *(a5 + 88) = *(a2 - 8);
        *(a5 + 72) = v16;
        *(a2 - 9) = 0;
        *(a2 - 8) = 0;
        *(a2 - 10) = 0;
        v17 = *(a2 - 7);
        *(a5 + 112) = *(a2 - 5);
        *(a5 + 96) = v17;
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        *(a2 - 7) = 0;
        *(a5 + 120) = *(a2 - 8);
        v18 = *(a2 - 3);
        *(a5 + 144) = *(a2 - 1);
        *(a5 + 128) = v18;
        *(a2 - 2) = 0;
        *(a2 - 1) = 0;
        *(a2 - 3) = 0;
        ++v43;
        v19 = *(v5 + 16);
        *(a5 + 152) = *v5;
        *(a5 + 168) = v19;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *v5 = 0;
        *(a5 + 176) = *(v5 + 24);
        v20 = *(v5 + 32);
        *(a5 + 200) = *(v5 + 48);
        *(a5 + 184) = v20;
        *(v5 + 40) = 0;
        *(v5 + 48) = 0;
        *(v5 + 32) = 0;
        *(a5 + 208) = *(v5 + 56);
        *(a5 + 216) = *(v5 + 64);
        v21 = *(v5 + 72);
        *(a5 + 240) = *(v5 + 88);
        *(a5 + 224) = v21;
        *(v5 + 80) = 0;
        *(v5 + 88) = 0;
        *(v5 + 72) = 0;
        v22 = *(v5 + 96);
        *(a5 + 264) = *(v5 + 112);
        *(a5 + 248) = v22;
        *(v5 + 104) = 0;
        *(v5 + 112) = 0;
        *(v5 + 96) = 0;
        *(a5 + 272) = *(v5 + 120);
        v23 = (a5 + 280);
        v24 = (v5 + 128);
        v25 = *(v5 + 128);
        v26 = *(v5 + 144);
      }

      else
      {
        v33 = *v5;
        *(a5 + 16) = *(v5 + 16);
        *a5 = v33;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *v5 = 0;
        *(a5 + 24) = *(v5 + 24);
        v34 = *(v5 + 32);
        *(a5 + 48) = *(v5 + 48);
        *(a5 + 32) = v34;
        *(v5 + 40) = 0;
        *(v5 + 48) = 0;
        *(v5 + 32) = 0;
        *(a5 + 56) = *(v5 + 56);
        *(a5 + 64) = *(v5 + 64);
        v35 = *(v5 + 72);
        *(a5 + 88) = *(v5 + 88);
        *(a5 + 72) = v35;
        *(v5 + 80) = 0;
        *(v5 + 88) = 0;
        *(v5 + 72) = 0;
        v36 = *(v5 + 96);
        *(a5 + 112) = *(v5 + 112);
        *(a5 + 96) = v36;
        *(v5 + 104) = 0;
        *(v5 + 112) = 0;
        *(v5 + 96) = 0;
        *(a5 + 120) = *(v5 + 120);
        v37 = *(v5 + 128);
        *(a5 + 144) = *(v5 + 144);
        *(a5 + 128) = v37;
        *(v5 + 136) = 0;
        *(v5 + 144) = 0;
        *(v5 + 128) = 0;
        ++v43;
        v38 = v13[2];
        *(a5 + 152) = *v13;
        *(a5 + 168) = v38;
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        *(a5 + 176) = *(a2 - 16);
        v39 = *(a2 - 15);
        *(a5 + 200) = *(a2 - 13);
        *(a5 + 184) = v39;
        *(a2 - 14) = 0;
        *(a2 - 13) = 0;
        *(a2 - 15) = 0;
        *(a5 + 208) = *(a2 - 12);
        *(a5 + 216) = *(a2 - 22);
        v40 = *(a2 - 5);
        *(a5 + 240) = *(a2 - 8);
        *(a5 + 224) = v40;
        *(a2 - 9) = 0;
        *(a2 - 8) = 0;
        *(a2 - 10) = 0;
        v41 = *(a2 - 7);
        *(a5 + 264) = *(a2 - 5);
        *(a5 + 248) = v41;
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        *(a2 - 7) = 0;
        *(a5 + 272) = *(a2 - 8);
        v23 = (a5 + 280);
        v24 = a2 - 3;
        v25 = *(a2 - 3);
        v26 = *(a2 - 1);
      }

      *(a5 + 296) = v26;
      *v23 = v25;
      *v24 = 0;
      v24[1] = 0;
      v24[2] = 0;
      v42[0] = 0;
      return sub_88C7B0(v42);
    }

    else if (a4 == 1)
    {
      v6 = *result;
      *(a5 + 16) = result[2];
      *a5 = v6;
      result[1] = 0;
      result[2] = 0;
      *result = 0;
      *(a5 + 24) = result[3];
      v7 = *(result + 2);
      *(a5 + 48) = result[6];
      *(a5 + 32) = v7;
      result[5] = 0;
      result[6] = 0;
      result[4] = 0;
      *(a5 + 56) = result[7];
      *(a5 + 64) = *(result + 16);
      v8 = *(result + 9);
      *(a5 + 88) = result[11];
      *(a5 + 72) = v8;
      result[10] = 0;
      result[11] = 0;
      result[9] = 0;
      v9 = *(result + 6);
      *(a5 + 112) = result[14];
      *(a5 + 96) = v9;
      result[13] = 0;
      result[14] = 0;
      result[12] = 0;
      *(a5 + 120) = *(result + 30);
      v10 = *(result + 8);
      *(a5 + 144) = result[18];
      *(a5 + 128) = v10;
      result[17] = 0;
      result[18] = 0;
      result[16] = 0;
    }

    else if (a4 > 8)
    {
      v27 = a4 >> 1;
      v28 = 152 * (a4 >> 1);
      sub_8910C8(result, &result[v28 / 8], a3, v27, a5, v27);
      sub_8910C8(v28 + v5, a2, a3, a4 - v27, a5 + v28, a4 - v27);

      return sub_892D04(v5, v28 + v5, v28 + v5, a2, a5, a3);
    }

    else
    {

      return sub_8928D8(result, a2, a5, a3);
    }
  }

  return result;
}

void sub_892180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

void sub_892194(uint64_t a1, __int128 *a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a6;
  if (a6)
  {
    while (1)
    {
      if (v43 <= a8 || a5 <= a8)
      {
        sub_893078(a1, a2, a3, a4, a5, v43, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v13 = 0;
      v14 = -a5;
      while (1)
      {
        v15 = v13 + a1;
        if (sub_89136C(a4, a2, v13 + a1))
        {
          break;
        }

        v13 = (v13 + 152);
        if (__CFADD__(v14++, 1))
        {
          return;
        }
      }

      v17 = -v14;
      v18 = v43;
      v40 = a3;
      v41 = a8;
      if (-v14 >= v43)
      {
        if (v14 == -1)
        {
          sub_88D238(v13 + a1, a2);
          return;
        }

        v23 = v17 / 2;
        v21 = v13 + 152 * (v17 / 2) + a1;
        v45 = *a4;
        v46 = a4[2];
        v20 = a2;
        if (a2 != a3)
        {
          v37 = v17 / 2;
          v24 = 0x86BCA1AF286BCA1BLL * ((a3 - a2) >> 3);
          v20 = a2;
          do
          {
            v25 = v20 + 152 * (v24 >> 1);
            v26 = sub_89136C(&v45, v25, v21);
            if (v26)
            {
              v24 += ~(v24 >> 1);
            }

            else
            {
              v24 >>= 1;
            }

            if (v26)
            {
              v20 = v25 + 152;
            }
          }

          while (v24);
          v18 = v43;
          v23 = v37;
        }

        v19 = 0x86BCA1AF286BCA1BLL * ((v20 - a2) >> 3);
        a3 = v20;
        if (a2 != v21)
        {
LABEL_31:
          a3 = v21;
          if (a2 != v20)
          {
            v38 = v23;
            v39 = v19;
            sub_88D238(v21, a2);
            a3 = (v21 + 152);
            for (i = a2 + 152; i != v20; i += 152)
            {
              if (a3 == a2)
              {
                a2 = i;
              }

              sub_88D238(a3, i);
              a3 = (a3 + 152);
            }

            if (a3 != a2)
            {
              v28 = a3;
              v29 = a2;
              while (1)
              {
                sub_88D238(v28, v29);
                v29 += 152;
                v30 = v28 + 152 == a2;
                if (v29 == v20)
                {
                  if ((v28 + 152) == a2)
                  {
                    break;
                  }

                  v29 = a2 + 152;
                  v28 += 304;
                  while (1)
                  {
                    sub_88D238(v28 - 152, a2);
                    v30 = v28 == a2;
                    if (v29 != v20)
                    {
                      break;
                    }

                    v31 = v28 == a2;
                    v28 += 152;
                    if (v31)
                    {
                      goto LABEL_48;
                    }
                  }
                }

                else
                {
                  v28 += 152;
                }

                if (v30)
                {
                  a2 = v29;
                }
              }
            }

LABEL_48:
            v18 = v43;
            v23 = v38;
            v19 = v39;
          }
        }
      }

      else
      {
        v19 = v43 / 2;
        v20 = a2 + 152 * (v43 / 2);
        v21 = a2;
        if ((a2 - a1) != v13)
        {
          v22 = 0x86BCA1AF286BCA1BLL * ((a2 - a1 - v13) >> 3);
          v21 = v13 + a1;
          do
          {
            if (sub_89136C(a4, v20, v21 + 152 * (v22 >> 1)))
            {
              v22 >>= 1;
            }

            else
            {
              v21 += 152 * (v22 >> 1) + 152;
              v22 += ~(v22 >> 1);
            }
          }

          while (v22);
          v18 = v43;
          v19 = v43 / 2;
        }

        v23 = 0x86BCA1AF286BCA1BLL * ((v21 - a1 - v13) >> 3);
        a3 = (a2 + 152 * (v43 / 2));
        if (a2 != v21)
        {
          goto LABEL_31;
        }
      }

      a5 = -v14 - v23;
      v32 = v18 - v19;
      if (v23 + v19 >= v18 - (v23 + v19) - v14)
      {
        v35 = v23;
        v36 = v19;
        sub_892194(a3, v20, v40, a4, a5, v18 - v19, a7, v41);
        a2 = v21;
        a8 = v41;
        a5 = v35;
        v43 = v36;
        a1 = v15;
        if (!v36)
        {
          return;
        }
      }

      else
      {
        v33 = v21;
        a8 = v41;
        sub_892194(v13 + a1, v33, a3, a4, v23, v19, a7, v41);
        v34 = a3;
        a2 = v20;
        a3 = v40;
        v43 = v32;
        a1 = v34;
        if (!v32)
        {
          return;
        }
      }
    }
  }
}

void *sub_892584(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  *v16 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v17 = v6;
  v18 = v7;
  *v19 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  *(a2 + 56) = 0;
  v20 = v8;
  v21 = v9;
  v22 = *(a2 + 72);
  v10 = *(a2 + 80);
  v24 = *(a2 + 96);
  *v23 = v10;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v11 = *(a2 + 104);
  v26 = *(a2 + 120);
  *v25 = v11;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v27 = *(a2 + 128);
  v12 = *(a2 + 136);
  v29 = *(a2 + 152);
  *__p = v12;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v13 = sub_88D074(v4, v5, v15);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v24) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v25[0]);
  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
LABEL_4:
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator delete(v19[0]);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      return v13;
    }

LABEL_11:
    operator delete(v16[0]);
    return v13;
  }

LABEL_9:
  operator delete(v23[0]);
  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (SHIBYTE(v17) < 0)
  {
    goto LABEL_11;
  }

  return v13;
}

void sub_892700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_892714(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *v10 = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v11 = HIBYTE(v4);
  *v12 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v5 = *(a2 + 56);
  *(a2 + 56) = 0;
  v13 = HIBYTE(v5);
  v14 = *(a2 + 72);
  v6 = *(a2 + 80);
  v16 = *(a2 + 96);
  *v15 = v6;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v7 = *(a2 + 104);
  v18 = *(a2 + 120);
  *v17 = v7;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v19 = *(a2 + 128);
  v8 = *(a2 + 136);
  v21 = *(a2 + 152);
  *__p = v8;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  if (v2 != v3)
  {
    while (!sub_7345C4(&v14) || !sub_734A5C(&v14, v2 + 64))
    {
      v2 += 152;
      if (v2 == v3)
      {
        v2 = v3;
        if ((SHIBYTE(v21) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }
  }

  if (SHIBYTE(v21) < 0)
  {
LABEL_13:
    operator delete(__p[0]);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v16) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else
  {
LABEL_7:
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  operator delete(v17[0]);
  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    operator delete(v12[0]);
    if ((v11 & 0x80000000) == 0)
    {
      return v2;
    }

LABEL_17:
    operator delete(v10[0]);
    return v2;
  }

LABEL_15:
  operator delete(v15[0]);
  if (v13 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v11 < 0)
  {
    goto LABEL_17;
  }

  return v2;
}

void sub_8928C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88CE0C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_8928D8(uint64_t *result, uint64_t *a2, uint64_t a3, void *a4)
{
  if (result != a2)
  {
    v6 = result;
    v35[0] = a3;
    v35[1] = &v36;
    v7 = *result;
    *(a3 + 16) = result[2];
    *a3 = v7;
    result[1] = 0;
    result[2] = 0;
    *result = 0;
    *(a3 + 24) = result[3];
    v8 = *(result + 2);
    *(a3 + 48) = result[6];
    *(a3 + 32) = v8;
    result[5] = 0;
    result[6] = 0;
    result[4] = 0;
    *(a3 + 56) = result[7];
    *(a3 + 64) = *(result + 16);
    v9 = *(result + 9);
    *(a3 + 88) = result[11];
    *(a3 + 72) = v9;
    result[10] = 0;
    result[11] = 0;
    result[9] = 0;
    v10 = *(result + 6);
    *(a3 + 112) = result[14];
    *(a3 + 96) = v10;
    result[13] = 0;
    result[14] = 0;
    result[12] = 0;
    *(a3 + 120) = *(result + 30);
    v11 = *(result + 8);
    *(a3 + 144) = result[18];
    *(a3 + 128) = v11;
    result[17] = 0;
    result[18] = 0;
    result[16] = 0;
    v36 = 1;
    v12 = (result + 19);
    if (result + 19 != a2)
    {
      v14 = 0;
      v15 = a3;
      do
      {
        while (1)
        {
          v21 = v12;
          v22 = (v15 + 152);
          if (sub_89136C(a4, v12, v15))
          {
            break;
          }

          v16 = *v21;
          *(v15 + 168) = *(v21 + 16);
          *v22 = v16;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *v21 = 0;
          *(v15 + 176) = *(v6 + 176);
          v17 = *(v6 + 184);
          *(v15 + 200) = *(v6 + 200);
          *(v15 + 184) = v17;
          *(v6 + 192) = 0;
          *(v6 + 200) = 0;
          *(v6 + 184) = 0;
          *(v15 + 208) = *(v6 + 208);
          *(v15 + 216) = *(v6 + 216);
          v18 = *(v6 + 224);
          *(v15 + 240) = *(v6 + 240);
          *(v15 + 224) = v18;
          *(v6 + 232) = 0;
          *(v6 + 240) = 0;
          *(v6 + 224) = 0;
          v19 = *(v6 + 248);
          *(v15 + 264) = *(v6 + 264);
          *(v15 + 248) = v19;
          *(v6 + 256) = 0;
          *(v6 + 264) = 0;
          *(v6 + 248) = 0;
          *(v15 + 272) = *(v6 + 272);
          v20 = *(v6 + 280);
          *(v15 + 296) = *(v6 + 296);
          *(v15 + 280) = v20;
          *(v6 + 288) = 0;
          *(v6 + 296) = 0;
          *(v6 + 280) = 0;
          ++v36;
          v12 = v21 + 152;
          v14 += 152;
          v15 += 152;
          v6 = v21;
          if ((v21 + 152) == a2)
          {
            goto LABEL_23;
          }
        }

        *v22 = *v15;
        v23 = *(v15 + 24);
        *(v15 + 168) = *(v15 + 16);
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        *v15 = 0;
        *(v15 + 176) = v23;
        *(v15 + 184) = *(v15 + 32);
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
        v24 = *(v15 + 48);
        v25 = *(v15 + 56);
        *(v15 + 48) = 0;
        *(v15 + 200) = v24;
        *(v15 + 208) = v25;
        *(v15 + 216) = *(v15 + 64);
        v26 = *(v15 + 72);
        *(v15 + 240) = *(v15 + 88);
        *(v15 + 224) = v26;
        *(v15 + 72) = 0;
        *(v15 + 80) = 0;
        v27 = *(v15 + 96);
        *(v15 + 264) = *(v15 + 112);
        *(v15 + 248) = v27;
        *(v15 + 88) = 0;
        *(v15 + 96) = 0;
        *(v15 + 104) = 0;
        *(v15 + 112) = 0;
        *(v15 + 272) = *(v15 + 120);
        v28 = *(v15 + 128);
        *(v15 + 296) = *(v15 + 144);
        *(v15 + 280) = v28;
        *(v15 + 128) = 0;
        *(v15 + 136) = 0;
        *(v15 + 144) = 0;
        v29 = a3;
        ++v36;
        if (v15 != a3)
        {
          v30 = v14;
          do
          {
            v31 = a3 + v30;
            if (!sub_89136C(a4, v21, a3 + v30 - 152))
            {
              v29 = a3 + v30;
              goto LABEL_22;
            }

            v32 = a3 + v30;
            if (*(a3 + v30 + 23) < 0)
            {
              operator delete(*v31);
            }

            *v31 = *(a3 + v30 - 152);
            *(v31 + 16) = *(a3 + v30 - 136);
            *(v32 - 129) = 0;
            *(v31 - 152) = 0;
            *(v32 + 24) = *(v32 - 128);
            if (*(v32 + 55) < 0)
            {
              operator delete(*(v32 + 32));
            }

            v33 = a3 + v30;
            *(v32 + 32) = *(v32 - 120);
            *(v32 + 48) = *(v32 - 104);
            *(v33 - 97) = 0;
            *(v32 - 120) = 0;
            *(v33 + 56) = *(a3 + v30 - 96);
            *(v33 + 64) = *(a3 + v30 - 88);
            if (*(a3 + v30 + 95) < 0)
            {
              operator delete(*(v33 + 72));
            }

            *(v33 + 72) = *(v33 - 80);
            *(v33 + 88) = *(v33 - 64);
            *(v33 - 57) = 0;
            *(v33 - 80) = 0;
            if (*(v33 + 119) < 0)
            {
              operator delete(*(v33 + 96));
            }

            v34 = a3 + v30;
            *(v33 + 96) = *(a3 + v30 - 56);
            *(v33 + 112) = *(a3 + v30 - 40);
            *(v34 - 33) = 0;
            *(v34 - 56) = 0;
            *(v34 + 120) = *(a3 + v30 - 32);
            if (*(a3 + v30 + 151) < 0)
            {
              operator delete(*(v34 + 128));
            }

            *(v34 + 128) = *(v34 - 24);
            *(v34 + 144) = *(v34 - 8);
            *(v34 - 1) = 0;
            *(v34 - 24) = 0;
            v30 -= 152;
          }

          while (v30);
          v29 = a3;
        }

LABEL_22:
        sub_52C14C(v29, v21);
        v12 = v21 + 152;
        v14 += 152;
        v15 = v22;
        v6 = v21;
      }

      while ((v21 + 152) != a2);
    }

LABEL_23:
    v35[0] = 0;
    return sub_88C7B0(v35);
  }

  return result;
}

void sub_892CDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

void sub_892CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_88C7B0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_892D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a5;
  v8 = a3;
  v34[0] = a5;
  v34[1] = &v35;
  v35 = 0;
  if (a1 == a2)
  {
    v9 = 0;
    goto LABEL_3;
  }

  v16 = a1;
  if (a3 != a4)
  {
    while (1)
    {
      if (sub_89136C(a6, v8, v16))
      {
        v18 = *v8;
        *(v6 + 16) = *(v8 + 16);
        *v6 = v18;
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *v8 = 0;
        *(v6 + 24) = *(v8 + 24);
        v19 = *(v8 + 32);
        *(v6 + 48) = *(v8 + 48);
        *(v6 + 32) = v19;
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        *(v8 + 32) = 0;
        *(v6 + 56) = *(v8 + 56);
        *(v6 + 64) = *(v8 + 64);
        v20 = *(v8 + 72);
        *(v6 + 88) = *(v8 + 88);
        *(v6 + 72) = v20;
        *(v8 + 80) = 0;
        *(v8 + 88) = 0;
        *(v8 + 72) = 0;
        v21 = *(v8 + 96);
        *(v6 + 112) = *(v8 + 112);
        *(v6 + 96) = v21;
        *(v8 + 104) = 0;
        *(v8 + 112) = 0;
        *(v8 + 96) = 0;
        *(v6 + 120) = *(v8 + 120);
        v22 = *(v8 + 128);
        *(v6 + 144) = *(v8 + 144);
        *(v6 + 128) = v22;
        *(v8 + 136) = 0;
        *(v8 + 144) = 0;
        *(v8 + 128) = 0;
        v8 += 152;
      }

      else
      {
        v23 = *v16;
        *(v6 + 16) = *(v16 + 16);
        *v6 = v23;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        *v16 = 0;
        *(v6 + 24) = *(v16 + 24);
        v24 = *(v16 + 32);
        *(v6 + 48) = *(v16 + 48);
        *(v6 + 32) = v24;
        *(v16 + 40) = 0;
        *(v16 + 48) = 0;
        *(v16 + 32) = 0;
        *(v6 + 56) = *(v16 + 56);
        *(v6 + 64) = *(v16 + 64);
        v25 = *(v16 + 72);
        *(v6 + 88) = *(v16 + 88);
        *(v6 + 72) = v25;
        *(v16 + 80) = 0;
        *(v16 + 88) = 0;
        *(v16 + 72) = 0;
        v26 = *(v16 + 96);
        *(v6 + 112) = *(v16 + 112);
        *(v6 + 96) = v26;
        *(v16 + 104) = 0;
        *(v16 + 112) = 0;
        *(v16 + 96) = 0;
        *(v6 + 120) = *(v16 + 120);
        v27 = *(v16 + 128);
        *(v6 + 144) = *(v16 + 144);
        *(v6 + 128) = v27;
        *(v16 + 136) = 0;
        *(v16 + 144) = 0;
        *(v16 + 128) = 0;
        v16 += 152;
      }

      v9 = ++v35;
      v6 += 152;
      if (v16 == a2)
      {
        break;
      }

      if (v8 == a4)
      {
        goto LABEL_13;
      }
    }

LABEL_3:
    if (v8 != a4)
    {
      do
      {
        v10 = *v8;
        *(v6 + 16) = *(v8 + 16);
        *v6 = v10;
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        *v8 = 0;
        *(v6 + 24) = *(v8 + 24);
        v11 = *(v8 + 32);
        *(v6 + 48) = *(v8 + 48);
        *(v6 + 32) = v11;
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        *(v8 + 32) = 0;
        *(v6 + 56) = *(v8 + 56);
        *(v6 + 64) = *(v8 + 64);
        v12 = *(v8 + 72);
        *(v6 + 88) = *(v8 + 88);
        *(v6 + 72) = v12;
        *(v8 + 80) = 0;
        *(v8 + 88) = 0;
        *(v8 + 72) = 0;
        v13 = *(v8 + 96);
        *(v6 + 112) = *(v8 + 112);
        *(v6 + 96) = v13;
        *(v8 + 104) = 0;
        *(v8 + 112) = 0;
        *(v8 + 96) = 0;
        *(v6 + 120) = *(v8 + 120);
        v14 = *(v8 + 128);
        *(v6 + 144) = *(v8 + 144);
        *(v6 + 128) = v14;
        *(v8 + 136) = 0;
        *(v8 + 144) = 0;
        *(v8 + 128) = 0;
        v8 += 152;
        v6 += 152;
        ++v9;
      }

      while (v8 != a4);
LABEL_15:
      v35 = v9;
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v9 = 0;
LABEL_13:
  if (v16 != a2)
  {
    do
    {
      v28 = *v16;
      *(v6 + 16) = *(v16 + 16);
      *v6 = v28;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *v16 = 0;
      *(v6 + 24) = *(v16 + 24);
      v29 = *(v16 + 32);
      *(v6 + 48) = *(v16 + 48);
      *(v6 + 32) = v29;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 32) = 0;
      *(v6 + 56) = *(v16 + 56);
      *(v6 + 64) = *(v16 + 64);
      v30 = *(v16 + 72);
      *(v6 + 88) = *(v16 + 88);
      *(v6 + 72) = v30;
      *(v16 + 80) = 0;
      *(v16 + 88) = 0;
      *(v16 + 72) = 0;
      v31 = *(v16 + 96);
      *(v6 + 112) = *(v16 + 112);
      *(v6 + 96) = v31;
      *(v16 + 104) = 0;
      *(v16 + 112) = 0;
      *(v16 + 96) = 0;
      *(v6 + 120) = *(v16 + 120);
      v32 = *(v16 + 128);
      *(v6 + 144) = *(v16 + 144);
      *(v6 + 128) = v32;
      *(v16 + 136) = 0;
      *(v16 + 144) = 0;
      *(v16 + 128) = 0;
      v16 += 152;
      v6 += 152;
      ++v9;
    }

    while (v16 != a2);
    goto LABEL_15;
  }

LABEL_16:
  v34[0] = 0;
  return sub_88C7B0(v34);
}