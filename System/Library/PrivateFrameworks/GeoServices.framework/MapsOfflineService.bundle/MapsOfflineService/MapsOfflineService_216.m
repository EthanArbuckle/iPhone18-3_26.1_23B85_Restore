void sub_CD124C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_CD5744(&a25);
  sub_CD15B8(v30);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_CD139C(void *a1, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4));
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

  return *a1 + 176 * a2;
}

void sub_CD14D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_CD15B8(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_CD5434((a1 + 8));
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

void sub_CD1654()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  sub_7E9A4(v83);
  v3 = sub_E7A5E0(v0[2]);
  v80 = sub_EA7118(v3);
  sub_3B681C(*v0, v81);
  v4 = *(sub_3B6890(*v0) + 4);
  __t[0] = std::chrono::system_clock::now();
  v5 = std::chrono::system_clock::to_time_t(__t);
  v6 = sub_E7A3D0(v0[2]);
  *v2 = 1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0u;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 424) = 0u;
  v79 = v2 + 8;
  sub_12C408C(v2 + 8, 0, 0);
  *(v2 + 420) = 0;
  *(v2 + 412) = 0;
  *(v2 + 404) = 0;
  *(v2 + 424) = 0;
  *(v2 + 431) = 0;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0u;
  *(v2 + 385) = 0u;
  if (v0[13])
  {
    v7 = 1;
  }

  else
  {
    if (*v0[5] != v0[5][1])
    {
      operator new();
    }

    v7 = 0;
  }

  v8 = *(v2 + 24);
  *(v2 + 257) = v7 & 1;
  *(v2 + 24) = v8 | 0x42;
  v9 = *(v2 + 224);
  if (!v9)
  {
    v10 = *(v2 + 16);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v9 = sub_12E1948(v11);
    *(v2 + 224) = v9;
  }

  v12 = *(v9 + 4);
  *(v9 + 9) = v4;
  *(v9 + 10) = v5;
  *(v9 + 44) = *(v0 + 104);
  *(v9 + 8) = 1;
  *(v9 + 4) = v12 | 0x1F;
  v13 = v9[3];
  if (v13)
  {
    *(v13 + 4) |= 1u;
    v14 = v13[3];
    if (v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v52 = v9[1];
    v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
    if (v52)
    {
      v53 = *v53;
    }

    v13 = sub_12E19C8(v53);
    v9[3] = v13;
    *(v13 + 4) |= 1u;
    v14 = v13[3];
    if (v14)
    {
LABEL_12:
      *(v14 + 16) |= 1u;
      v15 = *(v14 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_55;
    }
  }

  v54 = v13[1];
  v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
  if (v54)
  {
    v55 = *v55;
  }

  v14 = sub_12E1A44(v55);
  v13[3] = v14;
  *(v14 + 16) |= 1u;
  v56 = *(v14 + 8);
  v16 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
  if (v56)
  {
LABEL_55:
    v16 = *v16;
  }

LABEL_13:
  sub_194EA1C((v14 + 120), v81, v16);
  v17 = *(v14 + 16);
  *(v14 + 16) = v17 | 0x10;
  *(v14 + 152) = v80;
  v18 = v0[2];
  if ((v18[5] & 0x40) != 0)
  {
    v19 = v18[43];
    *(v14 + 16) = v17 | 0x12;
    v20 = *(v14 + 128);
    if (!v20)
    {
      v21 = *(v14 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_16F5BD8(v22);
      *(v14 + 128) = v20;
      v19 = v0[2][43];
    }

    if (v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = &off_277E738;
    }

    sub_16E8FA0(v20, v23);
  }

  if (v80)
  {
    if ((v0[2][5] & 0x40) != 0)
    {
      v24 = *v0[5];
      if (v0[5][1] - v24 == 24 && *v24 != v24[1] && !sub_4C49D0(v0[3]))
      {
        v25 = sub_3B6890(*v0);
        sub_3FAC54(__t, (v0 + 21), v25, v0[4], v0[3], **v0[5], *v0[6], v0[18], *v0);
      }
    }
  }

  v26 = v0[7];
  if (v26)
  {
    v28 = *v26;
    v27 = v26[1];
    if (*v26 != v27)
    {
      do
      {
        sub_64E090(v79, v28);
        v28 = (v28 + 24);
      }

      while (v28 != v27);
    }
  }

  *(v2 + 24) |= 4u;
  v29 = *(v2 + 232);
  if (!v29)
  {
    v30 = *(v2 + 16);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    v29 = sub_12D0DA4(v31);
    *(v2 + 232) = v29;
  }

  v32 = sub_3AF114(*v0);
  v33 = sub_73EBC(*v32);
  v34 = sub_420344(v33);
  *(v29 + 4) |= 2u;
  v29[4] = v34;
  *(v2 + 24) |= 4u;
  v35 = *(v2 + 232);
  if (!v35)
  {
    v36 = *(v2 + 16);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_12D0DA4(v37);
    *(v2 + 232) = v35;
  }

  v38 = sub_3AF144(*v0);
  v39 = sub_2BC534(v38);
  *(v35 + 4) |= 1u;
  v40 = v35[1];
  v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
  if (v40)
  {
    v41 = *v41;
  }

  sub_194EA1C(v35 + 3, v39, v41);
  v42 = *sub_3B6890(*v0);
  *(v2 + 24) |= 0x10u;
  *(v2 + 248) = v42;
  v43 = sub_74700();
  v44 = sub_73EEC(v43);
  *(v2 + 24) |= 1u;
  v45 = *(v2 + 16);
  v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
  if (v45)
  {
    v46 = *v46;
  }

  sub_194EA1C((v2 + 216), v44, v46);
  if (sub_4F8530((v0 + 19)))
  {
    v47 = v0[83] - v0[82];
    if (v47)
    {
      v48 = 0;
      v49 = 0x2E8BA2E8BA2E8BA3 * (v47 >> 4);
      while (1)
      {
        v50 = sub_CD139C(v0 + 82, v48);
        if (*(v50 + 16) == v0[19])
        {
          break;
        }

        if (v49 == ++v48)
        {
          goto LABEL_83;
        }
      }

      v57 = *(v2 + 136);
      if (v57 && (v58 = *(v2 + 128), v58 < *v57))
      {
        *(v2 + 128) = v58 + 1;
        v59 = *&v57[2 * v58 + 2];
        *(v59 + 16) |= 1u;
        v60 = *(v59 + 24);
        if (v60)
        {
          goto LABEL_64;
        }
      }

      else
      {
        sub_12D0E28(*(v2 + 120));
        v59 = sub_19593CC(v2 + 120, v61);
        *(v59 + 16) |= 1u;
        v60 = *(v59 + 24);
        if (v60)
        {
          goto LABEL_64;
        }
      }

      v62 = *(v59 + 8);
      v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
      if (v62)
      {
        v63 = *v63;
      }

      v60 = sub_16F5828(v63);
      *(v59 + 24) = v60;
LABEL_64:
      LODWORD(v51) = *(v50 + 4);
      v64 = exp(v51 * -6.28318531 / 4294967300.0 + 3.14159265);
      v65 = atan((v64 + -1.0 / v64) * 0.5) * 57.2957795;
      v66 = *(v60 + 40);
      *(v60 + 40) = v66 | 1;
      *(v60 + 48) = v65;
      LODWORD(v65) = *v50;
      *(v60 + 40) = v66 | 3;
      *(v60 + 56) = *&v65 * 360.0 / 4294967300.0 + -180.0;
      v67 = *(v50 + 112);
      *(v59 + 16) |= 4u;
      *(v59 + 40) = v67;
      v68 = nullsub_1(*(v50 + 16));
      v69 = *(v59 + 16);
      *(v59 + 32) = v68;
      *(v59 + 16) = v69 | 0xA;
      *(v59 + 44) = v48;
      if (!sub_7E7E4(1u))
      {
        goto LABEL_83;
      }

      sub_19594F8(__t);
      sub_4A5C(__t, "Micro A/B - Adding Special Access Point ", 40);
      nullsub_1(*(v50 + 16));
      std::ostream::operator<<();
      if ((v92 & 0x10) != 0)
      {
        v71 = v91;
        if (v91 < v88)
        {
          v91 = v88;
          v71 = v88;
        }

        v72 = &v87;
      }

      else
      {
        if ((v92 & 8) == 0)
        {
          v70 = 0;
          HIBYTE(v94) = 0;
LABEL_78:
          *(__p + v70) = 0;
          sub_7E854(__p, 1u);
          if (SHIBYTE(v94) < 0)
          {
            operator delete(__p[0]);
          }

          if (v90 < 0)
          {
            operator delete(v89);
          }

          std::locale::~locale(&v85);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_83;
        }

        v72 = v86;
        v71 = v86[2];
      }

      v73 = *v72;
      v70 = v71 - *v72;
      if (v70 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v70 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v94) = v71 - *v72;
      if (v70)
      {
        memmove(__p, v73, v70);
      }

      goto LABEL_78;
    }
  }

LABEL_83:
  if (*v0[5] != v0[5][1])
  {
    sub_7E9A4(__p);
    sub_3DC210(__t, *v0, v6);
  }

  sub_CD2D40(v0);
  v74 = sub_74700();
  if (sub_74234(v74))
  {
    v75 = *(v2 + 56);
    if (v75 == *(v2 + 60))
    {
      v76 = v75 + 1;
      sub_1958E5C((v2 + 56), v75 + 1);
      *(*(v2 + 64) + 4 * v75) = 1;
    }

    else
    {
      *(*(v2 + 64) + 4 * v75) = 1;
      v76 = v75 + 1;
    }

    *(v2 + 56) = v76;
  }

  if (sub_7423C(v74))
  {
    v77 = *(v2 + 56);
    if (v77 == *(v2 + 60))
    {
      v78 = v77 + 1;
      sub_1958E5C((v2 + 56), v77 + 1);
      *(*(v2 + 64) + 4 * v77) = 2;
    }

    else
    {
      *(*(v2 + 64) + 4 * v77) = 2;
      v78 = v77 + 1;
    }

    *(v2 + 56) = v78;
  }

  *(v2 + 344) = sub_12C5314(v79);
  *(v2 + 336) = round(sub_7EA60(v83));
  *(v2 + 400) = v80;
  *(v2 + 438) = *(v2 + 257);
  if (v82 < 0)
  {
    operator delete(v81[0]);
  }
}

void sub_CD2B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_CD5744(va);
  sub_CD15B8(v16);
  if (a13 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_CD2D40(uint64_t result)
{
  if (*(result + 105) == 1)
  {
    if (*(result + 8))
    {
      sub_3F2C88(&v1, *result);
    }

    sub_21E3B7C();
  }

  return result;
}

void sub_CD3F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a13);
  if (*(v58 - 225) < 0)
  {
    operator delete(*(v58 - 248));
    if ((*(v58 - 201) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(v58 - 201) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v58 - 169) & 0x80000000) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(*(v58 - 192));
    goto LABEL_10;
  }

  operator delete(*(v58 - 224));
  if ((*(v58 - 169) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_CD4144(void **a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v89);
  v4 = sub_E7A5E0(a1[2]);
  v86 = sub_EA7118(v4);
  sub_3B681C(*a1, v87);
  v5 = *(sub_3B6890(*a1) + 4);
  *__t = std::chrono::system_clock::now();
  v6 = std::chrono::system_clock::to_time_t(__t);
  sub_E7A3D0(a1[2]);
  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 264) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 296) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  v85 = a2 + 8;
  sub_12C408C(a2 + 8, 0, 0);
  *(a2 + 420) = 0;
  *(a2 + 412) = 0;
  *(a2 + 404) = 0;
  *(a2 + 424) = 0;
  *(a2 + 431) = 0;
  *(a2 + 264) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 296) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 385) = 0u;
  if (a1[13])
  {
    v7 = 1;
  }

  else
  {
    if (*a1[5] != a1[5][1])
    {
      operator new();
    }

    v7 = 0;
  }

  v8 = *(a2 + 24);
  *(a2 + 257) = v7 & 1;
  *(a2 + 24) = v8 | 0x42;
  v9 = *(a2 + 224);
  if (!v9)
  {
    v10 = *(a2 + 16);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v9 = sub_12E1948(v11);
    *(a2 + 224) = v9;
  }

  v12 = *(v9 + 4);
  *(v9 + 9) = v5;
  *(v9 + 10) = v6;
  *(v9 + 44) = *(a1 + 104);
  *(v9 + 8) = 1;
  *(v9 + 4) = v12 | 0x1F;
  v13 = v9[3];
  if (v13)
  {
    *(v13 + 4) |= 1u;
    v14 = v13[3];
    if (v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v52 = v9[1];
    v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
    if (v52)
    {
      v53 = *v53;
    }

    v13 = sub_12E19C8(v53);
    v9[3] = v13;
    *(v13 + 4) |= 1u;
    v14 = v13[3];
    if (v14)
    {
LABEL_12:
      *(v14 + 16) |= 1u;
      v15 = *(v14 + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_55;
    }
  }

  v54 = v13[1];
  v55 = (v54 & 0xFFFFFFFFFFFFFFFCLL);
  if (v54)
  {
    v55 = *v55;
  }

  v14 = sub_12E1A44(v55);
  v13[3] = v14;
  *(v14 + 16) |= 1u;
  v56 = *(v14 + 8);
  v16 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
  if (v56)
  {
LABEL_55:
    v16 = *v16;
  }

LABEL_13:
  sub_194EA1C((v14 + 120), v87, v16);
  v17 = *(v14 + 16);
  *(v14 + 16) = v17 | 0x10;
  *(v14 + 152) = v86;
  v18 = a1[2];
  if ((v18[5] & 0x40) != 0)
  {
    v19 = v18[43];
    *(v14 + 16) = v17 | 0x12;
    v20 = *(v14 + 128);
    if (!v20)
    {
      v21 = *(v14 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_16F5BD8(v22);
      *(v14 + 128) = v20;
      v19 = a1[2][43];
    }

    if (v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = &off_277E738;
    }

    sub_16E8FA0(v20, v23);
  }

  if (v86)
  {
    if ((a1[2][5] & 0x40) != 0)
    {
      v24 = *a1[5];
      if (a1[5][1] - v24 == 24 && *v24 != v24[1] && !sub_4C49D0(a1[3]))
      {
        v25 = sub_3B6890(*a1);
        sub_3FE85C(__t, (a1 + 21), v25, a1[4], a1[3], **a1[5], *a1[6], a1[18], *a1);
      }
    }
  }

  v26 = a1[7];
  if (v26)
  {
    v28 = *v26;
    v27 = v26[1];
    if (*v26 != v27)
    {
      do
      {
        sub_64E090(v85, v28);
        v28 = (v28 + 24);
      }

      while (v28 != v27);
    }
  }

  *(a2 + 24) |= 4u;
  v29 = *(a2 + 232);
  if (!v29)
  {
    v30 = *(a2 + 16);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    v29 = sub_12D0DA4(v31);
    *(a2 + 232) = v29;
  }

  v32 = sub_3AF114(*a1);
  v33 = sub_73EBC(*v32);
  v34 = sub_420344(v33);
  *(v29 + 4) |= 2u;
  v29[4] = v34;
  *(a2 + 24) |= 4u;
  v35 = *(a2 + 232);
  if (!v35)
  {
    v36 = *(a2 + 16);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
    if (v36)
    {
      v37 = *v37;
    }

    v35 = sub_12D0DA4(v37);
    *(a2 + 232) = v35;
  }

  v38 = sub_3AF144(*a1);
  v39 = sub_2BC534(v38);
  *(v35 + 4) |= 1u;
  v40 = v35[1];
  v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
  if (v40)
  {
    v41 = *v41;
  }

  sub_194EA1C(v35 + 3, v39, v41);
  v42 = *sub_3B6890(*a1);
  *(a2 + 24) |= 0x10u;
  *(a2 + 248) = v42;
  v43 = sub_74700();
  v44 = sub_73EEC(v43);
  *(a2 + 24) |= 1u;
  v45 = *(a2 + 16);
  v46 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
  if (v45)
  {
    v46 = *v46;
  }

  sub_194EA1C((a2 + 216), v44, v46);
  if (sub_4F8530((a1 + 19)))
  {
    v47 = a1[83] - a1[82];
    if (v47)
    {
      v48 = 0;
      v49 = 0x2E8BA2E8BA2E8BA3 * (v47 >> 4);
      while (1)
      {
        v50 = sub_CD139C(a1 + 82, v48);
        if (*(v50 + 16) == a1[19])
        {
          break;
        }

        if (v49 == ++v48)
        {
          goto LABEL_83;
        }
      }

      v57 = *(a2 + 136);
      if (v57 && (v58 = *(a2 + 128), v58 < *v57))
      {
        *(a2 + 128) = v58 + 1;
        v59 = *&v57[2 * v58 + 2];
        *(v59 + 16) |= 1u;
        v60 = *(v59 + 24);
        if (v60)
        {
          goto LABEL_64;
        }
      }

      else
      {
        sub_12D0E28(*(a2 + 120));
        v59 = sub_19593CC(a2 + 120, v61);
        *(v59 + 16) |= 1u;
        v60 = *(v59 + 24);
        if (v60)
        {
          goto LABEL_64;
        }
      }

      v62 = *(v59 + 8);
      v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
      if (v62)
      {
        v63 = *v63;
      }

      v60 = sub_16F5828(v63);
      *(v59 + 24) = v60;
LABEL_64:
      LODWORD(v51) = *(v50 + 4);
      v64 = exp(v51 * -6.28318531 / 4294967300.0 + 3.14159265);
      v65 = atan((v64 + -1.0 / v64) * 0.5) * 57.2957795;
      v66 = *(v60 + 40);
      *(v60 + 40) = v66 | 1;
      *(v60 + 48) = v65;
      LODWORD(v65) = *v50;
      *(v60 + 40) = v66 | 3;
      *(v60 + 56) = *&v65 * 360.0 / 4294967300.0 + -180.0;
      v67 = *(v50 + 112);
      *(v59 + 16) |= 4u;
      *(v59 + 40) = v67;
      v68 = nullsub_1(*(v50 + 16));
      v69 = *(v59 + 16);
      *(v59 + 32) = v68;
      *(v59 + 16) = v69 | 0xA;
      *(v59 + 44) = v48;
      if (!sub_7E7E4(1u))
      {
        goto LABEL_83;
      }

      sub_19594F8(__t);
      sub_4A5C(__t, "Micro A/B - Adding Special Access Point ", 40);
      nullsub_1(*(v50 + 16));
      std::ostream::operator<<();
      if ((v98 & 0x10) != 0)
      {
        v71 = v97;
        if (v97 < v94)
        {
          v97 = v94;
          v71 = v94;
        }

        v72 = &v93;
      }

      else
      {
        if ((v98 & 8) == 0)
        {
          v70 = 0;
          HIBYTE(v101) = 0;
LABEL_78:
          *(&__dst + v70) = 0;
          sub_7E854(&__dst, 1u);
          if (SHIBYTE(v101) < 0)
          {
            operator delete(__dst);
          }

          if (v96 < 0)
          {
            operator delete(v95);
          }

          std::locale::~locale(&__t[16]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_83;
        }

        v72 = v92;
        v71 = v92[2];
      }

      v73 = *v72;
      v70 = v71 - *v72;
      if (v70 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v70 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v101) = v71 - *v72;
      if (v70)
      {
        memmove(&__dst, v73, v70);
      }

      goto LABEL_78;
    }
  }

LABEL_83:
  if (*a1[5] != a1[5][1])
  {
    sub_7E9A4(v102);
    sub_74700();
    v74 = *a1;
    v91 = 19;
    strcpy(__t, "GDFTimeDomainParser");
    __dst = 0;
    v100 = 0;
    v101 = 0;
    v75 = sub_3AEC94(v74, __t, &__dst);
    v76 = __dst;
    if (__dst)
    {
      v77 = v100;
      v78 = __dst;
      if (v100 != __dst)
      {
        do
        {
          v79 = *(v77 - 1);
          v77 -= 3;
          if (v79 < 0)
          {
            operator delete(*v77);
          }
        }

        while (v77 != v76);
        v78 = __dst;
      }

      v100 = v76;
      operator delete(v78);
    }

    if (v91 < 0)
    {
      operator delete(*__t);
    }

    sub_EE90(__t, v75);
  }

  v80 = sub_74700();
  if (sub_74234(v80))
  {
    v81 = *(a2 + 56);
    if (v81 == *(a2 + 60))
    {
      v82 = v81 + 1;
      sub_1958E5C((a2 + 56), v81 + 1);
      *(*(a2 + 64) + 4 * v81) = 1;
    }

    else
    {
      *(*(a2 + 64) + 4 * v81) = 1;
      v82 = v81 + 1;
    }

    *(a2 + 56) = v82;
  }

  if (sub_7423C(v80))
  {
    v83 = *(a2 + 56);
    if (v83 == *(a2 + 60))
    {
      v84 = v83 + 1;
      sub_1958E5C((a2 + 56), v83 + 1);
      *(*(a2 + 64) + 4 * v83) = 2;
    }

    else
    {
      *(*(a2 + 64) + 4 * v83) = 2;
      v84 = v83 + 1;
    }

    *(a2 + 56) = v84;
  }

  *(a2 + 344) = sub_12C5314(v85);
  *(a2 + 336) = round(sub_7EA60(v89));
  *(a2 + 400) = v86;
  *(a2 + 438) = *(a2 + 257);
  if (v88 < 0)
  {
    operator delete(v87[0]);
  }
}

void sub_CD52F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_CD5B60(&a24);
  sub_CD15B8(v29);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_CD5434(void *a1)
{
  v2 = a1[38];
  if (v2)
  {
    v3 = a1[39];
    v4 = a1[38];
    if (v3 != v2)
    {
      v5 = a1[39];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 3;
        v6 = v7;
        if (v7)
        {
          v8 = *(v3 - 2);
          v9 = v6;
          if (v8 != v6)
          {
            do
            {
              v8 -= 80;
              sub_3ED230(v8);
            }

            while (v8 != v6);
            v9 = *v5;
          }

          *(v3 - 2) = v6;
          operator delete(v9);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[38];
    }

    a1[39] = v2;
    operator delete(v4);
  }

  v10 = a1[35];
  if (v10)
  {
    v11 = a1[36];
    v12 = a1[35];
    if (v11 == v10)
    {
      goto LABEL_38;
    }

    while (1)
    {
      v14 = *(v11 - 24);
      if (!v14)
      {
        goto LABEL_17;
      }

      v15 = *(v11 - 16);
      v13 = *(v11 - 24);
      if (v15 != v14)
      {
        break;
      }

LABEL_16:
      *(v11 - 16) = v14;
      operator delete(v13);
LABEL_17:
      v11 -= 32;
      if (v11 == v10)
      {
        v12 = a1[35];
LABEL_38:
        a1[36] = v10;
        operator delete(v12);
        goto LABEL_39;
      }
    }

    while ((*(v15 - 1) & 0x80000000) == 0)
    {
      v17 = *(v15 - 6);
      if (v17)
      {
        goto LABEL_26;
      }

LABEL_27:
      v18 = v15 - 9;
      v19 = *(v15 - 9);
      if (v19)
      {
        v20 = *(v15 - 8);
        v16 = *(v15 - 9);
        if (v20 != v19)
        {
          do
          {
            v21 = *(v20 - 6);
            if (v21)
            {
              *(v20 - 5) = v21;
              operator delete(v21);
            }

            v22 = v20 - 10;
            if (*(v20 - 57) < 0)
            {
              operator delete(*v22);
            }

            v20 -= 10;
          }

          while (v22 != v19);
          v16 = *v18;
        }

        *(v15 - 8) = v19;
        operator delete(v16);
      }

      v15 -= 9;
      if (v18 == v14)
      {
        v13 = *(v11 - 24);
        goto LABEL_16;
      }
    }

    operator delete(*(v15 - 3));
    v17 = *(v15 - 6);
    if (!v17)
    {
      goto LABEL_27;
    }

LABEL_26:
    *(v15 - 5) = v17;
    operator delete(v17);
    goto LABEL_27;
  }

LABEL_39:
  v23 = a1[32];
  if (v23)
  {
    v24 = a1[33];
    v25 = a1[32];
    if (v24 != v23)
    {
      do
      {
        v24 = sub_12D8D7C(v24 - 64);
      }

      while (v24 != v23);
      v25 = a1[32];
    }

    a1[33] = v23;
    operator delete(v25);
  }

  return sub_12C41EC(a1);
}

void *sub_CD5628(void *a1)
{
  v2 = a1[755];
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = a1[756];
  v4 = a1[755];
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    v5 = *(v3 - 24);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v6 = *(v3 - 40);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(v3 - 40);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

LABEL_4:
    v3 -= 48;
  }

  while (v3 != v2);
  v4 = a1[755];
LABEL_13:
  a1[756] = v2;
  operator delete(v4);
LABEL_14:
  v7 = a1[682];
  if (v7)
  {
    a1[683] = v7;
    operator delete(v7);
  }

  sub_3E3DF0(a1 + 5);
  return a1;
}

void *sub_CD5744(void *a1)
{
  v2 = a1[616];
  if (v2)
  {
    a1[617] = v2;
    operator delete(v2);
  }

  v3 = a1[613];
  if (v3)
  {
    a1[614] = v3;
    operator delete(v3);
  }

  v4 = a1[603];
  if (v4)
  {
    a1[604] = v4;
    operator delete(v4);
  }

  v5 = a1[600];
  if (v5)
  {
    a1[601] = v5;
    operator delete(v5);
  }

  v6 = a1[597];
  if (v6)
  {
    a1[598] = v6;
    operator delete(v6);
  }

  sub_3E3EF8(a1 + 70);
  v7 = a1[66];
  if (v7)
  {
    do
    {
      v8 = *v7;
      sub_253B4((v7 + 2));
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = a1[64];
  a1[64] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = a1[3];
  if (v10)
  {
    a1[4] = v10;
    operator delete(v10);
  }

  return a1;
}

double sub_CD580C(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - v1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - v1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v10 = (8 * (v3 >> 3));
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 0;
  v7 = v10 - v3;
  sub_CD5940(a1, v1, v2, (v10 - v3));
  v8 = *a1;
  *a1 = v7;
  *&result = v10 + 3;
  *(a1 + 1) = (v10 + 3);
  if (v8)
  {
    operator delete(v8);
    *&result = v10 + 3;
  }

  return result;
}

void sub_CD592C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_CD5ABC(va);
  _Unwind_Resume(a1);
}

void sub_CD5940(uint64_t a1, void ***a2, void ***a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      v6 += 3;
      a4 += 3;
    }

    while (v6 != a3);
    if (a2 != a3)
    {
      do
      {
        v8 = *v5;
        if (*v5)
        {
          v9 = v5[1];
          v7 = *v5;
          if (v9 != v8)
          {
            do
            {
              v10 = *(v9 - 3);
              if (v10)
              {
                v11 = *(v9 - 2);
                v12 = *(v9 - 3);
                if (v11 != v10)
                {
                  do
                  {
                    v13 = v11 - 32;
                    v14 = *(v11 - 2);
                    if (v14 != -1)
                    {
                      (off_26731B8[v14])(&v17, v11 - 32);
                    }

                    *(v11 - 2) = -1;
                    v11 -= 32;
                  }

                  while (v13 != v10);
                  v12 = *(v9 - 3);
                }

                *(v9 - 2) = v10;
                operator delete(v12);
              }

              v15 = *(v9 - 8);
              if (v15 != -1)
              {
                (off_26731B8[v15])(&v18, v9 - 7);
              }

              v16 = v9 - 10;
              *(v9 - 8) = -1;
              if (*(v9 - 57) < 0)
              {
                operator delete(*v16);
              }

              v9 -= 10;
            }

            while (v16 != v8);
            v7 = *v5;
          }

          v5[1] = v8;
          operator delete(v7);
        }

        v5 += 3;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_CD5ABC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = *(a1 + 16);
    do
    {
      v6 = *(v4 - 3);
      v4 -= 3;
      v5 = v6;
      *(a1 + 16) = v4;
      if (v6)
      {
        v7 = *(v3 - 2);
        v8 = v5;
        if (v7 != v5)
        {
          do
          {
            v7 -= 80;
            sub_3ED230(v7);
          }

          while (v7 != v5);
          v8 = *v4;
        }

        *(v3 - 2) = v5;
        operator delete(v8);
        v4 = *(a1 + 16);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_CD5B60(void *a1)
{
  v2 = a1[96];
  if (v2)
  {
    a1[97] = v2;
    operator delete(v2);
  }

  v3 = a1[93];
  if (v3)
  {
    a1[94] = v3;
    operator delete(v3);
  }

  sub_3BFA2C(a1 + 69);
  v4 = a1[66];
  if (v4)
  {
    do
    {
      v5 = *v4;
      sub_253B4((v4 + 2));
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = a1[64];
  a1[64] = 0;
  if (v6)
  {
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

void sub_CD5BF8()
{
  byte_27B4117 = 3;
  LODWORD(qword_27B4100) = 5136193;
  byte_27B412F = 3;
  LODWORD(qword_27B4118) = 5136194;
  byte_27B4147 = 3;
  LODWORD(qword_27B4130) = 5136195;
  byte_27B415F = 15;
  strcpy(&qword_27B4148, "vehicle_mass_kg");
  byte_27B4177 = 21;
  strcpy(&xmmword_27B4160, "vehicle_cargo_mass_kg");
  byte_27B418F = 19;
  strcpy(&qword_27B4178, "vehicle_aux_power_w");
  byte_27B41A7 = 15;
  strcpy(&qword_27B4190, "dcdc_efficiency");
  strcpy(&qword_27B41A8, "drive_train_efficiency");
  HIBYTE(word_27B41BE) = 22;
  operator new();
}

void sub_CD6000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B40C0)
  {
    qword_27B40C8 = qword_27B40C0;
    operator delete(qword_27B40C0);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_CD60F4@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v18);
  *a2 = 1;
  *(a2 + 8) = 0;
  if (*(a1 + 17) != 1 || (v4 = *(a1 + 8), v5 = sub_3AF6B4(*a1), v6 = *v4, v7 = *(v4 + 8), v19[0].n128_u64[0] = v5, v19[0].n128_u64[1] = a1, v6 == v7))
  {
LABEL_5:
    v9 = *(a1 + 88);
    v8 = *(a1 + 96);
    if (v8 < v9 || ((v10 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 72) + 8) - **(a1 + 72)) >> 3), v11 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 80) + 8) - **(a1 + 80)) >> 3), v10 <= v8) ? (v12 = v10 > v11) : (v12 = 0), v12 || (v10 <= v9 ? (v13 = v11 > v8) : (v13 = 1), !v13)))
    {
      result = sub_7EA60(v18);
      *(a2 + 8) = vcvtad_u64_f64(result);
      return result;
    }

    v22.n128_u64[0] = 9;
    v22.n128_u64[1] = &off_2669FE0;
    sub_434934(v19, &v22);
  }

  else
  {
    while (!sub_CD62F0(v19, v6))
    {
      v6 += 110;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    v22.n128_u64[0] = 17;
    v22.n128_u64[1] = &off_2669FE0;
    sub_434934(v19, &v22);
  }

  v15 = v20;
  v16 = v21;
  result = v19[0].n128_f64[0];
  v17 = v19[1];
  *(a2 + 8) = v19[0];
  *(a2 + 24) = v17;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  *a2 = 0;
  return result;
}

uint64_t sub_CD6274(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v3 != v2)
      {
        do
        {
          if (*(v3 - 1) < 0)
          {
            operator delete(*(v3 - 24));
          }

          v3 -= 32;
        }

        while (v3 != v2);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

BOOL sub_CD62F0(uint64_t *a1, _DWORD *a2)
{
  p_p = &__p;
  sub_455C94(*a1, a2, &__p);
  v4 = a1[1];
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (v5 != v6)
  {
    if ((v24 & 0x80u) == 0)
    {
      v7 = v24;
    }

    else
    {
      v7 = v23;
    }

    if ((v24 & 0x80u) != 0)
    {
      p_p = __p;
    }

    while (1)
    {
      v8 = *(v5 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v5 + 8);
      }

      if (v8 == v7)
      {
        v10 = v9 >= 0 ? v5 : *v5;
        if (!memcmp(v10, p_p, v7))
        {
          break;
        }
      }

      v5 += 24;
      if (v5 == v6)
      {
        v5 = v6;
        if (*(v4 + 16) == 1)
        {
          goto LABEL_17;
        }

        goto LABEL_34;
      }
    }
  }

  if (*(v4 + 16) == 1)
  {
LABEL_17:
    v12 = *(v4 + 48);
    v11 = *(v4 + 56);
    if (v12 != v11)
    {
      if ((v24 & 0x80u) == 0)
      {
        v13 = v24;
      }

      else
      {
        v13 = v23;
      }

      if ((v24 & 0x80u) == 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p;
      }

      while (1)
      {
        v15 = *(v12 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v12 + 8);
        }

        if (v15 == v13)
        {
          v17 = v16 >= 0 ? v12 : *v12;
          if (!memcmp(v17, v14, v13))
          {
            break;
          }
        }

        v12 += 24;
        if (v12 == v11)
        {
          v12 = v11;
          break;
        }
      }
    }

    v18 = v12 == v11;
  }

  else
  {
LABEL_34:
    v18 = 1;
  }

  v19 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v19 = v23;
  }

  if (v5 != v6)
  {
    v18 = 0;
  }

  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  if (v24 < 0)
  {
    operator delete(__p);
  }

  return v20;
}

void sub_CD652C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v21);
  if ((*(a1 + 18) & 1) == 0)
  {
    v29 = 0u;
    v30 = 0u;
    v7 = *(a1 + 8);
    if (&v29 != v7)
    {
LABEL_8:
      sub_CD80CC(&v29, v7->n128_u64[0], v7->n128_i64[1], 0x6FB586FB586FB587 * ((v7->n128_u64[1] - v7->n128_u64[0]) >> 3));
    }

LABEL_9:
    v8 = vcvtad_u64_f64(sub_7EA60(v21));
    *a2 = 1;
    *(a2 + 8) = v29;
    *(a2 + 24) = v30;
    *(a2 + 32) = v8;
    return;
  }

  if (*(a1 + 16) != 1)
  {
    if (sub_CD6AA8(a1, *(a1 + 8)))
    {
      v26[0].n128_u64[0] = 17;
      v26[0].n128_u64[1] = &off_2669FE0;
      sub_434934(&v29, v26);
      *a2 = 0;
      v9 = v30;
      *(a2 + 8) = v29;
      *(a2 + 24) = v9;
      *(a2 + 40) = v31;
      *(a2 + 48) = v32;
      return;
    }

    v29 = 0u;
    v30 = 0u;
    v7 = *(a1 + 8);
    if (&v29 != v7)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = *(v4 + 8);
  if (v5 != v6)
  {
    while (v5[44] != 1)
    {
      v5 += 110;
      if (v5 == v6)
      {
        goto LABEL_13;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_13:
    if ((atomic_load_explicit(&qword_27339A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339A0))
    {
      sub_78922C(&unk_27337E8);
      __cxa_guard_release(&qword_27339A0);
    }

    v5 = &unk_27337E8;
  }

  sub_4E9DA4(v26, v5);
  if (sub_E67BDC(v26))
  {
    *v24 = 0u;
    v25 = 0u;
    v10 = *(a1 + 8);
    if (v24 == v10)
    {
      goto LABEL_34;
    }

    sub_CD80CC(v24, *v10, *(v10 + 8), 0x6FB586FB586FB587 * ((*(v10 + 8) - *v10) >> 3));
    v11 = v24[0];
    v12 = v24[1];
    if (v24[0] != v24[1])
    {
      do
      {
        if (v11[44] == 2)
        {
          sub_4E9DA4(&v29, v26);
          sub_4E9DA4(&v33, v11);
          __p = 0uLL;
          v23 = 0;
          p_p = &__p;
          v28 = 0;
          operator new();
        }

        v11 += 110;
      }

      while (v11 != v24[1]);
      v11 = v24[0];
      v12 = v24[1];
    }

    if (v11 == v12)
    {
      goto LABEL_34;
    }

    do
    {
      v14 = sub_E67BDC(v11);
      v15 = v11[44] == 2 && v14;
      if (v15)
      {
        break;
      }

      v11 += 110;
    }

    while (v11 != v12);
    if (!v15)
    {
LABEL_34:
      __p.n128_u64[0] = 17;
      __p.n128_u64[1] = &off_2669FE0;
      sub_434934(&v29, &__p);
      *a2 = 0;
      v17 = v30;
      *(a2 + 8) = v29;
      *(a2 + 24) = v17;
      *(a2 + 40) = v31;
      *(a2 + 48) = v32;
      v18 = v24[0];
      if (v24[0])
      {
        v19 = v24[1];
        v20 = v24[0];
        if (v24[1] != v24[0])
        {
          do
          {
            v19 = sub_44FDEC(v19 - 440);
          }

          while (v19 != v18);
          v20 = v24[0];
        }

        v24[1] = v18;
        operator delete(v20);
      }
    }

    else
    {
      v16 = vcvtad_u64_f64(sub_7EA60(v21));
      *(&v25 + 1) = v16;
      *a2 = 1;
      *(a2 + 8) = *v24;
      *(a2 + 24) = v25;
      *(a2 + 32) = v16;
    }
  }

  else
  {
    v24[0] = &dword_0 + 1;
    v24[1] = &off_2669FE0;
    sub_434934(&v29, v24);
    *a2 = 0;
    v13 = v30;
    *(a2 + 8) = v29;
    *(a2 + 24) = v13;
    *(a2 + 40) = v31;
    *(a2 + 48) = v32;
  }

  sub_44FDEC(v26);
}

void sub_CD69C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_44FD90(va);
  sub_44FDEC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_CD6AA8(void **a1, uint64_t **a2)
{
  v3 = a1;
  v4 = sub_3AF6B4(*a1);
  v5 = *a2;
  v59 = a2[1];
  v60 = v4;
  if (*a2 == v59)
  {
    return 0;
  }

  v61 = v3;
  while (1)
  {
LABEL_8:
    v7 = *v5;
    v66 = *(v5 + 2);
    v65 = v7;
    sub_455C94(v60, &v65, &v62);
    v8 = v3[3];
    v9 = v3[4];
    if (v8 != v9)
    {
      if ((v64 & 0x80u) == 0)
      {
        v10 = v64;
      }

      else
      {
        v10 = v63;
      }

      if ((v64 & 0x80u) == 0)
      {
        v11 = &v62;
      }

      else
      {
        v11 = v62;
      }

      while (1)
      {
        v12 = *(v8 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = v8[1];
        }

        if (v12 == v10)
        {
          v14 = v13 >= 0 ? v8 : *v8;
          if (!memcmp(v14, v11, v10))
          {
            break;
          }
        }

        v8 += 3;
        if (v8 == v9)
        {
          v8 = v9;
          if (*(v3 + 17) == 1)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }
      }
    }

    if (*(v3 + 17) == 1)
    {
LABEL_24:
      v15 = v3;
      v16 = v3[9];
      v17 = v15[10];
      if (v16 != v17)
      {
        if ((v64 & 0x80u) == 0)
        {
          v18 = v64;
        }

        else
        {
          v18 = v63;
        }

        if ((v64 & 0x80u) == 0)
        {
          v19 = &v62;
        }

        else
        {
          v19 = v62;
        }

        while (1)
        {
          v20 = *(v16 + 23);
          v21 = v20;
          if ((v20 & 0x80u) != 0)
          {
            v20 = v16[1];
          }

          if (v20 == v18)
          {
            v22 = v21 >= 0 ? v16 : *v16;
            if (!memcmp(v22, v19, v18))
            {
              break;
            }
          }

          v16 += 3;
          if (v16 == v17)
          {
            v16 = v17;
            break;
          }
        }
      }

      v23 = v16 != v17;
      v3 = v61;
    }

    else
    {
LABEL_41:
      v23 = 0;
    }

    v24 = 0;
    v25 = v64;
    if ((v64 & 0x80u) != 0)
    {
      v25 = v63;
    }

    if (v23 || v8 != v9 || !v25)
    {
      break;
    }

    v26 = sub_3B25D0(*v3);
    sub_58168(v65 >> 17, HIDWORD(v65) >> 17);
    v28 = v27 | 0x40000000;
    if (!*v26)
    {
      v56 = *(v26 + 3856);
      do
      {
        ++v56;
        v57 = v28 > 3;
        v28 >>= 2;
      }

      while (v57);
      *(v26 + 3856) = v56;
      v24 = 1;
      break;
    }

    do
    {
      v29 = v28;
      LODWORD(v69) = v28;
      LODWORD(v68) = 1;
      __dst[0] = &v68;
      __dst[1] = &v69;
      v30 = *(v26 + 3856) + 1;
      *(v26 + 3856) = v30;
      if (*v26)
      {
        v31 = v26 + 2416;
        if (*(v26 + 2416) == v29 || (v31 = v26 + 2440, *(v26 + 2440) == v29) || (v31 = v26 + 2464, *(v26 + 2464) == v29) || (v31 = v26 + 2488, *(v26 + 2488) == v29))
        {
          ++*(v26 + 3864);
          *(v31 + 8) = v30;
          v32 = *(v31 + 16);
          if (!v32)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v46 = *(v26 + 2472);
          v47 = *(v26 + 2448);
          v48 = *(v26 + 2424);
          v49 = *(v26 + 2496);
          v32 = sub_2D52A4(*v26, 25, v29, 1);
          if (v48 >= v30)
          {
            v50 = v30;
          }

          else
          {
            v50 = v48;
          }

          v51 = 100;
          if (v48 >= v30)
          {
            v51 = 0;
          }

          if (v47 < v50)
          {
            v50 = v47;
            v51 = 101;
          }

          if (v46 < v50)
          {
            v51 = 102;
            v50 = v46;
          }

          v52 = v49 >= v50;
          v53 = 103;
          if (v52)
          {
            v53 = v51;
          }

          v54 = v26 + 16 + 24 * v53;
          *v54 = v69;
          *(v54 + 8) = *(v26 + 3856);
          *(v54 + 16) = v32;
          if (!v32)
          {
LABEL_51:
            sub_CD7770(__dst);
            goto LABEL_52;
          }
        }

        v33 = (v32 + *v32 - *(v32 + *v32));
        if (*v33 >= 5u && v33[2])
        {
          v34 = sub_CD759C(v26, v29, 1);
          if (v34)
          {
            v35 = &v34[-*v34];
            if (*v35 >= 5u)
            {
              v36 = *(v35 + 2);
              if (v36)
              {
                v37 = &v34[v36 + *&v34[v36]];
                v38 = &v37[-*v37];
                if (*v38 >= 7u)
                {
                  v39 = *(v38 + 3);
                  if (v39)
                  {
                    if (*&v37[v39 + *&v37[v39]])
                    {
                      operator new();
                    }
                  }
                }
              }
            }
          }

          v40 = sub_CD759C(v26, v29, 1);
          if (v40)
          {
            v41 = &v40[-*v40];
            if (*v41 >= 5u)
            {
              v42 = *(v41 + 2);
              if (v42)
              {
                v43 = &v40[v42 + *&v40[v42]];
                v44 = &v43[-*v43];
                if (*v44 >= 9u)
                {
                  v45 = *(v44 + 4);
                  if (v45)
                  {
                    if (*&v43[v45 + *&v43[v45]])
                    {
                      operator new();
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_52:
      v28 = v29 >> 2;
    }

    while (v29 > 3);
    v24 = 1;
    v3 = v61;
    if ((v64 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_92:
    operator delete(v62);
    v5 += 55;
    if (v5 == v59)
    {
      v55 = 1;
    }

    else
    {
      v55 = v24;
    }

    if (v55 == 1)
    {
      return v24;
    }
  }

  if (v64 < 0)
  {
    goto LABEL_92;
  }

LABEL_4:
  v5 += 55;
  if (v5 == v59)
  {
    v6 = 1;
  }

  else
  {
    v6 = v24;
  }

  if (v6 != 1)
  {
    goto LABEL_8;
  }

  return v24;
}

void sub_CD7510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

char *sub_CD759C(uint64_t a1, unsigned int a2, int a3)
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

  if (*(a1 + 2416) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2424) = v3;
    v4 = *(a1 + 2432);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2440) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2448) = v3;
    v4 = *(a1 + 2456);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2464) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2472) = v3;
    v4 = *(a1 + 2480);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2488) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2496) = v3;
    v4 = *(a1 + 2504);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 2472);
    v8 = *(a1 + 2448);
    v9 = *(a1 + 2424);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 2424);
    }

    v11 = 100;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 2448);
    }

    v13 = 101;
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
      v14 = *(a1 + 2472);
    }

    v15 = *(a1 + 2496);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 102;
    }

    v18 = sub_2D52A4(*a1, 25, a2, 1);
    v19 = 103;
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
  sub_CD7770(v21);
  return 0;
}

