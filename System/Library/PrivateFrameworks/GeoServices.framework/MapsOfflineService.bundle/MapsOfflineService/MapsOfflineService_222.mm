uint64_t sub_D4CDD0(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = *(result + 16);
      v3 = *(result + 8);
      if (v2 != v1)
      {
        v4 = result;
        do
        {
          v5 = v2 - 240;
          sub_A30978(v2 - 232);
          v2 = v5;
        }

        while (v5 != v1);
        result = v4;
        v3 = *(v4 + 8);
      }

      *(result + 16) = v1;
      v6 = result;
      operator delete(v3);
      return v6;
    }
  }

  return result;
}

void sub_D4D5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a50);
  sub_D4D890(v50);
  sub_11ABCB4(&a24);
  _Unwind_Resume(a1);
}

__n128 sub_D4D674(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 288) == 1)
  {
    sub_49C5C0(a1, a2);
    v4 = *(a1 + 240);
    if (v4)
    {
      *(a1 + 248) = v4;
      operator delete(v4);
      *(a1 + 240) = 0;
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
    }

    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    v5 = *(a1 + 264);
    if (v5)
    {
      *(a1 + 272) = v5;
      operator delete(v5);
      *(a1 + 264) = 0;
      *(a1 + 272) = 0;
      *(a1 + 280) = 0;
    }

    *(a1 + 264) = *(a2 + 264);
    result = *(a2 + 272);
    *(a1 + 272) = result;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
  }

  else
  {
    *a1 = *a2;
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    v9 = *(a2 + 48);
    *(a1 + 63) = *(a2 + 63);
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
    *(a1 + 16) = v7;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    v10 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v10;
    v11 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v11;
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a2 + 200) = 0;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 240) = 0;
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    *(a1 + 264) = *(a2 + 264);
    result = *(a2 + 272);
    *(a1 + 272) = result;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
    *(a1 + 288) = 1;
  }

  return result;
}

void *sub_D4D83C(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[30];
  if (v3)
  {
    a1[31] = v3;
    operator delete(v3);
  }

  return sub_49AEC0(a1);
}

void *sub_D4D890(uint64_t a1)
{
  if (*(a1 + 312) == 1)
  {
    v2 = *(a1 + 288);
    if (v2)
    {
      *(a1 + 296) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 264);
    if (v3)
    {
      *(a1 + 272) = v3;
      operator delete(v3);
    }

    sub_49AEC0((a1 + 24));
  }

  return sub_A396C4(a1);
}

double sub_D4D8F8(uint64_t a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0xE38E38E38E38E3)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 5) >= 0x71C71C71C71C71)
  {
    v5 = 0xE38E38E38E38E3;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xE38E38E38E38E3)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 32 * ((*(a1 + 8) - *a1) >> 5);
  v6 = *(a2 + 48);
  *(v17 + 32) = *(a2 + 32);
  *(v17 + 48) = v6;
  *(v17 + 63) = *(a2 + 63);
  v7 = *(a2 + 16);
  *v17 = *a2;
  *(v17 + 16) = v7;
  *(v17 + 72) = *(a2 + 72);
  *(v17 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(v17 + 112) = *(a2 + 112);
  *(v17 + 96) = *(a2 + 96);
  *(v17 + 136) = *(a2 + 136);
  *(v17 + 120) = *(a2 + 120);
  *(v17 + 152) = *(a2 + 152);
  v8 = *(a2 + 160);
  v9 = *(a2 + 176);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(v17 + 160) = v8;
  *(v17 + 176) = v9;
  *(v17 + 192) = *(a2 + 192);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(v17 + 200) = *(a2 + 200);
  *(v17 + 216) = *(a2 + 216);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v10 = *(a2 + 240);
  *(v17 + 224) = *(a2 + 224);
  *(v17 + 240) = v10;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v11 = *(a2 + 264);
  *(v17 + 256) = *(a2 + 256);
  *(v17 + 264) = v11;
  *(v17 + 272) = *(a2 + 272);
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  v12 = *(a1 + 8);
  v13 = 288 * v2 + *a1 - v12;
  sub_C2D93C(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = 288 * v2 + 288;
  *(a1 + 8) = v15;
  if (v14)
  {
    operator delete(v14);
    *&v15 = 288 * v2 + 288;
  }

  return *&v15;
}

void sub_D4DADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_D4DAF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D4DAF0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 288;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    sub_49AEC0((i - 288));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D4DB70(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 24) = 0;
  v4 = a1 + 24;
  *(a1 + 264) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = *(a2 + 192);
  if (!v5)
  {
    v5 = &off_278AB30;
  }

  v6 = v5[55];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &off_278A980;
  }

  v8 = *(v7 + 4);
  v9 = *a3;
  if (v8)
  {
    v10 = a3[1];
    if (v9 != v10)
    {
      v11 = a3;
      v57 = 0u;
      v58 = 0u;
      DWORD2(v58) = 0x7FFFFFFF;
      v12.f64[0] = NAN;
      v12.f64[1] = NAN;
      v59 = vnegq_f64(v12);
      sub_D4E1A0(&v39, v10 - 440, 0, 0, &v57);
      if (*(a1 + 264))
      {
        sub_D4E878(v4, &v39);
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }
      }

      else
      {
        v13 = v41;
        v14 = *v43;
        *(a1 + 64) = v42;
        *(a1 + 80) = v14;
        *(a1 + 32) = v40;
        *(a1 + 48) = v13;
        *(a1 + 104) = *v44;
        *(a1 + 128) = v46;
        v15 = v49;
        *(a1 + 152) = v48;
        *(a1 + 24) = v39;
        *(a1 + 95) = *&v43[15];
        *(a1 + 120) = v45;
        *(a1 + 144) = v47;
        *(a1 + 184) = v50;
        *(a1 + 208) = v52;
        v16 = v56;
        *(a1 + 232) = v54;
        v44[0] = 0;
        v44[1] = 0;
        *(a1 + 168) = v15;
        *(a1 + 192) = v51;
        v45 = 0;
        v50 = 0;
        v51 = 0uLL;
        *(a1 + 216) = *v53;
        v53[0] = 0;
        v53[1] = 0;
        *(a1 + 240) = __p;
        *(a1 + 256) = v16;
        v54 = 0;
        __p = 0uLL;
        v56 = 0;
        *(a1 + 264) = 1;
      }

      v17 = v53[0];
      if (v53[0])
      {
        v18 = v53[1];
        v19 = v53[0];
        if (v53[1] != v53[0])
        {
          do
          {
            v20 = *(v18 - 3);
            if (v20)
            {
              operator delete(v20);
            }

            v21 = *(v18 - 13);
            if (v21)
            {
              *(v18 - 12) = v21;
              operator delete(v21);
            }

            v18 -= 176;
          }

          while (v18 != v17);
          v19 = v53[0];
        }

        v53[1] = v17;
        operator delete(v19);
      }

      if (v50)
      {
        operator delete(v50);
      }

      if (v44[0])
      {
        v44[1] = v44[0];
        operator delete(v44[0]);
      }

      if (v57.n128_u64[0])
      {
        v57.n128_u64[1] = v57.n128_u64[0];
        operator delete(v57.n128_u64[0]);
      }

      a3 = v11;
      v9 = *v11;
      v8 = *(v7 + 4);
    }
  }

  if (v8)
  {
    v22 = a3[1];
    if (v9 != v22)
    {
      v22 -= 440;
    }
  }

  else
  {
    v22 = a3[1];
  }

  if (v22 != v9)
  {
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v38 = vnegq_f64(v24);
    do
    {
      v57 = 0u;
      v58 = 0u;
      DWORD2(v58) = 0x7FFFFFFF;
      v59 = v38;
      sub_D4E1A0(&v39, v9, 0, 0, &v57);
      if (v57.n128_u64[0])
      {
        v57.n128_u64[1] = v57.n128_u64[0];
        operator delete(v57.n128_u64[0]);
      }

      v25 = *(a1 + 8);
      if (v25 >= *(a1 + 16))
      {
        v31 = sub_D4EA20(a1, &v39);
        v32 = __p;
        *(a1 + 8) = v31;
        if (v32)
        {
          *(&__p + 1) = v32;
          operator delete(v32);
        }
      }

      else
      {
        *v25 = v39;
        *(v25 + 8) = v40;
        v26 = v41;
        v27 = v42;
        v28 = *v43;
        *(v25 + 71) = *&v43[15];
        *(v25 + 56) = v28;
        *(v25 + 40) = v27;
        *(v25 + 24) = v26;
        *(v25 + 88) = 0;
        *(v25 + 96) = 0;
        *(v25 + 80) = 0;
        *(v25 + 80) = *v44;
        *(v25 + 96) = v45;
        v44[0] = 0;
        v44[1] = 0;
        v45 = 0;
        v29 = v46;
        *(v25 + 120) = v47;
        *(v25 + 104) = v29;
        v30 = v49;
        *(v25 + 128) = v48;
        *(v25 + 144) = v30;
        *(v25 + 160) = v50;
        *(v25 + 168) = v51;
        v50 = 0;
        v51 = 0uLL;
        *(v25 + 184) = v52;
        *(v25 + 192) = 0;
        *(v25 + 200) = 0;
        *(v25 + 208) = 0;
        *(v25 + 216) = 0;
        *(v25 + 192) = *v53;
        *(v25 + 208) = v54;
        v53[0] = 0;
        v53[1] = 0;
        *(v25 + 224) = 0;
        *(v25 + 232) = 0;
        *(v25 + 216) = __p;
        *(v25 + 232) = v56;
        v54 = 0;
        __p = 0uLL;
        v56 = 0;
        *(a1 + 8) = v25 + 240;
      }

      v33 = v53[0];
      if (v53[0])
      {
        v34 = v53[1];
        v35 = v53[0];
        if (v53[1] != v53[0])
        {
          do
          {
            v36 = *(v34 - 3);
            if (v36)
            {
              operator delete(v36);
            }

            v37 = *(v34 - 13);
            if (v37)
            {
              *(v34 - 12) = v37;
              operator delete(v37);
            }

            v34 -= 176;
          }

          while (v34 != v33);
          v35 = v53[0];
        }

        v53[1] = v33;
        operator delete(v35);
      }

      if (v50)
      {
        operator delete(v50);
      }

      if (v44[0])
      {
        v44[1] = v44[0];
        operator delete(v44[0]);
      }

      v9 += 440;
    }

    while (v9 != v22);
  }

  return a1;
}

void sub_D4DFA4(_Unwind_Exception *a1)
{
  v5 = *(v3 - 128);
  if (v5)
  {
    *(v3 - 120) = v5;
    operator delete(v5);
  }

  sub_D4EE94(v2);
  sub_D4EF4C(v1);
  _Unwind_Resume(a1);
}

void *sub_D4DFF8(void *a1)
{
  v2 = a1[27];
  if (v2)
  {
    a1[28] = v2;
    operator delete(v2);
  }

  v3 = a1[24];
  if (v3)
  {
    v4 = a1[25];
    v5 = a1[24];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 24);
        if (v6)
        {
          operator delete(v6);
        }

        v7 = *(v4 - 104);
        if (v7)
        {
          *(v4 - 96) = v7;
          operator delete(v7);
        }

        v4 -= 176;
      }

      while (v4 != v3);
      v5 = a1[24];
    }

    a1[25] = v3;
    operator delete(v5);
  }

  v8 = a1[20];
  if (v8)
  {
    operator delete(v8);
  }

  v9 = a1[10];
  if (v9)
  {
    a1[11] = v9;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_D4E0A8@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_195A048(a2, "TransitNearbyScheduleLookupSnappingModule", 0x29uLL);
  v6 = 1;
  v4 = *(a2 + 32);
  if (v4 >= *(a2 + 40))
  {
    result = sub_CCEBC0((a2 + 24), "Runtime", &v6, a1);
    *(a2 + 32) = result;
  }

  else
  {
    sub_CCED74(*(a2 + 32), "Runtime", &v6, a1);
    result = v4 + 48;
    *(a2 + 32) = v4 + 48;
  }

  return result;
}

void sub_D4E174(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D4E1A0(uint64_t a1, uint64_t a2, char a3, int a4, __n128 *a5)
{
  *a1 = *(a2 + 176);
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  *(a1 + 8) = -1;
  v10 = (a1 + 8);
  *(a1 + 16) = 0x7FFFFFFF;
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1935635296;
  *(a1 + 80) = 0;
  v11 = (a1 + 80);
  *(a1 + 64) = 0;
  *(a1 + 71) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 120) = 100;
  *(a1 + 128) = 0;
  v12 = (a1 + 128);
  *(a1 + 144) = vnegq_f64(v9);
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  v13 = (a1 + 160);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a4;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *v10 = *a2;
  v14 = *(a2 + 16);
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  *(a1 + 71) = *(a2 + 63);
  *(a1 + 56) = v16;
  *(a1 + 40) = v15;
  *(a1 + 24) = v14;
  if (v10 != a2)
  {
    sub_146EC(v11, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  }

  v17 = *(a2 + 96);
  *(a1 + 120) = *(a2 + 112);
  *(a1 + 104) = v17;
  v18 = *(a2 + 136);
  *v12 = *(a2 + 120);
  *(a1 + 144) = v18;
  sub_3E428((a1 + 160), a2 + 152);
  *(a1 + 73) = a3;
  sub_4233E4(a5, v45);
  v19 = v45[1];
  *v12 = v45[0];
  *(a1 + 144) = v19;
  if (*v13)
  {
    operator delete(*v13);
    *v13 = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = v46;
  *(a1 + 168) = v47;
  v21 = *(a2 + 312);
  v20 = *(a2 + 320);
  if (v21 != v20)
  {
    v22 = *(a1 + 200);
    do
    {
      if (v22 >= *(a1 + 208))
      {
        v22 = sub_D4E5B4((a1 + 192), v21);
      }

      else
      {
        *v22 = *v21;
        v23 = *(v21 + 16);
        v24 = *(v21 + 32);
        v25 = *(v21 + 48);
        *(v22 + 63) = *(v21 + 63);
        *(v22 + 32) = v24;
        *(v22 + 48) = v25;
        *(v22 + 72) = 0;
        *(v22 + 16) = v23;
        *(v22 + 80) = 0;
        *(v22 + 88) = 0;
        v27 = *(v21 + 72);
        v26 = *(v21 + 80);
        if (v26 != v27)
        {
          if (((v26 - v27) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v28 = *(v21 + 96);
        *(v22 + 112) = *(v21 + 112);
        *(v22 + 96) = v28;
        v29 = *(v21 + 120);
        *(v22 + 136) = *(v21 + 136);
        *(v22 + 120) = v29;
        sub_81988((v22 + 152), v21 + 152);
        v22 += 176;
        *(a1 + 200) = v22;
      }

      *(a1 + 200) = v22;
      v21 += 176;
    }

    while (v21 != v20);
  }

  v30 = *(a2 + 336);
  v31 = *(a2 + 344);
  if (v30 != v31)
  {
    v32 = *(a1 + 224);
    do
    {
      v34 = *(a1 + 232);
      if (v32 < v34)
      {
        v33 = *v30;
        *(v32 + 16) = *(v30 + 2);
        *v32 = v33;
        v32 += 24;
      }

      else
      {
        v35 = *(a1 + 216);
        v36 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v35) >> 3);
        v37 = v36 + 1;
        if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v38 = 0xAAAAAAAAAAAAAAABLL * ((v34 - v35) >> 3);
        if (2 * v38 > v37)
        {
          v37 = 2 * v38;
        }

        if (v38 >= 0x555555555555555)
        {
          v39 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          if (v39 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v40 = v32;
        v41 = 8 * ((v32 - v35) >> 3);
        v42 = *v30;
        *(v41 + 16) = *(v30 + 2);
        *v41 = v42;
        v32 = v41 + 24;
        v43 = 24 * v36 - (v40 - v35);
        memcpy((v41 - (v40 - v35)), v35, v40 - v35);
        *(a1 + 216) = v43;
        *(a1 + 224) = v32;
        *(a1 + 232) = 0;
        if (v35)
        {
          operator delete(v35);
        }
      }

      *(a1 + 224) = v32;
      v30 = (v30 + 24);
    }

    while (v30 != v31);
  }

  return a1;
}

void sub_D4E554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void **a11)
{
  v13 = *(v11 + 216);
  if (v13)
  {
    *(v11 + 224) = v13;
    operator delete(v13);
  }

  sub_48C9A4(a11);
  sub_44D36C(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_D4E5B4(uint64_t *a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v5 = 0x1745D1745D1745DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  v25 = v6;
  v26 = v6;
  v7 = a2[3];
  *(v6 + 32) = a2[2];
  *(v6 + 48) = v7;
  *(v6 + 63) = *(a2 + 63);
  v9 = *a2;
  v8 = a2[1];
  *(&stru_20.fileoff + 22 * v2) = 0;
  *v6 = v9;
  *(v6 + 16) = v8;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  v11 = *(a2 + 9);
  v10 = *(a2 + 10);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(v6 + 96) = a2[6];
  *(v6 + 112) = *(a2 + 112);
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 136) = *(a2 + 136);
  sub_81988((v6 + 152), a2 + 152);
  v12 = *a1;
  v13 = a1[1];
  v14 = v25 + *a1 - v13;
  if (v13 != *a1)
  {
    v15 = *a1;
    v16 = v25 + *a1 - v13;
    do
    {
      *v16 = *v15;
      v17 = *(v15 + 1);
      v18 = *(v15 + 2);
      v19 = *(v15 + 3);
      *(v16 + 63) = *(v15 + 63);
      *(v16 + 32) = v18;
      *(v16 + 48) = v19;
      *(v16 + 16) = v17;
      *(v16 + 80) = 0;
      *(v16 + 88) = 0;
      *(v16 + 72) = 0;
      *(v16 + 72) = *(v15 + 9);
      *(v16 + 88) = v15[11];
      v15[9] = 0;
      v15[10] = 0;
      v15[11] = 0;
      v20 = *(v15 + 6);
      *(v16 + 112) = *(v15 + 112);
      *(v16 + 96) = v20;
      v21 = *(v15 + 15);
      *(v16 + 136) = *(v15 + 17);
      *(v16 + 120) = v21;
      *(v16 + 152) = v15[19];
      *(v16 + 160) = *(v15 + 10);
      v15[19] = 0;
      v15[20] = 0;
      v15[21] = 0;
      v15 += 22;
      v16 += 176;
    }

    while (v15 != v13);
    do
    {
      v22 = v12[19];
      if (v22)
      {
        operator delete(v22);
      }

      v23 = v12[9];
      if (v23)
      {
        v12[10] = v23;
        operator delete(v23);
      }

      v12 += 22;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v26 + 176;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v26 + 176;
}

void sub_D4E850(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 80) = v5;
    operator delete(v5);
  }

  sub_789B8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D4E878(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  *(a1 + 56) = v7;
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  v9 = (a1 + 80);
  v8 = *(a1 + 80);
  if (v8)
  {
    *(a1 + 88) = v8;
    operator delete(v8);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v10 = *(a2 + 104);
  v11 = *(a1 + 160);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v10;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  if (v11)
  {
    operator delete(v11);
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
  }

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v12 = (a1 + 192);
  v13 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);
  if (v13)
  {
    v14 = *(a1 + 200);
    v15 = v13;
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 3);
        if (v16)
        {
          operator delete(v16);
        }

        v17 = *(v14 - 13);
        if (v17)
        {
          *(v14 - 12) = v17;
          operator delete(v17);
        }

        v14 -= 176;
      }

      while (v14 != v13);
      v15 = *v12;
    }

    *(a1 + 200) = v13;
    operator delete(v15);
    *v12 = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
  }

  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v18 = *(a1 + 216);
  if (v18)
  {
    *(a1 + 224) = v18;
    operator delete(v18);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  return a1;
}

uint64_t sub_D4EA20(void *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) >= 0x88888888888888)
  {
    v5 = 0x111111111111111;
  }

  else
  {
    v5 = v3;
  }

  v16 = a1;
  if (v5)
  {
    if (v5 <= 0x111111111111111)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 240 * v2;
  *v6 = *a2;
  __p = 0;
  v13 = 240 * v2;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(v6 + 71) = *(a2 + 71);
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 96) = *(a2 + 96);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 104) = *(a2 + 104);
  v7 = *(a2 + 144);
  *(v6 + 128) = *(a2 + 128);
  *(v6 + 144) = v7;
  *(v6 + 160) = *(a2 + 160);
  *(v6 + 168) = *(a2 + 168);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  *(v6 + 184) = *(a2 + 184);
  *(v6 + 192) = *(a2 + 192);
  *(v6 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(v6 + 216) = *(a2 + 216);
  *(v6 + 232) = *(a2 + 232);
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  v14 = 240 * v2 + 240;
  v15 = 0;
  sub_D4EC04(a1, &__p);
  v8 = a1[1];
  v10 = v13;
  for (i = v14; v14 != v10; i = v14)
  {
    v14 = i - 240;
    sub_D4ED7C((i - 240));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_D4EBF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D4EE40(va);
  _Unwind_Resume(a1);
}

void sub_D4EC04(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 8) = *(v7 + 1);
      v9 = *(v7 + 3);
      v10 = *(v7 + 5);
      v11 = *(v7 + 7);
      *(v8 + 71) = *(v7 + 71);
      *(v8 + 56) = v11;
      *(v8 + 40) = v10;
      *(v8 + 24) = v9;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 80) = 0;
      *(v8 + 80) = *(v7 + 5);
      *(v8 + 96) = v7[12];
      v7[10] = 0;
      v7[11] = 0;
      v7[12] = 0;
      v12 = *(v7 + 13);
      *(v8 + 120) = *(v7 + 120);
      *(v8 + 104) = v12;
      v13 = *(v7 + 9);
      *(v8 + 128) = *(v7 + 8);
      *(v8 + 144) = v13;
      *(v8 + 160) = v7[20];
      *(v8 + 168) = *(v7 + 21);
      v7[20] = 0;
      v7[21] = 0;
      v7[22] = 0;
      *(v8 + 184) = *(v7 + 46);
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v8 + 192) = 0;
      *(v8 + 192) = *(v7 + 12);
      *(v8 + 208) = v7[26];
      v7[24] = 0;
      v7[25] = 0;
      v7[26] = 0;
      *(v8 + 216) = 0;
      *(v8 + 224) = 0;
      *(v8 + 232) = 0;
      *(v8 + 216) = *(v7 + 27);
      *(v8 + 232) = v7[29];
      v7[27] = 0;
      v7[28] = 0;
      v7[29] = 0;
      v7 += 30;
      v8 += 240;
    }

    while (v7 != v5);
    do
    {
      sub_D4ED7C(v4);
      v4 += 30;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v14 = *a1;
  *a1 = v6;
  *(a1 + 8) = v14;
  a2[1] = v14;
  v15 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v15;
  v16 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
}

