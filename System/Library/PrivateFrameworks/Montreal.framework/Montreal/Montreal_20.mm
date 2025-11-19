void sub_19D4372B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (v20)
  {
    operator delete(v20);
  }

  if (v19)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D437344(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D437880(a2, &v13);
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  if (v14 != v13)
  {
    if (((v14 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v8 = v15;
  memset(v5, 0, sizeof(v5));
  if (v17 != v16)
  {
    if (((v17 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v6 = v18;
  sub_19D436BEC(v9, v7, v5, &__p);
  if (v12)
  {
    if ((v12 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  if (__p)
  {
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }
}

void sub_19D437800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v28)
  {
    operator delete(v28);
    if (!v27)
    {
LABEL_3:
      if (!v26)
      {
LABEL_8:
        sub_19D36CF9C(&a25);
        if (v25)
        {
          operator delete(v25);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v26);
      goto LABEL_8;
    }
  }

  else if (!v27)
  {
    goto LABEL_3;
  }

  operator delete(v27);
  if (!v26)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19D437880(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v9 = 0;
  v10 = 0;
  v8 = 0;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v11 = 0;
  v3 = *(a1 + 56);
  v5 = 0;
  v6 = 0;
  __p = 0;
  if (v3)
  {
    if ((v3 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = 0;
  sub_19D373204(a2, &v8, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }
}

double sub_19D437B04(double *a1, uint64_t a2)
{
  v2 = *(a2 + 2496);
  v3 = (v2 + 1) % 0x270uLL;
  v4 = *(a2 + 4 * v3);
  v5 = v4 & 0x7FFFFFFE | *(a2 + 4 * v2) & 0x80000000;
  if (v4)
  {
    v6 = -1727483681;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 ^ *(a2 + 4 * ((v2 + 397) % 0x270uLL)) ^ (v5 >> 1);
  *(a2 + 4 * v2) = v7;
  v8 = v7 ^ (v7 >> 11);
  v9 = ((((v8 << 7) & 0x9D2C5680 ^ v8) << 15) & 0xEFC60000 ^ (v8 << 7) & 0x9D2C5680 ^ v8 ^ (((((v8 << 7) & 0x9D2C5680 ^ v8) << 15) & 0xEFC60000 ^ (v8 << 7) & 0x9D2C5680 ^ v8) >> 18));
  v11 = *a1;
  v10 = a1[1];
  if (v3 == 623)
  {
    v12 = 0;
  }

  else
  {
    v12 = v3 + 1;
  }

  v13 = *(a2 + 4 * v12);
  v14 = 397;
  if (v3 >= 0xE3)
  {
    v14 = -227;
  }

  v15 = *(a2 + 4 * (v14 + v3));
  if (v13)
  {
    v16 = -1727483681;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 ^ v15 ^ ((v13 & 0x7FFFFFFE | *(a2 + 4 * v3) & 0x80000000) >> 1);
  *(a2 + 4 * v3) = v17;
  v18 = ((v17 ^ (v17 >> 11)) << 7) & 0x9D2C5680 ^ v17 ^ (v17 >> 11);
  *(a2 + 2496) = v12;
  return v11 + (v10 - v11) * 5.42101086e-20 * (v9 + ((v18 << 15) & 0xEFC60000 ^ v18 ^ (((v18 << 15) & 0xEFC60000 ^ v18) >> 18)) * 4294967300.0);
}

void sub_19D437C34(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      v2(*(a1 + 16));
      if (*(a1 + 56))
      {
        v3 = 0;
        v4 = 32;
        do
        {
          v2(*(*(a1 + 64) + v4));
          ++v3;
          v4 += 48;
        }

        while (v3 < *(a1 + 56));
      }

      if (*(a1 + 72))
      {
        v5 = 0;
        v6 = 32;
        do
        {
          v2(*(*(a1 + 80) + v6));
          ++v5;
          v6 += 48;
        }

        while (v5 < *(a1 + 72));
      }
    }

    if (*(a1 + 56))
    {
      v7 = 0;
      v8 = 40;
      do
      {
        free(*(*(a1 + 64) + v8));
        ++v7;
        v8 += 48;
      }

      while (v7 < *(a1 + 56));
    }

    if (*(a1 + 72))
    {
      v9 = 0;
      v10 = 40;
      do
      {
        free(*(*(a1 + 80) + v10));
        ++v9;
        v10 += 48;
      }

      while (v9 < *(a1 + 72));
    }

    free(*(a1 + 40));
    free(*(a1 + 48));
    free(*(a1 + 136));
    free(*(a1 + 144));
    free(*(a1 + 64));
    free(*(a1 + 80));
    sub_19D437C34(*(a1 + 184));
    free(*(a1 + 200));
    free(*(a1 + 216));
    free(*(a1 + 224));

    free(a1);
  }
}

uint64_t sub_19D437D98(unsigned int a1, unsigned int a2)
{
  if (a1 > 0x2B)
  {
    return 0;
  }

  v4 = malloc_type_malloc(0xE8uLL, 0x10B00408DE4A9E8uLL);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  *v4 = a1;
  *(v4 + 1) = a2;
  *(v4 + 40) = 0u;
  v6 = v4 + 40;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  *(v4 + 8) = 0;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 13) = 0xFFF0000000000000;
  *(v4 + 52) = 0;
  *(v4 + 25) = 0;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 156) = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = 0;
  *(v4 + 48) = 0;
  *(v4 + 27) = 0;
  *(v4 + 28) = 0;
  if (!a2)
  {
    return v5;
  }

  v7 = malloc_type_calloc(a2, 8uLL, 0x100004000313F17uLL);
  *v6 = v7;
  if (!v7 || (v8 = malloc_type_calloc(a2, 8uLL, 0x100004000313F17uLL), (*(v5 + 48) = v8) == 0) || (v9 = malloc_type_calloc(a2, 8uLL, 0x100004000313F17uLL), (*(v5 + 136) = v9) == 0))
  {
    sub_19D437C34(v5);
    return 0;
  }

  free(*(v5 + 224));
  *(v5 + 224) = 0;
  if (*(v5 + 4))
  {
    v11 = 0;
    do
    {
      *(*v6 + 8 * v11) = 0xFFF0000000000000;
      if (sub_19D364B44(v10))
      {
        v10 = *(*(v5 + 48) + 8 * v11);
        *(*(v5 + 40) + 8 * v11) = v10;
      }

      ++v11;
    }

    while (v11 < *(v5 + 4));
    free(*(v5 + 224));
    *(v5 + 224) = 0;
    if (*(v5 + 4))
    {
      goto LABEL_16;
    }

LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

  free(0);
  *(v5 + 224) = 0;
  if (!*(v5 + 4))
  {
    goto LABEL_22;
  }

LABEL_16:
  v14 = 0;
  do
  {
    *(*(v5 + 48) + 8 * v14) = 0x7FF0000000000000;
    if (sub_19D364B44(v13))
    {
      v13 = *(*(v5 + 40) + 8 * v14);
      *(*(v5 + 48) + 8 * v14) = v13;
    }

    ++v14;
  }

  while (v14 < *(v5 + 4));
  v15 = *(v5 + 224);
LABEL_23:
  free(v15);
  *(v5 + 224) = 0;
  v16 = *(v5 + 4);
  if (!v16)
  {
    return v5;
  }

  bzero(*(v5 + 136), 8 * v16);
  return v5;
}

uint64_t sub_19D437F9C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0xE8uLL, 0x10B00408DE4A9E8uLL);
  v3 = v2;
  v4 = *(a1 + 96);
  v5 = *(a1 + 112);
  v6 = *(a1 + 144);
  *(v2 + 8) = *(a1 + 128);
  v7 = *(a1 + 80);
  v9 = *(a1 + 32);
  v8 = *(a1 + 48);
  *(v2 + 4) = *(a1 + 64);
  *(v2 + 5) = v7;
  *(v2 + 2) = v9;
  *(v2 + 3) = v8;
  v10 = *(a1 + 208);
  v11 = *(a1 + 160);
  v12 = *(a1 + 176);
  v13 = *(a1 + 192);
  *(v2 + 9) = v6;
  *(v2 + 11) = v12;
  *(v2 + 12) = v13;
  v14 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = v14;
  *(v2 + 6) = v4;
  *(v2 + 7) = v5;
  *(v2 + 10) = v11;
  *(v2 + 25) = 0;
  *(v2 + 26) = v10;
  *(v2 + 17) = 0;
  v15 = (v2 + 136);
  *(v2 + 5) = 0;
  v16 = (v2 + 40);
  *(v2 + 10) = 0;
  *(v2 + 8) = 0;
  *(v2 + 19) = 0;
  *(v2 + 15) = 0;
  *(v2 + 6) = 0;
  *(v2 + 18) = 0;
  *(v2 + 22) = 0;
  *(v2 + 23) = 0;
  *(v2 + 27) = 0;
  *(v2 + 28) = 0;
  v17 = *(v2 + 12);
  if (v17)
  {
    if (*(v2 + 2))
    {
      v18 = v17();
      *(v3 + 16) = v18;
      if (!v18)
      {
        goto LABEL_62;
      }
    }
  }

  v19 = *(a1 + 4);
  if (v19)
  {
    *v16 = malloc_type_malloc(8 * v19, 0x100004000313F17uLL);
    if (!*(a1 + 40))
    {
      goto LABEL_62;
    }

    *(v3 + 48) = malloc_type_malloc(8 * *(a1 + 4), 0x100004000313F17uLL);
    if (!*(a1 + 48))
    {
      goto LABEL_62;
    }

    *v15 = malloc_type_malloc(8 * *(a1 + 4), 0x100004000313F17uLL);
    if (!*(a1 + 136))
    {
      goto LABEL_62;
    }

    if (*(a1 + 144))
    {
      v20 = malloc_type_malloc(8 * *(a1 + 4), 0x100004000313F17uLL);
      *(v3 + 144) = v20;
      v21 = *(a1 + 144);
      if (!v21)
      {
        goto LABEL_62;
      }

      memcpy(v20, v21, 8 * *(a1 + 4));
    }

    memcpy(*(v3 + 40), *(a1 + 40), 8 * *(a1 + 4));
    memcpy(*(v3 + 48), *(a1 + 48), 8 * *(a1 + 4));
    memcpy(*(v3 + 136), *(a1 + 136), 8 * *(a1 + 4));
  }

  v22 = *(a1 + 56);
  if (!v22)
  {
    goto LABEL_35;
  }

  *(v3 + 60) = v22;
  v23 = malloc_type_malloc(48 * v22, 0x1080040FAB287DEuLL);
  *(v3 + 64) = v23;
  if (!v23)
  {
    goto LABEL_62;
  }

  memcpy(v23, *(a1 + 64), 48 * *(a1 + 56));
  v24 = *(a1 + 56);
  if (!v24)
  {
    goto LABEL_35;
  }

  v25 = *(v3 + 64);
  if (v24 == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24 & 0xFFFFFFFE;
    v27 = (v25 + 88);
    v28 = v26;
    do
    {
      *(v27 - 6) = 0;
      *v27 = 0;
      v27 += 12;
      v28 -= 2;
    }

    while (v28);
    if (v26 == v24)
    {
      goto LABEL_23;
    }
  }

  v29 = (v25 + 48 * v26 + 40);
  v30 = v24 - v26;
  do
  {
    *v29 = 0;
    v29 += 6;
    --v30;
  }

  while (v30);
LABEL_23:
  if (v17)
  {
    v31 = 0;
    v32 = *(v3 + 64);
    v33 = 32;
    do
    {
      if (*(v32 + v33))
      {
        v34 = v17();
        v32 = *(v3 + 64);
        *(v32 + v33) = v34;
        if (!v34)
        {
          goto LABEL_62;
        }

        v24 = *(a1 + 56);
      }

      ++v31;
      v33 += 48;
    }

    while (v31 < v24);
  }

  if (v24)
  {
    v35 = 0;
    for (i = 0; i < v24; ++i)
    {
      if (*(*(a1 + 64) + v35 + 40))
      {
        v37 = malloc_type_malloc(8 * *(*(v3 + 64) + v35), 0x100004000313F17uLL);
        v38 = *(v3 + 64);
        *(v38 + v35 + 40) = v37;
        if (!v37)
        {
          goto LABEL_62;
        }

        memcpy(v37, *(*(a1 + 64) + v35 + 40), 8 * *(v38 + v35));
        v24 = *(a1 + 56);
      }

      v35 += 48;
    }
  }

LABEL_35:
  v39 = *(a1 + 72);
  if (!v39)
  {
    goto LABEL_57;
  }

  *(v3 + 76) = v39;
  v40 = malloc_type_malloc(48 * v39, 0x1080040FAB287DEuLL);
  *(v3 + 80) = v40;
  if (!v40)
  {
LABEL_62:
    *(v3 + 88) = 0;
    sub_19D437C34(v3);
    return 0;
  }

  memcpy(v40, *(a1 + 80), 48 * *(a1 + 72));
  v41 = *(a1 + 72);
  if (!v41)
  {
    goto LABEL_57;
  }

  v42 = *(v3 + 80);
  if (v41 == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = v41 & 0xFFFFFFFE;
    v44 = (v42 + 88);
    v45 = v43;
    do
    {
      *(v44 - 6) = 0;
      *v44 = 0;
      v44 += 12;
      v45 -= 2;
    }

    while (v45);
    if (v43 == v41)
    {
      goto LABEL_45;
    }
  }

  v46 = (v42 + 48 * v43 + 40);
  v47 = v41 - v43;
  do
  {
    *v46 = 0;
    v46 += 6;
    --v47;
  }

  while (v47);
LABEL_45:
  if (v17)
  {
    v48 = 0;
    v49 = *(v3 + 80);
    v50 = 32;
    do
    {
      if (*(v49 + v50))
      {
        v51 = v17();
        v49 = *(v3 + 80);
        *(v49 + v50) = v51;
        if (!v51)
        {
          goto LABEL_62;
        }

        v41 = *(a1 + 72);
      }

      ++v48;
      v50 += 48;
    }

    while (v48 < v41);
  }

  if (v41)
  {
    v52 = 0;
    for (j = 0; j < v41; ++j)
    {
      if (*(*(a1 + 80) + v52 + 40))
      {
        v54 = malloc_type_malloc(8 * *(*(v3 + 80) + v52), 0x100004000313F17uLL);
        v55 = *(v3 + 80);
        *(v55 + v52 + 40) = v54;
        if (!v54)
        {
          goto LABEL_62;
        }

        memcpy(v54, *(*(a1 + 80) + v52 + 40), 8 * *(v55 + v52));
        v41 = *(a1 + 72);
      }

      v52 += 48;
    }
  }

LABEL_57:
  if (*(a1 + 184))
  {
    v56 = sub_19D437F9C();
    *(v3 + 184) = v56;
    if (!v56)
    {
      goto LABEL_62;
    }
  }

  if (*(a1 + 200))
  {
    v57 = malloc_type_malloc(8 * *(a1 + 4), 0x100004000313F17uLL);
    *(v3 + 200) = v57;
    if (v57)
    {
      memcpy(v57, *(a1 + 200), 8 * *(a1 + 4));
      return v3;
    }

    goto LABEL_62;
  }

  return v3;
}

void sub_19D438488(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 224));
    *(a1 + 224) = 0;
  }
}

uint64_t sub_19D4384C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294967294;
  }

  free(*(a1 + 224));
  *(a1 + 224) = 0;
  v6 = *(a1 + 88);
  if (v6)
  {
    v6(*(a1 + 16));
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  if (sub_19D364B24() && *(a1 + 104) < 0.0)
  {
    *(a1 + 104) = 0x7FF0000000000000;
  }

  return 1;
}

uint64_t sub_19D43855C(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 4294967294;
  }

  free(*(a1 + 224));
  *(a1 + 224) = 0;
  v4 = *(a1 + 4);
  if (*(a1 + 4))
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    result = 4294967294;
  }

  else
  {
    result = 1;
  }

  if (v4)
  {
    v7 = a2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    memcpy(*(a1 + 40), a2, 8 * v4);
    if (*(a1 + 4))
    {
      v8 = 0;
      do
      {
        v9 = *(*(a1 + 40) + 8 * v8);
        v10 = *(*(a1 + 48) + 8 * v8);
        if (v9 < v10 && sub_19D364B44(v10 - v9))
        {
          *(*(a1 + 40) + 8 * v8) = *(*(a1 + 48) + 8 * v8);
        }

        ++v8;
      }

      while (v8 < *(a1 + 4));
    }

    return 1;
  }

  return result;
}

char *sub_19D438620(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = sub_19D364A5C(*(a1 + 224), a2, &a9);
  *(a1 + 224) = result;
  return result;
}

uint64_t sub_19D438660(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 4294967294;
  }

  free(*(a1 + 224));
  *(a1 + 224) = 0;
  v4 = *(a1 + 4);
  if (*(a1 + 4))
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    result = 4294967294;
  }

  else
  {
    result = 1;
  }

  if (v4)
  {
    v7 = a2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    memcpy(*(a1 + 48), a2, 8 * v4);
    if (*(a1 + 4))
    {
      v8 = 0;
      do
      {
        v9 = *(*(a1 + 40) + 8 * v8);
        v10 = *(*(a1 + 48) + 8 * v8);
        if (v9 < v10 && sub_19D364B44(v10 - v9))
        {
          *(*(a1 + 48) + 8 * v8) = *(*(a1 + 40) + 8 * v8);
        }

        ++v8;
      }

      while (v8 < *(a1 + 4));
    }

    return 1;
  }

  return result;
}

uint64_t sub_19D438724(uint64_t a1, double a2)
{
  if (!a1)
  {
    return 4294967294;
  }

  free(*(a1 + 224));
  *(a1 + 224) = 0;
  *(a1 + 112) = a2;
  return 1;
}

uint64_t sub_19D438778(uint64_t a1, double a2)
{
  if (!a1)
  {
    return 4294967294;
  }

  free(*(a1 + 224));
  *(a1 + 224) = 0;
  *(a1 + 128) = a2;
  return 1;
}

uint64_t sub_19D4387CC(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294967294;
  }

  free(*(a1 + 224));
  *(a1 + 224) = 0;
  *(a1 + 152) = a2;
  return 1;
}

uint64_t sub_19D438818(uint64_t a1, int a2)
{
  while (a1)
  {
    free(*(a1 + 224));
    *(a1 + 224) = 0;
    *(a1 + 168) = a2;
    a1 = *(a1 + 176);
    if (!a1)
    {
      return 1;
    }
  }

  return 4294967294;
}

uint64_t sub_19D438874(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 88) = a2;
    *(result + 96) = a3;
  }

  return result;
}

_DWORD *sub_19D43888C()
{
  if (qword_1EB014828 == -1)
  {
    v0 = pthread_getspecific(qword_1EB014830);
    if (v0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_19D455524();
  v0 = pthread_getspecific(qword_1EB014830);
  if (!v0)
  {
LABEL_3:
    v1 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    pthread_setspecific(qword_1EB014830, v1);
    v0 = v1;
    *v1 = 0;
  }

LABEL_4:
  *v0 = 1;

  return sub_19D439870();
}

_DWORD *sub_19D438938()
{
  sub_19D375018();
  getpid();
  if (qword_1EB014828 == -1)
  {
    v0 = pthread_getspecific(qword_1EB014830);
    if (v0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_19D455524();
  v0 = pthread_getspecific(qword_1EB014830);
  if (!v0)
  {
LABEL_3:
    v1 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    pthread_setspecific(qword_1EB014830, v1);
    v0 = v1;
    *v1 = 0;
  }

LABEL_4:
  *v0 = 1;

  return sub_19D439870();
}

_DWORD *sub_19D4389FC()
{
  if (qword_1EB014828 == -1)
  {
    result = pthread_getspecific(qword_1EB014830);
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_19D455524();
    result = pthread_getspecific(qword_1EB014830);
    if (result)
    {
LABEL_3:
      if (*result)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  v1 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  pthread_setspecific(qword_1EB014830, v1);
  *v1 = 0;
LABEL_7:

  return sub_19D438938();
}

void sub_19D438AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    sub_19D438AD4(a1, v4);
  }

  else if (*(a1 + 152))
  {
    sub_19D4391D4(a1, 0, a3, a4);
  }

  else
  {
    sub_19D439468(a1, 0, a3, a4);
  }
}

void sub_19D438AD4(uint64_t a1, uint64_t a2)
{
  v195 = *MEMORY[0x1E69E9840];
  sub_19D362F00();
  v156 = objc_msgSend_set(MEMORY[0x1E695DFA8], v3, v4, v5);
  v6 = [MontrealNNModelNetwork alloc];
  v158 = objc_msgSend_initWithModelContainer_tensors_(v6, v7, a2, v156);
  v11 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10);
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v15 = objc_msgSend_nodes(v158, v12, v13, v14);
  v17 = 0;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v190, v194, 16);
  if (v19)
  {
    v20 = *v191;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v191 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = objc_msgSend_layerWithMontrealNode_modelContainer_(MLPLayer, v18, *(*(&v190 + 1) + 8 * i), a2);

        v17 = v22;
        if (v22)
        {
          objc_msgSend_addObject_(v11, v18, v22, v23);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v190, v194, 16);
    }

    while (v19);
  }

  v27 = objc_msgSend_inputs(v158, v24, v25, v26);
  v157 = objc_msgSend_firstObject(v27, v28, v29, v30);

  v34 = objc_msgSend_dimension(v157, v31, v32, v33);
  v38 = objc_msgSend_count(v34, v35, v36, v37) == 3;

  if (v38)
  {
    v42 = objc_msgSend_dimension(v157, v39, v40, v41);
    v45 = objc_msgSend_objectAtIndex_(v42, v43, 0, v44);
    *(a1 + 120) = objc_msgSend_unsignedIntegerValue(v45, v46, v47, v48);

    v52 = objc_msgSend_dimension(v157, v49, v50, v51);
    v55 = objc_msgSend_objectAtIndex_(v52, v53, 1, v54);
    *(a1 + 128) = objc_msgSend_unsignedIntegerValue(v55, v56, v57, v58);

    v62 = objc_msgSend_dimension(v157, v59, v60, v61);
    v65 = objc_msgSend_objectAtIndex_(v62, v63, 2, v64);
    *(a1 + 136) = objc_msgSend_unsignedIntegerValue(v65, v66, v67, v68);
  }

  else
  {
    v72 = objc_msgSend_dimension(v157, v39, v40, v41);
    v76 = objc_msgSend_count(v72, v73, v74, v75) == 2;

    if (v76)
    {
      v80 = objc_msgSend_dimension(v157, v77, v78, v79);
      v83 = objc_msgSend_objectAtIndex_(v80, v81, 0, v82);
      *(a1 + 120) = objc_msgSend_unsignedIntegerValue(v83, v84, v85, v86);

      *(a1 + 128) = 1;
      v90 = objc_msgSend_dimension(v157, v87, v88, v89);
      v93 = objc_msgSend_objectAtIndex_(v90, v91, 1, v92);
      *(a1 + 136) = objc_msgSend_unsignedIntegerValue(v93, v94, v95, v96);
    }

    else
    {
      v97 = objc_msgSend_dimension(v157, v77, v78, v79);
      v101 = objc_msgSend_count(v97, v98, v99, v100) < 2;

      if (!v101)
      {
        v153 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v102, *MEMORY[0x1E695D930], @"Input dimension not handled", 0);
        objc_exception_throw(v153);
      }

      *(a1 + 120) = vdupq_n_s64(1uLL);
      *(a1 + 136) = objc_msgSend_tensorSize(v157, v102, v103, v104);
    }
  }

  v105 = objc_msgSend_nodes(v158, v69, v70, v71);
  v109 = objc_msgSend_lastObject(v105, v106, v107, v108);
  v113 = objc_msgSend_outputs(v109, v110, v111, v112);
  v155 = objc_msgSend_firstObject(v113, v114, v115, v116);

  *(a1 + 144) = objc_msgSend_tensorSize(v155, v117, v118, v119);
  if (objc_msgSend_layerType(v17, v120, v121, v122) == 6)
  {
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v161 = 0u;
    memset(v160, 0, sizeof(v160));
    v126 = objc_msgSend_nodes(v158, v123, v124, v125);
    v130 = objc_msgSend_lastObject(v126, v127, v128, v129);
    v133 = v130;
    if (v130)
    {
      objc_msgSend_parameters_(v130, v131, a2, v132);
    }

    else
    {
      bzero(v160, 0x2C0uLL);
    }

    if (*(&v161 + 1) == 4)
    {
      v134 = [MLPLossLayer alloc];
      v138 = objc_msgSend_lastObject(v11, v135, v136, v137);
      v140 = objc_msgSend_initWithName_previousLayer_neuronType_neuronParams_(v134, v139, @"last_softmax", v138, 0, 0);

      objc_msgSend_addObject_(v11, v141, v140, v142);
    }
  }

  v143 = *(a1 + 120);
  v144 = *(a1 + 128);
  v154 = *(a1 + 136);
  v145 = *(a1 + 96);
  v146 = *(a1 + 104);
  v148 = *(a1 + 176);
  v147 = *(a1 + 184);
  v149 = objc_msgSend_optimizerParams(v158, v123, v124, v125);
  v151 = objc_msgSend_networkWithLayers_inputLength_inputHeight_inputChannels_batchSize_lossBatchSize_options_deviceHandler_optimizerParams_(MLPNetwork, v150, v11, v143, v144, v154, v145, v146, v148, v147, v149);
  v152 = *a1;
  *a1 = v151;
}

