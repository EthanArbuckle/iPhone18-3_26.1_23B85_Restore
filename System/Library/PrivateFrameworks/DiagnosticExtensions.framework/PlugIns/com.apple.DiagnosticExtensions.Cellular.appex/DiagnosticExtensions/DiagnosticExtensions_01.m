void sub_10000C7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  v11 = a4[1] - *a4;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = 0xAAAAAAAAAAAAAAABLL * (&v13[-*a1] >> 3);
  if (v12 <= v15)
  {
    if (v12 < v15)
    {
      v13 = &v14[v11];
      *(a1 + 8) = &v14[v11];
    }
  }

  else
  {
    sub_10000E8DC(a1, v12 - v15);
    v14 = *a1;
    v13 = *(a1 + 8);
  }

  if (v13 == v14)
  {
    v20 = a2 - v10;
  }

  else
  {
    v16 = 0;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
    v18 = *a4;
    v19 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
    v20 = a2 - v10;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v21 = v14 + 16;
    do
    {
      if (v19 <= v16)
      {
        v22 = a4 + 3;
      }

      else
      {
        v22 = v18;
      }

      *(v21 - 2) = v20 + *v22;
      *(v21 - 1) = v20 + v22[1];
      *v21 = *(v22 + 16);
      v21 += 24;
      ++v16;
      v18 += 3;
    }

    while (v17 != v16);
  }

  *(a1 + 24) = a3;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v23 = v20 + a4[6];
  *(a1 + 48) = v23;
  *(a1 + 56) = v20 + a4[7];
  *(a1 + 64) = *(a4 + 64);
  *(a1 + 72) = v20 + a4[9];
  *(a1 + 80) = v20 + a4[10];
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = v23;
  }

  *(a1 + 96) = *(a4 + 96);
}

uint64_t sub_10000C924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_91;
  }

  *v79 = 0;
  memset(&v79[8], 0, 85);
  sub_10000D9C0(&v80);
  v12 = *(*(&v80 + 1) + 8 * ((v82.i64[0] + v82.i64[1]) / 0x2AuLL)) + 96 * ((v82.i64[0] + v82.i64[1]) % 0x2AuLL);
  v13 = *&v79[16];
  *v12 = *v79;
  *(v12 + 16) = v13;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = 0;
  memset(&v79[32], 0, 24);
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  memset(&v79[56], 0, 24);
  v14 = *&v79[80];
  *(v12 + 85) = *&v79[85];
  *(v12 + 80) = v14;
  v16 = v82.i64[1];
  v15 = v82.i64[0];
  v17 = ++v82.i64[1];
  v18 = *(&v80 + 1);
  v19 = *(a1 + 32);
  v20 = *(*(&v80 + 1) + 8 * ((v82.i64[0] + v16) / 0x2AuLL)) + 96 * ((v82.i64[0] + v16) % 0x2AuLL);
  *v20 = 0;
  *(v20 + 8) = a2;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = *(v20 + 56);
  v22 = (*(v20 + 64) - v21) >> 4;
  v74 = a4;
  if (v19 <= v22)
  {
    if (v19 < v22)
    {
      *(v20 + 64) = v21 + 16 * v19;
    }
  }

  else
  {
    sub_100005BC0(v20 + 56, v19 - v22);
    v17 = v82.i64[1];
    v15 = v82.i64[0];
    v18 = *(&v80 + 1);
  }

  v75 = a3;
  v76 = 0;
  v77 = 0;
  v23 = 0;
  v24 = *(v18 + 8 * ((v15 + v17 - 1) / 0x2AuLL)) + 96 * ((v15 + v17 - 1) % 0x2AuLL);
  *(v24 + 80) = v6;
  *(v24 + 92) = a6;
  v25 = a3 - a2;
  *(v24 + 88) = a5;
  do
  {
    if ((++v23 & 0xFFF) == 0 && (v23 >> 12) >= v25)
    {
      sub_1000055AC();
    }

    v27 = *(*(&v80 + 1) + 8 * ((v17 + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v17 + v82.i64[0] - 1) % 0x2AuLL);
    v28 = *(v27 + 80);
    if (v28)
    {
      (*(*v28 + 16))(v28, v27);
    }

    v29 = *v27;
    if (*v27 <= -995)
    {
      if (v29 != -1000)
      {
        if (v29 == -999)
        {
          goto LABEL_9;
        }

        if (v29 != -995)
        {
LABEL_105:
          sub_100005604();
        }

        v30 = v82.i64[0];
        if (!v82.i64[0])
        {
          sub_10000E010(&v80);
          v30 = v82.i64[0];
        }

        v31 = (*(&v80 + 1) + 8 * (v30 / 0x2A));
        v32 = *v31 + 96 * (v30 % 0x2A);
        if (v81 == *(&v80 + 1))
        {
          v32 = 0;
        }

        if (v32 == *v31)
        {
          v32 = *(v31 - 1) + 4032;
        }

        v33 = *(v27 + 16);
        *(v32 - 96) = *v27;
        *(v32 - 80) = v33;
        *(v32 - 56) = 0;
        *(v32 - 48) = 0;
        *(v32 - 64) = 0;
        *(v32 - 64) = *(v27 + 32);
        *(v32 - 48) = *(v27 + 48);
        *(v27 + 32) = 0;
        *(v27 + 40) = 0;
        *(v27 + 48) = 0;
        *(v32 - 40) = 0;
        *(v32 - 32) = 0;
        *(v32 - 24) = 0;
        *(v32 - 40) = *(v27 + 56);
        *(v32 - 24) = *(v27 + 72);
        *(v27 + 56) = 0;
        *(v27 + 64) = 0;
        *(v27 + 72) = 0;
        v34 = *(v27 + 80);
        *(v32 - 11) = *(v27 + 85);
        *(v32 - 16) = v34;
        v35 = vdupq_laneq_s64(v82, 1);
        v82 = vaddq_s64(v82, xmmword_100027C60);
        v35.i64[0] = vaddq_s64(v35, v82).u64[0];
        v36 = (*(*(&v80 + 1) + 8 * (v35.i64[0] / 0x2AuLL)) + 96 * (v35.i64[0] % 0x2AuLL));
        v37 = v36[7];
        if (!v37)
        {
          goto LABEL_39;
        }

LABEL_38:
        v36[8] = v37;
        operator delete(v37);
LABEL_39:
        v39 = v36[4];
        if (v39)
        {
          v36[5] = v39;
          operator delete(v39);
        }

        v40 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
        v41 = v82;
        --v82.i64[1];
        if (v81 == *(&v80 + 1))
        {
          v40 = 0;
        }

        if ((v40 - (v41.i64[1] + v41.i64[0]) + 1) >= 0x54)
        {
          operator delete(*(v81 - 8));
          *&v81 = v81 - 8;
        }

        goto LABEL_9;
      }

      v38 = *(v27 + 16);
      if ((a5 & 0x20) != 0 && v38 == a2 || (a5 & 0x1000) != 0 && v38 != v75)
      {
        goto LABEL_37;
      }

      v49 = v38 - *(v27 + 8);
      v50 = v76;
      if (v76 <= v49)
      {
        v50 = v49;
      }

      if (v77)
      {
        v49 = v50;
      }

      if (v49 == v25)
      {
        v51 = *(&v80 + 1);
        v52 = v81;
        if (v81 == *(&v80 + 1))
        {
          v82.i64[1] = 0;
          v64 = 0;
        }

        else
        {
          v53 = (*(&v80 + 1) + 8 * (v82.i64[0] / 0x2AuLL));
          v54 = (*v53 + 96 * (v82.i64[0] % 0x2AuLL));
          v55 = *(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0]) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0]) % 0x2AuLL);
          if (v54 != v55)
          {
            do
            {
              v56 = v54[7];
              if (v56)
              {
                v54[8] = v56;
                operator delete(v56);
              }

              v57 = v54[4];
              if (v57)
              {
                v54[5] = v57;
                operator delete(v57);
              }

              v54 += 12;
              if ((v54 - *v53) == 4032)
              {
                v58 = v53[1];
                ++v53;
                v54 = v58;
              }
            }

            while (v54 != v55);
            v51 = *(&v80 + 1);
            v52 = v81;
          }

          v82.i64[1] = 0;
          v64 = (v52 - v51) >> 3;
          if (v64 >= 3)
          {
            do
            {
              operator delete(*v51);
              v51 = (*(&v80 + 1) + 8);
              *(&v80 + 1) = v51;
              v64 = (v81 - v51) >> 3;
            }

            while (v64 > 2);
          }
        }

        if (v64 == 1)
        {
          v65 = 21;
LABEL_86:
          v82.i64[0] = v65;
        }

        else if (v64 == 2)
        {
          v65 = 42;
          goto LABEL_86;
        }

        v77 = 1;
        v76 = v25;
        goto LABEL_9;
      }

      v76 = v49;
      v59 = (*(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0] - 1) % 0x2AuLL));
      v60 = v59[7];
      if (v60)
      {
        v59[8] = v60;
        operator delete(v60);
      }

      v61 = v59[4];
      if (v61)
      {
        v59[5] = v61;
        operator delete(v61);
      }

      v62 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
      v63 = v82;
      --v82.i64[1];
      if (v81 == *(&v80 + 1))
      {
        v62 = 0;
      }

      if ((v62 - (v63.i64[1] + v63.i64[0]) + 1) >= 0x54)
      {
        operator delete(*(v81 - 8));
        *&v81 = v81 - 8;
      }

      v77 = 1;
    }

    else
    {
      if (v29 <= -993)
      {
        if (v29 == -994)
        {
          goto LABEL_9;
        }

        if (v29 != -993)
        {
          goto LABEL_105;
        }

LABEL_37:
        v36 = (*(*(&v80 + 1) + 8 * ((v82.i64[1] + v82.i64[0] - 1) / 0x2AuLL)) + 96 * ((v82.i64[1] + v82.i64[0] - 1) % 0x2AuLL));
        v37 = v36[7];
        if (v37)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v29 == -992)
      {
        *&v42 = 0xAAAAAAAAAAAAAAAALL;
        *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v79[64] = v42;
        *&v79[80] = v42;
        *&v79[32] = v42;
        *&v79[48] = v42;
        *v79 = v42;
        *&v79[16] = v42;
        sub_100005CF4(v79, v27);
        (*(**(v27 + 80) + 24))(*(v27 + 80), 1, v27);
        (*(**&v79[80] + 24))(*&v79[80], 0, v79);
        v43 = *(&v80 + 1);
        if (v81 == *(&v80 + 1))
        {
          v44 = 0;
        }

        else
        {
          v44 = 42 * ((v81 - *(&v80 + 1)) >> 3) - 1;
        }

        v45 = v82.i64[1] + v82.i64[0];
        if (v44 == v82.i64[1] + v82.i64[0])
        {
          sub_10000D9C0(&v80);
          v43 = *(&v80 + 1);
          v45 = v82.i64[1] + v82.i64[0];
        }

        v46 = *(v43 + 8 * (v45 / 0x2A)) + 96 * (v45 % 0x2A);
        v47 = *&v79[16];
        *v46 = *v79;
        *(v46 + 16) = v47;
        *(v46 + 40) = 0;
        *(v46 + 48) = 0;
        *(v46 + 32) = 0;
        *(v46 + 32) = *&v79[32];
        *(v46 + 48) = *&v79[48];
        memset(&v79[32], 0, 24);
        *(v46 + 56) = 0;
        *(v46 + 64) = 0;
        *(v46 + 72) = 0;
        *(v46 + 56) = *&v79[56];
        *(v46 + 72) = *&v79[72];
        memset(&v79[56], 0, 24);
        v48 = *&v79[80];
        *(v46 + 85) = *&v79[85];
        *(v46 + 80) = v48;
        ++v82.i64[1];
        if (*&v79[56])
        {
          *&v79[64] = *&v79[56];
          operator delete(*&v79[56]);
        }

        if (*&v79[32])
        {
          *&v79[40] = *&v79[32];
          operator delete(*&v79[32]);
        }
      }

      else if (v29 != -991)
      {
        goto LABEL_105;
      }
    }

LABEL_9:
    v17 = v82.i64[1];
  }

  while (v82.i64[1]);
  if (v77)
  {
    v66 = *v74;
    *v66 = a2;
    *(v66 + 8) = a2 + v76;
    v67 = 1;
    *(v66 + 16) = 1;
    v68 = *(&v80 + 1);
    v69 = v81;
    v82.i64[1] = 0;
    v70 = (v81 - *(&v80 + 1)) >> 3;
    if (v70 < 3)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

LABEL_91:
  v67 = 0;
  v68 = *(&v80 + 1);
  v69 = v81;
  v82.i64[1] = 0;
  v70 = (v81 - *(&v80 + 1)) >> 3;
  if (v70 < 3)
  {
    goto LABEL_93;
  }

  do
  {
LABEL_92:
    operator delete(*v68);
    v69 = v81;
    v68 = (*(&v80 + 1) + 8);
    *(&v80 + 1) = v68;
    v70 = (v81 - v68) >> 3;
  }

  while (v70 > 2);
LABEL_93:
  if (v70 == 1)
  {
    v71 = 21;
LABEL_97:
    v82.i64[0] = v71;
  }

  else if (v70 == 2)
  {
    v71 = 42;
    goto LABEL_97;
  }

  if (v68 != v69)
  {
    do
    {
      v72 = *v68++;
      operator delete(v72);
    }

    while (v68 != v69);
    if (v81 != *(&v80 + 1))
    {
      *&v81 = v81 + ((*(&v80 + 1) - v81 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v80)
  {
    operator delete(v80);
  }

  return v67;
}

void sub_10000D1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100005568(va);
  sub_10000E398((v9 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_10000D23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v69 = 0;
  v70 = 0;
  v71 = 0;
  *&v68[36] = -1431655766;
  *v66 = 0xAAAAAAAA00000000;
  memset(&v66[8], 0, 32);
  *v67 = 0u;
  memset(v68, 0, 36);
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_69:
    v53 = 0;
    v54 = *v68;
    if (!*v68)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  *(&v64 + 1) = a3;
  v65 = 0xAAAAAAAAAAAAAA00;
  *&v64 = a3;
  *v63 = 0;
  memset(&v63[8], 0, 85);
  v70 = sub_1000056E0(&v69, v63);
  if (*&v63[56])
  {
    *&v63[64] = *&v63[56];
    operator delete(*&v63[56]);
  }

  if (*&v63[32])
  {
    *&v63[40] = *&v63[32];
    operator delete(*&v63[32]);
  }

  v13 = v70;
  *(v70 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    sub_1000059FC(v13 - 8, v15 - v16, &v64);
    v13 = v70;
  }

  v17 = *(v13 - 5);
  v18 = *(a1 + 32);
  v19 = (*(v13 - 4) - v17) >> 4;
  v61 = a4;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(v13 - 4) = v17 + 16 * v18;
    }
  }

  else
  {
    sub_100005BC0(v13 - 40, v18 - v19);
    v13 = v70;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v62 = a3;
  v23 = a3 - a2;
  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  *(v13 - 4) = a6;
  do
  {
    v24 = (++v22 & 0xFFF) != 0 || (v22 >> 12) < v23;
    if (!v24)
    {
      sub_1000055AC();
    }

    v26 = v13 - 1;
    v25 = *(v13 - 2);
    v27 = v13 - 6;
    if (v25)
    {
      (*(*v25 + 16))(v25, v13 - 6);
    }

    v28 = *v27;
    if (*v27 <= -994)
    {
      if ((v28 + 995) < 2)
      {
        goto LABEL_16;
      }

      if (v28 != -1000)
      {
LABEL_84:
        sub_100005604();
      }

      v29 = *(v13 - 10);
      if ((a5 & 0x20) != 0 && v29 == a2 || (a5 & 0x1000) != 0 && v29 != v62)
      {
LABEL_34:
        v30 = v70;
        v31 = *(v70 - 5);
        if (v31)
        {
          *(v70 - 4) = v31;
          operator delete(v31);
        }

        v32 = *(v30 - 8);
        if (v32)
        {
          *(v30 - 7) = v32;
          operator delete(v32);
        }

        v70 = v30 - 6;
        goto LABEL_16;
      }

      v37 = v20;
      v38 = v29 - *(v13 - 11);
      if ((v21 & (v37 >= v38)) == 0)
      {
        v39 = *(v13 - 5);
        *v66 = *v27;
        *&v66[16] = v39;
        if (v66 != v27)
        {
          sub_10000E410(&v66[32], *(v13 - 8), *(v13 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - *(v13 - 8)) >> 3));
          sub_10000E614(v68, *(v13 - 5), *(v13 - 4), (*(v13 - 4) - *(v13 - 5)) >> 4);
        }

        v40 = *v26;
        *&v68[29] = *(v13 - 11);
        *&v68[24] = v40;
        v37 = v38;
      }

      v41 = v70;
      if (v37 == v23)
      {
        v42 = v69;
        while (v41 != v42)
        {
          v43 = *(v41 - 5);
          if (v43)
          {
            *(v41 - 4) = v43;
            operator delete(v43);
          }

          v44 = *(v41 - 8);
          if (v44)
          {
            *(v41 - 7) = v44;
            operator delete(v44);
          }

          v41 -= 6;
        }

        v70 = v42;
        v21 = 1;
        v20 = v23;
      }

      else
      {
        v20 = v37;
        v45 = *(v70 - 5);
        if (v45)
        {
          *(v70 - 4) = v45;
          operator delete(v45);
        }

        v46 = *(v41 - 8);
        if (v46)
        {
          *(v41 - 7) = v46;
          operator delete(v46);
        }

        v70 = v41 - 6;
        v21 = 1;
      }
    }

    else
    {
      switch(v28)
      {
        case -993:
          goto LABEL_34;
        case -992:
          *&v33 = 0xAAAAAAAAAAAAAAAALL;
          *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v63[64] = v33;
          *&v63[80] = v33;
          *&v63[32] = v33;
          *&v63[48] = v33;
          *v63 = v33;
          *&v63[16] = v33;
          sub_100005CF4(v63, v13 - 6);
          (*(**v26 + 24))(*v26, 1, v13 - 6);
          (*(**&v63[80] + 24))(*&v63[80], 0, v63);
          v34 = v70;
          if (v70 >= v71)
          {
            v70 = sub_1000056E0(&v69, v63);
            if (*&v63[56])
            {
              *&v63[64] = *&v63[56];
              operator delete(*&v63[56]);
            }
          }

          else
          {
            v35 = *&v63[16];
            *v70 = *v63;
            v34[1] = v35;
            *(v34 + 6) = 0;
            *(v34 + 7) = 0;
            *(v34 + 4) = 0;
            *(v34 + 5) = 0;
            v34[2] = *&v63[32];
            *(v34 + 6) = *&v63[48];
            *&v63[32] = 0;
            *&v63[40] = 0;
            *(v34 + 8) = 0;
            *(v34 + 9) = 0;
            *(v34 + 56) = *&v63[56];
            *(v34 + 9) = *&v63[72];
            memset(&v63[48], 0, 32);
            v36 = *&v63[80];
            *(v34 + 85) = *&v63[85];
            *(v34 + 10) = v36;
            v70 = v34 + 6;
          }

          if (*&v63[32])
          {
            *&v63[40] = *&v63[32];
            operator delete(*&v63[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_84;
      }
    }

LABEL_16:
    v13 = v70;
  }

  while (v69 != v70);
  if ((v21 & 1) == 0)
  {
    goto LABEL_69;
  }

  v47 = *v61;
  *v47 = a2;
  *(v47 + 8) = a2 + v20;
  *(v47 + 16) = 1;
  if (v67[0] != *&v66[32])
  {
    v48 = 0xAAAAAAAAAAAAAAABLL * ((v67[0] - *&v66[32]) >> 3);
    v49 = (*&v66[32] + 16);
    v50 = 1;
    do
    {
      v51 = v47 + 24 * v50;
      *v51 = *(v49 - 1);
      v52 = *v49;
      v49 += 24;
      *(v51 + 16) = v52;
      v24 = v48 > v50++;
    }

    while (v24);
  }

  v53 = 1;
  v54 = *v68;
  if (*v68)
  {
LABEL_70:
    *&v68[8] = v54;
    operator delete(v54);
  }

LABEL_71:
  if (*&v66[32])
  {
    v67[0] = *&v66[32];
    operator delete(*&v66[32]);
  }

  v55 = v69;
  if (v69)
  {
    v56 = v70;
    v57 = v69;
    if (v70 != v69)
    {
      do
      {
        v58 = *(v56 - 5);
        if (v58)
        {
          *(v56 - 4) = v58;
          operator delete(v58);
        }

        v59 = *(v56 - 8);
        if (v59)
        {
          *(v56 - 7) = v59;
          operator delete(v59);
        }

        v56 -= 6;
      }

      while (v56 != v55);
      v57 = v69;
    }

    v70 = v55;
    operator delete(v57);
  }

  return v53;
}

void sub_10000D80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100005568(&a27);
  sub_10000565C((v27 - 120));
  _Unwind_Resume(a1);
}

void sub_10000D860(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v11 = 0;
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 / 0x2A];
    v6 = *v5 + 96 * (v4 % 0x2A);
    v7 = v2[(a1[5] + v4) / 0x2A] + 96 * ((a1[5] + v4) % 0x2A);
    if (v6 != v7)
    {
      do
      {
        v8 = *(v6 + 7);
        if (v8)
        {
          *(v6 + 8) = v8;
          operator delete(v8);
        }

        v9 = *(v6 + 4);
        if (v9)
        {
          *(v6 + 5) = v9;
          operator delete(v9);
        }

        v6 += 96;
        if (v6 - *v5 == 4032)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }
      }

      while (v6 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }

    a1[5] = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v12 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v11 = (v12 - v2) >> 3;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v13 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      return;
    }

    v13 = 42;
  }

  a1[4] = v13;
}

void sub_10000D9C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x2A;
  v4 = v2 - 42;
  if (v3)
  {
    *(a1 + 32) = v4;
    goto LABEL_4;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v7 - v8;
  v10 = v6 - *a1;
  if (v7 - v8 < v10)
  {
    if (v6 != v7)
    {
      v44 = operator new(0xFC0uLL);
      sub_10000DD04(a1, &v44);
      return;
    }

    v44 = operator new(0xFC0uLL);
    sub_10000DE84(a1, &v44);
LABEL_4:
    v5 = *(a1 + 8);
    v44 = *v5;
    *(a1 + 8) = v5 + 1;
    sub_10000DD04(a1, &v44);
    return;
  }

  v11 = v10 >> 2;
  if (v6 == *a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >> 61)
  {
    sub_100002078();
  }

  v13 = 8 * v12;
  v14 = operator new(8 * v12);
  v15 = operator new(0xFC0uLL);
  v16 = v15;
  v17 = &v14[v9];
  v18 = &v14[v13];
  if (v9 != v13)
  {
    goto LABEL_15;
  }

  if (v9 < 1)
  {
    if (v7 == v8)
    {
      v22 = 1;
    }

    else
    {
      v22 = v9 >> 2;
    }

    if (v22 >> 61)
    {
      sub_100002078();
    }

    v17 = operator new(8 * v22);
    v18 = &v17[8 * v22];
    operator delete(v14);
    v23 = *(a1 + 8);
    v7 = *(a1 + 16);
    v14 = v17;
    *v17 = v16;
    v19 = v17 + 8;
    if (v7 == v23)
    {
      goto LABEL_16;
    }

LABEL_31:
    while (v17 != v14)
    {
      v24 = v17;
LABEL_30:
      v25 = *(v7 - 8);
      v7 -= 8;
      *(v24 - 1) = v25;
      v20 = v24 - 8;
      v17 = v20;
      if (v7 == *(a1 + 8))
      {
        goto LABEL_17;
      }
    }

    if (v19 < v18)
    {
      v24 = &v14[8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1)];
      v27 = v19 - v14;
      v26 = v19 == v14;
      v19 += 8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1);
      if (!v26)
      {
        memmove(v24, v17, v27);
      }

      goto LABEL_30;
    }

    if (v18 == v14)
    {
      v28 = 1;
    }

    else
    {
      v28 = (v18 - v14) >> 2;
    }

    if (v28 >> 61)
    {
      sub_100002078();
    }

    v29 = operator new(8 * v28);
    v30 = v29;
    v31 = (v28 + 3) >> 2;
    v24 = &v29[8 * v31];
    v32 = v19 - v14;
    v26 = v19 == v14;
    v19 = v24;
    if (!v26)
    {
      v19 = &v24[v32];
      v33 = v32 - 8;
      if (v33 >= 0x18 && (v34 = 8 * v31, (&v29[8 * v31] - v17) >= 0x20))
      {
        v38 = (v33 >> 3) + 1;
        v39 = 8 * (v38 & 0x3FFFFFFFFFFFFFFCLL);
        v35 = &v24[v39];
        v36 = &v17[v39];
        v40 = (v17 + 16);
        v41 = &v29[v34 + 16];
        v42 = v38 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v43 = *v40;
          *(v41 - 1) = *(v40 - 1);
          *v41 = v43;
          v40 += 2;
          v41 += 32;
          v42 -= 4;
        }

        while (v42);
        if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v35 = &v29[8 * v31];
        v36 = v17;
      }

      do
      {
        v37 = *v36;
        v36 += 8;
        *v35 = v37;
        v35 += 8;
      }

      while (v35 != v19);
    }

