_OWORD *sub_F78380(void *a1, unsigned int a2, _OWORD *a3)
{
  v3 = a1[6];
  v4 = a1[7];
  v5 = (a1 + 6);
  v6 = a2 + 1;
  v7 = v4 - v3;
  v8 = ((v4 - v3) >> 2) - 1;
  if (a2 + 1 < v8)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v33 = sub_2D390(exception, "outgoing arc cannot be inserted because vertices with higher index are already present in the graph", 0x63uLL);
  }

  if (v8 <= a2)
  {
    v11 = a2 + 2;
    v12 = a1[1];
    v13 = (v12 - *a1) >> 2;
    if (v11 <= v13)
    {
      if (v11 < v13)
      {
        a1[1] = *a1 + 4 * v11;
      }
    }

    else
    {
      sub_569AC(a1, v11 - v13, (v12 - 4));
      v3 = a1[6];
      v4 = a1[7];
      v7 = v4 - v3;
    }

    v14 = v7 >> 2;
    if (v11 <= v14)
    {
      if (v11 < v14)
      {
        a1[7] = v3 + 4 * v11;
      }
    }

    else
    {
      sub_569AC(v5, v11 - v14, (v4 - 4));
    }
  }

  v15 = a1[10];
  v16 = a1[11];
  if (v15 >= v16)
  {
    v21 = a1[9];
    v22 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v21) >> 4) + 1;
    if (v22 > 0x333333333333333)
    {
      sub_1794();
    }

    v23 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v21) >> 4);
    if (2 * v23 > v22)
    {
      v22 = 2 * v23;
    }

    if (v23 >= 0x199999999999999)
    {
      v24 = 0x333333333333333;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (v24 <= 0x333333333333333)
      {
        operator new();
      }

      sub_1808();
    }

    v25 = (16 * ((v15 - v21) >> 4));
    v26 = a3[3];
    v25[2] = a3[2];
    v25[3] = v26;
    v25[4] = a3[4];
    v27 = a3[1];
    *v25 = *a3;
    v25[1] = v27;
    v20 = v25 + 5;
    v28 = v25 - (v15 - v21);
    memcpy(v28, v21, v15 - v21);
    a1[9] = v28;
    a1[10] = v20;
    a1[11] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v15 = *a3;
    v17 = a3[1];
    v18 = a3[2];
    v19 = a3[4];
    *(v15 + 3) = a3[3];
    *(v15 + 4) = v19;
    *(v15 + 1) = v17;
    *(v15 + 2) = v18;
    v20 = v15 + 80;
  }

  v29 = a1[6];
  v30 = *(v29 + 4 * v6);
  a1[10] = v20;
  *(v29 + 4 * v6) = v30 + 1;
  return v20 - 5;
}

void sub_F78598(void *a1, int **a2, uint64_t a3)
{
  v7 = a1 + 3;
  v6 = a1[3];
  if (v6)
  {
    a1[4] = v6;
    operator delete(v6);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  *(a1 + 3) = *a3;
  a1[5] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v8 = *a2;
  v9 = a2[1];
  v10 = 0;
  v11 = v9 - v8;
  if (v11)
  {
    v12 = v11 >> 2;
    v13 = *a1;
    do
    {
      *v13++ = v10;
      v14 = *v8++;
      v10 += v14;
      --v12;
    }

    while (v12);
  }

  *(a1[1] - 4) = v10;
  sub_F81004(a1);
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[4] - a1[3]) >> 4) != v10)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v16 = sub_2D390(exception, "sum of in-degrees does not match the size of the incoming arc vector", 0x44uLL);
  }
}

uint64_t sub_F7868C(void *a1, unsigned int a2, __int128 *a3)
{
  v3 = a1[6];
  v4 = a1[7];
  v5 = (a1 + 6);
  v6 = a2 + 1;
  v7 = v4 - v3;
  v8 = ((v4 - v3) >> 2) - 1;
  if (a2 + 1 < v8)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v32 = sub_2D390(exception, "outgoing arc cannot be inserted because vertices with higher index are already present in the graph", 0x63uLL);
  }

  if (v8 <= a2)
  {
    v11 = a2 + 2;
    v12 = a1[1];
    v13 = (v12 - *a1) >> 2;
    if (v11 <= v13)
    {
      if (v11 < v13)
      {
        a1[1] = *a1 + 4 * v11;
      }
    }

    else
    {
      sub_569AC(a1, v11 - v13, (v12 - 4));
      v3 = a1[6];
      v4 = a1[7];
      v7 = v4 - v3;
    }

    v14 = v7 >> 2;
    if (v11 <= v14)
    {
      if (v11 < v14)
      {
        a1[7] = v3 + 4 * v11;
      }
    }

    else
    {
      sub_569AC(v5, v11 - v14, (v4 - 4));
    }
  }

  v15 = a1[10];
  v16 = a1[11];
  if (v15 >= v16)
  {
    v21 = a1[9];
    v22 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v21) >> 3) + 1;
    if (v22 > 0x492492492492492)
    {
      sub_1794();
    }

    v23 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v21) >> 3);
    if (2 * v23 > v22)
    {
      v22 = 2 * v23;
    }

    if (v23 >= 0x249249249249249)
    {
      v24 = 0x492492492492492;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (v24 <= 0x492492492492492)
      {
        operator new();
      }

      sub_1808();
    }

    v25 = 8 * ((v15 - v21) >> 3);
    v26 = a3[1];
    *v25 = *a3;
    *(v25 + 16) = v26;
    *(v25 + 32) = a3[2];
    *(v25 + 48) = *(a3 + 6);
    v20 = v25 + 56;
    v27 = (v25 - (v15 - v21));
    memcpy(v27, v21, v15 - v21);
    a1[9] = v27;
    a1[10] = v20;
    a1[11] = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    v17 = *a3;
    v18 = a3[1];
    v19 = a3[2];
    *(v15 + 48) = *(a3 + 6);
    *(v15 + 16) = v18;
    *(v15 + 32) = v19;
    *v15 = v17;
    v20 = v15 + 56;
  }

  v28 = a1[6];
  v29 = *(v28 + 4 * v6);
  a1[10] = v20;
  *(v28 + 4 * v6) = v29 + 1;
  return v20 - 56;
}

void sub_F788BC(void *a1, int **a2, uint64_t a3)
{
  v7 = a1 + 3;
  v6 = a1[3];
  if (v6)
  {
    a1[4] = v6;
    operator delete(v6);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  *(a1 + 3) = *a3;
  a1[5] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v8 = *a2;
  v9 = a2[1];
  v10 = 0;
  v11 = v9 - v8;
  if (v11)
  {
    v12 = v11 >> 2;
    v13 = *a1;
    do
    {
      *v13++ = v10;
      v14 = *v8++;
      v10 += v14;
      --v12;
    }

    while (v12);
  }

  *(a1[1] - 4) = v10;
  sub_F81004(a1);
  if (0x6DB6DB6DB6DB6DB7 * ((a1[4] - a1[3]) >> 3) != v10)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v16 = sub_2D390(exception, "sum of in-degrees does not match the size of the incoming arc vector", 0x44uLL);
  }
}

void sub_F789B8(uint64_t a1@<X0>, uint64_t *a2@<X1>, int32x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  sub_F79798(a1, a2);
  *(a1 + 128) = *(a1 + 120);
  v7 = sub_F94B90(v4);
  LODWORD(__t[0].__d_.__rep_) = -1;
  v8 = (*(a1 + 128) - *(a1 + 120)) >> 2;
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      *(a1 + 128) = *(a1 + 120) + 4 * v7;
    }
  }

  else
  {
    sub_569AC(a1 + 120, v7 - v8, __t);
  }

  v9 = sub_F94CB4(v4);
  if (sub_F94B90(v4))
  {
    operator new();
  }

  if (sub_F94B90(v4))
  {
    operator new();
  }

  v58 = a1;
  sub_F79A6C(v4, __t);
  if (v63[1] != v63[0])
  {
    if (((v63[1] - v63[0]) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v60 = a4;
  if (v65 != *(&v64 + 1))
  {
    if (((v65 - *(&v64 + 1)) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v59 = v4;
  if (v67[1] != v67[0])
  {
    if (((v67[1] - v67[0]) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v70 != v69)
  {
    if (((v70 - v69) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v69)
  {
    *&v70 = v69;
    operator delete(v69);
  }

  if (v67[0])
  {
    v67[1] = v67[0];
    operator delete(v67[0]);
  }

  if (*(&v64 + 1))
  {
    *&v65 = *(&v64 + 1);
    operator delete(*(&v64 + 1));
  }

  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }

  v10 = sub_F94B90(v4);
  if (v10)
  {
    v11 = 0;
    v12 = v10;
    do
    {
      v13 = *(2 * v11);
      v14 = sub_F94B2C(v4, v11);
      if (v13)
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15 && (v14 + v13) >= 3)
      {
        operator new();
      }

      v4 = v59;
      a4 = v60;
      ++v11;
    }

    while (v12 != v11);
  }

  sub_F7C094(a4, 0);
  *(a4 + 136) = 0;
  *(a4 + 120) = 0u;
  *(a4 + 144) = -1;
  v17 = sub_F94CB4(v4);
  v18 = 2 * v9;
  sub_F76068(a4, v9, v18, v17, 1, *(a1 + 32));
  if (*(a1 + 32) == 1)
  {
    v19 = *(a1 + 192);
    *(a1 + 200) = v19;
    if (v18 > (*(a1 + 208) - v19) >> 2)
    {
      operator new();
    }

    v20 = *(a1 + 216);
    *(a1 + 224) = v20;
    a4 = v60;
    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 232) - v20) >> 4) < v18)
    {
      operator new();
    }
  }

  v21 = *(a1 + 168);
  v22 = *(a1 + 176);
  if (v21 != v22)
  {
    do
    {
      v23 = sub_F94C54(v4, *v21);
      LOBYTE(__t[0].__d_.__rep_) = *v23;
      v24 = *(v23 + 4);
      if (v24 == -1)
      {
        v25 = 0;
      }

      else
      {
        v25 = sub_F94B9C(v4, v24);
      }

      __t[1].__d_.__rep_ = v25;
      v26 = *(v23 + 40);
      v27 = *(v23 + 56);
      v28 = *(v23 + 72);
      v68 = *(v23 + 88);
      v29 = *(v23 + 24);
      *v63 = *(v23 + 8);
      v64 = v29;
      v66 = v27;
      *v67 = v28;
      v65 = v26;
      v30 = *(v23 + 96);
      if (v30 == -1)
      {
        v31 = 0;
      }

      else
      {
        v31 = sub_F94B9C(v4, v30);
      }

      v69 = v31;
      v32 = *(v23 + 120);
      v70 = *(v23 + 104);
      v71 = v32;
      v33 = *(v23 + 136);
      v34 = *(v23 + 152);
      v35 = *(v23 + 168);
      v75 = *(v23 + 184);
      v73 = v34;
      v74 = v35;
      v72 = v33;
      sub_F75C60(a4, __t);
      ++v21;
    }

    while (v21 != v22);
    v21 = *(a1 + 168);
    v22 = *(a1 + 176);
  }

  if (v21 != v22)
  {
    v36 = 0;
    v56 = v22;
    do
    {
      v37 = *v21;
      v38 = sub_F94C54(v4, *v21);
      v39 = v38[1];
      v40 = v38[24];
      v41 = *(a4 + 48);
      v42 = *(a4 + 56);
      v43 = v42 - v41;
      if (((v42 - v41) >> 2) - 1 <= v36)
      {
        v44 = v36 + 2;
        v45 = v60[1];
        v46 = (v45 - *v60) >> 2;
        if (v44 <= v46)
        {
          if (v44 < v46)
          {
            v60[1] = *v60 + 4 * v44;
          }
        }

        else
        {
          sub_569AC(v60, v44 - v46, (v45 - 4));
          v41 = v60[6];
          v42 = v60[7];
          v43 = v42 - v41;
        }

        v47 = v43 >> 2;
        if (v44 <= v47)
        {
          if (v44 < v47)
          {
            v60[7] = v41 + 4 * v44;
          }
        }

        else
        {
          sub_569AC((v60 + 6), v44 - v47, (v42 - 4));
        }
      }

      if (v39 == -1)
      {
        v48 = 0;
        if (v40 == -1)
        {
LABEL_72:
          v49 = 0;
          goto LABEL_73;
        }
      }

      else
      {
        v48 = sub_F94B9C(v4, v39);
        if (v40 == -1)
        {
          goto LABEL_72;
        }
      }

      v49 = sub_F94B9C(v59, v40);
      v39 = v40;
LABEL_73:
      v50 = sub_F94A20(v59, v39);
      v51 = v49;
      a4 = v60;
      sub_F8686C(&v61, v48, v51, v38, v50, *(v58 + 40));
      v4 = v59;
      v52 = v60[12];
      v53 = (v60[13] - v52) >> 3;
      if (v53 <= v36)
      {
        v54 = v36 + 1;
        __t[0].__d_.__rep_ = 0;
        if (v54 <= v53)
        {
          if (v54 < v53)
          {
            v60[13] = v52 + 8 * v54;
          }
        }

        else
        {
          sub_331250((v60 + 12), v54 - v53, __t);
          v52 = v60[12];
        }
      }

      *(v52 + 8 * v36) = v61;
      if (*sub_F94C54(v59, v37) == 3)
      {
        sub_F79B1C(v58, v59, v37, v60);
      }

      else if (v40 != -1)
      {
        sub_F79C70(v58, v59, v40, v38[26], a3, v36, v60);
      }

      ++v36;
      ++v21;
    }

    while (v21 != v56);
  }

  if (*(v58 + 33))
  {
    sub_F75E68(v60);
  }

  if (*(v58 + 32) == 1)
  {
    sub_F79F84(v58, v60);
  }

  if (*(v58 + 34) == 1)
  {
    __t[0] = std::chrono::system_clock::now();
    std::chrono::system_clock::to_time_t(__t);
    *&v61 = *v58;
    DWORD2(v61) = *(v58 + 8);
    BYTE12(v61) = *(v58 + 12);
    if (*(v58 + 32) == 1)
    {
      v55 = *(v58 + 35);
    }

    else
    {
      v55 = 0;
    }

    BYTE13(v61) = v55 & 1;
    sub_F87220(__t, &v61, *(v58 + 40));
    sub_F88168(__t, v59, a3, *(v58 + 24), v60);
  }

  sub_F81004(v60);
  sub_F81004((v60 + 6));
  sub_F810FC((v60 + 3));
  sub_F810FC((v60 + 9));
}

void sub_F79684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3EE920(v20);
  if (v19)
  {
    operator delete(v19);
    if (!v21)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_3;
  }

  operator delete(v21);
  _Unwind_Resume(a1);
}

void sub_F79798(uint64_t a1, uint64_t *a2)
{
  v4 = sub_F94CB4(a2);
  v6 = *(a1 + 168);
  v5 = *(a1 + 176);
  v7 = (v5 - v6) >> 1;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      v5 = (v6 + 2 * v4);
      *(a1 + 176) = v5;
    }
  }

  else
  {
    sub_F7C1D0(a1 + 168, v4 - v7);
    v6 = *(a1 + 168);
    v5 = *(a1 + 176);
  }

  if (v6 != v5)
  {
    v8 = v5 - v6 - 2;
    if (v8 < 6)
    {
      LODWORD(v9) = 0;
      v10 = v6;
      goto LABEL_20;
    }

    v11 = (v8 >> 1) + 1;
    if (v8 >= 0x1E)
    {
      v12 = v11 & 0xFFFFFFFFFFFFFFF0;
      v14 = xmmword_22AEA30;
      v15 = v6 + 1;
      v16.i64[0] = 0x8000800080008;
      v16.i64[1] = 0x8000800080008;
      v17.i64[0] = 0x10001000100010;
      v17.i64[1] = 0x10001000100010;
      v18 = v11 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v15[-1] = v14;
        *v15 = vaddq_s16(v14, v16);
        v14 = vaddq_s16(v14, v17);
        v15 += 2;
        v18 -= 16;
      }

      while (v18);
      if (v11 == v12)
      {
        goto LABEL_21;
      }

      if ((v11 & 0xC) == 0)
      {
        v10 = (v6 + 2 * v12);
        LODWORD(v9) = v11 & 0xFFFFFFF0;
        do
        {
LABEL_20:
          v10->i16[0] = v9;
          v10 = (v10 + 2);
          LODWORD(v9) = v9 + 1;
        }

        while (v10 != v5);
        goto LABEL_21;
      }

      v13 = v11 & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      LODWORD(v12) = 0;
      v13 = 0;
    }

    v9 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (v6 + 2 * (v11 & 0xFFFFFFFFFFFFFFFCLL));
    v19 = vadd_s16(vdup_n_s16(v12), 0x3000200010000);
    v20 = (v6 + 2 * v13);
    v21 = v13 - (v11 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v20++ = v19;
      v19 = vadd_s16(v19, 0x4000400040004);
      v21 += 4;
    }

    while (v21);
    if (v11 != v9)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v22 = sub_F94CB4(a2);
  v24 = *(a1 + 144);
  v23 = *(a1 + 152);
  v25 = (v23 - v24) >> 1;
  if (v22 <= v25)
  {
    if (v22 < v25)
    {
      v23 = (v24 + 2 * v22);
      *(a1 + 152) = v23;
    }
  }

  else
  {
    sub_F7C1D0(a1 + 144, v22 - v25);
    v24 = *(a1 + 144);
    v23 = *(a1 + 152);
  }

  if (v24 != v23)
  {
    v26 = v23 - v24 - 2;
    if (v26 < 6)
    {
      LODWORD(v27) = 0;
      v28 = v24;
      goto LABEL_40;
    }

    v29 = (v26 >> 1) + 1;
    if (v26 >= 0x1E)
    {
      v30 = v29 & 0xFFFFFFFFFFFFFFF0;
      v32 = xmmword_22AEA30;
      v33 = v24 + 1;
      v34.i64[0] = 0x8000800080008;
      v34.i64[1] = 0x8000800080008;
      v35.i64[0] = 0x10001000100010;
      v35.i64[1] = 0x10001000100010;
      v36 = v29 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v33[-1] = v32;
        *v33 = vaddq_s16(v32, v34);
        v32 = vaddq_s16(v32, v35);
        v33 += 2;
        v36 -= 16;
      }

      while (v36);
      if (v29 == v30)
      {
        goto LABEL_41;
      }

      if ((v29 & 0xC) == 0)
      {
        v28 = (v24 + 2 * v30);
        LODWORD(v27) = v29 & 0xFFFFFFF0;
        do
        {
LABEL_40:
          v28->i16[0] = v27;
          v28 = (v28 + 2);
          LODWORD(v27) = v27 + 1;
        }

        while (v28 != v23);
        goto LABEL_41;
      }

      v31 = v29 & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      LODWORD(v30) = 0;
      v31 = 0;
    }

    v27 = v29 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = (v24 + 2 * (v29 & 0xFFFFFFFFFFFFFFFCLL));
    v37 = vadd_s16(vdup_n_s16(v30), 0x3000200010000);
    v38 = (v24 + 2 * v31);
    v39 = v31 - (v29 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v38++ = v37;
      v37 = vadd_s16(v37, 0x4000400040004);
      v39 += 4;
    }

    while (v39);
    if (v29 != v27)
    {
      goto LABEL_40;
    }
  }

LABEL_41:
  if (*(a1 + 33) == 1)
  {
    v40 = *(a1 + 168);
    v41 = *(a1 + 176);
    v42 = 126 - 2 * __clz((v41 - v40) >> 1);
    v50 = a2;
    if (v41 == v40)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    sub_F82738(v40, v41, &v50, v43, 1);
    v44 = *(a1 + 144);
    v45 = *(a1 + 152);
    v46 = v45 - v44;
    if (v45 != v44)
    {
      v47 = 0;
      v48 = v46 >> 1;
      v49 = *(a1 + 168);
      do
      {
        *(v44 + 2 * *(v49 + 2 * v47)) = v47;
        ++v47;
      }

      while (v48 != v47);
    }
  }
}

void sub_F79A6C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_F94438(a1, &v9);
  sub_F946F8(a1, &v4);
  sub_F7ED34(a2, &v9);
  sub_F7ED34(a2 + 64, &v4);
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

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_F79B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_334D18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F79B1C(uint64_t a1, void *a2, unsigned __int16 a3, void *a4)
{
  v6 = a3;
  v7 = sub_F94C54(a2, a3);
  v8 = sub_F94B9C(a2, *(v7 + 4));
  v19 = v6;
  result = sub_F94EAC(a2, v6, &v30);
  v11 = v30;
  for (i = v31; v11 != i; ++v11)
  {
    v12 = *v11;
    v13 = sub_F94C54(a2, *v11);
    v14 = sub_F94B9C(a2, *(v13 + 96));
    sub_F85884(v29);
    sub_F85EB0(v29, v8, (v7 + 8), v14, (v13 + 104), a1 + 48);
    result = sub_F85894(v29);
    if (result)
    {
      v15 = *(a1 + 144);
      v16 = *(v15 + 2 * v19);
      LODWORD(v15) = *(v15 + 2 * v12);
      v22 = v29[0];
      v17 = *(v7 + 4);
      v18 = *(v13 + 96);
      v23 = v29[1];
      v24 = v29[2];
      v21 = v15;
      v25 = 0x7FFFFFFF;
      v26 = v17;
      v27 = v18;
      v28 = 0;
      result = sub_F78380(a4, v16, &v21);
    }
  }

  return result;
}

void *sub_F79C70(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, int32x2_t *a5, unsigned int a6, void *a7)
{
  sub_F85884(v43);
  if (!sub_F75E1C(a7, a6) || (v14 = sub_F75E48(a7, a6), sub_F858F4(v43, v14, 0, a5, *(a1 + 16)), result = sub_F85894(v43), result))
  {
    v28 = a7;
    sub_F7A178(a1, a2, a3, a3, a4, a6, 0, a5, v43, a7);
    sub_F9495C(a2, a3, v29);
    v27 = a3;
    result = sub_F94A68(a2, a3, &v41);
    v40 = *&v29[16];
    v39 = *v29;
    v16 = *&v29[16];
    v26 = v42;
    if (*&v29[16] != v42)
    {
      v25 = 1000000000 - a4;
      v23 = *(&v39 + 1);
      v24 = v39;
      v17 = a3;
      do
      {
        v18 = (*v24 + 104 * v16);
        v36 = v43[0];
        v37 = v43[1];
        v38 = v43[2];
        sub_F85CFC(&v36, v18, v25, a5, *(a1 + 16), *(a1 + 12), *(a1 + 40));
        v19 = *v18;
        v20 = *(*(a1 + 120) + 4 * v19);
        if (sub_F85894(&v36))
        {
          while (v20 == -1)
          {
            sub_F7A178(a1, a2, v27, v19, 0, a6, v18, a5, &v36, v28);
            if (v19 == v17)
            {
              v20 = -1;
              LODWORD(v19) = v17;
              break;
            }

            sub_F9495C(a2, v19, &v44);
            sub_F94A68(a2, v19, &v30);
            *&v29[16] = v45;
            *v29 = v44;
            if (v45 == v31)
            {
              v20 = -1;
              result = sub_F85894(&v36);
              if (result)
              {
                goto LABEL_15;
              }

              goto LABEL_6;
            }

            v21 = (**v29 + 104 * v45);
            sub_F85CFC(&v36, v21, 0x3B9ACA00u, a5, *(a1 + 16), *(a1 + 12), *(a1 + 40));
            v19 = *v21;
            v20 = *(*(a1 + 120) + 4 * v19);
            if (!sub_F85894(&v36))
            {
              break;
            }
          }
        }

        result = sub_F85894(&v36);
        if (result)
        {
LABEL_15:
          if (v20 != -1 && v20 != a6)
          {
            *&v29[8] = v36;
            v30 = v37;
            v31 = v38;
            *v29 = v20;
            v32 = 0x7FFFFFFF;
            v33 = v17;
            v34 = v19;
            v35 = v18;
            result = sub_F78380(v28, a6, v29);
          }
        }

LABEL_6:
        v16 = *(*v23 + 4 * v16);
      }

      while (v16 != v26);
    }
  }

  return result;
}

void sub_F79F84(uint64_t a1, void *a2)
{
  v4 = a2[7] - a2[6];
  v26 = 0;
  v27 = 0;
  __p = 0;
  if ((v4 >> 2) != 1)
  {
    operator new();
  }

  v5 = ((v4 << 30) - 0x100000000) >> 32;
  if (v5)
  {
    v13 = 0;
    do
    {
      v14 = v13 + 1;
      v15 = a2[6];
      if (v14 >= (a2[7] - v15) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v24 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v16 = v13;
      v17 = *(v15 + 4 * v13);
      v18 = *(v15 + 4 * v14);
      if (v17 != v18)
      {
        v19 = a2[9];
        v20 = (v19 + 80 * v18);
        v21 = (v19 + 80 * v17);
        do
        {
          sub_F77EBC(a1 + 192, v16, v21);
          v22 = *v21;
          v21 += 20;
          ++*(4 * v22);
        }

        while (v21 != v20);
      }

      v13 = v16 + 1;
    }

    while (v16 + 1 != v5);
  }

  v8 = *(a1 + 216);
  v7 = a1 + 216;
  v6 = v8;
  v9 = *(v7 - 24);
  v10 = *(v7 - 16);
  v11 = 126 - 2 * __clz((v10 - v9) >> 2);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_F7C320(v9, v6, v10, *(v7 + 8), &v28, v12, 1);
  sub_F78598(a2, &__p, v7);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }
}

void sub_F7A150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    v10 = a1;
    operator delete(__p);
    a1 = v10;
  }

  _Unwind_Resume(a1);
}

