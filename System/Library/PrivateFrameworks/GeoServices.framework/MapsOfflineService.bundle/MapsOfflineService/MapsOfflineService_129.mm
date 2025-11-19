void sub_8191D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 832) = v4;
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_8191F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_819204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_819218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_81922C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_819240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_819254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3E5388(va);
  _Unwind_Resume(a1);
}

void sub_819268(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_578320((a2 + 1104), a3);
  if (!*(v6 + 1008))
  {
    return;
  }

  v7 = v6;
  v8 = *(a1 + 6560);
  if (v8[1414] == 1)
  {
    v9 = *(v6 + 2264) & (*(v6 + 2275) ^ 1 | v8[1056]);
    if (v8[1454] != 1)
    {
LABEL_9:
      if ((v9 & 1) == 0)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    if (v8[1454] != 1)
    {
      goto LABEL_9;
    }
  }

  if (*(a1 + 2457) != 1)
  {
    goto LABEL_9;
  }

  if (((v9 | *(v6 + 2312)) & 1) == 0)
  {
    return;
  }

LABEL_10:
  sub_8194DC(a1, a2, a3);
  if ((v9 & 1) != 0 && *(v7 + 2274) == 1)
  {
    sub_91E444(a1 + 2608, a2, v7, &v20);
    if (sub_6834F4(&v20))
    {
      DWORD1(v20) = 1;
      v10 = *(a2 + 10328);
      if (v10 >= *(a2 + 10336))
      {
        v14 = sub_820B08((a2 + 10320), &v20);
      }

      else
      {
        v11 = v21;
        *v10 = v20;
        *(v10 + 16) = v11;
        *(v10 + 32) = 0;
        *(v10 + 40) = 0;
        *(v10 + 48) = 0;
        sub_5F3370(v10 + 32, v22, v23, 0xD37A6F4DE9BD37A7 * ((v23 - v22) >> 3));
        v12 = v24;
        v13 = v25[0];
        *(v10 + 81) = *(v25 + 9);
        *(v10 + 72) = v13;
        *(v10 + 56) = v12;
        v14 = v10 + 104;
        *(a2 + 10328) = v10 + 104;
      }

      *(a2 + 10328) = v14;
      v15 = v21;
      *(v7 + 2088) = v20;
      *(v7 + 2104) = v15;
      if ((v7 + 2088) != &v20)
      {
        sub_5FD2CC((v7 + 2120), v22, v23, 0xD37A6F4DE9BD37A7 * ((v23 - v22) >> 3));
      }

      *(v7 + 2144) = v24;
      *(v7 + 2160) = v25[0];
      *(v7 + 2169) = *(v25 + 9);
    }

    v26 = &v22;
    sub_5ECC44(&v26);
  }

  v16 = *(a2 + 10320);
  v17 = *(a2 + 10328);
  v18 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * (&v17[-v16] >> 3));
  if (v17 == v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  sub_82F498(v16, v17, &v20, v19, 1);
}

void sub_8194B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v13 + 10328) = v14;
  *(v15 - 56) = &a13;
  sub_5ECC44((v15 - 56));
  _Unwind_Resume(a1);
}

