uint64_t sub_BAF0B4(uint64_t a1)
{
  if (*a1 == -1)
  {
    return 0;
  }

  v2 = sub_A9D694(a1);
  v3 = sub_A9D7D4(a1) + v2;
  sub_2D577C(**(a1 + 40));
  if (v31 == 1)
  {
    v4 = sub_32AD80(&v20) * 1048576.0;
    if (v4 >= 0.0)
    {
      v5 = v4;
      if (v4 >= 4.50359963e15)
      {
        goto LABEL_16;
      }

      v6 = (v4 + v4) + 1;
    }

    else
    {
      v5 = v4;
      if (v4 <= -4.50359963e15)
      {
        goto LABEL_16;
      }

      v6 = (v4 + v4) - 1 + (((v4 + v4) - 1) >> 63);
    }

    v5 = (v6 >> 1);
LABEL_16:
    if (v5 >= 1.84467441e19)
    {
      v3 -= 2;
      if (v3 <= *a1)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (v4 >= 0.0)
    {
      if (v4 >= 4.50359963e15)
      {
        goto LABEL_25;
      }

      v15 = (v4 + v4) + 1;
    }

    else
    {
      if (v4 <= -4.50359963e15)
      {
        goto LABEL_25;
      }

      v15 = (v4 + v4) - 1 + (((v4 + v4) - 1) >> 63);
    }

    v4 = (v15 >> 1);
LABEL_25:
    v3 += v4;
    if (v3 <= *a1)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v3 <= *a1)
  {
    return 0;
  }

LABEL_8:
  v8 = sub_7E7E4(1u);
  result = 1;
  if (!v8)
  {
    return result;
  }

  sub_19594F8(&v20);
  v9 = sub_4A5C(&v20, "Exceeded memory limit of ", 25);
  v10 = sub_71478(v9, *a1);
  v11 = sub_4A5C(v10, " in directional SPA (", 21);
  v12 = sub_71478(v11, v3);
  v13 = sub_4A5C(v12, ") in round ", 11);
  std::ostream::operator<<();
  sub_4A5C(v13, "; terminating algorithm.", 24);
  if ((v30 & 0x10) != 0)
  {
    v16 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v16 = v26;
    }

    v17 = v25;
    v14 = v16 - v25;
    if (v16 - v25 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_41:
      sub_3244();
    }

LABEL_30:
    if (v14 >= 0x17)
    {
      operator new();
    }

    v19 = v14;
    if (v14)
    {
      memmove(&__dst, v17, v14);
    }

    goto LABEL_35;
  }

  if ((v30 & 8) != 0)
  {
    v17 = v23;
    v14 = v24 - v23;
    if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_41;
    }

    goto LABEL_30;
  }

  v14 = 0;
  v19 = 0;
LABEL_35:
  *(&__dst + v14) = 0;
  sub_7E854(&__dst, 1u);
  if (v19 < 0)
  {
    operator delete(__dst);
  }

  if (v28 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v22);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_BAF4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_BAF528(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, signed int a5)
{
  v7 = a3;
  v55 = a3;
  v10 = *(a1 + 80);
  if (v10)
  {
    v12 = *v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 4);
    if (v13 <= a4)
    {
      sub_A9C3BC(*(a1 + 80), a4 - v13 + 1);
      v12 = *v10;
    }

    v14 = (v12 + 48 * a4);
    if (v14[1] <= v7 || ((*(*v14 + ((v7 >> 3) & 0x1FFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 25) == 1)
  {
    v15 = a1 + 24 * a2;
    v16 = *(v15 + 192);
    v17 = *(v15 + 200);
    v18 = (v15 + 192);
    v19 = *(a1 + 456);
    v20 = (v17 - v16) >> 2;
    if (v20 <= v19)
    {
      sub_617214(v18, v19 - v20 + 1);
      v16 = *v18;
    }

    v21 = (v16 + 4 * v19);
    if (*(a1 + 26) != 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = *(a1 + 176);
    v23 = *(a1 + 456);
    if (*v22 <= v23)
    {
      *v22 = v23 + 1;
      v24 = v22[2];
      v25 = v22[1] * (v23 + 1);
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v22[3] - v24) >> 3);
      if (v25 <= v26)
      {
        if (v25 < v26)
        {
          v22[3] = v24 + 24 * v25;
        }
      }

      else
      {
        sub_BAF9A8((v22 + 2), v25 - v26);
      }
    }

    v21 = (v22[2] + 24 * v22[1] * v23 + 24 * a4);
    if (*(a1 + 26) != 1)
    {
      goto LABEL_22;
    }
  }

  v27 = *v21;
  if (v27 != 0x7FFFFFFF)
  {
    v28 = *(a1 + 28);
    v29 = v28 / -10;
    v30 = v28 % 10;
    v31 = v28 < 0 ? -5 : 5;
    if ((v29 + (((-103 * (v31 + v30)) >> 15) & 1) + ((-103 * (v31 + v30)) >> 10) + v27) >= a5)
    {
      return 0;
    }
  }

LABEL_22:
  if ((*(a1 + 25) & 1) == 0)
  {
    v36 = v7;
    v40 = *(a1 + 176);
    if (*v40 > v7)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v32 = a1 + 24 * a2;
  v33 = *(v32 + 192);
  v34 = *(v32 + 200);
  v35 = (v32 + 192);
  v36 = v7;
  v37 = (v34 - v33) >> 2;
  if (v37 <= v7)
  {
    sub_617214(v35, v7 - v37 + 1);
    v33 = *v35;
  }

  v38 = *(v33 + 4 * v7);
  if (v38 != 0x7FFFFFFF && v38 >= a5)
  {
    return 0;
  }

  v40 = *(a1 + 176);
  if (*v40 <= v7)
  {
LABEL_33:
    *v40 = v36 + 1;
    v41 = v40[2];
    v42 = v40[1] * (v36 + 1);
    v43 = 0xAAAAAAAAAAAAAAABLL * ((v40[3] - v41) >> 3);
    if (v42 <= v43)
    {
      if (v42 < v43)
      {
        v40[3] = v41 + 24 * v42;
      }
    }

    else
    {
      sub_BAF9A8((v40 + 2), v42 - v43);
    }
  }

LABEL_37:
  v44 = (v40[2] + 24 * v40[1] * v36 + 24 * a4);
  if (*v44 == 0x7FFFFFFF || *v44 < a5)
  {
    if (*(a1 + 25))
    {
      v46 = a1 + 24 * a2;
      v47 = *(v46 + 192);
      v48 = *(v46 + 200);
      v49 = (v46 + 192);
      v50 = (v48 - v47) >> 2;
      if (v50 <= v36)
      {
        sub_617214(v49, v36 - v50 + 1);
        v47 = *v49;
      }

      *(v47 + 4 * v36) = a5;
    }

    *v44 = a5;
    v52 = a1 + 48 * a2;
    v53 = (v52 + 240);
    if (*(v52 + 248) <= v36)
    {
      sub_4D9168(v53, v7 + 1, 0);
      if ((*(*v53 + ((v36 >> 3) & 0x1FFFFFF8)) >> v36))
      {
LABEL_50:
        if (*(a1 + 25))
        {
          return 1;
        }

LABEL_54:
        v54 = v7;
        if (*(a1 + 344) <= v7)
        {
          sub_4D9168(a1 + 336, v7 + 1, 0);
          v54 = v55;
        }

        if (((*(*(a1 + 336) + ((v54 >> 3) & 0x1FFFFFF8)) >> v54) & 1) == 0)
        {
          sub_DD38(a1 + 360, &v55);
          result = 1;
          *(*(a1 + 336) + ((v55 >> 3) & 0x1FFFFFF8)) |= 1 << v55;
          return result;
        }

        return 1;
      }
    }

    else if ((*(*v53 + ((v36 >> 3) & 0x1FFFFFF8)) >> v36))
    {
      goto LABEL_50;
    }

    sub_DD38((v53 + 3), &v55);
    v7 = v55;
    *(*v53 + ((v55 >> 3) & 0x1FFFFFF8)) |= 1 << v55;
    if (*(a1 + 25))
    {
      return 1;
    }

    goto LABEL_54;
  }

  return 0;
}

void sub_BAF9A8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2 - 24;
      if (v10 < 0x18)
      {
        goto LABEL_33;
      }

      v11 = v10 / 0x18 + 1;
      v12 = v3 + 24 * (v11 & 0x1FFFFFFFFFFFFFFELL);
      v13 = (v3 + 32);
      *&v14.f64[0] = 0x8000000080000000;
      *&v14.f64[1] = 0x8000000080000000;
      v15 = vnegq_f64(v14);
      v16 = v11 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = xmmword_22A8400;
        *(v13 - 1) = v15;
        *v13 = xmmword_2266560;
        v13 += 3;
        v16 -= 2;
      }

      while (v16);
      v3 = v12;
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_33:
        do
        {
          *v3 = xmmword_22A8400;
          *(v3 + 16) = -COERCE_DOUBLE(0x8000000080000000);
          v3 += 24;
        }

        while (v3 != v9);
      }

      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    v17 = 24 * v5;
    v18 = 24 * v5 + 24 * a2;
    v19 = 24 * a2 - 24;
    v20 = 24 * v5;
    if (v19 < 0x18)
    {
      goto LABEL_34;
    }

    v21 = v19 / 0x18 + 1;
    v20 = v17 + 24 * (v21 & 0x1FFFFFFFFFFFFFFELL);
    v22 = (24 * v5 + 32);
    *&v23.f64[0] = 0x8000000080000000;
    *&v23.f64[1] = 0x8000000080000000;
    v24 = vnegq_f64(v23);
    v25 = v21 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v22 - 2) = xmmword_22A8400;
      *(v22 - 1) = v24;
      *v22 = xmmword_2266560;
      v22 += 3;
      v25 -= 2;
    }

    while (v25);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_34:
      do
      {
        *v20 = xmmword_22A8400;
        *(v20 + 16) = -COERCE_DOUBLE(0x8000000080000000);
        v20 += 24;
      }

      while (v20 != v18);
    }

    v26 = *a1;
    v27 = *(a1 + 8) - *a1;
    v28 = v17 - v27;
    memcpy((v17 - v27), *a1, v27);
    *a1 = v28;
    *(a1 + 8) = v18;
    *(a1 + 16) = 0;
    if (v26)
    {

      operator delete(v26);
    }
  }
}

uint64_t sub_BAFC3C(void *a1, unint64_t a2)
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

void sub_BAFD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_BAFE58(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v133[0] = a3;
  *(a1 + 672) = *(a1 + 672) + 1.0;
  v6 = a3;
  v115 = *sub_A9C5E0((*(a1 + 56) + 88), a3);
  v7 = *(a1 + 384);
  v8 = (*(a1 + 392) - v7) >> 2;
  if (v8 <= v6)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        *(a1 + 392) = v7 + 4 * v9;
      }
    }

    else
    {
      sub_49ABAC(a1 + 384, v9 - v8);
    }

    sub_4D9168(a1 + 408, a3 + 1, 0);
  }

  v10 = *(a1 + 408);
  v11 = *(v10 + 8 * (v6 >> 6));
  if (((1 << a3) & v11) == 0)
  {
    *(v10 + 8 * (v6 >> 6)) = (1 << a3) | v11;
    sub_DD38(a1 + 432, v133);
    v6 = v133[0];
  }

  v114 = *(*(a1 + 384) + 4 * v6);
  sub_A9D53C(&v131, *(a1 + 40), v115);
  v12 = v131;
  if (v131 < v132)
  {
    v117 = a2 - 1;
    while (1)
    {
      *(a1 + 680) = *(a1 + 680) + 1.0;
      v118 = *v12;
      v116 = v133[0];
      sub_A79708(&v119, *(a1 + 40), v115, v114, 0, 1);
      v13 = v123;
      if (v123 >= v122 && v123 < v124)
      {
        break;
      }

LABEL_11:
      v12 = v131 + 4;
      v131 = v12;
      if (v12 >= v132)
      {
        return;
      }
    }

    v15 = 0;
    v112 = 0x7FFFFFFF;
    v110 = 0xFFFFFFFFLL;
    v113 = 0xFFFFFFFFLL;
    LODWORD(v111) = -1;
    while (1)
    {
      v16 = __ROR8__(*v13, 32);
      v17 = *(a1 + 48);
      v18 = *(v17 + 56) - 1;
      v19 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) >> 33));
      v20 = v19 ^ (v19 >> 33);
      v21 = *(v17 + 80);
      v23 = *(v17 + 64);
      v22 = *(v17 + 68);
      v24 = v20 & v18;
      v25 = (v21 + 12 * (v20 & v18));
      v27 = *v25;
      v26 = v25[1];
      if (v22 == v26 && v23 == v27)
      {
        goto LABEL_69;
      }

      if (*(v17 + 40))
      {
        break;
      }

      v47 = 1;
      while (__PAIR64__(v26, v27) != v16)
      {
        v24 = (v24 + v47) & v18;
        v48 = (v21 + 12 * v24);
        v27 = *v48;
        v26 = v48[1];
        ++v47;
        if (v22 == v26 && v23 == v27)
        {
          goto LABEL_69;
        }
      }

LABEL_57:
      if (v24 != -1)
      {
        v50 = v21 + 12 * v24;
        v51 = *(v50 + 8);
        if (v51 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_119;
      }

      v29 = -1;
      if (sub_A99094(*(a1 + 48), 1))
      {
LABEL_35:
        v33 = *(v17 + 56) - 1;
        v34 = *(v17 + 80);
        v36 = *(v17 + 64);
        v35 = *(v17 + 68);
        v37 = v33 & v20;
        v38 = (v34 + 12 * (v33 & v20));
        v40 = *v38;
        v39 = v38[1];
        v41 = *(v17 + 40);
        if (v35 == v39 && v36 == v40)
        {
          goto LABEL_109;
        }

        if (v41)
        {
          v43 = -1;
          v44 = 1;
          do
          {
            if (*(v17 + 36) == v39 && *(v17 + 32) == v40)
            {
              if (v43 == -1)
              {
                v43 = v37;
              }
            }

            else if (__PAIR64__(v39, v40) == v16)
            {
              goto LABEL_91;
            }

            v37 = (v37 + v44) & v33;
            v45 = (v34 + 12 * v37);
            v40 = *v45;
            v39 = v45[1];
            ++v44;
          }

          while (v35 != v39 || v36 != v40);
          if (v43 == -1)
          {
LABEL_109:
            v43 = v37;
          }

          v78 = *(v17 + 48);
          if ((v78 - v41) >= 0x1555555555555555)
          {
            goto LABEL_181;
          }
        }

        else
        {
          v62 = 1;
          while (__PAIR64__(v39, v40) != v16)
          {
            v37 = (v37 + v62) & v33;
            v63 = (v34 + 12 * v37);
            v40 = *v63;
            v39 = v63[1];
            ++v62;
            if (v35 == v39 && v36 == v40)
            {
              v41 = 0;
              goto LABEL_109;
            }
          }

LABEL_91:
          if (v37 != -1)
          {
            v50 = v34 + 12 * v37;
            v51 = *(v50 + 8);
            if (v51 != -1)
            {
              goto LABEL_59;
            }

            goto LABEL_119;
          }

          v43 = -1;
          v78 = *(v17 + 48);
          if ((v78 - v41) >= 0x1555555555555555)
          {
LABEL_181:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v41 && ((v79 = (v34 + 12 * v43), *(v17 + 36) == v79[1]) ? (v80 = *(v17 + 32) == *v79) : (v80 = 0), v80))
        {
          *(v17 + 40) = v41 - 1;
          v57 = 3 * v43;
        }

        else
        {
          *(v17 + 48) = v78 + 1;
          v57 = 3 * v43;
        }

        goto LABEL_118;
      }

LABEL_70:
      v54 = *(v17 + 40);
      v53 = *(v17 + 48);
      if ((v53 - v54) >= 0x1555555555555555)
      {
        goto LABEL_181;
      }

      v34 = *(v17 + 80);
      if (v54 && ((v55 = (v34 + 12 * v29), *(v17 + 36) == v55[1]) ? (v56 = *(v17 + 32) == *v55) : (v56 = 0), v56))
      {
        *(v17 + 40) = v54 - 1;
      }

      else
      {
        *(v17 + 48) = v53 + 1;
      }

      v57 = 3 * v29;
LABEL_118:
      v81 = 4 * v57;
      v82 = v34 + v81;
      *v82 = v16;
      *(v82 + 8) = -1;
      v50 = *(v17 + 80) + v81;
      v51 = *(v50 + 8);
      if (v51 != -1)
      {
LABEL_59:
        if (!sub_C435EC((a1 + 488), v51, v16))
        {
          goto LABEL_133;
        }

        goto LABEL_60;
      }

LABEL_119:
      v83 = *(v17 + 112);
      *(v17 + 112) = v83 + 1;
      *(v50 + 8) = v83;
      v85 = *(v17 + 96);
      v84 = *(v17 + 104);
      if (v85 >= v84)
      {
        v87 = *(v17 + 88);
        v88 = v85 - v87;
        v89 = (v85 - v87) >> 3;
        v90 = v89 + 1;
        if ((v89 + 1) >> 61)
        {
          sub_1794();
        }

        v91 = v84 - v87;
        if (v91 >> 2 > v90)
        {
          v90 = v91 >> 2;
        }

        if (v91 >= 0x7FFFFFFFFFFFFFF8)
        {
          v92 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v92 = v90;
        }

        if (v92)
        {
          if (!(v92 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v93 = (v85 - v87) >> 3;
        v94 = (8 * v89);
        v95 = (8 * v89 - 8 * v93);
        *v94 = v16;
        v86 = v94 + 1;
        memcpy(v95, v87, v88);
        *(v17 + 88) = v95;
        *(v17 + 96) = v86;
        *(v17 + 104) = 0;
        if (v87)
        {
          operator delete(v87);
        }
      }

      else
      {
        *v85 = v16;
        v86 = v85 + 1;
      }

      *(v17 + 96) = v86;
      v51 = *(v50 + 8);
      if (!sub_C435EC((a1 + 488), *(v50 + 8), v16))
      {
LABEL_133:
        v15 &= *(a1 + 32);
        goto LABEL_134;
      }

LABEL_60:
      if ((v15 & 1) != 0 && (*(v123 + 15) & 2) != 0)
      {
        v52 = v125;
        if (v125)
        {
          v52 = *(v125 + 4 * ((v123 - v122) >> 4));
        }

        if ((v52 & v118) == 0)
        {
          v65 = (v121 + *(v121 - *v121 + 6));
          v66 = v65 + *v65;
          v67 = &v130;
          if (!v128)
          {
            v67 = v127;
          }

          v68 = *&v66[8 * v127[1] + 8 + 8 * ((v123 - v122) >> 4)] + *v67 - *(v123 + 2);
          v69 = *(a1 + 64);
          if (v69)
          {
            if (*v69 > v51)
            {
              v70 = 0;
              v71 = *(a1 + 168) + ~a2;
              v72 = v71;
              while (v70 <= v71)
              {
                v73 = *sub_BAFC3C(v69 + 2, v69[1] * v51 + v72);
                v70 += 2;
                v72 -= 2;
                if (v73 != 0x7FFFFFFF)
                {
                  if (v73 > v68)
                  {
                    break;
                  }

                  goto LABEL_104;
                }
              }
            }
          }

          else
          {
LABEL_104:
            if (sub_BAF528(a1, 0, v51, a2, v68))
            {
              v74 = *(a1 + 176);
              if (*v74 <= v51)
              {
                *v74 = v51 + 1;
                v75 = v74[2];
                v76 = v74[1] * (v51 + 1);
                v77 = 0xAAAAAAAAAAAAAAABLL * ((v74[3] - v75) >> 3);
                if (v76 <= v77)
                {
                  if (v76 < v77)
                  {
                    v74[3] = v75 + 24 * v76;
                  }
                }

                else
                {
                  sub_BAF9A8((v74 + 2), v76 - v77);
                }
              }

              v108 = v74[2] + 24 * v74[1] * v51 + 24 * a2;
              *(v108 + 4) = v111;
              *(v108 + 8) = v113 | (v110 << 32);
              *(v108 + 16) = v112;
              *(v108 + 20) = v116;
            }
          }
        }
      }

      if ((*(v123 + 15) & 1) == 0)
      {
        goto LABEL_134;
      }

      if (v125)
      {
        if (*(v125 + 4 * ((v123 - v122) >> 4)) != v118)
        {
          goto LABEL_134;
        }
      }

      else if (v118)
      {
        goto LABEL_134;
      }

      v58 = *(a1 + 176);
      if (*v58 <= v51)
      {
        *v58 = v51 + 1;
        v59 = v58[2];
        v60 = v58[1] * (v51 + 1);
        v61 = 0xAAAAAAAAAAAAAAABLL * ((v58[3] - v59) >> 3);
        if (v60 <= v61)
        {
          if (v60 < v61)
          {
            v58[3] = v59 + 24 * v60;
          }
        }

        else
        {
          sub_BAF9A8((v58 + 2), v60 - v61);
        }
      }

      v102 = *(v58[2] + 24 * v58[1] * v51 + 24 * v117);
      if (v102 == 0x7FFFFFFF)
      {
        goto LABEL_134;
      }

      if (v15)
      {
        v103 = (v121 + *(v121 - *v121 + 6));
        v104 = v103 + *v103;
        v105 = &v130;
        if (!v128)
        {
          v105 = v127;
        }

        if (*&v104[8 * v127[1] + 4 + 8 * ((v123 - v122) >> 4)] + *v105 < v102 && sub_AA0D84(*(a1 + 40), &v119, v102))
        {
LABEL_169:
          v111 = (v123 - v122) >> 4;
          v113 = -1431655765 * ((v127 - v126) >> 2);
          if (v128)
          {
            v106 = v130;
          }

          else
          {
            v106 = 0x7FFFFFFF;
          }

          v112 = v106;
          if (v128)
          {
            v107 = v129;
          }

          else
          {
            v107 = 0xFFFFFFFFLL;
          }

          v110 = v107;
        }

        v15 = 1;
        goto LABEL_134;
      }

      if (v128 == 1)
      {
        if (sub_A84F48(*(a1 + 40), &v119, v102, 1u))
        {
          goto LABEL_169;
        }
      }

      else if (sub_A8552C(&v119, *(v58[2] + 24 * v58[1] * v51 + 24 * v117), 1))
      {
        goto LABEL_169;
      }

      v15 = 0;
LABEL_134:
      v96 = v122;
      v13 = v123 - 2;
      v123 -= 2;
      if (*(v119 + 16) == 1 && (v120 & 1) == 0 && v13 >= v122 && v13 < v124)
      {
        do
        {
          v98 = __ROR8__(*v13, 32);
          if (HIDWORD(v98) == 1 && (v98 + 3) < 2)
          {
            break;
          }

          v100 = sub_2D5204(**(v119 + 4120));
          v96 = v122;
          v13 = v123;
          if (v100)
          {
            break;
          }

          v13 = v123 - 2;
          v123 = v13;
        }

        while (v13 >= v122 && v13 < v124);
      }

      if (v13 < v96 || v13 >= v124)
      {
        goto LABEL_11;
      }
    }

    v29 = -1;
    v30 = 1;
    do
    {
      if (*(v17 + 36) == v26 && *(v17 + 32) == v27)
      {
        if (v29 == -1)
        {
          v29 = v24;
        }
      }

      else if (__PAIR64__(v26, v27) == v16)
      {
        goto LABEL_57;
      }

      v24 = (v24 + v30) & v18;
      v31 = (v21 + 12 * v24);
      v27 = *v31;
      v26 = v31[1];
      ++v30;
    }

    while (v22 != v26 || v23 != v27);
    if (v29 != -1)
    {
      if (sub_A99094(*(a1 + 48), 1))
      {
        goto LABEL_35;
      }

      goto LABEL_70;
    }

LABEL_69:
    v29 = v24;
    if (sub_A99094(*(a1 + 48), 1))
    {
      goto LABEL_35;
    }

    goto LABEL_70;
  }
}

void sub_BB0908(uint64_t a1)
{
  v1 = *a1;
  sub_A332F8(v2, *(a1 + 8));
  sub_A34B68(v1, v2);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }
}

uint64_t sub_BB0988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_A520DC(a2);
  v7 = sub_A51E58(a2, 0);
  if (HIDWORD(v7) == 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = 10 * (HIDWORD(v6) - HIDWORD(v7));
  }

  if (HIDWORD(v6) == 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_A520DC(a3);
  v11 = sub_A51E58(a3, 0);
  v12 = 0x7FFFFFFF;
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
    if (HIDWORD(v11) != 0x7FFFFFFF)
    {
      if (HIDWORD(v10) == HIDWORD(v11))
      {
        v13 = 1.79769313e308;
        goto LABEL_19;
      }

      v12 = 10 * (HIDWORD(v10) - HIDWORD(v11));
    }
  }

  if (v9 < 0)
  {
    v14 = -5;
  }

  else
  {
    v14 = 5;
  }

  v15 = v12 / 10;
  v16 = v12 % 10;
  if (v12 < 0)
  {
    v17 = -5;
  }

  else
  {
    v17 = 5;
  }

  v13 = (v9 / 10 + (((103 * (v14 + v9 % 10)) >> 15) & 1) + ((103 * (v14 + v9 % 10)) >> 10)) / (v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10));
