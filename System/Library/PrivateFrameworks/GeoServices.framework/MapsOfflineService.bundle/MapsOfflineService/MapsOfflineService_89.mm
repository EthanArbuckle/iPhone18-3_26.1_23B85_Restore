void sub_5A781C(_Unwind_Exception *a1)
{
  sub_5C0F34(v1);
  sub_3A9518(&STACK[0x9B8]);
  _Unwind_Resume(a1);
}

uint64_t sub_5A7938@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _BYTE *a5@<X4>, unsigned int *a6@<X8>)
{
  sub_5CB2AC(a3, v94);
  v12 = sub_5C0A00(a6);
  sub_5AA5DC(v12, v94, a2, a6);
  if ((v99 & 1) == 0)
  {
    sub_4F0F0C();
  }

  if ((v97 & 1) == 0)
  {
    sub_4F0F0C();
  }

  v56 = a5;
  if ((v101 & 1) == 0)
  {
    sub_4F0F0C();
  }

  v54 = *(a6 + 89);
  v13 = v98;
  v14 = v96;
  v15 = v100;
  *a6 = 6;
  a6[189] = sub_5CC2B4(6);
  sub_5AA47C(v69, a3);
  v55 = a1 + 2728;
  a6[144] = sub_59F53C((a1 + 2728), v69);
  v16 = v92;
  if (v92)
  {
    v17 = v93;
    v18 = v92;
    if (v93 != v92)
    {
      do
      {
        v17 -= 2000;
        sub_5C0D2C(v17);
      }

      while (v17 != v16);
      v18 = v92;
    }

    v93 = v16;
    operator delete(v18);
  }

  v19 = v90;
  if (v90)
  {
    v20 = v91;
    v21 = v90;
    if (v91 != v90)
    {
      do
      {
        v20 -= 2000;
        sub_5C0D2C(v20);
      }

      while (v20 != v19);
      v21 = v90;
    }

    v91 = v19;
    operator delete(v21);
  }

  v22 = v88;
  if (v88)
  {
    v23 = v89;
    v24 = v88;
    if (v89 != v88)
    {
      do
      {
        v23 -= 2000;
        sub_5C0D2C(v23);
      }

      while (v23 != v22);
      v24 = v88;
    }

    v89 = v22;
    operator delete(v24);
  }

  if (v87 == 1)
  {
    if (v86 < 0)
    {
      operator delete(v85);
      if (v84 != 1)
      {
        goto LABEL_37;
      }
    }

    else if (v84 != 1)
    {
LABEL_37:
      v29 = v72;
      if (v72)
      {
LABEL_38:
        v30 = v73;
        v31 = v29;
        if (v73 != v29)
        {
          do
          {
            v30 = sub_3A9518(v30 - 1120);
          }

          while (v30 != v29);
          v31 = v72;
        }

        v73 = v29;
        operator delete(v31);
      }

LABEL_42:
      sub_570440(&v71);
      if (v70[1120] == 1)
      {
        sub_3A9518(v70);
      }

      goto LABEL_44;
    }

    if (v83 < 0)
    {
      operator delete(v82);
    }

    v25 = v80;
    if (v80)
    {
      v26 = v81;
      v27 = v80;
      if (v81 != v80)
      {
        do
        {
          v28 = *(v26 - 1);
          v26 -= 3;
          if (v28 < 0)
          {
            operator delete(*v26);
          }
        }

        while (v26 != v25);
        v27 = v80;
      }

      v81 = v25;
      operator delete(v27);
    }

    if (v79 < 0)
    {
      operator delete(v78);
      if ((v77 & 0x80000000) == 0)
      {
LABEL_36:
        if ((v75 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_55;
      }
    }

    else if ((v77 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    operator delete(v76);
    if ((v75 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_55:
    operator delete(v74);
    v29 = v72;
    if (v72)
    {
      goto LABEL_38;
    }

    goto LABEL_42;
  }

LABEL_44:
  v32 = *a6 > 0x24 || ((1 << *a6) & 0x1FE0401EEELL) == 0;
  if (v32 && (*(a1 + 4240) != 11 || *(a1 + 4272) != 11))
  {
    goto LABEL_59;
  }

  if (*(a1 + 4799) == 1)
  {
    if ((*(a1 + 3264) & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_52:
    sub_5B3138(a1, v94, a4, v64);
    v33 = "BannerButton_No";
    v34 = "BannerButton_Yes";
    goto LABEL_60;
  }

  if (*(a1 + 3265) == 1)
  {
    goto LABEL_52;
  }

LABEL_59:
  sub_5B42F8(a1, v94, a4, v64);
  v33 = "BannerButton_Cleared";
  v34 = &xmmword_2795898;
LABEL_60:
  sub_5A0314(a6 + 15, v64);
  sub_53A868(&v68);
  sub_53A868(&v67);
  v35 = *(&v65 + 1);
  if (*(&v65 + 1))
  {
    v36 = v66;
    v37 = *(&v65 + 1);
    if (v66 != *(&v65 + 1))
    {
      do
      {
        v36 = sub_53A868(v36 - 160);
      }

      while (v36 != v35);
      v37 = *(&v65 + 1);
    }

    v66 = v35;
    operator delete(v37);
  }

  v38 = v64[0];
  if (v64[0])
  {
    v39 = v64[1];
    v40 = v64[0];
    if (v64[1] != v64[0])
    {
      do
      {
        v39 = sub_53A868(v39 - 160);
      }

      while (v39 != v38);
      v40 = v64[0];
    }

    v64[1] = v38;
    operator delete(v40);
  }

  if (v95 == 4)
  {
    v41 = 1;
  }

  else
  {
    v41 = 2 * (v95 == 3);
  }

  if (v33[23] < 0)
  {
    sub_325C(v62, *v33, *(v33 + 1));
  }

  else
  {
    *v62 = *v33;
    v63 = *(v33 + 2);
  }

  if (*(v34 + 23) < 0)
  {
    sub_325C(v60, *v34, *(v34 + 1));
  }

  else
  {
    *v60 = *v34;
    v61 = *(v34 + 2);
  }

  sub_5ABFD0(a1, v62, v60, a6, v41, v41, 3u);
  v42 = sub_6599D0(v94);
  if (v42)
  {
    v43 = 1;
  }

  else
  {
    v43 = 2;
  }

  v59 = sub_5B57CC(a1, a2, v13, v15, v14, *(a1 + 2816), v43);
  sub_5CBF60(a6, &v59);
  v44 = 2820;
  if (*(a1 + 4796))
  {
    v44 = 2824;
  }

  v58 = sub_5B590C(a1, a2, v13, v15, v14, *(a1 + v44), v43);
  sub_5CBF8C(a6, &v58);
  if (v42)
  {
    sub_5CBFB8(a6, (a1 + 2836));
    v45 = (a1 + 2924);
  }

  else
  {
    if ((*(a1 + 4796) & 1) == 0)
    {
      v46 = *a6;
      if (v46 > 0x29)
      {
        v47 = 156;
      }

      else
      {
        v47 = qword_229A3B8[v46];
      }

      LODWORD(v64[0]) = *(v55 + v47);
      sub_5CBFB8(a6, v64);
    }

    v48 = *a6;
    if (v48 > 0x29)
    {
      v49 = 208;
    }

    else
    {
      v49 = qword_229A508[v48];
    }

    v45 = (v55 + v49);
  }

  v57 = *v45;
  sub_5CBFC4(a6, &v57);
  if (!v42 && (*(a1 + 4796) & 1) != 0)
  {
    sub_5CBB0C(v64, (v54 + 40), (a1 + 2820));
    a6[142] = v66;
    v50 = v65;
    *(a6 + 134) = *v64;
    *(a6 + 138) = v50;
  }

  sub_5BBBF8(a1, a6);
  v51 = *(a6 + 89);
  v52 = *(a6 + 90);
  while (v51 != v52)
  {
    if (sub_5CBD4C(v51))
    {
      if ((*(v51 + 28) & 1) == 0)
      {
        sub_4F0F0C();
      }

      if (*(v51 + 24) != 13)
      {
        sub_5CDAC8(a6, (v51 + 48));
      }
    }

    v51 += 64;
  }

  if (*(a6 + 748) == 1 && (a6[184] != -1 || a6[185] != -1))
  {
    sub_5CDAC8(a6, a6 + 184);
  }

  sub_59F958(a1, a6);
  *v56 = 1;
  sub_5A04B4(a1, a6);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60[0]);
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      return sub_3A9518(v94);
    }

LABEL_112:
    operator delete(v62[0]);
    return sub_3A9518(v94);
  }

  if (SHIBYTE(v63) < 0)
  {
    goto LABEL_112;
  }

  return sub_3A9518(v94);
}

void sub_5A8018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_5C0F34(v27);
  sub_3A9518(&STACK[0xA10]);
  _Unwind_Resume(a1);
}

void sub_5A80E0(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_5CB2AC(a3, v61);
  v8 = sub_5C0A00(a4);
  sub_5AA5DC(v8, v61, a2, a4);
  v9 = a4[89];
  v10 = *a3;
  *a4 = *a3;
  *(a4 + 189) = sub_5CC2B4(v10);
  sub_5AA47C(v36, a3);
  v11 = a1 + 2728;
  *(a4 + 144) = sub_59F53C((a1 + 2728), v36);
  v12 = __p;
  if (__p)
  {
    v13 = v60;
    v14 = __p;
    if (v60 != __p)
    {
      do
      {
        v13 -= 2000;
        sub_5C0D2C(v13);
      }

      while (v13 != v12);
      v14 = __p;
    }

    v60 = v12;
    operator delete(v14);
  }

  v15 = v57;
  if (v57)
  {
    v16 = v58;
    v17 = v57;
    if (v58 != v57)
    {
      do
      {
        v16 -= 2000;
        sub_5C0D2C(v16);
      }

      while (v16 != v15);
      v17 = v57;
    }

    v58 = v15;
    operator delete(v17);
  }

  v18 = v55;
  if (v55)
  {
    v19 = v56;
    v20 = v55;
    if (v56 != v55)
    {
      do
      {
        v19 -= 2000;
        sub_5C0D2C(v19);
      }

      while (v19 != v18);
      v20 = v55;
    }

    v56 = v18;
    operator delete(v20);
  }

  if (v54 != 1)
  {
LABEL_41:
    v34 = sub_69B32C(a2);
    sub_5CBF60(a4, &v34);
    v28 = sub_69B32C(a2);
    v29 = *(a1 + 2744) + *(v9 + 40);
    if (v29 >= v28)
    {
      v29 = v28;
    }

    v35 = v29;
    sub_5CBF8C(a4, &v35);
    v30 = *a4;
    if (v30 > 0x29)
    {
      v31 = 156;
    }

    else
    {
      v31 = qword_229A3B8[v30];
    }

    LODWORD(v34) = *(v11 + v31);
    sub_5CBFB8(a4, &v34);
    v32 = *a4;
    if (v32 > 0x29)
    {
      v33 = 208;
    }

    else
    {
      v33 = qword_229A508[v32];
    }

    LODWORD(v34) = *(v11 + v33);
    sub_5CBFC4(a4, &v34);
    sub_5B5A80();
  }

  if (v53 < 0)
  {
    operator delete(v52);
    if (v51 != 1)
    {
      goto LABEL_34;
    }
  }

  else if (v51 != 1)
  {
LABEL_34:
    v25 = v39;
    if (v39)
    {
LABEL_35:
      v26 = v40;
      v27 = v25;
      if (v40 != v25)
      {
        do
        {
          v26 = sub_3A9518(v26 - 1120);
        }

        while (v26 != v25);
        v27 = v39;
      }

      v40 = v25;
      operator delete(v27);
    }

LABEL_39:
    sub_570440(&v38);
    if (v37[1120] == 1)
    {
      sub_3A9518(v37);
    }

    goto LABEL_41;
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  v21 = v47;
  if (v47)
  {
    v22 = v48;
    v23 = v47;
    if (v48 != v47)
    {
      do
      {
        v24 = *(v22 - 1);
        v22 -= 3;
        if (v24 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v21);
      v23 = v47;
    }

    v48 = v21;
    operator delete(v23);
  }

  if (v46 < 0)
  {
    operator delete(v45);
    if ((v44 & 0x80000000) == 0)
    {
LABEL_33:
      if ((v42 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_52;
    }
  }

  else if ((v44 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v43);
  if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_52:
  operator delete(v41);
  v25 = v39;
  if (v39)
  {
    goto LABEL_35;
  }

  goto LABEL_39;
}

void sub_5A861C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_5C0F34(v14);
    sub_3A9518(&STACK[0x9A8]);
    _Unwind_Resume(a1);
  }

  sub_5C0F34(v14);
  sub_3A9518(&STACK[0x9A8]);
  _Unwind_Resume(a1);
}

void sub_5A86DC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v8 = sub_5CB28C(v1);
  sub_5C3640(v56, v8);
  sub_570DBC(v56, &v54);
  sub_570DB0(v56, v53);
  v9 = sub_5C0A00(v7);
  v10 = v54;
  for (i = v55; v10 != i; v10 += 1120)
  {
    sub_5AA5DC(v9, v10, v4, v7);
  }

  *v7 = 8;
  *(v7 + 756) = sub_5CC2B4(8);
  sub_5AA47C(v28, v2);
  *(v7 + 576) = sub_59F53C((v5 + 2728), v28);
  v12 = v51;
  if (v51)
  {
    v13 = v52;
    v14 = v51;
    if (v52 != v51)
    {
      do
      {
        v13 -= 2000;
        sub_5C0D2C(v13);
      }

      while (v13 != v12);
      v14 = v51;
    }

    v52 = v12;
    operator delete(v14);
  }

  v15 = v49;
  if (v49)
  {
    v16 = v50;
    v17 = v49;
    if (v50 != v49)
    {
      do
      {
        v16 -= 2000;
        sub_5C0D2C(v16);
      }

      while (v16 != v15);
      v17 = v49;
    }

    v50 = v15;
    operator delete(v17);
  }

  v18 = v47;
  if (v47)
  {
    v19 = v48;
    v20 = v47;
    if (v48 != v47)
    {
      do
      {
        v19 -= 2000;
        sub_5C0D2C(v19);
      }

      while (v19 != v18);
      v20 = v47;
    }

    v48 = v18;
    operator delete(v20);
  }

  if (v46 != 1)
  {
LABEL_43:
    sub_5B63D4(v5, &v54);
  }

  if (v45 < 0)
  {
    operator delete(v44);
    if (v43 != 1)
    {
      goto LABEL_36;
    }
  }

  else if (v43 != 1)
  {
LABEL_36:
    v25 = v31;
    if (v31)
    {
LABEL_37:
      v26 = v32;
      v27 = v25;
      if (v32 != v25)
      {
        do
        {
          v26 = sub_3A9518(v26 - 1120);
        }

        while (v26 != v25);
        v27 = v31;
      }

      v32 = v25;
      operator delete(v27);
    }

LABEL_41:
    sub_570440(&v30);
    if (v29[1120] == 1)
    {
      sub_3A9518(v29);
    }

    goto LABEL_43;
  }

  if (v42 < 0)
  {
    operator delete(v41);
  }

  v21 = v39;
  if (v39)
  {
    v22 = v40;
    v23 = v39;
    if (v40 != v39)
    {
      do
      {
        v24 = *(v22 - 1);
        v22 -= 3;
        if (v24 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v21);
      v23 = v39;
    }

    v40 = v21;
    operator delete(v23);
  }

  if (v38 < 0)
  {
    operator delete(v37);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_35:
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_46;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v35);
  if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_46:
  operator delete(v33);
  v25 = v31;
  if (v31)
  {
    goto LABEL_37;
  }

  goto LABEL_41;
}

void sub_5A8D60(_Unwind_Exception *a1)
{
  sub_5C0F34(v1);
  sub_570440(&STACK[0x9B0]);
  sub_5706DC(&STACK[0xC18]);
  sub_5C3A5C(&STACK[0xC30]);
  _Unwind_Resume(a1);
}

void sub_5A8DF0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X8>)
{
  sub_5C0A00(a4);
  v34 = (sub_69B32C(a2) - *(a3 + 32));
  LODWORD(v35) = 12;
  v8 = *(a4 + 90);
  if (v8 >= *(a4 + 91))
  {
    v9 = sub_5C4C24(a4 + 89, (a3 + 8), &v35, &v34, (a3 + 40));
  }

  else
  {
    sub_5CBC34(*(a4 + 90), (a3 + 8), 12, &v34, (a3 + 40));
    v9 = v8 + 64;
  }

  *(a4 + 90) = v9;
  v10 = *(a4 + 89);
  *a4 = 9;
  a4[189] = sub_5CC2B4(9);
  sub_5CB20C(v36, *a4);
  v11 = a1 + 2728;
  a4[144] = sub_59F53C((a1 + 2728), v36);
  v12 = __p;
  if (__p)
  {
    v13 = v60;
    v14 = __p;
    if (v60 != __p)
    {
      do
      {
        v13 -= 2000;
        sub_5C0D2C(v13);
      }

      while (v13 != v12);
      v14 = __p;
    }

    v60 = v12;
    operator delete(v14);
  }

  v15 = v57;
  if (v57)
  {
    v16 = v58;
    v17 = v57;
    if (v58 != v57)
    {
      do
      {
        v16 -= 2000;
        sub_5C0D2C(v16);
      }

      while (v16 != v15);
      v17 = v57;
    }

    v58 = v15;
    operator delete(v17);
  }

  v18 = v55;
  if (v55)
  {
    v19 = v56;
    v20 = v55;
    if (v56 != v55)
    {
      do
      {
        v19 -= 2000;
        sub_5C0D2C(v19);
      }

      while (v19 != v18);
      v20 = v55;
    }

    v56 = v18;
    operator delete(v20);
  }

  if (v54 != 1)
  {
LABEL_44:
    v34 = sub_69B32C(a2);
    sub_5CBF60(a4, &v34);
    v28 = sub_69B32C(a2);
    v29 = *(a1 + 2752) + *(v10 + 40);
    if (v29 >= v28)
    {
      v29 = v28;
    }

    v35 = v29;
    sub_5CBF8C(a4, &v35);
    v30 = *a4;
    if (v30 > 0x29)
    {
      v31 = 156;
    }

    else
    {
      v31 = qword_229A3B8[v30];
    }

    LODWORD(v34) = *(v11 + v31);
    sub_5CBFB8(a4, &v34);
    v32 = *a4;
    if (v32 > 0x29)
    {
      v33 = 208;
    }

    else
    {
      v33 = qword_229A508[v32];
    }

    LODWORD(v34) = *(v11 + v33);
    sub_5CBFC4(a4, &v34);
    sub_5B6F70();
  }

  if (v53 < 0)
  {
    operator delete(v52);
    if (v51 != 1)
    {
      goto LABEL_37;
    }
  }

  else if (v51 != 1)
  {
LABEL_37:
    v25 = v39;
    if (v39)
    {
LABEL_38:
      v26 = v40;
      v27 = v25;
      if (v40 != v25)
      {
        do
        {
          v26 = sub_3A9518(v26 - 1120);
        }

        while (v26 != v25);
        v27 = v39;
      }

      v40 = v25;
      operator delete(v27);
    }

LABEL_42:
    sub_570440(&v38);
    if (v37[1120] == 1)
    {
      sub_3A9518(v37);
    }

    goto LABEL_44;
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  v21 = v47;
  if (v47)
  {
    v22 = v48;
    v23 = v47;
    if (v48 != v47)
    {
      do
      {
        v24 = *(v22 - 1);
        v22 -= 3;
        if (v24 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v21);
      v23 = v47;
    }

    v48 = v21;
    operator delete(v23);
  }

  if (v46 < 0)
  {
    operator delete(v45);
    if ((v44 & 0x80000000) == 0)
    {
LABEL_36:
      if ((v42 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_55;
    }
  }

  else if ((v44 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v43);
  if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

LABEL_55:
  operator delete(v41);
  v25 = v39;
  if (v39)
  {
    goto LABEL_38;
  }

  goto LABEL_42;
}

void sub_5A92CC(_Unwind_Exception *a1)
{
  *(v1 + 720) = v2;
  sub_5C0F34(v1);
  _Unwind_Resume(a1);
}

void sub_5A9334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_59F87C(&a57);
  sub_5C0F34(v57);
  _Unwind_Resume(a1);
}

void sub_5A93B4(uint64_t a1@<X0>, unsigned int **a2@<X1>, unsigned int **a3@<X2>, uint64_t *a4@<X3>, unsigned int *a5@<X8>)
{
  sub_5C0A00(a5);
  *a5 = 22;
  a5[189] = sub_5CC2B4(22);
  sub_5CB20C(v49, *a5);
  v10 = a1 + 2728;
  a5[144] = sub_59F53C((a1 + 2728), v49);
  v11 = __p;
  if (__p)
  {
    v12 = v73;
    v13 = __p;
    if (v73 != __p)
    {
      do
      {
        v12 -= 2000;
        sub_5C0D2C(v12);
      }

      while (v12 != v11);
      v13 = __p;
    }

    v73 = v11;
    operator delete(v13);
  }

  v14 = v70;
  if (v70)
  {
    v15 = v71;
    v16 = v70;
    if (v71 != v70)
    {
      do
      {
        v15 -= 2000;
        sub_5C0D2C(v15);
      }

      while (v15 != v14);
      v16 = v70;
    }

    v71 = v14;
    operator delete(v16);
  }

  v17 = v68;
  if (v68)
  {
    v18 = v69;
    v19 = v68;
    if (v69 != v68)
    {
      do
      {
        v18 -= 2000;
        sub_5C0D2C(v18);
      }

      while (v18 != v17);
      v19 = v68;
    }

    v69 = v17;
    operator delete(v19);
  }

  if (v67 == 1)
  {
    if (v66 < 0)
    {
      operator delete(v65);
      if (v64 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v64 != 1)
    {
LABEL_34:
      v24 = v52;
      if (v52)
      {
LABEL_35:
        v25 = v53;
        v26 = v24;
        if (v53 != v24)
        {
          do
          {
            v25 = sub_3A9518(v25 - 1120);
          }

          while (v25 != v24);
          v26 = v52;
        }

        v53 = v24;
        operator delete(v26);
      }

LABEL_39:
      sub_570440(&v51);
      if (v50[1120] == 1)
      {
        sub_3A9518(v50);
      }

      goto LABEL_41;
    }

    if (v63 < 0)
    {
      operator delete(v62);
    }

    v20 = v60;
    if (v60)
    {
      v21 = v61;
      v22 = v60;
      if (v61 != v60)
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
        v22 = v60;
      }

      v61 = v20;
      operator delete(v22);
    }

    if (v59 < 0)
    {
      operator delete(v58);
      if ((v57 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v55 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_60;
      }
    }

    else if ((v57 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v56);
    if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_60:
    operator delete(v54);
    v24 = v52;
    if (v52)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v27 = sub_68C454(a2, 0);
  v28 = sub_68C454(a3, 0);
  v43 = sub_69B32C(v27);
  sub_5CBF60(a5, &v43);
  sub_5AAB4C(a1, a2, a3, a5);
  v29 = *a5;
  if (v29 > 0x29)
  {
    v30 = 156;
  }

  else
  {
    v30 = qword_229A3B8[v29];
  }

  LODWORD(v43) = *(v10 + v30);
  sub_5CBFB8(a5, &v43);
  v31 = *a5;
  if (v31 > 0x29)
  {
    v32 = 208;
  }

  else
  {
    v32 = qword_229A508[v31];
  }

  LODWORD(v43) = *(v10 + v32);
  sub_5CBFC4(a5, &v43);
  v33 = sub_68C850(a2);
  v34 = sub_68C850(a3);
  v35 = (v33 - v34) & ~((v33 - v34) >> 31);
  a5[122] = v35;
  *(a1 + 7416) = v35;
  sub_5AAE48(a1, v27, v28, a4, &v43);
  sub_5A0314(a5 + 15, &v43);
  sub_53A868(&v48);
  sub_53A868(&v47);
  v36 = v45;
  if (v45)
  {
    v37 = v46;
    v38 = v45;
    if (v46 != v45)
    {
      do
      {
        v37 = sub_53A868(v37 - 160);
      }

      while (v37 != v36);
      v38 = v45;
    }

    v46 = v36;
    operator delete(v38);
  }

  v39 = v43;
  if (v43)
  {
    v40 = v44;
    v41 = v43;
    if (v44 != v43)
    {
      do
      {
        v40 = sub_53A868(v40 - 160);
      }

      while (v40 != v39);
      v41 = v43;
    }

    v44 = v39;
    operator delete(v41);
  }

  sub_5ABFD0(a1, "BannerButton_No_Thanks", "BannerButton_OK", a5, 1, 1, 1u);
  v42 = *(a5 + 32);
  *(a5 + 134) = *(a5 + 31);
  *(a5 + 138) = v42;
  a5[142] = a5[132];
  sub_5AA77C(a1, a2, a3, a5);
  sub_59F958(a1, a5);
  sub_5A04B4(a1, a5);
}

void sub_5A9884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_59F87C(&a55);
  sub_5C0F34(v55);
  _Unwind_Resume(a1);
}

void sub_5A98DC(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X8>)
{
  v10 = sub_68C454(a2, 0);
  v11 = sub_5C0A00(a5);
  sub_5AA5DC(v11, a4, v10, a5);
  *a5 = 32;
  a5[189] = sub_5CC2B4(32);
  sub_5CB20C(v52, *a5);
  v12 = a1 + 2728;
  a5[144] = sub_59F53C((a1 + 2728), v52);
  v13 = __p;
  if (__p)
  {
    v14 = v76;
    v15 = __p;
    if (v76 != __p)
    {
      do
      {
        v14 -= 2000;
        sub_5C0D2C(v14);
      }

      while (v14 != v13);
      v15 = __p;
    }

    v76 = v13;
    operator delete(v15);
  }

  v16 = v73;
  if (v73)
  {
    v17 = v74;
    v18 = v73;
    if (v74 != v73)
    {
      do
      {
        v17 -= 2000;
        sub_5C0D2C(v17);
      }

      while (v17 != v16);
      v18 = v73;
    }

    v74 = v16;
    operator delete(v18);
  }

  v19 = v71;
  if (v71)
  {
    v20 = v72;
    v21 = v71;
    if (v72 != v71)
    {
      do
      {
        v20 -= 2000;
        sub_5C0D2C(v20);
      }

      while (v20 != v19);
      v21 = v71;
    }

    v72 = v19;
    operator delete(v21);
  }

  if (v70 == 1)
  {
    if (v69 < 0)
    {
      operator delete(v68);
      if (v67 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v67 != 1)
    {
LABEL_34:
      v26 = v55;
      if (v55)
      {
LABEL_35:
        v27 = v56;
        v28 = v26;
        if (v56 != v26)
        {
          do
          {
            v27 = sub_3A9518(v27 - 1120);
          }

          while (v27 != v26);
          v28 = v55;
        }

        v56 = v26;
        operator delete(v28);
      }

LABEL_39:
      sub_570440(&v54);
      if (v53[1120] == 1)
      {
        sub_3A9518(v53);
      }

      goto LABEL_41;
    }

    if (v66 < 0)
    {
      operator delete(v65);
    }

    v22 = v63;
    if (v63)
    {
      v23 = v64;
      v24 = v63;
      if (v64 != v63)
      {
        do
        {
          v25 = *(v23 - 1);
          v23 -= 3;
          if (v25 < 0)
          {
            operator delete(*v23);
          }
        }

        while (v23 != v22);
        v24 = v63;
      }

      v64 = v22;
      operator delete(v24);
    }

    if (v62 < 0)
    {
      operator delete(v61);
      if ((v60 & 0x80000000) == 0)
      {
LABEL_33:
        if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_68;
      }
    }

    else if ((v60 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    operator delete(v59);
    if ((v58 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_68:
    operator delete(v57);
    v26 = v55;
    if (v55)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

LABEL_41:
  v46[0] = sub_4D1DB8(v10);
  sub_5CBF60(a5, v46);
  sub_5AAB4C(a1, a2, a3, a5);
  v29 = *a5;
  if (v29 > 0x29)
  {
    v30 = 156;
  }

  else
  {
    v30 = qword_229A3B8[v29];
  }

  LODWORD(v46[0]) = *(v12 + v30);
  sub_5CBFB8(a5, v46);
  v31 = *a5;
  if (v31 > 0x29)
  {
    v32 = 208;
  }

  else
  {
    v32 = qword_229A508[v31];
  }

  LODWORD(v46[0]) = *(v12 + v32);
  sub_5CBFC4(a5, v46);
  sub_5AC26C(a1, a4, v46);
  sub_5A0314(a5 + 15, v46);
  sub_53A868(&v51);
  sub_53A868(&v50);
  v33 = v48;
  if (v48)
  {
    v34 = v49;
    v35 = v48;
    if (v49 != v48)
    {
      do
      {
        v34 = sub_53A868(v34 - 160);
      }

      while (v34 != v33);
      v35 = v48;
    }

    v49 = v33;
    operator delete(v35);
  }

  v36 = v46[0];
  if (v46[0])
  {
    v37 = v46[1];
    v38 = v46[0];
    if (v46[1] != v46[0])
    {
      do
      {
        v37 = sub_53A868(v37 - 160);
      }

      while (v37 != v36);
      v38 = v46[0];
    }

    v46[1] = v36;
    operator delete(v38);
  }

  v39 = *a5;
  v40 = *a5 > 0x24 || ((1 << *a5) & 0x1FE0401EEELL) == 0;
  if (v40 && (*(a1 + 4240) != 11 || *(a1 + 4272) != 11))
  {
    goto LABEL_72;
  }

  if (*(a1 + 4799) == 1)
  {
    if ((*(a1 + 3264) & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_65:
    v41 = "BannerButton_No";
    goto LABEL_73;
  }

  if (*(a1 + 3265))
  {
    goto LABEL_65;
  }

LABEL_72:
  v41 = "BannerButton_Cleared";
LABEL_73:
  *v46 = *v41;
  v47 = *(v41 + 2);
  if (v39 <= 0x24 && ((1 << v39) & 0x1FE0401EEELL) != 0 || *(a1 + 4240) == 11 && *(a1 + 4272) == 11)
  {
    if (*(a1 + 4799) == 1)
    {
      if ((*(a1 + 3264) & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    else if ((*(a1 + 3265) & 1) == 0)
    {
      goto LABEL_83;
    }

    v42 = "BannerButton_Yes";
    goto LABEL_84;
  }

LABEL_83:
  v42 = &xmmword_2795898;
  if (byte_27958AF < 0)
  {
    sub_325C(v44, xmmword_2795898, *(&xmmword_2795898 + 1));
    goto LABEL_85;
  }

LABEL_84:
  *v44 = *v42;
  v45 = *(v42 + 2);
LABEL_85:
  sub_5ABFD0(a1, v46, v44, a5, 1, 1, 1u);
  v43 = *(a5 + 32);
  *(a5 + 134) = *(a5 + 31);
  *(a5 + 138) = v43;
  a5[142] = a5[132];
  sub_5AA77C(a1, a2, a3, a5);
  sub_59F958(a1, a5);
  sub_5A04B4(a1, a5);
  if ((SHIBYTE(v45) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v47) & 0x80000000) == 0)
    {
      return;
    }

LABEL_89:
    operator delete(v46[0]);
    return;
  }

  operator delete(v44[0]);
  if (SHIBYTE(v47) < 0)
  {
    goto LABEL_89;
  }
}

void sub_5A9E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if ((a18 & 0x80000000) == 0)
  {
    sub_5C0F34(v18);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_5C0F34(v18);
  _Unwind_Resume(a1);
}

void sub_5A9F5C(uint64_t a1@<X0>, void *a2@<X1>, int *a3@<X8>)
{
  v6 = a1 + 4096;
  sub_5C0A00(a3);
  if (*(v6 + 633))
  {
    v7 = 33;
  }

  else
  {
    v7 = 34;
  }

  *a3 = v7;
  a3[189] = sub_5CC2B4(v7);
  sub_5CB20C(v47, *a3);
  v8 = a1 + 2728;
  a3[144] = sub_59F53C((a1 + 2728), v47);
  v9 = __p;
  if (__p)
  {
    v10 = v71;
    v11 = __p;
    if (v71 != __p)
    {
      do
      {
        v10 -= 2000;
        sub_5C0D2C(v10);
      }

      while (v10 != v9);
      v11 = __p;
    }

    v71 = v9;
    operator delete(v11);
  }

  v12 = v68;
  if (v68)
  {
    v13 = v69;
    v14 = v68;
    if (v69 != v68)
    {
      do
      {
        v13 -= 2000;
        sub_5C0D2C(v13);
      }

      while (v13 != v12);
      v14 = v68;
    }

    v69 = v12;
    operator delete(v14);
  }

  v15 = v66;
  if (v66)
  {
    v16 = v67;
    v17 = v66;
    if (v67 != v66)
    {
      do
      {
        v16 -= 2000;
        sub_5C0D2C(v16);
      }

      while (v16 != v15);
      v17 = v66;
    }

    v67 = v15;
    operator delete(v17);
  }

  if (v65 == 1)
  {
    if (v64 < 0)
    {
      operator delete(v63);
      if (v62 != 1)
      {
        goto LABEL_37;
      }
    }

    else if (v62 != 1)
    {
LABEL_37:
      v22 = v50;
      if (v50)
      {
LABEL_38:
        v23 = v51;
        v24 = v22;
        if (v51 != v22)
        {
          do
          {
            v23 = sub_3A9518(v23 - 1120);
          }

          while (v23 != v22);
          v24 = v50;
        }

        v51 = v22;
        operator delete(v24);
      }

LABEL_42:
      sub_570440(&v49);
      if (v48[1120] == 1)
      {
        sub_3A9518(v48);
      }

      goto LABEL_44;
    }

    if (v61 < 0)
    {
      operator delete(v60);
    }

    v18 = v58;
    if (v58)
    {
      v19 = v59;
      v20 = v58;
      if (v59 != v58)
      {
        do
        {
          v21 = *(v19 - 1);
          v19 -= 3;
          if (v21 < 0)
          {
            operator delete(*v19);
          }
        }

        while (v19 != v18);
        v20 = v58;
      }

      v59 = v18;
      operator delete(v20);
    }

    if (v57 < 0)
    {
      operator delete(v56);
      if ((v55 & 0x80000000) == 0)
      {
LABEL_36:
        if ((v53 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_80;
      }
    }

    else if ((v55 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    operator delete(v54);
    if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_80:
    operator delete(v52);
    v22 = v50;
    if (v50)
    {
      goto LABEL_38;
    }

    goto LABEL_42;
  }

LABEL_44:
  v25 = sub_68C454(a2, 0);
  v40 = sub_4D1DB8(v25);
  sub_5CBF60(a3, &v40);
  v40 = 0;
  sub_5CBF8C(a3, &v40);
  if (*(v6 + 700) == 1)
  {
    v26 = *a3;
    if (v26 > 0x29)
    {
      v27 = 156;
    }

    else
    {
      v27 = qword_229A3B8[v26];
    }

    v28 = *(v8 + v27);
  }

  else
  {
    v28 = 2147483646;
  }

  v46 = v28;
  sub_5CBFB8(a3, &v46);
  v29 = *a3;
  if (v29 > 0x29)
  {
    v30 = 208;
  }

  else
  {
    v30 = qword_229A508[v29];
  }

  LODWORD(v40) = *(v8 + v30);
  sub_5CBFC4(a3, &v40);
  sub_59F958(a1, a3);
  sub_5B73D0(a1, &v40);
  sub_5A0314(a3 + 15, &v40);
  sub_53A868(&v45);
  sub_53A868(&v44);
  v31 = v42;
  if (v42)
  {
    v32 = v43;
    v33 = v42;
    if (v43 != v42)
    {
      do
      {
        v32 = sub_53A868(v32 - 160);
      }

      while (v32 != v31);
      v33 = v42;
    }

    v43 = v31;
    operator delete(v33);
  }

  v34 = v40;
  if (v40)
  {
    v35 = v41;
    v36 = v40;
    if (v41 != v40)
    {
      do
      {
        v35 = sub_53A868(v35 - 160);
      }

      while (v35 != v34);
      v36 = v40;
    }

    v41 = v34;
    operator delete(v36);
  }

  if (sub_5CC2D8(a3))
  {
    v37 = *(a1 + 3263);
  }

  else
  {
    v37 = 0;
  }

  *(a3 + 788) = v37 & 1;
  sub_5BBBF8(a1, a3);
  v38 = *(a3 + 89);
  v39 = *(a3 + 90);
  while (v38 != v39)
  {
    if (sub_5CBD4C(v38))
    {
      if ((*(v38 + 28) & 1) == 0)
      {
        sub_4F0F0C();
      }

      if (*(v38 + 24) != 13)
      {
        sub_5CDAC8(a3, (v38 + 48));
      }
    }

    v38 += 64;
  }

  if (*(a3 + 748) == 1 && (a3[184] != -1 || a3[185] != -1))
  {
    sub_5CDAC8(a3, a3 + 184);
  }

  sub_5A04B4(a1, a3);
}

void sub_5AA410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_59F87C(&a57);
  sub_5C0F34(v57);
  _Unwind_Resume(a1);
}

uint64_t sub_5AA47C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 2008) = 0;
  if (*(a2 + 2008) == 1)
  {
    sub_5C3640(a1 + 8, a2 + 8);
    *(a1 + 2008) = 1;
  }

  *(a1 + 2032) = 0;
  *(a1 + 2016) = 0u;
  sub_5C34A8(a1 + 2016, *(a2 + 2016), *(a2 + 2024), 0x1CAC083126E978D5 * ((*(a2 + 2024) - *(a2 + 2016)) >> 4));
  *(a1 + 2056) = 0;
  *(a1 + 2040) = 0u;
  sub_5C34A8(a1 + 2040, *(a2 + 2040), *(a2 + 2048), 0x1CAC083126E978D5 * ((*(a2 + 2048) - *(a2 + 2040)) >> 4));
  *(a1 + 2080) = 0;
  *(a1 + 2064) = 0u;
  sub_5C34A8(a1 + 2064, *(a2 + 2064), *(a2 + 2072), 0x1CAC083126E978D5 * ((*(a2 + 2072) - *(a2 + 2064)) >> 4));
  *(a1 + 2088) = *(a2 + 2088);
  return a1;
}

void sub_5AA57C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 2008) == 1)
  {
    sub_5C3A5C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_5AA59C(_Unwind_Exception *a1)
{
  sub_5C0CC8(v3);
  sub_5C0CC8((v2 + 2016));
  sub_5C0E04(v1);
  _Unwind_Resume(a1);
}

void sub_5AA5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_69B32C(a3);
  if ((*(a2 + 472) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v7 > *(a2 + 464))
  {
    v8 = sub_69B32C(a3);
    if (*(a2 + 472))
    {
      v19 = v8 - *(a2 + 464);
      if (!sub_659540(a2))
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_5CBCBC(__p, (a2 + 48), *(a2 + 800), &v19);
      v10 = a4[90];
      if (v10 >= a4[91])
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

LABEL_17:
    sub_4F0F0C();
  }

  v19 = 0;
  if (sub_659540(a2))
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = 96;
  if (*(a2 + 232))
  {
    v9 = 228;
  }

  sub_5CBC34(__p, (a2 + 48), *(a2 + v9), &v19, (a2 + 32));
  v10 = a4[90];
  if (v10 >= a4[91])
  {
LABEL_8:
    a4[90] = sub_5C49E8(a4 + 89, __p);
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      return;
    }

LABEL_16:
    operator delete(__p[0]);
    return;
  }

LABEL_12:
  if (SHIBYTE(v15) < 0)
  {
    sub_325C(v10, __p[0], __p[1]);
  }

  else
  {
    v11 = *__p;
    *(v10 + 16) = v15;
    *v10 = v11;
  }

  v12 = v16;
  v13 = v17;
  *(v10 + 56) = v18;
  *(v10 + 40) = v13;
  *(v10 + 24) = v12;
  a4[90] = v10 + 64;
  a4[90] = v10 + 64;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_16;
  }
}

void sub_5AA754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 720) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5AA77C(void **a1, void *a2, void *a3, uint64_t a4)
{
  v8 = sub_68C454(a2, 0);
  v9 = sub_68C454(a3, 0);
  v10 = sub_3AF6B4(*a1);
  v11 = sub_69CE94(v8, v9);
  if (v11 == -1)
  {
    v33 = sub_5BB9F8(v8, v10);
    LODWORD(__p) = v17;
    sub_5CDAC8(a4, &v33);
    v14 = sub_69D014(v8, v9);
    if (v14 != -1)
    {
      goto LABEL_5;
    }

LABEL_10:
    v18 = nullsub_1(a2);
    v33 = sub_5BBAF8(*(v18 + 8) - 12656, v10);
    LODWORD(__p) = v19;
    sub_5CDAC8(a4, &v33);
    if (!sub_69CCC0(v8))
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  v12 = sub_4D1F50(v8, v11);
  sub_2B7A20(v10, *(v12 + 32) & 0xFFFFFFFFFFFFFFLL, &v33);
  v31 = sub_31A76C(&v33);
  LODWORD(v32) = v13;
  sub_5CDAC8(a4, &v31);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  v14 = sub_69D014(v8, v9);
  if (v14 == -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v15 = sub_4D1F50(v8, v14);
  sub_2B7A20(v10, *(v15 + 32) & 0xFFFFFFFFFFFFFFLL, &v33);
  v31 = sub_31A76C(&v33);
  LODWORD(v32) = v16;
  sub_5CDAC8(a4, &v31);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (sub_69CCC0(v8))
  {
LABEL_11:
    if (sub_69CCC0(v9))
    {
      sub_453658(a2, *a1, &v31);
      v20 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 2));
      if (v32 == v31)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      sub_5C4FF4(v31, v32, &v33, v21, 1);
      sub_453658(a3, *a1, &v29);
      v22 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 2));
      if (v30 == v29)
      {
        v23 = 0;
      }

      else
      {
        v23 = v22;
      }

      sub_5C4FF4(v29, v30, &v33, v23, 1);
      v26 = 0;
      v27 = 0;
      v28 = 0;
      sub_5C4DCC(v31, v32, v29, v30, &v26, &v33);
      sub_5CDAD4(a4, &v26);
      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }
    }
  }

LABEL_24:
  sub_5BBBF8(a1, a4);
  v24 = *(a4 + 712);
  v25 = *(a4 + 720);
  while (v24 != v25)
  {
    if (sub_5CBD4C(v24))
    {
      if ((*(v24 + 28) & 1) == 0)
      {
        sub_4F0F0C();
      }

      if (*(v24 + 24) != 13)
      {
        sub_5CDAC8(a4, (v24 + 48));
      }
    }

    v24 += 64;
  }

  if (*(a4 + 748) == 1 && (*(a4 + 736) != -1 || *(a4 + 740) != -1))
  {
    sub_5CDAC8(a4, (a4 + 736));
  }
}

void sub_5AAAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
    v22 = a16;
    if (!a16)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v22 = a16;
    if (!a16)
    {
LABEL_6:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v22);
  goto LABEL_6;
}

unsigned int *sub_5AAB4C(uint64_t a1, void *a2, void *a3, unsigned int *a4)
{
  v8 = sub_68C464(a2, a3);
  if ((v9 & 1) == 0)
  {
    sub_4F0F0C();
  }

  v10 = v8;
  v11 = sub_68C454(a2, v8);
  v12 = sub_68C454(a3, v10);
  v13 = sub_69CE94(v11, v12);
  if (v13 == -1)
  {
    v46 = 0;
    return sub_5CBF8C(a4, &v46);
  }

  v14 = v13;
  sub_4D0560();
  v16 = v15;
  v18 = v17;
  sub_4D0568();
  v21 = v19;
  v22 = v20;
  v45 = a4;
  if (v16)
  {
    if (v19)
    {
      v23 = 0;
      for (i = v14; ; ++i)
      {
        v26 = sub_4D1DC0(v16);
        v27 = sub_4D1DC0(v21);
        if (v18 + i >= v26 || v22 >= v27)
        {
          if (v18 + i < v26 == v22 < v27)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v28 = sub_4D1F50(v16, v18 + i);
          if (v28 == sub_4D1F50(v21, v22))
          {
            goto LABEL_23;
          }
        }

        sub_4D1F50(v16, v18 + i);
        v23 += sub_4D23F8(v11, i, v25);
      }
    }

    if (v18 + v14 < sub_4D1DC0(v16))
    {
      v23 = 0;
      v32 = v14;
      do
      {
        sub_4D1F50(v16, v18 + v32);
        v23 += sub_4D23F8(v11, v32++, v33);
      }

      while (v18 + v32 < sub_4D1DC0(v16));
      goto LABEL_23;
    }

LABEL_22:
    v23 = 0;
    goto LABEL_23;
  }

  if (!v19 || v20 >= sub_4D1DC0(v19))
  {
    goto LABEL_22;
  }

  v23 = 0;
  v30 = v14;
  do
  {
    sub_4D1F50(0, v18 + v30);
    v23 += sub_4D23F8(v11, v30++, v31);
  }

  while (v22 < sub_4D1DC0(v21));
LABEL_23:
  v46 = v23;
  sub_5CBF8C(v45, &v46);
  *(a1 + 7424) = sub_69B32C(v11) - *(v45 + 64);
  v34 = *(sub_3CF22C(v11) + 16);
  result = sub_3CF22C(v11);
  v35 = *(result + 2) + 4 * v14;
  if (v35 == v34)
  {
    v36 = 0;
  }

  else
  {
    v37 = v35 - v34 - 4;
    if (v37 >= 0x1C)
    {
      v39 = (v37 >> 2) + 1;
      v38 = (v34 + 4 * (v39 & 0x7FFFFFFFFFFFFFF8));
      v40 = v34 + 1;
      v41 = 0uLL;
      v42 = v39 & 0x7FFFFFFFFFFFFFF8;
      v43 = 0uLL;
      do
      {
        v41 = vaddq_s32(v40[-1], v41);
        v43 = vaddq_s32(*v40, v43);
        v40 += 2;
        v42 -= 8;
      }

      while (v42);
      v36 = vaddvq_s32(vaddq_s32(v43, v41));
      if (v39 == (v39 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v36 = 0;
      v38 = v34;
    }

    do
    {
      v44 = v38->i32[0];
      v38 = (v38 + 4);
      v36 += v44;
    }

    while (v38 != v35);
  }

LABEL_31:
  *(a1 + 7420) = v36;
  return result;
}

void sub_5AAE48(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 + 1176);
  v11 = *(a3 + 1184);
  if (v10 == v11)
  {
    HIBYTE(v103) = 0;
    LOBYTE(v102) = 0;
    goto LABEL_6;
  }

  if (*(v10 + 23) < 0)
  {
    sub_325C(&v102, *v10, *(v10 + 1));
    v10 = *(a3 + 1176);
    if (v10 != *(a3 + 1184))
    {
      goto LABEL_8;
    }

LABEL_6:
    HIBYTE(v101) = 0;
    LOBYTE(v100) = 0;
    goto LABEL_9;
  }

  v12 = *v10;
  v103 = *(v10 + 2);
  v102 = v12;
  if (v10 == v11)
  {
    goto LABEL_6;
  }

LABEL_8:
  sub_734D90(&v100, v10);
LABEL_9:
  v13 = sub_7B76EC(a4, (a3 + 7416));
  v15 = v14;
  if (*(a1 + 4799) == 1)
  {
    if ((*(a1 + 3264) & 1) == 0)
    {
LABEL_11:
      v16 = "_Savings";
      v76 = v13;
      goto LABEL_14;
    }
  }

  else if ((*(a1 + 3265) & 1) == 0)
  {
    goto LABEL_11;
  }

  v16 = "_Faster_Route";
  v76 = v13;
LABEL_14:
  v98 = *v16;
  v99 = *(v16 + 2);
  if (v99 >= 0)
  {
    v17 = HIBYTE(v99);
  }

  else
  {
    v17 = *(&v98 + 1);
  }

  if (v17 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v18 = *(a1 + 8);
  v75 = a2;
  if (v17 + 10 >= 0x17)
  {
    operator new();
  }

  v95 = 25697;
  v96 = 0;
  HIBYTE(v96) = v17 + 10;
  __p = 0x654872656E6E6142;
  if (v17)
  {
    if (v99 >= 0)
    {
      v19 = &v98;
    }

    else
    {
      v19 = v98;
    }

    memmove(&v95 + 2, v19, v17);
  }

  *(&v95 + v17 + 2) = 0;
  v20 = sub_9274F4(v18, &__p);
  sub_64BC20(v97, v20);
  if (SHIBYTE(v96) < 0)
  {
    operator delete(__p);
  }

  v21 = *(a1 + 8);
  if (SHIBYTE(v103) >= 0)
  {
    v22 = HIBYTE(v103);
  }

  else
  {
    v22 = *(&v102 + 1);
  }

  if (v22)
  {
    if (v99 >= 0)
    {
      v23 = HIBYTE(v99);
    }

    else
    {
      v23 = *(&v98 + 1);
    }

    if (v23 + 10 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v23 + 10 >= 0x17)
    {
      operator new();
    }

    v92[1] = &loc_7960 + 4;
    v93 = 0;
    HIBYTE(v93) = v23 + 10;
    v92[0] = 0x6F4272656E6E6142;
    if (v23)
    {
      if (v99 >= 0)
      {
        v25 = &v98;
      }

      else
      {
        v25 = v98;
      }

      memmove(&v92[1] + 2, v25, v23);
    }

    *(&v92[1] + v23 + 2) = 0;
    v26 = SHIBYTE(v93);
    if ((SHIBYTE(v93) & 0x8000000000000000) != 0)
    {
      v26 = v92[1];
      v27 = (v93 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v27 - v92[1] < 8)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v93 & 0x7FFFFFFFFFFFFFFFLL)) < v92[1] - v27 + 8)
        {
          sub_3244();
        }

LABEL_53:
        operator new();
      }

      v28 = v92[0];
    }

    else
    {
      if ((SHIBYTE(v93) - 15) < 8)
      {
        goto LABEL_53;
      }

      v28 = v92;
    }

    *(v26 + v28) = 0x64616F52746C415FLL;
    v31 = v26 + 8;
    if (SHIBYTE(v93) < 0)
    {
      v92[1] = v26 + 8;
    }

    else
    {
      HIBYTE(v93) = v31 & 0x7F;
    }

    v31[v28] = 0;
    *v80 = *v92;
    *&v81 = v93;
    v92[1] = 0;
    v93 = 0;
    v92[0] = 0;
  }

  else
  {
    if (v99 >= 0)
    {
      v24 = HIBYTE(v99);
    }

    else
    {
      v24 = *(&v98 + 1);
    }

    if (v24 + 10 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v24 + 10 >= 0x17)
    {
      operator new();
    }

    v80[1] = &loc_7960 + 4;
    *&v81 = 0;
    BYTE7(v81) = v24 + 10;
    v80[0] = 0x6F4272656E6E6142;
    v29 = (v80 | 0xA);
    if (v24)
    {
      if (v99 >= 0)
      {
        v30 = &v98;
      }

      else
      {
        v30 = v98;
      }

      memmove(v29, v30, v24);
    }

    *(v29 + v24) = 0;
  }

  v32 = sub_9274F4(v21, v80);
  sub_64BC20(&__p, v32);
  if (SBYTE7(v81) < 0)
  {
    operator delete(v80[0]);
    if (!v22)
    {
      goto LABEL_71;
    }
  }

  else if (!v22)
  {
LABEL_71:
    if (v15)
    {
      goto LABEL_72;
    }

    goto LABEL_80;
  }

  if ((SHIBYTE(v93) & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v92[0]);
  if (v15)
  {
LABEL_72:
    operator new();
  }

LABEL_80:
  v91 = 0;
  LOBYTE(v89) = 0;
  v34 = HIBYTE(v101);
  if (SHIBYTE(v101) < 0)
  {
    v34 = *(&v100 + 1);
  }

  if (v34)
  {
    if (v99 >= 0)
    {
      v35 = HIBYTE(v99);
    }

    else
    {
      v35 = *(&v98 + 1);
    }

    if (v35 + 10 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v35 + 10 >= 0x17)
    {
      operator new();
    }

    v80[1] = &loc_7470 + 2;
    *&v81 = 0;
    BYTE7(v81) = v35 + 10;
    v80[0] = 0x656C416563696F56;
    if (v35)
    {
      if (v99 >= 0)
      {
        v36 = &v98;
      }

      else
      {
        v36 = v98;
      }

      memmove(&v80[1] + 2, v36, v35);
    }

    *(&v80[1] + v35 + 2) = 0;
    v37 = SBYTE7(v81);
    if ((SBYTE7(v81) & 0x8000000000000000) != 0)
    {
      v37 = v80[1];
      v38 = (v81 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v38 - v80[1] < 8)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v81 & 0x7FFFFFFFFFFFFFFFLL)) < v80[1] - v38 + 8)
        {
          sub_3244();
        }

LABEL_99:
        operator new();
      }

      v39 = v80[0];
    }

    else
    {
      if ((SBYTE7(v81) - 15) < 8)
      {
        goto LABEL_99;
      }

      v39 = v80;
    }

    *(v37 + v39) = 0x64616F52746C415FLL;
    v43 = v37 + 8;
    if (SBYTE7(v81) < 0)
    {
      v80[1] = v37 + 8;
    }

    else
    {
      BYTE7(v81) = v43 & 0x7F;
    }

    v43[v39] = 0;
    *v87 = *v80;
    v88 = v81;
    v44 = v91;
    if ((v91 & 0x80u) != 0)
    {
      v44 = v90;
    }

    if (v44)
    {
      goto LABEL_117;
    }

LABEL_109:
    HIBYTE(v86) = 0;
    LOBYTE(v85[0]) = 0;
    goto LABEL_121;
  }

  if (v99 >= 0)
  {
    v33 = HIBYTE(v99);
  }

  else
  {
    v33 = *(&v98 + 1);
  }

  if (v33 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v33 + 10 >= 0x17)
  {
    operator new();
  }

  v87[1] = &loc_7470 + 2;
  v88 = 0;
  HIBYTE(v88) = v33 + 10;
  v87[0] = 0x656C416563696F56;
  v40 = (v87 | 0xA);
  if (v33)
  {
    if (v99 >= 0)
    {
      v41 = &v98;
    }

    else
    {
      v41 = v98;
    }

    memmove(v40, v41, v33);
  }

  *(v40 + v33) = 0;
  v42 = v91;
  if ((v91 & 0x80u) != 0)
  {
    v42 = v90;
  }

  if (!v42)
  {
    goto LABEL_109;
  }

LABEL_117:
  *v80 = 0u;
  v81 = 0u;
  v82 = 1065353216;
  sub_65F810(a1 + 24, &v89, v80, *(a1 + 3261), v77);
  *v85 = *v77;
  v86 = v78;
  v77[1] = 0;
  *&v78 = 0;
  v77[0] = 0;
  v45 = v81;
  if (v81)
  {
    do
    {
      v46 = *v45;
      sub_55F7FC((v45 + 2));
      operator delete(v45);
      v45 = v46;
    }

    while (v46);
  }

  v47 = v80[0];
  v80[0] = 0;
  if (v47)
  {
    operator delete(v47);
  }

LABEL_121:
  v48 = HIBYTE(v88);
  if (v88 < 0)
  {
    v48 = v87[1];
  }

  if (v48)
  {
    *v80 = 0u;
    v81 = 0u;
    v82 = 1065353216;
    sub_65F810(a1 + 24, v87, v80, *(a1 + 3261), v77);
    *v83 = *v77;
    v84 = v78;
    v77[1] = 0;
    *&v78 = 0;
    v77[0] = 0;
    v49 = v81;
    if (v81)
    {
      do
      {
        v50 = *v49;
        sub_55F7FC((v49 + 2));
        operator delete(v49);
        v49 = v50;
      }

      while (v50);
    }

    v51 = v80[0];
    v80[0] = 0;
    if (v51)
    {
      operator delete(v51);
    }

    v52 = HIBYTE(v84);
  }

  else
  {
    v52 = 0;
    HIBYTE(v84) = 0;
    LOBYTE(v83[0]) = 0;
  }

  v53 = SHIBYTE(v86);
  if (v86 >= 0)
  {
    v54 = HIBYTE(v86);
  }

  else
  {
    v54 = v85[1];
  }

  if ((v52 & 0x80u) == 0)
  {
    v55 = v52;
  }

  else
  {
    v55 = v83[1];
  }

  if (v55 + v54 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v55 + v54 > 0x16)
  {
    operator new();
  }

  v77[1] = 0;
  *&v78 = 0;
  v77[0] = 0;
  BYTE7(v78) = v55 + v54;
  if (v54)
  {
    if (v86 >= 0)
    {
      v56 = v85;
    }

    else
    {
      v56 = v85[0];
    }

    memmove(v77, v56, v54);
  }

  if (v55)
  {
    if ((v52 & 0x80u) == 0)
    {
      v57 = v83;
    }

    else
    {
      v57 = v83[0];
    }

    memmove(v77 + v54, v57, v55);
  }

  *(v77 + v54 + v55) = 0;
  sub_64BC20(v80, v77);
  if (SBYTE7(v78) < 0)
  {
    operator delete(v77[0]);
    if ((v15 & 1) == 0)
    {
      goto LABEL_155;
    }
  }

  else if ((v15 & 1) == 0)
  {
    goto LABEL_155;
  }

  if ((*(v76 + 472) & 1) == 0)
  {
    sub_4F0F0C();
  }

  LOBYTE(v77[0]) = 1;
  sub_64E428(v80, "{distance}", (v76 + 464), v77);
LABEL_155:
  v58 = sub_4D26B4(v75, 0);
  v59 = sub_4D26B4(a3, 0);
  if (v58 < v59)
  {
    v60 = 65236;
  }

  else
  {
    v60 = 300;
  }

  v61 = v60 + (v58 - v59) % 600 + ((-9611 * (v60 + (v58 - v59) % 600)) >> 16);
  v62 = 600 * ((v58 - v59) / 600 + (v61 >> 9) + ((v61 & 0x8000) >> 15));
  sub_64EB9C(v97, "{duration}", v62);
  sub_64EDA4(v80, "{duration}", v62);
  v63 = HIBYTE(v103);
  if (SHIBYTE(v103) < 0)
  {
    v63 = *(&v102 + 1);
  }

  if (v63)
  {
    *v77 = 0u;
    v78 = 0u;
    v79 = 1065353216;
    v104 = "{newroute}";
    v64 = sub_353894(v77, "{newroute}");
    v65 = v64 + 5;
    if (v64 + 5 != &v102)
    {
      if (*(v64 + 63) < 0)
      {
        if (SHIBYTE(v103) >= 0)
        {
          v66 = &v102;
        }

        else
        {
          v66 = v102;
        }

        if (SHIBYTE(v103) >= 0)
        {
          v67 = HIBYTE(v103);
        }

        else
        {
          v67 = *(&v102 + 1);
        }

        sub_13B38(v65, v66, v67);
      }

      else if ((HIBYTE(v103) & 0x80) != 0)
      {
        sub_13A68(v65, v102, *(&v102 + 1));
      }

      else
      {
        *v65 = v102;
        v64[7] = v103;
      }
    }

    sub_6A56A4(__p, v77);
    v104 = "{newroute}";
    v68 = sub_353894(v77, "{newroute}");
    v69 = v68 + 5;
    if (v68 + 5 != &v100)
    {
      if (*(v68 + 63) < 0)
      {
        if (SHIBYTE(v101) >= 0)
        {
          v70 = &v100;
        }

        else
        {
          v70 = v100;
        }

        if (SHIBYTE(v101) >= 0)
        {
          v71 = HIBYTE(v101);
        }

        else
        {
          v71 = *(&v100 + 1);
        }

        sub_13B38(v69, v70, v71);
      }

      else if ((HIBYTE(v101) & 0x80) != 0)
      {
        sub_13A68(v69, v100, *(&v100 + 1));
      }

      else
      {
        *v69 = v100;
        v68[7] = v101;
      }
    }

    sub_6A56A4(v80[0], v77);
    v72 = v78;
    if (!v78)
    {
LABEL_192:
      v74 = v77[0];
      v77[0] = 0;
      if (v74)
      {
        operator delete(v74);
      }

      goto LABEL_194;
    }

    while (1)
    {
      v73 = *v72;
      if (v72[63] < 0)
      {
        operator delete(*(v72 + 5));
        if ((v72[39] & 0x80000000) == 0)
        {
          goto LABEL_188;
        }

LABEL_191:
        operator delete(*(v72 + 2));
        operator delete(v72);
        v72 = v73;
        if (!v73)
        {
          goto LABEL_192;
        }
      }

      else
      {
        if (v72[39] < 0)
        {
          goto LABEL_191;
        }

LABEL_188:
        operator delete(v72);
        v72 = v73;
        if (!v73)
        {
          goto LABEL_192;
        }
      }
    }
  }

LABEL_194:
  sub_5CB500(a5, v97, &__p, v80);
  sub_53A868(v80);
  if ((v52 & 0x80) != 0)
  {
    operator delete(v83[0]);
    if ((v53 & 0x80000000) == 0)
    {
LABEL_196:
      if ((SHIBYTE(v88) & 0x80000000) == 0)
      {
        goto LABEL_197;
      }

      goto LABEL_204;
    }
  }

  else if ((v53 & 0x80000000) == 0)
  {
    goto LABEL_196;
  }

  operator delete(v85[0]);
  if ((SHIBYTE(v88) & 0x80000000) == 0)
  {
LABEL_197:
    if ((v91 & 0x80000000) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_205;
  }

LABEL_204:
  operator delete(v87[0]);
  if ((v91 & 0x80000000) == 0)
  {
LABEL_198:
    sub_53A868(&__p);
    sub_53A868(v97);
    if ((SHIBYTE(v99) & 0x80000000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_206;
  }

LABEL_205:
  operator delete(v89);
  sub_53A868(&__p);
  sub_53A868(v97);
  if ((SHIBYTE(v99) & 0x80000000) == 0)
  {
LABEL_199:
    if ((SHIBYTE(v101) & 0x80000000) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_207;
  }

LABEL_206:
  operator delete(v98);
  if ((SHIBYTE(v101) & 0x80000000) == 0)
  {
LABEL_200:
    if ((SHIBYTE(v103) & 0x80000000) == 0)
    {
      return;
    }

LABEL_208:
    operator delete(v102);
    return;
  }

LABEL_207:
  operator delete(v100);
  if (SHIBYTE(v103) < 0)
  {
    goto LABEL_208;
  }
}

void sub_5ABDC0(_Unwind_Exception *a1)
{
  if (*(v1 - 145) < 0)
  {
    operator delete(*(v1 - 168));
    if (*(v1 - 121) < 0)
    {
LABEL_3:
      operator delete(*(v1 - 144));
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 - 121) < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(a1);
}

void sub_5ABFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7)
{
  v26 = a6;
  v27 = a5;
  if (*(a1 + 4687) != 1)
  {
    return;
  }

  v11 = sub_9274F4(*(a1 + 8), a2);
  if (*(v11 + 23) < 0)
  {
    sub_325C(v24, *v11, v11[1]);
    LODWORD(__p[0]) = 1;
    v13 = *(a4 + 768);
    if (v13 < *(a4 + 776))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = *v11;
    v25 = v11[2];
    *v24 = v12;
    LODWORD(__p[0]) = 1;
    v13 = *(a4 + 768);
    if (v13 < *(a4 + 776))
    {
LABEL_4:
      sub_5CBC00(v13, v24, __p, &v27);
      v14 = v13 + 168;
      *(a4 + 768) = v13 + 168;
      goto LABEL_7;
    }
  }

  v14 = sub_5C3B24((a4 + 760), v24, __p, &v27);
LABEL_7:
  *(a4 + 768) = v14;
  v15 = sub_9274F4(*(a1 + 8), a3);
  if (*(v15 + 23) < 0)
  {
    sub_325C(__p, *v15, v15[1]);
  }

  else
  {
    v16 = *v15;
    v23 = v15[2];
    *__p = v16;
  }

  v21 = 2;
  v17 = *(a4 + 768);
  if (v17 >= *(a4 + 776))
  {
    v18 = sub_5C3B24((a4 + 760), __p, &v21, &v26);
  }

  else
  {
    sub_5CBC00(*(a4 + 768), __p, &v21, &v26);
    v18 = v17 + 168;
    *(a4 + 768) = v17 + 168;
  }

  *(a4 + 768) = v18;
  if (sub_5CC2D8(a4))
  {
    v19 = *(a1 + 3263);
    *(a4 + 788) = v19 & 1;
    if (a7 < 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
    *(a4 + 788) = 0;
    if (a7 < 2)
    {
LABEL_15:
      *(a4 + 784) = a7;
      if (SHIBYTE(v23) < 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }
  }

  if (a7 == 3)
  {
    if (v19)
    {
      v20 = -1;
    }

    else
    {
      v20 = 1;
    }

    *(a4 + 784) = v20;
    if (SHIBYTE(v23) < 0)
    {
LABEL_16:
      operator delete(__p[0]);
      if ((SHIBYTE(v25) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else if (SHIBYTE(v23) < 0)
  {
    goto LABEL_16;
  }

LABEL_26:
  if (SHIBYTE(v25) < 0)
  {
LABEL_17:
    operator delete(v24[0]);
  }
}

void sub_5AC1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if (a23 < 0)
    {
LABEL_5:
      operator delete(a18);
      _Unwind_Resume(a1);
    }
  }

  else if (a23 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void sub_5AC26C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 4799) != 1)
  {
    if (*(a1 + 3265) != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    strcpy(v81, "BannerHead_Safer_Route");
    BYTE7(v81[1]) = 22;
    v8 = 1;
    goto LABEL_8;
  }

  if (*(a1 + 3264))
  {
    goto LABEL_7;
  }

LABEL_3:
  strcpy(v68, "BannerHead_Safer_Route");
  v68[23] = 22;
  v6 = std::string::append(v68, "_Old", 4uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  *&v81[1] = *(&v6->__r_.__value_.__l + 2);
  v81[0] = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if ((v68[23] & 0x80000000) != 0)
  {
    operator delete(*v68);
  }

  v8 = 0;
LABEL_8:
  v9 = sub_9274F4(*(a1 + 8), v81);
  if (*(v9 + 23) < 0)
  {
    sub_325C(&v79, *v9, v9[1]);
  }

  else
  {
    v10 = *v9;
    v80 = v9[2];
    v79 = v10;
  }

  v11 = *(a1 + 8);
  strcpy(v68, "BannerBody_Safer_Route");
  v68[23] = 22;
  v12 = sub_9274F4(v11, v68);
  if (*(v12 + 23) < 0)
  {
    sub_325C(&v78, *v12, v12[1]);
  }

  else
  {
    v13 = *v12;
    v78.__r_.__value_.__r.__words[2] = v12[2];
    *&v78.__r_.__value_.__l.__data_ = v13;
  }

  if ((v68[23] & 0x80000000) != 0)
  {
    operator delete(*v68);
  }

  size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v78;
  }

  else
  {
    v15 = v78.__r_.__value_.__r.__words[0];
  }

  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v78.__r_.__value_.__l.__size_;
  }

  if (size >= 14)
  {
    v16 = v15 + size;
    v17 = v15;
    do
    {
      v18 = memchr(v17, 123, size - 13);
      if (!v18)
      {
        break;
      }

      v19 = *v18 == 0x636E49616572417BLL && *(v18 + 6) == 0x7D746E656469636ELL;
      if (v19)
      {
        if (v18 != v16 && v18 - v15 != -1)
        {
          v20 = *(a2 + 503);
          if (v20 >= 0)
          {
            v21 = (a2 + 480);
          }

          else
          {
            v21 = *(a2 + 480);
          }

          if (v20 >= 0)
          {
            v22 = *(a2 + 503);
          }

          else
          {
            v22 = *(a2 + 488);
          }

          std::string::replace(&v78, v18 - v15, 0xEuLL, v21, v22);
        }

        break;
      }

      v17 = (v18 + 1);
      size = v16 - v17;
    }

    while (v16 - v17 >= 14);
  }

  memset(&v77, 0, sizeof(v77));
  v23 = *(a2 + 959);
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(a2 + 944);
  }

  if (v23)
  {
    if (v8)
    {
      strcpy(__p, "VoiceAlert_Safer_Route");
      HIBYTE(__p[2]) = 22;
    }

    else
    {
      strcpy(v68, "VoiceAlert_Safer_Route");
      v68[23] = 22;
      v32 = std::string::append(v68, "_Old", 4uLL);
      v33 = *&v32->__r_.__value_.__l.__data_;
      __p[2] = v32->__r_.__value_.__r.__words[2];
      *__p = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      if ((v68[23] & 0x80000000) != 0)
      {
        operator delete(*v68);
      }
    }

    memset(v68, 0, sizeof(v68));
    v69 = 1065353216;
    sub_65F810(a1 + 24, __p, v68, *(a1 + 3261), &__dst);
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    v77 = __dst;
    *(&__dst.__r_.__value_.__s + 23) = 0;
    __dst.__r_.__value_.__s.__data_[0] = 0;
    v34 = *&v68[16];
    if (*&v68[16])
    {
      do
      {
        v35 = *v34;
        sub_55F7FC((v34 + 2));
        operator delete(v34);
        v34 = v35;
      }

      while (v35);
    }

    v36 = a3;
    v37 = *v68;
    *v68 = 0;
    if (v37)
    {
      operator delete(v37);
    }

    v38 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
    v39 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
    v41 = v77.__r_.__value_.__l.__size_;
    v40 = v77.__r_.__value_.__r.__words[0];
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v77;
    }

    else
    {
      v42 = v77.__r_.__value_.__r.__words[0];
    }

    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = v77.__r_.__value_.__l.__size_;
    }

    if (v43 >= 14)
    {
      v46 = v42 + v43;
      v47 = v42;
      while (1)
      {
        v48 = memchr(v47, 123, v43 - 13);
        if (!v48)
        {
          goto LABEL_102;
        }

        if (*v48 == 0x636E49616572417BLL && *(v48 + 6) == 0x7D746E656469636ELL)
        {
          break;
        }

        v47 = (v48 + 1);
        v43 = v46 - v47;
        if (v46 - v47 < 14)
        {
          goto LABEL_102;
        }
      }

      if (v48 == v46)
      {
LABEL_102:
        a3 = v36;
        if (v39 >= 0)
        {
          v44 = &v77;
        }

        else
        {
          v44 = v40;
        }

        if (v39 >= 0)
        {
          v45 = v38;
        }

        else
        {
          v45 = v41;
        }

        if (v45 < 20)
        {
          goto LABEL_129;
        }

        goto LABEL_109;
      }

      v50 = v48 - v42;
      v19 = v48 - v42 == -1;
      a3 = v36;
      if (!v19)
      {
        v51 = *(a2 + 503);
        if (v51 >= 0)
        {
          v52 = (a2 + 480);
        }

        else
        {
          v52 = *(a2 + 480);
        }

        if (v51 >= 0)
        {
          v53 = *(a2 + 503);
        }

        else
        {
          v53 = *(a2 + 488);
        }

        std::string::replace(&v77, v50, 0xEuLL, v52, v53);
        v38 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        v41 = v77.__r_.__value_.__l.__size_;
        v40 = v77.__r_.__value_.__r.__words[0];
        v39 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
      }

      if (v39 >= 0)
      {
        v44 = &v77;
      }

      else
      {
        v44 = v40;
      }

      if (v39 >= 0)
      {
        v45 = v38;
      }

      else
      {
        v45 = v41;
      }

      if (v45 < 20)
      {
        goto LABEL_129;
      }
    }

    else
    {
      a3 = v36;
      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v77;
      }

      else
      {
        v44 = v77.__r_.__value_.__r.__words[0];
      }

      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v77.__r_.__value_.__l.__size_;
      }

      if (v45 < 20)
      {
LABEL_129:
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_155;
      }
    }

LABEL_109:
    v54 = v44 + v45;
    v55 = v44;
    while (1)
    {
      v56 = memchr(v55, 123, v45 - 19);
      if (!v56)
      {
        goto LABEL_129;
      }

      if (*v56 == 0x636E49616572417BLL && *(v56 + 1) == 0x656741746E656469 && *(v56 + 4) == 2105107310)
      {
        if (v56 != v54 && v56 - v44 != -1)
        {
          v59 = *(a2 + 959);
          if (v59 >= 0)
          {
            v60 = (a2 + 936);
          }

          else
          {
            v60 = *(a2 + 936);
          }

          if (v59 >= 0)
          {
            v61 = *(a2 + 959);
          }

          else
          {
            v61 = *(a2 + 944);
          }

          std::string::replace(&v77, v56 - v44, 0x14uLL, v60, v61);
        }

        goto LABEL_129;
      }

      v55 = (v56 + 1);
      v45 = v54 - v55;
      if (v54 - v55 < 20)
      {
        goto LABEL_129;
      }
    }
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(v68);
    v24 = sub_4A5C(v68, "Empty localized area incident source for area incident: ", 56);
    v27 = *(a2 + 48);
    v26 = a2 + 48;
    v25 = v27;
    v28 = *(v26 + 23);
    if (v28 >= 0)
    {
      v29 = v26;
    }

    else
    {
      v29 = v25;
    }

    if (v28 >= 0)
    {
      v30 = *(v26 + 23);
    }

    else
    {
      v30 = *(v26 + 8);
    }

    sub_4A5C(v24, v29, v30);
    if ((v76 & 0x10) != 0)
    {
      v62 = v75;
      if (v75 < v72)
      {
        v75 = v72;
        v62 = v72;
      }

      v63 = v71;
      v31 = v62 - v71;
      if (v62 - v71 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_165;
      }
    }

    else
    {
      if ((v76 & 8) == 0)
      {
        v31 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_139:
        __dst.__r_.__value_.__s.__data_[v31] = 0;
        sub_7E854(&__dst, 3u);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (v74 < 0)
        {
          operator delete(v73);
        }

        std::locale::~locale(&v68[16]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_144;
      }

      v63 = *&v68[24];
      v31 = v70 - *&v68[24];
      if ((v70 - *&v68[24]) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_165:
        sub_3244();
      }
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v31;
    if (v31)
    {
      memmove(&__dst, v63, v31);
    }

    goto LABEL_139;
  }

LABEL_144:
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &v78;
    }

    else
    {
      v64 = v78.__r_.__value_.__r.__words[0];
    }

    if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v65 = v78.__r_.__value_.__l.__size_;
    }

    sub_13B38(&v77, v64, v65);
  }

  else if ((*(&v78.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    sub_13A68(&v77, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v77 = v78;
  }

LABEL_155:
  sub_5CB7CC(a3, &v79, &v78, &v77);
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_157:
      if ((SHIBYTE(v80) & 0x80000000) == 0)
      {
        goto LABEL_158;
      }

      goto LABEL_162;
    }
  }

  else if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_157;
  }

  operator delete(v78.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v80) & 0x80000000) == 0)
  {
LABEL_158:
    if ((SBYTE7(v81[1]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_163:
    operator delete(*&v81[0]);
    return;
  }

LABEL_162:
  operator delete(v79);
  if (SBYTE7(v81[1]) < 0)
  {
    goto LABEL_163;
  }
}

void sub_5ACB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 169) < 0)
  {
    operator delete(*(v30 - 192));
  }

  if (*(v30 - 137) < 0)
  {
    operator delete(*(v30 - 160));
  }

  if (*(v30 - 105) < 0)
  {
    operator delete(*(v30 - 128));
  }

  _Unwind_Resume(exception_object);
}

void sub_5ACC00(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (*(a1 + 4240) != 11 || *(a1 + 4272) != 11)
  {
    goto LABEL_5;
  }

  if (*(a1 + 4799) == 1)
  {
    if ((*(a1 + 3264) & 1) == 0)
    {
LABEL_5:
      v8 = "_Old";
      goto LABEL_6;
    }
  }

  else if (*(a1 + 3265) != 1)
  {
    goto LABEL_5;
  }

  v8 = "";
LABEL_6:
  v9 = 390;
  if (a3)
  {
    v9 = 393;
  }

  v10 = &qword_2795700;
  if (!a3)
  {
    v10 = &qword_27956E8;
  }

  v11 = &algn_27956F0[15];
  if (a3)
  {
    v11 = &unk_2795717;
  }

  if (*v11 < 0)
  {
    v12 = qword_2794AB8[v9];
    v13 = 390;
    if (a3)
    {
      v13 = 393;
    }

    sub_325C(&v54, v12, qword_2794AB8[v13 + 1]);
  }

  else
  {
    v54 = *v10;
    v55 = v10[2];
  }

  v14 = "_EV_Remove_Stop";
  if (a3)
  {
    v14 = "_EV_Remove_Stops";
  }

  v52 = *v14;
  v53 = *(v14 + 2);
  if (a2)
  {
    v15 = &v54;
  }

  else
  {
    v15 = &v52;
  }

  if (*(v15 + 23) >= 0)
  {
    v16 = *(v15 + 23);
  }

  else
  {
    v16 = *(v15 + 1);
  }

  v17 = strlen(v8);
  if (v16 + v17 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v18 = v17;
  if (v16 + v17 > 0x16)
  {
    operator new();
  }

  v50 = 0;
  v51 = 0;
  v49 = 0;
  HIBYTE(v51) = v16 + v17;
  if (v16)
  {
    if (*(v15 + 23) >= 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = *v15;
    }

    memmove(&v49, v19, v16);
  }

  v20 = &v49 + v16;
  if (v18)
  {
    memcpy(v20, v8, v18);
  }

  v20[v18] = 0;
  v21 = SHIBYTE(v51);
  if (v51 >= 0)
  {
    v22 = HIBYTE(v51);
  }

  else
  {
    v22 = v50;
  }

  if (v22 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v23 = *(a1 + 8);
  if (v22 + 10 >= 0x17)
  {
    operator new();
  }

  __p[1] = &loc_6460 + 1;
  *&v37 = 0;
  BYTE7(v37) = v22 + 10;
  __p[0] = 0x654872656E6E6142;
  if (v22)
  {
    if (v51 >= 0)
    {
      v24 = &v49;
    }

    else
    {
      v24 = v49;
    }

    memmove(&__p[1] + 2, v24, v22);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  *(&__p[1] + v22 + 2) = 0;
  v26 = sub_9274F4(v23, __p);
  if (*(v26 + 23) < 0)
  {
    sub_325C(v47, *v26, v26[1]);
  }

  else
  {
    v27 = *v26;
    v48 = v26[2];
    *v47 = v27;
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(__p[0]);
  }

  v28 = *(a1 + 8);
  BYTE1(__p[1]) = 0;
  WORD1(__p[1]) = 0;
  HIDWORD(__p[1]) = 0;
  *&v37 = 0;
  BYTE7(v37) = v22 + 10;
  strcpy(__p, "BannerBo");
  if ((v25 & 1) == 0)
  {
    if (v21 >= 0)
    {
      v29 = &v49;
    }

    else
    {
      v29 = v49;
    }

    memmove(&__p[1] + 2, v29, v22);
  }

  *(&__p[1] + v22 + 2) = 0;
  v30 = sub_9274F4(v28, __p);
  if (*(v30 + 23) < 0)
  {
    sub_325C(v45, *v30, v30[1]);
  }

  else
  {
    v31 = *v30;
    v46 = v30[2];
    *v45 = v31;
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(__p[0]);
  }

  BYTE1(v39[1]) = 0;
  WORD1(v39[1]) = 0;
  HIDWORD(v39[1]) = 0;
  v40 = 0;
  HIBYTE(v40) = v22 + 10;
  strcpy(v39, "VoiceAle");
  if ((v25 & 1) == 0)
  {
    if (v21 >= 0)
    {
      v32 = &v49;
    }

    else
    {
      v32 = v49;
    }

    memmove(&v39[1] + 2, v32, v22);
  }

  *(&v39[1] + v22 + 2) = 0;
  *__p = 0u;
  v37 = 0u;
  v38 = 1065353216;
  sub_65F810(a1 + 24, v39, __p, *(a1 + 3261), &v41);
  *v43 = v41;
  v44 = v42;
  v42 = 0;
  v41 = 0uLL;
  v33 = v37;
  if (v37)
  {
    do
    {
      v34 = *v33;
      sub_55F7FC((v33 + 2));
      operator delete(v33);
      v33 = v34;
    }

    while (v34);
  }

  v35 = __p[0];
  __p[0] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  sub_5CB7CC(a4, v47, v45, v43);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
LABEL_74:
      if ((SHIBYTE(v48) & 0x80000000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_81;
    }
  }

  else if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    goto LABEL_74;
  }

  operator delete(v45[0]);
  if ((SHIBYTE(v48) & 0x80000000) == 0)
  {
LABEL_75:
    if ((SHIBYTE(v51) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_82;
  }

LABEL_81:
  operator delete(v47[0]);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_76:
    if ((SHIBYTE(v53) & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_83;
  }

LABEL_82:
  operator delete(v49);
  if ((SHIBYTE(v53) & 0x80000000) == 0)
  {
LABEL_77:
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
      return;
    }

LABEL_84:
    operator delete(v54);
    return;
  }

LABEL_83:
  operator delete(v52);
  if (SHIBYTE(v55) < 0)
  {
    goto LABEL_84;
  }
}

void sub_5AD1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (*(v46 - 145) < 0)
  {
    operator delete(*(v46 - 168));
    if ((*(v46 - 121) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v46 - 121) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(v46 - 89) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  operator delete(*(v46 - 144));
  if (*(v46 - 89) < 0)
  {
LABEL_8:
    operator delete(*(v46 - 112));
    _Unwind_Resume(a1);
  }

LABEL_11:
  _Unwind_Resume(a1);
}

void sub_5AD2BC()
{
  if (*(v0 - 121) < 0)
  {
    JUMPOUT(0x5AD2A4);
  }

  JUMPOUT(0x5AD284);
}

void sub_5AD2CC(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (*(a1 + 4240) == 11 && *(a1 + 4272) == 11)
  {
    if (*(a1 + 4799) == 1)
    {
      if (*(a1 + 3264))
      {
LABEL_5:
        v6 = "";
        v7 = 1;
        goto LABEL_8;
      }
    }

    else if (*(a1 + 3265))
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
  v6 = "_Old";
LABEL_8:
  v8 = "_EV_Infeasible";
  if (a3)
  {
    v8 = "_EV_Last_Chance";
  }

  v73 = *v8;
  v74 = *(v8 + 2);
  if (a2 ^ 1 | a3)
  {
    v9 = "_Add_Stop";
  }

  else
  {
    v9 = "_Add_Stops";
  }

  v71 = *v9;
  v72 = *(v9 + 2);
  if (a2)
  {
    v10 = "_Add_Stops";
  }

  else
  {
    v10 = "_Add_Stop";
  }

  v11 = *v10;
  v69 = *v10;
  v12 = *(v10 + 2);
  v70 = v12;
  v13 = &v70 + 7;
  if (v7)
  {
    v14 = &v69;
  }

  else
  {
    v14 = &v71;
  }

  if (!v7)
  {
    v13 = &v72 + 7;
  }

  if (*v13 < 0)
  {
    if (v7)
    {
      v15 = &v69;
    }

    else
    {
      v15 = &v71;
    }

    v52 = v11;
    sub_325C(&v67, *v14, *(v15 + 1));
    v11 = v52;
  }

  else
  {
    v67 = *v14;
    v68 = *(v14 + 2);
  }

  v65 = v11;
  v66 = v12;
  if (v74 >= 0)
  {
    v16 = HIBYTE(v74);
  }

  else
  {
    v16 = *(&v73 + 1);
  }

  if (v16 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v17 = *(a1 + 8);
  if (v16 + 10 >= 0x17)
  {
    operator new();
  }

  *&v62.__r_.__value_.__r.__words[1] = 0x6461uLL;
  *(&v62.__r_.__value_.__s + 23) = v16 + 10;
  v62.__r_.__value_.__r.__words[0] = 0x654872656E6E6142;
  if (v16)
  {
    if (v74 >= 0)
    {
      v18 = &v73;
    }

    else
    {
      v18 = v73;
    }

    memmove(&v62.__r_.__value_.__r.__words[1] + 2, v18, v16);
  }

  *(&v62.__r_.__value_.__r.__words[1] + v16 + 2) = 0;
  if (v68 >= 0)
  {
    v19 = &v67;
  }

  else
  {
    v19 = v67;
  }

  if (v68 >= 0)
  {
    v20 = HIBYTE(v68);
  }

  else
  {
    v20 = *(&v67 + 1);
  }

  v21 = std::string::append(&v62, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = strlen(v6);
  v24 = std::string::append(&v60, v6, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  *&v54 = *(&v24->__r_.__value_.__l + 2);
  *__p = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = sub_9274F4(v17, __p);
  if (*(v26 + 23) < 0)
  {
    sub_325C(v63, *v26, v26[1]);
  }

  else
  {
    v27 = *v26;
    v64 = v26[2];
    *v63 = v27;
  }

  if ((SBYTE7(v54) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_70:
    operator delete(v60.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_71;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_70;
  }

LABEL_49:
  if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_71:
  operator delete(v62.__r_.__value_.__l.__data_);
LABEL_50:
  if (v74 >= 0)
  {
    v28 = HIBYTE(v74);
  }

  else
  {
    v28 = *(&v73 + 1);
  }

  if (v28 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v29 = *(a1 + 8);
  if (v28 + 10 >= 0x17)
  {
    operator new();
  }

  *&v61.__r_.__value_.__r.__words[1] = 0x7964uLL;
  *(&v61.__r_.__value_.__s + 23) = v28 + 10;
  v61.__r_.__value_.__r.__words[0] = 0x6F4272656E6E6142;
  if (v28)
  {
    if (v74 >= 0)
    {
      v30 = &v73;
    }

    else
    {
      v30 = v73;
    }

    memmove(&v61.__r_.__value_.__r.__words[1] + 2, v30, v28);
  }

  *(&v61.__r_.__value_.__r.__words[1] + v28 + 2) = 0;
  if (v68 >= 0)
  {
    v31 = &v67;
  }

  else
  {
    v31 = v67;
  }

  if (v68 >= 0)
  {
    v32 = HIBYTE(v68);
  }

  else
  {
    v32 = *(&v67 + 1);
  }

  v33 = std::string::append(&v61, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = strlen(v6);
  v36 = std::string::append(&v60, v6, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  *&v54 = *(&v36->__r_.__value_.__l + 2);
  *__p = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  v38 = sub_9274F4(v29, __p);
  if (*(v38 + 23) < 0)
  {
    sub_325C(&v62, *v38, v38[1]);
  }

  else
  {
    v39 = *v38;
    v62.__r_.__value_.__r.__words[2] = v38[2];
    *&v62.__r_.__value_.__l.__data_ = v39;
  }

  if ((SBYTE7(v54) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_110:
    operator delete(v60.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_111;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_110;
  }

LABEL_75:
  if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_76;
  }

LABEL_111:
  operator delete(v61.__r_.__value_.__l.__data_);
LABEL_76:
  if (v74 >= 0)
  {
    v40 = HIBYTE(v74);
  }

  else
  {
    v40 = *(&v73 + 1);
  }

  if (v40 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v40 + 10 >= 0x17)
  {
    operator new();
  }

  *&v56.__r_.__value_.__r.__words[1] = 0x7472uLL;
  *(&v56.__r_.__value_.__s + 23) = v40 + 10;
  v56.__r_.__value_.__r.__words[0] = 0x656C416563696F56;
  if (v40)
  {
    if (v74 >= 0)
    {
      v41 = &v73;
    }

    else
    {
      v41 = v73;
    }

    memmove(&v56.__r_.__value_.__r.__words[1] + 2, v41, v40);
  }

  *(&v56.__r_.__value_.__r.__words[1] + v40 + 2) = 0;
  if (v66 >= 0)
  {
    v42 = &v65;
  }

  else
  {
    v42 = v65;
  }

  if (v66 >= 0)
  {
    v43 = HIBYTE(v66);
  }

  else
  {
    v43 = *(&v65 + 1);
  }

  v44 = std::string::append(&v56, v42, v43);
  v45 = *&v44->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  v46 = strlen(v6);
  v47 = std::string::append(&v57, v6, v46);
  v48 = *&v47->__r_.__value_.__l.__data_;
  v59 = v47->__r_.__value_.__r.__words[2];
  *v58 = v48;
  v47->__r_.__value_.__l.__size_ = 0;
  v47->__r_.__value_.__r.__words[2] = 0;
  v47->__r_.__value_.__r.__words[0] = 0;
  *__p = 0u;
  v54 = 0u;
  v55 = 1065353216;
  sub_65F810(a1 + 24, v58, __p, *(a1 + 3261), &v60);
  v61 = v60;
  memset(&v60, 0, sizeof(v60));
  v49 = v54;
  if (v54)
  {
    do
    {
      v50 = *v49;
      sub_55F7FC((v49 + 2));
      operator delete(v49);
      v49 = v50;
    }

    while (v50);
  }

  v51 = __p[0];
  __p[0] = 0;
  if (v51)
  {
    operator delete(v51);
  }

  if ((SHIBYTE(v59) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

LABEL_113:
    operator delete(v57.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_114;
  }

  operator delete(v58[0]);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_113;
  }

LABEL_99:
  if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

LABEL_114:
  operator delete(v56.__r_.__value_.__l.__data_);
LABEL_100:
  sub_5CB7CC(a4, v63, &v62, &v61);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_102:
      if ((SHIBYTE(v64) & 0x80000000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_117;
    }
  }

  else if ((SHIBYTE(v62.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_102;
  }

  operator delete(v62.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v64) & 0x80000000) == 0)
  {
LABEL_103:
    if ((SHIBYTE(v66) & 0x80000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_118;
  }

LABEL_117:
  operator delete(v63[0]);
  if ((SHIBYTE(v66) & 0x80000000) == 0)
  {
LABEL_104:
    if ((SHIBYTE(v68) & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_119;
  }

LABEL_118:
  operator delete(v65);
  if ((SHIBYTE(v68) & 0x80000000) == 0)
  {
LABEL_105:
    if ((SHIBYTE(v70) & 0x80000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_120;
  }

LABEL_119:
  operator delete(v67);
  if ((SHIBYTE(v70) & 0x80000000) == 0)
  {
LABEL_106:
    if ((SHIBYTE(v72) & 0x80000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_121;
  }

LABEL_120:
  operator delete(v69);
  if ((SHIBYTE(v72) & 0x80000000) == 0)
  {
LABEL_107:
    if ((SHIBYTE(v74) & 0x80000000) == 0)
    {
      return;
    }

LABEL_122:
    operator delete(v73);
    return;
  }

LABEL_121:
  operator delete(v71);
  if (SHIBYTE(v74) < 0)
  {
    goto LABEL_122;
  }
}

void sub_5ADA68(_Unwind_Exception *a1)
{
  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
    if ((*(v1 - 121) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 - 121) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 - 144));
  if ((*(v1 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v1 - 112));
  _Unwind_Resume(a1);
}

void sub_5ADC88(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = "_EV_Infeasible";
  if (a3)
  {
    v5 = "_EV_Last_Chance";
  }

  v6 = *(v5 + 2);
  v52 = v6;
  v51 = *v5;
  if (v6 >= 0)
  {
    v7 = HIBYTE(v6);
  }

  else
  {
    v7 = *(&v51 + 1);
  }

  if (v7 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v30 = a4;
  if (v7 + 13 >= 0x17)
  {
    operator new();
  }

  v49 = 0;
  v50 = 0;
  v48 = 0;
  HIBYTE(v50) = v7 + 13;
  if (v7)
  {
    if (v6 >= 0)
    {
      v10 = &v51;
    }

    else
    {
      v10 = v51;
    }

    memmove(&v48, v10, v7);
  }

  strcpy(&v48 + v7, "_Change_Route");
  v11 = SHIBYTE(v50);
  if (v50 >= 0)
  {
    v12 = HIBYTE(v50);
  }

  else
  {
    v12 = v49;
  }

  if (a2)
  {
    v13 = "_Add_Stops";
  }

  else
  {
    v13 = "_Add_Stop";
  }

  if (a2)
  {
    v14 = 10;
  }

  else
  {
    v14 = 9;
  }

  if (v12 + v14 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v12 + v14 > 0x16)
  {
    operator new();
  }

  v46 = 0;
  v47 = 0;
  v45 = 0;
  HIBYTE(v47) = v12 + v14;
  if (v12)
  {
    if (v50 >= 0)
    {
      v15 = &v48;
    }

    else
    {
      v15 = v48;
    }

    memmove(&v45, v15, v12);
  }

  memcpy(&v45 + v12, v13, v14);
  v16 = 9;
  if (a2)
  {
    v16 = 10;
  }

  *(&v45 + v12 + v16) = 0;
  if (v12 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v17 = *(a1 + 8);
  if (v12 + 10 >= 0x17)
  {
    operator new();
  }

  __p[1] = &loc_6460 + 1;
  *&v32 = 0;
  BYTE7(v32) = v12 + 10;
  __p[0] = 0x654872656E6E6142;
  if (v12)
  {
    if (v11 >= 0)
    {
      v18 = &v48;
    }

    else
    {
      v18 = v48;
    }

    memmove(&__p[1] + 2, v18, v12);
  }

  *(&__p[1] + v12 + 2) = 0;
  v19 = sub_9274F4(v17, __p);
  if (*(v19 + 23) < 0)
  {
    sub_325C(v43, *v19, v19[1]);
  }

  else
  {
    v20 = *v19;
    v44 = v19[2];
    *v43 = v20;
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  v21 = *(a1 + 8);
  __p[1] = &loc_7960 + 4;
  *&v32 = 0;
  BYTE7(v32) = v12 + 10;
  __p[0] = 0x6F4272656E6E6142;
  if (v12)
  {
    if (v11 >= 0)
    {
      v22 = &v48;
    }

    else
    {
      v22 = v48;
    }

    memmove(&__p[1] + 2, v22, v12);
  }

  *(&__p[1] + v12 + 2) = 0;
  v23 = sub_9274F4(v21, __p);
  if (*(v23 + 23) < 0)
  {
    sub_325C(v41, *v23, v23[1]);
  }

  else
  {
    v24 = *v23;
    v42 = v23[2];
    *v41 = v24;
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (v47 >= 0)
  {
    v25 = HIBYTE(v47);
  }

  else
  {
    v25 = v46;
  }

  if (v25 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v25 + 10 >= 0x17)
  {
    operator new();
  }

  v35 = 29810;
  v36 = 0;
  HIBYTE(v36) = v25 + 10;
  v34 = 0x656C416563696F56;
  if (v25)
  {
    if (v47 >= 0)
    {
      v26 = &v45;
    }

    else
    {
      v26 = v45;
    }

    memmove(&v35 + 2, v26, v25);
  }

  *(&v35 + v25 + 2) = 0;
  *__p = 0u;
  v32 = 0u;
  v33 = 1065353216;
  sub_65F810(a1 + 24, &v34, __p, *(a1 + 3261), &v37);
  *v39 = v37;
  v40 = v38;
  v38 = 0;
  v37 = 0uLL;
  v27 = v32;
  if (v32)
  {
    do
    {
      v28 = *v27;
      sub_55F7FC((v27 + 2));
      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  v29 = __p[0];
  __p[0] = 0;
  if (v29)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v34);
  }

  sub_5CB7CC(v30, v43, v41, v39);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
LABEL_75:
      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_82;
    }
  }

  else if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(v41[0]);
  if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
LABEL_76:
    if ((SHIBYTE(v47) & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_83;
  }

LABEL_82:
  operator delete(v43[0]);
  if ((SHIBYTE(v47) & 0x80000000) == 0)
  {
LABEL_77:
    if ((SHIBYTE(v50) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_84;
  }

LABEL_83:
  operator delete(v45);
  if ((SHIBYTE(v50) & 0x80000000) == 0)
  {
LABEL_78:
    if ((SHIBYTE(v52) & 0x80000000) == 0)
    {
      return;
    }

LABEL_85:
    operator delete(v51);
    return;
  }

LABEL_84:
  operator delete(v48);
  if (SHIBYTE(v52) < 0)
  {
    goto LABEL_85;
  }
}

void sub_5AE294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (*(v48 - 137) < 0)
  {
    operator delete(*(v48 - 160));
    if ((*(v48 - 113) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(v48 - 89) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if ((*(v48 - 113) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v48 - 136));
  if ((*(v48 - 89) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v48 - 112));
  _Unwind_Resume(exception_object);
}

void sub_5AE394(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  sub_64B998(v67);
  sub_64B998(v68);
  if (byte_279578F >= 0)
  {
    v6 = byte_279578F;
  }

  else
  {
    v6 = *(&xmmword_2795778 + 1);
  }

  if (v6 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v7 = *(a1 + 8);
  if (v6 + 10 >= 0x17)
  {
    operator new();
  }

  __p[1] = &loc_6460 + 1;
  *&v55 = 0;
  BYTE7(v55) = v6 + 10;
  __p[0] = 0x654872656E6E6142;
  if (v6)
  {
    if (byte_279578F >= 0)
    {
      v8 = &xmmword_2795778;
    }

    else
    {
      v8 = xmmword_2795778;
    }

    memmove(&__p[1] + 2, v8, v6);
  }

  *(&__p[1] + v6 + 2) = 0;
  v9 = sub_9274F4(v7, __p);
  if (*(v9 + 23) < 0)
  {
    sub_325C(&v62, *v9, v9[1]);
  }

  else
  {
    v10 = *v9;
    v63 = v9[2];
    v62 = v10;
  }

  if (SBYTE7(v55) < 0)
  {
    operator delete(__p[0]);
  }

  if (byte_279578F >= 0)
  {
    v11 = byte_279578F;
  }

  else
  {
    v11 = *(&xmmword_2795778 + 1);
  }

  if (v11 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v12 = *(a1 + 8);
  if (v11 + 10 >= 0x17)
  {
    operator new();
  }

  __p[1] = &loc_7960 + 4;
  *&v55 = 0;
  BYTE7(v55) = v11 + 10;
  __p[0] = 0x6F4272656E6E6142;
  if (v11)
  {
    if (byte_279578F >= 0)
    {
      v13 = &xmmword_2795778;
    }

    else
    {
      v13 = xmmword_2795778;
    }

    memmove(&__p[1] + 2, v13, v11);
  }

  *(&__p[1] + v11 + 2) = 0;
  v14 = sub_9274F4(v12, __p);
  if (*(v14 + 23) < 0)
  {
    sub_325C(&v60, *v14, v14[1]);
  }

  else
  {
    v15 = *v14;
    v61 = v14[2];
    v60 = v15;
  }

  if (SBYTE7(v55) < 0)
  {
    operator delete(__p[0]);
  }

  if (byte_279578F >= 0)
  {
    v16 = byte_279578F;
  }

  else
  {
    v16 = *(&xmmword_2795778 + 1);
  }

  if (v16 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v16 + 10 >= 0x17)
  {
    operator new();
  }

  v44 = 29810;
  v45 = 0;
  HIBYTE(v45) = v16 + 10;
  v43 = 0x656C416563696F56;
  if (v16)
  {
    if (byte_279578F >= 0)
    {
      v17 = &xmmword_2795778;
    }

    else
    {
      v17 = xmmword_2795778;
    }

    memmove(&v44 + 2, v17, v16);
  }

  *(&v44 + v16 + 2) = 0;
  *__p = 0u;
  v55 = 0u;
  LODWORD(v56) = 1065353216;
  sub_65F810(a1 + 24, &v43, __p, *(a1 + 3261), &v49);
  v58 = v49;
  v59 = v50;
  v50 = 0;
  v49 = 0uLL;
  v18 = v55;
  if (v55)
  {
    do
    {
      v19 = *v18;
      sub_55F7FC((v18 + 2));
      operator delete(v18);
      v18 = v19;
    }

    while (v19);
  }

  v20 = __p[0];
  __p[0] = 0;
  if (v20)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v43);
  }

  sub_64BC20(__p, &v62);
  v21 = sub_68C454(a2, 0);
  sub_69AC34(v21, &v49);
  v22 = sub_4470E4(&v49);
  LOBYTE(v43) = 12;
  sub_64AEE4(&v49, v22);
  v23 = v56;
  if (v56 >= v57)
  {
    v24 = sub_5C3E64(&v55 + 1, "{NewBatteryPercentage}", &v43, &v49);
  }

  else
  {
    sub_64A2CC(v56, "{NewBatteryPercentage}", v43, &v49);
    v24 = v23 + 144;
  }

  v56 = v24;
  sub_64BC20(&v49, &v60);
  v25 = sub_68C454(a3, 0);
  sub_69AC34(v25, &v43);
  v26 = sub_4470E4(&v43);
  LOBYTE(v41) = 12;
  sub_64AEE4(&v43, v26);
  v27 = v52;
  if (v52 >= v53)
  {
    v28 = sub_5C3E64(&v51, &qword_2795028, &v41, &v43);
  }

  else
  {
    sub_64A2CC(v52, &qword_2795028, SLOBYTE(v41), &v43);
    v28 = v27 + 144;
  }

  v52 = v28;
  sub_64BC20(&v43, &v58);
  v42 = 12;
  sub_64AEE4(&v41, v26);
  v29 = v47;
  if (v47 >= v48)
  {
    v30 = sub_5C3E64(&v46, &qword_2795028, &v42, &v41);
  }

  else
  {
    sub_64A2CC(v47, &qword_2795028, v42, &v41);
    v30 = v29 + 144;
  }

  v47 = v30;
  v42 = 12;
  sub_64AEE4(&v41, v22);
  v31 = v47;
  if (v47 >= v48)
  {
    v32 = sub_5C3E64(&v46, "{NewBatteryPercentage}", &v42, &v41);
  }

  else
  {
    sub_64A2CC(v47, "{NewBatteryPercentage}", v42, &v41);
    v32 = v31 + 144;
  }

  v47 = v32;
  sub_5CB500(a4, __p, &v49, &v43);
  sub_53A868(&v43);
  sub_53A868(&v49);
  sub_53A868(__p);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
    if ((SHIBYTE(v61) & 0x80000000) == 0)
    {
LABEL_64:
      if ((SHIBYTE(v63) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_73;
    }
  }

  else if ((SHIBYTE(v61) & 0x80000000) == 0)
  {
    goto LABEL_64;
  }

  operator delete(v60);
  if ((SHIBYTE(v63) & 0x80000000) == 0)
  {
LABEL_65:
    sub_53A868(v68);
    sub_53A868(v67);
    v33 = *(&v65 + 1);
    if (*(&v65 + 1))
    {
      goto LABEL_66;
    }

LABEL_74:
    v36 = v64;
    if (!v64)
    {
      return;
    }

    goto LABEL_75;
  }

LABEL_73:
  operator delete(v62);
  sub_53A868(v68);
  sub_53A868(v67);
  v33 = *(&v65 + 1);
  if (!*(&v65 + 1))
  {
    goto LABEL_74;
  }

LABEL_66:
  v34 = v66;
  v35 = v33;
  if (v66 != v33)
  {
    do
    {
      v34 = sub_53A868(v34 - 160);
    }

    while (v34 != v33);
    v35 = *(&v65 + 1);
  }

  *&v66 = v33;
  operator delete(v35);
  v36 = v64;
  if (v64)
  {
LABEL_75:
    v37 = *(&v64 + 1);
    v38 = v36;
    if (*(&v64 + 1) != v36)
    {
      do
      {
        v37 = sub_53A868(v37 - 160);
      }

      while (v37 != v36);
      v38 = v64;
    }

    *(&v64 + 1) = v36;
    operator delete(v38);
  }
}

void sub_5AEAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  sub_53A868(&a13);
  sub_53A868(&a33);
  sub_53A868(&a53);
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  sub_5A0410(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void sub_5AEBF8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (byte_27957A7 >= 0)
  {
    v3 = byte_27957A7;
  }

  else
  {
    v3 = qword_2795798;
  }

  if (v3 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v6 = *(a1 + 8);
  if (v3 + 10 >= 0x17)
  {
    operator new();
  }

  __p[1] = &loc_6460 + 1;
  *&v38 = 0;
  BYTE7(v38) = v3 + 10;
  __p[0] = 0x654872656E6E6142;
  if (v3)
  {
    if (byte_27957A7 >= 0)
    {
      v7 = &qword_2795790;
    }

    else
    {
      v7 = qword_2795790;
    }

    memmove(&__p[1] + 2, v7, v3);
  }

  *(&__p[1] + v3 + 2) = 0;
  v8 = sub_9274F4(v6, __p);
  if (*(v8 + 23) < 0)
  {
    sub_325C(&v45, *v8, v8[1]);
  }

  else
  {
    v9 = *v8;
    v46 = v8[2];
    v45 = v9;
  }

  if (SBYTE7(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (byte_27957A7 >= 0)
  {
    v10 = byte_27957A7;
  }

  else
  {
    v10 = qword_2795798;
  }

  if (v10 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v11 = *(a1 + 8);
  if (v10 + 10 >= 0x17)
  {
    operator new();
  }

  __p[1] = &loc_7960 + 4;
  *&v38 = 0;
  BYTE7(v38) = v10 + 10;
  __p[0] = 0x6F4272656E6E6142;
  if (v10)
  {
    if (byte_27957A7 >= 0)
    {
      v12 = &qword_2795790;
    }

    else
    {
      v12 = qword_2795790;
    }

    memmove(&__p[1] + 2, v12, v10);
  }

  *(&__p[1] + v10 + 2) = 0;
  v13 = sub_9274F4(v11, __p);
  if (*(v13 + 23) < 0)
  {
    sub_325C(&v43, *v13, v13[1]);
  }

  else
  {
    v14 = *v13;
    v44 = v13[2];
    v43 = v14;
  }

  if (SBYTE7(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (byte_27957A7 >= 0)
  {
    v15 = byte_27957A7;
  }

  else
  {
    v15 = qword_2795798;
  }

  if (v15 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v15 + 10 >= 0x17)
  {
    operator new();
  }

  v30 = 29810;
  v31 = 0;
  HIBYTE(v31) = v15 + 10;
  v29 = 0x656C416563696F56;
  if (v15)
  {
    if (byte_27957A7 >= 0)
    {
      v16 = &qword_2795790;
    }

    else
    {
      v16 = qword_2795790;
    }

    memmove(&v30 + 2, v16, v15);
  }

  *(&v30 + v15 + 2) = 0;
  *__p = 0u;
  v38 = 0u;
  LODWORD(v39) = 1065353216;
  sub_65F810(a1 + 24, &v29, __p, *(a1 + 3261), &v35);
  v41 = v35;
  v42 = v36;
  v36 = 0;
  v35 = 0uLL;
  v17 = v38;
  if (v38)
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

  v19 = __p[0];
  __p[0] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v29);
  }

  sub_64BC20(__p, &v45);
  v20 = sub_68C454(a2, 0);
  sub_69AC34(v20, &v35);
  v21 = sub_4470E4(&v35);
  LOBYTE(v29) = 12;
  sub_64AEE4(&v35, v21);
  v22 = v39;
  if (v39 >= v40)
  {
    v23 = sub_5C3E64(&v38 + 1, "{NewBatteryPercentage}", &v29, &v35);
  }

  else
  {
    sub_64A2CC(v39, "{NewBatteryPercentage}", v29, &v35);
    v23 = v22 + 144;
  }

  v39 = v23;
  sub_64BC20(&v35, &v43);
  sub_64BC20(&v29, &v41);
  v28 = 12;
  sub_64AEE4(&v27, v21);
  v24 = v33;
  if (v33 >= v34)
  {
    v25 = sub_5C3E64(&v32, "{NewBatteryPercentage}", &v28, &v27);
  }

  else
  {
    sub_64A2CC(v33, "{NewBatteryPercentage}", 12, &v27);
    v25 = v24 + 144;
  }

  v33 = v25;
  sub_5CB500(a3, __p, &v35, &v29);
  sub_53A868(&v29);
  sub_53A868(&v35);
  sub_53A868(__p);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
LABEL_58:
      if ((SHIBYTE(v46) & 0x80000000) == 0)
      {
        return;
      }

LABEL_62:
      operator delete(v45);
      return;
    }
  }

  else if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  operator delete(v43);
  if (SHIBYTE(v46) < 0)
  {
    goto LABEL_62;
  }
}

void sub_5AF168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  sub_53A868(&a11);
  sub_53A868(&a31);
  sub_53A868(&a51);
  if (*(v51 - 185) < 0)
  {
    operator delete(*(v51 - 208));
  }

  if (*(v51 - 153) < 0)
  {
    operator delete(*(v51 - 176));
  }

  if (*(v51 - 121) < 0)
  {
    operator delete(*(v51 - 144));
  }

  _Unwind_Resume(a1);
}

void sub_5AF24C(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((byte_279578F & 0x80000000) == 0)
  {
    v51 = xmmword_2795778;
    v52 = unk_2795788;
LABEL_3:
    v49 = v51;
    v50 = v52;
    goto LABEL_6;
  }

  sub_325C(&v51, xmmword_2795778, *(&xmmword_2795778 + 1));
  if ((SHIBYTE(v52) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  sub_325C(&v49, v51, *(&v51 + 1));
LABEL_6:
  if (a4)
  {
    goto LABEL_43;
  }

  v10 = "_EV_Infeasible";
  if (a3)
  {
    v10 = "_EV_Last_Chance";
  }

  *&v36 = *(v10 + 2);
  *__p = *v10;
  v11 = SBYTE7(v36);
  if ((SBYTE7(v36) & 0x80u) == 0)
  {
    v12 = BYTE7(v36);
  }

  else
  {
    v12 = __p[1];
  }

  if (v12 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v12 + 13 >= 0x17)
  {
    operator new();
  }

  v42 = 0;
  v41 = 0uLL;
  HIBYTE(v42) = v12 + 13;
  if (v12)
  {
    if ((SBYTE7(v36) & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    memmove(&v41, v13, v12);
  }

  strcpy(&v41 + v12, "_Change_Route");
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  v52 = v42;
  v51 = v41;
  if (v42 >= 0)
  {
    v14 = HIBYTE(v52);
  }

  else
  {
    v14 = *(&v51 + 1);
  }

  if (a2)
  {
    v15 = "_Different_Stops";
  }

  else
  {
    v15 = "_Different_Stop";
  }

  if (a2)
  {
    v16 = 16;
  }

  else
  {
    v16 = 15;
  }

  if (v14 + v16 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v14 + v16 > 0x16)
  {
    operator new();
  }

  v42 = 0;
  v41 = 0uLL;
  HIBYTE(v42) = v14 + v16;
  if (v14)
  {
    if (v52 >= 0)
    {
      v17 = &v51;
    }

    else
    {
      v17 = v51;
    }

    memmove(&v41, v17, v14);
  }

  v18 = &v41 + v14;
  memcpy(v18, v15, v16);
  v19 = 15;
  if (a2)
  {
    v19 = 16;
  }

  v18[v19] = 0;
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
    v49 = v41;
    v50 = v42;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v49 = v41;
    v50 = v42;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }
  }

  operator delete(__p[0]);
LABEL_43:
  if (v52 >= 0)
  {
    v20 = HIBYTE(v52);
  }

  else
  {
    v20 = *(&v51 + 1);
  }

  if (v20 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v21 = *(a1 + 8);
  if (v20 + 10 >= 0x17)
  {
    operator new();
  }

  __p[1] = &loc_6460 + 1;
  *&v36 = 0;
  BYTE7(v36) = v20 + 10;
  __p[0] = 0x654872656E6E6142;
  if (v20)
  {
    if (v52 >= 0)
    {
      v22 = &v51;
    }

    else
    {
      v22 = v51;
    }

    memmove(&__p[1] + 2, v22, v20);
  }

  *(&__p[1] + v20 + 2) = 0;
  v23 = sub_9274F4(v21, __p);
  if (*(v23 + 23) < 0)
  {
    sub_325C(v47, *v23, v23[1]);
  }

  else
  {
    v24 = *v23;
    v48 = v23[2];
    *v47 = v24;
  }

  if (SBYTE7(v36) < 0)
  {
    operator delete(__p[0]);
  }

  if (v52 >= 0)
  {
    v25 = HIBYTE(v52);
  }

  else
  {
    v25 = *(&v51 + 1);
  }

  if (v25 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v26 = *(a1 + 8);
  if (v25 + 10 >= 0x17)
  {
    operator new();
  }

  __p[1] = &loc_7960 + 4;
  *&v36 = 0;
  BYTE7(v36) = v25 + 10;
  __p[0] = 0x6F4272656E6E6142;
  if (v25)
  {
    if (v52 >= 0)
    {
      v27 = &v51;
    }

    else
    {
      v27 = v51;
    }

    memmove(&__p[1] + 2, v27, v25);
  }

  *(&__p[1] + v25 + 2) = 0;
  v28 = sub_9274F4(v26, __p);
  if (*(v28 + 23) < 0)
  {
    sub_325C(v45, *v28, v28[1]);
  }

  else
  {
    v29 = *v28;
    v46 = v28[2];
    *v45 = v29;
  }

  if (SBYTE7(v36) < 0)
  {
    operator delete(__p[0]);
  }

  if (v50 >= 0)
  {
    v30 = HIBYTE(v50);
  }

  else
  {
    v30 = *(&v49 + 1);
  }

  if (v30 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v30 + 10 >= 0x17)
  {
    operator new();
  }

  v39 = 29810;
  v40 = 0;
  HIBYTE(v40) = v30 + 10;
  v38 = 0x656C416563696F56;
  if (v30)
  {
    if (v50 >= 0)
    {
      v31 = &v49;
    }

    else
    {
      v31 = v49;
    }

    memmove(&v39 + 2, v31, v30);
  }

  *(&v39 + v30 + 2) = 0;
  *__p = 0u;
  v36 = 0u;
  v37 = 1065353216;
  sub_65F810(a1 + 24, &v38, __p, *(a1 + 3261), &v41);
  *v43 = v41;
  v44 = v42;
  v42 = 0;
  v41 = 0uLL;
  v32 = v36;
  if (v36)
  {
    do
    {
      v33 = *v32;
      sub_55F7FC((v32 + 2));
      operator delete(v32);
      v32 = v33;
    }

    while (v33);
  }

  v34 = __p[0];
  __p[0] = 0;
  if (v34)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v38);
  }

  sub_5CB7CC(a5, v47, v45, v43);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
LABEL_94:
      if ((SHIBYTE(v48) & 0x80000000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_100;
    }
  }

  else if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    goto LABEL_94;
  }

  operator delete(v45[0]);
  if ((SHIBYTE(v48) & 0x80000000) == 0)
  {
LABEL_95:
    if ((SHIBYTE(v50) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_101;
  }

LABEL_100:
  operator delete(v47[0]);
  if ((SHIBYTE(v50) & 0x80000000) == 0)
  {
LABEL_96:
    if ((SHIBYTE(v52) & 0x80000000) == 0)
    {
      return;
    }

LABEL_102:
    operator delete(v51);
    return;
  }

LABEL_101:
  operator delete(v49);
  if (SHIBYTE(v52) < 0)
  {
    goto LABEL_102;
  }
}

void sub_5AF964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if ((*(v46 - 89) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v46 - 112));
  _Unwind_Resume(exception_object);
}

void sub_5AFEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  sub_540798(&a13);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v43 - 137) < 0)
  {
    operator delete(*(v43 - 160));
    if ((*(v43 - 113) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(v43 - 89) & 0x80000000) == 0)
      {
LABEL_12:
        if (*(v43 - 57) < 0)
        {
          operator delete(*(v43 - 80));
        }

        _Unwind_Resume(a1);
      }

LABEL_11:
      operator delete(*(v43 - 112));
      goto LABEL_12;
    }
  }

  else if ((*(v43 - 113) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(v43 - 136));
  if ((*(v43 - 89) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_5B0264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (*(v36 - 89) < 0)
  {
    operator delete(*(v36 - 112));
  }

  if (*(v36 - 57) < 0)
  {
    operator delete(*(v36 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_5B02F4()
{
  sub_64B998(&v0);
  sub_64B998(&v1);
  operator new();
}

void sub_5B0850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  sub_5A0410(&a64);
  _Unwind_Resume(a1);
}

void sub_5B0990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    JUMPOUT(0x5B096CLL);
  }

  JUMPOUT(0x5B0970);
}

void sub_5B09A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (byte_2795807 >= 0)
  {
    v3 = byte_2795807;
  }

  else
  {
    v3 = qword_27957F8;
  }

  if (v3 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v5 = *(a1 + 8);
  if (v3 + 10 >= 0x17)
  {
    operator new();
  }

  __p[1] = &loc_6460 + 1;
  *&v20 = 0;
  BYTE7(v20) = v3 + 10;
  __p[0] = 0x654872656E6E6142;
  if (v3)
  {
    if (byte_2795807 >= 0)
    {
      v6 = &qword_27957F0;
    }

    else
    {
      v6 = qword_27957F0;
    }

    memmove(&__p[1] + 2, v6, v3);
  }

  *(&__p[1] + v3 + 2) = 0;
  v7 = sub_9274F4(v5, __p);
  if (*(v7 + 23) < 0)
  {
    sub_325C(&v31, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    v32 = v7[2];
    v31 = v8;
  }

  if (SBYTE7(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (byte_2795807 >= 0)
  {
    v9 = byte_2795807;
  }

  else
  {
    v9 = qword_27957F8;
  }

  if (v9 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v10 = *(a1 + 8);
  if (v9 + 10 >= 0x17)
  {
    operator new();
  }

  __p[1] = &loc_7960 + 4;
  *&v20 = 0;
  BYTE7(v20) = v9 + 10;
  __p[0] = 0x6F4272656E6E6142;
  if (v9)
  {
    if (byte_2795807 >= 0)
    {
      v11 = &qword_27957F0;
    }

    else
    {
      v11 = qword_27957F0;
    }

    memmove(&__p[1] + 2, v11, v9);
  }

  *(&__p[1] + v9 + 2) = 0;
  v12 = sub_9274F4(v10, __p);
  if (*(v12 + 23) < 0)
  {
    sub_325C(v29, *v12, v12[1]);
  }

  else
  {
    v13 = *v12;
    v30 = v12[2];
    *v29 = v13;
  }

  if (SBYTE7(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (byte_2795807 >= 0)
  {
    v14 = byte_2795807;
  }

  else
  {
    v14 = qword_27957F8;
  }

  if (v14 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v14 + 10 >= 0x17)
  {
    operator new();
  }

  v23 = 29810;
  v24 = 0;
  HIBYTE(v24) = v14 + 10;
  v22 = 0x656C416563696F56;
  if (v14)
  {
    if (byte_2795807 >= 0)
    {
      v15 = &qword_27957F0;
    }

    else
    {
      v15 = qword_27957F0;
    }

    memmove(&v23 + 2, v15, v14);
  }

  *(&v23 + v14 + 2) = 0;
  *__p = 0u;
  v20 = 0u;
  v21 = 1065353216;
  sub_65F810(a1 + 24, &v22, __p, *(a1 + 3261), &v25);
  *v27 = v25;
  v28 = v26;
  v26 = 0;
  v25 = 0uLL;
  v16 = v20;
  if (v20)
  {
    do
    {
      v17 = *v16;
      sub_55F7FC((v16 + 2));
      operator delete(v16);
      v16 = v17;
    }

    while (v17);
  }

  v18 = __p[0];
  __p[0] = 0;
  if (v18)
  {
    operator delete(v18);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v22);
  }

  sub_5CB7CC(a2, &v31, v29, v27);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
LABEL_52:
      if ((SHIBYTE(v32) & 0x80000000) == 0)
      {
        return;
      }

LABEL_56:
      operator delete(v31);
      return;
    }
  }

  else if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

  operator delete(v29[0]);
  if (SHIBYTE(v32) < 0)
  {
    goto LABEL_56;
  }
}

void sub_5B0DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_5B123C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (*(v46 - 105) < 0)
  {
    operator delete(*(v46 - 128));
  }

  if (*(v46 - 73) < 0)
  {
    operator delete(*(v46 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_5B1314(void **a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_4535E8(a2, *a1, &v65);
  sub_4535E8(a3, *a1, &v63);
  HIBYTE(v62) = 0;
  LOBYTE(__dst) = 0;
  v7 = (v64 - v63) >> 3;
  v8 = (v66 - v65) >> 3;
  if (v66 == v65 || v64 == v63)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    v12 = v65;
    do
    {
      v13 = *v12++;
      if (v13 == v63->i64[v10])
      {
        ++v10;
      }

      if (v11 >= v8)
      {
        break;
      }

      ++v11;
    }

    while (v10 < v7);
  }

  if (v10 == v7)
  {
    v14 = v8 - v7;
    v15 = "_EV_Forced_Add_Stops";
    if (v14 == 1)
    {
      v15 = "_EV_Forced_Add_Stop";
    }

    goto LABEL_29;
  }

  v15 = &xmmword_27957C0;
  if (v66 != v65 && v66 - v65 == v64 - v63)
  {
    if (v8 >= 4)
    {
      v17 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v18 = v65 + 1;
      v19 = v63 + 1;
      v20 = 0uLL;
      v21 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = 0uLL;
      do
      {
        v20 = vsubq_s64(v20, vmvnq_s8(vceqq_s64(v18[-1], v19[-1])));
        v22 = vsubq_s64(v22, vmvnq_s8(vceqq_s64(*v18, *v19)));
        v18 += 2;
        v19 += 2;
        v21 -= 4;
      }

      while (v21);
      v16 = vaddvq_s64(vaddq_s64(v22, v20));
      if (v8 == v17)
      {
LABEL_26:
        if (v16 == 1)
        {
          v15 = "_EV_Forced_Modify_Stop";
        }

        goto LABEL_28;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v23 = v8 - v17;
    v24 = v17;
    v25 = &v63->i64[v24];
    v26 = &v65->i8[v24 * 8];
    do
    {
      v28 = *v26;
      v26 += 8;
      v27 = v28;
      v29 = *v25++;
      if (v27 != v29)
      {
        ++v16;
      }

      --v23;
    }

    while (v23);
    goto LABEL_26;
  }

LABEL_28:
  if ((v15[23] & 0x80000000) == 0)
  {
LABEL_29:
    v30 = *v15;
    v62 = *(v15 + 2);
    __dst = v30;
    goto LABEL_30;
  }

  sub_13A68(&__dst, *v15, *(v15 + 1));
LABEL_30:
  if (v62 >= 0)
  {
    v31 = HIBYTE(v62);
  }

  else
  {
    v31 = *(&__dst + 1);
  }

  if (v31 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v32 = a1[1];
  if (v31 + 10 >= 0x17)
  {
    operator new();
  }

  __p[1] = &loc_6460 + 1;
  *&v48 = 0;
  BYTE7(v48) = v31 + 10;
  __p[0] = 0x654872656E6E6142;
  if (v31)
  {
    if (v62 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    memmove(&__p[1] + 2, p_dst, v31);
  }

  *(&__p[1] + v31 + 2) = 0;
  v34 = sub_9274F4(v32, __p);
  if (*(v34 + 23) < 0)
  {
    sub_325C(v59, *v34, v34[1]);
  }

  else
  {
    v35 = *v34;
    v60 = v34[2];
    *v59 = v35;
  }

  if (SBYTE7(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (v62 >= 0)
  {
    v36 = HIBYTE(v62);
  }

  else
  {
    v36 = *(&__dst + 1);
  }

  if (v36 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v37 = a1[1];
  if (v36 + 10 >= 0x17)
  {
    operator new();
  }

  __p[1] = &loc_7960 + 4;
  *&v48 = 0;
  BYTE7(v48) = v36 + 10;
  __p[0] = 0x6F4272656E6E6142;
  if (v36)
  {
    if (v62 >= 0)
    {
      v38 = &__dst;
    }

    else
    {
      v38 = __dst;
    }

    memmove(&__p[1] + 2, v38, v36);
  }

  *(&__p[1] + v36 + 2) = 0;
  v39 = sub_9274F4(v37, __p);
  if (*(v39 + 23) < 0)
  {
    sub_325C(v57, *v39, v39[1]);
  }

  else
  {
    v40 = *v39;
    v58 = v39[2];
    *v57 = v40;
  }

  if (SBYTE7(v48) < 0)
  {
    operator delete(__p[0]);
  }

  if (v62 >= 0)
  {
    v41 = HIBYTE(v62);
  }

  else
  {
    v41 = *(&__dst + 1);
  }

  if (v41 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v41 + 10 >= 0x17)
  {
    operator new();
  }

  v51 = 29810;
  v52 = 0;
  HIBYTE(v52) = v41 + 10;
  v50 = 0x656C416563696F56;
  if (v41)
  {
    if (v62 >= 0)
    {
      v42 = &__dst;
    }

    else
    {
      v42 = __dst;
    }

    memmove(&v51 + 2, v42, v41);
  }

  *(&v51 + v41 + 2) = 0;
  *__p = 0u;
  v48 = 0u;
  v49 = 1065353216;
  sub_65F810((a1 + 3), &v50, __p, *(a1 + 3261), &v53);
  *v55 = v53;
  v56 = v54;
  v54 = 0;
  v53 = 0uLL;
  v43 = v48;
  if (v48)
  {
    do
    {
      v44 = *v43;
      sub_55F7FC((v43 + 2));
      operator delete(v43);
      v43 = v44;
    }

    while (v44);
  }

  v45 = __p[0];
  __p[0] = 0;
  if (v45)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v50);
  }

  sub_5CB7CC(a4, v59, v57, v55);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55[0]);
    if ((SHIBYTE(v58) & 0x80000000) == 0)
    {
LABEL_81:
      if ((SHIBYTE(v60) & 0x80000000) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_90;
    }
  }

  else if ((SHIBYTE(v58) & 0x80000000) == 0)
  {
    goto LABEL_81;
  }

  operator delete(v57[0]);
  if ((SHIBYTE(v60) & 0x80000000) == 0)
  {
LABEL_82:
    if ((SHIBYTE(v62) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_91;
  }

LABEL_90:
  operator delete(v59[0]);
  if ((SHIBYTE(v62) & 0x80000000) == 0)
  {
LABEL_83:
    v46 = v63;
    if (!v63)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

LABEL_91:
  operator delete(__dst);
  v46 = v63;
  if (v63)
  {
LABEL_84:
    v64 = v46;
    operator delete(v46);
  }

LABEL_85:
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }
}

void sub_5B191C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 - 121) < 0)
  {
    operator delete(*(v46 - 144));
    v48 = *(v46 - 112);
    if (v48)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v48 = *(v46 - 112);
    if (v48)
    {
LABEL_3:
      *(v46 - 104) = v48;
      operator delete(v48);
      v49 = *(v46 - 88);
      if (v49)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  v49 = *(v46 - 88);
  if (v49)
  {
LABEL_4:
    *(v46 - 80) = v49;
    operator delete(v49);
    _Unwind_Resume(a1);
  }

LABEL_7:
  _Unwind_Resume(a1);
}

void sub_5B1A10(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 4240) == 11 && *(a1 + 4272) == 11)
  {
    if (*(a1 + 4799) == 1)
    {
      if (*(a1 + 3264))
      {
LABEL_5:
        v3 = "";
        goto LABEL_8;
      }
    }

    else if (*(a1 + 3265))
    {
      goto LABEL_5;
    }
  }

  v3 = "_Old";
LABEL_8:
  if (byte_27957EF >= 0)
  {
    v4 = byte_27957EF;
  }

  else
  {
    v4 = qword_27957E0;
  }

  if (v4 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v5 = *(a1 + 8);
  if (v4 + 10 >= 0x17)
  {
    operator new();
  }

  *&v35.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v35.__r_.__value_.__s + 23) = v4 + 10;
  qmemcpy(&v35, "BannerHead", 10);
  if (v4)
  {
    if (byte_27957EF >= 0)
    {
      v6 = &qword_27957D8;
    }

    else
    {
      v6 = qword_27957D8;
    }

    memmove(&v35.__r_.__value_.__r.__words[1] + 2, v6, v4);
  }

  *(&v35.__r_.__value_.__r.__words[1] + v4 + 2) = 0;
  v7 = strlen(v3);
  v8 = std::string::append(&v35, v3, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  *&v30 = *(&v8->__r_.__value_.__l + 2);
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = sub_9274F4(v5, __p);
  if (*(v10 + 23) < 0)
  {
    sub_325C(&v39, *v10, v10[1]);
  }

  else
  {
    v11 = *v10;
    v40 = v10[2];
    v39 = v11;
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_24:
  if (byte_27957EF >= 0)
  {
    v12 = byte_27957EF;
  }

  else
  {
    v12 = qword_27957E0;
  }

  if (v12 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v13 = *(a1 + 8);
  if (v12 + 10 >= 0x17)
  {
    operator new();
  }

  *&v35.__r_.__value_.__r.__words[1] = 0x7964uLL;
  *(&v35.__r_.__value_.__s + 23) = v12 + 10;
  v35.__r_.__value_.__r.__words[0] = 0x6F4272656E6E6142;
  if (v12)
  {
    if (byte_27957EF >= 0)
    {
      v14 = &qword_27957D8;
    }

    else
    {
      v14 = qword_27957D8;
    }

    memmove(&v35.__r_.__value_.__r.__words[1] + 2, v14, v12);
  }

  *(&v35.__r_.__value_.__r.__words[1] + v12 + 2) = 0;
  v15 = strlen(v3);
  v16 = std::string::append(&v35, v3, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  *&v30 = *(&v16->__r_.__value_.__l + 2);
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = sub_9274F4(v13, __p);
  if (*(v18 + 23) < 0)
  {
    sub_325C(&v37, *v18, v18[1]);
  }

  else
  {
    v19 = *v18;
    v38 = v18[2];
    v37 = v19;
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_42:
  if (byte_27957EF >= 0)
  {
    v20 = byte_27957EF;
  }

  else
  {
    v20 = qword_27957E0;
  }

  if (v20 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v20 + 10 >= 0x17)
  {
    operator new();
  }

  *&v32.__r_.__value_.__r.__words[1] = 0x7472uLL;
  *(&v32.__r_.__value_.__s + 23) = v20 + 10;
  v32.__r_.__value_.__r.__words[0] = 0x656C416563696F56;
  if (v20)
  {
    if (byte_27957EF >= 0)
    {
      v21 = &qword_27957D8;
    }

    else
    {
      v21 = qword_27957D8;
    }

    memmove(&v32.__r_.__value_.__r.__words[1] + 2, v21, v20);
  }

  *(&v32.__r_.__value_.__r.__words[1] + v20 + 2) = 0;
  v22 = strlen(v3);
  v23 = std::string::append(&v32, v3, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v34 = v23->__r_.__value_.__r.__words[2];
  *v33 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  *__p = 0u;
  v30 = 0u;
  v31 = 1065353216;
  sub_65F810(a1 + 24, v33, __p, *(a1 + 3261), &v35);
  v36 = v35;
  memset(&v35, 0, sizeof(v35));
  v25 = v30;
  if (v30)
  {
    do
    {
      v26 = *v25;
      sub_55F7FC((v25 + 2));
      operator delete(v25);
      v25 = v26;
    }

    while (v26);
  }

  v27 = __p[0];
  __p[0] = 0;
  if (v27)
  {
    operator delete(v27);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }
  }

  else if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
LABEL_59:
  sub_5CB7CC(a2, &v39, &v37, &v36);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
LABEL_61:
      if ((SHIBYTE(v40) & 0x80000000) == 0)
      {
        return;
      }

LABEL_69:
      operator delete(v39);
      return;
    }
  }

  else if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_61;
  }

  operator delete(v37);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_69;
  }
}

void sub_5B1F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_5B2058(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 4799) == 1)
  {
    if (*(a1 + 3264))
    {
LABEL_3:
      v3 = "";
      goto LABEL_6;
    }
  }

  else if (*(a1 + 3265))
  {
    goto LABEL_3;
  }

  v3 = "_Old";
LABEL_6:
  if (byte_279581F >= 0)
  {
    v4 = byte_279581F;
  }

  else
  {
    v4 = qword_2795810;
  }

  if (v4 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v5 = *(a1 + 8);
  if (v4 + 10 >= 0x17)
  {
    operator new();
  }

  *&v35.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v35.__r_.__value_.__s + 23) = v4 + 10;
  qmemcpy(&v35, "BannerHead", 10);
  if (v4)
  {
    if (byte_279581F >= 0)
    {
      v6 = &qword_2795808;
    }

    else
    {
      v6 = qword_2795808;
    }

    memmove(&v35.__r_.__value_.__r.__words[1] + 2, v6, v4);
  }

  *(&v35.__r_.__value_.__r.__words[1] + v4 + 2) = 0;
  v7 = strlen(v3);
  v8 = std::string::append(&v35, v3, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  *&v30 = *(&v8->__r_.__value_.__l + 2);
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = sub_9274F4(v5, __p);
  if (*(v10 + 23) < 0)
  {
    sub_325C(&v39, *v10, v10[1]);
  }

  else
  {
    v11 = *v10;
    v40 = v10[2];
    v39 = v11;
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_22:
  if (byte_279581F >= 0)
  {
    v12 = byte_279581F;
  }

  else
  {
    v12 = qword_2795810;
  }

  if (v12 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v13 = *(a1 + 8);
  if (v12 + 10 >= 0x17)
  {
    operator new();
  }

  *&v35.__r_.__value_.__r.__words[1] = 0x7964uLL;
  *(&v35.__r_.__value_.__s + 23) = v12 + 10;
  v35.__r_.__value_.__r.__words[0] = 0x6F4272656E6E6142;
  if (v12)
  {
    if (byte_279581F >= 0)
    {
      v14 = &qword_2795808;
    }

    else
    {
      v14 = qword_2795808;
    }

    memmove(&v35.__r_.__value_.__r.__words[1] + 2, v14, v12);
  }

  *(&v35.__r_.__value_.__r.__words[1] + v12 + 2) = 0;
  v15 = strlen(v3);
  v16 = std::string::append(&v35, v3, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  *&v30 = *(&v16->__r_.__value_.__l + 2);
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = sub_9274F4(v13, __p);
  if (*(v18 + 23) < 0)
  {
    sub_325C(&v37, *v18, v18[1]);
  }

  else
  {
    v19 = *v18;
    v38 = v18[2];
    v37 = v19;
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_40:
  if (byte_279581F >= 0)
  {
    v20 = byte_279581F;
  }

  else
  {
    v20 = qword_2795810;
  }

  if (v20 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v20 + 10 >= 0x17)
  {
    operator new();
  }

  *&v32.__r_.__value_.__r.__words[1] = 0x7472uLL;
  *(&v32.__r_.__value_.__s + 23) = v20 + 10;
  v32.__r_.__value_.__r.__words[0] = 0x656C416563696F56;
  if (v20)
  {
    if (byte_279581F >= 0)
    {
      v21 = &qword_2795808;
    }

    else
    {
      v21 = qword_2795808;
    }

    memmove(&v32.__r_.__value_.__r.__words[1] + 2, v21, v20);
  }

  *(&v32.__r_.__value_.__r.__words[1] + v20 + 2) = 0;
  v22 = strlen(v3);
  v23 = std::string::append(&v32, v3, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v34 = v23->__r_.__value_.__r.__words[2];
  *v33 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  *__p = 0u;
  v30 = 0u;
  v31 = 1065353216;
  sub_65F810(a1 + 24, v33, __p, *(a1 + 3261), &v35);
  v36 = v35;
  memset(&v35, 0, sizeof(v35));
  v25 = v30;
  if (v30)
  {
    do
    {
      v26 = *v25;
      sub_55F7FC((v25 + 2));
      operator delete(v25);
      v25 = v26;
    }

    while (v26);
  }

  v27 = __p[0];
  __p[0] = 0;
  if (v27)
  {
    operator delete(v27);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  else if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
LABEL_57:
  sub_5CB7CC(a2, &v39, &v37, &v36);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
LABEL_59:
      if ((SHIBYTE(v40) & 0x80000000) == 0)
      {
        return;
      }

LABEL_67:
      operator delete(v39);
      return;
    }
  }

  else if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(v37);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_67;
  }
}

void sub_5B25B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_5B2A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  if (*(v44 - 73) < 0)
  {
    operator delete(*(v44 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_5B2B08(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 4799) == 1)
  {
    if (*(a1 + 3264))
    {
LABEL_3:
      v3 = "";
      goto LABEL_6;
    }
  }

  else if (*(a1 + 3265))
  {
    goto LABEL_3;
  }

  v3 = "_Old";
LABEL_6:
  if (byte_2795837 >= 0)
  {
    v4 = byte_2795837;
  }

  else
  {
    v4 = qword_2795828;
  }

  if (v4 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v5 = *(a1 + 8);
  if (v4 + 10 >= 0x17)
  {
    operator new();
  }

  *&v35.__r_.__value_.__r.__words[1] = 0uLL;
  *(&v35.__r_.__value_.__s + 23) = v4 + 10;
  qmemcpy(&v35, "BannerHead", 10);
  if (v4)
  {
    if (byte_2795837 >= 0)
    {
      v6 = &qword_2795820;
    }

    else
    {
      v6 = qword_2795820;
    }

    memmove(&v35.__r_.__value_.__r.__words[1] + 2, v6, v4);
  }

  *(&v35.__r_.__value_.__r.__words[1] + v4 + 2) = 0;
  v7 = strlen(v3);
  v8 = std::string::append(&v35, v3, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  *&v30 = *(&v8->__r_.__value_.__l + 2);
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = sub_9274F4(v5, __p);
  if (*(v10 + 23) < 0)
  {
    sub_325C(&v39, *v10, v10[1]);
  }

  else
  {
    v11 = *v10;
    v40 = v10[2];
    v39 = v11;
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_22:
  if (byte_2795837 >= 0)
  {
    v12 = byte_2795837;
  }

  else
  {
    v12 = qword_2795828;
  }

  if (v12 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v13 = *(a1 + 8);
  if (v12 + 10 >= 0x17)
  {
    operator new();
  }

  *&v35.__r_.__value_.__r.__words[1] = 0x7964uLL;
  *(&v35.__r_.__value_.__s + 23) = v12 + 10;
  v35.__r_.__value_.__r.__words[0] = 0x6F4272656E6E6142;
  if (v12)
  {
    if (byte_2795837 >= 0)
    {
      v14 = &qword_2795820;
    }

    else
    {
      v14 = qword_2795820;
    }

    memmove(&v35.__r_.__value_.__r.__words[1] + 2, v14, v12);
  }

  *(&v35.__r_.__value_.__r.__words[1] + v12 + 2) = 0;
  v15 = strlen(v3);
  v16 = std::string::append(&v35, v3, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  *&v30 = *(&v16->__r_.__value_.__l + 2);
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = sub_9274F4(v13, __p);
  if (*(v18 + 23) < 0)
  {
    sub_325C(&v37, *v18, v18[1]);
  }

  else
  {
    v19 = *v18;
    v38 = v18[2];
    v37 = v19;
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_40:
  if (byte_2795837 >= 0)
  {
    v20 = byte_2795837;
  }

  else
  {
    v20 = qword_2795828;
  }

  if (v20 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v20 + 10 >= 0x17)
  {
    operator new();
  }

  *&v32.__r_.__value_.__r.__words[1] = 0x7472uLL;
  *(&v32.__r_.__value_.__s + 23) = v20 + 10;
  v32.__r_.__value_.__r.__words[0] = 0x656C416563696F56;
  if (v20)
  {
    if (byte_2795837 >= 0)
    {
      v21 = &qword_2795820;
    }

    else
    {
      v21 = qword_2795820;
    }

    memmove(&v32.__r_.__value_.__r.__words[1] + 2, v21, v20);
  }

  *(&v32.__r_.__value_.__r.__words[1] + v20 + 2) = 0;
  v22 = strlen(v3);
  v23 = std::string::append(&v32, v3, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v34 = v23->__r_.__value_.__r.__words[2];
  *v33 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  *__p = 0u;
  v30 = 0u;
  v31 = 1065353216;
  sub_65F810(a1 + 24, v33, __p, *(a1 + 3261), &v35);
  v36 = v35;
  memset(&v35, 0, sizeof(v35));
  v25 = v30;
  if (v30)
  {
    do
    {
      v26 = *v25;
      sub_55F7FC((v25 + 2));
      operator delete(v25);
      v25 = v26;
    }

    while (v26);
  }

  v27 = __p[0];
  __p[0] = 0;
  if (v27)
  {
    operator delete(v27);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  else if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
LABEL_57:
  sub_5CB7CC(a2, &v39, &v37, &v36);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
LABEL_59:
      if ((SHIBYTE(v40) & 0x80000000) == 0)
      {
        return;
      }

LABEL_67:
      operator delete(v39);
      return;
    }
  }

  else if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(v37);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_67;
  }
}

void sub_5B3060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_5B3138(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *v120 = 0u;
  v121 = 0u;
  v122 = 1065353216;
  *v117 = 0u;
  v118 = 0u;
  v119 = 1065353216;
  sub_65929C(a2, *(a1 + 3261), *(a1 + 3260), &v115);
  v8 = sub_659448(a2, *(a1 + 3260));
  if (v8[23] < 0)
  {
    sub_325C(v113, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    v114 = *(v8 + 2);
    *v113 = v9;
  }

  if (SHIBYTE(v116) < 0)
  {
    if (!*(&v115 + 1))
    {
      goto LABEL_36;
    }
  }

  else if (!HIBYTE(v116))
  {
    goto LABEL_36;
  }

  if (SHIBYTE(v114) < 0)
  {
    if (!v113[1])
    {
      goto LABEL_36;
    }
  }

  else if (!HIBYTE(v114))
  {
    goto LABEL_36;
  }

  *v94 = "{roadname}";
  v10 = sub_353894(v117, "{roadname}");
  v11 = v10 + 5;
  if (v10 + 5 != &v115)
  {
    if (*(v10 + 63) < 0)
    {
      if (SHIBYTE(v116) >= 0)
      {
        v12 = &v115;
      }

      else
      {
        v12 = v115;
      }

      if (SHIBYTE(v116) >= 0)
      {
        v13 = HIBYTE(v116);
      }

      else
      {
        v13 = *(&v115 + 1);
      }

      sub_13B38(v11, v12, v13);
    }

    else if ((HIBYTE(v116) & 0x80) != 0)
    {
      sub_13A68(v11, v115, *(&v115 + 1));
    }

    else
    {
      *v11 = v115;
      v10[7] = v116;
    }
  }

  *v94 = "{roadname}";
  v14 = sub_353894(v120, "{roadname}");
  v15 = v14 + 5;
  if (v14 + 5 != v113)
  {
    if (*(v14 + 63) < 0)
    {
      if (SHIBYTE(v114) >= 0)
      {
        v16 = v113;
      }

      else
      {
        v16 = v113[0];
      }

      if (SHIBYTE(v114) >= 0)
      {
        v17 = HIBYTE(v114);
      }

      else
      {
        v17 = v113[1];
      }

      sub_13B38(v15, v16, v17);
    }

    else if ((HIBYTE(v114) & 0x80) != 0)
    {
      sub_13A68(v15, v113[0], v113[1]);
    }

    else
    {
      *v15 = *v113;
      v14[7] = v114;
    }
  }

LABEL_36:
  v112 = 0uLL;
  __p = 0;
  memset(&v110, 0, sizeof(v110));
  v108 = 0;
  v109 = 0uLL;
  v18 = sub_38F744(a2);
  v92 = sub_38F768(a2);
  if ((sub_659844(a2, (a1 + 3272)) | v18))
  {
    v107 = 0x400000000000000;
    *v106 = *"_UGI";
  }

  else
  {
    HIBYTE(v107) = 0;
    LOBYTE(v106[0]) = 0;
  }

  if (v18)
  {
    v19 = 0x64616F525FLL;
  }

  else
  {
    v19 = 0x64616F526461425FLL;
  }

  if (v18)
  {
    v20 = &qword_2299AE0;
  }

  else
  {
    v20 = &unk_229A200;
  }

  if (v18)
  {
    v21 = 5;
  }

  else
  {
    v21 = 8;
  }

  v22 = 96;
  if (a2[232])
  {
    v22 = 228;
  }

  v23 = *&a2[v22];
  if (v23 > 4)
  {
    switch(v23)
    {
      case 5:
        v26 = a2[164];
        if ((v26 - 8) >= 2 && v26 != 6)
        {
          if (v26 != 4)
          {
            v105 = 0xC00000000000000;
            v24 = "_LaneClosure";
            goto LABEL_55;
          }

LABEL_54:
          v105 = 0x700000000000000;
          v24 = "_Hazard";
LABEL_55:
          *v104 = *v24;
          goto LABEL_71;
        }

        goto LABEL_67;
      case 13:
        v25 = "_Speed_Trap";
        break;
      case 15:
        v25 = "_Emergency_Vehicle";
        break;
      default:
LABEL_67:
        HIBYTE(v105) = 0;
        LOBYTE(v104[0]) = 0;
        goto LABEL_71;
    }
  }

  else if (v23)
  {
    if (v23 != 1)
    {
      if (v23 == 4)
      {
        goto LABEL_54;
      }

      goto LABEL_67;
    }

    v25 = "_Construction";
  }

  else if (*(a1 + 4792))
  {
    v25 = "_Crash";
  }

  else
  {
    v25 = "_Accident";
  }

  *v104 = *v25;
  v105 = *(v25 + 2);
LABEL_71:
  if (sub_3536DC(v117, "{roadname}"))
  {
    v100 = v19;
    v101 = 0;
    *v102 = *v20;
    *&v102[3] = *(v20 + 3);
    v103 = v21;
  }

  else
  {
    v103 = 0;
    LOBYTE(v100) = 0;
  }

  v93.__r_.__value_.__s.__data_[17] = 0;
  WORD1(v93.__r_.__value_.__r.__words[2]) = 116;
  HIDWORD(v93.__r_.__value_.__r.__words[2]) = 318767104;
  strcpy(&v93, "BannerHead_Incid");
  if (v107 >= 0)
  {
    v27 = v106;
  }

  else
  {
    v27 = v106[0];
  }

  if (v107 >= 0)
  {
    v28 = HIBYTE(v107);
  }

  else
  {
    v28 = v106[1];
  }

  v29 = std::string::append(&v93, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  *&v94[16] = *(&v29->__r_.__value_.__l + 2);
  *v94 = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  if (v105 >= 0)
  {
    v31 = v104;
  }

  else
  {
    v31 = v104[0];
  }

  if (v105 >= 0)
  {
    v32 = HIBYTE(v105);
  }

  else
  {
    v32 = v104[1];
  }

  v33 = std::string::append(v94, v31, v32);
  v34 = v33->__r_.__value_.__r.__words[0];
  v123.__r_.__value_.__r.__words[0] = v33->__r_.__value_.__l.__size_;
  *(v123.__r_.__value_.__r.__words + 7) = *(&v33->__r_.__value_.__r.__words[1] + 7);
  v35 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v112) < 0)
  {
    operator delete(__p);
  }

  __p = v34;
  *&v112 = v123.__r_.__value_.__r.__words[0];
  *(&v112 + 7) = *(v123.__r_.__value_.__r.__words + 7);
  HIBYTE(v112) = v35;
  if ((v94[23] & 0x80000000) == 0)
  {
    if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_90;
    }

LABEL_103:
    operator delete(v93.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_104;
  }

  operator delete(*v94);
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_103;
  }

LABEL_90:
  if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_91;
  }

LABEL_104:
  operator delete(v110.__r_.__value_.__l.__data_);
LABEL_91:
  strcpy(&v110, "BannerBody_Incident");
  v110.__r_.__value_.__s.__data_[20] = 0;
  *(&v110.__r_.__value_.__r.__words[2] + 5) = 0;
  *(&v110.__r_.__value_.__s + 23) = 19;
  if (v18)
  {
    if (v107 >= 0)
    {
      v36 = HIBYTE(v107);
    }

    else
    {
      v36 = v106[1];
    }

    if (v105 >= 0)
    {
      v37 = HIBYTE(v105);
    }

    else
    {
      v37 = v104[1];
    }

    if (v37 + v36 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v37 + v36 > 0x16)
    {
      operator new();
    }

    memset(v94, 0, 24);
    v94[23] = v37 + v36;
    if (v36)
    {
      if (v107 >= 0)
      {
        v39 = v106;
      }

      else
      {
        v39 = v106[0];
      }

      memmove(v94, v39, v36);
    }

    v40 = &v94[v36];
    if (v37)
    {
      if (v105 >= 0)
      {
        v41 = v104;
      }

      else
      {
        v41 = v104[0];
      }

      memmove(v40, v41, v37);
    }

    v40[v37] = 0;
    v38 = v94[23];
  }

  else
  {
    v38 = 0;
    v94[23] = 0;
    v94[0] = 0;
  }

  if ((v38 & 0x80u) == 0)
  {
    v42 = v94;
  }

  else
  {
    v42 = *v94;
  }

  if ((v38 & 0x80u) == 0)
  {
    v43 = v38;
  }

  else
  {
    v43 = *&v94[8];
  }

  std::string::append(&v110, v42, v43);
  if ((v94[23] & 0x80000000) != 0)
  {
    operator delete(*v94);
  }

  if (v92)
  {
    v44 = v104;
  }

  else
  {
    v44 = &v100;
  }

  v45 = &v103;
  if (v92)
  {
    v45 = &v105 + 7;
  }

  v46 = *v45;
  v47 = &v101;
  if (v92)
  {
    v47 = &v104[1];
  }

  v48 = *v47;
  if ((v46 & 0x80u) == 0)
  {
    v49 = v44;
  }

  else
  {
    v49 = *v44;
  }

  if ((v46 & 0x80u) == 0)
  {
    v50 = v46;
  }

  else
  {
    v50 = v48;
  }

  std::string::append(&v110, v49, v50);
  v123.__r_.__value_.__s.__data_[17] = 0;
  WORD1(v123.__r_.__value_.__r.__words[2]) = 116;
  HIDWORD(v123.__r_.__value_.__r.__words[2]) = 318767104;
  strcpy(&v123, "VoiceAlert_Incid");
  if (v107 >= 0)
  {
    v51 = v106;
  }

  else
  {
    v51 = v106[0];
  }

  if (v107 >= 0)
  {
    v52 = HIBYTE(v107);
  }

  else
  {
    v52 = v106[1];
  }

  v53 = std::string::append(&v123, v51, v52);
  v54 = *&v53->__r_.__value_.__l.__data_;
  v93.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
  *&v93.__r_.__value_.__l.__data_ = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  if (v105 >= 0)
  {
    v55 = v104;
  }

  else
  {
    v55 = v104[0];
  }

  if (v105 >= 0)
  {
    v56 = HIBYTE(v105);
  }

  else
  {
    v56 = v104[1];
  }

  v57 = std::string::append(&v93, v55, v56);
  v58 = *&v57->__r_.__value_.__l.__data_;
  *&v94[16] = *(&v57->__r_.__value_.__l + 2);
  *v94 = v58;
  v57->__r_.__value_.__l.__size_ = 0;
  v57->__r_.__value_.__r.__words[2] = 0;
  v57->__r_.__value_.__r.__words[0] = 0;
  if (v103 >= 0)
  {
    v59 = &v100;
  }

  else
  {
    v59 = v100;
  }

  if (v103 >= 0)
  {
    v60 = v103;
  }

  else
  {
    v60 = v101;
  }

  v61 = std::string::append(v94, v59, v60);
  v62 = v61->__r_.__value_.__r.__words[0];
  *&v124 = v61->__r_.__value_.__l.__size_;
  *(&v124 + 7) = *(&v61->__r_.__value_.__r.__words[1] + 7);
  v63 = HIBYTE(v61->__r_.__value_.__r.__words[2]);
  v61->__r_.__value_.__l.__size_ = 0;
  v61->__r_.__value_.__r.__words[2] = 0;
  v61->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v109) < 0)
  {
    operator delete(v108);
  }

  v108 = v62;
  *&v109 = v124;
  *(&v109 + 7) = *(&v124 + 7);
  HIBYTE(v109) = v63;
  if ((v94[23] & 0x80000000) == 0)
  {
    if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_159;
    }

LABEL_163:
    operator delete(v93.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v123.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_164;
  }

  operator delete(*v94);
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_163;
  }

LABEL_159:
  if ((SHIBYTE(v123.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_160;
  }

LABEL_164:
  operator delete(v123.__r_.__value_.__l.__data_);
LABEL_160:
  v64 = sub_9274F4(*(a1 + 8), &__p);
  if (*(v64 + 23) < 0)
  {
    sub_325C(&v124, *v64, v64[1]);
  }

  else
  {
    v65 = *v64;
    v125 = v64[2];
    v124 = v65;
  }

  v66 = v103;
  if (v103 < 0)
  {
    v66 = v101;
  }

  if (v66 == 0 && v18)
  {
    HIBYTE(v99) = 0;
    LOBYTE(v98[0]) = 0;
  }

  else
  {
    v67 = sub_9274F4(*(a1 + 8), &v110);
    if (*(v67 + 23) < 0)
    {
      sub_325C(v98, *v67, v67[1]);
    }

    else
    {
      v68 = *v67;
      v99 = v67[2];
      *v98 = v68;
    }
  }

  memset(v94, 0, sizeof(v94));
  v95 = 1065353216;
  sub_65F810(a1 + 24, &v108, v94, *(a1 + 3261), &v93);
  v97 = v93;
  memset(&v93, 0, sizeof(v93));
  v69 = *&v94[16];
  if (*&v94[16])
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

  v71 = *v94;
  *v94 = 0;
  if (v71)
  {
    operator delete(v71);
  }

  sub_5B9468(a2[164], a2[165], &v96);
  size = HIBYTE(v96.__r_.__value_.__r.__words[2]);
  if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v96.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    memset(v94, 0, sizeof(v94));
    v95 = 1065353216;
    sub_65F810(a1 + 24, &v96.__r_.__value_.__l.__data_, v94, *(a1 + 3261), &v93);
    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = &v93;
    }

    else
    {
      v73 = v93.__r_.__value_.__r.__words[0];
    }

    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v74 = v93.__r_.__value_.__l.__size_;
    }

    std::string::append(&v97, v73, v74);
    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }

    v75 = *&v94[16];
    if (*&v94[16])
    {
      do
      {
        v76 = *v75;
        sub_55F7FC((v75 + 2));
        operator delete(v75);
        v75 = v76;
      }

      while (v76);
    }

    v77 = *v94;
    *v94 = 0;
    if (v77)
    {
      operator delete(v77);
    }
  }

  if (a3 && !sub_38F744(a2))
  {
    strcpy(&v123, "VoiceAlert_BestTrailer");
    *(&v123.__r_.__value_.__s + 23) = 22;
    memset(v94, 0, sizeof(v94));
    v95 = 1065353216;
    sub_65F810(a1 + 24, &v123.__r_.__value_.__l.__data_, v94, *(a1 + 3261), &v93);
    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v78 = &v93;
    }

    else
    {
      v78 = v93.__r_.__value_.__r.__words[0];
    }

    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v79 = v93.__r_.__value_.__l.__size_;
    }

    std::string::append(&v97, v78, v79);
    if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v93.__r_.__value_.__l.__data_);
    }

    v80 = *&v94[16];
    if (*&v94[16])
    {
      do
      {
        v81 = *v80;
        sub_55F7FC((v80 + 2));
        operator delete(v80);
        v80 = v81;
      }

      while (v81);
    }

    v82 = *v94;
    *v94 = 0;
    if (v82)
    {
      operator delete(v82);
    }

    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v123.__r_.__value_.__l.__data_);
    }
  }

  sub_6A56A4(&v124, v120);
  sub_6A56A4(v98, v120);
  sub_6A56A4(&v97, v117);
  sub_64BC20(v94, &v124);
  sub_64B998(&v93);
  v83 = v93.__r_.__value_.__l.__size_;
  if (v93.__r_.__value_.__l.__size_ >= v93.__r_.__value_.__r.__words[2])
  {
    v85 = sub_5C416C(&v93, v98);
  }

  else
  {
    if (SHIBYTE(v99) < 0)
    {
      sub_325C(v93.__r_.__value_.__l.__size_, v98[0], v98[1]);
    }

    else
    {
      v84 = *v98;
      *(v93.__r_.__value_.__l.__size_ + 16) = v99;
      *v83 = v84;
    }

    v85 = v83 + 24;
  }

  v93.__r_.__value_.__l.__size_ = v85;
  sub_64BC20(&v123, &v97);
  if (a2[472] != 1 || (sub_64E558(&v93, "{distance}", a2 + 58), (a2[472] & 1) == 0))
  {
    sub_4F0F0C();
  }

  sub_64E558(&v123, "{distance}", a2 + 58);
  sub_64E768(&v123, "{count}", a2[165]);
  sub_5CB500(a4, v94, &v93, &v123);
  sub_53A868(&v123);
  sub_53A868(&v93);
  sub_53A868(v94);
  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v96.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_218:
      if ((SHIBYTE(v99) & 0x80000000) == 0)
      {
        goto LABEL_219;
      }

      goto LABEL_232;
    }
  }

  else if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_218;
  }

  operator delete(v97.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v99) & 0x80000000) == 0)
  {
LABEL_219:
    if ((SHIBYTE(v125) & 0x80000000) == 0)
    {
      goto LABEL_220;
    }

    goto LABEL_233;
  }

LABEL_232:
  operator delete(v98[0]);
  if ((SHIBYTE(v125) & 0x80000000) == 0)
  {
LABEL_220:
    if ((v103 & 0x80000000) == 0)
    {
      goto LABEL_221;
    }

    goto LABEL_234;
  }

LABEL_233:
  operator delete(v124);
  if ((v103 & 0x80000000) == 0)
  {
LABEL_221:
    if ((SHIBYTE(v105) & 0x80000000) == 0)
    {
      goto LABEL_222;
    }

    goto LABEL_235;
  }

LABEL_234:
  operator delete(v100);
  if ((SHIBYTE(v105) & 0x80000000) == 0)
  {
LABEL_222:
    if ((SHIBYTE(v107) & 0x80000000) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_236;
  }

LABEL_235:
  operator delete(v104[0]);
  if ((SHIBYTE(v107) & 0x80000000) == 0)
  {
LABEL_223:
    if ((SHIBYTE(v109) & 0x80000000) == 0)
    {
      goto LABEL_224;
    }

    goto LABEL_237;
  }

LABEL_236:
  operator delete(v106[0]);
  if ((SHIBYTE(v109) & 0x80000000) == 0)
  {
LABEL_224:
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_225;
    }

    goto LABEL_238;
  }

LABEL_237:
  operator delete(v108);
  if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_225:
    if ((SHIBYTE(v112) & 0x80000000) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_239;
  }

LABEL_238:
  operator delete(v110.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v112) & 0x80000000) == 0)
  {
LABEL_226:
    if ((SHIBYTE(v114) & 0x80000000) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_240;
  }

LABEL_239:
  operator delete(__p);
  if ((SHIBYTE(v114) & 0x80000000) == 0)
  {
LABEL_227:
    if ((SHIBYTE(v116) & 0x80000000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_241;
  }

LABEL_240:
  operator delete(v113[0]);
  if (SHIBYTE(v116) < 0)
  {
LABEL_241:
    operator delete(v115);
    v86 = v118;
    if (!v118)
    {
      goto LABEL_248;
    }

    while (1)
    {
LABEL_245:
      v87 = *v86;
      if (v86[63] < 0)
      {
        operator delete(*(v86 + 5));
        if ((v86[39] & 0x80000000) == 0)
        {
          goto LABEL_244;
        }

LABEL_247:
        operator delete(*(v86 + 2));
        operator delete(v86);
        v86 = v87;
        if (!v87)
        {
          goto LABEL_248;
        }
      }

      else
      {
        if (v86[39] < 0)
        {
          goto LABEL_247;
        }

LABEL_244:
        operator delete(v86);
        v86 = v87;
        if (!v87)
        {
          goto LABEL_248;
        }
      }
    }
  }

LABEL_228:
  v86 = v118;
  if (v118)
  {
    goto LABEL_245;
  }

LABEL_248:
  v88 = v117[0];
  v117[0] = 0;
  if (v88)
  {
    operator delete(v88);
  }

  v89 = v121;
  if (v121)
  {
    while (1)
    {
      v90 = *v89;
      if (v89[63] < 0)
      {
        operator delete(*(v89 + 5));
        if ((v89[39] & 0x80000000) == 0)
        {
          goto LABEL_253;
        }

LABEL_256:
        operator delete(*(v89 + 2));
        operator delete(v89);
        v89 = v90;
        if (!v90)
        {
          break;
        }
      }

      else
      {
        if (v89[39] < 0)
        {
          goto LABEL_256;
        }

LABEL_253:
        operator delete(v89);
        v89 = v90;
        if (!v90)
        {
          break;
        }
      }
    }
  }

  v91 = v120[0];
  v120[0] = 0;
  if (v91)
  {
    operator delete(v91);
  }
}

void sub_5B3F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  sub_53A868(&a11);
  sub_53A868(&a31);
  if (a57 < 0)
  {
    operator delete(__p);
    if (a63 < 0)
    {
      goto LABEL_8;
    }
  }

  else if (a63 < 0)
  {
LABEL_8:
    operator delete(a58);
    if ((a70 & 0x80000000) == 0)
    {
LABEL_9:
      if ((*(v77 - 105) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_4:
    operator delete(a65);
    if ((*(v77 - 105) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    operator delete(*(v77 - 128));
LABEL_11:
    if (a72 < 0)
    {
      operator delete(a71);
      if ((a74 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((a74 & 0x80000000) == 0)
    {
LABEL_13:
      if (a76 < 0)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }

    operator delete(a73);
    if (a76 < 0)
    {
LABEL_14:
      operator delete(a75);
      if ((SLOBYTE(STACK[0x20F]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

LABEL_22:
    if ((SLOBYTE(STACK[0x20F]) & 0x80000000) == 0)
    {
LABEL_15:
      if (SLOBYTE(STACK[0x227]) < 0)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

LABEL_23:
    operator delete(a77);
    if (SLOBYTE(STACK[0x227]) < 0)
    {
LABEL_16:
      operator delete(STACK[0x210]);
      if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }

LABEL_24:
    if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
    {
LABEL_17:
      if (SLOBYTE(STACK[0x257]) < 0)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }

LABEL_25:
    operator delete(STACK[0x228]);
    if (SLOBYTE(STACK[0x257]) < 0)
    {
LABEL_18:
      operator delete(STACK[0x240]);
      if ((SLOBYTE(STACK[0x26F]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_27;
    }

LABEL_26:
    if ((SLOBYTE(STACK[0x26F]) & 0x80000000) == 0)
    {
LABEL_19:
      sub_2CD04(&STACK[0x270]);
      sub_2CD04(&STACK[0x2A0]);
      _Unwind_Resume(a1);
    }

LABEL_27:
    operator delete(STACK[0x258]);
    sub_2CD04(&STACK[0x270]);
    sub_2CD04(&STACK[0x2A0]);
    _Unwind_Resume(a1);
  }

  if ((a70 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_4;
}

void sub_5B42F8(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v111 = 0u;
  v110 = 0u;
  v112 = 1065353216;
  v108 = 0u;
  v107 = 0u;
  v109 = 1065353216;
  sub_65929C(a2, *(a1 + 3261), *(a1 + 3260), &v105);
  v8 = sub_659448(a2, *(a1 + 3260));
  if (v8[23] < 0)
  {
    sub_325C(&v103, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    v104 = *(v8 + 2);
    v103 = v9;
  }

  if (SHIBYTE(v106) < 0)
  {
    if (!*(&v105 + 1))
    {
      goto LABEL_36;
    }
  }

  else if (!HIBYTE(v106))
  {
    goto LABEL_36;
  }

  if (SHIBYTE(v104) < 0)
  {
    if (!*(&v103 + 1))
    {
      goto LABEL_36;
    }
  }

  else if (!HIBYTE(v104))
  {
    goto LABEL_36;
  }

  *v114 = "{roadname}";
  v10 = sub_353894(&v107, "{roadname}");
  v11 = v10 + 5;
  if (v10 + 5 != &v105)
  {
    if (*(v10 + 63) < 0)
    {
      if (SHIBYTE(v106) >= 0)
      {
        v12 = &v105;
      }

      else
      {
        v12 = v105;
      }

      if (SHIBYTE(v106) >= 0)
      {
        v13 = HIBYTE(v106);
      }

      else
      {
        v13 = *(&v105 + 1);
      }

      sub_13B38(v11, v12, v13);
    }

    else if ((HIBYTE(v106) & 0x80) != 0)
    {
      sub_13A68(v11, v105, *(&v105 + 1));
    }

    else
    {
      *v11 = v105;
      v10[7] = v106;
    }
  }

  *v114 = "{roadname}";
  v14 = sub_353894(&v110, "{roadname}");
  v15 = v14 + 5;
  if (v14 + 5 != &v103)
  {
    if (*(v14 + 63) < 0)
    {
      if (SHIBYTE(v104) >= 0)
      {
        v16 = &v103;
      }

      else
      {
        v16 = v103;
      }

      if (SHIBYTE(v104) >= 0)
      {
        v17 = HIBYTE(v104);
      }

      else
      {
        v17 = *(&v103 + 1);
      }

      sub_13B38(v15, v16, v17);
    }

    else if ((HIBYTE(v104) & 0x80) != 0)
    {
      sub_13A68(v15, v103, *(&v103 + 1));
    }

    else
    {
      *v15 = v103;
      v14[7] = v104;
    }
  }

LABEL_36:
  __p = 0;
  v102 = 0uLL;
  v99 = 0;
  v100 = 0uLL;
  v97 = 0;
  v98 = 0uLL;
  v95 = 0uLL;
  v96 = 0;
  v18 = 96;
  if (*(a2 + 232))
  {
    v18 = 228;
  }

  v19 = *(a2 + v18);
  if (v19 > 4)
  {
    switch(v19)
    {
      case 5:
        v22 = *(a2 + 164);
        if ((v22 - 8) >= 2 && v22 != 6)
        {
          if (v22 != 4)
          {
            v94 = 0xC00000000000000;
            v20 = "_LaneClosure";
            goto LABEL_43;
          }

LABEL_42:
          v94 = 0x700000000000000;
          v20 = "_Hazard";
LABEL_43:
          v93 = *v20;
          goto LABEL_59;
        }

        goto LABEL_55;
      case 13:
        v21 = "_Speed_Trap";
        break;
      case 15:
        v21 = "_Emergency_Vehicle";
        break;
      default:
LABEL_55:
        HIBYTE(v94) = 0;
        LOBYTE(v93) = 0;
        goto LABEL_59;
    }
  }

  else if (v19)
  {
    if (v19 != 1)
    {
      if (v19 == 4)
      {
        goto LABEL_42;
      }

      goto LABEL_55;
    }

    v21 = "_Construction";
  }

  else if (*(a1 + 4792))
  {
    v21 = "_Crash";
  }

  else
  {
    v21 = "_Accident";
  }

  v93 = *v21;
  v94 = *(v21 + 2);
LABEL_59:
  v23 = sub_38F744(a2);
  v85 = a3;
  v24 = sub_38F768(a2);
  if (v23)
  {
    operator new();
  }

  if (!v24)
  {
    v114[17] = 0;
    strcpy(&v114[18], "t");
    *&v114[20] = 318767104;
    strcpy(v114, "BannerHead_Incid");
    if (v94 >= 0)
    {
      v26 = &v93;
    }

    else
    {
      v26 = v93;
    }

    if (v94 >= 0)
    {
      v27 = HIBYTE(v94);
    }

    else
    {
      v27 = *(&v93 + 1);
    }

    v28 = std::string::append(v114, v26, v27);
    v29 = v28->__r_.__value_.__r.__words[0];
    v113.__r_.__value_.__r.__words[0] = v28->__r_.__value_.__l.__size_;
    *(v113.__r_.__value_.__r.__words + 7) = *(&v28->__r_.__value_.__r.__words[1] + 7);
    v30 = HIBYTE(v28->__r_.__value_.__r.__words[2]);
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v102) < 0)
    {
      operator delete(__p);
    }

    __p = v29;
    *&v102 = v113.__r_.__value_.__r.__words[0];
    *(&v102 + 7) = *(v113.__r_.__value_.__r.__words + 7);
    HIBYTE(v102) = v30;
    if ((v114[23] & 0x80000000) != 0)
    {
      operator delete(*v114);
    }

    if (sub_3536DC(&v107, "{roadname}"))
    {
      *&v114[16] = 0x800000000000000;
      *v114 = *"_BadRoad";
      v31 = 8;
      if ((SHIBYTE(v96) & 0x80000000) == 0)
      {
LABEL_77:
        v95 = *v114;
        v96 = *&v114[16];
LABEL_100:
        v114[17] = 0;
        strcpy(&v114[18], "t");
        *&v114[20] = 318767104;
        strcpy(v114, "BannerBody_Incid");
        if (v96 >= 0)
        {
          v37 = &v95;
        }

        else
        {
          v37 = v95;
        }

        if (v96 >= 0)
        {
          v38 = HIBYTE(v96);
        }

        else
        {
          v38 = *(&v95 + 1);
        }

        goto LABEL_106;
      }
    }

    else
    {
      v31 = 0;
      v114[23] = 0;
      v114[0] = 0;
      if ((SHIBYTE(v96) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }
    }

    sub_13B38(&v95, v114, v31);
    if ((v114[23] & 0x80000000) != 0)
    {
      operator delete(*v114);
    }

    goto LABEL_100;
  }

  if (!sub_3536DC(&v107, "{roadname}"))
  {
    v25 = 0;
    v114[23] = 0;
    v114[0] = 0;
    if ((SHIBYTE(v96) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

LABEL_79:
    sub_13B38(&v95, v114, v25);
    if ((v114[23] & 0x80000000) != 0)
    {
      operator delete(*v114);
    }

    goto LABEL_81;
  }

  *&v114[16] = 0x800000000000000;
  *v114 = *"_BadRoad";
  v25 = 8;
  if (SHIBYTE(v96) < 0)
  {
    goto LABEL_79;
  }

LABEL_64:
  v95 = *v114;
  v96 = *&v114[16];
LABEL_81:
  v114[17] = 0;
  strcpy(&v114[18], "t");
  *&v114[20] = 318767104;
  strcpy(v114, "BannerHead_Incid");
  if (v94 >= 0)
  {
    v32 = &v93;
  }

  else
  {
    v32 = v93;
  }

  if (v94 >= 0)
  {
    v33 = HIBYTE(v94);
  }

  else
  {
    v33 = *(&v93 + 1);
  }

  v34 = std::string::append(v114, v32, v33);
  v35 = v34->__r_.__value_.__r.__words[0];
  v113.__r_.__value_.__r.__words[0] = v34->__r_.__value_.__l.__size_;
  *(v113.__r_.__value_.__r.__words + 7) = *(&v34->__r_.__value_.__r.__words[1] + 7);
  v36 = HIBYTE(v34->__r_.__value_.__r.__words[2]);
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v102) < 0)
  {
    operator delete(__p);
  }

  __p = v35;
  *&v102 = v113.__r_.__value_.__r.__words[0];
  *(&v102 + 7) = *(v113.__r_.__value_.__r.__words + 7);
  HIBYTE(v102) = v36;
  if ((v114[23] & 0x80000000) != 0)
  {
    operator delete(*v114);
  }

  v114[17] = 0;
  strcpy(&v114[18], "t");
  *&v114[20] = 318767104;
  strcpy(v114, "BannerBody_Incid");
  if (v94 >= 0)
  {
    v37 = &v93;
  }

  else
  {
    v37 = v93;
  }

  if (v94 >= 0)
  {
    v38 = HIBYTE(v94);
  }

  else
  {
    v38 = *(&v93 + 1);
  }

LABEL_106:
  v39 = std::string::append(v114, v37, v38);
  v40 = v39->__r_.__value_.__r.__words[0];
  v113.__r_.__value_.__r.__words[0] = v39->__r_.__value_.__l.__size_;
  *(v113.__r_.__value_.__r.__words + 7) = *(&v39->__r_.__value_.__r.__words[1] + 7);
  v41 = HIBYTE(v39->__r_.__value_.__r.__words[2]);
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v100) < 0)
  {
    operator delete(v99);
  }

  v99 = v40;
  *&v100 = v113.__r_.__value_.__r.__words[0];
  *(&v100 + 7) = *(v113.__r_.__value_.__r.__words + 7);
  HIBYTE(v100) = v41;
  if ((v114[23] & 0x80000000) != 0)
  {
    operator delete(*v114);
  }

  if (sub_38F720(a2))
  {
    v92 = 0x400000000000000;
    __s = *"_UGI";
    v42 = 4;
  }

  else
  {
    v42 = 0;
    HIBYTE(v92) = 0;
    LOBYTE(__s) = 0;
  }

  v86.__r_.__value_.__s.__data_[17] = 0;
  WORD1(v86.__r_.__value_.__r.__words[2]) = 116;
  HIDWORD(v86.__r_.__value_.__r.__words[2]) = 318767104;
  strcpy(&v86, "VoiceAlert_Incid");
  v43 = std::string::append(&v86, &__s, v42);
  v44 = *&v43->__r_.__value_.__l.__data_;
  v113.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
  *&v113.__r_.__value_.__l.__data_ = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  if (v94 >= 0)
  {
    v45 = &v93;
  }

  else
  {
    v45 = v93;
  }

  if (v94 >= 0)
  {
    v46 = HIBYTE(v94);
  }

  else
  {
    v46 = *(&v93 + 1);
  }

  v47 = std::string::append(&v113, v45, v46);
  v48 = *&v47->__r_.__value_.__l.__data_;
  *&v114[16] = *(&v47->__r_.__value_.__l + 2);
  *v114 = v48;
  v47->__r_.__value_.__l.__size_ = 0;
  v47->__r_.__value_.__r.__words[2] = 0;
  v47->__r_.__value_.__r.__words[0] = 0;
  if (v96 >= 0)
  {
    v49 = &v95;
  }

  else
  {
    v49 = v95;
  }

  if (v96 >= 0)
  {
    v50 = HIBYTE(v96);
  }

  else
  {
    v50 = *(&v95 + 1);
  }

  v51 = std::string::append(v114, v49, v50);
  v52 = v51->__r_.__value_.__r.__words[0];
  *&v116 = v51->__r_.__value_.__l.__size_;
  *(&v116 + 7) = *(&v51->__r_.__value_.__r.__words[1] + 7);
  v53 = HIBYTE(v51->__r_.__value_.__r.__words[2]);
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v98) < 0)
  {
    operator delete(v97);
  }

  v97 = v52;
  *&v98 = v116;
  *(&v98 + 7) = *(&v116 + 7);
  HIBYTE(v98) = v53;
  if ((v114[23] & 0x80000000) == 0)
  {
    if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_129;
    }

LABEL_133:
    operator delete(v113.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_134;
  }

  operator delete(*v114);
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_133;
  }

LABEL_129:
  if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_130;
  }

LABEL_134:
  operator delete(v86.__r_.__value_.__l.__data_);
LABEL_130:
  v54 = sub_9274F4(*(a1 + 8), &__p);
  if (*(v54 + 23) < 0)
  {
    sub_325C(&v116, *v54, v54[1]);
  }

  else
  {
    v55 = *v54;
    v117 = v54[2];
    v116 = v55;
  }

  __dst = 0uLL;
  v90 = 0;
  v56 = HIBYTE(v100);
  if (v100 < 0)
  {
    v56 = v100;
  }

  if (v56)
  {
    v57 = sub_9274F4(*(a1 + 8), &v99);
    if (&__dst != v57)
    {
      v58 = *(v57 + 23);
      if (SHIBYTE(v90) < 0)
      {
        if (v58 >= 0)
        {
          v60 = v57;
        }

        else
        {
          v60 = *v57;
        }

        if (v58 >= 0)
        {
          v61 = *(v57 + 23);
        }

        else
        {
          v61 = v57[1];
        }

        sub_13B38(&__dst, v60, v61);
      }

      else if ((*(v57 + 23) & 0x80) != 0)
      {
        sub_13A68(&__dst, *v57, v57[1]);
      }

      else
      {
        v59 = *v57;
        v90 = v57[2];
        __dst = v59;
      }
    }
  }

  memset(v114, 0, sizeof(v114));
  v115 = 1065353216;
  sub_65F810(a1 + 24, &v97, v114, *(a1 + 3261), &v113);
  v88 = v113;
  memset(&v113, 0, sizeof(v113));
  v62 = *&v114[16];
  if (*&v114[16])
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

  v64 = *v114;
  *v114 = 0;
  if (v64)
  {
    operator delete(v64);
  }

  sub_5B9468(*(a2 + 164), *(a2 + 165), &v87);
  size = HIBYTE(v87.__r_.__value_.__r.__words[2]);
  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v87.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    memset(v114, 0, sizeof(v114));
    v115 = 1065353216;
    sub_65F810(a1 + 24, &v87.__r_.__value_.__l.__data_, v114, *(a1 + 3261), &v113);
    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = &v113;
    }

    else
    {
      v66 = v113.__r_.__value_.__r.__words[0];
    }

    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v67 = v113.__r_.__value_.__l.__size_;
    }

    std::string::append(&v88, v66, v67);
    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }

    v68 = *&v114[16];
    if (*&v114[16])
    {
      do
      {
        v69 = *v68;
        sub_55F7FC((v68 + 2));
        operator delete(v68);
        v68 = v69;
      }

      while (v69);
    }

    v70 = *v114;
    *v114 = 0;
    if (v70)
    {
      operator delete(v70);
    }
  }

  if (v85 && !sub_38F744(a2))
  {
    strcpy(&v86, "VoiceAlert_BestTrailer");
    *(&v86.__r_.__value_.__s + 23) = 22;
    memset(v114, 0, sizeof(v114));
    v115 = 1065353216;
    sub_65F810(a1 + 24, &v86.__r_.__value_.__l.__data_, v114, *(a1 + 3261), &v113);
    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = &v113;
    }

    else
    {
      v71 = v113.__r_.__value_.__r.__words[0];
    }

    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v72 = v113.__r_.__value_.__l.__size_;
    }

    std::string::append(&v88, v71, v72);
    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }

    v73 = *&v114[16];
    if (*&v114[16])
    {
      do
      {
        v74 = *v73;
        sub_55F7FC((v73 + 2));
        operator delete(v73);
        v73 = v74;
      }

      while (v74);
    }

    v75 = *v114;
    *v114 = 0;
    if (v75)
    {
      operator delete(v75);
    }

    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }
  }

  sub_6A56A4(&v116, &v110);
  sub_6A56A4(&__dst, &v110);
  sub_6A56A4(&v88, &v107);
  sub_64BC20(v114, &v116);
  sub_64B998(&v113);
  v76 = v113.__r_.__value_.__l.__size_;
  if (v113.__r_.__value_.__l.__size_ >= v113.__r_.__value_.__r.__words[2])
  {
    v78 = sub_5C416C(&v113, &__dst);
  }

  else
  {
    if (SHIBYTE(v90) < 0)
    {
      sub_325C(v113.__r_.__value_.__l.__size_, __dst, *(&__dst + 1));
    }

    else
    {
      v77 = __dst;
      *(v113.__r_.__value_.__l.__size_ + 16) = v90;
      *v76 = v77;
    }

    v78 = v76 + 24;
  }

  v113.__r_.__value_.__l.__size_ = v78;
  sub_64BC20(&v86, &v88);
  if (*(a2 + 472) != 1 || (sub_64E558(&v113, "{distance}", (a2 + 464)), (*(a2 + 472) & 1) == 0))
  {
    sub_4F0F0C();
  }

  sub_64E558(&v86, "{distance}", (a2 + 464));
  sub_64E768(&v86, "{count}", *(a2 + 165));
  sub_5CB500(a4, v114, &v113, &v86);
  sub_53A868(&v86);
  sub_53A868(&v113);
  sub_53A868(v114);
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_196:
      if ((SHIBYTE(v90) & 0x80000000) == 0)
      {
        goto LABEL_197;
      }

      goto LABEL_210;
    }
  }

  else if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_196;
  }

  operator delete(v88.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v90) & 0x80000000) == 0)
  {
LABEL_197:
    if ((SHIBYTE(v117) & 0x80000000) == 0)
    {
      goto LABEL_198;
    }

    goto LABEL_211;
  }

LABEL_210:
  operator delete(__dst);
  if ((SHIBYTE(v117) & 0x80000000) == 0)
  {
LABEL_198:
    if ((SHIBYTE(v92) & 0x80000000) == 0)
    {
      goto LABEL_199;
    }

    goto LABEL_212;
  }

LABEL_211:
  operator delete(v116);
  if ((SHIBYTE(v92) & 0x80000000) == 0)
  {
LABEL_199:
    if ((SHIBYTE(v94) & 0x80000000) == 0)
    {
      goto LABEL_200;
    }

    goto LABEL_213;
  }

LABEL_212:
  operator delete(__s);
  if ((SHIBYTE(v94) & 0x80000000) == 0)
  {
LABEL_200:
    if ((SHIBYTE(v96) & 0x80000000) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_214;
  }

LABEL_213:
  operator delete(v93);
  if ((SHIBYTE(v96) & 0x80000000) == 0)
  {
LABEL_201:
    if ((SHIBYTE(v98) & 0x80000000) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_215;
  }

LABEL_214:
  operator delete(v95);
  if ((SHIBYTE(v98) & 0x80000000) == 0)
  {
LABEL_202:
    if ((SHIBYTE(v100) & 0x80000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_216;
  }

LABEL_215:
  operator delete(v97);
  if ((SHIBYTE(v100) & 0x80000000) == 0)
  {
LABEL_203:
    if ((SHIBYTE(v102) & 0x80000000) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_217;
  }

LABEL_216:
  operator delete(v99);
  if ((SHIBYTE(v102) & 0x80000000) == 0)
  {
LABEL_204:
    if ((SHIBYTE(v104) & 0x80000000) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_218;
  }

LABEL_217:
  operator delete(__p);
  if ((SHIBYTE(v104) & 0x80000000) == 0)
  {
LABEL_205:
    if ((SHIBYTE(v106) & 0x80000000) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_219;
  }

LABEL_218:
  operator delete(v103);
  if (SHIBYTE(v106) < 0)
  {
LABEL_219:
    operator delete(v105);
    v79 = v108;
    if (!v108)
    {
      goto LABEL_226;
    }

    while (1)
    {
LABEL_223:
      v80 = *v79;
      if (v79[63] < 0)
      {
        operator delete(*(v79 + 5));
        if ((v79[39] & 0x80000000) == 0)
        {
          goto LABEL_222;
        }

LABEL_225:
        operator delete(*(v79 + 2));
        operator delete(v79);
        v79 = v80;
        if (!v80)
        {
          goto LABEL_226;
        }
      }

      else
      {
        if (v79[39] < 0)
        {
          goto LABEL_225;
        }

LABEL_222:
        operator delete(v79);
        v79 = v80;
        if (!v80)
        {
          goto LABEL_226;
        }
      }
    }
  }

LABEL_206:
  v79 = v108;
  if (v108)
  {
    goto LABEL_223;
  }

LABEL_226:
  v81 = v107;
  *&v107 = 0;
  if (v81)
  {
    operator delete(v81);
  }

  v82 = v111;
  if (v111)
  {
    while (1)
    {
      v83 = *v82;
      if (v82[63] < 0)
      {
        operator delete(*(v82 + 5));
        if ((v82[39] & 0x80000000) == 0)
        {
          goto LABEL_231;
        }

LABEL_234:
        operator delete(*(v82 + 2));
        operator delete(v82);
        v82 = v83;
        if (!v83)
        {
          break;
        }
      }

      else
      {
        if (v82[39] < 0)
        {
          goto LABEL_234;
        }

LABEL_231:
        operator delete(v82);
        v82 = v83;
        if (!v83)
        {
          break;
        }
      }
    }
  }

  v84 = v110;
  *&v110 = 0;
  if (v84)
  {
    operator delete(v84);
  }
}