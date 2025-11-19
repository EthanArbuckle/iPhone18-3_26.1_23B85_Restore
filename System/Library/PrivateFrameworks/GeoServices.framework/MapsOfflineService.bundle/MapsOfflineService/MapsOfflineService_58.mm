void sub_3B7EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B7F28(uint64_t *a1)
{
  v2 = sub_3CEB38(*a1);
  v3 = v2;
  if (v2)
  {
    operator new();
  }

  v4 = sub_3B2C6C(a1, "disable_transit_nearby_payment_method_lookup_place_requests", 0x3BuLL);
  v5 = v4[23];
  if ((v5 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 1);
  }

  if (v5 == 1)
  {
    v17 = *v6;
    v14 = __toupper(49);
    v15 = __toupper(v17);
  }

  else
  {
    if (v5 != 4 || (v7 = *v6, v8 = __toupper(116), v8 != __toupper(v7)) || (v9 = v6[1], v10 = __toupper(114), v10 != __toupper(v9)) || (v11 = v6[2], v12 = __toupper(117), v12 != __toupper(v11)))
    {
      v16 = 0;
      goto LABEL_17;
    }

    v13 = v6[3];
    v14 = __toupper(101);
    v15 = __toupper(v13);
  }

  v16 = v14 == v15;
LABEL_17:
  v18 = sub_3B2C6C(a1, "disable_transit_nearby_payment_method_lookup_place_requests", 0x3BuLL);
  v19 = v18[23];
  if ((v19 & 0x80u) == 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v18 + 1);
  }

  if (v19 == 1)
  {
    v34 = *v20;
    v30 = __toupper(48);
    v31 = __toupper(v34);
LABEL_32:
    v32 = v30 != v31;
    if (!v16)
    {
      return v32 & v3;
    }

    return 1;
  }

  if (v19 == 5)
  {
    v21 = *v20;
    v22 = __toupper(102);
    if (v22 == __toupper(v21))
    {
      v23 = v20[1];
      v24 = __toupper(97);
      if (v24 == __toupper(v23))
      {
        v25 = v20[2];
        v26 = __toupper(108);
        if (v26 == __toupper(v25))
        {
          v27 = v20[3];
          v28 = __toupper(115);
          if (v28 == __toupper(v27))
          {
            v29 = v20[4];
            v30 = __toupper(101);
            v31 = __toupper(v29);
            goto LABEL_32;
          }
        }
      }
    }
  }

  v32 = 1;
  if (v16)
  {
    return 1;
  }

  return v32 & v3;
}

void sub_3B81E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B8210(uint64_t *a1)
{
  v2 = sub_3CEB38(*a1);
  v3 = v2;
  if (v2)
  {
    operator new();
  }

  v4 = sub_3B2C6C(a1, "disable_transit_vehicle_position_place_requests", 0x2FuLL);
  v5 = v4[23];
  if ((v5 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v4 + 1);
  }

  if (v5 == 1)
  {
    v17 = *v6;
    v14 = __toupper(49);
    v15 = __toupper(v17);
  }

  else
  {
    if (v5 != 4 || (v7 = *v6, v8 = __toupper(116), v8 != __toupper(v7)) || (v9 = v6[1], v10 = __toupper(114), v10 != __toupper(v9)) || (v11 = v6[2], v12 = __toupper(117), v12 != __toupper(v11)))
    {
      v16 = 0;
      goto LABEL_17;
    }

    v13 = v6[3];
    v14 = __toupper(101);
    v15 = __toupper(v13);
  }

  v16 = v14 == v15;
LABEL_17:
  v18 = sub_3B2C6C(a1, "disable_transit_vehicle_position_place_requests", 0x2FuLL);
  v19 = v18[23];
  if ((v19 & 0x80u) == 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = *v18;
  }

  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v18 + 1);
  }

  if (v19 == 1)
  {
    v34 = *v20;
    v30 = __toupper(48);
    v31 = __toupper(v34);
LABEL_32:
    v32 = v30 != v31;
    if (!v16)
    {
      return v32 & v3;
    }

    return 1;
  }

  if (v19 == 5)
  {
    v21 = *v20;
    v22 = __toupper(102);
    if (v22 == __toupper(v21))
    {
      v23 = v20[1];
      v24 = __toupper(97);
      if (v24 == __toupper(v23))
      {
        v25 = v20[2];
        v26 = __toupper(108);
        if (v26 == __toupper(v25))
        {
          v27 = v20[3];
          v28 = __toupper(115);
          if (v28 == __toupper(v27))
          {
            v29 = v20[4];
            v30 = __toupper(101);
            v31 = __toupper(v29);
            goto LABEL_32;
          }
        }
      }
    }
  }

  v32 = 1;
  if (v16)
  {
    return 1;
  }

  return v32 & v3;
}

void sub_3B84CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3B8508(void *a1)
{
  v1 = *nullsub_1(*a1);

  return sub_2D5658(v1);
}

uint64_t sub_3B8540(void *a1, _DWORD *a2)
{
  v3 = nullsub_1(*a1);

  return sub_7FDC0(v3, a2);
}

