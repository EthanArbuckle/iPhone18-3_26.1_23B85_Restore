void sub_4846CC(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v6) = a2[1];
  v5 = a2[2];
  if (v6 >= 0xFFFFFFFE)
  {
    v6 = 4294967294;
  }

  else
  {
    v6 = v6;
  }

  v31 = *a2 | (v6 << 32);
  v32 = v5;
  sub_2B3C60(*(a1 + 280), &v31, 10, &v29);
  v7 = *a4;
  *(a4 + 8) = *a4;
  v8 = v29;
  v9 = v30;
  if (v29 != v30)
  {
    do
    {
      v10 = *(v8 + 8);
      v11 = *(v8 + 12);
      v12 = *(a4 + 16);
      if (v7 >= v12)
      {
        v14 = *a4;
        v15 = v7 - *a4;
        v16 = (v15 >> 3) + 1;
        if (v16 >> 61)
        {
          sub_1794();
        }

        v17 = v12 - v14;
        if (v17 >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          if (!(v18 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v19 = (8 * (v15 >> 3));
        *v19 = v10 | (v11 << 32);
        v13 = v19 + 1;
        memcpy(0, v14, v15);
        *a4 = 0;
        *(a4 + 8) = v13;
        *(a4 + 16) = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v7 = v10 | (v11 << 32);
        v13 = v7 + 1;
      }

      *(a4 + 8) = v13;
      v20 = *(v8 + 8);
      v21 = *(v8 + 12);
      v22 = *(a4 + 16);
      if (v13 < v22)
      {
        *v13 = v20 | (v21 << 32) | 0x1000000000000;
        v7 = v13 + 1;
      }

      else
      {
        v23 = *a4;
        v24 = v13 - *a4;
        v25 = (v24 >> 3) + 1;
        if (v25 >> 61)
        {
          sub_1794();
        }

        v26 = v22 - v23;
        if (v26 >> 2 > v25)
        {
          v25 = v26 >> 2;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          if (!(v27 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v28 = (8 * (v24 >> 3));
        *v28 = v20 | (v21 << 32) | 0x1000000000000;
        v7 = v28 + 1;
        memcpy(0, v23, v24);
        *a4 = 0;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      *(a4 + 8) = v7;
      v8 += 48;
    }

    while (v8 != v9);
    v8 = v29;
  }

  if (v8)
  {
    v30 = v8;
    operator delete(v8);
  }
}

void sub_48493C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_484964@<D0>(void **a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  a1[132] = a1[132] + 1;
  v8 = a1[35];
  v9 = *a2;
  v10 = sub_2B51D8(v8, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v8 + 7772) == 1)
  {
    sub_30C50C(v8 + 3896, v9, 0);
  }

  sub_31D7E8(v8, v9 & 0xFFFFFFFFFFFFLL, 1);
  v11 = *v10;
  if (*(v10 - v11) < 9u)
  {
    v13 = 0;
    if (a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *(v10 - v11 + 8);
    if (*(v10 - v11 + 8))
    {
      LODWORD(v12) = *(v10 + v12);
    }

    if (v12 >= 0x7FFFFFFF)
    {
      v13 = 0x7FFFFFFF;
    }

    else
    {
      v13 = v12;
    }

    if (a3)
    {
LABEL_10:
      sub_3079D0((a1 + 36), a2, v46);
      if (v46[0])
      {
        __p[1] = 0;
        v45 = 0;
        __p[0] = 0;
        v15 = *(v48 + 8);
        v14 = *(v48 + 16);
        if (v14 != v15)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 2) <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1794();
        }

        v16 = *(v48 + 8);
        v17 = *(v48 + 16);
        for (i = __p; v16 != v17; v16 += 3)
        {
          LODWORD(v19) = v16[1];
          v18 = v16[2];
          if (v19 >= 0xFFFFFFFE)
          {
            v19 = 4294967294;
          }

          else
          {
            v19 = v19;
          }

          *&v42 = *v16 | (v19 << 32);
          DWORD2(v42) = v18;
          sub_30FB4(&i, &v42);
        }

        v41 = *__p;
        v20 = v45;
      }

      else
      {
        sub_2B7A20(a1[35], *a2, __p);
        i = a1;
        v43 = 0;
        v42 = 0uLL;
        v22 = sub_4850F8(__p);
        if (v22)
        {
          if (v22 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1794();
        }

        sub_485350(__p, &v42);
        v41 = v42;
        v20 = v43;
        if (__p[1])
        {
          v45 = __p[1];
          operator delete(__p[1]);
        }
      }

      v21 = (v10 - *v10);
      if (*v21 < 0x1Bu)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  v20 = 0;
  v41 = 0u;
  v21 = (v10 - v11);
  if (*v21 < 0x1Bu)
  {
LABEL_31:
    v24 = 0;
    goto LABEL_32;
  }

LABEL_29:
  v23 = v21[13];
  if (!v23)
  {
    goto LABEL_31;
  }

  v24 = *(v10 + v23);
LABEL_32:
  v25 = sub_2B51D8(a1[35], *a2 | (*(a2 + 2) << 32));
  v26 = (v25 - *v25);
  if (*v26 >= 0x13u && (v27 = v26[9]) != 0)
  {
    v28 = *(v25 + v27);
  }

  else
  {
    v28 = 0;
  }

  v29 = *a2;
  v30 = sub_2B51D8(a1[35], *a2 & 0xFFFFFFFFFFFFLL);
  v31 = (v30 - *v30);
  v32 = *v31;
  if ((v29 & 0xFF000000000000) == 0)
  {
    if (v32 < 0x39)
    {
      goto LABEL_48;
    }

    v35 = v31[28];
    if (!v35)
    {
      goto LABEL_48;
    }

    v34 = *(v30 + v35);
    if (v34)
    {
      goto LABEL_45;
    }

LABEL_44:
    if ((v34 & 7) == 4)
    {
      goto LABEL_45;
    }

    if ((v34 & 3) == 0)
    {
      v36 = (v34 >> 5) & 1;
      if (*(a1 + 1072) != 1)
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

LABEL_48:
    LOBYTE(v36) = 0;
    if (*(a1 + 1072) != 1)
    {
      goto LABEL_46;
    }

    goto LABEL_49;
  }

  if (v32 < 0x39)
  {
    goto LABEL_48;
  }

  v33 = v31[28];
  if (!v33)
  {
    goto LABEL_48;
  }

  v34 = *(v30 + v33);
  if ((v34 & 2) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  LOBYTE(v36) = 1;
  if (*(a1 + 1072) != 1)
  {
LABEL_46:
    v37 = 0;
    HIBYTE(v47) = 0;
    LOBYTE(v46[0]) = 0;
    goto LABEL_50;
  }

LABEL_49:
  v38 = a1[35];
  v39 = sub_31DDCC(v38, *a2);
  sub_40C59C(v38, v39, v46);
  v37 = v47 < 0;
LABEL_50:
  *a4 = v24;
  *(a4 + 2) = v28;
  *(a4 + 4) = v13;
  *(a4 + 8) = v41;
  *(a4 + 24) = v20;
  *(a4 + 32) = 23593320;
  *(a4 + 36) = v36;
  if (v37)
  {
    sub_325C((a4 + 40), v46[0], v46[1]);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[0]);
    }
  }

  else
  {
    result = *v46;
    *(a4 + 40) = *v46;
    *(a4 + 56) = v47;
  }

  return result;
}

void sub_484E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_484EC8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 280);
  v3 = *a2;
  v4 = sub_2B51D8(v2, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v2 + 7772) == 1)
  {
    sub_30C50C(v2 + 3896, v3, 0);
  }

  sub_31D7E8(v2, v3 & 0xFFFFFFFFFFFFLL, 1);
  v6 = (v4 - *v4);
  v7 = *v6;
  if ((v3 & 0xFF000000000000) != 0)
  {
    if (v7 < 0x4B || (v8 = v6[37]) == 0)
    {
LABEL_10:
      v9 = 65535.0;
      goto LABEL_11;
    }
  }

  else
  {
    if (v7 < 0x49)
    {
      goto LABEL_10;
    }

    v8 = v6[36];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  LOWORD(v5) = *(v4 + v8);
  v9 = v5;
LABEL_11:
  v10 = llround(v9 / 100.0);
  return v10 - 360 * (((11651 * v10) >> 22) + ((11651 * v10) >> 31));
}

uint64_t sub_484FAC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 280);
  v3 = *a2;
  v4 = sub_2B51D8(v2, *a2 & 0xFFFFFFFFFFFFLL);
  if (*(v2 + 7772) == 1)
  {
    sub_30C50C(v2 + 3896, v3, 0);
  }

  sub_31D7E8(v2, v3 & 0xFFFFFFFFFFFFLL, 1);
  v6 = (v4 - *v4);
  v7 = *v6;
  if ((v3 & 0xFF000000000000) != 0)
  {
    if (v7 < 0x49 || (v8 = v6[36]) == 0)
    {
LABEL_10:
      v9 = 65535.0;
      goto LABEL_11;
    }
  }

  else
  {
    if (v7 < 0x4B)
    {
      goto LABEL_10;
    }

    v8 = v6[37];
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  LOWORD(v5) = *(v4 + v8);
  v9 = v5;
LABEL_11:
  v10 = llround(v9 / 100.0);
  return v10 - 360 * (((11651 * v10) >> 22) + ((11651 * v10) >> 31));
}

uint64_t sub_485090(uint64_t a1, void *a2, void *a3)
{
  ++*(a1 + 1064);
  v5 = sub_2B4EDC(*(a1 + 280), *a2 & 0xFFFFFFFFFFFFLL, (*a2 & 0xFF000000000000) == 0);
  v6 = *(a1 + 280);

  return sub_2B365C(v6, v5, 0, a3);
}

uint64_t sub_4850F8(uint64_t a1)
{
  sub_31C60C(a1, v17);
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (*(a1 + 32))
  {
    if (v3 == v2)
    {
      LODWORD(v4) = 0;
    }

    else
    {
      LODWORD(v4) = -1;
    }

    v5 = v4;
  }

  else if (v3 == v2)
  {
    LODWORD(v4) = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 - 8);
    v7 = sub_2B4D24(*a1, v6, 0);
    v8 = &v7[*&v7[-*v7 + 4]];
    v9 = &v8[4 * HIDWORD(v6) + *v8];
    v10 = (v9 + 4 + *(v9 + 4));
    v4 = (*(a1 + 16) - *(a1 + 8)) >> 3;
    v11 = (v10 + *(v10 - *v10 + 6));
    v5 = *(v11 + *v11);
  }

  v19[0] = v17[0];
  v19[1] = v17[1];
  v19[2] = v17[2];
  v20 = v18;
  v12 = DWORD1(v18);
  v13 = v18 == v4;
  for (i = 0; !v13 || v12 != v5; ++i)
  {
    if (BYTE8(v20))
    {
      sub_31EA68(v19);
    }

    else
    {
      sub_31E948(v19);
    }

    v12 = DWORD1(v20);
    v13 = v20 == v4;
  }

  return sub_485218(i);
}

uint64_t sub_485218(uint64_t result)
{
  if (result < 0)
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

void sub_4852D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

uint64_t sub_485350(uint64_t a1, uint64_t a2)
{
  sub_31C60C(a1, v45);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (*(a1 + 32))
  {
    if (v5 == v4)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      LODWORD(v6) = -1;
    }

    v7 = v6;
    v8 = v51;
    if (v50 != v6 || v51 != v6)
    {
      goto LABEL_25;
    }

    return a2;
  }

  if (v5 == v4)
  {
    LODWORD(v6) = 0;
    v7 = 0;
    v8 = v51;
    if (v50)
    {
      v17 = 0;
    }

    else
    {
      v17 = v51 == 0;
    }

    if (v17)
    {
      return a2;
    }

LABEL_25:
    while (1)
    {
      v18 = v47 + 4 * v8;
      v19 = *(v18 + 4);
      v20 = *(v18 + 6);
      v21 = sub_57A90(v48);
      v22 = v48 & ~(-1 << (v21 & 0xFE));
      v23 = sub_581D8(v22);
      v24 = sub_581D8(v22 >> 1);
      v25 = (v46 - *v46);
      v26 = *v25;
      if (v26 < 0xD)
      {
        break;
      }

      if (!v25[6])
      {
        goto LABEL_29;
      }

      v27 = *(&v46[v51 + 1] + v25[6] + *(v46 + v25[6]));
LABEL_36:
      v31 = 1 << -(v21 >> 1);
      if (v21 < 2)
      {
        v31 = -2;
      }

      LODWORD(v32) = v31 * v24 + 4 * v20;
      if (v32 >= 0xFFFFFFFE)
      {
        v32 = 4294967294;
      }

      else
      {
        v32 = v32;
      }

      v33 = (v31 * v23 + 4 * v19) | (v32 << 32);
      v34 = *(a2 + 8);
      v35 = *(a2 + 16);
      if (v34 >= v35)
      {
        v37 = *a2;
        v38 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *a2) >> 2);
        v39 = v38 + 1;
        if (v38 + 1 > 0x1555555555555555)
        {
          sub_1794();
        }

        v40 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v37) >> 2);
        if (2 * v40 > v39)
        {
          v39 = 2 * v40;
        }

        if (v40 >= 0xAAAAAAAAAAAAAAALL)
        {
          v41 = 0x1555555555555555;
        }

        else
        {
          v41 = v39;
        }

        if (v41)
        {
          if (v41 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v42 = 4 * ((v34 - *a2) >> 2);
        *v42 = v33;
        *(v42 + 8) = v27;
        v36 = 12 * v38 + 12;
        v43 = (12 * v38 - (v34 - v37));
        memcpy(v43, v37, v34 - v37);
        *a2 = v43;
        *(a2 + 8) = v36;
        *(a2 + 16) = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v34 = v33;
        *(v34 + 8) = v27;
        v36 = v34 + 12;
      }

      *(a2 + 8) = v36;
      if (v52)
      {
        sub_31EA68(v45);
        v8 = v51;
        if (v50 == v6)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_31E948(v45);
        v8 = v51;
        if (v50 == v6)
        {
LABEL_24:
          if (v8 == v7)
          {
            return a2;
          }
        }
      }
    }

    if (v26 >= 0xB)
    {
LABEL_29:
      if (v25[5])
      {
        v28 = *(v46 + 2 * v51 + v25[5] + *(v46 + v25[5]) + 4);
        if (v28 != 0xFFFF)
        {
          v29 = v25[4];
          if (v29)
          {
            v30 = *(v46 + v29);
          }

          else
          {
            v30 = 0;
          }

          v27 = v49 + v28 + v30;
          goto LABEL_36;
        }
      }
    }

    v27 = 0x7FFFFFFF;
    goto LABEL_36;
  }

  v10 = *(v4 - 8);
  v11 = sub_2B4D24(*a1, v10, 0);
  v12 = &v11[*&v11[-*v11 + 4]];
  v13 = &v12[4 * HIDWORD(v10) + *v12];
  v14 = (v13 + 4 + *(v13 + 4));
  v6 = (*(a1 + 16) - *(a1 + 8)) >> 3;
  v15 = (v14 + *(v14 - *v14 + 6));
  v7 = *(v15 + *v15);
  v8 = v51;
  if (v50 != v6 || v51 != v7)
  {
    goto LABEL_25;
  }

  return a2;
}

void sub_4856A8(uint64_t a1, uint64_t a2)
{
  v4[23] = 15;
  strcpy(v4, "UserPathDecoder");
  __p[0] = 0;
  __p[1] = 0;
  v3 = 0;
  sub_3AEC94(a2, v4, __p);
  sub_48BEFC();
}

void sub_485A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_5BF68((v25 - 72));
  sub_21DB4B4(v24);
  _Unwind_Resume(a1);
}

void sub_485A94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_1A104(&a22);
  JUMPOUT(0x485AD0);
}

void sub_485B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v22 = v19[9];
  if (v22)
  {
    v19[10] = v22;
    operator delete(v22);
  }

  v23 = *v20;
  if (*v20)
  {
    v19[7] = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_485B5C()
{
  v0 = __chkstk_darwin();
  v3 = 17;
  strcpy(__p, "RequestWithGeoIds");
  v1 = **(v0 + 96);
  if (v1)
  {
    sub_499F74(v4, v1);
  }

  else
  {
    sub_2C0888(v4);
  }

  sub_7BDA0(1, __p, v4);
  sub_2C1D4C(v4);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  sub_4E3D18(v5);
  sub_4E3D18(v6);
  v8 = 0;
  memset(&v6[3], 0, 48);
  LOBYTE(v7) = 0;
  v10 = 0;
  v9 = 0;
  sub_4A5960(v4, *(v0 + 24));
}

void sub_485FE0(_Unwind_Exception *a1)
{
  sub_454784(v1);
  sub_4870F0(&STACK[0x268]);
  sub_49AD08(&STACK[0x1350]);
  _Unwind_Resume(a1);
}

void *sub_486084(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_3AF6B4(*(a1 + 24));
  v6 = sub_45AC50(a3);
  if (v6 != sub_588D8(a3))
  {
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v93 = vnegq_f64(v37);
    do
    {
      v42 = a3[16];
      if (v42 >= a3[17])
      {
        v43 = sub_49C7F4(a3 + 15);
      }

      else
      {
        *(v42 + 8) = 0u;
        *(v42 + 24) = 0u;
        *(v42 + 40) = 0u;
        *(v42 + 56) = 0u;
        *(v42 + 72) = 0u;
        *(v42 + 88) = 0u;
        *(v42 + 104) = 0u;
        *v42 = -1;
        *(v42 + 8) = 0x7FFFFFFF;
        *(v42 + 16) = -1;
        *(v42 + 24) = -1;
        *(v42 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v42 + 48) = -1935635296;
        *(v42 + 56) = 0;
        *(v42 + 63) = 0;
        *(v42 + 72) = 0;
        *(v42 + 80) = 0;
        *(v42 + 88) = 0;
        *(v42 + 96) = 0;
        *(v42 + 104) = 0x7FFFFFFFFFFFFFFFLL;
        *(v42 + 112) = 100;
        *(v42 + 120) = 0;
        *(v42 + 128) = 0;
        *(v42 + 136) = v93;
        *(v42 + 216) = 0;
        *(v42 + 200) = 0u;
        *(v42 + 184) = 0u;
        *(v42 + 168) = 0u;
        *(v42 + 152) = 0u;
        *(v42 + 224) = 1;
        *(v42 + 236) = 0;
        *(v42 + 228) = 0;
        v43 = v42 + 240;
      }

      a3[16] = v43;
      if (v6 == sub_45AC50(a3))
      {
        v44 = 1;
      }

      else
      {
        v44 = 3;
      }

      *(v43 - 16) = v44;
      v45 = sub_F69654(v6);
      v47 = (*v45 - **v45);
      v48 = 0.0;
      if (*v47 >= 9u)
      {
        v49 = v47[4];
        if (v49)
        {
          LODWORD(v46) = *(*v45 + v49);
          v48 = v46;
        }
      }

      LODWORD(v50) = *sub_73F1C(v6);
      v51 = v48 * (v50 / 1000000000.0);
      v52 = (v51 + v51);
      v53 = ((v52 - 1) / 2);
      if (v51 <= -4.50359963e15)
      {
        v53 = v51;
      }

      v54 = ((v52 + 1) >> 1);
      if (v51 >= 4.50359963e15)
      {
        v54 = v51;
      }

      if (v51 >= 0.0)
      {
        v55 = v54;
      }

      else
      {
        v55 = v53;
      }

      *&v94 = v55;
      v56 = sub_F69654(v6);
      v57 = *(v56 + 32) | (*(v56 + 36) << 32);
      v108 = 0;
      v109[0] = v57;
      *&v100 = -1;
      DWORD2(v100) = 0x7FFFFFFF;
      v58 = sub_F69654(v6);
      v59 = *(v58 + 38);
      LOBYTE(v107) = *(v58 + 38);
      v60 = *(v43 - 56);
      if (v60 >= *(v43 - 48))
      {
        v64 = sub_49CB7C(v43 - 64, v109, &v100, &v94, &v108, &v107);
      }

      else
      {
        v61 = v109[0];
        v62 = v94;
        *v60 = v108;
        v63 = DWORD2(v100);
        *(v60 + 8) = v100;
        *(v60 + 16) = v63;
        *(v60 + 24) = v62;
        *(v60 + 32) = v61;
        *(v60 + 40) = v59 | 0x100;
        *(v60 + 42) = 257;
        *(v60 + 48) = 0;
        *(v60 + 56) = 0;
        *(v60 + 64) = 0;
        *(v60 + 72) = 2139095039;
        *(v60 + 88) = 0;
        *(v60 + 96) = 0;
        *(v60 + 80) = 0;
        v64 = v60 + 104;
      }

      *(v43 - 56) = v64;
      v65 = sub_F69654(v6);
      v66 = sub_73F1C(v6);
      *(v43 - 240) = sub_48CA24(v5, v65, *v66);
      *(v43 - 232) = v67;
      if (v6 == sub_45AC50(a3) && sub_E67BDC(a2))
      {
        v68 = v43 - 240;
        *v68 = *a2;
        v69 = *(a2 + 16);
        v70 = *(a2 + 32);
        v71 = *(a2 + 48);
        *(v68 + 63) = *(a2 + 63);
        *(v68 + 32) = v70;
        *(v68 + 48) = v71;
        *(v68 + 16) = v69;
        if (v43 - 240 != a2)
        {
          sub_146EC((v43 - 168), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
        }

        v72 = *(a2 + 96);
        *(v43 - 128) = *(a2 + 112);
        *(v43 - 144) = v72;
        v73 = *(a2 + 120);
        *(v43 - 104) = *(a2 + 136);
        *(v43 - 120) = v73;
        sub_3E428((v43 - 88), a2 + 152);
      }

      v74 = a3[16];
      if (v74 >= a3[17])
      {
        v75 = sub_49C7F4(a3 + 15);
      }

      else
      {
        *(v74 + 8) = 0u;
        *(v74 + 24) = 0u;
        *(v74 + 40) = 0u;
        *(v74 + 56) = 0u;
        *(v74 + 72) = 0u;
        *(v74 + 88) = 0u;
        *(v74 + 104) = 0u;
        *v74 = -1;
        *(v74 + 8) = 0x7FFFFFFF;
        *(v74 + 16) = -1;
        *(v74 + 24) = -1;
        *(v74 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v74 + 48) = -1935635296;
        *(v74 + 56) = 0;
        *(v74 + 63) = 0;
        *(v74 + 72) = 0;
        *(v74 + 80) = 0;
        *(v74 + 88) = 0;
        *(v74 + 96) = 0;
        *(v74 + 104) = 0x7FFFFFFFFFFFFFFFLL;
        *(v74 + 112) = 100;
        *(v74 + 120) = 0;
        *(v74 + 128) = 0;
        *(v74 + 136) = v93;
        *(v74 + 216) = 0;
        *(v74 + 200) = 0u;
        *(v74 + 184) = 0u;
        *(v74 + 168) = 0u;
        *(v74 + 152) = 0u;
        *(v74 + 224) = 1;
        *(v74 + 236) = 0;
        *(v74 + 228) = 0;
        v75 = v74 + 240;
      }

      a3[16] = v75;
      if (v6 == sub_588D8(a3) - 552)
      {
        v76 = 2;
      }

      else
      {
        v76 = 3;
      }

      *(v75 - 16) = v76;
      v77 = sub_F6966C(v6);
      v79 = (*v77 - **v77);
      v80 = 0.0;
      if (*v79 >= 9u)
      {
        v81 = v79[4];
        if (v81)
        {
          LODWORD(v78) = *(*v77 + v81);
          v80 = v78;
        }
      }

      LODWORD(v82) = *sub_F69058(v6);
      v83 = v80 * (v82 / 1000000000.0);
      if (v83 >= 0.0)
      {
        if (v83 < 4.50359963e15)
        {
          v84 = (v83 + v83) + 1;
          goto LABEL_54;
        }
      }

      else if (v83 > -4.50359963e15)
      {
        v84 = (v83 + v83) - 1 + (((v83 + v83) - 1) >> 63);
LABEL_54:
        v83 = (v84 >> 1);
      }

      v109[0] = v83;
      v85 = sub_F6966C(v6);
      v86 = *(v85 + 32) | (*(v85 + 36) << 32);
      v107 = 0;
      v108 = v86;
      *&v100 = -1;
      DWORD2(v100) = 0x7FFFFFFF;
      v87 = sub_F6966C(v6);
      v88 = *(v87 + 38);
      v106 = *(v87 + 38);
      v89 = *(v75 - 56);
      if (v89 >= *(v75 - 48))
      {
        v38 = sub_49CB7C(v75 - 64, &v108, &v100, v109, &v107, &v106);
      }

      else
      {
        v90 = v108;
        v91 = v109[0];
        *v89 = v107;
        v92 = DWORD2(v100);
        *(v89 + 8) = v100;
        *(v89 + 16) = v92;
        *(v89 + 24) = v91;
        *(v89 + 32) = v90;
        *(v89 + 40) = v88 | 0x100;
        *(v89 + 42) = 257;
        *(v89 + 48) = 0;
        *(v89 + 56) = 0;
        *(v89 + 64) = 0;
        *(v89 + 72) = 2139095039;
        *(v89 + 88) = 0;
        *(v89 + 96) = 0;
        *(v89 + 80) = 0;
        v38 = v89 + 104;
      }

      *(v75 - 56) = v38;
      v39 = sub_F6966C(v6);
      v40 = sub_F69058(v6);
      *(v75 - 240) = sub_48CA24(v5, v39, *v40);
      *(v75 - 232) = v41;
      v6 += 552;
    }

    while (v6 != sub_588D8(a3));
  }

  result = nullsub_1(a3);
  v8 = result[1];
  v9 = v8 - *result;
  if (v8 != *result)
  {
    v10 = *nullsub_1(a3);
    v11 = sub_73F1C(v10);
    v12 = *(v11 + 80);
    v14 = *(v11 + 32);
    v13 = *(v11 + 48);
    v104 = *(v11 + 64);
    v15 = *(v11 + 16);
    v100 = *v11;
    v101 = v15;
    v105 = v12;
    v102 = v14;
    v103 = v13;
    HIDWORD(v104) = 1;
    sub_F68F20(v10, &v100);
    v16 = sub_F69058(v10);
    v17 = *(v16 + 16);
    v94 = *v16;
    v95 = v17;
    v19 = *(v16 + 48);
    v18 = *(v16 + 64);
    v20 = *(v16 + 32);
    v99 = *(v16 + 80);
    v97 = v19;
    v98 = v18;
    v96 = v20;
    v21 = sub_F63FF4(a3) == 1 ? 2 : 4;
    HIDWORD(v98) = v21;
    result = sub_F6901C(v10, &v94);
    if (v9 != 552)
    {
      v22 = 0xF128CFC4A33F128DLL * (v9 >> 3);
      v23 = 1;
      v24 = 552;
      do
      {
        v25 = *nullsub_1(a3);
        v26 = sub_73F1C(v25 + v24);
        v27 = *(v26 + 80);
        v29 = *(v26 + 32);
        v28 = *(v26 + 48);
        v104 = *(v26 + 64);
        v30 = *(v26 + 16);
        v100 = *v26;
        v101 = v30;
        v105 = v27;
        v102 = v29;
        v103 = v28;
        HIDWORD(v104) = 4;
        sub_F68F20(v25 + v24, &v100);
        v31 = sub_F69058(v25 + v24);
        v32 = *(v31 + 16);
        v94 = *v31;
        v95 = v32;
        v34 = *(v31 + 48);
        v33 = *(v31 + 64);
        v35 = *(v31 + 32);
        v99 = *(v31 + 80);
        v97 = v34;
        v98 = v33;
        v96 = v35;
        if (v23 == sub_F63FF4(a3) - 1)
        {
          v36 = 2;
        }

        else
        {
          v36 = 4;
        }

        HIDWORD(v98) = v36;
        result = sub_F6901C(v25 + v24, &v94);
        ++v23;
        v24 += 552;
      }

      while (v22 != v23);
    }
  }

  return result;
}

BOOL sub_4867C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_E67BDC(a3))
  {
    return 1;
  }

  v4 = sub_45AC50(a2);
  if (v4 != sub_588D8(a2))
  {
    sub_48C14C(a1);
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v12);
    sub_4A5C(&v12, "Could not locate the user on the path", 37);
    if ((v22 & 0x10) != 0)
    {
      v7 = v21;
      if (v21 < v18)
      {
        v21 = v18;
        v7 = v18;
      }

      v8 = v17;
      v6 = v7 - v17;
      if (v7 - v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v22 & 8) == 0)
      {
        v6 = 0;
        v11 = 0;
LABEL_16:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 3u);
        if (v11 < 0)
        {
          operator delete(__dst);
        }

        if (v20 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v14);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v8 = v15;
      v6 = v16 - v15;
      if ((v16 - v15) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v11 = v6;
    if (v6)
    {
      memmove(&__dst, v8, v6);
    }

    goto LABEL_16;
  }

  return result;
}

