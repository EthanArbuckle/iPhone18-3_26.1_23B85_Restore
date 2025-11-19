void sub_58CD50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void **a52)
{
  sub_53A868(&__p);
  sub_1A104(&a52);
  sub_53A58C((v52 - 256));
  if (*(v52 - 153) < 0)
  {
    operator delete(*(v52 - 176));
  }

  sub_7E724(v52 - 152, *(v52 - 144));
  sub_2AE54C((v52 - 128));
  _Unwind_Resume(a1);
}

void sub_58CEB4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  JUMPOUT(0x58CEC0);
}

void sub_58CEE8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  JUMPOUT(0x58CEF4);
}

uint64_t sub_58CF24(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    v3 = *(a1 + 168);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 160);
      }

      while (v3 != v2);
      v4 = *(a1 + 160);
    }

    *(a1 + 168) = v2;
    operator delete(v4);
  }

  return sub_53A868(a1);
}

void sub_58CF90()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = *(v3 + 1104) + 2616 * v1;
  v9 = *(v8 + 384);
  if (v9 == 5 || v9 == 3)
  {
    memcpy(__dst, (v0 + 8), 0x92CuLL);
    if (*(v7 + 2383) < 0)
    {
      sub_325C(&__p, *(v7 + 2360), *(v7 + 2368));
    }

    else
    {
      __p = *(v7 + 2360);
      v34 = *(v7 + 2376);
    }

    v11 = 2384;
  }

  else
  {
    memcpy(__dst, (v0 + 2576), 0x92CuLL);
    if (*(v7 + 4951) < 0)
    {
      sub_325C(&__p, *(v7 + 4928), *(v7 + 4936));
    }

    else
    {
      __p = *(v7 + 4928);
      v34 = *(v7 + 4944);
    }

    v11 = 4952;
  }

  v12 = (v7 + v11);
  v13 = v12[9];
  v43 = v12[8];
  v44 = v13;
  v14 = v12[11];
  v45 = v12[10];
  v46 = v14;
  v15 = v12[5];
  v39 = v12[4];
  v40 = v15;
  v16 = v12[7];
  v41 = v12[6];
  v42 = v16;
  v17 = v12[1];
  v35 = *v12;
  v36 = v17;
  v18 = v12[3];
  v37 = v12[2];
  v38 = v18;
  sub_8374E4(&v30, __dst, v7 + 5144, v4, v2, v6);
  if ((*(v7 + 13740) & 1) != 0 || *(v7 + 13743) == 1)
  {
    sub_83777C(&v30, &v28);
    sub_58D40C(v8 + 1032, &v28);
    sub_5936E4(&v28);
    sub_665E68((v7 + 6736), (v8 + 1032));
  }

  if (*(v7 + 13741) == 1)
  {
    sub_837A88(&v30, &v28);
    v19 = (v8 + 1888);
    v20 = *(v8 + 1888);
    if (v20)
    {
      v21 = *(v8 + 1896);
      v22 = *(v8 + 1888);
      if (v21 != v20)
      {
        do
        {
          v21 = sub_5938B0((v21 - 140));
        }

        while (v21 != v20);
        v22 = *v19;
      }

      *(v8 + 1896) = v20;
      operator delete(v22);
      *v19 = 0;
      *(v8 + 1896) = 0;
      *(v8 + 1904) = 0;
    }

    *(v8 + 1888) = v28;
    *(v8 + 1904) = v29;
    sub_6662E8(v7 + 6736, v8 + 1888);
  }

  if (*(v7 + 13742) == 1)
  {
    sub_837E60(&v30, v4, &v28);
    v23 = (v8 + 1912);
    v24 = *(v8 + 1912);
    if (v24)
    {
      v25 = *(v8 + 1920);
      v26 = *(v8 + 1912);
      if (v25 != v24)
      {
        do
        {
          v27 = *(v25 - 6);
          if (v27)
          {
            *(v25 - 5) = v27;
            operator delete(v27);
          }

          v25 -= 56;
          sub_55D550(v25);
        }

        while (v25 != v24);
        v26 = *v23;
      }

      *(v8 + 1920) = v24;
      operator delete(v26);
      *v23 = 0;
      *(v8 + 1920) = 0;
      *(v8 + 1928) = 0;
    }

    *v23 = v28;
    *(v8 + 1928) = v29;
    sub_666334(v7 + 6736, v8 + 1912);
  }

  sub_58D610(v7, v8);
  v30 = off_266B488;
  sub_593A90(&v31);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }
}

void sub_58D2B0(_Unwind_Exception *a1)
{
  STACK[0x358] = off_266B488;
  sub_593A90(&STACK[0x360]);
  if (*(v1 + 2375) < 0)
  {
    operator delete(STACK[0x1698]);
  }

  _Unwind_Resume(a1);
}

__n128 sub_58D308@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 384);
  if (v5 == 5 || v5 == 3)
  {
    memcpy(a3, (a1 + 8), 0x92CuLL);
    v7 = (a3 + 2352);
    if (*(a1 + 2383) < 0)
    {
      sub_325C(v7, *(a1 + 2360), *(a1 + 2368));
    }

    else
    {
      *v7 = *(a1 + 2360);
      *(a3 + 2368) = *(a1 + 2376);
    }

    v8 = 2384;
  }

  else
  {
    memcpy(a3, (a1 + 2576), 0x92CuLL);
    v9 = (a3 + 2352);
    if (*(a1 + 4951) < 0)
    {
      sub_325C(v9, *(a1 + 4928), *(a1 + 4936));
    }

    else
    {
      *v9 = *(a1 + 4928);
      *(a3 + 2368) = *(a1 + 4944);
    }

    v8 = 4952;
  }

  v10 = a1 + v8;
  v11 = *(v10 + 144);
  *(a3 + 2504) = *(v10 + 128);
  *(a3 + 2520) = v11;
  v12 = *(v10 + 176);
  *(a3 + 2536) = *(v10 + 160);
  *(a3 + 2552) = v12;
  v13 = *(v10 + 80);
  *(a3 + 2440) = *(v10 + 64);
  *(a3 + 2456) = v13;
  v14 = *(v10 + 112);
  *(a3 + 2472) = *(v10 + 96);
  *(a3 + 2488) = v14;
  v15 = *(v10 + 16);
  *(a3 + 2376) = *v10;
  *(a3 + 2392) = v15;
  result = *(v10 + 32);
  v17 = *(v10 + 48);
  *(a3 + 2408) = result;
  *(a3 + 2424) = v17;
  return result;
}

uint64_t sub_58D40C(uint64_t a1, uint64_t a2)
{
  sub_592E78(a1, a2);
  v4 = *(a1 + 384);
  if (v4)
  {
    v5 = *(a1 + 392);
    v6 = *(a1 + 384);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(a1 + 384);
    }

    *(a1 + 392) = v4;
    operator delete(v6);
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
  }

  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  sub_593214(a1 + 408, (a2 + 408));
  *(a1 + 448) = *(a2 + 448);
  v8 = *(a1 + 456);
  if (v8)
  {
    v9 = *(a1 + 464);
    v10 = *(a1 + 456);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = *(a1 + 456);
    }

    *(a1 + 464) = v8;
    operator delete(v10);
    *(a1 + 456) = 0;
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
  }

  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  *(a2 + 456) = 0;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0;
  sub_593214(a1 + 480, (a2 + 480));
  *(a1 + 520) = *(a2 + 520);
  sub_53D784(a1 + 528, a2 + 528);
  sub_53D784(a1 + 688, a2 + 688);
  v12 = (a1 + 848);
  v13 = *(a2 + 848);
  if (v13)
  {
    *(a2 + 848) = 0;
    v14 = *v12;
    *v12 = v13;
    if (v14)
    {
      if (*(v14 + 103) < 0)
      {
        operator delete(*(v14 + 80));
        if ((*(v14 + 71) & 0x80000000) == 0)
        {
LABEL_21:
          v15 = *(v14 + 32);
          if (v15 == -1)
          {
LABEL_26:
            *(v14 + 32) = -1;
            operator delete();
          }

LABEL_25:
          (off_266B5B8[v15])(&v17, v14);
          goto LABEL_26;
        }
      }

      else if ((*(v14 + 71) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      operator delete(*(v14 + 48));
      v15 = *(v14 + 32);
      if (v15 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    return a1;
  }

  else
  {
    sub_593634(v12);
    return a1;
  }
}

void sub_58D610(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 792);
  for (i = *(a2 + 800); v2 != i; v2 += 40)
  {
    sub_75A254(v2, 0, __p);
    v5 = sub_9274F4(*(a1 + 13704), __p);
    if (*(v5 + 23) < 0)
    {
      sub_325C(&v8, *v5, v5[1]);
    }

    else
    {
      v6 = *v5;
      v9 = v5[2];
      v8 = v6;
    }

    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    v7 = v9;
    *(v2 + 16) = v8;
    *(v2 + 32) = v7;
    HIBYTE(v9) = 0;
    LOBYTE(v8) = 0;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_58D6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_58D708(void *a1)
{
  *a1 = off_266B488;
  sub_593A90((a1 + 1));
  return a1;
}

uint64_t sub_58D74C(uint64_t a1, void *a2)
{
  result = sub_68C590(a2);
  v5 = result;
  if (result)
  {
    v6 = 0;
    do
    {
      result = sub_68C454(a2, v6);
      v7 = *(result + 1112) - *(result + 1104);
      if (v7)
      {
        v8 = result;
        v9 = 0;
        v10 = 0x3795876FF3795877 * (v7 >> 3);
        do
        {
          result = (*(*a1 + 16))(a1, v6, v8, v9++);
        }

        while (v10 != v9);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

void sub_58D82C(uint64_t a1, unsigned int **a2)
{
  v4 = sub_68C850(a2);
  sub_690C60(a2, &qword_2794068, v4);
  sub_7E9A04(a2, &v19);
  sub_68DC78(a2, &v19);
  sub_53A868(&v19);
  if ((*(a1 + 6559) & 1) == 0)
  {
    sub_64B998(&v19);
    sub_7E9154((a1 + 9456), a2, &v19);
    sub_68DDC8(a2, &v19);
    sub_7E9FC4(a1 + 9456, a2, v27);
    sub_68DCCC(a2, v27);
    sub_53A868(v27);
    sub_53A868(&v19);
    goto LABEL_23;
  }

  sub_7E9A88(a1 + 9456, a2, &v19);
  sub_68DD74(a2, &v19);
  sub_53A868(&v19);
  sub_7EA070(a1 + 9456, a2, &v19);
  sub_68DE64(a2, &v19);
  sub_53A868(&v19);
  sub_7EA304((a1 + 9456), a2, &v19);
  if (v20 <= 2)
  {
    if (v20 == 1)
    {
      if (LODWORD(v19.__r_.__value_.__l.__data_) == -1)
      {
        goto LABEL_16;
      }
    }

    else if (v20 != 2 || *&v19.__r_.__value_.__l.__data_ == __PAIR128__(v19.__r_.__value_.__r.__words[2], -1))
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_68DEB8(a2, &v19);
    goto LABEL_16;
  }

  if (v20 == 3 || v20 == 4)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  if ((v24 & 0x80000000) == 0)
  {
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    operator delete(v21);
    v6 = v20;
    if (v20 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  operator delete(__p);
  if (v22 < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v6 = v20;
  if (v20 != -1)
  {
LABEL_22:
    (off_266B5B8[v6])(v27, &v19);
  }

LABEL_23:
  v7 = sub_68EB94(a2);
  sub_75AED0((a1 + 9440), v7, &v19);
  sub_68EA64(a2, &v19);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
    v11 = nullsub_1(a2);
    v9 = *v11;
    v10 = v11[1];
    if (*v11 != v10)
    {
LABEL_27:
      do
      {
        sub_3B2A90(*(a1 + 6720));
        if ((sub_394BD0() & 1) == 0)
        {
          return;
        }

        v9 += 12656;
      }

      while (v9 != v10);
    }
  }

  else
  {
    v8 = nullsub_1(a2);
    v9 = *v8;
    v10 = v8[1];
    if (*v8 != v10)
    {
      goto LABEL_27;
    }
  }

  sub_7EAB08(a1 + 9456, a2, v27);
  v12 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v12 = v27[1];
  }

  if (v12)
  {
    sub_68E514(a2, v27);
  }

  v13 = v30;
  if ((v30 & 0x80u) != 0)
  {
    v13 = v29[1];
  }

  if (v13)
  {
    sub_68E640(a2, v29);
  }

  if (v34 <= 2)
  {
    if (v34 == 1)
    {
      if (v31[0] == -1)
      {
        goto LABEL_52;
      }
    }

    else if (v34 != 2 || v31[1] == -1 && v31[0] == -1 && v32 == v33)
    {
      goto LABEL_52;
    }

LABEL_51:
    sub_68E76C(a2, v31);
    goto LABEL_52;
  }

  if (v34 == 3 || v34 == 4)
  {
    v14 = HIBYTE(v33);
    if (v33 < 0)
    {
      v14 = v32;
    }

    if (v14)
    {
      goto LABEL_51;
    }
  }

LABEL_52:
  sub_7EB858(a1 + 9456, a2, 0, &v19);
  sub_68F80C(a2, &v19);
  v15 = v25;
  if (v25)
  {
    v16 = v26;
    v17 = v25;
    if (v26 != v25)
    {
      do
      {
        v16 = sub_53A868(v16 - 160);
      }

      while (v16 != v15);
      v17 = v25;
    }

    v26 = v15;
    operator delete(v17);
  }

  sub_53A868(&v19);
  if (v38 < 0)
  {
    operator delete(v37);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_59:
      v18 = v34;
      if (v34 == -1)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(v35);
  v18 = v34;
  if (v34 != -1)
  {
LABEL_63:
    (off_266B5B8[v18])(&v19, v31);
  }

LABEL_64:
  v34 = -1;
  if ((v30 & 0x80000000) == 0)
  {
    if ((v28 & 0x80000000) == 0)
    {
      return;
    }

LABEL_68:
    operator delete(v27[0]);
    return;
  }

  operator delete(v29[0]);
  if (v28 < 0)
  {
    goto LABEL_68;
  }
}

void sub_58DCB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_58DCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_53A868(&a33);
  sub_53A868(&a10);
  _Unwind_Resume(a1);
}

void sub_58DCE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_58DCFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_58DD10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_58DD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_58CF24(&a10);
  sub_594338(&a33);
  _Unwind_Resume(a1);
}

void sub_58DD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_58DD70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_58DD84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_58DDAC(uint64_t a1, uint64_t *a2)
{
  *__p = 0u;
  v26 = 0u;
  v27 = 1065353216;
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    while (1)
    {
      v5 = sub_68DE5C(v2);
      if (!sub_4D1F6C(v5))
      {
        v6 = sub_68DE5C(v2);
        sub_597BBC(__p, v6);
        if ((v7 & 1) == 0)
        {
          break;
        }
      }

      v2 += 7808;
      if (v2 == v3)
      {
        v8 = 1;
        v9 = *a2;
        v10 = a2[1];
        if (*a2 == v10)
        {
          goto LABEL_30;
        }

LABEL_11:
        while (2)
        {
          v11 = sub_68DE5C(v9);
          if (sub_4D1F6C(v11))
          {
            v12 = 0;
          }

          else
          {
            v12 = v8;
          }

          sub_68F7B8(v9, v12);
          v13 = sub_68DEB0(v9);
          v14 = 0;
          v15 = *(v13 + 32);
          if (v15 > 2)
          {
            if (v15 == 3 || v15 == 4)
            {
              v17 = *(v13 + 23);
              if ((v17 & 0x80u) != 0)
              {
                v17 = *(v13 + 8);
              }

              v16 = v17 == 0;
LABEL_26:
              v14 = !v16;
            }
          }

          else
          {
            if (v15 == 1)
            {
              v16 = *v13 == -1;
              goto LABEL_26;
            }

            if (v15 == 2)
            {
              v14 = 1;
              if (*(v13 + 4) == -1 && *v13 == -1)
              {
                v16 = *(v13 + 8) == *(v13 + 16);
                goto LABEL_26;
              }
            }
          }

          sub_68F7C8(v9, v14);
          v9 += 7808;
          if (v9 == v10)
          {
            goto LABEL_30;
          }

          continue;
        }
      }
    }

    v8 = 2;
    v9 = *a2;
    v10 = a2[1];
    if (*a2 != v10)
    {
      goto LABEL_11;
    }
  }

LABEL_30:
  v18 = v26;
  if (v26)
  {
    do
    {
      v21 = *v18;
      v22 = v18[2];
      if (v22)
      {
        v23 = v18[3];
        v20 = v18[2];
        if (v23 != v22)
        {
          do
          {
            v24 = *(v23 - 1);
            v23 -= 3;
            if (v24 < 0)
            {
              operator delete(*v23);
            }
          }

          while (v23 != v22);
          v20 = v18[2];
        }

        v18[3] = v22;
        operator delete(v20);
      }

      operator delete(v18);
      v18 = v21;
    }

    while (v21);
  }

  v19 = __p[0];
  __p[0] = 0;
  if (v19)
  {
    operator delete(v19);
  }
}

uint64_t sub_58DFD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[2];
      if (v7)
      {
        v8 = v2[3];
        v5 = v2[2];
        if (v8 != v7)
        {
          do
          {
            v9 = *(v8 - 1);
            v8 -= 3;
            if (v9 < 0)
            {
              operator delete(*v8);
            }
          }

          while (v8 != v7);
          v5 = v2[2];
        }

        v2[3] = v7;
        operator delete(v5);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_58E080(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_68C590(a3);
  v7 = result;
  if (result)
  {
    v8 = 0;
    do
    {
      v9 = sub_68C454(a3, v8);
      result = (*(*a1 + 40))(a1, v8++, a2, v9);
    }

    while (v7 != v8);
  }

  return result;
}

void sub_58E9B0(_Unwind_Exception *a1)
{
  sub_1F1A8(v8 - 104);
  if (*(v2 + 79) < 0)
  {
    operator delete(*v4);
  }

  sub_1F1A8(v3);
  sub_1F1A8(v2);
  sub_7E9150(v1 + v7);
  sub_1F1A8(v1 + v6);
  sub_559B98(v1 + v5);
  sub_528AB4(v1 + 5144);
  if (*(v1 + 4951) < 0)
  {
    operator delete(*(v1 + 4928));
  }

  if ((*(v1 + 2383) & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(*(v1 + 2360));
  _Unwind_Resume(a1);
}

void sub_58EA78()
{
  if ((*(v0 + 79) & 0x80000000) == 0)
  {
    JUMPOUT(0x58EA10);
  }

  JUMPOUT(0x58EA08);
}

void sub_58EA98()
{
  if ((*(v0 + 4951) & 0x80000000) == 0)
  {
    JUMPOUT(0x58EA58);
  }

  JUMPOUT(0x58EA50);
}

void sub_58EAC0(size_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    do
    {
      sub_58FDC0(a1, v6);
      v6 += 976;
    }

    while (v6 != v7);
  }

  sub_590340(a1, a3);
  v8 = *a3;
  for (i = a3[1]; v8 != i; v8 += 976)
  {
    (*(*a1 + 32))(a1, a2, v8);
    (*(*a1 + 24))(a1, v8);
    sub_68F750(v8);
    sub_68E928(v8, a1 + 1718);
  }
}

void sub_58EBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3EB950(a3);
  sub_58EC38(a1, v6, a2);
  v7 = sub_4D1DB0(a3);

  sub_58EC38(a1, v7, a2);
}

void sub_58EC38(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2[21] == -1 || (v6 = sub_3B1D8C(*(a1 + 6720)), v7 = sub_2AB698(v6, a2[21]), !v7))
  {
    v8 = a2[17];
    v9 = a2[18];
LABEL_7:
    v10 = sub_2AB8BC(*(a1 + 6728), v8, v9);
    if (v10 == -1)
    {
      return;
    }

    goto LABEL_8;
  }

  v8 = a2[17];
  v9 = a2[18];
  if (v7 > 0xFFFFFFFEFFFFFFFFLL)
  {
    goto LABEL_7;
  }

  v10 = a2[21];
  if (v10 == -1)
  {
    return;
  }

LABEL_8:
  v11 = sub_2ADCC0(*(a1 + 6728), v10);
  sub_E6F038(a3, &v48);
  v12 = sub_99078(&v48.__r_.__value_.__l.__data_);
  v61 = v12;
  v14 = *v11;
  v13 = v11[1];
  if (*v11 != v13)
  {
    v15 = 0;
    v16 = *v11;
    do
    {
      if (*(v16 + 24) == 1 && (*(v16 + 32) & v12) != 0)
      {
        ++v15;
      }

      v16 += 48;
    }

    while (v16 != v13);
    if (!v15)
    {
      memset(v52, 0, sizeof(v52));
      v53 = 1065353216;
      sub_65DED0(a1 + 6736, &qword_27947A0, v52, 0, &v59);
      sub_64BC20(&v48, &v59);
      sub_5888C8();
    }

    v17 = v13 - v14 - 48;
    if (v17 >= 0x30)
    {
      v25 = 0;
      v26 = 0;
      v27 = v17 / 0x30 + 1;
      v19 = v14 + 48 * (v27 & 0xFFFFFFFFFFFFFFELL);
      v28 = (v14 + 80);
      v29 = v27 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        v30 = *(v28 - 6);
        v32 = *v28;
        v28 += 12;
        v31 = v32;
        if ((v30 & v12) != 0)
        {
          ++v25;
        }

        if ((v31 & v12) != 0)
        {
          ++v26;
        }

        v29 -= 2;
      }

      while (v29);
      v18 = v26 + v25;
      if (v27 == (v27 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_35:
        __p = 0;
        v46 = 0;
        v47 = 0;
        sub_568F30(v18, &__p, *(a1 + 6112), 0, &v48);
        if (byte_279479F >= 0)
        {
          v33 = &qword_2794788;
        }

        else
        {
          v33 = qword_2794788;
        }

        if (byte_279479F >= 0)
        {
          v34 = byte_279479F;
        }

        else
        {
          v34 = unk_2794790;
        }

        v35 = std::string::insert(&v48, 0, v33, v34);
        v36 = *&v35->__r_.__value_.__l.__data_;
        v60 = v35->__r_.__value_.__r.__words[2];
        v59 = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v47) & 0x80000000) == 0)
          {
            goto LABEL_43;
          }
        }

        else if ((SHIBYTE(v47) & 0x80000000) == 0)
        {
          goto LABEL_43;
        }

        operator delete(__p);
LABEL_43:
        sub_67E494(v52, &v59);
        std::to_string(&v48, v15);
        sub_67ECF8(v52, "{AvailablePorts}", &v48.__r_.__value_.__l.__data_);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        std::to_string(&v48, v18);
        sub_67ECF8(v52, "{TotalPorts}", &v48.__r_.__value_.__l.__data_);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        sub_65E138((a1 + 6736), v52, 0, &v56);
        sub_64BC20(&v48, v56);
        sub_5888C8();
      }
    }

    else
    {
      v18 = 0;
      v19 = *v11;
    }

    do
    {
      if ((*(v19 + 32) & v12) != 0)
      {
        ++v18;
      }

      v19 += 48;
    }

    while (v19 != v13);
    goto LABEL_35;
  }

  sub_2AB9C8(*(a1 + 6728), v8, v9, &v48);
  v20 = v49;
  v59 = v49;
  v21 = v48.__r_.__value_.__r.__words[0];
  v60 = v50;
  v50 = 0;
  v49 = 0uLL;
  if (v48.__r_.__value_.__r.__words[0])
  {
    v44 = v20;
    size = v48.__r_.__value_.__l.__size_;
    v23 = v48.__r_.__value_.__r.__words[0];
    if (v48.__r_.__value_.__l.__size_ != v48.__r_.__value_.__r.__words[0])
    {
      do
      {
        v24 = *(size - 24);
        if (v24)
        {
          *(size - 16) = v24;
          operator delete(v24);
        }

        size -= 48;
      }

      while (size != v21);
      v23 = v48.__r_.__value_.__r.__words[0];
    }

    v48.__r_.__value_.__l.__size_ = v21;
    operator delete(v23);
    v20 = v44;
  }

  v57 = 0;
  v58 = 0;
  v56 = &v57;
  v48.__r_.__value_.__r.__words[0] = &v61;
  v37 = v20;
  sub_5986BC(v20, *(&v20 + 1), &v56, &v57, &__p, &v48);
  v38 = v58;
  if (v58)
  {
    __p = 0;
    v46 = 0;
    v47 = 0;
    sub_568F30(v58, &__p, *(a1 + 6112), 0, &v48);
    if (byte_27947CF >= 0)
    {
      v39 = &qword_27947B8;
    }

    else
    {
      v39 = qword_27947B8;
    }

    if (byte_27947CF >= 0)
    {
      v40 = byte_27947CF;
    }

    else
    {
      v40 = unk_27947C0;
    }

    v41 = std::string::insert(&v48, 0, v39, v40);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v55 = v41->__r_.__value_.__r.__words[2];
    v54 = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(__p);
    }

    sub_67E494(v52, &v54);
    std::to_string(&v48, v38);
    sub_67ECF8(v52, "{TotalPorts}", &v48.__r_.__value_.__l.__data_);
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    sub_65E138((a1 + 6736), v52, 0, &v51);
    sub_64BC20(&v48, v51);
    sub_5888C8();
  }

  sub_7E724(&v56, v57);
  if (v37)
  {
    for (i = *(&v59 + 1); i != v37; i -= 6)
    {
      if (*(i - 1) < 0)
      {
        operator delete(*(i - 3));
      }
    }

    operator delete(v37);
  }
}

void sub_58F4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void **a52)
{
  sub_53A868(&__p);
  sub_1A104(&a52);
  sub_53A58C((v52 - 256));
  if (*(v52 - 153) < 0)
  {
    operator delete(*(v52 - 176));
  }

  sub_7E724(v52 - 152, *(v52 - 144));
  sub_2AE54C((v52 - 128));
  _Unwind_Resume(a1);
}

void sub_58F61C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  JUMPOUT(0x58F628);
}