uint64_t sub_CD7770(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0x19u);
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

void sub_CD786C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_CD789C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_CD759C(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 5u) || (v6 = *(v5 + 2)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v21 = v3;
    v22 = exception;
    v28[0] = v21;
    v28[1] = v2;
    sub_2FF494(v28, &v26);
    sub_23E08("Referenced polygon ", &v26, &v27);
    sub_30F54(" does not exist.", &v27, &v29);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v29;
    }

    else
    {
      v23 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v25 = sub_2D390(v22, v23, size);
  }

  v11 = &v10[4 * v3 + 4 + *&v10[4 * v3 + 4]];
  v12 = &v11[-*v11];
  if (*v12 >= 9u && (v13 = *(v12 + 4)) != 0 && (v14 = &v11[v13 + *&v11[v13]], v17 = *v14, v16 = v14 + 1, v15 = v17, v29.__r_.__value_.__r.__words[0] = v16, v29.__r_.__value_.__l.__size_ = v17, v29.__r_.__value_.__r.__words[2] = 0xF424000000040, v30 = 257, v32 = 0, v33 = 0, v31 = 0, v17 >= 0xC) && (v18 = *v16, v18 >= 1) && v15 - 1 >= v18 && sub_2E2B40((v16 + v18), &v29))
  {
    return v16 + *v16;
  }

  else
  {
    return 0;
  }
}

