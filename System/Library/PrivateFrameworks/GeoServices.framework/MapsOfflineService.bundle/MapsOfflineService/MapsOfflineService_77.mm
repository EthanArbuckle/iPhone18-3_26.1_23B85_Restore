void sub_4EDF2C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) == 1)
  {
    v3 = *(a1 + 24);
    v2 = *(a1 + 32);
    v4 = v3;
    if (v3 != v2)
    {
      v4 = *(a1 + 24);
      while (*v4 != *a2)
      {
        v4 += 16;
        if (v4 == v2)
        {
          goto LABEL_12;
        }
      }
    }

    if (v4 == v2)
    {
LABEL_12:
      v6 = *(a1 + 40);
      if (v2 >= v6)
      {
        v7 = v2 - v3;
        v8 = (v2 - v3) >> 4;
        v9 = v8 + 1;
        if ((v8 + 1) >> 60)
        {
          sub_1794();
        }

        v10 = v6 - v3;
        if (v10 >> 3 > v9)
        {
          v9 = v10 >> 3;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v9;
        }

        if (v11)
        {
          if (!(v11 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        *(16 * v8) = *a2;
        v13 = 16 * v8 + 16;
        memcpy(0, v3, v7);
        *(a1 + 24) = 0;
        *(a1 + 32) = v13;
        *(a1 + 40) = 0;
        if (v3)
        {
          operator delete(v3);
        }

        *(a1 + 32) = v13;
      }

      else
      {
        *v2 = *a2;
        *(a1 + 32) = v2 + 16;
      }
    }

    else
    {
      v5 = *(v4 + 2);
      if (v5 <= *(a2 + 8))
      {
        v5 = *(a2 + 8);
      }

      *(v4 + 2) = v5;
    }
  }
}

uint64_t sub_4EE0B8(uint64_t result, int a2)
{
  v8 = a2;
  if (*(result + 128) == 1)
  {
    v3 = result;
    result = sub_4F96D8(result);
    v7 = result;
    v4 = &v8;
    v5 = &v7;
    if (result <= a2)
    {
      v6 = &v7;
    }

    else
    {
      v6 = &v8;
    }

    if (a2 != 0x7FFFFFFF)
    {
      v5 = v6;
    }

    if (result != 0x7FFFFFFF)
    {
      v4 = v5;
    }

    *(v3 + 20) = *v4;
  }

  return result;
}

uint64_t sub_4EE140(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v4;
  if (result == a2)
  {
    *(result + 64) = a2[8];
    *(result + 96) = *(a2 + 96);
    *(result + 152) = *(a2 + 38);
    return result;
  }

  v5 = a2[6];
  v6 = (v5 >> 4) & 0xFFFFFFFFFFFFFF8;
  v7 = a2[3];
  if (a2[4] == v7)
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v8 = a2[7] + v5;
    v9 = (v8 >> 4) & 0xFFFFFFFFFFFFFF8;
    v10 = v8 & 0x7F;
    v11 = *(v7 + v9) + 32 * v10;
    v12 = v10 - (a2[6] & 0x7F) + 16 * (v9 - v6);
    v13 = (*(v7 + v6) + 32 * (a2[6] & 0x7F));
    if (v11 == v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }
  }

  sub_4F3DC8((result + 16), (v7 + v6), v13, v14);
  *(v3 + 64) = a2[8];
  sub_4F5544((v3 + 72), a2[9], a2[10], 0xCCCCCCCCCCCCCCCDLL * ((a2[10] - a2[9]) >> 4));
  *(v3 + 96) = *(a2 + 96);
  v15 = a2[17];
  v16 = 8 * (v15 / 0xAA);
  v17 = a2[14];
  if (a2[15] == v17)
  {
    v19 = 0;
    goto LABEL_12;
  }

  v18 = v15 % 0xAA;
  v19 = (*(v17 + 8 * (v15 / 0xAA)) + 24 * (v15 % 0xAA));
  v20 = a2[18] + v15;
  v21 = v20 / 0xAA;
  v22 = 8 * (v20 / 0xAA);
  v23 = v20 % 0xAA;
  if ((*(v17 + 8 * v21) + 24 * v23) == v19)
  {
LABEL_12:
    v24 = 0;
    goto LABEL_13;
  }

  v24 = v23 - v18 + 170 * ((v22 - v16) >> 3);
LABEL_13:
  sub_4F4328((v3 + 104), (v17 + v16), v19, v24);
  *(v3 + 152) = *(a2 + 38);
  sub_4F49C4(v3 + 160, a2[20], a2[21], 0x6DB6DB6DB6DB6DB7 * ((a2[21] - a2[20]) >> 3));
  return v3;
}

uint64_t sub_4EE31C(uint64_t result)
{
  v1 = *(result + 388);
  if (v1 != -1)
  {
    *(result + 388) = v1 + 1;
  }

  return result;
}

void sub_4EE344(int64x2_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1[27].i64[1])
  {
    v5 = a1[27].u64[0];
    if (*a3 <= *(*(a1[25].i64[1] + ((v5 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v5 & 0x7F)))
    {
      if (sub_7E7E4(1u))
      {
        sub_19594F8(&__p);
        sub_4A5C(&__p, "SoC last update timestamp(", 26);
        sub_35CC(&__dst, *a3);
        operator new();
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = a1[27].u64[0];
  }

  if (!v5)
  {
    sub_4F5DE0(a1[25].i64);
    v5 = a1[27].u64[0];
  }

  v6 = a1[25].i64[1];
  v7 = (v6 + 8 * (v5 >> 7));
  v8 = *v7 + 32 * (v5 & 0x7F);
  if (a1[26].i64[0] == v6)
  {
    v8 = 0;
  }

  if (v8 == *v7)
  {
    v8 = *(v7 - 1) + 4096;
  }

  v9 = *(a3 + 16);
  *(v8 - 32) = *a3;
  *(v8 - 16) = v9;
  a1[27] = vaddq_s64(a1[27], xmmword_22661F0);
LABEL_13:
  operator new();
}

void sub_4EED10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a55);
  _Unwind_Resume(a1);
}

void sub_4EEDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4EEDF4(uint64_t a1)
{
  if (*(a1 + 440))
  {
    operator new();
  }

  return 0;
}

void sub_4EF328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4EF350(uint64_t result, uint64_t a2)
{
  *(result + 392) = a2;
  *(result + 396) = BYTE4(a2);
  return result;
}

BOOL sub_4EF3A0(_BOOL8 result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (*a5 == -1 && *(a5 + 4) == -1)
  {
    return result;
  }

  v9 = result;
  v11 = sub_E6F46C(a2);
  v12 = nullsub_1(a2);
  v13 = sub_E6F44C(a2);
  sub_4FA7E8(v28, v11, v12, v13, a5);
  if (a4 && (v29 & 1) == 0)
  {
    v14 = v9[25].i64[1];
    v15 = v9[26].i64[0];
    v9[27].i64[1] = 0;
    v16 = (v15 - v14) >> 3;
    if (v16 >= 3)
    {
      do
      {
        operator delete(*v14);
        v17 = v9[26].i64[0];
        v14 = (v9[25].i64[1] + 8);
        v9[25].i64[1] = v14;
        v16 = (v17 - v14) >> 3;
      }

      while (v16 > 2);
    }

    if (v16 == 1)
    {
      v18 = 64;
    }

    else
    {
      if (v16 != 2)
      {
        goto LABEL_14;
      }

      v18 = 128;
    }

    v9[27].i64[0] = v18;
  }

LABEL_14:
  result = sub_4FA814(v28);
  if (result)
  {
    v27 = 9;
    v25 = 0;
    strcpy(v26, "EVRouting");
    __p = 0;
    v24 = 0;
    sub_3AEC94(a3, v26, &__p);
    v19 = __p;
    if (__p)
    {
      v20 = v24;
      v21 = __p;
      if (v24 != __p)
      {
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
        v21 = __p;
      }

      v24 = v19;
      operator delete(v21);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    sub_4EE344(v9, a2, v28);
  }

  return result;
}

void sub_4EF558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_4EF57C(uint64_t *a1, __int128 *a2)
{
  v3 = a1[58];
  if (v3 >= a1[59])
  {
    result = sub_4F4C14(a1 + 57, a2);
    a1[58] = result;
  }

  else
  {
    sub_4F4DF0(a1[58], a2);
    result = v3 + 80;
    a1[58] = v3 + 80;
    a1[58] = v3 + 80;
  }

  return result;
}

uint64_t sub_4EF5E4@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_11FD59C(v198, 0, 0);
  v195 = 0;
  v196 = 0;
  v197 = 0;
  __dst[0] = v198;
  __dst[1] = &v195;
  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 264) != 1 || (v4 = sub_3F80((a1 + 136)), v4 != sub_3F80(a1)))
    {
      sub_4F61D0(__dst, a1);
    }
  }

  if (*(a1 + 264) == 1)
  {
    sub_4F61D0(__dst, a1 + 136);
  }

  v6 = *(a1 + 272);
  v5 = *(a1 + 280);
  v185[0] = v198;
  for (v185[1] = &v195; v6 != v5; v6 += 128)
  {
    sub_4F61D0(v185, v6);
  }

  if (*(a1 + 264))
  {
    v7 = sub_3F80((a1 + 136));
    v8 = v200 | 0x800;
    v213 = v7;
  }

  else
  {
    v8 = v200;
  }

  v200 = v8 | 0x300;
  v9 = *(a1 + 296);
  v211 = v9;
  v11 = *(a1 + 304);
  for (i = *(a1 + 312); v11 != i; v11 = (v11 + 24))
  {
    sub_4F803C(v198, v11);
  }

  v181 = a2;
  v12 = *(a1 + 328);
  for (j = *(a1 + 336); v12 != j; *(v15 + 56) = v9)
  {
    if (v203 && v202 < *v203)
    {
      v14 = &v203[2 * v202++];
      v15 = *(v14 + 1);
    }

    else
    {
      v20 = sub_16F5828(v201);
      v15 = sub_19593CC(&v201, v20);
    }

    LODWORD(v9) = v12[1];
    v16 = exp(*&v9 * -6.28318531 / 4294967300.0 + 3.14159265);
    v17 = atan((v16 + -1.0 / v16) * 0.5) * 57.2957795;
    v18 = *(v15 + 40);
    *(v15 + 40) = v18 | 1;
    *(v15 + 48) = v17;
    v19 = *v12;
    v12 += 3;
    LODWORD(v17) = v19;
    v9 = *&v17 * 360.0 / 4294967300.0 + -180.0;
    *(v15 + 40) = v18 | 3;
  }

  v22 = *(a1 + 352);
  for (k = *(a1 + 360); v22 != k; v22 = (v22 + 24))
  {
    sub_4F8174(v198, v22);
  }

  v212 = sub_97230(*(a1 + 376));
  v200 |= 0x408u;
  v23 = v207;
  if (!v207)
  {
    v24 = (v199 & 0xFFFFFFFFFFFFFFFCLL);
    if (v199)
    {
      v24 = *v24;
    }

    sub_12005F8(v24);
    v23 = v25;
    v207 = v25;
  }

  v26 = *(a1 + 384);
  v27 = *(v23 + 16);
  *(v23 + 16) = v27 | 2;
  *(v23 + 104) = v26;
  v28 = v27 & 0xFFFFFFF5 | 2;
  v29 = v27 | 0xA;
  if (*(a1 + 388) == -1)
  {
    v29 = v28;
  }

  *(v23 + 16) = v29;
  v30 = *(a1 + 388);
  *(v23 + 16) = v29 | 8;
  *(v23 + 112) = v30;
  if (*(a1 + 396) == 1)
  {
    v31 = *(a1 + 392);
    v32 = v29 | 0xC;
  }

  else
  {
    v31 = 0;
    v32 = v29 & 0xFFFFFFF3 | 8;
  }

  *(v23 + 16) = v32;
  *(v23 + 108) = v31;
  v33 = sub_EC7E7C(*(a1 + 480));
  *(v23 + 16) |= 0x40u;
  *(v23 + 124) = v33;
  v182 = a1;
  sub_4FB508(a1 + 384, v185);
  v34 = v185[0];
  for (m = v185[1]; v34 != m; v34 += 56)
  {
    v36 = *(v23 + 88);
    if (v36 && (v37 = *(v23 + 80), v37 < *v36))
    {
      *(v23 + 80) = v37 + 1;
      v38 = *&v36[2 * v37 + 2];
    }

    else
    {
      sub_1200578(*(v23 + 72));
      v38 = sub_19593CC(v23 + 72, v39);
    }

    v40 = *(v34 + 9);
    if (v40 <= 978307199)
    {
      v41 = 0;
    }

    else
    {
      v41 = v40 - 978307200;
    }

    *(v38 + 16) |= 4u;
    *(v38 + 40) = v41;
    if (sub_585D8(v34))
    {
      *(v38 + 16) |= 1u;
      v43 = *(v38 + 24);
      if (!v43)
      {
        v44 = *(v38 + 8);
        v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
        if (v44)
        {
          v45 = *v45;
        }

        v43 = sub_1552410(v45);
        *(v38 + 24) = v43;
      }

      v46 = sub_588D8(v34);
      *(v43 + 4) |= 1u;
      v43[3] = v46;
      *(v38 + 16) |= 1u;
      v47 = *(v38 + 24);
      if (!v47)
      {
        v48 = *(v38 + 8);
        v49 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
        if (v48)
        {
          v49 = *v49;
        }

        v47 = sub_1552410(v49);
        *(v38 + 24) = v47;
      }

      v50 = sub_588E0(v34);
      *(v47 + 4) |= 2u;
      v47[4] = v50;
    }

    *(v38 + 16) |= 2u;
    v51 = *(v38 + 32);
    if (!v51)
    {
      v52 = *(v38 + 8);
      v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
      if (v52)
      {
        v53 = *v53;
      }

      v51 = sub_16F5828(v53);
      *(v38 + 32) = v51;
    }

    LODWORD(v42) = *(v34 + 7);
    v54 = exp(v42 * -6.28318531 / 4294967300.0 + 3.14159265);
    v55 = atan((v54 + -1.0 / v54) * 0.5) * 57.2957795;
    *(v51 + 40) |= 1u;
    *(v51 + 48) = v55;
    *(v38 + 16) |= 2u;
    LODWORD(v55) = *(v34 + 6);
    *(v51 + 40) |= 2u;
    *(v51 + 56) = *&v55 * 360.0 / 4294967300.0 + -180.0;
    v56 = sub_4EB31C(v34[40]);
    v57 = *(v38 + 16);
    *(v38 + 16) = v57 | 8;
    *(v38 + 44) = v56;
    v58 = *(v34 + 6);
    if (v58 != 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v38 + 16) = v57 | 0x18;
      *(v38 + 48) = v58;
    }
  }

  v59 = *(a1 + 536);
  if (v59 != 0x7FFFFFFF)
  {
    v60 = v59 <= 978307199 ? 0 : v59 - 978307200;
    *(v23 + 16) |= 0x20u;
    *(v23 + 120) = v60;
    if (v60 == 1169176447 && sub_7E7E4(3u))
    {
      sub_19594F8(v185);
      v61 = sub_4A5C(v185, "Serialized original request time fails to convert back to a valid timestamp (", 77);
      v62 = sub_258D4(v61);
      v63 = sub_4A5C(v62, "): ", 3);
      v64 = sub_74700();
      v65 = sub_73F1C(v64);
      v66 = *(v65 + 23);
      if (v66 >= 0)
      {
        v67 = v65;
      }

      else
      {
        v67 = *v65;
      }

      if (v66 >= 0)
      {
        v68 = *(v65 + 23);
      }

      else
      {
        v68 = *(v65 + 8);
      }

      sub_4A5C(v63, v67, v68);
      if ((v194 & 0x10) != 0)
      {
        v70 = v193;
        if (v193 < v190)
        {
          v193 = v190;
          v70 = v190;
        }

        v71 = v189;
        v69 = v70 - v189;
        if (v70 - v189 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_215;
        }
      }

      else
      {
        if ((v194 & 8) == 0)
        {
          v69 = 0;
          v184 = 0;
LABEL_81:
          *(__dst + v69) = 0;
          sub_7E854(__dst, 3u);
          if (v184 < 0)
          {
            operator delete(__dst[0]);
          }

          if (v192 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v186);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_86;
        }

        v71 = v187;
        v69 = v188 - v187;
        if ((v188 - v187) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_215:
          sub_3244();
        }
      }

      if (v69 >= 0x17)
      {
        operator new();
      }

      v184 = v69;
      if (v69)
      {
        memmove(__dst, v71, v69);
      }

      goto LABEL_81;
    }
  }