void sub_58F650(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  JUMPOUT(0x58F65CLL);
}

uint64_t sub_58F68C(uint64_t a1, void *a2)
{
  sub_7F0374(a1 + 9456, a2, 1, v7);
  sub_68F80C(a2, v7);
  v3 = __p;
  if (__p)
  {
    v4 = v9;
    v5 = __p;
    if (v9 != __p)
    {
      do
      {
        v4 = sub_53A868(v4 - 160);
      }

      while (v4 != v3);
      v5 = __p;
    }

    v9 = v3;
    operator delete(v5);
  }

  return sub_53A868(v7);
}

void sub_58F714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_58CF24(va);
  _Unwind_Resume(a1);
}

void sub_58F728()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = *(v3 + 1104) + 2616 * v1;
  v9 = *(v8 + 384);
  if (v9 == 5 || v9 == 0)
  {
    memcpy(__dst, (v0 + 8), 0x92CuLL);
    if (*(v7 + 2383) < 0)
    {
      sub_325C(&__p, *(v7 + 2360), *(v7 + 2368));
    }

    else
    {
      __p = *(v7 + 2360);
      v34 = *(v7 + 2376);
    }

    v11 = 2384;
  }

  else
  {
    memcpy(__dst, (v0 + 2576), 0x92CuLL);
    if (*(v7 + 4951) < 0)
    {
      sub_325C(&__p, *(v7 + 4928), *(v7 + 4936));
    }

    else
    {
      __p = *(v7 + 4928);
      v34 = *(v7 + 4944);
    }

    v11 = 4952;
  }

  v12 = (v7 + v11);
  v13 = v12[9];
  v43 = v12[8];
  v44 = v13;
  v14 = v12[11];
  v45 = v12[10];
  v46 = v14;
  v15 = v12[5];
  v39 = v12[4];
  v40 = v15;
  v16 = v12[7];
  v41 = v12[6];
  v42 = v16;
  v17 = v12[1];
  v35 = *v12;
  v36 = v17;
  v18 = v12[3];
  v37 = v12[2];
  v38 = v18;
  sub_839084(&v30, __dst, v7 + 5144, v4, v2, v6);
  if ((*(v7 + 13740) & 1) != 0 || *(v7 + 13743) == 1)
  {
    sub_83931C(&v30, &v28);
    sub_58D40C(v8 + 1032, &v28);
    sub_5936E4(&v28);
    sub_665E68((v7 + 6736), (v8 + 1032));
  }

  if (*(v7 + 13741) == 1)
  {
    sub_8395FC(&v30, &v28);
    v19 = (v8 + 1888);
    v20 = *(v8 + 1888);
    if (v20)
    {
      v21 = *(v8 + 1896);
      v22 = *(v8 + 1888);
      if (v21 != v20)
      {
        do
        {
          v21 = sub_5938B0((v21 - 140));
        }

        while (v21 != v20);
        v22 = *v19;
      }

      *(v8 + 1896) = v20;
      operator delete(v22);
      *v19 = 0;
      *(v8 + 1896) = 0;
      *(v8 + 1904) = 0;
    }

    *(v8 + 1888) = v28;
    *(v8 + 1904) = v29;
    sub_6662E8(v7 + 6736, v8 + 1888);
  }

  if (*(v7 + 13742) == 1)
  {
    sub_8399D4(&v30, v4, &v28);
    v23 = (v8 + 1912);
    v24 = *(v8 + 1912);
    if (v24)
    {
      v25 = *(v8 + 1920);
      v26 = *(v8 + 1912);
      if (v25 != v24)
      {
        do
        {
          v27 = *(v25 - 6);
          if (v27)
          {
            *(v25 - 5) = v27;
            operator delete(v27);
          }

          v25 -= 56;
          sub_55D550(v25);
        }

        while (v25 != v24);
        v26 = *v23;
      }

      *(v8 + 1920) = v24;
      operator delete(v26);
      *v23 = 0;
      *(v8 + 1920) = 0;
      *(v8 + 1928) = 0;
    }

    *v23 = v28;
    *(v8 + 1928) = v29;
    sub_666334(v7 + 6736, v8 + 1912);
  }

  sub_58FBA4(v7, v8);
  v30 = off_266B5F0;
  sub_596A0C(&v31);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }
}

void sub_58FA48(_Unwind_Exception *a1)
{
  STACK[0x358] = off_266B5F0;
  sub_596A0C(&STACK[0x360]);
  if (*(v1 + 2375) < 0)
  {
    operator delete(STACK[0x1698]);
  }

  _Unwind_Resume(a1);
}

__n128 sub_58FAA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 384);
  if (v5 == 5 || v5 == 0)
  {
    memcpy(a3, (a1 + 8), 0x92CuLL);
    v7 = (a3 + 2352);
    if (*(a1 + 2383) < 0)
    {
      sub_325C(v7, *(a1 + 2360), *(a1 + 2368));
    }

    else
    {
      *v7 = *(a1 + 2360);
      *(a3 + 2368) = *(a1 + 2376);
    }

    v8 = 2384;
  }

  else
  {
    memcpy(a3, (a1 + 2576), 0x92CuLL);
    v9 = (a3 + 2352);
    if (*(a1 + 4951) < 0)
    {
      sub_325C(v9, *(a1 + 4928), *(a1 + 4936));
    }

    else
    {
      *v9 = *(a1 + 4928);
      *(a3 + 2368) = *(a1 + 4944);
    }

    v8 = 4952;
  }

  v10 = a1 + v8;
  v11 = *(v10 + 144);
  *(a3 + 2504) = *(v10 + 128);
  *(a3 + 2520) = v11;
  v12 = *(v10 + 176);
  *(a3 + 2536) = *(v10 + 160);
  *(a3 + 2552) = v12;
  v13 = *(v10 + 80);
  *(a3 + 2440) = *(v10 + 64);
  *(a3 + 2456) = v13;
  v14 = *(v10 + 112);
  *(a3 + 2472) = *(v10 + 96);
  *(a3 + 2488) = v14;
  v15 = *(v10 + 16);
  *(a3 + 2376) = *v10;
  *(a3 + 2392) = v15;
  result = *(v10 + 32);
  v17 = *(v10 + 48);
  *(a3 + 2408) = result;
  *(a3 + 2424) = v17;
  return result;
}