void sub_D4ED7C(void *a1)
{
  v2 = a1[27];
  if (v2)
  {
    a1[28] = v2;
    operator delete(v2);
  }

  v3 = a1[24];
  if (v3)
  {
    v4 = a1[25];
    v5 = a1[24];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 24);
        if (v6)
        {
          operator delete(v6);
        }

        v7 = *(v4 - 104);
        if (v7)
        {
          *(v4 - 96) = v7;
          operator delete(v7);
        }

        v4 -= 176;
      }

      while (v4 != v3);
      v5 = a1[24];
    }

    a1[25] = v3;
    operator delete(v5);
  }

  v8 = a1[20];
  if (v8)
  {
    operator delete(v8);
  }

  v9 = a1[10];
  if (v9)
  {
    a1[11] = v9;

    operator delete(v9);
  }
}

uint64_t sub_D4EE40(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
    sub_D4ED7C((i - 240));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_D4EE94(uint64_t a1)
{
  if (*(a1 + 240) == 1)
  {
    v2 = *(a1 + 216);
    if (v2)
    {
      *(a1 + 224) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 192);
    if (v3)
    {
      v4 = *(a1 + 200);
      v5 = *(a1 + 192);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 24);
          if (v6)
          {
            operator delete(v6);
          }

          v7 = *(v4 - 104);
          if (v7)
          {
            *(v4 - 96) = v7;
            operator delete(v7);
          }

          v4 -= 176;
        }

        while (v4 != v3);
        v5 = *(a1 + 192);
      }

      *(a1 + 200) = v3;
      operator delete(v5);
    }

    v8 = *(a1 + 160);
    if (v8)
    {
      operator delete(v8);
    }

    v9 = *(a1 + 80);
    if (v9)
    {
      *(a1 + 88) = v9;
      operator delete(v9);
    }
  }

  return a1;
}

void *sub_D4EF4C(void *a1)
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
        v3 -= 30;
        sub_D4ED7C(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_D4F30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  sub_D4F408(v19 - 176);
  sub_D4F38C(&a19);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1A104((v19 - 96));
  _Unwind_Resume(a1);
}

void sub_D4F368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1A104((v21 - 176));
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xD4F360);
}

void *sub_D4F38C(void *a1)
{
  v2 = a1[536];
  if (v2)
  {
    v3 = a1[537];
    v4 = a1[536];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[536];
    }

    a1[537] = v2;
    operator delete(v4);
  }

  sub_506524(a1 + 2);
  return a1;
}

uint64_t sub_D4F408(uint64_t a1)
{
  if (*a1 == 1)
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
          v5 = *(v3 - 32);
          if (v5)
          {
            *(v3 - 24) = v5;
            operator delete(v5);
          }

          v3 -= 40;
        }

        while (v3 != v2);
        v4 = *(a1 + 8);
      }

      *(a1 + 16) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_D4F488@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 24) = 0;
  *a2 = result;
  return result;
}

void sub_D4F5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_D4F60C(uint64_t a1)
{
  sub_7E9A4(v4);
  sub_1757EA4(v2, 0, 0);
  v3 = 0u;
  sub_F1AFC4(v5, **(a1 + 8));
}

void sub_D4FBD4(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, ...)
{
  va_start(va, a8);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_D4FF2C(&STACK[0x608]);
  sub_D500BC(va);
  _Unwind_Resume(a1);
}

void sub_D4FE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_D4FE78(uint64_t a1, void *a2)
{
  *a1 = 1;
  v4 = sub_1757EA4(a1 + 8, 0, 0);
  if (v4 != a2)
  {
    v5 = *(a1 + 16);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = a2[1];
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v5 == v6)
    {
      sub_175C55C(v4, a2);
    }

    else
    {
      sub_175C1D0(v4, a2);
    }
  }

  v7 = a2[72];
  a2[72] = 0;
  *(a1 + 584) = v7;
  *(a1 + 592) = a2[73];
  return a1;
}

uint64_t sub_D4FF2C(uint64_t a1)
{
  v2 = *(a1 + 360);
  if (v2)
  {
    v3 = *(a1 + 368);
    v4 = *(a1 + 360);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 368) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
        if (*(v3 - 41) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 64));
        }
      }

      else if (*(v3 - 41) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 72;
      if (v3 == v2)
      {
        v4 = *(a1 + 360);
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v5 = *(a1 + 336);
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

  v7 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 296);
  if (v8)
  {
    v9 = *(a1 + 304);
    v10 = *(a1 + 296);
    if (v9 != v8)
    {
      do
      {
        v9 = sub_55A8B4(v9 - 496);
      }

      while (v9 != v8);
      v10 = *(a1 + 296);
    }

    *(a1 + 304) = v8;
    operator delete(v10);
  }

  v11 = *(a1 + 272);
  if (v11)
  {
    do
    {
      v18 = *v11;
      v19 = *(v11 + 5);
      if (v19)
      {
        *(v11 + 6) = v19;
        operator delete(v19);
      }

      if (v11[39] < 0)
      {
        operator delete(*(v11 + 2));
      }

      operator delete(v11);
      v11 = v18;
    }

    while (v18);
  }

  v12 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 224);
  if (v13)
  {
    *(a1 + 232) = v13;
    operator delete(v13);
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v14 = *(a1 + 152);
  if (v14)
  {
    *(a1 + 160) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 120);
  if (v15)
  {
    *(a1 + 128) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    *(a1 + 64) = v16;
    operator delete(v16);
  }

  return a1;
}

uint64_t sub_D500BC(uint64_t a1)
{
  v3 = *(a1 + 576);
  *(a1 + 576) = 0;
  if (v3)
  {
    sub_1758FB8(v3);
    operator delete();
  }

  return sub_1758FB8(a1);
}

void sub_D5011C()
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
  xmmword_27B63B8 = 0u;
  unk_27B63C8 = 0u;
  dword_27B63D8 = 1065353216;
  sub_3A9A34(&xmmword_27B63B8, v0);
  sub_3A9A34(&xmmword_27B63B8, v3);
  sub_3A9A34(&xmmword_27B63B8, __p);
  sub_3A9A34(&xmmword_27B63B8, v9);
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
    qword_27B6390 = 0;
    qword_27B6398 = 0;
    qword_27B6388 = 0;
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

void sub_D50364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B63A0)
  {
    qword_27B63A8 = qword_27B63A0;
    operator delete(qword_27B63A0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_D50410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v29);
  sub_143ACEC(v26, 0, 0);
  v28 = 0.0;
  v4 = sub_501CE8(&v25, *(a1 + 8));
  sub_F24E68(v4, a1, &v14);
  v5 = v27;
  if ((v27 & 2) != 0)
  {
    v5 = 0;
  }

  else if (v27)
  {
    v5 = *(v27 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v6 = v15;
  if ((v15 & 2) != 0)
  {
    v6 = 0;
  }

  else if (v15)
  {
    v6 = *(v15 & 0xFFFFFFFFFFFFFFFCLL);
  }

  if (v5 == v6)
  {
    sub_143BF08(v26, &v14);
  }

  else
  {
    sub_143BE54(v26, &v14);
  }

  sub_143B10C(&v14);
  v28 = sub_7EA60(v29);
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v14);
    sub_4A5C(&v14, "TransitRouteUpdateResponseBuilderModule took ", 45);
    v7 = std::ostream::operator<<();
    sub_4A5C(v7, " ms", 3);
    if ((v24 & 0x10) != 0)
    {
      v9 = v23;
      if (v23 < v20)
      {
        v23 = v20;
        v9 = v20;
      }

      v10 = v19;
      v8 = v9 - v19;
      if (v9 - v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if ((v24 & 8) == 0)
      {
        v8 = 0;
        v13 = 0;
LABEL_24:
        *(&__p + v8) = 0;
        sub_7E854(&__p, 2u);
        if (v13 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }

        std::locale::~locale(&v16);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_29;
      }

      v10 = v17;
      v8 = v18 - v17;
      if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_31:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v13 = v8;
    if (v8)
    {
      memmove(&__p, v10, v8);
    }

    goto LABEL_24;
  }

LABEL_29:
  sub_D507BC(a2, v26);
  return sub_143B10C(v26);
}

void sub_D50730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_143B10C(v15 - 200);
  _Unwind_Resume(a1);
}

uint64_t sub_D507BC(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  v4 = sub_143ACEC(a1 + 8, 0, 0);
  if (v4 != a2)
  {
    v5 = *(a1 + 16);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v6 = *(a2 + 8);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v5 == v6)
    {
      sub_143BF08(v4, a2);
    }

    else
    {
      sub_143BE54(v4, a2);
    }
  }

  *(a1 + 128) = *(a2 + 120);
  return a1;
}

void sub_D50BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18)
{
  sub_D50CCC(&STACK[0x1310]);
  sub_D50C50(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1A104((v18 - 96));
  _Unwind_Resume(a1);
}

void sub_D50C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1A104(&STACK[0x1310]);
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xD50C20);
}

void *sub_D50C50(void *a1)
{
  v2 = a1[601];
  if (v2)
  {
    v3 = a1[602];
    v4 = a1[601];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[601];
    }

    a1[602] = v2;
    operator delete(v4);
  }

  sub_506524(a1 + 5);
  return a1;
}

uint64_t sub_D50CCC(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = *(result + 16);
      v3 = *(result + 8);
      if (v2 != v1)
      {
        v4 = result;
        do
        {
          v2 -= 19;
          sub_A4A778(v2);
        }

        while (v2 != v1);
        result = v4;
        v3 = *(v4 + 8);
      }

      *(result + 16) = v1;
      v5 = result;
      operator delete(v3);
      return v5;
    }
  }

  return result;
}

void sub_D50D4C(int a1@<W0>, _OWORD *a2@<X8>)
{
  *(a2 + 92) = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  sub_5F328((a2 + 7));
  *a2 = a1;
}

void sub_D50D90(_Unwind_Exception *a1)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    *(v1 + 88) = v3;
    operator delete(v3);
  }

  sub_93A460((v1 + 56));
  sub_93A3E8((v1 + 32));
  sub_93A4BC((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_D50DC4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v13);
  v4 = a1[1];
  v5 = a1[2];
  if (v4 != v5)
  {
    v6 = a1[1];
    while (*v6 != 1)
    {
      v6 += 60;
      if (v6 == v5)
      {
        goto LABEL_5;
      }
    }

    do
    {
      if (*v4 == 2)
      {
        sub_11BD9F4(v12, *a1);
      }

      v4 += 60;
    }

    while (v4 != v5);
  }

LABEL_5:
  v8.n128_u64[0] = 1;
  v8.n128_u64[1] = &off_2669FE0;
  sub_434934(v9, &v8);
  *a2 = 0;
  v7 = v9[1];
  *(a2 + 8) = v9[0];
  *(a2 + 24) = v7;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
}

void sub_D5190C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a61);
  if (v61)
  {
    operator delete(v61);
  }

  sub_A396C4(&STACK[0x2B0]);
  sub_11ABCB4(&STACK[0x320]);
  _Unwind_Resume(a1);
}

uint64_t sub_D519FC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 272);
    if (v2)
    {
      *(a1 + 280) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 248);
    if (v3)
    {
      *(a1 + 256) = v3;
      operator delete(v3);
    }

    sub_49AEC0((a1 + 8));
  }

  return a1;
}

void sub_D51A54(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_115A374(v12, a1, (a2 + 8));
  sub_115A3EC(v12, a3);
  v4 = __p;
  if (__p)
  {
    v5 = v16;
    v6 = __p;
    if (v16 != __p)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p;
    }

    v16 = v4;
    operator delete(v6);
  }

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    v10 = v13;
    if (v14 != v13)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = v13;
    }

    v14 = v8;
    operator delete(v10);
  }
}

