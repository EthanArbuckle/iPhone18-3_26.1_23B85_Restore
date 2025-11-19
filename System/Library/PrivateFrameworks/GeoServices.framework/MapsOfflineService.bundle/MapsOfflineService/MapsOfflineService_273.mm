void sub_10CB12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, char a47)
{
  sub_49A8F8(&a22);
  if (__p)
  {
    operator delete(__p);
  }

  sub_454784(a9);
  _Unwind_Resume(a1);
}

double sub_10CB1D8@<D0>(__int16 *a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = *(a1 + 1);
    v9 = a1;
    v10 = sub_3F80(a2);
    v11 = sub_3F80(a3);
    sub_444404(v8, v10, v11);
    LOWORD(v9) = *v9;
    sub_458004(a4, v9);
    LODWORD(v7) = sub_3F80(v7);
    v12 = sub_3F80(a3);
    sub_45830C(a4, v9, v7, v12, &v15);
    sub_458BBC(a4, v9, &v14);
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0;
  *a5 = 0x7FFFFFFF;
  *(a5 + 8) = 0x7FFFFFFF;
  *(a5 + 12) = 0x7FFFFFFF7FFFFFFFLL;
  *(a5 + 32) = 0x8000000080000000;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0;
  *(a5 + 92) = 0x8000000080000000;
  *(a5 + 100) = 0x7FFFFFFF;
  result = 0.0;
  *(a5 + 120) = xmmword_2297C00;
  return result;
}

void sub_10CB388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
    v19 = a17;
    if (!a17)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v19 = a17;
    if (!a17)
    {
      goto LABEL_3;
    }
  }

  operator delete(v19);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10CB3D4@<X0>(unsigned int a1@<W0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v10 = sub_3AF6B4(a5);
  v11 = *a2;
  v12 = a2[1];
  v13 = (v12 - 8);
  if (*a2 != v12 && v13 > v11)
  {
    v15 = (v12 - 16);
    v16 = v11 + 8;
    if (v12 - 16 > v11 + 8)
    {
      v16 = v12 - 16;
    }

    v17 = v16 - 8;
    if (v17 == v11)
    {
      v18 = *a2;
    }

    else
    {
      v18 = v11 + 1;
    }

    v36 = v17 == v11;
    v19 = (v17 - v18) >> 4;
    if (!v36)
    {
      ++v19;
    }

    if (v19 < 0x13 || v11 < v12 && v12 - 8 * v19 - 8 < v11 + 8 * v19 + 8)
    {
      goto LABEL_19;
    }

    v20 = v19 + 1;
    v21 = (v19 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v13 -= v21;
    v22 = v11 + 8 * v21;
    v23 = (v11 + 16);
    v24 = v21;
    do
    {
      v25 = v23[-1];
      v26 = *v23;
      v27 = vextq_s8(v15[-1], v15[-1], 8uLL);
      v23[-1] = vextq_s8(*v15, *v15, 8uLL);
      *v23 = v27;
      v15[-1] = vextq_s8(v26, v26, 8uLL);
      *v15 = vextq_s8(v25, v25, 8uLL);
      v23 += 2;
      v15 -= 2;
      v24 -= 4;
    }

    while (v24);
    v11 = v22;
    if (v20 != v21)
    {
LABEL_19:
      v28 = v11 + 8;
      do
      {
        v29 = *(v28 - 8);
        *(v28 - 8) = *v13;
        *v13-- = v29;
        v30 = v28 >= v13;
        v28 += 8;
      }

      while (!v30);
    }
  }

  v52 = a3;
  v31 = v10;
  sub_F6BEE8(a6);
  v32 = *a2;
  v33 = a2[1];
  if (*a2 != v33)
  {
    do
    {
      v34 = *(*v32 + 40);
      v35 = *(*v32 + 48);
      v36 = *(*v32 + 36) == v34 && v35 == 0;
      if (!v36)
      {
        do
        {
          while (1)
          {
            sub_F6C3B8(a6, (v35 + 2), 0);
            v37 = *v35;
            if (sub_F94B2C(a4, *v35) == 1)
            {
              break;
            }

            v35 = 0;
            if (v37 == v34)
            {
              goto LABEL_24;
            }
          }

          sub_F9495C(a4, v37, v53);
          v35 = (*v53[0] + 104 * v54);
        }

        while (v37 != v34);
      }

LABEL_24:
      v32 += 8;
    }

    while (v32 != v33);
  }

  if (!sub_F6D008(a6))
  {
    v38 = sub_F94B9C(a4, *(**a2 + 36));
    v39 = HIDWORD(v38) & 0xFFFF0000FFFFFFFFLL | (WORD1(v38) << 32);
    v40 = sub_2B51D8(v31, v39);
    if (*(v31 + 7772) == 1)
    {
      v41 = sub_30C50C(v31 + 3896, HIDWORD(v38), 0);
      v42 = &v41[-*v41];
      if (*v42 < 5u)
      {
        v43 = 0;
      }

      else
      {
        v43 = *(v42 + 2);
        if (v43)
        {
          v43 += &v41[*&v41[v43]];
        }
      }

      v44 = (v43 + ((v38 << 16 >> 30) & 0x3FFFC) + 4 + *(v43 + ((v38 << 16 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v44 = 0;
    }

    v45 = sub_31D7E8(v31, v39, 1);
    v53[0] = v40;
    v53[1] = v44;
    v54 = v45;
    v55 = v46;
    v56 = (HIDWORD(v38) & 0xFFFE0000FFFFFFFFLL | (WORD1(v38) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v38 >> 1) & 1) << 48)) ^ 0x1000000000000;
    sub_F6C100(a6, v38, v53, 0);
  }

  v47 = **(a2[1] - 8);
  v48 = sub_F75E48(v52, a1);
  v49 = sub_F75E48(v52, v47);
  sub_F68F20(a6, v48 + 112);
  sub_F6901C(a6, v49 + 16);
  LODWORD(v53[0]) = 0x3FFFF;
  sub_F69690(a6, v53);
  LODWORD(v53[0]) = 0x3FFFF;
  result = sub_F6969C(a6, v53);
  a2[1] = *a2;
  return result;
}

uint64_t sub_10CB7E8(uint64_t a1, unsigned int *a2)
{
  v4 = sub_3F80(a2);
  v5 = sub_456C34((a1 + 20), v4);
  v6 = sub_4566A4(a2);
  if (v6 >= *(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    sub_4441F4(v8);
  }

  v11 = sub_4566AC(a2);
  if (v5 >= v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  sub_456544(&v12, v9, &v11);
  return v12;
}

uint64_t sub_10CB898(char **a1, int a2)
{
  result = sub_F63D58(a1);
  if ((result & 1) == 0)
  {
    if (a2 == 2)
    {
      v5 = *nullsub_1(a1);
      v14 = 196607;
      sub_F69690(v5, &v14);
    }

    v6 = a2 != 2;
    v7 = sub_45AC50(a1);
    v8 = sub_588D8(a1);
    if (v7 != v8)
    {
      v9 = v8;
      v10 = v7 + 552;
      while (v10 != v9)
      {
        v11 = sub_4D1DB0(v7 + 552);
        if (*v11 != -1 || *(v11 + 2) != 3)
        {
          v14 = v6;
          sub_F6969C(v7, &v14);
          v14 = v6;
          sub_F69690(v7 + 552, &v14);
          ++v6;
        }

        v10 = v7 + 1104;
        v7 += 552;
      }
    }

    v13 = *(nullsub_1(a1) + 8) - 552;
    v14 = v6;
    return sub_F6969C(v13, &v14);
  }

  return result;
}

void sub_10CB9AC()
{
  byte_27C1E37 = 3;
  LODWORD(qword_27C1E20) = 5136193;
  byte_27C1E4F = 3;
  LODWORD(qword_27C1E38) = 5136194;
  byte_27C1E67 = 3;
  LODWORD(qword_27C1E50) = 5136195;
  byte_27C1E7F = 15;
  strcpy(&qword_27C1E68, "vehicle_mass_kg");
  byte_27C1E97 = 21;
  strcpy(&xmmword_27C1E80, "vehicle_cargo_mass_kg");
  byte_27C1EAF = 19;
  strcpy(&qword_27C1E98, "vehicle_aux_power_w");
  byte_27C1EC7 = 15;
  strcpy(&qword_27C1EB0, "dcdc_efficiency");
  strcpy(&qword_27C1EC8, "drive_train_efficiency");
  HIBYTE(word_27C1EDE) = 22;
  operator new();
}

void sub_10CBB88(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C1EDE) < 0)
  {
    sub_21E771C();
  }

  sub_21E7728();
  _Unwind_Resume(a1);
}

void sub_10CBBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = xmmword_22AF6F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = sub_3F80((a3 + 392));
  operator new();
}

void sub_10CBE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10CBED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a2 + 132;
  result = *a4;
  v5 = *(a4 + 16);
  *(a1 + 80) = *(a4 + 32);
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

void sub_10CBEF4(uint64_t a1, int a2, char a3, void *a4)
{
  if (*a4 != a4[1])
  {
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v6 >= v5)
    {
      v8 = *a1;
      v9 = (v6 - *a1) >> 4;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        sub_1794();
      }

      v11 = v5 - v8;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (!(v12 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v13 = (v6 - *a1) >> 4;
      v14 = 16 * v9;
      *v14 = a2;
      *(v14 + 4) = a3;
      *(v14 + 8) = a4;
      v7 = 16 * v9 + 16;
      v15 = (v14 - 16 * v13);
      if (v8 != v6)
      {
        v16 = v15;
        do
        {
          v17 = *v8++;
          *v16++ = v17;
        }

        while (v8 != v6);
        v8 = *a1;
      }

      *a1 = v15;
      *(a1 + 8) = v7;
      *(a1 + 16) = 0;
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v6 = a2;
      *(v6 + 4) = a3;
      v7 = v6 + 16;
      *(v6 + 8) = a4;
    }

    *(a1 + 8) = v7;
  }
}

uint64_t sub_10CC038(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 16;
  if (v3 >= 0x10)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v3 >> 4) + 1;
    v5 = v2 + 16 * (v9 & 0x1FFFFFFFFFFFFFFELL);
    v10 = (v2 + 24);
    v11 = v9 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      v12 = *(v10 - 2);
      v13 = *v10;
      v10 += 4;
      v7 -= 1227133513 * ((v12[1] - *v12) >> 3);
      v8 -= 1227133513 * ((v13[1] - *v13) >> 3);
      v11 -= 2;
    }

    while (v11);
    v4 = v8 + v7;
    if (v9 == (v9 & 0x1FFFFFFFFFFFFFFELL))
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
    v5 = *a1;
  }

  do
  {
    v4 -= 1227133513 * ((*(*(v5 + 8) + 8) - **(v5 + 8)) >> 3);
    v5 += 16;
  }

  while (v5 != v1);
  return v4;
}

void sub_10CC0FC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a2;
  if (*a1 == a1[1])
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  v3 = a1;
  v4 = nullsub_1(a1[4]);
  v118 = sub_4566AC(v4);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  v7 = *v3;
  v6 = v3[1];
  if (*v3 == v6)
  {
    goto LABEL_12;
  }

  v8 = v6 - v7 - 16;
  if (v8 <= 0xF)
  {
    v9 = 0;
    v10 = *v3;
    do
    {
LABEL_9:
      v9 -= 1227133513 * ((*(*(v10 + 8) + 8) - **(v10 + 8)) >> 3);
      v10 += 16;
    }

    while (v10 != v6);
    goto LABEL_10;
  }

  v11 = 0;
  v12 = 0;
  v13 = (v8 >> 4) + 1;
  v10 = v7 + 16 * (v13 & 0x1FFFFFFFFFFFFFFELL);
  v14 = (v7 + 24);
  v15 = v13 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    v16 = *(v14 - 2);
    v17 = *v14;
    v14 += 4;
    v11 -= 1227133513 * ((v16[1] - *v16) >> 3);
    v12 -= 1227133513 * ((v17[1] - *v17) >> 3);
    v15 -= 2;
  }

  while (v15);
  v9 = v12 + v11;
  if (v13 != (v13 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v9)
  {
    operator new();
  }

LABEL_12:
  v18 = 0;
  v19 = 0;
  v105 = v2;
  v112 = v3;
  if (v7 == v6)
  {
    goto LABEL_93;
  }

  v103 = v3[1];
  do
  {
    v20 = *(v3 + 12);
    if (*(v7 + 4) == 1)
    {
      v111 = 2;
      v108 = 0x7FFFFFFF;
    }

    else
    {
      v111 = 3;
      v108 = *(v3 + 12);
    }

    if (v20 >= *(v3[5] + 4))
    {
      v20 = *(v3[5] + 4);
    }

    v107 = v20;
    v21 = *(v3 + 15);
    v114 = v7;
    if (v21 == 0x7FFFFFFF || (LODWORD(v115[0]) = -v21, v109 = sub_4568D8(v115, &v118), v106 = v22, v23 = *(v7 + 8), v24 = *v23, v104 = v23[1], *v23 == v104))
    {
      __src = 0;
      v25 = 0;
    }

    else
    {
      __src = 0;
      v25 = 0;
      do
      {
        v115[0] = v109;
        LODWORD(v115[1]) = v106;
        if (sub_456A78(v115) && (v26 = *v24, v27 = *(v24 + 8), v28 = *(v24 + 16), v119 = v109, v120 = v106, v115[0] = sub_456CF8((v24 + 20), &v119), LODWORD(v115[1]) = v29, v30 = *(v24 + 32), sub_456A78(v115)) && (v31 = sub_4441F4(v27), v32 = v115[0], v31 >= SLODWORD(v115[0])))
        {
          v34 = HIDWORD(v115[0]);
          v33 = v115[1];
          v35 = v28;
        }

        else
        {
          v27 = 0;
          v33 = 0x7FFFFFFF;
          v30 = -1;
          v34 = 0x7FFFFFFF;
          v32 = 0x7FFFFFFF;
          v35 = 0x7FFFFFFF;
          v26 = 0x7FFFFFFF;
        }

        v36 = v25 - __src;
        v37 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - __src) >> 3);
        v38 = v37 + 1;
        if (v37 + 1 > 0x666666666666666)
        {
          sub_1794();
        }

        if (0x999999999999999ALL * (-__src >> 3) > v38)
        {
          v38 = 0x999999999999999ALL * (-__src >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * (-__src >> 3) >= 0x333333333333333)
        {
          v39 = 0x666666666666666;
        }

        else
        {
          v39 = v38;
        }

        if (v39)
        {
          if (v39 <= 0x666666666666666)
          {
            operator new();
          }

          sub_1808();
        }

        v40 = 40 * v37;
        *v40 = v26;
        *(v40 + 4) = 0;
        *(v40 + 8) = v27;
        *(v40 + 16) = v35;
        *(v40 + 20) = v32;
        *(v40 + 24) = v34;
        *(v40 + 28) = v33;
        *(v40 + 32) = v30;
        *(v40 + 36) = 0;
        v25 = 40 * v37 + 40;
        v41 = (v40 + 40 * (v36 / -40));
        memcpy(v41, __src, v36);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v41;
        v3 = v112;
        v7 = v114;
        v2 = v105;
        v24 += 56;
      }

      while (v24 != v104);
    }

    v110 = -1227133513 * ((*(*(v7 + 8) + 8) - **(v7 + 8)) >> 3);
    if (v110)
    {
      for (i = 0; i != v110; ++i)
      {
        v46 = **(v7 + 8) + 56 * i;
        if (*(v3 + 80) == 1 && *(v46 + 32) == -1)
        {
          continue;
        }

        if (__src != v25 && *(v46 + 32) != -1)
        {
          v47 = 0;
          v48 = v3[3];
          v49 = *(v46 + 36);
          v50 = **(v7 + 8) + 56 * i;
          while (v49 != 0xFFFFFFFFLL)
          {
            v50 = *(*(v48 + 72) + 32 * v49) + 56 * *(v50 + 40);
            v51 = *(v50 + 36);
            if (v51 == v49)
            {
              ++v47;
            }

            v49 = *(v50 + 36);
            if (v51 == -1)
            {
              if (*(v50 + 8) != v48 + 104)
              {
                ++v47;
              }

              break;
            }
          }

          if (i && v47 >= *(v3 + 16))
          {
            v52 = __src;
            v53 = i;
            while ((sub_10C6F84(v52, (__src + 40 * i), v3[5]) & 1) == 0)
            {
              v52 += 10;
              if (!--v53)
              {
                goto LABEL_63;
              }
            }

            continue;
          }
        }

LABEL_63:
        if (*(v46 + 32) == -1)
        {
          if (*(v46 + 8) == v3[3] + 104)
          {
            v54 = 3;
          }

          else
          {
            v54 = 2;
          }
        }

        else
        {
          v54 = 0;
        }

        v55 = sub_10C0038(v3[5], v46, v107, v108, 0x7FFFFFFF, v54, v111, &v118);
        v56 = v55;
        v58 = v57;
        v7 = v114;
        if (*(v114 + 4))
        {
          v3 = v112;
          v59 = v2[1];
          v60 = v2[2];
          if (v59 >= v60)
          {
            goto LABEL_78;
          }

          goto LABEL_44;
        }

        v3 = v112;
        v61 = *(v112 + 9);
        v62 = v61 * sub_10BFED0(v112[5], SHIDWORD(v55), v111);
        if (v62 >= 0.0)
        {
          if (v62 >= 4.50359963e15)
          {
            goto LABEL_77;
          }

          v63 = (v62 + v62) + 1;
        }

        else
        {
          if (v62 <= -4.50359963e15)
          {
            goto LABEL_77;
          }

          v63 = (v62 + v62) - 1 + (((v62 + v62) - 1) >> 63);
        }

        v62 = (v63 >> 1);
LABEL_77:
        v58 += v62;
        v59 = v2[1];
        v60 = v2[2];
        if (v59 >= v60)
        {
LABEL_78:
          v64 = *v2;
          v65 = v59 - *v2;
          v66 = 0xCCCCCCCCCCCCCCCDLL * (v65 >> 4) + 1;
          if (v66 > 0x333333333333333)
          {
            sub_1794();
          }

          v67 = 0xCCCCCCCCCCCCCCCDLL * ((v60 - v64) >> 4);
          if (2 * v67 > v66)
          {
            v66 = 2 * v67;
          }

          if (v67 >= 0x199999999999999)
          {
            v68 = 0x333333333333333;
          }

          else
          {
            v68 = v66;
          }

          if (v68)
          {
            if (v68 <= 0x333333333333333)
            {
              operator new();
            }

            sub_1808();
          }

          v69 = 16 * (v65 >> 4);
          *v69 = *v114;
          v70 = *v46;
          v71 = *(v46 + 16);
          v72 = *(v46 + 48);
          *(v69 + 40) = *(v46 + 32);
          *(v69 + 24) = v71;
          *(v69 + 8) = v70;
          *(v69 + 56) = v72;
          *(v69 + 64) = v56;
          *(v69 + 72) = v58;
          v45 = v69 + 80;
          v73 = v69 - v65;
          memcpy((v69 - v65), v64, v65);
          *v2 = v73;
          v2[1] = v45;
          v2[2] = 0;
          if (v64)
          {
            operator delete(v64);
          }

          v3 = v112;
          v7 = v114;
          goto LABEL_45;
        }

LABEL_44:
        *v59 = *v114;
        v5 = *v46;
        v43 = *(v46 + 16);
        v44 = *(v46 + 48);
        *(v59 + 40) = *(v46 + 32);
        *(v59 + 24) = v43;
        *(v59 + 8) = v5;
        *(v59 + 56) = v44;
        *(v59 + 64) = v56;
        *(v59 + 72) = v58;
        v45 = v59 + 80;
LABEL_45:
        v2[1] = v45;
      }
    }

    if (__src)
    {
      operator delete(__src);
    }

    v7 += 16;
  }

  while (v7 != v103);
  v19 = *v2;
  v18 = v2[1];
LABEL_93:
  if (&v18[-v19] < 10241)
  {
    v75 = 0;
    v76 = 0;
  }

  else
  {
    v74 = 0xCCCCCCCCCCCCCCCDLL * (&v18[-v19] >> 4);
    while (1)
    {
      v75 = operator new(80 * v74, &std::nothrow);
      if (v75)
      {
        break;
      }

      v76 = v74 >> 1;
      v77 = v74 > 1;
      v74 >>= 1;
      if (!v77)
      {
        goto LABEL_100;
      }
    }

    v76 = v74;
  }

LABEL_100:
  sub_10CCF18(v19, v18, 0xCCCCCCCCCCCCCCCDLL * (&v18[-v19] >> 4), v75, v76, v5);
  if (v75)
  {
    operator delete(v75);
  }

  v78 = *(v112 + 13);
  if (v78)
  {
    v79 = *v105;
    v80 = v105[1];
    if (0xCCCCCCCCCCCCCCCDLL * (&v80[-*v105] >> 4) > v78)
    {
      v81 = *(v112 + 14);
      if (v78 >= v81)
      {
        v82 = v81;
      }

      else
      {
        v82 = v78;
      }

      v83 = 80 * (v78 - v82);
      v84 = v83 + v79;
      v85 = 0uLL;
      *v115 = 0u;
      *__p = 0u;
      v117 = 1065353216;
      if (v83)
      {
        do
        {
          LODWORD(v119) = *(v79 + 40);
          if (v119 != -1)
          {
            sub_10CDD10(v115, &v119);
          }

          v79 += 80;
        }

        while (v79 != v84);
      }

      v86 = &v80[-v84];
      if (v80 != v84)
      {
        v87 = v84;
        do
        {
          v88 = *(v87 + 40);
          LODWORD(v119) = v88;
          if (v88 == -1)
          {
            goto LABEL_113;
          }

          if (v115[1])
          {
            v85.n128_u64[0] = vcnt_s8(v115[1]);
            v85.n128_u16[0] = vaddlv_u8(v85.n128_u64[0]);
            if (v85.n128_u32[0] > 1uLL)
            {
              v89 = v88;
              if (v115[1] <= v88)
              {
                v89 = v88 % LODWORD(v115[1]);
              }
            }

            else
            {
              v89 = (LODWORD(v115[1]) - 1) & v88;
            }

            v90 = *(v115[0] + v89);
            if (v90)
            {
              v91 = *v90;
              if (v91)
              {
                if (v85.n128_u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v93 = v91[1];
                    if (v93 == v88)
                    {
                      if (*(v91 + 4) == v88)
                      {
                        goto LABEL_113;
                      }
                    }

                    else if ((v93 & (v115[1] - 1)) != v89)
                    {
                      goto LABEL_136;
                    }

                    v91 = *v91;
                    if (!v91)
                    {
                      goto LABEL_136;
                    }
                  }
                }

                do
                {
                  v92 = v91[1];
                  if (v92 == v88)
                  {
                    if (*(v91 + 4) == v88)
                    {
                      goto LABEL_113;
                    }
                  }

                  else
                  {
                    if (v92 >= v115[1])
                    {
                      v92 %= v115[1];
                    }

                    if (v92 != v89)
                    {
                      break;
                    }
                  }

                  v91 = *v91;
                }

                while (v91);
              }
            }
          }

LABEL_136:
          if (__p[1] >= v82)
          {
LABEL_113:
            *(v87 + 72) += 864000;
          }

          else
          {
            sub_10CDD10(v115, &v119);
          }

          v87 += 80;
        }

        while (v87 != v80);
      }

      v94 = 0xCCCCCCCCCCCCCCCDLL * (v86 >> 4);
      if (v86 < 10241)
      {
        v96 = 0;
        v97 = 0;
      }

      else
      {
        v95 = 0xCCCCCCCCCCCCCCCDLL * (v86 >> 4);
        while (1)
        {
          v96 = operator new(80 * v95, &std::nothrow);
          if (v96)
          {
            break;
          }

          v97 = v95 >> 1;
          v77 = v95 > 1;
          v95 >>= 1;
          if (!v77)
          {
            goto LABEL_145;
          }
        }

        v97 = v95;
      }

LABEL_145:
      sub_10CE048(v84, v80, v94, v96, v97, v85);
      if (v96)
      {
        operator delete(v96);
      }

      v98 = *(v112 + 13);
      v99 = 0xCCCCCCCCCCCCCCCDLL * ((v105[1] - *v105) >> 4);
      if (v98 <= v99)
      {
        if (v98 < v99)
        {
          v105[1] = *v105 + 80 * v98;
        }
      }

      else
      {
        sub_10CCCE0(v105, v98 - v99);
      }

      v100 = __p[0];
      if (__p[0])
      {
        do
        {
          v101 = *v100;
          operator delete(v100);
          v100 = v101;
        }

        while (v101);
      }

      v102 = v115[0];
      v115[0] = 0;
      if (v102)
      {
        operator delete(v102);
      }
    }
  }
}

