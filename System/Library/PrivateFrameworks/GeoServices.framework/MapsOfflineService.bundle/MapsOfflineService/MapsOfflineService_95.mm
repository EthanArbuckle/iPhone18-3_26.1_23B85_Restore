void sub_604498(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 168;
    v7 = -v4;
    do
    {
      v6 = sub_53A868(v6) - 168;
      v7 += 168;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t *sub_6044C4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x4FBCDA3AC10C9715 * ((v7 - *result) >> 7) < a4)
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
          v10 = sub_5C1158(v10 - 7808);
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

    if (a4 <= 0x864B8A7DE6D1DLL)
    {
      v12 = 0x4FBCDA3AC10C9715 * (v7 >> 7);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x4325C53EF368ELL)
      {
        v14 = 0x864B8A7DE6D1DLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x864B8A7DE6D1DLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0x4FBCDA3AC10C9715 * ((v15 - v8) >> 7) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_5EB618(v8, v5);
        v5 += 7808;
        v8 += 7808;
      }

      while (v5 != a3);
      v15 = v6[1];
    }

    for (; v15 != v8; result = sub_5C1158(v15))
    {
      v15 -= 7808;
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
        result = sub_5EB618(v8, v5);
        v5 += 7808;
        v8 += 7808;
        v16 -= 7808;
      }

      while (v16);
      v15 = v6[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      v20 = 7808;
      do
      {
        result = sub_6047A4(v15 + v19, v17 + v19);
        v20 -= 7808;
        v19 += 7808;
      }

      while (v17 + v19 != a3);
      v18 = v15 + v19;
    }

    v6[1] = v18;
  }

  return result;
}

void sub_604770(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    v6 = v2 - v4;
    v7 = -v3;
    do
    {
      v6 = sub_5C1158(v6) - 7808;
      v7 += 7808;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_6047A4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_60504C(a1, *a2, *(a2 + 8), 0x5DDB1ADCB91F64A7 * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5 != v4)
  {
    if ((0x2E8BA2E8BA2E8BA3 * ((v5 - v4) >> 4)) < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 112);
  v9 = *(a2 + 128);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  *(a1 + 136) = 0;
  *(a1 + 64) = v11;
  *(a1 + 48) = v10;
  *(a1 + 128) = v9;
  *(a1 + 112) = v8;
  *(a1 + 96) = v7;
  *(a1 + 80) = v6;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_605200(a1 + 136, *(a2 + 136), *(a2 + 144), 0x7E3F1F8FC7E3F1F9 * ((*(a2 + 144) - *(a2 + 136)) >> 4));
  v12 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v12;
  sub_55BD50(a1 + 176, a2 + 176);
  sub_55BD50(a1 + 336, a2 + 336);
  sub_55BD50(a1 + 496, a2 + 496);
  sub_55BD50(a1 + 656, a2 + 656);
  sub_55BD50(a1 + 816, a2 + 816);
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  sub_353184(a1 + 976, *(a2 + 976), *(a2 + 984), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 984) - *(a2 + 976)) >> 3));
  sub_55BD50(a1 + 1000, a2 + 1000);
  *(a1 + 1160) = *(a2 + 1160);
  sub_55F1E8(a1 + 1168, a2 + 1168);
  *(a1 + 1280) = *(a2 + 1280);
  sub_5F4380(a1 + 1288, (a2 + 1288));
  sub_5F49A4(a1 + 2376, a2 + 2376);
  *(a1 + 7192) = 0;
  *(a1 + 7176) = 0u;
  v13 = *(a2 + 7176);
  v14 = *(a2 + 7184);
  if (v14 != v13)
  {
    if (((v14 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v15 = *(a2 + 7200);
  *(a1 + 7208) = *(a2 + 7208);
  *(a1 + 7200) = v15;
  if (*(a2 + 7239) < 0)
  {
    sub_325C((a1 + 7216), *(a2 + 7216), *(a2 + 7224));
  }

  else
  {
    v16 = *(a2 + 7216);
    *(a1 + 7232) = *(a2 + 7232);
    *(a1 + 7216) = v16;
  }

  if (*(a2 + 7263) < 0)
  {
    sub_325C((a1 + 7240), *(a2 + 7240), *(a2 + 7248));
  }

  else
  {
    v17 = *(a2 + 7240);
    *(a1 + 7256) = *(a2 + 7256);
    *(a1 + 7240) = v17;
  }

  sub_55F1E8(a1 + 7264, a2 + 7264);
  *(a1 + 7392) = 0;
  *(a1 + 7376) = 0u;
  sub_605408(a1 + 7376, *(a2 + 7376), *(a2 + 7384), 0xFAFAFAFAFAFAFAFBLL * ((*(a2 + 7384) - *(a2 + 7376)) >> 4));
  *(a1 + 7416) = 0;
  *(a1 + 7400) = 0u;
  sub_52DE3C(a1 + 7400, *(a2 + 7400), *(a2 + 7408), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 7408) - *(a2 + 7400)) >> 3));
  if (*(a2 + 7447) < 0)
  {
    sub_325C((a1 + 7424), *(a2 + 7424), *(a2 + 7432));
  }

  else
  {
    v18 = *(a2 + 7424);
    *(a1 + 7440) = *(a2 + 7440);
    *(a1 + 7424) = v18;
  }

  if (*(a2 + 7471) < 0)
  {
    sub_325C((a1 + 7448), *(a2 + 7448), *(a2 + 7456));
  }

  else
  {
    v19 = *(a2 + 7448);
    *(a1 + 7464) = *(a2 + 7464);
    *(a1 + 7448) = v19;
  }

  if (*(a2 + 7495) < 0)
  {
    sub_325C((a1 + 7472), *(a2 + 7472), *(a2 + 7480));
  }

  else
  {
    v20 = *(a2 + 7472);
    *(a1 + 7488) = *(a2 + 7488);
    *(a1 + 7472) = v20;
  }

  *(a1 + 7512) = 0;
  *(a1 + 7496) = 0u;
  v21 = *(a2 + 7496);
  v22 = *(a2 + 7504);
  if (v22 != v21)
  {
    if (((v22 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 7536) = 0;
  *(a1 + 7520) = 0u;
  sub_5713F4(a1 + 7520, *(a2 + 7520), *(a2 + 7528), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 7528) - *(a2 + 7520)) >> 5));
  *(a1 + 7544) = 0u;
  *(a1 + 7560) = 0;
  sub_5713F4(a1 + 7544, *(a2 + 7544), *(a2 + 7552), 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 7552) - *(a2 + 7544)) >> 5));
  *(a1 + 7584) = 0;
  *(a1 + 7568) = 0u;
  sub_60559C(a1 + 7568, *(a2 + 7568), *(a2 + 7576), 0x70913F8BCD29C245 * ((*(a2 + 7576) - *(a2 + 7568)) >> 3));
  *(a1 + 7592) = 0u;
  *(a1 + 7608) = 0;
  sub_60559C(a1 + 7592, *(a2 + 7592), *(a2 + 7600), 0x70913F8BCD29C245 * ((*(a2 + 7600) - *(a2 + 7592)) >> 3));
  *(a1 + 7616) = *(a2 + 7616);
  sub_55BD50(a1 + 7624, a2 + 7624);
  *(a1 + 7800) = 0;
  *(a1 + 7784) = 0u;
  sub_5CEC4C(a1 + 7784, *(a2 + 7784), *(a2 + 7792), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 7792) - *(a2 + 7784)) >> 5));
  return a1;
}

void sub_604D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, char *a14)
{
  if (a14[3375] < 0)
  {
    operator delete(*a10);
    if ((a14[3351] & 0x80000000) == 0)
    {
LABEL_4:
      sub_528FAC((v14 + 7400));
      sub_5D9FE8((v14 + 7376));
      sub_53E440(v14 + 7264);
      if (a14[3167] < 0)
      {
        operator delete(*a12);
        if ((a14[3143] & 0x80000000) == 0)
        {
          goto LABEL_6;
        }
      }

      else if ((a14[3143] & 0x80000000) == 0)
      {
LABEL_6:
        v18 = *(v14 + 7176);
        if (!v18)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      operator delete(*a13);
      v18 = *(v14 + 7176);
      if (!v18)
      {
LABEL_8:
        sub_5C1688(v14 + 2376);
        sub_559E70((v14 + 1288));
        sub_53E440(v14 + 1168);
        sub_53A868(v14 + 1000);
        sub_1A104((v14 + 976));
        sub_53A868(v14 + 816);
        sub_53A868(v14 + 656);
        sub_53A868(v14 + 496);
        sub_53A868(v14 + 336);
        sub_53A868(v14 + 176);
        sub_5EC204(v16);
        sub_5EBF44(v15);
        sub_5EC430(v14);
        _Unwind_Resume(a1);
      }

LABEL_7:
      *(v14 + 7184) = v18;
      operator delete(v18);
      goto LABEL_8;
    }
  }

  else if ((a14[3351] & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*a11);
  goto LABEL_4;
}

void sub_605020()
{
  if (!*(v0 + v1))
  {
    JUMPOUT(0x604F4CLL);
  }

  JUMPOUT(0x604F44);
}

void sub_605030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5F4178(va);
  sub_5EC430(v7);
  _Unwind_Resume(a1);
}

void sub_60504C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x52DA224E52347)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_605148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v11)
  {
    v14 = v10 - v12;
    v15 = -v11;
    do
    {
      v14 = sub_5C186C(v14) - 12656;
      v15 += 12656;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_605184(&a9);
  _Unwind_Resume(a1);
}

void ***sub_605184(void ***result)
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
          v4 = sub_5C186C(v4 - 12656);
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

void sub_605200(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x381C0E070381C1)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_60536C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_5EC394(v13);
  sub_602010(&a11);
  *(v11 + 8) = v12;
  sub_605394(&a9);
  _Unwind_Resume(a1);
}

void ***sub_605394(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      for (i = v2[1]; i != v3; sub_5EC268(v2, i))
      {
        i -= 1168;
      }

      v2[1] = v3;
      operator delete(**a1);
    }
  }

  return a1;
}

void sub_605408(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x50505050505051)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_6054F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 816;
    v15 = -v12;
    do
    {
      v14 = sub_5C0F34(v14) - 816;
      v15 += 816;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_605524(&a9);
  _Unwind_Resume(a1);
}

void ***sub_605524(void ***result)
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
          v4 = sub_5C0F34(v4 - 816);
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

void sub_60559C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x3A196B1EDD80E9)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_6056C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_605704(va);
  _Unwind_Resume(a1);
}

void sub_6056DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_5EBFA8(v4);
  sub_6033B4(va1);
  *(v2 + 8) = v3;
  sub_605704(va);
  _Unwind_Resume(a1);
}