LABEL_44:
    v18 = &v29[8 * v28];
    operator delete(v14);
    v14 = v30;
    goto LABEL_30;
  }

  v17 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_15:
  *v17 = v15;
  v19 = v17 + 8;
  if (v7 != v8)
  {
    goto LABEL_31;
  }

LABEL_16:
  v20 = v17;
LABEL_17:
  v21 = *a1;
  *a1 = v14;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  if (v21)
  {

    operator delete(v21);
  }
}

void sub_10000DCD0(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_10000DD04(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    sub_100002078();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] = v4 + 8;
}

void sub_10000DE84(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v8 >= v7)
    {
      v11 = v7 - v4;
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        v12 = 1;
      }

      if (v12 >> 61)
      {
        sub_100002078();
      }

      v13 = (v12 + 3) >> 2;
      v14 = 8 * v12;
      v15 = operator new(8 * v12);
      v6 = &v15[8 * v13];
      v16 = v6;
      v17 = v8 - v4;
      if (v8 != v4)
      {
        v16 = &v6[v17];
        v18 = v17 - 8;
        v19 = &v15[8 * v13];
        v20 = v4;
        if (v18 < 0x38)
        {
          goto LABEL_24;
        }

        v21 = &v15[8 * v13];
        v19 = v21;
        v20 = v4;
        if ((v21 - v4) < 0x20)
        {
          goto LABEL_24;
        }

        v22 = (v18 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v19 = &v6[v23];
        v20 = &v4[v23];
        v24 = (v4 + 16);
        v25 = v21 + 16;
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_24:
          do
          {
            v28 = *v20;
            v20 += 8;
            *v19 = v28;
            v19 += 8;
          }

          while (v19 != v16);
        }
      }

      *a1 = v15;
      *(a1 + 8) = v6;
      *(a1 + 16) = v16;
      *(a1 + 24) = &v15[v14];
      if (v4)
      {
        operator delete(v5);
        v6 = *(a1 + 8);
      }
    }

    else
    {
      v9 = (((v7 - v8) >> 3) + 1) / 2;
      v6 = &v4[8 * v9];
      if (v8 != v4)
      {
        memmove(&v4[8 * v9], v4, v8 - v4);
        v8 = *(a1 + 16);
      }

      *(a1 + 16) = &v8[8 * v9];
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  *(v6 - 1) = *a2;
  *(a1 + 8) = v6 - 8;
}

void sub_10000E010(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) >= 0x2A)
  {
    *(a1 + 32) = v5 + 42;
    v41 = *(v2 - 1);
    *(a1 + 16) = v2 - 8;
    sub_10000DE84(a1, &v41);
    return;
  }

  v6 = *(a1 + 24);
  v7 = *a1;
  v8 = &v6[-*a1];
  if (v2 - v3 < v8)
  {
    if (v3 == v7)
    {
      v41 = operator new(0xFC0uLL);
      sub_10000DD04(a1, &v41);
      v37 = *(a1 + 16);
      v41 = *(v37 - 8);
      *(a1 + 16) = v37 - 8;
      sub_10000DE84(a1, &v41);
      if (*(a1 + 16) - *(a1 + 8) == 8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v41 = operator new(0xFC0uLL);
      sub_10000DE84(a1, &v41);
      if (*(a1 + 16) - *(a1 + 8) == 8)
      {
LABEL_9:
        v9 = 21;
LABEL_42:
        *(a1 + 32) = v9;
        return;
      }
    }

    v9 = *(a1 + 32) + 42;
    goto LABEL_42;
  }

  if (v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 >> 2;
  }

  if (v10 >> 61)
  {
    sub_100002078();
  }

  v11 = operator new(8 * v10);
  v12 = operator new(0xFC0uLL);
  v13 = v12;
  if (v10)
  {
    v14 = &v11[8 * v10];
    *v11 = v12;
    v15 = v11 + 8;
    if (v3 != v2)
    {
LABEL_16:
      v16 = v11;
      while (1)
      {
        if (v15 == v14)
        {
          if (v16 <= v11)
          {
            if (v15 == v11)
            {
              v20 = 1;
            }

            else
            {
              v20 = (v15 - v11) >> 2;
            }

            if (v20 >> 61)
            {
              sub_100002078();
            }

            v21 = operator new(8 * v20);
            v22 = v21;
            v23 = v20 >> 2;
            v17 = &v21[8 * (v20 >> 2)];
            v25 = v15 - v16;
            v24 = v15 == v16;
            v15 = v17;
            if (!v24)
            {
              v15 = &v17[v25];
              v26 = v25 - 8;
              if (v26 < 0x18 || (v27 = 8 * v23, (&v21[8 * v23] - v16) < 0x20))
              {
                v28 = &v21[8 * (v20 >> 2)];
                v29 = v16;
                goto LABEL_32;
              }

              v31 = (v26 >> 3) + 1;
              v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
              v28 = &v17[v32];
              v29 = &v16[v32];
              v33 = (v16 + 16);
              v34 = &v21[v27 + 16];
              v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v36 = *v33;
                *(v34 - 1) = *(v33 - 1);
                *v34 = v36;
                v33 += 2;
                v34 += 32;
                v35 -= 4;
              }

              while (v35);
              if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
              {
                do
                {
LABEL_32:
                  v30 = *v29;
                  v29 += 8;
                  *v28 = v30;
                  v28 += 8;
                }

                while (v28 != v15);
              }
            }

            v14 = &v21[8 * v20];
            if (v11)
            {
              operator delete(v11);
            }

            v11 = v22;
            goto LABEL_18;
          }

          v19 = (((v16 - v11) >> 3) + 1 + ((((v16 - v11) >> 3) + 1) >> 63)) >> 1;
          v17 = &v16[-8 * v19];
          if (v15 != v16)
          {
            memmove(&v16[-8 * v19], v16, v15 - v16);
          }

          v15 = &v17[v15 - v16];
        }

        else
        {
          v17 = v16;
        }

LABEL_18:
        v18 = *v3;
        v3 += 8;
        *v15 = v18;
        v15 += 8;
        v16 = v17;
        if (v3 == *(a1 + 16))
        {
          goto LABEL_45;
        }
      }
    }
  }

  else
  {
    v38 = operator new(8uLL);
    v14 = v38 + 8;
    operator delete(v11);
    v3 = *(a1 + 8);
    v39 = *(a1 + 16);
    v11 = v38;
    *v38 = v13;
    v15 = v38 + 8;
    if (v3 != v39)
    {
      goto LABEL_16;
    }
  }

  v17 = v11;
LABEL_45:
  v40 = *a1;
  *a1 = v11;
  *(a1 + 8) = v17;
  *(a1 + 16) = v15;
  *(a1 + 24) = v14;
  if (v15 - v17 == 8)
  {
    *(a1 + 32) = 21;
    if (!v40)
    {
      return;
    }
  }

  else
  {
    *(a1 + 32) += 42;
    if (!v40)
    {
      return;
    }
  }

  operator delete(v40);
}

void sub_10000E364(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void **sub_10000E398(void **a1)
{
  sub_10000D860(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_10000E410(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) >= a4)
  {
    v16 = a1[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - result) >> 3) >= a4)
    {
      while (v5 != a3)
      {
        *result = *v5;
        result[16] = v5[16];
        v5 += 24;
        result += 24;
      }

      a1[1] = result;
    }

    else
    {
      v17 = &a2[v16 - result];
      if (v16 != result)
      {
        do
        {
          *result = *v5;
          result[16] = v5[16];
          v5 += 24;
          result += 24;
        }

        while (v5 != v17);
      }

      if (v17 == a3)
      {
        a1[1] = v16;
      }

      else
      {
        v18 = v16;
        do
        {
          v19 = *v17;
          *(v16 + 2) = *(v17 + 2);
          *v16 = v19;
          v16 += 24;
          v17 += 24;
          v18 += 24;
        }

        while (v17 != a3);
        a1[1] = v18;
      }
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_25;
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    v12 = v10 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v11;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_25:
      sub_1000023A0();
    }

    v13 = 24 * v12;
    result = operator new(24 * v12);
    v14 = result;
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v13];
    if (v5 != a3)
    {
      v15 = 24 * ((a3 - v5 - 24) / 0x18uLL) + 24;
      result = memcpy(result, v5, v15);
      v14 += v15;
    }

    a1[1] = v14;
  }

  return result;
}

char *sub_10000E614(uint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  result = *a1;
  if (a4 <= (v7 - result) >> 4)
  {
    v15 = *(a1 + 8);
    if (a4 <= (v15 - result) >> 4)
    {
      if (a2 == a3)
      {
        *(a1 + 8) = result;
        return result;
      }

      v24 = a3 - a2 - 16;
      if (v24 < 0xF0 || ((v44 = v24 & 0xFFFFFFFFFFFFFFF0 | 8, v45 = &result[v44], v46 = &a2[v44], v47 = (v24 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v47]) ? (v48 = a2 + 8 >= &result[v47]) : (v48 = 1), v48 ? (v49 = 0) : (v49 = 1), v45 > a2 ? (v50 = result >= v46) : (v50 = 1), !v50 || (v49 & 1) != 0))
      {
        v15 = result;
        v25 = a2;
      }

      else
      {
        v51 = (v24 >> 4) + 1;
        v52 = 16 * (v51 & 0x1FFFFFFFFFFFFFFCLL);
        v15 = &result[v52];
        v25 = &a2[v52];
        v53 = (a2 + 32);
        v54 = result + 32;
        v55 = v51 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v57 = *(v53 - 2);
          v56 = *(v53 - 1);
          v59 = *v53;
          v58 = v53[1];
          v53 += 4;
          *(v54 - 2) = v57;
          *(v54 - 1) = v56;
          *v54 = v59;
          v54[1] = v58;
          v54 += 4;
          v55 -= 4;
        }

        while (v55);
        if (v51 == (v51 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }

      do
      {
        v26 = *v25;
        v27 = *(v25 + 1);
        v25 += 16;
        *v15 = v26;
        *(v15 + 1) = v27;
        v15 += 16;
      }

      while (v25 != a3);
LABEL_26:
      *(a1 + 8) = v15;
      return result;
    }

    v16 = &a2[v15 - result];
    if (v15 != result)
    {
      v17 = v15 - result - 16;
      if (v17 < 0xF0 || ((v28 = v17 & 0xFFFFFFFFFFFFFFF0 | 8, v29 = &result[v28], v30 = &a2[v28], v31 = (v17 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v31]) ? (v32 = a2 + 8 >= &result[v31]) : (v32 = 1), v32 ? (v33 = 0) : (v33 = 1), v29 > a2 ? (v34 = result >= v30) : (v34 = 1), !v34 || (v33 & 1) != 0))
      {
        v18 = result;
        v19 = a2;
      }

      else
      {
        v35 = (v17 >> 4) + 1;
        v36 = 16 * (v35 & 0x1FFFFFFFFFFFFFFCLL);
        v18 = &result[v36];
        v19 = &a2[v36];
        v37 = (a2 + 32);
        v38 = result + 32;
        v39 = v35 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v41 = *(v37 - 2);
          v40 = *(v37 - 1);
          v43 = *v37;
          v42 = v37[1];
          v37 += 4;
          *(v38 - 2) = v41;
          *(v38 - 1) = v40;
          *v38 = v43;
          v38[1] = v42;
          v38 += 4;
          v39 -= 4;
        }

        while (v39);
        if (v35 == (v35 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_18;
        }
      }

      do
      {
        v20 = *v19;
        v21 = *(v19 + 1);
        v19 += 16;
        *v18 = v20;
        *(v18 + 1) = v21;
        v18 += 16;
      }

      while (v19 != v16);
    }

LABEL_18:
    if (v16 != a3)
    {
      v22 = v15;
      do
      {
        v23 = *v16;
        v16 += 16;
        *v15 = v23;
        v15 += 16;
        v22 += 16;
      }

      while (v16 != a3);
      *(a1 + 8) = v22;
      return result;
    }

    goto LABEL_26;
  }

  if (result)
  {
    *(a1 + 8) = result;
    v9 = a4;
    operator delete(result);
    a4 = v9;
    v7 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  if (a4 >> 60)
  {
    goto LABEL_60;
  }

  v10 = v7 >> 3;
  if (v7 >> 3 <= a4)
  {
    v10 = a4;
  }

  v32 = v7 >= 0x7FFFFFFFFFFFFFF0;
  v11 = 0xFFFFFFFFFFFFFFFLL;
  if (!v32)
  {
    v11 = v10;
  }

  if (v11 >> 60)
  {
LABEL_60:
    sub_1000023A0();
  }

  v12 = 16 * v11;
  result = operator new(16 * v11);
  v13 = result;
  *a1 = result;
  *(a1 + 8) = result;
  *(a1 + 16) = &result[v12];
  if (a2 != a3)
  {
    v14 = (a3 - a2) & 0xFFFFFFFFFFFFFFF0;
    result = memcpy(result, a2, v14);
    v13 += v14;
  }

  *(a1 + 8) = v13;
  return result;
}

void sub_10000E8DC(char **a1, unint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = &v3[24 * a2];
      v12 = 24 * a2;
      do
      {
        *v3 = 0;
        *(v3 + 1) = 0;
        v3[16] = 0;
        v3 += 24;
        v12 -= 24;
      }

      while (v12);
      v3 = v11;
    }

    a1[1] = v3;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v5 = v4 + a2;
    if (v4 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000023A0();
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      if (v7 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100002078();
      }

      v8 = a2;
      v9 = a1;
      v10 = operator new(24 * v7);
      a1 = v9;
      a2 = v8;
    }

    else
    {
      v10 = 0;
    }

    v13 = &v10[24 * v4];
    v14 = 24 * a2;
    v15 = &v13[24 * a2];
    v16 = v13;
    do
    {
      *v16 = 0;
      *(v16 + 1) = 0;
      v16[16] = 0;
      v16 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = &v10[24 * v7];
    v18 = *a1;
    v19 = &v13[*a1 - v3];
    if (v3 != *a1)
    {
      v20 = v19;
      do
      {
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        v20 += 24;
        v18 += 24;
      }

      while (v18 != v3);
      v18 = *a1;
    }

    *a1 = v19;
    a1[1] = v15;
    a1[2] = v17;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

uint64_t sub_10000EA90(uint64_t a1, uint64_t a2, int a3)
{
  v6 = std::locale::locale(a1);
  *(a1 + 8) = std::locale::use_facet(v6, &std::ctype<char>::id);
  *(a1 + 16) = std::locale::use_facet(a1, &std::collate<char>::id);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (sub_10000EB68(a1, v8, &v8[v7]) != &v8[v7])
  {
    sub_100002BFC();
  }

  return a1;
}

void sub_10000EB38(_Unwind_Exception *a1)
{
  sub_100002420(&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_10000EB68(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &off_100030940;
  v7 = operator new(0x10uLL);
  *v7 = off_1000309E8;
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &off_100030998;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
LABEL_4:
      if (v10)
      {
        if (v10 != 16)
        {
          if (v10 != 32)
          {
LABEL_27:
            sub_10000359C();
          }

          goto LABEL_15;
        }

        return sub_10000F054(a1, a2, a3);
      }

      else
      {

        return sub_10000EDF0(a1, a2, a3);
      }
    }
  }

  else
  {
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
      goto LABEL_4;
    }
  }

  switch(v10)
  {
    case 0x40u:
LABEL_15:

      return sub_10000F1F0(a1, a2, a3);
    case 0x80u:

      return sub_10000F380(a1, a2, a3);
    case 0x100u:

      return sub_10000F560(a1, a2, a3);
    default:
      goto LABEL_27;
  }
}

void sub_10000EDA8(_Unwind_Exception *a1)
{
  sub_100003750(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_10000EDF0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = sub_10000F740(a1, v7, a3);
    if (v8 != v7)
    {
      continue;
    }

    v9 = *(a1 + 56);
    v10 = *(a1 + 28);
    v11 = sub_10000FA98(a1, v8, a3);
    if (v8 == v11)
    {
      break;
    }

    v7 = sub_10000FD28(a1, v11, a3, v9, v10 + 1, *(a1 + 28) + 1);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    v12 = operator new(0x10uLL);
    v13 = *(a1 + 56);
    v14 = *(v13 + 8);
    *v12 = off_1000309E8;
    v12[1] = v14;
    *(v13 + 8) = v12;
    *(a1 + 56) = v12;
  }

LABEL_11:
  if (v8 != a3)
  {
    if (*v8 == 124)
    {
      v22 = *(a1 + 56);
      v23 = v8 + 1;
      v24 = v8 + 1;
      while (1)
      {
        v8 = v24;
        v24 = sub_10000F740(a1, v24, a3);
        if (v8 == v24)
        {
          v25 = *(a1 + 56);
          v26 = *(a1 + 28);
          v27 = sub_10000FA98(a1, v8, a3);
          if (v8 == v27)
          {
LABEL_8:
            if (v8 == v23)
            {
              v28 = operator new(0x10uLL);
              v29 = *(a1 + 56);
              v30 = *(v29 + 8);
              *v28 = off_1000309E8;
              v28[1] = v30;
              *(v29 + 8) = v28;
              *(a1 + 56) = v28;
            }

            v15 = operator new(0x18uLL);
            v16 = *(v22 + 8);
            v15[1] = *(v6 + 8);
            v15[2] = v16;
            *v15 = &off_100030F58;
            *(v6 + 8) = v15;
            *(v22 + 8) = 0;
            v17 = operator new(0x10uLL);
            v18 = *(a1 + 56);
            v19 = *(v18 + 8);
            *v17 = off_1000309E8;
            v17[1] = v19;
            *(v22 + 8) = v17;
            *(v18 + 8) = 0;
            v20 = operator new(0x10uLL);
            v21 = *(v22 + 8);
            *v20 = &off_100030FA0;
            v20[1] = v21;
            *(v18 + 8) = v20;
            *(a1 + 56) = *(v22 + 8);
            goto LABEL_11;
          }

          v24 = sub_10000FD28(a1, v27, a3, v25, v26 + 1, *(a1 + 28) + 1);
        }

        if (v24 == v8)
        {
          goto LABEL_8;
        }
      }
    }

    return v8;
  }

  return a3;
}

unsigned __int8 *sub_10000F054(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      v7 = operator new(0x18uLL);
      v8 = (*(a1 + 24) & 0x5F0) == 1024;
      v9 = *(a1 + 56);
      v10 = *(v9 + 8);
      *v7 = off_100030A90;
      v7[1] = v10;
      *(v7 + 16) = v8;
      *(v9 + 8) = v7;
      *(a1 + 56) = v7;
      result = a2 + 1;
    }

    if (result != a3)
    {
      do
      {
        if (result == a3)
        {
          v11 = a3;
          goto LABEL_13;
        }

        v11 = result;
        v12 = *(a1 + 56);
        v13 = *(a1 + 28);
        v14 = sub_100011EBC(a1, result, a3);
        if (v11 == v14)
        {
          break;
        }

        result = sub_1000120E4(a1, v14, a3, v12, v13 + 1, *(a1 + 28) + 1);
      }

      while (v11 != result);
      if (v11 + 1 == a3 && *v11 == 36)
      {
        v15 = operator new(0x18uLL);
        v16 = (*(a1 + 24) & 0x5F0) == 1024;
        v17 = *(a1 + 56);
        v18 = *(v17 + 8);
        *v15 = off_100030AD8;
        v15[1] = v18;
        *(v15 + 16) = v16;
        *(v17 + 8) = v15;
        *(a1 + 56) = v15;
        ++v11;
      }

LABEL_13:
      if (v11 != a3)
      {
        sub_10000B8EC();
      }
    }

    return a3;
  }

  return result;
}