void sub_486F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_486FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_486FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_486FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_486FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_486FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_487004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_487018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1959728(&a22);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a22);
  _Unwind_Resume(a1);
}

void sub_487064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_487078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48708C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4870A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4870B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4870C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4870DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void *sub_4870F0(void *a1)
{
  v2 = a1[537];
  if (v2)
  {
    a1[538] = v2;
    operator delete(v2);
  }

  v3 = a1[534];
  if (v3)
  {
    a1[535] = v3;
    operator delete(v3);
  }

  v4 = a1[531];
  if (v4)
  {
    a1[532] = v4;
    operator delete(v4);
  }

  sub_3E3EF8(a1 + 4);
  return a1;
}

uint64_t sub_48714C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v27 = 20;
  strcpy(__p, "RequestWithZilchPath");
  v8 = **(v0 + 96);
  if (v8)
  {
    sub_499F74(v28, v8);
  }

  else
  {
    sub_2C0888(v28);
  }

  sub_7BDA0(1, __p, v28);
  sub_2C1D4C(v28);
  if (v27 < 0)
  {
    operator delete(*__p);
  }

  v25 = v2;
  sub_4E3D18(v36);
  sub_4E3D18(&v40);
  v48 = 0;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  LOBYTE(v46) = 0;
  v49 = 0uLL;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  v9 = *v4;
  if (*v4 != v4[1])
  {
    v10 = *(v9 + 23);
    if (v10 < 0)
    {
      v11 = *v9;
      v10 = *(v9 + 8);
    }

    else
    {
      v11 = *v4;
    }

    sub_120D19C(&v32, v11, v10);
    sub_120B450();
  }

  sub_F64D54(v28, &v33);
  v12 = v36[0];
  if (v36[0])
  {
    v13 = v36[1];
    v14 = v36[0];
    if (v36[1] != v36[0])
    {
      do
      {
        v13 = sub_4547F0(v13 - 552);
      }

      while (v13 != v12);
      v14 = v36[0];
    }

    v36[1] = v12;
    operator delete(v14);
  }

  *v36 = *v28;
  v37 = v29;
  v29 = 0;
  v28[1] = 0;
  v28[0] = 0;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
    v38 = v30;
    v15 = v28[0];
    v39 = v31;
    HIBYTE(v31) = 0;
    LOBYTE(v30) = 0;
    if (v28[0])
    {
      v16 = v28[1];
      v17 = v28[0];
      if (v28[1] != v28[0])
      {
        do
        {
          v16 = sub_4547F0(v16 - 552);
        }

        while (v16 != v15);
        v17 = v28[0];
      }

      v28[1] = v15;
      operator delete(v17);
    }
  }

  else
  {
    v38 = v30;
    v39 = v31;
  }

  sub_486084(v5, v25, v36);
  if (!sub_4867C8(v5, v36, v25))
  {
    sub_4E3D18(v7);
    sub_4E3D18((v7 + 48));
    *(v7 + 168) = 0;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    v21 = v33;
    if (!v33)
    {
      return sub_49AD08(v36);
    }

    goto LABEL_29;
  }

  *v7 = *v36;
  *(v7 + 16) = v37;
  v36[1] = 0;
  v36[0] = 0;
  *(v7 + 24) = v38;
  *(v7 + 40) = v39;
  v38 = 0uLL;
  v39 = 0;
  *(v7 + 48) = v40;
  v18 = v43;
  *(v7 + 64) = v41;
  v41 = 0;
  v40 = 0uLL;
  v19 = v42;
  *(v7 + 88) = v18;
  *(v7 + 72) = v19;
  v37 = 0;
  v42 = 0uLL;
  v43 = 0;
  *(v7 + 96) = v44;
  v20 = *(&v45[1] + 1);
  *(v7 + 112) = *&v45[0];
  v44 = 0uLL;
  *&v45[0] = 0;
  *(v7 + 120) = *(v45 + 8);
  *(v7 + 136) = v20;
  memset(v45 + 8, 0, 24);
  *(v7 + 144) = 0;
  *(v7 + 168) = 0;
  if (v48 == 1)
  {
    *(v7 + 144) = v46;
    *(v7 + 160) = v47;
    v47 = 0;
    v46 = 0uLL;
    *(v7 + 168) = 1;
  }

  *(v7 + 176) = v49;
  v21 = v33;
  if (v33)
  {
LABEL_29:
    v22 = v34;
    v23 = v21;
    if (v34 != v21)
    {
      do
      {
        v22 = sub_4547F0(v22 - 552);
      }

      while (v22 != v21);
      v23 = v33;
    }

    v34 = v21;
    operator delete(v23);
  }

  return sub_49AD08(v36);
}

void sub_487D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x220]);
  sub_4AE168(&STACK[0x1308]);
  sub_487EC4(&STACK[0x1338]);
  sub_49AD08(&STACK[0x1350]);
  _Unwind_Resume(a1);
}

void **sub_487EC4(void **a1)
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
        v3 = sub_4547F0(v3 - 552);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_48A200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a68 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a69);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  sub_1218EBC(&STACK[0x2B8]);
  sub_487EC4(&STACK[0x2F8]);
  sub_45B588(&STACK[0x310]);
  v70 = STACK[0x4F8];
  if (STACK[0x4F8])
  {
    STACK[0x500] = v70;
    operator delete(v70);
  }

  sub_47FADC(&STACK[0x538]);
  sub_49AD08(&STACK[0x970]);
  _Unwind_Resume(a1);
}