uint64_t *sub_D51B40@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = result[1];
  v4 = v3 - *result;
  if (v3 != *result)
  {
    v5 = result;
    v6 = sub_D52C40(a2, (*result + 8));
    *(a2 + 8) = v6;
    result = sub_4C515C(v6 - 128, 0);
    if (v4 != 240)
    {
      v7 = 0xEEEEEEEEEEEEEEEFLL * (v4 >> 4) - 1;
      v8 = 248;
      do
      {
        v9 = *v5;
        v10 = *(a2 + 8);
        if (v10 >= *(a2 + 16))
        {
          v11 = sub_D52C40(a2, (v9 + v8));
        }

        else
        {
          sub_D52DF8(*(a2 + 8), (v9 + v8));
          v11 = v10 + 128;
        }

        *(a2 + 8) = v11;
        result = sub_4C515C(v11 - 128, 2);
        v8 += 240;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

void sub_D51C24(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_60A84C(v1);
  _Unwind_Resume(a1);
}

void sub_D51C50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  v64 = 0;
  v65 = 0;
  v63 = 0;
  if (v7 != v6)
  {
    if (((v7 - v6) >> 7) < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }

  sub_D51A54(a1, a2, &v63);
  v9 = v63;
  v10 = v64;
  v11 = v63;
  if (v63 != v64)
  {
    LODWORD(v8) = *a2;
    v12 = v8;
    v13 = v63 + 240;
    while (1)
    {
      *&v14 = *(v13 - 2);
      if (*&v14 > v12)
      {
        break;
      }

      v15 = v13 == v64;
      v13 += 240;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    v11 = v13 - 240;
    if (v13 - 240 != v64)
    {
      while (v13 != v10)
      {
        LODWORD(v14) = *a2;
        *&v14 = v14;
        if (*(v13 + 28) <= *&v14)
        {
          v16 = *v13;
          v17 = *(v13 + 2);
          *(v11 + 1) = *(v13 + 1);
          *(v11 + 2) = v17;
          *v11 = v16;
          v18 = *(v13 + 3);
          v19 = *(v13 + 4);
          v20 = *(v13 + 6);
          *(v11 + 5) = *(v13 + 5);
          *(v11 + 6) = v20;
          *(v11 + 3) = v18;
          *(v11 + 4) = v19;
          v21 = *(v13 + 7);
          v22 = *(v13 + 8);
          v23 = *(v13 + 10);
          *(v11 + 9) = *(v13 + 9);
          *(v11 + 10) = v23;
          *(v11 + 7) = v21;
          *(v11 + 8) = v22;
          v24 = *(v13 + 11);
          v14 = *(v13 + 12);
          v25 = *(v13 + 14);
          *(v11 + 13) = *(v13 + 13);
          *(v11 + 14) = v25;
          *(v11 + 11) = v24;
          *(v11 + 12) = v14;
          v11 += 240;
        }

        v13 += 240;
      }
    }
  }

  if (v11 != v10)
  {
    v10 = v11;
    v64 = v11;
  }

LABEL_13:
  *a4 = 1;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  if (v9 != v10)
  {
    if (*(a2 + 64) == 1)
    {
      while (sub_4C4BD8(*(v9 + 1)) <= *(a2 + 72))
      {
        v9 += 240;
        if (v9 == v10)
        {
          v9 = v10;
          goto LABEL_40;
        }
      }

      if (v9 != v10)
      {
        for (i = v9 + 240; i != v10; i += 240)
        {
          if (sub_4C4BD8(*(i + 1)) <= *(a2 + 72))
          {
            v32 = *i;
            v33 = *(i + 2);
            *(v9 + 1) = *(i + 1);
            *(v9 + 2) = v33;
            *v9 = v32;
            v34 = *(i + 3);
            v35 = *(i + 4);
            v36 = *(i + 6);
            *(v9 + 5) = *(i + 5);
            *(v9 + 6) = v36;
            *(v9 + 3) = v34;
            *(v9 + 4) = v35;
            v37 = *(i + 7);
            v38 = *(i + 8);
            v39 = *(i + 10);
            *(v9 + 9) = *(i + 9);
            *(v9 + 10) = v39;
            *(v9 + 7) = v37;
            *(v9 + 8) = v38;
            v40 = *(i + 11);
            v41 = *(i + 12);
            v42 = *(i + 14);
            *(v9 + 13) = *(i + 13);
            *(v9 + 14) = v42;
            *(v9 + 11) = v40;
            *(v9 + 12) = v41;
            v9 += 240;
          }
        }
      }

LABEL_40:
      v10 = v9;
      if (v9 != v64)
      {
        v64 = v9;
      }

      v9 = v63;
    }

    if (v9 != v10)
    {
      sub_D51B40(&v63, &v59);
      v67[0] = 1;
      v68 = v59;
      __p[0] = v60[0];
      v59 = 0uLL;
      v60[0] = 0;
      sub_D52F00(a4, v67);
      if (v67[0] == 1)
      {
        v43 = v68.n128_u64[0];
        if (v68.n128_u64[0])
        {
          v44 = v68.n128_i64[1];
          v45 = v68.n128_u64[0];
          if (v68.n128_u64[1] != v68.n128_u64[0])
          {
            do
            {
              v44 -= 128;
              sub_60B38C(v44);
            }

            while (v44 != v43);
            v45 = v68.n128_u64[0];
          }

          v68.n128_u64[1] = v43;
LABEL_70:
          operator delete(v45);
        }
      }

      else
      {
        v49 = __p[0];
        if (__p[0])
        {
          v50 = __p[1];
          v45 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              if (*(v50 - 1) < 0)
              {
                operator delete(*(v50 - 3));
              }

              v50 -= 4;
            }

            while (v50 != v49);
            v45 = __p[0];
          }

          __p[1] = v49;
          goto LABEL_70;
        }
      }

      v53 = v59.n128_u64[0];
      if (!v59.n128_u64[0])
      {
        goto LABEL_97;
      }

      v54 = v59.n128_i64[1];
      v55 = v59.n128_u64[0];
      if (v59.n128_u64[1] != v59.n128_u64[0])
      {
        do
        {
          v54 -= 128;
          sub_60B38C(v54);
        }

        while (v54 != v53);
        v55 = v59.n128_u64[0];
      }

      v59.n128_u64[1] = v53;
      goto LABEL_96;
    }

    v66.n128_u64[0] = 16;
    v66.n128_u64[1] = &off_2669FE0;
    sub_434934(&v59, &v66);
    v67[0] = 0;
    v68 = v59;
    *__p = *v60;
    v70 = v61;
    v60[0] = 0;
    v60[1] = 0;
    v61 = 0;
    v71 = v62;
    sub_D52F00(a4, v67);
    if (v67[0] == 1)
    {
      v46 = v68.n128_u64[0];
      if (v68.n128_u64[0])
      {
        v47 = v68.n128_i64[1];
        v48 = v68.n128_u64[0];
        if (v68.n128_u64[1] != v68.n128_u64[0])
        {
          do
          {
            v47 -= 128;
            sub_60B38C(v47);
          }

          while (v47 != v46);
          v48 = v68.n128_u64[0];
        }

        v68.n128_u64[1] = v46;
LABEL_87:
        operator delete(v48);
      }
    }

    else
    {
      v51 = __p[0];
      if (__p[0])
      {
        v52 = __p[1];
        v48 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            if (*(v52 - 1) < 0)
            {
              operator delete(*(v52 - 3));
            }

            v52 -= 4;
          }

          while (v52 != v51);
          v48 = __p[0];
        }

        __p[1] = v51;
        goto LABEL_87;
      }
    }

    v56 = v60[0];
    if (!v60[0])
    {
      goto LABEL_97;
    }

    v58 = v60[1];
    v55 = v60[0];
    if (v60[1] == v60[0])
    {
      goto LABEL_95;
    }

    do
    {
      if (*(v58 - 1) < 0)
      {
        operator delete(*(v58 - 3));
      }

      v58 -= 4;
    }

    while (v58 != v56);
    goto LABEL_94;
  }

  v66.n128_u64[0] = 17;
  v66.n128_u64[1] = &off_2669FE0;
  sub_434934(&v59, &v66);
  v67[0] = 0;
  v68 = v59;
  *__p = *v60;
  v70 = v61;
  v60[0] = 0;
  v60[1] = 0;
  v61 = 0;
  v71 = v62;
  sub_D52F00(a4, v67);
  if (v67[0] == 1)
  {
    v26 = v68.n128_u64[0];
    if (v68.n128_u64[0])
    {
      v27 = v68.n128_i64[1];
      v28 = v68.n128_u64[0];
      if (v68.n128_u64[1] != v68.n128_u64[0])
      {
        do
        {
          v27 -= 128;
          sub_60B38C(v27);
        }

        while (v27 != v26);
        v28 = v68.n128_u64[0];
      }

      v68.n128_u64[1] = v26;
LABEL_78:
      operator delete(v28);
    }
  }

  else
  {
    v29 = __p[0];
    if (__p[0])
    {
      v30 = __p[1];
      v28 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          if (*(v30 - 1) < 0)
          {
            operator delete(*(v30 - 3));
          }

          v30 -= 4;
        }

        while (v30 != v29);
        v28 = __p[0];
      }

      __p[1] = v29;
      goto LABEL_78;
    }
  }

  v56 = v60[0];
  if (!v60[0])
  {
    goto LABEL_97;
  }

  v57 = v60[1];
  v55 = v60[0];
  if (v60[1] == v60[0])
  {
    goto LABEL_95;
  }

  do
  {
    if (*(v57 - 1) < 0)
    {
      operator delete(*(v57 - 3));
    }

    v57 -= 4;
  }

  while (v57 != v56);
LABEL_94:
  v55 = v60[0];
LABEL_95:
  v60[1] = v56;
LABEL_96:
  operator delete(v55);
LABEL_97:
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }
}

void sub_D522C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  sub_CDF878(v17);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_D52310(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v103);
  *v101 = 0u;
  memset(v102, 0, 24);
  LOBYTE(v96) = 0;
  v100 = 0;
  v4 = **a1;
  v83 = *(*a1 + 8);
  if (v4 == v83)
  {
    goto LABEL_79;
  }

  v80 = a2;
  v81 = a1;
  do
  {
    sub_D51C50(*(a1 + 8), a1 + 24, v4, v104);
    if (v104[0] == 1)
    {
      v6 = v101[1];
      if (v101[1] >= *&v102[0])
      {
        v7 = sub_D53080(v101, &v104[8]);
      }

      else
      {
        *v101[1] = 0;
        v6[1] = 0;
        v6[2] = 0;
        sub_D531CC(v6, *&v104[8], *&v104[16], (*&v104[16] - *&v104[8]) >> 7);
        v7 = v6 + 3;
      }

      v101[1] = v7;
    }

    else if ((v100 & 1) == 0)
    {
      v87 = *&v104[8];
      sub_435834(v88, &v104[24]);
      v90 = v107;
      v91 = v87;
      *__p = *v88;
      v93 = v89;
      v88[1] = 0;
      v89 = 0;
      v88[0] = 0;
      v94 = v107;
      v95 = 1;
      sub_D533E0(&v96, &v91);
      if (v95 == 1)
      {
        v8 = __p[0];
        if (__p[0])
        {
          v9 = __p[1];
          v10 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              if (*(v9 - 1) < 0)
              {
                operator delete(*(v9 - 3));
              }

              v9 -= 4;
            }

            while (v9 != v8);
            v10 = __p[0];
          }

          __p[1] = v8;
          operator delete(v10);
        }
      }

      v11 = v88[0];
      if (v88[0])
      {
        v12 = v88[1];
        v13 = v88[0];
        if (v88[1] != v88[0])
        {
          do
          {
            if (*(v12 - 1) < 0)
            {
              operator delete(*(v12 - 3));
            }

            v12 -= 4;
          }

          while (v12 != v11);
          v13 = v88[0];
        }

        v88[1] = v11;
        operator delete(v13);
      }
    }

    v85 = v4;
    if (v104[0] == 1)
    {
      v14 = *&v104[8];
      if (*&v104[8])
      {
        v15 = *&v104[16];
        v5 = *&v104[8];
        if (*&v104[16] == *&v104[8])
        {
LABEL_68:
          *&v104[16] = v14;
LABEL_5:
          operator delete(v5);
          goto LABEL_6;
        }

        while (2)
        {
          if (*(v15 - 1) < 0)
          {
            operator delete(*(v15 - 3));
            v17 = *(v15 - 13);
            if (!v17)
            {
              goto LABEL_45;
            }

LABEL_39:
            v18 = *(v15 - 12);
            v19 = v17;
            if (v18 != v17)
            {
              do
              {
                v18 = sub_3EEA68(v18 - 1096);
              }

              while (v18 != v17);
              v19 = *(v15 - 13);
            }

            *(v15 - 12) = v17;
            operator delete(v19);
            v20 = v15 - 16;
            v21 = *(v15 - 16);
            if (v21)
            {
LABEL_46:
              v22 = *(v15 - 15);
              v16 = v21;
              if (v22 != v21)
              {
                do
                {
                  v23 = *(v22 - 3);
                  if (v23)
                  {
                    v24 = *(v22 - 2);
                    v25 = *(v22 - 3);
                    if (v24 != v23)
                    {
                      do
                      {
                        v26 = v24 - 32;
                        v27 = *(v24 - 2);
                        if (v27 != -1)
                        {
                          (off_2673C48[v27])(&v91, v24 - 32);
                        }

                        *(v24 - 2) = -1;
                        v24 -= 32;
                      }

                      while (v26 != v23);
                      v25 = *(v22 - 3);
                    }

                    *(v22 - 2) = v23;
                    operator delete(v25);
                  }

                  v28 = *(v22 - 8);
                  if (v28 != -1)
                  {
                    (off_2673C48[v28])(&v91, v22 - 7);
                  }

                  v29 = v22 - 10;
                  *(v22 - 8) = -1;
                  if (*(v22 - 57) < 0)
                  {
                    operator delete(*v29);
                  }

                  v22 -= 10;
                }

                while (v29 != v21);
                v16 = *v20;
              }

              *(v15 - 15) = v21;
              operator delete(v16);
            }
          }

          else
          {
            v17 = *(v15 - 13);
            if (v17)
            {
              goto LABEL_39;
            }

LABEL_45:
            v20 = v15 - 16;
            v21 = *(v15 - 16);
            if (v21)
            {
              goto LABEL_46;
            }
          }

          v15 = v20;
          if (v20 == v14)
          {
            v5 = *&v104[8];
            goto LABEL_68;
          }

          continue;
        }
      }
    }

    else
    {
      v30 = *&v104[24];
      if (*&v104[24])
      {
        v31 = v105;
        v5 = *&v104[24];
        if (v105 != *&v104[24])
        {
          do
          {
            if (*(v31 - 1) < 0)
            {
              operator delete(*(v31 - 24));
            }

            v31 -= 32;
          }

          while (v31 != v30);
          v5 = *&v104[24];
        }

        v105 = v30;
        goto LABEL_5;
      }
    }

LABEL_6:
    v4 = v85 + 3;
    a1 = v81;
  }

  while (v85 + 3 != v83);
  a2 = v80;
  if (v101[0] == v101[1])
  {
LABEL_79:
    if (v100 == 1)
    {
      *v104 = v96;
      sub_435834(&v104[16], &v97);
      v43 = v99;
      v106 = v99;
    }

    else
    {
      v91.n128_u64[0] = 44;
      v91.n128_u64[1] = &off_2669FE0;
      sub_434934(v104, &v91);
      v43 = v106;
    }

    *a2 = 0;
    v44 = *&v104[16];
    *(a2 + 8) = *v104;
    *(a2 + 24) = v44;
    *(a2 + 40) = v105;
    *(a2 + 48) = v43;
    if (v100 != 1)
    {
      goto LABEL_101;
    }

    goto LABEL_93;
  }

  v32 = sub_4EDB30(*(v81 + 16));
  v33 = v101[0];
  v34 = v101[1];
  if (v101[0] != v101[1])
  {
    v35 = v32;
    v36 = *v101[0];
    v37 = *(v101[0] + 1);
    if (*v101[0] != v37)
    {
      goto LABEL_74;
    }

    while (1)
    {
      v33 += 3;
      if (v33 == v34)
      {
        break;
      }

      v36 = *v33;
      v37 = v33[1];
      if (*v33 != v37)
      {
        do
        {
LABEL_74:
          sub_4C516C(v36, v35++);
          v36 += 128;
        }

        while (v36 != v37);
      }
    }
  }

  *(&v102[0] + 1) = sub_7EA60(v103);
  v38 = v101[0];
  v39 = v101[1];
  if (v101[0] == v101[1])
  {
    v45 = 0.0;
  }

  else
  {
    v40 = v101[1] - v101[0] - 24;
    if (v40 >= 0x60)
    {
      v46 = v40 / 0x18 + 1;
      v47 = v46 & 3;
      if ((v46 & 3) == 0)
      {
        v47 = 4;
      }

      v48 = v46 - v47;
      v42 = (v101[0] + 24 * v48);
      v49 = 0uLL;
      v50 = v101[0];
      v51 = 0uLL;
      do
      {
        v52 = v50;
        v50 += 12;
        v108 = vld3q_f64(v52);
        v52 += 6;
        v49 = vsraq_n_s64(v49, vsubq_s64(v108.val[1], v108.val[0]), 7uLL);
        v109 = vld3q_f64(v52);
        v51 = vsraq_n_s64(v51, vsubq_s64(v109.val[1], v109.val[0]), 7uLL);
        v48 -= 4;
      }

      while (v48);
      v41 = vaddvq_s64(vaddq_s64(v51, v49));
    }

    else
    {
      v41 = 0;
      v42 = v101[0];
    }

    do
    {
      v53 = *v42;
      v54 = v42[1];
      v42 += 3;
      v41 += (v54 - v53) >> 7;
    }

    while (v42 != v101[1]);
    v45 = (v41 / (0xAAAAAAAAAAAAAAABLL * ((v101[1] - v101[0]) >> 3)));
  }

  *&v102[1] = v45;
  *v80 = 1;
  *(v80 + 8) = v38;
  *(v80 + 16) = v39;
  *(v80 + 24) = *&v102[0];
  v101[1] = 0;
  *&v102[0] = 0;
  v101[0] = 0;
  *(v80 + 32) = *(v102 + 8);
  if (v100 == 1)
  {
LABEL_93:
    v55 = v97;
    if (v97)
    {
      v56 = v98;
      v57 = v97;
      if (v98 != v97)
      {
        do
        {
          if (*(v56 - 1) < 0)
          {
            operator delete(*(v56 - 3));
          }

          v56 -= 4;
        }

        while (v56 != v55);
        v57 = v97;
      }

      v98 = v55;
      operator delete(v57);
    }
  }

LABEL_101:
  v58 = v101[0];
  if (!v101[0])
  {
    return;
  }

  v59 = v101[1];
  v60 = v101[0];
  if (v101[1] != v101[0])
  {
    v61 = v101[1];
    v82 = v101[0];
    while (1)
    {
      v64 = *(v61 - 3);
      v61 -= 3;
      v63 = v64;
      if (!v64)
      {
        goto LABEL_106;
      }

      v84 = v59;
      v86 = v61;
      v65 = *(v59 - 2);
      v62 = v63;
      if (v65 != v63)
      {
        break;
      }

LABEL_105:
      *(v84 - 2) = v63;
      operator delete(v62);
      v58 = v82;
      v61 = v86;
LABEL_106:
      v59 = v61;
      if (v61 == v58)
      {
        v60 = v101[0];
        goto LABEL_138;
      }
    }

    while (1)
    {
      if (*(v65 - 1) < 0)
      {
        operator delete(*(v65 - 3));
        v67 = *(v65 - 13);
        if (v67)
        {
LABEL_115:
          v68 = *(v65 - 12);
          v69 = v67;
          if (v68 != v67)
          {
            do
            {
              v68 = sub_3EEA68(v68 - 1096);
            }

            while (v68 != v67);
            v69 = *(v65 - 13);
          }

          *(v65 - 12) = v67;
          operator delete(v69);
          v70 = v65 - 16;
          v71 = *(v65 - 16);
          if (!v71)
          {
            goto LABEL_112;
          }

LABEL_122:
          v72 = *(v65 - 15);
          v66 = v71;
          if (v72 != v71)
          {
            do
            {
              v73 = *(v72 - 3);
              if (v73)
              {
                v74 = *(v72 - 2);
                v75 = *(v72 - 3);
                if (v74 != v73)
                {
                  do
                  {
                    v76 = v74 - 32;
                    v77 = *(v74 - 2);
                    if (v77 != -1)
                    {
                      (off_2673C48[v77])(&v96, v74 - 32);
                    }

                    *(v74 - 2) = -1;
                    v74 -= 32;
                  }

                  while (v76 != v73);
                  v75 = *(v72 - 3);
                }

                *(v72 - 2) = v73;
                operator delete(v75);
              }

              v78 = *(v72 - 8);
              if (v78 != -1)
              {
                (off_2673C48[v78])(&v96, v72 - 7);
              }

              v79 = v72 - 10;
              *(v72 - 8) = -1;
              if (*(v72 - 57) < 0)
              {
                operator delete(*v79);
              }

              v72 -= 10;
            }

            while (v79 != v71);
            v66 = *v70;
          }

          *(v65 - 15) = v71;
          operator delete(v66);
          goto LABEL_112;
        }
      }

      else
      {
        v67 = *(v65 - 13);
        if (v67)
        {
          goto LABEL_115;
        }
      }

      v70 = v65 - 16;
      v71 = *(v65 - 16);
      if (v71)
      {
        goto LABEL_122;
      }

LABEL_112:
      v65 = v70;
      if (v70 == v63)
      {
        v62 = *v86;
        goto LABEL_105;
      }
    }
  }

LABEL_138:
  v101[1] = v58;
  operator delete(v60);
}

void sub_D52AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33)
{
  sub_D53560(&a26);
  sub_CDFC14(&a33);
  _Unwind_Resume(a1);
}

void sub_D52B64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_D52B6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_D52B74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0xD52B78);
  }

  _Unwind_Resume(a1);
}

void sub_D52B7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0xD52B80);
  }

  sub_4A48(a1);
}

void *sub_D52B84(void *a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v6 = a1[2];
  if (v6)
  {
    v7 = a1[3];
    v8 = a1[2];
    if (v7 != v6)
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
      v8 = a1[2];
    }

    a1[3] = v6;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_D52C40(void **a1, uint64_t *a2)
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

  v18 = v2 << 7;
  sub_D52DF8(v2 << 7, a2);
  v7 = (v2 << 7) + 128;
  v8 = *a1;
  v9 = a1[1];
  v10 = v18 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v18 + *a1 - v9;
    do
    {
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *v12 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 40) = *(v11 + 5);
      *(v11 + 3) = 0;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      v13 = *(v11 + 3);
      v14 = *(v11 + 4);
      v15 = *(v11 + 5);
      *(v12 + 94) = *(v11 + 94);
      *(v12 + 64) = v14;
      *(v12 + 80) = v15;
      *(v12 + 48) = v13;
      v16 = *(v11 + 104);
      *(v12 + 120) = *(v11 + 15);
      *(v12 + 104) = v16;
      *(v11 + 14) = 0;
      *(v11 + 15) = 0;
      *(v11 + 13) = 0;
      v11 += 128;
      v12 += 128;
    }

    while (v11 != v9);
    do
    {
      sub_60B38C(v8);
      v8 += 128;
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

void sub_D52DE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CE38D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D52DF8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *v3, *(v3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 8) - *v3) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_9B8E8C(a1 + 24, *(v3 + 24), *(v3 + 32), 0xE21A291C077975B9 * ((*(v3 + 32) - *(v3 + 24)) >> 3));
  v4 = *(v3 + 48);
  v5 = *(v3 + 64);
  v6 = *(v3 + 80);
  *(a1 + 94) = *(v3 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  if (*(v3 + 127) < 0)
  {
    sub_325C((a1 + 104), *(v3 + 104), *(v3 + 112));
  }

  else
  {
    v7 = *(v3 + 104);
    *(a1 + 120) = *(v3 + 120);
    *(a1 + 104) = v7;
  }

  return a1;
}