void sub_8194DC(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a2;
  v6 = sub_578320(a2 + 138, a3);
  if (*(v6 + 384) == 5)
  {
    v7 = v6;
    sub_819AC0(a1, v4, a3, v53);
    v8 = v53[1];
    v9 = v53[0];
    if (v53[0] == v53[1])
    {
LABEL_74:
      *&v46 = v53;
      sub_5ECC44(&v46);
      return;
    }

    v52[0] = v4;
    v52[1] = a1;
    *&v43 = v52;
    if (v53[1] - v53[0] < 1)
    {
      v14 = 0;
      v10 = 0;
    }

    else
    {
      v10 = 0xD37A6F4DE9BD37A7 * ((v53[1] - v53[0]) >> 3);
      while (1)
      {
        v11 = operator new(184 * v10, &std::nothrow);
        if (v11)
        {
          break;
        }

        v12 = v10 >> 1;
        v13 = v10 > 1;
        v10 >>= 1;
        if (!v13)
        {
          v14 = 0;
          v10 = v12;
          goto LABEL_10;
        }
      }

      v14 = v11;
    }

LABEL_10:
    sub_830180(v9, v8, &v43, 0xD37A6F4DE9BD37A7 * ((v8 - v9) >> 3), v14, v10);
    if (v14)
    {
      operator delete(v14);
    }

    v15 = v53[1];
    v16 = v53[0];
    if (v53[0] == v53[1] || v53[0] + 184 == v53[1])
    {
      goto LABEL_14;
    }

    while (1)
    {
      if (v16[10] == v16[56] && v16[11] == v16[57] && v16[12] == v16[58])
      {
        v24 = v16[4];
        if (v24 != 4 && v24 == v16[50])
        {
          break;
        }
      }

      v23 = v16 + 92;
      v16 += 46;
      if (v23 == v53[1])
      {
        goto LABEL_14;
      }
    }

    if (v16 == v53[1])
    {
LABEL_14:
      v17 = v53[1];
    }

    else
    {
      v26 = (v16 + 92);
      if (v16 + 92 != v53[1])
      {
        do
        {
          if (v16[10] != *(v26 + 10) || v16[11] != *(v26 + 11) || v16[12] != *(v26 + 12) || ((v27 = v16[4], v27 != 4) ? (v28 = v27 == *(v26 + 4)) : (v28 = 0), !v28))
          {
            v16 += 46;
            sub_826CE0(v16, v26);
          }

          v26 = (v26 + 184);
        }

        while (v26 != v15);
        v15 = v53[1];
      }

      v17 = (v16 + 46);
    }

    sub_827A44(v53, v17, v15);
    v18 = *v53;
    if (v53[1] - v53[0] < 1)
    {
      v22 = 0;
      v19 = 0;
    }

    else
    {
      v19 = 0xD37A6F4DE9BD37A7 * ((v53[1] - v53[0]) >> 3);
      while (1)
      {
        v20 = operator new(184 * v19, &std::nothrow);
        if (v20)
        {
          break;
        }

        v21 = v19 >> 1;
        v13 = v19 > 1;
        v19 >>= 1;
        if (!v13)
        {
          v22 = 0;
          v19 = v21;
          goto LABEL_44;
        }
      }

      v22 = v20;
    }

LABEL_44:
    sub_827B4C(v18, *(&v18 + 1), &v43, 0xD37A6F4DE9BD37A7 * ((*(&v18 + 1) - v18) >> 3), v22, v19);
    if (v22)
    {
      operator delete(v22);
    }

    v29 = sub_67A810(a1 + 40, *(v7 + 2057));
    *&v50[8] = 0;
    v51 = v29;
    *v50 = (1000 * a3);
    LOBYTE(v46) = 1;
    DWORD1(v46) = 0;
    *(&v46 + 1) = -1;
    *&v47 = -1;
    *(&v47 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    v42 = a3;
    *__p = 0u;
    memset(v49, 0, 40);
    *&v49[40] = 0xBFF0000000000000;
    v49[48] = 0;
    v31 = v53[1];
    v30 = v53[0];
    if (v53[0] == v53[1])
    {
LABEL_73:
      sub_91EBEC(a1 + 2608, v42, v4, &v46, v50, (a1 + 6592));
      *&v43 = __p;
      sub_5ECC44(&v43);
      goto LABEL_74;
    }

    while (1)
    {
      v32 = DWORD1(v47) == -1 && DWORD2(v47) == -1;
      v33 = v32 ? 0 : sub_683148(v30, &v47 + 1);
      *&v50[4] = v33;
      if (!sub_683874(&v46, v30, &v51, &v50[4]))
      {
        break;
      }

      if (__p[0] == __p[1])
      {
        v34 = *v30;
LABEL_71:
        DWORD1(v46) = v34;
      }

      sub_6831CC(&v46, v30);
      v30 += 46;
      if (v30 == v31)
      {
        goto LABEL_73;
      }
    }

    sub_91EBEC(a1 + 2608, v42, v4, &v46, v50, (a1 + 6592));
    *&v45[64] = 0;
    *&v43 = 1;
    *(&v44 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    *(&v43 + 1) = -1;
    *&v44 = -1;
    memset(v45, 0, 56);
    *&v45[56] = 0xBFF0000000000000;
    LODWORD(v47) = -1;
    v46 = v43;
    HIDWORD(v47) = 0x7FFFFFFF;
    *(&v47 + 4) = *(&v44 + 4);
    v35 = __p[0];
    if (!__p[0])
    {
      v41 = 0;
      v40 = 0uLL;
      goto LABEL_70;
    }

    v36 = v4;
    v37 = __p[1];
    v38 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_68:
      __p[1] = v35;
      operator delete(v38);
      v40 = *v45;
      v41 = *&v45[16];
      v4 = v36;
LABEL_70:
      *__p = v40;
      *v49 = v41;
      memset(v45, 0, 24);
      *&v49[8] = *&v45[24];
      *&v49[24] = *&v45[40];
      *&v49[33] = *&v45[49];
      v54[0] = v45;
      sub_5ECC44(v54);
      v34 = 0;
      goto LABEL_71;
    }

    while (1)
    {
      if (*(v37 - 9) < 0)
      {
        operator delete(*(v37 - 4));
        if ((*(v37 - 41) & 0x80000000) == 0)
        {
LABEL_62:
          v39 = *(v37 - 20);
          if (v39 == -1)
          {
            goto LABEL_59;
          }

LABEL_66:
          (off_266D410[v39])(v54, v37 - 14);
          goto LABEL_59;
        }
      }

      else if ((*(v37 - 41) & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      operator delete(*(v37 - 8));
      v39 = *(v37 - 20);
      if (v39 != -1)
      {
        goto LABEL_66;
      }

LABEL_59:
      *(v37 - 20) = -1;
      v37 -= 23;
      if (v37 == v35)
      {
        v38 = __p[0];
        goto LABEL_68;
      }
    }
  }
}

void sub_819A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  a13 = a10;
  sub_5ECC44(&a13);
  a27 = (v27 - 128);
  sub_5ECC44(&a27);
  _Unwind_Resume(a1);
}

void sub_819AC0(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = sub_50EA30(a2 + 138, a3);
  v8 = sub_919900(a1 + 2608, v7, 0);
  v86 = v8;
  v87 = WORD2(v8);
  if ((v8 & 0x100) != 0 || (v8 & 0x10000) != 0 || (v8 & 0x1000000) != 0)
  {
    *(a1 + 6600) |= BYTE3(v8);
    *(a1 + 6601) |= BYTE2(v8);
    __p[0] = 0;
    __p[1] = 0;
    v85 = 0;
    v9 = *(v7 + 16);
    v81 = (v7 + 16);
    if (v9 < *(v7 + 40))
    {
LABEL_5:
      *&v82 = __p;
      sub_5ECC44(&v82);
      return;
    }

    v10 = v9;
    v80 = a1;
    while (1)
    {
      v12 = a4[1];
      if (*a4 != v12 && *(v12 - 176) == v10)
      {
        goto LABEL_9;
      }

      if (v10 == *v81)
      {
        if (sub_919660(a1 + 2608, a2, v7))
        {
          sub_91DEE4((a1 + 2608), a2, v81, (v7 + 80), 0, &v86, &v82);
          v13 = __p[0];
          if (!__p[0])
          {
LABEL_65:
            *__p = v82;
            v85 = v83;
            v83 = 0;
            v82 = 0uLL;
            v88 = &v82;
            sub_5ECC44(&v88);
            v31 = __p[0];
            v32 = __p[1];
            if (__p[0] != __p[1])
            {
              v33 = __p[1] - __p[0] - 184;
              v34 = __p[0];
              if (v33 < 0xB8)
              {
                goto LABEL_154;
              }

              v35 = v33 / 0xB8 + 1;
              v34 = __p[0] + 184 * (v35 & 0x3FFFFFFFFFFFFFELL);
              v36 = __p[0];
              v37 = v35 & 0x3FFFFFFFFFFFFFELL;
              do
              {
                *v36 = 2;
                v36[46] = 2;
                v36 += 92;
                v37 -= 2;
              }

              while (v37);
              if (v35 != (v35 & 0x3FFFFFFFFFFFFFELL))
              {
LABEL_154:
                do
                {
                  *v34 = 2;
                  v34 += 184;
                }

                while (v34 != v32);
              }
            }

LABEL_71:
            sub_829604(a4, a4[1], v31, v32, 0xD37A6F4DE9BD37A7 * ((v32 - v31) >> 3));
LABEL_72:
            if (__p[0] != __p[1])
            {
              goto LABEL_9;
            }

            sub_91DA8C((a1 + 2608), a2, a3, *v81, &v86, &v82);
            v38 = __p[0];
            if (!__p[0])
            {
              goto LABEL_86;
            }

            v39 = __p[1];
            v40 = __p[0];
            if (__p[1] == __p[0])
            {
LABEL_85:
              __p[1] = v38;
              operator delete(v40);
              a1 = v80;
LABEL_86:
              *__p = v82;
              v85 = v83;
              v83 = 0;
              v82 = 0uLL;
              v88 = &v82;
              sub_5ECC44(&v88);
              v42 = __p[0];
              v43 = __p[1];
              if (__p[0] != __p[1])
              {
                v44 = __p[1] - __p[0] - 184;
                v45 = __p[0];
                if (v44 < 0xB8)
                {
                  goto LABEL_155;
                }

                v46 = v44 / 0xB8 + 1;
                v45 = __p[0] + 184 * (v46 & 0x3FFFFFFFFFFFFFELL);
                v47 = __p[0];
                v48 = v46 & 0x3FFFFFFFFFFFFFELL;
                do
                {
                  *v47 = 1;
                  v47[46] = 1;
                  v47 += 92;
                  v48 -= 2;
                }

                while (v48);
                if (v46 != (v46 & 0x3FFFFFFFFFFFFFELL))
                {
LABEL_155:
                  do
                  {
                    *v45 = 1;
                    v45 += 46;
                  }

                  while (v45 != v43);
                }
              }

              sub_829604(a4, a4[1], v42, v43, 0xD37A6F4DE9BD37A7 * ((v43 - v42) >> 3));
              if (__p[0] != __p[1])
              {
                goto LABEL_9;
              }

              sub_81A69C(a1, a2, v7, v10, &v82);
              v54 = __p[0];
              if (!__p[0])
              {
                goto LABEL_116;
              }

              v55 = __p[1];
              v56 = __p[0];
              if (__p[1] == __p[0])
              {
LABEL_115:
                __p[1] = v54;
                operator delete(v56);
                a1 = v80;
LABEL_116:
                *__p = v82;
                v85 = v83;
                v83 = 0;
                v82 = 0uLL;
                v88 = &v82;
                sub_5ECC44(&v88);
                v58 = __p[0];
                v59 = __p[1];
                if (__p[0] != __p[1])
                {
                  v60 = __p[1] - __p[0] - 184;
                  v61 = __p[0];
                  if (v60 < 0xB8)
                  {
                    goto LABEL_156;
                  }

                  v62 = v60 / 0xB8 + 1;
                  v61 = __p[0] + 184 * (v62 & 0x3FFFFFFFFFFFFFELL);
                  v63 = __p[0];
                  v64 = v62 & 0x3FFFFFFFFFFFFFELL;
                  do
                  {
                    *v63 = 1;
                    v63[46] = 1;
                    v63 += 92;
                    v64 -= 2;
                  }

                  while (v64);
                  if (v62 != (v62 & 0x3FFFFFFFFFFFFFELL))
                  {
LABEL_156:
                    do
                    {
                      *v61 = 1;
                      v61 += 46;
                    }

                    while (v61 != v59);
                  }
                }

                sub_829604(a4, a4[1], v58, v59, 0xD37A6F4DE9BD37A7 * ((v59 - v58) >> 3));
                if (__p[0] != __p[1])
                {
                  goto LABEL_9;
                }

                sub_81AA00(a1, a2, v7, v10, &v82);
                v65 = __p[0];
                if (!__p[0])
                {
                  goto LABEL_136;
                }

                v66 = __p[1];
                v67 = __p[0];
                if (__p[1] == __p[0])
                {
LABEL_135:
                  __p[1] = v65;
                  operator delete(v67);
                  a1 = v80;
LABEL_136:
                  *__p = v82;
                  v85 = v83;
                  v83 = 0;
                  v82 = 0uLL;
                  v88 = &v82;
                  sub_5ECC44(&v88);
                  v25 = __p[0];
                  v26 = __p[1];
                  if (__p[0] != __p[1])
                  {
                    v69 = __p[1] - __p[0] - 184;
                    v70 = __p[0];
                    if (v69 < 0xB8)
                    {
                      goto LABEL_157;
                    }

                    v71 = v69 / 0xB8 + 1;
                    v70 = __p[0] + 184 * (v71 & 0x3FFFFFFFFFFFFFELL);
                    v72 = __p[0];
                    v73 = v71 & 0x3FFFFFFFFFFFFFELL;
                    do
                    {
                      *v72 = 0;
                      v72[46] = 0;
                      v72 += 92;
                      v73 -= 2;
                    }

                    while (v73);
                    if (v71 != (v71 & 0x3FFFFFFFFFFFFFELL))
                    {
LABEL_157:
                      do
                      {
                        *v70 = 0;
                        v70 += 184;
                      }

                      while (v70 != v26);
                    }
                  }

                  goto LABEL_8;
                }

                while (1)
                {
                  if (*(v66 - 9) < 0)
                  {
                    operator delete(*(v66 - 4));
                    if ((*(v66 - 41) & 0x80000000) == 0)
                    {
LABEL_129:
                      v68 = *(v66 - 20);
                      if (v68 == -1)
                      {
                        goto LABEL_126;
                      }

LABEL_133:
                      (off_266D410[v68])(&v88, v66 - 14);
                      goto LABEL_126;
                    }
                  }

                  else if ((*(v66 - 41) & 0x80000000) == 0)
                  {
                    goto LABEL_129;
                  }

                  operator delete(*(v66 - 8));
                  v68 = *(v66 - 20);
                  if (v68 != -1)
                  {
                    goto LABEL_133;
                  }

LABEL_126:
                  *(v66 - 20) = -1;
                  v66 -= 23;
                  if (v66 == v65)
                  {
                    v67 = __p[0];
                    goto LABEL_135;
                  }
                }
              }

              while (1)
              {
                if (*(v55 - 9) < 0)
                {
                  operator delete(*(v55 - 4));
                  if ((*(v55 - 41) & 0x80000000) == 0)
                  {
LABEL_109:
                    v57 = *(v55 - 20);
                    if (v57 == -1)
                    {
                      goto LABEL_106;
                    }

LABEL_113:
                    (off_266D410[v57])(&v88, v55 - 14);
                    goto LABEL_106;
                  }
                }

                else if ((*(v55 - 41) & 0x80000000) == 0)
                {
                  goto LABEL_109;
                }

                operator delete(*(v55 - 8));
                v57 = *(v55 - 20);
                if (v57 != -1)
                {
                  goto LABEL_113;
                }

LABEL_106:
                *(v55 - 20) = -1;
                v55 -= 23;
                if (v55 == v54)
                {
                  v56 = __p[0];
                  goto LABEL_115;
                }
              }
            }

            while (1)
            {
              if (*(v39 - 9) < 0)
              {
                operator delete(*(v39 - 4));
                if ((*(v39 - 41) & 0x80000000) == 0)
                {
LABEL_79:
                  v41 = *(v39 - 20);
                  if (v41 == -1)
                  {
                    goto LABEL_76;
                  }

LABEL_83:
                  (off_266D410[v41])(&v88, v39 - 14);
                  goto LABEL_76;
                }
              }

              else if ((*(v39 - 41) & 0x80000000) == 0)
              {
                goto LABEL_79;
              }

              operator delete(*(v39 - 8));
              v41 = *(v39 - 20);
              if (v41 != -1)
              {
                goto LABEL_83;
              }

LABEL_76:
              *(v39 - 20) = -1;
              v39 -= 23;
              if (v39 == v38)
              {
                v40 = __p[0];
                goto LABEL_85;
              }
            }
          }

          v14 = __p[1];
          v15 = __p[0];
          if (__p[1] == __p[0])
          {
LABEL_64:
            __p[1] = v13;
            operator delete(v15);
            a1 = v80;
            goto LABEL_65;
          }

          while (1)
          {
            if (*(v14 - 9) < 0)
            {
              operator delete(*(v14 - 4));
              if ((*(v14 - 41) & 0x80000000) == 0)
              {
LABEL_20:
                v16 = *(v14 - 20);
                if (v16 == -1)
                {
                  goto LABEL_17;
                }

LABEL_24:
                (off_266D410[v16])(&v88, v14 - 14);
                goto LABEL_17;
              }
            }

            else if ((*(v14 - 41) & 0x80000000) == 0)
            {
              goto LABEL_20;
            }

            operator delete(*(v14 - 8));
            v16 = *(v14 - 20);
            if (v16 != -1)
            {
              goto LABEL_24;
            }

LABEL_17:
            *(v14 - 20) = -1;
            v14 -= 23;
            if (v14 == v13)
            {
              v15 = __p[0];
              goto LABEL_64;
            }
          }
        }

        if (v10 + 1 >= sub_4D1DC0(a2) || !sub_91C960((a1 + 2608), a2, v7, 0))
        {
          goto LABEL_72;
        }

        sub_91DEE4((a1 + 2608), a2, v81, v81, 1, &v86, &v82);
        v21 = __p[0];
        if (!__p[0])
        {
LABEL_145:
          *__p = v82;
          v85 = v83;
          v83 = 0;
          v82 = 0uLL;
          v88 = &v82;
          sub_5ECC44(&v88);
          v31 = __p[0];
          v32 = __p[1];
          if (__p[0] != __p[1])
          {
            v74 = __p[1] - __p[0] - 184;
            v75 = __p[0];
            if (v74 < 0xB8)
            {
              goto LABEL_158;
            }

            v76 = v74 / 0xB8 + 1;
            v75 = __p[0] + 184 * (v76 & 0x3FFFFFFFFFFFFFELL);
            v77 = __p[0];
            v78 = v76 & 0x3FFFFFFFFFFFFFELL;
            do
            {
              *v77 = 2;
              v77[46] = 2;
              v77 += 92;
              v78 -= 2;
            }

            while (v78);
            if (v76 != (v76 & 0x3FFFFFFFFFFFFFELL))
            {
LABEL_158:
              do
              {
                *v75 = 2;
                v75 += 184;
              }

              while (v75 != v32);
            }
          }

          goto LABEL_71;
        }

        v22 = __p[1];
        v23 = __p[0];
        if (__p[1] == __p[0])
        {
LABEL_144:
          __p[1] = v21;
          operator delete(v23);
          a1 = v80;
          goto LABEL_145;
        }

        while (1)
        {
          if (*(v22 - 9) < 0)
          {
            operator delete(*(v22 - 4));
            if ((*(v22 - 41) & 0x80000000) == 0)
            {
LABEL_44:
              v24 = *(v22 - 20);
              if (v24 == -1)
              {
                goto LABEL_41;
              }

LABEL_48:
              (off_266D410[v24])(&v88, v22 - 14);
              goto LABEL_41;
            }
          }

          else if ((*(v22 - 41) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          operator delete(*(v22 - 8));
          v24 = *(v22 - 20);
          if (v24 != -1)
          {
            goto LABEL_48;
          }

LABEL_41:
          *(v22 - 20) = -1;
          v22 -= 23;
          if (v22 == v21)
          {
            v23 = __p[0];
            goto LABEL_144;
          }
        }
      }

      sub_81A69C(a1, a2, v7, v10, &v82);
      v17 = __p[0];
      if (__p[0])
      {
        break;
      }

LABEL_51:
      *__p = v82;
      v85 = v83;
      v83 = 0;
      v82 = 0uLL;
      v88 = &v82;
      sub_5ECC44(&v88);
      v25 = __p[0];
      v26 = __p[1];
      if (__p[0] != __p[1])
      {
LABEL_97:
        v49 = v26 - v25 - 184;
        v50 = v25;
        if (v49 < 0xB8)
        {
          goto LABEL_159;
        }

        v51 = v49 / 0xB8 + 1;
        v50 = &v25[184 * (v51 & 0x3FFFFFFFFFFFFFELL)];
        v52 = v25;
        v53 = v51 & 0x3FFFFFFFFFFFFFELL;
        do
        {
          *v52 = 0;
          *(v52 + 46) = 0;
          v52 += 368;
          v53 -= 2;
        }

        while (v53);
        if (v51 != (v51 & 0x3FFFFFFFFFFFFFELL))
        {
LABEL_159:
          do
          {
            *v50 = 0;
            v50 += 184;
          }

          while (v50 != v26);
        }

        goto LABEL_8;
      }

      sub_81AA00(a1, a2, v7, v10, &v82);
      v27 = __p[0];
      if (__p[0])
      {
        v28 = __p[1];
        v29 = __p[0];
        if (__p[1] == __p[0])
        {
LABEL_95:
          __p[1] = v27;
          operator delete(v29);
          a1 = v80;
          goto LABEL_96;
        }

        while (1)
        {
          if (*(v28 - 9) < 0)
          {
            operator delete(*(v28 - 4));
            if ((*(v28 - 41) & 0x80000000) == 0)
            {
LABEL_58:
              v30 = *(v28 - 20);
              if (v30 == -1)
              {
                goto LABEL_55;
              }

LABEL_62:
              (off_266D410[v30])(&v88, v28 - 14);
              goto LABEL_55;
            }
          }

          else if ((*(v28 - 41) & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

          operator delete(*(v28 - 8));
          v30 = *(v28 - 20);
          if (v30 != -1)
          {
            goto LABEL_62;
          }

LABEL_55:
          *(v28 - 20) = -1;
          v28 -= 23;
          if (v28 == v27)
          {
            v29 = __p[0];
            goto LABEL_95;
          }
        }
      }

LABEL_96:
      *__p = v82;
      v85 = v83;
      v83 = 0;
      v82 = 0uLL;
      v88 = &v82;
      sub_5ECC44(&v88);
      v25 = __p[0];
      v26 = __p[1];
      if (__p[0] != __p[1])
      {
        goto LABEL_97;
      }

LABEL_8:
      sub_829604(a4, a4[1], v25, v26, 0xD37A6F4DE9BD37A7 * ((v26 - v25) >> 3));
LABEL_9:
      if (v10-- <= *(v7 + 40))
      {
        goto LABEL_5;
      }
    }

    v18 = __p[1];
    v19 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_50:
      __p[1] = v17;
      operator delete(v19);
      a1 = v80;
      goto LABEL_51;
    }

    while (1)
    {
      if (*(v18 - 9) < 0)
      {
        operator delete(*(v18 - 4));
        if ((*(v18 - 41) & 0x80000000) == 0)
        {
LABEL_31:
          v20 = *(v18 - 20);
          if (v20 == -1)
          {
            goto LABEL_28;
          }

LABEL_35:
          (off_266D410[v20])(&v88, v18 - 14);
          goto LABEL_28;
        }
      }

      else if ((*(v18 - 41) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      operator delete(*(v18 - 8));
      v20 = *(v18 - 20);
      if (v20 != -1)
      {
        goto LABEL_35;
      }

LABEL_28:
      *(v18 - 20) = -1;
      v18 -= 23;
      if (v18 == v17)
      {
        v19 = __p[0];
        goto LABEL_50;
      }
    }
  }
}

void sub_81A620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(v6, va1);
  sub_5ECC44(va);
  sub_5ECC44(va1);
  _Unwind_Resume(a1);
}

void sub_81A69C(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v10 = sub_919900(a1 + 2608, a3, 0);
  v40 = v10;
  v41 = WORD2(v10);
  v11 = sub_4D1F50(a2, a4);
  v12 = *(a1 + 16);
  v13 = *(v11 + 32);
  v14 = sub_2B51D8(v12, v13 & 0xFFFFFFFFFFFFLL);
  if (*(v12 + 7772) == 1)
  {
    v15 = sub_30C50C(v12 + 3896, v13, 0);
    v16 = &v15[-*v15];
    if (*v16 < 5u)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 2);
      if (v17)
      {
        v17 += &v15[*&v15[v17]];
      }
    }

    v18 = (v17 + ((v13 >> 30) & 0x3FFFC) + 4 + *(v17 + ((v13 >> 30) & 0x3FFFC) + 4));
  }

  else
  {
    v18 = 0;
  }

  v38[0] = v14;
  v38[1] = v18;
  v38[2] = sub_31D7E8(v12, v13 & 0xFFFFFFFFFFFFLL, 1);
  v38[3] = v19;
  v39 = v13 & 0xFFFFFFFFFFFFFFLL;
  *&v30 = a4;
  sub_91CB60(a1 + 2608, v38, &v40, &v30, &v32);
  sub_820E54(a5);
  *a5 = v32;
  *(a5 + 16) = v33;
  v33 = 0;
  v32 = 0uLL;
  __p = &v32;
  sub_5ECC44(&__p);
  if (*a5 == *(a5 + 8) && (*(a1 + 2465) & 1) != 0)
  {
    sub_31E068(*(a1 + 16), v39 | (WORD2(v39) << 32), 8, &__p);
    if (__p != v37)
    {
      v20 = *(a1 + 16);
      v21 = *(v37 - 12);
      v22 = sub_2B51D8(v20, v21 & 0xFFFFFFFFFFFFLL);
      if (*(v20 + 7772) == 1)
      {
        v23 = sub_30C50C(v20 + 3896, v21, 0);
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

        v26 = v25 + ((v21 >> 30) & 0x3FFFC) + 4 + *(v25 + ((v21 >> 30) & 0x3FFFC) + 4);
      }

      else
      {
        v26 = 0;
      }

      v27 = sub_31D7E8(v20, v21 & 0xFFFFFFFFFFFFLL, 1);
      *&v32 = v22;
      *(&v32 + 1) = v26;
      v33 = v27;
      v34 = v28;
      v35 = v21;
      v29 = a4;
      sub_91CB60(a1 + 2608, &v32, &v40, &v29, &v30);
      sub_820E54(a5);
      *a5 = v30;
      *(a5 + 16) = v31;
      v31 = 0;
      v30 = 0uLL;
      v42 = &v30;
      sub_5ECC44(&v42);
    }

    if (*a5 == *(a5 + 8))
    {
      sub_81B064(a1, a2, a3, a4, &v32);
      sub_820E54(a5);
      *a5 = v32;
      *(a5 + 16) = v33;
      v33 = 0;
      v32 = 0uLL;
      *&v30 = &v32;
      sub_5ECC44(&v30);
    }

    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }
  }
}

void sub_81A9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
    sub_5ECC44(&a15);
    _Unwind_Resume(a1);
  }

  sub_5ECC44(&a15);
  _Unwind_Resume(a1);
}

void sub_81AA00(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = a1;
  v10 = sub_919900(a1 + 2608, a3, 1);
  v68 = v10;
  v69 = WORD2(v10);
  if ((v10 & 0x1010100) == 0)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  v11 = sub_919900(v8 + 2608, a3, 0);
  v66 = v11;
  v67 = WORD2(v11);
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v52 = a5;
  v12 = sub_4D1F50(a2, a4);
  v13 = *(v8 + 16);
  v14 = v12[4];
  v15 = sub_2B51D8(v13, v14 & 0xFFFFFFFFFFFFLL);
  if (*(v13 + 7772) == 1)
  {
    v16 = sub_30C50C(v13 + 3896, v14, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + ((v14 >> 30) & 0x3FFFC) + 4 + *(v18 + ((v14 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v19 = 0;
  }

  *&v63 = v15;
  *(&v63 + 1) = v19;
  *&v64 = sub_31D7E8(v13, v14 & 0xFFFFFFFFFFFFLL, 1);
  *(&v64 + 1) = v20;
  v65 = v14 & 0xFFFFFFFFFFFFFFLL;
  BYTE6(v65) = (v14 & 0xFF000000000000) == 0;
  __p[0] = a4;
  sub_91CB60(v8 + 2608, &v63, &v68, __p, &v54);
  sub_820E54(a5);
  *a5 = v54;
  a5[2] = v55;
  *&v55 = 0;
  v54 = 0uLL;
  v61 = &v54;
  sub_5ECC44(&v61);
  v21 = *a5;
  v22 = a5[1];
  if (*a5 == v22)
  {
    goto LABEL_17;
  }

  do
  {
    while (1)
    {
      v23 = (*v12 - **v12);
      if (*v23 >= 9u)
      {
        v24 = v23[4];
        if (v24)
        {
          break;
        }
      }

      v21[4] = 0;
      v21 += 23;
      if (v21 == v22)
      {
        goto LABEL_16;
      }
    }

    v21[4] = *(*v12 + v24);
    v21 += 23;
  }

  while (v21 != v22);
LABEL_16:
  if (*a5 == a5[1])
  {
LABEL_17:
    if (*(v8 + 2465))
    {
      sub_31E068(*(v8 + 16), v14 & 0xFFFFFFFFFFFFLL, 8, &v61);
      if (v62 == v61)
      {
LABEL_57:
        v46 = *a5;
        v47 = a5[1];
        while (v46 != v47)
        {
          v49 = (*v12 - **v12);
          if (*v49 >= 9u && (v50 = v49[4]) != 0)
          {
            v48 = *(*v12 + v50);
          }

          else
          {
            v48 = 0;
          }

          v46[4] = v48;
          v46 += 23;
        }

        if (v61)
        {
          v62 = v61;
          operator delete(v61);
        }

        return;
      }

      v25 = 0;
      v51 = 0xAAAAAAAAAAAAAAABLL * ((v62 - v61) >> 2);
      while (1)
      {
        v26 = v8;
        v27 = *(v8 + 16);
        v28 = *(v61 + 12 * v25);
        v29 = sub_2B51D8(v27, v28 & 0xFFFFFFFFFFFFLL);
        if (*(v27 + 7772) == 1)
        {
          v30 = sub_30C50C(v27 + 3896, v28, 0);
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

        v34 = sub_31D7E8(v27, v28 & 0xFFFFFFFFFFFFLL, 1);
        *&v63 = v29;
        *(&v63 + 1) = v33;
        *&v64 = v34;
        *(&v64 + 1) = v35;
        v65 = v28;
        __p[0] = 0;
        __p[1] = 0;
        v60 = 0;
        v8 = v26;
        a5 = v52;
        if (v25 >= -1 - 0x5555555555555555 * ((v62 - v61) >> 2))
        {
          goto LABEL_42;
        }

        v70[0] = a4;
        sub_91CB60(v8 + 2608, &v63, &v66, v70, &v54);
        v36 = __p[0];
        if (!__p[0])
        {
          goto LABEL_41;
        }

        v37 = __p[1];
        v38 = __p[0];
        if (__p[1] != __p[0])
        {
          break;
        }

LABEL_40:
        __p[1] = v36;
        operator delete(v38);
LABEL_41:
        *__p = v54;
        v60 = v55;
        *&v55 = 0;
        v54 = 0uLL;
        *&v57 = &v54;
        sub_5ECC44(&v57);
        v40 = __p[0];
        v41 = __p[1];
        if (__p[0] == __p[1])
        {
LABEL_42:
          v56 = v65;
          v54 = v63;
          v55 = v64;
          BYTE6(v56) = BYTE6(v65) == 0;
          v53 = a4;
          sub_91CB60(v8 + 2608, &v54, &v68, &v53, &v57);
          v42 = __p[0];
          if (!__p[0])
          {
LABEL_55:
            *__p = v57;
            v60 = v58;
            v58 = 0;
            v57 = 0uLL;
            v70[0] = &v57;
            sub_5ECC44(v70);
            v40 = __p[0];
            v41 = __p[1];
            goto LABEL_56;
          }

          v43 = __p[1];
          v44 = __p[0];
          if (__p[1] == __p[0])
          {
LABEL_54:
            __p[1] = v42;
            operator delete(v44);
            goto LABEL_55;
          }

          while (1)
          {
            if (*(v43 - 9) < 0)
            {
              operator delete(*(v43 - 4));
              if ((*(v43 - 41) & 0x80000000) == 0)
              {
LABEL_48:
                v45 = *(v43 - 20);
                if (v45 == -1)
                {
                  goto LABEL_45;
                }

LABEL_52:
                (off_266D410[v45])(v70, v43 - 14);
                goto LABEL_45;
              }
            }

            else if ((*(v43 - 41) & 0x80000000) == 0)
            {
              goto LABEL_48;
            }

            operator delete(*(v43 - 8));
            v45 = *(v43 - 20);
            if (v45 != -1)
            {
              goto LABEL_52;
            }

LABEL_45:
            *(v43 - 20) = -1;
            v43 -= 23;
            if (v43 == v42)
            {
              v44 = __p[0];
              goto LABEL_54;
            }
          }
        }

LABEL_56:
        sub_829604(v52, v52[1], v40, v41, 0xD37A6F4DE9BD37A7 * ((v41 - v40) >> 3));
        *&v54 = __p;
        sub_5ECC44(&v54);
        if (++v25 == v51)
        {
          goto LABEL_57;
        }
      }

      while (1)
      {
        if (*(v37 - 9) < 0)
        {
          operator delete(*(v37 - 4));
          if ((*(v37 - 41) & 0x80000000) == 0)
          {
LABEL_34:
            v39 = *(v37 - 20);
            if (v39 == -1)
            {
              goto LABEL_31;
            }

LABEL_38:
            (off_266D410[v39])(&v57, v37 - 14);
            goto LABEL_31;
          }
        }

        else if ((*(v37 - 41) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        operator delete(*(v37 - 8));
        v39 = *(v37 - 20);
        if (v39 != -1)
        {
          goto LABEL_38;
        }

LABEL_31:
        *(v37 - 20) = -1;
        v37 -= 23;
        if (v37 == v36)
        {
          v38 = __p[0];
          goto LABEL_40;
        }
      }
    }
  }
}

void sub_81AFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void **a29)
{
  a29 = a11;
  sub_5ECC44(&a29);
  _Unwind_Resume(a1);
}

void sub_81B010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29)
{
  a13 = &a23;
  sub_5ECC44(&a13);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  a29 = a11;
  sub_5ECC44(&a29);
  _Unwind_Resume(a1);
}

void sub_81B064(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(sub_4D1F50(a2, a4) + 32);
  v10 = a1[2];
  v11 = sub_2B51D8(v10, v9 & 0xFFFFFFFFFFFFLL);
  if (*(v10 + 7772) == 1)
  {
    v12 = sub_30C50C(v10 + 3896, v9, 0);
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

    v15 = v14 + ((v9 >> 30) & 0x3FFFC) + 4 + *(v14 + ((v9 >> 30) & 0x3FFFC) + 4);
  }

  else
  {
    v15 = 0;
  }

  v61[0] = v11;
  v61[1] = v15;
  v61[2] = sub_31D7E8(v10, v9 & 0xFFFFFFFFFFFFLL, 1);
  v61[3] = v16;
  v62 = v9 & 0xFFFFFFFFFFFFFFLL;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  sub_31B8F4(a1[2], v61, &v58);
  v17 = v58;
  if (v58 == v59)
  {
LABEL_24:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    if (!v17)
    {
      return;
    }

    goto LABEL_25;
  }

  v18 = v58;
  while (1)
  {
    v19 = (*v18 - **v18);
    if (*v19 >= 0x2Fu)
    {
      v20 = v19[23];
      if (v20)
      {
        if (*(*v18 + v20) == 14)
        {
          break;
        }
      }
    }

    v18 += 40;
    if (v18 == v59)
    {
      goto LABEL_24;
    }
  }

  sub_31E068(a1[2], v62 | (WORD2(v62) << 32), 8, &v56);
  v21 = v56;
  if (v56 != v57)
  {
    v22 = v57 - 12;
    if ((v9 & 0xFF000000000000) != 0)
    {
      v22 = v56;
    }

    v23 = *v22;
    v24 = a1[2];
    sub_2B51D8(v24, *v22 & 0xFFFFFFFFFFFFLL);
    if (*(v24 + 7772) == 1)
    {
      sub_30C50C(v24 + 3896, v23, 0);
    }

    sub_31D7E8(v24, v23 & 0xFFFFFFFFFFFFLL, 1);
    sub_31A0AC(a1[2], v61, v23 & 0xFFFFFFFFFFFFLL, &v53);
    if (!v55 || !v53 || !*(&v53 + 1))
    {
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      goto LABEL_51;
    }

    v25 = sub_919900((a1 + 326), a3, 0);
    v51 = v25;
    v52 = WORD2(v25);
    v26 = sub_919900((a1 + 326), a3, 1);
    v49 = v26;
    v50 = WORD2(v26);
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    if ((a1[309] & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v27 = 0;
    while (1)
    {
      v59 = v58;
      sub_31B8F4(a1[2], &v53, &v58);
      v30 = sub_7135C4(*a1 + 1432, &v53, &v58, -1, v29);
      if (v30 == -1)
      {
        goto LABEL_51;
      }

      v31 = &v58[40 * v30];
      v32 = *(v31 + 4);
      v33 = *(v31 + 1);
      v53 = *v31;
      v54 = v33;
      v55 = v32;
      *&v43[0] = a4;
      sub_91CB60((a1 + 326), &v53, &v51, v43, __p);
      v34 = __p[0];
      v35 = __p[1];
      if (__p[0] != __p[1])
      {
        goto LABEL_45;
      }

      v44 = v55;
      v43[0] = v53;
      v43[1] = v54;
      BYTE6(v44) = BYTE6(v55) == 0;
      v42 = a4;
      sub_91CB60((a1 + 326), v43, &v49, &v42, &v45);
      v36 = __p[0];
      if (__p[0])
      {
        break;
      }

LABEL_44:
      *__p = v45;
      v48 = v46;
      v46 = 0;
      v45 = 0uLL;
      v63[0] = &v45;
      sub_5ECC44(v63);
      v34 = __p[0];
      v35 = __p[1];
LABEL_45:
      sub_829604(a5, a5[1], v34, v35, 0xD37A6F4DE9BD37A7 * ((v35 - v34) >> 3));
      v40 = (v53 - *v53);
      if (*v40 >= 9u && (v41 = v40[4]) != 0)
      {
        v28 = *(v53 + v41);
      }

      else
      {
        v28 = 0;
      }

      v27 += v28;
      *&v43[0] = __p;
      sub_5ECC44(v43);
      if (v27 > a1[309])
      {
LABEL_51:
        v21 = v56;
        if (!v56)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }

    v37 = __p[1];
    v38 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_43:
      __p[1] = v36;
      operator delete(v38);
      goto LABEL_44;
    }

    while (1)
    {
      if (*(v37 - 9) < 0)
      {
        operator delete(*(v37 - 4));
        if ((*(v37 - 41) & 0x80000000) == 0)
        {
LABEL_37:
          v39 = *(v37 - 20);
          if (v39 == -1)
          {
            goto LABEL_34;
          }

LABEL_41:
          (off_266D410[v39])(v63, v37 - 14);
          goto LABEL_34;
        }
      }

      else if ((*(v37 - 41) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      operator delete(*(v37 - 8));
      v39 = *(v37 - 20);
      if (v39 != -1)
      {
        goto LABEL_41;
      }

LABEL_34:
      *(v37 - 20) = -1;
      v37 -= 23;
      if (v37 == v36)
      {
        v38 = __p[0];
        goto LABEL_43;
      }
    }
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (v21)
  {
LABEL_52:
    v57 = v21;
    operator delete(v21);
  }

LABEL_53:
  v17 = v58;
  if (!v58)
  {
    return;
  }

LABEL_25:
  v59 = v17;
  operator delete(v17);
}

void sub_81B514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
    v36 = *(v34 - 168);
    if (!v36)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v36 = *(v34 - 168);
    if (!v36)
    {
      goto LABEL_3;
    }
  }

  *(v34 - 160) = v36;
  operator delete(v36);
  _Unwind_Resume(exception_object);
}

void sub_81B5AC(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(a1 + 2585) != 1)
  {
    return;
  }

  v5 = sub_578320(a2 + 138, a3);
  v6 = *(v5 + 16);
  if (v6 >= sub_4D1DC0(a2))
  {
    return;
  }

  v7 = sub_4D1F50(a2, *(v5 + 16));
  v8 = (*v7 - **v7);
  v9 = *v8;
  if (*(v7 + 38))
  {
    if (v9 < 0x9F || (v10 = v8[79]) == 0)
    {
LABEL_10:
      v14 = 0;
      v13 = 0uLL;
      goto LABEL_11;
    }
  }

  else
  {
    if (v9 < 0x9D)
    {
      goto LABEL_10;
    }

    v10 = v8[78];
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  v11 = (*v7 + v10);
  v12 = *v11;
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  sub_315068(v35, *(v11 + v12));
  sub_315204((v11 + v12), v35);
  v13 = *v35;
  v14 = v36;
LABEL_11:
  v15 = v13;
  v16 = (*(&v13 + 1) - v13) >> 6;
  v17 = 126 - 2 * __clz(v16);
  v51 = v13;
  v52 = v14;
  if (*(&v13 + 1) == v13)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  sub_829C38(v13, *(&v13 + 1), v35, v18, 1);
  if (*(&v15 + 1) != v15)
  {
    while (1)
    {
      v19 = v15 + (--v16 << 6);
      if (*(v19 + 36) < *(a1 + 2588))
      {
        goto LABEL_60;
      }

      v20 = *(v5 + 160);
      switch(v20)
      {
        case 1u:
        case 0x14u:
        case 0x1Bu:
        case 0x1Du:
        case 0x21u:
        case 0x3Cu:
        case 0x3Eu:
        case 0x41u:
          v21 = *(v19 + 32);
          if (v21 != 2)
          {
            goto LABEL_23;
          }

          if (v20 > 0x3F || ((1 << v20) & 0xA000000450200004) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        case 2u:
        case 0x15u:
        case 0x1Cu:
        case 0x1Eu:
        case 0x22u:
        case 0x3Du:
        case 0x3Fu:
        case 0x42u:
LABEL_22:
          v21 = *(v19 + 32);
          if (v21 == 3)
          {
            goto LABEL_24;
          }

LABEL_23:
          if (v21 != 1)
          {
            goto LABEL_16;
          }

LABEL_24:
          if (!sub_91F2A8(a1 + 2608, a2, v5, *v19))
          {
            goto LABEL_16;
          }

          v22 = *(a1 + 24);
          v23 = *v19;
          v35[0] = -1;
          LODWORD(v35[1]) = 0x7FFFFFFF;
          v24 = sub_2B1988(v22, v23, v35);
          v50 = v24;
          if (!v24 || v24 >= 0xFFFFFFFF00000000)
          {
            goto LABEL_16;
          }

          sub_2B2F34(*(a1 + 32), &v50, &v48);
          v26 = sub_53A634(a2 + 936, *(v5 + 16));
          sub_64AC90(&v46, v26, 0);
          sub_739B14(&v48, v35);
          v27 = sub_734C10(&v37);
          v28 = v45;
          if (!v27)
          {
            goto LABEL_35;
          }

          if ((v45 & 0x80u) != 0)
          {
            v28 = v44;
          }

          if (v28)
          {
            v29 = *(v5 + 2072);
            if (v29 >= *(v5 + 2080))
            {
              v30 = sub_820F38((v5 + 2064), (v15 + (v16 << 6)), v35, (*(&v15 + 1) + 24));
            }

            else
            {
              sub_68427C(*(v5 + 2072), (v15 + (v16 << 6)), v35, (*(&v15 + 1) + 24));
              v30 = v29 + 432;
              *(v5 + 2072) = v29 + 432;
            }

            *(v5 + 2072) = v30;
            if ((v45 & 0x80) == 0)
            {
LABEL_36:
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_37;
              }

              goto LABEL_53;
            }
          }

          else
          {
LABEL_35:
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_36;
            }
          }

          operator delete(__p);
          if ((v42 & 0x80000000) == 0)
          {
LABEL_37:
            if ((v40 & 0x80000000) == 0)
            {
              goto LABEL_38;
            }

            goto LABEL_54;
          }

LABEL_53:
          operator delete(v41);
          if ((v40 & 0x80000000) == 0)
          {
LABEL_38:
            if ((v38 & 0x80000000) == 0)
            {
              goto LABEL_39;
            }

            goto LABEL_55;
          }

LABEL_54:
          operator delete(v39);
          if ((v38 & 0x80000000) == 0)
          {
LABEL_39:
            if ((SHIBYTE(v36) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_56;
          }

LABEL_55:
          operator delete(v37);
          if ((SHIBYTE(v36) & 0x80000000) == 0)
          {
LABEL_40:
            if ((v47 & 0x80000000) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_57;
          }

LABEL_56:
          operator delete(v35[0]);
          if ((v47 & 0x80000000) == 0)
          {
LABEL_41:
            v31 = v48;
            if (!v48)
            {
              goto LABEL_16;
            }

LABEL_42:
            v32 = v49;
            if (v49 == v31)
            {
              v49 = v31;
              operator delete(v31);
              goto LABEL_16;
            }

            while (1)
            {
              if (*(v32 - 9) < 0)
              {
                operator delete(*(v32 - 4));
                if ((*(v32 - 41) & 0x80000000) == 0)
                {
                  goto LABEL_45;
                }
              }

              else if ((*(v32 - 41) & 0x80000000) == 0)
              {
LABEL_45:
                v32 -= 9;
                if (v32 == v31)
                {
                  goto LABEL_49;
                }

                continue;
              }

              operator delete(*(v32 - 8));
              v32 -= 9;
              if (v32 == v31)
              {
LABEL_49:
                v49 = v31;
                operator delete(v48);
                goto LABEL_16;
              }
            }
          }

LABEL_57:
          operator delete(v46);
          v31 = v48;
          if (v48)
          {
            goto LABEL_42;
          }

LABEL_16:
          if (!v16)
          {
            goto LABEL_59;
          }

          break;
        default:
          goto LABEL_24;
      }
    }
  }

LABEL_59:
  if (v15)
  {
LABEL_60:
    for (i = *(&v51 + 1); i != v15; i -= 64)
    {
      v34 = *(i - 24);
      if (v34)
      {
        *(i - 16) = v34;
        operator delete(v34);
      }
    }

    operator delete(v15);
  }
}

void sub_81B9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  *(v34 + 2072) = v35;
  sub_3E5388(&a9);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_3008E0((v36 - 144));
  sub_315190((v36 - 112));
  _Unwind_Resume(a1);
}

unint64_t sub_81BBDC(uint64_t a1, void *a2, unint64_t a3)
{
  result = sub_578320(a2 + 138, a3);
  v6 = *(a1 + 6560);
  if (*(v6 + 1414) == 1)
  {
    v7 = result;
    if (*(result + 2264) == 1 && ((*(result + 2275) ^ 1 | *(v6 + 1056)) & 1) != 0)
    {
      result = sub_6834F4(result + 2088);
      if (result)
      {
        result = sub_445A90(v7 + 2088);
        if (result)
        {
          v8 = *(v7 + 24);
          result = sub_4D1DC0(a2);
          if (v8 < result)
          {
            result = sub_4D1F50(a2, *(v7 + 24));
            v9 = (*result - **result);
            v10 = *v9;
            if (*(result + 38))
            {
              if (v10 >= 0x4D)
              {
                v11 = v9[38];
                if (v11)
                {
                  v12 = 1;
LABEL_14:
                  v13 = (*(*result + v11) & v12) != 0;
LABEL_16:
                  *(v7 + 2088) = v13;
                  return result;
                }
              }
            }

            else if (v10 >= 0x4D)
            {
              v11 = v9[38];
              if (v11)
              {
                v12 = 2;
                goto LABEL_14;
              }
            }

            v13 = 0;
            goto LABEL_16;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_81BCD8(uint64_t result, void *a2, unint64_t a3)
{
  if (*(result + 2543) == 1)
  {
    result = sub_578320(a2 + 138, a3);
    v4 = *(result + 160);
    if ((v4 > 0x19 || ((1 << v4) & 0x2020080) == 0) && v4 != 85 && v4 != 88)
    {
      v6 = result;
      v36 = 0;
      v7 = *(result + 16);
      if (v7 > *(result + 40))
      {
        v8 = 0;
        do
        {
          v9 = sub_4D1F50(a2, v7);
          v11 = *v9;
          v12 = (*v9 - **v9);
          v13 = *v12;
          if (*(v9 + 38))
          {
            if (v13 < 0x9B)
            {
              goto LABEL_23;
            }

            v14 = v12[77];
            if (!v14 || (*&v11[v14] & 0x80) == 0)
            {
              goto LABEL_23;
            }
          }

          else if (v13 < 0x9B || (v15 = v12[77]) == 0 || (*&v11[v15] & 0x40) == 0)
          {
LABEL_23:
            v19 = sub_4D1F50(a2, v7);
            v20 = (*v19 - **v19);
            if (*v20 >= 0x2Fu)
            {
              v21 = v20[23];
              if (v21)
              {
                v22 = *(*v19 + v21);
                v23 = v22 > 0x36;
                v24 = (1 << v22) & 0x44000000000008;
                v25 = v23 || v24 == 0;
                if (!v25 && (v8 & 1) == 0)
                {
                  v8 = 1;
                  goto LABEL_12;
                }
              }
            }

            v26 = sub_4D1F50(a2, v7);
            v27 = (*v26 - **v26);
            if (*v27 >= 0x2Fu)
            {
              v28 = v27[23];
              if (v28)
              {
                v29 = *(*v26 + v28);
                v23 = v29 > 0x36;
                v30 = (1 << v29) & 0x44000000000008;
                if (!v23 && v30 != 0)
                {
                  goto LABEL_12;
                }
              }
            }

            if (v8)
            {
              LOBYTE(v35) = 1;
              v32 = v6[259];
              if (v32 >= v6[260])
              {
                v33 = sub_82143C(v6 + 258, &v36, &v35);
              }

              else
              {
                sub_683F24(v6[259], &v36, 1);
                v33 = v32 + 432;
                v6[259] = v32 + 432;
              }

              v8 = 0;
              goto LABEL_43;
            }

            v8 = 0;
            goto LABEL_12;
          }

          v16 = sub_4D23F8(a2, v7, v10);
          v35 = v36 + v16;
          v34 = 1;
          v17 = v6[259];
          if (v17 >= v6[260])
          {
            v33 = sub_8212D8(v6 + 258, &v35, &v34);
LABEL_43:
            v6[259] = v33;
            goto LABEL_12;
          }

          sub_683F24(v6[259], &v35, 1);
          v6[259] = v17 + 432;
          v6[259] = v17 + 432;
LABEL_12:
          result = sub_4D23F8(a2, v7, v18);
          v36 += result;
          --v7;
        }

        while (v7 > v6[5]);
      }
    }
  }

  return result;
}

void sub_81BF74(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = sub_578320((a2 + 1104), a3);
  v4 = *(v3 + 2064);
  v5 = *(v3 + 2072);
  if (v5 - v4 < 1)
  {
    v10 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0x84BDA12F684BDA13 * ((v5 - v4) >> 4);
    while (1)
    {
      v7 = operator new(432 * v6, &std::nothrow);
      if (v7)
      {
        break;
      }

      v8 = v6 >> 1;
      v9 = v6 > 1;
      v6 >>= 1;
      if (!v9)
      {
        v10 = 0;
        v6 = v8;
        goto LABEL_8;
      }
    }

    v10 = v7;
  }

LABEL_8:
  sub_831C90(v4, v5, &v11, 0x84BDA12F684BDA13 * ((v5 - v4) >> 4), v10, v6);
  if (v10)
  {
    operator delete(v10);
  }
}

void sub_81C054(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_81C06C(void *a1, uint64_t a2, uint64_t a3, void *a4, const void **a5, uint64_t a6)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = sub_3AF6B4(a4);
  a1[3] = sub_3B20FC(a4);
  a1[4] = sub_3B21D0(a4);
  sub_67A1F8((a1 + 5), a4, 2, *(a6 + 1566), a5);
}

void sub_81C130(_Unwind_Exception *a1)
{
  sub_7B3780(v1 + 2640);
  if (*(v1 + 2415) < 0)
  {
    operator delete(*(v1 + 2392));
  }

  _Unwind_Resume(a1);
}

unint64_t sub_81C160(uint64_t a1, uint64_t a2)
{
  result = nullsub_1(a2);
  v4 = *result;
  v5 = *(result + 8);
  if (*result != v5)
  {
    do
    {
      result = sub_81C1B8(a1, v4);
      v4 += 1582;
    }

    while (v4 != v5);
  }

  return result;
}

unint64_t sub_81C1B8(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = a2[139] - a2[138];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v51 = 0;
    v48 = 0x3795876FF3795877 * (v4 >> 3);
    v7 = -1;
    v8 = -2;
    v9 = 3240;
    v10 = 1;
    do
    {
      if (*(*(v3 + 6560) + 1448) == 1)
      {
        sub_8200D0(v3 + 2640, a2, v6);
        sub_81C694(v3, a2, v6);
        sub_81C4FC(v3, a2, v6);
      }

      v12 = sub_578320(a2 + 138, v6);
      v12[43].i32[2] = sub_81FA60(v12, a2, v12);
      v13 = sub_578320(a2 + 138, v6);
      v14 = v13[40];
      if (v14 - 82 >= 3)
      {
        v15 = v14 > 0x27;
        v16 = (1 << v14) & 0x8600050000;
        if (v15 || v16 == 0)
        {
          v36 = v13[4];
          v37 = v13[6];
          v50 = v8;
          v38 = v13;
          sub_4D0560();
          v46 = v39;
          v41 = v40;
          sub_4D0560();
          v43 = v42 + v37;
          v3 = a1;
          *(v38 + 2418) = sub_8215A0(v46, v41 + v36, v44, v43);
          v8 = v50;
        }
      }

      sub_81F070(v3, a2, v6);
      v18 = a2[138];
      v19 = v18 + 2616 * v6;
      v20 = v51;
      if ((v5 & (v51 >= v6)) != 0)
      {
        v21 = 2;
      }

      else
      {
        v22 = *(v19 + 624) != -1 && *(v19 + 680) == 1;
        if (!v22 || *(v19 + 648) == -1 || (v23 = 0x3795876FF3795877 * ((a2[139] - v18) >> 3), v6 + 1 >= v23))
        {
          v20 = 0;
          v5 = 0;
          goto LABEL_36;
        }

        if (v23 <= v10)
        {
          v23 = v10;
        }

        v24 = v23 + v8;
        v25 = v18 + v9;
        v26 = v7;
        while (*v25 == -1 || *(v25 + 56) != 2)
        {
          v5 = 0;
          v20 = 0;
          if (v24)
          {
            v28 = *(v25 + 24);
            v25 += 2616;
            --v26;
            --v24;
            if (v28 != -1)
            {
              continue;
            }
          }

          goto LABEL_36;
        }

        v20 = -v26;
        v21 = 1;
      }

      *(v19 + 2420) = v21;
      v5 = 1;
LABEL_36:
      v51 = v20;
      sub_81F310(v3, a2, v6);
      v30 = (a2[138] + 2616 * v6);
      v31 = v30[10];
      v32 = v30[13];
      if (v31 != -1 && v32 != -1)
      {
        v49 = v8;
        if (v31 <= v32)
        {
          v34 = v30[13];
        }

        else
        {
          v34 = v30[10];
        }

        v35 = 0;
        if (v31 < v32)
        {
          do
          {
            v35 += sub_4D23F8(a2, v31++, v29);
          }

          while (v34 != v31);
        }

        v11 = v30[14] + v35 - v30[11];
        if (v30[126] < v11)
        {
          v11 = v30[126];
        }

        v30[16] = v11;
        v3 = a1;
        v8 = v49;
      }

      sub_81EA40(v3, a2, v6++);
      --v7;
      ++v10;
      --v8;
      v9 += 2616;
    }

    while (v6 != v48);
  }

  return sub_920D18(v3 + 2608, a2);
}

uint64_t sub_81C4FC(uint64_t result, void *a2, unint64_t a3)
{
  if (a2[1290] != a2[1291])
  {
    v5 = result;
    result = sub_91BBD0(result + 2608, a2, a3);
    if (result != -1)
    {
      v7 = v6;
      if (v6 != -1)
      {
        v8 = result;
        result = sub_578320(a2 + 138, a3);
        if (v8 <= v7)
        {
          v9 = result;
          do
          {
            v10 = sub_814868(a2 + 1290, v8);
            result = sub_6834F4(v10);
            if (!result || *(v10 + 4))
            {
              goto LABEL_9;
            }

            v12 = (v10 + 8);
            v11 = *(v10 + 8);
            if (v11 < v9[5] || v11 >= v9[2])
            {
              goto LABEL_9;
            }

            v18 = sub_91BE70(v5 + 2608, a2, a3, v10);
            if (sub_684314((v9 + 258)))
            {
              v14 = sub_683C48(v10, (v9 + 261));
              v17 = v14;
              v16 = v8;
              v15 = v9[259];
              if (v15 < v9[260])
              {
                goto LABEL_20;
              }
            }

            else
            {
              v14 = 0;
              v17 = 0;
              v16 = v8;
              v15 = v9[259];
              if (v15 < v9[260])
              {
LABEL_20:
                sub_683F20(v15, &v18, *v12, v8, v14);
                result = v15 + 432;
                v9[259] = v15 + 432;
                goto LABEL_8;
              }
            }

            result = sub_8206C4(v9 + 258, &v18, v12, &v16, &v17);
LABEL_8:
            v9[259] = result;
LABEL_9:
            ++v8;
          }

          while (v8 <= v7);
        }
      }
    }
  }

  return result;
}

void sub_81C694(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_578320((a2 + 1104), a3);
  if (!*(v6 + 1008))
  {
    return;
  }

  v7 = v6;
  v8 = *(a1 + 6560);
  if (v8[1414] == 1)
  {
    v9 = *(v6 + 2264) & (*(v6 + 2275) ^ 1 | v8[1056]);
    if (v8[1454] != 1)
    {
LABEL_9:
      if ((v9 & 1) == 0)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    if (v8[1454] != 1)
    {
      goto LABEL_9;
    }
  }

  if (*(a1 + 2457) != 1)
  {
    goto LABEL_9;
  }

  if (((v9 | *(v6 + 2312)) & 1) == 0)
  {
    return;
  }

LABEL_10:
  sub_81C908(a1, a2, a3);
  if ((v9 & 1) != 0 && *(v7 + 2274) == 1)
  {
    sub_920424(a1 + 2608, a2, v7, &v20);
    if (sub_6834F4(&v20))
    {
      DWORD1(v20) = 1;
      v10 = *(a2 + 10328);
      if (v10 >= *(a2 + 10336))
      {
        v14 = sub_820B08((a2 + 10320), &v20);
      }

      else
      {
        v11 = v21;
        *v10 = v20;
        *(v10 + 16) = v11;
        *(v10 + 32) = 0;
        *(v10 + 40) = 0;
        *(v10 + 48) = 0;
        sub_5F3370(v10 + 32, v22, v23, 0xD37A6F4DE9BD37A7 * ((v23 - v22) >> 3));
        v12 = v24;
        v13 = v25[0];
        *(v10 + 81) = *(v25 + 9);
        *(v10 + 72) = v13;
        *(v10 + 56) = v12;
        v14 = v10 + 104;
        *(a2 + 10328) = v10 + 104;
      }

      *(a2 + 10328) = v14;
      v15 = v21;
      *(v7 + 2088) = v20;
      *(v7 + 2104) = v15;
      if ((v7 + 2088) != &v20)
      {
        sub_5FD2CC((v7 + 2120), v22, v23, 0xD37A6F4DE9BD37A7 * ((v23 - v22) >> 3));
      }

      *(v7 + 2144) = v24;
      *(v7 + 2160) = v25[0];
      *(v7 + 2169) = *(v25 + 9);
    }

    v26 = &v22;
    sub_5ECC44(&v26);
  }

  v16 = *(a2 + 10320);
  v17 = *(a2 + 10328);
  v18 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * (&v17[-v16] >> 3));
  if (v17 == v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  sub_833130(v16, v17, &v20, v19, 1);
}

void sub_81C8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v13 + 10328) = v14;
  *(v15 - 56) = &a13;
  sub_5ECC44((v15 - 56));
  _Unwind_Resume(a1);
}

void sub_81C908(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a2;
  v6 = sub_578320(a2 + 138, a3);
  if (*(v6 + 384) == 5)
  {
    v7 = v6;
    sub_81CEEC(a1, v4, a3, v53);
    v8 = v53[1];
    v9 = v53[0];
    if (v53[0] == v53[1])
    {
LABEL_74:
      *&v46 = v53;
      sub_5ECC44(&v46);
      return;
    }

    v52[0] = v4;
    v52[1] = a1;
    *&v43 = v52;
    if (v53[1] - v53[0] < 1)
    {
      v14 = 0;
      v10 = 0;
    }

    else
    {
      v10 = 0xD37A6F4DE9BD37A7 * ((v53[1] - v53[0]) >> 3);
      while (1)
      {
        v11 = operator new(184 * v10, &std::nothrow);
        if (v11)
        {
          break;
        }

        v12 = v10 >> 1;
        v13 = v10 > 1;
        v10 >>= 1;
        if (!v13)
        {
          v14 = 0;
          v10 = v12;
          goto LABEL_10;
        }
      }

      v14 = v11;
    }

LABEL_10:
    sub_833E18(v9, v8, &v43, 0xD37A6F4DE9BD37A7 * ((v8 - v9) >> 3), v14, v10);
    if (v14)
    {
      operator delete(v14);
    }

    v15 = v53[1];
    v16 = v53[0];
    if (v53[0] == v53[1] || v53[0] + 184 == v53[1])
    {
      goto LABEL_14;
    }

    while (1)
    {
      if (v16[10] == v16[56] && v16[11] == v16[57] && v16[12] == v16[58])
      {
        v24 = v16[4];
        if (v24 != 4 && v24 == v16[50])
        {
          break;
        }
      }

      v23 = v16 + 92;
      v16 += 46;
      if (v23 == v53[1])
      {
        goto LABEL_14;
      }
    }

    if (v16 == v53[1])
    {
LABEL_14:
      v17 = v53[1];
    }

    else
    {
      v26 = (v16 + 92);
      if (v16 + 92 != v53[1])
      {
        do
        {
          if (v16[10] != *(v26 + 10) || v16[11] != *(v26 + 11) || v16[12] != *(v26 + 12) || ((v27 = v16[4], v27 != 4) ? (v28 = v27 == *(v26 + 4)) : (v28 = 0), !v28))
          {
            v16 += 46;
            sub_826CE0(v16, v26);
          }

          v26 = (v26 + 184);
        }

        while (v26 != v15);
        v15 = v53[1];
      }

      v17 = (v16 + 46);
    }

    sub_827A44(v53, v17, v15);
    v18 = *v53;
    if (v53[1] - v53[0] < 1)
    {
      v22 = 0;
      v19 = 0;
    }

    else
    {
      v19 = 0xD37A6F4DE9BD37A7 * ((v53[1] - v53[0]) >> 3);
      while (1)
      {
        v20 = operator new(184 * v19, &std::nothrow);
        if (v20)
        {
          break;
        }

        v21 = v19 >> 1;
        v13 = v19 > 1;
        v19 >>= 1;
        if (!v13)
        {
          v22 = 0;
          v19 = v21;
          goto LABEL_44;
        }
      }

      v22 = v20;
    }

LABEL_44:
    sub_827B4C(v18, *(&v18 + 1), &v43, 0xD37A6F4DE9BD37A7 * ((*(&v18 + 1) - v18) >> 3), v22, v19);
    if (v22)
    {
      operator delete(v22);
    }

    v29 = sub_67A810(a1 + 40, *(v7 + 2057));
    *&v50[8] = 0;
    v51 = v29;
    *v50 = (1000 * a3);
    LOBYTE(v46) = 1;
    DWORD1(v46) = 0;
    *(&v46 + 1) = -1;
    *&v47 = -1;
    *(&v47 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    v42 = a3;
    *__p = 0u;
    memset(v49, 0, 40);
    *&v49[40] = 0xBFF0000000000000;
    v49[48] = 0;
    v31 = v53[1];
    v30 = v53[0];
    if (v53[0] == v53[1])
    {
LABEL_73:
      sub_920B60(a1 + 2608, v42, v4, &v46, v50, (a1 + 6592));
      *&v43 = __p;
      sub_5ECC44(&v43);
      goto LABEL_74;
    }

    while (1)
    {
      v32 = DWORD1(v47) == -1 && DWORD2(v47) == -1;
      v33 = v32 ? 0 : sub_683148(v30, &v47 + 1);
      *&v50[4] = v33;
      if (!sub_683874(&v46, v30, &v51, &v50[4]))
      {
        break;
      }

      if (__p[0] == __p[1])
      {
        v34 = *v30;
LABEL_71:
        DWORD1(v46) = v34;
      }

      sub_6831CC(&v46, v30);
      v30 += 46;
      if (v30 == v31)
      {
        goto LABEL_73;
      }
    }

    sub_920B60(a1 + 2608, v42, v4, &v46, v50, (a1 + 6592));
    *&v45[64] = 0;
    *&v43 = 1;
    *(&v44 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    *(&v43 + 1) = -1;
    *&v44 = -1;
    memset(v45, 0, 56);
    *&v45[56] = 0xBFF0000000000000;
    LODWORD(v47) = -1;
    v46 = v43;
    HIDWORD(v47) = 0x7FFFFFFF;
    *(&v47 + 4) = *(&v44 + 4);
    v35 = __p[0];
    if (!__p[0])
    {
      v41 = 0;
      v40 = 0uLL;
      goto LABEL_70;
    }

    v36 = v4;
    v37 = __p[1];
    v38 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_68:
      __p[1] = v35;
      operator delete(v38);
      v40 = *v45;
      v41 = *&v45[16];
      v4 = v36;
LABEL_70:
      *__p = v40;
      *v49 = v41;
      memset(v45, 0, 24);
      *&v49[8] = *&v45[24];
      *&v49[24] = *&v45[40];
      *&v49[33] = *&v45[49];
      v54[0] = v45;
      sub_5ECC44(v54);
      v34 = 0;
      goto LABEL_71;
    }

    while (1)
    {
      if (*(v37 - 9) < 0)
      {
        operator delete(*(v37 - 4));
        if ((*(v37 - 41) & 0x80000000) == 0)
        {
LABEL_62:
          v39 = *(v37 - 20);
          if (v39 == -1)
          {
            goto LABEL_59;
          }

LABEL_66:
          (off_266D410[v39])(v54, v37 - 14);
          goto LABEL_59;
        }
      }

      else if ((*(v37 - 41) & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      operator delete(*(v37 - 8));
      v39 = *(v37 - 20);
      if (v39 != -1)
      {
        goto LABEL_66;
      }

LABEL_59:
      *(v37 - 20) = -1;
      v37 -= 23;
      if (v37 == v35)
      {
        v38 = __p[0];
        goto LABEL_68;
      }
    }
  }
}

void sub_81CE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  a13 = a10;
  sub_5ECC44(&a13);
  a27 = (v27 - 128);
  sub_5ECC44(&a27);
  _Unwind_Resume(a1);
}

void sub_81CEEC(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = sub_50EA30(a2 + 138, a3);
  v8 = sub_919900(a1 + 2608, v7, 0);
  v84 = v8;
  v85 = WORD2(v8);
  if ((v8 & 0x100) != 0 || (v8 & 0x10000) != 0 || (v8 & 0x1000000) != 0)
  {
    *(a1 + 6600) |= BYTE3(v8);
    *(a1 + 6601) |= BYTE2(v8);
    __p[0] = 0;
    __p[1] = 0;
    v83 = 0;
    v9 = *(v7 + 16);
    if (v9 < *(v7 + 40))
    {
LABEL_5:
      *&v80 = __p;
      sub_5ECC44(&v80);
      return;
    }

    v10 = v9;
    v79 = a1;
    while (1)
    {
      v12 = a4[1];
      if (*a4 != v12 && *(v12 - 176) == v10)
      {
        goto LABEL_9;
      }

      if (v10 == *(v7 + 16))
      {
        if (sub_394BD0())
        {
          sub_43EDEC(&v80);
          v13 = __p[0];
          if (!__p[0])
          {
LABEL_65:
            *__p = v80;
            v83 = v81;
            v81 = 0;
            v80 = 0uLL;
            v86 = &v80;
            sub_5ECC44(&v86);
            v31 = __p[0];
            v32 = __p[1];
            if (__p[0] != __p[1])
            {
              v33 = __p[1] - __p[0] - 184;
              v34 = __p[0];
              if (v33 < 0xB8)
              {
                goto LABEL_154;
              }

              v35 = v33 / 0xB8 + 1;
              v34 = __p[0] + 184 * (v35 & 0x3FFFFFFFFFFFFFELL);
              v36 = __p[0];
              v37 = v35 & 0x3FFFFFFFFFFFFFELL;
              do
              {
                *v36 = 2;
                v36[46] = 2;
                v36 += 92;
                v37 -= 2;
              }

              while (v37);
              if (v35 != (v35 & 0x3FFFFFFFFFFFFFELL))
              {
LABEL_154:
                do
                {
                  *v34 = 2;
                  v34 += 184;
                }

                while (v34 != v32);
              }
            }

LABEL_71:
            sub_829604(a4, a4[1], v31, v32, 0xD37A6F4DE9BD37A7 * ((v32 - v31) >> 3));
LABEL_72:
            if (__p[0] != __p[1])
            {
              goto LABEL_9;
            }

            sub_43EDEC(&v80);
            v38 = __p[0];
            if (!__p[0])
            {
              goto LABEL_86;
            }

            v39 = __p[1];
            v40 = __p[0];
            if (__p[1] == __p[0])
            {
LABEL_85:
              __p[1] = v38;
              operator delete(v40);
              a1 = v79;
LABEL_86:
              *__p = v80;
              v83 = v81;
              v81 = 0;
              v80 = 0uLL;
              v86 = &v80;
              sub_5ECC44(&v86);
              v42 = __p[0];
              v43 = __p[1];
              if (__p[0] != __p[1])
              {
                v44 = __p[1] - __p[0] - 184;
                v45 = __p[0];
                if (v44 < 0xB8)
                {
                  goto LABEL_155;
                }

                v46 = v44 / 0xB8 + 1;
                v45 = __p[0] + 184 * (v46 & 0x3FFFFFFFFFFFFFELL);
                v47 = __p[0];
                v48 = v46 & 0x3FFFFFFFFFFFFFELL;
                do
                {
                  *v47 = 1;
                  v47[46] = 1;
                  v47 += 92;
                  v48 -= 2;
                }

                while (v48);
                if (v46 != (v46 & 0x3FFFFFFFFFFFFFELL))
                {
LABEL_155:
                  do
                  {
                    *v45 = 1;
                    v45 += 46;
                  }

                  while (v45 != v43);
                }
              }

              sub_829604(a4, a4[1], v42, v43, 0xD37A6F4DE9BD37A7 * ((v43 - v42) >> 3));
              if (__p[0] != __p[1])
              {
                goto LABEL_9;
              }

              sub_81DAC8(a1, a2, v7, v10, &v80);
              v54 = __p[0];
              if (!__p[0])
              {
                goto LABEL_116;
              }

              v55 = __p[1];
              v56 = __p[0];
              if (__p[1] == __p[0])
              {
LABEL_115:
                __p[1] = v54;
                operator delete(v56);
                a1 = v79;
LABEL_116:
                *__p = v80;
                v83 = v81;
                v81 = 0;
                v80 = 0uLL;
                v86 = &v80;
                sub_5ECC44(&v86);
                v58 = __p[0];
                v59 = __p[1];
                if (__p[0] != __p[1])
                {
                  v60 = __p[1] - __p[0] - 184;
                  v61 = __p[0];
                  if (v60 < 0xB8)
                  {
                    goto LABEL_156;
                  }

                  v62 = v60 / 0xB8 + 1;
                  v61 = __p[0] + 184 * (v62 & 0x3FFFFFFFFFFFFFELL);
                  v63 = __p[0];
                  v64 = v62 & 0x3FFFFFFFFFFFFFELL;
                  do
                  {
                    *v63 = 1;
                    v63[46] = 1;
                    v63 += 92;
                    v64 -= 2;
                  }

                  while (v64);
                  if (v62 != (v62 & 0x3FFFFFFFFFFFFFELL))
                  {
LABEL_156:
                    do
                    {
                      *v61 = 1;
                      v61 += 46;
                    }

                    while (v61 != v59);
                  }
                }

                sub_829604(a4, a4[1], v58, v59, 0xD37A6F4DE9BD37A7 * ((v59 - v58) >> 3));
                if (__p[0] != __p[1])
                {
                  goto LABEL_9;
                }

                sub_81DE38(a1, a2, v7, v10, &v80);
                v65 = __p[0];
                if (!__p[0])
                {
                  goto LABEL_136;
                }

                v66 = __p[1];
                v67 = __p[0];
                if (__p[1] == __p[0])
                {
LABEL_135:
                  __p[1] = v65;
                  operator delete(v67);
                  a1 = v79;
LABEL_136:
                  *__p = v80;
                  v83 = v81;
                  v81 = 0;
                  v80 = 0uLL;
                  v86 = &v80;
                  sub_5ECC44(&v86);
                  v25 = __p[0];
                  v26 = __p[1];
                  if (__p[0] != __p[1])
                  {
                    v69 = __p[1] - __p[0] - 184;
                    v70 = __p[0];
                    if (v69 < 0xB8)
                    {
                      goto LABEL_157;
                    }

                    v71 = v69 / 0xB8 + 1;
                    v70 = __p[0] + 184 * (v71 & 0x3FFFFFFFFFFFFFELL);
                    v72 = __p[0];
                    v73 = v71 & 0x3FFFFFFFFFFFFFELL;
                    do
                    {
                      *v72 = 0;
                      v72[46] = 0;
                      v72 += 92;
                      v73 -= 2;
                    }

                    while (v73);
                    if (v71 != (v71 & 0x3FFFFFFFFFFFFFELL))
                    {
LABEL_157:
                      do
                      {
                        *v70 = 0;
                        v70 += 184;
                      }

                      while (v70 != v26);
                    }
                  }

                  goto LABEL_8;
                }

                while (1)
                {
                  if (*(v66 - 9) < 0)
                  {
                    operator delete(*(v66 - 4));
                    if ((*(v66 - 41) & 0x80000000) == 0)
                    {
LABEL_129:
                      v68 = *(v66 - 20);
                      if (v68 == -1)
                      {
                        goto LABEL_126;
                      }

LABEL_133:
                      (off_266D410[v68])(&v86, v66 - 14);
                      goto LABEL_126;
                    }
                  }

                  else if ((*(v66 - 41) & 0x80000000) == 0)
                  {
                    goto LABEL_129;
                  }

                  operator delete(*(v66 - 8));
                  v68 = *(v66 - 20);
                  if (v68 != -1)
                  {
                    goto LABEL_133;
                  }

LABEL_126:
                  *(v66 - 20) = -1;
                  v66 -= 23;
                  if (v66 == v65)
                  {
                    v67 = __p[0];
                    goto LABEL_135;
                  }
                }
              }

              while (1)
              {
                if (*(v55 - 9) < 0)
                {
                  operator delete(*(v55 - 4));
                  if ((*(v55 - 41) & 0x80000000) == 0)
                  {
LABEL_109:
                    v57 = *(v55 - 20);
                    if (v57 == -1)
                    {
                      goto LABEL_106;
                    }

LABEL_113:
                    (off_266D410[v57])(&v86, v55 - 14);
                    goto LABEL_106;
                  }
                }

                else if ((*(v55 - 41) & 0x80000000) == 0)
                {
                  goto LABEL_109;
                }

                operator delete(*(v55 - 8));
                v57 = *(v55 - 20);
                if (v57 != -1)
                {
                  goto LABEL_113;
                }

LABEL_106:
                *(v55 - 20) = -1;
                v55 -= 23;
                if (v55 == v54)
                {
                  v56 = __p[0];
                  goto LABEL_115;
                }
              }
            }

            while (1)
            {
              if (*(v39 - 9) < 0)
              {
                operator delete(*(v39 - 4));
                if ((*(v39 - 41) & 0x80000000) == 0)
                {
LABEL_79:
                  v41 = *(v39 - 20);
                  if (v41 == -1)
                  {
                    goto LABEL_76;
                  }

LABEL_83:
                  (off_266D410[v41])(&v86, v39 - 14);
                  goto LABEL_76;
                }
              }

              else if ((*(v39 - 41) & 0x80000000) == 0)
              {
                goto LABEL_79;
              }

              operator delete(*(v39 - 8));
              v41 = *(v39 - 20);
              if (v41 != -1)
              {
                goto LABEL_83;
              }

LABEL_76:
              *(v39 - 20) = -1;
              v39 -= 23;
              if (v39 == v38)
              {
                v40 = __p[0];
                goto LABEL_85;
              }
            }
          }

          v14 = __p[1];
          v15 = __p[0];
          if (__p[1] == __p[0])
          {
LABEL_64:
            __p[1] = v13;
            operator delete(v15);
            a1 = v79;
            goto LABEL_65;
          }

          while (1)
          {
            if (*(v14 - 9) < 0)
            {
              operator delete(*(v14 - 4));
              if ((*(v14 - 41) & 0x80000000) == 0)
              {
LABEL_20:
                v16 = *(v14 - 20);
                if (v16 == -1)
                {
                  goto LABEL_17;
                }

LABEL_24:
                (off_266D410[v16])(&v86, v14 - 14);
                goto LABEL_17;
              }
            }

            else if ((*(v14 - 41) & 0x80000000) == 0)
            {
              goto LABEL_20;
            }

            operator delete(*(v14 - 8));
            v16 = *(v14 - 20);
            if (v16 != -1)
            {
              goto LABEL_24;
            }

LABEL_17:
            *(v14 - 20) = -1;
            v14 -= 23;
            if (v14 == v13)
            {
              v15 = __p[0];
              goto LABEL_64;
            }
          }
        }

        if (v10 + 1 >= sub_4D1DC0(a2) || !sub_394BD0())
        {
          goto LABEL_72;
        }

        sub_43EDEC(&v80);
        v21 = __p[0];
        if (!__p[0])
        {
LABEL_145:
          *__p = v80;
          v83 = v81;
          v81 = 0;
          v80 = 0uLL;
          v86 = &v80;
          sub_5ECC44(&v86);
          v31 = __p[0];
          v32 = __p[1];
          if (__p[0] != __p[1])
          {
            v74 = __p[1] - __p[0] - 184;
            v75 = __p[0];
            if (v74 < 0xB8)
            {
              goto LABEL_158;
            }

            v76 = v74 / 0xB8 + 1;
            v75 = __p[0] + 184 * (v76 & 0x3FFFFFFFFFFFFFELL);
            v77 = __p[0];
            v78 = v76 & 0x3FFFFFFFFFFFFFELL;
            do
            {
              *v77 = 2;
              v77[46] = 2;
              v77 += 92;
              v78 -= 2;
            }

            while (v78);
            if (v76 != (v76 & 0x3FFFFFFFFFFFFFELL))
            {
LABEL_158:
              do
              {
                *v75 = 2;
                v75 += 184;
              }

              while (v75 != v32);
            }
          }

          goto LABEL_71;
        }

        v22 = __p[1];
        v23 = __p[0];
        if (__p[1] == __p[0])
        {
LABEL_144:
          __p[1] = v21;
          operator delete(v23);
          a1 = v79;
          goto LABEL_145;
        }

        while (1)
        {
          if (*(v22 - 9) < 0)
          {
            operator delete(*(v22 - 4));
            if ((*(v22 - 41) & 0x80000000) == 0)
            {
LABEL_44:
              v24 = *(v22 - 20);
              if (v24 == -1)
              {
                goto LABEL_41;
              }

LABEL_48:
              (off_266D410[v24])(&v86, v22 - 14);
              goto LABEL_41;
            }
          }

          else if ((*(v22 - 41) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          operator delete(*(v22 - 8));
          v24 = *(v22 - 20);
          if (v24 != -1)
          {
            goto LABEL_48;
          }

LABEL_41:
          *(v22 - 20) = -1;
          v22 -= 23;
          if (v22 == v21)
          {
            v23 = __p[0];
            goto LABEL_144;
          }
        }
      }

      sub_81DAC8(a1, a2, v7, v10, &v80);
      v17 = __p[0];
      if (__p[0])
      {
        break;
      }

LABEL_51:
      *__p = v80;
      v83 = v81;
      v81 = 0;
      v80 = 0uLL;
      v86 = &v80;
      sub_5ECC44(&v86);
      v25 = __p[0];
      v26 = __p[1];
      if (__p[0] != __p[1])
      {
LABEL_97:
        v49 = v26 - v25 - 184;
        v50 = v25;
        if (v49 < 0xB8)
        {
          goto LABEL_159;
        }

        v51 = v49 / 0xB8 + 1;
        v50 = &v25[184 * (v51 & 0x3FFFFFFFFFFFFFELL)];
        v52 = v25;
        v53 = v51 & 0x3FFFFFFFFFFFFFELL;
        do
        {
          *v52 = 0;
          *(v52 + 46) = 0;
          v52 += 368;
          v53 -= 2;
        }

        while (v53);
        if (v51 != (v51 & 0x3FFFFFFFFFFFFFELL))
        {
LABEL_159:
          do
          {
            *v50 = 0;
            v50 += 184;
          }

          while (v50 != v26);
        }

        goto LABEL_8;
      }

      sub_81DE38(a1, a2, v7, v10, &v80);
      v27 = __p[0];
      if (__p[0])
      {
        v28 = __p[1];
        v29 = __p[0];
        if (__p[1] == __p[0])
        {
LABEL_95:
          __p[1] = v27;
          operator delete(v29);
          a1 = v79;
          goto LABEL_96;
        }

        while (1)
        {
          if (*(v28 - 9) < 0)
          {
            operator delete(*(v28 - 4));
            if ((*(v28 - 41) & 0x80000000) == 0)
            {
LABEL_58:
              v30 = *(v28 - 20);
              if (v30 == -1)
              {
                goto LABEL_55;
              }

LABEL_62:
              (off_266D410[v30])(&v86, v28 - 14);
              goto LABEL_55;
            }
          }

          else if ((*(v28 - 41) & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

          operator delete(*(v28 - 8));
          v30 = *(v28 - 20);
          if (v30 != -1)
          {
            goto LABEL_62;
          }

LABEL_55:
          *(v28 - 20) = -1;
          v28 -= 23;
          if (v28 == v27)
          {
            v29 = __p[0];
            goto LABEL_95;
          }
        }
      }

LABEL_96:
      *__p = v80;
      v83 = v81;
      v81 = 0;
      v80 = 0uLL;
      v86 = &v80;
      sub_5ECC44(&v86);
      v25 = __p[0];
      v26 = __p[1];
      if (__p[0] != __p[1])
      {
        goto LABEL_97;
      }

LABEL_8:
      sub_829604(a4, a4[1], v25, v26, 0xD37A6F4DE9BD37A7 * ((v26 - v25) >> 3));
LABEL_9:
      if (v10-- <= *(v7 + 40))
      {
        goto LABEL_5;
      }
    }

    v18 = __p[1];
    v19 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_50:
      __p[1] = v17;
      operator delete(v19);
      a1 = v79;
      goto LABEL_51;
    }

    while (1)
    {
      if (*(v18 - 9) < 0)
      {
        operator delete(*(v18 - 4));
        if ((*(v18 - 41) & 0x80000000) == 0)
        {
LABEL_31:
          v20 = *(v18 - 20);
          if (v20 == -1)
          {
            goto LABEL_28;
          }

LABEL_35:
          (off_266D410[v20])(&v86, v18 - 14);
          goto LABEL_28;
        }
      }

      else if ((*(v18 - 41) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      operator delete(*(v18 - 8));
      v20 = *(v18 - 20);
      if (v20 != -1)
      {
        goto LABEL_35;
      }

LABEL_28:
      *(v18 - 20) = -1;
      v18 -= 23;
      if (v18 == v17)
      {
        v19 = __p[0];
        goto LABEL_50;
      }
    }
  }
}

void sub_81DA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(v6, va1);
  sub_5ECC44(va);
  sub_5ECC44(va1);
  _Unwind_Resume(a1);
}

void sub_81DAC8(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v10 = sub_919900(a1 + 2608, a3, 0);
  v42 = v10;
  v43 = WORD2(v10);
  v11 = sub_4D1F50(a2, a4);
  v12 = *(a1 + 16);
  v13 = *(v11 + 32);
  v14 = *(v11 + 36);
  v15 = ((v14 & 0x20000000) << 19) & 0xFFFF0000FFFFFFFFLL | (v14 << 32) | v13;
  v16 = sub_2B51D8(v12, ((v14 & 0x20000000u) << 19) | (v14 << 32) & 0xFFFFFFFFFFFFLL | v13 & 0xFFFFFFFFFFFFLL);
  if (*(v12 + 7772) == 1)
  {
    v17 = sub_30C50C(v12 + 3896, v13, 0);
    v18 = &v17[-*v17];
    if (*v18 < 5u)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v18 + 2);
      if (v19)
      {
        v19 += &v17[*&v17[v19]];
      }
    }

    v20 = (v19 + 4 * v14 + 4 + *(v19 + 4 * v14 + 4));
  }

  else
  {
    v20 = 0;
  }

  v40[0] = v16;
  v40[1] = v20;
  v40[2] = sub_31D7E8(v12, v15 & 0xFFFFFFFFFFFFLL, 1);
  v40[3] = v21;
  v41 = v15 ^ 0x1000000000000;
  *&v32 = a4;
  sub_91F4F8(a1 + 2608, v40, &v42, &v32, &v34);
  sub_820E54(a5);
  *a5 = v34;
  *(a5 + 16) = v35;
  v35 = 0;
  v34 = 0uLL;
  __p = &v34;
  sub_5ECC44(&__p);
  if (*a5 == *(a5 + 8) && (*(a1 + 2465) & 1) != 0)
  {
    sub_31E068(*(a1 + 16), v41 | (WORD2(v41) << 32), 8, &__p);
    if (__p != v39)
    {
      v22 = *(a1 + 16);
      v23 = *(v39 - 12);
      v24 = sub_2B51D8(v22, v23 & 0xFFFFFFFFFFFFLL);
      if (*(v22 + 7772) == 1)
      {
        v25 = sub_30C50C(v22 + 3896, v23, 0);
        v26 = &v25[-*v25];
        if (*v26 < 5u)
        {
          v27 = 0;
        }

        else
        {
          v27 = *(v26 + 2);
          if (v27)
          {
            v27 += &v25[*&v25[v27]];
          }
        }

        v28 = v27 + ((v23 >> 30) & 0x3FFFC) + 4 + *(v27 + ((v23 >> 30) & 0x3FFFC) + 4);
      }

      else
      {
        v28 = 0;
      }

      v29 = sub_31D7E8(v22, v23 & 0xFFFFFFFFFFFFLL, 1);
      *&v34 = v24;
      *(&v34 + 1) = v28;
      v35 = v29;
      v36 = v30;
      v37 = v23;
      v31 = a4;
      sub_91F4F8(a1 + 2608, &v34, &v42, &v31, &v32);
      sub_820E54(a5);
      *a5 = v32;
      *(a5 + 16) = v33;
      v33 = 0;
      v32 = 0uLL;
      v44 = &v32;
      sub_5ECC44(&v44);
    }

    if (*a5 == *(a5 + 8))
    {
      sub_81E4E8(a1, a2, a3, a4, &v34);
      sub_820E54(a5);
      *a5 = v34;
      *(a5 + 16) = v35;
      v35 = 0;
      v34 = 0uLL;
      *&v32 = &v34;
      sub_5ECC44(&v32);
    }

    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }
  }
}

void sub_81DDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
    sub_5ECC44(&a15);
    _Unwind_Resume(a1);
  }

  sub_5ECC44(&a15);
  _Unwind_Resume(a1);
}

void sub_81DE38(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, void **a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_919900(a1 + 2608, a3, 1);
  v72 = v10;
  v73 = WORD2(v10);
  if ((v10 & 0x1010100) == 0)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    return;
  }

  v11 = sub_919900(a1 + 2608, a3, 0);
  v70 = v11;
  v71 = WORD2(v11);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  v12 = sub_4D1F50(a2, a4);
  v56 = a1;
  v13 = *(a1 + 16);
  v14 = *(v12 + 8);
  v15 = *(v12 + 9);
  v16 = v15 << 32;
  v17 = (v15 << 32) & 0xFFFEFFFFFFFFFFFFLL | ((((*(v12 + 9) & 0x20000000) >> 29) & 1) << 48) | v14;
  v18 = sub_2B51D8(v13, (v15 << 32) & 0xFFFFFFFFFFFFLL | v14 & 0xFFFFFFFFFFFFLL);
  if (*(v13 + 7772) == 1)
  {
    v19 = sub_30C50C(v13 + 3896, v14, 0);
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

    v22 = v21 + 4 * v15 + 4 + *(v21 + 4 * v15 + 4);
  }

  else
  {
    v22 = 0;
  }

  *&v67 = v18;
  *(&v67 + 1) = v22;
  *&v68 = sub_31D7E8(v13, v17 & 0xFFFFFFFFFFFFLL, 1);
  *(&v68 + 1) = v23;
  v69 = v17 ^ 0x1000000000000;
  BYTE6(v69) = (v17 ^ 0x1000000000000) >> 48 == 0;
  __p[0] = a4;
  v24 = a1;
  sub_91F4F8(a1 + 2608, &v67, &v72, __p, &v58);
  sub_820E54(a5);
  *a5 = v58;
  *(a5 + 16) = v59;
  *&v59 = 0;
  v58 = 0uLL;
  v65 = &v58;
  sub_5ECC44(&v65);
  v25 = *a5;
  v26 = *(a5 + 8);
  if (*a5 == v26)
  {
    goto LABEL_17;
  }

  do
  {
    while (1)
    {
      v27 = (*v12 - **v12);
      if (*v27 >= 9u)
      {
        v28 = v27[4];
        if (v28)
        {
          break;
        }
      }

      v25[4] = 0;
      v25 += 23;
      if (v25 == v26)
      {
        goto LABEL_16;
      }
    }

    v25[4] = *(*v12 + v28);
    v25 += 23;
  }

  while (v25 != v26);
LABEL_16:
  if (*a5 == *(a5 + 8))
  {
LABEL_17:
    if (*(a1 + 2465))
    {
      sub_31E068(*(a1 + 16), v16 | v14, 8, &v65);
      if (v66 == v65)
      {
LABEL_57:
        v50 = *a5;
        v51 = *(a5 + 8);
        while (v50 != v51)
        {
          v53 = (*v12 - **v12);
          if (*v53 >= 9u && (v54 = v53[4]) != 0)
          {
            v52 = *(*v12 + v54);
          }

          else
          {
            v52 = 0;
          }

          v50[4] = v52;
          v50 += 23;
        }

        if (v65)
        {
          v66 = v65;
          operator delete(v65);
        }

        return;
      }

      v29 = 0;
      v55 = 0xAAAAAAAAAAAAAAABLL * ((v66 - v65) >> 2);
      while (1)
      {
        v30 = a4;
        v31 = *(v24 + 16);
        v32 = *(v65 + 12 * v29);
        v33 = sub_2B51D8(v31, v32 & 0xFFFFFFFFFFFFLL);
        if (*(v31 + 7772) == 1)
        {
          v34 = sub_30C50C(v31 + 3896, v32, 0);
          v35 = &v34[-*v34];
          if (*v35 < 5u)
          {
            v36 = 0;
          }

          else
          {
            v36 = *(v35 + 2);
            if (v36)
            {
              v36 += &v34[*&v34[v36]];
            }
          }

          v37 = v36 + ((v32 >> 30) & 0x3FFFC) + 4 + *(v36 + ((v32 >> 30) & 0x3FFFC) + 4);
        }

        else
        {
          v37 = 0;
        }

        v38 = sub_31D7E8(v31, v32 & 0xFFFFFFFFFFFFLL, 1);
        *&v67 = v33;
        *(&v67 + 1) = v37;
        *&v68 = v38;
        *(&v68 + 1) = v39;
        v69 = v32;
        __p[0] = 0;
        __p[1] = 0;
        v64 = 0;
        v24 = v56;
        a4 = v30;
        if (v29 >= -1 - 0x5555555555555555 * ((v66 - v65) >> 2))
        {
          goto LABEL_42;
        }

        v74[0] = v30;
        sub_91F4F8(v56 + 2608, &v67, &v70, v74, &v58);
        v40 = __p[0];
        if (!__p[0])
        {
          goto LABEL_41;
        }

        v41 = __p[1];
        v42 = __p[0];
        if (__p[1] != __p[0])
        {
          break;
        }

LABEL_40:
        __p[1] = v40;
        operator delete(v42);
LABEL_41:
        *__p = v58;
        v64 = v59;
        *&v59 = 0;
        v58 = 0uLL;
        *&v61 = &v58;
        sub_5ECC44(&v61);
        v44 = __p[0];
        v45 = __p[1];
        if (__p[0] == __p[1])
        {
LABEL_42:
          v60 = v69;
          v58 = v67;
          v59 = v68;
          BYTE6(v60) = BYTE6(v69) == 0;
          v57 = v30;
          sub_91F4F8(v56 + 2608, &v58, &v72, &v57, &v61);
          v46 = __p[0];
          if (!__p[0])
          {
LABEL_55:
            *__p = v61;
            v64 = v62;
            v62 = 0;
            v61 = 0uLL;
            v74[0] = &v61;
            sub_5ECC44(v74);
            v44 = __p[0];
            v45 = __p[1];
            goto LABEL_56;
          }

          v47 = __p[1];
          v48 = __p[0];
          if (__p[1] == __p[0])
          {
LABEL_54:
            __p[1] = v46;
            operator delete(v48);
            goto LABEL_55;
          }

          while (1)
          {
            if (*(v47 - 9) < 0)
            {
              operator delete(*(v47 - 4));
              if ((*(v47 - 41) & 0x80000000) == 0)
              {
LABEL_48:
                v49 = *(v47 - 20);
                if (v49 == -1)
                {
                  goto LABEL_45;
                }

LABEL_52:
                (off_266D410[v49])(v74, v47 - 14);
                goto LABEL_45;
              }
            }

            else if ((*(v47 - 41) & 0x80000000) == 0)
            {
              goto LABEL_48;
            }

            operator delete(*(v47 - 8));
            v49 = *(v47 - 20);
            if (v49 != -1)
            {
              goto LABEL_52;
            }

LABEL_45:
            *(v47 - 20) = -1;
            v47 -= 23;
            if (v47 == v46)
            {
              v48 = __p[0];
              goto LABEL_54;
            }
          }
        }

LABEL_56:
        sub_829604(a5, *(a5 + 8), v44, v45, 0xD37A6F4DE9BD37A7 * ((v45 - v44) >> 3));
        *&v58 = __p;
        sub_5ECC44(&v58);
        if (++v29 == v55)
        {
          goto LABEL_57;
        }
      }

      while (1)
      {
        if (*(v41 - 9) < 0)
        {
          operator delete(*(v41 - 4));
          if ((*(v41 - 41) & 0x80000000) == 0)
          {
LABEL_34:
            v43 = *(v41 - 20);
            if (v43 == -1)
            {
              goto LABEL_31;
            }

LABEL_38:
            (off_266D410[v43])(&v61, v41 - 14);
            goto LABEL_31;
          }
        }

        else if ((*(v41 - 41) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        operator delete(*(v41 - 8));
        v43 = *(v41 - 20);
        if (v43 != -1)
        {
          goto LABEL_38;
        }

LABEL_31:
        *(v41 - 20) = -1;
        v41 -= 23;
        if (v41 == v40)
        {
          v42 = __p[0];
          goto LABEL_40;
        }
      }
    }
  }
}

void sub_81E498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29)
{
  a13 = &a23;
  sub_5ECC44(&a13);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  sub_5ECC44(&a29);
  _Unwind_Resume(a1);
}

void sub_81E4E8(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = sub_4D1F50(a2, a4);
  v10 = *(v8 + 32);
  v9 = *(v8 + 36);
  v11 = v10 | (v9 << 32);
  v12 = (v9 >> 29) & 1;
  v13 = a1[2];
  v14 = v11 | (((v9 & 0x20000000) == 0) << 48);
  v15 = sub_2B51D8(v13, v11);
  if (*(v13 + 7772) == 1)
  {
    v16 = sub_30C50C(v13 + 3896, v10, 0);
    v17 = &v16[-*v16];
    if (*v17 < 5u)
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v17 + 2);
      if (v18)
      {
        v18 += &v16[*&v16[v18]];
      }
    }

    v19 = v18 + 4 * v9 + 4 + *(v18 + 4 * v9 + 4);
  }

  else
  {
    v19 = 0;
  }

  v66[0] = v15;
  v66[1] = v19;
  v66[2] = sub_31D7E8(v13, v11, 1);
  v66[3] = v20;
  v67 = v14;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  sub_31B8F4(a1[2], v66, &v63);
  v21 = v63;
  if (v63 == v64)
  {
LABEL_24:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    if (!v21)
    {
      return;
    }

    goto LABEL_25;
  }

  v22 = v63;
  while (1)
  {
    v23 = (*v22 - **v22);
    if (*v23 >= 0x2Fu)
    {
      v24 = v23[23];
      if (v24)
      {
        if (*(*v22 + v24) == 14)
        {
          break;
        }
      }
    }

    v22 += 5;
    if (v22 == v64)
    {
      goto LABEL_24;
    }
  }

  sub_31E068(a1[2], v67 | (WORD2(v67) << 32), 8, &v61);
  v25 = v61;
  if (v61 != v62)
  {
    v26 = v62 - 12;
    if (!v12)
    {
      v26 = v61;
    }

    v27 = *v26;
    v28 = a1[2];
    sub_2B51D8(v28, *v26 & 0xFFFFFFFFFFFFLL);
    if (*(v28 + 7772) == 1)
    {
      sub_30C50C(v28 + 3896, v27, 0);
    }

    sub_31D7E8(v28, v27 & 0xFFFFFFFFFFFFLL, 1);
    sub_31A0AC(a1[2], v66, v27 & 0xFFFFFFFFFFFFLL, &v58);
    if (!v60 || !v58 || !*(&v58 + 1))
    {
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      goto LABEL_51;
    }

    v29 = sub_919900((a1 + 326), a3, 0);
    v56 = v29;
    v57 = WORD2(v29);
    v30 = sub_919900((a1 + 326), a3, 1);
    v54 = v30;
    v55 = WORD2(v30);
    a5[1] = 0;
    a5[2] = 0;
    *a5 = 0;
    if ((a1[309] & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v31 = 0;
    while (1)
    {
      v64 = v63;
      sub_31B8F4(a1[2], &v58, &v63);
      v34 = sub_716AD8(*a1 + 1432, &v58, &v63, -1, v33);
      if (v34 == -1)
      {
        goto LABEL_51;
      }

      v35 = &v63[5 * v34];
      v36 = v35[4];
      v37 = *(v35 + 1);
      v58 = *v35;
      v59 = v37;
      v60 = v36;
      *&v48[0] = a4;
      sub_91F4F8((a1 + 326), &v58, &v56, v48, __p);
      v38 = __p[0];
      v39 = __p[1];
      if (__p[0] != __p[1])
      {
        goto LABEL_45;
      }

      v49 = v60;
      v48[0] = v58;
      v48[1] = v59;
      BYTE6(v49) = BYTE6(v60) == 0;
      v47 = a4;
      sub_91F4F8((a1 + 326), v48, &v54, &v47, &v50);
      v40 = __p[0];
      if (__p[0])
      {
        break;
      }

LABEL_44:
      *__p = v50;
      v53 = v51;
      v51 = 0;
      v50 = 0uLL;
      v68[0] = &v50;
      sub_5ECC44(v68);
      v38 = __p[0];
      v39 = __p[1];
LABEL_45:
      sub_829604(a5, a5[1], v38, v39, 0xD37A6F4DE9BD37A7 * ((v39 - v38) >> 3));
      v44 = (v58 - *v58);
      if (*v44 >= 9u && (v45 = v44[4]) != 0)
      {
        v32 = *(v58 + v45);
      }

      else
      {
        v32 = 0;
      }

      v31 += v32;
      *&v48[0] = __p;
      sub_5ECC44(v48);
      if (v31 > a1[309])
      {
LABEL_51:
        v25 = v61;
        if (!v61)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }

    v41 = __p[1];
    v42 = __p[0];
    if (__p[1] == __p[0])
    {
LABEL_43:
      __p[1] = v40;
      operator delete(v42);
      goto LABEL_44;
    }

    while (1)
    {
      if (*(v41 - 9) < 0)
      {
        operator delete(*(v41 - 4));
        if ((*(v41 - 41) & 0x80000000) == 0)
        {
LABEL_37:
          v43 = *(v41 - 20);
          if (v43 == -1)
          {
            goto LABEL_34;
          }

LABEL_41:
          (off_266D410[v43])(v68, v41 - 14);
          goto LABEL_34;
        }
      }

      else if ((*(v41 - 41) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      operator delete(*(v41 - 8));
      v43 = *(v41 - 20);
      if (v43 != -1)
      {
        goto LABEL_41;
      }

LABEL_34:
      *(v41 - 20) = -1;
      v41 -= 23;
      if (v41 == v40)
      {
        v42 = __p[0];
        goto LABEL_43;
      }
    }
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (v25)
  {
LABEL_52:
    v62 = v25;
    operator delete(v25);
  }

LABEL_53:
  v21 = v63;
  if (!v63)
  {
    return;
  }

LABEL_25:
  v64 = v21;
  operator delete(v21);
}

void sub_81E9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
    v36 = *(v34 - 168);
    if (!v36)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v36 = *(v34 - 168);
    if (!v36)
    {
      goto LABEL_3;
    }
  }

  *(v34 - 160) = v36;
  operator delete(v36);
  _Unwind_Resume(exception_object);
}

void sub_81EA40(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(a1 + 2585) != 1)
  {
    return;
  }

  v5 = sub_578320(a2 + 138, a3);
  v6 = *(v5 + 16);
  if (v6 >= sub_4D1DC0(a2))
  {
    return;
  }

  v7 = sub_4D1F50(a2, *(v5 + 16));
  v8 = (*v7 - **v7);
  v9 = *v8;
  if ((*(v7 + 9) & 0x20000000) != 0)
  {
    if (v9 < 0x9D)
    {
      goto LABEL_10;
    }

    v10 = v8[78];
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else if (v9 < 0x9F || (v10 = v8[79]) == 0)
  {
LABEL_10:
    v14 = 0;
    v13 = 0uLL;
    goto LABEL_11;
  }

  v11 = (*v7 + v10);
  v12 = *v11;
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  sub_315068(v35, *(v11 + v12));
  sub_315A80((v11 + v12), v35);
  v13 = *v35;
  v14 = v36;
LABEL_11:
  v15 = v13;
  v16 = (*(&v13 + 1) - v13) >> 6;
  v17 = 126 - 2 * __clz(v16);
  v51 = v13;
  v52 = v14;
  if (*(&v13 + 1) == v13)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  sub_829C38(v13, *(&v13 + 1), v35, v18, 1);
  if (*(&v15 + 1) != v15)
  {
    while (1)
    {
      v19 = v15 + (--v16 << 6);
      if (*(v19 + 36) < *(a1 + 2588))
      {
        goto LABEL_60;
      }

      v20 = *(v5 + 160);
      switch(v20)
      {
        case 1u:
        case 0x14u:
        case 0x1Bu:
        case 0x1Du:
        case 0x21u:
        case 0x3Cu:
        case 0x3Eu:
        case 0x41u:
          v21 = *(v19 + 32);
          if (v21 != 2)
          {
            goto LABEL_23;
          }

          if (v20 > 0x3F || ((1 << v20) & 0xA000000450200004) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        case 2u:
        case 0x15u:
        case 0x1Cu:
        case 0x1Eu:
        case 0x22u:
        case 0x3Du:
        case 0x3Fu:
        case 0x42u:
LABEL_22:
          v21 = *(v19 + 32);
          if (v21 == 3)
          {
            goto LABEL_24;
          }

LABEL_23:
          if (v21 != 1)
          {
            goto LABEL_16;
          }

LABEL_24:
          if (!sub_921244(a1 + 2608, a2, v5, *v19))
          {
            goto LABEL_16;
          }

          v22 = *(a1 + 24);
          v23 = *v19;
          v35[0] = -1;
          LODWORD(v35[1]) = 0x7FFFFFFF;
          v24 = sub_2B1988(v22, v23, v35);
          v50 = v24;
          if (!v24 || v24 >= 0xFFFFFFFF00000000)
          {
            goto LABEL_16;
          }

          sub_2B2F34(*(a1 + 32), &v50, &v48);
          v26 = sub_53A634(a2 + 936, *(v5 + 16));
          sub_64AC90(&v46, v26, 0);
          sub_73CF90(&v48, v35);
          v27 = sub_734C10(&v37);
          v28 = v45;
          if (!v27)
          {
            goto LABEL_35;
          }

          if ((v45 & 0x80u) != 0)
          {
            v28 = v44;
          }

          if (v28)
          {
            v29 = *(v5 + 2072);
            if (v29 >= *(v5 + 2080))
            {
              v30 = sub_820F38((v5 + 2064), (v15 + (v16 << 6)), v35, (*(&v15 + 1) + 24));
            }

            else
            {
              sub_68427C(*(v5 + 2072), (v15 + (v16 << 6)), v35, (*(&v15 + 1) + 24));
              v30 = v29 + 432;
              *(v5 + 2072) = v29 + 432;
            }

            *(v5 + 2072) = v30;
            if ((v45 & 0x80) == 0)
            {
LABEL_36:
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_37;
              }

              goto LABEL_53;
            }
          }

          else
          {
LABEL_35:
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_36;
            }
          }

          operator delete(__p);
          if ((v42 & 0x80000000) == 0)
          {
LABEL_37:
            if ((v40 & 0x80000000) == 0)
            {
              goto LABEL_38;
            }

            goto LABEL_54;
          }

LABEL_53:
          operator delete(v41);
          if ((v40 & 0x80000000) == 0)
          {
LABEL_38:
            if ((v38 & 0x80000000) == 0)
            {
              goto LABEL_39;
            }

            goto LABEL_55;
          }

LABEL_54:
          operator delete(v39);
          if ((v38 & 0x80000000) == 0)
          {
LABEL_39:
            if ((SHIBYTE(v36) & 0x80000000) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_56;
          }

LABEL_55:
          operator delete(v37);
          if ((SHIBYTE(v36) & 0x80000000) == 0)
          {
LABEL_40:
            if ((v47 & 0x80000000) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_57;
          }

LABEL_56:
          operator delete(v35[0]);
          if ((v47 & 0x80000000) == 0)
          {
LABEL_41:
            v31 = v48;
            if (!v48)
            {
              goto LABEL_16;
            }

LABEL_42:
            v32 = v49;
            if (v49 == v31)
            {
              v49 = v31;
              operator delete(v31);
              goto LABEL_16;
            }

            while (1)
            {
              if (*(v32 - 9) < 0)
              {
                operator delete(*(v32 - 4));
                if ((*(v32 - 41) & 0x80000000) == 0)
                {
                  goto LABEL_45;
                }
              }

              else if ((*(v32 - 41) & 0x80000000) == 0)
              {
LABEL_45:
                v32 -= 9;
                if (v32 == v31)
                {
                  goto LABEL_49;
                }

                continue;
              }

              operator delete(*(v32 - 8));
              v32 -= 9;
              if (v32 == v31)
              {
LABEL_49:
                v49 = v31;
                operator delete(v48);
                goto LABEL_16;
              }
            }
          }

LABEL_57:
          operator delete(v46);
          v31 = v48;
          if (v48)
          {
            goto LABEL_42;
          }

LABEL_16:
          if (!v16)
          {
            goto LABEL_59;
          }

          break;
        default:
          goto LABEL_24;
      }
    }
  }

LABEL_59:
  if (v15)
  {
LABEL_60:
    for (i = *(&v51 + 1); i != v15; i -= 64)
    {
      v34 = *(i - 24);
      if (v34)
      {
        *(i - 16) = v34;
        operator delete(v34);
      }
    }

    operator delete(v15);
  }
}

void sub_81EE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  *(v34 + 2072) = v35;
  sub_3E5388(&a9);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_3008E0((v36 - 144));
  sub_315190((v36 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_81F070(uint64_t result, void *a2, unint64_t a3)
{
  if (*(result + 2543) == 1)
  {
    result = sub_578320(a2 + 138, a3);
    v4 = *(result + 160);
    if ((v4 > 0x19 || ((1 << v4) & 0x2020080) == 0) && v4 != 85 && v4 != 88)
    {
      v6 = result;
      v36 = 0;
      v7 = *(result + 16);
      if (v7 > *(result + 40))
      {
        v8 = 0;
        do
        {
          v9 = sub_4D1F50(a2, v7);
          v11 = *v9;
          v12 = (*v9 - **v9);
          v13 = *v12;
          if ((*(v9 + 39) & 0x20) != 0)
          {
            if (v13 < 0x9B || (v15 = v12[77]) == 0 || (*&v11[v15] & 0x40) == 0)
            {
LABEL_23:
              v19 = sub_4D1F50(a2, v7);
              v20 = (*v19 - **v19);
              if (*v20 >= 0x2Fu)
              {
                v21 = v20[23];
                if (v21)
                {
                  v22 = *(*v19 + v21);
                  v23 = v22 > 0x36;
                  v24 = (1 << v22) & 0x44000000000008;
                  v25 = v23 || v24 == 0;
                  if (!v25 && (v8 & 1) == 0)
                  {
                    v8 = 1;
                    goto LABEL_12;
                  }
                }
              }

              v26 = sub_4D1F50(a2, v7);
              v27 = (*v26 - **v26);
              if (*v27 >= 0x2Fu)
              {
                v28 = v27[23];
                if (v28)
                {
                  v29 = *(*v26 + v28);
                  v23 = v29 > 0x36;
                  v30 = (1 << v29) & 0x44000000000008;
                  if (!v23 && v30 != 0)
                  {
                    goto LABEL_12;
                  }
                }
              }

              if (v8)
              {
                LOBYTE(v35) = 1;
                v32 = v6[259];
                if (v32 >= v6[260])
                {
                  v33 = sub_82143C(v6 + 258, &v36, &v35);
                }

                else
                {
                  sub_683F24(v6[259], &v36, 1);
                  v33 = v32 + 432;
                  v6[259] = v32 + 432;
                }

                v8 = 0;
                goto LABEL_43;
              }

              v8 = 0;
              goto LABEL_12;
            }
          }

          else
          {
            if (v13 < 0x9B)
            {
              goto LABEL_23;
            }

            v14 = v12[77];
            if (!v14 || (*&v11[v14] & 0x80) == 0)
            {
              goto LABEL_23;
            }
          }

          v16 = sub_4D23F8(a2, v7, v10);
          v35 = v36 + v16;
          v34 = 1;
          v17 = v6[259];
          if (v17 >= v6[260])
          {
            v33 = sub_8212D8(v6 + 258, &v35, &v34);
LABEL_43:
            v6[259] = v33;
            goto LABEL_12;
          }

          sub_683F24(v6[259], &v35, 1);
          v6[259] = v17 + 432;
          v6[259] = v17 + 432;
LABEL_12:
          result = sub_4D23F8(a2, v7, v18);
          v36 += result;
          --v7;
        }

        while (v7 > v6[5]);
      }
    }
  }

  return result;
}

void sub_81F310(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = sub_578320((a2 + 1104), a3);
  v4 = *(v3 + 2064);
  v5 = *(v3 + 2072);
  if (v5 - v4 < 1)
  {
    v10 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0x84BDA12F684BDA13 * ((v5 - v4) >> 4);
    while (1)
    {
      v7 = operator new(432 * v6, &std::nothrow);
      if (v7)
      {
        break;
      }

      v8 = v6 >> 1;
      v9 = v6 > 1;
      v6 >>= 1;
      if (!v9)
      {
        v10 = 0;
        v6 = v8;
        goto LABEL_8;
      }
    }

    v10 = v7;
  }

LABEL_8:
  sub_835BE0(v4, v5, &v11, 0x84BDA12F684BDA13 * ((v5 - v4) >> 4), v10, v6);
  if (v10)
  {
    operator delete(v10);
  }
}

void sub_81F3F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_81F408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_69CCC0(a2))
  {
    v6 = (*(a2 + 1104) + 2616 * a3);
    if (v6[24].n128_u8[0] == 5)
    {
      v7 = v6[10].n128_u32[0];
      if (v7 - 25 <= 0x3F && ((1 << (v7 - 25)) & 0x9000000000000001) != 0 || v7 == 17)
      {
        v10 = sub_4D2130(a2);
        v11 = *(v10 + 24);
        result = *(v10 + 8);
        v6[138] = result;
        v6[139].n128_u64[0] = v11;
      }

      else
      {
        if (v7 - 82 >= 3 && ((v12 = v7 > 0x27, v13 = (1 << v7) & 0x8600050000, !v12) ? (v14 = v13 == 0) : (v14 = 1), v14))
        {
          sub_69CA78(a2, v6[1].n128_u64[1] - 1, &v15);
        }

        else
        {
          sub_69AC34(a2, &v15);
        }

        result = v15;
        v6[139].n128_u64[0] = v16;
        v6[138] = result;
      }
    }
  }

  return result;
}

void sub_81F50C(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*(a2 + 376) != 1)
  {
    return;
  }

  v6 = sub_4D1F50(a3, *(a2 + 16));
  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  v53[0] = *v6;
  v53[1] = v8;
  v54 = v7;
  v9 = sub_4D1F50(a3, *(a2 + 24));
  v10 = (*&v53[0] - **&v53[0]);
  v11 = *v10;
  if (!BYTE6(v54))
  {
    if (v11 < 0x4B)
    {
      goto LABEL_9;
    }

    v12 = v10[37];
    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_8:
    v13 = *(*&v53[0] + v12);
    goto LABEL_10;
  }

  if (v11 >= 0x49)
  {
    v12 = v10[36];
    if (v12)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  v13 = -1;
LABEL_10:
  v14 = (*v9 - **v9);
  v15 = *v14;
  v40 = a2;
  if (*(v9 + 38))
  {
    if (v15 < 0x4B || (v16 = v14[37]) == 0)
    {
LABEL_17:
      v17 = 0xFFFF;
      goto LABEL_18;
    }
  }

  else
  {
    if (v15 < 0x49)
    {
      goto LABEL_17;
    }

    v16 = v14[36];
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  v17 = *(*v9 + v16);
LABEL_18:
  sub_6D34C0(*a1, v53, 1, &v51);
  v18 = *v51;
  v19 = v51[1];
  if (*v51 == v19)
  {
    goto LABEL_75;
  }

  v20 = v13 + 18000;
  if (((v13 + 18000) >> 5) >= 0x465u)
  {
    v20 = v13 - 18000;
  }

  v21 = v17 - v20;
  if (v21 > 18000)
  {
    v21 -= 36000;
  }

  if (v21 < -17999)
  {
    v21 += 36000;
  }

  v22 = fabs(v21 / 100.0);
  while (1)
  {
    v23 = a1[2];
    v24 = *(*(v18 + 8) - 8);
    v25 = sub_2B51D8(v23, v24 & 0xFFFFFFFFFFFFLL);
    if (*(v23 + 7772) == 1)
    {
      sub_30C50C(v23 + 3896, v24, 0);
    }

    sub_31D7E8(v23, v24 & 0xFFFFFFFFFFFFLL, 1);
    v26 = (*&v53[0] - **&v53[0]);
    v27 = *v26;
    if (BYTE6(v54))
    {
      if (v27 >= 0x49)
      {
        v28 = v26[36];
        if (v28)
        {
          goto LABEL_36;
        }
      }
    }

    else if (v27 >= 0x4B)
    {
      v28 = v26[37];
      if (v28)
      {
LABEL_36:
        v29 = *(*&v53[0] + v28);
        v30 = (v25 - *v25);
        v31 = *v30;
        if ((v24 & 0xFF000000000000) != 0)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }
    }

    v29 = -1;
    v30 = (v25 - *v25);
    v31 = *v30;
    if ((v24 & 0xFF000000000000) != 0)
    {
LABEL_41:
      if (v31 >= 0x4B)
      {
        v32 = v30[37];
        if (v32)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_44;
    }

LABEL_37:
    if (v31 >= 0x49)
    {
      v32 = v30[36];
      if (v32)
      {
LABEL_43:
        v33 = *(v25 + v32);
        goto LABEL_45;
      }
    }

LABEL_44:
    v33 = 0xFFFF;
LABEL_45:
    v34 = v29 + 18000;
    v35 = v29 - 18000;
    if ((v34 >> 5) < 0x465u)
    {
      v35 = v34;
    }

    v36 = v33 - v35;
    if (v36 > 18000)
    {
      v36 -= 36000;
    }

    if (v36 < -17999)
    {
      v36 += 36000;
    }

    if (fabs(v36 / 100.0) < v22 || !sub_81FA04(*(v18 + 24)))
    {
      goto LABEL_27;
    }

    sub_62AFEC(*(*(v18 + 8) - 8) & 0xFFFFFFFFFFFFFFLL, a1[2], v41);
    if (sub_734C10(v41))
    {
      v37 = *(v40 + 392);
      v38 = *(v40 + 400);
      if (v37 != v38)
      {
        while (!sub_734D94(v37, v41))
        {
          v37 += 19;
          if (v37 == v38)
          {
            v37 = v38;
            break;
          }
        }

        v38 = *(v40 + 400);
      }

      if (v37 == v38)
      {
        break;
      }
    }

    if (v50 < 0)
    {
      operator delete(v49);
      if ((v48 & 0x80000000) == 0)
      {
LABEL_62:
        if ((v46 & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_67;
      }
    }

    else if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    operator delete(v47);
    if ((v46 & 0x80000000) == 0)
    {
LABEL_63:
      if (v44 < 0)
      {
        goto LABEL_26;
      }

      goto LABEL_68;
    }

LABEL_67:
    operator delete(v45);
    if (v44 < 0)
    {
LABEL_26:
      operator delete(__p);
      if (v42 < 0)
      {
        goto LABEL_69;
      }

      goto LABEL_27;
    }

LABEL_68:
    if (v42 < 0)
    {
LABEL_69:
      operator delete(v41[0]);
    }

LABEL_27:
    v18 += 248;
    if (v18 == v19)
    {
      goto LABEL_75;
    }
  }

  sub_52CB8C((v40 + 464), v41);
  if (v50 < 0)
  {
    operator delete(v49);
    if (v48 < 0)
    {
      goto LABEL_80;
    }

LABEL_72:
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_81:
    operator delete(v45);
    if (v44 < 0)
    {
      goto LABEL_82;
    }

LABEL_74:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_83:
    operator delete(v41[0]);
    v39 = v52;
    if (v52)
    {
LABEL_76:
      if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v39->__on_zero_shared)(v39);
        std::__shared_weak_count::__release_weak(v39);
      }
    }
  }

  else
  {
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_72;
    }

LABEL_80:
    operator delete(v47);
    if (v46 < 0)
    {
      goto LABEL_81;
    }

LABEL_73:
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

LABEL_82:
    operator delete(__p);
    if (v42 < 0)
    {
      goto LABEL_83;
    }

LABEL_75:
    v39 = v52;
    if (v52)
    {
      goto LABEL_76;
    }
  }
}

void sub_81F9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_3E5388(&a10);
  sub_1F1A8(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_81FA60(uint64_t a1, void *a2, int64x2_t *a3)
{
  v5 = a3[1].u64[1];
  if (v5 >= sub_4D1DC0(a2))
  {
    return 0;
  }

  v6 = a3[10].u32[0];
  v7 = v6 - 25 > 0x3F || ((1 << (v6 - 25)) & 0x9000000000000001) == 0;
  v8 = !v7 || v6 == 17;
  if (v8 || v6 - 82 < 3 || v6 <= 0x27 && ((1 << v6) & 0x8600050000) != 0)
  {
    return 0;
  }

  if (v6 - 22 < 3)
  {
    return 0;
  }

  if ((v6 & 0xFFFFFFFE) == 6)
  {
    return 0;
  }

  if (v6 - 41 < 0x13)
  {
    return 0;
  }

  v10.i64[0] = -1;
  v10.i64[1] = -1;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(a3[39], v10), vceqq_s64(a3[40], v10))))) & 1) != 0 || (a3[41].i64[0] & a3[41].i64[1]) != -1 || a3[42].i64[0] != -1)
  {
    return 0;
  }

  v11 = sub_4D1F50(a2, a3[1].i64[1]);

  return sub_81FB94(v11);
}

uint64_t sub_81FB94(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (v3 < 0x9B)
  {
    if (v3 < 0x2F)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (!v2[77] || (v4 = *&v1[v2[77]], (v4 & 0x200000) != 0) || ((v5 = *(a1 + 39), result = 1, (v5 & 0x20) != 0) ? (v7 = 1) : (v7 = 2), (v4 & v7) == 0))
  {
LABEL_10:
    v8 = v2[23];
    if (v8)
    {
      v9 = v1[v8];
      if (v9 > 42)
      {
        if (v9 != 43)
        {
          if (v9 == 44)
          {
            return 2;
          }

          if (v9 == 48)
          {
            return 4;
          }

          goto LABEL_22;
        }
      }

      else if (v9 != 6)
      {
        if (v9 == 8)
        {
          return 5;
        }

        if (v9 != 12)
        {
LABEL_22:
          if (v9 == 36)
          {
            return 6;
          }

          else
          {
            return 0;
          }
        }
      }

      return 3;
    }

    return 0;
  }

  return result;
}

void sub_81FC60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_588E0(*(a1 + 3904));
  v7 = sub_5FC5C();
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      if (*(v6 + 48) != 5)
      {
        sub_5AF20();
      }

      v9 = *(v6 + 40);
      HIBYTE(v19) = 5;
      strcpy(__p, "scope");
      v10 = sub_5F8FC(v9, __p);
      v11 = *(v10 + 23);
      if (v11 < 0)
      {
        if (v10[1] == 4)
        {
          v10 = *v10;
LABEL_11:
          v12 = *v10 == 1885697139;
          if (SHIBYTE(v19) < 0)
          {
            goto LABEL_14;
          }

          goto LABEL_15;
        }
      }

      else if (v11 == 4)
      {
        goto LABEL_11;
      }

      v12 = 0;
      if (SHIBYTE(v19) < 0)
      {
LABEL_14:
        operator delete(__p[0]);
      }

LABEL_15:
      if (v12)
      {
        sub_8217E0(a1, a2, a3, v9, v20);
        sub_8219E0(a1, v6 + 16, v20, (a2 + 1096), __p);
        if (!sub_5FC6C(__p))
        {
          v13 = sub_578320((a2 + 1104), a3);
          sub_821CA0(v13 + 2232, __p, v6 + 16);
        }

        v14 = v19;
        if (v19)
        {
          do
          {
            v16 = *v14;
            v17 = *(v14 + 12);
            if (v17 != -1)
            {
              (off_266D438[v17])(&v22, v14 + 5);
            }

            *(v14 + 12) = -1;
            if (*(v14 + 39) < 0)
            {
              operator delete(v14[2]);
            }

            operator delete(v14);
            v14 = v16;
          }

          while (v16);
        }

        v15 = __p[0];
        __p[0] = 0;
        if (v15)
        {
          operator delete(v15);
        }

        if (v21 < 0)
        {
          operator delete(v20[0]);
        }
      }

      v6 = *v6;
    }

    while (v6 != v8);
  }
}

void sub_81FE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_81FE98(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_588E0(*(a1 + 3904));
  v7 = sub_5FC5C();
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      if (*(v6 + 48) != 5)
      {
        sub_5AF20();
      }

      v9 = *(v6 + 40);
      HIBYTE(v19) = 5;
      strcpy(__p, "scope");
      v10 = sub_5F8FC(v9, __p);
      v11 = *(v10 + 23);
      if (v11 < 0)
      {
        if (v10[1] == 4)
        {
          v10 = *v10;
LABEL_11:
          v12 = *v10 == 1885697139;
          if (SHIBYTE(v19) < 0)
          {
            goto LABEL_14;
          }

          goto LABEL_15;
        }
      }

      else if (v11 == 4)
      {
        goto LABEL_11;
      }

      v12 = 0;
      if (SHIBYTE(v19) < 0)
      {
LABEL_14:
        operator delete(__p[0]);
      }

LABEL_15:
      if (v12)
      {
        sub_8221C4(a1, a2, a3, v9, v20);
        sub_8223C4(a1, v6 + 16, v20, (a2 + 1096), __p);
        if (!sub_5FC6C(__p))
        {
          v13 = sub_578320((a2 + 1104), a3);
          sub_821CA0(v13 + 2232, __p, v6 + 16);
        }

        v14 = v19;
        if (v19)
        {
          do
          {
            v16 = *v14;
            v17 = *(v14 + 12);
            if (v17 != -1)
            {
              (off_266D438[v17])(&v22, v14 + 5);
            }

            *(v14 + 12) = -1;
            if (*(v14 + 39) < 0)
            {
              operator delete(v14[2]);
            }

            operator delete(v14);
            v14 = v16;
          }

          while (v16);
        }

        v15 = __p[0];
        __p[0] = 0;
        if (v15)
        {
          operator delete(v15);
        }

        if (v21 < 0)
        {
          operator delete(v20[0]);
        }
      }

      v6 = *v6;
    }

    while (v6 != v8);
  }
}

void sub_82008C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_8200D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_588E0(*(a1 + 3904));
  v7 = sub_5FC5C();
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      if (*(v6 + 48) != 5)
      {
        sub_5AF20();
      }

      v9 = *(v6 + 40);
      HIBYTE(v19) = 5;
      strcpy(__p, "scope");
      v10 = sub_5F8FC(v9, __p);
      v11 = *(v10 + 23);
      if (v11 < 0)
      {
        if (v10[1] == 4)
        {
          v10 = *v10;
LABEL_11:
          v12 = *v10 == 1885697139;
          if (SHIBYTE(v19) < 0)
          {
            goto LABEL_14;
          }

          goto LABEL_15;
        }
      }

      else if (v11 == 4)
      {
        goto LABEL_11;
      }

      v12 = 0;
      if (SHIBYTE(v19) < 0)
      {
LABEL_14:
        operator delete(__p[0]);
      }

LABEL_15:
      if (v12)
      {
        sub_822684(a1, a2, a3, v9, v20);
        sub_822884(a1, v6 + 16, v20, (a2 + 1096), __p);
        if (!sub_5FC6C(__p))
        {
          v13 = sub_578320((a2 + 1104), a3);
          sub_821CA0(v13 + 2232, __p, v6 + 16);
        }

        v14 = v19;
        if (v19)
        {
          do
          {
            v16 = *v14;
            v17 = *(v14 + 12);
            if (v17 != -1)
            {
              (off_266D438[v17])(&v22, v14 + 5);
            }

            *(v14 + 12) = -1;
            if (*(v14 + 39) < 0)
            {
              operator delete(v14[2]);
            }

            operator delete(v14);
            v14 = v16;
          }

          while (v16);
        }

        v15 = __p[0];
        __p[0] = 0;
        if (v15)
        {
          operator delete(v15);
        }

        if (v21 < 0)
        {
          operator delete(v20[0]);
        }
      }

      v6 = *v6;
    }

    while (v6 != v8);
  }
}

void sub_8202C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_820308(uint64_t *a1, uint64_t a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x97B425ED097B42)
  {
    sub_1794();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 4);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 4) >= 0x4BDA12F684BDA1)
  {
    v5 = 0x97B425ED097B42;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x97B425ED097B42)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 16 * ((a1[1] - *a1) >> 4);
  sub_5F3168(v11, a2);
  v6 = 432 * v2 + 432;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_8204B0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_820448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_82045C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_82045C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 432;
    sub_5941F8(i - 432);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_8204B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      *(a4 + 32) = *(v6 + 32);
      v8 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 40) = 0;
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 72) = *(v6 + 72);
      v9 = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 80) = v9;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      v10 = *(v6 + 104);
      *(a4 + 120) = *(v6 + 120);
      *(a4 + 104) = v10;
      *(v6 + 112) = 0;
      *(v6 + 120) = 0;
      *(v6 + 104) = 0;
      *(a4 + 128) = *(v6 + 128);
      v11 = *(v6 + 136);
      *(a4 + 152) = *(v6 + 152);
      *(a4 + 136) = v11;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 136) = 0;
      v12 = *(v6 + 160);
      *(a4 + 169) = *(v6 + 169);
      *(a4 + 160) = v12;
      *(a4 + 200) = 0;
      *(a4 + 208) = 0;
      *(a4 + 192) = 0;
      *(a4 + 192) = *(v6 + 192);
      *(a4 + 208) = *(v6 + 208);
      *(v6 + 192) = 0;
      *(v6 + 200) = 0;
      *(v6 + 208) = 0;
      v13 = *(v6 + 216);
      v14 = *(v6 + 248);
      *(a4 + 232) = *(v6 + 232);
      *(a4 + 216) = v13;
      *(a4 + 248) = v14;
      *(a4 + 256) = 0;
      *(a4 + 264) = 0;
      *(a4 + 272) = 0;
      *(a4 + 256) = *(v6 + 256);
      *(a4 + 272) = *(v6 + 272);
      *(v6 + 256) = 0;
      *(v6 + 264) = 0;
      *(v6 + 272) = 0;
      v15 = *(v6 + 280);
      *(a4 + 296) = *(v6 + 296);
      *(a4 + 280) = v15;
      *(v6 + 288) = 0;
      *(v6 + 296) = 0;
      *(v6 + 280) = 0;
      *(a4 + 304) = *(v6 + 304);
      v16 = *(v6 + 312);
      *(a4 + 328) = *(v6 + 328);
      *(a4 + 312) = v16;
      *(v6 + 320) = 0;
      *(v6 + 328) = 0;
      *(v6 + 312) = 0;
      *(a4 + 336) = *(v6 + 336);
      *(a4 + 344) = *(v6 + 344);
      v17 = *(v6 + 352);
      *(a4 + 368) = *(v6 + 368);
      *(a4 + 352) = v17;
      *(v6 + 360) = 0;
      *(v6 + 368) = 0;
      *(v6 + 352) = 0;
      v18 = *(v6 + 376);
      *(a4 + 392) = *(v6 + 392);
      *(a4 + 376) = v18;
      *(v6 + 384) = 0;
      *(v6 + 392) = 0;
      *(v6 + 376) = 0;
      *(a4 + 400) = *(v6 + 400);
      v19 = *(v6 + 408);
      *(a4 + 424) = *(v6 + 424);
      *(a4 + 408) = v19;
      *(v6 + 416) = 0;
      *(v6 + 424) = 0;
      *(v6 + 408) = 0;
      v6 += 432;
      a4 += 432;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_5941F8(v5) + 432;
    }
  }
}