void sub_10CCC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, char a21)
{
  sub_11BD8(&a21);
  v22 = *a12;
  if (!*a12)
  {
    _Unwind_Resume(a1);
  }

  *(a12 + 8) = v22;
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_10CCCE0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v8 = &v4[5 * a2];
      v9 = 80 * a2;
      do
      {
        *v4 = 0u;
        v4[1] = 0u;
        v4[2] = 0u;
        v4[3] = 0u;
        v4[4] = 0u;
        *v4 = -1;
        *(v4 + 8) = 0u;
        *(v4 + 40) = 0u;
        *(v4 + 2) = 0x7FFFFFFF;
        *&v10 = 0x8000000080000000;
        *(&v10 + 1) = 0x8000000080000000;
        *(v4 + 24) = v10;
        *(v4 + 5) = -1;
        sub_10BFE3C((v4 + 4));
        v4 += 5;
        v9 -= 80;
      }

      while (v9);
      v4 = v8;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4) + a2;
    if (v5 > 0x333333333333333)
    {
      sub_1794();
    }

    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x199999999999999)
    {
      v7 = 0x333333333333333;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      if (v7 <= 0x333333333333333)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 16 * ((v4 - *a1) >> 4);
    v12 = v11 + 80 * a2;
    v13 = (v11 + 64);
    do
    {
      *(v13 - 4) = 0u;
      v14 = v13 - 4;
      *(v13 - 3) = 0u;
      *(v13 - 2) = 0u;
      *(v13 - 1) = 0u;
      *v13 = 0u;
      *(v13 - 16) = -1;
      *(v13 - 56) = 0u;
      *(v13 - 24) = 0u;
      *(v13 - 14) = 0x7FFFFFFF;
      *&v15 = 0x8000000080000000;
      *(&v15 + 1) = 0x8000000080000000;
      *(v13 - 40) = v15;
      *(v13 - 3) = -1;
      sub_10BFE3C(v13);
      v13 = (v16 + 80);
    }

    while (v14 + 5 != v12);
    v17 = *a1;
    v18 = *(a1 + 8) - *a1;
    v19 = (v11 - v18);
    memcpy(v19, *a1, v18);
    *a1 = v19;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

void sub_10CCEF8(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_10CCF18(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      if (sub_10BFE90(a2 - 4, (a1 + 64)))
      {
        v46 = v7[1];
        v48 = v7[2];
        *v50 = v7[3];
        *&v50[16] = v7[4];
        v44 = *v7;
        *v7 = *(a2 - 5);
        v9 = *(a2 - 3);
        v8 = *(a2 - 2);
        v10 = *(a2 - 4);
        *(v7 + 60) = *(a2 - 20);
        v7[2] = v9;
        v7[3] = v8;
        v7[1] = v10;
        *(a2 - 5) = v44;
        *(a2 - 20) = *&v50[12];
        *(a2 - 2) = *v50;
        *(a2 - 3) = v48;
        *(a2 - 4) = v46;
      }
    }

    else if (a3 > 128)
    {
      v22 = a4;
      v23 = a3 >> 1;
      v24 = (a1 + 80 * (a3 >> 1));
      v25 = a3 - (a3 >> 1);
      if (a3 <= a5)
      {
        v28 = sub_10CD270(a1, v24, a3 >> 1, a4, a6);
        v29 = v22 + 80 * v23;
        sub_10CD270(v24, a2, v25, v29, v28);
        v30 = v22 + 80 * a3;
        v31 = v29;
        while (v31 != v30)
        {
          if (sub_10BFE90((v31 + 64), (v22 + 64)))
          {
            *v7 = *v31;
            v35 = *(v31 + 16);
            v36 = *(v31 + 32);
            v37 = *(v31 + 48);
            *(v7 + 60) = *(v31 + 60);
            v7[2] = v36;
            v7[3] = v37;
            v7[1] = v35;
            v31 += 80;
            v7 += 5;
            if (v22 == v29)
            {
LABEL_32:
              while (v31 != v30)
              {
                *v7 = *v31;
                v41 = *(v31 + 16);
                v42 = *(v31 + 32);
                v43 = *(v31 + 48);
                *(v7 + 60) = *(v31 + 60);
                v7[2] = v42;
                v7[3] = v43;
                v7[1] = v41;
                v31 += 80;
                v7 += 5;
              }

              return;
            }
          }

          else
          {
            *v7 = *v22;
            v32 = *(v22 + 16);
            v33 = *(v22 + 32);
            v34 = *(v22 + 48);
            *(v7 + 60) = *(v22 + 60);
            v7[2] = v33;
            v7[3] = v34;
            v7[1] = v32;
            v22 += 80;
            v7 += 5;
            if (v22 == v29)
            {
              goto LABEL_32;
            }
          }
        }

        while (v22 != v29)
        {
          *v7 = *v22;
          v38 = *(v22 + 16);
          v39 = *(v22 + 32);
          v40 = *(v22 + 48);
          *(v7 + 60) = *(v22 + 60);
          v7[2] = v39;
          v7[3] = v40;
          v7[1] = v38;
          v22 += 80;
          v7 += 5;
        }
      }

      else
      {
        sub_10CCF18(a1, v24, a3 >> 1, a4, a5);
        sub_10CCF18(v24, a2, v25, v22, a5);

        sub_10CD5B0(v7, v24, a2, v23, v25, v22, a5);
      }
    }

    else if (a1 != a2)
    {
      v11 = (a1 + 80);
      if ((a1 + 80) != a2)
      {
        v12 = 0;
        v13 = a1;
        do
        {
          v15 = v13;
          v13 = v11;
          if (sub_10BFE90(v15 + 36, v15 + 16))
          {
            v45 = *v13;
            v16 = v13[1];
            v17 = v13[2];
            *v50 = v13[3];
            *&v50[16] = v13[4];
            v47 = v16;
            v49 = v17;
            v18 = v12;
            do
            {
              v19 = (v7 + v18);
              v20 = *(v7 + v18 + 48);
              v19[7] = *(v7 + v18 + 32);
              v19[8] = v20;
              *(v19 + 140) = *(v7 + v18 + 60);
              v21 = *(v7 + v18 + 16);
              v19[5] = *(v7 + v18);
              v19[6] = v21;
              if (!v18)
              {
                v14 = v7;
                goto LABEL_11;
              }

              v18 -= 80;
            }

            while (sub_10BFE90(&v50[16], v19 - 4));
            v14 = (v7 + v18 + 80);
LABEL_11:
            *v14 = v45;
            *(v14 + 60) = *&v50[12];
            v14[2] = v49;
            v14[3] = *v50;
            v14[1] = v47;
          }

          v11 = v13 + 5;
          v12 += 80;
        }

        while (v13 + 5 != a2);
      }
    }
  }
}

__n128 sub_10CD270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 result)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 2)
    {
      v10 = (a2 - 80);
      if (sub_10BFE90((a2 - 16), (a1 + 64)))
      {
        *v5 = *v10;
        v11 = *(a2 - 64);
        v12 = *(a2 - 48);
        v13 = *(a2 - 16);
        *(v5 + 48) = *(a2 - 32);
        *(v5 + 64) = v13;
        *(v5 + 16) = v11;
        *(v5 + 32) = v12;
        v14 = *(v7 + 64);
        v16 = *(v7 + 16);
        v15 = *(v7 + 32);
        *(v5 + 128) = *(v7 + 48);
        *(v5 + 144) = v14;
        *(v5 + 96) = v16;
        *(v5 + 112) = v15;
        result = *v7;
      }

      else
      {
        *v5 = *v7;
        v34 = *(v7 + 16);
        v35 = *(v7 + 32);
        v36 = *(v7 + 64);
        *(v5 + 48) = *(v7 + 48);
        *(v5 + 64) = v36;
        *(v5 + 16) = v34;
        *(v5 + 32) = v35;
        v37 = *(a2 - 16);
        v39 = *(a2 - 64);
        v38 = *(a2 - 48);
        *(v5 + 128) = *(a2 - 32);
        *(v5 + 144) = v37;
        *(v5 + 96) = v39;
        *(v5 + 112) = v38;
        result = *v10;
      }

      *(v5 + 80) = result;
    }

    else if (a3 == 1)
    {
      *a4 = *a1;
      result = *(a1 + 16);
      v8 = *(a1 + 32);
      v9 = *(a1 + 64);
      *(a4 + 48) = *(a1 + 48);
      *(a4 + 64) = v9;
      *(a4 + 16) = result;
      *(a4 + 32) = v8;
    }

    else if (a3 > 8)
    {
      v40 = a3 >> 1;
      v41 = 80 * (a3 >> 1);
      v42 = v41 + a1;
      sub_10CCF18(a1, v41 + a1, v40, a4, v40);
      sub_10CCF18(v41 + v7, a2, a3 - v40, v5 + v41, a3 - v40);
      v44 = v41 + v7;
      while (v44 != a2)
      {
        if (sub_10BFE90((v44 + 64), (v7 + 64)))
        {
          *v5 = *v44;
          result = *(v44 + 16);
          v47 = *(v44 + 32);
          v48 = *(v44 + 64);
          *(v5 + 48) = *(v44 + 48);
          *(v5 + 64) = v48;
          *(v5 + 16) = result;
          *(v5 + 32) = v47;
          v44 += 80;
          v5 += 80;
          if (v7 == v42)
          {
LABEL_32:
            while (v44 != a2)
            {
              *v5 = *v44;
              result = *(v44 + 16);
              v51 = *(v44 + 32);
              v52 = *(v44 + 64);
              *(v5 + 48) = *(v44 + 48);
              *(v5 + 64) = v52;
              *(v5 + 16) = result;
              *(v5 + 32) = v51;
              v44 += 80;
              v5 += 80;
            }

            return result;
          }
        }

        else
        {
          *v5 = *v7;
          result = *(v7 + 16);
          v45 = *(v7 + 32);
          v46 = *(v7 + 64);
          *(v5 + 48) = *(v7 + 48);
          *(v5 + 64) = v46;
          *(v5 + 16) = result;
          *(v5 + 32) = v45;
          v7 += 80;
          v5 += 80;
          if (v7 == v42)
          {
            goto LABEL_32;
          }
        }
      }

      while (v7 != v42)
      {
        *v5 = *v7;
        result = *(v7 + 16);
        v49 = *(v7 + 32);
        v50 = *(v7 + 64);
        *(v5 + 48) = *(v7 + 48);
        *(v5 + 64) = v50;
        *(v5 + 16) = result;
        *(v5 + 32) = v49;
        v7 += 80;
        v5 += 80;
      }
    }

    else if (a1 != a2)
    {
      *a4 = *a1;
      result = *(a1 + 16);
      v17 = *(a1 + 32);
      v18 = *(a1 + 64);
      *(a4 + 48) = *(a1 + 48);
      *(a4 + 64) = v18;
      *(a4 + 16) = result;
      *(a4 + 32) = v17;
      v19 = a1 + 80;
      if (a1 + 80 != a2)
      {
        v20 = 0;
        v21 = a4;
        do
        {
          while (1)
          {
            v24 = v19;
            v25 = v21 + 5;
            if (sub_10BFE90((v7 + 144), v21 + 16))
            {
              break;
            }

            *v25 = *v24;
            result = *(v24 + 16);
            v22 = *(v24 + 32);
            v23 = *(v24 + 64);
            v21[8] = *(v24 + 48);
            v21[9] = v23;
            v21[6] = result;
            v21[7] = v22;
            v19 = v24 + 80;
            v20 += 80;
            v21 += 5;
            v7 = v24;
            if (v24 + 80 == a2)
            {
              return result;
            }
          }

          v26 = v21[3];
          v21[7] = v21[2];
          v21[8] = v26;
          v21[9] = v21[4];
          v27 = v21[1];
          *v25 = *v21;
          v21[6] = v27;
          v28 = v5;
          if (v21 != v5)
          {
            v29 = v20;
            while (1)
            {
              v28 = (v5 + v29);
              if (!sub_10BFE90((v7 + 144), (v5 + v29 - 16)))
              {
                break;
              }

              v30 = *(v28 - 2);
              v28[2] = *(v28 - 3);
              v28[3] = v30;
              *(v28 + 60) = *(v28 - 20);
              v31 = *(v28 - 4);
              *v28 = *(v28 - 5);
              v28[1] = v31;
              v29 -= 80;
              if (!v29)
              {
                v28 = v5;
                break;
              }
            }
          }

          *v28 = *v24;
          result = *(v24 + 16);
          v32 = *(v24 + 32);
          v33 = *(v24 + 48);
          *(v28 + 60) = *(v24 + 60);
          v28[2] = v32;
          v28[3] = v33;
          v28[1] = result;
          v19 = v24 + 80;
          v20 += 80;
          v21 = v25;
          v7 = v24;
        }

        while (v24 + 80 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_10CD5B0(uint64_t result, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v69 = a5;
  if (a5)
  {
    v12 = result;
    while (v69 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v13 = 0;
      v14 = -a4;
      while (1)
      {
        result = sub_10BFE90(a2 + 16, &v12[v13 + 64]);
        if (result)
        {
          break;
        }

        v13 += 80;
        if (__CFADD__(v14++, 1))
        {
          return result;
        }
      }

      v16 = v69;
      __src = a6;
      v67 = a3;
      v68 = a7;
      if (-v14 >= v69)
      {
        if (v14 == -1)
        {
          v57 = &v12[v13];
          v70 = *&v12[v13];
          *v73 = *&v12[v13 + 48];
          *&v73[16] = *&v12[v13 + 64];
          v71 = *&v12[v13 + 16];
          v72 = *&v12[v13 + 32];
          v59 = *(a2 + 2);
          v58 = *(a2 + 3);
          v60 = *(a2 + 1);
          *(v57 + 60) = *(a2 + 60);
          *(v57 + 2) = v59;
          *(v57 + 3) = v58;
          *(v57 + 1) = v60;
          *v57 = *a2;
          *(a2 + 2) = v72;
          *(a2 + 3) = *v73;
          *(a2 + 60) = *&v73[12];
          *a2 = v70;
          *(a2 + 1) = v71;
          return result;
        }

        v22 = -v14 / 2;
        v18 = a2;
        if (a2 != a3)
        {
          v23 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - a2) >> 4);
          v24 = &v12[80 * v22 + v13];
          v18 = a2;
          do
          {
            v25 = &v18[80 * (v23 >> 1)];
            v26 = sub_10BFE90(v25 + 16, v24 + 16);
            if (v26)
            {
              v23 += ~(v23 >> 1);
            }

            else
            {
              v23 >>= 1;
            }

            if (v26)
            {
              v18 = v25 + 80;
            }
          }

          while (v23);
          v16 = v69;
          v22 = -v14 / 2;
        }

        v17 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - a2) >> 4);
        v19 = &v12[80 * v22 + v13];
      }

      else
      {
        v17 = v69 / 2;
        v18 = &a2[80 * (v69 / 2)];
        v19 = a2;
        if (a2 - v12 != v13)
        {
          v20 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12 - v13) >> 4);
          v19 = &v12[v13];
          do
          {
            v21 = &v19[80 * (v20 >> 1)];
            if (sub_10BFE90(v18 + 16, v21 + 16))
            {
              v20 >>= 1;
            }

            else
            {
              v19 = v21 + 80;
              v20 += ~(v20 >> 1);
            }
          }

          while (v20);
          v16 = v69;
          v17 = v69 / 2;
        }

        v22 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - v12 - v13) >> 4);
      }

      a4 = -v14 - v22;
      v69 = v16 - v17;
      v27 = a2;
      v28 = v16;
      v29 = v22;
      v30 = sub_10CDAB0(v19, v27, v18);
      v31 = v29;
      v32 = v30;
      if (v31 + v17 >= v28 - (v31 + v17) - v14)
      {
        a6 = __src;
        v33 = v31;
        result = sub_10CD5B0(v30, v18, v67, a4, v69, __src, v68);
        v34 = v19;
        a4 = v33;
        a3 = v32;
        v69 = v17;
        v12 += v13;
        a2 = v34;
        a7 = v68;
        if (!v17)
        {
          return result;
        }
      }

      else
      {
        a6 = __src;
        result = sub_10CD5B0(&v12[v13], v19, v30, v31, v17, __src, v68);
        v12 = v32;
        a2 = v18;
        a3 = v67;
        a7 = v68;
        if (!v69)
        {
          return result;
        }
      }
    }

    if (a4 <= v69)
    {
      if (a2 != v12)
      {
        v45 = 4 - a6;
        v46 = a6;
        v47 = v12;
        do
        {
          *v46 = *v47;
          v48 = *(v47 + 1);
          v49 = *(v47 + 2);
          v50 = *(v47 + 4);
          *(v46 + 3) = *(v47 + 3);
          *(v46 + 4) = v50;
          *(v46 + 1) = v48;
          *(v46 + 2) = v49;
          v47 += 80;
          v46 += 80;
          v45 -= 80;
        }

        while (v47 != a2);
        while (a2 != a3)
        {
          result = sub_10BFE90(a2 + 16, a6 + 16);
          if (result)
          {
            *v12 = *a2;
            v54 = *(a2 + 1);
            v55 = *(a2 + 2);
            v56 = *(a2 + 3);
            *(v12 + 60) = *(a2 + 60);
            *(v12 + 2) = v55;
            *(v12 + 3) = v56;
            *(v12 + 1) = v54;
            a2 += 80;
            v12 += 80;
            if (v46 == a6)
            {
              return result;
            }
          }

          else
          {
            *v12 = *a6;
            v51 = *(a6 + 1);
            v52 = *(a6 + 2);
            v53 = *(a6 + 3);
            *(v12 + 60) = *(a6 + 60);
            *(v12 + 2) = v52;
            *(v12 + 3) = v53;
            *(v12 + 1) = v51;
            a6 += 80;
            v12 += 80;
            if (v46 == a6)
            {
              return result;
            }
          }
        }

        return memmove(v12, a6, -&a6[v45]);
      }
    }

    else if (a2 != a3)
    {
      v35 = 0;
      do
      {
        v36 = &a6[v35];
        *v36 = *&a2[v35];
        v37 = *&a2[v35 + 16];
        v38 = *&a2[v35 + 32];
        v39 = *&a2[v35 + 64];
        *(v36 + 3) = *&a2[v35 + 48];
        *(v36 + 4) = v39;
        *(v36 + 1) = v37;
        *(v36 + 2) = v38;
        v35 += 80;
      }

      while (&a2[v35] != a3);
      v40 = &a6[v35];
      while (a2 != v12)
      {
        result = sub_10BFE90(v40 - 4, a2 - 4);
        if (result)
        {
          v41 = a2 - 80;
        }

        else
        {
          v41 = v40 - 80;
        }

        *(a3 - 5) = *v41;
        v43 = *(v41 + 2);
        v42 = *(v41 + 3);
        v44 = *(v41 + 1);
        *(a3 - 20) = *(v41 + 60);
        *(a3 - 3) = v43;
        *(a3 - 2) = v42;
        *(a3 - 4) = v44;
        a3 -= 80;
        if (result)
        {
          a2 -= 80;
        }

        else
        {
          v40 -= 80;
        }

        if (v40 == a6)
        {
          return result;
        }
      }

      if (v40 != a6)
      {
        v61 = -80;
        do
        {
          v62 = &a3[v61];
          *v62 = *(v40 - 5);
          v63 = *(v40 - 4);
          v64 = *(v40 - 3);
          v65 = *(v40 - 2);
          *(v62 + 60) = *(v40 - 20);
          *(v62 + 2) = v64;
          *(v62 + 3) = v65;
          *(v62 + 1) = v63;
          v61 -= 80;
          v40 -= 80;
        }

        while (v40 != a6);
      }
    }
  }

  return result;
}

char *sub_10CDAB0(char *__src, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2 - __src;
  if (a2 != __src)
  {
    v5 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 80 == a2)
    {
      v37 = *(__src + 2);
      *v41 = *(__src + 3);
      *&v41[16] = *(__src + 4);
      v31 = *__src;
      v34 = *(__src + 1);
      v6 = __src;
      memmove(__src, __src + 80, v5 - 4);
      v3 = (v6 + v5);
      v3[2] = v37;
      v3[3] = *v41;
      *(v3 + 60) = *&v41[12];
      *v3 = v31;
      v3[1] = v34;
    }

    else if (a2 + 80 == a3)
    {
      v3 = __src + 80;
      v38 = *(a3 - 3);
      *v42 = *(a3 - 2);
      *&v42[16] = *(a3 - 1);
      v32 = *(a3 - 5);
      v35 = *(a3 - 4);
      if (a3 - 80 != __src)
      {
        v7 = __src;
        memmove(__src + 80, __src, a3 - 80 - __src - 4);
        __src = v7;
      }

      *(__src + 2) = v38;
      *(__src + 3) = *v42;
      *(__src + 60) = *&v42[12];
      *__src = v32;
      *(__src + 1) = v35;
    }

    else
    {
      v8 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 4);
      if (0xCCCCCCCCCCCCCCCDLL * (v4 >> 4) == v8)
      {
        v9 = __src + 80;
        v10 = a2 + 80;
        do
        {
          v39 = *(v9 - 3);
          *v43 = *(v9 - 2);
          *&v43[16] = *(v9 - 1);
          v33 = *(v9 - 5);
          v36 = *(v9 - 4);
          *(v9 - 5) = *(v10 - 5);
          v12 = *(v10 - 3);
          v11 = *(v10 - 2);
          v13 = *(v10 - 4);
          *(v9 - 20) = *(v10 - 20);
          *(v9 - 3) = v12;
          *(v9 - 2) = v11;
          *(v9 - 4) = v13;
          *(v10 - 20) = *&v43[12];
          *(v10 - 3) = v39;
          *(v10 - 2) = *v43;
          *(v10 - 5) = v33;
          *(v10 - 4) = v36;
          if (v9 == a2)
          {
            break;
          }

          v9 += 80;
          v14 = v10 == a3;
          v10 += 80;
        }

        while (!v14);
        return a2;
      }

      else
      {
        v15 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 4);
        do
        {
          v16 = v15;
          v15 = v8;
          v8 = v16 % v8;
        }

        while (v8);
        v17 = &__src[80 * v15];
        do
        {
          v18 = *(v17 - 3);
          v19 = *(v17 - 2);
          v20 = *(v17 - 1);
          v22 = *(v17 - 5);
          v21 = *(v17 - 4);
          v17 -= 80;
          v40 = v18;
          *v44 = v19;
          *&v44[16] = v20;
          v23 = &v17[v4];
          v24 = v17;
          do
          {
            v25 = v23;
            *v24 = *v23;
            v26 = *(v23 + 1);
            v27 = *(v23 + 2);
            v28 = *(v23 + 3);
            *(v24 + 60) = *(v23 + 60);
            v24[2] = v27;
            v24[3] = v28;
            v24[1] = v26;
            v29 = a3 - v23;
            v23 += 16 * (v4 >> 4);
            if (v4 >= v29)
            {
              v23 = &a2[-v29];
            }

            v24 = v25;
          }

          while (v23 != v17);
          *v25 = v22;
          *(v25 + 60) = *&v44[12];
          v25[2] = v40;
          v25[3] = *v44;
          v25[1] = v21;
        }

        while (v17 != __src);
        return &__src[v5];
      }
    }
  }

  return v3;
}