uint64_t sub_3B857C(uint64_t a1)
{
  sub_93DC0(a1 + 160, *(a1 + 176));
  v2 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = *(v3 + 12);
      if (v5 != -1)
      {
        (off_2669700[v5])(&v18, v3 + 5);
      }

      *(v3 + 12) = -1;
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v6 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    v8 = *(a1 + 104);
    v9 = *(a1 + 96);
    if (v8 == v7)
    {
LABEL_22:
      *(a1 + 104) = v7;
      operator delete(v9);
      goto LABEL_23;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
LABEL_20:
          operator delete(*v10);
        }
      }

      else
      {
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          goto LABEL_20;
        }
      }

      v8 = v10;
      if (v10 == v7)
      {
        v9 = *(a1 + 96);
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  v11 = *(a1 + 88);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (*(a1 + 56))
  {
    sub_3B87CC((a1 + 56));
    operator delete(*(a1 + 56));
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    do
    {
      v13 = *v12;
      v14 = *(v12 + 12);
      if (v14 != -1)
      {
        (off_2669700[v14])(&v19, v12 + 5);
      }

      *(v12 + 12) = -1;
      if (*(v12 + 39) < 0)
      {
        operator delete(v12[2]);
      }

      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v15 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *(a1 + 8);
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  return a1;
}

void sub_3B87CC(void *a1)
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
        do
        {
          v7 = *v4;
          v8 = *(v4 + 12);
          if (v8 != -1)
          {
            (off_2669700[v8])(&v9, v4 + 5);
          }

          *(v4 + 12) = -1;
          if (*(v4 + 39) < 0)
          {
            operator delete(v4[2]);
          }

          operator delete(v4);
          v4 = v7;
        }

        while (v7);
      }

      v6 = *(v3 - 5);
      v3 -= 5;
      v5 = v6;
      *v3 = 0;
      if (v6)
      {
        operator delete(v5);
      }
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void *sub_3B889C(void *a1)
{
  v2 = a1[9];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[7];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[5];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[3];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[1];
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

uint64_t sub_3B8A38(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  *(a2 + 16) = 0;
  v4 = *(a2 + 32);
  *(result + 32) = v4;
  *(result + 16) = v2;
  *(result + 24) = v3;
  *(a2 + 24) = 0;
  v5 = *(a2 + 40);
  *(result + 40) = v5;
  *(result + 48) = *(a2 + 48);
  if (v5)
  {
    v6 = *(v4 + 8);
    v7 = *(result + 24);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v6 %= v7;
      }
    }

    else
    {
      v6 &= v7 - 1;
    }

    *(v2 + 8 * v6) = result + 32;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
  }

  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = *(a2 + 56);
  *(result + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(result + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  v8 = *(a2 + 136);
  *(result + 96) = *(a2 + 96);
  v9 = *(a2 + 120);
  *(result + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(result + 136) = v8;
  v10 = *(a2 + 128);
  *(result + 120) = v9;
  *(result + 128) = v10;
  *(a2 + 128) = 0;
  v11 = *(a2 + 144);
  *(result + 144) = v11;
  *(result + 152) = *(a2 + 152);
  if (v11)
  {
    v12 = *(v8 + 8);
    v13 = *(result + 128);
    if ((v13 & (v13 - 1)) != 0)
    {
      if (v12 >= v13)
      {
        v12 %= v13;
      }
    }

    else
    {
      v12 &= v13 - 1;
    }

    *(v9 + 8 * v12) = result + 136;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
  }

  v16 = *(a2 + 176);
  v14 = a2 + 176;
  v15 = v16;
  *(result + 176) = v16;
  v17 = *(v14 - 16);
  *(result + 168) = *(v14 - 8);
  *(v14 - 16) = 0;
  *(result + 160) = v17;
  *(v14 - 8) = 0;
  v18 = *(v14 + 8);
  *(result + 184) = v18;
  *(result + 192) = *(v14 + 16);
  if (v18)
  {
    v19 = *(v15 + 8);
    v20 = *(result + 168);
    if ((v20 & (v20 - 1)) != 0)
    {
      if (v19 >= v20)
      {
        v19 %= v20;
      }
    }

    else
    {
      v19 &= v20 - 1;
    }

    *(v17 + 8 * v19) = result + 176;
    *v14 = 0;
    *(v14 + 8) = 0;
  }

  return result;
}

uint64_t sub_3B8BC8(uint64_t *a1, uint64_t a2, char a3)
{
  sub_93BBC(a1, &v15);
  v6 = std::string::append(&v15, ".", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
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

  v11 = std::string::append(&v16, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v18 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v20 = a3;
  v19 = 0;
  sub_12214B0(*a1, __p, &v19, &v20);
  v13 = v19;
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(v16.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v13;
    }

    goto LABEL_13;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return v13;
  }

LABEL_13:
  operator delete(v15.__r_.__value_.__l.__data_);
  return v13;
}

void sub_3B8CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a10);
  _Unwind_Resume(exception_object);
}

uint64_t sub_3B8D5C(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_3B8F10(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_3B8EFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3B8F10(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_3B9060(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_3B9214(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_3B9200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3B9214(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_3B9364(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_3B9518(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_3B9504(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3B9518(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_3B9668(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_3B981C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_3B9808(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3B981C(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_3B996C(uint64_t *a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  v8 = *a3;
  v9 = *a4;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  v10 = v7;
  *(v7 + 24) = v8;
  *(v7 + 32) = v9;
  *(v7 + 40) = 1;
  v11 = v7 + 48;
  v12 = *a1;
  v13 = a1[1];
  v14 = v10 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 16) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      v18 = *(v15 + 24);
      *(v16 + 40) = *(v15 + 10);
      *(v16 + 24) = v18;
      v15 += 3;
      v16 += 48;
    }

    while (v15 != v13);
    do
    {
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      v12 += 48;
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

void sub_3B9B3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3B9B50(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_3B9D04(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_3B9CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3B9D04(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_3B9E54(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_3BA008(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_3B9FF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3BA008(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_3BA158(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_3BA30C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_3BA2F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3BA30C(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_3BA45C(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_3BA610(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_3BA5FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3BA610(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_3BA760(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_3BA914(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_3BA900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3BA914(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_3BAA64(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_3BAC18(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_3BAC04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3BAC18(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_3BAD68(uint64_t *a1, char *a2, char *a3, uint64_t *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v17 = 16 * ((a1[1] - *a1) >> 4);
  sub_3BAF1C(v17, a2, a3, a4);
  v8 = 48 * v4 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 10);
      *(v13 + 24) = v15;
      v12 += 3;
      v13 += 48;
    }

    while (v12 != v10);
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 48;
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

void sub_3BAF08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34871C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3BAF1C(uint64_t a1, char *__s, char *a3, uint64_t *a4)
{
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
    *(&__dst + v9) = 0;
    v10 = *a3;
    v11 = *a4;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v12 = __dst;
    sub_325C(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = 1;
    operator delete(v12);
    return a1;
  }

  LOBYTE(__dst) = 0;
  v10 = *a3;
  v11 = *a4;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v15;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_3BB06C(uint64_t *a1, uint64_t a2, int a3)
{
  sub_93BBC(a1, &v15);
  v6 = std::string::append(&v15, ".", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
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

  v11 = std::string::append(&v16, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v18 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v19 = 0;
  v20 = a3;
  sub_12211CC(*a1, __p, &v19, &v20);
  v13 = v19;
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    operator delete(v16.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v13;
    }

    goto LABEL_13;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return v13;
  }

LABEL_13:
  operator delete(v15.__r_.__value_.__l.__data_);
  return v13;
}

void sub_3BB188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a10);
  _Unwind_Resume(exception_object);
}

void sub_3BB21C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2669758;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3BB27C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[970];
    if (v3)
    {
      a2[971] = v3;
      operator delete(v3);
    }

    v4 = a2[487];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = a2[3];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = a2[1];
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    operator delete();
  }
}

void sub_3BB3B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[969];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = a2[485];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = a2[1];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete();
  }
}

void *sub_3BB4D4(void *a1)
{
  v2 = a1[1462];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[1459];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[975];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[972];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[488];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[485];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[1];
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

uint64_t *sub_3BB700(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_360988(v2 + 3896);
    v3 = *(v2 + 24);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v2 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete();
  }

  return result;
}

void sub_3BB7F0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[488];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = a2[3];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = a2[1];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete();
  }
}

void sub_3BB914(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[487];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = a2[485];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = a2[1];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete();
  }
}

uint64_t sub_3BBA38(uint64_t a1)
{
  v2 = *(a1 + 8008);
  if (v2)
  {
    v3 = *(a1 + 8016);
    v4 = *(a1 + 8008);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 8016) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
        v5 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *(a1 + 8008);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v6 = *(a1 + 7968);
  if (v6)
  {
    v7 = *(a1 + 7976);
    v8 = *(a1 + 7968);
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
      v8 = *(a1 + 7968);
    }

    *(a1 + 7976) = v6;
    operator delete(v8);
  }

  v10 = *(a1 + 7936);
  if (v10)
  {
    v11 = *(a1 + 7944);
    v12 = *(a1 + 7936);
    if (v11 != v10)
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
      v12 = *(a1 + 7936);
    }

    *(a1 + 7944) = v10;
    operator delete(v12);
  }

  v14 = *(a1 + 7904);
  if (v14)
  {
    v15 = *(a1 + 7912);
    v16 = *(a1 + 7904);
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 9);
        v15 -= 4;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = *(a1 + 7904);
    }

    *(a1 + 7912) = v14;
    operator delete(v16);
  }

  std::mutex::~mutex((a1 + 7840));
  sub_360B9C((a1 + 16));
  v18 = *(a1 + 8);
  if (!v18 || atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  return a1;
}

void sub_3BBC38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26697A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3BBC8C(uint64_t a1)
{
  v1 = a1 + 40;
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = *(a1 + 48); i != v2; sub_3BC338(v1, i))
    {
      i -= 272;
    }

    *(a1 + 48) = v2;
    v5 = *(a1 + 40);

    operator delete(v5);
  }
}

double sub_3BBD10(unint64_t *a1, unint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5)
{
  v50 = a3;
  a1[1] = a2;
  v9 = std::thread::hardware_concurrency();
  v10 = 3;
  if (a5)
  {
    v10 = a5;
  }

  v11 = v10 * v9;
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 * v9;
  }

  v13 = a4 * v12;
  if (v13 < 4.50359963e15)
  {
    v13 = (((v13 + v13) + 1) >> 1);
  }

  v14 = v13;
  v18 = v13 > 1;
  v15 = a2;
  if (!v18)
  {
    v14 = 1;
  }

  if (a4 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a4;
  }

  v17 = (v15 / v16);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = v14 > a2 || v11 > v17;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v12;
  }

  *a1 = v19;
  v20 = v15 / v19;
  if (v20 >= 0.0)
  {
    if (v20 >= 4.50359963e15)
    {
      goto LABEL_26;
    }

    v21 = (v20 + v20) + 1;
  }

  else
  {
    v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_26:
  if (v20 > a4)
  {
    a4 = v20;
  }

  v49 = a4;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v38);
    sub_4A5C(&v38, "PartitionedLRUCache: creating ", 30);
    v22 = std::ostream::operator<<();
    sub_4A5C(v22, " partitions, ", 13);
    v23 = std::ostream::operator<<();
    sub_4A5C(v23, " bytes each", 11);
    if ((v48 & 0x10) != 0)
    {
      v25 = v47;
      if (v47 < v44)
      {
        v47 = v44;
        v25 = v44;
      }

      v26 = v43;
      v24 = v25 - v43;
      if (v25 - v43 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if ((v48 & 8) == 0)
      {
        v24 = 0;
        v37 = 0;
LABEL_40:
        *(&__dst + v24) = 0;
        sub_7E854(&__dst, 2u);
        if (v37 < 0)
        {
          operator delete(__dst);
        }

        if (v46 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v40);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_45;
      }

      v26 = v41;
      v24 = v42 - v41;
      if ((v42 - v41) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_57:
        sub_3244();
      }
    }

    if (v24 >= 0x17)
    {
      operator new();
    }

    v37 = v24;
    if (v24)
    {
      memmove(&__dst, v26, v24);
    }

    goto LABEL_40;
  }

LABEL_45:
  v28 = a1[2];
  for (i = a1[3]; i != v28; sub_3BC338((a1 + 2), i))
  {
    i -= 272;
  }

  a1[3] = v28;
  sub_3BC248(a1 + 2, *a1);
  if (*a1)
  {
    v30 = 0;
    v31 = a1[3];
    do
    {
      while (v31 >= a1[4])
      {
        result = sub_3BCE9C(a1 + 2, &v49, &v50);
        v31 = v32;
        a1[3] = v32;
        if (++v30 >= *a1)
        {
          return result;
        }
      }

      v33 = v49;
      v34 = v50;
      *v31 = v31;
      *(v31 + 8) = v31;
      *(v31 + 16) = xmmword_22913E0;
      *(v31 + 32) = 0u;
      *(v31 + 48) = 0u;
      *(v31 + 64) = 0u;
      *(v31 + 80) = 0u;
      *(v31 + 96) = 0u;
      *(v31 + 112) = 0u;
      *(v31 + 128) = 0;
      *(v31 + 144) = 0;
      *(v31 + 152) = 0;
      *(v31 + 160) = 0;
      *(v31 + 168) = v33;
      *(v31 + 184) = 0;
      *(v31 + 192) = 0;
      *(v31 + 176) = 0;
      if (v34 == 1)
      {
        v35 = sub_2CD8C();
        sub_2CD98(v35);
      }

      *(v31 + 200) = 0;
      *(v31 + 208) = 850045863;
      result = 0.0;
      *(v31 + 216) = 0u;
      *(v31 + 232) = 0u;
      *(v31 + 248) = 0u;
      *(v31 + 264) = 0;
      v31 += 272;
      a1[3] = v31;
      a1[3] = v31;
      ++v30;
    }

    while (v30 < *a1);
  }

  return result;
}

void sub_3BC1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

void sub_3BC214(_Unwind_Exception *a1)
{
  sub_3BC58C(v2);
  *(v1 + 24) = v2;
  _Unwind_Resume(a1);
}

void sub_3BC22C(_Unwind_Exception *a1)
{
  sub_3BC58C(v2);
  *(v1 + 24) = v2;
  _Unwind_Resume(a1);
}

void *sub_3BC248(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0xF0F0F0F0F0F0F1)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3BC324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3BCC2C(va);
  _Unwind_Resume(a1);
}

void sub_3BC338(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 200))
  {
    sub_3BC44C(a2);
    v3 = sub_2CD8C();
    sub_2CF24(v3, *(a2 + 200));
  }

  std::mutex::~mutex((a2 + 208));
  v4 = *(a2 + 112);
  if (v4)
  {
    *(a2 + 120) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 88);
  if (v5)
  {
    *(a2 + 96) = v5;
    operator delete(v5);
  }

  std::mutex::~mutex((a2 + 24));
  if (*(a2 + 16))
  {
    v6 = *(a2 + 8);
    v7 = *(*a2 + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    *(a2 + 16) = 0;
    if (v6 != a2)
    {
      do
      {
        v9 = v6[1];
        v10 = v6[9];
        if (v10)
        {
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v11 = v6;
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
            v6 = v11;
          }
        }

        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a2);
    }
  }
}

void sub_3BC44C(uint64_t a1)
{
  v9 = &v9;
  v10 = &v9;
  v11 = 0;
  std::mutex::lock((a1 + 24));
  while (1)
  {
    v2 = *(a1 + 8);
    if (v2 == a1 || !*(a1 + 160))
    {
      break;
    }

    sub_3BC744(a1, v2, &v9);
  }

  std::mutex::unlock((a1 + 24));
  if (v11)
  {
    v3 = v10;
    v4 = *(v9 + 8);
    v5 = *v10;
    *(v5 + 8) = v4;
    *v4 = v5;
    v11 = 0;
    if (v3 != &v9)
    {
      do
      {
        v6 = v3[1];
        v7 = v3[9];
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v8 = v3;
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
            v3 = v8;
          }
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != &v9);
    }
  }
}

void sub_3BC55C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3BC67C(va);
  _Unwind_Resume(a1);
}

void sub_3BC570(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::mutex::unlock((v2 + 24));
  sub_3BC67C(va);
  _Unwind_Resume(a1);
}

void *sub_3BC58C(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  std::mutex::~mutex((a1 + 3));
  if (a1[2])
  {
    v4 = a1[1];
    v5 = *(*a1 + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    a1[2] = 0;
    if (v4 != a1)
    {
      do
      {
        v7 = v4[1];
        v8 = v4[9];
        if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v9 = v4;
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
          v4 = v9;
        }

        operator delete(v4);
        v4 = v7;
      }

      while (v7 != a1);
    }
  }

  return a1;
}

void *sub_3BC67C(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[9];
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v7 = v2;
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
          v2 = v7;
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

uint64_t sub_3BC744(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[20] -= a2[10];
  v6 = *(a2 + 2);
  v20[0] = *(a2 + 1);
  v20[1] = v6;
  v7 = (DWORD1(v20[0]) + (LODWORD(v20[0]) << 6) + (LODWORD(v20[0]) >> 2) + 2654435769u) ^ LODWORD(v20[0]);
  v8 = (WORD4(v20[0]) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v9 = (WORD5(v20[0]) + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v10 = (HIDWORD(v20[0]) + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9;
  v11 = (v6 + (v10 << 6) + (v10 >> 2) + 2654435769u) ^ v10;
  v12 = (SDWORD1(v6) + (v11 << 6) + (v11 >> 2) + 2654435769u) ^ v11;
  v21 = *(a2 + 12);
  v13 = (SDWORD2(v6) + (v12 << 6) + (v12 >> 2) + 2654435769u) ^ v12;
  v14 = (BYTE12(v6) + (v13 << 6) + (v13 >> 2) + 2654435769u) ^ v13;
  v15 = (HIWORD(v6) + (v14 << 6) + (v14 >> 2) + 2654435769u) ^ v14;
  v22 = ((v15 << 6) + v21 + (v15 >> 2) + 2654435769u) ^ v15;
  result = sub_3BC8C4(a1 + 11, v20);
  if (a3 != a2)
  {
    v17 = a2[1];
    if (v17 != a3)
    {
      v18 = *a2;
      *(v18 + 8) = v17;
      *v17 = v18;
      v19 = *a3;
      *(v19 + 8) = a2;
      *a2 = v19;
      *a3 = a2;
      a2[1] = a3;
      --a1[2];
      ++a3[2];
    }
  }

  return result;
}

uint64_t sub_3BC8C4(uint64_t *a1, int *a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v3 == v2)
  {
    return 0;
  }

  v4 = *(a2 + 5);
  v5 = *a1;
  v6 = v4 % (a1[1] - *a1);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  v15 = *(a2 + 28);
  v16 = *(a2 + 15);
  v17 = *(a2 + 32);
  v18 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 3);
  while (1)
  {
    if (*(v5 + v6) != 1)
    {
      if (!*(v5 + v6))
      {
        return 0;
      }

      v19 = v3 + 56 * v6;
      if (v4 == *(v19 + 40) && v7 == *v19 && v8 == *(v19 + 4) && *(v19 + 8) == v9 && *(v19 + 10) == v10 && v11 == *(v19 + 12) && v12 == *(v19 + 16) && v13 == *(v19 + 20) && v14 == *(v19 + 24) && v15 == *(v19 + 28) && *(v19 + 30) == v16 && *(v19 + 32) == v17)
      {
        break;
      }
    }

    if (v6 == v18 - 1)
    {
      v6 = 0;
    }

    else
    {
      ++v6;
    }
  }

  *(v5 + v6) = 1;
  v20 = a1[7] - 1;
  a1[7] = v20;
  if (v18 > 8 * v20)
  {
    sub_3BCA44(a1);
  }

  return 1;
}

void sub_3BCA44(uint64_t a1)
{
  v1 = 0;
  do
  {
    ++v1;
  }

  while (3 * *(a1 + 56) > (1 << v1));
  if (v1 < 0x3B)
  {
    operator new();
  }

  sub_1794();
}

uint64_t sub_3BCC2C(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(a1 + 32);
    *(a1 + 16) = v3 - 272;
    sub_3BC338(v4, v3 - 272);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_3BCC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0uLL;
    v9 = a2;
    do
    {
      v10 = *(v9 + 168);
      *a4 = a4;
      *(a4 + 8) = a4;
      *(a4 + 16) = xmmword_22913E0;
      *(a4 + 32) = v8;
      *(a4 + 48) = v8;
      *(a4 + 64) = v8;
      *(a4 + 80) = v8;
      *(a4 + 96) = v8;
      *(a4 + 112) = v8;
      *(a4 + 128) = 0;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 168) = v10;
      *(a4 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 176) = 0;
      if (*(v9 + 200))
      {
        v11 = sub_2CD8C();
        sub_2CD98(v11);
      }

      *(a4 + 200) = 0;
      *(a4 + 208) = 850045863;
      v8 = 0uLL;
      *(a4 + 216) = 0u;
      *(a4 + 232) = 0u;
      *(a4 + 248) = 0u;
      *(a4 + 264) = 0;
      v9 += 272;
      a4 += 272;
    }

    while (v9 != a3);
    if (a2 != a3)
    {
      do
      {
        sub_3BC338(a1, v6);
        v6 += 272;
      }

      while (v6 != a3);
    }
  }
}

void sub_3BCE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3BCE34(va);
  _Unwind_Resume(a1);
}

void sub_3BCE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3BC58C(v3);
  sub_3BCE34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3BCE34(uint64_t a1)
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
        v4 -= 272;
        sub_3BC338(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

double sub_3BCE9C(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0xF0F0F0F0F0F0F0)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v5 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xF0F0F0F0F0F0F0)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *(&v14 + 1) = 0;
  v7 = *a2;
  v8 = *a3;
  *v6 = v6;
  *(v6 + 8) = v6;
  *(v6 + 16) = xmmword_22913E0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  *(v6 + 168) = v7;
  *(v6 + 184) = 0;
  *(v6 + 192) = 0;
  *(v6 + 176) = 0;
  if (v8 == 1)
  {
    v9 = sub_2CD8C();
    sub_2CD98(v9);
  }

  *(v6 + 200) = 0;
  *(v6 + 208) = 850045863;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 0;
  *&v14 = v6 + 272;
  v10 = a1[1];
  v11 = v6 + *a1 - v10;
  sub_3BCC84(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  result = *&v14;
  *(a1 + 1) = v14;
  if (v12)
  {
    operator delete(v12);
    return *&v14;
  }

  return result;
}

void sub_3BD084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3BC58C(v4);
  sub_3BCC2C(va);
  _Unwind_Resume(a1);
}

void sub_3BD0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3BCC2C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3BD0B8(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_3BC338(a1, i))
    {
      i -= 272;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_3BD13C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26697F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

double sub_3BD19C(unint64_t *a1, unint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5)
{
  v52 = a3;
  a1[1] = a2;
  v9 = std::thread::hardware_concurrency();
  v10 = 3;
  if (a5)
  {
    v10 = a5;
  }

  v11 = v10 * v9;
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 * v9;
  }

  v13 = a4 * v12;
  if (v13 < 4.50359963e15)
  {
    v13 = (((v13 + v13) + 1) >> 1);
  }

  v14 = v13;
  v18 = v13 > 1;
  v15 = a2;
  if (!v18)
  {
    v14 = 1;
  }

  if (a4 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a4;
  }

  v17 = (v15 / v16);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = v14 > a2 || v11 > v17;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v12;
  }

  *a1 = v19;
  v20 = v15 / v19;
  if (v20 >= 0.0)
  {
    if (v20 >= 4.50359963e15)
    {
      goto LABEL_26;
    }

    v21 = (v20 + v20) + 1;
  }

  else
  {
    v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_26:
  if (v20 > a4)
  {
    a4 = v20;
  }

  v51 = a4;
  if (!sub_7E7E4(2u))
  {
    v23 = a1[2];
    v24 = a1[3];
    v22 = (a1 + 2);
    if (v24 == v23)
    {
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  sub_19594F8(&v40);
  sub_4A5C(&v40, "PartitionedLRUCache: creating ", 30);
  v25 = std::ostream::operator<<();
  sub_4A5C(v25, " partitions, ", 13);
  v26 = std::ostream::operator<<();
  sub_4A5C(v26, " bytes each", 11);
  if ((v50 & 0x10) != 0)
  {
    v28 = v49;
    if (v49 < v46)
    {
      v49 = v46;
      v28 = v46;
    }

    v29 = v45;
    v27 = v28 - v45;
    if (v28 - v45 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if ((v50 & 8) == 0)
    {
      v27 = 0;
      v39 = 0;
      goto LABEL_42;
    }

    v29 = v43;
    v27 = v44 - v43;
    if ((v44 - v43) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_59:
      sub_3244();
    }
  }

  if (v27 >= 0x17)
  {
    operator new();
  }

  v39 = v27;
  if (v27)
  {
    memmove(&__dst, v29, v27);
  }

LABEL_42:
  *(&__dst + v27) = 0;
  sub_7E854(&__dst, 2u);
  if (v39 < 0)
  {
    operator delete(__dst);
  }

  if (v48 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v42);
  std::ostream::~ostream();
  std::ios::~ios();
  v23 = a1[2];
  v24 = a1[3];
  v22 = (a1 + 2);
  if (v24 != v23)
  {
    do
    {
LABEL_50:
      v33 = v24 - 272;
      if (*(v24 - 72))
      {
        sub_3BD8DC(v24 - 272);
        v34 = sub_2CD8C();
        sub_2CF24(v34, *(v24 - 72));
      }

      std::mutex::~mutex((v24 - 64));
      sub_3BDA1C((v24 - 272));
      v24 -= 272;
    }

    while (v33 != v23);
  }

LABEL_47:
  a1[3] = v23;
  sub_3BD790(v22, *a1);
  if (*a1)
  {
    v31 = 0;
    v32 = a1[3];
    do
    {
      while (v32 >= a1[4])
      {
        v32 = sub_3BE2CC(v22, &v51, &v52);
        a1[3] = v32;
        if (++v31 >= *a1)
        {
          return result;
        }
      }

      v35 = v51;
      v36 = v52;
      *v32 = v32;
      *(v32 + 8) = v32;
      *(v32 + 16) = xmmword_22913E0;
      *(v32 + 32) = 0u;
      *(v32 + 48) = 0u;
      *(v32 + 64) = 0u;
      *(v32 + 80) = 0u;
      *(v32 + 96) = 0u;
      *(v32 + 112) = 0u;
      *(v32 + 128) = 0;
      *(v32 + 144) = 0;
      *(v32 + 152) = 0;
      *(v32 + 160) = 0;
      *(v32 + 168) = v35;
      *(v32 + 184) = 0;
      *(v32 + 192) = 0;
      *(v32 + 176) = 0;
      if (v36 == 1)
      {
        v37 = sub_2CD8C();
        sub_2CD98(v37);
      }

      *(v32 + 200) = 0;
      *(v32 + 208) = 850045863;
      result = 0.0;
      *(v32 + 216) = 0u;
      *(v32 + 232) = 0u;
      *(v32 + 248) = 0u;
      *(v32 + 264) = 0;
      v32 += 272;
      a1[3] = v32;
      a1[3] = v32;
      ++v31;
    }

    while (v31 < *a1);
  }

  return result;
}

void sub_3BD6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

void sub_3BD6E0(_Unwind_Exception *a1)
{
  sub_3BDA1C(v2);
  *(v1 + 24) = v2;
  _Unwind_Resume(a1);
}

void sub_3BD6F8(_Unwind_Exception *a1)
{
  sub_3BDA1C(v2);
  *(v1 + 24) = v2;
  _Unwind_Resume(a1);
}

void *sub_3BD714(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = v3 - 272;
      if (*(v3 - 72))
      {
        sub_3BD8DC(v3 - 272);
        v5 = sub_2CD8C();
        sub_2CF24(v5, *(v3 - 72));
      }

      std::mutex::~mutex((v3 - 64));
      result = sub_3BDA1C((v3 - 272));
      v3 -= 272;
    }

    while (v4 != v2);
  }

  v1[1] = v2;
  return result;
}

void *sub_3BD790(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0xF0F0F0F0F0F0F1)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3BD86C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3BDFAC(va);
  _Unwind_Resume(a1);
}

void *sub_3BD880(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 200))
  {
    sub_3BD8DC(a2);
    v3 = sub_2CD8C();
    sub_2CF24(v3, *(a2 + 200));
  }

  std::mutex::~mutex((a2 + 208));

  return sub_3BDA1C(a2);
}

void sub_3BD8DC(uint64_t a1)
{
  v9 = &v9;
  v10 = &v9;
  v11 = 0;
  std::mutex::lock((a1 + 24));
  while (1)
  {
    v2 = *(a1 + 8);
    if (v2 == a1 || !*(a1 + 160))
    {
      break;
    }

    sub_3BDB1C(a1, v2, &v9);
  }

  std::mutex::unlock((a1 + 24));
  if (v11)
  {
    v3 = v10;
    v4 = *(v9 + 8);
    v5 = *v10;
    *(v5 + 8) = v4;
    *v4 = v5;
    v11 = 0;
    if (v3 != &v9)
    {
      do
      {
        v6 = v3[1];
        v7 = v3[9];
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v8 = v3;
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
            v3 = v8;
          }
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != &v9);
    }
  }
}

void sub_3BD9EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3BC67C(va);
  _Unwind_Resume(a1);
}

void sub_3BDA00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::mutex::unlock((v2 + 24));
  sub_3BC67C(va);
  _Unwind_Resume(a1);
}

void *sub_3BDA1C(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 3));
  if (a1[2])
  {
    v5 = a1[1];
    v6 = *(*a1 + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    a1[2] = 0;
    if (v5 != a1)
    {
      do
      {
        v8 = v5[1];
        v9 = v5[9];
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v10 = v5;
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
          v5 = v10;
        }

        operator delete(v5);
        v5 = v8;
      }

      while (v8 != a1);
    }
  }

  return a1;
}

uint64_t sub_3BDB1C(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[20] -= a2[10];
  v6 = *(a2 + 2);
  v18[0] = *(a2 + 1);
  v18[1] = v6;
  v19 = *(a2 + 12);
  v7 = (DWORD1(v18[0]) + (LODWORD(v18[0]) << 6) + (LODWORD(v18[0]) >> 2) + 2654435769u) ^ LODWORD(v18[0]);
  v8 = (DWORD2(v18[0]) + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v9 = (SHIDWORD(v18[0]) + (v8 << 6) + (v8 >> 2) + 2654435769u) ^ v8;
  v10 = (v6 + (v9 << 6) + (v9 >> 2) + 2654435769u) ^ v9;
  v11 = (SDWORD1(v6) + (v10 << 6) + (v10 >> 2) + 2654435769u) ^ v10;
  v12 = (BYTE8(v6) + (v11 << 6) + (v11 >> 2) + 2654435769u) ^ v11;
  v13 = (WORD5(v6) + (v12 << 6) + (v12 >> 2) + 2654435769u) ^ v12;
  v20 = (BYTE12(v6) + (v13 << 6) + (v13 >> 2) + 2654435769u) ^ v13;
  result = sub_3BDC74(a1 + 11, v18);
  if (a3 != a2)
  {
    v15 = a2[1];
    if (v15 != a3)
    {
      v16 = *a2;
      *(v16 + 8) = v15;
      *v15 = v16;
      v17 = *a3;
      *(v17 + 8) = a2;
      *a2 = v17;
      *a3 = a2;
      a2[1] = a3;
      --a1[2];
      ++a3[2];
    }
  }

  return result;
}

uint64_t sub_3BDC74(uint64_t *a1, int *a2)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v3 == v2)
  {
    return 0;
  }

  v4 = *(a2 + 5);
  v5 = *a1;
  v6 = v4 % (a1[1] - *a1);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v13 = *(a2 + 24);
  v14 = *(a2 + 13);
  v15 = *(a2 + 28);
  v16 = 0x6DB6DB6DB6DB6DB7 * ((v2 - v3) >> 3);
  while (1)
  {
    if (*(v5 + v6) != 1)
    {
      if (!*(v5 + v6))
      {
        return 0;
      }

      v17 = v3 + 56 * v6;
      if (v4 == *(v17 + 40) && v7 == *v17 && v8 == *(v17 + 4) && v9 == *(v17 + 8) && v10 == *(v17 + 12) && v11 == *(v17 + 16) && v12 == *(v17 + 20) && v13 == *(v17 + 24) && *(v17 + 26) == v14 && *(v17 + 28) == v15)
      {
        break;
      }
    }

    if (v6 == v16 - 1)
    {
      v6 = 0;
    }

    else
    {
      ++v6;
    }
  }

  *(v5 + v6) = 1;
  v18 = a1[7] - 1;
  a1[7] = v18;
  if (v16 > 8 * v18)
  {
    sub_3BDDC8(a1);
  }

  return 1;
}

void sub_3BDDC8(uint64_t a1)
{
  v1 = 0;
  do
  {
    ++v1;
  }

  while (3 * *(a1 + 56) > (1 << v1));
  if (v1 < 0x3B)
  {
    operator new();
  }

  sub_1794();
}

uint64_t sub_3BDFAC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 272;
    if (*(i - 72))
    {
      sub_3BD8DC(i - 272);
      v4 = sub_2CD8C();
      sub_2CF24(v4, *(i - 72));
    }

    std::mutex::~mutex((i - 64));
    sub_3BDA1C((i - 272));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_3BE034(uint64_t a1, uint64_t a2, std::mutex *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = 0uLL;
    v7 = a2;
    do
    {
      v9 = *(v7 + 168);
      *a4 = a4;
      *(a4 + 8) = a4;
      *(a4 + 16) = xmmword_22913E0;
      *(a4 + 32) = v6;
      *(a4 + 48) = v6;
      *(a4 + 64) = v6;
      *(a4 + 80) = v6;
      *(a4 + 96) = v6;
      *(a4 + 112) = v6;
      *(a4 + 128) = 0;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 168) = v9;
      *(a4 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 176) = 0;
      if (*(v7 + 200))
      {
        v10 = sub_2CD8C();
        sub_2CD98(v10);
      }

      result = 0;
      *(a4 + 200) = 0;
      *(a4 + 208) = 850045863;
      v6 = 0uLL;
      *(a4 + 216) = 0u;
      *(a4 + 232) = 0u;
      *(a4 + 248) = 0u;
      *(a4 + 264) = 0;
      v7 += 272;
      a4 += 272;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      v11 = (a2 + 208);
      do
      {
        if (*&v11[-1].__m_.__opaque[48])
        {
          sub_3BD8DC(&v11[-4].__m_.__opaque[40]);
          v13 = sub_2CD8C();
          sub_2CF24(v13, *&v11[-1].__m_.__opaque[48]);
        }

        std::mutex::~mutex(v11);
        result = sub_3BDA1C(&v11[-4].__m_.__opaque[40]);
        v12 = v11 + 1;
        v11 = (v11 + 272);
      }

      while (v12 != a3);
    }
  }

  return result;
}