void sub_CD7A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_CD7AF4(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v36[0] = sub_CD7CD4(a1, *a2);
  v36[1] = v6;
  if (!sub_32A18(v36, a3))
  {
    return 0;
  }

  sub_CD7EE8(a1, *a2, &__p);
  v10 = __p;
  v11 = v35;
  if (__p == v35)
  {
    v23 = 0;
    v24 = __p;
    if (!__p)
    {
      return v23;
    }
  }

  else
  {
    v12 = a3[1];
    LODWORD(v7) = *a3;
    v13 = v7;
    v14 = __p;
    while (1)
    {
      v15 = *v14;
      v16 = v14[1];
      if (*v14 != v16)
      {
        v17 = 0;
        do
        {
          v18 = v15[1];
          v19 = (*v15 + 12);
          if (*v15 != v18 && v19 != v18)
          {
            do
            {
              v21 = *(v19 - 2);
              v22 = v19[1];
              if (v21 < v12 != v22 < v12)
              {
                LODWORD(v8) = *v19;
                LODWORD(v9) = *(v19 - 3);
                v9 = *&v9;
                v8 = (v12 - v21) / (v22 - v21) * (*&v8 - v9) + v9;
                if (v8 < v13)
                {
                  v17 ^= 1u;
                }
              }

              v19 += 3;
            }

            while (v19 != v18);
          }

          v15 += 3;
        }

        while (v15 != v16);
        if (v17)
        {
          break;
        }
      }

      v14 += 3;
      if (v14 == v35)
      {
        v23 = 0;
        if (!__p)
        {
          return v23;
        }

        goto LABEL_25;
      }
    }

    v23 = 1;
    if (!__p)
    {
      return v23;
    }

LABEL_25:
    v25 = v35;
    do
    {
      v28 = *(v25 - 3);
      v25 -= 3;
      v27 = v28;
      if (v28)
      {
        v29 = *(v11 - 2);
        v26 = v27;
        if (v29 != v27)
        {
          v30 = *(v11 - 2);
          do
          {
            v32 = *(v30 - 3);
            v30 -= 24;
            v31 = v32;
            if (v32)
            {
              *(v29 - 2) = v31;
              operator delete(v31);
            }

            v29 = v30;
          }

          while (v30 != v27);
          v26 = *v25;
        }

        *(v11 - 2) = v27;
        operator delete(v26);
      }

      v11 = v25;
    }

    while (v25 != v10);
    v24 = __p;
  }

  v35 = v10;
  operator delete(v24);
  return v23;
}

std::string::size_type sub_CD7CD4(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_CD759C(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 5u) || (v6 = *(v5 + 2)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v17 = v3;
    v18 = exception;
    v25[0] = v17;
    v25[1] = v2;
    sub_2FF494(v25, &v22);
    sub_23E08("Referenced polygon ", &v22, &v23);
    sub_30F54(" does not exist.", &v23, &v24);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v24;
    }

    else
    {
      v19 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    v21 = sub_2D390(v18, v19, size);
  }

  v11 = &v10[4 * v3 + 4 + *&v10[4 * v3 + 4]];
  v12 = &v11[*&v11[-*v11 + 6]];
  v13 = *(v12 + 4);
  if (v13 >= 0xFFFFFFFE)
  {
    v13 = -2;
  }

  LODWORD(v23.__r_.__value_.__l.__data_) = *v12;
  HIDWORD(v23.__r_.__value_.__r.__words[0]) = v13;
  LODWORD(v23.__r_.__value_.__r.__words[1]) = 0x7FFFFFFF;
  v14 = *(v12 + 8);
  LODWORD(v12) = *(v12 + 12);
  if (v12 >= 0xFFFFFFFE)
  {
    v12 = 4294967294;
  }

  else
  {
    v12 = v12;
  }

  v22.__r_.__value_.__r.__words[0] = v14 | (v12 << 32);
  LODWORD(v22.__r_.__value_.__r.__words[1]) = 0x7FFFFFFF;
  sub_320C0(&v24, &v23, &v22);
  return v24.__r_.__value_.__r.__words[0];
}

void sub_CD7E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_CD7EE8(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v5 = HIDWORD(a2);
  v6 = sub_CD759C(a1, a2, 1);
  if (!v6 || (v7 = &v6[-*v6], *v7 < 5u) || (v8 = *(v7 + 2)) == 0 || (v9 = &v6[v8 + *&v6[v8]], v10 = &v9[-*v9], *v10 < 5u) || (v11 = *(v10 + 2)) == 0 || (v12 = &v9[v11 + *&v9[v11]], *v12 <= v5))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v23[0] = v5;
    v23[1] = v3;
    sub_2FF494(v23, &v20);
    sub_23E08("Referenced polygon ", &v20, &v21);
    sub_30F54(" does not exist.", &v21, &v22);
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = sub_2D390(exception, v17, size);
  }

  v13 = &v12[4 * v5 + 4 + *&v12[4 * v5 + 4]];
  v14 = &v13[*&v13[-*v13 + 4]];
  v15 = &v14[*v14];

  sub_2CBB58(v15, a3);
}