void ***sub_605704(void ***a1)
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
          v6 = v4 - 1128;
          v7 = *(v4 - 2);
          if (v7 != -1)
          {
            (off_266BAE8[v7])(&v9, v4 - 1128);
          }

          *(v4 - 2) = -1;
          v4 -= 1128;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_6057C4()
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
  xmmword_2799118 = 0u;
  unk_2799128 = 0u;
  dword_2799138 = 1065353216;
  sub_3A9A34(&xmmword_2799118, v0);
  sub_3A9A34(&xmmword_2799118, v3);
  sub_3A9A34(&xmmword_2799118, __p);
  sub_3A9A34(&xmmword_2799118, v9);
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
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27990F0 = 0;
    qword_27990F8 = 0;
    qword_27990E8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_605A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2799100)
  {
    qword_2799108 = qword_2799100;
    operator delete(qword_2799100);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_605AB8(uint64_t *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a2[1579];
  v5 = v4 & 0x3F;
  if (v4 > 0x3F || v5 != 0)
  {
    v9 = 0;
    v10 = a2[1578];
    v11 = &v10[v4 >> 6];
    while (((*v10 >> v9) & 1) == 0)
    {
      v10 += v9 == 63;
      if (v9 == 63)
      {
        v9 = 0;
      }

      else
      {
        ++v9;
      }

      if (v9 == v5 && v10 == v11)
      {
        return result;
      }
    }

    sub_6F2FC8(a1, a2, a3, 1, (a1 + 8));
    v16 = a1[18];
    v15 = a1 + 18;
    v17 = v15[3];
    if (v16 != v15[1] && v17 != -1)
    {
      *(a4 + 24) = 0;
      *(a4 + 8) = *a4;
      *(a4 + 48) = *(a4 + 40);
      v19.f64[0] = NAN;
      v19.f64[1] = NAN;
      *(a4 + 72) = v19;
      *(a4 + 64) = 0;
      *(a4 + 88) = v19;
      *(a4 + 104) = v19;
      *(a4 + 120) = -1;
      *(a4 + 128) = 0;
      *(a4 + 136) = -1;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = vnegq_f64(v19);
      *(a4 + 176) = 0;
      *(a4 + 184) = 98;
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      *(a4 + 208) = xmmword_229B660;
      *(a4 + 232) = 0;
      *(a4 + 245) = 0;
      *(a4 + 224) = 0;
      v20 = sub_605E3C(v15, v17);
      v21 = sub_4D1DC0(a2);
      if (a3 <= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = a3;
      }

      if (v21 <= a3)
      {
        v27 = *(a4 + 8);
      }

      else
      {
        v23 = a3;
        do
        {
          while (1)
          {
            v24 = *(sub_4D1F50(a2, v23) + 32);
            v26 = *(a4 + 8);
            v25 = *(a4 + 16);
            if (v26 >= v25)
            {
              v28 = *a4;
              v29 = v26 - *a4;
              v30 = (v29 >> 3) + 1;
              if (v30 >> 61)
              {
                sub_1794();
              }

              v31 = v25 - v28;
              if (v31 >> 2 > v30)
              {
                v30 = v31 >> 2;
              }

              if (v31 >= 0x7FFFFFFFFFFFFFF8)
              {
                v32 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v32 = v30;
              }

              if (v32)
              {
                if (!(v32 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v33 = (8 * (v29 >> 3));
              *v33 = v24 & 0xFFFFFFFFFFFFFFLL;
              v27 = v33 + 1;
              memcpy(0, v28, v29);
              *a4 = 0;
              *(a4 + 8) = v27;
              *(a4 + 16) = 0;
              if (v28)
              {
                operator delete(v28);
              }
            }

            else
            {
              *v26 = v24 & 0xFFFFFFFFFFFFFFLL;
              v27 = v26 + 1;
            }

            *(a4 + 8) = v27;
            v34 = *(v20 + 32);
            if (v34 == v24)
            {
              break;
            }

            if (++v23 == v22)
            {
              goto LABEL_46;
            }
          }

          ++v23;
        }

        while ((HIDWORD(v34) & 0xFFFFFF) != (HIDWORD(v24) & 0xFFFFFF) && v23 != v22);
      }

LABEL_46:
      v36 = a3 + ((v27 - *a4) >> 3) - 1;
      v37 = a2[1578];
      v38 = *(v37 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v36);
      if ((*(v37 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
      {
        if (v38)
        {
          *(a4 + 24) = 0;
          return result;
        }

        v39 = 90;
        goto LABEL_52;
      }

      if (v38)
      {
        v39 = 89;
LABEL_52:
        *(a4 + 24) = v39;
        return result;
      }

      *(a4 + 8) = *a4;
      *(a4 + 48) = *(a4 + 40);
      v40.f64[0] = NAN;
      v40.f64[1] = NAN;
      *(a4 + 72) = v40;
      *(a4 + 88) = v40;
      *(a4 + 104) = v40;
      *(a4 + 120) = -1;
      *(a4 + 24) = 0;
      *(a4 + 64) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = -1;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = vnegq_f64(v40);
      *(a4 + 176) = 0;
      *(a4 + 184) = 98;
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      result = xmmword_229B660;
      *(a4 + 208) = xmmword_229B660;
      *(a4 + 232) = 0;
      *(a4 + 245) = 0;
      *(a4 + 224) = 0;
    }
  }

  return result;
}

uint64_t sub_605E3C(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 40 * a2;
}

void sub_605F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_606070()
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
  xmmword_2799170 = 0u;
  unk_2799180 = 0u;
  dword_2799190 = 1065353216;
  sub_3A9A34(&xmmword_2799170, v0);
  sub_3A9A34(&xmmword_2799170, v3);
  sub_3A9A34(&xmmword_2799170, __p);
  sub_3A9A34(&xmmword_2799170, v9);
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
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_2799148 = 0;
    qword_2799150 = 0;
    qword_2799140 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_6062B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2799158)
  {
    qword_2799160 = qword_2799158;
    operator delete(qword_2799158);
  }

  _Unwind_Resume(exception_object);
}

void *sub_606364@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result != result[1])
  {
    v3 = a2[1];
    if (*a2 != v3)
    {
      if (!((0x2E8BA2E8BA2E8BA3 * ((v3 - *a2) >> 4)) >> 60))
      {
        operator new();
      }

      sub_1794();
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void sub_606874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6068C8(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, unint64_t **a4@<X8>)
{
  if (sub_4D1F6C(a1) || (v6 = a2[1], *a2 == v6) || (v7 = (v6 - *a2) >> 3, v7 < a3))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  v8 = sub_4D1DC0(a1);
  v10 = v7 - 1;
  v65 = a2;
  if (!v8)
  {
    if (a3)
    {
      v60 = a4;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = a2;
      v17 = 0;
      v43 = 0;
      v16 = 0;
      v44 = *(*v42 + 8 * v10);
      v45 = 1;
      goto LABEL_67;
    }

    v58 = 0;
    v13 = 0;
    v46 = 0;
LABEL_104:
    *a4 = v46;
    a4[1] = v13;
    a4[2] = v58;
    return;
  }

  v11 = v8;
  v61 = 0;
  v62 = v7 - 1;
  v60 = a4;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v8;
LABEL_9:
  v18 = v13 - v12;
  v19 = (v13 - v12) >> 4;
  if (v19 != a3)
  {
    v20 = v11--;
    v21 = sub_4D23F8(a1, v11, *v9.i64) + v14;
    if (v21 < *(*v65 + 8 * v62) || ((v22 = sub_4D1DC0(a1) - 1, v23 = *(*v65 + 8 * v62), v23 - v14 >= v21 - v23) ? (v24 = v11) : (v24 = v20), v23 >= v14 ? (v25 = v11 >= v22) : (v25 = 1), !v25 ? (v16 = v24) : (v16 = v11), v21 >= v23 ? (v26 = v19 >= a3) : (v26 = 1), v26))
    {
      v16 = v15;
      v17 = v12;
      goto LABEL_8;
    }

    if (v13 >= v61)
    {
      v27 = v19 + 1;
      if ((v19 + 1) >> 60)
      {
LABEL_105:
        sub_1794();
      }

      if ((v61 - v12) >> 3 > v27)
      {
        v27 = (v61 - v12) >> 3;
      }

      if (v61 - v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v28 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      if (v28)
      {
        if (!(v28 >> 60))
        {
          operator new();
        }

LABEL_106:
        sub_1808();
      }

      v17 = 0;
      v29 = (16 * v19);
      v61 = 0;
      *v29 = v16;
      v29[1] = v15;
      v13 = (16 * v19 + 16);
      memcpy(0, v12, v18);
    }

    else
    {
      *v13 = v16;
      v13[1] = v15;
      v13 += 2;
      v17 = v12;
    }

    v30 = v62;
    if (!v62)
    {
      v62 = 0;
      goto LABEL_8;
    }

    v31 = v62 - 1;
    if (v21 < *(*v65 + 8 * (v62 - 1)))
    {
LABEL_55:
      v62 = v31;
      goto LABEL_8;
    }

    v9 = vdupq_n_s64(v16);
    v63 = v9;
    v32 = v30 - 2;
    v33 = v61;
    while (1)
    {
      v34 = v13 - v17;
      v35 = (v13 - v17) >> 4;
      if (v35 >= a3)
      {
LABEL_54:
        v61 = v33;
        v31 = v32 + 1;
        goto LABEL_55;
      }

      if (v13 >= v33)
      {
        v36 = v35 + 1;
        if ((v35 + 1) >> 60)
        {
          goto LABEL_105;
        }

        if ((v33 - v17) >> 3 > v36)
        {
          v36 = (v33 - v17) >> 3;
        }

        if (v33 - v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (v37)
        {
          if (!(v37 >> 60))
          {
            operator new();
          }

          goto LABEL_106;
        }

        v33 = 0;
        *(16 * v35) = v63;
        v13 = (16 * v35 + 16);
        memcpy(0, v17, v34);
        v17 = 0;
        if (v32 == -1)
        {
LABEL_57:
          v61 = v33;
          v62 = 0;
LABEL_8:
          v12 = v17;
          v15 = v16;
          v14 = v21;
          if (!v11)
          {
            goto LABEL_61;
          }

          goto LABEL_9;
        }
      }

      else
      {
        *v13 = v16;
        v13[1] = v16;
        v13 += 2;
        if (v32 == -1)
        {
          goto LABEL_57;
        }
      }

      v38 = *(*v65 + 8 * v32--);
      if (v21 < v38)
      {
        goto LABEL_54;
      }
    }
  }

  v16 = v15;
  v17 = v12;
LABEL_61:
  v40 = v13 - v17;
  v39 = (v13 - v17) >> 4;
  if (v39 >= a3)
  {
    v46 = v17;
  }

  else
  {
    v43 = v61;
    v10 = v62;
    v44 = *(*v65 + 8 * v62);
    if (v13 < v61)
    {
      *v13 = 0;
      v13[1] = v16;
      v13 += 2;
      v46 = v17;
      goto LABEL_76;
    }

    v45 = v39 + 1;
    if ((v39 + 1) >> 60)
    {
LABEL_107:
      sub_1794();
    }

    v41 = v17;
LABEL_67:
    v47 = v43 - v41;
    if (v47 >> 3 > v45)
    {
      v45 = v47 >> 3;
    }

    if (v47 >= 0x7FFFFFFFFFFFFFF0)
    {
      v48 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v48 = v45;
    }

    if (v48)
    {
      if (!(v48 >> 60))
      {
        operator new();
      }

LABEL_108:
      sub_1808();
    }

    v46 = 0;
    v49 = (16 * v39);
    v43 = 0;
    *v49 = 0;
    v49[1] = v16;
    v13 = (16 * v39 + 16);
    memcpy(0, v17, v40);
LABEL_76:
    v61 = v43;
    if (v10 && v44 >= *(*v65 + 8 * v10 - 8))
    {
      v50 = v10 - 2;
      while (1)
      {
        v51 = v13 - v46;
        v52 = (v13 - v46) >> 4;
        if (v52 >= a3)
        {
          break;
        }

        if (v13 >= v61)
        {
          v53 = v52 + 1;
          if ((v52 + 1) >> 60)
          {
            goto LABEL_107;
          }

          if ((v61 - v46) >> 3 > v53)
          {
            v53 = (v61 - v46) >> 3;
          }

          if (v61 - v46 >= 0x7FFFFFFFFFFFFFF0)
          {
            v54 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v54 = v53;
          }

          if (v54)
          {
            if (!(v54 >> 60))
            {
              operator new();
            }

            goto LABEL_108;
          }

          v55 = (16 * v52);
          v61 = 0;
          v13 = (16 * v52 + 16);
          *v55 = 0;
          v55[1] = 0;
          memcpy(0, v46, v51);
          v46 = 0;
        }

        else
        {
          *v13 = 0;
          v13[1] = 0;
          v13 += 2;
        }

        if (v50 != -1)
        {
          v56 = *(*v65 + 8 * v50--);
          if (v44 >= v56)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  if (a3 == (v13 - v46) >> 4)
  {
    a4 = v60;
    if (v46 == v13)
    {
      v58 = v61;
    }

    else
    {
      v57 = (v13 - 2);
      v58 = v61;
      if (v13 - 2 > v46)
      {
        v59 = (v46 + 2);
        do
        {
          v67 = *(v59 - 1);
          *(v59 - 1) = *v57;
          *v57 = v67;
          v57 -= 16;
          v25 = v59 >= v57;
          v59 += 16;
        }

        while (!v25);
      }
    }

    goto LABEL_104;
  }

  *v60 = 0;
  v60[1] = 0;
  v60[2] = 0;
}

void sub_606EF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_606F2C@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  if (*result == v2)
  {
    result = 0;
    *a2 = 0;
    a2[2] = 0;
    a2[1] = 0;
    if (a2[1])
    {
      v4 = (a2[1] - 8);
      if (v4)
      {
        v5 = *v4;
        do
        {
          v6 = *--v4;
          v5 += v6;
          *v4 = v5;
        }

        while (v4);
      }
    }
  }

  else
  {
    v3 = *result;
    while (*(v3 + 16) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 += 176;
      if (v3 == v2)
      {
        if (!((0x2E8BA2E8BA2E8BA3 * ((v2 - *result) >> 4)) >> 61))
        {
          operator new();
        }

        sub_1794();
      }
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_607094(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *v2 = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_6070B0(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  if (*a3 == a3[1] || *a2 == a2[1] || !sub_4D389C(a1) || (v12 = sub_3CF22C(a1), *(v12 + 16) == *(v12 + 24)) || (v13 = sub_3CF22C(a1), *(v13 + 24) - *(v13 + 16) != a2[1] - *a2))
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    return;
  }

  v67 = a3;
  sub_606F2C(a3, &v85);
  if (v85 == v86)
  {
    if (a5 == 2)
    {
      v14 = *a3;
      v15 = a3[1];
      if (*a3 == v15)
      {
        v16 = 0;
        v17 = 0;
      }

      else
      {
        v16 = 0x2E8BA2E8BA2E8BA3 * ((v15 - v14) >> 4);
        if (*(v14 + 4))
        {
          v17 = 0;
        }

        else
        {
          --v16;
          v17 = 1;
        }
      }

      sub_6068C8(a1, a4, v16, v78);
      goto LABEL_16;
    }

    sub_606364(a2, a3, v78);
  }

  else
  {
    sub_6068C8(a1, &v85, (v86 - v85) >> 3, v78);
  }

  v17 = 0;
LABEL_16:
  v68 = v17;
  v18 = 0x2E8BA2E8BA2E8BA3 * ((v67[1] - *v67) >> 4) - v17;
  v19 = *v78;
  if (v18 == (*&v78[8] - *v78) >> 4)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    v20 = sub_4D39C4(a1);
    v21 = sub_4D39FC(a1);
    sub_4DABE0(v20, v21, v76);
    v22 = v67[1] - *v67;
    if (v22)
    {
      v23 = 0;
      v66 = 0x2E8BA2E8BA2E8BA3 * (v22 >> 4);
      v65 = v19;
      while (1)
      {
        v24 = (*v67 + 176 * v23);
        if (!v68 || v23)
        {
          break;
        }

        v73.n128_u32[0] = 0;
        v25 = nullsub_1(v76);
        *v78 = 0x7FFFFFFFLL;
        *&v78[16] = 0u;
        v83 = 0;
        *&v78[8] = 0x7FFFFFFF;
        *&v78[12] = 0x7FFFFFFF7FFFFFFFLL;
        v79 = 0x8000000080000000;
        *v80 = 0u;
        v81 = 0u;
        memset(__p_8, 0, sizeof(__p_8));
        *(&__p_8[2] + 4) = 0x8000000080000000;
        HIDWORD(__p_8[3]) = 0x7FFFFFFF;
        v84 = xmmword_2297C00;
        v26 = a6[1];
        if (v26 < a6[2])
        {
          sub_607CB0(a6[1], *v24, v73.n128_i32[0], v25, v78);
LABEL_36:
          v36 = v26 + 2616;
          goto LABEL_38;
        }

        v36 = sub_607B04(a6, v24, &v73, v25, v78);
LABEL_38:
        a6[1] = v36;
        if (*(&v81 + 1))
        {
          __p_8[0] = *(&v81 + 1);
          operator delete(*(&v81 + 1));
        }

        if (v80[0])
        {
          v80[1] = v80[0];
          operator delete(v80[0]);
        }

LABEL_20:
        if (++v23 == v66)
        {
          goto LABEL_79;
        }
      }

      v27 = &v19[16 * (v23 - v68)];
      if (v27[1] > *v27)
      {
        v28 = *(sub_3CF22C(a1) + 16);
        v29 = *v27;
        v30 = sub_3CF22C(a1);
        v31 = (v28 + 4 * v29);
        v32 = v27[1];
        v33 = *(v30 + 16) + 4 * v32;
        if (v31 == v33)
        {
          v34 = 0;
        }

        else
        {
          v37 = v33 - v31 - 4;
          if (v37 >= 0x1C)
          {
            v40 = (v37 >> 2) + 1;
            v38 = &v31->i32[v40 & 0x7FFFFFFFFFFFFFF8];
            v41 = v31 + 1;
            v42 = 0uLL;
            v43 = v40 & 0x7FFFFFFFFFFFFFF8;
            v44 = 0uLL;
            do
            {
              v42 = vaddq_s32(v41[-1], v42);
              v44 = vaddq_s32(*v41, v44);
              v41 += 2;
              v43 -= 8;
            }

            while (v43);
            v34 = vaddvq_s32(vaddq_s32(v44, v42));
            if (v40 == (v40 & 0x7FFFFFFFFFFFFFF8))
            {
              goto LABEL_46;
            }
          }

          else
          {
            v34 = 0;
            v38 = (v28 + 4 * v29);
          }

          do
          {
            v45 = *v38++;
            v34 += v45;
          }

          while (v38 != v33);
        }

LABEL_46:
        v75 = v34;
        sub_4DB030(v76, v32 - *v27, v78);
        *v76 = *v78;
        v77 = *&v78[16];
        v46 = sub_4D39C4(a1);
        v47 = sub_4D39FC(a1);
        sub_4DAC4C(v46, v47, &v73);
        if (sub_4D397C(a1) && sub_4DB0FC(v76, &v73))
        {
          v48 = nullsub_1(v76);
          v49 = *v48;
          v72 = *(v48 + 16);
          v71 = v49;
        }

        else
        {
          HIDWORD(v71) = 0;
          v72 = 0;
          LODWORD(v71) = 0x7FFFFFFF;
          *(&v71 + 4) = 0x7FFFFFFF7FFFFFFFLL;
        }

        *&v78[16] = 0u;
        v83 = 0;
        *v78 = 0x7FFFFFFFLL;
        *&v78[8] = 0x7FFFFFFF;
        *&v78[12] = 0x7FFFFFFF7FFFFFFFLL;
        v79 = 0x8000000080000000;
        *v80 = 0u;
        v81 = 0u;
        memset(__p_8, 0, sizeof(__p_8));
        *(&__p_8[2] + 4) = 0x8000000080000000;
        HIDWORD(__p_8[3]) = 0x7FFFFFFF;
        v84 = xmmword_2297C00;
        v50 = a6[1];
        if (v50 >= a6[2])
        {
          v52 = sub_608F9C(a6, v24, &v75, &v71, v78);
        }

        else
        {
          sub_607CB0(a6[1], *v24, v75, &v71, v78);
          v52 = v50 + 2616;
        }

        a6[1] = v52;
        if (*(&v81 + 1))
        {
          __p_8[0] = *(&v81 + 1);
          operator delete(*(&v81 + 1));
        }

        if (v80[0])
        {
          v80[1] = v80[0];
          operator delete(v80[0]);
        }

        v53 = a6[1];
        memset(v78, 0, 24);
        v55 = *v27;
        v54 = v27[1];
        if (v54 >= *v27)
        {
          v56 = v54 - *v27;
        }

        else
        {
          v56 = 0;
        }

        if (v54 > *v27)
        {
          if (!(v56 >> 60))
          {
            operator new();
          }

          sub_1794();
        }

        if (v55 < v54)
        {
          sub_4D23F8(a1, v55, v51);
          sub_3CF22C(a1);
          operator new();
        }

        sub_87CA10(v78, &v75, &v69);
        v57 = *(v53 - 192);
        if (v57)
        {
          *(v53 - 184) = v57;
          operator delete(v57);
          *(v53 - 192) = 0;
          *(v53 - 184) = 0;
          *(v53 - 176) = 0;
        }

        *(v53 - 192) = v69;
        *(v53 - 176) = v70;
        if (*v78)
        {
          *&v78[8] = *v78;
          operator delete(*v78);
        }

        v19 = v65;
        goto LABEL_20;
      }

      if (v23)
      {
        v35 = *a6 + 2616 * v23 - 408;
      }

      else
      {
        v35 = nullsub_1(v76);
      }

      v39 = *v35;
      v74 = *(v35 + 16);
      v73 = v39;
      LODWORD(v71) = 0;
      *v78 = 0x7FFFFFFFLL;
      *&v78[16] = 0u;
      v83 = 0;
      *&v78[8] = 0x7FFFFFFF;
      *&v78[12] = 0x7FFFFFFF7FFFFFFFLL;
      v79 = 0x8000000080000000;
      *v80 = 0u;
      v81 = 0u;
      memset(__p_8, 0, sizeof(__p_8));
      *(&__p_8[2] + 4) = 0x8000000080000000;
      HIDWORD(__p_8[3]) = 0x7FFFFFFF;
      v84 = xmmword_2297C00;
      v26 = a6[1];
      if (v26 >= a6[2])
      {
        v36 = sub_607B04(a6, v24, &v71, &v73, v78);
        goto LABEL_38;
      }

      sub_607CB0(a6[1], *v24, 0, &v73, v78);
      goto LABEL_36;
    }
  }

  else
  {
    v58 = "session_state";
    if (!a5)
    {
      v58 = "zilch";
    }

    if (v85 == v86)
    {
      v59 = v58;
    }

    else
    {
      v59 = "step_distances";
    }

    if (sub_7E7E4(1u))
    {
      sub_19594F8(v78);
      sub_4A5C(v78, "driving_update_eta_step_builder::build() invalid step_segment_ranges. size=", 75);
      v60 = std::ostream::operator<<();
      sub_4A5C(v60, " expected_size=", 15);
      v61 = std::ostream::operator<<();
      sub_4A5C(v61, ", has_empty_start_step: ", 24);
      v62 = std::ostream::operator<<();
      v63 = sub_4A5C(v62, ", computation_method: ", 22);
      v64 = strlen(v59);
      sub_4A5C(v63, v59, v64);
      sub_66B8(&v78[8], v76);
      sub_7E854(v76, 1u);
      if (SBYTE7(v77) < 0)
      {
        operator delete(v76[0]);
      }

      sub_1959728(v78);
    }

    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
  }

LABEL_79:
  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v19)
  {
    operator delete(v19);
  }
}

void sub_6079B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a40);
  v44 = *(v42 - 136);
  if (v44)
  {
    *(v42 - 128) = v44;
    operator delete(v44);
    if (!v41)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_5;
  }

  operator delete(v41);
  _Unwind_Resume(a1);
}

uint64_t sub_607B04(uint64_t *a1, int *a2, int *a3, __int128 *a4, __int128 *a5)
{
  v5 = 0x3795876FF3795877 * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if ((v5 + 1) > 0x190D4F120190D4)
  {
    sub_1794();
  }

  if (0x6F2B0EDFE6F2B0EELL * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x6F2B0EDFE6F2B0EELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x3795876FF3795877 * ((a1[2] - *a1) >> 3)) >= 0xC86A78900C86ALL)
  {
    v8 = 0x190D4F120190D4;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x190D4F120190D4)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 8 * ((a1[1] - *a1) >> 3);
  sub_607CB0(v18, *a2, *a3, a4, a5);
  v9 = 2616 * v5 + 2616;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a1 - v11;
  v13 = 2616 * v5 + v12;
  if (v11 != *a1)
  {
    v14 = *a1;
    v15 = v18 + v12;
    do
    {
      v16 = sub_6083DC(v15, v14);
      v14 += 2616;
      v15 = v16 + 2616;
    }

    while (v14 != v11);
    do
    {
      sub_5C25A8(v10);
      v10 += 2616;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v13;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_607C9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_608388(va);
  _Unwind_Resume(a1);
}

uint64_t sub_607CB0(uint64_t a1, int a2, int a3, __int128 *a4, __int128 *a5)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *(a1 + 16) = v9;
  *(a1 + 32) = v9;
  *(a1 + 48) = 0;
  *(a1 + 56) = v9;
  *(a1 + 72) = v9;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = -1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = -1;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 256) = -1;
  *(a1 + 224) = v9;
  *(a1 + 240) = v9;
  *(a1 + 208) = v9;
  *(a1 + 264) = 0;
  *(a1 + 272) = -1;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 304) = xmmword_2297C80;
  *(a1 + 320) = 98;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = -1;
  *(a1 + 352) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 374) = 0;
  *(a1 + 384) = 5;
  *(a1 + 386) = 0;
  *(a1 + 456) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  sub_734CE0(a1 + 464);
  *(a1 + 616) = 0;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *(a1 + 624) = v10;
  *(a1 + 640) = v10;
  *(a1 + 656) = v10;
  *(a1 + 672) = -1;
  *(a1 + 680) = 0;
  *(a1 + 688) = -1;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 769) = 0u;
  *(a1 + 824) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 804) = 0;
  *(a1 + 809) = 0;
  *(a1 + 788) = 0u;
  sub_734CE0(a1 + 848);
  *(a1 + 1000) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1008) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 1016) = a3;
  *(a1 + 1020) = 0x7FFFFFFF;
  *(a1 + 1024) = 0x7FFFFFFFLL;
  sub_608080(a1 + 1032);
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1984) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 1936) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 2041) = 0u;
  *(a1 + 2057) = 3;
  *(a1 + 2064) = 0;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 1;
  *(a1 + 2092) = 0;
  *(a1 + 2104) = -1;
  *(a1 + 2096) = -1;
  *(a1 + 2112) = -1;
  *(a1 + 2116) = 0x7FFFFFFF;
  *(a1 + 2120) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0;
  *(a1 + 2176) = 0xBFF0000000000000;
  *(a1 + 2184) = 0;
  *(a1 + 2192) = 0u;
  v11 = *a4;
  *(a1 + 2224) = *(a4 + 2);
  *(a1 + 2208) = v11;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2232) = off_266BB28;
  *(a1 + 2272) = 0;
  *(a1 + 2276) = 1;
  *(a1 + 2288) = 0;
  *(a1 + 2296) = 0u;
  *(a1 + 2280) = off_266BB60;
  *(a1 + 2312) = 0;
  *(a1 + 2314) = 0;
  *(a1 + 2328) = 0u;
  *(a1 + 2344) = 0;
  *(a1 + 2320) = off_266B8A8;
  *(a1 + 2352) = 0;
  *(a1 + 2408) = 0;
  *(a1 + 2392) = 0u;
  *(a1 + 2384) = 0;
  *(a1 + 2376) = 0;
  *(a1 + 2360) = 0u;
  *(a1 + 2416) = 1;
  *(a1 + 2433) = 0;
  *(a1 + 2440) = 0;
  *(a1 + 2417) = 0u;
  sub_3EDBB0(a1 + 2448, a5);
  *(a1 + 2592) = -1;
  *(a1 + 2584) = -1;
  *(a1 + 2600) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 2608) = 0;
  return a1;
}

void sub_607FB4(_Unwind_Exception *a1)
{
  v7 = *(v1 + 2424);
  if (v7)
  {
    *(v1 + 2432) = v7;
    operator delete(v7);
  }

  sub_5ED3D8(v3);
  sub_5940E0(v5);
  sub_50E554((v1 + 2032));
  sub_5ED5A8((v1 + 2008));
  sub_5ED73C((v1 + 1984));
  sub_5ECEBC((v1 + 1960));
  sub_5ED7B0((v1 + 1936));
  sub_5EC5AC((v1 + 1912));
  sub_5EC628(v4);
  sub_5936E4((v1 + 1032));
  sub_3E5388(v1 + 848);
  sub_5ED22C((v1 + 824));
  sub_528FAC((v1 + 792));
  sub_5ED8EC((v1 + 704));
  sub_3E5388(v1 + 464);
  sub_593FC8((v1 + 440));
  sub_593FC8((v1 + 416));
  sub_593FC8(v2);
  sub_5ECFBC(v1 + 136);
  _Unwind_Resume(a1);
}

uint64_t sub_608080(uint64_t a1)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  v3 = vnegq_f64(v2);
  *(a1 + 40) = v3;
  *(a1 + 56) = v3;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x7FFFFFFF;
  *(a1 + 104) = v3;
  *(a1 + 120) = 0x7FFFFFFF;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0x7FFFFFFF;
  *(a1 + 132) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 152) = 0x8000000080000000;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 212) = 0x8000000080000000;
  *(a1 + 220) = 0x7FFFFFFF;
  *(a1 + 232) = 0;
  *(a1 + 240) = xmmword_2297C00;
  *(a1 + 256) = 0x7FFFFFFF;
  *(a1 + 260) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xBFF0000000000000;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 356) = -1;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 376) = 0;
  *(a1 + 432) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 440) = 1065353216;
  *(a1 + 448) = 1;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = 1065353216;
  *(a1 + 520) = 1;
  sub_64B998(a1 + 528);
  sub_64B998(a1 + 688);
  *(a1 + 848) = 0;
  return a1;
}

void sub_6081BC(_Unwind_Exception *a1)
{
  sub_6081F0(v1 + 528);
  sub_53A58C(v2);
  sub_53A58C((v1 + 384));
  sub_55D550(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_6081F0(uint64_t a1)
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
  v19 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v19)
  {
LABEL_4:
    sub_6081F0();
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
    if (v15 != v14)
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
    }

    *(a1 + 8) = v14;
    operator delete(v16);
  }

  return a1;
}