LABEL_86:
  *(v23 + 16) |= 1u;
  v72 = *(v23 + 96);
  if (v72)
  {
    v73 = *(a1 + 408);
    if (*(a1 + 416) == v73)
    {
      goto LABEL_119;
    }

    goto LABEL_92;
  }

  v74 = *(v23 + 8);
  v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
  if (v74)
  {
    v75 = *v75;
  }

  v72 = sub_1200330(v75);
  *(v23 + 96) = v72;
  v73 = *(a1 + 408);
  if (*(a1 + 416) != v73)
  {
LABEL_92:
    v76 = *(a1 + 432);
    v77 = (v73 + 8 * (v76 >> 7));
    v78 = *v77 + 32 * (v76 & 0x7F);
    v79 = *(v73 + (((*(v182 + 440) + v76) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(v182 + 440) + v76) & 0x7F);
    if (v78 == v79)
    {
      goto LABEL_119;
    }

    while (1)
    {
      v80 = v72[5];
      if (v80 && (v81 = *(v72 + 8), v81 < *v80))
      {
        *(v72 + 8) = v81 + 1;
        v82 = *&v80[2 * v81 + 2];
      }

      else
      {
        sub_12002B0(v72[3]);
        v82 = sub_19593CC((v72 + 3), v83);
      }

      v84 = sub_3F80((v78 + 4));
      *(v82 + 16) |= 2u;
      *(v82 + 32) = v84;
      v85 = sub_4566A4(v78 + 4);
      *(v82 + 16) |= 4u;
      *(v82 + 36) = v85;
      v86 = sub_5AAC4(v78 + 4);
      v88 = *(v82 + 16);
      *(v82 + 16) = v88 | 8;
      *(v82 + 40) = v86;
      *(v82 + 44) = *v78;
      *(v82 + 16) = v88 | 0x19;
      v89 = *(v82 + 24);
      if (v89)
      {
        break;
      }

      v91 = *(v82 + 8);
      v92 = (v91 & 0xFFFFFFFFFFFFFFFCLL);
      if (v91)
      {
        v92 = *v92;
      }

      v89 = sub_16F5BD8(v92);
      *(v82 + 24) = v89;
      *(v89 + 40) |= 1u;
      v90 = *(v89 + 48);
      if (!v90)
      {
        goto LABEL_105;
      }

LABEL_108:
      LODWORD(v87) = *(v78 + 24);
      v95 = exp(v87 * -6.28318531 / 4294967300.0 + 3.14159265);
      v96 = atan((v95 + -1.0 / v95) * 0.5) * 57.2957795;
      *(v90 + 40) |= 1u;
      *(v90 + 48) = v96;
      *(v82 + 16) |= 1u;
      if (!v89)
      {
        v98 = *(v82 + 8);
        v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
        if (v98)
        {
          v99 = *v99;
        }

        v89 = sub_16F5BD8(v99);
        *(v82 + 24) = v89;
        *(v89 + 40) |= 1u;
        v97 = *(v89 + 48);
        if (v97)
        {
          goto LABEL_117;
        }

LABEL_114:
        v100 = *(v89 + 8);
        v101 = (v100 & 0xFFFFFFFFFFFFFFFCLL);
        if (v100)
        {
          v101 = *v101;
        }

        v97 = sub_16F5828(v101);
        *(v89 + 48) = v97;
        goto LABEL_117;
      }

      *(v89 + 40) |= 1u;
      v97 = *(v89 + 48);
      if (!v97)
      {
        goto LABEL_114;
      }

LABEL_117:
      LODWORD(v96) = *(v78 + 20);
      *(v97 + 40) |= 2u;
      *(v97 + 56) = *&v96 * 360.0 / 4294967300.0 + -180.0;
      v102 = *(v78 + 16);
      *(v82 + 16) |= 0x20u;
      *(v82 + 48) = v102;
      v78 += 32;
      if (v78 - *v77 == 4096)
      {
        v103 = v77[1];
        ++v77;
        v78 = v103;
      }

      if (v78 == v79)
      {
        goto LABEL_119;
      }
    }

    *(v89 + 40) |= 1u;
    v90 = *(v89 + 48);
    if (v90)
    {
      goto LABEL_108;
    }

LABEL_105:
    v93 = *(v89 + 8);
    v94 = (v93 & 0xFFFFFFFFFFFFFFFCLL);
    if (v93)
    {
      v94 = *v94;
    }

    v90 = sub_16F5828(v94);
    *(v89 + 48) = v90;
    v89 = *(v82 + 24);
    goto LABEL_108;
  }

LABEL_119:
  v105 = *(v182 + 456);
  v104 = *(v182 + 464);
  while (v105 != v104)
  {
    v106 = *(v23 + 40);
    if (v106 && (v107 = *(v23 + 32), v107 < *v106))
    {
      *(v23 + 32) = v107 + 1;
      v108 = *&v106[2 * v107 + 2];
    }

    else
    {
      v109 = sub_11FFD20(*(v23 + 24));
      v108 = sub_19593CC(v23 + 24, v109);
    }

    *(v108 + 16) |= 1u;
    v110 = *(v108 + 8);
    v111 = (v110 & 0xFFFFFFFFFFFFFFFCLL);
    if (v110)
    {
      v111 = *v111;
    }

    sub_194EA1C((v108 + 48), v105, v111);
    *(v108 + 16) |= 2u;
    v112 = *(v108 + 56);
    if (!v112)
    {
      v113 = *(v108 + 8);
      v114 = (v113 & 0xFFFFFFFFFFFFFFFCLL);
      if (v113)
      {
        v114 = *v114;
      }

      v112 = sub_11FFC2C(v114);
      *(v108 + 56) = v112;
    }

    v115 = *(v105 + 24);
    *(v112 + 16) |= 1u;
    *(v112 + 24) = v115;
    v116 = *(v105 + 32);
    for (n = *(v105 + 40); v116 != n; ++v116)
    {
      while (1)
      {
        v118 = *(v108 + 40);
        if (!v118)
        {
          break;
        }

        v119 = *(v108 + 32);
        if (v119 >= *v118)
        {
          break;
        }

        *(v108 + 32) = v119 + 1;
        if (++v116 == n)
        {
          goto LABEL_120;
        }
      }

      v120 = sub_11FFCA8(*(v108 + 24));
      sub_19593CC(v108 + 24, v120);
    }

LABEL_120:
    v105 += 80;
  }

  v121 = *(v182 + 520);
  v122 = *(v182 + 496);
  v123 = *(v182 + 504);
  v124 = (v122 + 8 * (v121 / 0xAA));
  if (v123 == v122)
  {
    v125 = 0;
  }

  else
  {
    v125 = *v124 + 24 * (v121 % 0xAA);
  }

  while (1)
  {
    if (v123 != v122)
    {
      if (v125 == *(v122 + 8 * ((*(v182 + 528) + v121) / 0xAA)) + 24 * ((*(v182 + 528) + v121) % 0xAA))
      {
        break;
      }

      if (v125 == *(v122 + 8 * (v121 / 0xAA)) + 24 * (v121 % 0xAA))
      {
        goto LABEL_152;
      }

      goto LABEL_148;
    }

    if (!v125)
    {
      break;
    }

LABEL_148:
    v126 = v125 - *v124;
    v127 = 0xAAAAAAAAAAAAAAABLL * (v126 >> 3);
    if (v126 < 25)
    {
      if (*(v124[-((170 - v127) / 0xAA)] + 24 * (170 * ((170 - v127) / 0xAA) - (170 - v127)) + 4068) == *(v125 + 12))
      {
        goto LABEL_164;
      }
    }

    else if (*(v124[(v127 - 1) / 0xAA] + 24 * ((v127 - 1) % 0xAA) + 12) == *(v125 + 12))
    {
      goto LABEL_164;
    }

LABEL_152:
    v128 = *(v23 + 64);
    if (v128 && (v129 = *(v23 + 56), v129 < *v128))
    {
      *(v23 + 56) = v129 + 1;
      v130 = *&v128[2 * v129 + 2];
      *(v130 + 16) |= 1u;
      v131 = *(v130 + 48);
      if (!v131)
      {
        goto LABEL_157;
      }
    }

    else
    {
      v132 = sub_12004D0(*(v23 + 48));
      v130 = sub_19593CC(v23 + 48, v132);
      *(v130 + 16) |= 1u;
      v131 = *(v130 + 48);
      if (!v131)
      {
LABEL_157:
        v133 = *(v130 + 8);
        v134 = (v133 & 0xFFFFFFFFFFFFFFFCLL);
        if (v133)
        {
          v134 = *v134;
        }

        v131 = sub_1200454(v134);
        *(v130 + 48) = v131;
      }
    }

    v135 = *(v125 + 16);
    v136 = v135 / 1000;
    v137 = v135 % 1000;
    if (v135 < 0)
    {
      v138 = 65036;
    }

    else
    {
      v138 = 500;
    }

    v139 = v138 + v137 + ((-31981 * (v138 + v137)) >> 16);
    v140 = v136 + (v139 >> 9) + ((v139 & 0x8000) >> 15);
    v141 = *(v131 + 16);
    *(v131 + 16) = v141 | 2;
    *(v131 + 28) = v140;
    *(v131 + 24) = *(v125 + 12);
    *(v131 + 32) = *(v125 + 20);
    *(v131 + 16) = v141 | 0xF;
LABEL_164:
    v142 = *(v23 + 64);
    if (v142)
    {
      v143 = v142 + 8;
    }

    else
    {
      v143 = 0;
    }

    v144 = *(v143 + 8 * *(v23 + 56) - 8);
    v145 = *(v144 + 40);
    if (v145 && (v146 = *(v144 + 32), v146 < *v145))
    {
      *(v144 + 32) = v146 + 1;
      v147 = *&v145[2 * v146 + 2];
    }

    else
    {
      v148 = sub_12003D8(*(v144 + 24));
      v147 = sub_19593CC(v144 + 24, v148);
    }

    v149 = *v125;
    v150 = v147[4];
    v147[4] = v150 | 1;
    v147[6] = v149;
    v151 = *(v125 + 8);
    v152 = v151 / 1000;
    v153 = v151 % 1000;
    if (v151 < 0)
    {
      v154 = 65036;
    }

    else
    {
      v154 = 500;
    }

    v155 = v154 + v153 + ((-31981 * (v154 + v153)) >> 16);
    v147[4] = v150 | 5;
    v147[8] = v152 + (v155 >> 9) + ((v155 & 0x8000) >> 15);
    v156 = *(v125 + 4);
    v147[4] = v150 | 7;
    v147[7] = v156;
    v125 += 24;
    if (v125 - *v124 == 4080)
    {
      v157 = v124[1];
      ++v124;
      v125 = v157;
    }

    v121 = *(v182 + 520);
    v122 = *(v182 + 496);
    v123 = *(v182 + 504);
  }

  v200 |= 1u;
  v158 = (v199 & 0xFFFFFFFFFFFFFFFCLL);
  if (v199)
  {
    v158 = *v158;
  }

  sub_194EA1C(&v204, (v182 + 568), v158);
  v200 |= 4u;
  v159 = (v199 & 0xFFFFFFFFFFFFFFFCLL);
  if (v199)
  {
    v159 = *v159;
  }

  sub_194EA1C(&v206, (v182 + 592), v159);
  if (sub_585D8((v182 + 616)))
  {
    sub_585EC(v182 + 616, v185);
    v200 |= 2u;
    v161 = (v199 & 0xFFFFFFFFFFFFFFFCLL);
    if (v199)
    {
      v161 = *v161;
    }

    sub_194EA30(&v205, v185, v161);
    if (SHIBYTE(v186.__locale_) < 0)
    {
      operator delete(v185[0]);
      v200 |= 0x40u;
      v162 = v210;
      if (!v210)
      {
        goto LABEL_187;
      }
    }

    else
    {
      v200 |= 0x40u;
      v162 = v210;
      if (!v210)
      {
LABEL_187:
        v163 = (v199 & 0xFFFFFFFFFFFFFFFCLL);
        if (v199)
        {
          v163 = *v163;
        }

        v162 = sub_155248C(v163);
        v210 = v162;
      }
    }

    sub_ECB7A4(v182 + 616, v162);
  }

  v164 = *(v182 + 652);
  v165 = v200;
  v200 |= 0x1000u;
  v214 = v164;
  if (*(v182 + 640) != -1 || *(v182 + 644) != -1)
  {
    v166 = v165 | 0x1010;
    v200 = v165 | 0x1010;
    v167 = v208;
    if (!v208)
    {
      v168 = (v199 & 0xFFFFFFFFFFFFFFFCLL);
      if (v199)
      {
        v168 = *v168;
      }

      v167 = sub_16F5828(v168);
      v208 = v167;
      v166 = v200 | 0x10;
    }

    LODWORD(v160) = *(v182 + 644);
    v169 = exp(v160 * -6.28318531 / 4294967300.0 + 3.14159265);
    v170 = atan((v169 + -1.0 / v169) * 0.5) * 57.2957795;
    v171 = *(v167 + 40);
    *(v167 + 40) = v171 | 1;
    *(v167 + 48) = v170;
    v200 = v166;
    LODWORD(v170) = *(v182 + 640);
    *(v167 + 40) = v171 | 3;
    *(v167 + 56) = *&v170 * 360.0 / 4294967300.0 + -180.0;
  }

  if (*(v182 + 657) == 1)
  {
    v172 = *(v182 + 656);
    v200 |= 0x2000u;
    v215 = v172;
    if (*(v182 + 659) != 1)
    {
      goto LABEL_200;
    }

LABEL_212:
    v180 = *(v182 + 658);
    v200 |= 0x4000u;
    v216 = v180;
    if (*(v182 + 661) != 1)
    {
      goto LABEL_202;
    }

LABEL_201:
    v173 = *(v182 + 660);
    v200 |= 0x8000u;
    v217 = v173;
    goto LABEL_202;
  }

  if (*(v182 + 659) == 1)
  {
    goto LABEL_212;
  }

LABEL_200:
  if (*(v182 + 661) == 1)
  {
    goto LABEL_201;
  }

LABEL_202:
  if (sub_4F8530(v182 + 664))
  {
    v200 |= 0x20u;
    v174 = v209;
    if (!v209)
    {
      v175 = (v199 & 0xFFFFFFFFFFFFFFFCLL);
      if (v199)
      {
        v175 = *v175;
      }

      v174 = sub_12006B8(v175);
      v209 = v174;
    }

    v176 = nullsub_1(*(v182 + 664));
    v177 = *(v174 + 16);
    *(v174 + 16) = v177 | 1;
    *(v174 + 24) = v176;
    v178 = *(v182 + 672);
    *(v174 + 16) = v177 | 3;
    *(v174 + 32) = v178;
  }

  v181->__r_.__value_.__r.__words[0] = 0;
  v181->__r_.__value_.__l.__size_ = 0;
  v181->__r_.__value_.__r.__words[2] = 0;
  sub_194DAE0(v198, v181);
  if (v195)
  {
    v196 = v195;
    operator delete(v195);
  }

  return sub_11FD994(v198);
}

void sub_4F08D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, char a56)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a17);
  if (a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  sub_11FD994(&a56);
  _Unwind_Resume(a1);
}