LABEL_19:
  v18 = sub_A51E58(a2, 0);
  if ((sub_A51E58(a3, 0) >> 32) >= SHIDWORD(v18))
  {
    v19 = sub_A520DC(a2);
    if ((sub_A520DC(a3) >> 32) >= SHIDWORD(v19))
    {
      return 0;
    }
  }

  if (v13 > *(a1 + 8))
  {
    return 0;
  }

  if ((*(a1 + 25) & 1) == 0)
  {
    for (i = *(a2 + 200); i != *(a2 + 208); i += 9)
    {
      if (!*(i + 24))
      {
        v22 = *i;
        if (*i != i[1])
        {
          v23 = *(v22 + 160);
          v24 = *(v22 + 44);
          if (!v23 && v24 == -1)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_BB0BBC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a1;
  v50 = __ROR8__(**(a2 + 8), 32);
  result = sub_A98F60(v4 + 40, &v50);
  if (result != -1)
  {
    v6 = *(*(a2 + 8) + 8);
    v7 = *v3[1];
    result = sub_A7905C(v45, *(v4 + 32), v50, 0, 0, 0);
    v8 = v48;
    v9 = v49;
    if (v48 < v49)
    {
      if (v6 < 0)
      {
        v10 = -5;
      }

      else
      {
        v10 = 5;
      }

      v11 = (v10 + v6 % 10);
      v41 = v3;
      v42 = v7 + v6 / 10 + (((103 * v11) >> 15) & 1) + ((103 * v11) >> 10);
      v12 = v6 / -10 + (((-103 * v11) >> 15) & 1) + ((-103 * v11) >> 10);
      while (1)
      {
        v13 = *(v8 + 4);
        v14 = *(v8 + 5);
        v15 = v13 <= v14 + 1 ? v14 + 1 : *(v8 + 4);
        v44 = v15;
        if (v14 >= v13)
        {
          break;
        }

LABEL_46:
        v8 += 2;
        v48 = v8;
        if (v8 == v9)
        {
          v37 = v46;
          while (1)
          {
            v37 += 2;
            v46 = v37;
            if (v37 >= v47)
            {
              break;
            }

            v38 = *v37;
            v39 = v37[1];
            if (*v37 != v39)
            {
LABEL_50:
              v48 = v38;
              v49 = v39;
              v9 = v39;
              v8 = v38;
              goto LABEL_51;
            }
          }
        }

        else
        {
LABEL_51:
          while (v8 < v9)
          {
            result = sub_A795E8(v45);
            v8 = v48;
            v9 = v49;
            if (!result)
            {
              break;
            }

            v8 = v48 + 2;
            v48 = v8;
            if (v8 == v49)
            {
              v40 = v46;
              while (1)
              {
                v40 += 2;
                v46 = v40;
                if (v40 >= v47)
                {
                  goto LABEL_7;
                }

                v38 = *v40;
                v39 = v40[1];
                if (*v40 != v39)
                {
                  goto LABEL_50;
                }
              }
            }
          }
        }

LABEL_7:
        if (v8 >= v9)
        {
          return result;
        }
      }

      v43 = v50;
      v16 = *v3[2];
      while (1)
      {
        v17 = __ROR8__(*v48, 32);
        v18 = *v16;
        v19 = sub_A57920((*(*v16 + 32) + 4136), v17);
        v20 = (v19 - *v19);
        if (*v20 >= 9u && (v21 = v20[4]) != 0)
        {
          v22 = (v19 + v21 + *(v19 + v21));
        }

        else
        {
          v22 = 0;
        }

        result = sub_A571D4(v22, v13);
        if (__ROR8__(*result, 32) == v43)
        {
          sub_A79708(v51, *(v18 + 32), v17, v13, 0, 0);
          if (v58 == 1)
          {
            result = sub_BB0FF4(*(v18 + 32), v51, v42, 2u);
            if (result)
            {
              goto LABEL_27;
            }
          }

          else
          {
            result = sub_BB15D8(v51, v42, 1);
            if (result)
            {
LABEL_27:
              while (v56 >= v55 && v56 < v57)
              {
                v24 = v16[1];
                if (v58)
                {
                  v25 = &v59;
                }

                else
                {
                  v25 = v56;
                }

                v26 = (v52 + *(v52 - *v52 + 6));
                v27 = v12 + *v25 + *(&v26[2 * *(v56 + 1) + 2 + 2 * ((v54 - v53) >> 4)] + *v26) - *(v54 + 8);
                if (v27 >= **v24)
                {
                  v28 = *(v24 + 8);
                  v30 = *(v28 + 8);
                  v29 = *(v28 + 16);
                  if (v30 < v29)
                  {
                    *v30 = v27;
                    v23 = (v30 + 1);
                  }

                  else
                  {
                    v31 = *v28;
                    v32 = v30 - *v28;
                    v33 = v32 >> 2;
                    v34 = (v32 >> 2) + 1;
                    if (v34 >> 62)
                    {
                      sub_1794();
                    }

                    v35 = v29 - v31;
                    if (v35 >> 1 > v34)
                    {
                      v34 = v35 >> 1;
                    }

                    if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v36 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v36 = v34;
                    }

                    if (v36)
                    {
                      if (!(v36 >> 62))
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    *(4 * v33) = v27;
                    v23 = 4 * v33 + 4;
                    memcpy(0, v31, v32);
                    *v28 = 0;
                    *(v28 + 8) = v23;
                    *(v28 + 16) = 0;
                    if (v31)
                    {
                      operator delete(v31);
                    }
                  }

                  *(v28 + 8) = v23;
                }

                result = sub_A7B558(v51, 0);
              }
            }
          }
        }

        if (++v13 == v44)
        {
          v8 = v48;
          v9 = v49;
          v3 = v41;
          goto LABEL_46;
        }
      }
    }
  }

  return result;
}

BOOL sub_BB0FF4(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 56)) >> 2);
  if (!v4)
  {
    return 0;
  }

  v6 = (*(a2 + 32) - *(a2 + 24)) >> 4;
  v7 = *(a2 + 88);
  v8 = 4 * v7;
  v9 = v4;
  for (i = v4 - 1; ; --i)
  {
    v11 = sub_A5706C((a1 + 4136), v7);
    v12 = &v11[-*v11];
    if (*v12 < 5u)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 2);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = (v13 + v8 + 4 + *(v13 + v8 + 4));
    v15 = (v14 - *v14);
    if (*v15 >= 7u && (v16 = v15[3]) != 0)
    {
      v17 = (v14 + v16 + *(v14 + v16));
    }

    else
    {
      v17 = 0;
    }

    sub_A7AC40(v17, i);
    v18 = sub_A5706C((a1 + 4136), v7);
    v19 = v18;
    v20 = &v18[-*v18];
    if (*v20 < 5u)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v20 + 2);
      if (v21)
      {
        v21 += &v18[*&v18[v21]];
      }
    }

    v22 = (v21 + v8 + 4 + *(v21 + v8 + 4));
    v23 = (v22 - *v22);
    if (*v23 >= 7u && (v24 = v23[3]) != 0)
    {
      v25 = (v22 + v24 + *(v22 + v24));
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_A7AC40(v25, i);
    v27 = *v26;
    v28 = (v19 - *v19);
    if (*v28 < 9u)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28[4];
      if (v29)
      {
        v29 = (v29 + v19 + *(v29 + v19));
      }
    }

    v30 = *(sub_A7AD90(v29, v26[2] >> 8) + 4);
    v31 = sub_A5706C((a1 + 4136), v7);
    v32 = v31;
    v33 = &v31[-*v31];
    if (*v33 < 5u)
    {
      v34 = 0;
    }

    else
    {
      v34 = *(v33 + 2);
      if (v34)
      {
        v34 += &v31[*&v31[v34]];
      }
    }

    v35 = (v34 + v8 + 4 + *(v34 + v8 + 4));
    v36 = (v35 - *v35);
    if (*v36 >= 7u && (v37 = v36[3]) != 0)
    {
      v38 = (v35 + v37 + *(v35 + v37));
    }

    else
    {
      v38 = 0;
    }

    v39 = sub_A7AC40(v38, i);
    v40 = (v32 - *v32);
    if (*v40 < 7u)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40[3];
      if (v41)
      {
        v41 = (v41 + v32 + *(v41 + v32));
      }
    }

    if (v30 + v27 + *(sub_A7AEE0(v41, *(v39 + 4) + v6) + 4) <= a3)
    {
      break;
    }

    if (!--v9)
    {
      return 0;
    }
  }

  if (i == -1)
  {
    return 0;
  }

  v42 = *(a2 + 88);
  v44 = *(a2 + 24);
  v43 = *(a2 + 32);
  v45 = sub_A5706C((a1 + 4136), v42);
  v46 = &v45[-*v45];
  if (*v46 < 5u)
  {
    v47 = 0;
  }

  else
  {
    v47 = *(v46 + 2);
    if (v47)
    {
      v47 += &v45[*&v45[v47]];
    }
  }

  v48 = 4 * v42;
  v49 = (v47 + v48 + 4 + *(v47 + v48 + 4));
  v50 = (v49 - *v49);
  if (*v50 >= 7u && (v51 = v50[3]) != 0)
  {
    v52 = (v49 + v51 + *(v49 + v51));
  }

  else
  {
    v52 = 0;
  }

  v53 = v43 - v44;
  v54 = *(sub_A7AC40(v52, i) + 8);
  v55 = sub_A5706C((a1 + 4136), v42);
  v56 = v55;
  v57 = &v55[-*v55];
  if (*v57 < 5u)
  {
    v58 = 0;
  }

  else
  {
    v58 = *(v57 + 2);
    if (v58)
    {
      v58 += &v55[*&v55[v58]];
    }
  }

  v59 = v58 + v48;
  v60 = v53 >> 4;
  v61 = (v59 + 4 + *(v59 + 4));
  v62 = (v61 - *v61);
  if (*v62 >= 7u && (v63 = v62[3]) != 0)
  {
    v64 = (v61 + v63 + *(v61 + v63));
  }

  else
  {
    v64 = 0;
  }

  v65 = sub_A7AC40(v64, i);
  v66 = (v56 - *v56);
  if (*v66 < 7u)
  {
    v68 = sub_A7AEE0(0, *(v65 + 4) + v60);
    if (!v54)
    {
LABEL_65:
      v71 = -1;
      goto LABEL_66;
    }
  }

  else
  {
    v67 = v66[3];
    if (v67)
    {
      v67 = (v67 + v56 + *(v67 + v56));
    }

    v68 = sub_A7AEE0(v67, *(v65 + 4) + v60);
    if (!v54)
    {
      goto LABEL_65;
    }
  }

  v69 = *(v68 + 4);
  v70 = -v54;
  v71 = v54 - 1;
  while ((sub_A7AB44((a1 + 4136), v42, i, v71) + v69) > a3)
  {
    --v71;
    if (__CFADD__(v70++, 1))
    {
      goto LABEL_65;
    }
  }

LABEL_66:
  v73 = *(a2 + 88);
  v74 = *(a2 + 24);
  v75 = *(a2 + 32);
  v76 = sub_A5706C((a1 + 4136), v73);
  v77 = v76;
  v78 = &v76[-*v76];
  if (*v78 < 5u)
  {
    v79 = 0;
  }

  else
  {
    v79 = *(v78 + 2);
    if (v79)
    {
      v79 += &v76[*&v76[v79]];
    }
  }

  v80 = (v79 + 4 * v73 + 4 + *(v79 + 4 * v73 + 4));
  v81 = (v80 - *v80);
  if (*v81 >= 7u && (v82 = v81[3]) != 0)
  {
    v83 = (v80 + v82 + *(v80 + v82));
  }

  else
  {
    v83 = 0;
  }

  v84 = sub_A7AC40(v83, i);
  v85 = (v77 - *v77);
  if (*v85 < 7u)
  {
    v86 = 0;
  }

  else
  {
    v86 = v85[3];
    if (v86)
    {
      v86 = (v86 + v77 + *(v86 + v77));
    }
  }

  v87 = *(sub_A7AEE0(v86, *(v84 + 4) + ((v75 - v74) >> 4)) + 4);
  v88 = sub_A7AA48((a1 + 4136), v73, i, v71);
  *(a2 + 64) = *(a2 + 56) + 12 * i;
  if (*(a2 + 96) == 1)
  {
    v89 = a3 - v87;
    if (v88 < a3 - v87)
    {
      v89 = v88;
    }

    *(a2 + 100) = v71;
    *(a2 + 104) = v89;
  }

  sub_A7B558(a2, a4);
  v90 = *(a2 + 64);
  if (v90 < *(a2 + 56))
  {
    return 0;
  }

  return v90 < *(a2 + 72);
}

uint64_t sub_BB15D8(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = -1431655765 * ((v6 - v5) >> 2);
  if (v7)
  {
    LODWORD(v7) = *(v7 + 32);
  }

  if (v7 == v8)
  {
    return 0;
  }

  if (!a3)
  {
    goto LABEL_25;
  }

  if (v8 < 0x41)
  {
    v24 = *(a1 + 64);
    if (v24 >= v5 && v24 < v6)
    {
      goto LABEL_25;
    }

LABEL_24:
    sub_A7B42C(a1);
    goto LABEL_25;
  }

  sub_A79A50(a1);
  if (*(a1 + 96))
  {
    v9 = (a1 + 104);
  }

  else
  {
    v9 = *(a1 + 64);
  }

  v10 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
  v11 = *(&v10[2 * *(*(a1 + 64) + 4) + 1 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v10) + *v9;
  sub_A7B42C(a1);
  v12 = *(a1 + 96);
  if (*(a1 + 96))
  {
    v13 = (a1 + 104);
  }

  else
  {
    v13 = *(a1 + 64);
  }

  if (a2 <= v11)
  {
    sub_A79A50(a1);
    v26 = *(a1 + 56);
    v25 = *(a1 + 64);
    if (v25 >= v26)
    {
LABEL_26:
      while (v25 < *(a1 + 72))
      {
        if (*(a1 + 96))
        {
          v27 = (a1 + 104);
        }

        else
        {
          v27 = v25;
        }

        v28 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
        if ((*(&v28[2 * v25[1] + 2 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v28) + *v27) > a2)
        {
          goto LABEL_35;
        }

        sub_A7B02C(a1, 0);
        v26 = *(a1 + 56);
        v25 = *(a1 + 64);
        if (v25 < v26)
        {
          goto LABEL_34;
        }
      }
    }

    goto LABEL_34;
  }

  v14 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
  v15 = *(&v14[2 * *(*(a1 + 64) + 4) + 2 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v14) + *v13;
  if (v15 <= a2)
  {
    goto LABEL_24;
  }

  v16 = (a2 - v11) / (v15 - v11);
  v17 = *(a1 + 56);
  v18 = (v16 * (-1431655765 * ((*(a1 + 72) - v17) >> 2) - 1));
  *(a1 + 64) = v17 + 12 * v18;
  if (v12)
  {
    *(a1 + 100) = -NAN;
  }

  v19 = *(a1 + 80);
  if (v19)
  {
    v20 = sub_585D8((*a1 + 3896));
    v21 = *v19;
    if (v21 <= v18)
    {
      v22 = *(v19 + 1);
      if (*(v19 + 2) + v21 - v22 > v18)
      {
        v23 = *(v22 + (v18 - v21));
        if ((v23 & 1) != 0 && ((v23 >> 1) & 1 & ~v20) == 0)
        {
          goto LABEL_24;
        }
      }
    }
  }

LABEL_25:
  v26 = *(a1 + 56);
  v25 = *(a1 + 64);
  if (v25 >= v26)
  {
    goto LABEL_26;
  }

LABEL_34:
  sub_A7B558(a1, 0);
  v26 = *(a1 + 56);
  v25 = *(a1 + 64);
LABEL_35:
  if (v25 >= v26)
  {
    while (v25 < *(a1 + 72))
    {
      if (*(a1 + 96))
      {
        v29 = (a1 + 104);
      }

      else
      {
        v29 = v25;
      }

      v30 = (*(a1 + 16) + *(*(a1 + 16) - **(a1 + 16) + 6));
      if ((*(&v30[2 * v25[1] + 2 + 2 * ((*(a1 + 32) - *(a1 + 24)) >> 4)] + *v30) + *v29) <= a2)
      {
        return 1;
      }

      sub_A7B558(a1, 0);
      v25 = *(a1 + 64);
      if (v25 < *(a1 + 56))
      {
        return 0;
      }
    }
  }

  return 0;
}

void sub_BB1910(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v41);
  v4 = *(a2 + 16);
  *(a1 + 112) = *a2;
  *(a1 + 128) = v4;
  *(a1 + 144) = *(a2 + 32);
  *(a1 + 152) = *(a2 + 40);
  sub_BB2BD8(a1);
  v5 = *(a1 + 48);
  v42[0] = 0x1FFFFFFFDLL;
  v6 = sub_A98E8C(v5, v42);
  v7 = *(v6 + 8);
  if (v7 != -1)
  {
    *(a1 + 456) = v7;
    if (*(a1 + 33) != 1)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (!sub_A822FC(*(a1 + 40)))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v8 = *(v5 + 112);
  *(v5 + 112) = v8 + 1;
  *(v6 + 8) = v8;
  v9 = v6;
  sub_2512DC(v5 + 88, v42);
  *(a1 + 456) = *(v9 + 8);
  if (*(a1 + 33) == 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = *(a1 + 48);
  v42[0] = 0x1FFFFFFFELL;
  v11 = sub_A98E8C(v10, v42);
  v12 = *(v11 + 8);
  if (v12 == -1)
  {
    v13 = *(v10 + 112);
    *(v10 + 112) = v13 + 1;
    *(v11 + 8) = v13;
    v14 = v11;
    sub_2512DC(v10 + 88, v42);
    v12 = *(v14 + 8);
  }

  sub_BB49D8(a1, 0, v12, 0, *(a1 + 116));
LABEL_9:
  LODWORD(v15) = *(a1 + 168);
  if (v15 >= 2)
  {
    v16 = 1;
    while (1)
    {
      if (*(a1 + 25) & 1) == 0 && v16 >= 2 && (*(a1 + 27))
      {
        sub_BB2E28(a1, v16);
      }

      if (v16)
      {
        v26 = *(a1 + 312);
        v27 = *(a1 + 320);
        if (v26 != v27)
        {
          v28 = *(a1 + 288);
          v29 = *(a1 + 312);
          do
          {
            v30 = *v29++;
            *(v28 + ((v30 >> 3) & 0x1FFFFFF8)) &= ~(1 << v30);
          }

          while (v29 != v27);
        }

        *(a1 + 320) = v26;
        sub_BB2FE0(a1, v16);
        sub_BB32F8(a1, v16);
        v31 = *(a1 + 456);
        if (*(a1 + 296) > v31 && ((*(*(a1 + 288) + ((v31 >> 3) & 0x1FFFFFF8)) >> v31) & 1) != 0)
        {
          *(*(a1 + 464) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        }

        if (*(a1 + 25) == 1 && *(a1 + 312) == *(a1 + 320))
        {
LABEL_43:
          LODWORD(v15) = *(a1 + 168);
          if (v15)
          {
            goto LABEL_44;
          }

          goto LABEL_53;
        }
      }

      else
      {
        v17 = *(a1 + 264);
        v18 = *(a1 + 272);
        if (v17 != v18)
        {
          v19 = *(a1 + 240);
          v20 = *(a1 + 264);
          do
          {
            v21 = *v20++;
            *(v19 + ((v21 >> 3) & 0x1FFFFFF8)) &= ~(1 << v21);
          }

          while (v20 != v18);
        }

        *(a1 + 272) = v17;
        sub_BB3BA0(a1, v16);
        sub_7E9A4(v42);
        v22 = *(a1 + 432);
        v23 = *(a1 + 440);
        while (v22 != v23)
        {
          v24 = *v22++;
          sub_BB4E40(a1, v16, v24);
        }

        *(a1 + 624) = sub_7EA60(v42) + *(a1 + 624);
        v25 = *(a1 + 456);
        if (*(a1 + 248) > v25 && ((*(*(a1 + 240) + ((v25 >> 3) & 0x1FFFFFF8)) >> v25) & 1) != 0)
        {
          *(*(a1 + 464) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v16 & 0x3E);
        }

        if (*(a1 + 25) == 1 && *(a1 + 264) == *(a1 + 272))
        {
          goto LABEL_43;
        }
      }

      v32 = sub_A9D694(a1) + 744;
      if (*(a1 + 736) > v32)
      {
        v32 = *(a1 + 736);
      }

      *(a1 + 736) = v32;
      if (sub_BAF0B4(a1))
      {
        goto LABEL_43;
      }

      ++v16;
      v15 = *(a1 + 168);
      if (v16 >= v15)
      {
        goto LABEL_41;
      }
    }
  }

  LODWORD(v16) = 1;
LABEL_41:
  if (v15)
  {
LABEL_44:
    v33 = 0;
    v34 = 0;
    v35 = v15;
    do
    {
      if ((*(*(a1 + 464) + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34))
      {
        *(a1 + 656) = *(a1 + 656) + 1.0;
        v36 = *(a1 + 176);
        v37 = *(a1 + 456);
        if (*v36 <= v37)
        {
          *v36 = v37 + 1;
          v38 = v36[2];
          v39 = v36[1] * (v37 + 1);
          v40 = 0xAAAAAAAAAAAAAAABLL * ((v36[3] - v38) >> 3);
          if (v39 > v40)
          {
            sub_BAF9A8((v36 + 2), v39 - v40);
          }

          else if (v39 < v40)
          {
            v36[3] = v38 + 24 * v39;
          }
        }

        *(a1 + 648) += *(v36[2] + 24 * v36[1] * v37 + v33);
      }

      ++v34;
      v33 += 24;
    }

    while (v35 != v34);
  }

LABEL_53:
  *(a1 + 664) = v16;
  *(a1 + 616) = sub_7EA60(v41);
}

__n128 sub_BB1D70@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  HIBYTE(v150) = 0;
  LOBYTE(__p) = 0;
  __dst = (a2 + 32);
  v114 = a2 + 8;
  sub_CC9264(a2 + 32, &__p);
  if (SHIBYTE(v150) < 0)
  {
    operator delete(__p);
  }

  *(a2 + 256) = 0;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 184) = *(a1 + 112);
  v116 = *(a1 + 42);
  if (v116 >= 2)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v115 = _Q0;
    v8 = 1;
    v122 = a1;
    while (((*(a1[58] + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
LABEL_9:
      if (++v8 == v116)
      {
        goto LABEL_4;
      }
    }

    v9 = a1[22];
    v10 = *(a1 + 114);
    v11 = v10;
    if (*v9 <= v10)
    {
      *v9 = v10 + 1;
      v12 = v9[2];
      v13 = v9[1] * (v10 + 1);
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9[3] - v12) >> 3);
      if (v13 <= v14)
      {
        v11 = v10;
        if (v13 < v14)
        {
          v9[3] = v12 + 24 * v13;
          v11 = v10;
        }
      }

      else
      {
        sub_BAF9A8((v9 + 2), v13 - v14);
        v11 = *(a1 + 114);
      }
    }

    v118 = v8;
    v15 = v9[2] + 24 * v9[1] * v10 + 24 * v8;
    v16 = a1;
    v18 = *v15;
    v17 = *(v15 + 4);
    v19 = *(v15 + 8);
    v20 = *(v15 + 16);
    v21 = *(v15 + 20);
    LOWORD(__p) = 0;
    BYTE2(__p) = 0;
    *(&__p + 4) = 0;
    HIDWORD(__p) = 0;
    v150 = -NAN;
    v151 = 0x7FFFFFFF;
    v152 = 0;
    v153 = 0x8000000080000000;
    v154 = 0;
    v155 = 0x8000000080000000;
    v156 = 0x7FFFFFFF;
    v157 = 0;
    v158 = 0x8000000080000000;
    v159 = 0;
    v160 = 0x8000000080000000;
    v161 = 0;
    v162 = 0xFFFFFFFF00000000;
    v163 = -1;
    v164 = 0;
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v165 = 0x7FFFFFFF;
    v169 = 100;
    v170 = -1;
    v171 = v115;
    v172 = v115;
    v173 = v115;
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v22 = v16[5];
    if (sub_68312C(v22 + 3896) && *(v22 + 3944))
    {
      v23 = 1;
    }

    else
    {
      v24 = v122[5];
      v23 = sub_4C2B90(v24 + 3896) && *(v24 + 3960) != 0;
    }

    BYTE1(__p) = v23;
    v25 = v122[5];
    if (sub_4C2B90(v25 + 3896))
    {
      DWORD2(__p) = 2 * (*(v25 + 3960) != 0);
      DWORD1(__p) = DWORD2(__p);
      if (v17 != 0xFFFFFFFF)
      {
        goto LABEL_43;
      }

      goto LABEL_26;
    }

    *(&__p + 4) = 0;
    if (v17 == 0xFFFFFFFF)
    {
LABEL_26:
      v26 = v174;
      v27 = v122;
      if (v174 != *(&v174 + 1))
      {
        v28 = *(&v174 + 1) - 72;
        if (*(&v174 + 1) - 72 > v174)
        {
          do
          {
            v31 = *v26;
            v32 = *(v26 + 16);
            *(v26 + 8) = 0;
            *(v26 + 16) = 0;
            *v26 = 0;
            v33 = *(v26 + 24);
            v119 = v31;
            v120 = *(v26 + 32);
            v34 = *(v26 + 48);
            *(v26 + 32) = 0;
            *(v26 + 40) = 0;
            *(v26 + 48) = 0;
            *v134 = *(v26 + 56);
            *&v134[7] = *(v26 + 63);
            v35 = *(v28 + 24);
            v36 = *(v28 + 16);
            *v26 = *v28;
            *(v26 + 16) = v36;
            *(v28 + 8) = 0;
            *(v28 + 16) = 0;
            *v28 = 0;
            *(v26 + 24) = v35;
            v37 = *(v26 + 32);
            if (v37)
            {
              *(v26 + 40) = v37;
              operator delete(v37);
              *(v26 + 32) = 0;
              *(v26 + 40) = 0;
              *(v26 + 48) = 0;
            }

            *(v26 + 32) = *(v28 + 32);
            *(v26 + 48) = *(v28 + 48);
            *(v28 + 32) = 0;
            *(v28 + 40) = 0;
            *(v28 + 48) = 0;
            v38 = *(v28 + 56);
            *(v26 + 63) = *(v28 + 63);
            *(v26 + 56) = v38;
            v39 = *v28;
            if (*v28)
            {
              v40 = *(v28 + 8);
              v41 = *v28;
              if (v40 != v39)
              {
                do
                {
                  v42 = v40 - 168;
                  v43 = *(v40 - 8);
                  if (v43 != -1)
                  {
                    (off_26711F0[v43])(&v123, v40 - 168);
                  }

                  *(v40 - 8) = -1;
                  v40 -= 168;
                }

                while (v42 != v39);
                v41 = *v28;
                v27 = v122;
              }

              *(v28 + 8) = v39;
              operator delete(v41);
            }

            *v28 = v119;
            *(v28 + 16) = v32;
            *(v28 + 24) = v33;
            v44 = *(v28 + 32);
            if (v44)
            {
              *(v28 + 40) = v44;
              operator delete(v44);
            }

            *(v28 + 32) = v120;
            *(v28 + 48) = v34;
            *(v28 + 56) = *v134;
            *(v28 + 63) = *&v134[7];
            v26 += 72;
            v28 -= 72;
          }

          while (v26 < v28);
        }
      }

      sub_A83920(&__p);
      v29 = *(a2 + 16);
      if (v29 >= *(a2 + 24))
      {
        v30 = sub_BA7328(v114, &__p);
      }

      else
      {
        sub_A32C84(*(a2 + 16), &__p);
        v30 = v29 + 296;
      }

      v8 = v118;
      a1 = v27;
      *(a2 + 16) = v30;
      if (*(&v178 + 1))
      {
        *&v179 = *(&v178 + 1);
        operator delete(*(&v178 + 1));
      }

      if (v177)
      {
        *(&v177 + 1) = v177;
        operator delete(v177);
      }

      if (*(&v175 + 1))
      {
        *&v176 = *(&v175 + 1);
        operator delete(*(&v175 + 1));
      }

      *v134 = &v174;
      sub_A3212C(v134);
      if (SHIBYTE(v168) < 0)
      {
        operator delete(v166);
      }

      goto LABEL_9;
    }

LABEL_43:
    v121 = v118;
    while (1)
    {
      v140 = 0;
      v139 = 0u;
      v141 = 1;
      v143 = 0;
      v144 = 0;
      v142 = 0;
      v145 = 1;
      v146 = 0x8000000080000000;
      v147 = 0;
      v148 = 0;
      *v134 = 0;
      *&v134[16] = 0u;
      *v135 = 0xFFFFFFFFLL;
      *&v135[16] = 0u;
      *v138 = 1;
      v137[0] = 0x7FFFFFFFuLL;
      *&v134[4] = 0x8000000080000000;
      *&v134[12] = 0x7FFFFFFF;
      *&v134[20] = 0x8000000080000000;
      *&v135[8] = xmmword_2266560;
      *&v135[24] = -1;
      memset(v136, 0, sizeof(v136));
      v137[1] = 0uLL;
      *&v138[4] = xmmword_22A7500;
      if (v21 == 0xFFFFFFFF)
      {
        v141 = 1;
        v46 = *sub_A9C5E0((v122[6] + 88), v17);
        v47 = *sub_A9C5E0((v122[6] + 88), v11);
        if (*&v138[16] != -1)
        {
          if (*&v138[16] == 1)
          {
            *v134 = 0;
            *&v134[4] = v20;
            *&v134[8] = v18;
            *&v134[12] = v46;
            v11 = v17;
            *&v134[20] = v47;
            goto LABEL_100;
          }

          (off_26711F0[*&v138[16]])(&v123, v134);
        }

        *v134 = 0;
        *&v134[4] = v20;
        *&v134[12] = v46;
        *&v134[20] = v47;
        v11 = v17;
        *&v134[8] = v18;
        *&v138[16] = 1;
LABEL_100:
        v48 = v122;
        v92 = *(&v139 + 1);
        if (*(&v139 + 1) < v140)
        {
          goto LABEL_93;
        }

        goto LABEL_101;
      }

      v123 = xmmword_2297BF0;
      LOWORD(v124) = 0;
      *(&v124 + 4) = 0x8000000080000000;
      WORD6(v124) = 0;
      *v125 = xmmword_22A7450;
      *&v125[16] = -COERCE_DOUBLE(0x8000000080000000);
      v126 = 0uLL;
      v127 = 0uLL;
      v128 = 0uLL;
      *&v125[24] = -1;
      v129 = 0x7FFFFFFF;
      v131 = 0;
      v132 = 0;
      v130 = 0;
      LOBYTE(v133) = 1;
      *(&v133 + 4) = 0x8000000080000000;
      HIDWORD(v133) = 0;
      v141 = 0;
      v48 = v122;
      v49 = *sub_A9C5E0((v122[7] + 88), v21);
      *v125 = v49;
      *&v125[8] = v19;
      *&v125[16] = v20;
      *&v125[20] = v17;
      v50 = v122[5];
      v190[0] = *sub_A9C5E0((v122[6] + 88), v11);
      v51 = sub_A79708(&v180, v50, v49, v17, 0, 0);
      v187 = v186 + 12 * *&v125[8];
      if (v188 == 1)
      {
        v189 = *&v125[12];
      }

      if (v185)
      {
        v52 = *(v185 + 4 * ((v183 - v182) >> 4));
      }

      else
      {
        v52 = 0;
      }

      sub_AA98A0(v51, v190, v52);
      _CF = v183 < v184 && v183 >= v182;
      v54 = (v183 - v182) >> 4;
      if (!_CF)
      {
        LODWORD(v54) = -1;
      }

      *&v125[24] = v54;
      v55 = v122[6];
      v56 = *&v125[20];
      v57 = sub_A57920((v122[5] + 4136), *v125);
      v58 = (v57 - *v57);
      if (*v58 >= 9u && (v59 = v58[4]) != 0)
      {
        v60 = (v57 + v59 + *(v57 + v59));
      }

      else
      {
        v60 = 0;
      }

      v180 = __ROR8__(*sub_A571D4(v60, v56), 32);
      v61 = sub_A98E8C(v55, &v180);
      v62 = v61;
      v11 = *(v61 + 8);
      if (v11 == -1)
      {
        v63 = *(v55 + 112);
        *(v55 + 112) = v63 + 1;
        *(v61 + 8) = v63;
        sub_2512DC(v55 + 88, &v180);
        v11 = *(v62 + 8);
      }

      v64 = *&v125[20];
      v65 = sub_A57920((v122[5] + 4136), *v125);
      v66 = (v65 - *v65);
      if (*v66 >= 9u && (v67 = v66[4]) != 0)
      {
        v68 = (v65 + v67 + *(v65 + v67));
      }

      else
      {
        v68 = 0;
      }

      DWORD1(v123) = 10 * *(sub_A571D4(v68, v64) + 8);
      v69 = v122[5];
      v70 = *v125;
      v71 = *&v125[20];
      v180 = sub_A56F04((v69 + 4136), *v125, *&v125[20], *&v125[8]);
      LODWORD(v181) = v72;
      v73 = sub_A57920((v69 + 4136), v70);
      v74 = (v73 - *v73);
      if (*v74 >= 9u && (v75 = v74[4]) != 0)
      {
        v76 = (v73 + v75 + *(v73 + v75));
      }

      else
      {
        v76 = 0;
      }

      v77 = *(sub_A571D4(v76, v71) + 12);
      v78 = *&v125[12] == -1 ? 0x7FFFFFFF : *&v125[16];
      *(&v123 + 1) = sub_A56700((v69 + 4184), &v180, v77, v78);
      LOWORD(v124) = v79;
      v80 = v122[5];
      v81 = *v125;
      v82 = *&v125[24];
      v180 = sub_A56F04((v80 + 4136), *v125, *&v125[24], *&v125[8]);
      LODWORD(v181) = v83;
      v84 = sub_A57920((v80 + 4136), v81);
      v85 = (v84 - *v84);
      if (*v85 >= 9u && (v86 = v85[4]) != 0)
      {
        v87 = (v84 + v86 + *(v84 + v86));
      }

      else
      {
        v87 = 0;
      }

      v88 = *(sub_A571D4(v87, v82) + 12);
      v89 = *&v125[12] == -1 ? 0x7FFFFFFF : *&v125[16];
      *(&v124 + 4) = sub_A56A5C((v80 + 4184), &v180, v88, v89);
      WORD6(v124) = v90;
      if (*&v138[16])
      {
        break;
      }

      *v134 = v123;
      *&v134[16] = v124;
      *v135 = *v125;
      *&v135[12] = *&v125[12];
      sub_A349D4(v136, v126, *(&v126 + 1), 0xEEEEEEEEEEEEEEEFLL * ((*(&v126 + 1) - v126) >> 2));
      sub_A349D4(&v136[1] + 1, *(&v127 + 1), v128, 0xEEEEEEEEEEEEEEEFLL * ((v128 - *(&v127 + 1)) >> 2));
      LODWORD(v137[0]) = v129;
      sub_956400(v137 + 1, v130, v131, 0xCCCCCCCCCCCCCCCDLL * ((v131 - v130) >> 3));
      *v138 = v133;
      v91 = v130;
      if (v130)
      {
        goto LABEL_87;
      }

LABEL_88:
      if (*(&v127 + 1))
      {
        *&v128 = *(&v127 + 1);
        operator delete(*(&v127 + 1));
      }

      if (v126)
      {
        *(&v126 + 1) = v126;
        operator delete(v126);
      }

      v92 = *(&v139 + 1);
      if (*(&v139 + 1) < v140)
      {
LABEL_93:
        *v92 = 0;
        *(v92 + 160) = -1;
        v93 = *&v138[16];
        if (*&v138[16] != -1)
        {
          *&v123 = v92;
          (off_26712A0[*&v138[16]])(&v123, v134);
          *(v92 + 160) = v93;
        }

        v94 = v92 + 168;
        goto LABEL_102;
      }

LABEL_101:
      v94 = sub_AA9AE0(&v139, v134);
LABEL_102:
      *(&v139 + 1) = v94;
      v95 = *(&v174 + 1);
      if (*(&v174 + 1) >= v175)
      {
        v96 = sub_BA71A0(&v174, &v139);
      }

      else
      {
        sub_A33054(*(&v174 + 1), &v139);
        v96 = v95 + 72;
      }

      *(&v174 + 1) = v96;
      v97 = v48[22];
      if (*v97 <= v11)
      {
        *v97 = v11 + 1;
        v98 = v97[2];
        v99 = v97[1] * (v11 + 1);
        v100 = 0xAAAAAAAAAAAAAAABLL * ((v97[3] - v98) >> 3);
        if (v99 <= v100)
        {
          if (v99 < v100)
          {
            v97[3] = v98 + 24 * v99;
          }
        }

        else
        {
          sub_BAF9A8((v97 + 2), v99 - v100);
        }
      }

      v101 = v97[2] + 24 * v97[1] * v11 + 24 * --v121;
      v18 = *v101;
      v17 = *(v101 + 4);
      v19 = *(v101 + 8);
      v20 = *(v101 + 16);
      v21 = *(v101 + 20);
      if (*&v138[16] != -1)
      {
        (off_26711F0[*&v138[16]])(&v123, v134);
      }

      if (v142)
      {
        v143 = v142;
        operator delete(v142);
      }

      v102 = v139;
      if (v139)
      {
        v103 = *(&v139 + 1);
        v45 = v139;
        if (*(&v139 + 1) != v139)
        {
          do
          {
            v104 = v103 - 168;
            v105 = *(v103 - 8);
            if (v105 != -1)
            {
              (off_26711F0[v105])(v134, v103 - 168);
            }

            *(v103 - 8) = -1;
            v103 -= 168;
          }

          while (v104 != v102);
          v45 = v139;
        }

        *(&v139 + 1) = v102;
        operator delete(v45);
      }

      if (v17 == 0xFFFFFFFF)
      {
        goto LABEL_26;
      }
    }

    v180 = v134;
    v181 = &v123;
    sub_BB0908(&v180);
    v91 = v130;
    if (!v130)
    {
      goto LABEL_88;
    }

LABEL_87:
    v131 = v91;
    operator delete(v91);
    goto LABEL_88;
  }

LABEL_4:
  if (__dst != a1 + 74)
  {
    v3 = *(a1 + 615);
    if (*(a2 + 55) < 0)
    {
      if (v3 >= 0)
      {
        v106 = a1 + 74;
      }

      else
      {
        v106 = a1[74];
      }

      if (v3 >= 0)
      {
        v107 = *(a1 + 615);
      }

      else
      {
        v107 = a1[75];
      }

      sub_13B38(__dst, v106, v107);
    }

    else if ((*(a1 + 615) & 0x80) != 0)
    {
      sub_13A68(__dst, a1[74], a1[75]);
    }

    else
    {
      *__dst = *(a1 + 37);
      __dst[2] = a1[76];
    }
  }

  v108 = *(a1 + 87);
  *(a2 + 120) = *(a1 + 85);
  *(a2 + 136) = v108;
  v109 = *(a1 + 91);
  *(a2 + 152) = *(a1 + 89);
  *(a2 + 168) = v109;
  v110 = *(a1 + 79);
  *(a2 + 56) = *(a1 + 77);
  *(a2 + 72) = v110;
  result = *(a1 + 81);
  v112 = *(a1 + 83);
  *(a2 + 88) = result;
  *(a2 + 104) = v112;
  return result;
}

void sub_BB2AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  sub_A31EF4(a10);
  _Unwind_Resume(a1);
}

void sub_BB2B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(a15 + 16) = v15;
  sub_A7847C(&STACK[0x250]);
  sub_A300F8(a15);
  _Unwind_Resume(a1);
}

void sub_BB2B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_A7847C(&STACK[0x250]);
  sub_A300F8(a15);
  _Unwind_Resume(a1);
}

void sub_BB2B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_A3238C(v53);
  STACK[0x210] = v53;
  sub_BA94A4(&a53);
  sub_A785D0(&STACK[0x208]);
  sub_A7847C(&STACK[0x250]);
  sub_A300F8(a15);
  _Unwind_Resume(a1);
}