uint64_t sub_608388(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 2616;
    sub_5C25A8(i - 2616);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_6083DC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 80) = v7;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 152) = 0;
  *(a2 + 136) = 0u;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 184) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a2 + 176) = 0u;
  *(a1 + 200) = *(a2 + 200);
  v10 = *(a2 + 208);
  v11 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v11;
  *(a1 + 208) = v10;
  v12 = *(a2 + 256);
  v13 = *(a2 + 272);
  v14 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v14;
  *(a1 + 256) = v12;
  *(a1 + 272) = v13;
  v15 = *(a2 + 320);
  v16 = *(a2 + 336);
  v17 = *(a2 + 352);
  *(a1 + 366) = *(a2 + 366);
  *(a1 + 336) = v16;
  *(a1 + 352) = v17;
  *(a1 + 320) = v15;
  v18 = *(a2 + 384);
  *(a1 + 386) = *(a2 + 386);
  *(a1 + 384) = v18;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 408) = 0;
  *(a2 + 392) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = *(a2 + 432);
  *(a2 + 432) = 0;
  *(a2 + 416) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a2 + 456) = 0;
  *(a2 + 440) = 0u;
  v19 = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 464) = v19;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0u;
  *(a1 + 488) = *(a2 + 488);
  v20 = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 496) = v20;
  *(a2 + 504) = 0u;
  *(a2 + 496) = 0;
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  v21 = *(a2 + 536);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 536) = v21;
  *(a2 + 544) = 0u;
  *(a2 + 536) = 0;
  v22 = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 560) = v22;
  *(a2 + 568) = 0u;
  *(a2 + 560) = 0;
  *(a1 + 584) = *(a2 + 584);
  v23 = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 592) = v23;
  *(a2 + 600) = 0u;
  *(a2 + 592) = 0;
  v25 = *(a2 + 664);
  v24 = *(a2 + 680);
  v26 = *(a2 + 648);
  *(a1 + 696) = *(a2 + 696);
  v27 = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = v27;
  *(a1 + 664) = v25;
  *(a1 + 680) = v24;
  *(a1 + 648) = v26;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = 0u;
  *(a1 + 712) = 0;
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 728) = 0;
  *(a2 + 712) = 0u;
  *(a1 + 752) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 752) = *(a2 + 752);
  *(a2 + 752) = 0;
  *(a2 + 736) = 0u;
  *(a1 + 776) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 768) = *(a2 + 768);
  *(a2 + 776) = 0;
  *(a2 + 760) = 0u;
  *(a1 + 784) = *(a2 + 784);
  *(a1 + 800) = 0u;
  *(a1 + 792) = 0;
  *(a1 + 792) = *(a2 + 792);
  *(a1 + 800) = *(a2 + 800);
  *(a2 + 808) = 0;
  *(a2 + 792) = 0u;
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 832) = 0u;
  *(a1 + 824) = 0;
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);
  *(a2 + 840) = 0;
  *(a2 + 824) = 0u;
  v28 = *(a2 + 848);
  *(a1 + 864) = *(a2 + 864);
  *(a1 + 848) = v28;
  *(a2 + 848) = 0;
  *(a2 + 856) = 0u;
  *(a1 + 872) = *(a2 + 872);
  v29 = *(a2 + 880);
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 880) = v29;
  *(a2 + 888) = 0u;
  *(a2 + 880) = 0;
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  v30 = *(a2 + 920);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 920) = v30;
  *(a2 + 928) = 0u;
  *(a2 + 920) = 0;
  v31 = *(a2 + 944);
  *(a1 + 960) = *(a2 + 960);
  *(a1 + 944) = v31;
  *(a2 + 952) = 0u;
  *(a2 + 944) = 0;
  *(a1 + 968) = *(a2 + 968);
  v32 = *(a2 + 976);
  *(a1 + 992) = *(a2 + 992);
  *(a1 + 976) = v32;
  *(a2 + 984) = 0u;
  *(a2 + 976) = 0;
  *(a1 + 1000) = *(a2 + 1000);
  v33 = *(a2 + 1008);
  *(a1 + 1024) = *(a2 + 1024);
  *(a1 + 1008) = v33;
  sub_608B98(a1 + 1032, a2 + 1032);
  *(a1 + 1904) = 0;
  *(a1 + 1888) = 0u;
  *(a1 + 1888) = *(a2 + 1888);
  *(a1 + 1904) = *(a2 + 1904);
  *(a2 + 1904) = 0;
  *(a2 + 1888) = 0u;
  *(a1 + 1928) = 0;
  *(a1 + 1912) = 0u;
  *(a1 + 1912) = *(a2 + 1912);
  *(a1 + 1920) = *(a2 + 1920);
  *(a2 + 1928) = 0;
  *(a2 + 1912) = 0u;
  *(a1 + 1952) = 0;
  *(a1 + 1936) = 0u;
  *(a1 + 1936) = *(a2 + 1936);
  *(a1 + 1952) = *(a2 + 1952);
  *(a2 + 1952) = 0;
  *(a2 + 1936) = 0u;
  *(a1 + 1976) = 0;
  *(a1 + 1960) = 0u;
  *(a1 + 1960) = *(a2 + 1960);
  *(a1 + 1968) = *(a2 + 1968);
  *(a2 + 1976) = 0;
  *(a2 + 1960) = 0u;
  *(a1 + 2000) = 0;
  *(a1 + 1984) = 0u;
  *(a1 + 1984) = *(a2 + 1984);
  *(a1 + 2000) = *(a2 + 2000);
  *(a2 + 2000) = 0;
  *(a2 + 1984) = 0u;
  *(a1 + 2024) = 0;
  *(a1 + 2008) = 0u;
  *(a1 + 2008) = *(a2 + 2008);
  *(a1 + 2016) = *(a2 + 2016);
  *(a2 + 2024) = 0;
  *(a2 + 2008) = 0u;
  *(a1 + 2048) = 0;
  *(a1 + 2032) = 0u;
  *(a1 + 2032) = *(a2 + 2032);
  *(a1 + 2048) = *(a2 + 2048);
  *(a2 + 2048) = 0;
  *(a2 + 2032) = 0u;
  v34 = *(a2 + 2056);
  *(a1 + 2058) = *(a2 + 2058);
  *(a1 + 2056) = v34;
  *(a1 + 2064) = 0;
  *(a1 + 2072) = 0u;
  *(a1 + 2064) = *(a2 + 2064);
  *(a1 + 2080) = *(a2 + 2080);
  *(a2 + 2080) = 0;
  *(a2 + 2064) = 0u;
  v35 = *(a2 + 2104);
  *(a1 + 2088) = *(a2 + 2088);
  *(a1 + 2104) = v35;
  *(a1 + 2120) = 0;
  *(a1 + 2128) = 0u;
  *(a1 + 2120) = *(a2 + 2120);
  *(a1 + 2128) = *(a2 + 2128);
  *(a2 + 2136) = 0;
  *(a2 + 2120) = 0u;
  v36 = *(a2 + 2144);
  v37 = *(a2 + 2160);
  *(a1 + 2169) = *(a2 + 2169);
  *(a1 + 2160) = v37;
  *(a1 + 2144) = v36;
  *(a1 + 2192) = *(a2 + 2192);
  v38 = *(a2 + 2208);
  *(a1 + 2224) = *(a2 + 2224);
  *(a1 + 2208) = v38;
  *(a1 + 2232) = off_26696C8;
  v39 = *(a2 + 2240);
  *(a1 + 2256) = *(a2 + 2256);
  *(a1 + 2240) = v39;
  *(a2 + 2248) = 0u;
  *(a2 + 2240) = 0;
  *(a1 + 2232) = off_266BB28;
  v40 = *(a2 + 2264);
  *(a1 + 2269) = *(a2 + 2269);
  *(a1 + 2264) = v40;
  *(a1 + 2280) = off_26696C8;
  v41 = *(a2 + 2288);
  *(a1 + 2304) = *(a2 + 2304);
  *(a1 + 2288) = v41;
  *(a2 + 2296) = 0u;
  *(a2 + 2288) = 0;
  *(a1 + 2280) = off_266BB60;
  v42 = *(a2 + 2312);
  *(a1 + 2314) = *(a2 + 2314);
  *(a1 + 2312) = v42;
  *(a1 + 2320) = off_26696C8;
  v43 = *(a2 + 2328);
  *(a1 + 2344) = *(a2 + 2344);
  *(a1 + 2328) = v43;
  *(a2 + 2336) = 0u;
  *(a2 + 2328) = 0;
  *(a1 + 2320) = off_266B8A8;
  *(a1 + 2352) = *(a2 + 2352);
  v44 = *(a2 + 2360);
  *(a1 + 2376) = *(a2 + 2376);
  *(a1 + 2360) = v44;
  *(a2 + 2368) = 0u;
  *(a2 + 2360) = 0;
  *(a1 + 2384) = *(a2 + 2384);
  v45 = *(a2 + 2392);
  *(a1 + 2408) = *(a2 + 2408);
  *(a1 + 2392) = v45;
  *(a2 + 2400) = 0u;
  *(a2 + 2392) = 0;
  *(a1 + 2416) = *(a2 + 2416);
  *(a1 + 2432) = 0u;
  *(a1 + 2424) = 0;
  *(a1 + 2424) = *(a2 + 2424);
  *(a1 + 2432) = *(a2 + 2432);
  *(a2 + 2440) = 0;
  *(a2 + 2424) = 0u;
  v46 = *(a2 + 2448);
  v47 = *(a2 + 2464);
  *(a1 + 2480) = *(a2 + 2480);
  *(a1 + 2464) = v47;
  *(a1 + 2448) = v46;
  *(a1 + 2488) = 0;
  *(a1 + 2496) = 0u;
  *(a1 + 2488) = *(a2 + 2488);
  *(a1 + 2496) = *(a2 + 2496);
  *(a2 + 2504) = 0;
  *(a2 + 2488) = 0u;
  *(a1 + 2528) = 0;
  *(a1 + 2512) = 0u;
  *(a1 + 2512) = *(a2 + 2512);
  *(a1 + 2528) = *(a2 + 2528);
  *(a2 + 2528) = 0;
  *(a2 + 2512) = 0u;
  v48 = *(a2 + 2536);
  v49 = *(a2 + 2568);
  *(a1 + 2552) = *(a2 + 2552);
  *(a1 + 2568) = v49;
  *(a1 + 2536) = v48;
  v50 = *(a2 + 2584);
  *(a1 + 2593) = *(a2 + 2593);
  *(a1 + 2584) = v50;
  return a1;
}

__n128 sub_608B98(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v3 = *(a2 + 80);
  v2 = *(a2 + 96);
  v4 = *(a2 + 64);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v3;
  *(a1 + 96) = v2;
  *(a1 + 64) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 120);
  v7 = *(a2 + 152);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v6;
  *(a1 + 152) = v7;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  v8 = *(a2 + 208);
  v9 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v9;
  *(a1 + 208) = v8;
  v10 = *(a2 + 272);
  v11 = *(a2 + 288);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v10;
  *(a1 + 288) = v11;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 296) = 0;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  v12 = *(a2 + 352);
  *(a1 + 361) = *(a2 + 361);
  *(a1 + 352) = v12;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0;
  *(a1 + 384) = *(a2 + 384);
  v13 = *(a2 + 408);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 408) = 0;
  v14 = *(a2 + 416);
  v15 = *(a2 + 424);
  *(a1 + 408) = v13;
  *(a1 + 416) = v14;
  *(a2 + 416) = 0;
  v16 = *(a2 + 432);
  *(a1 + 424) = v15;
  *(a1 + 432) = v16;
  *(a1 + 440) = *(a2 + 440);
  if (v16)
  {
    v17 = *(v15 + 8);
    v18 = *(a1 + 416);
    if ((v18 & (v18 - 1)) != 0)
    {
      if (v17 >= v18)
      {
        v17 %= v18;
      }
    }

    else
    {
      v17 &= v18 - 1;
    }

    *(v13 + 8 * v17) = a1 + 424;
    *(a2 + 424) = 0;
    *(a2 + 432) = 0;
  }

  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0;
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  *(a2 + 456) = 0;
  *(a2 + 464) = 0;
  v19 = *(a2 + 480);
  v20 = *(a2 + 488);
  *(a2 + 472) = 0;
  *(a2 + 480) = 0;
  *(a1 + 480) = v19;
  *(a1 + 488) = v20;
  *(a2 + 488) = 0;
  v22 = *(a2 + 496);
  v21 = *(a2 + 504);
  *(a1 + 496) = v22;
  *(a1 + 504) = v21;
  *(a1 + 512) = *(a2 + 512);
  if (v21)
  {
    v23 = *(v22 + 8);
    v24 = *(a1 + 488);
    if ((v24 & (v24 - 1)) != 0)
    {
      if (v23 >= v24)
      {
        v23 %= v24;
      }
    }

    else
    {
      v23 &= v24 - 1;
    }

    *(v19 + 8 * v23) = a1 + 496;
    *(a2 + 496) = 0;
    *(a2 + 504) = 0;
  }

  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a2 + 544) = 0;
  *(a2 + 528) = 0u;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 568) = 0;
  *(a2 + 552) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a2 + 576) = 0u;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 616) = 0;
  *(a2 + 600) = 0u;
  v25 = *(a2 + 624);
  *(a2 + 624) = 0;
  *(a1 + 624) = v25;
  LODWORD(v25) = *(a2 + 632);
  *(a1 + 636) = *(a2 + 636);
  *(a1 + 632) = v25;
  v26 = *(a2 + 640);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 640) = v26;
  *(a2 + 640) = 0;
  *(a2 + 648) = 0u;
  v27 = *(a2 + 664);
  *(a1 + 680) = *(a2 + 680);
  *(a1 + 664) = v27;
  *(a2 + 672) = 0u;
  *(a2 + 664) = 0;
  *(a1 + 704) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 704) = *(a2 + 704);
  *(a2 + 704) = 0;
  *(a2 + 688) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 728) = 0;
  *(a2 + 712) = 0u;
  *(a1 + 752) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 752) = *(a2 + 752);
  *(a2 + 752) = 0;
  *(a2 + 736) = 0u;
  *(a1 + 776) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 768) = *(a2 + 768);
  *(a2 + 776) = 0;
  *(a2 + 760) = 0u;
  v28 = *(a2 + 784);
  *(a2 + 784) = 0;
  *(a1 + 784) = v28;
  LODWORD(v28) = *(a2 + 792);
  *(a1 + 796) = *(a2 + 796);
  *(a1 + 792) = v28;
  v29 = *(a2 + 800);
  *(a1 + 816) = *(a2 + 816);
  *(a1 + 800) = v29;
  *(a2 + 800) = 0;
  *(a2 + 816) = 0;
  *(a2 + 808) = 0;
  result = *(a2 + 824);
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 824) = result;
  *(a2 + 840) = 0;
  *(a2 + 832) = 0;
  *(a2 + 824) = 0;
  v31 = *(a2 + 848);
  *(a2 + 848) = 0;
  *(a1 + 848) = v31;
  return result;
}

uint64_t sub_608F9C(uint64_t *a1, int *a2, int *a3, __int128 *a4, __int128 *a5)
{
  v5 = 0x3795876FF3795877 * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if ((v5 + 1) > 0x190D4F120190D4)
  {
    sub_1794();
  }

  if (0x6F2B0EDFE6F2B0EELL * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0x6F2B0EDFE6F2B0EELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x3795876FF3795877 * ((a1[2] - *a1) >> 3)) >= 0xC86A78900C86ALL)
  {
    v8 = 0x190D4F120190D4;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x190D4F120190D4)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 8 * ((a1[1] - *a1) >> 3);
  sub_607CB0(v18, *a2, *a3, a4, a5);
  v9 = 2616 * v5 + 2616;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a1 - v11;
  v13 = 2616 * v5 + v12;
  if (v11 != *a1)
  {
    v14 = *a1;
    v15 = v18 + v12;
    do
    {
      v16 = sub_6083DC(v15, v14);
      v14 += 2616;
      v15 = v16 + 2616;
    }

    while (v14 != v11);
    do
    {
      sub_5C25A8(v10);
      v10 += 2616;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v13;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_609134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_608388(va);
  _Unwind_Resume(a1);
}

void sub_609148()
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
  xmmword_27991C8 = 0u;
  unk_27991D8 = 0u;
  dword_27991E8 = 1065353216;
  sub_3A9A34(&xmmword_27991C8, v0);
  sub_3A9A34(&xmmword_27991C8, v3);
  sub_3A9A34(&xmmword_27991C8, __p);
  sub_3A9A34(&xmmword_27991C8, v9);
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
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27991A0 = 0;
    qword_27991A8 = 0;
    qword_2799198 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_609390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27991B0)
  {
    qword_27991B8 = qword_27991B0;
    operator delete(qword_27991B0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_60943C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  sub_7E9A4(a1 + 16);
  bzero((a1 + 40), 0x240uLL);
  *(a1 + 616) = 0x8000000080000000;
  *(a1 + 624) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 632) = 0;
  return a1;
}

uint64_t sub_609488@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != *(a3 + 8))
  {
    v7 = *(*(a1 + 8) + 1524);
    result = sub_5CB398(*a3);
    if (!v7)
    {
      goto LABEL_8;
    }

    v10 = *a3;
    v9 = *(a3 + 8);
    if (v10 != v9)
    {
      do
      {
        result = sub_5CB398(v10);
        v10 += 524;
        if (v10 == v9)
        {
          v11 = 1;
        }

        else
        {
          v11 = result;
        }
      }

      while ((v11 & 1) == 0);
LABEL_8:
      v12 = *a2;
      v13 = a2[1];
      if (*a2 == v13)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  result = 0;
  v12 = *a2;
  v13 = a2[1];
  if (*a2 == v13)
  {
    return result;
  }

LABEL_11:
  if (result)
  {
    do
    {
      result = sub_4C4AC8(v12);
      if (result != 4)
      {
        if (!sub_4C4AC8(v12) || (result = sub_4C4AC8(v12), result == 2))
        {
          v14 = a4[1];
          if (v14 >= a4[2])
          {
            result = sub_60B450(a4, v12);
          }

          else
          {
            sub_60B5B0(a4, a4[1], v12);
            result = v14 + 152;
          }

          a4[1] = result;
        }
      }

      v12 += 152;
    }

    while (v12 != v13);
  }

  else
  {
    do
    {
      result = sub_4C4AC8(v12);
      if (result != 4)
      {
        result = sub_4C4AC8(v12);
        if (result == 2)
        {
          v15 = a4[1];
          if (v15 >= a4[2])
          {
            result = sub_60B450(a4, v12);
          }

          else
          {
            sub_60B5B0(a4, a4[1], v12);
            result = v15 + 152;
          }

          a4[1] = result;
        }
      }

      v12 += 152;
    }

    while (v12 != v13);
  }

  return result;
}

void sub_60960C(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_609664(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_609664(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_60A974(a1, i))
    {
      i -= 152;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_6096C8()
{
  v0 = __chkstk_darwin();
  v35 = v1;
  v3 = v2;
  v4 = v0;
  v5 = sub_7E9A4(v56);
  sub_7E974(v5);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  sub_60BAC4(&v53, 0x86BCA1AF286BCA1BLL * ((v3[1] - *v3) >> 3));
  v6 = *v3;
  v36 = v3[1];
  v37 = v4;
  if (*v3 == v36)
  {
LABEL_42:
    *v35 = 0;
    *(v35 + 23) = 0;
    *(v35 + 39) = 0;
    *(v35 + 31) = 0;
    *(v35 + 47) = 0;
    sub_60AB38(v35 + 48);
    *(v35 + 7888) = 0u;
    *(v35 + 7872) = 0u;
    *(v35 + 7856) = 0u;
    v34 = sub_3AF6B4(*v4);
    sub_4E5784(&v53, v34, v52);
    sub_67A1F8(&v50, *v4, 0, 0, v52);
  }

  while (1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v40 = 0;
    v10 = *v6;
    v9 = v6[1];
    v50 = __p;
    v51 = 0;
    v38 = v6;
    if (v9 != v10)
    {
      if (0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 4) < 0x333333333333334)
      {
        operator new();
      }

      sub_1794();
    }

    v4 = v37;
    v41 = 0uLL;
    v42 = 0;
    v11 = v6[3];
    v12 = v6[4];
    v48 = &v41;
    LOBYTE(v49) = 0;
    if (v12 != v11)
    {
      if (0xE21A291C077975B9 * ((v12 - v11) >> 3) < 0x3BCBADC7F10D15)
      {
        operator new();
      }

      sub_1794();
    }

    v8 = v38;
    v13 = *(v38 + 3);
    v14 = *(v38 + 4);
    v15 = *(v38 + 5);
    *&v45[14] = *(v38 + 94);
    v44 = v14;
    *v45 = v15;
    v43 = v13;
    if (*(v38 + 127) < 0)
    {
      sub_325C(&v46, v38[13], v38[14]);
    }

    else
    {
      v16 = *(v38 + 13);
      v47 = v38[15];
      v46 = v16;
    }

    v17 = v54;
    if (v54 >= v55)
    {
      v54 = sub_60BC14(&v53, __p);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(v46);
        v22 = v41;
        if (v41)
        {
LABEL_20:
          v23 = *(&v41 + 1);
          v24 = v22;
          if (*(&v41 + 1) != v22)
          {
            do
            {
              v23 = sub_3EEA68(v23 - 1096);
            }

            while (v23 != v22);
            v24 = v41;
          }

          *(&v41 + 1) = v22;
          operator delete(v24);
        }
      }

      else
      {
        v22 = v41;
        if (v41)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      *(v54 + 16) = 0;
      *(v17 + 24) = 0;
      *v17 = 0;
      *(v17 + 8) = 0;
      *v17 = *__p;
      *(v17 + 16) = v40;
      __p[0] = 0;
      __p[1] = 0;
      v40 = 0;
      *(v17 + 32) = 0;
      *(v17 + 40) = 0;
      *(v17 + 24) = v41;
      *(v17 + 40) = v42;
      v41 = 0uLL;
      v42 = 0;
      v18 = v43;
      v19 = v44;
      v20 = *v45;
      *(v17 + 94) = *&v45[14];
      *(v17 + 64) = v19;
      *(v17 + 80) = v20;
      *(v17 + 48) = v18;
      v21 = v46;
      *(v17 + 120) = v47;
      *(v17 + 104) = v21;
      v47 = 0;
      v46 = 0uLL;
      v54 = v17 + 128;
      v22 = v41;
      if (v41)
      {
        goto LABEL_20;
      }
    }

    v25 = __p[0];
    if (__p[0])
    {
      v26 = __p[1];
      v7 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v27 = *(v26 - 3);
          if (v27)
          {
            v28 = *(v26 - 2);
            v29 = *(v26 - 3);
            if (v28 != v27)
            {
              do
              {
                v30 = v28 - 32;
                v31 = *(v28 - 8);
                if (v31 != -1)
                {
                  (off_266BC58[v31])(&v48, v28 - 32);
                }

                *(v28 - 8) = -1;
                v28 -= 32;
              }

              while (v30 != v27);
              v29 = *(v26 - 3);
            }

            *(v26 - 2) = v27;
            operator delete(v29);
          }

          v32 = *(v26 - 8);
          if (v32 != -1)
          {
            (off_266BC58[v32])(&v48, v26 - 7);
          }

          v33 = (v26 - 10);
          *(v26 - 8) = -1;
          if (*(v26 - 57) < 0)
          {
            operator delete(*v33);
          }

          v26 -= 10;
        }

        while (v33 != v25);
        v7 = __p[0];
      }

      __p[1] = v25;
      operator delete(v7);
      v8 = v38;
    }

    v6 = v8 + 19;
    if (v6 == v36)
    {
      goto LABEL_42;
    }
  }
}

void sub_60A508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_4EC948(&a29);
  sub_60B0D4(&a46);
  sub_60B118(&a59);
  sub_5DAA94(&STACK[0x21A0]);
  sub_609664(&STACK[0x21B8]);
  sub_60B1B8(&STACK[0x21D0]);
  v61 = STACK[0x24B0];
  if (STACK[0x24B0])
  {
    STACK[0x24B8] = v61;
    operator delete(v61);
  }

  sub_5C1158(&STACK[0x24C8]);
  sub_615AA0(&STACK[0x4348]);
  if (SLOBYTE(STACK[0x5FE7]) < 0)
  {
    operator delete(STACK[0x5FD0]);
  }

  if (SLOBYTE(STACK[0x60BF]) < 0)
  {
    operator delete(*(v59 - 168));
  }

  sub_60B2B4(a15);
  sub_60A84C((v59 - 144));
  _Unwind_Resume(a1);
}

void sub_60A754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v17 != a16)
  {
    do
    {
      sub_3ED230(v18);
      v18 -= 80;
      v16 += 80;
    }

    while (v16);
  }

  JUMPOUT(0x60A830);
}

void sub_60A760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_84350(&STACK[0x4348]);
  sub_3ED1D4(a21);
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  if (v22 != a16)
  {
    do
    {
      sub_3ED230(v23);
      v23 -= 80;
      v21 += 80;
    }

    while (v21);
  }

  JUMPOUT(0x60A830);
}

void sub_60A780()
{
  if (v1)
  {
    v2 = v0 - 1096;
    v3 = -v1;
    do
    {
      v2 = sub_3EEA68(v2) - 1096;
      v3 += 1096;
    }

    while (v3);
  }

  JUMPOUT(0x60A7A4);
}

void sub_60A7CC()
{
  sub_840B0(v2);
  sub_84254(&STACK[0x24C8]);
  *(v1 + 64) = v0;
  JUMPOUT(0x60A7E8);
}

void **sub_60A84C(void **a1)
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
        v3 -= 128;
        sub_60B38C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