void sub_D52ED0(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D52F00(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = a1 + 8;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(a1 + 16);
        v7 = *(a1 + 8);
        if (v6 != v5)
        {
          do
          {
            v6 -= 128;
            sub_60B38C(v6);
          }

          while (v6 != v5);
          v7 = *v4;
        }

        *(a1 + 16) = v5;
        operator delete(v7);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
      }

LABEL_26:
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      goto LABEL_27;
    }

    v11 = (a1 + 8);
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = *(a1 + 16);
      v14 = *(a1 + 8);
      if (v13 != v12)
      {
        do
        {
          v13 -= 128;
          sub_60B38C(v13);
        }

        while (v13 != v12);
        v14 = *v11;
      }

      *(a1 + 16) = v12;
      operator delete(v14);
    }

    *v11 = *(a2 + 8);
  }

  else
  {
    if (*a2)
    {
      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 24);
        if (v9 != v8)
        {
          do
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 24));
            }

            v9 -= 32;
          }

          while (v9 != v8);
          v10 = *(a1 + 24);
        }

        *(a1 + 32) = v8;
        operator delete(v10);
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      goto LABEL_26;
    }

    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_27:
  *a1 = *a2;
  return a1;
}

uint64_t sub_D53080(uint64_t a1, uint64_t *a2)
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

  v11 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v11[1] = 0;
  v11[2] = 0;
  *v11 = 0;
  sub_D531CC(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 7);
  v6 = 24 * v2 + 24;
  v7 = *(a1 + 8);
  v8 = 24 * v2 + *a1 - v7;
  sub_D3B288(a1, *a1, v7, (v11 + *a1 - v7));
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_D531B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDF7D4(va);
  _Unwind_Resume(a1);
}

void sub_D531CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 57))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_D5329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 128;
    v15 = -v12;
    do
    {
      sub_60B38C(v14);
      v14 -= 128;
      v15 += 128;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_CDF538(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_D532D4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_9B8E8C(a1 + 24, *(a2 + 24), *(a2 + 32), 0xE21A291C077975B9 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = v4;
  if (*(a2 + 127) < 0)
  {
    sub_325C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
  }

  return a1;
}

void sub_D533B0(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void sub_D533E0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      *a1 = *a2;
      v3 = (a1 + 16);
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = a2;
        v6 = *(a1 + 24);
        v7 = *(a1 + 16);
        if (v6 != v4)
        {
          do
          {
            if (*(v6 - 1) < 0)
            {
              operator delete(*(v6 - 24));
            }

            v6 -= 32;
          }

          while (v6 != v4);
          v7 = *v3;
        }

        *(a1 + 24) = v4;
        operator delete(v7);
        *v3 = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        a2 = v5;
      }

      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      v11 = *(a2 + 40);
      *(a1 + 42) = *(a2 + 42);
      *(a1 + 40) = v11;
    }
  }

  else if (*(a1 + 48))
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = *(a1 + 24);
      v10 = *(a1 + 16);
      if (v9 != v8)
      {
        do
        {
          if (*(v9 - 1) < 0)
          {
            operator delete(*(v9 - 24));
          }

          v9 -= 32;
        }

        while (v9 != v8);
        v10 = *(a1 + 16);
      }

      *(a1 + 24) = v8;
      operator delete(v10);
    }

    *(a1 + 48) = 0;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = 1;
  }
}

uint64_t sub_D53560(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(a1 + 24);
      v4 = *(a1 + 16);
      if (v3 != v2)
      {
        do
        {
          if (*(v3 - 1) < 0)
          {
            operator delete(*(v3 - 24));
          }

          v3 -= 32;
        }

        while (v3 != v2);
        v4 = *(a1 + 16);
      }

      *(a1 + 24) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t **sub_D535E0(void *a1, uint64_t a2)
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

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

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
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_D539E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_D539F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_D54578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p)
{
  v23 = v21;
  while (1)
  {
    v24 = *(v23 - 9);
    v23 -= 4;
    if (v24 < 0)
    {
      operator delete(*v23);
    }

    if (v23 == &__p)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_D54898()
{
  v0 = __chkstk_darwin();
  v32 = v1;
  memset(v47, 0, sizeof(v47));
  v48 = 1065353216;
  v52 = 0;
  v53 = 0;
  v50[5] = 0;
  v50[4] = 0;
  v51 = 0;
  v49 = 0u;
  memset(v50, 0, 28);
  sub_7E9A4(&v46);
  v2 = v0[7];
  v3 = v0[8];
  v34 = v0;
  if (v2 != v3)
  {
    for (i = v2 + 40; i != v3; i += 40)
    {
      v5 = *(v2 + 32);
      if (v5 < *(i + 32) && v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v2 = i;
      }
    }
  }

  if (v2 == v3 || (v7 = *(v2 + 32), v7 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = 0x7FFFFFFFFFFFFFFELL;
  }

  if (v7 <= v0[19])
  {
    v9 = v0[14];
    v35[1].n128_u8[7] = 10;
    strcpy(v35, "WalkingETA");
    __p = 0uLL;
    v45 = 0;
    sub_3AEC94(v9, v35, &__p);
    v10 = __p.n128_u64[0];
    if (__p.n128_u64[0])
    {
      v11 = __p.n128_u64[1];
      v12 = __p.n128_u64[0];
      if (__p.n128_u64[1] != __p.n128_u64[0])
      {
        do
        {
          v13 = *(v11 - 1);
          v11 -= 3;
          if (v13 < 0)
          {
            operator delete(*v11);
          }
        }

        while (v11 != v10);
        v12 = __p.n128_u64[0];
      }

      __p.n128_u64[1] = v10;
      operator delete(v12);
    }

    if (v35[1].n128_i8[7] < 0)
    {
      operator delete(v35[0].n128_u64[0]);
    }

    v33 = v9;
    if (!sub_7E7E4(2u))
    {
LABEL_47:
      v25 = v34[26];
      strcpy(v35, "enable_u_turn_clipping");
      v35[1].n128_u8[7] = 22;
      sub_5F9D0(v25, v35);
      if (v35[1].n128_i8[7] < 0)
      {
        operator delete(v35[0].n128_u64[0]);
      }

      v35[1].n128_u8[7] = 11;
      strcpy(v35, "PathFinding");
      __p = 0uLL;
      v45 = 0;
      v26 = sub_3AEC94(v9, v35, &__p);
      v27 = __p.n128_u64[0];
      if (__p.n128_u64[0])
      {
        v28 = __p.n128_u64[1];
        v29 = __p.n128_u64[0];
        if (__p.n128_u64[1] != __p.n128_u64[0])
        {
          do
          {
            v30 = *(v28 - 1);
            v28 -= 3;
            if (v30 < 0)
            {
              operator delete(*v28);
            }
          }

          while (v28 != v27);
          v29 = __p.n128_u64[0];
        }

        __p.n128_u64[1] = v27;
        operator delete(v29);
      }

      if (v35[1].n128_i8[7] < 0)
      {
        operator delete(v35[0].n128_u64[0]);
      }

      v35[1].n128_u8[7] = 12;
      strcpy(v35, "use_dijkstra");
      sub_5F9D0(v26, v35);
      if (v35[1].n128_i8[7] < 0)
      {
        operator delete(v35[0].n128_u64[0]);
      }

      v35[1].n128_u8[7] = 21;
      strcpy(v35, "max_num_scanned_nodes");
      sub_353010(v26, v35);
      if (v35[1].n128_i8[7] < 0)
      {
        operator delete(v35[0].n128_u64[0]);
      }

      operator new();
    }

    sub_19594F8(v35);
    v14 = sub_4A5C(v35, "Using walking cost function ", 28);
    v15 = v34[27];
    v18 = *(v15 + 8);
    v16 = v15 + 8;
    v17 = v18;
    v19 = *(v16 + 23);
    if (v19 >= 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = v17;
    }

    if (v19 >= 0)
    {
      v21 = *(v16 + 23);
    }

    else
    {
      v21 = *(v16 + 8);
    }

    sub_4A5C(v14, v20, v21);
    if ((v43 & 0x10) != 0)
    {
      v23 = v42;
      if (v42 < v39)
      {
        v42 = v39;
        v23 = v39;
      }

      v24 = v38;
      v22 = v23 - v38;
      if (v23 - v38 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if ((v43 & 8) == 0)
      {
        v22 = 0;
        HIBYTE(v45) = 0;
LABEL_42:
        __p.n128_u8[v22] = 0;
        sub_7E854(&__p, 2u);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(__p.n128_u64[0]);
        }

        if (v41 < 0)
        {
          operator delete(v40);
        }

        std::locale::~locale(&v35[1]);
        std::ostream::~ostream();
        std::ios::~ios();
        v9 = v33;
        goto LABEL_47;
      }

      v24 = v35[1].n128_u64[1];
      v22 = v37 - v35[1].n128_u64[1];
      if (v37 - v35[1].n128_u64[1] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_65:
        sub_3244();
      }
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v45) = v22;
    if (v22)
    {
      memmove(&__p, v24, v22);
    }

    goto LABEL_42;
  }

  __p.n128_u64[0] = 16;
  __p.n128_u64[1] = &off_2669FE0;
  sub_434934(v35, &__p);
  *v32 = 0;
  v8 = v35[1];
  *(v32 + 8) = v35[0];
  *(v32 + 24) = v8;
  *(v32 + 40) = v36;
  *(v32 + 48) = v37;
  return sub_D5B47C(v47);
}

void sub_D58684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p)
{
  sub_C64C18(&__p);
  sub_CDC398(&STACK[0x260]);
  sub_CDE49C(&STACK[0x278]);
  sub_D5B290(&STACK[0x320]);
  sub_D5B3B8(&STACK[0x2548]);
  sub_D5B404(&STACK[0x2C50]);
  sub_D5B47C(&STACK[0x2F80]);
  _Unwind_Resume(a1);
}

void sub_D58D50(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_45AC50(a1);
  for (i = sub_588D8(a1); v6 != i; v6 += 552)
  {
    sub_117C2EC(v6, a2, __p, 0.95);
    if (sub_F64B34(__p))
    {
      sub_117C2EC(v6, a2, v17, 0.0);
      v8 = __p[0];
      if (__p[0])
      {
        v9 = __p[1];
        v10 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v9 = sub_4547F0(v9 - 552);
          }

          while (v9 != v8);
          v10 = __p[0];
        }

        __p[1] = v8;
        operator delete(v10);
      }

      *__p = *v17;
      v22 = v18;
      v17[1] = 0;
      v18 = 0;
      v17[0] = 0;
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23);
        v11 = v17[0];
        v23 = v19;
        v24 = v20;
        HIBYTE(v20) = 0;
        LOBYTE(v19) = 0;
        if (v17[0])
        {
          v12 = v17[1];
          v13 = v17[0];
          if (v17[1] != v17[0])
          {
            do
            {
              v12 = sub_4547F0(v12 - 552);
            }

            while (v12 != v11);
            v13 = v17[0];
          }

          v17[1] = v11;
          operator delete(v13);
        }
      }

      else
      {
        v23 = v19;
        v24 = v20;
      }
    }

    if (!sub_F64B34(__p))
    {
      sub_F744D0(a3, __p, 0);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
      v14 = __p[0];
      if (__p[0])
      {
LABEL_25:
        v15 = __p[1];
        v16 = v14;
        if (__p[1] != v14)
        {
          do
          {
            v15 = sub_4547F0(v15 - 552);
          }

          while (v15 != v14);
          v16 = __p[0];
        }

        __p[1] = v14;
        operator delete(v16);
      }
    }

    else
    {
      v14 = __p[0];
      if (__p[0])
      {
        goto LABEL_25;
      }
    }
  }
}

void sub_D58F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_454784(va);
  sub_CDCD6C(v7);
  _Unwind_Resume(a1);
}

double sub_D58FB0(uint64_t a1)
{
  *(a1 + 1474) = 0;
  nullsub_1(a1 + 8);
  v2.i32[0] = *(a1 + 1496);
  v3 = 4;
  if (!vcvts_n_u32_f32(*v2.i32, 2uLL))
  {
    while ((v3 & 0x8000000000000000) == 0)
    {
      v3 *= 2;
      if ((*v2.i32 * v3))
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "resize overflow");
  }

LABEL_4:
  if (*(a1 + 1528) || v3 != *(a1 + 1536))
  {
    v2 = sub_D5B9C0(a1 + 1480, v3);
  }

  v2.i32[0] = *(a1 + 1576);
  v4 = 4;
  if (!vcvts_n_u32_f32(*v2.i32, 2uLL))
  {
    while ((v4 & 0x8000000000000000) == 0)
    {
      v4 *= 2;
      if ((*v2.i32 * v4))
      {
        goto LABEL_10;
      }
    }

    goto LABEL_15;
  }

LABEL_10:
  if (*(a1 + 1688) || v4 != *(a1 + 1696))
  {

    v2.i64[0] = sub_D5BB10(a1 + 1560, v4).u64[0];
  }

  return *v2.i64;
}

uint64_t sub_D590F8(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a3 + 8);
    v7 = a1 + 68;
    do
    {
      while (1)
      {
        v9 = (v7 - 68);
        if (v6 < *(a3 + 16))
        {
          break;
        }

        v6 = sub_D59894(a3, v9);
        *(a3 + 8) = v6;
        v8 = v7 + 1;
        v7 += 69;
        if (v8 == a2)
        {
          return a3;
        }
      }

      v10 = *v9;
      *(v6 + 16) = *(v7 - 66);
      *v6 = v10;
      *(v7 - 67) = 0u;
      *v9 = 0;
      v11 = v7 - 65;
      *(v6 + 40) = 0;
      *(v6 + 24) = 0u;
      *(v6 + 24) = *(v7 - 65);
      *(v6 + 40) = *(v7 - 63);
      v11[2] = 0;
      *v11 = 0u;
      v12 = *(v7 - 31);
      v13 = *(v7 - 29);
      v14 = *(v7 - 56);
      *(v6 + 64) = *(v7 - 30);
      *(v6 + 80) = v13;
      *(v6 + 48) = v12;
      v15 = v7 - 55;
      *(v6 + 96) = v14;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0u;
      *(v6 + 104) = *(v7 - 55);
      *(v6 + 120) = *(v7 - 53);
      v15[2] = 0;
      *v15 = 0u;
      v16 = v7 - 52;
      *(v6 + 144) = 0;
      *(v6 + 128) = 0u;
      *(v6 + 128) = *(v7 - 26);
      *(v6 + 144) = *(v7 - 50);
      v16[2] = 0;
      *v16 = 0u;
      v17 = v7 - 49;
      *(v6 + 168) = 0;
      *(v6 + 152) = 0u;
      *(v6 + 152) = *(v7 - 49);
      *(v6 + 168) = *(v7 - 47);
      v17[2] = 0;
      *v17 = 0u;
      v18 = *(v7 - 22);
      v19 = *(v7 - 42);
      *(v6 + 176) = *(v7 - 23);
      *(v6 + 192) = v18;
      v20 = v7 - 41;
      *(v6 + 208) = v19;
      *(v6 + 216) = 0;
      *(v6 + 224) = 0u;
      *(v6 + 216) = *(v7 - 41);
      *(v6 + 232) = *(v7 - 39);
      v20[2] = 0;
      *v20 = 0u;
      v21 = v7 - 38;
      *(v6 + 256) = 0;
      *(v6 + 240) = 0u;
      *(v6 + 240) = *(v7 - 19);
      *(v6 + 256) = *(v7 - 36);
      v21[2] = 0;
      *v21 = 0u;
      v22 = *(v7 - 35);
      v23 = *(v7 - 31);
      *(v6 + 280) = *(v7 - 33);
      *(v6 + 296) = v23;
      *(v6 + 264) = v22;
      v24 = *(v7 - 19);
      v25 = *(v7 - 15);
      v26 = *(v7 - 21);
      *(v6 + 408) = *(v7 - 17);
      *(v6 + 424) = v25;
      *(v6 + 376) = v26;
      *(v6 + 392) = v24;
      v27 = *(v7 - 11);
      v28 = *(v7 - 7);
      v29 = *(v7 - 13);
      *(v6 + 472) = *(v7 - 9);
      *(v6 + 488) = v28;
      *(v6 + 440) = v29;
      *(v6 + 456) = v27;
      v30 = *(v7 - 29);
      v31 = *(v7 - 27);
      v32 = *(v7 - 23);
      *(v6 + 344) = *(v7 - 25);
      *(v6 + 360) = v32;
      *(v6 + 312) = v30;
      *(v6 + 328) = v31;
      *(v6 + 504) = *(v7 - 5);
      *(v6 + 512) = *(v7 - 2);
      *(v7 - 3) = 0;
      *(v7 - 5) = 0u;
      *(v6 + 544) = 0;
      *(v6 + 528) = 0u;
      *(v6 + 528) = *(v7 - 1);
      *(v6 + 544) = *v7;
      *(v7 - 2) = 0;
      *(v7 - 1) = 0;
      *v7 = 0;
      v6 += 552;
      *(a3 + 8) = v6;
      v33 = v7 + 1;
      v7 += 69;
    }

    while (v33 != a2);
  }

  return a3;
}

void *sub_D59354(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_D59434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D5AF20(va);
  _Unwind_Resume(a1);
}

