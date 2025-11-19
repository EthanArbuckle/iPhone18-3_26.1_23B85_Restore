void sub_2A156C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2A1758(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v5 = (*(a1 + 48))(*(a1 + 16), *(a1 + 24));
  v6 = v2(a1 + 8, &v5);
  return v3(&v6, a1 + 32);
}

void sub_2A17C0(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_2732E08, memory_order_acquire))
  {
    goto LABEL_2;
  }

  v1 = a1;
  v2 = __cxa_guard_acquire(&qword_2732E08);
  a1 = v1;
  if (!v2)
  {
    goto LABEL_2;
  }

  *&v15.__r_.__value_.__l.__data_ = *"c";
  v15.__r_.__value_.__r.__words[2] = 0x100000000000000;
  sub_23E08("((", &v15, &__p);
  sub_30F54(")o(", &__p, &v17);
  v14 = 0x100000000000000;
  *__s = *"v";
  v3 = std::string::append(&v17, __s, 1uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("o", &v18, &v19);
  v12 = 0x100000000000000;
  *v11 = *"v";
  v5 = std::string::append(&v19, v11, 1uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_30F54("))o(", &v20, &v21);
  v10 = 0x100000000000000;
  *v9 = *"c";
  v7 = std::string::append(&v21, v9, 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  sub_30F54(")", &v22, &xmmword_2732DF0);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*v9);
  if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(*v11);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v18.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*__s);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_27:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    operator delete(v15.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

LABEL_26:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  __cxa_guard_release(&qword_2732E08);
  a1 = v1;
LABEL_2:
  if (byte_2732E07 < 0)
  {
    sub_325C(a1, xmmword_2732DF0, *(&xmmword_2732DF0 + 1));
  }

  else
  {
    *a1 = xmmword_2732DF0;
    *(a1 + 16) = unk_2732E00;
  }
}

void sub_2A1AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 - 25) < 0)
  {
    operator delete(*(v46 - 48));
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v46 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v46 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v46 - 73) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(v46 - 72));
  if ((*(v46 - 73) & 0x80000000) == 0)
  {
LABEL_5:
    if ((a25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(v46 - 96));
  if ((a25 & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v46 - 97) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a20);
  if ((*(v46 - 97) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v46 - 121) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(v46 - 120));
  if ((*(v46 - 121) & 0x80000000) == 0)
  {
LABEL_8:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v46 - 144));
  if ((a32 & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(v46 - 145) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a27);
  if ((*(v46 - 145) & 0x80000000) == 0)
  {
LABEL_10:
    if ((a46 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(*(v46 - 168));
  if ((a46 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a41);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_12:
    __cxa_guard_abort(&qword_2732E08);
    _Unwind_Resume(a1);
  }

LABEL_23:
  operator delete(a34);
  __cxa_guard_abort(&qword_2732E08);
  _Unwind_Resume(a1);
}

uint64_t sub_2A1C40(uint64_t a1)
{
  *a1 = off_265C300;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 48) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
        if (*(v3 - 49) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 72));
        }
      }

      else if (*(v3 - 49) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 80;
      if (v3 == v2)
      {
        v4 = *(a1 + 40);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  sub_252664(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_2A1CF8(uint64_t a1)
{
  *a1 = off_265C2A0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 48) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
        if (*(v3 - 49) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 72));
        }
      }

      else if (*(v3 - 49) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 80;
      if (v3 == v2)
      {
        v4 = *(a1 + 40);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  sub_252664(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_2A1DB0(uint64_t a1)
{
  *a1 = off_265C1E0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
    sub_42728(a1 + 24);
  }

  else
  {
    sub_42728(a1 + 24);
  }

  return a1;
}

uint64_t sub_2A1E20(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_2A1E84(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 73);
        v3 -= 12;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_2A1F08(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4096;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_2A1FD4(void **a1)
{
  sub_BFCF4(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_2A204C(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
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
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  v6 = a1[5];
  if (v6)
  {
    v7 = a1[6];
    v8 = a1[5];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 9);
        v7 -= 4;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a1[5];
    }

    a1[6] = v6;
    operator delete(v8);
  }

  v10 = a1[2];
  if (v10)
  {
    v11 = a1[3];
    v12 = a1[2];
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 9);
        v11 -= 4;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = a1[2];
    }

    a1[3] = v10;
    operator delete(v12);
  }

  return a1;
}

uint64_t sub_2A2150(uint64_t a1)
{
  v4 = a1 + 296;
  v2 = *(a1 + 296);
  v3 = *(v4 + 8);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        (*(*v6 + 8))(v2[v5]);
        v2 = *(a1 + 296);
        v3 = *(a1 + 304);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  sub_7E724(a1 + 272, *(a1 + 280));
  if (*(a1 + 264))
  {
    v7 = *(a1 + 256);
    v8 = *(*(a1 + 248) + 8);
    v9 = *v7;
    *(v9 + 8) = v8;
    *v8 = v9;
    *(a1 + 264) = 0;
    if (v7 != (a1 + 248))
    {
      do
      {
        v15 = *(v7 + 1);
        if (v7[39] < 0)
        {
          v16 = v7;
          operator delete(*(v7 + 2));
          v7 = v16;
        }

        operator delete(v7);
        v7 = v15;
      }

      while (v15 != (a1 + 248));
    }
  }

  if (*(a1 + 240))
  {
    v10 = *(a1 + 232);
    v11 = *(*(a1 + 224) + 8);
    v12 = *v10;
    *(v12 + 8) = v11;
    *v11 = v12;
    *(a1 + 240) = 0;
    if (v10 != (a1 + 224))
    {
      do
      {
        v13 = v10[1];
        operator delete(v10);
        v10 = v13;
      }

      while (v13 != (a1 + 224));
    }
  }

  sub_7E724(a1 + 192, *(a1 + 200));
  sub_7E724(a1 + 160, *(a1 + 168));
  sub_7E724(a1 + 128, *(a1 + 136));
  sub_7E724(a1 + 96, *(a1 + 104));
  sub_7E724(a1 + 64, *(a1 + 72));
  sub_7E724(a1 + 32, *(a1 + 40));
  sub_7E724(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_2A22E4(uint64_t a1)
{
  *(a1 + 1464) = off_265C300;
  v2 = *(a1 + 1504);
  if (v2)
  {
    v3 = *(a1 + 1512);
    v4 = *(a1 + 1504);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 1512) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
        if (*(v3 - 49) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 72));
        }
      }

      else if (*(v3 - 49) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 80;
      if (v3 == v2)
      {
        v4 = *(a1 + 1504);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  sub_252664(a1 + 1480, *(a1 + 1488));
  *(a1 + 1400) = off_265C2A0;
  v5 = *(a1 + 1440);
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = *(a1 + 1448);
  v7 = *(a1 + 1440);
  if (v6 != v5)
  {
    while (1)
    {
      if (*(v6 - 9) < 0)
      {
        operator delete(*(v6 - 32));
        if (*(v6 - 49) < 0)
        {
LABEL_20:
          operator delete(*(v6 - 72));
        }
      }

      else if (*(v6 - 49) < 0)
      {
        goto LABEL_20;
      }

      v6 -= 80;
      if (v6 == v5)
      {
        v7 = *(a1 + 1440);
        break;
      }
    }
  }

  *(a1 + 1448) = v5;
  operator delete(v7);
LABEL_23:
  sub_252664(a1 + 1416, *(a1 + 1424));
  *(a1 + 1352) = off_265C240;
  v8 = *(a1 + 1376);
  if (v8)
  {
    *(a1 + 1384) = v8;
    operator delete(v8);
  }

  *(a1 + 1240) = off_265C1E0;
  if (*(a1 + 1343) < 0)
  {
    operator delete(*(a1 + 1320));
  }

  sub_42728(a1 + 1264);
  *(a1 + 1208) = off_265C168;
  sub_25332C(a1 + 1216, *(a1 + 1224));
  *(a1 + 1136) = off_265C050;
  sub_7E724(a1 + 1152, *(a1 + 1160));
  v9 = *(a1 + 1080);
  if (v9)
  {
    *(a1 + 1088) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 1056);
  if (v10)
  {
    *(a1 + 1064) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 1032);
  if (v11)
  {
    *(a1 + 1040) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 1008);
  if (v12)
  {
    *(a1 + 1016) = v12;
    operator delete(v12);
  }

  if (*(a1 + 927) < 0)
  {
    operator delete(*(a1 + 904));
  }

  v13 = *(a1 + 880);
  if (v13)
  {
    v14 = *(a1 + 888);
    v15 = *(a1 + 880);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 73);
        v14 -= 12;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = *(a1 + 880);
    }

    *(a1 + 888) = v13;
    operator delete(v15);
  }

  if (*(a1 + 871) < 0)
  {
    operator delete(*(a1 + 848));
  }

  sub_7E724(a1 + 824, *(a1 + 832));
  sub_7E724(a1 + 800, *(a1 + 808));
  sub_252664(a1 + 776, *(a1 + 784));
  sub_252664(a1 + 752, *(a1 + 760));
  sub_252664(a1 + 728, *(a1 + 736));
  sub_7E724(a1 + 704, *(a1 + 712));
  sub_2A1F08(a1 + 600);
  v17 = (a1 + 552);
  sub_BFCF4((a1 + 552));
  v18 = *(a1 + 560);
  v19 = *(a1 + 568);
  if (v18 != v19)
  {
    do
    {
      v20 = *v18++;
      operator delete(v20);
    }

    while (v18 != v19);
    v18 = *(a1 + 560);
    v19 = *(a1 + 568);
  }

  if (v19 != v18)
  {
    *(a1 + 568) = v19 + ((v18 - v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*v17)
  {
    operator delete(*v17);
  }

  sub_2A204C((a1 + 464));
  v21 = *(a1 + 440);
  if (v21)
  {
    v22 = *(a1 + 448);
    v23 = *(a1 + 440);
    if (v22 != v21)
    {
      do
      {
        v22 = sub_B3588(v22 - 1);
      }

      while (v22 != v21);
      v23 = *(a1 + 440);
    }

    *(a1 + 448) = v21;
    operator delete(v23);
  }

  sub_7E724(a1 + 360, *(a1 + 368));
  sub_7E724(a1 + 320, *(a1 + 328));
  sub_7E724(a1 + 296, *(a1 + 304));
  sub_7E724(a1 + 272, *(a1 + 280));
  sub_7E724(a1 + 248, *(a1 + 256));
  sub_7E724(a1 + 224, *(a1 + 232));
  sub_7E724(a1 + 200, *(a1 + 208));
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_61:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

LABEL_66:
      operator delete(*(a1 + 48));
      v24 = *a1;
      if (!*a1)
      {
        return a1;
      }

      goto LABEL_67;
    }
  }

  else if ((*(a1 + 135) & 0x80000000) == 0)
  {
    goto LABEL_61;
  }

  operator delete(*(a1 + 112));
  if (*(a1 + 71) < 0)
  {
    goto LABEL_66;
  }

LABEL_62:
  v24 = *a1;
  if (!*a1)
  {
    return a1;
  }

LABEL_67:
  v26 = *(a1 + 8);
  v27 = v24;
  if (v26 != v24)
  {
    do
    {
      if (*(v26 - 9) < 0)
      {
        operator delete(*(v26 - 4));
      }

      v26 -= 5;
    }

    while (v26 != v24);
    v27 = *a1;
  }

  *(a1 + 8) = v24;
  operator delete(v27);
  return a1;
}

uint64_t sub_2A277C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + 8;
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_64;
  }

  v9 = a1 + 8;
  do
  {
    v10 = *(v8 + 55);
    v14 = v10;
    v15 = *(v8 + 40);
    if ((v10 & 0x80u) == 0)
    {
      v16 = *(v8 + 55);
    }

    else
    {
      v16 = *(v8 + 40);
    }

    v17 = *(a2 + 23);
    v18 = v17;
    v19 = *(a2 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = *(a2 + 8);
    }

    if (v20 >= v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v20;
    }

    if (v21)
    {
      v22 = 0;
      while (1)
      {
        if (*(v8 + 55) >= 0)
        {
          v23 = v8 + 32;
        }

        else
        {
          v23 = *(v8 + 32);
        }

        v24 = __tolower(*(v23 + v22));
        if (*(a2 + 23) >= 0)
        {
          v25 = a2;
        }

        else
        {
          v25 = *a2;
        }

        v26 = __tolower(*(v25 + v22));
        if (v24 > v26)
        {
          v9 = v8;
          goto LABEL_12;
        }

        if (v24 < v26)
        {
          break;
        }

        if (v21 == ++v22)
        {
          v10 = *(v8 + 55);
          v15 = *(v8 + 40);
          v17 = *(a2 + 23);
          v19 = *(a2 + 8);
          v18 = *(a2 + 23);
          v14 = *(v8 + 55);
          goto LABEL_3;
        }
      }

      v8 += 8;
    }

    else
    {
LABEL_3:
      if (v14 < 0)
      {
        v10 = v15;
      }

      if (v18 >= 0)
      {
        v11 = v17;
      }

      else
      {
        v11 = v19;
      }

      v12 = v10 >= v11;
      v13 = v10 < v11;
      if (v12)
      {
        v9 = v8;
      }

      v8 += 8 * v13;
    }

LABEL_12:
    v8 = *v8;
  }

  while (v8);
  if (v9 == v7)
  {
    goto LABEL_64;
  }

  v27 = *(a2 + 23);
  v28 = v27;
  v29 = *(a2 + 8);
  if ((v27 & 0x80u) == 0)
  {
    v30 = *(a2 + 23);
  }

  else
  {
    v30 = *(a2 + 8);
  }

  v31 = *(v9 + 55);
  v32 = v31;
  v33 = *(v9 + 40);
  if ((v31 & 0x80u) == 0)
  {
    v34 = *(v9 + 55);
  }

  else
  {
    v34 = *(v9 + 40);
  }

  if (v34 >= v30)
  {
    v35 = v30;
  }

  else
  {
    v35 = v34;
  }

  if (!v35)
  {
LABEL_58:
    if (v28 < 0)
    {
      v27 = v29;
    }

    if (v32 >= 0)
    {
      v41 = v31;
    }

    else
    {
      v41 = v33;
    }

    if (v27 >= v41)
    {
      return 1;
    }

LABEL_64:
    v42 = sub_2A29DC(a1, a2);
    *(v42 + 56) = a4;
    *(v42 + 64) = a3;
    ++*(a1 + 24);
    return 1;
  }

  v36 = 0;
  while (1)
  {
    v37 = *(a2 + 23) >= 0 ? a2 : *a2;
    v38 = __tolower(*(v37 + v36));
    v39 = *(v9 + 55) >= 0 ? v9 + 32 : *(v9 + 32);
    v40 = __tolower(*(v39 + v36));
    if (v38 > v40)
    {
      return 1;
    }

    if (v38 < v40)
    {
      goto LABEL_64;
    }

    if (v35 == ++v36)
    {
      v27 = *(a2 + 23);
      v29 = *(a2 + 8);
      v31 = *(v9 + 55);
      v33 = *(v9 + 40);
      v32 = *(v9 + 55);
      v28 = *(a2 + 23);
      goto LABEL_58;
    }
  }
}

uint64_t sub_2A29DC(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_64:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      v6 = v2 + 4;
      v7 = *(a2 + 23);
      v8 = a2[1];
      v9 = (v7 & 0x80u) == 0 ? *(a2 + 23) : a2[1];
      v10 = *(v5 + 55);
      v11 = v5[5];
      v12 = (v10 & 0x80u) == 0 ? *(v5 + 55) : v5[5];
      v13 = v12 >= v9 ? v9 : v12;
      if (v13)
      {
        break;
      }

LABEL_25:
      if ((v7 & 0x80u) == 0)
      {
        v19 = v7;
      }

      else
      {
        v19 = v8;
      }

      if ((v10 & 0x80u) == 0)
      {
        v20 = v10;
      }

      else
      {
        v20 = v11;
      }

      if (v19 >= v20)
      {
        goto LABEL_34;
      }

LABEL_3:
      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_64;
      }
    }

    v14 = 0;
    while (1)
    {
      v15 = *(a2 + 23) >= 0 ? a2 : *a2;
      v16 = __tolower(*(v15 + v14));
      v17 = *(v5 + 55) >= 0 ? v6 : v5[4];
      v18 = __tolower(*(v17 + v14));
      if (v16 > v18)
      {
        break;
      }

      if (v16 < v18)
      {
        goto LABEL_3;
      }

      if (v13 == ++v14)
      {
        v7 = *(a2 + 23);
        v8 = a2[1];
        v10 = *(v5 + 55);
        v11 = v5[5];
        goto LABEL_25;
      }
    }

    v10 = *(v5 + 55);
    v11 = v5[5];
    v7 = *(a2 + 23);
    v8 = a2[1];
LABEL_34:
    if ((v10 & 0x80u) == 0)
    {
      v21 = v10;
    }

    else
    {
      v21 = v11;
    }

    if ((v7 & 0x80u) == 0)
    {
      v22 = v7;
    }

    else
    {
      v22 = v8;
    }

    if (v22 >= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*(v5 + 55) >= 0)
        {
          v25 = v6;
        }

        else
        {
          v25 = v5[4];
        }

        v26 = __tolower(*(v25 + i));
        if (*(a2 + 23) >= 0)
        {
          v27 = a2;
        }

        else
        {
          v27 = *a2;
        }

        v28 = __tolower(*(v27 + i));
        if (v26 > v28)
        {
          goto LABEL_62;
        }

        if (v26 < v28)
        {
          goto LABEL_60;
        }
      }

      v10 = *(v5 + 55);
      v11 = v5[5];
      v7 = *(a2 + 23);
      v8 = a2[1];
    }

    if ((v10 & 0x80u) != 0)
    {
      v10 = v11;
    }

    if ((v7 & 0x80u) != 0)
    {
      v7 = v8;
    }

    if (v10 >= v7)
    {
      break;
    }

LABEL_60:
    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_64;
    }
  }

LABEL_62:
  if (!*v3)
  {
    goto LABEL_64;
  }

  return *v3;
}

