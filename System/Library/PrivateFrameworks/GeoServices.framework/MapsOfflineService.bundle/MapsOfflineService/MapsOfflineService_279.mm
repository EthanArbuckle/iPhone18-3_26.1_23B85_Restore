BOOL sub_11285F4(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a3;
  if (*a3 == a3[1])
  {
    sub_11287CC(&v29, *a1, a2);
    v25 = *a5;
    if (*a5)
    {
      *(a5 + 8) = v25;
      operator delete(v25);
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
    }

    v24 = 0;
    *a5 = v29;
    *(a5 + 16) = v30;
  }

  else
  {
    v10 = sub_4C49C0(*(v8 + 8), 0);
    v11 = sub_4D1DB8(v10);
    sub_11287CC(&v29, *a1, v8);
    v12 = v29;
    if (v11)
    {
      v13 = v29 == *(&v29 + 1);
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = sub_4C49C0(*(a2 + 8), 0);
      v15 = sub_4D1DB8(v14);
      if (v15)
      {
        v16 = *(a2 + 8);
        v27 = 0x7FFFFFFFFFFFFFFELL;
        v17 = sub_1197168((a1 + 31), v16, &v27);
        v18 = v11 >= v15 ? v15 : v11;
        *&v19 = v18;
        LODWORD(v19) = *(a4 + 128);
        if (v17 / v18 <= v19 / 1000000000.0)
        {
          sub_11287CC(&v27, *a1, a2);
          v20 = *a5;
          if (*a5)
          {
            *(a5 + 8) = v20;
            operator delete(v20);
            *a5 = 0;
            *(a5 + 8) = 0;
            *(a5 + 16) = 0;
          }

          v21 = v27;
          *a5 = v27;
          v22 = v28;
          *(a5 + 8) = v28;
          if (v21 != v22)
          {
            v23 = sub_1195B20(a1 + 38, a5);
            if (v23 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v24 = v23 < *(a4 + 136);
              if (!v12)
              {
                return v24;
              }

              goto LABEL_16;
            }
          }
        }
      }
    }

    v24 = 1;
    if (v12)
    {
LABEL_16:
      operator delete(v12);
    }
  }

  return v24;
}