unsigned __int8 *sub_10000F1F0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = sub_1000124E8(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_12;
  }

  do
  {
    v8 = v7;
    v7 = sub_1000124E8(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
LABEL_12:
    sub_10000B8EC();
  }

  if (v8 == a3)
  {
    return a3;
  }

  while (*v8 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v8 + 1;
    v11 = sub_1000124E8(a1, v8 + 1, a3);
    if (v8 + 1 == v11)
    {
      goto LABEL_12;
    }

    do
    {
      v8 = v11;
      v11 = sub_1000124E8(a1, v11, a3);
    }

    while (v8 != v11);
    if (v8 == v10)
    {
      goto LABEL_12;
    }

    v12 = operator new(0x18uLL);
    v13 = *(v9 + 8);
    v12[1] = *(v6 + 8);
    v12[2] = v13;
    *v12 = &off_100030F58;
    *(v6 + 8) = v12;
    *(v9 + 8) = 0;
    v14 = operator new(0x10uLL);
    v15 = *(a1 + 56);
    v16 = *(v15 + 8);
    *v14 = off_1000309E8;
    v14[1] = v16;
    *(v9 + 8) = v14;
    *(v15 + 8) = 0;
    v17 = operator new(0x10uLL);
    v18 = *(v9 + 8);
    *v17 = &off_100030FA0;
    v17[1] = v18;
    *(v15 + 8) = v17;
    *(a1 + 56) = *(v9 + 8);
    if (v8 == a3)
    {
      return a3;
    }
  }

  return v8;
}

unsigned __int8 *sub_10000F380(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    *v11 = off_1000309E8;
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  else
  {
    sub_10000F054(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      *v14 = off_1000309E8;
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      sub_10000F054(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &off_100030F58;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    *v18 = off_1000309E8;
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &off_100030FA0;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return a3;
}

unsigned __int8 *sub_10000F560(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    *v11 = off_1000309E8;
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  else
  {
    sub_10000F1F0(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      *v14 = off_1000309E8;
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      sub_10000F1F0(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &off_100030F58;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    *v18 = off_1000309E8;
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &off_100030FA0;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return a3;
}

unsigned __int8 *sub_10000F740(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x5B)
  {
    if (v3 == 92)
    {
      v20 = a2 + 1;
      if (a2 + 1 != a3)
      {
        v21 = a2[1];
        if (v21 == 66)
        {
          sub_100004444(a1, 1);
        }

        else
        {
          if (v21 != 98)
          {
            return a2;
          }

          v23 = operator new(0x30uLL);
          v24 = *(*(a1 + 56) + 8);
          *v23 = off_100030B20;
          *(v23 + 1) = v24;
          std::locale::locale(v23 + 2, a1);
          *(v23 + 24) = *(a1 + 8);
          v23[40] = 0;
          *(*(a1 + 56) + 8) = v23;
          *(a1 + 56) = v23;
        }

        return v20 + 1;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = off_100030A90;
LABEL_17:
    *v15 = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(v13 + 56) = v15;
    return v14 + 1;
  }

  if (v3 == 36)
  {
    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = off_100030AD8;
    goto LABEL_17;
  }

  if (v3 != 40)
  {
    return a2;
  }

  v4 = a2 + 1;
  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    return a2;
  }

  v5 = a2[2];
  if (v5 == 33)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33 = v25;
    v34 = v25;
    v31 = v25;
    v32 = v25;
    v26 = a1;
    sub_1000044C0(&v31);
    v28 = v26;
    DWORD2(v32) = *(v26 + 24);
    v29 = v4 + 2;
    v30 = a3;
    v12 = sub_10000EB68(&v31, v29, a3);
    LODWORD(v26) = HIDWORD(v32);
    sub_100004530(v28, &v31, 1, *(v28 + 28));
    *(v28 + 28) += v26;
    if (v12 == v30 || *v12 != 41)
    {
      sub_1000045E8();
    }

    goto LABEL_27;
  }

  if (v5 != 61)
  {
    return a2;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = v6;
  v34 = v6;
  v31 = v6;
  v32 = v6;
  v7 = a1;
  sub_1000044C0(&v31);
  v9 = v7;
  DWORD2(v32) = *(v7 + 24);
  v10 = v4 + 2;
  v11 = a3;
  v12 = sub_10000EB68(&v31, v10, a3);
  LODWORD(v7) = HIDWORD(v32);
  sub_100004530(v9, &v31, 0, *(v9 + 28));
  *(v9 + 28) += v7;
  if (v12 == v11 || *v12 != 41)
  {
    sub_1000045E8();
  }

LABEL_27:
  sub_100001820(&v31);
  return v12 + 1;
}

unsigned __int8 *sub_10000FA98(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x3E)
  {
    if (*a2 > 0x5Bu)
    {
      if (v3 == 92)
      {
        return sub_1000100A4(a1, a2, a3);
      }

      if (v3 != 123)
      {
        return sub_100006020(a1, a2, a3);
      }

      goto LABEL_32;
    }

    if (v3 != 91)
    {
      if (v3 != 63)
      {
        return sub_100006020(a1, a2, a3);
      }

LABEL_32:
      sub_100005FC8();
    }

    return sub_1000101F4(a1, a2, a3);
  }

  if (v3 != 40)
  {
    if (v3 == 46)
    {
      v4 = a1;
      v5 = a2;
      v6 = operator new(0x10uLL);
      v7 = *(v4 + 56);
      v8 = *(v7 + 8);
      *v6 = off_100030BB0;
      v6[1] = v8;
      *(v7 + 8) = v6;
      *(v4 + 56) = v6;
      return v5 + 1;
    }

    if (v3 - 42 >= 2)
    {
      return sub_100006020(a1, a2, a3);
    }

    goto LABEL_32;
  }

  if (a2 + 1 == a3)
  {
LABEL_33:
    sub_1000045E8();
  }

  v10 = a1;
  if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
  {
    ++*(a1 + 36);
    v11 = a3;
    v12 = sub_10000EDF0();
    if (v12 != v11 && *v12 == 41)
    {
      --*(v10 + 36);
      return v12 + 1;
    }

    goto LABEL_33;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    v16 = *(a1 + 28);
  }

  else
  {
    v13 = a3;
    v14 = operator new(0x18uLL);
    a3 = v13;
    v15 = v14;
    a1 = v10;
    v16 = *(v10 + 28) + 1;
    *(v10 + 28) = v16;
    v17 = *(v10 + 56);
    v18 = *(v17 + 8);
    *v15 = off_100030DF0;
    v15[1] = v18;
    *(v15 + 4) = v16;
    *(v17 + 8) = v15;
    *(v10 + 56) = v15;
  }

  ++*(a1 + 36);
  v19 = a3;
  v20 = sub_10000EDF0();
  if (v20 == v19)
  {
    goto LABEL_33;
  }

  v21 = v20;
  if (*v20 != 41)
  {
    goto LABEL_33;
  }

  v22 = v10;
  if ((*(v10 + 24) & 2) == 0)
  {
    v23 = operator new(0x18uLL);
    v22 = v10;
    v24 = *(v10 + 56);
    v25 = *(v24 + 8);
    *v23 = off_100030E38;
    v23[1] = v25;
    *(v23 + 4) = v16;
    *(v24 + 8) = v23;
    *(v10 + 56) = v23;
  }

  --*(v22 + 36);
  return v21 + 1;
}

unsigned __int8 *sub_10000FD28(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5, int a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = *(a1 + 24) & 0x1F0;
  v8 = *a2;
  if (v8 > 0x3E)
  {
    if (v8 == 63)
    {
      v6 = a2 + 1;
      if (v7)
      {
        v19 = 1;
      }

      else
      {
        v19 = v6 == a3;
      }

      if (!v19 && *v6 == 63)
      {
        v6 = a2 + 2;
        v9 = 0;
        v16 = 1;
        v17 = 0;
        goto LABEL_72;
      }

      v9 = 0;
      v16 = 1;
      goto LABEL_71;
    }

    v6 = a2;
    if (v8 != 123)
    {
      return v6;
    }

    v10 = a2 + 1;
    if (a2 + 1 != a3)
    {
      v11 = *v10;
      if ((v11 & 0xF8) == 0x30 || (v11 & 0xFE) == 0x38)
      {
        v12 = v11 - 48;
        v13 = a2 + 2;
        if (a2 + 2 == a3)
        {
LABEL_19:
          v13 = a3;
        }

        else
        {
          while (1)
          {
            v14 = *v13;
            if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
            {
              break;
            }

            if (v12 >= 214748364)
            {
              goto LABEL_74;
            }

            v12 = v14 + 10 * v12 - 48;
            if (++v13 == a3)
            {
              goto LABEL_19;
            }
          }
        }

        if (v13 != v10)
        {
          if (v13 != a3)
          {
            v15 = *v13;
            if (v15 != 44)
            {
              if (v15 == 125)
              {
                v6 = v13 + 1;
                if (!v7 && v6 != a3 && *v6 == 63)
                {
                  v9 = v12;
                  v6 = v13 + 2;
                  v16 = v12;
                  v17 = 0;
LABEL_72:
                  sub_10000AF8C(a1, v9, v16, a4, a5, a6, v17);
                  return v6;
                }

                v9 = v12;
                v16 = v12;
LABEL_71:
                v17 = 1;
                goto LABEL_72;
              }

              goto LABEL_74;
            }

            v20 = v13 + 1;
            if (v13 + 1 == a3)
            {
              goto LABEL_74;
            }

            v21 = *v20;
            if (v21 == 125)
            {
              v6 = v13 + 2;
              if (!v7 && v6 != a3 && *v6 == 63)
              {
                v9 = v12;
                v6 = v13 + 3;
                goto LABEL_34;
              }

              v9 = v12;
LABEL_43:
              v16 = -1;
              goto LABEL_71;
            }

            if (v20 != a3 && ((v21 & 0xF8) == 0x30 || (v21 & 0xFE) == 0x38))
            {
              v22 = v21 - 48;
              v23 = v13 + 2;
              if (v23 == a3)
              {
LABEL_60:
                v23 = a3;
              }

              else
              {
                while (1)
                {
                  v24 = *v23;
                  if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
                  {
                    break;
                  }

                  if (v22 >= 214748364)
                  {
                    goto LABEL_74;
                  }

                  v22 = v24 + 10 * v22 - 48;
                  if (++v23 == a3)
                  {
                    goto LABEL_60;
                  }
                }
              }

              if (v23 != v20 && v23 != a3 && *v23 == 125)
              {
                if (v22 >= v12)
                {
                  v6 = v23 + 1;
                  if (!v7 && v6 != a3 && *v6 == 63)
                  {
                    v9 = v12;
                    v16 = v22;
                    v6 = v23 + 2;
                    v17 = 0;
                    goto LABEL_72;
                  }

                  v9 = v12;
                  v16 = v22;
                  goto LABEL_71;
                }

                goto LABEL_74;
              }
            }
          }

          sub_10000B124();
        }
      }
    }

LABEL_74:
    sub_10000B0CC();
  }

  if (v8 == 42)
  {
    v6 = a2 + 1;
    if (v7)
    {
      v18 = 1;
    }

    else
    {
      v18 = v6 == a3;
    }

    if (!v18 && *v6 == 63)
    {
      v6 = a2 + 2;
      v9 = 0;
      goto LABEL_34;
    }

    v9 = 0;
    goto LABEL_43;
  }

  v6 = a2;
  if (v8 == 43)
  {
    v6 = a2 + 1;
    if (!v7 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      v9 = 1;
LABEL_34:
      v16 = -1;
      v17 = 0;
      goto LABEL_72;
    }

    v9 = 1;
    goto LABEL_43;
  }

  return v6;
}

unsigned __int8 *sub_1000100A4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v4 = a2 + 1;
    if (a3 == a2 + 1)
    {
      sub_100006194();
    }

    v5 = *v4;
    v6 = (v5 - 48);
    if (v5 == 48)
    {
      sub_100006940(a1, v6);
      v3 += 2;
      return v3;
    }

    v7 = v3;
    if ((v5 - 49) <= 8)
    {
      v3 += 2;
      if (v4 + 1 == a3)
      {
        v9 = a3;
        v3 = a3;
      }

      else
      {
        while (1)
        {
          v8 = *v3;
          if ((v8 - 48) > 9)
          {
            break;
          }

          if (v6 >= 0x19999999)
          {
            goto LABEL_23;
          }

          ++v3;
          LODWORD(v6) = v8 + 10 * v6 - 48;
          if (v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        v9 = a3;
        if (!v6)
        {
LABEL_23:
          sub_100006AEC();
        }
      }

      if (v6 > *(a1 + 28))
      {
        goto LABEL_23;
      }

      v10 = a1;
      sub_100006B44(a1, v6);
      a1 = v10;
      a3 = v9;
      if (v3 != v4)
      {
        return v3;
      }
    }

    v11 = a1;
    v12 = a3;
    v13 = sub_100010350(a1, v4, a3);
    v14 = v12;
    v3 = v13;
    if (v13 == v4)
    {
      v15 = sub_1000105B0(v11, v4, v14, 0);
      if (v15 == v4)
      {
        return v7;
      }

      else
      {
        return v15;
      }
    }
  }

  return v3;
}

unsigned __int8 *sub_1000101F4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_21;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = v5 == 94 ? a2 + 2 : a2 + 1;
    v8 = operator new(0xB0uLL);
    sub_10000783C(v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_21;
    }

    v9 = v7;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      sub_100007694(v8, 93);
      v9 = v7 + 1;
    }

    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      do
      {
        v10 = v9;
        sub_100010AAC(a1, v9, a3, v8);
      }

      while (v10 != v9);
    }

    if (v10 == a3)
    {
      goto LABEL_21;
    }

    if (*v10 == 45)
    {
      sub_100007694(v8, 45);
      ++v10;
    }

    if (v10 == a3 || *v10 != 93)
    {
LABEL_21:
      sub_100008ABC();
    }

    return v10 + 1;
  }

  return a2;
}

unsigned __int8 *sub_100010350(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v5 = *a2;
  if (v5 > 0x63)
  {
    if (v5 == 119)
    {
      v6 = operator new(0xB0uLL);
      sub_10000783C(v6, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_14;
    }

    if (v5 == 115)
    {
      v7 = operator new(0xB0uLL);
      sub_10000783C(v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_17;
    }

    if (v5 != 100)
    {
      return v3;
    }

    v7 = operator new(0xB0uLL);
    sub_10000783C(v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_12:
    *(*(a1 + 56) + 8) = v7;
    *(a1 + 56) = v7;
    v8 = v7[40] | 0x400;
LABEL_18:
    v7[40] = v8;
    goto LABEL_19;
  }

  switch(v5)
  {
    case 'D':
      v7 = operator new(0xB0uLL);
      sub_10000783C(v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_12;
    case 'S':
      v7 = operator new(0xB0uLL);
      sub_10000783C(v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_17:
      *(*(a1 + 56) + 8) = v7;
      *(a1 + 56) = v7;
      v8 = v7[40] | 0x4000;
      goto LABEL_18;
    case 'W':
      v6 = operator new(0xB0uLL);
      sub_10000783C(v6, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_14:
      *(*(a1 + 56) + 8) = v6;
      *(a1 + 56) = v6;
      v6[40] |= 0x500u;
      sub_100007694(v6, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *sub_1000105B0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 12;
          goto LABEL_82;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      if (v4 == 110)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 10;
          goto LABEL_82;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }
    }

    else
    {
      switch(v4)
      {
        case '0':
          if (!a4)
          {
            v6 = a2;
            v8 = 0;
            goto LABEL_82;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 0;
          return a2 + 1;
        case 'c':
          v6 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_98;
          }

          if (*v6 < 65)
          {
            goto LABEL_98;
          }

          v7 = *v6;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_98;
          }

          v8 = v7 & 0x1F;
          if (!a4)
          {
            goto LABEL_82;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v7 & 0x1F;
          return v6 + 1;
        case '_':
          goto LABEL_98;
      }
    }

LABEL_76:
    if ((v4 & 0x80000000) == 0 && (*(*(*(a1 + 8) + 16) + 4 * *a2) & 0x500) != 0)
    {
      goto LABEL_98;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    v6 = a2;
    v8 = v4;
LABEL_82:
    sub_100006940(a1, v8);
    return v6 + 1;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 13;
        goto LABEL_82;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 13;
      return a2 + 1;
    }

    if (v4 == 116)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 9;
        goto LABEL_82;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 9;
      return a2 + 1;
    }

    goto LABEL_76;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v10 = a2[1];
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
    {
      goto LABEL_98;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_98;
    }

    v11 = *a2;
    v12 = -48;
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      v11 |= 0x20u;
      if ((v11 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v12 = -87;
    }

    v5 = 16 * (v12 + v11);
LABEL_48:
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v13 = a2[1];
    v14 = -48;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      v13 |= 0x20u;
      if ((v13 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v14 = -87;
    }

    if (a2 + 2 != a3)
    {
      v15 = a2[2];
      v16 = -48;
      if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
      {
        goto LABEL_58;
      }

      v15 |= 0x20u;
      if ((v15 - 97) < 6)
      {
        v16 = -87;
LABEL_58:
        v17 = v15 + 16 * (v5 + v14 + v13) + v16;
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v17;
          *(a4 + 1) = 0;
          return a2 + 3;
        }

        v18 = a2;
        sub_100006940(a1, v17);
        return v18 + 3;
      }
    }

LABEL_98:
    sub_100006194();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_48;
    }

    goto LABEL_76;
  }

  if (!a4)
  {
    v6 = a2;
    v8 = 11;
    goto LABEL_82;
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = 11;
  return a2 + 1;
}

void sub_100010AAC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return;
  }

  v8 = 0;
  v9 = a2 + 1;
  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_25:
    v17 = *(a1 + 24) & 0x1F0;
    goto LABEL_26;
  }

  v10 = a2[1];
  if (v10 != 46)
  {
    if (v10 == 58)
    {
      v11 = a2 + 2;
      if (a3 - (v4 + 2) >= 2 && a3 - 1 != v11)
      {
        v12 = v4 + 2;
        v13 = v4 + 3;
        if (v4[2] != 58)
        {
          goto LABEL_14;
        }

LABEL_13:
        if (*v13 == 93)
        {
          if (a3 != v12)
          {
            v21 = sub_100011D48(a1, v11, v12, *(a1 + 24) & 1);
            if (!v21)
            {
              sub_10000A6A4();
            }

            *(a4 + 160) |= v21;
            if (SHIBYTE(v35) < 0)
            {
              goto LABEL_69;
            }

            return;
          }
        }

        else
        {
LABEL_14:
          while (v13 != a3 - 1)
          {
            ++v12;
            if (*v13++ == 58)
            {
              goto LABEL_13;
            }
          }
        }
      }

      sub_100008ABC();
    }

    if (v10 == 61)
    {
      sub_100011068(a1, a2 + 2, a3, a4);
      if ((SHIBYTE(v35) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_69;
    }

    v8 = 0;
    goto LABEL_25;
  }

  v14 = a2 + 2;
  if (a3 - (v4 + 2) < 2 || a3 - 1 == v14)
  {
LABEL_90:
    sub_100008ABC();
  }

  v15 = v4 + 2;
  v16 = v9 + 2;
  if (*(v16 - 1) != 46)
  {
    goto LABEL_21;
  }

LABEL_20:
  if (*v16 != 93)
  {
LABEL_21:
    while (v16 != a3 - 1)
    {
      ++v15;
      if (*v16++ == 46)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_90;
  }

  if (a3 == v15)
  {
    goto LABEL_90;
  }

  v22 = a1;
  sub_100011A94(a1, v14, v15, &v36);
  a1 = v22;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
    a1 = v22;
  }

  v35 = v37;
  *__p = v36;
  v23 = HIBYTE(v37);
  v8 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v23 = __p[1];
  }

  if ((v23 - 1) >= 2)
  {
    sub_10000A1D4();
  }

  v4 = v15 + 2;
  v17 = *(a1 + 24) & 0x1F0;
  v24 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v24 = __p[1];
  }

  if (v24)
  {
LABEL_49:
    if (v4 == a3)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_26:
  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v18) = *v4;
    goto LABEL_45;
  }

  v18 = *v4;
  if (v18 != 92)
  {
LABEL_45:
    if (v8 < 0)
    {
      v25 = __p[0];
      __p[1] = 1;
    }

    else
    {
      HIBYTE(v35) = 1;
      v25 = __p;
    }

    *v25 = v18;
    *(v25 + 1) = 0;
    ++v4;
    goto LABEL_49;
  }

  v19 = a1;
  if (v17)
  {
    v20 = sub_1000115C8(a1, v4 + 1, a3, __p);
  }

  else
  {
    v20 = sub_1000113E4(a1, v4 + 1, a3, __p, a4);
  }

  v4 = v20;
  a1 = v19;
  if (v4 == a3)
  {
LABEL_51:
    if (SHIBYTE(v35) < 0)
    {
      if (!__p[1])
      {
        goto LABEL_68;
      }

      if (__p[1] != 1)
      {
        v27 = __p[0];
LABEL_67:
        sub_100009F80(a4, *v27, *(v27 + 1));
        goto LABEL_68;
      }

      v27 = __p[0];
    }

    else
    {
      if (!HIBYTE(v35))
      {
        goto LABEL_68;
      }

      v27 = __p;
      if (HIBYTE(v35) != 1)
      {
        goto LABEL_67;
      }
    }

    sub_100007694(a4, *v27);
    goto LABEL_68;
  }

LABEL_50:
  v26 = *v4;
  if (v26 == 93)
  {
    goto LABEL_51;
  }

  v28 = v4 + 1;
  if (v4 + 1 == a3 || v26 != 45 || *v28 == 93)
  {
    goto LABEL_51;
  }

  v36 = 0uLL;
  v37 = 0;
  v29 = v4 + 2;
  if (v28 + 1 != a3 && *v28 == 91 && *v29 == 46)
  {
    sub_100011300(a1, v28 + 2, a3, &v36);
    goto LABEL_81;
  }

  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v28) = *v28;
    goto LABEL_79;
  }

  LODWORD(v28) = *v28;
  if (v28 != 92)
  {
LABEL_79:
    HIBYTE(v37) = 1;
    LOWORD(v36) = v28;
    goto LABEL_81;
  }

  if (v17)
  {
    sub_1000115C8(a1, v29, a3, &v36);
  }

  else
  {
    sub_1000113E4(a1, v29, a3, &v36, a4);
  }

LABEL_81:
  *v32 = *__p;
  v33 = v35;
  __p[1] = 0;
  v35 = 0;
  __p[0] = 0;
  *v30 = v36;
  v31 = v37;
  v36 = 0uLL;
  v37 = 0;
  sub_100009AE4(a4, v32, v30);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

LABEL_86:
    operator delete(v32[0]);
    if (SHIBYTE(v37) < 0)
    {
      goto LABEL_87;
    }

LABEL_68:
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_69;
  }

  operator delete(v30[0]);
  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_86;
  }