__n128 sub_60A8B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  *a2 = *(a1 + 40);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 72);
  memcpy((a2 + 48), (a1 + 88), 0x1F8uLL);
  *(a2 + 552) = 0;
  *(a2 + 568) = 0;
  *(a2 + 560) = 0;
  v5 = *(a1 + 592);
  v6 = *(a1 + 600);
  if (v6 != v5)
  {
    if (((v6 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a2 + 592) = *(a1 + 632);
  result = *(a1 + 616);
  *(a2 + 576) = result;
  return result;
}

void sub_60A974(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  if (v3)
  {
    v4 = *(a2 + 136);
    v5 = *(a2 + 128);
    if (v4 != v3)
    {
      do
      {
        v4 = sub_60AA70(v4 - 14);
      }

      while (v4 != v3);
      v5 = *(a2 + 128);
    }

    *(a2 + 136) = v3;
    operator delete(v5);
  }

  if (*(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    v8 = *(a2 + 24);
    if (v7 != v6)
    {
      do
      {
        v7 = sub_3EEA68(v7 - 1096);
      }

      while (v7 != v6);
      v8 = *(a2 + 24);
    }

    *(a2 + 32) = v6;
    operator delete(v8);
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = *(a2 + 8);
    v11 = *a2;
    if (v10 != v9)
    {
      do
      {
        v10 -= 80;
        sub_3ED230(v10);
      }

      while (v10 != v9);
      v11 = *a2;
    }

    *(a2 + 8) = v9;

    operator delete(v11);
  }
}

void **sub_60AA70(void **a1)
{
  v2 = a1[10];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[8];
  a1[8] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = a1[3];
  a1[3] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = a1[1];
    v10 = *a1;
    if (v9 != v8)
    {
      v11 = a1[1];
      do
      {
        v13 = *(v11 - 5);
        v11 -= 40;
        v12 = v13;
        if (v13)
        {
          *(v9 - 4) = v12;
          operator delete(v12);
        }

        v9 = v11;
      }

      while (v11 != v8);
      v10 = *a1;
    }

    a1[1] = v8;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_60AB38(uint64_t a1)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v2 = sub_394BD0();
  *(a1 + 136) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 0x8000000080000000;
  *(a1 + 64) = 0x7FFFFFFF;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0x7FFFFFFF;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = -1;
  *(a1 + 168) = 0;
  sub_64B998(a1 + 176);
  sub_64B998(a1 + 336);
  sub_64B998(a1 + 496);
  sub_64B998(a1 + 656);
  sub_64B998(a1 + 816);
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  sub_64B998(a1 + 1000);
  *(a1 + 1160) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = -1;
  *(a1 + 1211) = -1;
  *(a1 + 1223) = 0;
  *(a1 + 1231) = 0;
  *(a1 + 1215) = 0;
  *(a1 + 1239) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = 0;
  sub_559C9C(a1 + 1288);
  sub_60AEEC(a1 + 2376);
  *(a1 + 7296) = 0;
  *(a1 + 7208) = 0;
  *(a1 + 7176) = 0u;
  *(a1 + 7192) = 0u;
  *(a1 + 7216) = 0u;
  *(a1 + 7232) = 0u;
  *(a1 + 7248) = 0u;
  *(a1 + 7304) = -1;
  *(a1 + 7307) = -1;
  *(a1 + 7319) = 0;
  *(a1 + 7327) = 0;
  *(a1 + 7311) = 0;
  *(a1 + 7335) = 0;
  *(a1 + 7344) = 0;
  *(a1 + 7360) = 0;
  *(a1 + 7352) = 0;
  *(a1 + 7368) = 0;
  *(a1 + 7376) = 0u;
  *(a1 + 7392) = 0u;
  *(a1 + 7408) = 0u;
  *(a1 + 7424) = 0u;
  *(a1 + 7440) = 0u;
  *(a1 + 7456) = 0u;
  *(a1 + 7472) = 0u;
  *(a1 + 7488) = 0u;
  *(a1 + 7504) = 0u;
  *(a1 + 7520) = 0u;
  *(a1 + 7536) = 0u;
  *(a1 + 7552) = 0u;
  *(a1 + 7568) = 0u;
  *(a1 + 7584) = 0u;
  *(a1 + 7600) = 0u;
  *(a1 + 7616) = 0;
  sub_64B998(a1 + 7624);
  *(a1 + 7784) = 0u;
  *(a1 + 7800) = 0;
  return a1;
}

void sub_60AD34(_Unwind_Exception *a1)
{
  sub_5EBE9C((v1 + 7592));
  sub_5EBE9C((v1 + 7568));
  sub_5706DC((v1 + 7544));
  sub_5706DC((v1 + 7520));
  v10 = *(v1 + 7496);
  if (v10)
  {
    *(v1 + 7504) = v10;
    operator delete(v10);
    if ((v4[3399] & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4[3375] & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4[3399] & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 7472));
  if ((v4[3375] & 0x80000000) == 0)
  {
LABEL_4:
    if ((v4[3351] & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  operator delete(*(v1 + 7448));
  if ((v4[3351] & 0x80000000) == 0)
  {
LABEL_6:
    sub_528FAC((v1 + v8));
    sub_5D9FE8(v3);
    sub_53E440(v1 + v7);
    if (v4[3167] < 0)
    {
      operator delete(*(v1 + 7240));
      if ((v4[3143] & 0x80000000) == 0)
      {
LABEL_8:
        v11 = *v5;
        if (!*v5)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((v4[3143] & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(*(v1 + v6));
    v11 = *v5;
    if (!*v5)
    {
LABEL_10:
      sub_5C1688(v1 + 2376);
      sub_559E70((v1 + 1288));
      sub_53E440(v1 + 1168);
      sub_53A868(v1 + 1000);
      sub_1A104((v1 + 976));
      sub_53A868(v1 + 816);
      sub_53A868(v1 + 656);
      sub_53A868(v1 + 496);
      sub_53A868(v1 + 336);
      sub_53A868(v2 + 40);
      sub_5EC204(v2);
      sub_5EBF44((v1 + 24));
      sub_5EC430(v1);
      _Unwind_Resume(a1);
    }

LABEL_9:
    *(v1 + 7184) = v11;
    operator delete(v11);
    goto LABEL_10;
  }

LABEL_5:
  operator delete(*(v1 + 7424));
  goto LABEL_6;
}

void sub_60AED0(_Unwind_Exception *a1)
{
  sub_5EBF44(v1 + 3);
  sub_5EC430(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_60AEEC(uint64_t a1)
{
  sub_64B998(a1);
  sub_64B998(v2 + 160);
  sub_64B998(a1 + 320);
  sub_5E5940(a1 + 480);
  sub_5E5940(a1 + 1920);
  sub_5E5940(a1 + 3360);
  return a1;
}

void sub_60AF3C(_Unwind_Exception *a1)
{
  sub_5E58CC(v1 + 1920);
  sub_5E58CC(v1 + 480);
  sub_53A868(v1 + 320);
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_60AF9C(uint64_t a1)
{
  if (*(a1 + 1120) == 1)
  {
    if (*(a1 + 1104) == 1)
    {
      sub_3A98D4(a1 + 744);
      *(a1 + 704) = off_26696C8;
      if ((*(a1 + 735) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(a1 + 655) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else
    {
      *(a1 + 704) = off_26696C8;
      if ((*(a1 + 735) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    operator delete(*(a1 + 712));
    if ((*(a1 + 655) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 623) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_14:
    operator delete(*(a1 + 632));
    if ((*(a1 + 623) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(a1 + 599) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

LABEL_15:
    operator delete(*(a1 + 600));
    if ((*(a1 + 599) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 559) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(*(a1 + 576));
    if ((*(a1 + 559) & 0x80000000) == 0)
    {
LABEL_8:
      if ((*(a1 + 527) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    operator delete(*(a1 + 536));
    if ((*(a1 + 527) & 0x80000000) == 0)
    {
LABEL_9:
      if ((*(a1 + 503) & 0x80000000) == 0)
      {
LABEL_10:
        sub_2C0F28(a1);
        return a1;
      }

LABEL_19:
      operator delete(*(a1 + 480));
      goto LABEL_10;
    }

LABEL_18:
    operator delete(*(a1 + 504));
    if ((*(a1 + 503) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  return a1;
}

void *sub_60B0D4(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_60B118(uint64_t a1)
{
  if (*(a1 + 7983) < 0)
  {
    operator delete(*(a1 + 7960));
  }

  sub_528AB4(a1 + 4032);
  sub_559B98(a1 + 784);
  v2 = *(a1 + 776);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 736);
  if (v3)
  {
    *(a1 + 744) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_60B1B8(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_60B21C(a1, i))
    {
      i -= 2096;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void **sub_60B21C(uint64_t a1, uint64_t a2)
{
  result = sub_5C0BF4((a2 + 2016));
  if (*(a2 + 2008) != 1)
  {
    return result;
  }

  if (*(a2 + 2007) < 0)
  {
    operator delete(*(a2 + 1984));
    if (*(a2 + 1976) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (*(a2 + 1976) == 1)
  {
LABEL_4:
    sub_52A624(a2 + 1808);
  }

LABEL_5:
  sub_5706DC((a2 + 1760));
  sub_570440(a2 + 1144);

  return sub_60AF9C(a2 + 16);
}

uint64_t sub_60B2B4(uint64_t a1)
{
  v2 = *(a1 + 7880);
  if (v2)
  {
    v3 = *(a1 + 7888);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_5C0F34(v3 - 816);
      }

      while (v3 != v2);
      v4 = *(a1 + 7880);
    }

    *(a1 + 7888) = v2;
    operator delete(v4);
  }

  sub_5706DC((a1 + 7856));
  sub_5C1158(a1 + 48);
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 24);
    if (v6 != v5)
    {
      do
      {
        v6 = sub_5C1158(v6 - 7808);
      }

      while (v6 != v5);
      v7 = *(a1 + 24);
    }

    *(a1 + 32) = v5;
    operator delete(v7);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_60B38C(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_3EEA68(v3 - 1096);
      }

      while (v3 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = *(a1 + 8);
    v7 = *a1;
    if (v6 != v5)
    {
      do
      {
        v6 -= 80;
        sub_3ED230(v6);
      }

      while (v6 != v5);
      v7 = *a1;
    }

    *(a1 + 8) = v5;

    operator delete(v7);
  }
}

uint64_t sub_60B450(uint64_t *a1, uint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    sub_1794();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v5 = 0x1AF286BCA1AF286;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_60B5B0(a1, v11, a2);
  v6 = 152 * v2 + 152;
  v7 = a1[1];
  v8 = 152 * v2 + *a1 - v7;
  sub_60B8CC(a1, *a1, v7, v11 + *a1 - v7);
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

void sub_60B59C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_60BA6C(va);
  _Unwind_Resume(a1);
}

void *sub_60B5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_3ECFD8(a2, *a3, *(a3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 4));
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_3ED39C(a2 + 24, *(a3 + 24), *(a3 + 32), 0xE21A291C077975B9 * ((*(a3 + 32) - *(a3 + 24)) >> 3));
  v5 = *(a3 + 48);
  v6 = *(a3 + 64);
  v7 = *(a3 + 80);
  *(a2 + 94) = *(a3 + 94);
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 48) = v5;
  if (*(a3 + 127) < 0)
  {
    sub_325C((a2 + 104), *(a3 + 104), *(a3 + 112));
  }

  else
  {
    v8 = *(a3 + 104);
    *(a2 + 120) = *(a3 + 120);
    *(a2 + 104) = v8;
  }

  return sub_60B6D4((a2 + 128), (a3 + 128));
}

void sub_60B690(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void *sub_60B6D4(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v2 - *a2) >> 4)) < 0x24924924924924ALL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_60B80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v11)
  {
    v13 = (v10 + v11 - 112);
    v14 = -v11;
    do
    {
      v13 = sub_60AA70(v13) - 14;
      v14 += 112;
    }

    while (v14);
  }

  *(v9 + 8) = v10;
  sub_60B854(&a9);
  _Unwind_Resume(a1);
}

void ***sub_60B854(void ***result)
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
          v4 = sub_60AA70(v4 - 14);
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

void sub_60B8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v8 = *(v7 + 48);
      v9 = *(v7 + 64);
      v10 = *(v7 + 80);
      *(a4 + 94) = *(v7 + 94);
      *(a4 + 64) = v9;
      *(a4 + 80) = v10;
      *(a4 + 48) = v8;
      v11 = *(v7 + 104);
      *(a4 + 120) = *(v7 + 120);
      *(a4 + 104) = v11;
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(v7 + 104) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 128) = *(v7 + 128);
      *(a4 + 144) = *(v7 + 144);
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      v7 += 152;
      a4 += 152;
    }

    while (v7 != a3);
    if (a2 != a3)
    {
      do
      {
        sub_60A974(a1, v5);
        v5 += 152;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_60BA04(uint64_t a1)
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
        v4 -= 152;
        sub_60A974(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_60BA6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    v4 = *(a1 + 32);
    *(a1 + 16) = v3 - 152;
    sub_60A974(v4, v3 - 152);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_60BAC4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 7)
  {
    if (!(a2 >> 57))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_60BC14(uint64_t *a1, uint64_t a2)
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

  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = v2 << 7;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v8 = *(a2 + 48);
  v9 = *(a2 + 64);
  v10 = *(a2 + 80);
  *(v7 + 94) = *(a2 + 94);
  *(v7 + 64) = v9;
  *(v7 + 80) = v10;
  *(v7 + 48) = v8;
  v11 = *(a2 + 104);
  *(v7 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v12 = (v2 << 7) + 128;
  v13 = *a1;
  v14 = a1[1];
  v15 = v7 + *a1 - v14;
  *(v7 + 104) = v11;
  if (v14 != v13)
  {
    v16 = v13;
    v17 = v15;
    do
    {
      *v17 = *v16;
      *(v17 + 16) = *(v16 + 2);
      *v16 = 0;
      *(v16 + 1) = 0;
      *(v16 + 2) = 0;
      *(v17 + 32) = 0;
      *(v17 + 40) = 0;
      *(v17 + 24) = *(v16 + 24);
      *(v17 + 40) = *(v16 + 5);
      *(v16 + 3) = 0;
      *(v16 + 4) = 0;
      *(v16 + 5) = 0;
      v18 = *(v16 + 3);
      v19 = *(v16 + 4);
      v20 = *(v16 + 5);
      *(v17 + 94) = *(v16 + 94);
      *(v17 + 64) = v19;
      *(v17 + 80) = v20;
      *(v17 + 48) = v18;
      v21 = *(v16 + 104);
      *(v17 + 120) = *(v16 + 15);
      *(v17 + 104) = v21;
      *(v16 + 14) = 0;
      *(v16 + 15) = 0;
      *(v16 + 13) = 0;
      v16 += 128;
      v17 += 128;
    }

    while (v16 != v14);
    do
    {
      sub_60B38C(v13);
      v13 += 128;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = v12;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v12;
}

void sub_60BDE0()
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
  xmmword_2799250 = 0u;
  unk_2799260 = 0u;
  dword_2799270 = 1065353216;
  sub_3A9A34(&xmmword_2799250, v0);
  sub_3A9A34(&xmmword_2799250, v3);
  sub_3A9A34(&xmmword_2799250, __p);
  sub_3A9A34(&xmmword_2799250, v9);
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
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    byte_279928F = 3;
    LODWORD(qword_2799278) = 5136193;
    byte_27992A7 = 3;
    LODWORD(qword_2799290) = 5136194;
    byte_27992BF = 3;
    LODWORD(qword_27992A8) = 5136195;
    byte_27992D7 = 15;
    strcpy(&qword_27992C0, "vehicle_mass_kg");
    byte_27992EF = 21;
    strcpy(&xmmword_27992D8, "vehicle_cargo_mass_kg");
    byte_2799307 = 19;
    strcpy(&qword_27992F0, "vehicle_aux_power_w");
    byte_279931F = 15;
    strcpy(&qword_2799308, "dcdc_efficiency");
    strcpy(&qword_2799320, "drive_train_efficiency");
    HIBYTE(word_2799336) = 22;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_60C1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2799238)
  {
    qword_2799240 = qword_2799238;
    operator delete(qword_2799238);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_60C2EC(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  sub_92AA50(a1 + 1, a2);
  v4[23] = 18;
  strcpy(v4, "ETADrivingGuidance");
  memset(v3, 0, sizeof(v3));
  sub_3AEC94(a2, v4, v3);
  operator new();
}

void sub_60C44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

void sub_60CA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *(v10 + 8) = v11;
  sub_60E03C(v10);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_60CA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_60E03C(v10);
  sub_1F1A8(va);
  _Unwind_Resume(a1);
}

void sub_60CAC0(uint64_t a1, uint64_t a2, int a3, __int128 **a4)
{
  v6 = *(a4 + 74);
  v7 = *(a4 + 9);
  v38 = v7;
  v39 = v6;
  v8 = *(a1 + 48);
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  if (v8 == 1 && a3 != 0 && v6 != 0x7FFFFFFF && v7 != 0x7FFFFFFF)
  {
    v12 = sub_92AA54(a1 + 8, &v38, &v39);
    *(a4 + 80) = v12;
    sub_92AC84(v12, v40);
    *v36 = *v40;
    v37 = *__p;
  }

  v13 = *a4;
  if (*a4 != a4[1])
  {
    *__p = 0xB00000000000000;
    *v40 = *"{RouteName}";
    if (*(v13 + 23) < 0)
    {
      sub_325C(&__p[8], *v13, *(v13 + 1));
    }

    else
    {
      v14 = *v13;
      v42 = *(v13 + 2);
      *&__p[8] = v14;
    }

    *v33 = 0u;
    v34 = 0u;
    v35 = 1065353216;
    sub_2C7D4(v33, v40);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(*&__p[8]);
      if ((__p[7] & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((__p[7] & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v40[0]);
LABEL_18:
    if (v37 >= 0)
    {
      v15 = HIBYTE(v37);
    }

    else
    {
      v15 = v36[1];
    }

    if (v15)
    {
      if (v15 + 17 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v15 + 17 >= 0x17)
      {
        operator new();
      }

      v32[0] = 103;
      *v31 = *"Proactive_Driving";
      if (v37 >= 0)
      {
        v16 = v36;
      }

      else
      {
        v16 = v36[0];
      }

      memmove(v32 + 1, v16, v15);
      *(v32 + v15 + 1) = 0;
      v17 = SHIBYTE(v32[0]);
      if ((SHIBYTE(v32[0]) & 0x8000000000000000) != 0)
      {
        v17 = v31[1];
        v18 = (v32[0] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v18 - v31[1] < 0xA)
        {
          if ((0x7FFFFFFFFFFFFFF7 - (v32[0] & 0x7FFFFFFFFFFFFFFFLL)) < v31[1] - v18 + 10)
          {
            sub_3244();
          }

LABEL_35:
          operator new();
        }

        v19 = v31[0];
      }

      else
      {
        if ((SHIBYTE(v32[0]) - 13) < 0xA)
        {
          goto LABEL_35;
        }

        v19 = v31;
      }

      qmemcpy(v17 + v19, "_RouteName", 10);
      v20 = v17 + 10;
      if (SHIBYTE(v32[0]) < 0)
      {
        v31[1] = v17 + 10;
      }

      else
      {
        HIBYTE(v32[0]) = v20 & 0x7F;
      }

      v20[v19] = 0;
      *v40 = *v31;
      *__p = v32[0];
      sub_6A5584(v40, v33, a2, 0, v31);
      v21 = a4[42];
      if (v21 >= a4[43])
      {
        v22 = sub_5C4594(a4 + 41, v31);
      }

      else
      {
        sub_64BC20(a4[42], v31);
        v22 = v21 + 160;
        a4[42] = (v21 + 160);
      }

      a4[42] = v22;
      if (SHIBYTE(v32[0]) < 0)
      {
        operator delete(v31[0]);
        if ((__p[7] & 0x80000000) == 0)
        {
          goto LABEL_46;
        }
      }

      else if ((__p[7] & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      operator delete(v40[0]);
    }

LABEL_46:
    operator new();
  }

  v23 = SHIBYTE(v37);
  if (v37 >= 0)
  {
    v24 = HIBYTE(v37);
  }

  else
  {
    v24 = v36[1];
  }

  if (v24)
  {
    *v40 = 0u;
    *__p = 0u;
    *&__p[16] = 1065353216;
    if (v24 + 17 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v24 + 17 >= 0x17)
    {
      operator new();
    }

    *&v34 = 103;
    *v33 = *"Proactive_Driving";
    if (v37 >= 0)
    {
      v25 = v36;
    }

    else
    {
      v25 = v36[0];
    }

    memmove(&v34 + 1, v25, v24);
    *(&v34 + v24 + 1) = 0;
    sub_6A5584(v33, v40, a2, 0, v31);
    v26 = a4[42];
    if (v26 >= a4[43])
    {
      v27 = sub_5C4594(a4 + 41, v31);
    }

    else
    {
      sub_64BC20(a4[42], v31);
      v27 = v26 + 160;
      a4[42] = (v26 + 160);
    }

    a4[42] = v27;
    if (SHIBYTE(v32[0]) < 0)
    {
      operator delete(v31[0]);
      if ((SBYTE7(v34) & 0x80000000) == 0)
      {
LABEL_62:
        v28 = *__p;
        if (*__p)
        {
          goto LABEL_69;
        }

        goto LABEL_72;
      }
    }

    else if ((SBYTE7(v34) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    operator delete(v33[0]);
    v28 = *__p;
    if (!*__p)
    {
LABEL_72:
      v30 = v40[0];
      v40[0] = 0;
      if (v30)
      {
        operator delete(v30);
      }

      goto LABEL_74;
    }

    while (1)
    {
LABEL_69:
      v29 = *v28;
      if (v28[63] < 0)
      {
        operator delete(*(v28 + 5));
        if ((v28[39] & 0x80000000) == 0)
        {
          goto LABEL_68;
        }

LABEL_71:
        operator delete(*(v28 + 2));
        operator delete(v28);
        v28 = v29;
        if (!v29)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v28[39] < 0)
        {
          goto LABEL_71;
        }

LABEL_68:
        operator delete(v28);
        v28 = v29;
        if (!v29)
        {
          goto LABEL_72;
        }
      }
    }
  }

LABEL_74:
  if (v23 < 0)
  {
    operator delete(v36[0]);
  }
}

void sub_60D1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  sub_2CD04(&a16);
  if ((a30 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_60D2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_2CD04(va);
  sub_1AB28(va1);
  if (SHIBYTE(v13) < 0)
  {
    JUMPOUT(0x60D224);
  }

  JUMPOUT(0x60D2F0);
}

void **sub_60D330()
{
  result = __chkstk_darwin();
  if (*(v1 + 99) == 1)
  {
    sub_7B8FC0(v2, *result, v1);
  }

  return result;
}

void sub_60D7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_60E098(va);
  _Unwind_Resume(a1);
}

void sub_60D7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5706DC((v7 - 112));
  sub_60E098(va);
  _Unwind_Resume(a1);
}

uint64_t sub_60D834(uint64_t *a1, uint64_t a2)
{
  v2 = 0x51B3BEA3677D46CFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xAE4C415C9882B9)
  {
    sub_1794();
  }

  if (0xA3677D46CEFA8D9ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA3677D46CEFA8D9ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x51B3BEA3677D46CFLL * ((a1[2] - *a1) >> 3)) >= 0x572620AE4C415CLL)
  {
    v5 = 0xAE4C415C9882B9;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAE4C415C9882B9)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_60D988(v11, a2);
  v6 = 376 * v2 + 376;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_60DB70(a1, *a1, v7, v8);
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

void sub_60D974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_60DEE8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_60D988(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = sub_4C4BD8(a2);
  *(a1 + 32) = 0x8000000080000000;
  *(a1 + 24) = v4;
  *(a1 + 40) = 0x7FFFFFFF;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *&v5 = 0x8000000080000000;
  *(&v5 + 1) = 0x8000000080000000;
  *(a1 + 272) = 0u;
  *(a1 + 288) = v5;
  *(a1 + 304) = v5;
  *(a1 + 320) = 5;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  if (!sub_4C49D0(a2))
  {
    *(a1 + 32) = sub_4C4C40(a2);
    *(a1 + 36) = sub_4E4B18(a2, 0, 6);
    *(a1 + 296) = sub_4E4B18(a2, 1, 6);
    *(a1 + 300) = sub_4E4B18(a2, 2, 6);
    *(a1 + 304) = sub_4E4B18(a2, 3, 6);
    *(a1 + 308) = sub_4E4B18(a2, 4, 6);
    *(a1 + 312) = sub_4E4B18(a2, 5, 6);
  }

  return a1;
}

void sub_60DAB0(_Unwind_Exception *a1)
{
  sub_5706DC((v2 + 320));
  sub_5C0ED8(v3);
  sub_3EE9A4(v2);
  sub_60DB0C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_60DB0C(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_5ED330(a1, i))
    {
      i -= 152;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_60DB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v7 = *(v6 + 32);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 32) = v7;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = *(v6 + 120);
      *(a4 + 136) = *(v6 + 136);
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 144) = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      *(a4 + 168) = 0;
      *(a4 + 176) = 0;
      *(a4 + 184) = 0;
      *(a4 + 168) = *(v6 + 168);
      *(a4 + 184) = *(v6 + 184);
      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      *(v6 + 184) = 0;
      *(a4 + 192) = 0;
      *(a4 + 200) = 0;
      *(a4 + 208) = 0;
      *(a4 + 192) = *(v6 + 192);
      *(a4 + 208) = *(v6 + 208);
      *(v6 + 192) = 0;
      *(v6 + 200) = 0;
      *(v6 + 208) = 0;
      *(a4 + 216) = 0;
      *(a4 + 224) = 0;
      *(a4 + 232) = 0;
      *(a4 + 216) = *(v6 + 216);
      *(a4 + 232) = *(v6 + 232);
      *(v6 + 216) = 0;
      *(v6 + 224) = 0;
      *(v6 + 232) = 0;
      *(a4 + 240) = 0;
      *(a4 + 248) = 0;
      *(a4 + 256) = 0;
      *(a4 + 240) = *(v6 + 240);
      *(a4 + 256) = *(v6 + 256);
      *(v6 + 240) = 0;
      *(v6 + 248) = 0;
      *(v6 + 256) = 0;
      *(a4 + 264) = 0;
      *(a4 + 272) = 0;
      *(a4 + 280) = 0;
      *(a4 + 264) = *(v6 + 264);
      *(a4 + 272) = *(v6 + 272);
      *(v6 + 264) = 0;
      *(v6 + 272) = 0;
      *(v6 + 280) = 0;
      v8 = *(v6 + 304);
      *(a4 + 288) = *(v6 + 288);
      *(a4 + 304) = v8;
      *(a4 + 320) = *(v6 + 320);
      *(a4 + 336) = 0;
      *(a4 + 344) = 0;
      *(a4 + 328) = 0;
      *(a4 + 328) = *(v6 + 328);
      *(a4 + 336) = *(v6 + 336);
      *(v6 + 328) = 0;
      *(v6 + 336) = 0;
      *(v6 + 344) = 0;
      *(a4 + 352) = 0;
      *(a4 + 360) = 0;
      *(a4 + 368) = 0;
      *(a4 + 352) = *(v6 + 352);
      *(a4 + 368) = *(v6 + 368);
      *(v6 + 352) = 0;
      *(v6 + 360) = 0;
      *(v6 + 368) = 0;
      v6 += 376;
      a4 += 376;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_60DD90(v5) + 376;
    }
  }
}

uint64_t sub_60DD90(uint64_t a1)
{
  v2 = *(a1 + 352);
  if (v2)
  {
    for (i = *(a1 + 360); i != v2; sub_5EBD80(a1 + 352, i))
    {
      i -= 1120;
    }

    *(a1 + 360) = v2;
    operator delete(*(a1 + 352));
  }

  v4 = *(a1 + 328);
  if (v4)
  {
    v5 = *(a1 + 336);
    v6 = *(a1 + 328);
    if (v5 != v4)
    {
      do
      {
        v5 = sub_53A868(v5 - 160);
      }

      while (v5 != v4);
      v6 = *(a1 + 328);
    }

    *(a1 + 336) = v4;
    operator delete(v6);
  }

  sub_3EE9A4((a1 + 32));
  v7 = *a1;
  if (*a1)
  {
    v8 = *(a1 + 8);
    v9 = *a1;
    if (v8 == v7)
    {
LABEL_27:
      *(a1 + 8) = v7;
      operator delete(v9);
      return a1;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        if ((*(v8 - 33) & 0x80000000) == 0)
        {
LABEL_17:
          if ((*(v8 - 57) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_23;
        }
      }

      else if ((*(v8 - 33) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      operator delete(*(v8 - 7));
      if ((*(v8 - 57) & 0x80000000) == 0)
      {
LABEL_18:
        if ((*(v8 - 97) & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_24;
      }

LABEL_23:
      operator delete(*(v8 - 10));
      if ((*(v8 - 97) & 0x80000000) == 0)
      {
LABEL_19:
        v10 = v8 - 19;
        if (*(v8 - 129) < 0)
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }

LABEL_24:
      operator delete(*(v8 - 15));
      v10 = v8 - 19;
      if (*(v8 - 129) < 0)
      {
LABEL_25:
        operator delete(*v10);
      }

LABEL_14:
      v8 = v10;
      if (v10 == v7)
      {
        v9 = *a1;
        goto LABEL_27;
      }
    }
  }

  return a1;
}

uint64_t sub_60DEE8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 376;
    sub_60DD90(i - 376);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_60DF3C(uint64_t a1)
{
  sub_60DF74(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_60DF74(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 152;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if ((*(i - 33) & 0x80000000) == 0)
      {
LABEL_6:
        if ((*(i - 57) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(i - 33) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 56));
    if ((*(i - 57) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(i - 97) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_12:
    operator delete(*(i - 80));
    if ((*(i - 97) & 0x80000000) == 0)
    {
LABEL_8:
      if (*(i - 129) < 0)
      {
        goto LABEL_14;
      }

      continue;
    }

LABEL_13:
    operator delete(*(i - 120));
    if (*(i - 129) < 0)
    {
LABEL_14:
      operator delete(*(i - 152));
    }
  }
}

void **sub_60E03C(void **a1)
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
        v3 = sub_60DD90(v3 - 376);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_60E098(void *a1)
{
  sub_60E1B8((a1 + 1166));
  v2 = a1[1165];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_3E3DF0(a1 + 497);
  v3 = a1[494];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[10];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

uint64_t sub_60E1B8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_266BCB8[v4])(&v11, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    do
    {
      v7 = *v6;
      v8 = *(v6 + 12);
      if (v8 != -1)
      {
        (off_266BCB8[v8])(&v12, v6 + 5);
      }

      *(v6 + 12) = -1;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

void sub_60E2D4(uint64_t a1, void *a2)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = sub_60EE70(&__p, a1);
  v6 = v3;
  sub_60E420(v3 - 12656, a2);
  sub_60E82C((v3 - 12656), a2);
  sub_7DC148(&v4, a2);
}

void sub_60E3E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5EC430(va);
  _Unwind_Resume(a1);
}

void sub_60E3F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5EC430(va);
  _Unwind_Resume(a1);
}

void sub_60E40C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5EC430(va);
  _Unwind_Resume(a1);
}

void sub_60E420(uint64_t a1, void *a2)
{
  if (*(a1 + 7488) != *(a1 + 7496))
  {
    return;
  }

  v4 = sub_3AF6B4(a2);
  v5 = sub_3B2A90(a2);
  v6 = sub_4D1DC0(a1);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      v10 = sub_4D1F50(a1, v8);
      v11 = v10;
      if (v8)
      {
        v12 = (*v10 - **v10);
        if (*v12 >= 0xDu && (v13 = v12[6]) != 0)
        {
          v14 = *(*v10 + v13);
        }

        else
        {
          v14 = 0;
        }

        v15 = sub_4D1F50(a1, v8 - 1);
        v16 = (*v15 - **v15);
        if (*v16 >= 0xDu && (v17 = v16[6]) != 0)
        {
          if (*(*v15 + v17) == v14)
          {
            goto LABEL_24;
          }
        }

        else if (!v14)
        {
LABEL_24:
          v25 = *(a1 + 7496);
          v26 = (v25 - 24);
          if (v25 >= *(a1 + 7504))
          {
            v9 = sub_5C416C(a1 + 7488, v26);
          }

          else
          {
            if (*(v25 - 1) < 0)
            {
              sub_325C(*(a1 + 7496), *(v25 - 24), *(v25 - 16));
            }

            else
            {
              *v25 = *v26;
              *(v25 + 16) = *(v25 - 8);
            }

            v9 = v25 + 24;
            *(a1 + 7496) = v25 + 24;
          }

          *(a1 + 7496) = v9;
          goto LABEL_7;
        }
      }

      v18 = sub_2B51D8(v4, *(v11 + 8) | (*(v11 + 18) << 32));
      v19 = (v18 - *v18);
      if (*v19 >= 0xDu && (v20 = v19[6]) != 0)
      {
        v21 = 4 * *(v18 + v20);
      }

      else
      {
        v21 = 0;
      }

      v22 = sub_2AF704(v4 + 3896, 1u, 0);
      v23 = &v22[-*v22];
      if (*v23 < 0xBu)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(v23 + 5);
        if (v24)
        {
          v24 += &v22[*&v22[v24]];
        }
      }

      v27 = (v24 + v21 + 4 + *(v24 + v21 + 4));
      v28 = (v27 - *v27);
      if (*v28 >= 5u && (v29 = v28[2]) != 0)
      {
        v30 = (v27 + v29);
        v31 = *v30;
        v32 = *(v30 + v31);
        if (v32 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v44) = *(v30 + v31);
        if (v32)
        {
          memcpy(&__dst, v30 + v31 + 4, v32);
        }

        p_dst = (&__dst + v32);
      }

      else
      {
        HIBYTE(v44) = 0;
        p_dst = &__dst;
      }

      *p_dst = 0;
      if (!sub_4B9418(v5, &__dst))
      {
        goto LABEL_40;
      }

      if ((SHIBYTE(v44) & 0x80000000) == 0)
      {
        break;
      }

      *__dst = 0;
      *(&__dst + 1) = 0;
      v34 = *(a1 + 7496);
      if (v34 < *(a1 + 7504))
      {
LABEL_41:
        if (SHIBYTE(v44) < 0)
        {
          sub_325C(v34, __dst, *(&__dst + 1));
        }

        else
        {
          v35 = __dst;
          *(v34 + 16) = v44;
          *v34 = v35;
        }

        *(a1 + 7496) = v34 + 24;
        *(a1 + 7496) = v34 + 24;
        if ((SHIBYTE(v44) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

LABEL_48:
        operator delete(__dst);
        goto LABEL_7;
      }

LABEL_44:
      *(a1 + 7496) = sub_5C416C(a1 + 7488, &__dst);
      if (SHIBYTE(v44) < 0)
      {
        goto LABEL_48;
      }

LABEL_7:
      if (v7 == ++v8)
      {
        goto LABEL_51;
      }
    }

    LOBYTE(__dst) = 0;
    HIBYTE(v44) = 0;
LABEL_40:
    v34 = *(a1 + 7496);
    if (v34 < *(a1 + 7504))
    {
      goto LABEL_41;
    }

    goto LABEL_44;
  }

LABEL_51:
  v36 = *(a1 + 7488);
  v37 = *(a1 + 7496);
  if (v36 == v37)
  {
    return;
  }

  while (1)
  {
    v38 = *(v36 + 23);
    if ((v38 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (v36[1])
    {
      goto LABEL_57;
    }

LABEL_54:
    v36 += 3;
    if (v36 == v37)
    {
      return;
    }
  }

  if (!*(v36 + 23))
  {
    goto LABEL_54;
  }

LABEL_57:
  v39 = (a1 + 7464);
  if (v36 != (a1 + 7464))
  {
    if (*(a1 + 7487) < 0)
    {
      if (v38 >= 0)
      {
        v41 = v36;
      }

      else
      {
        v41 = *v36;
      }

      if (v38 >= 0)
      {
        v42 = *(v36 + 23);
      }

      else
      {
        v42 = v36[1];
      }

      sub_13B38(v39, v41, v42);
    }

    else if ((v38 & 0x80000000) != 0)
    {
      sub_13A68(v39, *v36, v36[1]);
    }

    else
    {
      v40 = *v36;
      *(a1 + 7480) = v36[2];
      *v39 = v40;
    }
  }
}

void sub_60E804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 7496) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_60E82C(void *a1, void *a2)
{
  result = sub_4D1DC0(a1);
  if (result && a1[156] == a1[157])
  {
    v5 = a1[936];
    if (*(v5 + 23) < 0)
    {
      sub_325C(&v22, *v5, *(v5 + 1));
      v7 = a1[937];
      if ((*(v7 - 1) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = *v5;
      v23 = *(v5 + 2);
      v22 = v6;
      v7 = a1[937];
      if ((*(v7 - 1) & 0x80000000) == 0)
      {
LABEL_5:
        v8 = *(v7 - 24);
        v21 = *(v7 - 8);
        v20 = v8;
        goto LABEL_8;
      }
    }

    sub_325C(&v20, *(v7 - 24), *(v7 - 16));
LABEL_8:
    v9 = SHIBYTE(v23);
    v10 = *(&v22 + 1);
    if (v23 >= 0)
    {
      v11 = HIBYTE(v23);
    }

    else
    {
      v11 = *(&v22 + 1);
    }

    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = *(&v20 + 1);
    }

    if (v11 == v12 && ((v13 = v22, v23 >= 0) ? (v14 = &v22) : (v14 = v22), v21 >= 0 ? (v15 = &v20) : (v15 = v20), !memcmp(v14, v15, v11)))
    {
      if (v9 < 0)
      {
        sub_325C(&v18, v13, v10);
      }

      else
      {
        v18 = v22;
        v19 = v23;
      }
    }

    else
    {
      HIBYTE(v19) = 0;
      LOBYTE(v18) = 0;
    }

    memset(__p, 0, 24);
    sub_882200(&v17, a2, 0, __p);
  }

  return result;
}

void sub_60ED74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (*(v41 - 121) < 0)
  {
    operator delete(*(v41 - 144));
    if (*(v41 - 89) < 0)
    {
LABEL_3:
      operator delete(*(v41 - 112));
      _Unwind_Resume(exception_object);
    }
  }

  else if (*(v41 - 89) < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_60EE70(uint64_t *a1, uint64_t a2)
{
  v2 = 0x5DDB1ADCB91F64A7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x52DA224E52346)
  {
    sub_1794();
  }

  if (0xBBB635B9723EC94ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xBBB635B9723EC94ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x5DDB1ADCB91F64A7 * ((a1[2] - *a1) >> 4)) >= 0x296D1127291A3)
  {
    v5 = 0x52DA224E52346;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x52DA224E52346)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  sub_69BFC0(v15, a2, 0);
  v6 = 12656 * v2 + 12656;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = v15 + v9;
    do
    {
      v13 = sub_60F014(v12, v11);
      v11 += 12656;
      v12 = v13 + 12656;
    }

    while (v11 != v8);
    do
    {
      sub_5C186C(v7);
      v7 += 12656;
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

void sub_60F000(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6106D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_60F014(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 10120;
  v5 = a2 + 10120;
  sub_4C6AE8(a1, a2);
  *(v6 + 1096) = *(a2 + 1096);
  *(v6 + 1104) = 0;
  *(v6 + 1112) = 0u;
  *(v6 + 1104) = *(a2 + 1104);
  *(v6 + 1120) = *(a2 + 1120);
  *(a2 + 1120) = 0;
  *(a2 + 1104) = 0u;
  *(v6 + 1144) = 0;
  *(v6 + 1128) = 0u;
  *(v6 + 1128) = *(a2 + 1128);
  *(v6 + 1136) = *(a2 + 1136);
  *(a2 + 1144) = 0;
  *(a2 + 1128) = 0u;
  *(v6 + 1168) = 0;
  *(v6 + 1152) = 0u;
  *(v6 + 1152) = *(a2 + 1152);
  *(v6 + 1168) = *(a2 + 1168);
  *(a2 + 1168) = 0;
  *(a2 + 1152) = 0u;
  *(v6 + 1192) = 0;
  *(v6 + 1176) = 0u;
  *(v6 + 1176) = *(a2 + 1176);
  *(v6 + 1184) = *(a2 + 1184);
  *(a2 + 1192) = 0;
  *(a2 + 1176) = 0u;
  *(v6 + 1216) = 0;
  *(v6 + 1200) = 0u;
  *(v6 + 1200) = *(a2 + 1200);
  *(v6 + 1216) = *(a2 + 1216);
  *(a2 + 1216) = 0;
  *(a2 + 1200) = 0u;
  *(v6 + 1240) = 0;
  *(v6 + 1224) = 0u;
  *(v6 + 1224) = *(a2 + 1224);
  *(v6 + 1232) = *(a2 + 1232);
  *(a2 + 1240) = 0;
  *(a2 + 1224) = 0u;
  *(v6 + 1264) = 0;
  *(v6 + 1248) = 0u;
  *(v6 + 1248) = *(a2 + 1248);
  *(v6 + 1264) = *(a2 + 1264);
  *(a2 + 1264) = 0;
  *(a2 + 1248) = 0u;
  v7 = *(a2 + 1272);
  *(v6 + 1288) = *(a2 + 1288);
  *(v6 + 1272) = v7;
  *(a2 + 1272) = 0;
  *(a2 + 1280) = 0u;
  v8 = *(a2 + 1296);
  *(v6 + 1312) = *(a2 + 1312);
  *(v6 + 1296) = v8;
  *(a2 + 1304) = 0u;
  *(a2 + 1296) = 0;
  *(v6 + 1336) = 0;
  *(v6 + 1320) = 0u;
  *(v6 + 1320) = *(a2 + 1320);
  *(v6 + 1328) = *(a2 + 1328);
  *(a2 + 1336) = 0;
  *(a2 + 1320) = 0u;
  *(v6 + 1360) = 0;
  *(v6 + 1344) = 0u;
  *(v6 + 1344) = *(a2 + 1344);
  *(v6 + 1360) = *(a2 + 1360);
  *(a2 + 1360) = 0;
  *(a2 + 1344) = 0u;
  sub_55A4D0(v6 + 1368, a2 + 1368);
  sub_55A4D0(a1 + 1864, a2 + 1864);
  *(a1 + 2376) = 0;
  *(a1 + 2360) = 0u;
  *(a1 + 2360) = *(a2 + 2360);
  *(a1 + 2368) = *(a2 + 2368);
  *(a2 + 2376) = 0;
  *(a2 + 2360) = 0u;
  *(a1 + 2400) = 0;
  *(a1 + 2384) = 0u;
  *(a1 + 2384) = *(a2 + 2384);
  *(a1 + 2400) = *(a2 + 2400);
  *(a2 + 2400) = 0;
  *(a2 + 2384) = 0u;
  sub_61009C(a1 + 2408, a2 + 2408);
  *(a1 + 7208) = 0u;
  *(a1 + 7224) = 0;
  *(a1 + 7208) = *(a2 + 7208);
  *(a1 + 7216) = *(a2 + 7216);
  *(a2 + 7208) = 0u;
  *(a2 + 7224) = 0;
  *(a1 + 7248) = 0;
  *(a1 + 7232) = 0u;
  *(a1 + 7232) = *(a2 + 7232);
  *(a1 + 7248) = *(a2 + 7248);
  *(a2 + 7248) = 0;
  *(a2 + 7232) = 0u;
  *(a1 + 7256) = 0u;
  *(a1 + 7272) = 0;
  *(a1 + 7256) = *(a2 + 7256);
  *(a1 + 7264) = *(a2 + 7264);
  *(a2 + 7256) = 0u;
  *(a2 + 7272) = 0;
  *(a1 + 7296) = 0;
  *(a1 + 7280) = 0u;
  *(a1 + 7280) = *(a2 + 7280);
  *(a1 + 7296) = *(a2 + 7296);
  *(a2 + 7296) = 0;
  *(a2 + 7280) = 0u;
  *(a1 + 7304) = 0u;
  *(a1 + 7320) = 0;
  *(a1 + 7304) = *(a2 + 7304);
  *(a1 + 7312) = *(a2 + 7312);
  *(a2 + 7304) = 0u;
  *(a2 + 7320) = 0;
  v9 = *(a2 + 7328);
  *(a2 + 7328) = 0;
  *(a1 + 7328) = v9;
  LODWORD(v9) = *(a2 + 7336);
  *(a1 + 7340) = *(a2 + 7340);
  *(a1 + 7336) = v9;
  v10 = *(a2 + 7344);
  *(a1 + 7360) = *(a2 + 7360);
  *(a1 + 7344) = v10;
  *(a2 + 7344) = 0;
  *(a2 + 7352) = 0u;
  v11 = *(a2 + 7384);
  *(a1 + 7368) = *(a2 + 7368);
  *(a1 + 7384) = v11;
  *(a2 + 7376) = 0u;
  *(a2 + 7368) = 0;
  *(a1 + 7408) = 0;
  *(a1 + 7392) = 0u;
  *(a1 + 7392) = *(a2 + 7392);
  *(a1 + 7408) = *(a2 + 7408);
  *(a2 + 7408) = 0;
  *(a2 + 7392) = 0u;
  *(a1 + 7416) = 0u;
  *(a1 + 7432) = 0;
  *(a1 + 7416) = *(a2 + 7416);
  *(a1 + 7424) = *(a2 + 7424);
  *(a2 + 7416) = 0u;
  *(a2 + 7432) = 0;
  v12 = *(a2 + 7440);
  *(a1 + 7456) = *(a2 + 7456);
  *(a1 + 7440) = v12;
  *(a2 + 7440) = 0;
  *(a2 + 7448) = 0u;
  v13 = *(a2 + 7480);
  *(a1 + 7464) = *(a2 + 7464);
  *(a1 + 7480) = v13;
  *(a2 + 7472) = 0u;
  *(a2 + 7464) = 0;
  *(a1 + 7504) = 0;
  *(a1 + 7488) = 0u;
  *(a1 + 7488) = *(a2 + 7488);
  *(a1 + 7504) = *(a2 + 7504);
  *(a2 + 7504) = 0;
  *(a2 + 7488) = 0u;
  *(a1 + 7512) = 0u;
  *(a1 + 7528) = 0;
  *(a1 + 7512) = *(a2 + 7512);
  *(a1 + 7520) = *(a2 + 7520);
  *(a2 + 7512) = 0u;
  *(a2 + 7528) = 0;
  *(a1 + 7552) = 0;
  *(a1 + 7536) = 0u;
  *(a1 + 7536) = *(a2 + 7536);
  *(a1 + 7552) = *(a2 + 7552);
  *(a2 + 7552) = 0;
  *(a2 + 7536) = 0u;
  *(a1 + 7560) = 0u;
  *(a1 + 7576) = 0;
  *(a1 + 7560) = *(a2 + 7560);
  *(a1 + 7568) = *(a2 + 7568);
  *(a2 + 7560) = 0u;
  *(a2 + 7576) = 0;
  sub_608B98(a1 + 7584, a2 + 7584);
  sub_608B98(a1 + 8440, a2 + 8440);
  *(a1 + 9312) = 0;
  *(a1 + 9296) = 0u;
  *(a1 + 9296) = *(a2 + 9296);
  *(a1 + 9312) = *(a2 + 9312);
  *(a2 + 9312) = 0;
  *(a2 + 9296) = 0u;
  *(a1 + 9320) = 0u;
  *(a1 + 9336) = 0;
  *(a1 + 9320) = *(a2 + 9320);
  *(a1 + 9328) = *(a2 + 9328);
  *(a2 + 9320) = 0u;
  *(a2 + 9336) = 0;
  *(a1 + 9360) = 0;
  *(a1 + 9344) = 0u;
  *(a1 + 9344) = *(a2 + 9344);
  *(a1 + 9360) = *(a2 + 9360);
  *(a2 + 9360) = 0;
  *(a2 + 9344) = 0u;
  *(a1 + 9368) = 0u;
  *(a1 + 9384) = 0;
  *(a1 + 9368) = *(a2 + 9368);
  *(a1 + 9376) = *(a2 + 9376);
  *(a2 + 9368) = 0u;
  *(a2 + 9384) = 0;
  v14 = *(a2 + 9392);
  *(a2 + 9392) = 0;
  *(a1 + 9392) = v14;
  v15 = *(a2 + 9400);
  *(a1 + 9404) = *(a2 + 9404);
  *(a1 + 9400) = v15;
  v16 = *(a2 + 9408);
  *(a1 + 9424) = *(a2 + 9424);
  *(a1 + 9408) = v16;
  *(a2 + 9408) = 0;
  *(a2 + 9416) = 0u;
  v17 = *(a2 + 9448);
  *(a1 + 9432) = *(a2 + 9432);
  *(a1 + 9448) = v17;
  *(a2 + 9440) = 0u;
  *(a2 + 9432) = 0;
  *(a1 + 9472) = 0;
  *(a1 + 9456) = 0u;
  *(a1 + 9456) = *(a2 + 9456);
  *(a1 + 9472) = *(a2 + 9472);
  *(a2 + 9472) = 0;
  *(a2 + 9456) = 0u;
  *(a1 + 9480) = 0u;
  *(a1 + 9496) = 0;
  *(a1 + 9480) = *(a2 + 9480);
  *(a1 + 9488) = *(a2 + 9488);
  *(a2 + 9480) = 0u;
  *(a2 + 9496) = 0;
  *(a1 + 9520) = 0;
  *(a1 + 9504) = 0u;
  *(a1 + 9504) = *(a2 + 9504);
  *(a1 + 9520) = *(a2 + 9520);
  *(a2 + 9520) = 0;
  *(a2 + 9504) = 0u;
  *(a1 + 9528) = 0u;
  *(a1 + 9544) = 0;
  *(a1 + 9528) = *(a2 + 9528);
  *(a1 + 9536) = *(a2 + 9536);
  *(a2 + 9528) = 0u;
  *(a2 + 9544) = 0;
  v18 = *(a2 + 9552);
  *(a2 + 9552) = 0;
  *(a1 + 9552) = v18;
  v19 = *(a2 + 9560);
  *(a1 + 9564) = *(a2 + 9564);
  *(a1 + 9560) = v19;
  v20 = *(a2 + 9568);
  *(a1 + 9584) = *(a2 + 9584);
  *(a1 + 9568) = v20;
  *(a2 + 9568) = 0;
  *(a2 + 9576) = 0u;
  v21 = *(a2 + 9608);
  *(a1 + 9592) = *(a2 + 9592);
  *(a1 + 9608) = v21;
  *(a2 + 9600) = 0u;
  *(a2 + 9592) = 0;
  *(a1 + 9632) = 0;
  *(a1 + 9616) = 0u;
  *(a1 + 9616) = *(a2 + 9616);
  *(a1 + 9632) = *(a2 + 9632);
  *(a2 + 9632) = 0;
  *(a2 + 9616) = 0u;
  *(a1 + 9640) = 0u;
  *(a1 + 9656) = 0;
  *(a1 + 9640) = *(a2 + 9640);
  *(a1 + 9648) = *(a2 + 9648);
  *(a2 + 9640) = 0u;
  *(a2 + 9656) = 0;
  *(a1 + 9680) = 0;
  *(a1 + 9664) = 0u;
  *(a1 + 9664) = *(a2 + 9664);
  *(a1 + 9680) = *(a2 + 9680);
  *(a2 + 9680) = 0;
  *(a2 + 9664) = 0u;
  *(a1 + 9688) = 0u;
  *(a1 + 9704) = 0;
  *(a1 + 9688) = *(a2 + 9688);
  *(a1 + 9696) = *(a2 + 9696);
  *(a2 + 9688) = 0u;
  *(a2 + 9704) = 0;
  v22 = *(a2 + 9712);
  *(a2 + 9712) = 0;
  *(a1 + 9712) = v22;
  v23 = *(a2 + 9720);
  *(a1 + 9724) = *(a2 + 9724);
  *(a1 + 9720) = v23;
  v24 = *(a2 + 9728);
  *(a1 + 9744) = *(a2 + 9744);
  *(a1 + 9728) = v24;
  *(a2 + 9728) = 0;
  *(a2 + 9736) = 0u;
  v25 = *(a2 + 9768);
  *(a1 + 9752) = *(a2 + 9752);
  *(a1 + 9768) = v25;
  *(a2 + 9760) = 0u;
  *(a2 + 9752) = 0;
  *(a1 + 9792) = 0;
  *(a1 + 9776) = 0u;
  *(a1 + 9776) = *(a2 + 9776);
  *(a1 + 9792) = *(a2 + 9792);
  *(a2 + 9792) = 0;
  *(a2 + 9776) = 0u;
  *(a1 + 9800) = 0u;
  *(a1 + 9816) = 0;
  *(a1 + 9800) = *(a2 + 9800);
  *(a1 + 9808) = *(a2 + 9808);
  *(a2 + 9800) = 0u;
  *(a2 + 9816) = 0;
  *(a1 + 9840) = 0;
  *(a1 + 9824) = 0u;
  *(a1 + 9824) = *(a2 + 9824);
  *(a1 + 9840) = *(a2 + 9840);
  *(a2 + 9840) = 0;
  *(a2 + 9824) = 0u;
  *(a1 + 9848) = 0u;
  *(a1 + 9864) = 0;
  *(a1 + 9848) = *(a2 + 9848);
  *(a1 + 9856) = *(a2 + 9856);
  *(a2 + 9848) = 0u;
  *(a2 + 9864) = 0;
  v26 = *(a2 + 9872);
  *(a2 + 9872) = 0;
  *(a1 + 9872) = v26;
  v27 = *(a2 + 9880);
  *(a1 + 9884) = *(a2 + 9884);
  *(a1 + 9880) = v27;
  v28 = *(a2 + 9888);
  *(a1 + 9904) = *(a2 + 9904);
  *(a1 + 9888) = v28;
  *(a2 + 9888) = 0;
  *(a2 + 9896) = 0u;
  v29 = *(a2 + 9928);
  *(a1 + 9912) = *(a2 + 9912);
  *(a1 + 9928) = v29;
  *(a2 + 9920) = 0u;
  *(a2 + 9912) = 0;
  *(a1 + 9952) = 0;
  *(a1 + 9936) = 0u;
  *(a1 + 9936) = *(a2 + 9936);
  *(a1 + 9952) = *(a2 + 9952);
  *(a2 + 9952) = 0;
  *(a2 + 9944) = 0;
  *(a2 + 9936) = 0;
  *(a1 + 9960) = 0u;
  *(a1 + 9976) = 0;
  *(a1 + 9960) = *(a2 + 9960);
  *(a1 + 9968) = *(a2 + 9968);
  *(a2 + 9976) = 0;
  *(a2 + 9968) = 0;
  *(a2 + 9960) = 0;
  *(a1 + 10000) = 0;
  *(a1 + 9984) = 0u;
  *(a1 + 9984) = *(a2 + 9984);
  *(a1 + 10000) = *(a2 + 10000);
  *(a2 + 10000) = 0;
  *(a2 + 9992) = 0;
  *(a2 + 9984) = 0;
  *(a1 + 10008) = 0u;
  *(a1 + 10024) = 0;
  *(a1 + 10008) = *(a2 + 10008);
  *(a1 + 10016) = *(a2 + 10016);
  *(a2 + 10024) = 0;
  *(a2 + 10016) = 0;
  *(a2 + 10008) = 0;
  v30 = *(a2 + 10032);
  *(a2 + 10032) = 0;
  *(a1 + 10032) = v30;
  v31 = *(a2 + 10040);
  *(a1 + 10044) = *(a2 + 10044);
  *(a1 + 10040) = v31;
  v32 = *(a2 + 10048);
  *(a1 + 10064) = *(a2 + 10064);
  *(a1 + 10048) = v32;
  *(a2 + 10048) = 0;
  *(a2 + 10056) = 0u;
  v33 = *(a2 + 10088);
  *(a1 + 10072) = *(a2 + 10072);
  *(a1 + 10088) = v33;
  *(a2 + 10080) = 0u;
  *(a2 + 10072) = 0;
  *(a1 + 10112) = 0;
  *(a1 + 10096) = 0u;
  *(a1 + 10096) = *(a2 + 10096);
  *(a1 + 10112) = *(a2 + 10112);
  *(a2 + 10112) = 0;
  *(a2 + 10104) = 0;
  *(a2 + 10096) = 0;
  *v4 = *v5;
  *(a1 + 10136) = 0u;
  *(a1 + 10128) = 0;
  *(a1 + 10128) = *(a2 + 10128);
  *(a1 + 10144) = *(a2 + 10144);
  *(a2 + 10144) = 0;
  *(a2 + 10136) = 0;
  *(a2 + 10128) = 0;
  *(a1 + 10152) = 0u;
  *(a1 + 10168) = 0;
  *(a1 + 10152) = *(a2 + 10152);
  *(a1 + 10160) = *(a2 + 10160);
  *(a2 + 10168) = 0;
  *(a2 + 10160) = 0;
  *(a2 + 10152) = 0;
  *(a1 + 10192) = 0;
  *(a1 + 10176) = 0u;
  *(a1 + 10176) = *(a2 + 10176);
  *(a1 + 10192) = *(a2 + 10192);
  *(a2 + 10192) = 0;
  *(a2 + 10184) = 0;
  *(a2 + 10176) = 0;
  *(a1 + 10200) = 0u;
  *(a1 + 10216) = 0;
  *(a1 + 10200) = *(a2 + 10200);
  *(a1 + 10208) = *(a2 + 10208);
  *(a2 + 10216) = 0;
  *(a2 + 10208) = 0;
  *(a2 + 10200) = 0;
  v34 = *(a2 + 10224);
  *(a1 + 10240) = *(a2 + 10240);
  *(a1 + 10224) = v34;
  *(a2 + 10232) = 0u;
  *(a2 + 10224) = 0;
  *(a1 + 10248) = *(a2 + 10248);
  *(a1 + 10272) = 0u;
  *(a1 + 10264) = 0;
  *(a1 + 10264) = *(a2 + 10264);
  *(a1 + 10272) = *(a2 + 10272);
  *(a2 + 10280) = 0;
  *(a2 + 10272) = 0;
  *(a2 + 10264) = 0;
  *(a1 + 10304) = 0;
  *(a1 + 10288) = 0u;
  *(a1 + 10288) = *(a2 + 10288);
  *(a1 + 10304) = *(a2 + 10304);
  *(a2 + 10304) = 0;
  *(a2 + 10296) = 0;
  *(a2 + 10288) = 0;
  *(a1 + 10312) = *(a2 + 10312);
  *(a1 + 10328) = 0u;
  *(a1 + 10320) = 0;
  *(a1 + 10320) = *(a2 + 10320);
  *(a1 + 10336) = *(a2 + 10336);
  *(a2 + 10336) = 0;
  *(a2 + 10320) = 0u;
  sub_610348(a1 + 10344, a2 + 10344);
  sub_610348(a1 + 11088, a2 + 11088);
  *(a1 + 11848) = 0;
  *(a1 + 11840) = 0;
  *(a1 + 11832) = 0;
  *(a1 + 11832) = *(a2 + 11832);
  *(a1 + 11840) = *(a2 + 11840);
  *(a2 + 11848) = 0;
  *(a2 + 11840) = 0;
  *(a2 + 11832) = 0;
  *(a1 + 11872) = 0;
  *(a1 + 11856) = 0u;
  *(a1 + 11856) = *(a2 + 11856);
  *(a1 + 11872) = *(a2 + 11872);
  *(a2 + 11872) = 0;
  *(a2 + 11864) = 0;
  *(a2 + 11856) = 0;
  *(a1 + 11880) = 0u;
  *(a1 + 11896) = 0;
  *(a1 + 11880) = *(a2 + 11880);
  *(a1 + 11888) = *(a2 + 11888);
  *(a2 + 11896) = 0;
  *(a2 + 11888) = 0;
  *(a2 + 11880) = 0;
  *(a1 + 11920) = 0;
  *(a1 + 11904) = 0u;
  *(a1 + 11904) = *(a2 + 11904);
  *(a1 + 11920) = *(a2 + 11920);
  *(a2 + 11920) = 0;
  *(a2 + 11912) = 0;
  *(a2 + 11904) = 0;
  *(a1 + 11928) = 0u;
  *(a1 + 11944) = 0;
  *(a1 + 11928) = *(a2 + 11928);
  *(a1 + 11936) = *(a2 + 11936);
  *(a2 + 11944) = 0;
  *(a2 + 11936) = 0;
  *(a2 + 11928) = 0;
  *(a1 + 11968) = 0;
  *(a1 + 11952) = 0u;
  *(a1 + 11952) = *(a2 + 11952);
  *(a1 + 11968) = *(a2 + 11968);
  *(a2 + 11968) = 0;
  *(a2 + 11960) = 0;
  *(a2 + 11952) = 0;
  *(a1 + 11976) = *(a2 + 11976);
  *(a1 + 11992) = 0u;
  *(a1 + 11984) = 0;
  *(a1 + 11984) = *(a2 + 11984);
  *(a1 + 12000) = *(a2 + 12000);
  *(a2 + 12000) = 0;
  *(a2 + 11992) = 0;
  *(a2 + 11984) = 0;
  *(a1 + 12008) = *(a2 + 12008);
  *(a1 + 12032) = 0u;
  *(a1 + 12024) = 0;
  *(a1 + 12024) = *(a2 + 12024);
  *(a1 + 12032) = *(a2 + 12032);
  *(a2 + 12040) = 0;
  *(a2 + 12032) = 0;
  *(a2 + 12024) = 0;
  *(a1 + 12048) = *(a2 + 12048);
  *(a1 + 12064) = 0u;
  *(a1 + 12056) = 0;
  *(a1 + 12056) = *(a2 + 12056);
  *(a1 + 12064) = *(a2 + 12064);
  *(a2 + 12072) = 0;
  *(a2 + 12064) = 0;
  *(a2 + 12056) = 0;
  *(a1 + 12096) = 0;
  *(a1 + 12080) = 0u;
  *(a1 + 12080) = *(a2 + 12080);
  *(a1 + 12096) = *(a2 + 12096);
  *(a2 + 12096) = 0;
  *(a2 + 12088) = 0;
  *(a2 + 12080) = 0;
  *(a1 + 12104) = 0u;
  *(a1 + 12120) = 0;
  *(a1 + 12104) = *(a2 + 12104);
  *(a1 + 12112) = *(a2 + 12112);
  *(a2 + 12120) = 0;
  *(a2 + 12112) = 0;
  *(a2 + 12104) = 0;
  *(a1 + 12144) = 0;
  *(a1 + 12128) = 0u;
  *(a1 + 12128) = *(a2 + 12128);
  *(a1 + 12144) = *(a2 + 12144);
  *(a2 + 12144) = 0;
  *(a2 + 12136) = 0;
  *(a2 + 12128) = 0;
  *(a1 + 12152) = 0u;
  *(a1 + 12168) = 0;
  *(a1 + 12152) = *(a2 + 12152);
  *(a1 + 12160) = *(a2 + 12160);
  *(a2 + 12168) = 0;
  *(a2 + 12160) = 0;
  *(a2 + 12152) = 0;
  v35 = *(a2 + 12176);
  *(a2 + 12176) = 0;
  *(a1 + 12176) = v35;
  v36 = *(a2 + 12184);
  *(a1 + 12188) = *(a2 + 12188);
  *(a1 + 12184) = v36;
  v37 = *(a2 + 12192);
  *(a1 + 12208) = *(a2 + 12208);
  *(a1 + 12192) = v37;
  *(a2 + 12192) = 0;
  *(a2 + 12200) = 0u;
  v38 = *(a2 + 12232);
  *(a1 + 12216) = *(a2 + 12216);
  *(a1 + 12232) = v38;
  *(a2 + 12224) = 0u;
  *(a2 + 12216) = 0;
  *(a1 + 12256) = 0;
  *(a1 + 12240) = 0u;
  *(a1 + 12240) = *(a2 + 12240);
  *(a1 + 12256) = *(a2 + 12256);
  *(a2 + 12256) = 0;
  *(a2 + 12248) = 0;
  *(a2 + 12240) = 0;
  *(v4 + 2144) = *(v5 + 2144);
  *(a1 + 12280) = 0u;
  *(a1 + 12272) = 0;
  *(a1 + 12272) = *(a2 + 12272);
  *(a1 + 12288) = *(a2 + 12288);
  *(a2 + 12288) = 0;
  *(a2 + 12280) = 0;
  *(a2 + 12272) = 0;
  *(a1 + 12296) = 0u;
  *(a1 + 12312) = 0;
  *(a1 + 12296) = *(a2 + 12296);
  *(a1 + 12304) = *(a2 + 12304);
  *(a2 + 12312) = 0;
  *(a2 + 12304) = 0;
  *(a2 + 12296) = 0;
  v39 = *(a2 + 12320);
  *(a1 + 12336) = *(a2 + 12336);
  *(a1 + 12320) = v39;
  *(a2 + 12320) = 0;
  *(a2 + 12328) = 0u;
  *(a1 + 12344) = 0u;
  *(a1 + 12360) = 0;
  *(a1 + 12344) = *(a2 + 12344);
  *(a1 + 12352) = *(a2 + 12352);
  *(a2 + 12360) = 0;
  *(a2 + 12352) = 0;
  *(a2 + 12344) = 0;
  *(a1 + 12368) = *(a2 + 12368);
  *(a1 + 12384) = 0u;
  *(a1 + 12376) = 0;
  *(a1 + 12376) = *(a2 + 12376);
  *(a1 + 12384) = *(a2 + 12384);
  *(a2 + 12392) = 0;
  *(a2 + 12384) = 0;
  *(a2 + 12376) = 0;
  *(a1 + 12416) = 0;
  *(a1 + 12400) = 0u;
  *(a1 + 12400) = *(a2 + 12400);
  *(a1 + 12416) = *(a2 + 12416);
  *(a2 + 12416) = 0;
  *(a2 + 12408) = 0;
  *(a2 + 12400) = 0;
  v40 = *(a2 + 12424);
  *(a2 + 12424) = 0;
  *(a1 + 12424) = v40;
  *(a1 + 12432) = *(a2 + 12432);
  *(a2 + 12432) = 0;
  v41 = *(a2 + 12440);
  *(a1 + 12440) = v41;
  v42 = *(a2 + 12448);
  *(a1 + 12448) = v42;
  *(a1 + 12456) = *(a2 + 12456);
  if (v42)
  {
    v43 = *(v41 + 8);
    v44 = *(a1 + 12432);
    if ((v44 & (v44 - 1)) != 0)
    {
      if (v43 >= v44)
      {
        v43 %= v44;
      }
    }

    else
    {
      v43 &= v44 - 1;
    }

    *(v40 + 8 * v43) = a1 + 12440;
    *(a2 + 12440) = 0;
    *(a2 + 12448) = 0;
  }

  *(a1 + 12464) = off_26696C8;
  v45 = *(a2 + 12488);
  *(a1 + 12472) = *(a2 + 12472);
  *(a1 + 12488) = v45;
  *(a2 + 12488) = 0;
  *(a2 + 12480) = 0;
  *(a2 + 12472) = 0;
  *(a1 + 12464) = off_266BBB8;
  *(v4 + 2376) = *(v5 + 2376);
  *(a1 + 12504) = off_26696C8;
  v46 = *(a2 + 12512);
  *(a1 + 12528) = *(a2 + 12528);
  *(a1 + 12512) = v46;
  *(a2 + 12528) = 0;
  *(a2 + 12520) = 0;
  *(a2 + 12512) = 0;
  *(a1 + 12504) = off_266BBF0;
  *(v4 + 2416) = *(v5 + 2416);
  v47 = *(a2 + 12544);
  *(a2 + 12544) = 0;
  *(a1 + 12544) = v47;
  *(a1 + 12552) = *(a2 + 12552);
  *(a2 + 12552) = 0;
  v48 = *(a2 + 12560);
  *(a1 + 12560) = v48;
  v49 = *(a2 + 12568);
  *(a1 + 12568) = v49;
  *(a1 + 12576) = *(a2 + 12576);
  if (v49)
  {
    v50 = *(v48 + 8);
    v51 = *(a1 + 12552);
    if ((v51 & (v51 - 1)) != 0)
    {
      if (v50 >= v51)
      {
        v50 %= v51;
      }
    }

    else
    {
      v50 &= v51 - 1;
    }

    *(v47 + 8 * v50) = a1 + 12560;
    *(a2 + 12560) = 0;
    *(a2 + 12568) = 0;
  }

  v52 = *(a2 + 12584);
  *(a2 + 12584) = 0;
  *(a1 + 12584) = v52;
  *(a1 + 12592) = *(a2 + 12592);
  *(a2 + 12592) = 0;
  v53 = *(a2 + 12600);
  *(a1 + 12600) = v53;
  v54 = *(a2 + 12608);
  *(a1 + 12608) = v54;
  *(a1 + 12616) = *(a2 + 12616);
  if (v54)
  {
    v55 = *(v53 + 8);
    v56 = *(a1 + 12592);
    if ((v56 & (v56 - 1)) != 0)
    {
      if (v55 >= v56)
      {
        v55 %= v56;
      }
    }

    else
    {
      v55 &= v56 - 1;
    }

    *(v52 + 8 * v55) = a1 + 12600;
    *(a2 + 12600) = 0;
    *(a2 + 12608) = 0;
  }

  *(a1 + 12624) = *(a2 + 12624);
  *(a1 + 12640) = *(a2 + 12640);
  *(a2 + 12640) = 0;
  *(a2 + 12624) = 0u;
  *(v4 + 2528) = *(v5 + 2528);
  return a1;
}

uint64_t sub_61009C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 96) = v4;
  v5 = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = v5;
  v6 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v6;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = *(a2 + 232);
  v8 = *(a2 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 256) = v8;
  v9 = *(a2 + 264);
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 264) = v9;
  v10 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v10;
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 272) = 0;
  v11 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 296) = v11;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 296) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  v12 = *(a2 + 416);
  *(a2 + 408) = 0;
  *(a2 + 416) = 0;
  *(a1 + 416) = v12;
  LODWORD(v12) = *(a2 + 424);
  *(a1 + 428) = *(a2 + 428);
  *(a1 + 424) = v12;
  v13 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 432) = v13;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  *(a2 + 432) = 0;
  v14 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 456) = v14;
  *(a2 + 464) = 0;
  *(a2 + 472) = 0;
  *(a2 + 456) = 0;
  sub_5EA954(a1 + 480, a2 + 480);
  sub_5EA954(a1 + 1920, a2 + 1920);
  sub_5EA954(a1 + 3360, a2 + 3360);
  return a1;
}

__n128 sub_610348(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 16) = v3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a2 + 72) = 0u;
  v6 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v6;
  v7 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v7;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 168) = 0;
  *(a2 + 152) = 0u;
  v8 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 176) = v8;
  v9 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 192) = v9;
  *(a2 + 200) = 0u;
  *(a2 + 192) = 0;
  v10 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v10;
  *(a2 + 224) = 0u;
  *(a2 + 216) = 0;
  v11 = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 240) = v11;
  *(a2 + 256) = 0;
  *(a2 + 240) = 0u;
  v12 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 264) = v12;
  *(a2 + 280) = 0;
  *(a2 + 264) = 0u;
  v13 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v13;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 328) = 0;
  *(a2 + 312) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 352) = 0;
  *(a2 + 336) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 376) = 0;
  *(a2 + 360) = 0u;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 408) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 416) = 0;
  *(a2 + 400) = 0u;
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a2 + 456) = 0;
  *(a2 + 440) = 0u;
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = *(a2 + 480);
  *(a2 + 488) = 0;
  *(a2 + 472) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 512) = 0;
  *(a2 + 496) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a2 + 536) = 0;
  *(a2 + 520) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 560) = 0;
  *(a2 + 544) = 0u;
  v14 = *(a2 + 568);
  *(a2 + 568) = 0;
  *(a1 + 568) = v14;
  LODWORD(v14) = *(a2 + 576);
  *(a1 + 580) = *(a2 + 580);
  *(a1 + 576) = v14;
  v15 = *(a2 + 584);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 584) = v15;
  *(a2 + 584) = 0;
  *(a2 + 600) = 0;
  *(a2 + 592) = 0;
  v16 = *(a2 + 608);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 608) = v16;
  *(a2 + 624) = 0;
  *(a2 + 616) = 0;
  *(a2 + 608) = 0;
  *(a1 + 632) = 0;
  *(a1 + 664) = -1;
  v17 = *(a2 + 664);
  if (v17 != -1)
  {
    v18 = a1;
    v21 = a1 + 632;
    (off_266BD00[v17])(&v21, a2 + 632);
    a1 = v18;
    *(v18 + 664) = v17;
  }

  *(a1 + 672) = *(a2 + 672);
  v19 = *(a2 + 680);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 680) = v19;
  *(a2 + 696) = 0;
  *(a2 + 688) = 0;
  *(a2 + 680) = 0;
  *(a1 + 704) = *(a2 + 704);
  result = *(a2 + 712);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 712) = result;
  *(a2 + 728) = 0;
  *(a2 + 720) = 0;
  *(a2 + 712) = 0;
  *(a1 + 736) = *(a2 + 736);
  return result;
}

uint64_t sub_6106D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 12656;
    sub_5C186C(i - 12656);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_610738(uint64_t *a1, __int128 *a2, void *a3)
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
  sub_513D48(a1, &__p);
  v7 = a1[1];
  sub_514094(&__p, v10);
  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_61086C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_51405C(va);
  _Unwind_Resume(a1);
}

void sub_610880(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_6109E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v13 = *(v10 + v11 + 152);
  if (v13)
  {
    *(v10 + v11 + 160) = v13;
    operator delete(v13);
  }

  sub_3E5388(v10 + v11);
  if (v11)
  {
    v14 = v10 + v11 - 176;
    v15 = -v11;
    do
    {
      sub_5C17B4(v14);
      v14 -= 176;
      v15 += 176;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_5F4178(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_610A44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAF8AF8AF8AF8AF8BLL * ((v9 - v10) >> 5)) >= a5)
    {
      v15 = v10 - a2;
      if ((0xAF8AF8AF8AF8AF8BLL * ((v10 - a2) >> 5)) >= a5)
      {
        v27 = a2 + 1120 * a5;
        v28 = v10 - 1120 * a5;
        for (i = a1[1]; v28 < v10; i = v30 + 1120)
        {
          v30 = sub_529850(i, v28);
          v28 += 1120;
        }

        a1[1] = i;
        if (v10 != v27)
        {
          v31 = v10 - 1120;
          v32 = v5 + 1120 * a5 - v10;
          v33 = v10 - 1120 - 1120 * a5;
          do
          {
            sub_52BE74(v31, v33);
            v31 -= 1120;
            v33 -= 1120;
            v32 += 1120;
          }

          while (v32);
        }

        v34 = v7 + 1120 * a5;
        v35 = v5;
        do
        {
          sub_52C990(v35, v7);
          v7 += 1120;
          v35 += 1120;
        }

        while (v7 != v34);
      }

      else
      {
        v17 = v15 + a3;
        v46 = a1[1];
        v47 = v10;
        __p = a1;
        v42 = &v46;
        v43 = &v47;
        LOBYTE(v44) = 0;
        v18 = v10;
        if (v15 + a3 != a4)
        {
          v19 = v15 + a3;
          do
          {
            sub_52B7D8(v18, v19);
            v19 += 1120;
            v18 = v47 + 1120;
            v47 += 1120;
          }

          while (v19 != a4);
        }

        a1[1] = v18;
        if (v15 >= 1)
        {
          v20 = v18 - 1120 * a5;
          for (j = v18; v20 < v10; v18 = v22 + 1120)
          {
            v22 = sub_529850(v18, v20);
            v20 += 1120;
          }

          a1[1] = v18;
          if (j != v5 + 1120 * a5)
          {
            v23 = j - 1120;
            v24 = v5 + 1120 * a5 - j;
            v25 = j - 1120 - 1120 * a5;
            do
            {
              sub_52BE74(v23, v25);
              v23 -= 1120;
              v25 -= 1120;
              v24 += 1120;
            }

            while (v24);
          }

          v26 = v5;
          do
          {
            sub_52C990(v26, v7);
            v7 += 1120;
            v26 += 1120;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5075075075075075 * ((v10 - *a1) >> 5);
      if (v12 > 0x3A83A83A83A83ALL)
      {
        sub_1794();
      }

      v13 = 0xAF8AF8AF8AF8AF8BLL * ((v9 - v11) >> 5);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x1D41D41D41D41DLL)
      {
        v14 = 0x3A83A83A83A83ALL;
      }

      else
      {
        v14 = v12;
      }

      v45 = a1;
      if (v14)
      {
        if (v14 <= 0x3A83A83A83A83ALL)
        {
          operator new();
        }

        sub_1808();
      }

      v36 = 32 * ((a2 - v11) >> 5);
      __p = 0;
      v42 = v36;
      v43 = v36;
      v44 = 0;
      v37 = 1120 * a5;
      v38 = v36 + 1120 * a5;
      do
      {
        sub_52B7D8(v36, v7);
        v36 += 1120;
        v7 += 1120;
        v37 -= 1120;
      }

      while (v37);
      v43 = v38;
      v5 = sub_610DDC(a1, &__p, v5);
      v39 = v42;
      while (v43 != v39)
      {
        v43 -= 140;
        sub_5EBD80(v45, v43);
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_610D94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_603860(va);
  _Unwind_Resume(a1);
}

void sub_610DA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5F4B9C(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

void sub_610DC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_603860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_610DDC(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a1[1];
  v8 = a2[1];
  v7 = a2[2];
  v20 = v7;
  if (v6 != a3)
  {
    v9 = a3;
    do
    {
      sub_529850(v7, v9);
      v9 += 1120;
      v7 = v20 + 1120;
      v20 += 1120;
    }

    while (v9 != v6);
    v10 = a3;
    do
    {
      sub_5EBD80(a1, v10);
      v10 += 1120;
    }

    while (v10 != v6);
  }

  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v11 = a2[1];
  v12 = *a1;
  v13 = v11 + *a1 - a3;
  v21 = v13;
  if (*a1 != a3)
  {
    v14 = v11 + v12 - a3;
    v15 = *a1;
    do
    {
      sub_529850(v14, v15);
      v15 += 1120;
      v14 = v21 + 1120;
      v21 += 1120;
    }

    while (v15 != a3);
    do
    {
      sub_5EBD80(a1, v12);
      v12 += 1120;
    }

    while (v12 != a3);
  }

  a2[1] = v13;
  v16 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v16;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return v8;
}

void sub_610F7C()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  LODWORD(v2) = 0;
  HIBYTE(v4[0]) = 14;
  strcpy(v3, "ROUTES_THROUGH");
  LODWORD(v4[1]) = 1;
  v6 = 9;
  strcpy(v5, "ROUTES_TO");
  LODWORD(v7) = 3;
  v9 = 11;
  strcpy(__p, "ROUTES_FROM");
  LODWORD(v10) = 2;
  xmmword_279A3B8 = 0u;
  unk_279A3C8 = 0u;
  dword_279A3D8 = 1065353216;
  sub_3A9A34(&xmmword_279A3B8, v0);
  sub_3A9A34(&xmmword_279A3B8, v3);
  sub_3A9A34(&xmmword_279A3B8, v5);
  sub_3A9A34(&xmmword_279A3B8, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v5[0]);
  if ((SHIBYTE(v4[0]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_6141B0(_Unwind_Exception *a1)
{
  if (qword_279A3A0)
  {
    qword_279A3A8 = qword_279A3A0;
    operator delete(qword_279A3A0);
  }

  _Unwind_Resume(a1);
}

void sub_614508(_Unwind_Exception *a1)
{
  sub_44D36C((v1 + 1632));
  if (*(v1 + 1631) < 0)
  {
    operator delete(*(v1 + 1608));
  }

  sub_615488((v1 + 1584));
  sub_528AB4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_61453C(uint64_t a1, uint64_t a2)
{
  sub_614924(a1, a2);
  sub_615084(a1 + 688, a2 + 688);
  *(a1 + 968) = *(a2 + 968);
  if (a1 == a2)
  {
    *(a1 + 1000) = *(a2 + 1000);
    *(a1 + 1056) = *(a2 + 1056);
    *(a1 + 1064) = *(a2 + 1064);
    *(a1 + 1096) = *(a2 + 1096);
  }

  else
  {
    sub_61532C((a1 + 976), *(a2 + 976), *(a2 + 984), (*(a2 + 984) - *(a2 + 976)) >> 3);
    *(a1 + 1000) = *(a2 + 1000);
    sub_146EC((a1 + 1008), *(a2 + 1008), *(a2 + 1016), (*(a2 + 1016) - *(a2 + 1008)) >> 2);
    v4 = (a1 + 1032);
    v5 = *(a2 + 1055);
    if (*(a1 + 1055) < 0)
    {
      if (v5 >= 0)
      {
        v7 = (a2 + 1032);
      }

      else
      {
        v7 = *(a2 + 1032);
      }

      if (v5 >= 0)
      {
        v8 = *(a2 + 1055);
      }

      else
      {
        v8 = *(a2 + 1040);
      }

      sub_13B38(v4, v7, v8);
    }

    else if ((*(a2 + 1055) & 0x80) != 0)
    {
      sub_13A68(v4, *(a2 + 1032), *(a2 + 1040));
    }

    else
    {
      v6 = *(a2 + 1032);
      *(a1 + 1048) = *(a2 + 1048);
      *v4 = v6;
    }

    *(a1 + 1056) = *(a2 + 1056);
    *(a1 + 1064) = *(a2 + 1064);
    sub_146EC((a1 + 1072), *(a2 + 1072), *(a2 + 1080), (*(a2 + 1080) - *(a2 + 1072)) >> 2);
    *(a1 + 1096) = *(a2 + 1096);
    sub_146EC((a1 + 1104), *(a2 + 1104), *(a2 + 1112), (*(a2 + 1112) - *(a2 + 1104)) >> 2);
  }

  sub_3E428((a1 + 1128), a2 + 1128);
  sub_3E428((a1 + 1152), a2 + 1152);
  v9 = *(a2 + 1176);
  *(a1 + 1180) = *(a2 + 1180);
  *(a1 + 1176) = v9;
  LOBYTE(v9) = *(a2 + 1186);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1186) = v9;
  if (a1 == a2)
  {
    v13 = *(a2 + 1216);
    *(a1 + 1232) = *(a2 + 1232);
    *(a1 + 1216) = v13;
    v14 = *(a2 + 1240);
    *(a1 + 1245) = *(a2 + 1245);
    *(a1 + 1240) = v14;
    v15 = *(a2 + 1280);
    *(a1 + 1288) = *(a2 + 1288);
    *(a1 + 1280) = v15;
    *(a1 + 1336) = *(a2 + 1336);
    *(a1 + 1384) = *(a2 + 1384);
    v16 = *(a2 + 1400);
    v17 = *(a2 + 1416);
    v18 = *(a2 + 1448);
    *(a1 + 1432) = *(a2 + 1432);
    *(a1 + 1448) = v18;
    *(a1 + 1400) = v16;
    *(a1 + 1416) = v17;
    LOWORD(v15) = *(a2 + 1488);
    *(a1 + 1490) = *(a2 + 1490);
    *(a1 + 1488) = v15;
    v19 = *(a2 + 1520);
    *(a1 + 1527) = *(a2 + 1527);
    *(a1 + 1520) = v19;
  }

  else
  {
    v10 = (a1 + 1192);
    v11 = *(a2 + 1215);
    if (*(a1 + 1215) < 0)
    {
      if (v11 >= 0)
      {
        v20 = (a2 + 1192);
      }

      else
      {
        v20 = *(a2 + 1192);
      }

      if (v11 >= 0)
      {
        v21 = *(a2 + 1215);
      }

      else
      {
        v21 = *(a2 + 1200);
      }

      sub_13B38(v10, v20, v21);
    }

    else if ((*(a2 + 1215) & 0x80) != 0)
    {
      sub_13A68(v10, *(a2 + 1192), *(a2 + 1200));
    }

    else
    {
      v12 = *(a2 + 1192);
      *(a1 + 1208) = *(a2 + 1208);
      *v10 = v12;
    }

    v22 = *(a2 + 1216);
    *(a1 + 1232) = *(a2 + 1232);
    *(a1 + 1216) = v22;
    v23 = *(a2 + 1240);
    *(a1 + 1245) = *(a2 + 1245);
    *(a1 + 1240) = v23;
    sub_4D88D0((a1 + 1256), *(a2 + 1256), *(a2 + 1264), (*(a2 + 1264) - *(a2 + 1256)) >> 4);
    v24 = *(a2 + 1280);
    *(a1 + 1288) = *(a2 + 1288);
    *(a1 + 1280) = v24;
    *(a1 + 1328) = *(a2 + 1328);
    sub_618D4(a1 + 1296, *(a2 + 1312), 0);
    *(a1 + 1336) = *(a2 + 1336);
    *(a1 + 1376) = *(a2 + 1376);
    sub_618D4(a1 + 1344, *(a2 + 1360), 0);
    *(a1 + 1384) = *(a2 + 1384);
    v25 = *(a2 + 1400);
    v26 = *(a2 + 1416);
    v27 = *(a2 + 1448);
    *(a1 + 1432) = *(a2 + 1432);
    *(a1 + 1448) = v27;
    *(a1 + 1400) = v25;
    *(a1 + 1416) = v26;
    sub_146EC((a1 + 1464), *(a2 + 1464), *(a2 + 1472), (*(a2 + 1472) - *(a2 + 1464)) >> 2);
    v28 = *(a2 + 1488);
    *(a1 + 1490) = *(a2 + 1490);
    *(a1 + 1488) = v28;
    v29 = (a1 + 1496);
    v30 = *(a2 + 1519);
    if (*(a1 + 1519) < 0)
    {
      if (v30 >= 0)
      {
        v32 = (a2 + 1496);
      }

      else
      {
        v32 = *(a2 + 1496);
      }

      if (v30 >= 0)
      {
        v33 = *(a2 + 1519);
      }

      else
      {
        v33 = *(a2 + 1504);
      }

      sub_13B38(v29, v32, v33);
    }

    else if ((*(a2 + 1519) & 0x80) != 0)
    {
      sub_13A68(v29, *(a2 + 1496), *(a2 + 1504));
    }

    else
    {
      v31 = *(a2 + 1496);
      *(a1 + 1512) = *(a2 + 1512);
      *v29 = v31;
    }

    v34 = *(a2 + 1520);
    *(a1 + 1527) = *(a2 + 1527);
    *(a1 + 1520) = v34;
    sub_146EC((a1 + 1536), *(a2 + 1536), *(a2 + 1544), (*(a2 + 1544) - *(a2 + 1536)) >> 2);
  }

  *(a1 + 1560) = *(a2 + 1560);
  return a1;
}

uint64_t sub_614924(uint64_t a1, uint64_t a2)
{
  sub_61554C(a1, a2);
  sub_61554C(a1 + 136, a2 + 136);
  if (a1 == a2)
  {
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 376) = *(a2 + 376);
    sub_4EE140(a1 + 384, (a2 + 384));
    goto LABEL_25;
  }

  sub_6156C0((a1 + 272), *(a2 + 272), *(a2 + 280), (*(a2 + 280) - *(a2 + 272)) >> 7);
  *(a1 + 296) = *(a2 + 296);
  sub_74300((a1 + 304), *(a2 + 304), *(a2 + 312), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 312) - *(a2 + 304)) >> 3));
  sub_35354C((a1 + 328), *(a2 + 328), *(a2 + 336), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 336) - *(a2 + 328)) >> 2));
  sub_74300((a1 + 352), *(a2 + 352), *(a2 + 360), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 360) - *(a2 + 352)) >> 3));
  *(a1 + 376) = *(a2 + 376);
  sub_4EE140(a1 + 384, (a2 + 384));
  v4 = (a1 + 568);
  v5 = *(a2 + 591);
  if (*(a1 + 591) < 0)
  {
    if (v5 >= 0)
    {
      v10 = (a2 + 568);
    }

    else
    {
      v10 = *(a2 + 568);
    }

    if (v5 >= 0)
    {
      v11 = *(a2 + 591);
    }

    else
    {
      v11 = *(a2 + 576);
    }

    sub_13B38(v4, v10, v11);
    v7 = a1 + 592;
    v8 = (a2 + 592);
    v9 = *(a2 + 615);
    if (*(a1 + 615) < 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((*(a2 + 591) & 0x80) == 0)
  {
    v6 = *(a2 + 568);
    *(a1 + 584) = *(a2 + 584);
    *v4 = v6;
    v7 = a1 + 592;
    v8 = (a2 + 592);
    v9 = *(a2 + 615);
    if (*(a1 + 615) < 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    if ((v9 & 0x80) != 0)
    {
      sub_13A68(v7, *(a2 + 592), *(a2 + 600));
    }

    else
    {
      v12 = *v8;
      *(v7 + 16) = v8[2];
      *v7 = v12;
    }

    goto LABEL_25;
  }

  sub_13A68(v4, *(a2 + 568), *(a2 + 576));
  v7 = a1 + 592;
  v8 = (a2 + 592);
  v9 = *(a2 + 615);
  if ((*(a1 + 615) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  if ((v9 & 0x80u) == 0)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(a2 + 592);
  }

  if ((v9 & 0x80u) == 0)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(a2 + 600);
  }

  sub_13B38(v7, v13, v14);
LABEL_25:
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  v15 = *(a2 + 640);
  v16 = *(a2 + 656);
  *(a1 + 665) = *(a2 + 665);
  *(a1 + 640) = v15;
  *(a1 + 656) = v16;
  return a1;
}

void sub_614B34(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 264) = 0;
  *(a1 + 396) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 364) = 0u;
  *(a1 + 448) = 0x3FF0000000000000;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 480) = 5;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0x7FFFFFFF;
  *(a1 + 624) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 601) = 0u;
  *(a1 + 640) = -1;
  *(a1 + 648) = 0x7FFFFFFF;
  *(a1 + 660) = 0;
  *(a1 + 652) = 0;
  *(a1 + 664) = -1;
  *(a1 + 672) = -1;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 1065353216;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 1065353216;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 1065353216;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 1065353216;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 1065353216;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 1065353216;
  *(a1 + 960) = 0;
  *(a1 + 944) = 0u;
  *(a1 + 936) = 0;
  *(a1 + 928) = 0;
  *(a1 + 968) = 11;
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 1000) = 11;
  *(a1 + 1024) = 0;
  *(a1 + 1008) = 0u;
  operator new();
}

void sub_614E10(_Unwind_Exception *a1)
{
  sub_6BB60(v1 + 1296);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 1264) = v5;
    operator delete(v5);
    if ((*(v1 + 1215) & 0x80000000) == 0)
    {
LABEL_3:
      v6 = *(v1 + 1152);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v1 + 1215) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 1192));
  v6 = *(v1 + 1152);
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 1128);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v6);
  v7 = *(v1 + 1128);
  if (!v7)
  {
LABEL_5:
    v8 = (v1 + 1072);
    v9 = *v2;
    if (!*v2)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v7);
  v8 = (v1 + 1072);
  v9 = *v2;
  if (!*v2)
  {
LABEL_6:
    v10 = *v8;
    if (!*v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(v1 + 1112) = v9;
  operator delete(v9);
  v10 = *v8;
  if (!*v8)
  {
LABEL_8:
    sub_5285C8(v1 + 968);
    sub_52861C(v1 + 688);
    sub_5287C0(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v1 + 1080) = v10;
  operator delete(v10);
  goto LABEL_8;
}

void sub_614EE0(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 1016) = v5;
    operator delete(v5);
    v6 = *v2;
    if (*v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *v2;
    if (*v2)
    {
LABEL_5:
      *(v1 + 984) = v6;
      operator delete(v6);
      sub_52861C(v1 + 688);
      sub_5287C0(v1);
      _Unwind_Resume(a1);
    }
  }

  JUMPOUT(0x614E68);
}

void sub_614F28(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 == a2)
  {
    goto LABEL_2;
  }

  do
  {
    v5 = *(v4 - 24);
    if (v5)
    {
      *(v4 - 16) = v5;
      operator delete(v5);
    }

    v6 = *(v4 - 56);
    if (v6)
    {
      v7 = *(v4 - 48);
      v8 = *(v4 - 56);
      if (v7 == v6)
      {
LABEL_30:
        *(v4 - 48) = v6;
        operator delete(v8);
        goto LABEL_31;
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
          goto LABEL_24;
        }

LABEL_25:
        v16 = *(v7 - 136);
        if (v16)
        {
          *(v7 - 128) = v16;
          operator delete(v16);
        }

        v7 -= 144;
        if (v7 == v6)
        {
          v8 = *(v4 - 56);
          goto LABEL_30;
        }
      }

      operator delete(*(v7 - 88));
      v15 = *(v7 - 112);
      if (!v15)
      {
        goto LABEL_25;
      }

LABEL_24:
      *(v7 - 104) = v15;
      operator delete(v15);
      goto LABEL_25;
    }

LABEL_31:
    v17 = *(v4 - 104);
    if (v17)
    {
      *(v4 - 96) = v17;
      operator delete(v17);
    }

    v4 -= 128;
  }

  while (v4 != a2);
LABEL_2:
  *(a1 + 8) = a2;
}

uint64_t sub_615084(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (result == a2)
  {
    v5 = *(a2 + 240);
    *(result + 248) = *(a2 + 248);
    *(result + 240) = v5;
  }

  else
  {
    *(result + 32) = *(a2 + 32);
    sub_4B5F48(result, *(a2 + 16), 0);
    *(v2 + 72) = *(a2 + 72);
    sub_4B5F48(v2 + 40, *(a2 + 56), 0);
    *(v2 + 112) = *(a2 + 112);
    sub_4B5F48(v2 + 80, *(a2 + 96), 0);
    *(v2 + 152) = *(a2 + 152);
    sub_4B5F48(v2 + 120, *(a2 + 136), 0);
    *(v2 + 192) = *(a2 + 192);
    sub_4B5F48(v2 + 160, *(a2 + 176), 0);
    *(v2 + 232) = *(a2 + 232);
    sub_5CE3D0(v2 + 200, *(a2 + 216), 0);
    v4 = *(a2 + 240);
    *(v2 + 248) = *(a2 + 248);
    *(v2 + 240) = v4;
    sub_615198((v2 + 256), *(a2 + 256), *(a2 + 264), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 264) - *(a2 + 256)) >> 2));
    return v2;
  }

  return result;
}