void sub_3BE240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3BDA1C(v3);
  sub_3BE264(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3BE264(uint64_t a1)
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
        v4 -= 272;
        sub_3BD880(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_3BE2CC(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0xF0F0F0F0F0F0F0)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v6 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v6 = v4;
  }

  v21 = a1;
  if (v6)
  {
    if (v6 <= 0xF0F0F0F0F0F0F0)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 272 * v3;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  v8 = *a2;
  v9 = *a3;
  *v7 = v7;
  *(v7 + 8) = v7;
  *(v7 + 16) = xmmword_22913E0;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 168) = v8;
  *(v7 + 184) = 0;
  *(v7 + 192) = 0;
  v10 = v7;
  *(v7 + 176) = 0;
  if (v9 == 1)
  {
    v11 = sub_2CD8C();
    sub_2CD98(v11);
  }

  *(v7 + 200) = 0;
  *(v7 + 208) = 850045863;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0;
  *&v20 = v7 + 272;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  sub_3BE034(a1, *a1, v12, v10 + *a1 - v12);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_3BDFAC(&v18);
  return v17;
}

void sub_3BE4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3BDA1C(v4);
  sub_3BDFAC(va);
  _Unwind_Resume(a1);
}

void sub_3BE4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3BDFAC(va);
  _Unwind_Resume(a1);
}

