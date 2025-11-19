void sub_5B5418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (SLOBYTE(STACK[0x327]) < 0)
  {
    operator delete(STACK[0x310]);
  }

  if (a58 < 0)
  {
    operator delete(a53);
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a65 & 0x80000000) == 0)
  {
LABEL_5:
    if (a71 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  operator delete(a60);
  if (a71 < 0)
  {
LABEL_6:
    operator delete(a66);
    if ((a73 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  if ((a73 & 0x80000000) == 0)
  {
LABEL_7:
    if (a75 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a72);
  if (a75 < 0)
  {
LABEL_8:
    operator delete(a74);
    if ((a77 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  if ((a77 & 0x80000000) == 0)
  {
LABEL_9:
    if (SLOBYTE(STACK[0x20F]) < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a76);
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
LABEL_10:
    operator delete(a78);
    sub_2CD04(&STACK[0x210]);
    sub_2CD04(&STACK[0x240]);
    _Unwind_Resume(a1);
  }

LABEL_17:
  sub_2CD04(&STACK[0x210]);
  sub_2CD04(&STACK[0x240]);
  _Unwind_Resume(a1);
}

uint64_t sub_5B57CC(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (sub_69B32C(a2) >= a5)
  {
    v15 = sub_69B32C(a2) - a5;
    if (a7 != 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = sub_69B32C(a2);
    a4 = *(a1 + 2760);
    goto LABEL_16;
  }

  v15 = 0;
  if (a7 == 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a6 < 1)
  {
    a4 = 0;
  }

  else
  {
    v16 = sub_69EBE0(a2, a3, a4, v14);
    if (v16 <= a6)
    {
      if (a3)
      {
        v18 = v16;
        --a3;
        do
        {
          if (v18 >= a6)
          {
            break;
          }

          v20 = sub_4D23F8(a2, a3, v17);
          v22 = sub_69EBE0(a2, a3, v20, v21);
          if (v22 + v18 > a6)
          {
            goto LABEL_6;
          }

          a4 += v20;
          --a3;
          v18 += v22;
        }

        while (a3 != -1);
      }
    }

    else
    {
      a4 = 0;
      v18 = 0;
LABEL_6:
      a4 += sub_69EDA0(a2, a3, a6 - v18, v17);
    }
  }

  result = sub_69B32C(a2);
LABEL_16:
  if (a4 + v15 < result)
  {
    return a4 + v15;
  }

  return result;
}

uint64_t sub_5B590C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v31 = sub_69B32C(a2);
  if (a7 == 1)
  {
    v14 = *(a1 + 2736);
  }

  else
  {
    v14 = 0;
    if (sub_4D1DC0(a2) <= a3 || a6 < 1)
    {
      goto LABEL_8;
    }

    v14 = sub_4D23F8(a2, a3, v15) - a4;
    v17 = sub_69EBE0(a2, a3, v14, v16);
    if (v17 <= a6)
    {
      v19 = v17;
      if (++a3 >= sub_4D1DC0(a2) || v19 >= a6)
      {
        goto LABEL_8;
      }

      v25 = -1;
      while (1)
      {
        v26 = sub_4D23F8(a2, a3, v24);
        v28 = v25 ? 0 : a4;
        v29 = v26 - v28;
        v30 = sub_69EBE0(a2, a3, v26 - v28, v27) + v19;
        if (v30 > a6)
        {
          break;
        }

        v14 += v29;
        if (++a3 < sub_4D1DC0(a2))
        {
          --v25;
          v19 = v30;
          if (v30 < a6)
          {
            continue;
          }
        }

        goto LABEL_8;
      }
    }

    else
    {
      v19 = 0;
      v14 = 0;
    }

    v14 += sub_69EDA0(a2, a3, a6 - v19, v18);
  }

LABEL_8:
  v20 = (v31 - a5) & ~((v31 - a5) >> 63);
  v21 = v20 < v14;
  v22 = v20 - v14;
  if (v21)
  {
    return 0;
  }

  else
  {
    return v22;
  }
}

void sub_5B629C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  sub_53A868(&a57);
  sub_53A868(&STACK[0x220]);
  if (*(v57 - 105) < 0)
  {
    operator delete(*(v57 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_5B6398()
{
  sub_53A868(&STACK[0x220]);
  if ((*(v0 - 105) & 0x80000000) == 0)
  {
    JUMPOUT(0x5B6390);
  }

  JUMPOUT(0x5B6388);
}

void sub_5B63B0()
{
  if ((*(v0 - 105) & 0x80000000) == 0)
  {
    JUMPOUT(0x5B6390);
  }

  JUMPOUT(0x5B6388);
}

void sub_5B63C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    JUMPOUT(0x5B638CLL);
  }

  JUMPOUT(0x5B6390);
}

void sub_5B63D4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v6 = 0;
    goto LABEL_24;
  }

  v5 = v4 - v3 - 1120;
  if (v5 >= 0x460)
  {
    v8 = 0;
    v9 = 0;
    v10 = v5 / 0x460 + 1;
    v7 = v3 + 1120 * (v10 & 0x7FFFFFFFFFFFFELL);
    v11 = *a2;
    v12 = v10 & 0x7FFFFFFFFFFFFELL;
    do
    {
      if (*(v11 + 232))
      {
        v13 = 228;
      }

      else
      {
        v13 = 96;
      }

      if (*(v11 + 1352))
      {
        v14 = 228;
      }

      else
      {
        v14 = 96;
      }

      v15 = *(v11 + v14 + 1120);
      if (!*(v11 + v13))
      {
        ++v8;
      }

      if (!v15)
      {
        ++v9;
      }

      v11 += 2240;
      v12 -= 2;
    }

    while (v12);
    v6 = v9 + v8;
    if (v10 == (v10 & 0x7FFFFFFFFFFFFELL))
    {
LABEL_24:
      v17 = 0xAF8AF8AF8AF8AF8BLL * ((v4 - v3) >> 5);
      v18 = "_Hazard";
      if (v17 == v6)
      {
        v18 = "_Crash";
      }

      v31 = *v18;
      v32 = *(v18 + 2);
      sub_568F30(v17, &v31, *(a1 + 4240), v17 == v6, v29);
      if ((v30 & 0x80u) == 0)
      {
        v19 = v30;
      }

      else
      {
        v19 = v29[1];
      }

      if (v19 + 10 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v19 + 10 >= 0x17)
      {
        operator new();
      }

      __p[1] = &loc_6460 + 1;
      *&v26 = 0;
      BYTE7(v26) = v19 + 10;
      __p[0] = 0x654872656E6E6142;
      if (v19)
      {
        if ((v30 & 0x80u) == 0)
        {
          v20 = v29;
        }

        else
        {
          v20 = v29[0];
        }

        memmove(&__p[1] + 2, v20, v19);
      }

      *(&__p[1] + v19 + 2) = 0;
      v21 = SBYTE7(v26);
      if ((SBYTE7(v26) & 0x8000000000000000) != 0)
      {
        v21 = __p[1];
        v22 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v22 - __p[1] < 0x16)
        {
          if ((0x7FFFFFFFFFFFFFF7 - (v26 & 0x7FFFFFFFFFFFFFFFLL)) < __p[1] - v22 + 22)
          {
            sub_3244();
          }

LABEL_42:
          operator new();
        }

        v23 = __p[0];
      }

      else
      {
        if ((SBYTE7(v26) - 1) < 0x16)
        {
          goto LABEL_42;
        }

        v23 = __p;
      }

      qmemcpy(v21 + v23, "_Causing_Traffic_Delay", 22);
      v24 = v21 + 22;
      if (SBYTE7(v26) < 0)
      {
        __p[1] = v21 + 22;
      }

      else
      {
        BYTE7(v26) = v24 & 0x7F;
      }

      v24[v23] = 0;
      v27 = *__p;
      v28 = v26;
      operator new();
    }
  }

  else
  {
    v6 = 0;
    v7 = *a2;
  }

  do
  {
    if (*(v7 + 232))
    {
      v16 = 228;
    }

    else
    {
      v16 = 96;
    }

    if (!*(v7 + v16))
    {
      ++v6;
    }

    v7 += 1120;
  }

  while (v7 != v4);
  goto LABEL_24;
}

void sub_5B6D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  if (a43 < 0)
  {
    operator delete(__p);
    sub_540798(&a61);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if (SLOBYTE(STACK[0x227]) < 0)
      {
LABEL_8:
        operator delete(STACK[0x210]);
        if ((SLOBYTE(STACK[0x247]) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }

LABEL_12:
      if ((SLOBYTE(STACK[0x247]) & 0x80000000) == 0)
      {
LABEL_9:
        if (*(v61 - 217) < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }

LABEL_13:
      operator delete(STACK[0x230]);
      if (*(v61 - 217) < 0)
      {
LABEL_10:
        operator delete(*(v61 - 240));
        if ((*(v61 - 185) & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

LABEL_15:
        operator delete(*(v61 - 208));
LABEL_16:
        if (*(v61 - 161) < 0)
        {
          operator delete(*(v61 - 184));
        }

        if (*(v61 - 137) < 0)
        {
          operator delete(*(v61 - 160));
        }

        if (*(v61 - 113) < 0)
        {
          operator delete(*(v61 - 136));
          if ((*(v61 - 89) & 0x80000000) == 0)
          {
            goto LABEL_22;
          }
        }

        else if ((*(v61 - 89) & 0x80000000) == 0)
        {
LABEL_22:
          _Unwind_Resume(a1);
        }

        operator delete(*(v61 - 112));
        _Unwind_Resume(a1);
      }

LABEL_14:
      if ((*(v61 - 185) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_540798(&a61);
    if (a20 < 0)
    {
      goto LABEL_5;
    }
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_12;
}

void sub_5B72F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v50 - 240);
  if (*(v50 - 57) < 0)
  {
    operator delete(*(v50 - 80));
  }

  _Unwind_Resume(a1);
}

void sub_5B73D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 4799) == 1)
  {
    if (*(a1 + 3264))
    {
LABEL_3:
      v4 = "";
      goto LABEL_6;
    }
  }

  else if (*(a1 + 3265))
  {
    goto LABEL_3;
  }

  v4 = "_Old";
LABEL_6:
  v5 = strlen(v4);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v32 = v5;
  if (v5)
  {
    memcpy(__dst, v4, v5);
  }

  *(__dst + v6) = 0;
  v7 = v32;
  if ((v32 & 0x80u) == 0)
  {
    v8 = v32;
  }

  else
  {
    v8 = __dst[1];
  }

  if (v8 + 37 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = *(a1 + 8);
  if (v8 + 37 > 0x16)
  {
    operator new();
  }

  qmemcpy(__p, "BannerHead_LPR_Offline_SAR_or_Reroute", sizeof(__p));
  if ((v32 & 0x80u) == 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  memmove(v22, v10, v8);
  v22[v8] = 0;
  v11 = sub_9274F4(v9, __p);
  if (*(v11 + 23) < 0)
  {
    sub_325C(&v29, *v11, v11[1]);
  }

  else
  {
    v12 = *v11;
    v30 = v11[2];
    v29 = v12;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v13 = *(a1 + 8);
  memset(__p, 0, 24);
  __p[23] = v8 + 37;
  qmemcpy(__p, "BannerBody_LPR_Offline_SAR_or_Reroute", sizeof(__p));
  if (v7 >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  memmove(v22, v14, v8);
  v22[v8] = 0;
  v15 = sub_9274F4(v13, __p);
  if (*(v15 + 23) < 0)
  {
    sub_325C(v27, *v15, v15[1]);
  }

  else
  {
    v16 = *v15;
    v28 = v15[2];
    *v27 = v16;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  memset(v23, 0, 24);
  HIBYTE(v23[2]) = v8 + 37;
  qmemcpy(v23, "VoiceAlert_LPR_Offline_SAR_or_Reroute", 37);
  if (v7 >= 0)
  {
    v17 = __dst;
  }

  else
  {
    v17 = __dst[0];
  }

  memmove(&v23[4] + 5, v17, v8);
  *(&v23[4] + v8 + 5) = 0;
  memset(__p, 0, 32);
  *&__p[32] = 1065353216;
  sub_65F810(a1 + 24, v23, __p, *(a1 + 3261), &v23[3]);
  *v25 = *&v23[3];
  v26 = v24;
  v24 = 0;
  *&v23[3] = 0uLL;
  v18 = *&__p[16];
  if (*&__p[16])
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

  v20 = *__p;
  *__p = 0;
  if (v20)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v23[2]) < 0)
  {
    operator delete(v23[0]);
  }

  sub_5CB7CC(a2, &v29, v27, v25);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
LABEL_45:
      if ((SHIBYTE(v30) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }
  }

  else if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(v27[0]);
  if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
LABEL_46:
    if ((v32 & 0x80000000) == 0)
    {
      return;
    }

LABEL_51:
    operator delete(__dst[0]);
    return;
  }

LABEL_50:
  operator delete(v29);
  if (v32 < 0)
  {
    goto LABEL_51;
  }
}

void sub_5B7864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (*(v39 - 105) < 0)
  {
    operator delete(*(v39 - 128));
  }

  if (*(v39 - 81) < 0)
  {
    operator delete(*(v39 - 104));
  }

  _Unwind_Resume(exception_object);
}

void sub_5B790C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_5C0A00(a4);
  if (*(a2 + 2096) != 1)
  {
    return;
  }

  *a4 = *a2;
  sub_5AA47C(v41, a2);
  *(a4 + 576) = sub_59F53C((a1 + 2728), v41);
  v8 = __p;
  if (__p)
  {
    v9 = v65;
    v10 = __p;
    if (v65 != __p)
    {
      do
      {
        v9 -= 2000;
        sub_5C0D2C(v9);
      }

      while (v9 != v8);
      v10 = __p;
    }

    v65 = v8;
    operator delete(v10);
  }

  v11 = v62;
  if (v62)
  {
    v12 = v63;
    v13 = v62;
    if (v63 != v62)
    {
      do
      {
        v12 -= 2000;
        sub_5C0D2C(v12);
      }

      while (v12 != v11);
      v13 = v62;
    }

    v63 = v11;
    operator delete(v13);
  }

  v14 = v60;
  if (v60)
  {
    v15 = v61;
    v16 = v60;
    if (v61 != v60)
    {
      do
      {
        v15 -= 2000;
        sub_5C0D2C(v15);
      }

      while (v15 != v14);
      v16 = v60;
    }

    v61 = v14;
    operator delete(v16);
  }

  if (v59 == 1)
  {
    if (v58 < 0)
    {
      operator delete(v57);
    }

    if (v56 == 1)
    {
      if (v55 < 0)
      {
        operator delete(v54);
      }

      v17 = v52;
      if (v52)
      {
        v18 = v53;
        v19 = v52;
        if (v53 != v52)
        {
          do
          {
            v20 = *(v18 - 1);
            v18 -= 3;
            if (v20 < 0)
            {
              operator delete(*v18);
            }
          }

          while (v18 != v17);
          v19 = v52;
        }

        v53 = v17;
        operator delete(v19);
      }

      if (v51 < 0)
      {
        operator delete(v50);
        if ((v49 & 0x80000000) == 0)
        {
LABEL_33:
          if ((v47 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

LABEL_69:
          operator delete(v46);
          v21 = v44;
          if (v44)
          {
            goto LABEL_35;
          }

          goto LABEL_39;
        }
      }

      else if ((v49 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(v48);
      if (v47 < 0)
      {
        goto LABEL_69;
      }
    }

LABEL_34:
    v21 = v44;
    if (v44)
    {
LABEL_35:
      v22 = v45;
      v23 = v21;
      if (v45 != v21)
      {
        do
        {
          v22 = sub_3A9518(v22 - 1120);
        }

        while (v22 != v21);
        v23 = v44;
      }

      v45 = v21;
      operator delete(v23);
    }

LABEL_39:
    sub_570440(&v43);
    if (v42[1120] == 1)
    {
      sub_3A9518(v42);
    }
  }

  sub_5B7D84(a1, a3, (a2 + 2016), v36);
  sub_5A0314((a4 + 120), v36);
  sub_53A868(&v40);
  sub_53A868(&v39);
  v24 = v37;
  if (v37)
  {
    v25 = v38;
    v26 = v37;
    if (v38 != v37)
    {
      do
      {
        v25 = sub_53A868(v25 - 160);
      }

      while (v25 != v24);
      v26 = v37;
    }

    v38 = v24;
    operator delete(v26);
  }

  v27 = v36[0];
  if (v36[0])
  {
    v28 = v36[1];
    v29 = v36[0];
    if (v36[1] != v36[0])
    {
      do
      {
        v28 = sub_53A868(v28 - 160);
      }

      while (v28 != v27);
      v29 = v36[0];
    }

    v36[1] = v27;
    operator delete(v29);
  }

  if ((*a4 - 39) <= 1)
  {
    v30 = *a3;
    v31 = a3[1];
    if (*a3 != v31)
    {
      while (!sub_68D7D8(v30) || sub_68D80C(v30))
      {
        v30 += 7808;
        if (v30 == v31)
        {
          v30 = v31;
          break;
        }
      }

      v31 = a3[1];
    }

    if (v30 != v31)
    {
      v32 = v30 - *a3;
      if (v32 != -7808)
      {
        v33 = sub_5B7F90(a3, 0x4FBCDA3AC10C9715 * (v32 >> 7));
        *(a4 + 584) = sub_68C850(v33);
      }
    }
  }

  v34 = sub_6A0C34(a3);
  if (v34 != -1)
  {
    v35 = sub_5B7F90(a3, v34);
    *(a4 + 580) = sub_68C850(v35);
  }

  sub_5A04B4(a1, a4);
}

void sub_5B7D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_59F87C(&a55);
  sub_5C0F34(v55);
  _Unwind_Resume(a1);
}

void sub_5B7D84(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_6A0C34(a2);
  if (v8 == -1)
  {
    v10 = *a2;
    v11 = a2[1];
    if (*a2 != v11)
    {
      do
      {
        if (sub_68D7D8(v10) && !sub_68D80C(v10))
        {
          goto LABEL_19;
        }

        v10 += 7808;
      }

      while (v10 != v11);
      v10 = v11;
LABEL_19:
      v11 = a2[1];
    }

    if (v10 != v11)
    {
      v14 = v10 - *a2;
      if (v14 != -7808)
      {
        sub_5B7F90(a2, 0x4FBCDA3AC10C9715 * (v14 >> 7));
      }
    }

    sub_5BA7E8(a4);
  }

  v9 = sub_5B7F90(a2, v8);
  if (!sub_68D7D8(v9))
  {
    v12 = *a2;
    v13 = a2[1];
    if (*a2 != v13)
    {
      do
      {
        if (sub_68D7D8(v12) && !sub_68D80C(v12))
        {
          goto LABEL_24;
        }

        v12 += 7808;
      }

      while (v12 != v13);
      v12 = v13;
LABEL_24:
      v13 = a2[1];
    }

    if (v12 == v13)
    {
      v15 = -1;
    }

    else
    {
      v15 = 0x4FBCDA3AC10C9715 * ((v12 - *a2) >> 7);
    }

    v16 = sub_5B7F90(a2, v15);

    sub_5BA200(a1, v16, a4);
  }

  sub_5B9C30(a1, v9, a3, a4);
}

uint64_t sub_5B7F90(void *a1, unint64_t a2)
{
  if (0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 7));
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

  return *a1 + 7808 * a2;
}

void sub_5B80CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_5B81AC(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v5 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v6 = a2;
  if (v5 + 10 >= 0x17)
  {
    operator new();
  }

  *(&v41 + 1) = 25697;
  v42 = 0;
  HIBYTE(v42) = v5 + 10;
  *&v41 = 0x654872656E6E6142;
  if (v5)
  {
    if ((v4 & 0x80u) != 0)
    {
      a2 = *a2;
    }

    memmove(&v41 + 10, a2, v5);
  }

  *(&v41 + v5 + 10) = 0;
  v8 = SHIBYTE(v42);
  if ((SHIBYTE(v42) & 0x8000000000000000) != 0)
  {
    v8 = *(&v41 + 1);
    v9 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v9 - *(&v41 + 1)) < 6)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v42 & 0x7FFFFFFFFFFFFFFFuLL) < *(&v41 + 1) + 6 - v9)
      {
        sub_3244();
      }

LABEL_16:
      operator new();
    }

    v10 = v41;
  }

  else
  {
    if ((SHIBYTE(v42) - 17) < 6)
    {
      goto LABEL_16;
    }

    v10 = &v41;
  }

  v11 = v10 + v8;
  *(v11 + 2) = 25701;
  *v11 = 1835619423;
  v12 = v8 + 6;
  if (SHIBYTE(v42) < 0)
  {
    *(&v41 + 1) = v8 + 6;
  }

  else
  {
    HIBYTE(v42) = v12 & 0x7F;
  }

  *(v10 + v12) = 0;
  v47 = v41;
  v48 = v42;
  v13 = *(v6 + 23);
  if (v13 >= 0)
  {
    v14 = *(v6 + 23);
  }

  else
  {
    v14 = v6[1];
  }

  if (v14 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v14 + 10 >= 0x17)
  {
    operator new();
  }

  *(&v41 + 1) = 31076;
  v42 = 0;
  HIBYTE(v42) = v14 + 10;
  *&v41 = 0x6F4272656E6E6142;
  if (v14)
  {
    if ((v13 & 0x80u) == 0)
    {
      v15 = v6;
    }

    else
    {
      v15 = *v6;
    }

    memmove(&v41 + 10, v15, v14);
  }

  *(&v41 + v14 + 10) = 0;
  v16 = SHIBYTE(v42);
  if ((SHIBYTE(v42) & 0x8000000000000000) != 0)
  {
    v16 = *(&v41 + 1);
    v17 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v17 - *(&v41 + 1)) < 6)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v42 & 0x7FFFFFFFFFFFFFFFuLL) < *(&v41 + 1) + 6 - v17)
      {
        sub_3244();
      }

LABEL_38:
      operator new();
    }

    v18 = v41;
  }

  else
  {
    if ((SHIBYTE(v42) - 17) < 6)
    {
      goto LABEL_38;
    }

    v18 = &v41;
  }

  v19 = v18 + v16;
  *(v19 + 2) = 25701;
  *v19 = 1835619423;
  v20 = v16 + 6;
  if (SHIBYTE(v42) < 0)
  {
    *(&v41 + 1) = v16 + 6;
  }

  else
  {
    HIBYTE(v42) = v20 & 0x7F;
  }

  *(v18 + v20) = 0;
  v45 = v41;
  v46 = v42;
  v21 = *(v6 + 23);
  if (v21 >= 0)
  {
    v22 = *(v6 + 23);
  }

  else
  {
    v22 = v6[1];
  }

  if (v22 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v22 + 10 >= 0x17)
  {
    operator new();
  }

  *(&v41 + 1) = 29810;
  v42 = 0;
  HIBYTE(v42) = v22 + 10;
  *&v41 = 0x656C416563696F56;
  if (v22)
  {
    if ((v21 & 0x80u) == 0)
    {
      v23 = v6;
    }

    else
    {
      v23 = *v6;
    }

    memmove(&v41 + 10, v23, v22);
  }

  *(&v41 + v22 + 10) = 0;
  v24 = SHIBYTE(v42);
  if ((SHIBYTE(v42) & 0x8000000000000000) != 0)
  {
    v24 = *(&v41 + 1);
    v25 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v25 - *(&v41 + 1)) < 6)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v42 & 0x7FFFFFFFFFFFFFFFuLL) < *(&v41 + 1) + 6 - v25)
      {
        sub_3244();
      }