void sub_D59448(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[8];
      if (v4)
      {
        do
        {
          v5 = *v4;
          operator delete(v4);
          v4 = v5;
        }

        while (v5);
      }

      v6 = v2[6];
      v2[6] = 0;
      if (v6)
      {
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_D594BC(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v24 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 24 * v2;
  __p = 0;
  v21 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v22 = 24 * v2 + 24;
  v23 = 0;
  sub_CDD28C(a1, &__p);
  v7 = a1[1];
  v8 = v21;
  v9 = v22;
  if (v22 != v21)
  {
    v10 = v22;
    while (1)
    {
      v13 = *(v10 - 3);
      v10 -= 3;
      v12 = v13;
      v22 = v10;
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = *(v9 - 16);
      v11 = v12;
      if (v14 != v12)
      {
        break;
      }

LABEL_13:
      *(v9 - 16) = v12;
      operator delete(v11);
      v10 = v22;
LABEL_14:
      v9 = v10;
      if (v10 == v8)
      {
        goto LABEL_27;
      }
    }

    while (1)
    {
      if (*(v14 - 1) < 0)
      {
        operator delete(*(v14 - 3));
        v15 = v14 - 6;
        v16 = *(v14 - 6);
        if (v16)
        {
LABEL_24:
          v17 = *(v14 - 5);
          v18 = v16;
          if (v17 != v16)
          {
            do
            {
              v17 = sub_4547F0(v17 - 552);
            }

            while (v17 != v16);
            v18 = *v15;
          }

          *(v14 - 5) = v16;
          operator delete(v18);
        }
      }

      else
      {
        v15 = v14 - 6;
        v16 = *(v14 - 6);
        if (v16)
        {
          goto LABEL_24;
        }
      }

      v14 = v15;
      if (v15 == v12)
      {
        v11 = *v10;
        goto LABEL_13;
      }
    }
  }

LABEL_27:
  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_D596A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD3FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D596B4(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  v23 = a1;
  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 24 * v1;
  __p = 0;
  v20 = v5;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  v21 = 24 * v1 + 24;
  v22 = 0;
  sub_CDD28C(a1, &__p);
  v6 = a1[1];
  v7 = v20;
  v8 = v21;
  if (v21 != v20)
  {
    v9 = v21;
    while (1)
    {
      v12 = *(v9 - 3);
      v9 -= 3;
      v11 = v12;
      v21 = v9;
      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = *(v8 - 16);
      v10 = v11;
      if (v13 != v11)
      {
        break;
      }

LABEL_13:
      *(v8 - 16) = v11;
      operator delete(v10);
      v9 = v21;
LABEL_14:
      v8 = v9;
      if (v9 == v7)
      {
        goto LABEL_27;
      }
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v14 = v13 - 6;
        v15 = *(v13 - 6);
        if (v15)
        {
LABEL_24:
          v16 = *(v13 - 5);
          v17 = v15;
          if (v16 != v15)
          {
            do
            {
              v16 = sub_4547F0(v16 - 552);
            }

            while (v16 != v15);
            v17 = *v14;
          }

          *(v13 - 5) = v15;
          operator delete(v17);
        }
      }

      else
      {
        v14 = v13 - 6;
        v15 = *(v13 - 6);
        if (v15)
        {
          goto LABEL_24;
        }
      }

      v13 = v14;
      if (v14 == v11)
      {
        v10 = *v9;
        goto LABEL_13;
      }
    }
  }

LABEL_27:
  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_D59880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD3FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D59894(void **a1, uint64_t a2)
{
  v2 = 0xF128CFC4A33F128DLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x76B981DAE6076BLL)
  {
    sub_1794();
  }

  if (0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xE2519F89467E251ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xF128CFC4A33F128DLL * ((a1[2] - *a1) >> 3) >= 0x3B5CC0ED7303B5)
  {
    v4 = 0x76B981DAE6076BLL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x76B981DAE6076BLL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  *v5 = *a2;
  *(v5 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 40) = *(a2 + 40);
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(v5 + 96) = *(a2 + 96);
  v6 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v6;
  *(v5 + 48) = *(a2 + 48);
  *(v5 + 104) = *(a2 + 104);
  *(v5 + 120) = *(a2 + 120);
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0;
  *(v5 + 128) = *(a2 + 128);
  *(v5 + 144) = *(a2 + 144);
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0;
  *(v5 + 152) = *(a2 + 152);
  *(v5 + 168) = *(a2 + 168);
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0;
  v7 = *(a2 + 176);
  v8 = *(a2 + 192);
  *(v5 + 208) = *(a2 + 208);
  *(v5 + 176) = v7;
  *(v5 + 192) = v8;
  *(v5 + 216) = *(a2 + 216);
  *(v5 + 232) = *(a2 + 232);
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(v5 + 240) = *(a2 + 240);
  *(v5 + 256) = *(a2 + 256);
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0;
  v9 = *(a2 + 264);
  v10 = *(a2 + 296);
  *(v5 + 280) = *(a2 + 280);
  *(v5 + 296) = v10;
  *(v5 + 264) = v9;
  v11 = *(a2 + 312);
  v12 = *(a2 + 328);
  v13 = *(a2 + 360);
  *(v5 + 344) = *(a2 + 344);
  *(v5 + 360) = v13;
  *(v5 + 312) = v11;
  *(v5 + 328) = v12;
  v14 = *(a2 + 376);
  v15 = *(a2 + 392);
  v16 = *(a2 + 424);
  *(v5 + 408) = *(a2 + 408);
  *(v5 + 424) = v16;
  *(v5 + 376) = v14;
  *(v5 + 392) = v15;
  v17 = *(a2 + 440);
  v18 = *(a2 + 456);
  v19 = *(a2 + 488);
  *(v5 + 472) = *(a2 + 472);
  *(v5 + 488) = v19;
  *(v5 + 440) = v17;
  *(v5 + 456) = v18;
  *(v5 + 504) = *(a2 + 504);
  *(a2 + 504) = 0;
  v20 = *(a2 + 528);
  *(v5 + 512) = *(a2 + 512);
  *(v5 + 528) = v20;
  *(v5 + 544) = *(a2 + 544);
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 0;
  v21 = v5 + 552;
  v22 = *a1;
  v23 = a1[1];
  v24 = v5 + *a1 - v23;
  if (*a1 != v23)
  {
    v25 = *a1;
    v26 = v24;
    do
    {
      v27 = *v25;
      *(v26 + 16) = *(v25 + 2);
      *v26 = v27;
      *(v25 + 8) = 0uLL;
      *v25 = 0;
      *(v26 + 40) = 0;
      *(v26 + 24) = 0uLL;
      *(v26 + 24) = *(v25 + 24);
      *(v26 + 40) = *(v25 + 5);
      *(v25 + 5) = 0;
      *(v25 + 24) = 0uLL;
      v28 = *(v25 + 3);
      v29 = *(v25 + 5);
      v30 = *(v25 + 12);
      *(v26 + 64) = *(v25 + 4);
      *(v26 + 80) = v29;
      *(v26 + 48) = v28;
      *(v26 + 96) = v30;
      *(v26 + 104) = 0;
      *(v26 + 112) = 0uLL;
      *(v26 + 104) = *(v25 + 104);
      *(v26 + 120) = *(v25 + 15);
      *(v25 + 15) = 0;
      *(v25 + 104) = 0uLL;
      *(v26 + 144) = 0;
      *(v26 + 128) = 0uLL;
      *(v26 + 128) = *(v25 + 8);
      *(v26 + 144) = *(v25 + 18);
      *(v25 + 18) = 0;
      *(v25 + 8) = 0uLL;
      *(v26 + 168) = 0;
      *(v26 + 152) = 0uLL;
      *(v26 + 152) = *(v25 + 152);
      *(v26 + 168) = *(v25 + 21);
      *(v25 + 21) = 0;
      *(v25 + 152) = 0uLL;
      v31 = *(v25 + 12);
      v32 = *(v25 + 26);
      *(v26 + 176) = *(v25 + 11);
      *(v26 + 192) = v31;
      *(v26 + 208) = v32;
      *(v26 + 216) = 0;
      *(v26 + 224) = 0uLL;
      *(v26 + 216) = *(v25 + 216);
      *(v26 + 232) = *(v25 + 29);
      *(v25 + 29) = 0;
      *(v25 + 216) = 0uLL;
      *(v26 + 256) = 0;
      *(v26 + 240) = 0uLL;
      *(v26 + 240) = *(v25 + 15);
      *(v26 + 256) = *(v25 + 32);
      *(v25 + 32) = 0;
      *(v25 + 15) = 0uLL;
      v33 = *(v25 + 264);
      v34 = *(v25 + 296);
      *(v26 + 280) = *(v25 + 280);
      *(v26 + 296) = v34;
      *(v26 + 264) = v33;
      v35 = *(v25 + 424);
      v37 = *(v25 + 376);
      v36 = *(v25 + 392);
      *(v26 + 408) = *(v25 + 408);
      *(v26 + 424) = v35;
      *(v26 + 376) = v37;
      *(v26 + 392) = v36;
      v38 = *(v25 + 488);
      v40 = *(v25 + 440);
      v39 = *(v25 + 456);
      *(v26 + 472) = *(v25 + 472);
      *(v26 + 488) = v38;
      *(v26 + 440) = v40;
      *(v26 + 456) = v39;
      v41 = *(v25 + 312);
      v42 = *(v25 + 328);
      v43 = *(v25 + 360);
      *(v26 + 344) = *(v25 + 344);
      *(v26 + 360) = v43;
      *(v26 + 312) = v41;
      *(v26 + 328) = v42;
      *(v26 + 504) = *(v25 + 63);
      *(v26 + 512) = *(v25 + 32);
      *(v25 + 65) = 0;
      *(v25 + 504) = 0uLL;
      *(v26 + 544) = 0;
      *(v26 + 528) = 0uLL;
      *(v26 + 528) = *(v25 + 33);
      *(v26 + 544) = *(v25 + 68);
      *(v25 + 68) = 0;
      *(v25 + 33) = 0uLL;
      v25 += 552;
      v26 += 552;
    }

    while (v25 != v23);
    do
    {
      v22 = (sub_4547F0(v22) + 552);
    }

    while (v22 != v23);
    v22 = *a1;
  }

  *a1 = v24;
  a1[1] = v21;
  a1[2] = 0;
  if (v22)
  {
    operator delete(v22);
  }

  return v21;
}

void sub_D59C9C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    v26 = a1;
    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    __p = 0;
    v23 = 24 * v5;
    v25 = 0;
    v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero((24 * v5), v10);
    v24 = (24 * v5 + v10);
    sub_CDD28C(a1, &__p);
    v11 = v23;
    v12 = v24;
    if (v24 != v23)
    {
      v13 = v24;
      while (1)
      {
        v16 = *(v13 - 3);
        v13 -= 3;
        v15 = v16;
        v24 = v13;
        if (!v16)
        {
          goto LABEL_18;
        }

        v17 = *(v12 - 2);
        v14 = v15;
        if (v17 != v15)
        {
          break;
        }

LABEL_17:
        *(v12 - 2) = v15;
        operator delete(v14);
        v13 = v24;
LABEL_18:
        v12 = v13;
        if (v13 == v11)
        {
          goto LABEL_31;
        }
      }

      while (1)
      {
        if (*(v17 - 1) < 0)
        {
          operator delete(*(v17 - 3));
          v18 = v17 - 6;
          v19 = *(v17 - 6);
          if (v19)
          {
LABEL_28:
            v20 = *(v17 - 5);
            v21 = v19;
            if (v20 != v19)
            {
              do
              {
                v20 = sub_4547F0(v20 - 552);
              }

              while (v20 != v19);
              v21 = *v18;
            }

            *(v17 - 5) = v19;
            operator delete(v21);
          }
        }

        else
        {
          v18 = v17 - 6;
          v19 = *(v17 - 6);
          if (v19)
          {
            goto LABEL_28;
          }
        }

        v17 = v18;
        if (v18 == v15)
        {
          v14 = *v13;
          goto LABEL_17;
        }
      }
    }

LABEL_31:
    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_D59EE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD3FC(va);
  _Unwind_Resume(a1);
}

void sub_D59EF4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v8 = *(a2 + 1);
        *(v7 + 25) = *(a2 + 25);
        v7[1] = v8;
        if (v7 != a2)
        {
          *(v7 + 20) = *(a2 + 20);
          sub_D5A18C((v7 + 3), a2[8], 0);
        }

        v9 = *v7;
        sub_D5A05C(a1, v7);
        a2 = *a2;
        v7 = v9;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      do
      {
        v10 = *v7;
        v11 = *(v7 + 8);
        if (v11)
        {
          do
          {
            v12 = *v11;
            operator delete(v11);
            v11 = v12;
          }

          while (v12);
        }

        v13 = *(v7 + 6);
        *(v7 + 6) = 0;
        if (v13)
        {
          operator delete(v13);
        }

        operator delete(v7);
        v7 = v10;
      }

      while (v10);
    }
  }

LABEL_13:
  if (a2 != a3)
  {
    sub_D5AD60();
  }
}

void sub_D5A018(void *a1)
{
  __cxa_begin_catch(a1);
  sub_D59448(v1, v2);
  __cxa_rethrow();
}