void sub_CD804C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_CD80CC(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6FB586FB586FB587 * ((v7 - *result) >> 3) < a4)
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
          v10 = sub_44FDEC(v10 - 440);
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

    if (a4 <= 0x94F2094F2094F2)
    {
      v12 = 0x6FB586FB586FB587 * (v7 >> 3);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x4A7904A7904A79)
      {
        v14 = 0x94F2094F2094F2;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x94F2094F2094F2)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x6FB586FB586FB587 * ((v15 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5FFC40(v8, v5);
        v5 += 440;
        v8 += 440;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 440;
      result = sub_44FDEC(v15);
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
        result = sub_5FFC40(v8, v5);
        v5 += 440;
        v8 += 440;
        v16 -= 440;
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
        result = sub_4E9DA4(v15 + v19, v17 + v19);
        v19 += 440;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_CD8340(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 440;
    v7 = -v4;
    do
    {
      v6 = sub_44FDEC(v6) - 440;
      v7 += 440;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_CD8418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v13);
  sub_14D4048(v10, 0, 0);
  v12 = 0;
  sub_EB40DC(&v9, a1, (a1 + 24), a1 + 48, (a1 + 424), v7);
  v4 = v11;
  if ((v11 & 2) != 0)
  {
    v4 = 0;
  }

  else if (v11)
  {
    v4 = *(v11 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v5 = v8;
  if ((v8 & 2) != 0)
  {
    v5 = 0;
  }

  else if (v8)
  {
    v5 = *(v8 & 0xFFFFFFFFFFFFFFFCLL);
  }

  if (v4 == v5)
  {
    sub_14D5848(v10, v7);
  }

  else
  {
    sub_14D5750(v10, v7);
  }

  sub_14D4598(v7);
  v12 = vcvtad_u64_f64(sub_7EA60(v13));
  sub_CD8524(a2, v10);
  return sub_14D4598(v10);
}

uint64_t sub_CD8524(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  v4 = sub_14D4048(a1 + 8, 0, 0);
  if (v4 != a2)
  {
    v5 = *(a1 + 16);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = *(a2 + 8);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v5 == v6)
    {
      sub_14D5848(v4, a2);
    }

    else
    {
      sub_14D5750(v4, a2);
    }
  }

  *(a1 + 176) = *(a2 + 168);
  return a1;
}

void sub_CD85CC()
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
  xmmword_27B4238 = 0u;
  unk_27B4248 = 0u;
  dword_27B4258 = 1065353216;
  sub_3A9A34(&xmmword_27B4238, v0);
  sub_3A9A34(&xmmword_27B4238, v3);
  sub_3A9A34(&xmmword_27B4238, __p);
  sub_3A9A34(&xmmword_27B4238, v9);
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
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_CD879C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_27B4238);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

double sub_CD8814@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v21);
  v20 = 0;
  *__p = 0u;
  memset(v19, 0, sizeof(v19));
  v4 = a1[7];
  v5 = a1[8];
  v6 = v4 + 40;
  if (v4 != v5 && v6 != v5)
  {
    do
    {
      v8 = *(v4 + 32);
      if (v8 < *(v6 + 32) && v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = v6;
      }

      v6 += 40;
    }

    while (v6 != v5);
  }

  if (v4 == v5 || (v10 = *(v4 + 32), v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = 0x7FFFFFFFFFFFFFFELL;
  }

  if (v10 <= a1[17])
  {
    sub_CD8E40();
  }

  v13.n128_u64[0] = 16;
  v13.n128_u64[1] = &off_2669FE0;
  sub_434934(v14, &v13);
  *a2 = 0;
  result = *v14;
  v12 = v15;
  *(a2 + 8) = *v14;
  *(a2 + 24) = v12;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;
  return result;
}

void sub_CD8E40()
{
  __chkstk_darwin();
  v1 = *(v0 + 112);
  v7 = v0;
  HIBYTE(v11[2]) = 18;
  strcpy(v11, "CyclingPathFinding");
  __p = 0;
  v9 = 0;
  v10 = 0;
  v2 = sub_3AEC94(v1, v11, &__p);
  v3 = __p;
  if (__p)
  {
    v4 = v9;
    v5 = __p;
    if (v9 != __p)
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
      v5 = __p;
    }

    v9 = v3;
    operator delete(v5);
  }

  if (SHIBYTE(v11[2]) < 0)
  {
    operator delete(v11[0]);
  }

  sub_FD5748(v1, (v7 + 97), v2);
  operator new();
}

void sub_CDBC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void ***a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48)
{
  sub_5BF68(&STACK[0xB590]);
  sub_487EC4((v48 - 144));
  sub_39393C((v48 - 120));
  sub_CDC398(&STACK[0x6F98]);
  sub_CDC398(a12);
  sub_CDE49C(&a27);
  sub_CDC3D4(&a48);
  sub_CDE540(&STACK[0x33A0]);
  sub_CDE5E8(&STACK[0x46F8]);
  _Unwind_Resume(a1);
}

void ***sub_CDC398(void ***a1)
{
  if (*a1)
  {
    sub_CDDF18(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

void *sub_CDC3D4(void *a1)
{
  v2 = a1[1606];
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[8];
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v2[6];
      v2[6] = 0;
      if (v8)
      {
        operator delete(v8);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = a1[1604];
  a1[1604] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  sub_360B9C(a1 + 625);
  sub_CDE540((a1 + 6));
  return a1;
}

void sub_CDC780(_Unwind_Exception *a1)
{
  v6 = v1[1284];
  if (v6)
  {
    free(v6);
  }

  if (*v4)
  {
    free(*v4);
  }

  sub_CDC860((v1 + v3));
  v7 = v1[571];
  if (v7)
  {
    v1[572] = v7;
    operator delete(v7);
    v8 = v1[555];
    if (!v8)
    {
LABEL_7:
      v9 = v1[546];
      if (!v9)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v8 = v1[555];
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v1[556] = v8;
  operator delete(v8);
  v9 = v1[546];
  if (!v9)
  {
LABEL_8:
    sub_404134(v2);
    _Unwind_Resume(a1);
  }

LABEL_11:
  v1[547] = v9;
  operator delete(v9);
  sub_404134(v2);
  _Unwind_Resume(a1);
}

void *sub_CDC860(void *a1)
{
  v2 = a1[663];
  if (v2)
  {
    a1[664] = v2;
    operator delete(v2);
  }

  v3 = a1[660];
  if (v3)
  {
    a1[661] = v3;
    operator delete(v3);
  }

  v4 = a1[656];
  if (v4)
  {
    a1[657] = v4;
    operator delete(v4);
  }

  v5 = a1[653];
  if (v5)
  {
    a1[654] = v5;
    operator delete(v5);
  }

  sub_360988((a1 + 557));
  v6 = a1[549];
  if (v6)
  {
    a1[550] = v6;
    operator delete(v6);
  }

  v7 = a1[537];
  if (v7)
  {
    a1[538] = v7;
    operator delete(v7);
  }

  v8 = a1[534];
  if (v8)
  {
    a1[535] = v8;
    operator delete(v8);
  }

  v9 = a1[531];
  if (v9)
  {
    a1[532] = v9;
    operator delete(v9);
  }

  sub_3E3EF8(a1 + 4);
  return a1;
}

double sub_CDC918(uint64_t a1)
{
  *(a1 + 9954) = 0;
  sub_F8F518(a1 + 8);
  v2.i32[0] = *(a1 + 9976);
  v3 = 4;
  if (!vcvts_n_u32_f32(*v2.i32, 2uLL))
  {
    while ((v3 & 0x8000000000000000) == 0)
    {
      v3 *= 2;
      if ((*v2.i32 * v3))
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "resize overflow");
  }

LABEL_4:
  if (*(a1 + 10008) || v3 != *(a1 + 10016))
  {
    v2 = sub_CDCE34(a1 + 9960, v3);
  }

  v2.i32[0] = *(a1 + 10056);
  v4 = 4;
  if (!vcvts_n_u32_f32(*v2.i32, 2uLL))
  {
    while ((v4 & 0x8000000000000000) == 0)
    {
      v4 *= 2;
      if ((*v2.i32 * v4))
      {
        goto LABEL_10;
      }
    }

    goto LABEL_15;
  }

LABEL_10:
  if (*(a1 + 10168) || v4 != *(a1 + 10176))
  {

    v2.i64[0] = sub_CDCF84(a1 + 10040, v4).u64[0];
  }

  return *v2.i64;
}

uint64_t *sub_CDCA6C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = a2[1];
    v6 = v3 + 68;
    do
    {
      while (1)
      {
        v31 = (v6 - 68);
        if (v5 >= a2[2])
        {
          break;
        }

        v7 = *v31;
        *(v5 + 16) = *(v6 - 66);
        *v5 = v7;
        *(v6 - 67) = 0u;
        *v31 = 0;
        v8 = v6 - 65;
        *(v5 + 40) = 0;
        *(v5 + 24) = 0u;
        *(v5 + 24) = *(v6 - 65);
        *(v5 + 40) = *(v6 - 63);
        v8[2] = 0;
        *v8 = 0u;
        v9 = *(v6 - 31);
        v10 = *(v6 - 29);
        v11 = *(v6 - 56);
        *(v5 + 64) = *(v6 - 30);
        *(v5 + 80) = v10;
        *(v5 + 48) = v9;
        v12 = v6 - 55;
        *(v5 + 96) = v11;
        *(v5 + 104) = 0;
        *(v5 + 112) = 0u;
        *(v5 + 104) = *(v6 - 55);
        *(v5 + 120) = *(v6 - 53);
        v12[2] = 0;
        *v12 = 0u;
        v13 = v6 - 52;
        *(v5 + 144) = 0;
        *(v5 + 128) = 0u;
        *(v5 + 128) = *(v6 - 26);
        *(v5 + 144) = *(v6 - 50);
        v13[2] = 0;
        *v13 = 0u;
        v14 = v6 - 49;
        *(v5 + 168) = 0;
        *(v5 + 152) = 0u;
        *(v5 + 152) = *(v6 - 49);
        *(v5 + 168) = *(v6 - 47);
        v14[2] = 0;
        *v14 = 0u;
        v15 = *(v6 - 22);
        v16 = *(v6 - 42);
        *(v5 + 176) = *(v6 - 23);
        *(v5 + 192) = v15;
        v17 = v6 - 41;
        *(v5 + 208) = v16;
        *(v5 + 216) = 0;
        *(v5 + 224) = 0u;
        *(v5 + 216) = *(v6 - 41);
        *(v5 + 232) = *(v6 - 39);
        v17[2] = 0;
        *v17 = 0u;
        v18 = v6 - 38;
        *(v5 + 256) = 0;
        *(v5 + 240) = 0u;
        *(v5 + 240) = *(v6 - 19);
        *(v5 + 256) = *(v6 - 36);
        v18[2] = 0;
        *v18 = 0u;
        v19 = *(v6 - 35);
        v20 = *(v6 - 31);
        *(v5 + 280) = *(v6 - 33);
        *(v5 + 296) = v20;
        *(v5 + 264) = v19;
        v21 = *(v6 - 19);
        v22 = *(v6 - 15);
        v23 = *(v6 - 21);
        *(v5 + 408) = *(v6 - 17);
        *(v5 + 424) = v22;
        *(v5 + 376) = v23;
        *(v5 + 392) = v21;
        v24 = *(v6 - 11);
        v25 = *(v6 - 7);
        v26 = *(v6 - 13);
        *(v5 + 472) = *(v6 - 9);
        *(v5 + 488) = v25;
        *(v5 + 440) = v26;
        *(v5 + 456) = v24;
        v27 = *(v6 - 29);
        v28 = *(v6 - 27);
        v29 = *(v6 - 23);
        *(v5 + 344) = *(v6 - 25);
        *(v5 + 360) = v29;
        *(v5 + 312) = v27;
        *(v5 + 328) = v28;
        *(v5 + 504) = *(v6 - 5);
        *(v5 + 512) = *(v6 - 2);
        *(v6 - 3) = 0;
        *(v6 - 5) = 0u;
        *(v5 + 544) = 0;
        *(v5 + 528) = 0u;
        *(v5 + 528) = *(v6 - 1);
        *(v5 + 544) = *v6;
        *(v6 - 2) = 0;
        *(v6 - 1) = 0;
        *v6 = 0;
        v5 += 552;
        a2[1] = v5;
        v30 = v6 + 1;
        v6 += 69;
        if (v30 == v4)
        {
          return a2;
        }
      }

      sub_49B008(a2, v31);
      a2[1] = v5;
      v32 = v6 + 1;
      v6 += 69;
    }

    while (v32 != v4);
  }

  return a2;
}

double sub_CDCCC4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v9 = 0uLL;
  v10 = 0;
  v4 = sub_F7359C(a1);
  sub_CDD52C(&v9, v4);
  v5 = sub_45AC50(a1);
  v6 = sub_588D8(a1);
  sub_CDD864(v5, v6, &v9);
  v7 = v10;
  result = *&v9;
  *a2 = v9;
  a2[2] = v7;
  return result;
}

void sub_CDCD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_CDCD6C(&a9);
  sub_CDCD6C(v9);
  _Unwind_Resume(a1);
}

void ***sub_CDCD6C(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_14:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        v6 = *(v3 - 6);
        if (v6)
        {
LABEL_10:
          v7 = *(v3 - 5);
          v8 = v6;
          if (v7 != v6)
          {
            do
            {
              v7 = sub_4547F0(v7 - 552);
            }

            while (v7 != v6);
            v8 = *v5;
          }

          *(v3 - 5) = v6;
          operator delete(v8);
        }
      }

      else
      {
        v5 = v3 - 6;
        v6 = *(v3 - 6);
        if (v6)
        {
          goto LABEL_10;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_14;
      }
    }
  }

  return a1;
}

uint64x2_t sub_CDCE34(uint64_t a1, unint64_t a2)
{
  v5 = (a1 + 72);
  v4 = *(a1 + 72);
  if (v4)
  {
    if (*(a1 + 56) == a2)
    {
      goto LABEL_7;
    }

    v6 = malloc_type_realloc(*(a1 + 72), 8 * a2, 0x100004087442A64uLL);
    if (!v6)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v4);
      exit(1);
    }
  }

  else
  {
    v6 = malloc_type_malloc(8 * a2, 0x100004087442A64uLL);
  }

  *v5 = v6;
  v4 = v6;
LABEL_7:
  if (!a2)
  {
    goto LABEL_17;
  }

  v7 = &v4[8 * a2];
  v8 = (a1 + 64);
  v9 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v9 < 0xF)
  {
    v10 = v4;
    goto LABEL_16;
  }

  if (v4 < v5 && v8 < v7)
  {
    v10 = v4;
    do
    {
LABEL_16:
      *v10 = *v8;
      v10 += 8;
    }

    while (v10 != v7);
    goto LABEL_17;
  }

  v11 = v9 + 1;
  v12 = (v9 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v10 = &v4[8 * v12];
  v13 = vld1q_dup_f64(v8);
  v14 = (v4 + 16);
  v15 = v12;
  do
  {
    v14[-1] = v13;
    *v14 = v13;
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  if (v11 != v12)
  {
    goto LABEL_16;
  }

LABEL_17:
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

uint64x2_t sub_CDCF84(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 232);
  if (v4)
  {
    if (*(a1 + 136) == a2)
    {
      goto LABEL_7;
    }

    v5 = malloc_type_realloc(*(a1 + 232), 88 * a2, 0x10600402A912362uLL);
    if (!v5)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v4);
      exit(1);
    }
  }

  else
  {
    v5 = malloc_type_malloc(88 * a2, 0x10600402A912362uLL);
  }

  *(a1 + 232) = v5;
  v4 = v5;