uint64_t sub_48A590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3)
  {
    v7 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v7 == v6)
    {
      goto LABEL_18;
    }

    if (*v7)
    {
      v8 = 0;
    }

    else
    {
      v10 = *(v7 + 8);
      v11 = vabdd_f64(v10, *a1) < 2.22044605e-16 || v10 == *a1;
      v8 = 48;
      if (!v11)
      {
        v8 = 0;
      }
    }

    v7 += v8;
    if (*(v6 - 48) != ((*(a1 + 24) - *(a1 + 16)) >> 3) - 1)
    {
LABEL_18:
      v15 = 0;
    }

    else
    {
      v12 = *(v6 - 40);
      v13 = *(a1 + 8);
      if (vabdd_f64(v12, v13) < 2.22044605e-16 || v12 == v13)
      {
        v15 = -48;
      }

      else
      {
        v15 = 0;
      }
    }

    result = sub_4A1CF4(a4);
    a4[1] = result;
    *(result - 176) = *a1;
    v16 = *(a1 + 16);
    if (*(a1 + 24) != v16)
    {
      v17 = 0;
      v18 = v15 + v6;
      do
      {
        v19 = a4[1];
        v21 = *(v19 - 152);
        v20 = *(v19 - 144);
        if (v21 >= v20)
        {
          v23 = *(v19 - 160);
          v24 = v21 - v23;
          v25 = (v21 - v23) >> 3;
          v26 = v25 + 1;
          if ((v25 + 1) >> 61)
          {
            sub_1794();
          }

          v27 = v20 - v23;
          if (v27 >> 2 > v26)
          {
            v26 = v27 >> 2;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFF8)
          {
            v28 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (!(v28 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v29 = v25;
          v30 = (8 * v25);
          v31 = *(v16 + 8 * v17);
          v32 = &v30[-v29];
          *v30 = v31;
          v22 = v30 + 1;
          memcpy(v32, v23, v24);
          *(v19 - 160) = v32;
          *(v19 - 152) = v22;
          *(v19 - 144) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v21 = *(v16 + 8 * v17);
          v22 = v21 + 8;
        }

        *(v19 - 152) = v22;
        if (v7 < v18 && *v7 == v17)
        {
          v33 = *(v7 + 8);
          v34 = a4[1];
          v35 = a4[2];
          *(v34 - 168) = v33;
          if (v34 >= v35)
          {
            v36 = sub_4A1CF4(a4);
          }

          else
          {
            *(v34 + 144) = 0u;
            *(v34 + 160) = 0u;
            *(v34 + 96) = 0u;
            *(v34 + 112) = 0u;
            *(v34 + 64) = 0u;
            *(v34 + 80) = 0u;
            *(v34 + 32) = 0u;
            *(v34 + 48) = 0u;
            *v34 = 0u;
            *(v34 + 16) = 0u;
            *(v34 + 128) = 0u;
            *(v34 + 120) = 1065353216;
            v36 = v34 + 176;
            *(v34 + 160) = 1065353216;
          }

          v7 += 48;
          a4[1] = v36;
          v37 = *(a1 + 16);
          if (v17 + 1 < (*(a1 + 24) - v37) >> 3 && (v38 = sub_48233C(a2, (v37 + 8 * v17)), v39 = v37 + 8 * (v17 + 1), __PAIR64__(*(v39 + 4), *v39) == __PAIR64__(WORD2(v38), v38)) && *(v39 + 6) == BYTE6(v38) && (v7 >= v18 || *v7 != v17))
          {
            *(a4[1] - 176) = 1.0 - v33;
          }

          else
          {
            *(a4[1] - 176) = v33;
            --v17;
          }
        }

        ++v17;
        v16 = *(a1 + 16);
      }

      while (v17 < (*(a1 + 24) - v16) >> 3);
      result = a4[1];
    }

    *(result - 168) = *(a1 + 8);
  }

  else
  {
    result = sub_4A0E48(a4, a1);
    a4[1] = result;
  }

  return result;
}

void sub_48A91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24) - v7;
  if (v8 == 8)
  {
    v9 = *v7;
    v10 = (*v7 >> 16) & 0xFFFF0000 | (*v7 << 32) | (2 * ((*v7 & 0xFF000000000000) == 0));
    v11 = sub_2B51D8(a2, *v7 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v12 = sub_30C50C(a2 + 3896, v9, 0);
      v13 = &v12[-*v12];
      if (*v13 < 5u)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v13 + 2);
        if (v14)
        {
          v14 += &v12[*&v12[v14]];
        }
      }

      v56 = v14 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v14 + ((v9 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v56 = 0;
    }

    *&v60 = v11;
    *(&v60 + 1) = v56;
    *&v61 = sub_31D7E8(a2, v9 & 0xFFFFFFFFFFFFLL, 1);
    *(&v61 + 1) = v57;
    v62 = v9;
    sub_F69060(a5, v10, &v60, a6);
    return;
  }

  v15 = v8 >> 3;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  if ((v8 >> 3) < 2)
  {
    return;
  }

  v19 = 1;
  do
  {
    v20 = *(*(a1 + 16) + 8 * v19 - 8);
    v21 = sub_2B51D8(a2, v20 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v22 = sub_30C50C(a2 + 3896, v20, 0);
      v23 = &v22[-*v22];
      if (*v23 < 5u)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(v23 + 2);
        if (v24)
        {
          v24 += &v22[*&v22[v24]];
        }
      }

      v25 = v24 + ((v20 >> 30) & 0x3FFFC) + 4 + *(v24 + ((v20 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_31D7E8(a2, v20 & 0xFFFFFFFFFFFFLL, 1);
    *&v71 = v21;
    *(&v71 + 1) = v25;
    *&v72 = v26;
    *(&v72 + 1) = v27;
    v73 = v20;
    v28 = *(*(a1 + 16) + 8 * v19);
    v29 = sub_2B51D8(a2, v28 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v30 = sub_30C50C(a2 + 3896, v28, 0);
      v31 = &v30[-*v30];
      if (*v31 < 5u)
      {
        v32 = 0;
      }

      else
      {
        v32 = *(v31 + 2);
        if (v32)
        {
          v32 += &v30[*&v30[v32]];
        }
      }

      v33 = v32 + ((v28 >> 30) & 0x3FFFC) + 4 + *(v32 + ((v28 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v33 = 0;
    }

    v34 = sub_31D7E8(a2, v28 & 0xFFFFFFFFFFFFLL, 1);
    *&v68 = v29;
    *(&v68 + 1) = v33;
    *&v69 = v34;
    *(&v69 + 1) = v35;
    v70 = v28;
    v36 = sub_3116D0(&v71);
    sub_31BA24(a2, v36, &v74, 0, 0, 0);
    if (*(a3 + 8) != 1 || (v37 = sub_2BBF84(*a3, v73 & 0xFFFFFFFFFFFFFFLL, 0), (v38 & 1) == 0))
    {
      v37 = sub_30F984(a3, &v71);
    }

    v39 = v37;
    if (*(a3 + 8) != 1 || (v40 = sub_2BBF84(*a3, v70 & 0xFFFFFFFFFFFFFFLL, 0), (v41 & 1) == 0))
    {
      v40 = sub_30F984(a3, &v68);
    }

    v42 = v40;
    if (*(a3 + 8) != 1 || (v43 = sub_2BBF84(*a3, v73 & 0xFFFFFFFFFFFFFFLL, 0), (v44 & 1) == 0))
    {
      v43 = sub_30F984(a3, &v71);
    }

    v45 = v43;
    if (*(a3 + 8) != 1 || (v46 = sub_2BBF84(*a3, v70 & 0xFFFFFFFFFFFFFFLL, 0), (v47 & 1) == 0))
    {
      v46 = sub_30F984(a3, &v68);
    }

    v48 = v42 & v39;
    if ((v42 & v39) == v42)
    {
LABEL_35:
      v49 = 0;
      if (v48 == v39)
      {
        goto LABEL_49;
      }
    }

    else
    {
      for (i = *a4; i != *(a4 + 8); i += 4)
      {
        if ((i[3] & v39) == i[2] && (i[1] & v42) == *i)
        {
          goto LABEL_35;
        }
      }

      v49 = 1;
      if (v48 == v39)
      {
LABEL_49:
        v52 = 0;
        goto LABEL_58;
      }
    }

    for (j = *a4; j != *(a4 + 8); j += 4)
    {
      if ((j[1] & v39) == *j && (j[3] & v42) == j[2])
      {
        goto LABEL_49;
      }
    }

    v53 = *(a4 + 24);
    v54 = *(a4 + 32);
    if (v53 != v54)
    {
      while ((*(v53 + 8) & v39) != *v53 || (*(v53 + 24) & v42) != *(v53 + 16))
      {
        v53 += 40;
        if (v53 == v54)
        {
          goto LABEL_57;
        }
      }
    }

    if (v53 == v54)
    {
LABEL_57:
      v52 = 1;
    }

    else
    {
      v52 = *(v53 + 32) != 0;
    }

LABEL_58:
    v60 = v71;
    v61 = v72;
    v63 = v68;
    v62 = v73;
    v64 = v69;
    v65 = v70;
    v66 = 0;
    if (v49 | v52)
    {
      v55 = 8;
    }

    else
    {
      v55 = 0;
    }

    v67 = (v45 != 0) | (2 * (v46 != 0)) | v55 | (4 * (v75 - v74 == 80)) | v67 & 0xF0;
    sub_F692F8(a5, &v60, a6);
    ++v19;
  }

  while (v15 != v19);
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }
}

void sub_48AE3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_48AE70(void **a1)
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
        v3 = sub_463370(v3 - 22);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

double sub_48AECC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v13 = v12;
  if (!sub_F63D58(v9))
  {
    v14 = sub_F63FD8(v10);
    v15 = *(v14 + 16);
    v21 = *v14;
    v22 = v15;
    v16 = *(v14 + 32);
    v17 = *(v14 + 48);
    v18 = *(v14 + 64);
    v26 = *(v14 + 80);
    v24 = v17;
    v25 = v18;
    v23 = v16;
    *(&v22 + 1) = *(v8 + 56);
    v19 = sub_45AC50(v10);
    sub_F68F20(v19, &v21);
  }

  sub_486084(v11, v8, v10);
  if (!v4 || sub_48B2F0(v11, v10, v8, v6) || sub_4867C8(v11, v10, v8))
  {
    if (v2)
    {
      sub_F8E7AC(&v21, *(v11 + 24));
    }

    sub_49CDB8(v13, v10);
  }

  else
  {
    sub_4E3D18(v13);
    sub_4E3D18((v13 + 48));
    *(v13 + 168) = 0;
    result = 0.0;
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 128) = 0u;
    *(v13 + 144) = 0;
    *(v13 + 176) = 0;
    *(v13 + 184) = 0;
  }

  return result;
}

double sub_48B0AC@<D0>(uint64_t a1@<X8>)
{
  sub_4E3D18(a1);
  sub_4E3D18((a1 + 48));
  *(a1 + 168) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return result;
}

void sub_48B108(uint64_t a1, uint64_t *a2)
{
  memset(v5, 0, sizeof(v5));
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0x8E38E38E38E38E39 * ((v2 - *a2) >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = *a2;
  v3 = a2[1];
  v8 = v5;
  while (v4 != v3)
  {
    sub_4A21A4(v4, __p);
    sub_9A5A0(&v8, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    v4 += 144;
  }

  sub_487F20();
}

void sub_48B2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_48B2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_48B2F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = a4;
  v9 = nullsub_1(a2);
  v10 = v9[1] - *v9;
  if (!v10)
  {
LABEL_22:
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v41);
    sub_4A5C(&v41, "Could not locate the user offset on the path", 44);
    if ((v51 & 0x10) != 0)
    {
      v32 = v50;
      if (v50 < v47)
      {
        v50 = v47;
        v32 = v47;
      }

      v33 = v46;
      v31 = v32 - v46;
      if (v32 - v46 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if ((v51 & 8) == 0)
      {
        v31 = 0;
        v40 = 0;
LABEL_36:
        *(&__p + v31) = 0;
        sub_7E854(&__p, 3u);
        if (v40 < 0)
        {
          operator delete(__p);
        }

        if (v49 < 0)
        {
          operator delete(v48);
        }

        std::locale::~locale(&v43);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v33 = v44;
      v31 = v45 - v44;
      if ((v45 - v44) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_42:
        sub_3244();
      }
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    v40 = v31;
    if (v31)
    {
      memmove(&__p, v33, v31);
    }

    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0xF128CFC4A33F128DLL * (v10 >> 3);
  while (1)
  {
    v14 = sub_F63CBC(a2, v11);
    v15 = sub_F6B804(v14);
    v13 = v5 - v15;
    if (v5 >= v15)
    {
      goto LABEL_6;
    }

    v16 = sub_F69D2C(v14);
    if (v16)
    {
      break;
    }

    v13 = v5;
LABEL_6:
    ++v11;
    v5 = v13;
    if (v11 == v12)
    {
      goto LABEL_22;
    }
  }

  v17 = v16;
  v18 = 0;
  while (1)
  {
    v19 = sub_F69E5C(v14, v18);
    v13 = v5 - v19;
    if (v5 < v19)
    {
      break;
    }

    ++v18;
    v5 -= v19;
    if (v17 == v18)
    {
      goto LABEL_6;
    }
  }

  v20 = *sub_73F1C(v14);
  if (v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  v22 = sub_F69DE0(v14, v18);
  v23 = *v22;
  v24 = &(*v22)[-**v22];
  if (*v24 < 9u)
  {
    v28 = 0;
    v26 = a3;
    v27 = a1;
  }

  else
  {
    v25 = *(v24 + 4);
    v26 = a3;
    v27 = a1;
    if (v25)
    {
      v28 = *&v23[v25];
      if (v28)
      {
        v29 = v5 / v28 * 1000000000.0;
        if (v29 >= 0.0)
        {
          if (v29 < 4.50359963e15)
          {
            v30 = (v29 + v29) + 1;
LABEL_45:
            v29 = (v30 >> 1);
          }
        }

        else if (v29 > -4.50359963e15)
        {
          v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
          goto LABEL_45;
        }

        v34 = 1000000000.0;
        if (v29 <= 1000000000.0)
        {
          v34 = v29;
        }

        v35 = v29 < 0.0;
        v36 = 0.0;
        if (!v35)
        {
          v36 = v34;
        }

        v28 = v36;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  v37 = v28 + v21;
  if (v37 >= 0x3B9ACA00)
  {
    v38 = 1000000000;
  }

  else
  {
    v38 = v37;
  }

  sub_48B780(v27, a2, v26, v11, v18, v38);
  return 1;
}

void sub_48B734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_48B780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  v12 = *nullsub_1(a2);
  v13 = nullsub_1(a2);
  LODWORD(v88) = *sub_73F1C(*v13);
  LOBYTE(v91) = 0;
  v90 = 0uLL;
  v89 = 0;
  *(&v91 + 1) = 0x3FF0000000000000;
  v92[0] = 1;
  *&v92[8] = 0;
  *&v92[16] = 0;
  __p[0] = 2359296000;
  *(__p + 7) = 0;
  sub_F68F20(v12, &v88);
  v14 = nullsub_1(a2 + 48);
  v15 = *(nullsub_1(a2 + 48) + 8);
  v16 = sub_45AC50(a2);
  v17 = sub_45AC50(a2);
  v85 = a4;
  v18 = 552 * a4;
  sub_49BC88(v14, v15, v16, (v17 + v18), 0xF128CFC4A33F128DLL * ((v17 + v18 - v16) >> 3));
  v19 = nullsub_1(a2 + 48);
  v20 = v19;
  v21 = v19[1];
  if (v21 >= v19[2])
  {
    v22 = sub_49B658(v19);
  }

  else
  {
    sub_F68960(v19[1]);
    v22 = v21 + 552;
    v20[1] = v21 + 552;
  }

  v20[1] = v22;
  v23 = nullsub_1(a2);
  v24 = sub_45AC50(a2);
  v25 = (sub_45AC50(a2) + v18);
  if (v25 != v24)
  {
    v26 = *(v23 + 8);
    if (v25 != v26)
    {
      do
      {
        sub_49C304(v24, v25);
        v25 = (v25 + 552);
        v24 += 552;
      }

      while (v25 != v26);
      v26 = *(v23 + 8);
    }

    while (v26 != v24)
    {
      v26 -= 552;
      sub_4547F0(v26);
    }

    *(v23 + 8) = v24;
  }

  v84 = a1;
  v27 = 24 * v85;
  if (v85)
  {
    v28 = *(a2 + 96);
    v29 = *(a2 + 104);
    if (v28 + v27 == v29)
    {
      if (v29 == v28)
      {
LABEL_23:
        *(a2 + 104) = v28;
        goto LABEL_24;
      }
    }

    else
    {
      do
      {
        v31 = *v28;
        if (*v28)
        {
          *(v28 + 8) = v31;
          operator delete(v31);
          *v28 = 0;
          *(v28 + 8) = 0;
          *(v28 + 16) = 0;
        }

        v30 = (v28 + v27);
        *v28 = *(v28 + 24 * v85);
        *(v28 + 16) = *(v28 + v27 + 16);
        *v30 = 0;
        v30[1] = 0;
        v30[2] = 0;
        v28 += 24;
      }

      while (v28 + v27 != v29);
      v29 = *(a2 + 104);
      if (v29 == v28)
      {
        goto LABEL_23;
      }
    }

    v32 = v29;
    do
    {
      v34 = *(v32 - 24);
      v32 -= 24;
      v33 = v34;
      if (v34)
      {
        *(v29 - 16) = v33;
        operator delete(v33);
      }

      v29 = v32;
    }

    while (v32 != v28);
    goto LABEL_23;
  }

LABEL_24:
  v35 = *nullsub_1(a2);
  v36 = (*(nullsub_1(a2 + 48) + 8) - 552);
  v37 = *(a2 + 96);
  if (a5)
  {
    v38 = sub_5FC64(v35);
    v39 = sub_5FC64(v35);
    sub_F6B080(v36, v38, v39 + 88 * a5);
    if (a5 + 1 == sub_F69D2C(v35))
    {
      goto LABEL_26;
    }

LABEL_29:
    v46 = sub_5FC64(v35);
    v47 = sub_5FC64(v35);
    sub_F6B74C(v35, v46, (v47 + 88 * a5), 1);
    if (!a5)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v43 = sub_F695C8(v35);
  v44 = sub_F69654(v35);
  v45 = sub_F692C8(v35, 0);
  sub_F69060(v36, v43, v44, v45);
  if (sub_F69D2C(v35) != 1)
  {
    goto LABEL_29;
  }

LABEL_26:
  v40 = sub_F69610(v35);
  v41 = sub_F6966C(v35);
  v42 = sub_F692C8(v35, a5);
  sub_F69060(v35, v40, v41, v42);
  if (!a5)
  {
    goto LABEL_33;
  }

LABEL_30:
  v49 = *v37;
  v48 = v37[1];
  v50 = *v37 + 4 * a5;
  v51 = v48 - v50;
  if (v48 != v50)
  {
    memmove(*v37, v50, v48 - v50);
  }

  v37[1] = &v49[v51];
LABEL_33:
  v102 = 0;
  v103 = 0;
  v105 = 0;
  v104 = 0;
  v106 = 0x3FF0000000000000;
  v107 = 1;
  v108 = 0;
  v109 = 0;
  v110 = 0x18CA00000;
  v111 = 0;
  v112 = 0;
  v101 = a6;
  if (sub_F695B8(v35))
  {
    v52 = sub_F69058(v35);
    if (v101 > *v52)
    {
      v101 = *sub_F69058(v35);
    }
  }

  v53 = sub_73F1C(v35);
  sub_F68F20(v36, v53);
  sub_F6901C(v36, &v101);
  v104 = *(a3 + 56);
  sub_F68F20(v35, &v101);
  v54 = *(a2 + 120);
  v55 = 480 * v85;
  if (480 * v85)
  {
    v56 = *(a2 + 128);
    if ((v54 + v55) != v56)
    {
      do
      {
        sub_49C5C0(v54, (v54 + v55));
        v54 += 240;
      }

      while ((v54 + v55) != v56);
      v56 = *(a2 + 128);
    }

    while (v56 != v54)
    {
      v56 -= 30;
      sub_49AEC0(v56);
    }

    *(a2 + 128) = v54;
    v54 = *(a2 + 120);
  }

  v57 = *(v54 + 176);
  v58 = sub_F69654(v35);
  v60 = (*v58 - **v58);
  v61 = 0.0;
  if (*v60 >= 9u)
  {
    v62 = v60[4];
    if (v62)
    {
      LODWORD(v61) = *(*v58 + v62);
      v61 = *&v61;
    }
  }

  LODWORD(v59) = v101;
  v63 = v61 * (v59 / 1000000000.0);
  if (v63 >= 0.0)
  {
    if (v63 >= 4.50359963e15)
    {
      goto LABEL_52;
    }

    v64 = (v63 + v63) + 1;
  }

  else
  {
    if (v63 <= -4.50359963e15)
    {
      goto LABEL_52;
    }

    v64 = (v63 + v63) - 1 + (((v63 + v63) - 1) >> 63);
  }

  v63 = (v64 >> 1);
LABEL_52:
  *(v57 + 24) = v63;
  v65 = sub_F69654(v35);
  *(v57 + 32) = *(v65 + 32) | (*(v65 + 36) << 32);
  *(v57 + 40) = *(sub_F69654(v35) + 38) | 0x100;
  *(v54 + 224) = 1;
  if (sub_E67BDC(a3))
  {
    *v54 = *a3;
    v66 = *(a3 + 16);
    v67 = *(a3 + 32);
    v68 = *(a3 + 48);
    *(v54 + 63) = *(a3 + 63);
    *(v54 + 32) = v67;
    *(v54 + 48) = v68;
    *(v54 + 16) = v66;
    if (v54 != a3)
    {
      sub_146EC((v54 + 72), *(a3 + 72), *(a3 + 80), (*(a3 + 80) - *(a3 + 72)) >> 2);
    }

    v69 = *(a3 + 96);
    *(v54 + 112) = *(a3 + 112);
    *(v54 + 96) = v69;
    v70 = *(a3 + 120);
    *(v54 + 136) = *(a3 + 136);
    *(v54 + 120) = v70;
    sub_3E428((v54 + 152), a3 + 152);
  }

  else
  {
    v71 = sub_3AF6B4(*(v84 + 24));
    v72 = sub_F69654(v35);
    v73 = sub_73F1C(v35);
    v86 = sub_48CA24(v71, v72, *v73);
    v87 = v74;
    sub_E6793C(&v88, &v86);
    v75 = v88;
    *(v54 + 8) = v89;
    *v54 = v75;
    v76 = v90;
    v77 = v91;
    v78 = *v92;
    *(v54 + 63) = *&v92[15];
    *(v54 + 32) = v77;
    *(v54 + 48) = v78;
    *(v54 + 16) = v76;
    v79 = *(v54 + 72);
    if (v79)
    {
      *(v54 + 80) = v79;
      operator delete(v79);
      *(v54 + 72) = 0;
      *(v54 + 80) = 0;
      *(v54 + 88) = 0;
    }

    v80 = *(v54 + 152);
    *(v54 + 72) = *__p;
    *(v54 + 88) = v94;
    __p[0] = 0;
    __p[1] = 0;
    v94 = 0;
    v81 = v96;
    *(v54 + 96) = v95;
    *(v54 + 112) = v81;
    *(v54 + 120) = v97;
    *(v54 + 136) = v98;
    if (v80)
    {
      operator delete(v80);
      *(v54 + 152) = 0;
      *(v54 + 160) = 0;
      *(v54 + 168) = 0;
      v80 = __p[0];
    }

    *(v54 + 152) = v99;
    *(v54 + 160) = v100;
    v99 = 0;
    v100 = 0uLL;
    if (v80)
    {
      __p[1] = v80;
      operator delete(v80);
    }
  }

  if (*(a2 + 168) == 1 && v85)
  {
    v82 = *(a2 + 144);
    for (i = *(a2 + 152); v82 + v27 != i; v82 += 24)
    {
      *v82 = *(v82 + 24 * v85);
      *(v82 + 8) = *(v82 + v27 + 8);
      *(v82 + 16) = *(v82 + v27 + 16);
    }

    *(a2 + 152) = v82;
  }
}

void sub_48C124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_48C14C(uint64_t a1)
{
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  sub_4D0560();
  v3 = v2;
  v5 = v4;
  sub_F68FDC();
  sub_48C354(v3, v5, v6, v7, v8);
  sub_48C4E8(a1);
}

void sub_48C2EC(_Unwind_Exception *a1, uint64_t a2, char a3, ...)
{
  va_start(va, a3);
  sub_48C8F4(v3);
  if (a3)
  {
    sub_49AEC0(va);
    sub_11BD8(v4 - 112);
    _Unwind_Resume(a1);
  }

  sub_11BD8(v4 - 112);
  _Unwind_Resume(a1);
}

void *sub_48C354(void *a1, unint64_t a2, void *a3, unint64_t a4, void *a5)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v11 = sub_F69D2C(a1);
        v12 = sub_F69D2C(a3);
        if (a2 >= v11 || a4 >= v12)
        {
          if (a2 < v11 == a4 < v12)
          {
            return a5;
          }
        }

        else
        {
          v13 = sub_F69DE0(a1, a2);
          if (v13 == sub_F69DE0(a3, a4))
          {
            return a5;
          }
        }

        v10 = sub_F69DE0(a1, a2);
        v17 = *(v10 + 32) | (*(v10 + 36) << 32);
        sub_49B7A4(a5, &v17);
        ++a2;
      }
    }

    while (a2 < sub_F69D2C(a1))
    {
      v14 = sub_F69DE0(a1, a2);
      v17 = *(v14 + 32) | (*(v14 + 36) << 32);
      sub_49B7A4(a5, &v17);
      ++a2;
    }
  }

  else if (a3)
  {
    while (a4 < sub_F69D2C(a3))
    {
      v15 = sub_F69DE0(0, a2);
      v17 = *(v15 + 32) | (*(v15 + 36) << 32);
      sub_49B7A4(a5, &v17);
      ++a2;
    }
  }

  return a5;
}

void sub_48C6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_48C9A4(&a11);
  sub_44D36C(&a37);
  sub_11ABFD0(&a14);
  _Unwind_Resume(a1);
}

void sub_48C70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47)
{
  if (__p)
  {
    a47 = __p;
    operator delete(__p);
    sub_11ABFD0(&a14);
    _Unwind_Resume(a1);
  }

  sub_11ABFD0(&a14);
  _Unwind_Resume(a1);
}

void *sub_48C748(void *result, unint64_t a2)
{
  if (0x4EC4EC4EC4EC4EC5 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x276276276276277)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void **sub_48C8F4(void **a1)
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
        v6 = *(v3 - 3);
        if (v6)
        {
          v7 = *(v3 - 2);
          v5 = *(v3 - 3);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 9);
              v7 -= 4;
              if (v8 < 0)
              {
                operator delete(*v7);
              }
            }

            while (v7 != v6);
            v5 = *(v3 - 3);
          }

          *(v3 - 2) = v6;
          operator delete(v5);
        }

        v3 -= 104;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_48C9A4(void **a1)
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
          operator delete(v5);
        }

        v6 = *(v3 - 13);
        if (v6)
        {
          *(v3 - 12) = v6;
          operator delete(v6);
        }

        v3 -= 176;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

unint64_t sub_48CA24(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_2B7A20(a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, &v8);
  v4 = v9;
  if (v9 == v10)
  {
    v6 = 0xFFFFFFFF00000000;
    v5 = 0xFFFFFFFFLL;
    if (!v9)
    {
      return v5 | v6;
    }

    goto LABEL_9;
  }

  sub_31BF20(&v8, v11);
  sub_31214(v11, 0, &v12, a3 / 1000000000.0);
  v5 = *(v13 - 12);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  v6 = v5 & 0xFFFFFFFF00000000;
  v4 = v9;
  v5 = v5;
  if (v9)
  {
LABEL_9:
    v10 = v4;
    operator delete(v4);
  }

  return v5 | v6;
}

void sub_48CB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    v16 = a10;
    if (!a10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void sub_48CB5C(uint64_t a1, uint64_t a2)
{
  v4[23] = 15;
  strcpy(v4, "UserPathDecoder");
  __p[0] = 0;
  __p[1] = 0;
  v3 = 0;
  sub_3AEC94(a2, v4, __p);
  sub_4932A4();
}

void sub_48CF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_5BF68((v25 - 72));
  sub_21DB4B4(v24);
  _Unwind_Resume(a1);
}

void sub_48CF48(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_1A104(&a22);
  JUMPOUT(0x48CF84);
}

void sub_48CFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v22 = v19[9];
  if (v22)
  {
    v19[10] = v22;
    operator delete(v22);
  }

  v23 = *v20;
  if (*v20)
  {
    v19[7] = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_48D010()
{
  v0 = __chkstk_darwin();
  v3 = 17;
  strcpy(__p, "RequestWithGeoIds");
  v1 = **(v0 + 96);
  if (v1)
  {
    sub_499F74(v4, v1);
  }

  else
  {
    sub_2C0888(v4);
  }

  sub_7BDA0(1, __p, v4);
  sub_2C1D4C(v4);
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  sub_4E3D18(v5);
  sub_4E3D18(v6);
  v8 = 0;
  memset(&v6[3], 0, 48);
  LOBYTE(v7) = 0;
  v10 = 0;
  v9 = 0;
  sub_4A2FC8(v4, *(v0 + 24));
}

void sub_48D494(_Unwind_Exception *a1)
{
  sub_454784(v1);
  sub_4870F0(&STACK[0x268]);
  sub_49AD08(&STACK[0x1350]);
  _Unwind_Resume(a1);
}

void *sub_48D538(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_3AF6B4(*(a1 + 24));
  v6 = sub_45AC50(a3);
  if (v6 != sub_588D8(a3))
  {
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v93 = vnegq_f64(v37);
    do
    {
      v42 = a3[16];
      if (v42 >= a3[17])
      {
        v43 = sub_49C7F4(a3 + 15);
      }

      else
      {
        *(v42 + 8) = 0u;
        *(v42 + 24) = 0u;
        *(v42 + 40) = 0u;
        *(v42 + 56) = 0u;
        *(v42 + 72) = 0u;
        *(v42 + 88) = 0u;
        *(v42 + 104) = 0u;
        *v42 = -1;
        *(v42 + 8) = 0x7FFFFFFF;
        *(v42 + 16) = -1;
        *(v42 + 24) = -1;
        *(v42 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v42 + 48) = -1935635296;
        *(v42 + 56) = 0;
        *(v42 + 63) = 0;
        *(v42 + 72) = 0;
        *(v42 + 80) = 0;
        *(v42 + 88) = 0;
        *(v42 + 96) = 0;
        *(v42 + 104) = 0x7FFFFFFFFFFFFFFFLL;
        *(v42 + 112) = 100;
        *(v42 + 120) = 0;
        *(v42 + 128) = 0;
        *(v42 + 136) = v93;
        *(v42 + 216) = 0;
        *(v42 + 200) = 0u;
        *(v42 + 184) = 0u;
        *(v42 + 168) = 0u;
        *(v42 + 152) = 0u;
        *(v42 + 224) = 1;
        *(v42 + 236) = 0;
        *(v42 + 228) = 0;
        v43 = v42 + 240;
      }

      a3[16] = v43;
      if (v6 == sub_45AC50(a3))
      {
        v44 = 1;
      }

      else
      {
        v44 = 3;
      }

      *(v43 - 16) = v44;
      v45 = sub_F69654(v6);
      v47 = (*v45 - **v45);
      v48 = 0.0;
      if (*v47 >= 9u)
      {
        v49 = v47[4];
        if (v49)
        {
          LODWORD(v46) = *(*v45 + v49);
          v48 = v46;
        }
      }

      LODWORD(v50) = *sub_73F1C(v6);
      v51 = v48 * (v50 / 1000000000.0);
      v52 = (v51 + v51);
      v53 = ((v52 - 1) / 2);
      if (v51 <= -4.50359963e15)
      {
        v53 = v51;
      }

      v54 = ((v52 + 1) >> 1);
      if (v51 >= 4.50359963e15)
      {
        v54 = v51;
      }

      if (v51 >= 0.0)
      {
        v55 = v54;
      }

      else
      {
        v55 = v53;
      }

      *&v94 = v55;
      v56 = sub_F69654(v6);
      v57 = *(v56 + 32) | (*(v56 + 36) << 32);
      v108 = 0;
      v109[0] = v57;
      *&v100 = -1;
      DWORD2(v100) = 0x7FFFFFFF;
      v58 = sub_F69654(v6);
      v59 = *(v58 + 38);
      LOBYTE(v107) = *(v58 + 38);
      v60 = *(v43 - 56);
      if (v60 >= *(v43 - 48))
      {
        v64 = sub_49CB7C(v43 - 64, v109, &v100, &v94, &v108, &v107);
      }

      else
      {
        v61 = v109[0];
        v62 = v94;
        *v60 = v108;
        v63 = DWORD2(v100);
        *(v60 + 8) = v100;
        *(v60 + 16) = v63;
        *(v60 + 24) = v62;
        *(v60 + 32) = v61;
        *(v60 + 40) = v59 | 0x100;
        *(v60 + 42) = 257;
        *(v60 + 48) = 0;
        *(v60 + 56) = 0;
        *(v60 + 64) = 0;
        *(v60 + 72) = 2139095039;
        *(v60 + 88) = 0;
        *(v60 + 96) = 0;
        *(v60 + 80) = 0;
        v64 = v60 + 104;
      }

      *(v43 - 56) = v64;
      v65 = sub_F69654(v6);
      v66 = sub_73F1C(v6);
      *(v43 - 240) = sub_48CA24(v5, v65, *v66);
      *(v43 - 232) = v67;
      if (v6 == sub_45AC50(a3) && sub_E67BDC(a2))
      {
        v68 = v43 - 240;
        *v68 = *a2;
        v69 = *(a2 + 16);
        v70 = *(a2 + 32);
        v71 = *(a2 + 48);
        *(v68 + 63) = *(a2 + 63);
        *(v68 + 32) = v70;
        *(v68 + 48) = v71;
        *(v68 + 16) = v69;
        if (v43 - 240 != a2)
        {
          sub_146EC((v43 - 168), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
        }

        v72 = *(a2 + 96);
        *(v43 - 128) = *(a2 + 112);
        *(v43 - 144) = v72;
        v73 = *(a2 + 120);
        *(v43 - 104) = *(a2 + 136);
        *(v43 - 120) = v73;
        sub_3E428((v43 - 88), a2 + 152);
      }

      v74 = a3[16];
      if (v74 >= a3[17])
      {
        v75 = sub_49C7F4(a3 + 15);
      }

      else
      {
        *(v74 + 8) = 0u;
        *(v74 + 24) = 0u;
        *(v74 + 40) = 0u;
        *(v74 + 56) = 0u;
        *(v74 + 72) = 0u;
        *(v74 + 88) = 0u;
        *(v74 + 104) = 0u;
        *v74 = -1;
        *(v74 + 8) = 0x7FFFFFFF;
        *(v74 + 16) = -1;
        *(v74 + 24) = -1;
        *(v74 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v74 + 48) = -1935635296;
        *(v74 + 56) = 0;
        *(v74 + 63) = 0;
        *(v74 + 72) = 0;
        *(v74 + 80) = 0;
        *(v74 + 88) = 0;
        *(v74 + 96) = 0;
        *(v74 + 104) = 0x7FFFFFFFFFFFFFFFLL;
        *(v74 + 112) = 100;
        *(v74 + 120) = 0;
        *(v74 + 128) = 0;
        *(v74 + 136) = v93;
        *(v74 + 216) = 0;
        *(v74 + 200) = 0u;
        *(v74 + 184) = 0u;
        *(v74 + 168) = 0u;
        *(v74 + 152) = 0u;
        *(v74 + 224) = 1;
        *(v74 + 236) = 0;
        *(v74 + 228) = 0;
        v75 = v74 + 240;
      }

      a3[16] = v75;
      if (v6 == sub_588D8(a3) - 552)
      {
        v76 = 2;
      }

      else
      {
        v76 = 3;
      }

      *(v75 - 16) = v76;
      v77 = sub_F6C814(v6);
      v79 = (*v77 - **v77);
      v80 = 0.0;
      if (*v79 >= 9u)
      {
        v81 = v79[4];
        if (v81)
        {
          LODWORD(v78) = *(*v77 + v81);
          v80 = v78;
        }
      }

      LODWORD(v82) = *sub_F69058(v6);
      v83 = v80 * (v82 / 1000000000.0);
      if (v83 >= 0.0)
      {
        if (v83 < 4.50359963e15)
        {
          v84 = (v83 + v83) + 1;
          goto LABEL_54;
        }
      }

      else if (v83 > -4.50359963e15)
      {
        v84 = (v83 + v83) - 1 + (((v83 + v83) - 1) >> 63);
LABEL_54:
        v83 = (v84 >> 1);
      }

      v109[0] = v83;
      v85 = sub_F6C814(v6);
      v86 = *(v85 + 32) | (*(v85 + 36) << 32);
      v107 = 0;
      v108 = v86;
      *&v100 = -1;
      DWORD2(v100) = 0x7FFFFFFF;
      v87 = sub_F6C814(v6);
      v88 = *(v87 + 38);
      v106 = *(v87 + 38);
      v89 = *(v75 - 56);
      if (v89 >= *(v75 - 48))
      {
        v38 = sub_49CB7C(v75 - 64, &v108, &v100, v109, &v107, &v106);
      }

      else
      {
        v90 = v108;
        v91 = v109[0];
        *v89 = v107;
        v92 = DWORD2(v100);
        *(v89 + 8) = v100;
        *(v89 + 16) = v92;
        *(v89 + 24) = v91;
        *(v89 + 32) = v90;
        *(v89 + 40) = v88 | 0x100;
        *(v89 + 42) = 257;
        *(v89 + 48) = 0;
        *(v89 + 56) = 0;
        *(v89 + 64) = 0;
        *(v89 + 72) = 2139095039;
        *(v89 + 88) = 0;
        *(v89 + 96) = 0;
        *(v89 + 80) = 0;
        v38 = v89 + 104;
      }

      *(v75 - 56) = v38;
      v39 = sub_F6C814(v6);
      v40 = sub_F69058(v6);
      *(v75 - 240) = sub_48CA24(v5, v39, *v40);
      *(v75 - 232) = v41;
      v6 += 552;
    }

    while (v6 != sub_588D8(a3));
  }

  result = nullsub_1(a3);
  v8 = result[1];
  v9 = v8 - *result;
  if (v8 != *result)
  {
    v10 = *nullsub_1(a3);
    v11 = sub_73F1C(v10);
    v12 = *(v11 + 80);
    v14 = *(v11 + 32);
    v13 = *(v11 + 48);
    v104 = *(v11 + 64);
    v15 = *(v11 + 16);
    v100 = *v11;
    v101 = v15;
    v105 = v12;
    v102 = v14;
    v103 = v13;
    HIDWORD(v104) = 1;
    sub_F68F20(v10, &v100);
    v16 = sub_F69058(v10);
    v17 = *(v16 + 16);
    v94 = *v16;
    v95 = v17;
    v19 = *(v16 + 48);
    v18 = *(v16 + 64);
    v20 = *(v16 + 32);
    v99 = *(v16 + 80);
    v97 = v19;
    v98 = v18;
    v96 = v20;
    v21 = sub_F63FF4(a3) == 1 ? 2 : 4;
    HIDWORD(v98) = v21;
    result = sub_F6901C(v10, &v94);
    if (v9 != 552)
    {
      v22 = 0xF128CFC4A33F128DLL * (v9 >> 3);
      v23 = 1;
      v24 = 552;
      do
      {
        v25 = *nullsub_1(a3);
        v26 = sub_73F1C(v25 + v24);
        v27 = *(v26 + 80);
        v29 = *(v26 + 32);
        v28 = *(v26 + 48);
        v104 = *(v26 + 64);
        v30 = *(v26 + 16);
        v100 = *v26;
        v101 = v30;
        v105 = v27;
        v102 = v29;
        v103 = v28;
        HIDWORD(v104) = 4;
        sub_F68F20(v25 + v24, &v100);
        v31 = sub_F69058(v25 + v24);
        v32 = *(v31 + 16);
        v94 = *v31;
        v95 = v32;
        v34 = *(v31 + 48);
        v33 = *(v31 + 64);
        v35 = *(v31 + 32);
        v99 = *(v31 + 80);
        v97 = v34;
        v98 = v33;
        v96 = v35;
        if (v23 == sub_F63FF4(a3) - 1)
        {
          v36 = 2;
        }

        else
        {
          v36 = 4;
        }

        HIDWORD(v98) = v36;
        result = sub_F6901C(v25 + v24, &v94);
        ++v23;
        v24 += 552;
      }

      while (v22 != v23);
    }
  }

  return result;
}

BOOL sub_48DC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_E67BDC(a3))
  {
    return 1;
  }

  v4 = sub_45AC50(a2);
  if (v4 != sub_588D8(a2))
  {
    sub_4934F4(a1);
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v12);
    sub_4A5C(&v12, "Could not locate the user on the path", 37);
    if ((v22 & 0x10) != 0)
    {
      v7 = v21;
      if (v21 < v18)
      {
        v21 = v18;
        v7 = v18;
      }

      v8 = v17;
      v6 = v7 - v17;
      if (v7 - v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v22 & 8) == 0)
      {
        v6 = 0;
        v11 = 0;
LABEL_16:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 3u);
        if (v11 < 0)
        {
          operator delete(__dst);
        }

        if (v20 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v14);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v8 = v15;
      v6 = v16 - v15;
      if ((v16 - v15) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v11 = v6;
    if (v6)
    {
      memmove(&__dst, v8, v6);
    }

    goto LABEL_16;
  }

  return result;
}

void sub_48E440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1959728(&a22);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a22);
  _Unwind_Resume(a1);
}