void sub_19D4391D4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v37 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  v5 = [MLPEmbeddingLayer alloc];
  v7 = objc_msgSend_initWithName_inputLength_vocabSize_embeddingDimension_(v5, v6, @"embedding", 1, *(a1 + 152), *(a1 + 160));
  objc_msgSend_addObject_(v37, v8, v7, v9);
  v10 = [MLPLSTMLayer alloc];
  v12 = objc_msgSend_initWithName_inputSize_outputSize_weightAttributes_(v10, v11, @"lstm_1", *(a1 + 160), *(a1 + 160), 32);

  objc_msgSend_addObject_(v37, v13, v12, v14);
  v15 = [MLPLSTMLayer alloc];
  v17 = objc_msgSend_initWithName_inputSize_outputSize_weightAttributes_(v15, v16, @"lstm_2", *(a1 + 160), *(a1 + 160), 32);

  objc_msgSend_addObject_(v37, v18, v17, v19);
  v20 = [MLPDenseLayer alloc];
  v22 = objc_msgSend_initWithName_numInputs_numOutputs_neuronType_neuronParams_(v20, v21, @"dense", *(a1 + 160), *(a1 + 144), 0, 0);

  objc_msgSend_addObject_(v37, v23, v22, v24);
  v25 = [MLPLossLayer alloc];
  v27 = objc_msgSend_initWithName_previousLayer_neuronType_neuronParams_(v25, v26, @"loss", v22, 0, 0);

  objc_msgSend_addObject_(v37, v28, v27, v29);
  v33 = objc_msgSend_copy(v37, v30, v31, v32);
  v35 = objc_msgSend_networkWithLayers_inputLength_inputHeight_inputChannels_batchSize_lossBatchSize_options_deviceHandler_optimizerParams_(MLPNetwork, v34, v33, 1, 1, 1, *(a1 + 96), *(a1 + 104), *(a1 + 176), *(a1 + 184), 0);
  v36 = *a1;
  *a1 = v35;
}

void sub_19D439468(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v62 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  v5 = [MLPDropoutLayer alloc];
  LODWORD(v6) = 1045220557;
  v8 = objc_msgSend_initWithName_inputLength_inputChannels_dropoutRatio_(v5, v7, @"dropout_1", *(a1 + 120), *(a1 + 136), v6);
  objc_msgSend_addObject_(v62, v9, v8, v10);
  v11 = [MLPConvolutionLayer alloc];
  v59 = 1;
  v13 = objc_msgSend_initWithName_previousLayer_kernelWidth_kernelHeight_kernelStride_outputChannels_neuronType_neuronParams_(v11, v12, @"conv_0", v8, 1, 1, 1, 256, v59, &unk_1F10C51D0);

  objc_msgSend_addObject_(v62, v14, v13, v15);
  v16 = [MLPConvolutionLayer alloc];
  LODWORD(v60) = 1;
  v18 = objc_msgSend_initWithName_previousLayer_kernelWidth_kernelHeight_kernelStride_outputChannels_neuronType_neuronParams_(v16, v17, @"conv_1", v13, 5, 1, 1, 128, v60, &unk_1F10C51E8);

  objc_msgSend_addObject_(v62, v19, v18, v20);
  v21 = [MLPPoolingLayer alloc];
  v23 = objc_msgSend_initWithName_previousLayer_kernelWidth_kernelHeight_kernelStride_(v21, v22, @"pool_1", v18, 5, 1, 5);

  objc_msgSend_addObject_(v62, v24, v23, v25);
  v26 = [MLPConvolutionLayer alloc];
  LODWORD(v61) = 1;
  v28 = objc_msgSend_initWithName_previousLayer_kernelWidth_kernelHeight_kernelStride_outputChannels_neuronType_neuronParams_(v26, v27, @"conv_2", v23, 5, 1, 1, 64, v61, &unk_1F10C5200);

  objc_msgSend_addObject_(v62, v29, v28, v30);
  v31 = [MLPPoolingLayer alloc];
  v33 = objc_msgSend_initWithName_previousLayer_kernelWidth_kernelHeight_kernelStride_(v31, v32, @"pool_2", v28, 5, 1, 5);

  objc_msgSend_addObject_(v62, v34, v33, v35);
  v36 = [MLPDropoutLayer alloc];
  LODWORD(v37) = 0.5;
  v39 = objc_msgSend_initWithName_previousLayer_dropoutRatio_(v36, v38, @"dropout_2", v33, v37);

  objc_msgSend_addObject_(v62, v40, v39, v41);
  v42 = [MLPDenseLayer alloc];
  v44 = objc_msgSend_initWithName_previousLayer_numOutputs_neuronType_neuronParams_(v42, v43, @"dense_2", v39, *(a1 + 144), 0, 0);

  objc_msgSend_addObject_(v62, v45, v44, v46);
  v47 = [MLPLossLayer alloc];
  v49 = objc_msgSend_initWithName_previousLayer_neuronType_neuronParams_(v47, v48, @"loss", v44, 0, 0);

  objc_msgSend_addObject_(v62, v50, v49, v51);
  v55 = objc_msgSend_copy(v62, v52, v53, v54);
  v57 = objc_msgSend_networkWithLayers_inputLength_inputHeight_inputChannels_batchSize_lossBatchSize_options_deviceHandler_optimizerParams_(MLPNetwork, v56, v55, *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 96), *(a1 + 104), *(a1 + 176), *(a1 + 184), 0);
  v58 = *a1;
  *a1 = v57;
}

_DWORD *sub_19D439870()
{
  v0 = off_1EE62E118();
  *v0 = v1;
  for (i = 1; i != 624; ++i)
  {
    v1 = i + 1812433253 * (v1 ^ (v1 >> 30));
    v0[i] = v1;
  }

  result = off_1EE62E130();
  *result = 624;
  return result;
}

uint64_t sub_19D439904()
{
  if (*off_1EE62E130() <= 623)
  {
    v0 = off_1EE62E118();
  }

  else
  {
    v0 = off_1EE62E118();
    if (v2 == 625)
    {
      v3 = 5489;
      *v0 = 5489;
      for (i = 1; i != 624; ++i)
      {
        v3 = i + 1812433253 * (v3 ^ (v3 >> 30));
        v0[i] = v3;
      }
    }

    v5 = 0;
    v6 = *v0;
    do
    {
      v7 = &v0[v5];
      v8 = v6 & 0x80000000;
      v9 = v0[v5 + 1];
      v6 = v0[v5 + 2];
      v10 = dword_19D478CC0[v9 & 1] ^ v0[v5 + 397] ^ ((v9 & 0x7FFFFFFE | v8) >> 1);
      v11 = dword_19D478CC0[v6 & 1] ^ v0[v5 + 398] ^ ((v6 & 0x7FFFFFFE | v9 & 0x80000000) >> 1);
      *v7 = v10;
      v7[1] = v11;
      v5 += 2;
    }

    while (v5 != 226);
    v12 = 0;
    v13 = v0[227];
    v0[226] = dword_19D478CC0[v13 & 1] ^ v0[623] ^ ((v13 & 0x7FFFFFFE | v6 & 0x80000000) >> 1);
    v14 = v13;
    do
    {
      v15 = v14 & 0x80000000;
      v14 = v0[v12 + 228];
      v0[v12 + 227] = dword_19D478CC0[v14 & 1] ^ v0[v12] ^ ((v14 & 0x7FFFFFFE | v15) >> 1);
      ++v12;
    }

    while (v12 != 396);
    v16 = 0;
    v0[623] = dword_19D478CC0[*v0 & 1] ^ v0[396] ^ ((*v0 & 0x7FFFFFFE | v0[623] & 0x80000000) >> 1);
  }

  *v1 = v16 + 1;
  v17 = v0[v16] ^ (v0[v16] >> 11);
  v18 = (((v17 << 7) & 0x9D2C5680 ^ v17) << 15) & 0xEFC60000 ^ (v17 << 7) & 0x9D2C5680 ^ v17;
  return v18 ^ (v18 >> 18);
}

void sub_19D43A114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_19D43A140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_19D43B04C(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, void *a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);

  if (v37)
  {
    operator delete(v37);
  }

  sub_19D2AE8F8(&a22, MEMORY[0x1E69E54E8]);
  MEMORY[0x19EAFA410](va);

  _Unwind_Resume(a1);
}

uint64_t sub_19D43B130(uint64_t a1, int a2)
{
  *(a1 + 160) = 0;
  v4 = MEMORY[0x1E69E5570] + 64;
  *(a1 + 112) = MEMORY[0x1E69E5570] + 64;
  v5 = *(MEMORY[0x1E69E54E8] + 16);
  v6 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 8));
  v8 = MEMORY[0x1E69E5570] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  *(a1 + 112) = v4;
  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x19EAFA3C0](a1 + 16);
  *(a1 + 72) = 0;
  v9 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = a2 | 0x10;
  if ((a2 & 8) != 0)
  {
    *(a1 + 96) = v9;
    *(a1 + 24) = v9;
    *(a1 + 32) = v9;
    *(a1 + 40) = v9;
  }

  *(a1 + 96) = v9;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v10 = *(a1 + 95);
  if (v10 < 0)
  {
    v10 = *(a1 + 80);
  }

  *(a1 + 48) = v9;
  *(a1 + 56) = v9;
  *(a1 + 64) = a1 + v10 + 72;
  return a1;
}

void sub_19D43B320(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 8) = v4;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  MEMORY[0x19EAFA410](v2);
  _Unwind_Resume(a1);
}

id sub_19D43C270(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [MLPModelLSTMDataSource alloc];
  v49 = objc_msgSend_inputSize(**a1, v8, v9, v10);
  v14 = objc_msgSend_outputSize(**a1, v11, v12, v13);
  v18 = objc_msgSend_initialWeights_0(**a1, v15, v16, v17);
  v22 = objc_msgSend_initialWeights_1(**a1, v19, v20, v21);
  v26 = objc_msgSend_initialBias_0(**a1, v23, v24, v25);
  v30 = objc_msgSend_initialBias_1(**a1, v27, v28, v29);
  v34 = objc_msgSend_weightAttributes(**a1, v31, v32, v33);
  v38 = objc_msgSend_network(**a1, v35, v36, v37);
  v42 = objc_msgSend_deviceHandler(v38, v39, v40, v41);
  v44 = v42;
  LODWORD(v45) = 1045220557;
  LODWORD(v46) = 1.0;
  if (a3 == 4)
  {
    *&v46 = 0.5;
  }

  else
  {
    *&v45 = 1.0;
  }

  v47 = objc_msgSend_initWithColumns_rows_lstmInputSize_lstmOutputSize_weightID_neuronType_neuronA_neuronB_initialWeights_0_initialWeights_1_bias_0_bias_1_weightAttributes_deviceHandler_(v7, v43, a4, a5, v49, v14, a2, a3, v45, v46, v18, v22, v26, v30, v34, v42);

  return v47;
}

id sub_19D43C3F0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_count(*(a1 + 32), a2, a3, a4))
  {
    v8 = *(a1 + 32);
  }

  else
  {
    v10 = objc_msgSend_filter(*(a1 + 40), v5, v6, v7);
    objc_msgSend_createWeightMatrices_(v10, v11, *(a1 + 32), v12);

    v8 = *(a1 + 32);
  }

  return v8;
}

id sub_19D43C47C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(a2, a2, a3, a4);
  v9 = objc_msgSend_data(v5, v6, v7, v8);
  v10 = v9;
  v14 = objc_msgSend_contents(v10, v11, v12, v13);
  v18 = objc_msgSend_data(v5, v15, v16, v17);
  v22 = objc_msgSend_length(v18, v19, v20, v21);
  bzero(v14, v22);

  v26 = objc_msgSend_network(*(a1 + 32), v23, v24, v25);
  v30 = objc_msgSend_deviceHandler(v26, v27, v28, v29);
  v33 = objc_msgSend_matrixToVector_(v30, v31, v5, v32);

  return v33;
}

id sub_19D43C5B4(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = (*(*(a1 + 40) + 16))();

  return v3;
}

void sub_19D43CDB0(_Unwind_Exception *a1)
{
  v10 = v5;

  if (v7)
  {
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void sub_19D43D844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *__p, void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19D43E7E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = objc_msgSend_filter(**a1, v7, v8, v9);
  v11 = **(a1 + 8);
  v15 = objc_msgSend_weights(**a1, v12, v13, v14);
  v19 = objc_msgSend_unsignedIntegerValue(v5, v16, v17, v18);
  memset(v34, 0, sizeof(v34));
  objc_msgSend_encodeCopyWeightsToCommandBuffer_weights_matrixId_matrix_copyFromWeightsToMatrix_matrixOffset_(v10, v20, v11, v15, v19, v6, 1, v34);

  v24 = objc_msgSend_network(**a1, v21, v22, v23);
  v28 = objc_msgSend_deviceHandler(v24, v25, v26, v27);
  v32 = objc_msgSend_data(v6, v29, v30, v31);
  objc_msgSend_importDataFromGPU_cmdBuf_(v28, v33, v32, **(a1 + 8));
}

void sub_19D43FDB8(const char *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = strlen(a1);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_19D2AD774();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v9) = v4;
    if (v4)
    {
      memcpy(&__dst, a1, v4);
    }

    *(&__dst + v5) = 0;
    v6 = HIBYTE(v9);
    v7 = SHIBYTE(v9);
    if (v9 < 0)
    {
      v6 = *(&__dst + 1);
    }

    if (v6)
    {
      *a2 = __dst;
      *(a2 + 16) = v9;
    }

    else
    {
      *(a2 + 23) = 0;
      *a2 = 0;
      if (v7 < 0)
      {
        operator delete(__dst);
      }
    }
  }

  else
  {
    *(a2 + 23) = 0;
    *a2 = 0;
  }
}

void sub_19D43FEE8(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (a1)
  {
    if (!(a1 >> 62))
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  __p = 0;
  v3 = 0;
  v4 = 0;
  sub_19D440124(a2, &v5, &__p);
  if (__p)
  {
    v3 = __p;
    operator delete(__p);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }
}

void sub_19D4400D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void *sub_19D440124(void *result, void *a2, void *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  v4 = a3[1] - *a3;
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  return result;
}

void sub_19D440208(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

double MRLInitLayerParameters(uint64_t a1)
{
  *a1 = 0x100000000;
  *(a1 + 8) = 0;
  *(a1 + 13) = 0;
  *(a1 + 24) = 0x100000000;
  *(a1 + 32) = 1;
  *(a1 + 36) = 32;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 240) = 32;
  *(a1 + 244) = 0;
  *(a1 + 376) = 0;
  *(a1 + 380) = 32;
  *(a1 + 384) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0;
  *(a1 + 464) = 0;
  *(a1 + 468) = 1112014848;
  *(a1 + 472) = 0;
  *(a1 + 484) = 0;
  *(a1 + 476) = 0;
  return result;
}

uint64_t sub_19D4402BC(double *a1, double *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 > v4)
  {
    return 1;
  }

  v5 = a1[2];
  v6 = a2[2];
  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= v6)
  {
    return ((a1 - a2) >> 3);
  }

  return 1;
}