LABEL_60:
      operator new();
    }

    v26 = v41;
  }

  else
  {
    if ((SHIBYTE(v42) - 17) < 6)
    {
      goto LABEL_60;
    }

    v26 = &v41;
  }

  v27 = v26 + v24;
  *(v27 + 2) = 25701;
  *v27 = 1835619423;
  v28 = v24 + 6;
  if (SHIBYTE(v42) < 0)
  {
    *(&v41 + 1) = v24 + 6;
  }

  else
  {
    HIBYTE(v42) = v28 & 0x7F;
  }

  *(v26 + v28) = 0;
  v43 = v41;
  v44 = v42;
  v29 = sub_9274F4(*(a1 + 8), &v47);
  sub_64BC20(&v41, v29);
  v30 = sub_9274F4(*(a1 + 8), &v45);
  sub_64BC20(v40, v30);
  *v34 = 0u;
  v35 = 0u;
  v36 = 1065353216;
  sub_65F810(a1 + 24, &v43, v34, *(a1 + 3261), __p);
  sub_64BC20(v39, __p);
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  v31 = v35;
  if (v35)
  {
    do
    {
      v32 = *v31;
      sub_55F7FC((v31 + 2));
      operator delete(v31);
      v31 = v32;
    }

    while (v32);
  }

  v33 = v34[0];
  v34[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  sub_5CB500(a3, &v41, v40, v39);
  sub_53A868(v39);
  sub_53A868(v40);
  sub_53A868(&v41);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
LABEL_74:
      if ((SHIBYTE(v48) & 0x80000000) == 0)
      {
        return;
      }

LABEL_78:
      operator delete(v47);
      return;
    }
  }

  else if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    goto LABEL_74;
  }

  operator delete(v45);
  if (SHIBYTE(v48) < 0)
  {
    goto LABEL_78;
  }
}

void sub_5B89C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a64 < 0)
  {
    operator delete(__p);
  }

  if (*(v64 - 121) < 0)
  {
    operator delete(*(v64 - 144));
  }

  if (*(v64 - 89) < 0)
  {
    operator delete(*(v64 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_5B8A98(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v6 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v8 = a2;
  if (v6 + 10 >= 0x17)
  {
    operator new();
  }

  v40 = 25697;
  v41 = 0;
  HIBYTE(v41) = v6 + 10;
  v39 = 0x654872656E6E6142;
  if (v6)
  {
    if ((v5 & 0x80u) != 0)
    {
      a2 = *a2;
    }

    memmove(&v40 + 2, a2, v6);
  }

  *(&v40 + v6 + 2) = 0;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = *(v8 + 23);
  }

  else
  {
    v11 = v8[1];
  }

  if (v11 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v11 + 10 >= 0x17)
  {
    operator new();
  }

  v37 = 31076;
  v38 = 0;
  HIBYTE(v38) = v11 + 10;
  v36 = 0x6F4272656E6E6142;
  if (v11)
  {
    if ((v10 & 0x80u) == 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = *v8;
    }

    memmove(&v37 + 2, v12, v11);
  }

  *(&v37 + v11 + 2) = 0;
  v13 = *(v8 + 23);
  if (v13 >= 0)
  {
    v14 = *(v8 + 23);
  }

  else
  {
    v14 = v8[1];
  }

  if (v14 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v14 + 10 >= 0x17)
  {
    operator new();
  }

  v34 = 29810;
  v35 = 0;
  HIBYTE(v35) = v14 + 10;
  v33 = 0x656C416563696F56;
  if (v14)
  {
    if ((v13 & 0x80u) == 0)
    {
      v15 = v8;
    }

    else
    {
      v15 = *v8;
    }

    memmove(&v34 + 2, v15, v14);
  }

  *(&v34 + v14 + 2) = 0;
  v16 = sub_9274F4(*(a1 + 8), &v39);
  sub_64BC20(v32, v16);
  v17 = sub_9274F4(*(a1 + 8), &v36);
  sub_64BC20(v31, v17);
  v30 = sub_570CBC(a3);
  if (v30 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = SHIBYTE(v35);
    if ((SHIBYTE(v35) & 0x8000000000000000) != 0)
    {
      v18 = v34;
      if ((v35 & 0x7FFFFFFFFFFFFFFFuLL) - 1 - v34 < 0xC)
      {
        if (0x7FFFFFFFFFFFFFF7 - (v35 & 0x7FFFFFFFFFFFFFFFuLL) < v34 + 12 - ((v35 & 0x7FFFFFFFFFFFFFFFuLL) - 1))
        {
          sub_3244();
        }

LABEL_39:
        operator new();
      }

      v19 = v33;
    }

    else
    {
      if ((SHIBYTE(v35) - 11) < 0xC)
      {
        goto LABEL_39;
      }

      v19 = &v33;
    }

    qmemcpy(v19 + v18, "_HasDistance", 12);
    v20 = v18 + 12;
    if (SHIBYTE(v35) < 0)
    {
      v34 = v18 + 12;
    }

    else
    {
      HIBYTE(v35) = v20 & 0x7F;
    }

    *(v19 + v20) = 0;
  }

  *v24 = 0u;
  v25 = 0u;
  v26 = 1065353216;
  sub_65F810(a1 + 24, &v33, v24, *(a1 + 3261), __p);
  sub_64BC20(v29, __p);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  v21 = v25;
  if (v25)
  {
    do
    {
      v22 = *v21;
      sub_55F7FC((v21 + 2));
      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = v24[0];
  v24[0] = 0;
  if (v23)
  {
    operator delete(v23);
  }

  if (v30 != 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v24[0]) = 1;
    sub_64E428(v29, "{distance}", &v30, v24);
  }

  sub_5CB500(a4, v32, v31, v29);
  sub_53A868(v29);
  sub_53A868(v31);
  sub_53A868(v32);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
LABEL_56:
      if ((SHIBYTE(v41) & 0x80000000) == 0)
      {
        return;
      }

LABEL_60:
      operator delete(v39);
      return;
    }
  }

  else if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
    goto LABEL_56;
  }

  operator delete(v36);
  if (SHIBYTE(v41) < 0)
  {
    goto LABEL_60;
  }
}

void sub_5B9014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_53A868(&a22);
  sub_53A868(&a43);
  sub_53A868(&a63);
  if (*(v63 - 129) < 0)
  {
    operator delete(*(v63 - 152));
    if ((*(v63 - 105) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v63 - 105) & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v63 - 81) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  operator delete(*(v63 - 128));
  if (*(v63 - 81) < 0)
  {
LABEL_4:
    operator delete(*(v63 - 104));
    _Unwind_Resume(a1);
  }

LABEL_7:
  _Unwind_Resume(a1);
}

void sub_5B90E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if ((sub_4D20B0(a2, 4) & 1) != 0 || (sub_4D20B0(a2, 9) & 1) != 0 || (sub_4D20B0(a3, 4) & 1) == 0 && !sub_4D20B0(a3, 9))
  {
    return;
  }

  if ((a5 & 1) == 0)
  {
    v10 = a4[4];
    v11 = *(a1 + 8);
    strcpy(v31, "BannerBody_TollTrailer");
    HIBYTE(v31[2]) = 22;
    v12 = sub_9274F4(v11, v31);
    v13 = *(v10 - 152);
    if (v13 >= *(v10 - 144))
    {
      *(v10 - 152) = sub_1CEE8(v10 - 160, v12);
      if ((SHIBYTE(v31[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

    if (*(v12 + 23) < 0)
    {
      sub_325C(*(v10 - 152), *v12, v12[1]);
    }

    else
    {
      v14 = *v12;
      *(v13 + 16) = v12[2];
      *v13 = v14;
    }

    *(v10 - 152) = v13 + 24;
    *(v10 - 152) = v13 + 24;
    if (SHIBYTE(v31[2]) < 0)
    {
LABEL_34:
      operator delete(v31[0]);
    }
  }

LABEL_10:
  strcpy(v33, "VoiceAlert_TollTrailer");
  HIBYTE(v33[2]) = 22;
  memset(v31, 0, sizeof(v31));
  v32 = 1065353216;
  sub_65F810(a1 + 24, v33, v31, *(a1 + 3261), __p);
  v15 = a4[7];
  v16 = a4[8];
  if (v15 >= v16)
  {
    v19 = a4[6];
    v20 = v15 - v19;
    v21 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v19) >> 3);
    v22 = v21 + 1;
    if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v23 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v19) >> 3);
    if (2 * v23 > v22)
    {
      v22 = 2 * v23;
    }

    if (v23 >= 0x555555555555555)
    {
      v24 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (v24 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v25 = 24 * v21;
    *v25 = *__p;
    *(v25 + 16) = v35;
    __p[1] = 0;
    v35 = 0;
    __p[0] = 0;
    v18 = 24 * v21 + 24;
    v26 = 24 * v21 - v20;
    memcpy((v25 - v20), v19, v20);
    a4[6] = v26;
    a4[7] = v18;
    a4[8] = 0;
    if (v19)
    {
      operator delete(v19);
      v27 = SHIBYTE(v35);
      a4[7] = v18;
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_25;
    }
  }

  else
  {
    v17 = *__p;
    *(v15 + 16) = v35;
    *v15 = v17;
    __p[1] = 0;
    v35 = 0;
    __p[0] = 0;
    v18 = v15 + 24;
  }

  a4[7] = v18;
LABEL_25:
  v28 = v31[2];
  if (v31[2])
  {
    do
    {
      v29 = *v28;
      sub_55F7FC((v28 + 2));
      operator delete(v28);
      v28 = v29;
    }

    while (v29);
  }

  v30 = v31[0];
  v31[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v33[2]) < 0)
  {
    operator delete(v33[0]);
  }
}

void sub_5B940C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  *(v29 - 152) = v28;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5B9468(int a1@<W1>, int a2@<W2>, std::string *a3@<X8>)
{
  if (a1 == 4)
  {
    operator new();
  }

  if (a1 == 6 || (a2 - 5) <= 0xFFFFFFFB)
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  v5 = "";
  if (a1 == 3)
  {
    v5 = "_R";
  }

  if (a1 == 1)
  {
    v6 = "_L";
  }

  else
  {
    v6 = v5;
  }

  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v21 = v7;
  if (v7)
  {
    memcpy(__dst, v6, v7);
  }

  *(__dst + v8) = 0;
  v18 = 0;
  v19 = 0x200000000000000;
  *__s = 0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v9 = 13151;
    }

    else
    {
      v9 = 13407;
    }
  }

  else if (a2 == 1)
  {
    v9 = 12639;
  }

  else
  {
    v9 = 12895;
  }

  *__s = v9;
  strcpy(&v15, "VoiceAlert_LaneTrailer");
  *(&v15.__r_.__value_.__s + 23) = 22;
  if ((v21 & 0x80u) == 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v11 = v21;
  }

  else
  {
    v11 = __dst[1];
  }

  v12 = std::string::append(&v15, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v16, __s, 2uLL);
  *a3 = *v14;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_33:
      if ((SHIBYTE(v19) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19) & 0x80000000) == 0)
  {
LABEL_34:
    if (v21 < 0)
    {
      goto LABEL_39;
    }

    return;
  }

LABEL_38:
  operator delete(*__s);
  if (v21 < 0)
  {
LABEL_39:
    operator delete(__dst[0]);
  }
}