void sub_11287A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_11287CC(void *a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_3AF6B4(a2);
  sub_4C5914(*(a3 + 8), &v12);
  v4 = v12;
  v5 = v13;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (v17 != v16)
  {
    if (((v17 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v21 != v20)
  {
    if (((v21 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_1128C38(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (v26)
  {
    operator delete(v26);
  }

  sub_4A48(a1);
}

void sub_1128C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB6B8(&a28);
  v30 = *v28;
  if (*v28)
  {
    *(v28 + 8) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_1128CCC(void *a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_3AF6B4(a2);
  sub_4C5914(*(a3 + 8), &v12);
  v4 = v12;
  v5 = v13;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (v17 != v16)
  {
    if (((v17 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v21 != v20)
  {
    if (((v21 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_1129138(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (v26)
  {
    operator delete(v26);
  }

  sub_4A48(a1);
}

void sub_1129184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB6B8(&a28);
  v30 = *v28;
  if (*v28)
  {
    *(v28 + 8) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_11291C4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t **a4, void *a5)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  v8 = (a1 + 4);
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = *"default_region";
  v9 = a1 + 72;
  *(a1 + 12) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 95) = 14;
  strcpy((a1 + 78), "t_region");
  v10 = *a4;
  v11 = sub_3AF6B4(a5);
  sub_4E5760(v10, v11, v21);
  if (*(a1 + 95) < 0)
  {
    operator delete(*v9);
  }

  *v9 = v21[0];
  *(v9 + 16) = *&v21[1];
  BYTE7(v21[1]) = 21;
  strcpy(v21, "CyclingRouteSelection");
  if (*(a1 + 95) < 0)
  {
    sub_325C(v22, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *v22 = *v9;
    v23 = *(v9 + 16);
  }

  sub_2AAFFC(&__p, v22, 1uLL);
  v12 = sub_3AEC94(a5, v21, &__p);
  v13 = __p;
  if (__p)
  {
    v14 = v20;
    v15 = __p;
    if (v20 != __p)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = __p;
    }

    v20 = v13;
    operator delete(v15);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[0]);
    if ((SBYTE7(v21[1]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SBYTE7(v21[1]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*&v21[0]);
LABEL_16:
  BYTE7(v21[1]) = 17;
  strcpy(v21, "return_all_routes");
  *a1 = sub_5F9D0(v12, v21);
  if (SBYTE7(v21[1]) < 0)
  {
    operator delete(*&v21[0]);
  }

  BYTE7(v21[1]) = 14;
  strcpy(v21, "max_num_routes");
  v17 = sub_353010(v12, v21);
  if (v17 >= a3)
  {
    v18 = a3;
  }

  else
  {
    v18 = v17;
  }

  *v8 = v18;
  if (SBYTE7(v21[1]) < 0)
  {
    operator delete(*&v21[0]);
  }

  BYTE7(v21[1]) = 20;
  strcpy(v21, "max_relative_sharing");
  *(a1 + 8) = sub_63D34(v12, v21);
  if (SBYTE7(v21[1]) < 0)
  {
    operator delete(*&v21[0]);
  }

  BYTE7(v21[1]) = 20;
  strcpy(v21, "min_line_distance_cm");
  *(a1 + 16) = sub_353010(v12, v21);
  if (SBYTE7(v21[1]) < 0)
  {
    operator delete(*&v21[0]);
  }

  strcpy(v21, "score_threshold_factor");
  BYTE7(v21[1]) = 22;
  *(a1 + 24) = sub_63D34(v12, v21);
  if (SBYTE7(v21[1]) < 0)
  {
    operator delete(*&v21[0]);
  }

  operator new();
}

void sub_1129944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((*(v20 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v20 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v21);
  _Unwind_Resume(exception_object);
}

void sub_1129A5C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_1A104(&a12);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1129A24);
}

void sub_1129A84()
{
  if (*(v0 + 95) < 0)
  {
    JUMPOUT(0x1129A4CLL);
  }

  JUMPOUT(0x1129A34);
}

uint64_t sub_1129A94(uint64_t a1, char a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 1) = a2;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  v5 = (a1 + 56);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  v35[23] = 20;
  strcpy(v35, "CyclingCoverageCheck");
  __p = 0;
  v33 = 0;
  v34 = 0;
  v6 = sub_3AEC94(a3, v35, &__p);
  sub_5ADDC(v36, v6);
  v7 = __p;
  if (__p)
  {
    v8 = v33;
    v9 = __p;
    if (v33 != __p)
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
      v9 = __p;
    }

    v33 = v7;
    operator delete(v9);
  }

  if ((v35[23] & 0x80000000) != 0)
  {
    operator delete(*v35);
  }

  *a1 = sub_5F9D0(v36, "enable_coverage_check");
  sub_63960(v36, &qword_27C2EF0, v35);
  v11 = *v4;
  if (*v4)
  {
    v12 = *(a1 + 16);
    v13 = *v4;
    if (v12 != v11)
    {
      do
      {
        v14 = *(v12 - 1);
        v12 -= 3;
        if (v14 < 0)
        {
          operator delete(*v12);
        }
      }

      while (v12 != v11);
      v13 = *v4;
    }

    *(a1 + 16) = v11;
    operator delete(v13);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 8) = *v35;
  *(a1 + 24) = *&v35[16];
  sub_63960(v36, &qword_27C2F08, v35);
  v15 = *v5;
  if (*v5)
  {
    v16 = *(a1 + 64);
    v17 = *v5;
    if (v16 != v15)
    {
      do
      {
        v18 = *(v16 - 1);
        v16 -= 3;
        if (v18 < 0)
        {
          operator delete(*v16);
        }
      }

      while (v16 != v15);
      v17 = *v5;
    }

    *(a1 + 64) = v15;
    operator delete(v17);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  *(a1 + 56) = *v35;
  *(a1 + 72) = *&v35[16];
  sub_63960(v36, "supported_regions", v35);
  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(a1 + 40);
    v21 = *(a1 + 32);
    if (v20 != v19)
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
      v21 = *(a1 + 32);
    }

    *(a1 + 40) = v19;
    operator delete(v21);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 32) = *v35;
  *(a1 + 48) = *&v35[16];
  sub_63960(v36, "preflight_regions", v35);
  v23 = *(a1 + 80);
  if (v23)
  {
    v24 = *(a1 + 88);
    v25 = *(a1 + 80);
    if (v24 != v23)
    {
      do
      {
        v26 = *(v24 - 1);
        v24 -= 3;
        if (v26 < 0)
        {
          operator delete(*v24);
        }
      }

      while (v24 != v23);
      v25 = *(a1 + 80);
    }

    *(a1 + 88) = v23;
    operator delete(v25);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  *(a1 + 80) = *v35;
  *(a1 + 96) = *&v35[16];
  v27 = v37;
  if (v37)
  {
    do
    {
      v28 = *v27;
      v29 = *(v27 + 12);
      if (v29 != -1)
      {
        (off_26755E0[v29])(v35, v27 + 5);
      }

      *(v27 + 12) = -1;
      if (*(v27 + 39) < 0)
      {
        operator delete(v27[2]);
      }

      operator delete(v27);
      v27 = v28;
    }

    while (v28);
  }

  v30 = v36[0];
  v36[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  return a1;
}

void sub_1129DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_5C010(va);
  sub_1A104((v8 + 80));
  sub_1A104(v10);
  sub_1A104((v8 + 32));
  sub_1A104(v9);
  _Unwind_Resume(a1);
}

void sub_1129E3C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1129E14);
}

void sub_1129E60(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
    if ((*(a2 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      v3 = *(a2 + 48);
      if (!v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a2 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a2 + 72));
  v3 = *(a2 + 48);
  if (v3)
  {
LABEL_4:
    *(a2 + 56) = v3;
    operator delete(v3);
  }

LABEL_5:
  v4 = *(a2 + 24);
  if (v4)
  {
    *(a2 + 32) = v4;
    operator delete(v4);
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

uint64_t sub_1129EFC(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 48);
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 72));
  v2 = *(a1 + 48);
  if (v2)
  {
LABEL_4:
    *(a1 + 56) = v2;
    operator delete(v2);
  }

LABEL_5:
  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1129F94(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_1129E60(a1, i))
    {
      i -= 176;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1129FF8(void **a1, uint64_t *a2)
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
  sub_112A1B0(v2 << 7, a2);
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

void sub_112A19C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CE38D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_112A1B0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_3ECFD8(a1, *v3, *(v3 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 8) - *v3) >> 4));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_CDF41C(a1 + 24, *(v3 + 24), *(v3 + 32), 0xE21A291C077975B9 * ((*(v3 + 32) - *(v3 + 24)) >> 3));
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

void sub_112A288(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_112A2B8(uint64_t a1)
{
  v2 = *(a1 + 616);
  if (v2)
  {
    *(a1 + 624) = v2;
    operator delete(v2);
  }

  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  v3 = *(a1 + 448);
  if (v3)
  {
    do
    {
      v4 = *v3;
      sub_253B4((v3 + 2));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a1 + 432);
  *(a1 + 432) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_112A338(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v3 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  if (*(a2 + 23) < 0)
  {
    sub_325C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  *(v7 + 24) = *a3;
  *(v7 + 48) = 4;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  v8 = v7 + 80;
  v18 = v7 + 80;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = 0;
    do
    {
      v13 = &v9[v12];
      v14 = v11 + v12;
      v15 = *&v9[v12];
      *(v14 + 16) = *&v9[v12 + 16];
      *v14 = v15;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      *(v11 + v12 + 24) = 0;
      *(v14 + 48) = -1;
      v16 = *&v9[v12 + 48];
      if (v16 != -1)
      {
        v19 = v11 + v12 + 24;
        (off_2675658[v16])(&v19, v13 + 24);
        *(v14 + 48) = v16;
      }

      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      *(v14 + 72) = 0;
      *(v14 + 56) = *(v13 + 56);
      *(v14 + 72) = *(v13 + 9);
      *(v13 + 7) = 0;
      *(v13 + 8) = 0;
      *(v13 + 9) = 0;
      v12 += 80;
    }

    while (v13 + 80 != v10);
    do
    {
      sub_3ED230(v9);
      v9 += 80;
    }

    while (v9 != v10);
    v9 = *a1;
    v8 = v18;
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

void sub_112A57C()
{
  strcpy(v0, "display_traversal_time");
  v0[23] = 22;
  v0[24] = 0;
  v2 = 272;
  strcpy(v1, "num_name_changes");
  operator new();
}

void sub_112B538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p)
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

void sub_112B988(void *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  HIBYTE(v10) = 15;
  strcpy(__p, "reroute_biasing");
  v6 = sub_5F5AC(a1, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
    if (a2 <= 4)
    {
LABEL_3:
      if ((a2 - 1) >= 2)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_112C010(__p, v6);
    }
  }

  else if (a2 <= 4)
  {
    goto LABEL_3;
  }

  if (a2 <= 0xD)
  {
    if (((1 << a2) & 0x3500) != 0)
    {
LABEL_8:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 4) = 0x7FFFFFFF;
      *(a3 + 16) = xmmword_2297C00;
      *(a3 + 32) = -NAN;
      *(a3 + 40) = 0x7FFFFFFFFFFFFFFFLL;
      return;
    }

    if (((1 << a2) & 0xA00) != 0)
    {
      goto LABEL_11;
    }

    if (a2 == 7)
    {
      operator new();
    }
  }

  if ((a2 - 5) >= 2)
  {
    goto LABEL_8;
  }

  HIBYTE(v8[2]) = 18;
  strcpy(v8, "legacy_sar_biasing");
  v7 = sub_5F5AC(a1, v8);
  *__p = xmmword_2297C00;
  v10 = -NAN;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  sub_112C3BC(a3, v7, __p);
  if (SHIBYTE(v8[2]) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_112BBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_112BC00(uint64_t a1, void *a2, uint64_t a3)
{
  sub_112B988(a2, *(a3 + 30), a1);
  *(a1 + 48) = a3;
  return a1;
}

uint64_t sub_112BC38(uint64_t a1, uint64_t *a2)
{
  if (!sub_4C49E0(**(a1 + 48)))
  {
    return 0;
  }

  v4 = *(*(a1 + 48) + 30);
  if (v4 <= 0xB)
  {
    v5 = 1 << v4;
    if ((v5 & 0xA06) != 0)
    {
      sub_112BE8C(a1, a2);
      goto LABEL_25;
    }

    if ((v5 & 0xE0) != 0 && *a1 == 1)
    {
      v7 = *a2;
      v8 = a2[1];
      if (*a2 != v8)
      {
        do
        {
          if (sub_4C5074(*(v7 + 8), 1))
          {
            goto LABEL_11;
          }

          v9 = *(v7 + 40) - *(v7 + 840);
          v10 = *(v7 + 208);
          if (v9 <= 0.0)
          {
            v13 = 0;
            if (v10 >= *(a1 + 4))
            {
              goto LABEL_23;
            }

            goto LABEL_11;
          }

          v11 = v10 / v9 * 1000000000.0;
          if (v11 >= 0.0)
          {
            if (v11 >= 4.50359963e15)
            {
              goto LABEL_22;
            }

            v12 = (v11 + v11) + 1;
          }

          else
          {
            if (v11 <= -4.50359963e15)
            {
              goto LABEL_22;
            }

            v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
          }

          v11 = (v12 >> 1);
LABEL_22:
          v13 = v11;
          if (v10 >= *(a1 + 4))
          {
LABEL_23:
            if (v13 >= *(a1 + 8))
            {
              *(v7 + 1008) |= 4uLL;
            }
          }

LABEL_11:
          v7 += 1112;
        }

        while (v7 != v8);
      }
    }
  }

LABEL_25:
  v15 = *a2;
  v14 = a2[1];
  if (*a2 == v14)
  {
    return 0;
  }

  v16 = v14 - v15 - 1112;
  if (v16 < 0x458)
  {
    result = 0;
    v17 = *a2;
    do
    {
LABEL_32:
      result += (*(v17 + 1008) >> 2) & 1;
      v17 += 1112;
    }

    while (v17 != v14);
    return result;
  }

  v18 = 0;
  v19 = 0;
  v20 = v16 / 0x458 + 1;
  v17 = v15 + 1112 * (v20 & 0x7FFFFFFFFFFFFELL);
  v21 = v20 & 0x7FFFFFFFFFFFFELL;
  do
  {
    v18 += (*(v15 + 1008) >> 2) & 1;
    v19 += (*(v15 + 2120) >> 2) & 1;
    v15 += 2224;
    v21 -= 2;
  }

  while (v21);
  result = v19 + v18;
  if (v20 != (v20 & 0x7FFFFFFFFFFFFELL))
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_112BE8C(uint64_t result, uint64_t *a2)
{
  if (*result == 1)
  {
    v3 = result;
    result = sub_112C918(result);
    if (result)
    {
      result = sub_44F320(*(*(v3 + 48) + 16));
      if (result)
      {
        v4 = *(v3 + 18);
        v6 = *a2;
        v5 = a2[1];
        if (v6 == v5)
        {
          return result;
        }

        while (1)
        {
LABEL_10:
          result = sub_4C5074(*(v6 + 8), 1);
          if ((result & 1) != 0 || (v4 & 1) != 0 && *(v6 + 952) == 0.0)
          {
            goto LABEL_9;
          }

          v7 = *(v6 + 40) - *(v6 + 840);
          v8 = *(v6 + 208);
          if (v7 <= 0.0)
          {
            v11 = 0;
            if (v8 >= *(v3 + 4))
            {
              goto LABEL_22;
            }

            goto LABEL_9;
          }

          v9 = v8 / v7 * 1000000000.0;
          if (v9 >= 0.0)
          {
            if (v9 >= 4.50359963e15)
            {
              goto LABEL_21;
            }

            v10 = (v9 + v9) + 1;
          }

          else
          {
            if (v9 <= -4.50359963e15)
            {
              goto LABEL_21;
            }

            v10 = (v9 + v9) - 1 + (((v9 + v9) - 1) >> 63);
          }

          v9 = (v10 >> 1);
LABEL_21:
          v11 = v9;
          if (v8 >= *(v3 + 4))
          {
LABEL_22:
            if (v11 >= *(v3 + 8))
            {
              *(v6 + 1008) |= 4uLL;
            }
          }

LABEL_9:
          v6 += 1112;
          if (v6 == v5)
          {
            return result;
          }
        }
      }

      v4 = 0;
      v6 = *a2;
      v5 = a2[1];
      if (v6 != v5)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_112C010(BOOL *a1, void *a2)
{
  strcpy(__p, "bias_to_any_user_route");
  v6 = 22;
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_112C384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_112C3BC(uint64_t a1, void *a2, _OWORD *a3)
{
  v13 = 7;
  strcpy(__p, "enabled");
  v6 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *a1 = v6;
  v13 = 13;
  strcpy(__p, "min_overlap_s");
  *(a1 + 4) = sub_64F20(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 20;
  strcpy(__p, "min_relative_overlap");
  v8 = sub_63D34(a2, __p) * 1000000000.0;
  if (v8 >= 0.0)
  {
    if (v8 >= 4.50359963e15)
    {
      goto LABEL_11;
    }

    v9 = (v8 + v8) + 1;
  }

  else
  {
    if (v8 <= -4.50359963e15)
    {
      goto LABEL_11;
    }

    v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
  }

  v8 = (v9 >> 1);
LABEL_11:
  *(a1 + 8) = v8;
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v10 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 32) = v10;
  return a1;
}

void sub_112C540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_112C564(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (sub_4D1F6C((v2 + 48)))
  {
    return 0;
  }

  v3 = *(a1 + 36);
  v4 = v2 + 48;
  if (v3 == 0x7FFFFFFF)
  {
    v5 = sub_588D8(v4);
LABEL_4:
    v6 = v5;
  }

  else
  {
    v6 = sub_45AC50(v4);
    v5 = sub_588D8(v2 + 48);
    if (v6 != v5)
    {
      while (*v6 <= v3)
      {
        v6 += 4;
        if (v6 == v5)
        {
          goto LABEL_4;
        }
      }
    }
  }

  v7 = (v6 - sub_45AC50(v2 + 48)) >> 4;
  v8 = *(a1 + 32);
  if (!v8 || v8 >= v7)
  {
    return 0;
  }

  v11 = *(a1 + 40);
  v12 = sub_45AC50(v2 + 48);
  v13 = 0;
  if (v12 != v6)
  {
    v14 = (v12 + 16);
    if ((v12 + 16) != v6)
    {
      v13 = 0;
      v40 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
      v41 = vdupq_n_s64(0x4076800000000000uLL);
      v38 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
      v39 = vdupq_n_s64(0xC066800000000000);
      do
      {
        v17 = *(v14 - 3);
        v16 = *(v14 - 2);
        v18 = v17 == -1 && v16 == -1;
        if (v18 || ((v20 = v14[1], v19 = v14[2], v20 == -1) ? (v21 = v19 == -1) : (v21 = 0), v21))
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_19;
        }

        v22 = exp(3.14159265 - v16 * 6.28318531 / 4294967300.0);
        v23 = atan((v22 - 1.0 / v22) * 0.5) * 57.2957795 * 0.0174532925;
        v24.i64[0] = v17;
        v24.i64[1] = v20;
        v25 = exp(3.14159265 - v19 * 6.28318531 / 4294967300.0);
        v26 = atan((v25 - 1.0 / v25) * 0.5) * 57.2957795 * 0.0174532925;
        v27 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v24), v41), v40), v39), v38);
        v42 = vsubq_f64(v27, vdupq_laneq_s64(v27, 1)).f64[0];
        v28 = sin((v23 - v26) * 0.5);
        v29 = v28 * v28;
        v30 = cos(v23);
        v31 = v30 * cos(v26);
        v32 = sin(0.5 * v42);
        v33 = atan2(sqrt(v32 * v32 * v31 + v29), sqrt(1.0 - (v32 * v32 * v31 + v29)));
        v34 = (v33 + v33) * 6372797.56 * 100.0;
        if (v34 >= 0.0)
        {
          v35 = v34;
          if (v34 < 4.50359963e15)
          {
            v36 = (v34 + v34) + 1;
            goto LABEL_33;
          }
        }

        else
        {
          v35 = v34;
          if (v34 > -4.50359963e15)
          {
            v36 = (v34 + v34) - 1 + (((v34 + v34) - 1) >> 63);
LABEL_33:
            v35 = (v36 >> 1);
          }
        }

        if (v35 < 9.22337204e18)
        {
          if (v34 >= 0.0)
          {
            if (v34 < 4.50359963e15)
            {
              v37 = (v34 + v34) + 1;
LABEL_41:
              v34 = (v37 >> 1);
            }
          }

          else if (v34 > -4.50359963e15)
          {
            v37 = (v34 + v34) - 1 + (((v34 + v34) - 1) >> 63);
            goto LABEL_41;
          }

          v15 = v34;
          goto LABEL_19;
        }

        v15 = 0x7FFFFFFFFFFFFFFELL;
LABEL_19:
        v13 += v15;
        v14 += 4;
      }

      while (v14 != v6);
    }
  }

  return v11 == 0x7FFFFFFFFFFFFFFFLL || v13 > v11;
}

uint64_t sub_112C918(uint64_t a1)
{
  if (*(a1 + 17))
  {
    v2 = 1;
    v3 = *(a1 + 48);
    v5 = *(v3 + 248);
    v4 = *(v3 + 252);
    if (v5 == -1 && v4 == -1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v2 = sub_4C4AC8(**(a1 + 48)) == 2;
    v3 = *(a1 + 48);
    v5 = *(v3 + 248);
    v4 = *(v3 + 252);
    if (v5 == -1 && v4 == -1)
    {
      goto LABEL_37;
    }
  }

  v9 = *(v3 + 72);
  v8 = *(v3 + 76);
  if (v9 == -1 && v8 == -1)
  {
    goto LABEL_37;
  }

  v11 = exp(3.14159265 - v4 * 6.28318531 / 4294967300.0);
  v12 = atan((v11 - 1.0 / v11) * 0.5) * 57.2957795 * 0.0174532925;
  v13.i64[0] = v5;
  v13.i64[1] = v9;
  v14 = exp(3.14159265 - v8 * 6.28318531 / 4294967300.0);
  v15 = atan((v14 - 1.0 / v14) * 0.5) * 57.2957795 * 0.0174532925;
  v16 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v13), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v31 = vsubq_f64(v16, vdupq_laneq_s64(v16, 1)).f64[0];
  v17 = sin((v12 - v15) * 0.5);
  v18 = v17 * v17;
  v19 = cos(v12);
  v20 = v19 * cos(v15);
  v21 = sin(0.5 * v31);
  v22 = atan2(sqrt(v21 * v21 * v20 + v18), sqrt(1.0 - (v21 * v21 * v20 + v18)));
  v23 = (v22 + v22) * 6372797.56 * 100.0;
  if (v23 >= 0.0)
  {
    v24 = v23;
    if (v23 >= 4.50359963e15)
    {
      goto LABEL_22;
    }

    v25 = (v23 + v23) + 1;
  }

  else
  {
    v24 = v23;
    if (v23 <= -4.50359963e15)
    {
      goto LABEL_22;
    }

    v25 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
  }

  v24 = (v25 >> 1);
LABEL_22:
  if (v24 < 9.22337204e18)
  {
    if (v23 >= 0.0)
    {
      if (v23 >= 4.50359963e15)
      {
        goto LABEL_31;
      }

      v26 = (v23 + v23) + 1;
    }

    else
    {
      if (v23 <= -4.50359963e15)
      {
        goto LABEL_31;
      }

      v26 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
    }

    v23 = (v26 >> 1);
LABEL_31:
    v27 = v23;
    if (v23 == 0x7FFFFFFFFFFFFFFFLL || !v2)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (!v2)
  {
    goto LABEL_37;
  }

  v27 = 0x7FFFFFFFFFFFFFFELL;
LABEL_35:
  if (v27 < *(a1 + 24))
  {
    return 1;
  }

LABEL_37:
  if (*(a1 + 16))
  {
    v30 = 1;
    if (*(a1 + 19) != 1)
    {
      goto LABEL_39;
    }

LABEL_42:
    if (!v30 && *(*(a1 + 48) + 31) != 1)
    {
      return 0;
    }

    return !sub_112C564(a1);
  }

  v30 = sub_4C4AC8(*v3) == 2;
  if (*(a1 + 19) == 1)
  {
    goto LABEL_42;
  }

LABEL_39:
  if (!v30)
  {
    return 0;
  }

  return !sub_112C564(a1);
}

void sub_112CC88()
{
  byte_27C2F8F = 3;
  LODWORD(qword_27C2F78) = 5136193;
  byte_27C2FA7 = 3;
  LODWORD(qword_27C2F90) = 5136194;
  byte_27C2FBF = 3;
  LODWORD(qword_27C2FA8) = 5136195;
  byte_27C2FD7 = 15;
  strcpy(&qword_27C2FC0, "vehicle_mass_kg");
  byte_27C2FEF = 21;
  strcpy(&xmmword_27C2FD8, "vehicle_cargo_mass_kg");
  byte_27C3007 = 19;
  strcpy(&qword_27C2FF0, "vehicle_aux_power_w");
  byte_27C301F = 15;
  strcpy(&qword_27C3008, "dcdc_efficiency");
  strcpy(&qword_27C3020, "drive_train_efficiency");
  HIBYTE(word_27C3036) = 22;
  operator new();
}

void sub_112CE64(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C3036) < 0)
  {
    sub_21E8628();
  }

  sub_21E8634();
  _Unwind_Resume(a1);
}

uint64_t sub_112CE88(uint64_t a1, uint64_t *a2)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = *(v2 + 8);
    if ((*(a1 + 8) & sub_4C4C60(v6)) != 0 || (*(a1 + 16) & sub_4C4CC8(v6)) != 0)
    {
      *(v2 + 1008) |= 0x20uLL;
      ++v5;
    }

    v2 += 1112;
  }

  while (v2 != v3);
  return v5;
}

void sub_112CF50(BOOL *a1, void *a2)
{
  HIBYTE(v5[2]) = 7;
  strcpy(v5, "enabled");
  v3 = sub_5F9D0(a2, v5);
  if (SHIBYTE(v5[2]) < 0)
  {
    v4 = v3;
    operator delete(v5[0]);
    v3 = v4;
  }

  *a1 = v3;
  a1[1] = 0;
  operator new();
}

void sub_112D31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 57) < 0)
  {
    operator delete(*(v23 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_112D708(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_112D71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[23] = 21;
  strcpy(v6, "DrivingClosureScoring");
  memset(__p, 0, sizeof(__p));
  v4 = sub_3AEC94(a3, v6, __p);
  sub_1133C78(a1, v4);
}

void sub_112D924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_404134(v18 + 114);
  v20 = v18[43];
  if (v20)
  {
    v18[44] = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_112D988(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 == 1)
  {
    *(a1 + 192) = 0;
    *(a1 + 184) = 0;
    *(a1 + 196) = 0;
    *(a1 + 200) = 0;
    __p = 0;
    v17 = 0;
    v18 = 0;
    sub_1135CA4(&__p, 0x3AEF6CA970586723 * ((a2[1] - *a2) >> 3));
    v6 = *a2;
    v7 = a2[1];
    if (*a2 != v7)
    {
      do
      {
        v9 = *(v6 + 8);
        sub_11903E0(a1 + 248, v9, v22);
        if (sub_4C49E0(v9))
        {
          v10 = sub_4E4B18(v9, 0, 0);
        }

        else
        {
          v10 = 0x7FFFFFFF;
        }

        *&v19 = v6;
        sub_1135DC4(&v19 + 1, v22);
        v21 = v10;
        v23 = v22;
        sub_11353E8(&v23);
        v11 = v17;
        if (v17 < v18)
        {
          v17[1] = 0;
          v11[2] = 0;
          v11[3] = 0;
          *v11 = v19;
          *(v11 + 1) = v20;
          *(&v19 + 1) = 0;
          v20 = 0uLL;
          *(v11 + 8) = v21;
          v8 = (v11 + 5);
        }

        else
        {
          v8 = sub_1135F78(&__p, &v19);
        }

        v17 = v8;
        v22[0] = &v19 + 1;
        sub_11353E8(v22);
        v6 += 1112;
      }

      while (v6 != v7);
    }

    sub_112DBDC(a1, &__p, a3);
    sub_112EF5C(a1, &__p);
    v12 = __p;
    if (__p)
    {
      v13 = v17;
      v14 = __p;
      if (v17 != __p)
      {
        do
        {
          v15 = v13 - 5;
          *&v19 = v13 - 4;
          sub_11353E8(&v19);
          v13 = v15;
        }

        while (v15 != v12);
        v14 = __p;
      }

      v17 = v12;
      operator delete(v14);
    }
  }
}

void sub_112DB5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_112F0E8(va);
  _Unwind_Resume(a1);
}

void sub_112DB70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_112F0E8(va);
  _Unwind_Resume(a1);
}

void sub_112DB84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_11353E8(va1);
  sub_112F0E8(va);
  _Unwind_Resume(a1);
}

void sub_112DBA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_112F0E8(va);
  _Unwind_Resume(a1);
}

void sub_112DBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v18 - 72) = &a18;
  sub_11353E8((v18 - 72));
  sub_112F0E8(&a10);
  _Unwind_Resume(a1);
}

void sub_112DBDC(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_112F160(a1, a2, a3, &v154);
  v3 = v154;
  if (v154 != v155)
  {
    v4 = v155;
    do
    {
      if (v3[3] > 0.0)
      {
        v5 = *v3;
        v6 = *(*v3 + 40);
        v7 = *(*v3 + 48);
        if (v6 >= v7)
        {
          v9 = v5[4];
          v10 = v6 - v9 + 1;
          if (v10 < 0)
          {
            sub_1794();
          }

          v11 = v7 - v9;
          if (2 * v11 > v10)
          {
            v10 = 2 * v11;
          }

          if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v12 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v10;
          }

          if (v12)
          {
            operator new();
          }

          v8 = v6 - v9 + 1;
          memcpy(0, v9, v6 - v9);
          v5[4] = 0;
          v5[5] = v8;
          v5[6] = 0;
          if (v9)
          {
            operator delete(v9);
          }
        }

        else
        {
          v8 = v6 + 1;
        }

        v5[5] = v8;
      }

      v13 = sub_112F704(a1, **(v3 + 1) + 464 * *(v3 + 2));
      v14 = *v3;
      if (v13 < 0)
      {
        v15 = -5;
      }

      else
      {
        v15 = 5;
      }

      v16 = v13 / 10 + (((103 * (v15 + v13 % 10)) >> 15) & 1) + ((103 * (v15 + v13 % 10)) >> 10);
      if (*(*&v14 + 24) > v16)
      {
        v16 = *(*&v14 + 24);
      }

      *(*&v14 + 24) = v16;
      v17 = v3[3];
      *(*&v14 + 56) = v17;
      v18 = *(*&v14 + 40) - *(*&v14 + 32);
      if (*(a1 + 184) > v18)
      {
        v18 = *(a1 + 184);
      }

      *(a1 + 184) = v18;
      if (v17 <= 0.0)
      {
        goto LABEL_4;
      }

      v19 = sub_74700();
      sub_734A0(v19, &v153);
      v20 = *sub_73F54(v19);
      v21 = *(sub_73F54(v19) + 8);
      sub_19594F8(&v159);
      if (v20 != v21)
      {
        sub_3E8444("", v20, "", &v156);
        if ((v158 & 0x80u) == 0)
        {
          v22 = &v156;
        }

        else
        {
          v22 = v156;
        }

        if ((v158 & 0x80u) == 0)
        {
          v23 = v158;
        }

        else
        {
          v23 = v157;
        }

        while (1)
        {
          sub_4A5C(&v159, v22, v23);
          if (v158 < 0)
          {
            operator delete(v156);
          }

          v20 += 24;
          if (v20 == v21)
          {
            break;
          }

          sub_4A5C(&v159, ",", 1);
          sub_3E8444("", v20, "", &v156);
          if ((v158 & 0x80u) == 0)
          {
            v22 = &v156;
          }

          else
          {
            v22 = v156;
          }

          if ((v158 & 0x80u) == 0)
          {
            v23 = v158;
          }

          else
          {
            v23 = v157;
          }
        }
      }

      if ((v169 & 0x10) != 0)
      {
        v25 = v168;
        v26 = &v164;
        if (v168 < v165)
        {
          v168 = v165;
          v25 = v165;
          v26 = &v164;
        }
      }

      else
      {
        if ((v169 & 8) == 0)
        {
          v24 = 0;
          HIBYTE(v152) = 0;
          goto LABEL_55;
        }

        v25 = v163;
        v26 = v162;
      }

      v27 = *v26;
      v24 = v25 - *v26;
      if (v24 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v24 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v152) = v25 - *v26;
      if (v24)
      {
        memmove(&__p, v27, v24);
      }

LABEL_55:
      *(&__p + v24) = 0;
      v159 = v143;
      *(&v159 + *(v143 - 3)) = v140;
      if (v167 < 0)
      {
        operator delete(v166);
      }

      std::locale::~locale(&v161);
      std::ostream::~ostream();
      std::ios::~ios();
      sub_4C4AE4(*a3);
      sub_74224(v19);
      if (SHIBYTE(v152) < 0)
      {
        operator delete(__p);
        if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_59;
        }
      }

      else if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_59:
        operator delete(v153.__r_.__value_.__l.__data_);
      }

LABEL_4:
      v3 += 7;
    }

    while (v3 != v4);
  }

  memset(&v153, 0, sizeof(v153));
  __p = 0;
  v151 = 0;
  v152 = 0;
  v28 = *a2;
  v29 = a2[1];
  if (*a2 == v29)
  {
    goto LABEL_213;
  }

  v141 = a2[1];
  while (2)
  {
    v30 = *v28;
    v31 = *(*v28 + 8);
    if (!sub_4C49E0(v31))
    {
      goto LABEL_63;
    }

    v142 = v28;
    v32 = __p;
    v33 = v151;
    v34 = a1;
    if (v151 != __p)
    {
      do
      {
        v37 = *(v33 - 1);
        v33 -= 3;
        if (v37 < 0)
        {
          operator delete(*v33);
        }
      }

      while (v33 != v32);
    }

    v151 = v32;
    v36 = v142[1];
    v35 = v142[2];
    v144 = v35;
    while (v36 != v35)
    {
      v38 = **v36 + 464 * *(v36 + 8);
      v39 = (v38 + 48);
      v159 = (v38 + 48);
      v40 = sub_3E62E0((v34 + 5272), v38 + 48);
      *(v40 + 5) = *v36;
      *(v40 + 56) = *(v38 + 312);
      if (!sub_4C49E0(*a3))
      {
        goto LABEL_105;
      }

      sub_4C35F8(v31, &v159);
      v41 = *(v36 + 64);
      v42 = *(v36 + 72);
      if (v41 == v42 || v164 == v165)
      {
        v51 = (v41 == v42) == (v164 == v165);
        v52 = v164;
        if (!v164)
        {
          goto LABEL_87;
        }

LABEL_86:
        v165 = v52;
        operator delete(v52);
        goto LABEL_87;
      }

      if (*(v36 + 32) != v161.__locale_)
      {
        v51 = 0;
        v52 = v164;
        if (v164)
        {
          goto LABEL_86;
        }

        goto LABEL_87;
      }

      v43 = *(v36 + 16);
      if (v43)
      {
        v44 = *(v36 + 24);
        v45 = v44 < sub_4D1DC0(v43);
        v34 = a1;
        v46 = v159;
        if (!v159)
        {
          goto LABEL_164;
        }
      }

      else
      {
        v45 = 0;
        v46 = v159;
        if (!v159)
        {
LABEL_164:
          v51 = !v45;
          v52 = v164;
          if (v164)
          {
            goto LABEL_86;
          }

          goto LABEL_87;
        }
      }

      v47 = v160;
      v48 = sub_4D1DC0(v46);
      if (v47 < v48 && v45)
      {
        v50 = sub_4D1F50(*(v36 + 16), *(v36 + 24));
        v51 = v50 == sub_4D1F50(v159, v160);
        v34 = a1;
        v52 = v164;
        if (v164)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v34 = a1;
        v51 = v45 ^ (v47 < v48) ^ 1;
        v52 = v164;
        if (v164)
        {
          goto LABEL_86;
        }
      }

LABEL_87:
      if (v162[0])
      {
        v162[1] = v162[0];
        operator delete(v162[0]);
      }

      if (!v51)
      {
LABEL_105:
        v65 = a3[37];
        v64 = a3[38];
        if (v65 == v64)
        {
LABEL_129:
          v75 = v154;
          v74 = v155;
          if (v154 != v155)
          {
            if (*(v38 + 71) >= 0)
            {
              v76 = *(v38 + 71);
            }

            else
            {
              v76 = *(v38 + 56);
            }

            if ((*(v38 + 71) & 0x80) != 0)
            {
              while (1)
              {
                v80 = *(*v75 + 23);
                v81 = v80;
                if ((v80 & 0x80u) != 0)
                {
                  v80 = *(*v75 + 8);
                }

                if (v80 == v76)
                {
                  v82 = v81 >= 0 ? *v75 : **v75;
                  if (!memcmp(v82, *v39, v76))
                  {
                    break;
                  }
                }

                v75 += 56;
                if (v75 == v74)
                {
                  goto LABEL_154;
                }
              }
            }

            else
            {
              while (1)
              {
                v77 = *(*v75 + 23);
                v78 = v77;
                if ((v77 & 0x80u) != 0)
                {
                  v77 = *(*v75 + 8);
                }

                if (v77 == v76)
                {
                  v79 = v78 >= 0 ? *v75 : **v75;
                  if (!memcmp(v79, (v38 + 48), v76))
                  {
                    break;
                  }
                }

                v75 += 56;
                if (v75 == v74)
                {
                  goto LABEL_154;
                }
              }
            }
          }

          if (v75 == v74 || (v83 = *(v75 + 3), v83 == 0.0))
          {
LABEL_154:
            v34 = a1;
            v84 = 0.0;
            if ((*(a1 + 25) & 1) == 0)
            {
              v84 = sub_112F704(a1, v38);
            }

            *(v30 + 808) = v84 + *(v30 + 808);
            *(v40 + 9) = v84;
          }

          else
          {
            v85 = *(*v75 + 24);
            v34 = a1;
            v86 = (*(*v75 + 40) - *(*v75 + 32));
            v87 = *(v30 + 808) + v83 * (pow(*(a1 + 56) * v86, *(a1 + 64)) * (10 * v85));
            *(v30 + 808) = v87;
            *(v30 + 808) = *(a1 + 72) * v86 + v87;
            v40[8] = *(v75 + 3);
            v88 = **(v75 + 1) + 464 * *(v75 + 2);
            v89 = v151;
            if (v151 >= v152)
            {
              v93 = sub_1CEE8(&__p, v88 + 48);
            }

            else
            {
              if (*(v88 + 71) < 0)
              {
                sub_325C(v151, *(v88 + 48), *(v88 + 56));
              }

              else
              {
                v90 = *(v88 + 48);
                v151[2] = *(v88 + 64);
                *v89 = v90;
              }

              v93 = v89 + 3;
            }

            v151 = v93;
          }
        }

        else
        {
          if (*(v38 + 71) >= 0)
          {
            v66 = *(v38 + 71);
          }

          else
          {
            v66 = *(v38 + 56);
          }

          if ((*(v38 + 71) & 0x80) != 0)
          {
            v67 = *v39;
            while (1)
            {
              v71 = *(v65 + 23);
              v72 = v71;
              if ((v71 & 0x80u) != 0)
              {
                v71 = *(v65 + 8);
              }

              if (v66 == v71)
              {
                v73 = v72 >= 0 ? v65 : *v65;
                if (!memcmp(v67, v73, v66))
                {
                  break;
                }
              }

              v65 += 80;
              if (v65 == v64)
              {
                goto LABEL_129;
              }
            }
          }

          else
          {
            while (1)
            {
              v68 = *(v65 + 23);
              v69 = v68;
              if ((v68 & 0x80u) != 0)
              {
                v68 = *(v65 + 8);
              }

              if (v66 == v68)
              {
                v70 = v69 >= 0 ? v65 : *v65;
                if (!memcmp((v38 + 48), v70, v66))
                {
                  break;
                }
              }

              v65 += 80;
              if (v65 == v64)
              {
                goto LABEL_129;
              }
            }
          }

          v34 = a1;
          *(v30 + 808) = *(a1 + 8);
          *(v40 + 57) = 1;
        }

        goto LABEL_71;
      }

      v53 = sub_4C4AE4(v31);
      v54 = (*v53 - **v53);
      if (*v54 >= 0x1Du && (v55 = v54[14]) != 0)
      {
        if (*(v53 + 38))
        {
          v56 = -*(*v53 + v55);
        }

        else
        {
          v56 = *(*v53 + v55);
        }

        v58 = v153.__r_.__value_.__r.__words[2];
        size = v153.__r_.__value_.__l.__size_;
        if (v153.__r_.__value_.__l.__size_ < v153.__r_.__value_.__r.__words[2])
        {
LABEL_157:
          *size = *v36;
          *(size + 16) = v56;
          v153.__r_.__value_.__l.__size_ = size + 24;
          goto LABEL_71;
        }
      }

      else
      {
        v56 = 0;
        v58 = v153.__r_.__value_.__r.__words[2];
        size = v153.__r_.__value_.__l.__size_;
        if (v153.__r_.__value_.__l.__size_ < v153.__r_.__value_.__r.__words[2])
        {
          goto LABEL_157;
        }
      }

      v59 = v153.__r_.__value_.__r.__words[0];
      v60 = 0xAAAAAAAAAAAAAAABLL * ((size - v153.__r_.__value_.__r.__words[0]) >> 3);
      v61 = v60 + 1;
      if (v60 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      v62 = 0xAAAAAAAAAAAAAAABLL * ((v58 - v153.__r_.__value_.__r.__words[0]) >> 3);
      if (2 * v62 > v61)
      {
        v61 = 2 * v62;
      }

      if (v62 >= 0x555555555555555)
      {
        v63 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v63 = v61;
      }

      if (v63)
      {
        if (v63 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v91 = 8 * ((size - v153.__r_.__value_.__r.__words[0]) >> 3);
      *v91 = *v36;
      *(v91 + 16) = v56;
      v92 = (24 * v60 - (size - v59));
      memcpy(v92, v59, size - v59);
      v153.__r_.__value_.__r.__words[0] = v92;
      *&v153.__r_.__value_.__r.__words[1] = 24 * v60 + 24;
      if (v59)
      {
        operator delete(v59);
      }

      v153.__r_.__value_.__l.__size_ = 24 * v60 + 24;
LABEL_71:
      v36 += 160;
      v35 = v144;
    }

    v94 = sub_4E4B18(v31, 0, 0);
    LODWORD(v156) = v94;
    v95 = sub_4C4BD8(v31);
    v159 = v95;
    v96 = v154;
    v97 = v155;
    if (v154 != v155)
    {
      v98 = __p;
      v99 = v151;
      do
      {
        v108 = v98;
        if (v98 != v99)
        {
          v109 = **(v96 + 1) + 464 * *(v96 + 2);
          v112 = *(v109 + 48);
          v110 = v109 + 48;
          v111 = v112;
          v113 = *(v110 + 23);
          if (v113 >= 0)
          {
            v114 = *(v110 + 23);
          }

          else
          {
            v114 = *(v110 + 8);
          }

          if (v113 >= 0)
          {
            v115 = v110;
          }

          else
          {
            v115 = v111;
          }

          v108 = v98;
          while (1)
          {
            v116 = *(v108 + 23);
            v117 = v116;
            if (v116 < 0)
            {
              v116 = v108[1];
            }

            if (v116 == v114)
            {
              v118 = v117 >= 0 ? v108 : *v108;
              if (!memcmp(v118, v115, v114))
              {
                break;
              }
            }

            v108 += 3;
            if (v108 == v99)
            {
              goto LABEL_177;
            }
          }
        }

        if (v108 == v99)
        {
LABEL_177:
          v100 = *v96 + 64;
          if (v94 >= *v100)
          {
            v101 = (*v96 + 64);
          }

          else
          {
            v101 = &v156;
          }

          if (v94 == 0x7FFFFFFF)
          {
            v101 = (*v96 + 64);
          }

          if (*v100 == 0x7FFFFFFF)
          {
            v102 = &v156;
          }

          else
          {
            v102 = v101;
          }

          *v100 = *v102;
          v105 = *(v100 + 8);
          v103 = (v100 + 8);
          v104 = v105;
          if (v95 >= v105)
          {
            v106 = v103;
          }

          else
          {
            v106 = &v159;
          }

          if (v95 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v106 = v103;
          }

          if (v104 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v107 = &v159;
          }

          else
          {
            v107 = v106;
          }

          *v103 = *v107;
        }

        v96 += 7;
      }

      while (v96 != v97);
    }

    v29 = v141;
    v28 = v142;
LABEL_63:
    v28 += 5;
    if (v28 != v29)
    {
      continue;
    }

    break;
  }

LABEL_213:
  sub_112F8B4(&v153);
  v119 = sub_74700();
  sub_734A0(v119, &v149);
  v120 = *sub_73F54(v119);
  v121 = *(sub_73F54(v119) + 8);
  sub_19594F8(&v159);
  if (v120 != v121)
  {
    sub_3E8444("", v120, "", &v156);
    if ((v158 & 0x80u) == 0)
    {
      v122 = &v156;
    }

    else
    {
      v122 = v156;
    }

    if ((v158 & 0x80u) == 0)
    {
      v123 = v158;
    }

    else
    {
      v123 = v157;
    }

    sub_4A5C(&v159, v122, v123);
    if (v158 < 0)
    {
      operator delete(v156);
      v124 = v120 + 24;
      if (v124 == v121)
      {
        goto LABEL_234;
      }
    }

    else
    {
      v124 = v120 + 24;
      if (v124 == v121)
      {
        goto LABEL_234;
      }
    }

    do
    {
      sub_4A5C(&v159, ",", 1);
      sub_3E8444("", v124, "", &v156);
      if ((v158 & 0x80u) == 0)
      {
        v125 = &v156;
      }

      else
      {
        v125 = v156;
      }

      if ((v158 & 0x80u) == 0)
      {
        v126 = v158;
      }

      else
      {
        v126 = v157;
      }

      sub_4A5C(&v159, v125, v126);
      if (v158 < 0)
      {
        operator delete(v156);
      }

      v124 += 24;
    }

    while (v124 != v121);
  }

LABEL_234:
  if ((v169 & 0x10) != 0)
  {
    v128 = v168;
    if (v168 < v165)
    {
      v168 = v165;
      v128 = v165;
    }

    v129 = v164;
    v127 = v128 - v164;
    if ((v128 - v164) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_276;
    }
  }

  else
  {
    if ((v169 & 8) == 0)
    {
      v127 = 0;
      v148 = 0;
      goto LABEL_245;
    }

    v129 = v162[0];
    v127 = v163 - v162[0];
    if ((v163 - v162[0]) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_276:
      sub_3244();
    }
  }

  if (v127 >= 0x17)
  {
    operator new();
  }

  v148 = v127;
  if (v127)
  {
    memmove(__dst, v129, v127);
  }

LABEL_245:
  *(__dst + v127) = 0;
  if (v167 < 0)
  {
    operator delete(v166);
  }

  std::locale::~locale(&v161);
  std::ostream::~ostream();
  std::ios::~ios();
  v131 = v153.__r_.__value_.__l.__size_;
  for (i = v153.__r_.__value_.__r.__words[0]; i != v131; i += 24)
  {
    sub_74224(v119);
    LODWORD(v156) = sub_7421C(v119);
    sub_7230C(&v156, &v159);
    if (SHIBYTE(v161.__locale_) < 0)
    {
      operator delete(v159);
    }
  }

  if (v148 < 0)
  {
    operator delete(__dst[0]);
    if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_264;
    }

LABEL_254:
    v132 = __p;
    if (__p)
    {
      goto LABEL_255;
    }

LABEL_265:
    v134 = v153.__r_.__value_.__r.__words[0];
    if (v153.__r_.__value_.__r.__words[0])
    {
      goto LABEL_266;
    }
  }

  else
  {
    if ((SHIBYTE(v149.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_254;
    }

LABEL_264:
    operator delete(v149.__r_.__value_.__l.__data_);
    v132 = __p;
    if (!__p)
    {
      goto LABEL_265;
    }

LABEL_255:
    v133 = v151;
    if (v151 == v132)
    {
      v151 = v132;
      operator delete(v132);
      v134 = v153.__r_.__value_.__r.__words[0];
      if (!v153.__r_.__value_.__r.__words[0])
      {
        goto LABEL_267;
      }

LABEL_266:
      v153.__r_.__value_.__l.__size_ = v134;
      operator delete(v134);
      goto LABEL_267;
    }

    do
    {
      v135 = *(v133 - 1);
      v133 -= 3;
      if (v135 < 0)
      {
        operator delete(*v133);
      }
    }

    while (v133 != v132);
    v151 = v132;
    operator delete(__p);
    v134 = v153.__r_.__value_.__r.__words[0];
    if (v153.__r_.__value_.__r.__words[0])
    {
      goto LABEL_266;
    }
  }

LABEL_267:
  v136 = v154;
  if (v154)
  {
    for (j = v155; j != v136; j -= 7)
    {
      v138 = *(j - 3);
      if (v138)
      {
        *(j - 2) = v138;
        operator delete(v138);
      }
    }

    operator delete(v136);
  }
}

void sub_112EC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a50);
  if (a28 < 0)
  {
    operator delete(a23);
    sub_1A104(&a29);
    v50 = a35;
    if (!a35)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1A104(&a29);
    v50 = a35;
    if (!a35)
    {
LABEL_9:
      sub_49A93C(&a41);
      _Unwind_Resume(a1);
    }
  }

  a36 = v50;
  operator delete(v50);
  goto LABEL_9;
}

void sub_112EF5C(uint64_t a1, int **a2)
{
  if (*(a1 + 161) == 1)
  {
    v22 = v2;
    v23 = v3;
    v5 = *a2;
    v6 = a2[1];
    if (*a2 != v6)
    {
LABEL_3:
      while (*(v5 + 1) == *(v5 + 2))
      {
        v5 += 10;
        if (v5 == v6)
        {
LABEL_11:
          v5 = v6;
          goto LABEL_12;
        }
      }

      v7 = v6 - 10;
      while (v7 != v5)
      {
        v8 = *(v7 + 1);
        v9 = *(v7 + 2);
        v7 -= 10;
        if (v8 == v9)
        {
          v6 = v7 + 10;
          v10 = a2;
          sub_1135544(v5, (v7 + 10));
          a2 = v10;
          v11 = v7 == v5;
          v5 += 10;
          if (v11)
          {
            goto LABEL_11;
          }

          goto LABEL_3;
        }
      }
    }

LABEL_12:
    v12 = v5 - *a2;
    if (v5 == *a2)
    {
      *(a1 + 192) = 1;
    }

    else
    {
      v20[0] = *a2;
      v20[1] = v5;
      *(a1 + 196) = -858993459 * (v12 >> 3);
      for (i = a2[1]; v5 != i; v5 += 10)
      {
        sub_112FA38(a1, v5, v20);
        if (*(a1 + 160) == 1)
        {
          v14 = *(v5 + 1);
          for (j = *(v5 + 2); v14 != j; *(v18 + 10) = v19)
          {
            v16 = *v14;
            v17 = *(v14 + 8);
            v14 += 160;
            v21 = *v16 + 464 * v17 + 48;
            v18 = sub_3E62E0((a1 + 5272), v21);
            v19 = *(*v5 + 808);
            if (v19 >= *(v18 + 10))
            {
              v19 = *(v18 + 10);
            }
          }
        }
      }
    }
  }
}

void **sub_112F0E8(void **a1)
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
        v5 = v3 - 40;
        v7 = (v3 - 32);
        sub_11353E8(&v7);
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

void sub_112F160(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  if ((*(a1 + 24) & 1) != 0 && *(a3 + 30) == 1 && *(a3 + 264) != -1 && sub_4C49E0(*a3))
  {
    sub_11317C4(a3, *(a1 + 32), *(a1 + 40), a1 + 208, *(a1 + 904), &v63);
    v8 = v63;
    v9 = v64;
    *(a1 + 188) = -1227133513 * ((v64 - v63) >> 3);
    if (v9 == v8)
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      if (v8)
      {

        operator delete(v8);
      }
    }

    else
    {
      *v60 = 0u;
      *v61 = 0u;
      v62 = 1065353216;
      v58 = 0u;
      v59 = 0u;
      *__p = 0u;
      v10 = a2;
      v11 = *a2;
      v12 = v10[1];
      if (v11 == v12)
      {
        v42 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
      }

      else
      {
        do
        {
          v13 = *(sub_4C4AE4(*(*v11 + 8)) + 32);
          v54 = (v13 >> 16) & 0xFFFF0000 | (v13 << 32) | (2 * ((v13 & 0xFF000000000000) == 0));
          *&v53 = 0;
          sub_1133450(__p, &v54, &v53);
          v14 = *(&v59 + 1);
          sub_F84E90(v60, (*(__p[1] + (((*(&v59 + 1) + v59 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (BYTE8(v59) + v59 - 1)));
          v11 += 40;
        }

        while (v11 != v12);
        v54 = 0;
        v55 = 0;
        v56 = 0;
        if (v14)
        {
          do
          {
            v15 = v58;
            v16 = v14 + v59;
            --v14;
            if (v58 == __p[1])
            {
              v17 = 0;
            }

            else
            {
              v17 = 32 * (v58 - __p[1]) - 1;
            }

            v53 = *(*(__p[1] + (((v59 + v14) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v59 + v14));
            *(&v59 + 1) = v14;
            if (v17 - v16 - 511 <= 0xFFFFFFFFFFFFFDFFLL)
            {
              operator delete(*(v58 - 8));
              *&v58 = v15 - 8;
            }

            sub_F84E90(v60, &v53);
            v18 = sub_2B4EDC(*(a1 + 904), DWORD1(v53) & 0xFFFF0000FFFFFFFFLL | (WORD1(v53) << 32), (v53 & 2) == 0);
            v19 = 0;
            v20 = v8;
            do
            {
              while (1)
              {
                v21 = v20[4];
                v22 = v20[5] - v21;
                if (!v22)
                {
                  break;
                }

                v23 = v22 >> 3;
                v24 = v21 + 4;
                v25 = v23;
                while (*(v24 - 4) != v18)
                {
                  v24 += 8;
                  if (!--v25)
                  {
                    goto LABEL_19;
                  }
                }

                v26 = 1.0;
                if (*(*v20 + 32) == *(*v20 + 40))
                {
                  v26 = v25 / v23;
                }

                if (*(v20 + 3) >= v26)
                {
                  v26 = *(v20 + 3);
                }

                *(v20 + 3) = v26;
                v20 += 7;
                v19 = 1;
                if (v20 == v9)
                {
                  goto LABEL_12;
                }
              }

LABEL_19:
              v20 += 7;
            }

            while (v20 != v9);
            if ((v19 & 1) == 0 && *(&v53 + 1) < *(a1 + 48))
            {
              sub_F90350(a1 + 912, v53, 1, &v54, 0);
              v27 = v54;
              v28 = v55;
              if (v54 != v55)
              {
                do
                {
                  v29 = ((*(v27 + 32) >> 16) & 0xFFFF0000 | (*(v27 + 32) << 32) | (2 * ((*(v27 + 32) & 0xFF000000000000) == 0))) + 4 * *(v27 + 80);
                  v30 = v29 & 0xFFFFFFFFFFFFFFFELL | *(v27 + 88) & 1;
                  if (v60[1])
                  {
                    v31 = (0x2127599BF4325C37 * (v30 ^ (v29 >> 23))) ^ ((0x2127599BF4325C37 * (v30 ^ (v29 >> 23))) >> 47);
                    v32 = vcnt_s8(v60[1]);
                    v32.i16[0] = vaddlv_u8(v32);
                    if (v32.u32[0] > 1uLL)
                    {
                      v33 = v31;
                      if (v31 >= v60[1])
                      {
                        v33 = v31 % v60[1];
                      }
                    }

                    else
                    {
                      v33 = v31 & (v60[1] - 1);
                    }

                    v34 = *(v60[0] + v33);
                    if (v34)
                    {
                      v35 = *v34;
                      if (v35)
                      {
                        if (v32.u32[0] < 2uLL)
                        {
                          while (1)
                          {
                            v37 = v35[1];
                            if (v31 == v37)
                            {
                              if (v35[2] == v30)
                              {
                                goto LABEL_58;
                              }
                            }

                            else if ((v37 & (v60[1] - 1)) != v33)
                            {
                              goto LABEL_53;
                            }

                            v35 = *v35;
                            if (!v35)
                            {
                              goto LABEL_53;
                            }
                          }
                        }

                        do
                        {
                          v36 = v35[1];
                          if (v31 == v36)
                          {
                            if (v35[2] == v30)
                            {
                              goto LABEL_58;
                            }
                          }

                          else
                          {
                            if (v36 >= v60[1])
                            {
                              v36 %= v60[1];
                            }

                            if (v36 != v33)
                            {
                              break;
                            }
                          }

                          v35 = *v35;
                        }

                        while (v35);
                      }
                    }
                  }

LABEL_53:
                  v52 = v30;
                  v38 = *(v27 + 40);
                  v39 = (v38 - *v38);
                  if (*v39 >= 9u && (v40 = v39[4]) != 0)
                  {
                    v41 = *(v38 + v40);
                  }

                  else
                  {
                    v41 = 0;
                  }

                  v51 = *(&v53 + 1) + v41;
                  sub_1133450(__p, &v52, &v51);
LABEL_58:
                  v27 += 96;
                }

                while (v27 != v28);
                v14 = *(&v59 + 1);
              }
            }

LABEL_12:
            ;
          }

          while (v14);
          v42 = v54;
        }

        else
        {
          v42 = 0;
        }
      }

      *a4 = v8;
      a4[1] = v9;
      a4[2] = v65;
      v64 = 0;
      v65 = 0;
      v63 = 0;
      if (v42)
      {
        v55 = v42;
        operator delete(v42);
      }

      v43 = __p[1];
      v44 = v58;
      *(&v59 + 1) = 0;
      v45 = v58 - __p[1];
      if (v58 - __p[1] >= 0x11)
      {
        do
        {
          v46 = *v43++;
          operator delete(v46);
          v45 -= 8;
        }

        while (v45 > 0x10);
      }

      while (v43 != v44)
      {
        v47 = *v43++;
        operator delete(v47);
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }

      v48 = v61[0];
      if (v61[0])
      {
        do
        {
          v49 = *v48;
          operator delete(v48);
          v48 = v49;
        }

        while (v49);
      }

      v50 = v60[0];
      v60[0] = 0;
      if (v50)
      {
        operator delete(v50);
      }
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void sub_112F6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_42728(&a17);
  sub_11BD8(&a23);
  sub_49A93C((v23 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_112F704(uint64_t a1, uint64_t a2)
{
  result = sub_38F6F0(a2);
  if (result)
  {
    if (*(a2 + 352) == 1)
    {
      if (*(a1 + 88) != 1)
      {
        goto LABEL_9;
      }

      v6 = *(a2 + 448);
      v7 = 0.0;
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = *(a2 + 336);
        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v8)
          {
            HIDWORD(v5) = 1079574528;
            v7 = v6 / v8 * 100.0;
          }
        }
      }

      LODWORD(v5) = *(a1 + 92);
      if (v7 < v5)
      {
LABEL_9:
        v9 = *(a1 + 8);
        if (v9 >= *(a1 + 80))
        {
          v9 = *(a1 + 80);
        }

        if (v9 < 0.0)
        {
          goto LABEL_12;
        }

LABEL_24:
        if (v9 < 4.50359963e15)
        {
          v10 = (v9 + v9) + 1;
          goto LABEL_26;
        }

        return v9;
      }
    }

    else if (*(a1 + 96) == 1)
    {
      v11 = *(a2 + 388);
      v12 = *(a1 + 104);
      v13 = pow(*(a2 + 356), *(a1 + 112)) * *(a1 + 120);
      if (*(a1 + 128) < v13)
      {
        v13 = *(a1 + 128);
      }

      v9 = v12 + v13;
      if (v11 > 0x2A || ((1 << v11) & 0x50426810105) == 0)
      {
        v9 = v9 * *(a1 + 152);
        if (*(a1 + 8) < v9)
        {
          v9 = *(a1 + 8);
        }

        if (v9 >= 0.0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (*(a1 + 8) < v9)
        {
          v9 = *(a1 + 8);
        }

        if (v9 >= 0.0)
        {
          goto LABEL_24;
        }
      }

LABEL_12:
      if (v9 > -4.50359963e15)
      {
        v10 = (v9 + v9) - 1 + (((v9 + v9) - 1) >> 63);
LABEL_26:
        v9 = (v10 >> 1);
        return v9;
      }

      return v9;
    }

    return 0;
  }

  return result;
}

void sub_112F8B4(unint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v3 - v2));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_11360F8(v2, v3, &v13, v5, 1);
  v7 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
LABEL_22:
    if (v7 != v6)
    {
      a1[1] = v7;
    }

    return;
  }

  if (v7 + 3 != v6)
  {
    v8 = 0;
    v9 = *v7;
    while (1)
    {
      v10 = v9;
      v9 = v7[v8 + 3];
      if (v10 == v9 && v7[v8 + 1] == v7[v8 + 4])
      {
        v11 = &v7[v8];
        if (v7[v8 + 2] == v7[v8 + 5])
        {
          break;
        }
      }

      v8 += 3;
      if (&v7[v8 + 3] == v6)
      {
        return;
      }
    }

    if (v11 != v6)
    {
      v12 = &v7[v8 + 6];
      if (v12 != v6)
      {
        do
        {
          if (*v11 != *v12 || v11[1] != *(v12 + 8) || v11[2] != *(v12 + 16))
          {
            *(v11 + 3) = *v12;
            v11[5] = *(v12 + 16);
            v11 += 3;
          }

          v12 += 24;
        }

        while (v12 != v6);
        v6 = a1[1];
      }

      v7 = v11 + 3;
      goto LABEL_22;
    }
  }
}

void sub_112FA38(uint64_t a1, void *a2, int **a3)
{
  v4 = a2[1];
  v138 = *(*a2 + 8);
  v5 = *(v4 + 32);
  *v223 = *(v4 + 16);
  *&v223[16] = v5;
  v224 = 0;
  v225 = 0;
  v226 = 0;
  v7 = *(v4 + 40);
  v6 = *(v4 + 48);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v228 = 0;
  v229 = 0;
  v227 = 0;
  v9 = *(v4 + 64);
  v8 = *(v4 + 72);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_4C35F8(v138, v193);
  v10 = __p == v197;
  if (__p)
  {
    v197 = __p;
    operator delete(__p);
  }

  if (*&v193[24])
  {
    v194 = *&v193[24];
    operator delete(*&v193[24]);
  }

  if (v10)
  {
    goto LABEL_272;
  }

  sub_4C35F8(v138, v193);
  *v154 = *v193;
  v155 = *&v193[16];
  if (v194 != *&v193[24])
  {
    if (((v194 - *&v193[24]) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v197 != __p)
  {
    if (((v197 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v215 = *v154;
  v216 = v155;
  v217 = 0;
  v218 = 0;
  v219 = 0;
  v220 = 0;
  v221 = 0;
  v222 = 0;
  *v154 = *v223;
  v155 = *&v223[16];
  v207 = *v223;
  v208 = *&v223[16];
  v209 = 0;
  v210 = 0;
  v211 = 0;
  v212 = 0;
  v213 = 0;
  v214 = 0;
  v11 = a1;
  if (__p)
  {
    v197 = __p;
    operator delete(__p);
  }

  if (*&v193[24])
  {
    v194 = *&v193[24];
    operator delete(*&v193[24]);
  }

  sub_1196B34((a1 + 5216));
  sub_1197840((a1 + 5216), v138);
  v205 = 0;
  v204 = 0;
  v206 = 0;
  v13 = *a3;
  v12 = a3[1];
  if (*a3 == v12)
  {
LABEL_206:
    *(v11 + 196) = 0;
    goto LABEL_244;
  }

  v140 = a3[1];
  while (2)
  {
    sub_119916C((v11 + 5216), *(*v13 + 8), 0, v154);
    v15 = v154[1] + 192;
    do
    {
      if (v15 - 192 == v154[0])
      {
        if (!sub_7E7E4(1u))
        {
          goto LABEL_93;
        }

        sub_19594F8(v193);
        v18 = sub_4A5C(v193, "Got a detour that does not avoid the soft-closure incident ", 59);
        v19 = **a2[1] + 464 * *(a2[1] + 8);
        v22 = *(v19 + 48);
        v20 = v19 + 48;
        v21 = v22;
        v23 = *(v20 + 23);
        if (v23 >= 0)
        {
          v24 = v20;
        }

        else
        {
          v24 = v21;
        }

        if (v23 >= 0)
        {
          v25 = *(v20 + 23);
        }

        else
        {
          v25 = *(v20 + 8);
        }

        v26 = sub_4A5C(v18, v24, v25);
        v27 = sub_4A5C(v26, ". Request: ", 11);
        v28 = sub_74700();
        v29 = sub_73F1C(v28);
        v30 = *(v29 + 23);
        if (v30 >= 0)
        {
          v31 = v29;
        }

        else
        {
          v31 = *v29;
        }

        if (v30 >= 0)
        {
          v32 = *(v29 + 23);
        }

        else
        {
          v32 = *(v29 + 8);
        }

        sub_4A5C(v27, v31, v32);
        if ((v201 & 0x10) != 0)
        {
          v33 = v200;
          p_p = &__p;
          if (v200 < v197)
          {
            v200 = v197;
            v33 = v197;
            p_p = &__p;
          }
        }

        else
        {
          if ((v201 & 8) == 0)
          {
            v17 = 0;
            HIBYTE(v147) = 0;
            goto LABEL_88;
          }

          v33 = v195;
          p_p = &v193[24];
        }

        v48 = *p_p;
        v17 = v33 - *p_p;
        if (v17 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v17 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v147) = v33 - *p_p;
        if (v17)
        {
          memmove(&__dst, v48, v17);
        }

        goto LABEL_88;
      }

      v16 = *(v15 - 30);
      v15 -= 384;
    }

    while (v16 > 0);
    if (v227 != v228 && (*(v15 + 6) == *(v15 + 7) || *&v223[8] < *(v15 + 8)))
    {
      if (!sub_7E7E4(1u))
      {
        goto LABEL_93;
      }

      sub_19594F8(v193);
      sub_4A5C(v193, "Closure starts before the computed detour divergence point.", 59);
      if ((v201 & 0x10) != 0)
      {
        v49 = v200;
        v50 = &__p;
        if (v200 < v197)
        {
          v200 = v197;
          v49 = v197;
          v50 = &__p;
        }
      }

      else
      {
        if ((v201 & 8) == 0)
        {
          v17 = 0;
          HIBYTE(v147) = 0;
LABEL_88:
          *(&__dst + v17) = 0;
          sub_7E854(&__dst, 1u);
          if (SHIBYTE(v147) < 0)
          {
            operator delete(__dst);
          }

          *v193 = v145;
          *&v193[*(v145 - 24)] = v144;
          if (SHIBYTE(v199) < 0)
          {
            operator delete(v198);
          }

          std::locale::~locale(&v193[16]);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_93:
          v47 = v154[0];
          if (!v154[0])
          {
            goto LABEL_26;
          }

LABEL_94:
          v14 = v47;
          if (v154[1] != v47)
          {
            v52 = v154[1] - 168;
            do
            {
              v54 = *(v52 + 12);
              if (v54)
              {
                *(v52 + 13) = v54;
                operator delete(v54);
              }

              v55 = *(v52 + 9);
              if (v55)
              {
                *(v52 + 10) = v55;
                operator delete(v55);
              }

              v56 = *(v52 + 3);
              if (v56)
              {
                *(v52 + 4) = v56;
                operator delete(v56);
              }

              v57 = *v52;
              if (*v52)
              {
                *(v52 + 1) = v57;
                operator delete(v57);
              }

              v58 = *(v52 - 12);
              if (v58)
              {
                *(v52 - 11) = v58;
                operator delete(v58);
              }

              v59 = *(v52 - 15);
              if (v59)
              {
                *(v52 - 14) = v59;
                operator delete(v59);
              }

              v60 = *(v52 - 21);
              if (v60)
              {
                *(v52 - 20) = v60;
                operator delete(v60);
              }

              v61 = *(v52 - 24);
              if (v61)
              {
                *(v52 - 23) = v61;
                operator delete(v61);
              }

              v53 = v52 - 216;
              v52 -= 384;
            }

            while (v53 != v47);
            v14 = v154[0];
          }

          v154[1] = v47;
          operator delete(v14);
          goto LABEL_26;
        }

        v49 = v195;
        v50 = &v193[24];
      }

      v51 = *v50;
      v17 = v49 - *v50;
      if (v17 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v17 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v147) = v49 - *v50;
      if (v17)
      {
        memmove(&__dst, v51, v17);
      }

      goto LABEL_88;
    }

    *v193 = *v15;
    *&v193[16] = *(v15 + 2);
    v36 = *(v15 + 3);
    v35 = *(v15 + 4);
    if (v35 != v36)
    {
      if (((v35 - v36) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v38 = *(v15 + 6);
    v37 = *(v15 + 7);
    if (v37 != v38)
    {
      if (((v37 - v38) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v185 = *v193;
    v186 = *&v193[16];
    v187 = 0;
    v188 = 0;
    v189 = 0;
    v190 = 0;
    v191 = 0;
    v192 = 0;
    *v193 = *v223;
    *&v193[16] = *&v223[16];
    v12 = v140;
    if (v225 != v224)
    {
      if (((v225 - v224) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    if (v228 != v227)
    {
      if (((v228 - v227) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v177 = *v193;
    v178 = *&v193[16];
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v184 = 0;
    v11 = a1;
    LODWORD(__dst) = 0;
    v39 = v13 + 8;
    v40 = *v13;
    v41 = v205;
    if (v205 >= v206)
    {
      sub_113576C(&v204, (v40 + 8), v39, v15 + 42, v15 + 18, &__dst, v154);
    }

    else
    {
      v42 = *v39;
      v43 = *(v15 + 42);
      v44 = *(v15 + 18);
      v45 = __dst;
      *v205 = *(v40 + 8);
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      *(v41 + 2) = v44;
      *(v41 + 6) = v45;
      *(v41 + 2) = *v154;
      *(v41 + 6) = v155;
      v154[1] = 0;
      v155 = 0;
      v154[0] = 0;
      v46 = v41 + 56;
    }

    v205 = v46;
    v47 = v154[0];
    if (v154[0])
    {
      goto LABEL_94;
    }

LABEL_26:
    v13 += 10;
    if (v13 != v12)
    {
      continue;
    }

    break;
  }

  v62 = v204;
  if (v204 != v205)
  {
    for (i = v204 + 56; i != v205; i += 56)
    {
      v64 = *(i + 2);
      v65 = *(v62 + 2);
      if (v64 < v65 || v64 == v65 && *(i + 3) > *(v62 + 3))
      {
        v62 = i;
      }
    }
  }

  if (v62 == v205)
  {
    goto LABEL_206;
  }

  v66 = a2[1];
  v137 = a2[2];
  if (v66 != v137)
  {
    v135 = v62;
    v136 = a2 + 4;
    v67 = (v62 + 8);
    v134 = (v62 + 8);
    do
    {
      *v193 = **v66 + 464 * *(v66 + 8) + 48;
      v68 = sub_3E62E0((a1 + 5272), *v193);
      v69 = *(v68 + 22);
      v70 = v67;
      if (v69 != 0x7FFFFFFF)
      {
        v70 = (v68 + 11);
        if (*v67 != 0x7FFFFFFF)
        {
          if (*v67 >= v69)
          {
            v70 = (v68 + 11);
          }

          else
          {
            v70 = v67;
          }
        }
      }

      v143 = v68;
      v71 = *v70;
      *(v68 + 22) = *v70;
      if (*v67 == v71)
      {
        v68[12] = sub_4C4BD8(*v62);
        *(v143 + 26) = *(v62 + 3);
        v143[14] = *(v62 + 2);
      }

      v176 = 0;
      v175 = 0;
      sub_4C35F8(v138, &v170);
      v162 = *(v66 + 16);
      v163 = *(v66 + 32);
      v165 = 0;
      v166 = 0;
      v164 = 0;
      v73 = *(v66 + 40);
      v72 = *(v66 + 48);
      if (v72 != v73)
      {
        if (((v72 - v73) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v168 = 0;
      v169 = 0;
      v167 = 0;
      v75 = *(v66 + 64);
      v74 = *(v66 + 72);
      if (v74 != v75)
      {
        if (((v74 - v75) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      sub_3E8394(&v170, &v162, v193);
      if (v167)
      {
        v168 = v167;
        operator delete(v167);
      }

      if (v164)
      {
        v165 = v164;
        operator delete(v164);
      }

      if (v173)
      {
        v174 = v173;
        operator delete(v173);
      }

      if (v171)
      {
        v172 = v171;
        operator delete(v171);
      }

      *v154 = *v193;
      v155 = *&v193[16];
      v157 = 0;
      v158 = 0;
      v156 = 0;
      if (v194 != *&v193[24])
      {
        if (((v194 - *&v193[24]) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v159 = 0;
      v160 = 0;
      v161 = 0;
      if (v197 != __p)
      {
        if (((v197 - __p) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      __dst = v198;
      v147 = v199;
      v149 = 0;
      v150 = 0;
      v148 = 0;
      if (v201 != v200)
      {
        if (((v201 - v200) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v151 = 0;
      v152 = 0;
      v153 = 0;
      v139 = v66;
      if (v203 != v202)
      {
        if (((v203 - v202) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v176 = 0;
      v175 = 0;
      if (v202)
      {
        v203 = v202;
        operator delete(v202);
      }

      if (v200)
      {
        v201 = v200;
        operator delete(v200);
      }

      if (__p)
      {
        v197 = __p;
        operator delete(__p);
      }

      if (*&v193[24])
      {
        v194 = *&v193[24];
        operator delete(*&v193[24]);
      }

      v76 = (v143 + 15);
      v77 = *(v143 + 30);
      if (v77 == 0x7FFFFFFF)
      {
        v76 = &v176;
      }

      else if (v176 != 0x7FFFFFFF && v176 < v77)
      {
        v76 = &v176;
      }

      v78 = *v76;
      v79 = v143 + 16;
      v80 = v143[16];
      *(v143 + 30) = v78;
      if (v80 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v79 = &v175;
      }

      else if (v175 != 0x7FFFFFFFFFFFFFFFLL && v175 < v80)
      {
        v79 = &v175;
      }

      v81 = *(v143 + 34);
      v143[16] = *v79;
      v82 = a2 + 4;
      if (v81 != 0x7FFFFFFF)
      {
        v82 = v143 + 17;
        if (*v136 != 0x7FFFFFFF)
        {
          if (*v136 >= v81)
          {
            v82 = v143 + 17;
          }

          else
          {
            v82 = a2 + 4;
          }
        }
      }

      *(v143 + 34) = *v82;
      v83 = sub_4C4BD8(*(*a2 + 8));
      *v193 = v83;
      v84 = v143[18];
      if (v84 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v85 = v193;
      }

      else
      {
        v85 = v143 + 18;
        if (v83 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v83 >= v84)
          {
            v85 = v143 + 18;
          }

          else
          {
            v85 = v193;
          }
        }
      }

      v143[18] = *v85;
      v86 = v204;
      v87 = v205;
      if (v204 != v205)
      {
        v88 = v175;
        v89 = v143 + 21;
        do
        {
          v90 = *(v86 + 4);
          v91 = *(v86 + 5);
          while (v91 != v90)
          {
            v92 = *(v91 - 48);
            v91 -= 384;
            if (v92 <= v88)
            {
              goto LABEL_196;
            }
          }

          v92 = *(v90 - 48);
LABEL_196:
          v93 = v88 - v92;
          *v193 = v88 - v92;
          if (v88 - v92 >= *v89)
          {
            v94 = (v143 + 21);
          }

          else
          {
            v94 = v193;
          }

          if (v93 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v94 = (v143 + 21);
          }

          if (*v89 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v95 = v193;
          }

          else
          {
            v95 = v94;
          }

          v96 = *v95;
          *v89 = v96;
          if (v96 == v93)
          {
            *(v143 + 38) = *(v86 + 2);
            v143[20] = sub_4C4BD8(*v86);
          }

          v86 += 56;
        }

        while (v86 != v87);
      }

      v66 += 160;
      v67 = v134;
      v62 = v135;
    }

    while (v139 + 160 != v137);
  }

  if (*(a1 + 160))
  {
    v97 = *a2;
    if (*(a1 + 176) != 1 || *(v97 + 808) < *(a1 + 8))
    {
      if (*(v62 + 3) >= *(a1 + 164))
      {
        *(v97 + 808) = 0;
      }

      else
      {
        if (*(v62 + 2) <= *(a2 + 8))
        {
          v109 = *(a1 + 8);
          goto LABEL_243;
        }

        v98 = v204;
        v99 = v205;
        if (v204 != v205)
        {
          v100 = v205;
LABEL_214:
          v101 = *(v62 + 6);
          while (*(v98 + 6) >= v101)
          {
            v98 += 56;
            if (v98 == v100)
            {
              v98 = v100;
              goto LABEL_225;
            }
          }

          v102 = v100;
          while (1)
          {
            v100 = v102 - 56;
            if (v102 - 56 == v98)
            {
              break;
            }

            v103 = *(v102 - 8);
            v102 = (v102 - 56);
            if (v103 >= v101)
            {
              v104 = *v98;
              *&v193[12] = *(v98 + 12);
              *v193 = v104;
              v105 = *(v98 + 6);
              v106 = *(v98 + 2);
              *(v98 + 4) = 0;
              *(v98 + 5) = 0;
              *(v98 + 6) = 0;
              v107 = *v100;
              *(v98 + 12) = *(v100 + 12);
              *v98 = v107;
              *(v98 + 2) = *(v100 + 2);
              *(v98 + 6) = *(v100 + 6);
              v108 = *v193;
              *(v100 + 12) = *&v193[12];
              *v100 = v108;
              *(v100 + 2) = v106;
              *(v100 + 6) = v105;
              v98 += 56;
              if (v100 != v98)
              {
                goto LABEL_214;
              }

              break;
            }
          }
        }

LABEL_225:
        if (v98 != v99)
        {
          for (j = v98 + 56; j != v99; j += 56)
          {
            v111 = *(j + 2);
            v112 = *(v98 + 2);
            if (v111 < v112 || v111 == v112 && *(j + 3) > *(v98 + 3))
            {
              v98 = j;
            }
          }
        }

        if (v98 == v99)
        {
          if (*(v62 + 6))
          {
            *(a1 + 200) = 1;
          }
        }

        else
        {
          v113 = *(**a2[1] + 464 * *(a2[1] + 8) + 356);
          v109 = *(a1 + 8);
          if (v109 < v113)
          {
            v113 = *(a1 + 8);
          }

          v114 = *(v97 + 808);
          if (v114 < 1.0)
          {
            v114 = 1.0;
          }

          v115 = v113 / v114;
          v116 = *(v98 + 3);
          if (*(v98 + 2) - *(v62 + 2) <= 1)
          {
            v117 = 1;
          }

          else
          {
            v117 = *(v98 + 2) - *(v62 + 2);
          }

          if (v116 / v117 >= *(a1 + 168) / v115)
          {
            *(v97 + 808) = 0;
            *(a1 + 201) = 1;
          }

          else
          {
LABEL_243:
            *(v97 + 808) = v109;
          }
        }
      }
    }
  }

LABEL_244:
  v118 = v204;
  if (v204)
  {
    v119 = v205;
    v120 = v204;
    if (v205 != v204)
    {
      do
      {
        v122 = *(v119 - 3);
        if (v122)
        {
          v123 = *(v119 - 2);
          v121 = *(v119 - 3);
          if (v123 != v122)
          {
            v124 = v123 - 168;
            do
            {
              v126 = *(v124 + 96);
              if (v126)
              {
                *(v124 + 104) = v126;
                operator delete(v126);
              }

              v127 = *(v124 + 72);
              if (v127)
              {
                *(v124 + 80) = v127;
                operator delete(v127);
              }

              v128 = *(v124 + 24);
              if (v128)
              {
                *(v124 + 32) = v128;
                operator delete(v128);
              }

              v129 = *v124;
              if (*v124)
              {
                *(v124 + 8) = v129;
                operator delete(v129);
              }

              v130 = *(v124 - 96);
              if (v130)
              {
                *(v124 - 88) = v130;
                operator delete(v130);
              }

              v131 = *(v124 - 120);
              if (v131)
              {
                *(v124 - 112) = v131;
                operator delete(v131);
              }

              v132 = *(v124 - 168);
              if (v132)
              {
                *(v124 - 160) = v132;
                operator delete(v132);
              }

              v133 = *(v124 - 192);
              if (v133)
              {
                *(v124 - 184) = v133;
                operator delete(v133);
              }

              v125 = v124 - 216;
              v124 -= 384;
            }

            while (v125 != v122);
            v121 = *(v119 - 3);
          }

          *(v119 - 2) = v122;
          operator delete(v121);
        }

        v119 -= 56;
      }

      while (v119 != v118);
      v120 = v204;
    }

    v205 = v118;
    operator delete(v120);
  }

LABEL_272:
  if (v227)
  {
    operator delete(v227);
  }

  if (v224)
  {
    operator delete(v224);
  }
}

void sub_113140C(_Unwind_Exception *a1)
{
  sub_3DB674(&STACK[0x380]);
  sub_3DB674((v1 - 256));
  sub_3DB674(&STACK[0x260]);
  sub_3DB674((v1 - 176));
  _Unwind_Resume(a1);
}

void sub_11316F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_3DB674(&a25);
  sub_3DB674(&a35);
  sub_3DB6B8(&STACK[0x260]);
  sub_1135C08(&STACK[0x368]);
  sub_3DB674((v35 - 176));
  _Unwind_Resume(a1);
}

BOOL sub_1131728(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  v3 = sub_112F704(a1, a2);
  v4 = *(a1 + 8);
  if (v4 >= 0.0)
  {
    if (v4 < 4.50359963e15)
    {
      v5 = (v4 + v4) + 1;
      goto LABEL_8;
    }
  }

  else if (v4 > -4.50359963e15)
  {
    v5 = (v4 + v4) - 1 + (((v4 + v4) - 1) >> 63);
LABEL_8:
    v4 = (v5 >> 1);
  }

  return v3 >= v4;
}

void sub_11317C4(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  if (sub_4C49D0(*a1))
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    return;
  }

  v229 = 0;
  v230 = 0;
  v231 = 0;
  v9 = a1[34];
  v156 = a1[35];
  if (v9 == v156)
  {
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    return;
  }

  v160 = a1;
  v144 = a6;
  do
  {
    sub_1134824(&v229, 0x6DB6DB6DB6DB6DB7 * ((v230 - v229) >> 3) - 0x3333333333333333 * ((v9[1] - *v9) >> 4));
    v11 = *v9;
    v10 = v9[1];
    if (*v9 != v10)
    {
      v12 = v230;
      do
      {
        while (1)
        {
          v162 = 0uLL;
          v163.__locale_ = 0;
          if (v12 >= v231)
          {
            break;
          }

          *v12 = v11;
          locale = v163.__locale_;
          *(v12 + 8) = v162;
          *(v12 + 24) = locale;
          *(v12 + 32) = 0;
          *(v12 + 40) = 0;
          *(v12 + 48) = 0;
          v12 += 56;
          v230 = v12;
          v11 += 80;
          if (v11 == v10)
          {
            goto LABEL_5;
          }
        }

        v14 = v229;
        v15 = v12 - v229;
        v16 = 0x6DB6DB6DB6DB6DB7 * ((v12 - v229) >> 3);
        v17 = v16 + 1;
        if ((v16 + 1) > 0x492492492492492)
        {
          sub_1794();
        }

        if (0xDB6DB6DB6DB6DB6ELL * ((v231 - v229) >> 3) > v17)
        {
          v17 = 0xDB6DB6DB6DB6DB6ELL * ((v231 - v229) >> 3);
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((v231 - v229) >> 3)) >= 0x249249249249249)
        {
          v18 = 0x492492492492492;
        }

        else
        {
          v18 = v17;
        }

        if (v18)
        {
          if (v18 <= 0x492492492492492)
          {
            operator new();
          }

          sub_1808();
        }

        v19 = 8 * ((v12 - v229) >> 3);
        *v19 = v11;
        *(v19 + 8) = 0u;
        v20 = (56 * v16 - v15);
        *(v19 + 24) = 0u;
        *(v19 + 40) = 0u;
        if (v14 != v12)
        {
          v21 = v14;
          v22 = v20;
          do
          {
            v23 = *(v21 + 1);
            *v22 = *v21;
            *(v22 + 1) = v23;
            v22[5] = 0;
            v22[6] = 0;
            *(v22 + 2) = *(v21 + 2);
            v22[6] = v21[6];
            v21[4] = 0;
            v21[5] = 0;
            v21[6] = 0;
            v21 += 7;
            v22 += 7;
          }

          while (v21 != v12);
          do
          {
            v24 = v14[4];
            if (v24)
            {
              v14[5] = v24;
              operator delete(v24);
            }

            v14 += 7;
          }

          while (v14 != v12);
          v14 = v229;
        }

        v12 = v19 + 56;
        v229 = v20;
        v230 = v19 + 56;
        v231 = 0;
        if (v14)
        {
          operator delete(v14);
        }

        v230 = v19 + 56;
        v11 += 80;
      }

      while (v11 != v10);
    }

LABEL_5:
    v9 += 9;
  }

  while (v9 != v156);
  v25 = v229;
  if (v229 == v230)
  {
    *v144 = 0;
    v144[1] = 0;
    v144[2] = 0;
    if (!v25)
    {
      return;
    }

    goto LABEL_373;
  }

  v26 = sub_4C35B0(*v160);
  v226 = 0;
  v227 = 0;
  v228 = 0;
  sub_4C3938(*v160, &v162);
  v145 = v26 - 1;
  do
  {
    sub_4C3A74(*v160, __dst);
    v27 = sub_1134970(&v162, __dst);
    if (__p)
    {
      *&v225 = __p;
      operator delete(__p);
    }

    if (v222)
    {
      *&v223 = v222;
      operator delete(v222);
    }

    if (v218)
    {
      *(&v218 + 1) = v218;
      operator delete(v218);
    }

    if (v216)
    {
      *(&v216 + 1) = v216;
      operator delete(v216);
    }

    if ((v27 & 1) == 0)
    {
      break;
    }

    v28 = sub_1134CB4(&v162);
    sub_43ECB4(a4, v28, &v212);
    v29 = v212;
    if (v212 == v213)
    {
      sub_1135670(&v169);
      v30 = 5;
      v31 = v212;
      if (!v212)
      {
        continue;
      }

      goto LABEL_244;
    }

    while (1)
    {
      sub_4C3A74(*v160, __dst);
      if (sub_1134970(&v162, __dst))
      {
        v32 = sub_1134CB4(&v162);
        sub_43ECB4(a4, v32, v187);
        v33 = v187[0] != v187[1];
        if (v187[0])
        {
          v187[1] = v187[0];
          operator delete(v187[0]);
        }
      }

      else
      {
        v33 = 0;
      }

      if (__p)
      {
        *&v225 = __p;
        operator delete(__p);
      }

      if (v222)
      {
        *&v223 = v222;
        operator delete(v222);
      }

      if (v218)
      {
        *(&v218 + 1) = v218;
        operator delete(v218);
      }

      if (v216)
      {
        *(&v216 + 1) = v216;
        operator delete(v216);
      }

      if (!v33)
      {
        break;
      }

      v34 = v170;
      if (v170)
      {
        do
        {
          v36 = v171 + 16 * v34;
          if (v169)
          {
            v37 = *(&v169 + 1);
            v38 = sub_4D1DC0(v169);
            v39 = v37 < v38;
            v40 = *v36;
            if (!*v36)
            {
              if (v37 < v38)
              {
                break;
              }

              goto LABEL_62;
            }
          }

          else
          {
            v40 = *v36;
            if (!*v36)
            {
              goto LABEL_62;
            }

            v39 = 0;
          }

          v41 = *(v36 + 1);
          v42 = sub_4D1DC0(v40);
          if (v41 < v42 && v39)
          {
            v44 = sub_4D1F50(v169, *(&v169 + 1));
            if (v44 != sub_4D1F50(*v36, *(v36 + 1)))
            {
              break;
            }
          }

          else if ((v39 ^ (v41 < v42)))
          {
            break;
          }

LABEL_62:
          v34 = v170 - 1;
          v35 = v170 == 1;
          v170 = v34;
          v169 = *(v173 + v34);
        }

        while (!v35);
      }

      --*(&v169 + 1);
    }

    sub_4C3A74(*v160, __dst);
    v45 = sub_1134E24(&v162, __dst);
    if (__p)
    {
      *&v225 = __p;
      operator delete(__p);
    }

    if (v222)
    {
      *&v223 = v222;
      operator delete(v222);
    }

    if (v218)
    {
      *(&v218 + 1) = v218;
      operator delete(v218);
    }

    if (v216)
    {
      *(&v216 + 1) = v216;
      operator delete(v216);
    }

    if (v45)
    {
      v30 = 4;
      v31 = v212;
      if (!v212)
      {
        continue;
      }

      goto LABEL_244;
    }

    v47 = v229;
    v46 = v230;
    if (v229 != v230)
    {
      v48 = **v29 + 464 * v29[1];
      if (*(v48 + 71) >= 0)
      {
        v49 = *(v48 + 71);
      }

      else
      {
        v49 = *(v48 + 56);
      }

      if ((*(v48 + 71) & 0x80) != 0)
      {
        while (1)
        {
          v53 = *(*v47 + 23);
          v54 = v53;
          if ((v53 & 0x80u) != 0)
          {
            v53 = *(*v47 + 8);
          }

          if (v53 == v49)
          {
            v55 = v54 >= 0 ? *v47 : **v47;
            if (!memcmp(v55, *(v48 + 48), v49))
            {
              break;
            }
          }

          v47 += 7;
          if (v47 == v46)
          {
            goto LABEL_242;
          }
        }
      }

      else
      {
        while (1)
        {
          v50 = *(*v47 + 23);
          v51 = v50;
          if ((v50 & 0x80u) != 0)
          {
            v50 = *(*v47 + 8);
          }

          if (v50 == v49)
          {
            v52 = v51 >= 0 ? *v47 : **v47;
            if (!memcmp(v52, (v48 + 48), v49))
            {
              break;
            }
          }

          v47 += 7;
          if (v47 == v46)
          {
            goto LABEL_242;
          }
        }
      }
    }

    if (v47 == v46)
    {
LABEL_242:
      sub_1135670(&v169);
      v30 = 5;
    }

    else
    {
      v157 = 0;
      *(v47 + 1) = *v29;
      while (1)
      {
        sub_4C3A74(*v160, __dst);
        v30 = sub_1134970(&v162, __dst);
        if (__p)
        {
          *&v225 = __p;
          operator delete(__p);
        }

        if (v222)
        {
          *&v223 = v222;
          operator delete(v222);
        }

        if (v218)
        {
          *(&v218 + 1) = v218;
          operator delete(v218);
        }

        if (v216)
        {
          *(&v216 + 1) = v216;
          operator delete(v216);
        }

        if (!v30)
        {
          break;
        }

        if (v157 >= a2 && a3 <= ((v47[5] - v47[4]) >> 3))
        {
          goto LABEL_276;
        }

        v56 = sub_1134CB4(&v162);
        sub_43ECB4(a4, v56, __dst);
        v57 = __dst[0];
        v58 = __dst[1];
        if (__dst[0])
        {
          __dst[1] = __dst[0];
          operator delete(__dst[0]);
        }

        if (v57 != v58)
        {
LABEL_276:
          v30 = 0;
          v31 = v212;
          if (!v212)
          {
            goto LABEL_245;
          }

LABEL_244:
          v213 = v31;
          operator delete(v31);
          goto LABEL_245;
        }

        v200 = v162;
        v201 = v163.__locale_;
        v203 = 0;
        v202 = 0uLL;
        if (v165 != v164)
        {
          if (((v165 - v164) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v204 = 0uLL;
        v205 = 0;
        if (v168 != v167)
        {
          if (((v168 - v167) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        sub_3E4DAC(&v206, &v169);
        v59 = v207;
        if (v207)
        {
          do
          {
            v60 = v208 + 16 * v59;
            if (v206)
            {
              v61 = *(&v206 + 1);
              v62 = sub_4D1DC0(v206);
              v63 = v61 < v62;
              v64 = *v60;
              if (!*v60)
              {
                if (v61 < v62)
                {
                  break;
                }

                goto LABEL_135;
              }
            }

            else
            {
              v64 = *v60;
              if (!*v60)
              {
                goto LABEL_135;
              }

              v63 = 0;
            }

            v65 = *(v60 + 1);
            v66 = sub_4D1DC0(v64);
            if (v65 < v66 && v63)
            {
              v68 = sub_4D1F50(v206, *(&v206 + 1));
              if (v68 != sub_4D1F50(*v60, *(v60 + 1)))
              {
                break;
              }
            }

            else if ((v63 ^ (v65 < v66)))
            {
              break;
            }

LABEL_135:
            v59 = v207 - 1;
            v35 = v207 == &dword_0 + 1;
            v207 = v59;
            v206 = *(v210 + v59);
          }

          while (!v35);
        }

        v69 = v205;
        --*(&v206 + 1);
        *__dst = v200;
        v150 = v202;
        v216 = v202;
        v215 = v201;
        v217 = v203;
        v202 = 0uLL;
        v148 = v204;
        v218 = v204;
        v203 = 0;
        v204 = 0uLL;
        v205 = 0;
        v221 = v207;
        v220 = v206;
        v70 = v208;
        v71 = v210;
        v219 = v69;
        v222 = v208;
        v72 = v209;
        v223 = v209;
        v208 = 0;
        v209 = 0uLL;
        __p = v210;
        v153 = v211;
        v225 = v211;
        v210 = 0;
        v211 = 0uLL;
        v73 = v207;
        if (v72 != v70)
        {
          if (((v72 - v70) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        if (v153 != v71)
        {
          if (((v153 - v71) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        if (v71)
        {
          *&v225 = v71;
          operator delete(v71);
        }

        if (v70)
        {
          *&v223 = v70;
          operator delete(v70);
        }

        if (v148)
        {
          *(&v218 + 1) = v148;
          operator delete(v148);
        }

        if (v150)
        {
          *(&v216 + 1) = v150;
          operator delete(v150);
        }

        if (v210)
        {
          *&v211 = v210;
          operator delete(v210);
        }

        if (v208)
        {
          *&v209 = v208;
          operator delete(v208);
        }

        if (v204)
        {
          *(&v204 + 1) = v204;
          operator delete(v204);
        }

        if (v202)
        {
          *(&v202 + 1) = v202;
          operator delete(v202);
        }

        if (v73 != v145)
        {
          v188 = v162;
          v189 = v163.__locale_;
          v191 = 0;
          v190 = 0uLL;
          if (v165 != v164)
          {
            if (((v165 - v164) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v192 = 0uLL;
          v193 = 0;
          if (v168 != v167)
          {
            if (((v168 - v167) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          sub_3E4DAC(&v194, &v169);
          sub_1135670(&v194);
          *__dst = v188;
          v155 = v190;
          v216 = v190;
          v215 = v189;
          v217 = v191;
          v190 = 0uLL;
          v152 = v192;
          v218 = v192;
          v191 = 0;
          v192 = 0uLL;
          v109 = v193;
          v110 = v196;
          v193 = 0;
          v221 = v195;
          v220 = v194;
          v219 = v109;
          v222 = v196;
          v111 = v197;
          v223 = v197;
          v196 = 0;
          v197 = 0uLL;
          v112 = v198;
          __p = v198;
          v158 = v199;
          v225 = v199;
          v198 = 0;
          v199 = 0uLL;
          v145 = v195;
          if (v111 != v222)
          {
            if (((v111 - v222) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          if (v158 != v112)
          {
            if (((v158 - v112) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          if (v112)
          {
            *&v225 = v112;
            operator delete(v112);
          }

          if (v110)
          {
            *&v223 = v110;
            operator delete(v110);
          }

          if (v152)
          {
            *(&v218 + 1) = v152;
            operator delete(v152);
          }

          if (v155)
          {
            *(&v216 + 1) = v155;
            operator delete(v155);
          }

          if (v198)
          {
            *&v199 = v198;
            operator delete(v198);
          }

          if (v196)
          {
            *&v197 = v196;
            operator delete(v196);
          }

          if (v192)
          {
            *(&v192 + 1) = v192;
            operator delete(v192);
          }

          if (v190)
          {
            *(&v190 + 1) = v190;
            operator delete(v190);
          }

          goto LABEL_276;
        }

        v74 = sub_113516C(&v162);
        v75 = sub_3116D0(v74);
        sub_31BA24(a5, v75, &v226, 0, 0, 0);
        v76 = v226;
        v77 = v227;
        v78 = v226;
        if (v226 != v227)
        {
          v78 = v226;
          while (1)
          {
            v79 = *v78;
            v80 = (*v78 - **v78);
            v81 = *v80;
            if (!*(v78 + 38))
            {
              break;
            }

            if (v81 < 0x9B)
            {
              goto LABEL_181;
            }

            v82 = v80[77];
            if (!v82 || (*(v79 + v82) & 2) == 0)
            {
              goto LABEL_181;
            }

LABEL_172:
            v78 += 5;
            if (v78 == v227)
            {
              goto LABEL_197;
            }
          }

          if (v81 >= 0x9B)
          {
            v83 = v80[77];
            if (v83)
            {
              if (*(v79 + v83))
              {
                goto LABEL_172;
              }
            }
          }

LABEL_181:
          if (v78 != v227)
          {
            for (i = v78 + 5; i != v77; i += 5)
            {
              v87 = *i;
              v88 = (*i - **i);
              v89 = *v88;
              if (*(i + 38))
              {
                if (v89 >= 0x9B)
                {
                  v90 = v88[77];
                  if (v90)
                  {
                    if ((*(v87 + v90) & 2) != 0)
                    {
                      goto LABEL_183;
                    }
                  }
                }
              }

              else if (v89 >= 0x9B)
              {
                v91 = v88[77];
                if (v91)
                {
                  if (*(v87 + v91))
                  {
LABEL_183:
                    v85 = *i;
                    v86 = *(i + 1);
                    v78[4] = i[4];
                    *v78 = v85;
                    *(v78 + 1) = v86;
                    v78 += 5;
                    continue;
                  }
                }
              }
            }
          }
        }

        if (v78 != v77)
        {
          v77 = v78;
          v227 = v78;
        }

LABEL_197:
        if (0xCCCCCCCCCCCCCCCDLL * ((v77 - v76) >> 3) >= 2)
        {
          v92 = sub_113516C(&v162);
          v93 = sub_3116D0(v92);
          sub_11352D8(v47, v93);
        }

        v175 = v162;
        v176 = v163.__locale_;
        v178 = 0;
        v177 = 0uLL;
        if (v165 != v164)
        {
          if (((v165 - v164) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v179 = 0uLL;
        v180 = 0;
        if (v168 != v167)
        {
          if (((v168 - v167) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        sub_3E4DAC(&v181, &v169);
        v94 = v182;
        if (v182)
        {
          do
          {
            v95 = v183 + 16 * v94;
            if (v181)
            {
              v96 = *(&v181 + 1);
              v97 = sub_4D1DC0(v181);
              v98 = v96 < v97;
              v99 = *v95;
              if (!*v95)
              {
                if (v96 < v97)
                {
                  break;
                }

                goto LABEL_208;
              }
            }

            else
            {
              v99 = *v95;
              if (!*v95)
              {
                goto LABEL_208;
              }

              v98 = 0;
            }

            v100 = *(v95 + 1);
            v101 = sub_4D1DC0(v99);
            if (v100 < v101 && v98)
            {
              v103 = sub_4D1F50(v181, *(&v181 + 1));
              if (v103 != sub_4D1F50(*v95, *(v95 + 1)))
              {
                break;
              }
            }

            else if ((v98 ^ (v100 < v101)))
            {
              break;
            }

LABEL_208:
            v94 = v182 - 1;
            v35 = v182 == &dword_0 + 1;
            v182 = v94;
            v181 = *(v185 + v94);
          }

          while (!v35);
        }

        v104 = v180;
        --*(&v181 + 1);
        *__dst = v175;
        v151 = v177;
        v216 = v177;
        v215 = v176;
        v217 = v178;
        v177 = 0uLL;
        v149 = v179;
        v218 = v179;
        v178 = 0;
        v179 = 0uLL;
        v180 = 0;
        v221 = v182;
        v220 = v181;
        v105 = v183;
        v106 = v185;
        v219 = v104;
        v222 = v183;
        v107 = v184;
        v223 = v184;
        v183 = 0;
        v184 = 0uLL;
        __p = v185;
        v154 = *&v186;
        v225 = v186;
        v185 = 0;
        v186 = 0uLL;
        v187[2] = v182;
        *v187 = v181;
        memset(&v187[3], 0, 24);
        if (v107 != v105)
        {
          if (((v107 - v105) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        memset(&v187[6], 0, 24);
        if (*&v154 != v106)
        {
          if (((*&v154 - v106) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v108 = sub_4D23F8(v187[0], v187[1], v154);
        if (v106)
        {
          *&v225 = v106;
          operator delete(v106);
        }

        if (v105)
        {
          *&v223 = v105;
          operator delete(v105);
        }

        if (v149)
        {
          *(&v218 + 1) = v149;
          operator delete(v149);
        }

        if (v151)
        {
          *(&v216 + 1) = v151;
          operator delete(v151);
        }

        if (v185)
        {
          *&v186 = v185;
          operator delete(v185);
        }

        if (v183)
        {
          *&v184 = v183;
          operator delete(v183);
        }

        if (v179)
        {
          *(&v179 + 1) = v179;
          operator delete(v179);
        }

        if (v177)
        {
          *(&v177 + 1) = v177;
          operator delete(v177);
        }

        v157 += v108;
        sub_1135670(&v169);
      }
    }

    v31 = v212;
    if (v212)
    {
      goto LABEL_244;
    }

LABEL_245:
    ;
  }

  while (!v30 || v30 == 5);
  if (v173)
  {
    v174 = v173;
    operator delete(v173);
  }

  if (v171)
  {
    v172 = v171;
    operator delete(v171);
  }

  if (v167)
  {
    v168 = v167;
    operator delete(v167);
  }

  if (v164)
  {
    v165 = v164;
    operator delete(v164);
  }

  v113 = v229;
  v114 = v230;
  if (v229 == v230)
  {
    goto LABEL_342;
  }

  do
  {
    v116 = v113[1];
    if (v116 && v113[2] < (0x34F72C234F72C235 * ((v116[1] - *v116) >> 4)) || !sub_7E7E4(1u))
    {
      goto LABEL_289;
    }

    sub_19594F8(&v162);
    v117 = sub_4A5C(&v162, "The original user route references a no longer known soft-closure with id ", 74);
    v118 = *(*v113 + 23);
    if (v118 >= 0)
    {
      v119 = *v113;
    }

    else
    {
      v119 = **v113;
    }

    if (v118 >= 0)
    {
      v120 = *(*v113 + 23);
    }

    else
    {
      v120 = *(*v113 + 8);
    }

    sub_4A5C(v117, v119, v120);
    if ((v172 & 0x10) != 0)
    {
      v128 = v171;
      v129 = &v167;
      if (v171 < v168)
      {
        v171 = v168;
        v128 = v168;
        v129 = &v167;
      }

      goto LABEL_318;
    }

    if ((v172 & 8) != 0)
    {
      v128 = v166;
      v129 = &v164;
LABEL_318:
      v132 = *v129;
      v121 = v128 - *v129;
      if (v121 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v121 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v215) = v128 - *v129;
      if (v121)
      {
        memmove(__dst, v132, v121);
      }

      goto LABEL_324;
    }

    v121 = 0;
    HIBYTE(v215) = 0;
LABEL_324:
    *(__dst + v121) = 0;
    sub_7E854(__dst, 1u);
    if (SHIBYTE(v215) < 0)
    {
      operator delete(__dst[0]);
    }

    *&v162 = v161;
    *(&v162 + *(v161 - 24)) = v115;
    if (SHIBYTE(v170) < 0)
    {
      operator delete(v169);
    }

    std::locale::~locale(&v163);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_289:
    if (v113[4] != v113[5] || !sub_7E7E4(1u))
    {
      goto LABEL_290;
    }

    sub_19594F8(&v162);
    v122 = sub_4A5C(&v162, "Could not locate the incident ", 30);
    v123 = *(*v113 + 23);
    if (v123 >= 0)
    {
      v124 = *v113;
    }

    else
    {
      v124 = **v113;
    }

    if (v123 >= 0)
    {
      v125 = *(*v113 + 23);
    }

    else
    {
      v125 = *(*v113 + 8);
    }

    v126 = sub_4A5C(v122, v124, v125);
    sub_4A5C(v126, " on the user route or it started at the origin.", 47);
    if ((v172 & 0x10) != 0)
    {
      v130 = v171;
      v131 = &v167;
      if (v171 < v168)
      {
        v171 = v168;
        v130 = v168;
        v131 = &v167;
      }

      goto LABEL_329;
    }

    if ((v172 & 8) != 0)
    {
      v130 = v166;
      v131 = &v164;
LABEL_329:
      v133 = *v131;
      v127 = v130 - *v131;
      if (v127 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v127 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v215) = v130 - *v131;
      if (v127)
      {
        memmove(__dst, v133, v127);
      }

      goto LABEL_335;
    }

    v127 = 0;
    HIBYTE(v215) = 0;
LABEL_335:
    *(__dst + v127) = 0;
    sub_7E854(__dst, 1u);
    if (SHIBYTE(v215) < 0)
    {
      operator delete(__dst[0]);
    }

    *&v162 = v161;
    *(&v162 + *(v161 - 24)) = v115;
    if (SHIBYTE(v170) < 0)
    {
      operator delete(v169);
    }

    std::locale::~locale(&v163);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_290:
    v113 += 7;
  }

  while (v113 != v114);
  v113 = v229;
  v114 = v230;
LABEL_342:
  if (v113 == v114)
  {
    goto LABEL_363;
  }

  v134 = v113;
  while (v134[4] != v134[5])
  {
    v135 = v134[1];
    if (!v135 || v134[2] >= (0x34F72C234F72C235 * ((v135[1] - *v135) >> 4)))
    {
      break;
    }

    v134 += 7;
    if (v134 == v114)
    {
      goto LABEL_363;
    }
  }

  if (v134 != v114)
  {
    v136 = v134 + 7;
    if (v134 + 7 != v114)
    {
      do
      {
        if (v136[4] != v136[5])
        {
          v137 = v136[1];
          if (v137)
          {
            if (v136[2] < (0x34F72C234F72C235 * ((v137[1] - *v137) >> 4)))
            {
              v138 = *(v136 + 1);
              *v134 = *v136;
              *(v134 + 1) = v138;
              v139 = v134[4];
              if (v139)
              {
                v134[5] = v139;
                operator delete(v139);
                v134[4] = 0;
                v134[5] = 0;
                v134[6] = 0;
              }

              *(v134 + 2) = *(v136 + 2);
              v134[6] = v136[6];
              v136[4] = 0;
              v136[5] = 0;
              v136[6] = 0;
              v134 += 7;
            }
          }
        }

        v136 += 7;
      }

      while (v136 != v114);
      v113 = v229;
      v114 = v230;
    }
  }

  if (v134 == v114)
  {
LABEL_363:
    v134 = v114;
  }

  else
  {
    while (v114 != v134)
    {
      v140 = *(v114 - 3);
      if (v140)
      {
        *(v114 - 2) = v140;
        operator delete(v140);
      }

      v114 -= 7;
    }

    v230 = v134;
    v113 = v229;
  }

  *v144 = v113;
  v144[1] = v134;
  v144[2] = v231;
  v230 = 0;
  v231 = 0;
  v229 = 0;
  if (v226)
  {
    v227 = v226;
    operator delete(v226);
    v25 = v229;
    if (v229)
    {
LABEL_373:
      v141 = v230;
      v142 = v25;
      if (v230 != v25)
      {
        do
        {
          v143 = *(v141 - 3);
          if (v143)
          {
            *(v141 - 2) = v143;
            operator delete(v143);
          }

          v141 -= 56;
        }

        while (v141 != v25);
        v142 = v229;
      }

      v230 = v25;
      operator delete(v142);
    }
  }
}

void sub_1133178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v26)
  {
    operator delete(v26);
  }

  sub_3DB6B8(&STACK[0x3B0]);
  sub_3DB6B8(&STACK[0x270]);
  v29 = STACK[0x398];
  if (STACK[0x398])
  {
    STACK[0x3A0] = v29;
    operator delete(v29);
  }

  sub_3DB6B8(&a26);
  v30 = *(v27 - 144);
  if (v30)
  {
    *(v27 - 136) = v30;
    operator delete(v30);
  }

  sub_49A93C((v27 - 120));
  _Unwind_Resume(a1);
}

void *sub_1133450(void *result, void *a2, uint64_t *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 32 * (v6 - v7) - 1;
  }

  v9 = result[4];
  if (v8 == result[5] + v9)
  {
    v10 = v9 >= 0x100;
    v11 = v9 - 256;
    if (!v10)
    {
      v12 = result[3];
      v13 = v12 - *result;
      if (v6 - v7 < v13)
      {
        operator new();
      }

      v14 = v13 >> 2;
      if (v12 == *result)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      if (!(v15 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    result[4] = v11;
    v19 = *v7;
    result[1] = v7 + 8;
    result = sub_2133C(result, &v19);
  }

  v16 = v5[5] + v5[4];
  v17 = (*(v5[1] + ((v16 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v16);
  v18 = *a3;
  *v17 = *a2;
  v17[1] = v18;
  ++v5[5];
  return result;
}

void sub_1133A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  operator delete(__p);
  operator delete(v9);
  _Unwind_Resume(a1);
}

__n128 sub_1133AC0@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 184);
  *a2 = result;
  a2[1].n128_u32[0] = *(a1 + 200);
  return result;
}

void sub_1133AD4(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 5296);
  if (v2)
  {
    if (v2 < 0x1AF286BCA1AF287)
    {
      operator new();
    }

    sub_1794();
  }

  v3 = *(a1 + 5288);
  for (i = a2; v3; v3 = *v3)
  {
    if (*(v3 + 39) < 0)
    {
      sub_325C(__p, v3[2], v3[3]);
    }

    else
    {
      *__p = *(v3 + 1);
      v5 = v3[4];
    }

    v12 = *(v3 + 17);
    v13 = *(v3 + 19);
    v14 = *(v3 + 21);
    v15 = v3[23];
    v8 = *(v3 + 9);
    v9 = *(v3 + 11);
    v10 = *(v3 + 13);
    v11 = *(v3 + 15);
    v6 = *(v3 + 5);
    v7 = *(v3 + 7);
    memmove(__dst, v3 + 5, 0x98uLL);
    sub_1137860(&i, __dst);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1133C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *v14;
  if (!*v14)
  {
    _Unwind_Resume(exception_object);
  }

  *(v14 + 8) = v16;
  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void sub_1133C78(uint64_t a1, void *a2)
{
  v9 = 6;
  strcpy(__p, "enable");
  v4 = sub_5F9D0(a2, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(__p[0]);
    v4 = v5;
  }

  *a1 = v4;
  v9 = 11;
  strcpy(__p, "max_penalty");
  v6 = sub_63D34(a2, __p);
  if (v9 < 0)
  {
    v7 = v6;
    operator delete(__p[0]);
    v6 = v7;
  }

  *(a1 + 8) = v6;
  operator new();
}

void sub_1133EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1133F24(BOOL *a1, void *a2)
{
  v9 = 6;
  strcpy(__p, "enable");
  v4 = sub_5F9D0(a2, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(__p[0]);
    v4 = v5;
  }

  *a1 = v4;
  v9 = 15;
  strcpy(__p, "use_exclusively");
  v6 = sub_5F9D0(a2, __p);
  if (v9 < 0)
  {
    v7 = v6;
    operator delete(__p[0]);
    v6 = v7;
  }

  a1[1] = v6;
  operator new();
}

void sub_11341F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_113422C(double *a1, void *a2)
{
  v6 = 15;
  strcpy(__p, "general_penalty");
  v3 = sub_63D34(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_1134388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_11343AC(uint64_t a1, void *a2)
{
  v13 = 6;
  strcpy(__p, "enable");
  v4 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v13 = 15;
  strcpy(__p, "general_penalty");
  v6 = sub_63D34(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 8) = v6;
  v13 = 21;
  strcpy(__p, "incident_age_exponent");
  v8 = sub_63D34(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 16) = v8;
  v13 = 19;
  strcpy(__p, "incident_age_factor");
  v10 = sub_63D34(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 24) = v10;
  operator new();
}

void sub_11345DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_113460C(BOOL *a1, void *a2)
{
  v9 = 6;
  strcpy(__p, "enable");
  v4 = sub_5F9D0(a2, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v9 = 18;
  strcpy(__p, "enable_computation");
  v6 = sub_5F9D0(a2, __p);
  if (v9 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  a1[1] = v6;
  operator new();
}

void sub_11347F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1134824(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_1134970(void *a1, void *a2)
{
  v2 = a1[12];
  v3 = a1[13];
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = a1[15];
  v4 = a1[16];
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a2[12];
  v7 = a2[13];
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v10 = a2[15];
  v9 = a2[16];
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

void sub_1134C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_1134C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (v19)
  {
    operator delete(v19);
    sub_3DB674(&a19);
    _Unwind_Resume(a1);
  }

  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_1134C9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1134CB4(uint64_t a1)
{
  v8 = *(a1 + 72);
  v1 = *(a1 + 96);
  v9 = *(a1 + 88);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v2 = *(a1 + 104);
  if (v2 != v1)
  {
    if (((v2 - v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  v4 = *(a1 + 120);
  v3 = *(a1 + 128);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = sub_1135670(&v8);
  v6 = sub_4D1F50(*v5, v5[1]);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  return v6;
}

void sub_1134DF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1134E24(void *a1, void *a2)
{
  v2 = a1[12];
  v3 = a1[13];
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = a1[15];
  v4 = a1[16];
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a2[12];
  v7 = a2[13];
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v10 = a2[15];
  v9 = a2[16];
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 1;
}

void sub_1135104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_1135120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (v19)
  {
    operator delete(v19);
    sub_3DB674(&a19);
    _Unwind_Resume(a1);
  }

  sub_3DB674(&a19);
  _Unwind_Resume(a1);
}

void sub_1135154(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_113516C(uint64_t a1)
{
  v7 = *(a1 + 72);
  v1 = *(a1 + 96);
  v8 = *(a1 + 88);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v2 = *(a1 + 104);
  if (v2 != v1)
  {
    if (((v2 - v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v13 = 0;
  v14 = 0;
  v4 = *(a1 + 120);
  v3 = *(a1 + 128);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_1135670(&v7);
  v5 = sub_4D1F50(v7, *(&v7 + 1));
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  return v5;
}

void sub_11352AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_11352D8(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  if (v4 < v3)
  {
    *v4 = a2;
    v5 = v4 + 8;
LABEL_3:
    a1[5] = v5;
    return;
  }

  v6 = a1[4];
  v7 = v4 - v6;
  v8 = (v4 - v6) >> 3;
  v9 = v8 + 1;
  if ((v8 + 1) >> 61)
  {
    sub_1794();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v12 = (v4 - v6) >> 3;
  v13 = (8 * v8);
  v14 = (8 * v8 - 8 * v12);
  *v13 = a2;
  v5 = v13 + 1;
  memcpy(v14, v6, v7);
  a1[4] = v14;
  a1[5] = v5;
  a1[6] = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  a1[5] = v5;
}

void sub_11353E8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 == v2)
    {
      v1[1] = v2;
    }

    else
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 6);
        if (v7)
        {
          *(v4 - 5) = v7;
          operator delete(v7);
        }

        v8 = *(v4 - 12);
        if (v8)
        {
          *(v4 - 11) = v8;
          operator delete(v8);
        }

        v9 = *(v4 - 15);
        if (v9)
        {
          *(v4 - 14) = v9;
          operator delete(v9);
        }

        v4 -= 160;
      }

      while (v4 != v2);
      v5 = **a1;
      v1[1] = v2;
    }

    operator delete(v5);
  }
}

void sub_11354CC(uint64_t a1, void *a2)
{
  v3 = a2[17];
  if (v3)
  {
    a2[18] = v3;
    operator delete(v3);
  }

  v4 = a2[14];
  if (v4)
  {
    a2[15] = v4;
    operator delete(v4);
  }

  v5 = a2[8];
  if (v5)
  {
    a2[9] = v5;
    operator delete(v5);
  }

  v6 = a2[5];
  if (v6)
  {
    a2[6] = v6;

    operator delete(v6);
  }
}

void sub_1135544(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v4 = *(a1 + 1);
  v5 = a1[3];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v6 = *(a1 + 8);
  v20 = v6;
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 1) = v7;
  *(a2 + 8) = 0;
  v8 = (a2 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 32);
  *a2 = v3;
  v9 = *(a2 + 8);
  if (v9)
  {
    v16 = v4;
    v10 = *(a2 + 16);
    v11 = *(a2 + 8);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 24);
        if (v12)
        {
          *(v10 - 16) = v12;
          operator delete(v12);
        }

        v13 = *(v10 - 48);
        if (v13)
        {
          *(v10 - 40) = v13;
          operator delete(v13);
        }

        v14 = *(v10 - 96);
        if (v14)
        {
          *(v10 - 88) = v14;
          operator delete(v14);
        }

        v15 = *(v10 - 120);
        if (v15)
        {
          *(v10 - 112) = v15;
          operator delete(v15);
        }

        v10 -= 160;
      }

      while (v10 != v9);
      v11 = *v8;
    }

    *(a2 + 16) = v9;
    operator delete(v11);
    v4 = v16;
  }

  *(a2 + 8) = v4;
  *(a2 + 24) = v5;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  *(a2 + 32) = v6;
  v21 = &v17;
  sub_11353E8(&v21);
}

void **sub_1135670(void **a1)
{
  for (i = a1[2]; i; *a1 = *&a1[6][2 * i])
  {
    v4 = &a1[3][2 * i];
    if (*a1)
    {
      v5 = a1[1];
      v6 = sub_4D1DC0(*a1);
      v7 = v5 < v6;
      if (*v4)
      {
        v8 = v4[1];
        v9 = sub_4D1DC0(*v4);
        if (!v7 || v8 >= v9)
        {
          goto LABEL_3;
        }

        v11 = sub_4D1F50(*a1, a1[1]);
        if (v11 != sub_4D1F50(*v4, v4[1]))
        {
          break;
        }
      }

      else if (v5 < v6)
      {
        break;
      }
    }

    else if (*v4)
    {
      v7 = 0;
      v8 = v4[1];
      v9 = sub_4D1DC0(*v4);
LABEL_3:
      if ((v7 ^ (v8 < v9)))
      {
        break;
      }
    }

    i = a1[2] - 1;
    a1[2] = i;
  }

  a1[1] = (a1[1] - 1);
  return a1;
}

double sub_113576C(uint64_t a1, void *a2, int *a3, int *a4, uint64_t *a5, int *a6, uint64_t a7)
{
  v7 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v8)
  {
    v8 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v10 = 0x492492492492492;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v20 = 8 * ((*(a1 + 8) - *a1) >> 3);
  v11 = *a3;
  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  *v20 = *a2;
  *(v20 + 8) = v11;
  *(v20 + 12) = v12;
  *(v20 + 16) = v13;
  *(v20 + 24) = v14;
  *(v20 + 32) = *a7;
  *(v20 + 48) = *(a7 + 16);
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  v15 = *(a1 + 8);
  v16 = 56 * v7 + *a1 - v15;
  sub_113591C(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = (56 * v7 + 56);
  *(a1 + 8) = v18;
  if (v17)
  {
    operator delete(v17);
    *&v18 = 56 * v7 + 56;
  }

  return *&v18;
}

void sub_1135908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1135A68(va);
  _Unwind_Resume(a1);
}

void sub_113591C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 12) = *(v6 + 12);
      *a4 = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = v6[2];
      *(a4 + 48) = *(v6 + 6);
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 6) = 0;
      v6 = (v6 + 56);
      a4 += 56;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v9 = *(v5 + 4);
      if (v9)
      {
        v10 = *(v5 + 5);
        v8 = *(v5 + 4);
        if (v10 != v9)
        {
          v11 = v10 - 168;
          do
          {
            v13 = *(v11 + 96);
            if (v13)
            {
              *(v11 + 104) = v13;
              operator delete(v13);
            }

            v14 = *(v11 + 72);
            if (v14)
            {
              *(v11 + 80) = v14;
              operator delete(v14);
            }

            v15 = *(v11 + 24);
            if (v15)
            {
              *(v11 + 32) = v15;
              operator delete(v15);
            }

            v16 = *v11;
            if (*v11)
            {
              *(v11 + 8) = v16;
              operator delete(v16);
            }

            v17 = *(v11 - 96);
            if (v17)
            {
              *(v11 - 88) = v17;
              operator delete(v17);
            }

            v18 = *(v11 - 120);
            if (v18)
            {
              *(v11 - 112) = v18;
              operator delete(v18);
            }

            v19 = *(v11 - 168);
            if (v19)
            {
              *(v11 - 160) = v19;
              operator delete(v19);
            }

            v20 = *(v11 - 192);
            if (v20)
            {
              *(v11 - 184) = v20;
              operator delete(v20);
            }

            v12 = v11 - 216;
            v11 -= 384;
          }

          while (v12 != v9);
          v8 = *(v5 + 4);
        }

        *(v5 + 5) = v9;
        operator delete(v8);
      }

      v5 = (v5 + 56);
    }
  }
}

uint64_t sub_1135A68(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    while (1)
    {
      v4 = i - 56;
      *(a1 + 16) = i - 56;
      v5 = *(i - 24);
      if (v5)
      {
        break;
      }

      i -= 56;
      if (v4 == v2)
      {
        goto LABEL_9;
      }
    }

    v6 = *(i - 16);
    v7 = *(i - 24);
    if (v6 != v5)
    {
      do
      {
        v6 = sub_1135B64(v6 - 48);
      }

      while (v6 != v5);
      v7 = *(i - 24);
    }

    *(i - 16) = v5;
    operator delete(v7);
  }

LABEL_9:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_1135B08(void **a1)
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
        v3 = sub_1135B64(v3 - 48);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_1135B64(void *a1)
{
  v2 = a1[39];
  if (v2)
  {
    a1[40] = v2;
    operator delete(v2);
  }

  v3 = a1[36];
  if (v3)
  {
    a1[37] = v3;
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    a1[31] = v4;
    operator delete(v4);
  }

  v5 = a1[27];
  if (v5)
  {
    a1[28] = v5;
    operator delete(v5);
  }

  v6 = a1[15];
  if (v6)
  {
    a1[16] = v6;
    operator delete(v6);
  }

  v7 = a1[12];
  if (v7)
  {
    a1[13] = v7;
    operator delete(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    a1[7] = v8;
    operator delete(v8);
  }

  v9 = a1[3];
  if (v9)
  {
    a1[4] = v9;
    operator delete(v9);
  }

  return a1;
}

void **sub_1135C08(void **a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              v6 = sub_1135B64(v6 - 48);
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
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

void *sub_1135CA4(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void *sub_1135DC4(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 5) < 0x19999999999999ALL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_1135EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_1135F10(&a11);
  *(v11 + 8) = v12;
  sub_11353E8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1135F10(uint64_t a1)
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
        v4 -= 20;
        sub_11354CC(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_1135F78(void ***a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * (a1[2] - *a1) > v3)
  {
    v3 = 0x999999999999999ALL * (a1[2] - *a1);
  }

  if (0xCCCCCCCCCCCCCCCDLL * (a1[2] - *a1) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * (a1[1] - *a1);
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v6 + 32) = *(a2 + 32);
  v8 = 40 * v2 + 40;
  v9 = *a1;
  v10 = a1[1];
  v11 = v6 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v6 + *a1 - v10;
    do
    {
      *v13 = *v12;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = *(v12 + 1);
      *(v13 + 24) = v12[3];
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      *(v13 + 32) = *(v12 + 8);
      v12 += 5;
      v13 += 40;
    }

    while (v12 != v10);
    do
    {
      v15 = v9 + 1;
      sub_11353E8(&v15);
      v9 += 5;
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

void sub_11360F8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
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
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:

          sub_113673C(a1, a1 + 3, a2 - 3);
          return;
        case 4uLL:

          sub_1136990(a1, a1 + 3, a1 + 6, (a2 - 3));
          return;
        case 5uLL:

          sub_1136B34(a1, a1 + 3, a1 + 6, (a1 + 9), (a2 - 3));
          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v23 = a2 - 3;
        v24 = *(a2 - 3);
        if (v24 < *a1 || v24 == *a1 && *(a2 - 2) < a1[1] || *a1 >= v24 && a1[1] >= *(a2 - 2) && *(a2 - 1) < a1[2])
        {
          v53 = *a1;
          *a1 = *v23;
          *v23 = v53;
          v25 = a1[2];
          a1[2] = *(a2 - 1);
          *(a2 - 1) = v25;
        }

        return;
      }
    }

    if (v12 <= 575)
    {
      break;
    }

    if (v10 == 1)
    {
      if (a1 != a2)
      {
        v39 = (v13 - 2) >> 1;
        v40 = v39 + 1;
        v41 = &a1[3 * v39];
        do
        {
          sub_113744C(a1, a3, 0xAAAAAAAAAAAAAAABLL * (v12 >> 3), v41);
          v41 -= 3;
          --v40;
        }

        while (v40);
        v42 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        do
        {
          sub_1137644(a1, a2, a3, v42);
          a2 -= 3;
        }

        while (v42-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = &a1[3 * (v13 >> 1)];
    if (v12 < 0xC01)
    {
      sub_113673C(v15, a1, a2 - 3);
      if (a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_113673C(a1, v15, a2 - 3);
      v16 = 3 * v14;
      v17 = &a1[3 * v14 - 3];
      sub_113673C(a1 + 3, v17, a2 - 6);
      sub_113673C(a1 + 6, &a1[v16 + 3], a2 - 9);
      sub_113673C(v17, v15, &a1[v16 + 3]);
      v52 = *a1;
      *a1 = *v15;
      *v15 = v52;
      v18 = a1[2];
      a1[2] = v15[2];
      v15[2] = v18;
      if (a5)
      {
        goto LABEL_22;
      }
    }

    v19 = *(a1 - 3);
    if (v19 >= *a1 && (v19 != *a1 || *(a1 - 2) >= a1[1]) && (*a1 < v19 || a1[1] < *(a1 - 2) || *(a1 - 1) >= a1[2]))
    {
      v9 = sub_1136D58(a1, a2);
      goto LABEL_27;
    }

LABEL_22:
    v20 = sub_1136F6C(a1, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_25;
    }

    v22 = sub_1137168(a1, v20);
    v9 = v20 + 3;
    if (sub_1137168(v20 + 3, a2))
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_25:
      sub_11360F8(a1, v20, a3, -v11, a5 & 1);
      v9 = v20 + 3;
LABEL_27:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  v26 = a1 + 3;
  v28 = a1 == a2 || v26 == a2;
  if (a5)
  {
    if (v28)
    {
      return;
    }

    v29 = 0;
    v30 = a1;
LABEL_53:
    v32 = v30;
    v30 = v26;
    v33 = v32[3];
    if (v33 >= *v32)
    {
      if (v33 != *v32 || (v34 = v32[4], v34 >= v32[1]))
      {
        if (*v32 < v33)
        {
          goto LABEL_52;
        }

        v34 = v32[4];
        if (v32[1] < v34 || v32[5] >= v32[2])
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      v34 = v32[4];
    }

    v35 = v32[5];
    *v30 = *v32;
    v30[2] = v32[2];
    v31 = a1;
    if (v32 == a1)
    {
      goto LABEL_51;
    }

    v36 = v29;
    while (1)
    {
      v37 = a1 + v36;
      v38 = *(a1 + v36 - 24);
      if (v33 >= v38 && (v33 != v38 || v34 >= *(a1 + v36 - 16)))
      {
        if (v38 < v33)
        {
          v31 = (a1 + v36);
LABEL_51:
          *v31 = v33;
          v31[1] = v34;
          v31[2] = v35;
LABEL_52:
          v26 = v30 + 3;
          v29 += 24;
          if (v30 + 3 == a2)
          {
            return;
          }

          goto LABEL_53;
        }

        if (*(a1 + v36 - 16) < v34 || v35 >= *(a1 + v36 - 8))
        {
          v31 = v32;
          goto LABEL_51;
        }
      }

      v32 -= 3;
      *v37 = *(a1 + v36 - 24);
      *(v37 + 2) = *(v37 - 1);
      v36 -= 24;
      if (!v36)
      {
        v31 = a1;
        goto LABEL_51;
      }
    }
  }

  if (!v28)
  {
    while (1)
    {
      v44 = a1;
      a1 = v26;
      v45 = v44[3];
      if (v45 < *v44)
      {
        break;
      }

      if (v45 == *v44)
      {
        v46 = v44[4];
        if (v46 < v44[1])
        {
          goto LABEL_90;
        }
      }

      if (*v44 >= v45)
      {
        v46 = v44[4];
        if (v44[1] >= v46 && v44[5] < v44[2])
        {
          goto LABEL_90;
        }
      }

LABEL_87:
      v26 = a1 + 3;
      if (a1 + 3 == a2)
      {
        return;
      }
    }

    v46 = v44[4];
LABEL_90:
    v47 = v44[5];
    do
    {
      do
      {
        v48 = v44;
        *(v44 + 3) = *v44;
        v44[5] = v44[2];
        v50 = *(v44 - 3);
        v44 -= 3;
        v49 = v50;
        v51 = v45 == v50;
      }

      while (v45 < v50);
    }

    while (v51 && v46 < *(v48 - 2) || v49 >= v45 && *(v48 - 2) >= v46 && v47 < *(v48 - 1));
    *v48 = v45;
    v48[1] = v46;
    v48[2] = v47;
    goto LABEL_87;
  }
}

uint64_t sub_113673C(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  if (*a2 >= *a1 && (*a2 != *a1 || a2[1] >= a1[1]) && (*a1 < v3 || a1[1] < a2[1] || a2[2] >= a1[2]))
  {
    if (*a3 >= v3 && (*a3 != v3 || a3[1] >= a2[1]) && (v3 < *a3 || a2[1] < a3[1] || a3[2] >= a2[2]))
    {
      return 0;
    }

    v6 = *a2;
    *a2 = *a3;
    *a3 = v6;
    v8 = (a2 + 2);
    v7 = a2[2];
    a2[2] = a3[2];
    a3[2] = v7;
    if (*a2 >= *a1 && (*a2 != *a1 || a2[1] >= a1[1]))
    {
      if (*a1 < *a2)
      {
        return 1;
      }

      if (a1[1] < a2[1])
      {
        return 1;
      }

      if (*v8 >= a1[2])
      {
        return 1;
      }
    }

    v9 = *a1;
    *a1 = *a2;
    *a2 = v9;
    v5 = (a1 + 2);
LABEL_20:
    v13 = *v5;
    *v5 = *v8;
    *v8 = v13;
    return 1;
  }

  if (*a3 < v3 || *a3 == v3 && a3[1] < a2[1] || v3 >= *a3 && a2[1] >= a3[1] && a3[2] < a2[2])
  {
    v4 = *a1;
    *a1 = *a3;
    *a3 = v4;
    v5 = (a1 + 2);
LABEL_19:
    v8 = (a3 + 2);
    goto LABEL_20;
  }

  v10 = *a1;
  *a1 = *a2;
  *a2 = v10;
  v5 = (a2 + 2);
  v11 = a1[2];
  a1[2] = a2[2];
  a2[2] = v11;
  if (*a3 < *a2 || *a3 == *a2 && a3[1] < a2[1])
  {
    goto LABEL_18;
  }

  if (*a2 < *a3)
  {
    return 1;
  }

  if (a2[1] < a3[1])
  {
    return 1;
  }

  if (a3[2] < v11)
  {
LABEL_18:
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    goto LABEL_19;
  }

  return 1;
}

__n128 sub_1136990(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_113673C(a1, a2, a3);
  if (*a4 < *a3 || *a4 == *a3 && *(a4 + 8) < a3[1] || *a3 >= *a4 && a3[1] >= *(a4 + 8) && *(a4 + 16) < a3[2])
  {
    if ((result = *a3, *a3 = *a4, *a4 = result, v9 = a3[2], a3[2] = *(a4 + 16), *(a4 + 16) = v9, *a3 < *a2) || *a3 == *a2 && a3[1] < a2[1] || *a2 >= *a3 && a2[1] >= a3[1] && a3[2] < a2[2])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v10 = a2[2];
      a2[2] = a3[2];
      a3[2] = v10;
      if (*a2 < *a1 || *a2 == *a1 && a2[1] < a1[1] || *a1 >= *a2 && a1[1] >= a2[1] && a2[2] < a1[2])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
        v11 = a1[2];
        a1[2] = a2[2];
        a2[2] = v11;
      }
    }
  }

  return result;
}

__n128 sub_1136B34(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = sub_1136990(a1, a2, a3, a4).n128_u64[0];
  if (*a5 < *a4 || *a5 == *a4 && *(a5 + 8) < *(a4 + 8) || *a4 >= *a5 && *(a4 + 8) >= *(a5 + 8) && *(a5 + 16) < *(a4 + 16))
  {
    if ((result = *a4, *a4 = *a5, *a5 = result, v11 = *(a4 + 16), *(a4 + 16) = *(a5 + 16), *(a5 + 16) = v11, *a4 < *a3) || *a4 == *a3 && *(a4 + 8) < a3[1] || *a3 >= *a4 && a3[1] >= *(a4 + 8) && *(a4 + 16) < a3[2])
    {
      if ((result = *a3, *a3 = *a4, *a4 = result, v12 = a3[2], a3[2] = *(a4 + 16), *(a4 + 16) = v12, *a3 < *a2) || *a3 == *a2 && a3[1] < a2[1] || *a2 >= *a3 && a2[1] >= a3[1] && a3[2] < a2[2])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        v13 = a2[2];
        a2[2] = a3[2];
        a3[2] = v13;
        if (*a2 < *a1 || *a2 == *a1 && a2[1] < a1[1] || *a1 >= *a2 && a1[1] >= a2[1] && a2[2] < a1[2])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
          v14 = a1[2];
          a1[2] = a2[2];
          a2[2] = v14;
        }
      }
    }
  }

  return result;
}

unint64_t *sub_1136D58(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a2 - 24);
  if (*a1 < v5 || *a1 == v5 && v3 < *(a2 - 16) || v5 >= v2 && *(a2 - 16) >= v3 && v4 < *(a2 - 8))
  {
    i = a1;
    do
    {
      v8 = i[3];
      i += 3;
      v7 = v8;
    }

    while (v2 >= v8 && (v2 != v7 || v3 >= i[1]) && (v7 < v2 || i[1] < v3 || v4 >= i[2]));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 24; v2 < v5 || v2 == v5 && v3 < *(a2 + 8) || v5 >= v2 && *(a2 + 8) >= v3 && v4 < *(a2 + 16); a2 -= 24)
    {
      v9 = *(a2 - 24);
      v5 = v9;
    }
  }

  while (i < a2)
  {
    v18 = *i;
    *i = *a2;
    *a2 = v18;
    v11 = i[3];
    i += 3;
    v10 = v11;
    v12 = *(i - 1);
    *(i - 1) = *(a2 + 16);
    *(a2 + 16) = v12;
    while (v2 >= v10 && (v2 != v10 || v3 >= i[1]) && (v10 < v2 || i[1] < v3 || v4 >= i[2]))
    {
      v13 = i[3];
      i += 3;
      v10 = v13;
    }

    do
    {
      do
      {
        v15 = *(a2 - 24);
        a2 -= 24;
        v14 = v15;
        v16 = v2 == v15;
      }

      while (v2 < v15);
    }

    while (v16 && v3 < *(a2 + 8) || v14 >= v2 && *(a2 + 8) >= v3 && v4 < *(a2 + 16));
  }

  if (i - 3 != a1)
  {
    *a1 = *(i - 3);
    a1[2] = *(i - 1);
  }

  *(i - 3) = v2;
  *(i - 2) = v3;
  *(i - 1) = v4;
  return i;
}

unint64_t sub_1136F6C(unint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  while (1)
  {
    v6 = a1[v2 + 3];
    if (v6 >= v3 && (v6 != v3 || a1[v2 + 4] >= v4) && (v3 < v6 || v4 < a1[v2 + 4] || a1[v2 + 5] >= v5))
    {
      break;
    }

    v2 += 3;
  }

  v7 = &a1[v2 + 3];
  if (v2 * 8)
  {
    do
    {
      v9 = *(a2 - 24);
      a2 -= 24;
      v8 = v9;
    }

    while (v9 >= v3 && (v8 != v3 || *(a2 + 8) >= v4) && (v3 < v8 || v4 < *(a2 + 8) || *(a2 + 16) >= v5));
  }

  else
  {
LABEL_28:
    if (v7 < a2)
    {
      do
      {
        v11 = *(a2 - 24);
        a2 -= 24;
        v10 = v11;
        if (v11 < v3 || v10 == v3 && *(a2 + 8) < v4)
        {
          break;
        }

        if (v3 < v10 || v4 < *(a2 + 8))
        {
          goto LABEL_28;
        }
      }

      while (*(a2 + 16) >= v5 && v7 < a2);
    }
  }

  v13 = v7;
  if (v7 < a2)
  {
    v14 = a2;
    do
    {
      v22 = *v13;
      *v13 = *v14;
      *v14 = v22;
      v15 = *(v13 + 16);
      *(v13 + 16) = *(v14 + 16);
      *(v14 + 16) = v15;
      do
      {
        do
        {
          v17 = *(v13 + 24);
          v13 += 24;
          v16 = v17;
          v18 = v17 == v3;
        }

        while (v17 < v3);
      }

      while (v18 && *(v13 + 8) < v4 || v3 >= v16 && v4 >= *(v13 + 8) && *(v13 + 16) < v5);
      do
      {
        v20 = *(v14 - 24);
        v14 -= 24;
        v19 = v20;
      }

      while (v20 >= v3 && (v19 != v3 || *(v14 + 8) >= v4) && (v3 < v19 || v4 < *(v14 + 8) || *(v14 + 16) >= v5));
    }

    while (v13 < v14);
  }

  if ((v13 - 24) != a1)
  {
    *a1 = *(v13 - 24);
    a1[2] = *(v13 - 8);
  }

  *(v13 - 24) = v3;
  *(v13 - 16) = v4;
  *(v13 - 8) = v5;
  return v13 - 24;
}

BOOL sub_1137168(unint64_t *a1, unint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_113673C(a1, a1 + 3, a2 - 3);
        return 1;
      case 4:
        sub_1136990(a1, a1 + 3, a1 + 6, (a2 - 3));
        return 1;
      case 5:
        sub_1136B34(a1, a1 + 3, a1 + 6, (a1 + 9), (a2 - 3));
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = a2 - 3;
      v4 = *(a2 - 3);
      if (v4 < *a1 || v4 == *a1 && *(a2 - 2) < a1[1] || *a1 >= v4 && a1[1] >= *(a2 - 2) && *(a2 - 1) < a1[2])
      {
        v5 = *a1;
        *a1 = *v3;
        *v3 = v5;
        v6 = a1[2];
        a1[2] = *(a2 - 1);
        *(a2 - 1) = v6;
        return 1;
      }

      return 1;
    }
  }

  v8 = a1 + 6;
  sub_113673C(a1, a1 + 3, a1 + 6);
  v11 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v11;
    if (*v11 < *v8)
    {
      break;
    }

    if (*v11 == *v8)
    {
      v15 = v11[1];
      if (v15 < v8[1])
      {
        goto LABEL_17;
      }
    }

    if (*v8 >= v14)
    {
      v15 = v11[1];
      if (v8[1] >= v15 && v11[2] < v8[2])
      {
        goto LABEL_17;
      }
    }

LABEL_32:
    v8 = v11;
    v12 += 24;
    v11 += 3;
    if (v11 == a2)
    {
      return 1;
    }
  }

  v15 = v11[1];
LABEL_17:
  v16 = v11[2];
  *v11 = *v8;
  v11[2] = v8[2];
  v17 = v12;
  while (1)
  {
    v18 = *(a1 + v17 + 24);
    if (v14 >= v18 && (v14 != v18 || v15 >= *(a1 + v17 + 32)) && (v18 < v14 || *(a1 + v17 + 32) < v15 || v16 >= *(a1 + v17 + 40)))
    {
      break;
    }

    *(a1 + v17 + 48) = *(a1 + v17 + 24);
    *(a1 + v17 + 64) = *(a1 + v17 + 40);
    v17 -= 24;
    if (v17 == -48)
    {
      *a1 = v14;
      a1[1] = v15;
      a1[2] = v16;
      if (++v13 != 8)
      {
        goto LABEL_32;
      }

      return v11 + 3 == a2;
    }
  }

  v19 = (a1 + v17);
  v19[6] = v14;
  v19[7] = v15;
  v19[8] = v16;
  if (++v13 != 8)
  {
    goto LABEL_32;
  }

  return v11 + 3 == a2;
}

uint64_t sub_113744C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v6 = (result + 24 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3)
      {
        if ((v7 = v6[3], *v6 < v7) || *v6 == v7 && v6[1] < v6[4] || v7 >= *v6 && v6[4] >= v6[1] && v6[2] < v6[5])
        {
          v6 += 3;
          v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
        }
      }

      v8 = *a4;
      if (*v6 >= *a4 && (*v6 != *a4 || v6[1] >= a4[1]))
      {
        v9 = a4[1];
        if (v8 < *v6 || v9 < v6[1] || v6[2] >= a4[2])
        {
          v10 = a4[2];
          *a4 = *v6;
          a4[2] = v6[2];
          if (v4 >= v5)
          {
            while (1)
            {
              v11 = v6;
              v12 = 2 * v5;
              v5 = (2 * v5) | 1;
              v6 = (result + 24 * v5);
              v13 = v12 + 2;
              if (v13 < a3)
              {
                if ((v14 = v6[3], *v6 < v14) || *v6 == v14 && v6[1] < v6[4] || v14 >= *v6 && v6[4] >= v6[1] && v6[2] < v6[5])
                {
                  v6 += 3;
                  v5 = v13;
                }
              }

              if (*v6 < v8 || *v6 == v8 && v6[1] < v9 || v8 >= *v6 && v9 >= v6[1] && v6[2] < v10)
              {
                break;
              }

              *v11 = *v6;
              v11[2] = v6[2];
              if (v4 < v5)
              {
                goto LABEL_35;
              }
            }

            v6 = v11;
          }

LABEL_35:
          *v6 = v8;
          v6[1] = v9;
          v6[2] = v10;
        }
      }
    }
  }

  return result;
}

unint64_t *sub_1137644(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v4 = 0;
  v23 = *result;
  v5 = result[2];
  v6 = result;
  do
  {
    v7 = v6;
    v8 = &v6[3 * v4];
    v6 = v8 + 3;
    v9 = 2 * v4;
    v4 = (2 * v4) | 1;
    v10 = v9 + 2;
    if (v10 < a4)
    {
      if ((v11 = v8[6], v12 = v8[3], v12 < v11) || v12 == v11 && v8[4] < v8[7] || v11 >= v12 && v8[7] >= v8[4] && v8[5] < v8[8])
      {
        v6 = v8 + 6;
        v4 = v10;
      }
    }

    *v7 = *v6;
    v7[2] = v6[2];
  }

  while (v4 <= ((a4 - 2) >> 1));
  v13 = (a2 - 24);
  if (v6 == (a2 - 24))
  {
    *v6 = v23;
    v6[2] = v5;
    return result;
  }

  *v6 = *v13;
  v6[2] = *(a2 - 8);
  *v13 = v23;
  *(a2 - 8) = v5;
  v14 = v6 - result + 24;
  if (v14 < 25)
  {
    return result;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 3) - 2;
  v16 = v15 >> 1;
  v17 = &result[3 * (v15 >> 1)];
  v18 = *v6;
  if (*v17 >= *v6)
  {
    if (*v17 != *v6 || (v19 = v6[1], v17[1] >= v19))
    {
      if (v18 < *v17)
      {
        return result;
      }

      v19 = v6[1];
      if (v19 < v17[1] || v17[2] >= v6[2])
      {
        return result;
      }
    }
  }

  else
  {
    v19 = v6[1];
  }

  v20 = v6[2];
  *v6 = *v17;
  v6[2] = v17[2];
  if (v15 >= 2)
  {
    while (1)
    {
      v21 = v17;
      v22 = v16 - 1;
      v16 = (v16 - 1) >> 1;
      v17 = &result[3 * v16];
      if (*v17 >= v18 && (*v17 != v18 || v17[1] >= v19) && (v18 < *v17 || v19 < v17[1] || v17[2] >= v20))
      {
        break;
      }

      *v21 = *v17;
      v21[2] = v17[2];
      if (v22 <= 1)
      {
        goto LABEL_27;
      }
    }

    v17 = v21;
  }

LABEL_27:
  *v17 = v18;
  v17[1] = v19;
  v17[2] = v20;
  return result;
}

uint64_t *sub_1137860(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v12 = *v2;
    v13 = 0x86BCA1AF286BCA1BLL * ((v3 - *v2) >> 3);
    v14 = v13 + 1;
    if (v13 + 1 > 0x1AF286BCA1AF286)
    {
      sub_1794();
    }

    v15 = 0x86BCA1AF286BCA1BLL * ((v4 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0xD79435E50D7943)
    {
      v16 = 0x1AF286BCA1AF286;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (v16 <= 0x1AF286BCA1AF286)
      {
        operator new();
      }

      sub_1808();
    }

    v17 = result;
    v18 = *(a2 + 112);
    v19 = 8 * ((v3 - *v2) >> 3);
    *(v19 + 96) = *(a2 + 96);
    *(v19 + 112) = v18;
    *(v19 + 128) = *(a2 + 128);
    *(v19 + 144) = *(a2 + 144);
    v20 = *(a2 + 48);
    *(v19 + 32) = *(a2 + 32);
    *(v19 + 48) = v20;
    v21 = *(a2 + 80);
    *(v19 + 64) = *(a2 + 64);
    *(v19 + 80) = v21;
    v22 = *(a2 + 16);
    v23 = 152 * v13 + 152;
    v24 = 152 * v13 - (v3 - v12);
    *v19 = *a2;
    *(v19 + 16) = v22;
    memcpy((v19 - (v3 - v12)), v12, v3 - v12);
    *v2 = v24;
    *(v2 + 8) = v23;
    *(v2 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }

    result = v17;
    *(v2 + 8) = v23;
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    v8 = *(a2 + 80);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 80) = v8;
    *(v3 + 32) = v6;
    *(v3 + 48) = v7;
    v9 = *(a2 + 96);
    v10 = *(a2 + 112);
    v11 = *(a2 + 128);
    *(v3 + 144) = *(a2 + 144);
    *(v3 + 112) = v10;
    *(v3 + 128) = v11;
    *(v3 + 96) = v9;
    *(v2 + 8) = v3 + 152;
  }

  return result;
}

uint64_t sub_1137A40(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v61 = v11;
  v62 = v10;
  v63 = v9;
  v64 = v8;
  v65 = v7;
  v66 = v6;
  v67 = v5;
  v68 = v4;
  v69 = v2;
  v70 = v3;
  v60 = 0x7FFFFFFF;
  v59 = 0x7FFFFFFFFFFFFFFFLL;
  v14 = *a2;
  v15 = a2[1];
  if (*a2 == v15)
  {
    v29 = 2147483650.0;
    v30 = 9.22337204e18;
    v31 = *(a1 + 16);
    v32 = *(a1 + 24);
    v33 = sub_4C4BD8(*a1);
    v35 = *a2;
    v34 = a2[1];
    if (v35 == v34)
    {
      return 0;
    }

LABEL_43:
    v36 = v33;
    v37 = 0;
    v38 = v31 * v29;
    v39 = v32 * v30;
    v40 = v33;
    while (*(v35 + 40) > v38 || *(v35 + 32) > v39)
    {
LABEL_44:
      v35 += 1112;
      if (v35 == v34)
      {
        return v37;
      }
    }

    v41 = *(v35 + 824) * 1000000000.0;
    if (v41 >= 0.0)
    {
      if (v41 >= 4.50359963e15)
      {
        goto LABEL_53;
      }

      v42 = (v41 + v41) + 1;
    }

    else
    {
      if (v41 <= -4.50359963e15)
      {
        goto LABEL_53;
      }

      v42 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
    }

    v41 = (v42 >> 1);
LABEL_53:
    v43 = v41;
    if (v36 < 1)
    {
      v51 = 0;
      goto LABEL_68;
    }

    v45 = sub_4C4BD8(*(v35 + 8));
    v44 = v43 / 1000000000.0;
    v46 = v44 * (v45 / v40);
    if (v46 <= 1.0)
    {
      v47 = v44 * (v45 / v40);
    }

    else
    {
      v47 = 1.0;
    }

    v48 = v47 * 1000000000.0;
    if (v46 >= 0.0)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0.0;
    }

    if (v49 >= 0.0)
    {
      if (v49 < 4.50359963e15)
      {
        v50 = (v49 + v49) + 1;
        goto LABEL_66;
      }
    }

    else if (v49 > -4.50359963e15)
    {
      v50 = (v49 + v49) - 1 + (((v49 + v49) - 1) >> 63);
LABEL_66:
      v49 = (v50 >> 1);
    }

    v51 = v49;
LABEL_68:
    if (sub_4C5074(*(v35 + 8), 20))
    {
      v52 = 40;
    }

    else
    {
      v52 = 32;
    }

    v53 = (a1 + v52);
    if (*v53 <= v43 || v51 >= *v53)
    {
      v55 = v53[1];
      v56 = v51 < v55 && v55 > v43;
      v57 = *(v35 + 1008);
      if (!v56)
      {
        v57 |= 8uLL;
      }

      *(v35 + 1008) = v57 | 0x10;
      ++v37;
    }

    goto LABEL_44;
  }

  v16 = 0x7FFFFFFF;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v19 = *(v14 + 40);
    if (v19 >= 0.0)
    {
      if (v19 >= 4.50359963e15)
      {
        goto LABEL_12;
      }

      v20 = (v19 + v19) + 1;
    }

    else
    {
      if (v19 <= -4.50359963e15)
      {
        goto LABEL_12;
      }

      v20 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
    }

    v19 = (v20 >> 1);
LABEL_12:
    v21 = v19;
    LODWORD(v58) = v19;
    if (v16 == 0x7FFFFFFF)
    {
      v16 = v58;
      v60 = v58;
      v22 = *(v14 + 32);
      if (v22 < 0.0)
      {
        goto LABEL_14;
      }
    }

    else if (v21 == 0x7FFFFFFF)
    {
      v16 = v60;
      v22 = *(v14 + 32);
      if (v22 < 0.0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v16 <= v21)
      {
        v25 = &v60;
      }

      else
      {
        v25 = &v58;
      }

      v16 = *v25;
      v60 = v16;
      v22 = *(v14 + 32);
      if (v22 < 0.0)
      {
LABEL_14:
        v23 = v22;
        if (v22 <= -4.50359963e15)
        {
          goto LABEL_26;
        }

        v24 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
        goto LABEL_25;
      }
    }

    v23 = v22;
    if (v22 >= 4.50359963e15)
    {
      goto LABEL_26;
    }

    v24 = (v22 + v22) + 1;
LABEL_25:
    v23 = (v24 >> 1);
LABEL_26:
    if (v23 >= 9.22337204e18)
    {
      v27 = 0x7FFFFFFFFFFFFFFELL;
      v58 = 0x7FFFFFFFFFFFFFFELL;
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }

    if (v22 >= 0.0)
    {
      if (v22 >= 4.50359963e15)
      {
        goto LABEL_35;
      }

      v26 = (v22 + v22) + 1;
    }

    else
    {
      if (v22 <= -4.50359963e15)
      {
        goto LABEL_35;
      }

      v26 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
    }

    v22 = (v26 >> 1);
LABEL_35:
    v27 = v22;
    v58 = v22;
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_4:
      v18 = &v58;
      goto LABEL_5;
    }

    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = &v59;
      goto LABEL_5;
    }

LABEL_38:
    if (v27 >= v17)
    {
      v18 = &v59;
    }

    else
    {
      v18 = &v58;
    }

LABEL_5:
    v17 = *v18;
    v59 = v17;
    v14 += 1112;
  }

  while (v14 != v15);
  v29 = v16;
  v30 = v17;
  v31 = *(a1 + 16);
  v32 = *(a1 + 24);
  v33 = sub_4C4BD8(*a1);
  v35 = *a2;
  v34 = a2[1];
  if (v35 != v34)
  {
    goto LABEL_43;
  }

  return 0;
}

_DWORD *sub_1137EA0(_DWORD *a1, void *a2)
{
  v8 = 15;
  strcpy(__p, "mostly_familiar");
  v4 = (1000000000 * sub_352E94(a2, __p)) / 100.0;
  if (v4 < 4.50359963e15)
  {
    v4 = (((v4 + v4) + 1) >> 1);
  }

  *a1 = v4;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = 8;
  strcpy(__p, "familiar");
  v5 = (1000000000 * sub_352E94(a2, __p)) / 100.0;
  if (v5 < 4.50359963e15)
  {
    a1[1] = (((v5 + v5) + 1) >> 1);
    if ((v8 & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else
  {
    a1[1] = v5;
    if ((v8 & 0x80000000) == 0)
    {
      return a1;
    }
  }

  operator delete(__p[0]);
  return a1;
}

void sub_1138004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1138024(BOOL *a1, void *a2)
{
  v6 = 7;
  strcpy(__p, "enabled");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_1138248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1138274(BOOL *a1, void *a2)
{
  HIBYTE(v5[2]) = 7;
  strcpy(v5, "enabled");
  v3 = sub_5F9D0(a2, v5);
  if (SHIBYTE(v5[2]) < 0)
  {
    v4 = v3;
    operator delete(v5[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_1138D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, uint64_t a11, void **a12, void *a13, uint64_t a14, void **a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_5BF68(&a19);
  v30 = *a9;
  if (*a9)
  {
    a13[33] = v30;
    operator delete(v30);
    v31 = *(a11 + 72);
    if (!v31)
    {
LABEL_6:
      v32 = *a10;
      if (!*a10)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v31 = *(a11 + 72);
    if (!v31)
    {
      goto LABEL_6;
    }
  }

  a13[30] = v31;
  operator delete(v31);
  v32 = *a10;
  if (!*a10)
  {
LABEL_7:
    v33 = *(a11 + 24);
    if (!v33)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  a13[27] = v32;
  operator delete(v32);
  v33 = *(a11 + 24);
  if (!v33)
  {
LABEL_8:
    v34 = *a11;
    if (!*a11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  a13[24] = v33;
  operator delete(v33);
  v34 = *a11;
  if (!*a11)
  {
LABEL_10:
    sub_3DB674(a13 + 10);
    v35 = *a15;
    if (*a15)
    {
      a13[5] = v35;
      operator delete(v35);
      v28 = *a12;
      if (!*a12)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v28 = *a12;
      if (!*a12)
      {
LABEL_13:
        _Unwind_Resume(a1);
      }
    }

    a13[2] = v28;
    operator delete(v28);
    goto LABEL_13;
  }

LABEL_9:
  a13[21] = v34;
  operator delete(v34);
  goto LABEL_10;
}

void sub_1138F8C(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (((v2 - *a1) >> 4) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_11390F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *v15;
  if (!*v15)
  {
    _Unwind_Resume(exception_object);
  }

  *(v15 + 8) = v17;
  operator delete(v17);
  _Unwind_Resume(exception_object);
}

unint64_t sub_1139160(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    v10 = v9 - v8 - 1112;
    if (v10 <= 0x457)
    {
      v11 = *a2;
      do
      {
LABEL_7:
        *(v11 + 1008) |= 3uLL;
        v11 += 1112;
      }

      while (v11 != v9);
      goto LABEL_8;
    }

    v12 = v10 / 0x458 + 1;
    v11 = v8 + 1112 * (v12 & 0x7FFFFFFFFFFFFELL);
    v13 = *a2;
    v14 = v12 & 0x7FFFFFFFFFFFFELL;
    do
    {
      v15 = *(v13 + 2120) | 3;
      *(v13 + 1008) |= 3uLL;
      *(v13 + 2120) = v15;
      v13 += 2224;
      v14 -= 2;
    }

    while (v14);
    if (v12 != (v12 & 0x7FFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  if (v8 == v9 || (*a1 & 1) == 0)
  {
    return 0x3AEF6CA970586723 * ((v9 - v8) >> 3);
  }

  v58[0] = a1;
  v58[1] = a2;
  v58[2] = a3;
  v58[3] = a4;
  sub_11395E4(v58, (a1 + 160), 0);
  if (*(a1 + 73) == 1)
  {
    sub_11395E4(v58, (a1 + 184), 1);
  }

  v16 = sub_11397E0(a1, a2, a3, a4);
  v18 = v17;
  v52 = v16;
  v53 = v17;
  v19 = HIDWORD(v16);
  v20 = v16;
  v51[0] = v16;
  v57 = sub_FB43D4(v51, (a1 + 8));
  v51[0] = v19;
  v56 = sub_FB43D4(v51, (a1 + 8));
  v51[0] = v18;
  v55 = sub_FB43D4(v51, (a1 + 8));
  v51[0] = v20;
  v54 = sub_FB43D4(v51, (a1 + 32));
  v21 = *a2;
  v22 = a2[1];
  v23 = *a2;
  if (*a2 != v22)
  {
    v24 = v21 + 1112;
    v23 = *a2;
    if (v21 + 1112 != v22)
    {
      v23 = *a2;
      do
      {
        if (*(v24 + 856) < *(v23 + 856))
        {
          v23 = v24;
        }

        v24 += 1112;
      }

      while (v24 != v22);
    }
  }

  v25 = *(v23 + 856);
  *&v51[0] = a1;
  *&v51[1] = &v52;
  *&v51[2] = &v54;
  *&v51[3] = &v55;
  *&v51[4] = &v56;
  *&v51[5] = &v57;
  v50[0] = a1;
  v50[1] = v51;
  if (v21 == v22)
  {
    goto LABEL_29;
  }

  do
  {
    if (*(a1 + 73) != 1 || *(v21 + 856) <= v25)
    {
      sub_113A118(v50, v21);
    }

    v21 += 1112;
  }

  while (v21 != v22);
  v29 = *a2;
  v30 = a2[1];
  if (*a2 == v30)
  {
LABEL_29:
    result = 0;
    goto LABEL_34;
  }

  v26 = v30 - v29 - 1112;
  if (v26 < 0x458)
  {
    result = 0;
    v28 = *a2;
    do
    {
LABEL_33:
      result += *(v28 + 1008) & 1;
      v28 += 1112;
    }

    while (v28 != v30);
    goto LABEL_34;
  }

  v31 = 0;
  v32 = 0;
  v33 = v26 / 0x458 + 1;
  v28 = v29 + 1112 * (v33 & 0x7FFFFFFFFFFFFELL);
  v34 = v33 & 0x7FFFFFFFFFFFFELL;
  do
  {
    v31 += *(v29 + 1008) & 1;
    v32 += *(v29 + 2120) & 1;
    v29 += 2224;
    v34 -= 2;
  }

  while (v34);
  result = v32 + v31;
  if (v33 != (v33 & 0x7FFFFFFFFFFFFELL))
  {
    goto LABEL_33;
  }

LABEL_34:
  if ((*(a1 + 73) & 1) == 0)
  {
    return result;
  }

  if (sub_1154BD4(a1 + 80, a2) < result)
  {
    v35 = sub_11397E0(a1, a2, a3, a4);
    v37 = v36;
    v52 = v35;
    v53 = v36;
    v38 = HIDWORD(v35);
    v39 = v35;
    v59 = v35;
    v57 = sub_FB43D4(&v59, (a1 + 8));
    v59 = v38;
    v56 = sub_FB43D4(&v59, (a1 + 8));
    v59 = v37;
    v55 = sub_FB43D4(&v59, (a1 + 8));
    v59 = v39;
    v54 = sub_FB43D4(&v59, (a1 + 32));
  }

  v40 = *a2;
  v41 = a2[1];
  if (*a2 == v41)
  {
    return 0;
  }

  do
  {
    if (*(v40 + 856) != v25)
    {
      sub_113A118(v50, v40);
    }

    v40 += 1112;
  }

  while (v40 != v41);
  v44 = *a2;
  v45 = a2[1];
  if (*a2 == v45)
  {
    return 0;
  }

  v42 = v45 - v44 - 1112;
  if (v42 < 0x458)
  {
    result = 0;
    v43 = *a2;
    do
    {
LABEL_49:
      result += *(v43 + 1008) & 1;
      v43 += 1112;
    }

    while (v43 != v45);
    return result;
  }

  v46 = 0;
  v47 = 0;
  v48 = v42 / 0x458 + 1;
  v43 = v44 + 1112 * (v48 & 0x7FFFFFFFFFFFFELL);
  v49 = v48 & 0x7FFFFFFFFFFFFELL;
  do
  {
    v46 += *(v44 + 1008) & 1;
    v47 += *(v44 + 2120) & 1;
    v44 += 2224;
    v49 -= 2;
  }

  while (v49);
  result = v47 + v46;
  if (v48 != (v48 & 0x7FFFFFFFFFFFFELL))
  {
    goto LABEL_49;
  }

  return result;
}