uint64_t sub_4F09B8(uint64_t a1)
{
  if (*(a1 + 659) == 1)
  {
    return *(a1 + 658) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_4F09D8(uint64_t a1)
{
  if (*(a1 + 661) == 1)
  {
    return *(a1 + 660) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_4F0A00(uint64_t a1)
{
  if (*(a1 + 657) == 1)
  {
    return *(a1 + 656) & 1;
  }

  else
  {
    return 0;
  }
}

void sub_4F0A20(uint64_t a1)
{
  v23 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  *v18 = 0u;
  v21[0] = 0x3FF0000000000000;
  v21[1] = 0;
  v22 = 0uLL;
  memset(v24, 0, sizeof(v24));
  v25 = 0u;
  v26 = 0x7FFFFFFFLL;
  __p = 0;
  v28 = 0;
  v29 = 0;
  LOBYTE(v23) = *(a1 + 480);
  sub_4EE140(a1 + 384, &v17);
  *(a1 + 616) = 0;
  *(a1 + 652) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 656) = 257;
  *(a1 + 664) = -1;
  *(a1 + 672) = -1;
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  v3 = v24[2];
  v2 = v24[1];
  *(&v25 + 1) = 0;
  v4 = (v24[2] - v24[1]) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = v24[2];
      v2 = (v24[1] + 8);
      v24[1] = v2;
      v4 = (v24[2] - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v5 = 170;
LABEL_9:
    *&v25 = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    if (v24[2] != v24[1])
    {
      v24[2] = v24[2] + ((v24[1] - v24[2] + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v24[0])
  {
    operator delete(v24[0]);
  }

  v7 = v21[1];
  if (v21[1])
  {
    v8 = v22;
    v9 = v21[1];
    if (v22 != v21[1])
    {
      do
      {
        v10 = *(v8 - 48);
        if (v10)
        {
          *(v8 - 40) = v10;
          operator delete(v10);
        }

        v11 = (v8 - 80);
        if (*(v8 - 57) < 0)
        {
          operator delete(*v11);
        }

        v8 -= 80;
      }

      while (v11 != v7);
      v9 = v21[1];
    }

    *&v22 = v7;
    operator delete(v9);
  }

  v12 = v18[1];
  v13 = v19;
  *(&v20 + 1) = 0;
  v14 = (v19 - v18[1]) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v13 = v19;
      v12 = (v18[1] + 8);
      v18[1] = v12;
      v14 = (v19 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v15 = 64;
    goto LABEL_32;
  }

  if (v14 == 2)
  {
    v15 = 128;
LABEL_32:
    *&v20 = v15;
  }

  if (v12 != v13)
  {
    do
    {
      v16 = *v12++;
      operator delete(v16);
    }

    while (v12 != v13);
    if (v19 != v18[1])
    {
      *&v19 = v19 + ((v18[1] - v19 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v18[0])
  {
    operator delete(v18[0]);
  }
}

void ***sub_4F0C94(void ***a1)
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
        v5 = *(v3 - 6);
        if (v5)
        {
          *(v3 - 5) = v5;
          operator delete(v5);
        }

        v6 = v3 - 10;
        if (*(v3 - 57) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 10;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_4F0D1C(uint64_t a1)
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
    v5 = 85;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 170;
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

uint64_t sub_4F0DE8(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    *(result + 16) = v1 + ((v2 - v1 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*result)
  {
    v3 = result;
    operator delete(*result);
    return v3;
  }

  return result;
}

uint64_t sub_4F0E40(uint64_t a1)
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
    v5 = 64;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 128;
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

void sub_4F0F0C()
{
  exception = __cxa_allocate_exception(8uLL);
}

void **sub_4F0F58(void **a1)
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
        v3 = sub_4F0FB4(v3 - 144);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_4F0FB4(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 88);
    v5 = *(a1 + 80);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 6);
        if (v6)
        {
          *(v4 - 5) = v6;
          operator delete(v6);
        }

        v7 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
          operator delete(*v7);
        }

        v4 -= 10;
      }

      while (v7 != v3);
      v5 = *(a1 + 80);
    }

    *(a1 + 88) = v3;
    operator delete(v5);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    *(a1 + 40) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    *(a1 + 16) = v9;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_4F107C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    sub_4F1328(a1, a2);
    *(a1 + 128) = 1;
  }

  *(a1 + 136) = 0;
  *(a1 + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    sub_4F1328(a1 + 136, (a2 + 136));
    *(a1 + 264) = 1;
  }

  sub_4F1AC8((a1 + 272), (a2 + 272));
  *(a1 + 296) = *(a2 + 296);
  sub_99A14((a1 + 304), (a2 + 304));
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  v5 = *(a2 + 328);
  v4 = *(a2 + 336);
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  sub_99A14((a1 + 352), (a2 + 352));
  *(a1 + 376) = *(a2 + 376);
  sub_4F1D8C(a1 + 384, (a2 + 384));
  if (*(a2 + 591) < 0)
  {
    sub_325C((a1 + 568), *(a2 + 568), *(a2 + 576));
  }

  else
  {
    v6 = *(a2 + 568);
    *(a1 + 584) = *(a2 + 584);
    *(a1 + 568) = v6;
  }

  v7 = (a1 + 592);
  if (*(a2 + 615) < 0)
  {
    sub_325C(v7, *(a2 + 592), *(a2 + 600));
  }

  else
  {
    v8 = *(a2 + 592);
    *(a1 + 608) = *(a2 + 608);
    *v7 = v8;
  }

  *(a1 + 616) = *(a2 + 616);
  v9 = *(a2 + 632);
  v10 = *(a2 + 648);
  v11 = *(a2 + 664);
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 648) = v10;
  *(a1 + 664) = v11;
  *(a1 + 632) = v9;
  return a1;
}

void sub_4F125C(_Unwind_Exception *a1)
{
  if (*(v1 + 591) < 0)
  {
    operator delete(*v3);
  }

  sub_4EC768((v1 + 384));
  sub_1A104((v1 + 352));
  v5 = *(v1 + 328);
  if (v5)
  {
    *(v1 + 336) = v5;
    operator delete(v5);
  }

  sub_1A104((v1 + 304));
  sub_4EC90C((v1 + 272));
  sub_4EC948(v2);
  sub_4EC948(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_4F1328(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *(a1 + 24) = 0;
  *a1 = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = a2[3];
  v8 = *(a2 + 8);
  *(a1 + 72) = 0;
  *(a1 + 64) = v8;
  *(a1 + 48) = v7;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_4F14AC(a1 + 72, *(a2 + 9), *(a2 + 10), 0x8E38E38E38E38E39 * ((*(a2 + 10) - *(a2 + 9)) >> 4));
  v9 = *(a2 + 24);
  *(a1 + 104) = 0;
  *(a1 + 96) = v9;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v11 = *(a2 + 13);
  v10 = *(a2 + 14);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_4F146C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_4F14AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_4F1594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 144;
    v15 = -v12;
    do
    {
      v14 = sub_4F0FB4(v14) - 144;
      v15 += 144;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_4F1A50(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_4F15C8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = 0;
  *a1 = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = a2[1];
  v5 = a2[2];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v8 = a2[4];
  v7 = a2[5];
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (*(a2 + 79) < 0)
  {
    sub_325C((a1 + 56), a2[7], a2[8]);
  }

  else
  {
    v9 = *(a2 + 7);
    *(a1 + 72) = a2[9];
    *(a1 + 56) = v9;
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_4F1814(a1 + 80, a2[10], a2[11], 0xCCCCCCCCCCCCCCCDLL * ((a2[11] - a2[10]) >> 4));
  v10 = *(a2 + 13);
  *(a1 + 120) = 0;
  *(a1 + 104) = v10;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v12 = a2[15];
  v11 = a2[16];
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_4F1774(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
    v6 = *v2;
    if (!*v2)
    {
LABEL_4:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v6 = *v2;
    if (!*v2)
    {
      goto LABEL_4;
    }
  }

  *(v1 + 16) = v6;
  operator delete(v6);
  goto LABEL_4;
}

void sub_4F1804()
{
  if (!*v0)
  {
    JUMPOUT(0x4F17C8);
  }

  JUMPOUT(0x4F17C0);
}

void sub_4F1814(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_4F1914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_4F1934(&a11);
  *(v11 + 8) = v12;
  sub_4F19B0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_4F1934(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v7 = *(v4 - 6);
        if (v7)
        {
          *(v4 - 5) = v7;
          operator delete(v7);
        }

        v8 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
          operator delete(*v8);
        }

        v4 -= 10;
      }

      while (v8 != v5);
    }
  }

  return a1;
}

void ****sub_4F19B0(void ****a1)
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
          v6 = *(v4 - 6);
          if (v6)
          {
            *(v4 - 5) = v6;
            operator delete(v6);
          }

          v7 = v4 - 10;
          if (*(v4 - 57) < 0)
          {
            operator delete(*v7);
          }

          v4 -= 10;
        }

        while (v7 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void ***sub_4F1A50(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_4F0FB4(v4 - 144);
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

void *sub_4F1AC8(void *result, void *a2)
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

void sub_4F1BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_4F1BD8(&a11);
  *(v11 + 8) = v12;
  sub_4F1D3C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_4F1BD8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (1)
    {
      if (v3 == v4)
      {
        return a1;
      }

      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 56);
      if (v6)
      {
        break;
      }

LABEL_33:
      v17 = *(v3 - 104);
      if (v17)
      {
        *(v3 - 96) = v17;
        operator delete(v17);
      }

      v3 -= 128;
    }

    v7 = *(v3 - 48);
    v8 = *(v3 - 56);
    if (v7 == v6)
    {
LABEL_32:
      *(v3 - 48) = v6;
      operator delete(v8);
      goto LABEL_33;
    }

    while (1)
    {
      v9 = *(v7 - 24);
      if (v9)
      {
        *(v7 - 16) = v9;
        operator delete(v9);
      }

      v10 = *(v7 - 64);
      if (v10)
      {
        v11 = *(v7 - 56);
        v12 = *(v7 - 64);
        if (v11 != v10)
        {
          do
          {
            v13 = *(v11 - 6);
            if (v13)
            {
              *(v11 - 5) = v13;
              operator delete(v13);
            }

            v14 = v11 - 10;
            if (*(v11 - 57) < 0)
            {
              operator delete(*v14);
            }

            v11 -= 10;
          }

          while (v14 != v10);
          v12 = *(v7 - 64);
        }

        *(v7 - 56) = v10;
        operator delete(v12);
      }

      if (*(v7 - 65) < 0)
      {
        break;
      }

      v15 = *(v7 - 112);
      if (v15)
      {
        goto LABEL_26;
      }

LABEL_27:
      v16 = *(v7 - 136);
      if (v16)
      {
        *(v7 - 128) = v16;
        operator delete(v16);
      }

      v7 -= 144;
      if (v7 == v6)
      {
        v8 = *(v3 - 56);
        goto LABEL_32;
      }
    }

    operator delete(*(v7 - 88));
    v15 = *(v7 - 112);
    if (!v15)
    {
      goto LABEL_27;
    }

LABEL_26:
    *(v7 - 104) = v15;
    operator delete(v15);
    goto LABEL_27;
  }

  return a1;
}

void ***sub_4F1D3C(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    if (**result)
    {
      v1 = result;
      sub_4ECA7C(*result);
      operator delete(**v1);
      return v1;
    }
  }

  return result;
}

uint64_t sub_4F1D8C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v4;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v5 = a2[6];
  v6 = (v5 >> 4) & 0xFFFFFFFFFFFFFF8;
  v7 = a2[3];
  if (a2[4] == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(v7 + v6) + 32 * (a2[6] & 0x7F));
    v9 = a2[7] + v5;
    v10 = (v9 >> 4) & 0xFFFFFFFFFFFFFF8;
    v11 = v9 & 0x7F;
    if ((*(v7 + v10) + 32 * v11) != v8)
    {
      v12 = v11 - (a2[6] & 0x7F) + 16 * (v10 - v6);
      goto LABEL_6;
    }
  }

  v12 = 0;
LABEL_6:
  sub_4F206C((a1 + 16), (v7 + v6), v8, v12);
  v13 = a2[8];
  *(a1 + 72) = 0;
  *(a1 + 64) = v13;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_4F1814(a1 + 72, a2[9], a2[10], 0xCCCCCCCCCCCCCCCDLL * ((a2[10] - a2[9]) >> 4));
  v14 = *(a2 + 96);
  *(a1 + 104) = 0u;
  *(a1 + 96) = v14;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  v15 = a2[17];
  v16 = 8 * (v15 / 0xAA);
  v17 = a2[14];
  if (a2[15] == v17)
  {
    v19 = 0;
  }

  else
  {
    v18 = v15 % 0xAA;
    v19 = (*(v17 + 8 * (v15 / 0xAA)) + 24 * (v15 % 0xAA));
    v20 = a2[18] + v15;
    v21 = v20 / 0xAA;
    v22 = 8 * (v20 / 0xAA);
    v23 = v20 % 0xAA;
    if ((*(v17 + 8 * v21) + 24 * v23) != v19)
    {
      v24 = v23 - v18 + 170 * ((v22 - v16) >> 3);
      goto LABEL_11;
    }
  }

  v24 = 0;
LABEL_11:
  sub_4F28F0((a1 + 104), (v17 + v16), v19, v24);
  v25 = *(a2 + 38);
  *(a1 + 160) = 0;
  *(a1 + 152) = v25;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v27 = a2[20];
  v26 = a2[21];
  if (v26 != v27)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v26 - v27) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_4F1FEC(_Unwind_Exception *a1)
{
  sub_4F0DE8(v3);
  sub_4F0C94(v2);
  sub_4F0E40(v1);
  _Unwind_Resume(a1);
}

void sub_4F2038(_Unwind_Exception *a1)
{
  v7 = *v5;
  if (*v5)
  {
    *(v2 + 168) = v7;
    operator delete(v7);
  }

  sub_4F0D1C(v4);
  sub_4F0C94(v3);
  sub_4F0E40(v1);
  _Unwind_Resume(a1);
}

void *sub_4F206C(void *result, void *a2, __int128 *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[1];
  v9 = result[2];
  v10 = 16 * (v9 - v8) - 1;
  if (v9 == v8)
  {
    v10 = 0;
  }

  v11 = result[5];
  v12 = v11 + result[4];
  v13 = v10 - v12;
  if (a4 > v13)
  {
    result = sub_4F21F4(result, a4 - v13);
    v11 = v7[5];
    v8 = v7[1];
    v9 = v7[2];
    v12 = v7[4] + v11;
  }

  v14 = (v8 + 8 * (v12 >> 7));
  if (v9 != v8)
  {
    v15 = *v14 + 32 * (v12 & 0x7F);
    v16 = v15;
    if (a4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v18 = v14;
    goto LABEL_23;
  }

  v15 = 0;
  v16 = 0;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_7:
  v17 = a4 + ((v16 - *v14) >> 5);
  if (v17 < 1)
  {
    v19 = 127 - v17;
    v18 = &v14[-(v19 >> 7)];
    v16 = *v18 + 32 * (~v19 & 0x7F);
  }

  else
  {
    v18 = &v14[v17 >> 7];
    v16 = *v18 + 32 * (v17 & 0x7F);
  }

LABEL_23:
  while (v15 != v16)
  {
    v20 = v16;
    if (v14 != v18)
    {
      v20 = *v14 + 4096;
    }

    if (v15 == v20)
    {
      v7[5] = v11;
      if (v14 == v18)
      {
        return result;
      }
    }

    else
    {
      v21 = v15;
      do
      {
        v22 = *a3;
        v23 = a3[1];
        a3 += 2;
        *v21 = v22;
        v21[1] = v23;
        if (a3 - *a2 == "work/NaturalLanguage")
        {
          v24 = a2[1];
          ++a2;
          a3 = v24;
        }

        v21 += 2;
      }

      while (v21 != v20);
      v11 = v7[5] + ((v20 - v15) >> 5);
      v7[5] = v11;
      if (v14 == v18)
      {
        return result;
      }
    }

    v25 = v14[1];
    ++v14;
    v15 = v25;
  }

  return result;
}

void *sub_4F21F4(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x7F) != 0)
  {
    v5 = (v4 >> 7) + 1;
  }

  else
  {
    v5 = v4 >> 7;
  }

  v6 = result[4];
  if (v5 >= v6 >> 7)
  {
    v7 = v6 >> 7;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 7)
  {
    for (result[4] = v6 - (v7 << 7); v7; --v7)
    {
      v12 = v2[1];
      v14 = *v12;
      v2[1] = v12 + 1;
      result = sub_2133C(v2, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 7; v7; --v7)
    {
      v13 = v2[1];
      v14 = *v13;
      v2[1] = v13 + 1;
      result = sub_2133C(v2, &v14);
    }
  }

  return result;
}

void sub_4F2884(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4F28F0(void *result, void *a2, __int128 *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[1];
  v9 = result[2];
  v10 = 170 * ((v9 - v8) >> 3) - 1;
  if (v9 == v8)
  {
    v10 = 0;
  }

  v11 = result[5];
  v12 = v11 + result[4];
  v13 = v10 - v12;
  if (a4 > v13)
  {
    result = sub_4F2AFC(result, a4 - v13);
    v11 = v7[5];
    v8 = v7[1];
    v9 = v7[2];
    v12 = v7[4] + v11;
  }

  v14 = (v8 + 8 * (v12 / 0xAA));
  if (v9 != v8)
  {
    v15 = *v14 + 24 * (v12 % 0xAA);
    v16 = v15;
    if (a4)
    {
      goto LABEL_7;
    }

LABEL_11:
    v18 = v14;
    if (v15 != v16)
    {
      goto LABEL_14;
    }

    return result;
  }

  v15 = 0;
  v16 = 0;
  if (!a4)
  {
    goto LABEL_11;
  }

LABEL_7:
  v17 = a4 - 0x5555555555555555 * ((v16 - *v14) >> 3);
  if (v17 < 1)
  {
    v19 = 169 - v17;
    v18 = &v14[-(v19 / 0xAA)];
    v16 = *v18 + 24 * (170 * (v19 / 0xAA) - v19) + 4056;
    if (v15 != v16)
    {
      do
      {
LABEL_14:
        v20 = v16;
        if (v14 != v18)
        {
          v20 = *v14 + 4080;
        }

        if (v15 == v20)
        {
          v7[5] = v11;
          if (v14 == v18)
          {
            return result;
          }
        }

        else
        {
          v21 = v15;
          do
          {
            v22 = *a3;
            *(v21 + 16) = *(a3 + 2);
            *v21 = v22;
            a3 = (a3 + 24);
            if (a3 - *a2 == "alLanguage.framework/NaturalLanguage")
            {
              v23 = a2[1];
              ++a2;
              a3 = v23;
            }

            v21 += 24;
          }

          while (v21 != v20);
          v11 = v7[5] - 0x5555555555555555 * ((v20 - v15) >> 3);
          v7[5] = v11;
          if (v14 == v18)
          {
            return result;
          }
        }

        v24 = v14[1];
        ++v14;
        v15 = v24;
      }

      while (v24 != v16);
    }
  }

  else
  {
    v18 = &v14[v17 / 0xAAuLL];
    v16 = *v18 + 24 * (v17 % 0xAAuLL);
    if (v15 != v16)
    {
      goto LABEL_14;
    }
  }

  return result;
}

void *sub_4F2AFC(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0xAA)
  {
    v5 = v4 / 0xAA + 1;
  }

  else
  {
    v5 = v4 / 0xAA;
  }

  v6 = result[4];
  if (v5 >= v6 / 0xAA)
  {
    v7 = v6 / 0xAA;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0xAA)
  {
    for (result[4] = v6 - 170 * v7; v7; --v7)
    {
      v12 = v2[1];
      v14 = *v12;
      v2[1] = v12 + 1;
      result = sub_2133C(v2, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= 170 * v7; v7; --v7)
    {
      v13 = v2[1];
      v14 = *v13;
      v2[1] = v13 + 1;
      result = sub_2133C(v2, &v14);
    }
  }

  return result;
}

void sub_4F31B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4F3220(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 56);
    if (v5)
    {
      v6 = *(i - 48);
      v7 = *(i - 56);
      if (v6 == v5)
      {
LABEL_30:
        *(i - 48) = v5;
        operator delete(v7);
        goto LABEL_31;
      }

      while (2)
      {
        v8 = *(v6 - 24);
        if (v8)
        {
          *(v6 - 16) = v8;
          operator delete(v8);
        }

        v9 = *(v6 - 64);
        if (v9)
        {
          v10 = *(v6 - 56);
          v11 = *(v6 - 64);
          if (v10 != v9)
          {
            do
            {
              v12 = *(v10 - 6);
              if (v12)
              {
                *(v10 - 5) = v12;
                operator delete(v12);
              }

              v13 = v10 - 10;
              if (*(v10 - 57) < 0)
              {
                operator delete(*v13);
              }

              v10 -= 10;
            }

            while (v13 != v9);
            v11 = *(v6 - 64);
          }

          *(v6 - 56) = v9;
          operator delete(v11);
        }

        if (*(v6 - 65) < 0)
        {
          operator delete(*(v6 - 88));
          v14 = *(v6 - 112);
          if (v14)
          {
LABEL_24:
            *(v6 - 104) = v14;
            operator delete(v14);
          }
        }

        else
        {
          v14 = *(v6 - 112);
          if (v14)
          {
            goto LABEL_24;
          }
        }

        v15 = *(v6 - 136);
        if (v15)
        {
          *(v6 - 128) = v15;
          operator delete(v15);
        }

        v6 -= 144;
        if (v6 == v5)
        {
          v7 = *(i - 56);
          goto LABEL_30;
        }

        continue;
      }
    }

LABEL_31:
    v16 = *(i - 104);
    if (v16)
    {
      *(i - 96) = v16;
      operator delete(v16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_4F3388(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v25 = a4;
  v26 = a4;
  v23[0] = a1;
  v23[1] = &v25;
  v23[2] = &v26;
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = v6[2];
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 3);
      *(a4 + 40) = v6[5];
      v6[3] = 0;
      v6[4] = 0;
      v6[5] = 0;
      v8 = v6[8];
      *(a4 + 48) = *(v6 + 3);
      *(a4 + 64) = v8;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 9);
      *(a4 + 88) = v6[11];
      v6[10] = 0;
      v6[11] = 0;
      v6[9] = 0;
      *(a4 + 96) = *(v6 + 24);
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = 0;
      *(a4 + 104) = *(v6 + 13);
      *(a4 + 120) = v6[15];
      v6[13] = 0;
      v6[14] = 0;
      v6[15] = 0;
      v6 += 16;
      a4 += 128;
    }

    while (v6 != a3);
    v26 = a4;
    v24 = 1;
    while (1)
    {
      if (v5 == a3)
      {
        return sub_4F1BD8(v23);
      }

      v9 = v5[13];
      if (v9)
      {
        v5[14] = v9;
        operator delete(v9);
      }

      v10 = v5[9];
      if (v10)
      {
        break;
      }

LABEL_34:
      v21 = v5[3];
      if (v21)
      {
        v5[4] = v21;
        operator delete(v21);
      }

      v5 += 16;
    }

    v11 = v5[10];
    v12 = v5[9];
    if (v11 == v10)
    {
LABEL_33:
      v5[10] = v10;
      operator delete(v12);
      goto LABEL_34;
    }

    while (1)
    {
      v13 = *(v11 - 24);
      if (v13)
      {
        *(v11 - 16) = v13;
        operator delete(v13);
      }

      v14 = *(v11 - 64);
      if (v14)
      {
        v15 = *(v11 - 56);
        v16 = *(v11 - 64);
        if (v15 != v14)
        {
          do
          {
            v17 = *(v15 - 6);
            if (v17)
            {
              *(v15 - 5) = v17;
              operator delete(v17);
            }

            v18 = v15 - 10;
            if (*(v15 - 57) < 0)
            {
              operator delete(*v18);
            }

            v15 -= 10;
          }

          while (v18 != v14);
          v16 = *(v11 - 64);
        }

        *(v11 - 56) = v14;
        operator delete(v16);
      }

      if (*(v11 - 65) < 0)
      {
        break;
      }

      v19 = *(v11 - 112);
      if (v19)
      {
        goto LABEL_27;
      }

LABEL_28:
      v20 = *(v11 - 136);
      if (v20)
      {
        *(v11 - 128) = v20;
        operator delete(v20);
      }

      v11 -= 144;
      if (v11 == v10)
      {
        v12 = v5[9];
        goto LABEL_33;
      }
    }

    operator delete(*(v11 - 88));
    v19 = *(v11 - 112);
    if (!v19)
    {
      goto LABEL_28;
    }

LABEL_27:
    *(v11 - 104) = v19;
    operator delete(v19);
    goto LABEL_28;
  }

  v24 = 1;
  return sub_4F1BD8(v23);
}

uint64_t sub_4F35AC(uint64_t *a1, uint64_t a2)
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

  v18 = a1;
  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = v2 << 7;
  v15 = 0;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v7 + 96) = *(a2 + 96);
  *(v7 + 104) = *(a2 + 104);
  *(v7 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = (v2 << 7) + *a1 - v9;
  v17 = ((v2 << 7) + 128);
  sub_4F3388(a1, v8, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_4F3220(&v15);
  return v14;
}

void sub_4F3720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_4F3220(va);
  _Unwind_Resume(a1);
}

__n128 sub_4F3734(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) == *(a2 + 128))
  {
    if (*(a1 + 128))
    {
      sub_4F387C(a1, a2);
    }
  }

  else if (*(a1 + 128))
  {
    v4 = *(a1 + 104);
    if (v4)
    {
      *(a1 + 112) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 72);
    if (v5)
    {
      v6 = *(a1 + 80);
      v7 = *(a1 + 72);
      if (v6 != v5)
      {
        do
        {
          v6 = sub_4F0FB4(v6 - 144);
        }

        while (v6 != v5);
        v7 = *(a1 + 72);
      }

      *(a1 + 80) = v5;
      operator delete(v7);
    }

    v8 = *(a1 + 24);
    if (v8)
    {
      *(a1 + 32) = v8;
      operator delete(v8);
    }

    *(a1 + 128) = 0;
  }

  else
  {
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v10 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v10;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 72) = 0;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 104) = 0;
    result = *(a2 + 104);
    *(a1 + 104) = result;
    *(a1 + 120) = *(a2 + 120);
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = 0;
    *(a1 + 128) = 1;
  }

  return result;
}

uint64_t sub_4F387C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  v6 = (a1 + 24);
  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v7 = a2[3];
  v8 = (a1 + 72);
  v9 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v7;
  if (v9)
  {
    v10 = *(a1 + 80);
    v11 = v9;
    if (v10 != v9)
    {
      do
      {
        v10 = sub_4F0FB4(v10 - 144);
      }

      while (v10 != v9);
      v11 = *v8;
    }

    *(a1 + 80) = v9;
    operator delete(v11);
    *v8 = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v12 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 24);
  if (v12)
  {
    *(a1 + 112) = v12;
    operator delete(v12);
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  return a1;
}

void **sub_4F3998(void **a1)
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
        v3 -= 72;
        sub_3E4690(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_4F39FC(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = *a1;
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 6);
        if (v6)
        {
          *(v4 - 5) = v6;
          operator delete(v6);
        }

        v7 = v4 - 10;
        if (*(v4 - 57) < 0)
        {
          operator delete(*v7);
        }

        v4 -= 10;
      }

      while (v7 != v3);
      v5 = *a1;
    }

    *(a1 + 8) = v3;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_4F3AA4(uint64_t a1)
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
        v3 -= 72;
        sub_3E4690(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

char *sub_4F3B08(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 4);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 4);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