void sub_48E518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_48E590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_48E5A4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v27 = 20;
  strcpy(__p, "RequestWithZilchPath");
  v8 = **(v0 + 96);
  if (v8)
  {
    sub_499F74(v28, v8);
  }

  else
  {
    sub_2C0888(v28);
  }

  sub_7BDA0(1, __p, v28);
  sub_2C1D4C(v28);
  if (v27 < 0)
  {
    operator delete(*__p);
  }

  v25 = v2;
  sub_4E3D18(v36);
  sub_4E3D18(&v40);
  v48 = 0;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  LOBYTE(v46) = 0;
  v49 = 0uLL;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  v9 = *v4;
  if (*v4 != v4[1])
  {
    v10 = *(v9 + 23);
    if (v10 < 0)
    {
      v11 = *v9;
      v10 = *(v9 + 8);
    }

    else
    {
      v11 = *v4;
    }

    sub_120D19C(&v32, v11, v10);
    sub_120B450();
  }

  sub_F63300(v28, &v33);
  v12 = v36[0];
  if (v36[0])
  {
    v13 = v36[1];
    v14 = v36[0];
    if (v36[1] != v36[0])
    {
      do
      {
        v13 = sub_4547F0(v13 - 552);
      }

      while (v13 != v12);
      v14 = v36[0];
    }

    v36[1] = v12;
    operator delete(v14);
  }

  *v36 = *v28;
  v37 = v29;
  v29 = 0;
  v28[1] = 0;
  v28[0] = 0;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
    v38 = v30;
    v15 = v28[0];
    v39 = v31;
    HIBYTE(v31) = 0;
    LOBYTE(v30) = 0;
    if (v28[0])
    {
      v16 = v28[1];
      v17 = v28[0];
      if (v28[1] != v28[0])
      {
        do
        {
          v16 = sub_4547F0(v16 - 552);
        }

        while (v16 != v15);
        v17 = v28[0];
      }

      v28[1] = v15;
      operator delete(v17);
    }
  }

  else
  {
    v38 = v30;
    v39 = v31;
  }

  sub_48D538(v5, v25, v36);
  if (!sub_48DC7C(v5, v36, v25))
  {
    sub_4E3D18(v7);
    sub_4E3D18((v7 + 48));
    *(v7 + 168) = 0;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0;
    *(v7 + 176) = 0;
    *(v7 + 184) = 0;
    v21 = v33;
    if (!v33)
    {
      return sub_49AD08(v36);
    }

    goto LABEL_29;
  }

  *v7 = *v36;
  *(v7 + 16) = v37;
  v36[1] = 0;
  v36[0] = 0;
  *(v7 + 24) = v38;
  *(v7 + 40) = v39;
  v38 = 0uLL;
  v39 = 0;
  *(v7 + 48) = v40;
  v18 = v43;
  *(v7 + 64) = v41;
  v41 = 0;
  v40 = 0uLL;
  v19 = v42;
  *(v7 + 88) = v18;
  *(v7 + 72) = v19;
  v37 = 0;
  v42 = 0uLL;
  v43 = 0;
  *(v7 + 96) = v44;
  v20 = *(&v45[1] + 1);
  *(v7 + 112) = *&v45[0];
  v44 = 0uLL;
  *&v45[0] = 0;
  *(v7 + 120) = *(v45 + 8);
  *(v7 + 136) = v20;
  memset(v45 + 8, 0, 24);
  *(v7 + 144) = 0;
  *(v7 + 168) = 0;
  if (v48 == 1)
  {
    *(v7 + 144) = v46;
    *(v7 + 160) = v47;
    v47 = 0;
    v46 = 0uLL;
    *(v7 + 168) = 1;
  }

  *(v7 + 176) = v49;
  v21 = v33;
  if (v33)
  {
LABEL_29:
    v22 = v34;
    v23 = v21;
    if (v34 != v21)
    {
      do
      {
        v22 = sub_4547F0(v22 - 552);
      }

      while (v22 != v21);
      v23 = v33;
    }

    v34 = v21;
    operator delete(v23);
  }

  return sub_49AD08(v36);
}

void sub_48F1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&STACK[0x220]);
  sub_4AE168(&STACK[0x1308]);
  sub_487EC4(&STACK[0x1338]);
  sub_49AD08(&STACK[0x1350]);
  _Unwind_Resume(a1);
}

void sub_4915FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a68 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a69);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  sub_1218EBC(&STACK[0x2B8]);
  sub_487EC4(&STACK[0x2F8]);
  sub_45B588(&STACK[0x310]);
  v70 = STACK[0x4F8];
  if (STACK[0x4F8])
  {
    STACK[0x500] = v70;
    operator delete(v70);
  }

  sub_47FF64(&STACK[0x538]);
  sub_49AD08(&STACK[0x970]);
  _Unwind_Resume(a1);
}