LABEL_7:
  if (a2)
  {
    v6 = 88 * a2;
    do
    {
      v7 = *(a1 + 160);
      *v4 = *(a1 + 144);
      v4[1] = v7;
      v8 = *(a1 + 176);
      v9 = *(a1 + 192);
      v10 = *(a1 + 208);
      *(v4 + 10) = *(a1 + 224);
      v4[3] = v9;
      v4[4] = v10;
      v4[2] = v8;
      v4 = (v4 + 88);
      v6 -= 88;
    }

    while (v6);
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_CDD094(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v24 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 24 * v2;
  __p = 0;
  v21 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v22 = 24 * v2 + 24;
  v23 = 0;
  sub_CDD28C(a1, &__p);
  v7 = a1[1];
  v8 = v21;
  v9 = v22;
  if (v22 != v21)
  {
    v10 = v22;
    while (1)
    {
      v13 = *(v10 - 3);
      v10 -= 3;
      v12 = v13;
      v22 = v10;
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = *(v9 - 16);
      v11 = v12;
      if (v14 != v12)
      {
        break;
      }

LABEL_13:
      *(v9 - 16) = v12;
      operator delete(v11);
      v10 = v22;
LABEL_14:
      v9 = v10;
      if (v10 == v8)
      {
        goto LABEL_27;
      }
    }

    while (1)
    {
      if (*(v14 - 1) < 0)
      {
        operator delete(*(v14 - 3));
        v15 = v14 - 6;
        v16 = *(v14 - 6);
        if (v16)
        {
LABEL_24:
          v17 = *(v14 - 5);
          v18 = v16;
          if (v17 != v16)
          {
            do
            {
              v17 = sub_4547F0(v17 - 552);
            }

            while (v17 != v16);
            v18 = *v15;
          }

          *(v14 - 5) = v16;
          operator delete(v18);
        }
      }

      else
      {
        v15 = v14 - 6;
        v16 = *(v14 - 6);
        if (v16)
        {
          goto LABEL_24;
        }
      }

      v14 = v15;
      if (v15 == v12)
      {
        v11 = *v10;
        goto LABEL_13;
      }
    }
  }

LABEL_27:
  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_CDD278(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD3FC(va);
  _Unwind_Resume(a1);
}

void sub_CDD28C(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v7;
      v8[2] = v7[2];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      v7 += 3;
      v8 += 3;
    }

    while (v7 != v4);
    while (1)
    {
      v10 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }

      v11 = v5[1];
      v9 = *v5;
      if (v11 != v10)
      {
        break;
      }

LABEL_6:
      v5[1] = v10;
      operator delete(v9);
LABEL_7:
      v5 += 3;
      if (v5 == v4)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      if (*(v11 - 1) < 0)
      {
        operator delete(*(v11 - 3));
        v12 = v11 - 6;
        v13 = *(v11 - 6);
        if (v13)
        {
LABEL_17:
          v14 = *(v11 - 5);
          v15 = v13;
          if (v14 != v13)
          {
            do
            {
              v14 = sub_4547F0(v14 - 552);
            }

            while (v14 != v13);
            v15 = *v12;
          }

          *(v11 - 5) = v13;
          operator delete(v15);
        }
      }

      else
      {
        v12 = v11 - 6;
        v13 = *(v11 - 6);
        if (v13)
        {
          goto LABEL_17;
        }
      }

      v11 = v12;
      if (v12 == v10)
      {
        v9 = *v5;
        goto LABEL_6;
      }
    }
  }

LABEL_20:
  a2[1] = v6;
  v16 = *a1;
  *a1 = v6;
  *(a1 + 8) = v16;
  a2[1] = v16;
  v17 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v17;
  v18 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
}

uint64_t sub_CDD3FC(uint64_t a1)
{
  sub_CDD434(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_CDD434(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    v5 = *(a1 + 16);
    while (1)
    {
      v8 = *(v5 - 3);
      v5 -= 3;
      v7 = v8;
      *(a1 + 16) = v5;
      if (!v8)
      {
        goto LABEL_5;
      }

      v9 = *(v2 - 2);
      v6 = v7;
      if (v9 != v7)
      {
        break;
      }

LABEL_4:
      *(v2 - 2) = v7;
      operator delete(v6);
      v5 = *(a1 + 16);
LABEL_5:
      v2 = v5;
      if (v5 == a2)
      {
        return;
      }
    }

    while (1)
    {
      if (*(v9 - 1) < 0)
      {
        operator delete(*(v9 - 3));
        v10 = v9 - 6;
        v11 = *(v9 - 6);
        if (v11)
        {
LABEL_15:
          v12 = *(v9 - 5);
          v13 = v11;
          if (v12 != v11)
          {
            do
            {
              v12 = sub_4547F0(v12 - 552);
            }

            while (v12 != v11);
            v13 = *v10;
          }

          *(v9 - 5) = v11;
          operator delete(v13);
        }
      }

      else
      {
        v10 = v9 - 6;
        v11 = *(v9 - 6);
        if (v11)
        {
          goto LABEL_15;
        }
      }

      v9 = v10;
      if (v10 == v7)
      {
        v6 = *v5;
        goto LABEL_4;
      }
    }
  }
}

void *sub_CDD52C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_CDD660(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_CDD674(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v9 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      v8 += 48;
    }

    while (v7 != v4);
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
        v10 = *v5;
        if (*v5)
        {
LABEL_11:
          v11 = *(v5 + 8);
          v12 = v10;
          if (v11 != v10)
          {
            do
            {
              v11 = sub_4547F0(v11 - 552);
            }

            while (v11 != v10);
            v12 = *v5;
          }

          *(v5 + 8) = v10;
          operator delete(v12);
        }
      }

      else
      {
        v10 = *v5;
        if (*v5)
        {
          goto LABEL_11;
        }
      }

      v5 += 48;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v13 = *a1;
  *a1 = v6;
  a1[1] = v13;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

uint64_t sub_CDD7B0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 48);
    *(a1 + 16) = i - 48;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      v5 = *v4;
      if (!*v4)
      {
        continue;
      }
    }

    else
    {
      v5 = *v4;
      if (!*v4)
      {
        continue;
      }
    }

    v6 = *(i - 40);
    v7 = v5;
    if (v6 != v5)
    {
      do
      {
        v6 = sub_4547F0(v6 - 552);
      }

      while (v6 != v5);
      v7 = *v4;
    }

    *(i - 40) = v5;
    operator delete(v7);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_CDD864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_F6516C(&v4, a1);
  }

  return a3;
}

uint64_t sub_CDD9A4(uint64_t *a1, uint64_t a2)
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

  v20 = a1;
  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 48 * v2;
  __p = 0;
  v17 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v6 + 24) = v7;
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v18 = 48 * v2 + 48;
  v19 = 0;
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
LABEL_17:
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
        goto LABEL_17;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_CDDB4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void *sub_CDDB60(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 5) < 0x2AAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      a4[3] = v5[3];
      v5 += 5;
      a4 += 4;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_CDDC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_93BDE0(&a9);
  _Unwind_Resume(a1);
}

void sub_CDDCC0(uint64_t a1, unint64_t a2)
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
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
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

    v26 = a1;
    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    __p = 0;
    v23 = 24 * v5;
    v25 = 0;
    v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero((24 * v5), v10);
    v24 = (24 * v5 + v10);
    sub_CDD28C(a1, &__p);
    v11 = v23;
    v12 = v24;
    if (v24 != v23)
    {
      v13 = v24;
      while (1)
      {
        v16 = *(v13 - 3);
        v13 -= 3;
        v15 = v16;
        v24 = v13;
        if (!v16)
        {
          goto LABEL_18;
        }

        v17 = *(v12 - 2);
        v14 = v15;
        if (v17 != v15)
        {
          break;
        }

LABEL_17:
        *(v12 - 2) = v15;
        operator delete(v14);
        v13 = v24;
LABEL_18:
        v12 = v13;
        if (v13 == v11)
        {
          goto LABEL_31;
        }
      }

      while (1)
      {
        if (*(v17 - 1) < 0)
        {
          operator delete(*(v17 - 3));
          v18 = v17 - 6;
          v19 = *(v17 - 6);
          if (v19)
          {
LABEL_28:
            v20 = *(v17 - 5);
            v21 = v19;
            if (v20 != v19)
            {
              do
              {
                v20 = sub_4547F0(v20 - 552);
              }

              while (v20 != v19);
              v21 = *v18;
            }

            *(v17 - 5) = v19;
            operator delete(v21);
          }
        }

        else
        {
          v18 = v17 - 6;
          v19 = *(v17 - 6);
          if (v19)
          {
            goto LABEL_28;
          }
        }

        v17 = v18;
        if (v18 == v15)
        {
          v14 = *v13;
          goto LABEL_17;
        }
      }
    }

LABEL_31:
    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_CDDF04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD3FC(va);
  _Unwind_Resume(a1);
}

void sub_CDDF18(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = *(a1 + 8);
    while (1)
    {
      v8 = *(v5 - 3);
      v5 -= 3;
      v7 = v8;
      if (!v8)
      {
        goto LABEL_5;
      }

      v9 = *(v4 - 2);
      v6 = v7;
      if (v9 != v7)
      {
        break;
      }

LABEL_4:
      *(v4 - 2) = v7;
      operator delete(v6);
LABEL_5:
      v4 = v5;
      if (v5 == a2)
      {
        goto LABEL_18;
      }
    }

    while (1)
    {
      if (*(v9 - 1) < 0)
      {
        operator delete(*(v9 - 3));
        v10 = v9 - 6;
        v11 = *(v9 - 6);
        if (v11)
        {
LABEL_15:
          v12 = *(v9 - 5);
          v13 = v11;
          if (v12 != v11)
          {
            do
            {
              v12 = sub_4547F0(v12 - 552);
            }

            while (v12 != v11);
            v13 = *v10;
          }

          *(v9 - 5) = v11;
          operator delete(v13);
        }
      }

      else
      {
        v10 = v9 - 6;
        v11 = *(v9 - 6);
        if (v11)
        {
          goto LABEL_15;
        }
      }

      v9 = v10;
      if (v10 == v7)
      {
        v6 = *v5;
        goto LABEL_4;
      }
    }
  }

LABEL_18:
  *(a1 + 8) = a2;
}

void sub_CDE00C(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_45AC50(a1);
  for (i = sub_588D8(a1); v6 != i; v6 += 552)
  {
    sub_117B560(v6, a2, __p, 0.95);
    if (sub_F63D58(__p))
    {
      sub_117B560(v6, a2, v17, 0.0);
      v8 = __p[0];
      if (__p[0])
      {
        v9 = __p[1];
        v10 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v9 = sub_4547F0(v9 - 552);
          }

          while (v9 != v8);
          v10 = __p[0];
        }

        __p[1] = v8;
        operator delete(v10);
      }

      *__p = *v17;
      v22 = v18;
      v17[1] = 0;
      v18 = 0;
      v17[0] = 0;
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23);
        v11 = v17[0];
        v23 = v19;
        v24 = v20;
        HIBYTE(v20) = 0;
        LOBYTE(v19) = 0;
        if (v17[0])
        {
          v12 = v17[1];
          v13 = v17[0];
          if (v17[1] != v17[0])
          {
            do
            {
              v12 = sub_4547F0(v12 - 552);
            }

            while (v12 != v11);
            v13 = v17[0];
          }

          v17[1] = v11;
          operator delete(v13);
        }
      }

      else
      {
        v23 = v19;
        v24 = v20;
      }
    }

    if (!sub_F63D58(__p))
    {
      sub_F739AC(a3, __p, 0);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
      v14 = __p[0];
      if (__p[0])
      {
LABEL_25:
        v15 = __p[1];
        v16 = v14;
        if (__p[1] != v14)
        {
          do
          {
            v15 = sub_4547F0(v15 - 552);
          }

          while (v15 != v14);
          v16 = __p[0];
        }

        __p[1] = v14;
        operator delete(v16);
      }
    }

    else
    {
      v14 = __p[0];
      if (__p[0])
      {
        goto LABEL_25;
      }
    }
  }
}

void sub_CDE238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_454784(va);
  sub_CDCD6C(v7);
  _Unwind_Resume(a1);
}

void *sub_CDE26C(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 5) < 0x2AAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      a4[3] = v5[3];
      v5 += 4;
      a4 += 4;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_CDE3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_93BDE0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_CDE3CC(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_CDE440(void *a1)
{
  std::ios::~ios();
  v2 = a1[17];
  if (v2)
  {
    a1[18] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_CDE49C(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    a1[19] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    do
    {
      v7 = *v3;
      v8 = v3[8];
      if (v8)
      {
        do
        {
          v9 = *v8;
          operator delete(v8);
          v8 = v9;
        }

        while (v9);
      }

      v10 = v3[6];
      v3[6] = 0;
      if (v10)
      {
        operator delete(v10);
      }

      operator delete(v3);
      v3 = v7;
    }

    while (v7);
  }

  v4 = a1[12];
  a1[12] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    a1[7] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_CDE540(uint64_t a1)
{
  v2 = *(a1 + 4888);
  if (v2)
  {
    *(a1 + 4896) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 4864);
  if (v3)
  {
    *(a1 + 4872) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 4840);
  if (v4)
  {
    *(a1 + 4848) = v4;
    operator delete(v4);
  }

  sub_3E3EF8((a1 + 624));
  if (*(a1 + 575) < 0)
  {
    operator delete(*(a1 + 552));
  }

  v5 = *(a1 + 488);
  if (v5)
  {
    do
    {
      v6 = *v5;
      sub_253B4((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(a1 + 472);
  *(a1 + 472) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

void *sub_CDE5E8(void *a1)
{
  v2 = a1[1284];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[1254];
  if (v3)
  {
    free(v3);
  }

  sub_CDC860(a1 + 577);
  v4 = a1[571];
  if (v4)
  {
    a1[572] = v4;
    operator delete(v4);
  }

  v5 = a1[555];
  if (v5)
  {
    a1[556] = v5;
    operator delete(v5);
  }

  v6 = a1[546];
  if (v6)
  {
    a1[547] = v6;
    operator delete(v6);
  }

  v7 = a1[535];
  if (v7)
  {
    a1[536] = v7;
    operator delete(v7);
  }

  v8 = a1[532];
  if (v8)
  {
    a1[533] = v8;
    operator delete(v8);
  }

  v9 = a1[529];
  if (v9)
  {
    a1[530] = v9;
    operator delete(v9);
  }

  sub_3E3EF8(a1 + 2);
  return a1;
}

void sub_CDE698()
{
  byte_27B42BF = 3;
  LODWORD(qword_27B42A8) = 5136193;
  byte_27B42D7 = 3;
  LODWORD(qword_27B42C0) = 5136194;
  byte_27B42EF = 3;
  LODWORD(qword_27B42D8) = 5136195;
  byte_27B4307 = 15;
  strcpy(&qword_27B42F0, "vehicle_mass_kg");
  byte_27B431F = 21;
  strcpy(&xmmword_27B4308, "vehicle_cargo_mass_kg");
  byte_27B4337 = 19;
  strcpy(&qword_27B4320, "vehicle_aux_power_w");
  byte_27B434F = 15;
  strcpy(&qword_27B4338, "dcdc_efficiency");
  strcpy(&qword_27B4350, "drive_train_efficiency");
  HIBYTE(word_27B4366) = 22;
  operator new();
}

void sub_CDE8B8(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27B4366) < 0)
  {
    sub_21E3CA8();
  }

  sub_21E3CB4();
  _Unwind_Resume(a1);
}

void sub_CDE8D8(uint64_t a1)
{
  sub_7E9A4(v7);
  *v5 = 0u;
  memset(v6, 0, 25);
  sub_4EDB30(*(a1 + 16));
  v2 = 0;
  v3 = 0;
  v4 = 0;
  sub_11268E0(v8, *(a1 + 24), *(a1 + 25), *(a1 + 28), *(a1 + 8), *a1);
}

void sub_CDF01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void **a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_CDF930(&a35);
  sub_60A84C(&a14);
  sub_CDFC14(&a17);
  _Unwind_Resume(a1);
}

void sub_CDF09C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_CDF0BC(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v11[1] = 0;
  v11[2] = 0;
  *v11 = 0;
  sub_CDF208(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 7);
  v6 = 24 * v2 + 24;
  v7 = *(a1 + 8);
  v8 = 24 * v2 + *a1 - v7;
  sub_CDF5B0(a1, *a1, v7, (v11 + *a1 - v7));
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_CDF1F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDF7D4(va);
  _Unwind_Resume(a1);
}

void sub_CDF208(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 57))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_CDF2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 128;
    v15 = -v12;
    do
    {
      sub_60B38C(v14);
      v14 -= 128;
      v15 += 128;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_CDF538(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_CDF310(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_CDF41C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xE21A291C077975B9 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  if (*(a2 + 127) < 0)
  {
    sub_325C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
  }

  return a1;
}

void sub_CDF3EC(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void sub_CDF41C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x3BCBADC7F10D15)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_CDF504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 1096;
    v15 = -v12;
    do
    {
      v14 = sub_3EEA68(v14) - 1096;
      v15 += 1096;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_3EEC50(&a9);
  _Unwind_Resume(a1);
}

void ***sub_CDF538(void ***result)
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
          v4 -= 128;
          sub_60B38C(v4);
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

void sub_CDF5B0(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v4;
      a4[2] = v4[2];
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      v4 += 3;
      a4 += 3;
    }

    while (v4 != a3);
    if (a2 != a3)
    {
      v23 = a3;
      do
      {
        v7 = *a2;
        if (*a2)
        {
          v5 = a2;
          v8 = a2[1];
          v6 = *a2;
          if (v8 != v7)
          {
            v24 = a2;
            while (1)
            {
              if (*(v8 - 1) < 0)
              {
                operator delete(*(v8 - 3));
                v10 = *(v8 - 13);
                if (v10)
                {
LABEL_20:
                  v13 = *(v8 - 12);
                  v14 = v10;
                  if (v13 != v10)
                  {
                    do
                    {
                      v13 = sub_3EEA68(v13 - 1096);
                    }

                    while (v13 != v10);
                    v14 = *(v8 - 13);
                  }

                  *(v8 - 12) = v10;
                  operator delete(v14);
                  v11 = v8 - 16;
                  v12 = *(v8 - 16);
                  if (!v12)
                  {
                    goto LABEL_14;
                  }

LABEL_24:
                  v15 = *(v8 - 15);
                  v9 = v12;
                  if (v15 != v12)
                  {
                    do
                    {
                      v16 = *(v15 - 3);
                      if (v16)
                      {
                        v17 = *(v15 - 2);
                        v18 = *(v15 - 3);
                        if (v17 != v16)
                        {
                          do
                          {
                            v19 = v17 - 32;
                            v20 = *(v17 - 2);
                            if (v20 != -1)
                            {
                              (off_2673230[v20])(&v25, v17 - 32);
                            }

                            *(v17 - 2) = -1;
                            v17 -= 32;
                          }

                          while (v19 != v16);
                          v18 = *(v15 - 3);
                        }

                        *(v15 - 2) = v16;
                        operator delete(v18);
                      }

                      v21 = *(v15 - 8);
                      if (v21 != -1)
                      {
                        (off_2673230[v21])(&v26, v15 - 7);
                      }

                      v22 = v15 - 10;
                      *(v15 - 8) = -1;
                      if (*(v15 - 57) < 0)
                      {
                        operator delete(*v22);
                      }

                      v15 -= 10;
                    }

                    while (v22 != v12);
                    v9 = *v11;
                  }

                  *(v8 - 15) = v12;
                  operator delete(v9);
                  goto LABEL_14;
                }
              }

              else
              {
                v10 = *(v8 - 13);
                if (v10)
                {
                  goto LABEL_20;
                }
              }

              v11 = v8 - 16;
              v12 = *(v8 - 16);
              if (v12)
              {
                goto LABEL_24;
              }

LABEL_14:
              v8 = v11;
              if (v11 == v7)
              {
                v5 = v24;
                v6 = *v24;
                break;
              }
            }
          }

          v5[1] = v7;
          operator delete(v6);
          a3 = v23;
          a2 = v5;
        }

        a2 += 3;
      }

      while (a2 != a3);
    }
  }
}

uint64_t sub_CDF7D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = *(a1 + 16);
    do
    {
      v6 = *(v4 - 3);
      v4 -= 3;
      v5 = v6;
      *(a1 + 16) = v4;
      if (v6)
      {
        v7 = *(v3 - 2);
        v8 = v5;
        if (v7 != v5)
        {
          do
          {
            v7 -= 128;
            sub_60B38C(v7);
          }

          while (v7 != v5);
          v8 = *v4;
        }

        *(v3 - 2) = v5;
        operator delete(v8);
        v4 = *(a1 + 16);
      }

      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_CDF878(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *(a1 + 16);
      v4 = *(a1 + 8);
      if (v3 != v2)
      {
        do
        {
          v3 -= 128;
          sub_60B38C(v3);
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
LABEL_15:
      operator delete(v4);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v6 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v6 != v5)
      {
        do
        {
          if (*(v6 - 1) < 0)
          {
            operator delete(*(v6 - 24));
          }

          v6 -= 32;
        }

        while (v6 != v5);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v5;
      goto LABEL_15;
    }
  }

  return a1;
}

uint64_t sub_CDF930(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v3 = *(a1 + 312);
    v4 = *(a1 + 304);
    if (v3 != v2)
    {
      v5 = *(a1 + 312);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 304);
    }

    *(a1 + 312) = v2;
    operator delete(v4);
  }

  v8 = *(a1 + 280);
  if (v8)
  {
    *(a1 + 288) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 256);
  if (v9)
  {
    v10 = *(a1 + 264);
    v11 = *(a1 + 256);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 8);
        if (v12)
        {
          free(v12);
        }

        v10 -= 80;
      }

      while (v10 != v9);
      v11 = *(a1 + 256);
    }

    *(a1 + 264) = v9;
    operator delete(v11);
  }

  v13 = *(a1 + 224);
  if (v13)
  {
    v14 = *(a1 + 232);
    v15 = *(a1 + 224);
    if (v14 == v13)
    {
LABEL_35:
      *(a1 + 232) = v13;
      operator delete(v15);
      goto LABEL_36;
    }

    while (1)
    {
      if (*(v14 - 57) < 0)
      {
        operator delete(*(v14 - 10));
        if (*(v14 - 81) < 0)
        {
LABEL_32:
          operator delete(*(v14 - 13));
          v16 = *(v14 - 16);
          if (!v16)
          {
            goto LABEL_27;
          }

LABEL_26:
          *(v14 - 15) = v16;
          operator delete(v16);
          goto LABEL_27;
        }
      }

      else if (*(v14 - 81) < 0)
      {
        goto LABEL_32;
      }

      v16 = *(v14 - 16);
      if (v16)
      {
        goto LABEL_26;
      }

LABEL_27:
      v17 = *(v14 - 19);
      if (v17)
      {
        *(v14 - 18) = v17;
        operator delete(v17);
      }

      v18 = v14 - 22;
      if (*(v14 - 153) < 0)
      {
        operator delete(*v18);
      }

      v14 -= 22;
      if (v18 == v13)
      {
        v15 = *(a1 + 224);
        goto LABEL_35;
      }
    }
  }

LABEL_36:
  sub_CDFAC8((a1 + 112));
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  return a1;
}