double sub_BB2BD8(uint64_t a1)
{
  v2 = *(a1 + 264);
  v3 = *(a1 + 272);
  if (v2 != v3)
  {
    v4 = *(a1 + 240);
    v5 = *(a1 + 264);
    do
    {
      v6 = *v5++;
      *(v4 + ((v6 >> 3) & 0x1FFFFFF8)) &= ~(1 << v6);
    }

    while (v5 != v3);
  }

  *(a1 + 272) = v2;
  v7 = *(a1 + 312);
  v8 = *(a1 + 320);
  if (v7 != v8)
  {
    v9 = *(a1 + 288);
    v10 = *(a1 + 312);
    do
    {
      v11 = *v10++;
      *(v9 + ((v11 >> 3) & 0x1FFFFFF8)) &= ~(1 << v11);
    }

    while (v10 != v8);
  }

  *(a1 + 320) = v7;
  v12 = *(a1 + 360);
  v13 = *(a1 + 368);
  if (v12 != v13)
  {
    v14 = *(a1 + 336);
    v15 = *(a1 + 360);
    do
    {
      v16 = *v15++;
      *(v14 + ((v16 >> 3) & 0x1FFFFFF8)) &= ~(1 << v16);
    }

    while (v15 != v13);
  }

  *(a1 + 368) = v12;
  v17 = *(a1 + 432);
  v18 = *(a1 + 440);
  if (v17 != v18)
  {
    v19 = *(a1 + 408);
    v20 = *(a1 + 384);
    v21 = *(a1 + 432);
    do
    {
      v22 = *v21++;
      *(v19 + ((v22 >> 3) & 0x1FFFFFF8)) &= ~(1 << v22);
      *(v20 + 4 * v22) = -1;
    }

    while (v21 != v18);
  }

  *(a1 + 440) = v17;
  sub_C4306C((a1 + 488));
  *(a1 + 472) = 0;
  v33 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v34, &__p);
  v23 = (a1 + 592);
  if (*(a1 + 615) < 0)
  {
    operator delete(*v23);
  }

  *v23 = v34;
  *(a1 + 608) = v35;
  HIBYTE(v35) = 0;
  LOBYTE(v34) = 0;
  v24 = v41;
  *(a1 + 680) = v40;
  *(a1 + 696) = v24;
  v25 = v43;
  *(a1 + 712) = v42;
  *(a1 + 728) = v25;
  v26 = v37;
  *(a1 + 616) = v36;
  *(a1 + 632) = v26;
  v27 = v39;
  *(a1 + 648) = v38;
  *(a1 + 664) = v27;
  if (v33 < 0)
  {
    operator delete(__p);
    v28 = (2 * *(a1 + 8) + 2);
    *(a1 + 168) = v28;
    if ((*(a1 + 24) & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v28 = (2 * *(a1 + 8) + 2);
  *(a1 + 168) = v28;
  if (*(a1 + 24))
  {
LABEL_17:
    v29 = *(a1 + 176);
    v29[3] = v29[2];
    *v29 = 0;
    v29[1] = v28;
  }

LABEL_18:
  *(a1 + 200) = *(a1 + 192);
  *(a1 + 224) = *(a1 + 216);
  sub_4D9168(a1 + 464, v28, 0);
  return sub_C430C8((a1 + 488), *(a1 + 16), v30);
}

void sub_BB2E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_BB2E28(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 360);
  v4 = *(a1 + 368);
  if (v3 == v4)
  {
    v19 = *(a1 + 360);
    goto LABEL_25;
  }

  v5 = 24 * (a2 - 2);
  do
  {
    v6 = *v3;
    v7 = *(a1 + 176);
    v8 = *v7;
    v9 = v7;
    if (*v7 > v6)
    {
      goto LABEL_7;
    }

    *v7 = v6 + 1;
    v10 = v7[2];
    v11 = v7[1] * (v6 + 1);
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7[3] - v10) >> 3);
    if (v11 > v12)
    {
      sub_BAF9A8((v7 + 2), v11 - v12);
      v9 = *(a1 + 176);
      v8 = *v9;
LABEL_7:
      v13 = *(v7[2] + 24 * v7[1] * v6 + v5);
      if (v8 > v6)
      {
        goto LABEL_16;
      }

LABEL_8:
      *v9 = v6 + 1;
      v14 = v9[2];
      v15 = v9[1] * (v6 + 1);
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v9[3] - v14) >> 3);
      if (v15 <= v16)
      {
        if (v15 < v16)
        {
          v9[3] = v14 + 24 * v15;
        }
      }

      else
      {
        sub_BAF9A8((v9 + 2), v15 - v16);
      }

      goto LABEL_16;
    }

    if (v11 < v12)
    {
      v7[3] = v10 + 24 * v11;
    }

    v9 = v7;
    v13 = *(v7[2] + 24 * v7[1] * v6 + v5);
    if (v6 + 1 <= v6)
    {
      goto LABEL_8;
    }

LABEL_16:
    if (v13 != 0x7FFFFFFF)
    {
      v17 = (v9[2] + 24 * v9[1] * v6 + 24 * a2);
      if (*v17 == 0x7FFFFFFF || v13 < *v17)
      {
        *v17 = v13;
      }
    }

    ++v3;
  }

  while (v3 != v4);
  v3 = *(a1 + 360);
  v19 = *(a1 + 368);
LABEL_25:
  result = *(a1 + 696) + ((v19 - v3) >> 2);
  *(a1 + 696) = result;
  return result;
}

double sub_BB2FE0(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v34);
  v4 = *(a1 + 264);
  v33 = *(a1 + 272);
  if (v4 != v33)
  {
    v30 = ~a2;
    v31 = a2;
    v32 = 24 * (a2 - 1);
    while (1)
    {
      v6 = *v4;
      v7 = *sub_A9C5E0((*(a1 + 48) + 88), v6);
      v8 = *(a1 + 176);
      if (*v8 <= v6)
      {
        *v8 = v6 + 1;
        v9 = v8[2];
        v10 = v8[1] * (v6 + 1);
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v8[3] - v9) >> 3);
        if (v10 <= v11)
        {
          if (v10 < v11)
          {
            v8[3] = v9 + 24 * v10;
          }
        }

        else
        {
          sub_BAF9A8((v8 + 2), v10 - v11);
        }
      }

      v12 = *(v8[2] + 24 * v8[1] * v6 + v32);
      if (HIDWORD(v7) == 1 && (v7 + 3) < 2)
      {
LABEL_21:
        v18 = v12;
        v19 = *(a1 + 64);
        if (v19)
        {
          goto LABEL_28;
        }

        goto LABEL_33;
      }

      v14 = *(*(a1 + 40) + 4120);
      if (*(v14 + 17) == 1)
      {
        break;
      }

      v15 = sub_502FF8(v14 + 24, __ROR8__(v7, 32), 0, "stop");
      v20 = (v15 - *v15);
      if (*v20 >= 0x15u)
      {
        v17 = v20[10];
        if (v17)
        {
          goto LABEL_25;
        }
      }

      v18 = v12 + 30;
      v19 = *(a1 + 64);
      if (v19)
      {
LABEL_28:
        if (*v19 > v6)
        {
          v21 = 0;
          v22 = *(a1 + 168) + v30;
          v23 = v22;
          while (v21 <= v22)
          {
            v24 = *sub_BAFC3C(v19 + 2, v19[1] * v6 + v23);
            v21 += 2;
            v23 -= 2;
            if (v24 != 0x7FFFFFFF)
            {
              if (v24 < v18)
              {
                goto LABEL_5;
              }

              goto LABEL_33;
            }
          }
        }

        goto LABEL_5;
      }

LABEL_33:
      if (sub_BB49D8(a1, 1u, v6, v31, v18))
      {
        v25 = *(a1 + 176);
        if (*v25 <= v6)
        {
          *v25 = v6 + 1;
          v26 = v25[2];
          v27 = v25[1] * (v6 + 1);
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v25[3] - v26) >> 3);
          if (v27 > v28)
          {
            sub_BAF9A8((v25 + 2), v27 - v28);
          }

          else if (v27 < v28)
          {
            v25[3] = v26 + 24 * v27;
          }
        }

        v5 = v25[2] + 24 * v25[1] * v6 + 24 * v31;
        *(v5 + 4) = v6;
        *(v5 + 8) = -1;
        *(v5 + 16) = v12;
        *(v5 + 20) = -1;
      }

LABEL_5:
      if (++v4 == v33)
      {
        goto LABEL_38;
      }
    }

    v15 = sub_A74944(v14 + 24, v7, 0, "transfers at stop");
    v16 = (v15 - *v15);
    if (*v16 < 5u)
    {
      goto LABEL_21;
    }

    v17 = v16[2];
    if (!v17)
    {
      v18 = v12;
      v19 = *(a1 + 64);
      if (v19)
      {
        goto LABEL_28;
      }

      goto LABEL_33;
    }

LABEL_25:
    v18 = *(v15 + v17) + v12;
    v19 = *(a1 + 64);
    if (v19)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

LABEL_38:
  result = sub_7EA60(v34) + *(a1 + 632);
  *(a1 + 632) = result;
  return result;
}

double sub_BB32F8(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v113);
  v4 = *(a1 + 264);
  v102 = *(a1 + 272);
  if (v4 != v102)
  {
    v104 = ~a2;
    v105 = a2;
    v101 = 24 * (a2 - 1);
    do
    {
      v103 = v4;
      v5 = *v4;
      v6 = *sub_A9C5E0((*(a1 + 48) + 88), v5);
      v7 = *(a1 + 176);
      if (*v7 <= v5)
      {
        *v7 = v5 + 1;
        v8 = v7[2];
        v9 = v7[1] * (v5 + 1);
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v7[3] - v8) >> 3);
        if (v9 <= v10)
        {
          if (v9 < v10)
          {
            v7[3] = v8 + 24 * v9;
          }
        }

        else
        {
          v11 = v6;
          sub_BAF9A8((v7 + 2), v9 - v10);
          v6 = v11;
        }
      }

      v106 = *(v7[2] + 24 * v7[1] * v5 + v101);
      sub_A74644(&v107, *(a1 + 40), v6);
      v12 = v108;
      v13 = 16;
      if (v112)
      {
        v13 = 32;
      }

      v14 = *(&v107 + v13);
      while (v12 < v14)
      {
        v17 = __ROR8__(*v12, 32);
        v18 = *(a1 + 48);
        v19 = *(v18 + 56) - 1;
        v20 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v17 ^ (v17 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v17 ^ (v17 >> 33))) >> 33));
        v21 = v20 ^ (v20 >> 33);
        v22 = *(v18 + 80);
        v24 = *(v18 + 64);
        v23 = *(v18 + 68);
        v25 = v21 & v19;
        v26 = (v22 + 12 * (v21 & v19));
        v28 = *v26;
        v27 = v26[1];
        if (v23 == v27 && v24 == v28)
        {
          goto LABEL_60;
        }

        if (*(v18 + 40))
        {
          v30 = -1;
          v31 = 1;
          do
          {
            if (*(v18 + 36) == v27 && *(v18 + 32) == v28)
            {
              if (v30 == -1)
              {
                v30 = v25;
              }
            }

            else if (__PAIR64__(v27, v28) == v17)
            {
              goto LABEL_57;
            }

            v25 = (v25 + v31) & v19;
            v32 = (v22 + 12 * v25);
            v28 = *v32;
            v27 = v32[1];
            ++v31;
          }

          while (v23 != v27 || v24 != v28);
          if (v30 != -1)
          {
            if (sub_A99094(*(a1 + 48), 1))
            {
              goto LABEL_35;
            }

            goto LABEL_61;
          }

LABEL_60:
          v30 = v25;
          if (sub_A99094(*(a1 + 48), 1))
          {
            goto LABEL_35;
          }

          goto LABEL_61;
        }

        v48 = 1;
        while (__PAIR64__(v27, v28) != v17)
        {
          v25 = (v25 + v48) & v19;
          v49 = (v22 + 12 * v25);
          v28 = *v49;
          v27 = v49[1];
          ++v48;
          if (v23 == v27 && v24 == v28)
          {
            goto LABEL_60;
          }
        }

