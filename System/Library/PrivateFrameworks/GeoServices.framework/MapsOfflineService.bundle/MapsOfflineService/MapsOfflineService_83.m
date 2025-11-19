void sub_5445D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_1AB28(&a39);
  sub_1AB28(v44 - 144);
  _Unwind_Resume(a1);
}

void sub_5447C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_544800()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = sub_527724(v0, v1);
  sub_5678A8(v6 + 1576, v4, v2);
  sub_5597A0(v5 + 3168);
}

void sub_545160(_Unwind_Exception *a1)
{
  sub_1F1A8(v3 - 112);
  sub_1AB28(v1 + v2);
  sub_1F1A8(v1 + 5872);
  sub_559B98(v1 + 3168);
  sub_6E3B8((v1 + 3152));
  sub_528AB4(v1 + 1576);
  sub_528AB4(v1);
  _Unwind_Resume(a1);
}

void sub_545248(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_559C9C(a3);
  if (*(a1 + 1463) == 1)
  {
    sub_5452B0(a1, a2, a3);
  }
}

void sub_5452B0(uint64_t a1, uint64_t *a2, void *a3)
{
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v5 = *a2;
  v6 = a2[1];
  v49 = &v57;
  v50 = 0;
  v7 = (v6 - v5);
  if (v6 != v5)
  {
    if ((0x1F693A1C451AB30BLL * (v7 >> 4)) < 0x1920FB49D0E229)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = 0x1F693A1C451AB30BLL * ((v5 - v6) >> 4);
  if (-v7 >= 1)
  {
    v8 = v13;
    while (1)
    {
      v9 = operator new(2608 * v8, &std::nothrow);
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
        goto LABEL_11;
      }
    }

    v12 = v9;
  }

  else
  {
    v12 = 0;
    v8 = 0;
  }

LABEL_11:
  sub_5626D8(v7, 0, &v49, v13, v12, v8);
  if (v12)
  {
    operator delete(v12);
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v14 = a2[1] - *a2;
  if (v14)
  {
    v15 = 0;
    v16 = 0x1F693A1C451AB30BLL * (v14 >> 4);
    v17 = a3 + 133;
    v18 = -1;
    while (1)
    {
      v19 = *a2 + 2608 * v15;
      v20 = *v19;
      if (*v19 != 45 && v20 != 52 && *(v19 + 1448) == -1 && (v20 & 0xFFFFFFFE) != 0x30 && *(v19 + 1452) == -1)
      {
        break;
      }

      v22 = *(v19 + 1304);
      if ((v22 - 11) < 2)
      {
        break;
      }

      if ((*(v19 + 1447) & 0x8000000000000000) != 0)
      {
        if (*(v19 + 1432))
        {
          break;
        }
      }

      else if (*(v19 + 1447))
      {
        break;
      }

      if (*(v19 + 1176) != *(v19 + 1184) || *(v19 + 1200) != *(v19 + 1208))
      {
        goto LABEL_63;
      }

      v31 = v22 - 2;
      v32 = *(v19 + 1224) == *(v19 + 1232) && v31 >= 9;
      if (!v32 || *(v19 + 1248) == 1 && *(v19 + 1256) != *(v19 + 1264))
      {
        goto LABEL_63;
      }

      if (sub_659540(v19 + 32))
      {
        v33 = *(v19 + 1175);
        if (v33 < 0)
        {
          v33 = *(v19 + 1160);
        }

        if (v33)
        {
          goto LABEL_63;
        }
      }

      if (*(v19 + 1448) == -1 && *(v19 + 1452) == -1 && !sub_659BD0(v19 + 1488) && (*v19 & 0xFFFFFFFE) != 0x30)
      {
        sub_547960(a1, v19, &v49);
        v36 = a3[134];
        if (v36 >= a3[135])
        {
          v38 = sub_55A36C(v17, &v49);
        }

        else
        {
          sub_55A4D0(v36, &v49);
          v38 = v37 + 496;
        }

        a3[134] = v38;
        sub_55A8B4(&v49);
      }

      else
      {
LABEL_63:
        if (v18 < 0)
        {
          v18 = -1108378657 * ((a3[134] - a3[133]) >> 4);
          v34 = v52;
          if (v52 >= v53)
          {
LABEL_70:
            v52 = sub_52D920(&v51, v19);
            goto LABEL_31;
          }
        }

        else
        {
          v34 = v52;
          if (v52 >= v53)
          {
            goto LABEL_70;
          }
        }

        sub_52DA74(v34, v19);
        v52 = v34 + 2608;
      }

LABEL_31:
      v25 = 0x1F693A1C451AB30BLL * ((a2[1] - *a2) >> 4) - 1;
      if (v15 == v25 || v15 < v25 && (*v19 - 50) < 0xFFFFFFFE == ((*(*a2 + 2608 * v15 + 2608) & 0xFFFFFFFE) == 48))
      {
        if ((0x1F693A1C451AB30BLL * ((v52 - v51) >> 4)) > 1)
        {
          goto LABEL_35;
        }

        if (v51 == v52)
        {
          if (v54 != v55)
          {
            sub_54741C(a1, &v54, &v49);
          }
        }

        else
        {
          if (v54 == v55)
          {
            v35 = *v17;
            sub_547960(a1, v51, &v49);
            sub_53C468(v17, v35 + 496 * v18, &v49);
          }

          else
          {
LABEL_35:
            v26 = *v17;
            sub_547CDC(a1, &v51, &v54, &v49);
            sub_53C468(v17, v26 + 496 * v18, &v49);
          }

          sub_55A8B4(&v49);
        }

        v28 = v54;
        v27 = v55;
        if (v55 != v54)
        {
          do
          {
            v27 = sub_52E078(v27 - 2608);
          }

          while (v27 != v28);
        }

        v55 = v28;
        v30 = v51;
        v29 = v52;
        if (v52 != v51)
        {
          do
          {
            v29 = sub_52E078(v29 - 2608);
          }

          while (v29 != v30);
        }

        v52 = v30;
        v18 = -1;
      }

      if (++v15 == v16)
      {
        v39 = v51;
        if (v51)
        {
          v40 = v52;
          v41 = v51;
          if (v52 != v51)
          {
            do
            {
              v40 = sub_52E078(v40 - 2608);
            }

            while (v40 != v39);
            v41 = v51;
          }

          v52 = v39;
          operator delete(v41);
        }

        goto LABEL_80;
      }
    }

    v23 = v55;
    if (v55 >= v56)
    {
      v24 = sub_52D920(&v54, *a2 + 2608 * v15);
    }

    else
    {
      sub_52DA74(v55, *a2 + 2608 * v15);
      v24 = v23 + 2608;
    }

    v55 = v24;
    goto LABEL_31;
  }

LABEL_80:
  v42 = v54;
  if (v54)
  {
    v43 = v55;
    v44 = v54;
    if (v55 != v54)
    {
      do
      {
        v43 = sub_52E078(v43 - 2608);
      }

      while (v43 != v42);
      v44 = v54;
    }

    v55 = v42;
    operator delete(v44);
  }

  v45 = v57;
  if (v57)
  {
    v46 = v58;
    v47 = v57;
    if (v58 != v57)
    {
      do
      {
        v46 = sub_52E078(v46 - 2608);
      }

      while (v46 != v45);
      v47 = v57;
    }

    v58 = v45;
    operator delete(v47);
  }
}

void sub_5458A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55A8B4(va);
  sub_518B48((v3 - 160));
  sub_518B48((v3 - 136));
  sub_518B48((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_54593C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v5)
  {
    v8 = v4 - 2608;
    v9 = -v5;
    do
    {
      v8 = sub_52E078(v8) - 2608;
      v9 += 2608;
    }

    while (v9);
  }

  *(v6 - 104) = v3;
  sub_55F8BC(va);
  _Unwind_Resume(a1);
}

void ***sub_545970(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_559C9C(v7);
  if (*(a1 + 1463) == 1)
  {
    sub_5452B0(a1, a2, v7);
  }

  else if (*(a1 + 1415) == 1)
  {
    sub_545A28(a1, a2, v7);
  }

  else
  {
    sub_545E98(a1, a2, v7);
  }

  sub_68DEC8(a3, v7);
  return sub_559E70(v7);
}

void sub_545A28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return;
  }

  do
  {
    if (!sub_51BBA8(v3))
    {
      goto LABEL_5;
    }

    _X8 = v3 + 3912;
    __asm { PRFM            #0, [X8] }

    if ((*(v3 + 1304) - 2) <= 8)
    {
      sub_546568(a1, v3, v27);
    }

    v14 = sub_659540(v3 + 32);
    _X8 = v3 + 3783;
    __asm { PRFM            #0, [X8] }

    if (v14)
    {
      if ((*(v3 + 1175) & 0x8000000000000000) != 0)
      {
        if (*(v3 + 1160))
        {
LABEL_12:
          sub_546B18(a1, v3, v27);
        }
      }

      else if (*(v3 + 1175))
      {
        goto LABEL_12;
      }
    }

    _X9 = v3 + 4056;
    _X8 = v3 + 2608;
    __asm { PRFM            #0, [X8] }

    v20 = *v3;
    __asm { PRFM            #0, [X9] }

    if (*v3 != 52)
    {
      if (v20 == 45)
      {
        sub_548688(a1, v3, v27);
      }

      if (*(v3 + 1448) == -1 && (v20 & 0xFFFFFFFE) != 0x30 && *(v3 + 1452) == -1)
      {
        goto LABEL_26;
      }
    }

    v22 = *(v3 + 1304);
    if ((v22 - 11) < 2)
    {
LABEL_26:
      v23 = v29;
      if (v29 >= v30)
      {
        v7 = sub_52D920(&v28, v3);
      }

      else
      {
        sub_52DA74(v29, v3);
        v7 = v23 + 2608;
      }

      v29 = v7;
      goto LABEL_5;
    }

    if ((*(v3 + 1447) & 0x8000000000000000) != 0)
    {
      if (*(v3 + 1432))
      {
        goto LABEL_26;
      }
    }

    else if (*(v3 + 1447))
    {
      goto LABEL_26;
    }

    if (*(v3 + 1176) != *(v3 + 1184) || *(v3 + 1200) != *(v3 + 1208) || *(v3 + 1224) != *(v3 + 1232))
    {
      sub_546EF8(a1, v3, v27);
    }

    if (*(v3 + 1248) != 2)
    {
      if (sub_4D1F6C((a3 + 48)))
      {
        sub_547224(a1, v3, v27);
      }

      sub_547224(a1, v3, v27);
    }

    if (v22 != 13)
    {
      sub_548688(a1, v3, v27);
    }

LABEL_5:
    v3 += 2608;
  }

  while (v3 != v4);
  v24 = v28;
  if (v28 != v29)
  {
    sub_54741C(a1, &v28, v27);
  }

  if (v28)
  {
    v25 = v29;
    v26 = v28;
    if (v29 != v28)
    {
      do
      {
        v25 = sub_52E078(v25 - 2608);
      }

      while (v25 != v24);
      v26 = v28;
    }

    v29 = v24;
    operator delete(v26);
  }
}

void sub_545D9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_55A8B4(va);
  sub_518B48((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_545E98(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v3 = a2[1] - *a2;
  if (!v3)
  {
    return;
  }

  v7 = 0;
  v8 = 0x1F693A1C451AB30BLL * (v3 >> 4);
  do
  {
    v10 = (*a2 + 2608 * v7);
    if (!sub_51BBA8(v10))
    {
      goto LABEL_5;
    }

    if ((*v10 - 40) <= 4)
    {
      v11 = v43;
      if (v43 >= v44)
      {
        v9 = sub_52D920(&v42, v10);
      }

      else
      {
        sub_52DA74(v43, v10);
        v9 = v11 + 2608;
      }

      v43 = v9;
      goto LABEL_5;
    }

    sub_5678AC(a1 + 1576, v10, &v34);
    sub_67F320(&v34, v40);
    if (v41 < 0)
    {
      if (v40[1])
      {
        goto LABEL_15;
      }

      operator delete(v40[0]);
      v12 = v37;
      if (!v37)
      {
        goto LABEL_38;
      }

      while (1)
      {
LABEL_26:
        v17 = *v12;
        if (*(v12 + 191) < 0)
        {
          operator delete(v12[21]);
          if (*(v12 + 159) < 0)
          {
            goto LABEL_33;
          }

LABEL_28:
          if ((*(v12 + 135) & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

LABEL_34:
          operator delete(v12[14]);
          if (*(v12 + 95) < 0)
          {
            goto LABEL_35;
          }

LABEL_30:
          if ((*(v12 + 63) & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

LABEL_24:
          operator delete(v12[5]);
          if (*(v12 + 39) < 0)
          {
            goto LABEL_37;
          }

LABEL_25:
          operator delete(v12);
          v12 = v17;
          if (!v17)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if ((*(v12 + 159) & 0x80000000) == 0)
          {
            goto LABEL_28;
          }

LABEL_33:
          operator delete(v12[17]);
          if (*(v12 + 135) < 0)
          {
            goto LABEL_34;
          }

LABEL_29:
          if ((*(v12 + 95) & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

LABEL_35:
          operator delete(v12[9]);
          if (*(v12 + 63) < 0)
          {
            goto LABEL_24;
          }

LABEL_36:
          if ((*(v12 + 39) & 0x80000000) == 0)
          {
            goto LABEL_25;
          }

LABEL_37:
          operator delete(v12[2]);
          operator delete(v12);
          v12 = v17;
          if (!v17)
          {
            goto LABEL_38;
          }
        }
      }
    }

    if (!v41)
    {
      v12 = v37;
      if (v37)
      {
        goto LABEL_26;
      }

LABEL_38:
      v18 = __p;
      __p = 0;
      if (v18)
      {
        operator delete(v18);
      }

      v19 = v34;
      if (v34)
      {
        v20 = v35;
        v21 = v34;
        if (v35 == v34)
        {
          goto LABEL_74;
        }

        do
        {
          v22 = *(v20 - 1);
          v20 -= 3;
          if (v22 < 0)
          {
            operator delete(*v20);
          }
        }

        while (v20 != v19);
LABEL_73:
        v21 = v34;
LABEL_74:
        v35 = v19;
        operator delete(v21);
        goto LABEL_5;
      }

      goto LABEL_5;
    }

LABEL_15:
    sub_546460(a1, 1, &v34);
    v13 = sub_58BBC(&v34);
    sub_65DED0(a1 + 3168, v40, v13, 0, &v38);
    v14 = *(a3 + 8);
    if (v14 >= *(a3 + 16))
    {
      *(a3 + 8) = sub_1CEE8(a3, &v38);
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (SHIBYTE(v39) < 0)
      {
        sub_325C(*(a3 + 8), v38, *(&v38 + 1));
      }

      else
      {
        v15 = v38;
        *(v14 + 16) = v39;
        *v14 = v15;
      }

      *(a3 + 8) = v14 + 24;
      *(a3 + 8) = v14 + 24;
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
LABEL_19:
        if (v41 < 0)
        {
          goto LABEL_49;
        }

        goto LABEL_20;
      }
    }

    operator delete(v38);
    if (v41 < 0)
    {
LABEL_49:
      operator delete(v40[0]);
      v16 = v37;
      if (!v37)
      {
        goto LABEL_65;
      }

      while (1)
      {
LABEL_53:
        v23 = *v16;
        if (*(v16 + 191) < 0)
        {
          operator delete(v16[21]);
          if (*(v16 + 159) < 0)
          {
            goto LABEL_60;
          }

LABEL_55:
          if ((*(v16 + 135) & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

LABEL_61:
          operator delete(v16[14]);
          if (*(v16 + 95) < 0)
          {
            goto LABEL_62;
          }

LABEL_57:
          if ((*(v16 + 63) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

LABEL_51:
          operator delete(v16[5]);
          if (*(v16 + 39) < 0)
          {
            goto LABEL_64;
          }

LABEL_52:
          operator delete(v16);
          v16 = v23;
          if (!v23)
          {
            goto LABEL_65;
          }
        }

        else
        {
          if ((*(v16 + 159) & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_60:
          operator delete(v16[17]);
          if (*(v16 + 135) < 0)
          {
            goto LABEL_61;
          }

LABEL_56:
          if ((*(v16 + 95) & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

LABEL_62:
          operator delete(v16[9]);
          if (*(v16 + 63) < 0)
          {
            goto LABEL_51;
          }

LABEL_63:
          if ((*(v16 + 39) & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

LABEL_64:
          operator delete(v16[2]);
          operator delete(v16);
          v16 = v23;
          if (!v23)
          {
            goto LABEL_65;
          }
        }
      }
    }

LABEL_20:
    v16 = v37;
    if (v37)
    {
      goto LABEL_53;
    }

LABEL_65:
    v24 = __p;
    __p = 0;
    if (v24)
    {
      operator delete(v24);
    }

    v19 = v34;
    if (v34)
    {
      v25 = v35;
      v21 = v34;
      if (v35 == v34)
      {
        goto LABEL_74;
      }

      do
      {
        v26 = *(v25 - 1);
        v25 -= 3;
        if (v26 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v19);
      goto LABEL_73;
    }

LABEL_5:
    ++v7;
  }

  while (v7 != v8);
  v27 = v42;
  if (v42 != v43)
  {
    sub_54DF3C(&v42, &v34);
    v28 = sub_53A634(&v34, 0);
    v29 = *(a3 + 8);
    if (v29 >= *(a3 + 16))
    {
      v31 = sub_1CEE8(a3, v28);
    }

    else
    {
      if (*(v28 + 23) < 0)
      {
        sub_325C(*(a3 + 8), *v28, *(v28 + 8));
      }

      else
      {
        v30 = *v28;
        *(v29 + 16) = *(v28 + 16);
        *v29 = v30;
      }

      v31 = v29 + 24;
      *(a3 + 8) = v29 + 24;
    }

    *(a3 + 8) = v31;
    sub_53A868(&v34);
    v27 = v42;
  }

  if (v27)
  {
    v32 = v43;
    v33 = v27;
    if (v43 != v27)
    {
      do
      {
        v32 = sub_52E078(v32 - 2608);
      }

      while (v32 != v27);
      v33 = v42;
    }

    v43 = v27;
    operator delete(v33);
  }
}

void sub_546360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_53A868(va);
  sub_518B48((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_546394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  sub_518B48((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_5463B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  if (*(v4 - 129) < 0)
  {
    operator delete(*(v4 - 152));
  }

  if (*(v4 - 105) < 0)
  {
    operator delete(*(v4 - 128));
  }

  sub_53A58C(va);
  sub_518B48((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_546460(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    *__p = 0u;
    v8 = 0u;
    v9 = 1065353216;
    sub_65DED0(a1 + 3168, "Period", __p, 0, v10);
    v4 = v8;
    if (v8)
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

    v6 = __p[0];
    __p[0] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    v11 = 0;
    LOBYTE(v10[0]) = 0;
  }

  sub_67ECF8(a3, "{OptionalPeriod}", v10);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_54654C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_546A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, uint64_t a63)
{
  sub_53A58C(&a64);
  sub_53A58C((v65 - 120));
  sub_55A8B4(v64);
  _Unwind_Resume(a1);
}

void sub_546E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  sub_55D550(&a9);
  if (a62 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C((v63 - 120));
  sub_55A8B4(v62);
  _Unwind_Resume(a1);
}

void sub_547180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_51B6E0(va);
  sub_55A8B4(v2);
  _Unwind_Resume(a1);
}

void sub_5471E8(_Unwind_Exception *a1)
{
  if (v3)
  {
    v6 = v2 - 168;
    v7 = -v3;
    do
    {
      v6 = sub_52A624(v6) - 168;
      v7 += 168;
    }

    while (v7);
  }

  sub_52A6FC((v4 - 104));
  sub_55A8B4(v1);
  _Unwind_Resume(a1);
}

void sub_547398(_Unwind_Exception *a1)
{
  sub_53DC88((v2 - 104));
  sub_55A8B4(v1);
  _Unwind_Resume(a1);
}

void sub_5473F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53DC88((v16 - 104));
  sub_55A8B4(v15);
  _Unwind_Resume(a1);
}

void sub_54741C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  *(a3 + 384) = 0;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 399) = 0;
  *(a3 + 423) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0;
  *(a3 + 456) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    if ((*v6 - 40) > 4)
    {
      v10 = v23;
      if (v23 >= v24)
      {
        v8 = sub_52D920(&v22, v6);
      }

      else
      {
        sub_52DA74(v23, v6);
        v8 = v10 + 2608;
      }

      v23 = v8;
      v6 += 652;
    }

    else
    {
      v9 = v20;
      if (v20 >= v21)
      {
        v20 = sub_52D920(&v19, v6);
      }

      else
      {
        sub_52DA74(v20, v6);
        v20 = v9 + 2608;
      }

      v6 += 652;
    }
  }

  sub_54D7D8(a1, &v22, &v19, __p);
  sub_53D784(a3, __p);
  sub_53A868(__p);
  v11 = *(a3 + 176);
  if (v11 >= *(a3 + 184))
  {
    v12 = sub_55D320((a3 + 168));
  }

  else
  {
    *(v11 + 768) = 0;
    *(v11 + 776) = 0;
    *(v11 + 792) = 0;
    v12 = v11 + 800;
    *(v11 + 784) = 0;
  }

  *(a3 + 176) = v12;
  sub_54D980(a1, a2, __p);
  v13 = *(a3 + 176);
  v14 = v13 - 800;
  v15 = *(v13 - 32);
  if (v15 != 2)
  {
    if (v15)
    {
      sub_5AF20();
    }

    *(v13 - 32) = -1;
    v14 = sub_55D480(v14);
    *(v13 - 32) = 2;
  }

  sub_53D784(v14, __p);
  sub_53A868(__p);
  sub_54D7D8(a1, &v22, &v19, __p);
  v16 = *(a3 + 176);
  v17 = *(v16 - 32);
  if (v17 != 2)
  {
    if (v17)
    {
      sub_5AF20();
    }

    *(v16 - 32) = -1;
    sub_55D480(v16 - 800);
    *(v16 - 32) = 2;
  }

  sub_53D784(v16 - 640, __p);
  sub_53A868(__p);
  *(a3 + 160) = 0;
  sub_549198(a1, *a2);
}

void sub_547898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_518B48((v16 - 120));
  sub_518B48((v16 - 96));
  sub_55A8B4(v15);
  _Unwind_Resume(a1);
}

void sub_547960(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  *(a3 + 384) = 0;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 399) = 0;
  *(a3 + 423) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0;
  *(a3 + 456) = 0;
  v6 = *(a2 + 1304) - 2;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  if (v6 <= 8)
  {
    sub_546568(a1, a2, __p);
  }

  if (sub_659540(a2 + 32))
  {
    v7 = *(a2 + 1175);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 1160);
    }

    if (v7)
    {
      sub_546B18(a1, a2, __p);
    }
  }

  if (*a2 == 45)
  {
    sub_548688(a1, a2, __p);
  }

  if (*(a2 + 1176) != *(a2 + 1184) || *(a2 + 1200) != *(a2 + 1208) || *(a2 + 1224) != *(a2 + 1232))
  {
    sub_546EF8(a1, a2, __p);
  }

  if (*(a2 + 1248) != 2)
  {
    sub_547224(a1, a2, __p);
  }

  if (*(a2 + 1304) != 13)
  {
    sub_548688(a1, a2, __p);
  }

  if (*(a2 + 1376) != *(a2 + 1384))
  {
    sub_548E40(a1, a2, __p);
  }

  if (sub_53BB38(a2))
  {
    sub_548688(a1, a2, __p);
  }

  v8 = *(a2 + 1447);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 1432);
  }

  if (v8)
  {
    sub_548688(a1, a2, __p);
  }

  if (*(a2 + 1448) != -1 || *(a2 + 1452) != -1)
  {
    sub_5E00FC(__p);
  }

  if (*a2 == 49)
  {
    sub_54A3E0(a1);
  }

  if (*a2 == 48)
  {
    sub_549C48(a1);
  }

  if (sub_659BD0(a2 + 1488))
  {
    sub_54AB78(a1, a2, __p);
  }

  if (*(a3 + 464) == *(a3 + 472))
  {
    sub_53D408(a2, __p);
    sub_794D4(a3 + 464, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }
}

void sub_547CC0(_Unwind_Exception *a1)
{
  sub_55AA68(v2);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_547CDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_64B998(a4);
  *(a4 + 168) = 0;
  *(a4 + 160) = 0;
  *(a4 + 176) = 0;
  *(a4 + 184) = 0;
  sub_64B998(a4 + 192);
  *(a4 + 384) = 0;
  *(a4 + 392) = -1;
  *(a4 + 395) = -1;
  *(a4 + 407) = 0;
  *(a4 + 415) = 0;
  *(a4 + 399) = 0;
  *(a4 + 423) = 0;
  *(a4 + 440) = 0;
  *(a4 + 448) = 0;
  *(a4 + 432) = 0;
  *(a4 + 456) = 0;
  *(a4 + 464) = 0u;
  *(a4 + 480) = 0u;
  sub_54B4D4(a1, a2, v38);
  v37 = a4 + 352;
  v8 = *(a4 + 384);
  if (v8 == -1)
  {
    v9 = a1;
    if (v39 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v39 != -1)
  {
LABEL_5:
    v62 = a4 + 352;
    (off_266B280[v39])(&v62);
    goto LABEL_6;
  }

  (off_266B1F0[v8])(&v62, v37);
  *(a4 + 384) = -1;
LABEL_6:
  v9 = a1;
LABEL_7:
  *(a4 + 392) = v40;
  if (*(a4 + 423) < 0)
  {
    operator delete(*(a4 + 400));
    v9 = a1;
  }

  *(a4 + 400) = *__p;
  *(a4 + 416) = v42;
  HIBYTE(v42) = 0;
  LOBYTE(__p[0]) = 0;
  *(a4 + 424) = v43;
  if ((*(a4 + 455) & 0x80000000) == 0)
  {
    *(a4 + 432) = v44;
    *(a4 + 448) = v45;
    HIBYTE(v45) = 0;
    LOBYTE(v44) = 0;
    *(a4 + 456) = v46;
    v10 = v39;
    if (v39 == -1)
    {
      goto LABEL_11;
    }

LABEL_15:
    (off_266B1F0[v10])(&v62, v38);
    v9 = a1;
    *(a4 + 160) = 1;
    v11 = *a2;
    v35 = a2[1];
    if (*a2 == v35)
    {
      goto LABEL_64;
    }

    goto LABEL_16;
  }

  operator delete(*(a4 + 432));
  v9 = a1;
  v12 = SHIBYTE(v42);
  *(a4 + 432) = v44;
  *(a4 + 448) = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  *(a4 + 456) = v46;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    v9 = a1;
    v10 = v39;
    if (v39 != -1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = v39;
    if (v39 != -1)
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  *(a4 + 160) = 1;
  v11 = *a2;
  v35 = a2[1];
  if (*a2 != v35)
  {
LABEL_16:
    v33 = a3;
    v34 = a2;
    v32 = v9;
    do
    {
      v36 = v11;
      sub_547960(v9, v11, v38);
      v14 = v47;
      v13 = v48;
      while (v14 != v13)
      {
        if (*(v14 + 768) != 2 || sub_55DD5C(v49, v37))
        {
          goto LABEL_56;
        }

        v16 = *(v14 + 768);
        if (v16 != 2)
        {
          if (v16)
          {
            sub_5AF20();
          }

          *(v14 + 768) = -1;
          bzero(v14, 0x300uLL);
          sub_64B998(v14);
          sub_64B998(v14 + 160);
          *(v14 + 352) = 0;
          *(v14 + 360) = -1;
          *(v14 + 363) = -1;
          *(v14 + 375) = 0;
          *(v14 + 383) = 0;
          *(v14 + 367) = 0;
          *(v14 + 391) = 0;
          *(v14 + 408) = 0;
          *(v14 + 416) = 0;
          *(v14 + 400) = 0;
          *(v14 + 424) = 0;
          sub_64B998(v14 + 432);
          sub_64B998(v14 + 592);
          *(v14 + 752) = xmmword_2291330;
          *(v14 + 768) = 2;
        }

        v17 = *(v14 + 352);
        if (v17 == -1)
        {
          if (v50 != -1)
          {
LABEL_30:
            v62 = v14 + 320;
            (off_266B2A8[v50])(&v62, v14 + 320, v49);
          }
        }

        else
        {
          if (v50 != -1)
          {
            goto LABEL_30;
          }

          (off_266B1F0[v17])(&v62, v14 + 320);
          *(v14 + 352) = -1;
        }

        *(v14 + 360) = v51;
        if ((v14 + 320) == v49)
        {
          *(v14 + 392) = v54;
        }

        else
        {
          if (*(v14 + 391) < 0)
          {
            if (v53 >= 0)
            {
              v19 = &v52;
            }

            else
            {
              v19 = v52;
            }

            if (v53 >= 0)
            {
              v20 = HIBYTE(v53);
            }

            else
            {
              v20 = *(&v52 + 1);
            }

            sub_13B38(v14 + 368, v19, v20);
          }

          else if (v53 < 0)
          {
            sub_13A68((v14 + 368), v52, *(&v52 + 1));
          }

          else
          {
            v18 = v52;
            *(v14 + 384) = v53;
            *(v14 + 368) = v18;
          }

          *(v14 + 392) = v54;
          if (*(v14 + 423) < 0)
          {
            if (v56 >= 0)
            {
              v22 = &v55;
            }

            else
            {
              v22 = v55;
            }

            if (v56 >= 0)
            {
              v23 = HIBYTE(v56);
            }

            else
            {
              v23 = *(&v55 + 1);
            }

            sub_13B38(v14 + 400, v22, v23);
          }

          else if (v56 < 0)
          {
            sub_13A68((v14 + 400), v55, *(&v55 + 1));
          }

          else
          {
            v21 = v55;
            *(v14 + 416) = v56;
            *(v14 + 400) = v21;
          }
        }

        *(v14 + 424) = v57;
LABEL_56:
        v24 = *(a4 + 176);
        if (v24 >= *(a4 + 184))
        {
          v15 = sub_55E618((a4 + 168), v14);
        }

        else
        {
          *v24 = 0;
          *(v24 + 768) = -1;
          v25 = *(v14 + 768);
          if (v25 != -1)
          {
            v62 = v24;
            (off_266B2D0[v25])(&v62, v14);
            *(v24 + 768) = v25;
          }

          *(v24 + 792) = 0;
          *(v24 + 776) = 0u;
          v26 = *(v14 + 776);
          v27 = *(v14 + 784);
          v60 = v24 + 776;
          v61 = 0;
          if (v27 != v26)
          {
            if (0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3) < 0xAAAAAAAAAAAAAABLL)
            {
              operator new();
            }

            sub_1794();
          }

          v15 = v24 + 800;
        }

        *(a4 + 176) = v15;
        v14 += 800;
      }

      sub_93FE4(a4 + 464, *(a4 + 472), v58, v59, 0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 3));
      a3 = v33;
      a2 = v34;
      sub_55A8B4(v38);
      v11 = v36 + 2608;
      v9 = v32;
    }

    while (v36 + 2608 != v35);
  }

LABEL_64:
  if (*a3 != a3[1])
  {
    sub_54741C(v9, a3, v38);
  }

  v28 = v9;
  sub_54BD7C();
  sub_53D784(a4, v38);
  result = sub_53A868(v38);
  v30 = *(a4 + 168);
  v31 = *(a4 + 176);
  if (v30 != v31)
  {
    sub_5489C0(v28, 0x8F5C28F5C28F5C29 * ((v31 - v30) >> 5), v38);
    sub_53D784(a4 + 192, v38);
    result = sub_53A868(v38);
  }

  *(a4 + 492) = (**a2 & 0xFFFFFFFE) == 48;
  return result;
}

void sub_5484F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_55ABBC(v15);
  *(v14 + 176) = v15;
  sub_55A8B4(va);
  sub_55A8B4(v14);
  _Unwind_Resume(a1);
}

void sub_548540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_55A8B4(va);
  sub_55A8B4(v14);
  _Unwind_Resume(a1);
}

void sub_54864C()
{
  sub_746A0(v2 - 136);
  *(v1 + 784) = v0;
  JUMPOUT(0x54865CLL);
}

void sub_548688(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  *(a3 + 384) = 0;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 399) = 0;
  *(a3 + 423) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0;
  *(a3 + 456) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  sub_54D3B8(a1, a2, v8);
  sub_53D784(a3, v8);
  sub_53A868(v8);
  if (*(a2 + 1176) != *(a2 + 1184) || *(a2 + 1200) != *(a2 + 1208) || *(a2 + 1224) != *(a2 + 1232) || (*(a2 + 1304) - 2) < 9 || *(a2 + 1248) == 1 && *(a2 + 1256) != *(a2 + 1264))
  {
    goto LABEL_17;
  }

  if (sub_659540(a2 + 32))
  {
    if (*(a2 + 1175) >= 0)
    {
      v6 = *(a2 + 1175);
    }

    else
    {
      v6 = *(a2 + 1160);
    }

    v7 = 1;
    if (v6 || *(a2 + 1448) != -1)
    {
LABEL_18:
      *(a3 + 160) = v7;
      sub_549198(a1, a2);
    }
  }

  else if (*(a2 + 1448) != -1)
  {
    goto LABEL_17;
  }

  if (*(a2 + 1452) == -1 && !sub_659BD0(a2 + 1488))
  {
    v7 = (*a2 & 0xFFFFFFFE) == 48;
    goto LABEL_18;
  }

LABEL_17:
  v7 = 1;
  goto LABEL_18;
}

void sub_5489A4(_Unwind_Exception *a1)
{
  sub_55AA68(v2);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_5489C0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_56AFC8(a1 + 1576, a2, &v19);
  sub_67F320(&v19, __p);
  v5 = sub_58BBC(&v19);
  sub_65DED0(a1 + 3168, __p, v5, 0, v17);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  sub_6EDEC(*(a1 + 968), v13);
  sub_2C68(v17, v13, __p);
  sub_64BC20(a3, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
    if ((v14 & 0x80000000) == 0)
    {
LABEL_5:
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_21:
      operator delete(v17[0]);
      v6 = v22;
      if (!v22)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v13[0]);
  if (v18 < 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v6 = v22;
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_7:
    v7 = *v6;
    sub_55F7FC((v6 + 2));
    operator delete(v6);
    v6 = v7;
  }

  while (v7);
LABEL_8:
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = v19;
  if (v19)
  {
    v10 = v20;
    v11 = v19;
    if (v20 != v19)
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
      v11 = v19;
    }

    v20 = v9;
    operator delete(v11);
  }
}

void sub_548B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void **a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
LABEL_8:
        sub_53A58C(&a27);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a21);
      goto LABEL_8;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_548BC4(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 1248);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v3)
  {
    memset(v8, 0, sizeof(v8));
    v4 = *(a1 + 1256);
    v5 = *(a1 + 1264);
    v6 = v8;
    v7 = 0;
    if (v5 != v4)
    {
      if (0xCF3CF3CF3CF3CF3DLL * ((v5 - v4) >> 3) < 0x186186186186187)
      {
        operator new();
      }

      sub_1794();
    }
  }
}

void sub_548DB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_52A6FC(va);
  sub_53DC88(v2);
  _Unwind_Resume(a1);
}

void sub_548DD4(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_51B6E0((v3 - 88));
  sub_53DC88(v1);
  _Unwind_Resume(a1);
}

void sub_548E04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v5)
  {
    v8 = v4 - 168;
    v9 = -v5;
    do
    {
      v8 = sub_52A624(v8) - 168;
      v9 += 168;
    }

    while (v9);
  }

  *(v6 - 80) = v3;
  sub_52A6FC(va);
  sub_53DC88(v2);
  _Unwind_Resume(a1);
}

void sub_548E40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  *(a3 + 384) = 0;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 399) = 0;
  *(a3 + 423) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0;
  *(a3 + 456) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  sub_75AED0((a1 + 5872), (a2 + 1376), &v8);
  sub_64C184(a3, &v8);
  if (*(a2 + 1176) != *(a2 + 1184) || *(a2 + 1200) != *(a2 + 1208) || *(a2 + 1224) != *(a2 + 1232) || (*(a2 + 1304) - 2) < 9 || *(a2 + 1248) == 1 && *(a2 + 1256) != *(a2 + 1264))
  {
    goto LABEL_17;
  }

  if (sub_659540(a2 + 32))
  {
    if (*(a2 + 1175) >= 0)
    {
      v6 = *(a2 + 1175);
    }

    else
    {
      v6 = *(a2 + 1160);
    }

    v7 = 1;
    if (v6 || *(a2 + 1448) != -1)
    {
LABEL_18:
      *(a3 + 160) = v7;
      sub_549198(a1, a2);
    }
  }

  else if (*(a2 + 1448) != -1)
  {
    goto LABEL_17;
  }

  if (*(a2 + 1452) == -1 && !sub_659BD0(a2 + 1488))
  {
    v7 = (*a2 & 0xFFFFFFFE) == 48;
    goto LABEL_18;
  }

LABEL_17:
  v7 = 1;
  goto LABEL_18;
}

void sub_549140(_Unwind_Exception *a1)
{
  if (*(v2 - 41) < 0)
  {
    operator delete(*(v2 - 64));
  }

  sub_55A8B4(v1);
  _Unwind_Resume(a1);
}

void sub_549198(uint64_t a1, uint64_t a2)
{
  if (sub_659540(a2 + 32))
  {
    v3 = *(a2 + 1175);
    if ((v3 & 0x80u) != 0)
    {
      v3 = *(a2 + 1160);
    }

    if (v3)
    {
      v4 = *(a2 + 832);
      if (v4 > 0x16)
      {
LABEL_6:
        v5 = 4;
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  if (sub_659BD0(a2 + 1488))
  {
    v4 = *(a2 + 2288);
    if (v4 > 0x16)
    {
      goto LABEL_6;
    }

LABEL_9:
    v5 = dword_2298D9C[v4] | dword_2298D40[v4];
    goto LABEL_10;
  }

  if (*(a2 + 1248) == 2)
  {
    v6 = *(a2 + 1176);
    v7 = *(a2 + 1184);
    if (v6 != v7)
    {
      __p[0] = 0;
      __p[1] = 0;
      v16 = 0;
      v17 = __p;
      v18 = 0;
      if (0xCF3CF3CF3CF3CF3DLL * ((v7 - v6) >> 3) < 0x186186186186187)
      {
        operator new();
      }

      sub_1794();
    }

    if (*(a2 + 1200) != *(a2 + 1208) || *(a2 + 1224) != *(a2 + 1232))
    {
      sub_587F3C(4);
    }

    if (*a2 == 45)
    {
LABEL_23:
      v5 = 39;
      goto LABEL_10;
    }

    if ((*(a2 + 1304) - 2) >= 0xC)
    {
      v5 = 5;
    }

    else
    {
      if (*(a2 + 1376) == *(a2 + 1384))
      {
        if (!sub_53BB38(a2))
        {
          if ((*a2 - 48) >= 2)
          {
            if (*a2 == 51)
            {
              v5 = 38;
            }

            else
            {
              v5 = 4;
            }
          }

          else
          {
            v5 = 51;
          }

          goto LABEL_10;
        }

        goto LABEL_23;
      }

      v5 = 6;
    }

LABEL_10:

    sub_587F3C(v5);
  }

  v8 = (a2 + 1280);
  if (*(a2 + 1303) < 0)
  {
    v10 = *(a2 + 1288);
    if (v10)
    {
      v11 = *v8;
      goto LABEL_39;
    }
  }

  else if (*(a2 + 1303))
  {
    *__p = *v8;
    v9 = *(a2 + 1296);
LABEL_35:
    v16 = v9;
    goto LABEL_40;
  }

  v12 = *(a2 + 1256);
  v13 = *(a2 + 1264);
  if (v12 != v13)
  {
    while (1)
    {
      v14 = *(v12 + 159);
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v12 + 144);
      }

      if (v14)
      {
        break;
      }

      v12 += 168;
      if (v12 == v13)
      {
        goto LABEL_36;
      }
    }
  }

  if (v12 == v13)
  {
LABEL_36:
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    goto LABEL_40;
  }

  if ((*(v12 + 159) & 0x80000000) == 0)
  {
    *__p = *(v12 + 136);
    v9 = *(v12 + 152);
    goto LABEL_35;
  }

  v11 = *(v12 + 136);
  v10 = *(v12 + 144);
LABEL_39:
  sub_325C(__p, v11, v10);
LABEL_40:
  sub_5885E4(__p);
}

void sub_549530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_54954C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

void sub_549560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v6)
  {
    v8 = v5 - 168;
    v9 = -v6;
    do
    {
      v8 = sub_52A624(v8) - 168;
      v9 += 168;
    }

    while (v9);
  }

  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

void sub_5498E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_56C570(a2, &v19);
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  sub_64FB18((a3 + 432), qword_2298CB0, __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = nullsub_1(&v19);
  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    v9 = sub_58BBC(&v19);
    sub_65DED0(a1 + 3168, v7, v9, 0, __p);
    sub_64C184(a3 + 432, __p);
    sub_54E3F0(a1, a2, __p, (a3 + 432));
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    v7 += 24;
  }

  v10 = v22;
  if (v22)
  {
    do
    {
      v11 = *v10;
      sub_55F7FC((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = v21;
  v21 = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
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
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }
}

void sub_549A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_549A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A58C(&a15);
    _Unwind_Resume(a1);
  }

  sub_53A58C(&a15);
  _Unwind_Resume(a1);
}

void sub_549A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_56CAE4(a2, &v19);
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  sub_64FB18((a3 + 592), qword_2298C98, __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = nullsub_1(&v19);
  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    v9 = sub_58BBC(&v19);
    sub_65DED0(a1 + 3168, v7, v9, 0, __p);
    sub_64C184(a3 + 592, __p);
    sub_54E3F0(a1, a2, __p, (a3 + 592));
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    v7 += 24;
  }

  v10 = v22;
  if (v22)
  {
    do
    {
      v11 = *v10;
      sub_55F7FC((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = v21;
  v21 = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
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
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }
}

void sub_549BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_549C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A58C(&a15);
    _Unwind_Resume(a1);
  }

  sub_53A58C(&a15);
  _Unwind_Resume(a1);
}

void sub_549C48(uint64_t a1)
{
  sub_64B998(v14);
  sub_64B998(v15);
  *&v15[192] = 0;
  memset(&v15[200], 255, 7);
  v17 = 0;
  v16 = 0uLL;
  v18 = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  sub_64B998(v23);
  sub_64B998(v24);
  v24[10] = xmmword_2291330;
  sub_56CC5C(&v13);
  sub_67F320(&v13, &v6);
  v2 = sub_58BBC(&v13);
  sub_65DED0(a1 + 3168, &v6, v2, 0, &__p);
  sub_64BC20(v12, &__p);
  sub_53D784(v14, v12);
  sub_53A868(v12);
  if (v11 < 0)
  {
    operator delete(__p);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v6);
LABEL_3:
  sub_56CC6C(&__p);
  sub_67F320(&__p, v4);
  v3 = sub_58BBC(&__p);
  sub_65DED0(a1 + 3168, v4, v3, 0, &v6);
  sub_64BC20(v12, &v6);
  sub_53D784(v15, v12);
  sub_53A868(v12);
  if (v7 < 0)
  {
    operator delete(v6);
    if ((v5 & 0x80000000) == 0)
    {
LABEL_5:
      if ((byte_2792647 & 0x80000000) == 0)
      {
LABEL_6:
        *v8 = xmmword_2792630;
        v9 = unk_2792640;
        goto LABEL_12;
      }

LABEL_11:
      sub_325C(v8, xmmword_2792630, *(&xmmword_2792630 + 1));
LABEL_12:
      sub_64BC20(v12, v8);
      sub_53D784(v23, v12);
      sub_53A868(v12);
      sub_56CC7C();
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v4[0]);
  if ((byte_2792647 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  goto LABEL_11;
}

void sub_54A1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if ((a14 & 0x80000000) == 0)
      {
LABEL_9:
        sub_53A58C(&a31);
        if (a45 < 0)
        {
          operator delete(a40);
        }

        sub_53A58C(&a47);
        sub_53A58C(&a72);
        sub_53F5F4(&STACK[0x200]);
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a9);
      goto LABEL_9;
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_54A3E0(uint64_t a1)
{
  sub_64B998(v14);
  sub_64B998(v15);
  *&v15[192] = 0;
  memset(&v15[200], 255, 7);
  v17 = 0;
  v16 = 0uLL;
  v18 = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  sub_64B998(v23);
  sub_64B998(v24);
  v24[10] = xmmword_2291330;
  sub_56CD38(&v13);
  sub_67F320(&v13, &v6);
  v2 = sub_58BBC(&v13);
  sub_65DED0(a1 + 3168, &v6, v2, 0, &__p);
  sub_64BC20(v12, &__p);
  sub_53D784(v14, v12);
  sub_53A868(v12);
  if (v11 < 0)
  {
    operator delete(__p);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v6);
LABEL_3:
  sub_56CD48(&__p);
  sub_67F320(&__p, v4);
  v3 = sub_58BBC(&__p);
  sub_65DED0(a1 + 3168, v4, v3, 0, &v6);
  sub_64BC20(v12, &v6);
  sub_53D784(v15, v12);
  sub_53A868(v12);
  if (v7 < 0)
  {
    operator delete(v6);
    if ((v5 & 0x80000000) == 0)
    {
LABEL_5:
      if ((byte_279265F & 0x80000000) == 0)
      {
LABEL_6:
        *v8 = xmmword_2792648;
        v9 = unk_2792658;
        goto LABEL_12;
      }

LABEL_11:
      sub_325C(v8, xmmword_2792648, *(&xmmword_2792648 + 1));
LABEL_12:
      sub_64BC20(v12, v8);
      sub_53D784(v23, v12);
      sub_53A868(v12);
      sub_56CC7C();
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v4[0]);
  if ((byte_279265F & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  goto LABEL_11;
}

void sub_54A974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if ((a14 & 0x80000000) == 0)
      {
LABEL_9:
        sub_53A58C(&a31);
        if (a45 < 0)
        {
          operator delete(a40);
        }

        sub_53A58C(&a47);
        sub_53A58C(&a72);
        sub_53F5F4(&STACK[0x200]);
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a9);
      goto LABEL_9;
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_54AB78(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(v31);
  sub_64B998(v32);
  *&v32[192] = 0;
  memset(&v32[200], 255, 7);
  v34 = 0;
  v33 = 0uLL;
  v35 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v39 = 0;
  sub_64B998(&__s);
  sub_64B998(v42);
  v42[10] = xmmword_2291330;
  sub_56A230(a2, &v30);
  HIBYTE(v27) = 0;
  LOBYTE(__p[0]) = 0;
  sub_67ECF8(&v30, "{OptionalPeriod}", __p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  sub_67F320(&v30, &v22);
  v6 = sub_58BBC(&v30);
  sub_65DED0(a1 + 3168, &v22, v6, 0, &v24);
  sub_64BC20(__p, &v24);
  sub_53D784(v31, __p);
  sub_53A868(__p);
  if (v25 < 0)
  {
    operator delete(v24);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v22);
LABEL_5:
  sub_56CD58(a2, &v24);
  sub_546460(a1, 1, &v24);
  sub_67F320(&v24, v18);
  v7 = sub_58BBC(&v24);
  sub_65DED0(a1 + 3168, v18, v7, 0, &v22);
  sub_64BC20(__p, &v22);
  sub_53D784(v32, __p);
  sub_53A868(__p);
  if (v23 < 0)
  {
    operator delete(v22);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v18[0]);
LABEL_7:
  sub_56CEA8(a2, &v22);
  if (!sub_6F390(&v22))
  {
    goto LABEL_10;
  }

  sub_67F320(&v22, v20);
  v8 = sub_58BBC(&v22);
  sub_65DED0(a1 + 3168, v20, v8, 0, v18);
  sub_64BC20(__p, v18);
  sub_53D784(&__s, __p);
  sub_53A868(__p);
  if (v19 < 0)
  {
    operator delete(v18[0]);
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
LABEL_10:
      v9 = __s;
      if (__s == v41)
      {
        goto LABEL_52;
      }

LABEL_11:
      v10 = *(v9 + 23);
      if (v10 < 0)
      {
        v11 = v9;
        v9 = *v9;
        v10 = v11[1];
        if (v10 < 21)
        {
          goto LABEL_52;
        }
      }

      else if (v10 < 21)
      {
        goto LABEL_52;
      }

      v12 = v9 + v10;
      v13 = v9;
      while (1)
      {
        v14 = memchr(v13, 123, v10 - 20);
        if (!v14)
        {
          goto LABEL_52;
        }

        v15 = *v14 == 0x636E49616572417BLL && *(v14 + 1) == 0x626557746E656469;
        if (v15 && *(v14 + 13) == 0x7D6B6E696C626557)
        {
          break;
        }

        v13 = (v14 + 1);
        v10 = v12 - v13;
        if (v12 - v13 < 21)
        {
          goto LABEL_52;
        }
      }

      if (v14 != v12 && v14 - v9 != -1)
      {
        if (*(a2 + 2471) < 0)
        {
          sub_325C(__p, *(a2 + 2448), *(a2 + 2456));
        }

        else
        {
          *__p = *(a2 + 2448);
          v27 = *(a2 + 2464);
        }

        if (*(a2 + 2495) < 0)
        {
          sub_325C(&v28, *(a2 + 2472), *(a2 + 2480));
        }

        else
        {
          v28 = *(a2 + 2472);
          v29 = *(a2 + 2488);
        }

        if (v29 >= 0)
        {
          v17 = HIBYTE(v29);
        }

        else
        {
          v17 = *(&v28 + 1);
        }

        if (v17)
        {
          if (SHIBYTE(v29) < 0)
          {
            sub_325C(v20, v28, *(&v28 + 1));
          }

          else
          {
            *v20 = v28;
            v21 = v29;
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(v28);
          }

          v28 = *v20;
          v29 = v21;
          HIBYTE(v21) = 0;
          LOBYTE(v20[0]) = 0;
          sub_64F700(&__s, "{AreaIncidentWeblink}");
        }

        operator new();
      }

LABEL_52:
      sub_548688(a1, a2, a3);
    }
  }

  else if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(v20[0]);
  v9 = __s;
  if (__s == v41)
  {
    goto LABEL_52;
  }

  goto LABEL_11;
}

void sub_54B2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void **a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1AB28(&a39);
  sub_53A58C(&a21);
  sub_53A58C(&a30);
  sub_53A58C(&a59);
  sub_53F5F4(&a68);
  _Unwind_Resume(a1);
}

void sub_54B4D4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = 0;
  v4 = 0uLL;
  v60 = 0u;
  v59 = 0;
  v58 = 0u;
  v51[0] = 0;
  v57 = 0;
  v44[0] = 0;
  v50 = 0;
  v37[0] = 0;
  v43 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    while (1)
    {
      v8 = sub_659540(v5 + 32);
      _X8 = v5 + 3783;
      __asm { PRFM            #0, [X8] }

      if (!v8)
      {
        goto LABEL_11;
      }

      if ((*(v5 + 1175) & 0x8000000000000000) != 0)
      {
        if (!*(v5 + 1160))
        {
          goto LABEL_11;
        }
      }

      else if (!*(v5 + 1175))
      {
        goto LABEL_11;
      }

      if (sub_659608(v5 + 32))
      {
        sub_549198(a1, v5);
      }

LABEL_11:
      if (sub_659BD0(v5 + 1488))
      {
        goto LABEL_12;
      }

      if (!sub_659540(v5 + 32))
      {
        goto LABEL_19;
      }

      if ((*(v5 + 1175) & 0x8000000000000000) != 0)
      {
        if (*(v5 + 1160))
        {
LABEL_18:
          if (sub_6595D0(v5 + 32))
          {
LABEL_12:
            sub_549198(a1, v5);
          }
        }
      }

      else if (*(v5 + 1175))
      {
        goto LABEL_18;
      }

LABEL_19:
      _X8 = v5 + 3856;
      __asm { PRFM            #0, [X8] }

      if (*(v5 + 1248) == 1 && *(v5 + 1256) != *(v5 + 1264))
      {
        sub_549198(a1, v5);
      }

      if (*(v5 + 1176) != *(v5 + 1184) || *(v5 + 1200) != *(v5 + 1208) || *(v5 + 1224) != *(v5 + 1232))
      {
        sub_549198(a1, v5);
      }

      _X8 = v5 + 2608;
      __asm { PRFM            #0, [X8] }

      if ((*v5 & 0xFFFFFFFE) == 0x30)
      {
        sub_549198(a1, v5);
      }

      v5 += 2608;
      if (v5 == v6)
      {
        v4 = v60;
        break;
      }
    }
  }

  v19 = sub_5623F4(v4, *(&v4 + 1));
  sub_5621D8(&v60, v19, *(&v60 + 1));
  v20 = sub_5623F4(v58, *(&v58 + 1));
  sub_5621D8(&v58, v20, *(&v58 + 1));
  v22 = *(&v60 + 1);
  v21 = v60;
  if (v60 != *(&v60 + 1) || (v22 = *(&v58 + 1), v21 = v58, v58 != *(&v58 + 1)))
  {
    if (v22 - v21 == 112)
    {
      goto LABEL_33;
    }

LABEL_31:
    sub_587F3C(4);
  }

  if (v43 != 1)
  {
    goto LABEL_31;
  }

  v21 = v37;
LABEL_33:
  sub_55F1E8(a3, v21);
  if (v43 != 1)
  {
    goto LABEL_41;
  }

  if ((v42 & 0x80000000) == 0)
  {
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_39:
    operator delete(v39);
    v23 = v38;
    if (v38 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  operator delete(v41);
  if (v40 < 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v23 = v38;
  if (v38 != -1)
  {
LABEL_40:
    (off_266B1F0[v23])(&v36, v37);
  }

LABEL_41:
  if (v50 != 1)
  {
    goto LABEL_49;
  }

  if ((v49 & 0x80000000) == 0)
  {
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_47:
    operator delete(v46);
    v24 = v45;
    if (v45 == -1)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  operator delete(v48);
  if (v47 < 0)
  {
    goto LABEL_47;
  }

LABEL_44:
  v24 = v45;
  if (v45 != -1)
  {
LABEL_48:
    (off_266B1F0[v24])(v37, v44);
  }

LABEL_49:
  if (v57 == 1)
  {
    if (v56 < 0)
    {
      operator delete(v55);
      if ((v54 & 0x80000000) == 0)
      {
LABEL_52:
        v25 = v52;
        if (v52 == -1)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }
    }

    else if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    operator delete(v53);
    v25 = v52;
    if (v52 != -1)
    {
LABEL_56:
      (off_266B1F0[v25])(v44, v51);
    }
  }

LABEL_57:
  v26 = v58;
  if (!v58)
  {
    goto LABEL_70;
  }

  v27 = *(&v58 + 1);
  v28 = v58;
  if (*(&v58 + 1) == v58)
  {
    goto LABEL_69;
  }

  do
  {
    if (*(v27 - 9) < 0)
    {
      operator delete(*(v27 - 32));
      if (*(v27 - 41) < 0)
      {
LABEL_66:
        operator delete(*(v27 - 64));
        v29 = v27 - 112;
        v30 = *(v27 - 80);
        if (v30 == -1)
        {
          goto LABEL_60;
        }

LABEL_67:
        (off_266B1F0[v30])(v51, v29);
        goto LABEL_60;
      }
    }

    else if (*(v27 - 41) < 0)
    {
      goto LABEL_66;
    }

    v29 = v27 - 112;
    v30 = *(v27 - 80);
    if (v30 != -1)
    {
      goto LABEL_67;
    }

LABEL_60:
    *(v27 - 80) = -1;
    v27 = v29;
  }

  while (v29 != v26);
  v28 = v58;
LABEL_69:
  *(&v58 + 1) = v26;
  operator delete(v28);
LABEL_70:
  v31 = v60;
  if (!v60)
  {
    return;
  }

  v32 = *(&v60 + 1);
  v33 = v60;
  if (*(&v60 + 1) == v60)
  {
    goto LABEL_82;
  }

  while (2)
  {
    if (*(v32 - 9) < 0)
    {
      operator delete(*(v32 - 32));
      if (*(v32 - 41) < 0)
      {
        goto LABEL_79;
      }

LABEL_76:
      v34 = v32 - 112;
      v35 = *(v32 - 80);
      if (v35 != -1)
      {
LABEL_80:
        (off_266B1F0[v35])(v51, v34);
      }
    }

    else
    {
      if ((*(v32 - 41) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

LABEL_79:
      operator delete(*(v32 - 64));
      v34 = v32 - 112;
      v35 = *(v32 - 80);
      if (v35 != -1)
      {
        goto LABEL_80;
      }
    }

    *(v32 - 80) = -1;
    v32 = v34;
    if (v34 != v31)
    {
      continue;
    }

    break;
  }

  v33 = v60;
LABEL_82:
  *(&v60 + 1) = v31;
  operator delete(v33);
}

void sub_54BCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_53E440(&a9);
  sub_5427D0(&a23);
  sub_5427D0(&a38);
  sub_5427D0(&a53);
  sub_542870((v53 - 152));
  sub_542870((v53 - 128));
  _Unwind_Resume(a1);
}

void sub_54BD7C()
{
  v0 = __chkstk_darwin();
  v92 = v2;
  v94 = v3;
  v4 = v1;
  v146 = 0;
  v5 = 0uLL;
  v145 = 0u;
  v144 = 0;
  v143 = 0u;
  v141[0] = 0;
  v142 = 0;
  LOBYTE(v139[0]) = 0;
  v140 = 0;
  v137[0] = 0;
  v138 = 0;
  v135[0] = 0;
  v136 = 0;
  v95 = v0;
  v134 = v0;
  v8 = *v6;
  v7 = v6[1];
  if (*v6 != v7)
  {
    v93 = v1;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v13 = sub_659540(v8 + 32);
      _X8 = v8 + 3783;
      __asm { PRFM            #0, [X8] }

      if (!v13)
      {
        goto LABEL_15;
      }

      if ((*(v8 + 1175) & 0x8000000000000000) != 0)
      {
        if (!*(v8 + 1160))
        {
          goto LABEL_15;
        }
      }

      else if (!*(v8 + 1175))
      {
        goto LABEL_15;
      }

      if (sub_659608(v8 + 32))
      {
        sub_54D158(&v134, v8, __p);
        v20 = *(&v145 + 1);
        if (*(&v145 + 1) >= v146)
        {
          v34 = v145;
          v35 = *(&v145 + 1) - v145;
          v36 = 0xAAAAAAAAAAAAAAABLL * ((*(&v145 + 1) - v145) >> 3);
          v37 = v36 + 1;
          if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v146 - v145) >> 3) > v37)
          {
            v37 = 0x5555555555555556 * ((v146 - v145) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v146 - v145) >> 3) >= 0x555555555555555)
          {
            v38 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v38 = v37;
          }

          if (v38)
          {
            if (v38 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v39 = 8 * ((*(&v145 + 1) - v145) >> 3);
          *v39 = *__p;
          *(v39 + 16) = v98;
          *&v98 = 0;
          __p[0] = 0;
          __p[1] = 0;
          v40 = 24 * v36 + 24;
          v41 = 24 * v36 - v35;
          memcpy((v39 - v35), v34, v35);
          *&v145 = v41;
          *(&v145 + 1) = v40;
          v146 = 0;
          if (v34)
          {
            operator delete(v34);
            *(&v145 + 1) = v40;
            if (SBYTE7(v98) < 0)
            {
              operator delete(__p[0]);
            }

            ++v9;
          }

          else
          {
            *(&v145 + 1) = v40;
            ++v9;
          }
        }

        else
        {
          v21 = *__p;
          *(*(&v145 + 1) + 16) = v98;
          *v20 = v21;
          *(&v145 + 1) = v20 + 24;
          ++v9;
        }

        goto LABEL_6;
      }

LABEL_15:
      if (sub_659BD0(v8 + 1488))
      {
        goto LABEL_16;
      }

      if (sub_659540(v8 + 32))
      {
        if ((*(v8 + 1175) & 0x8000000000000000) != 0)
        {
          if (!*(v8 + 1160))
          {
            goto LABEL_36;
          }
        }

        else if (!*(v8 + 1175))
        {
          goto LABEL_36;
        }

        if (sub_6595D0(v8 + 32))
        {
LABEL_16:
          sub_54D158(&v134, v8, __p);
          v22 = *(&v143 + 1);
          if (*(&v143 + 1) < v144)
          {
            v11 = *__p;
            *(*(&v143 + 1) + 16) = v98;
            *v22 = v11;
            v12 = v22 + 24;
          }

          else
          {
            v23 = v143;
            v24 = *(&v143 + 1) - v143;
            v25 = 0xAAAAAAAAAAAAAAABLL * ((*(&v143 + 1) - v143) >> 3);
            v26 = v25 + 1;
            if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            if (0x5555555555555556 * ((v144 - v143) >> 3) > v26)
            {
              v26 = 0x5555555555555556 * ((v144 - v143) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v144 - v143) >> 3) >= 0x555555555555555)
            {
              v27 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v27 = v26;
            }

            if (v27)
            {
              if (v27 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v28 = 8 * ((*(&v143 + 1) - v143) >> 3);
            *v28 = *__p;
            *(v28 + 16) = v98;
            *&v98 = 0;
            __p[0] = 0;
            __p[1] = 0;
            v12 = 24 * v25 + 24;
            v29 = 24 * v25 - v24;
            memcpy((v28 - v24), v23, v24);
            *&v143 = v29;
            *(&v143 + 1) = v12;
            v144 = 0;
            if (v23)
            {
              operator delete(v23);
              *(&v143 + 1) = v12;
              if (SBYTE7(v98) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_5;
            }
          }

          *(&v143 + 1) = v12;
LABEL_5:
          ++v10;
          goto LABEL_6;
        }
      }

LABEL_36:
      _X8 = v8 + 3856;
      __asm { PRFM            #0, [X8] }

      if (*(v8 + 1248) != 1 || *(v8 + 1256) == *(v8 + 1264))
      {
        if (*(v8 + 1176) == *(v8 + 1184) && *(v8 + 1200) == *(v8 + 1208) && *(v8 + 1224) == *(v8 + 1232))
        {
          _X8 = v8 + 2608;
          __asm { PRFM            #0, [X8] }

          if (*v8 == 49)
          {
            if (v136 != 1)
            {
              sub_52DA74(v135, v8);
              v136 = 1;
              goto LABEL_6;
            }

            v32 = v135;
          }

          else
          {
            if (*v8 != 48)
            {
              goto LABEL_6;
            }

            if ((v138 & 1) == 0)
            {
              sub_52DA74(v137, v8);
              v33 = v137;
              goto LABEL_57;
            }

            v32 = v137;
          }
        }

        else
        {
          if ((v140 & 1) == 0)
          {
            sub_52DA74(v139, v8);
            v33 = v139;
LABEL_57:
            v33[2608] = 1;
            goto LABEL_6;
          }

          v32 = v139;
        }
      }

      else
      {
        if ((v142 & 1) == 0)
        {
          sub_52DA74(v141, v8);
          v33 = v141;
          goto LABEL_57;
        }

        v32 = v141;
      }

      sub_52EA78(v32, v8);
LABEL_6:
      v8 += 2608;
      if (v8 == v7)
      {
        v5 = v145;
        v4 = v93;
        v44 = v9;
        goto LABEL_73;
      }
    }
  }

  v10 = 0;
  v44 = 0;
LABEL_73:
  v45 = sub_95EB4(v5, *(&v5 + 1));
  v46 = *(&v145 + 1);
  if (v45 != *(&v145 + 1))
  {
    while (v46 != v45)
    {
      v47 = *(v46 - 1);
      v46 -= 3;
      if (v47 < 0)
      {
        operator delete(*v46);
      }
    }

    *(&v145 + 1) = v45;
  }

  v48 = sub_95EB4(v143, *(&v143 + 1));
  v49 = *(&v143 + 1);
  if (v48 != *(&v143 + 1))
  {
    while (v49 != v48)
    {
      v50 = *(v49 - 1);
      v49 -= 3;
      if (v50 < 0)
      {
        operator delete(*v49);
      }
    }

    *(&v143 + 1) = v48;
  }

  if (v44 < 1)
  {
    if (v142 == 1)
    {
      sub_52DA74(v96, v141);
      sub_56A8B0(v96, v94 > 1, &v130);
      sub_52E078(v96);
      sub_67F320(&v130, v128);
      v60 = sub_58BBC(&v130);
      v126 = 0u;
      v124 = 1uLL;
      v120 = 0;
      v119 = 0;
      v115 = 0u;
      v112 = 0;
      v107 = 0;
      v106 = 0u;
      *&v105[8] = 0u;
      v104 = 0x7FFFFFFFLL;
      v103 = 0u;
      v99 = 0;
      v61.f64[0] = NAN;
      v61.f64[1] = NAN;
      v100 = vnegq_f64(v61);
      v101 = v100;
      *v105 = v100;
      __p[0] = 0xFFFFFFFFLL;
      __p[1] = 0;
      v98 = 0uLL;
      v102 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v103) = 0;
      *&v105[16] = 0x7FFFFFFF;
      LODWORD(v106) = 0x7FFFFFFF;
      *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0x8000000080000000;
      v113 = 0x8000000080000000;
      v114 = 0x7FFFFFFF;
      v116 = xmmword_2297C00;
      v117 = 0x7FFFFFFF;
      v118 = 0x7FFFFFFF7FFFFFFFLL;
      v121 = 0xBFF0000000000000;
      v122 = 0xBFF0000000000000;
      v123 = 0uLL;
      v125 = 0uLL;
      LOWORD(v126) = 0;
      DWORD1(v126) = -1;
      v127 = 0x7FFFFFFFFFFFFFFFuLL;
      sub_660FE4((v95 + 3168), v128, v60, __p, v4);
      sub_55D550(__p);
      if (v129 < 0)
      {
        operator delete(v128[0]);
      }

      v62 = v133;
      if (v133)
      {
        do
        {
          v63 = *v62;
          sub_55F7FC((v62 + 2));
          operator delete(v62);
          v62 = v63;
        }

        while (v63);
      }

      v64 = v132;
      v132 = 0;
      if (v64)
      {
        operator delete(v64);
      }

      v56 = v130;
      if (v130)
      {
        v65 = v131;
        v58 = v130;
        if (v131 == v130)
        {
          goto LABEL_138;
        }

        do
        {
          v66 = *(v65 - 1);
          v65 -= 3;
          if (v66 < 0)
          {
            operator delete(*v65);
          }
        }

        while (v65 != v56);
        goto LABEL_137;
      }
    }

    else if (v140 == 1)
    {
      sub_56A988(v95 + 1576, v139, v94 > 1, &v130);
      sub_67F320(&v130, v128);
      v67 = sub_58BBC(&v130);
      v126 = 0u;
      v124 = 1uLL;
      v120 = 0;
      v119 = 0;
      v115 = 0u;
      v112 = 0;
      v107 = 0;
      v106 = 0u;
      *&v105[8] = 0u;
      v104 = 0x7FFFFFFFLL;
      v103 = 0u;
      v99 = 0;
      v68.f64[0] = NAN;
      v68.f64[1] = NAN;
      v100 = vnegq_f64(v68);
      v101 = v100;
      *v105 = v100;
      __p[0] = 0xFFFFFFFFLL;
      __p[1] = 0;
      v98 = 0uLL;
      v102 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v103) = 0;
      *&v105[16] = 0x7FFFFFFF;
      LODWORD(v106) = 0x7FFFFFFF;
      *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0x8000000080000000;
      v113 = 0x8000000080000000;
      v114 = 0x7FFFFFFF;
      v116 = xmmword_2297C00;
      v117 = 0x7FFFFFFF;
      v118 = 0x7FFFFFFF7FFFFFFFLL;
      v121 = 0xBFF0000000000000;
      v122 = 0xBFF0000000000000;
      v123 = 0uLL;
      v125 = 0uLL;
      LOWORD(v126) = 0;
      DWORD1(v126) = -1;
      v127 = 0x7FFFFFFFFFFFFFFFuLL;
      sub_660FE4((v95 + 3168), v128, v67, __p, v4);
      sub_55D550(__p);
      if (v129 < 0)
      {
        operator delete(v128[0]);
      }

      v69 = v133;
      if (v133)
      {
        do
        {
          v70 = *v69;
          sub_55F7FC((v69 + 2));
          operator delete(v69);
          v69 = v70;
        }

        while (v70);
      }

      v71 = v132;
      v132 = 0;
      if (v71)
      {
        operator delete(v71);
      }

      v56 = v130;
      if (v130)
      {
        v72 = v131;
        v58 = v130;
        if (v131 == v130)
        {
          goto LABEL_138;
        }

        do
        {
          v73 = *(v72 - 1);
          v72 -= 3;
          if (v73 < 0)
          {
            operator delete(*v72);
          }
        }

        while (v72 != v56);
        goto LABEL_137;
      }
    }

    else
    {
      if (v10 < 1)
      {
        if (v138)
        {
          v88 = v137;
          v89 = v95;
        }

        else
        {
          v89 = v95;
          if (v136 != 1)
          {
            sub_56AFC8(v95 + 1576, v92, &v130);
            sub_67F320(&v130, v128);
            v90 = sub_58BBC(&v130);
            v126 = 0u;
            v124 = 1uLL;
            v120 = 0;
            v119 = 0;
            v115 = 0u;
            v112 = 0;
            v107 = 0;
            v106 = 0u;
            *&v105[8] = 0u;
            v104 = 0x7FFFFFFFLL;
            v103 = 0u;
            v99 = 0;
            v91.f64[0] = NAN;
            v91.f64[1] = NAN;
            v100 = vnegq_f64(v91);
            v101 = v100;
            *v105 = v100;
            __p[0] = 0xFFFFFFFFLL;
            __p[1] = 0;
            v98 = 0uLL;
            v102 = 0x7FFFFFFFFFFFFFFFLL;
            BYTE8(v103) = 0;
            *&v105[16] = 0x7FFFFFFF;
            LODWORD(v106) = 0x7FFFFFFF;
            *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0x8000000080000000;
            v113 = 0x8000000080000000;
            v114 = 0x7FFFFFFF;
            v116 = xmmword_2297C00;
            v117 = 0x7FFFFFFF;
            v118 = 0x7FFFFFFF7FFFFFFFLL;
            v121 = 0xBFF0000000000000;
            v122 = 0xBFF0000000000000;
            v123 = 0uLL;
            v125 = 0uLL;
            LOWORD(v126) = 0;
            DWORD1(v126) = -1;
            v127 = 0x7FFFFFFFFFFFFFFFuLL;
            sub_660FE4((v95 + 3168), v128, v90, __p, v4);
            sub_55D550(__p);
            if (v129 < 0)
            {
              operator delete(v128[0]);
            }

            sub_53A58C(&v130);
            goto LABEL_139;
          }

          v88 = v135;
        }

        sub_54D3B8(v89, v88, v4);
        goto LABEL_139;
      }

      sub_56A308(v95 + 1576, v10, &v143, v10 != v94, 1, &v130);
      sub_67F320(&v130, v128);
      v74 = sub_58BBC(&v130);
      v126 = 0u;
      v124 = 1uLL;
      v120 = 0;
      v119 = 0;
      v115 = 0u;
      v112 = 0;
      v107 = 0;
      v106 = 0u;
      *&v105[8] = 0u;
      v104 = 0x7FFFFFFFLL;
      v103 = 0u;
      v99 = 0;
      v75.f64[0] = NAN;
      v75.f64[1] = NAN;
      v100 = vnegq_f64(v75);
      v101 = v100;
      *v105 = v100;
      __p[0] = 0xFFFFFFFFLL;
      __p[1] = 0;
      v98 = 0uLL;
      v102 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v103) = 0;
      *&v105[16] = 0x7FFFFFFF;
      LODWORD(v106) = 0x7FFFFFFF;
      *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0x8000000080000000;
      v113 = 0x8000000080000000;
      v114 = 0x7FFFFFFF;
      v116 = xmmword_2297C00;
      v117 = 0x7FFFFFFF;
      v118 = 0x7FFFFFFF7FFFFFFFLL;
      v121 = 0xBFF0000000000000;
      v122 = 0xBFF0000000000000;
      v123 = 0uLL;
      v125 = 0uLL;
      LOWORD(v126) = 0;
      DWORD1(v126) = -1;
      v127 = 0x7FFFFFFFFFFFFFFFuLL;
      sub_660FE4((v95 + 3168), v128, v74, __p, v4);
      sub_55D550(__p);
      if (v129 < 0)
      {
        operator delete(v128[0]);
      }

      v76 = v133;
      if (v133)
      {
        do
        {
          v77 = *v76;
          sub_55F7FC((v76 + 2));
          operator delete(v76);
          v76 = v77;
        }

        while (v77);
      }

      v78 = v132;
      v132 = 0;
      if (v78)
      {
        operator delete(v78);
      }

      v56 = v130;
      if (v130)
      {
        v79 = v131;
        v58 = v130;
        if (v131 == v130)
        {
          goto LABEL_138;
        }

        do
        {
          v80 = *(v79 - 1);
          v79 -= 3;
          if (v80 < 0)
          {
            operator delete(*v79);
          }
        }

        while (v79 != v56);
        goto LABEL_137;
      }
    }
  }

  else
  {
    sub_56A308(v95 + 1576, v44, &v145, v44 != v94, 0, &v130);
    sub_67F320(&v130, v128);
    v51 = sub_58BBC(&v130);
    v126 = 0u;
    v124 = 1uLL;
    v120 = 0;
    v119 = 0;
    v115 = 0u;
    v112 = 0;
    v107 = 0;
    v106 = 0u;
    *&v105[8] = 0u;
    v104 = 0x7FFFFFFFLL;
    v103 = 0u;
    v99 = 0;
    v52.f64[0] = NAN;
    v52.f64[1] = NAN;
    v100 = vnegq_f64(v52);
    v101 = v100;
    *v105 = v100;
    __p[0] = 0xFFFFFFFFLL;
    __p[1] = 0;
    v98 = 0uLL;
    v102 = 0x7FFFFFFFFFFFFFFFLL;
    BYTE8(v103) = 0;
    *&v105[16] = 0x7FFFFFFF;
    LODWORD(v106) = 0x7FFFFFFF;
    *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0x8000000080000000;
    v113 = 0x8000000080000000;
    v114 = 0x7FFFFFFF;
    v116 = xmmword_2297C00;
    v117 = 0x7FFFFFFF;
    v118 = 0x7FFFFFFF7FFFFFFFLL;
    v121 = 0xBFF0000000000000;
    v122 = 0xBFF0000000000000;
    v123 = 0uLL;
    v125 = 0uLL;
    LOWORD(v126) = 0;
    DWORD1(v126) = -1;
    v127 = 0x7FFFFFFFFFFFFFFFuLL;
    sub_660FE4((v95 + 3168), v128, v51, __p, v4);
    sub_55D550(__p);
    if (v129 < 0)
    {
      operator delete(v128[0]);
    }

    v53 = v133;
    if (v133)
    {
      do
      {
        v54 = *v53;
        sub_55F7FC((v53 + 2));
        operator delete(v53);
        v53 = v54;
      }

      while (v54);
    }

    v55 = v132;
    v132 = 0;
    if (v55)
    {
      operator delete(v55);
    }

    v56 = v130;
    if (v130)
    {
      v57 = v131;
      v58 = v130;
      if (v131 == v130)
      {
        goto LABEL_138;
      }

      do
      {
        v59 = *(v57 - 1);
        v57 -= 3;
        if (v59 < 0)
        {
          operator delete(*v57);
        }
      }

      while (v57 != v56);
LABEL_137:
      v58 = v130;
LABEL_138:
      v131 = v56;
      operator delete(v58);
    }
  }

LABEL_139:
  if (v136 == 1)
  {
    sub_52E078(v135);
    if (v138 != 1)
    {
      goto LABEL_141;
    }
  }

  else if (v138 != 1)
  {
LABEL_141:
    if (v140 == 1)
    {
      goto LABEL_142;
    }

    goto LABEL_152;
  }

  sub_52E078(v137);
  if (v140 == 1)
  {
LABEL_142:
    sub_52E078(v139);
    if (v142 != 1)
    {
      goto LABEL_143;
    }

    goto LABEL_153;
  }

LABEL_152:
  if (v142 != 1)
  {
LABEL_143:
    v81 = v143;
    if (v143)
    {
      goto LABEL_144;
    }

LABEL_154:
    v83 = v145;
    if (!v145)
    {
      return;
    }

    goto LABEL_157;
  }

LABEL_153:
  sub_52E078(v141);
  v81 = v143;
  if (!v143)
  {
    goto LABEL_154;
  }

LABEL_144:
  v82 = *(&v143 + 1);
  if (*(&v143 + 1) == v81)
  {
    *(&v143 + 1) = v81;
    operator delete(v81);
    v83 = v145;
    if (!v145)
    {
      return;
    }

    goto LABEL_157;
  }

  do
  {
    v84 = *(v82 - 1);
    v82 -= 3;
    if (v84 < 0)
    {
      operator delete(*v82);
    }
  }

  while (v82 != v81);
  *(&v143 + 1) = v81;
  operator delete(v143);
  v83 = v145;
  if (v145)
  {
LABEL_157:
    v85 = *(&v145 + 1);
    v86 = v83;
    if (*(&v145 + 1) != v83)
    {
      do
      {
        v87 = *(v85 - 1);
        v85 -= 3;
        if (v87 < 0)
        {
          operator delete(*v85);
        }
      }

      while (v85 != v83);
      v86 = v145;
    }

    *(&v145 + 1) = v83;
    operator delete(v86);
  }
}

void sub_54CF74(_Unwind_Exception *a1)
{
  sub_55D550(&STACK[0xA50]);
  if (SLOBYTE(STACK[0xBE7]) < 0)
  {
    operator delete(STACK[0xBD0]);
  }

  sub_53A58C(&STACK[0xBE8]);
  if (LOBYTE(STACK[0x1668]) == 1)
  {
    sub_52E078(&STACK[0xC38]);
    if (LOBYTE(STACK[0x20A0]) != 1)
    {
      goto LABEL_5;
    }
  }

  else if (LOBYTE(STACK[0x20A0]) != 1)
  {
LABEL_5:
    if (LOBYTE(STACK[0x2AD8]) == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_52E078(&STACK[0x1670]);
  if (LOBYTE(STACK[0x2AD8]) == 1)
  {
LABEL_6:
    sub_52E078(&STACK[0x20A8]);
    if (LOBYTE(STACK[0x3510]) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (LOBYTE(STACK[0x3510]) != 1)
  {
LABEL_7:
    sub_1A104((v1 - 152));
    sub_1A104((v1 - 128));
    _Unwind_Resume(a1);
  }

LABEL_11:
  sub_52E078(&STACK[0x2AE0]);
  sub_1A104((v1 - 152));
  sub_1A104((v1 - 128));
  _Unwind_Resume(a1);
}

void sub_54D158(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (sub_659540(a2 + 32))
  {
    v6 = *(a2 + 1175);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a2 + 1160);
    }

    if (v6)
    {
      sub_56B3A4(&v15);
    }
  }

  sub_56A230(a2, &v15);
  v20 = 0;
  LOBYTE(v19[0]) = 0;
  sub_67ECF8(&v15, "{OptionalPeriod}", v19);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  sub_67F320(&v15, v19);
  v7 = sub_58BBC(&v15);
  sub_65DED0(v5 + 3168, v19, v7, 0, a3);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v8 = v18;
  if (v18)
  {
    do
    {
      v9 = *v8;
      sub_55F7FC((v8 + 2));
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = __p;
  __p = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = v15;
  if (v15)
  {
    v12 = v16;
    v13 = v15;
    if (v16 != v15)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = v15;
    }

    v16 = v11;
    operator delete(v13);
  }
}

void sub_54D378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (*(v9 - 33) < 0)
  {
    operator delete(*(v9 - 56));
  }

  sub_53A58C(&a9);
  _Unwind_Resume(a1);
}

void sub_54D3B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_5678AC(a1 + 1576, a2, &v23);
  v20 = 0;
  LOBYTE(__p) = 0;
  sub_67ECF8(&v23, "{OptionalPeriod}", &__p);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  sub_67F320(&v23, &__p);
  v6 = sub_58BBC(&v23);
  sub_65DED0(a1 + 3168, &__p, v6, 0, v21);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  sub_64B998(a3);
  if ((*a2 & 0xFFFFFFFE) == 0x30 && *(a1 + 1450) == 1)
  {
    sub_64C184(a3, "{SFSymbol}");
    sub_588170(0, &__p);
    sub_64BF94(a3, "{SFSymbol}");
  }

  sub_64C184(a3, v21);
  if (*(a2 + 1416) == 1 && *(a2 + 1408) == 1)
  {
    v7 = *(a2 + 1400);
    if (v7 != 0x7FFFFFFF && *(a2 + 1404) < v7 && *(a2 + 1412) != 0x7FFFFFFF)
    {
      LODWORD(__p) = *(a2 + 1412);
      sub_64E308(a3, "{DepartureTime}", &__p, a1 + 1496, 0);
    }
  }

  if (sub_64FA0C(a3, "{ChargePercentage}"))
  {
    v8 = sub_4470E4(a2 + 1312);
    sub_64F510(a3, "{ChargePercentage}", v8);
  }

  if (sub_64FA0C(a3, qword_2791E50))
  {
    v9 = sub_4470E4(a2 + 1312);
    sub_64F510(a3, qword_2791E50, v9);
  }

  if (*(a2 + 1304) != 13 && sub_64FA0C(a3, "{duration}"))
  {
    v10 = *(a2 + 1344);
    if (v10 >= 36000)
    {
      if (v10 >> 8 > 0xD2E)
      {
        v10 = 864000 * vcvtmd_s64_f64(v10 / 864000.0);
      }

      else
      {
        if ((v10 % 0x8CA0) >> 4 <= 0x464)
        {
          v11 = v10 / 0x8CA0;
        }

        else
        {
          v11 = v10 / 0x8CA0 + 1;
        }

        v10 = 36000 * v11;
      }
    }

    sub_64EA58(a3, "{duration}", v10);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  v12 = v26;
  if (v26)
  {
    do
    {
      v13 = *v12;
      sub_55F7FC((v12 + 2));
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = v25;
  v25 = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = v23;
  if (v23)
  {
    v16 = v24;
    v17 = v23;
    if (v24 != v23)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = v23;
    }

    v24 = v15;
    operator delete(v17);
  }
}

void sub_54D740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v32);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  sub_53A58C((v33 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_54D7D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  sub_54DB84(a1, a2, 1, a4);
  sub_54DF3C(a3, &v20);
  *__p = 0u;
  v16 = 0u;
  v17 = 1065353216;
  sub_65DED0(a1 + 3168, "Advisory_Separator", __p, 0, v18);
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  sub_64FB18(a4, v18, v13);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    operator delete(v18[0]);
    v7 = v16;
    if (!v16)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  operator delete(v13[0]);
  if (v19 < 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = v16;
  if (!v16)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_4:
    v8 = *v7;
    sub_55F7FC((v7 + 2));
    operator delete(v7);
    v7 = v8;
  }

  while (v8);
LABEL_5:
  v9 = __p[0];
  __p[0] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = v20;
  for (i = v21; v10 != i; v10 += 24)
  {
    sub_64C184(a4, v10);
  }

  return sub_53A868(&v20);
}

void sub_54D904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  sub_540798(&a16);
  sub_53A868(&a27);
  sub_53A868(v27);
  _Unwind_Resume(a1);
}

void sub_54D964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_53A868(va);
  sub_53A868(v13);
  _Unwind_Resume(a1);
}

void sub_54D980(uint64_t a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  if ((0x1F693A1C451AB30BLL * ((a2[1] - *a2) >> 4)) <= 1)
  {
    v3 = "Advisory_Title_Notice";
  }

  else
  {
    v3 = "Advisory_Title_Notices";
  }

  v42 = *v3;
  v43 = *(v3 + 2);
  v39 = 0u;
  v40 = 0u;
  v41 = 1065353216;
  v37 = 0u;
  v35 = 1uLL;
  v30 = 0;
  v31 = 0;
  v14 = 0x7FFFFFFFLL;
  v16 = 0x7FFFFFFFLL;
  v13 = 0u;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v10 = vnegq_f64(v4);
  v11 = v10;
  v15 = v10;
  v26 = 0u;
  v23 = 0;
  v17 = 0u;
  v18 = 0;
  v8[0] = 0xFFFFFFFFuLL;
  v8[1] = 0uLL;
  v9 = 0;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  BYTE8(v13) = 0;
  LODWORD(v17) = 0x7FFFFFFF;
  *(&v17 + 4) = 0x7FFFFFFF7FFFFFFFLL;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0x8000000080000000;
  v24 = 0x8000000080000000;
  v25 = 0x7FFFFFFF;
  v27 = xmmword_2297C00;
  v28 = 0x7FFFFFFF;
  v29 = 0x7FFFFFFF7FFFFFFFLL;
  v32 = 0xBFF0000000000000;
  v33 = 0xBFF0000000000000;
  v34 = 0uLL;
  v36 = 0uLL;
  LOWORD(v37) = 0;
  DWORD1(v37) = -1;
  v38 = 0x7FFFFFFFFFFFFFFFuLL;
  sub_660FE4((a1 + 3168), &v42, &v39, v8, a3);
  sub_55D550(v8);
  v5 = v40;
  if (v40)
  {
    do
    {
      v6 = *v5;
      sub_55F7FC((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = v39;
  *&v39 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }
}

void sub_54DB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_55D550(&a9);
  sub_540798(v9 - 112);
  if (*(v9 - 41) < 0)
  {
    operator delete(*(v9 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_54DB84(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  sub_64B998(a4);
  *__p = 0u;
  *v23 = 0u;
  v24 = 1065353216;
  sub_65DED0(a1 + 3168, "Advisory_Separator", __p, 0, v28);
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  sub_64FB18(a4, v28, v26);
  if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_46:
    operator delete(v28[0]);
    v8 = v23[0];
    if (!v23[0])
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  operator delete(v26[0]);
  if (v29 < 0)
  {
    goto LABEL_46;
  }

LABEL_3:
  v8 = v23[0];
  if (!v23[0])
  {
    goto LABEL_5;
  }

  do
  {
LABEL_4:
    v9 = *v8;
    sub_55F7FC((v8 + 2));
    operator delete(v8);
    v8 = v9;
  }

  while (v9);
LABEL_5:
  v10 = __p[0];
  __p[0] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    while (1)
    {
      sub_5678AC(a1 + 1576, v11, __p);
      v14 = (a3 & 1) != 0 || (0x1F693A1C451AB30BLL * ((a2[1] - *a2) >> 4)) > 1;
      sub_546460(a1, v14, __p);
      sub_67F320(__p, v26);
      v15 = sub_58BBC(__p);
      sub_65DED0(a1 + 3168, v26, v15, 0, v28);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26[0]);
      }

      sub_64C184(a4, v28);
      if ((v29 & 0x80000000) == 0)
      {
        v16 = v25;
        if (v25)
        {
          goto LABEL_24;
        }

        goto LABEL_36;
      }

      operator delete(v28[0]);
      v16 = v25;
      if (v25)
      {
        break;
      }

LABEL_36:
      v18 = v23[1];
      v23[1] = 0;
      if (v18)
      {
        operator delete(v18);
      }

      v19 = __p[0];
      if (__p[0])
      {
        v20 = __p[1];
        v13 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v21 = *(v20 - 1);
            v20 -= 3;
            if (v21 < 0)
            {
              operator delete(*v20);
            }
          }

          while (v20 != v19);
          v13 = __p[0];
        }

        __p[1] = v19;
        operator delete(v13);
      }

      v11 += 2608;
      if (v11 == v12)
      {
        return;
      }
    }

    while (1)
    {
LABEL_24:
      v17 = *v16;
      if (*(v16 + 191) < 0)
      {
        operator delete(v16[21]);
        if (*(v16 + 159) < 0)
        {
          goto LABEL_31;
        }

LABEL_26:
        if ((*(v16 + 135) & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

LABEL_32:
        operator delete(v16[14]);
        if (*(v16 + 95) < 0)
        {
          goto LABEL_33;
        }

LABEL_28:
        if ((*(v16 + 63) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

LABEL_22:
        operator delete(v16[5]);
        if (*(v16 + 39) < 0)
        {
          goto LABEL_35;
        }

LABEL_23:
        operator delete(v16);
        v16 = v17;
        if (!v17)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if ((*(v16 + 159) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

LABEL_31:
        operator delete(v16[17]);
        if (*(v16 + 135) < 0)
        {
          goto LABEL_32;
        }

LABEL_27:
        if ((*(v16 + 95) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_33:
        operator delete(v16[9]);
        if (*(v16 + 63) < 0)
        {
          goto LABEL_22;
        }

LABEL_34:
        if ((*(v16 + 39) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_35:
        operator delete(v16[2]);
        operator delete(v16);
        v16 = v17;
        if (!v17)
        {
          goto LABEL_36;
        }
      }
    }
  }
}

void sub_54DE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
    sub_540798(&a9);
    sub_53A868(v30);
    _Unwind_Resume(a1);
  }

  sub_540798(&a9);
  sub_53A868(v30);
  _Unwind_Resume(a1);
}

void sub_54DEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_53A58C(&a9);
  sub_53A868(v9);
  _Unwind_Resume(a1);
}

void sub_54DEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C(&a9);
  sub_53A868(v30);
  _Unwind_Resume(a1);
}

void sub_54DF3C(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_64B998(a2);
  v3 = a1[1];
  if (*a1 != v3)
  {
    if ((0x1F693A1C451AB30BLL * ((v3 - *a1) >> 4)) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_54E2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void **a30)
{
  sub_540798(&__p);
  sub_53A58C(&a30);
  if (*(v31 - 113) < 0)
  {
    operator delete(*(v31 - 136));
  }

  sub_6E3B8((v31 - 112));
  sub_1A104((v31 - 104));
  sub_53A868(v30);
  _Unwind_Resume(a1);
}

void sub_54E3A4(_Unwind_Exception *a1)
{
  sub_1A104(v2 - 104);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_54E3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_1A104((v27 - 104));
  sub_53A868(v26);
  _Unwind_Resume(a1);
}

void sub_54E3F0(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v4 = a3[23];
  v5 = v4;
  v6 = *a3;
  v7 = *(a3 + 1);
  if ((v4 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if ((v4 & 0x80u) == 0)
  {
    v9 = a3[23];
  }

  else
  {
    v9 = *(a3 + 1);
  }

  if (v9 < 21)
  {
    v10 = a3;
    v11 = a2;
    goto LABEL_21;
  }

  v12 = &v8[v9];
  v13 = v8;
  while (1)
  {
    v14 = memchr(v13, 123, v9 - 20);
    if (!v14)
    {
LABEL_19:
      v11 = a2;
LABEL_20:
      v10 = a3;
      goto LABEL_21;
    }

    v15 = *v14 == 0x636E49616572417BLL && *(v14 + 1) == 0x626557746E656469;
    if (v15 && *(v14 + 13) == 0x7D6B6E696C626557)
    {
      break;
    }

    v13 = v14 + 1;
    v9 = v12 - v13;
    if (v12 - v13 < 21)
    {
      goto LABEL_19;
    }
  }

  v11 = a2;
  if (v14 == v12)
  {
    goto LABEL_20;
  }

  v10 = a3;
  if (v14 - v8 != -1)
  {
    v27 = *(a2 + 1112);
    if (*(v27 + 223) < 0)
    {
      sub_325C(&v78, *(v27 + 200), *(v27 + 208));
      if (*(v27 + 247) < 0)
      {
        goto LABEL_177;
      }

LABEL_45:
      v80 = *(v27 + 224);
      v81 = *(v27 + 240);
    }

    else
    {
      v78 = *(v27 + 200);
      v79 = *(v27 + 216);
      if ((*(v27 + 247) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

LABEL_177:
      sub_325C(&v80, *(v27 + 224), *(v27 + 232));
    }

    if (*(a2 + 1015) < 0)
    {
      sub_325C(v74, *(a2 + 992), *(a2 + 1000));
    }

    else
    {
      *v74 = *(a2 + 992);
      v75 = *(a2 + 1008);
    }

    if (*(a2 + 1039) < 0)
    {
      sub_325C(&v76, *(a2 + 1016), *(a2 + 1024));
    }

    else
    {
      v76 = *(a2 + 1016);
      v77 = *(a2 + 1032);
    }

    if (v81 >= 0)
    {
      v65 = HIBYTE(v81);
    }

    else
    {
      v65 = *(&v80 + 1);
    }

    if (v65)
    {
      if (SHIBYTE(v81) < 0)
      {
        sub_325C(v70, v80, *(&v80 + 1));
      }

      else
      {
        *v70 = v80;
        *&v71 = v81;
      }

      if (SHIBYTE(v81) < 0)
      {
        operator delete(v80);
      }

      v80 = *v70;
      v81 = v71;
      BYTE7(v71) = 0;
      LOBYTE(v70[0]) = 0;
      if (v77 >= 0)
      {
        v66 = HIBYTE(v77);
      }

      else
      {
        v66 = *(&v76 + 1);
      }

      if (v66)
      {
        if (SHIBYTE(v77) < 0)
        {
          sub_325C(&v72, v76, *(&v76 + 1));
        }

        else
        {
          v72 = v76;
          v73 = v77;
        }

        if (SHIBYTE(v77) < 0)
        {
          operator delete(v76);
        }

        v76 = v72;
        v77 = v73;
        HIBYTE(v73) = 0;
        LOBYTE(v72) = 0;
        sub_64F700(a4, "{AreaIncidentWeblink}");
      }

      operator new();
    }

    operator new();
  }

LABEL_21:
  if ((v4 & 0x80u) == 0)
  {
    v17 = v10;
  }

  else
  {
    v17 = v6;
  }

  if ((v4 & 0x80u) == 0)
  {
    v18 = v4;
  }

  else
  {
    v18 = v7;
  }

  if (byte_2791E97 >= 0)
  {
    v19 = &qword_2791E80;
  }

  else
  {
    v19 = qword_2791E80;
  }

  if (byte_2791E97 >= 0)
  {
    v20 = byte_2791E97;
  }

  else
  {
    v20 = unk_2791E88;
  }

  if (!v20)
  {
LABEL_48:
    v28 = *(v11 + 920);
    if (v28 >= 0.0)
    {
      if (v28 < 8388600.0)
      {
        v29 = (v28 + v28) + 1;
        goto LABEL_53;
      }
    }

    else if (v28 > -8388600.0)
    {
      v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
LABEL_53:
      v28 = (v29 >> 1);
    }

    sub_64F510(a4, &qword_2791E80, v28);
    v4 = *(v10 + 23);
    v6 = *v10;
    v7 = v10[1];
    v5 = *(v10 + 23);
    goto LABEL_55;
  }

  if (v18 >= v20)
  {
    v21 = v17 + v18;
    v22 = *v19;
    v23 = v17;
    while (1)
    {
      v24 = v18 - v20;
      if (v24 == -1 || (v25 = memchr(v23, v22, v24 + 1)) == 0)
      {
LABEL_40:
        v11 = a2;
        v10 = a3;
        goto LABEL_55;
      }

      v26 = v25;
      if (!memcmp(v25, v19, v20))
      {
        break;
      }

      v23 = (v26 + 1);
      v18 = v21 - (v26 + 1);
      if (v18 < v20)
      {
        goto LABEL_40;
      }
    }

    v11 = a2;
    if (v26 == v21)
    {
      v10 = a3;
    }

    else
    {
      v10 = a3;
      if (v26 - v17 != -1)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_55:
  if (v5 >= 0)
  {
    v30 = v10;
  }

  else
  {
    v30 = v6;
  }

  if (v5 >= 0)
  {
    v31 = v4;
  }

  else
  {
    v31 = v7;
  }

  if (byte_2791EAF >= 0)
  {
    v32 = &qword_2791E98;
  }

  else
  {
    v32 = qword_2791E98;
  }

  if (byte_2791EAF >= 0)
  {
    v33 = byte_2791EAF;
  }

  else
  {
    v33 = unk_2791EA0;
  }

  if (v33)
  {
    if (v31 >= v33)
    {
      v34 = v30 + v31;
      v35 = *v32;
      v36 = v30;
      while (1)
      {
        v37 = v31 - v33;
        if (v37 == -1 || (v38 = memchr(v36, v35, v37 + 1)) == 0)
        {
LABEL_74:
          v11 = a2;
          goto LABEL_75;
        }

        v39 = v38;
        if (!memcmp(v38, v32, v33))
        {
          break;
        }

        v36 = (v39 + 1);
        v31 = v34 - (v39 + 1);
        if (v31 < v33)
        {
          goto LABEL_74;
        }
      }

      v11 = a2;
      if (v39 != v34)
      {
        v10 = a3;
        if (v39 - v30 == -1)
        {
          goto LABEL_86;
        }

        goto LABEL_85;
      }

LABEL_75:
      v10 = a3;
      if (v5 >= 0)
      {
        v40 = a3;
      }

      else
      {
        v40 = v6;
      }

      if (v5 >= 0)
      {
        v41 = v4;
      }

      else
      {
        v41 = v7;
      }

      if (v41 >= 12)
      {
        goto LABEL_93;
      }

LABEL_104:
      if (v5 >= 0)
      {
        v46 = v10;
      }

      else
      {
        v46 = v6;
      }

      if (v5 >= 0)
      {
        v47 = v4;
      }

      else
      {
        v47 = v7;
      }

      if (v47 > 11)
      {
        goto LABEL_119;
      }

LABEL_130:
      if (v5 >= 0)
      {
        v52 = v10;
      }

      else
      {
        v52 = v6;
      }

      if (v5 >= 0)
      {
        v53 = v4;
      }

      else
      {
        v53 = v7;
      }

      if (v53 >= 11)
      {
        goto LABEL_145;
      }

      goto LABEL_157;
    }
  }

  else
  {
LABEL_85:
    sub_64E308(a4, &qword_2791E98, (v11 + 924), v11 + 1152, 4);
    v4 = *(v10 + 23);
    v6 = *v10;
    v7 = v10[1];
    v5 = *(v10 + 23);
  }

LABEL_86:
  if (v5 >= 0)
  {
    v40 = v10;
  }

  else
  {
    v40 = v6;
  }

  if (v5 >= 0)
  {
    v41 = v4;
  }

  else
  {
    v41 = v7;
  }

  if (v41 < 12)
  {
    goto LABEL_104;
  }

LABEL_93:
  v42 = v40 + v41;
  v43 = v40;
  do
  {
    v44 = memchr(v43, 123, v41 - 11);
    if (!v44)
    {
      break;
    }

    if (*v44 == 0x546574616470557BLL && *(v44 + 2) == 2103799145)
    {
      if (v44 != v42)
      {
        v10 = a3;
        if (v44 - v40 != -1)
        {
          sub_64E308(a4, "{UpdateTime}", (*(v11 + 1112) + 124), v11 + 1152, 0);
          v4 = a3[23];
          v6 = *a3;
          v7 = *(a3 + 1);
          v5 = a3[23];
        }

        goto LABEL_104;
      }

      break;
    }

    v43 = (v44 + 1);
    v41 = v42 - v43;
  }

  while (v42 - v43 >= 12);
  v10 = a3;
  if (v5 >= 0)
  {
    v46 = a3;
  }

  else
  {
    v46 = v6;
  }

  if (v5 >= 0)
  {
    v47 = v4;
  }

  else
  {
    v47 = v7;
  }

  if (v47 <= 11)
  {
    goto LABEL_130;
  }

LABEL_119:
  v48 = v46 + v47;
  v49 = v46;
  do
  {
    v50 = memchr(v49, 123, v47 - 11);
    if (!v50)
    {
      break;
    }

    if (*v50 == 0x446574616470557BLL && *(v50 + 2) == 2103800929)
    {
      if (v50 != v48)
      {
        v10 = a3;
        if (v50 - v46 != -1)
        {
          sub_64E308(a4, "{UpdateDate}", (*(v11 + 1112) + 124), v11 + 1152, 3);
          v4 = a3[23];
          v6 = *a3;
          v7 = *(a3 + 1);
          v5 = a3[23];
        }

        goto LABEL_130;
      }

      break;
    }

    v49 = (v50 + 1);
    v47 = v48 - v49;
  }

  while (v48 - v49 > 11);
  v10 = a3;
  if (v5 >= 0)
  {
    v52 = a3;
  }

  else
  {
    v52 = v6;
  }

  if (v5 >= 0)
  {
    v53 = v4;
  }

  else
  {
    v53 = v7;
  }

  if (v53 < 11)
  {
    goto LABEL_157;
  }

LABEL_145:
  v54 = v52 + v53;
  v55 = v52;
  while (1)
  {
    v56 = memchr(v55, 123, v53 - 10);
    if (!v56)
    {
      goto LABEL_156;
    }

    if (*v56 == 0x695465757373497BLL && *(v56 + 3) == 0x7D656D6954657573)
    {
      break;
    }

    v55 = (v56 + 1);
    v53 = v54 - v55;
    if (v54 - v55 < 11)
    {
      goto LABEL_156;
    }
  }

  if (v56 == v54)
  {
LABEL_156:
    v10 = a3;
    goto LABEL_157;
  }

  v10 = a3;
  if (v56 - v52 != -1)
  {
    sub_64E308(a4, "{IssueTime}", (*(v11 + 1112) + 120), v11 + 1152, 0);
    v4 = a3[23];
    v6 = *a3;
    v7 = *(a3 + 1);
    v5 = a3[23];
  }

LABEL_157:
  v58 = v5;
  if (v5 >= 0)
  {
    v59 = v10;
  }

  else
  {
    v59 = v6;
  }

  if (v58 >= 0)
  {
    v60 = v4;
  }

  else
  {
    v60 = v7;
  }

  if (v60 >= 11)
  {
    v61 = v59 + v60;
    v62 = v59;
    do
    {
      v63 = memchr(v62, 123, v60 - 10);
      if (!v63)
      {
        break;
      }

      if (*v63 == 0x614465757373497BLL && *(v63 + 3) == 0x7D65746144657573)
      {
        if (v63 != v61 && v63 - v59 != -1)
        {
          sub_64E308(a4, "{IssueDate}", (*(v11 + 1112) + 120), v11 + 1152, 3);
        }

        return;
      }

      v62 = (v63 + 1);
      v60 = v61 - v62;
    }

    while (v61 - v62 >= 11);
  }
}

void sub_54EDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_1AB28(&a39);
  sub_1AB28(v44 - 144);
  _Unwind_Resume(a1);
}

void sub_54EFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_54F004()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = sub_527724(v0, v1);
  sub_5678A8(v6 + 1576, v4, v2);
  sub_5597A0(v5 + 3168);
}

void sub_54F964(_Unwind_Exception *a1)
{
  sub_1F1A8(v3 - 112);
  sub_1AB28(v1 + v2);
  sub_1F1A8(v1 + 5872);
  sub_559B98(v1 + 3168);
  sub_6E3B8((v1 + 3152));
  sub_528AB4(v1 + 1576);
  sub_528AB4(v1);
  _Unwind_Resume(a1);
}

void sub_54FA4C(uint64_t a1, uint64_t *a2, void *a3)
{
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v5 = *a2;
  v6 = a2[1];
  v49 = &v57;
  v50 = 0;
  v7 = (v6 - v5);
  if (v6 != v5)
  {
    if ((0x1F693A1C451AB30BLL * (v7 >> 4)) < 0x1920FB49D0E229)
    {
      operator new();
    }

    sub_1794();
  }

  v13 = 0x1F693A1C451AB30BLL * ((v5 - v6) >> 4);
  if (-v7 >= 1)
  {
    v8 = v13;
    while (1)
    {
      v9 = operator new(2608 * v8, &std::nothrow);
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
        goto LABEL_11;
      }
    }

    v12 = v9;
  }

  else
  {
    v12 = 0;
    v8 = 0;
  }

LABEL_11:
  sub_563578(v7, 0, &v49, v13, v12, v8);
  if (v12)
  {
    operator delete(v12);
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v14 = a2[1] - *a2;
  if (v14)
  {
    v15 = 0;
    v16 = 0x1F693A1C451AB30BLL * (v14 >> 4);
    v17 = a3 + 133;
    v18 = -1;
    while (1)
    {
      v19 = *a2 + 2608 * v15;
      v20 = *v19;
      if (*v19 != 45 && v20 != 52 && *(v19 + 1448) == -1 && (v20 & 0xFFFFFFFE) != 0x30 && *(v19 + 1452) == -1)
      {
        break;
      }

      v22 = *(v19 + 1304);
      if ((v22 - 11) < 2)
      {
        break;
      }

      if ((*(v19 + 1447) & 0x8000000000000000) != 0)
      {
        if (*(v19 + 1432))
        {
          break;
        }
      }

      else if (*(v19 + 1447))
      {
        break;
      }

      if (*(v19 + 1176) != *(v19 + 1184) || *(v19 + 1200) != *(v19 + 1208))
      {
        goto LABEL_63;
      }

      v31 = v22 - 2;
      v32 = *(v19 + 1224) == *(v19 + 1232) && v31 >= 9;
      if (!v32 || *(v19 + 1248) == 1 && *(v19 + 1256) != *(v19 + 1264))
      {
        goto LABEL_63;
      }

      if (sub_659540(v19 + 32))
      {
        v33 = *(v19 + 1175);
        if (v33 < 0)
        {
          v33 = *(v19 + 1160);
        }

        if (v33)
        {
          goto LABEL_63;
        }
      }

      if (*(v19 + 1448) == -1 && *(v19 + 1452) == -1 && !sub_659BD0(v19 + 1488) && (*v19 & 0xFFFFFFFE) != 0x30)
      {
        sub_5520FC(a1, v19, &v49);
        v36 = a3[134];
        if (v36 >= a3[135])
        {
          v38 = sub_55A36C(v17, &v49);
        }

        else
        {
          sub_55A4D0(v36, &v49);
          v38 = v37 + 496;
        }

        a3[134] = v38;
        sub_55A8B4(&v49);
      }

      else
      {
LABEL_63:
        if (v18 < 0)
        {
          v18 = -1108378657 * ((a3[134] - a3[133]) >> 4);
          v34 = v52;
          if (v52 >= v53)
          {
LABEL_70:
            v52 = sub_52D920(&v51, v19);
            goto LABEL_31;
          }
        }

        else
        {
          v34 = v52;
          if (v52 >= v53)
          {
            goto LABEL_70;
          }
        }

        sub_52DA74(v34, v19);
        v52 = v34 + 2608;
      }

LABEL_31:
      v25 = 0x1F693A1C451AB30BLL * ((a2[1] - *a2) >> 4) - 1;
      if (v15 == v25 || v15 < v25 && (*v19 - 50) < 0xFFFFFFFE == ((*(*a2 + 2608 * v15 + 2608) & 0xFFFFFFFE) == 48))
      {
        if ((0x1F693A1C451AB30BLL * ((v52 - v51) >> 4)) > 1)
        {
          goto LABEL_35;
        }

        if (v51 == v52)
        {
          if (v54 != v55)
          {
            sub_551BB8(a1, &v54, &v49);
          }
        }

        else
        {
          if (v54 == v55)
          {
            v35 = *v17;
            sub_5520FC(a1, v51, &v49);
            sub_53C468(v17, v35 + 496 * v18, &v49);
          }

          else
          {
LABEL_35:
            v26 = *v17;
            sub_552478(a1, &v51, &v54, &v49);
            sub_53C468(v17, v26 + 496 * v18, &v49);
          }

          sub_55A8B4(&v49);
        }

        v28 = v54;
        v27 = v55;
        if (v55 != v54)
        {
          do
          {
            v27 = sub_52E078(v27 - 2608);
          }

          while (v27 != v28);
        }

        v55 = v28;
        v30 = v51;
        v29 = v52;
        if (v52 != v51)
        {
          do
          {
            v29 = sub_52E078(v29 - 2608);
          }

          while (v29 != v30);
        }

        v52 = v30;
        v18 = -1;
      }

      if (++v15 == v16)
      {
        v39 = v51;
        if (v51)
        {
          v40 = v52;
          v41 = v51;
          if (v52 != v51)
          {
            do
            {
              v40 = sub_52E078(v40 - 2608);
            }

            while (v40 != v39);
            v41 = v51;
          }

          v52 = v39;
          operator delete(v41);
        }

        goto LABEL_80;
      }
    }

    v23 = v55;
    if (v55 >= v56)
    {
      v24 = sub_52D920(&v54, *a2 + 2608 * v15);
    }

    else
    {
      sub_52DA74(v55, *a2 + 2608 * v15);
      v24 = v23 + 2608;
    }

    v55 = v24;
    goto LABEL_31;
  }

LABEL_80:
  v42 = v54;
  if (v54)
  {
    v43 = v55;
    v44 = v54;
    if (v55 != v54)
    {
      do
      {
        v43 = sub_52E078(v43 - 2608);
      }

      while (v43 != v42);
      v44 = v54;
    }

    v55 = v42;
    operator delete(v44);
  }

  v45 = v57;
  if (v57)
  {
    v46 = v58;
    v47 = v57;
    if (v58 != v57)
    {
      do
      {
        v46 = sub_52E078(v46 - 2608);
      }

      while (v46 != v45);
      v47 = v57;
    }

    v58 = v45;
    operator delete(v47);
  }
}

void sub_55003C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_55A8B4(va);
  sub_518B48((v3 - 160));
  sub_518B48((v3 - 136));
  sub_518B48((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_5500D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v5)
  {
    v8 = v4 - 2608;
    v9 = -v5;
    do
    {
      v8 = sub_52E078(v8) - 2608;
      v9 += 2608;
    }

    while (v9);
  }

  *(v6 - 104) = v3;
  sub_55F8BC(va);
  _Unwind_Resume(a1);
}

void ***sub_55010C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_559C9C(v7);
  if (*(a1 + 1463) == 1)
  {
    sub_54FA4C(a1, a2, v7);
  }

  else if (*(a1 + 1415) == 1)
  {
    sub_5501C4(a1, a2, v7);
  }

  else
  {
    sub_550634(a1, a2, v7);
  }

  sub_68DEC8(a3, v7);
  return sub_559E70(v7);
}

void sub_5501C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return;
  }

  do
  {
    if (!sub_51BBA8(v3))
    {
      goto LABEL_5;
    }

    _X8 = v3 + 3912;
    __asm { PRFM            #0, [X8] }

    if ((*(v3 + 1304) - 2) <= 8)
    {
      sub_550D04(a1, v3, v27);
    }

    v14 = sub_659540(v3 + 32);
    _X8 = v3 + 3783;
    __asm { PRFM            #0, [X8] }

    if (v14)
    {
      if ((*(v3 + 1175) & 0x8000000000000000) != 0)
      {
        if (*(v3 + 1160))
        {
LABEL_12:
          sub_5512B4(a1, v3, v27);
        }
      }

      else if (*(v3 + 1175))
      {
        goto LABEL_12;
      }
    }

    _X9 = v3 + 4056;
    _X8 = v3 + 2608;
    __asm { PRFM            #0, [X8] }

    v20 = *v3;
    __asm { PRFM            #0, [X9] }

    if (*v3 != 52)
    {
      if (v20 == 45)
      {
        sub_552E24(a1, v3, v27);
      }

      if (*(v3 + 1448) == -1 && (v20 & 0xFFFFFFFE) != 0x30 && *(v3 + 1452) == -1)
      {
        goto LABEL_26;
      }
    }

    v22 = *(v3 + 1304);
    if ((v22 - 11) < 2)
    {
LABEL_26:
      v23 = v29;
      if (v29 >= v30)
      {
        v7 = sub_52D920(&v28, v3);
      }

      else
      {
        sub_52DA74(v29, v3);
        v7 = v23 + 2608;
      }

      v29 = v7;
      goto LABEL_5;
    }

    if ((*(v3 + 1447) & 0x8000000000000000) != 0)
    {
      if (*(v3 + 1432))
      {
        goto LABEL_26;
      }
    }

    else if (*(v3 + 1447))
    {
      goto LABEL_26;
    }

    if (*(v3 + 1176) != *(v3 + 1184) || *(v3 + 1200) != *(v3 + 1208) || *(v3 + 1224) != *(v3 + 1232))
    {
      sub_551694(a1, v3, v27);
    }

    if (*(v3 + 1248) != 2)
    {
      if (sub_4D1F6C((a3 + 48)))
      {
        sub_5519C0(a1, v3, v27);
      }

      sub_5519C0(a1, v3, v27);
    }

    if (v22 != 13)
    {
      sub_552E24(a1, v3, v27);
    }

LABEL_5:
    v3 += 2608;
  }

  while (v3 != v4);
  v24 = v28;
  if (v28 != v29)
  {
    sub_551BB8(a1, &v28, v27);
  }

  if (v28)
  {
    v25 = v29;
    v26 = v28;
    if (v29 != v28)
    {
      do
      {
        v25 = sub_52E078(v25 - 2608);
      }

      while (v25 != v24);
      v26 = v28;
    }

    v29 = v24;
    operator delete(v26);
  }
}

void sub_550538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_55A8B4(va);
  sub_518B48((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_550634(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v3 = a2[1] - *a2;
  if (!v3)
  {
    return;
  }

  v7 = 0;
  v8 = 0x1F693A1C451AB30BLL * (v3 >> 4);
  do
  {
    v10 = (*a2 + 2608 * v7);
    if (!sub_51BBA8(v10))
    {
      goto LABEL_5;
    }

    if ((*v10 - 40) <= 4)
    {
      v11 = v43;
      if (v43 >= v44)
      {
        v9 = sub_52D920(&v42, v10);
      }

      else
      {
        sub_52DA74(v43, v10);
        v9 = v11 + 2608;
      }

      v43 = v9;
      goto LABEL_5;
    }

    sub_5678AC(a1 + 1576, v10, &v34);
    sub_67F320(&v34, v40);
    if (v41 < 0)
    {
      if (v40[1])
      {
        goto LABEL_15;
      }

      operator delete(v40[0]);
      v12 = v37;
      if (!v37)
      {
        goto LABEL_38;
      }

      while (1)
      {
LABEL_26:
        v17 = *v12;
        if (*(v12 + 191) < 0)
        {
          operator delete(v12[21]);
          if (*(v12 + 159) < 0)
          {
            goto LABEL_33;
          }

LABEL_28:
          if ((*(v12 + 135) & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

LABEL_34:
          operator delete(v12[14]);
          if (*(v12 + 95) < 0)
          {
            goto LABEL_35;
          }

LABEL_30:
          if ((*(v12 + 63) & 0x80000000) == 0)
          {
            goto LABEL_36;
          }

LABEL_24:
          operator delete(v12[5]);
          if (*(v12 + 39) < 0)
          {
            goto LABEL_37;
          }

LABEL_25:
          operator delete(v12);
          v12 = v17;
          if (!v17)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if ((*(v12 + 159) & 0x80000000) == 0)
          {
            goto LABEL_28;
          }

LABEL_33:
          operator delete(v12[17]);
          if (*(v12 + 135) < 0)
          {
            goto LABEL_34;
          }

LABEL_29:
          if ((*(v12 + 95) & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

LABEL_35:
          operator delete(v12[9]);
          if (*(v12 + 63) < 0)
          {
            goto LABEL_24;
          }

LABEL_36:
          if ((*(v12 + 39) & 0x80000000) == 0)
          {
            goto LABEL_25;
          }

LABEL_37:
          operator delete(v12[2]);
          operator delete(v12);
          v12 = v17;
          if (!v17)
          {
            goto LABEL_38;
          }
        }
      }
    }

    if (!v41)
    {
      v12 = v37;
      if (v37)
      {
        goto LABEL_26;
      }

LABEL_38:
      v18 = __p;
      __p = 0;
      if (v18)
      {
        operator delete(v18);
      }

      v19 = v34;
      if (v34)
      {
        v20 = v35;
        v21 = v34;
        if (v35 == v34)
        {
          goto LABEL_74;
        }

        do
        {
          v22 = *(v20 - 1);
          v20 -= 3;
          if (v22 < 0)
          {
            operator delete(*v20);
          }
        }

        while (v20 != v19);
LABEL_73:
        v21 = v34;
LABEL_74:
        v35 = v19;
        operator delete(v21);
        goto LABEL_5;
      }

      goto LABEL_5;
    }

LABEL_15:
    sub_550BFC(a1, 1, &v34);
    v13 = sub_58BBC(&v34);
    sub_65DED0(a1 + 3168, v40, v13, 0, &v38);
    v14 = *(a3 + 8);
    if (v14 >= *(a3 + 16))
    {
      *(a3 + 8) = sub_1CEE8(a3, &v38);
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (SHIBYTE(v39) < 0)
      {
        sub_325C(*(a3 + 8), v38, *(&v38 + 1));
      }

      else
      {
        v15 = v38;
        *(v14 + 16) = v39;
        *v14 = v15;
      }

      *(a3 + 8) = v14 + 24;
      *(a3 + 8) = v14 + 24;
      if ((SHIBYTE(v39) & 0x80000000) == 0)
      {
LABEL_19:
        if (v41 < 0)
        {
          goto LABEL_49;
        }

        goto LABEL_20;
      }
    }

    operator delete(v38);
    if (v41 < 0)
    {
LABEL_49:
      operator delete(v40[0]);
      v16 = v37;
      if (!v37)
      {
        goto LABEL_65;
      }

      while (1)
      {
LABEL_53:
        v23 = *v16;
        if (*(v16 + 191) < 0)
        {
          operator delete(v16[21]);
          if (*(v16 + 159) < 0)
          {
            goto LABEL_60;
          }

LABEL_55:
          if ((*(v16 + 135) & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

LABEL_61:
          operator delete(v16[14]);
          if (*(v16 + 95) < 0)
          {
            goto LABEL_62;
          }

LABEL_57:
          if ((*(v16 + 63) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

LABEL_51:
          operator delete(v16[5]);
          if (*(v16 + 39) < 0)
          {
            goto LABEL_64;
          }

LABEL_52:
          operator delete(v16);
          v16 = v23;
          if (!v23)
          {
            goto LABEL_65;
          }
        }

        else
        {
          if ((*(v16 + 159) & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_60:
          operator delete(v16[17]);
          if (*(v16 + 135) < 0)
          {
            goto LABEL_61;
          }

LABEL_56:
          if ((*(v16 + 95) & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

LABEL_62:
          operator delete(v16[9]);
          if (*(v16 + 63) < 0)
          {
            goto LABEL_51;
          }

LABEL_63:
          if ((*(v16 + 39) & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

LABEL_64:
          operator delete(v16[2]);
          operator delete(v16);
          v16 = v23;
          if (!v23)
          {
            goto LABEL_65;
          }
        }
      }
    }

LABEL_20:
    v16 = v37;
    if (v37)
    {
      goto LABEL_53;
    }

LABEL_65:
    v24 = __p;
    __p = 0;
    if (v24)
    {
      operator delete(v24);
    }

    v19 = v34;
    if (v34)
    {
      v25 = v35;
      v21 = v34;
      if (v35 == v34)
      {
        goto LABEL_74;
      }

      do
      {
        v26 = *(v25 - 1);
        v25 -= 3;
        if (v26 < 0)
        {
          operator delete(*v25);
        }
      }

      while (v25 != v19);
      goto LABEL_73;
    }

LABEL_5:
    ++v7;
  }

  while (v7 != v8);
  v27 = v42;
  if (v42 != v43)
  {
    sub_5586D8(&v42, &v34);
    v28 = sub_53A634(&v34, 0);
    v29 = *(a3 + 8);
    if (v29 >= *(a3 + 16))
    {
      v31 = sub_1CEE8(a3, v28);
    }

    else
    {
      if (*(v28 + 23) < 0)
      {
        sub_325C(*(a3 + 8), *v28, *(v28 + 8));
      }

      else
      {
        v30 = *v28;
        *(v29 + 16) = *(v28 + 16);
        *v29 = v30;
      }

      v31 = v29 + 24;
      *(a3 + 8) = v29 + 24;
    }

    *(a3 + 8) = v31;
    sub_53A868(&v34);
    v27 = v42;
  }

  if (v27)
  {
    v32 = v43;
    v33 = v27;
    if (v43 != v27)
    {
      do
      {
        v32 = sub_52E078(v32 - 2608);
      }

      while (v32 != v27);
      v33 = v42;
    }

    v43 = v27;
    operator delete(v33);
  }
}

void sub_550AFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  sub_53A868(va);
  sub_518B48((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_550B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53A868(va);
  sub_518B48((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_550B4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 8) = v3;
  if (*(v4 - 129) < 0)
  {
    operator delete(*(v4 - 152));
  }

  if (*(v4 - 105) < 0)
  {
    operator delete(*(v4 - 128));
  }

  sub_53A58C(va);
  sub_518B48((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_550BFC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    *__p = 0u;
    v8 = 0u;
    v9 = 1065353216;
    sub_65DED0(a1 + 3168, "Period", __p, 0, v10);
    v4 = v8;
    if (v8)
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

    v6 = __p[0];
    __p[0] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    v11 = 0;
    LOBYTE(v10[0]) = 0;
  }

  sub_67ECF8(a3, "{OptionalPeriod}", v10);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_550CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5511B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, uint64_t a63)
{
  sub_53A58C(&a64);
  sub_53A58C((v65 - 120));
  sub_55A8B4(v64);
  _Unwind_Resume(a1);
}

void sub_5515D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  sub_55D550(&a9);
  if (a62 < 0)
  {
    operator delete(__p);
  }

  sub_53A58C((v63 - 120));
  sub_55A8B4(v62);
  _Unwind_Resume(a1);
}

void sub_55191C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_51B6E0(va);
  sub_55A8B4(v2);
  _Unwind_Resume(a1);
}

void sub_551984(_Unwind_Exception *a1)
{
  if (v3)
  {
    v6 = v2 - 168;
    v7 = -v3;
    do
    {
      v6 = sub_52A624(v6) - 168;
      v7 += 168;
    }

    while (v7);
  }

  sub_52A6FC((v4 - 104));
  sub_55A8B4(v1);
  _Unwind_Resume(a1);
}

void sub_551B34(_Unwind_Exception *a1)
{
  sub_53DC88((v2 - 104));
  sub_55A8B4(v1);
  _Unwind_Resume(a1);
}

void sub_551B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53DC88((v16 - 104));
  sub_55A8B4(v15);
  _Unwind_Resume(a1);
}

void sub_551BB8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  *(a3 + 384) = 0;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 399) = 0;
  *(a3 + 423) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0;
  *(a3 + 456) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    if ((*v6 - 40) > 4)
    {
      v10 = v23;
      if (v23 >= v24)
      {
        v8 = sub_52D920(&v22, v6);
      }

      else
      {
        sub_52DA74(v23, v6);
        v8 = v10 + 2608;
      }

      v23 = v8;
      v6 += 652;
    }

    else
    {
      v9 = v20;
      if (v20 >= v21)
      {
        v20 = sub_52D920(&v19, v6);
      }

      else
      {
        sub_52DA74(v20, v6);
        v20 = v9 + 2608;
      }

      v6 += 652;
    }
  }

  sub_557F74(a1, &v22, &v19, __p);
  sub_53D784(a3, __p);
  sub_53A868(__p);
  v11 = *(a3 + 176);
  if (v11 >= *(a3 + 184))
  {
    v12 = sub_55D320((a3 + 168));
  }

  else
  {
    *(v11 + 768) = 0;
    *(v11 + 776) = 0;
    *(v11 + 792) = 0;
    v12 = v11 + 800;
    *(v11 + 784) = 0;
  }

  *(a3 + 176) = v12;
  sub_55811C(a1, a2, __p);
  v13 = *(a3 + 176);
  v14 = v13 - 800;
  v15 = *(v13 - 32);
  if (v15 != 2)
  {
    if (v15)
    {
      sub_5AF20();
    }

    *(v13 - 32) = -1;
    v14 = sub_55D480(v14);
    *(v13 - 32) = 2;
  }

  sub_53D784(v14, __p);
  sub_53A868(__p);
  sub_557F74(a1, &v22, &v19, __p);
  v16 = *(a3 + 176);
  v17 = *(v16 - 32);
  if (v17 != 2)
  {
    if (v17)
    {
      sub_5AF20();
    }

    *(v16 - 32) = -1;
    sub_55D480(v16 - 800);
    *(v16 - 32) = 2;
  }

  sub_53D784(v16 - 640, __p);
  sub_53A868(__p);
  *(a3 + 160) = 0;
  sub_553934(a1, *a2);
}

void sub_552034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_518B48((v16 - 120));
  sub_518B48((v16 - 96));
  sub_55A8B4(v15);
  _Unwind_Resume(a1);
}

void sub_5520FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  *(a3 + 384) = 0;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 399) = 0;
  *(a3 + 423) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0;
  *(a3 + 456) = 0;
  v6 = *(a2 + 1304) - 2;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  if (v6 <= 8)
  {
    sub_550D04(a1, a2, __p);
  }

  if (sub_659540(a2 + 32))
  {
    v7 = *(a2 + 1175);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 1160);
    }

    if (v7)
    {
      sub_5512B4(a1, a2, __p);
    }
  }

  if (*a2 == 45)
  {
    sub_552E24(a1, a2, __p);
  }

  if (*(a2 + 1176) != *(a2 + 1184) || *(a2 + 1200) != *(a2 + 1208) || *(a2 + 1224) != *(a2 + 1232))
  {
    sub_551694(a1, a2, __p);
  }

  if (*(a2 + 1248) != 2)
  {
    sub_5519C0(a1, a2, __p);
  }

  if (*(a2 + 1304) != 13)
  {
    sub_552E24(a1, a2, __p);
  }

  if (*(a2 + 1376) != *(a2 + 1384))
  {
    sub_5535DC(a1, a2, __p);
  }

  if (sub_53BB38(a2))
  {
    sub_552E24(a1, a2, __p);
  }

  v8 = *(a2 + 1447);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 1432);
  }

  if (v8)
  {
    sub_552E24(a1, a2, __p);
  }

  if (*(a2 + 1448) != -1 || *(a2 + 1452) != -1)
  {
    sub_5E00FC(__p);
  }

  if (*a2 == 49)
  {
    sub_554B7C(a1);
  }

  if (*a2 == 48)
  {
    sub_5543E4(a1);
  }

  if (sub_659BD0(a2 + 1488))
  {
    sub_555314(a1, a2, __p);
  }

  if (*(a3 + 464) == *(a3 + 472))
  {
    sub_53D408(a2, __p);
    sub_794D4(a3 + 464, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }
}

void sub_55245C(_Unwind_Exception *a1)
{
  sub_55AA68(v2);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_552478@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_64B998(a4);
  *(a4 + 168) = 0;
  *(a4 + 160) = 0;
  *(a4 + 176) = 0;
  *(a4 + 184) = 0;
  sub_64B998(a4 + 192);
  *(a4 + 384) = 0;
  *(a4 + 392) = -1;
  *(a4 + 395) = -1;
  *(a4 + 407) = 0;
  *(a4 + 415) = 0;
  *(a4 + 399) = 0;
  *(a4 + 423) = 0;
  *(a4 + 440) = 0;
  *(a4 + 448) = 0;
  *(a4 + 432) = 0;
  *(a4 + 456) = 0;
  *(a4 + 464) = 0u;
  *(a4 + 480) = 0u;
  sub_555C70(a1, a2, v38);
  v37 = a4 + 352;
  v8 = *(a4 + 384);
  if (v8 == -1)
  {
    v9 = a1;
    if (v39 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v39 != -1)
  {
LABEL_5:
    v62 = a4 + 352;
    (off_266B280[v39])(&v62);
    goto LABEL_6;
  }

  (off_266B1F0[v8])(&v62, v37);
  *(a4 + 384) = -1;
LABEL_6:
  v9 = a1;
LABEL_7:
  *(a4 + 392) = v40;
  if (*(a4 + 423) < 0)
  {
    operator delete(*(a4 + 400));
    v9 = a1;
  }

  *(a4 + 400) = *__p;
  *(a4 + 416) = v42;
  HIBYTE(v42) = 0;
  LOBYTE(__p[0]) = 0;
  *(a4 + 424) = v43;
  if ((*(a4 + 455) & 0x80000000) == 0)
  {
    *(a4 + 432) = v44;
    *(a4 + 448) = v45;
    HIBYTE(v45) = 0;
    LOBYTE(v44) = 0;
    *(a4 + 456) = v46;
    v10 = v39;
    if (v39 == -1)
    {
      goto LABEL_11;
    }

LABEL_15:
    (off_266B1F0[v10])(&v62, v38);
    v9 = a1;
    *(a4 + 160) = 1;
    v11 = *a2;
    v35 = a2[1];
    if (*a2 == v35)
    {
      goto LABEL_64;
    }

    goto LABEL_16;
  }

  operator delete(*(a4 + 432));
  v9 = a1;
  v12 = SHIBYTE(v42);
  *(a4 + 432) = v44;
  *(a4 + 448) = v45;
  HIBYTE(v45) = 0;
  LOBYTE(v44) = 0;
  *(a4 + 456) = v46;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    v9 = a1;
    v10 = v39;
    if (v39 != -1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = v39;
    if (v39 != -1)
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  *(a4 + 160) = 1;
  v11 = *a2;
  v35 = a2[1];
  if (*a2 != v35)
  {
LABEL_16:
    v33 = a3;
    v34 = a2;
    v32 = v9;
    do
    {
      v36 = v11;
      sub_5520FC(v9, v11, v38);
      v14 = v47;
      v13 = v48;
      while (v14 != v13)
      {
        if (*(v14 + 768) != 2 || sub_55DD5C(v49, v37))
        {
          goto LABEL_56;
        }

        v16 = *(v14 + 768);
        if (v16 != 2)
        {
          if (v16)
          {
            sub_5AF20();
          }

          *(v14 + 768) = -1;
          bzero(v14, 0x300uLL);
          sub_64B998(v14);
          sub_64B998(v14 + 160);
          *(v14 + 352) = 0;
          *(v14 + 360) = -1;
          *(v14 + 363) = -1;
          *(v14 + 375) = 0;
          *(v14 + 383) = 0;
          *(v14 + 367) = 0;
          *(v14 + 391) = 0;
          *(v14 + 408) = 0;
          *(v14 + 416) = 0;
          *(v14 + 400) = 0;
          *(v14 + 424) = 0;
          sub_64B998(v14 + 432);
          sub_64B998(v14 + 592);
          *(v14 + 752) = xmmword_2291330;
          *(v14 + 768) = 2;
        }

        v17 = *(v14 + 352);
        if (v17 == -1)
        {
          if (v50 != -1)
          {
LABEL_30:
            v62 = v14 + 320;
            (off_266B2A8[v50])(&v62, v14 + 320, v49);
          }
        }

        else
        {
          if (v50 != -1)
          {
            goto LABEL_30;
          }

          (off_266B1F0[v17])(&v62, v14 + 320);
          *(v14 + 352) = -1;
        }

        *(v14 + 360) = v51;
        if ((v14 + 320) == v49)
        {
          *(v14 + 392) = v54;
        }

        else
        {
          if (*(v14 + 391) < 0)
          {
            if (v53 >= 0)
            {
              v19 = &v52;
            }

            else
            {
              v19 = v52;
            }

            if (v53 >= 0)
            {
              v20 = HIBYTE(v53);
            }

            else
            {
              v20 = *(&v52 + 1);
            }

            sub_13B38(v14 + 368, v19, v20);
          }

          else if (v53 < 0)
          {
            sub_13A68((v14 + 368), v52, *(&v52 + 1));
          }

          else
          {
            v18 = v52;
            *(v14 + 384) = v53;
            *(v14 + 368) = v18;
          }

          *(v14 + 392) = v54;
          if (*(v14 + 423) < 0)
          {
            if (v56 >= 0)
            {
              v22 = &v55;
            }

            else
            {
              v22 = v55;
            }

            if (v56 >= 0)
            {
              v23 = HIBYTE(v56);
            }

            else
            {
              v23 = *(&v55 + 1);
            }

            sub_13B38(v14 + 400, v22, v23);
          }

          else if (v56 < 0)
          {
            sub_13A68((v14 + 400), v55, *(&v55 + 1));
          }

          else
          {
            v21 = v55;
            *(v14 + 416) = v56;
            *(v14 + 400) = v21;
          }
        }

        *(v14 + 424) = v57;
LABEL_56:
        v24 = *(a4 + 176);
        if (v24 >= *(a4 + 184))
        {
          v15 = sub_55E618((a4 + 168), v14);
        }

        else
        {
          *v24 = 0;
          *(v24 + 768) = -1;
          v25 = *(v14 + 768);
          if (v25 != -1)
          {
            v62 = v24;
            (off_266B2D0[v25])(&v62, v14);
            *(v24 + 768) = v25;
          }

          *(v24 + 792) = 0;
          *(v24 + 776) = 0u;
          v26 = *(v14 + 776);
          v27 = *(v14 + 784);
          v60 = v24 + 776;
          v61 = 0;
          if (v27 != v26)
          {
            if (0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3) < 0xAAAAAAAAAAAAAABLL)
            {
              operator new();
            }

            sub_1794();
          }

          v15 = v24 + 800;
        }

        *(a4 + 176) = v15;
        v14 += 800;
      }

      sub_93FE4(a4 + 464, *(a4 + 472), v58, v59, 0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 3));
      a3 = v33;
      a2 = v34;
      sub_55A8B4(v38);
      v11 = v36 + 2608;
      v9 = v32;
    }

    while (v36 + 2608 != v35);
  }

LABEL_64:
  if (*a3 != a3[1])
  {
    sub_551BB8(v9, a3, v38);
  }

  v28 = v9;
  sub_556518();
  sub_53D784(a4, v38);
  result = sub_53A868(v38);
  v30 = *(a4 + 168);
  v31 = *(a4 + 176);
  if (v30 != v31)
  {
    sub_55315C(v28, 0x8F5C28F5C28F5C29 * ((v31 - v30) >> 5), v38);
    sub_53D784(a4 + 192, v38);
    result = sub_53A868(v38);
  }

  *(a4 + 492) = (**a2 & 0xFFFFFFFE) == 48;
  return result;
}

void sub_552C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_55ABBC(v15);
  *(v14 + 176) = v15;
  sub_55A8B4(va);
  sub_55A8B4(v14);
  _Unwind_Resume(a1);
}

void sub_552CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_55A8B4(va);
  sub_55A8B4(v14);
  _Unwind_Resume(a1);
}

void sub_552DE8()
{
  sub_746A0(v2 - 136);
  *(v1 + 784) = v0;
  JUMPOUT(0x552DF8);
}

void sub_552E24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  *(a3 + 384) = 0;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 399) = 0;
  *(a3 + 423) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0;
  *(a3 + 456) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  sub_557B54(a1, a2, v8);
  sub_53D784(a3, v8);
  sub_53A868(v8);
  if (*(a2 + 1176) != *(a2 + 1184) || *(a2 + 1200) != *(a2 + 1208) || *(a2 + 1224) != *(a2 + 1232) || (*(a2 + 1304) - 2) < 9 || *(a2 + 1248) == 1 && *(a2 + 1256) != *(a2 + 1264))
  {
    goto LABEL_17;
  }

  if (sub_659540(a2 + 32))
  {
    if (*(a2 + 1175) >= 0)
    {
      v6 = *(a2 + 1175);
    }

    else
    {
      v6 = *(a2 + 1160);
    }

    v7 = 1;
    if (v6 || *(a2 + 1448) != -1)
    {
LABEL_18:
      *(a3 + 160) = v7;
      sub_553934(a1, a2);
    }
  }

  else if (*(a2 + 1448) != -1)
  {
    goto LABEL_17;
  }

  if (*(a2 + 1452) == -1 && !sub_659BD0(a2 + 1488))
  {
    v7 = (*a2 & 0xFFFFFFFE) == 48;
    goto LABEL_18;
  }

LABEL_17:
  v7 = 1;
  goto LABEL_18;
}

void sub_553140(_Unwind_Exception *a1)
{
  sub_55AA68(v2);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_55315C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_56AFC8(a1 + 1576, a2, &v19);
  sub_67F320(&v19, __p);
  v5 = sub_58BBC(&v19);
  sub_65DED0(a1 + 3168, __p, v5, 0, v17);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  sub_6EDEC(*(a1 + 968), v13);
  sub_2C68(v17, v13, __p);
  sub_64BC20(a3, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
    if ((v14 & 0x80000000) == 0)
    {
LABEL_5:
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_21:
      operator delete(v17[0]);
      v6 = v22;
      if (!v22)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v13[0]);
  if (v18 < 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v6 = v22;
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_7:
    v7 = *v6;
    sub_55F7FC((v6 + 2));
    operator delete(v6);
    v6 = v7;
  }

  while (v7);
LABEL_8:
  v8 = v21;
  v21 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = v19;
  if (v19)
  {
    v10 = v20;
    v11 = v19;
    if (v20 != v19)
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
      v11 = v19;
    }

    v20 = v9;
    operator delete(v11);
  }
}

void sub_5532C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void **a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
LABEL_8:
        sub_53A58C(&a27);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a21);
      goto LABEL_8;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_553360(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 1248);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v3)
  {
    memset(v8, 0, sizeof(v8));
    v4 = *(a1 + 1256);
    v5 = *(a1 + 1264);
    v6 = v8;
    v7 = 0;
    if (v5 != v4)
    {
      if (0xCF3CF3CF3CF3CF3DLL * ((v5 - v4) >> 3) < 0x186186186186187)
      {
        operator new();
      }

      sub_1794();
    }
  }
}

void sub_553554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_52A6FC(va);
  sub_53DC88(v2);
  _Unwind_Resume(a1);
}

void sub_553570(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_51B6E0((v3 - 88));
  sub_53DC88(v1);
  _Unwind_Resume(a1);
}

void sub_5535A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v5)
  {
    v8 = v4 - 168;
    v9 = -v5;
    do
    {
      v8 = sub_52A624(v8) - 168;
      v9 += 168;
    }

    while (v9);
  }

  *(v6 - 80) = v3;
  sub_52A6FC(va);
  sub_53DC88(v2);
  _Unwind_Resume(a1);
}

void sub_5535DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(a3);
  *(a3 + 168) = 0;
  *(a3 + 160) = 0;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  sub_64B998(a3 + 192);
  *(a3 + 384) = 0;
  *(a3 + 392) = -1;
  *(a3 + 395) = -1;
  *(a3 + 407) = 0;
  *(a3 + 415) = 0;
  *(a3 + 399) = 0;
  *(a3 + 423) = 0;
  *(a3 + 440) = 0;
  *(a3 + 448) = 0;
  *(a3 + 432) = 0;
  *(a3 + 456) = 0;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  sub_75AED0((a1 + 5872), (a2 + 1376), &v8);
  sub_64C184(a3, &v8);
  if (*(a2 + 1176) != *(a2 + 1184) || *(a2 + 1200) != *(a2 + 1208) || *(a2 + 1224) != *(a2 + 1232) || (*(a2 + 1304) - 2) < 9 || *(a2 + 1248) == 1 && *(a2 + 1256) != *(a2 + 1264))
  {
    goto LABEL_17;
  }

  if (sub_659540(a2 + 32))
  {
    if (*(a2 + 1175) >= 0)
    {
      v6 = *(a2 + 1175);
    }

    else
    {
      v6 = *(a2 + 1160);
    }

    v7 = 1;
    if (v6 || *(a2 + 1448) != -1)
    {
LABEL_18:
      *(a3 + 160) = v7;
      sub_553934(a1, a2);
    }
  }

  else if (*(a2 + 1448) != -1)
  {
    goto LABEL_17;
  }

  if (*(a2 + 1452) == -1 && !sub_659BD0(a2 + 1488))
  {
    v7 = (*a2 & 0xFFFFFFFE) == 48;
    goto LABEL_18;
  }

LABEL_17:
  v7 = 1;
  goto LABEL_18;
}

void sub_5538DC(_Unwind_Exception *a1)
{
  if (*(v2 - 41) < 0)
  {
    operator delete(*(v2 - 64));
  }

  sub_55A8B4(v1);
  _Unwind_Resume(a1);
}

void sub_553934(uint64_t a1, uint64_t a2)
{
  if (sub_659540(a2 + 32))
  {
    v3 = *(a2 + 1175);
    if ((v3 & 0x80u) != 0)
    {
      v3 = *(a2 + 1160);
    }

    if (v3)
    {
      v4 = *(a2 + 832);
      if (v4 > 0x16)
      {
LABEL_6:
        v5 = 4;
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  if (sub_659BD0(a2 + 1488))
  {
    v4 = *(a2 + 2288);
    if (v4 > 0x16)
    {
      goto LABEL_6;
    }

LABEL_9:
    v5 = dword_2298D9C[v4] | dword_2298D40[v4];
    goto LABEL_10;
  }

  if (*(a2 + 1248) == 2)
  {
    v6 = *(a2 + 1176);
    v7 = *(a2 + 1184);
    if (v6 != v7)
    {
      __p[0] = 0;
      __p[1] = 0;
      v16 = 0;
      v17 = __p;
      v18 = 0;
      if (0xCF3CF3CF3CF3CF3DLL * ((v7 - v6) >> 3) < 0x186186186186187)
      {
        operator new();
      }

      sub_1794();
    }

    if (*(a2 + 1200) != *(a2 + 1208) || *(a2 + 1224) != *(a2 + 1232))
    {
      sub_587F3C(4);
    }

    if (*a2 == 45)
    {
LABEL_23:
      v5 = 39;
      goto LABEL_10;
    }

    if ((*(a2 + 1304) - 2) >= 0xC)
    {
      v5 = 5;
    }

    else
    {
      if (*(a2 + 1376) == *(a2 + 1384))
      {
        if (!sub_53BB38(a2))
        {
          if ((*a2 - 48) >= 2)
          {
            if (*a2 == 51)
            {
              v5 = 38;
            }

            else
            {
              v5 = 4;
            }
          }

          else
          {
            v5 = 51;
          }

          goto LABEL_10;
        }

        goto LABEL_23;
      }

      v5 = 6;
    }

LABEL_10:

    sub_587F3C(v5);
  }

  v8 = (a2 + 1280);
  if (*(a2 + 1303) < 0)
  {
    v10 = *(a2 + 1288);
    if (v10)
    {
      v11 = *v8;
      goto LABEL_39;
    }
  }

  else if (*(a2 + 1303))
  {
    *__p = *v8;
    v9 = *(a2 + 1296);
LABEL_35:
    v16 = v9;
    goto LABEL_40;
  }

  v12 = *(a2 + 1256);
  v13 = *(a2 + 1264);
  if (v12 != v13)
  {
    while (1)
    {
      v14 = *(v12 + 159);
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v12 + 144);
      }

      if (v14)
      {
        break;
      }

      v12 += 168;
      if (v12 == v13)
      {
        goto LABEL_36;
      }
    }
  }

  if (v12 == v13)
  {
LABEL_36:
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    goto LABEL_40;
  }

  if ((*(v12 + 159) & 0x80000000) == 0)
  {
    *__p = *(v12 + 136);
    v9 = *(v12 + 152);
    goto LABEL_35;
  }

  v11 = *(v12 + 136);
  v10 = *(v12 + 144);
LABEL_39:
  sub_325C(__p, v11, v10);
LABEL_40:
  sub_5885E4(__p);
}

void sub_553CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_553CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

void sub_553CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v6)
  {
    v8 = v5 - 168;
    v9 = -v6;
    do
    {
      v8 = sub_52A624(v8) - 168;
      v9 += 168;
    }

    while (v9);
  }

  sub_52A6FC(va);
  _Unwind_Resume(a1);
}

void sub_55407C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_56C570(a2, &v19);
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  sub_64FB18((a3 + 432), qword_2298CB0, __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = nullsub_1(&v19);
  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    v9 = sub_58BBC(&v19);
    sub_65DED0(a1 + 3168, v7, v9, 0, __p);
    sub_64C184(a3 + 432, __p);
    sub_558B8C(a1, a2, __p, (a3 + 432));
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    v7 += 24;
  }

  v10 = v22;
  if (v22)
  {
    do
    {
      v11 = *v10;
      sub_55F7FC((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = v21;
  v21 = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
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
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }
}

void sub_5541E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_5541F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A58C(&a15);
    _Unwind_Resume(a1);
  }

  sub_53A58C(&a15);
  _Unwind_Resume(a1);
}

void sub_554230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_56CAE4(a2, &v19);
  __p[0] = 0;
  __p[1] = 0;
  v18 = 0;
  sub_64FB18((a3 + 592), qword_2298C98, __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = nullsub_1(&v19);
  v7 = *v6;
  v8 = v6[1];
  while (v7 != v8)
  {
    v9 = sub_58BBC(&v19);
    sub_65DED0(a1 + 3168, v7, v9, 0, __p);
    sub_64C184(a3 + 592, __p);
    sub_558B8C(a1, a2, __p, (a3 + 592));
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    v7 += 24;
  }

  v10 = v22;
  if (v22)
  {
    do
    {
      v11 = *v10;
      sub_55F7FC((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = v21;
  v21 = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = v19;
  if (v19)
  {
    v14 = v20;
    v15 = v19;
    if (v20 != v19)
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
      v15 = v19;
    }

    v20 = v13;
    operator delete(v15);
  }
}

void sub_554394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_53A58C(va);
  _Unwind_Resume(a1);
}

void sub_5543A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A58C(&a15);
    _Unwind_Resume(a1);
  }

  sub_53A58C(&a15);
  _Unwind_Resume(a1);
}

void sub_5543E4(uint64_t a1)
{
  sub_64B998(v14);
  sub_64B998(v15);
  *&v15[192] = 0;
  memset(&v15[200], 255, 7);
  v17 = 0;
  v16 = 0uLL;
  v18 = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  sub_64B998(v23);
  sub_64B998(v24);
  v24[10] = xmmword_2291330;
  sub_56CC5C(&v13);
  sub_67F320(&v13, &v6);
  v2 = sub_58BBC(&v13);
  sub_65DED0(a1 + 3168, &v6, v2, 0, &__p);
  sub_64BC20(v12, &__p);
  sub_53D784(v14, v12);
  sub_53A868(v12);
  if (v11 < 0)
  {
    operator delete(__p);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v6);
LABEL_3:
  sub_56CC6C(&__p);
  sub_67F320(&__p, v4);
  v3 = sub_58BBC(&__p);
  sub_65DED0(a1 + 3168, v4, v3, 0, &v6);
  sub_64BC20(v12, &v6);
  sub_53D784(v15, v12);
  sub_53A868(v12);
  if (v7 < 0)
  {
    operator delete(v6);
    if ((v5 & 0x80000000) == 0)
    {
LABEL_5:
      if ((byte_2792647 & 0x80000000) == 0)
      {
LABEL_6:
        *v8 = xmmword_2792630;
        v9 = unk_2792640;
        goto LABEL_12;
      }

LABEL_11:
      sub_325C(v8, xmmword_2792630, *(&xmmword_2792630 + 1));
LABEL_12:
      sub_64BC20(v12, v8);
      sub_53D784(v23, v12);
      sub_53A868(v12);
      sub_56CC7C();
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v4[0]);
  if ((byte_2792647 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  goto LABEL_11;
}

void sub_554978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if ((a14 & 0x80000000) == 0)
      {
LABEL_9:
        sub_53A58C(&a31);
        if (a45 < 0)
        {
          operator delete(a40);
        }

        sub_53A58C(&a47);
        sub_53A58C(&a72);
        sub_53F5F4(&STACK[0x200]);
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a9);
      goto LABEL_9;
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_554B7C(uint64_t a1)
{
  sub_64B998(v14);
  sub_64B998(v15);
  *&v15[192] = 0;
  memset(&v15[200], 255, 7);
  v17 = 0;
  v16 = 0uLL;
  v18 = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  sub_64B998(v23);
  sub_64B998(v24);
  v24[10] = xmmword_2291330;
  sub_56CD38(&v13);
  sub_67F320(&v13, &v6);
  v2 = sub_58BBC(&v13);
  sub_65DED0(a1 + 3168, &v6, v2, 0, &__p);
  sub_64BC20(v12, &__p);
  sub_53D784(v14, v12);
  sub_53A868(v12);
  if (v11 < 0)
  {
    operator delete(__p);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v6);
LABEL_3:
  sub_56CD48(&__p);
  sub_67F320(&__p, v4);
  v3 = sub_58BBC(&__p);
  sub_65DED0(a1 + 3168, v4, v3, 0, &v6);
  sub_64BC20(v12, &v6);
  sub_53D784(v15, v12);
  sub_53A868(v12);
  if (v7 < 0)
  {
    operator delete(v6);
    if ((v5 & 0x80000000) == 0)
    {
LABEL_5:
      if ((byte_279265F & 0x80000000) == 0)
      {
LABEL_6:
        *v8 = xmmword_2792648;
        v9 = unk_2792658;
        goto LABEL_12;
      }

LABEL_11:
      sub_325C(v8, xmmword_2792648, *(&xmmword_2792648 + 1));
LABEL_12:
      sub_64BC20(v12, v8);
      sub_53D784(v23, v12);
      sub_53A868(v12);
      sub_56CC7C();
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v4[0]);
  if ((byte_279265F & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  goto LABEL_11;
}

void sub_555110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if ((a14 & 0x80000000) == 0)
      {
LABEL_9:
        sub_53A58C(&a31);
        if (a45 < 0)
        {
          operator delete(a40);
        }

        sub_53A58C(&a47);
        sub_53A58C(&a72);
        sub_53F5F4(&STACK[0x200]);
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a9);
      goto LABEL_9;
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_555314(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_64B998(v31);
  sub_64B998(v32);
  *&v32[192] = 0;
  memset(&v32[200], 255, 7);
  v34 = 0;
  v33 = 0uLL;
  v35 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v39 = 0;
  sub_64B998(&__s);
  sub_64B998(v42);
  v42[10] = xmmword_2291330;
  sub_56A230(a2, &v30);
  HIBYTE(v27) = 0;
  LOBYTE(__p[0]) = 0;
  sub_67ECF8(&v30, "{OptionalPeriod}", __p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  sub_67F320(&v30, &v22);
  v6 = sub_58BBC(&v30);
  sub_65DED0(a1 + 3168, &v22, v6, 0, &v24);
  sub_64BC20(__p, &v24);
  sub_53D784(v31, __p);
  sub_53A868(__p);
  if (v25 < 0)
  {
    operator delete(v24);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v22);
LABEL_5:
  sub_56CD58(a2, &v24);
  sub_550BFC(a1, 1, &v24);
  sub_67F320(&v24, v18);
  v7 = sub_58BBC(&v24);
  sub_65DED0(a1 + 3168, v18, v7, 0, &v22);
  sub_64BC20(__p, &v22);
  sub_53D784(v32, __p);
  sub_53A868(__p);
  if (v23 < 0)
  {
    operator delete(v22);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v18[0]);
LABEL_7:
  sub_56CEA8(a2, &v22);
  if (!sub_6F390(&v22))
  {
    goto LABEL_10;
  }

  sub_67F320(&v22, v20);
  v8 = sub_58BBC(&v22);
  sub_65DED0(a1 + 3168, v20, v8, 0, v18);
  sub_64BC20(__p, v18);
  sub_53D784(&__s, __p);
  sub_53A868(__p);
  if (v19 < 0)
  {
    operator delete(v18[0]);
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
LABEL_10:
      v9 = __s;
      if (__s == v41)
      {
        goto LABEL_52;
      }

LABEL_11:
      v10 = *(v9 + 23);
      if (v10 < 0)
      {
        v11 = v9;
        v9 = *v9;
        v10 = v11[1];
        if (v10 < 21)
        {
          goto LABEL_52;
        }
      }

      else if (v10 < 21)
      {
        goto LABEL_52;
      }

      v12 = v9 + v10;
      v13 = v9;
      while (1)
      {
        v14 = memchr(v13, 123, v10 - 20);
        if (!v14)
        {
          goto LABEL_52;
        }

        v15 = *v14 == 0x636E49616572417BLL && *(v14 + 1) == 0x626557746E656469;
        if (v15 && *(v14 + 13) == 0x7D6B6E696C626557)
        {
          break;
        }

        v13 = (v14 + 1);
        v10 = v12 - v13;
        if (v12 - v13 < 21)
        {
          goto LABEL_52;
        }
      }

      if (v14 != v12 && v14 - v9 != -1)
      {
        if (*(a2 + 2471) < 0)
        {
          sub_325C(__p, *(a2 + 2448), *(a2 + 2456));
        }

        else
        {
          *__p = *(a2 + 2448);
          v27 = *(a2 + 2464);
        }

        if (*(a2 + 2495) < 0)
        {
          sub_325C(&v28, *(a2 + 2472), *(a2 + 2480));
        }

        else
        {
          v28 = *(a2 + 2472);
          v29 = *(a2 + 2488);
        }

        if (v29 >= 0)
        {
          v17 = HIBYTE(v29);
        }

        else
        {
          v17 = *(&v28 + 1);
        }

        if (v17)
        {
          if (SHIBYTE(v29) < 0)
          {
            sub_325C(v20, v28, *(&v28 + 1));
          }

          else
          {
            *v20 = v28;
            v21 = v29;
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(v28);
          }

          v28 = *v20;
          v29 = v21;
          HIBYTE(v21) = 0;
          LOBYTE(v20[0]) = 0;
          sub_64F700(&__s, "{AreaIncidentWeblink}");
        }

        operator new();
      }

LABEL_52:
      sub_552E24(a1, a2, a3);
    }
  }

  else if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(v20[0]);
  v9 = __s;
  if (__s == v41)
  {
    goto LABEL_52;
  }

  goto LABEL_11;
}

void sub_555A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void **a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1AB28(&a39);
  sub_53A58C(&a21);
  sub_53A58C(&a30);
  sub_53A58C(&a59);
  sub_53F5F4(&a68);
  _Unwind_Resume(a1);
}

void sub_555C70(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = 0;
  v4 = 0uLL;
  v60 = 0u;
  v59 = 0;
  v58 = 0u;
  v51[0] = 0;
  v57 = 0;
  v44[0] = 0;
  v50 = 0;
  v37[0] = 0;
  v43 = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    while (1)
    {
      v8 = sub_659540(v5 + 32);
      _X8 = v5 + 3783;
      __asm { PRFM            #0, [X8] }

      if (!v8)
      {
        goto LABEL_11;
      }

      if ((*(v5 + 1175) & 0x8000000000000000) != 0)
      {
        if (!*(v5 + 1160))
        {
          goto LABEL_11;
        }
      }

      else if (!*(v5 + 1175))
      {
        goto LABEL_11;
      }

      if (sub_659608(v5 + 32))
      {
        sub_553934(a1, v5);
      }

LABEL_11:
      if (sub_659BD0(v5 + 1488))
      {
        goto LABEL_12;
      }

      if (!sub_659540(v5 + 32))
      {
        goto LABEL_19;
      }

      if ((*(v5 + 1175) & 0x8000000000000000) != 0)
      {
        if (*(v5 + 1160))
        {
LABEL_18:
          if (sub_6595D0(v5 + 32))
          {
LABEL_12:
            sub_553934(a1, v5);
          }
        }
      }

      else if (*(v5 + 1175))
      {
        goto LABEL_18;
      }

LABEL_19:
      _X8 = v5 + 3856;
      __asm { PRFM            #0, [X8] }

      if (*(v5 + 1248) == 1 && *(v5 + 1256) != *(v5 + 1264))
      {
        sub_553934(a1, v5);
      }

      if (*(v5 + 1176) != *(v5 + 1184) || *(v5 + 1200) != *(v5 + 1208) || *(v5 + 1224) != *(v5 + 1232))
      {
        sub_553934(a1, v5);
      }

      _X8 = v5 + 2608;
      __asm { PRFM            #0, [X8] }

      if ((*v5 & 0xFFFFFFFE) == 0x30)
      {
        sub_553934(a1, v5);
      }

      v5 += 2608;
      if (v5 == v6)
      {
        v4 = v60;
        break;
      }
    }
  }

  v19 = sub_5623F4(v4, *(&v4 + 1));
  sub_5621D8(&v60, v19, *(&v60 + 1));
  v20 = sub_5623F4(v58, *(&v58 + 1));
  sub_5621D8(&v58, v20, *(&v58 + 1));
  v22 = *(&v60 + 1);
  v21 = v60;
  if (v60 != *(&v60 + 1) || (v22 = *(&v58 + 1), v21 = v58, v58 != *(&v58 + 1)))
  {
    if (v22 - v21 == 112)
    {
      goto LABEL_33;
    }

LABEL_31:
    sub_587F3C(4);
  }

  if (v43 != 1)
  {
    goto LABEL_31;
  }

  v21 = v37;
LABEL_33:
  sub_55F1E8(a3, v21);
  if (v43 != 1)
  {
    goto LABEL_41;
  }

  if ((v42 & 0x80000000) == 0)
  {
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_39:
    operator delete(v39);
    v23 = v38;
    if (v38 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  operator delete(v41);
  if (v40 < 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v23 = v38;
  if (v38 != -1)
  {
LABEL_40:
    (off_266B1F0[v23])(&v36, v37);
  }

LABEL_41:
  if (v50 != 1)
  {
    goto LABEL_49;
  }

  if ((v49 & 0x80000000) == 0)
  {
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_47:
    operator delete(v46);
    v24 = v45;
    if (v45 == -1)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  operator delete(v48);
  if (v47 < 0)
  {
    goto LABEL_47;
  }

LABEL_44:
  v24 = v45;
  if (v45 != -1)
  {
LABEL_48:
    (off_266B1F0[v24])(v37, v44);
  }

LABEL_49:
  if (v57 == 1)
  {
    if (v56 < 0)
    {
      operator delete(v55);
      if ((v54 & 0x80000000) == 0)
      {
LABEL_52:
        v25 = v52;
        if (v52 == -1)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }
    }

    else if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    operator delete(v53);
    v25 = v52;
    if (v52 != -1)
    {
LABEL_56:
      (off_266B1F0[v25])(v44, v51);
    }
  }

LABEL_57:
  v26 = v58;
  if (!v58)
  {
    goto LABEL_70;
  }

  v27 = *(&v58 + 1);
  v28 = v58;
  if (*(&v58 + 1) == v58)
  {
    goto LABEL_69;
  }

  do
  {
    if (*(v27 - 9) < 0)
    {
      operator delete(*(v27 - 32));
      if (*(v27 - 41) < 0)
      {
LABEL_66:
        operator delete(*(v27 - 64));
        v29 = v27 - 112;
        v30 = *(v27 - 80);
        if (v30 == -1)
        {
          goto LABEL_60;
        }

LABEL_67:
        (off_266B1F0[v30])(v51, v29);
        goto LABEL_60;
      }
    }

    else if (*(v27 - 41) < 0)
    {
      goto LABEL_66;
    }

    v29 = v27 - 112;
    v30 = *(v27 - 80);
    if (v30 != -1)
    {
      goto LABEL_67;
    }

LABEL_60:
    *(v27 - 80) = -1;
    v27 = v29;
  }

  while (v29 != v26);
  v28 = v58;
LABEL_69:
  *(&v58 + 1) = v26;
  operator delete(v28);
LABEL_70:
  v31 = v60;
  if (!v60)
  {
    return;
  }

  v32 = *(&v60 + 1);
  v33 = v60;
  if (*(&v60 + 1) == v60)
  {
    goto LABEL_82;
  }

  while (2)
  {
    if (*(v32 - 9) < 0)
    {
      operator delete(*(v32 - 32));
      if (*(v32 - 41) < 0)
      {
        goto LABEL_79;
      }

LABEL_76:
      v34 = v32 - 112;
      v35 = *(v32 - 80);
      if (v35 != -1)
      {
LABEL_80:
        (off_266B1F0[v35])(v51, v34);
      }
    }

    else
    {
      if ((*(v32 - 41) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

LABEL_79:
      operator delete(*(v32 - 64));
      v34 = v32 - 112;
      v35 = *(v32 - 80);
      if (v35 != -1)
      {
        goto LABEL_80;
      }
    }

    *(v32 - 80) = -1;
    v32 = v34;
    if (v34 != v31)
    {
      continue;
    }

    break;
  }

  v33 = v60;
LABEL_82:
  *(&v60 + 1) = v31;
  operator delete(v33);
}

void sub_556480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_53E440(&a9);
  sub_5427D0(&a23);
  sub_5427D0(&a38);
  sub_5427D0(&a53);
  sub_542870((v53 - 152));
  sub_542870((v53 - 128));
  _Unwind_Resume(a1);
}

void sub_556518()
{
  v0 = __chkstk_darwin();
  v92 = v2;
  v94 = v3;
  v4 = v1;
  v146 = 0;
  v5 = 0uLL;
  v145 = 0u;
  v144 = 0;
  v143 = 0u;
  v141[0] = 0;
  v142 = 0;
  LOBYTE(v139[0]) = 0;
  v140 = 0;
  v137[0] = 0;
  v138 = 0;
  v135[0] = 0;
  v136 = 0;
  v95 = v0;
  v134 = v0;
  v8 = *v6;
  v7 = v6[1];
  if (*v6 != v7)
  {
    v93 = v1;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v13 = sub_659540(v8 + 32);
      _X8 = v8 + 3783;
      __asm { PRFM            #0, [X8] }

      if (!v13)
      {
        goto LABEL_15;
      }

      if ((*(v8 + 1175) & 0x8000000000000000) != 0)
      {
        if (!*(v8 + 1160))
        {
          goto LABEL_15;
        }
      }

      else if (!*(v8 + 1175))
      {
        goto LABEL_15;
      }

      if (sub_659608(v8 + 32))
      {
        sub_5578F4(&v134, v8, __p);
        v20 = *(&v145 + 1);
        if (*(&v145 + 1) >= v146)
        {
          v34 = v145;
          v35 = *(&v145 + 1) - v145;
          v36 = 0xAAAAAAAAAAAAAAABLL * ((*(&v145 + 1) - v145) >> 3);
          v37 = v36 + 1;
          if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v146 - v145) >> 3) > v37)
          {
            v37 = 0x5555555555555556 * ((v146 - v145) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v146 - v145) >> 3) >= 0x555555555555555)
          {
            v38 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v38 = v37;
          }

          if (v38)
          {
            if (v38 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v39 = 8 * ((*(&v145 + 1) - v145) >> 3);
          *v39 = *__p;
          *(v39 + 16) = v98;
          *&v98 = 0;
          __p[0] = 0;
          __p[1] = 0;
          v40 = 24 * v36 + 24;
          v41 = 24 * v36 - v35;
          memcpy((v39 - v35), v34, v35);
          *&v145 = v41;
          *(&v145 + 1) = v40;
          v146 = 0;
          if (v34)
          {
            operator delete(v34);
            *(&v145 + 1) = v40;
            if (SBYTE7(v98) < 0)
            {
              operator delete(__p[0]);
            }

            ++v9;
          }

          else
          {
            *(&v145 + 1) = v40;
            ++v9;
          }
        }

        else
        {
          v21 = *__p;
          *(*(&v145 + 1) + 16) = v98;
          *v20 = v21;
          *(&v145 + 1) = v20 + 24;
          ++v9;
        }

        goto LABEL_6;
      }

LABEL_15:
      if (sub_659BD0(v8 + 1488))
      {
        goto LABEL_16;
      }

      if (sub_659540(v8 + 32))
      {
        if ((*(v8 + 1175) & 0x8000000000000000) != 0)
        {
          if (!*(v8 + 1160))
          {
            goto LABEL_36;
          }
        }

        else if (!*(v8 + 1175))
        {
          goto LABEL_36;
        }

        if (sub_6595D0(v8 + 32))
        {
LABEL_16:
          sub_5578F4(&v134, v8, __p);
          v22 = *(&v143 + 1);
          if (*(&v143 + 1) < v144)
          {
            v11 = *__p;
            *(*(&v143 + 1) + 16) = v98;
            *v22 = v11;
            v12 = v22 + 24;
          }

          else
          {
            v23 = v143;
            v24 = *(&v143 + 1) - v143;
            v25 = 0xAAAAAAAAAAAAAAABLL * ((*(&v143 + 1) - v143) >> 3);
            v26 = v25 + 1;
            if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            if (0x5555555555555556 * ((v144 - v143) >> 3) > v26)
            {
              v26 = 0x5555555555555556 * ((v144 - v143) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v144 - v143) >> 3) >= 0x555555555555555)
            {
              v27 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v27 = v26;
            }

            if (v27)
            {
              if (v27 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v28 = 8 * ((*(&v143 + 1) - v143) >> 3);
            *v28 = *__p;
            *(v28 + 16) = v98;
            *&v98 = 0;
            __p[0] = 0;
            __p[1] = 0;
            v12 = 24 * v25 + 24;
            v29 = 24 * v25 - v24;
            memcpy((v28 - v24), v23, v24);
            *&v143 = v29;
            *(&v143 + 1) = v12;
            v144 = 0;
            if (v23)
            {
              operator delete(v23);
              *(&v143 + 1) = v12;
              if (SBYTE7(v98) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_5;
            }
          }

          *(&v143 + 1) = v12;
LABEL_5:
          ++v10;
          goto LABEL_6;
        }
      }

LABEL_36:
      _X8 = v8 + 3856;
      __asm { PRFM            #0, [X8] }

      if (*(v8 + 1248) != 1 || *(v8 + 1256) == *(v8 + 1264))
      {
        if (*(v8 + 1176) == *(v8 + 1184) && *(v8 + 1200) == *(v8 + 1208) && *(v8 + 1224) == *(v8 + 1232))
        {
          _X8 = v8 + 2608;
          __asm { PRFM            #0, [X8] }

          if (*v8 == 49)
          {
            if (v136 != 1)
            {
              sub_52DA74(v135, v8);
              v136 = 1;
              goto LABEL_6;
            }

            v32 = v135;
          }

          else
          {
            if (*v8 != 48)
            {
              goto LABEL_6;
            }

            if ((v138 & 1) == 0)
            {
              sub_52DA74(v137, v8);
              v33 = v137;
              goto LABEL_57;
            }

            v32 = v137;
          }
        }

        else
        {
          if ((v140 & 1) == 0)
          {
            sub_52DA74(v139, v8);
            v33 = v139;
LABEL_57:
            v33[2608] = 1;
            goto LABEL_6;
          }

          v32 = v139;
        }
      }

      else
      {
        if ((v142 & 1) == 0)
        {
          sub_52DA74(v141, v8);
          v33 = v141;
          goto LABEL_57;
        }

        v32 = v141;
      }

      sub_52EA78(v32, v8);
LABEL_6:
      v8 += 2608;
      if (v8 == v7)
      {
        v5 = v145;
        v4 = v93;
        v44 = v9;
        goto LABEL_73;
      }
    }
  }

  v10 = 0;
  v44 = 0;
LABEL_73:
  v45 = sub_95EB4(v5, *(&v5 + 1));
  v46 = *(&v145 + 1);
  if (v45 != *(&v145 + 1))
  {
    while (v46 != v45)
    {
      v47 = *(v46 - 1);
      v46 -= 3;
      if (v47 < 0)
      {
        operator delete(*v46);
      }
    }

    *(&v145 + 1) = v45;
  }

  v48 = sub_95EB4(v143, *(&v143 + 1));
  v49 = *(&v143 + 1);
  if (v48 != *(&v143 + 1))
  {
    while (v49 != v48)
    {
      v50 = *(v49 - 1);
      v49 -= 3;
      if (v50 < 0)
      {
        operator delete(*v49);
      }
    }

    *(&v143 + 1) = v48;
  }

  if (v44 < 1)
  {
    if (v142 == 1)
    {
      sub_52DA74(v96, v141);
      sub_56A8B0(v96, v94 > 1, &v130);
      sub_52E078(v96);
      sub_67F320(&v130, v128);
      v60 = sub_58BBC(&v130);
      v126 = 0u;
      v124 = 1uLL;
      v120 = 0;
      v119 = 0;
      v115 = 0u;
      v112 = 0;
      v107 = 0;
      v106 = 0u;
      *&v105[8] = 0u;
      v104 = 0x7FFFFFFFLL;
      v103 = 0u;
      v99 = 0;
      v61.f64[0] = NAN;
      v61.f64[1] = NAN;
      v100 = vnegq_f64(v61);
      v101 = v100;
      *v105 = v100;
      __p[0] = 0xFFFFFFFFLL;
      __p[1] = 0;
      v98 = 0uLL;
      v102 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v103) = 0;
      *&v105[16] = 0x7FFFFFFF;
      LODWORD(v106) = 0x7FFFFFFF;
      *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0x8000000080000000;
      v113 = 0x8000000080000000;
      v114 = 0x7FFFFFFF;
      v116 = xmmword_2297C00;
      v117 = 0x7FFFFFFF;
      v118 = 0x7FFFFFFF7FFFFFFFLL;
      v121 = 0xBFF0000000000000;
      v122 = 0xBFF0000000000000;
      v123 = 0uLL;
      v125 = 0uLL;
      LOWORD(v126) = 0;
      DWORD1(v126) = -1;
      v127 = 0x7FFFFFFFFFFFFFFFuLL;
      sub_660FE4((v95 + 3168), v128, v60, __p, v4);
      sub_55D550(__p);
      if (v129 < 0)
      {
        operator delete(v128[0]);
      }

      v62 = v133;
      if (v133)
      {
        do
        {
          v63 = *v62;
          sub_55F7FC((v62 + 2));
          operator delete(v62);
          v62 = v63;
        }

        while (v63);
      }

      v64 = v132;
      v132 = 0;
      if (v64)
      {
        operator delete(v64);
      }

      v56 = v130;
      if (v130)
      {
        v65 = v131;
        v58 = v130;
        if (v131 == v130)
        {
          goto LABEL_138;
        }

        do
        {
          v66 = *(v65 - 1);
          v65 -= 3;
          if (v66 < 0)
          {
            operator delete(*v65);
          }
        }

        while (v65 != v56);
        goto LABEL_137;
      }
    }

    else if (v140 == 1)
    {
      sub_56A988(v95 + 1576, v139, v94 > 1, &v130);
      sub_67F320(&v130, v128);
      v67 = sub_58BBC(&v130);
      v126 = 0u;
      v124 = 1uLL;
      v120 = 0;
      v119 = 0;
      v115 = 0u;
      v112 = 0;
      v107 = 0;
      v106 = 0u;
      *&v105[8] = 0u;
      v104 = 0x7FFFFFFFLL;
      v103 = 0u;
      v99 = 0;
      v68.f64[0] = NAN;
      v68.f64[1] = NAN;
      v100 = vnegq_f64(v68);
      v101 = v100;
      *v105 = v100;
      __p[0] = 0xFFFFFFFFLL;
      __p[1] = 0;
      v98 = 0uLL;
      v102 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v103) = 0;
      *&v105[16] = 0x7FFFFFFF;
      LODWORD(v106) = 0x7FFFFFFF;
      *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0x8000000080000000;
      v113 = 0x8000000080000000;
      v114 = 0x7FFFFFFF;
      v116 = xmmword_2297C00;
      v117 = 0x7FFFFFFF;
      v118 = 0x7FFFFFFF7FFFFFFFLL;
      v121 = 0xBFF0000000000000;
      v122 = 0xBFF0000000000000;
      v123 = 0uLL;
      v125 = 0uLL;
      LOWORD(v126) = 0;
      DWORD1(v126) = -1;
      v127 = 0x7FFFFFFFFFFFFFFFuLL;
      sub_660FE4((v95 + 3168), v128, v67, __p, v4);
      sub_55D550(__p);
      if (v129 < 0)
      {
        operator delete(v128[0]);
      }

      v69 = v133;
      if (v133)
      {
        do
        {
          v70 = *v69;
          sub_55F7FC((v69 + 2));
          operator delete(v69);
          v69 = v70;
        }

        while (v70);
      }

      v71 = v132;
      v132 = 0;
      if (v71)
      {
        operator delete(v71);
      }

      v56 = v130;
      if (v130)
      {
        v72 = v131;
        v58 = v130;
        if (v131 == v130)
        {
          goto LABEL_138;
        }

        do
        {
          v73 = *(v72 - 1);
          v72 -= 3;
          if (v73 < 0)
          {
            operator delete(*v72);
          }
        }

        while (v72 != v56);
        goto LABEL_137;
      }
    }

    else
    {
      if (v10 < 1)
      {
        if (v138)
        {
          v88 = v137;
          v89 = v95;
        }

        else
        {
          v89 = v95;
          if (v136 != 1)
          {
            sub_56AFC8(v95 + 1576, v92, &v130);
            sub_67F320(&v130, v128);
            v90 = sub_58BBC(&v130);
            v126 = 0u;
            v124 = 1uLL;
            v120 = 0;
            v119 = 0;
            v115 = 0u;
            v112 = 0;
            v107 = 0;
            v106 = 0u;
            *&v105[8] = 0u;
            v104 = 0x7FFFFFFFLL;
            v103 = 0u;
            v99 = 0;
            v91.f64[0] = NAN;
            v91.f64[1] = NAN;
            v100 = vnegq_f64(v91);
            v101 = v100;
            *v105 = v100;
            __p[0] = 0xFFFFFFFFLL;
            __p[1] = 0;
            v98 = 0uLL;
            v102 = 0x7FFFFFFFFFFFFFFFLL;
            BYTE8(v103) = 0;
            *&v105[16] = 0x7FFFFFFF;
            LODWORD(v106) = 0x7FFFFFFF;
            *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0x8000000080000000;
            v113 = 0x8000000080000000;
            v114 = 0x7FFFFFFF;
            v116 = xmmword_2297C00;
            v117 = 0x7FFFFFFF;
            v118 = 0x7FFFFFFF7FFFFFFFLL;
            v121 = 0xBFF0000000000000;
            v122 = 0xBFF0000000000000;
            v123 = 0uLL;
            v125 = 0uLL;
            LOWORD(v126) = 0;
            DWORD1(v126) = -1;
            v127 = 0x7FFFFFFFFFFFFFFFuLL;
            sub_660FE4((v95 + 3168), v128, v90, __p, v4);
            sub_55D550(__p);
            if (v129 < 0)
            {
              operator delete(v128[0]);
            }

            sub_53A58C(&v130);
            goto LABEL_139;
          }

          v88 = v135;
        }

        sub_557B54(v89, v88, v4);
        goto LABEL_139;
      }

      sub_56A308(v95 + 1576, v10, &v143, v10 != v94, 1, &v130);
      sub_67F320(&v130, v128);
      v74 = sub_58BBC(&v130);
      v126 = 0u;
      v124 = 1uLL;
      v120 = 0;
      v119 = 0;
      v115 = 0u;
      v112 = 0;
      v107 = 0;
      v106 = 0u;
      *&v105[8] = 0u;
      v104 = 0x7FFFFFFFLL;
      v103 = 0u;
      v99 = 0;
      v75.f64[0] = NAN;
      v75.f64[1] = NAN;
      v100 = vnegq_f64(v75);
      v101 = v100;
      *v105 = v100;
      __p[0] = 0xFFFFFFFFLL;
      __p[1] = 0;
      v98 = 0uLL;
      v102 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v103) = 0;
      *&v105[16] = 0x7FFFFFFF;
      LODWORD(v106) = 0x7FFFFFFF;
      *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0x8000000080000000;
      v113 = 0x8000000080000000;
      v114 = 0x7FFFFFFF;
      v116 = xmmword_2297C00;
      v117 = 0x7FFFFFFF;
      v118 = 0x7FFFFFFF7FFFFFFFLL;
      v121 = 0xBFF0000000000000;
      v122 = 0xBFF0000000000000;
      v123 = 0uLL;
      v125 = 0uLL;
      LOWORD(v126) = 0;
      DWORD1(v126) = -1;
      v127 = 0x7FFFFFFFFFFFFFFFuLL;
      sub_660FE4((v95 + 3168), v128, v74, __p, v4);
      sub_55D550(__p);
      if (v129 < 0)
      {
        operator delete(v128[0]);
      }

      v76 = v133;
      if (v133)
      {
        do
        {
          v77 = *v76;
          sub_55F7FC((v76 + 2));
          operator delete(v76);
          v76 = v77;
        }

        while (v77);
      }

      v78 = v132;
      v132 = 0;
      if (v78)
      {
        operator delete(v78);
      }

      v56 = v130;
      if (v130)
      {
        v79 = v131;
        v58 = v130;
        if (v131 == v130)
        {
          goto LABEL_138;
        }

        do
        {
          v80 = *(v79 - 1);
          v79 -= 3;
          if (v80 < 0)
          {
            operator delete(*v79);
          }
        }

        while (v79 != v56);
        goto LABEL_137;
      }
    }
  }

  else
  {
    sub_56A308(v95 + 1576, v44, &v145, v44 != v94, 0, &v130);
    sub_67F320(&v130, v128);
    v51 = sub_58BBC(&v130);
    v126 = 0u;
    v124 = 1uLL;
    v120 = 0;
    v119 = 0;
    v115 = 0u;
    v112 = 0;
    v107 = 0;
    v106 = 0u;
    *&v105[8] = 0u;
    v104 = 0x7FFFFFFFLL;
    v103 = 0u;
    v99 = 0;
    v52.f64[0] = NAN;
    v52.f64[1] = NAN;
    v100 = vnegq_f64(v52);
    v101 = v100;
    *v105 = v100;
    __p[0] = 0xFFFFFFFFLL;
    __p[1] = 0;
    v98 = 0uLL;
    v102 = 0x7FFFFFFFFFFFFFFFLL;
    BYTE8(v103) = 0;
    *&v105[16] = 0x7FFFFFFF;
    LODWORD(v106) = 0x7FFFFFFF;
    *(&v106 + 4) = 0x7FFFFFFF7FFFFFFFLL;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0x8000000080000000;
    v113 = 0x8000000080000000;
    v114 = 0x7FFFFFFF;
    v116 = xmmword_2297C00;
    v117 = 0x7FFFFFFF;
    v118 = 0x7FFFFFFF7FFFFFFFLL;
    v121 = 0xBFF0000000000000;
    v122 = 0xBFF0000000000000;
    v123 = 0uLL;
    v125 = 0uLL;
    LOWORD(v126) = 0;
    DWORD1(v126) = -1;
    v127 = 0x7FFFFFFFFFFFFFFFuLL;
    sub_660FE4((v95 + 3168), v128, v51, __p, v4);
    sub_55D550(__p);
    if (v129 < 0)
    {
      operator delete(v128[0]);
    }

    v53 = v133;
    if (v133)
    {
      do
      {
        v54 = *v53;
        sub_55F7FC((v53 + 2));
        operator delete(v53);
        v53 = v54;
      }

      while (v54);
    }

    v55 = v132;
    v132 = 0;
    if (v55)
    {
      operator delete(v55);
    }

    v56 = v130;
    if (v130)
    {
      v57 = v131;
      v58 = v130;
      if (v131 == v130)
      {
        goto LABEL_138;
      }

      do
      {
        v59 = *(v57 - 1);
        v57 -= 3;
        if (v59 < 0)
        {
          operator delete(*v57);
        }
      }

      while (v57 != v56);
LABEL_137:
      v58 = v130;
LABEL_138:
      v131 = v56;
      operator delete(v58);
    }
  }

LABEL_139:
  if (v136 == 1)
  {
    sub_52E078(v135);
    if (v138 != 1)
    {
      goto LABEL_141;
    }
  }

  else if (v138 != 1)
  {
LABEL_141:
    if (v140 == 1)
    {
      goto LABEL_142;
    }

    goto LABEL_152;
  }

  sub_52E078(v137);
  if (v140 == 1)
  {
LABEL_142:
    sub_52E078(v139);
    if (v142 != 1)
    {
      goto LABEL_143;
    }

    goto LABEL_153;
  }

LABEL_152:
  if (v142 != 1)
  {
LABEL_143:
    v81 = v143;
    if (v143)
    {
      goto LABEL_144;
    }

LABEL_154:
    v83 = v145;
    if (!v145)
    {
      return;
    }

    goto LABEL_157;
  }

LABEL_153:
  sub_52E078(v141);
  v81 = v143;
  if (!v143)
  {
    goto LABEL_154;
  }

LABEL_144:
  v82 = *(&v143 + 1);
  if (*(&v143 + 1) == v81)
  {
    *(&v143 + 1) = v81;
    operator delete(v81);
    v83 = v145;
    if (!v145)
    {
      return;
    }

    goto LABEL_157;
  }

  do
  {
    v84 = *(v82 - 1);
    v82 -= 3;
    if (v84 < 0)
    {
      operator delete(*v82);
    }
  }

  while (v82 != v81);
  *(&v143 + 1) = v81;
  operator delete(v143);
  v83 = v145;
  if (v145)
  {
LABEL_157:
    v85 = *(&v145 + 1);
    v86 = v83;
    if (*(&v145 + 1) != v83)
    {
      do
      {
        v87 = *(v85 - 1);
        v85 -= 3;
        if (v87 < 0)
        {
          operator delete(*v85);
        }
      }

      while (v85 != v83);
      v86 = v145;
    }

    *(&v145 + 1) = v83;
    operator delete(v86);
  }
}