void *sub_CDFAC8(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v3 = a1[11];
    v4 = a1[10];
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
      v4 = a1[10];
    }

    a1[11] = v2;
    operator delete(v4);
  }

  v6 = a1[7];
  if (v6)
  {
    v7 = a1[8];
    v8 = a1[7];
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
      v8 = a1[7];
    }

    a1[8] = v6;
    operator delete(v8);
  }

  v10 = a1[4];
  if (v10)
  {
    v11 = a1[5];
    v12 = a1[4];
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
      v12 = a1[4];
    }

    a1[5] = v10;
    operator delete(v12);
  }

  v14 = a1[1];
  if (v14)
  {
    v15 = a1[2];
    v16 = a1[1];
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
      v16 = a1[1];
    }

    a1[2] = v14;
    operator delete(v16);
  }

  return a1;
}

void ***sub_CDFC14(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 3;
        v6 = v7;
        if (v7)
        {
          v8 = *(v3 - 2);
          v9 = v6;
          if (v8 != v6)
          {
            do
            {
              v8 -= 128;
              sub_60B38C(v8);
            }

            while (v8 != v6);
            v9 = *v5;
          }

          *(v3 - 2) = v6;
          operator delete(v9);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t **sub_CDFCBC(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v24, a2, v5);
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
    operator new();
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

void sub_CE00C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_CE00D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_CE00EC()
{
  strcpy(v0, "display_traversal_time");
  v0[23] = 22;
  v0[24] = 0;
  v2 = 272;
  strcpy(v1, "num_name_changes");
  operator new();
}

void sub_CE10A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p)
{
  while (1)
  {
    v31 = *(a9 - 9);
    a9 -= 4;
    if (v31 < 0)
    {
      operator delete(*a9);
    }

    if (a9 == &__p)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_CE1500(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v90);
  v4 = a1[1];
  BYTE7(v91[1]) = 11;
  strcpy(v91, "DrivingDooM");
  __p = 0;
  v84 = 0;
  v85 = 0;
  v5 = sub_3AEC94(v4, v91, &__p);
  sub_5ADDC(v86, v5);
  v6 = __p;
  if (__p)
  {
    v7 = v84;
    v8 = __p;
    if (v84 != __p)
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
      v8 = __p;
    }

    v84 = v6;
    operator delete(v8);
  }

  if (SBYTE7(v91[1]) < 0)
  {
    operator delete(*&v91[0]);
  }

  BYTE7(v91[1]) = 19;
  strcpy(v91, "supported_countries");
  v10 = sub_5F680(v86, v91);
  sub_5B8CC(&__p, v10);
  if (SBYTE7(v91[1]) < 0)
  {
    operator delete(*&v91[0]);
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v11 = __p;
    v12 = v84;
    v13 = v84 - __p;
    if (v84 == __p)
    {
      goto LABEL_18;
    }

LABEL_15:
    if ((v13 >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v80 = 0;
  v81 = 0;
  v82 = 0;
  v11 = __p;
  v12 = v84;
  v13 = v84 - __p;
  if (v84 != __p)
  {
    goto LABEL_15;
  }

LABEL_18:
  while (v11 != v12)
  {
    if (*(v11 + 2) != 1)
    {
      sub_5AF20();
    }

    v14 = *v11;
    if (*(*v11 + 23) < 0)
    {
      sub_325C(v91, *v14, *(v14 + 1));
    }

    else
    {
      v15 = *v14;
      *&v91[1] = *(v14 + 2);
      v91[0] = v15;
    }

    v16 = v81;
    if (v81 >= v82)
    {
      v81 = sub_652F8(&v80, v91);
      if ((SBYTE7(v91[1]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_28;
    }

    if ((SBYTE7(v91[1]) & 0x80000000) == 0)
    {
      v17 = v91[0];
      *(v81 + 2) = *&v91[1];
      *v16 = v17;
      v81 = v16 + 24;
      if ((SBYTE7(v91[1]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_28:
      operator delete(*&v91[0]);
      goto LABEL_17;
    }

    sub_325C(v81, *&v91[0], *(&v91[0] + 1));
    v81 = v16 + 24;
    if (SBYTE7(v91[1]) < 0)
    {
      goto LABEL_28;
    }

LABEL_17:
    v11 += 2;
  }

  v75 = a2;
  v18 = sub_3AF6B4(a1[1]);
  memset(v91, 0, 24);
  v19 = **a1;
  v20 = *(*a1 + 8);
  if (v19 == v20)
  {
    v45 = 1;
    goto LABEL_98;
  }

  v21 = v18;
  do
  {
    v22 = sub_2B51D8(v21, *(*(v19 + 176) + 32));
    v23 = (v22 - *v22);
    if (*v23 >= 0xDu && (v24 = v23[6]) != 0)
    {
      v25 = 4 * *(v22 + v24);
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_2AF704(v21 + 3896, 1u, 0);
    v27 = &v26[-*v26];
    if (*v27 < 0xBu)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(v27 + 5);
      if (v28)
      {
        v28 += &v26[*&v26[v28]];
      }
    }

    v29 = (v28 + v25 + 4 + *(v28 + v25 + 4));
    v30 = (v29 - *v29);
    if (*v30 >= 5u && (v31 = v30[2]) != 0)
    {
      v32 = (v29 + v31);
      v33 = *v32;
      v34 = *(v32 + v33);
      if (v34 >= 0x17)
      {
        operator new();
      }

      v79 = *(v32 + v33);
      if (v34)
      {
        memcpy(__dst, v32 + v33 + 4, v34);
      }

      v35 = (__dst + v34);
    }

    else
    {
      v79 = 0;
      v35 = __dst;
    }

    *v35 = 0;
    v76 = *(&v91[0] + 1);
    v77 = *&v91[0];
    v36 = sub_4BDEE8(&v77, &v76, __dst);
    v37 = v36;
    if (*(&v91[0] + 1) == v36)
    {
      goto LABEL_64;
    }

    v38 = *(v36 + 23);
    if (v38 >= 0)
    {
      v39 = *(v36 + 23);
    }

    else
    {
      v39 = v36[1];
    }

    v40 = v79;
    v41 = v79;
    if ((v79 & 0x80u) != 0)
    {
      v40 = __dst[1];
    }

    if (v39 != v40)
    {
      goto LABEL_64;
    }

    if (v38 < 0)
    {
      v36 = *v36;
    }

    v42 = (v79 & 0x80u) == 0 ? __dst : __dst[0];
    if (memcmp(v36, v42, v39))
    {
LABEL_64:
      sub_97D73C(v91, v37, __dst);
      v41 = v79;
    }

    if ((v41 & 0x80) != 0)
    {
      operator delete(__dst[0]);
    }

    v19 += 240;
  }

  while (v19 != v20);
  v44 = *(&v91[0] + 1);
  v43 = *&v91[0];
  v45 = *&v91[0] == *(&v91[0] + 1);
  if (*&v91[0] != *(&v91[0] + 1))
  {
    v46 = v80;
    v47 = v81;
    if (v80 != v81)
    {
      while (2)
      {
        v48 = *(v43 + 23);
        if (v48 >= 0)
        {
          v49 = v43;
        }

        else
        {
          v49 = *v43;
        }

        if (v48 >= 0)
        {
          v50 = *(v43 + 23);
        }

        else
        {
          v50 = v43[1];
        }

        v51 = *(v46 + 23);
        if (v51 >= 0)
        {
          v52 = v46;
        }

        else
        {
          v52 = *v46;
        }

        if (v51 >= 0)
        {
          v53 = *(v46 + 23);
        }

        else
        {
          v53 = v46[1];
        }

        if (v53 >= v50)
        {
          v54 = v50;
        }

        else
        {
          v54 = v53;
        }

        v55 = memcmp(v49, v52, v54);
        if (v55)
        {
          if (v55 < 0)
          {
            goto LABEL_97;
          }
        }

        else if (v50 < v53)
        {
LABEL_97:
          v45 = 0;
          break;
        }

        v56 = memcmp(v52, v49, v54);
        if (v56)
        {
          if ((v56 & 0x80000000) == 0)
          {
            goto LABEL_90;
          }
        }

        else if (v53 >= v50)
        {
LABEL_90:
          v43 += 3;
        }

        v45 = v43 == v44;
        if (v43 == v44)
        {
          break;
        }

        v46 += 3;
        if (v46 == v47)
        {
          break;
        }

        continue;
      }
    }
  }

LABEL_98:
  v57 = sub_7EA60(v90);
  *v75 = 1;
  *(v75 + 8) = v45;
  *(v75 + 9) = *v89;
  *(v75 + 12) = *&v89[3];
  *(v75 + 16) = vcvtad_u64_f64(v57);
  *(v75 + 24) = !v45;
  *(v75 + 25) = *v88;
  *(v75 + 28) = *&v88[3];
  v58 = *&v91[0];
  if (*&v91[0])
  {
    v59 = *(&v91[0] + 1);
    v60 = *&v91[0];
    if (*(&v91[0] + 1) != *&v91[0])
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
      v60 = *&v91[0];
    }

    *(&v91[0] + 1) = v58;
    operator delete(v60);
  }

  v62 = v80;
  if (v80)
  {
    v63 = v81;
    v64 = v80;
    if (v81 != v80)
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
      v64 = v80;
    }

    v81 = v62;
    operator delete(v64);
  }

  v66 = __p;
  if (__p)
  {
    v67 = v84;
    v68 = __p;
    if (v84 != __p)
    {
      do
      {
        v69 = v67 - 2;
        v70 = *(v67 - 2);
        if (v70 != -1)
        {
          (off_2673260[v70])(v91, v67 - 2);
        }

        *(v67 - 2) = -1;
        v67 -= 2;
      }

      while (v69 != v66);
      v68 = __p;
    }

    v84 = v66;
    operator delete(v68);
  }

  v71 = v87;
  if (v87)
  {
    do
    {
      v72 = *v71;
      v73 = *(v71 + 12);
      if (v73 != -1)
      {
        (off_2673260[v73])(v91, v71 + 5);
      }

      *(v71 + 12) = -1;
      if (*(v71 + 39) < 0)
      {
        operator delete(v71[2]);
      }

      operator delete(v71);
      v71 = v72;
    }

    while (v72);
  }

  v74 = v86[0];
  v86[0] = 0;
  if (v74)
  {
    operator delete(v74);
  }
}

void sub_CE1C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void **a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_1A104(&a20);
  sub_6BC10(&a23);
  sub_6BB60(&a26);
  _Unwind_Resume(a1);
}

void sub_CE1CE0(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_7E9A4(v3);
  sub_5E9794(*(a1 + 1584), (a1 + 968), &v2);
}

void sub_CE1D84()
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
  xmmword_27B4408 = 0u;
  unk_27B4418 = 0u;
  dword_27B4428 = 1065353216;
  sub_3A9A34(&xmmword_27B4408, v0);
  sub_3A9A34(&xmmword_27B4408, v3);
  sub_3A9A34(&xmmword_27B4408, __p);
  sub_3A9A34(&xmmword_27B4408, v9);
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
    qword_27B43E0 = 0;
    qword_27B43E8 = 0;
    qword_27B43D8 = 0;
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

void sub_CE1FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B43F0)
  {
    qword_27B43F8 = qword_27B43F0;
    operator delete(qword_27B43F0);
  }

  _Unwind_Resume(exception_object);
}

void sub_CE2078()
{
  v0 = __chkstk_darwin();
  sub_7E9A4(v7);
  sub_1757EA4(v5, 0, 0);
  sub_1757EA4(v6, 0, 0);
  memset(&v6[576], 0, 33);
  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  sub_EDF664(v0, v1);
}

void sub_CE2450(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  __p = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_CE2504(va);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  sub_CE2648(va1);
  sub_5287C0(&STACK[0xA00]);
  sub_1758FB8(v2 + 576);
  sub_1758FB8(&STACK[0xCB0]);
  _Unwind_Resume(a1);
}

void **sub_CE2504(void **a1)
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
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              v6 -= 72;
              sub_3E4690(v6);
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_CE25A8(uint64_t a1, uint64_t a2)
{
  sub_1757EA4(a1, 0, 0);
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_175C55C(a1, a2);
    }

    else
    {
      sub_175C1D0(a1, a2);
    }
  }

  return a1;
}

void *sub_CE2648(void *a1)
{
  sub_4773BC((a1 + 273));
  v2 = a1 + 138;
  a1[138] = off_266AC30;
  v3 = 132;
  do
  {
    v4 = &v2[v3];
    v3 -= 6;
    v5 = *(v4 - 3);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = v4 - 5;
      do
      {
        if ((*(v2[v3] + v7) & 0x80000000) == 0)
        {
          v9 = *v8 + v6;
          v10 = *(v9 + 8);
          if (v10)
          {
            *(v9 + 16) = v10;
            operator delete(v10);
            v5 = *(v4 - 3);
          }
        }

        ++v7;
        v6 += 32;
      }

      while (v7 != v5);
      operator delete(v2[v3]);
      v2[v3] = &unk_2290750;
      *(v4 - 1) = 0;
      *(v4 - 4) = 0;
      *(v4 - 3) = 0;
      *v8 = 0;
    }
  }

  while (v3 != 36);
  a1[138] = &off_266AB88;
  v11 = a1[165];
  if (v11)
  {
    a1[166] = v11;
    operator delete(v11);
  }

  v12 = a1 + 1;
  a1[1] = off_266AC30;
  v13 = 132;
  do
  {
    v14 = &v12[v13];
    v13 -= 6;
    v15 = *(v14 - 3);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = v14 - 5;
      do
      {
        if ((*(v12[v13] + v17) & 0x80000000) == 0)
        {
          v19 = *v18 + v16;
          v20 = *(v19 + 8);
          if (v20)
          {
            *(v19 + 16) = v20;
            operator delete(v20);
            v15 = *(v14 - 3);
          }
        }

        ++v17;
        v16 += 32;
      }

      while (v17 != v15);
      operator delete(v12[v13]);
      v12[v13] = &unk_2290750;
      *(v14 - 1) = 0;
      *(v14 - 4) = 0;
      *(v14 - 3) = 0;
      *v18 = 0;
    }
  }

  while (v13 != 36);
  a1[1] = &off_266AB88;
  v21 = a1[28];
  if (v21)
  {
    a1[29] = v21;
    operator delete(v21);
  }

  return a1;
}

void sub_CE2834()
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
  xmmword_27B4460 = 0u;
  *algn_27B4470 = 0u;
  dword_27B4480 = 1065353216;
  sub_3A9A34(&xmmword_27B4460, v0);
  sub_3A9A34(&xmmword_27B4460, v3);
  sub_3A9A34(&xmmword_27B4460, __p);
  sub_3A9A34(&xmmword_27B4460, v9);
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
    qword_27B4438 = 0;
    qword_27B4440 = 0;
    qword_27B4430 = 0;
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

void sub_CE2A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B4448)
  {
    qword_27B4450 = qword_27B4448;
    operator delete(qword_27B4448);
  }

  _Unwind_Resume(exception_object);
}