LABEL_57:
        if (v25 != -1)
        {
          v51 = v22 + 12 * v25;
          v52 = *(v51 + 8);
          if (v52 != -1)
          {
            goto LABEL_108;
          }

          goto LABEL_94;
        }

        v30 = -1;
        if (sub_A99094(*(a1 + 48), 1))
        {
LABEL_35:
          v34 = *(v18 + 56) - 1;
          v35 = *(v18 + 80);
          v37 = *(v18 + 64);
          v36 = *(v18 + 68);
          v38 = v34 & v21;
          v39 = (v35 + 12 * (v34 & v21));
          v41 = *v39;
          v40 = v39[1];
          v42 = *(v18 + 40);
          if (v36 == v40 && v37 == v41)
          {
            goto LABEL_84;
          }

          if (v42)
          {
            v44 = -1;
            v45 = 1;
            do
            {
              if (*(v18 + 36) == v40 && *(v18 + 32) == v41)
              {
                if (v44 == -1)
                {
                  v44 = v38;
                }
              }

              else if (__PAIR64__(v40, v41) == v17)
              {
                goto LABEL_78;
              }

              v38 = (v38 + v45) & v34;
              v46 = (v35 + 12 * v38);
              v41 = *v46;
              v40 = v46[1];
              ++v45;
            }

            while (v36 != v40 || v37 != v41);
            if (v44 == -1)
            {
LABEL_84:
              v44 = v38;
            }

            v61 = *(v18 + 48);
            if ((v61 - v42) >= 0x1555555555555555)
            {
              goto LABEL_152;
            }
          }

          else
          {
            v58 = 1;
            while (__PAIR64__(v40, v41) != v17)
            {
              v38 = (v38 + v58) & v34;
              v59 = (v35 + 12 * v38);
              v41 = *v59;
              v40 = v59[1];
              ++v58;
              if (v36 == v40 && v37 == v41)
              {
                v42 = 0;
                goto LABEL_84;
              }
            }

LABEL_78:
            if (v38 != -1)
            {
              v51 = v35 + 12 * v38;
              v52 = *(v51 + 8);
              if (v52 != -1)
              {
                goto LABEL_108;
              }

              goto LABEL_94;
            }

            v44 = -1;
            v61 = *(v18 + 48);
            if ((v61 - v42) >= 0x1555555555555555)
            {
LABEL_152:
              exception = __cxa_allocate_exception(0x10uLL);
              sub_195A000(exception, "insert overflow");
            }
          }

          if (v42 && ((v62 = (v35 + 12 * v44), *(v18 + 36) == v62[1]) ? (v63 = *(v18 + 32) == *v62) : (v63 = 0), v63))
          {
            *(v18 + 40) = v42 - 1;
            v57 = 3 * v44;
          }

          else
          {
            *(v18 + 48) = v61 + 1;
            v57 = 3 * v44;
          }

          goto LABEL_93;
        }

LABEL_61:
        v54 = *(v18 + 40);
        v53 = *(v18 + 48);
        if ((v53 - v54) >= 0x1555555555555555)
        {
          goto LABEL_152;
        }

        v35 = *(v18 + 80);
        if (v54 && ((v55 = (v35 + 12 * v30), *(v18 + 36) == v55[1]) ? (v56 = *(v18 + 32) == *v55) : (v56 = 0), v56))
        {
          *(v18 + 40) = v54 - 1;
        }

        else
        {
          *(v18 + 48) = v53 + 1;
        }

        v57 = 3 * v30;
LABEL_93:
        v64 = 4 * v57;
        v65 = v35 + v64;
        *v65 = v17;
        *(v65 + 8) = -1;
        v51 = *(v18 + 80) + v64;
        v52 = *(v51 + 8);
        if (v52 != -1)
        {
          goto LABEL_108;
        }

LABEL_94:
        v66 = *(v18 + 112);
        *(v18 + 112) = v66 + 1;
        *(v51 + 8) = v66;
        v68 = *(v18 + 96);
        v67 = *(v18 + 104);
        if (v68 >= v67)
        {
          v70 = *(v18 + 88);
          v71 = v68 - v70;
          v72 = (v68 - v70) >> 3;
          v73 = v72 + 1;
          if ((v72 + 1) >> 61)
          {
            sub_1794();
          }

          v74 = v67 - v70;
          if (v74 >> 2 > v73)
          {
            v73 = v74 >> 2;
          }

          if (v74 >= 0x7FFFFFFFFFFFFFF8)
          {
            v75 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v75 = v73;
          }

          if (v75)
          {
            if (!(v75 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v76 = (v68 - v70) >> 3;
          v77 = (8 * v72);
          v78 = (8 * v72 - 8 * v76);
          *v77 = v17;
          v69 = v77 + 1;
          memcpy(v78, v70, v71);
          *(v18 + 88) = v78;
          *(v18 + 96) = v69;
          *(v18 + 104) = 0;
          if (v70)
          {
            operator delete(v70);
          }
        }

        else
        {
          *v68 = v17;
          v69 = v68 + 8;
        }

        *(v18 + 96) = v69;
        v52 = *(v51 + 8);
LABEL_108:
        *(a1 + 688) = *(a1 + 688) + 1.0;
        if (v5 != v52)
        {
          v79 = *(v108 + 2);
          v80 = v79 / 10;
          v81 = v79 % 10;
          if (v79 < 0)
          {
            v82 = -5;
          }

          else
          {
            v82 = 5;
          }

          v83 = v80 + v106 + (((103 * (v82 + v81)) >> 15) & 1) + ((103 * (v82 + v81)) >> 10);
          v84 = *(a1 + 64);
          if (v84)
          {
            if (*v84 > v52)
            {
              v85 = 0;
              v86 = *(a1 + 168) + v104;
              v87 = v86;
              while (v85 <= v86)
              {
                v88 = *sub_BAFC3C(v84 + 2, v84[1] * v52 + v87);
                v85 += 2;
                v87 -= 2;
                if (v88 != 0x7FFFFFFF)
                {
                  if (v88 < v83)
                  {
                    break;
                  }

                  goto LABEL_118;
                }
              }
            }
          }

          else
          {
LABEL_118:
            if (sub_BB49D8(a1, 1u, v52, v105, v83))
            {
              v89 = *(a1 + 176);
              if (*v89 <= v52)
              {
                *v89 = v52 + 1;
                v90 = v89[2];
                v91 = v89[1] * (v52 + 1);
                v92 = 0xAAAAAAAAAAAAAAABLL * ((v89[3] - v90) >> 3);
                if (v91 <= v92)
                {
                  if (v91 < v92)
                  {
                    v89[3] = v90 + 24 * v91;
                  }
                }

                else
                {
                  sub_BAF9A8((v89 + 2), v91 - v92);
                }
              }

              v93 = v89[2] + 24 * v89[1] * v52 + 24 * v105;
              *(v93 + 4) = v5;
              *(v93 + 8) = -1;
              *(v93 + 16) = v106;
              *(v93 + 20) = -1;
            }
          }
        }

        v14 = v109;
        v12 = (v108 + 12);
        v108 = v12;
        if (v12 == v109)
        {
          v12 = v110;
          v108 = v110;
          v15 = 1;
          v112 = 1;
        }

        else
        {
          v15 = v112;
        }

        v16 = v111;
        if (v15)
        {
          v94 = v111;
        }

        else
        {
          v94 = v109;
        }

        if (*(v107 + 16) == 1 && v12 < v94)
        {
          while (1)
          {
            v96 = __ROR8__(*v12, 32);
            if (HIDWORD(v96) == 1 && (v96 + 3) < 2)
            {
              break;
            }

            if (sub_2D5204(**(v107 + 4120)))
            {
              v12 = v108;
              v14 = v109;
              v15 = v112;
              break;
            }

            v14 = v109;
            v12 = (v108 + 12);
            v108 = v12;
            if (v12 == v109)
            {
              v12 = v110;
              v108 = v110;
              v15 = 1;
              v112 = 1;
              if (v110 >= v111)
              {
                break;
              }
            }

            else
            {
              v15 = v112;
              v98 = 16;
              if (v112)
              {
                v98 = 32;
              }

              if (v12 >= *(&v107 + v98))
              {
                break;
              }
            }
          }

          v16 = v111;
        }

        if (v15)
        {
          v14 = v16;
        }
      }

      v4 = v103 + 1;
    }

    while (v103 + 1 != v102);
  }

  result = sub_7EA60(v113) + *(a1 + 632);
  *(a1 + 632) = result;
  return result;
}

double sub_BB3BA0(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v176);
  v4 = *(a1 + 432);
  v5 = *(a1 + 440);
  if (v4 != v5)
  {
    v6 = *(a1 + 408);
    v7 = *(a1 + 384);
    v8 = *(a1 + 432);
    do
    {
      v9 = *v8++;
      *(v6 + ((v9 >> 3) & 0x1FFFFFF8)) &= ~(1 << v9);
      *(v7 + 4 * v9) = -1;
    }

    while (v8 != v5);
  }

  *(a1 + 440) = v4;
  v10 = *(a1 + 312);
  v167 = *(a1 + 320);
  if (v10 == v167)
  {
    goto LABEL_232;
  }

  v168 = a2;
  v164 = a2 + 1;
  while (2)
  {
    v11 = sub_A9C5E0((*(a1 + 48) + 88), *v10);
    sub_A7905C(v169, *(a1 + 40), *v11, 0, 0, 0);
LABEL_8:
    v12 = v172;
LABEL_9:
    v13 = v173;
    while (v12 < v13)
    {
      v14 = __ROR8__(*v12, 32);
      v15 = *(a1 + 56);
      v16 = *(v15 + 56) - 1;
      v17 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v14 ^ (v14 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v14 ^ (v14 >> 33))) >> 33));
      v18 = v17 ^ (v17 >> 33);
      v19 = *(v15 + 80);
      v21 = *(v15 + 64);
      v20 = *(v15 + 68);
      v22 = v18 & v16;
      v23 = (v19 + 12 * (v18 & v16));
      v25 = *v23;
      v24 = v23[1];
      if (v20 == v24 && v21 == v25)
      {
        goto LABEL_55;
      }

      if (*(v15 + 40))
      {
        v27 = -1;
        v28 = 1;
        do
        {
          if (*(v15 + 36) == v24 && *(v15 + 32) == v25)
          {
            if (v27 == -1)
            {
              v27 = v22;
            }
          }

          else if (__PAIR64__(v24, v25) == v14)
          {
            goto LABEL_51;
          }

          v22 = (v22 + v28) & v16;
          v29 = (v19 + 12 * v22);
          v25 = *v29;
          v24 = v29[1];
          ++v28;
        }

        while (v20 != v24 || v21 != v25);
        if (v27 != -1)
        {
          if (sub_A99094(*(a1 + 56), 1))
          {
            goto LABEL_29;
          }

          goto LABEL_56;
        }

LABEL_55:
        v27 = v22;
        if (sub_A99094(*(a1 + 56), 1))
        {
          goto LABEL_29;
        }

        goto LABEL_56;
      }

      v45 = 1;
      while (__PAIR64__(v24, v25) != v14)
      {
        v22 = (v22 + v45) & v16;
        v46 = (v19 + 12 * v22);
        v25 = *v46;
        v24 = v46[1];
        ++v45;
        if (v20 == v24 && v21 == v25)
        {
          goto LABEL_55;
        }
      }

LABEL_51:
      if (v22 != -1)
      {
        v48 = v19 + 12 * v22;
        v49 = *(v48 + 8);
        if (v49 != -1)
        {
          goto LABEL_102;
        }

        goto LABEL_53;
      }

      v27 = -1;
      if (sub_A99094(*(a1 + 56), 1))
      {
LABEL_29:
        v31 = *(v15 + 56) - 1;
        v32 = *(v15 + 80);
        v34 = *(v15 + 64);
        v33 = *(v15 + 68);
        v35 = v31 & v18;
        v36 = (v32 + 12 * (v31 & v18));
        v38 = *v36;
        v37 = v36[1];
        v39 = *(v15 + 40);
        if (v33 == v37 && v34 == v38)
        {
          goto LABEL_92;
        }

        if (v39)
        {
          v41 = -1;
          v42 = 1;
          do
          {
            if (*(v15 + 36) == v37 && *(v15 + 32) == v38)
            {
              if (v41 == -1)
              {
                v41 = v35;
              }
            }

            else if (__PAIR64__(v37, v38) == v14)
            {
              goto LABEL_82;
            }

            v35 = (v35 + v42) & v31;
            v43 = (v32 + 12 * v35);
            v38 = *v43;
            v37 = v43[1];
            ++v42;
          }

          while (v33 != v37 || v34 != v38);
          if (v41 == -1)
          {
LABEL_92:
            v41 = v35;
          }

          v74 = *(v15 + 48);
          if ((v74 - v39) >= 0x1555555555555555)
          {
            goto LABEL_233;
          }
        }

        else
        {
          v65 = 1;
          while (__PAIR64__(v37, v38) != v14)
          {
            v35 = (v35 + v65) & v31;
            v66 = (v32 + 12 * v35);
            v38 = *v66;
            v37 = v66[1];
            ++v65;
            if (v33 == v37 && v34 == v38)
            {
              v39 = 0;
              goto LABEL_92;
            }
          }

LABEL_82:
          if (v35 != -1)
          {
            v48 = v32 + 12 * v35;
            v49 = *(v48 + 8);
            if (v49 != -1)
            {
              goto LABEL_102;
            }

            goto LABEL_53;
          }

          v41 = -1;
          v74 = *(v15 + 48);
          if ((v74 - v39) >= 0x1555555555555555)
          {
LABEL_233:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v39 && ((v75 = (v32 + 12 * v41), *(v15 + 36) == v75[1]) ? (v76 = *(v15 + 32) == *v75) : (v76 = 0), v76))
        {
          *(v15 + 40) = v39 - 1;
          v64 = 3 * v41;
        }

        else
        {
          *(v15 + 48) = v74 + 1;
          v64 = 3 * v41;
        }

        goto LABEL_101;
      }

LABEL_56:
      v55 = *(v15 + 40);
      v54 = *(v15 + 48);
      if ((v54 - v55) >= 0x1555555555555555)
      {
        goto LABEL_233;
      }

      v32 = *(v15 + 80);
      if (v55 && ((v56 = (v32 + 12 * v27), *(v15 + 36) == v56[1]) ? (v57 = *(v15 + 32) == *v56) : (v57 = 0), v57))
      {
        *(v15 + 40) = v55 - 1;
      }

      else
      {
        *(v15 + 48) = v54 + 1;
      }

      v64 = 3 * v27;
LABEL_101:
      v77 = 4 * v64;
      v78 = v32 + v77;
      *v78 = v14;
      *(v78 + 8) = -1;
      v48 = *(v15 + 80) + v77;
      v49 = *(v48 + 8);
      if (v49 != -1)
      {
LABEL_102:
        v71 = *(v172 + 4);
        v72 = *(a1 + 96);
        v73 = v49;
        if (v72)
        {
          goto LABEL_103;
        }

        goto LABEL_107;
      }

LABEL_53:
      v50 = *(v15 + 112);
      *(v15 + 112) = v50 + 1;
      *(v48 + 8) = v50;
      v52 = *(v15 + 96);
      v51 = *(v15 + 104);
      if (v52 >= v51)
      {
        v58 = *(v15 + 88);
        v59 = v52 - v58;
        v60 = (v52 - v58) >> 3;
        v61 = v60 + 1;
        if ((v60 + 1) >> 61)
        {
          sub_1794();
        }

        v62 = v51 - v58;
        if (v62 >> 2 > v61)
        {
          v61 = v62 >> 2;
        }

        if (v62 >= 0x7FFFFFFFFFFFFFF8)
        {
          v63 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v63 = v61;
        }

        if (v63)
        {
          if (!(v63 >> 61))
          {
            operator new();
          }

LABEL_234:
          sub_1808();
        }

        v68 = (v52 - v58) >> 3;
        v69 = (8 * v60);
        v70 = (8 * v60 - 8 * v68);
        *v69 = v14;
        v53 = v69 + 1;
        memcpy(v70, v58, v59);
        *(v15 + 88) = v70;
        *(v15 + 96) = v53;
        *(v15 + 104) = 0;
        if (v58)
        {
          operator delete(v58);
        }
      }

      else
      {
        *v52 = v14;
        v53 = v52 + 8;
      }

      *(v15 + 96) = v53;
      v49 = *(v48 + 8);
      v71 = *(v172 + 4);
      v72 = *(a1 + 96);
      v73 = v49;
      if (v72)
      {
LABEL_103:
        v79 = *v72;
        v80 = 0xAAAAAAAAAAAAAAABLL * ((*(v72 + 8) - *v72) >> 4);
        if (v80 <= v168)
        {
          sub_A9C3BC(v72, v164 - v80);
          v79 = *v72;
        }

        v81 = &v79[48 * v168];
        if (*(v81 + 1) <= v73 || ((*(*v81 + ((v73 >> 3) & 0x1FFFFFF8)) >> v73) & 1) == 0)
        {
          goto LABEL_160;
        }
      }

LABEL_107:
      v82 = v73 >> 6;
      if (*(a1 + 416) <= v73)
      {
        v86 = *(a1 + 384);
        goto LABEL_127;
      }

      v83 = *(a1 + 408);
      v84 = *(v83 + 8 * v82);
      v85 = 1 << v73;
      v86 = *(a1 + 384);
      if ((v84 & (1 << v73)) == 0)
      {
        goto LABEL_127;
      }

      v87 = *(a1 + 392);
      v88 = &v87[-v86] >> 2;
      if (v88 <= v73)
      {
        v163 = v71;
        v89 = v49 + 1;
        v90 = v89 - v88;
        if (v89 <= v88)
        {
          v71 = v163;
          if (v89 < v88)
          {
            *(a1 + 392) = v86 + 4 * v89;
          }
        }

        else
        {
          v91 = *(a1 + 400);
          if (v90 > (v91 - v87) >> 2)
          {
            v92 = v91 - v86;
            v93 = v92 >> 1;
            if (v92 >> 1 <= v89)
            {
              v93 = v49 + 1;
            }

            v94 = v92 >= 0x7FFFFFFFFFFFFFFCLL;
            v95 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v94)
            {
              v95 = v93;
            }

            if (!(v95 >> 62))
            {
              operator new();
            }

            goto LABEL_234;
          }

          v96 = 4 * v90;
          memset(v87, 255, v96);
          *(a1 + 392) = &v87[v96];
          v71 = v163;
        }

        sub_4D9168(a1 + 408, v49 + 1, 0);
        v83 = *(a1 + 408);
        v82 = v73 >> 6;
        v84 = *(v83 + 8 * (v73 >> 6));
      }

      if ((v84 & v85) != 0)
      {
        v86 = *(a1 + 384);
        if (*(v86 + 4 * v73) > v71)
        {
          goto LABEL_127;
        }
      }

      else
      {
        *(v83 + 8 * v82) = v84 | v85;
        v108 = *(a1 + 440);
        v107 = *(a1 + 448);
        if (v108 >= v107)
        {
          v124 = *(a1 + 432);
          v125 = v108 - v124;
          v126 = (v108 - v124) >> 2;
          v127 = v126 + 1;
          if ((v126 + 1) >> 62)
          {
LABEL_237:
            sub_1794();
          }

          v166 = v10;
          v128 = v107 - v124;
          if (v128 >> 1 > v127)
          {
            v127 = v128 >> 1;
          }

          if (v128 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v129 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v129 = v127;
          }

          if (v129)
          {
            if (!(v129 >> 62))
            {
              operator new();
            }

            goto LABEL_234;
          }

          v130 = v82;
          v131 = v126;
          v132 = (4 * v126);
          v133 = &v132[-v131];
          *v132 = v49;
          v134 = v132 + 1;
          memcpy(v133, v124, v125);
          *(a1 + 432) = v133;
          *(a1 + 440) = v134;
          *(a1 + 448) = 0;
          if (v124)
          {
            operator delete(v124);
          }

          v82 = v130;
          v10 = v166;
          *(a1 + 440) = v134;
          v86 = *(a1 + 384);
          if (*(v86 + 4 * v73) <= v71)
          {
            goto LABEL_160;
          }

LABEL_127:
          v97 = *(a1 + 392);
          v98 = &v97[-v86] >> 2;
          if (v98 <= v73)
          {
            v99 = v49 + 1;
            v100 = v99 - v98;
            v165 = v10;
            if (v99 <= v98)
            {
              v105 = v82;
              if (v99 < v98)
              {
                v106 = (v86 + 4 * v99);
                goto LABEL_142;
              }
            }

            else
            {
              v101 = *(a1 + 400);
              if (v100 > (v101 - v97) >> 2)
              {
                v102 = v101 - v86;
                v103 = v102 >> 1;
                if (v102 >> 1 <= v99)
                {
                  v103 = v49 + 1;
                }

                v94 = v102 >= 0x7FFFFFFFFFFFFFFCLL;
                v104 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v94)
                {
                  v104 = v103;
                }

                if (!(v104 >> 62))
                {
                  operator new();
                }

                goto LABEL_234;
              }

              v105 = v82;
              memset(v97, 255, 4 * v100);
              v106 = &v97[4 * v100];
LABEL_142:
              *(a1 + 392) = v106;
            }

            sub_4D9168(a1 + 408, v49 + 1, 0);
            v82 = v105;
            v10 = v165;
          }

          v109 = *(a1 + 408);
          v110 = *(v109 + 8 * v82);
          if ((v110 & (1 << v73)) == 0)
          {
            *(v109 + 8 * v82) = v110 | (1 << v73);
            v112 = *(a1 + 440);
            v111 = *(a1 + 448);
            if (v112 >= v111)
            {
              v114 = *(a1 + 432);
              v115 = v112 - v114;
              v116 = (v112 - v114) >> 2;
              v117 = v116 + 1;
              if ((v116 + 1) >> 62)
              {
                goto LABEL_237;
              }

              v118 = v111 - v114;
              if (v118 >> 1 > v117)
              {
                v117 = v118 >> 1;
              }

              if (v118 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v119 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v119 = v117;
              }

              if (v119)
              {
                if (!(v119 >> 62))
                {
                  operator new();
                }

                goto LABEL_234;
              }

              v120 = v116;
              v121 = (4 * v116);
              v122 = &v121[-v120];
              *v121 = v49;
              v113 = v121 + 1;
              memcpy(v122, v114, v115);
              *(a1 + 432) = v122;
              *(a1 + 440) = v113;
              *(a1 + 448) = 0;
              if (v114)
              {
                operator delete(v114);
              }
            }

            else
            {
              *v112 = v49;
              v113 = v112 + 4;
            }

            *(a1 + 440) = v113;
          }

          *(*(a1 + 384) + 4 * v73) = v71;
          goto LABEL_160;
        }

        *v108 = v49;
        *(a1 + 440) = v108 + 4;
        v86 = *(a1 + 384);
        if (*(v86 + 4 * v73) > v71)
        {
          goto LABEL_127;
        }
      }