uint64_t sub_49198C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3)
  {
    v7 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v7 == v6)
    {
      goto LABEL_18;
    }

    if (*v7)
    {
      v8 = 0;
    }

    else
    {
      v10 = *(v7 + 8);
      v11 = vabdd_f64(v10, *a1) < 2.22044605e-16 || v10 == *a1;
      v8 = 48;
      if (!v11)
      {
        v8 = 0;
      }
    }

    v7 += v8;
    if (*(v6 - 48) != ((*(a1 + 24) - *(a1 + 16)) >> 3) - 1)
    {
LABEL_18:
      v15 = 0;
    }

    else
    {
      v12 = *(v6 - 40);
      v13 = *(a1 + 8);
      if (vabdd_f64(v12, v13) < 2.22044605e-16 || v12 == v13)
      {
        v15 = -48;
      }

      else
      {
        v15 = 0;
      }
    }

    result = sub_4A1CF4(a4);
    a4[1] = result;
    *(result - 176) = *a1;
    v16 = *(a1 + 16);
    if (*(a1 + 24) != v16)
    {
      v17 = 0;
      v18 = v15 + v6;
      do
      {
        v19 = a4[1];
        v21 = *(v19 - 152);
        v20 = *(v19 - 144);
        if (v21 >= v20)
        {
          v23 = *(v19 - 160);
          v24 = v21 - v23;
          v25 = (v21 - v23) >> 3;
          v26 = v25 + 1;
          if ((v25 + 1) >> 61)
          {
            sub_1794();
          }

          v27 = v20 - v23;
          if (v27 >> 2 > v26)
          {
            v26 = v27 >> 2;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFF8)
          {
            v28 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (!(v28 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v29 = v25;
          v30 = (8 * v25);
          v31 = *(v16 + 8 * v17);
          v32 = &v30[-v29];
          *v30 = v31;
          v22 = v30 + 1;
          memcpy(v32, v23, v24);
          *(v19 - 160) = v32;
          *(v19 - 152) = v22;
          *(v19 - 144) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v21 = *(v16 + 8 * v17);
          v22 = v21 + 8;
        }

        *(v19 - 152) = v22;
        if (v7 < v18 && *v7 == v17)
        {
          v33 = *(v7 + 8);
          v34 = a4[1];
          v35 = a4[2];
          *(v34 - 168) = v33;
          if (v34 >= v35)
          {
            v36 = sub_4A1CF4(a4);
          }

          else
          {
            *(v34 + 144) = 0u;
            *(v34 + 160) = 0u;
            *(v34 + 96) = 0u;
            *(v34 + 112) = 0u;
            *(v34 + 64) = 0u;
            *(v34 + 80) = 0u;
            *(v34 + 32) = 0u;
            *(v34 + 48) = 0u;
            *v34 = 0u;
            *(v34 + 16) = 0u;
            *(v34 + 128) = 0u;
            *(v34 + 120) = 1065353216;
            v36 = v34 + 176;
            *(v34 + 160) = 1065353216;
          }

          v7 += 48;
          a4[1] = v36;
          v37 = *(a1 + 16);
          if (v17 + 1 < (*(a1 + 24) - v37) >> 3 && (v38 = sub_4834B0(a2, (v37 + 8 * v17)), v39 = v37 + 8 * (v17 + 1), __PAIR64__(*(v39 + 4), *v39) == __PAIR64__(WORD2(v38), v38)) && *(v39 + 6) == BYTE6(v38) && (v7 >= v18 || *v7 != v17))
          {
            *(a4[1] - 176) = 1.0 - v33;
          }

          else
          {
            *(a4[1] - 176) = v33;
            --v17;
          }
        }

        ++v17;
        v16 = *(a1 + 16);
      }

      while (v17 < (*(a1 + 24) - v16) >> 3);
      result = a4[1];
    }

    *(result - 168) = *(a1 + 8);
  }

  else
  {
    result = sub_4A0E48(a4, a1);
    a4[1] = result;
  }

  return result;
}

void sub_491D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24) - v7;
  if (v8 == 8)
  {
    v9 = *v7;
    v10 = (*v7 >> 16) & 0xFFFF0000 | (*v7 << 32) | (2 * ((*v7 & 0xFF000000000000) == 0));
    v11 = sub_2B51D8(a2, *v7 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v12 = sub_30C50C(a2 + 3896, v9, 0);
      v13 = &v12[-*v12];
      if (*v13 < 5u)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v13 + 2);
        if (v14)
        {
          v14 += &v12[*&v12[v14]];
        }
      }

      v55 = v14 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v14 + ((v9 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v55 = 0;
    }

    *&v59 = v11;
    *(&v59 + 1) = v55;
    *&v60 = sub_31D7E8(a2, v9 & 0xFFFFFFFFFFFFLL, 1);
    *(&v60 + 1) = v56;
    v61 = v9;
    sub_F6C100(a5, v10, &v59, a6);
    return;
  }

  v15 = v8 >> 3;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  if ((v8 >> 3) < 2)
  {
    return;
  }

  v19 = 1;
  do
  {
    v20 = *(*(a1 + 16) + 8 * v19 - 8);
    v21 = sub_2B51D8(a2, v20 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v22 = sub_30C50C(a2 + 3896, v20, 0);
      v23 = &v22[-*v22];
      if (*v23 < 5u)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(v23 + 2);
        if (v24)
        {
          v24 += &v22[*&v22[v24]];
        }
      }

      v25 = v24 + ((v20 >> 30) & 0x3FFFC) + 4 + *(v24 + ((v20 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_31D7E8(a2, v20 & 0xFFFFFFFFFFFFLL, 1);
    *&v70 = v21;
    *(&v70 + 1) = v25;
    *&v71 = v26;
    *(&v71 + 1) = v27;
    v72 = v20;
    v28 = *(*(a1 + 16) + 8 * v19);
    v29 = sub_2B51D8(a2, v28 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v30 = sub_30C50C(a2 + 3896, v28, 0);
      v31 = &v30[-*v30];
      if (*v31 < 5u)
      {
        v32 = 0;
      }

      else
      {
        v32 = *(v31 + 2);
        if (v32)
        {
          v32 += &v30[*&v30[v32]];
        }
      }

      v33 = v32 + ((v28 >> 30) & 0x3FFFC) + 4 + *(v32 + ((v28 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v33 = 0;
    }

    v34 = sub_31D7E8(a2, v28 & 0xFFFFFFFFFFFFLL, 1);
    *&v67 = v29;
    *(&v67 + 1) = v33;
    *&v68 = v34;
    *(&v68 + 1) = v35;
    v69 = v28;
    v36 = sub_3116D0(&v70);
    sub_31BA24(a2, v36, &v73, 0, 0, 0);
    if (*(a3 + 8) != 1 || (v37 = sub_2BC10C(*a3, v72 & 0xFFFFFFFFFFFFFFLL, 0), (v38 & 1) == 0))
    {
      v37 = sub_30F8F8(a3, &v70);
    }

    v39 = v37;
    if (*(a3 + 8) != 1 || (v40 = sub_2BC10C(*a3, v69 & 0xFFFFFFFFFFFFFFLL, 0), (v41 & 1) == 0))
    {
      v40 = sub_30F8F8(a3, &v67);
    }

    v42 = v40;
    if (*(a3 + 8) != 1 || (v43 = sub_2BC10C(*a3, v72 & 0xFFFFFFFFFFFFFFLL, 0), (v44 & 1) == 0))
    {
      v43 = sub_30F8F8(a3, &v70);
    }

    v45 = v43;
    if (*(a3 + 8) != 1 || (v46 = sub_2BC10C(*a3, v69 & 0xFFFFFFFFFFFFFFLL, 0), (v47 & 1) == 0))
    {
      v46 = sub_30F8F8(a3, &v67);
    }

    v48 = v42 & v39;
    if ((v42 & v39) == v42)
    {
LABEL_35:
      v49 = 0;
      if (v48 == v39)
      {
        goto LABEL_49;
      }
    }

    else
    {
      for (i = *a4; i != *(a4 + 8); i += 4)
      {
        if ((i[3] & v39) == i[2] && (i[1] & v42) == *i)
        {
          goto LABEL_35;
        }
      }

      v49 = 32;
      if (v48 == v39)
      {
LABEL_49:
        v52 = 0;
        goto LABEL_58;
      }
    }

    for (j = *a4; j != *(a4 + 8); j += 4)
    {
      if ((j[1] & v39) == *j && (j[3] & v42) == j[2])
      {
        goto LABEL_49;
      }
    }

    v53 = *(a4 + 24);
    v54 = *(a4 + 32);
    if (v53 != v54)
    {
      while ((*(v53 + 8) & v39) != *v53 || (*(v53 + 24) & v42) != *(v53 + 16))
      {
        v53 += 40;
        if (v53 == v54)
        {
          goto LABEL_57;
        }
      }
    }

    if (v53 == v54)
    {
LABEL_57:
      v52 = 64;
    }

    else
    {
      v52 = (*(v53 + 32) != 0) << 6;
    }

LABEL_58:
    v59 = v70;
    v60 = v71;
    v62 = v67;
    v61 = v72;
    v63 = v68;
    v64 = v69;
    v65 = 0x28000000000;
    v66 = (v45 != 0) | (2 * (v46 != 0)) | v49 | v52 | (4 * (v74 - v73 == 80)) | v66 & 0x80;
    sub_F6C3B8(a5, &v59, a6);
    ++v19;
  }

  while (v15 != v19);
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }
}

void sub_492240(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_492274()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v13 = v12;
  if (!sub_F63D58(v9))
  {
    v14 = sub_F63FD8(v10);
    v15 = *(v14 + 16);
    v21 = *v14;
    v22 = v15;
    v16 = *(v14 + 32);
    v17 = *(v14 + 48);
    v18 = *(v14 + 64);
    v26 = *(v14 + 80);
    v24 = v17;
    v25 = v18;
    v23 = v16;
    *(&v22 + 1) = *(v8 + 56);
    v19 = sub_45AC50(v10);
    sub_F68F20(v19, &v21);
  }

  sub_48D538(v11, v8, v10);
  if (!v4 || sub_492698(v11, v10, v8, v6) || sub_48DC7C(v11, v10, v8))
  {
    if (v2)
    {
      sub_F8FE74(&v21, *(v11 + 24));
    }

    sub_49E67C(v13, v10);
  }

  else
  {
    sub_4E3D18(v13);
    sub_4E3D18((v13 + 48));
    *(v13 + 168) = 0;
    result = 0.0;
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 128) = 0u;
    *(v13 + 144) = 0;
    *(v13 + 176) = 0;
    *(v13 + 184) = 0;
  }

  return result;
}

double sub_492454@<D0>(uint64_t a1@<X8>)
{
  sub_4E3D18(a1);
  sub_4E3D18((a1 + 48));
  *(a1 + 168) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return result;
}

void sub_4924B0(uint64_t a1, uint64_t *a2)
{
  memset(v5, 0, sizeof(v5));
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0x8E38E38E38E38E39 * ((v2 - *a2) >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = *a2;
  v3 = a2[1];
  v8 = v5;
  while (v4 != v3)
  {
    sub_4A2768(v4, __p);
    sub_9A5A0(&v8, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    v4 += 144;
  }

  sub_48F31C();
}

void sub_492658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_492674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_492698(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = a4;
  v9 = nullsub_1(a2);
  v10 = v9[1] - *v9;
  if (!v10)
  {
LABEL_22:
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v41);
    sub_4A5C(&v41, "Could not locate the user offset on the path", 44);
    if ((v51 & 0x10) != 0)
    {
      v32 = v50;
      if (v50 < v47)
      {
        v50 = v47;
        v32 = v47;
      }

      v33 = v46;
      v31 = v32 - v46;
      if (v32 - v46 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if ((v51 & 8) == 0)
      {
        v31 = 0;
        v40 = 0;
LABEL_36:
        *(&__p + v31) = 0;
        sub_7E854(&__p, 3u);
        if (v40 < 0)
        {
          operator delete(__p);
        }

        if (v49 < 0)
        {
          operator delete(v48);
        }

        std::locale::~locale(&v43);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v33 = v44;
      v31 = v45 - v44;
      if ((v45 - v44) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_42:
        sub_3244();
      }
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    v40 = v31;
    if (v31)
    {
      memmove(&__p, v33, v31);
    }

    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0xF128CFC4A33F128DLL * (v10 >> 3);
  while (1)
  {
    v14 = sub_F63CBC(a2, v11);
    v15 = sub_F6E3D4(v14);
    v13 = v5 - v15;
    if (v5 >= v15)
    {
      goto LABEL_6;
    }

    v16 = sub_F6D024(v14);
    if (v16)
    {
      break;
    }

    v13 = v5;
LABEL_6:
    ++v11;
    v5 = v13;
    if (v11 == v12)
    {
      goto LABEL_22;
    }
  }

  v17 = v16;
  v18 = 0;
  while (1)
  {
    v19 = sub_F6D254(v14, v18);
    v13 = v5 - v19;
    if (v5 < v19)
    {
      break;
    }

    ++v18;
    v5 -= v19;
    if (v17 == v18)
    {
      goto LABEL_6;
    }
  }

  v20 = *sub_73F1C(v14);
  if (v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  v22 = sub_F6D17C(v14, v18);
  v23 = *v22;
  v24 = &(*v22)[-**v22];
  if (*v24 < 9u)
  {
    v28 = 0;
    v26 = a3;
    v27 = a1;
  }

  else
  {
    v25 = *(v24 + 4);
    v26 = a3;
    v27 = a1;
    if (v25)
    {
      v28 = *&v23[v25];
      if (v28)
      {
        v29 = v5 / v28 * 1000000000.0;
        if (v29 >= 0.0)
        {
          if (v29 < 4.50359963e15)
          {
            v30 = (v29 + v29) + 1;
LABEL_45:
            v29 = (v30 >> 1);
          }
        }

        else if (v29 > -4.50359963e15)
        {
          v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
          goto LABEL_45;
        }

        v34 = 1000000000.0;
        if (v29 <= 1000000000.0)
        {
          v34 = v29;
        }

        v35 = v29 < 0.0;
        v36 = 0.0;
        if (!v35)
        {
          v36 = v34;
        }

        v28 = v36;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  v37 = v28 + v21;
  if (v37 >= 0x3B9ACA00)
  {
    v38 = 1000000000;
  }

  else
  {
    v38 = v37;
  }

  sub_492B28(v27, a2, v26, v11, v18, v38);
  return 1;
}

void sub_492ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_492B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  v12 = *nullsub_1(a2);
  v13 = nullsub_1(a2);
  LODWORD(v88) = *sub_73F1C(*v13);
  LOBYTE(v91) = 0;
  v90 = 0uLL;
  v89 = 0;
  *(&v91 + 1) = 0x3FF0000000000000;
  v92[0] = 1;
  *&v92[8] = 0;
  *&v92[16] = 0;
  __p[0] = 2359296000;
  *(__p + 7) = 0;
  sub_F68F20(v12, &v88);
  v14 = nullsub_1(a2 + 48);
  v15 = *(nullsub_1(a2 + 48) + 8);
  v16 = sub_45AC50(a2);
  v17 = sub_45AC50(a2);
  v85 = a4;
  v18 = 552 * a4;
  sub_49E3C4(v14, v15, v16, (v17 + v18), 0xF128CFC4A33F128DLL * ((v17 + v18 - v16) >> 3));
  v19 = nullsub_1(a2 + 48);
  v20 = v19;
  v21 = v19[1];
  if (v21 >= v19[2])
  {
    v22 = sub_49E278(v19);
  }

  else
  {
    sub_F6BEE8(v19[1]);
    v22 = v21 + 552;
    v20[1] = v21 + 552;
  }

  v20[1] = v22;
  v23 = nullsub_1(a2);
  v24 = sub_45AC50(a2);
  v25 = (sub_45AC50(a2) + v18);
  if (v25 != v24)
  {
    v26 = *(v23 + 8);
    if (v25 != v26)
    {
      do
      {
        sub_49C304(v24, v25);
        v25 = (v25 + 552);
        v24 += 552;
      }

      while (v25 != v26);
      v26 = *(v23 + 8);
    }

    while (v26 != v24)
    {
      v26 -= 552;
      sub_4547F0(v26);
    }

    *(v23 + 8) = v24;
  }

  v84 = a1;
  v27 = 24 * v85;
  if (v85)
  {
    v28 = *(a2 + 96);
    v29 = *(a2 + 104);
    if (v28 + v27 == v29)
    {
      if (v29 == v28)
      {
LABEL_23:
        *(a2 + 104) = v28;
        goto LABEL_24;
      }
    }

    else
    {
      do
      {
        v31 = *v28;
        if (*v28)
        {
          *(v28 + 8) = v31;
          operator delete(v31);
          *v28 = 0;
          *(v28 + 8) = 0;
          *(v28 + 16) = 0;
        }

        v30 = (v28 + v27);
        *v28 = *(v28 + 24 * v85);
        *(v28 + 16) = *(v28 + v27 + 16);
        *v30 = 0;
        v30[1] = 0;
        v30[2] = 0;
        v28 += 24;
      }

      while (v28 + v27 != v29);
      v29 = *(a2 + 104);
      if (v29 == v28)
      {
        goto LABEL_23;
      }
    }

    v32 = v29;
    do
    {
      v34 = *(v32 - 24);
      v32 -= 24;
      v33 = v34;
      if (v34)
      {
        *(v29 - 16) = v33;
        operator delete(v33);
      }

      v29 = v32;
    }

    while (v32 != v28);
    goto LABEL_23;
  }

LABEL_24:
  v35 = *nullsub_1(a2);
  v36 = (*(nullsub_1(a2 + 48) + 8) - 552);
  v37 = *(a2 + 96);
  if (a5)
  {
    v38 = sub_5FC64(v35);
    v39 = sub_5FC64(v35);
    sub_F6DCCC(v36, v38, v39 + 96 * a5);
    if (a5 + 1 == sub_F6D024(v35))
    {
      goto LABEL_26;
    }

LABEL_29:
    v46 = sub_5FC64(v35);
    v47 = sub_5FC64(v35);
    sub_F6E314(v35, v46, (v47 + 96 * a5), 1);
    if (!a5)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v43 = sub_F6C788(v35);
  v44 = sub_F69654(v35);
  v45 = sub_F692C8(v35, 0);
  sub_F6C100(v36, v43, v44, v45);
  if (sub_F6D024(v35) != 1)
  {
    goto LABEL_29;
  }

LABEL_26:
  v40 = sub_F6C7D0(v35);
  v41 = sub_F6C814(v35);
  v42 = sub_F692C8(v35, a5);
  sub_F6C100(v35, v40, v41, v42);
  if (!a5)
  {
    goto LABEL_33;
  }

LABEL_30:
  v49 = *v37;
  v48 = v37[1];
  v50 = *v37 + 4 * a5;
  v51 = v48 - v50;
  if (v48 != v50)
  {
    memmove(*v37, v50, v48 - v50);
  }

  v37[1] = &v49[v51];
LABEL_33:
  v102 = 0;
  v103 = 0;
  v105 = 0;
  v104 = 0;
  v106 = 0x3FF0000000000000;
  v107 = 1;
  v108 = 0;
  v109 = 0;
  v110 = 0x18CA00000;
  v111 = 0;
  v112 = 0;
  v101 = a6;
  if (sub_F695B8(v35))
  {
    v52 = sub_F69058(v35);
    if (v101 > *v52)
    {
      v101 = *sub_F69058(v35);
    }
  }

  v53 = sub_73F1C(v35);
  sub_F68F20(v36, v53);
  sub_F6901C(v36, &v101);
  v104 = *(a3 + 56);
  sub_F68F20(v35, &v101);
  v54 = *(a2 + 120);
  v55 = 480 * v85;
  if (480 * v85)
  {
    v56 = *(a2 + 128);
    if ((v54 + v55) != v56)
    {
      do
      {
        sub_49C5C0(v54, (v54 + v55));
        v54 += 240;
      }

      while ((v54 + v55) != v56);
      v56 = *(a2 + 128);
    }

    while (v56 != v54)
    {
      v56 -= 30;
      sub_49AEC0(v56);
    }

    *(a2 + 128) = v54;
    v54 = *(a2 + 120);
  }

  v57 = *(v54 + 176);
  v58 = sub_F69654(v35);
  v60 = (*v58 - **v58);
  v61 = 0.0;
  if (*v60 >= 9u)
  {
    v62 = v60[4];
    if (v62)
    {
      LODWORD(v61) = *(*v58 + v62);
      v61 = *&v61;
    }
  }

  LODWORD(v59) = v101;
  v63 = v61 * (v59 / 1000000000.0);
  if (v63 >= 0.0)
  {
    if (v63 >= 4.50359963e15)
    {
      goto LABEL_52;
    }

    v64 = (v63 + v63) + 1;
  }

  else
  {
    if (v63 <= -4.50359963e15)
    {
      goto LABEL_52;
    }

    v64 = (v63 + v63) - 1 + (((v63 + v63) - 1) >> 63);
  }

  v63 = (v64 >> 1);
LABEL_52:
  *(v57 + 24) = v63;
  v65 = sub_F69654(v35);
  *(v57 + 32) = *(v65 + 32) | (*(v65 + 36) << 32);
  *(v57 + 40) = *(sub_F69654(v35) + 38) | 0x100;
  *(v54 + 224) = 1;
  if (sub_E67BDC(a3))
  {
    *v54 = *a3;
    v66 = *(a3 + 16);
    v67 = *(a3 + 32);
    v68 = *(a3 + 48);
    *(v54 + 63) = *(a3 + 63);
    *(v54 + 32) = v67;
    *(v54 + 48) = v68;
    *(v54 + 16) = v66;
    if (v54 != a3)
    {
      sub_146EC((v54 + 72), *(a3 + 72), *(a3 + 80), (*(a3 + 80) - *(a3 + 72)) >> 2);
    }

    v69 = *(a3 + 96);
    *(v54 + 112) = *(a3 + 112);
    *(v54 + 96) = v69;
    v70 = *(a3 + 120);
    *(v54 + 136) = *(a3 + 136);
    *(v54 + 120) = v70;
    sub_3E428((v54 + 152), a3 + 152);
  }

  else
  {
    v71 = sub_3AF6B4(*(v84 + 24));
    v72 = sub_F69654(v35);
    v73 = sub_73F1C(v35);
    v86 = sub_48CA24(v71, v72, *v73);
    v87 = v74;
    sub_E6793C(&v88, &v86);
    v75 = v88;
    *(v54 + 8) = v89;
    *v54 = v75;
    v76 = v90;
    v77 = v91;
    v78 = *v92;
    *(v54 + 63) = *&v92[15];
    *(v54 + 32) = v77;
    *(v54 + 48) = v78;
    *(v54 + 16) = v76;
    v79 = *(v54 + 72);
    if (v79)
    {
      *(v54 + 80) = v79;
      operator delete(v79);
      *(v54 + 72) = 0;
      *(v54 + 80) = 0;
      *(v54 + 88) = 0;
    }

    v80 = *(v54 + 152);
    *(v54 + 72) = *__p;
    *(v54 + 88) = v94;
    __p[0] = 0;
    __p[1] = 0;
    v94 = 0;
    v81 = v96;
    *(v54 + 96) = v95;
    *(v54 + 112) = v81;
    *(v54 + 120) = v97;
    *(v54 + 136) = v98;
    if (v80)
    {
      operator delete(v80);
      *(v54 + 152) = 0;
      *(v54 + 160) = 0;
      *(v54 + 168) = 0;
      v80 = __p[0];
    }

    *(v54 + 152) = v99;
    *(v54 + 160) = v100;
    v99 = 0;
    v100 = 0uLL;
    if (v80)
    {
      __p[1] = v80;
      operator delete(v80);
    }
  }

  if (*(a2 + 168) == 1 && v85)
  {
    v82 = *(a2 + 144);
    for (i = *(a2 + 152); v82 + v27 != i; v82 += 24)
    {
      *v82 = *(v82 + 24 * v85);
      *(v82 + 8) = *(v82 + v27 + 8);
      *(v82 + 16) = *(v82 + v27 + 16);
    }

    *(a2 + 152) = v82;
  }
}

void sub_4934CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4934F4(uint64_t a1)
{
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  sub_4D0560();
  v3 = v2;
  v5 = v4;
  sub_F6C0C8();
  sub_4936FC(v3, v5, v6, v7, v8);
  sub_493890(a1);
}

void sub_493694(_Unwind_Exception *a1, uint64_t a2, char a3, ...)
{
  va_start(va, a3);
  sub_48C8F4(v3);
  if (a3)
  {
    sub_49AEC0(va);
    sub_11BD8(v4 - 112);
    _Unwind_Resume(a1);
  }

  sub_11BD8(v4 - 112);
  _Unwind_Resume(a1);
}

void *sub_4936FC(void *a1, unint64_t a2, void *a3, unint64_t a4, void *a5)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v11 = sub_F6D024(a1);
        v12 = sub_F6D024(a3);
        if (a2 >= v11 || a4 >= v12)
        {
          if (a2 < v11 == a4 < v12)
          {
            return a5;
          }
        }

        else
        {
          v13 = sub_F6D17C(a1, a2);
          if (v13 == sub_F6D17C(a3, a4))
          {
            return a5;
          }
        }

        v10 = sub_F6D17C(a1, a2);
        v17 = *(v10 + 32) | (*(v10 + 36) << 32);
        sub_49B7A4(a5, &v17);
        ++a2;
      }
    }

    while (a2 < sub_F6D024(a1))
    {
      v14 = sub_F6D17C(a1, a2);
      v17 = *(v14 + 32) | (*(v14 + 36) << 32);
      sub_49B7A4(a5, &v17);
      ++a2;
    }
  }

  else if (a3)
  {
    while (a4 < sub_F6D024(a3))
    {
      v15 = sub_F6D17C(0, a2);
      v17 = *(v15 + 32) | (*(v15 + 36) << 32);
      sub_49B7A4(a5, &v17);
      ++a2;
    }
  }

  return a5;
}

void sub_493A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_48C9A4(&a11);
  sub_44D36C(&a37);
  sub_11ABCB4(&a14);
  _Unwind_Resume(a1);
}

void sub_493AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47)
{
  if (__p)
  {
    a47 = __p;
    operator delete(__p);
    sub_11ABCB4(&a14);
    _Unwind_Resume(a1);
  }

  sub_11ABCB4(&a14);
  _Unwind_Resume(a1);
}

void sub_493AEC(uint64_t a1, uint64_t a2)
{
  v4[23] = 15;
  strcpy(v4, "UserPathDecoder");
  __p[0] = 0;
  __p[1] = 0;
  v3 = 0;
  sub_3AEC94(a2, v4, __p);
  sub_498140();
}

void sub_493EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_5BF68((v25 - 72));
  sub_21DB4B4(v24);
  _Unwind_Resume(a1);
}

void sub_493ED8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void **a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_1A104(&a22);
  JUMPOUT(0x493F14);
}

void sub_493F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v22 = v19[9];
  if (v22)
  {
    v19[10] = v22;
    operator delete(v22);
  }

  v23 = *v20;
  if (*v20)
  {
    v19[7] = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_496258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (a68 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a69);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  sub_1218EBC(&STACK[0x2B8]);
  sub_487EC4(&STACK[0x2F8]);
  sub_45B588(&STACK[0x310]);
  v70 = STACK[0x4F8];
  if (STACK[0x4F8])
  {
    STACK[0x500] = v70;
    operator delete(v70);
  }

  sub_480074(&STACK[0x538]);
  sub_49AD08(&STACK[0x970]);
  _Unwind_Resume(a1);
}

uint64_t sub_4965E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a3)
  {
    v7 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v7 == v6)
    {
      goto LABEL_18;
    }

    if (*v7)
    {
      v8 = 0;
    }

    else
    {
      v10 = *(v7 + 8);
      v11 = vabdd_f64(v10, *a1) < 2.22044605e-16 || v10 == *a1;
      v8 = 48;
      if (!v11)
      {
        v8 = 0;
      }
    }

    v7 += v8;
    if (*(v6 - 48) != ((*(a1 + 24) - *(a1 + 16)) >> 3) - 1)
    {
LABEL_18:
      v15 = 0;
    }

    else
    {
      v12 = *(v6 - 40);
      v13 = *(a1 + 8);
      if (vabdd_f64(v12, v13) < 2.22044605e-16 || v12 == v13)
      {
        v15 = -48;
      }

      else
      {
        v15 = 0;
      }
    }

    result = sub_4A1CF4(a4);
    a4[1] = result;
    *(result - 176) = *a1;
    v16 = *(a1 + 16);
    if (*(a1 + 24) != v16)
    {
      v17 = 0;
      v18 = v15 + v6;
      do
      {
        v19 = a4[1];
        v21 = *(v19 - 152);
        v20 = *(v19 - 144);
        if (v21 >= v20)
        {
          v23 = *(v19 - 160);
          v24 = v21 - v23;
          v25 = (v21 - v23) >> 3;
          v26 = v25 + 1;
          if ((v25 + 1) >> 61)
          {
            sub_1794();
          }

          v27 = v20 - v23;
          if (v27 >> 2 > v26)
          {
            v26 = v27 >> 2;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFF8)
          {
            v28 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (!(v28 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v29 = v25;
          v30 = (8 * v25);
          v31 = *(v16 + 8 * v17);
          v32 = &v30[-v29];
          *v30 = v31;
          v22 = v30 + 1;
          memcpy(v32, v23, v24);
          *(v19 - 160) = v32;
          *(v19 - 152) = v22;
          *(v19 - 144) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v21 = *(v16 + 8 * v17);
          v22 = v21 + 8;
        }

        *(v19 - 152) = v22;
        if (v7 < v18 && *v7 == v17)
        {
          v33 = *(v7 + 8);
          v34 = a4[1];
          v35 = a4[2];
          *(v34 - 168) = v33;
          if (v34 >= v35)
          {
            v36 = sub_4A1CF4(a4);
          }

          else
          {
            *(v34 + 144) = 0u;
            *(v34 + 160) = 0u;
            *(v34 + 96) = 0u;
            *(v34 + 112) = 0u;
            *(v34 + 64) = 0u;
            *(v34 + 80) = 0u;
            *(v34 + 32) = 0u;
            *(v34 + 48) = 0u;
            *v34 = 0u;
            *(v34 + 16) = 0u;
            *(v34 + 128) = 0u;
            *(v34 + 120) = 1065353216;
            v36 = v34 + 176;
            *(v34 + 160) = 1065353216;
          }

          v7 += 48;
          a4[1] = v36;
          v37 = *(a1 + 16);
          if (v17 + 1 < (*(a1 + 24) - v37) >> 3 && (v38 = sub_484614(a2, (v37 + 8 * v17)), v39 = v37 + 8 * (v17 + 1), __PAIR64__(*(v39 + 4), *v39) == __PAIR64__(WORD2(v38), v38)) && *(v39 + 6) == BYTE6(v38) && (v7 >= v18 || *v7 != v17))
          {
            *(a4[1] - 176) = 1.0 - v33;
          }

          else
          {
            *(a4[1] - 176) = v33;
            --v17;
          }
        }

        ++v17;
        v16 = *(a1 + 16);
      }

      while (v17 < (*(a1 + 24) - v16) >> 3);
      result = a4[1];
    }

    *(result - 168) = *(a1 + 8);
  }

  else
  {
    result = sub_4A0E48(a4, a1);
    a4[1] = result;
  }

  return result;
}

void sub_496974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24) - v7;
  if (v8 == 8)
  {
    v9 = *v7;
    v10 = sub_31B7C8(a2, *v7);
    v11 = v10;
    v12 = v10 == 1;
    v13 = (v10 == 2) << 62;
    v14 = v12 << 63;
    v15 = v9 & 0xFFFFFFFFFFFFLL;
    v16 = v13 | (((v9 & 0xFF000000000000) == 0) << 61);
    v17 = v16 & 0x7FFFFFFFFFFFFFFFLL | v9 & 0xFFFFFFFFFFFFLL | (v12 << 63);
    v18 = sub_2B51D8(a2, v9 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772))
    {
      v19 = sub_30C50C(a2 + 3896, v9, 0);
      v20 = &v19[-*v19];
      if (*v20 < 5u)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(v20 + 2);
        if (v21)
        {
          v21 += &v19[*&v19[v21]];
        }
      }

      v89 = v21 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v21 + ((v9 >> 30) & 0x3FFFC) + 4);
      v9 = v9;
    }

    else
    {
      v89 = 0;
      v9 = v9;
    }

    *&v102 = v18;
    *(&v102 + 1) = v89;
    *&v103 = sub_31D7E8(a2, v15, 1);
    *(&v103 + 1) = v90;
    v104 = v15 | (((v13 | v14) == 0x8000000000000000) << 63) | v16;
    v91 = HIDWORD(v17) & 0x40000000;
    if (v11 == 1 && v91 == 0)
    {
      v93 = 0x40000000;
    }

    else
    {
      v93 = 0;
    }

    sub_F69060(a5, v9 | (((v17 >> 33) & 0x10000000 | HIDWORD(v17) & 0xFFFFFFF | (v91 >> 1) | v93) << 32), &v102, a6);
    return;
  }

  v115 = 0;
  v116 = 0;
  v117 = 0;
  if ((v8 >> 3) < 2)
  {
    return;
  }

  v23 = 0;
  v94 = (v8 >> 3) - 1;
  do
  {
    v24 = *(*(a1 + 16) + 8 * v23);
    v25 = sub_31B7C8(a2, v24);
    v26 = (v24 & 0xFF000000000000) == 0;
    v27 = v25 == 1;
    v28 = v25 == 2;
    v29 = v24 & 0xFFFFFFFFFFFFLL;
    v30 = sub_2B51D8(a2, v24 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v31 = sub_30C50C(a2 + 3896, v24, 0);
      v32 = &v31[-*v31];
      if (*v32 < 5u)
      {
        v33 = 0;
      }

      else
      {
        v33 = *(v32 + 2);
        if (v33)
        {
          v33 += &v31[*&v31[v33]];
        }
      }

      v34 = v33 + ((v24 >> 30) & 0x3FFFC) + 4 + *(v33 + ((v24 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v34 = 0;
    }

    v35 = sub_31D7E8(a2, v29, 1);
    *&v112 = v30;
    *(&v112 + 1) = v34;
    *&v113 = v35;
    *(&v113 + 1) = v36;
    v114 = (v26 << 61) | ((((v28 << 62) | (v27 << 63)) == 0x8000000000000000) << 63) | v29 | (v28 << 62);
    v37 = *(*(a1 + 16) + 8 * v23 + 8);
    v38 = sub_31B7C8(a2, v37);
    v39 = (v37 & 0xFF000000000000) == 0;
    v40 = v38 == 1;
    v41 = v38 == 2;
    v42 = v37 & 0xFFFFFFFFFFFFLL;
    v43 = sub_2B51D8(a2, v37 & 0xFFFFFFFFFFFFLL);
    if (*(a2 + 7772) == 1)
    {
      v44 = sub_30C50C(a2 + 3896, v37, 0);
      v45 = &v44[-*v44];
      if (*v45 < 5u)
      {
        v46 = 0;
      }

      else
      {
        v46 = *(v45 + 2);
        if (v46)
        {
          v46 += &v44[*&v44[v46]];
        }
      }

      v47 = v46 + ((v37 >> 30) & 0x3FFFC) + 4 + *(v46 + ((v37 >> 30) & 0x3FFFC) + 4);
    }

    else
    {
      v47 = 0;
    }

    v48 = sub_31D7E8(a2, v42, 1);
    *&v109 = v43;
    *(&v109 + 1) = v47;
    *&v110 = v48;
    *(&v110 + 1) = v49;
    v111 = (v39 << 61) | ((((v41 << 62) | (v40 << 63)) == 0x8000000000000000) << 63) | v42 | (v41 << 62);
    v50 = sub_314B90(&v112);
    sub_31BA24(a2, v50, &v115, 0, 0, 0);
    v51 = sub_30F7C8(a3, &v112);
    v52 = sub_30F7C8(a3, &v109);
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    if (*(a3 + 8) != 1 || (v53 = sub_2BC294(*a3, (((HIDWORD(v114) & 0x20000000) << 19) | (WORD2(v114) << 32) | v114) ^ 0x1000000000000, 0), (v54 & 1) == 0))
    {
      v53 = sub_30FA10(a3, &v112);
    }

    v55 = v53;
    if (*(a3 + 8) != 1 || (v56 = sub_2BC294(*a3, (((HIDWORD(v111) & 0x20000000) << 19) | (WORD2(v111) << 32) | v111) ^ 0x1000000000000, 0), (v57 & 1) == 0))
    {
      v56 = sub_30FA10(a3, &v109);
    }

    v102 = v112;
    v103 = v113;
    v105 = v109;
    v104 = v114;
    v106 = v110;
    v107 = v111;
    v58 = 30;
    if (v100 >= 0x1E)
    {
      v59 = 30;
    }

    else
    {
      v59 = v100;
    }

    v60 = 31;
    if (v100 != -1)
    {
      v60 = v59;
    }

    if (*(&v100 + 1) < 0x1EuLL)
    {
      v58 = *(&v100 + 1);
    }

    v61 = 32 * v58;
    v62 = 992;
    if (*(&v100 + 1) != -1)
    {
      v62 = v61;
    }

    if (v101 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v63 = 523264;
      v64 = *(&v101 + 1);
      if (*(&v101 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v67 = v101 / 0x32;
      if (v101 / 0x32 >= 0x1FE)
      {
        v67 = 510;
      }

      v63 = v67 << 10;
      v64 = *(&v101 + 1);
      if (*(&v101 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_45:
        v66 = 267911168;
        goto LABEL_46;
      }
    }

    v65 = v64 / 0x32;
    if (v65 >= 0x1FE)
    {
      v65 = 510;
    }

    v66 = v65 << 19;
LABEL_46:
    if (v98 >= 0x1E)
    {
      v68 = 30;
    }

    else
    {
      v68 = v98;
    }

    v69 = v68 << 28;
    v70 = 0x1F0000000;
    if (v98 != -1)
    {
      v70 = v69;
    }

    if (*(&v98 + 1) >= 0x1EuLL)
    {
      v71 = 30;
    }

    else
    {
      v71 = *(&v98 + 1);
    }

    v72 = v71 << 33;
    v73 = 0x3E00000000;
    if (*(&v98 + 1) != -1)
    {
      v73 = v72;
    }

    if (v99 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v74 = 0x7FC000000000;
      v75 = *(&v99 + 1);
      if (*(&v99 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v78 = v99 / 0x32;
      if (v99 / 0x32 >= 0x1FE)
      {
        v78 = 510;
      }

      v74 = v78 << 38;
      v75 = *(&v99 + 1);
      if (*(&v99 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_64:
        v77 = 0xFF800000000000;
        goto LABEL_65;
      }
    }

    v76 = v75 / 0x32;
    if (v76 >= 0x1FE)
    {
      v76 = 510;
    }

    v77 = v76 << 47;
LABEL_65:
    v79 = ((v55 != 0) << 56) | ((v56 != 0) << 57) | ((v116 - v115 == 80) << 58) | v77 | v108 & 0xC000000000000000 | v60 & 0xC00000000FFFFC1FLL | v63 & 0xC00000000FFFFC1FLL | v66 & 0xC00000000FFFFC1FLL | v70 | v73 | v74 | v62;
    v80 = 0x2000000000000000;
    if (v51 == v52)
    {
      v80 = 0;
    }

    v108 = v79 + v80;
    v121[0] = &v112;
    v121[1] = &v109;
    if (v100 == -1)
    {
      v81 = -1;
    }

    else
    {
      v81 = v59;
    }

    v82 = v62 >> 5;
    if (v62 == 992)
    {
      v82 = -1;
    }

    v118.i64[0] = v81;
    v118.i64[1] = v82;
    if (((v79 >> 10) & 0x1FF) == 0x1FF)
    {
      v83 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v83 = 50 * ((v79 >> 10) & 0x1FF);
    }

    if (((v79 >> 19) & 0x1FF) == 0x1FF)
    {
      v84 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v84 = 50 * ((v79 >> 19) & 0x1FF);
    }

    v119 = v83;
    v120 = v84;
    sub_49FC9C(v121, &v118, &v100);
    v85 = vdupq_n_s64(0x1FuLL);
    v86 = vandq_s8(vshlq_u64(vdupq_n_s64(v108), xmmword_2297E80), v85);
    v118 = vorrq_s8(v86, vceqq_s64(v86, v85));
    if (((v108 >> 38) & 0x1FF) == 0x1FF)
    {
      v87 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v87 = 50 * ((v108 >> 38) & 0x1FF);
    }

    if (((v108 >> 47) & 0x1FF) == 0x1FF)
    {
      v88 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v88 = 50 * ((v108 >> 47) & 0x1FF);
    }

    v119 = v87;
    v120 = v88;
    sub_49FC9C(v121, &v118, &v98);
    sub_F6F284(a5, &v102, a6);
    ++v23;
  }

  while (v94 != v23);
  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }
}

void sub_497134(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    *(v1 - 160) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double sub_497164@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  if (!sub_F64B34(a2))
  {
    v14 = sub_F63FD8(a2);
    v15 = *(v14 + 16);
    v25 = *v14;
    *v26 = v15;
    v16 = *(v14 + 32);
    v17 = *(v14 + 48);
    v18 = *(v14 + 64);
    v30 = *(v14 + 80);
    *v28 = v17;
    *v29 = v18;
    v27 = v16;
    v26[1] = *(a3 + 56);
    v19 = sub_45AC50(a2);
    sub_F68F20(v19, &v25);
  }

  sub_499400(a1, a3, a2);
  if (!a5 || sub_49752C(a1, a2, a3, a4) || sub_49898C(a1, a2, a3))
  {
    if (a6)
    {
      v20 = *(a1 + 24);
      sub_F92178(&v25, v20, 2);
      v34 = sub_3AF6B4(v20);
      sub_1182D14(a2, &v25);
      if (__p)
      {
        v33 = __p;
        operator delete(__p);
      }

      v21 = v31;
      if (v31)
      {
        do
        {
          v22 = *v21;
          operator delete(v21);
          v21 = v22;
        }

        while (v22);
      }

      v23 = v29[1];
      v29[1] = 0;
      if (v23)
      {
        operator delete(v23);
      }

      if (v28[0])
      {
        v28[1] = v28[0];
        operator delete(v28[0]);
      }

      if (v26[1])
      {
        *&v27 = v26[1];
        operator delete(v26[1]);
      }
    }

    sub_49F388(a7, a2);
  }

  else
  {
    sub_4E3D18(a7);
    sub_4E3D18((a7 + 48));
    *(a7 + 168) = 0;
    result = 0.0;
    *(a7 + 96) = 0u;
    *(a7 + 112) = 0u;
    *(a7 + 128) = 0u;
    *(a7 + 144) = 0;
    *(a7 + 176) = 0;
    *(a7 + 184) = 0;
  }

  return result;
}

void sub_497344(uint64_t a1, uint64_t *a2)
{
  memset(v5, 0, sizeof(v5));
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0x8E38E38E38E38E39 * ((v2 - *a2) >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = *a2;
  v3 = a2[1];
  v8 = v5;
  while (v4 != v3)
  {
    sub_4A2AF0(v4, __p);
    sub_9A5A0(&v8, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    v4 += 144;
  }

  sub_493FA0();
}

void sub_4974EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_497508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_49752C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = a4;
  v9 = nullsub_1(a2);
  v10 = v9[1] - *v9;
  if (!v10)
  {
LABEL_22:
    result = sub_7E7E4(3u);
    if (!result)
    {
      return result;
    }

    sub_19594F8(&v41);
    sub_4A5C(&v41, "Could not locate the user offset on the path", 44);
    if ((v51 & 0x10) != 0)
    {
      v32 = v50;
      if (v50 < v47)
      {
        v50 = v47;
        v32 = v47;
      }

      v33 = v46;
      v31 = v32 - v46;
      if (v32 - v46 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if ((v51 & 8) == 0)
      {
        v31 = 0;
        v40 = 0;
LABEL_36:
        *(&__p + v31) = 0;
        sub_7E854(&__p, 3u);
        if (v40 < 0)
        {
          operator delete(__p);
        }

        if (v49 < 0)
        {
          operator delete(v48);
        }

        std::locale::~locale(&v43);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v33 = v44;
      v31 = v45 - v44;
      if ((v45 - v44) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_42:
        sub_3244();
      }
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    v40 = v31;
    if (v31)
    {
      memmove(&__p, v33, v31);
    }

    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0xF128CFC4A33F128DLL * (v10 >> 3);
  while (1)
  {
    v14 = sub_F63CBC(a2, v11);
    v15 = sub_F70F54(v14);
    v13 = v5 - v15;
    if (v5 >= v15)
    {
      goto LABEL_6;
    }

    v16 = sub_F6FD88(v14);
    if (v16)
    {
      break;
    }

    v13 = v5;
LABEL_6:
    ++v11;
    v5 = v13;
    if (v11 == v12)
    {
      goto LABEL_22;
    }
  }

  v17 = v16;
  v18 = 0;
  while (1)
  {
    v19 = sub_F6FF10(v14, v18);
    v13 = v5 - v19;
    if (v5 < v19)
    {
      break;
    }

    ++v18;
    v5 -= v19;
    if (v17 == v18)
    {
      goto LABEL_6;
    }
  }

  v20 = *sub_73F1C(v14);
  if (v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  v22 = sub_F6FE3C(v14, v18);
  v23 = *v22;
  v24 = &(*v22)[-**v22];
  if (*v24 < 9u)
  {
    v28 = 0;
    v26 = a3;
    v27 = a1;
  }

  else
  {
    v25 = *(v24 + 4);
    v26 = a3;
    v27 = a1;
    if (v25)
    {
      v28 = *&v23[v25];
      if (v28)
      {
        v29 = v5 / v28 * 1000000000.0;
        if (v29 >= 0.0)
        {
          if (v29 < 4.50359963e15)
          {
            v30 = (v29 + v29) + 1;
LABEL_45:
            v29 = (v30 >> 1);
          }
        }

        else if (v29 > -4.50359963e15)
        {
          v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
          goto LABEL_45;
        }

        v34 = 1000000000.0;
        if (v29 <= 1000000000.0)
        {
          v34 = v29;
        }

        v35 = v29 < 0.0;
        v36 = 0.0;
        if (!v35)
        {
          v36 = v34;
        }

        v28 = v36;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  v37 = v28 + v21;
  if (v37 >= 0x3B9ACA00)
  {
    v38 = 1000000000;
  }

  else
  {
    v38 = v37;
  }

  sub_4979BC(v27, a2, v26, v11, v18, v38);
  return 1;
}

void sub_497970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_4979BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  v12 = *nullsub_1(a2);
  v13 = nullsub_1(a2);
  LODWORD(v89) = *sub_73F1C(*v13);
  LOBYTE(v92) = 0;
  v91 = 0uLL;
  v90 = 0;
  *(&v92 + 1) = 0x3FF0000000000000;
  v93[0] = 1;
  *&v93[8] = 0;
  *&v93[16] = 0;
  __p[0] = 2359296000;
  *(__p + 7) = 0;
  sub_F68F20(v12, &v89);
  v14 = nullsub_1(a2 + 48);
  v15 = *(nullsub_1(a2 + 48) + 8);
  v16 = sub_45AC50(a2);
  v17 = sub_45AC50(a2);
  v86 = a4;
  v18 = 552 * a4;
  sub_49F0D0(v14, v15, v16, (v17 + v18), 0xF128CFC4A33F128DLL * ((v17 + v18 - v16) >> 3));
  v19 = nullsub_1(a2 + 48);
  v20 = v19;
  v21 = v19[1];
  if (v21 >= v19[2])
  {
    v22 = sub_49EF84(v19);
  }

  else
  {
    sub_F6EB3C(v19[1]);
    v22 = v21 + 552;
    v20[1] = v21 + 552;
  }

  v20[1] = v22;
  v23 = nullsub_1(a2);
  v24 = sub_45AC50(a2);
  v25 = (sub_45AC50(a2) + v18);
  if (v25 != v24)
  {
    v26 = *(v23 + 8);
    if (v25 != v26)
    {
      do
      {
        sub_49C304(v24, v25);
        v25 = (v25 + 552);
        v24 += 552;
      }

      while (v25 != v26);
      v26 = *(v23 + 8);
    }

    while (v26 != v24)
    {
      v26 -= 552;
      sub_4547F0(v26);
    }

    *(v23 + 8) = v24;
  }

  v85 = a1;
  v27 = 24 * v86;
  if (v86)
  {
    v28 = *(a2 + 96);
    v29 = *(a2 + 104);
    if (v28 + v27 == v29)
    {
      if (v29 == v28)
      {
LABEL_23:
        *(a2 + 104) = v28;
        goto LABEL_24;
      }
    }

    else
    {
      do
      {
        v31 = *v28;
        if (*v28)
        {
          *(v28 + 8) = v31;
          operator delete(v31);
          *v28 = 0;
          *(v28 + 8) = 0;
          *(v28 + 16) = 0;
        }

        v30 = (v28 + v27);
        *v28 = *(v28 + 24 * v86);
        *(v28 + 16) = *(v28 + v27 + 16);
        *v30 = 0;
        v30[1] = 0;
        v30[2] = 0;
        v28 += 24;
      }

      while (v28 + v27 != v29);
      v29 = *(a2 + 104);
      if (v29 == v28)
      {
        goto LABEL_23;
      }
    }

    v32 = v29;
    do
    {
      v34 = *(v32 - 24);
      v32 -= 24;
      v33 = v34;
      if (v34)
      {
        *(v29 - 16) = v33;
        operator delete(v33);
      }

      v29 = v32;
    }

    while (v32 != v28);
    goto LABEL_23;
  }

LABEL_24:
  v35 = *nullsub_1(a2);
  v36 = (*(nullsub_1(a2 + 48) + 8) - 552);
  v37 = *(a2 + 96);
  if (a5)
  {
    v38 = sub_5FC64(v35);
    v39 = sub_5FC64(v35);
    sub_F707C4(v36, v38, v39 + 88 * a5);
    if (a5 + 1 == sub_F6FD88(v35))
    {
      goto LABEL_26;
    }

LABEL_29:
    v46 = sub_5FC64(v35);
    v47 = sub_5FC64(v35);
    sub_F70DF4(v35, v46, (v47 + 88 * a5), 1);
    if (!a5)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v43 = sub_F6F638(v35);
  v44 = sub_F6F6F4(v35);
  v45 = sub_F692C8(v35, 0);
  sub_F69060(v36, v43, v44, v45);
  if (sub_F6FD88(v35) != 1)
  {
    goto LABEL_29;
  }

LABEL_26:
  v40 = sub_F6F698(v35);
  v41 = sub_F6F70C(v35);
  v42 = sub_F692C8(v35, a5);
  sub_F69060(v35, v40, v41, v42);
  if (!a5)
  {
    goto LABEL_33;
  }

LABEL_30:
  v49 = *v37;
  v48 = v37[1];
  v50 = *v37 + 4 * a5;
  v51 = v48 - v50;
  if (v48 != v50)
  {
    memmove(*v37, v50, v48 - v50);
  }

  v37[1] = &v49[v51];
LABEL_33:
  v103 = 0;
  v104 = 0;
  v106 = 0;
  v105 = 0;
  v107 = 0x3FF0000000000000;
  v108 = 1;
  v109 = 0;
  v110 = 0;
  v111 = 0x18CA00000;
  v112 = 0;
  v113 = 0;
  v102 = a6;
  if (sub_83EB8(v35))
  {
    v52 = sub_F69058(v35);
    if (v102 > *v52)
    {
      v102 = *sub_F69058(v35);
    }
  }

  v53 = sub_73F1C(v35);
  sub_F68F20(v36, v53);
  sub_F6901C(v36, &v102);
  v105 = *(a3 + 56);
  sub_F68F20(v35, &v102);
  v54 = *(a2 + 120);
  v55 = 480 * v86;
  if (480 * v86)
  {
    v56 = *(a2 + 128);
    if ((v54 + v55) != v56)
    {
      do
      {
        sub_49C5C0(v54, (v54 + v55));
        v54 += 240;
      }

      while ((v54 + v55) != v56);
      v56 = *(a2 + 128);
    }

    while (v56 != v54)
    {
      v56 -= 30;
      sub_49AEC0(v56);
    }

    *(a2 + 128) = v54;
    v54 = *(a2 + 120);
  }

  v57 = *(v54 + 176);
  v58 = sub_F6F6F4(v35);
  v60 = (*v58 - **v58);
  v61 = 0.0;
  if (*v60 >= 9u)
  {
    v62 = v60[4];
    if (v62)
    {
      LODWORD(v61) = *(*v58 + v62);
      v61 = *&v61;
    }
  }

  LODWORD(v59) = v102;
  v63 = v61 * (v59 / 1000000000.0);
  if (v63 >= 0.0)
  {
    if (v63 >= 4.50359963e15)
    {
      goto LABEL_52;
    }

    v64 = (v63 + v63) + 1;
  }

  else
  {
    if (v63 <= -4.50359963e15)
    {
      goto LABEL_52;
    }

    v64 = (v63 + v63) - 1 + (((v63 + v63) - 1) >> 63);
  }

  v63 = (v64 >> 1);
LABEL_52:
  *(v57 + 24) = v63;
  v65 = sub_F6F6F4(v35);
  *(v57 + 32) = *(v65 + 32) | ((*(v65 + 36) & 0x1FFFFFFF) << 32);
  if ((*(sub_F6F6F4(v35) + 36) & 0x20000000) != 0)
  {
    v66 = 256;
  }

  else
  {
    v66 = 257;
  }

  *(v57 + 40) = v66;
  *(v54 + 224) = 1;
  if (sub_E67BDC(a3))
  {
    *v54 = *a3;
    v67 = *(a3 + 16);
    v68 = *(a3 + 32);
    v69 = *(a3 + 48);
    *(v54 + 63) = *(a3 + 63);
    *(v54 + 32) = v68;
    *(v54 + 48) = v69;
    *(v54 + 16) = v67;
    if (v54 != a3)
    {
      sub_146EC((v54 + 72), *(a3 + 72), *(a3 + 80), (*(a3 + 80) - *(a3 + 72)) >> 2);
    }

    v70 = *(a3 + 96);
    *(v54 + 112) = *(a3 + 112);
    *(v54 + 96) = v70;
    v71 = *(a3 + 120);
    *(v54 + 136) = *(a3 + 136);
    *(v54 + 120) = v71;
    sub_3E428((v54 + 152), a3 + 152);
  }

  else
  {
    v72 = sub_3AF6B4(*(v85 + 24));
    v73 = sub_F6F6F4(v35);
    v74 = sub_73F1C(v35);
    v87 = sub_4992B4(v72, v73, *v74);
    v88 = v75;
    sub_E6793C(&v89, &v87);
    v76 = v89;
    *(v54 + 8) = v90;
    *v54 = v76;
    v77 = v91;
    v78 = v92;
    v79 = *v93;
    *(v54 + 63) = *&v93[15];
    *(v54 + 32) = v78;
    *(v54 + 48) = v79;
    *(v54 + 16) = v77;
    v80 = *(v54 + 72);
    if (v80)
    {
      *(v54 + 80) = v80;
      operator delete(v80);
      *(v54 + 72) = 0;
      *(v54 + 80) = 0;
      *(v54 + 88) = 0;
    }

    v81 = *(v54 + 152);
    *(v54 + 72) = *__p;
    *(v54 + 88) = v95;
    __p[0] = 0;
    __p[1] = 0;
    v95 = 0;
    v82 = v97;
    *(v54 + 96) = v96;
    *(v54 + 112) = v82;
    *(v54 + 120) = v98;
    *(v54 + 136) = v99;
    if (v81)
    {
      operator delete(v81);
      *(v54 + 152) = 0;
      *(v54 + 160) = 0;
      *(v54 + 168) = 0;
      v81 = __p[0];
    }

    *(v54 + 152) = v100;
    *(v54 + 160) = v101;
    v100 = 0;
    v101 = 0uLL;
    if (v81)
    {
      __p[1] = v81;
      operator delete(v81);
    }
  }

  if (*(a2 + 168) == 1 && v86)
  {
    v83 = *(a2 + 144);
    for (i = *(a2 + 152); v83 + v27 != i; v83 += 24)
    {
      *v83 = *(v83 + 24 * v86);
      *(v83 + 8) = *(v83 + v27 + 8);
      *(v83 + 16) = *(v83 + v27 + 16);
    }

    *(a2 + 152) = v83;
  }
}

void sub_498368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_498390(uint64_t a1)
{
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  sub_4D0560();
  v3 = v2;
  v5 = v4;
  sub_F6F0F4();
  sub_498598(v3, v5, v6, v7, v8);
  sub_49872C(a1);
}

void sub_498530(_Unwind_Exception *a1, uint64_t a2, char a3, ...)
{
  va_start(va, a3);
  sub_48C8F4(v3);
  if (a3)
  {
    sub_49AEC0(va);
    sub_11BD8(v4 - 112);
    _Unwind_Resume(a1);
  }

  sub_11BD8(v4 - 112);
  _Unwind_Resume(a1);
}

void *sub_498598(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v11 = sub_F6FD88(a1);
        v12 = sub_F6FD88(a3);
        if (a2 >= v11 || a4 >= v12)
        {
          if (a2 < v11 == a4 < v12)
          {
            return a5;
          }
        }

        else
        {
          v13 = sub_F6FE3C(a1, a2);
          if (v13 == sub_F6FE3C(a3, a4))
          {
            return a5;
          }
        }

        v10 = sub_F6FE3C(a1, a2);
        v17 = *(v10 + 32) | ((*(v10 + 36) & 0x1FFFFFFF) << 32);
        sub_49B7A4(a5, &v17);
        ++a2;
      }
    }

    while (a2 < sub_F6FD88(a1))
    {
      v14 = sub_F6FE3C(a1, a2);
      v17 = *(v14 + 32) | ((*(v14 + 36) & 0x1FFFFFFF) << 32);
      sub_49B7A4(a5, &v17);
      ++a2;
    }
  }

  else if (a3)
  {
    while (a4 < sub_F6FD88(a3))
    {
      v15 = sub_F6FE3C(0, a2);
      v17 = *(v15 + 32) | ((*(v15 + 36) & 0x1FFFFFFF) << 32);
      sub_49B7A4(a5, &v17);
      ++a2;
    }
  }

  return a5;
}

void sub_498924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_48C9A4(&a11);
  sub_44D36C(&a37);
  sub_11ABFD0(&a14);
  _Unwind_Resume(a1);
}

void sub_498950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47)
{
  if (__p)
  {
    a47 = __p;
    operator delete(__p);
    sub_11ABFD0(&a14);
    _Unwind_Resume(a1);
  }

  sub_11ABFD0(&a14);
  _Unwind_Resume(a1);
}

BOOL sub_49898C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_E67BDC(a3))
  {
    return 1;
  }

  v4 = sub_45AC50(a2);
  if (v4 != sub_588D8(a2))
  {
    sub_498390(a1);
  }

  result = sub_7E7E4(3u);
  if (result)
  {
    sub_19594F8(&v12);
    sub_4A5C(&v12, "Could not locate the user on the path", 37);
    if ((v22 & 0x10) != 0)
    {
      v7 = v21;
      if (v21 < v18)
      {
        v21 = v18;
        v7 = v18;
      }

      v8 = v17;
      v6 = v7 - v17;
      if (v7 - v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v22 & 8) == 0)
      {
        v6 = 0;
        v11 = 0;
LABEL_16:
        *(&__dst + v6) = 0;
        sub_7E854(&__dst, 3u);
        if (v11 < 0)
        {
          operator delete(__dst);
        }

        if (v20 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v14);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0;
      }

      v8 = v15;
      v6 = v16 - v15;
      if ((v16 - v15) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_22:
        sub_3244();
      }
    }

    if (v6 >= 0x17)
    {
      operator new();
    }

    v11 = v6;
    if (v6)
    {
      memmove(&__dst, v8, v6);
    }

    goto LABEL_16;
  }

  return result;
}

void sub_499150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_499164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_499178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_49918C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4991A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4991B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4991C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4991DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_1959728(&a22);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a22);
  _Unwind_Resume(a1);
}

void sub_499228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_49923C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_499250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_499264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_499278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_49928C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

void sub_4992A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_48C8F4(va);
  _Unwind_Resume(a1);
}

unint64_t sub_4992B4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_2B7A20(a1, (((*(a2 + 36) & 0x20000000) << 19) | (*(a2 + 36) << 32) | *(a2 + 32)) ^ 0x1000000000000, &v8);
  v4 = v9;
  if (v9 == v10)
  {
    v6 = 0xFFFFFFFF00000000;
    v5 = 0xFFFFFFFFLL;
    if (!v9)
    {
      return v5 | v6;
    }

    goto LABEL_9;
  }

  sub_31BF20(&v8, v11);
  sub_31214(v11, 0, &v12, a3 / 1000000000.0);
  v5 = *(v13 - 12);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  v6 = v5 & 0xFFFFFFFF00000000;
  v4 = v9;
  v5 = v5;
  if (v9)
  {
LABEL_9:
    v10 = v4;
    operator delete(v4);
  }

  return v5 | v6;
}

void sub_4993B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    v16 = a10;
    if (!a10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void *sub_499400(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_3AF6B4(*(a1 + 24));
  v6 = sub_45AC50(a3);
  if (v6 != sub_588D8(a3))
  {
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    v94 = vnegq_f64(v37);
    do
    {
      v42 = a3[16];
      if (v42 >= a3[17])
      {
        v43 = sub_49C7F4(a3 + 15);
      }

      else
      {
        *(v42 + 8) = 0u;
        *(v42 + 24) = 0u;
        *(v42 + 40) = 0u;
        *(v42 + 56) = 0u;
        *(v42 + 72) = 0u;
        *(v42 + 88) = 0u;
        *(v42 + 104) = 0u;
        *v42 = -1;
        *(v42 + 8) = 0x7FFFFFFF;
        *(v42 + 16) = -1;
        *(v42 + 24) = -1;
        *(v42 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v42 + 48) = -1935635296;
        *(v42 + 56) = 0;
        *(v42 + 63) = 0;
        *(v42 + 72) = 0;
        *(v42 + 80) = 0;
        *(v42 + 88) = 0;
        *(v42 + 96) = 0;
        *(v42 + 104) = 0x7FFFFFFFFFFFFFFFLL;
        *(v42 + 112) = 100;
        *(v42 + 120) = 0;
        *(v42 + 128) = 0;
        *(v42 + 136) = v94;
        *(v42 + 216) = 0;
        *(v42 + 200) = 0u;
        *(v42 + 184) = 0u;
        *(v42 + 168) = 0u;
        *(v42 + 152) = 0u;
        *(v42 + 224) = 1;
        *(v42 + 236) = 0;
        *(v42 + 228) = 0;
        v43 = v42 + 240;
      }

      a3[16] = v43;
      if (v6 == sub_45AC50(a3))
      {
        v44 = 1;
      }

      else
      {
        v44 = 3;
      }

      *(v43 - 16) = v44;
      v45 = sub_F6F6F4(v6);
      v47 = (*v45 - **v45);
      v48 = 0.0;
      if (*v47 >= 9u)
      {
        v49 = v47[4];
        if (v49)
        {
          LODWORD(v46) = *(*v45 + v49);
          v48 = v46;
        }
      }

      LODWORD(v50) = *sub_73F1C(v6);
      v51 = v48 * (v50 / 1000000000.0);
      v52 = (v51 + v51);
      v53 = ((v52 - 1) / 2);
      if (v51 <= -4.50359963e15)
      {
        v53 = v51;
      }

      v54 = ((v52 + 1) >> 1);
      if (v51 >= 4.50359963e15)
      {
        v54 = v51;
      }

      if (v51 >= 0.0)
      {
        v55 = v54;
      }

      else
      {
        v55 = v53;
      }

      *&v95 = v55;
      v56 = sub_F6F6F4(v6);
      v57 = *(v56 + 32) | ((*(v56 + 36) & 0x1FFFFFFF) << 32);
      v109 = 0;
      v110[0] = v57;
      *&v101 = -1;
      DWORD2(v101) = 0x7FFFFFFF;
      v58 = *(sub_F6F6F4(v6) + 36);
      LOBYTE(v108) = (v58 & 0x20000000) == 0;
      v59 = *(v43 - 56);
      if (v59 >= *(v43 - 48))
      {
        v65 = sub_49CB7C(v43 - 64, v110, &v101, &v95, &v109, &v108);
      }

      else
      {
        v60 = (v58 & 0x20000000) == 0;
        v61 = v110[0];
        v62 = v95;
        if (v60)
        {
          v63 = 257;
        }

        else
        {
          v63 = 256;
        }

        *v59 = v109;
        v64 = DWORD2(v101);
        *(v59 + 8) = v101;
        *(v59 + 16) = v64;
        *(v59 + 24) = v62;
        *(v59 + 32) = v61;
        *(v59 + 40) = v63;
        *(v59 + 42) = 257;
        *(v59 + 48) = 0;
        *(v59 + 56) = 0;
        *(v59 + 64) = 0;
        *(v59 + 72) = 2139095039;
        *(v59 + 88) = 0;
        *(v59 + 96) = 0;
        *(v59 + 80) = 0;
        v65 = v59 + 104;
      }

      *(v43 - 56) = v65;
      v66 = sub_F6F6F4(v6);
      v67 = sub_73F1C(v6);
      *(v43 - 240) = sub_4992B4(v5, v66, *v67);
      *(v43 - 232) = v68;
      if (v6 == sub_45AC50(a3) && sub_E67BDC(a2))
      {
        v69 = v43 - 240;
        *v69 = *a2;
        v70 = *(a2 + 16);
        v71 = *(a2 + 32);
        v72 = *(a2 + 48);
        *(v69 + 63) = *(a2 + 63);
        *(v69 + 32) = v71;
        *(v69 + 48) = v72;
        *(v69 + 16) = v70;
        if (v43 - 240 != a2)
        {
          sub_146EC((v43 - 168), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
        }

        v73 = *(a2 + 96);
        *(v43 - 128) = *(a2 + 112);
        *(v43 - 144) = v73;
        v74 = *(a2 + 120);
        *(v43 - 104) = *(a2 + 136);
        *(v43 - 120) = v74;
        sub_3E428((v43 - 88), a2 + 152);
      }

      v75 = a3[16];
      if (v75 >= a3[17])
      {
        v76 = sub_49C7F4(a3 + 15);
      }

      else
      {
        *(v75 + 8) = 0u;
        *(v75 + 24) = 0u;
        *(v75 + 40) = 0u;
        *(v75 + 56) = 0u;
        *(v75 + 72) = 0u;
        *(v75 + 88) = 0u;
        *(v75 + 104) = 0u;
        *v75 = -1;
        *(v75 + 8) = 0x7FFFFFFF;
        *(v75 + 16) = -1;
        *(v75 + 24) = -1;
        *(v75 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        *(v75 + 48) = -1935635296;
        *(v75 + 56) = 0;
        *(v75 + 63) = 0;
        *(v75 + 72) = 0;
        *(v75 + 80) = 0;
        *(v75 + 88) = 0;
        *(v75 + 96) = 0;
        *(v75 + 104) = 0x7FFFFFFFFFFFFFFFLL;
        *(v75 + 112) = 100;
        *(v75 + 120) = 0;
        *(v75 + 128) = 0;
        *(v75 + 136) = v94;
        *(v75 + 216) = 0;
        *(v75 + 200) = 0u;
        *(v75 + 184) = 0u;
        *(v75 + 168) = 0u;
        *(v75 + 152) = 0u;
        *(v75 + 224) = 1;
        *(v75 + 236) = 0;
        *(v75 + 228) = 0;
        v76 = v75 + 240;
      }

      a3[16] = v76;
      if (v6 == sub_588D8(a3) - 552)
      {
        v77 = 2;
      }

      else
      {
        v77 = 3;
      }

      *(v76 - 16) = v77;
      v78 = sub_F6F70C(v6);
      v80 = (*v78 - **v78);
      v81 = 0.0;
      if (*v80 >= 9u)
      {
        v82 = v80[4];
        if (v82)
        {
          LODWORD(v79) = *(*v78 + v82);
          v81 = v79;
        }
      }

      LODWORD(v83) = *sub_F69058(v6);
      v84 = v81 * (v83 / 1000000000.0);
      if (v84 >= 0.0)
      {
        if (v84 < 4.50359963e15)
        {
          v85 = (v84 + v84) + 1;
          goto LABEL_57;
        }
      }

      else if (v84 > -4.50359963e15)
      {
        v85 = (v84 + v84) - 1 + (((v84 + v84) - 1) >> 63);
LABEL_57:
        v84 = (v85 >> 1);
      }

      v110[0] = v84;
      v86 = sub_F6F70C(v6);
      v87 = *(v86 + 32) | ((*(v86 + 36) & 0x1FFFFFFF) << 32);
      v108 = 0;
      v109 = v87;
      *&v101 = -1;
      DWORD2(v101) = 0x7FFFFFFF;
      v88 = *(sub_F6F70C(v6) + 36);
      v107 = (v88 & 0x20000000) == 0;
      v89 = *(v76 - 56);
      if (v89 >= *(v76 - 48))
      {
        v38 = sub_49CB7C(v76 - 64, &v109, &v101, v110, &v108, &v107);
      }

      else
      {
        v60 = (v88 & 0x20000000) == 0;
        v90 = v109;
        v91 = v110[0];
        if (v60)
        {
          v92 = 257;
        }

        else
        {
          v92 = 256;
        }

        *v89 = v108;
        v93 = DWORD2(v101);
        *(v89 + 8) = v101;
        *(v89 + 16) = v93;
        *(v89 + 24) = v91;
        *(v89 + 32) = v90;
        *(v89 + 40) = v92;
        *(v89 + 42) = 257;
        *(v89 + 48) = 0;
        *(v89 + 56) = 0;
        *(v89 + 64) = 0;
        *(v89 + 72) = 2139095039;
        *(v89 + 88) = 0;
        *(v89 + 96) = 0;
        *(v89 + 80) = 0;
        v38 = v89 + 104;
      }

      *(v76 - 56) = v38;
      v39 = sub_F6F70C(v6);
      v40 = sub_F69058(v6);
      *(v76 - 240) = sub_4992B4(v5, v39, *v40);
      *(v76 - 232) = v41;
      v6 += 552;
    }

    while (v6 != sub_588D8(a3));
  }

  result = nullsub_1(a3);
  v8 = result[1];
  v9 = v8 - *result;
  if (v8 != *result)
  {
    v10 = *nullsub_1(a3);
    v11 = sub_73F1C(v10);
    v12 = *(v11 + 80);
    v14 = *(v11 + 32);
    v13 = *(v11 + 48);
    v105 = *(v11 + 64);
    v15 = *(v11 + 16);
    v101 = *v11;
    v102 = v15;
    v106 = v12;
    v103 = v14;
    v104 = v13;
    HIDWORD(v105) = 1;
    sub_F68F20(v10, &v101);
    v16 = sub_F69058(v10);
    v17 = *(v16 + 16);
    v95 = *v16;
    v96 = v17;
    v19 = *(v16 + 48);
    v18 = *(v16 + 64);
    v20 = *(v16 + 32);
    v100 = *(v16 + 80);
    v98 = v19;
    v99 = v18;
    v97 = v20;
    v21 = sub_F63FF4(a3) == 1 ? 2 : 4;
    HIDWORD(v99) = v21;
    result = sub_F6901C(v10, &v95);
    if (v9 != 552)
    {
      v22 = 0xF128CFC4A33F128DLL * (v9 >> 3);
      v23 = 1;
      v24 = 552;
      do
      {
        v25 = *nullsub_1(a3);
        v26 = sub_73F1C(v25 + v24);
        v27 = *(v26 + 80);
        v29 = *(v26 + 32);
        v28 = *(v26 + 48);
        v105 = *(v26 + 64);
        v30 = *(v26 + 16);
        v101 = *v26;
        v102 = v30;
        v106 = v27;
        v103 = v29;
        v104 = v28;
        HIDWORD(v105) = 4;
        sub_F68F20(v25 + v24, &v101);
        v31 = sub_F69058(v25 + v24);
        v32 = *(v31 + 16);
        v95 = *v31;
        v96 = v32;
        v34 = *(v31 + 48);
        v33 = *(v31 + 64);
        v35 = *(v31 + 32);
        v100 = *(v31 + 80);
        v98 = v34;
        v99 = v33;
        v97 = v35;
        if (v23 == sub_F63FF4(a3) - 1)
        {
          v36 = 2;
        }

        else
        {
          v36 = 4;
        }

        HIDWORD(v99) = v36;
        result = sub_F6901C(v25 + v24, &v95);
        ++v23;
        v24 += 552;
      }

      while (v22 != v23);
    }
  }

  return result;
}

double sub_499B64@<D0>(uint64_t a1@<X8>)
{
  sub_4E3D18(a1);
  sub_4E3D18((a1 + 48));
  *(a1 + 168) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return result;
}

double sub_499BC0@<D0>(uint64_t a1@<X8>)
{
  sub_4E3D18(a1);
  sub_4E3D18((a1 + 48));
  *(a1 + 168) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return result;
}

void sub_499C1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (a2 == -1)
  {
    sub_4E3D18(a5);
    sub_4E3D18((a5 + 48));
    goto LABEL_22;
  }

  v8 = a2;
  v10 = sub_3B2978(*(a1 + 24));
  __p[0] = -1;
  LODWORD(__p[1]) = 0x7FFFFFFF;
  v11 = sub_4A084C((v10 + 2), 1u, 0);
  v12 = &v11[-*v11];
  if (*v12 >= 5u)
  {
    v13 = *(v12 + 2);
    if (v13)
    {
      v14 = &v11[v13 + *&v11[v13]];
      v15 = &v14[-*v14];
      if (*v15 >= 5u)
      {
        v16 = *(v15 + 2);
        if (v16)
        {
          if (v14[v16])
          {
            v8 = nullsub_1(v8);
          }
        }
      }
    }
  }

  v17 = sub_4A00CC(v10, v8, __p);
  if (v17 == -1 || (!v18 ? (v19 = HIDWORD(v17) == 0) : (v19 = 1), (v20 = __ROR8__(v17, 32), v19) ? (v21 = 0xFFFFFFFF00000000) : (v21 = v20), v21 <= 0xFFFFFFFEFFFFFFFFLL ? (v22 = v21 == 0) : (v22 = 1), v22))
  {
    sub_4E3D18(a5);
    sub_4E3D18((a5 + 48));
LABEL_22:
    *(a5 + 168) = 0;
    *(a5 + 96) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0u;
    *(a5 + 144) = 0;
    *(a5 + 176) = 0;
    *(a5 + 184) = 0;
    return;
  }

  sub_4E3D18(__p);
  sub_4E3D18(v37);
  v40 = 0;
  memset(&v37[3], 0, 48);
  LOBYTE(v38[0]) = 0;
  v41 = 0;
  v42 = 0;
  sub_1160C14(*(a1 + 24), v21, v29);
  v23 = __p[0];
  if (__p[0])
  {
    v24 = __p[1];
    v25 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v24 = sub_4547F0(v24 - 552);
      }

      while (v24 != v23);
      v25 = __p[0];
    }

    __p[1] = v23;
    operator delete(v25);
  }

  *__p = *v29;
  v34 = v30;
  v29[1] = 0;
  v30 = 0;
  v29[0] = 0;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
    v26 = v29[0];
    v35 = v31;
    v36 = v32;
    HIBYTE(v32) = 0;
    LOBYTE(v31) = 0;
    if (v29[0])
    {
      v27 = v29[1];
      v28 = v29[0];
      if (v29[1] != v29[0])
      {
        do
        {
          v27 = sub_4547F0(v27 - 552);
        }

        while (v27 != v26);
        v28 = v29[0];
      }

      v29[1] = v26;
      operator delete(v28);
    }
  }

  else
  {
    v35 = v31;
    v36 = v32;
  }

  sub_11612CC(__p, v29);
  if (v40 == 1)
  {
    if (v38[0])
    {
      v38[1] = v38[0];
      operator delete(v38[0]);
    }

    *v38 = *v29;
    v39 = v30;
  }

  else
  {
    *v38 = *v29;
    v39 = v30;
    v40 = 1;
  }

  sub_497164(a1, __p, a3, 0x7FFFFFFFFFFFFFFFLL, a4, 0, a5);
  sub_49AD08(__p);
}

void sub_499EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_49AD08(va);
  _Unwind_Resume(a1);
}

void sub_499F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_49AD08(va);
  _Unwind_Resume(a1);
}

void sub_499F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_49AD08(va);
  _Unwind_Resume(a1);
}