LABEL_83:
  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

LABEL_87:
  operator delete(v36);
  if (SHIBYTE(v35) < 0)
  {
LABEL_69:
    operator delete(__p[0]);
  }
}

void sub_100010FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

_BYTE *sub_100011068(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_39;
  }

  v6 = a2 + 1;
  v7 = a2;
  if (*a2 != 61)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v6 != 93)
  {
LABEL_5:
    while (v6 != a3 - 1)
    {
      ++v7;
      if (*v6++ == 61)
      {
        goto LABEL_4;
      }
    }

LABEL_39:
    sub_100008ABC();
  }

  if (a3 == v7)
  {
    goto LABEL_39;
  }

  memset(v17, 170, sizeof(v17));
  sub_100011A94(a1, a2, v7, v17);
  v8 = SHIBYTE(v17[2]);
  if ((SHIBYTE(v17[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v17[2]))
    {
      memset(__p, 170, sizeof(__p));
      v9 = v17;
      goto LABEL_14;
    }

LABEL_40:
    sub_10000A1D4();
  }

  v8 = v17[1];
  if (!v17[1])
  {
    goto LABEL_40;
  }

  memset(__p, 170, sizeof(__p));
  v9 = v17[0];
LABEL_14:
  sub_10000A4E0(a1, v9, v8 + v9, __p);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
LABEL_16:
      v10 = *(a4 + 144);
      if (v10 >= *(a4 + 152))
      {
        *(a4 + 144) = sub_10000224C(a4 + 136, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (SHIBYTE(__p[2]) < 0)
        {
          sub_1000020AC(*(a4 + 144), __p[0], __p[1]);
        }

        else
        {
          v11 = *__p;
          *(v10 + 16) = __p[2];
          *v10 = v11;
        }

        *(a4 + 144) = v10 + 24;
        *(a4 + 144) = v10 + 24;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_33;
    }
  }

  else if (HIBYTE(__p[2]))
  {
    goto LABEL_16;
  }

  v12 = HIBYTE(v17[2]);
  if (SHIBYTE(v17[2]) < 0)
  {
    v12 = v17[1];
  }

  if (v12 == 2)
  {
    v14 = v17;
    if (SHIBYTE(v17[2]) < 0)
    {
      v14 = v17[0];
    }

    sub_100009F80(a4, *v14, *(v14 + 1));
  }

  else
  {
    if (v12 != 1)
    {
      sub_10000A1D4();
    }

    v13 = v17;
    if (SHIBYTE(v17[2]) < 0)
    {
      v13 = v17[0];
    }

    sub_100007694(a4, *v13);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_37:
    operator delete(__p[0]);
    if (SHIBYTE(v17[2]) < 0)
    {
      goto LABEL_38;
    }

    return v7 + 2;
  }

LABEL_33:
  if ((SHIBYTE(v17[2]) & 0x80000000) == 0)
  {
    return v7 + 2;
  }

LABEL_38:
  operator delete(v17[0]);
  return v7 + 2;
}

void sub_100011298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 144) = v21;
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

_BYTE *sub_100011300(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_15;
  }

  v5 = a2 + 1;
  v6 = a2;
  if (*a2 != 46)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v5 != 93)
  {
LABEL_5:
    while (v5 != a3 - 1)
    {
      ++v6;
      if (*v5++ == 46)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    sub_100008ABC();
  }

  if (a3 == v6)
  {
    goto LABEL_15;
  }

  sub_100011A94(a1, a2, v6, &v10);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v10;
  v7 = v11;
  *(a4 + 16) = v11;
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 - 1 >= 2)
  {
    sub_10000A1D4();
  }

  return v6 + 2;
}

unsigned __int8 *sub_1000113E4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_100006194();
  }

  v5 = *a2;
  if (v5 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v5 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 119)
      {
        *(a5 + 160) |= 0x500u;
        sub_100007694(a5, 95);
        return a2 + 1;
      }

      return sub_1000105B0(a1, a2, a3, a4);
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      return sub_1000105B0(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 8;
    return a2 + 1;
  }

  else
  {
    if (*a2 > 0x52u)
    {
      if (v5 == 83)
      {
        *(a5 + 164) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 87)
      {
        *(a5 + 164) |= 0x500u;
        sub_10000A870(a5, 95);
        return a2 + 1;
      }

      return sub_1000105B0(a1, a2, a3, a4);
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

      return sub_1000105B0(a1, a2, a3, a4);
    }

    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 0;
    return a2 + 1;
  }
}

unsigned __int8 *sub_1000115C8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    goto LABEL_82;
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 > 0x65)
  {
    if (*a2 <= 0x71u)
    {
      if (v4 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 12;
          return a2 + 1;
        }

        else
        {
          sub_100006940(a1, 12);
          return a2 + 1;
        }
      }

      else
      {
        if (v4 != 110)
        {
          goto LABEL_48;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 10;
          return a2 + 1;
        }

        else
        {
          sub_100006940(a1, 10);
          return a2 + 1;
        }
      }
    }

    else
    {
      switch(v4)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 13;
            return a2 + 1;
          }

          else
          {
            sub_100006940(a1, 13);
            return a2 + 1;
          }

        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 9;
            return a2 + 1;
          }

          else
          {
            sub_100006940(a1, 9);
            return a2 + 1;
          }

        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 11;
            return a2 + 1;
          }

          else
          {
            sub_100006940(a1, 11);
            return a2 + 1;
          }

        default:
          goto LABEL_48;
      }
    }
  }

  if (*a2 <= 0x5Bu)
  {
    if (v4 != 34 && v4 != 47)
    {
      goto LABEL_48;
    }

    goto LABEL_21;
  }

  if (v4 == 92)
  {
LABEL_21:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    else
    {
      sub_100006940(a1, v4);
      return a2 + 1;
    }
  }

  if (v4 != 97)
  {
    if (v4 == 98)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      else
      {
        sub_100006940(a1, 8);
        return a2 + 1;
      }
    }

LABEL_48:
    if ((v4 & 0xFFFFFFF8) == 0x30)
    {
      v8 = v4 - 48;
      if (a2 + 1 == a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = a2 + 1;
        v10 = a2[1];
        if ((v10 & 0xF8) == 0x30)
        {
          v8 = v10 + 8 * v8 - 48;
          if (a2 + 2 != a3)
          {
            v11 = a2[2];
            v12 = v11 & 0xF8;
            v13 = v11 + 8 * v8 - 48;
            if (v12 == 48)
            {
              v9 = a2 + 3;
            }

            else
            {
              v9 = a2 + 2;
            }

            if (v12 == 48)
            {
              v8 = v13;
            }

            if (!a4)
            {
              goto LABEL_81;
            }

            goto LABEL_69;
          }

          v9 = a3;
          if (!a4)
          {
LABEL_81:
            sub_100006940(a1, v8);
            return v9;
          }

LABEL_69:
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          result = v9;
          *a4 = v8;
          *(a4 + 1) = 0;
          return result;
        }
      }

      if (!a4)
      {
        goto LABEL_81;
      }

      goto LABEL_69;
    }

LABEL_82:
    sub_100006194();
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 7;
    return a2 + 1;
  }

  else
  {
    sub_100006940(a1, 7);
    return a2 + 1;
  }
}

void sub_100011A94(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  if (v5 <= 0x16)
  {
    __dst[23] = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  *&__dst[8] = v5;
  *&__dst[16] = v9 | 0x8000000000000000;
  *__dst = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v8[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    v12 = *__dst;
    if (!*&__dst[8])
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!__dst[23])
    {
      return;
    }

    v12 = __dst;
  }

  std::__get_collation_name(&v19, v12);
  *a4 = *&v19.__r_.__value_.__l.__data_;
  v13 = v19.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v19.__r_.__value_.__l + 2);
  v14 = HIBYTE(v13);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 8);
  }

  if (v14)
  {
LABEL_17:
    if ((__dst[23] & 0x80000000) == 0)
    {
      return;
    }

    v12 = *__dst;
LABEL_23:
    operator delete(v12);
    return;
  }

  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v12 = *__dst;
    if (*&__dst[8] >= 3uLL)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (__dst[23] < 3)
  {
LABEL_25:
    (*(**(a1 + 16) + 32))(&v19);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v19;
    if (*(a4 + 23) < 0)
    {
      v16 = *(a4 + 8);
      if (v16 == 1 || v16 == 12)
      {
        if (__dst != a4)
        {
          if (__dst[23] >= 0)
          {
            v17 = __dst;
          }

          else
          {
            v17 = *__dst;
          }

          if (__dst[23] >= 0)
          {
            v18 = __dst[23];
          }

          else
          {
            v18 = *&__dst[8];
          }

          sub_100002558(a4, v17, v18);
        }
      }

      else
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }
    }

    else
    {
      v15 = *(a4 + 23);
      if (v15 == 1 || v15 == 12)
      {
        if (__dst != a4)
        {
          if ((__dst[23] & 0x80000000) != 0)
          {
            sub_100002498(a4, *__dst, *&__dst[8]);
          }

          else
          {
            *a4 = *__dst;
            *(a4 + 16) = *&__dst[16];
          }
        }
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }
    }

    goto LABEL_17;
  }
}

void sub_100011D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_100011D48(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  v4 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001210();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v4 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v4;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v4) = 0;
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v13, &v12[v13]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  result = std::__get_classname(v14, a4);
  if (SHIBYTE(__dst[2]) < 0)
  {
    v16 = result;
    operator delete(__dst[0]);
    return v16;
  }

  return result;
}

void sub_100011EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_100011EBC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = sub_10001235C(a1, a2, a3);
  if (v6 != v4)
  {
    return v6;
  }

  if (v4 == a3 || v4 + 1 == a3 || *v6 != 92)
  {
    return v4;
  }

  v7 = v4[1];
  if (v7 == 40)
  {
    v6 = v4 + 2;
  }

  if (v6 != v4)
  {
    if ((*(a1 + 24) & 2) != 0)
    {
      v11 = *(a1 + 28);
    }

    else
    {
      v9 = v6;
      v10 = operator new(0x18uLL);
      v6 = v9;
      v11 = *(a1 + 28) + 1;
      *(a1 + 28) = v11;
      v12 = *(a1 + 56);
      v13 = *(v12 + 8);
      *v10 = off_100030DF0;
      v10[1] = v13;
      *(v10 + 4) = v11;
      *(v12 + 8) = v10;
      *(a1 + 56) = v10;
    }

    do
    {
      if (v6 == a3)
      {
        goto LABEL_31;
      }

      v14 = v6;
      v15 = *(a1 + 56);
      v16 = *(a1 + 28);
      v17 = sub_100011EBC(a1, v6, a3);
      if (v14 == v17)
      {
        break;
      }

      v6 = sub_1000120E4(a1, v17, a3, v15, v16 + 1, *(a1 + 28) + 1);
    }

    while (v14 != v6);
    if (v14 == a3)
    {
      v4 = a3;
    }

    else
    {
      if (v14 + 1 == a3 || *v14 != 92)
      {
        goto LABEL_31;
      }

      if (v14[1] == 41)
      {
        v4 = v14 + 2;
      }

      else
      {
        v4 = v14;
      }
    }

    if (v4 != v14)
    {
      if ((*(a1 + 24) & 2) == 0)
      {
        v18 = operator new(0x18uLL);
        v19 = *(a1 + 56);
        v20 = *(v19 + 8);
        *v18 = off_100030E38;
        v18[1] = v20;
        *(v18 + 4) = v11;
        *(v19 + 8) = v18;
        *(a1 + 56) = v18;
        return v4;
      }

      return v4;
    }

LABEL_31:
    sub_1000045E8();
  }

  if ((v7 & 0xF8) != 0x30 && (v7 & 0xFE) != 0x38 || (v7 - 49) > 8)
  {
    return v4;
  }

  if ((v7 - 48) > *(a1 + 28))
  {
    sub_100006AEC();
  }

  sub_100006B44(a1, v7 - 48);
  return v4 + 2;
}