void sub_58FBA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 792);
  for (i = *(a2 + 800); v2 != i; v2 += 40)
  {
    sub_75A254(v2, 0, __p);
    v5 = sub_9274F4(*(a1 + 13704), __p);
    if (*(v5 + 23) < 0)
    {
      sub_325C(&v8, *v5, v5[1]);
    }

    else
    {
      v6 = *v5;
      v9 = v5[2];
      v8 = v6;
    }

    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    v7 = v9;
    *(v2 + 16) = v8;
    *(v2 + 32) = v7;
    HIBYTE(v9) = 0;
    LOBYTE(v8) = 0;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_58FC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_58FC9C(void *a1)
{
  *a1 = off_266B5F0;
  sub_596A0C((a1 + 1));
  return a1;
}

uint64_t sub_58FCE0(uint64_t a1, void *a2)
{
  result = sub_68C590(a2);
  v5 = result;
  if (result)
  {
    v6 = 0;
    do
    {
      result = sub_68C454(a2, v6);
      v7 = *(result + 1112) - *(result + 1104);
      if (v7)
      {
        v8 = result;
        v9 = 0;
        v10 = 0x3795876FF3795877 * (v7 >> 3);
        do
        {
          result = (*(*a1 + 16))(a1, v6, v8, v9++);
        }

        while (v10 != v9);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

void sub_58FDC0(uint64_t a1, unsigned int **a2)
{
  v4 = sub_68C850(a2);
  sub_68DB50(a2, &qword_2794068, v4);
  sub_7EE72C(a2, &v20);
  sub_68DC78(a2, &v20);
  sub_53A868(&v20);
  if ((*(a1 + 6559) & 1) == 0)
  {
    sub_64B998(&v20);
    sub_7EDE7C((a1 + 9456), a2, &v20);
    sub_68DDC8(a2, &v20);
    sub_7EEDD4(a1 + 9456, a2, v28);
    sub_68DCCC(a2, v28);
    sub_53A868(v28);
    sub_53A868(&v20);
    goto LABEL_23;
  }

  sub_7EE7B0(a1 + 9456, a2, &v20);
  sub_68DD74(a2, &v20);
  sub_53A868(&v20);
  sub_7EEE80(a1 + 9456, a2, &v20);
  sub_68DE64(a2, &v20);
  sub_53A868(&v20);
  sub_7EF114((a1 + 9456), a2, &v20);
  if (v21 <= 2)
  {
    if (v21 == 1)
    {
      if (LODWORD(v20.__r_.__value_.__l.__data_) == -1)
      {
        goto LABEL_16;
      }
    }

    else if (v21 != 2 || *&v20.__r_.__value_.__l.__data_ == __PAIR128__(v20.__r_.__value_.__r.__words[2], -1))
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_68DEB8(a2, &v20);
    goto LABEL_16;
  }

  if (v21 == 3 || v21 == 4)
  {
    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  if ((v25 & 0x80000000) == 0)
  {
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    operator delete(v22);
    v6 = v21;
    if (v21 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  operator delete(__p);
  if (v23 < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v6 = v21;
  if (v21 != -1)
  {
LABEL_22:
    (off_266B5B8[v6])(v28, &v20);
  }

LABEL_23:
  v7 = sub_68EB94(a2);
  sub_75AED0((a1 + 9440), v7, &v20);
  sub_68EA64(a2, &v20);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    v11 = nullsub_1(a2);
    v9 = *v11;
    v10 = *(v11 + 8);
    if (*v11 != v10)
    {
LABEL_27:
      do
      {
        v12 = sub_3B2A90(*(a1 + 6720));
        if ((sub_4B94D8(v12, v9) & 1) == 0)
        {
          return;
        }

        v9 += 1582;
      }

      while (v9 != v10);
    }
  }

  else
  {
    v8 = nullsub_1(a2);
    v9 = *v8;
    v10 = *(v8 + 8);
    if (*v8 != v10)
    {
      goto LABEL_27;
    }
  }

  sub_7EF718(a1 + 9456, a2, v28);
  v13 = v29;
  if ((v29 & 0x80u) != 0)
  {
    v13 = v28[1];
  }

  if (v13)
  {
    sub_68E514(a2, v28);
  }

  v14 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v14 = v30[1];
  }

  if (v14)
  {
    sub_68E640(a2, v30);
  }

  if (v35 <= 2)
  {
    if (v35 == 1)
    {
      if (v32[0] == -1)
      {
        goto LABEL_52;
      }
    }

    else if (v35 != 2 || v32[1] == -1 && v32[0] == -1 && v33 == v34)
    {
      goto LABEL_52;
    }

LABEL_51:
    sub_68E76C(a2, v32);
    goto LABEL_52;
  }

  if (v35 == 3 || v35 == 4)
  {
    v15 = HIBYTE(v34);
    if (v34 < 0)
    {
      v15 = v33;
    }

    if (v15)
    {
      goto LABEL_51;
    }
  }

LABEL_52:
  sub_7F0374(a1 + 9456, a2, 0, &v20);
  sub_68F80C(a2, &v20);
  v16 = v26;
  if (v26)
  {
    v17 = v27;
    v18 = v26;
    if (v27 != v26)
    {
      do
      {
        v17 = sub_53A868(v17 - 160);
      }

      while (v17 != v16);
      v18 = v26;
    }

    v27 = v16;
    operator delete(v18);
  }

  sub_53A868(&v20);
  if (v39 < 0)
  {
    operator delete(v38);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_59:
      v19 = v35;
      if (v35 == -1)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(v36);
  v19 = v35;
  if (v35 != -1)
  {
LABEL_63:
    (off_266B5B8[v19])(&v20, v32);
  }

LABEL_64:
  v35 = -1;
  if ((v31 & 0x80000000) == 0)
  {
    if ((v29 & 0x80000000) == 0)
    {
      return;
    }

LABEL_68:
    operator delete(v28[0]);
    return;
  }

  operator delete(v30[0]);
  if (v29 < 0)
  {
    goto LABEL_68;
  }
}

void sub_590244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_590260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_53A868(&a33);
  sub_53A868(&a10);
  _Unwind_Resume(a1);
}

void sub_59027C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_590290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_5902A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_5902B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_58CF24(&a10);
  sub_596F7C(&a33);
  _Unwind_Resume(a1);
}

void sub_5902E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_590304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_590318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_590340(uint64_t a1, uint64_t *a2)
{
  *__p = 0u;
  v26 = 0u;
  v27 = 1065353216;
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    while (1)
    {
      v5 = sub_68DE5C(v2);
      if (!sub_4D1F6C(v5))
      {
        v6 = sub_68DE5C(v2);
        sub_597BBC(__p, v6);
        if ((v7 & 1) == 0)
        {
          break;
        }
      }

      v2 += 7808;
      if (v2 == v3)
      {
        v8 = 1;
        v9 = *a2;
        v10 = a2[1];
        if (*a2 == v10)
        {
          goto LABEL_30;
        }

LABEL_11:
        while (2)
        {
          v11 = sub_68DE5C(v9);
          if (sub_4D1F6C(v11))
          {
            v12 = 0;
          }

          else
          {
            v12 = v8;
          }

          sub_68F7B8(v9, v12);
          v13 = sub_68DEB0(v9);
          v14 = 0;
          v15 = *(v13 + 32);
          if (v15 > 2)
          {
            if (v15 == 3 || v15 == 4)
            {
              v17 = *(v13 + 23);
              if ((v17 & 0x80u) != 0)
              {
                v17 = *(v13 + 8);
              }

              v16 = v17 == 0;
LABEL_26:
              v14 = !v16;
            }
          }

          else
          {
            if (v15 == 1)
            {
              v16 = *v13 == -1;
              goto LABEL_26;
            }

            if (v15 == 2)
            {
              v14 = 1;
              if (*(v13 + 4) == -1 && *v13 == -1)
              {
                v16 = *(v13 + 8) == *(v13 + 16);
                goto LABEL_26;
              }
            }
          }

          sub_68F7C8(v9, v14);
          v9 += 7808;
          if (v9 == v10)
          {
            goto LABEL_30;
          }

          continue;
        }
      }
    }

    v8 = 2;
    v9 = *a2;
    v10 = a2[1];
    if (*a2 != v10)
    {
      goto LABEL_11;
    }
  }

LABEL_30:
  v18 = v26;
  if (v26)
  {
    do
    {
      v21 = *v18;
      v22 = v18[2];
      if (v22)
      {
        v23 = v18[3];
        v20 = v18[2];
        if (v23 != v22)
        {
          do
          {
            v24 = *(v23 - 1);
            v23 -= 3;
            if (v24 < 0)
            {
              operator delete(*v23);
            }
          }

          while (v23 != v22);
          v20 = v18[2];
        }

        v18[3] = v22;
        operator delete(v20);
      }

      operator delete(v18);
      v18 = v21;
    }

    while (v21);
  }

  v19 = __p[0];
  __p[0] = 0;
  if (v19)
  {
    operator delete(v19);
  }
}

uint64_t sub_59056C(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_68C590(a3);
  v7 = result;
  if (result)
  {
    v8 = 0;
    do
    {
      v9 = sub_68C454(a3, v8);
      result = (*(*a1 + 40))(a1, v8++, a2, v9);
    }

    while (v7 != v8);
  }

  return result;
}

void sub_590F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if ((*(v11 + 2383) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v12);
  _Unwind_Resume(exception_object);
}

void sub_590FF4()
{
  if ((*(v0 + 79) & 0x80000000) == 0)
  {
    JUMPOUT(0x590F84);
  }

  JUMPOUT(0x590F7CLL);
}

void sub_591020()
{
  if ((*(v0 + 4951) & 0x80000000) == 0)
  {
    JUMPOUT(0x590FD4);
  }

  JUMPOUT(0x590FCCLL);
}

void sub_591040(size_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  if (*a3 != v7)
  {
    do
    {
      sub_592248(a1, v6);
      v6 += 976;
    }

    while (v6 != v7);
  }

  sub_5927C8(a1, a3);
  v8 = *a3;
  for (i = a3[1]; v8 != i; v8 += 976)
  {
    (*(*a1 + 32))(a1, a2, v8);
    (*(*a1 + 24))(a1, v8);
    sub_68F750(v8);
    sub_68E928(v8, a1 + 1718);
  }
}

void sub_59113C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2[21] == -1 || (v6 = sub_3B1D8C(*(a1 + 6720)), v7 = sub_2AB698(v6, a2[21]), !v7))
  {
    v8 = a2[17];
    v9 = a2[18];
LABEL_7:
    v10 = sub_2AB8BC(*(a1 + 6728), v8, v9);
    if (v10 == -1)
    {
      return;
    }

    goto LABEL_8;
  }

  v8 = a2[17];
  v9 = a2[18];
  if (v7 > 0xFFFFFFFEFFFFFFFFLL)
  {
    goto LABEL_7;
  }

  v10 = a2[21];
  if (v10 == -1)
  {
    return;
  }

LABEL_8:
  v11 = sub_2ADCC0(*(a1 + 6728), v10);
  sub_E6F038(a3, &v48);
  v12 = sub_99078(&v48.__r_.__value_.__l.__data_);
  v61 = v12;
  v14 = *v11;
  v13 = v11[1];
  if (*v11 != v13)
  {
    v15 = 0;
    v16 = *v11;
    do
    {
      if (*(v16 + 24) == 1 && (*(v16 + 32) & v12) != 0)
      {
        ++v15;
      }

      v16 += 48;
    }

    while (v16 != v13);
    if (!v15)
    {
      memset(v52, 0, sizeof(v52));
      v53 = 1065353216;
      sub_65DED0(a1 + 6736, &qword_27947A0, v52, 0, &v59);
      sub_64BC20(&v48, &v59);
      sub_5888C8();
    }

    v17 = v13 - v14 - 48;
    if (v17 >= 0x30)
    {
      v25 = 0;
      v26 = 0;
      v27 = v17 / 0x30 + 1;
      v19 = v14 + 48 * (v27 & 0xFFFFFFFFFFFFFFELL);
      v28 = (v14 + 80);
      v29 = v27 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        v30 = *(v28 - 6);
        v32 = *v28;
        v28 += 12;
        v31 = v32;
        if ((v30 & v12) != 0)
        {
          ++v25;
        }

        if ((v31 & v12) != 0)
        {
          ++v26;
        }

        v29 -= 2;
      }

      while (v29);
      v18 = v26 + v25;
      if (v27 == (v27 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_35:
        __p = 0;
        v46 = 0;
        v47 = 0;
        sub_568F30(v18, &__p, *(a1 + 6112), 0, &v48);
        if (byte_279479F >= 0)
        {
          v33 = &qword_2794788;
        }

        else
        {
          v33 = qword_2794788;
        }

        if (byte_279479F >= 0)
        {
          v34 = byte_279479F;
        }

        else
        {
          v34 = unk_2794790;
        }

        v35 = std::string::insert(&v48, 0, v33, v34);
        v36 = *&v35->__r_.__value_.__l.__data_;
        v60 = v35->__r_.__value_.__r.__words[2];
        v59 = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v47) & 0x80000000) == 0)
          {
            goto LABEL_43;
          }
        }

        else if ((SHIBYTE(v47) & 0x80000000) == 0)
        {
          goto LABEL_43;
        }

        operator delete(__p);
LABEL_43:
        sub_67E494(v52, &v59);
        std::to_string(&v48, v15);
        sub_67ECF8(v52, "{AvailablePorts}", &v48.__r_.__value_.__l.__data_);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        std::to_string(&v48, v18);
        sub_67ECF8(v52, "{TotalPorts}", &v48.__r_.__value_.__l.__data_);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        sub_65E138((a1 + 6736), v52, 0, &v56);
        sub_64BC20(&v48, v56);
        sub_5888C8();
      }
    }

    else
    {
      v18 = 0;
      v19 = *v11;
    }

    do
    {
      if ((*(v19 + 32) & v12) != 0)
      {
        ++v18;
      }

      v19 += 48;
    }

    while (v19 != v13);
    goto LABEL_35;
  }

  sub_2AB9C8(*(a1 + 6728), v8, v9, &v48);
  v20 = v49;
  v59 = v49;
  v21 = v48.__r_.__value_.__r.__words[0];
  v60 = v50;
  v50 = 0;
  v49 = 0uLL;
  if (v48.__r_.__value_.__r.__words[0])
  {
    v44 = v20;
    size = v48.__r_.__value_.__l.__size_;
    v23 = v48.__r_.__value_.__r.__words[0];
    if (v48.__r_.__value_.__l.__size_ != v48.__r_.__value_.__r.__words[0])
    {
      do
      {
        v24 = *(size - 24);
        if (v24)
        {
          *(size - 16) = v24;
          operator delete(v24);
        }

        size -= 48;
      }

      while (size != v21);
      v23 = v48.__r_.__value_.__r.__words[0];
    }

    v48.__r_.__value_.__l.__size_ = v21;
    operator delete(v23);
    v20 = v44;
  }

  v57 = 0;
  v58 = 0;
  v56 = &v57;
  v48.__r_.__value_.__r.__words[0] = &v61;
  v37 = v20;
  sub_598864(v20, *(&v20 + 1), &v56, &v57, &__p, &v48);
  v38 = v58;
  if (v58)
  {
    __p = 0;
    v46 = 0;
    v47 = 0;
    sub_568F30(v58, &__p, *(a1 + 6112), 0, &v48);
    if (byte_27947CF >= 0)
    {
      v39 = &qword_27947B8;
    }

    else
    {
      v39 = qword_27947B8;
    }

    if (byte_27947CF >= 0)
    {
      v40 = byte_27947CF;
    }

    else
    {
      v40 = unk_27947C0;
    }

    v41 = std::string::insert(&v48, 0, v39, v40);
    v42 = *&v41->__r_.__value_.__l.__data_;
    v55 = v41->__r_.__value_.__r.__words[2];
    v54 = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(__p);
    }

    sub_67E494(v52, &v54);
    std::to_string(&v48, v38);
    sub_67ECF8(v52, "{TotalPorts}", &v48.__r_.__value_.__l.__data_);
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    sub_65E138((a1 + 6736), v52, 0, &v51);
    sub_64BC20(&v48, v51);
    sub_5888C8();
  }

  sub_7E724(&v56, v57);
  if (v37)
  {
    for (i = *(&v59 + 1); i != v37; i -= 6)
    {
      if (*(i - 1) < 0)
      {
        operator delete(*(i - 3));
      }
    }

    operator delete(v37);
  }
}

void sub_5919BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void **a52)
{
  sub_53A868(&__p);
  sub_1A104(&a52);
  sub_53A58C((v52 - 256));
  if (*(v52 - 153) < 0)
  {
    operator delete(*(v52 - 176));
  }

  sub_7E724(v52 - 152, *(v52 - 144));
  sub_2AE54C((v52 - 128));
  _Unwind_Resume(a1);
}

void sub_591B20(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  JUMPOUT(0x591B2CLL);
}

void sub_591B54(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_53E440(va);
  JUMPOUT(0x591B60);
}

void sub_591B90()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = *(v3 + 1104) + 2616 * v1;
  v9 = *(v8 + 384);
  v10 = v9 > 5;
  v11 = (1 << v9) & 0x34;
  if (v10 || v11 == 0)
  {
    memcpy(__dst, (v0 + 2576), 0x92CuLL);
    if (*(v7 + 4951) < 0)
    {
      sub_325C(&__p, *(v7 + 4928), *(v7 + 4936));
    }

    else
    {
      __p = *(v7 + 4928);
      v36 = *(v7 + 4944);
    }

    v13 = 4952;
  }

  else
  {
    memcpy(__dst, (v0 + 8), 0x92CuLL);
    if (*(v7 + 2383) < 0)
    {
      sub_325C(&__p, *(v7 + 2360), *(v7 + 2368));
    }

    else
    {
      __p = *(v7 + 2360);
      v36 = *(v7 + 2376);
    }

    v13 = 2384;
  }

  v14 = (v7 + v13);
  v15 = v14[9];
  v45 = v14[8];
  v46 = v15;
  v16 = v14[11];
  v47 = v14[10];
  v48 = v16;
  v17 = v14[5];
  v41 = v14[4];
  v42 = v17;
  v18 = v14[7];
  v43 = v14[6];
  v44 = v18;
  v19 = v14[1];
  v37 = *v14;
  v38 = v19;
  v20 = v14[3];
  v39 = v14[2];
  v40 = v20;
  sub_83ABF8(&v32, __dst, v7 + 5144, v4, v2, v6);
  if ((*(v7 + 13740) & 1) != 0 || *(v7 + 13743) == 1)
  {
    sub_83AE78(&v32, &v30);
    sub_58D40C(v8 + 1032, &v30);
    sub_5936E4(&v30);
    sub_665E68((v7 + 6736), (v8 + 1032));
  }

  if (*(v7 + 13741) == 1)
  {
    sub_83B158(&v32, &v30);
    v21 = (v8 + 1888);
    v22 = *(v8 + 1888);
    if (v22)
    {
      v23 = *(v8 + 1896);
      v24 = *(v8 + 1888);
      if (v23 != v22)
      {
        do
        {
          v23 = sub_5938B0((v23 - 140));
        }

        while (v23 != v22);
        v24 = *v21;
      }

      *(v8 + 1896) = v22;
      operator delete(v24);
      *v21 = 0;
      *(v8 + 1896) = 0;
      *(v8 + 1904) = 0;
    }

    *(v8 + 1888) = v30;
    *(v8 + 1904) = v31;
    sub_6662E8(v7 + 6736, v8 + 1888);
  }

  if (*(v7 + 13742) == 1)
  {
    sub_83B530(&v32, v4, &v30);
    v25 = (v8 + 1912);
    v26 = *(v8 + 1912);
    if (v26)
    {
      v27 = *(v8 + 1920);
      v28 = *(v8 + 1912);
      if (v27 != v26)
      {
        do
        {
          v29 = *(v27 - 6);
          if (v29)
          {
            *(v27 - 5) = v29;
            operator delete(v29);
          }

          v27 -= 56;
          sub_55D550(v27);
        }

        while (v27 != v26);
        v28 = *v25;
      }

      *(v8 + 1920) = v26;
      operator delete(v28);
      *v25 = 0;
      *(v8 + 1920) = 0;
      *(v8 + 1928) = 0;
    }

    *v25 = v30;
    *(v8 + 1928) = v31;
    sub_666334(v7 + 6736, v8 + 1912);
  }

  sub_59202C(v7, v8);
  v32 = off_266B730;
  sub_5970B4(&v33);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p);
  }
}

void sub_591EC0(_Unwind_Exception *a1)
{
  STACK[0x358] = off_266B730;
  sub_5970B4(&STACK[0x360]);
  if (*(v1 + 2375) < 0)
  {
    operator delete(STACK[0x1698]);
  }

  _Unwind_Resume(a1);
}