char *sub_4F3C68(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 7);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 7);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 7);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_4F3DC8(void *a1, const void **a2, char *__len, unint64_t a4)
{
  v7 = a1[5];
  if (v7 < a4)
  {
    if (v7)
    {
      v8 = v7 + ((__len - *a2) >> 5);
      if (v8 >= 1)
      {
        v9 = &a2[v8 >> 7];
        v10 = *v9 + 32 * (v8 & 0x7F);
        v11 = a1[4];
        v12 = a1[1];
        v13 = (v12 + 8 * (v11 >> 7));
        if (a1[2] == v12)
        {
          goto LABEL_15;
        }

LABEL_11:
        v21 = *v13 + 32 * (v11 & 0x7F);
LABEL_16:
        v36 = v13;
        v37 = v21;
        sub_4F4078(a2, __len, v9, v10, &v36);
        sub_4F206C(a1, v9, v10, a4 - a1[5]);
        return;
      }

      v22 = 127 - v8;
      v9 = &a2[-(v22 >> 7)];
      v10 = *v9 + 32 * (~v22 & 0x7F);
      v11 = a1[4];
      v23 = a1[1];
      v13 = (v23 + 8 * (v11 >> 7));
      if (a1[2] != v23)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = __len;
      v9 = a2;
      v11 = a1[4];
      v20 = a1[1];
      v13 = (v20 + 8 * (v11 >> 7));
      if (a1[2] != v20)
      {
        goto LABEL_11;
      }
    }

LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  v14 = a1[1];
  v15 = (v14 + 8 * (a1[4] >> 7));
  if (a1[2] != v14)
  {
    v16 = *v15 + 32 * (a1[4] & 0x7FLL);
    if (a4)
    {
      goto LABEL_8;
    }

LABEL_13:
    v19 = __len;
    v18 = a2;
    goto LABEL_18;
  }

  v16 = 0;
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = a4 + ((__len - *a2) >> 5);
  if (v17 < 1)
  {
    v24 = 127 - v17;
    v18 = &a2[-(v24 >> 7)];
    v19 = *v18 + 32 * (~v24 & 0x7F);
  }

  else
  {
    v18 = &a2[v17 >> 7];
    v19 = *v18 + 32 * (v17 & 0x7F);
  }

LABEL_18:
  v36 = v15;
  v37 = v16;
  sub_4F4078(a2, __len, v18, v19, &v36);
  v25 = a1[4];
  v26 = a1[5];
  v28 = a1[1];
  v27 = a1[2];
  v29 = (v28 + 8 * ((v25 + v26) >> 7));
  if (v27 == v28)
  {
    v30 = 0;
    if (!v37)
    {
      return;
    }
  }

  else
  {
    v30 = *v29 + 32 * ((v25 + v26) & 0x7F);
    if (v30 == v37)
    {
      return;
    }
  }

  v31 = ((v30 - *v29) >> 5) + 16 * (v29 - v36) - ((v37 - *v36) >> 5);
  if (v31 >= 1)
  {
    v32 = v27 == v28 ? 0 : 16 * (v27 - v28) - 1;
    v33 = v26 - v31;
    a1[5] = v33;
    if ((v32 - v25 - v33) >= 0x100)
    {
      do
      {
        operator delete(*(v27 - 8));
        v34 = a1[1];
        v27 = a1[2] - 8;
        a1[2] = v27;
        if (v27 == v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = 16 * (v27 - v34) - 1;
        }
      }

      while ((v35 - (a1[5] + a1[4])) > 0xFF);
    }
  }
}

const void **sub_4F4078(const void **result, char *__len, const void **a3, char *a4, uint64_t a5)
{
  v7 = __len;
  if (result == a3)
  {
    v9 = *a5;
    v8 = *(a5 + 8);
    if (__len != a4)
    {
      v11 = *v9++;
      v10 = v11;
      while (1)
      {
        v12 = (v10 - v8 + 4096) >> 5;
        if ((a4 - v7) >> 5 < v12)
        {
          v12 = (a4 - v7) >> 5;
        }

        v13 = 32 * v12;
        if (v12)
        {
          result = memmove(v8, v7, 32 * v12);
        }

        v7 += v13;
        if (v7 == a4)
        {
          break;
        }

        v14 = *v9++;
        v10 = v14;
        v8 = v14;
      }

      v8 += v13;
      if (*(v9 - 1) + 4096 != v8)
      {
        *a5 = v9 - 1;
        goto LABEL_50;
      }

      v8 = *v9;
    }

    *a5 = v9;
    goto LABEL_50;
  }

  v16 = result;
  v17 = *result + 4096;
  v18 = *a5;
  v8 = *(a5 + 8);
  if (v17 == __len)
  {
    goto LABEL_20;
  }

  v20 = *v18++;
  v19 = v20;
  while (1)
  {
    v21 = (v19 - v8 + 4096) >> 5;
    if ((v17 - v7) >> 5 < v21)
    {
      v21 = (v17 - v7) >> 5;
    }

    v22 = 32 * v21;
    if (v21)
    {
      result = memmove(v8, v7, 32 * v21);
    }

    v7 += v22;
    if (v7 == v17)
    {
      break;
    }

    v23 = *v18++;
    v19 = v23;
    v8 = v23;
  }

  v8 += v22;
  if (*(v18 - 1) + 4096 != v8)
  {
    --v18;
LABEL_20:
    *a5 = v18;
    *(a5 + 8) = v8;
    for (i = v16 + 1; i != a3; ++i)
    {
LABEL_23:
      while (1)
      {
        v25 = 0;
        v26 = *i;
        v28 = *v18++;
        v27 = v28;
        while (1)
        {
          v29 = (v27 - v8 + 4096) >> 5;
          if ((4096 - v25) >> 5 < v29)
          {
            v29 = (4096 - v25) >> 5;
          }

          v30 = 32 * v29;
          if (v29)
          {
            result = memmove(v8, &v26[v25], 32 * v29);
          }

          v25 += v30;
          if (v25 == 4096)
          {
            break;
          }

          v31 = *v18++;
          v27 = v31;
          v8 = v31;
        }

        v8 += v30;
        v32 = v18 - 1;
        if (*(v18 - 1) + 4096 != v8)
        {
          break;
        }

        v8 = *v18;
        *a5 = v18;
        *(a5 + 8) = v8;
        if (++i == a3)
        {
          goto LABEL_32;
        }
      }

      --v18;
      *a5 = v32;
      *(a5 + 8) = v8;
    }

    goto LABEL_32;
  }

  v8 = *v18;
  *a5 = v18;
  *(a5 + 8) = v8;
  i = v16 + 1;
  if (i != a3)
  {
    goto LABEL_23;
  }

LABEL_32:
  v33 = *i;
  if (*i != a4)
  {
    v35 = *v18++;
    v34 = v35;
    while (1)
    {
      v36 = (v34 - v8 + 4096) >> 5;
      if ((a4 - v33) >> 5 < v36)
      {
        v36 = (a4 - v33) >> 5;
      }

      v37 = 32 * v36;
      if (v36)
      {
        result = memmove(v8, v33, 32 * v36);
      }

      v33 += v37;
      if (v33 == a4)
      {
        break;
      }

      v38 = *v18++;
      v34 = v38;
      v8 = v38;
    }

    v8 += v37;
    if (*(v18 - 1) + 4096 == v8)
    {
      v8 = *v18;
    }

    else
    {
      --v18;
    }
  }

  *a5 = v18;
LABEL_50:
  *(a5 + 8) = v8;
  return result;
}

void sub_4F4328(void *a1, const void **a2, char *__len, unint64_t a4)
{
  v7 = a1[5];
  if (v7 >= a4)
  {
    v11 = a1[4];
    v12 = a1[1];
    v13 = (v12 + 8 * (v11 / 0xAA));
    if (a1[2] == v12)
    {
      v14 = 0;
      if (a4)
      {
LABEL_7:
        v15 = a4 - 0x5555555555555555 * ((__len - *a2) >> 3);
        if (v15 < 1)
        {
          v23 = 169 - v15;
          v16 = &a2[-(v23 / 0xAA)];
          v17 = *v16 + 24 * (170 * (v23 / 0xAA) - v23) + 4056;
        }

        else
        {
          v16 = &a2[v15 / 0xAAuLL];
          v17 = *v16 + 24 * (v15 % 0xAAuLL);
        }

        goto LABEL_18;
      }
    }

    else
    {
      v14 = *v13 + 24 * (v11 % 0xAA);
      if (a4)
      {
        goto LABEL_7;
      }
    }

    v17 = __len;
    v16 = a2;
LABEL_18:
    v24 = v13;
    v25 = v14;
    sub_4F46AC(a2, __len, v16, v17, &v24);
    sub_4F457C(a1, v24, v25);
    return;
  }

  if (v7)
  {
    v8 = v7 - 0x5555555555555555 * ((__len - *a2) >> 3);
    if (v8 < 1)
    {
      v18 = 169 - v8;
      v9 = &a2[-(v18 / 0xAA)];
      v10 = *v9 + 24 * (170 * (v18 / 0xAA) - v18) + 4056;
    }

    else
    {
      v9 = &a2[v8 / 0xAAuLL];
      v10 = *v9 + 24 * (v8 % 0xAAuLL);
    }
  }

  else
  {
    v10 = __len;
    v9 = a2;
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0xAA));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 24 * (v19 % 0xAA);
  }

  v24 = v21;
  v25 = v22;
  sub_4F46AC(a2, __len, v9, v10, &v24);
  sub_4F28F0(a1, v9, v10, a4 - a1[5]);
}

void sub_4F457C(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[1];
  v6 = a1[2];
  v8 = (v7 + 8 * ((v4 + v5) / 0xAAuLL));
  if (v6 == v7)
  {
    v9 = 0;
    if (!a3)
    {
      return;
    }
  }

  else
  {
    v9 = *v8 + 24 * ((v4 + v5) % 0xAAuLL);
    if (v9 == a3)
    {
      return;
    }
  }

  v10 = 170 * (v8 - a2) - 0x5555555555555555 * ((v9 - *v8) >> 3) + 0x5555555555555555 * ((a3 - *a2) >> 3);
  if (v10 >= 1)
  {
    v11 = v6 == v7 ? 0 : 170 * ((v6 - v7) >> 3) - 1;
    v12 = v5 - v10;
    a1[5] = v12;
    if ((v11 - (v12 + v4)) >= 0x154)
    {
      do
      {
        operator delete(*(v6 - 8));
        v6 = a1[2] - 8;
        v13 = v6 == a1[1];
        v14 = 170 * ((v6 - a1[1]) >> 3) - 1;
        a1[2] = v6;
        if (v13)
        {
          v14 = 0;
        }
      }

      while ((v14 - (a1[5] + a1[4])) > 0x153);
    }
  }
}

const void **sub_4F46AC(const void **result, char *__len, const void **a3, char *a4, uint64_t a5)
{
  v7 = __len;
  if (result == a3)
  {
    v9 = *a5;
    v8 = *(a5 + 8);
    if (__len != a4)
    {
      v11 = *v9++;
      v10 = v11;
      while (1)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v8 + 4080) >> 3);
        if ((0xAAAAAAAAAAAAAAABLL * ((a4 - v7) >> 3)) < v12)
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((a4 - v7) >> 3);
        }

        v13 = 24 * v12;
        if (v12)
        {
          result = memmove(v8, v7, 24 * v12);
        }

        v7 += v13;
        if (v7 == a4)
        {
          break;
        }

        v14 = *v9++;
        v10 = v14;
        v8 = v14;
      }

      v8 += v13;
      if (*(v9 - 1) + 4080 != v8)
      {
        *a5 = v9 - 1;
        goto LABEL_50;
      }

      v8 = *v9;
    }

    *a5 = v9;
    goto LABEL_50;
  }

  v15 = result;
  v16 = *result + 4080;
  v17 = *a5;
  v8 = *(a5 + 8);
  if (v16 == __len)
  {
    goto LABEL_20;
  }

  v19 = *v17++;
  v18 = v19;
  while (1)
  {
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v8 + 4080) >> 3);
    if ((0xAAAAAAAAAAAAAAABLL * ((v16 - v7) >> 3)) < v20)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v7) >> 3);
    }

    v21 = 24 * v20;
    if (v20)
    {
      result = memmove(v8, v7, 24 * v20);
    }

    v7 += v21;
    if (v7 == v16)
    {
      break;
    }

    v22 = *v17++;
    v18 = v22;
    v8 = v22;
  }

  v8 += v21;
  if (*(v17 - 1) + 4080 != v8)
  {
    --v17;
LABEL_20:
    *a5 = v17;
    *(a5 + 8) = v8;
    for (i = v15 + 1; i != a3; ++i)
    {
LABEL_23:
      while (1)
      {
        v24 = 0;
        v25 = *i;
        v27 = *v17++;
        v26 = v27;
        while (1)
        {
          v28 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v8 + 4080) >> 3);
          if ((0xAAAAAAAAAAAAAAABLL * ((4080 - v24) >> 3)) < v28)
          {
            v28 = 0xAAAAAAAAAAAAAAABLL * ((4080 - v24) >> 3);
          }

          v29 = 24 * v28;
          if (v28)
          {
            result = memmove(v8, &v25[v24], 24 * v28);
          }

          v24 += v29;
          if (v24 == 4080)
          {
            break;
          }

          v30 = *v17++;
          v26 = v30;
          v8 = v30;
        }

        v8 += v29;
        v31 = v17 - 1;
        if (*(v17 - 1) + 4080 != v8)
        {
          break;
        }

        v8 = *v17;
        *a5 = v17;
        *(a5 + 8) = v8;
        if (++i == a3)
        {
          goto LABEL_32;
        }
      }

      --v17;
      *a5 = v31;
      *(a5 + 8) = v8;
    }

    goto LABEL_32;
  }

  v8 = *v17;
  *a5 = v17;
  *(a5 + 8) = v8;
  i = v15 + 1;
  if (i != a3)
  {
    goto LABEL_23;
  }

LABEL_32:
  v32 = *i;
  if (*i != a4)
  {
    v34 = *v17++;
    v33 = v34;
    while (1)
    {
      v35 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v8 + 4080) >> 3);
      if ((0xAAAAAAAAAAAAAAABLL * ((a4 - v32) >> 3)) < v35)
      {
        v35 = 0xAAAAAAAAAAAAAAABLL * ((a4 - v32) >> 3);
      }

      v36 = 24 * v35;
      if (v35)
      {
        result = memmove(v8, v32, 24 * v35);
      }

      v32 += v36;
      if (v32 == a4)
      {
        break;
      }

      v37 = *v17++;
      v33 = v37;
      v8 = v37;
    }

    v8 += v36;
    if (*(v17 - 1) + 4080 == v8)
    {
      v8 = *v17;
    }

    else
    {
      --v17;
    }
  }

  *a5 = v17;
LABEL_50:
  *(a5 + 8) = v8;
  return result;
}

_BYTE *sub_4F49C4(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  result = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x492492492492492)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x249249249249249)
      {
        v11 = 0x492492492492492;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x492492492492492)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = *(a1 + 8);
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - result) >> 3) >= a4)
  {
    while (v4 != a3)
    {
      *result = *v4;
      *(result + 8) = *(v4 + 8);
      v20 = *(v4 + 24);
      *(result + 40) = *(v4 + 40);
      *(result + 24) = v20;
      v4 = (v4 + 56);
      result += 56;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v4;
        *(result + 8) = *(v4 + 8);
        v14 = *(v4 + 24);
        *(result + 40) = *(v4 + 40);
        *(result + 24) = v14;
        v4 = (v4 + 56);
        result += 56;
      }

      while (v4 != v13);
      v12 = *(a1 + 8);
    }

    v15 = v12;
    if (v13 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v13;
        v18 = v13[1];
        v19 = v13[2];
        *(v16 + 6) = *(v13 + 6);
        *(v16 + 1) = v18;
        *(v16 + 2) = v19;
        *v16 = v17;
        v16 += 56;
        v13 = (v13 + 56);
        v15 += 56;
      }

      while (v13 != a3);
    }

    *(a1 + 8) = v15;
  }

  return result;
}