char *sub_615198(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 2) < a4)
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

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 2) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 2);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 2);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 2);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

char *sub_61532C(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
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

void ***sub_615488(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            do
            {
              v10 = *(v9 - 9);
              if (v10)
              {
                *(v9 - 8) = v10;
                operator delete(v10);
              }

              v11 = *(v9 - 12);
              if (v11)
              {
                *(v9 - 11) = v11;
                operator delete(v11);
              }

              v9 -= 176;
            }

            while (v9 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

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

__n128 sub_61554C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) == *(a2 + 128))
  {
    if (*(a1 + 128))
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v3;
      if (a1 == a2)
      {
        result = *(a2 + 48);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 48) = result;
        *(a1 + 96) = *(a2 + 96);
      }

      else
      {
        sub_4F3B08((a1 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 4);
        v5 = *(a2 + 48);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 48) = v5;
        sub_4F4EE0((a1 + 72), *(a2 + 72), *(a2 + 80), 0x8E38E38E38E38E39 * ((*(a2 + 80) - *(a2 + 72)) >> 4));
        *(a1 + 96) = *(a2 + 96);
        sub_4F3C68((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 4);
      }
    }
  }

  else if (*(a1 + 128))
  {
    v7 = *(a1 + 104);
    if (v7)
    {
      *(a1 + 112) = v7;
      operator delete(v7);
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      v9 = *(a1 + 80);
      v10 = *(a1 + 72);
      if (v9 != v8)
      {
        do
        {
          v9 = sub_4F0FB4(v9 - 144);
        }

        while (v9 != v8);
        v10 = *(a1 + 72);
      }

      *(a1 + 80) = v8;
      operator delete(v10);
    }

    v11 = *(a1 + 24);
    if (v11)
    {
      *(a1 + 32) = v11;
      operator delete(v11);
    }

    *(a1 + 128) = 0;
  }

  else
  {
    sub_4F1328(a1, a2);
    *(a1 + 128) = 1;
  }

  return result;
}