LABEL_160:
      v13 = v173;
      v12 = v172 + 2;
      v172 = v12;
      if (v12 == v173)
      {
        v123 = v170 + 2;
        v170 = v123;
        if (v123 >= v171)
        {
          break;
        }

        while (1)
        {
          v12 = *v123;
          v13 = v123[1];
          if (*v123 != v13)
          {
            break;
          }

          v123 += 2;
          v170 = v123;
          if (v123 >= v171)
          {
            goto LABEL_6;
          }
        }

        v172 = *v123;
        v173 = v13;
        if (v12 < v13)
        {
          goto LABEL_184;
        }
      }

      else if (v12 < v173)
      {
        while (1)
        {
LABEL_184:
          if ((v175 & 1) == 0)
          {
            v135 = v169[0];
            v136 = *v12;
            v137 = *(v169[0] + 4136);
            if (sub_68312C(v137 + 3896))
            {
              if (*(v137 + 3944))
              {
                if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                {
                  v157 = sub_A57824(-85.0, 0.0);
                  sub_58168(v157 >> 17, v157 >> 49);
                  dword_27339C0 = v158 | 0x40000000;
                  __cxa_guard_release(&qword_27339C8);
                }

                v138 = __ROR8__(v136, 32);
                v139 = *(v135 + 4136);
                if (dword_27339C0 == HIDWORD(v138))
                {
                  if (!sub_68312C(v139 + 3896) || !*(v139 + 3944))
                  {
                    v161 = __cxa_allocate_exception(0x40uLL);
                    v162 = sub_2D390(v161, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                  }
                }

                else
                {
                  v142 = *(v139 + 3944);
                  v143 = v142[1];
                  if (v143)
                  {
                    v144 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v138 ^ (v138 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v138 ^ (v138 >> 33))) >> 33));
                    v145 = v144 ^ (v144 >> 33);
                    v146 = vcnt_s8(v143);
                    v146.i16[0] = vaddlv_u8(v146);
                    if (v146.u32[0] > 1uLL)
                    {
                      v147 = v145;
                      if (v145 >= *&v143)
                      {
                        v147 = v145 % *&v143;
                      }
                    }

                    else
                    {
                      v147 = (*&v143 - 1) & v145;
                    }

                    v148 = *(*v142 + 8 * v147);
                    if (v148)
                    {
                      v149 = *v148;
                      if (v149)
                      {
                        if (v146.u32[0] < 2uLL)
                        {
                          v150 = *&v143 - 1;
                          while (1)
                          {
                            v154 = v149[1];
                            if (v145 == v154)
                            {
                              if (*(v149 + 5) == HIDWORD(v138) && *(v149 + 4) == v138)
                              {
                                goto LABEL_182;
                              }
                            }

                            else if ((v154 & v150) != v147)
                            {
                              goto LABEL_224;
                            }

                            v149 = *v149;
                            if (!v149)
                            {
                              goto LABEL_224;
                            }
                          }
                        }

                        do
                        {
                          v152 = v149[1];
                          if (v145 == v152)
                          {
                            if (*(v149 + 5) == HIDWORD(v138) && *(v149 + 4) == v138)
                            {
                              goto LABEL_182;
                            }
                          }

                          else
                          {
                            if (v152 >= *&v143)
                            {
                              v152 %= *&v143;
                            }

                            if (v152 != v147)
                            {
                              break;
                            }
                          }

                          v149 = *v149;
                        }

                        while (v149);
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_224:
          if (v174 == 1)
          {
            goto LABEL_8;
          }

          v155 = sub_C9E544(v169[0] + 3896);
          v12 = v172;
          if (v155 >= *(v172 + 14))
          {
            if (v174)
            {
              goto LABEL_9;
            }

            v156 = sub_585D8((v169[0] + 3896));
            v12 = v172;
            if ((v156 & 1) != 0 || (*(v172 + 15) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

LABEL_182:
          v12 = v172 + 2;
          v172 = v12;
          if (v12 == v173)
          {
            v140 = v170 + 2;
            v170 = v140;
            if (v140 >= v171)
            {
              goto LABEL_9;
            }

            while (1)
            {
              v12 = *v140;
              v141 = v140[1];
              if (*v140 != v141)
              {
                break;
              }

              v140 += 2;
              v170 = v140;
              if (v140 >= v171)
              {
                goto LABEL_6;
              }
            }

            v172 = *v140;
            v173 = v141;
            if (v12 >= v141)
            {
              goto LABEL_9;
            }
          }

          else if (v12 >= v173)
          {
            goto LABEL_9;
          }
        }
      }
    }

LABEL_6:
    if (++v10 != v167)
    {
      continue;
    }

    break;
  }

LABEL_232:
  result = sub_7EA60(v176) + *(a1 + 624);
  *(a1 + 624) = result;
  return result;
}

uint64_t sub_BB49D8(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, signed int a5)
{
  v7 = a3;
  v55 = a3;
  v10 = *(a1 + 80);
  if (v10)
  {
    v12 = *v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 4);
    if (v13 <= a4)
    {
      sub_A9C3BC(*(a1 + 80), a4 - v13 + 1);
      v12 = *v10;
    }

    v14 = (v12 + 48 * a4);
    if (v14[1] <= v7 || ((*(*v14 + ((v7 >> 3) & 0x1FFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 25) == 1)
  {
    v15 = a1 + 24 * a2;
    v16 = *(v15 + 192);
    v17 = *(v15 + 200);
    v18 = (v15 + 192);
    v19 = *(a1 + 456);
    v20 = (v17 - v16) >> 2;
    if (v20 <= v19)
    {
      sub_617214(v18, v19 - v20 + 1);
      v16 = *v18;
    }

    v21 = (v16 + 4 * v19);
    if (*(a1 + 26) != 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v22 = *(a1 + 176);
    v23 = *(a1 + 456);
    if (*v22 <= v23)
    {
      *v22 = v23 + 1;
      v24 = v22[2];
      v25 = v22[1] * (v23 + 1);
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v22[3] - v24) >> 3);
      if (v25 <= v26)
      {
        if (v25 < v26)
        {
          v22[3] = v24 + 24 * v25;
        }
      }

      else
      {
        sub_BAF9A8((v22 + 2), v25 - v26);
      }
    }

    v21 = (v22[2] + 24 * v22[1] * v23 + 24 * a4);
    if (*(a1 + 26) != 1)
    {
      goto LABEL_22;
    }
  }

  v27 = *v21;
  if (v27 != 0x7FFFFFFF)
  {
    v28 = *(a1 + 28);
    v29 = v28 / 10;
    v30 = v28 % 10;
    v31 = v28 < 0 ? -5 : 5;
    if ((v29 + (((103 * (v31 + v30)) >> 15) & 1) + ((103 * (v31 + v30)) >> 10) + v27) <= a5)
    {
      return 0;
    }
  }

LABEL_22:
  if ((*(a1 + 25) & 1) == 0)
  {
    v36 = v7;
    v40 = *(a1 + 176);
    if (*v40 > v7)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v32 = a1 + 24 * a2;
  v33 = *(v32 + 192);
  v34 = *(v32 + 200);
  v35 = (v32 + 192);
  v36 = v7;
  v37 = (v34 - v33) >> 2;
  if (v37 <= v7)
  {
    sub_617214(v35, v7 - v37 + 1);
    v33 = *v35;
  }

  v38 = *(v33 + 4 * v7);
  if (v38 != 0x7FFFFFFF && v38 <= a5)
  {
    return 0;
  }

  v40 = *(a1 + 176);
  if (*v40 <= v7)
  {
LABEL_32:
    *v40 = v36 + 1;
    v41 = v40[2];
    v42 = v40[1] * (v36 + 1);
    v43 = 0xAAAAAAAAAAAAAAABLL * ((v40[3] - v41) >> 3);
    if (v42 <= v43)
    {
      if (v42 < v43)
      {
        v40[3] = v41 + 24 * v42;
      }
    }

    else
    {
      sub_BAF9A8((v40 + 2), v42 - v43);
    }
  }

LABEL_36:
  v44 = (v40[2] + 24 * v40[1] * v36 + 24 * a4);
  if (*v44 != 0x7FFFFFFF && *v44 <= a5)
  {
    return 0;
  }

  if (*(a1 + 25))
  {
    v46 = a1 + 24 * a2;
    v47 = *(v46 + 192);
    v48 = *(v46 + 200);
    v49 = (v46 + 192);
    v50 = (v48 - v47) >> 2;
    if (v50 <= v36)
    {
      sub_617214(v49, v36 - v50 + 1);
      v47 = *v49;
    }

    *(v47 + 4 * v36) = a5;
  }

  *v44 = a5;
  v52 = a1 + 48 * a2;
  v53 = (v52 + 240);
  if (*(v52 + 248) > v36)
  {
    if ((*(*v53 + ((v36 >> 3) & 0x1FFFFFF8)) >> v36))
    {
      goto LABEL_48;
    }

LABEL_51:
    sub_DD38((v53 + 3), &v55);
    v7 = v55;
    *(*v53 + ((v55 >> 3) & 0x1FFFFFF8)) |= 1 << v55;
    if (*(a1 + 25))
    {
      return 1;
    }

    goto LABEL_52;
  }

  sub_4D9168(v53, v7 + 1, 0);
  if (((*(*v53 + ((v36 >> 3) & 0x1FFFFFF8)) >> v36) & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  if (*(a1 + 25))
  {
    return 1;
  }

LABEL_52:
  v54 = v7;
  if (*(a1 + 344) <= v7)
  {
    sub_4D9168(a1 + 336, v7 + 1, 0);
    v54 = v55;
  }

  if ((*(*(a1 + 336) + ((v54 >> 3) & 0x1FFFFFF8)) >> v54))
  {
    return 1;
  }

  sub_DD38(a1 + 360, &v55);
  result = 1;
  *(*(a1 + 336) + ((v55 >> 3) & 0x1FFFFFF8)) |= 1 << v55;
  return result;
}

void sub_BB4E40(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v134[0] = a3;
  *(a1 + 672) = *(a1 + 672) + 1.0;
  v6 = a3;
  v117 = *sub_A9C5E0((*(a1 + 56) + 88), a3);
  v7 = *(a1 + 384);
  v8 = (*(a1 + 392) - v7) >> 2;
  if (v8 <= v6)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        *(a1 + 392) = v7 + 4 * v9;
      }
    }

    else
    {
      sub_49ABAC(a1 + 384, v9 - v8);
    }

    sub_4D9168(a1 + 408, a3 + 1, 0);
  }

  v10 = *(a1 + 408);
  v11 = *(v10 + 8 * (v6 >> 6));
  if (((1 << a3) & v11) == 0)
  {
    *(v10 + 8 * (v6 >> 6)) = (1 << a3) | v11;
    sub_DD38(a1 + 432, v134);
    v6 = v134[0];
  }

  v116 = *(*(a1 + 384) + 4 * v6);
  sub_A9D53C(&v132, *(a1 + 40), v117);
  v12 = v132;
  if (v132 < v133)
  {
    while (1)
    {
      *(a1 + 680) = *(a1 + 680) + 1.0;
      v119 = *v12;
      v118 = v134[0];
      sub_A79708(&v120, *(a1 + 40), v117, v116, 0, 1);
      v13 = v124;
      if (v124 >= v123 && v124 < v125)
      {
        break;
      }

LABEL_11:
      v12 = v132 + 4;
      v132 = v12;
      if (v12 >= v133)
      {
        return;
      }
    }

    v15 = 0;
    v114 = 0x7FFFFFFF;
    v112 = 0xFFFFFFFFLL;
    v115 = 0xFFFFFFFFLL;
    LODWORD(v113) = -1;
    while (1)
    {
      v16 = __ROR8__(*v13, 32);
      v17 = *(a1 + 48);
      v18 = *(v17 + 56) - 1;
      v19 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) >> 33));
      v20 = v19 ^ (v19 >> 33);
      v21 = *(v17 + 80);
      v23 = *(v17 + 64);
      v22 = *(v17 + 68);
      v24 = v20 & v18;
      v25 = (v21 + 12 * (v20 & v18));
      v27 = *v25;
      v26 = v25[1];
      if (v22 == v26 && v23 == v27)
      {
        goto LABEL_69;
      }

      if (*(v17 + 40))
      {
        break;
      }

      v47 = 1;
      while (__PAIR64__(v26, v27) != v16)
      {
        v24 = (v24 + v47) & v18;
        v48 = (v21 + 12 * v24);
        v27 = *v48;
        v26 = v48[1];
        ++v47;
        if (v22 == v26 && v23 == v27)
        {
          goto LABEL_69;
        }
      }

LABEL_57:
      if (v24 != -1)
      {
        v50 = v21 + 12 * v24;
        v51 = *(v50 + 8);
        if (v51 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_119;
      }

      v29 = -1;
      if (sub_A99094(*(a1 + 48), 1))
      {
LABEL_35:
        v33 = *(v17 + 56) - 1;
        v34 = *(v17 + 80);
        v36 = *(v17 + 64);
        v35 = *(v17 + 68);
        v37 = v33 & v20;
        v38 = (v34 + 12 * (v33 & v20));
        v40 = *v38;
        v39 = v38[1];
        v41 = *(v17 + 40);
        if (v35 == v39 && v36 == v40)
        {
          goto LABEL_109;
        }

        if (v41)
        {
          v43 = -1;
          v44 = 1;
          do
          {
            if (*(v17 + 36) == v39 && *(v17 + 32) == v40)
            {
              if (v43 == -1)
              {
                v43 = v37;
              }
            }

            else if (__PAIR64__(v39, v40) == v16)
            {
              goto LABEL_91;
            }

            v37 = (v37 + v44) & v33;
            v45 = (v34 + 12 * v37);
            v40 = *v45;
            v39 = v45[1];
            ++v44;
          }

          while (v35 != v39 || v36 != v40);
          if (v43 == -1)
          {
LABEL_109:
            v43 = v37;
          }

          v78 = *(v17 + 48);
          if ((v78 - v41) >= 0x1555555555555555)
          {
            goto LABEL_181;
          }
        }

        else
        {
          v62 = 1;
          while (__PAIR64__(v39, v40) != v16)
          {
            v37 = (v37 + v62) & v33;
            v63 = (v34 + 12 * v37);
            v40 = *v63;
            v39 = v63[1];
            ++v62;
            if (v35 == v39 && v36 == v40)
            {
              v41 = 0;
              goto LABEL_109;
            }
          }

LABEL_91:
          if (v37 != -1)
          {
            v50 = v34 + 12 * v37;
            v51 = *(v50 + 8);
            if (v51 != -1)
            {
              goto LABEL_59;
            }

            goto LABEL_119;
          }

          v43 = -1;
          v78 = *(v17 + 48);
          if ((v78 - v41) >= 0x1555555555555555)
          {
LABEL_181:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v41 && ((v79 = (v34 + 12 * v43), *(v17 + 36) == v79[1]) ? (v80 = *(v17 + 32) == *v79) : (v80 = 0), v80))
        {
          *(v17 + 40) = v41 - 1;
          v57 = 3 * v43;
        }

        else
        {
          *(v17 + 48) = v78 + 1;
          v57 = 3 * v43;
        }

        goto LABEL_118;
      }

LABEL_70:
      v54 = *(v17 + 40);
      v53 = *(v17 + 48);
      if ((v53 - v54) >= 0x1555555555555555)
      {
        goto LABEL_181;
      }

      v34 = *(v17 + 80);
      if (v54 && ((v55 = (v34 + 12 * v29), *(v17 + 36) == v55[1]) ? (v56 = *(v17 + 32) == *v55) : (v56 = 0), v56))
      {
        *(v17 + 40) = v54 - 1;
      }

      else
      {
        *(v17 + 48) = v53 + 1;
      }

      v57 = 3 * v29;
LABEL_118:
      v81 = 4 * v57;
      v82 = v34 + v81;
      *v82 = v16;
      *(v82 + 8) = -1;
      v50 = *(v17 + 80) + v81;
      v51 = *(v50 + 8);
      if (v51 != -1)
      {
LABEL_59:
        if (!sub_C435EC((a1 + 488), v51, v16))
        {
          goto LABEL_133;
        }

        goto LABEL_60;
      }

LABEL_119:
      v83 = *(v17 + 112);
      *(v17 + 112) = v83 + 1;
      *(v50 + 8) = v83;
      v85 = *(v17 + 96);
      v84 = *(v17 + 104);
      if (v85 >= v84)
      {
        v87 = *(v17 + 88);
        v88 = v85 - v87;
        v89 = (v85 - v87) >> 3;
        v90 = v89 + 1;
        if ((v89 + 1) >> 61)
        {
          sub_1794();
        }

        v91 = v84 - v87;
        if (v91 >> 2 > v90)
        {
          v90 = v91 >> 2;
        }

        if (v91 >= 0x7FFFFFFFFFFFFFF8)
        {
          v92 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v92 = v90;
        }

        if (v92)
        {
          if (!(v92 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v93 = (v85 - v87) >> 3;
        v94 = (8 * v89);
        v95 = (8 * v89 - 8 * v93);
        *v94 = v16;
        v86 = v94 + 1;
        memcpy(v95, v87, v88);
        *(v17 + 88) = v95;
        *(v17 + 96) = v86;
        *(v17 + 104) = 0;
        if (v87)
        {
          operator delete(v87);
        }
      }

      else
      {
        *v85 = v16;
        v86 = v85 + 1;
      }

      *(v17 + 96) = v86;
      v51 = *(v50 + 8);
      if (!sub_C435EC((a1 + 488), *(v50 + 8), v16))
      {
LABEL_133:
        v15 &= *(a1 + 32);
        goto LABEL_134;
      }

LABEL_60:
      if (v15 & 1) != 0 && (*(v124 + 15))
      {
        v52 = v126;
        if (v126)
        {
          v52 = *(v126 + 4 * ((v124 - v123) >> 4));
        }

        if ((v52 & v119) == 0)
        {
          v65 = (v122 + *(v122 - *v122 + 6));
          v66 = v65 + *v65;
          v67 = &v131;
          if (!v129)
          {
            v67 = v128;
          }

          v68 = *&v66[8 * v128[1] + 4 + 8 * ((v124 - v123) >> 4)] + *v67;
          v69 = *(a1 + 64);
          if (v69)
          {
            if (*v69 > v51)
            {
              v70 = 0;
              v71 = *(a1 + 168) + ~a2;
              v72 = v71;
              while (v70 <= v71)
              {
                v73 = *sub_BAFC3C(v69 + 2, v69[1] * v51 + v72);
                v70 += 2;
                v72 -= 2;
                if (v73 != 0x7FFFFFFF)
                {
                  if (v73 < v68)
                  {
                    break;
                  }

                  goto LABEL_104;
                }
              }
            }
          }

          else
          {
LABEL_104:
            if (sub_BB49D8(a1, 0, v51, a2, v68))
            {
              v74 = *(a1 + 176);
              if (*v74 <= v51)
              {
                *v74 = v51 + 1;
                v75 = v74[2];
                v76 = v74[1] * (v51 + 1);
                v77 = 0xAAAAAAAAAAAAAAABLL * ((v74[3] - v75) >> 3);
                if (v76 <= v77)
                {
                  if (v76 < v77)
                  {
                    v74[3] = v75 + 24 * v76;
                  }
                }

                else
                {
                  sub_BAF9A8((v74 + 2), v76 - v77);
                }
              }

              v110 = v74[2] + 24 * v74[1] * v51 + 24 * a2;
              *(v110 + 4) = v113;
              *(v110 + 8) = v115 | (v112 << 32);
              *(v110 + 16) = v114;
              *(v110 + 20) = v118;
            }
          }
        }
      }

      if ((*(v124 + 15) & 2) == 0)
      {
        goto LABEL_134;
      }

      if (v126)
      {
        if (*(v126 + 4 * ((v124 - v123) >> 4)) != v119)
        {
          goto LABEL_134;
        }
      }

      else if (v119)
      {
        goto LABEL_134;
      }

      v58 = *(a1 + 176);
      if (*v58 <= v51)
      {
        *v58 = v51 + 1;
        v59 = v58[2];
        v60 = v58[1] * (v51 + 1);
        v61 = 0xAAAAAAAAAAAAAAABLL * ((v58[3] - v59) >> 3);
        if (v60 <= v61)
        {
          if (v60 < v61)
          {
            v58[3] = v59 + 24 * v60;
          }
        }

        else
        {
          sub_BAF9A8((v58 + 2), v60 - v61);
        }
      }

      v102 = *(v58[2] + 24 * v58[1] * v51 + 24 * (a2 - 1));
      if (v102 == 0x7FFFFFFF)
      {
        goto LABEL_134;
      }

      v103 = *(v124 + 2);
      v104 = v103 + v102;
      if (v15)
      {
        v105 = (v122 + *(v122 - *v122 + 6));
        v106 = v105 + *v105;
        v107 = &v131;
        if (!v129)
        {
          v107 = v128;
        }

        if (v104 < *&v106[8 * v128[1] + 8 + 8 * ((v124 - v123) >> 4)] + *v107 && sub_A9D3B8(*(a1 + 40), &v120, v104))
        {
LABEL_169:
          v113 = (v124 - v123) >> 4;
          v115 = -1431655765 * ((v128 - v127) >> 2);
          if (v129)
          {
            v108 = v131;
          }

          else
          {
            v108 = 0x7FFFFFFF;
          }

          v114 = v108;
          if (v129)
          {
            v109 = v130;
          }

          else
          {
            v109 = 0xFFFFFFFFLL;
          }

          v112 = v109;
        }

        v15 = 1;
        goto LABEL_134;
      }

      if (v129 == 1)
      {
        if (sub_A7A1E8(*(a1 + 40), &v120, v104, 1u))
        {
          goto LABEL_169;
        }
      }

      else if (sub_A7A710(&v120, v103 + v102, 1))
      {
        goto LABEL_169;
      }

      v15 = 0;
LABEL_134:
      v96 = v123;
      v13 = v124 + 2;
      v124 += 2;
      if (*(v120 + 16) == 1 && (v121 & 1) == 0 && v13 >= v123 && v13 < v125)
      {
        do
        {
          v98 = __ROR8__(*v13, 32);
          if (HIDWORD(v98) == 1 && (v98 + 3) < 2)
          {
            break;
          }

          v100 = sub_2D5204(**(v120 + 4120));
          v96 = v123;
          v13 = v124;
          if (v100)
          {
            break;
          }

          v13 = v124 + 2;
          v124 = v13;
        }

        while (v13 >= v123 && v13 < v125);
      }

      if (v13 < v96 || v13 >= v125)
      {
        goto LABEL_11;
      }
    }

    v29 = -1;
    v30 = 1;
    do
    {
      if (*(v17 + 36) == v26 && *(v17 + 32) == v27)
      {
        if (v29 == -1)
        {
          v29 = v24;
        }
      }

      else if (__PAIR64__(v26, v27) == v16)
      {
        goto LABEL_57;
      }

      v24 = (v24 + v30) & v18;
      v31 = (v21 + 12 * v24);
      v27 = *v31;
      v26 = v31[1];
      ++v30;
    }

    while (v22 != v26 || v23 != v27);
    if (v29 != -1)
    {
      if (sub_A99094(*(a1 + 48), 1))
      {
        goto LABEL_35;
      }

      goto LABEL_70;
    }

LABEL_69:
    v29 = v24;
    if (sub_A99094(*(a1 + 48), 1))
    {
      goto LABEL_35;
    }

    goto LABEL_70;
  }
}

uint64_t sub_BB58F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_A520DC(a2);
  v7 = sub_A51E58(a2, 0);
  if (HIDWORD(v7) == 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = 10 * (HIDWORD(v6) - HIDWORD(v7));
  }

  if (HIDWORD(v6) == 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_A520DC(a3);
  v11 = sub_A51E58(a3, 0);
  v12 = 0x7FFFFFFF;
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
    if (HIDWORD(v11) != 0x7FFFFFFF)
    {
      if (HIDWORD(v10) == HIDWORD(v11))
      {
        v13 = 1.79769313e308;
        goto LABEL_19;
      }

      v12 = 10 * (HIDWORD(v10) - HIDWORD(v11));
    }
  }

  if (v9 < 0)
  {
    v14 = -5;
  }

  else
  {
    v14 = 5;
  }

  v15 = v12 / 10;
  v16 = v12 % 10;
  if (v12 < 0)
  {
    v17 = -5;
  }

  else
  {
    v17 = 5;
  }

  v13 = (v9 / 10 + (((103 * (v14 + v9 % 10)) >> 15) & 1) + ((103 * (v14 + v9 % 10)) >> 10)) / (v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10));
LABEL_19:
  v18 = sub_A51E58(a2, 0);
  if (SHIDWORD(v18) >= (sub_A51E58(a3, 0) >> 32))
  {
    v19 = sub_A520DC(a2);
    if (SHIDWORD(v19) >= (sub_A520DC(a3) >> 32))
    {
      return 0;
    }
  }

  if (v13 > *(a1 + 8))
  {
    return 0;
  }

  if ((*(a1 + 25) & 1) == 0)
  {
    for (i = *(a2 + 200); i != *(a2 + 208); i += 9)
    {
      if (!*(i + 24))
      {
        v22 = *i;
        if (*i != i[1])
        {
          v23 = *(v22 + 160);
          v24 = *(v22 + 44);
          if (!v23 && v24 == -1)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return 1;
}

void sub_BB5F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_BB6008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2FEF94(0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 296 * v6;
    do
    {
      v10 = *(a3 + 24);
      if (!v10)
      {
        sub_2B7420();
      }

      if ((*(*v10 + 48))(v10, *(a2 + 8) + v7))
      {
        v11 = *(a2 + 8);
        if (*(a1 + 25) == 1)
        {
          *(v11 + v7 + 16) = v8;
        }

        sub_BB60F4(a1, a2, (v11 + v7));
      }

      ++v8;
      v7 += 296;
    }

    while (v9 != v7);
  }
}

void sub_BB60F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[25];
  v3 = a3[26];
  v5 = 0x8E38E38E38E38E39 * (v3 - v4);
  if (v5 < 3)
  {
    return;
  }

  memset(v41, 0, 24);
  memset(__p, 0, 24);
  v9 = *v4;
  v10 = *(*v4 + 160);
  if (v10)
  {
    if (v10 != 1)
    {
      sub_5AF20();
    }

    if (v3 == v4)
    {
LABEL_5:
      if (v10)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }
  }

  else if (v3 == v4)
  {
    goto LABEL_5;
  }

  v15 = 0;
  for (i = 0; i != v5; ++i)
  {
    v17 = a3[25] + 72 * i;
    if (!*(v17 + 24))
    {
      v18 = sub_BB6430(a1, v17, (v17 + 72));
      sub_BB6864(v18, v41);
      if (v15)
      {
        sub_BB6AF0(v19, v41, __p);
      }

      v20 = v41[2];
      v21 = __p[0];
      v22 = *v41;
      v41[0] = __p[0];
      *&v41[1] = *&__p[1];
      *__p = v22;
      __p[2] = v20;
      for (j = v41[1]; j != v21; j -= 40)
      {
        v24 = *(j - 3);
        if (v24)
        {
          *(j - 2) = v24;
          operator delete(v24);
        }
      }

      v41[1] = v21;
      v15 = 1;
    }
  }

  v9 = *a3[25];
  v10 = *(v9 + 160);
  if (v10)
  {
LABEL_6:
    if (v10 != 1)
    {
      sub_5AF20();
    }

    v11 = v9 + 4;
    v12 = *(v9 + 4) | (*(v9 + 4) << 32);
    v13 = (*(v11 + 4) | (*(v11 + 4) << 32)) >> 32;
    v14 = 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

LABEL_22:
  v25 = *(v9 + 20);
  v12 = *(v9 + 8);
  v13 = HIDWORD(v25);
  v14 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
LABEL_23:
    v14 = 0x7FFFFFFF;
    if (HIDWORD(v12) != 0x7FFFFFFF)
    {
      v14 = 10 * (v13 - HIDWORD(v12));
    }
  }

LABEL_25:
  v26 = __p[0];
  v27 = __p[1];
  if (__p[0] != __p[1])
  {
    v28 = v14 / -10;
    v29 = v14 % 10;
    if (v14 < 0)
    {
      v30 = -5;
    }

    else
    {
      v30 = 5;
    }

    v31 = vdup_n_s32(v28 + (((-103 * (v30 + v29)) >> 15) & 1) + ((-103 * (v30 + v29)) >> 10));
    do
    {
      *v26 = vadd_s32(*v26, v31);
      v26 += 5;
    }

    while (v26 != v27);
  }

  sub_BB6F34(a1, a2, a3, __p);
  v32 = __p[0];
  if (__p[0])
  {
    v33 = __p[1];
    v34 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v35 = *(v33 - 3);
        if (v35)
        {
          *(v33 - 2) = v35;
          operator delete(v35);
        }

        v33 -= 40;
      }

      while (v33 != v32);
      v34 = __p[0];
    }

    __p[1] = v32;
    operator delete(v34);
  }

  v36 = v41[0];
  if (v41[0])
  {
    v37 = v41[1];
    v38 = v41[0];
    if (v41[1] != v41[0])
    {
      do
      {
        v39 = *(v37 - 3);
        if (v39)
        {
          *(v37 - 2) = v39;
          operator delete(v39);
        }

        v37 -= 40;
      }

      while (v37 != v36);
      v38 = v41[0];
    }

    v41[1] = v36;
    operator delete(v38);
  }
}

void sub_BB640C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_30C2C4(&a9);
  sub_30C2C4(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_BB6430(uint64_t result, unsigned int **a2, void *a3)
{
  if (*(result + 10) != 1 || a2[1] != *a2)
  {
    __p[3] = 0;
    v3 = *a2;
    if (!v3[40] && *(*a3 + 168 * *v3 + 160) == 1)
    {
      sub_BB77A0(__p);
    }

    sub_5AF20();
  }

  return result;
}

void sub_BB681C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    v16 = a1;
    operator delete(__p);
    a1 = v16;
  }

  _Unwind_Resume(a1);
}

void sub_BB6864(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  v6 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3);
  if (v5 < 1)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3);
    while (1)
    {
      v8 = operator new(40 * v7, &std::nothrow);
      if (v8)
      {
        break;
      }

      v9 = v7 >> 1;
      v10 = v7 > 1;
      v7 >>= 1;
      if (!v10)
      {
        v11 = 0;
        v7 = v9;
        goto LABEL_8;
      }
    }

    v11 = v8;
  }

LABEL_8:
  sub_BBBAAC(v3, v4, v6, v11, v7);
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    v14 = 0x80000000;
    v15 = 0x80000000;
    v16 = *a2;
    do
    {
      while (*v16 <= v14 || v16[2] <= v15)
      {
        v16[2] = 0x7FFFFFFF;
        v16 += 10;
        if (v16 == v13)
        {
          goto LABEL_16;
        }
      }

      v15 = v16[2];
      v14 = *v16;
      v16 += 10;
    }

    while (v16 != v13);
LABEL_16:
    if (v12 != v13)
    {
      while (*(v12 + 8) != 0x7FFFFFFF)
      {
        v12 += 40;
        if (v12 == v13)
        {
          return;
        }
      }

      if (v12 != v13)
      {
        v17 = v12 + 40;
        if ((v12 + 40) != v13)
        {
          do
          {
            if (*(v17 + 8) != 0x7FFFFFFF)
            {
              v18 = *v17;
              *(v12 + 8) = *(v17 + 8);
              *v12 = v18;
              v19 = *(v12 + 16);
              if (v19)
              {
                *(v12 + 24) = v19;
                operator delete(v19);
                *(v12 + 16) = 0;
                *(v12 + 24) = 0;
                *(v12 + 32) = 0;
              }

              *(v12 + 16) = *(v17 + 16);
              *(v12 + 32) = *(v17 + 32);
              *(v17 + 16) = 0;
              *(v17 + 24) = 0;
              *(v17 + 32) = 0;
              v12 += 40;
            }

            v17 += 40;
          }

          while (v17 != v13);
          v13 = a2[1];
        }
      }
    }
  }

  if (v12 != v13)
  {
    while (v13 != v12)
    {
      v20 = *(v13 - 3);
      if (v20)
      {
        *(v13 - 2) = v20;
        operator delete(v20);
      }

      v13 -= 10;
    }

    a2[1] = v12;
  }
}

void sub_BB6AD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_BB6AF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  v4 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a2) >> 3);
    while (1)
    {
      v11 = *a3;
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3);
      if (v8 >= v12)
      {
        break;
      }

      if (v7 < v9)
      {
        v13 = v11 + 40 * v8;
        v14 = (v4 + 40 * v7);
        if (*(v13 + 8) <= *v14)
        {
          goto LABEL_16;
        }

        v15 = v7 + 1;
        while (1)
        {
          v16 = v15;
          *v14 = 0x7FFFFFFF;
          if (v9 == v15)
          {
            break;
          }

          v17 = v14[10];
          v14 += 10;
          ++v15;
          if (*(v13 + 8) <= v17)
          {
            v7 = v16;
            goto LABEL_15;
          }
        }

        v7 = v9;
LABEL_15:
        if (v16 < v9)
        {
LABEL_16:
          v18 = v4 + 40 * v7;
          if (*v18 >= *(v13 + 8))
          {
            v19 = v12 - 1;
            v20 = (v11 + 40 * v8 + 48);
            while (v19 != v8)
            {
              ++v8;
              v21 = *v20;
              v20 += 10;
              if (*v18 < v21)
              {
                v19 = v8 - 1;
                if (!v8)
                {
                  goto LABEL_5;
                }

                goto LABEL_23;
              }
            }

            v8 = v12;
            if (!v12)
            {
              goto LABEL_5;
            }

LABEL_23:
            v22 = v11 + 40 * v19;
            *(v18 + 4) = *(v22 + 4);
            v23 = *(v18 + 24);
            v42 = *(v23 - 64);
            v43 = *(v23 - 48);
            v44 = *(v23 - 32);
            v45 = *(v23 - 16);
            if (v18 != v22)
            {
              sub_BBCDF8((v18 + 16), *(v22 + 16), *(v22 + 24), (*(v22 + 24) - *(v22 + 16)) >> 6);
              v4 = *v3;
            }

            v24 = (v4 + 40 * v7);
            v25 = v24[3];
            v26 = v24[4];
            if (v25 < v26)
            {
              *v25 = v42;
              *(v25 + 1) = v43;
              *(v25 + 2) = v44;
              *(v25 + 3) = v45;
              v10 = (v25 + 64);
            }

            else
            {
              v41 = v3;
              v27 = v24[2];
              v28 = v25 - v27;
              v29 = (v25 - v27) >> 6;
              v30 = v29 + 1;
              if ((v29 + 1) >> 58)
              {
                sub_1794();
              }

              v31 = v26 - v27;
              if (v31 >> 5 > v30)
              {
                v30 = v31 >> 5;
              }

              if (v31 >= 0x7FFFFFFFFFFFFFC0)
              {
                v32 = 0x3FFFFFFFFFFFFFFLL;
              }

              else
              {
                v32 = v30;
              }

              if (v32)
              {
                if (!(v32 >> 58))
                {
                  operator new();
                }

                sub_1808();
              }

              v33 = (v29 << 6);
              *v33 = v42;
              v33[1] = v43;
              v33[2] = v44;
              v33[3] = v45;
              v10 = (v29 << 6) + 64;
              memcpy(0, v27, v28);
              v24[2] = 0;
              v24[3] = v10;
              v24[4] = 0;
              if (v27)
              {
                operator delete(v27);
              }

              v3 = v41;
            }

            v24[3] = v10;
            v4 = *v3;
            v5 = v3[1];
          }
        }
      }