uint64_t sub_4F4C14(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 16 * ((a1[1] - *a1) >> 4);
  sub_4F4DF0(v16, a2);
  v6 = 80 * v2 + 80;
  v7 = *a1;
  v8 = a1[1];
  v9 = v16 + *a1 - v8;
  if (v8 != *a1)
  {
    v10 = *a1;
    v11 = v16 + *a1 - v8;
    do
    {
      v12 = *v10;
      *(v11 + 16) = *(v10 + 2);
      *v11 = v12;
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      *(v11 + 24) = *(v10 + 6);
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 32) = 0;
      *(v11 + 32) = v10[2];
      *(v11 + 48) = *(v10 + 6);
      *(v10 + 4) = 0;
      *(v10 + 5) = 0;
      *(v10 + 6) = 0;
      v13 = *(v10 + 56);
      *(v11 + 72) = *(v10 + 9);
      *(v11 + 56) = v13;
      v10 += 5;
      v11 += 80;
    }

    while (v10 != v8);
    do
    {
      v14 = *(v7 + 32);
      if (v14)
      {
        *(v7 + 40) = v14;
        operator delete(v14);
      }

      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v7 += 80;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_4F4DDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E4D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4F4DF0(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  v5 = *(a2 + 6);
  *(a1 + 32) = 0;
  *(a1 + 24) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(a2 + 4);
  v6 = *(a2 + 5);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v8;
  return a1;
}

void sub_4F4EBC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  sub_21E1600(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_4F4EE0(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x8E38E38E38E38E39 * ((v7 - *result) >> 4) < a4)
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
          v10 = sub_4F0FB4(v10 - 144);
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

    if (a4 <= 0x1C71C71C71C71C7)
    {
      v12 = 0x8E38E38E38E38E39 * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0xE38E38E38E38E3)
      {
        v14 = 0x1C71C71C71C71C7;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x1C71C71C71C71C7)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x8E38E38E38E38E39 * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_4F5180(v8, v5);
        v5 += 144;
        v8 += 144;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    while (v15 != v8)
    {
      v15 -= 144;
      result = sub_4F0FB4(v15);
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
        result = sub_4F5180(v8, v5);
        v5 += 144;
        v8 += 144;
        v16 -= 144;
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
        result = sub_4F15C8(v15 + v19, (v17 + v19));
        v19 += 144;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_4F5154(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 144;
    v7 = -v4;
    do
    {
      v6 = sub_4F0FB4(v6) - 144;
      v7 += 144;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_4F5180(uint64_t result, uint64_t a2)
{
  v3 = result;
  *result = *a2;
  if (result == a2)
  {
    *(result + 104) = *(a2 + 104);
  }

  else
  {
    sub_31F64((result + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_4F5288((v3 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 5);
    v4 = *(a2 + 79);
    if (*(v3 + 79) < 0)
    {
      if (v4 >= 0)
      {
        v6 = (a2 + 56);
      }

      else
      {
        v6 = *(a2 + 56);
      }

      if (v4 >= 0)
      {
        v7 = *(a2 + 79);
      }

      else
      {
        v7 = *(a2 + 64);
      }

      sub_13B38(v3 + 56, v6, v7);
    }

    else if ((*(a2 + 79) & 0x80) != 0)
    {
      sub_13A68((v3 + 56), *(a2 + 56), *(a2 + 64));
    }

    else
    {
      v5 = *(a2 + 56);
      *(v3 + 72) = *(a2 + 72);
      *(v3 + 56) = v5;
    }

    sub_4F5544((v3 + 80), *(a2 + 80), *(a2 + 88), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 88) - *(a2 + 80)) >> 4));
    *(v3 + 104) = *(a2 + 104);
    sub_4F53E8((v3 + 120), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 5);
    return v3;
  }

  return result;
}

char *sub_4F5288(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 5)
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

    if (!(a4 >> 59))
    {
      v9 = v6 >> 4;
      if (v6 >> 4 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFE0;
      v11 = 0x7FFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 5)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 6);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 6);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 6);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

char *sub_4F53E8(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 5)
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

    if (!(a4 >> 59))
    {
      v9 = v6 >> 4;
      if (v6 >> 4 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFE0;
      v11 = 0x7FFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 5)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_4F5544(void ***a1, void **a2, __int128 *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 4) < a4)
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
          v12 = *(v10 - 6);
          if (v12)
          {
            *(v10 - 5) = v12;
            operator delete(v12);
          }

          v13 = v10 - 10;
          if (*(v10 - 57) < 0)
          {
            operator delete(*v13);
          }

          v10 -= 10;
        }

        while (v13 != v8);
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

    if (a4 <= 0x333333333333333)
    {
      v35 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
      v36 = 2 * v35;
      if (2 * v35 <= a4)
      {
        v36 = a4;
      }

      if (v35 >= 0x199999999999999)
      {
        v37 = 0x333333333333333;
      }

      else
      {
        v37 = v36;
      }

      if (v37 <= 0x333333333333333)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = a1[1];
  v15 = v14 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v14 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v26 = 0;
      do
      {
        v31 = &v8[v26];
        v32 = &a2[v26];
        if (a2 == v8)
        {
          *(v31 + 24) = *(v32 + 6);
        }

        else
        {
          v33 = *(v32 + 23);
          if (*(v31 + 23) < 0)
          {
            if (v33 >= 0)
            {
              v27 = &a2[v26];
            }

            else
            {
              v27 = a2[v26];
            }

            if (v33 >= 0)
            {
              v28 = *(v32 + 23);
            }

            else
            {
              v28 = a2[v26 + 1];
            }

            sub_13B38(v31, v27, v28);
          }

          else if ((*(v32 + 23) & 0x80) != 0)
          {
            sub_13A68(v31, a2[v26], a2[v26 + 1]);
          }

          else
          {
            v34 = *v32;
            *(v31 + 16) = v32[2];
            *v31 = v34;
          }

          LODWORD(v8[v26 + 3]) = a2[v26 + 3];
          sub_4F595C(&v8[v26 + 4], a2[v26 + 4], a2[v26 + 5], a2[v26 + 5] - a2[v26 + 4]);
        }

        v29 = &v8[v26];
        v30 = *&a2[v26 + 7];
        v29[9] = a2[v26 + 9];
        *(v29 + 7) = v30;
        v26 += 10;
      }

      while (&a2[v26] != a3);
      v14 = a1[1];
      v8 = (v8 + v26 * 8);
    }

    if (v14 != v8)
    {
      do
      {
        v39 = *(v14 - 48);
        if (v39)
        {
          *(v14 - 40) = v39;
          operator delete(v39);
        }

        v40 = (v14 - 80);
        if (*(v14 - 57) < 0)
        {
          operator delete(*v40);
        }

        v14 -= 80;
      }

      while (v40 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    v16 = (a2 + v15);
    if (v14 != v8)
    {
      v17 = 0;
      do
      {
        v22 = &v8[v17 / 8];
        v23 = &a2[v17 / 8];
        if (a2 == v8)
        {
          *(v22 + 24) = *(v23 + 6);
        }

        else
        {
          v24 = *(v23 + 23);
          if (*(v22 + 23) < 0)
          {
            if (v24 >= 0)
            {
              v18 = &a2[v17 / 8];
            }

            else
            {
              v18 = a2[v17 / 8];
            }

            if (v24 >= 0)
            {
              v19 = *(v23 + 23);
            }

            else
            {
              v19 = a2[v17 / 8 + 1];
            }

            sub_13B38(v22, v18, v19);
          }

          else if ((*(v23 + 23) & 0x80) != 0)
          {
            sub_13A68(v22, a2[v17 / 8], a2[v17 / 8 + 1]);
          }

          else
          {
            v25 = *v23;
            *(v22 + 16) = v23[2];
            *v22 = v25;
          }

          LODWORD(v8[v17 / 8 + 3]) = a2[v17 / 8 + 3];
          sub_4F595C(&v8[v17 / 8 + 4], a2[v17 / 8 + 4], a2[v17 / 8 + 5], a2[v17 / 8 + 5] - a2[v17 / 8 + 4]);
        }

        v20 = &v8[v17 / 8];
        v21 = *&a2[v17 / 8 + 7];
        v20[9] = a2[v17 / 8 + 9];
        *(v20 + 7) = v21;
        v17 += 80;
      }

      while (v15 != v17);
      v14 = a1[1];
    }

    v41 = v14;
    v38 = v14;
    if (v16 != a3)
    {
      v38 = v14;
      do
      {
        sub_3E4C44(v38, v16);
        v16 += 5;
        v38 = v41 + 80;
        v41 += 80;
      }

      while (v16 != a3);
    }

    a1[1] = v38;
  }
}

void sub_4F592C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_4F1934(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_4F5944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_4F1934(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

char *sub_4F595C(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = a1[1];
  v10 = v9 - result;
  if (v9 - result >= a4)
  {
    v13 = a3 - a2;
    if (a3 != a2)
    {
      v14 = result;
      memmove(result, a2, v13 - 1);
      result = v14;
    }

    a1[1] = &result[v13];
  }

  else
  {
    v11 = &a2[v10];
    if (v9 != result)
    {
      result = memmove(result, a2, v10 - 1);
      v9 = a1[1];
    }

    v12 = a3 - v11;
    if (v12)
    {
      result = memmove(v9, v11, v12 - 1);
    }

    a1[1] = &v9[v12];
  }

  return result;
}

void *sub_4F5AA8(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_4F5C0C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 48) = *(a2 + 48);
  *(v6 + 64) = *(a2 + 64);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  v7 = 72 * v2 + 72;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 40) = *(v11 + 5);
      *(v11 + 3) = 0;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      v13 = *(v11 + 3);
      *(v12 + 64) = *(v11 + 8);
      *(v12 + 48) = v13;
      *(v11 + 7) = 0;
      *(v11 + 8) = 0;
      *(v11 + 6) = 0;
      v11 += 72;
      v12 += 72;
    }

    while (v11 != v9);
    do
    {
      sub_3E4690(v8);
      v8 += 72;
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

const void **sub_4F5DE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 16 * (v2 - v1) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x80)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  *(a1 + 32) = v5 + 128;
  v11 = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_214C8(a1, &v11);
}

void sub_4F6194(_Unwind_Exception *a1)
{
  operator delete(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

_DWORD *sub_4F61D0(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  if (v4 && (v5 = *(v3 + 32), v5 < *v4))
  {
    *(v3 + 32) = v5 + 1;
    v6 = *&v4[2 * v5 + 2];
  }

  else
  {
    sub_12001D4(*(v3 + 24));
    v6 = sub_19593CC(v3 + 24, v7);
  }

  v8 = sub_3F80(a2);
  *(v6 + 16) |= 2u;
  *(v6 + 144) = v8;
  v9 = sub_4F96B8(a2);
  v10 = sub_ECA8CC(v9);
  *(v6 + 16) |= 4u;
  *(v6 + 148) = v10;
  v11 = sub_4F96C0(a2);
  v12 = sub_E84AD8(v11);
  *(v6 + 16) |= 0x1000u;
  *(v6 + 176) = v12;
  v13 = sub_4F96C8(a2);
  v14 = sub_E84AD8(v13);
  *(v6 + 16) |= 0x2000u;
  *(v6 + 180) = v14;
  v15 = sub_588D8(a2);
  *(v6 + 16) |= 0x40u;
  *(v6 + 161) = v15 & 1;
  v16 = sub_588D8(a2);
  *(v6 + 16) |= 0x80u;
  *(v6 + 162) = (v16 & 2) != 0;
  v17 = sub_588D8(a2);
  *(v6 + 16) |= 0x100u;
  *(v6 + 163) = (v17 & 4) != 0;
  v18 = sub_588D8(a2);
  *(v6 + 16) |= 0x200u;
  *(v6 + 164) = (v18 & 8) != 0;
  v19 = sub_4F96D0(a2);
  if (v19 < 0)
  {
    v20 = -5;
  }

  else
  {
    v20 = 5;
  }

  *(v6 + 16) |= 0x400u;
  *(v6 + 168) = v19 / 10 + (((103 * (v20 + v19 % 10)) >> 15) & 1) + ((103 * (v20 + v19 % 10)) >> 10);
  if (sub_4F96D8(a2) != 0x7FFFFFFF)
  {
    v21 = sub_4F96D8(a2);
    if (v21 < 0)
    {
      v22 = 65036;
    }

    else
    {
      v22 = 500;
    }

    v23 = v22 + v21 % 1000 + ((-31981 * (v22 + v21 % 1000)) >> 16);
    *(v6 + 16) |= 0x800u;
    *(v6 + 172) = v21 / 1000 + (v23 >> 9) + ((v23 & 0x8000) >> 15);
  }

  v24 = sub_73ED4(a2);
  v26 = *v24;
  v27 = v24[1];
  while (v26 != v27)
  {
    v31 = *(v6 + 128);
    if (v31 && (v32 = *(v6 + 120), v32 < *v31))
    {
      *(v6 + 120) = v32 + 1;
      v33 = *&v31[2 * v32 + 2];
      *(v33 + 16) |= 1u;
      v28 = *(v33 + 24);
      if (v28)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v34 = sub_14BE658(*(v6 + 112));
      v33 = sub_19593CC(v6 + 112, v34);
      *(v33 + 16) |= 1u;
      v28 = *(v33 + 24);
      if (v28)
      {
        goto LABEL_15;
      }
    }

    v35 = *(v33 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    v28 = sub_14BE5DC(v36);
    *(v33 + 24) = v28;
LABEL_15:
    v29 = nullsub_1(*v26);
    *(v28 + 4) |= 1u;
    v28[3] = v29;
    v30 = sub_ECB8CC(*(v26 + 8));
    *(v33 + 16) |= 2u;
    *(v33 + 32) = v30;
    v26 += 16;
  }

  v155 = v6;
  v37 = *(a2 + 72);
  v152 = a2;
  v153 = *(a2 + 80);
  if (v37 != v153)
  {
LABEL_27:
    v38 = *(v155 + 80);
    if (v38 && (v39 = *(v155 + 72), v39 < *v38))
    {
      *(v155 + 72) = v39 + 1;
      v40 = *&v38[2 * v39 + 2];
      v41 = *v37;
      if (*v37 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v42 = sub_11FFFA0(*(v155 + 64));
      v40 = sub_19593CC(v155 + 64, v42);
      v41 = *v37;
      if (*v37 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }
    }

    v43 = v41 / 100;
    v44 = v41 % 100;
    if (v41 < 0)
    {
      v45 = -50;
    }

    else
    {
      v45 = 50;
    }

    *(v40 + 16) |= 0x10u;
    *(v40 + 144) = v43 + ((5243 * (v45 + v44)) >> 19) + ((5243 * (v45 + v44)) >> 31);
LABEL_36:
    v46 = *(v37 + 8);
    v47 = *(v37 + 16);
    if (v46 != v47)
    {
      v48 = (v40 + 24);
      v49 = *(v40 + 24);
      do
      {
        while (1)
        {
          v50 = *v46;
          if (v49 == *(v40 + 28))
          {
            break;
          }

          *(*(v40 + 32) + 4 * v49++) = v50;
          *v48 = v49;
          v46 += 2;
          if (v46 == v47)
          {
            goto LABEL_41;
          }
        }

        sub_1958E5C((v40 + 24), v49 + 1);
        *(*(v40 + 32) + 4 * v49++) = v50;
        *v48 = v49;
        v46 += 2;
      }

      while (v46 != v47);
    }

LABEL_41:
    v52 = *(v37 + 32);
    v51 = *(v37 + 40);
    if (v52 == v51)
    {
LABEL_42:
      if ((*(v37 + 79) & 0x8000000000000000) != 0)
      {
        if (!*(v37 + 64))
        {
LABEL_81:
          v83 = *(v37 + 80);
          v82 = *(v37 + 88);
          while (1)
          {
            if (v83 == v82)
            {
              if (sub_4F8554((v37 + 104)))
              {
                *(v40 + 16) |= 4u;
                v101 = *(v40 + 128);
                if (!v101)
                {
                  v102 = *(v40 + 8);
                  v103 = (v102 & 0xFFFFFFFFFFFFFFFCLL);
                  if (v102)
                  {
                    v103 = *v103;
                  }

                  v101 = sub_12000E0(v103);
                  *(v40 + 128) = v101;
                }

                v104 = *(v37 + 104);
                v105 = *(v37 + 112);
                v106 = v104 / 100;
                v107 = v104 % 100;
                if (v104 < 0)
                {
                  v108 = -50;
                }

                else
                {
                  v108 = 50;
                }

                v109 = v106 + ((5243 * (v108 + v107)) >> 19) + ((5243 * (v108 + v107)) >> 31);
                v110 = v105 / 100;
                v111 = v105 % 100;
                if (v105 < 0)
                {
                  v112 = -50;
                }

                else
                {
                  v112 = 50;
                }

                v101[4] |= 3u;
                v101[6] = v109;
                v101[7] = v110 + ((5243 * (v112 + v111)) >> 19) + ((5243 * (v112 + v111)) >> 31);
              }

              v113 = a1[1];
              if (v113 != v37 + 120)
              {
                sub_4F53E8(v113, *(v37 + 120), *(v37 + 128), (*(v37 + 128) - *(v37 + 120)) >> 5);
                v113 = a1[1];
              }

              v114 = *(v113 + 8);
              v115 = 126 - 2 * __clz((v114 - *v113) >> 5);
              if (v114 == *v113)
              {
                v116 = 0;
              }

              else
              {
                v116 = v115;
              }

              v25 = sub_4F6EA4(*v113, v114, v116, 1, v100);
              v117 = a1[1];
              v118 = *v117;
              v119 = v117[1];
              if (*v117 != v119)
              {
                v120 = 0;
                v121 = -1;
                do
                {
                  v126 = *v118;
                  if (v121 != *v118)
                  {
                    v127 = *(v40 + 104);
                    if (v127 && (v128 = *(v40 + 96), v128 < *v127))
                    {
                      *(v40 + 96) = v128 + 1;
                      v120 = *&v127[2 * v128 + 2];
                    }

                    else
                    {
                      v129 = sub_11FFEF8(*(v40 + 88));
                      v120 = sub_19593CC(v40 + 88, v129);
                    }

                    *(v120 + 16) |= 1u;
                    *(v120 + 48) = v126;
                    v121 = v126;
                  }

                  v130 = *(v120 + 40);
                  if (v130 && (v131 = *(v120 + 32), v131 < *v130))
                  {
                    *(v120 + 32) = v131 + 1;
                    v123 = *&v130[2 * v131 + 2];
                  }

                  else
                  {
                    v122 = sub_11FFE78(*(v120 + 24));
                    v123 = sub_19593CC(v120 + 24, v122);
                  }

                  v124 = *(v123 + 16);
                  *(v123 + 24) = *(v118 + 8);
                  v125 = *(v118 + 24);
                  *(v123 + 32) = *(v118 + 16);
                  *(v123 + 16) = v124 | 7;
                  *(v123 + 40) = v125;
                  v118 += 32;
                }

                while (v118 != v119);
              }

              v37 += 144;
              if (v37 == v153)
              {
                goto LABEL_130;
              }

              goto LABEL_27;
            }

            v84 = *(v40 + 56);
            if (v84)
            {
              v85 = *(v40 + 48);
              if (v85 < *v84)
              {
                break;
              }
            }

            v89 = sub_11FFD20(*(v40 + 40));
            v86 = sub_19593CC(v40 + 40, v89);
            *(v86 + 16) |= 1u;
            v90 = *(v86 + 8);
            v88 = (v90 & 0xFFFFFFFFFFFFFFFCLL);
            if (v90)
            {
              goto LABEL_87;
            }

LABEL_89:
            sub_194EA1C((v86 + 48), v83, v88);
            *(v86 + 16) |= 2u;
            v91 = *(v86 + 56);
            if (!v91)
            {
              v92 = *(v86 + 8);
              v93 = (v92 & 0xFFFFFFFFFFFFFFFCLL);
              if (v92)
              {
                v93 = *v93;
              }

              v91 = sub_11FFC2C(v93);
              *(v86 + 56) = v91;
            }

            v94 = *(v83 + 24);
            *(v91 + 16) |= 1u;
            *(v91 + 24) = v94;
            v95 = *(v83 + 32);
            for (i = *(v83 + 40); v95 != i; ++v95)
            {
              while (1)
              {
                v98 = *(v86 + 40);
                if (v98)
                {
                  v99 = *(v86 + 32);
                  if (v99 < *v98)
                  {
                    break;
                  }
                }

                v97 = sub_11FFCA8(*(v86 + 24));
                sub_19593CC(v86 + 24, v97);
                if (++v95 == i)
                {
                  goto LABEL_82;
                }
              }

              *(v86 + 32) = v99 + 1;
            }

LABEL_82:
            v83 += 80;
          }

          *(v40 + 48) = v85 + 1;
          v86 = *&v84[2 * v85 + 2];
          *(v86 + 16) |= 1u;
          v87 = *(v86 + 8);
          v88 = (v87 & 0xFFFFFFFFFFFFFFFCLL);
          if ((v87 & 1) == 0)
          {
            goto LABEL_89;
          }

LABEL_87:
          v88 = *v88;
          goto LABEL_89;
        }
      }

      else if (!*(v37 + 79))
      {
        goto LABEL_81;
      }

      *(v40 + 16) |= 1u;
      v80 = *(v40 + 8);
      v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL);
      if (v80)
      {
        v81 = *v81;
      }

      sub_194EA1C((v40 + 112), (v37 + 56), v81);
      goto LABEL_81;
    }

    while (1)
    {
      *(v40 + 16) |= 2u;
      v58 = *(v40 + 120);
      if (v58)
      {
        v59 = *(v58 + 32);
        if (!v59)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v60 = *(v40 + 8);
        v61 = (v60 & 0xFFFFFFFFFFFFFFFCLL);
        if (v60)
        {
          v58 = sub_11FFB04(*v61);
          *(v40 + 120) = v58;
          v59 = *(v58 + 32);
          if (!v59)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v58 = sub_11FFB04(v61);
          *(v40 + 120) = v58;
          v59 = *(v58 + 32);
          if (!v59)
          {
            goto LABEL_55;
          }
        }
      }

      v62 = *(v58 + 24);
      if (v62 < *v59)
      {
        *(v58 + 24) = v62 + 1;
        v63 = *&v59[2 * v62 + 2];
        goto LABEL_56;
      }

LABEL_55:
      sub_11FFA80(*(v58 + 16));
      v63 = sub_19593CC(v58 + 16, v64);
LABEL_56:
      v65 = *(v63 + 16);
      *(v63 + 48) = 1;
      *(v63 + 32) = *v52;
      *(v63 + 16) = v65 | 0x13;
      v53 = *(v63 + 24);
      if (v53)
      {
        *(v53 + 40) |= 1u;
        v66 = *(v53 + 48);
        if (v66)
        {
          goto LABEL_65;
        }

LABEL_62:
        v69 = *(v53 + 8);
        v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL);
        if (v69)
        {
          v70 = *v70;
        }

        v66 = sub_16F5828(v70);
        *(v53 + 48) = v66;
        v53 = *(v63 + 24);
        goto LABEL_65;
      }

      v67 = *(v63 + 8);
      v68 = (v67 & 0xFFFFFFFFFFFFFFFCLL);
      if (v67)
      {
        v68 = *v68;
      }

      v53 = sub_16F5BD8(v68);
      *(v63 + 24) = v53;
      *(v53 + 40) |= 1u;
      v66 = *(v53 + 48);
      if (!v66)
      {
        goto LABEL_62;
      }

LABEL_65:
      LODWORD(v25) = *(v52 + 12);
      v71 = exp(*&v25 * -6.28318531 / 4294967300.0 + 3.14159265);
      v72 = atan((v71 + -1.0 / v71) * 0.5) * 57.2957795;
      *(v66 + 40) |= 1u;
      *(v66 + 48) = v72;
      *(v63 + 16) |= 1u;
      if (!v53)
      {
        v74 = *(v63 + 8);
        v75 = (v74 & 0xFFFFFFFFFFFFFFFCLL);
        if (v74)
        {
          v75 = *v75;
        }

        v53 = sub_16F5BD8(v75);
        *(v63 + 24) = v53;
        *(v53 + 40) |= 1u;
        v73 = *(v53 + 48);
        if (v73)
        {
          goto LABEL_74;
        }

LABEL_71:
        v76 = *(v53 + 8);
        v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
        if (v76)
        {
          v77 = *v77;
        }

        v73 = sub_16F5828(v77);
        *(v53 + 48) = v73;
        v53 = *(v63 + 24);
        goto LABEL_74;
      }

      *(v53 + 40) |= 1u;
      v73 = *(v53 + 48);
      if (!v73)
      {
        goto LABEL_71;
      }

LABEL_74:
      LODWORD(v72) = *(v52 + 8);
      v54 = *&v72 * 360.0 / 4294967300.0 + -180.0;
      *(v73 + 40) |= 2u;
      *(v73 + 56) = v54;
      *(v63 + 16) |= 1u;
      if (!v53)
      {
        v78 = *(v63 + 8);
        v79 = (v78 & 0xFFFFFFFFFFFFFFFCLL);
        if (v78)
        {
          v79 = *v79;
        }

        v53 = sub_16F5BD8(v79);
        *(v63 + 24) = v53;
      }

      LOWORD(v54) = *(v52 + 20);
      v25 = *&v54 / 100.0;
      *(v53 + 40) |= 0x100u;
      *(v53 + 104) = v25;
      v55 = *(v52 + 22);
      v56 = *(v63 + 16);
      *(v63 + 16) = v56 | 4;
      *(v63 + 40) = v55;
      v57 = *(v52 + 23);
      *(v63 + 16) = v56 | 0xC;
      *(v63 + 44) = v57;
      v52 += 32;
      if (v52 == v51)
      {
        goto LABEL_42;
      }
    }
  }

LABEL_130:
  sub_4C35D4(v152, &v156);
  v132 = v156;
  for (j = v157; v132 != j; v132 += 2)
  {
    v141 = *(v155 + 104);
    if (v141 && (v142 = *(v155 + 96), v142 < *v141))
    {
      *(v155 + 96) = v142 + 1;
      v135 = *&v141[2 * v142 + 2];
    }

    else
    {
      v134 = sub_1200064(*(v155 + 88));
      v135 = sub_19593CC(v155 + 88, v134);
    }

    v136 = *v132;
    v137 = *(v135 + 16);
    *(v135 + 16) = v137 | 1;
    *(v135 + 24) = v136;
    LODWORD(v136) = *(v132 + 2);
    v138 = v136 / 10;
    v139 = v136 % 10;
    if (v136 < 0)
    {
      v140 = -5;
    }

    else
    {
      v140 = 5;
    }

    *(v135 + 16) = v137 | 3;
    *(v135 + 32) = v138 + (((103 * (v140 + v139)) >> 15) & 1) + ((103 * (v140 + v139)) >> 10);
  }

  result = sub_57478(v152);
  if (*result != 0x7FFFFFFF && result[1] != 0x7FFFFFFF && *(result + 2) != 0x7FFFFFFFFFFFFFFFLL && result[2] != 0x7FFFFFFF)
  {
    v144 = sub_57478(v152);
    *(v155 + 16) |= 1u;
    result = *(v155 + 136);
    if (!result)
    {
      v145 = v144;
      v146 = *(v155 + 8);
      v147 = (v146 & 0xFFFFFFFFFFFFFFFCLL);
      if (v146)
      {
        v147 = *v147;
      }

      result = sub_1200158(v147);
      *(v155 + 136) = result;
      v144 = v145;
    }

    v148 = *v144;
    v149 = result[4];
    result[4] = v149 | 1;
    result[6] = v148;
    result[7] = *(v144 + 4);
    v150 = *(v144 + 16);
    result[4] = v149 | 0xB;
    result[9] = v150;
    v151 = *(v144 + 8);
    result[4] = v149 | 0xF;
    result[8] = v151;
  }

  return result;
}

double sub_4F6EA4(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 5;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v88 = (v12 + 32);
          v89 = *(v12 + 32);
          v91 = a2[-2].n128_i32[0];
          v86 = a2 - 2;
          v90 = v91;
          if (v89 < *v12)
          {
            if (v90 >= v89)
            {
              v188 = *v12;
              v219 = *(v12 + 16);
              v149 = *(v12 + 48);
              *v12 = *v88;
              *(v12 + 16) = v149;
              a5.n128_u64[0] = v188.n128_u64[0];
              *v88 = v188;
              *(v12 + 48) = v219;
              if (v86->n128_u32[0] >= *(v12 + 32))
              {
                return a5.n128_f64[0];
              }

              a5 = *v88;
              v93 = *(v12 + 48);
              v150 = v86[1];
              *v88 = *v86;
              *(v12 + 48) = v150;
              goto LABEL_109;
            }

LABEL_108:
            v181 = *v12;
            v214 = *(v12 + 16);
            v92 = v86[1];
            *v12 = *v86;
            *(v12 + 16) = v92;
            a5 = v181;
            v93 = v214;
LABEL_109:
            *v86 = a5;
            v86[1] = v93;
            return a5.n128_f64[0];
          }

          if (v90 >= v89)
          {
            return a5.n128_f64[0];
          }

          a5 = *v88;
          v217 = *(v12 + 48);
          v141 = v86[1];
          *v88 = *v86;
          *(v12 + 48) = v141;
          *v86 = a5;
          v86[1] = v217;
          break;
        case 4:
          v88 = (v12 + 32);
          v94 = *(v12 + 32);
          v95 = (v12 + 64);
          v96 = *(v12 + 64);
          if (v94 >= *v12)
          {
            if (v96 < v94)
            {
              v142 = *v88;
              a5 = *(v12 + 48);
              v143 = *(v12 + 80);
              *v88 = *v95;
              *(v12 + 48) = v143;
              *v95 = v142;
              *(v12 + 80) = a5;
              if (*(v12 + 32) < *v12)
              {
                v186 = *v12;
                v218 = *(v12 + 16);
                v144 = *(v12 + 48);
                *v12 = *v88;
                *(v12 + 16) = v144;
                a5.n128_u64[0] = v186.n128_u64[0];
                *v88 = v186;
                *(v12 + 48) = v218;
              }
            }
          }

          else if (v96 >= v94)
          {
            v189 = *v12;
            v220 = *(v12 + 16);
            v151 = *(v12 + 48);
            *v12 = *v88;
            *(v12 + 16) = v151;
            a5.n128_u64[0] = v189.n128_u64[0];
            *v88 = v189;
            *(v12 + 48) = v220;
            if (v96 < *(v12 + 32))
            {
              v152 = *v88;
              a5 = *(v12 + 48);
              v153 = *(v12 + 80);
              *v88 = *v95;
              *(v12 + 48) = v153;
              *v95 = v152;
              *(v12 + 80) = a5;
            }
          }

          else
          {
            v182 = *v12;
            v215 = *(v12 + 16);
            v97 = *(v12 + 80);
            *v12 = *v95;
            *(v12 + 16) = v97;
            a5.n128_u64[0] = v182.n128_u64[0];
            *v95 = v182;
            *(v12 + 80) = v215;
          }

          if (v9->n128_u32[0] >= v95->n128_u32[0])
          {
            return a5.n128_f64[0];
          }

          a5 = *v95;
          v221 = *(v12 + 80);
          v154 = a2[-1];
          *v95 = *v9;
          *(v12 + 80) = v154;
          *v9 = a5;
          a2[-1] = v221;
          if (v95->n128_u32[0] >= v88->n128_u32[0])
          {
            return a5.n128_f64[0];
          }

          v155 = *v88;
          a5 = *(v12 + 48);
          v156 = *(v12 + 80);
          *v88 = *v95;
          *(v12 + 48) = v156;
          *v95 = v155;
          *(v12 + 80) = a5;
          break;
        case 5:

          a5.n128_u64[0] = sub_4F7B18(v12, (v12 + 32), (v12 + 64), (v12 + 96), a2 - 2, a5).n128_u64[0];
          return a5.n128_f64[0];
        default:
          goto LABEL_9;
      }

      if (*(v12 + 32) < *v12)
      {
        v190 = *v12;
        v222 = *(v12 + 16);
        v157 = v88[1];
        *v12 = *v88;
        *(v12 + 16) = v157;
        a5.n128_u64[0] = v190.n128_u64[0];
        *v88 = v190;
        v88[1] = v222;
      }

      return a5.n128_f64[0];
    }

    if (v13 < 2)
    {
      return a5.n128_f64[0];
    }

    if (v13 == 2)
    {
      v87 = a2[-2].n128_u32[0];
      v86 = a2 - 2;
      if (v87 >= *v12)
      {
        return a5.n128_f64[0];
      }

      goto LABEL_108;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v98 = (v12 + 32);
      v100 = v12 == a2 || v98 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v100)
        {
          do
          {
            v145 = v98;
            v146 = *(a1 + 32);
            if (v146 < *a1)
            {
              *v187 = *(a1 + 36);
              *&v187[12] = *(a1 + 48);
              do
              {
                v147 = v98[-1];
                *v98 = v98[-2];
                v98[1] = v147;
                v148 = v98[-4].n128_u32[0];
                v98 -= 2;
              }

              while (v146 < v148);
              v98->n128_u32[0] = v146;
              a5.n128_u64[0] = *v187;
              v98[1] = *&v187[12];
              *(v98 + 4) = *v187;
            }

            v98 = v145 + 2;
            a1 = v145;
          }

          while (&v145[2] != a2);
        }

        return a5.n128_f64[0];
      }

      if (v100)
      {
        return a5.n128_f64[0];
      }

      v101 = 0;
      v102 = v12;
      while (1)
      {
        v104 = v98;
        v105 = *(v102 + 32);
        if (v105 < *v102)
        {
          *v183 = *(v102 + 36);
          *&v183[12] = *(v102 + 48);
          v106 = v101;
          do
          {
            v107 = v12 + v106;
            v108 = *(v12 + v106 + 16);
            *(v107 + 32) = *(v12 + v106);
            *(v107 + 48) = v108;
            if (!v106)
            {
              v103 = v12;
              goto LABEL_123;
            }

            v106 -= 32;
          }

          while (v105 < *(v107 - 32));
          v103 = v12 + v106 + 32;
LABEL_123:
          *v103 = v105;
          a5.n128_u64[0] = *v183;
          *(v103 + 16) = *&v183[12];
          *(v103 + 4) = *v183;
        }

        v98 = v104 + 2;
        v101 += 32;
        v102 = v104;
        if (&v104[2] == a2)
        {
          return a5.n128_f64[0];
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v14 = (v12 + 32 * (v13 >> 1));
    v15 = v14;
    v16 = v9->n128_u32[0];
    if (v13 < 0x81)
    {
      v19 = *v12;
      if (*v12 < v15->n128_u32[0])
      {
        if (v16 >= v19)
        {
          v170 = *v15;
          v200 = v15[1];
          v38 = *(v12 + 16);
          *v15 = *v12;
          v15[1] = v38;
          *v12 = v170;
          *(v12 + 16) = v200;
          if (v9->n128_u32[0] >= *v12)
          {
            goto LABEL_37;
          }

          v163 = *v12;
          v192 = *(v12 + 16);
          v39 = a2[-1];
          *v12 = *v9;
          *(v12 + 16) = v39;
        }

        else
        {
          v163 = *v15;
          v192 = v15[1];
          v20 = a2[-1];
          *v15 = *v9;
          v15[1] = v20;
        }

        *v9 = v163;
        a2[-1] = v192;
LABEL_37:
        --a3;
        v25 = *v12;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 >= v19)
      {
        goto LABEL_37;
      }

      v166 = *v12;
      v195 = *(v12 + 16);
      v23 = a2[-1];
      *v12 = *v9;
      *(v12 + 16) = v23;
      *v9 = v166;
      a2[-1] = v195;
      if (*v12 >= v15->n128_u32[0])
      {
        goto LABEL_37;
      }

      v167 = *v15;
      v196 = v15[1];
      v24 = *(v12 + 16);
      *v15 = *v12;
      v15[1] = v24;
      *v12 = v167;
      *(v12 + 16) = v196;
      --a3;
      v25 = *v12;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v12 - 32) < v25)
      {
        goto LABEL_62;
      }

      *&v160[12] = *(v12 + 16);
      *v160 = *(v12 + 4);
      if (v25 >= v9->n128_u32[0])
      {
        v79 = v12 + 32;
        do
        {
          v12 = v79;
          if (v79 >= a2)
          {
            break;
          }

          v79 += 32;
        }

        while (v25 >= *v12);
      }

      else
      {
        do
        {
          v78 = *(v12 + 32);
          v12 += 32;
        }

        while (v25 >= v78);
      }

      v80 = a2;
      if (v12 < a2)
      {
        v80 = a2;
        do
        {
          v81 = v80[-2].n128_u32[0];
          v80 -= 2;
        }

        while (v25 < v81);
      }

      while (v12 < v80)
      {
        v180 = *v12;
        v213 = *(v12 + 16);
        v82 = v80[1];
        *v12 = *v80;
        *(v12 + 16) = v82;
        *v80 = v180;
        v80[1] = v213;
        do
        {
          v83 = *(v12 + 32);
          v12 += 32;
        }

        while (v25 >= v83);
        do
        {
          v84 = v80[-2].n128_u32[0];
          v80 -= 2;
        }

        while (v25 < v84);
      }

      if (v12 - 32 != a1)
      {
        v85 = *(v12 - 16);
        *a1 = *(v12 - 32);
        *(a1 + 16) = v85;
      }

      a4 = 0;
      *(v12 - 32) = v25;
      a5 = *v160;
      *(v12 - 16) = *&v160[12];
      *(v12 - 28) = *v160;
    }

    else
    {
      v17 = v14->n128_u32[0];
      if (v14->n128_u32[0] >= *v12)
      {
        if (v16 < v17)
        {
          v164 = *v14;
          v193 = v14[1];
          v21 = a2[-1];
          *v14 = *v9;
          v14[1] = v21;
          *v9 = v164;
          a2[-1] = v193;
          if (v14->n128_u32[0] < *v12)
          {
            v165 = *v12;
            v194 = *(v12 + 16);
            v22 = v14[1];
            *v12 = *v14;
            *(v12 + 16) = v22;
            *v14 = v165;
            v14[1] = v194;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v168 = *v12;
          v197 = *(v12 + 16);
          v26 = v14[1];
          *v12 = *v14;
          *(v12 + 16) = v26;
          *v14 = v168;
          v14[1] = v197;
          if (v9->n128_u32[0] >= v14->n128_u32[0])
          {
            goto LABEL_28;
          }

          v162 = *v14;
          v191 = v14[1];
          v27 = a2[-1];
          *v14 = *v9;
          v14[1] = v27;
        }

        else
        {
          v162 = *v12;
          v191 = *(v12 + 16);
          v18 = a2[-1];
          *v12 = *v9;
          *(v12 + 16) = v18;
        }

        *v9 = v162;
        a2[-1] = v191;
      }

LABEL_28:
      v28 = (v12 + 32);
      v29 = v14 - 2;
      v30 = v14[-2].n128_u32[0];
      v31 = v10->n128_u32[0];
      if (v30 >= *(v12 + 32))
      {
        if (v31 < v30)
        {
          v169 = *v29;
          v198 = v14[-1];
          v35 = a2[-3];
          *v29 = *v10;
          v14[-1] = v35;
          *v10 = v169;
          a2[-3] = v198;
          if (v29->n128_u32[0] < v28->n128_u32[0])
          {
            v36 = *v28;
            v199 = *(v12 + 48);
            v37 = v14[-1];
            *v28 = *v29;
            *(v12 + 48) = v37;
            *v29 = v36;
            v14[-1] = v199;
          }
        }
      }

      else
      {
        if (v31 >= v30)
        {
          v40 = *v28;
          v201 = *(v12 + 48);
          v41 = v14[-1];
          *v28 = *v29;
          *(v12 + 48) = v41;
          *v29 = v40;
          v14[-1] = v201;
          if (v10->n128_u32[0] >= v29->n128_u32[0])
          {
            goto LABEL_42;
          }

          v171 = *v29;
          v202 = v14[-1];
          v42 = a2[-3];
          *v29 = *v10;
          v14[-1] = v42;
          v32 = v171;
          v33 = v202;
        }

        else
        {
          v32 = *v28;
          v33 = *(v12 + 48);
          v34 = a2[-3];
          *v28 = *v10;
          *(v12 + 48) = v34;
        }

        *v10 = v32;
        a2[-3] = v33;
      }

LABEL_42:
      v43 = (v12 + 64);
      v46 = v14[2].n128_u32[0];
      v44 = v14 + 2;
      v45 = v46;
      v47 = v11->n128_u32[0];
      if (v46 >= *(v12 + 64))
      {
        if (v47 < v45)
        {
          v172 = *v44;
          v203 = v44[1];
          v51 = a2[-5];
          *v44 = *v11;
          v44[1] = v51;
          *v11 = v172;
          a2[-5] = v203;
          if (v44->n128_u32[0] < v43->n128_u32[0])
          {
            v52 = *v43;
            v204 = *(v12 + 80);
            v53 = v44[1];
            *v43 = *v44;
            *(v12 + 80) = v53;
            *v44 = v52;
            v44[1] = v204;
          }
        }
      }

      else
      {
        if (v47 >= v45)
        {
          v54 = *v43;
          v205 = *(v12 + 80);
          v55 = v44[1];
          *v43 = *v44;
          *(v12 + 80) = v55;
          *v44 = v54;
          v44[1] = v205;
          if (v11->n128_u32[0] >= v44->n128_u32[0])
          {
            goto LABEL_51;
          }

          v173 = *v44;
          v206 = v44[1];
          v56 = a2[-5];
          *v44 = *v11;
          v44[1] = v56;
          v48 = v173;
          v49 = v206;
        }

        else
        {
          v48 = *v43;
          v49 = *(v12 + 80);
          v50 = a2[-5];
          *v43 = *v11;
          *(v12 + 80) = v50;
        }

        *v11 = v48;
        a2[-5] = v49;
      }

LABEL_51:
      v57 = v15->n128_u32[0];
      v58 = v44->n128_u32[0];
      if (v15->n128_u32[0] >= v29->n128_u32[0])
      {
        if (v58 < v57)
        {
          v175 = *v15;
          v208 = v15[1];
          v60 = v44[1];
          *v15 = *v44;
          v15[1] = v60;
          *v44 = v175;
          v44[1] = v208;
          if (v15->n128_u32[0] < v29->n128_u32[0])
          {
            v176 = *v29;
            v209 = v29[1];
            v61 = v15[1];
            *v29 = *v15;
            v29[1] = v61;
            *v15 = v176;
            v15[1] = v209;
          }
        }
      }

      else
      {
        if (v58 >= v57)
        {
          v177 = *v29;
          v210 = v29[1];
          v62 = v15[1];
          *v29 = *v15;
          v29[1] = v62;
          *v15 = v177;
          v15[1] = v210;
          if (v44->n128_u32[0] >= v15->n128_u32[0])
          {
            goto LABEL_60;
          }

          v174 = *v15;
          v207 = v15[1];
          v63 = v44[1];
          *v15 = *v44;
          v15[1] = v63;
        }

        else
        {
          v174 = *v29;
          v207 = v29[1];
          v59 = v44[1];
          *v29 = *v44;
          v29[1] = v59;
        }

        *v44 = v174;
        v44[1] = v207;
      }

LABEL_60:
      v178 = *v12;
      v211 = *(v12 + 16);
      v64 = v15[1];
      *v12 = *v15;
      *(v12 + 16) = v64;
      *v15 = v178;
      v15[1] = v211;
      --a3;
      v25 = *v12;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v65 = 0;
      *&v159[12] = *(v12 + 16);
      *v159 = *(v12 + 4);
      do
      {
        v66 = *(v12 + v65 + 32);
        v65 += 32;
      }

      while (v66 < v25);
      v67 = v12 + v65;
      v68 = a2;
      if (v65 == 32)
      {
        v68 = a2;
        do
        {
          if (v67 >= v68)
          {
            break;
          }

          v70 = v68[-2].n128_u32[0];
          v68 -= 2;
        }

        while (v70 >= v25);
      }

      else
      {
        do
        {
          v69 = v68[-2].n128_u32[0];
          v68 -= 2;
        }

        while (v69 >= v25);
      }

      v12 += v65;
      if (v67 < v68)
      {
        v71 = v68;
        do
        {
          v179 = *v12;
          v212 = *(v12 + 16);
          v72 = v71[1];
          *v12 = *v71;
          *(v12 + 16) = v72;
          *v71 = v179;
          v71[1] = v212;
          do
          {
            v73 = *(v12 + 32);
            v12 += 32;
          }

          while (v73 < v25);
          do
          {
            v74 = v71[-2].n128_u32[0];
            v71 -= 2;
          }

          while (v74 >= v25);
        }

        while (v12 < v71);
      }

      if (v12 - 32 != a1)
      {
        v75 = *(v12 - 16);
        *a1 = *(v12 - 32);
        *(a1 + 16) = v75;
      }

      *(v12 - 32) = v25;
      *(v12 - 16) = *&v159[12];
      *(v12 - 28) = *v159;
      if (v67 < v68)
      {
LABEL_81:
        sub_4F6EA4(a1, v12 - 32, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v76 = sub_4F7CA4(a1, (v12 - 32), *v159);
        if (sub_4F7CA4(v12, a2, v77))
        {
          a2 = (v12 - 32);
          if (v76)
          {
            return a5.n128_f64[0];
          }

          goto LABEL_1;
        }

        if (!v76)
        {
          goto LABEL_81;
        }
      }
    }
  }

  if (v12 == a2)
  {
    return a5.n128_f64[0];
  }

  v109 = (v13 - 2) >> 1;
  v110 = v109;
  while (2)
  {
    if (v109 >= v110)
    {
      v112 = (2 * (v110 & 0x7FFFFFFFFFFFFFFLL)) | 1;
      v113 = v12 + 32 * v112;
      if (2 * (v110 & 0x7FFFFFFFFFFFFFFLL) + 2 >= v13)
      {
        v116 = (v12 + 32 * v110);
        v117 = *v116;
        if (*v113 >= *v116)
        {
LABEL_143:
          *&v184[12] = v116[1];
          *v184 = *(v116 + 4);
          while (1)
          {
            v120 = v116;
            v116 = v113;
            v121 = *(v113 + 16);
            *v120 = *v113;
            v120[1] = v121;
            if (v109 < v112)
            {
              break;
            }

            v122 = (2 * v112) | 1;
            v113 = v12 + 32 * v122;
            v112 = 2 * v112 + 2;
            if (v112 < v13)
            {
              v118 = *v113;
              v119 = *(v113 + 32);
              if (*v113 <= v119)
              {
                v118 = *(v113 + 32);
              }

              if (*v113 >= v119)
              {
                v112 = v122;
              }

              else
              {
                v113 += 32;
              }

              if (v118 < v117)
              {
                break;
              }
            }

            else
            {
              v112 = v122;
              if (*v113 < v117)
              {
                break;
              }
            }
          }

          *v116 = v117;
          v116[1] = *&v184[12];
          *(v116 + 4) = *v184;
        }
      }

      else
      {
        v114 = *(v113 + 32);
        v115 = *v113 >= v114;
        if (*v113 > v114)
        {
          v114 = *v113;
        }

        if (!v115)
        {
          v113 += 32;
          v112 = 2 * (v110 & 0x7FFFFFFFFFFFFFFLL) + 2;
        }

        v116 = (v12 + 32 * v110);
        v117 = *v116;
        if (v114 >= *v116)
        {
          goto LABEL_143;
        }
      }
    }

    v111 = v110-- <= 0;
    if (!v111)
    {
      continue;
    }

    break;
  }

  do
  {
    v123 = 0;
    v185 = *v12;
    v216 = *(v12 + 16);
    v124 = (v13 - 2) >> 1;
    n128_u64 = v12;
    do
    {
      while (1)
      {
        v130 = &n128_u64[2 * v123];
        v128 = v130 + 2;
        v131 = (2 * v123) | 1;
        v123 = 2 * v123 + 2;
        if (v123 < v13)
        {
          break;
        }

        v123 = v131;
        v132 = v130[3];
        *n128_u64 = *v128;
        n128_u64[1] = v132;
        n128_u64 = v130[2].n128_u64;
        if (v131 > v124)
        {
          goto LABEL_163;
        }
      }

      v127 = v130[4].n128_u32[0];
      v126 = v130 + 4;
      if (v126[-2].n128_u32[0] >= v127)
      {
        v123 = v131;
      }

      else
      {
        v128 = v126;
      }

      v129 = v128[1];
      *n128_u64 = *v128;
      n128_u64[1] = v129;
      n128_u64 = v128;
    }

    while (v123 <= v124);
LABEL_163:
    a2 -= 2;
    if (v128 == a2)
    {
      a5.n128_u64[0] = v185.n128_u64[0];
      *v128 = v185;
      v128[1] = v216;
    }

    else
    {
      v133 = a2[1];
      *v128 = *a2;
      v128[1] = v133;
      a5.n128_u64[0] = v185.n128_u64[0];
      *a2 = v185;
      a2[1] = v216;
      v134 = (&v128[2] - v12) >> 5;
      v111 = v134 < 2;
      v135 = v134 - 2;
      if (!v111)
      {
        v136 = v135 >> 1;
        v137 = (v12 + 32 * v136);
        v138 = v128->n128_u32[0];
        if (v137->n128_u32[0] < v128->n128_u32[0])
        {
          *&v161[12] = v128[1];
          *v161 = *(v128 + 4);
          do
          {
            v139 = v128;
            v128 = v137;
            v140 = v137[1];
            *v139 = *v137;
            v139[1] = v140;
            if (!v136)
            {
              break;
            }

            v136 = (v136 - 1) >> 1;
            v137 = (v12 + 32 * v136);
          }

          while (v137->n128_u32[0] < v138);
          v128->n128_u32[0] = v138;
          a5.n128_u64[0] = *v161;
          v128[1] = *&v161[12];
          *(v128 + 4) = *v161;
        }
      }
    }

    v111 = v13-- <= 2;
  }

  while (!v111);
  return a5.n128_f64[0];
}

__n128 sub_4F7B18(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = a3->n128_u32[0];
  if (a2->n128_u32[0] >= a1->n128_u32[0])
  {
    if (v7 < v6)
    {
      v10 = *a2;
      result = a2[1];
      v11 = a3[1];
      *a2 = *a3;
      a2[1] = v11;
      *a3 = v10;
      a3[1] = result;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        v12 = *a1;
        result = a1[1];
        v13 = a2[1];
        *a1 = *a2;
        a1[1] = v13;
        *a2 = v12;
        a2[1] = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a1;
      result = a1[1];
      v9 = a3[1];
      *a1 = *a3;
      a1[1] = v9;
LABEL_9:
      *a3 = v8;
      a3[1] = result;
      goto LABEL_10;
    }

    v14 = *a1;
    result = a1[1];
    v15 = a2[1];
    *a1 = *a2;
    a1[1] = v15;
    *a2 = v14;
    a2[1] = result;
    if (a3->n128_u32[0] < a2->n128_u32[0])
    {
      v8 = *a2;
      result = a2[1];
      v16 = a3[1];
      *a2 = *a3;
      a2[1] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u32[0] < a3->n128_u32[0])
  {
    v17 = *a3;
    result = a3[1];
    v18 = a4[1];
    *a3 = *a4;
    a3[1] = v18;
    *a4 = v17;
    a4[1] = result;
    if (a3->n128_u32[0] < a2->n128_u32[0])
    {
      v19 = *a2;
      result = a2[1];
      v20 = a3[1];
      *a2 = *a3;
      a2[1] = v20;
      *a3 = v19;
      a3[1] = result;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        v21 = *a1;
        result = a1[1];
        v22 = a2[1];
        *a1 = *a2;
        a1[1] = v22;
        *a2 = v21;
        a2[1] = result;
      }
    }
  }

  if (a5->n128_u32[0] < a4->n128_u32[0])
  {
    v23 = *a4;
    result = a4[1];
    v24 = a5[1];
    *a4 = *a5;
    a4[1] = v24;
    *a5 = v23;
    a5[1] = result;
    if (a4->n128_u32[0] < a3->n128_u32[0])
    {
      v25 = *a3;
      result = a3[1];
      v26 = a4[1];
      *a3 = *a4;
      a3[1] = v26;
      *a4 = v25;
      a4[1] = result;
      if (a3->n128_u32[0] < a2->n128_u32[0])
      {
        v27 = *a2;
        result = a2[1];
        v28 = a3[1];
        *a2 = *a3;
        a2[1] = v28;
        *a3 = v27;
        a3[1] = result;
        if (a2->n128_u32[0] < a1->n128_u32[0])
        {
          v29 = *a1;
          result = a1[1];
          v30 = a2[1];
          *a1 = *a2;
          a1[1] = v30;
          *a2 = v29;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_4F7CA4(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 32);
      v7 = *(a1 + 32);
      v9 = a2[-2].n128_u32[0];
      v4 = a2 - 2;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v45 = *a1;
          v44 = *(a1 + 16);
          v46 = *(a1 + 48);
          *a1 = *v6;
          *(a1 + 16) = v46;
          *v6 = v45;
          *(a1 + 48) = v44;
          if (v4->n128_u32[0] >= *(a1 + 32))
          {
            return 1;
          }

          v11 = *v6;
          v10 = *(a1 + 48);
          v47 = v4[1];
          *v6 = *v4;
          *(a1 + 48) = v47;
          goto LABEL_13;
        }

LABEL_12:
        v11 = *a1;
        v10 = *(a1 + 16);
        v12 = v4[1];
        *a1 = *v4;
        *(a1 + 16) = v12;
LABEL_13:
        *v4 = v11;
        v4[1] = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v30 = *v6;
      v29 = *(a1 + 48);
      v31 = v4[1];
      *v6 = *v4;
      *(a1 + 48) = v31;
      *v4 = v30;
      v4[1] = v29;
LABEL_49:
      if (*(a1 + 32) < *a1)
      {
        v71 = *a1;
        v70 = *(a1 + 16);
        v72 = v6[1];
        *a1 = *v6;
        *(a1 + 16) = v72;
        *v6 = v71;
        v6[1] = v70;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      sub_4F7B18(a1, (a1 + 32), (a1 + 64), (a1 + 96), a2 - 2, a3);
      return 1;
    }

    v6 = (a1 + 32);
    v21 = *(a1 + 32);
    v22 = (a1 + 64);
    v23 = *(a1 + 64);
    v24 = a2 - 2;
    v25 = *a1;
    if (v21 >= *a1)
    {
      if (v23 < v21)
      {
        v39 = *v6;
        v38 = *(a1 + 48);
        v40 = *(a1 + 80);
        *v6 = *v22;
        *(a1 + 48) = v40;
        *v22 = v39;
        *(a1 + 80) = v38;
        if (v6->n128_u32[0] < v25)
        {
          v42 = *a1;
          v41 = *(a1 + 16);
          v43 = *(a1 + 48);
          *a1 = *v6;
          *(a1 + 16) = v43;
          *v6 = v42;
          *(a1 + 48) = v41;
        }
      }

      goto LABEL_46;
    }

    if (v23 >= v21)
    {
      v61 = *a1;
      v60 = *(a1 + 16);
      v62 = *(a1 + 48);
      *a1 = *v6;
      *(a1 + 16) = v62;
      *v6 = v61;
      *(a1 + 48) = v60;
      if (v23 >= *(a1 + 32))
      {
        goto LABEL_46;
      }

      v27 = *v6;
      v26 = *(a1 + 48);
      v63 = *(a1 + 80);
      *v6 = *v22;
      *(a1 + 48) = v63;
    }

    else
    {
      v27 = *a1;
      v26 = *(a1 + 16);
      v28 = *(a1 + 80);
      *a1 = *v22;
      *(a1 + 16) = v28;
    }

    *v22 = v27;
    *(a1 + 80) = v26;
LABEL_46:
    if (v24->n128_u32[0] >= v22->n128_u32[0])
    {
      return 1;
    }

    v65 = *v22;
    v64 = *(a1 + 80);
    v66 = a2[-1];
    *v22 = *v24;
    *(a1 + 80) = v66;
    *v24 = v65;
    a2[-1] = v64;
    if (v22->n128_u32[0] >= v6->n128_u32[0])
    {
      return 1;
    }

    v68 = *v6;
    v67 = *(a1 + 48);
    v69 = *(a1 + 80);
    *v6 = *v22;
    *(a1 + 48) = v69;
    *v22 = v68;
    *(a1 + 80) = v67;
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-2].n128_u32[0];
    v4 = a2 - 2;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v13 = (a1 + 64);
  v14 = *(a1 + 64);
  v15 = (a1 + 32);
  v16 = *(a1 + 32);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v33 = *v15;
      v32 = *(a1 + 48);
      v34 = *(a1 + 80);
      *v15 = *v13;
      *(a1 + 48) = v34;
      *v13 = v33;
      *(a1 + 80) = v32;
      if (v15->n128_u32[0] < v17)
      {
        v36 = *a1;
        v35 = *(a1 + 16);
        v37 = *(a1 + 48);
        *a1 = *v15;
        *(a1 + 16) = v37;
        *v15 = v36;
        *(a1 + 48) = v35;
      }
    }
  }

  else
  {
    if (v14 >= v16)
    {
      v49 = *a1;
      v48 = *(a1 + 16);
      v50 = *(a1 + 48);
      *a1 = *v15;
      *(a1 + 16) = v50;
      *v15 = v49;
      *(a1 + 48) = v48;
      if (v14 >= *(a1 + 32))
      {
        goto LABEL_33;
      }

      v19 = *v15;
      v18 = *(a1 + 48);
      v51 = *(a1 + 80);
      *v15 = *v13;
      *(a1 + 48) = v51;
    }

    else
    {
      v19 = *a1;
      v18 = *(a1 + 16);
      v20 = *(a1 + 80);
      *a1 = *v13;
      *(a1 + 16) = v20;
    }

    *v13 = v19;
    *(a1 + 80) = v18;
  }

LABEL_33:
  v52 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
    return 1;
  }

  v53 = 0;
  v54 = 0;
  while (1)
  {
    v56 = v52->n128_u32[0];
    if (v52->n128_u32[0] < v13->n128_u32[0])
    {
      *v74 = *(v52 + 4);
      *&v74[12] = v52[1];
      v57 = v53;
      do
      {
        v58 = a1 + v57;
        v59 = *(a1 + v57 + 80);
        *(v58 + 96) = *(a1 + v57 + 64);
        *(v58 + 112) = v59;
        if (v57 == -64)
        {
          v55 = a1;
          goto LABEL_36;
        }

        v57 -= 32;
      }

      while (v56 < *(v58 + 32));
      v55 = a1 + v57 + 96;
LABEL_36:
      *v55 = v56;
      *(v55 + 4) = *v74;
      *(v55 + 16) = *&v74[12];
      if (++v54 == 8)
      {
        return &v52[2] == a2;
      }
    }

    v13 = v52;
    v53 += 32;
    v52 += 2;
    if (v52 == a2)
    {
      return 1;
    }
  }
}

__int128 *sub_4F803C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 56);
    if (v5 < *v4)
    {
      *(a1 + 56) = v5 + 1;
      result = *&v4[2 * v5 + 2];
      if (result == a2)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  v7 = *(a1 + 48);
  if (!v7)
  {
    operator new();
  }

  *v9 = v8;
  v9[1] = sub_195A650;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  result = sub_19593CC(a1 + 48, v8);
  if (result != a2)
  {
LABEL_9:
    v10 = *(a2 + 23);
    if (*(result + 23) < 0)
    {
      if (v10 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if (v10 >= 0)
      {
        v13 = *(a2 + 23);
      }

      else
      {
        v13 = *(a2 + 1);
      }

      return sub_13B38(result, v12, v13);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      v14 = *a2;
      v15 = *(a2 + 1);

      return sub_13A68(result, v14, v15);
    }

    else
    {
      v11 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v11;
    }
  }

  return result;
}

__int128 *sub_4F8174(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 128);
  if (v4)
  {
    v5 = *(a1 + 120);
    if (v5 < *v4)
    {
      *(a1 + 120) = v5 + 1;
      result = *&v4[2 * v5 + 2];
      if (result == a2)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  v7 = *(a1 + 112);
  if (!v7)
  {
    operator new();
  }

  *v9 = v8;
  v9[1] = sub_195A650;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  result = sub_19593CC(a1 + 112, v8);
  if (result != a2)
  {
LABEL_9:
    v10 = *(a2 + 23);
    if (*(result + 23) < 0)
    {
      if (v10 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      if (v10 >= 0)
      {
        v13 = *(a2 + 23);
      }

      else
      {
        v13 = *(a2 + 1);
      }

      return sub_13B38(result, v12, v13);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      v14 = *a2;
      v15 = *(a2 + 1);

      return sub_13A68(result, v14, v15);
    }

    else
    {
      v11 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v11;
    }
  }

  return result;
}

void sub_4F82AC()
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
  xmmword_2790400 = 0u;
  *algn_2790410 = 0u;
  dword_2790420 = 1065353216;
  sub_3A9A34(&xmmword_2790400, v0);
  sub_3A9A34(&xmmword_2790400, v3);
  sub_3A9A34(&xmmword_2790400, __p);
  sub_3A9A34(&xmmword_2790400, v9);
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

void sub_4F847C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_2790400);
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

uint64_t sub_4F84F4(uint64_t a1, uint64_t a2)
{
  *a1 = nullsub_1(*(a2 + 24));
  *(a1 + 8) = *(a2 + 32);
  return a1;
}

uint64_t sub_4F857C(uint64_t a1, uint64_t a2)
{
  *a1 = 100 * *(a2 + 144);
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  v4 = a1 + 56;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  *(a1 + 104) = vnegq_f64(v5);
  *(a1 + 120) = 0;
  v55 = (a1 + 120);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  sub_4F8AD4((a2 + 24), (a1 + 8), sub_4F8BCC);
  v6 = *(a2 + 120);
  if (!v6)
  {
    v6 = &off_2734158;
  }

  sub_4F8BD4((v6 + 2), (a1 + 32));
  v7 = *(a2 + 112) & 0xFFFFFFFFFFFFFFFELL;
  if (v4 != v7)
  {
    v8 = *(v7 + 23);
    if (*(a1 + 79) < 0)
    {
      if (v8 >= 0)
      {
        v10 = (*(a2 + 112) & 0xFFFFFFFFFFFFFFFELL);
      }

      else
      {
        v10 = *v7;
      }

      if (v8 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = *(v7 + 8);
      }

      sub_13B38(v4, v10, v11);
    }

    else if ((*(v7 + 23) & 0x80) != 0)
    {
      sub_13A68(v4, *v7, *(v7 + 8));
    }

    else
    {
      v9 = *v7;
      *(v4 + 16) = *(v7 + 16);
      *v4 = v9;
    }
  }

  sub_4F99C8((a1 + 80), *(a2 + 48) - 0x3333333333333333 * ((*(a1 + 88) - *(a1 + 80)) >> 4));
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  if (v13)
  {
    v14 = v13 + 8;
  }

  else
  {
    v14 = 0;
  }

  if (v12)
  {
    v15 = 8 * v12;
    do
    {
      v16 = *(*v14 + 56);
      v17 = *(*v14 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (!v16)
      {
        v16 = &off_27341C0;
      }

      v18 = *(v16 + 6);
      v19 = *(*v14 + 32);
      if (*(v17 + 23) < 0)
      {
        sub_325C(v56, *v17, *(v17 + 8));
      }

      else
      {
        v20 = *v17;
        v57 = *(v17 + 16);
        *v56 = v20;
      }

      v58 = 0;
      __p[1] = 0;
      v60 = 0;
      __p[0] = 0;
      if (v19)
      {
        operator new();
      }

      *&v61 = 0;
      DWORD2(v61) = 0x7FFFFFFF;
      v62 = 0x7FFFFFFFFFFFFFFFLL;
      v58 = v18;
      v21 = *(a1 + 88);
      if (v21 >= *(a1 + 96))
      {
        v24 = sub_4F9B40((a1 + 80), v56);
        v25 = __p[0];
        *(a1 + 88) = v24;
        if (v25)
        {
          __p[1] = v25;
          operator delete(v25);
        }
      }

      else
      {
        v22 = *v56;
        *(v21 + 16) = v57;
        *v21 = v22;
        v56[1] = 0;
        v57 = 0;
        v56[0] = 0;
        *(v21 + 24) = v58;
        *(v21 + 40) = 0;
        *(v21 + 48) = 0;
        *(v21 + 32) = 0;
        *(v21 + 32) = *__p;
        *(v21 + 48) = v60;
        __p[0] = 0;
        __p[1] = 0;
        v60 = 0;
        v23 = v61;
        *(v21 + 72) = v62;
        *(v21 + 56) = v23;
        *(a1 + 88) = v21 + 80;
      }

      if (SHIBYTE(v57) < 0)
      {
        operator delete(v56[0]);
      }

      v14 += 8;
      v15 -= 8;
    }

    while (v15);
  }

  if ((*(a2 + 16) & 4) != 0)
  {
    v26 = *(a2 + 128);
    v27 = 100 * *(v26 + 24);
    v28 = 100 * *(v26 + 28);
    *(a1 + 104) = v27;
    *(a1 + 112) = v28;
  }

  v29 = *(a2 + 104);
  v30 = (v29 + 8);
  if (!v29)
  {
    v30 = 0;
  }

  v31 = *(a2 + 96);
  if (v31)
  {
    v53 = &v30[v31];
    do
    {
      v54 = v30;
      v32 = *v30;
      v33 = *(v32 + 32);
      v34 = *(v32 + 40);
      if (v34)
      {
        v35 = (v34 + 8);
      }

      else
      {
        v35 = 0;
      }

      if (v33)
      {
        v36 = *(v32 + 48);
        v37 = *(a1 + 128);
        v38 = 8 * v33;
        do
        {
          while (1)
          {
            v39 = *v35;
            v40 = (*(*v35 + 16) & 4) != 0 ? *(*v35 + 40) : 0x7FFFFFFFFFFFFFFFLL;
            v41 = *(v39 + 24);
            v42 = *(v39 + 32);
            v43 = *(a1 + 136);
            if (v37 >= v43)
            {
              break;
            }

            *v37 = v36;
            *(v37 + 8) = v41;
            *(v37 + 16) = v42;
            *(v37 + 24) = v40;
            v37 += 32;
            *(a1 + 128) = v37;
            ++v35;
            v38 -= 8;
            if (!v38)
            {
              goto LABEL_40;
            }
          }

          v44 = *v55;
          v45 = v37 - *v55;
          v46 = v45 >> 5;
          v47 = (v45 >> 5) + 1;
          if (v47 >> 59)
          {
            sub_1794();
          }

          v48 = v43 - v44;
          if (v48 >> 4 > v47)
          {
            v47 = v48 >> 4;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFE0)
          {
            v49 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            if (!(v49 >> 59))
            {
              operator new();
            }

            sub_1808();
          }

          v50 = 32 * v46;
          *v50 = v36;
          *(v50 + 8) = v41;
          *(v50 + 16) = v42;
          *(v50 + 24) = v40;
          v37 = 32 * v46 + 32;
          v51 = (v50 - 32 * (v45 >> 5));
          memcpy(v51, v44, v45);
          *(a1 + 120) = v51;
          *(a1 + 128) = v37;
          *(a1 + 136) = 0;
          if (v44)
          {
            operator delete(v44);
          }

          *(a1 + 128) = v37;
          ++v35;
          v38 -= 8;
        }

        while (v38);
      }

LABEL_40:
      v30 = v54 + 1;
    }

    while (v54 + 1 != v53);
  }

  return a1;
}

void sub_4F89FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, uint64_t a12, uint64_t a13, void **a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23)
{
  v25 = *a14;
  if (*a14)
  {
    *(v23 + 128) = v25;
    operator delete(v25);
    sub_4F0C94((v23 + 80));
    if ((*(v23 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      v26 = *(v23 + 32);
      if (!v26)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    sub_4F0C94((v23 + 80));
    if ((*(v23 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*a10);
  v26 = *(v23 + 32);
  if (!v26)
  {
LABEL_4:
    v27 = *a11;
    if (!*a11)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v23 + 40) = v26;
  operator delete(v26);
  v27 = *a11;
  if (!*a11)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  *(v23 + 16) = v27;
  operator delete(v27);
  _Unwind_Resume(a1);
}

uint64_t *sub_4F8AD4(uint64_t *result, void *a2, uint64_t (*a3)(void))
{
  v4 = *result + ((a2[1] - *a2) >> 3);
  if (v4 > (a2[2] - *a2) >> 3)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v5 = result[1];
  v6 = *result;
  v10 = a2;
  if (v6)
  {
    v7 = 4 * v6;
    do
    {
      v8 = *v5++;
      v9 = a3(v8);
      result = sub_A2324(&v10, &v9);
      v7 -= 4;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_4F8BD4(uint64_t result, void *a2)
{
  v3 = *(result + 8) + ((a2[1] - *a2) >> 5);
  if (v3 > (a2[2] - *a2) >> 5)
  {
    if (!(v3 >> 59))
    {
      operator new();
    }

    sub_1794();
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(result + 8);
  if (v6)
  {
    v7 = a2[1];
    v8 = 8 * v6;
    do
    {
      while (1)
      {
        v9 = *v5;
        if (v7 < a2[2])
        {
          break;
        }

        result = sub_4F98C4(a2, v9);
        v7 = result;
        a2[1] = result;
        ++v5;
        v8 -= 8;
        if (!v8)
        {
          return result;
        }
      }

      result = sub_4EB210(v7, v9);
      v7 += 32;
      a2[1] = v7;
      a2[1] = v7;
      ++v5;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_4F8CFC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, __int128 *a6, void *a7)
{
  *(a1 + 8) = 0;
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v10 = a3[1];
  if (v10 != *a3)
  {
    if (((v10 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v11 = a4[1] - *a4;
  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  sub_4F1814(a1 + 80, *a5, a5[1], 0xCCCCCCCCCCCCCCCDLL * ((a5[1] - *a5) >> 4));
  v12 = *a6;
  *(a1 + 120) = 0;
  *(a1 + 104) = v12;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v13 = a7[1] - *a7;
  if (v13)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_4F8E94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      v7 = *v4;
      if (!*v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 40) = v6;
  operator delete(v6);
  v7 = *v4;
  if (!*v4)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  *(v1 + 16) = v7;
  operator delete(v7);
  goto LABEL_5;
}

void sub_4F8F14()
{
  if (!*v0)
  {
    JUMPOUT(0x4F8ED8);
  }

  JUMPOUT(0x4F8ED0);
}

uint64_t sub_4F8F28(uint64_t a1)
{
  if (*(a1 + 40) - *(a1 + 32) > 0x20uLL)
  {
    return 1;
  }

  v2 = *(a1 + 79);
  if (v2 < 0)
  {
    return *(a1 + 64) != 0;
  }

  else
  {
    return v2 != 0;
  }
}

uint64_t sub_4F8F64(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

uint64_t sub_4F8F70(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 144);
  *(a1 + 4) = sub_E89380(*(a2 + 148));
  *(a1 + 5) = sub_E84AD8(*(a2 + 176));
  v4 = sub_E84AD8(*(a2 + 180));
  *(a1 + 72) = 0;
  *(a1 + 6) = v4;
  *(a1 + 16) = -NAN;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 48) = 0x8000000080000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 56) = 0x7FFFFFFF;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v5 = *(a2 + 161);
  if (*(a2 + 162))
  {
    v5 |= 2uLL;
  }

  if (*(a2 + 163))
  {
    v5 |= 4uLL;
  }

  if (*(a2 + 164))
  {
    v5 |= 8uLL;
  }

  *(a1 + 8) = v5;
  *(a1 + 16) = 10 * *(a2 + 168);
  if ((*(a2 + 16) & 0x800) != 0)
  {
    v6 = 1000 * *(a2 + 172);
  }

  else
  {
    v6 = 0x7FFFFFFF;
  }

  *(a1 + 20) = v6;
  v7 = *(a2 + 104);
  if (v7)
  {
    v8 = v7 + 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a2 + 96);
  v29 = a1 + 24;
  if (v9)
  {
    v10 = 8 * v9;
    do
    {
      v11 = 10 * *(*v8 + 32);
      *&v28 = *(*v8 + 24);
      DWORD2(v28) = v11;
      sub_4F9D20(&v29, &v28);
      v8 += 8;
      v10 -= 8;
    }

    while (v10);
  }

  if (*(a2 + 16))
  {
    v12 = *(a2 + 136);
    v13 = *(v12 + 32);
    v14 = *(v12 + 36);
    *(a1 + 48) = *(v12 + 24);
    *(a1 + 56) = v13;
    *(a1 + 64) = v14;
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  sub_4F9E4C(v16, &v16[*(a2 + 72)], (a1 + 72));
  v17 = *(a1 + 104);
  v18 = *(a2 + 120) + ((*(a1 + 112) - v17) >> 4);
  if (v18 > (*(a1 + 120) - v17) >> 4)
  {
    if (!(v18 >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v19 = *(a2 + 120);
  v20 = *(a2 + 128);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  v29 = a1 + 104;
  if (v19)
  {
    v22 = 8 * v19;
    do
    {
      v23 = *v21;
      v24 = *(*v21 + 24);
      if (!v24)
      {
        v24 = &off_27734E8;
      }

      v25 = nullsub_1(v24[3]);
      v26 = sub_E7FB84(v23);
      *&v28 = v25;
      BYTE8(v28) = v26;
      sub_4FA3B0(&v29, &v28);
      ++v21;
      v22 -= 8;
    }

    while (v22);
  }

  return a1;
}

void sub_4F9220(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 112) = v6;
    operator delete(v6);
    sub_4F0F58(v2);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_4F0F58(v2);
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 32) = v7;
  operator delete(v7);
  _Unwind_Resume(a1);
}

__n128 sub_4F927C(uint64_t *a1, uint64_t *a2)
{
  sub_4FA4DC(a2, 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 4) - 0x5555555555555555 * ((a1[1] - *a1) >> 3));
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    v7 = a2[1];
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v10 = vnegq_f64(v8);
    do
    {
      while (v7 >= a2[2])
      {
        v7 = sub_4FA5E0(a2, v5);
        a2[1] = v7;
        v5 += 24;
        if (v5 == v6)
        {
          return result;
        }
      }

      *v7 = 0x7FFFFFFFFFFFFFFFLL;
      *(v7 + 8) = 0u;
      *(v7 + 24) = 0u;
      *(v7 + 40) = 0u;
      if (*(v5 + 23) < 0)
      {
        sub_325C((v7 + 56), *v5, *(v5 + 8));
      }

      else
      {
        v9 = *v5;
        *(v7 + 72) = *(v5 + 16);
        *(v7 + 56) = v9;
      }

      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      result = v10;
      *(v7 + 104) = v10;
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(v7 + 120) = 0;
      v7 += 144;
      a2[1] = v7;
      a2[1] = v7;
      v5 += 24;
    }

    while (v5 != v6);
  }

  return result;
}

void sub_4F93B8(_Unwind_Exception *exception_object)
{
  v5 = v2[4];
  if (v5)
  {
    v2[5] = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      *(v1 + 8) = v2;
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v2[2] = v6;
  operator delete(v6);
  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_4F93FC(uint64_t a1, int a2, uint64_t *a3)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  *(a1 + 6) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -NAN;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 56) = 0x7FFFFFFF;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  *(a1 + 48) = 0x8000000080000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_4F927C(a3, (a1 + 72));
  return a1;
}

void sub_4F94A4(_Unwind_Exception *a1)
{
  v5 = v3;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 112) = v7;
    operator delete(v7);
    sub_4F0F58(v2);
    v8 = *v4;
    if (!*v4)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_4F0F58(v2);
    v8 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 32) = v8;
  operator delete(v8);
  _Unwind_Resume(a1);
}

uint64_t sub_4F94F4(uint64_t a1, int a2, char a3, uint64_t a4, char a5, char a6, int a7, int a8, int a9, void *a10, __int128 *a11, uint64_t *a12, void *a13)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 5) = a5;
  *(a1 + 6) = a6;
  *(a1 + 8) = a4;
  *(a1 + 24) = 0;
  *(a1 + 16) = a7;
  *(a1 + 20) = a8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v14 = a10[1];
  if (v14 != *a10)
  {
    if (((v14 - *a10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v15 = *a11;
  v16 = *(a11 + 2);
  *(a1 + 72) = 0;
  *(a1 + 64) = v16;
  *(a1 + 48) = v15;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_4F14AC(a1 + 72, *a12, a12[1], 0x8E38E38E38E38E39 * ((a12[1] - *a12) >> 4));
  *(a1 + 104) = 0;
  *(a1 + 96) = a9;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v17 = a13[1];
  if (v17 != *a13)
  {
    if (((v17 - *a13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_4F9648(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4F96F4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 80);
  *a2 = *(result + 72) + 144 * *(result + 96);
  a2[1] = v2;
  return result;
}

uint64_t sub_4F970C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 80);
  *a2 = *(result + 72);
  a2[1] = v2;
  return result;
}

BOOL sub_4F973C(uint64_t a1)
{
  v2 = *(a1 + 72);
  v1 = *(a1 + 80);
  if (v2 == v1)
  {
    return 1;
  }

  v3 = v2 + 144;
  do
  {
    v4 = *(v3 - 80);
    if (*(v3 - 65) >= 0)
    {
      v4 = *(v3 - 65);
    }

    result = v4 != 0;
    if (v4)
    {
      v6 = v3 == v1;
    }

    else
    {
      v6 = 1;
    }

    v3 += 144;
  }

  while (!v6);
  return result;
}

void sub_4F9780(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  if (v3 != v2)
  {
    if (0x8E38E38E38E38E39 * ((v3 - v2) >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a2;
  while (v2 != v3)
  {
    if (*(v2 + 79) < 0)
    {
      sub_325C(__p, *(v2 + 56), *(v2 + 64));
    }

    else
    {
      *__p = *(v2 + 56);
      v5 = *(v2 + 72);
    }

    sub_9A5A0(&v6, __p);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }

    v2 += 144;
  }
}

void sub_4F98A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_4F98C4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = sub_4EB210(32 * v2, a2);
  v8 = v7 + 32;
  v9 = *a1;
  v10 = *(a1 + 8) - *a1;
  v11 = v7 - v10;
  memcpy((v7 - v10), *a1, v10);
  *a1 = v11;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_4F99B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4F99C8(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_4F9B40(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v5 = 0x333333333333333;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v7 = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 56) = v7;
  v8 = 80 * v2 + 80;
  v9 = *a1;
  v10 = a1[1];
  v11 = v6 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v6 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      *(v13 + 24) = *(v12 + 6);
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 32) = v12[2];
      *(v13 + 48) = *(v12 + 6);
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      *(v12 + 6) = 0;
      v15 = *(v12 + 56);
      *(v13 + 72) = *(v12 + 9);
      *(v13 + 56) = v15;
      v12 += 5;
      v13 += 80;
    }

    while (v12 != v10);
    do
    {
      v16 = *(v9 + 32);
      if (v16)
      {
        *(v9 + 40) = v16;
        operator delete(v16);
      }

      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 += 80;
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

uint64_t *sub_4F9D20(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 4;
    v8 = (v6 >> 4) + 1;
    if (v8 >> 60)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(16 * v7) = *a2;
    v12 = 16 * v7 + 16;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

uint64_t *sub_4F9E4C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v6 = a1;
    while (1)
    {
      sub_4F857C(&v18, *v6);
      v7 = a3[1];
      if (v7 >= a3[2])
      {
        v10 = sub_4FA044(a3, &v18);
        v11 = __p[0];
        a3[1] = v10;
        if (v11)
        {
          __p[1] = v11;
          operator delete(v11);
        }
      }

      else
      {
        v8 = v18;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = v8;
        *(v7 + 8) = *v19;
        *(v7 + 24) = v20;
        v19[0] = 0;
        v19[1] = 0;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = *v21;
        *(v7 + 48) = v22;
        v20 = 0;
        v21[0] = 0;
        v21[1] = 0;
        v22 = 0;
        v9 = v23;
        *(v7 + 72) = v24;
        *(v7 + 80) = 0;
        *(v7 + 56) = v9;
        v23 = 0uLL;
        *(v7 + 88) = 0;
        *(v7 + 96) = 0;
        *(v7 + 80) = *v25;
        *(v7 + 96) = v26;
        v24 = 0;
        v25[0] = 0;
        v25[1] = 0;
        v26 = 0;
        *(v7 + 104) = v27;
        *(v7 + 120) = 0;
        *(v7 + 128) = 0;
        *(v7 + 136) = 0;
        *(v7 + 120) = *__p;
        *(v7 + 136) = v29;
        __p[0] = 0;
        __p[1] = 0;
        v29 = 0;
        a3[1] = v7 + 144;
      }

      v12 = v25[0];
      if (v25[0])
      {
        v13 = v25[1];
        v14 = v25[0];
        if (v25[1] != v25[0])
        {
          do
          {
            v15 = *(v13 - 6);
            if (v15)
            {
              *(v13 - 5) = v15;
              operator delete(v15);
            }

            v16 = (v13 - 80);
            if (*(v13 - 57) < 0)
            {
              operator delete(*v16);
            }

            v13 -= 80;
          }

          while (v16 != v12);
          v14 = v25[0];
        }

        v25[1] = v12;
        operator delete(v14);
      }

      if (SHIBYTE(v24) < 0)
      {
        break;
      }

      v17 = v21[0];
      if (v21[0])
      {
        goto LABEL_21;
      }

LABEL_22:
      if (v19[0])
      {
        v19[1] = v19[0];
        operator delete(v19[0]);
      }

      if (++v6 == a2)
      {
        return a3;
      }
    }

    operator delete(v23);
    v17 = v21[0];
    if (!v21[0])
    {
      goto LABEL_22;
    }

LABEL_21:
    v21[1] = v17;
    operator delete(v17);
    goto LABEL_22;
  }

  return a3;
}

uint64_t sub_4FA044(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v16 = a1;
  if (v5)
  {
    if (v5 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 144 * v2;
  *v6 = *a2;
  __p = 0;
  v13 = 144 * v2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v7 = *(a2 + 56);
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 56) = v7;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 96) = *(a2 + 96);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v6 + 104) = *(a2 + 104);
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v14 = 144 * v2 + 144;
  v15 = 0;
  sub_4FA214(a1, &__p);
  v8 = a1[1];
  v10 = v13;
  for (i = v14; v14 != v10; i = v14)
  {
    v14 = i - 144;
    sub_4F0FB4(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_4FA200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4FA35C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4FA214(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = a2[1] + result - v5;
    do
    {
      *v9 = *v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 8) = *(v8 + 8);
      *(v9 + 24) = *(v8 + 24);
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 32) = *(v8 + 32);
      *(v9 + 48) = *(v8 + 48);
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      v10 = *(v8 + 56);
      *(v9 + 72) = *(v8 + 72);
      *(v9 + 56) = v10;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = 0;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 96) = 0;
      *(v9 + 80) = *(v8 + 80);
      *(v9 + 96) = *(v8 + 96);
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 80) = 0;
      *(v9 + 104) = *(v8 + 104);
      *(v9 + 128) = 0;
      *(v9 + 136) = 0;
      *(v9 + 120) = 0;
      *(v9 + 120) = *(v8 + 120);
      *(v9 + 136) = *(v8 + 136);
      *(v8 + 120) = 0;
      *(v8 + 128) = 0;
      *(v8 + 136) = 0;
      v8 += 144;
      v9 += 144;
    }

    while (v8 != v5);
    do
    {
      result = sub_4F0FB4(result) + 144;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v11 = *a1;
  *a1 = v7;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}