void sub_F7A178(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, __int128 *a9, void *a10)
{
  if (sub_F94BF8(a2, a4))
  {
    v37 = a3;
    v38 = a7;
    v17 = sub_3AF6B4(**(a1 + 40));
    v18 = sub_F94B9C(a2, a4);
    v19 = HIDWORD(v18);
    v20 = HIDWORD(v18) & 0xFFFF0000FFFFFFFFLL | (WORD1(v18) << 32);
    v39 = ((HIDWORD(v18) & 0xFFFE0000FFFFFFFFLL | (WORD1(v18) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v18 >> 1) & 1) << 48)) ^ 0x1000000000000);
    v21 = sub_2B51D8(v17, v20);
    if (*(v17 + 7772) == 1)
    {
      v22 = v18 << 16;
      v23 = sub_30C50C(v17 + 3896, v19, 0);
      v24 = &v23[-*v23];
      if (*v24 < 5u)
      {
        v25 = 0;
      }

      else
      {
        v25 = *(v24 + 2);
        if (v25)
        {
          v25 += &v23[*&v23[v25]];
        }
      }

      v26 = (v25 + ((v22 >> 30) & 0x3FFFC) + 4 + *(v25 + ((v22 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v26 = 0;
    }

    v56[0] = v21;
    v56[1] = v26;
    v56[2] = sub_31D7E8(v17, v20, 1);
    v56[3] = v27;
    v56[4] = v39;
    sub_F94D1C(a2, a4, v54);
    sub_F94D78(a2, a4, __p);
    v28 = __p[0];
    v29 = v54[0];
    v30 = v55;
    if (v54[0] != v55)
    {
      v31 = v54[1];
      do
      {
        v32 = *(*(a1 + 144) + 2 * *v28);
        if (a6 != v32)
        {
          v33 = *v31 + 192 * *v29;
          if (*(v33 + 4) == a4)
          {
            v34 = *(v33 + 8);
            if (v34 >= a5)
            {
              v35 = a9[1];
              v50 = *a9;
              v51 = v35;
              v52 = a9[2];
              sub_F85BC0(&v50, v56, v34 - a5, a8, *(a1 + 16), *(a1 + 12), *(a1 + 40));
              if (sub_F85894(&v50))
              {
                v36 = sub_F75E48(a10, v32);
                sub_F858F4(&v50, v36, 1, a8, *(a1 + 16));
                if (sub_F85894(&v50))
                {
                  v43 = v50;
                  v44 = v51;
                  v45 = v52;
                  v42 = v32;
                  v46 = 0x7FFFFFFF;
                  v47 = v37;
                  v48 = a4;
                  v49 = v38;
                  sub_F78380(a10, a6, &v42);
                }
              }
            }
          }
        }

        ++v29;
        ++v28;
      }

      while (v29 != v30);
      v28 = __p[0];
    }

    if (v28)
    {
      __p[1] = v28;
      operator delete(v28);
    }
  }
}

void sub_F7A438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F7A45C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  sub_F7B2BC(a1, a2);
  *(a1 + 128) = *(a1 + 120);
  v7 = sub_F94B90(v4);
  LODWORD(__t) = -1;
  v8 = (*(a1 + 128) - *(a1 + 120)) >> 2;
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      *(a1 + 128) = *(a1 + 120) + 4 * v7;
    }
  }

  else
  {
    sub_569AC(a1 + 120, v7 - v8, &__t);
  }

  v9 = sub_F95F18(v4);
  if (sub_F94B90(v4))
  {
    operator new();
  }

  if (sub_F94B90(v4))
  {
    operator new();
  }

  v53 = a1;
  sub_F7B590(v4, &__t);
  if (*(&v57 + 1) != v57)
  {
    if (((*(&v57 + 1) - v57) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v55 = a4;
  if (v59 != *(&v58 + 1))
  {
    if (((v59 - *(&v58 + 1)) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v54 = v4;
  if (*(&v61 + 1) != v61)
  {
    if (((*(&v61 + 1) - v61) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v64 != v63)
  {
    if (((v64 - v63) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v63)
  {
    *&v64 = v63;
    operator delete(v63);
  }

  if (v61)
  {
    *(&v61 + 1) = v61;
    operator delete(v61);
  }

  if (*(&v58 + 1))
  {
    *&v59 = *(&v58 + 1);
    operator delete(*(&v58 + 1));
  }

  if (v57)
  {
    *(&v57 + 1) = v57;
    operator delete(v57);
  }

  v10 = sub_F94B90(v4);
  if (v10)
  {
    v11 = 0;
    v12 = v10;
    do
    {
      v13 = *(2 * v11);
      v14 = sub_F94B2C(v4, v11);
      if (v13)
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15 && (v14 + v13) >= 3)
      {
        operator new();
      }

      v4 = v54;
      a4 = v55;
      ++v11;
    }

    while (v12 != v11);
  }

  sub_F7EBF8(a4, 0);
  *(a4 + 136) = 0;
  *(a4 + 120) = 0u;
  *(a4 + 144) = -1;
  v17 = sub_F95F18(v4);
  v18 = 2 * v9;
  sub_F764A8(a4, v9, v18, v17, 1, *(a1 + 32));
  if (*(a1 + 32) == 1)
  {
    v20 = *(a1 + 192);
    *(a1 + 200) = v20;
    if (v18 > (*(a1 + 208) - v20) >> 2)
    {
      operator new();
    }

    v21 = *(a1 + 216);
    *(a1 + 224) = v21;
    a4 = v55;
    if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 232) - v21) >> 3) < v18)
    {
      operator new();
    }
  }

  v22 = *(a1 + 168);
  v23 = *(a1 + 176);
  if (v22 != v23)
  {
    do
    {
      v24 = sub_F95EB8(v4, *v22);
      LOBYTE(__t) = *(v24 + 16);
      v25 = *(v24 + 20);
      if (v25 == -1)
      {
        v26 = 0;
      }

      else
      {
        v26 = sub_F94B9C(v4, v25);
      }

      *(&__t + 1) = v26;
      v59 = *(v24 + 56);
      v60 = *(v24 + 72);
      v61 = *(v24 + 88);
      v62 = *(v24 + 104);
      v57 = *(v24 + 24);
      v58 = *(v24 + 40);
      v27 = *(v24 + 112);
      if (v27 == -1)
      {
        v28 = 0;
      }

      else
      {
        v28 = sub_F94B9C(v4, v27);
      }

      v63 = v28;
      v66 = *(v24 + 152);
      v67 = *(v24 + 168);
      v68 = *(v24 + 184);
      v69 = *(v24 + 200);
      v64 = *(v24 + 120);
      v65 = *(v24 + 136);
      sub_F75C60(a4, &__t);
      ++v22;
    }

    while (v22 != v23);
    v22 = *(a1 + 168);
    v23 = *(a1 + 176);
  }

  if (v22 != v23)
  {
    v29 = 0;
    v51 = v23;
    do
    {
      v30 = *v22;
      v31 = sub_F95EB8(v4, *v22);
      v32 = v31[5];
      v33 = v31[28];
      v34 = *(a4 + 48);
      v35 = *(a4 + 56);
      v36 = v35 - v34;
      if (((v35 - v34) >> 2) - 1 <= v29)
      {
        v37 = v29 + 2;
        v38 = v55[1];
        v39 = (v38 - *v55) >> 2;
        if (v37 <= v39)
        {
          if (v37 < v39)
          {
            v55[1] = *v55 + 4 * v37;
          }
        }

        else
        {
          sub_569AC(v55, v37 - v39, (v38 - 4));
          v34 = v55[6];
          v35 = v55[7];
          v36 = v35 - v34;
        }

        v40 = v36 >> 2;
        if (v37 <= v40)
        {
          if (v37 < v40)
          {
            v55[7] = v34 + 4 * v37;
          }
        }

        else
        {
          sub_569AC((v55 + 6), v37 - v40, (v35 - 4));
        }
      }

      if (v32 == -1)
      {
        v41 = 0;
        if (v33 == -1)
        {
LABEL_72:
          v42 = 0;
          goto LABEL_73;
        }
      }

      else
      {
        v41 = sub_F94B9C(v4, v32);
        if (v33 == -1)
        {
          goto LABEL_72;
        }
      }

      v42 = sub_F94B9C(v54, v33);
      v32 = v33;
LABEL_73:
      v43 = sub_F94A20(v54, v32);
      v44 = v42;
      a4 = v55;
      sub_F871D4(&v70, v41, v44, v31, v43);
      v4 = v54;
      v45 = v55[12];
      v46 = 0xAAAAAAAAAAAAAAABLL * ((v55[13] - v45) >> 3);
      if (v46 <= v29)
      {
        v47 = v29 + 1;
        __t = 0xFFFFuLL;
        *&v57 = -COERCE_DOUBLE(0x8000000080000000);
        if (v47 <= v46)
        {
          if (v47 < v46)
          {
            v55[13] = v45 + 24 * v47;
          }
        }

        else
        {
          sub_F82474((v55 + 12), v47 - v46, &__t);
          v45 = v55[12];
        }
      }

      v48 = v70;
      v49 = v45 + 24 * v29;
      *(v49 + 16) = v71;
      *v49 = v48;
      if (*(sub_F95EB8(v54, v30) + 16) == 3)
      {
        sub_F7B640(v53, v54, v30, v55);
      }

      else if (v33 != -1)
      {
        sub_F7B740(v53, v54, v33, v31[30], a3, v29, v55);
      }

      ++v29;
      ++v22;
    }

    while (v22 != v51);
  }

  if (*(v53 + 33))
  {
    sub_F75E68(v55);
  }

  if (*(v53 + 32) == 1)
  {
    sub_F7B9D0(v53, v55, v19);
  }

  if (*(v53 + 34) == 1)
  {
    *&__t = std::chrono::system_clock::now();
    std::chrono::system_clock::to_time_t(&__t);
    *&v70 = *v53;
    DWORD2(v70) = *(v53 + 8);
    BYTE12(v70) = *(v53 + 12);
    if (*(v53 + 32) == 1)
    {
      v50 = *(v53 + 35);
    }

    else
    {
      v50 = 0;
    }

    BYTE13(v70) = v50 & 1;
    sub_F87220(&__t, &v70, *(v53 + 40));
    sub_F88E50(&__t, v54, a3, *(v53 + 24), v55);
  }

  sub_F81004(v55);
  sub_F81004((v55 + 6));
  sub_F82618((v55 + 3));
  sub_F82618((v55 + 9));
}

void sub_F7B1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3EE920(v20);
  if (v19)
  {
    operator delete(v19);
    if (!v21)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_3;
  }

  operator delete(v21);
  _Unwind_Resume(a1);
}

void sub_F7B2BC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_F95F18(a2);
  v6 = *(a1 + 168);
  v5 = *(a1 + 176);
  v7 = (v5 - v6) >> 1;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      v5 = (v6 + 2 * v4);
      *(a1 + 176) = v5;
    }
  }

  else
  {
    sub_F7C1D0(a1 + 168, v4 - v7);
    v6 = *(a1 + 168);
    v5 = *(a1 + 176);
  }

  if (v6 != v5)
  {
    v8 = v5 - v6 - 2;
    if (v8 < 6)
    {
      LODWORD(v9) = 0;
      v10 = v6;
      goto LABEL_20;
    }

    v11 = (v8 >> 1) + 1;
    if (v8 >= 0x1E)
    {
      v12 = v11 & 0xFFFFFFFFFFFFFFF0;
      v14 = xmmword_22AEA30;
      v15 = v6 + 1;
      v16.i64[0] = 0x8000800080008;
      v16.i64[1] = 0x8000800080008;
      v17.i64[0] = 0x10001000100010;
      v17.i64[1] = 0x10001000100010;
      v18 = v11 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v15[-1] = v14;
        *v15 = vaddq_s16(v14, v16);
        v14 = vaddq_s16(v14, v17);
        v15 += 2;
        v18 -= 16;
      }

      while (v18);
      if (v11 == v12)
      {
        goto LABEL_21;
      }

      if ((v11 & 0xC) == 0)
      {
        v10 = (v6 + 2 * v12);
        LODWORD(v9) = v11 & 0xFFFFFFF0;
        do
        {
LABEL_20:
          v10->i16[0] = v9;
          v10 = (v10 + 2);
          LODWORD(v9) = v9 + 1;
        }

        while (v10 != v5);
        goto LABEL_21;
      }

      v13 = v11 & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      LODWORD(v12) = 0;
      v13 = 0;
    }

    v9 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (v6 + 2 * (v11 & 0xFFFFFFFFFFFFFFFCLL));
    v19 = vadd_s16(vdup_n_s16(v12), 0x3000200010000);
    v20 = (v6 + 2 * v13);
    v21 = v13 - (v11 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v20++ = v19;
      v19 = vadd_s16(v19, 0x4000400040004);
      v21 += 4;
    }

    while (v21);
    if (v11 != v9)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v22 = sub_F95F18(a2);
  v24 = *(a1 + 144);
  v23 = *(a1 + 152);
  v25 = (v23 - v24) >> 1;
  if (v22 <= v25)
  {
    if (v22 < v25)
    {
      v23 = (v24 + 2 * v22);
      *(a1 + 152) = v23;
    }
  }

  else
  {
    sub_F7C1D0(a1 + 144, v22 - v25);
    v24 = *(a1 + 144);
    v23 = *(a1 + 152);
  }

  if (v24 != v23)
  {
    v26 = v23 - v24 - 2;
    if (v26 < 6)
    {
      LODWORD(v27) = 0;
      v28 = v24;
      goto LABEL_40;
    }

    v29 = (v26 >> 1) + 1;
    if (v26 >= 0x1E)
    {
      v30 = v29 & 0xFFFFFFFFFFFFFFF0;
      v32 = xmmword_22AEA30;
      v33 = v24 + 1;
      v34.i64[0] = 0x8000800080008;
      v34.i64[1] = 0x8000800080008;
      v35.i64[0] = 0x10001000100010;
      v35.i64[1] = 0x10001000100010;
      v36 = v29 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v33[-1] = v32;
        *v33 = vaddq_s16(v32, v34);
        v32 = vaddq_s16(v32, v35);
        v33 += 2;
        v36 -= 16;
      }

      while (v36);
      if (v29 == v30)
      {
        goto LABEL_41;
      }

      if ((v29 & 0xC) == 0)
      {
        v28 = (v24 + 2 * v30);
        LODWORD(v27) = v29 & 0xFFFFFFF0;
        do
        {
LABEL_40:
          v28->i16[0] = v27;
          v28 = (v28 + 2);
          LODWORD(v27) = v27 + 1;
        }

        while (v28 != v23);
        goto LABEL_41;
      }

      v31 = v29 & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      LODWORD(v30) = 0;
      v31 = 0;
    }

    v27 = v29 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = (v24 + 2 * (v29 & 0xFFFFFFFFFFFFFFFCLL));
    v37 = vadd_s16(vdup_n_s16(v30), 0x3000200010000);
    v38 = (v24 + 2 * v31);
    v39 = v31 - (v29 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v38++ = v37;
      v37 = vadd_s16(v37, 0x4000400040004);
      v39 += 4;
    }

    while (v39);
    if (v29 != v27)
    {
      goto LABEL_40;
    }
  }

LABEL_41:
  if (*(a1 + 33) == 1)
  {
    v40 = *(a1 + 168);
    v41 = *(a1 + 176);
    v42 = 126 - 2 * __clz((v41 - v40) >> 1);
    v50 = a2;
    if (v41 == v40)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    sub_F8399C(v40, v41, &v50, v43, 1);
    v44 = *(a1 + 144);
    v45 = *(a1 + 152);
    v46 = v45 - v44;
    if (v45 != v44)
    {
      v47 = 0;
      v48 = v46 >> 1;
      v49 = *(a1 + 168);
      do
      {
        *(v44 + 2 * *(v49 + 2 * v47)) = v47;
        ++v47;
      }

      while (v48 != v47);
    }
  }
}

void sub_F7B590(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_F95994(a1, &v9);
  sub_F95C54(a1, &v4);
  sub_F7ED34(a2, &v9);
  sub_F7ED34(a2 + 64, &v4);
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

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_F7B628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_334D18(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F7B640(uint64_t a1, void *a2, unsigned __int16 a3, void *a4)
{
  v7 = a3;
  v8 = sub_F95EB8(a2, a3);
  sub_F94B9C(a2, *(v8 + 20));
  result = sub_F94EAC(a2, v7, &v23);
  v10 = v23;
  for (i = v24; v10 != i; result = sub_F7868C(a4, v15, v18))
  {
    v12 = *v10++;
    v13 = sub_F95EB8(a2, v12);
    sub_F94B9C(a2, *(v13 + 112));
    v14 = *(a1 + 144);
    v15 = *(v14 + 2 * v7);
    v16 = *(v8 + 20);
    v17 = *(v13 + 112);
    LODWORD(v18[0]) = *(v14 + 2 * v12);
    *(&v18[0] + 1) = 0;
    v18[1] = xmmword_22A85E0;
    v19 = 0x7FFFFFFF;
    v20 = v16;
    v21 = v17;
    v22 = 0;
  }

  return result;
}

void sub_F7B740(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, void *a7)
{
  v37 = 0;
  if (sub_F75E1C(a7, a6))
  {
    sub_F75E48(a7, a6);
  }

  v14 = a3;
  sub_F7BDF4(a1, a2, a3, a3, a4, a6, 0, a5, &v37, a7);
  sub_F9495C(a2, a3, &v26);
  sub_F94A68(a2, a3, &v35);
  v34 = v27;
  v33 = v26;
  v15 = v27;
  v25 = v36;
  if (v27 != v36)
  {
    v23 = *(&v33 + 1);
    v24 = v33;
    v22 = 1000000000 - a4;
    v16 = a3;
    do
    {
      v17 = (*v24 + 104 * v15);
      v32 = v37;
      sub_F86B2C(&v32, v17, v22, a5, *(a1 + 16), *(a1 + 12), *(a1 + 40));
      v18 = *v17;
      v19 = *(*(a1 + 120) + 4 * v18);
      if (v19 == -1)
      {
        while (1)
        {
          sub_F7BDF4(a1, a2, v14, v18, 0, a6, v17, a5, &v32, a7);
          if (v18 == v16)
          {
            break;
          }

          sub_F9495C(a2, v18, &v38);
          sub_F94A68(a2, v18, &v27 + 8);
          *&v27 = v39;
          v26 = v38;
          if (v39 == v30)
          {
            break;
          }

          v20 = (*v26 + 104 * v39);
          sub_F86B2C(&v32, v20, 1000000000, a5, *(a1 + 16), *(a1 + 12), *(a1 + 40));
          v18 = *v20;
          v19 = *(*(a1 + 120) + 4 * v18);
          if (v19 != -1)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        if (v19 != a6)
        {
          LODWORD(v26) = v19;
          *(&v26 + 1) = v32;
          v27 = xmmword_22A85E0;
          v28 = 0x7FFFFFFF;
          v29 = v16;
          v30 = v18;
          v31 = v17;
          sub_F7868C(a7, a6, &v26);
        }
      }

      v15 = *(*v23 + 4 * v15);
    }

    while (v15 != v25);
  }
}

void sub_F7B9D0(uint64_t a1, void *a2, __n128 a3)
{
  v5 = a2[7] - a2[6];
  v27 = 0;
  v28 = 0;
  __p = 0;
  if ((v5 >> 2) != 1)
  {
    operator new();
  }

  v6 = ((v5 << 30) - 0x100000000) >> 32;
  if (v6)
  {
    v14 = 0;
    do
    {
      v15 = v14 + 1;
      v16 = a2[6];
      if (v15 >= (a2[7] - v16) >> 2)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        v25 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      v17 = v14;
      v18 = *(v16 + 4 * v14);
      v19 = *(v16 + 4 * v15);
      if (v18 != v19)
      {
        v20 = a2[9];
        v21 = (v20 + 56 * v19);
        v22 = (v20 + 56 * v18);
        do
        {
          sub_F7BBC4(a1 + 192, v17, v22);
          v23 = *v22;
          v22 += 14;
          ++*(4 * v23);
        }

        while (v22 != v21);
      }

      v14 = v17 + 1;
    }

    while (v17 + 1 != v6);
  }

  v9 = *(a1 + 216);
  v8 = a1 + 216;
  v7 = v9;
  v10 = *(v8 - 24);
  v11 = *(v8 - 16);
  v12 = 126 - 2 * __clz((v11 - v10) >> 2);
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  sub_F7EE58(v10, v7, v11, *(v8 + 8), &v29, v13, 1, a3);
  sub_F788BC(a2, &__p, v8);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

void sub_F7BB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    v10 = a1;
    operator delete(__p);
    a1 = v10;
  }

  _Unwind_Resume(a1);
}

void sub_F7BBC4(uint64_t a1, int a2, int *a3)
{
  v6 = *a3;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v8 >= v7)
  {
    v10 = *a1;
    v11 = v8 - *a1;
    v12 = v11 >> 2;
    v13 = (v11 >> 2) + 1;
    if (v13 >> 62)
    {
      sub_1794();
    }

    v14 = v7 - v10;
    if (v14 >> 1 > v13)
    {
      v13 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (!(v15 >> 62))
      {
        operator new();
      }

LABEL_28:
      sub_1808();
    }

    *(4 * v12) = v6;
    v9 = 4 * v12 + 4;
    memcpy(0, v10, v11);
    *a1 = 0;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(a1 + 8) = v9;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  if (v16 < v17)
  {
    v18 = *a3;
    v19 = *(a3 + 1);
    v20 = *(a3 + 2);
    *(v16 + 48) = *(a3 + 6);
    *(v16 + 16) = v19;
    *(v16 + 32) = v20;
    *v16 = v18;
    v21 = v16 + 56;
    goto LABEL_27;
  }

  v22 = *(a1 + 24);
  v23 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v22) >> 3) + 1;
  if (v23 > 0x492492492492492)
  {
    sub_1794();
  }

  v24 = 0x6DB6DB6DB6DB6DB7 * ((v17 - v22) >> 3);
  if (2 * v24 > v23)
  {
    v23 = 2 * v24;
  }

  if (v24 >= 0x249249249249249)
  {
    v25 = 0x492492492492492;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    if (v25 <= 0x492492492492492)
    {
      operator new();
    }

    goto LABEL_28;
  }

  v26 = 8 * ((v16 - v22) >> 3);
  v27 = *(a3 + 1);
  *v26 = *a3;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a3 + 2);
  *(v26 + 48) = *(a3 + 6);
  v21 = v26 + 56;
  v28 = (v26 - (v16 - v22));
  memcpy(v28, v22, v16 - v22);
  *(a1 + 24) = v28;
  *(a1 + 32) = v21;
  *(a1 + 40) = 0;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_27:
  *(a1 + 32) = v21;
  *(v21 - 56) = a2;
}

