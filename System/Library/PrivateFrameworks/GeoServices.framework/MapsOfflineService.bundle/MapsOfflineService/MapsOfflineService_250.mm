void sub_F6C3B8(void *a1, uint64_t a2, int a3)
{
  a1[12] |= sub_F6D98C(a2, a1[3] == a1[4], 1);
  v6 = a1[4];
  v7 = a1[5];
  if (v6 >= v7)
  {
    v13 = a1[3];
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v13) >> 5) + 1;
    if (v14 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v13) >> 5);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x155555555555555)
    {
      v16 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v17 = *(a2 + 48);
    v18 = (32 * ((v6 - v13) >> 5));
    v18[2] = *(a2 + 32);
    v18[3] = v17;
    v19 = *(a2 + 80);
    v18[4] = *(a2 + 64);
    v18[5] = v19;
    v20 = *(a2 + 16);
    *v18 = *a2;
    v18[1] = v20;
    v12 = v18 + 6;
    v21 = v18 - (v6 - v13);
    memcpy(v21, v13, v6 - v13);
    a1[3] = v21;
    a1[4] = v12;
    a1[5] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v8 = *(a2 + 16);
    *v6 = *a2;
    *(v6 + 1) = v8;
    v9 = *(a2 + 32);
    v10 = *(a2 + 48);
    v11 = *(a2 + 80);
    *(v6 + 4) = *(a2 + 64);
    *(v6 + 5) = v11;
    *(v6 + 2) = v9;
    *(v6 + 3) = v10;
    v12 = v6 + 96;
  }

  a1[4] = v12;
  if (a3)
  {
    v22 = 0xAAAAAAAAAAAAAAABLL * ((v12 - a1[3]) >> 5);
    v23 = v22 - 1;
    v26 = v22 - 1;
    if (v22 - 1 >= a1[64])
    {
      sub_4D9168((a1 + 63), v22, 0);
    }

    v24 = a1[63];
    if (((*(v24 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      sub_2512DC((a1 + 66), &v26);
      v24 = a1[63];
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    }

    v25 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 5);
    v26 = v25;
    if (v25 >= a1[64])
    {
      sub_4D9168((a1 + 63), v25 + 1, 0);
      v24 = a1[63];
    }

    if (((*(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      sub_2512DC((a1 + 66), &v26);
      *(a1[63] + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    }
  }
}

uint64_t sub_F6C650(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 512);
  if (v2 > a2 && (v3 = *(a1 + 504), ((*(v3 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1) != 0) && v2 > a2 + 1)
  {
    return (*(v3 + (((a2 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (a2 + 1)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_F6C6A0(uint64_t result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(result + 40) - *(result + 24)) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

unint64_t sub_F6C788(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    v3 = *(a1 + 24);
    return (((*(v3 + 32) >> 16) & 0xFFFF0000 | (*(v3 + 32) << 32) | (2 * ((*(v3 + 32) & 0xFF000000000000) == 0))) + 4 * *(v3 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v3 + 88) & 1;
  }

  return result;
}

unint64_t sub_F6C7D0(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    v3 = *(a1 + 32);
    return (((*(v3 - 24) >> 16) & 0xFFFF0000 | (*(v3 - 24) << 32) | (2 * ((*(v3 - 24) & 0xFF000000000000) == 0))) + 4 * *(v3 - 14)) & 0xFFFFFFFFFFFFFFFELL | (*(v3 - 8) >> 1) & 1;
  }

  return result;
}

uint64_t sub_F6C814(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return a1 + 56;
  }

  else
  {
    return *(a1 + 32) - 56;
  }
}

__n128 sub_F6C830(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = (a1 + 216);
  v6 = *(a1 + 216);
  *(v7 - 1) = *(a2 + 4);
  *(v7 - 3) = v5;
  *(v7 - 5) = v4;
  if (v6)
  {
    *(a1 + 224) = v6;
    operator delete(v6);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  *(a1 + 216) = *(a2 + 40);
  *(a1 + 232) = *(a2 + 7);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  v8 = *(a1 + 240);
  if (v8)
  {
    *(a1 + 248) = v8;
    operator delete(v8);
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
  }

  *(a1 + 240) = a2[4];
  *(a1 + 256) = *(a2 + 10);
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  result = *(a2 + 88);
  v10 = *(a2 + 120);
  *(a1 + 280) = *(a2 + 104);
  *(a1 + 296) = v10;
  *(a1 + 264) = result;
  return result;
}

void sub_F6C8F0(void *a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = a1[3];
  v5 = a1[4];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 5);
  if (v6 != -1)
  {
    if (v6 + 1 <= 0x666666666666666)
    {
      operator new();
    }

LABEL_22:
    sub_1794();
  }

  for (i = a2; v4 != v5; v4 += 96)
  {
    v7 = *v4;
    v8 = *(v4 + 16);
    v25 = *(v4 + 32);
    v24[0] = v7;
    v24[1] = v8;
    sub_31F2E4(&i, v24);
  }

  if (a1[6])
  {
    v9 = (a1 + 7);
    v10 = a2[1];
    v11 = a2[2];
    if (v10 < v11)
    {
LABEL_8:
      v12 = *v9;
      v13 = *(v9 + 16);
      v10[4] = *(v9 + 32);
      *v10 = v12;
      *(v10 + 1) = v13;
      v14 = (v10 + 5);
      goto LABEL_21;
    }
  }

  else
  {
    v9 = a1[4] - 56;
    v10 = a2[1];
    v11 = a2[2];
    if (v10 < v11)
    {
      goto LABEL_8;
    }
  }

  v15 = *a2;
  v16 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - *a2) >> 3);
  v17 = v16 + 1;
  if (v16 + 1 > 0x666666666666666)
  {
    goto LABEL_22;
  }

  v18 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v15) >> 3);
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x333333333333333)
  {
    v19 = 0x666666666666666;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    if (v19 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v20 = 8 * ((v10 - *a2) >> 3);
  v21 = *v9;
  v22 = *(v9 + 16);
  *(v20 + 32) = *(v9 + 32);
  *v20 = v21;
  *(v20 + 16) = v22;
  v14 = 40 * v16 + 40;
  v23 = (40 * v16 - (v10 - v15));
  memcpy(v23, v15, v10 - v15);
  *a2 = v23;
  a2[1] = v14;
  a2[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

LABEL_21:
  a2[1] = v14;
}

void sub_F6CAE8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_F6CB08(__n128 *a1, __n128 *a2)
{
  v5 = a1 + 8;
  v4 = a1[8].n128_u64[0];
  if (v4)
  {
    a1[8].n128_u64[1] = v4;
    operator delete(v4);
    v5->n128_u64[0] = 0;
    v5->n128_u64[1] = 0;
    v5[1].n128_u64[0] = 0;
  }

  result = *a2;
  a1[8] = *a2;
  a1[9].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_F6CB68(void *a1, __n128 *a2)
{
  v5 = a1 + 19;
  v4 = a1[19];
  if (v4)
  {
    a1[20] = v4;
    operator delete(v4);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  result = *a2;
  *(a1 + 19) = *a2;
  a1[21] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_F6CBC8(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5));
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

  return *a1 + 96 * a2;
}

void sub_F6CD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_F6CDEC(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5));
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

  return *a1 + 96 * a2;
}

void sub_F6CF28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

unint64_t sub_F6D024(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  if (v1 == v2 && !a1[6])
  {
    return 0;
  }

  else
  {
    return 0xAAAAAAAAAAAAAAABLL * ((v2 - v1) >> 5) + 1;
  }
}

void *sub_F6D05C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[3];
  v3 = result[4];
  if (v2 == v3 && !result[6])
  {
    *a2 = result;
    a2[1] = 0;
    a2[2] = result;
    a2[3] = 0;
  }

  else
  {
    *a2 = result;
    a2[1] = 0;
    a2[2] = result;
    a2[3] = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) + 1;
  }

  return result;
}

void *sub_F6D0A4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[3];
  v3 = result[4];
  if (v2 == v3 && !result[6])
  {
    *a2 = result;
    a2[1] = 0;
    a2[2] = result;
    a2[3] = 0;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) + 1;
    *a2 = result;
    a2[1] = v4;
    a2[2] = result;
    a2[3] = v4;
  }

  return result;
}

void *sub_F6D0EC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[3];
  v3 = result[4];
  if (v2 == v3 && !result[6])
  {
    *a2 = result;
    a2[1] = 0;
    a2[2] = result;
    a2[3] = 0;
    a2[4] = result;
    a2[5] = 0;
    a2[6] = result;
    a2[7] = 0;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) + 1;
    *a2 = result;
    a2[1] = v4;
    a2[2] = result;
    a2[3] = v4;
    a2[4] = result;
    a2[5] = 0;
    a2[6] = result;
    a2[7] = 0;
  }

  return result;
}

uint64_t sub_F6D170@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 136);
  *a2 = *(result + 128);
  a2[1] = v2;
  return result;
}

uint64_t sub_F6D17C(void *a1, unint64_t a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v3 == v2 && !a1[6])
  {
    v4 = -1;
    if (a2)
    {
LABEL_4:
      if (v4 != a2)
      {
        return sub_F6CBC8(a1 + 3, a2);
      }

      v5 = v2 - 56;
      if (a1[6])
      {
        return (a1 + 7);
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 5);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  if (a1[6])
  {
    return (a1 + 7);
  }

  else
  {
    return a1[3];
  }
}

uint64_t sub_F6D1F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 320);
  }
}

uint64_t sub_F6D204(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 == v3 && !*(a1 + 48))
  {
    if (a2 == -1)
    {
      return *(a1 + 408);
    }
  }

  else if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) == a2)
  {
    return *(a1 + 408);
  }

  return 1000000000;
}