void sub_6156C0(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 7)
  {
    if (v8)
    {
      v9 = a4;
      sub_614F28(a1, *a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 57))
    {
      v10 = v7 >> 6;
      if (v7 >> 6 <= a4)
      {
        v10 = a4;
      }

      v11 = v7 >= 0x7FFFFFFFFFFFFF80;
      v12 = 0x1FFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 57))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (a4 <= (v13 - v8) >> 7)
  {
    if (a2 != a3)
    {
      v23 = 0;
      do
      {
        while (1)
        {
          v25 = &a2[v23];
          v26 = v8 + v23 * 16;
          v27 = a2[v23];
          *(v26 + 16) = *&a2[v23 + 1];
          *v26 = v27;
          if (a2 == v8)
          {
            break;
          }

          sub_4F3B08((v26 + 24), *(v25 + 3), *(v25 + 4), (*(v25 + 4) - *(v25 + 3)) >> 4);
          v24 = v25[3];
          *(v26 + 64) = *(v25 + 8);
          *(v26 + 48) = v24;
          sub_4F4EE0((v26 + 72), *(v25 + 9), *(v25 + 10), 0x8E38E38E38E38E39 * ((*(v25 + 10) - *(v25 + 9)) >> 4));
          *(v26 + 96) = *(v25 + 24);
          sub_4F3C68((v26 + 104), *(v25 + 13), *(v25 + 14), (*(v25 + 14) - *(v25 + 13)) >> 4);
          v23 += 8;
          if (&a2[v23] == a3)
          {
            goto LABEL_27;
          }
        }

        v28 = v25[3];
        *(v26 + 64) = *(v25 + 8);
        *(v26 + 48) = v28;
        *(v26 + 96) = *(v25 + 24);
        v23 += 8;
      }

      while (&a2[v23] != a3);
LABEL_27:
      v8 += v23 * 16;
    }

    sub_614F28(a1, v8);
  }

  else
  {
    v15 = (a2 + v14);
    if (v13 != v8)
    {
      v16 = 0;
      do
      {
        while (1)
        {
          v18 = &a2[v16 / 0x10];
          v19 = v8 + v16;
          v20 = a2[v16 / 0x10];
          *(v19 + 16) = *&a2[v16 / 0x10 + 1];
          *v19 = v20;
          if (a2 == v8)
          {
            break;
          }

          sub_4F3B08((v19 + 24), *(v18 + 3), *(v18 + 4), (*(v18 + 4) - *(v18 + 3)) >> 4);
          v17 = v18[3];
          *(v19 + 64) = *(v18 + 8);
          *(v19 + 48) = v17;
          sub_4F4EE0((v19 + 72), *(v18 + 9), *(v18 + 10), 0x8E38E38E38E38E39 * ((*(v18 + 10) - *(v18 + 9)) >> 4));
          *(v19 + 96) = *(v18 + 24);
          sub_4F3C68((v19 + 104), *(v18 + 13), *(v18 + 14), (*(v18 + 14) - *(v18 + 13)) >> 4);
          v16 += 128;
          if (v14 == v16)
          {
            goto LABEL_17;
          }
        }

        v21 = v18[3];
        *(v19 + 64) = *(v18 + 8);
        *(v19 + 48) = v21;
        *(v19 + 96) = *(v18 + 24);
        v16 += 128;
      }

      while (v14 != v16);
LABEL_17:
      v13 = a1[1];
    }

    v29 = v13;
    v22 = v13;
    if (v15 != a3)
    {
      v22 = v13;
      do
      {
        sub_4F1328(v22, v15);
        v15 += 8;
        v22 = v29 + 128;
        v29 += 128;
      }

      while (v15 != a3);
    }

    a1[1] = v22;
  }
}