uint64_t *sub_10CDD10(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_10CE048(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      if (sub_10BFE90(a2 - 4, (a1 + 64)))
      {
        v46 = v7[1];
        v48 = v7[2];
        *v50 = v7[3];
        *&v50[16] = v7[4];
        v44 = *v7;
        *v7 = *(a2 - 5);
        v9 = *(a2 - 3);
        v8 = *(a2 - 2);
        v10 = *(a2 - 4);
        *(v7 + 60) = *(a2 - 20);
        v7[2] = v9;
        v7[3] = v8;
        v7[1] = v10;
        *(a2 - 5) = v44;
        *(a2 - 20) = *&v50[12];
        *(a2 - 2) = *v50;
        *(a2 - 3) = v48;
        *(a2 - 4) = v46;
      }
    }

    else if (a3 > 128)
    {
      v22 = a4;
      v23 = a3 >> 1;
      v24 = (a1 + 80 * (a3 >> 1));
      v25 = a3 - (a3 >> 1);
      if (a3 <= a5)
      {
        v28 = sub_10CE3A0(a1, v24, a3 >> 1, a4, a6);
        v29 = v22 + 80 * v23;
        sub_10CE3A0(v24, a2, v25, v29, v28);
        v30 = v22 + 80 * a3;
        v31 = v29;
        while (v31 != v30)
        {
          if (sub_10BFE90((v31 + 64), (v22 + 64)))
          {
            *v7 = *v31;
            v35 = *(v31 + 16);
            v36 = *(v31 + 32);
            v37 = *(v31 + 48);
            *(v7 + 60) = *(v31 + 60);
            v7[2] = v36;
            v7[3] = v37;
            v7[1] = v35;
            v31 += 80;
            v7 += 5;
            if (v22 == v29)
            {
LABEL_32:
              while (v31 != v30)
              {
                *v7 = *v31;
                v41 = *(v31 + 16);
                v42 = *(v31 + 32);
                v43 = *(v31 + 48);
                *(v7 + 60) = *(v31 + 60);
                v7[2] = v42;
                v7[3] = v43;
                v7[1] = v41;
                v31 += 80;
                v7 += 5;
              }

              return;
            }
          }

          else
          {
            *v7 = *v22;
            v32 = *(v22 + 16);
            v33 = *(v22 + 32);
            v34 = *(v22 + 48);
            *(v7 + 60) = *(v22 + 60);
            v7[2] = v33;
            v7[3] = v34;
            v7[1] = v32;
            v22 += 80;
            v7 += 5;
            if (v22 == v29)
            {
              goto LABEL_32;
            }
          }
        }

        while (v22 != v29)
        {
          *v7 = *v22;
          v38 = *(v22 + 16);
          v39 = *(v22 + 32);
          v40 = *(v22 + 48);
          *(v7 + 60) = *(v22 + 60);
          v7[2] = v39;
          v7[3] = v40;
          v7[1] = v38;
          v22 += 80;
          v7 += 5;
        }
      }

      else
      {
        sub_10CE048(a1, v24, a3 >> 1, a4, a5);
        sub_10CE048(v24, a2, v25, v22, a5);

        sub_10CD5B0(v7, v24, a2, v23, v25, v22, a5);
      }
    }

    else if (a1 != a2)
    {
      v11 = (a1 + 80);
      if ((a1 + 80) != a2)
      {
        v12 = 0;
        v13 = a1;
        do
        {
          v15 = v13;
          v13 = v11;
          if (sub_10BFE90(v15 + 36, v15 + 16))
          {
            v45 = *v13;
            v16 = v13[1];
            v17 = v13[2];
            *v50 = v13[3];
            *&v50[16] = v13[4];
            v47 = v16;
            v49 = v17;
            v18 = v12;
            do
            {
              v19 = (v7 + v18);
              v20 = *(v7 + v18 + 48);
              v19[7] = *(v7 + v18 + 32);
              v19[8] = v20;
              *(v19 + 140) = *(v7 + v18 + 60);
              v21 = *(v7 + v18 + 16);
              v19[5] = *(v7 + v18);
              v19[6] = v21;
              if (!v18)
              {
                v14 = v7;
                goto LABEL_11;
              }

              v18 -= 80;
            }

            while (sub_10BFE90(&v50[16], v19 - 4));
            v14 = (v7 + v18 + 80);
LABEL_11:
            *v14 = v45;
            *(v14 + 60) = *&v50[12];
            v14[2] = v49;
            v14[3] = *v50;
            v14[1] = v47;
          }

          v11 = v13 + 5;
          v12 += 80;
        }

        while (v13 + 5 != a2);
      }
    }
  }
}

__n128 sub_10CE3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 result)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 2)
    {
      v10 = (a2 - 80);
      if (sub_10BFE90((a2 - 16), (a1 + 64)))
      {
        *v5 = *v10;
        v11 = *(a2 - 64);
        v12 = *(a2 - 48);
        v13 = *(a2 - 16);
        *(v5 + 48) = *(a2 - 32);
        *(v5 + 64) = v13;
        *(v5 + 16) = v11;
        *(v5 + 32) = v12;
        v14 = *(v7 + 64);
        v16 = *(v7 + 16);
        v15 = *(v7 + 32);
        *(v5 + 128) = *(v7 + 48);
        *(v5 + 144) = v14;
        *(v5 + 96) = v16;
        *(v5 + 112) = v15;
        result = *v7;
      }

      else
      {
        *v5 = *v7;
        v34 = *(v7 + 16);
        v35 = *(v7 + 32);
        v36 = *(v7 + 64);
        *(v5 + 48) = *(v7 + 48);
        *(v5 + 64) = v36;
        *(v5 + 16) = v34;
        *(v5 + 32) = v35;
        v37 = *(a2 - 16);
        v39 = *(a2 - 64);
        v38 = *(a2 - 48);
        *(v5 + 128) = *(a2 - 32);
        *(v5 + 144) = v37;
        *(v5 + 96) = v39;
        *(v5 + 112) = v38;
        result = *v10;
      }

      *(v5 + 80) = result;
    }

    else if (a3 == 1)
    {
      *a4 = *a1;
      result = *(a1 + 16);
      v8 = *(a1 + 32);
      v9 = *(a1 + 64);
      *(a4 + 48) = *(a1 + 48);
      *(a4 + 64) = v9;
      *(a4 + 16) = result;
      *(a4 + 32) = v8;
    }

    else if (a3 > 8)
    {
      v40 = a3 >> 1;
      v41 = 80 * (a3 >> 1);
      v42 = v41 + a1;
      sub_10CE048(a1, v41 + a1, v40, a4, v40);
      sub_10CE048(v41 + v7, a2, a3 - v40, v5 + v41, a3 - v40);
      v44 = v41 + v7;
      while (v44 != a2)
      {
        if (sub_10BFE90((v44 + 64), (v7 + 64)))
        {
          *v5 = *v44;
          result = *(v44 + 16);
          v47 = *(v44 + 32);
          v48 = *(v44 + 64);
          *(v5 + 48) = *(v44 + 48);
          *(v5 + 64) = v48;
          *(v5 + 16) = result;
          *(v5 + 32) = v47;
          v44 += 80;
          v5 += 80;
          if (v7 == v42)
          {
LABEL_32:
            while (v44 != a2)
            {
              *v5 = *v44;
              result = *(v44 + 16);
              v51 = *(v44 + 32);
              v52 = *(v44 + 64);
              *(v5 + 48) = *(v44 + 48);
              *(v5 + 64) = v52;
              *(v5 + 16) = result;
              *(v5 + 32) = v51;
              v44 += 80;
              v5 += 80;
            }

            return result;
          }
        }

        else
        {
          *v5 = *v7;
          result = *(v7 + 16);
          v45 = *(v7 + 32);
          v46 = *(v7 + 64);
          *(v5 + 48) = *(v7 + 48);
          *(v5 + 64) = v46;
          *(v5 + 16) = result;
          *(v5 + 32) = v45;
          v7 += 80;
          v5 += 80;
          if (v7 == v42)
          {
            goto LABEL_32;
          }
        }
      }

      while (v7 != v42)
      {
        *v5 = *v7;
        result = *(v7 + 16);
        v49 = *(v7 + 32);
        v50 = *(v7 + 64);
        *(v5 + 48) = *(v7 + 48);
        *(v5 + 64) = v50;
        *(v5 + 16) = result;
        *(v5 + 32) = v49;
        v7 += 80;
        v5 += 80;
      }
    }

    else if (a1 != a2)
    {
      *a4 = *a1;
      result = *(a1 + 16);
      v17 = *(a1 + 32);
      v18 = *(a1 + 64);
      *(a4 + 48) = *(a1 + 48);
      *(a4 + 64) = v18;
      *(a4 + 16) = result;
      *(a4 + 32) = v17;
      v19 = a1 + 80;
      if (a1 + 80 != a2)
      {
        v20 = 0;
        v21 = a4;
        do
        {
          while (1)
          {
            v24 = v19;
            v25 = v21 + 5;
            if (sub_10BFE90((v7 + 144), v21 + 16))
            {
              break;
            }

            *v25 = *v24;
            result = *(v24 + 16);
            v22 = *(v24 + 32);
            v23 = *(v24 + 64);
            v21[8] = *(v24 + 48);
            v21[9] = v23;
            v21[6] = result;
            v21[7] = v22;
            v19 = v24 + 80;
            v20 += 80;
            v21 += 5;
            v7 = v24;
            if (v24 + 80 == a2)
            {
              return result;
            }
          }

          v26 = v21[3];
          v21[7] = v21[2];
          v21[8] = v26;
          v21[9] = v21[4];
          v27 = v21[1];
          *v25 = *v21;
          v21[6] = v27;
          v28 = v5;
          if (v21 != v5)
          {
            v29 = v20;
            while (1)
            {
              v28 = (v5 + v29);
              if (!sub_10BFE90((v7 + 144), (v5 + v29 - 16)))
              {
                break;
              }

              v30 = *(v28 - 2);
              v28[2] = *(v28 - 3);
              v28[3] = v30;
              *(v28 + 60) = *(v28 - 20);
              v31 = *(v28 - 4);
              *v28 = *(v28 - 5);
              v28[1] = v31;
              v29 -= 80;
              if (!v29)
              {
                v28 = v5;
                break;
              }
            }
          }

          *v28 = *v24;
          result = *(v24 + 16);
          v32 = *(v24 + 32);
          v33 = *(v24 + 48);
          *(v28 + 60) = *(v24 + 60);
          v28[2] = v32;
          v28[3] = v33;
          v28[1] = result;
          v19 = v24 + 80;
          v20 += 80;
          v21 = v25;
          v7 = v24;
        }

        while (v24 + 80 != a2);
      }
    }
  }

  return result;
}

void sub_10CE6E0()
{
  byte_27C1F3F = 3;
  LODWORD(qword_27C1F28) = 5136193;
  byte_27C1F57 = 3;
  LODWORD(qword_27C1F40) = 5136194;
  byte_27C1F6F = 3;
  LODWORD(qword_27C1F58) = 5136195;
  byte_27C1F87 = 15;
  strcpy(&qword_27C1F70, "vehicle_mass_kg");
  byte_27C1F9F = 21;
  strcpy(&xmmword_27C1F88, "vehicle_cargo_mass_kg");
  byte_27C1FB7 = 19;
  strcpy(&qword_27C1FA0, "vehicle_aux_power_w");
  byte_27C1FCF = 15;
  strcpy(&qword_27C1FB8, "dcdc_efficiency");
  strcpy(&qword_27C1FD0, "drive_train_efficiency");
  HIBYTE(word_27C1FE6) = 22;
  operator new();
}

void sub_10CE8BC(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C1FE6) < 0)
  {
    sub_21E77F8();
  }

  sub_21E7804();
  _Unwind_Resume(a1);
}

void *sub_10CE8DC(void *result, uint64_t a2, uint64_t a3)
{
  *result = -1;
  result[1] = -1;
  result[2] = a2;
  result[3] = a3;
  return result;
}

void sub_10CE8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_7E9A4(v8);
  sub_3AF6B4(*(a1 + 24));
  v7 = a5[1];
  if (v7 != *a5)
  {
    if ((0x4FCACE213F2B3885 * ((v7 - *a5) >> 5)) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  operator new();
}

void sub_10CF9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p)
{
  operator delete(__p);
  if (v38)
  {
    operator delete(v38);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10CFB8C(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_2AE1D0(a1, i))
    {
      i -= 12;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void *sub_10CFBF0(void *a1)
{
  v2 = a1[40];
  if (v2)
  {
    a1[41] = v2;
    operator delete(v2);
  }

  v3 = a1[37];
  if (v3)
  {
    a1[38] = v3;
    operator delete(v3);
  }

  v4 = a1[34];
  if (v4)
  {
    a1[35] = v4;
    operator delete(v4);
  }

  v5 = a1[31];
  if (v5)
  {
    a1[32] = v5;
    operator delete(v5);
  }

  v6 = a1[28];
  if (v6)
  {
    a1[29] = v6;
    operator delete(v6);
  }

  v7 = a1[24];
  if (v7)
  {
    a1[25] = v7;
    operator delete(v7);
  }

  v8 = a1[21];
  if (v8)
  {
    a1[22] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return a1;
}

void sub_10CFC94()
{
  byte_27C2047 = 3;
  LODWORD(qword_27C2030) = 5136193;
  byte_27C205F = 3;
  LODWORD(qword_27C2048) = 5136194;
  byte_27C2077 = 3;
  LODWORD(qword_27C2060) = 5136195;
  byte_27C208F = 15;
  strcpy(&qword_27C2078, "vehicle_mass_kg");
  byte_27C20A7 = 21;
  strcpy(&xmmword_27C2090, "vehicle_cargo_mass_kg");
  byte_27C20BF = 19;
  strcpy(&qword_27C20A8, "vehicle_aux_power_w");
  byte_27C20D7 = 15;
  strcpy(&qword_27C20C0, "dcdc_efficiency");
  strcpy(&qword_27C20D8, "drive_train_efficiency");
  HIBYTE(word_27C20EE) = 22;
  operator new();
}

void sub_10CFE70(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C20EE) < 0)
  {
    sub_21E78D4();
  }

  sub_21E78E0();
  _Unwind_Resume(a1);
}

void *sub_10CFE90(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = -1;
  result[2] = -1;
  return result;
}

void sub_10D0F38(_Unwind_Exception *a1)
{
  if (STACK[0x5B8])
  {
    free(STACK[0x5B8]);
  }

  sub_CDE540(&STACK[0x608]);
  sub_100E0D0(&STACK[0x1960]);
  sub_100CD54(&STACK[0x28C8]);
  sub_CEC20C(&STACK[0x3830]);
  sub_39393C(&STACK[0xB3F0]);
  sub_39393C(&STACK[0xB408]);
  sub_404134(&STACK[0xB420]);
  _Unwind_Resume(a1);
}

uint64_t sub_10D1208(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2675458;
  a2[1] = v2;
  return result;
}

BOOL sub_10D1234(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = v2[8];
  v5 = v2[7] - 1;
  v6 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v7 = v2[9];
  v8 = (v6 ^ (v6 >> 47)) & v5;
  v9 = *(v7 + 8 * v8);
  if (v4 == v9)
  {
LABEL_2:
    v8 = -1;
  }

  else if (v2[5])
  {
    v11 = v2[4];
    v12 = 1;
    while (v11 == v9 || v9 != v3)
    {
      v8 = (v8 + v12) & v5;
      v9 = *(v7 + 8 * v8);
      ++v12;
      if (v4 == v9)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    v13 = 1;
    while (v9 != v3)
    {
      v8 = (v8 + v13) & v5;
      v9 = *(v7 + 8 * v8);
      ++v13;
      if (v4 == v9)
      {
        goto LABEL_2;
      }
    }
  }

  return v8 != -1;
}

uint64_t sub_10D12EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing36PathGraphChargingStationAugmentation3runERNS0_9PathGraphINS0_11DrivingModeEEERKNS0_13QueryTerminalINS0_20DrivingRoutingNodeIdEEERKNS0_16GeoQueryTerminalIS7_EERKNS0_19DrivingCostFunctionENS0_18RequestTrafficTypeERKNS0_20RequestEVInformationENS0_41UserLegChargingStationPreferencesIteratorERKNS0_26SuggestedChargingFunctionsENS_6common6detail12IntegerRangeINSQ_16TypeSafeIntegralINS0_27ChargingFunctionMapIdStructEtLt65535EEELb0ELm1EEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing36PathGraphChargingStationAugmentation3runERNS0_9PathGraphINS0_11DrivingModeEEERKNS0_13QueryTerminalINS0_20DrivingRoutingNodeIdEEERKNS0_16GeoQueryTerminalIS7_EERKNS0_19DrivingCostFunctionENS0_18RequestTrafficTypeERKNS0_20RequestEVInformationENS0_41UserLegChargingStationPreferencesIteratorERKNS0_26SuggestedChargingFunctionsENS_6common6detail12IntegerRangeINSQ_16TypeSafeIntegralINS0_27ChargingFunctionMapIdStructEtLt65535EEELb0ELm1EEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing36PathGraphChargingStationAugmentation3runERNS0_9PathGraphINS0_11DrivingModeEEERKNS0_13QueryTerminalINS0_20DrivingRoutingNodeIdEEERKNS0_16GeoQueryTerminalIS7_EERKNS0_19DrivingCostFunctionENS0_18RequestTrafficTypeERKNS0_20RequestEVInformationENS0_41UserLegChargingStationPreferencesIteratorERKNS0_26SuggestedChargingFunctionsENS_6common6detail12IntegerRangeINSQ_16TypeSafeIntegralINS0_27ChargingFunctionMapIdStructEtLt65535EEELb0ELm1EEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing36PathGraphChargingStationAugmentation3runERNS0_9PathGraphINS0_11DrivingModeEEERKNS0_13QueryTerminalINS0_20DrivingRoutingNodeIdEEERKNS0_16GeoQueryTerminalIS7_EERKNS0_19DrivingCostFunctionENS0_18RequestTrafficTypeERKNS0_20RequestEVInformationENS0_41UserLegChargingStationPreferencesIteratorERKNS0_26SuggestedChargingFunctionsENS_6common6detail12IntegerRangeINSQ_16TypeSafeIntegralINS0_27ChargingFunctionMapIdStructEtLt65535EEELb0ELm1EEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_10D153C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C21F6) < 0)
  {
    sub_21E79B0();
  }

  sub_21E79BC();
  _Unwind_Resume(a1);
}

__n128 sub_10D155C(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  result = *a3;
  *(a1 + 16) = *a3;
  *(a1 + 32) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

void sub_10D18D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a16);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_360988(v24);
  _Unwind_Resume(a1);
}

void sub_10D192C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1A104(&a13);
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10D1924);
}

uint64_t sub_10D1950(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 10);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_10D1A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10D1AC8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_2B8044(*(a1 + 32), a2, &v6);
  v3 = v6;
  v4 = v7;
  if (v6 != v7)
  {
    do
    {
      v5 = *(a1 + 808);
      v9 = *v3 >> ((sub_57A90(*v3) - 2 * v5) & 0xFE);
      sub_10D2F54(a1 + 40, &v9, &v9, v10);
      ++v3;
    }

    while (v3 != v4);
    v3 = v6;
  }

  if (v3)
  {
    v7 = v3;
    operator delete(v3);
  }
}