void sub_F7BDF4(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10)
{
  if (sub_F94BF8(a2, a4))
  {
    v15 = sub_3AF6B4(**(a1 + 40));
    v16 = sub_F94B9C(a2, a4);
    v17 = HIDWORD(v16);
    v18 = HIDWORD(v16) & 0xFFFF0000FFFFFFFFLL | (WORD1(v16) << 32);
    v19 = ((HIDWORD(v16) & 0xFFFE0000FFFFFFFFLL | (WORD1(v16) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((v16 >> 1) & 1) << 48)) ^ 0x1000000000000);
    v33 = sub_2B51D8(v15, v18);
    if (*(v15 + 7772) == 1)
    {
      v20 = v16 << 16;
      v21 = sub_30C50C(v15 + 3896, v17, 0);
      v22 = &v21[-*v21];
      if (*v22 < 5u)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(v22 + 2);
        if (v23)
        {
          v23 += &v21[*&v21[v23]];
        }
      }

      v24 = (v23 + ((v20 >> 30) & 0x3FFFC) + 4 + *(v23 + ((v20 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v24 = 0;
    }

    v47[0] = v33;
    v47[1] = v24;
    v47[2] = sub_31D7E8(v15, v18, 1);
    v47[3] = v25;
    v47[4] = v19;
    sub_F94D1C(a2, a4, v45);
    sub_F95F80(a2, a4, __p);
    v26 = __p[0];
    v27 = v45[0];
    v28 = v46;
    if (v45[0] != v46)
    {
      v29 = v45[1];
      do
      {
        v30 = *(*(a1 + 144) + 2 * *v26);
        if (a6 != v30)
        {
          v31 = *v29 + 208 * *v27;
          if (*(v31 + 20) == a4)
          {
            v32 = *(v31 + 24);
            if (v32 >= a5)
            {
              v43 = *a9;
              sub_F8696C(&v43, v47, v32 - a5, a8, *(a1 + 16), *(a1 + 12), *(a1 + 40));
              sub_F75E48(a10, v30);
              LODWORD(v38[0]) = v30;
              *(&v38[0] + 1) = v43;
              v38[1] = xmmword_22A85E0;
              v39 = 0x7FFFFFFF;
              v40 = a3;
              v41 = a4;
              v42 = a7;
              sub_F7868C(a10, a6, v38);
            }
          }
        }

        ++v27;
        ++v26;
      }

      while (v27 != v28);
      v26 = __p[0];
    }

    if (v26)
    {
      __p[1] = v26;
      operator delete(v26);
    }
  }
}

void sub_F7C070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F7C094(uint64_t result, int a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (a2 != -1)
  {
    operator new();
  }

  *(result + 56) = 0u;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *(result + 104) = 0u;
  *(result + 88) = 0u;
  *(result + 72) = 0u;
  return result;
}

void sub_F7C170(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 48);
  if (v4)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      v6 = *v1;
      if (!*v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 32) = v5;
  operator delete(v5);
  v6 = *v1;
  if (!*v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  *(v1 + 8) = v6;
  operator delete(v6);
  goto LABEL_5;
}

void sub_F7C1C0()
{
  if (!*v0)
  {
    JUMPOUT(0xF7C194);
  }

  JUMPOUT(0xF7C18CLL);
}

void sub_F7C1D0(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 1)
  {
    if (a2)
    {
      v10 = 2 * a2;
      memset(*(a1 + 8), 255, 2 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 1) + a2;
    if (v7 < 0)
    {
      sub_1794();
    }

    v8 = v3 - v5;
    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (2 * (v6 >> 1));
    v12 = 2 * a2;
    memset(v11, 255, 2 * a2);
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

double sub_F7C320(unsigned int *a1, uint64_t a2, char *a3, __int128 *a4, uint64_t a5, uint64_t a6, char a7)
{
LABEL_1:
  v11 = (a4 - 5);
  v253 = a4 - 15;
  v254 = a4 - 10;
  v12 = a1;
  v13 = a2;
LABEL_2:
  a1 = v12;
  a2 = v13;
  v14 = (a3 - v12) >> 2;
  v15 = v14 >= 2;
  if (v14 <= 2)
  {
LABEL_3:
    if (v15)
    {
      if (v14 != 2)
      {
        goto LABEL_10;
      }

      v205 = *(a3 - 1);
      v206 = *a1;
      if (v205 < *a1)
      {
        *a1 = v205;
        *(a3 - 1) = v206;
        v295 = *a2;
        v403 = *(a2 + 48);
        v439 = *(a2 + 64);
        v331 = *(a2 + 16);
        v367 = *(a2 + 32);
        v207 = *(a4 - 1);
        v209 = *(a4 - 4);
        v208 = *(a4 - 3);
        *(a2 + 48) = *(a4 - 2);
        *(a2 + 64) = v207;
        *(a2 + 16) = v209;
        *(a2 + 32) = v208;
        *a2 = *(a4 - 5);
        *(a4 - 4) = v331;
        *(a4 - 3) = v367;
        *(a4 - 2) = v403;
        *(a4 - 1) = v439;
        result = v295.n128_f64[0];
        *(a4 - 5) = v295;
      }
    }

    return result;
  }

  while (v14 != 3)
  {
    if (v14 == 4)
    {
      *&result = sub_F7DB4C(a1, a2, a1 + 1, (a2 + 80), a1 + 2, (a2 + 160), a3 - 1, v11).n128_u64[0];
      return result;
    }

    if (v14 == 5)
    {
      *&result = sub_F7DB4C(a1, a2, a1 + 1, (a2 + 80), a1 + 2, (a2 + 160), a1 + 3, (a2 + 240)).n128_u64[0];
      v188 = *(a3 - 1);
      v189 = a1[3];
      if (v188 >= v189)
      {
        return result;
      }

      a1[3] = v188;
      *(a3 - 1) = v189;
      v328 = *(a2 + 256);
      v364 = *(a2 + 272);
      v400 = *(a2 + 288);
      v436 = *(a2 + 304);
      v292 = *(a2 + 240);
      *(a2 + 240) = *(a4 - 5);
      v190 = *(a4 - 1);
      v192 = *(a4 - 4);
      v191 = *(a4 - 3);
      *(a2 + 288) = *(a4 - 2);
      *(a2 + 304) = v190;
      *(a2 + 256) = v192;
      *(a2 + 272) = v191;
      *(a4 - 5) = v292;
      *(a4 - 1) = v436;
      *(a4 - 2) = v400;
      *(a4 - 3) = v364;
      result = *&v328;
      *(a4 - 4) = v328;
      v194 = a1[2];
      v193 = a1[3];
      if (v193 >= v194)
      {
        return result;
      }

      a1[2] = v193;
      a1[3] = v194;
      v329 = *(a2 + 176);
      v365 = *(a2 + 192);
      v401 = *(a2 + 208);
      v437 = *(a2 + 224);
      v293 = *(a2 + 160);
      v195 = *(a2 + 272);
      v196 = *(a2 + 288);
      v197 = *(a2 + 304);
      v198 = *(a2 + 256);
      *(a2 + 160) = *(a2 + 240);
      *(a2 + 176) = v198;
      *(a2 + 208) = v196;
      *(a2 + 224) = v197;
      *(a2 + 192) = v195;
      *(a2 + 240) = v293;
      *(a2 + 304) = v437;
      *(a2 + 288) = v401;
      *(a2 + 272) = v365;
      result = *&v329;
      *(a2 + 256) = v329;
      v200 = a1[1];
      v199 = a1[2];
      if (v199 >= v200)
      {
        return result;
      }

      a1[1] = v199;
      a1[2] = v200;
      v330 = *(a2 + 96);
      v366 = *(a2 + 112);
      v402 = *(a2 + 128);
      v438 = *(a2 + 144);
      v294 = *(a2 + 80);
      v201 = *(a2 + 192);
      v202 = *(a2 + 208);
      v203 = *(a2 + 224);
      v204 = *(a2 + 176);
      *(a2 + 80) = *(a2 + 160);
      *(a2 + 96) = v204;
      *(a2 + 128) = v202;
      *(a2 + 144) = v203;
      *(a2 + 112) = v201;
      *(a2 + 160) = v294;
      *(a2 + 224) = v438;
      *(a2 + 208) = v402;
      *(a2 + 192) = v366;
      result = *&v330;
      *(a2 + 176) = v330;
      goto LABEL_135;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a7)
      {
        if (a1 != a3)
        {
          v210 = a1 + 1;
          if (a1 + 1 != a3)
          {
            v211 = 0;
            v212 = 0;
            v213 = a2;
            v214 = a1;
            do
            {
              v217 = v210;
              v213 += 5;
              v218 = v214[1];
              if (v218 < *v214)
              {
                v302 = *v213;
                v446 = v213[4];
                v410 = v213[3];
                v374 = v213[2];
                v338 = v213[1];
                v219 = *v214;
                v220 = v211;
                v221 = v212;
                do
                {
                  *(a1 + v221 + 4) = v219;
                  v222 = (a2 + v220);
                  v223 = *(a2 + v220 + 48);
                  v222[7] = *(a2 + v220 + 32);
                  v222[8] = v223;
                  v222[9] = *(a2 + v220 + 64);
                  v224 = *(a2 + v220 + 16);
                  v222[5] = *(a2 + v220);
                  v222[6] = v224;
                  if (!v221)
                  {
                    v215 = a1;
                    v216 = a2;
                    goto LABEL_122;
                  }

                  v219 = *(a1 + v221 - 4);
                  v221 -= 4;
                  v220 -= 80;
                }

                while (v218 < v219);
                v215 = (a1 + v221 + 4);
                v216 = (a2 + v220 + 80);
LABEL_122:
                *v215 = v218;
                *v216 = v302;
                result = *&v338;
                v216[3] = v410;
                v216[4] = v446;
                v216[1] = v338;
                v216[2] = v374;
              }

              v210 = v217 + 1;
              v212 += 4;
              v211 += 80;
              v214 = v217;
            }

            while (v217 + 1 != a3);
          }
        }
      }

      else if (a1 != a3)
      {
        v233 = (a1 + 1);
        if (a1 + 1 != a3)
        {
          v234 = (a2 + 80);
          do
          {
            v235 = v233 - 4;
            v236 = *(v233 - 1);
            v237 = *v233;
            if (*v233 < v236)
            {
              v238 = v234 - 5;
              v339 = v234[1];
              v375 = v234[2];
              v411 = v234[3];
              v447 = v234[4];
              v303 = *v234;
              v239 = v233;
              v240 = v234;
              do
              {
                *v239 = v236;
                v239 = v235;
                *v240 = *v238;
                v241 = v238[1];
                v242 = v238[2];
                v243 = v238[4];
                v240[3] = v238[3];
                v240[4] = v243;
                v240[1] = v241;
                v240[2] = v242;
                v244 = *(v235 - 1);
                v235 -= 4;
                v236 = v244;
                v240 = v238;
                v238 -= 5;
              }

              while (v237 < v244);
              *(v235 + 1) = v237;
              v238[6] = v339;
              v238[7] = v375;
              v238[8] = v411;
              v238[9] = v447;
              result = *&v303;
              v238[5] = v303;
            }

            v233 += 4;
            v234 += 5;
          }

          while (v233 != a3);
        }
      }

      return result;
    }

    if (!a6)
    {
      if (a1 != a3)
      {

        sub_F7E5A8(a1, a2, a3, a4, a3);
      }

      return result;
    }

    v16 = v14 >> 1;
    v17 = 80 * (v14 >> 1);
    v18 = *(a3 - 1);
    v19 = v14 >> 1;
    if (v14 >= 0x81)
    {
      v20 = (v17 + a2);
      v21 = a1[v19];
      v22 = *a1;
      if (v21 >= *a1)
      {
        if (v18 < v21)
        {
          a1[v19] = v18;
          *(a3 - 1) = v21;
          v306 = v20[1];
          v342 = v20[2];
          v378 = v20[3];
          v414 = v20[4];
          v270 = *v20;
          *v20 = *v11;
          v33 = *(a4 - 1);
          v35 = *(a4 - 4);
          v34 = *(a4 - 3);
          v20[3] = *(a4 - 2);
          v20[4] = v33;
          v20[1] = v35;
          v20[2] = v34;
          *v11 = v270;
          *(a4 - 1) = v414;
          *(a4 - 2) = v378;
          *(a4 - 3) = v342;
          *(a4 - 4) = v306;
          v36 = a1[v19];
          v37 = *a1;
          if (v36 < *a1)
          {
            *a1 = v36;
            a1[v19] = v37;
            v271 = *a2;
            v379 = *(a2 + 48);
            v415 = *(a2 + 64);
            v307 = *(a2 + 16);
            v343 = *(a2 + 32);
            v38 = v20[4];
            v40 = v20[1];
            v39 = v20[2];
            *(a2 + 48) = v20[3];
            *(a2 + 64) = v38;
            *(a2 + 16) = v40;
            *(a2 + 32) = v39;
            *a2 = *v20;
            v20[1] = v307;
            v20[2] = v343;
            v20[3] = v379;
            v20[4] = v415;
            *v20 = v271;
          }
        }
      }

      else if (v18 >= v21)
      {
        *a1 = v21;
        a1[v19] = v22;
        v274 = *a2;
        v382 = *(a2 + 48);
        v418 = *(a2 + 64);
        v310 = *(a2 + 16);
        v346 = *(a2 + 32);
        v48 = v20[4];
        v50 = v20[1];
        v49 = v20[2];
        *(a2 + 48) = v20[3];
        *(a2 + 64) = v48;
        *(a2 + 16) = v50;
        *(a2 + 32) = v49;
        *a2 = *v20;
        v20[1] = v310;
        v20[2] = v346;
        v20[3] = v382;
        v20[4] = v418;
        *v20 = v274;
        v51 = *(a3 - 1);
        v52 = a1[v19];
        if (v51 < v52)
        {
          a1[v19] = v51;
          *(a3 - 1) = v52;
          v311 = v20[1];
          v347 = v20[2];
          v383 = v20[3];
          v419 = v20[4];
          v275 = *v20;
          *v20 = *v11;
          v53 = *(a4 - 1);
          v55 = *(a4 - 4);
          v54 = *(a4 - 3);
          v20[3] = *(a4 - 2);
          v20[4] = v53;
          v20[1] = v55;
          v20[2] = v54;
          *v11 = v275;
          *(a4 - 1) = v419;
          *(a4 - 2) = v383;
          *(a4 - 3) = v347;
          *(a4 - 4) = v311;
        }
      }

      else
      {
        *a1 = v18;
        *(a3 - 1) = v22;
        v268 = *a2;
        v376 = *(a2 + 48);
        v412 = *(a2 + 64);
        v304 = *(a2 + 16);
        v340 = *(a2 + 32);
        v23 = *(a4 - 1);
        v25 = *(a4 - 4);
        v24 = *(a4 - 3);
        *(a2 + 48) = *(a4 - 2);
        *(a2 + 64) = v23;
        *(a2 + 16) = v25;
        *(a2 + 32) = v24;
        *a2 = *v11;
        *(a4 - 4) = v304;
        *(a4 - 3) = v340;
        *(a4 - 2) = v376;
        *(a4 - 1) = v412;
        *v11 = v268;
      }

      v56 = v16 - 1;
      v57 = (a2 + 80 * (v16 - 1));
      v58 = a1[v56];
      v59 = a1[1];
      v60 = *(a3 - 2);
      if (v58 >= v59)
      {
        if (v60 < v58)
        {
          a1[v56] = v60;
          *(a3 - 2) = v58;
          v313 = v57[1];
          v349 = v57[2];
          v385 = v57[3];
          v421 = v57[4];
          v277 = *v57;
          *v57 = *v254;
          v65 = *(a4 - 6);
          v67 = *(a4 - 9);
          v66 = *(a4 - 8);
          v57[3] = *(a4 - 7);
          v57[4] = v65;
          v57[1] = v67;
          v57[2] = v66;
          *v254 = v277;
          *(a4 - 6) = v421;
          *(a4 - 7) = v385;
          *(a4 - 8) = v349;
          *(a4 - 9) = v313;
          v68 = a1[v56];
          v69 = a1[1];
          if (v68 < v69)
          {
            a1[1] = v68;
            a1[v56] = v69;
            v314 = *(a2 + 96);
            v350 = *(a2 + 112);
            v386 = *(a2 + 128);
            v422 = *(a2 + 144);
            v278 = *(a2 + 80);
            *(a2 + 80) = *v57;
            v70 = v57[4];
            v72 = v57[1];
            v71 = v57[2];
            *(a2 + 128) = v57[3];
            *(a2 + 144) = v70;
            *(a2 + 96) = v72;
            *(a2 + 112) = v71;
            *v57 = v278;
            v57[4] = v422;
            v57[3] = v386;
            v57[2] = v350;
            v57[1] = v314;
          }
        }
      }

      else
      {
        if (v60 < v58)
        {
          a1[1] = v60;
          *(a3 - 2) = v59;
          v312 = *(a2 + 96);
          v348 = *(a2 + 112);
          v384 = *(a2 + 128);
          v420 = *(a2 + 144);
          v276 = *(a2 + 80);
          v61 = a4 - 10;
          *(a2 + 80) = *v254;
          v62 = *(a4 - 6);
          v64 = *(a4 - 9);
          v63 = *(a4 - 8);
          *(a2 + 128) = *(a4 - 7);
          *(a2 + 144) = v62;
          *(a2 + 96) = v64;
          *(a2 + 112) = v63;
          goto LABEL_41;
        }

        a1[1] = v58;
        a1[v56] = v59;
        v317 = *(a2 + 96);
        v353 = *(a2 + 112);
        v389 = *(a2 + 128);
        v425 = *(a2 + 144);
        v281 = *(a2 + 80);
        *(a2 + 80) = *v57;
        v81 = v57[4];
        v83 = v57[1];
        v82 = v57[2];
        *(a2 + 128) = v57[3];
        *(a2 + 144) = v81;
        *(a2 + 96) = v83;
        *(a2 + 112) = v82;
        *v57 = v281;
        v57[4] = v425;
        v57[3] = v389;
        v57[2] = v353;
        v57[1] = v317;
        v84 = *(a3 - 2);
        v85 = a1[v56];
        if (v84 < v85)
        {
          a1[v56] = v84;
          *(a3 - 2) = v85;
          v312 = v57[1];
          v348 = v57[2];
          v384 = v57[3];
          v420 = v57[4];
          v276 = *v57;
          v61 = a4 - 10;
          *v57 = *v254;
          v86 = *(a4 - 6);
          v88 = *(a4 - 9);
          v87 = *(a4 - 8);
          v57[3] = *(a4 - 7);
          v57[4] = v86;
          v57[1] = v88;
          v57[2] = v87;
LABEL_41:
          *v61 = v276;
          v61[4] = v420;
          v61[3] = v384;
          v61[2] = v348;
          v61[1] = v312;
        }
      }

      v89 = v16 + 1;
      v90 = v89;
      v91 = (a2 + 80 * v89);
      v92 = a1[v90];
      v93 = a1[2];
      v94 = *(a3 - 3);
      if (v92 >= v93)
      {
        if (v94 < v92)
        {
          a1[v90] = v94;
          *(a3 - 3) = v92;
          v319 = v91[1];
          v355 = v91[2];
          v391 = v91[3];
          v427 = v91[4];
          v283 = *v91;
          *v91 = *v253;
          v99 = *(a4 - 11);
          v101 = *(a4 - 14);
          v100 = *(a4 - 13);
          v91[3] = *(a4 - 12);
          v91[4] = v99;
          v91[1] = v101;
          v91[2] = v100;
          *v253 = v283;
          *(a4 - 11) = v427;
          *(a4 - 12) = v391;
          *(a4 - 13) = v355;
          *(a4 - 14) = v319;
          v102 = a1[v90];
          v103 = a1[2];
          if (v102 < v103)
          {
            a1[2] = v102;
            a1[v90] = v103;
            v320 = *(a2 + 176);
            v356 = *(a2 + 192);
            v392 = *(a2 + 208);
            v428 = *(a2 + 224);
            v284 = *(a2 + 160);
            *(a2 + 160) = *v91;
            v104 = v91[4];
            v106 = v91[1];
            v105 = v91[2];
            *(a2 + 208) = v91[3];
            *(a2 + 224) = v104;
            *(a2 + 176) = v106;
            *(a2 + 192) = v105;
            *v91 = v284;
            v91[4] = v428;
            v91[3] = v392;
            v91[2] = v356;
            v91[1] = v320;
          }
        }
      }

      else
      {
        if (v94 < v92)
        {
          a1[2] = v94;
          *(a3 - 3) = v93;
          v318 = *(a2 + 176);
          v354 = *(a2 + 192);
          v390 = *(a2 + 208);
          v426 = *(a2 + 224);
          v282 = *(a2 + 160);
          v95 = a4 - 15;
          *(a2 + 160) = *v253;
          v96 = *(a4 - 11);
          v98 = *(a4 - 14);
          v97 = *(a4 - 13);
          *(a2 + 208) = *(a4 - 12);
          *(a2 + 224) = v96;
          *(a2 + 176) = v98;
          *(a2 + 192) = v97;
          goto LABEL_50;
        }

        a1[2] = v92;
        a1[v90] = v93;
        v321 = *(a2 + 176);
        v357 = *(a2 + 192);
        v393 = *(a2 + 208);
        v429 = *(a2 + 224);
        v285 = *(a2 + 160);
        *(a2 + 160) = *v91;
        v107 = v91[4];
        v109 = v91[1];
        v108 = v91[2];
        *(a2 + 208) = v91[3];
        *(a2 + 224) = v107;
        *(a2 + 176) = v109;
        *(a2 + 192) = v108;
        *v91 = v285;
        v91[4] = v429;
        v91[3] = v393;
        v91[2] = v357;
        v91[1] = v321;
        v110 = *(a3 - 3);
        v111 = a1[v90];
        if (v110 < v111)
        {
          a1[v90] = v110;
          *(a3 - 3) = v111;
          v318 = v91[1];
          v354 = v91[2];
          v390 = v91[3];
          v426 = v91[4];
          v282 = *v91;
          v95 = a4 - 15;
          *v91 = *v253;
          v112 = *(a4 - 11);
          v114 = *(a4 - 14);
          v113 = *(a4 - 13);
          v91[3] = *(a4 - 12);
          v91[4] = v112;
          v91[1] = v114;
          v91[2] = v113;
LABEL_50:
          *v95 = v282;
          v95[4] = v426;
          v95[3] = v390;
          v95[2] = v354;
          v95[1] = v318;
        }
      }

      v115 = a1[v19];
      v116 = a1[v56];
      v117 = a1[v90];
      if (v115 >= v116)
      {
        if (v117 < v115)
        {
          a1[v19] = v117;
          a1[v90] = v115;
          v323 = v20[1];
          v359 = v20[2];
          v395 = v20[3];
          v431 = v20[4];
          v287 = *v20;
          *v20 = *v91;
          v121 = v91[4];
          v123 = v91[1];
          v122 = v91[2];
          v20[3] = v91[3];
          v20[4] = v121;
          v20[1] = v123;
          v20[2] = v122;
          *v91 = v287;
          v91[4] = v431;
          v91[3] = v395;
          v91[2] = v359;
          v91[1] = v323;
          v124 = a1[v19];
          v125 = a1[v56];
          if (v124 < v125)
          {
            a1[v56] = v124;
            a1[v19] = v125;
            v324 = v57[1];
            v360 = v57[2];
            v396 = v57[3];
            v432 = v57[4];
            v288 = *v57;
            *v57 = *v20;
            v126 = v20[4];
            v128 = v20[1];
            v127 = v20[2];
            v57[3] = v20[3];
            v57[4] = v126;
            v57[1] = v128;
            v57[2] = v127;
            *v20 = v288;
            v20[4] = v432;
            v20[3] = v396;
            v20[2] = v360;
            v20[1] = v324;
          }
        }
      }

      else
      {
        if (v117 < v115)
        {
          a1[v56] = v117;
          a1[v90] = v116;
          v322 = v57[1];
          v358 = v57[2];
          v394 = v57[3];
          v430 = v57[4];
          v286 = *v57;
          *v57 = *v91;
          v118 = v91[4];
          v120 = v91[1];
          v119 = v91[2];
          v57[3] = v91[3];
          v57[4] = v118;
          v57[1] = v120;
          v57[2] = v119;
          goto LABEL_59;
        }

        a1[v56] = v115;
        a1[v19] = v116;
        v325 = v57[1];
        v361 = v57[2];
        v397 = v57[3];
        v433 = v57[4];
        v289 = *v57;
        *v57 = *v20;
        v129 = v20[4];
        v131 = v20[1];
        v130 = v20[2];
        v57[3] = v20[3];
        v57[4] = v129;
        v57[1] = v131;
        v57[2] = v130;
        *v20 = v289;
        v20[4] = v433;
        v20[3] = v397;
        v20[2] = v361;
        v20[1] = v325;
        v132 = a1[v90];
        v133 = a1[v19];
        if (v132 < v133)
        {
          a1[v19] = v132;
          a1[v90] = v133;
          v322 = v20[1];
          v358 = v20[2];
          v394 = v20[3];
          v430 = v20[4];
          v286 = *v20;
          *v20 = *v91;
          v134 = v91[4];
          v136 = v91[1];
          v135 = v91[2];
          v20[3] = v91[3];
          v20[4] = v134;
          v20[1] = v136;
          v20[2] = v135;
LABEL_59:
          *v91 = v286;
          v91[4] = v430;
          v91[3] = v394;
          v91[2] = v358;
          v91[1] = v322;
        }
      }

      v137 = *a1;
      *a1 = a1[v19];
      a1[v19] = v137;
      v290 = *a2;
      v398 = *(a2 + 48);
      v434 = *(a2 + 64);
      v326 = *(a2 + 16);
      v362 = *(a2 + 32);
      v138 = v20[4];
      v140 = v20[1];
      v139 = v20[2];
      *(a2 + 48) = v20[3];
      *(a2 + 64) = v138;
      *(a2 + 16) = v140;
      *(a2 + 32) = v139;
      *a2 = *v20;
      v20[1] = v326;
      v20[2] = v362;
      v20[3] = v398;
      v20[4] = v434;
      *v20 = v290;
      --a6;
      v32 = *a1;
      if (a7)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v26 = (v17 + a2);
    v27 = *a1;
    v28 = a1[v19];
    if (*a1 >= v28)
    {
      if (v18 < v27)
      {
        *a1 = v18;
        *(a3 - 1) = v27;
        v272 = *a2;
        v380 = *(a2 + 48);
        v416 = *(a2 + 64);
        v308 = *(a2 + 16);
        v344 = *(a2 + 32);
        v41 = *(a4 - 1);
        v43 = *(a4 - 4);
        v42 = *(a4 - 3);
        *(a2 + 48) = *(a4 - 2);
        *(a2 + 64) = v41;
        *(a2 + 16) = v43;
        *(a2 + 32) = v42;
        *a2 = *v11;
        *(a4 - 4) = v308;
        *(a4 - 3) = v344;
        *(a4 - 2) = v380;
        *(a4 - 1) = v416;
        *v11 = v272;
        v44 = a1[v19];
        if (*a1 < v44)
        {
          a1[v19] = *a1;
          *a1 = v44;
          v309 = v26[1];
          v345 = v26[2];
          v381 = v26[3];
          v417 = v26[4];
          v273 = *v26;
          v46 = *(a2 + 16);
          v45 = *(a2 + 32);
          v47 = *(a2 + 64);
          v26[3] = *(a2 + 48);
          v26[4] = v47;
          v26[1] = v46;
          v26[2] = v45;
          *v26 = *a2;
          *a2 = v273;
          *(a2 + 48) = v381;
          *(a2 + 64) = v417;
          *(a2 + 16) = v309;
          *(a2 + 32) = v345;
          --a6;
          v32 = *a1;
          if (a7)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }
      }
    }

    else
    {
      if (v18 < v27)
      {
        a1[v19] = v18;
        *(a3 - 1) = v28;
        v305 = v26[1];
        v341 = v26[2];
        v377 = v26[3];
        v413 = v26[4];
        v269 = *v26;
        *v26 = *v11;
        v29 = *(a4 - 1);
        v31 = *(a4 - 4);
        v30 = *(a4 - 3);
        v26[3] = *(a4 - 2);
        v26[4] = v29;
        v26[1] = v31;
        v26[2] = v30;
        *v11 = v269;
        *(a4 - 1) = v413;
        *(a4 - 2) = v377;
        *(a4 - 3) = v341;
        *(a4 - 4) = v305;
        --a6;
        v32 = *a1;
        if (a7)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      a1[v19] = v27;
      *a1 = v28;
      v315 = v26[1];
      v351 = v26[2];
      v387 = v26[3];
      v423 = v26[4];
      v279 = *v26;
      v74 = *(a2 + 16);
      v73 = *(a2 + 32);
      v75 = *(a2 + 64);
      v26[3] = *(a2 + 48);
      v26[4] = v75;
      v26[1] = v74;
      v26[2] = v73;
      *v26 = *a2;
      *a2 = v279;
      *(a2 + 48) = v387;
      *(a2 + 64) = v423;
      *(a2 + 16) = v315;
      *(a2 + 32) = v351;
      v76 = *(a3 - 1);
      v77 = *a1;
      if (v76 < *a1)
      {
        *a1 = v76;
        *(a3 - 1) = v77;
        v280 = *a2;
        v388 = *(a2 + 48);
        v424 = *(a2 + 64);
        v316 = *(a2 + 16);
        v352 = *(a2 + 32);
        v78 = *(a4 - 1);
        v80 = *(a4 - 4);
        v79 = *(a4 - 3);
        *(a2 + 48) = *(a4 - 2);
        *(a2 + 64) = v78;
        *(a2 + 16) = v80;
        *(a2 + 32) = v79;
        *a2 = *v11;
        *(a4 - 4) = v316;
        *(a4 - 3) = v352;
        *(a4 - 2) = v388;
        *(a4 - 1) = v424;
        *v11 = v280;
      }
    }

    --a6;
    v32 = *a1;
    if (a7)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(a1 - 1) >= v32)
    {
      v301 = *a2;
      v445 = *(a2 + 64);
      v409 = *(a2 + 48);
      v373 = *(a2 + 32);
      v337 = *(a2 + 16);
      if (v32 >= *(a3 - 1))
      {
        v165 = a1 + 1;
        v166 = (a2 + 80);
        do
        {
          v12 = v165;
          v13 = v166;
          if (v165 >= a3)
          {
            break;
          }

          ++v165;
          v166 += 5;
        }

        while (v32 >= *v12);
      }

      else
      {
        v12 = a1;
        v13 = a2;
        do
        {
          v164 = v12[1];
          ++v12;
          v13 += 5;
        }

        while (v32 >= v164);
      }

      v167 = a3;
      v168 = a4;
      if (v12 < a3)
      {
        v167 = a3;
        v168 = a4;
        do
        {
          v169 = *(v167 - 1);
          v167 -= 4;
          v168 -= 5;
        }

        while (v32 < v169);
      }

      if (v12 < v167)
      {
        v170 = *v12;
        v171 = *v167;
        do
        {
          *v12 = v171;
          *v167 = v170;
          v259 = *v13;
          v265 = v13[3];
          v267 = v13[4];
          v261 = v13[1];
          v263 = v13[2];
          v172 = v168[4];
          v174 = v168[1];
          v173 = v168[2];
          v13[3] = v168[3];
          v13[4] = v172;
          v13[1] = v174;
          v13[2] = v173;
          *v13 = *v168;
          v168[3] = v265;
          v168[4] = v267;
          v168[1] = v261;
          v168[2] = v263;
          *v168 = v259;
          do
          {
            v175 = v12[1];
            ++v12;
            v170 = v175;
            v13 += 5;
          }

          while (v32 >= v175);
          do
          {
            v176 = *(v167 - 1);
            v167 -= 4;
            v171 = v176;
            v168 -= 5;
          }

          while (v32 < v176);
        }

        while (v12 < v167);
      }

      v177 = v12 - 1;
      v178 = (v13 - 5);
      if (v12 - 1 != a1)
      {
        *a1 = *v177;
        *a2 = *v178;
        v179 = *(v13 - 4);
        v180 = *(v13 - 3);
        v181 = *(v13 - 1);
        *(a2 + 48) = *(v13 - 2);
        *(a2 + 64) = v181;
        *(a2 + 16) = v179;
        *(a2 + 32) = v180;
      }

      a7 = 0;
      *v177 = v32;
      *(v13 - 4) = v337;
      *(v13 - 3) = v373;
      *(v13 - 2) = v409;
      *(v13 - 1) = v445;
      result = v301.n128_f64[0];
      *v178 = v301;
      goto LABEL_2;
    }

LABEL_62:
    v141 = 0;
    v300 = *a2;
    v444 = *(a2 + 64);
    v408 = *(a2 + 48);
    v372 = *(a2 + 32);
    v336 = *(a2 + 16);
    v142 = a2;
    do
    {
      v142 += 5;
      v143 = a1[++v141];
    }

    while (v143 < v32);
    v144 = &a1[v141];
    v145 = a3;
    v146 = a4;
    if (v141 == 1)
    {
      v145 = a3;
      v146 = a4;
      do
      {
        if (v144 >= v145)
        {
          break;
        }

        v147 = *(v145 - 1);
        v145 -= 4;
        v146 -= 5;
      }

      while (v147 >= v32);
    }

    else
    {
      do
      {
        v148 = *(v145 - 1);
        v145 -= 4;
        v146 -= 5;
      }

      while (v148 >= v32);
    }

    if (v144 >= v145)
    {
      v152 = v144 - 1;
      v158 = v142 - 5;
      if (v144 - 1 != a1)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v149 = *v145;
      v150 = &a1[v141];
      v151 = v145;
      do
      {
        *v150 = v149;
        v152 = v150 - 1;
        *v151 = v143;
        v262 = v142[2];
        v264 = v142[3];
        v266 = v142[4];
        v258 = *v142;
        v260 = v142[1];
        v154 = v146[1];
        v153 = v146[2];
        v155 = v146[4];
        v142[3] = v146[3];
        v142[4] = v155;
        v142[1] = v154;
        v142[2] = v153;
        *v142 = *v146;
        *v146 = v258;
        v146[3] = v264;
        v146[4] = v266;
        v146[1] = v260;
        v146[2] = v262;
        do
        {
          v156 = v150[1];
          ++v150;
          v143 = v156;
          v142 += 5;
          ++v152;
        }

        while (v156 < v32);
        do
        {
          v157 = *--v151;
          v149 = v157;
          v146 -= 5;
        }

        while (v157 >= v32);
      }

      while (v150 < v151);
      v158 = v142 - 5;
      if (v152 != a1)
      {
LABEL_77:
        *a1 = *v152;
        *a2 = *v158;
        v159 = v158[1];
        v160 = v158[2];
        v161 = v158[4];
        *(a2 + 48) = v158[3];
        *(a2 + 64) = v161;
        *(a2 + 16) = v159;
        *(a2 + 32) = v160;
      }
    }

    *v152 = v32;
    v158[1] = v336;
    v158[2] = v372;
    v158[3] = v408;
    v158[4] = v444;
    *v158 = v300;
    if (v144 < v145)
    {
      goto LABEL_85;
    }

    v162 = sub_F7DE3C(a1, a2, v152, v158);
    if (sub_F7DE3C(v152 + 1, v142, a3, a4))
    {
      a3 = v152;
      a4 = v158;
      if (!v162)
      {
        goto LABEL_1;
      }

      return result;
    }

    if (!v162)
    {
LABEL_85:
      sub_F7C320(a1, a2, v152, v158, a5, a6, a7 & 1);
      a7 = 0;
      v12 = v152 + 1;
      v13 = v158 + 5;
      goto LABEL_2;
    }

    a1 = v152 + 1;
    a2 = (v158 + 5);
    v14 = (a3 - (v152 + 1)) >> 2;
    v15 = v14 >= 2;
    if (v14 <= 2)
    {
      goto LABEL_3;
    }
  }

  v183 = *a1;
  v182 = a1[1];
  v184 = *(a3 - 1);
  if (v182 >= *a1)
  {
    if (v184 >= v182)
    {
      return result;
    }

    a1[1] = v184;
    *(a3 - 1) = v182;
    v332 = *(a2 + 96);
    v368 = *(a2 + 112);
    v404 = *(a2 + 128);
    v440 = *(a2 + 144);
    v296 = *(a2 + 80);
    *(a2 + 80) = *v11;
    v225 = *(a4 - 1);
    v227 = *(a4 - 4);
    v226 = *(a4 - 3);
    *(a2 + 128) = *(a4 - 2);
    *(a2 + 144) = v225;
    *(a2 + 96) = v227;
    *(a2 + 112) = v226;
    *v11 = v296;
    *(a4 - 1) = v440;
    *(a4 - 2) = v404;
    *(a4 - 3) = v368;
    result = *&v332;
    *(a4 - 4) = v332;
LABEL_135:
    v229 = *a1;
    v228 = a1[1];
    if (v228 < *a1)
    {
      *a1 = v228;
      a1[1] = v229;
      v297 = *a2;
      v405 = *(a2 + 48);
      v441 = *(a2 + 64);
      v333 = *(a2 + 16);
      v369 = *(a2 + 32);
      v230 = *(a2 + 112);
      v231 = *(a2 + 144);
      *(a2 + 48) = *(a2 + 128);
      *(a2 + 64) = v231;
      v232 = *(a2 + 80);
      *(a2 + 16) = *(a2 + 96);
      *(a2 + 32) = v230;
      *a2 = v232;
      *(a2 + 96) = v333;
      *(a2 + 112) = v369;
      *(a2 + 128) = v405;
      *(a2 + 144) = v441;
      result = v297.n128_f64[0];
      *(a2 + 80) = v297;
    }

    return result;
  }

  if (v184 >= v182)
  {
    *a1 = v182;
    a1[1] = v183;
    v298 = *a2;
    v406 = *(a2 + 48);
    v442 = *(a2 + 64);
    v334 = *(a2 + 16);
    v370 = *(a2 + 32);
    v245 = *(a2 + 112);
    v246 = *(a2 + 144);
    *(a2 + 48) = *(a2 + 128);
    *(a2 + 64) = v246;
    v247 = *(a2 + 80);
    *(a2 + 16) = *(a2 + 96);
    *(a2 + 32) = v245;
    *a2 = v247;
    *(a2 + 96) = v334;
    *(a2 + 112) = v370;
    *(a2 + 128) = v406;
    *(a2 + 144) = v442;
    result = v298.n128_f64[0];
    *(a2 + 80) = v298;
    v248 = *(a3 - 1);
    v249 = a1[1];
    if (v248 < v249)
    {
      a1[1] = v248;
      *(a3 - 1) = v249;
      v335 = *(a2 + 96);
      v371 = *(a2 + 112);
      v407 = *(a2 + 128);
      v443 = *(a2 + 144);
      v299 = *(a2 + 80);
      *(a2 + 80) = *v11;
      v250 = *(a4 - 1);
      v252 = *(a4 - 4);
      v251 = *(a4 - 3);
      *(a2 + 128) = *(a4 - 2);
      *(a2 + 144) = v250;
      *(a2 + 96) = v252;
      *(a2 + 112) = v251;
      *v11 = v299;
      *(a4 - 1) = v443;
      *(a4 - 2) = v407;
      *(a4 - 3) = v371;
      result = *&v335;
      *(a4 - 4) = v335;
    }
  }

  else
  {
    *a1 = v184;
    *(a3 - 1) = v183;
    v291 = *a2;
    v399 = *(a2 + 48);
    v435 = *(a2 + 64);
    v327 = *(a2 + 16);
    v363 = *(a2 + 32);
    v185 = *(a4 - 1);
    v187 = *(a4 - 4);
    v186 = *(a4 - 3);
    *(a2 + 48) = *(a4 - 2);
    *(a2 + 64) = v185;
    *(a2 + 16) = v187;
    *(a2 + 32) = v186;
    *a2 = *v11;
    *(a4 - 4) = v327;
    *(a4 - 3) = v363;
    *(a4 - 2) = v399;
    *(a4 - 1) = v435;
    result = v291.n128_f64[0];
    *v11 = v291;
  }

  return result;
}

__n128 sub_F7DB4C(unsigned int *a1, __n128 *a2, unsigned int *a3, __n128 *a4, unsigned int *a5, __n128 *a6, unsigned int *a7, __n128 *a8)
{
  v8 = *a3;
  v9 = *a1;
  v10 = *a5;
  if (*a3 >= *a1)
  {
    if (v10 < v8)
    {
      *a3 = v10;
      *a5 = v8;
      v56 = a4[2];
      v63 = a4[3];
      v70 = a4[4];
      v42 = *a4;
      v49 = a4[1];
      *a4 = *a6;
      v14 = a6[4];
      v16 = a6[1];
      v15 = a6[2];
      a4[3] = a6[3];
      a4[4] = v14;
      a4[1] = v16;
      a4[2] = v15;
      a6[3] = v63;
      a6[4] = v70;
      a6[1] = v49;
      a6[2] = v56;
      result = v42;
      *a6 = v42;
      v18 = *a1;
      if (*a3 < *a1)
      {
        *a1 = *a3;
        *a3 = v18;
        v57 = a2[2];
        v64 = a2[3];
        v71 = a2[4];
        v43 = *a2;
        v50 = a2[1];
        *a2 = *a4;
        v19 = a4[4];
        v21 = a4[1];
        v20 = a4[2];
        a2[3] = a4[3];
        a2[4] = v19;
        a2[1] = v21;
        a2[2] = v20;
        a4[3] = v64;
        a4[4] = v71;
        a4[1] = v50;
        a4[2] = v57;
        result = v43;
        *a4 = v43;
      }
    }
  }

  else
  {
    if (v10 < v8)
    {
      *a1 = v10;
      *a5 = v9;
      v55 = a2[2];
      v62 = a2[3];
      v69 = a2[4];
      v41 = *a2;
      v48 = a2[1];
      *a2 = *a6;
      v11 = a6[4];
      v13 = a6[1];
      v12 = a6[2];
      a2[3] = a6[3];
      a2[4] = v11;
      a2[1] = v13;
      a2[2] = v12;
LABEL_9:
      a6[3] = v62;
      a6[4] = v69;
      a6[1] = v48;
      a6[2] = v55;
      result = v41;
      *a6 = v41;
      goto LABEL_10;
    }

    *a1 = v8;
    *a3 = v9;
    v58 = a2[2];
    v65 = a2[3];
    v72 = a2[4];
    v44 = *a2;
    v51 = a2[1];
    *a2 = *a4;
    v22 = a4[4];
    v24 = a4[1];
    v23 = a4[2];
    a2[3] = a4[3];
    a2[4] = v22;
    a2[1] = v24;
    a2[2] = v23;
    a4[3] = v65;
    a4[4] = v72;
    a4[1] = v51;
    a4[2] = v58;
    result = v44;
    *a4 = v44;
    v25 = *a3;
    if (*a5 < *a3)
    {
      *a3 = *a5;
      *a5 = v25;
      v55 = a4[2];
      v62 = a4[3];
      v69 = a4[4];
      v41 = *a4;
      v48 = a4[1];
      *a4 = *a6;
      v26 = a6[4];
      v28 = a6[1];
      v27 = a6[2];
      a4[3] = a6[3];
      a4[4] = v26;
      a4[1] = v28;
      a4[2] = v27;
      goto LABEL_9;
    }
  }

LABEL_10:
  v29 = *a5;
  if (*a7 < *a5)
  {
    *a5 = *a7;
    *a7 = v29;
    v59 = a6[2];
    v66 = a6[3];
    v73 = a6[4];
    v45 = *a6;
    v52 = a6[1];
    *a6 = *a8;
    v30 = a8[4];
    v32 = a8[1];
    v31 = a8[2];
    a6[3] = a8[3];
    a6[4] = v30;
    a6[1] = v32;
    a6[2] = v31;
    a8[3] = v66;
    a8[4] = v73;
    a8[1] = v52;
    a8[2] = v59;
    result = v45;
    *a8 = v45;
    v33 = *a3;
    if (*a5 < *a3)
    {
      *a3 = *a5;
      *a5 = v33;
      v60 = a4[2];
      v67 = a4[3];
      v74 = a4[4];
      v46 = *a4;
      v53 = a4[1];
      *a4 = *a6;
      v34 = a6[4];
      v36 = a6[1];
      v35 = a6[2];
      a4[3] = a6[3];
      a4[4] = v34;
      a4[1] = v36;
      a4[2] = v35;
      a6[3] = v67;
      a6[4] = v74;
      a6[1] = v53;
      a6[2] = v60;
      result = v46;
      *a6 = v46;
      v37 = *a1;
      if (*a3 < *a1)
      {
        *a1 = *a3;
        *a3 = v37;
        v61 = a2[2];
        v68 = a2[3];
        v75 = a2[4];
        v47 = *a2;
        v54 = a2[1];
        *a2 = *a4;
        v38 = a4[4];
        v40 = a4[1];
        v39 = a4[2];
        a2[3] = a4[3];
        a2[4] = v38;
        a2[1] = v40;
        a2[2] = v39;
        a4[3] = v68;
        a4[4] = v75;
        a4[1] = v54;
        a4[2] = v61;
        result = v47;
        *a4 = v47;
      }
    }
  }

  return result;
}

BOOL sub_F7DE3C(unsigned int *a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v4 = a3 - a1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v38 = (a4 - 80);
      v40 = *a1;
      v39 = a1[1];
      v41 = *(a3 - 1);
      if (v39 >= *a1)
      {
        if (v41 < v39)
        {
          a1[1] = v41;
          *(a3 - 1) = v39;
          v135 = *(a2 + 112);
          v149 = *(a2 + 128);
          v163 = *(a2 + 144);
          v107 = *(a2 + 80);
          v121 = *(a2 + 96);
          *(a2 + 80) = *v38;
          v53 = *(a4 - 16);
          v55 = *(a4 - 64);
          v54 = *(a4 - 48);
          *(a2 + 128) = *(a4 - 32);
          *(a2 + 144) = v53;
          *(a2 + 96) = v55;
          *(a2 + 112) = v54;
          *(a4 - 32) = v149;
          *(a4 - 16) = v163;
          *(a4 - 64) = v121;
          *(a4 - 48) = v135;
          *v38 = v107;
          v57 = *a1;
          v56 = a1[1];
          if (v56 < *a1)
          {
            *a1 = v56;
            a1[1] = v57;
            v136 = *(a2 + 32);
            v150 = *(a2 + 48);
            v164 = *(a2 + 64);
            v108 = *a2;
            v122 = *(a2 + 16);
            v58 = *(a2 + 128);
            v59 = *(a2 + 144);
            v61 = *(a2 + 96);
            v60 = *(a2 + 112);
            *a2 = *(a2 + 80);
            *(a2 + 16) = v61;
            *(a2 + 32) = v60;
            *(a2 + 48) = v58;
            *(a2 + 64) = v59;
            *(a2 + 80) = v108;
            *(a2 + 128) = v150;
            *(a2 + 144) = v164;
            result = 1;
            *(a2 + 96) = v122;
            *(a2 + 112) = v136;
            return result;
          }
        }

        return 1;
      }

      if (v41 >= v39)
      {
        *a1 = v39;
        a1[1] = v40;
        v139 = *(a2 + 32);
        v153 = *(a2 + 48);
        v167 = *(a2 + 64);
        v111 = *a2;
        v125 = *(a2 + 16);
        v71 = *(a2 + 128);
        v72 = *(a2 + 144);
        v74 = *(a2 + 96);
        v73 = *(a2 + 112);
        *a2 = *(a2 + 80);
        *(a2 + 16) = v74;
        *(a2 + 32) = v73;
        *(a2 + 48) = v71;
        *(a2 + 64) = v72;
        *(a2 + 80) = v111;
        *(a2 + 128) = v153;
        *(a2 + 144) = v167;
        *(a2 + 96) = v125;
        *(a2 + 112) = v139;
        v75 = *(a3 - 1);
        v76 = a1[1];
        if (v75 >= v76)
        {
          return 1;
        }

        a1[1] = v75;
        *(a3 - 1) = v76;
        v133 = *(a2 + 112);
        v147 = *(a2 + 128);
        v161 = *(a2 + 144);
        v105 = *(a2 + 80);
        v119 = *(a2 + 96);
        *(a2 + 80) = *v38;
        v77 = *(a4 - 16);
        v79 = *(a4 - 64);
        v78 = *(a4 - 48);
        *(a2 + 128) = *(a4 - 32);
        *(a2 + 144) = v77;
        *(a2 + 96) = v79;
        *(a2 + 112) = v78;
      }

      else
      {
        *a1 = v41;
        *(a3 - 1) = v40;
        v133 = *(a2 + 32);
        v147 = *(a2 + 48);
        v161 = *(a2 + 64);
        v105 = *a2;
        v119 = *(a2 + 16);
        *a2 = *v38;
        v42 = *(a4 - 16);
        v44 = *(a4 - 64);
        v43 = *(a4 - 48);
        *(a2 + 48) = *(a4 - 32);
        *(a2 + 64) = v42;
        *(a2 + 16) = v44;
        *(a2 + 32) = v43;
      }

      *(a4 - 32) = v147;
      *(a4 - 16) = v161;
      *(a4 - 64) = v119;
      *(a4 - 48) = v133;
      result = 1;
      *v38 = v105;
      return result;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_F7DB4C(a1, a2, a1 + 1, (a2 + 80), a1 + 2, (a2 + 160), a1 + 3, (a2 + 240));
        v15 = *(a3 - 1);
        v16 = a1[3];
        if (v15 < v16)
        {
          a1[3] = v15;
          *(a3 - 1) = v16;
          v129 = *(a2 + 272);
          v143 = *(a2 + 288);
          v157 = *(a2 + 304);
          v101 = *(a2 + 240);
          v115 = *(a2 + 256);
          *(a2 + 240) = *(a4 - 80);
          v17 = *(a4 - 16);
          v19 = *(a4 - 64);
          v18 = *(a4 - 48);
          *(a2 + 288) = *(a4 - 32);
          *(a2 + 304) = v17;
          *(a2 + 256) = v19;
          *(a2 + 272) = v18;
          *(a4 - 32) = v143;
          *(a4 - 16) = v157;
          *(a4 - 64) = v115;
          *(a4 - 48) = v129;
          *(a4 - 80) = v101;
          v21 = a1[2];
          v20 = a1[3];
          if (v20 < v21)
          {
            a1[2] = v20;
            a1[3] = v21;
            v130 = *(a2 + 192);
            v144 = *(a2 + 208);
            v158 = *(a2 + 224);
            v102 = *(a2 + 160);
            v116 = *(a2 + 176);
            v22 = *(a2 + 288);
            v23 = *(a2 + 304);
            v25 = *(a2 + 256);
            v24 = *(a2 + 272);
            *(a2 + 160) = *(a2 + 240);
            *(a2 + 176) = v25;
            *(a2 + 192) = v24;
            *(a2 + 208) = v22;
            *(a2 + 224) = v23;
            *(a2 + 240) = v102;
            *(a2 + 288) = v144;
            *(a2 + 304) = v158;
            *(a2 + 256) = v116;
            *(a2 + 272) = v130;
            v27 = a1[1];
            v26 = a1[2];
            if (v26 < v27)
            {
              a1[1] = v26;
              a1[2] = v27;
              v131 = *(a2 + 112);
              v145 = *(a2 + 128);
              v159 = *(a2 + 144);
              v103 = *(a2 + 80);
              v117 = *(a2 + 96);
              v28 = *(a2 + 208);
              v29 = *(a2 + 224);
              v31 = *(a2 + 176);
              v30 = *(a2 + 192);
              *(a2 + 80) = *(a2 + 160);
              *(a2 + 96) = v31;
              *(a2 + 112) = v30;
              *(a2 + 128) = v28;
              *(a2 + 144) = v29;
              *(a2 + 160) = v103;
              *(a2 + 208) = v145;
              *(a2 + 224) = v159;
              *(a2 + 176) = v117;
              *(a2 + 192) = v131;
              v33 = *a1;
              v32 = a1[1];
              if (v32 < *a1)
              {
                *a1 = v32;
                a1[1] = v33;
                v132 = *(a2 + 32);
                v146 = *(a2 + 48);
                v160 = *(a2 + 64);
                v104 = *a2;
                v118 = *(a2 + 16);
                v34 = *(a2 + 128);
                v35 = *(a2 + 144);
                v37 = *(a2 + 96);
                v36 = *(a2 + 112);
                *a2 = *(a2 + 80);
                *(a2 + 16) = v37;
                *(a2 + 32) = v36;
                *(a2 + 48) = v34;
                *(a2 + 64) = v35;
                *(a2 + 80) = v104;
                *(a2 + 128) = v146;
                *(a2 + 144) = v160;
                result = 1;
                *(a2 + 96) = v118;
                *(a2 + 112) = v132;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_F7DB4C(a1, a2, a1 + 1, (a2 + 80), a1 + 2, (a2 + 160), a3 - 1, (a4 - 80));
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a3 - 1);
    v6 = *a1;
    if (v5 < *a1)
    {
      *a1 = v5;
      *(a3 - 1) = v6;
      v128 = *(a2 + 32);
      v142 = *(a2 + 48);
      v156 = *(a2 + 64);
      v100 = *a2;
      v114 = *(a2 + 16);
      *a2 = *(a4 - 80);
      v7 = *(a4 - 16);
      v9 = *(a4 - 64);
      v8 = *(a4 - 48);
      *(a2 + 48) = *(a4 - 32);
      *(a2 + 64) = v7;
      *(a2 + 16) = v9;
      *(a2 + 32) = v8;
      *(a4 - 32) = v142;
      *(a4 - 16) = v156;
      *(a4 - 64) = v114;
      *(a4 - 48) = v128;
      result = 1;
      *(a4 - 80) = v100;
      return result;
    }

    return 1;
  }

LABEL_17:
  v45 = a1 + 2;
  v46 = a1[2];
  v47 = (a2 + 160);
  v49 = *a1;
  v48 = a1[1];
  if (v48 >= *a1)
  {
    if (v46 < v48)
    {
      a1[1] = v46;
      a1[2] = v48;
      v137 = *(a2 + 112);
      v151 = *(a2 + 128);
      v165 = *(a2 + 144);
      v109 = *(a2 + 80);
      v123 = *(a2 + 96);
      *(a2 + 80) = *v47;
      v62 = *(a2 + 224);
      v64 = *(a2 + 176);
      v63 = *(a2 + 192);
      *(a2 + 128) = *(a2 + 208);
      *(a2 + 144) = v62;
      *(a2 + 96) = v64;
      *(a2 + 112) = v63;
      *(a2 + 208) = v151;
      *(a2 + 224) = v165;
      *(a2 + 176) = v123;
      *(a2 + 192) = v137;
      *v47 = v109;
      v66 = *a1;
      v65 = a1[1];
      if (v65 < *a1)
      {
        *a1 = v65;
        a1[1] = v66;
        v138 = *(a2 + 32);
        v152 = *(a2 + 48);
        v166 = *(a2 + 64);
        v110 = *a2;
        v124 = *(a2 + 16);
        v67 = *(a2 + 128);
        v68 = *(a2 + 144);
        v70 = *(a2 + 96);
        v69 = *(a2 + 112);
        *a2 = *(a2 + 80);
        *(a2 + 16) = v70;
        *(a2 + 32) = v69;
        *(a2 + 48) = v67;
        *(a2 + 64) = v68;
        *(a2 + 80) = v110;
        *(a2 + 128) = v152;
        *(a2 + 144) = v166;
        *(a2 + 96) = v124;
        *(a2 + 112) = v138;
      }
    }
  }

  else
  {
    if (v46 >= v48)
    {
      *a1 = v48;
      a1[1] = v49;
      v140 = *(a2 + 32);
      v154 = *(a2 + 48);
      v168 = *(a2 + 64);
      v112 = *a2;
      v126 = *(a2 + 16);
      v80 = *(a2 + 128);
      v81 = *(a2 + 144);
      v83 = *(a2 + 96);
      v82 = *(a2 + 112);
      *a2 = *(a2 + 80);
      *(a2 + 16) = v83;
      *(a2 + 32) = v82;
      *(a2 + 48) = v80;
      *(a2 + 64) = v81;
      *(a2 + 80) = v112;
      *(a2 + 128) = v154;
      *(a2 + 144) = v168;
      *(a2 + 96) = v126;
      *(a2 + 112) = v140;
      v85 = a1[1];
      v84 = a1[2];
      if (v84 >= v85)
      {
        goto LABEL_33;
      }

      a1[1] = v84;
      a1[2] = v85;
      v134 = *(a2 + 112);
      v148 = *(a2 + 128);
      v162 = *(a2 + 144);
      v106 = *(a2 + 80);
      v120 = *(a2 + 96);
      *(a2 + 80) = *v47;
      v86 = *(a2 + 224);
      v88 = *(a2 + 176);
      v87 = *(a2 + 192);
      *(a2 + 128) = *(a2 + 208);
      *(a2 + 144) = v86;
      *(a2 + 96) = v88;
      *(a2 + 112) = v87;
    }

    else
    {
      *a1 = v46;
      a1[2] = v49;
      v134 = *(a2 + 32);
      v148 = *(a2 + 48);
      v162 = *(a2 + 64);
      v106 = *a2;
      v120 = *(a2 + 16);
      *a2 = *v47;
      v50 = *(a2 + 224);
      v52 = *(a2 + 176);
      v51 = *(a2 + 192);
      *(a2 + 48) = *(a2 + 208);
      *(a2 + 64) = v50;
      *(a2 + 16) = v52;
      *(a2 + 32) = v51;
    }

    *(a2 + 208) = v148;
    *(a2 + 224) = v162;
    *(a2 + 176) = v120;
    *(a2 + 192) = v134;
    *v47 = v106;
  }

LABEL_33:
  v89 = a1 + 3;
  if (a1 + 3 == a3)
  {
    return 1;
  }

  v90 = 0;
  for (i = (a2 + 240); ; i += 5)
  {
    v92 = *v89;
    if (*v89 < *v45)
    {
      v113 = *i;
      v169 = i[4];
      v155 = i[3];
      v141 = i[2];
      v127 = i[1];
      v93 = *v45;
      v94 = v89;
      v95 = i;
      do
      {
        v96 = v95;
        v95 = v47;
        *v94 = v93;
        v94 = v45;
        *v96 = *v47;
        v97 = v47[1];
        v98 = v47[2];
        v99 = v47[4];
        v96[3] = v47[3];
        v96[4] = v99;
        v96[1] = v97;
        v96[2] = v98;
        if (v45 == a1)
        {
          break;
        }

        --v45;
        v93 = *(v94 - 1);
        v47 -= 5;
      }

      while (v92 < v93);
      *v94 = v92;
      *v95 = v113;
      v95[3] = v155;
      v95[4] = v169;
      v95[1] = v127;
      v95[2] = v141;
      if (++v90 == 8)
      {
        break;
      }
    }

    v45 = v89;
    v47 = i;
    if (++v89 == a3)
    {
      return 1;
    }
  }

  return v89 + 1 == a3;
}

char *sub_F7E5A8(char *a1, __int128 *a2, char *a3, __int128 *a4, char *a5)
{
  v5 = a3 - a1;
  if (a3 == a1)
  {
    return a5;
  }

  v6 = v5 >> 2;
  if (v5 >> 2 >= 2)
  {
    v7 = ((v5 >> 2) - 2) >> 1;
    v8 = v7;
    do
    {
      v9 = v8;
      if (v7 >= v8)
      {
        v10 = (2 * v8) | 1;
        v11 = &a1[4 * v10];
        v12 = &a2[5 * v10];
        if (2 * v9 + 2 < v6 && *v11 < *(v11 + 1))
        {
          v11 += 4;
          v12 += 5;
          v10 = 2 * v9 + 2;
        }

        v13 = &a1[4 * v9];
        v14 = *v11;
        v15 = *v13;
        if (*v11 >= *v13)
        {
          v16 = &a2[5 * v9];
          v84 = v16[1];
          v89 = v16[2];
          v94 = v16[3];
          v99 = v16[4];
          v79 = *v16;
          while (1)
          {
            v17 = v16;
            v16 = v12;
            *v13 = v14;
            v13 = v11;
            *v17 = *v12;
            v18 = v12[1];
            v19 = v12[2];
            v20 = v12[4];
            v17[3] = v12[3];
            v17[4] = v20;
            v17[1] = v18;
            v17[2] = v19;
            if (v7 < v10)
            {
              break;
            }

            v21 = (2 * v10) | 1;
            v11 = &a1[4 * v21];
            v12 = &a2[5 * v21];
            v10 = 2 * v10 + 2;
            if (v10 < v6)
            {
              if (*v11 >= *(v11 + 1))
              {
                v10 = v21;
              }

              else
              {
                v11 += 4;
                v12 += 5;
              }

              v14 = *v11;
              if (*v11 < v15)
              {
                break;
              }
            }

            else
            {
              v10 = v21;
              v14 = *v11;
              if (*v11 < v15)
              {
                break;
              }
            }
          }

          *v13 = v15;
          *v16 = v79;
          v16[3] = v94;
          v16[4] = v99;
          v16[1] = v84;
          v16[2] = v89;
        }
      }

      v8 = v9 - 1;
    }

    while (v9);
  }

  if (a3 != a5)
  {
    if (v6 < 2)
    {
      v48 = a4;
      v49 = a3;
      do
      {
        v50 = *v49;
        if (*v49 < *a1)
        {
          *v49 = *a1;
          *a1 = v50;
          v92 = v48[3];
          v97 = v48[4];
          v82 = v48[1];
          v87 = v48[2];
          v77 = *v48;
          *v48 = *a2;
          v51 = a2[4];
          v53 = a2[1];
          v52 = a2[2];
          v48[3] = a2[3];
          v48[4] = v51;
          v48[1] = v53;
          v48[2] = v52;
          a2[3] = v92;
          a2[4] = v97;
          a2[1] = v82;
          a2[2] = v87;
          *a2 = v77;
        }

        v49 += 4;
        v48 += 5;
      }

      while (v49 != a5);
      goto LABEL_22;
    }

    v54 = a4;
    v55 = a3;
    while (1)
    {
      v56 = *v55;
      if (*v55 < *a1)
      {
        *v55 = *a1;
        *a1 = v56;
        v93 = v54[3];
        v98 = v54[4];
        v83 = v54[1];
        v88 = v54[2];
        v78 = *v54;
        *v54 = *a2;
        v57 = a2[4];
        v59 = a2[1];
        v58 = a2[2];
        v54[3] = a2[3];
        v54[4] = v57;
        v54[1] = v59;
        v54[2] = v58;
        a2[3] = v93;
        a2[4] = v98;
        a2[1] = v83;
        a2[2] = v88;
        *a2 = v78;
        if (v5 == 8 || *(a1 + 1) >= *(a1 + 2))
        {
          v60 = a1 + 4;
          v61 = a2 + 5;
          v62 = 1;
          v63 = *(a1 + 1);
          v64 = *a1;
          if (v63 >= *a1)
          {
LABEL_57:
            v86 = a2[1];
            v91 = a2[2];
            v96 = a2[3];
            v101 = a2[4];
            v81 = *a2;
            v65 = a1;
            v66 = a2;
            while (1)
            {
              v67 = v66;
              v66 = v61;
              *v65 = v63;
              v65 = v60;
              *v67 = *v61;
              v68 = v61[1];
              v69 = v61[2];
              v70 = v61[4];
              v67[3] = v61[3];
              v67[4] = v70;
              v67[1] = v68;
              v67[2] = v69;
              if (((v6 - 2) >> 1) < v62)
              {
                break;
              }

              v71 = (2 * v62) | 1;
              v60 = &a1[4 * v71];
              v61 = &a2[5 * v71];
              v62 = 2 * v62 + 2;
              if (v62 < v6)
              {
                if (*v60 >= *(v60 + 1))
                {
                  v62 = v71;
                }

                else
                {
                  v60 += 4;
                  v61 += 5;
                }

                v63 = *v60;
                if (*v60 < v64)
                {
                  break;
                }
              }

              else
              {
                v62 = v71;
                v63 = *v60;
                if (*v60 < v64)
                {
                  break;
                }
              }
            }

            *v65 = v64;
            *v66 = v81;
            v66[3] = v96;
            v66[4] = v101;
            v66[1] = v86;
            v66[2] = v91;
          }
        }

        else
        {
          v60 = a1 + 8;
          v61 = a2 + 10;
          v62 = 2;
          v63 = *(a1 + 2);
          v64 = *a1;
          if (v63 >= *a1)
          {
            goto LABEL_57;
          }
        }
      }

      v55 += 4;
      v54 += 5;
      if (v55 == a5)
      {
        goto LABEL_22;
      }
    }
  }

  a5 = a3;
LABEL_22:
  if (v6 >= 2)
  {
    do
    {
      if (v6 >= 2)
      {
        v23 = 0;
        v73 = a2[1];
        v74 = a2[2];
        v75 = a2[3];
        v76 = a2[4];
        v24 = *a1;
        v25 = a1;
        v26 = a2;
        v72 = *a2;
        do
        {
          v27 = &v25[4 * v23 + 4];
          v28 = &v26[5 * v23 + 5];
          v32 = (2 * v23) | 1;
          v23 = 2 * v23 + 2;
          if (v23 < v6)
          {
            if (*v27 >= *(v27 + 1))
            {
              v23 = v32;
            }

            else
            {
              v27 += 4;
              v28 += 5;
            }
          }

          else
          {
            v23 = v32;
          }

          *v25 = *v27;
          *v26 = *v28;
          v29 = v28[1];
          v30 = v28[2];
          v31 = v28[4];
          v26[3] = v28[3];
          v26[4] = v31;
          v26[1] = v29;
          v26[2] = v30;
          v25 = v27;
          v26 = v28;
        }

        while (v23 <= ((v6 - 2) >> 1));
        v33 = a3 - 4;
        if (v27 == a3 - 4)
        {
          *v27 = v24;
          *v28 = v72;
          v28[3] = v75;
          v28[4] = v76;
          v28[1] = v73;
          v28[2] = v74;
        }

        else
        {
          *v27 = *v33;
          *v28 = *(a4 - 5);
          v34 = *(a4 - 4);
          v35 = *(a4 - 3);
          v36 = *(a4 - 1);
          v28[3] = *(a4 - 2);
          v28[4] = v36;
          v28[1] = v34;
          v28[2] = v35;
          *v33 = v24;
          *(a4 - 3) = v74;
          *(a4 - 2) = v75;
          *(a4 - 1) = v76;
          *(a4 - 5) = v72;
          *(a4 - 4) = v73;
          v37 = (v27 - a1 + 4) >> 2;
          v22 = v37 < 2;
          v38 = v37 - 2;
          if (!v22)
          {
            v39 = v38 >> 1;
            v40 = &a1[4 * v39];
            v41 = *v40;
            v42 = *v27;
            if (*v40 < *v27)
            {
              v80 = *v28;
              v100 = v28[4];
              v95 = v28[3];
              v90 = v28[2];
              v85 = v28[1];
              do
              {
                *v27 = v41;
                v27 = v40;
                v43 = &a2[5 * v39];
                *v28 = *v43;
                v44 = v43[1];
                v45 = v43[2];
                v46 = v43[4];
                v28[3] = v43[3];
                v28[4] = v46;
                v28[1] = v44;
                v28[2] = v45;
                if (!v39)
                {
                  break;
                }

                v39 = (v39 - 1) >> 1;
                v40 = &a1[4 * v39];
                v41 = *v40;
                v28 = v43;
              }

              while (*v40 < v42);
              *v27 = v42;
              v43[2] = v90;
              v43[3] = v95;
              v43[4] = v100;
              *v43 = v80;
              v43[1] = v85;
            }
          }
        }
      }

      a3 -= 4;
      a4 -= 5;
      v22 = v6-- > 2;
    }

    while (v22);
  }

  return a5;
}

uint64_t sub_F7EBF8(uint64_t result, int a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (a2 != -1)
  {
    operator new();
  }

  *(result + 56) = 0u;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *(result + 104) = 0u;
  *(result + 88) = 0u;
  *(result + 72) = 0u;
  return result;
}

void sub_F7ECD4(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 48);
  if (v4)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      v6 = *v1;
      if (!*v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 32) = v5;
  operator delete(v5);
  v6 = *v1;
  if (!*v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  *(v1 + 8) = v6;
  operator delete(v6);
  goto LABEL_5;
}

void sub_F7ED24()
{
  if (!*v0)
  {
    JUMPOUT(0xF7ECF8);
  }

  JUMPOUT(0xF7ECF0);
}

uint64_t sub_F7ED34(uint64_t result, __int128 *a2)
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

void sub_F7EE24(_Unwind_Exception *exception_object)
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

void sub_F7EE58(unsigned int *a1, uint64_t a2, char *a3, __int128 *a4, uint64_t a5, uint64_t a6, char a7, __n128 a8)
{
LABEL_1:
  v12 = (a4 - 56);
  v344 = (a4 - 168);
  v345 = a4 - 7;
  v13 = a1;
  v14 = a2;
LABEL_2:
  a1 = v13;
  a2 = v14;
  v15 = (a3 - v13) >> 2;
  v16 = v15 >= 2;
  while (v15 <= 2)
  {
    if (!v16)
    {
      return;
    }

    if (v15 == 2)
    {
      v290 = *(a3 - 1);
      v291 = *a1;
      if (v290 < *a1)
      {
        *a1 = v290;
        *(a3 - 1) = v291;
        v405 = *(a2 + 48);
        v377 = *(a2 + 16);
        v391 = *(a2 + 32);
        v361 = *a2;
        v292 = *(a4 - 56);
        v293 = *(a4 - 40);
        v294 = *(a4 - 24);
        *(a2 + 48) = *(a4 - 1);
        *(a2 + 16) = v293;
        *(a2 + 32) = v294;
        *a2 = v292;
        *(a4 - 56) = v361;
        *(a4 - 40) = v377;
        *(a4 - 24) = v391;
        *(a4 - 1) = v405;
      }

      return;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a7)
      {
        if (a1 != a3)
        {
          v295 = a1 + 1;
          if (a1 + 1 != a3)
          {
            v296 = 0;
            v297 = 0;
            v298 = a2;
            v299 = a1;
            do
            {
              v302 = v295;
              v298 += 56;
              v303 = v299[1];
              if (v303 < *v299)
              {
                v366 = *v298;
                v382 = *(v298 + 16);
                v396 = *(v298 + 32);
                v410 = *(v298 + 48);
                v304 = *v299;
                v305 = v296;
                v306 = v297;
                do
                {
                  v307 = a2 + v305;
                  *(a1 + v306 + 4) = v304;
                  v308 = *(a2 + v305 + 16);
                  *(v307 + 56) = *(a2 + v305);
                  *(v307 + 72) = v308;
                  *(v307 + 88) = *(a2 + v305 + 32);
                  *(v307 + 104) = *(a2 + v305 + 48);
                  if (!v306)
                  {
                    v300 = a1;
                    v301 = a2;
                    goto LABEL_122;
                  }

                  v304 = *(a1 + v306 - 4);
                  v306 -= 4;
                  v305 -= 56;
                }

                while (v303 < v304);
                v300 = (a1 + v306 + 4);
                v301 = a2 + v305 + 56;
LABEL_122:
                *v300 = v303;
                *(v301 + 48) = v410;
                *(v301 + 16) = v382;
                *(v301 + 32) = v396;
                *v301 = v366;
              }

              v295 = v302 + 1;
              v297 += 4;
              v296 += 56;
              v299 = v302;
            }

            while (v302 + 1 != a3);
          }
        }
      }

      else if (a1 != a3)
      {
        v321 = (a1 + 1);
        if (a1 + 1 != a3)
        {
          v322 = a2 + 56;
          do
          {
            v323 = v321 - 4;
            v324 = *(v321 - 1);
            v325 = *v321;
            if (*v321 < v324)
            {
              v326 = v322 - 56;
              v367 = *v322;
              v383 = *(v322 + 16);
              v397 = *(v322 + 32);
              v411 = *(v322 + 48);
              v327 = v321;
              v328 = v322;
              do
              {
                *v327 = v324;
                v327 = v323;
                v329 = *v326;
                v330 = *(v326 + 16);
                v331 = *(v326 + 32);
                *(v328 + 48) = *(v326 + 48);
                *(v328 + 16) = v330;
                *(v328 + 32) = v331;
                *v328 = v329;
                v332 = *(v323 - 1);
                v323 -= 4;
                v324 = v332;
                v328 = v326;
                v326 -= 56;
              }

              while (v325 < v332);
              *(v323 + 1) = v325;
              *(v326 + 56) = v367;
              *(v326 + 72) = v383;
              *(v326 + 88) = v397;
              *(v326 + 104) = v411;
            }

            v321 += 4;
            v322 += 56;
          }

          while (v321 != a3);
        }
      }

      return;
    }

    if (!a6)
    {
      if (a1 != a3)
      {

        sub_F80A0C(a1, a2, a3, a4, a3);
      }

      return;
    }

    v17 = v15 >> 1;
    v18 = 56 * (v15 >> 1);
    v19 = *(a3 - 1);
    v20 = v15 >> 1;
    if (v15 >= 0x81)
    {
      v21 = v18 + a2;
      v22 = a1[v20];
      v23 = *a1;
      if (v22 >= *a1)
      {
        if (v19 < v22)
        {
          a1[v20] = v19;
          *(a3 - 1) = v22;
          v38 = *(v21 + 48);
          v40 = *(v21 + 16);
          v39 = *(v21 + 32);
          v41 = *v21;
          v43 = *(a4 - 40);
          v42 = *(a4 - 24);
          v44 = *v12;
          *(v21 + 48) = *(a4 - 1);
          *(v21 + 16) = v43;
          *(v21 + 32) = v42;
          *v21 = v44;
          *v12 = v41;
          *(a4 - 40) = v40;
          *(a4 - 24) = v39;
          *(a4 - 1) = v38;
          v45 = a1[v20];
          v46 = *a1;
          if (v45 < *a1)
          {
            *a1 = v45;
            a1[v20] = v46;
            v399 = *(a2 + 48);
            v369 = *(a2 + 16);
            v385 = *(a2 + 32);
            v355 = *a2;
            v47 = *v21;
            v48 = *(v21 + 16);
            v49 = *(v21 + 32);
            *(a2 + 48) = *(v21 + 48);
            *(a2 + 16) = v48;
            *(a2 + 32) = v49;
            *a2 = v47;
            *v21 = v355;
            *(v21 + 16) = v369;
            *(v21 + 32) = v385;
            *(v21 + 48) = v399;
          }
        }
      }

      else
      {
        if (v19 < v22)
        {
          *a1 = v19;
          *(a3 - 1) = v23;
          v398 = *(a2 + 48);
          v368 = *(a2 + 16);
          v384 = *(a2 + 32);
          v354 = *a2;
          v24 = *v12;
          v25 = *(a4 - 40);
          v26 = *(a4 - 24);
          *(a2 + 48) = *(a4 - 1);
          *(a2 + 16) = v25;
          *(a2 + 32) = v26;
          *a2 = v24;
          *v12 = v354;
          *(a4 - 40) = v368;
          *(a4 - 24) = v384;
          v27 = v398;
          goto LABEL_28;
        }

        *a1 = v22;
        a1[v20] = v23;
        v401 = *(a2 + 48);
        v372 = *(a2 + 16);
        v387 = *(a2 + 32);
        v357 = *a2;
        v61 = *v21;
        v62 = *(v21 + 16);
        v63 = *(v21 + 32);
        *(a2 + 48) = *(v21 + 48);
        *(a2 + 16) = v62;
        *(a2 + 32) = v63;
        *a2 = v61;
        *v21 = v357;
        *(v21 + 16) = v372;
        *(v21 + 32) = v387;
        *(v21 + 48) = v401;
        v64 = *(a3 - 1);
        v65 = a1[v20];
        if (v64 < v65)
        {
          a1[v20] = v64;
          *(a3 - 1) = v65;
          v27 = *(v21 + 48);
          v67 = *(v21 + 16);
          v66 = *(v21 + 32);
          v68 = *v21;
          v70 = *(a4 - 40);
          v69 = *(a4 - 24);
          v71 = *v12;
          *(v21 + 48) = *(a4 - 1);
          *(v21 + 16) = v70;
          *(v21 + 32) = v69;
          *v21 = v71;
          *v12 = v68;
          *(a4 - 40) = v67;
          *(a4 - 24) = v66;
LABEL_28:
          *(a4 - 1) = v27;
        }
      }

      v72 = v17 - 1;
      v73 = a2 + 56 * (v17 - 1);
      v74 = a1[v72];
      v75 = a1[1];
      v76 = *(a3 - 2);
      if (v74 >= v75)
      {
        if (v76 < v74)
        {
          a1[v72] = v76;
          *(a3 - 2) = v74;
          v85 = *(v73 + 48);
          v87 = *(v73 + 16);
          v86 = *(v73 + 32);
          v88 = *v73;
          v90 = *(a4 - 6);
          v89 = *(a4 - 5);
          v91 = *v345;
          *(v73 + 48) = *(a4 - 8);
          *(v73 + 16) = v90;
          *(v73 + 32) = v89;
          *v73 = v91;
          *v345 = v88;
          *(a4 - 6) = v87;
          *(a4 - 5) = v86;
          *(a4 - 8) = v85;
          v92 = a1[v72];
          v93 = a1[1];
          if (v92 < v93)
          {
            a1[1] = v92;
            a1[v72] = v93;
            v94 = *(a2 + 104);
            v95 = *(a2 + 88);
            v96 = *(a2 + 72);
            v97 = *(a2 + 56);
            v99 = *(v73 + 16);
            v98 = *(v73 + 32);
            v100 = *(v73 + 48);
            *(a2 + 56) = *v73;
            *(a2 + 104) = v100;
            *(a2 + 88) = v98;
            *(a2 + 72) = v99;
            *v73 = v97;
            *(v73 + 16) = v96;
            *(v73 + 32) = v95;
            *(v73 + 48) = v94;
          }
        }
      }

      else
      {
        if (v76 < v74)
        {
          a1[1] = v76;
          *(a3 - 2) = v75;
          v77 = *(a2 + 104);
          v78 = *(a2 + 88);
          v79 = *(a2 + 72);
          v80 = *(a2 + 56);
          v81 = a4 - 7;
          v83 = *(a4 - 6);
          v82 = *(a4 - 5);
          v84 = *(a4 - 8);
          *(a2 + 56) = *v345;
          *(a2 + 104) = v84;
          *(a2 + 88) = v82;
          *(a2 + 72) = v83;
          goto LABEL_42;
        }

        a1[1] = v74;
        a1[v72] = v75;
        v112 = *(a2 + 104);
        v113 = *(a2 + 88);
        v114 = *(a2 + 72);
        v115 = *(a2 + 56);
        v117 = *(v73 + 16);
        v116 = *(v73 + 32);
        v118 = *(v73 + 48);
        *(a2 + 56) = *v73;
        *(a2 + 104) = v118;
        *(a2 + 88) = v116;
        *(a2 + 72) = v117;
        *v73 = v115;
        *(v73 + 16) = v114;
        *(v73 + 32) = v113;
        *(v73 + 48) = v112;
        v119 = *(a3 - 2);
        v120 = a1[v72];
        if (v119 < v120)
        {
          a1[v72] = v119;
          *(a3 - 2) = v120;
          v77 = *(v73 + 48);
          v79 = *(v73 + 16);
          v78 = *(v73 + 32);
          v80 = *v73;
          v81 = a4 - 7;
          v122 = *(a4 - 6);
          v121 = *(a4 - 5);
          v123 = *v345;
          *(v73 + 48) = *(a4 - 8);
          *(v73 + 16) = v122;
          *(v73 + 32) = v121;
          *v73 = v123;
LABEL_42:
          *v81 = v80;
          v81[1] = v79;
          v81[2] = v78;
          *(v81 + 6) = v77;
        }
      }

      v124 = v17 + 1;
      v125 = v124;
      v126 = a2 + 56 * v124;
      v127 = a1[v125];
      v128 = a1[2];
      v129 = *(a3 - 3);
      if (v127 >= v128)
      {
        if (v129 < v127)
        {
          a1[v125] = v129;
          *(a3 - 3) = v127;
          v138 = *(v126 + 48);
          v140 = *(v126 + 16);
          v139 = *(v126 + 32);
          v141 = *v126;
          v143 = *(a4 - 152);
          v142 = *(a4 - 136);
          v144 = *v344;
          *(v126 + 48) = *(a4 - 15);
          *(v126 + 16) = v143;
          *(v126 + 32) = v142;
          *v126 = v144;
          *v344 = v141;
          *(a4 - 152) = v140;
          *(a4 - 136) = v139;
          *(a4 - 15) = v138;
          v145 = a1[v125];
          v146 = a1[2];
          if (v145 < v146)
          {
            a1[2] = v145;
            a1[v125] = v146;
            v147 = *(a2 + 160);
            v149 = *(a2 + 128);
            v148 = *(a2 + 144);
            v150 = *(a2 + 112);
            v152 = *(v126 + 16);
            v151 = *(v126 + 32);
            v153 = *v126;
            *(a2 + 160) = *(v126 + 48);
            *(a2 + 128) = v152;
            *(a2 + 144) = v151;
            *(a2 + 112) = v153;
            *v126 = v150;
            *(v126 + 16) = v149;
            *(v126 + 32) = v148;
            *(v126 + 48) = v147;
          }
        }
      }

      else
      {
        if (v129 < v127)
        {
          a1[2] = v129;
          *(a3 - 3) = v128;
          v130 = *(a2 + 160);
          v132 = *(a2 + 128);
          v131 = *(a2 + 144);
          v133 = *(a2 + 112);
          v134 = a4 - 168;
          v136 = *(a4 - 152);
          v135 = *(a4 - 136);
          v137 = *v344;
          *(a2 + 160) = *(a4 - 15);
          *(a2 + 128) = v136;
          *(a2 + 144) = v135;
          *(a2 + 112) = v137;
          goto LABEL_51;
        }

        a1[2] = v127;
        a1[v125] = v128;
        v154 = *(a2 + 160);
        v156 = *(a2 + 128);
        v155 = *(a2 + 144);
        v157 = *(a2 + 112);
        v159 = *(v126 + 16);
        v158 = *(v126 + 32);
        v160 = *v126;
        *(a2 + 160) = *(v126 + 48);
        *(a2 + 128) = v159;
        *(a2 + 144) = v158;
        *(a2 + 112) = v160;
        *v126 = v157;
        *(v126 + 16) = v156;
        *(v126 + 32) = v155;
        *(v126 + 48) = v154;
        v161 = *(a3 - 3);
        v162 = a1[v125];
        if (v161 < v162)
        {
          a1[v125] = v161;
          *(a3 - 3) = v162;
          v130 = *(v126 + 48);
          v132 = *(v126 + 16);
          v131 = *(v126 + 32);
          v133 = *v126;
          v134 = a4 - 168;
          v164 = *(a4 - 152);
          v163 = *(a4 - 136);
          v165 = *v344;
          *(v126 + 48) = *(a4 - 15);
          *(v126 + 16) = v164;
          *(v126 + 32) = v163;
          *v126 = v165;
LABEL_51:
          *v134 = v133;
          *(v134 + 1) = v132;
          *(v134 + 2) = v131;
          *(v134 + 6) = v130;
        }
      }

      v166 = a1[v20];
      v167 = a1[v72];
      v168 = a1[v125];
      if (v166 >= v167)
      {
        if (v168 < v166)
        {
          a1[v20] = v168;
          a1[v125] = v166;
          v176 = *(v21 + 48);
          v178 = *(v21 + 16);
          v177 = *(v21 + 32);
          v179 = *v21;
          v181 = *(v126 + 16);
          v180 = *(v126 + 32);
          v182 = *v126;
          *(v21 + 48) = *(v126 + 48);
          *(v21 + 16) = v181;
          *(v21 + 32) = v180;
          *v21 = v182;
          *v126 = v179;
          *(v126 + 16) = v178;
          *(v126 + 32) = v177;
          *(v126 + 48) = v176;
          v183 = a1[v20];
          v184 = a1[v72];
          if (v183 < v184)
          {
            a1[v72] = v183;
            a1[v20] = v184;
            v185 = *(v73 + 48);
            v187 = *(v73 + 16);
            v186 = *(v73 + 32);
            v188 = *v73;
            v190 = *(v21 + 16);
            v189 = *(v21 + 32);
            v191 = *v21;
            *(v73 + 48) = *(v21 + 48);
            *(v73 + 16) = v190;
            *(v73 + 32) = v189;
            *v73 = v191;
            *v21 = v188;
            *(v21 + 16) = v187;
            *(v21 + 32) = v186;
            *(v21 + 48) = v185;
          }
        }
      }

      else if (v168 >= v166)
      {
        a1[v72] = v166;
        a1[v20] = v167;
        v192 = *(v73 + 48);
        v194 = *(v73 + 16);
        v193 = *(v73 + 32);
        v195 = *v73;
        v197 = *(v21 + 16);
        v196 = *(v21 + 32);
        v198 = *v21;
        *(v73 + 48) = *(v21 + 48);
        *(v73 + 16) = v197;
        *(v73 + 32) = v196;
        *v73 = v198;
        *v21 = v195;
        *(v21 + 16) = v194;
        *(v21 + 32) = v193;
        *(v21 + 48) = v192;
        v199 = a1[v125];
        v200 = a1[v20];
        if (v199 < v200)
        {
          a1[v20] = v199;
          a1[v125] = v200;
          v201 = *(v21 + 48);
          v203 = *(v21 + 16);
          v202 = *(v21 + 32);
          v204 = *v21;
          v206 = *(v126 + 16);
          v205 = *(v126 + 32);
          v207 = *v126;
          *(v21 + 48) = *(v126 + 48);
          *(v21 + 16) = v206;
          *(v21 + 32) = v205;
          *v21 = v207;
          *v126 = v204;
          *(v126 + 16) = v203;
          *(v126 + 32) = v202;
          *(v126 + 48) = v201;
        }
      }

      else
      {
        a1[v72] = v168;
        a1[v125] = v167;
        v169 = *(v73 + 48);
        v171 = *(v73 + 16);
        v170 = *(v73 + 32);
        v172 = *v73;
        v174 = *(v126 + 16);
        v173 = *(v126 + 32);
        v175 = *v126;
        *(v73 + 48) = *(v126 + 48);
        *(v73 + 16) = v174;
        *(v73 + 32) = v173;
        *v73 = v175;
        *v126 = v172;
        *(v126 + 16) = v171;
        *(v126 + 32) = v170;
        *(v126 + 48) = v169;
      }

      v208 = *a1;
      *a1 = a1[v20];
      a1[v20] = v208;
      v403 = *(a2 + 48);
      v375 = *(a2 + 16);
      v389 = *(a2 + 32);
      v359 = *a2;
      v209 = *v21;
      v210 = *(v21 + 16);
      v211 = *(v21 + 32);
      *(a2 + 48) = *(v21 + 48);
      *(a2 + 16) = v210;
      *(a2 + 32) = v211;
      *a2 = v209;
      *v21 = v359;
      *(v21 + 16) = v375;
      *(v21 + 32) = v389;
      *(v21 + 48) = v403;
      --a6;
      v60 = *a1;
      if (a7)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v28 = v18 + a2;
    v29 = *a1;
    v30 = a1[v20];
    if (*a1 >= v30)
    {
      if (v19 < v29)
      {
        *a1 = v19;
        *(a3 - 1) = v29;
        v400 = *(a2 + 48);
        v370 = *(a2 + 16);
        v386 = *(a2 + 32);
        v356 = *a2;
        v50 = *v12;
        v51 = *(a4 - 40);
        v52 = *(a4 - 24);
        *(a2 + 48) = *(a4 - 1);
        *(a2 + 16) = v51;
        *(a2 + 32) = v52;
        *a2 = v50;
        *v12 = v356;
        *(a4 - 40) = v370;
        *(a4 - 24) = v386;
        *(a4 - 1) = v400;
        v53 = a1[v20];
        if (*a1 < v53)
        {
          a1[v20] = *a1;
          *a1 = v53;
          v54 = *v28;
          v371 = *(v28 + 16);
          v55 = *(v28 + 32);
          v56 = *(v28 + 48);
          v57 = *(a2 + 48);
          v59 = *(a2 + 16);
          v58 = *(a2 + 32);
          *v28 = *a2;
          *(v28 + 16) = v59;
          *(v28 + 32) = v58;
          *(v28 + 48) = v57;
          *(a2 + 16) = v371;
          *(a2 + 32) = v55;
          *(a2 + 48) = v56;
          *a2 = v54;
          --a6;
          v60 = *a1;
          if (a7)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }
      }
    }

    else
    {
      if (v19 >= v29)
      {
        a1[v20] = v29;
        *a1 = v30;
        v101 = *v28;
        v373 = *(v28 + 16);
        v102 = *(v28 + 32);
        v103 = *(v28 + 48);
        v104 = *(a2 + 48);
        v106 = *(a2 + 16);
        v105 = *(a2 + 32);
        *v28 = *a2;
        *(v28 + 16) = v106;
        *(v28 + 32) = v105;
        *(v28 + 48) = v104;
        *(a2 + 16) = v373;
        *(a2 + 32) = v102;
        *(a2 + 48) = v103;
        *a2 = v101;
        v107 = *(a3 - 1);
        v108 = *a1;
        if (v107 >= *a1)
        {
          goto LABEL_38;
        }

        *a1 = v107;
        *(a3 - 1) = v108;
        v402 = *(a2 + 48);
        v374 = *(a2 + 16);
        v388 = *(a2 + 32);
        v358 = *a2;
        v109 = *v12;
        v110 = *(a4 - 40);
        v111 = *(a4 - 24);
        *(a2 + 48) = *(a4 - 1);
        *(a2 + 16) = v110;
        *(a2 + 32) = v111;
        *a2 = v109;
        *v12 = v358;
        *(a4 - 40) = v374;
        *(a4 - 24) = v388;
        v31 = v402;
      }

      else
      {
        a1[v20] = v19;
        *(a3 - 1) = v30;
        v31 = *(v28 + 48);
        v33 = *(v28 + 16);
        v32 = *(v28 + 32);
        v34 = *v28;
        v36 = *(a4 - 40);
        v35 = *(a4 - 24);
        v37 = *v12;
        *(v28 + 48) = *(a4 - 1);
        *(v28 + 16) = v36;
        *(v28 + 32) = v35;
        *v28 = v37;
        *v12 = v34;
        *(a4 - 40) = v33;
        *(a4 - 24) = v32;
      }

      *(a4 - 1) = v31;
    }

LABEL_38:
    --a6;
    v60 = *a1;
    if (a7)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(a1 - 1) >= v60)
    {
      v409 = *(a2 + 48);
      v395 = *(a2 + 32);
      v381 = *(a2 + 16);
      v365 = *a2;
      if (v60 >= *(a3 - 1))
      {
        v239 = (a1 + 1);
        v240 = a2 + 56;
        do
        {
          v13 = v239;
          v14 = v240;
          if (v239 >= a3)
          {
            break;
          }

          v239 += 4;
          v240 += 56;
        }

        while (v60 >= *v13);
      }

      else
      {
        v13 = a1;
        v14 = a2;
        do
        {
          v238 = *(v13 + 1);
          v13 += 4;
          v14 += 56;
        }

        while (v60 >= v238);
      }

      v241 = a3;
      v242 = a4;
      if (v13 < a3)
      {
        v241 = a3;
        v242 = a4;
        do
        {
          v243 = *(v241 - 1);
          v241 -= 4;
          v242 = (v242 - 56);
        }

        while (v60 < v243);
      }

      if (v13 < v241)
      {
        v244 = *v13;
        v245 = *v241;
        do
        {
          *v13 = v245;
          *v241 = v244;
          v353 = *(v14 + 48);
          v351 = *(v14 + 16);
          v352 = *(v14 + 32);
          v349 = *v14;
          v246 = *v242;
          v247 = v242[1];
          v248 = v242[2];
          *(v14 + 48) = *(v242 + 6);
          *(v14 + 16) = v247;
          *(v14 + 32) = v248;
          *v14 = v246;
          *(v242 + 6) = v353;
          v242[1] = v351;
          v242[2] = v352;
          *v242 = v349;
          do
          {
            v249 = *(v13 + 1);
            v13 += 4;
            v244 = v249;
            v14 += 56;
          }

          while (v60 >= v249);
          do
          {
            v250 = *(v241 - 1);
            v241 -= 4;
            v245 = v250;
            v242 = (v242 - 56);
          }

          while (v60 < v250);
        }

        while (v13 < v241);
      }

      v251 = (v13 - 4);
      v252 = (v14 - 56);
      if (v13 - 4 != a1)
      {
        *a1 = *v251;
        v253 = *v252;
        v254 = *(v14 - 40);
        v255 = *(v14 - 24);
        *(a2 + 48) = *(v14 - 8);
        *(a2 + 16) = v254;
        *(a2 + 32) = v255;
        *a2 = v253;
      }

      a7 = 0;
      *v251 = v60;
      *v252 = v365;
      *(v14 - 40) = v381;
      a8 = v395;
      *(v14 - 24) = v395;
      *(v14 - 8) = v409;
      goto LABEL_2;
    }

LABEL_62:
    v212 = 0;
    v408 = *(a2 + 48);
    v394 = *(a2 + 32);
    v380 = *(a2 + 16);
    v364 = *a2;
    v213 = a2;
    do
    {
      v213 += 56;
      v214 = a1[++v212];
    }

    while (v214 < v60);
    v215 = &a1[v212];
    v216 = a3;
    v217 = a4;
    if (v212 == 1)
    {
      v216 = a3;
      v217 = a4;
      do
      {
        if (v215 >= v216)
        {
          break;
        }

        v218 = *(v216 - 1);
        v216 -= 4;
        v217 = (v217 - 56);
      }

      while (v218 >= v60);
    }

    else
    {
      do
      {
        v219 = *(v216 - 1);
        v216 -= 4;
        v217 = (v217 - 56);
      }

      while (v219 >= v60);
    }

    if (v215 >= v216)
    {
      v223 = (v215 - 4);
      v232 = v213 - 56;
      if ((v215 - 4) != a1)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v220 = *v216;
      v221 = &a1[v212];
      v222 = v216;
      do
      {
        *v221 = v220;
        v223 = v221 - 1;
        *v222 = v214;
        v224 = *v213;
        v350 = *(v213 + 16);
        v225 = *(v213 + 32);
        v226 = *(v213 + 48);
        v227 = *(v217 + 6);
        v229 = v217[1];
        v228 = v217[2];
        *v213 = *v217;
        *(v213 + 16) = v229;
        *(v213 + 32) = v228;
        *(v213 + 48) = v227;
        v217[1] = v350;
        v217[2] = v225;
        *(v217 + 6) = v226;
        *v217 = v224;
        do
        {
          v230 = v221[1];
          ++v221;
          v214 = v230;
          v213 += 56;
          ++v223;
        }

        while (v230 < v60);
        do
        {
          v231 = *(v222 - 1);
          v222 -= 4;
          v220 = v231;
          v217 = (v217 - 56);
        }

        while (v231 >= v60);
      }

      while (v221 < v222);
      v232 = v213 - 56;
      if (v223 != a1)
      {
LABEL_77:
        *a1 = *v223;
        v233 = *v232;
        v234 = *(v232 + 16);
        v235 = *(v232 + 32);
        *(a2 + 48) = *(v232 + 48);
        *(a2 + 16) = v234;
        *(a2 + 32) = v235;
        *a2 = v233;
      }
    }

    *v223 = v60;
    *v232 = v364;
    *(v232 + 16) = v380;
    *(v232 + 32) = v394;
    *(v232 + 48) = v408;
    if (v215 < v216)
    {
      goto LABEL_85;
    }

    v236 = sub_F80348(a1, a2, v223, v232, v394);
    if (sub_F80348(v223 + 1, v213, a3, a4, v237))
    {
      a3 = v223;
      a4 = v232;
      if (!v236)
      {
        goto LABEL_1;
      }

      return;
    }

    if (!v236)
    {
LABEL_85:
      sub_F7EE58(a1, a2, v223, v232, a5, a6, a7 & 1);
      a7 = 0;
      v13 = (v223 + 1);
      v14 = v232 + 56;
      goto LABEL_2;
    }

    a1 = v223 + 1;
    a2 = v232 + 56;
    v15 = (a3 - (v223 + 1)) >> 2;
    v16 = v15 >= 2;
  }

  switch(v15)
  {
    case 3uLL:
      v257 = *a1;
      v256 = a1[1];
      v258 = *(a3 - 1);
      if (v256 >= *a1)
      {
        if (v258 >= v256)
        {
          return;
        }

        a1[1] = v258;
        *(a3 - 1) = v256;
        v309 = *(a2 + 104);
        v310 = *(a2 + 88);
        v311 = *(a2 + 72);
        v312 = *(a2 + 56);
        v314 = *(a4 - 40);
        v313 = *(a4 - 24);
        v315 = *(a4 - 1);
        *(a2 + 56) = *v12;
        *(a2 + 104) = v315;
        *(a2 + 88) = v313;
        *(a2 + 72) = v314;
        *v12 = v312;
        *(a4 - 40) = v311;
        *(a4 - 24) = v310;
        *(a4 - 1) = v309;
        goto LABEL_135;
      }

      if (v258 >= v256)
      {
        *a1 = v256;
        a1[1] = v257;
        v407 = *(a2 + 48);
        v379 = *(a2 + 16);
        v393 = *(a2 + 32);
        v363 = *a2;
        v333 = *(a2 + 56);
        v334 = *(a2 + 72);
        v335 = *(a2 + 88);
        *(a2 + 48) = *(a2 + 104);
        *(a2 + 16) = v334;
        *(a2 + 32) = v335;
        *a2 = v333;
        *(a2 + 56) = v363;
        *(a2 + 72) = v379;
        *(a2 + 88) = v393;
        *(a2 + 104) = v407;
        v336 = *(a3 - 1);
        v337 = a1[1];
        if (v336 >= v337)
        {
          return;
        }

        a1[1] = v336;
        *(a3 - 1) = v337;
        v262 = *(a2 + 104);
        v338 = *(a2 + 88);
        v339 = *(a2 + 72);
        v340 = *(a2 + 56);
        v342 = *(a4 - 40);
        v341 = *(a4 - 24);
        v343 = *(a4 - 1);
        *(a2 + 56) = *v12;
        *(a2 + 104) = v343;
        *(a2 + 88) = v341;
        *(a2 + 72) = v342;
        *v12 = v340;
        *(a4 - 40) = v339;
        *(a4 - 24) = v338;
      }

      else
      {
        *a1 = v258;
        *(a3 - 1) = v257;
        v404 = *(a2 + 48);
        v376 = *(a2 + 16);
        v390 = *(a2 + 32);
        v360 = *a2;
        v259 = *v12;
        v260 = *(a4 - 40);
        v261 = *(a4 - 24);
        *(a2 + 48) = *(a4 - 1);
        *(a2 + 16) = v260;
        *(a2 + 32) = v261;
        *a2 = v259;
        *v12 = v360;
        *(a4 - 40) = v376;
        *(a4 - 24) = v390;
        v262 = v404;
      }

      *(a4 - 1) = v262;
      break;
    case 4uLL:
      sub_F80104(a1, a2, a1 + 1, (a2 + 56), a1 + 2, (a2 + 112), a3 - 1, v12, a8);
      return;
    case 5uLL:
      sub_F80104(a1, a2, a1 + 1, (a2 + 56), a1 + 2, (a2 + 112), a1 + 3, (a2 + 168), a8);
      v263 = *(a3 - 1);
      v264 = a1[3];
      if (v263 < v264)
      {
        a1[3] = v263;
        *(a3 - 1) = v264;
        v265 = *(a2 + 216);
        v266 = *(a2 + 200);
        v267 = *(a2 + 184);
        v268 = *(a2 + 168);
        v269 = *(a4 - 40);
        v270 = *(a4 - 24);
        v271 = *(a4 - 1);
        *(a2 + 168) = *(a4 - 56);
        *(a2 + 216) = v271;
        *(a2 + 200) = v270;
        *(a2 + 184) = v269;
        *(a4 - 56) = v268;
        *(a4 - 40) = v267;
        *(a4 - 24) = v266;
        *(a4 - 1) = v265;
        v273 = a1[2];
        v272 = a1[3];
        if (v272 < v273)
        {
          a1[2] = v272;
          a1[3] = v273;
          v274 = *(a2 + 160);
          v276 = *(a2 + 128);
          v275 = *(a2 + 144);
          v277 = *(a2 + 112);
          v278 = *(a2 + 184);
          v279 = *(a2 + 200);
          v280 = *(a2 + 168);
          *(a2 + 160) = *(a2 + 216);
          *(a2 + 128) = v278;
          *(a2 + 144) = v279;
          *(a2 + 112) = v280;
          *(a2 + 168) = v277;
          *(a2 + 184) = v276;
          *(a2 + 200) = v275;
          *(a2 + 216) = v274;
          v282 = a1[1];
          v281 = a1[2];
          if (v281 < v282)
          {
            a1[1] = v281;
            a1[2] = v282;
            v283 = *(a2 + 104);
            v284 = *(a2 + 88);
            v285 = *(a2 + 72);
            v286 = *(a2 + 56);
            v288 = *(a2 + 128);
            v287 = *(a2 + 144);
            v289 = *(a2 + 160);
            *(a2 + 56) = *(a2 + 112);
            *(a2 + 104) = v289;
            *(a2 + 88) = v287;
            *(a2 + 72) = v288;
            *(a2 + 112) = v286;
            *(a2 + 128) = v285;
            *(a2 + 144) = v284;
            *(a2 + 160) = v283;
LABEL_135:
            v317 = *a1;
            v316 = a1[1];
            if (v316 < *a1)
            {
              *a1 = v316;
              a1[1] = v317;
              v406 = *(a2 + 48);
              v378 = *(a2 + 16);
              v392 = *(a2 + 32);
              v362 = *a2;
              v318 = *(a2 + 56);
              v319 = *(a2 + 72);
              v320 = *(a2 + 88);
              *(a2 + 48) = *(a2 + 104);
              *(a2 + 16) = v319;
              *(a2 + 32) = v320;
              *a2 = v318;
              *(a2 + 56) = v362;
              *(a2 + 72) = v378;
              *(a2 + 88) = v392;
              *(a2 + 104) = v406;
            }
          }
        }
      }

      break;
    default:
      goto LABEL_10;
  }
}

__n128 sub_F80104(unsigned int *a1, __int128 *a2, unsigned int *a3, __int128 *a4, unsigned int *a5, __int128 *a6, unsigned int *a7, __int128 *a8, __n128 result)
{
  v9 = *a3;
  v10 = *a1;
  v11 = *a5;
  if (*a3 >= *a1)
  {
    if (v11 < v9)
    {
      *a3 = v11;
      *a5 = v9;
      v18 = *(a4 + 6);
      v19 = a4[1];
      result = a4[2];
      v20 = *a4;
      v22 = a6[1];
      v21 = a6[2];
      v23 = *a6;
      *(a4 + 6) = *(a6 + 6);
      a4[1] = v22;
      a4[2] = v21;
      *a4 = v23;
      *a6 = v20;
      a6[1] = v19;
      a6[2] = result;
      *(a6 + 6) = v18;
      v24 = *a1;
      if (*a3 < *a1)
      {
        *a1 = *a3;
        *a3 = v24;
        v25 = *(a2 + 6);
        v26 = a2[1];
        result = a2[2];
        v27 = *a2;
        v29 = a4[1];
        v28 = a4[2];
        v30 = *a4;
        *(a2 + 6) = *(a4 + 6);
        a2[1] = v29;
        a2[2] = v28;
        *a2 = v30;
        *a4 = v27;
        a4[1] = v26;
        a4[2] = result;
        *(a4 + 6) = v25;
      }
    }
  }

  else
  {
    if (v11 < v9)
    {
      *a1 = v11;
      *a5 = v10;
      v12 = *(a2 + 6);
      v13 = a2[1];
      result = a2[2];
      v14 = *a2;
      v16 = a6[1];
      v15 = a6[2];
      v17 = *a6;
      *(a2 + 6) = *(a6 + 6);
      a2[1] = v16;
      a2[2] = v15;
      *a2 = v17;
LABEL_9:
      *a6 = v14;
      a6[1] = v13;
      a6[2] = result;
      *(a6 + 6) = v12;
      goto LABEL_10;
    }

    *a1 = v9;
    *a3 = v10;
    v31 = *(a2 + 6);
    v32 = a2[1];
    result = a2[2];
    v33 = *a2;
    v35 = a4[1];
    v34 = a4[2];
    v36 = *a4;
    *(a2 + 6) = *(a4 + 6);
    a2[1] = v35;
    a2[2] = v34;
    *a2 = v36;
    *a4 = v33;
    a4[1] = v32;
    a4[2] = result;
    *(a4 + 6) = v31;
    v37 = *a3;
    if (*a5 < *a3)
    {
      *a3 = *a5;
      *a5 = v37;
      v12 = *(a4 + 6);
      v13 = a4[1];
      result = a4[2];
      v14 = *a4;
      v39 = a6[1];
      v38 = a6[2];
      v40 = *a6;
      *(a4 + 6) = *(a6 + 6);
      a4[1] = v39;
      a4[2] = v38;
      *a4 = v40;
      goto LABEL_9;
    }
  }

LABEL_10:
  v41 = *a5;
  if (*a7 < *a5)
  {
    *a5 = *a7;
    *a7 = v41;
    v42 = *(a6 + 6);
    v43 = a6[1];
    result = a6[2];
    v44 = *a6;
    v46 = a8[1];
    v45 = a8[2];
    v47 = *a8;
    *(a6 + 6) = *(a8 + 6);
    a6[1] = v46;
    a6[2] = v45;
    *a6 = v47;
    *a8 = v44;
    a8[1] = v43;
    a8[2] = result;
    *(a8 + 6) = v42;
    v48 = *a3;
    if (*a5 < *a3)
    {
      *a3 = *a5;
      *a5 = v48;
      v49 = *(a4 + 6);
      v50 = a4[1];
      result = a4[2];
      v51 = *a4;
      v53 = a6[1];
      v52 = a6[2];
      v54 = *a6;
      *(a4 + 6) = *(a6 + 6);
      a4[1] = v53;
      a4[2] = v52;
      *a4 = v54;
      *a6 = v51;
      a6[1] = v50;
      a6[2] = result;
      *(a6 + 6) = v49;
      v55 = *a1;
      if (*a3 < *a1)
      {
        *a1 = *a3;
        *a3 = v55;
        v56 = *(a2 + 6);
        v57 = a2[1];
        result = a2[2];
        v58 = *a2;
        v60 = a4[1];
        v59 = a4[2];
        v61 = *a4;
        *(a2 + 6) = *(a4 + 6);
        a2[1] = v60;
        a2[2] = v59;
        *a2 = v61;
        *a4 = v58;
        a4[1] = v57;
        a4[2] = result;
        *(a4 + 6) = v56;
      }
    }
  }

  return result;
}

BOOL sub_F80348(unsigned int *a1, uint64_t a2, unsigned int *a3, uint64_t a4, __n128 a5)
{
  v5 = a3 - a1;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v56 = (a4 - 56);
      v58 = *a1;
      v57 = a1[1];
      v59 = *(a3 - 1);
      if (v57 >= *a1)
      {
        if (v59 < v57)
        {
          a1[1] = v59;
          *(a3 - 1) = v57;
          v79 = *(a2 + 104);
          v80 = *(a2 + 88);
          v81 = *(a2 + 72);
          v82 = *(a2 + 56);
          v84 = *(a4 - 40);
          v83 = *(a4 - 24);
          v85 = *(a4 - 8);
          *(a2 + 56) = *v56;
          *(a2 + 104) = v85;
          *(a2 + 88) = v83;
          *(a2 + 72) = v84;
          *v56 = v82;
          *(a4 - 40) = v81;
          *(a4 - 24) = v80;
          *(a4 - 8) = v79;
          v87 = *a1;
          v86 = a1[1];
          if (v86 < *a1)
          {
            *a1 = v86;
            a1[1] = v87;
            v88 = *(a2 + 48);
            v90 = *(a2 + 16);
            v89 = *(a2 + 32);
            v91 = *a2;
            v92 = *(a2 + 72);
            v93 = *(a2 + 88);
            v94 = *(a2 + 56);
            *(a2 + 48) = *(a2 + 104);
            *(a2 + 16) = v92;
            *(a2 + 32) = v93;
            *a2 = v94;
            *(a2 + 56) = v91;
            *(a2 + 72) = v90;
            *(a2 + 88) = v89;
            result = 1;
            *(a2 + 104) = v88;
            return result;
          }
        }

        return 1;
      }

      if (v59 >= v57)
      {
        *a1 = v57;
        a1[1] = v58;
        v111 = *(a2 + 48);
        v113 = *(a2 + 16);
        v112 = *(a2 + 32);
        v114 = *a2;
        v115 = *(a2 + 72);
        v116 = *(a2 + 88);
        v117 = *(a2 + 56);
        *(a2 + 48) = *(a2 + 104);
        *(a2 + 16) = v115;
        *(a2 + 32) = v116;
        *a2 = v117;
        *(a2 + 56) = v114;
        *(a2 + 72) = v113;
        *(a2 + 88) = v112;
        *(a2 + 104) = v111;
        v118 = *(a3 - 1);
        v119 = a1[1];
        if (v118 >= v119)
        {
          return 1;
        }

        a1[1] = v118;
        *(a3 - 1) = v119;
        v60 = *(a2 + 104);
        v61 = *(a2 + 88);
        v62 = *(a2 + 72);
        v63 = *(a2 + 56);
        v121 = *(a4 - 40);
        v120 = *(a4 - 24);
        v122 = *(a4 - 8);
        *(a2 + 56) = *v56;
        *(a2 + 104) = v122;
        *(a2 + 88) = v120;
        *(a2 + 72) = v121;
      }

      else
      {
        *a1 = v59;
        *(a3 - 1) = v58;
        v60 = *(a2 + 48);
        v62 = *(a2 + 16);
        v61 = *(a2 + 32);
        v63 = *a2;
        v65 = *(a4 - 40);
        v64 = *(a4 - 24);
        v66 = *v56;
        *(a2 + 48) = *(a4 - 8);
        *(a2 + 16) = v65;
        *(a2 + 32) = v64;
        *a2 = v66;
      }

      *v56 = v63;
      *(a4 - 40) = v62;
      *(a4 - 24) = v61;
      result = 1;
      *(a4 - 8) = v60;
      return result;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        sub_F80104(a1, a2, a1 + 1, (a2 + 56), a1 + 2, (a2 + 112), a1 + 3, (a2 + 168), a5);
        v20 = *(a3 - 1);
        v21 = a1[3];
        if (v20 < v21)
        {
          a1[3] = v20;
          *(a3 - 1) = v21;
          v22 = *(a2 + 216);
          v23 = *(a2 + 200);
          v24 = *(a2 + 184);
          v25 = *(a2 + 168);
          v26 = *(a4 - 40);
          v27 = *(a4 - 24);
          v28 = *(a4 - 8);
          *(a2 + 168) = *(a4 - 56);
          *(a2 + 216) = v28;
          *(a2 + 200) = v27;
          *(a2 + 184) = v26;
          *(a4 - 56) = v25;
          *(a4 - 40) = v24;
          *(a4 - 24) = v23;
          *(a4 - 8) = v22;
          v30 = a1[2];
          v29 = a1[3];
          if (v29 < v30)
          {
            a1[2] = v29;
            a1[3] = v30;
            v31 = *(a2 + 160);
            v33 = *(a2 + 128);
            v32 = *(a2 + 144);
            v34 = *(a2 + 112);
            v35 = *(a2 + 184);
            v36 = *(a2 + 200);
            v37 = *(a2 + 168);
            *(a2 + 160) = *(a2 + 216);
            *(a2 + 128) = v35;
            *(a2 + 144) = v36;
            *(a2 + 112) = v37;
            *(a2 + 168) = v34;
            *(a2 + 184) = v33;
            *(a2 + 200) = v32;
            *(a2 + 216) = v31;
            v39 = a1[1];
            v38 = a1[2];
            if (v38 < v39)
            {
              a1[1] = v38;
              a1[2] = v39;
              v40 = *(a2 + 104);
              v41 = *(a2 + 88);
              v42 = *(a2 + 72);
              v43 = *(a2 + 56);
              v45 = *(a2 + 128);
              v44 = *(a2 + 144);
              v46 = *(a2 + 160);
              *(a2 + 56) = *(a2 + 112);
              *(a2 + 104) = v46;
              *(a2 + 88) = v44;
              *(a2 + 72) = v45;
              *(a2 + 112) = v43;
              *(a2 + 128) = v42;
              *(a2 + 144) = v41;
              *(a2 + 160) = v40;
              v48 = *a1;
              v47 = a1[1];
              if (v47 < *a1)
              {
                *a1 = v47;
                a1[1] = v48;
                v49 = *(a2 + 48);
                v51 = *(a2 + 16);
                v50 = *(a2 + 32);
                v52 = *a2;
                v53 = *(a2 + 72);
                v54 = *(a2 + 88);
                v55 = *(a2 + 56);
                *(a2 + 48) = *(a2 + 104);
                *(a2 + 16) = v53;
                *(a2 + 32) = v54;
                *a2 = v55;
                *(a2 + 56) = v52;
                *(a2 + 72) = v51;
                *(a2 + 88) = v50;
                result = 1;
                *(a2 + 104) = v49;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_F80104(a1, a2, a1 + 1, (a2 + 56), a1 + 2, (a2 + 112), a3 - 1, (a4 - 56), a5);
    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = *(a3 - 1);
    v7 = *a1;
    if (v6 < *a1)
    {
      *a1 = v6;
      *(a3 - 1) = v7;
      v8 = *(a2 + 48);
      v10 = *(a2 + 16);
      v9 = *(a2 + 32);
      v11 = *a2;
      v12 = *(a4 - 40);
      v13 = *(a4 - 24);
      v14 = *(a4 - 56);
      *(a2 + 48) = *(a4 - 8);
      *(a2 + 16) = v12;
      *(a2 + 32) = v13;
      *a2 = v14;
      *(a4 - 56) = v11;
      *(a4 - 40) = v10;
      *(a4 - 24) = v9;
      result = 1;
      *(a4 - 8) = v8;
      return result;
    }

    return 1;
  }

LABEL_17:
  v67 = a1 + 2;
  v68 = a1[2];
  v69 = (a2 + 112);
  v71 = *a1;
  v70 = a1[1];
  if (v70 >= *a1)
  {
    if (v68 < v70)
    {
      a1[1] = v68;
      a1[2] = v70;
      v95 = *(a2 + 104);
      v96 = *(a2 + 88);
      v97 = *(a2 + 72);
      v98 = *(a2 + 56);
      v100 = *(a2 + 128);
      v99 = *(a2 + 144);
      v101 = *(a2 + 160);
      *(a2 + 56) = *v69;
      *(a2 + 104) = v101;
      *(a2 + 88) = v99;
      *(a2 + 72) = v100;
      *v69 = v98;
      *(a2 + 128) = v97;
      *(a2 + 144) = v96;
      *(a2 + 160) = v95;
      v103 = *a1;
      v102 = a1[1];
      if (v102 < *a1)
      {
        *a1 = v102;
        a1[1] = v103;
        v104 = *(a2 + 48);
        v106 = *(a2 + 16);
        v105 = *(a2 + 32);
        v107 = *a2;
        v108 = *(a2 + 72);
        v109 = *(a2 + 88);
        v110 = *(a2 + 56);
        *(a2 + 48) = *(a2 + 104);
        *(a2 + 16) = v108;
        *(a2 + 32) = v109;
        *a2 = v110;
        *(a2 + 56) = v107;
        *(a2 + 72) = v106;
        *(a2 + 88) = v105;
        *(a2 + 104) = v104;
      }
    }
  }

  else
  {
    if (v68 >= v70)
    {
      *a1 = v70;
      a1[1] = v71;
      v123 = *(a2 + 48);
      v125 = *(a2 + 16);
      v124 = *(a2 + 32);
      v126 = *a2;
      v127 = *(a2 + 72);
      v128 = *(a2 + 88);
      v129 = *(a2 + 56);
      *(a2 + 48) = *(a2 + 104);
      *(a2 + 16) = v127;
      *(a2 + 32) = v128;
      *a2 = v129;
      *(a2 + 56) = v126;
      *(a2 + 72) = v125;
      *(a2 + 88) = v124;
      *(a2 + 104) = v123;
      v131 = a1[1];
      v130 = a1[2];
      if (v130 >= v131)
      {
        goto LABEL_33;
      }

      a1[1] = v130;
      a1[2] = v131;
      v72 = *(a2 + 104);
      v73 = *(a2 + 88);
      v74 = *(a2 + 72);
      v75 = *(a2 + 56);
      v133 = *(a2 + 128);
      v132 = *(a2 + 144);
      v134 = *(a2 + 160);
      *(a2 + 56) = *v69;
      *(a2 + 104) = v134;
      *(a2 + 88) = v132;
      *(a2 + 72) = v133;
    }

    else
    {
      *a1 = v68;
      a1[2] = v71;
      v72 = *(a2 + 48);
      v74 = *(a2 + 16);
      v73 = *(a2 + 32);
      v75 = *a2;
      v77 = *(a2 + 128);
      v76 = *(a2 + 144);
      v78 = *v69;
      *(a2 + 48) = *(a2 + 160);
      *(a2 + 16) = v77;
      *(a2 + 32) = v76;
      *a2 = v78;
    }

    *v69 = v75;
    *(a2 + 128) = v74;
    *(a2 + 144) = v73;
    *(a2 + 160) = v72;
  }

LABEL_33:
  v135 = a1 + 3;
  if (a1 + 3 == a3)
  {
    return 1;
  }

  v136 = 0;
  for (i = (a2 + 168); ; i = (i + 56))
  {
    v138 = *v135;
    if (*v135 < *v67)
    {
      v146 = *i;
      v147 = i[1];
      v148 = i[2];
      v149 = *(i + 6);
      v139 = *v67;
      v140 = v135;
      v141 = i;
      do
      {
        v142 = v141;
        v141 = v69;
        *v140 = v139;
        v140 = v67;
        v143 = *v69;
        v144 = v69[1];
        v145 = v69[2];
        *(v142 + 6) = *(v69 + 6);
        v142[1] = v144;
        v142[2] = v145;
        *v142 = v143;
        if (v67 == a1)
        {
          break;
        }

        --v67;
        v139 = *(v140 - 1);
        v69 = (v69 - 56);
      }

      while (v138 < v139);
      *v140 = v138;
      *(v141 + 6) = v149;
      v141[1] = v147;
      v141[2] = v148;
      *v141 = v146;
      if (++v136 == 8)
      {
        break;
      }
    }

    v67 = v135;
    v69 = i;
    if (++v135 == a3)
    {
      return 1;
    }
  }

  return v135 + 1 == a3;
}

char *sub_F80A0C(char *a1, __int128 *a2, char *a3, __int128 *a4, char *a5)
{
  v5 = a3 - a1;
  if (a3 == a1)
  {
    return a5;
  }

  v6 = v5 >> 2;
  if (v5 >> 2 >= 2)
  {
    v7 = ((v5 >> 2) - 2) >> 1;
    v8 = v7;
    do
    {
      v9 = v8;
      if (v7 >= v8)
      {
        v10 = (2 * v8) | 1;
        v11 = &a1[4 * v10];
        v12 = (a2 + 56 * v10);
        if (2 * v9 + 2 < v6 && *v11 < *(v11 + 1))
        {
          v11 += 4;
          v12 = (v12 + 56);
          v10 = 2 * v9 + 2;
        }

        v13 = &a1[4 * v9];
        v14 = *v11;
        v15 = *v13;
        if (*v11 >= *v13)
        {
          v16 = (a2 + 56 * v9);
          v84 = *v16;
          v87 = v16[1];
          v90 = v16[2];
          v93 = *(v16 + 6);
          while (1)
          {
            v17 = v16;
            v16 = v12;
            *v13 = v14;
            v13 = v11;
            v18 = *v12;
            v19 = v12[1];
            v20 = v12[2];
            *(v17 + 6) = *(v12 + 6);
            v17[1] = v19;
            v17[2] = v20;
            *v17 = v18;
            if (v7 < v10)
            {
              break;
            }

            v21 = (2 * v10) | 1;
            v11 = &a1[4 * v21];
            v12 = (a2 + 56 * v21);
            v10 = 2 * v10 + 2;
            if (v10 < v6)
            {
              if (*v11 >= *(v11 + 1))
              {
                v10 = v21;
              }

              else
              {
                v11 += 4;
                v12 = (v12 + 56);
              }

              v14 = *v11;
              if (*v11 < v15)
              {
                break;
              }
            }

            else
            {
              v10 = v21;
              v14 = *v11;
              if (*v11 < v15)
              {
                break;
              }
            }
          }

          *v13 = v15;
          *(v16 + 6) = v93;
          v16[1] = v87;
          v16[2] = v90;
          *v16 = v84;
        }
      }

      v8 = v9 - 1;
    }

    while (v9);
  }

  if (a3 != a5)
  {
    if (v6 < 2)
    {
      v48 = a4;
      v49 = a3;
      do
      {
        v50 = *v49;
        if (*v49 < *a1)
        {
          *v49 = *a1;
          *a1 = v50;
          v51 = *(v48 + 6);
          v53 = v48[1];
          v52 = v48[2];
          v54 = *v48;
          v56 = a2[1];
          v55 = a2[2];
          v57 = *a2;
          *(v48 + 6) = *(a2 + 6);
          v48[1] = v56;
          v48[2] = v55;
          *v48 = v57;
          *a2 = v54;
          a2[1] = v53;
          a2[2] = v52;
          *(a2 + 6) = v51;
        }

        v49 += 4;
        v48 = (v48 + 56);
      }

      while (v49 != a5);
      goto LABEL_22;
    }

    v58 = a4;
    v59 = a3;
    while (1)
    {
      v60 = *v59;
      if (*v59 < *a1)
      {
        *v59 = *a1;
        *a1 = v60;
        v61 = *(v58 + 6);
        v63 = v58[1];
        v62 = v58[2];
        v64 = *v58;
        v66 = a2[1];
        v65 = a2[2];
        v67 = *a2;
        *(v58 + 6) = *(a2 + 6);
        v58[1] = v66;
        v58[2] = v65;
        *v58 = v67;
        *a2 = v64;
        a2[1] = v63;
        a2[2] = v62;
        *(a2 + 6) = v61;
        if (v5 == 8 || *(a1 + 1) >= *(a1 + 2))
        {
          v68 = a1 + 4;
          v69 = (a2 + 56);
          v70 = 1;
          v71 = *(a1 + 1);
          v72 = *a1;
          if (v71 >= *a1)
          {
LABEL_57:
            v86 = *a2;
            v89 = a2[1];
            v92 = a2[2];
            v95 = *(a2 + 6);
            v73 = a1;
            v74 = a2;
            while (1)
            {
              v75 = v74;
              v74 = v69;
              *v73 = v71;
              v73 = v68;
              v76 = *v69;
              v77 = v69[1];
              v78 = v69[2];
              *(v75 + 6) = *(v69 + 6);
              v75[1] = v77;
              v75[2] = v78;
              *v75 = v76;
              if (((v6 - 2) >> 1) < v70)
              {
                break;
              }

              v79 = (2 * v70) | 1;
              v68 = &a1[4 * v79];
              v69 = (a2 + 56 * v79);
              v70 = 2 * v70 + 2;
              if (v70 < v6)
              {
                if (*v68 >= *(v68 + 1))
                {
                  v70 = v79;
                }

                else
                {
                  v68 += 4;
                  v69 = (v69 + 56);
                }

                v71 = *v68;
                if (*v68 < v72)
                {
                  break;
                }
              }

              else
              {
                v70 = v79;
                v71 = *v68;
                if (*v68 < v72)
                {
                  break;
                }
              }
            }

            *v73 = v72;
            *(v74 + 6) = v95;
            v74[1] = v89;
            v74[2] = v92;
            *v74 = v86;
          }
        }

        else
        {
          v68 = a1 + 8;
          v69 = a2 + 7;
          v70 = 2;
          v71 = *(a1 + 2);
          v72 = *a1;
          if (v71 >= *a1)
          {
            goto LABEL_57;
          }
        }
      }

      v59 += 4;
      v58 = (v58 + 56);
      if (v59 == a5)
      {
        goto LABEL_22;
      }
    }
  }

  a5 = a3;
LABEL_22:
  if (v6 >= 2)
  {
    do
    {
      if (v6 >= 2)
      {
        v23 = 0;
        v24 = *a1;
        v80 = *a2;
        v81 = a2[1];
        v82 = a2[2];
        v83 = *(a2 + 6);
        v25 = a1;
        v26 = a2;
        do
        {
          v27 = &v25[4 * v23 + 4];
          v28 = (v26 + 56 * v23 + 56);
          v32 = (2 * v23) | 1;
          v23 = 2 * v23 + 2;
          if (v23 < v6)
          {
            if (*v27 >= *(v27 + 1))
            {
              v23 = v32;
            }

            else
            {
              v27 += 4;
              v28 = (v28 + 56);
            }
          }

          else
          {
            v23 = v32;
          }

          *v25 = *v27;
          v29 = *v28;
          v30 = v28[1];
          v31 = v28[2];
          *(v26 + 6) = *(v28 + 6);
          v26[1] = v30;
          v26[2] = v31;
          *v26 = v29;
          v25 = v27;
          v26 = v28;
        }

        while (v23 <= ((v6 - 2) >> 1));
        v33 = a3 - 4;
        if (v27 == a3 - 4)
        {
          *v27 = v24;
          *(v28 + 6) = v83;
          v28[1] = v81;
          v28[2] = v82;
          *v28 = v80;
        }

        else
        {
          *v27 = *v33;
          v34 = *(a4 - 56);
          v35 = *(a4 - 40);
          v36 = *(a4 - 24);
          *(v28 + 6) = *(a4 - 1);
          v28[1] = v35;
          v28[2] = v36;
          *v28 = v34;
          *v33 = v24;
          *(a4 - 56) = v80;
          *(a4 - 40) = v81;
          *(a4 - 24) = v82;
          *(a4 - 1) = v83;
          v37 = (v27 - a1 + 4) >> 2;
          v22 = v37 < 2;
          v38 = v37 - 2;
          if (!v22)
          {
            v39 = v38 >> 1;
            v40 = &a1[4 * v39];
            v41 = *v40;
            v42 = *v27;
            if (*v40 < *v27)
            {
              v94 = *(v28 + 6);
              v91 = v28[2];
              v88 = v28[1];
              v85 = *v28;
              do
              {
                *v27 = v41;
                v27 = v40;
                v43 = (a2 + 56 * v39);
                v44 = *v43;
                v45 = v43[1];
                v46 = v43[2];
                *(v28 + 6) = *(v43 + 6);
                v28[1] = v45;
                v28[2] = v46;
                *v28 = v44;
                if (!v39)
                {
                  break;
                }

                v39 = (v39 - 1) >> 1;
                v40 = &a1[4 * v39];
                v41 = *v40;
                v28 = v43;
              }

              while (*v40 < v42);
              *v27 = v42;
              *v43 = v85;
              v43[1] = v88;
              v43[2] = v91;
              *(v43 + 6) = v94;
            }
          }
        }
      }

      a3 -= 4;
      a4 = (a4 - 56);
      v22 = v6-- > 2;
    }

    while (v22);
  }

  return a5;
}

void sub_F81004(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 16) - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    v6 = v4 >> 2;
    if (v1 != v2)
    {
      if (!(v6 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    if (v4 < v3)
    {
      v7 = 4 * v6;
      v8 = *(a1 + 8) - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      *a1 = v9;
      *(a1 + 8) = v7;
      *(a1 + 16) = v7;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

void sub_F810FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 16) - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      if (0xCCCCCCCCCCCCCCCDLL * (v4 >> 4) < 0x333333333333334)
      {
        operator new();
      }

      sub_1808();
    }

    if (v4 < v3)
    {
      v6 = 16 * (v4 >> 4);
      v7 = *(a1 + 8) - v2;
      v8 = v6 - v7;
      memcpy((v6 - v7), v2, v7);
      *a1 = v8;
      *(a1 + 8) = v6;
      *(a1 + 16) = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

uint64_t sub_F81210(uint64_t result, unsigned __int16 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v25 = *v10;
        v26 = sub_F99124(*a3, *(a2 - 1));
        result = sub_F99124(*a3, v25);
        if (*v26 < *result)
        {
          v27 = *v10;
          *v10 = *(a2 - 1);
          *(a2 - 1) = v27;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      return sub_F81814(v10, v10 + 1, v10 + 2, v9, a3);
    }

    if (v13 == 5)
    {

      return sub_F81924(v10, v10 + 1, v10 + 2, v10 + 3, v9, a3);
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return sub_F81A78(v10, a2, a3);
      }

      else if (v10 != a2)
      {
        while (v8 + 1 != a2)
        {
          v32 = v8[1];
          v33 = *v8++;
          v34 = sub_F99124(*a3, v32);
          result = sub_F99124(*a3, v33);
          if (*v34 < *result)
          {
            v35 = *v8;
            v36 = v8;
            do
            {
              v37 = v36;
              v38 = *--v36;
              *v37 = v38;
              v39 = *(v37 - 2);
              v40 = sub_F99124(*a3, v35);
              result = sub_F99124(*a3, v39);
            }

            while (*v40 < *result);
            *v36 = v35;
          }
        }
      }

      return result;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v28 = (v13 - 2) >> 1;
        v29 = v28 + 1;
        v30 = &v10[v28];
        do
        {
          sub_F820F4(v10, a3, a2 - v10, v30--);
          --v29;
        }

        while (v29);
        do
        {
          result = sub_F822B0(v10, a2--, a3, v13);
        }

        while (v13-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v10[v13 >> 1];
    if (v13 < 0x81)
    {
      sub_F81698(&v8[v13 >> 1], v8, v9, a3);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_F81698(v8, &v8[v13 >> 1], v9, a3);
      v41 = v12;
      v16 = a5;
      v17 = v9;
      v18 = &v8[v14];
      sub_F81698(v8 + 1, v18 - 1, a2 - 2, a3);
      sub_F81698(v8 + 2, &v8[v14 + 1], a2 - 3, a3);
      sub_F81698(v18 - 1, v15, &v8[v14 + 1], a3);
      v19 = *v8;
      *v8 = *v18;
      *v18 = v19;
      v9 = v17;
      a5 = v16;
      v12 = v41;
      if (a5)
      {
        goto LABEL_18;
      }
    }

    v20 = *v8;
    v21 = sub_F99124(*a3, *(v8 - 1));
    if (*v21 >= *sub_F99124(*a3, v20))
    {
      result = sub_F81B88(v8, a2, a3);
      v10 = result;
      goto LABEL_23;
    }

LABEL_18:
    v22 = sub_F81D48(v8, a2, a3);
    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }

    v24 = sub_F81EDC(v8, v22, a3);
    v10 = v22 + 1;
    result = sub_F81EDC(v22 + 1, a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v24)
    {
LABEL_21:
      result = sub_F81210(v8, v22, a3, -v12, a5 & 1);
      v10 = v22 + 1;
LABEL_23:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return sub_F81698(v10, v10 + 1, v9, a3);
}

uint64_t sub_F81698(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t *a4)
{
  v8 = *a1;
  v9 = sub_F99124(*a4, *a2);
  v10 = sub_F99124(*a4, v8);
  v11 = *v9;
  v12 = *v10;
  v13 = *a2;
  v14 = sub_F99124(*a4, *a3);
  v15 = sub_F99124(*a4, v13);
  v16 = *v14;
  v17 = *v15;
  if (v11 < v12)
  {
    v18 = *a1;
    if (v16 >= v17)
    {
      *a1 = *a2;
      *a2 = v18;
      v23 = sub_F99124(*a4, *a3);
      if (*v23 < *sub_F99124(*a4, v18))
      {
        v24 = *a2;
        *a2 = *a3;
        *a3 = v24;
      }
    }

    else
    {
      *a1 = *a3;
      *a3 = v18;
    }

    return 1;
  }

  if (v16 < v17)
  {
    v19 = *a2;
    *a2 = *a3;
    *a3 = v19;
    v20 = *a1;
    v21 = sub_F99124(*a4, *a2);
    if (*v21 < *sub_F99124(*a4, v20))
    {
      v22 = *a1;
      *a1 = *a2;
      *a2 = v22;
    }

    return 1;
  }

  return 0;
}

unsigned __int8 *sub_F81814(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, uint64_t *a5)
{
  sub_F81698(a1, a2, a3, a5);
  v10 = *a3;
  v11 = sub_F99124(*a5, *a4);
  result = sub_F99124(*a5, v10);
  if (*v11 < *result)
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *a2;
    v15 = sub_F99124(*a5, *a3);
    result = sub_F99124(*a5, v14);
    if (*v15 < *result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a1;
      v18 = sub_F99124(*a5, *a2);
      result = sub_F99124(*a5, v17);
      if (*v18 < *result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

unsigned __int8 *sub_F81924(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, uint64_t *a6)
{
  sub_F81814(a1, a2, a3, a4, a6);
  v12 = *a4;
  v13 = sub_F99124(*a6, *a5);
  result = sub_F99124(*a6, v12);
  if (*v13 < *result)
  {
    v15 = *a4;
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    v17 = sub_F99124(*a6, *a4);
    result = sub_F99124(*a6, v16);
    if (*v17 < *result)
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *a2;
      v20 = sub_F99124(*a6, *a3);
      result = sub_F99124(*a6, v19);
      if (*v20 < *result)
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
        v22 = *a1;
        v23 = sub_F99124(*a6, *a2);
        result = sub_F99124(*a6, v22);
        if (*v23 < *result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

unsigned __int16 *sub_F81A78(unsigned __int16 *result, unsigned __int16 *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = v8[1];
        v11 = *v8;
        v8 = v5;
        v12 = sub_F99124(*a3, v10);
        result = sub_F99124(*a3, v11);
        if (*v12 < *result)
        {
          v13 = *v8;
          v14 = v7;
          do
          {
            *(v4 + v14 + 2) = *(v4 + v14);
            if (!v14)
            {
              v9 = v4;
              goto LABEL_5;
            }

            v15 = *(v4 + v14 - 2);
            v16 = sub_F99124(*a3, v13);
            result = sub_F99124(*a3, v15);
            v14 -= 2;
          }

          while (*v16 < *result);
          v9 = (v4 + v14 + 2);
LABEL_5:
          *v9 = v13;
        }

        v5 = v8 + 1;
        v7 += 2;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

unsigned __int16 *sub_F81B88(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  v7 = *(a2 - 1);
  v8 = sub_F99124(*a3, *a1);
  if (*v8 >= *sub_F99124(*a3, v7))
  {
    v12 = a1 + 1;
    do
    {
      v9 = v12;
      if (v12 >= v4)
      {
        break;
      }

      ++v12;
      v13 = *v9;
      v14 = sub_F99124(*a3, v6);
    }

    while (*v14 >= *sub_F99124(*a3, v13));
  }

  else
  {
    v9 = a1;
    do
    {
      v10 = v9[1];
      ++v9;
      v11 = sub_F99124(*a3, v6);
    }

    while (*v11 >= *sub_F99124(*a3, v10));
  }

  if (v9 < v4)
  {
    do
    {
      v15 = *--v4;
      v16 = sub_F99124(*a3, v6);
    }

    while (*v16 < *sub_F99124(*a3, v15));
  }

  while (v9 < v4)
  {
    v17 = *v9;
    *v9 = *v4;
    *v4 = v17;
    do
    {
      v18 = v9[1];
      ++v9;
      v19 = sub_F99124(*a3, v6);
    }

    while (*v19 >= *sub_F99124(*a3, v18));
    do
    {
      v20 = *--v4;
      v21 = sub_F99124(*a3, v6);
    }

    while (*v21 < *sub_F99124(*a3, v20));
  }

  if (v9 - 1 != a1)
  {
    *a1 = *(v9 - 1);
  }

  *(v9 - 1) = v6;
  return v9;
}

unsigned __int16 *sub_F81D48(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t *a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = sub_F99124(*a3, a1[++v6]);
  }

  while (*v8 < *sub_F99124(*a3, v7));
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v13 = *--a2;
      v14 = sub_F99124(*a3, v13);
    }

    while (*v14 >= *sub_F99124(*a3, v7));
  }

  else
  {
    do
    {
      v11 = *--a2;
      v12 = sub_F99124(*a3, v11);
    }

    while (*v12 >= *sub_F99124(*a3, v7));
  }

  if (v9 < a2)
  {
    v15 = v9;
    v16 = a2;
    do
    {
      v17 = *v15;
      *v15 = *v16;
      *v16 = v17;
      do
      {
        v18 = v15[1];
        ++v15;
        v19 = sub_F99124(*a3, v18);
      }

      while (*v19 < *sub_F99124(*a3, v7));
      do
      {
        v20 = *--v16;
        v21 = sub_F99124(*a3, v20);
      }

      while (*v21 >= *sub_F99124(*a3, v7));
    }

    while (v15 < v16);
    v10 = v15 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL sub_F81EDC(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a1;
        v8 = sub_F99124(*a3, *(a2 - 1));
        if (*v8 < *sub_F99124(*a3, v7))
        {
          v9 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v9;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_F81698(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      sub_F81814(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      sub_F81924(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v10 = a1 + 2;
  sub_F81698(a1, a1 + 1, a1 + 2, a3);
  v11 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v10;
    v15 = sub_F99124(*a3, *v11);
    if (*v15 < *sub_F99124(*a3, v14))
    {
      break;
    }

LABEL_20:
    v10 = v11;
    v12 += 2;
    if (++v11 == a2)
    {
      return 1;
    }
  }

  v16 = *v11;
  v17 = v12;
  do
  {
    *(a1 + v17 + 6) = *(a1 + v17 + 4);
    if (v17 == -4)
    {
      *a1 = v16;
      if (++v13 != 8)
      {
        goto LABEL_20;
      }

      return v11 + 1 == a2;
    }

    v18 = *(a1 + v17 + 2);
    v19 = sub_F99124(*a3, v16);
    v17 -= 2;
  }

  while (*v19 < *sub_F99124(*a3, v18));
  *(a1 + v17 + 6) = v16;
  if (++v13 != 8)
  {
    goto LABEL_20;
  }

  return v11 + 1 == a2;
}

char *sub_F820F4(char *result, uint64_t *a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = a4 - result;
    v8 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 1)
    {
      v11 = v7 + 1;
      v12 = &result[2 * v7 + 2];
      v13 = v7 + 2;
      v30 = result;
      if (v7 + 2 < a3)
      {
        v14 = v4 >> 1;
        v15 = v12[1];
        v16 = sub_F99124(*a2, *v12);
        v17 = v15;
        v8 = v14;
        v6 = v30;
        if (*v16 < *sub_F99124(*a2, v17))
        {
          ++v12;
          v11 = v13;
        }
      }

      v18 = *v5;
      v19 = sub_F99124(*a2, *v12);
      result = sub_F99124(*a2, v18);
      if (*v19 >= *result)
      {
        v31 = *v5;
        do
        {
          v22 = v12;
          *v5 = *v12;
          if (v8 < v11)
          {
            break;
          }

          v23 = (2 * v11) | 1;
          v12 = &v6[2 * v23];
          v24 = 2 * v11 + 2;
          if (v24 < a3)
          {
            v25 = v12[1];
            v26 = sub_F99124(*a2, *v12);
            v27 = sub_F99124(*a2, v25);
            v28 = *v26;
            v29 = *v27;
            if (v28 < v29)
            {
              ++v12;
            }

            v6 = v30;
            if (v28 < v29)
            {
              v23 = v24;
            }
          }

          v20 = sub_F99124(*a2, *v12);
          result = sub_F99124(*a2, v31);
          v21 = *v20;
          v5 = v22;
          v11 = v23;
        }

        while (v21 >= *result);
        *v22 = v31;
      }
    }
  }

  return result;
}

char *sub_F822B0(char *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v27 = result;
    v6 = 0;
    v29 = *result;
    v7 = (a4 - 2) >> 1;
    v8 = result;
    do
    {
      while (1)
      {
        v13 = &v8[v6];
        v12 = v13 + 1;
        v14 = (2 * v6) | 1;
        v15 = 2 * v6 + 2;
        if (v15 < a4)
        {
          break;
        }

        v6 = (2 * v6) | 1;
        *v8 = *v12;
        v8 = v13 + 1;
        if (v14 > v7)
        {
          goto LABEL_9;
        }
      }

      v10 = v13[2];
      v9 = v13 + 2;
      v11 = sub_F99124(*a3, *(v9 - 1));
      result = sub_F99124(*a3, v10);
      if (*v11 >= *result)
      {
        v6 = v14;
      }

      else
      {
        v12 = v9;
        v6 = v15;
      }

      *v8 = *v12;
      v8 = v12;
    }

    while (v6 <= v7);
LABEL_9:
    v16 = (a2 - 2);
    if (v12 == (a2 - 2))
    {
      *v12 = v29;
    }

    else
    {
      *v12 = *v16;
      *v16 = v29;
      v17 = (v12 - v27 + 2) >> 1;
      v18 = v17 < 2;
      v19 = v17 - 2;
      if (!v18)
      {
        v20 = v19 >> 1;
        v21 = &v27[2 * (v19 >> 1)];
        v22 = *v12;
        v23 = sub_F99124(*a3, *v21);
        result = sub_F99124(*a3, v22);
        if (*v23 < *result)
        {
          v24 = *v12;
          do
          {
            v25 = v21;
            *v12 = *v21;
            if (!v20)
            {
              break;
            }

            v20 = (v20 - 1) >> 1;
            v21 = &v27[2 * v20];
            v26 = sub_F99124(*a3, *v21);
            result = sub_F99124(*a3, v24);
            v12 = v25;
          }

          while (*v26 < *result);
          *v25 = v24;
        }
      }
    }
  }

  return result;
}

void sub_F82474(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        v12 = *a3;
        *(v4 + 16) = *(a3 + 2);
        *v4 = v12;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
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

    v13 = 24 * v6;
    v14 = 24 * a2;
    v15 = 24 * v6 + 24 * a2;
    v16 = 24 * v6;
    do
    {
      v17 = *a3;
      *(v16 + 16) = *(a3 + 2);
      *v16 = v17;
      v16 += 24;
      v14 -= 24;
    }

    while (v14);
    v18 = *a1;
    v19 = *(a1 + 8) - *a1;
    v20 = v13 - v19;
    memcpy((v13 - v19), *a1, v19);
    *a1 = v20;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

void sub_F82618(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 16) - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      if ((0x6DB6DB6DB6DB6DB7 * (v4 >> 3)) < 0x492492492492493)
      {
        operator new();
      }

      sub_1808();
    }

    if (v4 < v3)
    {
      v6 = 8 * (v4 >> 3);
      v7 = *(a1 + 8) - v2;
      v8 = v6 - v7;
      memcpy((v6 - v7), v2, v7);
      *a1 = v8;
      *(a1 + 8) = v6;
      *(a1 + 16) = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

uint64_t sub_F82738(uint64_t result, unsigned __int16 *a2, void **a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v25 = *v10;
        v26 = sub_F94C54(*a3, *(a2 - 1));
        result = sub_F94C54(*a3, v25);
        if (*v26 < *result)
        {
          v27 = *v10;
          *v10 = *(a2 - 1);
          *(a2 - 1) = v27;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      return sub_F82D3C(v10, v10 + 1, v10 + 2, v9, a3);
    }

    if (v13 == 5)
    {

      return sub_F82E4C(v10, v10 + 1, v10 + 2, v10 + 3, v9, a3);
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return sub_F82FA0(v10, a2, a3);
      }

      else if (v10 != a2)
      {
        while (v8 + 1 != a2)
        {
          v32 = v8[1];
          v33 = *v8++;
          v34 = sub_F94C54(*a3, v32);
          result = sub_F94C54(*a3, v33);
          if (*v34 < *result)
          {
            v35 = *v8;
            v36 = v8;
            do
            {
              v37 = v36;
              v38 = *--v36;
              *v37 = v38;
              v39 = *(v37 - 2);
              v40 = sub_F94C54(*a3, v35);
              result = sub_F94C54(*a3, v39);
            }

            while (*v40 < *result);
            *v36 = v35;
          }
        }
      }

      return result;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v28 = (v13 - 2) >> 1;
        v29 = v28 + 1;
        v30 = &v10[v28];
        do
        {
          sub_F8361C(v10, a3, a2 - v10, v30--);
          --v29;
        }

        while (v29);
        do
        {
          result = sub_F837D8(v10, a2--, a3, v13);
        }

        while (v13-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v10[v13 >> 1];
    if (v13 < 0x81)
    {
      sub_F82BC0(&v8[v13 >> 1], v8, v9, a3);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_F82BC0(v8, &v8[v13 >> 1], v9, a3);
      v41 = v12;
      v16 = a5;
      v17 = v9;
      v18 = &v8[v14];
      sub_F82BC0(v8 + 1, v18 - 1, a2 - 2, a3);
      sub_F82BC0(v8 + 2, &v8[v14 + 1], a2 - 3, a3);
      sub_F82BC0(v18 - 1, v15, &v8[v14 + 1], a3);
      v19 = *v8;
      *v8 = *v18;
      *v18 = v19;
      v9 = v17;
      a5 = v16;
      v12 = v41;
      if (a5)
      {
        goto LABEL_18;
      }
    }

    v20 = *v8;
    v21 = sub_F94C54(*a3, *(v8 - 1));
    if (*v21 >= *sub_F94C54(*a3, v20))
    {
      result = sub_F830B0(v8, a2, a3);
      v10 = result;
      goto LABEL_23;
    }

LABEL_18:
    v22 = sub_F83270(v8, a2, a3);
    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }

    v24 = sub_F83404(v8, v22, a3);
    v10 = v22 + 1;
    result = sub_F83404(v22 + 1, a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v24)
    {
LABEL_21:
      result = sub_F82738(v8, v22, a3, -v12, a5 & 1);
      v10 = v22 + 1;
LABEL_23:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return sub_F82BC0(v10, v10 + 1, v9, a3);
}

uint64_t sub_F82BC0(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, void **a4)
{
  v8 = *a1;
  v9 = sub_F94C54(*a4, *a2);
  v10 = sub_F94C54(*a4, v8);
  v11 = *v9;
  v12 = *v10;
  v13 = *a2;
  v14 = sub_F94C54(*a4, *a3);
  v15 = sub_F94C54(*a4, v13);
  v16 = *v14;
  v17 = *v15;
  if (v11 < v12)
  {
    v18 = *a1;
    if (v16 >= v17)
    {
      *a1 = *a2;
      *a2 = v18;
      v23 = sub_F94C54(*a4, *a3);
      if (*v23 < *sub_F94C54(*a4, v18))
      {
        v24 = *a2;
        *a2 = *a3;
        *a3 = v24;
      }
    }

    else
    {
      *a1 = *a3;
      *a3 = v18;
    }

    return 1;
  }

  if (v16 < v17)
  {
    v19 = *a2;
    *a2 = *a3;
    *a3 = v19;
    v20 = *a1;
    v21 = sub_F94C54(*a4, *a2);
    if (*v21 < *sub_F94C54(*a4, v20))
    {
      v22 = *a1;
      *a1 = *a2;
      *a2 = v22;
    }

    return 1;
  }

  return 0;
}

unsigned __int8 *sub_F82D3C(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, void **a5)
{
  sub_F82BC0(a1, a2, a3, a5);
  v10 = *a3;
  v11 = sub_F94C54(*a5, *a4);
  result = sub_F94C54(*a5, v10);
  if (*v11 < *result)
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *a2;
    v15 = sub_F94C54(*a5, *a3);
    result = sub_F94C54(*a5, v14);
    if (*v15 < *result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a1;
      v18 = sub_F94C54(*a5, *a2);
      result = sub_F94C54(*a5, v17);
      if (*v18 < *result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

unsigned __int8 *sub_F82E4C(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, void **a6)
{
  sub_F82D3C(a1, a2, a3, a4, a6);
  v12 = *a4;
  v13 = sub_F94C54(*a6, *a5);
  result = sub_F94C54(*a6, v12);
  if (*v13 < *result)
  {
    v15 = *a4;
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    v17 = sub_F94C54(*a6, *a4);
    result = sub_F94C54(*a6, v16);
    if (*v17 < *result)
    {
      v18 = *a3;
      *a3 = *a4;
      *a4 = v18;
      v19 = *a2;
      v20 = sub_F94C54(*a6, *a3);
      result = sub_F94C54(*a6, v19);
      if (*v20 < *result)
      {
        v21 = *a2;
        *a2 = *a3;
        *a3 = v21;
        v22 = *a1;
        v23 = sub_F94C54(*a6, *a2);
        result = sub_F94C54(*a6, v22);
        if (*v23 < *result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

unsigned __int16 *sub_F82FA0(unsigned __int16 *result, unsigned __int16 *a2, void **a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 1;
    if (result + 1 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = v8[1];
        v11 = *v8;
        v8 = v5;
        v12 = sub_F94C54(*a3, v10);
        result = sub_F94C54(*a3, v11);
        if (*v12 < *result)
        {
          v13 = *v8;
          v14 = v7;
          do
          {
            *(v4 + v14 + 2) = *(v4 + v14);
            if (!v14)
            {
              v9 = v4;
              goto LABEL_5;
            }

            v15 = *(v4 + v14 - 2);
            v16 = sub_F94C54(*a3, v13);
            result = sub_F94C54(*a3, v15);
            v14 -= 2;
          }

          while (*v16 < *result);
          v9 = (v4 + v14 + 2);
LABEL_5:
          *v9 = v13;
        }

        v5 = v8 + 1;
        v7 += 2;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

unsigned __int16 *sub_F830B0(unsigned __int16 *a1, unsigned __int16 *a2, void **a3)
{
  v4 = a2;
  v6 = *a1;
  v7 = *(a2 - 1);
  v8 = sub_F94C54(*a3, *a1);
  if (*v8 >= *sub_F94C54(*a3, v7))
  {
    v12 = a1 + 1;
    do
    {
      v9 = v12;
      if (v12 >= v4)
      {
        break;
      }

      ++v12;
      v13 = *v9;
      v14 = sub_F94C54(*a3, v6);
    }

    while (*v14 >= *sub_F94C54(*a3, v13));
  }

  else
  {
    v9 = a1;
    do
    {
      v10 = v9[1];
      ++v9;
      v11 = sub_F94C54(*a3, v6);
    }

    while (*v11 >= *sub_F94C54(*a3, v10));
  }

  if (v9 < v4)
  {
    do
    {
      v15 = *--v4;
      v16 = sub_F94C54(*a3, v6);
    }

    while (*v16 < *sub_F94C54(*a3, v15));
  }

  while (v9 < v4)
  {
    v17 = *v9;
    *v9 = *v4;
    *v4 = v17;
    do
    {
      v18 = v9[1];
      ++v9;
      v19 = sub_F94C54(*a3, v6);
    }

    while (*v19 >= *sub_F94C54(*a3, v18));
    do
    {
      v20 = *--v4;
      v21 = sub_F94C54(*a3, v6);
    }

    while (*v21 < *sub_F94C54(*a3, v20));
  }

  if (v9 - 1 != a1)
  {
    *a1 = *(v9 - 1);
  }

  *(v9 - 1) = v6;
  return v9;
}

unsigned __int16 *sub_F83270(unsigned __int16 *a1, unsigned __int16 *a2, void **a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = sub_F94C54(*a3, a1[++v6]);
  }

  while (*v8 < *sub_F94C54(*a3, v7));
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v13 = *--a2;
      v14 = sub_F94C54(*a3, v13);
    }

    while (*v14 >= *sub_F94C54(*a3, v7));
  }

  else
  {
    do
    {
      v11 = *--a2;
      v12 = sub_F94C54(*a3, v11);
    }

    while (*v12 >= *sub_F94C54(*a3, v7));
  }

  if (v9 < a2)
  {
    v15 = v9;
    v16 = a2;
    do
    {
      v17 = *v15;
      *v15 = *v16;
      *v16 = v17;
      do
      {
        v18 = v15[1];
        ++v15;
        v19 = sub_F94C54(*a3, v18);
      }

      while (*v19 < *sub_F94C54(*a3, v7));
      do
      {
        v20 = *--v16;
        v21 = sub_F94C54(*a3, v20);
      }

      while (*v21 >= *sub_F94C54(*a3, v7));
    }

    while (v15 < v16);
    v10 = v15 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL sub_F83404(unsigned __int16 *a1, unsigned __int16 *a2, void **a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a1;
        v8 = sub_F94C54(*a3, *(a2 - 1));
        if (*v8 < *sub_F94C54(*a3, v7))
        {
          v9 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v9;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_F82BC0(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      sub_F82D3C(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      sub_F82E4C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v10 = a1 + 2;
  sub_F82BC0(a1, a1 + 1, a1 + 2, a3);
  v11 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v10;
    v15 = sub_F94C54(*a3, *v11);
    if (*v15 < *sub_F94C54(*a3, v14))
    {
      break;
    }

LABEL_20:
    v10 = v11;
    v12 += 2;
    if (++v11 == a2)
    {
      return 1;
    }
  }

  v16 = *v11;
  v17 = v12;
  do
  {
    *(a1 + v17 + 6) = *(a1 + v17 + 4);
    if (v17 == -4)
    {
      *a1 = v16;
      if (++v13 != 8)
      {
        goto LABEL_20;
      }

      return v11 + 1 == a2;
    }

    v18 = *(a1 + v17 + 2);
    v19 = sub_F94C54(*a3, v16);
    v17 -= 2;
  }

  while (*v19 < *sub_F94C54(*a3, v18));
  *(a1 + v17 + 6) = v16;
  if (++v13 != 8)
  {
    goto LABEL_20;
  }

  return v11 + 1 == a2;
}

char *sub_F8361C(char *result, void **a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = a4 - result;
    v8 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 1)
    {
      v11 = v7 + 1;
      v12 = &result[2 * v7 + 2];
      v13 = v7 + 2;
      v30 = result;
      if (v7 + 2 < a3)
      {
        v14 = v4 >> 1;
        v15 = v12[1];
        v16 = sub_F94C54(*a2, *v12);
        v17 = v15;
        v8 = v14;
        v6 = v30;
        if (*v16 < *sub_F94C54(*a2, v17))
        {
          ++v12;
          v11 = v13;
        }
      }

      v18 = *v5;
      v19 = sub_F94C54(*a2, *v12);
      result = sub_F94C54(*a2, v18);
      if (*v19 >= *result)
      {
        v31 = *v5;
        do
        {
          v22 = v12;
          *v5 = *v12;
          if (v8 < v11)
          {
            break;
          }

          v23 = (2 * v11) | 1;
          v12 = &v6[2 * v23];
          v24 = 2 * v11 + 2;
          if (v24 < a3)
          {
            v25 = v12[1];
            v26 = sub_F94C54(*a2, *v12);
            v27 = sub_F94C54(*a2, v25);
            v28 = *v26;
            v29 = *v27;
            if (v28 < v29)
            {
              ++v12;
            }

            v6 = v30;
            if (v28 < v29)
            {
              v23 = v24;
            }
          }

          v20 = sub_F94C54(*a2, *v12);
          result = sub_F94C54(*a2, v31);
          v21 = *v20;
          v5 = v22;
          v11 = v23;
        }

        while (v21 >= *result);
        *v22 = v31;
      }
    }
  }

  return result;
}

char *sub_F837D8(char *result, uint64_t a2, void **a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v27 = result;
    v6 = 0;
    v29 = *result;
    v7 = (a4 - 2) >> 1;
    v8 = result;
    do
    {
      while (1)
      {
        v13 = &v8[v6];
        v12 = v13 + 1;
        v14 = (2 * v6) | 1;
        v15 = 2 * v6 + 2;
        if (v15 < a4)
        {
          break;
        }

        v6 = (2 * v6) | 1;
        *v8 = *v12;
        v8 = v13 + 1;
        if (v14 > v7)
        {
          goto LABEL_9;
        }
      }

      v10 = v13[2];
      v9 = v13 + 2;
      v11 = sub_F94C54(*a3, *(v9 - 1));
      result = sub_F94C54(*a3, v10);
      if (*v11 >= *result)
      {
        v6 = v14;
      }

      else
      {
        v12 = v9;
        v6 = v15;
      }

      *v8 = *v12;
      v8 = v12;
    }

    while (v6 <= v7);
LABEL_9:
    v16 = (a2 - 2);
    if (v12 == (a2 - 2))
    {
      *v12 = v29;
    }

    else
    {
      *v12 = *v16;
      *v16 = v29;
      v17 = (v12 - v27 + 2) >> 1;
      v18 = v17 < 2;
      v19 = v17 - 2;
      if (!v18)
      {
        v20 = v19 >> 1;
        v21 = &v27[2 * (v19 >> 1)];
        v22 = *v12;
        v23 = sub_F94C54(*a3, *v21);
        result = sub_F94C54(*a3, v22);
        if (*v23 < *result)
        {
          v24 = *v12;
          do
          {
            v25 = v21;
            *v12 = *v21;
            if (!v20)
            {
              break;
            }

            v20 = (v20 - 1) >> 1;
            v21 = &v27[2 * v20];
            v26 = sub_F94C54(*a3, *v21);
            result = sub_F94C54(*a3, v24);
            v12 = v25;
          }

          while (*v26 < *result);
          *v25 = v24;
        }
      }
    }
  }

  return result;
}

uint64_t sub_F8399C(uint64_t result, unsigned __int16 *a2, void **a3, uint64_t a4, uint64_t a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = a2 - v10;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v25 = *v10;
        v26 = sub_F95EB8(*a3, *(a2 - 1));
        result = sub_F95EB8(*a3, v25);
        if (*(v26 + 16) < *(result + 16))
        {
          v27 = *v10;
          *v10 = *(a2 - 1);
          *(a2 - 1) = v27;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      return sub_F83FA0(v10, v10 + 1, v10 + 2, v9, a3);
    }

    if (v13 == 5)
    {

      return sub_F840B0(v10, v10 + 1, v10 + 2, v10 + 3, v9, a3);
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return sub_F84204(v10, a2, a3);
      }

      else if (v10 != a2)
      {
        while (v8 + 1 != a2)
        {
          v32 = v8[1];
          v33 = *v8++;
          v34 = sub_F95EB8(*a3, v32);
          result = sub_F95EB8(*a3, v33);
          if (*(v34 + 16) < *(result + 16))
          {
            v35 = *v8;
            v36 = v8;
            do
            {
              v37 = v36;
              v38 = *--v36;
              *v37 = v38;
              v39 = *(v37 - 2);
              v40 = sub_F95EB8(*a3, v35);
              result = sub_F95EB8(*a3, v39);
            }

            while (*(v40 + 16) < *(result + 16));
            *v36 = v35;
          }
        }
      }

      return result;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v28 = (v13 - 2) >> 1;
        v29 = v28 + 1;
        v30 = &v10[v28];
        do
        {
          sub_F84880(v10, a3, a2 - v10, v30--);
          --v29;
        }

        while (v29);
        do
        {
          result = sub_F84A3C(v10, a2--, a3, v13);
        }

        while (v13-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v10[v13 >> 1];
    if (v13 < 0x81)
    {
      sub_F83E24(&v8[v13 >> 1], v8, v9, a3);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_F83E24(v8, &v8[v13 >> 1], v9, a3);
      v41 = v12;
      v16 = a5;
      v17 = v9;
      v18 = &v8[v14];
      sub_F83E24(v8 + 1, v18 - 1, a2 - 2, a3);
      sub_F83E24(v8 + 2, &v8[v14 + 1], a2 - 3, a3);
      sub_F83E24(v18 - 1, v15, &v8[v14 + 1], a3);
      v19 = *v8;
      *v8 = *v18;
      *v18 = v19;
      v9 = v17;
      a5 = v16;
      v12 = v41;
      if (a5)
      {
        goto LABEL_18;
      }
    }

    v20 = *v8;
    v21 = sub_F95EB8(*a3, *(v8 - 1));
    if (*(v21 + 16) >= *(sub_F95EB8(*a3, v20) + 16))
    {
      result = sub_F84314(v8, a2, a3);
      v10 = result;
      goto LABEL_23;
    }

LABEL_18:
    v22 = sub_F844D4(v8, a2, a3);
    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }

    v24 = sub_F84668(v8, v22, a3);
    v10 = v22 + 1;
    result = sub_F84668(v22 + 1, a2, a3);
    if (result)
    {
      a4 = -v12;
      a2 = v22;
      if (v24)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v24)
    {
LABEL_21:
      result = sub_F8399C(v8, v22, a3, -v12, a5 & 1);
      v10 = v22 + 1;
LABEL_23:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return sub_F83E24(v10, v10 + 1, v9, a3);
}

uint64_t sub_F83E24(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, void **a4)
{
  v8 = *a1;
  v9 = sub_F95EB8(*a4, *a2);
  v10 = sub_F95EB8(*a4, v8);
  v11 = *(v9 + 16);
  v12 = *(v10 + 16);
  v13 = *a2;
  v14 = sub_F95EB8(*a4, *a3);
  v15 = sub_F95EB8(*a4, v13);
  v16 = *(v14 + 16);
  v17 = *(v15 + 16);
  if (v11 < v12)
  {
    v18 = *a1;
    if (v16 >= v17)
    {
      *a1 = *a2;
      *a2 = v18;
      v23 = sub_F95EB8(*a4, *a3);
      if (*(v23 + 16) < *(sub_F95EB8(*a4, v18) + 16))
      {
        v24 = *a2;
        *a2 = *a3;
        *a3 = v24;
      }
    }

    else
    {
      *a1 = *a3;
      *a3 = v18;
    }

    return 1;
  }

  if (v16 < v17)
  {
    v19 = *a2;
    *a2 = *a3;
    *a3 = v19;
    v20 = *a1;
    v21 = sub_F95EB8(*a4, *a2);
    if (*(v21 + 16) < *(sub_F95EB8(*a4, v20) + 16))
    {
      v22 = *a1;
      *a1 = *a2;
      *a2 = v22;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_F83FA0(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, void **a5)
{
  sub_F83E24(a1, a2, a3, a5);
  v10 = *a3;
  v11 = sub_F95EB8(*a5, *a4);
  result = sub_F95EB8(*a5, v10);
  if (*(v11 + 16) < *(result + 16))
  {
    v13 = *a3;
    *a3 = *a4;
    *a4 = v13;
    v14 = *a2;
    v15 = sub_F95EB8(*a5, *a3);
    result = sub_F95EB8(*a5, v14);
    if (*(v15 + 16) < *(result + 16))
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      v17 = *a1;
      v18 = sub_F95EB8(*a5, *a2);
      result = sub_F95EB8(*a5, v17);
      if (*(v18 + 16) < *(result + 16))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}