void sub_615A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_527BEC(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_615A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_527BEC(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_615AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a1 + 4944);
  if (sub_4C35B0(a2) != 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 1592) - *(v10 + 1584)) >> 3))
  {
    if (!sub_7E7E4(3u))
    {
LABEL_30:
      bzero(a5, 0x1E80uLL);
      return sub_60AB38(a5);
    }

    sub_19594F8(&v38);
    sub_4A5C(&v38, "Got ", 4);
    v22 = std::ostream::operator<<();
    sub_4A5C(v22, " legs from input ETA Steps but the user route has", 49);
    sub_4C35B0(a2);
    v23 = std::ostream::operator<<();
    sub_4A5C(v23, " route legs.", 12);
    if ((v48 & 0x10) != 0)
    {
      v25 = v47;
      if (v47 < v44)
      {
        v47 = v44;
        v25 = v44;
      }

      v26 = v43;
      v24 = v25 - v43;
      if (v25 - v43 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if ((v48 & 8) == 0)
      {
        v24 = 0;
        v37 = 0;
        goto LABEL_24;
      }

      v26 = v41;
      v24 = v42 - v41;
      if (v42 - v41 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_32:
        sub_3244();
      }
    }

    if (v24 >= 0x17)
    {
      operator new();
    }

    v37 = v24;
    if (v24)
    {
      memmove(&__dst, v26, v24);
    }

LABEL_24:
    *(&__dst + v24) = 0;
    sub_7E854(&__dst, 3u);
LABEL_25:
    if (v37 < 0)
    {
      operator delete(__dst);
    }

    if (v46 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v40);
    std::ostream::~ostream();
    std::ios::~ios();
    goto LABEL_30;
  }

  v11 = *(a1 + 4944);
  v35 = 0;
  if (*(nullsub_1(v11) + 128) == 1)
  {
    v12 = nullsub_1(v11);
    sub_4F96F4(v12, &v33);
    if (v33 != v34)
    {
      v13 = v33;
      do
      {
        if (*(v13 + 8) == *(v13 + 16))
        {
          goto LABEL_8;
        }

        v13 += 144;
      }

      while (v13 != v34);
      v35 = 2;
      v14 = 0x8E38E38E38E38E39 * ((v34 - v33) >> 4);
      if (v14 == sub_4C35B0(a2))
      {
        goto LABEL_8;
      }

      if (sub_7E7E4(3u))
      {
        sub_19594F8(&v38);
        sub_4A5C(&v38, "Got ", 4);
        v27 = std::ostream::operator<<();
        sub_4A5C(v27, " from SessionStateContext but the user route has ", 49);
        sub_4C35B0(a2);
        v28 = std::ostream::operator<<();
        sub_4A5C(v28, " route legs.", 12);
        if ((v48 & 0x10) != 0)
        {
          v30 = v47;
          if (v47 < v44)
          {
            v47 = v44;
            v30 = v44;
          }

          v31 = &v43;
        }

        else
        {
          if ((v48 & 8) == 0)
          {
            v29 = 0;
            v37 = 0;
LABEL_47:
            *(&__dst + v29) = 0;
            sub_7E854(&__dst, 3u);
            goto LABEL_25;
          }

          v31 = &v41;
          v30 = v42;
        }

        v32 = *v31;
        v29 = v30 - *v31;
        if (v29 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v29 >= 0x17)
        {
          operator new();
        }

        v37 = v30 - *v31;
        if (v29)
        {
          memmove(&__dst, v32, v29);
        }

        goto LABEL_47;
      }

      goto LABEL_30;
    }
  }

LABEL_8:
  v15 = sub_68C444(a5, a2);
  sub_68E878(v15, 1);
  v16 = sub_58BBC(a2);
  v17 = v16[1] - *v16;
  if (v17)
  {
    v18 = 0;
    v19 = 0xE21A291C077975B9 * (v17 >> 3);
    do
    {
      v20 = sub_68C454(a5, v18);
      *(v20 + 10121) = 1;
      sub_6162A4(a1, a2, v18, a3, &v35, v20);
      sub_616688(a1, a2, v18++, a4, v20);
    }

    while (v19 != v18);
  }

  return sub_616880(a1, a2, a5);
}