void sub_2A2C84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7E6BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2A2C98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + 8;
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_64;
  }

  v9 = a1 + 8;
  do
  {
    v10 = *(v8 + 55);
    v14 = v10;
    v15 = *(v8 + 40);
    if ((v10 & 0x80u) == 0)
    {
      v16 = *(v8 + 55);
    }

    else
    {
      v16 = *(v8 + 40);
    }

    v17 = *(a2 + 23);
    v18 = v17;
    v19 = *(a2 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = *(a2 + 8);
    }

    if (v20 >= v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v20;
    }

    if (v21)
    {
      v22 = 0;
      while (1)
      {
        if (*(v8 + 55) >= 0)
        {
          v23 = v8 + 32;
        }

        else
        {
          v23 = *(v8 + 32);
        }

        v24 = __tolower(*(v23 + v22));
        if (*(a2 + 23) >= 0)
        {
          v25 = a2;
        }

        else
        {
          v25 = *a2;
        }

        v26 = __tolower(*(v25 + v22));
        if (v24 > v26)
        {
          v9 = v8;
          goto LABEL_12;
        }

        if (v24 < v26)
        {
          break;
        }

        if (v21 == ++v22)
        {
          v10 = *(v8 + 55);
          v15 = *(v8 + 40);
          v17 = *(a2 + 23);
          v19 = *(a2 + 8);
          v18 = *(a2 + 23);
          v14 = *(v8 + 55);
          goto LABEL_3;
        }
      }

      v8 += 8;
    }

    else
    {
LABEL_3:
      if (v14 < 0)
      {
        v10 = v15;
      }

      if (v18 >= 0)
      {
        v11 = v17;
      }

      else
      {
        v11 = v19;
      }

      v12 = v10 >= v11;
      v13 = v10 < v11;
      if (v12)
      {
        v9 = v8;
      }

      v8 += 8 * v13;
    }

LABEL_12:
    v8 = *v8;
  }

  while (v8);
  if (v9 == v7)
  {
    goto LABEL_64;
  }

  v27 = *(a2 + 23);
  v28 = v27;
  v29 = *(a2 + 8);
  if ((v27 & 0x80u) == 0)
  {
    v30 = *(a2 + 23);
  }

  else
  {
    v30 = *(a2 + 8);
  }

  v31 = *(v9 + 55);
  v32 = v31;
  v33 = *(v9 + 40);
  if ((v31 & 0x80u) == 0)
  {
    v34 = *(v9 + 55);
  }

  else
  {
    v34 = *(v9 + 40);
  }

  if (v34 >= v30)
  {
    v35 = v30;
  }

  else
  {
    v35 = v34;
  }

  if (!v35)
  {
LABEL_58:
    if (v28 < 0)
    {
      v27 = v29;
    }

    if (v32 >= 0)
    {
      v41 = v31;
    }

    else
    {
      v41 = v33;
    }

    if (v27 >= v41)
    {
      return 1;
    }

LABEL_64:
    v42 = sub_2A2EF8(a1, a2);
    *(v42 + 56) = a4;
    *(v42 + 64) = a3;
    ++*(a1 + 24);
    return 1;
  }

  v36 = 0;
  while (1)
  {
    v37 = *(a2 + 23) >= 0 ? a2 : *a2;
    v38 = __tolower(*(v37 + v36));
    v39 = *(v9 + 55) >= 0 ? v9 + 32 : *(v9 + 32);
    v40 = __tolower(*(v39 + v36));
    if (v38 > v40)
    {
      return 1;
    }

    if (v38 < v40)
    {
      goto LABEL_64;
    }

    if (v35 == ++v36)
    {
      v27 = *(a2 + 23);
      v29 = *(a2 + 8);
      v31 = *(v9 + 55);
      v33 = *(v9 + 40);
      v32 = *(v9 + 55);
      v28 = *(a2 + 23);
      goto LABEL_58;
    }
  }
}

uint64_t sub_2A2EF8(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_64:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      v6 = v2 + 4;
      v7 = *(a2 + 23);
      v8 = a2[1];
      v9 = (v7 & 0x80u) == 0 ? *(a2 + 23) : a2[1];
      v10 = *(v5 + 55);
      v11 = v5[5];
      v12 = (v10 & 0x80u) == 0 ? *(v5 + 55) : v5[5];
      v13 = v12 >= v9 ? v9 : v12;
      if (v13)
      {
        break;
      }

LABEL_25:
      if ((v7 & 0x80u) == 0)
      {
        v19 = v7;
      }

      else
      {
        v19 = v8;
      }

      if ((v10 & 0x80u) == 0)
      {
        v20 = v10;
      }

      else
      {
        v20 = v11;
      }

      if (v19 >= v20)
      {
        goto LABEL_34;
      }

LABEL_3:
      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_64;
      }
    }

    v14 = 0;
    while (1)
    {
      v15 = *(a2 + 23) >= 0 ? a2 : *a2;
      v16 = __tolower(*(v15 + v14));
      v17 = *(v5 + 55) >= 0 ? v6 : v5[4];
      v18 = __tolower(*(v17 + v14));
      if (v16 > v18)
      {
        break;
      }

      if (v16 < v18)
      {
        goto LABEL_3;
      }

      if (v13 == ++v14)
      {
        v7 = *(a2 + 23);
        v8 = a2[1];
        v10 = *(v5 + 55);
        v11 = v5[5];
        goto LABEL_25;
      }
    }

    v10 = *(v5 + 55);
    v11 = v5[5];
    v7 = *(a2 + 23);
    v8 = a2[1];
LABEL_34:
    if ((v10 & 0x80u) == 0)
    {
      v21 = v10;
    }

    else
    {
      v21 = v11;
    }

    if ((v7 & 0x80u) == 0)
    {
      v22 = v7;
    }

    else
    {
      v22 = v8;
    }

    if (v22 >= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*(v5 + 55) >= 0)
        {
          v25 = v6;
        }

        else
        {
          v25 = v5[4];
        }

        v26 = __tolower(*(v25 + i));
        if (*(a2 + 23) >= 0)
        {
          v27 = a2;
        }

        else
        {
          v27 = *a2;
        }

        v28 = __tolower(*(v27 + i));
        if (v26 > v28)
        {
          goto LABEL_62;
        }

        if (v26 < v28)
        {
          goto LABEL_60;
        }
      }

      v10 = *(v5 + 55);
      v11 = v5[5];
      v7 = *(a2 + 23);
      v8 = a2[1];
    }

    if ((v10 & 0x80u) != 0)
    {
      v10 = v11;
    }

    if ((v7 & 0x80u) != 0)
    {
      v7 = v8;
    }

    if (v10 >= v7)
    {
      break;
    }

LABEL_60:
    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_64;
    }
  }

LABEL_62:
  if (!*v3)
  {
    goto LABEL_64;
  }

  return *v3;
}

void sub_2A31A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7E6BC(va);
  _Unwind_Resume(a1);
}

void sub_2A31B4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 31) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = -1;
}

uint64_t sub_2A31CC(uint64_t a1, double a2)
{
  v4 = sub_AAED4(a1);
  v5 = sub_AAF40(a1);
  if (a2 >= 0.00001)
  {
    if (a2 > 99.99999)
    {
      return v5;
    }

    if (a2 <= 100.0)
    {
      v7 = a2;
    }

    else
    {
      v7 = 100.0;
    }

    v8 = fmax(v7, 0.0) / 100.0 * (v5 - v4);
    if (v8 >= 0.0)
    {
      if (v8 >= 4.50359963e15)
      {
        goto LABEL_14;
      }

      v9 = (v8 + v8) + 1;
    }

    else
    {
      if (v8 <= -4.50359963e15)
      {
        goto LABEL_14;
      }

      v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
    }

    v8 = (v9 >> 1);
LABEL_14:
    sub_A2448(a1, v4 + v8);
    sub_2A448C(a1);
  }

  return v4;
}

void sub_2A37CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_AD01C(v15);
    _Unwind_Resume(a1);
  }

  sub_AD01C(v15);
  _Unwind_Resume(a1);
}

void sub_2A3860(std::string *a1, void *a2, void *a3)
{
  sub_5F328(v11);
  HIBYTE(__p[2]) = 16;
  strcpy(__p, "model_parameters");
  v6 = sub_5FAAC(a2, __p, v11);
  sub_ADD20(a1, v6);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  HIBYTE(__p[2]) = 18;
  strcpy(__p, "vehicle_parameters");
  v7 = sub_5FAAC(a3, __p, a3);
  sub_ADD20(a1, v7);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  memset(__p, 0, sizeof(__p));
  HIBYTE(v9[2]) = 19;
  strcpy(v9, "soc_display_formula");
  v8 = sub_5FAE8(a2, v9, __p);
  sub_AE828(a1, 0, v8);
  if (SHIBYTE(v9[2]) < 0)
  {
    operator delete(v9[0]);
  }

  operator new();
}

void sub_2A3BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_5BF68(&a16);
  sub_6BB60(&a19);
  _Unwind_Resume(a1);
}