void sub_10D1B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10D1D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10D1D30@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_2290750;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 48) = &unk_2290750;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_2290750;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0u;
  *(a2 + 136) = 0;
  *(a2 + 144) = &unk_2290750;
  *(a2 + 168) = 0;
  *(a2 + 152) = 0u;
  *(a2 + 184) = 0;
  *(a2 + 192) = &unk_2290750;
  *(a2 + 216) = 0;
  *(a2 + 200) = 0u;
  *(a2 + 232) = 0;
  *(a2 + 240) = &unk_2290750;
  *(a2 + 264) = 0;
  *(a2 + 248) = 0u;
  *(a2 + 280) = 0;
  *(a2 + 288) = &unk_2290750;
  *(a2 + 312) = 0;
  *(a2 + 296) = 0u;
  *(a2 + 328) = 0;
  *(a2 + 336) = &unk_2290750;
  *(a2 + 360) = 0;
  *(a2 + 344) = 0u;
  *(a2 + 376) = 0;
  *(a2 + 384) = &unk_2290750;
  *(a2 + 408) = 0;
  *(a2 + 392) = 0u;
  *(a2 + 424) = 0;
  *(a2 + 432) = &unk_2290750;
  *(a2 + 456) = 0;
  *(a2 + 440) = 0u;
  *(a2 + 472) = 0;
  *(a2 + 480) = &unk_2290750;
  *(a2 + 520) = 0;
  *(a2 + 504) = 0;
  *(a2 + 488) = 0u;
  *(a2 + 528) = &unk_2290750;
  *(a2 + 568) = 0;
  *(a2 + 552) = 0;
  *(a2 + 536) = 0u;
  *(a2 + 576) = &unk_2290750;
  *(a2 + 616) = 0;
  *(a2 + 600) = 0;
  *(a2 + 584) = 0u;
  *(a2 + 624) = &unk_2290750;
  *(a2 + 664) = 0;
  *(a2 + 648) = 0;
  *(a2 + 632) = 0u;
  *(a2 + 672) = &unk_2290750;
  *(a2 + 712) = 0;
  *(a2 + 696) = 0;
  *(a2 + 680) = 0u;
  *(a2 + 720) = &unk_2290750;
  *(a2 + 760) = 0;
  *(a2 + 744) = 0;
  *(a2 + 728) = 0u;
  if (result[97] + result[91] + result[85] + result[79] + result[73] + result[67] + result[61] + result[55] + result[49] + result[43] + result[37] + result[31] + result[25] + result[19] + result[7] + result[13])
  {
    v3 = result[5];
    v2 = result[6];
    if (*v3 > -2)
    {
      if (result[5] == &v3[result[8]])
      {
LABEL_8:
        v6 = result + 5;
        v7 = (result + 11);
        v8 = 6;
        v9 = result + 5;
        do
        {
          v10 = *v7;
          v2 = v9[7];
          if (*v10 > -2)
          {
            if (v10 != &v10[v9[9]])
            {
              break;
            }
          }

          else
          {
            v11 = v10;
            do
            {
              v12 = (__clz(__rbit64(((*v11 >> 7) & ~*v11 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
              v11 += v12;
              v2 += v12;
            }

            while (*v11 < -1);
            if (v11 != &v10[v9[9]])
            {
              break;
            }
          }

          v9 = &v6[v8];
          v8 += 6;
          v7 = &v6[v8];
        }

        while (v8 != 96);
      }
    }

    else
    {
      v4 = result[5];
      do
      {
        v5 = (__clz(__rbit64(((*v4 >> 7) & ~*v4 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v4 += v5;
        v2 += v5;
      }

      while (*v4 < -1);
      if (v4 == &v3[result[8]])
      {
        goto LABEL_8;
      }
    }

    v13 = result;
    v16 = *v2;
    v15[0] = sub_374F8(&v16);
    v15[1] = v14;
    sub_34164(v15);
    return sub_10D2194(v13);
  }

  return result;
}

uint64_t sub_10D2194(void *a1)
{
  v78[0] = &unk_2290750;
  v78[1] = 0;
  v79 = 0u;
  v80 = 0;
  v81 = &unk_2290750;
  v82 = 0;
  v83 = 0u;
  v84 = 0;
  v85 = &unk_2290750;
  v86 = 0;
  v87 = 0u;
  v88 = 0;
  v89 = &unk_2290750;
  v90 = 0u;
  v92 = 0;
  v91 = 0;
  v93 = &unk_2290750;
  v95 = 0;
  v94 = 0u;
  v96 = 0;
  v97 = &unk_2290750;
  v100 = 0;
  v99 = 0;
  v98 = 0u;
  v102 = 0u;
  v101 = &unk_2290750;
  v103 = 0;
  v104 = 0;
  v105 = &unk_2290750;
  v106 = 0u;
  v108 = 0;
  v107 = 0;
  v110 = 0u;
  v109 = &unk_2290750;
  v111 = 0;
  v112 = 0;
  v113 = &unk_2290750;
  v114 = 0u;
  v116 = 0;
  v115 = 0;
  v120 = 0;
  v118 = 0u;
  v117 = &unk_2290750;
  v119 = 0;
  v121 = &unk_2290750;
  v124 = 0;
  v122 = 0u;
  v123 = 0;
  v125 = &unk_2290750;
  v128 = 0;
  v126 = 0u;
  v127 = 0;
  v129 = &unk_2290750;
  v132 = 0;
  v130 = 0u;
  v131 = 0;
  v133 = &unk_2290750;
  v136 = 0;
  v134 = 0u;
  v135 = 0;
  v137 = &unk_2290750;
  v140 = 0;
  v138 = 0u;
  v139 = 0;
  v15[0] = &unk_2290750;
  v15[1] = 0;
  v16 = 0u;
  v17 = 0;
  v18 = &unk_2290750;
  v19 = 0;
  v20 = 0u;
  v21 = 0;
  v22 = &unk_2290750;
  v23 = 0;
  v24 = 0u;
  v25 = 0;
  v26 = &unk_2290750;
  v27 = 0u;
  v29 = 0;
  v30 = &unk_2290750;
  v28 = 0;
  v32 = 0;
  v31 = 0u;
  v33 = 0;
  v34 = &unk_2290750;
  v37 = 0;
  v38 = &unk_2290750;
  v36 = 0;
  v35 = 0u;
  v39 = 0u;
  v40 = 0;
  v41 = 0;
  v42 = &unk_2290750;
  v43 = 0u;
  v45 = 0;
  v44 = 0;
  v47 = 0u;
  v46 = &unk_2290750;
  v48 = 0;
  v49 = 0;
  v50 = &unk_2290750;
  v51 = 0u;
  v53 = 0;
  v52 = 0;
  v57 = 0;
  v55 = 0u;
  v54 = &unk_2290750;
  v56 = 0;
  v58 = &unk_2290750;
  v61 = 0;
  v59 = 0u;
  v60 = 0;
  v62 = &unk_2290750;
  v65 = 0;
  v63 = 0u;
  v64 = 0;
  v66 = &unk_2290750;
  v69 = 0;
  v67 = 0u;
  v68 = 0;
  v70 = &unk_2290750;
  v73 = 0;
  v71 = 0u;
  v72 = 0;
  v74 = &unk_2290750;
  v77 = 0;
  v75 = 0u;
  v76 = 0;
  v2 = a1[5];
  v3 = a1[6];
  v1 = a1 + 5;
  v4 = v2;
  if (*v2 <= -2)
  {
    do
    {
      v5 = (__clz(__rbit64(((*v4 >> 7) & ~*v4 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v4 = (v4 + v5);
      v3 += 4 * v5;
    }

    while (*v4 < -1);
  }

  v6 = &v2[a1[8]];
  if (v4 != v6)
  {
LABEL_4:
    operator new();
  }

  v7 = (a1 + 11);
  v8 = 6;
  v9 = a1 + 5;
  do
  {
    v10 = v9[7];
    v11 = *v7;
    if (**v7 <= -2)
    {
      do
      {
        v12 = (__clz(__rbit64(((*v11 >> 7) & ~*v11 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v11 = (v11 + v12);
        v10 += 4 * v12;
      }

      while (*v11 < -1);
    }

    v13 = &(*v7)[v9[9]];
    if (v11 != v13)
    {
      goto LABEL_4;
    }

    v9 = &v1[v8];
    v8 += 6;
    v7 = &v1[v8];
  }

  while (v8 != 96);
  sub_360988(v15);
  return sub_360988(v78);
}

void sub_10D2EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_360988(&a27);
  sub_360988(&STACK[0x390]);
  _Unwind_Resume(a1);
}

uint64_t sub_10D2F54@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 0;
  v5 = *a2;
  v6 = 265 * ((~v5 + (v5 << 21)) ^ ((~v5 + (v5 << 21)) >> 24));
  v7 = 2147483649u * ((21 * (v6 ^ (v6 >> 14))) ^ ((21 * (v6 ^ (v6 >> 14))) >> 28));
  v8 = (result + 48 * (((BYTE1(v7) ^ BYTE2(v7)) ^ BYTE3(v7)) & 0xF));
  v9 = v7 >> 7;
  v10 = v8[3];
  v11 = *v8;
  while (1)
  {
    v12 = v9 & v10;
    v13 = *(v11 + (v9 & v10));
    v14 = ((v13 ^ (0x101010101010101 * (v7 & 0x7F))) - 0x101010101010101) & ~(v13 ^ (0x101010101010101 * (v7 & 0x7F))) & 0x8080808080808080;
    if (v14)
    {
      break;
    }

LABEL_6:
    if ((v13 & (~v13 << 6) & 0x8080808080808080) != 0)
    {
      v18 = result;
      v19 = a4;
      v21 = sub_10D30A0((result + 48 * (((BYTE1(v7) ^ BYTE2(v7)) ^ BYTE3(v7)) & 0xF)), v7);
      a4 = v19;
      v16 = v21;
      result = v18;
      v11 = *v8;
      v15 = v8[1];
      *(v15 + 4 * v16) = *a3;
      v10 = v8[3];
      v17 = 1;
      goto LABEL_10;
    }

    v4 += 8;
    v9 = v4 + v12;
  }

  v15 = v8[1];
  while (1)
  {
    v16 = (v12 + (__clz(__rbit64(v14)) >> 3)) & v10;
    if (*(v15 + 4 * v16) == v5)
    {
      break;
    }

    v14 &= v14 - 1;
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_10:
  *a4 = v8;
  *(a4 + 8) = result + 768;
  *(a4 + 16) = v11 + v16;
  *(a4 + 24) = v15 + 4 * v16;
  *(a4 + 32) = v11 + v10;
  *(a4 + 48) = v17;
  return result;
}

unint64_t sub_10D30A0(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_10D3198(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_10D3198(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_10D31C8();
  }

  return sub_10D336C(a1);
}

uint64_t sub_10D336C(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_27;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_27:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = *(*(result + 8) + 4 * i);
        v19 = 265 * ((~v18 + (v18 << 21)) ^ ((~v18 + (v18 << 21)) >> 24));
        v20 = 2147483649u * ((21 * (v19 ^ (v19 >> 14))) ^ ((21 * (v19 ^ (v19 >> 14))) >> 28));
        v21 = v13 & (v20 >> 7);
        v22 = *(v17->i64 + v21) & (~*(v17->i64 + v21) << 7) & 0x8080808080808080;
        if (v22)
        {
          v15 = v13 & (v20 >> 7);
        }

        else
        {
          v23 = 8;
          v15 = v13 & (v20 >> 7);
          do
          {
            v15 = (v15 + v23) & v13;
            v23 += 8;
            v22 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v22);
        }

        v16 = (v15 + (__clz(__rbit64(v22)) >> 3)) & v13;
        if ((((v16 - v21) ^ (i - v21)) & v13) > 7)
        {
          v24 = v17->u8[v16];
          v17->i8[v16] = v20 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v20 & 0x7F;
          v25 = *(result + 8);
          if (v24 == 128)
          {
            *(v25 + 4 * v16) = *(v25 + 4 * i);
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v26 = *(v25 + 4 * i);
            *(v25 + 4 * i) = *(v25 + 4 * v16);
            *(v25 + 4 * v16) = v26;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v20 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v20 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v27 = i - (i >> 3);
    v28 = i == 7;
    v29 = 6;
    if (!v28)
    {
      v29 = v27;
    }

    *(result + 40) = v29 - *(result + 16);
  }

  else
  {
    *(result + 40) = -*(result + 16);
  }

  return result;
}

void sub_10D35D4()
{
  byte_27C2257 = 3;
  LODWORD(qword_27C2240) = 5136193;
  byte_27C226F = 3;
  LODWORD(qword_27C2258) = 5136194;
  byte_27C2287 = 3;
  LODWORD(qword_27C2270) = 5136195;
  byte_27C229F = 15;
  strcpy(&qword_27C2288, "vehicle_mass_kg");
  byte_27C22B7 = 21;
  strcpy(&xmmword_27C22A0, "vehicle_cargo_mass_kg");
  byte_27C22CF = 19;
  strcpy(&qword_27C22B8, "vehicle_aux_power_w");
  byte_27C22E7 = 15;
  strcpy(&qword_27C22D0, "dcdc_efficiency");
  strcpy(&qword_27C22E8, "drive_train_efficiency");
  HIBYTE(word_27C22FE) = 22;
  operator new();
}

void sub_10D37B0(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C22FE) < 0)
  {
    sub_21E7A8C();
  }

  sub_21E7A98();
  _Unwind_Resume(a1);
}

void sub_10D3E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  v33 = *a11;
  if (*a11)
  {
    *(v31 + 48) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10D3FC4(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  *(result + 20) = a5;
  *(result + 24) = a6;
  *(result + 32) = a7;
  *(result + 40) = a8;
  return result;
}

void sub_10D3FE0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v5 = *a4;
  v6 = a4[1];
  v7 = *(a4 + 8);
  *(a1 + 56) = 0;
  *(a1 + 48) = v7;
  *(a1 + 32) = v6;
  *(a1 + 16) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v9 = *(a4 + 5);
  v8 = *(a4 + 6);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v10 = a4[5];
  *(a1 + 80) = a4[4];
  *(a1 + 96) = v10;
  *(a1 + 112) = xmmword_2266560;
  *(a1 + 128) = -NAN;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  *(a1 + 136) = vnegq_f64(v11);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0x7FFFFFFFFFFFFFFFLL;
  sub_10D7DE0(a1 + 168, 0x400u);
  *(a1 + 224) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 240) = 0u;
  operator new();
}

void sub_10D42EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a16);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_54774(v29);
  sub_21DB4B4(v28 + 168);
  v32 = *v30;
  if (*v30)
  {
    *(v28 + 64) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10D43C0(void *a1, uint64_t a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 10);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_10D44FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10D4538(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = *a3;
  v7 = a3[1];
  *(a1 + 140) = *(a3 + 28);
  *(a1 + 128) = v7;
  *(a1 + 112) = v6;
  if (v4 == *(a1 + 64))
  {
    v8 = 0;
  }

  else
  {
    *&v9 = *(a1 + 136) / 100.0;
    v8 = sub_108E97C(&v9, v5);
  }

  *(a1 + 160) = v8;
  sub_10BE84C(a1 + 344, (v5 + 56), (a1 + 124));
  sub_10D4750();
}

void sub_10D471C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10D5C18(va);
  sub_10D5CC0(va1);
  _Unwind_Resume(a1);
}

void sub_10D4738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10D5CC0(va);
  _Unwind_Resume(a1);
}

void sub_10D4900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_10D4918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_10D4930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_10D4948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_10D4960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_10D4978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_10D4990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_10D49A8(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  *&v75 = a2;
  *(&v75 + 1) = a3;
  v6 = a1;
  v73 = sub_3B1D8C(a1[1]);
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v8 = *a4;
  v69 = a4[1];
  if (*a4 != v69)
  {
    v72 = a5;
    v71 = v6;
    do
    {
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      v70 = v8;
      v13 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v12) >> 4);
      if (v13 < *(v6 + 11))
      {
        while (v12 != v11)
        {
          v16 = sub_2ACC94(v73, *(v12 + 52));
          v18 = v17;
          v19 = sub_10D5D28(v6, v12, v75, *(&v75 + 1));
          *v76 = xmmword_2297C00;
          sub_456F78(&v87, v12, v76);
          *__p = v87;
          *v80 = v88;
          v81 = v89;
          v82[0] = v90[0];
          *(v82 + 14) = *(v90 + 14);
          v83 = v91;
          LODWORD(v84) = 0;
          *&v85 = v16;
          DWORD2(v85) = v18;
          v86 = v19;
          v20 = a5[1];
          if (v20 >= a5[2])
          {
            v23 = sub_10D80B4(a5, __p);
          }

          else
          {
            *v20 = 0;
            *(v20 + 96) = -1;
            v21 = v84;
            if (v84 != -1)
            {
              *&v87 = v20;
              off_26754E8[v84]();
              *(v20 + 96) = v21;
            }

            v22 = v85;
            *(v20 + 120) = v86;
            *(v20 + 104) = v22;
            v23 = v20 + 128;
          }

          a5[1] = v23;
          if (v84 != -1)
          {
            (off_26754D8[v84])(&v87, __p);
          }

          v12 += 80;
        }
      }

      else
      {
        v77 = 0;
        v78 = -1;
        v76[0] = 0;
        v76[1] = 0;
        sub_10D8254(v76, v13);
        v15 = *(v70 + 16);
        v14 = *(v70 + 24);
        v74 = v14;
        while (v15 != v14)
        {
          v87 = v75;
          v24 = v15[3];
          v25 = v15[4];
          if (v24 == v25)
          {
            v27 = 0;
            v30 = 1;
            v31 = 1;
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = *v71;
            do
            {
              if (v26 == 2)
              {
                goto LABEL_33;
              }

              if (sub_E6F808(v28, *v24))
              {
                v26 = v24[16];
              }

              else if (v27 != 2)
              {
                sub_E6F058(v28, &v92);
                v29 = v92.n128_u64[0];
                if (v92.n128_u64[0] != v92.n128_u64[1])
                {
                  while (*v29 != *v24)
                  {
                    v29 += 16;
                    if (v29 == v92.n128_u64[1])
                    {
                      goto LABEL_22;
                    }
                  }

                  v27 = v24[16];
                }
              }

LABEL_22:
              v24 += 48;
            }

            while (v24 != v25);
            if (v26)
            {
LABEL_33:
              v31 = 0;
              v30 = v26 != 2;
              goto LABEL_34;
            }

            v31 = 1;
            v30 = 1;
          }

LABEL_34:
          v32 = sub_45AC68(&v87, v15[8]);
          v33 = sub_45AC70(&v87, v15[8]);
          if (v30 && v27 == 2)
          {
            v34 = v31 | 2;
          }

          else
          {
            v34 = v31;
          }

          if (!v32)
          {
            v34 |= 4uLL;
          }

          v35 = 8;
          if (!v33)
          {
            v35 = 0;
          }

          v36 = v35 | v34;
          v78 &= v35 | v34;
          v92 = xmmword_2297C00;
          sub_456F78(&v87, v15, &v92);
          v37 = *(&v87 + 1);
          *__p = v87;
          v38 = v88;
          *v80 = v88;
          v39 = v89;
          v81 = v89;
          v82[0] = v90[0];
          *(v82 + 14) = *(v90 + 14);
          v83 = v91;
          v84 = v36;
          LODWORD(v85) = 0x7FFFFFFF;
          v40 = v76[1];
          if (v76[1] >= v77)
          {
            v43 = v76[0];
            v44 = v76[1] - v76[0];
            v45 = 0x6DB6DB6DB6DB6DB7 * ((v76[1] - v76[0]) >> 4) + 1;
            if (v45 > 0x249249249249249)
            {
              sub_1794();
            }

            if (0xDB6DB6DB6DB6DB6ELL * ((v77 - v76[0]) >> 4) > v45)
            {
              v45 = 0xDB6DB6DB6DB6DB6ELL * ((v77 - v76[0]) >> 4);
            }

            if ((0x6DB6DB6DB6DB6DB7 * ((v77 - v76[0]) >> 4)) >= 0x124924924924924)
            {
              v46 = 0x249249249249249;
            }

            else
            {
              v46 = v45;
            }

            if (v46)
            {
              if (v46 <= 0x249249249249249)
              {
                operator new();
              }

              sub_1808();
            }

            v47 = 16 * ((v76[1] - v76[0]) >> 4);
            *v47 = v87;
            *(v47 + 8) = v37;
            __p[1] = 0;
            v80[0] = 0;
            __p[0] = 0;
            *(v47 + 16) = v38;
            *(v47 + 32) = v39;
            v81 = 0uLL;
            v80[1] = 0;
            *(v47 + 48) = v82[0];
            *(v47 + 62) = *(v82 + 14);
            *(v47 + 80) = v83;
            *(v47 + 104) = v85;
            v48 = (v47 - v44);
            *(v47 + 96) = v84;
            a5 = v72;
            if (v43 != v40)
            {
              v49 = v43;
              v50 = v48;
              do
              {
                *v50 = 0;
                *(v50 + 1) = 0;
                *(v50 + 2) = 0;
                *v50 = *v49;
                *(v50 + 2) = *(v49 + 2);
                *v49 = 0;
                *(v49 + 1) = 0;
                *(v49 + 2) = 0;
                *(v50 + 3) = 0;
                *(v50 + 4) = 0;
                *(v50 + 5) = 0;
                *(v50 + 24) = *(v49 + 24);
                *(v50 + 5) = *(v49 + 5);
                *(v49 + 3) = 0;
                *(v49 + 4) = 0;
                *(v49 + 5) = 0;
                v51 = *(v49 + 3);
                *(v50 + 62) = *(v49 + 62);
                *(v50 + 3) = v51;
                *(v50 + 5) = *(v49 + 5);
                v52 = *(v49 + 12);
                *(v50 + 26) = *(v49 + 26);
                *(v50 + 12) = v52;
                v49 += 112;
                v50 += 112;
              }

              while (v49 != v40);
              do
              {
                v54 = *(v43 + 3);
                if (v54)
                {
                  v55 = *(v43 + 4);
                  v56 = *(v43 + 3);
                  if (v55 != v54)
                  {
                    do
                    {
                      if (*(v55 - 1) < 0)
                      {
                        operator delete(*(v55 - 24));
                      }

                      v55 -= 48;
                    }

                    while (v55 != v54);
                    v56 = *(v43 + 3);
                  }

                  *(v43 + 4) = v54;
                  operator delete(v56);
                }

                v57 = *v43;
                if (*v43)
                {
                  v58 = *(v43 + 1);
                  v53 = *v43;
                  if (v58 != v57)
                  {
                    do
                    {
                      v59 = *(v58 - 3);
                      if (v59)
                      {
                        *(v58 - 2) = v59;
                        operator delete(v59);
                      }

                      v58 -= 48;
                    }

                    while (v58 != v57);
                    v53 = *v43;
                  }

                  *(v43 + 1) = v57;
                  operator delete(v53);
                }

                v43 += 112;
              }

              while (v43 != v40);
            }

            v60 = v76[0];
            v76[0] = v48;
            v76[1] = (v47 + 112);
            v77 = 0;
            if (v60)
            {
              operator delete(v60);
            }

            v61 = v80[1];
            v76[1] = (v47 + 112);
            if (v80[1])
            {
              for (i = v81; i != v61; i -= 6)
              {
                if (*(i - 1) < 0)
                {
                  operator delete(*(i - 3));
                }
              }

              operator delete(v61);
            }
          }

          else
          {
            *v76[1] = v87;
            *(v40 + 1) = v37;
            *(v40 + 1) = v38;
            __p[1] = 0;
            v80[0] = 0;
            __p[0] = 0;
            *(v40 + 2) = v39;
            v81 = 0uLL;
            v80[1] = 0;
            v41 = *(v82 + 14);
            *(v40 + 3) = v82[0];
            *(v40 + 62) = v41;
            *(v40 + 5) = v83;
            v42 = v85;
            *(v40 + 12) = v84;
            *(v40 + 26) = v42;
            v76[1] = v40 + 112;
            a5 = v72;
          }

          v63 = __p[0];
          if (__p[0])
          {
            for (j = __p[1]; j != v63; j -= 48)
            {
              v65 = *(j - 3);
              if (v65)
              {
                *(j - 2) = v65;
                operator delete(v65);
              }
            }

            operator delete(v63);
          }

          v15 += 10;
          v14 = v74;
        }

        v66 = a5[1];
        if (v66 < a5[2])
        {
          v9 = v78;
          *(v66 + 8) = 0;
          *(v66 + 16) = 0;
          *v66 = 0;
          *v66 = *v76;
          *(v66 + 16) = v77;
          *(v66 + 96) = 1;
          v6 = v71;
          v10 = *v70;
          *(v66 + 112) = *(v70 + 8);
          *(v66 + 104) = v10;
          *(v66 + 120) = v9;
          a5[1] = v66 + 128;
        }

        else
        {
          v67 = sub_10D77C8(a5, v76, v70, &v78);
          v68 = v76[0];
          a5[1] = v67;
          v6 = v71;
          if (v68)
          {
            sub_10D7BD8(v76, v68);
            operator delete(v76[0]);
          }
        }
      }

      v8 = v70 + 40;
    }

    while (v70 + 40 != v69);
  }
}

void sub_10D5110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10D6864(va);
  sub_10D5C18(v13);
  _Unwind_Resume(a1);
}

void sub_10D51A0(uint64_t a1, void *a2, double a3)
{
  memset(v5, 0, 24);
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) >> 7) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v5[3] = v5;
  sub_54318(v5, *(a1 + 160), 0, &v4, *&a3);
}

void sub_10D5BB4(_Unwind_Exception *a1)
{
  v2 = *(v1 - 120);
  if (v2)
  {
    *(v1 - 112) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void **sub_10D5C18(void **a1)
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
        v5 = v3 - 128;
        v6 = *(v3 - 8);
        if (v6 != -1)
        {
          (off_26754D8[v6])(&v8, v3 - 128);
        }

        *(v3 - 8) = -1;
        v3 -= 128;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_10D5CC0(void **a1)
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
        v5 = v3 - 5;
        sub_10D76CC(v3 - 3);
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

uint64_t sub_10D5D28(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a3;
  v19[1] = a4;
  v5 = a2[3];
  v6 = a2[4];
  if (v5 == v6)
  {
    v8 = 0;
    v11 = 1;
    v12 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = *a1;
    do
    {
      if (v7 == 2)
      {
        goto LABEL_15;
      }

      if (sub_E6F808(v9, *v5))
      {
        v7 = v5[16];
      }

      else if (v8 != 2)
      {
        sub_E6F058(v9, &v17);
        v10 = v17;
        if (v17 != v18)
        {
          while (*v10 != *v5)
          {
            v10 += 16;
            if (v10 == v18)
            {
              goto LABEL_4;
            }
          }

          v8 = v5[16];
        }
      }

LABEL_4:
      v5 += 48;
    }

    while (v5 != v6);
    if (v7)
    {
LABEL_15:
      v12 = 0;
      v11 = v7 != 2;
      goto LABEL_16;
    }

    v12 = 1;
    v11 = 1;
  }

LABEL_16:
  if (v11 && v8 == 2)
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  if (!sub_45AC68(v19, a2[8]))
  {
    v13 |= 4uLL;
  }

  v14 = sub_45AC70(v19, a2[8]);
  v15 = 8;
  if (!v14)
  {
    v15 = 0;
  }

  return v13 | v15;
}

uint64_t sub_10D5E64@<X0>(uint64_t a1@<X0>, unsigned int a2@<W3>, uint64_t a3@<X4>, void ****a4@<X8>)
{
  sub_10D1D30(a1, v163);
  if (v179 + v178 + v177 + v176 + v175 + v174 + v173 + v172 + v171 + v170 + v169 + v168 + v167 + v166 + v163[2] + v165)
  {
    v91 = a4;
    v99 = &unk_2290750;
    v100 = 0;
    v101 = 0u;
    v102 = 0;
    v103 = &unk_2290750;
    v104 = 0;
    v105 = 0u;
    v106 = 0;
    v107 = &unk_2290750;
    v108 = 0;
    v109 = 0u;
    v110 = 0;
    v111 = &unk_2290750;
    v112 = 0u;
    v114 = 0;
    v115 = &unk_2290750;
    v113 = 0;
    v117 = 0;
    v116 = 0u;
    v118 = 0;
    v119 = &unk_2290750;
    v122 = 0;
    v123 = &unk_2290750;
    v121 = 0;
    v120 = 0u;
    v124 = 0u;
    v125 = 0;
    v126 = 0;
    v127 = &unk_2290750;
    v128 = 0u;
    v130 = 0;
    v131 = &unk_2290750;
    v129 = 0;
    v132 = 0u;
    v133 = 0;
    v134 = 0;
    v135 = &unk_2290750;
    v136 = 0u;
    v138 = 0;
    v137 = 0;
    v142 = 0;
    v140 = 0u;
    v139 = &unk_2290750;
    v141 = 0;
    v143 = &unk_2290750;
    v146 = 0;
    v144 = 0u;
    v145 = 0;
    v147 = &unk_2290750;
    v150 = 0;
    v148 = 0u;
    v149 = 0;
    v151 = &unk_2290750;
    v154 = 0;
    v152 = 0u;
    v153 = 0;
    v155 = &unk_2290750;
    v158 = 0;
    v156 = 0u;
    v157 = 0;
    v159 = &unk_2290750;
    v162 = 0;
    v160 = 0u;
    v161 = 0;
    v92 = a1;
    v9 = *(a1 + 808);
    if (v9 >= a2)
    {
      LOBYTE(v9) = a2;
    }

    v10 = v163[1];
    v11 = v163[0];
    if (*v163[0] <= -2)
    {
      do
      {
        v12 = (__clz(__rbit64(((*v11 >> 7) & ~*v11 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v11 = (v11 + v12);
        v10 += v12;
      }

      while (*v11 < -1);
    }

    v13 = (v163[0] + v164);
    if (v11 == (v163[0] + v164))
    {
      v81 = 48;
      v82 = v163;
      while (1)
      {
        v95 = v81;
        v83 = v163 + v81;
        v84 = *(v163 + v81);
        v10 = v82[7];
        v11 = v84;
        if (*v84 <= -2)
        {
          do
          {
            v85 = (__clz(__rbit64(((*v11 >> 7) & ~*v11 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
            v11 = (v11 + v85);
            v10 += v85;
          }

          while (*v11 < -1);
        }

        v13 = &v84[v82[9]];
        if (v11 != v13)
        {
          break;
        }

        v81 = v95 + 48;
        v82 = v83;
        if (v95 == 720)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v95 = 0;
    }

    v93 = 2 * v9;
    while (1)
    {
      do
      {
        LODWORD(v97) = *v10 >> ((sub_57A90(*v10) - v93) & 0xFE);
        sub_F9AFE4(&v99, &v97, &v180);
        v14 = v180.n128_u64[0];
        if (v181 == 1)
        {
          v15 = *(v180.n128_u64[0] + 8) + 32 * v180.n128_u64[1];
          *v15 = v97;
          *(v15 + 16) = 0;
          *(v15 + 24) = 0;
          *(v15 + 8) = 0;
        }

        v16 = (*(v14 + 8) + 32 * v180.n128_u64[1]);
        v18 = v16[2];
        v17 = v16[3];
        if (v18 >= v17)
        {
          v20 = v16[1];
          v21 = v18 - v20;
          v22 = (v18 - v20) >> 2;
          v23 = v22 + 1;
          if ((v22 + 1) >> 62)
          {
            sub_1794();
          }

          v24 = v17 - v20;
          if (v24 >> 1 > v23)
          {
            v23 = v24 >> 1;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v25 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            if (!(v25 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v26 = (v18 - v20) >> 2;
          v27 = (4 * v22);
          v28 = (4 * v22 - 4 * v26);
          *v27 = *v10;
          v19 = v27 + 1;
          memcpy(v28, v20, v21);
          v16[1] = v28;
          v16[2] = v19;
          v16[3] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v18 = *v10;
          v19 = v18 + 1;
        }

        v16[2] = v19;
        v29 = *(v11 + 1);
        v11 = (v11 + 1);
        ++v10;
        if (v29 <= -2)
        {
          do
          {
            v30 = (__clz(__rbit64(((*v11 >> 7) & ~*v11 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
            v11 = (v11 + v30);
            v10 += v30;
          }

          while (*v11 < -1);
        }
      }

      while (v11 != v13);
      if (v95 == 720)
      {
        break;
      }

      v31 = v163 + v95;
      v32 = v95 + 48;
      while (1)
      {
        v95 = v32;
        v33 = (v163 + v32);
        v34 = *(v163 + v32);
        v10 = *(v31 + 7);
        v11 = *v33;
        if (**v33 <= -2)
        {
          do
          {
            v35 = (__clz(__rbit64(((*v11 >> 7) & ~*v11 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
            v11 = (v11 + v35);
            v10 += v35;
          }

          while (*v11 < -1);
        }

        v13 = (v34 + *(v31 + 9));
        if (v11 != v13)
        {
          break;
        }

        v32 = v95 + 48;
        v31 = v33;
        if (v95 == 720)
        {
          goto LABEL_36;
        }
      }
    }

LABEL_36:
    *v91 = 0;
    v91[1] = 0;
    v91[2] = 0;
    v36 = v100;
    v37 = v99;
    if (*v99 <= -2)
    {
      do
      {
        v38 = (__clz(__rbit64(((*v37 >> 7) & ~*v37 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v37 += v38;
        v36 += 32 * v38;
      }

      while (*v37 < -1);
    }

    v39 = v163;
    v40 = &v99[*(&v101 + 1)];
    if (v37 == &v99[*(&v101 + 1)])
    {
      v86 = 48;
      v87 = &v99;
      while (1)
      {
        v96 = v86;
        v88 = (&v99 + v86);
        v89 = *(&v99 + v86);
        v36 = v87[7];
        v37 = *v88;
        if (**v88 <= -2)
        {
          do
          {
            v90 = (__clz(__rbit64(((*v37 >> 7) & ~*v37 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
            v37 += v90;
            v36 += 32 * v90;
          }

          while (*v37 < -1);
        }

        v40 = &v87[9][v89];
        if (v37 != v40)
        {
          break;
        }

        v86 = v96 + 48;
        v87 = v88;
        if (v96 == 720)
        {
          goto LABEL_90;
        }
      }
    }

    else
    {
      v96 = 0;
    }

    while (1)
    {
      v94 = v40;
      do
      {
        v42 = *(v36 + 1);
        v43 = *(v36 + 2);
        v44 = *(v92 + 24);
        v181 = 0;
        v180 = 0uLL;
        if (v42 != v43)
        {
          do
          {
            sub_2AC43C(v44, *v42++, a3, &v180);
          }

          while (v42 != v43);
          v45 = v180.n128_u64[0];
          if (v180.n128_u64[0] != v180.n128_u64[1])
          {
            v46 = sub_57A90(*v36);
            v47 = sub_57A90(*v36);
            v48 = *v36 & ~(-1 << (v47 & 0xFE));
            v49 = sub_581D8(v48);
            v50 = sub_581D8(v48 >> 1);
            v51 = 0x7FFFFFFFu >> (v46 >> 1);
            v52 = 1 << -(v47 >> 1);
            if (v47 < 2)
            {
              v52 = -2;
            }

            v53 = v51 + v49 * v52;
            LODWORD(v54) = v51 + v50 * v52;
            if (v54 >= 0xFFFFFFFE)
            {
              v54 = 4294967294;
            }

            else
            {
              v54 = v54;
            }

            v97 = v53 | (v54 << 32);
            v98 = 0x7FFFFFFF;
            v55 = v91[1];
            if (v55 >= v91[2])
            {
              v56 = sub_10D7EB8(v91, &v97, &v180);
            }

            else
            {
              sub_10D155C(v91[1], &v97, &v180);
              v56 = (v55 + 5);
            }

            v91[1] = v56;
            v45 = v180.n128_u64[0];
          }

          if (v45)
          {
            v57 = v180.n128_u64[1];
            v58 = v45;
            if (v180.n128_u64[1] != v45)
            {
              do
              {
                v60 = *(v57 - 56);
                if (v60)
                {
                  v61 = *(v57 - 48);
                  v62 = *(v57 - 56);
                  if (v61 != v60)
                  {
                    do
                    {
                      if (*(v61 - 1) < 0)
                      {
                        operator delete(*(v61 - 24));
                      }

                      v61 -= 48;
                    }

                    while (v61 != v60);
                    v62 = *(v57 - 56);
                  }

                  *(v57 - 48) = v60;
                  operator delete(v62);
                }

                v63 = (v57 - 80);
                v64 = *(v57 - 80);
                if (v64)
                {
                  v65 = *(v57 - 72);
                  v59 = *(v57 - 80);
                  if (v65 != v64)
                  {
                    do
                    {
                      v66 = *(v65 - 24);
                      if (v66)
                      {
                        *(v65 - 16) = v66;
                        operator delete(v66);
                      }

                      v65 -= 48;
                    }

                    while (v65 != v64);
                    v59 = *v63;
                  }

                  *(v57 - 72) = v64;
                  operator delete(v59);
                }

                v57 -= 80;
              }

              while (v63 != v45);
              v58 = v180.n128_u64[0];
            }

            v180.n128_u64[1] = v45;
            operator delete(v58);
          }
        }

        v67 = *++v37;
        v36 += 32;
        if (v67 > -2)
        {
          v41 = v94;
        }

        else
        {
          v41 = v94;
          do
          {
            v68 = (__clz(__rbit64(((*v37 >> 7) & ~*v37 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
            v37 += v68;
            v36 += 32 * v68;
          }

          while (*v37 < -1);
        }
      }

      while (v37 != v41);
      if (v96 == 720)
      {
        break;
      }

      v69 = (&v99 + v96);
      v70 = v96 + 48;
      while (1)
      {
        v96 = v70;
        v71 = (&v99 + v70);
        v72 = *(&v99 + v70);
        v36 = v69[7];
        v37 = *v71;
        if (**v71 <= -2)
        {
          do
          {
            v73 = (__clz(__rbit64(((*v37 >> 7) & ~*v37 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
            v37 += v73;
            v36 += 32 * v73;
          }

          while (*v37 < -1);
        }

        v40 = &v69[9][v72];
        if (v37 != v40)
        {
          break;
        }

        v70 = v96 + 48;
        v69 = v71;
        if (v96 == 720)
        {
          goto LABEL_90;
        }
      }
    }

    do
    {
LABEL_90:
      v74 = (v39 - 6);
      v75 = *(v39 - 3);
      if (v75)
      {
        v76 = 0;
        v77 = 0;
        v78 = v39 - 5;
        do
        {
          if (((*v74)[v77] & 0x80000000) == 0)
          {
            v79 = *v78 + v76;
            v80 = *(v79 + 8);
            if (v80)
            {
              *(v79 + 16) = v80;
              operator delete(v80);
              v75 = *(v39 - 3);
            }
          }

          ++v77;
          v76 += 32;
        }

        while (v77 != v75);
        operator delete(*(v39 - 6));
        *(v39 - 6) = &unk_2290750;
        *(v39 - 1) = 0;
        *(v39 - 4) = 0;
        *(v39 - 3) = 0;
        *v78 = 0;
      }

      v39 -= 6;
    }

    while (v74 != &v99);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return sub_360988(v163);
}

void sub_10D6804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *(a3 + 8) = v8;
  sub_10D76CC((v9 - 120));
  sub_10D5CC0(a3);
  sub_4821F8(va);
  sub_360988(&STACK[0x338]);
  _Unwind_Resume(a1);
}

void ***sub_10D6864(void ***a1)
{
  if (*a1)
  {
    sub_10D7BD8(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10D68A0(uint64_t a1, void *a2, unsigned int a3)
{
  v3 = a3 + 1;
  v4 = *(a1 + 272);
  if (v3 >= (*(a1 + 280) - v4) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v21 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v6 = a3;
  v7 = *(a1 + 296);
  v8 = *(v4 + 4 * a3);
  v9 = *(v4 + 4 * v3);
  v10 = *(a1 + 160);
  v11 = *a2 + (v6 << 7);
  v12 = *(v11 + 96);
  if (v12)
  {
    if (v12 != 1)
    {
LABEL_16:
      sub_5AF20();
    }

    v13 = -1227133513 * ((*(v11 + 8) - *v11) >> 4);
    v12 = v13 - 1;
    v14 = *(a1 + 40);
    if (v14)
    {
      sub_21E7B68(v14, v13, v10, &v22);
      v10 = v22;
    }
  }

  if (16 * v8 != 16 * v9)
  {
    v16 = (16 * v8 + v7);
    do
    {
      v18 = *a2 + (*v16 << 7);
      v19 = *(v18 + 96);
      if (v19)
      {
        if (v19 != 1)
        {
          goto LABEL_16;
        }

        v17 = -1227133513 * ((*(v18 + 8) - *v18) >> 4);
      }

      else
      {
        v17 = 1;
      }

      v12 += v17;
      if (*(v16 + 1) < v10)
      {
        v10 = *(v16 + 1);
      }

      v16 += 4;
    }

    while (v16 != (16 * v9 + v7));
  }

  return v12;
}

uint64_t sub_10D69FC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v23[0] = a3;
  v23[1] = a4;
  v5 = *(a2 + 52);
  if (a3[1] == v5)
  {
    return 0x7FFFFFFFLL;
  }

  if (*a3 == v5)
  {
    return 0x80000000;
  }

  v8 = sub_45AC58(v23);
  if (v5 == v8 && HIDWORD(v5) == HIDWORD(v8))
  {
    return 0x80000000;
  }

  result = sub_10BE960((a1 + 344), a2, (a2 + 10), v23);
  if (*(a1 + 88) > 0.0)
  {
    v10 = result;
    v11 = sub_3B1D8C(*(a1 + 8));
    v12 = sub_2ACC94(v11, v5);
    v13 = *(a1 + 116);
    v14 = exp(((v12 >> 33) + (v13 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
    v15 = atan((v14 + -1.0 / v14) * 0.5);
    v16 = cos(v15 * 57.2957795 / 180.0 * 3.14159265);
    v17 = *(a1 + 112) - v12;
    v18 = sqrt(((v13 - HIDWORD(v12)) * (v13 - HIDWORD(v12)) + v17 * v17)) / 100.0 * 100.0 * (v16 * 0.00932288077) * 100.0;
    if (v18 >= 0.0)
    {
      v19 = v18;
      if (v18 >= 4.50359963e15)
      {
        goto LABEL_17;
      }

      v20 = (v18 + v18) + 1;
    }

    else
    {
      v19 = v18;
      if (v18 <= -4.50359963e15)
      {
        goto LABEL_17;
      }

      v20 = (v18 + v18) - 1 + (((v18 + v18) - 1) >> 63);
    }

    v19 = (v20 >> 1);
LABEL_17:
    if (v19 >= 9.22337204e18)
    {
      v22 = 0x7FFFFFFFFFFFFFFELL;
      return (v10 + (((*(a1 + 160) - (*(a1 + 144) + v22)) & ~((*(a1 + 160) - (*(a1 + 144) + v22)) >> 63)) / -100.0 * *(a1 + 88)));
    }

    if (v18 >= 0.0)
    {
      if (v18 < 4.50359963e15)
      {
        v21 = (v18 + v18) + 1;
        goto LABEL_24;
      }
    }

    else if (v18 > -4.50359963e15)
    {
      v21 = (v18 + v18) - 1 + (((v18 + v18) - 1) >> 63);
LABEL_24:
      v18 = (v21 >> 1);
    }

    v22 = v18;
    return (v10 + (((*(a1 + 160) - (*(a1 + 144) + v22)) & ~((*(a1 + 160) - (*(a1 + 144) + v22)) >> 63)) / -100.0 * *(a1 + 88)));
  }

  return result;
}

uint64_t sub_10D6CB4(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v8 = sub_3B1D8C(*(a1 + 8));
  v9 = sub_2ACC94(v8, *(a2 + 52));
  v10 = *(a1 + 160);
  v39 = a4;
  v41 = a3;
  v11 = *a3 + (a4 << 7);
  v12 = *(v11 + 96);
  v37 = v9;
  v38 = a4;
  if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_45;
    }

    v13 = *v11;
    v14 = *(v11 + 8);
    if (*v11 != v14)
    {
      v12 = 0;
      v15 = HIDWORD(v9);
      v16 = v9;
      while (*(v13 + 52) == *(a2 + 52) && *(v13 + 56) == *(a2 + 56))
      {
LABEL_10:
        v13 += 112;
        if (v13 == v14)
        {
          goto LABEL_19;
        }
      }

      v18 = sub_2ACC94(v8, *(v13 + 52));
      v19 = sqrt(((v16 - v18) * (v16 - v18) + (v15 - HIDWORD(v18)) * (v15 - HIDWORD(v18)))) / 100.0 * 100.0;
      if (v19 >= 4.50359963e15)
      {
        if (v19 >= 9.22337204e18)
        {
LABEL_17:
          v17 = 0x7FFFFFFFFFFFFFFELL;
          goto LABEL_6;
        }
      }

      else
      {
        v19 = (((v19 + v19) + 1) >> 1);
        if (v19 >= 9.22337204e18)
        {
          goto LABEL_17;
        }
      }

      v17 = v19;
LABEL_6:
      if (v17 < v10)
      {
        v10 = v17;
      }

      if (v17 < *(a1 + 104))
      {
        ++v12;
      }

      goto LABEL_10;
    }

    v12 = 0;
  }

LABEL_19:
  v20 = v39 + 1;
  v21 = *(a1 + 272);
  if (v20 >= (*(a1 + 280) - v21) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v36 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  v22 = 16 * *(v21 + 4 * v38);
  v23 = 16 * *(v21 + 4 * v20);
  if (v22 != v23)
  {
    v25 = *(a1 + 296);
    v40 = (v23 + v25);
    v26 = (v22 + v25);
    while (1)
    {
      v28 = *v41 + (*v26 << 7);
      v29 = *(v28 + 96);
      if (v29)
      {
        break;
      }

      v27 = *(v26 + 1);
      if (v27 < v10)
      {
        v10 = *(v26 + 1);
      }

      if (v27 < *(a1 + 104))
      {
        ++v12;
      }

LABEL_27:
      v26 += 4;
      if (v26 == v40)
      {
        return v12;
      }
    }

    if (v29 == 1)
    {
      v31 = *v28;
      v30 = *(v28 + 8);
      while (1)
      {
        if (v31 == v30)
        {
          goto LABEL_27;
        }

        if (*(v31 + 52) != *(a2 + 52) || *(v31 + 56) != *(a2 + 56))
        {
          break;
        }

LABEL_36:
        v31 += 112;
      }

      v33 = sub_2ACC94(v8, *(v31 + 52));
      v34 = sqrt(((v37 - v33) * (v37 - v33) + (HIDWORD(v37) - HIDWORD(v33)) * (HIDWORD(v37) - HIDWORD(v33)))) / 100.0 * 100.0;
      if (v34 >= 4.50359963e15)
      {
        if (v34 >= 9.22337204e18)
        {
LABEL_44:
          v32 = 0x7FFFFFFFFFFFFFFELL;
          goto LABEL_32;
        }
      }

      else
      {
        v34 = (((v34 + v34) + 1) >> 1);
        if (v34 >= 9.22337204e18)
        {
          goto LABEL_44;
        }
      }

      v32 = v34;
LABEL_32:
      if (v32 < v10)
      {
        v10 = v32;
      }

      if (v32 < *(a1 + 104))
      {
        ++v12;
      }

      goto LABEL_36;
    }

LABEL_45:
    sub_5AF20();
  }

  return v12;
}

double sub_10D6FD4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = *(a1 + 80);
  if (result > 0.0)
  {
    v4 = a3 + 1;
    v5 = *(a1 + 272);
    if (v4 < (*(a1 + 280) - v5) >> 2)
    {
      v6 = *(a1 + 296);
      v7 = v6 + 16 * *(v5 + 4 * v4);
      v10 = v6 + 16 * *(v5 + 4 * a3);
      v11 = v7;
      sub_10DA950();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v9 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  return result;
}

void sub_10D74C4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v26)
  {
    operator delete(v26);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

void sub_10D750C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_334D18(&a15);
  sub_334D18(&a23);
  sub_3355FC(&a31);
  _Unwind_Resume(a1);
}

uint64_t sub_10D7530(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 != -1)
  {
    (off_26754D8[v2])(&v4, a1);
  }

  *(a1 + 96) = -1;
  return a1;
}

void sub_10D758C(uint64_t a1, void **a2)
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

void sub_10D7680(uint64_t a1, void ***a2)
{
  if (*a2)
  {
    sub_10D7BD8(a2, *a2);
    v3 = *a2;

    operator delete(v3);
  }
}

void ***sub_10D76CC(void ***a1)
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
        v6 = *(v3 - 7);
        if (v6)
        {
          v7 = *(v3 - 6);
          v8 = *(v3 - 7);
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
            v8 = *(v3 - 7);
          }

          *(v3 - 6) = v6;
          operator delete(v8);
        }

        v9 = v3 - 10;
        v10 = *(v3 - 10);
        if (v10)
        {
          v11 = *(v3 - 9);
          v5 = *(v3 - 10);
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
            v5 = *v9;
          }

          *(v3 - 9) = v10;
          operator delete(v5);
        }

        v3 -= 10;
      }

      while (v9 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10D77C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = (a1[1] - *a1) >> 7;
  v5 = v4 + 1;
  if ((v4 + 1) >> 57)
  {
    sub_1794();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 6 > v5)
  {
    v5 = v7 >> 6;
  }

  if (v7 >= 0x7FFFFFFFFFFFFF80)
  {
    v8 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  v21 = a1;
  if (v8)
  {
    if (!(v8 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v9 = v4 << 7;
  __p = 0;
  v18 = v9;
  v10 = *a4;
  *v9 = *a2;
  *(v9 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v9 + 96) = 1;
  *(v9 + 104) = *a3;
  *(v9 + 112) = *(a3 + 8);
  *(v9 + 120) = v10;
  v19 = (v4 << 7) + 128;
  v20 = 0;
  sub_10D7958(a1, &__p);
  v11 = a1[1];
  v12 = v18;
  v13 = v19;
  if (v19 != v18)
  {
    do
    {
      v14 = v13 - 128;
      v19 = v13 - 128;
      v15 = *(v13 - 32);
      if (v15 != -1)
      {
        (off_26754D8[v15])(&v22);
        v14 = v19;
      }

      *(v13 - 32) = -1;
      v13 = v14;
    }

    while (v14 != v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

uint64_t *sub_10D7958(uint64_t *result, void *a2)
{
  v2 = a2;
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = 0;
    do
    {
      v9 = v6 + v7;
      v10 = v4 + v7;
      *v9 = 0;
      *(v9 + 96) = -1;
      v11 = *(v4 + v7 + 96);
      if (v11 != -1)
      {
        v17 = v6 + v7;
        result = (off_26754E8[v11])(&v17, v4 + v7);
        *(v9 + 96) = v11;
      }

      v8 = *(v10 + 104);
      *(v9 + 120) = *(v10 + 120);
      *(v9 + 104) = v8;
      v7 += 128;
    }

    while (v4 + v7 != v5);
    v2 = a2;
    do
    {
      v12 = *(v4 + 96);
      if (v12 != -1)
      {
        result = (off_26754D8[v12])(&v18, v4);
      }

      *(v4 + 96) = -1;
      v4 += 128;
    }

    while (v4 != v5);
  }

  v2[1] = v6;
  v13 = *v3;
  *v3 = v6;
  v3[1] = v13;
  v2[1] = v13;
  v14 = v3[1];
  v3[1] = v2[2];
  v2[2] = v14;
  v15 = v3[2];
  v3[2] = v2[3];
  v2[3] = v15;
  *v2 = v2[1];
  return result;
}

uint64_t sub_10D7AB0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 128;
      *(a1 + 16) = v3 - 128;
      v5 = *(v3 - 32);
      if (v5 != -1)
      {
        (off_26754D8[v5])(&v7);
        v4 = *(a1 + 16);
      }

      *(v3 - 32) = -1;
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

__n128 sub_10D7B50(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v3 = *(a2 + 48);
  *(v2 + 62) = *(a2 + 62);
  *(v2 + 48) = v3;
  result = *(a2 + 80);
  *(v2 + 80) = result;
  return result;
}

__n128 sub_10D7BB0(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_10D7BD8(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v6 = *(v4 - 11);
      if (v6)
      {
        v7 = *(v4 - 10);
        v8 = *(v4 - 11);
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
          v8 = *(v4 - 11);
        }

        *(v4 - 10) = v6;
        operator delete(v8);
      }

      v9 = v4 - 14;
      v10 = *(v4 - 14);
      if (v10)
      {
        v11 = *(v4 - 13);
        v5 = *(v4 - 14);
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
          v5 = *v9;
        }

        *(v4 - 13) = v10;
        operator delete(v5);
      }

      v4 -= 14;
    }

    while (v9 != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t sub_10D7CBC(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = 0;
  *result = v2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_10D7DAC(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10D7DE0(uint64_t a1, unsigned int a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_428E0((a1 + 24), a2);
  if (*(a1 + 16) - *a1 <= 0x3F7uLL)
  {
    operator new();
  }

  return a1;
}

void sub_10D7E94(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E0CA4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10D7EB8(void ****a1, uint64_t *a2, __n128 *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * (a1[2] - *a1) > v4)
  {
    v4 = 0x999999999999999ALL * (a1[2] - *a1);
  }

  if (0xCCCCCCCCCCCCCCCDLL * (a1[2] - *a1) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * (a1[1] - *a1);
  sub_10D155C(v15, a2, a3);
  v7 = 40 * v3 + 40;
  v8 = *a1;
  v9 = a1[1];
  v10 = v15 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v15 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 8) = *(v11 + 2);
      *v12 = v13;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 16) = 0;
      *(v12 + 16) = *(v11 + 1);
      *(v12 + 32) = v11[4];
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = 0;
      v11 += 5;
      v12 += 40;
    }

    while (v11 != v9);
    do
    {
      sub_10D76CC(v8 + 2);
      v8 += 5;
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

void sub_10D8048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10D805C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10D805C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_10D76CC((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10D80B4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    if (!(v7 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = v2 << 7;
  __p = 0;
  v17 = v8;
  v18 = v8;
  v19 = 0;
  *v8 = 0;
  *(v8 + 96) = -1;
  v9 = *(a2 + 96);
  if (v9 != -1)
  {
    v21 = v8;
    (off_26754E8[v9])(&v21, a2);
    *(v8 + 96) = v9;
  }

  *(v8 + 104) = *(a2 + 104);
  *(v8 + 120) = *(a2 + 120);
  v18 = v8 + 128;
  sub_10D7958(a1, &__p);
  v10 = a1[1];
  v11 = v17;
  v12 = v18;
  if (v18 != v17)
  {
    do
    {
      v13 = v12 - 128;
      v18 = v12 - 128;
      v14 = *(v12 - 32);
      if (v14 != -1)
      {
        (off_26754D8[v14])(&v21);
        v13 = v18;
      }

      *(v12 - 32) = -1;
      v12 = v13;
    }

    while (v13 != v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void *sub_10D8254(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_10D832C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10D8488(va);
  _Unwind_Resume(a1);
}

void sub_10D8340(void ***a1, void *a2)
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
      *(v9 + 80) = *(v8 + 5);
      v11 = v8[12];
      *(v9 + 104) = *(v8 + 26);
      *(v9 + 96) = v11;
      v8 += 14;
      v9 += 112;
    }

    while (v8 != v6);
  }

  sub_10D84C0(a1, v5, v6);
  a2[1] = v7;
  v12 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_10D8488(uint64_t a1)
{
  sub_10D8600(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10D84C0(uint64_t a1, void **a2, void **a3)
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

      v4 += 14;
    }

    while (v4 != a3);
  }
}

uint64_t sub_10D8598(uint64_t a1)
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
        v4 -= 14;
        sub_2AE1D0(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_10D8600(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v6 = (i - 112);
    *(a1 + 16) = i - 112;
    v7 = *(i - 88);
    if (v7)
    {
      v8 = *(i - 80);
      v9 = *(i - 88);
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
        v9 = *(i - 88);
      }

      *(i - 80) = v7;
      operator delete(v9);
    }

    v10 = *v6;
    if (*v6)
    {
      v11 = *(i - 104);
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

      *(i - 104) = v10;
      operator delete(v5);
    }
  }
}

void sub_10D86E8(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v5 = a2;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v6 = a1 + 24;
  v9 = v8 - v7;
  v10 = (v8 - v7) >> 2;
  if (v10 <= a2)
  {
    do
    {
      v22 = (v9 >> 1) | 1;
      if (v10 <= v9 >> 1)
      {
        sub_42CC4(v6, v22 - v10);
        v7 = *(a1 + 24);
        v8 = *(a1 + 32);
        v9 = v8 - v7;
        v23 = (v8 - v7) >> 2;
        if (v10 < v23)
        {
          goto LABEL_15;
        }
      }

      else if (v22 < v10)
      {
        v8 = v7 + 4 * v22;
        *(a1 + 32) = v8;
        v9 = 4 * v22;
        v23 = (4 * v22) >> 2;
        if (v10 < v23)
        {
LABEL_15:
          memset((v7 + 4 * v10), 255, v9 - 4 * v10);
        }
      }

      else
      {
        v9 = v8 - v7;
        v23 = (v8 - v7) >> 2;
        if (v10 < v23)
        {
          goto LABEL_15;
        }
      }

      v10 = v23;
    }

    while (v23 <= v5);
  }

  v24 = v5 | (*a3 << 32);
  sub_2512DC(a1, &v24);
  v11 = *(a1 + 48);
  v12 = *(a1 + 24);
  *(v12 + 4 * v5) = v11;
  *(a1 + 48) = v11 + 1;
  if (v11)
  {
    v13 = *a1;
    do
    {
      v14 = v11 - 1;
      v15 = (v13 + 8 * ((v11 - 1) >> 2));
      v16 = (v13 + 8 * v11);
      v17 = v16[1];
      v18 = v15[1];
      if (v18 < v17)
      {
        break;
      }

      v19 = *v16;
      *v16 = *v15;
      v16[1] = v18;
      *v15 = v19;
      v15[1] = v17;
      v20 = *v16;
      v21 = *(v12 + 4 * v20);
      *(v12 + 4 * v20) = *(v12 + 4 * v19);
      *(v12 + 4 * v19) = v21;
      v11 = v14 >> 2;
    }

    while (v14 > 3);
  }
}

double sub_10D8860(uint64_t *a1, unsigned int a2, int *a3)
{
  v3 = a1[3];
  v4 = *(v3 + 4 * a2);
  v5 = *a1;
  v6 = *a1 + 8 * v4;
  v7 = *(v6 + 4);
  v8 = *a3;
  *(v6 + 4) = *a3;
  if (v8 >= v7)
  {
    v16 = (4 * v4) | 1;
    v17 = *(a1 + 12);
    if (v16 < v17)
    {
      v18 = 4 * v4;
      do
      {
        v19 = v18 + 5;
        if (v19 >= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        if (v19 <= v16)
        {
          break;
        }

        v21 = v4;
        v22 = *(v5 + 8 * v4 + 4);
        v23 = (v5 + 4 + 8 * v16);
        LODWORD(v4) = -1;
        v24 = v22;
        do
        {
          v26 = *v23;
          v23 += 2;
          v25 = v26;
          if (v26 < v24)
          {
            v24 = v25;
            LODWORD(v4) = v16;
          }

          ++v16;
        }

        while (v16 < v20);
        if (v4 >= v17)
        {
          break;
        }

        v27 = (v5 + 8 * v4);
        result = *v27;
        *v27 = *(v5 + 8 * v21);
        *(v27 + 1) = v22;
        *(v5 + 8 * v21) = result;
        v29 = *v27;
        v30 = *(v3 + 4 * v29);
        *(v3 + 4 * v29) = *(v3 + 4 * LODWORD(result));
        *(v3 + 4 * LODWORD(result)) = v30;
        v18 = 4 * v4;
        v16 = (4 * v4) | 1;
        v17 = *(a1 + 12);
      }

      while (v16 < v17);
    }
  }

  else if (v4)
  {
    do
    {
      v9 = v4 - 1;
      v10 = (v5 + 8 * ((v4 - 1) >> 2));
      v11 = (v5 + 8 * v4);
      v12 = v11[1];
      v13 = v10[1];
      if (v13 < v12)
      {
        break;
      }

      v14 = *v11;
      *v11 = *v10;
      v11[1] = v13;
      *v10 = v14;
      v10[1] = v12;
      v4 = *v11;
      v15 = *(v3 + 4 * v4);
      *(v3 + 4 * v4) = *(v3 + 4 * v14);
      *(v3 + 4 * v14) = v15;
      LODWORD(v4) = v9 >> 2;
    }

    while (v9 >= 4);
  }

  return result;
}

char **sub_10D8994(char **a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 3);
        if (v7)
        {
          *(v5 - 2) = v7;
          operator delete(v7);
        }

        v5 -= 48;
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = (a1 + 3);
  v9 = a1[3];
  if (v9)
  {
    v10 = a1[4];
    v11 = a1[3];
    if (v10 != v9)
    {
      do
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 3));
        }

        v10 -= 48;
      }

      while (v10 != v9);
      v11 = *v8;
    }

    a1[4] = v9;
    operator delete(v11);
    *v8 = 0;
    a1[4] = 0;
    a1[5] = 0;
  }

  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 3) = v12;
  return a1;
}

double sub_10D8AB0(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v226 = a2 - 224;
  v227 = a2 - 112;
  v225 = a2 - 336;
  v7 = a1;
  v231 = a2;
  while (1)
  {
    a1 = v7;
    v8 = a2 - v7;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v7) >> 4);
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v83 = *(a1 + 216);
          v84 = *(a2 - 8);
          if (v83 > *(a1 + 104))
          {
            if (v84 <= v83)
            {
              *&result = sub_10DA7AC(a1, a1 + 112).n128_u64[0];
              if (*(a2 - 8) <= *(a1 + 216))
              {
                return result;
              }

              v85 = (a1 + 112);
              goto LABEL_144;
            }

LABEL_143:
            v85 = a1;
LABEL_144:
            v86 = v227;
LABEL_145:

            *&result = sub_10DA7AC(v85, v86).n128_u64[0];
            return result;
          }

          if (v84 <= v83)
          {
            return result;
          }

          v81 = (a1 + 112);
          v82 = v227;
          break;
        case 4:

          return sub_10DA234(a1, a1 + 112, a1 + 224, v227);
        case 5:
          result = sub_10DA234(a1, a1 + 112, a1 + 224, a1 + 336);
          if (*(a2 - 8) <= *(a1 + 440))
          {
            return result;
          }

          *&result = sub_10DA7AC((a1 + 336), v227).n128_u64[0];
          if (*(a1 + 440) <= *(a1 + 328))
          {
            return result;
          }

          *&result = sub_10DA7AC((a1 + 224), a1 + 336).n128_u64[0];
          if (*(a1 + 328) <= *(a1 + 216))
          {
            return result;
          }

          v81 = (a1 + 112);
          v82 = a1 + 224;
          break;
        default:
          goto LABEL_9;
      }

      *&result = sub_10DA7AC(v81, v82).n128_u64[0];
      if (*(a1 + 216) <= *(a1 + 104))
      {
        return result;
      }

      v86 = a1 + 112;
      v85 = a1;
      goto LABEL_145;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      if (*(a2 - 8) <= *(a1 + 104))
      {
        return result;
      }

      goto LABEL_143;
    }

LABEL_9:
    if (v8 <= 2687)
    {
      if ((a4 & 1) == 0)
      {
        if (a1 != a2)
        {
          v200 = a1 + 112;
          if (a1 + 112 != a2)
          {
            do
            {
              v202 = v200;
              if (*(a1 + 216) > *(a1 + 104))
              {
                v203 = *v200;
                v204 = *(a1 + 128);
                *(v200 + 8) = 0;
                *(v200 + 16) = 0;
                *v200 = 0;
                v250 = v203;
                v257 = *(a1 + 136);
                v205 = *(a1 + 152);
                *(a1 + 144) = 0;
                *(a1 + 152) = 0;
                *(a1 + 136) = 0;
                *&v265[14] = *(a1 + 174);
                *v265 = *(a1 + 160);
                v272 = *(a1 + 192);
                v206 = *(a1 + 208);
                v207 = v200;
                v208 = *(a1 + 216);
                do
                {
                  v210 = a1;
                  v211 = *v207;
                  if (*v207)
                  {
                    v212 = (v207 + 8);
                    v213 = *(v207 + 8);
                    v214 = *v207;
                    if (v213 != v211)
                    {
                      do
                      {
                        v215 = *(v213 - 3);
                        if (v215)
                        {
                          *(v213 - 2) = v215;
                          operator delete(v215);
                        }

                        v213 -= 48;
                      }

                      while (v213 != v211);
                      v214 = *v207;
                    }

                    *v212 = v211;
                    operator delete(v214);
                    *v212 = 0;
                    *(v207 + 16) = 0;
                  }

                  *v207 = *v210;
                  *(v207 + 16) = *(v210 + 16);
                  *v210 = 0;
                  *(v210 + 8) = 0;
                  *(v210 + 16) = 0;
                  v216 = *(v207 + 24);
                  if (v216)
                  {
                    v217 = (v207 + 32);
                    v218 = *(v207 + 32);
                    v209 = *(v207 + 24);
                    if (v218 != v216)
                    {
                      do
                      {
                        if (*(v218 - 1) < 0)
                        {
                          operator delete(*(v218 - 24));
                        }

                        v218 -= 48;
                      }

                      while (v218 != v216);
                      v209 = *(v207 + 24);
                    }

                    *v217 = v216;
                    operator delete(v209);
                    *v217 = 0;
                    *(v207 + 40) = 0;
                  }

                  *(v207 + 24) = *(v210 + 24);
                  *(v207 + 40) = *(v210 + 40);
                  *(v210 + 32) = 0;
                  *(v210 + 40) = 0;
                  *(v210 + 24) = 0;
                  *(v207 + 62) = *(v210 + 62);
                  *(v207 + 48) = *(v210 + 48);
                  *(v207 + 80) = *(v210 + 80);
                  *(v207 + 96) = *(v210 + 96);
                  *(v207 + 104) = *(v210 + 104);
                  a1 = v210 - 112;
                  v207 = v210;
                }

                while (v208 > *(v210 - 8));
                v219 = *v210;
                if (*v210)
                {
                  v220 = *(v210 + 8);
                  v221 = *v210;
                  if (v220 != v219)
                  {
                    do
                    {
                      v222 = *(v220 - 24);
                      if (v222)
                      {
                        *(v220 - 16) = v222;
                        operator delete(v222);
                      }

                      v220 -= 48;
                    }

                    while (v220 != v219);
                    v221 = *v210;
                  }

                  *(v210 + 8) = v219;
                  operator delete(v221);
                }

                *v210 = v250;
                *(v210 + 16) = v204;
                v223 = *(v210 + 24);
                if (v223)
                {
                  v224 = *(v210 + 32);
                  v201 = *(v210 + 24);
                  if (v224 != v223)
                  {
                    do
                    {
                      if (*(v224 - 1) < 0)
                      {
                        operator delete(*(v224 - 24));
                      }

                      v224 -= 48;
                    }

                    while (v224 != v223);
                    v201 = *(v210 + 24);
                  }

                  *(v210 + 32) = v223;
                  operator delete(v201);
                }

                *(v210 + 24) = v257;
                *(v210 + 40) = v205;
                *(v210 + 48) = *v265;
                *(v210 + 62) = *&v265[14];
                result = *&v272;
                *(v210 + 80) = v272;
                *(v210 + 96) = v206;
                *(v210 + 104) = v208;
                a2 = v231;
              }

              v200 = v202 + 112;
              a1 = v202;
            }

            while (v202 + 112 != a2);
          }
        }

        return result;
      }

      if (a1 == a2)
      {
        return result;
      }

      v87 = a1 + 112;
      if (a1 + 112 == a2)
      {
        return result;
      }

      v88 = a1;
      while (1)
      {
        v90 = v87;
        if (*(v88 + 216) > *(v88 + 104))
        {
          v91 = *v87;
          v92 = *(v88 + 128);
          *(v87 + 8) = 0;
          *(v87 + 16) = 0;
          *v87 = 0;
          v253 = *(v88 + 136);
          *&v262[14] = *(v88 + 174);
          v93 = *(v88 + 160);
          v240 = v91;
          v246 = *(v88 + 144);
          *(v88 + 144) = 0;
          *(v88 + 152) = 0;
          *(v88 + 136) = 0;
          *v262 = v93;
          v270 = *(v88 + 192);
          v94 = *(v88 + 208);
          v95 = v87;
          v96 = *(v88 + 216);
          while (1)
          {
            v97 = v88;
            v98 = *v95;
            if (*v95)
            {
              v100 = (v95 + 8);
              v99 = *(v95 + 8);
              v101 = *v95;
              if (v99 != v98)
              {
                do
                {
                  v102 = *(v99 - 3);
                  if (v102)
                  {
                    *(v99 - 2) = v102;
                    operator delete(v102);
                  }

                  v99 -= 48;
                }

                while (v99 != v98);
                v101 = *v95;
              }

              *v100 = v98;
              operator delete(v101);
              *v100 = 0;
              *(v95 + 16) = 0;
            }

            *v95 = *v97;
            *(v95 + 16) = *(v97 + 16);
            *v97 = 0;
            *(v97 + 8) = 0;
            *(v97 + 16) = 0;
            v103 = *(v95 + 24);
            if (v103)
            {
              v105 = (v95 + 32);
              v104 = *(v95 + 32);
              v106 = *(v95 + 24);
              if (v104 != v103)
              {
                do
                {
                  if (*(v104 - 1) < 0)
                  {
                    operator delete(*(v104 - 24));
                  }

                  v104 -= 48;
                }

                while (v104 != v103);
                v106 = *(v95 + 24);
              }

              *v105 = v103;
              operator delete(v106);
              *v105 = 0;
              *(v95 + 40) = 0;
            }

            v107 = (v97 + 24);
            *(v95 + 24) = *(v97 + 24);
            *(v95 + 40) = *(v97 + 40);
            *(v97 + 24) = 0;
            *(v97 + 32) = 0;
            *(v97 + 40) = 0;
            *(v95 + 62) = *(v97 + 62);
            *(v95 + 48) = *(v97 + 48);
            *(v95 + 80) = *(v97 + 80);
            *(v95 + 104) = *(v97 + 104);
            *(v95 + 96) = *(v97 + 96);
            if (v97 == a1)
            {
              break;
            }

            v88 = v97 - 112;
            v95 = v97;
            if (v96 <= *(v97 - 8))
            {
              v108 = v97;
              v109 = *v97;
              if (!*v97)
              {
                goto LABEL_189;
              }

              goto LABEL_182;
            }
          }

          v108 = a1;
          v109 = *a1;
          if (!*a1)
          {
            goto LABEL_189;
          }

LABEL_182:
          v110 = *(v108 + 8);
          v111 = v109;
          if (v110 != v109)
          {
            do
            {
              v112 = *(v110 - 3);
              if (v112)
              {
                *(v110 - 2) = v112;
                operator delete(v112);
              }

              v110 -= 48;
            }

            while (v110 != v109);
            v111 = *v108;
          }

          *(v108 + 8) = v109;
          operator delete(v111);
LABEL_189:
          *v108 = v240;
          *(v108 + 16) = v92;
          v113 = *v107;
          if (*v107)
          {
            v114 = *(v108 + 32);
            v89 = *v107;
            if (v114 != v113)
            {
              do
              {
                if (*(v114 - 1) < 0)
                {
                  operator delete(*(v114 - 3));
                }

                v114 -= 6;
              }

              while (v114 != v113);
              v89 = *v107;
            }

            *(v108 + 32) = v113;
            operator delete(v89);
            *(v97 + 32) = 0;
            *(v97 + 40) = 0;
          }

          *(v97 + 24) = v253;
          *(v108 + 32) = v246;
          *(v97 + 48) = *v262;
          *(v97 + 62) = *&v262[14];
          result = *&v270;
          *(v97 + 80) = v270;
          *(v97 + 96) = v94;
          *(v97 + 104) = v96;
          a2 = v231;
        }

        v87 = v90 + 112;
        v88 = v90;
        if (v90 + 112 == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v11 = v9 >> 1;
    v12 = a1 + 112 * (v9 >> 1);
    v13 = *(a2 - 8);
    if (v8 >= 0x3801)
    {
      v14 = *(v12 + 104);
      if (v14 <= *(a1 + 104))
      {
        if (v13 <= v14 || (sub_10DA7AC(v12, v227), *(v12 + 104) <= *(a1 + 104)))
        {
LABEL_26:
          v20 = a1 + 112 * v11;
          v21 = v20 - 112;
          v22 = *(v20 - 8);
          v23 = *(a2 - 120);
          if (v22 <= *(a1 + 216))
          {
            if (v23 <= v22 || (sub_10DA7AC(v21, v226), *(v21 + 104) <= *(a1 + 216)))
            {
LABEL_38:
              v26 = a1 + 112 * v11;
              v27 = *(v26 + 216);
              v28 = *(a2 - 232);
              if (v27 <= *(a1 + 328))
              {
                if (v28 <= v27 || (sub_10DA7AC((v26 + 112), v225), *(v26 + 216) <= *(a1 + 328)))
                {
LABEL_47:
                  v31 = *(v12 + 104);
                  v32 = *(v26 + 216);
                  if (v31 <= *(v21 + 104))
                  {
                    if (v32 <= v31)
                    {
                      goto LABEL_56;
                    }

                    sub_10DA7AC(v12, v26 + 112);
                    if (*(v12 + 104) <= *(v21 + 104))
                    {
                      goto LABEL_56;
                    }

                    v34 = v21;
                    v33 = v12;
                  }

                  else if (v32 <= v31)
                  {
                    sub_10DA7AC(v21, v12);
                    if (*(v26 + 216) <= *(v12 + 104))
                    {
LABEL_56:
                      v18 = a1;
                      v19 = v12;
                      goto LABEL_57;
                    }

                    v33 = v26 + 112;
                    v34 = v12;
                  }

                  else
                  {
                    v33 = v26 + 112;
                    v34 = v21;
                  }

                  sub_10DA7AC(v34, v33);
                  goto LABEL_56;
                }

                v29 = (a1 + 224);
                v30 = v26 + 112;
              }

              else
              {
                v29 = (a1 + 224);
                if (v28 <= v27)
                {
                  sub_10DA7AC(v29, v26 + 112);
                  if (*(a2 - 232) <= *(v26 + 216))
                  {
                    goto LABEL_47;
                  }

                  v29 = (v26 + 112);
                }

                v30 = v225;
              }

              sub_10DA7AC(v29, v30);
              goto LABEL_47;
            }

            v24 = (a1 + 112);
            v25 = v21;
          }

          else
          {
            v24 = (a1 + 112);
            if (v23 <= v22)
            {
              sub_10DA7AC(v24, v21);
              if (*(a2 - 120) <= *(v21 + 104))
              {
                goto LABEL_38;
              }

              v24 = v21;
            }

            v25 = v226;
          }

          sub_10DA7AC(v24, v25);
          goto LABEL_38;
        }

        v15 = a1;
        v16 = v12;
      }

      else
      {
        v15 = a1;
        if (v13 <= v14)
        {
          sub_10DA7AC(a1, v12);
          if (*(a2 - 8) <= *(v12 + 104))
          {
            goto LABEL_26;
          }

          v15 = v12;
        }

        v16 = v227;
      }

      sub_10DA7AC(v15, v16);
      goto LABEL_26;
    }

    v17 = *(a1 + 104);
    if (v17 > *(v12 + 104))
    {
      v18 = v12;
      if (v13 <= v17)
      {
        sub_10DA7AC(v12, a1);
        if (*(a2 - 8) <= *(a1 + 104))
        {
          goto LABEL_58;
        }

        v18 = a1;
      }

      v19 = v227;
      goto LABEL_57;
    }

    if (v13 > v17)
    {
      sub_10DA7AC(a1, v227);
      if (*(a1 + 104) > *(v12 + 104))
      {
        v18 = v12;
        v19 = a1;
LABEL_57:
        sub_10DA7AC(v18, v19);
      }
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v35 = *(a1 + 104);
LABEL_61:
      v251 = a3;
      v36 = 0;
      v234 = *a1;
      v37 = *(a1 + 16);
      v244 = *(a1 + 24);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      v238 = *(a1 + 40);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *v260 = *(a1 + 48);
      *&v260[14] = *(a1 + 62);
      v268 = *(a1 + 80);
      v38 = *(a1 + 96);
      do
      {
        v39 = *(a1 + v36 + 216);
        v36 += 112;
      }

      while (v39 > v35);
      v40 = a1 + v36;
      v41 = a2;
      if (v36 == 112)
      {
        v44 = v231;
        while (v40 < v44)
        {
          v42 = v44 - 112;
          v45 = *(v44 - 8);
          v44 -= 112;
          if (v45 > v35)
          {
            goto LABEL_69;
          }
        }

        v42 = v44;
        v7 = v40;
      }

      else
      {
        do
        {
          v42 = v41 - 112;
          v43 = *(v41 - 8);
          v41 -= 112;
        }

        while (v43 <= v35);
LABEL_69:
        v7 = v40;
        if (v40 < v42)
        {
          v46 = v42;
          do
          {
            sub_10DA7AC(v7, v46);
            do
            {
              v47 = *(v7 + 216);
              v7 += 112;
            }

            while (v47 > v35);
            do
            {
              v48 = *(v46 - 8);
              v46 -= 112;
            }

            while (v48 <= v35);
          }

          while (v7 < v46);
        }
      }

      v49 = (v7 - 112);
      if (v7 - 112 != a1)
      {
        sub_10D8994(a1, v7 - 112);
        *(a1 + 80) = *(v7 - 32);
        v50 = *(v7 - 16);
        *(a1 + 104) = *(v7 - 8);
        *(a1 + 96) = v50;
      }

      v51 = *v49;
      if (*v49)
      {
        v52 = *(v7 - 104);
        v53 = *v49;
        if (v52 != v51)
        {
          do
          {
            v54 = *(v52 - 3);
            if (v54)
            {
              *(v52 - 2) = v54;
              operator delete(v54);
            }

            v52 -= 48;
          }

          while (v52 != v51);
          v53 = *v49;
        }

        *(v7 - 104) = v51;
        operator delete(v53);
      }

      *(v7 - 112) = v234;
      *(v7 - 96) = v37;
      v55 = *(v7 - 88);
      if (v55)
      {
        v56 = *(v7 - 80);
        v57 = *(v7 - 88);
        if (v56 != v55)
        {
          do
          {
            if (*(v56 - 1) < 0)
            {
              operator delete(*(v56 - 24));
            }

            v56 -= 48;
          }

          while (v56 != v55);
          v57 = *(v7 - 88);
        }

        *(v7 - 80) = v55;
        operator delete(v57);
      }

      *(v7 - 88) = v244;
      *(v7 - 72) = v238;
      *(v7 - 64) = *v260;
      *(v7 - 50) = *&v260[14];
      *(v7 - 32) = v268;
      *(v7 - 16) = v38;
      *(v7 - 8) = v35;
      v58 = v40 >= v42;
      a2 = v231;
      a3 = v251;
      if (v58)
      {
        v59 = sub_10DA34C(a1, v7 - 112);
        if (sub_10DA34C(v7, v231))
        {
          a2 = v7 - 112;
          if (v59)
          {
            return result;
          }

          goto LABEL_1;
        }

        if (!v59)
        {
          goto LABEL_97;
        }
      }

      else
      {
LABEL_97:
        sub_10D8AB0(a1, v7 - 112, v251, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v35 = *(a1 + 104);
      if (*(a1 - 8) > v35)
      {
        goto LABEL_61;
      }

      v239 = *a1;
      v61 = *(a1 + 16);
      v252 = *(a1 + 24);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      v245 = *(a1 + 40);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *v261 = *(a1 + 48);
      *&v261[14] = *(a1 + 62);
      v269 = *(a1 + 80);
      v62 = *(a1 + 96);
      v63 = *(a1 + 104);
      if (v63 <= *(a2 - 8))
      {
        v66 = a1 + 112;
        do
        {
          v7 = v66;
          if (v66 >= a2)
          {
            break;
          }

          v67 = *(v66 + 104);
          v66 += 112;
        }

        while (v63 <= v67);
      }

      else
      {
        v64 = a1;
        do
        {
          v7 = v64 + 112;
          v65 = *(v64 + 216);
          v64 += 112;
        }

        while (v63 <= v65);
      }

      if (v7 < a2)
      {
        v68 = v231;
        do
        {
          a2 = v68 - 112;
          v69 = *(v68 - 8);
          v68 -= 112;
        }

        while (v63 > v69);
      }

      while (v7 < a2)
      {
        sub_10DA7AC(v7, a2);
        do
        {
          v70 = *(v7 + 216);
          v7 += 112;
        }

        while (v63 <= v70);
        do
        {
          v71 = *(a2 - 8);
          a2 -= 112;
        }

        while (v63 > v71);
      }

      v72 = (v7 - 112);
      if (v7 - 112 != a1)
      {
        sub_10D8994(a1, v7 - 112);
        *(a1 + 80) = *(v7 - 32);
        v73 = *(v7 - 16);
        *(a1 + 104) = *(v7 - 8);
        *(a1 + 96) = v73;
      }

      v74 = *v72;
      if (*v72)
      {
        v75 = *(v7 - 104);
        v76 = *v72;
        if (v75 != v74)
        {
          do
          {
            v77 = *(v75 - 3);
            if (v77)
            {
              *(v75 - 2) = v77;
              operator delete(v77);
            }

            v75 -= 48;
          }

          while (v75 != v74);
          v76 = *v72;
        }

        *(v7 - 104) = v74;
        operator delete(v76);
      }

      *(v7 - 112) = v239;
      *(v7 - 96) = v61;
      v78 = *(v7 - 88);
      a2 = v231;
      if (v78)
      {
        v79 = *(v7 - 80);
        v80 = *(v7 - 88);
        if (v79 != v78)
        {
          do
          {
            if (*(v79 - 1) < 0)
            {
              operator delete(*(v79 - 24));
            }

            v79 -= 48;
          }

          while (v79 != v78);
          v80 = *(v7 - 88);
        }

        *(v7 - 80) = v78;
        operator delete(v80);
      }

      a4 = 0;
      *(v7 - 88) = v252;
      *(v7 - 72) = v245;
      *(v7 - 64) = *v261;
      *(v7 - 50) = *&v261[14];
      result = *&v269;
      *(v7 - 32) = v269;
      *(v7 - 16) = v62;
      *(v7 - 8) = v63;
    }
  }

  if (a1 == a2)
  {
    return result;
  }

  v115 = v10 >> 1;
  v116 = v10 >> 1;
  do
  {
    v118 = v116;
    if (v115 >= v116)
    {
      v119 = (2 * v116) | 1;
      v120 = a1 + 112 * v119;
      if (2 * v118 + 2 < v9)
      {
        v121 = *(v120 + 104);
        v122 = *(v120 + 216);
        v123 = v121 <= v122;
        v124 = v121 <= v122 ? 0 : 112;
        v120 += v124;
        if (!v123)
        {
          v119 = 2 * v118 + 2;
        }
      }

      v125 = a1 + 112 * v118;
      v126 = *(v125 + 104);
      if (*(v120 + 104) <= v126)
      {
        v235 = *v125;
        v229 = *(v125 + 16);
        *v125 = 0;
        *(v125 + 8) = 0;
        v254 = *(v125 + 24);
        *(v125 + 16) = 0;
        *(v125 + 24) = 0;
        v247 = *(v125 + 40);
        *(v125 + 32) = 0;
        *(v125 + 40) = 0;
        *&v263[14] = *(v125 + 62);
        *v263 = *(v125 + 48);
        v271 = *(v125 + 80);
        v241 = *(v125 + 96);
        do
        {
          v127 = v120;
          sub_10D8994(v125, v120);
          *(v125 + 80) = *(v127 + 80);
          v128 = *(v127 + 96);
          *(v125 + 104) = *(v127 + 104);
          *(v125 + 96) = v128;
          if (v115 < v119)
          {
            break;
          }

          v129 = (2 * v119) | 1;
          v120 = a1 + 112 * v129;
          if (2 * v119 + 2 < v9)
          {
            v130 = *(v120 + 104);
            v131 = *(v120 + 216);
            v132 = v130 <= v131;
            v133 = v130 <= v131 ? 0 : 112;
            v120 += v133;
            if (!v132)
            {
              v129 = 2 * v119 + 2;
            }
          }

          v125 = v127;
          v119 = v129;
        }

        while (*(v120 + 104) <= v126);
        v134 = *v127;
        if (*v127)
        {
          v135 = *(v127 + 8);
          v136 = *v127;
          if (v135 != v134)
          {
            do
            {
              v137 = *(v135 - 3);
              if (v137)
              {
                *(v135 - 2) = v137;
                operator delete(v137);
              }

              v135 -= 48;
            }

            while (v135 != v134);
            v136 = *v127;
          }

          *(v127 + 8) = v134;
          operator delete(v136);
        }

        *v127 = v235;
        *(v127 + 16) = v229;
        v138 = *(v127 + 24);
        if (v138)
        {
          v139 = *(v127 + 32);
          v117 = *(v127 + 24);
          if (v139 != v138)
          {
            do
            {
              if (*(v139 - 1) < 0)
              {
                operator delete(*(v139 - 24));
              }

              v139 -= 48;
            }

            while (v139 != v138);
            v117 = *(v127 + 24);
          }

          *(v127 + 32) = v138;
          operator delete(v117);
        }

        *(v127 + 24) = v254;
        *(v127 + 40) = v247;
        *(v127 + 48) = *v263;
        *(v127 + 62) = *&v263[14];
        *(v127 + 80) = v271;
        *(v127 + 96) = v241;
        *(v127 + 104) = v126;
      }
    }

    v116 = v118 - 1;
  }

  while (v118);
  v140 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 4);
  v141 = v231;
  while (2)
  {
    v143 = 0;
    v144 = v141;
    v232 = *(a1 + 8);
    v236 = *a1;
    *a1 = 0;
    *(a1 + 8) = 0;
    v230 = *(a1 + 16);
    v255 = *(a1 + 24);
    v248 = *(a1 + 32);
    v242 = *(a1 + 40);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *&v267[14] = *(a1 + 62);
    *v267 = *(a1 + 48);
    v259 = *(a1 + 104);
    v258 = *(a1 + 96);
    v145 = a1;
    v266 = *(a1 + 80);
    while (2)
    {
      v151 = v145 + 112 * v143;
      v152 = v151 + 112;
      if (2 * v143 + 2 >= v140)
      {
        v143 = (2 * v143) | 1;
        v156 = *v145;
        if (!*v145)
        {
          goto LABEL_256;
        }
      }

      else
      {
        v153 = *(v151 + 216);
        v154 = *(v151 + 328);
        v155 = v151 + 224;
        if (v153 <= v154)
        {
          v143 = (2 * v143) | 1;
        }

        else
        {
          v152 = v155;
          v143 = 2 * v143 + 2;
        }

        v156 = *v145;
        if (!*v145)
        {
          goto LABEL_256;
        }
      }

      v157 = *(v145 + 8);
      v158 = v156;
      if (v157 != v156)
      {
        do
        {
          v159 = *(v157 - 3);
          if (v159)
          {
            *(v157 - 2) = v159;
            operator delete(v159);
          }

          v157 -= 48;
        }

        while (v157 != v156);
        v158 = *v145;
      }

      *(v145 + 8) = v156;
      operator delete(v158);
      *v145 = 0;
      *(v145 + 8) = 0;
      *(v145 + 16) = 0;
LABEL_256:
      *v145 = *v152;
      *(v145 + 16) = *(v152 + 16);
      *v152 = 0;
      *(v152 + 8) = 0;
      *(v152 + 16) = 0;
      v160 = (v145 + 24);
      v161 = *(v145 + 24);
      if (v161)
      {
        v162 = *(v145 + 32);
        v146 = *(v145 + 24);
        if (v162 != v161)
        {
          do
          {
            if (*(v162 - 1) < 0)
            {
              operator delete(*(v162 - 24));
            }

            v162 -= 48;
          }

          while (v162 != v161);
          v146 = *v160;
        }

        *(v145 + 32) = v161;
        operator delete(v146);
        *v160 = 0;
        *(v145 + 32) = 0;
        *(v145 + 40) = 0;
      }

      v147 = (v152 + 24);
      *(v145 + 24) = *(v152 + 24);
      *(v145 + 40) = *(v152 + 40);
      *(v152 + 24) = 0;
      *(v152 + 32) = 0;
      *(v152 + 40) = 0;
      v148 = *(v152 + 48);
      *(v145 + 62) = *(v152 + 62);
      *(v145 + 48) = v148;
      *(v145 + 80) = *(v152 + 80);
      v150 = (v152 + 96);
      v149 = *(v152 + 96);
      *(v145 + 104) = *(v152 + 104);
      *(v145 + 96) = v149;
      v145 = v152;
      if (v143 <= ((v140 - 2) >> 1))
      {
        continue;
      }

      break;
    }

    v141 = v144 - 14;
    if (v152 == v144 - 14)
    {
      v168 = *v152;
      if (*v152)
      {
        v169 = *(v152 + 8);
        v170 = *v152;
        if (v169 != v168)
        {
          do
          {
            v171 = *(v169 - 24);
            if (v171)
            {
              *(v169 - 16) = v171;
              operator delete(v171);
            }

            v169 -= 48;
          }

          while (v169 != v168);
          v170 = *v152;
        }

        *(v152 + 8) = v168;
        operator delete(v170);
      }

      *v152 = v236;
      *(v152 + 8) = v232;
      *(v152 + 16) = v230;
      v195 = *(v152 + 24);
      if (v195)
      {
        v196 = *(v152 + 32);
        v142 = *(v152 + 24);
        if (v196 != v195)
        {
          do
          {
            if (*(v196 - 1) < 0)
            {
              operator delete(*(v196 - 24));
            }

            v196 -= 48;
          }

          while (v196 != v195);
          v142 = *v147;
        }

        *(v152 + 32) = v195;
        operator delete(v142);
      }

      *(v152 + 24) = v255;
      *(v152 + 32) = v248;
      *(v152 + 40) = v242;
      *(v152 + 48) = *v267;
      *(v152 + 62) = *&v267[14];
      result = *&v266;
      *(v152 + 80) = v266;
      *v150 = v258;
      *(v152 + 104) = v259;
    }

    else
    {
      sub_10D8994(v152, (v144 - 14));
      *(v152 + 80) = *(v144 - 2);
      v163 = *(v144 - 2);
      *(v152 + 104) = *(v144 - 2);
      *v150 = v163;
      v164 = *(v144 - 14);
      if (v164)
      {
        v165 = *(v144 - 13);
        v166 = *(v144 - 14);
        if (v165 != v164)
        {
          do
          {
            v167 = *(v165 - 3);
            if (v167)
            {
              *(v165 - 2) = v167;
              operator delete(v167);
            }

            v165 -= 48;
          }

          while (v165 != v164);
          v166 = *v141;
        }

        *(v144 - 13) = v164;
        operator delete(v166);
      }

      *(v144 - 14) = v236;
      *(v144 - 13) = v232;
      *(v144 - 12) = v230;
      v172 = *(v144 - 11);
      v173 = v144 - 14;
      if (v172)
      {
        v174 = *(v144 - 10);
        v175 = *(v144 - 11);
        if (v174 != v172)
        {
          do
          {
            if (*(v174 - 1) < 0)
            {
              operator delete(*(v174 - 3));
            }

            v174 -= 6;
          }

          while (v174 != v172);
          v175 = *(v144 - 11);
        }

        *(v144 - 10) = v172;
        operator delete(v175);
        v141 = v144 - 14;
      }

      *(v144 - 11) = v255;
      *(v144 - 10) = v248;
      *(v144 - 9) = v242;
      *(v144 - 4) = *v267;
      *(v144 - 50) = *&v267[14];
      result = *&v266;
      *(v144 - 2) = v266;
      *(v144 - 2) = v258;
      *(v144 - 2) = v259;
      v176 = v152 + 112 - a1;
      if (v176 >= 113)
      {
        v177 = (0x6DB6DB6DB6DB6DB7 * (v176 >> 4) - 2) >> 1;
        v178 = a1 + 112 * v177;
        v179 = *(v152 + 104);
        if (*(v178 + 104) > v179)
        {
          v237 = *v152;
          v233 = *(v152 + 16);
          *(v152 + 8) = 0;
          *(v152 + 16) = 0;
          *v152 = 0;
          v256 = *(v152 + 24);
          v249 = *(v152 + 40);
          *(v152 + 32) = 0;
          *(v152 + 40) = 0;
          *v147 = 0;
          *&v264[14] = *(v152 + 62);
          *v264 = *(v152 + 48);
          v273 = *(v152 + 80);
          v243 = *(v152 + 96);
          do
          {
            v180 = v178;
            v181 = *v152;
            if (*v152)
            {
              v182 = *(v152 + 8);
              v183 = *v152;
              if (v182 != v181)
              {
                do
                {
                  v184 = *(v182 - 3);
                  if (v184)
                  {
                    *(v182 - 2) = v184;
                    operator delete(v184);
                  }

                  v182 -= 48;
                }

                while (v182 != v181);
                v183 = *v152;
              }

              *(v152 + 8) = v181;
              operator delete(v183);
              *v152 = 0;
              *(v152 + 8) = 0;
              *(v152 + 16) = 0;
            }

            *v152 = *v180;
            *(v152 + 16) = *(v180 + 16);
            *v180 = 0;
            *(v180 + 8) = 0;
            *(v180 + 16) = 0;
            v185 = (v152 + 24);
            v186 = *(v152 + 24);
            if (v186)
            {
              v187 = *(v152 + 32);
              v188 = *(v152 + 24);
              if (v187 != v186)
              {
                do
                {
                  if (*(v187 - 1) < 0)
                  {
                    operator delete(*(v187 - 24));
                  }

                  v187 -= 48;
                }

                while (v187 != v186);
                v188 = *v185;
              }

              *(v152 + 32) = v186;
              operator delete(v188);
              *v185 = 0;
              *(v152 + 32) = 0;
              *(v152 + 40) = 0;
              v141 = v173;
            }

            *(v152 + 24) = *(v180 + 24);
            *(v152 + 40) = *(v180 + 40);
            *(v180 + 24) = 0;
            *(v180 + 32) = 0;
            *(v180 + 40) = 0;
            v189 = *(v180 + 48);
            *(v152 + 62) = *(v180 + 62);
            *(v152 + 48) = v189;
            *(v152 + 80) = *(v180 + 80);
            v190 = *(v180 + 96);
            *(v152 + 104) = *(v180 + 104);
            *(v152 + 96) = v190;
            if (!v177)
            {
              break;
            }

            v177 = (v177 - 1) >> 1;
            v178 = a1 + 112 * v177;
            v152 = v180;
          }

          while (*(v178 + 104) > v179);
          v191 = *v180;
          if (*v180)
          {
            v192 = *(v180 + 8);
            v193 = *v180;
            if (v192 != v191)
            {
              do
              {
                v194 = *(v192 - 24);
                if (v194)
                {
                  *(v192 - 16) = v194;
                  operator delete(v194);
                }

                v192 -= 48;
              }

              while (v192 != v191);
              v193 = *v180;
            }

            *(v180 + 8) = v191;
            operator delete(v193);
          }

          *v180 = v237;
          *(v180 + 16) = v233;
          v197 = *(v180 + 24);
          if (v197)
          {
            v198 = *(v180 + 32);
            v199 = *(v180 + 24);
            if (v198 != v197)
            {
              do
              {
                if (*(v198 - 1) < 0)
                {
                  operator delete(*(v198 - 24));
                }

                v198 -= 48;
              }

              while (v198 != v197);
              v199 = *(v180 + 24);
            }

            *(v180 + 32) = v197;
            operator delete(v199);
          }

          *(v180 + 24) = v256;
          *(v180 + 40) = v249;
          *(v180 + 48) = *v264;
          *(v180 + 62) = *&v264[14];
          result = *&v273;
          *(v180 + 80) = v273;
          *(v180 + 96) = v243;
          *(v180 + 104) = v179;
        }
      }
    }

    v123 = v140-- <= 2;
    if (!v123)
    {
      continue;
    }

    return result;
  }
}

double sub_10DA234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 104);
  v9 = *(a3 + 104);
  if (v8 <= *(a1 + 104))
  {
    if (v9 > v8)
    {
      *&result = sub_10DA7AC(a2, a3).n128_u64[0];
      if (*(a2 + 104) > *(v7 + 104))
      {
        a1 = v7;
        v11 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 > v8)
    {
LABEL_5:
      v11 = a3;
LABEL_9:
      *&result = sub_10DA7AC(a1, v11).n128_u64[0];
      goto LABEL_10;
    }

    *&result = sub_10DA7AC(a1, a2).n128_u64[0];
    if (*(a3 + 104) > *(a2 + 104))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 104) > *(a3 + 104))
  {
    *&result = sub_10DA7AC(a3, a4).n128_u64[0];
    if (*(a3 + 104) > *(a2 + 104))
    {
      *&result = sub_10DA7AC(a2, a3).n128_u64[0];
      if (*(a2 + 104) > *(v7 + 104))
      {

        *&result = sub_10DA7AC(v7, a2).n128_u64[0];
      }
    }
  }

  return result;
}

BOOL sub_10DA34C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 112;
        v6 = *(a1 + 216);
        v7 = *(v2 - 8);
        if (v6 > *(a1 + 104))
        {
          if (v7 > v6)
          {
            goto LABEL_25;
          }

          sub_10DA7AC(a1, a1 + 112);
          if (*(v2 - 8) > *(v3 + 216))
          {
            v8 = (v3 + 112);
            v5 = v2 - 112;
LABEL_26:
            sub_10DA7AC(v8, v5);
            return 1;
          }

          return 1;
        }

        if (v7 <= v6)
        {
          return 1;
        }

        sub_10DA7AC((a1 + 112), v5);
        if (*(v3 + 216) <= *(v3 + 104))
        {
          return 1;
        }

        break;
      case 4:
        sub_10DA234(a1, a1 + 112, a1 + 224, a2 - 112);
        return 1;
      case 5:
        sub_10DA234(a1, a1 + 112, a1 + 224, a1 + 336);
        if (*(v2 - 8) <= *(v3 + 440))
        {
          return 1;
        }

        sub_10DA7AC((v3 + 336), v2 - 112);
        if (*(v3 + 440) <= *(v3 + 328))
        {
          return 1;
        }

        sub_10DA7AC((v3 + 224), v3 + 336);
        if (*(v3 + 328) <= *(v3 + 216))
        {
          return 1;
        }

        sub_10DA7AC((v3 + 112), v3 + 224);
        if (*(v3 + 216) <= *(v3 + 104))
        {
          return 1;
        }

        break;
      default:
        goto LABEL_18;
    }

    v5 = v3 + 112;
    goto LABEL_25;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 8) > *(a1 + 104))
    {
      v5 = a2 - 112;
LABEL_25:
      v8 = v3;
      goto LABEL_26;
    }

    return 1;
  }

LABEL_18:
  v9 = a1 + 224;
  v10 = *(a1 + 216);
  v11 = *(a1 + 328);
  if (v10 > *(a1 + 104))
  {
    if (v11 <= v10)
    {
      sub_10DA7AC(a1, a1 + 112);
      if (*(v3 + 328) <= *(v3 + 216))
      {
        goto LABEL_34;
      }

      a1 = v3 + 112;
    }

    v12 = v3 + 224;
    goto LABEL_33;
  }

  if (v11 > v10)
  {
    sub_10DA7AC((a1 + 112), a1 + 224);
    if (*(v3 + 216) > *(v3 + 104))
    {
      v12 = v3 + 112;
      a1 = v3;
LABEL_33:
      sub_10DA7AC(a1, v12);
    }
  }

LABEL_34:
  v13 = v3 + 336;
  if (v3 + 336 == v2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  v32 = v2;
  while (1)
  {
    v17 = *(v13 + 104);
    if (v17 > *(v9 + 104))
    {
      v34 = *v13;
      v18 = *(v13 + 16);
      *v13 = 0;
      *(v13 + 8) = 0;
      v19 = *(v13 + 24);
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      v20 = *(v13 + 40);
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      v37 = v19;
      *v38 = *(v13 + 48);
      *&v38[14] = *(v13 + 62);
      v39 = *(v13 + 80);
      v21 = v14;
      v35 = *(v13 + 96);
      v36 = v20;
      while (1)
      {
        v22 = v21;
        v23 = v3 + v21;
        sub_10D8994((v3 + v21 + 336), v3 + v21 + 224);
        *(v23 + 416) = *(v23 + 304);
        *(v23 + 432) = *(v23 + 320);
        *(v23 + 440) = *(v23 + 328);
        if (v22 == -224)
        {
          break;
        }

        v21 = v22 - 112;
        if (v17 <= *(v23 + 216))
        {
          v24 = v3 + v21 + 336;
          v25 = *v24;
          if (!*v24)
          {
            goto LABEL_54;
          }

          goto LABEL_47;
        }
      }

      v24 = v3;
      v25 = *v3;
      if (!*v3)
      {
        goto LABEL_54;
      }

LABEL_47:
      v33 = v18;
      v26 = *(v24 + 8);
      v27 = v25;
      if (v26 != v25)
      {
        do
        {
          v28 = *(v26 - 3);
          if (v28)
          {
            *(v26 - 2) = v28;
            operator delete(v28);
          }

          v26 -= 48;
        }

        while (v26 != v25);
        v27 = *v24;
      }

      *(v24 + 8) = v25;
      operator delete(v27);
      v18 = v33;
LABEL_54:
      *v24 = v34;
      *(v24 + 16) = v18;
      v29 = *(v24 + 24);
      if (v29)
      {
        v30 = *(v24 + 32);
        v16 = *(v24 + 24);
        if (v30 != v29)
        {
          do
          {
            if (*(v30 - 1) < 0)
            {
              operator delete(*(v30 - 24));
            }

            v30 -= 48;
          }

          while (v30 != v29);
          v16 = *(v24 + 24);
        }

        *(v24 + 32) = v29;
        operator delete(v16);
      }

      *(v24 + 24) = v37;
      *(v24 + 40) = v36;
      *(v24 + 48) = *v38;
      *(v24 + 62) = *&v38[14];
      *(v23 + 304) = v39;
      *(v23 + 320) = v35;
      *(v3 + v22 + 328) = v17;
      ++v15;
      v2 = v32;
      if (v15 == 8)
      {
        return v13 + 112 == v32;
      }
    }

    v9 = v13;
    v14 += 112;
    v13 += 112;
    if (v13 == v2)
    {
      return 1;
    }
  }
}

__n128 sub_10DA7AC(__int128 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  *a1 = 0;
  *(a1 + 1) = 0;
  v16 = v4;
  v17 = *(a1 + 24);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v6 = *(a1 + 5);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *v20 = a1[3];
  *&v20[14] = *(a1 + 62);
  v21 = a1[5];
  v19 = *(a1 + 26);
  v18 = *(a1 + 12);
  sub_10D8994(a1, a2);
  a1[5] = *(a2 + 80);
  v7 = *(a2 + 96);
  *(a1 + 26) = *(a2 + 104);
  *(a1 + 12) = v7;
  v8 = *a2;
  if (*a2)
  {
    v9 = *(a2 + 8);
    v10 = *a2;
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 3);
        if (v11)
        {
          *(v9 - 2) = v11;
          operator delete(v11);
        }

        v9 -= 48;
      }

      while (v9 != v8);
      v10 = *a2;
    }

    *(a2 + 8) = v8;
    operator delete(v10);
  }

  *a2 = v16;
  *(a2 + 16) = v5;
  v12 = *(a2 + 24);
  if (v12)
  {
    v13 = *(a2 + 32);
    v14 = *(a2 + 24);
    if (v13 != v12)
    {
      do
      {
        if (*(v13 - 1) < 0)
        {
          operator delete(*(v13 - 24));
        }

        v13 -= 48;
      }

      while (v13 != v12);
      v14 = *(a2 + 24);
    }

    *(a2 + 32) = v12;
    operator delete(v14);
  }

  *(a2 + 24) = v17;
  *(a2 + 40) = v6;
  *(a2 + 48) = *v20;
  *(a2 + 62) = *&v20[14];
  result = v21;
  *(a2 + 80) = v21;
  *(a2 + 96) = v18;
  *(a2 + 104) = v19;
  return result;
}

void sub_10DAA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_334D18(va);
  v11 = *(v9 - 80);
  if (v11)
  {
    *(v9 - 72) = v11;
    operator delete(v11);
    v12 = *(v9 - 56);
    if (!v12)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v12 = *(v9 - 56);
    if (!v12)
    {
      goto LABEL_3;
    }
  }

  *(v9 - 48) = v12;
  operator delete(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_10DAACC(uint64_t result, void *a2, void *a3)
{
  *(result + 32) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v4 = a3[1];
  if (v4 != *a3)
  {
    if (((v4 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_10DAC6C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = v1[2];
  if (v5)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_10DAE78(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C2406) < 0)
  {
    sub_21E7C14();
  }

  sub_21E7C20();
  _Unwind_Resume(a1);
}

void sub_10DAE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[23] = 11;
  strcpy(v7, "PathFinding");
  memset(v6, 0, sizeof(v6));
  sub_3AEC94(a3, v7, v6);
  v5[23] = 18;
  strcpy(v5, "DrivingPathFinding");
  memset(__p, 0, sizeof(__p));
  sub_3AEC94(a3, v5, __p);
  sub_10DDD94();
}

void sub_10DB348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_CDE540(v27 + v28);
  if (*(v27 + 42536) == 1)
  {
    sub_3E3DF0((v27 + 37224));
    if (*(v27 + 37120) != 1)
    {
LABEL_7:
      sub_CEC20C(v27 + 56);
      _Unwind_Resume(a1);
    }
  }

  else if (*(v27 + 37120) != 1)
  {
    goto LABEL_7;
  }

  sub_3E3DF0((v27 + 31808));
  goto LABEL_7;
}

void sub_10DB490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void **a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a19);
  if (a27 < 0)
  {
    operator delete(a22);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10DB438);
}

void sub_10DB4D0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12)
{
  sub_10DFDAC(a9, a10);
  sub_10DFDB0(a9, a3);
  sub_10DFDD8(a9, a4);
  v21 = *a12;
  v20 = *(a12 + 8);
  if (*a12 != v20)
  {
    do
    {
      sub_10DFE00(a9, v21, v21[69], 1);
      v21 += 70;
    }

    while (v21 != v20);
  }

  v32 = 5;
  strcpy(__p, "modes");
  v22 = sub_5F5AC(a2, __p);
  sub_FEECA4((a1 + 32), v29);
  v23 = sub_5F5AC(v22, v29);
  if (v30 < 0)
  {
    v25 = v23;
    operator delete(v29[0]);
    v23 = v25;
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v26 = v23;
  operator delete(__p[0]);
  v23 = v26;
LABEL_5:
  v32 = 10;
  strcpy(__p, "algorithms");
  v24 = sub_5F680(v23, __p);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  sub_FF683C(a1 + 60424);
  LOBYTE(v27) = a11;
  sub_10DB748(a1, v24, a3, a4, a5, a6, a7, a8, v27, a9);
}

void sub_10DB690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if ((a24 & 0x80000000) == 0)
  {
    sub_FE90B8(v24);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_FE90B8(v24);
  _Unwind_Resume(a1);
}

void sub_10DB748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = __chkstk_darwin();
  v12 = v11;
  v97 = v13;
  v98 = v14;
  v94 = v15;
  v95 = v16;
  v96 = v17;
  v103 = v18;
  v19 = v10;
  v20 = v10 + 57344;
  v102 = sub_3AF3C0(*(v10 + 48));
  v99 = v12;
  v93 = v12 == 2;
  if (*(v19 + 1) == 1)
  {
    v21 = *(v19 + 4);
  }

  else
  {
    v21 = -1;
  }

  v101 = v21;
  sub_7E9A4(v134);
  v22 = v103[1] - *v103;
  if (v22)
  {
    v23 = 0;
    v100 = v22 >> 4;
    do
    {
      if (sub_7EA60(v134) / 100.0 > *(v19 + 24))
      {
        *(v20 + 3382) = 1;
        break;
      }

      if (*(v19 + 3) == 1 && *(v20 + 3328) >= *(v19 + 16))
      {
        break;
      }

      v24 = sub_35225C(v103, v23);
      if (*(v24 + 8) != 5)
      {
        sub_5AF20();
      }

      v25 = *v24;
      HIBYTE(__p[2]) = 9;
      strcpy(__p, "algorithm");
      v26 = sub_5F8FC(v25, __p);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      HIBYTE(__p[2]) = 13;
      strcpy(__p, "cost_function");
      v27 = sub_5F8FC(v25, __p);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
        if (*(v19 + 28) != 1)
        {
          goto LABEL_23;
        }
      }

      else if (*(v19 + 28) != 1)
      {
        goto LABEL_23;
      }

      v28 = *(v27 + 23);
      if (v28 < 0)
      {
        if (v27[1] != 8)
        {
          goto LABEL_23;
        }

        v29 = *v27;
      }

      else
      {
        v29 = v27;
        if (v28 != 8)
        {
          goto LABEL_23;
        }
      }

      if (*v29 != 0x647261646E617473)
      {
LABEL_23:
        v30 = sub_3AF2A4(*(v19 + 48), v27);
        v31 = 0;
        v119 = *v30;
        if ((*(v30 + 31) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      v33 = *(v19 + 48);
      v118 = 12;
      strcpy(v117, "standard_hov");
      v30 = sub_3AF2A4(v33, v117);
      v31 = 1;
      v119 = *v30;
      if ((*(v30 + 31) & 0x80000000) == 0)
      {
LABEL_24:
        v32 = *(v30 + 8);
        v121 = *(v30 + 24);
        v120 = v32;
        goto LABEL_27;
      }

LABEL_26:
      sub_325C(&v120, *(v30 + 8), *(v30 + 16));
LABEL_27:
      sub_FDE7E8(v122, (v30 + 32));
      v128 = 0;
      v129 = 0;
      v130 = 0;
      v34 = *(v30 + 1312);
      v35 = *(v30 + 1320);
      if (v35 != v34)
      {
        if (((v35 - v34) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v131 = 0;
      v132 = 0;
      v133 = 0;
      v36 = *(v30 + 1336);
      v37 = *(v30 + 1344);
      if (v37 != v36)
      {
        if (0xCCCCCCCCCCCCCCCDLL * ((v37 - v36) >> 3) < 0x666666666666667)
        {
          operator new();
        }

        sub_1794();
      }

      if (v31 && v118 < 0)
      {
        operator delete(v117[0]);
      }

      v38 = sub_FEEDA8(v102, &v119, v101);
      if (v38)
      {
        *(v20 + 3380) |= v38;
        v39 = 3;
        goto LABEL_115;
      }

      v40 = sub_681D7C(a10);
      if (!sub_1013C50(v25, v40, v19 + 32))
      {
        goto LABEL_114;
      }

      if (v123)
      {
        v41 = 1;
      }

      else
      {
        v41 = 1;
        if ((v124 & 1) == 0 && !v125 && !v126)
        {
          v41 = v127 != 0;
        }
      }

      v42 = v99 == 2 && v41;
      sub_F8DE84(v19 + 64, v42);
      HIBYTE(__p[2]) = 6;
      strcpy(__p, "config");
      v43 = sub_5F8FC(v25, __p);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
        v44 = *(v26 + 23);
        if (*v19 != 1)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v44 = *(v26 + 23);
        if (*v19 != 1)
        {
          goto LABEL_70;
        }
      }

      if ((v44 & 0x80) != 0 && v26[1] == 33)
      {
        if (**v26 == 0x6172675F68746170 && *(*v26 + 8) == 0x656D6775615F6870 && *(*v26 + 16) == 0x5F6E6F697461746ELL && *(*v26 + 24) == 0x687469726F676C61 && *(*v26 + 32) == 109)
        {
          if (v123)
          {
            v49 = 1;
          }

          else
          {
            v49 = 1;
            if ((v124 & 1) == 0 && !v125 && !v126)
            {
              v49 = v127 != 0;
            }
          }

          if (v99 == 2 || !v49)
          {
            operator new();
          }

LABEL_114:
          v39 = 3;
          goto LABEL_115;
        }

        goto LABEL_74;
      }

LABEL_70:
      if ((v44 & 0x80) == 0)
      {
        if (v44 == 18)
        {
          v51 = 0;
          v52 = v26;
          goto LABEL_79;
        }

        if (v44 == 20)
        {
          goto LABEL_90;
        }

        goto LABEL_97;
      }

LABEL_74:
      v50 = v26[1];
      if (v50 == 18)
      {
        v52 = *v26;
        v51 = 1;
LABEL_79:
        v53 = *v52;
        v54 = *(v52 + 8);
        v55 = *(v52 + 16);
        if (v53 == 0x74736F635F6E696DLL && v54 == 0x7469726F676C615FLL && v55 == 28008)
        {
          v60 = *(v19 + 48);
          strcpy(__p, "MinCostPathComputation");
          HIBYTE(__p[2]) = 22;
          v113 = 0;
          v112 = 0;
          v114 = 0;
          v61 = sub_3AEC94(v60, __p, &v112);
          v62 = sub_5F5AC(v61, v43);
          v63 = v112;
          if (v112)
          {
            v64 = v113;
            v65 = v112;
            if (v113 != v112)
            {
              do
              {
                v66 = *(v64 - 1);
                v64 -= 3;
                if (v66 < 0)
                {
                  operator delete(*v64);
                }
              }

              while (v64 != v63);
              v65 = v112;
            }

            v113 = v63;
            operator delete(v65);
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100BEFC(__p, v62, *(v19 + 48), v19 + 56, *(v19 + 20), *(v19 + 8));
          v112 = v96;
          v113 = v97;
          v114 = &v119;
          v115 = v98;
          v116 = v99;
          v105 = *(v19 + 12);
          v106 = v93;
          v107 = v93;
          v108 = 0;
          v109 = v94;
          v110 = v95;
          v111 = v97[4];
          sub_FFBBEC();
        }

        if (v26[1] != 20)
        {
          v51 = 0;
        }

        if (v51 != 1)
        {
          goto LABEL_97;
        }

LABEL_89:
        v26 = *v26;
LABEL_90:
        if (*v26 == 0x6172675F68746170 && v26[1] == 0x656E6E6F635F6870 && *(v26 + 4) == 1919906915)
        {
          operator new();
        }

        goto LABEL_97;
      }

      if (v50 == 20)
      {
        goto LABEL_89;
      }

LABEL_97:
      if (*(v19 + 2) == 1 && !sub_10E2904(a10))
      {
        *(v20 + 3381) = 1;
        v39 = 2;
      }

      else
      {
        v39 = 0;
      }

LABEL_115:
      if (v131)
      {
        v132 = v131;
        operator delete(v131);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      sub_3BECA4(v122);
      if (SHIBYTE(v121) < 0)
      {
        operator delete(v120);
        if (v39 == 3)
        {
          goto LABEL_6;
        }
      }

      else if (v39 == 3)
      {
        goto LABEL_6;
      }

      if (v39)
      {
        break;
      }

LABEL_6:
      ++v23;
    }

    while (v23 != v100);
  }

  v67 = sub_3EB950(v19 + 60424);
  v69 = *(v67 + 8);
  v68 = *(v67 + 16);
  if (v69 != v68)
  {
    v70 = *(v20 + 3332);
    v71 = v68 - v69 - 8;
    if (v71 > 0x3F)
    {
      v73 = (v71 >> 3) + 1;
      v74 = v73 & 7;
      if ((v73 & 7) == 0)
      {
        v74 = 8;
      }

      v75 = v73 - v74;
      v72 = (v69 + 8 * v75);
      v76 = 0uLL;
      v77 = *(v20 + 3332);
      v78 = (v69 + 32);
      do
      {
        v79 = v78 - 8;
        v80 = vld2q_f32(v79);
        v81 = vld2q_f32(v78);
        v77 = vaddq_s32(v77, v80);
        v76 = vaddq_s32(v76, v81);
        v78 += 16;
        v75 -= 8;
      }

      while (v75);
      v70 = vaddvq_s32(vaddq_s32(v76, v77));
    }

    else
    {
      v72 = *(v67 + 8);
    }

    do
    {
      v82 = *v72;
      v72 += 2;
      v70 += v82;
    }

    while (v72 != v68);
    *(v20 + 3332) = v70;
  }

  v83 = sub_68D820(v19 + 60424);
  sub_E09D08(__p, v83);
  v84 = __p[2];
  if (__p[2])
  {
    do
    {
      v85 = sub_D3B7AC((v19 + 60608), v84 + 4);
      if (v85)
      {
        sub_4C2D98(v85 + 2, (v84 + 4));
      }

      else
      {
        sub_D3B9CC((v19 + 60608), v84 + 4);
      }

      v84 = *v84;
    }

    while (v84);
  }

  if ((*(v20 + 3380) & 1) != 0 || *(v20 + 3382) == 1)
  {
    v86 = sub_74700();
    nullsub_1(v86);
  }

  v87 = __p[2];
  if (__p[2])
  {
    do
    {
      v89 = *v87;
      v90 = v87[8];
      if (v90)
      {
        do
        {
          v91 = *v90;
          operator delete(v90);
          v90 = v91;
        }

        while (v91);
      }

      v92 = v87[6];
      v87[6] = 0;
      if (v92)
      {
        operator delete(v92);
      }

      operator delete(v87);
      v87 = v89;
    }

    while (v89);
  }

  v88 = __p[0];
  __p[0] = 0;
  if (v88)
  {
    operator delete(v88);
  }
}