__n128 sub_591F18@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 384);
  v6 = v5 > 5;
  v7 = (1 << v5) & 0x34;
  if (v6 || v7 == 0)
  {
    memcpy(a3, (a1 + 2576), 0x92CuLL);
    v11 = (a3 + 2352);
    if (*(a1 + 4951) < 0)
    {
      sub_325C(v11, *(a1 + 4928), *(a1 + 4936));
    }

    else
    {
      *v11 = *(a1 + 4928);
      *(a3 + 2368) = *(a1 + 4944);
    }

    v10 = 4952;
  }

  else
  {
    memcpy(a3, (a1 + 8), 0x92CuLL);
    v9 = (a3 + 2352);
    if (*(a1 + 2383) < 0)
    {
      sub_325C(v9, *(a1 + 2360), *(a1 + 2368));
    }

    else
    {
      *v9 = *(a1 + 2360);
      *(a3 + 2368) = *(a1 + 2376);
    }

    v10 = 2384;
  }

  v12 = a1 + v10;
  v13 = *(v12 + 144);
  *(a3 + 2504) = *(v12 + 128);
  *(a3 + 2520) = v13;
  v14 = *(v12 + 176);
  *(a3 + 2536) = *(v12 + 160);
  *(a3 + 2552) = v14;
  v15 = *(v12 + 80);
  *(a3 + 2440) = *(v12 + 64);
  *(a3 + 2456) = v15;
  v16 = *(v12 + 112);
  *(a3 + 2472) = *(v12 + 96);
  *(a3 + 2488) = v16;
  v17 = *(v12 + 16);
  *(a3 + 2376) = *v12;
  *(a3 + 2392) = v17;
  result = *(v12 + 32);
  v19 = *(v12 + 48);
  *(a3 + 2408) = result;
  *(a3 + 2424) = v19;
  return result;
}