uint64_t sub_19D440334(unsigned int a1, double (*a2)(void, const void *, void, uint64_t), uint64_t a3, float64x2_t *a4, float64x2_t *a5, void *a6, void **a7, double *a8, double a9, int a10)
{
  v153 = *MEMORY[0x1E69E9840];
  v148 = 0u;
  v149 = 0u;
  *ptr = 0u;
  v137 = a9;
  v138 = a10 % 3;
  v139 = a10 / 3 % 3;
  v140 = (a10 / 9 % 3);
  v141 = a4;
  v142 = a5;
  v143 = a8;
  v144 = a2;
  v14 = 2 * a1;
  v135 = a1;
  v136 = 2 * a1 + 3;
  v145 = a3;
  __dst[0] = 0x7FF0000000000000;
  __dst[1] = a6;
  DWORD2(v149) = 0;
  v146[1] = 0;
  sub_19D2BB1D8(&v148, sub_19D4402BC);
  v146[0] = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
  if (!v146[0] || (v146[1] = malloc_type_malloc(4 * a1, 0x100004052888210uLL)) == 0 || (LODWORD(ptr[1]) = 128, (ptr[0] = malloc_type_malloc(0x400uLL, 0x80040B8603338uLL)) == 0) || (v15 = malloc_type_malloc(8 * v136, 0x100004000313F17uLL)) == 0)
  {
LABEL_154:
    v131 = 4294967293;
    goto LABEL_155;
  }

  v16 = v15;
  v17 = v15 + 3;
  if (a1 < 1)
  {
    v27 = 0.0;
    if (v138)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (a1 < 0xA)
  {
    v18 = 0;
LABEL_8:
    v19 = &v15[v18 + 3];
    v20 = &a5->f64[v18];
    v21 = &a4->f64[v18];
    v22 = a1 - v18;
    do
    {
      *v19 = (*v20 + *v21) * 0.5;
      v23 = *v20++;
      v24 = v23;
      v25 = *v21++;
      v19[a1] = v24 - v25;
      ++v19;
      --v22;
    }

    while (v22);
    goto LABEL_10;
  }

  v18 = 0;
  v28 = &v15[a1 + 3];
  v29 = &v15[2 * a1 + 3];
  v30 = &a4->f64[a1];
  v31 = &a5->f64[a1];
  v32 = v28 < v31 && v29 > a5;
  v33 = v32;
  v35 = v17 < v30 && v28 > a4;
  v37 = v17 < v31 && v28 > a5;
  if (v29 > a4 && v28 < v30)
  {
    goto LABEL_8;
  }

  if (v33)
  {
    goto LABEL_8;
  }

  if (v35)
  {
    goto LABEL_8;
  }

  if (v37)
  {
    goto LABEL_8;
  }

  v18 = a1 & 0x7FFFFFFE;
  v39 = (v15 + 3);
  __asm { FMOV            V0.2D, #0.5 }

  v43 = v18;
  v44 = a5;
  v45 = a4;
  do
  {
    v46 = *v45++;
    v47 = v46;
    v48 = *v44++;
    *v39 = vmulq_f64(vaddq_f64(v48, v47), _Q0);
    *(v39++ + 8 * a1) = vsubq_f64(v48, v47);
    v43 -= 2;
  }

  while (v43);
  if (v18 != a1)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (!v138)
  {
    if (a1 >= 4)
    {
      v49 = a1 & 0x7FFFFFFC;
      v57 = &v15[a1 + 5];
      v58 = 0uLL;
      v59 = v49;
      v60 = 0uLL;
      do
      {
        v58 = vmlaq_f64(v58, v57[-1], v57[-1]);
        v60 = vmlaq_f64(v60, *v57, *v57);
        v57 += 2;
        v59 -= 4;
      }

      while (v59);
      v27 = vaddvq_f64(vaddq_f64(v60, v58));
      if (v49 == a1)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v49 = 0;
      v27 = 0.0;
    }

    v61 = &v15[v49 + 3 + a1];
    v62 = a1 - v49;
    do
    {
      v63 = *v61++;
      v27 = v27 + v63 * v63;
      --v62;
    }

    while (v62);
LABEL_58:
    v27 = sqrt(v27);
    goto LABEL_59;
  }

  if (a1 > 3)
  {
    v26 = a1 & 0x7FFFFFFC;
    v50 = &v15[a1 + 5];
    v51 = 0uLL;
    v52 = v26;
    v53 = 0uLL;
    do
    {
      v51 = vmaxnmq_f64(v50[-1], v51);
      v53 = vmaxnmq_f64(*v50, v53);
      v50 += 2;
      v52 -= 4;
    }

    while (v52);
    v27 = vmaxnmvq_f64(vmaxnmq_f64(v51, v53));
    if (v26 == a1)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v26 = 0;
    v27 = 0.0;
  }

  v54 = &v15[v26 + 3 + a1];
  v55 = a1 - v26;
  do
  {
    v56 = *v54++;
    v27 = fmax(v56, v27);
    --v55;
  }

  while (v55);
LABEL_59:
  v64 = v27 * 0.5;
  *v15 = v64;
  v65 = v144(v135, v17, 0, v145);
  if (v65 < *__dst)
  {
    __dst[0] = *&v65;
    memcpy(__dst[1], v17, 8 * v135);
  }

  ++**(v143 + 7);
  v16[1] = v65;
  v66 = DWORD2(v149)++;
  v16[2] = v66;
  if (!sub_19D2BB390(&v148, v16))
  {
    free(v16);
    v131 = 4294967293;
    goto LABEL_155;
  }

  v67 = sub_19D440DE0(v16, &v135);
  if (v67 != 1)
  {
    v131 = v67;
    goto LABEL_155;
  }

  v133 = a7;
  while (1)
  {
    v134 = v135;
    v68 = __dst[0];
    v69 = v137;
    v70 = ptr[1];
    if (SLODWORD(ptr[1]) < v149)
    {
      LODWORD(ptr[1]) += v149;
      v71 = malloc_type_realloc(ptr[0], 8 * (v149 + v70), 0x80040B8603338uLL);
      ptr[0] = v71;
      if (!v71)
      {
        goto LABEL_154;
      }

      v72 = v140;
      v73 = sub_19D2BB310(&v148);
      if (!v73)
      {
        goto LABEL_145;
      }

LABEL_69:
      v74 = v73;
      v75 = sub_19D2BB820(&v148);
      v76 = *(v74 + 24);
      v77 = *v76;
      v78 = v76[1];
      v79 = **(v75 + 24);
      if (v72 == 1)
      {
        *v71 = v76;
        LODWORD(v80) = 1;
      }

      else
      {
        v81 = v74;
        v82 = 1;
        v83 = v71;
        do
        {
          v80 = v82;
          *v83 = v76;
          v81 = sub_19D2BB340(v81);
          if (!v81)
          {
            break;
          }

          v76 = v81[3];
          if (*v76 != v77)
          {
            break;
          }

          ++v83;
          v82 = v80 + 1;
        }

        while (v76[1] == v78);
      }

      if (v77 != v79)
      {
        v151 = v79 * 1.0;
        v152 = 0xFFF0000000000000;
        v84 = sub_19D2BB778(&v148, &v151);
        v85 = *(v84[3] + 8);
        v151 = v77 * 1.0;
        v152 = 0xFFF0000000000000;
        for (i = sub_19D2BB778(&v148, &v151); i != v84; i = sub_19D2BB340(i))
        {
          v87 = i[3];
          v88 = *v87;
          v89 = v87[1];
          if (v89 <= v78 + (v85 - v78) * (1.0 / (v79 - v77)) * (*v87 - v77))
          {
            if (v80)
            {
              v90 = &v71[v80];
              v91 = *(v90 - 1);
              if (v88 == *v91)
              {
                if (v89 <= v91[1])
                {
                  if (v72 != 1)
                  {
                    LODWORD(v80) = v80 + 1;
                    *v90 = v87;
                  }
                }

                else
                {
                  v151 = v88 * 1.0;
                  v152 = 0xFFF0000000000000;
                  v92 = sub_19D2BB778(&v148, &v151);
                  i = sub_19D2BB850(v92);
                }

                continue;
              }

              v93 = (v80 - 2);
              if (v80 >= 2)
              {
                v94 = v80;
                do
                {
                  v95 = v71[v94 - 1];
                  v96 = v93;
                  do
                  {
                    if (!v96)
                    {
                      goto LABEL_78;
                    }

                    v97 = v71[v96--];
                    v98 = v97[1];
                    v99 = v95[1];
                    _ZF = *v97 == *v95 && v98 == v99;
                  }

                  while (_ZF);
                  if ((v89 - v98) * (*v95 - *v97) >= (v99 - v98) * (v88 - *v97))
                  {
LABEL_78:
                    LODWORD(v80) = v94;
                    break;
                  }

                  --v93;
                  LODWORD(v80) = 1;
                  v32 = v94-- <= 2;
                }

                while (!v32);
              }
            }

            v71[v80] = v87;
            LODWORD(v80) = v80 + 1;
          }
        }

        if (v72 == 1)
        {
          v71[v80] = v84[3];
          LODWORD(v80) = v80 + 1;
        }

        else
        {
          v101 = v84[3];
          v102 = &v71[v80];
          v103 = v80 + 1;
          do
          {
            v80 = v103;
            *v102 = v101;
            v104 = sub_19D2BB340(v84);
            if (!v104)
            {
              break;
            }

            v84 = v104;
            v101 = v104[3];
            if (*v101 != v79)
            {
              break;
            }

            ++v102;
            v103 = v80 + 1;
          }

          while (v101[1] == v85);
        }
      }

      if (v80 < 1)
      {
        goto LABEL_145;
      }

      v105 = 1;
LABEL_108:
      v106 = 0;
      v107 = 0;
      while (1)
      {
        v109 = v107;
        v110 = (v107 & (v107 >> 31)) - 1;
        v111 = v71[v107];
        while (1)
        {
          v112 = v109;
          if (v109 < 1)
          {
            break;
          }

          if (*v71[--v109] != *v111)
          {
            v110 = v109;
            break;
          }
        }

        if (v80 <= v107 + 1)
        {
          v113 = v107 + 1;
        }

        else
        {
          v113 = v80;
        }

        v108 = v113 - 1;
        v114 = v107;
        while (1)
        {
          v115 = v114 + 1;
          if (v114 + 1 >= v80)
          {
            break;
          }

          v116 = *v71[++v114];
          if (v116 != *v111)
          {
            v108 = v115 - 1;
            v113 = v115;
            break;
          }
        }

        v117 = v111[1];
        if (v112 < 1)
        {
          v118 = -INFINITY;
          if (v115 < v80)
          {
LABEL_124:
            v119 = *v111;
            v120 = (v117 - *(v71[v113] + 8)) / (*v111 - *v71[v113]);
            if (v113 == v80)
            {
              goto LABEL_129;
            }

            goto LABEL_128;
          }
        }

        else
        {
          v118 = (v117 - *(v71[v110] + 8)) / (*v111 - *v71[v110]);
          if (v115 < v80)
          {
            goto LABEL_124;
          }
        }

        v119 = *v111;
        v120 = -INFINITY;
        if (v113 == v80)
        {
          goto LABEL_129;
        }

LABEL_128:
        if (v117 - fmax(v118, v120) * v119 <= *__dst - fabs(*__dst) * v69)
        {
LABEL_129:
          v121 = sub_19D440DE0(v111, &v135);
          if (v121 != 1)
          {
            v131 = v121;
            a7 = v133;
            goto LABEL_155;
          }

          if (v105)
          {
            v122 = v135;
            if (v135 < 1)
            {
LABEL_137:
              v105 = 1;
            }

            else
            {
              v123 = v142;
              v124 = *(v143 + 5);
              v125 = v141;
              v126 = (v71[v107] + 8 * v134 + 24);
              while (*v126 <= *v124 || *v126 <= (*v123 - *v125) * v143[4])
              {
                ++v126;
                ++v125;
                ++v123;
                ++v124;
                if (!--v122)
                {
                  goto LABEL_137;
                }
              }

              v105 = 0;
            }
          }

          v106 = 1;
        }

        if (v140 != 1)
        {
          if (v140 == 2)
          {
            v108 = sub_19D4398D8(v113 - v107) + v107;
          }

          else
          {
            v108 = v107;
          }
        }

        v107 = v108 + 1;
        if (v108 + 1 >= v80)
        {
          if (!v106)
          {
            _ZF = v69 == 0.0;
            v69 = 0.0;
            if (_ZF)
            {
              goto LABEL_145;
            }

            goto LABEL_108;
          }

          if (!v105)
          {
            goto LABEL_149;
          }

          v131 = 4;
          a7 = v133;
          goto LABEL_155;
        }
      }
    }

    v71 = ptr[0];
    v72 = v140;
    v73 = sub_19D2BB310(&v148);
    if (v73)
    {
      goto LABEL_69;
    }

LABEL_145:
    v127 = sub_19D2BB820(&v148);
    v128 = **(v127 + 24);
    do
    {
      v129 = v127;
      v127 = sub_19D2BB850(v127);
    }

    while (v127 && **(v127 + 24) == v128);
    v130 = sub_19D440DE0(*(v129 + 24), &v135);
    if (v130 != 1)
    {
      v131 = v130;
      a7 = v133;
      break;
    }

LABEL_149:
    a7 = v133;
    if (*__dst < *&v68)
    {
      v131 = 3;
      if (sub_19D3648E4(v143, *__dst, *&v68))
      {
        break;
      }
    }
  }

LABEL_155:
  sub_19D2BB248(&v148);
  free(ptr[0]);
  free(v146[1]);
  free(v146[0]);
  *a7 = __dst[0];
  return v131;
}

uint64_t sub_19D440DE0(double *a1, int *a2)
{
  v4 = *a2;
  v5 = v4;
  v6 = &a1[v4];
  v7 = v6[3];
  if (v4 <= 1)
  {
    v8 = 0;
    if (v4 < 1)
    {
      v15 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    v9 = v6 + 4;
    v10 = 1;
    do
    {
      v11 = *v9++;
      v12 = v11;
      if (v11 > v7)
      {
        v8 = v10;
      }

      v7 = fmax(v12, v7);
      ++v10;
    }

    while (v4 != v10);
  }

  v13 = v7 * 0.05;
  if (v4 > 7)
  {
    v14 = v4 & 0x7FFFFFF8;
    v16 = vdupq_lane_s64(*&v7, 0);
    v17 = vdupq_lane_s64(*&v13, 0);
    v18 = (v6 + 7);
    v19 = 0uLL;
    v20 = v14;
    v21 = 0uLL;
    do
    {
      v23 = v18[-2];
      v22 = v18[-1];
      v25 = *v18;
      v24 = v18[1];
      v18 += 4;
      v19 = vsubq_s32(v19, vuzp1q_s32(vcgeq_f64(v17, vsubq_f64(v16, v23)), vcgeq_f64(v17, vsubq_f64(v16, v22))));
      v21 = vsubq_s32(v21, vuzp1q_s32(vcgeq_f64(v17, vsubq_f64(v16, v25)), vcgeq_f64(v17, vsubq_f64(v16, v24))));
      v20 -= 8;
    }

    while (v20);
    v15 = vaddvq_s32(vaddq_s32(v21, v19));
    if (v14 == v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v26 = &a1[v14 + 3 + v4];
  v27 = v4 - v14;
  do
  {
    v28 = *v26++;
    if (v7 - v28 <= v13)
    {
      ++v15;
    }

    --v27;
  }

  while (v27);
LABEL_17:
  v29 = a2[1];
  v30 = a2[5];
  v125 = v7;
  if (v30 == 1)
  {
LABEL_20:
    v31 = *(a2 + 10);
    v124 = *(a2 + 9);
    if (v4 <= 0)
    {
      goto LABEL_90;
    }

    v119 = &a1[v4];
    v120 = a2[1];
    v32 = v7 * 0.05;
    v33 = a1 + 3;
    v122 = vdupq_n_s64(0x7FF0000000000000uLL);
    v34 = v4;
    v35 = *(a2 + 9);
    do
    {
      while (1)
      {
        v36 = v33[v4];
        if (v7 - v36 <= v32)
        {
          break;
        }

        *v35 = v122;
        v35 += 16;
        ++v33;
        if (!--v34)
        {
          goto LABEL_37;
        }
      }

      v37 = *v33;
      *v33 = *v33 + v36 * -0.333333333;
      v38 = (*(a2 + 7))(*a2, a1 + 3, 0, *(a2 + 8));
      if (v38 < *(a2 + 11))
      {
        *(a2 + 11) = v38;
        memcpy(*(a2 + 12), a1 + 3, 8 * *a2);
      }

      v39 = *(a2 + 6);
      ++**(v39 + 56);
      *v35 = v38;
      if (sub_19D364A3C(v39))
      {
        return 4294967291;
      }

      v40 = *(a2 + 6);
      if (*(a2 + 11) < *(v40 + 8))
      {
        return 2;
      }

      if (sub_19D3649C8(v40))
      {
        return 5;
      }

      if (sub_19D3649F0(*(a2 + 6)))
      {
        return 6;
      }

      *v33 = v37 + v33[v4] * 0.333333333;
      v41 = (*(a2 + 7))(*a2, a1 + 3, 0, *(a2 + 8));
      if (v41 < *(a2 + 11))
      {
        *(a2 + 11) = v41;
        memcpy(*(a2 + 12), a1 + 3, 8 * *a2);
      }

      v42 = *(a2 + 6);
      ++**(v42 + 56);
      *(v35 + 8) = v41;
      if (sub_19D364A3C(v42))
      {
        return 4294967291;
      }

      v43 = *(a2 + 6);
      if (*(a2 + 11) < *(v43 + 8))
      {
        return 2;
      }

      if (sub_19D3649C8(v43))
      {
        return 5;
      }

      if (sub_19D3649F0(*(a2 + 6)))
      {
        return 6;
      }

      *v33++ = v37;
      v7 = v125;
      v35 += 16;
      --v34;
    }

    while (v34);
LABEL_37:
    if (v4 < 8)
    {
      v44 = 0;
      v6 = v119;
      v29 = v120;
      goto LABEL_89;
    }

    v44 = v4 & 0x7FFFFFF8;
    v76 = xmmword_19D475040;
    v77 = v31 + 1;
    v78.i64[0] = 0x400000004;
    v78.i64[1] = 0x400000004;
    v79.i64[0] = 0x800000008;
    v79.i64[1] = 0x800000008;
    v80 = v44;
    v6 = v119;
    v29 = v120;
    do
    {
      v77[-1] = v76;
      *v77 = vaddq_s32(v76, v78);
      v76 = vaddq_s32(v76, v79);
      v77 += 2;
      v80 -= 8;
    }

    while (v80);
    for (; v4 != v44; ++v44)
    {
LABEL_89:
      v31->i32[v44] = v44;
    }

LABEL_90:
    j__qsort_r(v31, v4, 4uLL, v124, sub_19D441F28);
    v81 = sub_19D2BB6FC((a2 + 26), a1);
    if (v81)
    {
      if (v15 >= 1)
      {
        v82 = v81;
        v83 = 0;
        v84 = 8 * v29;
        v85 = v6 + 3;
        v121 = (v6 + 5);
        v123 = v5 & 0xFFFFFFFC;
        v86 = v15;
        while (1)
        {
          v85[v31->i32[v83]] = v85[v31->i32[v83]] * 0.333333333;
          if (!a2[4])
          {
            break;
          }

          if (v5 < 1)
          {
            v88 = 0.0;
          }

          else
          {
            if (v5 >= 4)
            {
              v91 = 0uLL;
              v93 = v121;
              v92 = v5 & 0xFFFFFFFC;
              v94 = 0uLL;
              do
              {
                v91 = vmaxnmq_f64(v93[-1], v91);
                v94 = vmaxnmq_f64(*v93, v94);
                v93 += 2;
                v92 -= 4;
              }

              while (v92);
              v88 = vmaxnmvq_f64(vmaxnmq_f64(v91, v94));
              v87 = v5 & 0xFFFFFFFC;
              if (v5 == v123)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v87 = 0;
              v88 = 0.0;
            }

            v95 = &v85[v87];
            v96 = v5 - v87;
            do
            {
              v97 = *v95++;
              v88 = fmax(v97, v88);
              --v96;
            }

            while (v96);
          }

LABEL_114:
          v105 = v88 * 0.5;
          *a1 = v105;
          v106 = a2[32];
          a2[32] = v106 + 1;
          a1[2] = v106;
          v82 = sub_19D2BBDF0((a2 + 26), v82);
          v107 = malloc_type_malloc(v84, 0x100004000313F17uLL);
          if (!v107)
          {
            return 4294967293;
          }

          v71 = v107;
          memcpy(v107, a1, v84);
          v108 = v31->i32[v83];
          *(v71 + 8 * v108 + 24) = *(v71 + 8 * v108 + 24) - v85[v108];
          v109 = *(v124 + 2 * v108);
          LODWORD(v108) = a2[32];
          a2[32] = v108 + 1;
          *(v71 + 8) = v109;
          *(v71 + 16) = v108;
          if (!sub_19D2BB390((a2 + 26), v71))
          {
            goto LABEL_134;
          }

          v110 = malloc_type_malloc(v84, 0x100004000313F17uLL);
          if (!v110)
          {
            return 4294967293;
          }

          v71 = v110;
          memcpy(v110, a1, v84);
          v111 = v31->i32[v83];
          *(v71 + 8 * v111 + 24) = *(v71 + 8 * v111 + 24) + v85[v111];
          v112 = *(v124 + 2 * v111 + 1);
          LODWORD(v111) = a2[32];
          a2[32] = v111 + 1;
          *(v71 + 8) = v112;
          *(v71 + 16) = v111;
          if (!sub_19D2BB390((a2 + 26), v71))
          {
            goto LABEL_134;
          }

          ++v83;
          result = 1;
          if (v83 == v86)
          {
            return result;
          }
        }

        if (v5 < 1)
        {
          v90 = 0.0;
        }

        else
        {
          if (v5 < 4)
          {
            v89 = 0;
            v90 = 0.0;
            goto LABEL_111;
          }

          v98 = 0uLL;
          v100 = v121;
          v99 = v5 & 0xFFFFFFFC;
          v101 = 0uLL;
          do
          {
            v98 = vmlaq_f64(v98, v100[-1], v100[-1]);
            v101 = vmlaq_f64(v101, *v100, *v100);
            v100 += 2;
            v99 -= 4;
          }

          while (v99);
          v90 = vaddvq_f64(vaddq_f64(v101, v98));
          v89 = v5 & 0xFFFFFFFC;
          if (v5 != v123)
          {
LABEL_111:
            v102 = &v85[v89];
            v103 = v5 - v89;
            do
            {
              v104 = *v102++;
              v90 = v90 + v104 * v104;
              --v103;
            }

            while (v103);
          }
        }

        v88 = sqrt(v90);
        goto LABEL_114;
      }

      return 1;
    }

    return 0xFFFFFFFFLL;
  }

  if (!v30)
  {
    if (v15 != v4)
    {
      goto LABEL_55;
    }

    goto LABEL_20;
  }

  if (v15 >= 2 && v30 == 2)
  {
    v8 = sub_19D4398D8(v15);
    if (v4 >= 1)
    {
      for (i = 0; v4 != i; ++i)
      {
        if (v125 - v6[i + 3] <= v125 * 0.05)
        {
          if (!v8)
          {
            v8 = i;
            break;
          }

          --v8;
        }
      }
    }
  }

LABEL_55:
  v48 = sub_19D2BB6FC((a2 + 26), a1);
  if (!v48)
  {
    return 0xFFFFFFFFLL;
  }

  v49 = &v6[v8];
  v49[3] = v49[3] * 0.333333333;
  if (!a2[4])
  {
    if (v4 < 1)
    {
      v53 = 0.0;
    }

    else
    {
      if (v4 >= 4)
      {
        v52 = v4 & 0x7FFFFFFC;
        v61 = (v6 + 5);
        v62 = 0uLL;
        v63 = v52;
        v64 = 0uLL;
        do
        {
          v62 = vmlaq_f64(v62, v61[-1], v61[-1]);
          v64 = vmlaq_f64(v64, *v61, *v61);
          v61 += 2;
          v63 -= 4;
        }

        while (v63);
        v53 = vaddvq_f64(vaddq_f64(v64, v62));
        if (v52 == v4)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v52 = 0;
        v53 = 0.0;
      }

      v65 = &a1[v52 + 3 + v4];
      v66 = v4 - v52;
      do
      {
        v67 = *v65++;
        v53 = v53 + v67 * v67;
        --v66;
      }

      while (v66);
    }

LABEL_76:
    v51 = sqrt(v53);
    goto LABEL_77;
  }

  if (v4 < 1)
  {
    v51 = 0.0;
  }

  else
  {
    if (v4 > 3)
    {
      v50 = v4 & 0x7FFFFFFC;
      v54 = (v6 + 5);
      v55 = 0uLL;
      v56 = v50;
      v57 = 0uLL;
      do
      {
        v55 = vmaxnmq_f64(v54[-1], v55);
        v57 = vmaxnmq_f64(*v54, v57);
        v54 += 2;
        v56 -= 4;
      }

      while (v56);
      v51 = vmaxnmvq_f64(vmaxnmq_f64(v55, v57));
      if (v50 == v4)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v50 = 0;
      v51 = 0.0;
    }

    v58 = &a1[v50 + 3 + v4];
    v59 = v4 - v50;
    do
    {
      v60 = *v58++;
      v51 = fmax(v60, v51);
      --v59;
    }

    while (v59);
  }

LABEL_77:
  v68 = v51 * 0.5;
  *a1 = v68;
  v69 = a2[32];
  a2[32] = v69 + 1;
  a1[2] = v69;
  sub_19D2BBDF0((a2 + 26), v48);
  v70 = malloc_type_malloc(8 * v29, 0x100004000313F17uLL);
  if (!v70)
  {
    return 4294967293;
  }

  v71 = v70;
  memcpy(v70, a1, 8 * v29);
  *(v71 + 8 * v8 + 24) = *(v71 + 8 * v8 + 24) - v49[3];
  v72 = (*(a2 + 7))(*a2, v71 + 24, 0, *(a2 + 8));
  if (v72 < *(a2 + 11))
  {
    *(a2 + 11) = v72;
    memcpy(*(a2 + 12), (v71 + 24), 8 * *a2);
  }

  v73 = *(a2 + 6);
  ++**(v73 + 56);
  *(v71 + 8) = v72;
  if (sub_19D364A3C(v73))
  {
    goto LABEL_81;
  }

  v75 = *(a2 + 6);
  if (*(a2 + 11) < *(v75 + 8))
  {
LABEL_83:
    v74 = 2;
    goto LABEL_135;
  }

  if (sub_19D3649C8(v75))
  {
LABEL_85:
    v74 = 5;
    goto LABEL_135;
  }

  if (sub_19D3649F0(*(a2 + 6)))
  {
LABEL_122:
    v74 = 6;
    goto LABEL_135;
  }

  v113 = a2[32];
  a2[32] = v113 + 1;
  *(v71 + 16) = v113;
  if (!sub_19D2BB390((a2 + 26), v71))
  {
LABEL_134:
    v74 = 4294967293;
    goto LABEL_135;
  }

  v114 = malloc_type_malloc(8 * v29, 0x100004000313F17uLL);
  if (!v114)
  {
    return 4294967293;
  }

  v71 = v114;
  memcpy(v114, a1, 8 * v29);
  *(v71 + 8 * v8 + 24) = *(v71 + 8 * v8 + 24) + v49[3];
  v115 = (*(a2 + 7))(*a2, v71 + 24, 0, *(a2 + 8));
  if (v115 < *(a2 + 11))
  {
    *(a2 + 11) = v115;
    memcpy(*(a2 + 12), (v71 + 24), 8 * *a2);
  }

  v116 = *(a2 + 6);
  ++**(v116 + 56);
  *(v71 + 8) = v115;
  if (!sub_19D364A3C(v116))
  {
    v117 = *(a2 + 6);
    if (*(a2 + 11) < *(v117 + 8))
    {
      goto LABEL_83;
    }

    if (sub_19D3649C8(v117))
    {
      goto LABEL_85;
    }

    if (sub_19D3649F0(*(a2 + 6)))
    {
      goto LABEL_122;
    }

    v118 = a2[32];
    a2[32] = v118 + 1;
    *(v71 + 16) = v118;
    if (sub_19D2BB390((a2 + 26), v71))
    {
      return 1;
    }

    goto LABEL_134;
  }

LABEL_81:
  v74 = 4294967291;
LABEL_135:
  free(v71);
  return v74;
}

uint64_t sub_19D44185C(uint64_t a1, float64x2_t *a2, float64x2_t *a3, uint64_t a4)
{
  if (a1)
  {
    v9 = *(a4 + 24);
    v8 = *(a4 + 32);
    v10 = *(a4 + 16);
    if (a1 >= 6)
    {
      v11 = 0;
      if ((v10 - v9) >= 0x20 && (v10 - a2) >= 0x20 && (v10 - v8) >= 0x20)
      {
        v11 = a1 & 0xFFFFFFFC;
        v23 = v9 + 1;
        v24 = a2 + 1;
        v25 = v8 + 1;
        v26 = 16;
        v27 = v11;
        do
        {
          v28 = vmlaq_f64(v23[-1], vsubq_f64(v25[-1], v23[-1]), v24[-1]);
          v29 = vmlaq_f64(*v23, vsubq_f64(*v25, *v23), *v24);
          v30 = (v10 + v26);
          v23 += 2;
          v30[-1] = v28;
          *v30 = v29;
          v24 += 2;
          v26 += 32;
          v25 += 2;
          v27 -= 4;
        }

        while (v27);
        if (v11 == a1)
        {
LABEL_5:
          result = (*a4)(a1);
          if (!a3)
          {
            return result;
          }

          goto LABEL_8;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    do
    {
      *(v10 + 8 * v11) = v9->f64[v11] + (v8->f64[v11] - v9->f64[v11]) * a2->f64[v11];
      ++v11;
    }

    while (a1 != v11);
    goto LABEL_5;
  }

  result = (*a4)(a1, *(a4 + 16), a3, *(a4 + 8));
  if (!a3)
  {
    return result;
  }

LABEL_8:
  if (!a1)
  {
    return result;
  }

  v13 = *(a4 + 24);
  v14 = *(a4 + 32);
  if (a1 < 8)
  {
    v15 = 0;
LABEL_11:
    v16 = &v14->f64[v15];
    v17 = &v13->f64[v15];
    v18 = &a3->f64[v15];
    v19 = a1 - v15;
    do
    {
      v20 = *v16++;
      v21 = v20;
      v22 = *v17++;
      *v18 = *v18 * (v21 - v22);
      ++v18;
      --v19;
    }

    while (v19);
    return result;
  }

  v15 = 0;
  v31 = (a3 + 8 * a1);
  v33 = &v13->f64[a1] > a3 && v13 < v31;
  if (v14 < v31 && &v14->f64[a1] > a3)
  {
    goto LABEL_11;
  }

  if (v33)
  {
    goto LABEL_11;
  }

  v15 = a1 & 0xFFFFFFFC;
  v35 = v14 + 1;
  v36 = v13 + 1;
  v37 = a3 + 1;
  v38 = v15;
  do
  {
    v39 = vmulq_f64(*v37, vsubq_f64(*v35, *v36));
    v37[-1] = vmulq_f64(v37[-1], vsubq_f64(v35[-1], v36[-1]));
    *v37 = v39;
    v35 += 2;
    v36 += 2;
    v37 += 2;
    v38 -= 4;
  }

  while (v38);
  if (v15 != a1)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_19D441A58(unsigned int a1, uint64_t a2, uint64_t a3, float64x2_t *a4, float64x2_t *a5, float64x2_t *a6, void **a7, uint64_t a8, double a9, int a10)
{
  v117[0] = a2;
  v117[1] = a3;
  v119 = a4;
  v120 = a5;
  v17 = malloc_type_malloc(32 * a1, 0x100004000313F17uLL);
  v118 = v17;
  if (v17)
  {
    v18 = a10;
    v19 = a1;
    if (a1 <= 0)
    {
      v40 = *(a8 + 40);
      *(a8 + 40) = v17 + 24 * a1;
      v31 = sub_19D440334(a1, sub_19D44185C, v117, (v17 + 8 * a1), &v17[a1], a6, a7, a8, a9, a10);
      *(a8 + 40) = v40;
      goto LABEL_14;
    }

    v20 = 2 * a1;
    v21 = *(a8 + 40);
    v22 = 3 * a1;
    v23 = (v17 + 8 * v20);
    v24 = 8 * a1;
    v25 = (v17 + 8 * v22);
    if (a1 >= 0x1C)
    {
      v116 = a7;
      v42 = (v17 + 8 * a1);
      v43 = (a6 + v24);
      v44 = &v17[a1];
      v45 = (v17 + 8 * a1 + 8 * v20);
      v46 = (v17 + 8 * a1 + 8 * v22);
      v47 = a4 + v24;
      v48 = a5 + v24;
      v49 = v21 + v24;
      v51 = v45 > a6 && v23 < v43;
      v115 = v51;
      v53 = v46 > a6 && v25 < v43;
      v114 = v53;
      v55 = v47 > a6 && v43 > a4;
      v113 = v55;
      v57 = v48 > a6 && v43 > a5;
      v112 = v57;
      v59 = v49 > a6 && v21 < v43;
      v111 = v59;
      v61 = v42 < v45 && v23 < v44;
      v63 = v42 < v46 && v25 < v44;
      v65 = v42 < v47 && v44 > a4;
      v67 = v42 < v48 && v44 > a5;
      v69 = v42 < v49 && v21 < v44;
      v71 = v23 < v46 && v25 < v45;
      v73 = v23 < v47 && v45 > a4;
      v75 = v23 < v48 && v45 > a5;
      v77 = v23 < v49 && v21 < v45;
      v79 = v25 < v47 && v46 > a4;
      v81 = v25 < v48 && v46 > a5;
      v83 = v25 < v49 && v21 < v46;
      v84 = v42 < v43 && v44 > a6;
      if (v84 || v115 || v114 || v113 || v112 || v111 || v61 || v63 || v65 || v67 || v69)
      {
        a7 = v116;
        v18 = a10;
        v22 = 3 * a1;
        v19 = a1;
        v26 = 0;
      }

      else
      {
        v18 = a10;
        v19 = a1;
        v26 = 0;
        if (v71 || v73)
        {
          a7 = v116;
          v22 = 3 * a1;
        }

        else
        {
          a7 = v116;
          if (v75 || v77)
          {
            v22 = 3 * a1;
          }

          else
          {
            v22 = 3 * a1;
            if (!v79 && !v81 && !v83)
            {
              v26 = a1 & 0x7FFFFFFE;
              __asm { FMOV            V0.2D, #1.0 }

              v89 = v26;
              v90 = v25;
              v91 = *(a8 + 40);
              v92 = &v17->f64[v20];
              v93 = a5;
              v94 = a4;
              v95 = a6;
              do
              {
                v96 = *v94++;
                v97 = v96;
                v98 = vsubq_f64(*v95, v96);
                v99 = *v93++;
                v100 = vsubq_f64(v99, v97);
                *v95++ = vdivq_f64(v98, v100);
                v42->f64[0] = 0.0;
                v42->f64[1] = 0.0;
                ++v42;
                *v92++ = _Q0;
                v101 = *v91++;
                *v90++ = vdivq_f64(v101, v100);
                v89 -= 2;
              }

              while (v89);
              if (v26 == a1)
              {
                goto LABEL_7;
              }
            }
          }
        }
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = 0;
    v28 = &v17->f64[v26 + v20];
    v29 = (a5 + 8 * v26);
    v30 = (a4 + 8 * v26);
    do
    {
      a6->f64[v26 + v27] = (a6->f64[v26 + v27] - v30->f64[v27]) / (v29->f64[v27] - v30->f64[v27]);
      v17->f64[v26 + a1 + v27] = 0.0;
      *&v28[8 * v27] = 0x3FF0000000000000;
      v17->f64[v26 + v22 + v27] = *(v21 + 8 * v26 + 8 * v27) / (v29->f64[v27] - v30->f64[v27]);
      ++v27;
    }

    while (a1 - v26 != v27);
LABEL_7:
    *(a8 + 40) = v25;
    v31 = sub_19D440334(a1, sub_19D44185C, v117, (v17 + 8 * v19), v23, a6, a7, a8, a9, v18);
    *(a8 + 40) = v21;
    if (a1 >= 6)
    {
      v32 = 0;
      v102 = a6 + v24;
      v104 = (a5 + v24) > a6 && v102 > a5;
      if ((v102 <= a4 || (a4 + v24) <= a6) && !v104)
      {
        v32 = a1 & 0x7FFFFFFC;
        v106 = a4 + 1;
        v107 = a6 + 1;
        v108 = a5 + 1;
        v109 = v32;
        do
        {
          v110 = vmlaq_f64(*v106, vsubq_f64(*v108, *v106), *v107);
          v107[-1] = vmlaq_f64(v106[-1], vsubq_f64(v108[-1], v106[-1]), v107[-1]);
          *v107 = v110;
          v106 += 2;
          v107 += 2;
          v108 += 2;
          v109 -= 4;
        }

        while (v109);
        if (v32 == a1)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = &a5->f64[v32];
    v34 = &a6->f64[v32];
    v35 = &a4->f64[v32];
    v36 = a1 - v32;
    do
    {
      v37 = *v35++;
      v38 = v37;
      v39 = *v33++;
      *v34 = v38 + (v39 - v38) * *v34;
      ++v34;
      --v36;
    }

    while (v36);
LABEL_14:
    free(v118);
    return v31;
  }

  return 4294967293;
}

uint64_t sub_19D441F28(uint64_t a1, int *a2, int *a3)
{
  v3 = fmin(*(a1 + 16 * *a2), *(a1 + 16 * *a2 + 8));
  v4 = fmin(*(a1 + 16 * *a3), *(a1 + 16 * *a3 + 8));
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 > v4;
  }
}

void sub_19D442ADC(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_19D443054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *__p, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30, void *a31, void *a32, uint64_t a33, void *a34, void *a35, void *a36)
{
  operator delete(__p);
  _Block_object_dispose((v39 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_19D4431EC(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, void *a5)
{
  v46 = a4;
  v9 = a5;
  if (a3)
  {
    v10 = objc_alloc(MEMORY[0x1E6974660]);
    v47 = objc_msgSend_initWithDevice_count_(v10, v11, *(a1 + 32), a3);
    v12 = MEMORY[0x1E6974480];
    v16 = objc_msgSend_rows(*(a1 + 40), v13, v14, v15);
    v20 = objc_msgSend_columns(*(a1 + 40), v17, v18, v19);
    v24 = objc_msgSend_rowBytes(*(a1 + 40), v21, v22, v23);
    v28 = objc_msgSend_dataType(*(a1 + 40), v25, v26, v27);
    v31 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v12, v29, v16, v20, v24, v28);
    if (*(a1 + 104) >= (*(*(*(a1 + 96) + 8) + 24) + a2))
    {
      v32 = 0;
      do
      {
        v33 = objc_alloc(MEMORY[0x1E6974478]);
        v35 = objc_msgSend_initWithBuffer_descriptor_(v33, v34, *(a1 + 48), v31);
        v39 = objc_msgSend_labels(*(a1 + 56), v36, v37, v38);
        v41 = objc_msgSend_subarrayWithRange_(v39, v40, *(*(*(a1 + 96) + 8) + 24), a2);

        LOBYTE(v45) = *(a1 + 112);
        v44 = objc_msgSend_seqTrainingForward_subMatrix_reductionSumResults_alphaVec_labels_rowOffset_computeNRows_computeLossGradient_(*(a1 + 64), v42, *(a1 + 72), v35, v9, *(a1 + 80), v41, *(*(*(a1 + 96) + 8) + 24), a2, v45);
        if (*(a1 + 112) == 1)
        {
          objc_msgSend_setCopyOperationAtIndex_sourceMatrix_destinationMatrix_offsets_(v47, v43, v32, v44, *(a1 + 88), 0, *(*(*(a1 + 96) + 8) + 24));
        }

        *(*(*(a1 + 96) + 8) + 24) += a2;
        ++v32;
      }

      while (*(a1 + 104) >= (*(*(*(a1 + 96) + 8) + 24) + a2));
    }

    objc_msgSend_encodeToCommandBuffer_copyDescriptor_(v46, v30, *(a1 + 72), v47);
  }
}

void sub_19D443B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27)
{
  if (v28)
  {
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

__n128 sub_19D4443DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_1F10B9AF8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 44) = 0;
  result = *a3;
  v7 = *(a3 + 16);
  *(a1 + 80) = *(a3 + 32);
  *(a1 + 48) = result;
  *(a1 + 64) = v7;
  *a1 = &unk_1F10BDAD8;
  return result;
}

uint64_t sub_19D444434(uint64_t result, int a2)
{
  v2 = **(result + 24);
  if (v2)
  {
    v3 = a2 < 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v5 = result;
    v6 = 0;
    v7 = **(result + 32) + 4 * *(result + 56);
    v8 = v2 + 4 * *(result + 52);
    v9 = **(result + 16) + 4 * *(result + 48);
    do
    {
      v10 = *(v5 + 72);
      switch(v10)
      {
        case 2:
          if (*(v5 + 44) == 1)
          {
            result = MEMORY[0x19EAFB210](v9, 1, v5 + 40, v7, 1, *(v5 + 76));
          }

          else if (*(v5 + 80) < 2)
          {
            result = MEMORY[0x19EAFB190](v9, 1, v8, 1, v7, 1, *(v5 + 76));
          }

          else
          {
            v13 = 0;
            v14 = v8;
            do
            {
              v15 = 4 * *(v5 + 76) * v13;
              result = MEMORY[0x19EAFB210](v9 + v15, 1, v14, v7 + v15, 1);
              ++v13;
              v14 += 4;
            }

            while (v13 < *(v5 + 80));
          }

          break;
        case 1:
          if (*(v5 + 44) == 1)
          {
            v19 = -*(v5 + 40);
            v11 = *(v5 + 76);
            v12 = &v19;
LABEL_16:
            result = MEMORY[0x19EAFB1B0](v9, 1, v12, v7, 1, v11);
            break;
          }

          result = MEMORY[0x19EAFB240](v8, 1, v9, 1, v7, 1, *(v5 + 76));
          break;
        case 0:
          if (*(v5 + 44) != 1)
          {
            if (*(v5 + 80) < 2)
            {
              result = MEMORY[0x19EAFB120](v9, 1, v8, 1, v7, 1, *(v5 + 76));
            }

            else
            {
              v16 = 0;
              v17 = v8;
              do
              {
                v18 = 4 * *(v5 + 76) * v16;
                result = MEMORY[0x19EAFB1B0](v9 + v18, 1, v17, v7 + v18, 1);
                ++v16;
                v17 += 4;
              }

              while (v16 < *(v5 + 80));
            }

            break;
          }

          v11 = *(v5 + 76);
          v12 = (v5 + 40);
          goto LABEL_16;
      }

      v9 += 4 * *(v5 + 60);
      v8 += 4 * *(v5 + 64);
      v7 += 4 * *(v5 + 68);
      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

void sub_19D44467C(uint64_t a1, void *a2)
{
  v2 = a2;
  sub_19D3BA4E0(v2, &theArray);
  v3 = theArray;
  if (!theArray)
  {
    goto LABEL_15;
  }

  Count = CFArrayGetCount(theArray);
  v5 = Count;
  v6 = theArray;
  if (!theArray)
  {
    v7 = 0;
    if (!Count)
    {
      goto LABEL_13;
    }

LABEL_6:
    if (v3 == v6)
    {
      v9 = 0;
      do
      {
        if (v7 == v9)
        {
          break;
        }

        sub_19D446E68(v3, v9++);
      }

      while (v5 != v9);
    }

    else
    {
      v8 = 0;
      do
      {
        sub_19D446E68(v3, v8++);
      }

      while (v5 != v8);
    }

    goto LABEL_13;
  }

  v7 = CFArrayGetCount(theArray);
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_13:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_15:
}

void sub_19D444770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3B2E0C(va);

  _Unwind_Resume(a1);
}

void sub_19D444788(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D3B2E0C(va);

  _Unwind_Resume(a1);
}

void sub_19D4447A0(void *a1, uint64_t *a2)
{
  v3 = a1;
  v7 = v3;
  v8 = *a2;
  if (*a2 > 0x17)
  {
    goto LABEL_16;
  }

  if (((1 << v8) & 0x81623C) != 0)
  {
LABEL_3:
    v9 = 0;
    for (i = a2 + 16; ; i += 4)
    {
      v11 = objc_msgSend_inputsWithDimensions(v7, v4, v5, v6);
      v15 = objc_msgSend_count(v11, v12, v13, v14);

      if (v9 >= v15)
      {
        break;
      }

      v19 = objc_msgSend_inputsWithDimensions(v7, v16, v17, v18);
      v22 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, v9, v21);

      *i = objc_msgSend_tensorSize(v22, v23, v24, v25);
      ++v9;
    }

    v26 = 0;
    for (j = a2 + 32; ; j += 4)
    {
      v28 = objc_msgSend_outputsWithDimensions(v7, v16, v17, v18);
      v32 = objc_msgSend_count(v28, v29, v30, v31);

      if (v26 >= v32)
      {
        break;
      }

      v36 = objc_msgSend_outputsWithDimensions(v7, v33, v34, v35);
      v39 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, v26, v38);

      *j = objc_msgSend_tensorSize(v39, v40, v41, v42);
      ++v26;
    }

    goto LABEL_49;
  }

  if (((1 << v8) & 0x440) != 0)
  {
    v62 = objc_msgSend_inputsWithDimensions(v3, v4, v5, v6);
    v65 = objc_msgSend_objectAtIndex_(v62, v63, 0, v64);
    *(a2 + 32) = objc_msgSend_tensorSize(v65, v66, v67, v68);

    v72 = objc_msgSend_outputsWithDimensions(v7, v69, v70, v71);
    v75 = objc_msgSend_objectAtIndex_(v72, v73, 0, v74);
    *(a2 + 64) = objc_msgSend_tensorSize(v75, v76, v77, v78) >> 1;

    goto LABEL_49;
  }

  if (((1 << v8) & 0x1800) != 0)
  {
    v43 = objc_msgSend_outputsWithDimensions(v3, v4, v5, v6);
    v46 = objc_msgSend_objectAtIndex_(v43, v44, 0, v45);
    v50 = objc_msgSend_dimension(v46, v47, v48, v49);
    sub_19D3BA4E0(v50, &v110);

    v54 = objc_msgSend_inputsWithDimensions(v7, v51, v52, v53);
    v57 = objc_msgSend_objectAtIndex_(v54, v55, 0, v56);
    v61 = objc_msgSend_dimension(v57, v58, v59, v60);
    sub_19D3BA4E0(v61, &theArray);

    if (!theArray)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (CFArrayGetCount(theArray) == 2)
    {
      if (!theArray)
      {
        v99 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v99, "Could not construct");
        __cxa_throw(v99, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      *(a2 + 32) = sub_19D446F30(theArray, 0);
      *(a2 + 33) = 1;
      if (!theArray)
      {
        v101 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v101, "Could not construct");
        __cxa_throw(v101, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      *(a2 + 34) = sub_19D446F30(theArray, 1uLL);
    }

    else
    {
      if (!theArray)
      {
        v100 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v100, "Could not construct");
        __cxa_throw(v100, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      Count = CFArrayGetCount(theArray);
      if (Count)
      {
        for (k = 0; k != Count; ++k)
        {
          if (!theArray)
          {
            v94 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v94, "Could not construct");
            __cxa_throw(v94, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          *(a2 + k + 32) = sub_19D446F30(theArray, k);
        }
      }
    }

    if (!v110)
    {
      v97 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v97, "Could not construct");
      __cxa_throw(v97, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (CFArrayGetCount(v110) == 3)
    {
      if (!v110)
      {
        v102 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v102, "Could not construct");
        __cxa_throw(v102, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v90 = sub_19D446F30(v110, 2uLL);
    }

    else
    {
      if (!v110)
      {
        v103 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v103, "Could not construct");
        __cxa_throw(v103, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (CFArrayGetCount(v110) != 2)
      {
        v104 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v104, "Expected oututDims to have size 3 or 2.");
        __cxa_throw(v104, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (!v110)
      {
        v105 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v105, "Could not construct");
        __cxa_throw(v105, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v90 = sub_19D446F30(v110, 1uLL);
    }

    *(a2 + 64) = v90;
    if (theArray)
    {
      CFRelease(theArray);
    }

    if (v110)
    {
      CFRelease(v110);
    }
  }

  else
  {
LABEL_16:
    if (v8 != 1)
    {
      if (v8)
      {
        goto LABEL_49;
      }

      goto LABEL_3;
    }

    v79 = objc_msgSend_inputsWithDimensions(v3, v4, v5, v6);
    v82 = objc_msgSend_objectAtIndex_(v79, v80, 0, v81);
    v86 = objc_msgSend_dimension(v82, v83, v84, v85);
    sub_19D3BA4E0(v86, &v110);

    if (!v110)
    {
      v98 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v98, "Could not construct");
      __cxa_throw(v98, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (CFArrayGetCount(v110) == 2)
    {
      if (!v110)
      {
        v106 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v106, "Could not construct");
        __cxa_throw(v106, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v87 = sub_19D446F30(v110, 0);
      if (!v110)
      {
        v108 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v108, "Could not construct");
        __cxa_throw(v108, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      *(a2 + 32) = sub_19D446F30(v110, 1uLL) * v87;
    }

    else
    {
      if (!v110)
      {
        v107 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v107, "Could not construct");
        __cxa_throw(v107, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v91 = CFArrayGetCount(v110);
      if (v91)
      {
        v92 = 0;
        v93 = a2 + 16;
        do
        {
          if (!v110)
          {
            v95 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v95, "Could not construct");
            __cxa_throw(v95, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          *(v93 + v92) = sub_19D446F30(v110, v92);
          ++v92;
        }

        while (v91 != v92);
      }
    }

    if (v110)
    {
      CFRelease(v110);
    }
  }

LABEL_49:
}

void sub_19D444F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v11);
  sub_19D3B2E0C(&a10);

  _Unwind_Resume(a1);
}

void sub_19D445170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_19D3B2E0C(&a9);
  sub_19D3B2E0C(&a10);

  _Unwind_Resume(a1);
}

void sub_19D445248(_BOOL8 *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = v3;
  v22.__r_.__value_.__r.__words[0] = objc_msgSend_UTF8String(v5, v6, v7, v8);
  if (!sub_19D446FF8(*a1, &v22.__r_.__value_.__l.__data_))
  {
    v10 = sub_19D398AE4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v4;
      v15 = objc_msgSend_UTF8String(v4, v12, v13, v14);
      sub_19D455538(v15, buf, v10);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    v17 = v4;
    v21 = objc_msgSend_UTF8String(v4, v18, v19, v20);
    sub_19D3BAFCC("dict does not have key: ", &v21);
    std::runtime_error::runtime_error(v16, &v22);
    __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }
}

void sub_19D4453B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_19D44541C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v144 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v134 = a3;
  bzero(a3, 0x2C0uLL);
  v133 = v5;
  v9 = objc_msgSend_nodeStr(v5, v6, v7, v8);
  *a3 = sub_19D4505A8(v9);

  for (i = 7; ; ++i)
  {
    v14 = objc_msgSend_activations(v133, v10, v11, v12);
    v18 = objc_msgSend_count(v14, v15, v16, v17);

    if (i - 7 >= v18)
    {
      break;
    }

    v22 = objc_msgSend_activations(v133, v19, v20, v21);
    v25 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, i - 7, v24);

    a3[i] = sub_19D450AE0(v25);
  }

  v26 = objc_msgSend_properties(v133, v19, v20, v21);
  a3[15] = sub_19D45134C(v26, v27, v28, v29);

  v33 = objc_msgSend_properties(v133, v30, v31, v32);
  a3[6] = sub_19D450DA8(v33, v34, v35, v36);

  v40 = objc_msgSend_properties(v133, v37, v38, v39);
  a3[4] = sub_19D4511A4(v40, v41, v42, v43);

  v47 = objc_msgSend_properties(v133, v44, v45, v46);
  a3[5] = sub_19D451278(v47, v48, v49, v50);

  a3[2] = 0;
  a3[3] = 0;
  v54 = objc_msgSend_properties(v133, v51, v52, v53);
  sub_19D2A7050(v54, &v142);

  v141 = &v142;
  v55 = *a3;
  if (v55 == sub_19D445CC0("LSTM"))
  {
    v59 = objc_msgSend_properties(v133, v56, v57, v58);
    v62 = objc_msgSend_objectForKeyedSubscript_(v59, v60, off_1EB013488, v61);

    v65 = objc_msgSend_exMRL_numberForKey_(v62, v63, off_1EB0134A8, v64);
    *(a3 + 80) = objc_msgSend_unsignedIntegerValue(v65, v66, v67, v68);

    v71 = objc_msgSend_exMRL_numberForKey_(v62, v69, off_1EB0134B0, v70);
    objc_msgSend_floatValue(v71, v72, v73, v74);
    *(a3 + 108) = v75;

    v78 = objc_msgSend_exMRL_numberForKey_(v62, v76, off_1EB0134B8, v77);
    objc_msgSend_floatValue(v78, v79, v80, v81);
    *(a3 + 109) = v82;
  }

  else
  {
    v83 = *a3;
    if (v83 == sub_19D445CC0("Embedding") || (v84 = *a3, v84 == sub_19D445CC0("EmbeddingLegacy")))
    {
      sub_19D446264(&cf, &v141, off_1EB013478);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      *(a3 + 80) = sub_19D446F30(cf, 0);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v110 = *a3;
      v111 = sub_19D445CC0("Pooling");
      v112 = *a3;
      v113 = sub_19D445CC0("Convolution");
      if (v110 == v111 || v112 == v113)
      {
        sub_19D446264(&cf, &v141, off_1EB013490);
        if (!cf)
        {
          v129 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v129, "Could not construct");
          __cxa_throw(v129, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        *(v134 + 320) = sub_19D446F30(cf, 0);
        if (!cf)
        {
          v130 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v130, "Could not construct");
          __cxa_throw(v130, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        *(v134 + 324) = sub_19D446F30(cf, 1uLL);
        sub_19D446264(&v139, &v141, off_1EB013498);
        if (!v139)
        {
          v131 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v131, "Could not construct");
          __cxa_throw(v131, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        *(v134 + 328) = sub_19D446F30(v139, 0);
        if (!v139)
        {
          v132 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v132, "Could not construct");
          __cxa_throw(v132, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        *(v134 + 332) = sub_19D446F30(v139, 1uLL);
        if (v139)
        {
          CFRelease(v139);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      else if (*v134 == 2 && *(v134 + 56) == 6)
      {
        v117 = objc_msgSend_properties(v133, v114, v115, v116);
        v120 = objc_msgSend_objectForKeyedSubscript_(v117, v118, off_1EB013488, v119);

        v123 = objc_msgSend_objectForKeyedSubscript_(v120, v121, off_1EB0134A0, v122);
        objc_msgSend_floatValue(v123, v124, v125, v126);
        *(v134 + 384) = v127;
      }
    }
  }

  sub_19D4447A0(v133, v134);
  if (a2)
  {
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v88 = objc_msgSend_weights(v133, v85, v86, v87);
    v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v135, v143, 16);
    if (v93)
    {
      v94 = *v136;
      do
      {
        for (j = 0; j != v93; ++j)
        {
          if (*v136 != v94)
          {
            objc_enumerationMutation(v88);
          }

          v96 = *(*(&v135 + 1) + 8 * j);
          v97 = off_1EB014878;
          v98 = objc_msgSend_index(v96, v90, v91, v92);
          v102 = objc_msgSend_unsignedIntegerValue(v98, v99, v100, v101);
          v103 = v97(a2, v102);

          if (v103)
          {
            v104 = objc_msgSend_name(v96, v90, v91, v92);
            v105 = sub_19D4513A0(v104, v134);

            if (v105)
            {
              *v105 = CFDataGetBytePtr(v103);
              v109 = objc_msgSend_dimension(v96, v106, v107, v108);
              sub_19D44467C(v109, v109);
            }

            CFRelease(v103);
          }
        }

        v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v90, &v135, v143, 16);
      }

      while (v93);
    }
  }

  if (v142)
  {
    CFRelease(v142);
  }
}

void sub_19D445B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, const void *a20, uint64_t a21, const void *a22)
{
  __cxa_free_exception(v22);
  sub_19D3B2E0C(&a19);
  sub_19D3B2E0C(&a20);
  sub_19D2C08B0(&a22);

  _Unwind_Resume(a1);
}

uint64_t sub_19D445CC0(const char *a1)
{
  v28 = a1;
  v2 = strlen(a1);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_19D2AD774();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  v27 = v2;
  if (v2)
  {
    memcpy(&__dst, a1, v2);
    *(&__dst + v3) = 0;
    v4 = v27;
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v4 = v27;
    if ((v27 & 0x80000000) == 0)
    {
LABEL_5:
      if (v4 <= 0xCu)
      {
        if (v4 != 9)
        {
          if (v4 != 10)
          {
            if (v4 != 11)
            {
              goto LABEL_86;
            }

            if (__dst != 0x74756C6F766E6F43 || *(&__dst + 3) != 0x6E6F6974756C6F76)
            {
              goto LABEL_86;
            }

LABEL_95:
            result = 11;
            if (v27 < 0)
            {
              goto LABEL_107;
            }

            return result;
          }

          if (__dst != 0x6974617669746341 || WORD4(__dst) != 28271)
          {
            goto LABEL_86;
          }

LABEL_80:
          result = 2;
          if ((v27 & 0x80000000) == 0)
          {
            return result;
          }

          goto LABEL_107;
        }

        p_dst = &__dst;
LABEL_61:
        v16 = *p_dst;
        v17 = *(p_dst + 8);
        if (v16 == 0x6E69646465626D45 && v17 == 103)
        {
          result = 23;
          if ((v27 & 0x80000000) == 0)
          {
            return result;
          }

          goto LABEL_107;
        }

        goto LABEL_86;
      }

      if (v4 != 13)
      {
        if (v4 != 15)
        {
          if (v4 != 18)
          {
            goto LABEL_86;
          }

          v13 = __dst == 0x726F4E6863746142 && *(&__dst + 1) == 0x6974617A696C616DLL;
          if (!v13 || v26 != 28271)
          {
            goto LABEL_86;
          }

          goto LABEL_58;
        }

        if (__dst != 0x6E69646465626D45 || *(&__dst + 7) != 0x79636167654C676ELL)
        {
          goto LABEL_86;
        }

LABEL_100:
        result = 4;
        if (v27 < 0)
        {
          goto LABEL_107;
        }

        return result;
      }

      if (__dst != 0x6E657461636E6F43 || *(&__dst + 5) != 0x6E6F6974616E6574)
      {
        goto LABEL_86;
      }

LABEL_73:
      result = 3;
      if ((v27 & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_107;
    }
  }

  if (*(&__dst + 1) == 10 && *__dst == 0x6974617669746341 && *(__dst + 8) == 28271)
  {
    goto LABEL_80;
  }

  if (*(&__dst + 1) == 18)
  {
    v7 = *__dst == 0x726F4E6863746142 && *(__dst + 8) == 0x6974617A696C616DLL;
    if (v7 && *(__dst + 16) == 28271)
    {
LABEL_58:
      result = 1;
      if ((v27 & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_107;
    }
  }

  if (*(&__dst + 1) == 11 && *__dst == 0x74756C6F766E6F43 && *(__dst + 3) == 0x6E6F6974756C6F76)
  {
    goto LABEL_95;
  }

  if (*(&__dst + 1) == 13 && *__dst == 0x6E657461636E6F43 && *(__dst + 5) == 0x6E6F6974616E6574)
  {
    goto LABEL_73;
  }

  if (*(&__dst + 1) == 15 && *__dst == 0x6E69646465626D45 && *(__dst + 7) == 0x79636167654C676ELL)
  {
    goto LABEL_100;
  }

  if (*(&__dst + 1) == 9)
  {
    p_dst = __dst;
    goto LABEL_61;
  }

LABEL_86:
  if (sub_19D3BAF40(&__dst, "FullConnection"))
  {
    result = 0;
    if ((v27 & 0x80000000) == 0)
    {
      return result;
    }

LABEL_107:
    v22 = result;
    operator delete(__dst);
    return v22;
  }

  if (sub_19D3BAF40(&__dst, "LSTM"))
  {
    result = 5;
    if (v27 < 0)
    {
      goto LABEL_107;
    }
  }

  else if (sub_19D3BAF40(&__dst, "LSTMBidirectional"))
  {
    result = 6;
    if (v27 < 0)
    {
      goto LABEL_107;
    }
  }

  else if (sub_19D3BAF40(&__dst, "GRU"))
  {
    result = 9;
    if (v27 < 0)
    {
      goto LABEL_107;
    }
  }

  else if (sub_19D3BAF40(&__dst, "GRUBidirectional"))
  {
    result = 10;
    if (v27 < 0)
    {
      goto LABEL_107;
    }
  }

  else
  {
    if (!sub_19D3BAF40(&__dst, "Pooling"))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_19D3BAFCC("Unexpected NodeType: ", &v28);
      std::logic_error::logic_error(exception, &v24);
      exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
      __cxa_throw(exception, off_1E7626760, MEMORY[0x1E69E5298]);
    }

    result = 12;
    if (v27 < 0)
    {
      goto LABEL_107;
    }
  }

  return result;
}

void sub_19D44621C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      if (a21 < 0)
      {
        operator delete(a16);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

void sub_19D446264(CFArrayRef *a1, CFTypeRef **a2, void *a3)
{
  v5 = a3;
  v6 = **a2;
  if (v6)
  {
    CFRetain(**a2);
  }

  v35 = v6;
  sub_19D445248(&v35, off_1EB013488);
  if (v6)
  {
    CFRelease(v6);
  }

  v10 = *a2;
  if (!*v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v31 = objc_msgSend_UTF8String(off_1EB013488, v7, v8, v9);
  v11 = sub_19D446668(*v10, &v31);
  if (!v11)
  {
    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "Could not find item");
    __cxa_throw(v24, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_19D2A7050(v11, &cf);
  v12 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v33 = v12;
  sub_19D445248(&v33, v5);
  if (v12)
  {
    CFRelease(v12);
  }

  if (!cf)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Could not construct");
    __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v13 = v5;
  v30[0] = objc_msgSend_UTF8String(v13, v14, v15, v16);
  sub_19D4467A0(cf, v30, &v31);
  if (v32)
  {
    v17 = v31;
    if (v31)
    {
      CFRetain(v31);
    }

    v28 = v17;
    sub_19D445248(&v28, @"dim");
    if (v17)
    {
      CFRelease(v17);
    }

    if (v31)
    {
      v18 = sub_19D446D04(v31, "dim");
      if (v18)
      {
        sub_19D3BA4E0(v18, a1);
        if (v32 != 1)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v27 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v27, "Could not find item");
    }

    else
    {
      v27 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v27, "Could not construct");
    }

    __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!cf)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
    __cxa_throw(v26, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v19 = v5;
  v30[0] = objc_msgSend_UTF8String(v19, v20, v21, v22);
  v29 = sub_19D446830(cf, v30);
  v30[0] = &v29;
  v30[1] = 1;
  *a1 = sub_19D4468D0(v30);
  if (v32 == 1)
  {
LABEL_23:
    if (v31)
    {
      CFRelease(v31);
    }
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_19D44657C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, int a17, const void *a18)
{
  __cxa_free_exception(v19);
  sub_19D446E28(&a14);
  sub_19D2C08B0(&a18);

  _Unwind_Resume(a1);
}

const UInt8 *sub_19D446668(const __CFDictionary *a1, const char **a2)
{
  Value = *a2;
  v4 = strlen(*a2);
  if (!Value)
  {
    v5 = 0;
    cf = 0;
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_4:
  Value = CFDictionaryGetValue(a1, v5);
  v5 = cf;
  if (cf)
  {
LABEL_8:
    CFRelease(v5);
  }

LABEL_9:
  if (a1)
  {
    return Value;
  }

  else
  {
    return 0;
  }
}

void sub_19D4467A0(const __CFDictionary *a1@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_19D446668(a1, a2);
  if (v4)
  {
    v5 = v4;
    CFRetain(v4);
    v6 = CFGetTypeID(v5);
    if (v6 == CFDictionaryGetTypeID())
    {
      *a3 = v5;
      *(a3 + 8) = 1;
      return;
    }

    CFRelease(v5);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
}

uint64_t sub_19D446830(const __CFDictionary *a1, const char **a2)
{
  v2 = sub_19D446668(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4B8C(exception);
    goto LABEL_6;
  }

  result = sub_19D2A7128(v2);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4670(exception);
LABEL_6:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

CFArrayRef sub_19D4468D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_19D2C5DDC(&__p, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = v17;
    v6 = 4 * v3;
    do
    {
      if (v5 >= v18)
      {
        v5 = sub_19D446A84(&__p, v4);
      }

      else
      {
        valuePtr = *v4;
        v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        *v5 = v7;
        if (!v7)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v5 += 8;
      }

      v17 = v5;
      ++v4;
      v6 -= 4;
    }

    while (v6);
  }

  result = sub_19D2C5F9C(&__p);
  v9 = __p;
  if (__p)
  {
    v10 = result;
    v11 = v17;
    v12 = __p;
    if (v17 != __p)
    {
      do
      {
        v14 = *(v11 - 1);
        v11 -= 8;
        v13 = v14;
        if (v14)
        {
          CFRelease(v13);
        }
      }

      while (v11 != v9);
      v12 = __p;
    }

    v17 = v9;
    operator delete(v12);
    return v10;
  }

  return result;
}

void sub_19D446A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, const void **a10)
{
  sub_19D2C618C(v10);
  a10 = v10;
  sub_19D2C6440(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D446A84(unint64_t *a1, int *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 3;
  v4 = (v2 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_19D2AE2B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v8 = 8 * v3;
  valuePtr = *a2;
  v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(8 * v3) = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = v8 - (v11 - *a1);
  v13 = v8 + 8;
  v14 = v11 - *a1;
  if (v11 != *a1)
  {
    v15 = v14 - 8;
    v16 = *a1;
    v17 = v12;
    if ((v14 - 8) < 0x98)
    {
      goto LABEL_32;
    }

    if (v12 < v10 + (v15 & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v16 = *a1;
      v17 = v12;
      if (v10 < v2 + (v15 & 0xFFFFFFFFFFFFFFF8) - v14 + 8)
      {
        goto LABEL_32;
      }
    }

    v18 = v14 >> 3;
    v19 = (v15 >> 3) + 1;
    v20 = v19 & 0x3FFFFFFFFFFFFFFCLL;
    v16 = &v10[v20];
    v17 = (v12 + v20 * 8);
    v21 = (-8 * v18 + 8 * v3 + 16);
    v22 = (v10 + 2);
    v23 = v19 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v24 = *v22;
      *(v21 - 1) = *(v22 - 1);
      *v21 = v24;
      *(v22 - 1) = 0uLL;
      *v22 = 0uLL;
      v21 += 2;
      v22 += 2;
      v23 -= 4;
    }

    while (v23);
    if (v19 != (v19 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_32:
      do
      {
        *v17++ = *v16;
        *v16++ = 0;
      }

      while (v16 != v11);
    }

    do
    {
      if (*v10)
      {
        CFRelease(*v10);
      }

      ++v10;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v13;
}

void sub_19D446CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_19D2C618C(v9);
  sub_19D2C6134(&a9);
  _Unwind_Resume(a1);
}

const UInt8 *sub_19D446D04(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (a1)
  {
    Value = CFDictionaryGetValue(a1, v5);
    v5 = v8;
    if (!v8)
    {
      return Value;
    }
  }

  CFRelease(v5);
  if (a1)
  {
    return Value;
  }

  else
  {
    return 0;
  }
}

void sub_19D446DDC(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2C37A8(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x19D446D88);
}

uint64_t sub_19D446E28(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

unint64_t sub_19D446E68(const __CFArray *a1, unint64_t a2)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4B8C(exception);
    goto LABEL_8;
  }

  result = sub_19D2C6EB4(ValueAtIndex);
  if ((v6 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4670(exception);
LABEL_8:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t sub_19D446F30(const __CFArray *a1, unint64_t a2)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4B8C(exception);
    goto LABEL_8;
  }

  result = sub_19D2A7128(ValueAtIndex);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D2C4670(exception);
LABEL_8:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

BOOL sub_19D446FF8(_BOOL8 a1, const char **a2)
{
  v3 = *a2;
  v4 = strlen(*a2);
  if (v3)
  {
    v5 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
    v8 = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (!a1)
    {
LABEL_4:
      if (!v5)
      {
        return a1;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    v8 = 0;
    if (!a1)
    {
      goto LABEL_4;
    }
  }

  a1 = CFDictionaryContainsKey(a1, v5) != 0;
  v5 = v8;
  if (v8)
  {
LABEL_8:
    CFRelease(v5);
  }

  return a1;
}

void sub_19D4470D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2C37A8(va);
  _Unwind_Resume(a1);
}

void sub_19D4470E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_19D2C37A8(&a10);
  _Unwind_Resume(a1);
}

void sub_19D447104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2BF898(va);
  _Unwind_Resume(a1);
}

void *sub_19D447118(void *a1, uint64_t a2, uint64_t a3, void *__src)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v17 = *(a2 + 16);
  }

  sub_19D38622C(a1, __p, a3, __src);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BDB18;
  a1[127] = __src[56];
  a1[128] = __src[72];
  a1[129] = __src[57];
  a1[130] = __src[58];
  v7 = *(__src + 32);
  v8 = *(__src + 33);
  v9 = *(__src + 34);
  v10 = v9 * v8 <= 1;
  if (v9 * v8 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(__src + 32);
  }

  if (v9 * v8 <= 1)
  {
    v8 = 1;
  }

  if (!v10)
  {
    v7 = *(__src + 34);
  }

  v12 = v11;
  v13 = v8;
  v14 = v7;
  v18 = 1;
  v19 = v11;
  v20 = v8;
  v22 = 0;
  v23 = 0;
  v21 = v7;
  sub_19D2AD9C0((a1 + 2), &v18, &v24);
  v18 = 9;
  v19 = v12;
  v20 = v13;
  v22 = 0;
  v23 = 0;
  v21 = v14;
  sub_19D2AD9C0((a1 + 5), &v18, &v24);
  return a1;
}

void sub_19D4472B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D4472D0(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      operator delete(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 72);

  return v10(a2, a1);
}

__n128 sub_19D4473B4(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      break;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  result = *(v3 + 40);
  v7 = *(v3 + 56);
  v4[9] = *(v3 + 72);
  *(v4 + 7) = v7;
  *(v4 + 5) = result;
  return result;
}

BOOL sub_19D4474AC(uint64_t a1, void *a2, int a3)
{
  if ((a3 - 8) < 0xFFFFFFF9)
  {
    return 0;
  }

  v5 = (a1 + 24);
  v4 = *(a1 + 24);
  if (!v4)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v7 <= a3)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_9;
      }
    }

    if (v7 >= a3)
    {
      break;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  if (v6[5] != *a2)
  {
    return 1;
  }

  v8 = *v5;
  if (!*v5)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v9 = v8;
      v10 = *(v8 + 32);
      if (v10 <= a3)
      {
        break;
      }

      v8 = *v9;
      if (!*v9)
      {
        goto LABEL_17;
      }
    }

    if (v10 >= a3)
    {
      break;
    }

    v8 = v9[1];
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  if (v9[6] != a2[1])
  {
    return 1;
  }

  v11 = *v5;
  if (!*v5)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v12 = v11;
      v13 = *(v11 + 32);
      if (v13 <= a3)
      {
        break;
      }

      v11 = *v12;
      if (!*v12)
      {
        goto LABEL_26;
      }
    }

    if (v13 >= a3)
    {
      return v12[7] != a2[2];
    }

    v11 = v12[1];
    if (!v11)
    {
      goto LABEL_26;
    }
  }
}

uint64_t sub_19D447720(uint64_t result, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10)
{
  *result = &unk_1F10BDCA0;
  *(result + 8) = a2;
  v10 = *a3;
  v11 = a3[1];
  *(result + 48) = *(a3 + 4);
  *(result + 16) = v10;
  *(result + 32) = v11;
  v12 = *a4;
  v13 = a4[1];
  v14 = *(a4 + 4);
  *(result + 128) = 0;
  *(result + 72) = v13;
  *(result + 56) = v12;
  *(result + 88) = v14;
  *(result + 96) = a5;
  *(result + 104) = a6;
  *(result + 112) = a7;
  *(result + 120) = a8;
  *(result + 136) = 0;
  *(result + 144) = 0;
  v15 = a9[1];
  if (v15 != *a9)
  {
    if (((v15 - *a9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 152) = a10;
  return result;
}

void sub_19D4477F8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 136) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D447814(uint64_t a1)
{
  if (*(a1 + 48) * *(a1 + 40))
  {
    v2 = 0;
    v3 = **(a1 + 112);
    v4 = **(a1 + 104);
    v5 = **(a1 + 96);
    v21 = 4 * *(a1 + 16) * *(a1 + 24) * *(a1 + 72);
    do
    {
      v7 = *(a1 + 120);
      if ((v7 - 1) > 8)
      {
        v8 = BNNSActivationFunctionIdentity;
      }

      else
      {
        v8 = dword_19D478D48[v7 - 1];
      }

      bzero(&filter_params, 0x20uLL);
      filter_params.flags = 1;
      v10 = *(a1 + 64);
      v9 = *(a1 + 72);
      if (*(a1 + 152))
      {
        v11 = *(a1 + 64);
      }

      else
      {
        v11 = *(a1 + 72);
      }

      if (*(a1 + 152))
      {
        v10 = *(a1 + 72);
        v12 = BNNSDataLayoutColumnMajorMatrix;
      }

      else
      {
        v12 = BNNSDataLayoutRowMajorMatrix;
      }

      v13 = *(a1 + 128);
      v14 = (*(a1 + 136) - v13) >> 2;
      v15 = 0;
      v16 = 1.0;
      if (v14 < 2)
      {
        v17 = 1.0;
      }

      else
      {
        v17 = *v13;
        v16 = *(v13 + 4);
        if (v14 >= 4)
        {
          v15 = *(v13 + 8);
        }
      }

      v18 = *(a1 + 32);
      layer_params.i_desc.flags = BNNSNDArrayFlagBackpropSet;
      layer_params.i_desc.size[0] = v18;
      layer_params.i_desc.layout = BNNSDataLayoutVector;
      memset(&layer_params.i_desc.size[1], 0, 56);
      layer_params.i_desc.stride[0] = 1;
      memset(&layer_params.i_desc.stride[1], 0, 64);
      layer_params.i_desc.data_type = BNNSDataTypeFloat32;
      *(&layer_params.i_desc.data_type + 1) = 0uLL;
      layer_params.i_desc.data_scale = v17;
      *&layer_params.i_desc.data_bias = 0;
      layer_params.w_desc.flags = BNNSNDArrayFlagBackpropSet;
      layer_params.w_desc.layout = v12;
      layer_params.w_desc.size[0] = v10;
      layer_params.w_desc.size[1] = v11;
      memset(&layer_params.w_desc.size[2], 0, 48);
      memset(&layer_params.w_desc.stride[1], 0, 56);
      layer_params.w_desc.stride[0] = 1;
      layer_params.w_desc.data = v4;
      layer_params.w_desc.data_type = BNNSDataTypeFloat32;
      *(&layer_params.w_desc.data_type + 1) = 0uLL;
      layer_params.w_desc.data_scale = v16;
      *&layer_params.w_desc.data_bias = 0;
      *&layer_params.o_desc.flags = 0x1000000000000;
      memset(&layer_params.o_desc.size[1], 0, 56);
      layer_params.o_desc.size[0] = v9;
      layer_params.o_desc.stride[0] = 1;
      memset(&layer_params.o_desc.stride[1], 0, 64);
      layer_params.o_desc.data_type = BNNSDataTypeFloat32;
      *(&layer_params.o_desc.data_type + 1) = 0uLL;
      layer_params.o_desc.data_scale = 1.0;
      *&layer_params.o_desc.data_bias = 0;
      *&layer_params.bias.flags = 0x1000000000000;
      memset(layer_params.bias.size, 0, 136);
      layer_params.bias.data_type = BNNSDataTypeFloat32;
      *(&layer_params.bias.data_type + 1) = 0uLL;
      layer_params.bias.data_scale = 1.0;
      *&layer_params.bias.data_bias = 0;
      layer_params.activation.function = v8;
      *&layer_params.activation.alpha = v15;
      memset(&layer_params.activation.iscale, 0, 36);
      v19 = BNNSFilterCreateLayerFullyConnected(&layer_params, &filter_params);
      if (v19)
      {
        v20 = v19;
        BNNSFilterApplyBatch(v19, *(a1 + 24), v5, *(a1 + 32), v3, *(a1 + 72));
        v19 = v20;
      }

      BNNSFilterDestroy(v19);
      if (*(a1 + 88) == 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = *(a1 + 56) * *(a1 + 64) * *(a1 + 72);
      }

      v5 += 4 * *(a1 + 16) * *(a1 + 24) * *(a1 + 32);
      v4 += 4 * v6;
      ++v2;
      v3 += v21;
    }

    while (*(a1 + 48) * *(a1 + 40) > v2);
  }
}

void *sub_19D447AF4(void *result)
{
  *result = &unk_1F10BDCA0;
  v1 = result[16];
  if (v1)
  {
    result[17] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_19D447B4C(void *a1)
{
  *a1 = &unk_1F10BDCA0;
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_19D447BB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  __p = 0;
  v16 = 0;
  v17 = 0;
  v13 = (2 * a6);
  v14 = (*(*a1 + 48))(a1, a5, a6, a4, a4, &__p, 0, v13, 0.0);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  v18 = v14;
  sub_19D2F8C80(a7, &v18);
  __p = 0;
  v16 = 0;
  v17 = 0;
  v18 = (*(*a1 + 48))(a1, 1, a6, a4, a4, &__p, a6, v13, 0.0);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  sub_19D2F8C80(a7, &v18);
  sub_19D37B558(&__p, 2, a6, 0, a6, 0, a6, v13, a6);
  v18 = (*(*a1 + 16))(a1, &__p, a2, a4, a3);
  sub_19D2F8C80(a7, &v18);
  sub_19D37B558(&__p, 0, a6, 0, 0, 0, a6, v13, a6);
  v18 = (*(*a1 + 16))(a1, &__p, a3, a4, a3);
  sub_19D2F8C80(a7, &v18);
  sub_19D37B558(&__p, 2, a6, 0, a6, 0, v13, v13, v13);
  v18 = (*(*a1 + 16))(a1, &__p, a4, a4, a4);
  sub_19D2F8C80(a7, &v18);
  sub_19D37B558(&__p, 1, a6, 0, 0, 0, a6, v13, a6);
  v18 = (*(*a1 + 16))(a1, &__p, a3, a4, a3);
  sub_19D2F8C80(a7, &v18);
}

void sub_19D447EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    v14 = *v12;
    if (!*v12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = *v12;
    if (!*v12)
    {
      goto LABEL_3;
    }
  }

  *(v12 + 8) = v14;
  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_19D447F0C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 104))(a2);
  v5 = *a2;
  if (!v4)
  {
    v13 = ((*(v5 + 120))(a2) >> 2) & 1;
    v14 = *(a1 + 8);
    v15 = (*(*a2 + 72))(a2, 1);
    v16 = sub_19D427EDC(a2);
    v17 = sub_19D387A2C(a2, 1);
    if (*(a2 + 1057))
    {
      v18 = 1040;
    }

    else
    {
      v18 = 1024;
    }

    v19 = sub_19D387D50(a2, 9);
    v20 = 1032;
    if (*(a2 + 1057))
    {
      v20 = 1048;
    }

    v21 = *(a2 + 1016);
    __p = 0;
    v25 = 0;
    v26 = 0;
    v23 = v13;
    v12 = (*(*v14 + 56))(v14, v15, v16, v17, a2 + v18, v19, a2 + v20, v21, &__p, v23);
    goto LABEL_10;
  }

  if ((*(v5 + 104))(a2) == 2)
  {
    v6 = *(a1 + 8);
    v7 = *(a2 + 1016);
    v8 = (*(*a2 + 80))(a2, 9);
    v9 = sub_19D387A2C(a2, 1);
    v10 = sub_19D387D50(a2, 9);
    __p = 0;
    v25 = 0;
    v26 = 0;
    v11 = (*(*a2 + 80))(a2, 9);
    v12 = (*(*v6 + 48))(v6, v7, v8, v9, v10, &__p, 0, v11, *(a2 + 1088));
LABEL_10:
    v22 = v12;
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }

    __p = v22;
    sub_19D2F8C80(a2 + 160, &__p);
    return;
  }

  if ((*(*a2 + 104))(a2) == 13)
  {
    (*(*a2 + 72))(a2, 1);
    sub_19D388400();
  }
}

void sub_19D448358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D448380(uint64_t a1, void *a2)
{
  (*(*a2 + 120))(a2);
  v3 = a2[138];
  v4 = a2[139];
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = a2[135];
  v6 = a2[136];
  if (v6 == v5)
  {
    sub_19D388400();
  }

  if (((v6 - v5) & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_19D2AE2B4();
}

void sub_19D4489B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  operator delete(__p);
  if (v19)
  {
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_19D448A1C(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 104))(a2) != 2)
  {
    (*(*a2 + 72))(a2, 1);
    sub_19D388400();
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 1016);
  v6 = (*(*a2 + 80))(a2, 9);
  v7 = sub_19D387A2C(a2, 1);
  __p = 0;
  v11 = 0;
  v12 = 0;
  v8 = sub_19D387D50(a2, 9);
  v9 = (*(*v4 + 48))(v4, v5, v6, v7, v8, &__p, 0, 0, *(a2 + 1088));
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  __p = v9;
  sub_19D2F8C80(a2 + 160, &__p);
}

void sub_19D448FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D4497F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  operator delete(v27);
  operator delete(v26);
  if (v28)
  {
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

void sub_19D44A808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D44B788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D44B7F0(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v20[0] = &unk_1F10BDED8;
  v20[1] = a2;
  v21 = v20;
  v18[0] = &unk_1F10BDF68;
  v18[1] = a2;
  v19 = v18;
  v4 = *(a2 + 1208);
  v5 = sub_19D3950F8(a2 + 1040);
  v6 = sub_19D3950F8(a2 + 1080);
  v7 = *(a2 + 1160);
  v15 = *(a2 + 1144);
  v16 = v7;
  LODWORD(v14) = *(a2 + 1136);
  v17 = *(a2 + 1176);
  v11 = *(a2 + 1184);
  v8 = *(a2 + 1200);
  v12 = *(a2 + 1192);
  v13 = v8;
  v9 = (*(*v3 + 72))(v3, a2 + 1016, v20, v18, v4, v5, v6, &v14, &v11);
  if (v19 != v18)
  {
    if (v19)
    {
      (*(*v19 + 40))();
    }

    v10 = v21;
    if (v21 != v20)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v10 + 32))(v10);
    goto LABEL_9;
  }

  (*(*v19 + 32))(v19);
  v10 = v21;
  if (v21 == v20)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

LABEL_9:
  v14 = v9;
  sub_19D2F8C80(a2 + 160, &v14);
}

void sub_19D44BA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_19D41D94C(va);
  sub_19D41D94C(v12 - 88);
  _Unwind_Resume(a1);
}

void sub_19D44BA38(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v15[0] = &unk_1F10BDFE8;
  v15[1] = a2;
  v16 = v15;
  v13[0] = &unk_1F10BE068;
  v13[1] = a2;
  v14 = v13;
  v4 = *(a2 + 1160);
  v5 = sub_19D3950F8(a2 + 1040);
  v6 = sub_19D3950F8(a2 + 1080);
  v10 = *(a2 + 1136);
  v7 = *(a2 + 1152);
  v11 = *(a2 + 1144);
  v12 = v7;
  v8 = (*(*v3 + 80))(v3, a2 + 1016, v15, v13, v4, v5, v6, &v10);
  if (v14 != v13)
  {
    if (v14)
    {
      (*(*v14 + 40))();
    }

    v9 = v16;
    if (v16 != v15)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v9 + 32))(v9);
    goto LABEL_9;
  }

  (*(*v14 + 32))(v14);
  v9 = v16;
  if (v16 == v15)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }

LABEL_9:
  v15[0] = v8;
  sub_19D2F8C80(a2 + 160, v15);
}

void sub_19D44BC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_19D41D94C(va);
  sub_19D41D94C(va1);
  _Unwind_Resume(a1);
}

void sub_19D44BDB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 1072);
  v3 = *(a2 + 1080);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D388400();
}

void sub_19D44C178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, void *a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    if (a13)
    {
LABEL_6:
      operator delete(a13);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a13)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(exception_object);
}

void sub_19D44C220(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 72))(a2, 1) >= 2)
  {
    (*(*a2 + 64))(a2, 9);
    sub_19D388400();
  }

  operator new();
}

void sub_19D44C7DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 1072);
  v3 = *(a2 + 1080);
  if (v3 != v2)
  {
    if (((v3 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D388400();
}

void sub_19D44CC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  operator delete(v17);
  if (__p)
  {
    operator delete(__p);
    v19 = a13;
    if (!a13)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v19 = a13;
    if (!a13)
    {
      goto LABEL_3;
    }
  }

  operator delete(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_19D44CD34(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 72))(a2, 1);
  if (result <= 1)
  {
    (*(*a2 + 80))(a2, 9);
    (*(*a2 + 72))(a2, 1);
    (*(*a2 + 64))(a2, 9);
    sub_19D388400();
  }

  return result;
}

void sub_19D44CF74(void *a1)
{
  v1 = sub_19D37F2A4(a1);

  operator delete(v1);
}

void sub_19D44CFA4(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2 == 1)
  {
    v9 = (*(a1 + 40) - *(a1 + 44)) * -0.0039062;
    vDSP_vflt8(**(a1 + 24), 1, **(a1 + 32), 1, *(a1 + 20) * a2);
    MEMORY[0x19EAFB210](**(a1 + 32), 1, &v9, **(a1 + 32), 1, *(a1 + 20) * a2);
  }

  else if (!v2)
  {
    v9 = -256.0 / (*(a1 + 40) - *(a1 + 44));
    __C = 127.1;
    __B = -127.1;
    MEMORY[0x19EAFB210](**(a1 + 24), 1, &v9, **(a1 + 48), 1, *(a1 + 20) * a2);
    vDSP_vclip(**(a1 + 48), 1, &__B, &__C, **(a1 + 48), 1, *(a1 + 20) * a2);
    vDSP_vfixr8(**(a1 + 48), 1, **(a1 + 32), 1, *(a1 + 20) * a2);
  }
}

_DWORD *sub_19D44D108(_DWORD *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v3 = result[7];
    if (v3 >= 1)
    {
      for (i = 0; i != a2; ++i)
      {
        if (v3 >= 1)
        {
          v6 = 0;
          do
          {
            result = memmove((**(v2 + 5) + v2[6] * (v6 + i * v3)), (**(v2 + 4) + v2[6] * (*(**(v2 + 2) + 4 * (v6 + i * v3)) + 0.5)), v2[6]);
            v3 = v2[7];
            ++v6;
          }

          while (v6 < v3);
        }
      }
    }
  }

  return result;
}

void sub_19D44D1DC(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2 == 1)
  {
    v9 = (*(a1 + 40) - *(a1 + 44)) * -0.0039062;
    vDSP_vflt8(**(a1 + 24), 1, **(a1 + 32), 1, *(a1 + 20) * a2);
    MEMORY[0x19EAFB210](**(a1 + 32), 1, &v9, **(a1 + 32), 1, *(a1 + 20) * a2);
  }

  else if (!v2)
  {
    v9 = -256.0 / (*(a1 + 40) - *(a1 + 44));
    __C = 127.1;
    __B = -127.1;
    MEMORY[0x19EAFB210](**(a1 + 24), 1, &v9, **(a1 + 48), 1, *(a1 + 20) * a2);
    vDSP_vclip(**(a1 + 48), 1, &__B, &__C, **(a1 + 48), 1, *(a1 + 20) * a2);
    vDSP_vfixr8(**(a1 + 48), 1, **(a1 + 32), 1, *(a1 + 20) * a2);
  }
}

_DWORD *sub_19D44D340(_DWORD *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v3 = result[7];
    if (v3 >= 1)
    {
      for (i = 0; i != a2; ++i)
      {
        if (v3 >= 1)
        {
          v6 = 0;
          do
          {
            result = memmove((**(v2 + 5) + 4 * v2[6] * (v6 + i * v3)), (**(v2 + 4) + 4 * v2[6] * (*(**(v2 + 2) + 4 * (v6 + i * v3)) + 0.5)), 4 * v2[6]);
            v3 = v2[7];
            ++v6;
          }

          while (v6 < v3);
        }
      }
    }
  }

  return result;
}

uint64_t sub_19D44D470(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F10BDED8;
  a2[1] = v2;
  return result;
}

uint64_t sub_19D44D4A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9inference18LowLatencyCompiler23compileConvolutionLayerEPNS_6layers16ConvolutionLayerIffLm5EEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9inference18LowLatencyCompiler23compileConvolutionLayerEPNS_6layers16ConvolutionLayerIffLm5EEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9inference18LowLatencyCompiler23compileConvolutionLayerEPNS_6layers16ConvolutionLayerIffLm5EEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9inference18LowLatencyCompiler23compileConvolutionLayerEPNS_6layers16ConvolutionLayerIffLm5EEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_19D44D580(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F10BDF68;
  a2[1] = v2;
  return result;
}

uint64_t sub_19D44D5B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9inference18LowLatencyCompiler23compileConvolutionLayerEPNS_6layers16ConvolutionLayerIffLm5EEEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9inference18LowLatencyCompiler23compileConvolutionLayerEPNS_6layers16ConvolutionLayerIffLm5EEEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9inference18LowLatencyCompiler23compileConvolutionLayerEPNS_6layers16ConvolutionLayerIffLm5EEEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9inference18LowLatencyCompiler23compileConvolutionLayerEPNS_6layers16ConvolutionLayerIffLm5EEEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_19D44D690(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F10BDFE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_19D44D6C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9inference18LowLatencyCompiler19compilePoolingLayerEPNS_6layers12PoolingLayerIffLm5EEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9inference18LowLatencyCompiler19compilePoolingLayerEPNS_6layers12PoolingLayerIffLm5EEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9inference18LowLatencyCompiler19compilePoolingLayerEPNS_6layers12PoolingLayerIffLm5EEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9inference18LowLatencyCompiler19compilePoolingLayerEPNS_6layers12PoolingLayerIffLm5EEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_19D44D7A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F10BE068;
  a2[1] = v2;
  return result;
}

uint64_t sub_19D44D7D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9inference18LowLatencyCompiler19compilePoolingLayerEPNS_6layers12PoolingLayerIffLm5EEEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9inference18LowLatencyCompiler19compilePoolingLayerEPNS_6layers12PoolingLayerIffLm5EEEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9inference18LowLatencyCompiler19compilePoolingLayerEPNS_6layers12PoolingLayerIffLm5EEEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9inference18LowLatencyCompiler19compilePoolingLayerEPNS_6layers12PoolingLayerIffLm5EEEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_19D44DE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak((v25 - 88));

  _Unwind_Resume(a1);
}

void sub_19D44DF6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  objc_msgSend_computeLoss_(WeakRetained, v2, *(a1 + 32), v3);
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 64));
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_19D44E674(uint64_t a1, void *a2)
{
  v57 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  for (i = 0; ; ++i)
  {
    v7 = objc_msgSend_lossLabels(*(a1 + 32), v3, v4, v5);
    v11 = objc_msgSend_count(v7, v8, v9, v10);

    if (i >= v11)
    {
      break;
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = objc_msgSend_data(v12, v3, v4, v5);
      v14 = v13;
      objc_msgSend_contents(v14, v15, v16, v17);
      objc_msgSend_rowBytes(*(a1 + 40), v18, v19, v20);

      v24 = objc_msgSend_outputChannels(*(a1 + 48), v21, v22, v23);
      if (v24)
      {
        if ((v24 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      v28 = *(a1 + 56);
      v29 = objc_msgSend_labels(*(a1 + 32), v25, v26, v27);
      v32 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, i, v31);
      v36 = objc_msgSend_unsignedIntegerValue(v32, v33, v34, v35);
      v37 = *(v28 + 16);
      if (!v37)
      {
LABEL_14:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v38 = v37;
          v39 = *(v37 + 32);
          if (v39 <= v36)
          {
            break;
          }

          v37 = *v38;
          if (!*v38)
          {
            goto LABEL_14;
          }
        }

        if (v39 >= v36)
        {
          break;
        }

        v37 = v38[1];
        if (!v37)
        {
          goto LABEL_14;
        }
      }

      v40 = v38[6];
      if (!v40)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        v41 = v40;
        if (!*(v40 + 7))
        {
          break;
        }

        v40 = *v40;
        if (!*v41)
        {
          goto LABEL_20;
        }
      }

      ++*(v41 + 8);
      v45 = objc_msgSend_labels(*(a1 + 32), v42, v43, v44);
      v48 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, i, v47);
      v52 = objc_msgSend_unsignedIntegerValue(v48, v49, v50, v51);
      *(*(a1 + 56) + 32) = *(*(a1 + 56) + 32) + log2f(*(4 * v52));

      operator delete(0);
    }
  }

  objc_msgSend_computeLoss_(WeakRetained, v3, *(a1 + 32), v5);
  *(*(a1 + 56) + 36) = *(*(a1 + 56) + 36) + (v56 * objc_msgSend_batchSize(*(a1 + 64), v53, v54, v55));
  dispatch_semaphore_signal(*(a1 + 72));
}

void sub_19D44EA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, void *a11, uint64_t a12)
{
  operator delete(v12);

  _Unwind_Resume(a1);
}

__n128 sub_19D44F02C(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_19D44F050(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t sub_19D44F068(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_data(*(a1 + 32), a2, a3, a4);
  v6 = v5;
  v10 = objc_msgSend_contents(v6, v7, v8, v9);
  objc_msgSend_rowBytes(*(a1 + 32), v11, v12, v13);

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 48);
  v19 = objc_msgSend_rows(*(a1 + 32), v16, v17, v18);
  v23 = objc_msgSend_columns(*(a1 + 32), v20, v21, v22) * v19;

  return sub_19D38C5D0(v14 + 48, v15, v10, &v10[4 * v23], v23);
}

uint64_t sub_19D44F110(unsigned int *a1, unsigned int a2, int a3, unsigned int a4, int a5)
{
  *a1 = a2;
  *(a1 + 1) = 0u;
  v5 = a1 + 1;
  *(a1 + 5) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 29) = 0u;
  a1[33] = 0;
  if (!a2)
  {
    return 0;
  }

  a1[1] = a3 + a2;
  pthread_mutex_init((a1 + 4), 0);
  pthread_cond_init((a1 + 20), 0);
  v9 = 184 * a1[1];
  v10 = malloc_type_malloc(v9, 0x10A0040A14C3E57uLL);
  *(a1 + 1) = v10;
  if (v10)
  {
    bzero(v10, v9);
    if (*v5)
    {
      v11 = 0;
      v12 = a4;
      v13 = 176;
      v14 = "***tpThreadInit: Error initializing mutex";
      while (1)
      {
        v16 = *(a1 + 1);
        v17 = v16 + v13;
        v18 = malloc_type_malloc(v12, 0x1BB15452uLL);
        *(v16 + v13 - 32) = v18;
        if (!v18)
        {
          goto LABEL_13;
        }

        bzero(v18, v12);
        *(v17 - 176) = 0;
        *(v17 - 48) = v11;
        if (v11 < *a1)
        {
          if (pthread_mutex_init((v16 + v13 - 168), 0))
          {
            goto LABEL_15;
          }

          if (pthread_cond_init((v16 + v13 - 104), 0))
          {
            v14 = "***tpThreadInit: Error initializing pthreadCond";
            goto LABEL_15;
          }

          if (pthread_create((v16 + v13 - 56), 0, sub_19D44F2F8, (v17 - 176)))
          {
            v14 = "***tpThreadInit: Error starting up server thread";
LABEL_15:
            puts(v14);
            free(*(a1 + 1));
            *(a1 + 1) = 0;
            return 3;
          }
        }

        v15 = (v16 + v13);
        *(v15 - 2) = a5;
        *v15 = a1;
        ++v11;
        v13 += 184;
        if (v11 >= a1[1])
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_13:
  puts("***tpThreadInit: malloc failure");
  return 1;
}

uint64_t sub_19D44F2F8(uint64_t a1)
{
  if (*(a1 + 168))
  {
    policy_info = *(a1 + 128) + 1;
    v2 = MEMORY[0x19EAFA970]();
    v3 = thread_policy_set(v2, 4u, &policy_info, 1u);
    if (v3)
    {
      printf("setThreadAffinity: thread_policy_set returned %d\n", v3);
    }
  }

  if (pthread_mutex_lock((a1 + 8)))
  {
LABEL_17:
    puts("***tpThread: Error acquiring lock; aborting.");
    pthread_exit(0);
  }

  while (1)
  {
    while (!*a1)
    {
      v7 = pthread_cond_wait((a1 + 72), (a1 + 8));
      if (v7)
      {
        printf("***tpThread: Error waiting on condition; error %d; aborting.\n", v7);
        pthread_exit(0);
      }
    }

    pthread_mutex_unlock((a1 + 8));
    if (*(a1 + 136) == 1)
    {
      return 0;
    }

    *(a1 + 160) = (*(a1 + 152))(*(a1 + 144));
    v4 = *(a1 + 176);
    pthread_mutex_lock((v4 + 16));
    *a1 = 0;
    v5 = *(v4 + 128);
    if (v5)
    {
      v6 = v5 - 1;
      *(v4 + 128) = v6;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    else
    {
      puts("***tpThread: internal error, actThreads = 0");
      if (!*(v4 + 128))
      {
LABEL_15:
        pthread_cond_signal((v4 + 80));
      }
    }

    pthread_mutex_unlock((v4 + 16));
    if (pthread_mutex_lock((a1 + 8)))
    {
      goto LABEL_17;
    }
  }
}

unsigned int *sub_19D44F440(unsigned int *result)
{
  if (*result)
  {
    v1 = result;
    if (!result[1])
    {
      goto LABEL_8;
    }

    v2 = 0;
    v3 = 0;
    do
    {
      v5 = *(v1 + 1);
      if (v3 < *v1)
      {
        v6 = (v5 + v2);
        pthread_mutex_lock((v5 + v2 + 8));
        v6[34] = 1;
        *v6 = 1;
        pthread_cond_signal((v5 + v2 + 72));
        pthread_mutex_unlock((v5 + v2 + 8));
      }

      v4 = v5 + v2;
      free(*(v4 + 144));
      *(v4 + 144) = 0;
      ++v3;
      v2 += 184;
    }

    while (v3 < v1[1]);
    if (*v1)
    {
LABEL_8:
      v7 = 0;
      v8 = 120;
      do
      {
        v9 = *(v1 + 1);
        v14 = 0;
        pthread_join(*(v9 + v8), &v14);
        ++v7;
        v10 = *v1;
        v8 += 184;
      }

      while (v7 < v10);
      if (v10)
      {
        v11 = 0;
        v12 = 72;
        do
        {
          v13 = (*(v1 + 1) + v12);
          pthread_mutex_destroy(&v13[-2].__opaque[24]);
          pthread_cond_destroy(v13);
          ++v11;
          v12 += 184;
        }

        while (v11 < *v1);
      }
    }

    free(*(v1 + 1));
    *(v1 + 1) = 0;
    pthread_mutex_destroy((v1 + 4));
    return pthread_cond_destroy((v1 + 20));
  }

  return result;
}

uint64_t sub_19D44F584(uint64_t a1, unsigned int a2)
{
  if (*a1 < a2)
  {
    v2 = "tpThreadDispatch: illegal numThreads";
LABEL_5:
    puts(v2);
    return 2;
  }

  if (*(a1 + 128))
  {
    v2 = "tpThreadDispatch with threads still active";
    goto LABEL_5;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 160;
  v7 = a2;
  while (1)
  {
    v8 = *(a1 + 8);
    v9 = v8 + v6;
    *(v8 + v6) = 3;
    if (pthread_mutex_lock((v8 + v6 - 152)))
    {
      v10 = "tpThreadDispatch: mutex error";
      goto LABEL_17;
    }

    if (*(v9 - 160))
    {
      printf("tpThreadDispatch: thread %u not idle\n", v5);
      return 3;
    }

    pthread_mutex_lock((a1 + 16));
    *(a1 + 128) = vadd_s32(*(a1 + 128), 0x100000001);
    pthread_mutex_unlock((a1 + 16));
    *(v9 - 160) = 1;
    if (pthread_cond_signal((v8 + v6 - 88)))
    {
      break;
    }

    pthread_mutex_unlock((v8 + v6 - 152));
    result = 0;
    ++v5;
    v6 += 184;
    if (v7 == v5)
    {
      return result;
    }
  }

  v10 = "tpThreadDispatch: pthread_cond_signal error";
LABEL_17:
  puts(v10);
  return 3;
}

uint64_t sub_19D44F6D4(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  while (*(a1 + 128))
  {
    pthread_cond_wait((a1 + 80), (a1 + 16));
  }

  v2 = *(a1 + 132);
  if (v2)
  {
    v3 = (*(a1 + 8) + 160);
    while (1)
    {
      v5 = *v3;
      v3 += 46;
      v4 = v5;
      if (v5)
      {
        break;
      }

      if (!--v2)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v4 = 0;
  }

  *(a1 + 132) = 0;
  pthread_mutex_unlock((a1 + 16));
  return v4;
}

double sub_19D44F74C(uint64_t a1, float64x2_t *a2, void **a3)
{
  sub_19D438488(a1);
  if (!a1 || !a3 || (v12 = *(a1 + 8)) == 0)
  {
    sub_19D438620(a1, "NULL args to nlopt_optimize", v6, v7, v8, v9, v10, v11, v200);
    return result;
  }

  v217 = 0;
  v218 = 0;
  v219 = 0;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  if (v15)
  {
    v218 = *(a1 + 24);
    v219 = v13;
    v217 = v12;
    *(a1 + 8) = sub_19D45029C;
    *(a1 + 16) = &v217;
    if (v14)
    {
      *(a1 + 24) = sub_19D450338;
    }

    *(a1 + 104) = -*(a1 + 104);
    *(a1 + 32) = 0;
  }

  v16 = *(a1 + 4);
  if (v16)
  {
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    if (v16 >= 8)
    {
      v19 = v16 & 0xFFFFFFF8;
      v22 = v17 + 2;
      v23 = v18 + 2;
      v24 = 0uLL;
      v25 = v19;
      v26 = 0uLL;
      do
      {
        v27 = v22[-2];
        v28 = v22[-1];
        v29 = *v22;
        v30 = v22[1];
        v22 += 4;
        v31 = v23[-2];
        v32 = v23[-1];
        v33 = *v23;
        v34 = v23[1];
        v23 += 4;
        v24 = vsubq_s32(v24, vmvnq_s8(vuzp1q_s32(vceqq_f64(v27, v31), vceqq_f64(v28, v32))));
        v26 = vsubq_s32(v26, vmvnq_s8(vuzp1q_s32(vceqq_f64(v29, v33), vceqq_f64(v30, v34))));
        v25 -= 8;
      }

      while (v25);
      v20 = vaddvq_s32(vaddq_s32(v26, v24));
      if (v19 == v16)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    v35 = v16 - v19;
    v36 = v19;
    v37 = &v18->f64[v36];
    v38 = &v17->f64[v36];
    do
    {
      v39 = *v38++;
      v40 = v39;
      v41 = *v37++;
      if (v40 != v41)
      {
        ++v20;
      }

      --v35;
    }

    while (v35);
  }

  else
  {
    v20 = 0;
  }

LABEL_20:
  v42 = a1;
  if (v20 == v16)
  {
    goto LABEL_21;
  }

  v57 = *a1 > 0x2Bu || ((1 << *a1) & 0xC0C3E0813FFLL) == 0;
  v42 = a1;
  if (v57)
  {
    goto LABEL_21;
  }

  v58 = *(a1 + 96);
  *(a1 + 96) = 0;
  v59 = sub_19D437F9C(a1);
  *(a1 + 96) = v58;
  if (!v59)
  {
LABEL_155:
    sub_19D438620(a1, "failure allocating elim_opt", v60, v61, v62, v63, v64, v65, v200);
    goto LABEL_156;
  }

  v42 = v59;
  v66 = malloc_type_malloc(8 * *(a1 + 4), 0x100004000313F17uLL);
  v67 = v66;
  v68 = *(a1 + 4);
  if (v68 && !v66)
  {
LABEL_154:
    sub_19D437C34(v42);
    goto LABEL_155;
  }

  if ((*a1 & 0xFFFFFFFE) == 8)
  {
    v69 = malloc_type_malloc(8 * v68, 0x100004000313F17uLL);
    LODWORD(v68) = *(a1 + 4);
    if (v68 && !v69)
    {
      goto LABEL_153;
    }
  }

  else
  {
    v69 = 0;
  }

  v117 = *(a1 + 40);
  v118 = *(a1 + 48);
  v201 = v69;
  if (v68)
  {
    v119 = v68;
    if (v68 < 8)
    {
      v120 = 0;
      v121 = 0;
      goto LABEL_86;
    }

    v120 = v68 & 0xFFFFFFF8;
    v122 = v117 + 2;
    v123 = v118 + 2;
    v124 = 0uLL;
    v125 = v119 & 0xFFFFFFF8;
    v126 = 0uLL;
    do
    {
      v127 = v122[-2];
      v128 = v122[-1];
      v129 = *v122;
      v130 = v122[1];
      v122 += 4;
      v131 = v123[-2];
      v132 = v123[-1];
      v133 = *v123;
      v134 = v123[1];
      v123 += 4;
      v124 = vsubq_s32(v124, vmvnq_s8(vuzp1q_s32(vceqq_f64(v127, v131), vceqq_f64(v128, v132))));
      v126 = vsubq_s32(v126, vmvnq_s8(vuzp1q_s32(vceqq_f64(v129, v133), vceqq_f64(v130, v134))));
      v125 -= 8;
    }

    while (v125);
    v121 = vaddvq_s32(vaddq_s32(v126, v124));
    if (v120 != v119)
    {
LABEL_86:
      v135 = v119 - v120;
      v136 = v120;
      v137 = &v118->f64[v120];
      v138 = &v117->f64[v136];
      do
      {
        v139 = *v138++;
        v140 = v139;
        v141 = *v137++;
        if (v140 != v141)
        {
          ++v121;
        }

        --v135;
      }

      while (v135);
    }
  }

  else
  {
    v121 = 0;
  }

  *(v42 + 4) = v121;
  v142 = *(a1 + 4);
  v143 = *(v42 + 40);
  if (v142)
  {
    v144 = v143 == 0;
  }

  else
  {
    v144 = 1;
  }

  if (!v144)
  {
    v190 = 0;
    v191 = v117;
    v192 = v118;
    v193 = *(a1 + 4);
    v194 = *(v42 + 40);
    do
    {
      if (*v191 != *v192)
      {
        *(v143 + 8 * v190++) = *v194;
      }

      ++v194;
      ++v192;
      ++v191;
      --v193;
    }

    while (v193);
  }

  if (v142)
  {
    v145 = *(v42 + 48);
    if (v145)
    {
      v146 = 0;
      v147 = v117;
      v148 = v118;
      v149 = v142;
      v150 = *(v42 + 48);
      do
      {
        if (*v147 != *v148)
        {
          *(v145 + 8 * v146++) = *v150;
        }

        ++v150;
        ++v148;
        ++v147;
        --v149;
      }

      while (v149);
    }
  }

  if (v142)
  {
    v151 = *(v42 + 136);
    if (v151)
    {
      v152 = 0;
      v153 = v117;
      v154 = v118;
      v155 = v142;
      v156 = *(v42 + 136);
      do
      {
        if (*v153 != *v154)
        {
          *(v151 + 8 * v152++) = *v156;
        }

        ++v156;
        ++v154;
        ++v153;
        --v155;
      }

      while (v155);
    }
  }

  v203 = v14;
  v205 = v13;
  if (v142)
  {
    v157 = *(v42 + 200);
    if (v157)
    {
      v158 = 0;
      v159 = v117;
      v160 = v118;
      v161 = v142;
      v162 = *(v42 + 200);
      do
      {
        if (*v159 != *v160)
        {
          *(v157 + 8 * v158++) = *v162;
        }

        ++v162;
        ++v160;
        ++v159;
        --v161;
      }

      while (v161);
    }
  }

  v214 = v118;
  v210 = v117;
  *(v42 + 88) = 0;
  *(v42 + 96) = 0;
  *(v42 + 8) = sub_19D4503C8;
  v164 = *(a1 + 8);
  v163 = *(a1 + 16);
  v165 = malloc_type_malloc(0x40uLL, 0x10C00407EB6F510uLL);
  if (!v165)
  {
    v195 = (v42 + 16);
LABEL_152:
    v69 = v201;
    v14 = v203;
    *v195 = 0;
    v13 = v205;
LABEL_153:
    free(v69);
    free(v67);
    goto LABEL_154;
  }

  v208 = v12;
  *v165 = v164;
  v165[1] = 0;
  v165[2] = v163;
  *(v165 + 6) = v142;
  v165[6] = v210;
  v165[7] = v214;
  v165[4] = v67;
  v165[5] = v201;
  *(v42 + 16) = v165;
  if (*(a1 + 56))
  {
    v166 = 0;
    v167 = 0;
    v168 = *(v42 + 64);
    while (1)
    {
      v169 = v168 + v166;
      v170 = *(v169 + 8) ? sub_19D4503C8 : 0;
      v171 = *(v169 + 16) ? sub_19D4504E4 : 0;
      *(v169 + 8) = v170;
      *(v169 + 16) = v171;
      v172 = *(a1 + 64) + v166;
      v173 = *(v172 + 32);
      v174 = *(a1 + 4);
      v211 = *(v172 + 8);
      v215 = *(a1 + 40);
      v175 = malloc_type_malloc(0x40uLL, 0x10C00407EB6F510uLL);
      if (!v175)
      {
        break;
      }

      *v175 = v211;
      v175[2] = v173;
      *(v175 + 6) = v174;
      *(v175 + 3) = v215;
      v175[4] = v67;
      v175[5] = 0;
      v168 = *(v42 + 64);
      *(v168 + v166 + 32) = v175;
      ++v167;
      v166 += 48;
      if (v167 >= *(a1 + 56))
      {
        goto LABEL_124;
      }
    }

    v196 = *(v42 + 64);
    goto LABEL_151;
  }

LABEL_124:
  if (*(a1 + 72))
  {
    v166 = 0;
    v176 = 0;
    v177 = *(v42 + 80);
    while (1)
    {
      v178 = v177 + v166;
      v179 = *(v178 + 8) ? sub_19D4503C8 : 0;
      v180 = *(v178 + 16) ? sub_19D4504E4 : 0;
      *(v178 + 8) = v179;
      *(v178 + 16) = v180;
      v181 = *(a1 + 80) + v166;
      v182 = *(v181 + 32);
      v183 = *(a1 + 4);
      v212 = *(v181 + 8);
      v216 = *(a1 + 40);
      v184 = malloc_type_malloc(0x40uLL, 0x10C00407EB6F510uLL);
      if (!v184)
      {
        break;
      }

      *v184 = v212;
      v184[2] = v182;
      *(v184 + 6) = v183;
      *(v184 + 3) = v216;
      v184[4] = v67;
      v184[5] = 0;
      v177 = *(v42 + 80);
      *(v177 + v166 + 32) = v184;
      ++v176;
      v166 += 48;
      if (v176 >= *(a1 + 72))
      {
        goto LABEL_134;
      }
    }

    v196 = *(v42 + 80);
LABEL_151:
    v195 = (v196 + v166 + 32);
    v12 = v208;
    goto LABEL_152;
  }

LABEL_134:
  v12 = v208;
  v14 = v203;
  v13 = v205;
  if (a2)
  {
    v185 = *(a1 + 4);
    if (v185)
    {
      v186 = 0;
      v187 = *(a1 + 40);
      v188 = *(a1 + 48);
      v189 = a2;
      do
      {
        if (*v187 != *v188)
        {
          a2->f64[v186++] = *v189;
        }

        ++v189;
        ++v188;
        ++v187;
        --v185;
      }

      while (v185);
    }
  }

  *(a1 + 176) = v42;
LABEL_21:
  v207 = v12;
  if (!a2 || !*(v42 + 8) || *(v42 + 32))
  {
    sub_19D438620(v42, "NULL args to nlopt_optimize_", v6, v7, v8, v9, v10, v11, v200);
    if (v42 != a1)
    {
      goto LABEL_25;
    }

    goto LABEL_156;
  }

  v206 = v15;
  sub_19D438818(v42, 0);
  *(v42 + 176) = 0;
  v93 = *(v42 + 4);
  v94 = *(v42 + 8);
  v95 = *(v42 + 16);
  if (v93)
  {
    v202 = v14;
    v204 = v13;
    v96 = *(v42 + 40);
    v97 = *(v42 + 48);
    v213 = *v42;
    v221 = 0;
    memset(v220, 0, sizeof(v220));
    *a3 = 0x7FF0000000000000;
    sub_19D4389FC();
    for (i = 0; i != v93; ++i)
    {
      v105 = v96->f64[i];
      v106 = v97->f64[i];
      v107 = a2->f64[i];
      if (v105 > v106 || v107 < v105 || v107 > v106)
      {
        sub_19D438620(v42, "bounds %d fail %g <= %g <= %g", v98, v99, v100, v101, v102, v103, i);
        goto LABEL_144;
      }
    }

    v209 = v94;
    *(v42 + 156) = 0;
    LODWORD(v220[0]) = v93;
    *(v220 + 8) = *(v42 + 104);
    *(&v220[1] + 8) = *(v42 + 120);
    *(&v220[2] + 8) = *(v42 + 136);
    *(&v220[3] + 1) = v42 + 156;
    LODWORD(v221) = *(v42 + 152);
    v222 = *(v42 + 160);
    result = sub_19D374E94();
    v223 = result;
    v224 = v42 + 168;
    v225 = v42 + 224;
    if (v213 < 3)
    {
      v197 = 0;
      while (!sub_19D364B24())
      {
        if (v93 == ++v197)
        {
          if (v213)
          {
            v198 = 3;
          }

          else
          {
            v198 = 0;
          }

          if (v213)
          {
            v199 = 10;
          }

          else
          {
            v199 = 0;
          }

          if (v213 == 2)
          {
            v198 = 6;
          }

          sub_19D441A58(v93, v209, v95, v96, v97, a2, a3, v220, 0.0, v198 + v199);
          goto LABEL_144;
        }
      }
    }

    else
    {
      if (v213 - 3 > 2)
      {
LABEL_144:
        v14 = v202;
        v13 = v204;
        goto LABEL_147;
      }

      v110 = 0;
      while (!sub_19D364B24())
      {
        if (v93 == ++v110)
        {
          sub_19D440334(v93, v209, v95, v96, v97, a2, a3, v220, 0.0, 13);
          goto LABEL_144;
        }
      }
    }

    sub_19D438620(v42, "finite domain required for global algorithm", v111, v112, v113, v114, v115, v116, v200);
    goto LABEL_144;
  }

  result = v94(0, a2, 0, *(v42 + 16));
  *a3 = result;
LABEL_147:
  v15 = v206;
  if (v42 != a1)
  {
LABEL_25:
    v43 = v14;
    v44 = v13;
    v45 = v15;
    free(*(*(v42 + 16) + 32));
    free(*(*(v42 + 16) + 40));
    free(*(v42 + 16));
    *(v42 + 16) = 0;
    if (*(v42 + 56))
    {
      v46 = 0;
      v47 = *(v42 + 64);
      v48 = 32;
      do
      {
        free(*(v47 + v48));
        v47 = *(v42 + 64);
        *(v47 + v48) = 0;
        ++v46;
        v48 += 48;
      }

      while (v46 < *(v42 + 56));
    }

    if (*(v42 + 72))
    {
      v49 = 0;
      v50 = *(v42 + 80);
      v51 = 32;
      do
      {
        free(*(v50 + v51));
        v50 = *(v42 + 80);
        *(v50 + v51) = 0;
        ++v49;
        v51 += 48;
      }

      while (v49 < *(v42 + 72));
    }

    sub_19D437C34(v42);
    v15 = v45;
    v13 = v44;
    v14 = v43;
    v12 = v207;
    if (!a2)
    {
      goto LABEL_60;
    }

    v52 = *(a1 + 4);
    if (!v52)
    {
      goto LABEL_60;
    }

    v53 = *(a1 + 40);
    v54 = *(a1 + 48);
    if (v52 >= 8)
    {
      v55 = v52 & 0xFFFFFFF8;
      v70 = (v53 + 4);
      v71 = (v54 + 4);
      v72 = 0uLL;
      v73 = v55;
      v74 = 0uLL;
      do
      {
        v75 = v70[-2];
        v76 = v70[-1];
        v77 = *v70;
        v78 = v70[1];
        v70 += 4;
        v79 = v71[-2];
        v80 = v71[-1];
        v81 = *v71;
        v82 = v71[1];
        v71 += 4;
        v72 = vsubq_s32(v72, vmvnq_s8(vuzp1q_s32(vceqq_f64(v75, v79), vceqq_f64(v76, v80))));
        v74 = vsubq_s32(v74, vmvnq_s8(vuzp1q_s32(vceqq_f64(v77, v81), vceqq_f64(v78, v82))));
        v73 -= 8;
      }

      while (v73);
      v56 = vaddvq_s32(vaddq_s32(v74, v72));
      if (v55 == v52)
      {
LABEL_53:
        v90 = (v52 - 1);
        if (v90)
        {
          v91 = v56 - 1;
          do
          {
            v92 = v53[v90];
            if (v92 != v54[v90])
            {
              v92 = a2->f64[v91--];
            }

            a2->f64[v90--] = v92;
          }

          while (v90);
        }

        result = *v53;
        if (*v53 == *v54)
        {
          a2->f64[0] = result;
        }

LABEL_60:
        *(a1 + 176) = 0;
        goto LABEL_156;
      }
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }

    v83 = v52 - v55;
    v84 = v55;
    v85 = &v54[v55];
    v86 = &v53[v84];
    do
    {
      v87 = *v86++;
      v88 = v87;
      v89 = *v85++;
      if (v88 != v89)
      {
        ++v56;
      }

      --v83;
    }

    while (v83);
    goto LABEL_53;
  }

LABEL_156:
  if (v15)
  {
    *(a1 + 32) = v15;
    *(a1 + 104) = -*(a1 + 104);
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = v14;
    result = -*a3;
    *a3 = result;
  }

  return result;
}

double sub_19D45029C(uint64_t a1, uint64_t a2, float64x2_t *a3, uint64_t a4)
{
  v5 = a1;
  (*a4)(a1, a2, a3, *(a4 + 16));
  if (a3 && v5)
  {
    if (v5 < 4)
    {
      v7 = 0;
LABEL_8:
      v11 = &a3->f64[v7];
      v12 = v5 - v7;
      do
      {
        *v11 = -*v11;
        ++v11;
        --v12;
      }

      while (v12);
      return -v6;
    }

    v7 = v5 & 0xFFFFFFFC;
    v8 = a3 + 1;
    v9 = v7;
    do
    {
      v10 = vnegq_f64(*v8);
      v8[-1] = vnegq_f64(v8[-1]);
      *v8 = v10;
      v8 += 2;
      v9 -= 4;
    }

    while (v9);
    if (v7 != v5)
    {
      goto LABEL_8;
    }
  }

  return -v6;
}

float64_t sub_19D450338(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4, uint64_t a5)
{
  v6 = a1;
  (*(a5 + 8))(a1, a2, a3, a4, *(a5 + 16));
  if (v6)
  {
    if (v6 < 4)
    {
      v8 = 0;
LABEL_7:
      v12 = &a4->f64[v8];
      v13 = v6 - v8;
      do
      {
        v7.f64[0] = -*v12;
        *v12++ = v7.f64[0];
        --v13;
      }

      while (v13);
      return v7.f64[0];
    }

    v8 = v6 & 0xFFFFFFFC;
    v9 = a4 + 1;
    v10 = v8;
    do
    {
      v7 = vnegq_f64(v9[-1]);
      v11 = vnegq_f64(*v9);
      v9[-1] = v7;
      *v9 = v11;
      v9 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v8 != v6)
    {
      goto LABEL_7;
    }
  }

  return v7.f64[0];
}

uint64_t sub_19D4503C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 48);
  v9 = *(a4 + 56);
  v10 = *(a4 + 24);
  if (v10)
  {
    v11 = 0;
    v12 = *(a4 + 24);
    v13 = *(a4 + 56);
    v14 = *(a4 + 48);
    v15 = *(a4 + 32);
    do
    {
      v16 = *v14;
      if (*v14 != *v13)
      {
        v16 = *(a2 + 8 * v11++);
      }

      *v15++ = v16;
      ++v14;
      ++v13;
      --v12;
    }

    while (v12);
  }

  v17 = *a4;
  if (a3)
  {
    result = v17(v10, v7, *(a4 + 40), *(a4 + 16));
    if (v10)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        if (*(v8 + v19) != *(v9 + v19))
        {
          *(a3 + 8 * v20++) = *(*(a4 + 40) + v19);
        }

        v19 += 8;
      }

      while (8 * v10 != v19);
    }
  }

  else
  {
    v21 = *(a4 + 16);

    return v17(v10, v7, 0, v21);
  }

  return result;
}

uint64_t sub_19D4504E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a6 + 24))
  {
    v6 = 0;
    v7 = *(a6 + 48);
    v8 = *(a6 + 56);
    v9 = *(a6 + 24);
    v10 = *(a6 + 32);
    do
    {
      v11 = *v7;
      if (*v7 != *v8)
      {
        v11 = *(a4 + 8 * v6++);
      }

      *v10++ = v11;
      ++v7;
      ++v8;
      --v9;
    }

    while (v9);
  }

  return (*(a6 + 8))();
}

__CFString *sub_19D450544(unint64_t a1)
{
  if (a1 <= 0x1B && ((0xFFF7E7Fu >> a1) & 1) != 0)
  {
    v2 = *off_1E7626E50[a1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_19D4505A8(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1, v2, off_1EB0134C0, v3))
  {

    return 0;
  }

  else if (objc_msgSend_isEqualToString_(v1, v4, off_1EB0134C8, v5))
  {

    return 1;
  }

  else if (objc_msgSend_isEqualToString_(v1, v7, off_1EB0134D0, v8))
  {

    return 2;
  }

  else if (objc_msgSend_isEqualToString_(v1, v9, off_1EB0134D8, v10))
  {

    return 3;
  }

  else if (objc_msgSend_isEqualToString_(v1, v11, off_1EB0134E0, v12))
  {

    return 23;
  }

  else if (objc_msgSend_isEqualToString_(v1, v13, off_1EB0134E8, v14))
  {

    return 4;
  }

  else if (objc_msgSend_isEqualToString_(v1, v15, off_1EB0134F0, v16))
  {

    return 5;
  }

  else if (objc_msgSend_isEqualToString_(v1, v17, off_1EB0134F8, v18))
  {

    return 6;
  }

  else if (objc_msgSend_isEqualToString_(v1, v19, off_1EB013500, v20))
  {

    return 9;
  }

  else if (objc_msgSend_isEqualToString_(v1, v21, off_1EB013508, v22))
  {

    return 10;
  }

  else if (objc_msgSend_isEqualToString_(v1, v23, off_1EB013510, v24))
  {

    return 11;
  }

  else if (objc_msgSend_isEqualToString_(v1, v25, off_1EB013518, v26))
  {

    return 12;
  }

  else if (objc_msgSend_isEqualToString_(v1, v27, off_1EB013548, v28))
  {

    return 13;
  }

  else if (objc_msgSend_isEqualToString_(v1, v29, off_1EB013550, v30))
  {

    return 16;
  }

  else if (objc_msgSend_isEqualToString_(v1, v31, off_1EB013558, v32))
  {

    return 14;
  }

  else if (objc_msgSend_isEqualToString_(v1, v33, off_1EB013560, v34))
  {

    return 17;
  }

  else if (objc_msgSend_isEqualToString_(v1, v35, off_1EB013568, v36))
  {

    return 18;
  }

  else if (objc_msgSend_isEqualToString_(v1, v37, off_1EB013570, v38))
  {

    return 19;
  }

  else if (objc_msgSend_isEqualToString_(v1, v39, off_1EB013578, v40))
  {

    return 20;
  }

  else if (objc_msgSend_isEqualToString_(v1, v41, off_1EB013580, v42))
  {

    return 21;
  }

  else if (objc_msgSend_isEqualToString_(v1, v43, off_1EB013588, v44))
  {

    return 22;
  }

  else if (objc_msgSend_isEqualToString_(v1, v45, off_1EB013590, v46))
  {

    return 24;
  }

  else if (objc_msgSend_isEqualToString_(v1, v47, off_1EB013598, v48))
  {

    return 25;
  }

  else if (objc_msgSend_isEqualToString_(v1, v49, off_1EB0135A0, v50))
  {

    return 26;
  }

  else
  {
    if (objc_msgSend_isEqualToString_(v1, v51, off_1EB0135A8, v52))
    {
      v53 = 27;
    }

    else
    {
      v53 = -1;
    }

    return v53;
  }
}

__CFString *sub_19D450A80(unint64_t a1)
{
  if (a1 <= 0xC && ((0x1DFFu >> a1) & 1) != 0)
  {
    v2 = *off_1E7626F30[a1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_19D450AE0(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1, v2, off_1EB0135B0, v3))
  {

    return 0;
  }

  else if (objc_msgSend_isEqualToString_(v1, v4, off_1EB0135B8, v5))
  {

    return 1;
  }

  else if (objc_msgSend_isEqualToString_(v1, v7, off_1EB0135C0, v8))
  {

    return 8;
  }

  else if (objc_msgSend_isEqualToString_(v1, v9, off_1EB0135C8, v10))
  {

    return 2;
  }

  else if (objc_msgSend_isEqualToString_(v1, v11, off_1EB0135D0, v12))
  {

    return 3;
  }

  else if (objc_msgSend_isEqualToString_(v1, v13, off_1EB0135D8, v14))
  {

    return 4;
  }

  else if (objc_msgSend_isEqualToString_(v1, v15, off_1EB0135E0, v16))
  {

    return 5;
  }

  else if (objc_msgSend_isEqualToString_(v1, v17, off_1EB0135E8, v18))
  {

    return 6;
  }

  else if (objc_msgSend_isEqualToString_(v1, v19, off_1EB0135F0, v20))
  {

    return 7;
  }

  else if (objc_msgSend_isEqualToString_(v1, v21, off_1EB0135F8, v22))
  {

    return 10;
  }

  else if (objc_msgSend_isEqualToString_(v1, v23, off_1EB013600, v24))
  {

    return 11;
  }

  else
  {
    if (objc_msgSend_isEqualToString_(v1, v25, off_1EB013608, v26))
    {
      v27 = 12;
    }

    else
    {
      v27 = -1;
    }

    return v27;
  }
}

__CFString *sub_19D450D48(uint64_t a1)
{
  if (!a1)
  {
    v2 = &off_1EB013610;
LABEL_5:
    v3 = *v2;

    return v3;
  }

  if (a1 == 1)
  {
    v2 = &off_1EB013618;
    goto LABEL_5;
  }

  v3 = 0;

  return v3;
}

uint64_t sub_19D450DA8(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_exMRL_stringForKey_(a1, a2, off_1EB013450, a4);
  if (objc_msgSend_isEqualToString_(v4, v5, off_1EB013610, v6))
  {

    return 0;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v4, v7, off_1EB013618, v8);

    return isEqualToString;
  }
}

__CFString *sub_19D450E48(unint64_t a1)
{
  if (a1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_1E7626F98[a1];
  }

  return v2;
}

uint64_t sub_19D450E9C(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_containsObject_(v1, v2, off_1EB013638, v3);
  v7 = objc_msgSend_containsObject_(v1, v5, off_1EB013640, v6);
  v10 = objc_msgSend_containsObject_(v1, v8, off_1EB013648, v9);
  v13 = objc_msgSend_containsObject_(v1, v11, off_1EB013650, v12);
  v16 = objc_msgSend_containsObject_(v1, v14, off_1EB013658, v15);
  v19 = objc_msgSend_containsObject_(v1, v17, off_1EB013660, v18);
  v22 = objc_msgSend_containsObject_(v1, v20, off_1EB013668, v21);
  v25 = objc_msgSend_containsObject_(v1, v23, off_1EB013670, v24);
  v28 = objc_msgSend_containsObject_(v1, v26, off_1EB013678, v27);
  v31 = objc_msgSend_containsObject_(v1, v29, off_1EB013680, v30);
  v32 = 2;
  if (!v4)
  {
    v32 = 0;
  }

  if (v7)
  {
    v32 |= 4uLL;
  }

  if (v10)
  {
    v32 |= 0x10uLL;
  }

  if (v13)
  {
    v32 |= 0x20uLL;
  }

  if ((v19 | v16))
  {
    v33 = v32 | 0x40;
  }

  else
  {
    v33 = v32;
  }

  if (v22)
  {
    v33 |= 0x200uLL;
  }

  if (v25)
  {
    v33 |= 0x400uLL;
  }

  if (v28)
  {
    v33 |= 0x80uLL;
  }

  if (v31)
  {
    v34 = v33 | 0x100;
  }

  else
  {
    v34 = v33;
  }

  return v34;
}

id sub_19D451050(__int16 a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  v9 = v5;
  if ((a1 & 2) != 0)
  {
    objc_msgSend_addObject_(v5, v6, off_1EB013638, v8);
  }

  if ((a1 & 4) != 0)
  {
    objc_msgSend_addObject_(v9, v6, off_1EB013640, v8);
  }

  if ((a1 & 0x10) != 0)
  {
    objc_msgSend_addObject_(v9, v6, off_1EB013648, v8);
  }

  if ((a1 & 0x20) != 0)
  {
    objc_msgSend_addObject_(v9, v6, off_1EB013650, v8);
  }

  if ((a1 & 0x40) != 0)
  {
    objc_msgSend_addObject_(v9, v6, off_1EB013658, v8);
    objc_msgSend_addObject_(v9, v10, off_1EB013660, v11);
  }

  if ((a1 & 0x200) != 0)
  {
    objc_msgSend_addObject_(v9, v6, off_1EB013668, v8);
  }

  if ((a1 & 0x400) != 0)
  {
    objc_msgSend_addObject_(v9, v6, off_1EB013670, v8);
  }

  if ((a1 & 0x80) != 0)
  {
    objc_msgSend_addObject_(v9, v6, off_1EB013678, v8);
  }

  if ((a1 & 0x100) != 0)
  {
    objc_msgSend_addObject_(v9, v6, off_1EB013680, v8);
  }

  v12 = objc_msgSend_copy(v9, v6, v7, v8);

  return v12;
}

uint64_t sub_19D4511A4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_exMRL_stringForKey_(a1, a2, off_1EB013468, a4);
  if (objc_msgSend_isEqualToString_(v4, v5, off_1EB013630, v6))
  {

    return 2;
  }

  else if (objc_msgSend_isEqualToString_(v4, v7, off_1EB013628, v8))
  {

    return 1;
  }

  else
  {
    objc_msgSend_isEqualToString_(v4, v10, off_1EB013620, v11);

    return 0;
  }
}

uint64_t sub_19D451278(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_exMRL_stringForKey_(a1, a2, off_1EB013458, a4);
  if (objc_msgSend_isEqualToString_(v4, v5, off_1EB013630, v6))
  {

    return 2;
  }

  else if (objc_msgSend_isEqualToString_(v4, v7, off_1EB013628, v8))
  {

    return 1;
  }

  else
  {
    objc_msgSend_isEqualToString_(v4, v10, off_1EB013620, v11);

    return 0;
  }
}

uint64_t sub_19D45134C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_exMRL_arrayForKey_(a1, a2, off_1EB013460, a4);
  v5 = sub_19D450E9C(v4);

  return v5;
}

uint64_t sub_19D4513A0(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_msgSend_isEqualToString_(v3, v4, off_1EB0136A8, v5))
  {

    return a2 + 448;
  }

  if (objc_msgSend_isEqualToString_(v3, v6, off_1EB0136B0, v7))
  {

    return a2 + 576;
  }

  if (objc_msgSend_isEqualToString_(v3, v9, off_1EB0136B8, v10))
  {
    goto LABEL_6;
  }

  if (objc_msgSend_isEqualToString_(v3, v11, off_1EB0136C0, v12))
  {

    return a2 + 584;
  }

  if (objc_msgSend_isEqualToString_(v3, v13, off_1EB0136C8, v14))
  {
    goto LABEL_10;
  }

  if (objc_msgSend_isEqualToString_(v3, v15, off_1EB0136D0, v16))
  {

    return a2 + 592;
  }

  else if (objc_msgSend_isEqualToString_(v3, v17, off_1EB0136D8, v18))
  {

    return a2 + 472;
  }

  else if (objc_msgSend_isEqualToString_(v3, v19, off_1EB0136E0, v20))
  {

    return a2 + 600;
  }

  else if (objc_msgSend_isEqualToString_(v3, v21, off_1EB0136E8, v22))
  {

    return a2 + 480;
  }

  else if (objc_msgSend_isEqualToString_(v3, v23, off_1EB0136F0, v24))
  {

    return a2 + 488;
  }

  else
  {
    if (objc_msgSend_isEqualToString_(v3, v25, off_1EB013700, v26))
    {
LABEL_6:

      return a2 + 456;
    }

    if (objc_msgSend_isEqualToString_(v3, v27, off_1EB013708, v28))
    {
LABEL_10:

      return a2 + 464;
    }

    if (objc_msgSend_isEqualToString_(v3, v29, off_1EB0136F8, v30))
    {
      v31 = a2 + 496;
    }

    else
    {
      v31 = 0;
    }

    return v31;
  }
}

void sub_19D45165C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19D45165C(a1, *a2);
    sub_19D45165C(a1, a2[1]);
    sub_19D2AD8CC((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_19D451B1C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_19D452064(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_network(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_deviceHandler(v5, v6, v7, v8);
  v13 = objc_msgSend_numInputs(*(a1 + 32), v10, v11, v12);
  v17 = objc_msgSend_numOutputs(*(a1 + 32), v14, v15, v16);
  v19 = objc_msgSend_weightMatrixWithRows_columns_stdDev_initialValues_columnMajor_(v9, v18, v13, v17, 0, 0, 0.0);

  v23 = objc_msgSend_network(*(a1 + 32), v20, v21, v22);
  v27 = objc_msgSend_deviceHandler(v23, v24, v25, v26);
  v30 = objc_msgSend_matrixToVector_(v27, v28, v19, v29);

  return v30;
}

id sub_19D452184(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_network(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_deviceHandler(v5, v6, v7, v8);
  v13 = objc_msgSend_numOutputs(*(a1 + 32), v10, v11, v12);
  v15 = objc_msgSend_biasVectorWithLength_stdDev_values_(v9, v14, v13, 0, 0.0);

  return v15;
}

void sub_19D452414(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_19D453824(uint64_t a1, void *a2)
{
  v70 = a2;
  v6 = objc_msgSend_weights(*(a1 + 32), v3, v4, v5);

  if (v6)
  {
    v10 = objc_msgSend_weights(*(a1 + 32), v7, v8, v9);
    v14 = objc_msgSend_data(v10, v11, v12, v13);
    v15 = v14;
    v19 = objc_msgSend_contents(v15, v16, v17, v18);

    v20 = *(a1 + 40);
    if (v20)
    {
      v21 = *(a1 + 48);
      if (v21)
      {
        v22 = *(a1 + 56);
        v23 = *(a1 + 64);
        v26 = v22 < (&v19[v21] + v23 * (v20 - 1)) && v19 < &v22[v20 - 1 + v21] || v23 < 0;
        if (v21 > 7)
        {
          if (v20 == 1)
          {
            if (v26)
            {
              do
              {
                v29 = *v19++;
                *v22++ = v29;
                --v21;
              }

              while (v21);
            }

            else
            {
              v58 = v21 & 0xFFFFFFFFFFFFFFF8;
              v59 = v21 - (v21 & 0xFFFFFFFFFFFFFFF8);
              if (v21 == (v21 & 0xFFFFFFFFFFFFFFF8))
              {
                v60 = v22 + 4;
                v61 = (v19 + 4);
                do
                {
                  v62 = *v61;
                  *(v60 - 1) = *(v61 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v61 += 2;
                  v58 -= 8;
                }

                while (v58);
              }

              else
              {
                v63 = v22 + 4;
                v64 = (v19 + 4);
                do
                {
                  v65 = *v64;
                  *(v63 - 1) = *(v64 - 1);
                  *v63 = v65;
                  v63 += 2;
                  v64 += 2;
                  v58 -= 8;
                }

                while (v58);
                v66 = v21 >> 3;
                v67 = &v22[8 * (v21 >> 3)];
                v68 = &v19[8 * v66];
                do
                {
                  v69 = *v68++;
                  *v67++ = v69;
                  --v59;
                }

                while (v59);
              }
            }
          }

          else
          {
            for (i = 0; i != v20; ++i)
            {
              v31 = v21;
              v32 = v22;
              v33 = v19;
              do
              {
                v34 = *v33++;
                *v32 = v34;
                v32 += v20;
                --v31;
              }

              while (v31);
              v19 = (v19 + v23);
              ++v22;
            }
          }
        }

        else
        {
          v27 = 0;
          v28 = v19 + 3;
          v7 = &v22[v20];
          do
          {
            v22[v27] = *(v28 - 3);
            if (v21 != 1)
            {
              *&v7[4 * v27] = *(v28 - 2);
              if (v21 != 2)
              {
                v22[2 * v20 + v27] = *(v28 - 1);
                if (v21 != 3)
                {
                  v22[3 * v20 + v27] = *v28;
                  if (v21 != 4)
                  {
                    v22[4 * v20 + v27] = v28[1];
                    if (v21 != 5)
                    {
                      v22[5 * v20 + v27] = v28[2];
                      if (v21 != 6)
                      {
                        v22[6 * v20 + v27] = v28[3];
                      }
                    }
                  }
                }
              }
            }

            ++v27;
            v28 = (v28 + v23);
          }

          while (v20 != v27);
        }
      }
    }
  }

  v35 = objc_msgSend_biasVector(*(a1 + 32), v7, v8, v9);

  if (v35)
  {
    v39 = objc_msgSend_biasVector(*(a1 + 32), v36, v37, v38);
    v43 = objc_msgSend_data(v39, v40, v41, v42);
    v44 = v43;
    v48 = objc_msgSend_contents(v44, v45, v46, v47);

    for (j = 0; ; ++j)
    {
      v53 = objc_msgSend_biasVector(*(a1 + 32), v49, v50, v51);
      v57 = objc_msgSend_length(v53, v54, v55, v56);

      if (v57 <= j)
      {
        break;
      }

      *(*(a1 + 72) + 4 * j) = *(v48 + 4 * j);
    }
  }
}

void sub_19D453D1C()
{
  v0 = __cxa_guard_acquire(&qword_1EB013CB0);
  if (v0)
  {
    qword_1EB013CD8 = 0;
    unk_1EB013CE0 = 0;
    qword_1EB013CD0 = 0;
    sub_19D2B9B38(v0, &qword_1EB013CD0, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB013CB0);
  }
}

void sub_19D453D84()
{
  v0 = __cxa_guard_acquire(&qword_1EB013CC8);
  if (v0)
  {
    qword_1EB013D20 = 0;
    unk_1EB013D28 = 0;
    qword_1EB013D18 = 0;
    sub_19D2B9B38(v0, &qword_1EB013D18, &dword_19D2A1000);
    __cxa_guard_release(&qword_1EB013CC8);
  }
}

void sub_19D453DD4()
{
  v0 = __cxa_guard_acquire(&qword_1EB013CB8);
  if (v0)
  {
    qword_1EB013CF0 = 0;
    unk_1EB013CF8 = 0;
    qword_1EB013CE8 = 0;
    sub_19D2B9B38(v0, &qword_1EB013CE8, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB013CB8);
  }
}

void sub_19D453E3C()
{
  v0 = __cxa_guard_acquire(&qword_1EB013CC0);
  if (v0)
  {
    qword_1EB013D08 = 0;
    unk_1EB013D10 = 0;
    qword_1EB013D00 = 0;
    sub_19D2B9B38(v0, &qword_1EB013D00, &dword_19D2A1000);
    __cxa_guard_release(&qword_1EB013CC0);
  }
}

void sub_19D453F10(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_19D2A1000, log, OS_LOG_TYPE_ERROR, "Unable to append the state", buf, 2u);
}

void sub_19D454030()
{
  v0 = __cxa_guard_acquire(&qword_1EB013D38);
  if (v0)
  {
    qword_1EB013D70 = 0;
    unk_1EB013D78 = 0;
    qword_1EB013D68 = 0;
    sub_19D362A7C(v0, &qword_1EB013D68, &dword_19D2A1000);
    __cxa_guard_release(&qword_1EB013D38);
  }
}

void sub_19D454080()
{
  v0 = __cxa_guard_acquire(&qword_1EB013D40);
  if (v0)
  {
    qword_1EB013D88 = 0;
    unk_1EB013D90 = 0;
    qword_1EB013D80 = 0;
    sub_19D362A7C(v0, &qword_1EB013D80, &dword_19D2A1000);
    __cxa_guard_release(&qword_1EB013D40);
  }
}

void sub_19D4540D0()
{
  v0 = __cxa_guard_acquire(&qword_1EB013D48);
  if (v0)
  {
    qword_1EB013DA0 = 0;
    unk_1EB013DA8 = 0;
    qword_1EB013D98 = 0;
    sub_19D2B9B38(v0, &qword_1EB013D98, &dword_19D2A1000);
    __cxa_guard_release(&qword_1EB013D48);
  }
}

void sub_19D454120()
{
  v0 = __cxa_guard_acquire(&qword_1EB013D50);
  if (v0)
  {
    qword_1EB013DB8 = 0;
    unk_1EB013DC0 = 0;
    qword_1EB013DB0 = 0;
    sub_19D362A7C(v0, &qword_1EB013DB0, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB013D50);
  }
}

void sub_19D454188()
{
  v0 = __cxa_guard_acquire(&qword_1EB013D58);
  if (v0)
  {
    qword_1EB013DD0 = 0;
    unk_1EB013DD8 = 0;
    qword_1EB013DC8 = 0;
    sub_19D2B9B38(v0, &qword_1EB013DC8, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB013D58);
  }
}

void sub_19D4541F0()
{
  v0 = __cxa_guard_acquire(&qword_1EB0138E8);
  if (v0)
  {
    sub_19D362AA8(v0, qword_1EB0138D0);
    sub_19D2B9B38(v1, v2, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB0138E8);
  }
}

void sub_19D45424C()
{
  v0 = __cxa_guard_acquire(&qword_1EB0138C8);
  if (v0)
  {
    sub_19D362AA8(v0, qword_1EB0138B0);
    sub_19D2B9B38(v1, v2, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB0138C8);
  }
}

void sub_19D4542A8()
{
  if (__cxa_guard_acquire(&qword_1EB013D60))
  {
    sub_19D362A5C();
    do
    {
      sub_19D362A34(v0);
    }

    while (!v1);
    v2 = sub_19D362A9C();

    __cxa_guard_release(v2);
  }
}

void sub_19D45430C()
{
  v0 = __cxa_guard_acquire(&qword_1EB013908);
  if (v0)
  {
    sub_19D362AA8(v0, qword_1EB0138F0);
    sub_19D2B9B38(v1, v2, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB013908);
  }
}

void sub_19D454368()
{
  v0 = __cxa_guard_acquire(&qword_1EB013928);
  if (v0)
  {
    sub_19D362AA8(v0, qword_1EB013910);
    sub_19D2B9B38(v1, v2, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB013928);
  }
}

void sub_19D4543C4()
{
  v0 = __cxa_guard_acquire(&qword_1EB0131C8);
  if (v0)
  {
    sub_19D362AA8(v0, qword_1EB013138);
    sub_19D2B9B38(v1, v2, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB0131C8);
  }
}

void sub_19D454420()
{
  v0 = __cxa_guard_acquire(&qword_1EB0131C0);
  if (v0)
  {
    sub_19D362AA8(v0, qword_1EB013120);
    sub_19D2B9B38(v1, v2, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB0131C0);
  }
}

void sub_19D45447C()
{
  v0 = __cxa_guard_acquire(&qword_1EB013948);
  if (v0)
  {
    sub_19D362AA8(v0, qword_1EB013930);
    sub_19D2B9B38(v1, v2, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB013948);
  }
}

void sub_19D4544D8()
{
  v0 = __cxa_guard_acquire(&qword_1EB0131E0);
  if (v0)
  {
    sub_19D362AA8(v0, qword_1EB013950);
    sub_19D2B9B38(v1, v2, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB0131E0);
  }
}

void sub_19D454534()
{
  v0 = __cxa_guard_acquire(&qword_1EB013980);
  if (v0)
  {
    sub_19D362AA8(v0, qword_1EB013968);
    sub_19D2B9B38(v1, v2, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB013980);
  }
}

void sub_19D454590()
{
  v0 = __cxa_guard_acquire(&qword_1EB0139A0);
  if (v0)
  {
    sub_19D362AA8(v0, qword_1EB013988);
    sub_19D2B9B38(v1, v2, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB0139A0);
  }
}

void sub_19D4545EC()
{
  v0 = __cxa_guard_acquire(&qword_1EB0139C0);
  if (v0)
  {
    sub_19D362AA8(v0, qword_1EB0139A8);
    sub_19D2B9B38(v1, v2, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB0139C0);
  }
}

void sub_19D454648()
{
  v0 = __cxa_guard_acquire(&qword_1EB0139E0);
  if (v0)
  {
    sub_19D362AA8(v0, qword_1EB0139C8);
    sub_19D2B9B38(v1, v2, &dword_19D2A1000);

    __cxa_guard_release(&qword_1EB0139E0);
  }
}

void sub_19D4546CC(void **a1)
{
  if (*(a1 + 23) < 0)
  {
    sub_19D373590(a1);
  }
}

void sub_19D45478C()
{
  sub_19D2C7230();
  (*(v0 + 16))();
  sub_19D379EB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_19D45482C(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_19D379EB8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }

  __cxa_end_catch();
}

void sub_19D454940()
{
  sub_19D379EAC();
  sub_19D379E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_19D4549C0()
{
  sub_19D379EC8(*MEMORY[0x1E69E9840]);
  sub_19D379EAC();
  sub_19D379E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_19D454A38()
{
  sub_19D379EC8(*MEMORY[0x1E69E9840]);
  sub_19D379EAC();
  sub_19D379E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_19D454AB0()
{
  sub_19D379EC8(*MEMORY[0x1E69E9840]);
  sub_19D379EAC();
  sub_19D379E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_19D454B28()
{
  sub_19D379EC8(*MEMORY[0x1E69E9840]);
  sub_19D379EAC();
  sub_19D379E80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_19D454BA0(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = 5;
  _os_log_error_impl(&dword_19D2A1000, a2, OS_LOG_TYPE_ERROR, "Cannot convert rank %lu TensorDescriptor to rank %lu FixedShape", &v2, 0x16u);
}

void sub_19D454C80()
{
  sub_19D2C7230();
  (*(v0 + 16))();
  sub_19D379EB8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_19D454D68(NSObject *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_error_impl(&dword_19D2A1000, a1, OS_LOG_TYPE_ERROR, "%s not found in state", &v5, 0xCu);
  }

  __cxa_end_catch();
}

void sub_19D454E1C(NSObject *a1, uint64_t *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_error_impl(&dword_19D2A1000, a1, OS_LOG_TYPE_ERROR, "%s not found in state", &v7, 0xCu);
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  __cxa_end_catch();
}

void sub_19D454EE8(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&dword_19D2A1000, a2, OS_LOG_TYPE_ERROR, "%s", &v3, 0xCu);
}

void sub_19D454F80()
{
  sub_19D38A0FC(*MEMORY[0x1E69E9840]);
  v2 = 136315138;
  v3 = v0;
  _os_log_error_impl(&dword_19D2A1000, v1, OS_LOG_TYPE_ERROR, "%s", &v2, 0xCu);
}

void sub_19D45500C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_19D2A1000, log, OS_LOG_TYPE_ERROR, "Params specified that weights are being shared with Adaptive Embedding Layer. However, weights don't match.", buf, 2u);
}

void sub_19D45504C()
{
  sub_19D3B24E0();
  v3 = *(v2 + 8);
  v5 = v4;
  if (v3 != v4)
  {
    v6 = v3;
    do
    {
      v8 = *(v6 - 3);
      v6 -= 24;
      v7 = v8;
      if (v8)
      {
        *(v3 - 2) = v7;
        operator delete(v7);
      }

      v3 = v6;
    }

    while (v6 != v0);
    v5 = *v1;
  }

  *(v1 + 8) = v0;
  operator delete(v5);
}

void sub_19D4550B0(char *a1, char *__p)
{
  if (a1 != __p)
  {
    v3 = a1;
    do
    {
      v5 = *(v3 - 3);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(a1 - 2) = v4;
        operator delete(v4);
      }

      a1 = v3;
    }

    while (v3 != __p);
  }

  operator delete(__p);
}

void sub_19D455104()
{
  sub_19D3B24E0();
  v4 = *v3;
  v6 = v5;
  if (v4 != v5)
  {
    v7 = v2;
    do
    {
      v8 = *(v4 - 1);
      v4 -= 3;
      if (v8 < 0)
      {
        operator delete(*v4);
      }
    }

    while (v4 != v0);
    v6 = *v7;
  }

  *v1 = v0;
  operator delete(v6);
}

void sub_19D455168()
{
  sub_19D3B24E0();
  v3 = *(v2 + 8);
  v5 = v4;
  if (v3 != v4)
  {
    do
    {
      v6 = *(v3 - 1);
      v3 -= 3;
      if (v6 < 0)
      {
        operator delete(*v3);
      }
    }

    while (v3 != v0);
    v5 = *v1;
  }

  *(v1 + 8) = v0;
  operator delete(v5);
}

void sub_19D4551C8(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = (*(*a1 + 16))(a1);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&dword_19D2A1000, a2, OS_LOG_TYPE_ERROR, "Cannot create context, Caught exception: %s", &v4, 0xCu);
}

void sub_19D455274(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_19D2A1000, a2, OS_LOG_TYPE_ERROR, "Unsupported Engine type %d.", v3, 8u);
}

void sub_19D455340(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 40) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 16) = v6;

    operator delete(v6);
  }
}

uint64_t *sub_19D45539C(void *a1, uint64_t **a2, int a3)
{
  __cxa_begin_catch(a1);
  *(*a2 + 24) = a3;
  __cxa_end_catch();
  v5 = *a2;

  return sub_19D3CBE70(v5, 1);
}

void sub_19D4553E8(void *a1, uint64_t a2)
{
  if (a1)
  {
    operator delete(a1);
  }

  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;
    operator delete(v3);
  }
}

void sub_19D455464()
{
  sub_19D38A0FC(*MEMORY[0x1E69E9840]);
  v2 = 136315138;
  v3 = v0;
  _os_log_error_impl(&dword_19D2A1000, v1, OS_LOG_TYPE_ERROR, "Unrecognized output name: %s", &v2, 0xCu);
}

void sub_19D455538(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_19D2A1000, log, OS_LOG_TYPE_ERROR, "dict does not have key: %s", buf, 0xCu);
}

uint64_t E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp()
{
  return MEMORY[0x1EEE02E98]();
}

{
  return MEMORY[0x1EEE02EA0]();
}

uint64_t std::stringbuf::str()
{
  return MEMORY[0x1EEE639E8]();
}

{
  return MEMORY[0x1EEE63FA0]();
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x1EEE63B28](this, a2);
}

{
  return MEMORY[0x1EEE63B40](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::runtime_error *a2)
{
  return MEMORY[0x1EEE63B30](this, a2);
}

{
  return MEMORY[0x1EEE63B48](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x1EEE63B50](this);
}

{
  MEMORY[0x1EEE63B58](this);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x1EEE63E18]();
}

{
  return MEMORY[0x1EEE63E20]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63EE0]();
}

void std::exception::~exception(std::exception *this)
{
  MEMORY[0x1EEE64520](this);
}

{
  MEMORY[0x1EEE64528](this);
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

vFloat vexpf(vFloat a1)
{
  v1 = MEMORY[0x1EEDB23F0](a1.i64[0], a1.i64[1]);
  result.i64[1] = v2;
  result.i64[0] = v1;
  return result;
}