uint64_t sub_8206C4(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4, char *a5)
{
  v5 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x97B425ED097B42)
  {
    sub_1794();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 4);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 4) >= 0x4BDA12F684BDA1)
  {
    v8 = 0x97B425ED097B42;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x97B425ED097B42)
    {
      operator new();
    }

    sub_1808();
  }

  sub_683F20(16 * ((a1[1] - *a1) >> 4), a2, *a3, *a4, *a5);
  v9 = a1[1];
  v10 = 432 * v5 + *a1 - v9;
  sub_8204B0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = 432 * v5 + 432;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return 432 * v5 + 432;
}

void sub_82082C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_82045C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_820840(uint64_t *a1, __int128 *a2, void *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v4 = v3 + 1;
  if (v3 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v6 = 0x199999999999999;
  }

  else
  {
    v6 = v4;
  }

  v13 = a1;
  if (v6)
  {
    if (v6 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v10 = 160 * v3;
  v11 = 160 * v3;
  v12 = 0;
  *(sub_5139E8(160 * v3, a2) + 152) = *a3;
  v11 += 160;
  sub_820988(a1, &__p);
  v7 = a1[1];
  sub_514094(&__p, v10);
  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_820974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_51405C(va);
  _Unwind_Resume(a1);
}

void sub_820988(uint64_t *a1, void *a2)
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
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
      *(v9 + 24) = *(v8 + 24);
      v11 = *(v8 + 32);
      *(v9 + 48) = *(v8 + 48);
      *(v9 + 32) = v11;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v9 + 56) = *(v8 + 56);
      *(v9 + 64) = *(v8 + 64);
      v12 = *(v8 + 72);
      *(v9 + 88) = *(v8 + 88);
      *(v9 + 72) = v12;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 72) = 0;
      v13 = *(v8 + 96);
      *(v9 + 112) = *(v8 + 112);
      *(v9 + 96) = v13;
      *(v8 + 104) = 0;
      *(v8 + 112) = 0;
      *(v8 + 96) = 0;
      *(v9 + 120) = *(v8 + 120);
      v14 = *(v8 + 128);
      *(v9 + 144) = *(v8 + 144);
      *(v9 + 128) = v14;
      *(v8 + 136) = 0;
      *(v8 + 144) = 0;
      *(v8 + 128) = 0;
      *(v9 + 152) = *(v8 + 152);
      v8 += 160;
      v9 += 160;
    }

    while (v8 != v6);
  }

  sub_513ED0(a1, v5, v6);
  a2[1] = v7;
  v15 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v15;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