void sub_499F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_454784(va);
  _Unwind_Resume(a1);
}

uint64_t sub_499F74(uint64_t a1, uint64_t a2)
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

  sub_2C1B08(a1 + 24, (a2 + 24));
  sub_2C1C04((a1 + 96), (a2 + 96));
  *(a1 + 120) = *(a2 + 120);
  v5 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 160);
  *(a1 + 168) = 0u;
  *(a1 + 160) = v7;
  *(a1 + 184) = 0u;
  *(a1 + 200) = *(a2 + 200);
  prime = *(a2 + 176);
  if (prime == 1)
  {
    prime = 2;
LABEL_24:
    sub_B07C(a1 + 168, prime);
    goto LABEL_25;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 176));
    v9 = *(a1 + 176);
    v10 = prime >= *&v9;
    if (prime > *&v9)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
    if (prime)
    {
      goto LABEL_24;
    }
  }

  if (!v10)
  {
    v11 = vcvtps_u32_f32(*(a1 + 192) / *(a1 + 200));
    if (*&v9 < 3uLL || (v12 = vcnt_s8(v9), v12.i16[0] = vaddlv_u8(v12), v12.u32[0] > 1uLL))
    {
      v11 = std::__next_prime(v11);
    }

    else
    {
      v13 = 1 << -__clz(v11 - 1);
      if (v11 >= 2)
      {
        v11 = v13;
      }
    }

    if (prime <= v11)
    {
      prime = v11;
    }

    if (prime < *&v9)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  for (i = *(a2 + 184); i; i = *i)
  {
    sub_49A234((a1 + 168), (i + 2));
  }

  return a1;
}