LABEL_5:
      ++v7;
      v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3);
      if (v7 >= v9)
      {
        if (v7 > v9)
        {
          sub_BBB720(v3, v7 - v9);
          v5 = v3[1];
        }

        goto LABEL_46;
      }
    }

    v34 = v4 + 40 * v7;
    while (v5 != v34)
    {
      v35 = *(v5 - 24);
      if (v35)
      {
        *(v5 - 16) = v35;
        operator delete(v35);
      }

      v5 -= 40;
    }

    v3[1] = v34;
    v5 = v34;
  }

LABEL_46:
  v36 = *v3;
  if (*v3 != v5)
  {
    while (*v36 != 0x7FFFFFFF)
    {
      v36 += 40;
      if (v36 == v5)
      {
        return;
      }
    }

    if (v36 != v5)
    {
      v37 = v36 + 40;
      if (v36 + 40 != v5)
      {
        do
        {
          if (*v37 != 0x7FFFFFFF)
          {
            v38 = *v37;
            *(v36 + 8) = *(v37 + 8);
            *v36 = v38;
            v39 = *(v36 + 16);
            if (v39)
            {
              *(v36 + 24) = v39;
              operator delete(v39);
              *(v36 + 16) = 0;
              *(v36 + 24) = 0;
              *(v36 + 32) = 0;
            }

            *(v36 + 16) = *(v37 + 16);
            *(v36 + 32) = *(v37 + 32);
            *(v37 + 16) = 0;
            *(v37 + 24) = 0;
            *(v37 + 32) = 0;
            v36 += 40;
          }

          v37 += 40;
        }

        while (v37 != v5);
        v5 = v3[1];
      }
    }

    if (v36 != v5)
    {
      while (v5 != v36)
      {
        v40 = *(v5 - 24);
        if (v40)
        {
          *(v5 - 16) = v40;
          operator delete(v40);
        }

        v5 -= 40;
      }

      v3[1] = v36;
    }
  }
}

void sub_BB6F34(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = sub_A520DC(a3);
  v8 = sub_A51E58(a3, 0);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = 10 * (HIDWORD(v7) - HIDWORD(v8));
  }

  if (HIDWORD(v7) == 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_A51E58(a3, 0);
  v12 = sub_A520DC(a3);
  if (!v10)
  {
    return;
  }

  v13 = v12;
  if (*(a1 + 24) == 1)
  {
    v14 = sub_A51E58(a3, 0);
    for (i = a3[25]; i != a3[26]; i += 9)
    {
      if (!*(i + 24))
      {
        v17 = *i;
        if (*i != i[1])
        {
          v18 = *(v17 + 160);
          v19 = *(v17 + 44);
          if (!v18 && v19 == -1)
          {
            v21 = 0;
            goto LABEL_21;
          }
        }
      }
    }

    v21 = 0x100000000;
LABEL_21:
    v22 = v21 | v15;
    v23 = a3[29];
    v24 = a3[30];
    v88 = v13;
    v90 = v11;
    if (v23 >= v24)
    {
      v26 = a3[28];
      v27 = v23 - v26;
      v28 = (v23 - v26) >> 4;
      v29 = v28 + 1;
      if ((v28 + 1) >> 60)
      {
LABEL_107:
        sub_1794();
      }

      v30 = v24 - v26;
      if (v30 >> 3 > v29)
      {
        v29 = v30 >> 3;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFF0)
      {
        v31 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        if (!(v31 >> 60))
        {
          operator new();
        }

LABEL_108:
        sub_1808();
      }

      v32 = 16 * v28;
      *v32 = v14;
      *(v32 + 8) = v22;
      *(v32 + 12) = BYTE4(v22);
      v25 = (16 * v28 + 16);
      v14 = memcpy(0, v26, v27);
      a3[28] = 0;
      a3[29] = v25;
      a3[30] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v23 = v14;
      *(v23 + 8) = v22;
      *(v23 + 12) = BYTE4(v22);
      v25 = (v23 + 16);
    }

    a3[29] = v25;
    v33 = *a4;
    v34 = a4[1];
    if (*a4 != v34)
    {
      if (v10 < 0)
      {
        v35 = -5;
      }

      else
      {
        v35 = 5;
      }

      v36 = (v10 / 10 + (((103 * (v35 + v10 % 10)) >> 15) & 1) + ((103 * (v35 + v10 % 10)) >> 10));
      do
      {
        if ((*(v33 + 8) - *(v33 + 4)) / v36 <= *(a1 + 16))
        {
          v14 = sub_BB7FB0(v14, a3, v33);
          v38 = a3[29];
          v39 = a3[30];
          if (v38 < v39)
          {
            *v38 = v14;
            *(v38 + 8) = v37;
            *(v38 + 12) = BYTE4(v37);
            v25 = (v38 + 16);
          }

          else
          {
            v40 = a3[28];
            v41 = v38 - v40;
            v42 = (v38 - v40) >> 4;
            v43 = v42 + 1;
            if ((v42 + 1) >> 60)
            {
              goto LABEL_107;
            }

            v44 = v39 - v40;
            if (v44 >> 3 > v43)
            {
              v43 = v44 >> 3;
            }

            if (v44 >= 0x7FFFFFFFFFFFFFF0)
            {
              v45 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = v43;
            }

            if (v45)
            {
              if (!(v45 >> 60))
              {
                operator new();
              }

              goto LABEL_108;
            }

            v46 = 16 * v42;
            *v46 = v14;
            *(v46 + 8) = v37;
            *(v46 + 12) = BYTE4(v37);
            v25 = (16 * v42 + 16);
            v14 = memcpy(0, v40, v41);
            a3[28] = 0;
            a3[29] = v25;
            a3[30] = 0;
            if (v40)
            {
              operator delete(v40);
            }
          }

          a3[29] = v25;
        }

        v33 += 40;
      }

      while (v33 != v34);
    }

    v47 = a3[28];
    v48 = 126 - 2 * __clz((v25 - v47) >> 4);
    if (v25 == v47)
    {
      v49 = 0;
    }

    else
    {
      v49 = v48;
    }

    sub_BBCF54(v47, v25, v49, 1);
    v51 = a3[28];
    v50 = a3[29];
    if (v51 == v50)
    {
      v13 = v88;
      v11 = v90;
    }

    else
    {
      v52 = v51 - 16;
      v13 = v88;
      v11 = v90;
      do
      {
        if (v52 + 32 == v50)
        {
          goto LABEL_68;
        }

        v53 = *(v52 + 20);
        v54 = *(v52 + 36);
        v52 += 16;
      }

      while (v53 != v54);
      v55 = v52 + 32;
      if (v52 + 32 != v50)
      {
        do
        {
          if (*(v52 + 4) != *(v55 + 4))
          {
            v56 = *(v55 + 5);
            *(v52 + 16) = *v55;
            v52 += 16;
            *(v52 + 5) = v56;
          }

          v55 += 16;
        }

        while (v55 != v50);
        v50 = a3[29];
      }

      if (v52 + 16 != v50)
      {
        a3[29] = v52 + 16;
        if (*(a1 + 25) != 1)
        {
          return;
        }

        goto LABEL_69;
      }
    }
  }

LABEL_68:
  if (*(a1 + 25) != 1)
  {
    return;
  }

LABEL_69:
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v57 = a4[1] - *a4;
  if (v57)
  {
    v58 = 0;
    v89 = HIDWORD(v13);
    v91 = HIDWORD(v11);
    v59 = v57 >> 3;
    if (v10 < 0)
    {
      v60 = -5;
    }

    else
    {
      v60 = 5;
    }

    v92 = 0xCCCCCCCCCCCCCCCDLL * v59;
    v61 = (v10 / 10 + (((103 * (v60 + v10 % 10)) >> 15) & 1) + ((103 * (v60 + v10 % 10)) >> 10));
    while (1)
    {
      v72 = v112;
      v73 = v113;
      if ((0x14C1BACF914C1BADLL * ((v113 - v112) >> 3)) >= *(a1 + 32))
      {
        goto LABEL_97;
      }

      v74 = v58;
      if (*(a2 + 184))
      {
        v74 = ~v58 - 0x3333333333333333 * ((a4[1] - *a4) >> 3);
      }

      v75 = sub_BB8248(a4, v74);
      v76 = v75;
      if ((*(v75 + 8) - *(v75 + 4)) / v61 <= *(a1 + 16))
      {
        if ((*(a1 + 40) & 1) == 0)
        {
          v77 = *(v75 + 24) - *(v75 + 16);
          if (!v77)
          {
            goto LABEL_76;
          }

          v78 = 0;
          v79 = v77 >> 6;
          v80 = 1;
          while (1)
          {
            v81 = *(v76 + 16);
            v82 = sub_A532F0(a3 + 25, v80);
            v83 = sub_A846B8(v82, *(v81 + v78));
            if (*(v83 + 160))
            {
              sub_5AF20();
            }

            if (*(v83 + 44) == -1)
            {
              break;
            }

            v80 += 2;
            v78 += 64;
            if (!--v79)
            {
              goto LABEL_76;
            }
          }
        }

        if (*(a2 + 184) == 1)
        {
          if (*(v76 + 8) < v89)
          {
            goto LABEL_93;
          }
        }

        else if (*(a2 + 184) || *(v76 + 4) > v91)
        {
LABEL_93:
          sub_BB8464(a1, a3, v76, v94);
          v84 = v113;
          if (v113 < v114)
          {
            v62 = v94[0];
            v63 = v94[2];
            *(v113 + 16) = v94[1];
            *(v84 + 32) = v63;
            *v84 = v62;
            v64 = v94[3];
            v65 = v94[4];
            v66 = v94[5];
            *(v84 + 96) = v95;
            *(v84 + 64) = v65;
            *(v84 + 80) = v66;
            *(v84 + 48) = v64;
            *(v84 + 104) = v96;
            v67 = v97;
            *(v84 + 128) = v98;
            *(v84 + 112) = v67;
            *(v84 + 136) = v99;
            v68 = v100;
            v69 = v102;
            *(v84 + 160) = v101;
            *(v84 + 176) = v69;
            *(v84 + 144) = v68;
            *(v84 + 200) = 0;
            *(v84 + 208) = 0;
            *(v84 + 216) = 0;
            *(v84 + 224) = 0;
            *(v84 + 200) = v104;
            *(v84 + 216) = v105;
            *(v84 + 232) = 0;
            *(v84 + 240) = 0;
            *(v84 + 224) = v106;
            *(v84 + 248) = 0;
            *(v84 + 256) = 0;
            *(v84 + 264) = 0;
            *(v84 + 272) = 0;
            *(v84 + 248) = v108;
            v70 = v109;
            *(v84 + 240) = v107;
            v98 = 0;
            v97 = 0uLL;
            *(v84 + 192) = v103;
            v104 = 0uLL;
            v105 = 0;
            v106 = 0uLL;
            v107 = 0;
            *(v84 + 264) = v70;
            v108 = 0uLL;
            *(v84 + 280) = 0;
            *(v84 + 288) = 0;
            *(v84 + 272) = v110;
            *(v84 + 288) = v111;
            v109 = 0;
            v110 = 0uLL;
            v111 = 0;
            v71 = v84 + 296;
          }

          else
          {
            sub_A7C8B8(&v112, v94);
          }

          v113 = v71;
          sub_A7847C(v94);
        }
      }

LABEL_76:
      if (++v58 == v92)
      {
        v72 = v112;
        v73 = v113;
        goto LABEL_97;
      }
    }
  }

  v73 = 0;
  v72 = 0;
LABEL_97:
  sub_AA9EA4(v72, v73, a2 + 8);
  v85 = v112;
  if (v112)
  {
    v86 = v113;
    v87 = v112;
    if (v113 != v112)
    {
      do
      {
        v86 = sub_A7847C(v86 - 296);
      }

      while (v86 != v85);
      v87 = v112;
    }

    v113 = v85;
    operator delete(v87);
  }
}

void sub_BB7734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_A7847C(va);
  sub_A7850C(v6 - 128);
  _Unwind_Resume(a1);
}

void sub_BB77A0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_BB7CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  v25 = *v23;
  if (!*v23)
  {
    _Unwind_Resume(exception_object);
  }

  *(v23 + 8) = v25;
  operator delete(v25);
  _Unwind_Resume(exception_object);
}

void sub_BB7DEC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 - *a2;
  v7 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 2);
  if (v6 < 7681)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 2);
    while (1)
    {
      v9 = operator new(60 * v8, &std::nothrow);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  sub_BB9FC4(v4, v5, &v22, v7, v12, v8);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *a2;
  v14 = a2[1];
  if (*a2 == v14)
  {
LABEL_19:
    if (v13 != a2[1])
    {
LABEL_22:
      a2[1] = v13;
    }
  }

  else
  {
    do
    {
      v15 = v13 + 60;
      if ((v13 + 60) == v14)
      {
        v13 = v14;
        goto LABEL_19;
      }

      v16 = sub_BBB20C(a1, v13, v13 + 60);
      v13 = v15;
    }

    while (!v16);
    v17 = (v15 + 60);
    v18 = v15 - 60;
    while (v17 != v14)
    {
      if (!sub_BBB20C(a1, v18, v17))
      {
        v19 = *v17;
        v20 = v17[1];
        v21 = v17[2];
        *(v18 + 101) = *(v17 + 41);
        *(v18 + 92) = v21;
        *(v18 + 76) = v20;
        *(v18 + 60) = v19;
        v18 += 60;
      }

      v17 = (v17 + 60);
    }

    v13 = v18 + 60;
    if (v18 + 60 != a2[1])
    {
      goto LABEL_22;
    }
  }
}

void sub_BB7F98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_BB7FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_BB8AC0((a3 + 16), 0);
  v6 = sub_A532F0((a2 + 200), 0);
  v7 = sub_A846B8(v6, 0);
  if (v7[40] != 1)
  {
    sub_5AF20();
  }

  v8 = *(v5 + 8);
  v9 = HIDWORD(v8);
  v11 = v7[1];
  v10 = v7[2];
  if (v10 != v11)
  {
    v12 = *(v5 + 4);
    if (v9 == 0x7FFFFFFF || v12 == 0x7FFFFFFF)
    {
      v14 = v12 / -10;
      v15 = v12 % 10;
      v16 = 0x7FFFFFFF;
    }

    else
    {
      v14 = v12 / -10;
      v15 = v12 % 10;
      if (v12 < 0)
      {
        v17 = -5;
      }

      else
      {
        v17 = 5;
      }

      v16 = v14 + HIDWORD(v8) + (((-103 * (v17 + v15)) >> 15) & 1) + ((-103 * (v17 + v15)) >> 10);
    }

    if (v12 < 0)
    {
      v18 = -5;
    }

    else
    {
      v18 = 5;
    }

    v19 = (((-103 * (v15 + v18)) >> 15) & 1) + ((-103 * (v15 + v18)) >> 10);
    v20 = 10 * (v10 - v11);
    v9 = 0x7FFFFFFFLL;
    if (v11 != 0x7FFFFFFF && v10 != 0x7FFFFFFF && v16 != 0x7FFFFFFF)
    {
      v21 = 0xA00000000 * (v10 - v11);
      v22 = 10 * (v10 - v11) / -10;
      v23 = 10 * (v10 - v11) % 10;
      if (v21 < 0)
      {
        v24 = -5;
      }

      else
      {
        v24 = 5;
      }

      v9 = v22 + v16 + (((-103 * (v23 + v24)) >> 15) & 1) + ((-103 * (v23 + v24)) >> 10);
    }

    if (v20 < 0)
    {
      v25 = -5;
    }

    else
    {
      v25 = 5;
    }

    v26 = -103 * (v25 + v20 % 10);
    LODWORD(v8) = v20 / -10 + v8 + v14 + v19 + ((v26 >> 15) & 1) + (v26 >> 10);
  }

  v27 = *(a3 + 16);
  for (i = *(a3 + 24); v27 != i; v27 += 64)
  {
    if (*(v27 + 44) == -1)
    {
      break;
    }
  }

  return v8 | (v9 << 32);
}

uint64_t sub_BB8248(void *a1, unint64_t a2)
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