uint64_t sub_820B08(void ***a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * (a1[1] - *a1);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * (a1[2] - *a1) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * (a1[2] - *a1);
  }

  if ((0x4EC4EC4EC4EC4EC5 * (a1[2] - *a1)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 8 * (a1[1] - *a1);
  v7 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v7;
  *(v18 + 40) = 0;
  *(v18 + 48) = 0;
  *(v18 + 32) = 0;
  sub_5F3370(104 * v2 + 32, *(a2 + 32), *(a2 + 40), 0xD37A6F4DE9BD37A7 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  *(v18 + 56) = *(a2 + 56);
  *(v18 + 72) = *(a2 + 72);
  *(v18 + 81) = *(a2 + 81);
  v8 = 104 * v2 + 104;
  v9 = *a1;
  v10 = a1[1];
  v11 = v18 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v18 + *a1 - v10;
    do
    {
      v14 = *(v12 + 1);
      *v13 = *v12;
      *(v13 + 16) = v14;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 32) = 0;
      *(v13 + 32) = *(v12 + 2);
      *(v13 + 48) = v12[6];
      v12[4] = 0;
      v12[5] = 0;
      v12[6] = 0;
      v15 = *(v12 + 7);
      v16 = *(v12 + 9);
      *(v13 + 81) = *(v12 + 81);
      *(v13 + 72) = v16;
      *(v13 + 56) = v15;
      v12 += 13;
      v13 += 104;
    }

    while (v12 != v10);
    do
    {
      v19 = v9 + 4;
      sub_5ECC44(&v19);
      v9 += 13;
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

uint64_t sub_820D14(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 184)
    {
      if (*(v4 - 9) < 0)
      {
        operator delete(*(v4 - 32));
        if ((*(v4 - 41) & 0x80000000) == 0)
        {
LABEL_7:
          v6 = *(v4 - 80);
          if (v6 == -1)
          {
            goto LABEL_4;
          }

LABEL_11:
          (off_266D410[v6])(&v8, v4 - 112);
          goto LABEL_4;
        }
      }

      else if ((*(v4 - 41) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v4 - 64));
      v6 = *(v4 - 80);
      if (v6 != -1)
      {
        goto LABEL_11;
      }

LABEL_4:
      *(v4 - 80) = -1;
    }
  }

  return a1;
}

uint64_t sub_820DEC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    v5 = (i - 72);
    sub_5ECC44(&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_820E54(void **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v1)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 4));
      if (*(v3 - 41) < 0)
      {
LABEL_10:
        operator delete(*(v3 - 8));
        v5 = *(v3 - 20);
        if (v5 == -1)
        {
          goto LABEL_4;
        }

LABEL_11:
        (off_266D410[v5])(&v6, v3 - 14);
        goto LABEL_4;
      }
    }

    else if (*(v3 - 41) < 0)
    {
      goto LABEL_10;
    }

    v5 = *(v3 - 20);
    if (v5 != -1)
    {
      goto LABEL_11;
    }