void sub_49A198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  *(v9 + 8) = v10;
  sub_2C1A58(&a9);
  _Unwind_Resume(a1);
}

void sub_49A1B0(_Unwind_Exception *a1)
{
  sub_2C13CC((v1 + 3));
  sub_1AA90(v1);
  _Unwind_Resume(a1);
}

void sub_49A1E0(_Unwind_Exception *a1)
{
  sub_2C1F20(v4);
  sub_1F1A8(v3);
  sub_1F1A8(v2);
  sub_1A104(v1 + 12);
  sub_2C13CC((v1 + 3));
  sub_1AA90(v1);
  _Unwind_Resume(a1);
}

uint64_t **sub_49A234(void *a1, uint64_t a2)
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
    sub_49A600();
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

void sub_49A5E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7D330(va);
  _Unwind_Resume(a1);
}

void sub_49A6C0(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_7D330(v1);
  _Unwind_Resume(a1);
}

void *sub_49A6E4(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_49A7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_49A814(&a11);
  *(v11 + 8) = v12;
  sub_49A874(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_49A814(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_49A874(void ****a1)
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
          v6 = *(v4 - 9);
          v4 -= 4;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
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

void *sub_49A8F8(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  return a1;
}

void **sub_49A93C(void **a1)
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

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_49A9B0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    if (v5 != v4)
    {
      v15 = v5;
      v16 = v14;
      do
      {
        *v16 = *v15;
        *(v16 + 2) = *(v15 + 2);
        *v15 = 0;
        *(v15 + 1) = 0;
        *(v15 + 2) = 0;
        v15 += 24;
        v16 += 24;
      }

      while (v15 != v4);
      do
      {
        v17 = *v5;
        if (*v5)
        {
          *(v5 + 1) = v17;
          operator delete(v17);
        }

        v5 += 24;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_49ABAC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      memset(*(a1 + 8), 255, 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_1794();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    memset(v11, 255, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_49AD08(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      *(a1 + 152) = v2;
      operator delete(v2);
    }
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    v4 = *(a1 + 128);
    v5 = *(a1 + 120);
    if (v4 != v3)
    {
      do
      {
        v4 = sub_49AEC0(v4 - 30);
      }

      while (v4 != v3);
      v5 = *(a1 + 120);
    }

    *(a1 + 128) = v3;
    operator delete(v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    v7 = *(a1 + 104);
    v8 = *(a1 + 96);
    if (v7 != v6)
    {
      v9 = *(a1 + 104);
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v7 - 16) = v10;
          operator delete(v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
      v8 = *(a1 + 96);
    }

    *(a1 + 104) = v6;
    operator delete(v8);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 48);
    if (v13 != v12)
    {
      do
      {
        v13 = sub_4547F0(v13 - 552);
      }

      while (v13 != v12);
      v14 = *(a1 + 48);
    }

    *(a1 + 56) = v12;
    operator delete(v14);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v15 = *a1;
  if (*a1)
  {
    v16 = *(a1 + 8);
    v17 = *a1;
    if (v16 != v15)
    {
      do
      {
        v16 = sub_4547F0(v16 - 552);
      }

      while (v16 != v15);
      v17 = *a1;
    }

    *(a1 + 8) = v15;
    operator delete(v17);
  }

  return a1;
}

void **sub_49AE64(void **a1)
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
        v3 = sub_49AEC0(v3 - 30);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_49AEC0(void *a1)
{
  v2 = a1[25];
  if (v2)
  {
    v3 = a1[26];
    v4 = a1[25];
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 24);
        if (v6)
        {
          v7 = *(v3 - 16);
          v5 = *(v3 - 24);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 9);
              v7 -= 4;
              if (v8 < 0)
              {
                operator delete(*v7);
              }
            }

            while (v7 != v6);
            v5 = *(v3 - 24);
          }

          *(v3 - 16) = v6;
          operator delete(v5);
        }

        v3 -= 104;
      }

      while (v3 != v2);
      v4 = a1[25];
    }

    a1[26] = v2;
    operator delete(v4);
  }

  v9 = a1[22];
  if (v9)
  {
    v10 = a1[23];
    v11 = a1[22];
    if (v10 != v9)
    {
      do
      {
        v13 = *(v10 - 24);
        if (v13)
        {
          v14 = *(v10 - 16);
          v12 = *(v10 - 24);
          if (v14 != v13)
          {
            do
            {
              v15 = *(v14 - 9);
              v14 -= 4;
              if (v15 < 0)
              {
                operator delete(*v14);
              }
            }

            while (v14 != v13);
            v12 = *(v10 - 24);
          }

          *(v10 - 16) = v13;
          operator delete(v12);
        }

        v10 -= 104;
      }

      while (v10 != v9);
      v11 = a1[22];
    }

    a1[23] = v9;
    operator delete(v11);
  }

  v16 = a1[19];
  if (v16)
  {
    operator delete(v16);
  }

  v17 = a1[9];
  if (v17)
  {
    a1[10] = v17;
    operator delete(v17);
  }

  return a1;
}