void sub_5B9734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a28 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v28 - 49) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a23);
  if ((*(v28 - 49) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(*(v28 - 72));
  _Unwind_Resume(exception_object);
}

void sub_5B97B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 23) = 15;
  strcpy(a4, "_Familiar_Route");
  v8 = sub_58BBC(a2);
  if (*v8 == v8[1])
  {
    HIBYTE(v18) = 0;
    LOBYTE(v17[0]) = 0;
  }

  else
  {
    v9 = sub_58BBC(a2);
    v10 = *v9;
    if (*(*v9 + 23) < 0)
    {
      sub_325C(v17, *v10, *(v10 + 1));
    }

    else
    {
      v11 = *v10;
      v18 = *(v10 + 2);
      *v17 = v11;
    }
  }

  v12 = HIBYTE(v18);
  if (v18 < 0)
  {
    v12 = v17[1];
  }

  if (v12)
  {
    std::string::append(a4, "_Named", 6uLL);
  }

  sub_5CDE28(a3, __p);
  if ((v16 & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v14 = v16;
  }

  else
  {
    v14 = __p[1];
  }

  std::string::append(a4, v13, v14);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_68D7D8(a2))
  {
    std::string::append(a4, "_Main", 5uLL);
  }

  if (*(a1 + 4836) == 1)
  {
    std::string::append(a4, "_EnRoute", 8uLL);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_5B9944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v21 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((*(v21 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v21);
  _Unwind_Resume(exception_object);
}

void sub_5B99BC(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  sub_5CDE28(a2, &v7);
  v5 = std::string::insert(&v7, 0, "_Familiar_Route", 0xFuLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&a3->__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
    if (*(a1 + 4836) != 1)
    {
      return;
    }

    goto LABEL_5;
  }

  if (*(a1 + 4836) == 1)
  {
LABEL_5:
    std::string::append(a3, "_EnRoute", 8uLL);
  }
}

void sub_5B9A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_5B9A9C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 23) = 10;
  strcpy(a2, "_FollowUp_");
  v4 = sub_68F890(a1);
  if (v4)
  {
    v5 = "Familiar_Route";
  }

  else
  {
    v5 = "Take_Alternate";
  }

  std::string::append(a2, v5, 0xEuLL);
  v6 = sub_58BBC(a1);
  if (*v6 == v6[1])
  {
    HIBYTE(v12) = 0;
    LOBYTE(__p[0]) = 0;
  }

  else
  {
    v7 = sub_58BBC(a1);
    v8 = *v7;
    if (*(*v7 + 23) < 0)
    {
      sub_325C(__p, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      v12 = *(v8 + 2);
      *__p = v9;
    }
  }

  v10 = HIBYTE(v12);
  if (v12 < 0)
  {
    v10 = __p[1];
  }

  if (v10)
  {
    std::string::append(a2, "_Named", 6uLL);
  }

  if (v4)
  {
    std::string::append(a2, "_TrafficUpdate", 0xEuLL);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_5B9BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((*(v14 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v14 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v14);
  _Unwind_Resume(exception_object);
}

void sub_5B9C30(uint64_t a1@<X0>, unsigned int **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_59E940(a1 + 3960);
  if (*v8 != v8[1] && **v8 != 0x7FFFFFFF)
  {

    sub_5BAD60(a2, a4);
  }

  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  sub_64B998(a4 + 48);
  sub_64B998(a4 + 208);
  v9 = *(a1 + 8);
  *(&__p[0].__r_.__value_.__s + 23) = 17;
  strcpy(__p, "BannerHead_Delays");
  v10 = sub_9274F4(v9, __p);
  v11 = *(a4 + 8);
  if (v11 >= *(a4 + 16))
  {
    v12 = sub_5C4594(a4, v10);
  }

  else
  {
    sub_64BC20(*(a4 + 8), v10);
    v12 = v11 + 160;
  }

  *(a4 + 8) = v12;
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  __p[0].__r_.__value_.__s.__data_[15] = 0;
  __p[0].__r_.__value_.__r.__words[2] = 0xE00000000000000;
  strcpy(__p, "DEV:BannerBody");
  sub_5B97B0(a1, a2, a3, &v45);
  if ((SBYTE7(v46) & 0x80u) == 0)
  {
    v13 = &v45;
  }

  else
  {
    v13 = v45;
  }

  if ((SBYTE7(v46) & 0x80u) == 0)
  {
    v14 = BYTE7(v46);
  }

  else
  {
    v14 = *(&v45 + 1);
  }

  v15 = std::string::append(__p, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v49 = v15->__r_.__value_.__r.__words[2];
  v48 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v46) < 0)
  {
    operator delete(v45);
    if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__p[0].__r_.__value_.__l.__data_);
LABEL_16:
  v45 = 0u;
  v46 = 0u;
  v47 = 1065353216;
  v17 = sub_68EC68(a2);
  v18 = v17;
  v19 = *(v17 + 23);
  if (v19 < 0)
  {
    v19 = v17[1];
  }

  if (v19)
  {
    __p[0].__r_.__value_.__r.__words[0] = "{RouteName}";
    v20 = sub_353894(&v45, "{RouteName}");
    v21 = (v20 + 5);
    if (v20 + 5 != v18)
    {
      v22 = *(v20 + 63);
      v23 = *(v18 + 23);
      if (v22 < 0)
      {
        if (v23 >= 0)
        {
          v25 = v18;
        }

        else
        {
          v25 = *v18;
        }

        if (v23 >= 0)
        {
          v26 = *(v18 + 23);
        }

        else
        {
          v26 = v18[1];
        }

        sub_13B38(v21, v25, v26);
      }

      else if ((*(v18 + 23) & 0x80) != 0)
      {
        sub_13A68(v21, *v18, v18[1]);
      }

      else
      {
        v24 = *v18;
        *(v21 + 16) = v18[2];
        *v21 = v24;
      }
    }
  }

  if (a3[1] - *a3 == 2000)
  {
    sub_570D48(*a3, __p);
    if ((v42 & 1) == 0)
    {
      sub_4F0F0C();
    }

    v43 = v40;
    v44 = v41;
    v41 = 0;
    v40 = 0uLL;
    sub_3A9518(__p);
    __p[0].__r_.__value_.__r.__words[0] = "{AreaIncident}";
    v27 = sub_353894(&v45, "{AreaIncident}");
    v28 = v27 + 5;
    if (v27 + 5 != &v43)
    {
      if (*(v27 + 63) < 0)
      {
        if (SHIBYTE(v44) >= 0)
        {
          v29 = &v43;
        }

        else
        {
          v29 = v43;
        }

        if (SHIBYTE(v44) >= 0)
        {
          v30 = HIBYTE(v44);
        }

        else
        {
          v30 = *(&v43 + 1);
        }

        sub_13B38(v28, v29, v30);
      }

      else if ((HIBYTE(v44) & 0x80) != 0)
      {
        sub_13A68(v28, v43, *(&v43 + 1));
      }

      else
      {
        *v28 = v43;
        v27[7] = v44;
      }
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43);
    }
  }

  sub_6A5584(&v48, &v45, *(a1 + 8), 0, &v43);
  sub_64BC20(__p, &v43);
  v31 = sub_68C850(a2);
  if (v31 < 0)
  {
    v32 = 65236;
  }

  else
  {
    v32 = 300;
  }

  v33 = v32 + v31 % 600 + ((-9611 * (v32 + v31 % 600)) >> 16);
  sub_64EA58(__p, "{duration}", 600 * (v31 / 600 + (v33 >> 9) + ((v33 & 0x8000) >> 15)));
  v34 = *(a4 + 32);
  if (v34 >= *(a4 + 40))
  {
    v35 = sub_5C489C((a4 + 24), __p);
  }

  else
  {
    sub_55BD50(*(a4 + 32), __p);
    v35 = v34 + 160;
  }

  *(a4 + 32) = v35;
  sub_53A868(__p);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  v36 = v46;
  if (v46)
  {
    while (1)
    {
      v37 = *v36;
      if (v36[63] < 0)
      {
        operator delete(*(v36 + 5));
        if ((v36[39] & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

LABEL_66:
        operator delete(*(v36 + 2));
        operator delete(v36);
        v36 = v37;
        if (!v37)
        {
          break;
        }
      }

      else
      {
        if (v36[39] < 0)
        {
          goto LABEL_66;
        }

LABEL_63:
        operator delete(v36);
        v36 = v37;
        if (!v37)
        {
          break;
        }
      }
    }
  }

  v38 = v45;
  *&v45 = 0;
  if (v38)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }
}

void sub_5BA0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 32) = v10;
  sub_53A868(&a9);
  if (*(v11 - 137) < 0)
  {
    operator delete(*(v11 - 160));
  }

  sub_2CD04(v11 - 128);
  if (*(v11 - 57) < 0)
  {
    operator delete(*(v11 - 80));
  }

  sub_5A0410(v9);
  _Unwind_Resume(a1);
}

void sub_5BA200(uint64_t a1@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v5 = sub_59E940(a1 + 3960);
  if (*v5 == v5[1] || *(*v5 + 4) == 0x7FFFFFFF)
  {
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
    sub_64B998((a3 + 3));
    sub_64B998((a3 + 13));
    operator new();
  }

  sub_5BAD60(a2, a3);
}

void sub_5BA6AC(_Unwind_Exception *a1, void *__p, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *(v4 + 32) = v5;
  sub_53A868(va);
  if (*(v6 - 153) < 0)
  {
    operator delete(*(v6 - 176));
  }

  sub_2CD04(v6 - 144);
  if (*(v6 - 73) < 0)
  {
    operator delete(*(v6 - 96));
  }

  sub_5A0410(v4);
  _Unwind_Resume(a1);
}

void sub_5BA7E8(_OWORD *a1@<X8>)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  sub_64B998((a1 + 3));
  sub_64B998((a1 + 13));
  operator new();
}

void sub_5BAC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_53A868(&a18);
  sub_2CD04(v24 - 176);
  if (*(v24 - 105) < 0)
  {
    operator delete(*(v24 - 128));
  }

  if (*(v24 - 73) < 0)
  {
    operator delete(*(v24 - 96));
  }

  sub_5A0410(v23);
  _Unwind_Resume(a1);
}

void sub_5BAD60(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  sub_64B998((a2 + 3));
  sub_64B998((a2 + 13));
  sub_68F890(a1);
  operator new();
}

void sub_5BB120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  *(v38 + 32) = v39;
  sub_53A868(&a10);
  if (a38 < 0)
  {
    operator delete(__p);
    if ((*(v40 - 153) & 0x80000000) == 0)
    {
LABEL_3:
      sub_2CD04(v40 - 144);
      if ((*(v40 - 73) & 0x80000000) == 0)
      {
LABEL_8:
        sub_5A0410(v38);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(*(v40 - 96));
      goto LABEL_8;
    }
  }

  else if ((*(v40 - 153) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v40 - 176));
  sub_2CD04(v40 - 144);
  if ((*(v40 - 73) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t **sub_5BB284(uint64_t a1)
{
  v2 = *(a1 + 8);
  strcpy(v9, "Separator_After_Period");
  HIBYTE(v9[2]) = 22;
  if (sub_928074(v2, v9, 0))
  {
    v3 = *(a1 + 8);
    strcpy(__p, "Separator_After_Period");
    v8 = 22;
    result = sub_9274F4(v3, __p);
    if ((v8 & 0x80000000) == 0)
    {
      if ((SHIBYTE(v9[2]) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_8:
      v6 = result;
      operator delete(v9[0]);
      return v6;
    }

    v5 = result;
    operator delete(*__p);
    result = v5;
    if (SHIBYTE(v9[2]) < 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = &unk_229A3A0;
    if (SHIBYTE(v9[2]) < 0)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_5BB36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

void sub_5BB78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_2CD04(&a16);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_5BB7DC(void *a1, unint64_t a2)
{
  if (0x1CAC083126E978D5 * ((a1[1] - *a1) >> 4) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0x1CAC083126E978D5 * ((a1[1] - *a1) >> 4));
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

  return *a1 + 2000 * a2;
}

void sub_5BB918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_5BB9F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_45AC50(a1);
  sub_2B7A20(a2, *(v4 + 32) & 0xFFFFFFFFFFFFFFLL, &v8);
  sub_31BF20(&v8, v10);
  if (*(&v8 + 1))
  {
    v9 = *(&v8 + 1);
    operator delete(*(&v8 + 1));
  }

  v5 = sub_4D2138(a1);
  sub_2F4C8(v10, 0, &v8, v5 / -1000000000.0 + 1.0, 1.0);
  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  *v10 = v8;
  v11 = v9;
  v6 = *v8;
  v10[1] = v8;
  operator delete(v8);
  return v6;
}

void sub_5BBAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_5BBAF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_4D1F60(a1);
  sub_2B7A20(a2, *(v4 + 32) & 0xFFFFFFFFFFFFFFLL, &v8);
  sub_31BF20(&v8, &v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v5 = sub_4D2140(a1);
  sub_2F4C8(&v10, 0, &v8, 0.0, v5 / 1000000000.0);
  if (v10)
  {
    *&v11 = v10;
    operator delete(v10);
  }

  v10 = v8;
  v11 = *__p;
  v6 = *(__p[0] - 12);
  if (v8)
  {
    *&v11 = v8;
    operator delete(v8);
  }

  return v6;
}

void sub_5BBBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_5BBBF8(uint64_t a1, uint64_t a2)
{
  v4 = *a2 - 1;
  if (v4 <= 0x24)
  {
    sub_5CDB24(a2, *(a1 + 3072), *(a1 + qword_229A6D8[v4]));
  }

  if (sub_5CC010(a2) && sub_5CC024(a2))
  {
    if (sub_5CBD3C(*(a2 + 712)))
    {

      sub_5BBD64(a1, a2);
    }

    else
    {

      sub_5BBCB4(a1, a2);
    }
  }
}

void sub_5BBCB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 712);
  if (!sub_5CBD84(v4) && sub_5CBD54(v4) && sub_5CBD4C(v4))
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      sub_4F0F0C();
    }

    v5 = *(v4 + 24);
    if (v5 <= 0xF && ((0xFEFFu >> v5) & 1) != 0)
    {
      v6 = *(a1 + qword_229A800[v5]);
      v7 = *(a1 + 3108);

      sub_5CDB24(a2, v7, v6);
    }
  }
}

void sub_5BBD64(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 712);
  if (!sub_5CBD84(v4) && sub_5CBD54(v4) && sub_5CBD3C(v4))
  {
    v5 = *(v4 + 32) - 1;
    if (v5 <= 0x15)
    {
      v6 = *(a1 + 4 * v5 + 3168);
      v7 = *(a1 + 3108);

      sub_5CDB24(a2, v7, v6);
    }
  }
}

uint64_t sub_5BBDFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 712);
  result = sub_5CBD84(v2);
  if ((result & 1) == 0)
  {
    result = sub_5CBD54(v2);
    if (result)
    {
      result = sub_5CBD4C(v2);
      if (result)
      {
        if ((*(v2 + 28) & 1) == 0)
        {
          sub_4F0F0C();
        }

        v4 = *(v2 + 24);
        if (v4 <= 0xF && ((0xFEFFu >> v4) & 1) != 0)
        {

          sub_5CDB34();
        }
      }
    }
  }

  return result;
}

BOOL sub_5BBEAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 712);
  result = sub_5CBD84(v2);
  if (!result)
  {
    result = sub_5CBD54(v2);
    if (result)
    {
      result = sub_5CBD3C(v2);
      if (result && (*(v2 + 32) - 1) <= 0x15)
      {

        sub_5CDB34();
      }
    }
  }

  return result;
}

void sub_5BBF44(uint64_t a1)
{
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  v2 = vnegq_f64(v1);
  *(a1 + 16) = v2;
  *(a1 + 32) = v2;
  *(a1 + 48) = v2;
  *a1 = v2;
  *(a1 + 64) = v2;
  *(a1 + 80) = 0x7FFFFFFFFFFFFFFFLL;
  *&v2.f64[0] = 0x8000000080000000;
  *&v2.f64[1] = 0x8000000080000000;
  *(a1 + 88) = v2;
  *(a1 + 104) = v2;
  *(a1 + 120) = v2;
  *(a1 + 136) = v2;
  *(a1 + 152) = v2;
  *(a1 + 168) = v2;
  *(a1 + 184) = v2;
  *(a1 + 200) = 0x8000000080000000;
  *(a1 + 208) = 0x7FFFFFFF;
  *(a1 + 344) = v1;
  *(a1 + 360) = v1;
  *(a1 + 376) = v1;
  *(a1 + 392) = v1;
  *(a1 + 408) = v1;
  *(a1 + 424) = v1;
  *(a1 + 440) = v1;
  *(a1 + 456) = v1;
  *(a1 + 472) = v1;
  *(a1 + 488) = v1;
  *(a1 + 504) = v1;
  *(a1 + 516) = v1;
  *(a1 + 536) = 0;
  *(a1 + 532) = 0;
  operator new();
}

void sub_5C0458(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_5C0544(_Unwind_Exception *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x5C053CLL);
}

uint64_t sub_5C0A00(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  sub_64B998(a1 + 168);
  sub_64B998(a1 + 328);
  *(a1 + 488) = 0x7FFFFFFF;
  *(a1 + 496) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0x7FFFFFFF;
  *(a1 + 536) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0x7FFFFFFF;
  *(a1 + 580) = xmmword_2299A90;
  *(a1 + 632) = 0;
  *(a1 + 640) = -1;
  *(a1 + 643) = -1;
  *(a1 + 647) = 0;
  *(a1 + 655) = 0u;
  *(a1 + 671) = 0;
  *(a1 + 704) = 0;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 748) = 0;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 736) = 0;
  *(a1 + 752) = 1;
  *(a1 + 772) = 0;
  *(a1 + 756) = 0u;
  *(a1 + 780) = 0xFFFFFFFF00000000;
  *(a1 + 788) = 0;
  *(a1 + 808) = 0;
  *(a1 + 792) = 0u;
  return a1;
}

void sub_5C0B34(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 168);
  sub_5C0ED8((v1 + 144));
  sub_5C0ED8((v1 + 120));
  sub_5C0B98(v2);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v3);
  _Unwind_Resume(a1);
}

uint64_t sub_5C0B98(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void **sub_5C0BF4(void **a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[6];
    if (v3 != v2)
    {
      do
      {
        v3 -= 2000;
        sub_5C0D2C(v3);
      }

      while (v3 != v2);
      v4 = a1[6];
    }

    a1[7] = v2;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    v6 = a1[4];
    v7 = a1[3];
    if (v6 != v5)
    {
      do
      {
        v6 -= 2000;
        sub_5C0D2C(v6);
      }

      while (v6 != v5);
      v7 = a1[3];
    }

    a1[4] = v5;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = a1[1];
    v10 = *a1;
    if (v9 != v8)
    {
      do
      {
        v9 -= 2000;
        sub_5C0D2C(v9);
      }

      while (v9 != v8);
      v10 = *a1;
    }

    a1[1] = v8;
    operator delete(v10);
  }

  return a1;
}