unsigned __int8 *sub_1000120E4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5, int a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 == 42)
  {
    v7 = a2;
    sub_10000AF8C(a1, 0, -1, a4, a5, a6, 1);
    return v7 + 1;
  }

  if (a2 + 1 == a3 || v6 != 92)
  {
    return a2;
  }

  v9 = a2[1] == 123 ? a2 + 2 : a2;
  if (v9 == a2)
  {
    return a2;
  }

  if (v9 == a3)
  {
    v10 = 0;
LABEL_20:
    v12 = a3;
    goto LABEL_21;
  }

  v11 = *v9;
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    goto LABEL_54;
  }

  v10 = v11 - 48;
  v12 = v9 + 1;
  if (v9 + 1 == a3)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = *v12;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      break;
    }

    if (v10 >= 214748364)
    {
      goto LABEL_54;
    }

    v10 = v13 + 10 * v10 - 48;
    if (++v12 == a3)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  if (v12 == v9)
  {
    goto LABEL_54;
  }

  if (v12 == a3)
  {
    goto LABEL_55;
  }

  v14 = *v12;
  v15 = v12 + 1;
  if (v14 == 44)
  {
    if (v15 == a3)
    {
      goto LABEL_55;
    }

    v16 = *v15;
    if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
    {
      v15 = v12 + 2;
      if (v12 + 2 == a3)
      {
        goto LABEL_55;
      }

      v17 = v16 - 48;
      while (1)
      {
        v22 = *v15;
        if ((v22 & 0xF8) != 0x30 && (v22 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_54;
        }

        v17 = v22 + 10 * v17 - 48;
        if (++v15 == a3)
        {
          v15 = a3;
          break;
        }
      }
    }

    else
    {
      v17 = -1;
    }

    if (v15 != a3)
    {
      if (v15 + 1 == a3 || *v15 != 92)
      {
        goto LABEL_55;
      }

      if (v15[1] == 125)
      {
        a3 = v15 + 2;
      }

      else
      {
        a3 = v15;
      }
    }

    if (a3 != v15)
    {
      if (v17 == -1)
      {
        v20 = v10;
        v19 = a3;
        v21 = -1;
        goto LABEL_53;
      }

      if (v17 >= v10)
      {
        v19 = a3;
        v20 = v10;
        v21 = v17;
        goto LABEL_53;
      }

LABEL_54:
      sub_10000B0CC();
    }

LABEL_55:
    sub_10000B124();
  }

  if (v15 == a3 || v14 != 92)
  {
    goto LABEL_55;
  }

  v18 = (v12[1] == 125 ? v12 + 2 : v12);
  if (v12 == v18)
  {
    goto LABEL_55;
  }

  v19 = v18;
  v20 = v10;
  v21 = v10;
LABEL_53:
  sub_10000AF8C(a1, v20, v21, a4, a5, a6, 1);
  return v19;
}

unsigned __int8 *sub_10001235C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return sub_1000101F4(a1, a2, a3);
  }

  v4 = a2 + 1;
  v3 = *a2;
  if ((a2 + 1 != a3 || v3 != 36) && ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0))
  {
    v18 = a2;
    sub_100006940(a1, v3);
    return v18 + 1;
  }

  v6 = a2;
  if (v4 == a3)
  {
    goto LABEL_9;
  }

  v7 = *a2;
  if (v7 == 92)
  {
    v8 = *v4;
    if ((v8 - 36) > 0x3A || ((1 << (v8 - 36)) & 0x580000000000441) == 0)
    {
      return sub_1000101F4(a1, a2, a3);
    }

    v10 = a1;
    v11 = a2;
    v12 = a3;
    sub_100006940(a1, v8);
    a2 = v11;
    a3 = v12;
    a1 = v10;
    v6 = v4 + 1;
    if (v4 + 1 == v11)
    {
LABEL_9:
      if (*v6 != 46)
      {
        return sub_1000101F4(a1, a2, a3);
      }

LABEL_19:
      v14 = a1;
      v15 = operator new(0x10uLL);
      v16 = *(v14 + 56);
      v17 = *(v16 + 8);
      *v15 = off_100030FE8;
      v15[1] = v17;
      *(v16 + 8) = v15;
      *(v14 + 56) = v15;
      return v6 + 1;
    }

    return v6;
  }

  v6 = a2;
  if (v7 == 46)
  {
    goto LABEL_19;
  }

  return sub_1000101F4(a1, a2, a3);
}

unsigned __int8 *sub_1000124E8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = sub_100012728(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        v11 = operator new(0x18uLL);
        v12 = (*(a1 + 24) & 0x5F0) == 1024;
        v13 = *(a1 + 56);
        v11[1] = *(v13 + 8);
        v14 = off_100030AD8;
        break;
      case '(':
        if ((*(a1 + 24) & 2) != 0)
        {
          v16 = *(a1 + 28);
        }

        else
        {
          v15 = operator new(0x18uLL);
          v16 = *(a1 + 28) + 1;
          *(a1 + 28) = v16;
          v17 = *(a1 + 56);
          v18 = *(v17 + 8);
          *v15 = off_100030DF0;
          v15[1] = v18;
          *(v15 + 4) = v16;
          *(v17 + 8) = v15;
          *(a1 + 56) = v15;
        }

        ++*(a1 + 36);
        v19 = sub_10000F1F0(a1, v9 + 1, a3);
        if (v19 == a3 || (v9 = v19, *v19 != 41))
        {
          sub_1000045E8();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          v20 = operator new(0x18uLL);
          v21 = *(a1 + 56);
          v22 = *(v21 + 8);
          *v20 = off_100030E38;
          v20[1] = v22;
          *(v20 + 4) = v16;
          *(v21 + 8) = v20;
          *(a1 + 56) = v20;
        }

        --*(a1 + 36);
        goto LABEL_17;
      case '^':
        v11 = operator new(0x18uLL);
        v12 = (*(a1 + 24) & 0x5F0) == 1024;
        v13 = *(a1 + 56);
        v11[1] = *(v13 + 8);
        v14 = off_100030A90;
        break;
      default:
        goto LABEL_18;
    }

    *v11 = v14;
    *(v11 + 16) = v12;
    *(v13 + 8) = v11;
    *(a1 + 56) = v11;
LABEL_17:
    ++v9;
  }

LABEL_18:
  if (v9 == a2)
  {
    return a2;
  }

  v23 = *(a1 + 28) + 1;

  return sub_10000FD28(a1, v9, a3, v6, v7 + 1, v23);
}

unsigned __int8 *sub_100012728(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    result = sub_100012890(a1, a2, a2);
    if (result != a2)
    {
      return result;
    }

    return sub_1000101F4(a1, a2, a3);
  }

  v7 = *a2;
  v8 = (v7 - 36);
  if (v8 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v7 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_6;
  }

  if (v8 == 5)
  {
    if (!*(a1 + 36))
    {
      sub_100006940(a1, 41);
      return a2 + 1;
    }
  }

  else
  {
LABEL_13:
    if ((v7 - 123) >= 2)
    {
      sub_100006940(a1, v7);
      return a2 + 1;
    }
  }

LABEL_6:
  result = sub_100012890(a1, a2, a3);
  if (result == a2)
  {
    if (*result == 46)
    {
      v9 = result;
      v10 = operator new(0x10uLL);
      v11 = *(a1 + 56);
      v12 = *(v11 + 8);
      *v10 = off_100030FE8;
      v10[1] = v12;
      *(v11 + 8) = v10;
      *(a1 + 56) = v10;
      return v9 + 1;
    }

    return sub_1000101F4(a1, a2, a3);
  }

  return result;
}

unsigned __int8 *sub_100012890(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return v3;
  }

  v4 = a2[1];
  v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
  if (!v5 || (v4 - 123) < 3)
  {
    sub_100006940(a1, v4);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    return sub_1000115C8(a1, a2 + 1, a3, 0);
  }

  if (sub_10000C028(a1, v4))
  {
    v3 += 2;
  }

  return v3;
}

void sub_100012AC8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x100012A88);
  }

  __cxa_rethrow();
}

void util::readPlistToCFDictionary(uint64_t a1@<X0>, CFPropertyListRef *a2@<X8>)
{
  v2 = a1;
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v17 = CFStringCreateWithCString(kCFAllocatorDefault, v2, 0x8000100u);
  v4 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v17, kCFURLPOSIXPathStyle, 0);
  cf = v4;
  *a2 = 0;
  if (v4)
  {
    v5 = CFReadStreamCreateWithFile(kCFAllocatorDefault, v4);
    v6 = v5;
    v15 = v5;
    if (!v5)
    {
      goto LABEL_16;
    }

    CFReadStreamOpen(v5);
    error = 0;
    *a2 = CFPropertyListCreateWithStream(kCFAllocatorDefault, v6, 0, 1uLL, 0, &error);
    CFReadStreamClose(v6);
    if (!error)
    {
      goto LABEL_15;
    }

    CFErrorGetDomain(error);
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v13 = *&buf[16];
    if ((atomic_load_explicit(&qword_100034688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100034688))
    {
      qword_100034690 = 0;
      qword_100034698 = 0;
      __cxa_guard_release(&qword_100034688);
    }

    if (qword_100034680 == -1)
    {
      v7 = qword_100034698;
      if (!os_log_type_enabled(qword_100034698, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&qword_100034680, &stru_100031040);
      v7 = qword_100034698;
      if (!os_log_type_enabled(qword_100034698, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    v9 = cf;
    Code = CFErrorGetCode(error);
    v11 = __p;
    if (v13 < 0)
    {
      v11 = __p[0];
    }

    *buf = 138412802;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = Code;
    *&buf[22] = 2080;
    v19 = v11;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to create %@ PropertyList: %ld: %s", buf, 0x20u);
LABEL_9:
    CFRelease(error);
    v8 = *a2;
    *a2 = 0;
    if (v8)
    {
      CFRelease(v8);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
      v6 = v15;
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = v15;
      if (!v15)
      {
LABEL_16:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_18;
      }
    }

LABEL_15:
    CFRelease(v6);
    goto LABEL_16;
  }

LABEL_18:
  if (v17)
  {
    CFRelease(v17);
  }
}

void sub_100012DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    sub_100000FF0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100012E6C(const std::string *a1, _DWORD *a2)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    result = strcasecmp(a1, "false");
    if (!result)
    {
      goto LABEL_29;
    }

    result = strcasecmp(a1, "off");
    if (!result)
    {
      goto LABEL_29;
    }

    result = strcasecmp(a1, "no");
    if (!result)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v5 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

LABEL_28:
    result = 1;
LABEL_29:
    *a2 = result;
    return result;
  }

  v5 = a1->__r_.__value_.__r.__words[0];
  result = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!result)
  {
    goto LABEL_29;
  }

  result = strcasecmp(v5, "off");
  if (!result)
  {
    goto LABEL_29;
  }

  result = strcasecmp(v5, "no");
  if (!result)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, "true") || !strcasecmp(v5, "on") || !strcasecmp(v5, "yes") || !strcasecmp(v5, "full") || !strcasecmp(v5, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v5, "lite"))
  {
LABEL_31:
    result = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v5, "background"))
  {
    goto LABEL_31;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  result = std::stol(a1, &__idx, 10);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx == size && result >= 0xFFFFFFFF80000000 && result <= 0x7FFFFFFF)
  {
    goto LABEL_29;
  }

  return result;
}