void sub_BB8384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_BB8464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 2) = 0;
  *(a4 + 4) = 0;
  *(a4 + 12) = 0;
  *(a4 + 16) = -NAN;
  *(a4 + 24) = 0x7FFFFFFF;
  *(a4 + 28) = 0;
  *(a4 + 32) = 0x8000000080000000;
  *(a4 + 40) = 0;
  *(a4 + 44) = 0x8000000080000000;
  *(a4 + 52) = 0x7FFFFFFF;
  *(a4 + 56) = 0;
  *(a4 + 60) = 0x8000000080000000;
  *(a4 + 68) = 0;
  *(a4 + 72) = 0x8000000080000000;
  *(a4 + 80) = 0;
  *(a4 + 84) = 0xFFFFFFFF00000000;
  *(a4 + 92) = -1;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0x7FFFFFFF;
  *(a4 + 200) = 0u;
  v7 = (a4 + 200);
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *(a4 + 128) = 0;
  *(a4 + 136) = 100;
  *(a4 + 144) = -1;
  __asm { FMOV            V1.2D, #1.0 }

  *(a4 + 152) = _Q1;
  *(a4 + 168) = _Q1;
  *(a4 + 184) = _Q1;
  *(a4 + 216) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 248) = 0u;
  *(a4 + 264) = 0u;
  *(a4 + 280) = 0u;
  v13 = *(a1 + 48);
  if (sub_68312C(v13 + 3896) && *(v13 + 3944))
  {
    v14 = 1;
  }

  else
  {
    v15 = *(a1 + 48);
    v14 = sub_4C2B90(v15 + 3896) && *(v15 + 3960) != 0;
  }

  *(a4 + 1) = v14;
  v16 = *(a1 + 48);
  if (sub_4C2B90(v16 + 3896))
  {
    v17 = 2 * (*(v16 + 3960) != 0);
  }

  else
  {
    v17 = 0;
  }

  *(a4 + 4) = v17;
  *(a4 + 8) = v17;
  v20 = *(a2 + 200);
  v19 = (a2 + 200);
  v18 = v20;
  *(a4 + 13) = 1;
  *(a4 + 16) = *(v19 - 46);
  v21 = *(a4 + 208);
  if (v21 >= *(a4 + 216))
  {
    v22 = sub_BBB944(v7, v18);
  }

  else
  {
    sub_A7C79C(v21, v18);
    v22 = v21 + 72;
  }

  *(a4 + 208) = v22;
  v23 = *(a3 + 24) - *(a3 + 16);
  if (v23)
  {
    v24 = 0;
    v59 = v23 >> 6;
    do
    {
      v25 = *(a3 + 16);
      v26 = sub_A532F0(v19, (2 * v24) | 1);
      v27 = (v25 + (v24 << 6));
      v28 = sub_A846B8(v26, *v27);
      if (v28[40])
      {
        sub_5AF20();
      }

      v29 = sub_A532F0(v19, 2 * v24 + 2);
      v30 = sub_A846B8(v29, *v28);
      if (*(v30 + 160) != 1)
      {
        sub_5AF20();
      }

      v91 = 0u;
      v92 = 0u;
      v90 = 0u;
      v93 = 0x7FFFFFFF;
      v95 = 0;
      v96 = 0;
      v94 = 0;
      v97 = 1;
      v98 = 0x8000000080000000;
      v99 = 0;
      DWORD1(v82) = v27[1];
      v31 = *(v27 + 1);
      v83 = *(v27 + 8);
      *(&v82 + 1) = v31;
      v32 = *(v27 + 5);
      v85 = *(v27 + 14);
      v84 = v32;
      LODWORD(v82) = 0;
      v89 = *(v27 + 13);
      v86 = *(v27 + 4);
      v33 = *(v27 + 5);
      v88 = v27[12];
      v87 = v33;
      v73 = 0;
      *v72 = 0u;
      v76 = 0;
      v77 = 0;
      v75 = 0;
      v78 = 1;
      v79 = 0x8000000080000000;
      v80 = 0;
      v81 = 0;
      v74 = 0;
      v34 = sub_A7B9A8(v72, &v82);
      v35 = *(v30 + 4);
      v36 = *(v30 + 8);
      v72[1] = v34;
      v71[0] = *v30;
      *(v71 + 12) = *(v30 + 12);
      DWORD1(v71[0]) = HIDWORD(v84);
      DWORD2(v71[0]) = v36 + HIDWORD(v84) - v35;
      v62 = 0;
      *v61 = 0u;
      v65 = 0;
      v66 = 0;
      __p = 0;
      v67 = 1;
      v68 = 0x8000000080000000;
      v69 = 0;
      v70 = 0;
      v63 = 1;
      v61[1] = sub_BA6FAC(v61, v71);
      v37 = *(a4 + 208);
      if (v37 >= *(a4 + 216))
      {
        v38 = sub_BA71A0(v7, v72);
        *(a4 + 208) = v38;
        if (v38 < *(a4 + 216))
        {
LABEL_29:
          sub_A33054(v38, v61);
          *(a4 + 208) = v38 + 72;
          v39 = __p;
          if (!__p)
          {
            goto LABEL_22;
          }

LABEL_21:
          v65 = v39;
          operator delete(v39);
          goto LABEL_22;
        }
      }

      else
      {
        sub_A33054(*(a4 + 208), v72);
        v38 = v37 + 72;
        *(a4 + 208) = v38;
        if (v38 < *(a4 + 216))
        {
          goto LABEL_29;
        }
      }

      *(a4 + 208) = sub_BA71A0(v7, v61);
      v39 = __p;
      if (__p)
      {
        goto LABEL_21;
      }

LABEL_22:
      v40 = v61[0];
      if (v61[0])
      {
        v41 = v61[1];
        v42 = v61[0];
        if (v61[1] != v61[0])
        {
          do
          {
            v43 = v41 - 168;
            v44 = *(v41 - 2);
            if (v44 != -1)
            {
              (off_26712B0[v44])(v100, v41 - 168);
            }

            *(v41 - 2) = -1;
            v41 -= 168;
          }

          while (v43 != v40);
          v42 = v61[0];
        }

        v61[1] = v40;
        operator delete(v42);
      }

      if (v75)
      {
        v76 = v75;
        operator delete(v75);
      }

      v45 = v72[0];
      if (v72[0])
      {
        v46 = v72[1];
        v47 = v72[0];
        if (v72[1] != v72[0])
        {
          do
          {
            v48 = v46 - 168;
            v49 = *(v46 - 2);
            if (v49 != -1)
            {
              (off_26712B0[v49])(v61, v46 - 168);
            }

            *(v46 - 2) = -1;
            v46 -= 168;
          }

          while (v48 != v45);
          v47 = v72[0];
        }

        v72[1] = v45;
        operator delete(v47);
      }

      if (v94)
      {
        v95 = v94;
        operator delete(v94);
      }

      if (*(&v91 + 1))
      {
        *&v92 = *(&v91 + 1);
        operator delete(*(&v91 + 1));
      }

      if (v90)
      {
        *(&v90 + 1) = v90;
        operator delete(v90);
      }

      ++v24;
    }

    while (v24 != v59);
  }

  v50 = **v7;
  if (v50[40] != 1)
  {
    sub_5AF20();
  }

  result = sub_A8449C(v7, 1uLL);
  v52 = *result;
  if (*(*result + 160))
  {
    sub_5AF20();
  }

  v53 = *(v52 + 12);
  v54 = *(v52 + 4);
  v55 = v54 / -10;
  v56 = v54 % 10;
  if (v54 < 0)
  {
    v57 = -5;
  }

  else
  {
    v57 = 5;
  }

  v58 = v55 + v53 + (((-103 * (v57 + v56)) >> 15) & 1) + ((-103 * (v57 + v56)) >> 10);
  v50[1] = v50[1] - v50[2] + v58;
  v50[2] = v58;
  return result;
}

void sub_BB8A30(_Unwind_Exception *a1)
{
  *(v1 + 208) = v2;
  sub_A7847C(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_BB8AC0(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 6)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 6);
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

  return *a1 + (a2 << 6);
}

void sub_BB8BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

BOOL sub_BB8CBC(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, unint64_t a5, unsigned int a6, unsigned int a7)
{
  v8 = a6;
  v10 = a3;
  if (a3 <= a4 && a6 <= a7)
  {
    while (1)
    {
      v14 = sub_A57920((a1 + 4136), a2);
      v15 = (v14 - *v14);
      if (*v15 >= 9u && (v16 = v15[4]) != 0)
      {
        if ((*(sub_A571D4((v14 + v16 + *(v14 + v16)), v10) + 15) & 2) != 0)
        {
          goto LABEL_14;
        }
      }

      else if ((*(sub_A571D4(0, v10) + 15) & 2) != 0)
      {
        goto LABEL_14;
      }

      v17 = sub_A57920((a1 + 4136), a2);
      v18 = (v17 - *v17);
      if (*v18 >= 9u && (v19 = v18[4]) != 0)
      {
        if (*(sub_A571D4((v17 + v19 + *(v17 + v19)), v10) + 15))
        {
          goto LABEL_14;
        }

LABEL_5:
        if (++v10 > a4)
        {
          break;
        }
      }

      else
      {
        if ((*(sub_A571D4(0, v10) + 15) & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_14:
        v20 = sub_A57920((a1 + 4136), a5);
        v21 = (v20 - *v20);
        if (*v21 >= 9u && (v22 = v21[4]) != 0)
        {
          if ((*(sub_A571D4((v20 + v22 + *(v20 + v22)), v8) + 15) & 2) != 0)
          {
            goto LABEL_24;
          }
        }

        else if ((*(sub_A571D4(0, v8) + 15) & 2) != 0)
        {
          goto LABEL_24;
        }

        v23 = sub_A57920((a1 + 4136), a5);
        v24 = (v23 - *v23);
        if (*v24 >= 9u && (v25 = v24[4]) != 0)
        {
          if ((*(sub_A571D4((v23 + v25 + *(v23 + v25)), v8) + 15) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else if ((*(sub_A571D4(0, v8) + 15) & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_24:
        v26 = sub_A57920((a1 + 4136), a2);
        v27 = (v26 - *v26);
        if (*v27 >= 9u && (v28 = v27[4]) != 0)
        {
          v29 = (v26 + v28 + *(v26 + v28));
        }

        else
        {
          v29 = 0;
        }

        v30 = *sub_A571D4(v29, v10);
        v31 = sub_A57920((a1 + 4136), a5);
        v32 = (v31 - *v31);
        if (*v32 >= 9u && (v33 = v32[4]) != 0)
        {
          if (v30 != *sub_A571D4((v31 + v33 + *(v31 + v33)), v8))
          {
            return 0;
          }
        }

        else if (v30 != *sub_A571D4(0, v8))
        {
          return 0;
        }

        ++v10;
LABEL_34:
        ++v8;
        if (v10 > a4 || v8 > a7)
        {
          break;
        }
      }
    }
  }

  return a4 + 1 == v10 && a7 + 1 == v8;
}

void sub_BB8F88(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, signed int a5@<W4>, int a6@<W5>, int a7@<W6>, unsigned int a8@<W7>, uint64_t a9@<X8>, unsigned int a10)
{
  v39 = 0uLL;
  v40 = 0;
  *(a2 + 32) = *(a2 + 24) + 16 * a3;
  if (*(a2 + 96) == 1)
  {
    v19 = sub_A7A1E8(a1, a2, a5, 2u);
  }

  else
  {
    v19 = sub_A7A710(a2, a5, 1);
  }

  if (v19)
  {
    v20 = *(a2 + 80);
    v34 = *(a2 + 64);
    v35 = v20;
    v36 = *(a2 + 96);
    v21 = *(a2 + 16);
    v30 = *a2;
    v31 = v21;
    v22 = *(a2 + 48);
    v32 = *(a2 + 32);
    v33 = v22;
    if (a7 < 0)
    {
      v23 = -5;
    }

    else
    {
      v23 = 5;
    }

    sub_BB95EC(a1, &v30, a3, a4, a7 / 10 + a5 + (((103 * (v23 + a7 % 10)) >> 15) & 1) + ((103 * (v23 + a7 % 10)) >> 10), a10, &__p);
    sub_BB92D8(&v39, *(&v39 + 1), __p, v38, 0xEEEEEEEEEEEEEEEFLL * ((v38 - __p) >> 2));
    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    sub_A7B558(a2, 0);
    goto LABEL_15;
  }

  if (*(a2 + 96) == 1)
  {
    v24 = sub_A84F48(a1, a2, a5, 2u);
  }

  else
  {
    v24 = sub_A8552C(a2, a5, 1);
  }

  if (v24)
  {
LABEL_15:
    v25 = *(a2 + 80);
    v34 = *(a2 + 64);
    v35 = v25;
    v36 = *(a2 + 96);
    v26 = *(a2 + 16);
    v30 = *a2;
    v31 = v26;
    v27 = *(a2 + 48);
    v32 = *(a2 + 32);
    v33 = v27;
    if (a6 < 0)
    {
      v28 = -5;
    }

    else
    {
      v28 = 5;
    }

    sub_BB9AD8(a1, &v30, a3, a4, a6 / -10 + a5 + (((-103 * (v28 + a6 % 10)) >> 15) & 1) + ((-103 * (v28 + a6 % 10)) >> 10), a8, &__p);
    sub_BB92D8(&v39, *(&v39 + 1), __p, v38, 0xEEEEEEEEEEEEEEEFLL * ((v38 - __p) >> 2));
    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    *a9 = v39;
    *(a9 + 16) = v40;
    return;
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (v39)
  {
    *(&v39 + 1) = v39;

    operator delete(v39);
  }
}

void sub_BB9280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
    v29 = *(v27 - 112);
    if (!v29)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v29 = *(v27 - 112);
    if (!v29)
    {
      goto LABEL_3;
    }
  }

  *(v27 - 104) = v29;
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

void *sub_BB92D8(uint64_t a1, char *__dst, _OWORD *__src, __int128 *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if ((0xEEEEEEEEEEEEEEEFLL * ((v7 - v6) >> 2)) < a5)
  {
    v8 = *a1;
    v9 = a5 - 0x1111111111111111 * (&v6[-*a1] >> 2);
    if (v9 > 0x444444444444444)
    {
      sub_1794();
    }

    v10 = 0xEEEEEEEEEEEEEEEFLL * ((v7 - v8) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x222222222222222)
    {
      v11 = 0x444444444444444;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x444444444444444)
      {
        operator new();
      }

      sub_1808();
    }

    v35 = 4 * ((__dst - v8) >> 2);
    v36 = 60 * a5;
    v37 = v35 + 60 * a5;
    v38 = v35;
    do
    {
      v39 = *__src;
      v40 = __src[1];
      v41 = __src[2];
      *(v38 + 44) = *(__src + 44);
      v38[1] = v40;
      v38[2] = v41;
      *v38 = v39;
      v38 = (v38 + 60);
      __src = (__src + 60);
      v36 -= 60;
    }

    while (v36);
    v42 = *(a1 + 8) - __dst;
    memcpy((v35 + 60 * a5), __dst, v42);
    v44 = v37 + v42;
    *(a1 + 8) = v5;
    v45 = *a1;
    v46 = v5 - *a1;
    v47 = v35 - v46;
    memcpy((v35 - v46), *a1, v46);
    *a1 = v47;
    *(a1 + 8) = v44;
    *(a1 + 16) = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return v35;
  }

  v12 = v6 - __dst;
  if ((0xEEEEEEEEEEEEEEEFLL * ((v6 - __dst) >> 2)) >= a5)
  {
    v27 = &__dst[60 * a5];
    v28 = &v6[-60 * a5];
    for (i = *(a1 + 8); v28 < v6; v28 += 60)
    {
      v30 = *v28;
      v31 = *(v28 + 1);
      v32 = *(v28 + 2);
      *(i + 44) = *(v28 + 44);
      i[1] = v31;
      i[2] = v32;
      *i = v30;
      i = (i + 60);
    }

    *(a1 + 8) = i;
    if (v6 != v27)
    {
      v33 = __src;
      v34 = a5;
      memmove(v27, __dst, v6 - v27 - 3);
      a5 = v34;
      __src = v33;
    }

    v26 = 60 * a5 - 3;
    goto LABEL_26;
  }

  v13 = (__src + v12);
  v14 = *(a1 + 8);
  for (j = v14; v13 != a4; v14 = (v14 + 60))
  {
    v16 = *v13;
    v17 = v13[1];
    v18 = v13[2];
    *(j + 44) = *(v13 + 44);
    j[1] = v17;
    j[2] = v18;
    *j = v16;
    j = (j + 60);
    v13 = (v13 + 60);
  }

  *(a1 + 8) = v14;
  if (v12 >= 1)
  {
    v19 = &__dst[60 * a5];
    v20 = (v14 - 60 * a5);
    for (k = v14; v20 < v6; v20 = (v20 + 60))
    {
      v22 = *v20;
      v23 = v20[1];
      v24 = v20[2];
      *(k + 44) = *(v20 + 44);
      k[1] = v23;
      k[2] = v24;
      *k = v22;
      k = (k + 60);
    }

    *(a1 + 8) = k;
    if (j != v19)
    {
      v25 = __src;
      memmove(&__dst[60 * a5], __dst, v14 - v19 - 3);
      __src = v25;
    }

    v26 = v12 - 3;
LABEL_26:
    memmove(v5, __src, v26);
  }

  return v5;
}

uint64_t sub_BB95EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, unsigned int a6@<W5>, uint64_t *a7@<X8>)
{
  v62 = result;
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v8 = *(a2 + 56);
  v7 = *(a2 + 64);
  if (v7 >= v8)
  {
    v9 = a3;
    v11 = a7;
    v12 = 0;
    v13 = 0;
    v66 = *(a2 + 88);
    v61 = (a2 + 104);
    v53 = a5;
    do
    {
      if (v7 >= *(a2 + 72))
      {
        break;
      }

      v14 = v61;
      if (!*(a2 + 96))
      {
        v14 = v7;
      }

      v15 = (*(a2 + 16) + *(*(a2 + 16) - **(a2 + 16) + 6));
      if ((*(&v15[2 * v7[1] + 2 + 2 * ((*(a2 + 32) - *(a2 + 24)) >> 4)] + *v15) + *v14) > a5 && v13 >= a6)
      {
        break;
      }

      if (*(a2 + 96))
      {
        v64 = *(a2 + 100);
        v65 = *(a2 + 104);
      }

      else
      {
        v64 = -1;
        v65 = 0x7FFFFFFF;
      }

      v17 = sub_A57920((v62 + 4136), *(a2 + 88));
      v18 = (v17 - *v17);
      if (*v18 >= 9u && (v19 = v18[4]) != 0)
      {
        v20 = (v17 + v19 + *(v17 + v19));
      }

      else
      {
        v20 = 0;
      }

      v59 = v13;
      v21 = *(sub_A571D4(v20, v9) + 8);
      v60 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2);
      v67 = sub_A56F04((v62 + 4136), v66, a3, v60);
      v68 = v22;
      v23 = sub_A57920((v62 + 4136), v66);
      v24 = (v23 - *v23);
      if (*v24 >= 9u && (v25 = v24[4]) != 0)
      {
        v26 = (v23 + v25 + *(v23 + v25));
      }

      else
      {
        v26 = 0;
      }

      v27 = *(sub_A571D4(v26, v9) + 12);
      v28 = v64 == -1 ? 0x7FFFFFFF : v65;
      v29 = sub_A56700((v62 + 4184), &v67, v27, v28);
      v31 = v30;
      v67 = sub_A56F04((v62 + 4136), v66, a4, v60);
      v68 = v32;
      v33 = sub_A57920((v62 + 4136), v66);
      v34 = (v33 - *v33);
      if (*v34 >= 9u && (v35 = v34[4]) != 0)
      {
        v36 = (v33 + v35 + *(v33 + v35));
      }

      else
      {
        v36 = 0;
      }

      v37 = sub_A571D4(v36, a4);
      v38 = sub_A56A5C((v62 + 4184), &v67, *(v37 + 12), v28);
      v40 = 10 * v21;
      v41 = v11[2];
      if (v12 >= v41)
      {
        v42 = *v11;
        v43 = v12 - *v11;
        v44 = 0xEEEEEEEEEEEEEEEFLL * (v43 >> 2) + 1;
        if (v44 > 0x444444444444444)
        {
          sub_1794();
        }

        v45 = 0xEEEEEEEEEEEEEEEFLL * ((v41 - v42) >> 2);
        if (2 * v45 > v44)
        {
          v44 = 2 * v45;
        }

        if (v45 >= 0x222222222222222)
        {
          v46 = 0x444444444444444;
        }

        else
        {
          v46 = v44;
        }

        if (v46)
        {
          if (v46 <= 0x444444444444444)
          {
            operator new();
          }

          sub_1808();
        }

        v47 = 4 * (v43 >> 2);
        *v47 = v40;
        *(v47 + 4) = v29;
        *(v47 + 12) = v31;
        *(v47 + 16) = v38;
        *(v47 + 24) = v39;
        *(v47 + 28) = v66;
        *(v47 + 36) = v60;
        *(v47 + 40) = v64;
        *(v47 + 44) = v65;
        *(v47 + 48) = a3;
        *(v47 + 52) = a4;
        *(v47 + 56) = 1;
        v12 = v47 + 60;
        v48 = v47 - v43;
        memcpy((v47 - v43), v42, v43);
        *v11 = v48;
        v11[1] = v12;
        v11[2] = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v12 = v40;
        *(v12 + 4) = v29;
        *(v12 + 12) = v31;
        *(v12 + 16) = v38;
        *(v12 + 24) = v39;
        *(v12 + 28) = v66;
        *(v12 + 36) = v60;
        *(v12 + 40) = v64;
        *(v12 + 44) = v65;
        *(v12 + 48) = v9;
        *(v12 + 52) = a4;
        *(v12 + 56) = 1;
        v12 += 60;
      }

      v11[1] = v12;
      v49 = v61;
      if (!*(a2 + 96))
      {
        v49 = *(a2 + 64);
      }

      v50 = *v49;
      v51 = (*(a2 + 16) + *(*(a2 + 16) - **(a2 + 16) + 6));
      v52 = *(&v51[2 * *(*(a2 + 64) + 4) + 2 + 2 * ((*(a2 + 32) - *(a2 + 24)) >> 4)] + *v51);
      result = sub_A7B02C(a2, 0);
      a5 = v53;
      v13 = v59;
      if (v52 + v50 > v53)
      {
        v13 = v59 + 1;
      }

      v8 = *(a2 + 56);
      v7 = *(a2 + 64);
      v11 = a7;
      v9 = a3;
    }

    while (v7 >= v8);
  }

  return result;
}

void sub_BB9AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *a14;
  if (*a14)
  {
    *(a14 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BB9AD8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, unsigned int a6@<W5>, uint64_t *a7@<X8>)
{
  v62 = result;
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v8 = *(a2 + 56);
  v7 = *(a2 + 64);
  if (v7 >= v8)
  {
    v9 = a3;
    v11 = a7;
    v12 = 0;
    v13 = 0;
    v66 = *(a2 + 88);
    v61 = (a2 + 104);
    v53 = a5;
    do
    {
      if (v7 >= *(a2 + 72))
      {
        break;
      }

      v14 = v61;
      if (!*(a2 + 96))
      {
        v14 = v7;
      }

      v15 = (*(a2 + 16) + *(*(a2 + 16) - **(a2 + 16) + 6));
      if ((*(&v15[2 * v7[1] + 2 + 2 * ((*(a2 + 32) - *(a2 + 24)) >> 4)] + *v15) + *v14) < a5 && v13 >= a6)
      {
        break;
      }

      if (*(a2 + 96))
      {
        v64 = *(a2 + 100);
        v65 = *(a2 + 104);
      }

      else
      {
        v64 = -1;
        v65 = 0x7FFFFFFF;
      }

      v17 = sub_A57920((v62 + 4136), *(a2 + 88));
      v18 = (v17 - *v17);
      if (*v18 >= 9u && (v19 = v18[4]) != 0)
      {
        v20 = (v17 + v19 + *(v17 + v19));
      }

      else
      {
        v20 = 0;
      }

      v59 = v13;
      v21 = *(sub_A571D4(v20, v9) + 8);
      v60 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2);
      v67 = sub_A56F04((v62 + 4136), v66, a3, v60);
      v68 = v22;
      v23 = sub_A57920((v62 + 4136), v66);
      v24 = (v23 - *v23);
      if (*v24 >= 9u && (v25 = v24[4]) != 0)
      {
        v26 = (v23 + v25 + *(v23 + v25));
      }

      else
      {
        v26 = 0;
      }

      v27 = *(sub_A571D4(v26, v9) + 12);
      v28 = v64 == -1 ? 0x7FFFFFFF : v65;
      v29 = sub_A56700((v62 + 4184), &v67, v27, v28);
      v31 = v30;
      v67 = sub_A56F04((v62 + 4136), v66, a4, v60);
      v68 = v32;
      v33 = sub_A57920((v62 + 4136), v66);
      v34 = (v33 - *v33);
      if (*v34 >= 9u && (v35 = v34[4]) != 0)
      {
        v36 = (v33 + v35 + *(v33 + v35));
      }

      else
      {
        v36 = 0;
      }

      v37 = sub_A571D4(v36, a4);
      v38 = sub_A56A5C((v62 + 4184), &v67, *(v37 + 12), v28);
      v40 = 10 * v21;
      v41 = v11[2];
      if (v12 >= v41)
      {
        v42 = *v11;
        v43 = v12 - *v11;
        v44 = 0xEEEEEEEEEEEEEEEFLL * (v43 >> 2) + 1;
        if (v44 > 0x444444444444444)
        {
          sub_1794();
        }

        v45 = 0xEEEEEEEEEEEEEEEFLL * ((v41 - v42) >> 2);
        if (2 * v45 > v44)
        {
          v44 = 2 * v45;
        }

        if (v45 >= 0x222222222222222)
        {
          v46 = 0x444444444444444;
        }

        else
        {
          v46 = v44;
        }

        if (v46)
        {
          if (v46 <= 0x444444444444444)
          {
            operator new();
          }

          sub_1808();
        }

        v47 = 4 * (v43 >> 2);
        *v47 = v40;
        *(v47 + 4) = v29;
        *(v47 + 12) = v31;
        *(v47 + 16) = v38;
        *(v47 + 24) = v39;
        *(v47 + 28) = v66;
        *(v47 + 36) = v60;
        *(v47 + 40) = v64;
        *(v47 + 44) = v65;
        *(v47 + 48) = a3;
        *(v47 + 52) = a4;
        *(v47 + 56) = 1;
        v12 = v47 + 60;
        v48 = v47 - v43;
        memcpy((v47 - v43), v42, v43);
        *v11 = v48;
        v11[1] = v12;
        v11[2] = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v12 = v40;
        *(v12 + 4) = v29;
        *(v12 + 12) = v31;
        *(v12 + 16) = v38;
        *(v12 + 24) = v39;
        *(v12 + 28) = v66;
        *(v12 + 36) = v60;
        *(v12 + 40) = v64;
        *(v12 + 44) = v65;
        *(v12 + 48) = v9;
        *(v12 + 52) = a4;
        *(v12 + 56) = 1;
        v12 += 60;
      }

      v11[1] = v12;
      v49 = v61;
      if (!*(a2 + 96))
      {
        v49 = *(a2 + 64);
      }

      v50 = *v49;
      v51 = (*(a2 + 16) + *(*(a2 + 16) - **(a2 + 16) + 6));
      v52 = *(&v51[2 * *(*(a2 + 64) + 4) + 2 + 2 * ((*(a2 + 32) - *(a2 + 24)) >> 4)] + *v51);
      result = sub_A7B558(a2, 0);
      a5 = v53;
      v13 = v59;
      if (v52 + v50 < v53)
      {
        v13 = v59 + 1;
      }

      v8 = *(a2 + 56);
      v7 = *(a2 + 64);
      v11 = a7;
      v9 = a3;
    }

    while (v7 >= v8);
  }

  return result;
}

void sub_BB9F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *a14;
  if (*a14)
  {
    *(a14 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

double sub_BB9FC4(uint64_t a1, int *a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return *&v8;
  }

  if (a4 != 2)
  {
    if (a4 <= 128)
    {

      sub_BBA2F4(a1, a2);
      return *&v8;
    }

    v15 = a4 >> 1;
    v16 = (a1 + 60 * (a4 >> 1));
    v17 = a4 - (a4 >> 1);
    v18 = a1;
    if (a4 > a6)
    {
      sub_BB9FC4(a1, v16, a3, a4 >> 1, a5, a6);
      sub_BB9FC4(v16, a2, a3, v17, a5, a6);

      *&v8 = sub_BBA944(v18, v16, a2, a3, v15, v17, a5, a6).n128_u64[0];
      return *&v8;
    }

    v24 = a5;
    sub_BBA4D4(a1, v16, a3, a4 >> 1, a5);
    v25 = &v24[60 * v15];
    sub_BBA4D4(v16, a2, a3, v17, v25);
    v26 = &v24[60 * a4];
    v27 = v25;
    while (1)
    {
      if (v27 == v26)
      {
        while (v24 != v25)
        {
          v8 = *v24;
          v34 = *(v24 + 1);
          v35 = *(v24 + 2);
          *(v18 + 41) = *(v24 + 41);
          v18[1] = v34;
          v18[2] = v35;
          *v18 = v8;
          v18 = (v18 + 60);
          v24 += 60;
        }

        return *&v8;
      }

      v30 = *(v27 + (*(v27 + 2) != 0x7FFFFFFF) + 1);
      v31 = *&v24[4 * (*(v24 + 2) != 0x7FFFFFFF) + 4];
      if (v30 == v31)
      {
        if (*(v27 + (*(v27 + 5) != 0x7FFFFFFF) + 4) <= *&v24[4 * (*(v24 + 5) != 0x7FFFFFFF) + 16])
        {
          goto LABEL_24;
        }

LABEL_18:
        v8 = *v27;
        v28 = v27[1];
        v29 = v27[2];
        *(v18 + 41) = *(v27 + 41);
        v18[1] = v28;
        v18[2] = v29;
        *v18 = v8;
        v18 = (v18 + 60);
        v27 = (v27 + 60);
        if (v24 == v25)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v30 < v31)
        {
          goto LABEL_18;
        }

LABEL_24:
        v8 = *v24;
        v32 = *(v24 + 1);
        v33 = *(v24 + 2);
        *(v18 + 41) = *(v24 + 41);
        v18[1] = v32;
        v18[2] = v33;
        *v18 = v8;
        v18 = (v18 + 60);
        v24 += 60;
        if (v24 == v25)
        {
LABEL_30:
          while (v27 != v26)
          {
            v8 = *v27;
            v36 = v27[1];
            v37 = v27[2];
            *(v18 + 41) = *(v27 + 41);
            v18[1] = v36;
            v18[2] = v37;
            *v18 = v8;
            v18 = (v18 + 60);
            v27 = (v27 + 60);
          }

          return *&v8;
        }
      }
    }
  }

  v6 = a2[(*(a2 - 13) != 0x7FFFFFFF) - 14];
  v7 = *(a1 + 4 * (*(a1 + 8) != 0x7FFFFFFF) + 4);
  if (v6 == v7)
  {
    if (a2[(*(a2 - 10) != 0x7FFFFFFF) - 11] <= *(a1 + 4 * (*(a1 + 20) != 0x7FFFFFFF) + 16))
    {
      return *&v8;
    }
  }

  else if (v6 >= v7)
  {
    return *&v8;
  }

  v9 = (a2 - 15);
  *v39 = *(a1 + 32);
  *&v39[12] = *(a1 + 44);
  v10 = *a1;
  v8 = *(a1 + 16);
  v12 = *(a2 - 11);
  v11 = *(a2 - 7);
  v13 = *(a2 - 15);
  *(a1 + 41) = *(a2 - 19);
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
  *a1 = v13;
  *v9 = v10;
  v9[1] = v8;
  v9[2] = *v39;
  *&v8 = *&v39[9];
  *(v9 + 41) = *&v39[9];
  return *&v8;
}

__int128 *sub_BBA2F4(__int128 *result, int *a2)
{
  if (result != a2)
  {
    v2 = (result + 60);
    if ((result + 60) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = *(v5 + 17);
        v7 = *(v5 + (v6 != 0x7FFFFFFF) + 16);
        v8 = *(v5 + (*(v5 + 2) != 0x7FFFFFFF) + 1);
        if (v7 == v8)
        {
          v9 = *(v5 + 20);
          if (*(v5 + (v9 != 0x7FFFFFFF) + 19) <= *(v5 + (*(v5 + 5) != 0x7FFFFFFF) + 4))
          {
            goto LABEL_6;
          }
        }

        else
        {
          if (v7 >= v8)
          {
            goto LABEL_6;
          }

          v9 = *(v5 + 20);
        }

        v10 = *v4;
        v11 = *(v5 + 16);
        v13 = *(v5 + 18);
        v12 = *(v5 + 19);
        v25 = *(v5 + 29);
        v23 = *(v5 + 84);
        v24 = *(v5 + 100);
        if (v9 == 0x7FFFFFFF)
        {
          v14 = *(v5 + 19);
        }

        else
        {
          v14 = v9;
        }

        v15 = *(v5 + 41);
        v16 = v5[2];
        v17 = *v5;
        v4[1] = v5[1];
        v4[2] = v16;
        *(v4 + 41) = v15;
        *v4 = v17;
        if (v5 == result)
        {
LABEL_4:
          v5 = result;
          goto LABEL_5;
        }

        if (v6 == 0x7FFFFFFF)
        {
          v18 = v11;
        }

        else
        {
          v18 = v6;
        }

        v19 = v3;
        while (1)
        {
          v21 = (result + v19);
          v22 = *(result + 4 * (*(result + v19 - 52) != 0x7FFFFFFF) + v19 - 56);
          if (v18 != v22)
          {
            break;
          }

          if (v14 <= *(v21 + (*(v21 - 10) != 0x7FFFFFFF) - 11))
          {
            goto LABEL_5;
          }

LABEL_22:
          v5 = (v5 - 60);
          v20 = *(v21 - 44);
          *v21 = *(v21 - 60);
          v21[1] = v20;
          v21[2] = *(v21 - 28);
          *(v21 + 41) = *(v21 - 19);
          v19 -= 60;
          if (!v19)
          {
            goto LABEL_4;
          }
        }

        if (v18 < v22)
        {
          goto LABEL_22;
        }

        v5 = (result + v19);
LABEL_5:
        *v5 = v10;
        *(v5 + 1) = v11;
        *(v5 + 2) = v6;
        *(v5 + 3) = v13;
        *(v5 + 4) = v12;
        *(v5 + 5) = v9;
        *(v5 + 24) = v23;
        *(v5 + 40) = v24;
        *(v5 + 56) = v25;
LABEL_6:
        v2 = (v4 + 60);
        v3 += 60;
      }

      while ((v4 + 60) != a2);
    }
  }

  return result;
}

uint64_t sub_BBA4D4(uint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  if (a4)
  {
    if (a4 != 2)
    {
      if (a4 == 1)
      {
        v5 = *result;
        v6 = *(result + 16);
        v7 = *(result + 32);
        *(a5 + 44) = *(result + 44);
        a5[1] = v6;
        a5[2] = v7;
        *a5 = v5;
        return result;
      }

      if (a4 <= 8)
      {
        if (result == a2)
        {
          return result;
        }

        v18 = *result;
        v19 = *(result + 16);
        v20 = *(result + 32);
        *(a5 + 44) = *(result + 44);
        a5[1] = v19;
        a5[2] = v20;
        *a5 = v18;
        v21 = (result + 60);
        if ((result + 60) == a2)
        {
          return result;
        }

        v22 = 0;
        v23 = a5;
LABEL_16:
        v28 = v21;
        v29 = (v23 + 60);
        v30 = *(result + 64 + 4 * (*(result + 68) != 0x7FFFFFFF));
        v31 = *(v23 + (*(v23 + 2) != 0x7FFFFFFF) + 1);
        if (v30 == v31)
        {
          if (*(result + 4 * (*(result + 80) != 0x7FFFFFFF) + 76) <= *(v23 + (*(v23 + 5) != 0x7FFFFFFF) + 4))
          {
            goto LABEL_18;
          }
        }

        else if (v30 >= v31)
        {
LABEL_18:
          v32 = *v21;
          v33 = v21[1];
          v34 = v21[2];
          *(v23 + 104) = *(v21 + 44);
          *(v23 + 76) = v33;
          *(v23 + 92) = v34;
          *v29 = v32;
          goto LABEL_15;
        }

        v35 = v23[1];
        *v29 = *v23;
        *(v23 + 76) = v35;
        *(v23 + 92) = v23[2];
        *(v23 + 104) = *(v23 + 44);
        v24 = a5;
        if (v23 == a5)
        {
          goto LABEL_14;
        }

        v36 = v22;
        while (1)
        {
          v38 = (a5 + v36);
          v39 = *(result + 64 + 4 * (*(result + 68) != 0x7FFFFFFF));
          v40 = *(a5 + 4 * (*(a5 + v36 - 52) != 0x7FFFFFFF) + v36 - 56);
          if (v39 == v40)
          {
            if (*(result + 76 + 4 * (*(result + 80) != 0x7FFFFFFF)) <= *(v38 + (*(v38 - 10) != 0x7FFFFFFF) - 11))
            {
              v24 = v23;
LABEL_14:
              v25 = *v21;
              v26 = v21[1];
              v27 = v21[2];
              *(v24 + 41) = *(v21 + 41);
              v24[1] = v26;
              v24[2] = v27;
              *v24 = v25;
LABEL_15:
              v21 = (v21 + 60);
              v22 += 60;
              v23 = v29;
              result = v28;
              if ((v28 + 60) == a2)
              {
                return result;
              }

              goto LABEL_16;
            }
          }

          else if (v39 >= v40)
          {
            v24 = (a5 + v36);
            goto LABEL_14;
          }

          v23 = (v23 - 60);
          v37 = *(v38 - 44);
          *v38 = *(v38 - 60);
          v38[1] = v37;
          v38[2] = *(v38 - 28);
          *(v38 + 41) = *(v38 - 19);
          v36 -= 60;
          if (!v36)
          {
            v24 = a5;
            goto LABEL_14;
          }
        }
      }

      v44 = a4 >> 1;
      v45 = 60 * (a4 >> 1);
      v46 = v45 + result;
      v47 = result;
      v51 = a5;
      (sub_BB9FC4)();
      result = sub_BB9FC4(v46, a2, a3, a4 - v44, v51 + v45, a4 - v44);
      v52 = v46;
      while (1)
      {
        if (v52 == a2)
        {
          while (v47 != v46)
          {
            v61 = *v47;
            v62 = *(v47 + 16);
            v63 = *(v47 + 32);
            *(v51 + 44) = *(v47 + 44);
            v51[1] = v62;
            v51[2] = v63;
            *v51 = v61;
            v51 = (v51 + 60);
            v47 += 60;
          }

          return result;
        }

        v56 = *(v52 + 4 * (*(v52 + 8) != 0x7FFFFFFF) + 4);
        v57 = *(v47 + 4 * (*(v47 + 8) != 0x7FFFFFFF) + 4);
        if (v56 == v57)
        {
          if (*(v52 + 4 * (*(v52 + 20) != 0x7FFFFFFF) + 16) <= *(v47 + 4 * (*(v47 + 20) != 0x7FFFFFFF) + 16))
          {
            goto LABEL_38;
          }

LABEL_32:
          v53 = *v52;
          v54 = *(v52 + 16);
          v55 = *(v52 + 32);
          *(v51 + 44) = *(v52 + 44);
          v51[1] = v54;
          v51[2] = v55;
          *v51 = v53;
          v51 = (v51 + 60);
          v52 += 60;
          if (v47 == v46)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v56 < v57)
          {
            goto LABEL_32;
          }

LABEL_38:
          v58 = *v47;
          v59 = *(v47 + 16);
          v60 = *(v47 + 32);
          *(v51 + 44) = *(v47 + 44);
          v51[1] = v59;
          v51[2] = v60;
          *v51 = v58;
          v51 = (v51 + 60);
          v47 += 60;
          if (v47 == v46)
          {
LABEL_44:
            while (v52 != a2)
            {
              v64 = *v52;
              v65 = *(v52 + 16);
              v66 = *(v52 + 32);
              *(v51 + 44) = *(v52 + 44);
              v51[1] = v65;
              v51[2] = v66;
              *v51 = v64;
              v51 = (v51 + 60);
              v52 += 60;
            }

            return result;
          }
        }
      }
    }

    v8 = (a2 - 60);
    v9 = *(a2 + (*(a2 - 13) != 0x7FFFFFFF) - 14);
    v10 = *(result + 4 * (*(result + 8) != 0x7FFFFFFF) + 4);
    if (v9 == v10)
    {
      if (*(a2 + (*(a2 - 10) != 0x7FFFFFFF) - 11) <= *(result + 4 * (*(result + 20) != 0x7FFFFFFF) + 16))
      {
LABEL_8:
        v11 = *result;
        v12 = *(result + 16);
        v13 = *(result + 32);
        *(a5 + 44) = *(result + 44);
        a5[1] = v12;
        a5[2] = v13;
        *a5 = v11;
        v14 = *v8;
        v15 = *(a2 - 44);
        v16 = *(a2 - 28);
        v17 = *(a2 - 1);
LABEL_30:
        *(a5 + 104) = v17;
        *(a5 + 92) = v16;
        *(a5 + 76) = v15;
        *(a5 + 60) = v14;
        return result;
      }
    }

    else if (v9 >= v10)
    {
      goto LABEL_8;
    }

    v41 = *v8;
    v42 = *(a2 - 44);
    v43 = *(a2 - 28);
    *(a5 + 44) = *(a2 - 1);
    a5[1] = v42;
    a5[2] = v43;
    *a5 = v41;
    v14 = *result;
    v15 = *(result + 16);
    v16 = *(result + 32);
    v17 = *(result + 44);
    goto LABEL_30;
  }

  return result;
}

__n128 sub_BBA944(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  do
  {
    if (a6 <= a8 || a5 <= a8)
    {

      sub_BBAFB8(a1, a2, a3, a4, a5, a6, a7);
      return result;
    }

    if (!a5)
    {
      return result;
    }

    v8 = 0;
    v9 = *(a2 + (*(a2 + 2) != 0x7FFFFFFF) + 1);
    v10 = -a5;
    while (1)
    {
      v12 = *(a1 + 4 * (*(a1 + v8 + 8) != 0x7FFFFFFF) + v8 + 4);
      if (v9 != v12)
      {
        if (v9 < v12)
        {
          break;
        }

        goto LABEL_7;
      }

      if (*(a2 + (*(a2 + 5) != 0x7FFFFFFF) + 4) > *(a1 + 4 * (*(a1 + v8 + 20) != 0x7FFFFFFF) + v8 + 16))
      {
        break;
      }

LABEL_7:
      v8 += 60;
      if (__CFADD__(v10++, 1))
      {
        return result;
      }
    }

    v13 = (a1 + v8);
    if (-v10 < a6)
    {
      v14 = a6 / 2;
      v15 = (a2 + 60 * (a6 / 2));
      v16 = a2;
      if (a2 - a1 == v8)
      {
LABEL_12:
        v17 = 0xEEEEEEEEEEEEEEEFLL * ((v16 - a1 - v8) >> 2);
        v18 = (a2 + 60 * (a6 / 2));
        v19 = a2 - v16;
        if (a2 == v16)
        {
          goto LABEL_55;
        }

        goto LABEL_17;
      }

      v23 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - a1 - v8) >> 2);
      v24 = *(v15 + (*(v15 + 2) != 0x7FFFFFFF) + 1);
      v16 = (a1 + v8);
      while (2)
      {
        v25 = v23 >> 1;
        v26 = v16 + 60 * (v23 >> 1);
        v27 = *&v26[4 * (*(v26 + 2) != 0x7FFFFFFF) + 4];
        if (v24 == v27)
        {
          if (*(v15 + (*(v15 + 5) != 0x7FFFFFFF) + 4) > *&v26[4 * (*(v26 + 5) != 0x7FFFFFFF) + 16])
          {
            goto LABEL_22;
          }
        }

        else if (v24 < v27)
        {
LABEL_22:
          v23 = v25;
          if (!v25)
          {
            goto LABEL_12;
          }

          continue;
        }

        break;
      }

      v16 = (v26 + 60);
      v25 = v23 + ~v25;
      goto LABEL_22;
    }

    if (v10 == -1)
    {
      v72 = (a1 + v8);
      *&v102[12] = *(a1 + v8 + 44);
      v97 = *(a1 + v8 + 16);
      *v102 = *(a1 + v8 + 32);
      v92 = *(a1 + v8);
      v73 = *a2;
      v74 = a2[1];
      v75 = a2[2];
      *(v72 + 41) = *(a2 + 41);
      v72[1] = v74;
      v72[2] = v75;
      *v72 = v73;
      *a2 = v92;
      a2[1] = v97;
      a2[2] = *v102;
      result = *&v102[9];
      *(a2 + 41) = *&v102[9];
      return result;
    }

    v17 = -v10 / 2;
    v15 = a2;
    if (a2 != a3)
    {
      v28 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - a2) >> 2);
      v29 = a1 + 60 * v17 + v8;
      v30 = *(a1 + 60 * v17 + 4 * (*(v29 + 8) != 0x7FFFFFFF) + v8 + 4);
      v31 = a1 + 60 * v17 + 4 * (*(v29 + 20) != 0x7FFFFFFF) + v8;
      v15 = a2;
      do
      {
        v32 = v28 >> 1;
        v33 = v15 + 60 * (v28 >> 1);
        v34 = *(v33 + 4 * (*(v33 + 8) != 0x7FFFFFFF) + 4);
        if (v34 == v30)
        {
          if (*(v33 + 4 * (*(v33 + 20) != 0x7FFFFFFF) + 16) <= *(v31 + 16))
          {
            goto LABEL_30;
          }
        }

        else if (v34 >= v30)
        {
          goto LABEL_30;
        }

        v15 = (v33 + 60);
        v32 = v28 + ~v32;
LABEL_30:
        v28 = v32;
      }

      while (v32);
    }

    v16 = (a1 + 60 * v17 + v8);
    v14 = 0xEEEEEEEEEEEEEEEFLL * ((v15 - a2) >> 2);
    v18 = v15;
    v19 = a2 - v16;
    if (a2 == v16)
    {
      goto LABEL_55;
    }