void **sub_5C0CC8(void **a1)
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
        v3 -= 2000;
        sub_5C0D2C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5C0D2C(uint64_t a1)
{
  if (*(a1 + 1999) < 0)
  {
    operator delete(*(a1 + 1976));
    if (*(a1 + 1968) != 1)
    {
LABEL_3:
      v2 = *(a1 + 1752);
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (*(a1 + 1968) != 1)
  {
    goto LABEL_3;
  }

  sub_52A624(a1 + 1800);
  v2 = *(a1 + 1752);
  if (!v2)
  {
LABEL_4:
    result = sub_570440(a1 + 1136);
    if (*(a1 + 1128) != 1)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_10:
  v4 = *(a1 + 1760);
  v5 = v2;
  if (v4 != v2)
  {
    do
    {
      v4 = sub_3A9518(v4 - 1120);
    }

    while (v4 != v2);
    v5 = *(a1 + 1752);
  }

  *(a1 + 1760) = v2;
  operator delete(v5);
  result = sub_570440(a1 + 1136);
  if (*(a1 + 1128) == 1)
  {
LABEL_5:

    return sub_3A9518(a1 + 8);
  }

  return result;
}

uint64_t sub_5C0E04(uint64_t a1)
{
  if (*(a1 + 2000) != 1)
  {
    return a1;
  }

  if (*(a1 + 1999) < 0)
  {
    operator delete(*(a1 + 1976));
    if (*(a1 + 1968) != 1)
    {
LABEL_4:
      v2 = *(a1 + 1752);
      if (!v2)
      {
        goto LABEL_5;
      }

LABEL_10:
      v4 = *(a1 + 1760);
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_3A9518(v4 - 1120);
        }

        while (v4 != v2);
        v5 = *(a1 + 1752);
      }

      *(a1 + 1760) = v2;
      operator delete(v5);
      sub_570440(a1 + 1136);
      if (*(a1 + 1128) == 1)
      {
        goto LABEL_6;
      }

      return a1;
    }
  }

  else if (*(a1 + 1968) != 1)
  {
    goto LABEL_4;
  }

  sub_52A624(a1 + 1800);
  v2 = *(a1 + 1752);
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_570440(a1 + 1136);
  if (*(a1 + 1128) == 1)
  {
LABEL_6:
    sub_3A9518(a1 + 8);
  }

  return a1;
}

void **sub_5C0ED8(void **a1)
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
        v3 = sub_53A868(v3 - 160);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_5C0F34(uint64_t a1)
{
  if (*(a1 + 815) < 0)
  {
    operator delete(*(a1 + 792));
  }

  v2 = *(a1 + 760);
  if (v2)
  {
    v3 = *(a1 + 768);
    v4 = *(a1 + 760);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 168);
      }

      while (v3 != v2);
      v4 = *(a1 + 760);
    }

    *(a1 + 768) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 712);
  if (v5)
  {
    v6 = *(a1 + 720);
    v7 = *(a1 + 712);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 41);
        v6 -= 8;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(a1 + 712);
    }

    *(a1 + 720) = v5;
    operator delete(v7);
  }

  if ((*(a1 + 703) & 0x80000000) == 0)
  {
    if ((*(a1 + 671) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    operator delete(*(a1 + 648));
    v9 = *(a1 + 632);
    if (v9 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  operator delete(*(a1 + 680));
  if (*(a1 + 671) < 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v9 = *(a1 + 632);
  if (v9 != -1)
  {
LABEL_22:
    (off_266B860[v9])(&v21, a1 + 600);
  }

LABEL_23:
  *(a1 + 632) = -1;
  sub_53A868(a1 + 328);
  sub_53A868(a1 + 168);
  v10 = *(a1 + 144);
  if (v10)
  {
    v11 = *(a1 + 152);
    v12 = *(a1 + 144);
    if (v11 != v10)
    {
      do
      {
        v11 = sub_53A868(v11 - 160);
      }

      while (v11 != v10);
      v12 = *(a1 + 144);
    }

    *(a1 + 152) = v10;
    operator delete(v12);
  }

  v13 = *(a1 + 120);
  if (v13)
  {
    v14 = *(a1 + 128);
    v15 = *(a1 + 120);
    if (v14 != v13)
    {
      do
      {
        v14 = sub_53A868(v14 - 160);
      }

      while (v14 != v13);
      v15 = *(a1 + 120);
    }

    *(a1 + 128) = v13;
    operator delete(v15);
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    *(a1 + 104) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    do
    {
      v18 = *v17;
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

uint64_t sub_5C1158(uint64_t a1)
{
  v2 = *(a1 + 7784);
  if (v2)
  {
    v3 = *(a1 + 7792);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_53A868(v3 - 160);
      }

      while (v3 != v2);
      v4 = *(a1 + 7784);
    }

    *(a1 + 7792) = v2;
    operator delete(v4);
  }

  sub_53A868(a1 + 7624);
  v5 = *(a1 + 7592);
  if (v5)
  {
    v6 = *(a1 + 7600);
    v7 = *(a1 + 7592);
    if (v6 != v5)
    {
      do
      {
        v8 = v6 - 1128;
        v9 = *(v6 - 8);
        if (v9 != -1)
        {
          (off_266B888[v9])(&v45, v6 - 1128);
        }

        *(v6 - 8) = -1;
        v6 -= 1128;
      }

      while (v8 != v5);
      v7 = *(a1 + 7592);
    }

    *(a1 + 7600) = v5;
    operator delete(v7);
  }

  v10 = *(a1 + 7568);
  if (v10)
  {
    v11 = *(a1 + 7576);
    v12 = *(a1 + 7568);
    if (v11 != v10)
    {
      do
      {
        v13 = v11 - 1128;
        v14 = *(v11 - 8);
        if (v14 != -1)
        {
          (off_266B888[v14])(&v46, v11 - 1128);
        }

        *(v11 - 8) = -1;
        v11 -= 1128;
      }

      while (v13 != v10);
      v12 = *(a1 + 7568);
    }

    *(a1 + 7576) = v10;
    operator delete(v12);
  }

  v15 = *(a1 + 7544);
  if (v15)
  {
    v16 = *(a1 + 7552);
    v17 = *(a1 + 7544);
    if (v16 != v15)
    {
      do
      {
        v16 = sub_3A9518(v16 - 1120);
      }

      while (v16 != v15);
      v17 = *(a1 + 7544);
    }

    *(a1 + 7552) = v15;
    operator delete(v17);
  }

  v18 = *(a1 + 7520);
  if (v18)
  {
    v19 = *(a1 + 7528);
    v20 = *(a1 + 7520);
    if (v19 != v18)
    {
      do
      {
        v19 = sub_3A9518(v19 - 1120);
      }

      while (v19 != v18);
      v20 = *(a1 + 7520);
    }

    *(a1 + 7528) = v18;
    operator delete(v20);
  }

  v21 = *(a1 + 7496);
  if (v21)
  {
    *(a1 + 7504) = v21;
    operator delete(v21);
  }

  if (*(a1 + 7495) < 0)
  {
    operator delete(*(a1 + 7472));
    if ((*(a1 + 7471) & 0x80000000) == 0)
    {
LABEL_36:
      if ((*(a1 + 7447) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_45;
    }
  }

  else if ((*(a1 + 7471) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(*(a1 + 7448));
  if ((*(a1 + 7447) & 0x80000000) == 0)
  {
LABEL_37:
    v22 = *(a1 + 7400);
    if (!v22)
    {
      goto LABEL_38;
    }

LABEL_46:
    v25 = *(a1 + 7408);
    if (v25 == v22)
    {
      *(a1 + 7408) = v22;
      operator delete(v22);
      v23 = *(a1 + 7376);
      if (v23)
      {
        goto LABEL_53;
      }
    }

    else
    {
      do
      {
        if (*(v25 - 1) < 0)
        {
          operator delete(*(v25 - 3));
        }

        v25 -= 5;
      }

      while (v25 != v22);
      v26 = *(a1 + 7400);
      *(a1 + 7408) = v22;
      operator delete(v26);
      v23 = *(a1 + 7376);
      if (v23)
      {
        goto LABEL_53;
      }
    }

LABEL_39:
    if ((*(a1 + 7367) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_57;
  }

LABEL_45:
  operator delete(*(a1 + 7424));
  v22 = *(a1 + 7400);
  if (v22)
  {
    goto LABEL_46;
  }

LABEL_38:
  v23 = *(a1 + 7376);
  if (!v23)
  {
    goto LABEL_39;
  }

LABEL_53:
  v27 = *(a1 + 7384);
  v28 = v23;
  if (v27 != v23)
  {
    do
    {
      v27 = sub_5C0F34(v27 - 816);
    }

    while (v27 != v23);
    v28 = *(a1 + 7376);
  }

  *(a1 + 7384) = v23;
  operator delete(v28);
  if ((*(a1 + 7367) & 0x80000000) == 0)
  {
LABEL_40:
    if ((*(a1 + 7335) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_58:
    operator delete(*(a1 + 7312));
    v24 = *(a1 + 7296);
    if (v24 == -1)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_57:
  operator delete(*(a1 + 7344));
  if (*(a1 + 7335) < 0)
  {
    goto LABEL_58;
  }

LABEL_41:
  v24 = *(a1 + 7296);
  if (v24 != -1)
  {
LABEL_59:
    (off_266B860[v24])(&v47, a1 + 7264);
  }

LABEL_60:
  *(a1 + 7296) = -1;
  if (*(a1 + 7263) < 0)
  {
    operator delete(*(a1 + 7240));
    if ((*(a1 + 7239) & 0x80000000) == 0)
    {
LABEL_62:
      v29 = *(a1 + 7176);
      if (!v29)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }
  }

  else if ((*(a1 + 7239) & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  operator delete(*(a1 + 7216));
  v29 = *(a1 + 7176);
  if (v29)
  {
LABEL_63:
    *(a1 + 7184) = v29;
    operator delete(v29);
  }

LABEL_64:
  sub_5C1688(a1 + 2376);
  sub_559E70((a1 + 1288));
  if ((*(a1 + 1271) & 0x80000000) == 0)
  {
    if ((*(a1 + 1239) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_72:
    operator delete(*(a1 + 1216));
    v30 = *(a1 + 1200);
    if (v30 == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  operator delete(*(a1 + 1248));
  if (*(a1 + 1239) < 0)
  {
    goto LABEL_72;
  }

LABEL_66:
  v30 = *(a1 + 1200);
  if (v30 != -1)
  {
LABEL_73:
    (off_266B860[v30])(&v48, a1 + 1168);
  }

LABEL_74:
  *(a1 + 1200) = -1;
  sub_53A868(a1 + 1000);
  v31 = *(a1 + 976);
  if (v31)
  {
    v32 = *(a1 + 984);
    v33 = *(a1 + 976);
    if (v32 != v31)
    {
      do
      {
        v34 = *(v32 - 1);
        v32 -= 3;
        if (v34 < 0)
        {
          operator delete(*v32);
        }
      }

      while (v32 != v31);
      v33 = *(a1 + 976);
    }

    *(a1 + 984) = v31;
    operator delete(v33);
  }

  sub_53A868(a1 + 816);
  sub_53A868(a1 + 656);
  sub_53A868(a1 + 496);
  sub_53A868(a1 + 336);
  sub_53A868(a1 + 176);
  v35 = *(a1 + 136);
  if (v35)
  {
    v36 = *(a1 + 144);
    v37 = *(a1 + 136);
    if (v36 != v35)
    {
      do
      {
        if (*(v36 - 32) == 1)
        {
          sub_3A9518(v36 - 1152);
        }

        v36 -= 1168;
      }

      while (v36 != v35);
      v37 = *(a1 + 136);
    }

    *(a1 + 144) = v35;
    operator delete(v37);
  }

  v38 = *(a1 + 24);
  if (v38)
  {
    v39 = *(a1 + 32);
    v40 = *(a1 + 24);
    if (v39 != v38)
    {
      do
      {
        v39 -= 176;
        sub_5C17B4(v39);
      }

      while (v39 != v38);
      v40 = *(a1 + 24);
    }

    *(a1 + 32) = v38;
    operator delete(v40);
  }

  v41 = *a1;
  if (*a1)
  {
    v42 = *(a1 + 8);
    v43 = *a1;
    if (v42 != v41)
    {
      do
      {
        v42 = sub_5C186C(v42 - 12656);
      }

      while (v42 != v41);
      v43 = *a1;
    }

    *(a1 + 8) = v41;
    operator delete(v43);
  }

  return a1;
}

uint64_t sub_5C1688(uint64_t a1)
{
  sub_53A868(a1 + 4640);
  sub_53A868(a1 + 4480);
  sub_53A868(a1 + 4320);
  sub_53A868(a1 + 4160);
  sub_53A868(a1 + 4000);
  sub_53A868(a1 + 3840);
  sub_53A868(a1 + 3680);
  sub_53A868(a1 + 3520);
  sub_53A868(a1 + 3360);
  sub_53A868(a1 + 3200);
  sub_53A868(a1 + 3040);
  sub_53A868(a1 + 2880);
  sub_53A868(a1 + 2720);
  sub_53A868(a1 + 2560);
  sub_53A868(a1 + 2400);
  sub_53A868(a1 + 2240);
  sub_53A868(a1 + 2080);
  sub_53A868(a1 + 1920);
  sub_53A868(a1 + 1760);
  sub_53A868(a1 + 1600);
  sub_53A868(a1 + 1440);
  sub_53A868(a1 + 1280);
  sub_53A868(a1 + 1120);
  sub_53A868(a1 + 960);
  sub_53A868(a1 + 800);
  sub_53A868(a1 + 640);
  sub_53A868(a1 + 480);
  sub_53A868(a1 + 320);
  sub_53A868(a1 + 160);

  return sub_53A868(a1);
}

void sub_5C17B4(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  operator delete(*(a1 + 72));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return;
  }

LABEL_13:
  v3 = *a1;

  operator delete(v3);
}

uint64_t sub_5C186C(uint64_t a1)
{
  v2 = *(a1 + 12624);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 12600);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a1 + 12584);
  *(a1 + 12584) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = (a1 + 11791);
  v7 = *(a1 + 12560);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(a1 + 12544);
  *(a1 + 12544) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  *(a1 + 12504) = off_26696C8;
  if (*(a1 + 12535) < 0)
  {
    operator delete(*(a1 + 12512));
    *(a1 + 12464) = off_26696C8;
    if ((*(a1 + 12495) & 0x80000000) == 0)
    {
LABEL_13:
      v10 = *(a1 + 12440);
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  else
  {
    *(a1 + 12464) = off_26696C8;
    if ((*(a1 + 12495) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  operator delete(*(a1 + 12472));
  v10 = *(a1 + 12440);
  if (!v10)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_23:
    v15 = *v10;
    v16 = v10[4];
    if (v16)
    {
      v10[5] = v16;
      operator delete(v16);
    }

    operator delete(v10);
    v10 = v15;
  }

  while (v15);
LABEL_17:
  v11 = *(a1 + 12424);
  *(a1 + 12424) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 12400);
  if (v12)
  {
    v13 = *(a1 + 12408);
    v14 = *(a1 + 12400);
    if (v13 != v12)
    {
      do
      {
        v17 = *(v13 - 40);
        if (v17)
        {
          *(v13 - 32) = v17;
          operator delete(v17);
        }

        v13 -= 48;
      }

      while (v13 != v12);
      v14 = *(a1 + 12400);
    }

    *(a1 + 12408) = v12;
    operator delete(v14);
  }

  v18 = *(a1 + 12376);
  if (v18)
  {
    *(a1 + 12384) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 12344);
  if (v19)
  {
    *(a1 + 12352) = v19;
    operator delete(v19);
  }

  if (*(a1 + 12343) < 0)
  {
    operator delete(*(a1 + 12320));
  }

  v20 = *(a1 + 12296);
  if (v20)
  {
    v21 = *(a1 + 12304);
    v22 = *(a1 + 12296);
    if (v21 != v20)
    {
      do
      {
        if (*(v21 - 1) < 0)
        {
          operator delete(*(v21 - 24));
        }

        v21 -= 40;
      }

      while (v21 != v20);
      v22 = *(a1 + 12296);
    }

    *(a1 + 12304) = v20;
    operator delete(v22);
  }

  v23 = *(a1 + 12272);
  if (v23)
  {
    v24 = *(a1 + 12280);
    v25 = *(a1 + 12272);
    if (v24 != v23)
    {
      do
      {
        v24 -= 616;
        sub_5C2320(v24);
      }

      while (v24 != v23);
      v25 = *(a1 + 12272);
    }

    *(a1 + 12280) = v23;
    operator delete(v25);
  }

  v26 = *(a1 + 12240);
  if (v26)
  {
    *(a1 + 12248) = v26;
    operator delete(v26);
  }

  sub_53A868(a1 + 12080);
  v27 = *(a1 + 12056);
  if (v27)
  {
    v28 = *(a1 + 12064);
    v29 = *(a1 + 12056);
    if (v28 != v27)
    {
      do
      {
        v30 = v28 - 176;
        sub_53A868(v28 - 160);
        v28 = v30;
      }

      while (v30 != v27);
      v29 = *(a1 + 12056);
    }

    *(a1 + 12064) = v27;
    operator delete(v29);
  }

  v31 = *(a1 + 12024);
  if (v31)
  {
    *(a1 + 12032) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 11984);
  if (v32)
  {
    *(a1 + 11992) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 11952);
  if (v33)
  {
    *(a1 + 11960) = v33;
    operator delete(v33);
  }

  sub_5C23C8((a1 + 11856));
  v34 = *(a1 + 11832);
  if (v34)
  {
    *(a1 + 11840) = v34;
    operator delete(v34);
  }

  if ((*(a1 + 11823) & 0x80000000) == 0)
  {
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_69:
    operator delete(*(a1 + 11768));
    v35 = *(a1 + 11752);
    if (v35 == -1)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  operator delete(*(a1 + 11800));
  if (*v6 < 0)
  {
    goto LABEL_69;
  }

LABEL_66:
  v35 = *(a1 + 11752);
  if (v35 != -1)
  {
LABEL_70:
    (off_266B860[v35])(&v115, a1 + 11720);
  }

LABEL_71:
  v36 = (a1 + 7463);
  *(a1 + 11752) = -1;
  sub_53A868(a1 + 11560);
  v37 = *(a1 + 11528);
  if (v37)
  {
    *(a1 + 11536) = v37;
    operator delete(v37);
  }

  sub_44FDEC(a1 + 11088);
  if ((*(a1 + 11079) & 0x80000000) == 0)
  {
    if ((*(a1 + 11047) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_78:
    operator delete(*(a1 + 11024));
    v38 = *(a1 + 11008);
    if (v38 == -1)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  operator delete(*(a1 + 11056));
  if (*(a1 + 11047) < 0)
  {
    goto LABEL_78;
  }

LABEL_75:
  v38 = *(a1 + 11008);
  if (v38 != -1)
  {
LABEL_79:
    (off_266B860[v38])(&v116, a1 + 10976);
  }

LABEL_80:
  *(a1 + 11008) = -1;
  sub_53A868(a1 + 10816);
  v39 = *(a1 + 10784);
  if (v39)
  {
    *(a1 + 10792) = v39;
    operator delete(v39);
  }

  sub_44FDEC(a1 + 10344);
  v40 = *(a1 + 10320);
  if (v40)
  {
    v41 = *(a1 + 10328);
    v42 = *(a1 + 10320);
    if (v41 != v40)
    {
      do
      {
        v41 -= 104;
        sub_5C24CC(v41);
      }

      while (v41 != v40);
      v42 = *(a1 + 10320);
    }

    *(a1 + 10328) = v40;
    operator delete(v42);
  }

  v43 = *(a1 + 10288);
  if (v43)
  {
    v44 = *(a1 + 10296);
    v45 = *(a1 + 10288);
    if (v44 != v43)
    {
      do
      {
        v47 = *(v44 - 48);
        if (v47)
        {
          v48 = *(v44 - 40);
          v46 = *(v44 - 48);
          if (v48 != v47)
          {
            v49 = *(v44 - 40);
            do
            {
              v51 = *(v49 - 24);
              v49 -= 24;
              v50 = v51;
              if (v51)
              {
                *(v48 - 16) = v50;
                operator delete(v50);
              }

              v48 = v49;
            }

            while (v49 != v47);
            v46 = *(v44 - 48);
          }

          *(v44 - 40) = v47;
          operator delete(v46);
        }

        v44 -= 64;
      }

      while (v44 != v43);
      v45 = *(a1 + 10288);
    }

    *(a1 + 10296) = v43;
    operator delete(v45);
  }

  v52 = *(a1 + 10264);
  if (v52)
  {
    *(a1 + 10272) = v52;
    operator delete(v52);
  }

  if (*(a1 + 10247) < 0)
  {
    operator delete(*(a1 + 10224));
  }

  v53 = *(a1 + 10200);
  if (v53)
  {
    v54 = *(a1 + 10208);
    v55 = *(a1 + 10200);
    if (v54 != v53)
    {
      do
      {
        v54 = sub_570440(v54 - 616);
      }

      while (v54 != v53);
      v55 = *(a1 + 10200);
    }

    *(a1 + 10208) = v53;
    operator delete(v55);
  }

  v56 = *(a1 + 10176);
  if (v56)
  {
    v57 = *(a1 + 10184);
    v58 = *(a1 + 10176);
    if (v57 != v56)
    {
      do
      {
        v57 = sub_570440(v57 - 616);
      }

      while (v57 != v56);
      v58 = *(a1 + 10176);
    }

    *(a1 + 10184) = v56;
    operator delete(v58);
  }

  v59 = *(a1 + 10152);
  if (v59)
  {
    v60 = *(a1 + 10160);
    v61 = *(a1 + 10152);
    if (v60 != v59)
    {
      do
      {
        v60 = sub_570440(v60 - 616);
      }

      while (v60 != v59);
      v61 = *(a1 + 10152);
    }

    *(a1 + 10160) = v59;
    operator delete(v61);
  }

  v62 = *(a1 + 10128);
  if (v62)
  {
    v63 = *(a1 + 10136);
    v64 = *(a1 + 10128);
    if (v63 != v62)
    {
      v65 = *(a1 + 10136);
      do
      {
        v67 = *(v65 - 40);
        v65 -= 40;
        v66 = v67;
        if (v67)
        {
          *(v63 - 32) = v66;
          operator delete(v66);
        }

        v63 = v65;
      }

      while (v65 != v62);
      v64 = *(a1 + 10128);
    }

    *(a1 + 10136) = v62;
    operator delete(v64);
  }

  v68 = *(a1 + 10096);
  if (v68)
  {
    v69 = *(a1 + 10104);
    v70 = *(a1 + 10096);
    if (v69 != v68)
    {
      do
      {
        v71 = *(v69 - 208);
        if (v71)
        {
          *(v69 - 200) = v71;
          operator delete(v71);
        }

        v72 = v69 - 248;
        v73 = *(v69 - 248);
        if (v73)
        {
          *(v69 - 240) = v73;
          operator delete(v73);
        }

        v69 -= 248;
      }

      while (v72 != v68);
      v70 = *(a1 + 10096);
    }

    *(a1 + 10104) = v68;
    operator delete(v70);
  }

  sub_53A868(a1 + 9936);
  sub_53A868(a1 + 9776);
  sub_53A868(a1 + 9616);
  sub_53A868(a1 + 9456);
  sub_53A868(a1 + 9296);
  sub_5936E4((a1 + 8440));
  sub_5936E4((a1 + 7584));
  v74 = *(a1 + 7560);
  if (v74)
  {
    v75 = *(a1 + 7568);
    v76 = *(a1 + 7560);
    if (v75 != v74)
    {
      do
      {
        v75 = sub_5936E4(v75 - 107);
      }

      while (v75 != v74);
      v76 = *(a1 + 7560);
    }

    *(a1 + 7568) = v74;
    operator delete(v76);
  }

  v77 = *(a1 + 7536);
  if (v77)
  {
    v78 = *(a1 + 7544);
    v79 = *(a1 + 7536);
    if (v78 != v77)
    {
      do
      {
        v80 = *(v78 - 6);
        if (v80)
        {
          *(v78 - 5) = v80;
          operator delete(v80);
        }

        v78 -= 56;
        sub_55D550(v78);
      }

      while (v78 != v77);
      v79 = *(a1 + 7536);
    }

    *(a1 + 7544) = v77;
    operator delete(v79);
  }

  v81 = *(a1 + 7512);
  if (v81)
  {
    v82 = *(a1 + 7520);
    v83 = *(a1 + 7512);
    if (v82 != v81)
    {
      do
      {
        v82 = sub_5938B0((v82 - 140));
      }

      while (v82 != v81);
      v83 = *(a1 + 7512);
    }

    *(a1 + 7520) = v81;
    operator delete(v83);
  }

  v84 = *(a1 + 7488);
  if (v84)
  {
    v85 = *(a1 + 7496);
    v86 = *(a1 + 7488);
    if (v85 != v84)
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

      while (v85 != v84);
      v86 = *(a1 + 7488);
    }

    *(a1 + 7496) = v84;
    operator delete(v86);
  }

  if (*(a1 + 7487) < 0)
  {
    operator delete(*(a1 + 7464));
    if ((*v36 & 0x80000000) == 0)
    {
LABEL_166:
      v88 = *(a1 + 7416);
      if (!v88)
      {
        goto LABEL_167;
      }

      goto LABEL_207;
    }
  }

  else if ((*v36 & 0x80000000) == 0)
  {
    goto LABEL_166;
  }

  operator delete(*(a1 + 7440));
  v88 = *(a1 + 7416);
  if (!v88)
  {
LABEL_167:
    v89 = *(a1 + 7392);
    if (!v89)
    {
      goto LABEL_169;
    }

    goto LABEL_168;
  }

LABEL_207:
  v110 = *(a1 + 7424);
  v111 = v88;
  if (v110 != v88)
  {
    do
    {
      v110 = sub_3A9518(v110 - 1120);
    }

    while (v110 != v88);
    v111 = *(a1 + 7416);
  }

  *(a1 + 7424) = v88;
  operator delete(v111);
  v89 = *(a1 + 7392);
  if (v89)
  {
LABEL_168:
    *(a1 + 7400) = v89;
    operator delete(v89);
  }

LABEL_169:
  sub_53A868(a1 + 7232);
  v90 = *(a1 + 7208);
  if (v90)
  {
    v91 = *(a1 + 7216);
    v92 = *(a1 + 7208);
    if (v91 != v90)
    {
      do
      {
        v93 = *(v91 - 1);
        v91 -= 3;
        if (v93 < 0)
        {
          operator delete(*v91);
        }
      }

      while (v91 != v90);
      v92 = *(a1 + 7208);
    }

    *(a1 + 7216) = v90;
    operator delete(v92);
  }

  sub_5C1688(a1 + 2408);
  sub_559E70((a1 + 1320));
  if (*(a1 + 1319) < 0)
  {
    operator delete(*(a1 + 1296));
    if ((*(a1 + 1295) & 0x80000000) == 0)
    {
LABEL_179:
      v94 = *(a1 + 1248);
      if (!v94)
      {
        goto LABEL_180;
      }

      goto LABEL_214;
    }
  }

  else if ((*(a1 + 1295) & 0x80000000) == 0)
  {
    goto LABEL_179;
  }

  operator delete(*(a1 + 1272));
  v94 = *(a1 + 1248);
  if (!v94)
  {
LABEL_180:
    v95 = *(a1 + 1224);
    if (!v95)
    {
      goto LABEL_182;
    }

    goto LABEL_181;
  }

LABEL_214:
  v112 = *(a1 + 1256);
  if (v112 == v94)
  {
    *(a1 + 1256) = v94;
    operator delete(v94);
    v95 = *(a1 + 1224);
    if (!v95)
    {
      goto LABEL_182;
    }

LABEL_181:
    *(a1 + 1232) = v95;
    operator delete(v95);
    goto LABEL_182;
  }

  do
  {
    if (*(v112 - 9) < 0)
    {
      operator delete(*(v112 - 4));
      if ((*(v112 - 41) & 0x80000000) == 0)
      {
LABEL_220:
        if ((*(v112 - 65) & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

        goto LABEL_226;
      }
    }

    else if ((*(v112 - 41) & 0x80000000) == 0)
    {
      goto LABEL_220;
    }

    operator delete(*(v112 - 8));
    if ((*(v112 - 65) & 0x80000000) == 0)
    {
LABEL_221:
      if (*(v112 - 105) < 0)
      {
        goto LABEL_227;
      }

      goto LABEL_222;
    }

LABEL_226:
    operator delete(*(v112 - 11));
    if (*(v112 - 105) < 0)
    {
LABEL_227:
      operator delete(*(v112 - 16));
      v113 = v112 - 20;
      if ((*(v112 - 137) & 0x80000000) == 0)
      {
        goto LABEL_217;
      }

      goto LABEL_228;
    }

LABEL_222:
    v113 = v112 - 20;
    if ((*(v112 - 137) & 0x80000000) == 0)
    {
      goto LABEL_217;
    }

LABEL_228:
    operator delete(*v113);
LABEL_217:
    v112 = v113;
  }

  while (v113 != v94);
  v114 = *(a1 + 1248);
  *(a1 + 1256) = v94;
  operator delete(v114);
  v95 = *(a1 + 1224);
  if (v95)
  {
    goto LABEL_181;
  }

LABEL_182:
  v96 = *(a1 + 1200);
  if (v96)
  {
    *(a1 + 1208) = v96;
    operator delete(v96);
  }

  v97 = *(a1 + 1176);
  if (v97)
  {
    v98 = *(a1 + 1184);
    v99 = *(a1 + 1176);
    if (v98 != v97)
    {
      do
      {
        v98 -= 176;
        sub_5C17B4(v98);
      }

      while (v98 != v97);
      v99 = *(a1 + 1176);
    }

    *(a1 + 1184) = v97;
    operator delete(v99);
  }

  v100 = *(a1 + 1152);
  if (v100)
  {
    v101 = *(a1 + 1160);
    v102 = *(a1 + 1152);
    if (v101 != v100)
    {
      do
      {
        v101 -= 176;
        sub_5C17B4(v101);
      }

      while (v101 != v100);
      v102 = *(a1 + 1152);
    }

    *(a1 + 1160) = v100;
    operator delete(v102);
  }

  v103 = *(a1 + 1128);
  if (v103)
  {
    v104 = *(a1 + 1136);
    v105 = *(a1 + 1128);
    if (v104 != v103)
    {
      do
      {
        v104 = sub_5C25A8(v104 - 2616);
      }

      while (v104 != v103);
      v105 = *(a1 + 1128);
    }

    *(a1 + 1136) = v103;
    operator delete(v105);
  }

  v106 = *(a1 + 1104);
  if (v106)
  {
    v107 = *(a1 + 1112);
    v108 = *(a1 + 1104);
    if (v107 != v106)
    {
      do
      {
        v107 = sub_5C25A8(v107 - 2616);
      }

      while (v107 != v106);
      v108 = *(a1 + 1104);
    }

    *(a1 + 1112) = v106;
    operator delete(v108);
  }

  return sub_3EEA68(a1);
}

void sub_5C2320(uint64_t a1)
{
  sub_53A868(a1 + 456);
  sub_53A868(a1 + 296);
  sub_53A868(a1 + 136);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 48);
      if (v2 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 64));
  v2 = *(a1 + 48);
  if (v2 != -1)
  {
LABEL_7:
    (off_266B860[v2])(&v3, a1 + 16);
  }

LABEL_8:
  *(a1 + 48) = -1;
}

void **sub_5C23C8(void **a1)
{
  v2 = a1[9];
  if (v2)
  {
    v3 = a1[10];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_52A624(v3 - 168);
      }

      while (v3 != v2);
      v4 = a1[9];
    }

    a1[10] = v2;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = a1[7];
    v7 = a1[6];
    if (v6 != v5)
    {
      do
      {
        v6 = sub_52A624(v6 - 168);
      }

      while (v6 != v5);
      v7 = a1[6];
    }

    a1[7] = v5;
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_52A624(v9 - 168);
      }

      while (v9 != v8);
      v10 = a1[3];
    }

    a1[4] = v8;
    operator delete(v10);
  }

  v11 = *a1;
  if (*a1)
  {
    v12 = a1[1];
    v13 = *a1;
    if (v12 != v11)
    {
      do
      {
        v12 = sub_52A624(v12 - 168);
      }

      while (v12 != v11);
      v13 = *a1;
    }

    a1[1] = v11;
    operator delete(v13);
  }

  return a1;
}

void sub_5C24CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v3 == v1)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 32));
      if (*(v3 - 41) < 0)
      {
LABEL_10:
        operator delete(*(v3 - 64));
        v5 = *(v3 - 80);
        if (v5 == -1)
        {
          goto LABEL_4;
        }

LABEL_11:
        (off_266B860[v5])(&v6, v3 - 112);
        goto LABEL_4;
      }
    }

    else if (*(v3 - 41) < 0)
    {
      goto LABEL_10;
    }

    v5 = *(v3 - 80);
    if (v5 != -1)
    {
      goto LABEL_11;
    }

LABEL_4:
    *(v3 - 80) = -1;
    v3 -= 184;
  }

  while (v3 != v1);
  v4 = *(a1 + 32);
LABEL_13:
  *(a1 + 40) = v1;
  operator delete(v4);
}

uint64_t sub_5C25A8(uint64_t a1)
{
  v2 = *(a1 + 2512);
  if (v2)
  {
    *(a1 + 2520) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 2488);
  if (v3)
  {
    *(a1 + 2496) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 2424);
  if (v4)
  {
    *(a1 + 2432) = v4;
    operator delete(v4);
  }

  *(a1 + 2320) = off_266B8A8;
  if (*(a1 + 2415) < 0)
  {
    operator delete(*(a1 + 2392));
    if ((*(a1 + 2383) & 0x80000000) == 0)
    {
LABEL_9:
      *(a1 + 2320) = off_26696C8;
      if ((*(a1 + 2351) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_44;
    }
  }

  else if ((*(a1 + 2383) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(*(a1 + 2360));
  *(a1 + 2320) = off_26696C8;
  if ((*(a1 + 2351) & 0x80000000) == 0)
  {
LABEL_10:
    *(a1 + 2280) = off_26696C8;
    if ((*(a1 + 2311) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  operator delete(*(a1 + 2328));
  *(a1 + 2280) = off_26696C8;
  if ((*(a1 + 2311) & 0x80000000) == 0)
  {
LABEL_11:
    *(a1 + 2232) = off_26696C8;
    if ((*(a1 + 2263) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  operator delete(*(a1 + 2288));
  *(a1 + 2232) = off_26696C8;
  if ((*(a1 + 2263) & 0x80000000) == 0)
  {
LABEL_12:
    sub_5940E0((a1 + 2064));
    v5 = *(a1 + 2032);
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  operator delete(*(a1 + 2240));
  sub_5940E0((a1 + 2064));
  v5 = *(a1 + 2032);
  if (!v5)
  {
LABEL_13:
    v6 = *(a1 + 2008);
    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_47:
  v20 = *(a1 + 2040);
  v21 = v5;
  if (v20 != v5)
  {
    do
    {
      v20 -= 272;
      sub_513694(v20);
    }

    while (v20 != v5);
    v21 = *(a1 + 2032);
  }

  *(a1 + 2040) = v5;
  operator delete(v21);
  v6 = *(a1 + 2008);
  if (!v6)
  {
LABEL_14:
    v7 = *(a1 + 1984);
    if (!v7)
    {
      goto LABEL_15;
    }

LABEL_55:
    v24 = *(a1 + 1992);
    if (v24 == v7)
    {
      *(a1 + 1992) = v7;
      operator delete(v7);
      v8 = *(a1 + 1960);
      if (v8)
      {
        goto LABEL_62;
      }
    }

    else
    {
      do
      {
        v25 = *(v24 - 17);
        v24 -= 5;
        if (v25 < 0)
        {
          operator delete(*v24);
        }
      }

      while (v24 != v7);
      v26 = *(a1 + 1984);
      *(a1 + 1992) = v7;
      operator delete(v26);
      v8 = *(a1 + 1960);
      if (v8)
      {
        goto LABEL_62;
      }
    }

LABEL_16:
    v9 = *(a1 + 1936);
    if (!v9)
    {
      goto LABEL_17;
    }

    goto LABEL_69;
  }

LABEL_51:
  v22 = *(a1 + 2016);
  v23 = v6;
  if (v22 != v6)
  {
    do
    {
      v22 = sub_5C3168(v22 - 360);
    }

    while (v22 != v6);
    v23 = *(a1 + 2008);
  }

  *(a1 + 2016) = v6;
  operator delete(v23);
  v7 = *(a1 + 1984);
  if (v7)
  {
    goto LABEL_55;
  }

LABEL_15:
  v8 = *(a1 + 1960);
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_62:
  v27 = *(a1 + 1968);
  v28 = v8;
  if (v27 != v8)
  {
    v29 = *(a1 + 1968);
    do
    {
      v31 = *(v29 - 5);
      v29 -= 40;
      v30 = v31;
      if (v31)
      {
        *(v27 - 4) = v30;
        operator delete(v30);
      }

      v27 = v29;
    }

    while (v29 != v8);
    v28 = *(a1 + 1960);
  }

  *(a1 + 1968) = v8;
  operator delete(v28);
  v9 = *(a1 + 1936);
  if (!v9)
  {
LABEL_17:
    v10 = *(a1 + 1912);
    if (!v10)
    {
      goto LABEL_18;
    }

LABEL_73:
    v34 = *(a1 + 1920);
    if (v34 == v10)
    {
      *(a1 + 1920) = v10;
      operator delete(v10);
      v11 = *(a1 + 1888);
      if (v11)
      {
        goto LABEL_80;
      }
    }

    else
    {
      do
      {
        v35 = *(v34 - 6);
        if (v35)
        {
          *(v34 - 5) = v35;
          operator delete(v35);
        }

        v34 -= 56;
        sub_55D550(v34);
      }

      while (v34 != v10);
      v36 = *(a1 + 1912);
      *(a1 + 1920) = v10;
      operator delete(v36);
      v11 = *(a1 + 1888);
      if (v11)
      {
        goto LABEL_80;
      }
    }

LABEL_19:
    sub_5936E4((a1 + 1032));
    if ((*(a1 + 999) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_84;
  }

LABEL_69:
  v32 = *(a1 + 1944);
  v33 = v9;
  if (v32 != v9)
  {
    do
    {
      v32 = sub_5C3378((v32 - 88));
    }

    while (v32 != v9);
    v33 = *(a1 + 1936);
  }

  *(a1 + 1944) = v9;
  operator delete(v33);
  v10 = *(a1 + 1912);
  if (v10)
  {
    goto LABEL_73;
  }

LABEL_18:
  v11 = *(a1 + 1888);
  if (!v11)
  {
    goto LABEL_19;
  }

LABEL_80:
  v37 = *(a1 + 1896);
  v38 = v11;
  if (v37 != v11)
  {
    do
    {
      v37 = sub_5938B0((v37 - 140));
    }

    while (v37 != v11);
    v38 = *(a1 + 1888);
  }

  *(a1 + 1896) = v11;
  operator delete(v38);
  sub_5936E4((a1 + 1032));
  if ((*(a1 + 999) & 0x80000000) == 0)
  {
LABEL_20:
    if ((*(a1 + 967) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_85;
  }

LABEL_84:
  operator delete(*(a1 + 976));
  if ((*(a1 + 967) & 0x80000000) == 0)
  {
LABEL_21:
    if ((*(a1 + 943) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_86;
  }

LABEL_85:
  operator delete(*(a1 + 944));
  if ((*(a1 + 943) & 0x80000000) == 0)
  {
LABEL_22:
    if ((*(a1 + 903) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_87;
  }

LABEL_86:
  operator delete(*(a1 + 920));
  if ((*(a1 + 903) & 0x80000000) == 0)
  {
LABEL_23:
    if ((*(a1 + 871) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_88:
    operator delete(*(a1 + 848));
    v12 = *(a1 + 824);
    if (!v12)
    {
LABEL_25:
      v13 = *(a1 + 792);
      if (v13)
      {
        goto LABEL_105;
      }

      goto LABEL_26;
    }

    goto LABEL_89;
  }

LABEL_87:
  operator delete(*(a1 + 880));
  if (*(a1 + 871) < 0)
  {
    goto LABEL_88;
  }

LABEL_24:
  v12 = *(a1 + 824);
  if (!v12)
  {
    goto LABEL_25;
  }

LABEL_89:
  v39 = *(a1 + 832);
  if (v39 == v12)
  {
    *(a1 + 832) = v12;
    operator delete(v12);
    v13 = *(a1 + 792);
    if (v13)
    {
      goto LABEL_105;
    }

LABEL_26:
    v14 = *(a1 + 760);
    if (!v14)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  do
  {
    if (*(v39 - 9) < 0)
    {
      operator delete(*(v39 - 4));
      if ((*(v39 - 41) & 0x80000000) == 0)
      {
LABEL_95:
        if ((*(v39 - 65) & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_101;
      }
    }

    else if ((*(v39 - 41) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    operator delete(*(v39 - 8));
    if ((*(v39 - 65) & 0x80000000) == 0)
    {
LABEL_96:
      if (*(v39 - 105) < 0)
      {
        goto LABEL_102;
      }

      goto LABEL_97;
    }

LABEL_101:
    operator delete(*(v39 - 11));
    if (*(v39 - 105) < 0)
    {
LABEL_102:
      operator delete(*(v39 - 16));
      v40 = v39 - 20;
      if ((*(v39 - 137) & 0x80000000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_103;
    }

LABEL_97:
    v40 = v39 - 20;
    if ((*(v39 - 137) & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

LABEL_103:
    operator delete(*v40);
LABEL_92:
    v39 = v40;
  }

  while (v40 != v12);
  v41 = *(a1 + 824);
  *(a1 + 832) = v12;
  operator delete(v41);
  v13 = *(a1 + 792);
  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_105:
  v42 = *(a1 + 800);
  if (v42 == v13)
  {
    *(a1 + 800) = v13;
    operator delete(v13);
    v14 = *(a1 + 760);
    if (!v14)
    {
      goto LABEL_28;
    }

LABEL_27:
    *(a1 + 768) = v14;
    operator delete(v14);
    goto LABEL_28;
  }

  do
  {
    if (*(v42 - 1) < 0)
    {
      operator delete(*(v42 - 3));
    }

    v42 -= 5;
  }

  while (v42 != v13);
  v43 = *(a1 + 792);
  *(a1 + 800) = v13;
  operator delete(v43);
  v14 = *(a1 + 760);
  if (v14)
  {
    goto LABEL_27;
  }

LABEL_28:
  v15 = *(a1 + 736);
  if (v15)
  {
    *(a1 + 744) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 712);
  if (v16)
  {
    *(a1 + 720) = v16;
    operator delete(v16);
  }

  if (*(a1 + 615) < 0)
  {
    operator delete(*(a1 + 592));
    if (*(a1 + 583) < 0)
    {
      goto LABEL_114;
    }

LABEL_34:
    if ((*(a1 + 559) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_115:
    operator delete(*(a1 + 536));
    if (*(a1 + 519) < 0)
    {
      goto LABEL_116;
    }

LABEL_36:
    if (*(a1 + 487) < 0)
    {
LABEL_117:
      operator delete(*(a1 + 464));
    }
  }

  else
  {
    if ((*(a1 + 583) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_114:
    operator delete(*(a1 + 560));
    if (*(a1 + 559) < 0)
    {
      goto LABEL_115;
    }

LABEL_35:
    if ((*(a1 + 519) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_116:
    operator delete(*(a1 + 496));
    if (*(a1 + 487) < 0)
    {
      goto LABEL_117;
    }
  }

  sub_593FC8((a1 + 440));
  sub_593FC8((a1 + 416));
  sub_593FC8((a1 + 392));
  v17 = *(a1 + 176);
  if (v17)
  {
    *(a1 + 184) = v17;
    operator delete(v17);
  }

  v18 = *(a1 + 136);
  if (v18)
  {
    *(a1 + 144) = v18;
    operator delete(v18);
  }

  return a1;
}

void sub_5C2F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_5C2FB0(void *a1, uint64_t a2)
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

uint64_t sub_5C3168(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2)
  {
    v3 = *(a1 + 240);
    v4 = *(a1 + 232);
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

        v6 = *(v3 - 48);
        if (v6)
        {
          *(v3 - 40) = v6;
          operator delete(v6);
        }

        v3 -= 64;
      }

      while (v3 != v2);
      v4 = *(a1 + 232);
    }

    *(a1 + 240) = v2;
    operator delete(v4);
  }

  v7 = *(a1 + 192);
  if (v7)
  {
    v8 = *(a1 + 200);
    v9 = *(a1 + 192);
    if (v8 != v7)
    {
      v10 = *(a1 + 200);
      do
      {
        v12 = *(v10 - 24);
        v10 -= 24;
        v11 = v12;
        if (v12)
        {
          *(v8 - 16) = v11;
          operator delete(v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(a1 + 192);
    }

    *(a1 + 200) = v7;
    operator delete(v9);
  }

  v13 = *(a1 + 168);
  if (v13)
  {
    v14 = *(a1 + 176);
    v15 = *(a1 + 168);
    if (v14 != v13)
    {
      v16 = *(a1 + 176);
      do
      {
        v18 = *(v16 - 24);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v14 - 16) = v17;
          operator delete(v17);
        }

        v14 = v16;
      }

      while (v16 != v13);
      v15 = *(a1 + 168);
    }

    *(a1 + 176) = v13;
    operator delete(v15);
  }

  v19 = *(a1 + 136);
  if (v19)
  {
    do
    {
      v20 = *v19;
      operator delete(v19);
      v19 = v20;
    }

    while (v20);
  }

  v21 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v21)
  {
    operator delete(v21);
  }

  v22 = *(a1 + 96);
  if (v22)
  {
    do
    {
      v23 = *v22;
      operator delete(v22);
      v22 = v23;
    }

    while (v23);
  }

  v24 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v24)
  {
    operator delete(v24);
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    do
    {
      v32 = *v25;
      v33 = v25[3];
      if (v33)
      {
        v34 = v25[4];
        v31 = v25[3];
        if (v34 != v33)
        {
          do
          {
            v35 = *(v34 - 1);
            v34 -= 3;
            if (v35 < 0)
            {
              operator delete(*v34);
            }
          }

          while (v34 != v33);
          v31 = v25[3];
        }

        v25[4] = v33;
        operator delete(v31);
      }

      operator delete(v25);
      v25 = v32;
    }

    while (v32);
  }

  v26 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v26)
  {
    operator delete(v26);
  }

  v27 = *(a1 + 16);
  if (v27)
  {
    do
    {
      v28 = *v27;
      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  v29 = *a1;
  *a1 = 0;
  if (v29)
  {
    operator delete(v29);
  }

  return a1;
}

void *sub_5C3378(uint64_t a1)
{
  v2 = *(a1 + 680);
  if (v2)
  {
    *(a1 + 688) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 656);
  if (v3)
  {
    do
    {
      v11 = *v3;
      v12 = *(v3 + 6);
      if (v12)
      {
        *(v3 + 7) = v12;
        operator delete(v12);
      }

      if (v3[39] < 0)
      {
        operator delete(*(v3 + 2));
      }

      operator delete(v3);
      v3 = v11;
    }

    while (v11);
  }

  v4 = *(a1 + 640);
  *(a1 + 640) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 608);
  if (v5)
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

  v7 = *(a1 + 592);
  *(a1 + 592) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 568);
  if (v8)
  {
    v9 = *(a1 + 576);
    v10 = *(a1 + 568);
    if (v9 != v8)
    {
      do
      {
        v13 = *(v9 - 1);
        v9 -= 3;
        if (v13 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = *(a1 + 568);
    }

    *(a1 + 576) = v8;
    operator delete(v10);
  }

  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  sub_53A868(a1 + 384);

  return sub_55D550(a1);
}

void sub_5C34A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x20C49BA5E353F8)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_5C3590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 2000;
    v15 = -v12;
    do
    {
      sub_5C0D2C(v14);
      v14 -= 2000;
      v15 += 2000;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_5C35C8(&a9);
  _Unwind_Resume(a1);
}

void ***sub_5C35C8(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 2000;
          sub_5C0D2C(v4);
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

uint64_t sub_5C3640(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 1128) = 0;
  if (*(a2 + 1128) == 1)
  {
    sub_52B7D8(a1 + 8, a2 + 8);
    *(a1 + 1128) = 1;
  }

  sub_571154(a1 + 1136, (a2 + 1136));
  *(a1 + 1768) = 0;
  *(a1 + 1752) = 0u;
  sub_5713F4(a1 + 1752, *(a2 + 1752), *(a2 + 1760), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 1760) - *(a2 + 1752)) >> 5));
  v4 = *(a2 + 1776);
  *(a1 + 1792) = *(a2 + 1792);
  *(a1 + 1776) = v4;
  *(a1 + 1800) = 0;
  *(a1 + 1968) = 0;
  if (*(a2 + 1968) == 1)
  {
    sub_52A464(a1 + 1800, a2 + 1800);
    *(a1 + 1968) = 1;
  }

  v5 = (a1 + 1976);
  if (*(a2 + 1999) < 0)
  {
    sub_325C(v5, *(a2 + 1976), *(a2 + 1984));
  }

  else
  {
    v6 = *(a2 + 1976);
    *(a1 + 1992) = *(a2 + 1992);
    *v5 = v6;
  }

  return a1;
}

void sub_5C3764(_Unwind_Exception *a1)
{
  if (*(v2 + 1968) == 1)
  {
    sub_52A624(v2 + 1800);
  }

  sub_5706DC(v3);
  sub_570440(v2 + 1136);
  if (*(v2 + 1128))
  {
    sub_3A9518(v1);
  }

  _Unwind_Resume(a1);
}

void sub_5C37D8(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
    if ((*(a1 + 135) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 96);
      *(a1 + 96) = 0;
      if (v2)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if ((*(a1 + 135) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 112));
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
LABEL_4:
    sub_53A868(v2);
    operator delete();
  }

LABEL_5:
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = *(a1 + 80);
    v5 = *(a1 + 72);
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
      v5 = *(a1 + 72);
    }

    *(a1 + 80) = v3;
    operator delete(v5);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *(a1 + 48);
    }

    *(a1 + 56) = v7;
    operator delete(v9);
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 24);
    if (v12 != v11)
    {
      do
      {
        v12 = sub_5C42C0(v12 - 144);
      }

      while (v12 != v11);
      v13 = *(a1 + 24);
    }

    *(a1 + 32) = v11;
    operator delete(v13);
  }

  v14 = *a1;
  if (*a1)
  {
    v15 = *(a1 + 8);
    v16 = *a1;
    if (v15 == v14)
    {
      *(a1 + 8) = v14;
    }

    else
    {
      do
      {
        v17 = *(v15 - 1);
        v15 -= 3;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = *a1;
      *(a1 + 8) = v14;
    }

    operator delete(v16);
  }
}

uint64_t sub_5C39A8(uint64_t a1)
{
  v2 = *(a1 + 448);
  if (v2)
  {
    *(a1 + 456) = v2;
    operator delete(v2);
  }

  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
    if ((*(a1 + 407) & 0x80000000) == 0)
    {
LABEL_5:
      v3 = *(a1 + 368);
      if (v3 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 407) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 384));
  v3 = *(a1 + 368);
  if (v3 != -1)
  {
LABEL_9:
    (off_266B860[v3])(&v5, a1 + 336);
  }

LABEL_10:
  *(a1 + 368) = -1;
  sub_53A868(a1 + 176);
  sub_53A868(a1 + 16);
  return a1;
}

uint64_t sub_5C3A5C(uint64_t a1)
{
  if (*(a1 + 1999) < 0)
  {
    operator delete(*(a1 + 1976));
    if (*(a1 + 1968) != 1)
    {
LABEL_3:
      v2 = *(a1 + 1752);
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_9:
      v4 = *(a1 + 1760);
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_3A9518(v4 - 1120);
        }

        while (v4 != v2);
        v5 = *(a1 + 1752);
      }

      *(a1 + 1760) = v2;
      operator delete(v5);
      sub_570440(a1 + 1136);
      if (*(a1 + 1128) == 1)
      {
        goto LABEL_5;
      }

      return a1;
    }
  }

  else if (*(a1 + 1968) != 1)
  {
    goto LABEL_3;
  }

  sub_52A624(a1 + 1800);
  v2 = *(a1 + 1752);
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_570440(a1 + 1136);
  if (*(a1 + 1128) == 1)
  {
LABEL_5:
    sub_3A9518(a1 + 8);
  }

  return a1;
}

uint64_t sub_5C3B24(uint64_t *a1, uint64_t a2, _DWORD *a3, int *a4)
{
  v4 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v7 = 0x186186186186186;
  }

  else
  {
    v7 = v5;
  }

  v16 = a1;
  if (v7)
  {
    if (v7 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v13 = 168 * v4;
  v15 = 0;
  sub_5CBC00(168 * v4, a2, a3, a4);
  v14 = 168 * v4 + 168;
  sub_5C3CA0(a1, &__p);
  v8 = a1[1];
  v10 = v13;
  for (i = v14; v14 != v10; i = v14)
  {
    v14 = i - 168;
    sub_53A868(i - 168);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_5C3C8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C3E10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5C3CA0(uint64_t *a1, void *a2)
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
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 40) = *(v8 + 40);
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 48) = *(v8 + 48);
      *(v9 + 64) = *(v8 + 64);
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v9 + 72) = 0;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 72) = *(v8 + 72);
      v10 = *(v8 + 96);
      *(v9 + 88) = *(v8 + 88);
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v9 + 96) = v10;
      v11 = *(v8 + 104);
      *(v9 + 108) = *(v8 + 108);
      *(v9 + 104) = v11;
      v12 = *(v8 + 112);
      *(v9 + 128) = *(v8 + 128);
      *(v9 + 112) = v12;
      *(v8 + 120) = 0;
      *(v8 + 128) = 0;
      *(v8 + 112) = 0;
      v13 = *(v8 + 136);
      *(v9 + 152) = *(v8 + 152);
      *(v9 + 136) = v13;
      *(v8 + 144) = 0;
      *(v8 + 152) = 0;
      *(v8 + 136) = 0;
      *(v9 + 160) = *(v8 + 160);
      v8 += 168;
      v9 += 168;
    }

    while (v8 != v5);
    do
    {
      result = sub_53A868(result) + 168;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v14 = *a1;
  *a1 = v7;
  a1[1] = v14;
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

uint64_t sub_5C3E10(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 168;
    sub_53A868(i - 168);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_5C3E64(uint64_t *a1, __int128 *a2, char *a3, _DWORD *a4)
{
  v4 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v7 = 0x1C71C71C71C71C7;
  }

  else
  {
    v7 = v5;
  }

  v16 = a1;
  if (v7)
  {
    if (v7 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v13 = 144 * v4;
  v14 = 144 * v4;
  v15 = 0;
  sub_64A2CC(144 * v4, a2, *a3, a4);
  v14 = 144 * v4 + 144;
  sub_5C3FE0(a1, &__p);
  v8 = a1[1];
  v10 = v13;
  for (i = v14; v14 != v10; i = v14)
  {
    v14 = i - 144;
    sub_5C42C0(i - 144);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_5C3FCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C4118(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5C3FE0(uint64_t *a1, void *a2)
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
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      *(v8 + 8) = 0uLL;
      *v8 = 0;
      v11 = *(v8 + 24);
      *(v9 + 32) = *(v8 + 32);
      *(v9 + 24) = v11;
      v12 = *(v8 + 40);
      *(v8 + 40) = 0uLL;
      *(v9 + 40) = v12;
      v13 = *(v8 + 56);
      *(v8 + 56) = 0;
      *(v9 + 56) = v13;
      *(v9 + 64) = 0;
      *(v9 + 72) = 0uLL;
      *(v9 + 64) = *(v8 + 64);
      v14 = *(v8 + 88);
      *(v9 + 80) = *(v8 + 80);
      *(v8 + 64) = 0uLL;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v9 + 88) = v14;
      LODWORD(v13) = *(v8 + 96);
      *(v9 + 100) = *(v8 + 100);
      *(v9 + 96) = v13;
      v15 = *(v8 + 104);
      *(v8 + 104) = 0uLL;
      *(v9 + 104) = v15;
      v16 = *(v8 + 120);
      *(v8 + 120) = 0uLL;
      *(v9 + 120) = v16;
      *(v9 + 136) = *(v8 + 136);
      v8 += 144;
      v9 += 144;
    }

    while (v8 != v5);
    do
    {
      result = sub_5C42C0(result) + 144;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v17 = *a1;
  *a1 = v7;
  a1[1] = v17;
  a2[1] = v17;
  v18 = a1[1];
  a1[1] = a2[2];
  a2[2] = v18;
  v19 = a1[2];
  a1[2] = a2[3];
  a2[3] = v19;
  *a2 = a2[1];
  return result;
}

uint64_t sub_5C4118(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    sub_5C42C0(i - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_5C416C(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *&dword_10[6 * v2] = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_5C42AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5C42C0(uint64_t a1)
{
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2[1];
      v5 = *v2;
      if (v4 != v3)
      {
        do
        {
          v4 -= 168;
          sub_5C37D8(v4);
        }

        while (v4 != v3);
        v5 = *v2;
      }

      v2[1] = v3;
      operator delete(v5);
    }

    operator delete();
  }

  v6 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v6)
  {
    if (*(v6 + 24) == 1 && *(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete();
  }

  v7 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      *(v7 + 16) = v8;
      operator delete(v8);
    }

    operator delete();
  }

  v9 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v9)
  {
    if (*(v9 + 47) < 0)
    {
      operator delete(*(v9 + 24));
      if ((*(v9 + 23) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    else if ((*(v9 + 23) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    operator delete(*v9);
LABEL_20:
    operator delete();
  }

  v10 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v10)
  {
    sub_55CE04(a1 + 88, v10);
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = *(a1 + 72);
    v13 = *(a1 + 64);
    if (v12 != v11)
    {
      do
      {
        if (*(v12 - 9) < 0)
        {
          operator delete(*(v12 - 32));
        }

        v12 -= 40;
      }

      while (v12 != v11);
      v13 = *(a1 + 64);
    }

    *(a1 + 72) = v11;
    operator delete(v13);
  }

  v14 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v14)
  {
    if (*(v14 + 103) < 0)
    {
      operator delete(*(v14 + 80));
      if ((*(v14 + 71) & 0x80000000) == 0)
      {
LABEL_34:
        v15 = *(v14 + 32);
        if (v15 == -1)
        {
LABEL_41:
          *(v14 + 32) = -1;
          operator delete();
        }

LABEL_40:
        (off_266B860[v15])(&v19, v14);
        goto LABEL_41;
      }
    }

    else if ((*(v14 + 71) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    operator delete(*(v14 + 48));
    v15 = *(v14 + 32);
    if (v15 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v16 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v16)
  {
    if (*(v16 + 31) < 0)
    {
      operator delete(*(v16 + 8));
    }

    operator delete();
  }

  v17 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v17)
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    operator delete();
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_5C4594(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v5 = 0x199999999999999;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 160 * v2;
  v13 = 0;
  sub_64BC20(160 * v2, a2);
  v12 = 160 * v2 + 160;
  sub_5C46E0(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 160;
    sub_53A868(i - 160);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_5C46CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C4848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5C46E0(uint64_t *a1, void *a2)
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
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 40) = *(v8 + 40);
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 48) = *(v8 + 48);
      *(v9 + 64) = *(v8 + 64);
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v9 + 72) = 0;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 72) = *(v8 + 72);
      v10 = *(v8 + 96);
      *(v9 + 88) = *(v8 + 88);
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v9 + 96) = v10;
      v11 = *(v8 + 104);
      *(v9 + 108) = *(v8 + 108);
      *(v9 + 104) = v11;
      v12 = *(v8 + 112);
      *(v9 + 128) = *(v8 + 128);
      *(v9 + 112) = v12;
      *(v8 + 120) = 0;
      *(v8 + 128) = 0;
      *(v8 + 112) = 0;
      v13 = *(v8 + 136);
      *(v9 + 152) = *(v8 + 152);
      *(v9 + 136) = v13;
      *(v8 + 144) = 0;
      *(v8 + 152) = 0;
      *(v8 + 136) = 0;
      v8 += 160;
      v9 += 160;
    }

    while (v8 != v5);
    do
    {
      result = sub_53A868(result) + 160;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v14 = *a1;
  *a1 = v7;
  a1[1] = v14;
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
  return result;
}

uint64_t sub_5C4848(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 160;
    sub_53A868(i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_5C489C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v5 = 0x199999999999999;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 160 * v2;
  v13 = 0;
  sub_55BD50(160 * v2, a2);
  v12 = 160 * v2 + 160;
  sub_5C46E0(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 160;
    sub_53A868(i - 160);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_5C49D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C4848(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5C49E8(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    if (!(v7 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = v2 << 6;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    *(v8 + 16) = *(a2 + 16);
  }

  v9 = v8;
  *(v8 + 24) = *(a2 + 24);
  *(v8 + 40) = *(a2 + 40);
  *(v8 + 56) = *(a2 + 56);
  v10 = v8 + 64;
  v11 = *a1;
  v12 = a1[1];
  v13 = v9 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      v17 = *(v14 + 24);
      v18 = *(v14 + 40);
      *(v15 + 56) = *(v14 + 14);
      *(v15 + 40) = v18;
      *(v15 + 24) = v17;
      v14 += 4;
      v15 += 64;
    }

    while (v14 != v12);
    do
    {
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v11 += 64;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_5C4BA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C4BBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_5C4BBC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 8;
      *(a1 + 16) = v2 - 8;
      if (*(v2 - 41) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_5C4C24(uint64_t *a1, __int128 *a2, int *a3, void *a4, uint64_t *a5)
{
  v5 = (a1[1] - *a1) >> 6;
  v6 = v5 + 1;
  if ((v5 + 1) >> 58)
  {
    sub_1794();
  }

  v8 = a1[2] - *a1;
  if (v8 >> 5 > v6)
  {
    v6 = v8 >> 5;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFC0)
  {
    v9 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v20 = v5 << 6;
  sub_5CBC34(v5 << 6, a2, *a3, a4, a5);
  v10 = (v5 << 6) + 64;
  v11 = *a1;
  v12 = a1[1];
  v13 = v20 + *a1 - v12;
  if (v12 != *a1)
  {
    v14 = *a1;
    v15 = v20 + *a1 - v12;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      v17 = *(v14 + 24);
      v18 = *(v14 + 40);
      *(v15 + 56) = *(v14 + 14);
      *(v15 + 40) = v18;
      *(v15 + 24) = v17;
      v14 += 4;
      v15 += 64;
    }

    while (v14 != v12);
    do
    {
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v11 += 64;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_5C4DB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5C4BBC(va);
  _Unwind_Resume(a1);
}

void sub_5C4DCC(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned int *a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v9 = a1;
  if (a1 != a2)
  {
    v11 = a2;
    while (1)
    {
      if (a3 == a4)
      {
        while (v9 != v11)
        {
          sub_376F0(a5, v9);
          v9 = (v9 + 12);
        }

        goto LABEL_80;
      }

      v12 = *(v9 + 2);
      v13 = a3[2];
      v14 = v12 != 0x7FFFFFFF;
      if (v12 == 0x7FFFFFFF)
      {
        v15 = v13 != 0x7FFFFFFF;
        v16 = *v9;
        v17 = *a3;
        if (*v9 >= *a3)
        {
          v18 = 1;
        }

        else
        {
          v18 = -1;
        }

        if (v16 != v17)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 != 0x7FFFFFFF)
        {
          v16 = *v9;
          v17 = *a3;
          if (*v9 >= *a3)
          {
            v18 = 1;
          }

          else
          {
            v18 = -1;
          }

          if (v16 != v17)
          {
            goto LABEL_36;
          }

          v19 = a3[1];
          v20 = *(v9 + 1);
          if (v12 >= v13)
          {
            v22 = 0;
          }

          else
          {
            v22 = -1;
          }

          goto LABEL_29;
        }

        v15 = 0;
        v16 = *v9;
        v17 = *a3;
        if (*v9 >= *a3)
        {
          v18 = 1;
        }

        else
        {
          v18 = -1;
        }

        if (v16 != v17)
        {
          goto LABEL_36;
        }
      }

      v19 = a3[1];
      v20 = *(v9 + 1);
      if (v15 && v12 == 0x7FFFFFFF)
      {
        v21 = -1;
      }

      else
      {
        v21 = 1;
      }

      if ((v12 != 0x7FFFFFFF) != v15)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

LABEL_29:
      v23 = v20 == v19;
      if (v20 >= v19)
      {
        v24 = 1;
      }

      else
      {
        v24 = -1;
      }

      if (v23)
      {
        v18 = v22;
      }

      else
      {
        v18 = v24;
      }

      v17 = v16;
LABEL_36:
      if (v18 < 0)
      {
        sub_376F0(a5, v9);
        v9 = (v9 + 12);
        if (v9 == v11)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v13 != 0x7FFFFFFF)
        {
          if (v12 != 0x7FFFFFFF)
          {
            v35 = v17 == v16;
            if (v17 >= v16)
            {
              v26 = 1;
            }

            else
            {
              v26 = -1;
            }

            if (!v35)
            {
              goto LABEL_70;
            }

            v36 = *(v9 + 1);
            v37 = a3[1];
            if (v13 >= v12)
            {
              v32 = 0;
            }

            else
            {
              v32 = -1;
            }

            v33 = v37 >= v36;
            v34 = v37 == v36;
            goto LABEL_64;
          }

          v14 = 0;
        }

        v25 = v17 == v16;
        if (v17 >= v16)
        {
          v26 = 1;
        }

        else
        {
          v26 = -1;
        }

        if (!v25)
        {
          goto LABEL_70;
        }

        v27 = *(v9 + 1);
        v28 = a3[1];
        v23 = v13 == 0x7FFFFFFF;
        v29 = v13 != 0x7FFFFFFF;
        v30 = v23;
        if ((v14 & v30) != 0)
        {
          v31 = -1;
        }

        else
        {
          v31 = 1;
        }

        if (v29 != v14)
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        v33 = v28 >= v27;
        v34 = v28 == v27;
LABEL_64:
        if (v33)
        {
          v38 = 1;
        }

        else
        {
          v38 = -1;
        }

        if (v34)
        {
          v26 = v32;
        }

        else
        {
          v26 = v38;
        }

LABEL_70:
        if (v26 < 0)
        {
          sub_376F0(a5, a3);
          a3 += 3;
          if (v9 == v11)
          {
LABEL_74:
            v9 = v11;
            break;
          }
        }

        else
        {
          v9 = (v9 + 12);
          a3 += 3;
          if (v9 == v11)
          {
            goto LABEL_74;
          }
        }
      }
    }
  }

  while (a3 != a4)
  {
    sub_376F0(a5, a3);
    a3 += 3;
  }

  v11 = v9;
LABEL_80:
  *a6 = v11;
  a6[1] = a4;
  a6[2] = a5;
}

uint64_t sub_5C4FF4(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 3;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * (a2 - v10);
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:

        return sub_5C555C(v10, v10 + 3, a2 - 3);
      case 4uLL:

        return sub_5C5A20(v10, v10 + 3, v10 + 6, a2 - 3);
      case 5uLL:

        return sub_5C5D44(v10, v10 + 3, v10 + 6, v10 + 9, a2 - 3);
    }

LABEL_11:
    if (v13 <= 287)
    {
      if (a5)
      {

        return sub_5C615C(v10, a2);
      }

      else
      {

        return sub_5C6374(v10, a2);
      }
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return sub_5C7254(v10, a2, a2, a3);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = &v10[3 * (v14 >> 1)];
    if (v13 < 0x601)
    {
      sub_5C555C(&v10[3 * v15], v10, a2 - 3);
      if (a5)
      {
        goto LABEL_57;
      }
    }

    else
    {
      sub_5C555C(v10, &v10[3 * v15], a2 - 3);
      v17 = v10 + 3;
      v18 = 3 * v15;
      v19 = &v8[3 * v15 - 3];
      sub_5C555C(v8 + 3, v19, a2 - 6);
      sub_5C555C(v8 + 6, &v17[v18], a2 - 9);
      sub_5C555C(v19, v16, &v17[v18]);
      v57 = v8[2];
      v55 = *v8;
      v20 = *v16;
      v8[2] = v16[2];
      *v8 = v20;
      v16[2] = v57;
      *v16 = v55;
      if (a5)
      {
        goto LABEL_57;
      }
    }

    v21 = *(v8 - 1);
    v22 = v8[2];
    if (v21 == 0x7FFFFFFF)
    {
      v23 = v22 != 0x7FFFFFFF;
      v27 = *(v8 - 3);
      v28 = v27 == *v8;
      if (v27 >= *v8)
      {
        v26 = 1;
      }

      else
      {
        v26 = -1;
      }

      if (!v28)
      {
        goto LABEL_56;
      }

      goto LABEL_29;
    }

    if (v22 == 0x7FFFFFFF)
    {
      v23 = 0;
      v24 = *(v8 - 3);
      v25 = v24 == *v8;
      if (v24 >= *v8)
      {
        v26 = 1;
      }

      else
      {
        v26 = -1;
      }

      if (!v25)
      {
        goto LABEL_56;
      }

LABEL_29:
      v29 = v8[1];
      v30 = *(v8 - 2);
      v31 = v30 == v29;
      if (v30 >= v29)
      {
        v26 = 1;
      }

      else
      {
        v26 = -1;
      }

      if (v31)
      {
        v25 = v21 == 0x7FFFFFFF;
        v32 = v21 != 0x7FFFFFFF;
        v33 = v25;
        v26 = (v23 & v33) != 0 ? -1 : 1;
        if (v32 == v23)
        {
          v26 = 0;
        }
      }

      goto LABEL_56;
    }

    v34 = *(v8 - 3);
    v35 = v34 == *v8;
    if (v34 >= *v8)
    {
      v26 = 1;
    }

    else
    {
      v26 = -1;
    }

    if (v35)
    {
      v36 = v8[1];
      v37 = *(v8 - 2);
      v38 = v37 == v36;
      v26 = v37 >= v36 ? 1 : -1;
      if (v38)
      {
        if (v21 >= v22)
        {
          v26 = 0;
        }

        else
        {
          v26 = -1;
        }
      }
    }

LABEL_56:
    if ((v26 & 0x80) == 0)
    {
      result = sub_5C6544(v8, a2);
      v10 = result;
      goto LABEL_62;
    }

LABEL_57:
    v39 = sub_5C6A18(v8, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_60;
    }

    v41 = sub_5C6E0C(v8, v39);
    v10 = v39 + 3;
    result = sub_5C6E0C(v39 + 3, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v39;
      if (v41)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v41)
    {
LABEL_60:
      result = sub_5C4FF4(v8, v39, a3, -v12, a5 & 1);
      v10 = v39 + 3;
LABEL_62:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  if (v14 < 2)
  {
    return result;
  }

  if (v14 != 2)
  {
    goto LABEL_11;
  }

  v42 = *(a2 - 1);
  v43 = v10[2];
  if (v42 == 0x7FFFFFFF)
  {
    v44 = v43 != 0x7FFFFFFF;
LABEL_86:
    if (*v9 >= *v10)
    {
      v45 = 1;
    }

    else
    {
      v45 = -1;
    }

    if (*v9 == *v10)
    {
      v46 = v10[1];
      v47 = *(a2 - 2);
      v25 = v42 == 0x7FFFFFFF;
      v48 = v42 != 0x7FFFFFFF;
      v49 = v25;
      v25 = (v44 & v49) == 0;
      v50 = -1;
      if (v25)
      {
        v50 = 1;
      }

      if (v48 != v44)
      {
        v51 = v50;
      }

      else
      {
        v51 = 0;
      }

      goto LABEL_108;
    }
  }

  else
  {
    if (v43 == 0x7FFFFFFF)
    {
      v44 = 0;
      goto LABEL_86;
    }

    if (*v9 >= *v10)
    {
      v45 = 1;
    }

    else
    {
      v45 = -1;
    }

    if (*v9 == *v10)
    {
      v46 = v10[1];
      v47 = *(a2 - 2);
      v52 = v42 < v43;
      v51 = -1;
      if (!v52)
      {
        v51 = 0;
      }

LABEL_108:
      v53 = -1;
      if (v47 >= v46)
      {
        v53 = 1;
      }

      if (v47 == v46)
      {
        v45 = v51;
      }

      else
      {
        v45 = v53;
      }
    }
  }

  if (v45 < 0)
  {
    v58 = v10[2];
    v56 = *v10;
    v54 = *v9;
    v10[2] = *(a2 - 1);
    *v10 = v54;
    *v9 = v56;
    *(a2 - 1) = v58;
  }

  return result;
}

uint64_t sub_5C555C(unsigned int *a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a2[2];
  v4 = a1[2];
  v5 = v3 != 0x7FFFFFFF;
  if (v3 == 0x7FFFFFFF)
  {
    v6 = v4 != 0x7FFFFFFF;
    v7 = *a2;
    if (*a2 >= *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    if (*a2 != *a1)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v4 != 0x7FFFFFFF)
    {
      v7 = *a2;
      if (*a2 >= *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = -1;
      }

      if (*a2 != *a1)
      {
        goto LABEL_29;
      }

      v9 = a1[1];
      v10 = a2[1];
      v13 = v3 < v4;
      v12 = -1;
      if (!v13)
      {
        v12 = 0;
      }

      goto LABEL_23;
    }

    v6 = 0;
    v7 = *a2;
    if (*a2 >= *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    if (*a2 != *a1)
    {
      goto LABEL_29;
    }
  }

  v9 = a1[1];
  v10 = a2[1];
  v11 = -1;
  if (!v6 || v3 != 0x7FFFFFFF)
  {
    v11 = 1;
  }

  if ((v3 != 0x7FFFFFFF) != v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_23:
  v14 = v10 >= v9;
  v15 = v10 == v9;
  v8 = -1;
  if (v14)
  {
    v8 = 1;
  }

  if (v15)
  {
    v8 = v12;
  }

LABEL_29:
  v16 = a3[2];
  if ((v8 & 0x80) == 0)
  {
    if (v16 != 0x7FFFFFFF)
    {
      if (v3 != 0x7FFFFFFF)
      {
        v37 = *a3 == v7;
        if (*a3 >= v7)
        {
          v18 = 1;
        }

        else
        {
          v18 = -1;
        }

        if (v37)
        {
          v38 = a2[1];
          v39 = a3[1];
          v13 = v16 < v3;
          v40 = -1;
          if (!v13)
          {
            v40 = 0;
          }

          v14 = v39 >= v38;
          v41 = v39 == v38;
          v42 = -1;
          if (v14)
          {
            v42 = 1;
          }

          if (v41)
          {
            v18 = v40;
          }

          else
          {
            v18 = v42;
          }
        }

LABEL_89:
        if ((v18 & 0x80) == 0)
        {
          return 0;
        }

        v44 = a2[2];
        v45 = *a2;
        v46 = a3[2];
        *a2 = *a3;
        a2[2] = v46;
        *a3 = v45;
        a3[2] = v44;
        v47 = a2[2];
        v48 = a1[2];
        if (v47 == 0x7FFFFFFF)
        {
          v49 = v48 != 0x7FFFFFFF;
          if (*a2 >= *a1)
          {
            v50 = 1;
          }

          else
          {
            v50 = -1;
          }

          if (*a2 != *a1)
          {
            goto LABEL_167;
          }
        }

        else
        {
          if (v48 != 0x7FFFFFFF)
          {
            if (*a2 >= *a1)
            {
              v50 = 1;
            }

            else
            {
              v50 = -1;
            }

            if (*a2 == *a1)
            {
              v77 = a1[1];
              v78 = a2[1];
              v13 = v47 < v48;
              v79 = -1;
              if (!v13)
              {
                v79 = 0;
              }

              v80 = -1;
              if (v78 >= v77)
              {
                v80 = 1;
              }

              if (v78 == v77)
              {
                v50 = v79;
              }

              else
              {
                v50 = v80;
              }
            }

            goto LABEL_167;
          }

          v49 = 0;
          if (*a2 >= *a1)
          {
            v50 = 1;
          }

          else
          {
            v50 = -1;
          }

          if (*a2 != *a1)
          {
LABEL_167:
            if (v50 < 0)
            {
              v81 = a1[2];
              v82 = *a1;
              v83 = a2[2];
              *a1 = *a2;
              a1[2] = v83;
              *a2 = v82;
              a2[2] = v81;
            }

            return 1;
          }
        }

        v67 = a1[1];
        v68 = a2[1];
        v69 = v68 == v67;
        if (v68 >= v67)
        {
          v50 = 1;
        }

        else
        {
          v50 = -1;
        }

        if (v69)
        {
          v15 = v47 == 0x7FFFFFFF;
          v70 = v47 != 0x7FFFFFFF;
          v71 = v15;
          v15 = (v49 & v71) == 0;
          v50 = -1;
          if (v15)
          {
            v50 = 1;
          }

          if (v70 == v49)
          {
            v50 = 0;
          }
        }

        goto LABEL_167;
      }

      v5 = 0;
    }

    v17 = *a3 == v7;
    if (*a3 >= v7)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v17)
    {
      v19 = a2[1];
      v20 = a3[1];
      v15 = v16 == 0x7FFFFFFF;
      v21 = v16 != 0x7FFFFFFF;
      v22 = v15;
      v15 = (v5 & v22) == 0;
      v23 = -1;
      if (v15)
      {
        v23 = 1;
      }

      if (v21 != v5)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v14 = v20 >= v19;
      v25 = v20 == v19;
      v26 = -1;
      if (v14)
      {
        v26 = 1;
      }

      if (v25)
      {
        v18 = v24;
      }

      else
      {
        v18 = v26;
      }
    }

    goto LABEL_89;
  }

  if (v16 == 0x7FFFFFFF)
  {
    goto LABEL_56;
  }

  if (v3 == 0x7FFFFFFF)
  {
    v5 = 0;
LABEL_56:
    v27 = *a3 == v7;
    if (*a3 >= v7)
    {
      v28 = 1;
    }

    else
    {
      v28 = -1;
    }

    if (v27)
    {
      v29 = a2[1];
      v30 = a3[1];
      v15 = v16 == 0x7FFFFFFF;
      v31 = v16 != 0x7FFFFFFF;
      v32 = v15;
      v15 = (v5 & v32) == 0;
      v33 = -1;
      if (v15)
      {
        v33 = 1;
      }

      if (v31 != v5)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v14 = v30 >= v29;
      v35 = v30 == v29;
      v36 = -1;
      if (v14)
      {
        v36 = 1;
      }

      if (v35)
      {
        v28 = v34;
      }

      else
      {
        v28 = v36;
      }
    }

    goto LABEL_111;
  }

  v51 = *a3 == v7;
  if (*a3 >= v7)
  {
    v28 = 1;
  }

  else
  {
    v28 = -1;
  }

  if (v51)
  {
    v52 = a2[1];
    v53 = a3[1];
    v13 = v16 < v3;
    v54 = -1;
    if (!v13)
    {
      v54 = 0;
    }

    v14 = v53 >= v52;
    v55 = v53 == v52;
    v56 = -1;
    if (v14)
    {
      v56 = 1;
    }

    if (v55)
    {
      v28 = v54;
    }

    else
    {
      v28 = v56;
    }
  }

LABEL_111:
  if (v28 < 0)
  {
    v64 = a1[2];
    v65 = *a1;
    v66 = a3[2];
    *a1 = *a3;
    a1[2] = v66;
    *a3 = v65;
    a3[2] = v64;
    return 1;
  }

  v57 = a1[2];
  v58 = *a1;
  v59 = a2[2];
  *a1 = *a2;
  a1[2] = v59;
  *a2 = v58;
  a2[2] = v57;
  v60 = a3[2];
  v61 = a2[2];
  if (v60 == 0x7FFFFFFF)
  {
    v62 = v61 != 0x7FFFFFFF;
    if (*a3 >= *a2)
    {
      v63 = 1;
    }

    else
    {
      v63 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_181;
    }

    goto LABEL_142;
  }

  if (v61 == 0x7FFFFFFF)
  {
    v62 = 0;
    if (*a3 >= *a2)
    {
      v63 = 1;
    }

    else
    {
      v63 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_181;
    }

LABEL_142:
    v72 = a2[1];
    v73 = a3[1];
    v74 = v73 == v72;
    if (v73 >= v72)
    {
      v63 = 1;
    }

    else
    {
      v63 = -1;
    }

    if (v74)
    {
      v15 = v60 == 0x7FFFFFFF;
      v75 = v60 != 0x7FFFFFFF;
      v76 = v15;
      v15 = (v62 & v76) == 0;
      v63 = -1;
      if (v15)
      {
        v63 = 1;
      }

      if (v75 == v62)
      {
        v63 = 0;
      }
    }

    goto LABEL_181;
  }

  if (*a3 >= *a2)
  {
    v63 = 1;
  }

  else
  {
    v63 = -1;
  }

  if (*a3 == *a2)
  {
    v84 = a2[1];
    v85 = a3[1];
    v13 = v60 < v61;
    v86 = -1;
    if (!v13)
    {
      v86 = 0;
    }

    v87 = -1;
    if (v85 >= v84)
    {
      v87 = 1;
    }

    if (v85 == v84)
    {
      v63 = v86;
    }

    else
    {
      v63 = v87;
    }
  }

LABEL_181:
  if ((v63 & 0x80) == 0)
  {
    return 1;
  }

  v88 = a2[2];
  v89 = *a2;
  v90 = a3[2];
  *a2 = *a3;
  a2[2] = v90;
  *a3 = v89;
  a3[2] = v88;
  return 1;
}

uint64_t sub_5C5A20(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  result = sub_5C555C(a1, a2, a3);
  v9 = a4[2];
  v10 = a3[2];
  if (v9 == 0x7FFFFFFF)
  {
    v11 = v10 != 0x7FFFFFFF;
    if (*a4 >= *a3)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v10 != 0x7FFFFFFF)
    {
      if (*a4 >= *a3)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (*a4 != *a3)
      {
        goto LABEL_32;
      }

      v13 = a3[1];
      v14 = a4[1];
      v19 = v9 < v10;
      v18 = -1;
      if (!v19)
      {
        v18 = 0;
      }

      goto LABEL_27;
    }

    v11 = 0;
    if (*a4 >= *a3)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_32;
    }
  }

  v13 = a3[1];
  v14 = a4[1];
  v44 = v9 == 0x7FFFFFFF;
  v15 = v9 != 0x7FFFFFFF;
  v16 = v44;
  v44 = (v11 & v16) == 0;
  v17 = -1;
  if (v44)
  {
    v17 = 1;
  }

  if (v15 != v11)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

LABEL_27:
  v20 = -1;
  if (v14 >= v13)
  {
    v20 = 1;
  }

  if (v14 == v13)
  {
    v12 = v18;
  }

  else
  {
    v12 = v20;
  }

LABEL_32:
  if ((v12 & 0x80) == 0)
  {
    return result;
  }

  v21 = a3[2];
  v22 = *a3;
  v23 = a4[2];
  *a3 = *a4;
  a3[2] = v23;
  *a4 = v22;
  a4[2] = v21;
  v24 = a3[2];
  v25 = a2[2];
  if (v24 == 0x7FFFFFFF)
  {
    v26 = v25 != 0x7FFFFFFF;
    if (*a3 >= *a2)
    {
      v27 = 1;
    }

    else
    {
      v27 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if (v25 != 0x7FFFFFFF)
    {
      if (*a3 >= *a2)
      {
        v27 = 1;
      }

      else
      {
        v27 = -1;
      }

      if (*a3 != *a2)
      {
        goto LABEL_64;
      }

      v28 = a2[1];
      v29 = a3[1];
      v19 = v24 < v25;
      v33 = -1;
      if (!v19)
      {
        v33 = 0;
      }

      goto LABEL_59;
    }

    v26 = 0;
    if (*a3 >= *a2)
    {
      v27 = 1;
    }

    else
    {
      v27 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_64;
    }
  }

  v28 = a2[1];
  v29 = a3[1];
  v44 = v24 == 0x7FFFFFFF;
  v30 = v24 != 0x7FFFFFFF;
  v31 = v44;
  v44 = (v26 & v31) == 0;
  v32 = -1;
  if (v44)
  {
    v32 = 1;
  }

  if (v30 != v26)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

LABEL_59:
  v34 = -1;
  if (v29 >= v28)
  {
    v34 = 1;
  }

  if (v29 == v28)
  {
    v27 = v33;
  }

  else
  {
    v27 = v34;
  }

LABEL_64:
  if ((v27 & 0x80) == 0)
  {
    return result;
  }

  v35 = a2[2];
  v36 = *a2;
  v37 = a3[2];
  *a2 = *a3;
  a2[2] = v37;
  *a3 = v36;
  a3[2] = v35;
  v38 = a2[2];
  v39 = a1[2];
  if (v38 == 0x7FFFFFFF)
  {
    v40 = v39 != 0x7FFFFFFF;
    if (*a2 >= *a1)
    {
      v41 = 1;
    }

    else
    {
      v41 = -1;
    }

    if (*a2 != *a1)
    {
      goto LABEL_102;
    }

LABEL_76:
    v42 = a1[1];
    v43 = a2[1];
    v44 = v43 == v42;
    if (v43 >= v42)
    {
      v41 = 1;
    }

    else
    {
      v41 = -1;
    }

    if (v44)
    {
      v44 = v38 == 0x7FFFFFFF;
      v45 = v38 != 0x7FFFFFFF;
      v46 = v44;
      v44 = (v40 & v46) == 0;
      v41 = -1;
      if (v44)
      {
        v41 = 1;
      }

      if (v45 == v40)
      {
        v41 = 0;
      }
    }

    goto LABEL_102;
  }

  if (v39 != 0x7FFFFFFF)
  {
    if (*a2 >= *a1)
    {
      v41 = 1;
    }

    else
    {
      v41 = -1;
    }

    if (*a2 == *a1)
    {
      v47 = a1[1];
      v48 = a2[1];
      v49 = v48 == v47;
      v41 = v48 >= v47 ? 1 : -1;
      if (v49)
      {
        if (v38 >= v39)
        {
          v41 = 0;
        }

        else
        {
          v41 = -1;
        }
      }
    }

    goto LABEL_102;
  }

  v40 = 0;
  if (*a2 >= *a1)
  {
    v41 = 1;
  }

  else
  {
    v41 = -1;
  }

  if (*a2 == *a1)
  {
    goto LABEL_76;
  }

LABEL_102:
  if (v41 < 0)
  {
    v50 = a1[2];
    v51 = *a1;
    v52 = a2[2];
    *a1 = *a2;
    a1[2] = v52;
    *a2 = v51;
    a2[2] = v50;
  }

  return result;
}

uint64_t sub_5C5D44(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  result = sub_5C5A20(a1, a2, a3, a4);
  v11 = a5[2];
  v12 = a4[2];
  if (v11 == 0x7FFFFFFF)
  {
    v13 = v12 != 0x7FFFFFFF;
    if (*a5 >= *a4)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (*a5 != *a4)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v12 != 0x7FFFFFFF)
    {
      if (*a5 >= *a4)
      {
        v14 = 1;
      }

      else
      {
        v14 = -1;
      }

      if (*a5 != *a4)
      {
        goto LABEL_32;
      }

      v15 = a4[1];
      v16 = a5[1];
      v21 = v11 < v12;
      v20 = -1;
      if (!v21)
      {
        v20 = 0;
      }

      goto LABEL_27;
    }

    v13 = 0;
    if (*a5 >= *a4)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (*a5 != *a4)
    {
      goto LABEL_32;
    }
  }

  v15 = a4[1];
  v16 = a5[1];
  v46 = v11 == 0x7FFFFFFF;
  v17 = v11 != 0x7FFFFFFF;
  v18 = v46;
  v46 = (v13 & v18) == 0;
  v19 = -1;
  if (v46)
  {
    v19 = 1;
  }

  if (v17 != v13)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

LABEL_27:
  v22 = -1;
  if (v16 >= v15)
  {
    v22 = 1;
  }

  if (v16 == v15)
  {
    v14 = v20;
  }

  else
  {
    v14 = v22;
  }

LABEL_32:
  if ((v14 & 0x80) == 0)
  {
    return result;
  }

  v23 = a4[2];
  v24 = *a4;
  v25 = a5[2];
  *a4 = *a5;
  a4[2] = v25;
  *a5 = v24;
  a5[2] = v23;
  v26 = a4[2];
  v27 = a3[2];
  if (v26 == 0x7FFFFFFF)
  {
    v28 = v27 != 0x7FFFFFFF;
    if (*a4 >= *a3)
    {
      v29 = 1;
    }

    else
    {
      v29 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if (v27 != 0x7FFFFFFF)
    {
      if (*a4 >= *a3)
      {
        v29 = 1;
      }

      else
      {
        v29 = -1;
      }

      if (*a4 != *a3)
      {
        goto LABEL_64;
      }

      v30 = a3[1];
      v31 = a4[1];
      v21 = v26 < v27;
      v35 = -1;
      if (!v21)
      {
        v35 = 0;
      }

      goto LABEL_59;
    }

    v28 = 0;
    if (*a4 >= *a3)
    {
      v29 = 1;
    }

    else
    {
      v29 = -1;
    }

    if (*a4 != *a3)
    {
      goto LABEL_64;
    }
  }

  v30 = a3[1];
  v31 = a4[1];
  v46 = v26 == 0x7FFFFFFF;
  v32 = v26 != 0x7FFFFFFF;
  v33 = v46;
  v46 = (v28 & v33) == 0;
  v34 = -1;
  if (v46)
  {
    v34 = 1;
  }

  if (v32 != v28)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

LABEL_59:
  v36 = -1;
  if (v31 >= v30)
  {
    v36 = 1;
  }

  if (v31 == v30)
  {
    v29 = v35;
  }

  else
  {
    v29 = v36;
  }

LABEL_64:
  if ((v29 & 0x80) == 0)
  {
    return result;
  }

  v37 = a3[2];
  v38 = *a3;
  v39 = a4[2];
  *a3 = *a4;
  a3[2] = v39;
  *a4 = v38;
  a4[2] = v37;
  v40 = a3[2];
  v41 = a2[2];
  if (v40 == 0x7FFFFFFF)
  {
    v42 = v41 != 0x7FFFFFFF;
    if (*a3 >= *a2)
    {
      v43 = 1;
    }

    else
    {
      v43 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_102;
    }

    goto LABEL_76;
  }

  if (v41 == 0x7FFFFFFF)
  {
    v42 = 0;
    if (*a3 >= *a2)
    {
      v43 = 1;
    }

    else
    {
      v43 = -1;
    }

    if (*a3 != *a2)
    {
      goto LABEL_102;
    }

LABEL_76:
    v44 = a2[1];
    v45 = a3[1];
    v46 = v45 == v44;
    if (v45 >= v44)
    {
      v43 = 1;
    }

    else
    {
      v43 = -1;
    }

    if (v46)
    {
      v46 = v40 == 0x7FFFFFFF;
      v47 = v40 != 0x7FFFFFFF;
      v48 = v46;
      v46 = (v42 & v48) == 0;
      v43 = -1;
      if (v46)
      {
        v43 = 1;
      }

      if (v47 == v42)
      {
        v43 = 0;
      }
    }

    goto LABEL_102;
  }

  if (*a3 >= *a2)
  {
    v43 = 1;
  }

  else
  {
    v43 = -1;
  }

  if (*a3 == *a2)
  {
    v49 = a2[1];
    v50 = a3[1];
    v51 = v50 == v49;
    v43 = v50 >= v49 ? 1 : -1;
    if (v51)
    {
      if (v40 >= v41)
      {
        v43 = 0;
      }

      else
      {
        v43 = -1;
      }
    }
  }

LABEL_102:
  if ((v43 & 0x80) == 0)
  {
    return result;
  }

  v52 = a2[2];
  v53 = *a2;
  v54 = a3[2];
  *a2 = *a3;
  a2[2] = v54;
  *a3 = v53;
  a3[2] = v52;
  v55 = a2[2];
  v56 = a1[2];
  if (v55 == 0x7FFFFFFF)
  {
    v57 = v56 != 0x7FFFFFFF;
  }

  else
  {
    if (v56 != 0x7FFFFFFF)
    {
      if (*a2 >= *a1)
      {
        v58 = 1;
      }

      else
      {
        v58 = -1;
      }

      if (*a2 == *a1)
      {
        v64 = a1[1];
        v65 = a2[1];
        v66 = v65 == v64;
        v58 = v65 >= v64 ? 1 : -1;
        if (v66)
        {
          if (v55 >= v56)
          {
            v58 = 0;
          }

          else
          {
            v58 = -1;
          }
        }
      }

      goto LABEL_137;
    }

    v57 = 0;
  }

  if (*a2 >= *a1)
  {
    v58 = 1;
  }

  else
  {
    v58 = -1;
  }

  if (*a2 == *a1)
  {
    v59 = a1[1];
    v60 = a2[1];
    v61 = v60 == v59;
    v58 = v60 >= v59 ? 1 : -1;
    if (v61)
    {
      v46 = v55 == 0x7FFFFFFF;
      v62 = v55 != 0x7FFFFFFF;
      v63 = v46;
      v46 = (v57 & v63) == 0;
      v58 = -1;
      if (v46)
      {
        v58 = 1;
      }

      if (v62 == v57)
      {
        v58 = 0;
      }
    }
  }

LABEL_137:
  if (v58 < 0)
  {
    v67 = a1[2];
    v68 = *a1;
    v69 = a2[2];
    *a1 = *a2;
    a1[2] = v69;
    *a2 = v68;
    a2[2] = v67;
  }

  return result;
}