void sub_616038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  _Unwind_Resume(a1);
}

void sub_616288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_419F70(va);
  sub_616CD4(v3 - 112);
  _Unwind_Resume(a1);
}

void sub_6162A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int *a5, void *a6)
{
  if (*a4 == a4[1])
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v11 = (*a4 + 24 * a3);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v13 = *v11;
    v12 = v11[1];
    if (v12 != v13)
    {
      if (((v12 - v13) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }
  }

  v14 = nullsub_1(*(a1 + 4944));
  v49 = 0;
  v50 = 0;
  v51 = 0;
  if (*(nullsub_1(v14) + 128) == 1)
  {
    v15 = nullsub_1(v14);
    sub_4F96F4(v15, __p);
    if (__p[0] != __p[1])
    {
      v16 = __p[0] + 144 * a3;
      if (&v49 != (v16 + 8))
      {
        sub_31F64(&v49, *(v16 + 1), *(v16 + 2), (*(v16 + 2) - *(v16 + 1)) >> 3);
      }
    }
  }

  v17 = *(a1 + 4944);
  v18 = (*(v17 + 1584) + 24 * a3);
  if (a3 || (v19 = *(v17 + 1808), v19 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v40 = sub_4C49C0(a2, a3);
    sub_6070B0(v40, &v52, v18, &v49, *a5, __p);
    v41 = (a6 + 141);
    v42 = a6[141];
    if (v42)
    {
      v43 = a6[142];
      v44 = a6[141];
      if (v43 != v42)
      {
        do
        {
          v43 = sub_5C25A8(v43 - 2616);
        }

        while (v43 != v42);
        v44 = *v41;
      }

      a6[142] = v42;
      operator delete(v44);
      *v41 = 0;
      a6[142] = 0;
      a6[143] = 0;
    }

    *v41 = *__p;
    a6[143] = v48;
    goto LABEL_43;
  }

  v20 = v18[1];
  v21 = *v18;
  v22 = 0x2E8BA2E8BA2E8BA3 * ((v20 - *v18) >> 4);
  v23 = 0;
  if (v20 != v21)
  {
    if (v22 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v22;
    }

    v25 = (v21 + 16);
    while (1)
    {
      v26 = *v25;
      v25 += 22;
      v27 = v19 - v26;
      if (v19 < v26)
      {
        break;
      }

      ++v23;
      v19 = v27;
      if (v24 == v23)
      {
        v19 = v27;
        v23 = v24;
        break;
      }
    }
  }

  v28 = v21 + 176 * (v23 - (v23 == v22));
  __p[0] = 0;
  __p[1] = 0;
  v48 = 0;
  sub_616DDC(__p, v28, v20, 0x2E8BA2E8BA2E8BA3 * ((v20 - v28) >> 4));
  if (v23 == v22)
  {
    v29 = 0;
  }

  else
  {
    v29 = v19;
  }

  *(__p[0] + 2) -= v29;
  v30 = sub_4C49C0(a2, 0);
  sub_6070B0(v30, &v52, __p, &v49, *a5, &v45);
  v31 = (a6 + 141);
  v32 = a6[141];
  if (v32)
  {
    v33 = a6[142];
    v34 = a6[141];
    if (v33 != v32)
    {
      do
      {
        v33 = sub_5C25A8(v33 - 2616);
      }

      while (v33 != v32);
      v34 = *v31;
    }

    a6[142] = v32;
    operator delete(v34);
    *v31 = 0;
    a6[142] = 0;
    a6[143] = 0;
  }

  *v31 = v45;
  a6[143] = v46;
  v35 = __p[0];
  if (!__p[0])
  {
LABEL_43:
    v37 = v49;
    if (!v49)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v36 = __p[1];
  if (__p[1] == __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
    v37 = v49;
    if (!v49)
    {
      goto LABEL_45;
    }

LABEL_44:
    v50 = v37;
    operator delete(v37);
    goto LABEL_45;
  }

  do
  {
    v38 = *(v36 - 9);
    if (v38)
    {
      *(v36 - 8) = v38;
      operator delete(v38);
    }

    v39 = *(v36 - 12);
    if (v39)
    {
      *(v36 - 11) = v39;
      operator delete(v39);
    }

    v36 -= 176;
  }

  while (v36 != v35);
  __p[1] = v35;
  operator delete(__p[0]);
  v37 = v49;
  if (v49)
  {
    goto LABEL_44;
  }

LABEL_45:
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }
}

void sub_616624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_616688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_4C49C0(a2, a3);
  v11 = nullsub_1(*(a1 + 4944));
  sub_60E420(a5, *(a1 + 4936));
  sub_616948(a5);
  sub_7B5F18(*(a1 + 1760), a5, &v22);
  v12 = a5[927];
  if (v12)
  {
    v13 = a5[928];
    v14 = a5[927];
    if (v13 != v12)
    {
      do
      {
        v13 = sub_3A9518(v13 - 1120);
      }

      while (v13 != v12);
      v14 = a5[927];
    }

    a5[928] = v12;
    operator delete(v14);
  }

  *(a5 + 927) = v22;
  a5[929] = v23;
  if (*(*(a1 + 4944) + 1232) == 2)
  {
    sub_928A9C(*(a1 + 1848), a5);
  }

  if (sub_6BA50C(*(a1 + 1720)))
  {
    v15 = *(a1 + 1840);
    v16 = 0.0;
    if (!a3)
    {
      v17 = *(a1 + 1840);
      v18 = sub_73EC4(a2);
      v15 = v17;
      v16 = *v18;
    }

    sub_8725B8(v15, v10, a5, v16);
    sub_616AAC(*(a1 + 1680), a5);
    sub_8178D8(*(a1 + 1832), a5);
    sub_6BA350(*(a1 + 1720), a5);
  }

  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v22 = vnegq_f64(v19);
  if (*(nullsub_1(v11) + 128) == 1)
  {
    v20 = nullsub_1(v11);
    sub_4F96F4(v20, v21);
    if (v21[0] != v21[1])
    {
      v22 = *(v21[0] + 144 * a3 + 104);
    }
  }

  sub_7D4110(*(a1 + 1792), &v22, a5);
  if (*(*(a1 + 4944) + 1529) == 1 && sub_4C4A80(a2))
  {
    if (sub_453260(a2))
    {
      sub_58EBBC(*(a1 + 1656), a4, a5);
    }
  }
}

uint64_t sub_616880(uint64_t a1, uint64_t a2, char **a3)
{
  sub_810754(*(a1 + 1664), a2, a3);
  sub_7B7B20(*(a1 + 1760), a3, &__p);
  sub_68F334(a3, &__p);
  v5 = __p;
  if (__p)
  {
    v6 = v10;
    v7 = __p;
    if (v10 != __p)
    {
      do
      {
        v6 = sub_3A9518(v6 - 1120);
      }

      while (v6 != v5);
      v7 = __p;
    }

    v10 = v5;
    operator delete(v7);
  }

  sub_7DE2CC(*(a1 + 1800), *(a1 + 4936), *(a1 + 4944) + 968, a3);
  return sub_58F68C(*(a1 + 1656), a3);
}

void sub_616934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5706DC(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_616948(uint64_t a1)
{
  v2 = sub_3CF22C(a1);
  v3 = *(v2 + 24) - *(v2 + 16);
  v4 = *(a1 + 1200);
  v5 = (*(a1 + 1208) - v4) >> 2;
  if (v3 >> 2 <= v5)
  {
    if (v3 >> 2 < v5)
    {
      *(a1 + 1208) = v4 + v3;
    }
  }

  else
  {
    sub_617214(a1 + 1200, (v3 >> 2) - v5);
  }

  v6 = sub_4D26AC(a1);
  result = sub_3CF22C(a1);
  v8 = *(a1 + 1208) - *(a1 + 1200);
  if (v8)
  {
    v9 = 0;
    v10 = result[64];
    v11 = v10 / 10 + v6;
    if (v10 < 0)
    {
      v12 = -5;
    }

    else
    {
      v12 = 5;
    }

    v13 = 103 * (v12 + v10 % 10);
    v14 = v8 >> 2;
    v15 = v11 + ((v13 >> 15) & 1) + (v13 >> 10);
    do
    {
      v16 = sub_4D2720(a1, v9, 0);
      if (v16 < 0)
      {
        v17 = -5;
      }

      else
      {
        v17 = 5;
      }

      v15 += v16 / 10 + (((103 * (v17 + v16 % 10)) >> 15) & 1) + ((103 * (v17 + v16 % 10)) >> 10);
      result = sub_617018((a1 + 1200), v9);
      *result = v15;
      ++v9;
    }

    while (v14 != v9);
  }

  return result;
}

void sub_616AAC(uint64_t a1, void *a2)
{
  v4 = sub_588E0(*(a1 + 3904));
  v5 = sub_5FC5C();
  if (v4 != v5)
  {
    v6 = v5;
    do
    {
      if (*(v4 + 48) != 5)
      {
        sub_5AF20();
      }

      v7 = *(v4 + 40);
      HIBYTE(v17) = 5;
      strcpy(__p, "scope");
      v8 = sub_5F8FC(v7, __p);
      v9 = *(v8 + 23);
      if (v9 < 0)
      {
        if (v8[1] == 5)
        {
          v8 = *v8;
LABEL_11:
          v11 = *v8 == 1953853298 && *(v8 + 4) == 101;
          if ((SHIBYTE(v17) & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

LABEL_20:
          operator delete(__p[0]);
          goto LABEL_21;
        }
      }

      else if (v9 == 5)
      {
        goto LABEL_11;
      }

      v11 = 0;
      if (SHIBYTE(v17) < 0)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (v11)
      {
        sub_617378(a1, a2, v7, v18);
        sub_61756C(a1, v4 + 16, v18, __p);
        if (!sub_5FC6C(__p))
        {
          sub_618594((a2 + 1558), __p, v4 + 16);
        }

        v12 = v17;
        if (v17)
        {
          do
          {
            v14 = *v12;
            v15 = *(v12 + 12);
            if (v15 != -1)
            {
              (off_266BD28[v15])(&v20, v12 + 5);
            }

            *(v12 + 12) = -1;
            if (*(v12 + 39) < 0)
            {
              operator delete(v12[2]);
            }

            operator delete(v12);
            v12 = v14;
          }

          while (v14);
        }

        v13 = __p[0];
        __p[0] = 0;
        if (v13)
        {
          operator delete(v13);
        }

        if (v19 < 0)
        {
          operator delete(v18[0]);
        }
      }

      v4 = *v4;
    }

    while (v4 != v6);
  }
}