LABEL_4:
    *(v3 - 20) = -1;
    v3 -= 23;
  }

  while (v3 != v1);
  v4 = *a1;
LABEL_13:
  a1[1] = v1;
  operator delete(v4);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_820F38(uint64_t *a1, __int128 *a2, __int128 *a3, void *a4)
{
  v4 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x97B425ED097B42)
  {
    sub_1794();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 4);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 4) >= 0x4BDA12F684BDA1)
  {
    v7 = 0x97B425ED097B42;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x97B425ED097B42)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 16 * ((a1[1] - *a1) >> 4);
  sub_68427C(v13, a2, a3, a4);
  v8 = 432 * v4 + 432;
  v9 = a1[1];
  v10 = v13 + *a1 - v9;
  sub_8204B0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v8;
}

void sub_821090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_82045C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8210A4(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    if (!a3)
    {
      if (a2 >= sub_4D1DC0(a1))
      {
        return 0;
      }

      while (1)
      {
        v16 = sub_4D1F50(a1, v6);
        v17 = (*v16 - **v16);
        v18 = *v17;
        if (*(v16 + 38))
        {
          if (v18 >= 0x9B)
          {
            v19 = v17[77];
            if (v19)
            {
              v20 = 64;
              goto LABEL_19;
            }
          }
        }

        else if (v18 >= 0x9B)
        {
          v19 = v17[77];
          if (v19)
          {
            v20 = 128;
LABEL_19:
            if ((*(*v16 + v19) & v20) != 0)
            {
              return 1;
            }
          }
        }

        if (++v6 >= sub_4D1DC0(a1))
        {
          return 0;
        }
      }
    }

    while (1)
    {
      v8 = sub_4D1DC0(a1);
      v9 = sub_4D1DC0(a3);
      if (v6 >= v8 || a4 >= v9)
      {
        if (v6 < v8 == a4 < v9)
        {
          return 0;
        }
      }

      else
      {
        v10 = sub_4D1F50(a1, v6);
        if (v10 == sub_4D1F50(a3, a4))
        {
          return 0;
        }
      }

      v11 = sub_4D1F50(a1, v6);
      v12 = (*v11 - **v11);
      v13 = *v12;
      if (*(v11 + 38))
      {
        if (v13 < 0x9B)
        {
          goto LABEL_6;
        }

        v14 = v12[77];
        if (!v14)
        {
          goto LABEL_6;
        }

        v15 = 64;
      }

      else
      {
        if (v13 < 0x9B)
        {
          goto LABEL_6;
        }

        v14 = v12[77];
        if (!v14)
        {
          goto LABEL_6;
        }

        v15 = 128;
      }

      if ((*(*v11 + v14) & v15) != 0)
      {
        return 1;
      }

LABEL_6:
      ++v6;
    }
  }

  if (!a3 || a4 >= sub_4D1DC0(a3))
  {
    return 0;
  }

  while (1)
  {
    v22 = sub_4D1F50(0, v6);
    v23 = *v22;
    v24 = (*v22 - **v22);
    v25 = *v24;
    if (!*(v22 + 38))
    {
      break;
    }

    if (v25 >= 0x9B)
    {
      v26 = v24[77];
      if (v26)
      {
        if ((*&v23[v26] & 0x40) != 0)
        {
          return 1;
        }
      }
    }

LABEL_31:
    ++v6;
    if (a4 >= sub_4D1DC0(a3))
    {
      return 0;
    }
  }

  if (v25 < 0x9B)
  {
    goto LABEL_31;
  }

  v27 = v24[77];
  if (!v27 || (*&v23[v27] & 0x80) == 0)
  {
    goto LABEL_31;
  }

  return 1;
}