void sub_59202C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 792);
  for (i = *(a2 + 800); v2 != i; v2 += 40)
  {
    sub_75A254(v2, 0, __p);
    v5 = sub_9274F4(*(a1 + 13704), __p);
    if (*(v5 + 23) < 0)
    {
      sub_325C(&v8, *v5, v5[1]);
    }

    else
    {
      v6 = *v5;
      v9 = v5[2];
      v8 = v6;
    }

    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    v7 = v9;
    *(v2 + 16) = v8;
    *(v2 + 32) = v7;
    HIBYTE(v9) = 0;
    LOBYTE(v8) = 0;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_592108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_592124(void *a1)
{
  *a1 = off_266B730;
  sub_5970B4((a1 + 1));
  return a1;
}

uint64_t sub_592168(uint64_t a1, void *a2)
{
  result = sub_68C590(a2);
  v5 = result;
  if (result)
  {
    v6 = 0;
    do
    {
      result = sub_68C454(a2, v6);
      v7 = *(result + 1112) - *(result + 1104);
      if (v7)
      {
        v8 = result;
        v9 = 0;
        v10 = 0x3795876FF3795877 * (v7 >> 3);
        do
        {
          result = (*(*a1 + 16))(a1, v6, v8, v9++);
        }

        while (v10 != v9);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

void sub_592248(uint64_t a1, unsigned int **a2)
{
  v4 = sub_68C850(a2);
  sub_692354(a2, &qword_2794068, v4);
  sub_7F2CB8(a2, &v19);
  sub_68DC78(a2, &v19);
  sub_53A868(&v19);
  if ((*(a1 + 6559) & 1) == 0)
  {
    sub_64B998(&v19);
    sub_7F2408((a1 + 9456), a2, &v19);
    sub_68DDC8(a2, &v19);
    sub_7F33CC(a1 + 9456, a2, v27);
    sub_68DCCC(a2, v27);
    sub_53A868(v27);
    sub_53A868(&v19);
    goto LABEL_23;
  }

  sub_7F2D3C(a1 + 9456, a2, &v19);
  sub_68DD74(a2, &v19);
  sub_53A868(&v19);
  sub_7F3478(a1 + 9456, a2, &v19);
  sub_68DE64(a2, &v19);
  sub_53A868(&v19);
  sub_7F370C((a1 + 9456), a2, &v19);
  if (v20 <= 2)
  {
    if (v20 == 1)
    {
      if (LODWORD(v19.__r_.__value_.__l.__data_) == -1)
      {
        goto LABEL_16;
      }
    }

    else if (v20 != 2 || *&v19.__r_.__value_.__l.__data_ == __PAIR128__(v19.__r_.__value_.__r.__words[2], -1))
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_68DEB8(a2, &v19);
    goto LABEL_16;
  }

  if (v20 == 3 || v20 == 4)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  if ((v24 & 0x80000000) == 0)
  {
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    operator delete(v21);
    v6 = v20;
    if (v20 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  operator delete(__p);
  if (v22 < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v6 = v20;
  if (v20 != -1)
  {
LABEL_22:
    (off_266B5B8[v6])(v27, &v19);
  }

LABEL_23:
  v7 = sub_68EB94(a2);
  sub_75AED0((a1 + 9440), v7, &v19);
  sub_68EA64(a2, &v19);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
    v11 = nullsub_1(a2);
    v9 = *v11;
    v10 = v11[1];
    if (*v11 != v10)
    {
LABEL_27:
      do
      {
        sub_3B2A90(*(a1 + 6720));
        if ((sub_394BD0() & 1) == 0)
        {
          return;
        }

        v9 += 12656;
      }

      while (v9 != v10);
    }
  }

  else
  {
    v8 = nullsub_1(a2);
    v9 = *v8;
    v10 = v8[1];
    if (*v8 != v10)
    {
      goto LABEL_27;
    }
  }

  sub_7F3D10(a1 + 9456, a2, v27);
  v12 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v12 = v27[1];
  }

  if (v12)
  {
    sub_68E514(a2, v27);
  }

  v13 = v30;
  if ((v30 & 0x80u) != 0)
  {
    v13 = v29[1];
  }

  if (v13)
  {
    sub_68E640(a2, v29);
  }

  if (v34 <= 2)
  {
    if (v34 == 1)
    {
      if (v31[0] == -1)
      {
        goto LABEL_52;
      }
    }

    else if (v34 != 2 || v31[1] == -1 && v31[0] == -1 && v32 == v33)
    {
      goto LABEL_52;
    }

LABEL_51:
    sub_68E76C(a2, v31);
    goto LABEL_52;
  }

  if (v34 == 3 || v34 == 4)
  {
    v14 = HIBYTE(v33);
    if (v33 < 0)
    {
      v14 = v32;
    }

    if (v14)
    {
      goto LABEL_51;
    }
  }

LABEL_52:
  sub_7F496C(a1 + 9456, a2, 0, &v19);
  sub_68F80C(a2, &v19);
  v15 = v25;
  if (v25)
  {
    v16 = v26;
    v17 = v25;
    if (v26 != v25)
    {
      do
      {
        v16 = sub_53A868(v16 - 160);
      }

      while (v16 != v15);
      v17 = v25;
    }

    v26 = v15;
    operator delete(v17);
  }

  sub_53A868(&v19);
  if (v38 < 0)
  {
    operator delete(v37);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_59:
      v18 = v34;
      if (v34 == -1)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(v35);
  v18 = v34;
  if (v34 != -1)
  {
LABEL_63:
    (off_266B5B8[v18])(&v19, v31);
  }

LABEL_64:
  v34 = -1;
  if ((v30 & 0x80000000) == 0)
  {
    if ((v28 & 0x80000000) == 0)
    {
      return;
    }

LABEL_68:
    operator delete(v27[0]);
    return;
  }

  operator delete(v29[0]);
  if (v28 < 0)
  {
    goto LABEL_68;
  }
}

void sub_5926CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  _Unwind_Resume(a1);
}

void sub_5926E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_53A868(&a33);
  sub_53A868(&a10);
  _Unwind_Resume(a1);
}

void sub_592704(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_592718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_59272C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_592740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_58CF24(&a10);
  sub_597624(&a33);
  _Unwind_Resume(a1);
}

void sub_592770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_59278C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_5927A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  _Unwind_Resume(a1);
}

void sub_5927C8(uint64_t a1, uint64_t *a2)
{
  *__p = 0u;
  v26 = 0u;
  v27 = 1065353216;
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    while (1)
    {
      v5 = sub_68DE5C(v2);
      if (!sub_4D1F6C(v5))
      {
        v6 = sub_68DE5C(v2);
        sub_597BBC(__p, v6);
        if ((v7 & 1) == 0)
        {
          break;
        }
      }

      v2 += 7808;
      if (v2 == v3)
      {
        v8 = 1;
        v9 = *a2;
        v10 = a2[1];
        if (*a2 == v10)
        {
          goto LABEL_30;
        }

LABEL_11:
        while (2)
        {
          v11 = sub_68DE5C(v9);
          if (sub_4D1F6C(v11))
          {
            v12 = 0;
          }

          else
          {
            v12 = v8;
          }

          sub_68F7B8(v9, v12);
          v13 = sub_68DEB0(v9);
          v14 = 0;
          v15 = *(v13 + 32);
          if (v15 > 2)
          {
            if (v15 == 3 || v15 == 4)
            {
              v17 = *(v13 + 23);
              if ((v17 & 0x80u) != 0)
              {
                v17 = *(v13 + 8);
              }

              v16 = v17 == 0;
LABEL_26:
              v14 = !v16;
            }
          }

          else
          {
            if (v15 == 1)
            {
              v16 = *v13 == -1;
              goto LABEL_26;
            }

            if (v15 == 2)
            {
              v14 = 1;
              if (*(v13 + 4) == -1 && *v13 == -1)
              {
                v16 = *(v13 + 8) == *(v13 + 16);
                goto LABEL_26;
              }
            }
          }

          sub_68F7C8(v9, v14);
          v9 += 7808;
          if (v9 == v10)
          {
            goto LABEL_30;
          }

          continue;
        }
      }
    }

    v8 = 2;
    v9 = *a2;
    v10 = a2[1];
    if (*a2 != v10)
    {
      goto LABEL_11;
    }
  }

LABEL_30:
  v18 = v26;
  if (v26)
  {
    do
    {
      v21 = *v18;
      v22 = v18[2];
      if (v22)
      {
        v23 = v18[3];
        v20 = v18[2];
        if (v23 != v22)
        {
          do
          {
            v24 = *(v23 - 1);
            v23 -= 3;
            if (v24 < 0)
            {
              operator delete(*v23);
            }
          }

          while (v23 != v22);
          v20 = v18[2];
        }

        v18[3] = v22;
        operator delete(v20);
      }

      operator delete(v18);
      v18 = v21;
    }

    while (v21);
  }

  v19 = __p[0];
  __p[0] = 0;
  if (v19)
  {
    operator delete(v19);
  }
}

uint64_t sub_5929F4(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_68C590(a3);
  v7 = result;
  if (result)
  {
    v8 = 0;
    do
    {
      v9 = sub_68C454(a3, v8);
      result = (*(*a1 + 40))(a1, v8++, a2, v9);
    }

    while (v7 != v8);
  }

  return result;
}

void sub_592DC8(uint64_t a1)
{
  sub_5976F4(a1);

  operator delete();
}

void sub_592E04(uint64_t a1)
{
  sub_59788C(a1);

  operator delete();
}

void sub_592E40(uint64_t a1)
{
  sub_597A24(a1);

  operator delete();
}

uint64_t sub_592E78(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  v5 = a1 + 8;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = *(a1 + 16);
    v8 = v6;
    if (v7 != v6)
    {
      do
      {
        v7 = sub_53A868(v7 - 160);
      }

      while (v7 != v6);
      v8 = *v5;
    }

    *(a1 + 16) = v6;
    operator delete(v8);
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  v10 = *(a2 + 80);
  v9 = *(a2 + 96);
  v11 = *(a2 + 64);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v10;
  *(a1 + 96) = v9;
  *(a1 + 64) = v11;
  v12 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v12;
  v13 = *(a2 + 120);
  v14 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v14;
  *(a1 + 120) = v13;
  v15 = *(a1 + 160);
  if (v15)
  {
    *(a1 + 168) = v15;
    operator delete(v15);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v16 = *(a1 + 184);
  if (v16)
  {
    *(a1 + 192) = v16;
    operator delete(v16);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
  }

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 184) = 0;
  v17 = *(a2 + 208);
  v18 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v18;
  *(a1 + 208) = v17;
  v19 = *(a2 + 288);
  v20 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v20;
  *(a1 + 288) = v19;
  if (*(a1 + 296))
  {
    sub_593060((a1 + 296));
    operator delete(*(a1 + 296));
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
  }

  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 296) = 0;
  *(a1 + 320) = *(a2 + 320);
  v21 = *(a1 + 328);
  if (v21)
  {
    *(a1 + 336) = v21;
    operator delete(v21);
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
  }

  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  v22 = *(a2 + 352);
  *(a1 + 361) = *(a2 + 361);
  *(a1 + 352) = v22;
  return a1;
}

void sub_593060(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 == *a1)
  {
    goto LABEL_33;
  }

  do
  {
    v5 = *(v3 - 2);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v6 = *(v3 - 8);
      if (!v6)
      {
        goto LABEL_9;
      }

      while (1)
      {
LABEL_20:
        v12 = *v6;
        if (*(v6 + 191) < 0)
        {
          operator delete(v6[21]);
          if ((*(v6 + 159) & 0x80000000) == 0)
          {
LABEL_22:
            if ((*(v6 + 135) & 0x80000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_29;
          }
        }

        else if ((*(v6 + 159) & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        operator delete(v6[17]);
        if ((*(v6 + 135) & 0x80000000) == 0)
        {
LABEL_23:
          if ((*(v6 + 95) & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_30;
        }

LABEL_29:
        operator delete(v6[14]);
        if ((*(v6 + 95) & 0x80000000) == 0)
        {
LABEL_24:
          if ((*(v6 + 63) & 0x80000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_31;
        }

LABEL_30:
        operator delete(v6[9]);
        if ((*(v6 + 63) & 0x80000000) == 0)
        {
LABEL_25:
          if (*(v6 + 39) < 0)
          {
            goto LABEL_32;
          }

          goto LABEL_19;
        }

LABEL_31:
        operator delete(v6[5]);
        if (*(v6 + 39) < 0)
        {
LABEL_32:
          operator delete(v6[2]);
        }

LABEL_19:
        operator delete(v6);
        v6 = v12;
        if (!v12)
        {
          goto LABEL_9;
        }
      }
    }

    v6 = *(v3 - 8);
    if (v6)
    {
      goto LABEL_20;
    }

LABEL_9:
    v7 = *(v3 - 10);
    *(v3 - 10) = 0;
    if (v7)
    {
      operator delete(v7);
    }

    v8 = v3 - 13;
    v9 = *(v3 - 13);
    if (v9)
    {
      v10 = *(v3 - 12);
      v4 = *(v3 - 13);
      if (v10 != v9)
      {
        do
        {
          v11 = *(v10 - 1);
          v10 -= 3;
          if (v11 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v4 = *v8;
      }

      *(v3 - 12) = v9;
      operator delete(v4);
    }

    v3 -= 13;
  }

  while (v8 != v2);
LABEL_33:
  a1[1] = v2;
}

void sub_593214(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        sub_55F7FC((v4 + 2));
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 16) = 0;
    v6 = *(a1 + 8);
    if (v6)
    {
      bzero(*a1, 8 * v6);
    }

    *(a1 + 24) = 0;
  }

  v7 = *a2;
  *a2 = 0;
  v8 = *a1;
  *a1 = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v11 = a2[2];
  v10 = a2 + 2;
  v9 = v11;
  v12 = *(v10 - 1);
  *(a1 + 16) = v11;
  *(a1 + 8) = v12;
  *(v10 - 1) = 0;
  v13 = v10[1];
  *(a1 + 24) = v13;
  *(a1 + 32) = *(v10 + 4);
  if (v13)
  {
    v14 = *(v9 + 8);
    v15 = *(a1 + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v14 %= v15;
      }
    }

    else
    {
      v14 &= v15 - 1;
    }

    *(*a1 + 8 * v14) = a1 + 16;
    *v10 = 0;
    v10[1] = 0;
  }
}

void ***sub_593304(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2[1];
      v5 = *v2;
      if (v4 != v3)
      {
        do
        {
          v4 = sub_53A868(v4 - 168);
        }

        while (v4 != v3);
        v5 = *v2;
      }

      v2[1] = v3;
      operator delete(v5);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_593394(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    if (*(result + 24) == 1 && *(result + 23) < 0)
    {
      operator delete(*result);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_59342C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      *(v2 + 16) = v3;
      operator delete(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_593494(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
      if ((*(v2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(v2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*v2);
LABEL_4:

    operator delete();
  }

  return result;
}

uint64_t *sub_593518(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_593580(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_5935E8(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    sub_53A868(result);

    operator delete();
  }

  return result;
}

uint64_t *sub_593634(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 103) < 0)
    {
      operator delete(*(v1 + 80));
      if ((*(v1 + 71) & 0x80000000) == 0)
      {
LABEL_4:
        v2 = *(v1 + 32);
        if (v2 == -1)
        {
LABEL_9:
          *(v1 + 32) = -1;
          operator delete();
        }

LABEL_8:
        (off_266B5B8[v2])(&v3, v1);
        goto LABEL_9;
      }
    }

    else if ((*(v1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v1 + 48));
    v2 = *(v1 + 32);
    if (v2 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

void *sub_5936E4(void *a1)
{
  v2 = a1[106];
  a1[106] = 0;
  if (v2)
  {
    if (*(v2 + 103) < 0)
    {
      operator delete(*(v2 + 80));
      if ((*(v2 + 71) & 0x80000000) == 0)
      {
LABEL_4:
        v3 = *(v2 + 32);
        if (v3 == -1)
        {
LABEL_9:
          *(v2 + 32) = -1;
          operator delete();
        }

LABEL_8:
        (off_266B5B8[v3])(&v19, v2);
        goto LABEL_9;
      }
    }

    else if ((*(v2 + 71) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v2 + 48));
    v3 = *(v2 + 32);
    if (v3 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_53A868((a1 + 86));
  sub_53A868((a1 + 66));
  v4 = a1[62];
  if (v4)
  {
    do
    {
      v5 = *v4;
      sub_55F7FC((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = a1[60];
  a1[60] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = a1[57];
  if (v7)
  {
    v8 = a1[58];
    v9 = a1[57];
    if (v8 != v7)
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

      while (v8 != v7);
      v9 = a1[57];
    }

    a1[58] = v7;
    operator delete(v9);
  }

  v11 = a1[53];
  if (v11)
  {
    do
    {
      v12 = *v11;
      sub_55F7FC((v11 + 2));
      operator delete(v11);
      v11 = v12;
    }

    while (v12);
  }

  v13 = a1[51];
  a1[51] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = a1[48];
  if (v14)
  {
    v15 = a1[49];
    v16 = a1[48];
    if (v15 != v14)
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = a1[48];
    }

    a1[49] = v14;
    operator delete(v16);
  }

  return sub_55D550(a1);
}

void *sub_5938B0(uint64_t a1)
{
  v2 = *(a1 + 1088);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_55F7FC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 1072);
  *(a1 + 1072) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 1048);
  if (v5)
  {
    v6 = *(a1 + 1056);
    v7 = *(a1 + 1048);
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
      v7 = *(a1 + 1048);
    }

    *(a1 + 1056) = v5;
    operator delete(v7);
  }

  v9 = *(a1 + 1008);
  if (v9)
  {
    do
    {
      v10 = *v9;
      sub_55F7FC((v9 + 2));
      operator delete(v9);
      v9 = v10;
    }

    while (v10);
  }

  v11 = *(a1 + 992);
  *(a1 + 992) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 968);
  if (v12)
  {
    v13 = *(a1 + 976);
    v14 = *(a1 + 968);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(a1 + 968);
    }

    *(a1 + 976) = v12;
    operator delete(v14);
  }

  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
    if ((*(a1 + 943) & 0x80000000) == 0)
    {
LABEL_27:
      v16 = *(a1 + 872);
      if (!v16)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((*(a1 + 943) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(*(a1 + 920));
  v16 = *(a1 + 872);
  if (v16)
  {
LABEL_28:
    *(a1 + 880) = v16;
    operator delete(v16);
  }

LABEL_29:

  return sub_5936E4(a1);
}

void sub_593A2C(void *a1)
{
  *a1 = off_266B488;
  sub_593A90((a1 + 1));

  operator delete();
}

uint64_t sub_593A90(uint64_t a1)
{
  *a1 = off_266B518;
  if (*(a1 + 2511) < 0)
  {
    operator delete(*(a1 + 2488));
    if ((*(a1 + 2479) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 2455) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a1 + 2479) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 2456));
  if ((*(a1 + 2455) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 2415) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(*(a1 + 2432));
  if ((*(a1 + 2415) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 2383) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*(a1 + 2392));
  if ((*(a1 + 2383) & 0x80000000) == 0)
  {
LABEL_6:
    v2 = *(a1 + 2336);
    if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_26:
  operator delete(*(a1 + 2360));
  v2 = *(a1 + 2336);
  if (v2)
  {
LABEL_7:
    *(a1 + 2344) = v2;
    operator delete(v2);
  }

LABEL_8:
  sub_5940E0((a1 + 2136));
  v3 = *(a1 + 2080);
  if (v3)
  {
    *(a1 + 2088) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 2056);
  if (v4)
  {
    *(a1 + 2064) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 2032);
  if (v5)
  {
    *(a1 + 2040) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 1848);
  if (v6)
  {
    *(a1 + 1856) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 1824);
  if (v7)
  {
    *(a1 + 1832) = v7;
    operator delete(v7);
  }

  if ((*(a1 + 1743) & 0x80000000) == 0)
  {
    if ((*(a1 + 1711) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_29:
    operator delete(*(a1 + 1688));
    v8 = *(a1 + 1672);
    if (v8 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  operator delete(*(a1 + 1720));
  if (*(a1 + 1711) < 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  v8 = *(a1 + 1672);
  if (v8 != -1)
  {
LABEL_30:
    (off_266B5B8[v8])(&v25, a1 + 1640);
  }

LABEL_31:
  *(a1 + 1672) = -1;
  sub_53A868(a1 + 1480);
  v9 = *(a1 + 1448);
  if (v9)
  {
    *(a1 + 1456) = v9;
    operator delete(v9);
  }

  sub_44FDEC(a1 + 1008);
  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  sub_593FC8((a1 + 960));
  sub_593FC8((a1 + 936));
  sub_593FC8((a1 + 912));
  if (*(a1 + 911) < 0)
  {
    operator delete(*(a1 + 888));
    if ((*(a1 + 879) & 0x80000000) == 0)
    {
LABEL_37:
      if ((*(a1 + 855) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_87;
    }
  }

  else if ((*(a1 + 879) & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  operator delete(*(a1 + 856));
  if ((*(a1 + 855) & 0x80000000) == 0)
  {
LABEL_38:
    if ((*(a1 + 815) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  operator delete(*(a1 + 832));
  if ((*(a1 + 815) & 0x80000000) == 0)
  {
LABEL_39:
    if ((*(a1 + 783) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_89;
  }

LABEL_88:
  operator delete(*(a1 + 792));
  if ((*(a1 + 783) & 0x80000000) == 0)
  {
LABEL_40:
    if ((*(a1 + 759) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_90;
  }

LABEL_89:
  operator delete(*(a1 + 760));
  if ((*(a1 + 759) & 0x80000000) == 0)
  {
LABEL_41:
    if ((*(a1 + 727) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_91;
  }

LABEL_90:
  operator delete(*(a1 + 736));
  if ((*(a1 + 727) & 0x80000000) == 0)
  {
LABEL_42:
    if ((*(a1 + 703) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_92;
  }

LABEL_91:
  operator delete(*(a1 + 704));
  if ((*(a1 + 703) & 0x80000000) == 0)
  {
LABEL_43:
    if ((*(a1 + 663) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_93;
  }

LABEL_92:
  operator delete(*(a1 + 680));
  if ((*(a1 + 663) & 0x80000000) == 0)
  {
LABEL_44:
    if ((*(a1 + 631) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_94;
  }

LABEL_93:
  operator delete(*(a1 + 640));
  if ((*(a1 + 631) & 0x80000000) == 0)
  {
LABEL_45:
    if ((*(a1 + 607) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_95;
  }

LABEL_94:
  operator delete(*(a1 + 608));
  if ((*(a1 + 607) & 0x80000000) == 0)
  {
LABEL_46:
    if ((*(a1 + 575) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_96;
  }

LABEL_95:
  operator delete(*(a1 + 584));
  if ((*(a1 + 575) & 0x80000000) == 0)
  {
LABEL_47:
    if ((*(a1 + 551) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_97;
  }

LABEL_96:
  operator delete(*(a1 + 552));
  if ((*(a1 + 551) & 0x80000000) == 0)
  {
LABEL_48:
    if ((*(a1 + 511) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_98;
  }

LABEL_97:
  operator delete(*(a1 + 528));
  if ((*(a1 + 511) & 0x80000000) == 0)
  {
LABEL_49:
    if ((*(a1 + 479) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_99;
  }

LABEL_98:
  operator delete(*(a1 + 488));
  if ((*(a1 + 479) & 0x80000000) == 0)
  {
LABEL_50:
    if ((*(a1 + 455) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_100;
  }

LABEL_99:
  operator delete(*(a1 + 456));
  if ((*(a1 + 455) & 0x80000000) == 0)
  {
LABEL_51:
    if ((*(a1 + 423) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_101;
  }

LABEL_100:
  operator delete(*(a1 + 432));
  if ((*(a1 + 423) & 0x80000000) == 0)
  {
LABEL_52:
    if ((*(a1 + 399) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_102;
  }

LABEL_101:
  operator delete(*(a1 + 400));
  if ((*(a1 + 399) & 0x80000000) == 0)
  {
LABEL_53:
    if ((*(a1 + 359) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_103;
  }

LABEL_102:
  operator delete(*(a1 + 376));
  if ((*(a1 + 359) & 0x80000000) == 0)
  {
LABEL_54:
    if ((*(a1 + 327) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_104;
  }

LABEL_103:
  operator delete(*(a1 + 336));
  if ((*(a1 + 327) & 0x80000000) == 0)
  {
LABEL_55:
    if ((*(a1 + 303) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_105;
  }

LABEL_104:
  operator delete(*(a1 + 304));
  if ((*(a1 + 303) & 0x80000000) == 0)
  {
LABEL_56:
    if ((*(a1 + 271) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_106;
  }

LABEL_105:
  operator delete(*(a1 + 280));
  if ((*(a1 + 271) & 0x80000000) == 0)
  {
LABEL_57:
    if ((*(a1 + 247) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_107;
  }

LABEL_106:
  operator delete(*(a1 + 248));
  if ((*(a1 + 247) & 0x80000000) == 0)
  {
LABEL_58:
    if ((*(a1 + 207) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_108;
  }

LABEL_107:
  operator delete(*(a1 + 224));
  if ((*(a1 + 207) & 0x80000000) == 0)
  {
LABEL_59:
    if ((*(a1 + 175) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

LABEL_109:
    operator delete(*(a1 + 152));
    v10 = *(a1 + 120);
    if (!v10)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_108:
  operator delete(*(a1 + 184));
  if (*(a1 + 175) < 0)
  {
    goto LABEL_109;
  }

LABEL_60:
  v10 = *(a1 + 120);
  if (!v10)
  {
    goto LABEL_62;
  }

  do
  {
LABEL_61:
    v11 = *v10;
    sub_55F7FC((v10 + 2));
    operator delete(v10);
    v10 = v11;
  }

  while (v11);
LABEL_62:
  v12 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = *(a1 + 88);
    v15 = *(a1 + 80);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = *(a1 + 80);
    }

    *(a1 + 88) = v13;
    operator delete(v15);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    do
    {
      v18 = *v17;
      sub_55F7FC((v17 + 2));
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(a1 + 8);
  if (v20)
  {
    v21 = *(a1 + 16);
    v22 = *(a1 + 8);
    if (v21 != v20)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = *(a1 + 8);
    }

    *(a1 + 16) = v20;
    operator delete(v22);
  }

  return a1;
}

void ***sub_593FC8(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_17:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        if ((*(v3 - 33) & 0x80000000) == 0)
        {
LABEL_7:
          if ((*(v3 - 57) & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v3 - 33) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v3 - 7));
      if ((*(v3 - 57) & 0x80000000) == 0)
      {
LABEL_8:
        if ((*(v3 - 97) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }

LABEL_13:
      operator delete(*(v3 - 10));
      if ((*(v3 - 97) & 0x80000000) == 0)
      {
LABEL_9:
        v5 = v3 - 19;
        if (*(v3 - 129) < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_4;
      }

LABEL_14:
      operator delete(*(v3 - 15));
      v5 = v3 - 19;
      if (*(v3 - 129) < 0)
      {
LABEL_15:
        operator delete(*v5);
      }

LABEL_4:
      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_17;
      }
    }
  }

  return a1;
}

void sub_5940A8(uint64_t a1)
{
  sub_593A90(a1);

  operator delete();
}

void **sub_5940E0(void **a1)
{
  v2 = a1[7];
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = a1[8];
  v4 = a1[7];
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 4));
      if (*(v3 - 41) < 0)
      {
LABEL_10:
        operator delete(*(v3 - 8));
        v5 = *(v3 - 20);
        if (v5 == -1)
        {
          goto LABEL_4;
        }

LABEL_11:
        (off_266B5B8[v5])(&v10, v3 - 14);
        goto LABEL_4;
      }
    }

    else if (*(v3 - 41) < 0)
    {
      goto LABEL_10;
    }

    v5 = *(v3 - 20);
    if (v5 != -1)
    {
      goto LABEL_11;
    }

LABEL_4:
    *(v3 - 20) = -1;
    v3 -= 23;
  }

  while (v3 != v2);
  v4 = a1[7];
LABEL_13:
  a1[8] = v2;
  operator delete(v4);
LABEL_14:
  v6 = *a1;
  if (*a1)
  {
    v7 = a1[1];
    v8 = *a1;
    if (v7 != v6)
    {
      do
      {
        v7 = sub_5941F8(v7 - 432);
      }

      while (v7 != v6);
      v8 = *a1;
    }

    a1[1] = v6;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_5941F8(uint64_t a1)
{
  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
    if ((*(a1 + 399) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 375) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a1 + 399) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 376));
  if ((*(a1 + 375) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 335) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(a1 + 352));
  if ((*(a1 + 335) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 303) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(a1 + 312));
  if ((*(a1 + 303) & 0x80000000) == 0)
  {
LABEL_6:
    v2 = *(a1 + 256);
    if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  operator delete(*(a1 + 280));
  v2 = *(a1 + 256);
  if (v2)
  {
LABEL_7:
    *(a1 + 264) = v2;
    operator delete(v2);
  }

LABEL_8:
  v3 = *(a1 + 192);
  if (v3)
  {
    *(a1 + 200) = v3;
    operator delete(v3);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
LABEL_12:
      if ((*(a1 + 103) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a1 + 127) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(*(a1 + 104));
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
LABEL_13:
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_25:
    operator delete(*(a1 + 40));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_26;
  }

LABEL_24:
  operator delete(*(a1 + 80));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_26:
  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_594338(uint64_t a1)
{
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 96));
    v2 = *(a1 + 80);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 128));
  if (*(a1 + 119) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 80);
  if (v2 != -1)
  {
LABEL_7:
    (off_266B5B8[v2])(&v4, a1 + 48);
  }

LABEL_8:
  *(a1 + 80) = -1;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t sub_594408(uint64_t a1)
{
  sub_528AB4(a1 + 3080);
  v2 = *(a1 + 3000);
  if (v2)
  {
    *(a1 + 3008) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 2976);
  if (v3)
  {
    *(a1 + 2984) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 2864);
  if (v4)
  {
    *(a1 + 2872) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 2840);
  if (v5)
  {
    *(a1 + 2848) = v5;
    operator delete(v5);
  }

  if (*(a1 + 2791) < 0)
  {
    operator delete(*(a1 + 2768));
    if ((*(a1 + 2767) & 0x80000000) == 0)
    {
LABEL_11:
      if ((*(a1 + 2743) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if ((*(a1 + 2767) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(*(a1 + 2744));
  if ((*(a1 + 2743) & 0x80000000) == 0)
  {
LABEL_12:
    if ((*(a1 + 2719) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(a1 + 2720));
  if ((*(a1 + 2719) & 0x80000000) == 0)
  {
LABEL_13:
    if ((*(a1 + 2695) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(a1 + 2696));
  if ((*(a1 + 2695) & 0x80000000) == 0)
  {
LABEL_14:
    if ((*(a1 + 2407) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_22:
    operator delete(*(a1 + 2384));
    v6 = *(a1 + 8);
    if (!v6)
    {
      return a1;
    }

    goto LABEL_23;
  }

LABEL_21:
  operator delete(*(a1 + 2672));
  if (*(a1 + 2407) < 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v6 = *(a1 + 8);
  if (!v6)
  {
    return a1;
  }

LABEL_23:
  v8 = *(a1 + 16);
  v9 = v6;
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
    v9 = *(a1 + 8);
  }

  *(a1 + 16) = v6;
  operator delete(v9);
  return a1;
}

uint64_t sub_594568(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    sub_594744((a1 + 96), (a2 + 96));
    v9 = *(a2 + 108);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = v9;
    return a1;
  }

  sub_74300(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  sub_59482C(a1 + 24, *(a2 + 24), *(a2 + 32), 0x8E38E38E38E38E39 * ((*(a2 + 32) - *(a2 + 24)) >> 4));
  sub_74300((a1 + 48), *(a2 + 48), *(a2 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 3));
  sub_5965F8((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 5);
  sub_594744((a1 + 96), (a2 + 96));
  v4 = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = v4;
  v5 = *(a2 + 135);
  if (*(a1 + 135) < 0)
  {
    if (v5 >= 0)
    {
      v11 = (a2 + 112);
    }

    else
    {
      v11 = *(a2 + 112);
    }

    if (v5 >= 0)
    {
      v12 = *(a2 + 135);
    }

    else
    {
      v12 = *(a2 + 120);
    }

    sub_13B38(a1 + 112, v11, v12);
    v7 = (a2 + 136);
    v8 = *(a2 + 159);
    if (*(a1 + 159) < 0)
    {
      goto LABEL_18;
    }
  }

  else if ((*(a2 + 135) & 0x80) != 0)
  {
    sub_13A68((a1 + 112), *(a2 + 112), *(a2 + 120));
    v7 = (a2 + 136);
    v8 = *(a2 + 159);
    if (*(a1 + 159) < 0)
    {
LABEL_18:
      if ((v8 & 0x80u) == 0)
      {
        v14 = v7;
      }

      else
      {
        v14 = *(a2 + 136);
      }

      if ((v8 & 0x80u) == 0)
      {
        v15 = v8;
      }

      else
      {
        v15 = *(a2 + 144);
      }

      sub_13B38(a1 + 136, v14, v15);
      return a1;
    }
  }

  else
  {
    v6 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v6;
    v7 = (a2 + 136);
    v8 = *(a2 + 159);
    if (*(a1 + 159) < 0)
    {
      goto LABEL_18;
    }
  }

  if ((v8 & 0x80) != 0)
  {
    sub_13A68((a1 + 136), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v13 = *v7;
    *(a1 + 152) = v7[2];
    *(a1 + 136) = v13;
  }

  return a1;
}

uint64_t *sub_594744(uint64_t *a1, void *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *a1;
    if (!*a1)
    {
      operator new();
    }

    sub_594568(*a1, *a2);
    *(v4 + 160) = *(v3 + 160);
    return a1;
  }

  else
  {
    sub_5935E8(a1);
    return a1;
  }
}

void sub_59482C(uint64_t a1, size_t *a2, size_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      for (i = *(a1 + 8); i != v8; sub_55A0A0(a1, i))
      {
        i -= 144;
      }

      *(a1 + 8) = v8;
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (a4 <= 0x1C71C71C71C71C7)
    {
      v15 = 0x8E38E38E38E38E39 * (v7 >> 4);
      v16 = 2 * v15;
      if (2 * v15 <= a4)
      {
        v16 = a4;
      }

      if (v15 >= 0xE38E38E38E38E3)
      {
        v17 = 0x1C71C71C71C71C7;
      }

      else
      {
        v17 = v16;
      }

      if (v17 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0x8E38E38E38E38E39 * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_594AD4(v8, v5);
        v5 += 18;
        v8 += 144;
      }

      while (v5 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 -= 144;
      sub_55A0A0(a1, v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != v8)
    {
      do
      {
        sub_594AD4(v8, v5);
        v5 += 18;
        v8 += 144;
        v12 -= 144;
      }

      while (v12);
      v11 = *(a1 + 8);
    }

    v18 = v11;
    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      do
      {
        sub_55C01C(v14, v13);
        v13 += 9;
        v14 = v18 + 144;
        v18 += 144;
      }

      while (v13 != a3);
    }

    *(a1 + 8) = v14;
  }
}

void sub_594A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_55D064(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_594ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_55D064(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_594AD4(uint64_t a1, size_t *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    if (*(a1 + 23) < 0)
    {
      if (*(a2 + 23) >= 0)
      {
        v5 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v5 = v2[1];
      }

      sub_13B38(a1, a2, v5);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      sub_13A68(a1, *a2, a2[1]);
    }

    else
    {
      v4 = *a2;
      *(a1 + 16) = a2[2];
      *a1 = v4;
    }
  }

  v6 = v2[3];
  *(a1 + 32) = *(v2 + 8);
  *(a1 + 24) = v6;
  sub_594C04((a1 + 40), v2 + 5);
  sub_594D7C((a1 + 48), v2 + 6);
  sub_594EF8((a1 + 56), v2 + 7);
  if (a1 != v2)
  {
    sub_595790((a1 + 64), v2[8], v2[9], 0xCCCCCCCCCCCCCCCDLL * ((v2[9] - v2[8]) >> 3));
  }

  sub_595040((a1 + 88), v2 + 11);
  v7 = *(v2 + 100);
  *(a1 + 96) = *(v2 + 24);
  *(a1 + 100) = v7;
  sub_595100((a1 + 104), v2 + 13);
  sub_595354((a1 + 112), v2 + 14);
  sub_5954D0((a1 + 120), v2 + 15);
  sub_595638((a1 + 128), v2 + 16);
  *(a1 + 136) = *(v2 + 34);
  return a1;
}

uint64_t *sub_594C04(uint64_t *a1, const void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (v4 == v3)
    {
      return a1;
    }

    v5 = v3[23];
    if (*(v4 + 23) < 0)
    {
      if ((v5 & 0x80u) == 0)
      {
        v8 = *a2;
      }

      else
      {
        v8 = *v3;
      }

      if ((v5 & 0x80u) == 0)
      {
        v9 = v3[23];
      }

      else
      {
        v9 = *(v3 + 1);
      }

      sub_13B38(v4, v8, v9);
      return a1;
    }

    else
    {
      if ((v3[23] & 0x80) == 0)
      {
        v6 = *v3;
        *(v4 + 16) = *(v3 + 2);
        *v4 = v6;
        return a1;
      }

      sub_13A68(v4, *v3, *(v3 + 1));
      return a1;
    }
  }

  else
  {
    sub_593580(a1, 0);
    return a1;
  }
}

uint64_t *sub_594D7C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *a1;
    if (!*a1)
    {
      operator new();
    }

    *v4 = *v3;
    v5 = (v4 + 8);
    if (v4 != v3)
    {
      v6 = *(v3 + 31);
      if (*(v4 + 31) < 0)
      {
        if (v6 >= 0)
        {
          v8 = (v3 + 8);
        }

        else
        {
          v8 = *(v3 + 8);
        }

        if (v6 >= 0)
        {
          v9 = *(v3 + 31);
        }

        else
        {
          v9 = *(v3 + 16);
        }

        sub_13B38(v5, v8, v9);
      }

      else if ((*(v3 + 31) & 0x80) != 0)
      {
        sub_13A68(v5, *(v3 + 8), *(v3 + 16));
      }

      else
      {
        v7 = *(v3 + 8);
        *(v4 + 24) = *(v3 + 24);
        *v5 = v7;
      }
    }

    *(v4 + 32) = *(v3 + 32);
    return a1;
  }

  else
  {
    sub_593518(a1, 0);
    return a1;
  }
}

uint64_t *sub_594EF8(uint64_t *a1, uint64_t *a2)
{
  if (*a2)
  {
    v3 = *a1;
    if (!*a1)
    {
      operator new();
    }

    sub_5410A0(v3, *a2);
    return a1;
  }

  else
  {
    sub_593634(a1);
    return a1;
  }
}

uint64_t *sub_595040(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (*a2)
  {
    if (!v3)
    {
      operator new();
    }

    sub_595BC8(v3, *a2);
    return a1;
  }

  *a1 = 0;
  if (!v3)
  {
    return a1;
  }

  sub_55CE04(a1, v3);
  return a1;
}

uint64_t *sub_595100(uint64_t *a1, const void **a2)
{
  v3 = *a2;
  if (!*a2)
  {
    sub_593494(a1, 0);
    return a1;
  }

  v4 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (v4 == v3)
  {
    return a1;
  }

  v5 = v3[23];
  if (*(v4 + 23) < 0)
  {
    if ((v5 & 0x80u) == 0)
    {
      v9 = *a2;
    }

    else
    {
      v9 = *v3;
    }

    if ((v5 & 0x80u) == 0)
    {
      v10 = v3[23];
    }

    else
    {
      v10 = *(v3 + 1);
    }

    sub_13B38(*a1, v9, v10);
    v7 = v3 + 24;
    v8 = v3[47];
    if (*(v4 + 47) < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if ((v3[23] & 0x80) == 0)
  {
    v6 = *v3;
    *(v4 + 16) = *(v3 + 2);
    *v4 = v6;
    v7 = v3 + 24;
    v8 = v3[47];
    if (*(v4 + 47) < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  sub_13A68(*a1, *v3, *(v3 + 1));
  v7 = v3 + 24;
  v8 = v3[47];
  if ((*(v4 + 47) & 0x80000000) == 0)
  {
LABEL_16:
    if ((v8 & 0x80) != 0)
    {
      sub_13A68((v4 + 24), *(v3 + 3), *(v3 + 4));
      return a1;
    }

    v11 = *v7;
    *(v4 + 40) = v7[2];
    *(v4 + 24) = v11;
    return a1;
  }

LABEL_20:
  if ((v8 & 0x80u) == 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v3 + 3);
  }

  if ((v8 & 0x80u) == 0)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v3 + 4);
  }

  sub_13B38(v4 + 24, v13, v14);
  return a1;
}

void sub_595314()
{
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
    operator delete();
  }

  operator delete();
}

uint64_t *sub_595354(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *a1;
    if (!*a1)
    {
      operator new();
    }

    *v4 = *v3;
    if (v4 != v3)
    {
      sub_596098((v4 + 8), *(v3 + 8), *(v3 + 16), (*(v3 + 16) - *(v3 + 8)) >> 2);
    }

    *(v4 + 32) = *(v3 + 32);
    *(v4 + 40) = *(v3 + 40);
  }

  else
  {
    sub_59342C(a1, 0);
  }

  return a1;
}

void sub_5954A8()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 16) = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t *sub_5954D0(uint64_t *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *a1;
    if (!*a1)
    {
      operator new();
    }

    sub_5961F8(*a1, *a2);
    *(v4 + 32) = *(v3 + 32);
    return a1;
  }

  else
  {
    sub_593394(a1, 0);
    return a1;
  }
}

void sub_595604()
{
  if (*(v0 + 24) == 1 && *(v0 + 23) < 0)
  {
    operator delete(*v0);
  }

  operator delete();
}

void ***sub_595638(void ***a1, uint64_t **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (v4 != v3)
    {
      sub_596330(v4, *v3, v3[1], 0xCF3CF3CF3CF3CF3DLL * ((v3[1] - *v3) >> 3));
    }

    return a1;
  }

  else
  {
    sub_593304(a1, 0);
    return a1;
  }
}

void sub_595790(void **a1, void **a2, char *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          if (*(v10 - 9) < 0)
          {
            operator delete(*(v10 - 4));
          }

          v10 -= 5;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x666666666666666)
    {
      v33 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v34 = 2 * v33;
      if (2 * v33 <= a4)
      {
        v34 = a4;
      }

      if (v33 >= 0x333333333333333)
      {
        v35 = 0x666666666666666;
      }

      else
      {
        v35 = v34;
      }

      if (v35 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * (v12 - v8) >= a4)
  {
    if (a2 != a3)
    {
      v24 = 0;
      do
      {
        v27 = &v8[v24];
        v28 = &a2[v24];
        v29 = &a2[v24 + 1];
        LODWORD(v8[v24]) = a2[v24];
        v30 = &v8[v24 + 1];
        if (v8 != a2)
        {
          v31 = v28[31];
          if (v27[31] < 0)
          {
            if (v31 >= 0)
            {
              v25 = &a2[v24 + 1];
            }

            else
            {
              v25 = *v29;
            }

            if (v31 >= 0)
            {
              v26 = v28[31];
            }

            else
            {
              v26 = a2[v24 + 2];
            }

            sub_13B38(v30, v25, v26);
          }

          else if (v28[31] < 0)
          {
            sub_13A68(v30, *v29, a2[v24 + 2]);
          }

          else
          {
            v32 = *v29;
            v8[v24 + 3] = a2[v24 + 3];
            *v30 = v32;
          }
        }

        v27[32] = v28[32];
        v24 += 5;
      }

      while (v28 + 40 != a3);
      v12 = a1[1];
      v8 = (v8 + v24 * 8);
    }

    while (v12 != v8)
    {
      if (*(v12 - 9) < 0)
      {
        operator delete(*(v12 - 4));
      }

      v12 -= 5;
    }

    a1[1] = v8;
  }

  else
  {
    v13 = a2 + v12 - v8;
    v14 = v12 - v8;
    if (v12 != v8)
    {
      v15 = 0;
      do
      {
        v18 = &v8[v15];
        v19 = &a2[v15];
        v20 = &a2[v15 + 1];
        LODWORD(v8[v15]) = a2[v15];
        v21 = &v8[v15 + 1];
        if (v8 != a2)
        {
          v22 = v19[31];
          if (v18[31] < 0)
          {
            if (v22 >= 0)
            {
              v16 = &a2[v15 + 1];
            }

            else
            {
              v16 = *v20;
            }

            if (v22 >= 0)
            {
              v17 = v19[31];
            }

            else
            {
              v17 = a2[v15 + 2];
            }

            sub_13B38(v21, v16, v17);
          }

          else if (v19[31] < 0)
          {
            sub_13A68(v21, *v20, a2[v15 + 2]);
          }

          else
          {
            v23 = *v20;
            v8[v15 + 3] = a2[v15 + 3];
            *v21 = v23;
          }
        }

        v18[32] = v19[32];
        v15 += 5;
      }

      while (v19 + 40 != v13);
      v12 = a1[1];
    }

    v42 = v12;
    v36 = v12;
    if (v13 != a3)
    {
      v37 = a2 + v14 + 8;
      v36 = v12;
      do
      {
        v40 = v37 - 8;
        *v36 = *(v37 - 8);
        v41 = v36 + 1;
        if (*(v37 + 23) < 0)
        {
          sub_325C(v41, *v37, *(v37 + 8));
          v39 = v42;
        }

        else
        {
          v38 = *v37;
          v36[3] = *(v37 + 16);
          *v41 = v38;
          v39 = v36;
        }

        *(v36 + 32) = *(v37 + 24);
        v36 = v39 + 5;
        v42 = v39 + 5;
        v37 += 40;
      }

      while ((v40 + 40) != a3);
    }

    a1[1] = v36;
  }
}

void sub_595B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_55C6CC(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_595BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_55C6CC(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_595BC8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_146EC(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  sub_595D00((a1 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 5);
  v4 = *(a2 + 71);
  if (*(a1 + 71) < 0)
  {
    if (v4 >= 0)
    {
      v8 = (a2 + 48);
    }

    else
    {
      v8 = *(a2 + 48);
    }

    if (v4 >= 0)
    {
      v9 = *(a2 + 71);
    }

    else
    {
      v9 = *(a2 + 56);
    }

    sub_13B38(a1 + 48, v8, v9);
    v6 = (a2 + 72);
    v7 = *(a2 + 95);
    if (*(a1 + 95) < 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if ((*(a2 + 71) & 0x80) == 0)
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
    v6 = (a2 + 72);
    v7 = *(a2 + 95);
    if (*(a1 + 95) < 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  sub_13A68((a1 + 48), *(a2 + 48), *(a2 + 56));
  v6 = (a2 + 72);
  v7 = *(a2 + 95);
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_13:
    if ((v7 & 0x80) != 0)
    {
      sub_13A68((a1 + 72), *(a2 + 72), *(a2 + 80));
      return a1;
    }

    v10 = *v6;
    *(a1 + 88) = v6[2];
    *(a1 + 72) = v10;
    return a1;
  }

LABEL_17:
  if ((v7 & 0x80u) == 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(a2 + 72);
  }

  if ((v7 & 0x80u) == 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(a2 + 80);
  }

  sub_13B38(a1 + 72, v12, v13);
  return a1;
}

void sub_595D00(uint64_t *a1, const void **a2, const void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 9);
          v10 -= 4;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (!(a4 >> 59))
    {
      v27 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v27 = a4;
      }

      v28 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v29 = 0x7FFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v29 = v27;
      }

      if (!(v29 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (a4 <= (v13 - v8) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v25 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v25 >= 0)
            {
              v23 = v5;
            }

            else
            {
              v23 = *v5;
            }

            if (v25 >= 0)
            {
              v24 = *(v5 + 23);
            }

            else
            {
              v24 = v5[1];
            }

            sub_13B38(v8, v23, v24);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_13A68(v8, *v5, v5[1]);
          }

          else
          {
            v26 = *v5;
            *(v8 + 16) = v5[2];
            *v8 = v26;
          }
        }

        *(v8 + 24) = *(v5 + 24);
        v5 += 4;
        v8 += 32;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v33 = *(v13 - 9);
      v13 -= 4;
      if (v33 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v15 = &v14[a2];
    if (v13 != v8)
    {
      v16 = 0;
      do
      {
        v19 = &v16[v8];
        v20 = &v16[v5];
        if (v5 != v8)
        {
          v21 = *(v20 + 23);
          if (v19[23] < 0)
          {
            if (v21 >= 0)
            {
              v17 = &v16[v5];
            }

            else
            {
              v17 = *&v16[v5];
            }

            if (v21 >= 0)
            {
              v18 = *(v20 + 23);
            }

            else
            {
              v18 = *&v16[v5 + 8];
            }

            sub_13B38(&v16[v8], v17, v18);
          }

          else if ((*(v20 + 23) & 0x80) != 0)
          {
            sub_13A68(&v16[v8], *&v16[v5], *&v16[v5 + 8]);
          }

          else
          {
            v22 = *v20;
            *(v19 + 2) = v20[2];
            *v19 = v22;
          }
        }

        v19[24] = *(v20 + 24);
        v16 += 32;
      }

      while (v14 != v16);
      v13 = a1[1];
    }

    v34 = v13;
    v30 = v13;
    if (v15 != a3)
    {
      v30 = v13;
      do
      {
        if (v15[23] < 0)
        {
          sub_325C(v30, *v15, *(v15 + 1));
          v32 = v34;
        }

        else
        {
          v31 = *v15;
          v30[2] = *(v15 + 2);
          *v30 = v31;
          v32 = v30;
        }

        *(v30 + 24) = v15[24];
        v15 += 32;
        v30 = v32 + 4;
        v34 = v32 + 4;
      }

      while (v15 != a3);
    }

    a1[1] = v30;
  }
}

void sub_596068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_49A814(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_596080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_49A814(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

char *sub_596098(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v6 >> 1;
      if (v6 >> 1 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFCLL;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 62))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 2)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 1);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 1);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 1);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_5961F8(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        v6 = a2[1];
        if (*(a2 + 23) >= 0)
        {
          v7 = *(a2 + 23);
        }

        else
        {
          a2 = *a2;
          v7 = v6;
        }

        sub_13B38(a1, a2, v7);
      }

      else if ((*(a2 + 23) & 0x80) != 0)
      {
        v8 = a2[1];
        v9 = *a2;

        sub_13A68(a1, v9, v8);
      }

      else
      {
        v2 = *a2;
        *(a1 + 16) = a2[2];
        *a1 = v2;
      }
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
      *(a1 + 24) = 0;
    }

    else
    {
      *(a1 + 24) = 0;
    }
  }

  else if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, a2[1]);
    *(a1 + 24) = 1;
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = a2[2];
    *a1 = v3;
    *(a1 + 24) = 1;
  }
}

void **sub_596330(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCF3CF3CF3CF3CF3DLL * ((v7 - *result) >> 3) < a4)
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
          v10 = sub_53A868(v10 - 168);
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

    if (a4 <= 0x186186186186186)
    {
      v12 = 0xCF3CF3CF3CF3CF3DLL * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xC30C30C30C30C3)
      {
        v14 = 0x186186186186186;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x186186186186186)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  if (0xCF3CF3CF3CF3CF3DLL * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_594568(v8, v5);
        v8[40] = *(v5 + 160);
        v5 += 168;
        v8 += 42;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 168;
      result = sub_53A868(v15);
    }

    v6[1] = v8;
  }

  else
  {
    v16 = a2 + v15 - v8;
    if (v15 != v8)
    {
      do
      {
        result = sub_594568(v8, v5);
        v8[40] = *(v5 + 160);
        v5 += 168;
        v8 += 42;
      }

      while (v5 != v16);
      v15 = v6[1];
    }

    v17 = v15;
    if (v16 != a3)
    {
      v18 = 0;
      do
      {
        result = sub_55BD50(v15 + v18, v16 + v18);
        *(v15 + v18 + 160) = *(v16 + v18 + 160);
        v18 += 168;
      }

      while (v16 + v18 != a3);
      v17 = v15 + v18;
    }

    v6[1] = v17;
  }

  return result;
}

void sub_5965CC(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 168;
    v7 = -v4;
    do
    {
      v6 = sub_53A868(v6) - 168;
      v7 += 168;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_5965F8(void ***a1, void **a2, void **a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 9);
          v10 -= 4;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (!(a4 >> 59))
    {
      v30 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v30 = a4;
      }

      v31 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v32 = 0x7FFFFFFFFFFFFFFLL;
      if (!v31)
      {
        v32 = v30;
      }

      if (!(v32 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = (v13 - v8);
  if (a4 <= (v13 - v8) >> 5)
  {
    if (a2 != a3)
    {
      v23 = 0;
      do
      {
        v26 = &v8[v23];
        v27 = &a2[v23];
        if (a2 != v8)
        {
          v28 = *(v27 + 23);
          if (*(v26 + 23) < 0)
          {
            if (v28 >= 0)
            {
              v24 = &a2[v23];
            }

            else
            {
              v24 = a2[v23];
            }

            if (v28 >= 0)
            {
              v25 = *(v27 + 23);
            }

            else
            {
              v25 = a2[v23 + 1];
            }

            sub_13B38(&v8[v23], v24, v25);
          }

          else if ((*(v27 + 23) & 0x80) != 0)
          {
            sub_13A68(&v8[v23], a2[v23], a2[v23 + 1]);
          }

          else
          {
            v29 = *v27;
            v26[2] = v27[2];
            *v26 = v29;
          }
        }

        *(v26 + 12) = *(v27 + 12);
        v23 += 4;
      }

      while (&a2[v23] != a3);
      v13 = a1[1];
      v8 = (v8 + v23 * 8);
    }

    while (v13 != v8)
    {
      v36 = *(v13 - 9);
      v13 -= 4;
      if (v36 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v15 = &v14[a2];
    if (v13 != v8)
    {
      v16 = 0;
      do
      {
        v19 = &v16[v8];
        v20 = &v16[a2];
        if (a2 != v8)
        {
          v21 = v20[23];
          if (*(v19 + 23) < 0)
          {
            if (v21 >= 0)
            {
              v17 = &v16[a2];
            }

            else
            {
              v17 = *&v16[a2];
            }

            if (v21 >= 0)
            {
              v18 = v20[23];
            }

            else
            {
              v18 = *&v16[a2 + 8];
            }

            sub_13B38(&v16[v8], v17, v18);
          }

          else if (v20[23] < 0)
          {
            sub_13A68(&v16[v8], *&v16[a2], *&v16[a2 + 8]);
          }

          else
          {
            v22 = *v20;
            v19[2] = *(v20 + 2);
            *v19 = v22;
          }
        }

        *(v19 + 12) = *(v20 + 12);
        v16 += 32;
      }

      while (v14 != v16);
      v13 = a1[1];
    }

    v37 = v13;
    v33 = v13;
    if (v15 != a3)
    {
      v33 = v13;
      do
      {
        if (v15[23] < 0)
        {
          sub_325C(v33, *v15, *(v15 + 1));
          v35 = v37;
        }

        else
        {
          v34 = *v15;
          v33[2] = *(v15 + 2);
          *v33 = v34;
          v35 = v33;
        }

        *(v33 + 12) = *(v15 + 12);
        v15 += 32;
        v33 = v35 + 4;
        v37 = v35 + 4;
      }

      while (v15 != a3);
    }

    a1[1] = v33;
  }
}

void sub_596974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_49A814(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_59698C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_49A814(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_5969A8(void *a1)
{
  *a1 = off_266B5F0;
  sub_596A0C((a1 + 1));

  operator delete();
}

uint64_t sub_596A0C(uint64_t a1)
{
  *a1 = off_266B680;
  if (*(a1 + 2511) < 0)
  {
    operator delete(*(a1 + 2488));
    if ((*(a1 + 2479) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 2455) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a1 + 2479) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 2456));
  if ((*(a1 + 2455) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 2415) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(*(a1 + 2432));
  if ((*(a1 + 2415) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 2383) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*(a1 + 2392));
  if ((*(a1 + 2383) & 0x80000000) == 0)
  {
LABEL_6:
    v2 = *(a1 + 2336);
    if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_26:
  operator delete(*(a1 + 2360));
  v2 = *(a1 + 2336);
  if (v2)
  {
LABEL_7:
    *(a1 + 2344) = v2;
    operator delete(v2);
  }

LABEL_8:
  sub_5940E0((a1 + 2136));
  v3 = *(a1 + 2080);
  if (v3)
  {
    *(a1 + 2088) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 2056);
  if (v4)
  {
    *(a1 + 2064) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 2032);
  if (v5)
  {
    *(a1 + 2040) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 1848);
  if (v6)
  {
    *(a1 + 1856) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 1824);
  if (v7)
  {
    *(a1 + 1832) = v7;
    operator delete(v7);
  }

  if ((*(a1 + 1743) & 0x80000000) == 0)
  {
    if ((*(a1 + 1711) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_29:
    operator delete(*(a1 + 1688));
    v8 = *(a1 + 1672);
    if (v8 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  operator delete(*(a1 + 1720));
  if (*(a1 + 1711) < 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  v8 = *(a1 + 1672);
  if (v8 != -1)
  {
LABEL_30:
    (off_266B5B8[v8])(&v25, a1 + 1640);
  }

LABEL_31:
  *(a1 + 1672) = -1;
  sub_53A868(a1 + 1480);
  v9 = *(a1 + 1448);
  if (v9)
  {
    *(a1 + 1456) = v9;
    operator delete(v9);
  }

  sub_44FDEC(a1 + 1008);
  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  sub_593FC8((a1 + 960));
  sub_593FC8((a1 + 936));
  sub_593FC8((a1 + 912));
  if (*(a1 + 911) < 0)
  {
    operator delete(*(a1 + 888));
    if ((*(a1 + 879) & 0x80000000) == 0)
    {
LABEL_37:
      if ((*(a1 + 855) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_87;
    }
  }

  else if ((*(a1 + 879) & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  operator delete(*(a1 + 856));
  if ((*(a1 + 855) & 0x80000000) == 0)
  {
LABEL_38:
    if ((*(a1 + 815) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  operator delete(*(a1 + 832));
  if ((*(a1 + 815) & 0x80000000) == 0)
  {
LABEL_39:
    if ((*(a1 + 783) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_89;
  }

LABEL_88:
  operator delete(*(a1 + 792));
  if ((*(a1 + 783) & 0x80000000) == 0)
  {
LABEL_40:
    if ((*(a1 + 759) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_90;
  }

LABEL_89:
  operator delete(*(a1 + 760));
  if ((*(a1 + 759) & 0x80000000) == 0)
  {
LABEL_41:
    if ((*(a1 + 727) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_91;
  }

LABEL_90:
  operator delete(*(a1 + 736));
  if ((*(a1 + 727) & 0x80000000) == 0)
  {
LABEL_42:
    if ((*(a1 + 703) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_92;
  }

LABEL_91:
  operator delete(*(a1 + 704));
  if ((*(a1 + 703) & 0x80000000) == 0)
  {
LABEL_43:
    if ((*(a1 + 663) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_93;
  }

LABEL_92:
  operator delete(*(a1 + 680));
  if ((*(a1 + 663) & 0x80000000) == 0)
  {
LABEL_44:
    if ((*(a1 + 631) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_94;
  }

LABEL_93:
  operator delete(*(a1 + 640));
  if ((*(a1 + 631) & 0x80000000) == 0)
  {
LABEL_45:
    if ((*(a1 + 607) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_95;
  }

LABEL_94:
  operator delete(*(a1 + 608));
  if ((*(a1 + 607) & 0x80000000) == 0)
  {
LABEL_46:
    if ((*(a1 + 575) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_96;
  }

LABEL_95:
  operator delete(*(a1 + 584));
  if ((*(a1 + 575) & 0x80000000) == 0)
  {
LABEL_47:
    if ((*(a1 + 551) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_97;
  }

LABEL_96:
  operator delete(*(a1 + 552));
  if ((*(a1 + 551) & 0x80000000) == 0)
  {
LABEL_48:
    if ((*(a1 + 511) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_98;
  }

LABEL_97:
  operator delete(*(a1 + 528));
  if ((*(a1 + 511) & 0x80000000) == 0)
  {
LABEL_49:
    if ((*(a1 + 479) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_99;
  }

LABEL_98:
  operator delete(*(a1 + 488));
  if ((*(a1 + 479) & 0x80000000) == 0)
  {
LABEL_50:
    if ((*(a1 + 455) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_100;
  }

LABEL_99:
  operator delete(*(a1 + 456));
  if ((*(a1 + 455) & 0x80000000) == 0)
  {
LABEL_51:
    if ((*(a1 + 423) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_101;
  }

LABEL_100:
  operator delete(*(a1 + 432));
  if ((*(a1 + 423) & 0x80000000) == 0)
  {
LABEL_52:
    if ((*(a1 + 399) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_102;
  }

LABEL_101:
  operator delete(*(a1 + 400));
  if ((*(a1 + 399) & 0x80000000) == 0)
  {
LABEL_53:
    if ((*(a1 + 359) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_103;
  }

LABEL_102:
  operator delete(*(a1 + 376));
  if ((*(a1 + 359) & 0x80000000) == 0)
  {
LABEL_54:
    if ((*(a1 + 327) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_104;
  }

LABEL_103:
  operator delete(*(a1 + 336));
  if ((*(a1 + 327) & 0x80000000) == 0)
  {
LABEL_55:
    if ((*(a1 + 303) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_105;
  }

LABEL_104:
  operator delete(*(a1 + 304));
  if ((*(a1 + 303) & 0x80000000) == 0)
  {
LABEL_56:
    if ((*(a1 + 271) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_106;
  }

LABEL_105:
  operator delete(*(a1 + 280));
  if ((*(a1 + 271) & 0x80000000) == 0)
  {
LABEL_57:
    if ((*(a1 + 247) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_107;
  }

LABEL_106:
  operator delete(*(a1 + 248));
  if ((*(a1 + 247) & 0x80000000) == 0)
  {
LABEL_58:
    if ((*(a1 + 207) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_108;
  }

LABEL_107:
  operator delete(*(a1 + 224));
  if ((*(a1 + 207) & 0x80000000) == 0)
  {
LABEL_59:
    if ((*(a1 + 175) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

LABEL_109:
    operator delete(*(a1 + 152));
    v10 = *(a1 + 120);
    if (!v10)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_108:
  operator delete(*(a1 + 184));
  if (*(a1 + 175) < 0)
  {
    goto LABEL_109;
  }

LABEL_60:
  v10 = *(a1 + 120);
  if (!v10)
  {
    goto LABEL_62;
  }

  do
  {
LABEL_61:
    v11 = *v10;
    sub_55F7FC((v10 + 2));
    operator delete(v10);
    v10 = v11;
  }

  while (v11);
LABEL_62:
  v12 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = *(a1 + 88);
    v15 = *(a1 + 80);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = *(a1 + 80);
    }

    *(a1 + 88) = v13;
    operator delete(v15);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    do
    {
      v18 = *v17;
      sub_55F7FC((v17 + 2));
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(a1 + 8);
  if (v20)
  {
    v21 = *(a1 + 16);
    v22 = *(a1 + 8);
    if (v21 != v20)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = *(a1 + 8);
    }

    *(a1 + 16) = v20;
    operator delete(v22);
  }

  return a1;
}

void sub_596F44(uint64_t a1)
{
  sub_596A0C(a1);

  operator delete();
}

uint64_t sub_596F7C(uint64_t a1)
{
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 96));
    v2 = *(a1 + 80);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 128));
  if (*(a1 + 119) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 80);
  if (v2 != -1)
  {
LABEL_7:
    (off_266B5B8[v2])(&v4, a1 + 48);
  }

LABEL_8:
  *(a1 + 80) = -1;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

void sub_597050(void *a1)
{
  *a1 = off_266B730;
  sub_5970B4((a1 + 1));

  operator delete();
}

uint64_t sub_5970B4(uint64_t a1)
{
  *a1 = off_266B7C0;
  if (*(a1 + 2511) < 0)
  {
    operator delete(*(a1 + 2488));
    if ((*(a1 + 2479) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 2455) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a1 + 2479) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 2456));
  if ((*(a1 + 2455) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 2415) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(*(a1 + 2432));
  if ((*(a1 + 2415) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 2383) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*(a1 + 2392));
  if ((*(a1 + 2383) & 0x80000000) == 0)
  {
LABEL_6:
    v2 = *(a1 + 2336);
    if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_26:
  operator delete(*(a1 + 2360));
  v2 = *(a1 + 2336);
  if (v2)
  {
LABEL_7:
    *(a1 + 2344) = v2;
    operator delete(v2);
  }

LABEL_8:
  sub_5940E0((a1 + 2136));
  v3 = *(a1 + 2080);
  if (v3)
  {
    *(a1 + 2088) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 2056);
  if (v4)
  {
    *(a1 + 2064) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 2032);
  if (v5)
  {
    *(a1 + 2040) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 1848);
  if (v6)
  {
    *(a1 + 1856) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 1824);
  if (v7)
  {
    *(a1 + 1832) = v7;
    operator delete(v7);
  }

  if ((*(a1 + 1743) & 0x80000000) == 0)
  {
    if ((*(a1 + 1711) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_29:
    operator delete(*(a1 + 1688));
    v8 = *(a1 + 1672);
    if (v8 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  operator delete(*(a1 + 1720));
  if (*(a1 + 1711) < 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  v8 = *(a1 + 1672);
  if (v8 != -1)
  {
LABEL_30:
    (off_266B5B8[v8])(&v25, a1 + 1640);
  }

LABEL_31:
  *(a1 + 1672) = -1;
  sub_53A868(a1 + 1480);
  v9 = *(a1 + 1448);
  if (v9)
  {
    *(a1 + 1456) = v9;
    operator delete(v9);
  }

  sub_44FDEC(a1 + 1008);
  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  sub_593FC8((a1 + 960));
  sub_593FC8((a1 + 936));
  sub_593FC8((a1 + 912));
  if (*(a1 + 911) < 0)
  {
    operator delete(*(a1 + 888));
    if ((*(a1 + 879) & 0x80000000) == 0)
    {
LABEL_37:
      if ((*(a1 + 855) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_87;
    }
  }

  else if ((*(a1 + 879) & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  operator delete(*(a1 + 856));
  if ((*(a1 + 855) & 0x80000000) == 0)
  {
LABEL_38:
    if ((*(a1 + 815) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  operator delete(*(a1 + 832));
  if ((*(a1 + 815) & 0x80000000) == 0)
  {
LABEL_39:
    if ((*(a1 + 783) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_89;
  }

LABEL_88:
  operator delete(*(a1 + 792));
  if ((*(a1 + 783) & 0x80000000) == 0)
  {
LABEL_40:
    if ((*(a1 + 759) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_90;
  }

LABEL_89:
  operator delete(*(a1 + 760));
  if ((*(a1 + 759) & 0x80000000) == 0)
  {
LABEL_41:
    if ((*(a1 + 727) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_91;
  }

LABEL_90:
  operator delete(*(a1 + 736));
  if ((*(a1 + 727) & 0x80000000) == 0)
  {
LABEL_42:
    if ((*(a1 + 703) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_92;
  }

LABEL_91:
  operator delete(*(a1 + 704));
  if ((*(a1 + 703) & 0x80000000) == 0)
  {
LABEL_43:
    if ((*(a1 + 663) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_93;
  }

LABEL_92:
  operator delete(*(a1 + 680));
  if ((*(a1 + 663) & 0x80000000) == 0)
  {
LABEL_44:
    if ((*(a1 + 631) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_94;
  }

LABEL_93:
  operator delete(*(a1 + 640));
  if ((*(a1 + 631) & 0x80000000) == 0)
  {
LABEL_45:
    if ((*(a1 + 607) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_95;
  }

LABEL_94:
  operator delete(*(a1 + 608));
  if ((*(a1 + 607) & 0x80000000) == 0)
  {
LABEL_46:
    if ((*(a1 + 575) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_96;
  }

LABEL_95:
  operator delete(*(a1 + 584));
  if ((*(a1 + 575) & 0x80000000) == 0)
  {
LABEL_47:
    if ((*(a1 + 551) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_97;
  }

LABEL_96:
  operator delete(*(a1 + 552));
  if ((*(a1 + 551) & 0x80000000) == 0)
  {
LABEL_48:
    if ((*(a1 + 511) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_98;
  }

LABEL_97:
  operator delete(*(a1 + 528));
  if ((*(a1 + 511) & 0x80000000) == 0)
  {
LABEL_49:
    if ((*(a1 + 479) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_99;
  }

LABEL_98:
  operator delete(*(a1 + 488));
  if ((*(a1 + 479) & 0x80000000) == 0)
  {
LABEL_50:
    if ((*(a1 + 455) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_100;
  }

LABEL_99:
  operator delete(*(a1 + 456));
  if ((*(a1 + 455) & 0x80000000) == 0)
  {
LABEL_51:
    if ((*(a1 + 423) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_101;
  }

LABEL_100:
  operator delete(*(a1 + 432));
  if ((*(a1 + 423) & 0x80000000) == 0)
  {
LABEL_52:
    if ((*(a1 + 399) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_102;
  }

LABEL_101:
  operator delete(*(a1 + 400));
  if ((*(a1 + 399) & 0x80000000) == 0)
  {
LABEL_53:
    if ((*(a1 + 359) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_103;
  }

LABEL_102:
  operator delete(*(a1 + 376));
  if ((*(a1 + 359) & 0x80000000) == 0)
  {
LABEL_54:
    if ((*(a1 + 327) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_104;
  }

LABEL_103:
  operator delete(*(a1 + 336));
  if ((*(a1 + 327) & 0x80000000) == 0)
  {
LABEL_55:
    if ((*(a1 + 303) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_105;
  }

LABEL_104:
  operator delete(*(a1 + 304));
  if ((*(a1 + 303) & 0x80000000) == 0)
  {
LABEL_56:
    if ((*(a1 + 271) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_106;
  }

LABEL_105:
  operator delete(*(a1 + 280));
  if ((*(a1 + 271) & 0x80000000) == 0)
  {
LABEL_57:
    if ((*(a1 + 247) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_107;
  }

LABEL_106:
  operator delete(*(a1 + 248));
  if ((*(a1 + 247) & 0x80000000) == 0)
  {
LABEL_58:
    if ((*(a1 + 207) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_108;
  }

LABEL_107:
  operator delete(*(a1 + 224));
  if ((*(a1 + 207) & 0x80000000) == 0)
  {
LABEL_59:
    if ((*(a1 + 175) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

LABEL_109:
    operator delete(*(a1 + 152));
    v10 = *(a1 + 120);
    if (!v10)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_108:
  operator delete(*(a1 + 184));
  if (*(a1 + 175) < 0)
  {
    goto LABEL_109;
  }

LABEL_60:
  v10 = *(a1 + 120);
  if (!v10)
  {
    goto LABEL_62;
  }

  do
  {
LABEL_61:
    v11 = *v10;
    sub_55F7FC((v10 + 2));
    operator delete(v10);
    v10 = v11;
  }

  while (v11);
LABEL_62:
  v12 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = *(a1 + 88);
    v15 = *(a1 + 80);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = *(a1 + 80);
    }

    *(a1 + 88) = v13;
    operator delete(v15);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    do
    {
      v18 = *v17;
      sub_55F7FC((v17 + 2));
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(a1 + 8);
  if (v20)
  {
    v21 = *(a1 + 16);
    v22 = *(a1 + 8);
    if (v21 != v20)
    {
      do
      {
        v23 = *(v21 - 1);
        v21 -= 3;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = *(a1 + 8);
    }

    *(a1 + 16) = v20;
    operator delete(v22);
  }

  return a1;
}

void sub_5975EC(uint64_t a1)
{
  sub_5970B4(a1);

  operator delete();
}

uint64_t sub_597624(uint64_t a1)
{
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 96));
    v2 = *(a1 + 80);
    if (v2 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 128));
  if (*(a1 + 119) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 80);
  if (v2 != -1)
  {
LABEL_7:
    (off_266B5B8[v2])(&v4, a1 + 48);
  }

LABEL_8:
  *(a1 + 80) = -1;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t sub_5976F4(uint64_t a1)
{
  *a1 = off_266B398;
  if (*(a1 + 13767) < 0)
  {
    operator delete(*(a1 + 13744));
  }

  v2 = *(a1 + 13712);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 13696);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_7E9150(a1 + 9456);
  v4 = *(a1 + 9448);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  sub_559B98(a1 + 6736);
  sub_528AB4(a1 + 5144);
  if (*(a1 + 4951) < 0)
  {
    operator delete(*(a1 + 4928));
    if ((*(a1 + 2383) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 2383) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 2360));
  return a1;
}

uint64_t sub_59788C(uint64_t a1)
{
  *a1 = off_266B3D8;
  if (*(a1 + 13767) < 0)
  {
    operator delete(*(a1 + 13744));
  }

  v2 = *(a1 + 13712);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 13696);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_7E9150(a1 + 9456);
  v4 = *(a1 + 9448);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  sub_559B98(a1 + 6736);
  sub_528AB4(a1 + 5144);
  if (*(a1 + 4951) < 0)
  {
    operator delete(*(a1 + 4928));
    if ((*(a1 + 2383) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 2383) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 2360));
  return a1;
}

uint64_t sub_597A24(uint64_t a1)
{
  *a1 = off_266B418;
  if (*(a1 + 13767) < 0)
  {
    operator delete(*(a1 + 13744));
  }

  v2 = *(a1 + 13712);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 13696);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_7E9150(a1 + 9456);
  v4 = *(a1 + 9448);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  sub_559B98(a1 + 6736);
  sub_528AB4(a1 + 5144);
  if (*(a1 + 4951) < 0)
  {
    operator delete(*(a1 + 4928));
    if ((*(a1 + 2383) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 2383) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 2360));
  return a1;
}

void *sub_597BBC(void *a1, __int128 **a2)
{
  v4 = 3735928559;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      if (*(v5 + 23) < 0)
      {
        sub_325C(__p, *v5, *(v5 + 1));
      }

      else
      {
        v7 = *v5;
        v41 = *(v5 + 2);
        *__p = v7;
      }

      if (v41 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if (v41 >= 0)
      {
        v9 = HIBYTE(v41);
      }

      else
      {
        v9 = __p[1];
      }

      v10 = sub_AAD8(&v42, v8, v9);
      if (SHIBYTE(v41) < 0)
      {
        v11 = v10;
        operator delete(__p[0]);
        v10 = v11;
      }

      v4 ^= (v4 << 6) + (v4 >> 2) + 2654435769u + v10;
      v5 = (v5 + 24);
    }

    while (v5 != v6);
  }

  v12 = a1[1];
  if (!*&v12)
  {
    goto LABEL_69;
  }

  v13 = vcnt_s8(v12);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    v14 = v4;
    if (v4 >= *&v12)
    {
      v14 = v4 % *&v12;
    }
  }

  else
  {
    v14 = (*&v12 - 1) & v4;
  }

  v15 = *(*a1 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_69:
    operator new();
  }

  v39 = *a2;
  v17 = a2[1] - *a2;
  if (v13.u32[0] < 2uLL)
  {
    while (1)
    {
      v28 = v16[1];
      if (v28 == v4)
      {
        v29 = v16[2];
        v30 = v16[3];
        if (v30 - v29 == v17)
        {
          if (v29 == v30)
          {
            return v16;
          }

          for (i = v39; ; i = (i + 24))
          {
            v32 = *(v29 + 23);
            if (v32 >= 0)
            {
              v33 = *(v29 + 23);
            }

            else
            {
              v33 = *(v29 + 8);
            }

            v34 = *(i + 23);
            v35 = v34;
            if ((v34 & 0x80u) != 0)
            {
              v34 = *(i + 1);
            }

            if (v33 != v34)
            {
              break;
            }

            v36 = v32 >= 0 ? v29 : *v29;
            v37 = v35 >= 0 ? i : *i;
            if (memcmp(v36, v37, v33))
            {
              break;
            }

            v29 += 24;
            if (v29 == v30)
            {
              return v16;
            }
          }
        }
      }

      else if ((v28 & (*&v12 - 1)) != v14)
      {
        goto LABEL_69;
      }

      v16 = *v16;
      if (!v16)
      {
        goto LABEL_69;
      }
    }
  }

  while (1)
  {
    v18 = v16[1];
    if (v18 == v4)
    {
      break;
    }

    if (v18 >= *&v12)
    {
      v18 %= *&v12;
    }

    if (v18 != v14)
    {
      goto LABEL_69;
    }

LABEL_26:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_69;
    }
  }

  v19 = v16[2];
  v20 = v16[3];
  if (v20 - v19 != v17)
  {
    goto LABEL_26;
  }

  if (v19 != v20)
  {
    for (j = v39; ; j = (j + 24))
    {
      v22 = *(v19 + 23);
      if (v22 >= 0)
      {
        v23 = *(v19 + 23);
      }

      else
      {
        v23 = *(v19 + 8);
      }

      v24 = *(j + 23);
      v25 = v24;
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(j + 1);
      }

      if (v23 != v24)
      {
        break;
      }

      v26 = v22 >= 0 ? v19 : *v19;
      v27 = v25 >= 0 ? j : *j;
      if (memcmp(v26, v27, v23))
      {
        break;
      }

      v19 += 24;
      if (v19 == v20)
      {
        return v16;
      }
    }

    goto LABEL_26;
  }

  return v16;
}

void sub_5980B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5980DC(va);
  _Unwind_Resume(a1);
}

void sub_5980C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5980DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5980DC(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[2];
      if (v3)
      {
        v4 = v1[3];
        v5 = v1[2];
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 1);
            v4 -= 3;
            if (v6 < 0)
            {
              operator delete(*v4);
            }
          }

          while (v4 != v3);
          v5 = v1[2];
        }

        v1[3] = v3;
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t **sub_598170(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t *a4, uint64_t a5, void **a6)
{
  if (a1 != a2)
  {
    v11 = a1;
    do
    {
      if ((**a6 >> *v11))
      {
        if (*(v11 + 47) < 0)
        {
          sub_325C(__p, *(v11 + 24), *(v11 + 32));
        }

        else
        {
          *__p = *(v11 + 24);
          v16 = *(v11 + 40);
        }

        v12 = *sub_598318(a3, a4, &v18, &v17, __p);
        if (!v12)
        {
          operator new();
        }

        v13 = *(v12 + 8);
        if (v13)
        {
          do
          {
            a4 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            a4 = *(v12 + 16);
            v14 = *a4 == v12;
            v12 = a4;
          }

          while (!v14);
        }

        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v11 += 48;
    }

    while (v11 != a2);
  }

  return a3;
}

void sub_5982FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_598318(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_23;
  }

  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a2 + 55);
  if (v13 >= 0)
  {
    v14 = a2 + 4;
  }

  else
  {
    v14 = a2[4];
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 55);
  }

  else
  {
    v15 = a2[5];
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (!v17)
  {
    if (v12 >= v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
    }

    else
    {
      if (v19)
      {
        v20 = *a2;
        do
        {
          v21 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        v22 = a2;
        do
        {
          v21 = v22[2];
          v23 = *v21 == v22;
          v22 = v21;
        }

        while (v23);
      }

      v24 = *(v21 + 55);
      if (v24 >= 0)
      {
        v25 = v21 + 4;
      }

      else
      {
        v25 = v21[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v21 + 55);
      }

      else
      {
        v26 = v21[5];
      }

      v27 = *(a5 + 23);
      if (v27 >= 0)
      {
        v28 = a5;
      }

      else
      {
        v28 = *a5;
      }

      if (v27 >= 0)
      {
        v29 = *(a5 + 23);
      }

      else
      {
        v29 = a5[1];
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v26 >= v29)
      {
LABEL_48:
        v32 = *v8;
        if (!*v8)
        {
          v33 = v8;
LABEL_69:
          *a3 = v33;
          return v8;
        }

        while (1)
        {
          v33 = v32;
          v36 = v32[4];
          v34 = v32 + 4;
          v35 = v36;
          v37 = *(v34 + 23);
          if (v37 >= 0)
          {
            v38 = v34;
          }

          else
          {
            v38 = v35;
          }

          if (v37 >= 0)
          {
            v39 = *(v34 + 23);
          }

          else
          {
            v39 = v34[1];
          }

          if (v39 >= v29)
          {
            v40 = v29;
          }

          else
          {
            v40 = v39;
          }

          v41 = memcmp(v28, v38, v40);
          if (v41)
          {
            if (v41 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            v42 = memcmp(v38, v28, v40);
            if (v42)
            {
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_69;
              }
            }

            else if (v39 >= v29)
            {
              goto LABEL_69;
            }

            v8 = v33 + 1;
            v32 = v33[1];
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v29 >= v39)
            {
              goto LABEL_64;
            }

LABEL_50:
            v32 = *v33;
            v8 = v33;
            if (!*v33)
            {
              goto LABEL_69;
            }
          }
        }
      }
    }

    if (v19)
    {
      *a3 = v21;
      return v21 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v17 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = memcmp(v14, v11, v16);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
LABEL_21:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }
  }

  else if (v15 >= v12)
  {
    goto LABEL_21;
  }

  v43 = a2[1];
  if (v43)
  {
    v44 = a2[1];
    do
    {
      a4 = v44;
      v44 = *v44;
    }

    while (v44);
  }

  else
  {
    v45 = a2;
    do
    {
      a4 = v45[2];
      v23 = *a4 == v45;
      v45 = a4;
    }

    while (!v23);
  }

  if (a4 != v8)
  {
    v46 = *(a4 + 55);
    if (v46 >= 0)
    {
      v47 = (a4 + 4);
    }

    else
    {
      v47 = a4[4];
    }

    if (v46 >= 0)
    {
      v48 = *(a4 + 55);
    }

    else
    {
      v48 = a4[5];
    }

    if (v48 >= v12)
    {
      v49 = v12;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v11, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v12 >= v48)
    {
LABEL_95:
      v51 = *v8;
      if (!*v8)
      {
        v52 = v8;
LABEL_116:
        *a3 = v52;
        return v8;
      }

      while (1)
      {
        v52 = v51;
        v55 = v51[4];
        v53 = v51 + 4;
        v54 = v55;
        v56 = *(v53 + 23);
        if (v56 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = v54;
        }

        if (v56 >= 0)
        {
          v58 = *(v53 + 23);
        }

        else
        {
          v58 = v53[1];
        }

        if (v58 >= v12)
        {
          v59 = v12;
        }

        else
        {
          v59 = v58;
        }

        v60 = memcmp(v11, v57, v59);
        if (v60)
        {
          if (v60 < 0)
          {
            goto LABEL_97;
          }

LABEL_111:
          v61 = memcmp(v57, v11, v59);
          if (v61)
          {
            if ((v61 & 0x80000000) == 0)
            {
              goto LABEL_116;
            }
          }

          else if (v58 >= v12)
          {
            goto LABEL_116;
          }

          v8 = v52 + 1;
          v51 = v52[1];
          if (!v51)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v12 >= v58)
          {
            goto LABEL_111;
          }

LABEL_97:
          v51 = *v52;
          v8 = v52;
          if (!*v52)
          {
            goto LABEL_116;
          }
        }
      }
    }
  }

  if (v43)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t **sub_5986BC(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t *a4, uint64_t a5, void **a6)
{
  if (a1 != a2)
  {
    v11 = a1;
    do
    {
      if ((**a6 >> *v11))
      {
        if (*(v11 + 47) < 0)
        {
          sub_325C(__p, *(v11 + 24), *(v11 + 32));
        }

        else
        {
          *__p = *(v11 + 24);
          v16 = *(v11 + 40);
        }

        v12 = *sub_598318(a3, a4, &v18, &v17, __p);
        if (!v12)
        {
          operator new();
        }

        v13 = *(v12 + 8);
        if (v13)
        {
          do
          {
            a4 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            a4 = *(v12 + 16);
            v14 = *a4 == v12;
            v12 = a4;
          }

          while (!v14);
        }

        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v11 += 48;
    }

    while (v11 != a2);
  }

  return a3;
}

void sub_598848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_598864(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t *a4, uint64_t a5, void **a6)
{
  if (a1 != a2)
  {
    v11 = a1;
    do
    {
      if ((**a6 >> *v11))
      {
        if (*(v11 + 47) < 0)
        {
          sub_325C(__p, *(v11 + 24), *(v11 + 32));
        }

        else
        {
          *__p = *(v11 + 24);
          v16 = *(v11 + 40);
        }

        v12 = *sub_598318(a3, a4, &v18, &v17, __p);
        if (!v12)
        {
          operator new();
        }

        v13 = *(v12 + 8);
        if (v13)
        {
          do
          {
            a4 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            a4 = *(v12 + 16);
            v14 = *a4 == v12;
            v12 = a4;
          }

          while (!v14);
        }

        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v11 += 48;
    }

    while (v11 != a2);
  }

  return a3;
}

void sub_5989F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_598A0C()
{
  byte_2794947 = 3;
  LODWORD(qword_2794930) = 5136193;
  byte_279495F = 3;
  LODWORD(qword_2794948) = 5136194;
  byte_2794977 = 3;
  LODWORD(qword_2794960) = 5136195;
  byte_279498F = 15;
  strcpy(&qword_2794978, "vehicle_mass_kg");
  byte_27949A7 = 21;
  strcpy(&xmmword_2794990, "vehicle_cargo_mass_kg");
  byte_27949BF = 19;
  strcpy(&qword_27949A8, "vehicle_aux_power_w");
  byte_27949D7 = 15;
  strcpy(&qword_27949C0, "dcdc_efficiency");
  strcpy(&qword_27949D8, "drive_train_efficiency");
  HIBYTE(word_27949EE) = 22;
  operator new();
}

void sub_59BDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, _Unwind_Exception *exception_object)
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
LABEL_29:
      operator delete(STACK[0x258]);
      if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_37;
    }

LABEL_36:
    if ((SLOBYTE(STACK[0x257]) & 0x80000000) == 0)
    {
LABEL_30:
      if (SLOBYTE(STACK[0x23F]) < 0)
      {
        goto LABEL_31;
      }

      goto LABEL_38;
    }

LABEL_37:
    operator delete(STACK[0x240]);
    if (SLOBYTE(STACK[0x23F]) < 0)
    {
LABEL_31:
      operator delete(STACK[0x228]);
      if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_39;
    }

LABEL_38:
    if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
    {
LABEL_32:
      if (SLOBYTE(STACK[0x20F]) < 0)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    }

LABEL_39:
    operator delete(STACK[0x210]);
    if (SLOBYTE(STACK[0x20F]) < 0)
    {
LABEL_33:
      operator delete(a75);
      if ((a74 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_41;
    }

LABEL_40:
    if ((a74 & 0x80000000) == 0)
    {
LABEL_34:
      if ((a72 & 0x80000000) == 0)
      {
LABEL_43:
        if (a68 < 0)
        {
          operator delete(exception_object);
        }

        _Unwind_Resume(a1);
      }

LABEL_42:
      operator delete(a69);
      goto LABEL_43;
    }

LABEL_41:
    operator delete(a73);
    if ((a72 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_28:
  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    goto LABEL_29;
  }

  goto LABEL_36;
}