LABEL_17:
    v18 = v16;
    if (a2 != v15)
    {
      if ((v16 + 60) == a2)
      {
        *&v98[12] = *(v16 + 44);
        v93 = v16[1];
        *v98 = v16[2];
        v88 = *v16;
        v20 = v15 - a2;
        v84 = a3;
        v86 = a1;
        v76 = a6;
        v78 = v17;
        v21 = a7;
        v80 = a1 + v8;
        v82 = a4;
        v22 = a8;
        memmove(v16, a2, v15 - a2 - 3);
        v13 = v80;
        a4 = v82;
        a8 = v22;
        a7 = v21;
        a6 = v76;
        v17 = v78;
        a3 = v84;
        a1 = v86;
        v18 = (v16 + v20);
        *(v18 + 41) = *&v98[9];
        v18[1] = v93;
        v18[2] = *v98;
        *v18 = v88;
      }

      else if ((a2 + 60) == v15)
      {
        v18 = (v16 + 60);
        v89 = *(v15 - 60);
        v94 = *(v15 - 44);
        *v99 = *(v15 - 28);
        *&v99[12] = *(v15 - 1);
        if ((v15 - 60) != v16)
        {
          v85 = a3;
          v87 = a1;
          v77 = a6;
          v79 = v17;
          v35 = a7;
          v81 = a1 + v8;
          v83 = a4;
          v36 = a8;
          memmove(v16 + 60, v16, v15 - 60 - v16 - 3);
          v13 = v81;
          a4 = v83;
          a8 = v36;
          a7 = v35;
          a6 = v77;
          v17 = v79;
          a3 = v85;
          a1 = v87;
        }

        *(v16 + 41) = *&v99[9];
        v16[1] = v94;
        v16[2] = *v99;
        *v16 = v89;
      }

      else
      {
        v37 = 0xEEEEEEEEEEEEEEEFLL * ((v15 - a2) >> 2);
        if (0xEEEEEEEEEEEEEEEFLL * (v19 >> 2) == v37)
        {
          v38 = (v16 + 60);
          v39 = (a2 + 60);
          do
          {
            *&v100[12] = *(v38 - 1);
            v95 = *(v38 - 44);
            *v100 = *(v38 - 28);
            v90 = *(v38 - 60);
            v40 = *(v39 - 60);
            v41 = *(v39 - 44);
            v42 = *(v39 - 28);
            *(v38 - 19) = *(v39 - 19);
            *(v38 - 28) = v42;
            *(v38 - 44) = v41;
            *(v38 - 60) = v40;
            *(v39 - 60) = v90;
            *(v39 - 44) = v95;
            *(v39 - 28) = *v100;
            *(v39 - 19) = *&v100[9];
            if (v38 == a2)
            {
              break;
            }

            v38 = (v38 + 60);
            v43 = v39 == v15;
            v39 = (v39 + 60);
          }

          while (!v43);
          v18 = a2;
        }

        else
        {
          v44 = 0xEEEEEEEEEEEEEEEFLL * (v19 >> 2);
          do
          {
            v45 = v44;
            v44 = v37;
            v37 = v45 % v37;
          }

          while (v37);
          v46 = (v16 + 60 * v44);
          do
          {
            v47 = *(v46 - 60);
            v48 = *(v46 - 44);
            v49 = *(v46 - 28);
            v50 = *(v46 - 1);
            v46 = (v46 - 60);
            v91 = v47;
            v96 = v48;
            *v101 = v49;
            *&v101[12] = v50;
            v51 = (v46 + v19);
            v52 = v46;
            do
            {
              v53 = v51;
              v54 = *v51;
              v55 = v51[1];
              v56 = v51[2];
              *(v52 + 41) = *(v51 + 41);
              v52[1] = v55;
              v52[2] = v56;
              *v52 = v54;
              v57 = v15 - v51;
              v51 = (v51 + 4 * (v19 >> 2));
              if (v19 >= v57)
              {
                v51 = (a2 - v57);
              }

              v52 = v53;
            }

            while (v51 != v46);
            *(v53 + 41) = *&v101[9];
            v53[1] = v96;
            v53[2] = *v101;
            *v53 = v91;
          }

          while (v46 != v16);
          v18 = (v16 + v15 - a2);
        }
      }
    }

LABEL_55:
    v58 = -(v17 + v10);
    v59 = a6 - v14;
    if (v17 + v14 >= a6 - (v17 + v14) - v10)
    {
      v69 = v15;
      v63 = a4;
      v70 = v17;
      v66 = a7;
      v67 = a8;
      v71 = v13;
      v59 = v14;
      sub_BBA944(v18, v69, a3, a4, v58, a6 - v14);
      a1 = v71;
      a2 = v16;
      a5 = v70;
      a3 = v18;
    }

    else
    {
      v60 = a1 + v8;
      v61 = v16;
      v62 = a3;
      v63 = a4;
      v64 = -(v17 + v10);
      v65 = v17;
      v66 = a7;
      v67 = a8;
      sub_BBA944(v60, v61, v18, a4, v65, v14);
      a5 = v64;
      a3 = v62;
      a1 = v18;
      a2 = v15;
    }

    a6 = v59;
    a7 = v66;
    a4 = v63;
    a8 = v67;
  }

  while (v59);
  return result;
}

__int128 *sub_BBAFB8(__int128 *result, __int128 *a2, __int128 *a3, int a4, uint64_t a5, uint64_t a6, char *__src)
{
  if (a5 <= a6)
  {
    if (result == a2)
    {
      return result;
    }

    v19 = 3 - __src;
    v20 = __src;
    v21 = result;
    do
    {
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      *(v20 + 44) = *(v21 + 44);
      v20[1] = v23;
      v20[2] = v24;
      *v20 = v22;
      v20 = (v20 + 60);
      v21 = (v21 + 60);
      v19 -= 60;
    }

    while (v21 != a2);
    while (1)
    {
      if (a2 == a3)
      {
        return memmove(result, __src, -&__src[v19]);
      }

      v28 = *(a2 + (*(a2 + 2) != 0x7FFFFFFF) + 1);
      v29 = *&__src[4 * (*(__src + 2) != 0x7FFFFFFF) + 4];
      if (v28 == v29)
      {
        if (*(a2 + (*(a2 + 5) != 0x7FFFFFFF) + 4) <= *&__src[4 * (*(__src + 5) != 0x7FFFFFFF) + 16])
        {
          goto LABEL_24;
        }

LABEL_18:
        v25 = *a2;
        v26 = a2[1];
        v27 = a2[2];
        *(result + 41) = *(a2 + 41);
        result[1] = v26;
        result[2] = v27;
        *result = v25;
        result = (result + 60);
        a2 = (a2 + 60);
        if (v20 == __src)
        {
          return result;
        }
      }

      else
      {
        if (v28 < v29)
        {
          goto LABEL_18;
        }

LABEL_24:
        v30 = *__src;
        v31 = *(__src + 1);
        v32 = *(__src + 2);
        *(result + 41) = *(__src + 41);
        result[1] = v31;
        result[2] = v32;
        *result = v30;
        result = (result + 60);
        __src += 60;
        if (v20 == __src)
        {
          return result;
        }
      }
    }
  }

  if (a2 == a3)
  {
    return result;
  }

  v7 = 0;
  do
  {
    v8 = &__src[v7];
    v9 = *(a2 + v7);
    v10 = *(a2 + v7 + 16);
    v11 = *(a2 + v7 + 32);
    *(v8 + 44) = *(a2 + v7 + 44);
    *(v8 + 1) = v10;
    *(v8 + 2) = v11;
    *v8 = v9;
    v7 += 60;
  }

  while ((a2 + v7) != a3);
  v12 = &__src[v7];
  while (a2 != result)
  {
    v13 = a2 - 60;
    v17 = *&v12[4 * (*(v12 - 13) != 0x7FFFFFFF) - 56];
    v18 = *(a2 + (*(a2 - 13) != 0x7FFFFFFF) - 14);
    if (v17 == v18)
    {
      if (*&v12[4 * (*(v12 - 10) != 0x7FFFFFFF) - 44] > *(a2 + (*(a2 - 10) != 0x7FFFFFFF) - 11))
      {
        goto LABEL_13;
      }
    }

    else if (v17 < v18)
    {
LABEL_13:
      a2 = (a2 - 60);
      goto LABEL_7;
    }

    v13 = v12 - 60;
    v12 -= 60;
LABEL_7:
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 2);
    *(a3 - 19) = *(v13 + 41);
    *(a3 - 28) = v16;
    *(a3 - 44) = v15;
    *(a3 - 60) = v14;
    a3 = (a3 - 60);
    if (v12 == __src)
    {
      return result;
    }
  }

  if (v12 != __src)
  {
    v33 = -60;
    do
    {
      v34 = *(v12 - 60);
      v35 = *(v12 - 44);
      v36 = *(v12 - 28);
      v37 = *(v12 - 19);
      v38 = v12 - 60;
      v39 = (a3 + v33);
      *(v39 + 41) = v37;
      v39[1] = v35;
      v39[2] = v36;
      *v39 = v34;
      v33 -= 60;
      v12 = v38;
    }

    while (v38 != __src);
  }

  return result;
}