uint64_t sub_8212D8(uint64_t *a1, void *a2, char *a3)
{
  v3 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x97B425ED097B42)
  {
    sub_1794();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 4);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 4) >= 0x4BDA12F684BDA1)
  {
    v6 = 0x97B425ED097B42;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x97B425ED097B42)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 16 * ((a1[1] - *a1) >> 4);
  sub_683F24(v12, a2, *a3);
  v7 = 432 * v3 + 432;
  v8 = a1[1];
  v9 = 432 * v3 + *a1 - v8;
  sub_8204B0(a1, *a1, v8, v12 + *a1 - v8);
  v10 = *a1;
  *a1 = v9;
  a1[1] = v7;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_821428(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_82045C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_82143C(uint64_t *a1, void *a2, char *a3)
{
  v3 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x97B425ED097B42)
  {
    sub_1794();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 4);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 4) >= 0x4BDA12F684BDA1)
  {
    v6 = 0x97B425ED097B42;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x97B425ED097B42)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 16 * ((a1[1] - *a1) >> 4);
  sub_683F24(v12, a2, *a3);
  v7 = 432 * v3 + 432;
  v8 = a1[1];
  v9 = 432 * v3 + *a1 - v8;
  sub_8204B0(a1, *a1, v8, v12 + *a1 - v8);
  v10 = *a1;
  *a1 = v9;
  a1[1] = v7;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_82158C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_82045C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8215A0(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    if (!a3)
    {
      if (a2 >= sub_4D1DC0(a1))
      {
        return 0;
      }

      while (1)
      {
        v16 = sub_4D1F50(a1, v6);
        v17 = (*v16 - **v16);
        v18 = *v17;
        if ((*(v16 + 39) & 0x20) != 0)
        {
          if (v18 >= 0x9B)
          {
            v19 = v17[77];
            if (v19)
            {
              v20 = 128;
LABEL_19:
              if ((*(*v16 + v19) & v20) != 0)
              {
                return 1;
              }
            }
          }
        }

        else if (v18 >= 0x9B)
        {
          v19 = v17[77];
          if (v19)
          {
            v20 = 64;
            goto LABEL_19;
          }
        }

        if (++v6 >= sub_4D1DC0(a1))
        {
          return 0;
        }
      }
    }

    while (1)
    {
      v8 = sub_4D1DC0(a1);
      v9 = sub_4D1DC0(a3);
      if (v6 >= v8 || a4 >= v9)
      {
        if (v6 < v8 == a4 < v9)
        {
          return 0;
        }
      }

      else
      {
        v10 = sub_4D1F50(a1, v6);
        if (v10 == sub_4D1F50(a3, a4))
        {
          return 0;
        }
      }

      v11 = sub_4D1F50(a1, v6);
      v12 = (*v11 - **v11);
      v13 = *v12;
      if ((*(v11 + 39) & 0x20) != 0)
      {
        if (v13 < 0x9B)
        {
          goto LABEL_6;
        }

        v14 = v12[77];
        if (!v14)
        {
          goto LABEL_6;
        }

        v15 = 128;
      }

      else
      {
        if (v13 < 0x9B)
        {
          goto LABEL_6;
        }

        v14 = v12[77];
        if (!v14)
        {
          goto LABEL_6;
        }

        v15 = 64;
      }

      if ((*(*v11 + v14) & v15) != 0)
      {
        return 1;
      }

LABEL_6:
      ++v6;
    }
  }

  if (!a3 || a4 >= sub_4D1DC0(a3))
  {
    return 0;
  }

  while (1)
  {
    v22 = sub_4D1F50(0, v6);
    v23 = *v22;
    v24 = (*v22 - **v22);
    v25 = *v24;
    if ((*(v22 + 39) & 0x20) != 0)
    {
      break;
    }

    if (v25 >= 0x9B)
    {
      v26 = v24[77];
      if (v26)
      {
        if ((*&v23[v26] & 0x40) != 0)
        {
          return 1;
        }
      }
    }

LABEL_31:
    ++v6;
    if (a4 >= sub_4D1DC0(a3))
    {
      return 0;
    }
  }

  if (v25 < 0x9B)
  {
    goto LABEL_31;
  }

  v27 = v24[77];
  if (!v27 || (*&v23[v27] & 0x80) == 0)
  {
    goto LABEL_31;
  }

  return 1;
}

void sub_8217E0(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v22[0] = 0;
  v22[1] = 0;
  HIBYTE(__p[2]) = 21;
  v23 = 0;
  strcpy(__p, "feature_polygon_usage");
  v10 = sub_5FC3C(a4, __p);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_17;
  }

  v16 = v10;
  operator delete(__p[0]);
  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_3:
  HIBYTE(v20[2]) = 21;
  strcpy(v20, "feature_polygon_usage");
  v11 = sub_5F8FC(a4, v20);
  v12 = *(sub_50EA30(a2 + 138, a3) + 40);
  v13 = sub_50EA30(a2 + 138, a3);
  sub_6177A8(a1, a2, v12, *(v13 + 16), v11, __p);
  *v22 = *__p;
  v23 = __p[2];
  HIBYTE(__p[2]) = 0;
  LOBYTE(__p[0]) = 0;
  if (SHIBYTE(v20[2]) < 0)
  {
    operator delete(v20[0]);
    v14 = SHIBYTE(v23);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
LABEL_5:
      if (v14 == 5)
      {
        v15 = v22;
        goto LABEL_12;
      }

LABEL_16:
      *a5 = *v22;
      *(a5 + 16) = v23;
      return;
    }
  }

  else
  {
    v14 = SHIBYTE(v23);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  if (v22[1] != dword_4 + 1)
  {
    goto LABEL_16;
  }

  v15 = v22[0];
LABEL_12:
  v17 = *v15;
  v18 = *(v15 + 4);
  if (v17 != 1819438967 || v18 != 100)
  {
    goto LABEL_16;
  }

LABEL_17:
  sub_821ADC(a1, a2, a3, a5);
  if (v14 < 0)
  {
    operator delete(v22[0]);
  }
}