void **sub_3BE4F4(void **a1)
{
  if (*a1)
  {
    sub_3BD714(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_3BE530(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 == v1)
    {
      *(a1 + 24) = v1;
    }

    else
    {
      do
      {
        v5 = v3 - 272;
        if (*(v3 - 72))
        {
          sub_3BD8DC(v3 - 272);
          v6 = sub_2CD8C();
          sub_2CF24(v6, *(v3 - 72));
        }

        std::mutex::~mutex((v3 - 64));
        sub_3BDA1C((v3 - 272));
        v3 -= 272;
      }

      while (v5 != v1);
      v4 = *(a1 + 16);
      *(a1 + 24) = v1;
    }

    operator delete(v4);
  }
}

void sub_3BE620(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2669848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_3BE680(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v12 = 0;
  v13 = 0;
  v4 = *a3;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  LOBYTE(__p) = 0;
  sub_3CC454(a1, &v12, v4, 0, 0, &v10, &__p);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  v5 = v11;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = v13;
  if (!v13 || atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

void sub_3BE78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1F1A8(&a16);
  sub_1F1A8(v16 - 32);
  _Unwind_Resume(a1);
}

void sub_3BE7D8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2669898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_3BE838(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    do
    {
      v10 = *v3;
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      operator delete(v3);
      v3 = v10;
    }

    while (v10);
  }

  v4 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    if (v7 != v6)
    {
      v9 = v7 - 1744;
      do
      {
        sub_3BE944((v9 + 24));
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        v11 = v9 - 8;
        v9 -= 1752;
      }

      while (v11 != v6);
      v8 = *(a1 + 40);
    }

    *(a1 + 48) = v6;
    operator delete(v8);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    do
    {
      v13 = *v12;
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = *a1;
  *a1 = 0;
  if (v14)
  {
    operator delete(v14);
  }

  return a1;
}

void *sub_3BE944(void *a1)
{
  v2 = a1[196];
  if (v2)
  {
    a1[197] = v2;
    operator delete(v2);
  }

  v3 = a1[193];
  if (v3)
  {
    a1[194] = v3;
    operator delete(v3);
  }

  v4 = a1[190];
  if (v4)
  {
    a1[191] = v4;
    operator delete(v4);
  }

  v5 = a1[187];
  if (v5)
  {
    a1[188] = v5;
    operator delete(v5);
  }

  v6 = a1[184];
  if (v6)
  {
    a1[185] = v6;
    operator delete(v6);
  }

  v7 = a1[180];
  if (v7)
  {
    a1[181] = v7;
    operator delete(v7);
  }

  v8 = a1[177];
  if (v8)
  {
    a1[178] = v8;
    operator delete(v8);
  }

  v9 = a1[174];
  if (v9)
  {
    a1[175] = v9;
    operator delete(v9);
  }

  v10 = a1[171];
  if (v10)
  {
    a1[172] = v10;
    operator delete(v10);
  }

  v11 = a1[165];
  if (v11)
  {
    a1[166] = v11;
    operator delete(v11);
  }

  v12 = a1[162];
  if (v12)
  {
    a1[163] = v12;
    operator delete(v12);
  }

  v13 = a1[143];
  if (v13)
  {
    a1[144] = v13;
    operator delete(v13);
  }

  v14 = a1[138];
  if (v14)
  {
    a1[139] = v14;
    operator delete(v14);
  }

  v15 = a1[119];
  if (v15)
  {
    a1[120] = v15;
    operator delete(v15);
  }

  v16 = a1[110];
  if (v16)
  {
    a1[111] = v16;
    operator delete(v16);
  }

  v17 = a1[107];
  if (v17)
  {
    a1[108] = v17;
    operator delete(v17);
  }

  v18 = a1[104];
  if (v18)
  {
    a1[105] = v18;
    operator delete(v18);
  }

  v19 = a1[53];
  if (v19)
  {
    a1[54] = v19;
    operator delete(v19);
  }

  v20 = a1[50];
  if (v20)
  {
    a1[51] = v20;
    operator delete(v20);
  }

  v21 = a1[47];
  if (v21)
  {
    a1[48] = v21;
    operator delete(v21);
  }

  v22 = a1[44];
  if (v22)
  {
    a1[45] = v22;
    operator delete(v22);
  }

  v23 = a1[41];
  if (v23)
  {
    a1[42] = v23;
    operator delete(v23);
  }

  v24 = a1[34];
  if (v24)
  {
    a1[35] = v24;
    operator delete(v24);
  }

  v25 = a1[31];
  if (v25)
  {
    a1[32] = v25;
    operator delete(v25);
  }

  v26 = a1[28];
  if (v26)
  {
    a1[29] = v26;
    operator delete(v26);
  }

  return a1;
}

void sub_3BEB18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_26698E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_3BEB78(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    do
    {
      v10 = *v3;
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      operator delete(v3);
      v3 = v10;
    }

    while (v10);
  }

  v4 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    if (v7 != v6)
    {
      v9 = v7 - 1352;
      do
      {
        v12 = *(v9 + 1328);
        if (v12)
        {
          *(v9 + 1336) = v12;
          operator delete(v12);
        }

        v13 = *(v9 + 1304);
        if (v13)
        {
          *(v9 + 1312) = v13;
          operator delete(v13);
        }

        sub_3BECA4((v9 + 24));
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        v11 = v9 - 8;
        v9 -= 1360;
      }

      while (v11 != v6);
      v8 = *(a1 + 40);
    }

    *(a1 + 48) = v6;
    operator delete(v8);
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    do
    {
      v15 = *v14;
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = *a1;
  *a1 = 0;
  if (v16)
  {
    operator delete(v16);
  }

  return a1;
}

void *sub_3BECA4(void *a1)
{
  v2 = a1[88];
  if (v2)
  {
    a1[89] = v2;
    operator delete(v2);
  }

  v3 = a1[85];
  if (v3)
  {
    a1[86] = v3;
    operator delete(v3);
  }

  v4 = a1[82];
  if (v4)
  {
    a1[83] = v4;
    operator delete(v4);
  }

  v5 = a1[77];
  if (v5)
  {
    a1[78] = v5;
    operator delete(v5);
  }

  v6 = a1[70];
  if (v6)
  {
    a1[71] = v6;
    operator delete(v6);
  }

  v7 = a1[65];
  if (v7)
  {
    a1[66] = v7;
    operator delete(v7);
  }

  v8 = a1[62];
  if (v8)
  {
    a1[63] = v8;
    operator delete(v8);
  }

  v9 = a1[59];
  if (v9)
  {
    a1[60] = v9;
    operator delete(v9);
  }

  v10 = a1[56];
  if (v10)
  {
    a1[57] = v10;
    operator delete(v10);
  }

  v11 = a1[29];
  if (v11)
  {
    a1[30] = v11;
    operator delete(v11);
  }

  v12 = a1[26];
  if (v12)
  {
    a1[27] = v12;
    operator delete(v12);
  }

  v13 = a1[23];
  if (v13)
  {
    a1[24] = v13;
    operator delete(v13);
  }

  return a1;
}

void sub_3BEDA8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2669938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_3BEE08(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    *(a1 + 152) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    do
    {
      v10 = *v3;
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      operator delete(v3);
      v3 = v10;
    }

    while (v10);
  }

  v4 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    if (v7 != v6)
    {
      v9 = v7 - 816;
      do
      {
        sub_3BEF14((v9 + 24));
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        v11 = v9 - 8;
        v9 -= 824;
      }

      while (v11 != v6);
      v8 = *(a1 + 40);
    }

    *(a1 + 48) = v6;
    operator delete(v8);
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    do
    {
      v13 = *v12;
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = *a1;
  *a1 = 0;
  if (v14)
  {
    operator delete(v14);
  }

  return a1;
}

void *sub_3BEF14(void *a1)
{
  v2 = a1[68];
  if (v2)
  {
    a1[69] = v2;
    operator delete(v2);
  }

  v3 = a1[65];
  if (v3)
  {
    a1[66] = v3;
    operator delete(v3);
  }

  v4 = a1[62];
  if (v4)
  {
    a1[63] = v4;
    operator delete(v4);
  }

  v5 = a1[59];
  if (v5)
  {
    a1[60] = v5;
    operator delete(v5);
  }

  v6 = a1[56];
  if (v6)
  {
    a1[57] = v6;
    operator delete(v6);
  }

  v7 = a1[49];
  if (v7)
  {
    a1[50] = v7;
    operator delete(v7);
  }

  v8 = a1[42];
  if (v8)
  {
    a1[43] = v8;
    operator delete(v8);
  }

  v9 = a1[39];
  if (v9)
  {
    a1[40] = v9;
    operator delete(v9);
  }

  v10 = a1[36];
  if (v10)
  {
    a1[37] = v10;
    operator delete(v10);
  }

  v11 = a1[30];
  if (v11)
  {
    a1[31] = v11;
    operator delete(v11);
  }

  v12 = a1[7];
  if (v12)
  {
    a1[8] = v12;
    operator delete(v12);
  }

  return a1;
}

void sub_3BF008(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2669988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3BF05C(void *a1)
{
  v2 = a1[38];
  if (v2)
  {
    a1[39] = v2;
    operator delete(v2);
  }

  v3 = a1[35];
  if (v3)
  {
    a1[36] = v3;
    operator delete(v3);
  }

  v4 = a1[32];
  if (v4)
  {
    v5 = a1[33];
    v6 = a1[32];
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 24);
        if (v8)
        {
          v9 = *(v5 - 16);
          v7 = *(v5 - 24);
          if (v9 != v8)
          {
            do
            {
              v10 = *(v9 - 9);
              v9 -= 4;
              if (v10 < 0)
              {
                operator delete(*v9);
              }
            }

            while (v9 != v8);
            v7 = *(v5 - 24);
          }

          *(v5 - 16) = v8;
          operator delete(v7);
        }

        v5 -= 104;
      }

      while (v5 != v4);
      v6 = a1[32];
    }

    a1[33] = v4;
    operator delete(v6);
  }

  v11 = a1[22];
  if (v11)
  {
    a1[23] = v11;
    operator delete(v11);
  }

  v12 = a1[19];
  if (v12)
  {
    do
    {
      v13 = *v12;
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = a1[17];
  a1[17] = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = a1[14];
  if (v15)
  {
    a1[15] = v15;
    operator delete(v15);
  }

  v16 = a1[11];
  if (v16)
  {
    a1[12] = v16;

    operator delete(v16);
  }
}

uint64_t sub_3BF1A4(uint64_t a1, uint64_t *a2)
{
  v4 = a2[42];
  if (!v4)
  {
    nullsub_1(*a2);
    sub_3B2308();
  }

  v5 = sub_3CF264(*a2);
  sub_3AEED8(a2);
  v6 = a2[70];
  if (!v6)
  {
    v6 = sub_3CEFC0(*a2);
  }

  return sub_3BF24C(a1, a2, v4, v5, v6, *(v4 + 3884));
}

uint64_t sub_3BF24C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v9 = a2[44];
  if (!v9)
  {
    nullsub_1(*a2);
    sub_3B076C();
  }

  v10 = a2[47];
  if (!v10)
  {
    nullsub_1(*a2);
    sub_3B0C30();
  }

  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  sub_1016070((a1 + 40), a2);
  if (!a6)
  {
    v43 = 0;
    *(a1 + 200) = -1;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    goto LABEL_58;
  }

  v11 = *(a1 + 8);
  if (*(v11 + 3880))
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_3BF72C(v11 + 8, 1u, 1);
  }

  v13 = &v12[-*v12];
  if (*v13 < 5u)
  {
    v14 = 0;
    v15 = (&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 5u)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v14 = *(v13 + 2);
    if (v14)
    {
      v14 = (v14 + v12 + *(v14 + v12));
    }

    v15 = (v14 - *v14);
    if (*v15 < 5u)
    {
      goto LABEL_20;
    }
  }

  v16 = v15[2];
  if (v16)
  {
    *(a1 + 200) = *(v14 + v16);
    v17 = *(a1 + 8);
    if (!*(v17 + 3880))
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a1 + 200) = 0;
  v17 = *(a1 + 8);
  if (!*(v17 + 3880))
  {
LABEL_15:
    v18 = sub_3BF72C(v17 + 8, 1u, 1);
    v19 = &v18[-*v18];
    if (*v19 >= 5u)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

LABEL_21:
  v18 = 0;
  v19 = (&loc_1120530 + 1);
  if (*(&loc_1120530 + 1) >= 5u)
  {
LABEL_16:
    v20 = *(v19 + 2);
    if (v20)
    {
      v20 = (v20 + v18 + *(v20 + v18));
    }

    v21 = (v20 - *v20);
    if (*v21 < 7u)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

LABEL_22:
  v20 = 0;
  v21 = (&loc_1120530 + 1);
  if (*(&loc_1120530 + 1) < 7u)
  {
    goto LABEL_30;
  }

LABEL_23:
  v22 = v21[3];
  if (v22)
  {
    *(a1 + 204) = *(v20 + v22);
    v23 = *(a1 + 8);
    if (!*(v23 + 3880))
    {
      goto LABEL_25;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(a1 + 204) = 0;
  v23 = *(a1 + 8);
  if (!*(v23 + 3880))
  {
LABEL_25:
    v24 = sub_3BF72C(v23 + 8, 1u, 1);
    v25 = &v24[-*v24];
    if (*v25 >= 5u)
    {
      goto LABEL_26;
    }

LABEL_32:
    v26 = 0;
    v27 = (&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 9u)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_31:
  v24 = 0;
  v25 = (&loc_1120530 + 1);
  if (*(&loc_1120530 + 1) < 5u)
  {
    goto LABEL_32;
  }

LABEL_26:
  v26 = *(v25 + 2);
  if (v26)
  {
    v26 = (v26 + v24 + *(v26 + v24));
  }

  v27 = (v26 - *v26);
  if (*v27 < 9u)
  {
    goto LABEL_35;
  }

LABEL_33:
  v28 = v27[4];
  if (v28)
  {
    v29 = *(v26 + v28);
    goto LABEL_36;
  }

LABEL_35:
  v29 = 0;
LABEL_36:
  *(a1 + 208) = sub_8994C(v29);
  v30 = sub_3BF72C(*(a1 + 8) + 8, 1u, 1);
  v31 = &v30[*&v30[-*v30 + 4]];
  v32 = &v31[*v31 + *&v31[*v31 - *&v31[*v31] + 10]];
  v33 = *v32;
  v34 = *&v32[v33];
  if (v34 >= 0x17)
  {
    operator new();
  }

  v46 = *&v32[v33];
  if (v34)
  {
    memcpy(&__dst, &v32[v33 + 4], v34);
  }

  *(&__dst + v34) = 0;
  v35 = sub_FC87F0(a5, &__dst);
  if (v46 < 0)
  {
    v36 = v35;
    operator delete(__dst);
    v35 = v36;
  }

  *(a1 + 216) = v35;
  *(a1 + 224) = sub_FC1BE4(a5, *v35);
  v37 = *(a1 + 8);
  if (*(v37 + 3880))
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_3BF72C(v37 + 8, 1u, 1);
  }

  v39 = &v38[-*v38];
  if (*v39 < 5u)
  {
    v40 = 0;
    v41 = (&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 0xDu)
    {
LABEL_54:
      v43 = 0;
      goto LABEL_58;
    }
  }

  else
  {
    v40 = *(v39 + 2);
    if (v40)
    {
      v40 = (v40 + v38 + *(v40 + v38));
    }

    v41 = (v40 - *v40);
    if (*v41 < 0xDu)
    {
      goto LABEL_54;
    }
  }

  v42 = v41[6];
  if (!v42)
  {
    goto LABEL_54;
  }

  v43 = *(v40 + v42) != 0;
LABEL_58:
  *(a1 + 225) = v43;
  *(a1 + 248) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  return a1;
}

void sub_3BF6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_3BFA2C((v15 + 40));
    _Unwind_Resume(a1);
  }

  sub_3BFA2C((v15 + 40));
  _Unwind_Resume(a1);
}

char *sub_3BF72C(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 2512) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2520) = v3;
    v4 = *(a1 + 2528);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2536) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2544) = v3;
    v4 = *(a1 + 2552);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2560) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2568) = v3;
    v4 = *(a1 + 2576);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2584) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2592) = v3;
    v4 = *(a1 + 2600);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 2568);
    v8 = *(a1 + 2544);
    v9 = *(a1 + 2520);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 2520);
    }

    v11 = 104;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 2544);
    }

    v13 = 105;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 2568);
    }

    v15 = *(a1 + 2592);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 106;
    }

    v18 = sub_2D52A4(*a1, 26, a2, 1);
    v19 = 107;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_3BF900(v21);
  return 0;
}