void sub_D5A048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_D3BE90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D5A05C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_D3B8E4(a1, (a2 + 16));
  *(a2 + 8) = v4;
  v5 = sub_D5A8A0(a1, v4, a2 + 16);
  v6 = a1[1];
  v7 = *(a2 + 8);
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    if (v7 >= *&v6)
    {
      v7 %= *&v6;
    }
  }

  else
  {
    v7 &= *&v6 - 1;
  }

  if (v5)
  {
    *a2 = *v5;
    *v5 = a2;
    if (*a2)
    {
      v9 = *(*a2 + 8);
      if (v8.u32[0] > 1uLL)
      {
        if (v9 >= *&v6)
        {
          v9 %= *&v6;
        }
      }

      else
      {
        v9 &= *&v6 - 1;
      }

      if (v9 != v7)
      {
        v12 = (*a1 + 8 * v9);
LABEL_19:
        *v12 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v10 = *a1;
    *(*a1 + 8 * v7) = a1 + 2;
    if (*a2)
    {
      v11 = *(*a2 + 8);
      if (v8.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      v12 = (v10 + 8 * v11);
      goto LABEL_19;
    }
  }

  ++a1[3];
  return a2;
}

void sub_D5A18C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v7[2] = a2[2];
        v8 = *v7;
        sub_D5A2E0(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v9 = *v7;
        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_7:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_D5A298(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_D5A2E0(uint64_t *a1, uint64_t a2)
{
  v4 = a2 + 16;
  v5 = (*(a2 + 20) + (*(a2 + 16) << 6) + (*(a2 + 16) >> 2) + 2654435769u) ^ *(a2 + 16);
  *(v4 - 8) = v5;
  v6 = sub_D5A42C(a1, v5, v4);
  v7 = a1[1];
  v8 = *(v4 - 8);
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    if (v8 >= *&v7)
    {
      v8 %= *&v7;
    }

    if (v6)
    {
LABEL_3:
      *a2 = *v6;
      *v6 = a2;
      if (*a2)
      {
        v10 = *(*a2 + 8);
        if (v9.u32[0] > 1uLL)
        {
          if (v10 >= *&v7)
          {
            v10 %= *&v7;
          }
        }

        else
        {
          v10 &= *&v7 - 1;
        }

        if (v10 != v8)
        {
          v13 = (*a1 + 8 * v10);
LABEL_19:
          *v13 = a2;
          goto LABEL_20;
        }
      }

      goto LABEL_20;
    }
  }

  else
  {
    v8 &= *&v7 - 1;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  *a2 = a1[2];
  a1[2] = a2;
  v11 = *a1;
  *(*a1 + 8 * v8) = a1 + 2;
  if (*a2)
  {
    v12 = *(*a2 + 8);
    if (v9.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    v13 = (v11 + 8 * v12);
    goto LABEL_19;
  }

LABEL_20:
  ++a1[3];
  return a2;
}

uint64_t *sub_D5A42C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (v6 && (v8 * v6) >= v7)
  {
    v9 = v6 - 1;
    if ((v6 & (v6 - 1)) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  v18 = 1;
  if (v6 >= 3)
  {
    v18 = (v6 & (v6 - 1)) != 0;
  }

  v19 = v18 | (2 * v6);
  v20 = vcvtps_u32_f32(v7 / v8);
  if (v19 <= v20)
  {
    prime = v20;
  }

  else
  {
    prime = v19;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v6 = *(a1 + 8);
  }

  if (prime > v6)
  {
    goto LABEL_27;
  }

  if (prime < v6)
  {
    v22 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v6 < 3 || (v23 = vcnt_s8(v6), v23.i16[0] = vaddlv_u8(v23), v23.u32[0] > 1uLL))
    {
      v25 = prime;
      v26 = std::__next_prime(v22);
      if (v25 <= v26)
      {
        prime = v26;
      }

      else
      {
        prime = v25;
      }

      if (prime >= v6)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v24 = 1 << -__clz(v22 - 1);
      if (v22 >= 2)
      {
        v22 = v24;
      }

      if (prime <= v22)
      {
        prime = v22;
      }

      if (prime >= v6)
      {
        goto LABEL_43;
      }
    }

LABEL_27:
    sub_D5A6CC(a1, prime);
  }

LABEL_43:
  v6 = *(a1 + 8);
  v9 = v6 - 1;
  if ((v6 & (v6 - 1)) == 0)
  {
LABEL_4:
    v10 = *(*a1 + 8 * (v9 & a2));
    if (!v10)
    {
      return 0;
    }

    v11 = 0;
    do
    {
      result = v10;
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v17 = v10[1];
      if ((v17 & v9) != (v9 & a2))
      {
        break;
      }

      if (v17 == a2)
      {
        v12 = *(v10 + 4) == *a3 && *(a3 + 4) == *(v10 + 10);
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13 != (v11 & 1);
      v15 = v11 & v14;
      v11 |= v14;
    }

    while ((v15 & 1) == 0);
    return result;
  }

LABEL_44:
  v27 = a2;
  if (v6 <= a2)
  {
    v27 = a2 % v6;
  }

  v28 = *(*a1 + 8 * v27);
  if (!v28)
  {
    return 0;
  }

  v29 = 0;
  do
  {
    result = v28;
    v28 = *v28;
    if (!v28)
    {
      break;
    }

    v34 = v28[1];
    v35 = v34;
    if (v34 >= v6)
    {
      v35 = v34 % v6;
    }

    if (v35 != v27)
    {
      break;
    }

    if (v34 == a2)
    {
      v30 = *(v28 + 4) == *a3 && *(a3 + 4) == *(v28 + 10);
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31 != (v29 & 1);
    v33 = v29 & v32;
    v29 |= v32;
  }

  while (v33 != 1);
  return result;
}

void sub_D5A6CC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_D5A8A0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v12 = 1;
    if (v6 >= 3)
    {
      v12 = (v6 & (v6 - 1)) != 0;
    }

    v13 = v12 | (2 * v6);
    v14 = vcvtps_u32_f32(v7 / v8);
    if (v13 <= v14)
    {
      prime = v14;
    }

    else
    {
      prime = v13;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
      goto LABEL_15;
    }

    if (prime < v6)
    {
      v16 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v17 = vcnt_s8(v6), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
      {
        v19 = prime;
        v20 = std::__next_prime(v16);
        if (v19 <= v20)
        {
          prime = v20;
        }

        else
        {
          prime = v19;
        }

        if (prime >= v6)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = 1 << -__clz(v16 - 1);
        if (v16 >= 2)
        {
          v16 = v18;
        }

        if (prime <= v16)
        {
          prime = v16;
        }

        if (prime >= v6)
        {
          goto LABEL_29;
        }
      }

LABEL_15:
      sub_D5AB48(a1, prime);
    }

LABEL_29:
    v6 = *(a1 + 8);
    v21 = vcnt_s8(v6);
    v21.i16[0] = vaddlv_u8(v21);
    v10 = v21.u32[0];
    if (v21.u32[0] <= 1uLL)
    {
      goto LABEL_4;
    }

    goto LABEL_30;
  }

  v9 = vcnt_s8(v6);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] <= 1uLL)
  {
LABEL_4:
    v11 = (v6 - 1) & a2;
    goto LABEL_32;
  }

LABEL_30:
  v11 = a2;
  if (v6 <= a2)
  {
    v11 = a2 % v6;
  }

LABEL_32:
  v22 = *(*a1 + 8 * v11);
  if (v22)
  {
    v23 = *v22;
    if (*v22)
    {
      if (v10 >= 2)
      {
        v28 = 0;
        do
        {
          v29 = v23[1];
          v30 = v29;
          if (v29 >= v6)
          {
            v30 = v29 % v6;
          }

          if (v30 != v11)
          {
            break;
          }

          if (v29 == a2)
          {
            v31 = sub_4C2D38((v23 + 2), a3) != (v28 & 1);
            if (v28 & v31)
            {
              return v22;
            }
          }

          else
          {
            v31 = (v28 & 1) != 0;
            if ((v28 & v31) != 0)
            {
              return v22;
            }
          }

          v28 |= v31;
          v22 = *v22;
          v23 = *v22;
        }

        while (*v22);
      }

      else
      {
        v24 = 0;
        v25 = v6 - 1;
        do
        {
          v26 = v23[1];
          if ((v26 & v25) != v11)
          {
            break;
          }

          if (v26 == a2)
          {
            v27 = sub_4C2D38((v23 + 2), a3) != (v24 & 1);
            if (v24 & v27)
            {
              return v22;
            }
          }

          else
          {
            v27 = (v24 & 1) != 0;
            if ((v24 & v27) != 0)
            {
              return v22;
            }
          }

          v24 |= v27;
          v22 = *v22;
          v23 = *v22;
        }

        while (*v22);
      }
    }
  }

  return v22;
}

void sub_D5AB48(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_D5AF00(_Unwind_Exception *a1)
{
  sub_11BD8(v2);
  sub_D3BE90(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_D5AF20(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v25 = *(a1 + 8);
  if (v2 != v25)
  {
    v3 = *(a1 + 16);
    while (1)
    {
      v6 = *(v3 - 3);
      v3 -= 3;
      v5 = v6;
      *(v1 + 16) = v3;
      if (!v6)
      {
        goto LABEL_5;
      }

      v24 = v3;
      v26 = v2;
      v7 = *(v2 - 2);
      v4 = v5;
      if (v7 != v5)
      {
        break;
      }

LABEL_4:
      *(v26 - 2) = v5;
      operator delete(v4);
      v3 = *(v1 + 16);
LABEL_5:
      v2 = v3;
      if (v3 == v25)
      {
        goto LABEL_36;
      }
    }

    while (1)
    {
      if (*(v7 - 1) < 0)
      {
        operator delete(*(v7 - 3));
        v9 = *(v7 - 13);
        if (v9)
        {
LABEL_17:
          v12 = *(v7 - 12);
          v13 = v9;
          if (v12 != v9)
          {
            do
            {
              v12 = sub_3EEA68(v12 - 1096);
            }

            while (v12 != v9);
            v13 = *(v7 - 13);
          }

          *(v7 - 12) = v9;
          operator delete(v13);
          v10 = v7 - 16;
          v11 = *(v7 - 16);
          if (!v11)
          {
            goto LABEL_11;
          }

LABEL_21:
          v14 = *(v7 - 15);
          v8 = v11;
          if (v14 != v11)
          {
            do
            {
              v15 = *(v14 - 3);
              if (v15)
              {
                v16 = *(v14 - 2);
                v17 = *(v14 - 3);
                if (v16 != v15)
                {
                  do
                  {
                    v18 = v16 - 32;
                    v19 = *(v16 - 2);
                    if (v19 != -1)
                    {
                      (off_2673C78[v19])(&v27, v16 - 32);
                    }

                    *(v16 - 2) = -1;
                    v16 -= 32;
                  }

                  while (v18 != v15);
                  v17 = *(v14 - 3);
                }

                *(v14 - 2) = v15;
                operator delete(v17);
              }

              v20 = *(v14 - 8);
              if (v20 != -1)
              {
                (off_2673C78[v20])(&v28, v14 - 7);
              }

              v21 = v14 - 10;
              *(v14 - 8) = -1;
              if (*(v14 - 57) < 0)
              {
                operator delete(*v21);
              }

              v14 -= 10;
            }

            while (v21 != v11);
            v8 = *v10;
          }

          *(v7 - 15) = v11;
          operator delete(v8);
          goto LABEL_11;
        }
      }

      else
      {
        v9 = *(v7 - 13);
        if (v9)
        {
          goto LABEL_17;
        }
      }

      v10 = v7 - 16;
      v11 = *(v7 - 16);
      if (v11)
      {
        goto LABEL_21;
      }

LABEL_11:
      v7 = v10;
      if (v10 == v5)
      {
        v1 = a1;
        v4 = *v24;
        goto LABEL_4;
      }
    }
  }

LABEL_36:
  if (*v1)
  {
    operator delete(*v1);
  }

  return v1;
}

uint64_t sub_D5B130(uint64_t a1, uint64_t *a2)
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

  v16 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 24 * v2;
  v13 = 0;
  v14 = v6;
  v15 = 24 * v2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 0;
  sub_D531CC(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 7);
  *&v15 = v15 + 24;
  v7 = *(a1 + 8);
  v8 = (v14 + *a1 - v7);
  sub_D3B288(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_D5AF20(&v13);
  return v12;
}

void sub_D5B27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_D5AF20(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D5B290(uint64_t a1)
{
  v2 = *(a1 + 8688);
  if (v2)
  {
    do
    {
      v14 = *v2;
      v15 = v2[8];
      if (v15)
      {
        do
        {
          v16 = *v15;
          operator delete(v15);
          v15 = v16;
        }

        while (v16);
      }

      v17 = v2[6];
      v2[6] = 0;
      if (v17)
      {
        operator delete(v17);
      }

      operator delete(v2);
      v2 = v14;
    }

    while (v14);
  }

  v3 = *(a1 + 8672);
  *(a1 + 8672) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  sub_360B9C((a1 + 840));
  v4 = *(a1 + 776);
  if (v4)
  {
    *(a1 + 784) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 752);
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

  v7 = *(a1 + 736);
  *(a1 + 736) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 712);
  if (v8)
  {
    *(a1 + 720) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 688);
  if (v9)
  {
    *(a1 + 696) = v9;
    operator delete(v9);
  }

  if (*(a1 + 623) < 0)
  {
    operator delete(*(a1 + 600));
  }

  v10 = *(a1 + 536);
  if (v10)
  {
    do
    {
      v11 = *v10;
      sub_253B4((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = *(a1 + 520);
  *(a1 + 520) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return a1;
}

void *sub_D5B3B8(void *a1)
{
  v2 = a1[224];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[194];
  if (v3)
  {
    free(v3);
  }

  sub_C64754(a1 + 42);
  sub_3BFA2C(a1 + 1);
  return a1;
}

uint64_t sub_D5B404(uint64_t a1)
{
  sub_3BFA2C((a1 + 616));
  if (*(a1 + 575) < 0)
  {
    operator delete(*(a1 + 552));
  }

  v2 = *(a1 + 488);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_253B4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 472);
  *(a1 + 472) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_D5B47C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v2)
    {
      v5 = *(a1 + 48);
      do
      {
        v7 = *(v5 - 3);
        v5 -= 3;
        v6 = v7;
        if (v7)
        {
          v8 = *(v3 - 2);
          v9 = v6;
          if (v8 != v6)
          {
            do
            {
              v8 -= 128;
              sub_60B38C(v8);
            }

            while (v8 != v6);
            v9 = *v5;
          }

          *(v3 - 2) = v6;
          operator delete(v9);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v2;
    operator delete(v4);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    do
    {
      v13 = *v10;
      v14 = v10[8];
      if (v14)
      {
        do
        {
          v15 = *v14;
          operator delete(v14);
          v14 = v15;
        }

        while (v15);
      }

      v16 = v10[6];
      v10[6] = 0;
      if (v16)
      {
        operator delete(v16);
      }

      operator delete(v10);
      v10 = v13;
    }

    while (v13);
  }

  v11 = *a1;
  *a1 = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return a1;
}

void *sub_D5B57C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_D5B6B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_D5B6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_F64510(&v4, a1);
  }

  return a3;
}

uint64_t sub_D5B804(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 48 * v2;
  __p = 0;
  v17 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v6 + 24) = v7;
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v18 = 48 * v2 + 48;
  v19 = 0;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_17:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_17;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_D5B9AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64x2_t sub_D5B9C0(uint64_t a1, unint64_t a2)
{
  v5 = (a1 + 72);
  v4 = *(a1 + 72);
  if (v4)
  {
    if (*(a1 + 56) == a2)
    {
      goto LABEL_7;
    }

    v6 = malloc_type_realloc(*(a1 + 72), 8 * a2, 0x100004000313F17uLL);
    if (!v6)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v4);
      exit(1);
    }
  }

  else
  {
    v6 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
  }

  *v5 = v6;
  v4 = v6;
LABEL_7:
  if (!a2)
  {
    goto LABEL_17;
  }

  v7 = &v4[8 * a2];
  v8 = (a1 + 64);
  v9 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v9 < 0xF)
  {
    v10 = v4;
    goto LABEL_16;
  }

  if (v4 < v5 && v8 < v7)
  {
    v10 = v4;
    do
    {
LABEL_16:
      *v10 = *v8;
      v10 += 8;
    }

    while (v10 != v7);
    goto LABEL_17;
  }

  v11 = v9 + 1;
  v12 = (v9 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v10 = &v4[8 * v12];
  v13 = vld1q_dup_f64(v8);
  v14 = (v4 + 16);
  v15 = v12;
  do
  {
    v14[-1] = v13;
    *v14 = v13;
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  if (v11 != v12)
  {
    goto LABEL_16;
  }

LABEL_17:
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

uint64x2_t sub_D5BB10(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 232);
  if (v4)
  {
    if (*(a1 + 136) == a2)
    {
      goto LABEL_7;
    }

    v5 = malloc_type_realloc(*(a1 + 232), 88 * a2, 0x1060040C48E6172uLL);
    if (!v5)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v4);
      exit(1);
    }
  }

  else
  {
    v5 = malloc_type_malloc(88 * a2, 0x1060040C48E6172uLL);
  }

  *(a1 + 232) = v5;
  v4 = v5;
LABEL_7:
  if (a2)
  {
    v6 = 88 * a2;
    do
    {
      v7 = *(a1 + 160);
      *v4 = *(a1 + 144);
      v4[1] = v7;
      v8 = *(a1 + 176);
      v9 = *(a1 + 192);
      v10 = *(a1 + 208);
      *(v4 + 10) = *(a1 + 224);
      v4[3] = v9;
      v4[4] = v10;
      v4[2] = v8;
      v4 = (v4 + 88);
      v6 -= 88;
    }

    while (v6);
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_D5BC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_F64510(&v4, a1);
  }

  return a3;
}

void *sub_D5BD60(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 5) < 0x2AAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      a4[3] = v5[3];
      v5 += 5;
      a4 += 4;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_D5BE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_93BDE0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_D5BEC0(uint64_t *a1, _BYTE *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return a2;
  }

  v5 = a1[1];
  v6 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3)) >= a5)
  {
    v11 = v5 - a2;
    if ((0xAAAAAAAAAAAAAAABLL * ((v5 - a2) >> 3)) < a5)
    {
      v12 = (a3 + v11);
      v13 = a1[1];
      if ((a3 + v11) == a4)
      {
        v14 = a1[1];
      }

      else
      {
        v34 = (a3 + v11);
        v14 = a1[1];
        do
        {
          v35 = *v34;
          *(v14 + 16) = *(v34 + 2);
          *v14 = v35;
          v14 += 24;
          v34 = (v34 + 24);
          v13 += 24;
        }

        while (v34 != a4);
      }

      a1[1] = v13;
      if (v11 >= 1)
      {
        v36 = &a2[24 * a5];
        v37 = &v13[-24 * a5];
        for (i = v13; v37 < v5; v37 += 24)
        {
          v39 = *v37;
          *(i + 2) = *(v37 + 2);
          *i = v39;
          i += 24;
        }

        a1[1] = i;
        if (v14 != v36)
        {
          v40 = 0;
          v41 = -24 * a5;
          do
          {
            v42 = &v13[v40];
            *(v42 - 24) = v13[v41 - 24];
            *(v42 - 2) = *&v13[v41 - 16];
            *(v42 - 1) = *&v13[v41 - 8];
            v40 -= 24;
            v41 -= 24;
            v36 += 24;
          }

          while (v13 != v36);
        }

        v43 = a2;
        do
        {
          *v43 = *a3;
          *(v43 + 8) = *(a3 + 8);
          a3 = (a3 + 24);
          v43 += 24;
        }

        while (a3 != v12);
      }

      return a2;
    }

    v15 = &a2[24 * a5];
    v16 = v5 - 24 * a5;
    if (v16 >= v5)
    {
      a1[1] = v5;
      if (v5 == v15)
      {
LABEL_46:
        v46 = (a3 + 24 * a5);
        v47 = a2;
        do
        {
          *v47 = *a3;
          *(v47 + 8) = *(a3 + 8);
          a3 = (a3 + 24);
          v47 += 24;
        }

        while (a3 != v46);
        return a2;
      }
    }

    else
    {
      v17 = (v5 - 24 * a5);
      v18 = a1[1];
      do
      {
        v19 = *v17;
        *(v18 + 16) = *(v17 + 2);
        *v18 = v19;
        v18 += 24;
        v17 = (v17 + 24);
      }

      while (v17 < v5);
      a1[1] = v18;
      if (v5 == v15)
      {
        goto LABEL_46;
      }
    }

    v44 = 0;
    do
    {
      v45 = &v44[v5];
      *(v45 - 24) = v44[v16 - 24];
      *(v45 - 2) = *&v44[v16 - 16];
      *(v45 - 1) = *&v44[v16 - 8];
      v44 -= 24;
    }

    while (&a2[24 * a5 - v5] != v44);
    goto LABEL_46;
  }

  v7 = *a1;
  v8 = a5 - 0x5555555555555555 * ((v5 - *a1) >> 3);
  if (v8 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0x555555555555555)
  {
    v10 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v20 = 8 * ((a2 - v7) >> 3);
  v21 = 24 * a5;
  v22 = v20;
  do
  {
    v23 = *a3;
    *(v22 + 16) = *(a3 + 2);
    *v22 = v23;
    v22 += 24;
    a3 = (a3 + 24);
    v21 -= 24;
  }

  while (v21);
  v24 = a1[1];
  v25 = a2;
  if (v24 != a2)
  {
    v26 = a2;
    v27 = v20 + 24 * a5;
    do
    {
      v28 = *v26;
      *(v27 + 16) = *(v26 + 2);
      *v27 = v28;
      v27 += 24;
      v26 += 24;
    }

    while (v26 != v24);
    v25 = v24;
  }

  v29 = v20 + 24 * a5 + v25 - a2;
  a1[1] = a2;
  v30 = *a1;
  v31 = v20 + *a1 - a2;
  if (*a1 != a2)
  {
    v32 = v20 + *a1 - a2;
    do
    {
      v33 = *v30;
      *(v32 + 16) = v30[2];
      *v32 = v33;
      v32 += 24;
      v30 += 3;
    }

    while (v30 != a2);
    v30 = *a1;
  }

  *a1 = v31;
  a1[1] = v29;
  a1[2] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  return v20;
}

void sub_D5C278()
{
  byte_27B647F = 3;
  LODWORD(qword_27B6468) = 5136193;
  byte_27B6497 = 3;
  LODWORD(qword_27B6480) = 5136194;
  byte_27B64AF = 3;
  LODWORD(qword_27B6498) = 5136195;
  byte_27B64C7 = 15;
  strcpy(&qword_27B64B0, "vehicle_mass_kg");
  byte_27B64DF = 21;
  strcpy(&xmmword_27B64C8, "vehicle_cargo_mass_kg");
  byte_27B64F7 = 19;
  strcpy(&qword_27B64E0, "vehicle_aux_power_w");
  byte_27B650F = 15;
  strcpy(&qword_27B64F8, "dcdc_efficiency");
  strcpy(&qword_27B6510, "drive_train_efficiency");
  HIBYTE(word_27B6526) = 22;
  operator new();
}

void sub_D5C454(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27B6526) < 0)
  {
    sub_21E4584();
  }

  sub_21E4590();
  _Unwind_Resume(a1);
}