void util::findLastLogDumpTimestamp(util *this@<X0>, const char *__s@<X1>, const char *a3@<X2>, int a4@<W3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v240 = a3;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v277 = 0;
  v276 = 0;
  v278 = 0;
  memset(v275, 170, 24);
  v8 = strlen(__s);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001210();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v8 | 7) + 1;
    }

    v10 = operator new(v15);
    *&__dst[0].st_uid = v15 | 0x8000000000000000;
    *&__dst[0].st_dev = v10;
    __dst[0].st_ino = v9;
  }

  else
  {
    HIBYTE(__dst[0].st_gid) = v8;
    v10 = __dst;
    if (!v8)
    {
      LOBYTE(__dst[0].st_dev) = 0;
      st_gid_high = SHIBYTE(__dst[0].st_gid);
      if ((SHIBYTE(__dst[0].st_gid) & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(v10, __s, v9);
  *(&v10->st_dev + v9) = 0;
  st_gid_high = SHIBYTE(__dst[0].st_gid);
  if ((SHIBYTE(__dst[0].st_gid) & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (st_gid_high - 21 < 2)
    {
      v12 = st_gid_high + 2;
      v13 = __dst;
      v14 = 22;
LABEL_15:
      v16 = 2 * v14;
      if (v12 > 2 * v14)
      {
        v16 = v12;
      }

      if ((v16 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v16 | 7) + 1;
      }

      if (v16 >= 0x17)
      {
        v18 = v17;
      }

      else
      {
        v18 = 23;
      }

      v19 = v14 == 22;
      goto LABEL_24;
    }

    v23 = __dst;
    *(&__dst[0].st_dev + st_gid_high) = 10798;
    v24 = st_gid_high + 2;
    if ((SHIBYTE(__dst[0].st_gid) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

LABEL_12:
  st_gid_high = __dst[0].st_ino;
  v14 = (*&__dst[0].st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v14 - __dst[0].st_ino >= 2)
  {
    v23 = *&__dst[0].st_dev;
    *(*&__dst[0].st_dev + __dst[0].st_ino) = 10798;
    v24 = st_gid_high + 2;
    if ((SHIBYTE(__dst[0].st_gid) & 0x80000000) == 0)
    {
LABEL_30:
      HIBYTE(__dst[0].st_gid) = v24 & 0x7F;
LABEL_33:
      v22 = v23 + v24;
      goto LABEL_34;
    }

LABEL_32:
    __dst[0].st_ino = v24;
    goto LABEL_33;
  }

  v12 = __dst[0].st_ino + 2;
  if (0x7FFFFFFFFFFFFFF7 - (*&__dst[0].st_uid & 0x7FFFFFFFFFFFFFFFuLL) < __dst[0].st_ino + 2 - v14)
  {
    sub_100001210();
  }

  v13 = *&__dst[0].st_dev;
  if (v14 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_15;
  }

  v19 = 0;
  v18 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v20 = operator new(v18);
  v21 = v20;
  if (st_gid_high)
  {
    memmove(v20, v13, st_gid_high);
  }

  *&v21[st_gid_high] = 10798;
  if (!v19)
  {
    operator delete(v13);
  }

  *&__dst[0].st_uid = v18 | 0x8000000000000000;
  *&__dst[0].st_dev = v21;
  __dst[0].st_ino = v12;
  v22 = &v21[v12];
LABEL_34:
  *v22 = 0;
  v275[2] = *&__dst[0].st_uid;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v274 = v25;
  *v275 = *&__dst[0].st_dev;
  *&v273[16] = v25;
  *&v273[32] = v25;
  *v273 = v25;
  sub_10000EA90(v273, v275, 0);
  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v271[32] = v26;
  v272 = v26;
  *v271 = v26;
  *&v271[16] = v26;
  sub_100002670(v271, "(\\d{4})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{3})", 0);
  v27 = a5 == 0;
  v28 = strlen(this);
  if (v28 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100001210();
  }

  v29 = v28;
  if (v28 >= 0x17)
  {
    if ((v28 | 7) == 0x17)
    {
      v31 = 25;
    }

    else
    {
      v31 = (v28 | 7) + 1;
    }

    v30 = operator new(v31);
    __p[1] = v29;
    v270 = v31 | 0x8000000000000000;
    __p[0] = v30;
    goto LABEL_42;
  }

  HIBYTE(v270) = v28;
  v30 = __p;
  if (v28)
  {
LABEL_42:
    memcpy(v30, this, v29);
  }

  *(v29 + v30) = 0;
  std::locale::locale(&v263, v273);
  v264 = *&v273[8];
  v265 = *&v273[24];
  v266 = *&v273[40];
  v267 = v274;
  if (v274)
  {
    atomic_fetch_add_explicit((v274 + 8), 1uLL, memory_order_relaxed);
  }

  v268 = *(&v274 + 1);
  v32 = sub_1000018B8(__p, &v263, &v276, 0);
  v33 = v267;
  if (!v267 || atomic_fetch_add(&v267->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(&v263);
    if ((SHIBYTE(v270) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(__p[0]);
    v34 = a6;
    if (!v32)
    {
      goto LABEL_458;
    }

    goto LABEL_52;
  }

  (v33->__on_zero_shared)(v33);
  std::__shared_weak_count::__release_weak(v33);
  std::locale::~locale(&v263);
  if (SHIBYTE(v270) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v34 = a6;
  if (!v32)
  {
    goto LABEL_458;
  }

LABEL_52:
  v35 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v277 - v276) >> 3));
  if (v277 == v276)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35;
  }

  sub_1000158E4(v276, v277, __dst, v36, 1);
  v261[0] = 0;
  v261[1] = 0;
  v262 = 0;
  v37 = v276;
  v243 = v277;
  v34 = a6;
  if (v276 == v277)
  {
LABEL_458:
    if (!v240)
    {
      goto LABEL_491;
    }

    goto LABEL_459;
  }

  while (2)
  {
    memset(v260, 170, 24);
    v245 = v37;
    v246 = v27;
    if (*(v37 + 23) < 0)
    {
      sub_1000020AC(v260, *v37, v37[1]);
    }

    else
    {
      v38 = *v37;
      v260[2] = v37[2];
      *v260 = v38;
    }

    if (v262 >= 0)
    {
      v39 = HIBYTE(v262);
    }

    else
    {
      v39 = v261[1];
    }

    v40 = HIBYTE(v260[2]);
    v41 = SHIBYTE(v260[2]);
    v43 = v260[0];
    v42 = v260[1];
    if (v39)
    {
      v44 = SHIBYTE(v260[2]) >= 0 ? v260 : v260[0];
      v45 = SHIBYTE(v260[2]) >= 0 ? HIBYTE(v260[2]) : v260[1];
      v46 = v262 >= 0 ? v261 : v261[0];
      if (v45 >= v39)
      {
        v65 = &v45[v44];
        v66 = *v46;
        v67 = v44;
        do
        {
          v68 = &v45[-v39];
          if (v68 == -1)
          {
            break;
          }

          v69 = memchr(v67, v66, (v68 + 1));
          if (!v69)
          {
            break;
          }

          v70 = v69;
          if (!memcmp(v69, v46, v39))
          {
            if (v70 == v65 || v70 - v44 == -1)
            {
              break;
            }

            v64 = 3;
            v34 = a6;
            v79 = v245;
            v27 = v246;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_431;
            }

            goto LABEL_135;
          }

          v67 = (v70 + 1);
          v45 = (v65 - (v70 + 1));
        }

        while (v45 >= v39);
      }
    }

    *&v47 = 0xAAAAAAAAAAAAAAAALL;
    *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v307 = v47;
    v304 = 0xAAAAAAAAAAAAAA00;
    v301[3] = 0xAAAAAAAAAAAAAAAALL;
    v302 = 0;
    v303 = 0;
    v305 = 0;
    v306 = 0;
    LOBYTE(v307) = 0;
    BYTE8(v307) = 0;
    v308 = 0;
    *v300 = 0u;
    memset(v301, 0, 25);
    if (!v246)
    {
      if (v41 >= 0)
      {
        v60 = v260;
      }

      else
      {
        v60 = v43;
      }

      if (v41 >= 0)
      {
        v61 = v40;
      }

      else
      {
        v61 = v42;
      }

      v62 = strlen(a5);
      v34 = a6;
      if (v62)
      {
        v63 = v62;
        if (v61 < v62)
        {
LABEL_112:
          v27 = 0;
          v64 = 0;
          goto LABEL_428;
        }

        v71 = &v61[v60];
        v72 = *a5;
        v73 = v60;
        while (1)
        {
          if (&v61[-v63] == -1)
          {
            goto LABEL_112;
          }

          v74 = memchr(v73, v72, &v61[-v63 + 1]);
          if (!v74)
          {
            goto LABEL_112;
          }

          v75 = v74;
          if (!memcmp(v74, a5, v63))
          {
            break;
          }

          v73 = (v75 + 1);
          v61 = (v71 - (v75 + 1));
          if (v61 < v63)
          {
            goto LABEL_112;
          }
        }

        v27 = 0;
        if (v75 == v71)
        {
          v64 = 0;
          goto LABEL_428;
        }

        v64 = 0;
        if (v75 - v60 == -1)
        {
          goto LABEL_428;
        }
      }

      sub_100017704(v261, a5);
LABEL_187:
      v64 = 0;
      goto LABEL_427;
    }

    *&__dst[0].st_birthtimespec.tv_nsec = v47;
    __dst[0].st_ctimespec = 0xAAAAAAAAAAAAAA00;
    __dst[0].st_atimespec.tv_nsec = v47;
    __dst[0].st_mtimespec = 0uLL;
    __dst[0].st_birthtimespec.tv_sec = 0;
    LOBYTE(__dst[0].st_birthtimespec.tv_nsec) = 0;
    LOBYTE(__dst[0].st_size) = 0;
    __dst[0].st_blocks = 0;
    memset(__dst, 0, 32);
    if (v41 >= 0)
    {
      v48 = v260;
    }

    else
    {
      v48 = v43;
    }

    if (v41 >= 0)
    {
      v49 = v40;
    }

    else
    {
      v49 = v42;
    }

    *(&__dst[0].st_rdev + 1) = 0uLL;
    v50 = sub_10000C4AC(v271, v48, &v49[v48], __dst, 0);
    v51 = HIBYTE(v260[2]);
    if (SHIBYTE(v260[2]) >= 0)
    {
      v52 = v260;
    }

    else
    {
      v52 = v260[0];
    }

    if (SHIBYTE(v260[2]) < 0)
    {
      v51 = v260[1];
    }

    sub_10000C7B8(v300, v52, v51 + v52, &__dst[0].st_dev, 0);
    v34 = a6;
    if (*&__dst[0].st_dev)
    {
      __dst[0].st_ino = *&__dst[0].st_dev;
      operator delete(*&__dst[0].st_dev);
    }

    if (!v50)
    {
      goto LABEL_187;
    }

    v53 = v300[0] + 16;
    if (v300[1] == v300[0])
    {
      v53 = &v301[3];
    }

    if (*v53 == 1)
    {
      v54 = &v301[1];
      if (v300[1] != v300[0])
      {
        v54 = v300[0];
      }

      v55 = *v54;
      v56 = (v300[0] + 8);
      if (v300[1] == v300[0])
      {
        v56 = &v301[2];
      }

      v57 = *v56;
      v58 = *v56 - v55;
      if (v58 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100001210();
      }

      if (v58 > 0x16)
      {
        if ((v58 | 7) == 0x17)
        {
          v80 = 25;
        }

        else
        {
          v80 = (v58 | 7) + 1;
        }

        v59 = operator new(v80);
        *&__dst[0].st_uid = v80 | 0x8000000000000000;
        *&__dst[0].st_dev = v59;
        __dst[0].st_ino = v58;
        if (v57 == v55)
        {
LABEL_101:
          *(&v59->st_dev + v58) = 0;
          if (*(a6 + 23) < 0)
          {
            goto LABEL_102;
          }

LABEL_126:
          *a6 = *&__dst[0].st_dev;
          *(a6 + 16) = *&__dst[0].st_uid;
          if (!a4)
          {
            goto LABEL_426;
          }

          goto LABEL_127;
        }
      }

      else
      {
        HIBYTE(__dst[0].st_gid) = *v56 - v55;
        v59 = __dst;
        if (v57 == v55)
        {
          goto LABEL_101;
        }
      }

      memmove(v59, v55, v58);
      goto LABEL_101;
    }

    memset(__dst, 0, 24);
    if ((*(a6 + 23) & 0x80000000) == 0)
    {
      goto LABEL_126;
    }

LABEL_102:
    operator delete(*a6);
    *a6 = *&__dst[0].st_dev;
    *(a6 + 16) = *&__dst[0].st_uid;
    if (!a4)
    {
      goto LABEL_426;
    }

LABEL_127:
    v76 = strlen(this);
    if (v76 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100001210();
    }

    v77 = v76;
    if (v76 >= 0x17)
    {
      if ((v76 | 7) == 0x17)
      {
        v81 = 25;
      }

      else
      {
        v81 = (v76 | 7) + 1;
      }

      v78 = operator new(v81);
      v258[1] = v77;
      v259 = v81 | 0x8000000000000000;
      v258[0] = v78;
LABEL_146:
      memcpy(v78, this, v77);
      *(v77 + v78) = 0;
      if ((*(a6 + 23) & 0x80000000) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_147;
    }

    HIBYTE(v259) = v76;
    v78 = v258;
    if (v76)
    {
      goto LABEL_146;
    }

    LOBYTE(v258[0]) = 0;
    if ((*(a6 + 23) & 0x80000000) == 0)
    {
LABEL_131:
      *v256 = *a6;
      v257 = *(a6 + 16);
      goto LABEL_148;
    }

LABEL_147:
    sub_1000020AC(v256, *a6, *(a6 + 8));
LABEL_148:
    v296 = 0;
    v295 = 0;
    v297 = 0;
    *&v82 = 0xAAAAAAAAAAAAAAAALL;
    *(&v82 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v293[32] = v82;
    v294 = v82;
    *v293 = v82;
    *&v293[16] = v82;
    v83 = SHIBYTE(v257);
    if (v257 >= 0)
    {
      v84 = HIBYTE(v257);
    }

    else
    {
      v84 = v256[1];
    }

    v85 = v84 + 2;
    if (v84 + 2 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100001210();
    }

    if (v85 < 0x17)
    {
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = 10798;
      buf[23] = v84 + 2;
      v88 = &buf[2];
      if (!v84)
      {
        goto LABEL_162;
      }
    }

    else
    {
      if ((v85 | 7) == 0x17)
      {
        v86 = 25;
      }

      else
      {
        v86 = (v85 | 7) + 1;
      }

      v87 = operator new(v86);
      *&buf[8] = v84 + 2;
      *&buf[16] = v86 | 0x8000000000000000;
      *buf = v87;
      *v87 = 10798;
      v88 = (v87 + 1);
    }

    if (v83 >= 0)
    {
      v89 = v256;
    }

    else
    {
      v89 = v256[0];
    }

    memmove(v88, v89, v84);
LABEL_162:
    v88[v84] = 0;
    v90 = buf[23];
    if ((buf[23] & 0x8000000000000000) == 0)
    {
      if ((buf[23] - 21) < 2)
      {
        v91 = buf[23] + 2;
        v92 = buf;
        v93 = 22;
LABEL_168:
        v94 = 2 * v93;
        if (v91 > 2 * v93)
        {
          v94 = v91;
        }

        if ((v94 | 7) == 0x17)
        {
          v95 = 25;
        }

        else
        {
          v95 = (v94 | 7) + 1;
        }

        if (v94 >= 0x17)
        {
          v96 = v95;
        }

        else
        {
          v96 = 23;
        }

        v97 = v93 == 22;
        goto LABEL_177;
      }

      v101 = buf;
      *&buf[buf[23]] = 10798;
      v102 = v90 + 2;
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_183;
      }

      goto LABEL_189;
    }

    v90 = *&buf[8];
    v93 = (*&buf[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v93 - *&buf[8] >= 2)
    {
      v101 = *buf;
      *(*buf + *&buf[8]) = 10798;
      v102 = v90 + 2;
      if ((buf[23] & 0x80000000) == 0)
      {
LABEL_183:
        buf[23] = v102 & 0x7F;
LABEL_190:
        v100 = &v101[v102];
        goto LABEL_191;
      }

LABEL_189:
      *&buf[8] = v102;
      goto LABEL_190;
    }

    v91 = *&buf[8] + 2;
    if (0x7FFFFFFFFFFFFFF7 - (*&buf[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&buf[8] + 2 - v93)
    {
      sub_100001210();
    }

    v92 = *buf;
    if (v93 < 0x3FFFFFFFFFFFFFF3)
    {
      goto LABEL_168;
    }

    v97 = 0;
    v96 = 0x7FFFFFFFFFFFFFF7;
LABEL_177:
    v98 = operator new(v96);
    v99 = v98;
    if (v90)
    {
      memmove(v98, v92, v90);
    }

    *&v99[v90] = 10798;
    if (!v97)
    {
      operator delete(v92);
    }

    *&buf[8] = v91;
    *&buf[16] = v96 | 0x8000000000000000;
    *buf = v99;
    v100 = &v99[v91];
LABEL_191:
    *v100 = 0;
    *&__dst[0].st_dev = *buf;
    *&__dst[0].st_uid = *&buf[16];
    memset(buf, 0, sizeof(buf));
    sub_10000EA90(v293, __dst, 0);
    if ((SHIBYTE(__dst[0].st_gid) & 0x80000000) == 0)
    {
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_193;
      }

LABEL_196:
      operator delete(*buf);
      if ((SHIBYTE(v259) & 0x80000000) == 0)
      {
        goto LABEL_194;
      }

      goto LABEL_197;
    }

    operator delete(*&__dst[0].st_dev);
    if (buf[23] < 0)
    {
      goto LABEL_196;
    }

LABEL_193:
    if ((SHIBYTE(v259) & 0x80000000) == 0)
    {
LABEL_194:
      *v291 = *v258;
      v292 = v259;
      goto LABEL_198;
    }

LABEL_197:
    sub_1000020AC(v291, v258[0], v258[1]);
LABEL_198:
    std::locale::locale(&v285, v293);
    v286 = *&v293[8];
    v287 = *&v293[24];
    v288 = *&v293[40];
    v289 = v294;
    if (v294)
    {
      atomic_fetch_add_explicit((v294 + 8), 1uLL, memory_order_relaxed);
    }

    v290 = *(&v294 + 1);
    v103 = sub_1000018B8(v291, &v285, &v295, 0);
    v104 = v289;
    if (!v289 || atomic_fetch_add(&v289->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      std::locale::~locale(&v285);
      if ((SHIBYTE(v292) & 0x80000000) == 0)
      {
        goto LABEL_203;
      }

LABEL_207:
      operator delete(v291[0]);
      if (!v103)
      {
LABEL_208:
        v105 = 0;
        v106 = v294;
        if (v294)
        {
          goto LABEL_343;
        }

        goto LABEL_402;
      }

      goto LABEL_204;
    }

    (v104->__on_zero_shared)(v104);
    std::__shared_weak_count::__release_weak(v104);
    std::locale::~locale(&v285);
    if (SHIBYTE(v292) < 0)
    {
      goto LABEL_207;
    }

LABEL_203:
    if (!v103)
    {
      goto LABEL_208;
    }

LABEL_204:
    memset(v284, 170, 24);
    if (SHIBYTE(v259) < 0)
    {
      sub_1000020AC(v282, v258[0], v258[1]);
    }

    else
    {
      *v282 = *v258;
      v283 = v259;
    }

    v280 = 0;
    v279 = 0;
    v281 = 0;
    v107 = v295;
    v108 = v296;
    *&buf[8] = 0xAAAAAAAAAAAAAA00;
    *buf = &v279;
    v109 = v296 - v295;
    if (v296 == v295)
    {
      memset(v284, 0, 24);
      goto LABEL_306;
    }

    if (0xAAAAAAAAAAAAAAABLL * (v109 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_1000023A0();
    }

    v110 = operator new(v296 - v295);
    v279 = v110;
    v280 = v110;
    v281 = v110 + v109;
    v299[0] = v110;
    v298 = v110;
    *&__dst[0].st_dev = &v279;
    __dst[0].st_ino = &v298;
    *&__dst[0].st_rdev = 0xAAAAAAAAAAAAAA00;
    *&__dst[0].st_uid = v299;
    do
    {
      while ((*(v107 + 23) & 0x80000000) == 0)
      {
        v111 = *v107;
        v110[2] = v107[2];
        *v110 = v111;
        v112 = v110;
        v107 += 3;
        v110 += 3;
        v299[0] = v110;
        if (v107 == v108)
        {
          goto LABEL_217;
        }
      }

      sub_1000020AC(v110, *v107, v107[1]);
      v112 = v299[0];
      v107 += 3;
      v110 = v299[0] + 24;
      v299[0] = v299[0] + 24;
    }

    while (v107 != v108);
LABEL_217:
    v280 = v110;
    memset(v284, 0, 24);
    if (v279 == v110)
    {
      goto LABEL_306;
    }

    v113 = v279 - 24;
    while (1)
    {
      memset(buf, 170, sizeof(buf));
      if (v113[47] < 0)
      {
        sub_1000020AC(buf, *(v113 + 3), *(v113 + 4));
      }

      else
      {
        v114 = *(v113 + 24);
        *&buf[16] = *(v113 + 5);
        *buf = v114;
      }

      memset(v299, 170, sizeof(v299));
      v115 = SHIBYTE(v283);
      if (v283 >= 0)
      {
        v116 = HIBYTE(v283);
      }

      else
      {
        v116 = v282[1];
      }

      v117 = buf[23];
      if ((buf[23] & 0x80u) == 0)
      {
        v118 = buf[23];
      }

      else
      {
        v118 = *&buf[8];
      }

      v119 = v118 + v116;
      if (v118 + v116 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100001210();
      }

      if (v119 <= 0x16)
      {
        memset(v299, 0, sizeof(v299));
        v121 = v299;
        HIBYTE(v299[2]) = v118 + v116;
        if (!v116)
        {
          goto LABEL_242;
        }

LABEL_238:
        if (v115 >= 0)
        {
          v122 = v282;
        }

        else
        {
          v122 = v282[0];
        }

        memmove(v121, v122, v116);
        goto LABEL_242;
      }

      if ((v119 | 7) == 0x17)
      {
        v120 = 25;
      }

      else
      {
        v120 = (v119 | 7) + 1;
      }

      v121 = operator new(v120);
      v299[2] = (v120 | 0x8000000000000000);
      v299[0] = v121;
      v299[1] = (v118 + v116);
      if (v116)
      {
        goto LABEL_238;
      }

LABEL_242:
      if (v118)
      {
        if (v117 >= 0)
        {
          v123 = buf;
        }

        else
        {
          v123 = *buf;
        }

        memmove(&v121[v116], v123, v118);
      }

      v121[v116 + v118] = 0;
      v124.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v124.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *__dst[0].st_qspare = v124;
      *&__dst[0].st_blksize = v124;
      *&__dst[0].st_size = v124;
      __dst[0].st_birthtimespec = v124;
      __dst[0].st_ctimespec = v124;
      __dst[0].st_mtimespec = v124;
      __dst[0].st_atimespec = v124;
      *&__dst[0].st_uid = v124;
      *&__dst[0].st_dev = v124;
      v125 = SHIBYTE(v299[2]) >= 0 ? v299 : v299[0];
      if (!stat(v125, __dst))
      {
        v127 = SHIBYTE(v299[2]) >= 0 ? v299 : v299[0];
        v128 = opendir(v127);
        v129 = v128;
        if (v128)
        {
          break;
        }
      }

      v126 = HIBYTE(v299[2]);
LABEL_252:
      if (v126 < 0)
      {
        operator delete(v299[0]);
        if ((buf[23] & 0x80000000) == 0)
        {
          goto LABEL_220;
        }

LABEL_254:
        operator delete(*buf);
        v113 += 24;
        if (v113 == v112)
        {
          goto LABEL_306;
        }
      }

      else
      {
        if (buf[23] < 0)
        {
          goto LABEL_254;
        }

LABEL_220:
        v113 += 24;
        if (v113 == v112)
        {
          goto LABEL_306;
        }
      }
    }

    v130 = readdir(v128);
    closedir(v129);
    v126 = HIBYTE(v299[2]);
    if (!v130)
    {
      goto LABEL_252;
    }

    if ((HIBYTE(v299[2]) & 0x80) == 0)
    {
      if (HIBYTE(v299[2]) <= 4u)
      {
        goto LABEL_596;
      }

      v131 = &v298 + HIBYTE(v299[2]) + 3;
      if (*v131 == 1885626669 && *(&v298 + HIBYTE(v299[2]) + 7) == 108)
      {
        goto LABEL_296;
      }

      if (*v131 == 1935962413 && v131[4] == 115)
      {
        goto LABEL_296;
      }

      v134 = *v131;
      v135 = v131[4];
      if (v134 == 1634296877 && v135 == 103)
      {
        goto LABEL_296;
      }

      if (HIBYTE(v299[2]) < 9u)
      {
        goto LABEL_596;
      }

      v137 = v299;
      v138 = HIBYTE(v299[2]);
      goto LABEL_291;
    }

    v138 = v299[1];
    if (v299[1] < 5)
    {
      goto LABEL_596;
    }

    v137 = v299[0];
    v139 = v299[0] + v299[1];
    if ((*(v299[0] + v299[1] - 5) != 1885626669 || *(v299[0] + v299[1] - 1) != 108) && (*(v139 - 5) != 1935962413 || *(v139 - 1) != 115))
    {
      v142 = *(v139 - 5);
      v143 = *(v139 - 1);
      if (v142 != 1634296877 || v143 != 103)
      {
        if (v299[1] < 9)
        {
LABEL_596:
          sub_100002158();
        }

LABEL_291:
        v145 = v137 + v138;
        v146 = *(v145 - 9);
        v147 = *(v145 - 1);
        if (v146 == 0x636172742D62622DLL && v147 == 101)
        {
          goto LABEL_296;
        }

        goto LABEL_252;
      }
    }

LABEL_296:
    v149 = buf[23];
    if ((buf[23] & 0x80u) == 0)
    {
      v150 = buf[23];
    }

    else
    {
      v150 = *&buf[8];
    }

    v151 = v150 + 9;
    if (v150 + 9 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100001210();
    }

    if (v151 < 0x17)
    {
      memset(__dst, 0, 24);
      v153 = __dst;
      HIBYTE(__dst[0].st_gid) = v150 + 9;
      if (v150)
      {
        goto LABEL_386;
      }
    }

    else
    {
      if ((v151 | 7) == 0x17)
      {
        v152 = 25;
      }

      else
      {
        v152 = (v151 | 7) + 1;
      }

      v153 = operator new(v152);
      *&__dst[0].st_uid = v152 | 0x8000000000000000;
      *&__dst[0].st_dev = v153;
      __dst[0].st_ino = v150 + 9;
LABEL_386:
      if (v149 >= 0)
      {
        v181 = buf;
      }

      else
      {
        v181 = *buf;
      }

      memmove(v153, v181, v150);
    }

    strcpy(v153 + v150, "/info.txt");
    *v284 = *&__dst[0].st_dev;
    v284[2] = *&__dst[0].st_uid;
    if (v126 < 0)
    {
      operator delete(v299[0]);
      LOBYTE(v149) = buf[23];
    }

    if ((v149 & 0x80) != 0)
    {
      operator delete(*buf);
    }

LABEL_306:
    v154 = v279;
    if (v279)
    {
      v155 = v280;
      v156 = v279;
      if (v280 != v279)
      {
        do
        {
          v157 = *(v155 - 1);
          v155 -= 3;
          if (v157 < 0)
          {
            operator delete(*v155);
          }
        }

        while (v155 != v154);
        v156 = v279;
      }

      v280 = v154;
      operator delete(v156);
    }

    if (SHIBYTE(v283) < 0)
    {
      operator delete(v282[0]);
      v158 = SHIBYTE(v284[2]);
      if (SHIBYTE(v284[2]) >= 0)
      {
        v159 = HIBYTE(v284[2]);
      }

      else
      {
        v159 = v284[1];
      }

      if (!v159)
      {
        goto LABEL_333;
      }

LABEL_319:
      memset(__dst, 170, sizeof(__dst));
      v160 = SHIBYTE(v259);
      if (v259 >= 0)
      {
        v161 = HIBYTE(v259);
      }

      else
      {
        v161 = v258[1];
      }

      v162 = v161 + v159;
      if (v161 + v159 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100001210();
      }

      if (v162 <= 0x16)
      {
        memset(buf, 0, sizeof(buf));
        v164 = buf;
        buf[23] = v161 + v159;
        if (!v161)
        {
          goto LABEL_350;
        }
      }

      else
      {
        if ((v162 | 7) == 0x17)
        {
          v163 = 25;
        }

        else
        {
          v163 = (v162 | 7) + 1;
        }

        v164 = operator new(v163);
        *&buf[8] = v161 + v159;
        *&buf[16] = v163 | 0x8000000000000000;
        *buf = v164;
        if (!v161)
        {
LABEL_350:
          if (v158 >= 0)
          {
            v168 = v284;
          }

          else
          {
            v168 = v284[0];
          }

          memmove(&v164[v161], v168, v159);
          v164[v161 + v159] = 0;
          sub_100001644(__dst, buf);
          if (buf[23] < 0)
          {
            operator delete(*buf);
            if (__dst[0].st_qspare[1])
            {
              goto LABEL_355;
            }
          }

          else if (__dst[0].st_qspare[1])
          {
LABEL_355:
            std::istream::seekg();
            memset(buf, 170, sizeof(buf));
            sub_100001F10(__dst, buf);
            v169 = buf[23];
            v171 = *buf;
            v170 = *&buf[8];
            if ((buf[23] & 0x80u) == 0)
            {
              v172 = buf;
            }

            else
            {
              v172 = *buf;
            }

            if ((buf[23] & 0x80u) == 0)
            {
              v170 = buf[23];
            }

            if (v170 >= 35)
            {
              v173 = &v172[v170];
              v174 = v172;
              do
              {
                v175 = memchr(v174, 98, v170 - 34);
                if (!v175)
                {
                  break;
                }

                if (*v175 == 0x6320676F6C206262 && *(v175 + 1) == 0x6F697463656C6C6FLL && *(v175 + 2) == 0x20726F66202D206ELL && *(v175 + 3) == 0x6E67616964737973 && *(v175 + 27) == 0x65736F6E67616964)
                {
                  if (v175 != v173 && v175 - v172 != -1)
                  {
                    v105 = 1;
                    goto LABEL_398;
                  }

                  break;
                }

                v174 = v175 + 1;
                v170 = v173 - v174;
              }

              while (v173 - v174 >= 35);
            }

            v105 = 0;
LABEL_398:
            if (v169 < 0)
            {
              operator delete(v171);
            }

LABEL_400:
            *&__dst[0].st_dev = v239;
            *(&__dst[0].st_dev + *(v239 - 24)) = v238;
            std::filebuf::~filebuf();
            std::istream::~istream();
            std::ios::~ios();
            if (SHIBYTE(v284[2]) < 0)
            {
              goto LABEL_401;
            }

LABEL_342:
            v106 = v294;
            if (!v294)
            {
              goto LABEL_402;
            }

            goto LABEL_343;
          }

          if ((atomic_load_explicit(&qword_100034688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100034688))
          {
            qword_100034690 = 0;
            qword_100034698 = 0;
            __cxa_guard_release(&qword_100034688);
          }

          if (qword_100034680 == -1)
          {
            v180 = qword_100034698;
            if (!os_log_type_enabled(qword_100034698, OS_LOG_TYPE_ERROR))
            {
LABEL_382:
              v105 = 0;
              goto LABEL_400;
            }
          }

          else
          {
            dispatch_once(&qword_100034680, &stru_100031040);
            v180 = qword_100034698;
            if (!os_log_type_enabled(qword_100034698, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_382;
            }
          }

          v191 = v284;
          if (SHIBYTE(v284[2]) < 0)
          {
            v191 = v284[0];
          }

          *buf = 136315138;
          *&buf[4] = v191;
          _os_log_error_impl(&_mh_execute_header, v180, OS_LOG_TYPE_ERROR, "Failed to open info baseband log info file %s", buf, 0xCu);
          goto LABEL_382;
        }
      }

      if (v160 >= 0)
      {
        v167 = v258;
      }

      else
      {
        v167 = v258[0];
      }

      memmove(v164, v167, v161);
      goto LABEL_350;
    }

    v158 = SHIBYTE(v284[2]);
    if (SHIBYTE(v284[2]) >= 0)
    {
      v159 = HIBYTE(v284[2]);
    }

    else
    {
      v159 = v284[1];
    }

    if (v159)
    {
      goto LABEL_319;
    }

LABEL_333:
    if ((atomic_load_explicit(&qword_100034688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100034688))
    {
      qword_100034690 = 0;
      qword_100034698 = 0;
      __cxa_guard_release(&qword_100034688);
    }

    if (qword_100034680 != -1)
    {
      dispatch_once(&qword_100034680, &stru_100031040);
    }

    v165 = qword_100034698;
    v105 = 0;
    if (!os_log_type_enabled(qword_100034698, OS_LOG_TYPE_DEFAULT))
    {
      if (SHIBYTE(v284[2]) < 0)
      {
        goto LABEL_401;
      }

      goto LABEL_342;
    }

    v166 = v256;
    if (v257 < 0)
    {
      v166 = v256[0];
    }

    __dst[0].st_dev = 136315138;
    *&__dst[0].st_mode = v166;
    _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "No baseband info file found for timestamp %s", __dst, 0xCu);
    v105 = 0;
    if ((SHIBYTE(v284[2]) & 0x80000000) == 0)
    {
      goto LABEL_342;
    }

LABEL_401:
    operator delete(v284[0]);
    v106 = v294;
    if (!v294)
    {
      goto LABEL_402;
    }

LABEL_343:
    if (!atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v106->__on_zero_shared)(v106);
      std::__shared_weak_count::__release_weak(v106);
    }

LABEL_402:
    std::locale::~locale(v293);
    v182 = v295;
    if (v295)
    {
      v183 = v296;
      v184 = v295;
      if (v296 != v295)
      {
        do
        {
          v185 = *(v183 - 1);
          v183 -= 3;
          if (v185 < 0)
          {
            operator delete(*v183);
          }
        }

        while (v183 != v182);
        v184 = v295;
      }

      v296 = v182;
      operator delete(v184);
    }

    if (SHIBYTE(v257) < 0)
    {
      operator delete(v256[0]);
      if (SHIBYTE(v259) < 0)
      {
        goto LABEL_425;
      }

LABEL_412:
      if (v105)
      {
        goto LABEL_413;
      }

LABEL_426:
      v64 = 2;
    }

    else
    {
      if ((SHIBYTE(v259) & 0x80000000) == 0)
      {
        goto LABEL_412;
      }

LABEL_425:
      operator delete(v258[0]);
      if ((v105 & 1) == 0)
      {
        goto LABEL_426;
      }

LABEL_413:
      if ((atomic_load_explicit(&qword_100034688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100034688))
      {
        qword_100034690 = 0;
        qword_100034698 = 0;
        __cxa_guard_release(&qword_100034688);
      }

      if (qword_100034680 == -1)
      {
        v186 = qword_100034698;
        if (os_log_type_enabled(qword_100034698, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_416;
        }
      }

      else
      {
        dispatch_once(&qword_100034680, &stru_100031040);
        v186 = qword_100034698;
        if (os_log_type_enabled(qword_100034698, OS_LOG_TYPE_DEFAULT))
        {
LABEL_416:
          if (*(a6 + 23) >= 0)
          {
            v187 = a6;
          }

          else
          {
            v187 = *a6;
          }

          __dst[0].st_dev = 136315138;
          *&__dst[0].st_mode = v187;
          _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_DEFAULT, "Ignoring dump with timestamp %s for sysdiagnose", __dst, 0xCu);
        }
      }

      if (v261 != a6)
      {
        v188 = *(a6 + 23);
        if (SHIBYTE(v262) < 0)
        {
          if (v188 >= 0)
          {
            v189 = a6;
          }

          else
          {
            v189 = *a6;
          }

          if (v188 >= 0)
          {
            v190 = *(a6 + 23);
          }

          else
          {
            v190 = *(a6 + 8);
          }

          sub_100002558(v261, v189, v190);
        }

        else
        {
          if ((*(a6 + 23) & 0x80) == 0)
          {
            *v261 = *a6;
            v262 = *(a6 + 16);
            goto LABEL_443;
          }

          sub_100002498(v261, *a6, *(a6 + 8));
        }
      }

      if (*(a6 + 23) < 0)
      {
        v64 = 0;
        **a6 = 0;
        *(a6 + 8) = 0;
      }

      else
      {
LABEL_443:
        v64 = 0;
        *a6 = 0;
        *(a6 + 23) = 0;
      }
    }

LABEL_427:
    v27 = 1;
LABEL_428:
    if (v300[0])
    {
      v300[1] = v300[0];
      operator delete(v300[0]);
    }

    v79 = v245;
    if ((HIBYTE(v260[2]) & 0x80) != 0)
    {
LABEL_135:
      operator delete(v260[0]);
      if (v64 != 3)
      {
        goto LABEL_432;
      }

LABEL_57:
      v37 = v79 + 3;
      if (v37 == v243)
      {
        goto LABEL_457;
      }

      continue;
    }

    break;
  }

LABEL_431:
  if (v64 == 3)
  {
    goto LABEL_57;
  }

LABEL_432:
  if (!v64)
  {
    goto LABEL_57;
  }

LABEL_457:
  if ((SHIBYTE(v262) & 0x80000000) == 0)
  {
    goto LABEL_458;
  }

  operator delete(v261[0]);
  if (v240)
  {
LABEL_459:
    if (*(v34 + 23) < 0)
    {
      sub_1000020AC(v254, *v34, *(v34 + 8));
    }

    else
    {
      *v254 = *v34;
      v255 = *(v34 + 16);
    }

    std::locale::locale(&v248, v271);
    v249 = *&v271[8];
    v250 = *&v271[24];
    v251 = *&v271[40];
    v252 = v272;
    if (v272)
    {
      atomic_fetch_add_explicit((v272 + 8), 1uLL, memory_order_relaxed);
    }

    v253 = *(&v272 + 1);
    *&v192 = 0xAAAAAAAAAAAAAAAALL;
    *(&v192 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v304 = 0xAAAAAAAAAAAAAA00;
    v301[3] = 0xAAAAAAAAAAAAAAAALL;
    v307 = v192;
    v302 = 0;
    v303 = 0;
    v306 = 0;
    v305 = 0;
    LOBYTE(v307) = 0;
    BYTE8(v307) = 0;
    v308 = 0;
    *v300 = 0u;
    memset(v301, 0, 25);
    if (v255 >= 0)
    {
      v193 = v254;
    }

    else
    {
      v193 = v254[0];
    }

    if (v255 >= 0)
    {
      v194 = HIBYTE(v255);
    }

    else
    {
      v194 = v254[1];
    }

    __dst[0].st_ctimespec = 0xAAAAAAAAAAAAAA00;
    __dst[0].st_atimespec.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&__dst[0].st_birthtimespec.tv_nsec = v192;
    __dst[0].st_mtimespec = 0uLL;
    __dst[0].st_birthtimespec.tv_sec = 0;
    LOBYTE(__dst[0].st_birthtimespec.tv_nsec) = 0;
    LOBYTE(__dst[0].st_size) = 0;
    __dst[0].st_blocks = 0;
    memset(__dst, 0, 41);
    v195 = sub_10000C4AC(&v248, v193, v194 + v193, __dst, 4160);
    sub_10000C7B8(v300, v193, v194 + v193, &__dst[0].st_dev, 0);
    if (*&__dst[0].st_dev)
    {
      __dst[0].st_ino = *&__dst[0].st_dev;
      operator delete(*&__dst[0].st_dev);
    }

    if (!v195 || (v307 & 1) != 0)
    {
      v196 = 0;
      v197 = v300[0];
      if (v300[0])
      {
LABEL_475:
        v300[1] = v197;
        operator delete(v197);
      }

LABEL_476:
      v198 = v252;
      if (v252 && !atomic_fetch_add(&v252->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v198->__on_zero_shared)(v198);
        std::__shared_weak_count::__release_weak(v198);
        std::locale::~locale(&v248);
        if ((SHIBYTE(v255) & 0x80000000) == 0)
        {
LABEL_479:
          if (!v196)
          {
            goto LABEL_491;
          }

LABEL_487:
          if (*(v34 + 23) < 0)
          {
            **v34 = 0;
            *(v34 + 8) = 0;
          }

          else
          {
            *v34 = 0;
            *(v34 + 23) = 0;
          }

          goto LABEL_491;
        }
      }

      else
      {
        std::locale::~locale(&v248);
        if ((SHIBYTE(v255) & 0x80000000) == 0)
        {
          goto LABEL_479;
        }
      }

      operator delete(v254[0]);
      if (!v196)
      {
        goto LABEL_491;
      }

      goto LABEL_487;
    }

    memset(__dst, 0, 56);
    v199 = v300[0];
    if (*(v300[0] + 40) == 1)
    {
      v201 = *(v300[0] + 3);
      v200 = *(v300[0] + 4);
      v202 = v200 - v201;
      if ((v200 - v201) > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100001210();
      }

      if (v202 > 0x16)
      {
        if ((v202 | 7) == 0x17)
        {
          v210 = 25;
        }

        else
        {
          v210 = (v202 | 7) + 1;
        }

        v203 = operator new(v210);
        *&v293[16] = v210 | 0x8000000000000000;
        *v293 = v203;
        *&v293[8] = v200 - v201;
      }

      else
      {
        v293[23] = v200 - v201;
        v203 = v293;
      }

      if (v200 != v201)
      {
        memmove(v203, v201, v200 - v201);
      }

      v203[v202] = 0;
    }

    else
    {
      memset(v293, 0, 24);
    }

    sub_100012E6C(v293, &__dst[0].st_gid);
    if ((v293[23] & 0x80000000) != 0)
    {
      operator delete(*v293);
      __dst[0].st_gid -= 1900;
      if (v199[64] == 1)
      {
        goto LABEL_521;
      }
    }

    else
    {
      __dst[0].st_gid -= 1900;
      if (v199[64] == 1)
      {
LABEL_521:
        v212 = *(v199 + 6);
        v211 = *(v199 + 7);
        v213 = v211 - v212;
        if ((v211 - v212) > 0x7FFFFFFFFFFFFFF7)
        {
          sub_100001210();
        }

        if (v213 > 0x16)
        {
          if ((v213 | 7) == 0x17)
          {
            v215 = 25;
          }

          else
          {
            v215 = (v213 | 7) + 1;
          }

          v214 = operator new(v215);
          *&v293[16] = v215 | 0x8000000000000000;
          *v293 = v214;
          *&v293[8] = v211 - v212;
        }

        else
        {
          v293[23] = v211 - v212;
          v214 = v293;
        }

        if (v211 != v212)
        {
          memmove(v214, v212, v211 - v212);
        }

        v214[v213] = 0;
LABEL_533:
        sub_100012E6C(v293, &__dst[0].st_uid);
        if ((v293[23] & 0x80000000) != 0)
        {
          operator delete(*v293);
          --__dst[0].st_uid;
          if (v199[88] == 1)
          {
            goto LABEL_535;
          }
        }

        else
        {
          --__dst[0].st_uid;
          if (v199[88] == 1)
          {
LABEL_535:
            v217 = *(v199 + 9);
            v216 = *(v199 + 10);
            v218 = v216 - v217;
            if ((v216 - v217) > 0x7FFFFFFFFFFFFFF7)
            {
              sub_100001210();
            }

            if (v218 > 0x16)
            {
              if ((v218 | 7) == 0x17)
              {
                v220 = 25;
              }

              else
              {
                v220 = (v218 | 7) + 1;
              }

              v219 = operator new(v220);
              *&v293[16] = v220 | 0x8000000000000000;
              *v293 = v219;
              *&v293[8] = v216 - v217;
            }

            else
            {
              v293[23] = v216 - v217;
              v219 = v293;
            }

            if (v216 != v217)
            {
              memmove(v219, v217, v216 - v217);
            }

            v219[v218] = 0;
LABEL_547:
            sub_100012E6C(v293, (__dst | 0xC));
            if ((v293[23] & 0x80000000) != 0)
            {
              operator delete(*v293);
              if (v199[112] == 1)
              {
                goto LABEL_549;
              }
            }

            else if (v199[112] == 1)
            {
LABEL_549:
              v222 = *(v199 + 12);
              v221 = *(v199 + 13);
              v223 = v221 - v222;
              if ((v221 - v222) > 0x7FFFFFFFFFFFFFF7)
              {
                sub_100001210();
              }

              if (v223 > 0x16)
              {
                if ((v223 | 7) == 0x17)
                {
                  v225 = 25;
                }

                else
                {
                  v225 = (v223 | 7) + 1;
                }

                v224 = operator new(v225);
                *&v293[16] = v225 | 0x8000000000000000;
                *v293 = v224;
                *&v293[8] = v221 - v222;
              }

              else
              {
                v293[23] = v221 - v222;
                v224 = v293;
              }

              if (v221 != v222)
              {
                memmove(v224, v222, v221 - v222);
              }

              v224[v223] = 0;
LABEL_561:
              sub_100012E6C(v293, &__dst[0].st_ino);
              if ((v293[23] & 0x80000000) != 0)
              {
                operator delete(*v293);
                if (v199[136] == 1)
                {
                  goto LABEL_563;
                }
              }

              else if (v199[136] == 1)
              {
LABEL_563:
                v227 = *(v199 + 15);
                v226 = *(v199 + 16);
                v228 = v226 - v227;
                if ((v226 - v227) > 0x7FFFFFFFFFFFFFF7)
                {
                  sub_100001210();
                }

                if (v228 > 0x16)
                {
                  if ((v228 | 7) == 0x17)
                  {
                    v230 = 25;
                  }

                  else
                  {
                    v230 = (v228 | 7) + 1;
                  }

                  v229 = operator new(v230);
                  *&v293[16] = v230 | 0x8000000000000000;
                  *v293 = v229;
                  *&v293[8] = v226 - v227;
                }

                else
                {
                  v293[23] = v226 - v227;
                  v229 = v293;
                }

                if (v226 != v227)
                {
                  memmove(v229, v227, v226 - v227);
                }

                v229[v228] = 0;
LABEL_575:
                sub_100012E6C(v293, &__dst[0].st_mode);
                if ((v293[23] & 0x80000000) != 0)
                {
                  operator delete(*v293);
                  if (v199[160] == 1)
                  {
                    goto LABEL_577;
                  }
                }

                else if (v199[160] == 1)
                {
LABEL_577:
                  v232 = *(v199 + 18);
                  v231 = *(v199 + 19);
                  v233 = v231 - v232;
                  if ((v231 - v232) > 0x7FFFFFFFFFFFFFF7)
                  {
                    sub_100001210();
                  }

                  if (v233 > 0x16)
                  {
                    if ((v233 | 7) == 0x17)
                    {
                      v235 = 25;
                    }

                    else
                    {
                      v235 = (v233 | 7) + 1;
                    }

                    v234 = operator new(v235);
                    *&v293[16] = v235 | 0x8000000000000000;
                    *v293 = v234;
                    *&v293[8] = v231 - v232;
                  }

                  else
                  {
                    v293[23] = v231 - v232;
                    v234 = v293;
                  }

                  if (v231 != v232)
                  {
                    memmove(v234, v232, v231 - v232);
                  }

                  v234[v233] = 0;
LABEL_589:
                  sub_100012E6C(v293, __dst);
                  if ((v293[23] & 0x80000000) != 0)
                  {
                    operator delete(*v293);
                  }

                  LODWORD(__dst[0].st_atimespec.tv_sec) = -1;
                  v236 = mktime(__dst);
                  memset(v293, 170, 16);
                  Timestamp::now(v293, v237);
                  v196 = *v293 - v236 > v240;
                  v197 = v300[0];
                  if (v300[0])
                  {
                    goto LABEL_475;
                  }

                  goto LABEL_476;
                }

                memset(v293, 0, 24);
                goto LABEL_589;
              }

              memset(v293, 0, 24);
              goto LABEL_575;
            }

            memset(v293, 0, 24);
            goto LABEL_561;
          }
        }

        memset(v293, 0, 24);
        goto LABEL_547;
      }
    }

    memset(v293, 0, 24);
    goto LABEL_533;
  }

LABEL_491:
  v204 = v272;
  if (v272 && !atomic_fetch_add((v272 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v204->__on_zero_shared)(v204);
    std::__shared_weak_count::__release_weak(v204);
    std::locale::~locale(v271);
    v205 = v274;
    if (!v274)
    {
      goto LABEL_495;
    }

LABEL_494:
    if (atomic_fetch_add(&v205->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_495;
    }

    (v205->__on_zero_shared)(v205);
    std::__shared_weak_count::__release_weak(v205);
    std::locale::~locale(v273);
    if (SHIBYTE(v275[2]) < 0)
    {
LABEL_496:
      operator delete(v275[0]);
    }
  }

  else
  {
    std::locale::~locale(v271);
    v205 = v274;
    if (v274)
    {
      goto LABEL_494;
    }

LABEL_495:
    std::locale::~locale(v273);
    if (SHIBYTE(v275[2]) < 0)
    {
      goto LABEL_496;
    }
  }

  v206 = v276;
  if (v276)
  {
    v207 = v277;
    v208 = v276;
    if (v277 != v276)
    {
      do
      {
        v209 = *(v207 - 1);
        v207 -= 3;
        if (v209 < 0)
        {
          operator delete(*v207);
        }
      }

      while (v207 != v206);
      v208 = v276;
    }

    v277 = v206;
    operator delete(v208);
  }
}

void sub_1000152BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x38F]) < 0)
  {
    operator delete(STACK[0x378]);
  }

  if (*(v73 - 105) < 0)
  {
    operator delete(*(v73 - 128));
  }

  sub_1000015D0(&STACK[0x258]);
  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  sub_100001820(&STACK[0x310]);
  sub_1000015D0(&STACK[0x358]);
  if (a42 < 0)
  {
    operator delete(__p);
    if ((a48 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((a48 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(a43);
LABEL_13:
  v75 = STACK[0x390];
  if (STACK[0x390])
  {
    STACK[0x398] = v75;
    operator delete(v75);
    if (a54 < 0)
    {
LABEL_15:
      operator delete(a49);
      if ((a61 & 0x80000000) == 0)
      {
LABEL_20:
        sub_100001820(&a72);
        sub_100001820(&a73);
        if (SLOBYTE(STACK[0x237]) < 0)
        {
          operator delete(STACK[0x220]);
        }

        sub_1000015D0(&STACK[0x240]);
        if (*(a21 + 23) < 0)
        {
          operator delete(*a21);
        }

        _Unwind_Resume(a1);
      }

LABEL_19:
      operator delete(a56);
      goto LABEL_20;
    }
  }

  else if (a54 < 0)
  {
    goto LABEL_15;
  }

  if ((a61 & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  goto LABEL_19;
}

void sub_10001564C(id a1)
{
  ctu::OsLogContext::OsLogContext(v1, "com.apple.telephony.abm", "util");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v1);
}

const void **sub_100015698(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1000156CC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_100015700(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100015734(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_100015794(void ****a1)
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
          v6 = *(v4 - 1);
          v4 -= 3;
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

uint64_t sub_100015818(void *a1)
{
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

__n128 sub_1000158E4(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v33 = (a2 - 3);
        v34 = *(a2 - 1);
        if (v34 >= 0)
        {
          v35 = a2 - 3;
        }

        else
        {
          v35 = *(a2 - 3);
        }

        if (v34 >= 0)
        {
          v36 = *(a2 - 1);
        }

        else
        {
          v36 = *(a2 - 2);
        }

        v37 = *(a1 + 23);
        v38 = *a1;
        v39 = *(a1 + 8);
        if (v37 >= 0)
        {
          v40 = a1;
        }

        else
        {
          v40 = *a1;
        }

        if (v37 >= 0)
        {
          v41 = *(a1 + 23);
        }

        else
        {
          v41 = *(a1 + 8);
        }

        if (v41 >= v36)
        {
          v42 = v36;
        }

        else
        {
          v42 = v41;
        }

        v43 = memcmp(v35, v40, v42);
        if (v43)
        {
          if (v43 < 0)
          {
            return result;
          }
        }

        else if (v36 <= v41)
        {
          return result;
        }

        v49 = *(a1 + 16);
        v50 = *(a2 - 1);
        result = *v33;
        *a1 = *v33;
        *(a1 + 16) = v50;
        *(a2 - 3) = v38;
        *(a2 - 2) = v39;
        *(a2 - 1) = v49;
        return result;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      result.n128_u64[0] = sub_100015FC4(a1, a1 + 24, a1 + 48, a2 - 3).n128_u64[0];
      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = sub_100016168(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 3).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v12 <= 575)
    {
      if (a5)
      {

        sub_100016370(a1, a2);
      }

      else
      {

        sub_100016534(a1, a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (a1 != a2)
      {
        v44 = (v13 - 2) >> 1;
        v45 = v44 + 1;
        v46 = (a1 + 24 * v44);
        do
        {
          sub_100016F5C(a1, a3, 0xAAAAAAAAAAAAAAABLL * (v12 >> 3), v46);
          v46 = (v46 - 24);
          --v45;
        }

        while (v45);
        v47 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        do
        {
          sub_100017234(a1, a2, a3, v47);
          a2 -= 3;
        }

        while (v47-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = a1 + 24 * (v13 >> 1);
    if (v12 < 0xC01)
    {
      sub_100015D88(v15, a1, a2 - 3);
      if (a5)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_100015D88(a1, v15, a2 - 3);
      v16 = 24 * v14;
      v17 = 24 * v14 + a1 - 24;
      sub_100015D88(a1 + 24, v17, a2 - 6);
      sub_100015D88(a1 + 48, a1 + 24 + v16, a2 - 9);
      sub_100015D88(v17, v15, (a1 + 24 + v16));
      v18 = *a1;
      v19 = *(a1 + 8);
      v20 = *v15;
      *(a1 + 16) = *(v15 + 16);
      *a1 = v20;
      *v15 = v18;
      *(v15 + 8) = v19;
      if (a5)
      {
        goto LABEL_35;
      }
    }

    v21 = *(a1 - 1);
    if (v21 >= 0)
    {
      v22 = (a1 - 24);
    }

    else
    {
      v22 = *(a1 - 24);
    }

    if (v21 >= 0)
    {
      v23 = *(a1 - 1);
    }

    else
    {
      v23 = *(a1 - 16);
    }

    v24 = *(a1 + 23);
    if (v24 >= 0)
    {
      v25 = a1;
    }

    else
    {
      v25 = *a1;
    }

    if (v24 >= 0)
    {
      v26 = *(a1 + 23);
    }

    else
    {
      v26 = *(a1 + 8);
    }

    if (v26 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v26;
    }

    v28 = memcmp(v22, v25, v27);
    if (v28)
    {
      if (v28 < 0)
      {
        goto LABEL_39;
      }
    }

    else if (v23 <= v26)
    {
LABEL_39:
      v9 = sub_1000166A4(a1, a2);
      goto LABEL_40;
    }

LABEL_35:
    v29 = sub_100016988(a1, a2);
    if ((v30 & 1) == 0)
    {
      goto LABEL_38;
    }

    v31 = sub_100016C58(a1, v29);
    v9 = (v29 + 3);
    if (sub_100016C58((v29 + 3), a2))
    {
      a4 = -v11;
      a2 = v29;
      if (v31)
      {
        return result;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v31)
    {
LABEL_38:
      sub_1000158E4(a1, v29, a3, -v11, a5 & 1);
      v9 = (v29 + 3);
LABEL_40:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  sub_100015D88(a1, a1 + 24, a2 - 3);
  return result;
}

uint64_t sub_100015D88(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = *(a2 + 23);
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v6 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = *(a1 + 23);
  v13 = *a1;
  v12 = *(a1 + 8);
  if (v11 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if (v11 >= 0)
  {
    v15 = *(a1 + 23);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_31:
    v25 = *(a3 + 23);
    if (v25 >= 0)
    {
      v26 = a3;
    }

    else
    {
      v26 = *a3;
    }

    if (v25 >= 0)
    {
      v27 = *(a3 + 23);
    }

    else
    {
      v27 = a3[1];
    }

    if (v10 >= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v10;
    }

    v29 = memcmp(v26, v9, v28);
    if (v29)
    {
      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v27 > v10)
    {
LABEL_42:
      v30 = *(a2 + 16);
      v31 = a3[2];
      *a2 = *a3;
      *(a2 + 16) = v31;
      *a3 = v7;
      a3[1] = v8;
      a3[2] = v30;
      v32 = *(a2 + 23);
      if (v32 >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      if (v32 >= 0)
      {
        v34 = *(a2 + 23);
      }

      else
      {
        v34 = *(a2 + 8);
      }

      v35 = *(a1 + 23);
      v36 = *a1;
      v37 = *(a1 + 8);
      if (v35 >= 0)
      {
        v38 = a1;
      }

      else
      {
        v38 = *a1;
      }

      if (v35 >= 0)
      {
        v39 = *(a1 + 23);
      }

      else
      {
        v39 = *(a1 + 8);
      }

      if (v39 >= v34)
      {
        v40 = v34;
      }

      else
      {
        v40 = v39;
      }

      v41 = memcmp(v33, v38, v40);
      if (v41)
      {
        if (v41 < 0)
        {
          return 1;
        }
      }

      else if (v34 <= v39)
      {
        return 1;
      }

      v52 = *(a1 + 16);
      v53 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v53;
      *a2 = v36;
      *(a2 + 8) = v37;
      *(a2 + 16) = v52;
      return 1;
    }

    return 0;
  }

  if (v10 <= v15)
  {
    goto LABEL_31;
  }

LABEL_18:
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = a3[1];
  }

  if (v10 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v10;
  }

  v22 = memcmp(v19, v9, v21);
  if (!v22)
  {
    if (v20 > v10)
    {
      goto LABEL_29;
    }

LABEL_61:
    v42 = *(a1 + 16);
    v43 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v43;
    *a2 = v13;
    *(a2 + 8) = v12;
    *(a2 + 16) = v42;
    v44 = *(a3 + 23);
    if (v44 >= 0)
    {
      v45 = a3;
    }

    else
    {
      v45 = *a3;
    }

    if (v44 >= 0)
    {
      v46 = *(a3 + 23);
    }

    else
    {
      v46 = a3[1];
    }

    if (v42 >= 0)
    {
      v47 = a2;
    }

    else
    {
      v47 = v13;
    }

    if (v42 >= 0)
    {
      v48 = HIBYTE(v42);
    }

    else
    {
      v48 = v12;
    }

    if (v48 >= v46)
    {
      v49 = v46;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v45, v47, v49);
    if (v50)
    {
      if (v50 < 0)
      {
        return 1;
      }
    }

    else if (v46 <= v48)
    {
      return 1;
    }

    v54 = *a3;
    *(a2 + 16) = a3[2];
    *a2 = v54;
    *a3 = v13;
    a3[1] = v12;
    a3[2] = v42;
    return 1;
  }

  if (v22 < 0)
  {
    goto LABEL_61;
  }

LABEL_29:
  v23 = *(a1 + 16);
  v24 = a3[2];
  *a1 = *a3;
  *(a1 + 16) = v24;
  *a3 = v13;
  a3[1] = v12;
  a3[2] = v23;
  return 1;
}

__n128 sub_100015FC4(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  sub_100015D88(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  v12 = *a3;
  v13 = *(a3 + 8);
  if (v11 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v11 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if (v17 < 0)
    {
      return result;
    }
  }

  else if (v10 <= v15)
  {
    return result;
  }

  v19 = *(a3 + 16);
  v20 = a4[2];
  *a3 = *a4;
  *(a3 + 16) = v20;
  *a4 = v12;
  a4[1] = v13;
  a4[2] = v19;
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 8);
  }

  v24 = *(a2 + 23);
  v25 = *a2;
  v26 = *(a2 + 8);
  if (v24 >= 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = *a2;
  }

  if (v24 >= 0)
  {
    v28 = *(a2 + 23);
  }

  else
  {
    v28 = *(a2 + 8);
  }

  if (v28 >= v23)
  {
    v29 = v23;
  }

  else
  {
    v29 = v28;
  }

  v30 = memcmp(v22, v27, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v23 <= v28)
  {
    return result;
  }

  v31 = *(a2 + 16);
  v32 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v32;
  *a3 = v25;
  *(a3 + 8) = v26;
  *(a3 + 16) = v31;
  v33 = *(a2 + 23);
  if (v33 >= 0)
  {
    v34 = a2;
  }

  else
  {
    v34 = *a2;
  }

  if (v33 >= 0)
  {
    v35 = *(a2 + 23);
  }

  else
  {
    v35 = *(a2 + 8);
  }

  v36 = *(a1 + 23);
  v37 = *a1;
  v38 = *(a1 + 8);
  if (v36 >= 0)
  {
    v39 = a1;
  }

  else
  {
    v39 = *a1;
  }

  if (v36 >= 0)
  {
    v40 = *(a1 + 23);
  }

  else
  {
    v40 = *(a1 + 8);
  }

  if (v40 >= v35)
  {
    v41 = v35;
  }

  else
  {
    v41 = v40;
  }

  v42 = memcmp(v34, v39, v41);
  if (!v42)
  {
    if (v35 <= v40)
    {
      return result;
    }

LABEL_58:
    v43 = *(a1 + 16);
    v44 = *(a2 + 16);
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = v44;
    *a2 = v37;
    *(a2 + 8) = v38;
    *(a2 + 16) = v43;
    return result;
  }

  if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  return result;
}

__n128 sub_100016168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  sub_100015FC4(a1, a2, a3, a4);
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

  v13 = *(a4 + 23);
  v14 = *a4;
  v15 = *(a4 + 8);
  if (v13 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  if (v13 >= 0)
  {
    v17 = *(a4 + 23);
  }

  else
  {
    v17 = *(a4 + 8);
  }

  if (v17 >= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  v19 = memcmp(v11, v16, v18);
  if (v19)
  {
    if (v19 < 0)
    {
      return result;
    }
  }

  else if (v12 <= v17)
  {
    return result;
  }

  v21 = *(a4 + 16);
  v22 = a5[2];
  *a4 = *a5;
  *(a4 + 16) = v22;
  *a5 = v14;
  a5[1] = v15;
  a5[2] = v21;
  v23 = *(a4 + 23);
  if (v23 >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = *a4;
  }

  if (v23 >= 0)
  {
    v25 = *(a4 + 23);
  }

  else
  {
    v25 = *(a4 + 8);
  }

  v26 = *(a3 + 23);
  v27 = *a3;
  v28 = *(a3 + 8);
  if (v26 >= 0)
  {
    v29 = a3;
  }

  else
  {
    v29 = *a3;
  }

  if (v26 >= 0)
  {
    v30 = *(a3 + 23);
  }

  else
  {
    v30 = *(a3 + 8);
  }

  if (v30 >= v25)
  {
    v31 = v25;
  }

  else
  {
    v31 = v30;
  }

  v32 = memcmp(v24, v29, v31);
  if (v32)
  {
    if (v32 < 0)
    {
      return result;
    }
  }

  else if (v25 <= v30)
  {
    return result;
  }

  v33 = *(a3 + 16);
  v34 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v34;
  *a4 = v27;
  *(a4 + 8) = v28;
  *(a4 + 16) = v33;
  v35 = *(a3 + 23);
  if (v35 >= 0)
  {
    v36 = a3;
  }

  else
  {
    v36 = *a3;
  }

  if (v35 >= 0)
  {
    v37 = *(a3 + 23);
  }

  else
  {
    v37 = *(a3 + 8);
  }

  v38 = *(a2 + 23);
  v39 = *a2;
  v40 = *(a2 + 8);
  if (v38 >= 0)
  {
    v41 = a2;
  }

  else
  {
    v41 = *a2;
  }

  if (v38 >= 0)
  {
    v42 = *(a2 + 23);
  }

  else
  {
    v42 = *(a2 + 8);
  }

  if (v42 >= v37)
  {
    v43 = v37;
  }

  else
  {
    v43 = v42;
  }

  v44 = memcmp(v36, v41, v43);
  if (v44)
  {
    if (v44 < 0)
    {
      return result;
    }
  }

  else if (v37 <= v42)
  {
    return result;
  }

  v45 = *(a2 + 16);
  v46 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v46;
  *a3 = v39;
  *(a3 + 8) = v40;
  *(a3 + 16) = v45;
  v47 = *(a2 + 23);
  if (v47 >= 0)
  {
    v48 = a2;
  }

  else
  {
    v48 = *a2;
  }

  if (v47 >= 0)
  {
    v49 = *(a2 + 23);
  }

  else
  {
    v49 = *(a2 + 8);
  }

  v50 = *(a1 + 23);
  v51 = *a1;
  v52 = *(a1 + 8);
  if (v50 >= 0)
  {
    v53 = a1;
  }

  else
  {
    v53 = *a1;
  }

  if (v50 >= 0)
  {
    v54 = *(a1 + 23);
  }

  else
  {
    v54 = *(a1 + 8);
  }

  if (v54 >= v49)
  {
    v55 = v49;
  }

  else
  {
    v55 = v54;
  }

  v56 = memcmp(v48, v53, v55);
  if (v56)
  {
    if (v56 < 0)
    {
      return result;
    }
  }

  else if (v49 <= v54)
  {
    return result;
  }

  v57 = *(a1 + 16);
  v58 = *(a2 + 16);
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = v58;
  *a2 = v51;
  *(a2 + 8) = v52;
  *(a2 + 16) = v57;
  return result;
}