uint64_t sub_3BF900(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0x1Au);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_3BF9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_3BFA2C(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = a1[9];
  a1[9] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    a1[7] = v6;
    operator delete(v6);
  }

  v7 = a1[3];
  if (v7)
  {
    a1[4] = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_3BFAA8(uint64_t a1, void *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  *a1 = v4;
  *(a1 + 8) = v3;
  do
  {
    v6 = a1 + v5;
    *(v6 + 16) = 0;
    *(v6 + 40) = 0;
    *(v6 + 24) = 0;
    *(v6 + 48) = 0;
    v5 += 48;
  }

  while (v5 != 3840);
  *(a1 + 3856) = 0u;
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  *(a1 + 3872) = v8;
  *(a1 + 3880) = v7;
  do
  {
    v10 = a1 + v9;
    *(v10 + 3888) = 0;
    *(v10 + 3912) = 0;
    *(v10 + 3896) = 0;
    *(v10 + 3920) = 0;
    v9 += 48;
  }

  while (v9 != 3840);
  *(a1 + 7728) = 0u;
  v11 = *a2;
  v12 = a2[1];
  *(a1 + 7744) = *a2;
  *(a1 + 7752) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    v11 = *a2;
  }

  if (v11)
  {
    LOBYTE(v11) = sub_2D5658(v11);
  }

  *(a1 + 7760) = v11;
  return a1;
}

void sub_3BFB88(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + 7744);
  sub_1F1A8(v1 + 3872);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3BFBB0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a1 + 7784;
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  *a1 = v8;
  *(a1 + 8) = v7;
  do
  {
    v10 = a1 + v9;
    *(v10 + 16) = 0;
    *(v10 + 40) = 0;
    *(v10 + 24) = 0;
    *(v10 + 48) = 0;
    v9 += 48;
  }

  while (v9 != 3840);
  *(a1 + 3856) = 0u;
  v11 = *a2;
  v12 = a2[1];
  *(a1 + 3872) = *a2;
  *(a1 + 3880) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    v11 = *a2;
  }

  if (!v11)
  {
    v14 = 0;
    *(a1 + 3888) = 0;
    v15 = a2[1];
    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v13 = sub_2D5658(v11);
  v14 = *a2;
  *(a1 + 3888) = v13;
  v15 = a2[1];
  if (v15)
  {
LABEL_9:
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_10:
  v16 = 0;
  *(a1 + 3896) = v14;
  *(a1 + 3904) = v15;
  do
  {
    v17 = a1 + v16;
    *(v17 + 3912) = 0;
    *(v17 + 3936) = 0;
    *(v17 + 3920) = 0;
    *(v17 + 3944) = 0;
    v16 += 48;
  }

  while (v16 != 3840);
  *(a1 + 7752) = 0u;
  v18 = *a2;
  v19 = a2[1];
  *(a1 + 7768) = *a2;
  *(a1 + 7776) = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    v18 = *a2;
  }

  if (!v18)
  {
    v21 = 0;
    *v6 = 0;
    v22 = a2[1];
    if (!v22)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v20 = sub_2D5658(v18);
  v21 = *a2;
  *v6 = v20;
  v22 = a2[1];
  if (v22)
  {
LABEL_16:
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_17:
  *(a1 + 7792) = v21;
  *(a1 + 7800) = v22;
  v23 = -3840;
  do
  {
    v24 = a1 + v23;
    *(v24 + 11648) = 0;
    *(v24 + 11672) = 0;
    *(v24 + 11656) = 0;
    *(v24 + 11680) = 0;
    v23 += 48;
  }

  while (v23);
  *(a1 + 11648) = 0u;
  v25 = *a2;
  v26 = a2[1];
  *(a1 + 11664) = *a2;
  *(a1 + 11672) = v26;
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    v25 = *a2;
  }

  if (v25)
  {
    LOBYTE(v25) = sub_2D5658(v25);
  }

  *(v6 + 3896) = v25;
  *(v6 + 3904) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  return a1;
}

void sub_3BFD98(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + v2);
  sub_1F1A8(v1 + v3);
  sub_3A0ED4(v1 + 3896);
  sub_3A0ED4(v1);
  _Unwind_Resume(a1);
}

void sub_3BFDC4(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + v2);
  sub_1F1A8(v1 + 3896);
  sub_3A0ED4(v1);
  _Unwind_Resume(a1);
}

void sub_3BFDE8(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + 3872);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3BFE04(uint64_t a1, void *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  *a1 = v4;
  *(a1 + 8) = v3;
  do
  {
    v6 = a1 + v5;
    *(v6 + 16) = 0;
    *(v6 + 40) = 0;
    *(v6 + 24) = 0;
    *(v6 + 48) = 0;
    v5 += 48;
  }

  while (v5 != 3840);
  *(a1 + 3856) = 0u;
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  *(a1 + 3872) = v8;
  *(a1 + 3880) = v7;
  do
  {
    v10 = a1 + v9;
    *(v10 + 3888) = 0;
    *(v10 + 3912) = 0;
    *(v10 + 3896) = 0;
    *(v10 + 3920) = 0;
    v9 += 48;
  }

  while (v9 != 3840);
  *(a1 + 7728) = 0u;
  v11 = *a2;
  v12 = a2[1];
  *(a1 + 7744) = *a2;
  *(a1 + 7752) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    v11 = *a2;
  }

  if (v11)
  {
    LOBYTE(v11) = sub_2D5658(v11);
  }

  *(a1 + 7760) = v11;
  return a1;
}

void sub_3BFEE4(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + 7744);
  sub_1F1A8(v1 + 3872);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3BFF0C(uint64_t a1, void *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  *a1 = v4;
  *(a1 + 8) = v3;
  do
  {
    v6 = a1 + v5;
    *(v6 + 16) = 0;
    *(v6 + 40) = 0;
    *(v6 + 24) = 0;
    *(v6 + 48) = 0;
    v5 += 48;
  }

  while (v5 != 3840);
  *(a1 + 3856) = 0u;
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  *(a1 + 3872) = v8;
  *(a1 + 3880) = v7;
  do
  {
    v10 = a1 + v9;
    *(v10 + 3888) = 0;
    *(v10 + 3912) = 0;
    *(v10 + 3896) = 0;
    *(v10 + 3920) = 0;
    v9 += 48;
  }

  while (v9 != 3840);
  *(a1 + 7728) = 0u;
  v11 = *a2;
  v12 = a2[1];
  *(a1 + 7744) = *a2;
  *(a1 + 7752) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    v11 = *a2;
  }

  if (v11)
  {
    LOBYTE(v11) = sub_2D5658(v11);
  }

  *(a1 + 7760) = v11;
  return a1;
}

void sub_3BFFEC(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + 7744);
  sub_1F1A8(v1 + 3872);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

char *sub_3C0014(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 1648) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1656) = v3;
    v4 = *(a1 + 1664);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1672) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1680) = v3;
    v4 = *(a1 + 1688);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1696) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1704) = v3;
    v4 = *(a1 + 1712);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1720) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1728) = v3;
    v4 = *(a1 + 1736);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 1704);
    v8 = *(a1 + 1680);
    v9 = *(a1 + 1656);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 1656);
    }

    v11 = 68;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 1680);
    }

    v13 = 69;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 1704);
    }

    v15 = *(a1 + 1728);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 70;
    }

    v18 = sub_2D52A4(*a1, 17, a2, 1);
    v19 = 71;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_3C01E8(v21);
  return 0;
}

uint64_t sub_3C01E8(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0x11u);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_3C02E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_3C0314(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 304) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 312) = v3;
    v4 = *(a1 + 320);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 328) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 336) = v3;
    v4 = *(a1 + 344);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 352) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 360) = v3;
    v4 = *(a1 + 368);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 376) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 384) = v3;
    v4 = *(a1 + 392);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 360);
    v8 = *(a1 + 336);
    v9 = *(a1 + 312);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 312);
    }

    v11 = 12;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 336);
    }

    v13 = 13;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 360);
    }

    v15 = *(a1 + 384);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 14;
    }

    v18 = sub_2D52A4(*a1, 3, a2, 1);
    v19 = 15;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_3C04E8(v21);
  return 0;
}

uint64_t sub_3C04E8(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(3u);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_3C05E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_3C0614(uint64_t a1, unsigned int a2, int a3)
{
  v21 = a3;
  v22 = a2;
  v20[0] = &v21;
  v20[1] = &v22;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_30;
  }

  if (*(a1 + 400) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 408) = v3;
    v4 = *(a1 + 416);
    if (!v4)
    {
      goto LABEL_30;
    }

    return v4 + *v4;
  }

  if (*(a1 + 424) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 432) = v3;
    v4 = *(a1 + 440);
    if (!v4)
    {
      goto LABEL_30;
    }

    return v4 + *v4;
  }

  if (*(a1 + 448) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 456) = v3;
    v4 = *(a1 + 464);
    if (!v4)
    {
      goto LABEL_30;
    }

    return v4 + *v4;
  }

  if (*(a1 + 472) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 480) = v3;
    v4 = *(a1 + 488);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 456);
    v8 = *(a1 + 432);
    v9 = *(a1 + 408);
    v10 = v9 < v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 408);
    }

    v11 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 432);
    }

    v12 = 16 * v10;
    if (!v11)
    {
      v12 = 17;
    }

    if (v7 >= v3)
    {
      v13 = v3;
    }

    else
    {
      v13 = *(a1 + 456);
    }

    v14 = *(a1 + 480);
    if (v7 >= v3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 18;
    }

    v17 = sub_2D52A4(*a1, 4, a2, 1);
    v18 = 19;
    if (v14 >= v13)
    {
      v18 = v15;
    }

    v19 = v6 + 24 * v18;
    *v19 = v22;
    *(v19 + 8) = *(a1 + 3856);
    *(v19 + 16) = v17;
    if (v17)
    {
      return v17 + *v17;
    }
  }

LABEL_30:
  sub_3C07E8(v20);
  return 0;
}