void sub_D5C474(void *a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v64 = sub_3AF6B4(a1);
  sub_4C6594(*(a2 + 8), &v86);
  v78 = v86;
  v79 = v87;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  if (v89 != v88)
  {
    if (((v89 - v88) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v83 = 0;
  v84 = 0;
  v85 = 0;
  v65 = a3;
  if (v91 != v90)
  {
    if (((v91 - v90) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = 0;
  v6 = 0;
  v70 = v92;
  v71 = v93;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  if (v95 != v94)
  {
    if (((v95 - v94) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v75 = 0;
  v76 = 0;
  v77 = 0;
  if (v97 != v96)
  {
    if (((v97 - v96) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    if (v6 == v5 || v8 == v7)
    {
      if ((v6 == v5) == (v8 == v7))
      {
        goto LABEL_89;
      }

      v10 = v78;
      goto LABEL_25;
    }

    v10 = v78;
    if (v79 != v71)
    {
      goto LABEL_25;
    }

    if (v78)
    {
      v11 = *(&v78 + 1);
      v12 = v78;
      v13 = sub_4D1DC0(v78);
      v14 = v11 < v13;
      v15 = v70;
      if (!v70)
      {
        v16 = v11 >= v13;
        v10 = v12;
        if (v16)
        {
          goto LABEL_89;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v15 = v70;
      if (!v70)
      {
        goto LABEL_89;
      }

      v12 = v78;
      v14 = 0;
    }

    v58 = *(&v70 + 1);
    v59 = sub_4D1DC0(v15);
    if (v58 >= v59 || !v14)
    {
      break;
    }

    v61 = sub_4D1F50(v12, *(&v78 + 1));
    v62 = v61 == sub_4D1F50(v15, v58);
    v10 = v12;
    if (v62)
    {
      goto LABEL_89;
    }

LABEL_25:
    v17 = sub_4D1F50(v10, *(&v78 + 1));
    sub_2B7A20(v64, (((*(v17 + 36) & 0x20000000) << 19) | (*(v17 + 36) << 32) | *(v17 + 32)) ^ 0x1000000000000, &v66);
    if (!v69)
    {
      if (__p == v68)
      {
        v104 = 0u;
        v105 = 0u;
        v30 = &v102;
        v102 = 0u;
        v103 = 0u;
      }

      else
      {
        v24 = *(v68 - 1);
        v25 = sub_2B4D24(v66, v24, 0);
        v26 = &v25[*&v25[-*v25 + 4]];
        v27 = &v26[4 * HIDWORD(v24) + *v26];
        v28 = (v27 + 4 + *(v27 + 4));
        v29 = (v28 + *(v28 - *v28 + 6));
        LODWORD(v29) = *(v29 + *v29) - 1;
        *&v102 = v66;
        *(&v102 + 1) = &__p;
        v103 = 0u;
        v104 = 0u;
        LODWORD(v105) = ((v68 - __p) >> 3) - 1;
        DWORD1(v105) = v29;
        BYTE8(v105) = 0;
        sub_318EF0(&v102);
        v30 = &v102;
      }

      goto LABEL_48;
    }

    if (__p == v68)
    {
      v100 = 0u;
      v101 = 0u;
      v30 = &v98;
      v98 = 0u;
      v99 = 0u;
      goto LABEL_48;
    }

    *&v98 = v66;
    *(&v98 + 1) = &__p;
    v99 = 0u;
    v100 = 0u;
    *&v101 = 0;
    BYTE8(v101) = 1;
    v18 = *__p;
    DWORD2(v100) = *__p;
    v19 = sub_2B4D24(v66, v18, 0);
    v20 = &v19[-*v19];
    if (*v20 < 7u)
    {
      HIDWORD(v100) = 0;
      v22 = &v19[-*v19];
      if (*v22 >= 5u)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v21 = *(v20 + 3);
      if (v21)
      {
        LODWORD(v21) = *&v19[v21];
      }

      HIDWORD(v100) = v21;
      v22 = &v19[-*v19];
      if (*v22 >= 5u)
      {
LABEL_31:
        v23 = *(v22 + 2);
        if (v23)
        {
          v23 += &v19[*&v19[v23]];
        }

        goto LABEL_38;
      }
    }

    v23 = 0;
LABEL_38:
    v31 = (v23 + 4 * HIDWORD(v18) + 4 + *(v23 + 4 * HIDWORD(v18) + 4));
    *&v99 = v31;
    v32 = (v31 - *v31);
    v33 = *v32;
    if (v33 <= 6)
    {
      v36 = 0;
      *(&v99 + 1) = 0;
    }

    else
    {
      v34 = v32[3];
      if (v32[3])
      {
        v34 += v31 + *(v31 + v34);
      }

      *(&v99 + 1) = v34;
      if (v33 >= 0xB && (v35 = v32[5]) != 0)
      {
        v36 = v31 + v35 + *(v31 + v35);
      }

      else
      {
        v36 = 0;
      }
    }

    *&v100 = v36;
    v30 = &v98;
LABEL_48:
    v37 = sub_318DA8(v30);
    v39 = v65[2];
    if (v9 >= v39)
    {
      v40 = *v65;
      v41 = v9 - *v65;
      v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 2) + 1;
      if (v42 > 0x1555555555555555)
      {
        sub_1794();
      }

      v43 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v40) >> 2);
      if (2 * v43 > v42)
      {
        v42 = 2 * v43;
      }

      if (v43 >= 0xAAAAAAAAAAAAAAALL)
      {
        v44 = 0x1555555555555555;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        if (v44 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v45 = 4 * (v41 >> 2);
      *v45 = v37;
      *(v45 + 8) = v38;
      v9 = v45 + 12;
      memcpy((v45 - v41), v40, v41);
      *v65 = (4 * (v41 >> 2) - v41);
      v65[1] = v9;
      v65[2] = 0;
      if (v40)
      {
        operator delete(v40);
      }
    }

    else
    {
      *v9 = v37;
      *(v9 + 8) = v38;
      v9 += 12;
    }

    v65[1] = v9;
    if (__p)
    {
      v68 = __p;
      operator delete(__p);
    }

    v46 = v79;
    ++*(&v78 + 1);
    v6 = v83;
    v5 = v84;
    v47 = ((v84 - v83) >> 4) - 1;
    if (v79 < v47)
    {
      v48 = 16 * v79;
      do
      {
        v49 = v78;
        if (v78)
        {
          v50 = *(&v78 + 1);
          v51 = sub_4D1DC0(v78);
          v52 = v50 < v51;
          v53 = *&v6[v48];
          if (!v53)
          {
            if (v50 < v51)
            {
              break;
            }

            goto LABEL_66;
          }
        }

        else
        {
          v53 = *&v6[v48];
          if (!v53)
          {
            goto LABEL_66;
          }

          v52 = 0;
        }

        v54 = *&v6[v48 + 8];
        v55 = sub_4D1DC0(v53);
        if (v54 < v55 && v52)
        {
          v57 = sub_4D1F50(v49, *(&v78 + 1));
          if (v57 != sub_4D1F50(*&v6[v48], *&v6[v48 + 8]))
          {
            break;
          }
        }

        else if ((v52 ^ (v54 < v55)))
        {
          break;
        }

LABEL_66:
        v79 = ++v46;
        v78 = *(v80 + v48 + 16);
        v48 += 16;
      }

      while (v46 < v47);
    }

    v8 = v75;
    v7 = v76;
  }

  v63 = v58 < v59;
  v10 = v12;
  if ((v14 ^ v63))
  {
    goto LABEL_25;
  }

LABEL_89:
  if (v8)
  {
    v76 = v8;
    operator delete(v8);
  }

  if (v72)
  {
    operator delete(v72);
  }

  if (v83)
  {
    operator delete(v83);
  }

  if (v80)
  {
    operator delete(v80);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }
}

void sub_D5CC58(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (v31)
  {
    operator delete(v31);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

void sub_D5CCA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_3DB674(&a17);
  sub_3DB674(&a27);
  sub_3DB6B8(&a37);
  v38 = *a11;
  if (*a11)
  {
    *(a11 + 8) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

double sub_D5CD04(double *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1[1] != 0.0)
  {
    operator new();
  }

  v6 = a1[2];
  if (v6 != 0.0)
  {
    operator new();
  }

  if (a1[3] != 0.0)
  {
    v7 = sub_4D1DB8(*a2);
    vcvtd_n_f64_s64(sub_4D1DB8(*a3) + v7, 1uLL);
    v8 = a3[1];
    v10 = 0x7FFFFFFFFFFFFFFELL;
    sub_119D628(a4, v8, &v10);
    operator new();
  }

  return 0.0;
}

void sub_D5D144(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_D5D16C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 210) != 1)
  {
    return;
  }

  v5 = a1;
  HIBYTE(v52[2]) = 19;
  strcpy(v52, "WalkingRouteScoring");
  v49[0] = 0;
  v49[1] = 0;
  v50[0] = 0;
  v6 = sub_3AEC94(a1, v52, v49);
  HIBYTE(v57) = 8;
  strcpy(&__p, "standard");
  sub_115F014(v58, v6, &__p);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__p);
  }

  v7 = v49[0];
  if (v49[0])
  {
    v8 = v49[1];
    v9 = v49[0];
    if (v49[1] != v49[0])
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
      v9 = v49[0];
    }

    v49[1] = v7;
    operator delete(v9);
  }

  if (SHIBYTE(v52[2]) < 0)
  {
    operator delete(v52[0]);
    if (v60 != 0.0)
    {
      goto LABEL_17;
    }

LABEL_16:
    if (v59 == 0.0)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v60 == 0.0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v12 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    v46 = v5;
    v45 = a3[1];
    while (1)
    {
      v13 = *v12;
      v14 = sub_3AF6B4(v5);
      sub_4CC1B0(v13, a2 + 48, (a2 + 64), v14, v52);
      if (!sub_4C9C6C(v52))
      {
        break;
      }

LABEL_78:
      if (v55)
      {
        operator delete(v55);
      }

      if (v53)
      {
        v54 = v53;
        operator delete(v53);
      }

      if (v52[0])
      {
        v52[1] = v52[0];
        operator delete(v52[0]);
      }

      v12 += 240;
      if (v12 == v11)
      {
        return;
      }
    }

    *v49 = 0u;
    *v50 = 0u;
    v51 = 1065353216;
    __p = 0uLL;
    v57 = 0;
    if (v52[1] != v52[0])
    {
      v15 = 0;
      v16 = 0;
      v47 = (v52[1] - v52[0]) >> 4;
      do
      {
        v17 = sub_61B864(&v55, v16);
        if ((*v17 & v18) != 0)
        {
          operator new();
        }

        ++v16;
        v15 += 16;
      }

      while (v47 != v16);
    }

    v19 = 0;
    do
    {
      v20 = v19;
      v21 = 16 * v19++;
      v22 = *v21;
      v23 = *(16 * v19) - *v21;
      LODWORD(v22) = *(a2 + 44);
      if (v23 >= v22)
      {
        v24 = v23 <= 0.0 ? 0.0 : (*&dword_8[4 * v19] - *(v21 + 8)) / v23;
        if (v24 >= *(a2 + 104) || v24 <= -*(a2 + 160))
        {
          if ((v25 = *sub_61BDB0(&__p, v20), *(a2 + 48) != 1) || (v26 = sub_4D1F50(v13, v25), v27 = (*v26 - **v26), *v27 < 0x2Fu) || (v28 = v27[23]) == 0 || ((v29 = *(*v26 + v28), v29 != 9) ? (v30 = v29 == 20) : (v30 = 1), !v30))
          {
            v31 = *sub_61BDB0(&__p, v19);
            v32 = v25 <= v31 + 1 ? v31 + 1 : v25;
            if (v25 < v31 + 1)
            {
              do
              {
                v48 = v25;
                if (v49[1])
                {
                  v33 = vcnt_s8(v49[1]);
                  v33.i16[0] = vaddlv_u8(v33);
                  if (v33.u32[0] > 1uLL)
                  {
                    v34 = v25;
                    if (v25 >= v49[1])
                    {
                      v34 = v25 % v49[1];
                    }
                  }

                  else
                  {
                    v34 = (v49[1] - 1) & v25;
                  }

                  v35 = *(v49[0] + v34);
                  if (v35)
                  {
                    v36 = *v35;
                    if (v36)
                    {
                      if (v33.u32[0] < 2uLL)
                      {
                        while (1)
                        {
                          v37 = v36[1];
                          if (v25 == v37)
                          {
                            if (v36[2] == v25)
                            {
                              goto LABEL_66;
                            }
                          }

                          else if ((v37 & (v49[1] - 1)) != v34)
                          {
                            goto LABEL_65;
                          }

                          v36 = *v36;
                          if (!v36)
                          {
                            goto LABEL_65;
                          }
                        }
                      }

                      do
                      {
                        v38 = v36[1];
                        if (v25 == v38)
                        {
                          if (v36[2] == v25)
                          {
                            goto LABEL_66;
                          }
                        }

                        else
                        {
                          if (v38 >= v49[1])
                          {
                            v38 %= v49[1];
                          }

                          if (v38 != v34)
                          {
                            break;
                          }
                        }

                        v36 = *v36;
                      }

                      while (v36);
                    }
                  }
                }

LABEL_65:
                *(v12 + 120) = *(v12 + 120) + sub_4D2720(v13, v25, 0);
                sub_7E6F6C(v49, &v48);
LABEL_66:
                ++v25;
              }

              while (v25 != v32);
            }
          }
        }
      }
    }

    while (v19 != -1);
    v39 = *(v12 + 120);
    if (v39 <= 0.0)
    {
      *(v12 + 232) = *(v12 + 232) + v39 * v59;
      v41 = __p;
      if (!__p)
      {
LABEL_73:
        v42 = v50[0];
        if (v50[0])
        {
          do
          {
            v43 = *v42;
            operator delete(v42);
            v42 = v43;
          }

          while (v43);
        }

        v44 = v49[0];
        v49[0] = 0;
        v5 = v46;
        if (v44)
        {
          operator delete(v44);
        }

        v11 = v45;
        goto LABEL_78;
      }
    }

    else
    {
      v40 = v60 + *(v12 + 232);
      *(v12 + 232) = v40;
      *(v12 + 232) = v40 + v39 * v59;
      v41 = __p;
      if (!__p)
      {
        goto LABEL_73;
      }
    }

    *(&__p + 1) = v41;
    operator delete(v41);
    goto LABEL_73;
  }
}

void sub_D5D82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a15);
  if (a26 < 0)
  {
    operator delete(a21);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_D5D8C8(uint64_t a1, uint64_t *a2)
{
  HIBYTE(v14[2]) = 19;
  strcpy(v14, "WalkingRouteScoring");
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v3 = sub_3AEC94(a1, v14, &v11);
  v10 = 8;
  strcpy(__p, "standard");
  sub_115F014(v15, v3, __p);
  sub_115F018(v16, v15);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v11;
  if (v11)
  {
    v5 = v12;
    v6 = v11;
    if (v12 != v11)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v11;
    }

    v12 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v14[2]) < 0)
  {
    operator delete(v14[0]);
  }

  return sub_115F020(v16, a2);
}

void sub_D5D9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_1A104(&a15);
  if ((a23 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_D5DA48(uint64_t result, void *a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 4) < 2)
  {
    return result;
  }

  v3 = *(*a2 + 16);
  if (v3 < 0.0)
  {
    v4 = result;
    v5 = sub_7E7E4(1u);
    result = v4;
    if (v5)
    {
      sub_19594F8(&v37);
      v6 = sub_4A5C(&v37, "[WalkingRouteSelectionModule] Best score found is negative for request: ", 72);
      v7 = sub_74700();
      v8 = sub_73F1C(v7);
      v9 = *(v8 + 23);
      if (v9 >= 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = *v8;
      }

      if (v9 >= 0)
      {
        v11 = *(v8 + 23);
      }

      else
      {
        v11 = *(v8 + 8);
      }

      sub_4A5C(v6, v10, v11);
      if ((v47 & 0x10) != 0)
      {
        v13 = v46;
        if (v46 < v43)
        {
          v46 = v43;
          v13 = v43;
        }

        v14 = v42;
        v12 = v13 - v42;
        if (v13 - v42 >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if ((v47 & 8) == 0)
        {
          v12 = 0;
          v36 = 0;
LABEL_21:
          *(&__p + v12) = 0;
          sub_7E854(&__p, 1u);
          if (v36 < 0)
          {
            operator delete(__p);
          }

          if (v45 < 0)
          {
            operator delete(v44);
          }

          std::locale::~locale(&v39);
          std::ostream::~ostream();
          std::ios::~ios();
          result = v4;
          goto LABEL_26;
        }

        v14 = v40;
        v12 = v41 - v40;
        if ((v41 - v40) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_48:
          sub_3244();
        }
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v36 = v12;
      if (v12)
      {
        memmove(&__p, v14, v12);
      }

      goto LABEL_21;
    }
  }

LABEL_26:
  v16 = *a2;
  v15 = a2[1];
  if (*a2 != v15)
  {
    v17 = *(result + 32);
    v18 = 2.0 - v17;
    if (v3 < 0.0)
    {
      v17 = 2.0 - v17;
    }

    v19 = v3 * v17;
    LODWORD(v18) = *(result + 40);
    v20 = v3 + *&v18;
    while (1)
    {
      *&v21 = *(v16 + 16);
      if (v19 < *&v21 || v20 < *&v21)
      {
        break;
      }

      v16 += 240;
      if (v16 == v15)
      {
        return result;
      }
    }

    if (v16 != v15)
    {
      v23 = (v16 + 240);
      if ((v16 + 240) != v15)
      {
        do
        {
          v24 = v23[2];
          if (v19 >= v24)
          {
            LODWORD(v21) = *(result + 40);
            *&v21 = v3 + v21;
            if (*&v21 >= v24)
            {
              v25 = *v23;
              v26 = *(v23 + 2);
              *(v16 + 16) = *(v23 + 1);
              *(v16 + 32) = v26;
              *v16 = v25;
              v27 = *(v23 + 3);
              v28 = *(v23 + 4);
              v29 = *(v23 + 6);
              *(v16 + 80) = *(v23 + 5);
              *(v16 + 96) = v29;
              *(v16 + 48) = v27;
              *(v16 + 64) = v28;
              v30 = *(v23 + 7);
              v31 = *(v23 + 8);
              v32 = *(v23 + 10);
              *(v16 + 144) = *(v23 + 9);
              *(v16 + 160) = v32;
              *(v16 + 112) = v30;
              *(v16 + 128) = v31;
              v33 = *(v23 + 11);
              v21 = *(v23 + 12);
              v34 = *(v23 + 14);
              *(v16 + 208) = *(v23 + 13);
              *(v16 + 224) = v34;
              *(v16 + 176) = v33;
              *(v16 + 192) = v21;
              v16 += 240;
            }
          }

          v23 += 30;
        }

        while (v23 != v15);
        v15 = a2[1];
      }
    }
  }

  if (v16 != v15)
  {
    a2[1] = v16;
  }

  return result;
}

void sub_D5DE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_D5DE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  if (0xEEEEEEEEEEEEEEEFLL * ((*(a3 + 8) - *a3) >> 4) >= 2)
  {
    v15 = v3[11];
    v16 = v3[12];
    v17 = v3[13];
    v18 = v3[14];
    v11 = v3[7];
    v12 = v3[8];
    v13 = v3[9];
    v14 = v3[10];
    v7 = v3[3];
    v8 = v3[4];
    v9 = v3[5];
    v10 = v3[6];
    *v4 = *v3;
    v5 = v3[1];
    *v6 = v3[2];
    operator new();
  }
}

void sub_D5E388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_34BE0(&a15);
  sub_D5EE2C(&a21);
  if (a18)
  {
    a19 = a18;
    operator delete(a18);
    if (!v21)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_5;
  }

  operator delete(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_D5E428(void *a1, unint64_t a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4));
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

  return *a1 + 240 * a2;
}

void sub_D5E564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_D5E644(uint64_t a1, uint64_t a2, void *a3)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((a3[1] - *a3) >> 4) >= 2)
  {
    operator new();
  }
}

void sub_D5EDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_D5FAE0(va);
  operator delete(v6);
  _Unwind_Resume(a1);
}

void *sub_D5EE2C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    v4 = a1[2];
    v5 = a1[1];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 8);
        if (v6)
        {
          free(v6);
        }

        v4 -= 80;
      }

      while (v4 != v3);
      v5 = a1[1];
    }

    a1[2] = v3;
    operator delete(v5);
  }

  return a1;
}

