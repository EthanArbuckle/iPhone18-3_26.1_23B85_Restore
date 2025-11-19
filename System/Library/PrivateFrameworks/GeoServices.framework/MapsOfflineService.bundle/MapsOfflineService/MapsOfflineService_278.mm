uint64_t sub_1118980@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *result;
  LODWORD(v7) = *(result + 8);
  v6 = *(result + 12);
  v8 = *(result + 16);
  v9 = *(result + 24);
  v10 = *(a2 + 8);
  v11 = *(a2 + 24);
  if ((v9 != v11 || v7 != v10) && a3 != a4)
  {
    v14 = *a3;
    v15 = *(*a3 + 32);
    if (__PAIR64__(*(v8 + 22), v8[10]) == __PAIR64__(WORD2(v15), v15) && *(v8 + 46) == BYTE6(v15) && (v16 = *(v14 + 72), __PAIR64__(*(v8 + 42), v8[20]) == __PAIR64__(WORD2(v16), v16)) && *(v8 + 86) == BYTE6(v16) && *(v14 + 80) == v8[22] && ((*(v14 + 88) ^ *(v8 + 96)) & 3) == 0 && ((*(v14 + 84) ^ *(v8 + 46)) & 0x7FFF) == 0 && ((*(v14 + 88) ^ *(v8 + 96)) & 0x7C) == 0 && *(v14 + 86) == *(v8 + 47))
    {
      v7 = *v8;
      v18 = v5[21];
      if (*(v18 + 4 * v7) == 1)
      {
        v19 = v5[12];
        if (v7 >= (v5[13] - v19) >> 2)
        {
LABEL_55:
          exception = __cxa_allocate_exception(0x40uLL);
          v29 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
        }

        v8 = (v5[15] + 104 * *(v19 + 4 * v7));
      }

      else
      {
        v8 = 0;
      }

      LOBYTE(v9) = 0;
      v17 = a3 + 1;
      if (*(a2 + 24))
      {
        v20 = 0;
      }

      else
      {
        v20 = v7 == v10;
      }

      if (!v20 && v17 != a4)
      {
        v21 = *v17;
        v22 = *(*v17 + 32);
        if (v8[10] == v22)
        {
          v23 = a3 + 2;
          v24 = a3 + 1;
          while (1)
          {
            v17 = v23;
            if (*(v8 + 22) != WORD2(v22) || *(v8 + 46) != BYTE6(v22) || (v25 = *(v21 + 72), __PAIR64__(*(v8 + 42), v8[20]) != __PAIR64__(WORD2(v25), v25)) || *(v8 + 86) != BYTE6(v25))
            {
LABEL_53:
              LOBYTE(v9) = 0;
              v17 = v24;
              goto LABEL_16;
            }

            if (*(v21 + 80) != v8[22])
            {
              break;
            }

            if (((*(v21 + 88) ^ *(v8 + 96)) & 3) != 0 || ((*(v21 + 84) ^ *(v8 + 46)) & 0x7FFF) != 0 || ((*(v21 + 88) ^ *(v8 + 96)) & 0x7C) != 0 || *(v21 + 86) != *(v8 + 47))
            {
              goto LABEL_53;
            }

            v7 = *v8;
            if (*(v18 + 4 * v7) == 1)
            {
              v26 = v5[12];
              if (v7 >= (v5[13] - v26) >> 2)
              {
                goto LABEL_55;
              }

              v8 = (v5[15] + 104 * *(v26 + 4 * v7));
            }

            else
            {
              v8 = 0;
            }

            ++v24;
            v27 = !v11 && v7 == v10;
            if (v27 || v23 == a4)
            {
              goto LABEL_53;
            }

            LOBYTE(v9) = 0;
            ++v23;
            v21 = *v17;
            v22 = *(*v17 + 32);
            if (v8[10] != v22)
            {
              goto LABEL_16;
            }
          }

          LOBYTE(v9) = 0;
          v17 = v23 - 1;
        }

        else
        {
          LOBYTE(v9) = 0;
        }
      }
    }

    else
    {
      v17 = a3;
    }

LABEL_16:
    a3 = v17;
  }

  *(a5 + 25) = *(result + 25);
  *(a5 + 28) = *(result + 28);
  *a5 = v5;
  *(a5 + 8) = v7;
  *(a5 + 12) = v6;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  *(a5 + 32) = a3;
  return result;
}

void *sub_1118C84(void *a1, unsigned int a2)
{
  v4 = a2;
  v10[0] = a2;
  v10[1] = &v9;
  v10[2] = &v8;
  v10[3] = &v7;
  v5 = sub_F8A300(a1, v10);
  *(v5 + 204) = 0;
  *(v5 + 49) = 0u;
  *(v5 + 50) = 0u;
  *(v5 + 48) = 0u;
  sub_F8AC6C((v5 + 103), a2);
  if (v4 > (a1[98] - a1[96]) >> 3)
  {
    operator new();
  }

  return a1;
}

void sub_1118D70(_Unwind_Exception *a1)
{
  sub_21DB4B4((v1 + 103));
  v3 = (v1 + 96);
  v4 = v1[99];
  if (v4)
  {
    v1[100] = v4;
    operator delete(v4);
    v5 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_360988(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[97] = v5;
  operator delete(v5);
  sub_360988(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1118DD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *result;
  v6 = *(result + 8);
  v7 = *(result + 12);
  v8 = *(result + 16);
  v9 = *(result + 24);
  *v28 = *(result + 25);
  *&v28[3] = *(result + 28);
  v10 = *(a2 + 8);
  v11 = *(a2 + 24);
  if ((v9 != v11 || v6 != v10) && a3 != a4)
  {
    v14 = *a3;
    v15 = *(*a3 + 32);
    if (__PAIR64__(*(v8 + 44), *(v8 + 40)) == __PAIR64__(WORD2(v15), v15) && *(v8 + 46) == BYTE6(v15) && (v16 = *(v14 + 72), __PAIR64__(*(v8 + 84), *(v8 + 80)) == __PAIR64__(WORD2(v16), v16)) && *(v8 + 86) == BYTE6(v16) && *(v14 + 80) == *(v8 + 88) && ((*(v14 + 88) ^ *(v8 + 96)) & 3) == 0 && ((*(v14 + 84) ^ *(v8 + 92)) & 0x7FFF) == 0 && ((*(v14 + 88) ^ *(v8 + 96)) & 0x7C) == 0)
    {
      v17 = a3;
      if (*(v14 + 86) == *(v8 + 94))
      {
        v19 = a5;
        v6 = *v8;
        result = sub_F94B2C(v5, *v8);
        if (result == 1)
        {
          result = sub_F9495C(v5, v6, v29);
          v8 = *v29[0] + 104 * v30;
        }

        else
        {
          v8 = 0;
        }

        LOBYTE(v9) = 0;
        v20 = v17++;
        v21 = !v11 && v6 == v10;
        a5 = v19;
        if (!v21 && v17 != a4)
        {
          v22 = *v17;
          v23 = *(*v17 + 32);
          if (*(v8 + 40) == v23)
          {
            v24 = v20 + 2;
            v25 = v17;
            while (1)
            {
              v17 = v24;
              if (*(v8 + 44) != WORD2(v23) || *(v8 + 46) != BYTE6(v23) || (v26 = *(v22 + 72), __PAIR64__(*(v8 + 84), *(v8 + 80)) != __PAIR64__(WORD2(v26), v26)) || *(v8 + 86) != BYTE6(v26))
              {
LABEL_51:
                LOBYTE(v9) = 0;
                v17 = v25;
                goto LABEL_16;
              }

              if (*(v22 + 80) != *(v8 + 88))
              {
                LOBYTE(v9) = 0;
                v17 = v24 - 1;
                goto LABEL_16;
              }

              if (((*(v22 + 88) ^ *(v8 + 96)) & 3) != 0 || ((*(v22 + 84) ^ *(v8 + 92)) & 0x7FFF) != 0 || ((*(v22 + 88) ^ *(v8 + 96)) & 0x7C) != 0)
              {
                goto LABEL_51;
              }

              if (*(v22 + 86) != *(v8 + 94))
              {
                break;
              }

              v6 = *v8;
              result = sub_F94B2C(v5, *v8);
              if (result == 1)
              {
                result = sub_F9495C(v5, v6, v29);
                v8 = *v29[0] + 104 * v30;
              }

              else
              {
                v8 = 0;
              }

              a5 = v19;
              ++v25;
              if (v11)
              {
                v27 = 0;
              }

              else
              {
                v27 = v6 == v10;
              }

              if (v27 || v17 == a4)
              {
                goto LABEL_51;
              }

              LOBYTE(v9) = 0;
              v24 = v17 + 1;
              v22 = *v17;
              v23 = *(*v17 + 32);
              if (*(v8 + 40) != v23)
              {
                goto LABEL_16;
              }
            }

            LOBYTE(v9) = 0;
            v17 = v25;
            a5 = v19;
          }

          else
          {
            LOBYTE(v9) = 0;
          }
        }
      }
    }

    else
    {
      v17 = a3;
    }

LABEL_16:
    a3 = v17;
  }

  *a5 = v5;
  *(a5 + 8) = v6;
  *(a5 + 12) = v7;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  *(a5 + 25) = *v28;
  *(a5 + 28) = *&v28[3];
  *(a5 + 32) = a3;
  return result;
}

void sub_1119124()
{
  byte_27C2B9F = 3;
  LODWORD(qword_27C2B88) = 5136193;
  byte_27C2BB7 = 3;
  LODWORD(qword_27C2BA0) = 5136194;
  byte_27C2BCF = 3;
  LODWORD(qword_27C2BB8) = 5136195;
  byte_27C2BE7 = 15;
  strcpy(&qword_27C2BD0, "vehicle_mass_kg");
  byte_27C2BFF = 21;
  strcpy(&xmmword_27C2BE8, "vehicle_cargo_mass_kg");
  byte_27C2C17 = 19;
  strcpy(&qword_27C2C00, "vehicle_aux_power_w");
  byte_27C2C2F = 15;
  strcpy(&qword_27C2C18, "dcdc_efficiency");
  strcpy(&qword_27C2C30, "drive_train_efficiency");
  HIBYTE(word_27C2C46) = 22;
  operator new();
}

void sub_1119300(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C2C46) < 0)
  {
    sub_21E8394();
  }

  sub_21E83A0();
  _Unwind_Resume(a1);
}

void sub_1119320()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v13 = v12;
  v14 = sub_3AF2A4(v1, v9 + 424);
  v15 = sub_3AF2A4(v2, v10 + 448);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (*(v10 + 419) == 1)
  {
    v36 = sub_1119E00(&v35, v11);
    sub_F977FC(v35, v71);
    v70[1] = 0;
    v70[0] = v2;
    sub_F76B14(v68, v8, v6, v4, v15, v14);
    v68[16] = 257;
    v69 = 1;
    sub_F76B2C(v57, v68, v70);
    sub_10B73A8(v54, v2, 0);
    sub_F76B90(v57, v71, v54, v43);
    sub_110AF30(v38, v70);
    v34 = v6;
    sub_110AF4C(v38, v43, v71, &v35, v13);
    v16 = __p;
    if (__p)
    {
      v17 = v42;
      v18 = __p;
      if (v42 != __p)
      {
        do
        {
          v19 = *(v17 - 3);
          if (v19)
          {
            *(v17 - 2) = v19;
            operator delete(v19);
          }

          v20 = *(v17 - 14);
          if (v20)
          {
            *(v17 - 13) = v20;
            operator delete(v20);
          }

          v21 = *(v17 - 24);
          if (v21)
          {
            *(v17 - 23) = v21;
            operator delete(v21);
          }

          v17 -= 208;
        }

        while (v17 != v16);
        v18 = __p;
      }

      v42 = v16;
      operator delete(v18);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    if (v43[0])
    {
      v43[1] = v43[0];
      operator delete(v43[0]);
    }

    if (v56 == 1)
    {
      sub_3E3DF0(v55);
    }

    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }

    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    sub_360988(&v74);
    v23 = 126;
    do
    {
      v24 = &v71[v23];
      v23 -= 6;
      v25 = *(v24 - 3);
      if (v25)
      {
        v26 = 0;
        v27 = 0;
        v28 = v24 - 5;
        do
        {
          if ((*(v71[v23] + v27) & 0x80000000) == 0)
          {
            v29 = *v28 + v26;
            v30 = *(v29 + 8);
            if (v30)
            {
              *(v29 + 16) = v30;
              operator delete(v30);
              v25 = *(v24 - 3);
            }
          }

          ++v27;
          v26 += 32;
        }

        while (v27 != v25);
        operator delete(v71[v23]);
        v71[v23] = &unk_2290750;
        *(v24 - 1) = 0;
        *(v24 - 4) = 0;
        *(v24 - 3) = 0;
        *v28 = 0;
      }
    }

    while (v23 != 30);
    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    sub_F96228(v71);
    v6 = v34;
    if ((*(v10 + 419) & 1) == 0)
    {
LABEL_55:
      if (v6)
      {
        v31 = 0x7FFFFFFF;
      }

      else
      {
        v31 = v8;
      }

      LODWORD(v71[0]) = v31;
      bzero(v54, 0x208uLL);
      sub_787F9C(v54);
    }
  }

  else
  {
    sub_1107E04(v13, v11, v2);
    if ((*(v10 + 419) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  v22 = v35;
  if (v35)
  {
    v32 = v36;
    v33 = v35;
    if (v36 != v35)
    {
      do
      {
        v32 = sub_FE90B8(v32 - 308);
      }

      while (v32 != v22);
      v33 = v35;
    }

    v36 = v22;
    operator delete(v33);
  }
}

void sub_111977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  sub_1119FCC(&a17);
  sub_3EE920(&a25);
  if (LOBYTE(STACK[0x1620]) == 1)
  {
    sub_3E3DF0(&a53);
  }

  sub_10C5750(&STACK[0x1640]);
  sub_F96138(&STACK[0x1768]);
  sub_FE0750(&a14);
  _Unwind_Resume(a1);
}

void sub_1119838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_FE0750(va);
  _Unwind_Resume(a1);
}

void sub_111984C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v36 = v3;
  v34 = v5;
  v35 = v4;
  v7 = v6;
  v8 = v0;
  v31 = v9;
  v33 = sub_3AF2A4(v1, v6 + 424);
  v37 = v2;
  v32 = sub_3AF2A4(v2, v7 + 448);
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v10 = v8[1] - *v8;
  if (v10)
  {
    if ((0x4FCACE213F2B3885 * (v10 >> 5)) < 0x24E6A171024E6BLL)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = *v8;
  v11 = v8[1];
  if (*v8 != v11)
  {
    do
    {
      sub_F977FC(v12, v54);
      if (v75 >= v76)
      {
        v13 = sub_111A200(&v74, v54);
      }

      else
      {
        v13 = sub_111A070(v75, v54) + 222;
      }

      v75 = v13;
      sub_360988(v58);
      v14 = 126;
      do
      {
        v15 = &v54[v14];
        v14 -= 6;
        v16 = v15[-3];
        if (v16)
        {
          v17 = 0;
          v18 = 0;
          v19 = v15 - 5;
          do
          {
            if ((*(*&v54[v14] + v18) & 0x80000000) == 0)
            {
              v20 = *v19 + v17;
              v21 = *(v20 + 8);
              if (v21)
              {
                *(v20 + 16) = v21;
                operator delete(v21);
                v16 = v15[-3];
              }
            }

            ++v18;
            v17 += 32;
          }

          while (v18 != *&v16);
          operator delete(*&v54[v14]);
          v54[v14] = &unk_2290750;
          v15[-1] = 0;
          v15[-4] = 0;
          v15[-3] = 0;
          *v19 = 0;
        }
      }

      while (v14 != 30);
      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      sub_F96228(v54);
      v12 += 2464;
    }

    while (v12 != v11);
  }

  sub_F94434(v73, &v74);
  v72[1] = 0;
  v72[0] = v37;
  sub_F76B14(v70, v35, v34, v36, v32, v33);
  v70[16] = 257;
  v71 = 1;
  sub_F76B2C(v59, v70, v72);
  sub_10B73A8(v54, v37, 0);
  sub_F789B8(v59, v73, v54, v43);
  sub_110AF30(v38, v72);
  sub_110D034(v38, v43, v73, v8, v31);
  v22 = v41;
  if (v41)
  {
    v23 = v42;
    v24 = v41;
    if (v42 != v41)
    {
      do
      {
        v25 = *(v23 - 3);
        if (v25)
        {
          *(v23 - 2) = v25;
          operator delete(v25);
        }

        v26 = *(v23 - 14);
        if (v26)
        {
          *(v23 - 13) = v26;
          operator delete(v26);
        }

        v27 = *(v23 - 24);
        if (v27)
        {
          *(v23 - 23) = v27;
          operator delete(v27);
        }

        v23 -= 208;
      }

      while (v23 != v22);
      v24 = v41;
    }

    v42 = v22;
    operator delete(v24);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v43[0])
  {
    v43[1] = v43[0];
    operator delete(v43[0]);
  }

  if (v58[4376] == 1)
  {
    sub_3E3DF0(v55);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  sub_10C57C4(v73);
  v28 = v74;
  if (v74)
  {
    v29 = v75;
    v30 = v74;
    if (v75 != v74)
    {
      do
      {
        v29 -= 222;
        sub_F96138(v29);
      }

      while (v29 != v28);
      v30 = v74;
    }

    v75 = v28;
    operator delete(v30);
  }
}

void sub_1119D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_1119FCC(&a16);
  sub_3EE920(&a24);
  if (LOBYTE(STACK[0x1618]) == 1)
  {
    sub_3E3DF0(&a52);
  }

  sub_10C5750(&STACK[0x1638]);
  sub_10C57C4(&STACK[0x1760]);
  sub_10C52B0((v52 - 112));
  _Unwind_Resume(a1);
}

void sub_1119DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_F96138(&a43);
  sub_10C52B0((v43 - 112));
  _Unwind_Resume(a1);
}

void sub_1119DE0(void *a1)
{
  if (a1[1] - *a1 == 2464)
  {
    sub_1119320();
  }

  else
  {
    sub_111984C();
  }
}

uint64_t sub_1119E00(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1A98EF606A63BDLL)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 5);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 5)) >= 0xD4C77B03531DELL)
  {
    v5 = 0x1A98EF606A63BDLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1A98EF606A63BDLL)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 32 * ((a1[1] - *a1) >> 5);
  sub_FE5E88(v15, a2);
  v6 = 2464 * v2 + 2464;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v15 + v9;
    do
    {
      sub_FE5E88(v13, v12);
      v12 += 2464;
      v13 += 2464;
      v11 -= 2464;
    }

    while (v12 != v8);
    do
    {
      sub_FE90B8(v7);
      v7 += 308;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_1119F8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_FE9064(va);
  _Unwind_Resume(a1);
}

void sub_1119FA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v3)
  {
    v5 = (v2 - 2464);
    do
    {
      v5 = sub_FE90B8(v5) - 308;
      v3 += 2464;
    }

    while (v3);
  }

  sub_FE9064(va);
  _Unwind_Resume(a1);
}

void *sub_1119FCC(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 112);
        if (v6)
        {
          *(v3 - 104) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 192);
        if (v7)
        {
          *(v3 - 184) = v7;
          operator delete(v7);
        }

        v3 -= 208;
      }

      while (v3 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v8 = a1[2];
  if (v8)
  {
    a1[3] = v8;
    operator delete(v8);
  }

  return a1;
}

void *sub_111A070(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *(a1 + 3) = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  *(a1 + 9) = *(a2 + 72);
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  *(a1 + 6) = *(a2 + 96);
  a1[14] = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  *(a1 + 15) = *(a2 + 120);
  a1[17] = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  a1[18] = 0;
  a1[19] = 0;
  a1[20] = 0;
  *(a1 + 9) = *(a2 + 144);
  a1[20] = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  a1[21] = 0;
  a1[22] = 0;
  a1[23] = 0;
  *(a1 + 21) = *(a2 + 168);
  a1[23] = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  a1[24] = 0;
  a1[25] = 0;
  a1[26] = 0;
  *(a1 + 12) = *(a2 + 192);
  a1[26] = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  *(a1 + 27) = *(a2 + 216);
  a1[29] = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  sub_10734F8((a1 + 30), a2 + 240);
  sub_FEA5FC((a1 + 126), a2 + 1008);
  return a1;
}

uint64_t sub_111A200(uint64_t *a1, uint64_t a2)
{
  v2 = 0xB195E8EFDB195E8FLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x24E6A171024E6ALL)
  {
    sub_1794();
  }

  if (0x632BD1DFB632BD1ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x632BD1DFB632BD1ELL * ((a1[2] - *a1) >> 4);
  }

  if (0xB195E8EFDB195E8FLL * ((a1[2] - *a1) >> 4) >= 0x127350B8812735)
  {
    v5 = 0x24E6A171024E6ALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x24E6A171024E6ALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (16 * ((a1[1] - *a1) >> 4));
  sub_111A070(v6, a2);
  v7 = 1776 * v2 + 1776;
  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = sub_111A070(v12, v11);
      v11 += 1776;
      v12 = v13 + 222;
    }

    while (v11 != v9);
    do
    {
      sub_F96138(v8);
      v8 += 1776;
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

void sub_111A364()
{
  byte_27C2CA7 = 3;
  LODWORD(qword_27C2C90) = 5136193;
  byte_27C2CBF = 3;
  LODWORD(qword_27C2CA8) = 5136194;
  byte_27C2CD7 = 3;
  LODWORD(qword_27C2CC0) = 5136195;
  byte_27C2CEF = 15;
  strcpy(&qword_27C2CD8, "vehicle_mass_kg");
  byte_27C2D07 = 21;
  strcpy(&xmmword_27C2CF0, "vehicle_cargo_mass_kg");
  byte_27C2D1F = 19;
  strcpy(&qword_27C2D08, "vehicle_aux_power_w");
  byte_27C2D37 = 15;
  strcpy(&qword_27C2D20, "dcdc_efficiency");
  strcpy(&qword_27C2D38, "drive_train_efficiency");
  HIBYTE(word_27C2D4E) = 22;
  operator new();
}

void sub_111A540(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C2D4E) < 0)
  {
    sub_21E8470();
  }

  sub_21E847C();
  _Unwind_Resume(a1);
}