void sub_CE2B28(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *v29 = 0u;
  v30 = 0u;
  sub_7E9A4(v28);
  v3 = *(a1 + 8);
  HIBYTE(v32) = 11;
  strcpy(&__p, "DrivingDooM");
  v67 = 0uLL;
  v68 = 0;
  v4 = sub_3AEC94(v3, &__p, &v67);
  sub_5ADDC(v26, v4);
  v5 = v67;
  if (v67)
  {
    v6 = *(&v67 + 1);
    v7 = v67;
    if (*(&v67 + 1) != v67)
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
      v7 = v67;
    }

    *(&v67 + 1) = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  HIBYTE(v32) = 7;
  strcpy(&__p, "max_frc");
  sub_353010(v26, &__p);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p);
  }

  sub_438678(v25, *(a1 + 8), 2);
  v10 = **a1;
  v9 = *(*a1 + 8);
  v24 = v9;
  while (v10 != v9)
  {
    sub_4C37CC(v10, &__p);
    v51 = __p;
    v52 = v32;
    v54 = 0;
    v55 = 0;
    v53 = 0;
    if (v34 != v33)
    {
      if (((v34 - v33) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v56 = 0;
    v57 = 0;
    v58 = 0;
    if (v36 != v35)
    {
      if (((v36 - v35) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v43 = v37;
    v44 = v38;
    v46 = 0;
    v47 = 0;
    v45 = 0;
    if (v40 != v39)
    {
      if (((v40 - v39) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v48 = 0;
    v49 = 0;
    v50 = 0;
    if (v42 != v41)
    {
      if (((v42 - v41) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v67 = v51;
    v68 = v52;
    v70 = 0;
    v71 = 0;
    v69 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v59 = v43;
    v60 = v44;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }

    v10 += 128;
    v9 = v24;
  }

  v11 = v29[0];
  for (i = v29[1]; v11 != i; v11 += 128)
  {
    if (sub_4C4AC8(v11) == 2)
    {
      v13 = 6;
    }

    else
    {
      v13 = 5;
    }

    sub_4C515C(v11, v13);
  }

  v14 = vcvtad_u64_f64(sub_7EA60(v28));
  *a2 = 1;
  *(a2 + 8) = *v29;
  v15 = v30;
  v29[0] = 0;
  v29[1] = 0;
  *&v30 = 0;
  *(&v30 + 1) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v14;
  v16 = v27;
  if (v27)
  {
    do
    {
      v17 = *v16;
      v18 = *(v16 + 12);
      if (v18 != -1)
      {
        (off_26732A8[v18])(&__p, v16 + 5);
      }

      *(v16 + 12) = -1;
      if (*(v16 + 39) < 0)
      {
        operator delete(v16[2]);
      }

      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v19 = v26[0];
  v26[0] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = v29[0];
  if (v29[0])
  {
    v21 = v29[1];
    v22 = v29[0];
    if (v29[1] != v29[0])
    {
      do
      {
        v21 -= 128;
        sub_60B38C(v21);
      }

      while (v21 != v20);
      v22 = v29[0];
    }

    v29[1] = v20;
    operator delete(v22);
  }
}

void sub_CE349C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  sub_6BB60(&a29);
  sub_60A84C(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_CE3614(void **a1, uint64_t a2)
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

  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v18 = v2 << 7;
  sub_CE37CC(v2 << 7, a2);
  v7 = (v2 << 7) + 128;
  v8 = *a1;
  v9 = a1[1];
  v10 = v18 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v18 + *a1 - v9;
    do
    {
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *v12 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 40) = *(v11 + 5);
      *(v11 + 3) = 0;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      v13 = *(v11 + 3);
      v14 = *(v11 + 4);
      v15 = *(v11 + 5);
      *(v12 + 94) = *(v11 + 94);
      *(v12 + 64) = v14;
      *(v12 + 80) = v15;
      *(v12 + 48) = v13;
      v16 = *(v11 + 104);
      *(v12 + 120) = *(v11 + 15);
      *(v12 + 104) = v16;
      *(v11 + 14) = 0;
      *(v11 + 15) = 0;
      *(v11 + 13) = 0;
      v11 += 128;
      v12 += 128;
    }

    while (v11 != v9);
    do
    {
      sub_60B38C(v8);
      v8 += 128;
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

void sub_CE37B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CE38D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CE37CC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_3ED39C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xE21A291C077975B9 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  if (*(a2 + 127) < 0)
  {
    sub_325C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
  }

  return a1;
}

void sub_CE38A8(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_CE38D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    sub_60B38C(i - 128);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_CE392C()
{
  __chkstk_darwin();
  sub_7E9A4(v0);
  operator new();
}

void sub_CE5FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  sub_CE67E8(&STACK[0x3610]);
  sub_2430CC(&STACK[0x3630]);
  sub_CEBE58(&STACK[0x3650]);
  v20 = STACK[0x4C10];
  if (STACK[0x4C10])
  {
    STACK[0x4C18] = v20;
    operator delete(v20);
  }

  sub_CEBEA0(&STACK[0x4C30]);
  sub_CEBCA0(a19);
  _Unwind_Resume(a1);
}

uint64_t sub_CE640C(void *a1, void *a2, void *a3)
{
  if (*a2 && *a3 != 0x7FFFFFFFFFFFFFFFLL && *a3 >= a1[622])
  {
    sub_CE710C();
  }

  sub_F6BEE8(v6);
  memset(__p, 0, sizeof(__p));
  v8 = -1;
  sub_49C304((a1 + 623), v6);
  v4 = a1[692];
  if (v4)
  {
    a1[693] = v4;
    operator delete(v4);
    a1[692] = 0;
    a1[693] = 0;
    a1[694] = 0;
  }

  *(a1 + 346) = *__p;
  a1[694] = __p[2];
  memset(__p, 0, sizeof(__p));
  a1[695] = v8;
  sub_4547F0(v6);
  return 0;
}

void *sub_CE6648(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_CE67D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD3FC(va);
  _Unwind_Resume(a1);
}

void ***sub_CE67E8(void ***a1)
{
  if (*a1)
  {
    sub_CE9FC4(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_CE6824(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!sub_F69D6C((a1 + 4984)))
  {
    v8 = sub_45AC50(a4);
    v9 = sub_588D8(a4);
    if (v8 != v9)
    {
      v10 = v9;
      do
      {
        if (!sub_F63D58(v8))
        {
          v11 = sub_F63FEC(v8);
          v12 = *(sub_F6C814(a1 + 4984) + 32);
          if (__PAIR64__(*(v11 + 36), *(v11 + 32)) == __PAIR64__(WORD2(v12), v12) && *(v11 + 38) == BYTE6(v12))
          {
            v13 = *nullsub_1(v8);
            sub_F6E128(v13, a1 + 4984);
            if ((a3 & 1) == 0)
            {
              sub_CEA0B4(a2, v13);
            }

            sub_116528C(a1 + 8, (a1 + 4984), &__p);
            v14 = __p;
            v15 = __p != v17;
            if (__p == v17)
            {
              v15 = 0;
            }

            else
            {
              while (*(*v14[1] + 464 * v14[2] + 352) != 1)
              {
                v14 += 3;
                if (v14 == v17)
                {
                  goto LABEL_17;
                }
              }

              v15 |= 2uLL;
            }

LABEL_17:
            sub_F6E648(v13, v15);
            if (__p)
            {
              v17 = __p;
              operator delete(__p);
            }
          }
        }

        v8 += 6;
      }

      while (v8 != v10);
    }
  }
}

void sub_CE699C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CE69B8(void *a1, unint64_t a2)
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

void sub_CE6AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_CE6BD4(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  operator new();
}

void sub_CE6D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_CE6D74((v15 + 11));
  sub_1A104(v16);
  sub_616CD4((v15 + 3));
  sub_CE67E8(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_CE6D74(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_26732F0[v4])(&v7, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_CE6E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  v6 = a1 + 8;
  HIBYTE(v23[2]) = 19;
  strcpy(v23, "DrivingPathAnalyzer");
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v7 = sub_3AEC94(a2, v23, &v20);
  v19 = 7;
  strcpy(__p, "default");
  v8 = sub_5F5AC(v7, __p);
  sub_1164FE0(v6, a2, v8, a3);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = v20;
  if (v20)
  {
    v10 = v21;
    v11 = v20;
    if (v21 != v20)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = v20;
    }

    v21 = v9;
    operator delete(v11);
  }

  if (SHIBYTE(v23[2]) < 0)
  {
    operator delete(v23[0]);
  }

  HIBYTE(v23[2]) = 18;
  strcpy(v23, "QuickTurnAvoidance");
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v13 = sub_3AEC94(a2, v23, &v20);
  v14 = v20;
  if (v20)
  {
    v15 = v21;
    v16 = v20;
    if (v21 != v20)
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
      v16 = v20;
    }

    v21 = v14;
    operator delete(v16);
  }

  if (SHIBYTE(v23[2]) < 0)
  {
    operator delete(v23[0]);
  }

  *(a1 + 4960) = v13;
  *(a1 + 4968) = a3;
  operator new();
}

void sub_CE70D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_1A104(&a15);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_CE8434(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(STACK[0x278]);
  }

  sub_1959728(&STACK[0x290]);
  sub_4547F0(&STACK[0x400]);
  v3 = v1[81];
  if (v3)
  {
    v1[82] = v3;
    operator delete(v3);
    v4 = v1[93];
    if (!v4)
    {
LABEL_5:
      sub_404134(&STACK[0x6D0]);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = v1[93];
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  free(v4);
  sub_404134(&STACK[0x6D0]);
  _Unwind_Resume(a1);
}

uint64_t sub_CE85A4(uint64_t a1)
{
  v2 = *(a1 + 552);
  if (v2)
  {
    *(a1 + 560) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_4547F0(a1);
}

BOOL sub_CE85EC(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v10 = 0;
  v11 = 0;
  __p = 0;
  v12[0] = a2;
  v12[1] = &v13;
  sub_32140C(a2, a1, &__p, v12);
  v3 = __p;
  v4 = v10;
  v12[0] = a2;
  if (__p == v10)
  {
    result = 0;
    if (!__p)
    {
      return result;
    }

    goto LABEL_8;
  }

  v5 = __p + 8;
  do
  {
    result = sub_CE8A64(v12, *(v5 - 1));
    v7 = v5 == v4 || result;
    v5 += 8;
  }

  while (v7 != 1);
  v3 = __p;
  if (__p)
  {
LABEL_8:
    v10 = v3;
    v8 = result;
    operator delete(v3);
    return v8;
  }

  return result;
}

void sub_CE8698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CE86B8(int **a1, void *a2, unsigned int a3, void *a4, uint64_t a5)
{
  v43 = 17;
  strcpy(__p, "apply_to_freeways");
  if (sub_5F9D0(a4, __p))
  {
    if (v43 < 0)
    {
      operator delete(*__p);
    }

    goto LABEL_20;
  }

  v10 = (*a1 - **a1);
  if (*v10 >= 0x2Fu)
  {
    v11 = v10[23];
    if (v11)
    {
      v12 = *(*a1 + v11);
      v13 = 1;
      if (v12 > 0x16)
      {
        if (v12 != 23 && v12 != 26)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!*(*a1 + v11))
        {
          if (v43 < 0)
          {
            operator delete(*__p);
          }

          return 0;
        }

        if (v12 != 16)
        {
          goto LABEL_18;
        }
      }

      if (v43 < 0)
      {
        goto LABEL_19;
      }

LABEL_16:
      if (v13)
      {
        return 0;
      }

      goto LABEL_20;
    }
  }

LABEL_18:
  v13 = 0;
  if ((v43 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  operator delete(*__p);
  if (v13)
  {
    return 0;
  }

LABEL_20:
  v15 = (*a1 - **a1);
  if (*v15 >= 0x1Bu && (v16 = v15[13]) != 0)
  {
    v17 = *(*a1 + v16);
  }

  else
  {
    v17 = 0;
  }

  v19 = (a1 + 5);
  v18 = a1[5];
  v20 = (v18 - *v18);
  if (*v20 >= 0x1Bu && (v21 = v20[13]) != 0)
  {
    v22 = *(v18 + v21);
  }

  else
  {
    v22 = 0;
  }

  v43 = 7;
  strcpy(__p, "min_frc");
  v23 = sub_353010(a4, __p);
  if (v22 < v17)
  {
    v17 = v22;
  }

  if (v43 < 0)
  {
    v24 = v23;
    operator delete(*__p);
    if (v17 < v24)
    {
      return 0;
    }
  }

  else if (v17 < v23)
  {
    return 0;
  }

  v25 = (*a1 - **a1);
  if (*v25 >= 0x1Bu && (v26 = v25[13]) != 0)
  {
    v27 = *(*a1 + v26);
    v28 = *v19;
    v29 = &(*v19)[-**v19];
    if (*v29 < 0x1Bu)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v27 = 0;
    v28 = *v19;
    v29 = &(*v19)[-**v19];
    if (*v29 < 0x1Bu)
    {
      goto LABEL_41;
    }
  }

  v30 = *(v29 + 13);
  if (v30)
  {
    v31 = v28[v30];
    goto LABEL_42;
  }

LABEL_41:
  v31 = 0;
LABEL_42:
  v43 = 7;
  strcpy(__p, "max_frc");
  v32 = sub_353010(a4, __p);
  if (v27 <= v31)
  {
    v27 = v31;
  }

  if (v43 < 0)
  {
    v33 = v32;
    operator delete(*__p);
    if (v27 > v33)
    {
      return 0;
    }
  }

  else if (v27 > v32)
  {
    return 0;
  }

  v34 = *v19;
  v35 = &(*v19)[-**v19];
  v36 = *v35;
  if (v36 >= 0x1B && *(v35 + 13) && v34[*(v35 + 13)] > a3)
  {
    return 0;
  }

  v37 = (*a1 - **a1);
  if (*v37 >= 0x1Bu)
  {
    v38 = v37[13];
    if (v38)
    {
      v39 = *(*a1 + v38);
      if (v36 < 0x1B)
      {
        goto LABEL_58;
      }

LABEL_56:
      v40 = *(v35 + 13);
      if (v40 && v39 < v34[v40])
      {
        return 0;
      }

      goto LABEL_58;
    }
  }

  v39 = 0;
  if (v36 >= 0x1B)
  {
    goto LABEL_56;
  }

LABEL_58:
  if (!sub_CE95A8(a1, a4, a5) && (a1[11] & 0x60) == 0 && (sub_10B8278(a1 + 5) & ~*a2) == 0)
  {
    return sub_CE9824(a1) ^ 1;
  }

  return 0;
}

void sub_CE8A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_CE8A64(uint64_t *a1, unint64_t a2)
{
  sub_320200(*a1, a2, &__p);
  v4 = __p;
  if (__p == v16)
  {
    v8 = 0;
    if (!__p)
    {
      return v8;
    }

    goto LABEL_16;
  }

  v5 = sub_30CC30(*a1, a2);
  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 0xF)
  {
    if (v7 < 5)
    {
      goto LABEL_15;
    }
  }

  else if (v6[7] && (*(v5 + v6[7]) & 1) == 0)
  {
LABEL_11:
    v10 = sub_30CC30(*a1, a2);
    v11 = (v10 - *v10);
    v12 = *v11;
    if (v12 < 0xF)
    {
      if (v12 < 5)
      {
        goto LABEL_22;
      }
    }

    else if (v11[7] && (*(v10 + v11[7]) & 1) == 0)
    {
LABEL_22:
      v8 = 0;
      v4 = __p;
      if (!__p)
      {
        return v8;
      }

      goto LABEL_16;
    }

    v14 = v11[2];
    if (v14)
    {
      v8 = *(v10 + v14) == 1;
      v4 = __p;
      if (!__p)
      {
        return v8;
      }

      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v9 = v6[2];
  if (v9 && *(v5 + v9))
  {
    goto LABEL_11;
  }

LABEL_15:
  v8 = 1;
  v4 = __p;
  if (__p)
  {
LABEL_16:
    v16 = v4;
    operator delete(v4);
  }

  return v8;
}

void sub_CE8B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CE8BA0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_CE9008(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 48);
  if (v5 >= ~a2)
  {
    goto LABEL_27;
  }

  v6 = *(a1 + 56);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    v9 = vcvts_n_u32_f32(v8, 2uLL);
    v10 = 4;
    if (v7 >= v9)
    {
      while ((v10 & 0x8000000000000000) == 0)
      {
        v10 *= 2;
        if (v7 < (v8 * v10))
        {
          goto LABEL_10;
        }
      }

LABEL_27:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

LABEL_10:
    if (v10 > v6)
    {
      v11 = *(a1 + 40);
      v12 = v5 - v11 + a2;
      v13 = 4;
      if (v6 > 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (v12 >= (v8 * v13))
      {
LABEL_13:
        while ((v13 & 0x8000000000000000) == 0)
        {
          v13 *= 2;
          if (v13 >= v6)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_27;
      }

      v14 = v7 - (v11 >> 2);
      v15 = 4;
      if (v14 >= v9)
      {
        while ((v15 & 0x8000000000000000) == 0)
        {
          v15 *= 2;
          if (v14 < (v8 * v15))
          {
            goto LABEL_19;
          }
        }

        goto LABEL_27;
      }

LABEL_19:
      if (v13 <= 0x7FFFFFFFFFFFFFFELL && v13 < v15 && v12 >= (*(a1 + 20) * (2 * v13)))
      {
        v13 *= 2;
      }

      sub_CE9140(&v24, a1, v13);
      v17 = *a1;
      v16 = *(a1 + 16);
      v18 = v25;
      *a1 = v24;
      *(a1 + 16) = v18;
      v24 = v17;
      v25 = v16;
      v19 = *(a1 + 32);
      *(a1 + 32) = v26;
      v26 = v19;
      v20 = *(a1 + 48);
      *(a1 + 48) = v27;
      v27 = v20;
      *&v16 = v28;
      v21 = *(a1 + 56);
      *(a1 + 56) = v28;
      v28 = v21;
      v22 = *(a1 + 72);
      *(a1 + 72) = v29;
      v29 = v22;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v16)));
      *(a1 + 24) = 0;
      v24 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v25, v21)));
      BYTE8(v25) = 0;
      if (v22)
      {
        free(v22);
      }

      return 1;
    }
  }

  return result;
}

void *sub_CE8E6C@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[7];
  v4 = result[8];
  v5 = v3 - 1;
  v6 = *a2;
  v7 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v8 = v7 ^ (v7 >> 47);
  v9 = result[9];
  v10 = v8 & (v3 - 1);
  v11 = *(v9 + 8 * v10);
  v12 = result[5];
  if (v4 == v11)
  {
LABEL_2:
    v13 = v10;
    goto LABEL_3;
  }

  if (v12)
  {
    v13 = -1;
    v17 = 1;
    do
    {
      if (result[4] == v11)
      {
        if (v13 == -1)
        {
          v13 = v10;
        }
      }

      else if (v6 == v11)
      {
        goto LABEL_17;
      }

      v10 = (v10 + v17) & v5;
      v11 = *(v9 + 8 * v10);
      ++v17;
    }

    while (v4 != v11);
    if (v13 != -1)
    {
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  v18 = 1;
  while (v6 != v11)
  {
    v10 = (v10 + v18) & v5;
    v11 = *(v9 + 8 * v10);
    ++v18;
    if (v4 == v11)
    {
      v12 = 0;
      goto LABEL_2;
    }
  }

LABEL_17:
  if (v10 != -1)
  {
    v16 = 0;
    v15 = (v9 + 8 * v10);
    goto LABEL_9;
  }

  v13 = -1;
LABEL_3:
  v14 = result[6];
  if ((v14 - v12) >= 0x1FFFFFFFFFFFFFFFLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  if (v12 && result[4] == *(v9 + 8 * v13))
  {
    result[5] = v12 - 1;
  }

  else
  {
    result[6] = v14 + 1;
  }

  v15 = (v9 + 8 * v13);
  *v15 = v6;
  v16 = 1;
LABEL_9:
  *a3 = result;
  *(a3 + 8) = v15;
  *(a3 + 16) = v9 + 8 * v3;
  *(a3 + 24) = v16;
  return result;
}

uint64_t sub_CE9008(uint64_t a1)
{
  v2 = *(a1 + 48) - *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 56), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = v2;
    do
    {
      v7 = v5;
      v5 >>= 1;
    }

    while (v7 >= 0x42 && (*(a1 + 20) * v5) > v6);
    sub_CE9140(&v16, a1, v5);
    v9 = *a1;
    v8 = *(a1 + 16);
    v10 = v17;
    *a1 = v16;
    *(a1 + 16) = v10;
    v16 = v9;
    v17 = v8;
    v11 = *(a1 + 32);
    *(a1 + 32) = v18;
    v18 = v11;
    v12 = *(a1 + 48);
    *(a1 + 48) = v19;
    v19 = v12;
    *&v8 = v20;
    v13 = *(a1 + 56);
    *(a1 + 56) = v20;
    v20 = v13;
    v14 = *(a1 + 72);
    *(a1 + 72) = v21;
    v21 = v14;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v8)));
    *(a1 + 24) = 0;
    v16 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v17, v13)));
    BYTE8(v17) = 0;
    if (v14)
    {
      free(v14);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

float sub_CE9140(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*(a1 + 16), 0)));
    *(a1 + 24) = 0;
    sub_CE9274(a1, a2, a3);
  }

  else
  {
    v6 = 4;
    if (a3 > 4)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v7 = *(a1 + 16) * v6;
      if (*(a2 + 48) - *(a2 + 40) < v7)
      {
        break;
      }

      do
      {
LABEL_5:
        if ((v6 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v6 *= 2;
      }

      while (v6 < a3);
    }

    *(a1 + 56) = v6;
    result = *(a1 + 20) * v6;
    *a1 = v7;
    *(a1 + 8) = result;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_CE9274(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2[6] - a2[5];
  v6 = 4;
  if (a3 > 4)
  {
    goto LABEL_3;
  }

  while (v5 >= (*(a1 + 16) * v6))
  {
    do
    {
LABEL_3:
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
  }

  sub_CE947C(a1, v6);
  v7 = a2[7];
  if (v7)
  {
    v8 = a2[8];
    if (a2[5])
    {
      v9 = 8 * v7;
      v10 = a2[9];
      while (v8 == *v10 || a2[4] == *v10)
      {
        ++v10;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v21 = 8 * v7;
      v10 = a2[9];
      while (v8 == *v10)
      {
        ++v10;
        v21 -= 8;
        if (!v21)
        {
          goto LABEL_38;
        }
      }
    }
  }

  else
  {
    v10 = a2[9];
  }

  v12 = a2[9] + 8 * v7;
  if (v10 != v12)
  {
    v13 = *(a1 + 56) - 1;
    v14 = *(a1 + 72);
    do
    {
      v15 = 0x2127599BF4325C37 * (*v10 ^ (*v10 >> 23));
      v16 = *(a1 + 64);
      v17 = (v15 ^ (v15 >> 47)) & v13;
      if (v16 != *(v14 + 8 * v17))
      {
        v18 = 1;
        do
        {
          v17 = (v17 + v18++) & v13;
        }

        while (v16 != *(v14 + 8 * v17));
      }

      *(v14 + 8 * v17) = *v10;
      ++*(a1 + 48);
      if (++v10 != v12)
      {
        v19 = a2[8];
        if (a2[5])
        {
          do
          {
            if (v19 != *v10 && a2[4] != *v10)
            {
              break;
            }

            ++v10;
          }

          while (v10 != v12);
        }

        else
        {
          do
          {
            if (v19 != *v10)
            {
              break;
            }

            ++v10;
          }

          while (v10 != v12);
        }
      }
    }

    while (v10 != v12);
  }

LABEL_38:
  ++*(a1 + 28);
}

uint64x2_t sub_CE947C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    v5 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
LABEL_6:
    *(a1 + 72) = v5;
    v4 = v5;
    goto LABEL_7;
  }

  if (*(a1 + 56) != a2)
  {
    v5 = malloc_type_realloc(*(a1 + 72), 8 * a2, 0x100004000313F17uLL);
    if (!v5)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v4);
      exit(1);
    }

    goto LABEL_6;
  }

LABEL_7:
  if (a2)
  {
    v6 = *(a1 + 64);
    v7 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v8 = v4;
    if (v7 < 3)
    {
      goto LABEL_16;
    }

    v9 = v7 + 1;
    v8 = v4 + (v9 & 0x3FFFFFFFFFFFFFFCLL);
    v10 = vdupq_n_s64(v6);
    v11 = v4 + 1;
    v12 = v9 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11[-1] = v10;
      *v11 = v10;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if (v9 != (v9 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_16:
      do
      {
        *v8++ = v6;
      }

      while (v8 != (v4 + 8 * a2));
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

BOOL sub_CE95A8(int **a1, void *a2, uint64_t a3)
{
  v6 = a1[4];
  v7 = a1[9];
  v8 = sub_31DDCC(a3, v6 & 0xFFFFFFFFFFFFFFLL);
  v9 = v8 > 0xFFFFFFFEFFFFFFFFLL || v8 == 0;
  if (!v9 && (sub_31EE90(a3, v6 & 0xFFFFFFFFFFFFFFLL, v7 & 0xFFFFFFFFFFFFFFLL) & 1) != 0)
  {
    return 0;
  }

  v11 = a1[1];
  v12 = (v11 - *v11);
  v13 = *v12;
  if (*(a1 + 38))
  {
    if (v13 < 5)
    {
      goto LABEL_17;
    }

    v14 = v12[2];
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  else if (v13 < 9 || (v14 = v12[4]) == 0)
  {
LABEL_17:
    v15 = 0;
    v16 = a1[6];
    v17 = (v16 - *v16);
    v18 = *v17;
    if (*(a1 + 78))
    {
      goto LABEL_18;
    }

LABEL_14:
    if (v18 >= 5)
    {
      v19 = v17[2];
      if (v19)
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    v20 = 0;
    goto LABEL_22;
  }

  v15 = *(v11 + v14);
  v16 = a1[6];
  v17 = (v16 - *v16);
  v18 = *v17;
  if (!*(a1 + 78))
  {
    goto LABEL_14;
  }

LABEL_18:
  if (v18 < 9)
  {
    goto LABEL_21;
  }

  v19 = v17[4];
  if (!v19)
  {
    goto LABEL_21;
  }

LABEL_20:
  v20 = *(v16 + v19);
LABEL_22:
  v21 = v15 + 18000;
  v22 = (v15 + 18000) >> 5;
  v23 = v15 - 18000;
  if (v22 < 0x465)
  {
    v23 = v21;
  }

  v24 = v20 - v23;
  if (v24 > 18000)
  {
    v24 -= 36000;
  }

  if (v24 >= -17999)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 36000;
  }

  v26 = (*a1 - **a1);
  if (*v26 >= 0x1Bu)
  {
    v27 = v26[13];
    if (v27)
    {
      if (*(*a1 + v27))
      {
        operator new();
      }
    }
  }

  v31 = 19;
  strcpy(__p, "max_turn_angle_frc0");
  v28 = sub_63D34(a2, __p);
  if (v31 < 0)
  {
    v29 = v28;
    operator delete(*__p);
    v28 = v29;
  }

  return fabs(v25 / 100.0) > v28;
}

void sub_CE9800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_CE9824(int **a1)
{
  v1 = (*a1 - **a1);
  if (*v1 >= 0x2Fu && (v2 = v1[23]) != 0 && ((v3 = *(*a1 + v2), v4 = v3 > 0x36, v5 = (1 << v3) & 0x44000000000008, !v4) ? (v6 = v5 == 0) : (v6 = 1), !v6 && (v7 = a1[5], v8 = (v7 - *v7), *v8 >= 0x2Fu) && (v9 = v8[23]) != 0 && (v10 = *(v7 + v9), v10 <= 0x36)))
  {
    return (0x44000000000008uLL >> v10) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_CE98B4(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t *a5)
{
  if (a1)
  {
    if (a3)
    {
      do
      {
        v10 = sub_F6D024(a1);
        v11 = sub_F6D024(a3);
        if (a2 >= v10 || a4 >= v11)
        {
          if (a2 < v10 == a4 < v11)
          {
            return 0;
          }
        }

        else
        {
          v12 = sub_F6D17C(a1, a2);
          if (v12 == sub_F6D17C(a3, a4))
          {
            return 0;
          }
        }

        v13 = sub_F6D17C(a1, a2);
        if (sub_4389AC(*a5, v13))
        {
          break;
        }

        sub_43ECB4(*a5, v13, &v26);
        v14 = v26;
        v15 = v27;
        if (v26)
        {
          v27 = v26;
          operator delete(v26);
        }

        ++a2;
      }

      while (v14 == v15);
      return 1;
    }

    else
    {
      while (1)
      {
        v16 = sub_F6D024(a1);
        v17 = a2 >= v16;
        result = a2 < v16;
        if (v17)
        {
          break;
        }

        v19 = sub_F6D17C(a1, a2);
        if (!sub_4389AC(*a5, v19))
        {
          sub_43ECB4(*a5, v19, &v26);
          v20 = v26;
          v21 = v27;
          if (v26)
          {
            v27 = v26;
            operator delete(v26);
          }

          ++a2;
          if (v20 == v21)
          {
            continue;
          }
        }

        return 1;
      }
    }
  }

  else if (a3)
  {
    while (1)
    {
      v22 = sub_F6D024(a3);
      v17 = a4 >= v22;
      result = a4 < v22;
      if (v17)
      {
        break;
      }

      v23 = sub_F6D17C(0, a2);
      if (!sub_4389AC(*a5, v23))
      {
        sub_43ECB4(*a5, v23, &v26);
        v24 = v26;
        v25 = v27;
        if (v26)
        {
          v27 = v26;
          operator delete(v26);
        }

        ++a2;
        if (v24 == v25)
        {
          continue;
        }
      }

      return 1;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_CE9AA8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v6 = *(a1 + 16) - *a1;
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
  v13 = v8;
  *v8 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_325C((32 * v3 + 8), *a3, *(a3 + 8));
    v8 = v13;
  }

  else
  {
    *&dword_8[8 * v3] = *a3;
    *&dword_18[8 * v3] = *(a3 + 16);
  }

  v9 = *(a1 + 8) - *a1;
  v10 = v8 - v9;
  memcpy(v8 - v9, *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = 32 * v3 + 32;
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return 32 * v3 + 32;
}

void sub_CE9BD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_243064(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CE9BEC(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v24 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 24 * v2;
  __p = 0;
  v21 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v22 = 24 * v2 + 24;
  v23 = 0;
  sub_CDD28C(a1, &__p);
  v7 = a1[1];
  v8 = v21;
  v9 = v22;
  if (v22 != v21)
  {
    v10 = v22;
    while (1)
    {
      v13 = *(v10 - 3);
      v10 -= 3;
      v12 = v13;
      v22 = v10;
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = *(v9 - 16);
      v11 = v12;
      if (v14 != v12)
      {
        break;
      }

LABEL_13:
      *(v9 - 16) = v12;
      operator delete(v11);
      v10 = v22;
LABEL_14:
      v9 = v10;
      if (v10 == v8)
      {
        goto LABEL_27;
      }
    }

    while (1)
    {
      if (*(v14 - 1) < 0)
      {
        operator delete(*(v14 - 3));
        v15 = v14 - 6;
        v16 = *(v14 - 6);
        if (v16)
        {
LABEL_24:
          v17 = *(v14 - 5);
          v18 = v16;
          if (v17 != v16)
          {
            do
            {
              v17 = sub_4547F0(v17 - 552);
            }

            while (v17 != v16);
            v18 = *v15;
          }

          *(v14 - 5) = v16;
          operator delete(v18);
        }
      }

      else
      {
        v15 = v14 - 6;
        v16 = *(v14 - 6);
        if (v16)
        {
          goto LABEL_24;
        }
      }

      v14 = v15;
      if (v15 == v12)
      {
        v11 = *v10;
        goto LABEL_13;
      }
    }
  }

LABEL_27:
  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}