uint64_t *sub_D5EEAC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = result[1];
  v4 = v3 - *result;
  if (v3 != *result)
  {
    v5 = result;
    v6 = sub_D52C40(a2, (*result + 8));
    *(a2 + 8) = v6;
    result = sub_4C515C(v6 - 128, 0);
    if (v4 != 240)
    {
      v7 = 0xEEEEEEEEEEEEEEEFLL * (v4 >> 4) - 1;
      v8 = 248;
      do
      {
        v9 = *v5;
        v10 = *(a2 + 8);
        if (v10 >= *(a2 + 16))
        {
          v11 = sub_D52C40(a2, (v9 + v8));
        }

        else
        {
          sub_D52DF8(*(a2 + 8), (v9 + v8));
          v11 = v10 + 128;
        }

        *(a2 + 8) = v11;
        result = sub_4C515C(v11 - 128, 2);
        v8 += 240;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

void sub_D5EF90(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_60A84C(v1);
  _Unwind_Resume(a1);
}

void sub_D5EFBC(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = (v4 - *a3) >> 7;
  if (v6 >= 2 && *a2 != 1)
  {
    if (v4 != v5)
    {
      if (v6 < 0x111111111111112)
      {
        operator new();
      }

      sub_1794();
    }

    sub_115B784(v7, a1);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;

  sub_D531CC(a4, v5, v4, v6);
}

void sub_D5F2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_D5F32C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v53);
  memset(v52, 0, 40);
  v3 = **a1;
  v4 = *(*a1 + 8);
  if (v3 != v4)
  {
    v47 = a1;
    v48 = *(*a1 + 8);
    do
    {
      sub_D5EFBC(*(a1 + 8), (a1 + 24), v3, __p);
      v5 = *(&v52[0] + 1);
      if (*(&v52[0] + 1) < *&v52[1])
      {
        **(&v52[0] + 1) = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *v5 = *__p;
        *(v5 + 16) = v51;
        *(&v52[0] + 1) = v5 + 24;
      }

      else
      {
        v6.n128_f64[0] = sub_D3B140(v52, __p);
        v7 = __p[0];
        *(&v52[0] + 1) = v8;
        if (__p[0])
        {
          v49 = v3;
          v9 = __p[1];
          v10 = __p[0];
          if (__p[1] == __p[0])
          {
LABEL_37:
            __p[1] = v7;
            operator delete(v10);
            v4 = v48;
            v3 = v49;
            goto LABEL_4;
          }

          while (2)
          {
            if (*(v9 - 1) < 0)
            {
              operator delete(*(v9 - 3));
              v12 = *(v9 - 13);
              if (v12)
              {
                goto LABEL_17;
              }

LABEL_14:
              v13 = v9 - 16;
              v14 = *(v9 - 16);
              if (v14)
              {
LABEL_21:
                v17 = *(v9 - 15);
                v11 = v14;
                if (v17 != v14)
                {
                  do
                  {
                    v18 = *(v17 - 3);
                    if (v18)
                    {
                      v19 = *(v17 - 2);
                      v20 = *(v17 - 3);
                      if (v19 != v18)
                      {
                        do
                        {
                          v21 = v19 - 32;
                          v22 = *(v19 - 2);
                          if (v22 != -1)
                          {
                            (off_2673CA8[v22])(&v54, v19 - 32, v6);
                          }

                          *(v19 - 2) = -1;
                          v19 -= 32;
                        }

                        while (v21 != v18);
                        v20 = *(v17 - 3);
                      }

                      *(v17 - 2) = v18;
                      operator delete(v20);
                    }

                    v23 = *(v17 - 8);
                    if (v23 != -1)
                    {
                      (off_2673CA8[v23])(&v54, v17 - 7, v6);
                    }

                    v24 = v17 - 10;
                    *(v17 - 8) = -1;
                    if (*(v17 - 57) < 0)
                    {
                      operator delete(*v24);
                    }

                    v17 -= 10;
                  }

                  while (v24 != v14);
                  v11 = *v13;
                }

                *(v9 - 15) = v14;
                operator delete(v11);
              }
            }

            else
            {
              v12 = *(v9 - 13);
              if (!v12)
              {
                goto LABEL_14;
              }

LABEL_17:
              v15 = *(v9 - 12);
              v16 = v12;
              if (v15 != v12)
              {
                do
                {
                  v15 = sub_3EEA68(v15 - 1096);
                }

                while (v15 != v12);
                v16 = *(v9 - 13);
              }

              *(v9 - 12) = v12;
              operator delete(v16);
              v13 = v9 - 16;
              v14 = *(v9 - 16);
              if (v14)
              {
                goto LABEL_21;
              }
            }

            v9 = v13;
            if (v13 == v7)
            {
              v10 = __p[0];
              a1 = v47;
              goto LABEL_37;
            }

            continue;
          }
        }
      }

LABEL_4:
      v3 += 3;
    }

    while (v3 != v4);
  }

  v25 = sub_4EDB30(*(a1 + 16));
  v27 = *(&v52[0] + 1);
  v26 = *&v52[0];
  if (*&v52[0] != *(&v52[0] + 1))
  {
    v28 = v25;
    v29 = **&v52[0];
    v30 = *(*&v52[0] + 8);
    if (**&v52[0] != v30)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v26 += 3;
      if (v26 == v27)
      {
        break;
      }

      v29 = *v26;
      v30 = v26[1];
      if (*v26 != v30)
      {
        do
        {
LABEL_42:
          sub_4C516C(v29, v28++);
          v29 += 128;
        }

        while (v29 != v30);
      }
    }
  }

  *(&v52[1] + 1) = sub_7EA60(v53);
  v31 = v52[0];
  if (*&v52[0] == *(&v52[0] + 1))
  {
    v35 = 0.0;
  }

  else
  {
    v32 = *(&v52[0] + 1) - *&v52[0] - 24;
    if (v32 >= 0x60)
    {
      v36 = v32 / 0x18 + 1;
      v37 = v36 & 3;
      if ((v36 & 3) == 0)
      {
        v37 = 4;
      }

      v38 = v36 - v37;
      v34 = (*&v52[0] + 24 * v38);
      v39 = 0uLL;
      v40 = *&v52[0];
      v41 = 0uLL;
      do
      {
        v42 = v40;
        v40 += 12;
        v55 = vld3q_f64(v42);
        v42 += 6;
        v39 = vsraq_n_s64(v39, vsubq_s64(v55.val[1], v55.val[0]), 7uLL);
        v56 = vld3q_f64(v42);
        v41 = vsraq_n_s64(v41, vsubq_s64(v56.val[1], v56.val[0]), 7uLL);
        v38 -= 4;
      }

      while (v38);
      v33 = vaddvq_s64(vaddq_s64(v41, v39));
    }

    else
    {
      v33 = 0;
      v34 = *&v52[0];
    }

    do
    {
      v43 = *v34;
      v44 = v34[1];
      v34 += 3;
      v33 += (v44 - v43) >> 7;
    }

    while (v34 != *(&v52[0] + 1));
    v35 = (v33 / (0xAAAAAAAAAAAAAAABLL * ((*(&v52[0] + 1) - *&v52[0]) >> 3)));
  }

  *&v52[2] = v35;
  *a2 = 1;
  *(a2 + 8) = v31;
  *(a2 + 24) = *&v52[1];
  result = *(&v52[1] + 1);
  *(a2 + 32) = *(&v52[1] + 8);
  return result;
}

void sub_D5F6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_CDFC14(va);
  _Unwind_Resume(a1);
}

void sub_D5F6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_60A84C(va);
  sub_CDFC14(va1);
  _Unwind_Resume(a1);
}

void sub_D5F704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_CDFC14(va);
  _Unwind_Resume(a1);
}

void sub_D5F718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_CDFC14(va);
  _Unwind_Resume(a1);
}

void **sub_D5F734(void **a1)
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
        v5 = *(v3 - 1);
        if (v5)
        {
          free(v5);
        }

        v3 -= 80;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

double sub_D5F7A4(uint64_t a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 8 * ((*(a1 + 8) - *a1) >> 3);
  v6 = *(a2 + 16);
  *v12 = *a2;
  *(v12 + 16) = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v12 + 32) = *(a2 + 32);
  *(v12 + 48) = *(a2 + 48);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v7 = *(a1 + 8);
  v8 = (56 * v2 + *a1 - v7);
  sub_D5F910(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = (56 * v2 + 56);
  *(a1 + 8) = v10;
  if (v9)
  {
    operator delete(v9);
    *&v10 = 56 * v2 + 56;
  }

  return *&v10;
}

void sub_D5F8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_D5FA04(va);
  _Unwind_Resume(a1);
}

void sub_D5F910(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v6 + 1);
      a4[3] = v6[3];
      v6[1] = 0;
      v6[2] = 0;
      v6[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      a4[6] = 0;
      *(a4 + 2) = *(v6 + 2);
      a4[6] = v6[6];
      v6[4] = 0;
      v6[5] = 0;
      v6[6] = 0;
      v6 += 7;
      a4 += 7;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v8 = v5[4];
      if (v8)
      {
        v5[5] = v8;
        operator delete(v8);
      }

      v9 = v5[1];
      if (v9)
      {
        v10 = v5[2];
        v7 = v5[1];
        if (v10 != v9)
        {
          do
          {
            v11 = *(v10 - 8);
            if (v11)
            {
              free(v11);
            }

            v10 -= 80;
          }

          while (v10 != v9);
          v7 = v5[1];
        }

        v5[2] = v9;
        operator delete(v7);
      }

      v5 += 7;
    }
  }
}

void **sub_D5FA04(void **a1)
{
  sub_D5FA38(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_D5FA38(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *(i - 48);
    if (v6)
    {
      v7 = *(i - 40);
      v4 = *(i - 48);
      if (v7 != v6)
      {
        do
        {
          v8 = *(v7 - 8);
          if (v8)
          {
            free(v8);
          }

          v7 -= 80;
        }

        while (v7 != v6);
        v4 = *(i - 48);
      }

      *(i - 40) = v6;
      operator delete(v4);
    }
  }
}

void **sub_D5FAE0(void **a1)
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
        v6 = *(v3 - 3);
        if (v6)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 6);
        if (v7)
        {
          v8 = *(v3 - 5);
          v5 = *(v3 - 6);
          if (v8 != v7)
          {
            do
            {
              v9 = *(v8 - 8);
              if (v9)
              {
                free(v9);
              }

              v8 -= 80;
            }

            while (v8 != v7);
            v5 = *(v3 - 6);
          }

          *(v3 - 5) = v7;
          operator delete(v5);
        }

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_D5FB9C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *(v4 - 3);
        if (v7)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v8 = *(v4 - 6);
        if (v8)
        {
          v9 = *(v4 - 5);
          v6 = *(v4 - 6);
          if (v9 != v8)
          {
            do
            {
              v10 = *(v9 - 8);
              if (v10)
              {
                free(v10);
              }

              v9 -= 80;
            }

            while (v9 != v8);
            v6 = *(v4 - 6);
          }

          *(v4 - 5) = v8;
          operator delete(v6);
        }

        v4 -= 56;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double *sub_D5FC7C(double *result, double *a2, unint64_t a3, double *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      if (*(a2 - 28) < result[2])
      {
        v112 = *(result + 12);
        v114 = *(result + 13);
        v116 = *(result + 14);
        v104 = *(result + 8);
        v106 = *(result + 9);
        v108 = *(result + 10);
        v110 = *(result + 11);
        v96 = *(result + 4);
        v98 = *(result + 5);
        v100 = *(result + 6);
        v102 = *(result + 7);
        v88 = *result;
        v90 = *(result + 1);
        v92 = *(result + 2);
        v94 = *(result + 3);
        v5 = *(a2 - 15);
        v6 = *(a2 - 13);
        *(result + 1) = *(a2 - 14);
        *(result + 2) = v6;
        *result = v5;
        v7 = *(a2 - 12);
        v8 = *(a2 - 11);
        v9 = *(a2 - 9);
        *(result + 5) = *(a2 - 10);
        *(result + 6) = v9;
        *(result + 3) = v7;
        *(result + 4) = v8;
        v10 = *(a2 - 8);
        v11 = *(a2 - 7);
        v12 = *(a2 - 5);
        *(result + 9) = *(a2 - 6);
        *(result + 10) = v12;
        *(result + 7) = v10;
        *(result + 8) = v11;
        v13 = *(a2 - 4);
        v14 = *(a2 - 3);
        v15 = *(a2 - 1);
        *(result + 13) = *(a2 - 2);
        *(result + 14) = v15;
        *(result + 11) = v13;
        *(result + 12) = v14;
        *(a2 - 3) = v112;
        *(a2 - 2) = v114;
        *(a2 - 1) = v116;
        *(a2 - 7) = v104;
        *(a2 - 6) = v106;
        *(a2 - 5) = v108;
        *(a2 - 4) = v110;
        *(a2 - 11) = v96;
        *(a2 - 10) = v98;
        *(a2 - 9) = v100;
        *(a2 - 8) = v102;
        *(a2 - 15) = v88;
        *(a2 - 14) = v90;
        *(a2 - 13) = v92;
        *(a2 - 12) = v94;
      }
    }

    else if (a3 > 128)
    {
      v32 = a3 >> 1;
      v33 = &result[30 * (a3 >> 1)];
      v34 = a3 - (a3 >> 1);
      v35 = result;
      if (a3 <= a5)
      {
        v39 = a4;
        sub_D6018C(result, v33, a3 >> 1, a4);
        v40 = &v39[30 * v32];
        result = sub_D6018C(v33, a2, v34, v40);
        v41 = &v39[30 * a3];
        v42 = v40;
        while (v42 != v41)
        {
          if (v42[2] >= v39[2])
          {
            v43 = *v39;
            v44 = *(v39 + 2);
            *(v35 + 1) = *(v39 + 1);
            *(v35 + 2) = v44;
            *v35 = v43;
            v45 = *(v39 + 3);
            v46 = *(v39 + 4);
            v47 = *(v39 + 6);
            *(v35 + 5) = *(v39 + 5);
            *(v35 + 6) = v47;
            *(v35 + 3) = v45;
            *(v35 + 4) = v46;
            v48 = *(v39 + 7);
            v49 = *(v39 + 8);
            v50 = *(v39 + 10);
            *(v35 + 9) = *(v39 + 9);
            *(v35 + 10) = v50;
            *(v35 + 7) = v48;
            *(v35 + 8) = v49;
            v51 = *(v39 + 11);
            v52 = *(v39 + 12);
            v53 = *(v39 + 14);
            *(v35 + 13) = *(v39 + 13);
            *(v35 + 14) = v53;
            *(v35 + 11) = v51;
            *(v35 + 12) = v52;
            v39 += 30;
            v35 += 30;
            if (v39 == v40)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v54 = *v42;
            v55 = *(v42 + 2);
            *(v35 + 1) = *(v42 + 1);
            *(v35 + 2) = v55;
            *v35 = v54;
            v56 = *(v42 + 3);
            v57 = *(v42 + 4);
            v58 = *(v42 + 6);
            *(v35 + 5) = *(v42 + 5);
            *(v35 + 6) = v58;
            *(v35 + 3) = v56;
            *(v35 + 4) = v57;
            v59 = *(v42 + 7);
            v60 = *(v42 + 8);
            v61 = *(v42 + 10);
            *(v35 + 9) = *(v42 + 9);
            *(v35 + 10) = v61;
            *(v35 + 7) = v59;
            *(v35 + 8) = v60;
            v62 = *(v42 + 11);
            v63 = *(v42 + 12);
            v64 = *(v42 + 14);
            *(v35 + 13) = *(v42 + 13);
            *(v35 + 14) = v64;
            *(v35 + 11) = v62;
            *(v35 + 12) = v63;
            v42 += 30;
            v35 += 30;
            if (v39 == v40)
            {
LABEL_32:
              while (v42 != v41)
              {
                v76 = *v42;
                v77 = *(v42 + 2);
                *(v35 + 1) = *(v42 + 1);
                *(v35 + 2) = v77;
                *v35 = v76;
                v78 = *(v42 + 3);
                v79 = *(v42 + 4);
                v80 = *(v42 + 6);
                *(v35 + 5) = *(v42 + 5);
                *(v35 + 6) = v80;
                *(v35 + 3) = v78;
                *(v35 + 4) = v79;
                v81 = *(v42 + 7);
                v82 = *(v42 + 8);
                v83 = *(v42 + 10);
                *(v35 + 9) = *(v42 + 9);
                *(v35 + 10) = v83;
                *(v35 + 7) = v81;
                *(v35 + 8) = v82;
                v84 = *(v42 + 11);
                v85 = *(v42 + 12);
                v86 = *(v42 + 14);
                *(v35 + 13) = *(v42 + 13);
                *(v35 + 14) = v86;
                *(v35 + 11) = v84;
                *(v35 + 12) = v85;
                v42 += 30;
                v35 += 30;
              }

              return result;
            }
          }
        }

        while (v39 != v40)
        {
          v65 = *v39;
          v66 = *(v39 + 2);
          *(v35 + 1) = *(v39 + 1);
          *(v35 + 2) = v66;
          *v35 = v65;
          v67 = *(v39 + 3);
          v68 = *(v39 + 4);
          v69 = *(v39 + 6);
          *(v35 + 5) = *(v39 + 5);
          *(v35 + 6) = v69;
          *(v35 + 3) = v67;
          *(v35 + 4) = v68;
          v70 = *(v39 + 7);
          v71 = *(v39 + 8);
          v72 = *(v39 + 10);
          *(v35 + 9) = *(v39 + 9);
          *(v35 + 10) = v72;
          *(v35 + 7) = v70;
          *(v35 + 8) = v71;
          v73 = *(v39 + 11);
          v74 = *(v39 + 12);
          v75 = *(v39 + 14);
          *(v35 + 13) = *(v39 + 13);
          *(v35 + 14) = v75;
          *(v35 + 11) = v73;
          *(v35 + 12) = v74;
          v39 += 30;
          v35 += 30;
        }
      }

      else
      {
        sub_D5FC7C(result, v33, a3 >> 1, a4, a5);
        sub_D5FC7C(v33, a2, v34, a4, a5);

        return sub_D60680(v35, v33, a2, v32, v34, a4, a5);
      }
    }

    else if (result != a2)
    {
      v16 = result + 30;
      if (result + 30 != a2)
      {
        v17 = 0;
        v18 = result;
        do
        {
          v20 = v16;
          v21 = v18[32];
          if (v21 < v18[2])
          {
            v87 = *v16;
            v109 = *(v18 + 53);
            v111 = *(v18 + 55);
            v113 = *(v18 + 57);
            v115 = *(v18 + 59);
            v101 = *(v18 + 45);
            v103 = *(v18 + 47);
            v105 = *(v18 + 49);
            v107 = *(v18 + 51);
            v93 = *(v18 + 37);
            v95 = *(v18 + 39);
            v97 = *(v18 + 41);
            v99 = *(v18 + 43);
            v22 = v17;
            v89 = *(v18 + 33);
            v91 = *(v18 + 35);
            do
            {
              v23 = (result + v22);
              v24 = *(result + v22 + 208);
              *(v23 + 27) = *(result + v22 + 192);
              *(v23 + 28) = v24;
              *(v23 + 29) = *(result + v22 + 224);
              v25 = *(result + v22 + 144);
              *(v23 + 23) = *(result + v22 + 128);
              *(v23 + 24) = v25;
              v26 = *(result + v22 + 176);
              *(v23 + 25) = *(result + v22 + 160);
              *(v23 + 26) = v26;
              v27 = *(result + v22 + 80);
              *(v23 + 19) = *(result + v22 + 64);
              *(v23 + 20) = v27;
              v28 = *(result + v22 + 112);
              *(v23 + 21) = *(result + v22 + 96);
              *(v23 + 22) = v28;
              v29 = *(result + v22 + 16);
              *(v23 + 15) = *(result + v22);
              *(v23 + 16) = v29;
              v30 = *(result + v22 + 48);
              *(v23 + 17) = *(result + v22 + 32);
              *(v23 + 18) = v30;
              if (!v22)
              {
                v19 = result;
                goto LABEL_11;
              }

              v22 -= 240;
            }

            while (v21 < *(v23 - 28));
            v19 = result + v22 + 240;
LABEL_11:
            *v19 = v87;
            *(v19 + 16) = v21;
            *(v19 + 184) = v109;
            *(v19 + 200) = v111;
            *(v19 + 216) = v113;
            *(v19 + 232) = v115;
            *(v19 + 120) = v101;
            *(v19 + 136) = v103;
            *(v19 + 152) = v105;
            *(v19 + 168) = v107;
            *(v19 + 56) = v93;
            *(v19 + 72) = v95;
            *(v19 + 88) = v97;
            *(v19 + 104) = v99;
            *(v19 + 24) = v89;
            *(v19 + 40) = v91;
          }

          v16 = v20 + 15;
          v17 += 240;
          v18 = v20;
        }

        while (v20 + 15 != a2);
      }
    }
  }

  return result;
}