uint64_t sub_3C07E8(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(4u);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_3C08E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3C0914(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = 0;
  *a1 = v6;
  *(a1 + 8) = v5;
  do
  {
    v8 = a1 + v7;
    *(v8 + 16) = 0;
    *(v8 + 40) = 0;
    *(v8 + 24) = 0;
    *(v8 + 48) = 0;
    v7 += 48;
  }

  while (v7 != 3840);
  *(a1 + 3872) = 0;
  *(a1 + 3856) = 0u;
  v16 = 20;
  strcpy(__p, "ignore_flat_profiles");
  v9 = sub_5F9D0(a3, __p);
  if (v16 < 0)
  {
    v10 = v9;
    operator delete(*__p);
    v9 = v10;
  }

  *(a1 + 3874) = v9;
  v11 = sub_2B3284(a1, 1u, 1);
  if (v11)
  {
    v12 = &v11[-*v11];
    if (*v12 >= 0xFu)
    {
      if (*(v12 + 7))
      {
        v16 = 6;
        strcpy(__p, "branch");
        v13 = sub_5F8FC(a3, __p);
        if (v16 < 0)
        {
          operator delete(*__p);
        }

        *(a1 + 3872) = sub_3C0AA8(a1, v13);
      }
    }
  }

  return a1;
}

char *sub_3C0AA8(uint64_t a1, const void **a2)
{
  result = sub_2B3284(a1, 1u, 1);
  if (result)
  {
    v4 = result;
    v5 = &result[-*result];
    if (*v5 >= 0xFu)
    {
      v6 = *(v5 + 7);
      if (v6)
      {
        v7 = *&result[v6 + *&result[v6]];
        if (v7)
        {
          v8 = 0;
          do
          {
            v9 = (v4 - *v4);
            if (*v9 >= 0xFu && (v10 = v9[7]) != 0)
            {
              v11 = sub_3C0C84((v4 + v10 + *(v4 + v10)), v8);
              v13 = v11 + 1;
              v12 = *v11;
              if (v12 >= 0x17)
              {
                goto LABEL_9;
              }
            }

            else
            {
              v14 = sub_3C0C84(0, v8);
              v13 = v14 + 1;
              v12 = *v14;
              if (v12 >= 0x17)
              {
LABEL_9:
                operator new();
              }
            }

            HIBYTE(v23) = v12;
            if (v12)
            {
              memcpy(__p, v13, v12);
            }

            v15 = 0;
            *(__p + v12) = 0;
            v16 = *(a2 + 23);
            if (v16 >= 0)
            {
              v17 = *(a2 + 23);
            }

            else
            {
              v17 = a2[1];
            }

            v18 = HIBYTE(v23);
            v19 = SHIBYTE(v23);
            if (v23 < 0)
            {
              v18 = __p[1];
            }

            if (v17 == v18)
            {
              if (v16 >= 0)
              {
                v20 = a2;
              }

              else
              {
                v20 = *a2;
              }

              if (v23 >= 0)
              {
                v21 = __p;
              }

              else
              {
                v21 = __p[0];
              }

              v15 = memcmp(v20, v21, v17) == 0;
              if (v19 < 0)
              {
LABEL_26:
                operator delete(__p[0]);
                if (v15)
                {
                  return sub_3C0DD4(v8);
                }

                goto LABEL_30;
              }
            }

            else if (SHIBYTE(v23) < 0)
            {
              goto LABEL_26;
            }

            if (v15)
            {
              return sub_3C0DD4(v8);
            }

LABEL_30:
            v8 = (v8 + 1);
          }

          while (v7 != v8);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_3C0C84(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(" is out of range", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[a2 + 1] + a1[a2 + 1];
}

void sub_3C0D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3C0DD4(uint64_t result)
{
  if (result >= 0x10000)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(" failed", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_3C0E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void *sub_3C0F14(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3C0FB4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_3C0FD0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3) + a2;
    if (v6 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v10 = (8 * ((v4 - *a1) >> 3));
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v10, v11);
    v12 = v4 - v5;
    v13 = &v10[-(v4 - v5)];
    memcpy(v13, v5, v12);
    *a1 = v13;
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_3C11B4(uint64_t a1)
{
  sub_E80998(a1, &v3);
  sub_E80B18(a1, &v2);
  sub_E83C84(a1);
  sub_E839F4(a1);
  sub_E7A738(a1);
  sub_3C1D8C();
}

void sub_3C1BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1F1A8(&a19);
  sub_1F1A8(&a21);
  sub_3B889C(&a23);
  sub_36293C(&a34);
  sub_1A104(&a72);
  sub_3C52BC(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_3C1CD4()
{
  sub_1F1A8(&STACK[0x288]);
  sub_3B889C(&STACK[0x298]);
  if (LOBYTE(STACK[0x320]) == 1)
  {
    JUMPOUT(0x3C1C6CLL);
  }

  JUMPOUT(0x3C1C74);
}

void sub_3C1CF8()
{
  sub_3B889C(&STACK[0x298]);
  if (LOBYTE(STACK[0x320]) == 1)
  {
    JUMPOUT(0x3C1C6CLL);
  }

  JUMPOUT(0x3C1C74);
}

void sub_3C1D14()
{
  if (LOBYTE(STACK[0x320]) == 1)
  {
    JUMPOUT(0x3C1C6CLL);
  }

  JUMPOUT(0x3C1C74);
}

void sub_3C1D30()
{
  if (LOBYTE(STACK[0x398]) == 1)
  {
    JUMPOUT(0x3C1CA4);
  }

  JUMPOUT(0x3C1CACLL);
}

void sub_3C1D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1A104(&a72);
  sub_3C52BC(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_3C2F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_36293C(&STACK[0x360]);
  sub_361DEC(va);
  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  sub_37B31C(&STACK[0x4B0]);
  sub_389FCC(&STACK[0x650]);
  sub_5C010(v19 - 184);
  sub_1A104((v19 - 144));
  sub_3C52BC((v19 - 120));
  sub_36293C(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_3C31F4(uint64_t a1)
{
  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v107);
    sub_4A5C(&v107, "Parsed ", 7);
    v2 = std::ostream::operator<<();
    sub_4A5C(v2, " snapshots", 10);
    if ((v117 & 0x10) != 0)
    {
      v4 = v116;
      if (v116 < v113)
      {
        v116 = v113;
        v4 = v113;
      }

      v5 = v112;
      v3 = v4 - v112;
      if (v4 - v112 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_278;
      }
    }

    else
    {
      if ((v117 & 8) == 0)
      {
        v3 = 0;
        v106 = 0;
LABEL_13:
        *(&__dst + v3) = 0;
        sub_7E854(&__dst, 1u);
        if (v106 < 0)
        {
          operator delete(__dst);
        }

        if (v115 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v109);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_18;
      }

      v5 = v110[0];
      v3 = v111 - v110[0];
      if (v111 - v110[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_278:
        sub_3244();
      }
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v106 = v3;
    if (v3)
    {
      memmove(&__dst, v5, v3);
    }

    goto LABEL_13;
  }

LABEL_18:
  v6 = a1;
  v7 = *(a1 + 72);
  v100 = v6;
  v8 = (v6 + 80);
  if (v7 == (v6 + 80))
  {
    goto LABEL_46;
  }

  do
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_39;
    }

    sub_19594F8(&v107);
    sub_4A5C(&v107, "Parsed ", 7);
    v11 = std::ostream::operator<<();
    v12 = sub_4A5C(v11, " speeds for CBR (", 17);
    v13 = sub_38CDC0(v12, v7[28]);
    sub_4A5C(v13, ")", 1);
    if ((v117 & 0x10) != 0)
    {
      v15 = v116;
      v16 = &v112;
      if (v116 < v113)
      {
        v116 = v113;
        v15 = v113;
        v16 = &v112;
      }

      goto LABEL_28;
    }

    if ((v117 & 8) != 0)
    {
      v15 = v111;
      v16 = v110;
LABEL_28:
      v17 = *v16;
      v14 = v15 - *v16;
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      v106 = v15 - *v16;
      if (v14)
      {
        memmove(&__dst, v17, v14);
      }

      goto LABEL_34;
    }

    v14 = 0;
    v106 = 0;
LABEL_34:
    *(&__dst + v14) = 0;
    sub_7E854(&__dst, 1u);
    if (v106 < 0)
    {
      operator delete(__dst);
    }

    v107 = v9;
    *(&v107 + *(v9 - 3)) = v10;
    if (v115 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v109);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_39:
    v18 = *(v7 + 1);
    if (v18)
    {
      do
      {
        v19 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      do
      {
        v19 = *(v7 + 2);
        v20 = *v19 == v7;
        v7 = v19;
      }

      while (!v20);
    }

    v7 = v19;
  }

  while (v19 != v8);
  v7 = *(v100 + 72);
LABEL_46:
  if (v7 != v8)
  {
    while (2)
    {
      sub_3CA4F4("pathlets (", v7 + 28, ")", &__dst);
      if (!sub_7E7E4(1u))
      {
        goto LABEL_75;
      }

      sub_19594F8(&v107);
      v22 = sub_4A5C(&v107, "Parsed ", 7);
      v23 = *(v7 + 10);
      v119 = *(v7 + 9);
      v120 = v23;
      v118 = 100 * v23 / v119;
      sub_3CA790("/", " = ", "% ", &__dst, v102);
      if (v103 >= 0)
      {
        v24 = v102;
      }

      else
      {
        v24 = v102[0];
      }

      if (v103 >= 0)
      {
        v25 = v103;
      }

      else
      {
        v25 = v102[1];
      }

      sub_4A5C(v22, v24, v25);
      if (v103 < 0)
      {
        operator delete(v102[0]);
        v26 = v117;
        if ((v117 & 0x10) != 0)
        {
          goto LABEL_61;
        }

LABEL_58:
        if ((v26 & 8) != 0)
        {
          v28 = v111;
          v29 = v110;
          goto LABEL_64;
        }

        v27 = 0;
        v103 = 0;
      }

      else
      {
        v26 = v117;
        if ((v117 & 0x10) == 0)
        {
          goto LABEL_58;
        }

LABEL_61:
        v28 = v116;
        v29 = &v112;
        if (v116 < v113)
        {
          v116 = v113;
          v28 = v113;
          v29 = &v112;
        }

LABEL_64:
        v30 = *v29;
        v27 = v28 - *v29;
        if (v27 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v27 >= 0x17)
        {
          operator new();
        }

        v103 = v28 - *v29;
        if (v27)
        {
          memmove(v102, v30, v27);
        }
      }

      *(v102 + v27) = 0;
      sub_7E854(v102, 1u);
      if (v103 < 0)
      {
        operator delete(v102[0]);
      }

      v107 = v101;
      *(&v107 + *(v101 - 3)) = v21;
      if (v115 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v109);
      std::ostream::~ostream();
      std::ios::~ios();
LABEL_75:
      if (v106 < 0)
      {
        operator delete(__dst);
        v31 = *(v7 + 1);
        if (v31)
        {
          do
          {
LABEL_79:
            v32 = v31;
            v31 = *v31;
          }

          while (v31);
          goto LABEL_48;
        }
      }

      else
      {
        v31 = *(v7 + 1);
        if (v31)
        {
          goto LABEL_79;
        }
      }

      do
      {
        v32 = *(v7 + 2);
        v20 = *v32 == v7;
        v7 = v32;
      }

      while (!v20);
LABEL_48:
      v7 = v32;
      if (v32 == v8)
      {
        break;
      }

      continue;
    }
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v107);
    v33 = sub_4A5C(&v107, "Parsed ", 7);
    v35 = *(v100 + 144);
    v34 = *(v100 + 148);
    v103 = 9;
    strcpy(v102, "incidents");
    v119 = v35;
    v120 = v34;
    v36 = 100;
    if (v35)
    {
      v36 = 100 * v34 / v35;
    }

    v118 = v36;
    sub_3CA790("/", " = ", "% ", v102, &__dst);
    if ((v106 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if ((v106 & 0x80u) == 0)
    {
      v38 = v106;
    }

    else
    {
      v38 = v105;
    }

    sub_4A5C(v33, p_dst, v38);
    if (v106 < 0)
    {
      operator delete(__dst);
      if (v103 < 0)
      {
        goto LABEL_99;
      }

LABEL_95:
      v39 = v117;
      if ((v117 & 0x10) == 0)
      {
        goto LABEL_96;
      }

LABEL_100:
      v41 = v116;
      if (v116 < v113)
      {
        v116 = v113;
        v41 = v113;
      }

      v42 = v112;
      v40 = v41 - v112;
      if (v41 - v112 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_280;
      }
    }

    else
    {
      if ((v103 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }

LABEL_99:
      operator delete(v102[0]);
      v39 = v117;
      if ((v117 & 0x10) != 0)
      {
        goto LABEL_100;
      }

LABEL_96:
      if ((v39 & 8) == 0)
      {
        v40 = 0;
        v106 = 0;
        goto LABEL_108;
      }

      v42 = v110[0];
      v40 = v111 - v110[0];
      if (v111 - v110[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_280:
        sub_3244();
      }
    }

    if (v40 >= 0x17)
    {
      operator new();
    }

    v106 = v40;
    if (v40)
    {
      memmove(&__dst, v42, v40);
    }

LABEL_108:
    *(&__dst + v40) = 0;
    sub_7E854(&__dst, 1u);
    if (v106 < 0)
    {
      operator delete(__dst);
    }

    if (v115 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v109);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v107);
    sub_4A5C(&v107, "Computed ", 9);
    v43 = std::ostream::operator<<();
    sub_4A5C(v43, " closure area segments and ", 27);
    v44 = std::ostream::operator<<();
    sub_4A5C(v44, " NT area segments", 17);
    if ((v117 & 0x10) != 0)
    {
      v46 = v116;
      if (v116 < v113)
      {
        v116 = v113;
        v46 = v113;
      }

      v47 = v112;
      v45 = v46 - v112;
      if (v46 - v112 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_282;
      }
    }

    else
    {
      if ((v117 & 8) == 0)
      {
        v45 = 0;
        v106 = 0;
        goto LABEL_125;
      }

      v47 = v110[0];
      v45 = v111 - v110[0];
      if (v111 - v110[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_282:
        sub_3244();
      }
    }

    if (v45 >= 0x17)
    {
      operator new();
    }

    v106 = v45;
    if (v45)
    {
      memmove(&__dst, v47, v45);
    }

LABEL_125:
    *(&__dst + v45) = 0;
    sub_7E854(&__dst, 1u);
    if (v106 < 0)
    {
      operator delete(__dst);
    }

    if (v115 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v109);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v107);
    v48 = sub_4A5C(&v107, "Parsed ", 7);
    v50 = *(v100 + 120);
    v49 = *(v100 + 124);
    v103 = 6;
    strcpy(v102, "colors");
    v119 = v50;
    v120 = v49;
    v51 = 100;
    if (v50)
    {
      v51 = 100 * v49 / v50;
    }

    v118 = v51;
    sub_3CA790("/", " = ", "% ", v102, &__dst);
    if ((v106 & 0x80u) == 0)
    {
      v52 = &__dst;
    }

    else
    {
      v52 = __dst;
    }

    if ((v106 & 0x80u) == 0)
    {
      v53 = v106;
    }

    else
    {
      v53 = v105;
    }

    sub_4A5C(v48, v52, v53);
    if (v106 < 0)
    {
      operator delete(__dst);
      if (v103 < 0)
      {
        goto LABEL_145;
      }

LABEL_141:
      v54 = v117;
      if ((v117 & 0x10) == 0)
      {
        goto LABEL_142;
      }

LABEL_146:
      v56 = v116;
      if (v116 < v113)
      {
        v116 = v113;
        v56 = v113;
      }

      v57 = v112;
      v55 = v56 - v112;
      if (v56 - v112 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_284;
      }
    }

    else
    {
      if ((v103 & 0x80000000) == 0)
      {
        goto LABEL_141;
      }

LABEL_145:
      operator delete(v102[0]);
      v54 = v117;
      if ((v117 & 0x10) != 0)
      {
        goto LABEL_146;
      }

LABEL_142:
      if ((v54 & 8) == 0)
      {
        v55 = 0;
        v106 = 0;
        goto LABEL_154;
      }

      v57 = v110[0];
      v55 = v111 - v110[0];
      if (v111 - v110[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_284:
        sub_3244();
      }
    }

    if (v55 >= 0x17)
    {
      operator new();
    }

    v106 = v55;
    if (v55)
    {
      memmove(&__dst, v57, v55);
    }

LABEL_154:
    *(&__dst + v55) = 0;
    sub_7E854(&__dst, 1u);
    if (v106 < 0)
    {
      operator delete(__dst);
    }

    if (v115 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v109);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v107);
    sub_4A5C(&v107, "Computed ", 9);
    v58 = std::ostream::operator<<();
    sub_4A5C(v58, " closure crossing maneuver restrictions", 39);
    if ((v117 & 0x10) != 0)
    {
      v60 = v116;
      if (v116 < v113)
      {
        v116 = v113;
        v60 = v113;
      }

      v61 = v112;
      v59 = v60 - v112;
      if (v60 - v112 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_286;
      }
    }

    else
    {
      if ((v117 & 8) == 0)
      {
        v59 = 0;
        v106 = 0;
        goto LABEL_171;
      }

      v61 = v110[0];
      v59 = v111 - v110[0];
      if (v111 - v110[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_286:
        sub_3244();
      }
    }

    if (v59 >= 0x17)
    {
      operator new();
    }

    v106 = v59;
    if (v59)
    {
      memmove(&__dst, v61, v59);
    }

LABEL_171:
    *(&__dst + v59) = 0;
    sub_7E854(&__dst, 1u);
    if (v106 < 0)
    {
      operator delete(__dst);
    }

    if (v115 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v109);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v107);
    v62 = sub_4A5C(&v107, "Parsed ", 7);
    v64 = *(v100 + 132);
    v63 = *(v100 + 136);
    v103 = 11;
    strcpy(v102, "predictions");
    v119 = v64;
    v120 = v63;
    v65 = 100;
    if (v64)
    {
      v65 = 100 * v63 / v64;
    }

    v118 = v65;
    sub_3CA790("/", " = ", "% ", v102, &__dst);
    if ((v106 & 0x80u) == 0)
    {
      v66 = &__dst;
    }

    else
    {
      v66 = __dst;
    }

    if ((v106 & 0x80u) == 0)
    {
      v67 = v106;
    }

    else
    {
      v67 = v105;
    }

    sub_4A5C(v62, v66, v67);
    if (v106 < 0)
    {
      operator delete(__dst);
      if (v103 < 0)
      {
        goto LABEL_191;
      }

LABEL_187:
      v68 = v117;
      if ((v117 & 0x10) == 0)
      {
        goto LABEL_188;
      }

LABEL_192:
      v70 = v116;
      if (v116 < v113)
      {
        v116 = v113;
        v70 = v113;
      }

      v71 = v112;
      v69 = v70 - v112;
      if (v70 - v112 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_288;
      }
    }

    else
    {
      if ((v103 & 0x80000000) == 0)
      {
        goto LABEL_187;
      }

LABEL_191:
      operator delete(v102[0]);
      v68 = v117;
      if ((v117 & 0x10) != 0)
      {
        goto LABEL_192;
      }

LABEL_188:
      if ((v68 & 8) == 0)
      {
        v69 = 0;
        v106 = 0;
        goto LABEL_200;
      }

      v71 = v110[0];
      v69 = v111 - v110[0];
      if (v111 - v110[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_288:
        sub_3244();
      }
    }

    if (v69 >= 0x17)
    {
      operator new();
    }

    v106 = v69;
    if (v69)
    {
      memmove(&__dst, v71, v69);
    }

LABEL_200:
    *(&__dst + v69) = 0;
    sub_7E854(&__dst, 1u);
    if (v106 < 0)
    {
      operator delete(__dst);
    }

    if (v115 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v109);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v107);
    sub_4A5C(&v107, "Parsed ", 7);
    v72 = std::ostream::operator<<();
    sub_4A5C(v72, " hours of temperature forecast in ", 34);
    v73 = std::ostream::operator<<();
    v74 = sub_4A5C(v73, " ms, using ", 11);
    v75 = sub_71478(v74, *(v100 + 240));
    sub_4A5C(v75, ".", 1);
    if ((v117 & 0x10) != 0)
    {
      v77 = v116;
      if (v116 < v113)
      {
        v116 = v113;
        v77 = v113;
      }

      v78 = v112;
      v76 = v77 - v112;
      if (v77 - v112 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_290;
      }
    }

    else
    {
      if ((v117 & 8) == 0)
      {
        v76 = 0;
        v106 = 0;
        goto LABEL_217;
      }

      v78 = v110[0];
      v76 = v111 - v110[0];
      if (v111 - v110[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_290:
        sub_3244();
      }
    }

    if (v76 >= 0x17)
    {
      operator new();
    }

    v106 = v76;
    if (v76)
    {
      memmove(&__dst, v78, v76);
    }

LABEL_217:
    *(&__dst + v76) = 0;
    sub_7E854(&__dst, 1u);
    if (v106 < 0)
    {
      operator delete(__dst);
    }

    if (v115 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v109);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v107);
    sub_4A5C(&v107, "Parsed ", 7);
    v79 = std::ostream::operator<<();
    sub_4A5C(v79, " patches containing ", 20);
    v80 = std::ostream::operator<<();
    sub_4A5C(v80, " detours.", 9);
    if ((v117 & 0x10) != 0)
    {
      v82 = v116;
      if (v116 < v113)
      {
        v116 = v113;
        v82 = v113;
      }

      v83 = v112;
      v81 = v82 - v112;
      if (v82 - v112 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_292;
      }
    }

    else
    {
      if ((v117 & 8) == 0)
      {
        v81 = 0;
        v106 = 0;
        goto LABEL_234;
      }

      v83 = v110[0];
      v81 = v111 - v110[0];
      if (v111 - v110[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_292:
        sub_3244();
      }
    }

    if (v81 >= 0x17)
    {
      operator new();
    }

    v106 = v81;
    if (v81)
    {
      memmove(&__dst, v83, v81);
    }

LABEL_234:
    *(&__dst + v81) = 0;
    sub_7E854(&__dst, 1u);
    if (v106 < 0)
    {
      operator delete(__dst);
    }

    if (v115 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v109);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  if (!*(v100 + 264))
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_245;
    }

LABEL_241:
    sub_19594F8(&v107);
    sub_4A5C(&v107, "Parsed ", 7);
    v84 = std::ostream::operator<<();
    sub_4A5C(v84, " live EV charging stations in ", 30);
    v85 = std::ostream::operator<<();
    sub_4A5C(v85, " ms with mean report latency of ", 32);
    v86 = std::ostream::operator<<();
    sub_4A5C(v86, " s and encountered ", 19);
    v87 = std::ostream::operator<<();
    sub_4A5C(v87, " expired updates.", 17);
    if ((v117 & 0x10) != 0)
    {
      v90 = v116;
      if (v116 < v113)
      {
        v116 = v113;
        v90 = v113;
      }

      v91 = v112;
      v88 = v90 - v112;
      if (v90 - v112 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_294;
      }
    }

    else
    {
      if ((v117 & 8) == 0)
      {
        v88 = 0;
        v106 = 0;
        goto LABEL_255;
      }

      v91 = v110[0];
      v88 = v111 - v110[0];
      if (v111 - v110[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_294:
        sub_3244();
      }
    }

    if (v88 >= 0x17)
    {
      operator new();
    }

    v106 = v88;
    if (v88)
    {
      memmove(&__dst, v91, v88);
    }

LABEL_255:
    *(&__dst + v88) = 0;
    sub_7E854(&__dst, 1u);
    if (v106 < 0)
    {
      operator delete(__dst);
    }

    if (v115 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v109);
    std::ostream::~ostream();
    std::ios::~ios();
    result = sub_7E7E4(1u);
    if (!result)
    {
      return result;
    }

LABEL_260:
    sub_19594F8(&v107);
    sub_4A5C(&v107, "Timings (ms): [CBR speeds: ", 27);
    v92 = std::ostream::operator<<();
    sub_4A5C(v92, ", speeds: ", 10);
    v93 = std::ostream::operator<<();
    sub_4A5C(v93, ", predictions: ", 15);
    v94 = std::ostream::operator<<();
    sub_4A5C(v94, ", colors: ", 10);
    v95 = std::ostream::operator<<();
    sub_4A5C(v95, ", incidents: ", 13);
    v96 = std::ostream::operator<<();
    sub_4A5C(v96, "]", 1);
    if ((v117 & 0x10) != 0)
    {
      v98 = v116;
      if (v116 < v113)
      {
        v116 = v113;
        v98 = v113;
      }

      v99 = v112;
      v97 = v98 - v112;
      if (v98 - v112 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_296;
      }
    }

    else
    {
      if ((v117 & 8) == 0)
      {
        v97 = 0;
        v106 = 0;
LABEL_271:
        *(&__dst + v97) = 0;
        sub_7E854(&__dst, 1u);
        if (v106 < 0)
        {
          operator delete(__dst);
        }

        if (v115 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v109);
        std::ostream::~ostream();
        return std::ios::~ios();
      }

      v99 = v110[0];
      v97 = v111 - v110[0];
      if (v111 - v110[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_296:
        sub_3244();
      }
    }

    if (v97 >= 0x17)
    {
      operator new();
    }

    v106 = v97;
    if (v97)
    {
      memmove(&__dst, v99, v97);
    }

    goto LABEL_271;
  }

  if (sub_7E7E4(1u))
  {
    goto LABEL_241;
  }

LABEL_245:
  result = sub_7E7E4(1u);
  if (result)
  {
    goto LABEL_260;
  }

  return result;
}

void sub_3C5170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a25);
  _Unwind_Resume(a1);
}

void **sub_3C52BC(void **a1)
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
        v3 = sub_15F4790(v3 - 64);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_3C5318(uint64_t a1)
{
  sub_E80A18(a1, &v3);
  sub_E80BFC(a1, &v2);
  sub_E84090(a1);
  sub_E83A98(a1);
  sub_E7C52C(a1);
  sub_3C5EF0();
}

void sub_3C5D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1F1A8(&a19);
  sub_1F1A8(&a21);
  sub_3B889C(&a23);
  sub_36293C(&a34);
  sub_1A104(&a72);
  sub_3C52BC(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_3C5E38()
{
  sub_1F1A8(&STACK[0x288]);
  sub_3B889C(&STACK[0x298]);
  if (LOBYTE(STACK[0x320]) == 1)
  {
    JUMPOUT(0x3C5DD0);
  }

  JUMPOUT(0x3C5DD8);
}

void sub_3C5E5C()
{
  sub_3B889C(&STACK[0x298]);
  if (LOBYTE(STACK[0x320]) == 1)
  {
    JUMPOUT(0x3C5DD0);
  }

  JUMPOUT(0x3C5DD8);
}

void sub_3C5E78()
{
  if (LOBYTE(STACK[0x320]) == 1)
  {
    JUMPOUT(0x3C5DD0);
  }

  JUMPOUT(0x3C5DD8);
}

void sub_3C5E94()
{
  if (LOBYTE(STACK[0x398]) == 1)
  {
    JUMPOUT(0x3C5E08);
  }

  JUMPOUT(0x3C5E10);
}

void sub_3C5EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1A104(&a72);
  sub_3C52BC(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_3C70EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_36293C(&STACK[0x360]);
  sub_361DEC(va);
  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  sub_37B31C(&STACK[0x4B0]);
  sub_389FCC(&STACK[0x650]);
  sub_5C010(v19 - 184);
  sub_1A104((v19 - 144));
  sub_3C52BC((v19 - 120));
  sub_36293C(v18);
  _Unwind_Resume(a1);
}

void sub_3C7358(uint64_t a1)
{
  sub_E80A98(a1, &v3);
  sub_E80CE0(a1, &v2);
  sub_E84624(a1);
  sub_E83B3C(a1);
  sub_E80E0C(a1);
  sub_3C7F30();
}

void sub_3C7D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1F1A8(&a19);
  sub_1F1A8(&a21);
  sub_3B889C(&a23);
  sub_36293C(&a34);
  sub_1A104(&a72);
  sub_3C52BC(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_3C7E78()
{
  sub_1F1A8(&STACK[0x288]);
  sub_3B889C(&STACK[0x298]);
  if (LOBYTE(STACK[0x320]) == 1)
  {
    JUMPOUT(0x3C7E10);
  }

  JUMPOUT(0x3C7E18);
}

void sub_3C7E9C()
{
  sub_3B889C(&STACK[0x298]);
  if (LOBYTE(STACK[0x320]) == 1)
  {
    JUMPOUT(0x3C7E10);
  }

  JUMPOUT(0x3C7E18);
}

void sub_3C7EB8()
{
  if (LOBYTE(STACK[0x320]) == 1)
  {
    JUMPOUT(0x3C7E10);
  }

  JUMPOUT(0x3C7E18);
}

void sub_3C7ED4()
{
  if (LOBYTE(STACK[0x398]) == 1)
  {
    JUMPOUT(0x3C7E48);
  }

  JUMPOUT(0x3C7E50);
}

void sub_3C7EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1A104(&a72);
  sub_3C52BC(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_3C912C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_36293C(&STACK[0x360]);
  sub_361DEC(va);
  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  sub_37B31C(&STACK[0x4B0]);
  sub_389FCC(&STACK[0x650]);
  sub_5C010(v19 - 184);
  sub_1A104((v19 - 144));
  sub_3C52BC((v19 - 120));
  sub_36293C(v18);
  _Unwind_Resume(a1);
}

void sub_3C9398(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_E84654(a1);
  v10 = v9;
  v11 = sub_E83BE0(a1);
  v12 = sub_E7DD0C(a1);
  sub_E87540(a1, v59);
  sub_E87384(a1, v57);
  sub_E876FC(a1, v55);
  if ((v60 & 1) == 0 && (v58 & 1) == 0 && (v56 & 1) == 0)
  {
    memset(v34, 0, sizeof(v34));
    if (v58 == 1)
    {
      goto LABEL_63;
    }

    goto LABEL_52;
  }

  sub_3CD3AC(*a2, &v49);
  v13 = nullsub_1(*a2);
  v14 = v13[1];
  v47 = *v13;
  v48 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = sub_5056CC(v61, &v47);
  v16 = v48;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16, v15);
    std::__shared_weak_count::__release_weak(v16);
    if (v60 == 1)
    {
LABEL_9:
      v17 = nullsub_1(*a2);
      sub_39C16C(v17);
    }
  }

  else if (v60 == 1)
  {
    goto LABEL_9;
  }

  v18 = v49;
  v45 = v49;
  v46 = v50;
  if (v50)
  {
    atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v43 = v18;
  v44 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_505724(v61, &v43);
  v19 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    if (v58 == 1)
    {
LABEL_18:
      nullsub_1(*a2);
      sub_3A05E0();
    }
  }

  else if (v58 == 1)
  {
    goto LABEL_18;
  }

  v20 = v51;
  v41 = v51;
  v42 = v52;
  if (v52)
  {
    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = v20;
  v40 = v42;
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_505E60(v61, &v39);
  v21 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
    if (v56 == 1)
    {
LABEL_27:
      nullsub_1(*a2);
      sub_3A887C();
    }
  }

  else if (v56 == 1)
  {
    goto LABEL_27;
  }

  v22 = v53;
  v37 = v53;
  v38 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = v22;
  v36 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_50616C(v61, &v35);
  v23 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  sub_505A98(v61, v34);
  v24 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  std::mutex::~mutex(&v66);
  std::mutex::~mutex(&v65);
  sub_3B889C(v64);
  v27 = v63;
  if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
    v28 = v62;
    if (v62 != v61)
    {
LABEL_48:
      if (v28)
      {
        (*(*v28 + 40))(v28);
      }

      sub_3B889C(&v49);
      if ((v56 & 1) == 0)
      {
LABEL_51:
        if (v58 != 1)
        {
          goto LABEL_52;
        }

LABEL_63:
        sub_132A7D0(v57);
        if (v60 != 1)
        {
LABEL_53:
          v29 = a2[1];
          v32 = *a2;
          v33 = v29;
          if (!v29)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

LABEL_64:
        sub_1329B08(v59);
        v29 = a2[1];
        v32 = *a2;
        v33 = v29;
        if (!v29)
        {
LABEL_55:
          v30 = a3[1];
          v31[0] = *a3;
          v31[1] = v30;
          if (v30)
          {
            atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
          }

          sub_3AB390(a4, &v32, v31, v8, v10, v11, v12, v34);
        }

LABEL_54:
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
        goto LABEL_55;
      }

      goto LABEL_60;
    }
  }

  else
  {
    v28 = v62;
    if (v62 != v61)
    {
      goto LABEL_48;
    }
  }

  (*(*v28 + 32))(v28);
  sub_3B889C(&v49);
  if ((v56 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_60:
  sub_132B678(v55);
  if (v58 == 1)
  {
    goto LABEL_63;
  }

LABEL_52:
  if (v60 != 1)
  {
    goto LABEL_53;
  }

  goto LABEL_64;
}

void sub_3C9A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, int a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1F1A8(&a26);
  sub_1F1A8(&a30);
  sub_1F1A8(&a34);
  sub_3CAA9C(&a73);
  sub_3B889C(&a38);
  if (a55 == 1)
  {
    sub_132B678(&a48);
  }

  if (a64 == 1)
  {
    sub_132A7D0(&a57);
    if (a72 != 1)
    {
      goto LABEL_8;
    }
  }

  else if (a72 != 1)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

  sub_1329B08(&a66);
  _Unwind_Resume(a1);
}

void sub_3C9BC4(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_394BD0();
  v9 = sub_E80E30(a1);
  sub_E875AC(v57);
  sub_E873F0(v55);
  sub_E873F0(v53);
  if ((v58 & 1) == 0 && (v56 & 1) == 0 && (v54 & 1) == 0)
  {
    memset(v32, 0, sizeof(v32));
    if (v56 == 1)
    {
      goto LABEL_63;
    }

    goto LABEL_52;
  }

  sub_3CD3AC(*a2, &v47);
  v10 = nullsub_1(*a2);
  v11 = v10[1];
  v45 = *v10;
  v46 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = sub_5056CC(&__t, &v45);
  v13 = v46;
  if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13, v12);
    std::__shared_weak_count::__release_weak(v13);
    if (v58 == 1)
    {
LABEL_9:
      v14 = nullsub_1(*a2);
      sub_39C16C(v14);
    }
  }

  else if (v58 == 1)
  {
    goto LABEL_9;
  }

  v15 = v47;
  v43 = v47;
  v44 = v48;
  if (v48)
  {
    atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v41 = v15;
  v42 = v44;
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_505724(&__t, &v41);
  v16 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    if (v56 == 1)
    {
LABEL_18:
      nullsub_1(*a2);
      sub_3A05E0();
    }
  }

  else if (v56 == 1)
  {
    goto LABEL_18;
  }

  v17 = v49;
  v39 = v49;
  v40 = v50;
  if (v50)
  {
    atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v37 = v17;
  v38 = v40;
  if (v40)
  {
    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_505E60(&__t, &v37);
  v18 = v38;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    if (v54 == 1)
    {
LABEL_27:
      nullsub_1(*a2);
      sub_3A887C();
    }
  }

  else if (v54 == 1)
  {
    goto LABEL_27;
  }

  v19 = v51;
  v35 = v51;
  v36 = v52;
  if (v52)
  {
    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = v19;
  v34 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_50616C(&__t, &v33);
  v20 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  sub_505A98(&__t, v32);
  v21 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = v44;
  if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  std::mutex::~mutex(&v64);
  std::mutex::~mutex(&v63);
  sub_3B889C(v62);
  v24 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
    v25 = v60;
    if (v60 != &__t)
    {
LABEL_48:
      if (v25)
      {
        (*(v25->__d_.__rep_ + 40))(v25);
      }

      sub_3B889C(&v47);
      if ((v54 & 1) == 0)
      {
LABEL_51:
        if (v56 != 1)
        {
          goto LABEL_52;
        }

LABEL_63:
        sub_132A7D0(v55);
        if (v58 != 1)
        {
LABEL_53:
          v26 = a2[1];
          v30 = *a2;
          v31 = v26;
          if (!v26)
          {
            goto LABEL_55;
          }

          goto LABEL_54;
        }

LABEL_64:
        sub_1329B08(v57);
        v26 = a2[1];
        v30 = *a2;
        v31 = v26;
        if (!v26)
        {
LABEL_55:
          v27 = a3[1];
          v29[0] = *a3;
          v29[1] = v27;
          if (v27)
          {
            atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
          }

          __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          v28 = std::chrono::system_clock::to_time_t(&__t);
          sub_3AB390(a4, &v30, v29, v28 | (v28 << 32), 0, v8, v9, v32);
        }

LABEL_54:
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        goto LABEL_55;
      }

      goto LABEL_60;
    }
  }

  else
  {
    v25 = v60;
    if (v60 != &__t)
    {
      goto LABEL_48;
    }
  }

  (*(v25->__d_.__rep_ + 32))(v25);
  sub_3B889C(&v47);
  if ((v54 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_60:
  sub_132B678(v53);
  if (v56 == 1)
  {
    goto LABEL_63;
  }

LABEL_52:
  if (v58 != 1)
  {
    goto LABEL_53;
  }

  goto LABEL_64;
}

void sub_3CA284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, int a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1F1A8(&a26);
  sub_1F1A8(&a30);
  sub_1F1A8(&a34);
  sub_3CAA9C(&a73);
  sub_3B889C(&a38);
  if (a55 == 1)
  {
    sub_132B678(&a48);
  }

  if (a64 == 1)
  {
    sub_132A7D0(&a57);
    if (a72 != 1)
    {
      goto LABEL_8;
    }
  }

  else if (a72 != 1)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

  sub_1329B08(&a66);
  _Unwind_Resume(a1);
}

uint64_t sub_3CA3EC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = result;
    v6 = 8 * v4;
    do
    {
      v7 = *v3;
      v8 = *(*v3 + 16);
      if ((v8 & 1) == 0)
      {
        *(v7 + 16) = v8 | 1;
        v9 = *(v7 + 216);
        if (!v9)
        {
          v10 = *(v7 + 8);
          v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
          if (v10)
          {
            v11 = *v11;
          }

          v9 = sub_1617448(v11);
          *(v7 + 216) = v9;
        }

        *(v9 + 16) |= 1u;
        v12 = *(v9 + 8);
        v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
        if (v12)
        {
          v13 = *v13;
        }

        sub_194EA1C((v9 + 96), "request_snapshot", v13);
        *(v7 + 16) |= 1u;
        result = *(v7 + 216);
        if (!result)
        {
          v14 = *(v7 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          result = sub_1617448(v15);
          *(v7 + 216) = result;
        }

        *(result + 16) |= 0x80u;
        *(result + 152) = v5;
      }

      ++v3;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_3CA4F4@<X0>(const char *a1@<X0>, unsigned __int8 *a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v17);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v18, a1, v8);
  v10 = sub_38CDC0(v9, *a2);
  v11 = strlen(a3);
  sub_4A5C(v10, a3, v11);
  if ((v28 & 0x10) != 0)
  {
    v13 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v13 = v24;
    }

    v14 = v23;
    v12 = v13 - v23;
    if (v13 - v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v12 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v14 = v21;
    v12 = v22 - v21;
    if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a4[23] = v12;
  if (v12)
  {
    memmove(a4, v14, v12);
  }

LABEL_12:
  a4[v12] = 0;
  v18 = v15;
  if (v26 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_3CA77C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3CA790@<X0>(const char *a1@<X1>, const char *a2@<X3>, const char *a3@<X5>, uint64_t a4@<X6>, _BYTE *a5@<X8>)
{
  sub_D7B0(v25);
  v10 = std::ostream::operator<<();
  v11 = strlen(a1);
  sub_4A5C(v10, a1, v11);
  v12 = std::ostream::operator<<();
  v13 = strlen(a2);
  sub_4A5C(v12, a2, v13);
  v14 = std::ostream::operator<<();
  v15 = strlen(a3);
  v16 = sub_4A5C(v14, a3, v15);
  v17 = *(a4 + 23);
  if (v17 >= 0)
  {
    v18 = a4;
  }

  else
  {
    v18 = *a4;
  }

  if (v17 >= 0)
  {
    v19 = *(a4 + 23);
  }

  else
  {
    v19 = *(a4 + 8);
  }

  sub_4A5C(v16, v18, v19);
  if ((v35 & 0x10) != 0)
  {
    v21 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v21 = v31;
    }

    v22 = v30;
    v20 = v21 - v30;
    if (v21 - v30 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v35 & 8) == 0)
    {
      v20 = 0;
      a5[23] = 0;
      goto LABEL_18;
    }

    v22 = v28;
    v20 = v29 - v28;
    if ((v29 - v28) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v20 >= 0x17)
  {
    operator new();
  }

  a5[23] = v20;
  if (v20)
  {
    memmove(a5, v22, v20);
  }

LABEL_18:
  a5[v20] = 0;
  v25[2] = v23;
  if (v33 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v27);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_3CAA88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3CAA9C(uint64_t a1)
{
  std::mutex::~mutex((a1 + 200));
  std::mutex::~mutex((a1 + 136));
  sub_3B889C((a1 + 56));
  v2 = *(a1 + 48);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 24);
    if (v3 != a1)
    {
      goto LABEL_4;
    }

LABEL_8:
    (*(*v3 + 32))(v3);
    return a1;
  }

  v3 = *(a1 + 24);
  if (v3 == a1)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void sub_3CAC38(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  sub_5F328(a1 + 16);
  sub_5F328(a1 + 56);
  sub_5F328(a1 + 96);
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 850045863;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 850045863;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 850045863;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 850045863;
  *(a1 + 464) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 488) = 850045863;
  *(a1 + 544) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 560) = 2048;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0;
  sub_3CFBE0((a1 + 552), 0x800uLL, 0, 0x800uLL, 0);
  *(a1 + 592) = xmmword_22918E0;
  *(a1 + 608) = 0;
  *(a1 + 624) = 0;
  *(a1 + 616) = 0;
  sub_3BBD10((a1 + 592), 0x800uLL, 0, 0x800uLL, 0);
  *(a1 + 632) = 0;
  *(a1 + 640) = 2048;
  *(a1 + 648) = 0;
  *(a1 + 664) = 0;
  *(a1 + 656) = 0;
  sub_3D0118((a1 + 632), 0x800uLL, 0, 0x800uLL, 0);
  *(a1 + 672) = xmmword_22918E0;
  *(a1 + 688) = 0;
  *(a1 + 704) = 0;
  *(a1 + 696) = 0;
  sub_3BD19C((a1 + 672), 0x800uLL, 0, 0x800uLL, 0);
  *(a1 + 712) = 0;
  *(a1 + 720) = 2048;
  *(a1 + 728) = 0;
  *(a1 + 744) = 0;
  *(a1 + 736) = 0;
  sub_3BD19C((a1 + 712), 0x800uLL, 0, 0x800uLL, 0);
  *(a1 + 752) = xmmword_22918E0;
  *(a1 + 768) = 0;
  *(a1 + 784) = 0;
  *(a1 + 776) = 0;
  sub_3D0650((a1 + 752), 0x800uLL, 0, 0x800uLL, 0);
  *(a1 + 792) = 0;
  *(a1 + 800) = 2048;
  *(a1 + 808) = 0;
  *(a1 + 824) = 0;
  *(a1 + 816) = 0;
  sub_3D0BC8((a1 + 792), 0x800uLL, 0, 0x800uLL, 0);
  sub_3D5924(a1 + 832);
  *(a1 + 992) = off_2669A20;
  operator new();
}

void sub_3CB1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, std::mutex *a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_1F1A8(v33);
  sub_3CBE90((v29 + 1376));
  sub_3D21DC(v32);
  std::mutex::~mutex((v29 + 1304));
  sub_3CBEF8((v29 + 1296));
  sub_34BE0((v29 + 1272));
  sub_34BE0((v29 + 1248));
  sub_1F1A8(v29 + 1232);
  std::mutex::~mutex((v29 + 1168));
  sub_3B889C((v29 + 1088));
  sub_1F1A8(v29 + 1072);
  sub_3CBF4C(v35);
  sub_3D251C(v29 + 832);
  sub_3CC088(v29 + 792);
  sub_3CC0F0(v29 + 752);
  sub_3CC188(v29 + 712);
  sub_3CC188(v29 + 672);
  sub_3CC220(v29 + 632);
  sub_3CC288(v29 + 592);
  sub_3CC2F0(v31 + 416);
  std::mutex::~mutex((v31 + 352));
  std::mutex::~mutex((v31 + 288));
  sub_3D20F4((v29 + 400));
  std::mutex::~mutex(v34);
  sub_3D20F4((v29 + 312));
  std::mutex::~mutex(a9);
  sub_3D20F4((v29 + 224));
  std::mutex::~mutex(a10);
  sub_3CC358(a11);
  sub_3CC3AC((v31 + 8));
  sub_3CC400(v31);
  sub_5C010(v29 + 96);
  sub_5C010(v29 + 56);
  sub_5C010(v30);
  sub_1F1A8(v29);
  _Unwind_Resume(a1);
}