double sub_49B008(uint64_t *a1, uint64_t a2)
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

  if (v5)
  {
    if (v5 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v28 = 8 * ((a1[1] - *a1) >> 3);
  *v28 = *a2;
  *(v28 + 16) = *(a2 + 16);
  *(a2 + 8) = 0u;
  *a2 = 0;
  *(v28 + 24) = *(a2 + 24);
  *(v28 + 40) = *(a2 + 40);
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  v8 = *(a2 + 80);
  *(v28 + 96) = *(a2 + 96);
  *(v28 + 64) = v7;
  *(v28 + 80) = v8;
  *(v28 + 48) = v6;
  *(v28 + 104) = *(a2 + 104);
  *(v28 + 120) = *(a2 + 120);
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0;
  *(v28 + 128) = *(a2 + 128);
  *(v28 + 144) = *(a2 + 144);
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0;
  *(v28 + 152) = *(a2 + 152);
  *(v28 + 168) = *(a2 + 168);
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0;
  v9 = *(a2 + 176);
  v10 = *(a2 + 192);
  *(v28 + 208) = *(a2 + 208);
  *(v28 + 176) = v9;
  *(v28 + 192) = v10;
  *(v28 + 216) = *(a2 + 216);
  *(v28 + 232) = *(a2 + 232);
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(v28 + 240) = *(a2 + 240);
  *(v28 + 256) = *(a2 + 256);
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0;
  v11 = *(a2 + 264);
  v12 = *(a2 + 296);
  *(v28 + 280) = *(a2 + 280);
  *(v28 + 296) = v12;
  *(v28 + 264) = v11;
  v13 = *(a2 + 312);
  v14 = *(a2 + 328);
  v15 = *(a2 + 360);
  *(v28 + 344) = *(a2 + 344);
  *(v28 + 360) = v15;
  *(v28 + 312) = v13;
  *(v28 + 328) = v14;
  v16 = *(a2 + 376);
  v17 = *(a2 + 392);
  v18 = *(a2 + 424);
  *(v28 + 408) = *(a2 + 408);
  *(v28 + 424) = v18;
  *(v28 + 376) = v16;
  *(v28 + 392) = v17;
  v19 = *(a2 + 440);
  v20 = *(a2 + 456);
  v21 = *(a2 + 488);
  *(v28 + 472) = *(a2 + 472);
  *(v28 + 488) = v21;
  *(v28 + 440) = v19;
  *(v28 + 456) = v20;
  *(v28 + 504) = *(a2 + 504);
  *(a2 + 504) = 0;
  v22 = *(a2 + 528);
  *(v28 + 512) = *(a2 + 512);
  *(v28 + 528) = v22;
  *(v28 + 544) = *(a2 + 544);
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 0;
  v23 = a1[1];
  v24 = 552 * v2 + *a1 - v23;
  sub_49B478(a1, *a1, v23, v24);
  v25 = *a1;
  *a1 = v24;
  v26 = 552 * v2 + 552;
  *(a1 + 1) = v26;
  if (v25)
  {
    operator delete(v25);
    *&v26 = 552 * v2 + 552;
  }

  return *&v26;
}

void sub_49B284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

double sub_49B298(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  result = 0.0;
  *(a3 + 8) = 0u;
  *a3 = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 40) = *(a3 + 5);
  *(a3 + 5) = 0;
  *(a3 + 24) = 0u;
  v5 = a3[3];
  v6 = a3[5];
  v7 = *(a3 + 12);
  *(a2 + 64) = a3[4];
  *(a2 + 80) = v6;
  *(a2 + 48) = v5;
  *(a2 + 96) = v7;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0u;
  *(a2 + 104) = *(a3 + 104);
  *(a2 + 120) = *(a3 + 15);
  *(a3 + 15) = 0;
  *(a3 + 104) = 0u;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 128) = a3[8];
  *(a2 + 144) = *(a3 + 18);
  *(a3 + 18) = 0;
  a3[8] = 0u;
  *(a2 + 168) = 0;
  *(a2 + 152) = 0u;
  *(a2 + 152) = *(a3 + 152);
  *(a2 + 168) = *(a3 + 21);
  *(a3 + 21) = 0;
  *(a3 + 152) = 0u;
  v8 = a3[12];
  v9 = *(a3 + 26);
  *(a2 + 176) = a3[11];
  *(a2 + 192) = v8;
  *(a2 + 208) = v9;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0u;
  *(a2 + 216) = *(a3 + 216);
  *(a2 + 232) = *(a3 + 29);
  *(a3 + 29) = 0;
  *(a3 + 216) = 0u;
  *(a2 + 256) = 0;
  *(a2 + 240) = 0u;
  *(a2 + 240) = a3[15];
  *(a2 + 256) = *(a3 + 32);
  *(a3 + 32) = 0;
  a3[15] = 0u;
  v10 = *(a3 + 264);
  v11 = *(a3 + 296);
  *(a2 + 280) = *(a3 + 280);
  *(a2 + 296) = v11;
  *(a2 + 264) = v10;
  v12 = *(a3 + 424);
  v14 = *(a3 + 376);
  v13 = *(a3 + 392);
  *(a2 + 408) = *(a3 + 408);
  *(a2 + 424) = v12;
  *(a2 + 376) = v14;
  *(a2 + 392) = v13;
  v15 = *(a3 + 488);
  v17 = *(a3 + 440);
  v16 = *(a3 + 456);
  *(a2 + 472) = *(a3 + 472);
  *(a2 + 488) = v15;
  *(a2 + 440) = v17;
  *(a2 + 456) = v16;
  v18 = *(a3 + 312);
  v19 = *(a3 + 328);
  v20 = *(a3 + 360);
  *(a2 + 344) = *(a3 + 344);
  *(a2 + 360) = v20;
  *(a2 + 312) = v18;
  *(a2 + 328) = v19;
  *(a2 + 504) = *(a3 + 63);
  *(a2 + 512) = a3[32];
  *(a3 + 65) = 0;
  *(a3 + 504) = 0u;
  *(a2 + 544) = 0;
  *(a2 + 528) = 0u;
  *(a2 + 528) = a3[33];
  *(a2 + 544) = *(a3 + 68);
  *(a3 + 68) = 0;
  a3[33] = 0u;
  return result;
}

uint64_t sub_49B424(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 552;
    sub_4547F0(i - 552);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_49B478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0uLL;
      *v6 = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = 0uLL;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 40) = 0;
      *(v6 + 24) = 0uLL;
      v8 = *(v6 + 48);
      v9 = *(v6 + 80);
      v10 = *(v6 + 96);
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 80) = v9;
      *(a4 + 48) = v8;
      *(a4 + 96) = v10;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0uLL;
      *(a4 + 104) = *(v6 + 104);
      *(a4 + 120) = *(v6 + 120);
      *(v6 + 120) = 0;
      *(v6 + 104) = 0uLL;
      *(a4 + 144) = 0;
      *(a4 + 128) = 0uLL;
      *(a4 + 128) = *(v6 + 128);
      *(a4 + 144) = *(v6 + 144);
      *(v6 + 144) = 0;
      *(v6 + 128) = 0uLL;
      *(a4 + 168) = 0;
      *(a4 + 152) = 0uLL;
      *(a4 + 152) = *(v6 + 152);
      *(a4 + 168) = *(v6 + 168);
      *(v6 + 168) = 0;
      *(v6 + 152) = 0uLL;
      v11 = *(v6 + 192);
      v12 = *(v6 + 208);
      *(a4 + 176) = *(v6 + 176);
      *(a4 + 192) = v11;
      *(a4 + 208) = v12;
      *(a4 + 216) = 0;
      *(a4 + 224) = 0uLL;
      *(a4 + 216) = *(v6 + 216);
      *(a4 + 232) = *(v6 + 232);
      *(v6 + 232) = 0;
      *(v6 + 216) = 0uLL;
      *(a4 + 256) = 0;
      *(a4 + 240) = 0uLL;
      *(a4 + 240) = *(v6 + 240);
      *(a4 + 256) = *(v6 + 256);
      *(v6 + 256) = 0;
      *(v6 + 240) = 0uLL;
      v13 = *(v6 + 264);
      v14 = *(v6 + 296);
      *(a4 + 280) = *(v6 + 280);
      *(a4 + 296) = v14;
      *(a4 + 264) = v13;
      v15 = *(v6 + 424);
      v17 = *(v6 + 376);
      v16 = *(v6 + 392);
      *(a4 + 408) = *(v6 + 408);
      *(a4 + 424) = v15;
      *(a4 + 376) = v17;
      *(a4 + 392) = v16;
      v18 = *(v6 + 488);
      v20 = *(v6 + 440);
      v19 = *(v6 + 456);
      *(a4 + 472) = *(v6 + 472);
      *(a4 + 488) = v18;
      *(a4 + 440) = v20;
      *(a4 + 456) = v19;
      v21 = *(v6 + 312);
      v22 = *(v6 + 328);
      v23 = *(v6 + 360);
      *(a4 + 344) = *(v6 + 344);
      *(a4 + 360) = v23;
      *(a4 + 312) = v21;
      *(a4 + 328) = v22;
      *(a4 + 504) = *(v6 + 504);
      *(a4 + 512) = *(v6 + 512);
      *(v6 + 520) = 0;
      *(v6 + 504) = 0uLL;
      *(a4 + 544) = 0;
      *(a4 + 528) = 0uLL;
      *(a4 + 528) = *(v6 + 528);
      *(a4 + 544) = *(v6 + 544);
      *(v6 + 544) = 0;
      *(v6 + 528) = 0uLL;
      v6 += 552;
      a4 += 552;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_4547F0(v5) + 552;
    }
  }
}

uint64_t sub_49B658(uint64_t *a1)
{
  v1 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v4 = 0x76B981DAE6076BLL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v10 = 8 * ((a1[1] - *a1) >> 3);
  sub_F68960(v10);
  v5 = 552 * v1 + 552;
  v6 = a1[1];
  v7 = v10 + *a1 - v6;
  sub_49B478(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  a1[1] = v5;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v5;
}

void sub_49B790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_49B7A4(void *a1, void *a2)
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

uint64_t sub_49BB1C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    while (1)
    {
      while (1)
      {
        v4 = i - 104;
        *(a1 + 16) = i - 104;
        v5 = *(i - 24);
        if (v5)
        {
          break;
        }

        i -= 104;
        if (v4 == v2)
        {
          goto LABEL_12;
        }
      }

      v6 = *(i - 16);
      v7 = *(i - 24);
      if (v6 != v5)
      {
        break;
      }

      *(i - 16) = v5;
      operator delete(v7);
      i = *(a1 + 16);
      if (i == v2)
      {
        goto LABEL_12;
      }
    }

    do
    {
      v8 = *(v6 - 9);
      v6 -= 4;
      if (v8 < 0)
      {
        operator delete(*v6);
      }
    }

    while (v6 != v5);
    v9 = *(i - 24);
    *(i - 16) = v5;
    operator delete(v9);
  }

LABEL_12:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_49BBE8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v6 = *(v3 - 24);
      if (v6)
      {
        v7 = *(v3 - 16);
        v5 = *(v3 - 24);
        if (v7 != v6)
        {
          do
          {
            v8 = *(v7 - 9);
            v7 -= 4;
            if (v8 < 0)
            {
              operator delete(*v7);
            }
          }

          while (v7 != v6);
          v5 = *(v3 - 24);
        }

        *(v3 - 16) = v6;
        operator delete(v5);
      }

      v3 -= 104;
    }
  }

  return a1;
}

uint64_t sub_49BC88(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a3;
    v9 = a1[1];
    v8 = a1[2];
    if ((0xF128CFC4A33F128DLL * ((v8 - v9) >> 3)) >= a5)
    {
      v14 = v9 - a2;
      if ((0xF128CFC4A33F128DLL * ((v9 - a2) >> 3)) >= a5)
      {
        v18 = 552 * a5;
        sub_49BF40(a1, a2, a1[1], a2 + 552 * a5);
        v19 = (v6 + v18);
        v20 = v5;
        do
        {
          sub_49C304(v20, v6);
          v6 = (v6 + 552);
          v20 += 552;
        }

        while (v6 != v19);
      }

      else
      {
        v16 = (a3 + v14);
        a1[1] = sub_49C15C(a1, (a3 + v14), a4, a1[1]);
        if (v14 >= 1)
        {
          sub_49BF40(a1, v5, v9, v5 + 552 * a5);
          v17 = v5;
          do
          {
            sub_49C304(v17, v6);
            v6 = (v6 + 552);
            v17 += 552;
          }

          while (v6 != v16);
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 - 0xED7303B5CC0ED73 * ((v9 - *a1) >> 3);
      if (v11 > 0x76B981DAE6076BLL)
      {
        sub_1794();
      }

      v12 = 0xF128CFC4A33F128DLL * ((v8 - v10) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3B5CC0ED7303B5)
      {
        v13 = 0x76B981DAE6076BLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (v13 <= 0x76B981DAE6076BLL)
        {
          operator new();
        }

        sub_1808();
      }

      v21 = 8 * ((a2 - v10) >> 3);
      v28 = v21;
      v22 = 552 * a5;
      v23 = v21 + 552 * a5;
      do
      {
        sub_49B298(a1, v21, v6);
        v21 += 552;
        v6 = (v6 + 552);
        v22 -= 552;
      }

      while (v22);
      sub_49B478(a1, v5, a1[1], v23);
      v24 = *a1;
      v29 = v23 + a1[1] - v5;
      a1[1] = v5;
      v25 = v28 + v24 - v5;
      sub_49B478(a1, v24, v5, v25);
      v26 = *a1;
      *a1 = v25;
      a1[1] = v29;
      a1[2] = 0;
      if (v26)
      {
        operator delete(v26);
      }

      return v28;
    }
  }

  return v5;
}

void sub_49BF14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

void sub_49BF28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49B424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_49BF40(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  v5 = (a2 + v4 - a4);
  if (v5 >= a3)
  {
    *(result + 8) = v4;
    if (v4 == a4)
    {
      return result;
    }

    goto LABEL_7;
  }

  v6 = *(result + 8);
  do
  {
    v7 = *v5;
    *(v6 + 16) = *(v5 + 2);
    *v6 = v7;
    *(v5 + 8) = 0uLL;
    *v5 = 0;
    *(v6 + 40) = 0;
    *(v6 + 24) = 0uLL;
    *(v6 + 24) = *(v5 + 24);
    *(v6 + 40) = *(v5 + 5);
    *(v5 + 5) = 0;
    *(v5 + 24) = 0uLL;
    v8 = v5[3];
    v9 = v5[5];
    v10 = *(v5 + 12);
    *(v6 + 64) = v5[4];
    *(v6 + 80) = v9;
    *(v6 + 48) = v8;
    *(v6 + 96) = v10;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0uLL;
    *(v6 + 104) = *(v5 + 104);
    *(v6 + 120) = *(v5 + 15);
    *(v5 + 15) = 0;
    *(v5 + 104) = 0uLL;
    *(v6 + 144) = 0;
    *(v6 + 128) = 0uLL;
    *(v6 + 128) = v5[8];
    *(v6 + 144) = *(v5 + 18);
    *(v5 + 18) = 0;
    v5[8] = 0uLL;
    *(v6 + 168) = 0;
    *(v6 + 152) = 0uLL;
    *(v6 + 152) = *(v5 + 152);
    *(v6 + 168) = *(v5 + 21);
    *(v5 + 21) = 0;
    *(v5 + 152) = 0uLL;
    v11 = v5[12];
    v12 = *(v5 + 26);
    *(v6 + 176) = v5[11];
    *(v6 + 192) = v11;
    *(v6 + 208) = v12;
    *(v6 + 216) = 0;
    *(v6 + 224) = 0uLL;
    *(v6 + 216) = *(v5 + 216);
    *(v6 + 232) = *(v5 + 29);
    *(v5 + 29) = 0;
    *(v5 + 216) = 0uLL;
    *(v6 + 256) = 0;
    *(v6 + 240) = 0uLL;
    *(v6 + 240) = v5[15];
    *(v6 + 256) = *(v5 + 32);
    *(v5 + 32) = 0;
    v5[15] = 0uLL;
    v13 = *(v5 + 264);
    v14 = *(v5 + 296);
    *(v6 + 280) = *(v5 + 280);
    *(v6 + 296) = v14;
    *(v6 + 264) = v13;
    v15 = *(v5 + 424);
    v17 = *(v5 + 376);
    v16 = *(v5 + 392);
    *(v6 + 408) = *(v5 + 408);
    *(v6 + 424) = v15;
    *(v6 + 376) = v17;
    *(v6 + 392) = v16;
    v18 = *(v5 + 488);
    v20 = *(v5 + 440);
    v19 = *(v5 + 456);
    *(v6 + 472) = *(v5 + 472);
    *(v6 + 488) = v18;
    *(v6 + 440) = v20;
    *(v6 + 456) = v19;
    v21 = *(v5 + 312);
    v22 = *(v5 + 328);
    v23 = *(v5 + 360);
    *(v6 + 344) = *(v5 + 344);
    *(v6 + 360) = v23;
    *(v6 + 312) = v21;
    *(v6 + 328) = v22;
    *(v6 + 504) = *(v5 + 63);
    *(v6 + 512) = v5[32];
    *(v5 + 65) = 0;
    *(v5 + 504) = 0uLL;
    *(v6 + 544) = 0;
    *(v6 + 528) = 0uLL;
    *(v6 + 528) = v5[33];
    *(v6 + 544) = *(v5 + 68);
    *(v5 + 68) = 0;
    v5[33] = 0uLL;
    v5 = (v5 + 552);
    v6 += 552;
  }

  while (v5 < a3);
  *(result + 8) = v6;
  if (v4 != a4)
  {
LABEL_7:
    v24 = v4 - 552;
    v25 = a4 - v4;
    v26 = (a2 + v4 - 552 - a4);
    do
    {
      result = sub_49C304(v24, v26);
      v24 -= 552;
      v26 = (v26 - 552);
      v25 += 552;
    }

    while (v25);
  }

  return result;
}

uint64_t sub_49C15C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  for (result = a4; a2 != a3; result += 552)
  {
    v5 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(result + 40) = 0;
    *(result + 24) = 0uLL;
    *(result + 24) = *(a2 + 24);
    *(result + 40) = *(a2 + 5);
    *(a2 + 5) = 0;
    *(a2 + 24) = 0uLL;
    v6 = a2[3];
    v7 = a2[5];
    v8 = *(a2 + 12);
    *(result + 64) = a2[4];
    *(result + 80) = v7;
    *(result + 48) = v6;
    *(result + 96) = v8;
    *(result + 104) = 0;
    *(result + 112) = 0uLL;
    *(result + 104) = *(a2 + 104);
    *(result + 120) = *(a2 + 15);
    *(a2 + 15) = 0;
    *(a2 + 104) = 0uLL;
    *(result + 144) = 0;
    *(result + 128) = 0uLL;
    *(result + 128) = a2[8];
    *(result + 144) = *(a2 + 18);
    *(a2 + 18) = 0;
    a2[8] = 0uLL;
    *(result + 168) = 0;
    *(result + 152) = 0uLL;
    *(result + 152) = *(a2 + 152);
    *(result + 168) = *(a2 + 21);
    *(a2 + 21) = 0;
    *(a2 + 152) = 0uLL;
    v9 = a2[12];
    v10 = *(a2 + 26);
    *(result + 176) = a2[11];
    *(result + 192) = v9;
    *(result + 208) = v10;
    *(result + 216) = 0;
    *(result + 224) = 0uLL;
    *(result + 216) = *(a2 + 216);
    *(result + 232) = *(a2 + 29);
    *(a2 + 29) = 0;
    *(a2 + 216) = 0uLL;
    *(result + 256) = 0;
    *(result + 240) = 0uLL;
    *(result + 240) = a2[15];
    *(result + 256) = *(a2 + 32);
    *(a2 + 32) = 0;
    a2[15] = 0uLL;
    v11 = *(a2 + 264);
    v12 = *(a2 + 296);
    *(result + 280) = *(a2 + 280);
    *(result + 296) = v12;
    *(result + 264) = v11;
    v13 = *(a2 + 424);
    v15 = *(a2 + 376);
    v14 = *(a2 + 392);
    *(result + 408) = *(a2 + 408);
    *(result + 424) = v13;
    *(result + 376) = v15;
    *(result + 392) = v14;
    v16 = *(a2 + 488);
    v18 = *(a2 + 440);
    v17 = *(a2 + 456);
    *(result + 472) = *(a2 + 472);
    *(result + 488) = v16;
    *(result + 440) = v18;
    *(result + 456) = v17;
    v19 = *(a2 + 312);
    v20 = *(a2 + 328);
    v21 = *(a2 + 360);
    *(result + 344) = *(a2 + 344);
    *(result + 360) = v21;
    *(result + 312) = v19;
    *(result + 328) = v20;
    *(result + 504) = *(a2 + 63);
    *(result + 512) = a2[32];
    *(a2 + 65) = 0;
    *(a2 + 504) = 0uLL;
    *(result + 544) = 0;
    *(result + 528) = 0uLL;
    *(result + 528) = a2[33];
    *(result + 544) = *(a2 + 68);
    *(a2 + 68) = 0;
    a2[33] = 0uLL;
    a2 = (a2 + 552);
  }

  return result;
}