void sub_111A580(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W4>, int a5@<W5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned __int8 a9, uint64_t a10, int a11)
{
  v17 = *(a1 + 60);
  v16 = *(a1 + 64);
  v18 = *(a1 + 72);
  v78 = 1;
  __p = &v78;
  v83 = a3;
  v19 = v17 == v16;
  v84 = v17;
  if (!v18)
  {
    v19 = 0;
  }

  v85 = v18;
  v86 = v19;
  v79 = a3;
  v80 = v16;
  v81 = 0;
  v82 = 0;
  sub_111B83C(&v83, &v79, &__p);
  if (v17 != v16 || (LODWORD(v20) = v16, v18))
  {
    v20 = *v18;
    if (*(a3[21] + 4 * v20) == 1 && v20 >= (a3[13] - a3[12]) >> 2)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v66 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
    }
  }

  if (v20 == v16)
  {
    v21 = a9;
  }

  else
  {
    v21 = 0;
  }

  sub_10F28F4(a1, a6, a7, v21, a10, a3, a2, &v83);
  sub_10F2F44(a1, a9, a10, a3, a2, &v79);
  if (!v85 || v84 == v80 && v86 == v82)
  {
    *(a8 + 8) = 0u;
    *(a8 + 56) = 0u;
    *(a8 + 40) = 0u;
    *(a8 + 72) = 0u;
    *(a8 + 24) = 0u;
    *(a8 + 152) = 0;
    *(a8 + 136) = 0u;
    *(a8 + 120) = 0u;
    *(a8 + 104) = 0u;
    *(a8 + 88) = 0u;
    *a8 = -1;
    *(a8 + 8) = -1;
    *(a8 + 48) = 0u;
    *(a8 + 64) = 0u;
    *(a8 + 16) = 0;
    *(a8 + 24) = 0;
    *(a8 + 32) = 0;
    *(a8 + 40) = 0;
    *(a8 + 80) = 0x1000000000000;
    *(a8 + 104) = 0u;
    *(a8 + 88) = 0u;
    *(a8 + 120) = -NAN;
    *(a8 + 128) = 0x7FFFFFFFFFFFFFFFLL;
    *(a8 + 136) = 0;
    *(a8 + 144) = 0;
    *(a8 + 156) = 0x7FFFFFFF;
    *(a8 + 176) = 0u;
    *(a8 + 192) = 0u;
    *(a8 + 160) = 0u;
    return;
  }

  if (!sub_10DF6B4(v85))
  {
    __p = 0;
    v76 = 0;
    v77 = 0;
    v25 = v84;
    v70 = v82;
    v71 = v80;
    if (v84 == v80 && v86 == v82)
    {
      goto LABEL_20;
    }

    v27 = v85;
    if (!v85)
    {
LABEL_48:
      v46 = sub_10E2C7C(a2);
      v47 = v46[12];
      if (v25 >= ((v46[13] - v47) >> 2))
      {
        v67 = __cxa_allocate_exception(0x40uLL);
        v68 = sub_2D390(v67, "vertex id out of range", 0x16uLL);
      }

      v48 = *(v47 + 4 * v25);
      if (v48 == -1)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v49 = (v46[15] + 176 * v48);
        if (sub_10DF6A4(v49))
        {
          v50 = sub_3F80(v49);
          if (v50 == v80)
          {
            break;
          }
        }

        v48 = *(v46[18] + 4 * v48);
        if (v48 == -1)
        {
          goto LABEL_50;
        }
      }

      v52 = __p;
      v51 = v76;
      if (__p != v76)
      {
        v53 = *(v76 - 1);
        v54 = *(v53 + 72);
        v55 = *(v53 + 80);
        v56 = *(v53 + 88);
        v57 = sub_10DF6C4(v46[15] + 176 * v48);
        if (((((v54 >> 16) & 0xFFFF0000 | (v54 << 32) | (2 * ((v54 & 0xFF000000000000) == 0))) + ((v55 >> 14) & 0x3FFFC)) & 0xFFFFFFFFFFFFFFFELL | (v56 >> 1) & 1) != ((((*(v57 + 32) >> 16) & 0xFFFF0000 | (*(v57 + 32) << 32) | (2 * ((*(v57 + 32) & 0xFF000000000000) == 0))) + 4 * *(v57 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v57 + 88) & 1))
        {
LABEL_50:
          *(a8 + 8) = 0u;
          *(a8 + 56) = 0u;
          *(a8 + 40) = 0u;
          *(a8 + 72) = 0u;
          *(a8 + 24) = 0u;
          *(a8 + 152) = 0;
          *(a8 + 136) = 0u;
          *(a8 + 120) = 0u;
          *(a8 + 104) = 0u;
          *(a8 + 88) = 0u;
          *a8 = -1;
          *(a8 + 8) = -1;
          *(a8 + 48) = 0u;
          *(a8 + 64) = 0u;
          *(a8 + 16) = 0;
          *(a8 + 24) = 0;
          *(a8 + 32) = 0;
          *(a8 + 40) = 0;
          *(a8 + 80) = 0x1000000000000;
          *(a8 + 104) = 0u;
          *(a8 + 88) = 0u;
          *(a8 + 120) = -NAN;
          *(a8 + 128) = 0x7FFFFFFFFFFFFFFFLL;
          *(a8 + 136) = 0;
          *(a8 + 144) = 0;
          *(a8 + 156) = 0x7FFFFFFF;
          *(a8 + 176) = 0u;
          *(a8 + 192) = 0u;
          *(a8 + 160) = 0u;
          v26 = __p;
          if (!__p)
          {
            return;
          }

LABEL_21:
          v76 = v26;
          operator delete(v26);
          return;
        }
      }

      v58 = sub_10DF6C4(v46[15] + 176 * v48);
      if (v51 >= v77)
      {
        v59 = (v51 - v52) >> 3;
        v60 = v59 + 1;
        if ((v59 + 1) >> 61)
        {
          sub_1794();
        }

        v61 = v77 - v52;
        if ((v77 - v52) >> 2 > v60)
        {
          v60 = v61 >> 2;
        }

        if (v61 >= 0x7FFFFFFFFFFFFFF8)
        {
          v62 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v62 = v60;
        }

        if (v62)
        {
          if (!(v62 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v59) = v58;
        memcpy(0, v52, v51 - v52);
        __p = 0;
        v77 = 0;
        if (v52)
        {
          operator delete(v52);
        }

        v76 = (8 * v59 + 8);
      }

      else
      {
        *v51 = v58;
        v76 = v51 + 1;
      }

LABEL_20:
      sub_1109B28(a8, a11, a4, a5, &__p, v85 + 14, (a1 + 8), (a1 + 24), *(a1 + 32), v85 + 18, *(a1 + 40) >= *(a1 + 16), *(a1 + 48) + *(a1 + 40) >= *(a1 + 16), v69, *(a1 + 56), *(a1 + 40), *(a1 + 48), v85 + 19);
      v26 = __p;
      if (!__p)
      {
        return;
      }

      goto LABEL_21;
    }

    v28 = v83;
    while (1)
    {
      if (__p != v76)
      {
        v29 = *(v76 - 1);
        v30 = *(v29 + 72);
        v31 = *(v29 + 80);
        v32 = *(v29 + 88);
        v33 = sub_10DF6C4(v27);
        if (((((v30 >> 16) & 0xFFFF0000 | (v30 << 32) | (2 * ((v30 & 0xFF000000000000) == 0))) + ((v31 >> 14) & 0x3FFFC)) & 0xFFFFFFFFFFFFFFFELL | (v32 >> 1) & 1) != ((((*(v33 + 32) >> 16) & 0xFFFF0000 | (*(v33 + 32) << 32) | (2 * ((*(v33 + 32) & 0xFF000000000000) == 0))) + 4 * *(v33 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v33 + 88) & 1))
        {
          goto LABEL_50;
        }
      }

      v34 = sub_10DF6C4(v27);
      v35 = v76;
      if (v76 >= v77)
      {
        v37 = __p;
        v38 = v76 - __p;
        v39 = (v76 - __p) >> 3;
        v40 = v39 + 1;
        if ((v39 + 1) >> 61)
        {
          sub_1794();
        }

        v41 = v77 - __p;
        if ((v77 - __p) >> 2 > v40)
        {
          v40 = v41 >> 2;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF8)
        {
          v42 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          if (!(v42 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v43 = (8 * v39);
        *v43 = v34;
        v36 = v43 + 1;
        memcpy(0, v37, v38);
        __p = 0;
        v77 = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v76 = v34;
        v36 = v35 + 1;
      }

      v76 = v36;
      v44 = sub_3F80(v27);
      v25 = v44;
      if (*(v28[21] + 4 * v44) == 1)
      {
        v45 = v28[12];
        if (v44 >= ((v28[13] - v45) >> 2))
        {
          v63 = __cxa_allocate_exception(0x40uLL);
          v64 = sub_2D390(v63, "vertex id out of range", 0x16uLL);
        }

        v27 = (v28[15] + 176 * *(v45 + 4 * v44));
        if (v44 != v71)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v27 = 0;
        if (v44 != v71)
        {
          goto LABEL_25;
        }
      }

      if (!v70)
      {
        goto LABEL_20;
      }

LABEL_25:
      if (!v27)
      {
        goto LABEL_48;
      }
    }
  }

  __p = 0;
  v76 = 0;
  v77 = 0;
  sub_1109B28(a8, a11, a4, a5, &__p, v85 + 14, (a1 + 8), (a1 + 24), *(a1 + 32), v85 + 18, *(a1 + 40) >= *(a1 + 16), *(a1 + 48) + *(a1 + 40) >= *(a1 + 16), v69, *(a1 + 56), *(a1 + 40), *(a1 + 48), v85 + 19);
  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  v22 = sub_10DF708(v85);
  v23 = *v22;
  v24 = *(v22 + 16);
  *(a8 + 80) = *(v22 + 32);
  *(a8 + 48) = v23;
  *(a8 + 64) = v24;
  *(a8 + 88) = *sub_10DF6E4(v85);
}

void sub_111ADB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_111AE34(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W4>, int a5@<W5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned __int8 a9, uint64_t a10, int a11)
{
  v16 = *(a1 + 60);
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);
  v76 = 1;
  __p = &v76;
  v81 = a3;
  v19 = v16 == v17;
  v82 = v16;
  if (!v18)
  {
    v19 = 0;
  }

  v83 = v18;
  v84 = v19;
  v77 = a3;
  v78 = v17;
  v79 = 0;
  v80 = 0;
  sub_111BA08(&v81, &v77, &__p);
  if (v16 != v17 || (v20 = v17, v18))
  {
    v20 = *v18;
    if (sub_F94B2C(a3, *v18) == 1)
    {
      sub_F9495C(a3, v20, &v81);
    }
  }

  if (v20 == v17)
  {
    v21 = a9;
  }

  else
  {
    v21 = 0;
  }

  sub_10F2C1C(a1, a6, a7, v21, a10, a3, a2, &v81);
  sub_10F30BC(a1, a9, a10, a3, a2, &v77);
  if (!v83 || v82 == v78 && v84 == v80)
  {
    *(a8 + 8) = 0u;
    *(a8 + 56) = 0u;
    *(a8 + 40) = 0u;
    *(a8 + 72) = 0u;
    *(a8 + 24) = 0u;
    *(a8 + 152) = 0;
    *(a8 + 136) = 0u;
    *(a8 + 120) = 0u;
    *(a8 + 104) = 0u;
    *(a8 + 88) = 0u;
    *a8 = -1;
    *(a8 + 8) = -1;
    *(a8 + 48) = 0u;
    *(a8 + 64) = 0u;
    *(a8 + 16) = 0;
    *(a8 + 24) = 0;
    *(a8 + 32) = 0;
    *(a8 + 40) = 0;
    *(a8 + 80) = 0x1000000000000;
    *(a8 + 104) = 0u;
    *(a8 + 88) = 0u;
    *(a8 + 120) = -NAN;
    *(a8 + 128) = 0x7FFFFFFFFFFFFFFFLL;
    *(a8 + 136) = 0;
    *(a8 + 144) = 0;
    *(a8 + 156) = 0x7FFFFFFF;
    *(a8 + 176) = 0u;
    *(a8 + 192) = 0u;
    *(a8 + 160) = 0u;
    return;
  }

  if (!sub_10DF6B4(v83))
  {
    __p = 0;
    v74 = 0;
    v75 = 0;
    v25 = v82;
    v68 = v80;
    v69 = v78;
    if (v82 == v78 && v84 == v80)
    {
      goto LABEL_20;
    }

    v27 = v83;
    if (!v83)
    {
LABEL_48:
      v46 = sub_10E2C7C(a2);
      v47 = v46[12];
      if (v25 >= ((v46[13] - v47) >> 2))
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v66 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v48 = *(v47 + 4 * v25);
      if (v48 == -1)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v49 = (v46[15] + 176 * v48);
        if (sub_10DF6A4(v49))
        {
          v50 = sub_3F80(v49);
          if (v50 == v78)
          {
            break;
          }
        }

        v48 = *(v46[18] + 4 * v48);
        if (v48 == -1)
        {
          goto LABEL_50;
        }
      }

      v51 = __p;
      v52 = v74;
      if (__p != v74)
      {
        v53 = *(v74 - 1);
        v54 = *(v53 + 72);
        v55 = *(v53 + 80);
        v56 = *(v53 + 88);
        v57 = sub_10DF6C4(v46[15] + 176 * v48);
        if (((((v54 >> 16) & 0xFFFF0000 | (v54 << 32) | (2 * ((v54 & 0xFF000000000000) == 0))) + ((v55 >> 14) & 0x3FFFC)) & 0xFFFFFFFFFFFFFFFELL | (v56 >> 1) & 1) != ((((*(v57 + 32) >> 16) & 0xFFFF0000 | (*(v57 + 32) << 32) | (2 * ((*(v57 + 32) & 0xFF000000000000) == 0))) + 4 * *(v57 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v57 + 88) & 1))
        {
LABEL_50:
          *(a8 + 8) = 0u;
          *(a8 + 56) = 0u;
          *(a8 + 40) = 0u;
          *(a8 + 72) = 0u;
          *(a8 + 24) = 0u;
          *(a8 + 152) = 0;
          *(a8 + 136) = 0u;
          *(a8 + 120) = 0u;
          *(a8 + 104) = 0u;
          *(a8 + 88) = 0u;
          *a8 = -1;
          *(a8 + 8) = -1;
          *(a8 + 48) = 0u;
          *(a8 + 64) = 0u;
          *(a8 + 16) = 0;
          *(a8 + 24) = 0;
          *(a8 + 32) = 0;
          *(a8 + 40) = 0;
          *(a8 + 80) = 0x1000000000000;
          *(a8 + 104) = 0u;
          *(a8 + 88) = 0u;
          *(a8 + 120) = -NAN;
          *(a8 + 128) = 0x7FFFFFFFFFFFFFFFLL;
          *(a8 + 136) = 0;
          *(a8 + 144) = 0;
          *(a8 + 156) = 0x7FFFFFFF;
          *(a8 + 176) = 0u;
          *(a8 + 192) = 0u;
          *(a8 + 160) = 0u;
          v26 = __p;
          if (!__p)
          {
            return;
          }

LABEL_21:
          v74 = v26;
          operator delete(v26);
          return;
        }
      }

      v58 = sub_10DF6C4(v46[15] + 176 * v48);
      if (v52 >= v75)
      {
        v59 = (v52 - v51) >> 3;
        v60 = v59 + 1;
        if ((v59 + 1) >> 61)
        {
          sub_1794();
        }

        v61 = v75 - v51;
        if ((v75 - v51) >> 2 > v60)
        {
          v60 = v61 >> 2;
        }

        if (v61 >= 0x7FFFFFFFFFFFFFF8)
        {
          v62 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v62 = v60;
        }

        if (v62)
        {
          if (!(v62 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v59) = v58;
        memcpy(0, v51, v52 - v51);
        __p = 0;
        v75 = 0;
        if (v51)
        {
          operator delete(v51);
        }

        v74 = (8 * v59 + 8);
      }

      else
      {
        *v52 = v58;
        v74 = v52 + 1;
      }

LABEL_20:
      sub_1109B28(a8, a11, a4, a5, &__p, v83 + 14, (a1 + 8), (a1 + 24), *(a1 + 32), v83 + 18, *(a1 + 40) >= *(a1 + 16), *(a1 + 48) + *(a1 + 40) >= *(a1 + 16), v67, *(a1 + 56), *(a1 + 40), *(a1 + 48), v83 + 19);
      v26 = __p;
      if (!__p)
      {
        return;
      }

      goto LABEL_21;
    }

    v28 = v81;
    while (1)
    {
      if (__p != v74)
      {
        v29 = *(v74 - 1);
        v30 = *(v29 + 72);
        v31 = *(v29 + 80);
        v32 = *(v29 + 88);
        v33 = sub_10DF6C4(v27);
        if (((((v30 >> 16) & 0xFFFF0000 | (v30 << 32) | (2 * ((v30 & 0xFF000000000000) == 0))) + ((v31 >> 14) & 0x3FFFC)) & 0xFFFFFFFFFFFFFFFELL | (v32 >> 1) & 1) != ((((*(v33 + 32) >> 16) & 0xFFFF0000 | (*(v33 + 32) << 32) | (2 * ((*(v33 + 32) & 0xFF000000000000) == 0))) + 4 * *(v33 + 80)) & 0xFFFFFFFFFFFFFFFELL | *(v33 + 88) & 1))
        {
          goto LABEL_50;
        }
      }

      v34 = sub_10DF6C4(v27);
      v35 = v74;
      if (v74 >= v75)
      {
        v37 = __p;
        v38 = v74 - __p;
        v39 = (v74 - __p) >> 3;
        v40 = v39 + 1;
        if ((v39 + 1) >> 61)
        {
          sub_1794();
        }

        v41 = v75 - __p;
        if ((v75 - __p) >> 2 > v40)
        {
          v40 = v41 >> 2;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF8)
        {
          v42 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          if (!(v42 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v43 = (8 * v39);
        *v43 = v34;
        v36 = v43 + 1;
        memcpy(0, v37, v38);
        __p = 0;
        v75 = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v74 = v34;
        v36 = v35 + 1;
      }

      v74 = v36;
      v44 = sub_3F80(v27);
      v25 = v44;
      if (*(v28[21] + 4 * v44) == 1)
      {
        v45 = v28[12];
        if (v44 >= ((v28[13] - v45) >> 2))
        {
          v63 = __cxa_allocate_exception(0x40uLL);
          v64 = sub_2D390(v63, "vertex id out of range", 0x16uLL);
        }

        v27 = (v28[15] + 176 * *(v45 + 4 * v44));
        if (v44 != v69)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v27 = 0;
        if (v44 != v69)
        {
          goto LABEL_25;
        }
      }

      if (!v68)
      {
        goto LABEL_20;
      }

LABEL_25:
      if (!v27)
      {
        goto LABEL_48;
      }
    }
  }

  __p = 0;
  v74 = 0;
  v75 = 0;
  sub_1109B28(a8, a11, a4, a5, &__p, v83 + 14, (a1 + 8), (a1 + 24), *(a1 + 32), v83 + 18, *(a1 + 40) >= *(a1 + 16), *(a1 + 48) + *(a1 + 40) >= *(a1 + 16), v67, *(a1 + 56), *(a1 + 40), *(a1 + 48), v83 + 19);
  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

  v22 = sub_10DF708(v83);
  v23 = *v22;
  v24 = *(v22 + 16);
  *(a8 + 80) = *(v22 + 32);
  *(a8 + 48) = v23;
  *(a8 + 64) = v24;
  *(a8 + 88) = *sub_10DF6E4(v83);
}

void sub_111B638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_111B698(unsigned int a1, void *a2)
{
  v4 = a1;
  sub_4DCC98(a2, a1);
  v5 = a1 + 1;
  if (v5 >= (a2[7] - a2[6]) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v8 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  return (*(*a2 + 4 * v5) - *(*a2 + 4 * v4));
}

__n128 sub_111B7BC@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_11061C0(a3);
  *v5 = a1;
  *(v5 + 8) = *(a2 + 8);
  v6 = *(a2 + 64);
  *(v5 + 48) = *(a2 + 48);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a2 + 80);
  *(v5 + 95) = *(a2 + 95);
  v7 = *(a2 + 32);
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 32) = v7;
  *(v5 + 104) = *(a2 + 104);
  *(v5 + 191) = *(a2 + 191);
  v8 = *(a2 + 176);
  *(v5 + 160) = *(a2 + 160);
  *(v5 + 176) = v8;
  result = *(a2 + 128);
  v10 = *(a2 + 144);
  *(v5 + 128) = result;
  *(v5 + 144) = v10;
  *(v5 + 112) = *(a2 + 112);
  return result;
}

uint64_t sub_111B83C(uint64_t result, uint64_t a2, char **a3)
{
  if (*(result + 8) != *(a2 + 8) || *(result + 24) != *(a2 + 24))
  {
    v3 = *result;
    v4 = *(result + 16);
    v5 = *v4;
    *(result + 8) = v5;
    *(result + 24) = 0;
    v6 = v3[21];
    if (*(v6 + 4 * v5) == 1)
    {
      v7 = v3[12];
      if (v5 >= (v3[13] - v7) >> 2)
      {
LABEL_20:
        exception = __cxa_allocate_exception(0x40uLL);
        v15 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v8 = (v3[15] + 104 * *(v7 + 4 * v5));
    }

    else
    {
      v8 = 0;
    }

    *(result + 16) = v8;
    v9 = *a3;
    while (1)
    {
      while (1)
      {
        if (v5 == *(a2 + 8) && !*(a2 + 24))
        {
          return result;
        }

        v10 = *v9;
        if (((((*(v4 + 10) >> 16) & 0xFFFF0000 | (*(v4 + 10) << 32) | (2 * ((*(v4 + 10) & 0xFF000000000000) == 0))) + 4 * *(v4 + 45)) & 0xFFFFFFFFFFFFFFFELL | (*(v4 + 96) >> 1) & 1) != ((((*(v8 + 5) >> 16) & 0xFFFF0000 | (*(v8 + 5) << 32) | (2 * ((*(v8 + 5) & 0xFF000000000000) == 0))) + 4 * v8[22]) & 0xFFFFFFFFFFFFFFFELL | v8[24] & 1))
        {
          v10 = 0;
        }

        *v9 = v10;
        v5 = *v8;
        *(result + 8) = v5;
        *(result + 24) = 0;
        if (*(v6 + 4 * v5) == 1)
        {
          break;
        }

        v8 = 0;
        *(result + 16) = 0;
        v12 = *v4;
        v4 = 0;
        if (*(v6 + 4 * v12) == 1)
        {
          goto LABEL_18;
        }
      }

      v11 = v3[12];
      if (v5 >= (v3[13] - v11) >> 2)
      {
        goto LABEL_20;
      }

      v8 = (v3[15] + 104 * *(v11 + 4 * v5));
      *(result + 16) = v8;
      v12 = *v4;
      v4 = 0;
      if (*(v6 + 4 * v12) == 1)
      {
LABEL_18:
        v13 = v3[12];
        if (v12 >= (v3[13] - v13) >> 2)
        {
          goto LABEL_20;
        }

        v4 = (v3[15] + 104 * *(v13 + 4 * v12));
      }
    }
  }

  return result;
}

uint64_t sub_111BA08(uint64_t result, uint64_t a2, char **a3)
{
  v5 = result;
  if (*(result + 8) != *(a2 + 8) || *(result + 24) != *(a2 + 24))
  {
    v6 = *result;
    v7 = *(result + 16);
    v8 = *v7;
    *(result + 8) = *v7;
    *(result + 24) = 0;
    result = sub_F94B2C(v6, v8);
    if (result == 1)
    {
      result = sub_F9495C(*v5, *(v5 + 2), v15);
      v9 = *v15[0] + 104 * v16;
    }

    else
    {
      v9 = 0;
    }

    for (v5[2] = v9; *(v5 + 2) != *(a2 + 8); v7 = 0)
    {
      while (1)
      {
LABEL_11:
        v10 = v5[2];
        v11 = **a3;
        if (((((*(v7 + 80) >> 16) & 0xFFFF0000 | (*(v7 + 80) << 32) | (2 * ((*(v7 + 80) & 0xFF000000000000) == 0))) + 4 * *(v7 + 90)) & 0xFFFFFFFFFFFFFFFELL | (*(v7 + 96) >> 1) & 1) != ((((v10[5] >> 16) & 0xFFFF0000 | (v10[5] << 32) | (2 * ((v10[5] & 0xFF000000000000) == 0))) + 4 * *(v10 + 22)) & 0xFFFFFFFFFFFFFFFELL | v10[12] & 1))
        {
          v11 = 0;
        }

        **a3 = v11;
        v12 = *v10;
        *(v5 + 2) = *v10;
        *(v5 + 24) = 0;
        if (sub_F94B2C(*v5, v12) == 1)
        {
          sub_F9495C(*v5, *(v5 + 2), v15);
          v13 = *v15[0] + 104 * v16;
        }

        else
        {
          v13 = 0;
        }

        v5[2] = v13;
        v14 = *v7;
        result = sub_F94B2C(v6, v14);
        if (result != 1)
        {
          break;
        }

        result = sub_F9495C(v6, v14, v15);
        v7 = *v15[0] + 104 * v16;
        if (*(v5 + 2) == *(a2 + 8))
        {
          goto LABEL_10;
        }
      }
    }

LABEL_10:
    if (*(v5 + 24) != *(a2 + 24))
    {
      goto LABEL_11;
    }
  }

  return result;
}

void sub_111BC00()
{
  byte_27C2DAF = 3;
  LODWORD(qword_27C2D98) = 5136193;
  byte_27C2DC7 = 3;
  LODWORD(qword_27C2DB0) = 5136194;
  byte_27C2DDF = 3;
  LODWORD(qword_27C2DC8) = 5136195;
  byte_27C2DF7 = 15;
  strcpy(&qword_27C2DE0, "vehicle_mass_kg");
  byte_27C2E0F = 21;
  strcpy(&xmmword_27C2DF8, "vehicle_cargo_mass_kg");
  byte_27C2E27 = 19;
  strcpy(&qword_27C2E10, "vehicle_aux_power_w");
  byte_27C2E3F = 15;
  strcpy(&qword_27C2E28, "dcdc_efficiency");
  strcpy(&qword_27C2E40, "drive_train_efficiency");
  HIBYTE(word_27C2E56) = 22;
  operator new();
}

void sub_111BDDC(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C2E56) < 0)
  {
    sub_21E854C();
  }

  sub_21E8558();
  _Unwind_Resume(a1);
}

uint64_t *sub_111BDFC(uint64_t *a1)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v2 = sub_58218(a1, &v7);
  if ((*(v2 + *(*v2 - 24) + 32) & 5) == 0)
  {
    if (v9 >= 0)
    {
      v4 = &v7;
    }

    else
    {
      v4 = v7;
    }

    if (v9 >= 0)
    {
      v5 = HIBYTE(v9);
    }

    else
    {
      v5 = v8;
    }

    sub_2419C(v4, v5, 0x2Cu, &__p);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v7);
  }

  return a1;
}

void sub_111BF68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if ((a17 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_111BFBC(uint64_t *a1)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v2 = sub_58218(a1, &v7);
  if ((*(v2 + *(*v2 - 24) + 32) & 5) == 0)
  {
    if (v9 >= 0)
    {
      v4 = &v7;
    }

    else
    {
      v4 = v7;
    }

    if (v9 >= 0)
    {
      v5 = HIBYTE(v9);
    }

    else
    {
      v5 = v8;
    }

    sub_2419C(v4, v5, 0x2Cu, &__p);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v7);
  }

  return a1;
}

void sub_111C128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if ((a17 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_111C17C(uint64_t *a1)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v2 = sub_58218(a1, &v7);
  if ((*(v2 + *(*v2 - 24) + 32) & 5) == 0)
  {
    if (v9 >= 0)
    {
      v4 = &v7;
    }

    else
    {
      v4 = v7;
    }

    if (v9 >= 0)
    {
      v5 = HIBYTE(v9);
    }

    else
    {
      v5 = v8;
    }

    sub_2419C(v4, v5, 0x2Cu, &__p);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v7);
  }

  return a1;
}

void sub_111C2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if ((a17 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_111C33C(uint64_t *a1, _BYTE *a2)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  v4 = sub_58218(a1, &__p);
  if ((*(v4 + *(*v4 - 24) + 32) & 5) == 0)
  {
    if (SHIBYTE(v14) < 0)
    {
      if (v13 == 4 && *__p == 1162760014)
      {
        goto LABEL_36;
      }

      if (v13 != 3 || (*__p == 20300 ? (v6 = *(__p + 2) == 87) : (v6 = 0), !v6))
      {
        if (v13 != 4 || *__p != 1212631368)
        {
          if (v13 == 9)
          {
            p_p = __p;
            goto LABEL_18;
          }

LABEL_33:
          std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
          goto LABEL_34;
        }

LABEL_27:
        *a2 = 2;
        if (SHIBYTE(v14) < 0)
        {
          goto LABEL_39;
        }

        return a1;
      }
    }

    else
    {
      if (HIBYTE(v14) != 3)
      {
        if (HIBYTE(v14) != 4)
        {
          if (HIBYTE(v14) == 9)
          {
            p_p = &__p;
LABEL_18:
            v7 = *p_p;
            v8 = p_p[8];
            if (v7 != 0x4544444942524F46 || v8 != 78)
            {
              goto LABEL_33;
            }

            *a2 = 3;
            if (SHIBYTE(v14) < 0)
            {
              goto LABEL_39;
            }

            return a1;
          }

          goto LABEL_33;
        }

        if (__p != 1162760014)
        {
          if (__p != 1212631368)
          {
            goto LABEL_33;
          }

          goto LABEL_27;
        }

LABEL_36:
        *a2 = 0;
        if ((SHIBYTE(v14) & 0x80000000) == 0)
        {
          return a1;
        }

        goto LABEL_39;
      }

      if (__p != 20300 || BYTE2(__p) != 87)
      {
        goto LABEL_33;
      }
    }

    *a2 = 1;
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_39;
  }

LABEL_34:
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_39:
  operator delete(__p);
  return a1;
}

void sub_111C550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_111C56C(uint64_t a1)
{
  v11[0] = sub_111D508("!NO_CARS,NO_THRU", 16);
  v11[1] = v2;
  v11[2] = sub_111D508("!NO_THRU", 8);
  v11[3] = v3;
  v12 = 2;
  v13 = sub_111D508("!NO_CARS,PRIVATE", 16);
  v14 = v4;
  v15 = sub_111D508("!PRIVATE", 8);
  v16 = v5;
  v17 = 1;
  v18 = sub_111D508("NO_CARS,NO_THRU", 15);
  v19 = v6;
  v20 = sub_111D508("NO_CARS,!NO_THRU", 16);
  v21 = v7;
  v22 = 2;
  v23 = sub_111D508("NO_CARS,PRIVATE", 15);
  v24 = v8;
  v25 = sub_111D508("NO_CARS,!PRIVATE", 16);
  v26 = v9;
  v27 = 1;
  return sub_111D314((a1 + 24), v11, &v28, 4uLL);
}

void sub_111C6B8(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = *a1;
  v42 = a1 + 3;
  a1[4] = a1[3];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    while (*(v3 + 8) == 5)
    {
      v6 = *v3;
      __p[23] = 15;
      strcpy(__p, "permissive_zone");
      v7 = sub_5F8FC(v6, __p);
      v8 = v7[1];
      if (*(v7 + 23) >= 0)
      {
        v9 = *(v7 + 23);
      }

      else
      {
        v7 = *v7;
        v9 = v8;
      }

      v10 = sub_111D508(v7, v9);
      v12 = v11;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      __p[23] = 16;
      strcpy(__p, "restrictive_zone");
      v13 = sub_5F8FC(v6, __p);
      v14 = v13[1];
      if (*(v13 + 23) >= 0)
      {
        v15 = *(v13 + 23);
      }

      else
      {
        v13 = *v13;
        v15 = v14;
      }

      v16 = sub_111D508(v13, v15);
      if ((__p[23] & 0x80000000) != 0)
      {
        v18 = v16;
        v19 = v17;
        operator delete(*__p);
        v17 = v19;
        v16 = v18;
      }

      *__p = v10;
      *&__p[8] = v12;
      *&__p[16] = v16;
      v44 = v17;
      sub_2C3744(a1, __p);
      v3 += 16;
      if (v3 == v4)
      {
        goto LABEL_15;
      }
    }

LABEL_35:
    sub_5AF20();
  }

LABEL_15:
  v20 = v42;
  v21 = *a3;
  v22 = a3[1];
  if (*a3 != v22)
  {
    while (*(v21 + 8) == 5)
    {
      v23 = *v21;
      __p[23] = 9;
      strcpy(__p, "from_zone");
      v24 = sub_5F8FC(v23, __p);
      v25 = v24[1];
      if (*(v24 + 23) >= 0)
      {
        v26 = *(v24 + 23);
      }

      else
      {
        v24 = *v24;
        v26 = v25;
      }

      v27 = sub_111D508(v24, v26);
      v29 = v28;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      __p[23] = 7;
      strcpy(__p, "to_zone");
      v30 = sub_5F8FC(v23, __p);
      v31 = v30[1];
      if (*(v30 + 23) >= 0)
      {
        v32 = *(v30 + 23);
      }

      else
      {
        v30 = *v30;
        v32 = v31;
      }

      v33 = sub_111D508(v30, v32);
      v35 = v34;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      __p[23] = 7;
      strcpy(__p, "penalty");
      v36 = sub_5F8FC(v23, __p);
      v37 = v36[1];
      if (*(v36 + 23) >= 0)
      {
        v38 = *(v36 + 23);
      }

      else
      {
        v36 = *v36;
        v38 = v37;
      }

      v39 = sub_111D7F8(v36, v38);
      if ((__p[23] & 0x80000000) != 0)
      {
        v40 = v39;
        operator delete(*__p);
        v39 = v40;
        v20 = v42;
      }

      *__p = v27;
      *&__p[8] = v29;
      *&__p[16] = v33;
      v44 = v35;
      v45 = v39;
      sub_111C9E8(v20, __p);
      v21 += 16;
      if (v21 == v22)
      {
        return;
      }
    }

    goto LABEL_35;
  }
}

void sub_111C9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_111C9E8(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x333333333333333)
  {
    v12 = 0x666666666666666;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 8 * ((v3 - *a1) >> 3);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 4);
  v7 = 40 * v9 + 40;
  v15 = 40 * v9 - (v3 - v8);
  memcpy((v13 - (v3 - v8)), v8, v3 - v8);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

char *sub_111CB34(uint64_t a1)
{
  v7[0] = sub_111DAEC("NO_THRU", 7);
  v7[1] = v2;
  v7[2] = sub_111DAEC("!NO_THRU", 8);
  v7[3] = v3;
  v8 = 2;
  v9 = sub_111DAEC("DANGERS", 7);
  v10 = v4;
  v11 = sub_111DAEC("!DANGERS", 8);
  v12 = v5;
  v13 = 1;
  return sub_111D314((a1 + 24), v7, &v14, 2uLL);
}

void sub_111CC10(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = *a1;
  v42 = a1 + 3;
  a1[4] = a1[3];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    while (*(v3 + 8) == 5)
    {
      v6 = *v3;
      __p[23] = 15;
      strcpy(__p, "permissive_zone");
      v7 = sub_5F8FC(v6, __p);
      v8 = v7[1];
      if (*(v7 + 23) >= 0)
      {
        v9 = *(v7 + 23);
      }

      else
      {
        v7 = *v7;
        v9 = v8;
      }

      v10 = sub_111DAEC(v7, v9);
      v12 = v11;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      __p[23] = 16;
      strcpy(__p, "restrictive_zone");
      v13 = sub_5F8FC(v6, __p);
      v14 = v13[1];
      if (*(v13 + 23) >= 0)
      {
        v15 = *(v13 + 23);
      }

      else
      {
        v13 = *v13;
        v15 = v14;
      }

      v16 = sub_111DAEC(v13, v15);
      if ((__p[23] & 0x80000000) != 0)
      {
        v18 = v16;
        v19 = v17;
        operator delete(*__p);
        v17 = v19;
        v16 = v18;
      }

      *__p = v10;
      *&__p[8] = v12;
      *&__p[16] = v16;
      v44 = v17;
      sub_2C3744(a1, __p);
      v3 += 16;
      if (v3 == v4)
      {
        goto LABEL_15;
      }
    }

LABEL_35:
    sub_5AF20();
  }

LABEL_15:
  v20 = v42;
  v21 = *a3;
  v22 = a3[1];
  if (*a3 != v22)
  {
    while (*(v21 + 8) == 5)
    {
      v23 = *v21;
      __p[23] = 9;
      strcpy(__p, "from_zone");
      v24 = sub_5F8FC(v23, __p);
      v25 = v24[1];
      if (*(v24 + 23) >= 0)
      {
        v26 = *(v24 + 23);
      }

      else
      {
        v24 = *v24;
        v26 = v25;
      }

      v27 = sub_111DAEC(v24, v26);
      v29 = v28;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      __p[23] = 7;
      strcpy(__p, "to_zone");
      v30 = sub_5F8FC(v23, __p);
      v31 = v30[1];
      if (*(v30 + 23) >= 0)
      {
        v32 = *(v30 + 23);
      }

      else
      {
        v30 = *v30;
        v32 = v31;
      }

      v33 = sub_111DAEC(v30, v32);
      v35 = v34;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      __p[23] = 7;
      strcpy(__p, "penalty");
      v36 = sub_5F8FC(v23, __p);
      v37 = v36[1];
      if (*(v36 + 23) >= 0)
      {
        v38 = *(v36 + 23);
      }

      else
      {
        v36 = *v36;
        v38 = v37;
      }

      v39 = sub_111D7F8(v36, v38);
      if ((__p[23] & 0x80000000) != 0)
      {
        v40 = v39;
        operator delete(*__p);
        v39 = v40;
        v20 = v42;
      }

      *__p = v27;
      *&__p[8] = v29;
      *&__p[16] = v33;
      v44 = v35;
      v45 = v39;
      sub_111C9E8(v20, __p);
      v21 += 16;
      if (v21 == v22)
      {
        return;
      }
    }

    goto LABEL_35;
  }
}

void sub_111CF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_111CF40(uint64_t a1)
{
  v5[0] = sub_111DDDC("NO_THRU", 7);
  v5[1] = v2;
  v5[2] = sub_111DDDC("!NO_THRU", 8);
  v5[3] = v3;
  v6 = 2;
  return sub_111D314((a1 + 24), v5, &v7, 1uLL);
}

void sub_111CFE4(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = *a1;
  v42 = a1 + 3;
  a1[4] = a1[3];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    while (*(v3 + 8) == 5)
    {
      v6 = *v3;
      __p[23] = 15;
      strcpy(__p, "permissive_zone");
      v7 = sub_5F8FC(v6, __p);
      v8 = v7[1];
      if (*(v7 + 23) >= 0)
      {
        v9 = *(v7 + 23);
      }

      else
      {
        v7 = *v7;
        v9 = v8;
      }

      v10 = sub_111DDDC(v7, v9);
      v12 = v11;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      __p[23] = 16;
      strcpy(__p, "restrictive_zone");
      v13 = sub_5F8FC(v6, __p);
      v14 = v13[1];
      if (*(v13 + 23) >= 0)
      {
        v15 = *(v13 + 23);
      }

      else
      {
        v13 = *v13;
        v15 = v14;
      }

      v16 = sub_111DDDC(v13, v15);
      if ((__p[23] & 0x80000000) != 0)
      {
        v18 = v16;
        v19 = v17;
        operator delete(*__p);
        v17 = v19;
        v16 = v18;
      }

      *__p = v10;
      *&__p[8] = v12;
      *&__p[16] = v16;
      v44 = v17;
      sub_2C3744(a1, __p);
      v3 += 16;
      if (v3 == v4)
      {
        goto LABEL_15;
      }
    }

LABEL_35:
    sub_5AF20();
  }

LABEL_15:
  v20 = v42;
  v21 = *a3;
  v22 = a3[1];
  if (*a3 != v22)
  {
    while (*(v21 + 8) == 5)
    {
      v23 = *v21;
      __p[23] = 9;
      strcpy(__p, "from_zone");
      v24 = sub_5F8FC(v23, __p);
      v25 = v24[1];
      if (*(v24 + 23) >= 0)
      {
        v26 = *(v24 + 23);
      }

      else
      {
        v24 = *v24;
        v26 = v25;
      }

      v27 = sub_111DDDC(v24, v26);
      v29 = v28;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      __p[23] = 7;
      strcpy(__p, "to_zone");
      v30 = sub_5F8FC(v23, __p);
      v31 = v30[1];
      if (*(v30 + 23) >= 0)
      {
        v32 = *(v30 + 23);
      }

      else
      {
        v30 = *v30;
        v32 = v31;
      }

      v33 = sub_111DDDC(v30, v32);
      v35 = v34;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      __p[23] = 7;
      strcpy(__p, "penalty");
      v36 = sub_5F8FC(v23, __p);
      v37 = v36[1];
      if (*(v36 + 23) >= 0)
      {
        v38 = *(v36 + 23);
      }

      else
      {
        v36 = *v36;
        v38 = v37;
      }

      v39 = sub_111D7F8(v36, v38);
      if ((__p[23] & 0x80000000) != 0)
      {
        v40 = v39;
        operator delete(*__p);
        v39 = v40;
        v20 = v42;
      }

      *__p = v27;
      *&__p[8] = v29;
      *&__p[16] = v33;
      v44 = v35;
      v45 = v39;
      sub_111C9E8(v20, __p);
      v21 += 16;
      if (v21 == v22)
      {
        return;
      }
    }

    goto LABEL_35;
  }
}

void sub_111D2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_111D314(char **a1, char *a2, char *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - result) >> 3) < a4)
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

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 3) >= a4)
  {
    v19 = a3 - a2;
    if (a3 != a2)
    {
      v20 = result;
      memmove(result, a2, v19 - 7);
      result = v20;
    }

    a1[1] = &result[v19];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 7);
      v12 = a1[1];
    }

    v15 = v12;
    if (v14 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v18 = *(v14 + 1);
        *(v16 + 4) = *(v14 + 4);
        *v16 = v17;
        *(v16 + 1) = v18;
        v14 += 40;
        v16 += 40;
        v15 += 40;
      }

      while (v14 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

uint64_t sub_111D508(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  sub_D7B0(v18);
  sub_4A5C(&v19, a1, a2);
  sub_111BDFC(v18);
  if ((*(&v21[0].__locale_ + *(v18[0] - 24)) & 5) != 0)
  {
    sub_D7B0(v16);
    v6 = sub_4A5C(v17, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/common/api/common/algorithms/StringAlgorithms.h", 124);
    sub_4A5C(v6, ":", 1);
    v7 = std::ostream::operator<<();
    v8 = sub_4A5C(v7, ":", 1);
    v9 = sub_4A5C(v8, "Failed parsing: ", 16);
    sub_4A5C(v9, a1, a2);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_DAE4(v16, v14);
    if ((v15 & 0x80u) == 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = v14[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v14[1];
    }

    v13 = sub_2D390(exception, v11, v12);
  }

  v19 = v4;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v23;
}

void sub_111D78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_DBE4(&a16);
  sub_DBE4(&a51);
  _Unwind_Resume(a1);
}

uint64_t sub_111D7F8(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  sub_D7B0(v19);
  sub_4A5C(&v20, a1, a2);
  sub_111C33C(v19, &v24);
  if ((*(&v22[0].__locale_ + *(v19[0] - 24)) & 5) != 0)
  {
    sub_D7B0(v17);
    v7 = sub_4A5C(v18, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/common/api/common/algorithms/StringAlgorithms.h", 124);
    sub_4A5C(v7, ":", 1);
    v8 = std::ostream::operator<<();
    v9 = sub_4A5C(v8, ":", 1);
    v10 = sub_4A5C(v9, "Failed parsing: ", 16);
    sub_4A5C(v10, a1, a2);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_DAE4(v17, v15);
    if ((v16 & 0x80u) == 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v15[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v13 = v16;
    }

    else
    {
      v13 = v15[1];
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  v4 = v24;
  v20 = v5;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v4;
}

void sub_111DA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_DBE4(&a15);
  sub_DBE4(&a50);
  _Unwind_Resume(a1);
}

uint64_t sub_111DAEC(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  sub_D7B0(v18);
  sub_4A5C(&v19, a1, a2);
  sub_111BFBC(v18);
  if ((*(&v21[0].__locale_ + *(v18[0] - 24)) & 5) != 0)
  {
    sub_D7B0(v16);
    v6 = sub_4A5C(v17, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/common/api/common/algorithms/StringAlgorithms.h", 124);
    sub_4A5C(v6, ":", 1);
    v7 = std::ostream::operator<<();
    v8 = sub_4A5C(v7, ":", 1);
    v9 = sub_4A5C(v8, "Failed parsing: ", 16);
    sub_4A5C(v9, a1, a2);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_DAE4(v16, v14);
    if ((v15 & 0x80u) == 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = v14[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v14[1];
    }

    v13 = sub_2D390(exception, v11, v12);
  }

  v19 = v4;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v23;
}

void sub_111DD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_DBE4(&a16);
  sub_DBE4(&a51);
  _Unwind_Resume(a1);
}

uint64_t sub_111DDDC(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  sub_D7B0(v18);
  sub_4A5C(&v19, a1, a2);
  sub_111C17C(v18);
  if ((*(&v21[0].__locale_ + *(v18[0] - 24)) & 5) != 0)
  {
    sub_D7B0(v16);
    v6 = sub_4A5C(v17, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/common/api/common/algorithms/StringAlgorithms.h", 124);
    sub_4A5C(v6, ":", 1);
    v7 = std::ostream::operator<<();
    v8 = sub_4A5C(v7, ":", 1);
    v9 = sub_4A5C(v8, "Failed parsing: ", 16);
    sub_4A5C(v9, a1, a2);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_DAE4(v16, v14);
    if ((v15 & 0x80u) == 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = v14[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v14[1];
    }

    v13 = sub_2D390(exception, v11, v12);
  }

  v19 = v4;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v23;
}

void sub_111E060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_DBE4(&a16);
  sub_DBE4(&a51);
  _Unwind_Resume(a1);
}

uint64_t *sub_111E0CC(uint64_t *a1, char *a2)
{
  __p = 0;
  v128 = 0;
  v129 = 0;
  v4 = sub_58218(a1, &__p);
  if ((*(v4 + *(*v4 - 24) + 32) & 5) == 0)
  {
    v5 = HIBYTE(v129);
    v6 = SHIBYTE(v129);
    v7 = v128;
    if (v129 >= 0)
    {
      v8 = HIBYTE(v129);
    }

    else
    {
      v8 = v128;
    }

    if (v8 == 4)
    {
      v9 = __p;
      p_p = &__p;
      if (v129 < 0)
      {
        p_p = __p;
      }

      v11 = *p_p;
      v12 = __toupper(77);
      if (v12 == __toupper(v11))
      {
        v13 = &__p;
        if (v6 < 0)
        {
          v13 = v9;
        }

        v14 = *(v13 + 1);
        v15 = __toupper(65);
        if (v15 == __toupper(v14))
        {
          v16 = &__p;
          if (v6 < 0)
          {
            v16 = v9;
          }

          v17 = *(v16 + 2);
          v18 = __toupper(73);
          if (v18 == __toupper(v17))
          {
            v19 = &__p;
            if (v6 < 0)
            {
              v19 = v9;
            }

            v20 = *(v19 + 3);
            v21 = __toupper(78);
            if (v21 == __toupper(v20))
            {
              v22 = 0;
LABEL_144:
              *a2 = v22;
              goto LABEL_146;
            }
          }
        }
      }

      v5 = HIBYTE(v129);
      v7 = v128;
      LOBYTE(v6) = HIBYTE(v129);
    }

    if ((v6 & 0x80u) == 0)
    {
      v23 = v5;
    }

    else
    {
      v23 = v7;
    }

    if (v23 == 31)
    {
      v24 = 0;
      if ((v6 & 0x80u) == 0)
      {
        v25 = &__p;
      }

      else
      {
        v25 = __p;
      }

      while (1)
      {
        v26 = v25[v24];
        v27 = __toupper(aDefaultSubTran[v24]);
        if (v27 != __toupper(v26))
        {
          break;
        }

        if (++v24 == 31)
        {
          v22 = 1;
          goto LABEL_144;
        }
      }

      v5 = HIBYTE(v129);
      v7 = v128;
      LOBYTE(v6) = HIBYTE(v129);
    }

    v28 = v6;
    if ((v6 & 0x80u) == 0)
    {
      v29 = v5;
    }

    else
    {
      v29 = v7;
    }

    if (v29 == 6)
    {
      v30 = __p;
      v31 = &__p;
      if (v28 < 0)
      {
        v31 = __p;
      }

      v32 = *v31;
      v33 = __toupper(66);
      if (v33 == __toupper(v32))
      {
        v34 = &__p;
        if (v28 < 0)
        {
          v34 = v30;
        }

        v35 = *(v34 + 1);
        v36 = __toupper(73);
        if (v36 == __toupper(v35))
        {
          v37 = &__p;
          if (v28 < 0)
          {
            v37 = v30;
          }

          v38 = *(v37 + 2);
          v39 = __toupper(65);
          if (v39 == __toupper(v38))
          {
            v40 = &__p;
            if (v28 < 0)
            {
              v40 = v30;
            }

            v41 = *(v40 + 3);
            v42 = __toupper(83);
            if (v42 == __toupper(v41))
            {
              v43 = &__p;
              if (v28 < 0)
              {
                v43 = v30;
              }

              v44 = *(v43 + 4);
              v45 = __toupper(69);
              if (v45 == __toupper(v44))
              {
                v46 = &__p;
                if (v28 < 0)
                {
                  v46 = v30;
                }

                v47 = *(v46 + 5);
                v48 = __toupper(68);
                if (v48 == __toupper(v47))
                {
                  v22 = 2;
                  goto LABEL_144;
                }
              }
            }
          }
        }
      }

      v5 = HIBYTE(v129);
      v7 = v128;
      LOBYTE(v6) = HIBYTE(v129);
    }

    v49 = v6;
    if ((v6 & 0x80u) == 0)
    {
      v50 = v5;
    }

    else
    {
      v50 = v7;
    }

    if (v50 == 8)
    {
      v51 = __p;
      v52 = &__p;
      if (v49 < 0)
      {
        v52 = __p;
      }

      v53 = *v52;
      v54 = __toupper(70);
      if (v54 == __toupper(v53))
      {
        v55 = &__p;
        if (v49 < 0)
        {
          v55 = v51;
        }

        v56 = *(v55 + 1);
        v57 = __toupper(65);
        if (v57 == __toupper(v56))
        {
          v58 = &__p;
          if (v49 < 0)
          {
            v58 = v51;
          }

          v59 = *(v58 + 2);
          v60 = __toupper(77);
          if (v60 == __toupper(v59))
          {
            v61 = &__p;
            if (v49 < 0)
            {
              v61 = v51;
            }

            v62 = *(v61 + 3);
            v63 = __toupper(73);
            if (v63 == __toupper(v62))
            {
              v64 = &__p;
              if (v49 < 0)
              {
                v64 = v51;
              }

              v65 = *(v64 + 4);
              v66 = __toupper(76);
              if (v66 == __toupper(v65))
              {
                v67 = &__p;
                if (v49 < 0)
                {
                  v67 = v51;
                }

                v68 = *(v67 + 5);
                v69 = __toupper(73);
                if (v69 == __toupper(v68))
                {
                  v70 = &__p;
                  if (v49 < 0)
                  {
                    v70 = v51;
                  }

                  v71 = *(v70 + 6);
                  v72 = __toupper(65);
                  if (v72 == __toupper(v71))
                  {
                    v73 = &__p;
                    if (v49 < 0)
                    {
                      v73 = v51;
                    }

                    v74 = *(v73 + 7);
                    v75 = __toupper(82);
                    if (v75 == __toupper(v74))
                    {
                      v22 = 3;
                      goto LABEL_144;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v5 = HIBYTE(v129);
      v7 = v128;
      LOBYTE(v6) = HIBYTE(v129);
    }

    v76 = v6;
    if ((v6 & 0x80u) == 0)
    {
      v77 = v5;
    }

    else
    {
      v77 = v7;
    }

    if (v77 == 15)
    {
      v78 = __p;
      v79 = &__p;
      if (v76 < 0)
      {
        v79 = __p;
      }

      v80 = *v79;
      v81 = __toupper(77);
      if (v81 == __toupper(v80))
      {
        v82 = &__p;
        if (v76 < 0)
        {
          v82 = v78;
        }

        v83 = *(v82 + 1);
        v84 = __toupper(79);
        if (v84 == __toupper(v83))
        {
          v85 = &__p;
          if (v76 < 0)
          {
            v85 = v78;
          }

          v86 = *(v85 + 2);
          v87 = __toupper(83);
          if (v87 == __toupper(v86))
          {
            v88 = &__p;
            if (v76 < 0)
            {
              v88 = v78;
            }

            v89 = *(v88 + 3);
            v90 = __toupper(84);
            if (v90 == __toupper(v89))
            {
              v91 = &__p;
              if (v76 < 0)
              {
                v91 = v78;
              }

              v92 = *(v91 + 4);
              v93 = __toupper(76);
              if (v93 == __toupper(v92))
              {
                v94 = &__p;
                if (v76 < 0)
                {
                  v94 = v78;
                }

                v95 = *(v94 + 5);
                v96 = __toupper(89);
                if (v96 == __toupper(v95))
                {
                  v97 = &__p;
                  if (v76 < 0)
                  {
                    v97 = v78;
                  }

                  v98 = *(v97 + 6);
                  v99 = __toupper(95);
                  if (v99 == __toupper(v98))
                  {
                    v100 = &__p;
                    if (v76 < 0)
                    {
                      v100 = v78;
                    }

                    v101 = *(v100 + 7);
                    v102 = __toupper(70);
                    if (v102 == __toupper(v101))
                    {
                      v103 = &__p;
                      if (v76 < 0)
                      {
                        v103 = v78;
                      }

                      v104 = *(v103 + 8);
                      v105 = __toupper(65);
                      if (v105 == __toupper(v104))
                      {
                        v106 = &__p;
                        if (v76 < 0)
                        {
                          v106 = v78;
                        }

                        v107 = *(v106 + 9);
                        v108 = __toupper(77);
                        if (v108 == __toupper(v107))
                        {
                          v109 = &__p;
                          if (v76 < 0)
                          {
                            v109 = v78;
                          }

                          v110 = *(v109 + 10);
                          v111 = __toupper(73);
                          if (v111 == __toupper(v110))
                          {
                            v112 = &__p;
                            if (v76 < 0)
                            {
                              v112 = v78;
                            }

                            v113 = *(v112 + 11);
                            v114 = __toupper(76);
                            if (v114 == __toupper(v113))
                            {
                              v115 = &__p;
                              if (v76 < 0)
                              {
                                v115 = v78;
                              }

                              v116 = *(v115 + 12);
                              v117 = __toupper(73);
                              if (v117 == __toupper(v116))
                              {
                                v118 = &__p;
                                if (v76 < 0)
                                {
                                  v118 = v78;
                                }

                                v119 = *(v118 + 13);
                                v120 = __toupper(65);
                                if (v120 == __toupper(v119))
                                {
                                  v121 = &__p;
                                  if (v76 < 0)
                                  {
                                    v121 = v78;
                                  }

                                  v122 = *(v121 + 14);
                                  v123 = __toupper(82);
                                  if (v123 == __toupper(v122))
                                  {
                                    v22 = 4;
                                    goto LABEL_144;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v5 = HIBYTE(v129);
      v7 = v128;
      LOBYTE(v6) = HIBYTE(v129);
    }

    if ((v6 & 0x80u) == 0)
    {
      v124 = &__p;
    }

    else
    {
      v124 = __p;
    }

    if ((v6 & 0x80u) == 0)
    {
      v125 = v5;
    }

    else
    {
      v125 = v7;
    }

    if (sub_5258C(v124, v125, "NON_NAVIGABLE", 13))
    {
      v22 = 5;
      goto LABEL_144;
    }

    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

LABEL_146:
  if (SHIBYTE(v129) < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_111E89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_111E8BC(void *a1, void *a2)
{
  *a1 = a2;
  a1[1] = sub_3AF6B4(a2);
  sub_42456C((a1 + 2), a2);
}

void sub_111EA48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v19 = *(v17 + 616);
  if (!v19)
  {
    sub_772CE0(v17 + 16);
    _Unwind_Resume(a1);
  }

  *(v17 + 624) = v19;
  operator delete(v19);
  sub_772CE0(v17 + 16);
  _Unwind_Resume(a1);
}

void sub_111EACC(uint64_t a1, void *a2)
{
  v7 = 14;
  strcpy(__p, "baseline_speed");
  *a1 = sub_63D34(a2, __p);
  if (v7 < 0)
  {
    operator delete(*__p);
  }

  strcpy(__p, "baseline_num_car_trips");
  v7 = 22;
  v4 = sub_3B15EC(a2, __p);
  if (v7 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *(a1 + 8) = v4;
  operator new();
}

void sub_111EDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_111EE14(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      result = sub_111EE60(v4, v2);
      v2 += 336;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_111EE60(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0u;
  v4 = (a2 + 32);
  *(a2 + 176) = 0u;
  v5 = (a2 + 176);
  v6 = *a2;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0;
  result = sub_4D1DB8(v6);
  if (result)
  {
    v220 = v5;
    v221 = result;
    *(a2 + 80) = result;
    v8 = *(sub_3CF22C(v6) + 4);
    v9 = v8 / 10;
    v10 = v8 % 10;
    if (v8 < 0)
    {
      v11 = -5;
    }

    else
    {
      v11 = 5;
    }

    *(a2 + 56) = (v9 + (((103 * (v11 + v10)) >> 15) & 1) + ((103 * (v11 + v10)) >> 10));
    v12 = *(sub_3CF22C(v6) + 4);
    v13 = v12 / 10;
    v14 = v12 % 10;
    if (v12 < 0)
    {
      v15 = -5;
    }

    else
    {
      v15 = 5;
    }

    v16 = ceil((v13 + (((103 * (v15 + v14)) >> 15) & 1) + ((103 * (v15 + v14)) >> 10)) / 60.0) * 60.0 * 10.0;
    if (v16 >= 0.0)
    {
      if (v16 < 4.50359963e15)
      {
        v17 = (v16 + v16) + 1;
        goto LABEL_13;
      }
    }

    else if (v16 > -4.50359963e15)
    {
      v17 = (v16 + v16) - 1 + (((v16 + v16) - 1) >> 63);
LABEL_13:
      v16 = (v17 >> 1);
    }

    if (v16 < 0)
    {
      v18 = -5;
    }

    else
    {
      v18 = 5;
    }

    *v4 = (v16 / 10 + (((103 * (v18 + v16 % 10)) >> 15) & 1) + ((103 * (v18 + v16 % 10)) >> 10));
    v19 = sub_3AF234(v6);
    v20 = 1.0;
    v21 = 1.0;
    if (*(v19 + 20) == 1)
    {
      v21 = ((*(sub_73F1C(v6) + 20) & 1) == 0);
    }

    *(a2 + 120) = v21;
    sub_4D0568();
    v23 = v22;
    v25 = v24;
    sub_4D1DDC(v6, &v241);
    v231 = 0;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v28 = *(&v241 + 1);
    v27 = v241;
    v234 = vnegq_f64(v26);
    v29 = 0.0;
    v30 = 0.0;
    v233 = *(&v242 + 1);
    v31 = v242;
    v223 = 0.0;
    v224 = 0.0;
    v225 = 0.0;
    v226 = 0.0;
    v227 = 0.0;
    v228 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 1;
    v222 = 0.0;
    v229 = 0.0;
    v232 = 0.0;
    v230 = v6;
    v235 = v242;
    while (v27)
    {
      v38 = sub_4D1DC0(v27);
      v39 = v38;
      if (v31)
      {
        v40 = sub_4D1DC0(v31);
        if (v28 >= v39 || v233 >= v40)
        {
          if (v28 < v39 == v233 < v40)
          {
            goto LABEL_243;
          }
        }

        else
        {
          v41 = sub_4D1F50(v27, v28);
          if (v41 == sub_4D1F50(v235, v233))
          {
            goto LABEL_243;
          }
        }
      }

      else if (v28 >= v38)
      {
        goto LABEL_243;
      }

LABEL_34:
      v42 = sub_4D1F50(v27, v28);
      v44 = sub_4D23F8(v27, v28, v43);
      v47 = *v42;
      v48 = **v42;
      v49 = (*v42 - v48);
      v50 = *v49;
      if (v50 >= 0x9B && v49[77])
      {
        *v46.i64 = v44;
        if ((*(v47 + v49[77]) & 8) != 0)
        {
          v51 = v44;
        }

        else
        {
          v51 = 0.0;
        }

        v52 = *(v42 + 38);
        if (!*(v42 + 38))
        {
LABEL_40:
          v53 = *v46.i64;
          if (v50 >= 0x47)
          {
            v54 = v49[35];
            v53 = *v46.i64;
            if (v49[35])
            {
              v55 = 1;
              goto LABEL_47;
            }
          }

          goto LABEL_50;
        }
      }

      else
      {
        *v46.i64 = v44;
        v51 = 0.0;
        v52 = *(v42 + 38);
        if (!*(v42 + 38))
        {
          goto LABEL_40;
        }
      }

      v53 = *v46.i64;
      if (v50 >= 0x47)
      {
        v54 = v49[35];
        v53 = *v46.i64;
        if (v49[35])
        {
          v55 = 2;
LABEL_47:
          if ((*(v47 + v54) & v55) != 0)
          {
            v53 = 0.0;
          }

          else
          {
            v53 = *v46.i64;
          }
        }
      }

LABEL_50:
      v56 = v42[1];
      v57 = (v56 - *v56);
      v58 = 0.0;
      if (*v57 >= 0x13u)
      {
        v59 = v57[9];
        if (v59)
        {
          LOWORD(v58) = *(v56 + v59);
          v58 = *&v58;
        }
      }

      v60 = v58 + *(a2 + 64);
      *(a2 + 64) = v60;
      v236 = *v46.i64;
      if (v52)
      {
        if (v50 < 0x4D)
        {
          v45.i64[0] = 0;
          v67 = *vbslq_s8(v234, v45, v46).i64;
          v30 = v30 + v67;
          v29 = v29 + v67;
          if (v50 < 0x47 || (v68 = v49[35]) == 0)
          {
LABEL_132:
            if (*v49 <= 0x9Au)
            {
              goto LABEL_146;
            }

            goto LABEL_133;
          }

          goto LABEL_102;
        }

        v61 = v49[38];
        if (!v49[38])
        {
          if (v50 <= 0x56)
          {
            goto LABEL_80;
          }

LABEL_65:
          v63 = v49[43];
          if (v49[43])
          {
            v64 = (v47 + v63 + *(v47 + v63));
            v65 = (v64 - *v64);
            if (*v65 < 7u)
            {
              goto LABEL_96;
            }

            v66 = v65[3];
            if (!v66)
            {
              goto LABEL_96;
            }

LABEL_92:
            LOWORD(v60) = *(v64 + v66);
            *v45.i64 = *v46.i64 * ((*&v60 + *&v60) / 65535.0);
            v30 = v30 + *v45.i64;
            if (!v49[43])
            {
              goto LABEL_93;
            }

LABEL_97:
            v77 = (v47 + v63 + *(v47 + v63));
            v78 = (v77 - *v77);
            if (*v78 >= 5u)
            {
              v76 = v78[2];
              if (v76)
              {
                goto LABEL_99;
              }
            }

LABEL_101:
            v45.i64[0] = 0;
            v29 = v29 + *vbslq_s8(v234, v45, v46).i64;
            v68 = v49[35];
            if (!v49[35])
            {
              goto LABEL_132;
            }
          }

          else
          {
            if (v50 >= 0x7D)
            {
              v66 = v49[62];
              v64 = v47;
              if (v49[62])
              {
                goto LABEL_92;
              }
            }

LABEL_96:
            v45.i64[0] = 0;
            v45 = vbslq_s8(v234, v45, v46);
            v30 = v30 + *v45.i64;
            if (v49[43])
            {
              goto LABEL_97;
            }

LABEL_93:
            if (v50 < 0x7B)
            {
              goto LABEL_101;
            }

            v76 = v49[61];
            v77 = v47;
            if (!v49[61])
            {
              goto LABEL_101;
            }

LABEL_99:
            v45.i16[0] = *(v77 + v76);
            v29 = v29 + *v46.i64 * ((v45.u64[0] + v45.u64[0]) / 65535.0);
            v68 = v49[35];
            if (!v49[35])
            {
              goto LABEL_132;
            }
          }

LABEL_102:
          v79 = *(v47 + v68);
          if ((v79 & 0x400) != 0)
          {
            goto LABEL_130;
          }

          if ((v79 & 0x1000) != 0)
          {
            goto LABEL_137;
          }

          if ((v79 & 0x100) != 0)
          {
            goto LABEL_187;
          }

          if ((v79 & 0x40) != 0)
          {
            goto LABEL_221;
          }

          if ((v79 & 0x100000) != 0)
          {
            goto LABEL_240;
          }

          v80 = 16;
          goto LABEL_126;
        }

        if ((*(v47 + v49[38]) & 8) != 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v50 < 0x4D)
        {
          v45.i64[0] = 0;
          v69 = *vbslq_s8(v234, v45, v46).i64;
          v30 = v30 + v69;
          v29 = v29 + v69;
          if (v50 < 0x47 || (v68 = v49[35]) == 0)
          {
LABEL_139:
            if (*v49 <= 0x9Au)
            {
              goto LABEL_146;
            }

            goto LABEL_140;
          }

          goto LABEL_120;
        }

        v61 = v49[38];
        if (!v49[38])
        {
          if (v50 > 0x56)
          {
            goto LABEL_83;
          }

          goto LABEL_88;
        }

        if ((*(v47 + v49[38]) & 4) != 0)
        {
LABEL_57:
          v60 = *(a2 + 136) + v20;
          *(a2 + 136) = v60;
        }
      }

      if (v52)
      {
        v62 = 2;
      }

      else
      {
        v62 = 1;
      }

      if ((*(v47 + v61) & v62) != 0)
      {
        v60 = *(a2 + 144) + v20;
        *(a2 + 144) = v60;
      }

      if (v52)
      {
        if (v50 > 0x56)
        {
          goto LABEL_65;
        }

LABEL_80:
        v45.i64[0] = 0;
        v70 = *vbslq_s8(v234, v45, v46).i64;
        v30 = v30 + v70;
        v29 = v29 + v70;
        v68 = v49[35];
        if (!v49[35])
        {
          goto LABEL_132;
        }

        goto LABEL_102;
      }

      if (v50 > 0x56)
      {
LABEL_83:
        v71 = v49[43];
        if (v49[43])
        {
          v72 = (v47 + v71 + *(v47 + v71));
          v73 = (v72 - *v72);
          if (*v73 < 5u)
          {
            goto LABEL_114;
          }

          v74 = v73[2];
          if (!v74)
          {
            goto LABEL_114;
          }

LABEL_110:
          LOWORD(v60) = *(v72 + v74);
          *v45.i64 = *v46.i64 * ((*&v60 + *&v60) / 65535.0);
          v30 = v30 + *v45.i64;
          if (!v49[43])
          {
            goto LABEL_111;
          }

LABEL_115:
          v82 = (v47 + v71 + *(v47 + v71));
          v83 = (v82 - *v82);
          if (*v83 < 7u)
          {
            goto LABEL_119;
          }

          v81 = v83[3];
          if (!v81)
          {
            goto LABEL_119;
          }
        }

        else
        {
          if (v50 >= 0x7B)
          {
            v74 = v49[61];
            v72 = v47;
            if (v49[61])
            {
              goto LABEL_110;
            }
          }

LABEL_114:
          v45.i64[0] = 0;
          v45 = vbslq_s8(v234, v45, v46);
          v30 = v30 + *v45.i64;
          if (v49[43])
          {
            goto LABEL_115;
          }

LABEL_111:
          if (v50 < 0x7D || (v81 = v49[62], v82 = v47, !v49[62]))
          {
LABEL_119:
            v45.i64[0] = 0;
            v29 = v29 + *vbslq_s8(v234, v45, v46).i64;
            v68 = v49[35];
            if (!v49[35])
            {
              goto LABEL_139;
            }

            goto LABEL_120;
          }
        }

        v45.i16[0] = *(v82 + v81);
        v29 = v29 + *v46.i64 * ((v45.u64[0] + v45.u64[0]) / 65535.0);
        v68 = v49[35];
        if (!v49[35])
        {
          goto LABEL_139;
        }

        goto LABEL_120;
      }

LABEL_88:
      v45.i64[0] = 0;
      v75 = *vbslq_s8(v234, v45, v46).i64;
      v30 = v30 + v75;
      v29 = v29 + v75;
      v68 = v49[35];
      if (!v49[35])
      {
        goto LABEL_139;
      }

LABEL_120:
      v84 = *(v47 + v68);
      if ((v84 & 0x200) != 0)
      {
LABEL_130:
        v232 = v232 + *v46.i64;
        v86 = *(v47 + v68);
        if (!v52)
        {
          goto LABEL_138;
        }

        goto LABEL_131;
      }

      if ((v84 & 0x800) != 0)
      {
LABEL_137:
        v229 = v229 + *v46.i64;
        v86 = *(v47 + v68);
        if (!v52)
        {
          goto LABEL_138;
        }

        goto LABEL_131;
      }

      if ((v84 & 0x80) != 0)
      {
LABEL_187:
        v227 = v227 + *v46.i64;
        v86 = *(v47 + v68);
        if (!v52)
        {
          goto LABEL_138;
        }

        goto LABEL_131;
      }

      if ((v84 & 0x20) != 0)
      {
LABEL_221:
        v225 = v225 + *v46.i64;
        v86 = *(v47 + v68);
        if (!v52)
        {
          goto LABEL_138;
        }

        goto LABEL_131;
      }

      if ((v84 & 0x80000) != 0)
      {
LABEL_240:
        v223 = v223 + *v46.i64;
        v86 = *(v47 + v68);
        if (!v52)
        {
          goto LABEL_138;
        }

        goto LABEL_131;
      }

      v80 = 8;
LABEL_126:
      v85 = v222;
      if ((*(v47 + v68) & v80) != 0)
      {
        v85 = v222 + *v46.i64;
      }

      v222 = v85;
      v86 = *(v47 + v68);
      if (!v52)
      {
LABEL_138:
        if ((v86 & 0xA0AA8) != 0)
        {
          goto LABEL_139;
        }

        if ((*(v47 + v68) & 1) == 0)
        {
          goto LABEL_184;
        }

        goto LABEL_168;
      }

LABEL_131:
      if ((v86 & 0x141550) != 0)
      {
        goto LABEL_132;
      }

      if ((*(v47 + v68) & 2) == 0)
      {
LABEL_184:
        v49 = (v47 - v48);
        v115 = *(v47 - v48) >= 0x9Bu;
        if (!v52)
        {
          goto LABEL_185;
        }

        goto LABEL_238;
      }

LABEL_168:
      sub_31D6E8(*(a1 + 8), *(v42 + 8) | (*(v42 + 18) << 32), &v241);
      if (v243)
      {
        v109 = v236;
        if (v241 && *(&v241 + 1))
        {
          v110 = (v241 - *v241);
          v111 = *v110;
          v112 = 0.0;
          if (v111 >= 9 && v110[4])
          {
            LODWORD(v112) = *(v241 + v110[4]);
            v112 = *&v112;
          }

          if (BYTE6(v243))
          {
            if (v111 < 0x47 || (v113 = v110[35]) == 0 || (v114 = *(v241 + v113), (v114 & 0x141510) == 0) && (v114 & 0x40) == 0)
            {
LABEL_235:
              v226 = v226 + v112;
              v148 = (a2 + 168);
              goto LABEL_236;
            }
          }

          else
          {
            if (v111 < 0x47)
            {
              goto LABEL_235;
            }

            v146 = v110[35];
            if (!v146)
            {
              goto LABEL_235;
            }

            v147 = *(v241 + v146);
            if ((v147 & 0xA0A88) == 0 && (v147 & 0x20) == 0)
            {
              goto LABEL_235;
            }
          }

          v224 = v224 + v112;
          v148 = v220;
LABEL_236:
          *v148 = *v148 + v20;
        }
      }

      else
      {
        v109 = v236;
      }

      v228 = v228 + v109;
      v47 = *v42;
      v49 = (*v42 - **v42);
      v115 = *v49 >= 0x9Bu;
      if (!*(v42 + 38))
      {
LABEL_185:
        if (!v115)
        {
          goto LABEL_146;
        }

LABEL_140:
        v88 = v49[77];
        if (!v88 || (*(v47 + v88) & 1) == 0 && (*(v47 + v88) & 2) == 0)
        {
          goto LABEL_146;
        }

        goto LABEL_143;
      }

LABEL_238:
      if (!v115)
      {
        goto LABEL_146;
      }

LABEL_133:
      v87 = v49[77];
      if (!v87 || (*(v47 + v87) & 2) == 0 && (*(v47 + v87) & 1) == 0)
      {
        goto LABEL_146;
      }

LABEL_143:
      v89 = sub_10ACD10(a1 + 568, v42, (*(a1 + 640) + 1384));
      v90 = *v42;
      v91 = *(v42 + 1);
      v243 = v42[4];
      v241 = v90;
      v242 = v91;
      BYTE6(v243) = BYTE6(v243) == 0;
      v92 = sub_10ACD10(a1 + 568, &v241, (*(a1 + 640) + 1384));
      if (v89 >= v92)
      {
        v92 = v89;
      }

      v20 = 1.0;
      v34 = v34 + v92;
LABEL_146:
      if (sub_11204EC(a1, v42))
      {
        if (sub_1120F44(a1, v6, v27, v28))
        {
          goto LABEL_148;
        }
      }

      else
      {
        *(a2 + 312) = v236 + *(a2 + 312);
        if (sub_1120F44(a1, v6, v27, v28))
        {
LABEL_148:
          *(a2 + 200) = *(a2 + 200) + v20;
          sub_4D0568();
          v239 = v93;
          v240 = v94;
          if ((*(a1 + 688) & v35 & 1) == 0)
          {
            goto LABEL_149;
          }

          goto LABEL_158;
        }
      }

      sub_4D0568();
      v239 = v99;
      v240 = v100;
      if ((*(a1 + 688) & v35 & 1) == 0)
      {
LABEL_149:
        if (v27)
        {
          goto LABEL_150;
        }

        goto LABEL_227;
      }

LABEL_158:
      if (!sub_11211E8(a1, v6, v27, v28, &v239))
      {
        v35 = 1;
        if (v27)
        {
          goto LABEL_150;
        }

        goto LABEL_227;
      }

      sub_4D0568();
      v103 = v101;
      v104 = v102;
      if (v23)
      {
        v105 = sub_4D1DC0(v23);
        v106 = v105;
        if (v103)
        {
          v107 = sub_4D1DC0(v103);
          if (v25 >= v106 || v104 >= v107)
          {
            if (v25 < v106 == v104 < v107)
            {
              goto LABEL_226;
            }
          }

          else
          {
            v108 = sub_4D1F50(v23, v25);
            if (v108 == sub_4D1F50(v103, v104))
            {
              goto LABEL_226;
            }
          }
        }

        else if (v25 >= v105)
        {
          goto LABEL_226;
        }
      }

      else if (!v101 || v102 >= sub_4D1DC0(v101))
      {
        goto LABEL_226;
      }

      v116 = *v42;
      v117 = *(v42 + 1);
      v243 = v42[4];
      v241 = v116;
      v242 = v117;
      v118 = sub_4D1F50(v239, v240);
      v119 = *(v118 + 32);
      v120 = *(v118 + 16);
      v237[0] = *v118;
      v237[1] = v120;
      v238 = v119;
      for (i = v25 + 1; i < v28; ++i)
      {
        v122 = *(sub_4D1F50(v23, i) + 8);
        if (v122)
        {
          v123 = (v122 - *v122);
          if (*v123 >= 0x11u)
          {
            v124 = v123[8];
            if (v124)
            {
              if ((*(v122 + v124) & 4) != 0)
              {
                continue;
              }
            }
          }
        }

        v125 = sub_4D1F50(v23, v25);
        v126 = sub_4D1F50(v23, i);
        v127 = *(v125 + 8);
        v128 = (v127 - *v127);
        v129 = *v128;
        if (*(v125 + 38))
        {
          if (v129 >= 5)
          {
            v130 = v128[2];
            if (v130)
            {
              goto LABEL_203;
            }
          }
        }

        else if (v129 >= 9)
        {
          v130 = v128[4];
          if (v130)
          {
LABEL_203:
            v131 = *(v127 + v130);
            v132 = *(v126 + 8);
            v133 = (v132 - *v132);
            v134 = *v133;
            if (*(v126 + 38))
            {
              goto LABEL_208;
            }

            goto LABEL_204;
          }
        }

        v131 = 0;
        v132 = *(v126 + 8);
        v133 = (v132 - *v132);
        v134 = *v133;
        if (*(v126 + 38))
        {
LABEL_208:
          if (v134 >= 9)
          {
            v135 = v133[4];
            if (v135)
            {
              goto LABEL_210;
            }
          }

          goto LABEL_211;
        }

LABEL_204:
        if (v134 >= 5)
        {
          v135 = v133[2];
          if (v135)
          {
LABEL_210:
            v136 = *(v132 + v135);
            goto LABEL_212;
          }
        }

LABEL_211:
        v136 = 0;
LABEL_212:
        v137 = v131 + 18000;
        v138 = v131 - 18000;
        if ((v137 >> 5) < 0x465u)
        {
          v138 = v137;
        }

        v139 = v136 - v138;
        if (v139 > 18000)
        {
          v139 -= 36000;
        }

        if (v139 < -17999)
        {
          v139 += 36000;
        }

        v140 = 0x4059000000000000;
        LOWORD(v140) = *(a1 + 682);
        v25 = i;
        if (fabs(v139 / 100.0) > v140)
        {
          sub_31AE98(*(a1 + 8), v237, &v241);
          goto LABEL_226;
        }
      }

      v141 = sub_31AE98(*(a1 + 8), v237, &v241);
      if (v231 != v141)
      {
        *(a2 + 208) = *(a2 + 208) + v20;
      }

LABEL_226:
      v23 = v239;
      v25 = v240;
      v142 = *(a1 + 8);
      v143 = sub_4D1F50(v239, v240);
      v231 = sub_31AE98(v142, v143, v42);
      v6 = v230;
      sub_4D0568();
      v35 = 0;
      v239 = v144;
      v240 = v145;
      if (v27)
      {
LABEL_150:
        v95 = v28 < sub_4D1DC0(v27);
        if (!v23)
        {
          goto LABEL_228;
        }

        goto LABEL_151;
      }

LABEL_227:
      v95 = 0;
      if (!v23)
      {
LABEL_228:
        v97 = 0;
        goto LABEL_229;
      }

LABEL_151:
      v96 = sub_4D1DC0(v23);
      v97 = v25 < v96;
      if (v25 < v96 && v95)
      {
        v36 = sub_4D1F50(v27, v28);
        v37 = v36 == sub_4D1F50(v23, v25);
        goto LABEL_21;
      }

LABEL_229:
      v37 = v95 ^ v97 ^ 1;
LABEL_21:
      v33 = v33 + v51;
      v32 = v32 + v53;
      v35 |= v37;
      ++v28;
      v31 = v235;
    }

    if (v31 && v233 < sub_4D1DC0(v31))
    {
      goto LABEL_34;
    }

LABEL_243:
    if (v29 >= v30)
    {
      v149 = v30;
    }

    else
    {
      v149 = v29;
    }

    *(a2 + 288) = v149;
    *(a2 + 320) = v30;
    *(a2 + 216) = v232 / v221;
    *(a2 + 224) = v229 / v221;
    *(a2 + 232) = v227 / v221;
    *(a2 + 240) = v222 / v221;
    *(a2 + 248) = v225 / v221;
    *(a2 + 256) = v223 / v221;
    *(a2 + 88) = v33 / v221;
    *(a2 + 96) = v32 / v221;
    *(a2 + 168) = v226 / v221;
    *(a2 + 176) = v224 / v221;
    *(a2 + 160) = v34 / v221;
    *(a2 + 264) = v224 / v221 + v223 / v221 + v225 / v221 + v227 / v221 + v229 / v221 + v232 / v221;
    *(a2 + 272) = v228 / v221;
    sub_4D0560();
    v151 = v150;
    v153 = v152;
    sub_4D0568();
    v157 = v154;
    v158 = v155;
    if (v151)
    {
      v159 = sub_4D1DC0(v151);
      v160 = v159;
      if (v157)
      {
        v161 = sub_4D1DC0(v157);
        if (v153 >= v160 || v158 >= v161)
        {
          if (v153 < v160 == v158 < v161)
          {
            goto LABEL_378;
          }
        }

        else
        {
          v162 = sub_4D1F50(v151, v153);
          if (v162 == sub_4D1F50(v157, v158))
          {
            goto LABEL_378;
          }
        }

LABEL_258:
        v163 = 0;
        while (1)
        {
LABEL_262:
          v165 = v153++;
          if (v151)
          {
            v166 = sub_4D1DC0(v151);
            v167 = v166;
            if (v163)
            {
              if (v153 >= v166)
              {
                goto LABEL_378;
              }
            }

            else
            {
              v168 = sub_4D1DC0(v157);
              if (v153 >= v167 || v158 >= v168)
              {
                if (v153 < v167 == v158 < v168)
                {
                  goto LABEL_378;
                }
              }

              else
              {
                v169 = sub_4D1F50(v151, v153);
                if (v169 == sub_4D1F50(v157, v158))
                {
                  goto LABEL_378;
                }
              }
            }
          }

          else if ((v163 & 1) != 0 || v158 >= sub_4D1DC0(v157))
          {
            goto LABEL_378;
          }

          v170 = sub_4D1F50(v151, v165);
          v171 = sub_4D1F50(v151, v153);
          v172 = v171;
          v173 = (*v170 - **v170);
          v174 = *v173;
          if (*(v170 + 38))
          {
            if (v174 >= 0x49)
            {
              v175 = v173[36];
              if (v175)
              {
                goto LABEL_280;
              }
            }
          }

          else if (v174 >= 0x4B)
          {
            v175 = v173[37];
            if (v175)
            {
LABEL_280:
              v176 = *(*v170 + v175);
              goto LABEL_282;
            }
          }

          v176 = -1;
LABEL_282:
          v177 = v176 + 18000;
          v178 = v176 - 18000;
          if ((v177 >> 5) < 0x465u)
          {
            v178 = v177;
          }

          v179 = (*v171 - **v171);
          v180 = *v179;
          if (*(v171 + 38))
          {
            if (v180 >= 0x4B)
            {
              v181 = v179[37];
              if (v181)
              {
                goto LABEL_290;
              }
            }
          }

          else if (v180 >= 0x49)
          {
            v181 = v179[36];
            if (v181)
            {
LABEL_290:
              v182 = *(*v171 + v181);
              goto LABEL_292;
            }
          }

          v182 = 0xFFFF;
LABEL_292:
          v183 = v182 - v178;
          if (v183 > 18000)
          {
            v183 -= 36000;
          }

          if (v183 < -17999)
          {
            v183 += 36000;
          }

          v184 = v183 / 100.0;
          v185 = fabs(v184);
          *(a2 + 72) = *(a2 + 72) + v185;
          *(a2 + 40) = *(a2 + 40) + (sub_31EE90(*(a1 + 8), v170[4] & 0xFFFFFFFFFFFFFFLL, v171[4] & 0xFFFFFFFFFFFFFFLL) ^ 1);
          v186 = *(v170 + 38);
          v187 = *v170;
          v188 = (*v170 - **v170);
          v189 = *v188;
          if (*(v170 + 38))
          {
            if (v189 >= 0x51 && v188[40] && (*(v187 + v188[40]) & 8) != 0)
            {
              goto LABEL_312;
            }
          }

          else if (v189 >= 0x51 && v188[40] && (*(v187 + v188[40]) & 0x80) != 0)
          {
LABEL_312:
            *(a2 + 112) = *(a2 + 112) + 1.0;
            goto LABEL_313;
          }

          v190 = *v172;
          v191 = (*v172 - **v172);
          v192 = *v191;
          if (*(v172 + 38))
          {
            if (v192 >= 0x51)
            {
              v193 = v191[40];
              if (v193)
              {
                if ((*(v190 + v193) & 0x20) != 0)
                {
                  goto LABEL_312;
                }
              }
            }
          }

          else if (v192 >= 0x51)
          {
            v194 = v191[40];
            if (v194)
            {
              if ((*(v190 + v194) & 2) != 0)
              {
                goto LABEL_312;
              }
            }
          }

LABEL_313:
          if (v186)
          {
            if (v189 < 0x47)
            {
              goto LABEL_330;
            }

            v195 = v188[35];
            if (!v195 || (*(v187 + v195) & 2) == 0)
            {
              goto LABEL_330;
            }
          }

          else
          {
            if (v189 < 0x47)
            {
              goto LABEL_330;
            }

            v196 = v188[35];
            if (!v196 || (*(v187 + v196) & 1) == 0)
            {
              goto LABEL_330;
            }
          }

          v197 = *v172;
          v198 = (*v172 - **v172);
          v199 = *v198;
          if (*(v172 + 38))
          {
            if (v199 < 0x47)
            {
              goto LABEL_329;
            }

            v200 = v198[35];
            if (!v200 || (*(v197 + v200) & 2) == 0)
            {
              goto LABEL_329;
            }
          }

          else if (v199 < 0x47 || (v201 = v198[35]) == 0 || (*(v197 + v201) & 1) == 0)
          {
LABEL_329:
            *(a2 + 128) = *(a2 + 128) + 1.0;
          }

LABEL_330:
          if (sub_10AC574((a1 + 568), v170, v172, (*(a1 + 640) + 32)))
          {
            sub_10AC880((a1 + 568), v170, v172, *(a1 + 640) + 32, 1);
            v156 = v202 + *(a2 + 152);
            *(a2 + 152) = v156;
          }

          v203 = *v170;
          v204 = (*v170 - **v170);
          v205 = *v204;
          if (v205 < 0x9B)
          {
            LODWORD(v206) = 0;
            v207 = v184 < 0.0;
            v208 = *(v170 + 38);
            if (*(v170 + 38))
            {
              goto LABEL_336;
            }
          }

          else
          {
            v206 = v204[77];
            if (v204[77])
            {
              LODWORD(v206) = *(v203 + v206 + 1) >> 7;
            }

            v207 = v184 < 0.0;
            v208 = *(v170 + 38);
            if (*(v170 + 38))
            {
LABEL_336:
              if (v205 < 0x47)
              {
                goto LABEL_357;
              }

              v209 = v204[35];
              if (!v204[35])
              {
                goto LABEL_360;
              }

              v210 = *(v209 + v203);
              if ((v210 & 0x1100) == 0 && (v210 & 0x400) == 0)
              {
                goto LABEL_357;
              }

              goto LABEL_346;
            }
          }

          if (v205 < 0x47)
          {
            goto LABEL_357;
          }

          v209 = v204[35];
          if (!v204[35])
          {
            goto LABEL_360;
          }

          v211 = *(v209 + v203);
          if ((v211 & 0x880) == 0 && (v211 & 0x200) == 0)
          {
LABEL_357:
            LOBYTE(v209) = 0;
            if (v207 == v206)
            {
              continue;
            }

            goto LABEL_361;
          }

LABEL_346:
          v209 = *v172;
          v212 = (*v172 - **v172);
          v213 = *v212;
          if (!*(v172 + 38))
          {
            if (v213 < 0x47)
            {
              goto LABEL_357;
            }

            v215 = v212[35];
            if (!v215)
            {
              LOBYTE(v209) = 0;
LABEL_360:
              if (v207 == v206)
              {
                continue;
              }

              goto LABEL_361;
            }

            LODWORD(v209) = *(v209 + v215);
            if ((v209 & 0x880) == 0)
            {
              LOBYTE(v209) = (v209 & 0x200) != 0;
              if (v207 == v206)
              {
                continue;
              }

              goto LABEL_361;
            }

LABEL_355:
            LOBYTE(v209) = 1;
            if (v207 == v206)
            {
              continue;
            }

            goto LABEL_361;
          }

          if (v213 < 0x47)
          {
            goto LABEL_357;
          }

          v214 = v212[35];
          if (!v214)
          {
            goto LABEL_357;
          }

          LODWORD(v209) = *(v209 + v214);
          if ((v209 & 0x1100) != 0)
          {
            goto LABEL_355;
          }

          LOBYTE(v209) = (v209 & 0x400) != 0;
          if (v207 == v206)
          {
            continue;
          }

LABEL_361:
          if (v208)
          {
            if (v205 >= 0x9B)
            {
              v216 = v204[77];
              if (v216)
              {
                v217 = (*(v203 + v216) & 2) != 0 ? v209 : 1;
                if ((v217 & 1) == 0)
                {
                  goto LABEL_259;
                }
              }
            }
          }

          else if (v205 >= 0x9B)
          {
            v218 = v204[77];
            if (v218)
            {
              v219 = (*(v203 + v218) & 1) != 0 ? v209 : 1;
              if ((v219 & 1) == 0)
              {
LABEL_259:
                LOWORD(v156) = *(a1 + 686);
                v164 = 192;
                if (v185 > *&v156)
                {
                  v164 = 184;
                }

                v156 = *(a2 + v164) + 1.0;
                *(a2 + v164) = v156;
                continue;
              }
            }
          }
        }
      }

      if (v153 < v159)
      {
        v163 = 1;
        goto LABEL_262;
      }
    }

    else if (v154 && v155 < sub_4D1DC0(v154))
    {
      goto LABEL_258;
    }

LABEL_378:
    LOWORD(v156) = *(a1 + 664);
    *(a2 + 160) = *(a2 + 160) + *(a2 + 152) / (round(*(a1 + 656)) * *&v156);
    sub_73EC4(*(a2 + 8));
    sub_424570(a1 + 16, v230, &v241);
  }

  return result;
}

uint64_t sub_11204EC(uint64_t a1, int **a2)
{
  if (**(a1 + 648) != 1)
  {
    return 1;
  }

  v3 = (*a2 - **a2);
  if (*v3 >= 0x9Bu)
  {
    v4 = v3[77];
    if (v4)
    {
      if ((*(*a2 + v4) & 8) != 0)
      {
        return 1;
      }
    }
  }

  v60 = sub_335660(*(a1 + 8), a2, 0);
  v61 = v6;
  v7 = *(a1 + 8);
  v8 = sub_2B51D8(v7, *(a2 + 8) | (*(a2 + 18) << 32));
  v9 = (v8 - *v8);
  if (*v9 >= 0xDu && (v10 = v9[6]) != 0)
  {
    v11 = 4 * *(v8 + v10);
  }

  else
  {
    v11 = 0;
  }

  v13 = sub_2AF704(v7 + 3896, 1u, 0);
  v14 = &v13[-*v13];
  if (*v14 < 0xBu)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 5);
    if (v15)
    {
      v15 += &v13[*&v13[v15]];
    }
  }

  v16 = (v15 + v11 + 4 + *(v15 + v11 + 4));
  v17 = (v16 - *v16);
  if (*v17 >= 5u && (v18 = v17[2]) != 0)
  {
    v19 = (v16 + v18);
    v20 = *v19;
    v21 = *(v19 + v20);
    if (v21 >= 0x17)
    {
      operator new();
    }

    v59 = *(v19 + v20);
    if (v21)
    {
      memcpy(&__dst, v19 + v20 + 4, v21);
    }

    *(&__dst + v21) = 0;
    v22 = *(a1 + 648);
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    if (v23 == v24)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v59 = 0;
    LOBYTE(__dst) = 0;
    v22 = *(a1 + 648);
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    if (v23 == v24)
    {
      goto LABEL_38;
    }
  }

  if ((v59 & 0x80u) == 0)
  {
    v25 = v59;
  }

  else
  {
    v25 = v58;
  }

  if ((v59 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  while (1)
  {
    v27 = *(v23 + 23);
    v28 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v27 = *(v23 + 8);
    }

    if (v27 == v25)
    {
      v29 = v28 >= 0 ? v23 : *v23;
      if (!memcmp(v29, p_dst, v25))
      {
        break;
      }
    }

    v23 += 24;
    if (v23 == v24)
    {
      v23 = v24;
      if (*(v22 + 1) == 1)
      {
        goto LABEL_39;
      }

      goto LABEL_56;
    }
  }

LABEL_38:
  if (*(v22 + 1) == 1)
  {
LABEL_39:
    v31 = *(v22 + 56);
    v30 = *(v22 + 64);
    if (v31 != v30)
    {
      if ((v59 & 0x80u) == 0)
      {
        v32 = v59;
      }

      else
      {
        v32 = v58;
      }

      if ((v59 & 0x80u) == 0)
      {
        v33 = &__dst;
      }

      else
      {
        v33 = __dst;
      }

      while (1)
      {
        v34 = *(v31 + 23);
        v35 = v34;
        if ((v34 & 0x80u) != 0)
        {
          v34 = *(v31 + 8);
        }

        if (v34 == v32)
        {
          v36 = v35 >= 0 ? v31 : *v31;
          if (!memcmp(v36, v33, v32))
          {
            break;
          }
        }

        v31 += 24;
        if (v31 == v30)
        {
          v31 = v30;
          break;
        }
      }
    }

    v37 = v31 != v30;
    result = 1;
    if (v23 != v24)
    {
      goto LABEL_83;
    }

    goto LABEL_60;
  }

LABEL_56:
  v37 = 0;
  result = 1;
  if (v23 == v24)
  {
LABEL_60:
    if (!v37)
    {
      v38 = sub_3B25D0(*a1);
      sub_58168(v60 >> 17, HIDWORD(v60) >> 17);
      v40 = v39 | 0x40000000;
      do
      {
        v41 = v40;
        v42 = sub_CD759C(v38, v40, 1);
        if (v42)
        {
          v43 = &v42[-*v42];
          if (*v43 >= 5u)
          {
            if (*(v43 + 2))
            {
              v44 = sub_CD759C(v38, v41, 1);
              if (v44)
              {
                v45 = &v44[-*v44];
                if (*v45 >= 5u)
                {
                  v46 = *(v45 + 2);
                  if (v46)
                  {
                    v47 = &v44[v46 + *&v44[v46]];
                    v48 = &v47[-*v47];
                    if (*v48 >= 7u)
                    {
                      v49 = *(v48 + 3);
                      if (v49)
                      {
                        if (*&v47[v49 + *&v47[v49]])
                        {
                          operator new();
                        }
                      }
                    }
                  }
                }
              }

              v50 = sub_CD759C(v38, v41, 1);
              if (v50)
              {
                v51 = &v50[-*v50];
                if (*v51 >= 5u)
                {
                  v52 = *(v51 + 2);
                  if (v52)
                  {
                    v53 = &v50[v52 + *&v50[v52]];
                    v54 = &v53[-*v53];
                    if (*v54 >= 9u)
                    {
                      v55 = *(v54 + 4);
                      if (v55)
                      {
                        if (*&v53[v55 + *&v53[v55]])
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
        }

        v40 = v41 >> 2;
      }

      while (v41 > 3);
      result = 0;
    }
  }

LABEL_83:
  if (v59 < 0)
  {
    v56 = result;
    operator delete(__dst);
    return v56;
  }

  return result;
}

void sub_1120EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1120F44(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  if (a4 >= sub_4D1DC0(a2) - 1)
  {
    return 0;
  }

  v8 = sub_4D1F50(a3, a4);
  v9 = *v8;
  v10 = (*v8 - **v8);
  v11 = *v10;
  if (*(v8 + 38))
  {
    if (v11 < 0x9B)
    {
      return 0;
    }

    v12 = v10[77];
    if (!v12 || (*&v9[v12] & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v11 < 0x9B)
    {
      return 0;
    }

    v14 = v10[77];
    if (!v14 || (*&v9[v14] & 1) == 0)
    {
      return 0;
    }
  }

  v15 = v8;
  v16 = sub_4D1F50(a3, a4 + 1);
  v17 = (*v16 - **v16);
  if (*v17 < 0x2Fu)
  {
    return 0;
  }

  v18 = v17[23];
  if (!v18 || *(*v16 + v18) != 14)
  {
    return 0;
  }

  v19 = a4 + 2;
  v20 = sub_4D1DC0(a2);
  v21 = v19 <= v20 ? v20 : v19;
  if (v19 >= v20)
  {
    return 0;
  }

  while (1)
  {
    v22 = sub_4D1F50(a2, v19);
    v23 = (*v22 - **v22);
    if (*v23 < 0x2Fu || (v24 = v23[23]) == 0 || *(*v22 + v24) != 14)
    {
      v25 = v22[1];
      if (!v25)
      {
        break;
      }

      v26 = (v25 - *v25);
      if (*v26 < 0x11u)
      {
        break;
      }

      v27 = v26[8];
      if (!v27 || (*(v25 + v27) & 4) == 0)
      {
        break;
      }
    }

    result = 0;
    if (v21 == ++v19)
    {
      return result;
    }
  }

  v28 = v15[1];
  v29 = (v28 - *v28);
  v30 = *v29;
  if (!*(v15 + 38))
  {
    if (v30 < 9)
    {
      goto LABEL_35;
    }

    v31 = v29[4];
    if (!v31)
    {
      goto LABEL_35;
    }

LABEL_34:
    v32 = *(v28 + v31);
    goto LABEL_36;
  }

  if (v30 >= 5)
  {
    v31 = v29[2];
    if (v31)
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  v32 = 0;
LABEL_36:
  v33 = (v25 - *v25);
  v34 = *v33;
  if (*(v22 + 38))
  {
    if (v34 < 9 || (v35 = v33[4]) == 0)
    {
LABEL_43:
      v36 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    if (v34 < 5)
    {
      goto LABEL_43;
    }

    v35 = v33[2];
    if (!v35)
    {
      goto LABEL_43;
    }
  }

  v36 = *(v25 + v35);
LABEL_44:
  v37 = v32 + 18000;
  v38 = v32 - 18000;
  if ((v37 >> 5) < 0x465u)
  {
    v38 = v37;
  }

  v39 = v36 - v38;
  if (v39 > 18000)
  {
    v39 -= 36000;
  }

  if (v39 < -17999)
  {
    v39 += 36000;
  }

  v40 = 0x4059000000000000;
  LOWORD(v40) = *(a1 + 684);
  return fabs(v39 / 100.0) > v40;
}

uint64_t sub_11211E8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a4 + 2 >= sub_4D1DC0(a2))
  {
    return 0;
  }

  v9 = sub_4D1F50(a3, a4);
  v10 = a4 + 1;
  v11 = sub_4D1F50(a3, v10);
  v12 = (*v9 - **v9);
  v13 = *v12;
  if (*(v9 + 38))
  {
    if (v13 < 0x49)
    {
      goto LABEL_12;
    }

    v14 = v12[36];
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else if (v13 < 0x4B || (v14 = v12[37]) == 0)
  {
LABEL_12:
    v15 = -1;
    v16 = *v11;
    v17 = (*v11 - **v11);
    v18 = *v17;
    if (*(v11 + 38))
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v18 >= 0x49)
    {
      v19 = v17[36];
      if (v19)
      {
        goto LABEL_15;
      }
    }

LABEL_16:
    v20 = 0xFFFF;
    goto LABEL_17;
  }

  v15 = *(*v9 + v14);
  v16 = *v11;
  v17 = (*v11 - **v11);
  v18 = *v17;
  if (!*(v11 + 38))
  {
    goto LABEL_9;
  }

LABEL_13:
  if (v18 < 0x4B)
  {
    goto LABEL_16;
  }

  v19 = v17[37];
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_15:
  v20 = *&v16[v19];
LABEL_17:
  v21 = v15 + 18000;
  v22 = v15 - 18000;
  if ((v21 >> 5) < 0x465u)
  {
    v22 = v21;
  }

  v23 = v20 - v22;
  if (v23 > 18000)
  {
    v23 -= 36000;
  }

  if (v23 < -17999)
  {
    v23 += 36000;
  }

  v24 = 0x4059000000000000;
  v25 = v23 / 100.0;
  LOWORD(v24) = *(a1 + 682);
  if (fabs(v25) < v24)
  {
    return 0;
  }

  v89 = a5;
  v27 = 0;
  v95 = 0u;
  v96 = 0u;
  v97 = 0x1000000000000;
  while (2)
  {
    sub_4D0568();
    v32 = v31;
    v34 = v33 - 1;
    if (a3)
    {
      v35 = sub_4D1DC0(a3);
      v36 = v35;
      if (v32)
      {
        v37 = sub_4D1DC0(v32);
        if (v10 >= v36 || v34 >= v37)
        {
          if (v10 < v36 == v34 < v37)
          {
            return 0;
          }
        }

        else
        {
          v38 = sub_4D1F50(a3, v10);
          if (v38 == sub_4D1F50(v32, v34))
          {
            return 0;
          }
        }
      }

      else if (v10 >= v35)
      {
        return 0;
      }
    }

    else if (!v31 || v34 >= sub_4D1DC0(v31))
    {
      return 0;
    }

    v39 = sub_4D1F50(a3, v10++);
    v40 = sub_4D1F50(a3, v10);
    v41 = v40;
    v42 = *v39;
    v43 = (*v39 - **v39);
    v44 = *v43;
    if (v44 < 9)
    {
      v45 = 0;
      v46 = *(a1 + 672) * 100.0;
      if (v46 < 0.0)
      {
LABEL_45:
        v47 = v46;
        if (v46 <= -4.50359963e15)
        {
          goto LABEL_51;
        }

        v48 = (v46 + v46) - 1 + (((v46 + v46) - 1) >> 63);
        goto LABEL_50;
      }
    }

    else
    {
      v45 = v43[4];
      if (v43[4])
      {
        v45 = *&v42[v45];
      }

      v46 = *(a1 + 672) * 100.0;
      if (v46 < 0.0)
      {
        goto LABEL_45;
      }
    }

    v47 = v46;
    if (v46 >= 4.50359963e15)
    {
      goto LABEL_51;
    }

    v48 = (v46 + v46) + 1;
LABEL_50:
    v47 = (v48 >> 1);
LABEL_51:
    v49 = 0x43E0000000000000;
    if (v47 >= 9.22337204e18)
    {
      v27 += v45;
      if (v27 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      goto LABEL_61;
    }

    if (v46 >= 0.0)
    {
      if (v46 >= 4.50359963e15)
      {
        goto LABEL_60;
      }

      v50 = (v46 + v46) + 1;
    }

    else
    {
      if (v46 <= -4.50359963e15)
      {
        goto LABEL_60;
      }

      v50 = (v46 + v46) - 1 + (((v46 + v46) - 1) >> 63);
    }

    v46 = (v50 >> 1);
LABEL_60:
    v27 += v45;
    if (v27 > v46)
    {
      return 0;
    }

LABEL_61:
    if (*(v39 + 38))
    {
      if (v44 < 0x49)
      {
        goto LABEL_71;
      }

      v51 = v43[36];
      if (!v51)
      {
        goto LABEL_71;
      }
    }

    else if (v44 < 0x4B || (v51 = v43[37]) == 0)
    {
LABEL_71:
      v52 = -1;
      v53 = *v40;
      v54 = (*v40 - **v40);
      v55 = *v54;
      if (*(v40 + 38))
      {
        goto LABEL_72;
      }

LABEL_68:
      if (v55 >= 0x49)
      {
        v56 = v54[36];
        if (v56)
        {
          goto LABEL_74;
        }
      }

LABEL_75:
      v57 = 0xFFFF;
      goto LABEL_76;
    }

    v52 = *&v42[v51];
    v53 = *v40;
    v54 = (*v40 - **v40);
    v55 = *v54;
    if (!*(v40 + 38))
    {
      goto LABEL_68;
    }

LABEL_72:
    if (v55 < 0x4B)
    {
      goto LABEL_75;
    }

    v56 = v54[37];
    if (!v56)
    {
      goto LABEL_75;
    }

LABEL_74:
    v57 = *&v53[v56];
LABEL_76:
    v58 = v52 + 18000;
    v59 = v52 - 18000;
    if ((v58 >> 5) < 0x465u)
    {
      v59 = v58;
    }

    v60 = v57 - v59;
    if (v60 > 18000)
    {
      v60 -= 36000;
    }

    if (v60 < -17999)
    {
      v60 += 36000;
    }

    v61 = v60 / 100.0;
    LOWORD(v49) = *(a1 + 682);
    if (fabs(v61) <= v49)
    {
      goto LABEL_97;
    }

    if (v25 < 0.0 == v61 < 0.0 || v97 == 0 || v95 == 0 || *(&v95 + 1) == 0)
    {
      return 0;
    }

    if (!sub_31B71C(*(a1 + 8), &v95, v9, v40) && !sub_31B71C(*(a1 + 8), &v95, v41, v9))
    {
LABEL_97:
      if (v97 && v95 && *(&v95 + 1))
      {
        continue;
      }

      __p = 0;
      v93 = 0;
      v94 = 0;
      sub_31B8F4(*(a1 + 8), v39, &__p);
      v30 = __p;
      v65 = v93;
      if (__p == v93)
      {
        if (__p)
        {
          goto LABEL_28;
        }

        continue;
      }

      while (1)
      {
        v71 = *(v41 + 32);
        if (__PAIR64__(*(v30 + 18), *(v30 + 8)) == __PAIR64__(WORD2(v71), v71) && v30[38] == BYTE6(v71))
        {
          goto LABEL_109;
        }

        v72 = *v30;
        v73 = (*v30 - **v30);
        v74 = *v73;
        if (v30[38])
        {
          if (v74 < 0x9B)
          {
            goto LABEL_109;
          }

          v75 = v73[77];
          if (!v75 || (*(v72 + v75) | 0xFFFFFFFFFFFFFFF9) != 0xFFFFFFFFFFFFFFFFLL)
          {
            goto LABEL_109;
          }
        }

        else
        {
          if (v74 < 0x9B)
          {
            goto LABEL_109;
          }

          v76 = v73[77];
          if (!v76 || (*(v72 + v76) | 0xFFFFFFFFFFFFFFFALL) != 0xFFFFFFFFFFFFFFFFLL)
          {
            goto LABEL_109;
          }
        }

        v77 = *(a1 + 8);
        v78 = *v39;
        v79 = *(v39 + 1);
        v91 = v39[4];
        v90[0] = v78;
        v90[1] = v79;
        BYTE6(v91) = BYTE6(v91) == 0;
        v80 = sub_31AE98(v77, v30, v90);
        if (v80 != sub_31AE98(*(a1 + 8), v30, v41))
        {
          break;
        }

LABEL_109:
        v30 += 40;
        if (v30 == v65)
        {
          goto LABEL_27;
        }
      }

      v81 = (*v39 - **v39);
      v82 = *v81;
      if (*(v39 + 38))
      {
        if (v82 < 0x49)
        {
          goto LABEL_131;
        }

        v83 = v81[36];
        if (!v83)
        {
          goto LABEL_131;
        }
      }

      else if (v82 < 0x4B || (v83 = v81[37]) == 0)
      {
LABEL_131:
        v84 = -1;
        v85 = *v30;
        v86 = (*v30 - **v30);
        v87 = *v86;
        if (v30[38])
        {
          goto LABEL_132;
        }

        goto LABEL_128;
      }

      v84 = *(*v39 + v83);
      v85 = *v30;
      v86 = (*v30 - **v30);
      v87 = *v86;
      if (v30[38])
      {
LABEL_132:
        if (v87 >= 0x4B)
        {
          v88 = v86[37];
          if (v88)
          {
LABEL_134:
            v66 = *(v85 + v88);
LABEL_102:
            v67 = v84 + 18000;
            v68 = v84 - 18000;
            if ((v67 >> 5) < 0x465u)
            {
              v68 = v67;
            }

            v69 = v66 - v68;
            if (v69 > 18000)
            {
              v69 -= 36000;
            }

            if (v69 < -17999)
            {
              v69 += 36000;
            }

            v70 = 0x4059000000000000;
            LOWORD(v70) = *(a1 + 682);
            if (fabs(v69 / 100.0) >= v70)
            {
              v28 = *v30;
              v29 = *(v30 + 1);
              v97 = *(v30 + 4);
              v95 = v28;
              v96 = v29;
LABEL_27:
              v30 = __p;
              if (__p)
              {
LABEL_28:
                v93 = v30;
                operator delete(v30);
              }

              continue;
            }

            goto LABEL_109;
          }
        }

LABEL_101:
        v66 = 0xFFFF;
        goto LABEL_102;
      }

LABEL_128:
      if (v87 >= 0x49)
      {
        v88 = v86[36];
        if (v88)
        {
          goto LABEL_134;
        }
      }

      goto LABEL_101;
    }

    break;
  }

  *v89 = a3;
  v89[1] = v10;
  return 1;
}

void sub_1121958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1122934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p)
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

void sub_1122D80(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  *(a1 + 920) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1336) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1496) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1560) = 0u;
  *(a1 + 1592) = 0u;
  *(a1 + 1624) = 0u;
  *(a1 + 1656) = 0u;
  *(a1 + 1688) = 0u;
  *(a1 + 1720) = 0u;
  *(a1 + 1752) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1816) = 0u;
  *(a1 + 1848) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1912) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1976) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2040) = 0u;
  *(a1 + 944) = 0;
  *(a1 + 936) = 0;
  *(a1 + 952) = 0;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0;
  *(a1 + 984) = 0;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1160) = 0;
  *(a1 + 1168) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1288) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1360) = 0;
  *(a1 + 1352) = 0;
  *(a1 + 1392) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1424) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1456) = 0;
  *(a1 + 1448) = 0;
  *(a1 + 1480) = 0;
  *(a1 + 1488) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1512) = 0;
  *(a1 + 1552) = 0;
  *(a1 + 1544) = 0;
  *(a1 + 1584) = 0;
  *(a1 + 1576) = 0;
  *(a1 + 1616) = 0;
  *(a1 + 1608) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1640) = 0;
  *(a1 + 1680) = 0;
  *(a1 + 1672) = 0;
  *(a1 + 1712) = 0;
  *(a1 + 1704) = 0;
  *(a1 + 1744) = 0;
  *(a1 + 1736) = 0;
  *(a1 + 1776) = 0;
  *(a1 + 1768) = 0;
  *(a1 + 1808) = 0;
  *(a1 + 1800) = 0;
  *(a1 + 1840) = 0;
  *(a1 + 1832) = 0;
  *(a1 + 1872) = 0;
  *(a1 + 1864) = 0;
  *(a1 + 1904) = 0;
  *(a1 + 1896) = 0;
  *(a1 + 1936) = 0;
  *(a1 + 1928) = 0;
  *(a1 + 1968) = 0;
  *(a1 + 1960) = 0;
  *(a1 + 2000) = 0;
  *(a1 + 1992) = 0;
  *(a1 + 2032) = 0;
  *(a1 + 2024) = 0;
  *(a1 + 2064) = 0;
  *(a1 + 2056) = 0;
  bzero(a1, 0x391uLL);
  *(a1 + 2072) = a4;
  v10 = 14;
  strcpy(__p, "add_debug_info");
  v7 = sub_5F9D0(a2, __p);
  if (v10 < 0)
  {
    v8 = v7;
    operator delete(__p[0]);
    v7 = v8;
  }

  *(a1 + 2073) = v7;
  operator new();
}

void sub_1123730(uint64_t a1, double **a2, double a3)
{
  v5 = *(a1 + 2072);
  switch(v5)
  {
    case 1:
      sub_1123974(a1, a2, a3);
      sub_1124594(a1, a2);
      break;
    case 2:
      sub_1123974(a1, a2, a3);
      v9 = *a2;
      v10 = a2[1];
      if (*a2 != v10)
      {
        do
        {
          v9[2] = 0.0;
          v11 = 0.0;
          v12 = (a1 + 8);
          for (i = 4; i != 41; ++i)
          {
            v14 = v9[i];
            if (v14 >= v12[1])
            {
              v11 = v11 + v14 * *(v12 - 1);
              v9[2] = v11;
              if (v14 > 0.0)
              {
                v11 = v11 + *v12;
                v9[2] = v11;
              }
            }

            v12 += 3;
          }

          v9 += 42;
        }

        while (v9 != v10);
      }

      break;
    case 3:
      v6 = a2[1] - *a2;
      if (v6)
      {
        v7 = 0;
        v8 = 0xCF3CF3CF3CF3CF3DLL * (v6 >> 4);
        do
        {
          *(sub_112491C(a2, v7) + 16) = v7;
          ++v7;
        }

        while (v8 != v7);
      }

      break;
  }

  if (*(a1 + 2073) == 1)
  {
    v15 = a2[1];
    if (*a2 != v15)
    {
      v16 = (*a2 + 2);
      do
      {
        v18 = *(v16 - 8);
        sub_60A20(2, &v21);
        v19 = std::string::insert(&v21, 0, " score: ", 8uLL);
        v20 = *&v19->__r_.__value_.__l.__data_;
        v23 = v19->__r_.__value_.__r.__words[2];
        *__p = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        sub_4C5174(v18, __p);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
          if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_25:
            operator delete(v21.__r_.__value_.__l.__data_);
          }
        }

        else if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_25;
        }

        v17 = v16 + 320;
        v16 += 336;
      }

      while (v17 != v15);
    }
  }
}

void sub_1123928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_1123974(uint64_t a1, double **a2, double a3)
{
  v3 = *a2;
  if (*a2 == a2[1])
  {
    return;
  }

  v101 = a2[1];
  v4 = (a1 + 576);
  v5 = v3[4];
  v104 = (a1 + 1720);
  v105 = (a1 + 1656);
  v6 = (a1 + 624);
  v7 = *(a1 + 2072);
  __src = (a1 + 1688);
  v8 = (a1 + 600);
  v9 = (a1 + 648);
  v98 = (a1 + 1784);
  v99 = (a1 + 1752);
  v10 = (a1 + 672);
  v11 = (a1 + 552);
  v96 = (a1 + 1144);
  v97 = (a1 + 1624);
  v12 = (a1 + 192);
  v13 = (a1 + 168);
  v94 = (a1 + 1848);
  v95 = (a1 + 1112);
  v14 = (a1 + 720);
  v16 = (a1 + 920);
  v17 = (a1 + 24);
  v18 = (a1 + 1016);
  v19 = (a1 + 96);
  v20 = (a1 + 1048);
  v21 = (a1 + 120);
  v22 = (a1 + 1240);
  v23 = (a1 + 264);
  v24 = (a1 + 952);
  v25 = (a1 + 48);
  v26 = (a1 + 1336);
  v27 = (a1 + 336);
  LODWORD(a3) = *(a1 + 2076);
  v28 = *&a3;
  v29 = 0.0;
  v30 = (a1 + 1304);
  v31 = (a1 + 312);
  v32 = (a1 + 1272);
  v100 = a1;
  v33 = (a1 + 288);
  v102 = v3;
  do
  {
    v35 = v7 - 2;
    v36 = (v7 - 2) < 2 || v7 == 0;
    v37 = v4;
    if (v36)
    {
      goto LABEL_15;
    }

    v38 = 0.0;
    if (v7 == 1)
    {
      v37 = v105;
LABEL_15:
      v38 = *v37 * v3[28];
    }

    v39 = v6;
    if (v35 < 2)
    {
      goto LABEL_20;
    }

    v39 = v6;
    if (!v7)
    {
      goto LABEL_20;
    }

    v40 = 0.0;
    if (v7 == 1)
    {
      v39 = v104;
LABEL_20:
      v40 = *v39 * v3[30];
    }

    v41 = v8;
    if (v35 < 2)
    {
      goto LABEL_25;
    }

    v41 = v8;
    if (!v7)
    {
      goto LABEL_25;
    }

    v42 = 0.0;
    if (v7 == 1)
    {
      v41 = __src;
LABEL_25:
      v42 = *v41 * v3[29];
    }

    v43 = v9;
    if (v35 < 2)
    {
      goto LABEL_30;
    }

    v43 = v9;
    if (!v7)
    {
      goto LABEL_30;
    }

    v44 = 0.0;
    if (v7 == 1)
    {
      v43 = v99;
LABEL_30:
      v44 = *v43 * v3[31];
    }

    v45 = v10;
    if (v35 < 2)
    {
      goto LABEL_35;
    }

    v45 = v10;
    if (!v7)
    {
      goto LABEL_35;
    }

    v46 = 0.0;
    if (v7 == 1)
    {
      v45 = v98;
LABEL_35:
      v46 = *v45 * v3[32];
    }

    v47 = v11;
    if (v35 < 2)
    {
      goto LABEL_40;
    }

    v47 = v11;
    if (!v7)
    {
      goto LABEL_40;
    }

    v48 = 0.0;
    if (v7 == 1)
    {
      v47 = v97;
LABEL_40:
      v48 = *v47 * v3[27];
    }

    v49 = v12;
    if (v35 < 2)
    {
      goto LABEL_45;
    }

    v49 = v12;
    if (!v7)
    {
      goto LABEL_45;
    }

    v50 = 0.0;
    if (v7 == 1)
    {
      v49 = v96;
LABEL_45:
      v50 = *v49 * v3[12];
    }

    v51 = v13;
    if (v35 < 2)
    {
      goto LABEL_50;
    }

    v51 = v13;
    if (!v7)
    {
      goto LABEL_50;
    }

    v52 = 0.0;
    if (v7 == 1)
    {
      v51 = v95;
LABEL_50:
      v52 = *v51 * v3[11];
    }

    v53 = v14;
    if (v35 < 2)
    {
      goto LABEL_55;
    }

    v53 = v14;
    if (!v7)
    {
      goto LABEL_55;
    }

    v54 = 0.0;
    if (v7 == 1)
    {
      v53 = v94;
LABEL_55:
      v54 = *v53 * v3[34];
    }

    v3[35] = v38 + v40 + v42 + v44 + v46 + v48 + v50 + v52 + v54;
    v55 = v3[10];
    v56 = v17;
    if (v35 < 2)
    {
      goto LABEL_60;
    }

    v56 = v17;
    if (!v7)
    {
      goto LABEL_60;
    }

    v57 = 0.0;
    if (v7 == 1)
    {
      v56 = v16;
LABEL_60:
      v57 = *v56 * v3[5];
    }

    v58 = v19;
    if (v35 < 2)
    {
      goto LABEL_65;
    }

    v58 = v19;
    if (!v7)
    {
      goto LABEL_65;
    }

    v59 = 0.0;
    if (v7 == 1)
    {
      v58 = v18;
LABEL_65:
      v59 = *v58 * v3[8];
    }

    v60 = v21;
    if (v35 < 2)
    {
      goto LABEL_70;
    }

    v60 = v21;
    if (!v7)
    {
      goto LABEL_70;
    }

    v61 = 0.0;
    if (v7 == 1)
    {
      v60 = v20;
LABEL_70:
      v61 = *v60 * v3[9];
    }

    v62 = v23;
    if (v35 < 2)
    {
      goto LABEL_75;
    }

    v62 = v23;
    if (!v7)
    {
      goto LABEL_75;
    }

    v63 = 0.0;
    if (v7 == 1)
    {
      v62 = v22;
LABEL_75:
      v63 = *v62 * v3[15];
    }

    v64 = v25;
    if (v35 < 2)
    {
      goto LABEL_80;
    }

    v64 = v25;
    if (!v7)
    {
      goto LABEL_80;
    }

    v65 = 0.0;
    if (v7 == 1)
    {
      v64 = v24;
LABEL_80:
      v65 = *v64 * v3[6];
    }

    v66 = v27;
    if (v35 < 2)
    {
      goto LABEL_85;
    }

    v66 = v27;
    if (!v7)
    {
      goto LABEL_85;
    }

    v67 = 0.0;
    if (v7 == 1)
    {
      v66 = v26;
LABEL_85:
      v67 = *v66 * v3[18];
    }

    v68 = v31;
    if (v35 < 2)
    {
      goto LABEL_90;
    }

    v68 = v31;
    if (!v7)
    {
      goto LABEL_90;
    }

    v69 = 0.0;
    if (v7 == 1)
    {
      v68 = v30;
LABEL_90:
      v69 = *v68 * v3[17];
    }

    v70 = v33;
    if (v35 < 2)
    {
      goto LABEL_3;
    }

    v70 = v33;
    if (!v7)
    {
      goto LABEL_3;
    }

    v34 = 0.0;
    if (v7 == 1)
    {
      v70 = v32;
LABEL_3:
      v34 = *v70 * v3[16];
    }

    v3[37] = (v57 + v59 + v61 + v63 + v65 + v67 + v69 + v34) * v28 / v55;
    if (v3[4] < v5)
    {
      v5 = v3[4];
    }

    if (v55 >= v29)
    {
      v29 = v55;
    }

    v3 += 42;
  }

  while (v3 != v101);
  v71 = v100;
  if (*(v100 + 2073))
  {
    v72 = v102;
    while (1)
    {
      v73 = v72[4];
      v72[13] = v72[12] * (v72[10] / v29);
      v72[38] = (v73 - v5) / v5;
      if (*(v71 + 2073) == 1)
      {
        break;
      }

LABEL_97:
      v72 += 42;
      v71 = v100;
      if (v72 == v101)
      {
        return;
      }
    }

    v74 = 0;
    while (2)
    {
      if (*(v100 + 888 + 32 * v74 + 24) == 1)
      {
        v106 = *(v72 + 1);
        v75 = &qword_27C2ED8;
        do
        {
          v75 = *v75;
          if (!v75)
          {
            HIBYTE(v110) = 7;
            strcpy(v109, "Unknown");
            goto LABEL_110;
          }
        }

        while (*(v75 + 40) != v74);
        if (*(v75 + 39) < 0)
        {
          sub_325C(v109, v75[2], v75[3]);
        }

        else
        {
          *v109 = *(v75 + 1);
          v110 = v75[4];
        }

LABEL_110:
        if (v110 >= 0)
        {
          v76 = HIBYTE(v110);
        }

        else
        {
          v76 = v109[1];
        }

        if (v110 >= 0)
        {
          v77 = 22;
        }

        else
        {
          v77 = (v110 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v77 == v76)
        {
          if (v76 != 0x7FFFFFFFFFFFFFF6)
          {
            operator new();
          }

          sub_3244();
        }

        if (v110 >= 0)
        {
          v78 = v109;
        }

        else
        {
          v78 = v109[0];
        }

        if (v76)
        {
          if (v78 <= " " && v78 + v76 > " ")
          {
            v80 = "";
          }

          else
          {
            v80 = " ";
          }

          if (v110 >= 0)
          {
            v81 = v109;
          }

          else
          {
            v81 = v109[0];
          }

          memmove(v81 + 1, v78, v76);
          *v78 = *v80;
          v82 = v76 + 1;
          if ((SHIBYTE(v110) & 0x80000000) == 0)
          {
LABEL_133:
            HIBYTE(v110) = v82 & 0x7F;
            goto LABEL_136;
          }
        }

        else
        {
          *v78 = asc_255FE22[0];
          v82 = 1;
          if ((SHIBYTE(v110) & 0x80000000) == 0)
          {
            goto LABEL_133;
          }
        }

        v109[1] = v82;
LABEL_136:
        *(v78 + v82) = 0;
        v112 = v110;
        *__p = *v109;
        v109[1] = 0;
        v110 = 0;
        v109[0] = 0;
        if (v112 >= 0)
        {
          v83 = 22;
        }

        else
        {
          v83 = (v112 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v112 >= 0)
        {
          v84 = HIBYTE(v112);
        }

        else
        {
          v84 = __p[1];
        }

        if (v83 == v84)
        {
          if (v83 != 0x7FFFFFFFFFFFFFF6)
          {
            operator new();
          }

          sub_3244();
        }

        v85 = __p;
        if (v112 < 0)
        {
          v85 = __p[0];
        }

        v84[v85] = 58;
        v86 = v84 + 1;
        if (SHIBYTE(v112) < 0)
        {
          __p[1] = v86;
        }

        else
        {
          HIBYTE(v112) = v86 & 0x7F;
        }

        *(v86 + v85) = 0;
        v113 = *__p;
        v114 = v112;
        __p[1] = 0;
        v112 = 0;
        __p[0] = 0;
        sub_60A20(2, v107);
        if ((v108 & 0x80u) == 0)
        {
          v87 = v107;
        }

        else
        {
          v87 = v107[0];
        }

        if ((v108 & 0x80u) == 0)
        {
          v88 = v108;
        }

        else
        {
          v88 = v107[1];
        }

        if (v114 >= 0)
        {
          v89 = 22;
        }

        else
        {
          v89 = (v114 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v114 >= 0)
        {
          v90 = HIBYTE(v114);
        }

        else
        {
          v90 = *(&v113 + 1);
        }

        if (v89 - v90 < v88)
        {
          if (0x7FFFFFFFFFFFFFF6 - v89 >= v90 + v88 - v89)
          {
            operator new();
          }

          sub_3244();
        }

        if (v88)
        {
          if (v114 >= 0)
          {
            v91 = &v113;
          }

          else
          {
            v91 = v113;
          }

          memmove(v91 + v90, v87, v88);
          v92 = v90 + v88;
          if (SHIBYTE(v114) < 0)
          {
            *(&v113 + 1) = v90 + v88;
          }

          else
          {
            HIBYTE(v114) = v92 & 0x7F;
          }

          *(v91 + v92) = 0;
        }

        v115 = v113;
        v116 = v114;
        v114 = 0;
        v113 = 0uLL;
        sub_4C5174(v106, &v115);
        if (SHIBYTE(v116) < 0)
        {
          operator delete(v115);
          if (v108 < 0)
          {
            goto LABEL_179;
          }

LABEL_175:
          if ((SHIBYTE(v114) & 0x80000000) == 0)
          {
            goto LABEL_176;
          }

LABEL_180:
          operator delete(v113);
          if ((SHIBYTE(v112) & 0x80000000) == 0)
          {
            goto LABEL_181;
          }

LABEL_100:
          operator delete(__p[0]);
          if (SHIBYTE(v110) < 0)
          {
LABEL_182:
            operator delete(v109[0]);
          }
        }

        else
        {
          if ((v108 & 0x80000000) == 0)
          {
            goto LABEL_175;
          }

LABEL_179:
          operator delete(v107[0]);
          if (SHIBYTE(v114) < 0)
          {
            goto LABEL_180;
          }

LABEL_176:
          if (SHIBYTE(v112) < 0)
          {
            goto LABEL_100;
          }

LABEL_181:
          if (SHIBYTE(v110) < 0)
          {
            goto LABEL_182;
          }
        }
      }

      if (++v74 == 37)
      {
        goto LABEL_97;
      }

      continue;
    }
  }

  v93 = v102;
  do
  {
    v93[13] = v93[12] * (v93[10] / v29);
    v93[38] = (v93[4] - v5) / v5;
    v93 += 42;
  }

  while (v93 != v101);
}

void sub_11244A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a27 < 0)
  {
    operator delete(a22);
    if (*(v40 - 137) < 0)
    {
LABEL_7:
      operator delete(*(v40 - 160));
      if ((a40 & 0x80000000) == 0)
      {
LABEL_8:
        if (a33 < 0)
        {
LABEL_9:
          operator delete(a28);
          _Unwind_Resume(a1);
        }

LABEL_5:
        _Unwind_Resume(a1);
      }

LABEL_4:
      operator delete(__p);
      if (a33 < 0)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    }
  }

  else if (*(v40 - 137) < 0)
  {
    goto LABEL_7;
  }

  if ((a40 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_4;
}

void sub_1124594(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 < v3)
  {
    v4 = (a1 + 912);
    v5 = *a2;
    do
    {
      v6 = 0.0;
      v7 = v2;
      do
      {
        if (v5 != v7)
        {
          v23 = v6;
          v9 = 0.0;
          v10 = v4;
          v11 = 32;
          v12 = 0.0;
          v13 = 0.0;
          do
          {
            if (*v10 == 1)
            {
              v16 = *(v7 + v11);
              v17 = *(v5 + v11);
              v18 = *(v10 - 2) * *(v10 - 2);
              v19 = log(*(v10 - 1));
              v20 = *(v10 - 3);
              if (v20 >= 0.0)
              {
                v14 = v16 - v17;
                v21 = 0.0;
                if (v14 < 0.0)
                {
                  v21 = 1.0 - exp(v14 * v14 * (v19 / v18));
                }
              }

              else
              {
                v21 = 0.0;
                if (v17 - v16 < 0.0)
                {
                  v21 = 1.0 - exp((v17 - v16) * (v17 - v16) * (v19 / v18));
                }

                v14 = v16 - v17;
              }

              v15 = fabs(v20);
              v13 = v13 + v15 * v21;
              v12 = v12 + v15 * exp(v19 / v18 * (v14 * v14));
              v9 = v9 + v15;
            }

            v11 += 8;
            v10 += 4;
          }

          while (v11 != 328);
          v22 = v9 - v12 - v13;
          v8 = 0.0;
          if (v22 < 0.0)
          {
            v22 = 0.0;
          }

          if (v13 > v22)
          {
            v8 = (v13 - v22) / v13;
          }

          if (v8 < 0.0)
          {
            v8 = 0.0;
          }

          if (v8 > 1.0)
          {
            v8 = 1.0;
          }

          v6 = v23;
          if (v23 < v8)
          {
            v6 = v8;
          }
        }

        v7 += 336;
      }

      while (v7 < v3);
      *(v5 + 16) = v6;
      v5 += 336;
    }

    while (v5 < v3);
  }
}

uint64_t **sub_1124764(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
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
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_112491C(void *a1, unint64_t a2)
{
  if (0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 4) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 4));
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

  return *a1 + 336 * a2;
}

void sub_1124A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_1124B38()
{
  strcpy(v0, "display_traversal_time");
  v0[23] = 22;
  v0[24] = 0;
  v2 = 272;
  strcpy(v1, "num_name_changes");
  operator new();
}

void sub_1125A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p)
{
  while (1)
  {
    v31 = *(a10 - 9);
    a10 -= 4;
    if (v31 < 0)
    {
      operator delete(*a10);
    }

    if (a10 == &__p)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_11260D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_34BE0((v25 + 304));
  sub_D5EE2C((v27 + 24));
  sub_1129F94(v27);
  sub_CDFAC8(v26);
  if (*(v25 + 103) < 0)
  {
    operator delete(*(v25 + 80));
  }

  _Unwind_Resume(a1);
}

void sub_112615C()
{
  if ((*(v0 + 103) & 0x80000000) == 0)
  {
    JUMPOUT(0x112614CLL);
  }

  JUMPOUT(0x1126144);
}

void sub_112616C(void *a1, uint64_t a2, void **a3)
{
  v4 = sub_5F680(a1, a2);
  v5 = *v4;
  v48 = v4[1];
  if (*v4 != v48)
  {
    while (1)
    {
      if (v5[2] != 1)
      {
        sub_5AF20();
      }

      v6 = *v5;
      if (*(*v5 + 23) < 0)
      {
        sub_325C(&v73, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v74 = *(v6 + 2);
        v73 = v7;
      }

      BYTE7(v65[0]) = 15;
      strcpy(__p, "selection_rules");
      v8 = sub_5F5AC(a1, __p);
      v9 = sub_5F680(v8, &v73);
      v50 = v5;
      if (SBYTE7(v65[0]) < 0)
      {
        v10 = v9;
        operator delete(__p[0]);
        v9 = v10;
      }

      v12 = *v9;
      v11 = v9[1];
      v51 = v11;
      while (v12 != v11)
      {
        *&v70[8] = 0u;
        *v68 = 0u;
        v69 = 0;
        memset(v67, 0, sizeof(v67));
        *v66 = 0u;
        *__p = 0u;
        memset(v65, 0, sizeof(v65));
        *v70 = 0x4059000000000000;
        *&v70[24] = 0x4059000000000000;
        *&v71 = 1000000000;
        *(&v71 + 1) = 0x7FFFFFFFFFFFFFFELL;
        v72 = 0;
        if (SHIBYTE(v74) < 0)
        {
          sub_13A68(__p, v73, *(&v73 + 1));
        }

        else
        {
          *__p = v73;
          *&v65[0] = v74;
        }

        if (*(v12 + 8) != 5)
        {
          sub_5AF20();
        }

        sub_1159CF8(v52, *v12);
        if (*(&v65[0] + 1))
        {
          *&v65[1] = *(&v65[0] + 1);
          operator delete(*(&v65[0] + 1));
        }

        *(v65 + 8) = *v52;
        *(&v65[1] + 1) = v53;
        v52[1] = 0;
        v53 = 0;
        v52[0] = 0;
        if (v66[0])
        {
          v66[1] = v66[0];
          operator delete(v66[0]);
        }

        *v66 = *v54;
        v67[0] = v55;
        v54[1] = 0;
        v55 = 0;
        v54[0] = 0;
        if (SHIBYTE(v67[3]) < 0)
        {
          operator delete(v67[1]);
        }

        *&v67[1] = v56;
        v67[3] = v57;
        HIBYTE(v57) = 0;
        LOBYTE(v56) = 0;
        if (SHIBYTE(v69) < 0)
        {
          operator delete(v68[0]);
          *v68 = v58;
          *v70 = v60;
          v69 = v59;
          HIBYTE(v59) = 0;
          LOBYTE(v58) = 0;
          *&v70[16] = v61;
          v71 = v62;
          v72 = v63;
          if ((SHIBYTE(v57) & 0x80000000) == 0)
          {
            v13 = v54[0];
            if (!v54[0])
            {
              goto LABEL_30;
            }

LABEL_29:
            v54[1] = v13;
            operator delete(v13);
            goto LABEL_30;
          }

          operator delete(v56);
          v13 = v54[0];
          if (v54[0])
          {
            goto LABEL_29;
          }
        }

        else
        {
          *v68 = v58;
          v69 = v59;
          HIBYTE(v59) = 0;
          LOBYTE(v58) = 0;
          *v70 = v60;
          *&v70[16] = v61;
          v71 = v62;
          v72 = v63;
          v13 = v54[0];
          if (v54[0])
          {
            goto LABEL_29;
          }
        }

LABEL_30:
        if (v52[0])
        {
          v52[1] = v52[0];
          operator delete(v52[0]);
        }

        v15 = a3[1];
        v14 = a3[2];
        if (v15 < v14)
        {
          v16 = *__p;
          v15[2] = *&v65[0];
          v15[3] = 0;
          *v15 = v16;
          __p[1] = 0;
          *&v65[0] = 0;
          __p[0] = 0;
          v15[4] = 0;
          v15[5] = 0;
          *(v15 + 3) = *(v65 + 8);
          *(&v65[0] + 1) = 0;
          *&v65[1] = 0;
          v15[5] = *(&v65[1] + 1);
          v15[6] = 0;
          v15[7] = 0;
          v15[8] = 0;
          *(v15 + 3) = *v66;
          v15[8] = v67[0];
          *(&v65[1] + 1) = 0;
          v66[0] = 0;
          v66[1] = 0;
          v67[0] = 0;
          v17 = *&v67[1];
          v15[11] = v67[3];
          *(v15 + 9) = v17;
          v67[1] = 0;
          v67[2] = 0;
          v18 = *v68;
          v15[14] = v69;
          *(v15 + 6) = v18;
          v68[1] = 0;
          v69 = 0;
          v67[3] = 0;
          v68[0] = 0;
          v19 = *v70;
          v20 = *&v70[16];
          v21 = v71;
          v15[21] = v72;
          *(v15 + 19) = v21;
          *(v15 + 17) = v20;
          *(v15 + 15) = v19;
          a3[1] = v15 + 22;
          if ((SHIBYTE(v67[3]) & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_71;
        }

        v22 = *a3;
        v23 = v15 - *a3;
        v24 = 0x2E8BA2E8BA2E8BA3 * (v23 >> 4) + 1;
        if (v24 > 0x1745D1745D1745DLL)
        {
          sub_1794();
        }

        v25 = 0x2E8BA2E8BA2E8BA3 * ((v14 - v22) >> 4);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0xBA2E8BA2E8BA2ELL)
        {
          v26 = 0x1745D1745D1745DLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          if (v26 <= 0x1745D1745D1745DLL)
          {
            operator new();
          }

          sub_1808();
        }

        v27 = *(&v65[1] + 1);
        v28 = 16 * (v23 >> 4);
        *(v28 + 16) = *&v65[0];
        *v28 = *__p;
        __p[1] = 0;
        *&v65[0] = 0;
        __p[0] = 0;
        *(v28 + 24) = *(v65 + 8);
        *(v28 + 40) = v27;
        *(&v65[0] + 1) = 0;
        *&v65[1] = 0;
        *(v28 + 48) = *v66;
        *(v28 + 64) = v67[0];
        v66[1] = 0;
        v67[0] = 0;
        *(&v65[1] + 1) = 0;
        v66[0] = 0;
        v29 = *&v67[1];
        *(v28 + 88) = v67[3];
        *(v28 + 72) = v29;
        v67[1] = 0;
        v67[2] = 0;
        v30 = *v68;
        *(v28 + 112) = v69;
        *(v28 + 96) = v30;
        v67[3] = 0;
        v68[0] = 0;
        v68[1] = 0;
        v69 = 0;
        v31 = *v70;
        v32 = *&v70[16];
        v33 = v71;
        *(v28 + 168) = v72;
        *(v28 + 152) = v33;
        *(v28 + 136) = v32;
        v34 = v28 - v23;
        *(v28 + 120) = v31;
        if (v22 != v15)
        {
          v35 = v22;
          v36 = v34;
          do
          {
            v37 = *v35;
            *(v36 + 16) = v35[2];
            *v36 = v37;
            v35[1] = 0;
            v35[2] = 0;
            *v35 = 0;
            *(v36 + 24) = 0;
            *(v36 + 32) = 0;
            *(v36 + 40) = 0;
            *(v36 + 24) = *(v35 + 3);
            *(v36 + 40) = v35[5];
            v35[3] = 0;
            v35[4] = 0;
            v35[5] = 0;
            *(v36 + 48) = 0;
            *(v36 + 56) = 0;
            *(v36 + 64) = 0;
            *(v36 + 48) = *(v35 + 3);
            *(v36 + 64) = v35[8];
            v35[6] = 0;
            v35[7] = 0;
            v35[8] = 0;
            v38 = *(v35 + 9);
            *(v36 + 88) = v35[11];
            *(v36 + 72) = v38;
            v35[10] = 0;
            v35[11] = 0;
            v35[9] = 0;
            v39 = *(v35 + 6);
            *(v36 + 112) = v35[14];
            *(v36 + 96) = v39;
            v35[13] = 0;
            v35[14] = 0;
            v35[12] = 0;
            v40 = *(v35 + 15);
            v41 = *(v35 + 17);
            v42 = *(v35 + 19);
            *(v36 + 168) = v35[21];
            *(v36 + 152) = v42;
            *(v36 + 136) = v41;
            *(v36 + 120) = v40;
            v35 += 22;
            v36 += 176;
          }

          while (v35 != v15);
          do
          {
            if (*(v22 + 119) < 0)
            {
              operator delete(v22[12]);
              if (*(v22 + 95) < 0)
              {
LABEL_58:
                operator delete(v22[9]);
                v43 = v22[6];
                if (!v43)
                {
                  goto LABEL_53;
                }

LABEL_52:
                v22[7] = v43;
                operator delete(v43);
                goto LABEL_53;
              }
            }

            else if (*(v22 + 95) < 0)
            {
              goto LABEL_58;
            }

            v43 = v22[6];
            if (v43)
            {
              goto LABEL_52;
            }

LABEL_53:
            v44 = v22[3];
            if (v44)
            {
              v22[4] = v44;
              operator delete(v44);
            }

            if (*(v22 + 23) < 0)
            {
              operator delete(*v22);
            }

            v22 += 22;
          }

          while (v22 != v15);
        }

        v45 = *a3;
        *a3 = v34;
        a3[1] = (v28 + 176);
        a3[2] = 0;
        if (v45)
        {
          operator delete(v45);
        }

        v46 = SHIBYTE(v69);
        a3[1] = (v28 + 176);
        if (v46 < 0)
        {
          operator delete(v68[0]);
          if ((SHIBYTE(v67[3]) & 0x80000000) == 0)
          {
LABEL_64:
            v47 = v66[0];
            if (!v66[0])
            {
              goto LABEL_66;
            }

LABEL_65:
            v66[1] = v47;
            operator delete(v47);
            goto LABEL_66;
          }
        }

        else if ((SHIBYTE(v67[3]) & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

LABEL_71:
        operator delete(v67[1]);
        v47 = v66[0];
        if (v66[0])
        {
          goto LABEL_65;
        }

LABEL_66:
        if (*(&v65[0] + 1))
        {
          *&v65[1] = *(&v65[0] + 1);
          operator delete(*(&v65[0] + 1));
        }

        if (SBYTE7(v65[0]) < 0)
        {
          operator delete(__p[0]);
        }

        v12 += 16;
        v11 = v51;
      }

      if (SHIBYTE(v74) < 0)
      {
        operator delete(v73);
        v5 = v50 + 4;
        if (v50 + 4 == v48)
        {
          return;
        }
      }

      else
      {
        v5 = v50 + 4;
        if (v50 + 4 == v48)
        {
          return;
        }
      }
    }
  }
}

void sub_1126880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((*(v38 - 105) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v38 - 105) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v38 - 128));
  _Unwind_Resume(exception_object);
}

void sub_11268E4(uint64_t a1, void *a2)
{
  *(a1 + 328) = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) >> 7) < 0xC30C30C30C30C4)
    {
      operator new();
    }

    sub_1794();
  }

  sub_1126CA0(a1);
}

void sub_1126C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_3D2A1C(&a15);
  sub_528AB4(&a53);
  v55 = *(v53 - 88);
  if (v55)
  {
    *(v53 - 80) = v55;
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

void sub_1126D40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_112A2B8(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_1126D54(_DWORD *result, double **a2, double a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v11 = *a2;
  }

  else
  {
    v6 = result;
    LODWORD(a3) = result[19];
    v7 = *&a3;
    v8 = v4 + 42;
    while (1)
    {
      v9 = *(v8 - 3);
      if (v9 > v7)
      {
        break;
      }

      v10 = v8 == v5;
      v8 += 42;
      if (v10)
      {
        goto LABEL_17;
      }
    }

    v11 = v8 - 42;
    if (v8 - 42 != v5 && v8 != v5)
    {
      do
      {
        LODWORD(v9) = v6[19];
        v9 = *&v9;
        if (v8[39] <= v9)
        {
          result = memcpy(v11, v8, 0x150uLL);
          v11 += 42;
        }

        v8 += 42;
      }

      while (v8 != v5);
      v4 = *a2;
      v5 = a2[1];
    }
  }

  if (v11 != v5)
  {
    v5 = v11;
    a2[1] = v11;
  }

LABEL_17:
  if (v4 != v5)
  {
    v12 = v4;
    while (v12[6] > 0.0)
    {
      v12 += 42;
      if (v12 == v5)
      {
        return result;
      }
    }

    while (v4[6] <= 0.0)
    {
      v4 += 42;
      if (v4 == v5)
      {
        return result;
      }
    }

    if (v4 != v5)
    {
      v13 = v4 + 42;
      if (v4 + 42 != v5)
      {
        do
        {
          if (v13[6] <= 0.0)
          {
            result = memcpy(v4, v13, 0x150uLL);
            v4 += 42;
          }

          v13 += 42;
        }

        while (v13 != v5);
        v5 = a2[1];
      }
    }

    if (v4 != v5)
    {
      a2[1] = v4;
    }
  }

  return result;
}

void sub_1126F14(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 8) - v2) >> 4) >= 2)
  {
    memcpy(__dst, v2, sizeof(__dst));
    operator new();
  }
}

void sub_1127528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  sub_34BE0(&a11);
  sub_D5EE2C(&a14);
  if (a21)
  {
    a22 = a21;
    operator delete(a21);
    if (!v25)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_5;
  }

  operator delete(v25);
  _Unwind_Resume(a1);
}

void sub_1127644(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = *a2;
  if (*(a1 + 104) == 1)
  {
    v32 = a2[1];
    if (v5 != v32)
    {
      do
      {
        v7 = 0;
        v33 = 0uLL;
        v34 = 0;
        do
        {
          v8 = &qword_27C2F30;
          do
          {
            v8 = *v8;
            if (!v8)
            {
              HIBYTE(v36) = 7;
              strcpy(__p, "Unknown");
              goto LABEL_16;
            }
          }

          while (*(v8 + 40) != v7);
          if (*(v8 + 39) < 0)
          {
            sub_325C(__p, v8[2], v8[3]);
          }

          else
          {
            *__p = *(v8 + 1);
            v36 = v8[4];
          }

LABEL_16:
          v9 = *(v5 + 32 + 8 * v7);
          if (v9 != 0.0)
          {
            v37 = *(v5 + 32 + 8 * v7);
            v10 = *(&v33 + 1);
            if (*(&v33 + 1) >= v34)
            {
              v12 = sub_112A338(&v33, __p, &v37);
            }

            else
            {
              if (SHIBYTE(v36) < 0)
              {
                sub_325C(*(&v33 + 1), __p[0], __p[1]);
              }

              else
              {
                v11 = *__p;
                *(*(&v33 + 1) + 16) = v36;
                *v10 = v11;
              }

              *(v10 + 24) = v9;
              *(v10 + 48) = 4;
              *(v10 + 64) = 0;
              *(v10 + 72) = 0;
              v12 = v10 + 80;
              *(v10 + 56) = 0;
            }

            *(&v33 + 1) = v12;
          }

          if (SHIBYTE(v36) < 0)
          {
            operator delete(__p[0]);
          }

          ++v7;
        }

        while (v7 != 37);
        v13 = *(v5 + 8);
        v14 = *v13;
        if (*v13)
        {
          v15 = v13[1];
          v6 = *v13;
          if (v15 != v14)
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
                      (off_2675628[v20])(__p, v17 - 32);
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
                (off_2675628[v21])(__p, v15 - 7);
              }

              v22 = v15 - 10;
              *(v15 - 8) = -1;
              if (*(v15 - 57) < 0)
              {
                operator delete(*v22);
              }

              v15 -= 10;
            }

            while (v22 != v14);
            v6 = *v13;
          }

          v13[1] = v14;
          operator delete(v6);
          *v13 = 0;
          v13[1] = 0;
          v13[2] = 0;
        }

        *v13 = v33;
        v13[2] = v34;
        v5 += 336;
      }

      while (v5 != v32);
      v3 = a2;
      v5 = *a2;
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v23 = v3[1];
  v24 = v23 - v5;
  if (v23 != v5)
  {
    v25 = sub_1129FF8(a3, (v5 + 8));
    *(a3 + 8) = v25;
    sub_4C515C(v25 - 128, 0);
    if (v24 != 336)
    {
      v26 = 0xCF3CF3CF3CF3CF3DLL * (v24 >> 4) - 1;
      v27 = 344;
      do
      {
        v28 = *v3;
        v29 = *(a3 + 8);
        if (v29 >= *(a3 + 16))
        {
          v30 = sub_1129FF8(a3, (v28 + v27));
        }

        else
        {
          sub_112A1B0(*(a3 + 8), (v28 + v27));
          v30 = v29 + 128;
        }

        *(a3 + 8) = v30;
        sub_4C515C(v30 - 128, 2);
        v27 += 336;
        --v26;
      }

      while (v26);
    }
  }
}

void sub_11279A8(_Unwind_Exception *a1)
{
  *(v2 + 8) = v1;
  sub_60A84C(v2);
  _Unwind_Resume(a1);
}

void sub_11279DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_3ECF74(&a13);
  _Unwind_Resume(a1);
}

void sub_1127A28(void *a1@<X0>, void *a2@<X8>)
{
  sub_1196B34(a1 + 31);
  sub_11959C4(a1 + 38);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[28] != a1[29])
  {
    __p = 0;
    v5 = 0;
    v6 = 0;
    sub_1127D70();
  }
}

void sub_1127B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    v13 = *v11;
    if (!*v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = *v11;
    if (!*v11)
    {
      goto LABEL_3;
    }
  }

  *(v11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1127BC4(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  HIBYTE(v13[2]) = 21;
  strcpy(v13, "CyclingRouteSelection");
  if (*(a1 + 103) < 0)
  {
    sub_325C(v14, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    *v14 = *(a1 + 80);
    v15 = *(a1 + 96);
  }

  sub_2AAFFC(&__p, v14, 1uLL);
  v5 = sub_3AEC94(v4, v13, &__p);
  v6 = __p;
  if (__p)
  {
    v7 = v12;
    v8 = __p;
    if (v12 != __p)
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

    v12 = v6;
    operator delete(v8);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
    if ((SHIBYTE(v13[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_16:
    operator delete(v13[0]);
    goto LABEL_14;
  }

  if (SHIBYTE(v13[2]) < 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  result = sub_1157398(a2, v5);
  *(a1 + 328) = result;
  return result;
}

void sub_1127D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_1A104(&a10);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1127D70()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  if (*(v0 + 72))
  {
    v3 = (v1 + 48);
    if (*(v1 + 71) >= 0)
    {
      v4 = *(v1 + 71);
    }

    else
    {
      v3 = *(v1 + 48);
      v4 = *(v1 + 56);
    }

    switch(v4)
    {
      case 8:
        v14 = bswap64(*v3);
        v15 = v14 >= 0x696E5F6F72646572;
        v16 = v14 > 0x696E5F6F72646572;
        v17 = !v15;
        if (v16 == v17)
        {
          v8 = 3;
        }

        else
        {
          v8 = 0;
        }

        break;
      case 6:
        v10 = *v3;
        v11 = *(v3 + 2);
        v13 = v10 == 1701734764 && v11 == 29281;
        v8 = 2 * v13;
        break;
      case 5:
        v5 = *v3;
        v6 = *(v3 + 4);
        v8 = v5 == 2054845798 && v6 == 121;
        break;
      default:
        v8 = 0;
        break;
    }

    if (v8 != 3 && *(v0 + 72) == 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  v19 = *v0;
  v22[23] = 19;
  strcpy(v22, "CyclingRouteScoring");
  if (*(v0 + 103) < 0)
  {
    sub_325C(&v24, *(v0 + 80), *(v0 + 88));
  }

  else
  {
    v24 = *(v0 + 80);
    v25 = *(v0 + 96);
  }

  sub_2AAFFC(&__p, &v24, 1uLL);
  v20 = sub_3AEC94(v19, v22, &__p);
  sub_1123724(v23, v20, v2 + 72, v9);
}

void sub_112816C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_11281BC(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    memcpy(*(a1 + 8), a2, 0x150uLL);
    v5 = (v4 + 336);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = 0xCF3CF3CF3CF3CF3DLL * ((v4 - *a1) >> 4) + 1;
  if (v7 > 0xC30C30C30C30C3)
  {
    sub_1794();
  }

  v8 = 0xCF3CF3CF3CF3CF3DLL * ((v3 - v6) >> 4);
  if (2 * v8 > v7)
  {
    v7 = 2 * v8;
  }

  if (v8 >= 0x61861861861861)
  {
    v9 = 0xC30C30C30C30C3;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (v9 <= 0xC30C30C30C30C3)
    {
      operator new();
    }

    sub_1808();
  }

  v10 = (16 * ((v4 - *a1) >> 4));
  memcpy(v10, a2, 0x150uLL);
  v5 = v10 + 336;
  v11 = v4 - v6;
  v12 = &v10[-(v4 - v6)];
  memcpy(v12, v6, v11);
  *a1 = v12;
  *(a1 + 8) = v10 + 336;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

BOOL sub_1128318(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = 48;
  if (*(a1 + 72) == 1)
  {
    v6 = 56;
  }

  v7 = *a5;
  v8 = *(a5 + 8);
  if (*a5 == v8)
  {
    return !sub_11285F4(a1, a2, a4, a5, a6);
  }

  v9 = *a4;
  v10 = a4[1];
  v11 = *(a1 + v6);
  v12 = *(a2 + 16);
  v13 = *a3;
  if (*a4 == v10)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a4;
  }

  if (*a4 == v10)
  {
    while (1)
    {
      v17 = *v7;
      if (v17 <= 0x12)
      {
        if (v17 == 13)
        {
          v15 = *(v14 + 16);
          v16 = *(v13 + 16) - v15;
          LODWORD(v15) = *(a1 + 40);
          if (v16 < *&v15)
          {
            return 0;
          }
        }

        else if (v17 == 14)
        {
          if (v12 > v11 + *(v14 + 16))
          {
            return 0;
          }
        }

        else if (((1 << v17) & 0x51FFF) != 0)
        {
          return 0;
        }
      }

      if (++v7 == v8)
      {
        return !sub_11285F4(a1, a2, a4, a5, a6);
      }
    }
  }

  v19 = *(a2 + 264);
  v20 = *(a5 + 144);
  if (!*(a2 + 328))
  {
    while (1)
    {
      v32 = *v7;
      if (v32 > 0xE)
      {
        switch(v32)
        {
          case 0x11u:
            v33 = *a4;
            while (1)
            {
              v34 = *(v33 + 328);
              if (!v34)
              {
                return 0;
              }

              while (__clz(__rbit64(v34)) - 6 >= 0xFFFFFFFB)
              {
                v34 &= v34 - 1;
                if (!v34)
                {
                  return 0;
                }
              }

              v33 += 336;
              if (v33 == v10)
              {
                goto LABEL_46;
              }
            }

          case 0x12u:
            if (v19 - *(v9 + 264) <= v20)
            {
              return 0;
            }

            break;
          case 0xFu:
            return 0;
        }
      }

      else if (v32 == 13)
      {
        v30 = *(v14 + 16);
        v31 = *(v13 + 16) - v30;
        LODWORD(v30) = *(a1 + 40);
        if (v31 < *&v30)
        {
          return 0;
        }
      }

      else if (v32 != 14 || v12 > v11 + *(v14 + 16))
      {
        return 0;
      }

LABEL_46:
      if (++v7 == v8)
      {
        return !sub_11285F4(a1, a2, a4, a5, a6);
      }
    }
  }

  while (1)
  {
    v23 = *v7;
    if (v23 <= 0xE)
    {
      if (v23 == 13)
      {
        v21 = *(v14 + 16);
        v22 = *(v13 + 16) - v21;
        LODWORD(v21) = *(a1 + 40);
        if (v22 < *&v21)
        {
          return 0;
        }
      }

      else if (v23 != 14 || v12 > v11 + *(v14 + 16))
      {
        return 0;
      }

      goto LABEL_21;
    }

    v24 = *a4;
    if (v23 == 17)
    {
      break;
    }

    if (v23 == 18)
    {
      if (v19 - *(v9 + 264) <= v20)
      {
        return 0;
      }
    }

    else if (v23 == 15)
    {
      return 0;
    }

LABEL_21:
    if (++v7 == v8)
    {
      return !sub_11285F4(a1, a2, a4, a5, a6);
    }
  }

  while (1)
  {
    v25 = *(v24 + 328);
    if (v25)
    {
      while (1)
      {
        v26 = __clz(__rbit64(v25)) - 6;
        v27 = __CFADD__(v26, 5);
        v28 = v26 < 0xFFFFFFFB;
        if (!v27)
        {
          break;
        }

        v25 &= v25 - 1;
        if (!v25)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
LABEL_35:
      v28 = 0;
    }

    v29 = *(a2 + 328);
    do
    {
      if (__clz(__rbit64(v29)) - 1 > 4)
      {
        return 0;
      }

      v29 &= v29 - 1;
    }

    while (v29);
    if (!v28)
    {
      return 0;
    }

    v24 += 336;
    if (v24 == v10)
    {
      goto LABEL_21;
    }
  }
}