uint64_t sub_F6D254(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 32);
    if (v2 == v3 && !*(a1 + 48))
    {
      if (a2 == -1)
      {
LABEL_5:
        v4 = *(a1 + 408);
        v7 = *(a1 + 24);
        v6 = *(a1 + 32);
        v5 = (a1 + 24);
        if (v7 != v6)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) == a2)
    {
      goto LABEL_5;
    }

    v4 = 1000000000;
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

  else if (*(a1 + 48))
  {
    v4 = *(a1 + 408) - *(a1 + 320);
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = 1000000000 - *(a1 + 320);
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

LABEL_14:
  if (*(a1 + 48))
  {
LABEL_15:
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 5);
    if (a2)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v8 = -1;
  if (a2)
  {
LABEL_16:
    if (v8 == a2)
    {
      v9 = v6 - 56;
      if (*(a1 + 48))
      {
        v10 = (a1 + 56);
      }

      else
      {
        v10 = v9;
      }
    }

    else
    {
      v10 = sub_F6CBC8(v5, a2);
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*(a1 + 48))
  {
    v10 = (a1 + 56);
  }

  else
  {
    v10 = v7;
  }

LABEL_25:
  v11 = (*v10 - **v10);
  v12 = 0.0;
  if (*v11 >= 9u)
  {
    v13 = v11[4];
    if (v13)
    {
      LODWORD(v12) = *(*v10 + v13);
      v12 = *&v12;
    }
  }

  v14 = v4 / 1000000000.0 * v12;
  if (v14 >= 0.0)
  {
    if (v14 < 4.50359963e15)
    {
      v15 = (v14 + v14) + 1;
      return (v15 >> 1);
    }
  }

  else if (v14 > -4.50359963e15)
  {
    v15 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
    return (v15 >> 1);
  }

  return v14;
}

BOOL sub_F6D428(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    v41 = 1;
    v40 = &v41;
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    if (v3 != v4 && v3 + 12 != v4)
    {
      do
      {
        sub_F7270C(&v40, v3, (v3 + 12));
        v6 = v3 + 24;
        v3 += 12;
      }

      while (v6 != v4);
      v3 = *(a1 + 24);
      v4 = *(a1 + 32);
    }

    v7 = *(a1 + 48);
    if (v3 == v4)
    {
      if (!v7)
      {
        v11 = 0;
        v39 = 0;
        goto LABEL_55;
      }
    }

    else if (!v7)
    {
      v8 = *v3;
      v9 = (*v3 - **v3);
      v10 = *v9;
      if (v10 >= 0x9B)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

    v8 = *(a1 + 56);
    v9 = (v8 - *v8);
    v10 = *v9;
    if (v10 >= 0x9B)
    {
LABEL_13:
      v11 = v9[77];
      if (v9[77])
      {
        v11 = (*(v8 + v11) >> 4) & 0x10;
      }

      goto LABEL_26;
    }

LABEL_25:
    v11 = 0;
    if (v10 < 0x2F)
    {
      v18 = 0;
      goto LABEL_36;
    }

LABEL_26:
    if (v9[23] && !*(v8 + v9[23]))
    {
      v11 |= 0x20uLL;
      v18 = 1;
      if (v10 < 0x9B)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v18 = 1;
      if (v10 < 0x9B)
      {
        goto LABEL_36;
      }
    }

    if (v9[77] && (*(v8 + v9[77]) & 8) != 0)
    {
      v11 |= 0x40uLL;
    }

LABEL_36:
    if (v18)
    {
      v19 = v9[23];
      if (v19)
      {
        if (*(v8 + v19) == 21)
        {
          v11 |= 0x80uLL;
        }
      }
    }

    v39 = v11;
    v28 = &v39;
    if (v3 != v4)
    {
      do
      {
        v20 = sub_F71B0C(&v28, v3);
        if (!v20)
        {
          break;
        }

        v3 += 12;
      }

      while (v3 != v4);
      v41 &= v20;
      if ((v39 & ~*(a1 + 96)) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_56;
    }

LABEL_55:
    v41 &= 1u;
    if ((v11 & ~*(a1 + 96)) == 0)
    {
LABEL_74:
      v25 = sub_F6A524(a1 + 176);
      return v25 & v41;
    }

LABEL_56:
    if (!sub_7E7E4(3u))
    {
LABEL_73:
      v41 = 0;
      goto LABEL_74;
    }

    sub_19594F8(&v28);
    sub_4A5C(&v28, "PathLeg has inconsistent features.", 34);
    if ((v38 & 0x10) != 0)
    {
      v23 = v37;
      if (v37 < v34)
      {
        v37 = v34;
        v23 = v34;
      }

      v24 = v33;
      v22 = v23 - v33;
      if (v23 - v33 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if ((v38 & 8) == 0)
      {
        v22 = 0;
        v27 = 0;
LABEL_68:
        *(&__dst + v22) = 0;
        sub_7E854(&__dst, 3u);
        if (v27 < 0)
        {
          operator delete(__dst);
        }

        if (v36 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v30);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_73;
      }

      v24 = v31;
      v22 = v32 - v31;
      if ((v32 - v31) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_76:
        sub_3244();
      }
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v27 = v22;
    if (v22)
    {
      memmove(&__dst, v24, v22);
    }

    goto LABEL_68;
  }

  if (*(a1 + 320) > *(a1 + 408))
  {
    return 0;
  }

  v12 = *(a1 + 56);
  v13 = (v12 - *v12);
  v14 = *v13;
  if (v14 < 0x9B)
  {
    LODWORD(v15) = 0;
    if (v14 < 0x2F)
    {
      v16 = 0;
      v17 = *(a1 + 96);
      goto LABEL_49;
    }
  }

  else
  {
    v15 = v13[77];
    if (v13[77])
    {
      v15 = (*(v12 + v15) >> 4) & 0x10;
    }
  }

  if (v13[23] && !*(v12 + v13[23]))
  {
    LODWORD(v15) = v15 | 0x20;
    v16 = 1;
    v17 = *(a1 + 96);
    if (v14 < 0x9B)
    {
      goto LABEL_49;
    }

LABEL_46:
    if (v13[77] && (*(v12 + v13[77]) & 8) != 0)
    {
      LODWORD(v15) = v15 | 0x40;
    }

    goto LABEL_49;
  }

  v16 = 1;
  v17 = *(a1 + 96);
  if (v14 >= 0x9B)
  {
    goto LABEL_46;
  }

LABEL_49:
  if (v16)
  {
    v21 = v13[23];
    if (v21)
    {
      if (*(v12 + v21) == 21)
      {
        LODWORD(v15) = v15 | 0x80;
      }
    }
  }

  return (~v17 & v15) == 0;
}

void sub_F6D938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

unint64_t sub_F6D98C(int **a1, int a2, int a3)
{
  if (!a2)
  {
    v7 = 0;
    goto LABEL_20;
  }

  v4 = *a1;
  v5 = (*a1 - **a1);
  v6 = *v5;
  if (v6 < 0x9B)
  {
    v7 = 0;
    if (v6 < 0x2F)
    {
      v8 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v5[77];
    if (v5[77])
    {
      v7 = (*(v4 + v7) >> 4) & 0x10;
    }
  }

  if (!v5[23] || *(v4 + v5[23]))
  {
    v8 = 1;
    if (v6 < 0x9B)
    {
      goto LABEL_16;
    }

LABEL_13:
    if (v5[77] && (*(v4 + v5[77]) & 8) != 0)
    {
      v7 |= 0x40uLL;
    }

    goto LABEL_16;
  }

  v7 |= 0x20uLL;
  v8 = 1;
  if (v6 >= 0x9B)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (v8)
  {
    v9 = v5[23];
    if (v9)
    {
      if (*(v4 + v9) == 21)
      {
        v7 |= 0x80uLL;
      }
    }
  }

LABEL_20:
  if (!a3)
  {
    goto LABEL_39;
  }

  v10 = a1[5];
  v11 = (v10 - *v10);
  v12 = *v11;
  if (v12 < 0x9B)
  {
    v13 = 0;
    if (v12 < 0x2F)
    {
      v14 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    v13 = v11[77];
    if (v11[77])
    {
      v13 = (*(v10 + v13) >> 4) & 0x10;
    }
  }

  if (v11[23] && !*(v10 + v11[23]))
  {
    v13 |= 0x20uLL;
    v14 = 1;
    if (v12 < 0x9B)
    {
      goto LABEL_34;
    }

LABEL_31:
    if (v11[77] && (*(v10 + v11[77]) & 8) != 0)
    {
      v13 |= 0x40uLL;
    }

    goto LABEL_34;
  }

  v14 = 1;
  if (v12 >= 0x9B)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (v14)
  {
    v15 = v11[23];
    if (v15)
    {
      if (*(v10 + v15) == 21)
      {
        v13 |= 0x80uLL;
      }
    }
  }

  v7 |= v13;
LABEL_39:
  v16 = *a1;
  v17 = (*a1 - **a1);
  v18 = *v17;
  if (*(a1 + 38))
  {
    if (v18 >= 0x4F)
    {
      v19 = v17[39];
      if (v19)
      {
        if ((*(v16 + v19) & 8) != 0 || (*(v16 + v19) & 4) != 0)
        {
          goto LABEL_59;
        }
      }
    }
  }

  else if (v18 >= 0x4F)
  {
    v20 = v17[39];
    if (v20)
    {
      if ((*(v16 + v20) & 0x80) != 0 || (*(v16 + v20) & 0x40) != 0)
      {
        goto LABEL_59;
      }
    }
  }

  v21 = a1[5];
  v22 = (v21 - *v21);
  v23 = *v22;
  if (*(a1 + 78))
  {
    if (v23 < 0x4F)
    {
      goto LABEL_60;
    }

    v24 = v22[39];
    if (!v24 || (*(v21 + v24) & 0x20) == 0 && (*(v21 + v24) & 0x10) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (v23 < 0x4F)
    {
      goto LABEL_60;
    }

    v25 = v22[39];
    if (!v25 || (*(v21 + v25) & 2) == 0 && (*(v21 + v25) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

LABEL_59:
  v7 |= 0x100uLL;
LABEL_60:
  v26 = a1[6];
  v27 = (v26 - *v26);
  if (*v27 < 0x11u)
  {
    goto LABEL_68;
  }

  v28 = v27[8];
  if (!v28)
  {
    goto LABEL_68;
  }

  if ((*(v26 + v28) & 0x20) != 0)
  {
    v29 = a1[1];
    v30 = (v29 - *v29);
    if (*v30 < 0x11u || (v31 = v30[8]) == 0 || (*(v29 + v31) & 0x20) == 0)
    {
      v7 |= 0x400uLL;
    }
  }

  if ((*(v26 + v28) & 0x10) == 0 || (v35 = a1[1], v36 = (v35 - *v35), *v36 >= 0x11u) && (v37 = v36[8]) != 0 && (*(v35 + v37) & 0x10) != 0)
  {
LABEL_68:
    v32 = v7 & 0xFFFFFFFFFFFFFDFFLL;
  }

  else
  {
    v32 = v7 | 0x200;
  }

  v33 = v32 & 0xFFFFFFFFFFFFE7FFLL | ((((a1[11] & 0x10) >> 4) & 1) << 12) | (((~*(a1 + 88) & 0x41) == 0) << 11);
  if (sub_F71E38(a1) || sub_F71F38(a1))
  {
    return v33 | 0x2000;
  }

  else
  {
    return v33 & 0xFFFFFFFFFFFFDFFFLL;
  }
}

void sub_F6DCCC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[3];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 5) - 0x5555555555555555 * ((a1[4] - v6) >> 5);
  if (0xAAAAAAAAAAAAAAABLL * ((a1[5] - v6) >> 5) < v7)
  {
    if (v7 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  if (a3 != a2)
  {
    do
    {
      sub_F6C3B8(a1, v4, 0);
      v4 += 96;
    }

    while (v4 != a3);
  }
}

void sub_F6DDE0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = *(a2 + 48) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(a1 + 48) = 0;
  }

  sub_F6DCCC(a1, *(a2 + 24), *(a2 + 32));
  v5 = *(a2 + 440);
  v6 = *(a2 + 456);
  v7 = *(a2 + 472);
  *(a1 + 487) = *(a2 + 487);
  *(a1 + 472) = v7;
  v8 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v8;
  *(a1 + 440) = v5;
  *(a1 + 456) = v6;
  if (*(a1 + 484) == 3)
  {
    *(a1 + 484) = 4;
  }
}

_OWORD *sub_F6DE64(void *a1, char *__src, _OWORD *a3)
{
  v3 = __src;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v12 = *a1;
    v13 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a1] >> 5) + 1;
    if (v13 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v12) >> 5);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x155555555555555)
    {
      v15 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v20 = (32 * ((__src - v12) >> 5));
    if (!(0xAAAAAAAAAAAAAAABLL * ((__src - v12) >> 5)))
    {
      if (__src - v12 < 1)
      {
        operator new();
      }

      v20 = (32 * ((__src - v12) >> 5) - 96 * ((1 - 0x5555555555555555 * ((32 * ((__src - v12) >> 5)) >> 5) + ((1 - 0x5555555555555555 * ((32 * ((__src - v12) >> 5)) >> 5)) >> 63)) >> 1));
    }

    v21 = a3[1];
    *v20 = *a3;
    v20[1] = v21;
    v22 = a3[2];
    v23 = a3[3];
    v24 = a3[5];
    v20[4] = a3[4];
    v20[5] = v24;
    v20[2] = v22;
    v20[3] = v23;
    memcpy(v20 + 6, __src, a1[1] - __src);
    v25 = *a1;
    v26 = v20 + a1[1] - v3 + 96;
    a1[1] = v3;
    v27 = v3 - v25;
    v28 = v20 - (v3 - v25);
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    a1[1] = v26;
    a1[2] = 0;
    if (v29)
    {
      operator delete(v29);
    }

    return v20;
  }

  else
  {
    if (__src != v5)
    {
      v33 = a3[2];
      v34 = a3[3];
      *v35 = a3[4];
      *&v35[16] = a3[5];
      v7 = __src + 96;
      v31 = *a3;
      v32 = a3[1];
      if (v5 < 0x60)
      {
        a1[1] = v5;
        if (v5 == v7)
        {
LABEL_21:
          v3[2] = v33;
          v3[3] = v34;
          v3[4] = *v35;
          *(v3 + 76) = *&v35[12];
          *v3 = v31;
          v3[1] = v32;
          return v3;
        }
      }

      else
      {
        v8 = *(v5 - 5);
        *v5 = *(v5 - 6);
        *(v5 + 1) = v8;
        v9 = *(v5 - 4);
        v10 = *(v5 - 3);
        v11 = *(v5 - 1);
        *(v5 + 4) = *(v5 - 2);
        *(v5 + 5) = v11;
        *(v5 + 2) = v9;
        *(v5 + 3) = v10;
        a1[1] = v5 + 96;
        if (v5 == v7)
        {
          goto LABEL_21;
        }
      }

      memmove(v7, __src, v5 - v7 - 4);
      goto LABEL_21;
    }

    v16 = a3[1];
    *v5 = *a3;
    *(v5 + 1) = v16;
    v17 = a3[2];
    v18 = a3[3];
    v19 = a3[5];
    *(v5 + 4) = a3[4];
    *(v5 + 5) = v19;
    *(v5 + 2) = v17;
    *(v5 + 3) = v18;
    a1[1] = v5 + 96;
  }

  return v3;
}

void sub_F6E110(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_F6E128(_OWORD *result, uint64_t a2)
{
  v3 = result;
  if (*(result + 6))
  {
    v4 = *(a2 + 48) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(result + 6) = 0;
  }

  v6 = *(a2 + 24);
  for (i = *(a2 + 32); i != v6; result = sub_F6DE64(v3 + 3, *(v3 + 3), i))
  {
    i -= 12;
    *(v3 + 12) |= sub_F6D98C(i, 1, *(v3 + 3) == *(v3 + 4));
  }

  v7 = *(a2 + 352);
  v8 = *(a2 + 368);
  v9 = *(a2 + 384);
  *(v3 + 399) = *(a2 + 399);
  v3[24] = v9;
  v10 = *(a2 + 336);
  v3[20] = *(a2 + 320);
  v3[21] = v10;
  v3[22] = v7;
  v3[23] = v8;
  if (*(v3 + 99) == 3)
  {
    *(v3 + 99) = 5;
  }

  return result;
}

unint64_t sub_F6E1F4(unint64_t result)
{
  *(result + 96) = 0;
  v1 = *(result + 32);
  v2 = *(result + 24);
  if (v2 == v1)
  {
    return result;
  }

  v3 = result;
  v4 = *v2;
  v5 = (*v2 - **v2);
  v6 = *v5;
  if (v6 < 0x9B)
  {
    v7 = 0;
    if (v6 < 0x2F)
    {
      v8 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v7 = v5[77];
    if (v5[77])
    {
      v7 = (*(v4 + v7) >> 4) & 0x10;
    }
  }

  if (v5[23] && !*(v4 + v5[23]))
  {
    v7 |= 0x20uLL;
    v8 = 1;
    if (v6 < 0x9B)
    {
      goto LABEL_15;
    }

LABEL_12:
    if (v5[77] && (*(v4 + v5[77]) & 8) != 0)
    {
      v7 |= 0x40uLL;
    }

    goto LABEL_15;
  }

  v8 = 1;
  if (v6 >= 0x9B)
  {
    goto LABEL_12;
  }

LABEL_15:
  if (v8 && (v9 = v5[23]) != 0 && *(v4 + v9) == 21)
  {
    *(result + 96) = v7 | 0x80;
  }

  else
  {
    *(result + 96) = v7;
  }

  do
  {
    result = sub_F6D98C(v2, 0, 1);
    *(v3 + 96) |= result;
    v2 += 12;
  }

  while (v2 != v1);
  return result;
}

void *sub_F6E314(unint64_t a1, void *a2, void *a3, int a4)
{
  if (*(a1 + 24) == a2)
  {
    if (*(a1 + 32) == a3)
    {
      return *(a1 + 24);
    }
  }

  else if (a4)
  {
    v5 = *(a3 - 7);
    v6 = *(a3 - 5);
    *(a2 - 3) = *(a3 - 3);
    *(a2 - 5) = v6;
    *(a2 - 7) = v5;
  }

  if (a3 != a2)
  {
    v7 = *(a1 + 32);
    v8 = v7 - a3;
    if (v7 != a3)
    {
      v9 = a1;
      memmove(a2, a3, v8 - 4);
      a1 = v9;
    }

    *(a1 + 32) = a2 + v8;
  }

  sub_F6E1F4(a1);
  return a2;
}

uint64_t sub_F6E3D4(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = *(a1 + 56);
    v2 = (v1 - *v1);
    v3 = 0.0;
    if (*v2 >= 9u)
    {
      v4 = v2[4];
      if (v4)
      {
        LODWORD(v3) = *(v1 + v4);
        v3 = *&v3;
      }
    }

    v5 = v3 * ((*(a1 + 408) - *(a1 + 320)) / 1000000000.0);
    if (v5 >= 0.0)
    {
      if (v5 < 4.50359963e15)
      {
        v6 = (v5 + v5) + 1;
        return (v6 >> 1);
      }
    }

    else if (v5 > -4.50359963e15)
    {
      v6 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
      return (v6 >> 1);
    }

    return v5;
  }

  v7 = *(a1 + 24);
  v8 = (*v7 - **v7);
  v9 = 0.0;
  if (*v8 >= 9u)
  {
    v10 = v8[4];
    if (v10)
    {
      LODWORD(v9) = *(*v7 + v10);
      v9 = *&v9;
    }
  }

  v11 = v9 * ((1000000000 - *(a1 + 320)) / 1000000000.0);
  if (v11 >= 0.0)
  {
    HIDWORD(v12) = 1127219200;
    if (v11 >= 4.50359963e15)
    {
      goto LABEL_21;
    }

    v13 = (v11 + v11) + 1;
  }

  else
  {
    HIDWORD(v12) = -1020264448;
    if (v11 <= -4.50359963e15)
    {
      goto LABEL_21;
    }

    v13 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
  }

  v11 = (v13 >> 1);
LABEL_21:
  v15 = v11;
  v16 = *(a1 + 32);
  v17 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v7) >> 5);
  if (v17 >= 2)
  {
    v18 = v7 + 12;
    v19 = v17 - 1;
    do
    {
      while (1)
      {
        v20 = (*v18 - **v18);
        if (*v20 >= 9u)
        {
          v21 = v20[4];
          if (v21)
          {
            break;
          }
        }

        v18 += 12;
        if (!--v19)
        {
          goto LABEL_27;
        }
      }

      v15 += *(*v18 + v21);
      v18 += 12;
      --v19;
    }

    while (v19);
  }

LABEL_27:
  v22 = *(v16 - 56);
  v23 = (v22 - *v22);
  v24 = 0.0;
  if (*v23 >= 9u)
  {
    v25 = v23[4];
    if (v25)
    {
      LODWORD(v24) = *(v22 + v25);
      v24 = *&v24;
    }
  }

  LODWORD(v12) = *(a1 + 408);
  v26 = v24 * (v12 / 1000000000.0);
  if (v26 >= 0.0)
  {
    if (v26 < 4.50359963e15)
    {
      v27 = (v26 + v26) + 1;
      goto LABEL_35;
    }
  }

  else if (v26 > -4.50359963e15)
  {
    v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
LABEL_35:
    v26 = (v27 >> 1);
  }

  return v15 + v26;
}

BOOL sub_F6E668(uint64_t a1, void *a2)
{
  if ((*(a1 + 48) != 0) != (a2[6] != 0))
  {
    return 0;
  }

  result = sub_F71798(a1 + 320, (a2 + 40));
  if (result)
  {
    result = sub_F71798(a1 + 408, (a2 + 51));
    if (result)
    {
      if (*(a1 + 48) && a2[6])
      {
        v5 = a2[11];
        if (__PAIR64__(*(a1 + 92), *(a1 + 88)) == __PAIR64__(WORD2(v5), v5))
        {
          return *(a1 + 94) == BYTE6(v5);
        }

        return 0;
      }

      v7 = *(a1 + 24);
      v6 = *(a1 + 32);
      v8 = a2[3];
      if (v6 - v7 == a2[4] - v8)
      {
        if (v7 != v6)
        {
          v9 = 0;
          while (1)
          {
            v10 = v7 + v9;
            v11 = *(v8 + v9 + 32);
            if (*(v7 + v9 + 32) != v11)
            {
              break;
            }

            result = 0;
            if (*(v10 + 36) != WORD2(v11) || *(v10 + 38) != BYTE6(v11))
            {
              return result;
            }

            v12 = v7 + v9;
            v13 = *(v8 + v9 + 72);
            if (*(v7 + v9 + 72) != v13)
            {
              return 0;
            }

            result = 0;
            if (*(v12 + 76) != WORD2(v13) || *(v12 + 78) != BYTE6(v13))
            {
              return result;
            }

            if (*(v8 + v9 + 80) != *(v7 + v9 + 80) || ((*(v8 + v9 + 88) ^ *(v7 + v9 + 88)) & 3) != 0 || ((*(v8 + v9 + 84) ^ *(v7 + v9 + 84)) & 0x7FFF) != 0)
            {
              return 0;
            }

            result = 0;
            if (((*(v8 + v9 + 88) ^ *(v7 + v9 + 88)) & 0x7C) == 0 && *(v8 + v9 + 86) == *(v7 + v9 + 86))
            {
              v9 += 96;
              result = 1;
              if (v7 + v9 != v6)
              {
                continue;
              }
            }

            return result;
          }

          return 0;
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_F6E86C(uint64_t a1)
{
  *(a1 + 176) = 0x7FFFFFFF;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0x7FFFFFFF;
  *(a1 + 188) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 208) = 0x8000000080000000;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 268) = 0x7FFFFFFF;
  *(a1 + 272) = 0x8000000080000000;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 312) = -1;
  *(a1 + 314) = 0;
  *(a1 + 316) = -1;
  *(a1 + 318) = 0;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0x3FF0000000000000;
  *(a1 + 368) = 1;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 394) = -29536;
  *(a1 + 399) = 0;
  *(a1 + 396) = 0;
  *(a1 + 408) = 0;
  *(a1 + 440) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0x3FF0000000000000;
  *(a1 + 456) = 1;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 2359296000;
  *(a1 + 487) = 0;
  *(a1 + 496) = -1;
  *(a1 + 500) = -1;
  *(a1 + 550) = 0;
  *(a1 + 502) = 0u;
  *(a1 + 518) = 0u;
  *(a1 + 534) = 0u;
  sub_F6E9D8(a1);
  return a1;
}

void sub_F6E998(_Unwind_Exception *a1)
{
  sub_4D0584(v1 + 504);
  sub_49A8F8(v2);
  v4 = *(v1 + 152);
  if (v4)
  {
    *(v1 + 160) = v4;
    operator delete(v4);
  }

  sub_21E56B0(v1 + 128);
  _Unwind_Resume(a1);
}

double sub_F6E9D8(uint64_t a1)
{
  v3 = *(a1 + 104);
  for (i = *(a1 + 112); i != v3; i -= 56)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  v6 = (a1 + 216);
  v5 = *(a1 + 216);
  *(a1 + 112) = v3;
  *(a1 + 48) = 0;
  *(a1 + 32) = *(a1 + 24);
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 176) = 0x7FFFFFFFLL;
  *(a1 + 184) = 0x7FFFFFFF;
  *(a1 + 188) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0x8000000080000000;
  if (v5)
  {
    *(a1 + 224) = v5;
    operator delete(v5);
    *v6 = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  v7 = *(a1 + 240);
  *v6 = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  if (v7)
  {
    *(a1 + 248) = v7;
    operator delete(v7);
  }

  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  *(a1 + 256) = 0;
  *(a1 + 268) = 0x7FFFFFFF;
  *&result = 0x8000000080000000;
  *(a1 + 272) = 0x8000000080000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0x3FF0000000000000;
  *(a1 + 368) = 1;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2359296000;
  *(a1 + 399) = 0;
  *(a1 + 408) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0x3FF0000000000000;
  *(a1 + 456) = 1;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 2359296000;
  *(a1 + 487) = 0;
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 160) = *(a1 + 152);
  return result;
}

void sub_F6EB40(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_F6EF04(a1, a2))
  {

    sub_F6E86C(a3);
    return;
  }

  v6 = *a1;
  sub_F6E86C(a3);
  *(a3 + 96) = *(v6 + 96);
  v40 = v6;
  v41 = 0;
  if (sub_F6EF04(a1, &v40))
  {
    v7 = *(v6 + 352);
    v8 = *(v6 + 368);
    v9 = *(v6 + 384);
    *(a3 + 399) = *(v6 + 399);
    *(a3 + 384) = v9;
    v10 = *(v6 + 336);
    *(a3 + 320) = *(v6 + 320);
    *(a3 + 336) = v10;
    *(a3 + 352) = v7;
    *(a3 + 368) = v8;
    if (*(a3 + 396) == 3)
    {
      *(a3 + 396) = 5;
    }

    v11 = *(v6 + 176);
    v12 = *(v6 + 192);
    *(a3 + 208) = *(v6 + 208);
    *(a3 + 176) = v11;
    *(a3 + 192) = v12;
    if (v6 != a3)
    {
      sub_4D88D0((a3 + 216), *(v6 + 216), *(v6 + 224), (*(v6 + 224) - *(v6 + 216)) >> 4);
      sub_4D88D0((a3 + 240), *(v6 + 240), *(v6 + 248), (*(v6 + 248) - *(v6 + 240)) >> 4);
    }

    v13 = *(v6 + 264);
    v14 = *(v6 + 296);
    *(a3 + 280) = *(v6 + 280);
    *(a3 + 296) = v14;
    *(a3 + 264) = v13;
  }

  v15 = *(v6 + 24);
  v16 = *(v6 + 32);
  if (v15 == v16 && !*(v6 + 48))
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x2E8BA2E8BA2E8BA3 * ((v16 - v15) >> 3) + 1;
  }

  v40 = v6;
  v41 = v17;
  if (sub_F6EF04(a2, &v40))
  {
    v18 = *(v6 + 440);
    v19 = *(v6 + 456);
    v20 = *(v6 + 472);
    *(a3 + 487) = *(v6 + 487);
    *(a3 + 472) = v20;
    v21 = *(v6 + 424);
    *(a3 + 408) = *(v6 + 408);
    *(a3 + 424) = v21;
    *(a3 + 440) = v18;
    *(a3 + 456) = v19;
    if (*(a3 + 484) == 3)
    {
      *(a3 + 484) = 4;
    }

    v22 = a1[1];
    v23 = a2[1];
    if (v23 - v22 == 1)
    {
LABEL_18:
      v24 = sub_F6F134(v6, v22);
      v26 = *a1;
      v25 = a1[1];
      v27 = *(*a1 + 24);
      v28 = *(*a1 + 32);
      if (v27 == v28 && !*(v26 + 48))
      {
        v29 = -1;
        if (v25)
        {
LABEL_21:
          if (v29 == v25)
          {
            if (*(v26 + 48))
            {
              v30 = (v26 + 56);
              if (*(v6 + 512) <= v22)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v30 = (v28 - 48);
              if (*(v6 + 512) <= v22)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
            v30 = sub_F6F948((*a1 + 24), v25);
            if (*(v6 + 512) <= v22)
            {
LABEL_38:
              LODWORD(v37) = 0;
LABEL_46:
              sub_F69060(a3, v24, v30, v37);
              return;
            }
          }

LABEL_45:
          v37 = (*(*(v6 + 504) + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v22) & 1;
          goto LABEL_46;
        }
      }

      else
      {
        v29 = 0x2E8BA2E8BA2E8BA3 * ((v28 - v27) >> 3);
        if (v25)
        {
          goto LABEL_21;
        }
      }

      v38 = *(v26 + 48);
      v39 = (v26 + 56);
      if (v38)
      {
        v30 = v39;
      }

      else
      {
        v30 = *(*a1 + 24);
      }

      if (*(v6 + 512) <= v22)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  else
  {
    *(a3 + 408) = 1000000000;
    v22 = a1[1];
    v23 = a2[1];
    if (v23 - v22 == 1)
    {
      goto LABEL_18;
    }
  }

  v31 = v23 - 1;
  if (v22 <= v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = v22;
  }

  if (v22 < v31)
  {
    do
    {
      v33 = sub_F6F948((v6 + 24), v22);
      v34 = *(v6 + 512);
      if (v34 > v22 && (v35 = *(v6 + 504), ((*(v35 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v22) & 1) != 0) && v34 > v22 + 1)
      {
        v36 = (*(v35 + (((v22 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v22 + 1)) & 1;
      }

      else
      {
        LODWORD(v36) = 0;
      }

      sub_F6F284(a3, v33, v36);
      ++v22;
    }

    while (v32 != v22);
  }
}

BOOL sub_F6EF04(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    v5 = 0;
    v6 = *a2;
    if (*a2)
    {
      goto LABEL_7;
    }

LABEL_20:
    v11 = 0;
    return v5 ^ v11 ^ 1;
  }

  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (v3 == v4 && !*(v2 + 48))
  {
    v5 = 0;
    v6 = *a2;
    if (*a2)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  v5 = a1[1] < (0x2E8BA2E8BA2E8BA3 * ((v4 - v3) >> 3) + 1);
  v6 = *a2;
  if (!*a2)
  {
    goto LABEL_20;
  }

LABEL_7:
  v8 = a2[1];
  v9 = *(v6 + 24);
  v10 = *(v6 + 32);
  if (v9 == v10 && !*(v6 + 48))
  {
    goto LABEL_20;
  }

  v11 = v8 < 0x2E8BA2E8BA2E8BA3 * ((v10 - v9) >> 3) + 1;
  if (!v5 || !v11)
  {
    return v5 ^ v11 ^ 1;
  }

  v12 = a1[1];
  v14 = *(v2 + 24);
  v13 = *(v2 + 32);
  if (v14 != v13 || *(v2 + 48))
  {
    v15 = 0x2E8BA2E8BA2E8BA3 * ((v13 - v14) >> 3);
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_25:
    v21 = *(v2 + 48);
    v22 = v2 + 56;
    if (v21)
    {
      v19 = v22;
    }

    else
    {
      v19 = v14;
    }

    if (v9 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v15 = -1;
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (v15 == v12)
  {
    v16 = *(v2 + 48);
    v17 = v13 - 48;
    v18 = v2 + 56;
    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    if (v9 != v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v19 = sub_F6F948((v2 + 24), v12);
    v6 = *a2;
    v8 = a2[1];
    v9 = *(*a2 + 24);
    v10 = *(*a2 + 32);
    if (v9 != v10)
    {
      goto LABEL_30;
    }
  }

LABEL_29:
  if (!*(v6 + 48))
  {
    v23 = -1;
    if (v8)
    {
      goto LABEL_31;
    }

LABEL_35:
    v24 = *(v6 + 48);
    goto LABEL_36;
  }

LABEL_30:
  v23 = 0x2E8BA2E8BA2E8BA3 * ((v10 - v9) >> 3);
  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_31:
  if (v23 != v8)
  {
    return v19 == sub_F6F948((v6 + 24), v8);
  }

  v24 = *(v6 + 48);
  v9 = v10 - 48;
LABEL_36:
  v25 = v6 + 56;
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = v9;
  }

  return v19 == v26;
}

unint64_t sub_F6F134(void *a1, unint64_t a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v3 != v2 || *(a1 + 12))
  {
    v4 = 0x2E8BA2E8BA2E8BA3 * ((v2 - v3) >> 3);
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_15:
    if (*(a1 + 12))
    {
      return a1[6];
    }

    v12 = *(v3 + 32);
    v13 = *(v3 + 80);
    v14 = HIDWORD(v12) & 0xFFFFFFF;
    v15 = (v12 >> 33) & 0x10000000;
    v16 = HIDWORD(v12) & 0x40000000;
    if (v12 < 0 && v16 == 0)
    {
      v18 = 0x40000000;
    }

    else
    {
      v18 = 0;
    }

    v19 = v13 >> 25;
    return v12 | ((v19 & 0x80000000 | v14 | v15 | (v16 >> 1) | v18) << 32);
  }

  v4 = -1;
  if (!a2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (v4 == a2)
  {
    if (*(a1 + 12))
    {
      return a1[6];
    }

    v12 = *(v2 - 16);
    v20 = *(v2 - 8);
    v14 = HIDWORD(v12) & 0xFFFFFFF;
    v15 = (v12 >> 33) & 0x10000000;
    v16 = HIDWORD(v12) & 0x40000000;
    if (v12 < 0 && v16 == 0)
    {
      v18 = 0x40000000;
    }

    else
    {
      v18 = 0;
    }

    v19 = v20 >> 26;
    return v12 | ((v19 & 0x80000000 | v14 | v15 | (v16 >> 1) | v18) << 32);
  }

  v6 = sub_F6F948(a1 + 3, a2);
  v7 = *(v6 + 32);
  v8 = *(v6 + 80);
  v9 = HIDWORD(v7) & 0x40000000;
  if (v7 < 0 && v9 == 0)
  {
    v11 = 0x40000000;
  }

  else
  {
    v11 = 0;
  }

  return v7 | (((v8 >> 25) & 0x80000000 | HIDWORD(v7) & 0xFFFFFFF | (v7 >> 33) & 0x10000000 | (v9 >> 1) | v11) << 32);
}

void sub_F6F284(void *a1, uint64_t a2, int a3)
{
  a1[12] |= sub_F705AC(a2, a1[3] == a1[4], 1);
  v6 = a1[4];
  v7 = a1[5];
  if (v6 >= v7)
  {
    v13 = a1[3];
    v14 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v13) >> 3) + 1;
    if (v14 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_1794();
    }

    v15 = 0x2E8BA2E8BA2E8BA3 * ((v7 - v13) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x1745D1745D1745DLL)
    {
      v16 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      sub_1808();
    }

    v17 = *(a2 + 48);
    v18 = 8 * ((v6 - v13) >> 3);
    *(v18 + 32) = *(a2 + 32);
    *(v18 + 48) = v17;
    *(v18 + 64) = *(a2 + 64);
    *(v18 + 80) = *(a2 + 80);
    v19 = *(a2 + 16);
    *v18 = *a2;
    *(v18 + 16) = v19;
    v12 = v18 + 88;
    v20 = (v18 - (v6 - v13));
    memcpy(v20, v13, v6 - v13);
    a1[3] = v20;
    a1[4] = v12;
    a1[5] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v8 = *(a2 + 16);
    *v6 = *a2;
    *(v6 + 16) = v8;
    v9 = *(a2 + 32);
    v10 = *(a2 + 48);
    v11 = *(a2 + 64);
    *(v6 + 80) = *(a2 + 80);
    *(v6 + 48) = v10;
    *(v6 + 64) = v11;
    *(v6 + 32) = v9;
    v12 = v6 + 88;
  }

  a1[4] = v12;
  if (a3)
  {
    v21 = 0x2E8BA2E8BA2E8BA3 * ((v12 - a1[3]) >> 3);
    v22 = v21 - 1;
    v25 = v21 - 1;
    if (v21 - 1 >= a1[64])
    {
      sub_4D9168((a1 + 63), v21, 0);
    }

    v23 = a1[63];
    if (((*(v23 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      sub_2512DC((a1 + 66), &v25);
      v23 = a1[63];
      *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    }

    v24 = 0x2E8BA2E8BA2E8BA3 * ((a1[4] - a1[3]) >> 3);
    v25 = v24;
    if (v24 >= a1[64])
    {
      sub_4D9168((a1 + 63), v24 + 1, 0);
      v23 = a1[63];
    }

    if (((*(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      sub_2512DC((a1 + 66), &v25);
      *(a1[63] + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    }
  }
}

uint64_t sub_F6F544(uint64_t result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((*(result + 40) - *(result + 24)) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

unint64_t sub_F6F638(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return *(a1 + 48);
  }

  v2 = *(a1 + 24);
  v3 = *(v2 + 32);
  v4 = *(v2 + 80);
  v5 = HIDWORD(v3) & 0x40000000;
  if (v3 < 0 && v5 == 0)
  {
    v7 = 0x40000000;
  }

  else
  {
    v7 = 0;
  }

  return v3 | (((v4 >> 25) & 0x80000000 | HIDWORD(v3) & 0xFFFFFFF | (v3 >> 33) & 0x10000000 | (v5 >> 1) | v7) << 32);
}

unint64_t sub_F6F698(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return *(a1 + 48);
  }

  v2 = *(a1 + 32);
  v3 = *(v2 - 16);
  v4 = *(v2 - 8);
  v5 = HIDWORD(v3) & 0x40000000;
  if (v3 < 0 && v5 == 0)
  {
    v7 = 0x40000000;
  }

  else
  {
    v7 = 0;
  }

  return v3 | (((v4 >> 26) & 0x80000000 | HIDWORD(v3) & 0xFFFFFFF | (v3 >> 33) & 0x10000000 | (v5 >> 1) | v7) << 32);
}

uint64_t sub_F6F6F4(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return a1 + 56;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t sub_F6F70C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return a1 + 56;
  }

  else
  {
    return *(a1 + 32) - 48;
  }
}

void sub_F6F728(uint64_t a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = 0x2E8BA2E8BA2E8BA3 * ((v5 - v4) >> 3);
  if (v6 != -1)
  {
    if ((v6 + 1) <= 0x666666666666666)
    {
      operator new();
    }

LABEL_22:
    sub_1794();
  }

  for (i = a2; v4 != v5; v4 += 88)
  {
    v7 = *v4;
    v8 = *(v4 + 16);
    v25 = *(v4 + 32);
    v24[0] = v7;
    v24[1] = v8;
    sub_F72A9C(&i, v24);
  }

  if (*(a1 + 48))
  {
    v9 = a1 + 56;
    v10 = a2[1];
    v11 = a2[2];
    if (v10 < v11)
    {
LABEL_8:
      v12 = *v9;
      v13 = *(v9 + 16);
      v10[4] = *(v9 + 32);
      *v10 = v12;
      *(v10 + 1) = v13;
      v14 = (v10 + 5);
      goto LABEL_21;
    }
  }

  else
  {
    v9 = *(a1 + 32) - 48;
    v10 = a2[1];
    v11 = a2[2];
    if (v10 < v11)
    {
      goto LABEL_8;
    }
  }

  v15 = *a2;
  v16 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - *a2) >> 3);
  v17 = v16 + 1;
  if (v16 + 1 > 0x666666666666666)
  {
    goto LABEL_22;
  }

  v18 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v15) >> 3);
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x333333333333333)
  {
    v19 = 0x666666666666666;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    if (v19 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v20 = 8 * ((v10 - *a2) >> 3);
  v21 = *v9;
  v22 = *(v9 + 16);
  *(v20 + 32) = *(v9 + 32);
  *v20 = v21;
  *(v20 + 16) = v22;
  v14 = 40 * v16 + 40;
  v23 = (40 * v16 - (v10 - v15));
  memcpy(v23, v15, v10 - v15);
  *a2 = v23;
  a2[1] = v14;
  a2[2] = 0;
  if (v15)
  {
    operator delete(v15);
  }

LABEL_21:
  a2[1] = v14;
}

void sub_F6F928(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F6F948(void *a1, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 88 * a2;
}

void sub_F6FA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_F6FB6C(void *a1, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 88 * a2;
}

void sub_F6FCA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_F6FD88(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2 && !*(a1 + 48))
  {
    return 0;
  }

  else
  {
    return 0x2E8BA2E8BA2E8BA3 * ((v2 - v1) >> 3) + 1;
  }
}

uint64_t sub_F6FDEC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  v3 = *(result + 32);
  if (v2 == v3 && !*(result + 48))
  {
    *a2 = result;
    a2[1] = 0;
    a2[2] = result;
    a2[3] = 0;
  }

  else
  {
    *a2 = result;
    a2[1] = 0;
    a2[2] = result;
    a2[3] = 0x2E8BA2E8BA2E8BA3 * ((v3 - v2) >> 3) + 1;
  }

  return result;
}

uint64_t sub_F6FE3C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v3 == v2 && !*(a1 + 48))
  {
    v4 = -1;
    if (a2)
    {
LABEL_4:
      if (v4 != a2)
      {
        return sub_F6F948((a1 + 24), a2);
      }

      v5 = v2 - 48;
      if (*(a1 + 48))
      {
        return a1 + 56;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v4 = 0x2E8BA2E8BA2E8BA3 * ((v2 - v3) >> 3);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  if (*(a1 + 48))
  {
    return a1 + 56;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t sub_F6FEB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v2 == v3 && !*(a1 + 48))
  {
    if (a2 == -1)
    {
      return *(a1 + 408);
    }
  }

  else if (0x2E8BA2E8BA2E8BA3 * ((v3 - v2) >> 3) == a2)
  {
    return *(a1 + 408);
  }

  return 1000000000;
}

uint64_t sub_F6FF10(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 32);
    if (v2 == v3 && !*(a1 + 48))
    {
      if (a2 == -1)
      {
LABEL_5:
        v4 = *(a1 + 408);
        v7 = *(a1 + 24);
        v6 = *(a1 + 32);
        v5 = (a1 + 24);
        if (v7 != v6)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if (0x2E8BA2E8BA2E8BA3 * ((v3 - v2) >> 3) == a2)
    {
      goto LABEL_5;
    }

    v4 = 1000000000;
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

  else if (*(a1 + 48))
  {
    v4 = *(a1 + 408) - *(a1 + 320);
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = 1000000000 - *(a1 + 320);
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v5 = (a1 + 24);
    if (v7 != v6)
    {
      goto LABEL_15;
    }
  }

LABEL_14:
  if (*(a1 + 48))
  {
LABEL_15:
    v8 = 0x2E8BA2E8BA2E8BA3 * (v6 - v7);
    if (a2)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v8 = -1;
  if (a2)
  {
LABEL_16:
    if (v8 == a2)
    {
      if (*(a1 + 48))
      {
        v9 = (a1 + 56);
      }

      else
      {
        v9 = v6 - 6;
      }
    }

    else
    {
      v9 = sub_F6F948(v5, a2);
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*(a1 + 48))
  {
    v9 = (a1 + 56);
  }

  else
  {
    v9 = v7;
  }

LABEL_25:
  v10 = (*v9 - **v9);
  v11 = 0.0;
  if (*v10 >= 9u)
  {
    v12 = v10[4];
    if (v12)
    {
      LODWORD(v11) = *(*v9 + v12);
      v11 = *&v11;
    }
  }

  v13 = v4 / 1000000000.0 * v11;
  if (v13 >= 0.0)
  {
    if (v13 < 4.50359963e15)
    {
      v14 = (v13 + v13) + 1;
      return (v14 >> 1);
    }
  }

  else if (v13 > -4.50359963e15)
  {
    v14 = (v13 + v13) - 1 + (((v13 + v13) - 1) >> 63);
    return (v14 >> 1);
  }

  return v13;
}

BOOL sub_F70108(uint64_t a1)
{
  if (*(a1 + 48))
  {
    if (*(a1 + 320) > *(a1 + 408))
    {
      return 0;
    }

    v12 = *(a1 + 56);
    v13 = (v12 - *v12);
    v14 = *v13;
    if (v14 < 0x9B)
    {
      LODWORD(v15) = 0;
      if (v14 < 0x2F)
      {
        return (~*(a1 + 96) & v15) == 0;
      }
    }

    else
    {
      v15 = v13[77];
      if (v13[77])
      {
        v15 = (8 * *(v12 + v15)) & 0x40;
      }
    }

    v16 = v13[23];
    if (v16)
    {
      if (*(v12 + v16) == 21)
      {
        LODWORD(v15) = v15 | 0x80;
      }
    }

    return (~*(a1 + 96) & v15) == 0;
  }

  v38 = 1;
  v37 = &v38;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3 != v4 && v3 + 11 != v4)
  {
    do
    {
      sub_F72BF4(&v37, v3, (v3 + 11));
      v6 = v3 + 22;
      v3 += 11;
    }

    while (v6 != v4);
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
  }

  v7 = *(a1 + 48);
  if (v3 == v4)
  {
    if (!v7)
    {
      v11 = 0;
      v36 = 0;
      goto LABEL_35;
    }
  }

  else if (!v7)
  {
    v8 = *v3;
    v9 = (*v3 - **v3);
    v10 = *v9;
    if (v10 >= 0x9B)
    {
      goto LABEL_13;
    }

LABEL_25:
    v11 = 0;
    if (v10 < 0x2F)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v8 = *(a1 + 56);
  v9 = (v8 - *v8);
  v10 = *v9;
  if (v10 < 0x9B)
  {
    goto LABEL_25;
  }

LABEL_13:
  v11 = v9[77];
  if (v9[77])
  {
    v11 = (8 * *(v8 + v11)) & 0x40;
  }

LABEL_26:
  v17 = v9[23];
  if (v17 && *(v8 + v17) == 21)
  {
    v11 |= 0x80uLL;
  }

LABEL_29:
  v36 = v11;
  v25 = &v36;
  if (v3 != v4)
  {
    do
    {
      v18 = sub_F72050(&v25, v3);
      if (!v18)
      {
        break;
      }

      v3 += 11;
    }

    while (v3 != v4);
    v38 &= v18;
    if ((v36 & ~*(a1 + 96)) == 0)
    {
      goto LABEL_54;
    }

LABEL_36:
    if (!sub_7E7E4(3u))
    {
LABEL_53:
      v38 = 0;
      goto LABEL_54;
    }

    sub_19594F8(&v25);
    sub_4A5C(&v25, "PathLeg has inconsistent features.", 34);
    if ((v35 & 0x10) != 0)
    {
      v20 = v34;
      if (v34 < v31)
      {
        v34 = v31;
        v20 = v31;
      }

      v21 = v30;
      v19 = v20 - v30;
      if (v20 - v30 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if ((v35 & 8) == 0)
      {
        v19 = 0;
        v24 = 0;
LABEL_48:
        *(&__dst + v19) = 0;
        sub_7E854(&__dst, 3u);
        if (v24 < 0)
        {
          operator delete(__dst);
        }

        if (v33 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v27);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_53;
      }

      v21 = v28;
      v19 = v29 - v28;
      if ((v29 - v28) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_56:
        sub_3244();
      }
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    v24 = v19;
    if (v19)
    {
      memmove(&__dst, v21, v19);
    }

    goto LABEL_48;
  }

LABEL_35:
  v38 &= 1u;
  if ((v11 & ~*(a1 + 96)) != 0)
  {
    goto LABEL_36;
  }

LABEL_54:
  v22 = sub_F6A524(a1 + 176);
  return v22 & v38;
}

void sub_F70560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_F705AC(int **a1, int a2, int a3)
{
  if (!a2)
  {
    result = 0;
    goto LABEL_12;
  }

  v4 = *a1;
  v5 = (*a1 - **a1);
  v6 = *v5;
  if (v6 < 0x9B)
  {
    result = 0;
    if (v6 < 0x2F)
    {
      goto LABEL_12;
    }

    v8 = v5[23];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else if (v5[77])
  {
    result = (8 * *&v4[v5[77]]) & 0x40;
    v8 = v5[23];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = 0;
    v8 = v5[23];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (v4[v8] == 21)
  {
    result |= 0x80uLL;
  }

LABEL_12:
  if (!a3)
  {
    goto LABEL_21;
  }

  v9 = a1[5];
  v10 = (v9 - *v9);
  v11 = *v10;
  if (v11 >= 0x9B)
  {
    v12 = v10[77];
    if (v10[77])
    {
      v12 = (8 * *(v9 + v12)) & 0x40;
    }

    goto LABEL_17;
  }

  v12 = 0;
  if (v11 >= 0x2F)
  {
LABEL_17:
    v13 = v10[23];
    if (v13 && *(v9 + v13) == 21)
    {
      v12 |= 0x80uLL;
    }
  }

  result |= v12;
LABEL_21:
  v14 = *(a1 + 9);
  v15 = *a1;
  v16 = (*a1 - **a1);
  v17 = *v16;
  if ((v14 & 0x20000000) != 0)
  {
    if (v17 >= 0x51 && v16[40] && (*&v15[v16[40]] & 0x40) != 0)
    {
      return result | 0x100;
    }
  }

  else if (v17 >= 0x51 && v16[40] && (*&v15[v16[40]] & 4) != 0)
  {
    return result | 0x100;
  }

  v18 = *(a1 + 19);
  v19 = a1[5];
  v20 = (v19 - *v19);
  v21 = *v20;
  if ((v18 & 0x20000000) != 0)
  {
    if (v21 >= 0x51 && v20[40] && (*(v19 + v20[40]) & 1) != 0)
    {
      return result | 0x100;
    }
  }

  else if (v21 >= 0x51 && v20[40] && (*(v19 + v20[40]) & 0x10) != 0)
  {
    return result | 0x100;
  }

  if ((v14 & 0x20000000) != 0)
  {
    if (v17 >= 0x51)
    {
      v23 = v16[40];
      if (v23)
      {
        if ((*&v15[v23] & 0x80) != 0)
        {
          return result | 0x100;
        }
      }
    }
  }

  else if (v17 >= 0x51)
  {
    v22 = v16[40];
    if (v22)
    {
      if ((*&v15[v22] & 8) != 0)
      {
        return result | 0x100;
      }
    }
  }

  if ((v18 & 0x20000000) == 0)
  {
    if (v21 < 0x51 || !v20[40] || (*(v19 + v20[40]) & 0x20) == 0)
    {
      return result;
    }

    return result | 0x100;
  }

  if (v21 >= 0x51 && v20[40] && (*(v19 + v20[40]) & 2) != 0)
  {
    return result | 0x100;
  }

  return result;
}

void sub_F707C4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[3];
  v7 = 0x2E8BA2E8BA2E8BA3 * ((a3 - a2) >> 3) + 0x2E8BA2E8BA2E8BA3 * ((a1[4] - v6) >> 3);
  if (0x2E8BA2E8BA2E8BA3 * ((a1[5] - v6) >> 3) < v7)
  {
    if (v7 < 0x2E8BA2E8BA2E8BBLL)
    {
      operator new();
    }

    sub_1794();
  }

  if (a3 != a2)
  {
    do
    {
      sub_F6F284(a1, v4, 0);
      v4 += 88;
    }

    while (v4 != a3);
  }
}

void sub_F708E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v4 = *(a2 + 48) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(a1 + 48) = 0;
  }

  sub_F707C4(a1, *(a2 + 24), *(a2 + 32));
  v5 = *(a2 + 440);
  v6 = *(a2 + 456);
  v7 = *(a2 + 472);
  *(a1 + 487) = *(a2 + 487);
  *(a1 + 472) = v7;
  v8 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v8;
  *(a1 + 440) = v5;
  *(a1 + 456) = v6;
  if (*(a1 + 484) == 3)
  {
    *(a1 + 484) = 4;
  }
}

char *sub_F70968(void *a1, char *__src, __int128 *a3)
{
  v3 = __src;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v12 = *a1;
    v13 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 3) + 1;
    if (v13 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_1794();
    }

    v14 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v12) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x1745D1745D1745DLL)
    {
      v15 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      sub_1808();
    }

    v20 = 8 * ((__src - v12) >> 3);
    if (!(0x2E8BA2E8BA2E8BA3 * ((__src - v12) >> 3)))
    {
      if (__src - v12 < 1)
      {
        operator new();
      }

      v20 = 8 * ((__src - v12) >> 3) - 88 * ((0x2E8BA2E8BA2E8BA3 * ((8 * ((__src - v12) >> 3)) >> 3) + 1 + ((0x2E8BA2E8BA2E8BA3 * ((8 * ((__src - v12) >> 3)) >> 3) + 1) >> 63)) >> 1);
    }

    v21 = a3[1];
    *v20 = *a3;
    *(v20 + 16) = v21;
    v22 = a3[2];
    v23 = a3[3];
    v24 = a3[4];
    *(v20 + 80) = *(a3 + 10);
    *(v20 + 48) = v23;
    *(v20 + 64) = v24;
    *(v20 + 32) = v22;
    memcpy((v20 + 88), __src, a1[1] - __src);
    v25 = *a1;
    v26 = v20 + 88 + a1[1] - v3;
    a1[1] = v3;
    v27 = v3 - v25;
    v28 = (v20 - (v3 - v25));
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    a1[1] = v26;
    a1[2] = 0;
    if (v29)
    {
      operator delete(v29);
    }

    return v20;
  }

  else
  {
    if (__src != v5)
    {
      v33 = a3[2];
      v34 = a3[3];
      v35 = a3[4];
      v36 = *(a3 + 10);
      v7 = __src + 88;
      v31 = *a3;
      v32 = a3[1];
      if (v5 < 0x58)
      {
        a1[1] = v5;
        if (v5 == v7)
        {
LABEL_21:
          *(v3 + 2) = v33;
          *(v3 + 3) = v34;
          *(v3 + 4) = v35;
          *(v3 + 10) = v36;
          *v3 = v31;
          *(v3 + 1) = v32;
          return v3;
        }
      }

      else
      {
        v8 = *(v5 - 72);
        *v5 = *(v5 - 88);
        *(v5 + 16) = v8;
        v9 = *(v5 - 56);
        v10 = *(v5 - 40);
        v11 = *(v5 - 24);
        *(v5 + 80) = *(v5 - 8);
        *(v5 + 48) = v10;
        *(v5 + 64) = v11;
        *(v5 + 32) = v9;
        a1[1] = v5 + 88;
        if (v5 == v7)
        {
          goto LABEL_21;
        }
      }

      memmove(__src + 88, __src, v5 - v7);
      goto LABEL_21;
    }

    v16 = a3[1];
    *v5 = *a3;
    *(v5 + 16) = v16;
    v17 = a3[2];
    v18 = a3[3];
    v19 = a3[4];
    *(v5 + 80) = *(a3 + 10);
    *(v5 + 48) = v18;
    *(v5 + 64) = v19;
    *(v5 + 32) = v17;
    a1[1] = v5 + 88;
  }

  return v3;
}

void sub_F70C48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_F70C60(char *result, uint64_t a2)
{
  v3 = result;
  if (*(result + 12))
  {
    v4 = *(a2 + 48) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(result + 12) = 0;
  }

  v6 = *(a2 + 24);
  for (i = *(a2 + 32); i != v6; result = sub_F70968(v3 + 3, *(v3 + 3), i))
  {
    i = (i - 88);
    *(v3 + 12) |= sub_F705AC(i, 1, *(v3 + 3) == *(v3 + 4));
  }

  v7 = *(a2 + 352);
  v8 = *(a2 + 368);
  v9 = *(a2 + 384);
  *(v3 + 399) = *(a2 + 399);
  *(v3 + 24) = v9;
  v10 = *(a2 + 336);
  *(v3 + 20) = *(a2 + 320);
  *(v3 + 21) = v10;
  *(v3 + 22) = v7;
  *(v3 + 23) = v8;
  if (*(v3 + 99) == 3)
  {
    *(v3 + 99) = 5;
  }

  return result;
}

uint64_t sub_F70D2C(uint64_t result)
{
  *(result + 96) = 0;
  v1 = *(result + 32);
  v2 = *(result + 24);
  if (v2 != v1)
  {
    v3 = result;
    v4 = *v2;
    v5 = (*v2 - **v2);
    v6 = *v5;
    if (v6 < 0x9B)
    {
      v7 = 0;
      if (v6 < 0x2F)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = v5[77];
      if (v5[77])
      {
        v7 = (8 * *(v4 + v7)) & 0x40;
      }
    }

    v8 = v5[23];
    if (v8 && *(v4 + v8) == 21)
    {
      *(result + 96) = v7 | 0x80;
      goto LABEL_10;
    }

LABEL_9:
    *(result + 96) = v7;
    do
    {
LABEL_10:
      result = sub_F705AC(v2, 0, 1);
      *(v3 + 96) |= result;
      v2 += 11;
    }

    while (v2 != v1);
  }

  return result;
}

int **sub_F70DF4(void *a1, int **a2, int **a3, int a4)
{
  v6 = a1[3];
  if (v6 != a2)
  {
    if (a4)
    {
      v7 = *(a3 - 3);
      v8 = *(a3 - 2);
      *(a2 - 2) = *(a3 - 2);
      *(a2 - 3) = v7;
      *(a2 - 2) = v8;
      v6 = a1[3];
    }

LABEL_5:
    if (a3 == a2)
    {
      v9 = a1[4];
      a1[12] = 0;
      if (v6 == v9)
      {
        return a2;
      }
    }

    else
    {
      v11 = a1[4];
      v12 = v11 - a3;
      if (v11 != a3)
      {
        memmove(a2, a3, v11 - a3);
        v6 = a1[3];
      }

      v9 = (a2 + v12);
      a1[4] = a2 + v12;
      a1[12] = 0;
      if (v6 == (a2 + v12))
      {
        return a2;
      }
    }

    v13 = *v6;
    v14 = (*v6 - **v6);
    v15 = *v14;
    if (v15 < 0x9B)
    {
      v16 = 0;
      if (v15 < 0x2F)
      {
LABEL_18:
        a1[12] = v16;
        do
        {
          a1[12] |= sub_F705AC(v6, 0, 1);
          v6 += 11;
        }

        while (v6 != v9);
        return a2;
      }
    }

    else
    {
      v16 = v14[77];
      if (v14[77])
      {
        v16 = (8 * *(v13 + v16)) & 0x40;
      }
    }

    v17 = v14[23];
    if (v17 && *(v13 + v17) == 21)
    {
      v16 |= 0x80uLL;
    }

    goto LABEL_18;
  }

  if (a1[4] != a3)
  {
    goto LABEL_5;
  }

  return a1[3];
}

uint64_t sub_F70F54(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = *(a1 + 56);
    v2 = (v1 - *v1);
    v3 = 0.0;
    if (*v2 >= 9u)
    {
      v4 = v2[4];
      if (v4)
      {
        LODWORD(v3) = *(v1 + v4);
        v3 = *&v3;
      }
    }

    v5 = v3 * ((*(a1 + 408) - *(a1 + 320)) / 1000000000.0);
    if (v5 >= 0.0)
    {
      if (v5 < 4.50359963e15)
      {
        v6 = (v5 + v5) + 1;
        return (v6 >> 1);
      }
    }

    else if (v5 > -4.50359963e15)
    {
      v6 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
      return (v6 >> 1);
    }

    return v5;
  }

  v7 = *(a1 + 24);
  v8 = (*v7 - **v7);
  v9 = 0.0;
  if (*v8 >= 9u)
  {
    v10 = v8[4];
    if (v10)
    {
      LODWORD(v9) = *(*v7 + v10);
      v9 = *&v9;
    }
  }

  v11 = v9 * ((1000000000 - *(a1 + 320)) / 1000000000.0);
  if (v11 >= 0.0)
  {
    HIDWORD(v12) = 1127219200;
    if (v11 >= 4.50359963e15)
    {
      goto LABEL_21;
    }

    v13 = (v11 + v11) + 1;
  }

  else
  {
    HIDWORD(v12) = -1020264448;
    if (v11 <= -4.50359963e15)
    {
      goto LABEL_21;
    }

    v13 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
  }

  v11 = (v13 >> 1);
LABEL_21:
  v15 = v11;
  v16 = *(a1 + 32);
  v17 = 0x2E8BA2E8BA2E8BA3 * ((v16 - v7) >> 3);
  if (v17 >= 2)
  {
    v18 = v7 + 11;
    v19 = v17 - 1;
    do
    {
      while (1)
      {
        v20 = (*v18 - **v18);
        if (*v20 >= 9u)
        {
          v21 = v20[4];
          if (v21)
          {
            break;
          }
        }

        v18 += 11;
        if (!--v19)
        {
          goto LABEL_27;
        }
      }

      v15 += *(*v18 + v21);
      v18 += 11;
      --v19;
    }

    while (v19);
  }

LABEL_27:
  v22 = *(v16 - 48);
  v23 = (v22 - *v22);
  v24 = 0.0;
  if (*v23 >= 9u)
  {
    v25 = v23[4];
    if (v25)
    {
      LODWORD(v24) = *(v22 + v25);
      v24 = *&v24;
    }
  }

  LODWORD(v12) = *(a1 + 408);
  v26 = v24 * (v12 / 1000000000.0);
  if (v26 >= 0.0)
  {
    if (v26 < 4.50359963e15)
    {
      v27 = (v26 + v26) + 1;
      goto LABEL_35;
    }
  }

  else if (v26 > -4.50359963e15)
  {
    v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
LABEL_35:
    v26 = (v27 >> 1);
  }

  return v15 + v26;
}

BOOL sub_F711D0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) != 0) != (*(a2 + 48) != 0))
  {
    return 0;
  }

  result = sub_F71798(a1 + 320, a2 + 320);
  if (result)
  {
    result = sub_F71798(a1 + 408, a2 + 408);
    if (result)
    {
      if (*(a1 + 48) && *(a2 + 48))
      {
        v5 = *(a2 + 88);
        if (*(a1 + 88) == v5)
        {
          return *(a1 + 92) == HIDWORD(v5);
        }
      }

      else
      {
        v7 = *(a1 + 24);
        v6 = *(a1 + 32);
        v8 = *(a2 + 24);
        if (v6 - v7 == *(a2 + 32) - v8)
        {
          if (v7 == v6)
          {
            return 1;
          }

          v9 = (v8 + 80);
          result = 1;
          while (*(v7 + 4) == *(v9 - 6) && *(v7 + 9) == *(v9 - 1) && ((*v9 ^ *(v7 + 10)) & 0x1FFFFFFFFFFFFFFFLL) == 0)
          {
            v7 += 88;
            v9 += 11;
            if (v7 == v6)
            {
              return result;
            }
          }
        }
      }

      return 0;
    }
  }

  return result;
}

void sub_F7134C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 16) - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      if ((0x2E8BA2E8BA2E8BA3 * (v4 >> 3)) < 0x2E8BA2E8BA2E8BBLL)
      {
        operator new();
      }

      sub_1808();
    }

    if (v4 < v3)
    {
      v6 = 8 * (v4 >> 3);
      v7 = *(a1 + 8) - v2;
      v8 = v6 - v7;
      memcpy((v6 - v7), v2, v7);
      *a1 = v8;
      *(a1 + 8) = v6;
      *(a1 + 16) = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

BOOL sub_F7146C(void **a1, int **a2)
{
  **a1 |= sub_F6AF54(a2, 1, 1);
  v3 = sub_3116D0(a2);
  v4 = sub_311544(a2 + 5);
  if (v3 == v4 || !sub_7E7E4(3u))
  {
    return v3 == v4;
  }

  sub_19594F8(&v16);
  v5 = sub_4A5C(&v16, "PathLeg inconsistency found on junction level, ", 47);
  v6 = sub_3116D0(a2);
  v7 = sub_2FF718(v5, __ROR8__(v6, 32));
  v8 = sub_4A5C(v7, " != ", 4);
  v9 = sub_311544(a2 + 5);
  sub_2FF718(v8, __ROR8__(v9, 32));
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v10 >= 0x17)
    {
      operator new();
    }

    v15 = v10;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_14;
  }

  if ((v26 & 8) != 0)
  {
    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v15 = 0;
LABEL_14:
  *(&__p + v10) = 0;
  sub_7E854(&__p, 3u);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  std::ios::~ios();
  return v3 == v4;
}

void sub_F7174C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

BOOL sub_F71798(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 != v3)
  {
    v4 = v2 - v3;
    if (v4 <= 0.0)
    {
      v4 = -v4;
    }

    if (v4 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56) || *(a1 + 60) != *(a2 + 60) || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v5 = *(a1 + 73);
  v6 = *(a2 + 73);
  if (v5 == v6 && *(a1 + 73))
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  if (*(a1 + 74) == *(a2 + 74) && *(a1 + 76) == *(a2 + 76) && *(a1 + 80) == *(a2 + 80) && *(a1 + 81) == *(a2 + 81))
  {
    return *(a1 + 82) == *(a2 + 82);
  }

  return 0;
}

void sub_F718E4(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 56 * a2;
      do
      {
        *v3 = 0x7FFFFFFFLL;
        *(v3 + 8) = xmmword_2291330;
        *(v3 + 24) = 0x7FFFFFFFFFFFFFFFLL;
        *(v3 + 32) = 0;
        *(v3 + 40) = 0;
        *(v3 + 48) = 0;
        v3 += 56;
      }

      while (v3 != v9);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0x492492492492492)
    {
      sub_1794();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x249249249249249)
    {
      v8 = 0x492492492492492;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x492492492492492)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = 56 * v5;
    v11 = 56 * v5 + 56 * a2;
    v12 = 56 * v5;
    do
    {
      *v12 = 0x7FFFFFFFLL;
      *(v12 + 8) = xmmword_2291330;
      *(v12 + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      v12 += 56;
    }

    while (v12 != v11);
    v13 = *a1;
    v14 = a1[1];
    v15 = v10 + *a1 - v14;
    if (v14 != *a1)
    {
      v16 = *a1;
      v17 = v15;
      do
      {
        v18 = *(v16 + 1);
        *v17 = *v16;
        *(v17 + 16) = v18;
        *(v17 + 40) = 0;
        *(v17 + 48) = 0;
        *(v17 + 32) = 0;
        *(v17 + 32) = *(v16 + 2);
        *(v17 + 48) = v16[6];
        v16[4] = 0;
        v16[5] = 0;
        v16[6] = 0;
        v16 += 7;
        v17 += 56;
      }

      while (v16 != v14);
      do
      {
        v19 = v13[4];
        if (v19)
        {
          v13[5] = v19;
          operator delete(v19);
        }

        v13 += 7;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v11;
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

BOOL sub_F71B0C(void **a1, int **a2)
{
  **a1 |= sub_F6D98C(a2, 1, 1);
  v3 = sub_3116D0(a2);
  v4 = sub_311544(a2 + 5);
  if (v3 == v4 || !sub_7E7E4(3u))
  {
    return v3 == v4;
  }

  sub_19594F8(&v16);
  v5 = sub_4A5C(&v16, "PathLeg inconsistency found on junction level, ", 47);
  v6 = sub_3116D0(a2);
  v7 = sub_2FF718(v5, __ROR8__(v6, 32));
  v8 = sub_4A5C(v7, " != ", 4);
  v9 = sub_311544(a2 + 5);
  sub_2FF718(v8, __ROR8__(v9, 32));
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v10 >= 0x17)
    {
      operator new();
    }

    v15 = v10;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_14;
  }

  if ((v26 & 8) != 0)
  {
    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v15 = 0;
LABEL_14:
  *(&__p + v10) = 0;
  sub_7E854(&__p, 3u);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  std::ios::~ios();
  return v3 == v4;
}

void sub_F71DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

BOOL sub_F71E38(int **a1)
{
  if ((*(a1 + 42) & 0x38) == 0)
  {
    return 0;
  }

  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 < 0x4D)
    {
      return 0;
    }

    if (v2[38])
    {
      v4 = 0;
      if ((*&v1[v2[38]] & 8) != 0)
      {
        return v4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v3 < 0x4D)
    {
      return 0;
    }

    if (v2[38])
    {
      v4 = 0;
      if ((*&v1[v2[38]] & 4) != 0)
      {
        return v4;
      }

LABEL_10:
      if (v3 <= 0x9A)
      {
        return v4;
      }

      goto LABEL_13;
    }
  }

  if (v3 < 0x9B)
  {
    return 0;
  }

LABEL_13:
  v4 = v2[77];
  if (!v2[77])
  {
    return v4;
  }

  v6 = *&v1[v4];
  if ((v6 & 0x2000000) == 0)
  {
    return 0;
  }

  v7 = a1[1];
  if (!v7 || (v8 = (v7 - *v7), *v8 < 0x11u) || (v9 = v8[8]) == 0)
  {
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_22;
    }

    return 0;
  }

  v4 = 0;
  if ((*(v7 + v9) & 4) != 0 || (v6 & 0x10000) != 0)
  {
    return v4;
  }

LABEL_22:
  if ((v6 & 0x4000000) != 0)
  {
    return 0;
  }

  return !v2[23] || v1[v2[23]] == 32;
}

BOOL sub_F71F38(int **a1)
{
  if ((*(a1 + 42) & 0x3F) == 0)
  {
    return 0;
  }

  v1 = *a1;
  v2 = (*a1 - **a1);
  if (*v2 < 0x9Bu)
  {
    return 0;
  }

  if (!v2[77])
  {
    return 0;
  }

  v3 = *&v1[v2[77]];
  if ((v3 & 0x2000000) == 0 || v2[13] && v1[v2[13]] > 4u)
  {
    return 0;
  }

  v4 = a1[5];
  v5 = (v4 - *v4);
  if (*v5 < 0x1Bu)
  {
    return 0;
  }

  v6 = v5[13];
  if (!v6 || *(v4 + v6) < 6u)
  {
    return 0;
  }

  v7 = v2[38];
  if (*(a1 + 38))
  {
    if (!v2[38])
    {
      goto LABEL_18;
    }

    if ((v1[v7] & 8) != 0)
    {
      return 0;
    }

    v8 = 2;
  }

  else
  {
    if (!v2[38])
    {
      goto LABEL_18;
    }

    if ((v1[v7] & 4) != 0)
    {
      return 0;
    }

    v8 = 1;
  }

  if ((*&v1[v7] & v8) != 0)
  {
    return 0;
  }

LABEL_18:
  v9 = a1[1];
  if (!v9 || (v10 = (v9 - *v9), *v10 < 0x11u) || (v11 = v10[8]) == 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      return 0;
    }

    goto LABEL_25;
  }

  result = 0;
  if ((*(v9 + v11) & 4) == 0 && (v3 & 0x10000) == 0)
  {
LABEL_25:
    if ((v3 & 0x4000000) == 0)
    {
      v13 = v2[23];
      return !v13 || v1[v13] == 32;
    }

    return 0;
  }

  return result;
}

BOOL sub_F72050(void **a1, int **a2)
{
  **a1 |= sub_F705AC(a2, 1, 1);
  v3 = sub_314B90(a2);
  v4 = sub_314A00(a2 + 5);
  if (v3 == v4 || !sub_7E7E4(3u))
  {
    return v3 == v4;
  }

  sub_19594F8(&v16);
  v5 = sub_4A5C(&v16, "PathLeg inconsistency found on junction level, ", 47);
  v6 = sub_314B90(a2);
  v7 = sub_2FF718(v5, __ROR8__(v6, 32));
  v8 = sub_4A5C(v7, " != ", 4);
  v9 = sub_314A00(a2 + 5);
  sub_2FF718(v8, __ROR8__(v9, 32));
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v10 >= 0x17)
    {
      operator new();
    }

    v15 = v10;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_14;
  }

  if ((v26 & 8) != 0)
  {
    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v10 = 0;
  v15 = 0;
LABEL_14:
  *(&__p + v10) = 0;
  sub_7E854(&__p, 3u);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  std::ios::~ios();
  return v3 == v4;
}

void sub_F72330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_F7237C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (((((*(a2 + 72) >> 16) & 0xFFFF0000 | (*(a2 + 72) << 32) | (2 * ((*(a2 + 72) & 0xFF000000000000) == 0))) + 4 * *(a2 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(a2 + 84) >> 1) & 1) != ((((*(a3 + 32) >> 16) & 0xFFFF0000 | (*(a3 + 32) << 32) | (2 * ((*(a3 + 32) & 0xFF000000000000) == 0))) + 4 * *(a3 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(a3 + 84) & 1))
  {
    v4 = result;
    result = sub_7E7E4(3u);
    if (!result)
    {
LABEL_19:
      **v4 = 0;
      return result;
    }

    sub_19594F8(&v15);
    v6 = sub_4A5C(&v15, "PathLeg inconsistency found, head and subsequent tail node id do not match: ", 76);
    v7 = sub_421CD4(v6, (((*(a2 + 72) >> 16) & 0xFFFF0000 | (*(a2 + 72) << 32) | (2 * ((*(a2 + 72) & 0xFF000000000000) == 0))) + 4 * *(a2 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(a2 + 84) >> 1) & 1);
    v8 = sub_4A5C(v7, " != ", 4);
    v9 = sub_421CD4(v8, (((*(a3 + 32) >> 16) & 0xFFFF0000 | (*(a3 + 32) << 32) | (2 * ((*(a3 + 32) & 0xFF000000000000) == 0))) + 4 * *(a3 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(a3 + 84) & 1);
    sub_4A5C(v9, ".", 1);
    if ((v25 & 0x10) != 0)
    {
      v11 = v24;
      if (v24 < v21)
      {
        v24 = v21;
        v11 = v21;
      }

      v12 = v20;
      v10 = v11 - v20;
      if (v11 - v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v25 & 8) == 0)
      {
        v10 = 0;
        v14 = 0;
LABEL_14:
        *(&__p + v10) = 0;
        sub_7E854(&__p, 3u);
        if (v14 < 0)
        {
          operator delete(__p);
        }

        if (v23 < 0)
        {
          operator delete(v22);
        }

        std::locale::~locale(&v17);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_19;
      }

      v12 = v18;
      v10 = v19 - v18;
      if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v14 = v10;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_14;
  }

  return result;
}

void sub_F726C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_F7270C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (((((*(a2 + 72) >> 16) & 0xFFFF0000 | (*(a2 + 72) << 32) | (2 * ((*(a2 + 72) & 0xFF000000000000) == 0))) + 4 * *(a2 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(a2 + 88) >> 1) & 1) != ((((*(a3 + 32) >> 16) & 0xFFFF0000 | (*(a3 + 32) << 32) | (2 * ((*(a3 + 32) & 0xFF000000000000) == 0))) + 4 * *(a3 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(a3 + 88) & 1))
  {
    v4 = result;
    result = sub_7E7E4(3u);
    if (!result)
    {
LABEL_19:
      **v4 = 0;
      return result;
    }

    sub_19594F8(&v15);
    v6 = sub_4A5C(&v15, "PathLeg inconsistency found, head and subsequent tail node id do not match: ", 76);
    v7 = sub_421CD4(v6, (((*(a2 + 72) >> 16) & 0xFFFF0000 | (*(a2 + 72) << 32) | (2 * ((*(a2 + 72) & 0xFF000000000000) == 0))) + 4 * *(a2 + 82)) & 0xFFFFFFFFFFFFFFFELL | (*(a2 + 88) >> 1) & 1);
    v8 = sub_4A5C(v7, " != ", 4);
    v9 = sub_421CD4(v8, (((*(a3 + 32) >> 16) & 0xFFFF0000 | (*(a3 + 32) << 32) | (2 * ((*(a3 + 32) & 0xFF000000000000) == 0))) + 4 * *(a3 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(a3 + 88) & 1);
    sub_4A5C(v9, ".", 1);
    if ((v25 & 0x10) != 0)
    {
      v11 = v24;
      if (v24 < v21)
      {
        v24 = v21;
        v11 = v21;
      }

      v12 = v20;
      v10 = v11 - v20;
      if (v11 - v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v25 & 8) == 0)
      {
        v10 = 0;
        v14 = 0;
LABEL_14:
        *(&__p + v10) = 0;
        sub_7E854(&__p, 3u);
        if (v14 < 0)
        {
          operator delete(__p);
        }

        if (v23 < 0)
        {
          operator delete(v22);
        }

        std::locale::~locale(&v17);
        std::ostream::~ostream();
        result = std::ios::~ios();
        goto LABEL_19;
      }

      v12 = v18;
      v10 = v19 - v18;
      if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v14 = v10;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_14;
  }

  return result;
}

void sub_F72A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t *sub_F72A9C(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v7 = *v2;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *v2) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = result;
    v13 = 8 * ((v3 - *v2) >> 3);
    v14 = a2[1];
    *v13 = *a2;
    *(v13 + 16) = v14;
    *(v13 + 32) = *(a2 + 4);
    v15 = 40 * v8 + 40;
    v16 = 40 * v8 - (v3 - v7);
    memcpy((v13 - (v3 - v7)), v7, v3 - v7);
    *v2 = v16;
    *(v2 + 8) = v15;
    *(v2 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }

    result = v12;
    *(v2 + 8) = v15;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    *(v2 + 8) = v3 + 40;
  }

  return result;
}

uint64_t sub_F72BF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a2 + 72);
  v6 = HIDWORD(v5) & 0x40000000;
  if (v5 < 0 && v6 == 0)
  {
    v8 = 0x40000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a3 + 32);
  if ((v9 & 0x4000000000000000) == 0 && v9 < 0)
  {
    v11 = 0x40000000;
  }

  else
  {
    v11 = 0;
  }

  if (v5 != v9 || ((*(a2 + 80) >> 26) & 0x80000000 | HIDWORD(v5) & 0xFFFFFFF | (v5 >> 33) & 0x10000000 | (v6 >> 1) | v8) != ((*(a3 + 80) >> 25) & 0x80000000 | HIDWORD(v9) & 0xFFFFFFF | (v9 >> 33) & 0x10000000 | ((HIDWORD(v9) & 0x40000000u) >> 1) | v11))
  {
    result = sub_7E7E4(3u);
    if (!result)
    {
LABEL_44:
      **v4 = 0;
      return result;
    }

    sub_19594F8(&v30);
    v13 = sub_4A5C(&v30, "PathLeg inconsistency found, head and subsequent tail node id do not match: ", 76);
    v14 = *(a2 + 72);
    v15 = HIDWORD(v14) & 0x40000000;
    if (v14 < 0 && v15 == 0)
    {
      v17 = 0x40000000;
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_444030(v13, *(a2 + 72) | (((*(a2 + 80) >> 26) & 0x80000000 | HIDWORD(v14) & 0xFFFFFFF | (v14 >> 33) & 0x10000000 | (v15 >> 1) | v17) << 32));
    v19 = sub_4A5C(v18, " != ", 4);
    v20 = *(a3 + 32);
    v21 = HIDWORD(v20) & 0x40000000;
    if (v20 < 0 && v21 == 0)
    {
      v23 = 0x40000000;
    }

    else
    {
      v23 = 0;
    }

    v24 = sub_444030(v19, *(a3 + 32) | (((*(a3 + 80) >> 25) & 0x80000000 | HIDWORD(v20) & 0xFFFFFFF | (v20 >> 33) & 0x10000000 | (v21 >> 1) | v23) << 32));
    sub_4A5C(v24, ".", 1);
    if ((v40 & 0x10) != 0)
    {
      v26 = v39;
      if (v39 < v36)
      {
        v39 = v36;
        v26 = v36;
      }

      v27 = v35;
      v25 = v26 - v35;
      if (v26 - v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if ((v40 & 8) == 0)
      {
        v25 = 0;
        v29 = 0;
LABEL_39:
        *(&__p + v25) = 0;
        sub_7E854(&__p, 3u);
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
        result = std::ios::~ios();
        goto LABEL_44;
      }

      v27 = v33;
      v25 = v34 - v33;
      if ((v34 - v33) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_46:
        sub_3244();
      }
    }

    if (v25 >= 0x17)
    {
      operator new();
    }

    v29 = v25;
    if (v25)
    {
      memmove(&__p, v27, v25);
    }

    goto LABEL_39;
  }

  return result;
}

void sub_F72FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_F7300C()
{
  byte_27BF967 = 3;
  LODWORD(qword_27BF950) = 5136193;
  byte_27BF97F = 3;
  LODWORD(qword_27BF968) = 5136194;
  byte_27BF997 = 3;
  LODWORD(qword_27BF980) = 5136195;
  byte_27BF9AF = 15;
  strcpy(&qword_27BF998, "vehicle_mass_kg");
  byte_27BF9C7 = 21;
  strcpy(&xmmword_27BF9B0, "vehicle_cargo_mass_kg");
  byte_27BF9DF = 19;
  strcpy(&qword_27BF9C8, "vehicle_aux_power_w");
  byte_27BF9F7 = 15;
  strcpy(&qword_27BF9E0, "dcdc_efficiency");
  strcpy(&qword_27BF9F8, "drive_train_efficiency");
  HIBYTE(word_27BFA0E) = 22;
  operator new();
}

void sub_F731E8(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27BFA0E) < 0)
  {
    sub_21E5728();
  }

  sub_21E5734();
  _Unwind_Resume(a1);
}

void *sub_F73208(void *a1, int a2)
{
  switch(a2)
  {
    case 0:
      v3 = "SOFT_CLOSURES";
      goto LABEL_15;
    case 1:
      v3 = "HARD_CLOSURES";
      goto LABEL_15;
    case 2:
      v3 = "AREA_INCIDENTS";
      v4 = 14;
      goto LABEL_27;
    case 3:
      v3 = "TIME_BASED_RESTRICTIONS";
      goto LABEL_22;
    case 4:
      v3 = "REGULAR_TOLLS";
LABEL_15:
      v4 = 13;
      goto LABEL_27;
    case 5:
      v3 = "HIGHWAYS";
      goto LABEL_25;
    case 6:
      v3 = "FERRIES";
      v4 = 7;
      goto LABEL_27;
    case 7:
      v3 = "FORDS";
      v4 = 5;
      goto LABEL_27;
    case 8:
      v3 = "BARRIERS";
LABEL_25:
      v4 = 8;
      goto LABEL_27;
    case 9:
      v3 = "TOLL_CONGESTION_ZONES";
      v4 = 21;
      goto LABEL_27;
    case 10:
      v3 = "ENVIRONMENTAL_CONGESTION_ZONES";
      v4 = 30;
      goto LABEL_27;
    case 11:
      v3 = "RESTRICTED_ZONE_VIOLATIONS";
      goto LABEL_6;
    case 12:
      v3 = "DANGEROUS_SEQUENCES";
      v4 = 19;
      goto LABEL_27;
    case 13:
      v3 = "DANGEROUS_TURNS";
      v4 = 15;
      goto LABEL_27;
    case 14:
      v3 = "LEG_ORIGIN_CLIPPED";
      v4 = 18;
      goto LABEL_27;
    case 15:
      v3 = "LEG_DESTINATION_CLIPPED";
      goto LABEL_22;
    case 16:
      v3 = "LEG_WALKING_PREFIX_CLIPPED";
LABEL_6:
      v4 = 26;
      goto LABEL_27;
    case 17:
      v3 = "LEG_STARTS_WITH_U_TURN_MANEUVER";
      v4 = 31;
      goto LABEL_27;
    case 18:
      v3 = "LEG_ORIGIN_WAYPOINT_GAP";
LABEL_22:
      v4 = 23;
      goto LABEL_27;
    case 19:
      v3 = "BIASED_TO_USER_ROUTE";
      v4 = 20;
      goto LABEL_27;
    case 20:
      v3 = "BIASED_TO_FAMILIAR_ROUTE";
      v4 = 24;
LABEL_27:
      sub_4A5C(a1, v3, v4);
      break;
    default:
      return a1;
  }

  return a1;
}

unint64_t sub_F73420(uint64_t *a1, __int128 *a2, int a3)
{
  result = sub_F69D6C(a2);
  if (result)
  {
    return result;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v11 = a1[1];
      v9 = (a1 + 1);
      v8 = v11;
LABEL_19:
      if (v8 >= a1[2])
      {
        result = sub_F749F0(a1, a2);
        *v9 = result;
      }

      else
      {
        result = sub_49D2CC(v8, a2);
        *v9 = v8 + 552;
        *v9 = v8 + 552;
      }

      return result;
    }

    v7 = *a1;
    v9 = (a1 + 1);
    v8 = a1[1];
    if (*a1 == v8)
    {
      goto LABEL_19;
    }

    while (1)
    {
      result = sub_F6BA98(v7, a2);
      if (result)
      {
        break;
      }

      v7 += 69;
      if (v7 == v8)
      {
LABEL_11:
        v7 = v8;
        break;
      }
    }
  }

  else
  {
    v7 = *a1;
    v8 = a1[1];
    if (*a1 != v8)
    {
      while (1)
      {
        result = sub_117D6DC(a2, v7);
        if (result)
        {
          break;
        }

        v7 += 69;
        if (v7 == v8)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v9 = (a1 + 1);
  v8 = a1[1];
  if (v7 == v8)
  {
    goto LABEL_19;
  }

  if (a3 == 3)
  {
    v10 = sub_F69D2C(a2);
    result = sub_F69D2C(v7);
    if (v10 < result)
    {

      return sub_DF4D5C(v7, a2);
    }
  }

  return result;
}

unint64_t sub_F735B8(unint64_t result, __int128 **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    do
    {
      result = sub_F73420(v6, v3, a3);
      v3 = (v3 + 552);
    }

    while (v3 != v4);
  }

  return result;
}

unint64_t sub_F7360C(uint64_t a1, __int128 *a2, int a3)
{
  result = sub_F69D6C(a2);
  if (result)
  {
    return result;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v11 = *(a1 + 8);
      v9 = (a1 + 8);
      v8 = v11;
LABEL_19:
      if (v8 >= *(a1 + 16))
      {
        result = sub_D1D838(a1, a2);
        *v9 = result;
      }

      else
      {
        result = sub_49EA74(v8, a2);
        *v9 = v8 + 552;
        *v9 = v8 + 552;
      }

      return result;
    }

    v7 = *a1;
    v9 = (a1 + 8);
    v8 = *(a1 + 8);
    if (*a1 == v8)
    {
      goto LABEL_19;
    }

    while (1)
    {
      result = sub_F6E668(v7, a2);
      if (result)
      {
        break;
      }

      v7 += 69;
      if (v7 == v8)
      {
LABEL_11:
        v7 = v8;
        break;
      }
    }
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    if (*a1 != v8)
    {
      while (1)
      {
        result = sub_117DC2C(a2, v7);
        if (result)
        {
          break;
        }

        v7 += 69;
        if (v7 == v8)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v9 = (a1 + 8);
  v8 = *(a1 + 8);
  if (v7 == v8)
  {
    goto LABEL_19;
  }

  if (a3 == 3)
  {
    v10 = sub_F6D024(a2);
    result = sub_F6D024(v7);
    if (v10 < result)
    {

      return sub_49C304(v7, a2);
    }
  }

  return result;
}

unint64_t sub_F73788(unint64_t result, __int128 **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    do
    {
      result = sub_F7360C(v6, v3, a3);
      v3 = (v3 + 552);
    }

    while (v3 != v4);
  }

  return result;
}

unint64_t sub_F737DC(char **a1, __int128 *a2, int a3)
{
  result = sub_F6FDC8(a2);
  if (result)
  {
    return result;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v11 = a1[1];
      v9 = (a1 + 1);
      v8 = v11;
LABEL_19:
      if (v8 >= a1[2])
      {
        result = sub_D1DBCC(a1, a2);
        *v9 = result;
      }

      else
      {
        result = sub_49F780(v8, a2);
        *v9 = v8 + 552;
        *v9 = v8 + 552;
      }

      return result;
    }

    v7 = *a1;
    v9 = (a1 + 1);
    v8 = a1[1];
    if (*a1 == v8)
    {
      goto LABEL_19;
    }

    while (1)
    {
      result = sub_F711D0(v7, a2);
      if (result)
      {
        break;
      }

      v7 += 552;
      if (v7 == v8)
      {
LABEL_11:
        v7 = v8;
        break;
      }
    }
  }

  else
  {
    v7 = *a1;
    v8 = a1[1];
    if (*a1 != v8)
    {
      while (1)
      {
        result = sub_117E17C(a2, v7);
        if (result)
        {
          break;
        }

        v7 += 552;
        if (v7 == v8)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v9 = (a1 + 1);
  v8 = a1[1];
  if (v7 == v8)
  {
    goto LABEL_19;
  }

  if (a3 == 3)
  {
    v10 = sub_F6FD88(a2);
    result = sub_F6FD88(v7);
    if (v10 < result)
    {

      return sub_49C304(v7, a2);
    }
  }

  return result;
}

unint64_t sub_F73958(unint64_t result, __int128 **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    do
    {
      result = sub_F737DC(v6, v3, a3);
      v3 = (v3 + 552);
    }

    while (v3 != v4);
  }

  return result;
}

void sub_F739AC(uint64_t *a1, uint64_t a2, int a3)
{
  if (sub_F63D58(a2))
  {
    return;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v13 = a1[1];
      v8 = a1 + 1;
      v7 = v13;
LABEL_21:
      if (v7 >= a1[2])
      {
        *v8 = sub_F74E1C(a1, a2);
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        sub_49D1B0(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
        if (*(a2 + 47) < 0)
        {
          sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v14 = *(a2 + 24);
          *(v7 + 40) = *(a2 + 40);
          *(v7 + 24) = v14;
        }

        *v8 = v7 + 48;
        *v8 = v7 + 48;
      }

      return;
    }

    v6 = *a1;
    v8 = a1 + 1;
    v7 = a1[1];
    if (*a1 == v7)
    {
      goto LABEL_21;
    }

    while (!sub_F654A4(v6, a2))
    {
      v6 += 48;
      if (v6 == v7)
      {
LABEL_11:
        v6 = v7;
        break;
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 != v7)
    {
      while (!sub_117E644(a2, v6))
      {
        v6 += 48;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v8 = a1 + 1;
  v7 = a1[1];
  if (v6 == v7)
  {
    goto LABEL_21;
  }

  if (a3 == 3)
  {
    v9 = sub_F65630(a2);
    v10 = sub_F65630(v6);
    if (v6 != a2 && v9 < v10)
    {
      sub_DF4ABC(v6, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
      v11 = *(a2 + 47);
      if (*(v6 + 47) < 0)
      {
        if (v11 >= 0)
        {
          v15 = (a2 + 24);
        }

        else
        {
          v15 = *(a2 + 24);
        }

        if (v11 >= 0)
        {
          v16 = *(a2 + 47);
        }

        else
        {
          v16 = *(a2 + 32);
        }

        sub_13B38(v6 + 24, v15, v16);
      }

      else if ((*(a2 + 47) & 0x80) != 0)
      {
        v17 = *(a2 + 24);
        v18 = *(a2 + 32);

        sub_13A68((v6 + 24), v17, v18);
      }

      else
      {
        v12 = *(a2 + 24);
        *(v6 + 40) = *(a2 + 40);
        *(v6 + 24) = v12;
      }
    }
  }
}

void sub_F73C10(_Unwind_Exception *a1)
{
  sub_487EC4(v1);
  *v2 = v1;
  _Unwind_Resume(a1);
}

void sub_F73C30(uint64_t *a1, uint64_t a2, int a3)
{
  if (sub_F63D58(a2))
  {
    return;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v14 = a1[1];
      v8 = a1 + 1;
      v7 = v14;
LABEL_25:
      if (v7 >= a1[2])
      {
        *v8 = sub_F75028(a1, a2);
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        sub_49D1B0(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
        if (*(a2 + 47) < 0)
        {
          sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v15 = *(a2 + 24);
          *(v7 + 40) = *(a2 + 40);
          *(v7 + 24) = v15;
        }

        *v8 = v7 + 48;
        *v8 = v7 + 48;
      }

      return;
    }

    v6 = *a1;
    v8 = a1 + 1;
    v7 = a1[1];
    if (*a1 == v7)
    {
      goto LABEL_25;
    }

    while (!sub_F654A4(v6, a2))
    {
      v6 += 48;
      if (v6 == v7)
      {
LABEL_11:
        v6 = v7;
        break;
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 != v7)
    {
      while (!sub_117E644(a2, v6))
      {
        v6 += 48;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v8 = a1 + 1;
  v7 = a1[1];
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  if (a3 == 3)
  {
    v9 = sub_F65630(a2);
    if (v9 < sub_F65630(v6))
    {
      v10 = *v6;
      if (*v6)
      {
        v11 = *(v6 + 8);
        v12 = *v6;
        if (v11 != v10)
        {
          do
          {
            v11 = sub_4547F0(v11 - 552);
          }

          while (v11 != v10);
          v12 = *v6;
        }

        *(v6 + 8) = v10;
        operator delete(v12);
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
      }

      *v6 = *a2;
      *(v6 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      if (*(v6 + 47) < 0)
      {
        operator delete(*(v6 + 24));
      }

      v13 = *(a2 + 24);
      *(v6 + 40) = *(a2 + 40);
      *(v6 + 24) = v13;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
    }
  }
}

void sub_F73E58(_Unwind_Exception *a1)
{
  sub_487EC4(v1);
  *v2 = v1;
  _Unwind_Resume(a1);
}

void **sub_F73E94(uint64_t a1, void **a2, void **a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 == v6)
    {
      if (v6 != a2)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    do
    {
      v9 = *v7;
      if (*v7)
      {
        v10 = v7[1];
        v11 = *v7;
        if (v10 != v9)
        {
          do
          {
            v10 = sub_4547F0(v10 - 552);
          }

          while (v10 != v9);
          v11 = *v7;
        }

        v7[1] = v9;
        operator delete(v11);
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
      }

      *v7 = *v4;
      v7[2] = v4[2];
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      if (*(v7 + 47) < 0)
      {
        operator delete(v7[3]);
      }

      v8 = *(v4 + 3);
      v7[5] = v4[5];
      *(v7 + 3) = v8;
      *(v4 + 47) = 0;
      *(v4 + 24) = 0;
      v4 += 6;
      v7 += 6;
    }

    while (v4 != v6);
    v6 = *(a1 + 8);
    if (v6 == v7)
    {
LABEL_14:
      *(a1 + 8) = v7;
      return a2;
    }

    while (1)
    {
LABEL_18:
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
        v13 = v6 - 6;
        v14 = *(v6 - 6);
        if (v14)
        {
LABEL_22:
          v15 = *(v6 - 5);
          v16 = v14;
          if (v15 != v14)
          {
            do
            {
              v15 = sub_4547F0(v15 - 552);
            }

            while (v15 != v14);
            v16 = *v13;
          }

          *(v6 - 5) = v14;
          operator delete(v16);
        }
      }

      else
      {
        v13 = v6 - 6;
        v14 = *(v6 - 6);
        if (v14)
        {
          goto LABEL_22;
        }
      }

      v6 = v13;
      if (v13 == v7)
      {
        goto LABEL_14;
      }
    }
  }

  return a2;
}

void sub_F74004(uint64_t *a1, uint64_t a2, int a3)
{
  if (sub_F63D58(a2))
  {
    return;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v13 = a1[1];
      v8 = a1 + 1;
      v7 = v13;
LABEL_21:
      if (v7 >= a1[2])
      {
        *v8 = sub_F75234(a1, a2);
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        sub_49E958(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
        if (*(a2 + 47) < 0)
        {
          sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v14 = *(a2 + 24);
          *(v7 + 40) = *(a2 + 40);
          *(v7 + 24) = v14;
        }

        *v8 = v7 + 48;
        *v8 = v7 + 48;
      }

      return;
    }

    v6 = *a1;
    v8 = a1 + 1;
    v7 = a1[1];
    if (*a1 == v7)
    {
      goto LABEL_21;
    }

    while (!sub_F63CCC(v6, a2))
    {
      v6 += 48;
      if (v6 == v7)
      {
LABEL_11:
        v6 = v7;
        break;
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 != v7)
    {
      while (!sub_117E6F8(a2, v6))
      {
        v6 += 48;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v8 = a1 + 1;
  v7 = a1[1];
  if (v6 == v7)
  {
    goto LABEL_21;
  }

  if (a3 == 3)
  {
    v9 = sub_F64018(a2);
    v10 = sub_F64018(v6);
    if (v6 != a2 && v9 < v10)
    {
      sub_DF7B18(v6, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
      v11 = *(a2 + 47);
      if (*(v6 + 47) < 0)
      {
        if (v11 >= 0)
        {
          v15 = (a2 + 24);
        }

        else
        {
          v15 = *(a2 + 24);
        }

        if (v11 >= 0)
        {
          v16 = *(a2 + 47);
        }

        else
        {
          v16 = *(a2 + 32);
        }

        sub_13B38(v6 + 24, v15, v16);
      }

      else if ((*(a2 + 47) & 0x80) != 0)
      {
        v17 = *(a2 + 24);
        v18 = *(a2 + 32);

        sub_13A68((v6 + 24), v17, v18);
      }

      else
      {
        v12 = *(a2 + 24);
        *(v6 + 40) = *(a2 + 40);
        *(v6 + 24) = v12;
      }
    }
  }
}

void sub_F74268(_Unwind_Exception *a1)
{
  sub_487EC4(v1);
  *v2 = v1;
  _Unwind_Resume(a1);
}

void sub_F74288(uint64_t *a1, uint64_t a2, int a3)
{
  if (sub_F63D58(a2))
  {
    return;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v14 = a1[1];
      v8 = a1 + 1;
      v7 = v14;
LABEL_25:
      if (v7 >= a1[2])
      {
        *v8 = sub_F75440(a1, a2);
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        sub_49E958(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
        if (*(a2 + 47) < 0)
        {
          sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v15 = *(a2 + 24);
          *(v7 + 40) = *(a2 + 40);
          *(v7 + 24) = v15;
        }

        *v8 = v7 + 48;
        *v8 = v7 + 48;
      }

      return;
    }

    v6 = *a1;
    v8 = a1 + 1;
    v7 = a1[1];
    if (*a1 == v7)
    {
      goto LABEL_25;
    }

    while (!sub_F63CCC(v6, a2))
    {
      v6 += 48;
      if (v6 == v7)
      {
LABEL_11:
        v6 = v7;
        break;
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 != v7)
    {
      while (!sub_117E6F8(a2, v6))
      {
        v6 += 48;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v8 = a1 + 1;
  v7 = a1[1];
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  if (a3 == 3)
  {
    v9 = sub_F64018(a2);
    if (v9 < sub_F64018(v6))
    {
      v10 = *v6;
      if (*v6)
      {
        v11 = *(v6 + 8);
        v12 = *v6;
        if (v11 != v10)
        {
          do
          {
            v11 = sub_4547F0(v11 - 552);
          }

          while (v11 != v10);
          v12 = *v6;
        }

        *(v6 + 8) = v10;
        operator delete(v12);
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
      }

      *v6 = *a2;
      *(v6 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      if (*(v6 + 47) < 0)
      {
        operator delete(*(v6 + 24));
      }

      v13 = *(a2 + 24);
      *(v6 + 40) = *(a2 + 40);
      *(v6 + 24) = v13;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
    }
  }
}

void sub_F744B0(_Unwind_Exception *a1)
{
  sub_487EC4(v1);
  *v2 = v1;
  _Unwind_Resume(a1);
}

void sub_F744D0(uint64_t *a1, uint64_t a2, int a3)
{
  if (sub_F64B34(a2))
  {
    return;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v13 = a1[1];
      v8 = a1 + 1;
      v7 = v13;
LABEL_21:
      if (v7 >= a1[2])
      {
        *v8 = sub_F7564C(a1, a2);
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        sub_49F664(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
        if (*(a2 + 47) < 0)
        {
          sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v14 = *(a2 + 24);
          *(v7 + 40) = *(a2 + 40);
          *(v7 + 24) = v14;
        }

        *v8 = v7 + 48;
        *v8 = v7 + 48;
      }

      return;
    }

    v6 = *a1;
    v8 = a1 + 1;
    v7 = a1[1];
    if (*a1 == v7)
    {
      goto LABEL_21;
    }

    while (!sub_F64AA8(v6, a2))
    {
      v6 += 48;
      if (v6 == v7)
      {
LABEL_11:
        v6 = v7;
        break;
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 != v7)
    {
      while (!sub_117E7AC(a2, v6))
      {
        v6 += 48;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v8 = a1 + 1;
  v7 = a1[1];
  if (v6 == v7)
  {
    goto LABEL_21;
  }

  if (a3 == 3)
  {
    v9 = sub_F64C84(a2);
    v10 = sub_F64C84(v6);
    if (v6 != a2 && v9 < v10)
    {
      sub_DFA7E4(v6, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
      v11 = *(a2 + 47);
      if (*(v6 + 47) < 0)
      {
        if (v11 >= 0)
        {
          v15 = (a2 + 24);
        }

        else
        {
          v15 = *(a2 + 24);
        }

        if (v11 >= 0)
        {
          v16 = *(a2 + 47);
        }

        else
        {
          v16 = *(a2 + 32);
        }

        sub_13B38(v6 + 24, v15, v16);
      }

      else if ((*(a2 + 47) & 0x80) != 0)
      {
        v17 = *(a2 + 24);
        v18 = *(a2 + 32);

        sub_13A68((v6 + 24), v17, v18);
      }

      else
      {
        v12 = *(a2 + 24);
        *(v6 + 40) = *(a2 + 40);
        *(v6 + 24) = v12;
      }
    }
  }
}

void sub_F74734(_Unwind_Exception *a1)
{
  sub_487EC4(v1);
  *v2 = v1;
  _Unwind_Resume(a1);
}

void sub_F74754(uint64_t *a1, uint64_t a2, int a3)
{
  if (sub_F64B34(a2))
  {
    return;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      v14 = a1[1];
      v8 = a1 + 1;
      v7 = v14;
LABEL_25:
      if (v7 >= a1[2])
      {
        *v8 = sub_F75858(a1, a2);
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        sub_49F664(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
        if (*(a2 + 47) < 0)
        {
          sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v15 = *(a2 + 24);
          *(v7 + 40) = *(a2 + 40);
          *(v7 + 24) = v15;
        }

        *v8 = v7 + 48;
        *v8 = v7 + 48;
      }

      return;
    }

    v6 = *a1;
    v8 = a1 + 1;
    v7 = a1[1];
    if (*a1 == v7)
    {
      goto LABEL_25;
    }

    while (!sub_F64AA8(v6, a2))
    {
      v6 += 48;
      if (v6 == v7)
      {
LABEL_11:
        v6 = v7;
        break;
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = a1[1];
    if (*a1 != v7)
    {
      while (!sub_117E7AC(a2, v6))
      {
        v6 += 48;
        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v8 = a1 + 1;
  v7 = a1[1];
  if (v6 == v7)
  {
    goto LABEL_25;
  }

  if (a3 == 3)
  {
    v9 = sub_F64C84(a2);
    if (v9 < sub_F64C84(v6))
    {
      v10 = *v6;
      if (*v6)
      {
        v11 = *(v6 + 8);
        v12 = *v6;
        if (v11 != v10)
        {
          do
          {
            v11 = sub_4547F0(v11 - 552);
          }

          while (v11 != v10);
          v12 = *v6;
        }

        *(v6 + 8) = v10;
        operator delete(v12);
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
      }

      *v6 = *a2;
      *(v6 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      if (*(v6 + 47) < 0)
      {
        operator delete(*(v6 + 24));
      }

      v13 = *(a2 + 24);
      *(v6 + 40) = *(a2 + 40);
      *(v6 + 24) = v13;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
    }
  }
}

void sub_F7497C(_Unwind_Exception *a1)
{
  sub_487EC4(v1);
  *v2 = v1;
  _Unwind_Resume(a1);
}

void sub_F7499C(uint64_t *a1, uint64_t *a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      sub_F74754(a1, v3, a3);
      v3 += 48;
    }

    while (v3 != v4);
  }
}

uint64_t sub_F749F0(uint64_t *a1, __int128 *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 552 * v2;
  v13 = 0;
  sub_49D2CC(552 * v2, a2);
  v12 = 552 * v2 + 552;
  sub_D05BD8(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 552;
    sub_4547F0(i - 552);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_F74B40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F74B54(uint64_t *a1, __int128 *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 552 * v2;
  v13 = 0;
  sub_49EA74(552 * v2, a2);
  v12 = 552 * v2 + 552;
  sub_D05BD8(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 552;
    sub_4547F0(i - 552);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_F74CA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F74CB8(uint64_t *a1, __int128 *a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v5 = 0x76B981DAE6076BLL;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 552 * v2;
  v13 = 0;
  sub_49F780(552 * v2, a2);
  v12 = 552 * v2 + 552;
  sub_D05BD8(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 552;
    sub_4547F0(i - 552);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_F74E08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F74E1C(uint64_t *a1, uint64_t a2)
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
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 48 * v2;
  __p = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  sub_49D1B0(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v7 + 24) = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
  }

  v18 += 48;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_20:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_20;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_F74FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_487EC4(v2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_F75014(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F75028(uint64_t *a1, uint64_t a2)
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
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 48 * v2;
  __p = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  sub_49D1B0(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v7 + 24) = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
  }

  v18 += 48;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_20:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_20;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_F75204(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_487EC4(v2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_F75220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F75234(uint64_t *a1, uint64_t a2)
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
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 48 * v2;
  __p = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  sub_49E958(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v7 + 24) = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
  }

  v18 += 48;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_20:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_20;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_F75410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_487EC4(v2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_F7542C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F75440(uint64_t *a1, uint64_t a2)
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
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 48 * v2;
  __p = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  sub_49E958(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v7 + 24) = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
  }

  v18 += 48;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_20:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_20;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_F7561C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_487EC4(v2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_F75638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F7564C(uint64_t *a1, uint64_t a2)
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
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 48 * v2;
  __p = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  sub_49F664(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v7 + 24) = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
  }

  v18 += 48;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_20:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_20;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_F75828(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_487EC4(v2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_F75844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F75858(uint64_t *a1, uint64_t a2)
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
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 48 * v2;
  __p = 0;
  v17 = v7;
  v18 = v7;
  v19 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  sub_49F664(v7, *a2, *(a2 + 8), 0xF128CFC4A33F128DLL * ((*(a2 + 8) - *a2) >> 3));
  if (*(a2 + 47) < 0)
  {
    sub_325C((v7 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *(v7 + 24) = *(a2 + 24);
    *(v7 + 40) = *(a2 + 40);
  }

  v18 += 48;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_20:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_20;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_F75A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_487EC4(v2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_F75A50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_F75A64()
{
  byte_27BFA6F = 3;
  LODWORD(qword_27BFA58) = 5136193;
  byte_27BFA87 = 3;
  LODWORD(qword_27BFA70) = 5136194;
  byte_27BFA9F = 3;
  LODWORD(qword_27BFA88) = 5136195;
  byte_27BFAB7 = 15;
  strcpy(&qword_27BFAA0, "vehicle_mass_kg");
  byte_27BFACF = 21;
  strcpy(&xmmword_27BFAB8, "vehicle_cargo_mass_kg");
  byte_27BFAE7 = 19;
  strcpy(&qword_27BFAD0, "vehicle_aux_power_w");
  byte_27BFAFF = 15;
  strcpy(&qword_27BFAE8, "dcdc_efficiency");
  strcpy(&qword_27BFB00, "drive_train_efficiency");
  HIBYTE(word_27BFB16) = 22;
  operator new();
}

void sub_F75C40(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27BFB16) < 0)
  {
    sub_21E5804();
  }

  sub_21E5810();
  _Unwind_Resume(a1);
}

void sub_F75C60(void *a1, uint64_t a2)
{
  v3 = a1[16];
  v4 = a1[17];
  if (v3 < v4)
  {
    *v3 = *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 64);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 64) = v7;
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    v8 = *(a2 + 80);
    v9 = *(a2 + 96);
    v10 = *(a2 + 128);
    *(v3 + 112) = *(a2 + 112);
    *(v3 + 128) = v10;
    *(v3 + 80) = v8;
    *(v3 + 96) = v9;
    v11 = *(a2 + 144);
    v12 = *(a2 + 160);
    v13 = *(a2 + 176);
    *(v3 + 192) = *(a2 + 192);
    *(v3 + 160) = v12;
    *(v3 + 176) = v13;
    *(v3 + 144) = v11;
    v14 = v3 + 200;
LABEL_3:
    a1[16] = v14;
    return;
  }

  v15 = a1[15];
  v16 = 0x8F5C28F5C28F5C29 * ((v3 - v15) >> 3) + 1;
  if (v16 > 0x147AE147AE147AELL)
  {
    sub_1794();
  }

  v17 = 0x8F5C28F5C28F5C29 * ((v4 - v15) >> 3);
  if (2 * v17 > v16)
  {
    v16 = 2 * v17;
  }

  if (v17 >= 0xA3D70A3D70A3D7)
  {
    v18 = 0x147AE147AE147AELL;
  }

  else
  {
    v18 = v16;
  }

  if (v18)
  {
    if (v18 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1808();
  }

  v19 = *(a2 + 176);
  v20 = 8 * ((v3 - v15) >> 3);
  *(v20 + 160) = *(a2 + 160);
  *(v20 + 176) = v19;
  *(v20 + 192) = *(a2 + 192);
  v21 = *(a2 + 112);
  *(v20 + 96) = *(a2 + 96);
  *(v20 + 112) = v21;
  v22 = *(a2 + 144);
  *(v20 + 128) = *(a2 + 128);
  *(v20 + 144) = v22;
  v23 = *(a2 + 48);
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = v23;
  v24 = *(a2 + 80);
  *(v20 + 64) = *(a2 + 64);
  *(v20 + 80) = v24;
  v25 = *(a2 + 16);
  v14 = v20 + 200;
  v26 = (v20 - (v3 - v15));
  *v20 = *a2;
  *(v20 + 16) = v25;
  memcpy(v26, v15, v3 - v15);
  a1[15] = v26;
  a1[16] = v14;
  a1[17] = 0;
  if (!v15)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  a1[16] = v14;
}

uint64_t sub_F75E5C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 128);
  *a2 = *(result + 120);
  a2[1] = v2;
  return result;
}

uint64_t sub_F75E68(uint64_t result)
{
  v1 = *(result + 120);
  v2 = *(result + 128);
  v3 = v1;
  v4 = v1;
  if (v2 - v1 >= 200)
  {
    if (v2 - v1 == 200)
    {
      v6 = *(result + 120);
    }

    else
    {
      v5 = 0x8F5C28F5C28F5C29 * ((v2 - v1) >> 3);
      v6 = *(result + 120);
      do
      {
        v7 = 200 * (v5 >> 2);
        _X15 = &v6[v7];
        __asm { PRFM            #0, [X15] }

        v13 = &v6[200 * (v5 >> 1)];
        _X14 = &v13[v7];
        __asm { PRFM            #0, [X14] }

        if (*v13 >= 2u)
        {
          v16 = 0;
        }

        else
        {
          v16 = v5 >> 1;
        }

        v6 += 200 * v16;
        v5 -= v5 >> 1;
      }

      while (v5 > 1);
    }

    v3 = &v6[200 * (*v6 < 2u)];
    v17 = v2 - v3;
    v4 = v3;
    _ZF = v2 - v3 == 200;
    if (v2 - v3 >= 200)
    {
      v19 = v3;
      if (!_ZF)
      {
        v20 = 0x8F5C28F5C28F5C29 * (v17 >> 3);
        v19 = v3;
        do
        {
          v21 = 200 * (v20 >> 2);
          _X15 = &v19[v21];
          __asm { PRFM            #0, [X15] }

          v24 = &v19[200 * (v20 >> 1)];
          _X14 = &v24[v21];
          __asm { PRFM            #0, [X14] }

          if (*v24 >= 3u)
          {
            v27 = 0;
          }

          else
          {
            v27 = v20 >> 1;
          }

          v19 += 200 * v27;
          v20 -= v20 >> 1;
        }

        while (v20 > 1);
      }

      v4 = &v19[200 * (*v19 < 3u)];
    }
  }

  *(result + 144) = -1030792151 * ((v3 - v1) >> 3);
  *(result + 148) = -1030792151 * ((v4 - v1) >> 3);
  return result;
}

BOOL sub_F75FAC(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 == -1)
  {
    return 0;
  }

  v2 = *(a1 + 148);
  return v2 != -1 && v1 <= v2 && 0x8F5C28F5C28F5C29 * ((*(a1 + 128) - *(a1 + 120)) >> 3) >= v2;
}

uint64_t sub_F75FFC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 120);
  v3 = v2 + 200 * *(result + 144);
  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_F76020@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 120);
  v3 = v2 + 200 * *(result + 144);
  v4 = v2 + 200 * *(result + 148);
  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t sub_F7603C(uint64_t a1)
{
  v1 = *(a1 + 144);
  LODWORD(v2) = *(a1 + 148);
  if (v1 <= v2)
  {
    v2 = v2;
  }

  else
  {
    v2 = v1;
  }

  return v1 | (v2 << 32);
}

uint64_t sub_F76050@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 128);
  *a2 = *(result + 120) + 200 * *(result + 148);
  a2[1] = v2;
  return result;
}

void *sub_F76068(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6)
{
  result = sub_F76178(a1, a2, a3, a5, a6);
  v9 = a1[15];
  if (0x8F5C28F5C28F5C29 * ((a1[16] - v9) >> 3) < a4 && 0x8F5C28F5C28F5C29 * ((a1[17] - v9) >> 3) < a4)
  {
    if (a4 < 0x147AE147AE147AFLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void *sub_F76178(void *result, unint64_t a2, unint64_t a3, int a4, int a5)
{
  v5 = a2 + 1;
  if (a5 && v5 > (result[1] - *result) >> 2 && v5 > (result[2] - *result) >> 2)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

    goto LABEL_24;
  }

  v6 = result[6];
  if (v5 > (result[7] - v6) >> 2 && v5 > (result[8] - v6) >> 2)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

LABEL_24:
    sub_1794();
  }

  if (a5)
  {
    v7 = result[3];
    if (0xCCCCCCCCCCCCCCCDLL * ((result[4] - v7) >> 4) < a3 && 0xCCCCCCCCCCCCCCCDLL * ((result[5] - v7) >> 4) < a3)
    {
      if (a3 <= 0x333333333333333)
      {
        operator new();
      }

      goto LABEL_25;
    }
  }

  v8 = result[9];
  if (0xCCCCCCCCCCCCCCCDLL * ((result[10] - v8) >> 4) < a3 && 0xCCCCCCCCCCCCCCCDLL * ((result[11] - v8) >> 4) < a3)
  {
    if (a3 <= 0x333333333333333)
    {
      operator new();
    }

LABEL_25:
    sub_1794();
  }

  if (a4 && a2 > (result[14] - result[12]) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void *sub_F764A8(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6)
{
  result = sub_F765B8(a1, a2, a3, a5, a6);
  v9 = a1[15];
  if (0x8F5C28F5C28F5C29 * ((a1[16] - v9) >> 3) < a4 && 0x8F5C28F5C28F5C29 * ((a1[17] - v9) >> 3) < a4)
  {
    if (a4 < 0x147AE147AE147AFLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void *sub_F765B8(void *result, unint64_t a2, unint64_t a3, int a4, int a5)
{
  v5 = a2 + 1;
  if (a5 && v5 > (result[1] - *result) >> 2 && v5 > (result[2] - *result) >> 2)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

    goto LABEL_24;
  }

  v6 = result[6];
  if (v5 > (result[7] - v6) >> 2 && v5 > (result[8] - v6) >> 2)
  {
    if (!(v5 >> 62))
    {
      operator new();
    }

LABEL_24:
    sub_1794();
  }

  if (a5)
  {
    v7 = result[3];
    if (0x6DB6DB6DB6DB6DB7 * ((result[4] - v7) >> 3) < a3 && 0x6DB6DB6DB6DB6DB7 * ((result[5] - v7) >> 3) < a3)
    {
      if (a3 <= 0x492492492492492)
      {
        operator new();
      }

      goto LABEL_25;
    }
  }

  v8 = result[9];
  if (0x6DB6DB6DB6DB6DB7 * ((result[10] - v8) >> 3) < a3 && 0x6DB6DB6DB6DB6DB7 * ((result[11] - v8) >> 3) < a3)
  {
    if (a3 <= 0x492492492492492)
    {
      operator new();
    }

LABEL_25:
    sub_1794();
  }

  if (a4 && 0xAAAAAAAAAAAAAAABLL * ((result[14] - result[12]) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_F76918()
{
  byte_27BFB77 = 3;
  LODWORD(qword_27BFB60) = 5136193;
  byte_27BFB8F = 3;
  LODWORD(qword_27BFB78) = 5136194;
  byte_27BFBA7 = 3;
  LODWORD(qword_27BFB90) = 5136195;
  byte_27BFBBF = 15;
  strcpy(&qword_27BFBA8, "vehicle_mass_kg");
  byte_27BFBD7 = 21;
  strcpy(&xmmword_27BFBC0, "vehicle_cargo_mass_kg");
  byte_27BFBEF = 19;
  strcpy(&qword_27BFBD8, "vehicle_aux_power_w");
  byte_27BFC07 = 15;
  strcpy(&qword_27BFBF0, "dcdc_efficiency");
  strcpy(&qword_27BFC08, "drive_train_efficiency");
  HIBYTE(word_27BFC1E) = 22;
  operator new();
}

void sub_F76AF4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27BFC1E) < 0)
  {
    sub_21E58E0();
  }

  sub_21E58EC();
  _Unwind_Resume(a1);
}

uint64_t sub_F76B14(uint64_t result, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  *(result + 16) = a5;
  *(result + 24) = a6;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_F76B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = a3;
  sub_F8D28C(a1 + 48, a3);
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_F76B90(uint64_t a1@<X0>, uint64_t a2@<X1>, int32x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  sub_F775BC(a1, a2);
  *(a1 + 128) = *(a1 + 120);
  v7 = ((v4[13] - v4[12]) >> 2);
  LODWORD(__t[0].__d_.__rep_) = -1;
  if (v7)
  {
    sub_569AC(a1 + 120, v7, __t);
  }

  v8 = sub_F99138(v4);
  if (((v4[13] - v4[12]) >> 2))
  {
    operator new();
  }

  v9 = v4[15];
  for (i = v4[16]; v9 != i; ++*(2 * v11))
  {
    v11 = *v9;
    v9 += 26;
  }

  v74 = (a1 + 120);
  v76 = a1;
  v77 = v4;
  v12 = v4[13] - v4[12];
  if ((v12 & 0x3FFFFFFFCLL) != 0)
  {
    v13 = 0;
    v14 = (v12 >> 2);
    v75 = 0;
    do
    {
      v15 = *(v4[21] + 4 * v13);
      if (*(2 * v13))
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16 && v15 + *(2 * v13) >= 3)
      {
        v18 = v75;
        v19 = v75 >> 2;
        if (((v75 >> 2) + 1) >> 62)
        {
          sub_1794();
        }

        if (v75 >> 2 != -1)
        {
          if (!(((v75 >> 2) + 1) >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        *(4 * v19) = v13;
        v75 = 4 * v19 + 4;
        memcpy(0, 0, v18);
        v4 = v77;
        *(*v74 + 4 * v13) = v8++;
      }

      ++v13;
    }

    while (v14 != v13);
  }

  else
  {
    v75 = 0;
  }

  sub_F7C094(a4, 0);
  *(a4 + 136) = 0;
  *(a4 + 120) = 0u;
  *(a4 + 144) = -1;
  v20 = sub_F99138(v4);
  v21 = 2 * v8;
  sub_F76068(a4, v8, v21, v20, 1, *(v76 + 32));
  if (*(v76 + 32) == 1)
  {
    v22 = *(v76 + 192);
    *(v76 + 200) = v22;
    if (v21 > (*(v76 + 208) - v22) >> 2)
    {
      operator new();
    }

    v23 = *(v76 + 216);
    *(v76 + 224) = v23;
    v4 = v77;
    if (0xCCCCCCCCCCCCCCCDLL * ((*(v76 + 232) - v23) >> 4) < v21)
    {
      operator new();
    }
  }

  v78 = a4;
  v25 = *(v76 + 168);
  v24 = *(v76 + 176);
  if (v25 != v24)
  {
    do
    {
      v26 = sub_F99124(v4, *v25);
      LOBYTE(__t[0].__d_.__rep_) = *v26;
      v27 = *(v26 + 4);
      if (v27 == -1)
      {
        v28 = 0;
      }

      else
      {
        v28 = sub_F98E1C(v4, v27);
      }

      __t[1].__d_.__rep_ = v28;
      v29 = *(v26 + 40);
      v30 = *(v26 + 56);
      v31 = *(v26 + 72);
      *&v87 = *(v26 + 88);
      v32 = *(v26 + 24);
      v82 = *(v26 + 8);
      v83 = v32;
      v85 = v30;
      v86 = v31;
      v84 = v29;
      v33 = *(v26 + 96);
      if (v33 == -1)
      {
        v34 = 0;
      }

      else
      {
        v34 = sub_F98E1C(v4, v33);
      }

      *(&v87 + 1) = v34;
      v35 = *(v26 + 120);
      v88 = *(v26 + 104);
      v89 = v35;
      v36 = *(v26 + 136);
      v37 = *(v26 + 152);
      v38 = *(v26 + 168);
      v93 = *(v26 + 184);
      v91 = v37;
      v92 = v38;
      v90 = v36;
      sub_F75C60(v78, __t);
      ++v25;
    }

    while (v25 != v24);
    v25 = *(v76 + 168);
    v24 = *(v76 + 176);
  }

  if (v25 != v24)
  {
    v39 = 0;
    do
    {
      v40 = *v25;
      v41 = sub_F99124(v4, *v25);
      v42 = v41[1];
      v43 = v41[24];
      v44 = v78[6];
      v45 = v78[7];
      v46 = v45 - v44;
      if (((v45 - v44) >> 2) - 1 <= v39)
      {
        v47 = v39 + 2;
        v48 = v78[1];
        v49 = (v48 - *v78) >> 2;
        if (v47 <= v49)
        {
          if (v47 < v49)
          {
            v78[1] = *v78 + 4 * v47;
          }
        }

        else
        {
          sub_569AC(v78, v47 - v49, (v48 - 4));
          v44 = v78[6];
          v45 = v78[7];
          v46 = v45 - v44;
        }

        v50 = v46 >> 2;
        if (v47 <= v50)
        {
          if (v47 < v50)
          {
            v78[7] = v44 + 4 * v47;
          }
        }

        else
        {
          sub_569AC((v78 + 6), v47 - v50, (v45 - 4));
        }
      }

      if (v42 == -1)
      {
        v51 = 0;
        if (v43 == -1)
        {
LABEL_55:
          v52 = 0;
          goto LABEL_56;
        }
      }

      else
      {
        v51 = sub_F98E1C(v77, v42);
        if (v43 == -1)
        {
          goto LABEL_55;
        }
      }

      v52 = sub_F98E1C(v77, v43);
LABEL_56:
      v53 = sub_5FC5C();
      sub_F8686C(&v79, v51, v52, v41, v53, *(v76 + 40));
      v4 = v77;
      v54 = v78[12];
      v55 = (v78[13] - v54) >> 3;
      if (v55 <= v39)
      {
        v56 = v39 + 1;
        __t[0].__d_.__rep_ = 0;
        if (v56 <= v55)
        {
          if (v56 < v55)
          {
            v78[13] = v54 + 8 * v56;
          }
        }

        else
        {
          sub_331250((v78 + 12), v56 - v55, __t);
          v54 = v78[12];
        }
      }

      *(v54 + 8 * v39) = v79;
      if (*sub_F99124(v77, v40) == 3)
      {
        sub_F77890(v76, v77, v40, v78);
      }

      else if (v43 != -1)
      {
        sub_F779E4(v76, v77, v43, v41[26], a3, v39, v78);
      }

      ++v39;
      ++v25;
    }

    while (v25 != v24);
  }

  if (v75)
  {
    for (j = 0; j != v75; ++j)
    {
      v58 = *j;
      v59 = *(*v74 + 4 * v58);
      v60 = v78[6];
      v61 = v78[7];
      v62 = v61 - v60;
      if (((v61 - v60) >> 2) - 1 <= v59)
      {
        v63 = (v59 + 2);
        v64 = v78[1];
        v65 = (v64 - *v78) >> 2;
        if (v63 <= v65)
        {
          if (v63 < v65)
          {
            v78[1] = *v78 + 4 * v63;
          }
        }

        else
        {
          sub_569AC(v78, v63 - v65, (v64 - 4));
          v60 = v78[6];
          v61 = v78[7];
          v62 = v61 - v60;
        }

        v66 = v62 >> 2;
        if (v63 <= v66)
        {
          if (v63 < v66)
          {
            v78[7] = v60 + 4 * v63;
          }
        }

        else
        {
          sub_569AC((v78 + 6), v63 - v66, (v61 - 4));
        }
      }

      v67 = sub_F98E1C(v77, v58);
      v68 = sub_5FC5C();
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v86 = 0u;
      v87 = 0u;
      *(&v84 + 1) = 1;
      v83 = 0u;
      *&__t[0].__d_.__rep_ = 0u;
      HIDWORD(__t[0].__d_.__rep_) = -1;
      v82 = 0uLL;
      *&v83 = 0;
      BYTE8(v83) = 0;
      *&v84 = 0x3FF0000000000000;
      v85 = 0uLL;
      *&v86 = 2359296000;
      *(&v86 + 7) = 0;
      LODWORD(v87) = -1;
      v88 = 0uLL;
      BYTE8(v89) = 0;
      *&v89 = 0;
      *&v90 = 0x3FF0000000000000;
      BYTE8(v90) = 1;
      v91 = 0uLL;
      LODWORD(v92) = -1935671296;
      *(&v92 + 7) = 0;
      DWORD1(v92) = 0;
      sub_F8686C(&v80, v67, v67, __t, v68, *(v76 + 40));
      v69 = v78[12];
      v70 = (v78[13] - v69) >> 3;
      if (v70 <= v59)
      {
        v71 = (v59 + 1);
        *&v79 = 0;
        if (v71 <= v70)
        {
          if (v71 < v70)
          {
            v78[13] = v69 + 8 * v71;
          }
        }

        else
        {
          sub_331250((v78 + 12), v71 - v70, &v79);
          v69 = v78[12];
        }
      }

      *(v69 + 8 * v59) = v80;
      sub_F779E4(v76, v77, v58, 0, a3, v59, v78);
    }
  }

  if (*(v76 + 33))
  {
    sub_F75E68(v78);
  }

  if (*(v76 + 32) == 1)
  {
    sub_F77CC8(v76, v78);
  }

  if (*(v76 + 34) == 1)
  {
    __t[0] = std::chrono::system_clock::now();
    std::chrono::system_clock::to_time_t(__t);
    *&v79 = *v76;
    DWORD2(v79) = *(v76 + 8);
    BYTE12(v79) = *(v76 + 12);
    if (*(v76 + 32) == 1)
    {
      v72 = *(v76 + 35);
    }

    else
    {
      v72 = 0;
    }

    BYTE13(v79) = v72 & 1;
    sub_F87220(__t, &v79, *(v76 + 40));
    sub_F8725C(__t, v77, a3, *(v76 + 24), v78);
  }

  sub_F81004(v78);
  sub_F81004((v78 + 6));
  sub_F810FC((v78 + 3));
  sub_F810FC((v78 + 9));
}

void sub_F77514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_3EE920(v17);
  if (v18)
  {
    operator delete(v18);
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_F775BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_F99138(a2);
  v6 = *(a1 + 168);
  v5 = *(a1 + 176);
  v7 = (v5 - v6) >> 1;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      v5 = (v6 + 2 * v4);
      *(a1 + 176) = v5;
    }
  }

  else
  {
    sub_F7C1D0(a1 + 168, v4 - v7);
    v6 = *(a1 + 168);
    v5 = *(a1 + 176);
  }

  if (v6 != v5)
  {
    v8 = v5 - v6 - 2;
    if (v8 < 6)
    {
      LODWORD(v9) = 0;
      v10 = v6;
      goto LABEL_20;
    }

    v11 = (v8 >> 1) + 1;
    if (v8 >= 0x1E)
    {
      v12 = v11 & 0xFFFFFFFFFFFFFFF0;
      v14 = xmmword_22AEA30;
      v15 = v6 + 1;
      v16.i64[0] = 0x8000800080008;
      v16.i64[1] = 0x8000800080008;
      v17.i64[0] = 0x10001000100010;
      v17.i64[1] = 0x10001000100010;
      v18 = v11 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v15[-1] = v14;
        *v15 = vaddq_s16(v14, v16);
        v14 = vaddq_s16(v14, v17);
        v15 += 2;
        v18 -= 16;
      }

      while (v18);
      if (v11 == v12)
      {
        goto LABEL_21;
      }

      if ((v11 & 0xC) == 0)
      {
        v10 = (v6 + 2 * v12);
        LODWORD(v9) = v11 & 0xFFFFFFF0;
        do
        {
LABEL_20:
          v10->i16[0] = v9;
          v10 = (v10 + 2);
          LODWORD(v9) = v9 + 1;
        }

        while (v10 != v5);
        goto LABEL_21;
      }

      v13 = v11 & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      LODWORD(v12) = 0;
      v13 = 0;
    }

    v9 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (v6 + 2 * (v11 & 0xFFFFFFFFFFFFFFFCLL));
    v19 = vadd_s16(vdup_n_s16(v12), 0x3000200010000);
    v20 = (v6 + 2 * v13);
    v21 = v13 - (v11 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v20++ = v19;
      v19 = vadd_s16(v19, 0x4000400040004);
      v21 += 4;
    }

    while (v21);
    if (v11 != v9)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v22 = sub_F99138(a2);
  v24 = *(a1 + 144);
  v23 = *(a1 + 152);
  v25 = (v23 - v24) >> 1;
  if (v22 <= v25)
  {
    if (v22 < v25)
    {
      v23 = (v24 + 2 * v22);
      *(a1 + 152) = v23;
    }
  }

  else
  {
    sub_F7C1D0(a1 + 144, v22 - v25);
    v24 = *(a1 + 144);
    v23 = *(a1 + 152);
  }

  if (v24 != v23)
  {
    v26 = v23 - v24 - 2;
    if (v26 < 6)
    {
      LODWORD(v27) = 0;
      v28 = v24;
      goto LABEL_40;
    }

    v29 = (v26 >> 1) + 1;
    if (v26 >= 0x1E)
    {
      v30 = v29 & 0xFFFFFFFFFFFFFFF0;
      v32 = xmmword_22AEA30;
      v33 = v24 + 1;
      v34.i64[0] = 0x8000800080008;
      v34.i64[1] = 0x8000800080008;
      v35.i64[0] = 0x10001000100010;
      v35.i64[1] = 0x10001000100010;
      v36 = v29 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v33[-1] = v32;
        *v33 = vaddq_s16(v32, v34);
        v32 = vaddq_s16(v32, v35);
        v33 += 2;
        v36 -= 16;
      }

      while (v36);
      if (v29 == v30)
      {
        goto LABEL_41;
      }

      if ((v29 & 0xC) == 0)
      {
        v28 = (v24 + 2 * v30);
        LODWORD(v27) = v29 & 0xFFFFFFF0;
        do
        {
LABEL_40:
          v28->i16[0] = v27;
          v28 = (v28 + 2);
          LODWORD(v27) = v27 + 1;
        }

        while (v28 != v23);
        goto LABEL_41;
      }

      v31 = v29 & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      LODWORD(v30) = 0;
      v31 = 0;
    }

    v27 = v29 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = (v24 + 2 * (v29 & 0xFFFFFFFFFFFFFFFCLL));
    v37 = vadd_s16(vdup_n_s16(v30), 0x3000200010000);
    v38 = (v24 + 2 * v31);
    v39 = v31 - (v29 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v38++ = v37;
      v37 = vadd_s16(v37, 0x4000400040004);
      v39 += 4;
    }

    while (v39);
    if (v29 != v27)
    {
      goto LABEL_40;
    }
  }

LABEL_41:
  if (*(a1 + 33) == 1)
  {
    v40 = *(a1 + 168);
    v41 = *(a1 + 176);
    v42 = 126 - 2 * __clz((v41 - v40) >> 1);
    v50 = a2;
    if (v41 == v40)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    sub_F81210(v40, v41, &v50, v43, 1);
    v44 = *(a1 + 144);
    v45 = *(a1 + 152);
    v46 = v45 - v44;
    if (v45 != v44)
    {
      v47 = 0;
      v48 = v46 >> 1;
      v49 = *(a1 + 168);
      do
      {
        *(v44 + 2 * *(v49 + 2 * v47)) = v47;
        ++v47;
      }

      while (v48 != v47);
    }
  }
}

void sub_F77890(uint64_t a1, void *a2, unsigned __int16 a3, void *a4)
{
  v6 = a3;
  v7 = sub_F99124(a2, a3);
  v8 = sub_F98E1C(a2, *(v7 + 4));
  v18 = v6;
  sub_F993B4(&v29);
  v10 = v29;
  for (i = v30; v10 != i; ++v10)
  {
    v11 = *v10;
    v12 = sub_F99124(a2, *v10);
    v13 = sub_F98E1C(a2, *(v12 + 96));
    sub_F85884(v28);
    sub_F85EB0(v28, v8, (v7 + 8), v13, (v12 + 104), a1 + 48);
    if (sub_F85894(v28))
    {
      v14 = *(a1 + 144);
      v15 = *(v14 + 2 * v18);
      LODWORD(v14) = *(v14 + 2 * v11);
      v21 = v28[0];
      v16 = *(v7 + 4);
      v17 = *(v12 + 96);
      v22 = v28[1];
      v23 = v28[2];
      v20 = v14;
      v24 = 0x7FFFFFFF;
      v25 = v16;
      v26 = v17;
      v27 = 0;
      sub_F78380(a4, v15, &v20);
    }
  }
}

unint64_t sub_F779E4(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, int32x2_t *a5, unsigned int a6, void *a7)
{
  sub_F85884(v42);
  v30 = a7;
  if (!sub_F75E1C(a7, a6) || (v14 = sub_F75E48(a7, a6), sub_F858F4(v42, v14, 0, a5, *(a1 + 16)), result = sub_F85894(v42), result))
  {
    v16 = a3;
    result = sub_F780D4(a1, a2, a3, a3, a4, a6, 0, a5, v42, a7);
    v17 = a2[12];
    if (a3 >= ((a2[13] - v17) >> 2))
    {
LABEL_24:
      exception = __cxa_allocate_exception(0x40uLL);
      v28 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }

    v18 = *(v17 + 4 * a3);
    if (v18 != -1)
    {
      v29 = 1000000000 - a4;
      v19 = a3;
      do
      {
        v20 = (a2[15] + 104 * v18);
        v39 = v42[0];
        v40 = v42[1];
        v41 = v42[2];
        sub_F85CFC(&v39, v20, v29, a5, *(a1 + 16), *(a1 + 12), *(a1 + 40));
        v21 = *v20;
        v22 = *(*(a1 + 120) + 4 * v21);
        if (sub_F85894(&v39))
        {
          while (v22 == -1)
          {
            sub_F780D4(a1, a2, v16, v21, 0, a6, v20, a5, &v39, v30);
            if (v21 == v19)
            {
              v22 = -1;
              LODWORD(v21) = v19;
              break;
            }

            v23 = a2[12];
            if (v21 >= (a2[13] - v23) >> 2)
            {
              goto LABEL_24;
            }

            v24 = *(v23 + 4 * v21);
            if (v24 == -1)
            {
              v22 = -1;
              result = sub_F85894(&v39);
              if (result)
              {
                goto LABEL_17;
              }

              goto LABEL_7;
            }

            v25 = (a2[15] + 104 * v24);
            sub_F85CFC(&v39, v25, 0x3B9ACA00u, a5, *(a1 + 16), *(a1 + 12), *(a1 + 40));
            v21 = *v25;
            v22 = *(*(a1 + 120) + 4 * v21);
            if (!sub_F85894(&v39))
            {
              break;
            }
          }
        }

        result = sub_F85894(&v39);
        if (result)
        {
LABEL_17:
          if (v22 != -1 && v22 != a6)
          {
            v32 = v39;
            v33 = v40;
            v34 = v41;
            v31 = v22;
            v35 = 0x7FFFFFFF;
            v36 = v19;
            v37 = v21;
            v38 = v20;
            result = sub_F78380(v30, a6, &v31);
          }
        }

LABEL_7:
        v18 = *(a2[18] + 4 * v18);
      }

      while (v18 != -1);
    }
  }

  return result;
}

void sub_F77CC8(uint64_t a1, void *a2)
{
  v4 = a2[7] - a2[6];
  v26 = 0;
  v27 = 0;
  __p = 0;
  if ((v4 >> 2) != 1)
  {
    operator new();
  }

  v5 = ((v4 << 30) - 0x100000000) >> 32;
  if (v5)
  {
    v13 = 0;
    do
    {
      v14 = v13 + 1;
      v15 = a2[6];
      if (v14 >= (a2[7] - v15) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v24 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v16 = v13;
      v17 = *(v15 + 4 * v13);
      v18 = *(v15 + 4 * v14);
      if (v17 != v18)
      {
        v19 = a2[9];
        v20 = (v19 + 80 * v18);
        v21 = (v19 + 80 * v17);
        do
        {
          sub_F77EBC(a1 + 192, v16, v21);
          v22 = *v21;
          v21 += 20;
          ++*(4 * v22);
        }

        while (v21 != v20);
      }

      v13 = v16 + 1;
    }

    while (v16 + 1 != v5);
  }

  v8 = *(a1 + 216);
  v7 = a1 + 216;
  v6 = v8;
  v9 = *(v7 - 24);
  v10 = *(v7 - 16);
  v11 = 126 - 2 * __clz((v10 - v9) >> 2);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_F7C320(v9, v6, v10, *(v7 + 8), &v28, v12, 1);
  sub_F78598(a2, &__p, v7);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

void sub_F77E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    v10 = a1;
    operator delete(__p);
    a1 = v10;
  }

  _Unwind_Resume(a1);
}

void sub_F77EBC(uint64_t a1, int a2, int *a3)
{
  v6 = *a3;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = *a1;
    v11 = v8 - *a1;
    v12 = v11 >> 2;
    v13 = (v11 >> 2) + 1;
    if (v13 >> 62)
    {
      sub_1794();
    }

    v14 = v7 - v10;
    if (v14 >> 1 > v13)
    {
      v13 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 62))
      {
        operator new();
      }

LABEL_28:
      sub_1808();
    }

    *(4 * v12) = v6;
    v9 = 4 * v12 + 4;
    memcpy(0, v10, v11);
    *a1 = 0;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(a1 + 8) = v9;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  if (v16 < v17)
  {
    *v16 = *a3;
    v18 = *(a3 + 1);
    v19 = *(a3 + 2);
    v20 = *(a3 + 4);
    *(v16 + 3) = *(a3 + 3);
    *(v16 + 4) = v20;
    *(v16 + 1) = v18;
    *(v16 + 2) = v19;
    v21 = v16 + 80;
    goto LABEL_27;
  }

  v22 = *(a1 + 24);
  v23 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v22) >> 4) + 1;
  if (v23 > 0x333333333333333)
  {
    sub_1794();
  }

  v24 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v22) >> 4);
  if (2 * v24 > v23)
  {
    v23 = 2 * v24;
  }

  if (v24 >= 0x199999999999999)
  {
    v25 = 0x333333333333333;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    if (v25 <= 0x333333333333333)
    {
      operator new();
    }

    goto LABEL_28;
  }

  v26 = (16 * ((v16 - v22) >> 4));
  v27 = *(a3 + 3);
  v26[2] = *(a3 + 2);
  v26[3] = v27;
  v26[4] = *(a3 + 4);
  v28 = *(a3 + 1);
  *v26 = *a3;
  v26[1] = v28;
  v21 = v26 + 5;
  v29 = v26 - (v16 - v22);
  memcpy(v29, v22, v16 - v22);
  *(a1 + 24) = v29;
  *(a1 + 32) = v21;
  *(a1 + 40) = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_27:
  *(a1 + 32) = v21;
  *(v21 - 20) = a2;
}

unint64_t sub_F780D4(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, __int128 *a9, void *a10)
{
  result = sub_F9903C(a2, a4);
  if (result)
  {
    v38 = a3;
    v39 = a7;
    v18 = sub_3AF6B4(**(a1 + 40));
    v19 = sub_F98E1C(a2, a4);
    v20 = HIDWORD(v19);
    v21 = HIDWORD(v19) & 0xFFFF0000FFFFFFFFLL | (WORD1(v19) << 32);
    v40 = ((HIDWORD(v19) & 0xFFFE0000FFFFFFFFLL | (WORD1(v19) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v19 >> 1) & 1) << 48)) ^ 0x1000000000000);
    v22 = sub_2B51D8(v18, v21);
    if (*(v18 + 7772) == 1)
    {
      v23 = v19 << 16;
      v24 = sub_30C50C(v18 + 3896, v20, 0);
      v25 = &v24[-*v24];
      if (*v25 < 5u)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v25 + 2);
        if (v26)
        {
          v26 += &v24[*&v24[v26]];
        }
      }

      v27 = (v26 + ((v23 >> 30) & 0x3FFFC) + 4 + *(v26 + ((v23 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v27 = 0;
    }

    v57[0] = v22;
    v57[1] = v27;
    v57[2] = sub_31D7E8(v18, v21, 1);
    v57[3] = v28;
    v57[4] = v40;
    sub_F99160(a2, a4, v55);
    result = sub_F992C4(a2, a4, &v54);
    v29 = v55[0];
    v30 = v56;
    if (v55[0] != v56)
    {
      v31 = v55[1];
      v32 = v54;
      do
      {
        v33 = *(*(a1 + 144) + 2 * *v32);
        if (a6 != v33)
        {
          v34 = *v31 + 192 * *v29;
          if (*(v34 + 4) == a4)
          {
            v35 = *(v34 + 8);
            if (v35 >= a5)
            {
              v36 = a9[1];
              v51 = *a9;
              v52 = v36;
              v53 = a9[2];
              sub_F85BC0(&v51, v57, v35 - a5, a8, *(a1 + 16), *(a1 + 12), *(a1 + 40));
              result = sub_F85894(&v51);
              if (result)
              {
                v37 = sub_F75E48(a10, v33);
                sub_F858F4(&v51, v37, 1, a8, *(a1 + 16));
                result = sub_F85894(&v51);
                if (result)
                {
                  v44 = v51;
                  v45 = v52;
                  v46 = v53;
                  v43 = v33;
                  v47 = 0x7FFFFFFF;
                  v48 = v38;
                  v49 = a4;
                  v50 = v39;
                  result = sub_F78380(a10, a6, &v43);
                }
              }
            }
          }
        }

        ++v29;
        ++v32;
      }

      while (v29 != v30);
    }
  }

  return result;
}