void sub_2A3C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_6BB60(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_2A3C38@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_2A3EF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2A3F08@<X0>(const char *a1@<X0>, const char *a2@<X2>, const char *a3@<X4>, _BYTE *a4@<X8>)
{
  sub_D7B0(v18);
  v8 = strlen(a1);
  sub_4A5C(&v19, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  sub_4A5C(v9, a2, v10);
  v11 = std::ostream::operator<<();
  v12 = strlen(a3);
  sub_4A5C(v11, a3, v12);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a4[23] = v13;
  if (v13)
  {
    memmove(a4, v15, v13);
  }

LABEL_12:
  a4[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_2A41C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2A41D8@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_2A4460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_2A448C(uint64_t a1)
{
  sub_B1EA8(a1, 0);
  v5 = v2;
  if (v2 < -0.00001)
  {
    sub_2A46EC("EVStateOfChargeModel expression produced negative state of charge ", "%.", __p);
    sub_AB488(a1 + 344, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    v2 = v5;
  }

  if (v2 > 100.00001)
  {
    sub_2A4988("EVStateOfChargeModel expression produced invalid state of charge ", "%.", __p);
    sub_AB488(a1 + 344, __p);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_2A46C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2A46EC@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_2A4974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2A4988@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_2A4C10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2A4C24(void *a1, uint64_t a2, int *a3, int *a4)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 19;
  strcpy(__p, "soc_display_formula");
  v6 = sub_5FAE8(a1, __p, &v17);
  v8 = *v6;
  v7 = v6[1];
  if (v16 < 0)
  {
    operator delete(*__p);
    if (v7 != v8)
    {
LABEL_3:
      sub_AC694(__p, -1, *a3, *a4);
    }
  }

  else if (v7 != v8)
  {
    goto LABEL_3;
  }

  v9 = v17;
  if (v17)
  {
    v10 = v18;
    v11 = v17;
    if (v18 != v17)
    {
      do
      {
        v12 = v10 - 16;
        v13 = *(v10 - 2);
        if (v13 != -1)
        {
          (off_26689B0[v13])(__p, v10 - 16);
        }

        *(v10 - 2) = -1;
        v10 -= 16;
      }

      while (v12 != v9);
      v11 = v17;
    }

    v18 = v9;
    operator delete(v11);
  }

  return 1;
}

void sub_2A4D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_5BF68((v14 - 88));
    _Unwind_Resume(a1);
  }

  sub_5BF68((v14 - 88));
  _Unwind_Resume(a1);
}

void sub_2A4E80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2A5114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2A5130(uint64_t a1, double a2)
{
  v3 = *(a1 + 440);
  if (v3 != 0.0)
  {
    LODWORD(a2) = *(a1 + 500);
    v5 = *&a2 / 1000.0;
    v6 = v5 * 0.05;
    v7 = *(a1 + 508);
    *&v8 = v7;
    LODWORD(v8) = *(a1 + 504);
    *&v9 = v8;
    v10 = *&v9 / 1000.0;
    LODWORD(v9) = *(a1 + 512);
    *&v11 = v9 / 1000000000.0;
    v52 = *&v11;
    v53 = v7 / 1000.0;
    LODWORD(v11) = *(a1 + 516);
    *&v12 = v11;
    v13 = *&v12 / 1000000000.0;
    LODWORD(v12) = *(a1 + 520);
    v14 = v12;
    v15 = *(a1 + 424);
    v16 = *(a1 + 448);
    v17 = v16 * *(a1 + 472);
    v50 = v17 * (v17 * v17);
    v51 = v13;
    v18 = v16 == 0.0;
    v19 = v17 / v16;
    v20 = *(a1 + 456) / v3;
    v21 = fmin(v20, 0.37);
    v22 = fmax(v20, -0.37);
    if (v20 <= 0.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    v24 = fabs(v15);
    if (fabs(v19) < 0.0000000149011612)
    {
      v18 = 1;
    }

    v49 = v14 / 1000000000.0;
    if (v24 < 0.0000000149011612 && v18)
    {
      v25 = atan(v23);
      v26 = 0.0;
    }

    else
    {
      if (v16 == 0.0)
      {
        v19 = 0.0;
      }

      v27 = v16 * (v16 * v16);
      v46 = v16 * (v15 * v15) + v16 * v16 * (v15 * v19) + v27 * (v19 * v19 * 0.333333333);
      v47 = v16 * (v15 * (v15 * v15)) + v16 * v16 * (v15 * v15 * 1.5 * v19) + v27 * (v15 * (v19 * v19)) + v16 * (v27 * (v19 * (v19 * v19) * 0.25));
      v48 = v5 * 0.05;
      v45 = *(a1 + 496) / 1000000.0;
      v28 = *(a1 + 492) / 1000000.0;
      v29 = v3 * (*(a1 + 488) / 1000000.0);
      v30 = v10;
      v31 = v5;
      v32 = atan(v23);
      v33 = cos(v32);
      v25 = v32;
      v5 = v31;
      v10 = v30;
      v6 = v48;
      v26 = v47 * v45 + v46 * v28 + v33 * v29;
    }

    v34 = (v6 + v5 + v10) * 0.5 * ((v15 + v15) * v50) / 3600.0 + v3 * ((v5 + v10) * 9.80665 * sin(v25)) / 3600.0 + v26 / 3600.0;
    v35 = v34 < 0.0;
    if (v34 <= 0.0)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = v34 / v51;
    }

    v37 = v49 * v34;
    if (v35)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0.0;
    }

    v39 = v53 * v16 / 3600.0 / v52;
    v40 = v39 + v36 + v38;
    v56 = v40;
    if (v40 >= 0.0)
    {
      v41 = v39 + v36 + v38;
      if (v40 >= 4.50359963e15)
      {
        goto LABEL_26;
      }

      v42 = (v40 + v40) + 1;
    }

    else
    {
      v41 = v39 + v36 + v38;
      if (v40 <= -4.50359963e15)
      {
        goto LABEL_26;
      }

      v42 = (v40 + v40) - 1 + (((v40 + v40) - 1) >> 63);
    }

    v41 = (v42 >> 1);
LABEL_26:
    if (v41 < -2147484.0)
    {
      goto LABEL_34;
    }

    if (v40 >= 0.0)
    {
      v43 = v39 + v36 + v38;
      if (v40 >= 4.50359963e15)
      {
        goto LABEL_33;
      }

      v44 = (v40 + v40) + 1;
    }

    else
    {
      v43 = v39 + v36 + v38;
      if (v40 <= -4.50359963e15)
      {
        goto LABEL_33;
      }

      v44 = (v40 + v40) - 1 + (((v40 + v40) - 1) >> 63);
    }

    v43 = (v44 >> 1);
LABEL_33:
    if (v43 <= 2147484.0)
    {
      operator new();
    }

LABEL_34:
    sub_2A5A18("PhysicsEVConsumptionModel produced an out-of-range energy value: ", " Wh.", __p);
    sub_AB520(a1 + 344, __p);
    if (v55 < 0)
    {
      operator delete(__p[0]);
    }

    operator new();
  }

  result = 0;
  *(a1 + 540) = 0;
  *(a1 + 524) = 0u;
  return result;
}

void sub_2A5778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_2A57A4(_DWORD *result, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = a2 * 1000.0;
  if (v7 >= 0.0)
  {
    if (v7 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v8 = (v7 + v7) + 1;
  }

  else
  {
    if (v7 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v8 = (v7 + v7) - 1 + (((v7 + v7) - 1) >> 63);
  }

  v7 = (v8 >> 1);
LABEL_7:
  result[131] = v7;
  v9 = a3 * 1000.0;
  if (a3 * 1000.0 >= 0.0)
  {
    if (v9 >= 4.50359963e15)
    {
      goto LABEL_13;
    }

    v10 = (v9 + v9) + 1;
  }

  else
  {
    if (v9 <= -4.50359963e15)
    {
      goto LABEL_13;
    }

    v10 = (v9 + v9) - 1 + (((v9 + v9) - 1) >> 63);
  }

  v9 = (v10 >> 1);
LABEL_13:
  result[132] = v9;
  v11 = a4 * 1000.0;
  if (a4 * 1000.0 >= 0.0)
  {
    if (v11 >= 4.50359963e15)
    {
      goto LABEL_19;
    }

    v12 = (v11 + v11) + 1;
  }

  else
  {
    if (v11 <= -4.50359963e15)
    {
      goto LABEL_19;
    }

    v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
  }

  v11 = (v12 >> 1);
LABEL_19:
  result[133] = v11;
  v13 = a5 * 1000.0;
  if (a5 * 1000.0 >= 0.0)
  {
    if (v13 >= 4.50359963e15)
    {
      goto LABEL_25;
    }

    v14 = (v13 + v13) + 1;
  }

  else
  {
    if (v13 <= -4.50359963e15)
    {
      goto LABEL_25;
    }

    v14 = (v13 + v13) - 1 + (((v13 + v13) - 1) >> 63);
  }

  v13 = (v14 >> 1);
LABEL_25:
  result[134] = v13;
  v15 = a6 * 1000.0;
  if (a6 * 1000.0 >= 0.0)
  {
    if (v15 >= 4.50359963e15)
    {
      goto LABEL_31;
    }

    v16 = (v15 + v15) + 1;
  }

  else
  {
    if (v15 <= -4.50359963e15)
    {
      goto LABEL_31;
    }

    v16 = (v15 + v15) - 1 + (((v15 + v15) - 1) >> 63);
  }

  v15 = (v16 >> 1);
LABEL_31:
  result[135] = v15;
  v17 = a7 * 1000.0;
  if (a7 * 1000.0 >= 0.0)
  {
    if (v17 < 4.50359963e15)
    {
      v18 = (v17 + v17) + 1;
      goto LABEL_36;
    }
  }

  else if (v17 > -4.50359963e15)
  {
    v18 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
LABEL_36:
    v17 = (v18 >> 1);
  }

  result[136] = v17;
  return result;
}

uint64_t sub_2A5A18@<X0>(const char *a1@<X0>, const char *a2@<X2>, _BYTE *a3@<X8>)
{
  sub_D7B0(v14);
  v6 = strlen(a1);
  sub_4A5C(&v15, a1, v6);
  v7 = std::ostream::operator<<();
  v8 = strlen(a2);
  sub_4A5C(v7, a2, v8);
  if ((v25 & 0x10) != 0)
  {
    v10 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v10 = v21;
    }

    v11 = v20;
    v9 = v10 - v20;
    if (v10 - v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v9 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v11 = v18;
    v9 = v19 - v18;
    if ((v19 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a3[23] = v9;
  if (v9)
  {
    memmove(a3, v11, v9);
  }

LABEL_12:
  a3[v9] = 0;
  v15 = v12;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_2A5CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_2A5CCC(uint64_t a1, void *a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = &qword_278EF78;
  v5 = 192;
  do
  {
    v6 = v5;
    v7 = sub_5FC3C(a2, v4);
    if (!v7)
    {
      break;
    }

    v5 = v6 - 24;
    v4 += 3;
  }

  while (v6);
  if (v7)
  {
    v19 = 3;
    strcpy(__p, "A_N");
    *a1 = sub_6491C(a2, __p);
    if (v19 < 0)
    {
      operator delete(*__p);
    }

    v19 = 3;
    strcpy(__p, "B_N");
    *(a1 + 4) = sub_6491C(a2, __p);
    if (v19 < 0)
    {
      operator delete(*__p);
    }

    v19 = 3;
    strcpy(__p, "C_N");
    *(a1 + 8) = sub_6491C(a2, __p);
    if (v19 < 0)
    {
      operator delete(*__p);
    }

    v19 = 15;
    strcpy(__p, "vehicle_mass_kg");
    *(a1 + 12) = sub_64B2C(a2, __p);
    if (v19 < 0)
    {
      operator delete(*__p);
    }

    v19 = 21;
    strcpy(__p, "vehicle_cargo_mass_kg");
    *(a1 + 16) = sub_64B2C(a2, __p);
    if (v19 < 0)
    {
      operator delete(*__p);
    }

    v19 = 19;
    strcpy(__p, "vehicle_aux_power_w");
    *(a1 + 20) = sub_6470C(a2, __p);
    if (v19 < 0)
    {
      operator delete(*__p);
    }

    v19 = 15;
    strcpy(__p, "dcdc_efficiency");
    v8 = sub_5F754(a2, __p) * 1000000000.0;
    if (v8 >= 0.0)
    {
      if (v8 >= 4.50359963e15)
      {
        goto LABEL_27;
      }

      v9 = (v8 + v8) + 1;
    }

    else
    {
      if (v8 <= -4.50359963e15)
      {
        goto LABEL_27;
      }

      v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
    }

    v8 = (v9 >> 1);
LABEL_27:
    *(a1 + 24) = v8;
    if (v19 < 0)
    {
      operator delete(*__p);
    }

    strcpy(__p, "drive_train_efficiency");
    v19 = 22;
    v11 = sub_5F754(a2, __p) * 1000000000.0;
    if (v11 >= 0.0)
    {
      if (v11 >= 4.50359963e15)
      {
        goto LABEL_35;
      }

      v12 = (v11 + v11) + 1;
    }

    else
    {
      if (v11 <= -4.50359963e15)
      {
        goto LABEL_35;
      }

      v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
    }

    v11 = (v12 >> 1);
LABEL_35:
    *(a1 + 28) = v11;
    if (v19 < 0)
    {
      operator delete(*__p);
    }

    operator new();
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(__p);
    sub_4A5C(__p, "EV consumption physics model parameters are missing.", 52);
    if ((v27 & 0x10) != 0)
    {
      v13 = v26;
      if (v26 < v23)
      {
        v26 = v23;
        v13 = v23;
      }

      v14 = v22;
      v10 = v13 - v22;
      if (v13 - v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if ((v27 & 8) == 0)
      {
        v10 = 0;
        v17 = 0;
LABEL_46:
        *(&__dst + v10) = 0;
        sub_7E854(&__dst, 3u);
        if (v17 < 0)
        {
          operator delete(__dst);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }

        std::locale::~locale(&__p[16]);
        std::ostream::~ostream();
        std::ios::~ios();
        return a1;
      }

      v14 = v20;
      v10 = v21 - v20;
      if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_53:
        sub_3244();
      }
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v17 = v10;
    if (v10)
    {
      memmove(&__dst, v14, v10);
    }

    goto LABEL_46;
  }

  return a1;
}

void sub_2A62E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
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

void sub_2A632C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2A6368()
{
  byte_278EF8F = 3;
  LODWORD(qword_278EF78) = 5136193;
  byte_278EFA7 = 3;
  LODWORD(qword_278EF90) = 5136194;
  byte_278EFBF = 3;
  LODWORD(qword_278EFA8) = 5136195;
  byte_278EFD7 = 15;
  strcpy(&qword_278EFC0, "vehicle_mass_kg");
  byte_278EFEF = 21;
  strcpy(&xmmword_278EFD8, "vehicle_cargo_mass_kg");
  byte_278F007 = 19;
  strcpy(&qword_278EFF0, "vehicle_aux_power_w");
  byte_278F01F = 15;
  strcpy(&qword_278F008, "dcdc_efficiency");
  strcpy(&qword_278F020, "drive_train_efficiency");
  HIBYTE(word_278F036) = 22;
  operator new();
}

void sub_2A64BC(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_278F036) < 0)
  {
    sub_21E124C();
  }

  sub_21E1258();
  _Unwind_Resume(a1);
}

void sub_2A64DC(int *a1)
{
  v1 = (a1 - *a1);
  if (*v1 >= 5u && (v2 = v1[2]) != 0)
  {
    v3 = (a1 + v2);
    v4 = *v3;
    v5 = *(v3 + v4);
    if (v5 >= 0x17)
    {
      operator new();
    }

    v8 = *(v3 + v4);
    if (v5)
    {
      memcpy(&v6, v3 + v4 + 4, v5);
    }

    v7[v5 - 8] = 0;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9[0] = *v7;
  *(v9 + 7) = *&v7[7];
  operator new();
}

void sub_2A6628(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2A6640(int *a1)
{
  v57 = 0;
  v58 = 0uLL;
  v1 = (a1 - *a1);
  if (*v1 < 5u || (v2 = v1[2]) == 0)
  {
    operator new();
  }

  sub_5D72C(&v57, *(a1 + v2 + *(a1 + v2)));
  v4 = a1;
  v5 = *(a1 - *a1 + 4);
  v6 = *(a1 + v5);
  v7 = (a1 + v5 + v6);
  v8 = *v7;
  if (!v8)
  {
LABEL_92:
    operator new();
  }

  v9 = 0;
  v10 = 4 * v8;
  v11 = v4 + v5 + v6;
  while (1)
  {
    v12 = v7[v9 / 4 + 1];
    v13 = v12 - *(&v7[v9 / 4 + 1] + v12);
    v14 = &v11[v9 + v13];
    v15 = *(v14 + 2);
    if (v15 < 5)
    {
      goto LABEL_93;
    }

    v16 = *(v14 + 4);
    if (!v16)
    {
      goto LABEL_93;
    }

    v17 = v11[v9 + 4 + v12 + v16];
    if (v17 <= 3)
    {
      break;
    }

    if (v17 <= 5)
    {
      if (v17 == 4)
      {
        v29 = v12 + *&v11[v9 + 10 + v13];
        sub_2A6640(&v55, &v11[v9 + 4 + v29 + *&v11[v9 + 4 + v29]]);
        v30 = v58;
        if (v58 >= *(&v58 + 1))
        {
          v32 = sub_6B0B8(&v57, &v55);
        }

        else
        {
          *v58 = 0;
          *(v30 + 8) = -1;
          v31 = v56;
          if (v56 != -1)
          {
            v59 = v30;
            (off_2668A40[v56])(&v59, &v55);
            *(v30 + 8) = v31;
          }

          v32 = v30 + 16;
        }

        *&v58 = v32;
        if (v56 == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_88;
      }

      if (v15 >= 7 && (v18 = *&v11[v9 + 10 + v13]) != 0)
      {
        v19 = &v11[v9 + 4 + v12 + v18 + *&v11[v9 + 4 + v12 + v18]];
        v20 = &v19[-*v19];
        if (*v20 < 5u)
        {
LABEL_76:
          v56 = 8;
          v48 = v58;
          if (v58 < *(&v58 + 1))
          {
            goto LABEL_77;
          }

          goto LABEL_69;
        }
      }

      else
      {
        v19 = 0;
        v20 = (&loc_1120530 + 1);
        if (*(&loc_1120530 + 1) < 5u)
        {
          goto LABEL_76;
        }
      }

      v46 = *(v20 + 2);
      if (!v46)
      {
        goto LABEL_76;
      }

      if (v19[v46])
      {
        v47 = 7;
      }

      else
      {
        v47 = 8;
      }

      v56 = v47;
      v48 = v58;
      if (v58 < *(&v58 + 1))
      {
LABEL_77:
        *v48 = 0;
        *(v48 + 8) = -1;
        v51 = v56;
        if (v56 != -1)
        {
          v59 = v48;
          (off_2668A40[v56])(&v59, &v55);
          *(v48 + 8) = v51;
        }

        *&v58 = v48 + 16;
        v41 = v56;
        if (v56 == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_85;
      }

LABEL_69:
      *&v58 = sub_6B0B8(&v57, &v55);
      v41 = v56;
      if (v56 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_85;
    }

    if (v17 == 6)
    {
      if (v15 >= 7 && (v33 = *&v11[v9 + 10 + v13]) != 0)
      {
        v34 = &v11[v9 + 4 + v12 + v33 + *&v11[v9 + 4 + v12 + v33]];
        v35 = &v34[-*v34];
        if (*v35 < 5u)
        {
LABEL_48:
          v55 = 0;
          v56 = 3;
          v40 = v58;
          if (v58 < *(&v58 + 1))
          {
            goto LABEL_49;
          }

          goto LABEL_46;
        }
      }

      else
      {
        v34 = 0;
        v35 = (&loc_1120530 + 1);
        if (*(&loc_1120530 + 1) < 5u)
        {
          goto LABEL_48;
        }
      }

      v39 = *(v35 + 2);
      if (!v39)
      {
        goto LABEL_48;
      }

      v55 = *&v34[v39];
      v56 = 3;
      v40 = v58;
      if (v58 < *(&v58 + 1))
      {
LABEL_49:
        *v40 = 0;
        *(v40 + 8) = -1;
        v42 = v56;
        if (v56 != -1)
        {
          v59 = v40;
          (off_2668A40[v56])(&v59, &v55);
          *(v40 + 8) = v42;
        }

        *&v58 = v40 + 16;
        v41 = v56;
        if (v56 == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_85;
      }

LABEL_46:
      *&v58 = sub_6B0B8(&v57, &v55);
      v41 = v56;
      if (v56 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_85;
    }

    if (v17 == 7)
    {
      if (v15 >= 7 && (v25 = *&v11[v9 + 10 + v13]) != 0)
      {
        v26 = &v11[v9 + 4 + v12 + v25 + *&v11[v9 + 4 + v12 + v25]];
        v27 = &v26[-*v26];
        if (*v27 < 5u)
        {
LABEL_81:
          v55 = 0;
          v56 = 4;
          v50 = v58;
          if (v58 < *(&v58 + 1))
          {
            goto LABEL_82;
          }

LABEL_74:
          *&v58 = sub_6B0B8(&v57, &v55);
          v41 = v56;
          if (v56 == -1)
          {
            goto LABEL_7;
          }

          goto LABEL_85;
        }
      }

      else
      {
        v26 = 0;
        v27 = (&loc_1120530 + 1);
        if (*(&loc_1120530 + 1) < 5u)
        {
          goto LABEL_81;
        }
      }

      v49 = *(v27 + 2);
      if (!v49)
      {
        goto LABEL_81;
      }

      v55 = *&v26[v49];
      v56 = 4;
      v50 = v58;
      if (v58 >= *(&v58 + 1))
      {
        goto LABEL_74;
      }

LABEL_82:
      *v50 = 0;
      *(v50 + 8) = -1;
      v52 = v56;
      if (v56 != -1)
      {
        v59 = v50;
        (off_2668A40[v56])(&v59, &v55);
        *(v50 + 8) = v52;
      }

      *&v58 = v50 + 16;
      v41 = v56;
      if (v56 == -1)
      {
        goto LABEL_7;
      }

LABEL_85:
      (off_26689F8[v41])(&v59, &v55);
    }

LABEL_7:
    v9 += 4;
    if (v10 == v9)
    {
      goto LABEL_92;
    }
  }

  if (v17 <= 1)
  {
    if (v17 == 1)
    {
      v28 = v12 + *&v11[v9 + 10 + v13];
      sub_2A64DC(&v11[v9 + 4 + v28 + *&v11[v9 + 4 + v28]]);
    }

LABEL_93:
    exception = __cxa_allocate_exception(0x40uLL);
    v54 = sub_2D390(exception, "Encountered a NONE JsonValue type when parsing an array.", 0x38uLL);
  }

  if (v17 != 2)
  {
    v21 = v12 + *&v11[v9 + 10 + v13];
    sub_2A6F40(&v55, &v11[v9 + 4 + v21 + *&v11[v9 + 4 + v21]]);
    v22 = v58;
    if (v58 >= *(&v58 + 1))
    {
      v24 = sub_6B0B8(&v57, &v55);
    }

    else
    {
      *v58 = 0;
      *(v22 + 8) = -1;
      v23 = v56;
      if (v56 != -1)
      {
        v59 = v22;
        (off_2668A40[v56])(&v59, &v55);
        *(v22 + 8) = v23;
      }

      v24 = v22 + 16;
    }

    *&v58 = v24;
    if (v56 == -1)
    {
      goto LABEL_7;
    }

LABEL_88:
    (off_26689F8[v56])(&v59, &v55);
    goto LABEL_7;
  }

  if (v15 >= 7 && (v36 = *&v11[v9 + 10 + v13]) != 0)
  {
    v37 = &v11[v9 + 4 + v12 + v36 + *&v11[v9 + 4 + v12 + v36]];
    v38 = &v37[-*v37];
    if (*v38 < 5u)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v37 = 0;
    v38 = (&loc_1120530 + 1);
    if (*(&loc_1120530 + 1) < 5u)
    {
      goto LABEL_58;
    }
  }

  v43 = *(v38 + 2);
  if (v43)
  {
    v55 = *&v37[v43];
    v56 = 2;
    v44 = v58;
    if (v58 < *(&v58 + 1))
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

LABEL_58:
  v55 = 0;
  v56 = 2;
  v44 = v58;
  if (v58 < *(&v58 + 1))
  {
LABEL_59:
    *v44 = 0;
    *(v44 + 8) = -1;
    v45 = v56;
    if (v56 != -1)
    {
      v59 = v44;
      (off_2668A40[v56])(&v59, &v55);
      *(v44 + 8) = v45;
    }

    *&v58 = v44 + 16;
    v41 = v56;
    if (v56 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_85;
  }

LABEL_56:
  *&v58 = sub_6B0B8(&v57, &v55);
  v41 = v56;
  if (v56 == -1)
  {
    goto LABEL_7;
  }

  goto LABEL_85;
}

void sub_2A6E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  sub_5BF0C(&a9);
  sub_6BC10(&a11);
  _Unwind_Resume(a1);
}

void sub_2A6EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6BC10(va);
  _Unwind_Resume(a1);
}

void sub_2A6EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6BC10(va);
  _Unwind_Resume(a1);
}

void sub_2A6F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6BC10(va);
  _Unwind_Resume(a1);
}

void sub_2A6F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6BC10(va);
  _Unwind_Resume(a1);
}

void sub_2A6F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6BC10(va);
  _Unwind_Resume(a1);
}

void sub_2A6F40(int *a1)
{
  sub_5F328(&v110);
  v2 = (a1 - *a1);
  if (*v2 < 5u || (v3 = v2[2]) == 0)
  {
    operator new();
  }

  prime = vcvtps_u32_f32(*(a1 + v3 + *(a1 + v3)) / v113);
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v5 = v111;
  if (prime > *&v111)
  {
    goto LABEL_9;
  }

  if (prime < *&v111)
  {
    v6 = vcvtps_u32_f32(v112 / v113);
    if (*&v111 < 3uLL || (v7 = vcnt_s8(v111), v7.i16[0] = vaddlv_u8(v7), v7.u32[0] > 1uLL))
    {
      v6 = std::__next_prime(v6);
    }

    else
    {
      v8 = 1 << -__clz(v6 - 1);
      if (v6 >= 2)
      {
        v6 = v8;
      }
    }

    if (prime <= v6)
    {
      prime = v6;
    }

    if (prime < *&v5)
    {
LABEL_9:
      sub_B07C(&v110, prime);
    }
  }

  v9 = *(a1 - *a1 + 4);
  v10 = *(a1 + v9);
  v11 = (a1 + v9 + v10);
  v12 = *v11;
  if (!v12)
  {
LABEL_148:
    operator new();
  }

  v13 = 0;
  v14 = 4 * v12;
  v85 = a1 + v9 + v10;
  while (1)
  {
    v15 = v11[v13 / 4 + 1];
    v16 = &v11[v13 / 4] + v15;
    v17 = v15 - *(v16 + 1);
    if (*(&v11[v13 / 4 + 1] + v17) < 7u || !*(v11 + v17 + v13 + 10))
    {
      goto LABEL_149;
    }

    v18 = *(&v11[v13 / 4 + 1] + v15 + *(v11 + v17 + v13 + 10));
    if (v18 <= 3)
    {
      if (*(&v11[v13 / 4 + 1] + v15 + *(v11 + v17 + v13 + 10)) <= 1u)
      {
        if (v18 == 1)
        {
          v28 = v15 + *(v11 + v17 + v13 + 8);
          v29 = v11 + v28 + v13 + *(&v11[v13 / 4 + 1] + v28);
          v30 = *(v29 + 1);
          if (v30 < 0x17)
          {
            v109 = *(v29 + 1);
            if (v30)
            {
              memcpy(&__dst, v29 + 8, v30);
            }

            *(&__dst + v30) = 0;
            v40 = v15 + *(v11 + v15 - *(v16 + 1) + v13 + 12);
            sub_2A64DC((&v11[v13 / 4 + 1] + v40 + *(&v11[v13 / 4 + 1] + v40)));
          }

          operator new();
        }

LABEL_149:
        exception = __cxa_allocate_exception(0x40uLL);
        v84 = sub_2D390(exception, "Encountered a NONE JsonValue type when parsing an object.", 0x39uLL);
      }

      if (v18 == 2)
      {
        v37 = v15 + *(v11 + v17 + v13 + 8);
        v38 = v11 + v37 + v13 + *(&v11[v13 / 4 + 1] + v37);
        v39 = *(v38 + 1);
        if (v39 >= 0x17)
        {
          operator new();
        }

        v107 = *(v38 + 1);
        if (v39)
        {
          memcpy(&v106, v38 + 8, v39);
        }

        *(&v106 + v39) = 0;
        v53 = v15 - *(v16 + 1);
        v54 = v11 + v53 + v13;
        v55 = *(v54 + 2);
        if (v55 >= 7 && (v56 = *(v54 + 5)) != 0 && ((v57 = *(&v11[v13 / 4 + 1] + v15 + v56), v55 >= 9) ? (v58 = v57 == 2) : (v58 = 0), v58))
        {
          v59 = *(v11 + v53 + v13 + 12);
          if (v59)
          {
            v59 = (v59 + v15 + v13 + v11 + *(&v11[v13 / 4 + 1] + v59 + v15) + 4);
          }
        }

        else
        {
          v59 = 0;
        }

        v60 = (v59 - *v59);
        if (*v60 >= 5u && (v61 = v60[2]) != 0)
        {
          v62 = *(v59 + v61);
        }

        else
        {
          v62 = 0;
        }

        v104 = v62;
        v105 = 2;
        sub_607AC(&v110, &v106);
        if (v105 != -1)
        {
          (off_26689F8[v105])(v114, &v104);
        }

        v105 = -1;
        if ((v107 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        v52 = &v106;
      }

      else
      {
        if (v18 != 3)
        {
          goto LABEL_23;
        }

        v22 = v15 + *(v11 + v17 + v13 + 8);
        v23 = v11 + v22 + v13 + *(&v11[v13 / 4 + 1] + v22);
        v24 = *(v23 + 1);
        if (v24 >= 0x17)
        {
          operator new();
        }

        v95 = *(v23 + 1);
        if (v24)
        {
          memcpy(&v94, v23 + 8, v24);
        }

        *(&v94 + v24) = 0;
        v82 = v15 + *(v11 + v15 - *(v16 + 1) + v13 + 12);
        sub_2A6F40(&v92, &v11[v13 / 4 + 1] + v82 + *(&v11[v13 / 4 + 1] + v82));
        sub_607AC(&v110, &v94);
        if (v93 != -1)
        {
          (off_26689F8[v93])(v114, &v92);
        }

        v93 = -1;
        if ((v95 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        v52 = &v94;
      }
    }

    else if (*(&v11[v13 / 4 + 1] + v15 + *(v11 + v17 + v13 + 10)) > 5u)
    {
      if (v18 == 6)
      {
        v34 = v15 + *(v11 + v17 + v13 + 8);
        v35 = v11 + v34 + v13 + *(&v11[v13 / 4 + 1] + v34);
        v36 = *(v35 + 1);
        if (v36 >= 0x17)
        {
          operator new();
        }

        v103 = *(v35 + 1);
        if (v36)
        {
          memcpy(&v102, v35 + 8, v36);
        }

        *(&v102 + v36) = 0;
        v42 = v15 - *(v16 + 1);
        v43 = v11 + v42 + v13;
        v44 = *(v43 + 2);
        if (v44 >= 7 && (v45 = *(v43 + 5)) != 0 && ((v46 = *(&v11[v13 / 4 + 1] + v15 + v45), v44 >= 9) ? (v47 = v46 == 6) : (v47 = 0), v47))
        {
          v48 = *(v11 + v42 + v13 + 12);
          if (v48)
          {
            v48 = (v48 + v15 + v13 + v11 + *(&v11[v13 / 4 + 1] + v48 + v15) + 4);
          }
        }

        else
        {
          v48 = 0;
        }

        v49 = (v48 - *v48);
        if (*v49 >= 5u && (v50 = v49[2]) != 0)
        {
          v51 = *(v48 + v50);
        }

        else
        {
          v51 = 0;
        }

        v100 = v51;
        v101 = 3;
        sub_607AC(&v110, &v102);
        if (v101 != -1)
        {
          (off_26689F8[v101])(v114, &v100);
        }

        v101 = -1;
        if ((v103 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        v52 = &v102;
      }

      else
      {
        if (v18 != 7)
        {
          goto LABEL_23;
        }

        v25 = v15 + *(v11 + v17 + v13 + 8);
        v26 = v11 + v25 + v13 + *(&v11[v13 / 4 + 1] + v25);
        v27 = *(v26 + 1);
        if (v27 >= 0x17)
        {
          operator new();
        }

        v99 = *(v26 + 1);
        if (v27)
        {
          memcpy(&v98, v26 + 8, v27);
        }

        if ((*(&v98 + v27) = 0, v72 = v15 - *(v16 + 1), v73 = v11 + v72 + v13, v74 = *(v73 + 2), v74 >= 7) && (v75 = *(v73 + 5)) != 0 && ((v76 = *(&v11[v13 / 4 + 1] + v15 + v75), v74 >= 9) ? (v77 = v76 == 7) : (v77 = 0), v77))
        {
          v78 = *(v11 + v72 + v13 + 12);
          if (v78)
          {
            v78 = (v78 + v15 + v13 + v11 + *(&v11[v13 / 4 + 1] + v78 + v15) + 4);
          }
        }

        else
        {
          v78 = 0;
        }

        v79 = (v78 - *v78);
        if (*v79 >= 5u && (v80 = v79[2]) != 0)
        {
          v81 = *(v78 + v80);
        }

        else
        {
          v81 = 0;
        }

        v96 = v81;
        v97 = 4;
        sub_607AC(&v110, &v98);
        if (v97 != -1)
        {
          (off_26689F8[v97])(v114, &v96);
        }

        v97 = -1;
        if ((v99 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        v52 = &v98;
      }
    }

    else
    {
      if (v18 == 4)
      {
        v31 = v15 + *(v11 + v17 + v13 + 8);
        v32 = v11 + v31 + v13 + *(&v11[v13 / 4 + 1] + v31);
        v33 = *(v32 + 1);
        if (v33 < 0x17)
        {
          v91 = *(v32 + 1);
          if (v33)
          {
            memcpy(&v90, v32 + 8, v33);
          }

          *(&v90 + v33) = 0;
          v41 = v15 + *(v11 + v15 - *(v16 + 1) + v13 + 12);
          sub_2A6640((&v11[v13 / 4 + 1] + v41 + *(&v11[v13 / 4 + 1] + v41)));
        }

        operator new();
      }

      if (v18 != 5)
      {
        goto LABEL_23;
      }

      v19 = v15 + *(v11 + v17 + v13 + 8);
      v20 = v11 + v19 + v13 + *(&v11[v13 / 4 + 1] + v19);
      v21 = *(v20 + 1);
      if (v21 >= 0x17)
      {
        operator new();
      }

      v89 = *(v20 + 1);
      if (v21)
      {
        memcpy(&v88, v20 + 8, v21);
      }

      if ((*(&v88 + v21) = 0, v63 = v15 - *(v16 + 1), v64 = &v85[v13 + v63], v65 = *(v64 + 2), v65 >= 7) && (v66 = *(v64 + 5)) != 0 && (v65 >= 9 ? (v67 = v85[v13 + 4 + v15 + v66] == 5) : (v67 = 0), v67))
      {
        v68 = *&v85[v13 + 12 + v63];
        if (v68)
        {
          v68 += &v85[v13 + 4 + v15 + *&v85[v13 + 4 + v15 + v68]];
        }
      }

      else
      {
        v68 = 0;
      }

      v69 = (v68 - *v68);
      if (*v69 >= 5u && (v70 = v69[2]) != 0)
      {
        v71 = *(v68 + v70) ? 7 : 8;
      }

      else
      {
        v71 = 8;
      }

      v87 = v71;
      sub_607AC(&v110, &v88);
      if (v87 != -1)
      {
        (off_26689F8[v87])(v114, v86);
      }

      v87 = -1;
      if ((v89 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      v52 = &v88;
    }

    operator delete(*v52);
LABEL_23:
    v13 += 4;
    if (v14 == v13)
    {
      goto LABEL_148;
    }
  }
}

void sub_2A7C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51)
{
  sub_5BF0C(v51 - 176);
  if (*(v51 - 137) < 0)
  {
    operator delete(*(v51 - 160));
    sub_5C010(v51 - 136);
    _Unwind_Resume(a1);
  }

  sub_5C010(v51 - 136);
  _Unwind_Resume(a1);
}

__n128 sub_2A7DCC(uint64_t a1, uint64_t a2, __int128 *a3, __n128 *a4)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *a3;
  *(a1 + 32) = *(a3 + 2);
  *(a1 + 16) = v4;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  result = *a4;
  *(a1 + 56) = a4[1].n128_u64[0];
  *(a1 + 40) = result;
  a4->n128_u64[1] = 0;
  a4[1].n128_u64[0] = 0;
  a4->n128_u64[0] = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_2A7E14(uint64_t a1, int a2)
{
  result = 0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {

      return sub_748D0((a1 + 40));
    }

    else if (a2 == 3)
    {
      result = *a1;
      if (*a1)
      {
        v4 = sub_2D52A4(result, 36, 1u, 1);
        if (!v6)
        {
          return 0;
        }

        goto LABEL_11;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      result = *a1;
      if (*a1)
      {
        v4 = sub_2D52A4(result, 23, 1u, 1);
        if (!v5)
        {
          return 0;
        }

LABEL_11:
        v7 = (v4 + *v4 - *(v4 + *v4));
        if (*v7 >= 7u)
        {
          return v7[3] != 0;
        }

        return 0;
      }
    }
  }

  else
  {

    return sub_74788((a1 + 16));
  }

  return result;
}

BOOL sub_2A7EFC(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 - 1) >= 3)
  {
    if (a3)
    {
      return 0;
    }

    v12 = 1;
    LOWORD(__p) = 47;
    sub_2A8074(&__p, (a1 + 16), a2, &__key);
    result = sub_748D0(&__key);
    if (SHIBYTE(__key.__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = result;
      operator delete(__key.__r_.__value_.__l.__data_);
      result = v9;
      if ((v12 & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if ((v12 & 0x80000000) == 0)
    {
      return result;
    }

    v10 = result;
    operator delete(__p);
    return v10;
  }

  v4 = sub_2A833C(a1, a3);
  v5 = (v4 + *(v4 - *v4 + 6));
  v6 = (v5 + *v5);
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  __key.__r_.__value_.__r.__words[0] = v7;
  return bsearch(&__key, v6 + 1, *v6, 4uLL, sub_2AA944) != 0;
}

void sub_2A8028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void sub_2A8074(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (*(a3 + 23) < 0)
  {
    sub_325C(v23, *a3, *(a3 + 8));
    v7 = *(a2 + 23);
    v8 = v7;
    v9 = a2[1];
    if ((v7 & 0x80u) == 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = a2[1];
    }

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v23 = *a3;
    v24 = *(a3 + 16);
    v7 = *(a2 + 23);
    v8 = v7;
    v9 = a2[1];
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = a2[1];
    }

    if (!v10)
    {
      goto LABEL_16;
    }
  }

  v12 = HIBYTE(v24);
  if (v24 < 0)
  {
    v12 = v23[1];
  }

  if (v12)
  {
    if (*(a1 + 23) < 0)
    {
      sub_325C(__p, *a1, *(a1 + 8));
      v7 = *(a2 + 23);
      v9 = a2[1];
      v8 = *(a2 + 23);
    }

    else
    {
      *__p = *a1;
      v22 = *(a1 + 16);
    }

    goto LABEL_17;
  }

LABEL_16:
  HIBYTE(v22) = 0;
  LOBYTE(__p[0]) = 0;
LABEL_17:
  if (v8 >= 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  if (v22 >= 0)
  {
    v14 = HIBYTE(v22);
  }

  else
  {
    v14 = __p[1];
  }

  if (v14 + v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v14 + v13 > 0x16)
  {
    operator new();
  }

  memset(&v20, 0, sizeof(v20));
  *(&v20.__r_.__value_.__s + 23) = v14 + v13;
  if (v13)
  {
    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    memmove(&v20, v15, v13);
  }

  if (v14)
  {
    if (v22 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    memmove(&v20 + v13, v16, v14);
  }

  v20.__r_.__value_.__s.__data_[v13 + v14] = 0;
  if (v24 >= 0)
  {
    v17 = v23;
  }

  else
  {
    v17 = v23[0];
  }

  if (v24 >= 0)
  {
    v18 = HIBYTE(v24);
  }

  else
  {
    v18 = v23[1];
  }

  v19 = std::string::append(&v20, v17, v18);
  *a4 = *v19;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
LABEL_44:
      if ((SHIBYTE(v24) & 0x80000000) == 0)
      {
        return;
      }

LABEL_48:
      operator delete(v23[0]);
      return;
    }
  }

  else if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v24) < 0)
  {
    goto LABEL_48;
  }
}

void sub_2A82C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if ((a28 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

int *sub_2A833C(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v4 = *a1;
    if (!*a1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v22 = sub_2D390(exception, "FB provider unavailable for fetching configuration from config layer.", 0x45uLL);
    }

    v5 = sub_2D52A4(v4, 23, 1u, 0);
    if (!v6)
    {
      goto LABEL_34;
    }

LABEL_8:
    v9 = v5;
    goto LABEL_9;
  }

  if (a2 == 3)
  {
    v7 = *a1;
    if (!*a1)
    {
      v23 = __cxa_allocate_exception(0x40uLL);
      v24 = sub_2D390(v23, "FB provider unavailable for fetching configuration from EV model layer.", 0x47uLL);
    }

    v5 = sub_2D52A4(v7, 36, 1u, 0);
    if (!v8)
    {
LABEL_34:
      v16 = __cxa_allocate_exception(0x40uLL);
      v17 = "FB file).";
      if (a2 == 1)
      {
        v17 = "FB layer).";
      }

      *&v30 = v17;
      sub_2AA698("FB Config unavailable (source: ", &v30, v39);
      if ((v40 & 0x80u) == 0)
      {
        v18 = v39;
      }

      else
      {
        v18 = v39[0];
      }

      if ((v40 & 0x80u) == 0)
      {
        v19 = v40;
      }

      else
      {
        v19 = v39[1];
      }

      v20 = sub_2D390(v16, v18, v19);
    }

    goto LABEL_8;
  }

  v12 = *(a1 + 87);
  if (v12 < 0)
  {
    v9 = (a1 + 64);
    if (*(a1 + 72))
    {
LABEL_14:
      if ((v12 & 0x80) == 0)
      {
        goto LABEL_9;
      }

LABEL_33:
      v9 = v9->__r_.__value_.__r.__words[0];
      goto LABEL_9;
    }
  }

  else
  {
    v9 = (a1 + 64);
    if (*(a1 + 87))
    {
      goto LABEL_14;
    }
  }

  sub_6C8C8(v39);
  if (!v42)
  {
    v25 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54(" for reading.", &v29, &v30);
    if ((SBYTE7(v31) & 0x80u) == 0)
    {
      v26 = &v30;
    }

    else
    {
      v26 = v30;
    }

    if ((SBYTE7(v31) & 0x80u) == 0)
    {
      v27 = BYTE7(v31);
    }

    else
    {
      v27 = *(&v30 + 1);
    }

    v28 = sub_2D390(v25, v26, v27);
  }

  std::istream::tellg();
  v13 = v38;
  v14 = *(a1 + 87);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v14 = *(a1 + 72);
    if (v14 >= v38)
    {
      v15 = *(a1 + 64);
      *(a1 + 72) = v38;
      goto LABEL_24;
    }

LABEL_22:
    std::string::append(v9, v38 - v14, 0);
    goto LABEL_25;
  }

  if (v38 > v14)
  {
    goto LABEL_22;
  }

  *(a1 + 87) = v38;
  v15 = v9;
LABEL_24:
  v15->__r_.__value_.__s.__data_[v13] = 0;
LABEL_25:
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  std::istream::seekg();
  if ((*(a1 + 87) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 72))
    {
      goto LABEL_30;
    }
  }

  else if (!*(a1 + 87))
  {
    goto LABEL_30;
  }

  std::istream::read();
LABEL_30:
  if (!std::filebuf::close())
  {
    std::ios_base::clear((v39 + *(v39[0] - 3)), *&v41[*(v39[0] - 3)] | 4);
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  if ((*(a1 + 87) & 0x80) != 0)
  {
    goto LABEL_33;
  }

LABEL_9:
  result = (v9 + LODWORD(v9->__r_.__value_.__l.__data_));
  v11 = (result - *result);
  if (*v11 < 7u || !v11[3])
  {
    goto LABEL_34;
  }

  return result;
}

void sub_2A875C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_2A87DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2A880C@<D0>(uint64_t a1@<X0>, std::string::size_type a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 - 1) >= 3)
  {
    if (a3)
    {
      result = 0.0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 1065353216;
    }

    else
    {
      sub_2A8838(a1, a2, a4);
    }
  }

  else
  {
    sub_2A8990(a1, a2, a3, a4);
  }

  return result;
}

void sub_2A8838(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  HIBYTE(v9) = 1;
  LOWORD(__p[0]) = 47;
  sub_2A8074(__p, (a1 + 16), a2, &v10);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  sub_69E4C(&v10, __p);
  sub_8CF80(__p, a3);
  v4 = v9;
  if (v9)
  {
    do
    {
      v5 = *v4;
      v6 = *(v4 + 12);
      if (v6 != -1)
      {
        (off_26689F8[v6])(&v11, v4 + 5);
      }

      *(v4 + 12) = -1;
      if (*(v4 + 39) < 0)
      {
        operator delete(v4[2]);
      }

      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v7 = __p[0];
  __p[0] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_2A894C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_5C010(&a10);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2A8990(uint64_t a1@<X0>, std::string::size_type a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = sub_2A833C(a1, a3);
  v7 = (v6 + *(v6 - *v6 + 6));
  v8 = (v7 + *v7);
  if (a3 == 3)
  {
    v9 = *v8;
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 4 * v9;
      while (1)
      {
        v13 = v8[v10 / 4 + 1];
        v14 = &v8[v10 / 4] + v13;
        v15 = v13 + *(&v8[v10 / 4 + 2] + v13 - *(v14 + 1));
        v16 = &v8[v10 / 4] + v15 + *(&v8[v10 / 4 + 1] + v15);
        v17 = *(v16 + 1);
        if (v17 >= 0x17)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = *(v16 + 1);
        if (v17)
        {
          memcpy(&__p, v16 + 8, v17);
        }

        __p.__r_.__value_.__s.__data_[v17] = 0;
        v18 = *(a2 + 23) >= 0 ? a2 : *a2;
        v19 = strlen(v18);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
        {
          break;
        }

        if (v19 == __p.__r_.__value_.__l.__size_)
        {
          if (v19 == -1)
          {
            sub_49D4();
          }

          v20 = __p.__r_.__value_.__r.__words[0];
          v21 = memcmp(__p.__r_.__value_.__l.__data_, v18, v19);
          operator delete(v20);
          if (v21)
          {
            goto LABEL_5;
          }

LABEL_21:
          v11 = (v14 + 4);
          goto LABEL_5;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_5:
        v10 += 4;
        if (v12 == v10)
        {
          goto LABEL_27;
        }
      }

      if (v19 != SHIBYTE(__p.__r_.__value_.__r.__words[2]) || memcmp(&__p, v18, v19))
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }

LABEL_43:
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54(" not found in the config layer.", &v45, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v39 = sub_2D390(exception, p_p, size);
  }

  if (*(a2 + 23) >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = *a2;
  }

  __p.__r_.__value_.__r.__words[0] = v22;
  v23 = bsearch(&__p, v8 + 1, *v8, 4uLL, sub_2AA944);
  if (!v23)
  {
    goto LABEL_43;
  }

  v11 = (v23 + *v23);
LABEL_27:
  if (!v11)
  {
    goto LABEL_43;
  }

  v24 = (v11 - *v11);
  if (*v24 < 7u || (v25 = v24[3]) == 0 || !*(v11 + v25 + *(v11 + v25)))
  {
    v40 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54(" not having any region data in config layer.", &v45, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &__p;
    }

    else
    {
      v41 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = __p.__r_.__value_.__l.__size_;
    }

    v43 = sub_2D390(v40, v41, v42);
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  v26 = (v11 - *v11);
  if (*v26 >= 7u && (v27 = v26[3]) != 0)
  {
    v28 = (v11 + v27 + *(v11 + v27));
    v29 = *v28;
    if (*v28 == 1)
    {
      v35 = (v28 + v28[1] + *(v28 + v28[1] - *(v28 + v28[1] + 4) + 10) + 4);
      sub_2A6F40((v35 + *v35));
    }
  }

  else
  {
    v28 = 0;
    v29 = -17958193;
  }

  if (v29)
  {
    v30 = (v28 + v28[1] + 4);
    v31 = (v30 + *(v30 - *v30 + 4));
    v32 = *v31;
    v33 = *(v31 + v32);
    if (v33 < 0x17)
    {
      v48 = *(v31 + v32);
      if (v33)
      {
        memcpy(&__dst, v31 + v32 + 4, v33);
      }

      *(&__dst + v33) = 0;
      v34 = (v30 + *(v30 - *v30 + 6));
      sub_2A6F40((v34 + *v34));
    }

    operator new();
  }
}

void sub_2A9058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_2A9168@<D0>(uint64_t a1@<X0>, const void **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 - 1) >= 3)
  {
    if (!a3)
    {
      sub_2A9194(a1);
    }

    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 1065353216;
  }

  else
  {
    sub_2A9620(a1, a2, a3, a4);
  }

  return result;
}

void sub_2A95A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_918A4(v4);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_2A9620(uint64_t a1@<X0>, const void **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  sub_2AA45C(a1, a2, a3, &v39);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  sub_2AAA08(v46, a4, &v39);
  v5 = v39;
  v6 = v40;
  if (v39 != v40)
  {
    while ((a3 - 1) >= 3)
    {
      if (!a3)
      {
        sub_2A8838(a1, v5, &v51);
LABEL_6:
        if ((*(v5 + 23) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }

      v51 = 0u;
      v52 = 0u;
      v53 = 1065353216;
      if ((*(v5 + 23) & 0x80000000) == 0)
      {
LABEL_7:
        v7 = *v5;
        v42 = v5[2];
        *v41 = v7;
        goto LABEL_12;
      }

LABEL_11:
      sub_325C(v41, *v5, v5[1]);
LABEL_12:
      v8 = v51;
      v51 = 0uLL;
      v43 = v8;
      v9 = v52;
      v44 = v52;
      v45 = v53;
      if (*(&v52 + 1))
      {
        v10 = *(v52 + 8);
        if ((*(&v8 + 1) & (*(&v8 + 1) - 1)) != 0)
        {
          if (v10 >= *(&v8 + 1))
          {
            v10 %= *(&v8 + 1);
          }
        }

        else
        {
          v10 &= *(&v8 + 1) - 1;
        }

        *(v8 + 8 * v10) = &v44;
        v52 = 0uLL;
      }

      else if (v52)
      {
        do
        {
          v11 = *v9;
          v12 = *(v9 + 7);
          if (v12)
          {
            do
            {
              v14 = *v12;
              v15 = *(v12 + 12);
              if (v15 != -1)
              {
                (off_26689F8[v15])(v54, v12 + 5);
              }

              *(v12 + 12) = -1;
              if (*(v12 + 39) < 0)
              {
                operator delete(v12[2]);
              }

              operator delete(v12);
              v12 = v14;
            }

            while (v14);
          }

          v13 = *(v9 + 5);
          *(v9 + 5) = 0;
          if (v13)
          {
            operator delete(v13);
          }

          if (v9[39] < 0)
          {
            operator delete(*(v9 + 2));
          }

          operator delete(v9);
          v9 = v11;
        }

        while (v11);
      }

      v16 = v51;
      *&v51 = 0;
      if (v16)
      {
        operator delete(v16);
      }

      *v46 = *v41;
      v41[0] = 0;
      v41[1] = 0;
      v17 = v42;
      v18 = v43;
      v43 = 0uLL;
      v42 = 0;
      v47 = v17;
      __p = v18;
      v49 = v44;
      v50 = v45;
      if (*(&v44 + 1))
      {
        v19 = *(v44 + 8);
        if ((*(&v18 + 1) & (*(&v18 + 1) - 1)) != 0)
        {
          if (v19 >= *(&v18 + 1))
          {
            v19 %= *(&v18 + 1);
          }
        }

        else
        {
          v19 &= *(&v18 + 1) - 1;
        }

        *(v18 + 8 * v19) = &v49;
        v44 = 0uLL;
      }

      sub_2AAB30(a4, v46);
      v20 = v49;
      if (v49)
      {
        do
        {
          v23 = *v20;
          v24 = *(v20 + 7);
          if (v24)
          {
            do
            {
              v26 = *v24;
              v27 = *(v24 + 12);
              if (v27 != -1)
              {
                (off_26689F8[v27])(&v51, v24 + 5);
              }

              *(v24 + 12) = -1;
              if (*(v24 + 39) < 0)
              {
                operator delete(v24[2]);
              }

              operator delete(v24);
              v24 = v26;
            }

            while (v26);
          }

          v25 = *(v20 + 5);
          *(v20 + 5) = 0;
          if (v25)
          {
            operator delete(v25);
          }

          if (v20[39] < 0)
          {
            operator delete(*(v20 + 2));
          }

          operator delete(v20);
          v20 = v23;
        }

        while (v23);
      }

      v21 = __p;
      *&__p = 0;
      if (v21)
      {
        operator delete(v21);
      }

      if (SHIBYTE(v47) < 0)
      {
        operator delete(v46[0]);
        v22 = v44;
        if (v44)
        {
          do
          {
LABEL_62:
            v29 = *v22;
            v30 = *(v22 + 7);
            if (v30)
            {
              do
              {
                v32 = *v30;
                v33 = *(v30 + 12);
                if (v33 != -1)
                {
                  (off_26689F8[v33])(&v51, v30 + 5);
                }

                *(v30 + 12) = -1;
                if (*(v30 + 39) < 0)
                {
                  operator delete(v30[2]);
                }

                operator delete(v30);
                v30 = v32;
              }

              while (v32);
            }

            v31 = *(v22 + 5);
            *(v22 + 5) = 0;
            if (v31)
            {
              operator delete(v31);
            }

            if (v22[39] < 0)
            {
              operator delete(*(v22 + 2));
            }

            operator delete(v22);
            v22 = v29;
          }

          while (v29);
        }
      }

      else
      {
        v22 = v44;
        if (v44)
        {
          goto LABEL_62;
        }
      }

      v28 = v43;
      *&v43 = 0;
      if (v28)
      {
        operator delete(v28);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41[0]);
      }

      v5 += 3;
      if (v5 == v6)
      {
        v5 = v39;
        goto LABEL_73;
      }
    }

    sub_2A8990(a1, v5, a3, &v51);
    goto LABEL_6;
  }

LABEL_73:
  if (v5)
  {
    v34 = v40;
    v35 = v5;
    if (v40 != v5)
    {
      do
      {
        v36 = *(v34 - 1);
        v34 -= 3;
        if (v36 < 0)
        {
          operator delete(*v34);
        }
      }

      while (v34 != v5);
      v35 = v39;
    }

    v40 = v5;
    operator delete(v35);
  }
}

void sub_2A9A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_918A4(v4);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_2A9ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  sub_96AA4(va2);
  sub_96AA4(va1);
  sub_918A4(v4);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_2A9B04(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if ((a2 - 1) >= 3)
  {
    if (!a2)
    {
      v4 = 0;
      LOBYTE(v3) = 0;
      sub_2A9B74(a1, a3);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v4 = 0;
    LOBYTE(v3) = 0;
    sub_2AA45C(a1, &v3, a2, a3);
  }
}

void sub_2A9B74(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  if (sub_74788((a1 + 16)))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    sub_59408(v8, v3, 5);
  }

  exception = __cxa_allocate_exception(0x40uLL);
  std::operator+<char>();
  if ((v9 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = v8[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = v8[1];
  }

  v7 = sub_2D390(exception, v5, v6);
}

void sub_2AA338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::ios::~ios();
  a21 = (v27 - 224);
  sub_7507C(&a21);
  a21 = (v27 - 192);
  sub_7507C(&a21);
  sub_751A0((v27 - 152));
  sub_1A104(v26);
  _Unwind_Resume(a1);
}

void sub_2AA45C(uint64_t a1@<X0>, const void **a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v6 = sub_2A833C(a1, a3);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v7 = *(v6 - *v6 + 6);
  v8 = *(v6 + v7);
  v9 = (v6 + v7 + v8);
  v10 = *v9;
  if (v10)
  {
    v11 = 0;
    v12 = 4 * v10;
    v13 = v6 + v7 + v8;
    do
    {
      v14 = v9[v11 / 4 + 1] + *&v13[v11 + 8 + v9[v11 / 4 + 1] - *(&v9[v11 / 4 + 1] + v9[v11 / 4 + 1])];
      v15 = &v13[v14 + v11 + *&v13[v11 + 4 + v14]];
      v16 = *(v15 + 4);
      if (v16 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v26) = *(v15 + 4);
      if (v16)
      {
        memcpy(&__dst, (v15 + 8), v16);
        *(&__dst + v16) = 0;
        v17 = *(a2 + 23);
        if ((v17 & 0x8000000000000000) == 0)
        {
LABEL_7:
          if (v17)
          {
            v18 = a2;
            goto LABEL_13;
          }

          goto LABEL_20;
        }
      }

      else
      {
        *(&__dst + v16) = 0;
        v17 = *(a2 + 23);
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_7;
        }
      }

      v17 = a2[1];
      if (v17)
      {
        v18 = *a2;
LABEL_13:
        v19 = HIBYTE(v26);
        v20 = HIBYTE(v26);
        if (v26 < 0)
        {
          v19 = *(&__dst + 1);
        }

        if (v19 < v17)
        {
          goto LABEL_27;
        }

        v21 = v26 >= 0 ? &__dst : __dst;
        if (memcmp(v21, v18, v17))
        {
          goto LABEL_27;
        }
      }

LABEL_20:
      v22 = a4[1];
      if (v22 >= a4[2])
      {
        v24 = sub_1CEE8(a4, &__dst);
      }

      else
      {
        if (SHIBYTE(v26) < 0)
        {
          sub_325C(a4[1], __dst, *(&__dst + 1));
        }

        else
        {
          v23 = __dst;
          *(v22 + 16) = v26;
          *v22 = v23;
        }

        v24 = v22 + 24;
      }

      a4[1] = v24;
      v20 = HIBYTE(v26);
LABEL_27:
      if (v20 < 0)
      {
        operator delete(__dst);
      }

      v11 += 4;
    }

    while (v12 != v11);
  }
}

void sub_2AA654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1A104(v15);
    _Unwind_Resume(a1);
  }

  sub_1A104(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_2AA698@<X0>(const char *a1@<X0>, const char **a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v15);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v16, a1, v6);
  v8 = *a2;
  v9 = strlen(v8);
  sub_4A5C(v7, v8, v9);
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
      goto LABEL_16;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v10 = 0;
      a3[23] = 0;
      goto LABEL_12;
    }

    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a3[23] = v10;
  if (v10)
  {
    memmove(a3, v12, v10);
  }

LABEL_12:
  a3[v10] = 0;
  v16 = v13;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_2AA920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_2AA988(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_26689F8[v2])(&v4, a1 + 24);
  }

  *(a1 + 32) = -1;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2AAA08(uint64_t a1, uint64_t a2, void *a3)
{
  prime = vcvtps_u32_f32((*(a2 + 24) - 0x5555555555555555 * ((a3[1] - *a3) >> 3)) / *(a2 + 32));
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v5 = *(a2 + 8);
  if (prime > *&v5)
  {
    goto LABEL_6;
  }

  if (prime >= *&v5)
  {
    return;
  }

  v6 = vcvtps_u32_f32(*(a2 + 24) / *(a2 + 32));
  if (*&v5 < 3uLL || (v7 = vcnt_s8(v5), v7.i16[0] = vaddlv_u8(v7), v7.u32[0] > 1uLL))
  {
    v9 = prime;
    v10 = std::__next_prime(v6);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime >= *&v5)
    {
      return;
    }

LABEL_6:

    sub_B07C(a2, prime);
    return;
  }

  v8 = 1 << -__clz(v6 - 1);
  if (v6 >= 2)
  {
    v6 = v8;
  }

  if (prime <= v6)
  {
    prime = v6;
  }

  if (prime < *&v5)
  {
    goto LABEL_6;
  }
}

uint64_t **sub_2AAB30(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    sub_2AAEFC();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_2AAEE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_94520(va);
  _Unwind_Resume(a1);
}

void *sub_2AAFFC(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_2AB114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_746A0(&a11);
  *(v11 + 8) = v12;
  sub_99B5C(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_2AB134(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

uint64_t sub_2AB144(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    return result;
  }

  if (sub_2D5658(result))
  {
    return 0;
  }

  v5 = sub_2D52A4(*a1, 24, 1u, 0);
  if (!v6 || (v7 = (v5 + *v5), v8 = (v7 - *v7), *v8 < 5u) || (v9 = v8[2]) == 0 || (v10 = (v7 + v9 + *(v7 + v9)), !*v10))
  {
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&__key);
    sub_4A5C(&__key, "Failed to read EV charging network data from flatbuffers", 56);
    if ((v30 & 0x10) != 0)
    {
      v16 = v29;
      if (v29 < v26)
      {
        v29 = v26;
        v16 = v26;
      }

      v17 = v25;
      v15 = v16 - v25;
      if (v16 - v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if ((v30 & 8) == 0)
      {
        v15 = 0;
        v19 = 0;
LABEL_23:
        *(&__p + v15) = 0;
        sub_7E854(&__p, 3u);
        if (v19 < 0)
        {
          operator delete(__p);
        }

        if (v28 < 0)
        {
          operator delete(v27);
        }

        std::locale::~locale(&v22);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v17 = v23;
      v15 = v24 - v23;
      if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_30:
        sub_3244();
      }
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v19 = v15;
    if (v15)
    {
      memmove(&__p, v17, v15);
    }

    goto LABEL_23;
  }

  v11 = (v10 + v10[1] + 4);
  v12 = (v11 - *v11);
  if (*v12 >= 5u)
  {
    v13 = v12[2];
    if (v13)
    {
      v14 = (v11 + v13 + *(v11 + v13));
      __key = nullsub_1(a2);
      return bsearch(&__key, v14 + 1, *v14, 4uLL, sub_2AB574) != 0;
    }
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&__key);
    sub_4A5C(&__key, "Failed to read EV brand info from flatbuffers", 45);
    sub_66B8(&v21, &__p);
    sub_7E854(&__p, 3u);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    sub_1959728(&__key);
    return 0;
  }

  return result;
}

void sub_2AB4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t sub_2AB574(unint64_t *a1, unsigned int *a2)
{
  v2 = (a2 + *a2);
  v3 = *a1;
  v4 = (v2 - *v2);
  if (*v4 < 5u)
  {
    return v3 != 0;
  }

  v5 = v4[2];
  if (!v5)
  {
    return v3 != 0;
  }

  v6 = *(v2 + v5);
  if (v6 <= v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v6 >= v3)
  {
    return v7;
  }

  else
  {
    return v7 + 1;
  }
}

void sub_2AB5D8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  v7 = *a1;
  v6 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = 0;
  a1[2] = v7;
  a1[3] = v6;
  do
  {
    v9 = &a1[v8];
    *(v9 + 8) = 0;
    *(v9 + 14) = 0;
    v9[5] = 0;
    v9[8] = 0;
    v8 += 6;
  }

  while (v8 != 480);
  *(a1 + 242) = 0u;
  v10 = *a1;
  if (*a1)
  {
    LOBYTE(v10) = sub_2D5658(v10);
  }

  *(a1 + 3888) = v10;
  sub_2AFCBC(a1 + 487, a2);
}

void sub_2AB67C(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + 16);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_2AB698(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a2 == -1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && ((v4 = nullsub_1(a2), v5 = sub_2D54A0(v2, 16, v4), HIDWORD(v5)) ? (v7 = v5 == 0xFFFFFFFFLL) : (v7 = 1), !v7 ? (v8 = v6 == 0) : (v8 = 0), v8))
  {
    return (v5 << 32) | HIDWORD(v5);
  }

  else
  {
    return 0xFFFFFFFF00000000;
  }
}

unint64_t sub_2AB71C(uint64_t *a1, unint64_t a2, int a3)
{
  if (!a3)
  {
    return 0xFFFFFFFF00000000;
  }

  if (a3 == 2)
  {
    return a2 | (HIDWORD(a2) << 32);
  }

  if (a3 != 1)
  {
    sub_5AF20();
  }

  v3 = 0;
  v4 = *a1;
  v5 = 0xFFFFFFFFLL;
  if (*a1 && a2 != -1)
  {
    v6 = nullsub_1(a2);
    v7 = sub_2D54A0(v4, 16, v6);
    v5 = v7;
    v3 = HIDWORD(v7);
    if (HIDWORD(v7))
    {
      v9 = v7 == 0xFFFFFFFFLL;
    }

    else
    {
      v9 = 1;
    }

    v10 = !v9;
    if ((v10 & (v8 == 0)) == 0)
    {
      v3 = 0;
      v5 = 0xFFFFFFFFLL;
    }
  }

  return v3 | (v5 << 32);
}

uint64_t sub_2AB7E0(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return -1;
  }

  v2 = HIDWORD(a2);
  if (HIDWORD(a2) == 0xFFFFFFFF)
  {
    return -1;
  }

  v3 = sub_2AC914(a1 + 16, a2, 1);
  if (!v3)
  {
    return -1;
  }

  v4 = &v3[-*v3];
  if (*v4 < 5u)
  {
    return -1;
  }

  v5 = *(v4 + 2);
  if (!v5)
  {
    return -1;
  }

  v6 = &v3[4 * v2 + v5 + *&v3[v5]];
  v7 = (v6 + 4 + *(v6 + 4));
  v8 = (v7 - *v7);
  if (*v8 >= 5u && (v9 = v8[2]) != 0)
  {
    v10 = *(v7 + v9);
  }

  else
  {
    v10 = 0;
  }

  return nullsub_1(v10);
}

uint64_t sub_2AB8BC(uint64_t a1, unint64_t a2, int a3)
{
  if (!a3)
  {
    return -1;
  }

  if (a3 == 1)
  {
    return a2;
  }

  if (a3 != 2)
  {
    sub_5AF20();
  }

  result = -1;
  if (a2)
  {
    v5 = HIDWORD(a2);
    if (HIDWORD(a2) != 0xFFFFFFFF)
    {
      v6 = sub_2AC914(a1 + 16, a2, 1);
      if (v6)
      {
        v7 = &v6[-*v6];
        if (*v7 >= 5u)
        {
          v8 = *(v7 + 2);
          if (v8)
          {
            v9 = &v6[4 * v5 + v8 + *&v6[v8]];
            v10 = (v9 + 4 + *(v9 + 4));
            v11 = (v10 - *v10);
            if (*v11 >= 5u && (v12 = v11[2]) != 0)
            {
              v13 = *(v10 + v12);
            }

            else
            {
              v13 = 0;
            }

            return nullsub_1(v13);
          }
        }
      }

      return -1;
    }
  }

  return result;
}

double sub_2AB9C8@<D0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  switch(a3)
  {
    case 0:
      goto LABEL_28;
    case 2:
      v16 = HIDWORD(a2);
      v15 = a2;
      if (!a2)
      {
LABEL_28:
        *(a4 + 48) = 0;
        result = 0.0;
        *(a4 + 16) = 0u;
        *(a4 + 32) = 0u;
        *a4 = 0u;
        *(a4 + 52) = 0xFFFFFFFF00000000;
        *(a4 + 64) = -1;
        *(a4 + 72) = 0;
        *(a4 + 76) = 0;
        return result;
      }

      break;
    case 1:
      v5 = *a1;
      if (!*a1 || a2 == -1)
      {
        goto LABEL_28;
      }

      v6 = a1;
      v7 = nullsub_1(a2);
      v9 = sub_2D54A0(v5, 16, v7);
      a1 = v6;
      v10 = v9;
      v11 = HIDWORD(v9);
      v12 = !v11 || v10 == 0xFFFFFFFFLL;
      v13 = !v12;
      v14 = v8 == 0;
      v15 = v13 && v14 ? v11 : 0;
      v16 = v13 && v14 ? v10 : 0xFFFFFFFFLL;
      if (!v15)
      {
        goto LABEL_28;
      }

      break;
    default:
      sub_5AF20();
  }

  if (v16 == 0xFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  v17 = a1;
  v18 = sub_2AC914((a1 + 2), v15, 1);
  if (!v18)
  {
    goto LABEL_28;
  }

  v19 = &v18[-*v18];
  if (*v19 < 5u)
  {
    goto LABEL_28;
  }

  v20 = *(v19 + 2);
  if (!v20)
  {
    goto LABEL_28;
  }

  v21 = &v18[4 * v16 + v20 + *&v18[v20]];
  v22 = (v21 + 4 + *(v21 + 4));

  sub_2ABB9C(v17, v22, v15 | (v16 << 32), a4);
  return result;
}

void **sub_2ABB28(void **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_2ABB9C(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *(a4 + 52) = 0xFFFFFFFF00000000;
  *(a4 + 64) = -1;
  *(a4 + 72) = 0;
  *(a4 + 76) = 0;
  v5 = (a2 - *a2);
  if (*v5 < 0xDu)
  {
    return;
  }

  if (!v5[6])
  {
    return;
  }

  v6 = v5[4];
  if (!v6)
  {
    return;
  }

  v8 = *(a2 + v6);
  v9 = *(a2 + v6 + v8);
  if (!v9)
  {
    return;
  }

  v12 = 4 * v9;
  v13 = v6 + v8;
  do
  {
    v15 = *(a2 + v13 + 4);
    v16 = a2 + v13 + v15 - *(a2 + v13 + v15 + 4);
    if (*(v16 + 2) < 7u)
    {
      v17 = 0;
      if (*(a1 + 3888) != 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v17 = *(v16 + 5);
      if (v17)
      {
        v17 = (v17 + v15 + v13 + a2 + *(v17 + v15 + a2 + v13 + 4) + 4);
      }

      if (*(a1 + 3888) != 1)
      {
        goto LABEL_16;
      }
    }

    if (!sub_2AF704(a1 + 16, *(v17 + *(v17 - *v17 + 6)), 1))
    {
      goto LABEL_7;
    }

    v15 = *(a2 + v13 + 4);
LABEL_16:
    sub_2ADEF4((a2 + v13 + v15 + 4), &v40);
    v18 = *(a4 + 8);
    if (v18 < *(a4 + 16))
    {
      v14 = v40;
      *(v18 + 16) = v41;
      *v18 = v14;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
      *(v18 + 24) = 0;
      *(v18 + 24) = *__p;
      *(v18 + 40) = v43;
      *(a4 + 8) = v18 + 48;
    }

    else
    {
      v19 = sub_2AF3E8(a4, &v40);
      v20 = __p[0];
      *(a4 + 8) = v19;
      if (v20)
      {
        __p[1] = v20;
        operator delete(v20);
      }
    }

LABEL_7:
    v13 += 4;
    v12 -= 4;
  }

  while (v12);
  if (*a4 == *(a4 + 8))
  {
    return;
  }

  v21 = (a2 - *a2);
  if (*v21 < 0xDu || (v22 = v21[6]) == 0 || *(a2 + v22 + *(a2 + v22)))
  {
    operator new();
  }

  v23 = *(a4 + 24);
  if (v23)
  {
    v24 = *(a4 + 32);
    v25 = *(a4 + 24);
    if (v24 != v23)
    {
      do
      {
        if (*(v24 - 1) < 0)
        {
          operator delete(*(v24 - 24));
        }

        v24 -= 48;
      }

      while (v24 != v23);
      v25 = *(a4 + 24);
    }

    *(a4 + 32) = v23;
    operator delete(v25);
  }

  *(a4 + 24) = 0uLL;
  *(a4 + 40) = 0;
  v26 = (a2 - *a2);
  v27 = *v26;
  if (v27 < 0x29)
  {
    *(a4 + 72) = 0;
    if (v27 >= 0x1D)
    {
      goto LABEL_37;
    }

LABEL_39:
    v30 = 0;
    goto LABEL_40;
  }

  v28 = v26[20];
  if (v26[20])
  {
    LODWORD(v28) = *(a2 + v28);
  }

  *(a4 + 72) = v28;
LABEL_37:
  v29 = v26[14];
  if (!v29)
  {
    goto LABEL_39;
  }

  v30 = *(a2 + v29);
LABEL_40:
  *(a4 + 48) = sub_9836C(v30);
  *(a4 + 52) = a3;
  v31 = (a2 - *a2);
  if (*v31 >= 0x25u && (v32 = v31[18]) != 0)
  {
    v33 = *(a2 + v32);
  }

  else
  {
    v33 = 0;
  }

  *(a4 + 64) = nullsub_1(v33);
  v34 = (a2 - *a2);
  if (*v34 >= 0x27u && (v35 = v34[19]) != 0)
  {
    v36 = *(a2 + v35);
  }

  else
  {
    v36 = 0;
  }

  *(a4 + 76) = sub_98360(v36);
  v37 = (a2 - *a2);
  if (*v37 >= 0x2Bu && (v38 = v37[21]) != 0)
  {
    v39 = *(a2 + v38);
  }

  else
  {
    v39 = 0;
  }

  *(a4 + 77) = sub_98360(v39);
}

void sub_2AC04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_2AE54C(&a9);
  sub_2ADCE0(v21);
  _Unwind_Resume(a1);
}

void sub_2AC0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
    sub_2ADCE0(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2AC0C8);
}

uint64_t sub_2AC0D8(uint64_t *a1, unint64_t a2, int a3, uint64_t a4)
{
  if (!a3)
  {
    return 1;
  }

  if (a3 == 2)
  {
    v7 = HIDWORD(a2);
    v5 = a2;
    goto LABEL_21;
  }

  if (a3 != 1)
  {
    sub_5AF20();
  }

  v5 = 0;
  v6 = *a1;
  LODWORD(v7) = -1;
  if (!*a1 || a2 == -1)
  {
LABEL_21:
    if (!v5)
    {
      return 1;
    }

    goto LABEL_24;
  }

  v8 = a1;
  v9 = nullsub_1(a2);
  v11 = sub_2D54A0(v6, 16, v9);
  a1 = v8;
  v12 = v11;
  v13 = HIDWORD(v11);
  if (v13)
  {
    v14 = v12 == 0xFFFFFFFFLL;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  v16 = v10 == 0;
  if ((v15 & v16) != 0)
  {
    v5 = v13;
  }

  else
  {
    v5 = 0;
  }

  if ((v15 & v16) != 0)
  {
    LODWORD(v7) = v12;
  }

  else
  {
    LODWORD(v7) = -1;
  }

  if (!v5)
  {
    return 1;
  }

LABEL_24:
  if (v7 != 0xFFFFFFFFLL)
  {
    v17 = sub_2AC914((a1 + 2), v5, 1);
    if (v17)
    {
      v18 = &v17[-*v17];
      if (*v18 >= 5u)
      {
        v19 = *(v18 + 2);
        if (v19)
        {
          v20 = &v17[4 * v7 + v19 + *&v17[v19]];
          v22[0] = (v20 + 4 + *(v20 + 4));
          v22[1] = (v5 | (v7 << 32));
          return sub_2AC230(a4, v22);
        }
      }
    }
  }

  return 1;
}

uint64_t sub_2AC230(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = &(*a2)[-**a2];
  v4 = *v3;
  if (v4 < 0xD)
  {
    return 1;
  }

  v5 = *(v3 + 6);
  if (!*(v3 + 6) || !*(v3 + 4))
  {
    return 1;
  }

  if (v4 >= 0x1F)
  {
    v8 = *(v3 + 15);
    if (v8)
    {
      v8 = *&v2[v8];
    }

    if ((*(a1 + 16) & v8) != 0)
    {
      return 1;
    }
  }

  v10 = *&v2[v5];
  v11 = *&v2[v5 + v10];
  if (!v11)
  {
    return 1;
  }

  v12 = 4 * v11;
  v13 = &v2[v10 + 4 + v5];
  while (1)
  {
    sub_98388(&v13[*v13], v27);
    v14.i64[0] = v28;
    v14.i64[1] = v29;
    v15 = v14;
    v15.i32[3] = v30;
    v15.i32[1] = v28;
    v16 = 1;
    if ((vmaxv_u16(vmovn_s32(vceqq_s32(v15, xmmword_2290150))) & 1) != 0 || !v31 || *a1 && (v16 = 1, ((1 << v27[0]) & *a1) == 0))
    {
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_16:
      operator delete(__p);
      goto LABEL_17;
    }

    v16 = *(a1 + 8) != v27[2] && *(a1 + 8) != 0;
    if (v33 < 0)
    {
      goto LABEL_16;
    }

LABEL_17:
    if (!v16)
    {
      break;
    }

    v13 += 4;
    result = 1;
    v12 -= 4;
    if (!v12)
    {
      return result;
    }
  }

  v17 = &(*a2)[-**a2];
  if (*v17 >= 9u && (v18 = *(v17 + 4)) != 0)
  {
    v19 = &(*a2)[v18 + *&(*a2)[v18]];
  }

  else
  {
    v19 = 0;
  }

  v20 = *v19;
  if (!v20)
  {
    return 1;
  }

  v21 = 4 * v20 - 4;
  v22 = (v19 + 4);
  v23 = v22;
  do
  {
    v24 = *v23++;
    v25 = sub_971D0((v22 + v24)) > *(a1 + 9);
    result = v25;
    v26 = !v25 || v21 == 0;
    v21 -= 4;
    v22 = v23;
  }

  while (!v26);
  return result;
}

void sub_2AC43C(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = sub_2D52A4(*a1, 16, a2, 1);
  if (v6)
  {
    v7 = (v5 + *v5);
    v8 = (v7 - *v7);
    if (*v8 >= 5u)
    {
      v9 = v8[2];
      if (v9)
      {
        v10 = (v7 + v9 + *(v7 + v9));
        v11 = *v10;
        if (v11)
        {
          v12 = 0;
          v13 = &v10[v11];
          do
          {
            v14 = v10[1];
            v15 = (++v10 + v14);
            v16 = (v15 - *v15);
            v17 = *v16;
            if (v17 >= 0xD && v16[6] && v16[4] && (v17 >= 0x13 ? (v18 = v16[3] == 0) : (v18 = 1), !v18 && (v19 = v16[9]) != 0 && *(v15 + v19 + *(v15 + v19))))
            {
              v42 = v15;
              v43 = (v4 | (v12 << 32));
              if ((sub_2AC230(a3, &v42) & 1) == 0)
              {
                sub_2ABB9C(a1, v15, v4 | (v12 << 32), &v42);
                if (v48[1] && v49 != -1)
                {
                  v20 = *(a4 + 8);
                  if (v20 >= *(a4 + 16))
                  {
                    v21 = sub_2AE5C0(a4, &v42);
                  }

                  else
                  {
                    sub_2AE6F4(*(a4 + 8), &v42);
                    v21 = v20 + 80;
                    *(a4 + 8) = v20 + 80;
                  }

                  *(a4 + 8) = v21;
                }

                v28 = v45;
                if (v45)
                {
                  v29 = v46;
                  v30 = v45;
                  if (v46 != v45)
                  {
                    do
                    {
                      if (*(v29 - 1) < 0)
                      {
                        operator delete(*(v29 - 3));
                      }

                      v29 -= 6;
                    }

                    while (v29 != v28);
                    v30 = v45;
                  }

                  v46 = v28;
                  operator delete(v30);
                }

                v31 = v42;
                if (v42)
                {
                  v32 = v43;
                  v33 = v42;
                  if (v43 != v42)
                  {
                    do
                    {
                      v34 = *(v32 - 3);
                      if (v34)
                      {
                        *(v32 - 2) = v34;
                        operator delete(v34);
                      }

                      v32 -= 48;
                    }

                    while (v32 != v31);
                    v33 = v42;
                  }

                  v43 = v31;
                  operator delete(v33);
                }
              }
            }

            else if (sub_7E7E4(3u))
            {
              sub_19594F8(&v42);
              v22 = sub_4A5C(&v42, "Found invalid charging station POI in quad node ", 48);
              v23 = sub_58200(v22, v4);
              sub_4A5C(v23, ".", 1);
              if ((v53 & 0x10) != 0)
              {
                v25 = v52;
                v26 = v48;
                if (v52 < v49)
                {
                  v52 = v49;
                  v25 = v49;
                  v26 = v48;
                }
              }

              else
              {
                if ((v53 & 8) == 0)
                {
                  v24 = 0;
                  v41 = 0;
LABEL_35:
                  *(&__dst + v24) = 0;
                  sub_7E854(&__dst, 3u);
                  if (v41 < 0)
                  {
                    operator delete(__dst);
                  }

                  v42 = v39;
                  *(&v42 + *(v39 - 3)) = v38;
                  if (v51 < 0)
                  {
                    operator delete(__p);
                  }

                  std::locale::~locale(&v44);
                  std::ostream::~ostream();
                  std::ios::~ios();
                  goto LABEL_7;
                }

                v25 = v47;
                v26 = &v45;
              }

              v27 = *v26;
              v24 = v25 - *v26;
              if (v24 >= 0x7FFFFFFFFFFFFFF8)
              {
                sub_3244();
              }

              if (v24 >= 0x17)
              {
                operator new();
              }

              v41 = v25 - *v26;
              if (v24)
              {
                memmove(&__dst, v27, v24);
              }

              goto LABEL_35;
            }

LABEL_7:
            ++v12;
          }

          while (v10 != v13);
        }
      }
    }
  }
}

void sub_2AC8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *(v11 + 8) = v12;
  sub_2ADCE0(va);
  _Unwind_Resume(a1);
}

void sub_2AC8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2ADCE0(va);
  _Unwind_Resume(a1);
}

void sub_2AC8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

char *sub_2AC914(uint64_t a1, unsigned int a2, int a3)
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

  if (*(a1 + 1552) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1560) = v3;
    v4 = *(a1 + 1568);
    if (!v4)
    {
      goto LABEL_30;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1576) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1584) = v3;
    v4 = *(a1 + 1592);
    if (!v4)
    {
      goto LABEL_30;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1600) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1608) = v3;
    v4 = *(a1 + 1616);
    if (!v4)
    {
      goto LABEL_30;
    }

    return v4 + *v4;
  }

  if (*(a1 + 1624) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 1632) = v3;
    v4 = *(a1 + 1640);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 1608);
    v8 = *(a1 + 1584);
    v9 = *(a1 + 1560);
    v10 = v9 < v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 1560);
    }

    v11 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 1584);
    }

    v12 = v10 << 6;
    if (!v11)
    {
      v12 = 65;
    }

    if (v7 >= v3)
    {
      v13 = v3;
    }

    else
    {
      v13 = *(a1 + 1608);
    }

    v14 = *(a1 + 1632);
    if (v7 >= v3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 66;
    }

    v17 = sub_2D52A4(*a1, 16, a2, 1);
    v18 = 67;
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
  sub_2AEFFC(v20);
  return 0;
}

uint64_t sub_2ACAE8(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = sub_2AC914(a1 + 16, a2, 1);
  if (!v4)
  {
    return 0;
  }

  v5 = &v4[-*v4];
  if (*v5 < 5u)
  {
    return 0;
  }

  v6 = *(v5 + 2);
  if (!v6)
  {
    return 0;
  }

  v7 = *&v4[v6];
  v8 = &v4[v6 + v7];
  v9 = *v8;
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  v11 = &v8[4 * v9];
  v12 = &v4[v6 + v7];
  v13 = v12;
  do
  {
    v15 = *(v13 + 1);
    v13 += 4;
    v14 = v15;
    v16 = &v13[v15];
    v17 = &v16[-*v16];
    if (*v17 >= 0xDu)
    {
      v18 = *(v17 + 6);
      if (v18)
      {
        v19 = &v16[v18];
        v20 = *&v16[v18];
        v21 = *&v19[v20];
        if (v21)
        {
          v22 = 0;
          v23 = 4 * v21;
          v24 = &v12[v14 + v20 + v18];
          do
          {
            v25 = *&v24[v22 + 8];
            v26 = &v24[v22 + v25];
            v27 = &v24[v22 + v25 - *(v26 + 2)];
            if (*(v27 + 4) >= 5u && (v28 = *(v27 + 6)) != 0)
            {
              if (((a3 >> sub_98378(v24[v22 + 8 + v25 + v28])) & 1) == 0)
              {
                goto LABEL_12;
              }
            }

            else if (((a3 >> sub_98378(0)) & 1) == 0)
            {
              goto LABEL_12;
            }

            v29 = &v24[v22 + v25 - *(v26 + 2)];
            if (*(v29 + 4) >= 0x13u)
            {
              v30 = *(v29 + 13);
              if (v30)
              {
                if (v24[v22 + 8 + v25 + v30] == 2)
                {
                  return 2;
                }
              }
            }

            v10 = 1;
LABEL_12:
            v22 += 4;
          }

          while (v23 != v22);
        }
      }
    }

    v12 = v13;
  }

  while (v13 != v11);
  return v10;
}

unint64_t sub_2ACC94(uint64_t a1, unint64_t a2)
{
  v2 = 0xFFFFFFFF00000000;
  v3 = 0xFFFFFFFFLL;
  if (a2)
  {
    v4 = HIDWORD(a2);
    if (HIDWORD(a2) != 0xFFFFFFFF)
    {
      v5 = sub_2AC914(a1 + 16, a2, 1);
      if (v5 && (v6 = &v5[-*v5], *v6 >= 5u) && (v7 = *(v6 + 2)) != 0 && (v8 = &v5[4 * v4 + v7 + *&v5[v7]], v9 = (v8 + 4 + *(v8 + 4)), v10 = (v9 - *v9), v11 = *v10, v11 >= 0xD) && v10[6] && v10[4] && ((v12 = v10[3], v11 >= 0x13) ? (v13 = v10[3] == 0) : (v13 = 1), !v13 && (v14 = v10[9]) != 0 && *(v9 + v14 + *(v9 + v14))))
      {
        v15 = v9 + v12;
        v3 = *v15;
        LODWORD(v15) = *(v15 + 4);
        if (v15 >= 0xFFFFFFFE)
        {
          v15 = 4294967294;
        }

        else
        {
          v15 = v15;
        }

        v2 = v15 << 32;
      }

      else
      {
        v2 = 0xFFFFFFFF00000000;
        v3 = 0xFFFFFFFFLL;
      }
    }
  }

  return v2 | v3;
}

int *sub_2ACD98(int *result)
{
  if (result)
  {
    v1 = (result - *result);
    v2 = *v1;
    if (v2 >= 0xD && v1[6] && v1[4] && (v2 >= 0x13 ? (v3 = v1[3] == 0) : (v3 = 1), !v3 && (v4 = v1[9]) != 0))
    {
      return (*(result + v4 + *(result + v4)) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2ACDFC(uint64_t *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v15 = a2 | (HIDWORD(a2) << 32);
    }

    else
    {
      if (a3 != 1)
      {
        sub_5AF20();
      }

      v4 = 0;
      v5 = *a1;
      v6 = 0xFFFFFFFFLL;
      if (*a1 && a2 != -1)
      {
        v7 = a1;
        v8 = a4;
        v9 = nullsub_1(a2);
        v10 = sub_2D54A0(v5, 16, v9);
        a4 = v8;
        v12 = v10;
        a1 = v7;
        v6 = v12;
        v4 = HIDWORD(v12);
        if (v4)
        {
          v13 = v6 == 0xFFFFFFFFLL;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        if ((v14 & (v11 == 0)) == 0)
        {
          v4 = 0;
          v6 = 0xFFFFFFFFLL;
        }
      }

      v15 = v4 | (v6 << 32);
    }

    sub_2ACF30(a1, v15, a4);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void sub_2ACF30(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 && (v4 = HIDWORD(a2), HIDWORD(a2) != 0xFFFFFFFF) && (v6 = sub_2AC914(a1 + 16, a2, 1)) != 0 && (v7 = &v6[-*v6], *v7 >= 5u) && (v8 = *(v7 + 2)) != 0)
  {
    v9 = *&v6[v8];
    v10 = 4 * v4;
    v11 = &v6[4 * v4 + v8 + v9];
    v12 = *(v11 + 1);
    v13 = &v11[v12 + 4];
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v14 = &v13[-*v13];
    v15 = *v14;
    if (v15 >= 0xD)
    {
      if (*(v14 + 6))
      {
        v16 = *(v14 + 4);
        if (*(v14 + 4))
        {
          if (v15 >= 0x13 && *(v14 + 3) != 0)
          {
            v18 = *(v14 + 9);
            if (v18)
            {
              if (*&v13[v18 + *&v13[v18]])
              {
                v19 = &v13[v16];
                v20 = *&v13[v16];
                v21 = *&v19[v20];
                if (v21)
                {
                  v22 = 0;
                  v23 = 4 * v21;
                  v24 = &v6[v16 + v12 + v9 + v8 + v10 + v20];
                  do
                  {
                    v26 = *&v24[v22 + 8];
                    v27 = &v24[v22 + v26 - *&v24[v22 + 8 + v26]];
                    if (*(v27 + 4) < 7u)
                    {
                      v28 = 0;
                      if (*(a1 + 3888) != 1)
                      {
                        goto LABEL_29;
                      }
                    }

                    else
                    {
                      v28 = *(v27 + 7);
                      if (v28)
                      {
                        v28 += &v24[v22 + 8 + v26 + *&v24[v22 + 8 + v26 + v28]];
                      }

                      if (*(a1 + 3888) != 1)
                      {
                        goto LABEL_29;
                      }
                    }

                    if (sub_2AF704(a1 + 16, *(v28 + *(v28 - *v28 + 6)), 1))
                    {
                      v26 = *&v24[v22 + 8];
LABEL_29:
                      sub_2ADEF4(&v24[v22 + 8 + v26], &v32);
                      v29 = a3[1];
                      if (v29 < a3[2])
                      {
                        v25 = v32;
                        *(v29 + 16) = v33;
                        *v29 = v25;
                        *(v29 + 32) = 0;
                        *(v29 + 40) = 0;
                        *(v29 + 24) = 0;
                        *(v29 + 24) = *__p;
                        *(v29 + 40) = v35;
                        a3[1] = v29 + 48;
                      }

                      else
                      {
                        v30 = sub_2AF3E8(a3, &v32);
                        v31 = __p[0];
                        a3[1] = v30;
                        if (v31)
                        {
                          __p[1] = v31;
                          operator delete(v31);
                        }
                      }
                    }

                    v22 += 4;
                  }

                  while (v23 != v22);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_2AD17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    sub_2ABB28(v13);
    _Unwind_Resume(a1);
  }

  sub_2ABB28(v13);
  _Unwind_Resume(a1);
}

double sub_2AD1B4@<D0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v15 = a2 | (HIDWORD(a2) << 32);
    }

    else
    {
      if (a3 != 1)
      {
        sub_5AF20();
      }

      v4 = 0;
      v5 = *a1;
      v6 = 0xFFFFFFFFLL;
      if (*a1 && a2 != -1)
      {
        v7 = a1;
        v8 = a4;
        v9 = nullsub_1(a2);
        v10 = sub_2D54A0(v5, 16, v9);
        a4 = v8;
        v12 = v10;
        a1 = v7;
        v6 = v12;
        v4 = HIDWORD(v12);
        if (v4)
        {
          v13 = v6 == 0xFFFFFFFFLL;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        if ((v14 & (v11 == 0)) == 0)
        {
          v4 = 0;
          v6 = 0xFFFFFFFFLL;
        }
      }

      v15 = v4 | (v6 << 32);
    }

    sub_2AD338(a1, v15, a4);
  }

  else
  {
    result = 0.0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 64) = 0;
    *(a4 + 72) = -1;
    *(a4 + 80) = 0x7FFFFFFF;
    *(a4 + 100) = 0u;
    *(a4 + 116) = 0u;
    *(a4 + 132) = 0u;
    *(a4 + 148) = 0u;
    *(a4 + 164) = 0u;
    *(a4 + 180) = 0u;
    *(a4 + 196) = 0u;
    *(a4 + 212) = 0u;
    *(a4 + 228) = 0u;
    *(a4 + 244) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 84) = 0u;
    v17 = (a4 + 84);
    v17[11] = 0u;
    v17[12] = 0u;
    v17[13] = 0u;
    v17[14] = 0u;
    v17[15] = 0u;
    v17[16] = 0u;
  }

  return result;
}

void sub_2AD338(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2 || (v4 = HIDWORD(a2), HIDWORD(a2) == 0xFFFFFFFF) || (v5 = sub_2AC914(a1 + 16, a2, 1)) == 0 || (v6 = &v5[-*v5], *v6 < 5u) || (v7 = *(v6 + 2)) == 0 || (v8 = &v5[4 * v4 + v7 + *&v5[v7]], v9 = (v8 + 4 + *(v8 + 4)), v10 = (v9 - *v9), v11 = *v10, v11 < 0xD) || !v10[6] || !v10[4] || (v11 >= 0x13 ? (v12 = v10[3] == 0) : (v12 = 1), v12 || (v13 = v10[9]) == 0 || !*(v9 + v13 + *(v9 + v13))))
  {
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 64) = 0;
    *(a3 + 72) = -1;
    *(a3 + 80) = 0x7FFFFFFF;
    *(a3 + 100) = 0u;
    *(a3 + 116) = 0u;
    *(a3 + 132) = 0u;
    *(a3 + 148) = 0u;
    *(a3 + 164) = 0u;
    *(a3 + 180) = 0u;
    *(a3 + 196) = 0u;
    *(a3 + 212) = 0u;
    *(a3 + 228) = 0u;
    *(a3 + 244) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 84) = 0u;
    v18 = (a3 + 84);
    v18[11] = 0u;
    v18[12] = 0u;
    v18[13] = 0u;
    v18[14] = 0u;
    v18[15] = 0u;
    v18[16] = 0u;
    return;
  }

  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = -1;
  *(a3 + 80) = 0x7FFFFFFF;
  *(a3 + 84) = 0u;
  *(a3 + 100) = 0u;
  *(a3 + 116) = 0u;
  *(a3 + 132) = 0u;
  *(a3 + 148) = 0u;
  *(a3 + 164) = 0u;
  *(a3 + 180) = 0u;
  *(a3 + 196) = 0u;
  *(a3 + 212) = 0u;
  *(a3 + 228) = 0u;
  *(a3 + 244) = 0u;
  *(a3 + 260) = 0u;
  *(a3 + 276) = 0u;
  *(a3 + 292) = 0u;
  *(a3 + 308) = 0u;
  *(a3 + 324) = 0u;
  *(a3 + 340) = 0u;
  *(a3 + 353) = 0;
  v14 = v9 + *(v9 - *v9 + 6);
  v15 = *v14;
  LODWORD(v14) = *(v14 + 4);
  if (v14 >= 0xFFFFFFFE)
  {
    v14 = 4294967294;
  }

  else
  {
    v14 = v14;
  }

  *(a3 + 72) = v15 | (v14 << 32);
  *(a3 + 80) = 0x7FFFFFFF;
  v16 = (v9 - *v9);
  if (*v16 < 0x11u)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = v16[8];
    if (v17)
    {
      LODWORD(v17) = *(v9 + v17);
    }
  }

  *(a3 + 84) = v17;
  v19 = (v9 - *v9);
  if (*v19 >= 0x13u && (v20 = v19[9]) != 0 && (v21 = (v9 + v20 + *(v9 + v20)), *v21) && (v22 = (v21 + v21[1] + 4), v23 = (v22 - *v22), *v23 >= 7u) && (v24 = v23[3]) != 0)
  {
    v25 = (v22 + v24);
    v26 = *v25;
    v27 = *(v25 + v26);
    if (v27 >= 0x17)
    {
      operator new();
    }

    BYTE7(v71[0]) = *(v25 + v26);
    if (v27)
    {
      memcpy(__dst, v25 + v26 + 4, v27);
    }

    *(__dst + v27) = 0;
    if (*(a3 + 23) < 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    BYTE7(v71[0]) = 0;
    LOBYTE(__dst[0]) = 0;
    if (*(a3 + 23) < 0)
    {
LABEL_33:
      operator delete(*a3);
    }
  }

  *a3 = *__dst;
  *(a3 + 16) = *&v71[0];
  v28 = (v9 - *v9);
  if (*v28 >= 0x17u && (v29 = v28[11]) != 0 && (v30 = (v9 + v29 + *(v9 + v29)), *v30) && (v31 = (v30 + v30[1] + 4), v32 = (v31 - *v31), *v32 >= 5u) && (v33 = v32[2]) != 0)
  {
    v34 = (v31 + v33);
    v35 = *v34;
    v36 = *(v34 + v35);
    if (v36 >= 0x17)
    {
      operator new();
    }

    BYTE7(v71[0]) = *(v34 + v35);
    if (v36)
    {
      memcpy(__dst, v34 + v35 + 4, v36);
    }

    *(__dst + v36) = 0;
    if (*(a3 + 47) < 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    BYTE7(v71[0]) = 0;
    LOBYTE(__dst[0]) = 0;
    if (*(a3 + 47) < 0)
    {
LABEL_43:
      operator delete(*(a3 + 24));
    }
  }

  *(a3 + 24) = *__dst;
  *(a3 + 40) = *&v71[0];
  v37 = (v9 - *v9);
  if (*v37 >= 0x19u && (v38 = v37[12]) != 0 && (v39 = (v9 + v38 + *(v9 + v38)), *v39) && (v40 = (v39 + v39[1] + 4), v41 = (v40 - *v40), *v41 >= 5u) && (v42 = v41[2]) != 0)
  {
    v43 = (v40 + v42);
    v44 = *v43;
    v45 = *(v43 + v44);
    if (v45 >= 0x17)
    {
      operator new();
    }

    BYTE7(v71[0]) = *(v43 + v44);
    if (v45)
    {
      memcpy(__dst, v43 + v44 + 4, v45);
    }

    *(__dst + v45) = 0;
    if ((*(a3 + 71) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    BYTE7(v71[0]) = 0;
    LOBYTE(__dst[0]) = 0;
    if ((*(a3 + 71) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }
  }

  operator delete(*(a3 + 48));
LABEL_54:
  *(a3 + 48) = *__dst;
  *(a3 + 64) = *&v71[0];
  v46 = (v9 - *v9);
  if (*v46 >= 5u && (v47 = v46[2]) != 0)
  {
    v48 = *(v9 + v47);
  }

  else
  {
    v48 = 0;
  }

  *(a3 + 88) = nullsub_1(v48);
  v49 = (v9 - *v9);
  if (*v49 >= 0x23u && (v50 = v49[17]) != 0 && (v51 = (v9 + v50 + *(v9 + v50)), *v51) && (v52 = (v51 + v51[1] + 4), v53 = (v52 - *v52), *v53 >= 5u) && (v54 = v53[2]) != 0 && (v55 = (v52 + v54 + *(v52 + v54)), v56 = (v55 - *v55), *v56 >= 7u) && v56[3] && (v57 = v56[2]) != 0 && *(v55 + v57 + *(v55 + v57)))
  {
    sub_98128(v52, __dst);
  }

  else
  {
    v74 = 0;
    v72 = 0u;
    *__p = 0u;
    *__dst = 0u;
    memset(v71, 0, sizeof(v71));
  }

  v58 = *(a3 + 96);
  if (v58)
  {
    v59 = *(a3 + 104);
    v60 = *(a3 + 96);
    if (v59 != v58)
    {
      do
      {
        v61 = *(v59 - 1);
        v59 -= 3;
        if (v61 < 0)
        {
          operator delete(*v59);
        }
      }

      while (v59 != v58);
      v60 = *(a3 + 96);
    }

    *(a3 + 104) = v58;
    operator delete(v60);
  }

  *(a3 + 96) = *__dst;
  *(a3 + 112) = *&v71[0];
  __dst[1] = 0;
  *&v71[0] = 0;
  __dst[0] = 0;
  sub_2AE2C4(a3 + 120, (v71 + 8));
  *(a3 + 360) = BYTE8(v72);
  v62 = __p[0];
  if (__p[0])
  {
    v63 = __p[1];
    v64 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v65 = *(v63 - 1);
        v63 -= 3;
        if (v65 < 0)
        {
          operator delete(*v63);
        }
      }

      while (v63 != v62);
      v64 = __p[0];
    }

    __p[1] = v62;
    operator delete(v64);
  }

  sub_99F0C(v71 + 8);
  v66 = __dst[0];
  if (__dst[0])
  {
    v67 = __dst[1];
    v68 = __dst[0];
    if (__dst[1] != __dst[0])
    {
      do
      {
        v69 = *(v67 - 1);
        v67 -= 3;
        if (v69 < 0)
        {
          operator delete(*v67);
        }
      }

      while (v67 != v66);
      v68 = __dst[0];
    }

    __dst[1] = v66;
    operator delete(v68);
  }
}

char *sub_2ADAD0(uint64_t *a1, unint64_t a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  if (a3 == 2)
  {
    v12 = HIDWORD(a2);
    result = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    if (v12 == 0xFFFFFFFFLL)
    {
      return result;
    }

    result = sub_2AC914((a1 + 2), a2, 1);
    if (!result)
    {
      return result;
    }

    v13 = &result[-*result];
    if (*v13 >= 5u)
    {
      v14 = *(v13 + 2);
      if (v14)
      {
        v15 = *&result[v14];
        v16 = &result[4 * v12 + v14 + v15];
        v17 = *(v16 + 1);
        v18 = &v16[v17 + 4];
        v19 = &v18[-*v18];
        v20 = *v19;
        if (v20 >= 0xD)
        {
          v21 = *(v19 + 6);
          if (*(v19 + 6))
          {
            if (*(v19 + 4))
            {
              if (v20 >= 0x13 && *(v19 + 3) != 0)
              {
                v23 = *(v19 + 9);
                if (v23)
                {
                  if (*&v18[v23 + *&v18[v23]])
                  {
                    v24 = &v18[v21];
                    v25 = *&v18[v21];
                    v26 = *&v24[v25];
                    if (v26)
                    {
                      v27 = 4 * v26 - 4;
                      v28 = &result[4 * v12 + 8 + v21 + v17 + v15 + v14 + v25];
                      do
                      {
                        sub_98388(&v28[*v28], v31);
                        v30 = v31[16];
                        if (v33 < 0)
                        {
                          operator delete(__p);
                        }

                        result = (v30 == 2);
                        v29 = v30 == 2 || v27 == 0;
                        v27 -= 4;
                        v28 += 4;
                      }

                      while (!v29);
                      return result;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  if (a3 != 1)
  {
    sub_5AF20();
  }

  result = 0;
  v5 = *a1;
  if (*a1 && a2 != -1)
  {
    v6 = nullsub_1(a2);
    v7 = sub_2D54A0(v5, 16, v6);
    v9 = !HIDWORD(v7) || v7 == 0xFFFFFFFFLL;
    v10 = !v9;
    v11 = v8 == 0;
    a2 = v10 && v11 ? HIDWORD(v7) : 0;
    v12 = v10 && v11 ? v7 : 0xFFFFFFFFLL;
    result = 0;
    if (a2)
    {
      goto LABEL_21;
    }
  }

  return result;
}

void **sub_2ADCE0(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
        }

        v3 -= 6;
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = a1[1];
    v7 = *a1;
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 3);
        if (v8)
        {
          *(v6 - 2) = v8;
          operator delete(v8);
        }

        v6 -= 48;
      }

      while (v6 != v5);
      v7 = *a1;
    }

    a1[1] = v5;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_2ADD9C(uint64_t *a1, unint64_t a2, int a3)
{
  switch(a3)
  {
    case 0:
      return -1;
    case 2:
      v13 = HIDWORD(a2);
      if (!a2)
      {
        return -1;
      }

      break;
    case 1:
      v3 = *a1;
      if (!*a1 || a2 == -1)
      {
        return -1;
      }

      v4 = a1;
      v5 = nullsub_1(a2);
      v7 = sub_2D54A0(v3, 16, v5);
      a1 = v4;
      v8 = v7;
      v9 = HIDWORD(v7);
      v10 = !v9 || v8 == 0xFFFFFFFFLL;
      v11 = !v10;
      v12 = v6 == 0;
      a2 = v11 && v12 ? v9 : 0;
      v13 = v11 && v12 ? v8 : 0xFFFFFFFFLL;
      if (!a2)
      {
        return -1;
      }

      break;
    default:
      sub_5AF20();
  }

  if (v13 == 0xFFFFFFFFLL)
  {
    return -1;
  }

  v14 = sub_2AC914((a1 + 2), a2, 1);
  if (!v14)
  {
    return -1;
  }

  v15 = &v14[-*v14];
  if (*v15 < 5u)
  {
    return -1;
  }

  v16 = *(v15 + 2);
  if (!v16)
  {
    return -1;
  }

  v17 = &v14[4 * v13 + v16 + *&v14[v16]];
  v18 = (v17 + 4 + *(v17 + 4));
  v19 = (v18 - *v18);
  if (*v19 >= 0x25u && (v20 = v19[18]) != 0)
  {
    v21 = *(v18 + v20);
  }

  else
  {
    v21 = 0;
  }

  return nullsub_1(v21);
}

uint64_t sub_2ADEF4@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = (a1 - *a1);
  v5 = *v4;
  if (v5 < 7)
  {
    v6 = 0;
    v7 = (&loc_1120530 + 1);
    LOWORD(v8) = *(&loc_1120534 + 3);
    if (*(&loc_1120530 + 1) < 9u)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = v4[3];
    if (v4[3])
    {
      v6 = (v6 + a1 + *(v6 + a1));
    }

    v7 = (v6 - *v6);
    LOWORD(v8) = v7[3];
    if (*v7 < 9u)
    {
      goto LABEL_10;
    }
  }

  v9 = v7[4];
  if (v9)
  {
    v22 = *(v6 + v9);
    v8 = v8;
    if (v5 < 9)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_10:
  v22 = 0;
  v8 = v8;
  if (v5 < 9)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

LABEL_11:
  v10 = v4[4];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(a1 + v10);
LABEL_14:
  v12 = *(v6 + v8);
  v13 = sub_97230(v11);
  v14 = (a1 - *a1);
  v21 = v13;
  if (*v14 >= 5u)
  {
    v15 = v14[2];
    if (v15)
    {
      v16 = (a1 + v15 + *(a1 + v15));
      v17 = (v16 - *v16);
      if (*v17 >= 9u)
      {
        v18 = v17[4];
        if (v18)
        {
          v19 = v16 + v18 + *(v16 + v18);
          if (*v19)
          {
            sub_9723C(v19[4]);
            operator new();
          }
        }
      }
    }
  }

  result = sub_971D0(a1);
  *a2 = v12;
  *(a2 + 8) = v22;
  *(a2 + 16) = v21;
  *(a2 + 17) = result;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_2AE14C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2AE16C(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_2AE1D0(a1, i))
    {
      i -= 10;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_2AE1D0(uint64_t a1, void **a2)
{
  v3 = a2[3];
  if (v3)
  {
    v4 = a2[4];
    v5 = a2[3];
    if (v4 != v3)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 6;
      }

      while (v4 != v3);
      v5 = a2[3];
    }

    a2[4] = v3;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = a2[1];
    v8 = *a2;
    if (v7 == v6)
    {
      a2[1] = v6;
    }

    else
    {
      do
      {
        v9 = *(v7 - 3);
        if (v9)
        {
          *(v7 - 2) = v9;
          operator delete(v9);
        }

        v7 -= 48;
      }

      while (v7 != v6);
      v8 = *a2;
      a2[1] = v6;
    }

    operator delete(v8);
  }
}

uint64_t sub_2AE2C4(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v10 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v10;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v11;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v12 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v12;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v13 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v13;
  *(a2 + 239) = 0;
  *(a2 + 216) = 0;
  return a1;
}

uint64_t sub_2AE47C(uint64_t a1)
{
  sub_99F0C(a1 + 120);
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = *(a1 + 104);
    v4 = *(a1 + 96);
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
      v4 = *(a1 + 96);
    }

    *(a1 + 104) = v2;
    operator delete(v4);
  }

  if ((*(a1 + 71) & 0x80000000) == 0)
  {
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_15;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_15:
  operator delete(*a1);
  return a1;
}

void **sub_2AE54C(void **a1)
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
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 3));
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

uint64_t sub_2AE5C0(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  v12 = a1;
  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v9 = 80 * v2;
  v11 = 0;
  sub_2AE6F4(80 * v2, a2);
  v10 = 80 * v2 + 80;
  sub_2AEC6C(a1, &__p);
  v6 = *(a1 + 8);
  sub_2AEF14(&__p, v9);
  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_2AE6E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2AEEDC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2AE6F4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  sub_2AEA24((a1 + 24), (a2 + 24));
  v5 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 48) = v5;
  return a1;
}

void sub_2AE7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2AE9A0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2AE81C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      *(a4 + 16) = *(v5 + 8);
      *(a4 + 24) = 0;
      *a4 = v6;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      v8 = *(v5 + 3);
      v7 = *(v5 + 4);
      if (v7 != v8)
      {
        if (((v7 - v8) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v5 += 3;
      a4 += 48;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_2AE914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 32) = v12;
    operator delete(v12);
  }

  sub_2AE93C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2AE93C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 48;
    }
  }

  return a1;
}

void ***sub_2AE9A0(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 3);
          if (v6)
          {
            *(v4 - 2) = v6;
            operator delete(v6);
          }

          v4 -= 48;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *sub_2AEA24(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_2AEB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_2AEB84(&a11);
  *(v11 + 8) = v12;
  sub_2AEBE8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2AEB84(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 48;
    }
  }

  return a1;
}

void ***sub_2AEBE8(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          if (*(v4 - 1) < 0)
          {
            operator delete(*(v4 - 3));
          }

          v4 -= 6;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_2AEC6C(void ***a1, void *a2)
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
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = *v8;
      *(v9 + 16) = v8[2];
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = *(v8 + 3);
      *(v9 + 40) = v8[5];
      v8[3] = 0;
      v8[4] = 0;
      v8[5] = 0;
      v10 = *(v8 + 3);
      *(v9 + 62) = *(v8 + 62);
      *(v9 + 48) = v10;
      v8 += 10;
      v9 += 80;
    }

    while (v8 != v6);
  }

  sub_2AED9C(a1, v5, v6);
  a2[1] = v7;
  v11 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_2AED9C(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = v4[3];
      if (v6)
      {
        v7 = v4[4];
        v8 = v4[3];
        if (v7 != v6)
        {
          do
          {
            if (*(v7 - 1) < 0)
            {
              operator delete(*(v7 - 3));
            }

            v7 -= 6;
          }

          while (v7 != v6);
          v8 = v4[3];
        }

        v4[4] = v6;
        operator delete(v8);
      }

      v9 = *v4;
      if (*v4)
      {
        v10 = v4[1];
        v5 = *v4;
        if (v10 != v9)
        {
          do
          {
            v11 = *(v10 - 3);
            if (v11)
            {
              *(v10 - 2) = v11;
              operator delete(v11);
            }

            v10 -= 48;
          }

          while (v10 != v9);
          v5 = *v4;
        }

        v4[1] = v9;
        operator delete(v5);
      }

      v4 += 10;
    }

    while (v4 != a3);
  }
}

uint64_t sub_2AEE74(uint64_t a1)
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
        v4 -= 10;
        sub_2AE1D0(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_2AEEDC(uint64_t a1)
{
  sub_2AEF14(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2AEF14(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v6 = (i - 80);
    *(a1 + 16) = i - 80;
    v7 = *(i - 56);
    if (v7)
    {
      v8 = *(i - 48);
      v9 = *(i - 56);
      if (v8 != v7)
      {
        do
        {
          if (*(v8 - 1) < 0)
          {
            operator delete(*(v8 - 24));
          }

          v8 -= 48;
        }

        while (v8 != v7);
        v9 = *(i - 56);
      }

      *(i - 48) = v7;
      operator delete(v9);
    }

    v10 = *v6;
    if (*v6)
    {
      v11 = *(i - 72);
      v5 = *v6;
      if (v11 != v10)
      {
        do
        {
          v12 = *(v11 - 3);
          if (v12)
          {
            *(v11 - 2) = v12;
            operator delete(v12);
          }

          v11 -= 48;
        }

        while (v11 != v10);
        v5 = *v6;
      }

      *(i - 72) = v10;
      operator delete(v5);
    }
  }
}

uint64_t sub_2AEFFC(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0x10u);
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

void sub_2AF0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2AF128@<X0>(const char *a1@<X0>, const char *a2@<X2>, uint64_t *a3@<X3>, _BYTE *a4@<X8>)
{
  sub_D7B0(v17);
  v8 = strlen(a1);
  sub_4A5C(&v18, a1, v8);
  v9 = std::ostream::operator<<();
  v10 = strlen(a2);
  v11 = sub_4A5C(v9, a2, v10);
  sub_4A5C(v11, *a3, a3[1]);
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

void sub_2AF3C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_2AF3E8(uint64_t *a1, uint64_t a2)
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
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v7 = 48 * v2 + 48;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 8);
      *v12 = v13;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 24) = *(v11 + 3);
      *(v12 + 40) = v11[5];
      v11[3] = 0;
      v11[4] = 0;
      v11[5] = 0;
      v11 += 6;
      v12 += 48;
    }

    while (v11 != v9);
    do
    {
      v14 = v8[3];
      if (v14)
      {
        v8[4] = v14;
        operator delete(v14);
      }

      v8 += 6;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_2AF578(uint64_t *a1, uint64_t a2)
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
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  v7 = 48 * v2 + 48;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 5);
      *(v12 + 24) = v14;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      *(v11 + 3) = 0;
      v11 += 3;
      v12 += 48;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 24));
      }

      v8 += 48;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

char *sub_2AF704(uint64_t a1, unsigned int a2, int a3)
{
  v18 = a3;
  v19 = a2;
  v17[0] = &v18;
  v17[1] = &v19;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_27;
  }

  v4 = a1 + 16;
  if (*(a1 + 16) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 24) = v3;
    v5 = *(a1 + 32);
    if (!v5)
    {
      goto LABEL_27;
    }

    return v5 + *v5;
  }

  v6 = a1 + 40;
  if (*(a1 + 40) == a2)
  {
LABEL_6:
    ++*(a1 + 3864);
    *(v6 + 8) = v3;
    v5 = *(v6 + 16);
    if (!v5)
    {
      goto LABEL_27;
    }

    return v5 + *v5;
  }

  if (*(a1 + 64) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 72) = v3;
    v5 = *(a1 + 80);
    if (v5)
    {
      return v5 + *v5;
    }
  }

  else
  {
    v6 = a1 + 88;
    if (*(a1 + 88) == a2)
    {
      goto LABEL_6;
    }

    v8 = *(a1 + 72);
    if (*(a1 + 24) < v3)
    {
      v3 = *(a1 + 24);
    }

    if (*(a1 + 48) >= v3)
    {
      v9 = 0;
    }

    else
    {
      v3 = *(a1 + 48);
      v9 = 1;
    }

    if (v8 >= v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = *(a1 + 72);
    }

    v11 = *(a1 + 96);
    if (v8 >= v3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 2;
    }

    v14 = sub_2D52A4(*a1, 0, a2, 1);
    v15 = 3;
    if (v11 >= v10)
    {
      v15 = v12;
    }

    v16 = v4 + 24 * v15;
    *v16 = v19;
    *(v16 + 8) = *(a1 + 3856);
    *(v16 + 16) = v14;
    if (v14)
    {
      return v14 + *v14;
    }
  }

LABEL_27:
  sub_2AF8AC(v17);
  return 0;
}

uint64_t sub_2AF8AC(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0);
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

void sub_2AF9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_2AF9D8(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void sub_2AF9F8(void *a1, void *a2)
{
  *a1 = *a2;
  v2 = a2[1];
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  operator new();
}

void sub_2AFC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1F1A8(v16);
    _Unwind_Resume(a1);
  }

  sub_1F1A8(v16);
  _Unwind_Resume(a1);
}

uint64_t *sub_2AFCC0(void *a1, unint64_t a2)
{
  if ((atomic_load_explicit(&qword_278F050, memory_order_acquire) & 1) == 0)
  {
    v21 = a2;
    v22 = a1;
    sub_21E1328();
    a2 = v21;
    a1 = v22;
    if (v21 != -1)
    {
      goto LABEL_3;
    }

    return &qword_278F058;
  }

  if (a2 == -1)
  {
    return &qword_278F058;
  }

LABEL_3:
  v2 = *a1;
  if (!*a1)
  {
    return &qword_278F058;
  }

  v3 = *(v2 + 472);
  v4 = *(v2 + 480);
  if (v4 - v3 >= 40)
  {
    if (v4 - v3 != 40)
    {
      v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 3);
      do
      {
        v6 = 40 * (v5 >> 2);
        _X14 = &v3[v6];
        __asm { PRFM            #0, [X14] }

        v12 = &v3[40 * (v5 >> 1)];
        _X13 = &v12[v6];
        __asm { PRFM            #0, [X13] }

        if (*v12 >= a2)
        {
          v15 = 0;
        }

        else
        {
          v15 = v5 >> 1;
        }

        v3 += 40 * v15;
        v5 -= v5 >> 1;
      }

      while (v5 > 1);
    }

    v3 += 40 * (*v3 < a2);
  }

  if (v3 == v4)
  {
    return &qword_278F058;
  }

  if (*v3 != a2 || *v3 == -1)
  {
    return &qword_278F058;
  }

  v17 = *(v3 + 1);
  v18 = *(v3 + 2);
  if (v17 == v18)
  {
    return &qword_278F058;
  }

  do
  {
    v19 = *(v17 + 23);
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(v17 + 8);
    }

    if (!v19)
    {
      return &qword_278F058;
    }

    v17 += 48;
  }

  while (v17 != v18);
  if ((*(v3 + 4) & a1[2]) != 0)
  {
    return v3;
  }

  else
  {
    return &qword_278F058;
  }
}