void sub_8219A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p)
{
  if (v25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_8219E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t *a5@<X8>)
{
  sub_61756C(a1, a2, a3, v11);
  if (sub_5FC3C(v11, "any_mode"))
  {
    sub_41D60C(v11, *a4, 0, a5);
  }

  else
  {
    sub_5ADDC(a5, v11);
  }

  v7 = __p;
  if (__p)
  {
    do
    {
      v8 = *v7;
      v9 = *(v7 + 12);
      if (v9 != -1)
      {
        (off_266D438[v9])(&v13, v7 + 5);
      }

      *(v7 + 12) = -1;
      if (*(v7 + 39) < 0)
      {
        operator delete(v7[2]);
      }

      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v10 = v11[0];
  v11[0] = 0;
  if (v10)
  {
    operator delete(v10);
  }
}

void sub_821ADC(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_50EA30(a2 + 138, a3);
  v9 = sub_4D1F50(a2, *(v8 + 40));
  sub_4E51E0(*(a1 + 8), *(v9 + 32) | (*(v9 + 36) << 32), v22);
  v10 = sub_50EA30(a2 + 138, a3);
  v11 = sub_4D1F50(a2, *(v10 + 16));
  sub_4E51E0(*(a1 + 8), *(v11 + 32) | (*(v11 + 36) << 32), __p);
  v12 = SHIBYTE(v23);
  v13 = v22[1];
  if (v23 >= 0)
  {
    v14 = HIBYTE(v23);
  }

  else
  {
    v14 = v22[1];
  }

  v15 = v21;
  v16 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v15 = __p[1];
  }

  if (v14 == v15 && ((v17 = v22[0], v23 >= 0) ? (v18 = v22) : (v18 = v22[0]), (v21 & 0x80u) == 0 ? (v19 = __p) : (v19 = __p[0]), !memcmp(v18, v19, v14)))
  {
    if (v12 < 0)
    {
      sub_325C(a4, v17, v13);
      v16 = v21;
    }

    else
    {
      *a4 = *v22;
      *(a4 + 16) = v23;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  if ((v16 & 0x80) == 0)
  {
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v22[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v23) < 0)
  {
    goto LABEL_19;
  }
}

void sub_821C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
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

uint64_t sub_821CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    if (*(a3 + 23) != 15)
    {
      v4 = a3;
      if (*(a3 + 23) != 19)
      {
        goto LABEL_35;
      }

      goto LABEL_17;
    }

    if (*a3 != 0x5F63696666617274 || *(a3 + 7) != 0x736C616E6769735FLL)
    {
      if (*a3 != 0x5F63696666617274 || *(a3 + 7) != 0x736172656D61635FLL)
      {
        goto LABEL_35;
      }

LABEL_61:

      sub_5F3C84();
    }

LABEL_51:

    sub_5F3734();
  }

  if (*(a3 + 8) == 15 && **a3 == 0x5F63696666617274 && *(*a3 + 7) == 0x736C616E6769735FLL)
  {
    goto LABEL_51;
  }

  if (*(a3 + 8) == 15 && **a3 == 0x5F63696666617274 && *(*a3 + 7) == 0x736172656D61635FLL)
  {
    goto LABEL_61;
  }

  if (*(a3 + 8) != 19)
  {
    goto LABEL_35;
  }

  v4 = *a3;
LABEL_17:
  v7 = *v4;
  v8 = v4[1];
  v9 = *(v4 + 11);
  if (v7 == 0x6C616E6F69676572 && v8 == 0x726F73697664615FLL && v9 == 0x736569726F736976)
  {
    sub_5C2C14();
  }

LABEL_35:
  result = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v24);
  v15 = sub_4A5C(&v24, "Got unhandled feature_key: ", 27);
  v16 = *(a3 + 23);
  if (v16 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v16 >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = *(a3 + 8);
  }

  sub_4A5C(v15, v17, v18);
  if ((v34 & 0x10) != 0)
  {
    v20 = v33;
    if (v33 < v30)
    {
      v33 = v30;
      v20 = v30;
    }

    v21 = v29;
    v19 = v20 - v29;
    if (v20 - v29 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_65:
      sub_3244();
    }

LABEL_48:
    if (v19 >= 0x17)
    {
      operator new();
    }

    v23 = v19;
    if (v19)
    {
      memmove(&__p, v21, v19);
    }

    goto LABEL_56;
  }

  if ((v34 & 8) != 0)
  {
    v21 = v27;
    v19 = v28 - v27;
    if ((v28 - v27) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_65;
    }

    goto LABEL_48;
  }

  v19 = 0;
  v23 = 0;
LABEL_56:
  *(&__p + v19) = 0;
  sub_7E854(&__p, 3u);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  std::locale::~locale(&v26);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_822178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_8221C4(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v22[0] = 0;
  v22[1] = 0;
  HIBYTE(__p[2]) = 21;
  v23 = 0;
  strcpy(__p, "feature_polygon_usage");
  v10 = sub_5FC3C(a4, __p);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_17;
  }

  v16 = v10;
  operator delete(__p[0]);
  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_3:
  HIBYTE(v20[2]) = 21;
  strcpy(v20, "feature_polygon_usage");
  v11 = sub_5F8FC(a4, v20);
  v12 = *(sub_50EA30(a2 + 138, a3) + 40);
  v13 = sub_50EA30(a2 + 138, a3);
  sub_78DEE8(a1, a2, v12, *(v13 + 16), v11, __p);
  *v22 = *__p;
  v23 = __p[2];
  HIBYTE(__p[2]) = 0;
  LOBYTE(__p[0]) = 0;
  if (SHIBYTE(v20[2]) < 0)
  {
    operator delete(v20[0]);
    v14 = SHIBYTE(v23);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
LABEL_5:
      if (v14 == 5)
      {
        v15 = v22;
        goto LABEL_12;
      }

LABEL_16:
      *a5 = *v22;
      *(a5 + 16) = v23;
      return;
    }
  }

  else
  {
    v14 = SHIBYTE(v23);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  if (v22[1] != dword_4 + 1)
  {
    goto LABEL_16;
  }

  v15 = v22[0];
LABEL_12:
  v17 = *v15;
  v18 = *(v15 + 4);
  if (v17 != 1819438967 || v18 != 100)
  {
    goto LABEL_16;
  }

LABEL_17:
  sub_8224C0(a1, a2, a3, a5);
  if (v14 < 0)
  {
    operator delete(v22[0]);
  }
}

void sub_822384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p)
{
  if (v25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_8223C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t *a5@<X8>)
{
  sub_78DCAC(a1, a2, a3, v11);
  if (sub_5FC3C(v11, "any_mode"))
  {
    sub_41D60C(v11, *a4, 0, a5);
  }

  else
  {
    sub_5ADDC(a5, v11);
  }

  v7 = __p;
  if (__p)
  {
    do
    {
      v8 = *v7;
      v9 = *(v7 + 12);
      if (v9 != -1)
      {
        (off_266D438[v9])(&v13, v7 + 5);
      }

      *(v7 + 12) = -1;
      if (*(v7 + 39) < 0)
      {
        operator delete(v7[2]);
      }

      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v10 = v11[0];
  v11[0] = 0;
  if (v10)
  {
    operator delete(v10);
  }
}

void sub_8224C0(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_50EA30(a2 + 138, a3);
  v9 = sub_4D1F50(a2, *(v8 + 40));
  sub_4E51E0(*(a1 + 8), *(v9 + 32) | (*(v9 + 36) << 32), v22);
  v10 = sub_50EA30(a2 + 138, a3);
  v11 = sub_4D1F50(a2, *(v10 + 16));
  sub_4E51E0(*(a1 + 8), *(v11 + 32) | (*(v11 + 36) << 32), __p);
  v12 = SHIBYTE(v23);
  v13 = v22[1];
  if (v23 >= 0)
  {
    v14 = HIBYTE(v23);
  }

  else
  {
    v14 = v22[1];
  }

  v15 = v21;
  v16 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v15 = __p[1];
  }

  if (v14 == v15 && ((v17 = v22[0], v23 >= 0) ? (v18 = v22) : (v18 = v22[0]), (v21 & 0x80u) == 0 ? (v19 = __p) : (v19 = __p[0]), !memcmp(v18, v19, v14)))
  {
    if (v12 < 0)
    {
      sub_325C(a4, v17, v13);
      v16 = v21;
    }

    else
    {
      *a4 = *v22;
      *(a4 + 16) = v23;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  if ((v16 & 0x80) == 0)
  {
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v22[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v23) < 0)
  {
    goto LABEL_19;
  }
}

void sub_822638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
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

void sub_822684(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v22[0] = 0;
  v22[1] = 0;
  HIBYTE(__p[2]) = 21;
  v23 = 0;
  strcpy(__p, "feature_polygon_usage");
  v10 = sub_5FC3C(a4, __p);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_17;
  }

  v16 = v10;
  operator delete(__p[0]);
  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_3:
  HIBYTE(v20[2]) = 21;
  strcpy(v20, "feature_polygon_usage");
  v11 = sub_5F8FC(a4, v20);
  v12 = *(sub_50EA30(a2 + 138, a3) + 40);
  v13 = sub_50EA30(a2 + 138, a3);
  sub_7911F4(a1, a2, v12, *(v13 + 16), v11, __p);
  *v22 = *__p;
  v23 = __p[2];
  HIBYTE(__p[2]) = 0;
  LOBYTE(__p[0]) = 0;
  if (SHIBYTE(v20[2]) < 0)
  {
    operator delete(v20[0]);
    v14 = SHIBYTE(v23);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
LABEL_5:
      if (v14 == 5)
      {
        v15 = v22;
        goto LABEL_12;
      }

LABEL_16:
      *a5 = *v22;
      *(a5 + 16) = v23;
      return;
    }
  }

  else
  {
    v14 = SHIBYTE(v23);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  if (v22[1] != dword_4 + 1)
  {
    goto LABEL_16;
  }

  v15 = v22[0];
LABEL_12:
  v17 = *v15;
  v18 = *(v15 + 4);
  if (v17 != 1819438967 || v18 != 100)
  {
    goto LABEL_16;
  }

LABEL_17:
  sub_822980(a1, a2, a3, a5);
  if (v14 < 0)
  {
    operator delete(v22[0]);
  }
}

void sub_822844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p)
{
  if (v25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_822884(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t *a5@<X8>)
{
  sub_790FB8(a1, a2, a3, v11);
  if (sub_5FC3C(v11, "any_mode"))
  {
    sub_41D60C(v11, *a4, 0, a5);
  }

  else
  {
    sub_5ADDC(a5, v11);
  }

  v7 = __p;
  if (__p)
  {
    do
    {
      v8 = *v7;
      v9 = *(v7 + 12);
      if (v9 != -1)
      {
        (off_266D438[v9])(&v13, v7 + 5);
      }

      *(v7 + 12) = -1;
      if (*(v7 + 39) < 0)
      {
        operator delete(v7[2]);
      }

      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v10 = v11[0];
  v11[0] = 0;
  if (v10)
  {
    operator delete(v10);
  }
}

void sub_822980(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_50EA30(a2 + 138, a3);
  v9 = sub_4D1F50(a2, *(v8 + 40));
  sub_4E51E0(*(a1 + 8), *(v9 + 32) | ((*(v9 + 36) & 0x1FFFFFFF) << 32), v22);
  v10 = sub_50EA30(a2 + 138, a3);
  v11 = sub_4D1F50(a2, *(v10 + 16));
  sub_4E51E0(*(a1 + 8), *(v11 + 32) | ((*(v11 + 36) & 0x1FFFFFFF) << 32), __p);
  v12 = SHIBYTE(v23);
  v13 = v22[1];
  if (v23 >= 0)
  {
    v14 = HIBYTE(v23);
  }

  else
  {
    v14 = v22[1];
  }

  v15 = v21;
  v16 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v15 = __p[1];
  }

  if (v14 == v15 && ((v17 = v22[0], v23 >= 0) ? (v18 = v22) : (v18 = v22[0]), (v21 & 0x80u) == 0 ? (v19 = __p) : (v19 = __p[0]), !memcmp(v18, v19, v14)))
  {
    if (v12 < 0)
    {
      sub_325C(a4, v17, v13);
      v16 = v21;
    }

    else
    {
      *a4 = *v22;
      *(a4 + 16) = v23;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  if ((v16 & 0x80) == 0)
  {
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(v22[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v23) < 0)
  {
    goto LABEL_19;
  }
}

void sub_822AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
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

BOOL sub_822B44(_BYTE **a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*a2 == v2 || *(a2 + 241) != 1)
  {
    return 0;
  }

  v5 = *(*a1 + 2);
  v6 = *(v2 - 8);
  v7 = sub_2B51D8(v5, v6 & 0xFFFFFFFFFFFFLL);
  if (*(v5 + 7772) == 1)
  {
    sub_30C50C(v5 + 3896, v6, 0);
  }

  sub_31D7E8(v5, v6 & 0xFFFFFFFFFFFFLL, 1);
  if (*a1[1] == 1)
  {
    v8 = (v7 - *v7);
    v9 = *v8;
    if (v9 >= 0x2F)
    {
      if (v8[23] && *(v7 + v8[23]) == 23)
      {
        return 0;
      }

      if (v9 >= 0x9B)
      {
        v10 = v8[77];
        if (v10)
        {
          if ((*(v7 + v10) & 4) != 0)
          {
            return 0;
          }
        }
      }
    }
  }

  if (*a1[2] != 1)
  {
    if (*a1[4] == 1)
    {
      v12 = *(a2 + 24);
      if ((v12 - 11) <= 0x37)
      {
        if (((1 << (v12 - 11)) & 0x940000008A0400) != 0)
        {
          return 1;
        }

        if (v12 == 11)
        {
          v13 = *a1[5];
          return (v13 ^ 1) & 1;
        }
      }

      if (v12 == 2)
      {
        return 1;
      }
    }

    else
    {
      if (*a1[6] == 1)
      {
        return *(a2 + 24) == 4;
      }

      if (*a1[7] == 1)
      {
        if (*a1[8] != 1)
        {
          v17 = *(a2 + 24);

          return sub_71A37C(v17);
        }

        v15 = a1[5];
        v16 = *(a2 + 24);
        if (sub_71A340(v16))
        {
          return 1;
        }

        if (v16 == 11)
        {
          v13 = *v15;
          return (v13 ^ 1) & 1;
        }
      }
    }

    return 0;
  }

  v11 = *(a2 + 24);
  if ((v11 - 11) > 0x36)
  {
    return v11 == 1;
  }

  if (((1 << (v11 - 11)) & 0x4A000000450200) != 0)
  {
    return 1;
  }

  if (v11 == 11)
  {
    return *a1[3] & 1;
  }

  else
  {
    return v11 == 1;
  }
}

uint64_t sub_822E08(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    sub_1794();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 3) >= 0x84210842108421)
  {
    v5 = 0x108421084210842;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x108421084210842)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v14 = 248 * v2;
  v16 = 0;
  sub_5EF9A8(248 * v2, a2);
  v15 = 248 * v2 + 248;
  sub_7028CC(a1, &__p);
  v6 = a1[1];
  v7 = v14;
  while (1)
  {
    v8 = v15;
    if (v15 == v7)
    {
      break;
    }

    v9 = (v15 - 248);
    v15 -= 248;
    v10 = *(v8 - 208);
    if (v10)
    {
      *(v8 - 200) = v10;
      operator delete(v10);
    }

    v11 = *v9;
    if (*v9)
    {
      *(v8 - 240) = v11;
      operator delete(v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_822F70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_702A44(va);
  _Unwind_Resume(a1);
}

unint64_t sub_822F84(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 0xFFFFFFFE) == 0x3C)
  {
    return (*(*a1 + 160) & 0xFFFFFFFE) == 60;
  }

  v5 = *(*(a1 + 8) + 16);
  v6 = *(*(a2 + 8) - 8);
  v7 = sub_2B51D8(v5, v6 & 0xFFFFFFFFFFFFLL);
  if (*(v5 + 7772) == 1)
  {
    sub_30C50C(v5 + 3896, v6, 0);
  }

  sub_31D7E8(v5, v6 & 0xFFFFFFFFFFFFLL, 1);
  v8 = (v7 - *v7);
  if (*v8 < 0x2Fu || (v9 = v8[23]) == 0 || ((v10 = *(v7 + v9), v10 <= 0x2F) ? (v11 = ((1 << v10) & 0xE2E040048000) == 0) : (v11 = 1), v11))
  {
    if (*(a2 + 243) == 1)
    {
      return (**(a1 + 24) ^ 1) & 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v12 = **(a1 + 16);
    v13 = (v12 - *v12);
    if (*v13 >= 0x2Fu && (v14 = v13[23]) != 0 && (v15 = *(v12 + v14), v15 < 0x30))
    {
      return (0xE2E040048000uLL >> v15) & 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_823128(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v45 = (a2 - 104);
  v8 = a1;
LABEL_2:
  v9 = 1 - a4;
  while (1)
  {
    a1 = v8;
    v10 = v9;
    v11 = a2 - v8;
    v12 = 0x4EC4EC4EC4EC4EC5 * (v11 >> 3);
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:
          sub_823674(a1, (a1 + 104), v45);
          return;
        case 4uLL:
          sub_823BD8(a1, a1 + 104, a1 + 208, v45);
          return;
        case 5uLL:
          sub_823F50(a1, a1 + 104, a1 + 208, a1 + 312, v45);
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if (*(a2 - 12) < *(a1 + 8))
        {
          v49 = *a1;
          v51 = *(a1 + 16);
          v47 = *(a1 + 32);
          v29 = *(a1 + 48);
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          *(a1 + 32) = 0;
          v30 = *(a1 + 81);
          v31 = *(a1 + 72);
          v55 = *(a1 + 56);
          v56[0] = v31;
          *(v56 + 9) = v30;
          v32 = *(a2 - 104);
          *(a1 + 16) = *(a2 - 22);
          *a1 = v32;
          v33 = *(a2 - 84);
          *(a1 + 28) = *(a2 - 19);
          *(a1 + 20) = v33;
          sub_820E54((a1 + 32));
          v34 = a2 - 72;
          *(a1 + 32) = *(a2 - 72);
          *(a1 + 48) = *(a2 - 7);
          *(v34 + 1) = 0;
          *(v34 + 2) = 0;
          *v34 = 0;
          v35 = *(a2 - 3);
          v36 = *(a2 - 2);
          *(a1 + 81) = *(a2 - 23);
          *(a1 + 72) = v36;
          *(a1 + 56) = v35;
          *(a2 - 22) = v51;
          *(a2 - 104) = v49;
          *(a2 - 19) = HIDWORD(v51);
          *(a2 - 84) = *(&v51 + 4);
          sub_820E54(a2 - 9);
          *v34 = v47;
          *(a2 - 7) = v29;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v37 = v55;
          v38 = v56[0];
          *(a2 - 23) = *(v56 + 9);
          *(a2 - 2) = v38;
          *(a2 - 3) = v37;
          v57[0] = &v52;
          sub_5ECC44(v57);
        }

        return;
      }
    }

    if (v11 <= 2495)
    {
      if (a5)
      {
        sub_8243D0(a1, a2);
      }

      else
      {
        sub_824640(a1, a2);
      }

      return;
    }

    if (v9 == 1)
    {
      break;
    }

    v13 = v12 >> 1;
    v14 = a1 + 104 * (v12 >> 1);
    if (v11 < 0x3401)
    {
      sub_823674(v14, a1, v45);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_823674(a1, v14, v45);
      v15 = 104 * v13;
      v16 = (104 * v13 + a1 - 104);
      sub_823674((a1 + 104), v16, a2 - 13);
      sub_823674((a1 + 208), (a1 + 104 + v15), (a2 - 312));
      sub_823674(v16, v14, (a1 + 104 + v15));
      v48 = *a1;
      v50 = *(a1 + 16);
      v44 = *(a1 + 32);
      v17 = *(a1 + 48);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v18 = *(a1 + 81);
      v19 = *(a1 + 72);
      v55 = *(a1 + 56);
      v56[0] = v19;
      *(v56 + 9) = v18;
      v20 = *v14;
      *(a1 + 16) = *(v14 + 16);
      *a1 = v20;
      v21 = *(v14 + 28);
      *(a1 + 20) = *(v14 + 20);
      *(a1 + 28) = v21;
      sub_820E54((a1 + 32));
      *(a1 + 32) = *(v14 + 32);
      *(a1 + 48) = *(v14 + 48);
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      v22 = *(v14 + 81);
      v23 = *(v14 + 72);
      *(a1 + 56) = *(v14 + 56);
      *(a1 + 72) = v23;
      *(a1 + 81) = v22;
      *v14 = v48;
      *(v14 + 16) = v50;
      sub_820E54((v14 + 32));
      *(v14 + 32) = v44;
      *(v14 + 48) = v17;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v24 = v55;
      v25 = v56[0];
      *(v14 + 81) = *(v56 + 9);
      *(v14 + 72) = v25;
      *(v14 + 56) = v24;
      v57[0] = &v52;
      sub_5ECC44(v57);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if (*(a1 - 96) >= *(a1 + 8))
    {
      v8 = sub_824894(a1, a2);
      goto LABEL_22;
    }

LABEL_17:
    v26 = sub_824B94(a1, a2);
    if ((v27 & 1) == 0)
    {
      goto LABEL_20;
    }

    v28 = sub_824EA8(a1, v26);
    v8 = (v26 + 104);
    if (sub_824EA8(v26 + 104, a2))
    {
      a4 = -v10;
      a2 = v26;
      if (v28)
      {
        return;
      }

      goto LABEL_1;
    }

    v9 = v10 + 1;
    if (!v28)
    {
LABEL_20:
      sub_823128(a1, v26, a3, -v10, a5 & 1);
      v8 = (v26 + 104);
LABEL_22:
      a5 = 0;
      a4 = -v10;
      goto LABEL_2;
    }
  }

  if (a1 != a2)
  {
    v39 = (v12 - 2) >> 1;
    v40 = v39 + 1;
    v41 = (a1 + 104 * v39);
    do
    {
      sub_825260(a1, a3, v12, v41);
      v41 = (v41 - 104);
      --v40;
    }

    while (v40);
    v42 = 0x4EC4EC4EC4EC4EC5 * (v11 >> 3);
    do
    {
      sub_8254A4(a1, a2, a3, v42);
      a2 -= 104;
    }

    while (v42-- > 2);
  }
}

uint64_t sub_823674(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a3 + 1);
  if (v6 < *(a1 + 1))
  {
    if (v7 < v6)
    {
      v43 = *a1;
      v48 = a1[1];
      v8 = *(a1 + 6);
      v38 = a1[2];
      *(a1 + 5) = 0;
      *(a1 + 6) = 0;
      *(a1 + 4) = 0;
      v56 = *(a1 + 56);
      v57[0] = *(a1 + 72);
      *(v57 + 9) = *(a1 + 81);
      v9 = *(a3 + 4);
      *a1 = *a3;
      *(a1 + 4) = v9;
      v10 = *(a3 + 7);
      *(a1 + 20) = *(a3 + 20);
      *(a1 + 7) = v10;
      sub_820E54(a1 + 4);
      a1[2] = a3[2];
      *(a1 + 6) = *(a3 + 6);
      *(a3 + 4) = 0;
      *(a3 + 5) = 0;
      *(a3 + 6) = 0;
      v11 = *(a3 + 81);
      v12 = *(a3 + 56);
      *(a1 + 72) = *(a3 + 72);
      *(a1 + 56) = v12;
      *(a1 + 81) = v11;
      *a3 = v43;
      a3[1] = v48;
      sub_820E54(a3 + 4);
      a3[2] = v38;
      *(a3 + 6) = v8;
      v54 = 0;
      v55 = 0;
      v53 = 0;
      *(a3 + 56) = v56;
      *(a3 + 72) = v57[0];
      *(a3 + 81) = *(v57 + 9);
      v58 = &v53;
LABEL_9:
      sub_5ECC44(&v58);
      return 1;
    }

    v46 = *a1;
    v51 = a1[1];
    v25 = *(a1 + 6);
    v41 = a1[2];
    *(a1 + 5) = 0;
    *(a1 + 6) = 0;
    *(a1 + 4) = 0;
    v26 = *(a2 + 4);
    *a1 = *a2;
    *(a1 + 4) = v26;
    v28 = (a2 + 20);
    v27 = *(a2 + 20);
    v56 = *(a1 + 56);
    v57[0] = *(a1 + 72);
    *(v57 + 9) = *(a1 + 81);
    v29 = *(a2 + 7);
    *(a1 + 20) = v27;
    *(a1 + 7) = v29;
    sub_820E54(a1 + 4);
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    v30 = *(a2 + 81);
    v31 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v31;
    *(a1 + 81) = v30;
    *a2 = v46;
    *(a2 + 4) = v51;
    *v28 = *(&v51 + 4);
    *(a2 + 7) = HIDWORD(v51);
    sub_820E54(a2 + 4);
    a2[2] = v41;
    *(a2 + 6) = v25;
    v54 = 0;
    v55 = 0;
    v53 = 0;
    *(a2 + 56) = v56;
    *(a2 + 72) = v57[0];
    *(a2 + 81) = *(v57 + 9);
    v58 = &v53;
    sub_5ECC44(&v58);
    if (*(a3 + 1) < *(a2 + 1))
    {
      v47 = *a2;
      v52 = a2[1];
      v32 = *(a2 + 6);
      v42 = a2[2];
      *(a2 + 5) = 0;
      *(a2 + 6) = 0;
      *(a2 + 4) = 0;
      v56 = *(a2 + 56);
      v57[0] = *(a2 + 72);
      *(v57 + 9) = *(a2 + 81);
      v33 = *(a3 + 4);
      *a2 = *a3;
      *(a2 + 4) = v33;
      v34 = *(a3 + 7);
      *v28 = *(a3 + 20);
      *(a2 + 7) = v34;
      sub_820E54(a2 + 4);
      a2[2] = a3[2];
      *(a2 + 6) = *(a3 + 6);
      *(a3 + 4) = 0;
      *(a3 + 5) = 0;
      *(a3 + 6) = 0;
      v35 = *(a3 + 81);
      v36 = *(a3 + 56);
      *(a2 + 72) = *(a3 + 72);
      *(a2 + 56) = v36;
      *(a2 + 81) = v35;
      *a3 = v47;
      a3[1] = v52;
      sub_820E54(a3 + 4);
      a3[2] = v42;
      *(a3 + 6) = v32;
      v54 = 0;
      v55 = 0;
      v53 = 0;
      *(a3 + 56) = v56;
      *(a3 + 72) = v57[0];
      *(a3 + 81) = *(v57 + 9);
      v58 = &v53;
      goto LABEL_9;
    }

    return 1;
  }

  if (v7 < v6)
  {
    v44 = *a2;
    v49 = a2[1];
    v13 = a2 + 2;
    v39 = a2[2];
    v14 = *(a2 + 6);
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    *(a2 + 4) = 0;
    v15 = *(a3 + 4);
    *a2 = *a3;
    *(a2 + 4) = v15;
    v16 = *(a3 + 7);
    *(a2 + 20) = *(a3 + 20);
    v17 = (a2 + 20);
    v56 = *(a2 + 56);
    v57[0] = *(a2 + 72);
    *(v57 + 9) = *(a2 + 81);
    *(a2 + 7) = v16;
    sub_820E54(a2 + 4);
    *v13 = a3[2];
    *(a2 + 6) = *(a3 + 6);
    *(a3 + 4) = 0;
    *(a3 + 5) = 0;
    *(a3 + 6) = 0;
    v18 = *(a3 + 81);
    v19 = *(a3 + 56);
    *(a2 + 72) = *(a3 + 72);
    *(a2 + 56) = v19;
    *(a2 + 81) = v18;
    *a3 = v44;
    a3[1] = v49;
    sub_820E54(a3 + 4);
    a3[2] = v39;
    *(a3 + 6) = v14;
    v54 = 0;
    v55 = 0;
    v53 = 0;
    *(a3 + 56) = v56;
    *(a3 + 72) = v57[0];
    *(a3 + 81) = *(v57 + 9);
    v58 = &v53;
    sub_5ECC44(&v58);
    if (*(a2 + 1) < *(a1 + 1))
    {
      v45 = *a1;
      v50 = a1[1];
      v40 = a1[2];
      v20 = *(a1 + 6);
      *(a1 + 5) = 0;
      *(a1 + 6) = 0;
      *(a1 + 4) = 0;
      v56 = *(a1 + 56);
      v57[0] = *(a1 + 72);
      *(v57 + 9) = *(a1 + 81);
      v21 = *(a2 + 4);
      *a1 = *a2;
      *(a1 + 4) = v21;
      v22 = *(a2 + 7);
      *(a1 + 20) = *v17;
      *(a1 + 7) = v22;
      sub_820E54(a1 + 4);
      a1[2] = a2[2];
      *(a1 + 6) = *(a2 + 6);
      *v13 = 0;
      *(a2 + 5) = 0;
      *(a2 + 6) = 0;
      v23 = *(a2 + 81);
      v24 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v24;
      *(a1 + 81) = v23;
      *a2 = v45;
      *(a2 + 4) = v50;
      *v17 = *(&v50 + 4);
      *(a2 + 7) = HIDWORD(v50);
      sub_820E54(a2 + 4);
      a2[2] = v40;
      *(a2 + 6) = v20;
      v54 = 0;
      v55 = 0;
      v53 = 0;
      *(a2 + 56) = v56;
      *(a2 + 72) = v57[0];
      *(a2 + 81) = *(v57 + 9);
      v58 = &v53;
      goto LABEL_9;
    }

    return 1;
  }

  return 0;
}

void sub_823BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_823674(a1, a2, a3);
  if (*(a4 + 8) < *(a3 + 8))
  {
    v28 = *a3;
    v31 = *(a3 + 16);
    v25 = *(a3 + 32);
    v8 = *(a3 + 48);
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    *(a3 + 32) = 0;
    v9 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v9;
    v10 = *(a4 + 28);
    *(a3 + 20) = *(a4 + 20);
    v11 = (a3 + 20);
    v37 = *(a3 + 56);
    v38[0] = *(a3 + 72);
    *(v38 + 9) = *(a3 + 81);
    *(a3 + 28) = v10;
    sub_820E54((a3 + 32));
    *(a3 + 32) = *(a4 + 32);
    *(a3 + 48) = *(a4 + 48);
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
    v12 = *(a4 + 81);
    v13 = *(a4 + 56);
    *(a3 + 72) = *(a4 + 72);
    *(a3 + 56) = v13;
    *(a3 + 81) = v12;
    *a4 = v28;
    *(a4 + 16) = v31;
    sub_820E54((a4 + 32));
    *(a4 + 32) = v25;
    *(a4 + 48) = v8;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    *(a4 + 56) = v37;
    *(a4 + 72) = v38[0];
    *(a4 + 81) = *(v38 + 9);
    v39 = &v34;
    sub_5ECC44(&v39);
    if (*(a3 + 8) < *(a2 + 8))
    {
      v29 = *a2;
      v32 = *(a2 + 16);
      v26 = *(a2 + 32);
      v14 = *(a2 + 48);
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 32) = 0;
      v15 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v15;
      v16 = *(a3 + 28);
      *(a2 + 20) = *v11;
      v17 = (a2 + 20);
      v37 = *(a2 + 56);
      v38[0] = *(a2 + 72);
      *(v38 + 9) = *(a2 + 81);
      *(a2 + 28) = v16;
      sub_820E54((a2 + 32));
      *(a2 + 32) = *(a3 + 32);
      *(a2 + 48) = *(a3 + 48);
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      v18 = *(a3 + 81);
      v19 = *(a3 + 56);
      *(a2 + 72) = *(a3 + 72);
      *(a2 + 56) = v19;
      *(a2 + 81) = v18;
      *a3 = v29;
      *(a3 + 16) = v32;
      *v11 = *(&v32 + 4);
      *(a3 + 28) = HIDWORD(v32);
      sub_820E54((a3 + 32));
      *(a3 + 32) = v26;
      *(a3 + 48) = v14;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      *(a3 + 56) = v37;
      *(a3 + 72) = v38[0];
      *(a3 + 81) = *(v38 + 9);
      v39 = &v34;
      sub_5ECC44(&v39);
      if (*(a2 + 8) < *(a1 + 8))
      {
        v30 = *a1;
        v33 = *(a1 + 16);
        v27 = *(a1 + 32);
        v20 = *(a1 + 48);
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        *(a1 + 32) = 0;
        v37 = *(a1 + 56);
        v38[0] = *(a1 + 72);
        *(v38 + 9) = *(a1 + 81);
        v21 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v21;
        v22 = *(a2 + 28);
        *(a1 + 20) = *v17;
        *(a1 + 28) = v22;
        sub_820E54((a1 + 32));
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = *(a2 + 48);
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        v23 = *(a2 + 81);
        v24 = *(a2 + 56);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 56) = v24;
        *(a1 + 81) = v23;
        *a2 = v30;
        *(a2 + 16) = v33;
        *v17 = *(&v33 + 4);
        *(a2 + 28) = HIDWORD(v33);
        sub_820E54((a2 + 32));
        *(a2 + 32) = v27;
        *(a2 + 48) = v20;
        v35 = 0;
        v36 = 0;
        v34 = 0;
        *(a2 + 56) = v37;
        *(a2 + 72) = v38[0];
        *(a2 + 81) = *(v38 + 9);
        v39 = &v34;
        sub_5ECC44(&v39);
      }
    }
  }
}

void sub_823F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_823BD8(a1, a2, a3, a4);
  if (*(a5 + 8) < *(a4 + 8))
  {
    v37 = *a4;
    v41 = *(a4 + 16);
    v33 = *(a4 + 32);
    v10 = *(a4 + 48);
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
    *(a4 + 32) = 0;
    v11 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v11;
    v12 = *(a5 + 28);
    *(a4 + 20) = *(a5 + 20);
    v13 = (a4 + 20);
    v48 = *(a4 + 56);
    v49[0] = *(a4 + 72);
    *(v49 + 9) = *(a4 + 81);
    *(a4 + 28) = v12;
    sub_820E54((a4 + 32));
    *(a4 + 32) = *(a5 + 32);
    *(a4 + 48) = *(a5 + 48);
    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
    v14 = *(a5 + 81);
    v15 = *(a5 + 56);
    *(a4 + 72) = *(a5 + 72);
    *(a4 + 56) = v15;
    *(a4 + 81) = v14;
    *a5 = v37;
    *(a5 + 16) = v41;
    sub_820E54((a5 + 32));
    *(a5 + 32) = v33;
    *(a5 + 48) = v10;
    v46 = 0;
    v47 = 0;
    v45 = 0;
    *(a5 + 56) = v48;
    *(a5 + 72) = v49[0];
    *(a5 + 81) = *(v49 + 9);
    v50 = &v45;
    sub_5ECC44(&v50);
    if (*(a4 + 8) < *(a3 + 8))
    {
      v38 = *a3;
      v42 = *(a3 + 16);
      v34 = *(a3 + 32);
      v16 = *(a3 + 48);
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      *(a3 + 32) = 0;
      v17 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v17;
      v18 = *(a4 + 28);
      *(a3 + 20) = *v13;
      v19 = (a3 + 20);
      v48 = *(a3 + 56);
      v49[0] = *(a3 + 72);
      *(v49 + 9) = *(a3 + 81);
      *(a3 + 28) = v18;
      sub_820E54((a3 + 32));
      *(a3 + 32) = *(a4 + 32);
      *(a3 + 48) = *(a4 + 48);
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      v20 = *(a4 + 81);
      v21 = *(a4 + 56);
      *(a3 + 72) = *(a4 + 72);
      *(a3 + 56) = v21;
      *(a3 + 81) = v20;
      *a4 = v38;
      *(a4 + 16) = v42;
      *v13 = *(&v42 + 4);
      *(a4 + 28) = HIDWORD(v42);
      sub_820E54((a4 + 32));
      *(a4 + 32) = v34;
      *(a4 + 48) = v16;
      v46 = 0;
      v47 = 0;
      v45 = 0;
      *(a4 + 56) = v48;
      *(a4 + 72) = v49[0];
      *(a4 + 81) = *(v49 + 9);
      v50 = &v45;
      sub_5ECC44(&v50);
      if (*(a3 + 8) < *(a2 + 8))
      {
        v39 = *a2;
        v43 = *(a2 + 16);
        v35 = *(a2 + 32);
        v22 = *(a2 + 48);
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        *(a2 + 32) = 0;
        v23 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v23;
        v24 = *(a3 + 28);
        *(a2 + 20) = *v19;
        v25 = (a2 + 20);
        v48 = *(a2 + 56);
        v49[0] = *(a2 + 72);
        *(v49 + 9) = *(a2 + 81);
        *(a2 + 28) = v24;
        sub_820E54((a2 + 32));
        *(a2 + 32) = *(a3 + 32);
        *(a2 + 48) = *(a3 + 48);
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        *(a3 + 48) = 0;
        v26 = *(a3 + 81);
        v27 = *(a3 + 56);
        *(a2 + 72) = *(a3 + 72);
        *(a2 + 56) = v27;
        *(a2 + 81) = v26;
        *a3 = v39;
        *(a3 + 16) = v43;
        *v19 = *(&v43 + 4);
        *(a3 + 28) = HIDWORD(v43);
        sub_820E54((a3 + 32));
        *(a3 + 32) = v35;
        *(a3 + 48) = v22;
        v46 = 0;
        v47 = 0;
        v45 = 0;
        *(a3 + 56) = v48;
        *(a3 + 72) = v49[0];
        *(a3 + 81) = *(v49 + 9);
        v50 = &v45;
        sub_5ECC44(&v50);
        if (*(a2 + 8) < *(a1 + 8))
        {
          v40 = *a1;
          v44 = *(a1 + 16);
          v36 = *(a1 + 32);
          v28 = *(a1 + 48);
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          *(a1 + 32) = 0;
          v48 = *(a1 + 56);
          v49[0] = *(a1 + 72);
          *(v49 + 9) = *(a1 + 81);
          v29 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v29;
          v30 = *(a2 + 28);
          *(a1 + 20) = *v25;
          *(a1 + 28) = v30;
          sub_820E54((a1 + 32));
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = *(a2 + 48);
          *(a2 + 32) = 0;
          *(a2 + 40) = 0;
          *(a2 + 48) = 0;
          v31 = *(a2 + 81);
          v32 = *(a2 + 56);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 56) = v32;
          *(a1 + 81) = v31;
          *a2 = v40;
          *(a2 + 16) = v44;
          *v25 = *(&v44 + 4);
          *(a2 + 28) = HIDWORD(v44);
          sub_820E54((a2 + 32));
          *(a2 + 32) = v36;
          *(a2 + 48) = v28;
          v46 = 0;
          v47 = 0;
          v45 = 0;
          *(a2 + 56) = v48;
          *(a2 + 72) = v49[0];
          *(a2 + 81) = *(v49 + 9);
          v50 = &v45;
          sub_5ECC44(&v50);
        }
      }
    }
  }
}

void sub_8243D0(_OWORD *a1, _OWORD *a2)
{
  if (a1 != a2)
  {
    v3 = (a1 + 104);
    if ((a1 + 104) != a2)
    {
      v18 = a2;
      v4 = a1;
      do
      {
        v8 = v3;
        if (*(v4 + 14) >= *(v4 + 1))
        {
          goto LABEL_6;
        }

        v19 = *v3;
        v20 = v3[1];
        *v21 = *(v4 + 136);
        v9 = v4[11];
        v22 = v4[10];
        *&v21[16] = *(v4 + 19);
        *(v4 + 17) = 0;
        *(v4 + 18) = 0;
        *(v4 + 19) = 0;
        v23[0] = v9;
        v10 = v3;
        *(v23 + 9) = *(v4 + 185);
        while (1)
        {
          v11 = v4;
          *v10 = *v4;
          *(v10 + 4) = *(v4 + 4);
          v12 = v4 + 20;
          *(v10 + 20) = *(v4 + 20);
          *(v10 + 7) = *(v4 + 7);
          v13 = *(v10 + 4);
          if (!v13)
          {
            goto LABEL_22;
          }

          v14 = v10 + 5;
          v15 = *(v10 + 5);
          v16 = *(v10 + 4);
          if (v15 != v13)
          {
            while (1)
            {
              if (*(v15 - 9) < 0)
              {
                operator delete(*(v15 - 32));
                if ((*(v15 - 41) & 0x80000000) == 0)
                {
LABEL_15:
                  v17 = *(v15 - 80);
                  if (v17 == -1)
                  {
                    goto LABEL_12;
                  }

LABEL_19:
                  (off_266D410[v17])(&v24, v15 - 112);
                  goto LABEL_12;
                }
              }

              else if ((*(v15 - 41) & 0x80000000) == 0)
              {
                goto LABEL_15;
              }

              operator delete(*(v15 - 64));
              v17 = *(v15 - 80);
              if (v17 != -1)
              {
                goto LABEL_19;
              }

LABEL_12:
              *(v15 - 80) = -1;
              v15 -= 184;
              if (v15 == v13)
              {
                v16 = *(v10 + 4);
                break;
              }
            }
          }

          *v14 = v13;
          operator delete(v16);
          *v14 = 0;
          *(v10 + 6) = 0;
LABEL_22:
          v10[2] = v11[2];
          *(v10 + 6) = *(v11 + 6);
          *(v12 + 12) = 0;
          *(v12 + 20) = 0;
          *(v12 + 28) = 0;
          *(v10 + 56) = *(v11 + 56);
          *(v10 + 72) = *(v11 + 72);
          *(v10 + 81) = *(v11 + 81);
          if (v11 == a1)
          {
            break;
          }

          v4 = (v11 - 104);
          v10 = v11;
          if (*(&v19 + 1) >= *(v11 - 12))
          {
            v5 = v11;
            goto LABEL_5;
          }
        }

        v5 = a1;
LABEL_5:
        *(v5 + 4) = v20;
        *v5 = v19;
        *(v12 + 8) = HIDWORD(v20);
        *v12 = *(&v20 + 4);
        sub_820E54((v12 + 12));
        *(v11 + 4) = *v21;
        *(v5 + 40) = *&v21[8];
        memset(v21, 0, sizeof(v21));
        v6 = *(v23 + 9);
        v7 = v23[0];
        *(v11 + 56) = v22;
        *(v11 + 72) = v7;
        *(v11 + 81) = v6;
        v24 = v21;
        sub_5ECC44(&v24);
        a2 = v18;
LABEL_6:
        v3 = (v8 + 104);
        v4 = v8;
      }

      while ((v8 + 104) != a2);
    }
  }
}

_OWORD *sub_824640(_OWORD *result, _OWORD *a2)
{
  if (result != a2)
  {
    v2 = (result + 104);
    if ((result + 104) != a2)
    {
      v15 = a2;
LABEL_6:
      v5 = v2;
      if (*(result + 14) >= *(result + 1))
      {
        goto LABEL_5;
      }

      v16 = *v2;
      v17 = v2[1];
      v18 = *(result + 136);
      v6 = result[11];
      v20 = result[10];
      v19 = *(result + 19);
      *(result + 17) = 0;
      *(result + 18) = 0;
      *(result + 19) = 0;
      v21[0] = v6;
      v7 = v2;
      *(v21 + 9) = *(result + 185);
      while (1)
      {
        v9 = result;
        *v7 = *result;
        *(v7 + 4) = *(result + 4);
        v10 = result + 20;
        *(v7 + 20) = *(result + 20);
        *(v7 + 7) = *(result + 7);
        v11 = *(v7 + 4);
        if (v11)
        {
          break;
        }

LABEL_10:
        v7[2] = v9[2];
        *(v7 + 6) = *(v9 + 6);
        *(v10 + 12) = 0;
        *(v10 + 20) = 0;
        *(v10 + 28) = 0;
        *(v7 + 56) = *(v9 + 56);
        *(v7 + 72) = *(v9 + 72);
        *(v7 + 81) = *(v9 + 81);
        result = (v9 - 104);
        v7 = v9;
        if (*(&v16 + 1) >= *(v9 - 12))
        {
          *(v9 + 4) = v17;
          *v9 = v16;
          *(v10 + 8) = HIDWORD(v17);
          *v10 = *(&v17 + 4);
          sub_820E54((v10 + 12));
          v9[2] = v18;
          *(v9 + 6) = v19;
          v18 = 0uLL;
          v19 = 0;
          v3 = *(v21 + 9);
          v4 = v21[0];
          *(v9 + 56) = v20;
          *(v9 + 72) = v4;
          *(v9 + 81) = v3;
          v22 = &v18;
          sub_5ECC44(&v22);
          a2 = v15;
LABEL_5:
          v2 = (v5 + 104);
          result = v5;
          if ((v5 + 104) == a2)
          {
            return result;
          }

          goto LABEL_6;
        }
      }

      v13 = v7 + 5;
      v12 = *(v7 + 5);
      v8 = *(v7 + 4);
      if (v12 == v11)
      {
LABEL_9:
        *v13 = v11;
        operator delete(v8);
        *v13 = 0;
        *(v7 + 6) = 0;
        goto LABEL_10;
      }

      while (1)
      {
        if (*(v12 - 9) < 0)
        {
          operator delete(*(v12 - 32));
          if ((*(v12 - 41) & 0x80000000) == 0)
          {
LABEL_17:
            v14 = *(v12 - 80);
            if (v14 == -1)
            {
              goto LABEL_14;
            }

LABEL_21:
            (off_266D410[v14])(&v22, v12 - 112);
            goto LABEL_14;
          }
        }

        else if ((*(v12 - 41) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        operator delete(*(v12 - 64));
        v14 = *(v12 - 80);
        if (v14 != -1)
        {
          goto LABEL_21;
        }

LABEL_14:
        *(v12 - 80) = -1;
        v12 -= 184;
        if (v12 == v11)
        {
          v8 = *(v7 + 4);
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

__int128 *sub_824894(__int128 *a1, unint64_t a2)
{
  v34 = *a1;
  v35 = a1[1];
  v3 = (a1 + 2);
  v36 = a1[2];
  v37 = *(a1 + 6);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  v38 = *(a1 + 56);
  v39[0] = *(a1 + 72);
  *(v39 + 9) = *(a1 + 81);
  if (*(&v34 + 1) >= *(a2 - 96))
  {
    v7 = (a1 + 104);
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = *(v7 + 1);
      v7 = (v7 + 104);
    }

    while (*(&v34 + 1) >= v8);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = (v4 + 104);
      v6 = *(v4 + 14);
      v4 = (v4 + 104);
    }

    while (*(&v34 + 1) >= v6);
  }

  if (v5 < a2)
  {
    do
    {
      v9 = (a2 - 104);
      v10 = *(a2 - 96);
      a2 -= 104;
    }

    while (*(&v34 + 1) < v10);
    while (v5 < v9)
    {
      v11 = v5[1];
      v40 = *v5;
      v41 = v11;
      v33 = v5[2];
      v12 = *(v5 + 6);
      *(v5 + 5) = 0;
      *(v5 + 6) = 0;
      *(v5 + 4) = 0;
      v13 = *(v5 + 81);
      v14 = *(v5 + 72);
      v43 = *(v5 + 56);
      v44[0] = v14;
      *(v44 + 9) = v13;
      v15 = *v9;
      *(v5 + 4) = *(v9 + 4);
      *v5 = v15;
      v16 = *(v9 + 20);
      *(v5 + 7) = *(v9 + 7);
      *(v5 + 20) = v16;
      sub_820E54(v5 + 4);
      v5[2] = v9[2];
      *(v5 + 6) = *(v9 + 6);
      *(v9 + 4) = 0;
      *(v9 + 5) = 0;
      *(v9 + 6) = 0;
      v17 = *(v9 + 56);
      v18 = *(v9 + 72);
      *(v5 + 81) = *(v9 + 81);
      *(v5 + 72) = v18;
      *(v5 + 56) = v17;
      v19 = v40;
      *(v9 + 4) = v41;
      *v9 = v19;
      v20 = *(&v41 + 4);
      *(v9 + 7) = HIDWORD(v41);
      *(v9 + 20) = v20;
      sub_820E54(v9 + 4);
      v9[2] = v33;
      *(v9 + 6) = v12;
      memset(v42, 0, sizeof(v42));
      v21 = *(v44 + 9);
      v22 = v44[0];
      *(v9 + 56) = v43;
      *(v9 + 72) = v22;
      *(v9 + 81) = v21;
      v45 = v42;
      sub_5ECC44(&v45);
      do
      {
        v23 = *(v5 + 14);
        v5 = (v5 + 104);
      }

      while (*(&v34 + 1) >= v23);
      do
      {
        v24 = *(v9 - 12);
        v9 = (v9 - 104);
      }

      while (*(&v34 + 1) < v24);
    }
  }

  v25 = (v5 - 104);
  if ((v5 - 104) != a1)
  {
    v26 = *v25;
    *(a1 + 4) = *(v5 - 22);
    *a1 = v26;
    v27 = *(v5 - 84);
    *(a1 + 7) = *(v5 - 19);
    *(a1 + 20) = v27;
    sub_820E54(v3);
    a1[2] = *(v5 - 72);
    *(a1 + 6) = *(v5 - 7);
    *(v5 - 9) = 0;
    *(v5 - 8) = 0;
    *(v5 - 7) = 0;
    v28 = *(v5 - 3);
    v29 = *(v5 - 2);
    *(a1 + 81) = *(v5 - 23);
    *(a1 + 72) = v29;
    *(a1 + 56) = v28;
  }

  *(v5 - 22) = v35;
  *v25 = v34;
  *(v5 - 19) = HIDWORD(v35);
  *(v5 - 84) = *(&v35 + 4);
  sub_820E54(v5 - 9);
  *(v5 - 72) = v36;
  *(v5 - 7) = v37;
  v36 = 0uLL;
  v37 = 0;
  v30 = v38;
  v31 = v39[0];
  *(v5 - 23) = *(v39 + 9);
  *(v5 - 3) = v30;
  *(v5 - 2) = v31;
  *&v40 = &v36;
  sub_5ECC44(&v40);
  return v5;
}