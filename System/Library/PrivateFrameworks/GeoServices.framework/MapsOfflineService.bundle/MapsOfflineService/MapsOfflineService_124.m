void sub_7CD0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void *a12)
{
  v13 = a12;
  if (a12)
  {
    do
    {
      v14 = *v13;
      sub_5C17B4((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7CD11C(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  sub_7C8FF8(0, v59);
  sub_7CF904(a1, v58);
  sub_4D0560();
  v4 = v3;
  v6 = v5;
  v44 = 0;
LABEL_2:
  sub_4D0568();
  v8 = v7;
  v10 = v9;
  if (v4)
  {
    v11 = sub_4D1DC0(v4);
    v12 = v6 < v11;
    if (!v8)
    {
      if (v6 >= v11)
      {
        goto LABEL_52;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_52;
    }

    v12 = 0;
  }

  v13 = sub_4D1DC0(v8);
  if (v10 >= v13 || !v12)
  {
    if (((v12 ^ (v10 < v13)) & 1) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_15;
  }

  v15 = sub_4D1F50(v4, v6);
  if (v15 != sub_4D1F50(v8, v10))
  {
LABEL_15:
    v16 = sub_4D1F50(v4, v6);
    v57 = *(v16 + 32) | (*(v16 + 36) << 32);
    if (!sub_3A8760(v58, &v57))
    {
      goto LABEL_19;
    }

    v45[0] = &v57;
    v18 = sub_7CC190(v59, &v57);
    sub_7CFB0C(v4, v6, v18 + 3, &v55);
    v19 = v55;
    v43 = v56;
    if (v55 == v56)
    {
      if (!v55)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    while (1)
    {
      v61 = &v57;
      v20 = sub_7CEE40(v58, &v57);
      sub_5139E8(v45, (v20 + 3));
      v61 = v45;
      v21 = sub_7CF1EC(a2, v45);
      v22 = sub_7C9F64(v19, v4, v6);
      v23 = sub_7CA18C(v19, v4, v6);
      v24 = v22 + v44;
      v25 = v23 + v44;
      v26 = v21[21];
      v27 = v21[22];
      if (v26 != v27 && *(v27 - 8) == v24)
      {
        break;
      }

      v28 = v21[23];
      if (v27 < v28)
      {
        sub_3320D0(v21[22], v24, v25);
        v21[22] = v27 + 16;
        v21[22] = v27 + 16;
        if ((v54 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      v29 = (v27 - v26) >> 4;
      if ((v29 + 1) >> 60)
      {
        sub_1794();
      }

      v30 = v28 - v26;
      v31 = v30 >> 3;
      if (v30 >> 3 <= (v29 + 1))
      {
        v31 = v29 + 1;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFF0)
      {
        v32 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v31;
      }

      if (v32)
      {
        if (!(v32 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v33 = sub_3320D0((16 * v29), v24, v25);
      v34 = v33 + 2;
      v35 = v21[21];
      v36 = v21[22] - v35;
      v37 = v33 - v36;
      memcpy(v33 - v36, v35, v36);
      v21[21] = v37;
      v21[22] = v34;
      v21[23] = 0;
      if (v35)
      {
        operator delete(v35);
      }

      v21[22] = v34;
      if (v54 < 0)
      {
        goto LABEL_27;
      }

LABEL_28:
      if (v52 < 0)
      {
        operator delete(v51);
        if ((v50 & 0x80000000) == 0)
        {
LABEL_30:
          if ((v48 & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_35;
        }
      }

      else if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v49);
      if ((v48 & 0x80000000) == 0)
      {
LABEL_31:
        if (v46 < 0)
        {
          goto LABEL_36;
        }

        goto LABEL_20;
      }

LABEL_35:
      operator delete(v47);
      if (v46 < 0)
      {
LABEL_36:
        operator delete(v45[0]);
      }

LABEL_20:
      v19 += 2;
      if (v19 == v43)
      {
        v19 = v55;
        if (!v55)
        {
LABEL_19:
          v44 += sub_4D23F8(v4, v6++, v17);
          goto LABEL_2;
        }

LABEL_18:
        v56 = v19;
        operator delete(v19);
        goto LABEL_19;
      }
    }

    *(v27 - 8) = v25;
    if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_27:
    operator delete(__p);
    goto LABEL_28;
  }

LABEL_52:
  sub_7CE6CC(v58);
  v38 = v60;
  if (v60)
  {
    do
    {
      v40 = *v38;
      v41 = v38[3];
      if (v41)
      {
        v38[4] = v41;
        operator delete(v41);
      }

      operator delete(v38);
      v38 = v40;
    }

    while (v40);
  }

  v39 = v59[0];
  v59[0] = 0;
  if (v39)
  {
    operator delete(v39);
  }
}

void sub_7CD550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  sub_7CE6CC(v33 - 184);
  sub_39AFC(v33 - 144);
  sub_7CCED4(a10);
  _Unwind_Resume(a1);
}

void sub_7CD604(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    do
    {
      v3 = nullsub_1(v1);
      v4 = *v3;
      v5 = v3[1];
      while (v4 != v5)
      {
        sub_7CD7EC(v4, &__p);
        v6 = v13;
        if (v13)
        {
          v7 = *(v4 + 1160);
          do
          {
            if (v7 >= *(v4 + 1168))
            {
              v7 = sub_7CDCD4((v4 + 1152), v6 + 1, v6 + 21);
            }

            else
            {
              sub_7CDF18(v7, v6 + 1, v6 + 21);
              v7 += 22;
              *(v4 + 1160) = v7;
            }

            *(v4 + 1160) = v7;
            v6 = *v6;
          }

          while (v6);
          v8 = v13;
          if (v13)
          {
            do
            {
              v10 = *v8;
              v11 = *(v8 + 21);
              if (v11)
              {
                *(v8 + 22) = v11;
                operator delete(v11);
              }

              if (v8[167] < 0)
              {
                operator delete(*(v8 + 18));
                if ((v8[135] & 0x80000000) == 0)
                {
LABEL_21:
                  if ((v8[111] & 0x80000000) == 0)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_27;
                }
              }

              else if ((v8[135] & 0x80000000) == 0)
              {
                goto LABEL_21;
              }

              operator delete(*(v8 + 14));
              if ((v8[111] & 0x80000000) == 0)
              {
LABEL_22:
                if ((v8[71] & 0x80000000) == 0)
                {
                  goto LABEL_23;
                }

                goto LABEL_28;
              }

LABEL_27:
              operator delete(*(v8 + 11));
              if ((v8[71] & 0x80000000) == 0)
              {
LABEL_23:
                if (v8[39] < 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_16;
              }

LABEL_28:
              operator delete(*(v8 + 6));
              if (v8[39] < 0)
              {
LABEL_29:
                operator delete(*(v8 + 2));
              }

LABEL_16:
              operator delete(v8);
              v8 = v10;
            }

            while (v10);
          }
        }

        v9 = __p;
        __p = 0;
        if (v9)
        {
          operator delete(v9);
        }

        v4 += 12656;
      }

      v1 += 7808;
    }

    while (v1 != v2);
  }
}

void sub_7CD7A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void *a12)
{
  v13 = a12;
  if (a12)
  {
    do
    {
      v14 = *v13;
      sub_5C17B4((v13 + 2));
      operator delete(v13);
      v13 = v14;
    }

    while (v14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7CD7EC(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  sub_7C97B0(0, v59);
  sub_7CFEEC(a1, v58);
  sub_4D0560();
  v4 = v3;
  v6 = v5;
  v44 = 0;
LABEL_2:
  sub_4D0568();
  v8 = v7;
  v10 = v9;
  if (v4)
  {
    v11 = sub_4D1DC0(v4);
    v12 = v6 < v11;
    if (!v8)
    {
      if (v6 >= v11)
      {
        goto LABEL_52;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_52;
    }

    v12 = 0;
  }

  v13 = sub_4D1DC0(v8);
  if (v10 >= v13 || !v12)
  {
    if (((v12 ^ (v10 < v13)) & 1) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_15;
  }

  v15 = sub_4D1F50(v4, v6);
  if (v15 != sub_4D1F50(v8, v10))
  {
LABEL_15:
    v16 = sub_4D1F50(v4, v6);
    v57 = *(v16 + 32) | ((*(v16 + 36) & 0x1FFFFFFF) << 32);
    if (!sub_3A8760(v58, &v57))
    {
      goto LABEL_19;
    }

    v45[0] = &v57;
    v18 = sub_7CC190(v59, &v57);
    sub_7D00F4(v4, v6, v18 + 3, &v55);
    v19 = v55;
    v43 = v56;
    if (v55 == v56)
    {
      if (!v55)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    while (1)
    {
      v61 = &v57;
      v20 = sub_7CEE40(v58, &v57);
      sub_5139E8(v45, (v20 + 3));
      v61 = v45;
      v21 = sub_7CF1EC(a2, v45);
      v22 = sub_7CA078(v19, v4, v6);
      v23 = sub_7CA2A0(v19, v4, v6);
      v24 = v22 + v44;
      v25 = v23 + v44;
      v26 = v21[21];
      v27 = v21[22];
      if (v26 != v27 && *(v27 - 8) == v24)
      {
        break;
      }

      v28 = v21[23];
      if (v27 < v28)
      {
        sub_3320D0(v21[22], v24, v25);
        v21[22] = v27 + 16;
        v21[22] = v27 + 16;
        if ((v54 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      v29 = (v27 - v26) >> 4;
      if ((v29 + 1) >> 60)
      {
        sub_1794();
      }

      v30 = v28 - v26;
      v31 = v30 >> 3;
      if (v30 >> 3 <= (v29 + 1))
      {
        v31 = v29 + 1;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFF0)
      {
        v32 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v31;
      }

      if (v32)
      {
        if (!(v32 >> 60))
        {
          operator new();
        }

        sub_1808();
      }

      v33 = sub_3320D0((16 * v29), v24, v25);
      v34 = v33 + 2;
      v35 = v21[21];
      v36 = v21[22] - v35;
      v37 = v33 - v36;
      memcpy(v33 - v36, v35, v36);
      v21[21] = v37;
      v21[22] = v34;
      v21[23] = 0;
      if (v35)
      {
        operator delete(v35);
      }

      v21[22] = v34;
      if (v54 < 0)
      {
        goto LABEL_27;
      }

LABEL_28:
      if (v52 < 0)
      {
        operator delete(v51);
        if ((v50 & 0x80000000) == 0)
        {
LABEL_30:
          if ((v48 & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_35;
        }
      }

      else if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      operator delete(v49);
      if ((v48 & 0x80000000) == 0)
      {
LABEL_31:
        if (v46 < 0)
        {
          goto LABEL_36;
        }

        goto LABEL_20;
      }

LABEL_35:
      operator delete(v47);
      if (v46 < 0)
      {
LABEL_36:
        operator delete(v45[0]);
      }

LABEL_20:
      v19 += 2;
      if (v19 == v43)
      {
        v19 = v55;
        if (!v55)
        {
LABEL_19:
          v44 += sub_4D23F8(v4, v6++, v17);
          goto LABEL_2;
        }

LABEL_18:
        v56 = v19;
        operator delete(v19);
        goto LABEL_19;
      }
    }

    *(v27 - 8) = v25;
    if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_27:
    operator delete(__p);
    goto LABEL_28;
  }

LABEL_52:
  sub_7CE6CC(v58);
  v38 = v60;
  if (v60)
  {
    do
    {
      v40 = *v38;
      v41 = v38[3];
      if (v41)
      {
        v38[4] = v41;
        operator delete(v41);
      }

      operator delete(v38);
      v38 = v40;
    }

    while (v40);
  }

  v39 = v59[0];
  v59[0] = 0;
  if (v39)
  {
    operator delete(v39);
  }
}

void sub_7CDC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  sub_7CE6CC(v33 - 184);
  sub_39AFC(v33 - 144);
  sub_7CCED4(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_7CDCD4(void **a1, __int128 *a2, void *a3)
{
  v3 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v19 = (16 * ((a1[1] - *a1) >> 4));
  sub_7CDF18(v19, a2, a3);
  v7 = 176 * v3 + 176;
  v8 = *a1;
  v9 = a1[1];
  v10 = v19 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v19 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 2) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      *(v12 + 3) = *(v11 + 3);
      v14 = *(v11 + 2);
      *(v12 + 6) = *(v11 + 6);
      *(v12 + 2) = v14;
      *(v11 + 5) = 0;
      *(v11 + 6) = 0;
      *(v11 + 4) = 0;
      *(v12 + 7) = *(v11 + 7);
      *(v12 + 16) = *(v11 + 16);
      v15 = *(v11 + 72);
      *(v12 + 11) = *(v11 + 11);
      *(v12 + 72) = v15;
      *(v11 + 10) = 0;
      *(v11 + 11) = 0;
      *(v11 + 9) = 0;
      v16 = *(v11 + 6);
      *(v12 + 14) = *(v11 + 14);
      *(v12 + 6) = v16;
      *(v11 + 13) = 0;
      *(v11 + 14) = 0;
      *(v11 + 12) = 0;
      *(v12 + 30) = *(v11 + 30);
      v17 = *(v11 + 8);
      *(v12 + 18) = *(v11 + 18);
      *(v12 + 8) = v17;
      *(v11 + 17) = 0;
      *(v11 + 18) = 0;
      *(v11 + 16) = 0;
      *(v12 + 19) = 0;
      *(v12 + 20) = 0;
      *(v12 + 21) = 0;
      *(v12 + 152) = *(v11 + 152);
      *(v12 + 21) = *(v11 + 21);
      *(v11 + 19) = 0;
      *(v11 + 20) = 0;
      *(v11 + 21) = 0;
      v11 += 176;
      v12 += 176;
    }

    while (v11 != v9);
    do
    {
      sub_5C17B4(v8);
      v8 += 176;
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

void sub_7CDF04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_693248(va);
  _Unwind_Resume(a1);
}

void *sub_7CDF18(void *a1, __int128 *a2, void *a3)
{
  sub_5139E8(v7, a2);
  v5 = a3[1];
  if (v5 != *a3)
  {
    if (((v5 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5139E8(a1, v7);
  a1[19] = 0;
  a1[20] = 0;
  a1[21] = 0;
  if (v16 < 0)
  {
    operator delete(__p);
    if ((v14 & 0x80000000) == 0)
    {
LABEL_6:
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v13);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    operator delete(v9);
    if ((v8 & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_14:
    operator delete(v7[0]);
    return a1;
  }

LABEL_12:
  operator delete(v11);
  if (v10 < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  return a1;
}

void sub_7CE090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    operator delete(v10);
    sub_3E5388(&a10);
    _Unwind_Resume(a1);
  }

  sub_3E5388(&a10);
  _Unwind_Resume(a1);
}

void sub_7CE0E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = a1[157] - a1[156];
  if (v3)
  {
    v5 = 0;
    v6 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 5);
    do
    {
      v7 = sub_7CE79C(a1 + 156, v5);
      sub_5139E8(v14, v7);
      if (!sub_734C10(v14))
      {
        goto LABEL_11;
      }

      v8 = *(v7 + 152);
      if (v5 + 1 == 0xCCCCCCCCCCCCCCCDLL * ((a1[157] - a1[156]) >> 5))
      {
        v9 = sub_4D1DC0(a1);
        if (v8 <= v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = v8;
        }

        if (v8 < v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = *(sub_7CE79C(a1 + 156, v5 + 1) + 152);
        if (v8 <= v12)
        {
          v10 = v12;
        }

        else
        {
          v10 = v8;
        }

        if (v8 < v12)
        {
          do
          {
LABEL_10:
            v11 = sub_4D1F50(a1, v8);
            v13 = *(v11 + 32) | (*(v11 + 36) << 32);
            sub_7CE9D0(a2, &v13);
            ++v8;
          }

          while (v10 != v8);
        }
      }

LABEL_11:
      if (v23 < 0)
      {
        operator delete(__p);
        if ((v21 & 0x80000000) == 0)
        {
LABEL_13:
          if ((v19 & 0x80000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_19;
        }
      }

      else if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      operator delete(v20);
      if ((v19 & 0x80000000) == 0)
      {
LABEL_14:
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_20;
      }

LABEL_19:
      operator delete(v18);
      if ((v17 & 0x80000000) == 0)
      {
LABEL_15:
        if (v15 < 0)
        {
          goto LABEL_21;
        }

        goto LABEL_3;
      }

LABEL_20:
      operator delete(v16);
      if (v15 < 0)
      {
LABEL_21:
        operator delete(v14[0]);
      }

LABEL_3:
      ++v5;
    }

    while (v5 != v6);
  }
}

void sub_7CE29C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E5388(va);
  sub_7CE6CC(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_7CE2EC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = a4;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*(sub_4D1F50(a1, a2) + 38))
  {
    v8 = 1000000000 - sub_4D21C8(a1, a2);
    result = 1000000000 - sub_4D2148(a1, a2);
    v10 = *a3;
    if (*a3 < a3[1])
    {
LABEL_3:
      v11 = 0;
      v26 = result << 32;
      v27 = result;
      v12 = v10 - 12;
      v13 = -1;
      v28 = v7;
      do
      {
        v14 = *(v10 + 4);
        if (v14 >= v8)
        {
          if (v14 > result)
          {
            break;
          }

          if (*(v10 + 8) == 1)
          {
            if (v13 < 0x3B9ACA01)
            {
              v15 = v7[2];
              if (v11 >= v15)
              {
                v17 = v11;
                v18 = v11 >> 3;
                v19 = v18 + 1;
                if ((v18 + 1) >> 61)
                {
                  goto LABEL_54;
                }

                if (v15 >> 2 > v19)
                {
                  v19 = v15 >> 2;
                }

                if (v15 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v20 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v20 = v19;
                }

                if (v20)
                {
                  if (!(v20 >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_55;
                }

                v21 = (8 * v18);
                *v21 = v13 | (v14 << 32);
                v11 = (v21 + 1);
                memcpy(0, 0, v17);
                v7 = v28;
                v28[1] = v11;
                v28[2] = 0;
                result = v27;
              }

              else
              {
                *v11 = v13 | (v14 << 32);
                v11 += 8;
              }

              v7[1] = v11;
LABEL_51:
              v13 = -1;
            }
          }

          else
          {
            if (v8 == v14)
            {
              if (*v10 == 2)
              {
                *(v10 + 8) = 1;
                v13 = v8;
              }

              goto LABEL_5;
            }

            if (v8 < v14 && v14 < result)
            {
              if (v13 > 0x3B9ACA00 && v10 != *a3)
              {
                v13 = *(v12 + 4);
              }

              *(v10 + 8) = 1;
              goto LABEL_5;
            }

            if (v14 == result && !*v10)
            {
              if (v13 <= 0x3B9ACA00 || v10 != *a3 && (v13 = *(v12 + 4), v13 < 0x3B9ACA01))
              {
                if (v13 < result)
                {
                  v16 = v7[2];
                  if (v11 >= v16)
                  {
                    v22 = v11;
                    v23 = v11 >> 3;
                    v24 = (v11 >> 3) + 1;
                    if (v24 >> 61)
                    {
LABEL_54:
                      *v28 = 0;
                      sub_1794();
                    }

                    if (v16 >> 2 > v24)
                    {
                      v24 = v16 >> 2;
                    }

                    if (v16 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v25 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v25 = v24;
                    }

                    if (v25)
                    {
                      if (!(v25 >> 61))
                      {
                        operator new();
                      }

LABEL_55:
                      *v28 = 0;
                      sub_1808();
                    }

                    *(8 * v23) = v26 | v13;
                    v11 = 8 * v23 + 8;
                    memcpy(0, 0, v22);
                    v7 = v28;
                    v28[1] = v11;
                    v28[2] = 0;
                    result = v27;
                  }

                  else
                  {
                    *v11 = v26 | v13;
                    v11 += 8;
                  }

                  v7[1] = v11;
                }
              }

              *(v10 + 8) = 1;
              goto LABEL_51;
            }
          }
        }

LABEL_5:
        v10 += 12;
        v12 += 12;
      }

      while (v10 < a3[1]);
    }
  }

  else
  {
    v8 = sub_4D2148(a1, a2);
    result = sub_4D21C8(a1, a2);
    v10 = *a3;
    if (*a3 < a3[1])
    {
      goto LABEL_3;
    }
  }

  *v7 = 0;
  return result;
}

void sub_7CE69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  *a11 = a12;
  if (a12)
  {
    a11[1] = a12;
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7CE6CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 175) < 0)
      {
        operator delete(v2[19]);
        if ((*(v2 + 143) & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(v2 + 119) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_14;
        }
      }

      else if ((*(v2 + 143) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(v2[15]);
      if ((*(v2 + 119) & 0x80000000) == 0)
      {
LABEL_9:
        if ((*(v2 + 79) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      operator delete(v2[12]);
      if ((*(v2 + 79) & 0x80000000) == 0)
      {
LABEL_10:
        if (*(v2 + 47) < 0)
        {
          goto LABEL_16;
        }

        goto LABEL_5;
      }

LABEL_15:
      operator delete(v2[7]);
      if (*(v2 + 47) < 0)
      {
LABEL_16:
        operator delete(v2[3]);
      }

LABEL_5:
      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_7CE79C(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5) <= a2)
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
    std::to_string(&v15, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5));
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

  return *a1 + 160 * a2;
}

void sub_7CE8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

uint64_t *sub_7CE9D0(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_7CED60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7CED88(va);
  _Unwind_Resume(a1);
}

void sub_7CED74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7CED88(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_7CED88(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) != 1)
    {
LABEL_8:
      operator delete(v2);
      return a1;
    }

    if (*(v2 + 175) < 0)
    {
      operator delete(*(v2 + 152));
      if ((*(v2 + 143) & 0x80000000) == 0)
      {
LABEL_5:
        if ((*(v2 + 119) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    else if ((*(v2 + 143) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(v2 + 120));
    if ((*(v2 + 119) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(v2 + 79) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }

LABEL_12:
    operator delete(*(v2 + 96));
    if ((*(v2 + 79) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(v2 + 47) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      operator delete(*(v2 + 24));
      goto LABEL_8;
    }

LABEL_13:
    operator delete(*(v2 + 56));
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  return a1;
}

uint64_t *sub_7CEE40(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_7CF1C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7CED88(va);
  _Unwind_Resume(a1);
}

void sub_7CF1D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7CED88(va);
  _Unwind_Resume(a1);
}

void *sub_7CF1EC(void *a1, void *a2)
{
  v4 = sub_7CF5AC(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (sub_734D94(v10 + 2, a2))
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (!sub_734D94(v10 + 2, a2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_7CF538(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7CF560(va);
  _Unwind_Resume(a1);
}

void sub_7CF54C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7CF560(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7CF560(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_5C17B4(v1 + 16);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_7CF5AC(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v3 = nullsub_1(a2);
  if (*(v3 + 23) < 0)
  {
    sub_325C(__p, *v3, *(v3 + 8));
  }

  else
  {
    v4 = *v3;
    v16 = *(v3 + 16);
    *__p = v4;
  }

  if (v16 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v16 >= 0)
  {
    v6 = HIBYTE(v16);
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_AAD8(v12, v5, v6) + 2654435769u;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = *(a2 + 24);
  v8 = (sub_1232EA0(__p) + 2654435769 + (v7 << 6) + (v7 >> 2)) ^ v7;
  v14 = v8;
  sub_734D90(v12, a2);
  if (SHIBYTE(v13) < 0)
  {
    sub_325C(__p, v12[0], v12[1]);
  }

  else
  {
    *__p = *v12;
    v16 = v13;
  }

  if (v16 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v16 >= 0)
  {
    v10 = HIBYTE(v16);
  }

  else
  {
    v10 = __p[1];
  }

  v14 = (sub_AAD8(&v17, v9, v10) + 2654435769u + (v8 << 6) + (v8 >> 2)) ^ v8;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_25:
    operator delete(v12[0]);
    goto LABEL_23;
  }

  if (SHIBYTE(v13) < 0)
  {
    goto LABEL_25;
  }

LABEL_23:
  sub_7CF754(&v14, (a2 + 64));
  return (*(a2 + 120) + 2654435769 + (v14 << 6) + (v14 >> 2)) ^ v14;
}

void sub_7CF730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7CF754(void *a1, int *a2)
{
  v8 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_325C(&v9, *(a2 + 1), *(a2 + 2));
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(a2 + 2);
    v10 = *(a2 + 3);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v11 = *(a2 + 2);
      v12 = *(a2 + 6);
      goto LABEL_6;
    }
  }

  sub_325C(&v11, *(a2 + 4), *(a2 + 5));
LABEL_6:
  if (SHIBYTE(v10) < 0)
  {
    sub_325C(__p, v9, *(&v9 + 1));
  }

  else
  {
    *__p = v9;
    v14 = v10;
  }

  if (v14 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v14 >= 0)
  {
    v5 = HIBYTE(v14);
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_AAD8(&v15, v4, v5);
  if (SHIBYTE(v14) < 0)
  {
    v7 = v6;
    operator delete(__p[0]);
    v6 = v7;
  }

  *a1 ^= ((((v8 + 2654435769) << 6) + ((v8 + 2654435769u) >> 2) + v6 + 2654435769u) ^ (v8 + 2654435769)) + (*a1 << 6) + (*a1 >> 2) + 2654435769u;
  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v9);
    return;
  }

  operator delete(v11);
  if (SHIBYTE(v10) < 0)
  {
    goto LABEL_21;
  }
}

void sub_7CF8D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_513574(va);
  _Unwind_Resume(a1);
}

void sub_7CF8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7CF904(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = a1[157] - a1[156];
  if (v3)
  {
    v5 = 0;
    v6 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 5);
    do
    {
      v7 = sub_7CE79C(a1 + 156, v5);
      sub_5139E8(v14, v7);
      if (!sub_734C10(v14))
      {
        goto LABEL_11;
      }

      v8 = *(v7 + 152);
      if (v5 + 1 == 0xCCCCCCCCCCCCCCCDLL * ((a1[157] - a1[156]) >> 5))
      {
        v9 = sub_4D1DC0(a1);
        if (v8 <= v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = v8;
        }

        if (v8 < v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = *(sub_7CE79C(a1 + 156, v5 + 1) + 152);
        if (v8 <= v12)
        {
          v10 = v12;
        }

        else
        {
          v10 = v8;
        }

        if (v8 < v12)
        {
          do
          {
LABEL_10:
            v11 = sub_4D1F50(a1, v8);
            v13 = *(v11 + 32) | (*(v11 + 36) << 32);
            sub_7CE9D0(a2, &v13);
            ++v8;
          }

          while (v10 != v8);
        }
      }

LABEL_11:
      if (v23 < 0)
      {
        operator delete(__p);
        if ((v21 & 0x80000000) == 0)
        {
LABEL_13:
          if ((v19 & 0x80000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_19;
        }
      }

      else if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      operator delete(v20);
      if ((v19 & 0x80000000) == 0)
      {
LABEL_14:
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_20;
      }

LABEL_19:
      operator delete(v18);
      if ((v17 & 0x80000000) == 0)
      {
LABEL_15:
        if (v15 < 0)
        {
          goto LABEL_21;
        }

        goto LABEL_3;
      }

LABEL_20:
      operator delete(v16);
      if (v15 < 0)
      {
LABEL_21:
        operator delete(v14[0]);
      }

LABEL_3:
      ++v5;
    }

    while (v5 != v6);
  }
}

void sub_7CFABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E5388(va);
  sub_7CE6CC(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_7CFB0C@<X0>(void *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = a4;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*(sub_4D1F50(a1, a2) + 38))
  {
    v8 = 1000000000 - sub_4D21C8(a1, a2);
    result = 1000000000 - sub_4D2148(a1, a2);
    v10 = *a3;
    if (*a3 < a3[1])
    {
LABEL_3:
      v11 = 0;
      v26 = result << 32;
      v27 = result;
      v12 = v10 - 12;
      v13 = -1;
      v28 = v7;
      do
      {
        v14 = *(v10 + 4);
        if (v14 >= v8)
        {
          if (v14 > result)
          {
            break;
          }

          if (*(v10 + 8) == 1)
          {
            if (v13 < 0x3B9ACA01)
            {
              v15 = v7[2];
              if (v11 >= v15)
              {
                v17 = v11;
                v18 = v11 >> 3;
                v19 = v18 + 1;
                if ((v18 + 1) >> 61)
                {
                  goto LABEL_54;
                }

                if (v15 >> 2 > v19)
                {
                  v19 = v15 >> 2;
                }

                if (v15 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v20 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v20 = v19;
                }

                if (v20)
                {
                  if (!(v20 >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_55;
                }

                v21 = (8 * v18);
                *v21 = v13 | (v14 << 32);
                v11 = (v21 + 1);
                memcpy(0, 0, v17);
                v7 = v28;
                v28[1] = v11;
                v28[2] = 0;
                result = v27;
              }

              else
              {
                *v11 = v13 | (v14 << 32);
                v11 += 8;
              }

              v7[1] = v11;
LABEL_51:
              v13 = -1;
            }
          }

          else
          {
            if (v8 == v14)
            {
              if (*v10 == 2)
              {
                *(v10 + 8) = 1;
                v13 = v8;
              }

              goto LABEL_5;
            }

            if (v8 < v14 && v14 < result)
            {
              if (v13 > 0x3B9ACA00 && v10 != *a3)
              {
                v13 = *(v12 + 4);
              }

              *(v10 + 8) = 1;
              goto LABEL_5;
            }

            if (v14 == result && !*v10)
            {
              if (v13 <= 0x3B9ACA00 || v10 != *a3 && (v13 = *(v12 + 4), v13 < 0x3B9ACA01))
              {
                if (v13 < result)
                {
                  v16 = v7[2];
                  if (v11 >= v16)
                  {
                    v22 = v11;
                    v23 = v11 >> 3;
                    v24 = (v11 >> 3) + 1;
                    if (v24 >> 61)
                    {
LABEL_54:
                      *v28 = 0;
                      sub_1794();
                    }

                    if (v16 >> 2 > v24)
                    {
                      v24 = v16 >> 2;
                    }

                    if (v16 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v25 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v25 = v24;
                    }

                    if (v25)
                    {
                      if (!(v25 >> 61))
                      {
                        operator new();
                      }

LABEL_55:
                      *v28 = 0;
                      sub_1808();
                    }

                    *(8 * v23) = v26 | v13;
                    v11 = 8 * v23 + 8;
                    memcpy(0, 0, v22);
                    v7 = v28;
                    v28[1] = v11;
                    v28[2] = 0;
                    result = v27;
                  }

                  else
                  {
                    *v11 = v26 | v13;
                    v11 += 8;
                  }

                  v7[1] = v11;
                }
              }

              *(v10 + 8) = 1;
              goto LABEL_51;
            }
          }
        }

LABEL_5:
        v10 += 12;
        v12 += 12;
      }

      while (v10 < a3[1]);
    }
  }

  else
  {
    v8 = sub_4D2148(a1, a2);
    result = sub_4D21C8(a1, a2);
    v10 = *a3;
    if (*a3 < a3[1])
    {
      goto LABEL_3;
    }
  }

  *v7 = 0;
  return result;
}

void sub_7CFEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  *a11 = a12;
  if (a12)
  {
    a11[1] = a12;
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_7CFEEC(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = a1[157] - a1[156];
  if (v3)
  {
    v5 = 0;
    v6 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 5);
    do
    {
      v7 = sub_7CE79C(a1 + 156, v5);
      sub_5139E8(v14, v7);
      if (!sub_734C10(v14))
      {
        goto LABEL_11;
      }

      v8 = *(v7 + 152);
      if (v5 + 1 == 0xCCCCCCCCCCCCCCCDLL * ((a1[157] - a1[156]) >> 5))
      {
        v9 = sub_4D1DC0(a1);
        if (v8 <= v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = v8;
        }

        if (v8 < v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = *(sub_7CE79C(a1 + 156, v5 + 1) + 152);
        if (v8 <= v12)
        {
          v10 = v12;
        }

        else
        {
          v10 = v8;
        }

        if (v8 < v12)
        {
          do
          {
LABEL_10:
            v11 = sub_4D1F50(a1, v8);
            v13 = *(v11 + 32) | ((*(v11 + 36) & 0x1FFFFFFF) << 32);
            sub_7CE9D0(a2, &v13);
            ++v8;
          }

          while (v10 != v8);
        }
      }

LABEL_11:
      if (v23 < 0)
      {
        operator delete(__p);
        if ((v21 & 0x80000000) == 0)
        {
LABEL_13:
          if ((v19 & 0x80000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_19;
        }
      }

      else if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      operator delete(v20);
      if ((v19 & 0x80000000) == 0)
      {
LABEL_14:
        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_20;
      }

LABEL_19:
      operator delete(v18);
      if ((v17 & 0x80000000) == 0)
      {
LABEL_15:
        if (v15 < 0)
        {
          goto LABEL_21;
        }

        goto LABEL_3;
      }

LABEL_20:
      operator delete(v16);
      if (v15 < 0)
      {
LABEL_21:
        operator delete(v14[0]);
      }

LABEL_3:
      ++v5;
    }

    while (v5 != v6);
  }
}

void sub_7D00A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E5388(va);
  sub_7CE6CC(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_7D00F4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = a4;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if ((*(sub_4D1F50(a1, a2) + 39) & 0x20) != 0)
  {
    v8 = sub_4D2148(a1, a2);
    result = sub_4D21C8(a1, a2);
    v10 = *a3;
    if (*a3 >= a3[1])
    {
      goto LABEL_3;
    }

    goto LABEL_5;
  }

  v8 = 1000000000 - sub_4D21C8(a1, a2);
  result = 1000000000 - sub_4D2148(a1, a2);
  v10 = *a3;
  if (*a3 < a3[1])
  {
LABEL_5:
    v11 = 0;
    v26 = result << 32;
    v27 = result;
    v12 = v10 - 12;
    v13 = -1;
    v28 = v7;
    do
    {
      v14 = *(v10 + 4);
      if (v14 >= v8)
      {
        if (v14 > result)
        {
          break;
        }

        if (*(v10 + 8) == 1)
        {
          if (v13 < 0x3B9ACA01)
          {
            v15 = v7[2];
            if (v11 >= v15)
            {
              v17 = v11;
              v18 = v11 >> 3;
              v19 = v18 + 1;
              if ((v18 + 1) >> 61)
              {
                goto LABEL_54;
              }

              if (v15 >> 2 > v19)
              {
                v19 = v15 >> 2;
              }

              if (v15 >= 0x7FFFFFFFFFFFFFF8)
              {
                v20 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v20 = v19;
              }

              if (v20)
              {
                if (!(v20 >> 61))
                {
                  operator new();
                }

                goto LABEL_55;
              }

              v21 = (8 * v18);
              *v21 = v13 | (v14 << 32);
              v11 = (v21 + 1);
              memcpy(0, 0, v17);
              v7 = v28;
              v28[1] = v11;
              v28[2] = 0;
              result = v27;
            }

            else
            {
              *v11 = v13 | (v14 << 32);
              v11 += 8;
            }

            v7[1] = v11;
LABEL_53:
            v13 = -1;
          }
        }

        else
        {
          if (v8 == v14)
          {
            if (*v10 == 2)
            {
              *(v10 + 8) = 1;
              v13 = v8;
            }

            goto LABEL_7;
          }

          if (v8 < v14 && v14 < result)
          {
            if (v13 > 0x3B9ACA00 && v10 != *a3)
            {
              v13 = *(v12 + 4);
            }

            *(v10 + 8) = 1;
            goto LABEL_7;
          }

          if (v14 == result && !*v10)
          {
            if (v13 <= 0x3B9ACA00 || v10 != *a3 && (v13 = *(v12 + 4), v13 < 0x3B9ACA01))
            {
              if (v13 < result)
              {
                v16 = v7[2];
                if (v11 >= v16)
                {
                  v22 = v11;
                  v23 = v11 >> 3;
                  v24 = (v11 >> 3) + 1;
                  if (v24 >> 61)
                  {
LABEL_54:
                    *v28 = 0;
                    sub_1794();
                  }

                  if (v16 >> 2 > v24)
                  {
                    v24 = v16 >> 2;
                  }

                  if (v16 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v25 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v25 = v24;
                  }

                  if (v25)
                  {
                    if (!(v25 >> 61))
                    {
                      operator new();
                    }

LABEL_55:
                    *v28 = 0;
                    sub_1808();
                  }

                  *(8 * v23) = v26 | v13;
                  v11 = 8 * v23 + 8;
                  memcpy(0, 0, v22);
                  v7 = v28;
                  v28[1] = v11;
                  v28[2] = 0;
                  result = v27;
                }

                else
                {
                  *v11 = v26 | v13;
                  v11 += 8;
                }

                v7[1] = v11;
              }
            }

            *(v10 + 8) = 1;
            goto LABEL_53;
          }
        }
      }

LABEL_7:
      v10 += 12;
      v12 += 12;
    }

    while (v10 < a3[1]);
  }

LABEL_3:
  *v7 = 0;
  return result;
}

void sub_7D04A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  *a11 = a12;
  if (a12)
  {
    a11[1] = a12;
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_7D04D4()
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
  xmmword_27A9980 = 0u;
  *algn_27A9990 = 0u;
  dword_27A99A0 = 1065353216;
  sub_3A9A34(&xmmword_27A9980, v0);
  sub_3A9A34(&xmmword_27A9980, v3);
  sub_3A9A34(&xmmword_27A9980, __p);
  sub_3A9A34(&xmmword_27A9980, v9);
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
    qword_27A9958 = 0;
    qword_27A9960 = 0;
    qword_27A9950 = 0;
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

void sub_7D071C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A9968)
  {
    qword_27A9970 = qword_27A9968;
    operator delete(qword_27A9968);
  }

  _Unwind_Resume(exception_object);
}

void sub_7D07C8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  a1[1] = sub_3AF6B4(a2);
  v8[23] = 8;
  strcpy(v8, "Guidance");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(a2, v8, v7);
  sub_41D60C(v6, 3u, a4, &v9);
  operator new();
}

void sub_7D09AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (*(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_7D0A00(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = nullsub_1(*a2);
    v6 = *v5;
    v7 = *(v5 + 8);
    i = a1;
    if (v6 != v7)
    {
      goto LABEL_5;
    }

    while (1)
    {
      sub_7D0AAC(i, v2);
      v2 += 976;
      if (v2 == v3)
      {
        break;
      }

      v9 = nullsub_1(v2);
      v6 = *v9;
      v7 = *(v9 + 8);
      for (i = a1; v6 != v7; i = a1)
      {
LABEL_5:
        sub_7D1158(i, v6);
        v6 += 1582;
      }
    }
  }
}

void sub_7D0AAC(uint64_t a1, void *a2)
{
  if (*(*a1 + 1565) != 1)
  {
    return;
  }

  if (*(a1 + 16) != 1)
  {
    return;
  }

  v4 = nullsub_1(a2);
  v5 = v4[1];
  v6 = v5 - *v4;
  if (v5 == *v4)
  {
    return;
  }

  v7 = sub_68C454(a2, 0);
  v15 = *(a1 + 8);
  v8 = *(v7 + 10120);
  v16 = v8 ^ 1;
  if (v8)
  {
    sub_7D1DF0(v7, &v17);
    if ((v16 & 1) == 0)
    {
      sub_7D2004(v7, &__p);
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  __p = 0;
  v21 = 0;
  v22 = 0;
LABEL_9:
  sub_7D0CF4(&v15, v7);
  v9 = sub_4D1DB8(v7);
  v10 = sub_68E830(a2);
  sub_7D0F98(&v15, v9, v10);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v6 != 12656)
  {
    v11 = 0x5DDB1ADCB91F64A7 * (v6 >> 4);
    v12 = 1;
    while (1)
    {
      v13 = sub_68C454(a2, v12);
      v15 = *(a1 + 8);
      v14 = *(v13 + 10120);
      v16 = v14 ^ 1;
      if ((v14 & 1) == 0)
      {
        break;
      }

      sub_7D1DF0(v13, &v17);
      if (v16)
      {
        goto LABEL_21;
      }

      sub_7D2004(v13, &__p);
LABEL_22:
      sub_7D0CF4(&v15, v13);
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      if (v11 == ++v12)
      {
        return;
      }
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_21:
    __p = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_22;
  }
}

void sub_7D0CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7D0CF4(uint64_t result, uint64_t a2)
{
  if ((*(result + 8) & 1) == 0)
  {
    v3 = result;
    v4 = *(a2 + 7416);
    v5 = *(a2 + 7424);
    if (v4 != v5)
    {
      v6 = v4 + 464;
      do
      {
        if (*(v6 + 8) == 1)
        {
          v8 = sub_7D31EC(v3, v6);
          if ((*(v6 + 8) & 1) == 0)
          {
            *(v6 + 8) = 1;
          }

          *v6 = v8;
        }

        v7 = v6 + 656;
        v6 += 1120;
      }

      while (v7 != v5);
    }

    v34 = 0;
    v9 = *(a2 + 1104);
    v10 = *(a2 + 1112);
    if (v9 != v10)
    {
      v11 = 0;
      do
      {
        *(v9 + 96) = sub_7D31EC(v3, (v9 + 96));
        v12 = *(v9 + 1008);
        if (v12)
        {
          v34 += v12;
          v13 = sub_7D31EC(v3, &v34);
          *(v9 + 1008) = v13 - v11;
          v11 = v13;
        }

        v9 += 2616;
      }

      while (v9 != v10);
    }

    v14 = *(a2 + 12344);
    for (i = *(a2 + 12352); v14 != i; v14 += 2)
    {
      *v14 = sub_7D31EC(v3, v14);
    }

    v16 = *(a2 + 7392);
    for (j = *(a2 + 7400); v16 != j; v16 += 3)
    {
      *v16 = sub_7D31EC(v3, v16);
    }

    v18 = *(a2 + 12272);
    v19 = *(a2 + 12280);
    if (v18 != v19)
    {
      v20 = v18 + 1;
      do
      {
        *v20 = sub_7D31EC(v3, v20);
        v21 = v20 + 76;
        v20 += 77;
      }

      while (v21 != v19);
    }

    v22 = *(a2 + 12024);
    v23 = *(a2 + 12032);
    v24 = v22 == v23 || *(a2 + 12008) == 0x7FFFFFFFFFFFFFFFLL;
    if (!v24 && *(a2 + 12016) != 0x7FFFFFFFFFFFFFFFLL)
    {
      do
      {
        *v22 = sub_7D31EC(v3, v22);
        v22 += 2;
      }

      while (v22 != v23);
      v32 = *(a2 + 12056);
      for (k = *(a2 + 12064); v32 != k; v32 += 22)
      {
        *v32 = sub_7D31EC(v3, v32);
        v32[1] = sub_7D31EC(v3, v32 + 1);
      }
    }

    v26 = sub_68DE5C(a2);
    v27 = v26[1];
    if (*v26 != v27)
    {
      v28 = (*v26 + 8);
      do
      {
        *v28 = sub_7D31EC(v3, v28);
        v24 = v28 + 2 == v27;
        v28 += 3;
      }

      while (!v24);
    }

    v29 = *(a2 + 12376);
    v30 = *(a2 + 12384);
    for (m = v3; v29 != v30; m = v3)
    {
      *v29 = sub_7D31EC(m, v29);
      v29 += 2;
    }

    sub_7D22C8(m, a2);
    sub_7D2C38(v3, a2);
    sub_7D2F2C(v3, a2);
    result = sub_7D30D0(v3, a2);
    *(a2 + 12648) = 1;
  }

  return result;
}

uint64_t sub_7D0F98(uint64_t result, uint64_t a2, void *a3)
{
  if ((*(result + 8) & 1) == 0)
  {
    v3 = a3[1];
    if (*a3 != v3)
    {
      v5 = result;
      v6 = (*a3 + 496);
      do
      {
        if (sub_5CBB30(v6))
        {
          v15 = a2 - *v6;
          v8 = *(v5[6] - 8);
          *v6 = v8 - sub_7D31EC(v5, &v15);
          if (!sub_5CBB44(v6))
          {
LABEL_7:
            if (!sub_5CBB30(v6 + 5))
            {
              goto LABEL_8;
            }

            goto LABEL_13;
          }
        }

        else if (!sub_5CBB44(v6))
        {
          goto LABEL_7;
        }

        v15 = a2 - v6[2];
        v9 = *(v5[6] - 8);
        v6[2] = v9 - sub_7D31EC(v5, &v15);
        if (!sub_5CBB30(v6 + 5))
        {
LABEL_8:
          if (!sub_5CBB44((v6 + 5)))
          {
            goto LABEL_9;
          }

          goto LABEL_14;
        }

LABEL_13:
        v15 = a2 - v6[5];
        v10 = *(v5[6] - 8);
        v6[5] = v10 - sub_7D31EC(v5, &v15);
        if (!sub_5CBB44((v6 + 5)))
        {
LABEL_9:
          result = sub_5CC010((v6 - 62));
          if (result)
          {
            goto LABEL_15;
          }

          goto LABEL_4;
        }

LABEL_14:
        v15 = a2 - v6[7];
        v11 = *(v5[6] - 8);
        v6[7] = v11 - sub_7D31EC(v5, &v15);
        result = sub_5CC010((v6 - 62));
        if (result)
        {
LABEL_15:
          v12 = v6[27];
          v13 = *(v12 + 40);
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = a2 - v13;
            v14 = *(v5[6] - 8);
            result = sub_7D31EC(v5, &v15);
            *(v12 + 40) = v14 - result;
          }
        }

LABEL_4:
        v7 = v6 + 40;
        v6 += 102;
      }

      while (v7 != v3);
    }
  }

  return result;
}

void sub_7D1158(uint64_t a1, void *a2)
{
  v3 = a2[942];
  v4 = a2[943];
  while (v3 != v4)
  {
    v5 = sub_4DADB4(v3);
    if (sub_68163C(v5))
    {
      sub_6816B0(v5);
    }

    v3 += 448;
  }

  v6 = a2[939];
  v7 = a2[940];
  while (v6 != v7)
  {
    v8 = sub_4DADB4(v6);
    if (sub_68163C(v8))
    {
      sub_6816B0(v8);
    }

    v6 += 1120;
  }

  v9 = a2[139] - a2[138];
  if (v9)
  {
    v10 = 0;
    v11 = 0x3795876FF3795877 * (v9 >> 3);
    do
    {
      v12 = (a2[138] + 2616 * v10);
      v13 = v12[236];
      v14 = v12[237];
      while (v13 != v14)
      {
        v15 = sub_4DADB4(v13);
        if (sub_68163C(v15))
        {
          sub_6816B0(v15);
        }

        v13 += 1120;
      }

      v16 = v12[239];
      v17 = v12[240];
      while (v16 != v17)
      {
        v18 = sub_4DADB4(v16);
        if (sub_68163C(v18))
        {
          sub_6816B0(v18);
        }

        v16 += 448;
      }

      v19 = v12[242];
      v20 = v12[243];
      while (v19 != v20)
      {
        v21 = sub_4DADB4(v19);
        if (sub_68163C(v21))
        {
          sub_6816B0(v21);
        }

        v22 = *(v19 + 680);
        v23 = *(v19 + 688);
        while (v22 != v23)
        {
          if (sub_68163C(v22))
          {
            sub_6816B0(v22);
          }

          v22 += 7;
        }

        v19 += 704;
      }

      ++v10;
    }

    while (v10 != v11);
  }
}

void sub_7D131C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  a1[1] = sub_3AF6B4(a2);
  v8[23] = 8;
  strcpy(v8, "Guidance");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(a2, v8, v7);
  sub_41D60C(v6, 0, a4, &v9);
  operator new();
}

void sub_7D1500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (*(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_7D1554(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = nullsub_1(*a2);
    v6 = *v5;
    v7 = *(v5 + 8);
    i = a1;
    if (v6 != v7)
    {
      goto LABEL_5;
    }

    while (1)
    {
      sub_7D167C(i, v2);
      v2 += 976;
      if (v2 == v3)
      {
        break;
      }

      v9 = nullsub_1(v2);
      v6 = *v9;
      v7 = *(v9 + 8);
      for (i = a1; v6 != v7; i = a1)
      {
LABEL_5:
        sub_7D1158(i, v6);
        v6 += 1582;
      }
    }
  }
}

void sub_7D1600(uint64_t a1, void *a2)
{
  v4 = nullsub_1(a2);
  v5 = *v4;
  v6 = *(v4 + 8);
  if (*v4 != v6)
  {
    do
    {
      sub_7D1158(a1, v5);
      v5 += 1582;
    }

    while (v5 != v6);
  }

  sub_7D167C(a1, a2);
}

void sub_7D167C(uint64_t a1, void *a2)
{
  if (*(*a1 + 1565) != 1)
  {
    return;
  }

  if (*(a1 + 16) != 1)
  {
    return;
  }

  v4 = nullsub_1(a2);
  v5 = v4[1];
  v6 = v5 - *v4;
  if (v5 == *v4)
  {
    return;
  }

  v7 = sub_68C454(a2, 0);
  v15 = *(a1 + 8);
  v8 = *(v7 + 10120);
  v16 = v8 ^ 1;
  if (v8)
  {
    sub_7D346C(v7, &v17);
    if ((v16 & 1) == 0)
    {
      sub_7D3680(v7, &__p);
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  __p = 0;
  v21 = 0;
  v22 = 0;
LABEL_9:
  sub_7D0CF4(&v15, v7);
  v9 = sub_4D1DB8(v7);
  v10 = sub_68E830(a2);
  sub_7D0F98(&v15, v9, v10);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v6 != 12656)
  {
    v11 = 0x5DDB1ADCB91F64A7 * (v6 >> 4);
    v12 = 1;
    while (1)
    {
      v13 = sub_68C454(a2, v12);
      v15 = *(a1 + 8);
      v14 = *(v13 + 10120);
      v16 = v14 ^ 1;
      if ((v14 & 1) == 0)
      {
        break;
      }

      sub_7D346C(v13, &v17);
      if (v16)
      {
        goto LABEL_21;
      }

      sub_7D3680(v13, &__p);
LABEL_22:
      sub_7D0CF4(&v15, v13);
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      if (v11 == ++v12)
      {
        return;
      }
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_21:
    __p = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_22;
  }
}

void sub_7D187C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7D18C4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  a1[1] = sub_3AF6B4(a2);
  v8[23] = 8;
  strcpy(v8, "Guidance");
  memset(v7, 0, sizeof(v7));
  v6 = sub_3AEC94(a2, v8, v7);
  sub_41D60C(v6, 2u, a4, &v9);
  operator new();
}

void sub_7D1AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (*(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_7D1AFC(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = nullsub_1(*a2);
    v6 = *v5;
    v7 = *(v5 + 8);
    i = a1;
    if (v6 != v7)
    {
      goto LABEL_5;
    }

    while (1)
    {
      sub_7D1BA8(i, v2);
      v2 += 976;
      if (v2 == v3)
      {
        break;
      }

      v9 = nullsub_1(v2);
      v6 = *v9;
      v7 = *(v9 + 8);
      for (i = a1; v6 != v7; i = a1)
      {
LABEL_5:
        sub_7D1158(i, v6);
        v6 += 1582;
      }
    }
  }
}

void sub_7D1BA8(uint64_t a1, void *a2)
{
  if (*(*a1 + 1565) != 1)
  {
    return;
  }

  if (*(a1 + 16) != 1)
  {
    return;
  }

  v4 = nullsub_1(a2);
  v5 = v4[1];
  v6 = v5 - *v4;
  if (v5 == *v4)
  {
    return;
  }

  v7 = sub_68C454(a2, 0);
  v15 = *(a1 + 8);
  v8 = *(v7 + 10120);
  v16 = v8 ^ 1;
  if (v8)
  {
    sub_7D3944(v7, &v17);
    if ((v16 & 1) == 0)
    {
      sub_7D3B58(v7, &__p);
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  __p = 0;
  v21 = 0;
  v22 = 0;
LABEL_9:
  sub_7D0CF4(&v15, v7);
  v9 = sub_4D1DB8(v7);
  v10 = sub_68E830(a2);
  sub_7D0F98(&v15, v9, v10);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v6 != 12656)
  {
    v11 = 0x5DDB1ADCB91F64A7 * (v6 >> 4);
    v12 = 1;
    while (1)
    {
      v13 = sub_68C454(a2, v12);
      v15 = *(a1 + 8);
      v14 = *(v13 + 10120);
      v16 = v14 ^ 1;
      if ((v14 & 1) == 0)
      {
        break;
      }

      sub_7D3944(v13, &v17);
      if (v16)
      {
        goto LABEL_21;
      }

      sub_7D3B58(v13, &__p);
LABEL_22:
      sub_7D0CF4(&v15, v13);
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      if (v11 == ++v12)
      {
        return;
      }
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_21:
    __p = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_22;
  }
}

void sub_7D1DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7D1DF0(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = sub_4D1DC0(a1);
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  sub_4D1DDC(a1, v6);
  if (v6[3] != v6[1])
  {
    sub_4D23F8(a1, 0, v5);
    operator new();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_7D1FC8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_7D2004(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = sub_4D1DC0(a1);
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  sub_4D1DDC(a1, v5);
  if (v5[3] != v5[1])
  {
    sub_5FC64(a1[1266]);
    sub_4D2354(a1, 0);
    operator new();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_7D2278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    *(a10 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7D22C8(uint64_t result, void *a2)
{
  v3 = result;
  v4 = a2[1272];
  v5 = a2[1273];
  if (v4 == v5)
  {
    goto LABEL_54;
  }

  while (2)
  {
    v4[1] = sub_7D31EC(v3, v4 + 1);
    result = sub_7D31EC(v3, v4 + 2);
    v4[2] = result;
    v6 = v4[69];
    v7 = v4[70];
    while (v6 != v7)
    {
      v9 = *v6;
      if (!*v6)
      {
        goto LABEL_21;
      }

      v10 = v3[2];
      v11 = v3[3];
      v12 = (v11 - v10) >> 3;
      if (v12 < 1)
      {
        v25 = v3[2];
        if (v11 == v10)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v13 = v3[2];
        if (v11 - v10 != 8)
        {
          v13 = v3[2];
          do
          {
            v14 = (2 * v12) & 0xFFFFFFFFFFFFFFF8;
            _X17 = v13 + v14;
            __asm { PRFM            #0, [X17] }

            v21 = &v13[v12 >> 1];
            _X16 = v21 + v14;
            __asm { PRFM            #0, [X16] }

            if (*v21 >= v9)
            {
              v24 = 0;
            }

            else
            {
              v24 = v12 >> 1;
            }

            v13 += v24;
            v12 -= v12 >> 1;
          }

          while (v12 > 1);
        }

        v25 = &v13[*v13 < v9];
        if (v11 == v25)
        {
          goto LABEL_21;
        }
      }

      v26 = v25 - v10;
      if (*v25 != v9)
      {
        if (v25 == v10)
        {
          v44 = 0;
          v45 = 0;
          v46 = *v10;
          v47 = v3[5];
        }

        else
        {
          v51 = v25;
          v47 = (v3[5] + v26);
          v45 = *(v47 - 1);
          v44 = *(v25 - 1);
          v46 = *v51 - v44;
        }

        v52 = (*v47 - v45) / v46 * (v9 - v44);
        if (v52 >= 0.0)
        {
          if (v52 < 4.50359963e15)
          {
            v53 = (v52 + v52) + 1;
LABEL_51:
            v52 = (v53 >> 1);
          }
        }

        else if (v52 > -4.50359963e15)
        {
          v53 = (v52 + v52) - 1 + (((v52 + v52) - 1) >> 63);
          goto LABEL_51;
        }

        *v6 = v45 + v52;
        v8 = v6[1];
        if (!v8)
        {
          goto LABEL_6;
        }

        goto LABEL_22;
      }

      v9 = *(v3[5] + v26);
LABEL_21:
      *v6 = v9;
      v8 = v6[1];
      if (!v8)
      {
        goto LABEL_6;
      }

LABEL_22:
      v27 = v3[2];
      v28 = v3[3];
      v29 = (v28 - v27) >> 3;
      if (v29 < 1)
      {
        v38 = v3[2];
        if (v28 == v27)
        {
          goto LABEL_6;
        }

LABEL_32:
        v39 = v38 - v27;
        if (*v38 == v8)
        {
          v8 = *(v3[5] + v39);
          goto LABEL_6;
        }

        if (v38 == v27)
        {
          v40 = 0;
          v41 = 0;
          v42 = *v27;
          v43 = v3[5];
        }

        else
        {
          v48 = v38;
          v43 = (v3[5] + v39);
          v41 = *(v43 - 1);
          v40 = *(v38 - 1);
          v42 = *v48 - v40;
        }

        v49 = (*v43 - v41) / v42 * (v8 - v40);
        if (v49 >= 0.0)
        {
          if (v49 < 4.50359963e15)
          {
            v50 = (v49 + v49) + 1;
LABEL_47:
            v49 = (v50 >> 1);
          }
        }

        else if (v49 > -4.50359963e15)
        {
          v50 = (v49 + v49) - 1 + (((v49 + v49) - 1) >> 63);
          goto LABEL_47;
        }

        v8 = v41 + v49;
        goto LABEL_6;
      }

      v30 = v3[2];
      if (v28 - v27 != 8)
      {
        v30 = v3[2];
        do
        {
          v31 = (2 * v29) & 0xFFFFFFFFFFFFFFF8;
          _X17 = v30 + v31;
          __asm { PRFM            #0, [X17] }

          v34 = &v30[v29 >> 1];
          _X16 = v34 + v31;
          __asm { PRFM            #0, [X16] }

          if (*v34 >= v8)
          {
            v37 = 0;
          }

          else
          {
            v37 = v29 >> 1;
          }

          v30 += v37;
          v29 -= v29 >> 1;
        }

        while (v29 > 1);
      }

      v38 = &v30[*v30 < v8];
      if (v28 != v38)
      {
        goto LABEL_32;
      }

LABEL_6:
      v6[1] = v8;
      v6 += 3;
    }

    v4 += 77;
    if (v4 != v5)
    {
      continue;
    }

    break;
  }

LABEL_54:
  v54 = a2[1269];
  v55 = a2[1270];
  if (v54 == v55)
  {
    goto LABEL_107;
  }

  while (2)
  {
    v54[1] = sub_7D31EC(v3, v54 + 1);
    result = sub_7D31EC(v3, v54 + 2);
    v54[2] = result;
    v56 = v54[69];
    v57 = v54[70];
    while (2)
    {
      if (v56 != v57)
      {
        v59 = *v56;
        if (!*v56)
        {
          goto LABEL_74;
        }

        v60 = v3[2];
        v61 = v3[3];
        v62 = (v61 - v60) >> 3;
        if (v62 < 1)
        {
          v71 = v3[2];
          if (v61 == v60)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v63 = v3[2];
          if (v61 - v60 != 8)
          {
            v63 = v3[2];
            do
            {
              v64 = (2 * v62) & 0xFFFFFFFFFFFFFFF8;
              _X17 = v63 + v64;
              __asm { PRFM            #0, [X17] }

              v67 = &v63[v62 >> 1];
              _X16 = v67 + v64;
              __asm { PRFM            #0, [X16] }

              if (*v67 >= v59)
              {
                v70 = 0;
              }

              else
              {
                v70 = v62 >> 1;
              }

              v63 += v70;
              v62 -= v62 >> 1;
            }

            while (v62 > 1);
          }

          v71 = &v63[*v63 < v59];
          if (v61 == v71)
          {
LABEL_74:
            *v56 = v59;
            v58 = v56[1];
            if (v58)
            {
              goto LABEL_75;
            }

LABEL_59:
            v56[1] = v58;
            v56 += 3;
            continue;
          }
        }

        v72 = v71 - v60;
        if (*v71 == v59)
        {
          v59 = *(v3[5] + v72);
          goto LABEL_74;
        }

        if (v71 == v60)
        {
          v90 = 0;
          v91 = 0;
          v92 = *v60;
          v93 = v3[5];
        }

        else
        {
          v97 = v71;
          v93 = (v3[5] + v72);
          v91 = *(v93 - 1);
          v90 = *(v71 - 1);
          v92 = *v97 - v90;
        }

        v98 = (*v93 - v91) / v92 * (v59 - v90);
        if (v98 >= 0.0)
        {
          if (v98 < 4.50359963e15)
          {
            v99 = (v98 + v98) + 1;
LABEL_104:
            v98 = (v99 >> 1);
          }
        }

        else if (v98 > -4.50359963e15)
        {
          v99 = (v98 + v98) - 1 + (((v98 + v98) - 1) >> 63);
          goto LABEL_104;
        }

        *v56 = v91 + v98;
        v58 = v56[1];
        if (!v58)
        {
          goto LABEL_59;
        }

LABEL_75:
        v73 = v3[2];
        v74 = v3[3];
        v75 = (v74 - v73) >> 3;
        if (v75 < 1)
        {
          v84 = v3[2];
          if (v74 == v73)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v76 = v3[2];
          if (v74 - v73 != 8)
          {
            v76 = v3[2];
            do
            {
              v77 = (2 * v75) & 0xFFFFFFFFFFFFFFF8;
              _X17 = v76 + v77;
              __asm { PRFM            #0, [X17] }

              v80 = &v76[v75 >> 1];
              _X16 = v80 + v77;
              __asm { PRFM            #0, [X16] }

              if (*v80 >= v58)
              {
                v83 = 0;
              }

              else
              {
                v83 = v75 >> 1;
              }

              v76 += v83;
              v75 -= v75 >> 1;
            }

            while (v75 > 1);
          }

          v84 = &v76[*v76 < v58];
          if (v74 == v84)
          {
            goto LABEL_59;
          }
        }

        v85 = v84 - v73;
        if (*v84 == v58)
        {
          v58 = *(v3[5] + v85);
          goto LABEL_59;
        }

        if (v84 == v73)
        {
          v86 = 0;
          v87 = 0;
          v88 = *v73;
          v89 = v3[5];
        }

        else
        {
          v94 = v84;
          v89 = (v3[5] + v85);
          v87 = *(v89 - 1);
          v86 = *(v84 - 1);
          v88 = *v94 - v86;
        }

        v95 = (*v89 - v87) / v88 * (v58 - v86);
        if (v95 >= 0.0)
        {
          if (v95 < 4.50359963e15)
          {
            v96 = (v95 + v95) + 1;
LABEL_100:
            v95 = (v96 >> 1);
          }
        }

        else if (v95 > -4.50359963e15)
        {
          v96 = (v95 + v95) - 1 + (((v95 + v95) - 1) >> 63);
          goto LABEL_100;
        }

        v58 = v87 + v95;
        goto LABEL_59;
      }

      break;
    }

    v54 += 77;
    if (v54 != v55)
    {
      continue;
    }

    break;
  }

LABEL_107:
  v100 = a2[1275];
  v101 = a2[1276];
  if (v100 == v101)
  {
    return result;
  }

  while (2)
  {
    v100[1] = sub_7D31EC(v3, v100 + 1);
    result = sub_7D31EC(v3, v100 + 2);
    v100[2] = result;
    v102 = v100[69];
    v103 = v100[70];
    while (2)
    {
      if (v102 != v103)
      {
        v105 = *v102;
        if (!*v102)
        {
          goto LABEL_127;
        }

        v106 = v3[2];
        v107 = v3[3];
        v108 = (v107 - v106) >> 3;
        if (v108 < 1)
        {
          v117 = v3[2];
          if (v107 == v106)
          {
            goto LABEL_127;
          }
        }

        else
        {
          v109 = v3[2];
          if (v107 - v106 != 8)
          {
            v109 = v3[2];
            do
            {
              v110 = (2 * v108) & 0xFFFFFFFFFFFFFFF8;
              _X17 = v109 + v110;
              __asm { PRFM            #0, [X17] }

              v113 = &v109[v108 >> 1];
              _X16 = v113 + v110;
              __asm { PRFM            #0, [X16] }

              if (*v113 >= v105)
              {
                v116 = 0;
              }

              else
              {
                v116 = v108 >> 1;
              }

              v109 += v116;
              v108 -= v108 >> 1;
            }

            while (v108 > 1);
          }

          v117 = &v109[*v109 < v105];
          if (v107 == v117)
          {
LABEL_127:
            *v102 = v105;
            v104 = v102[1];
            if (v104)
            {
              goto LABEL_128;
            }

LABEL_112:
            v102[1] = v104;
            v102 += 3;
            continue;
          }
        }

        v118 = v117 - v106;
        if (*v117 == v105)
        {
          v105 = *(v3[5] + v118);
          goto LABEL_127;
        }

        if (v117 == v106)
        {
          v136 = 0;
          v137 = 0;
          v138 = *v106;
          v139 = v3[5];
        }

        else
        {
          v143 = v117;
          v139 = (v3[5] + v118);
          v137 = *(v139 - 1);
          v136 = *(v117 - 1);
          v138 = *v143 - v136;
        }

        v144 = (*v139 - v137) / v138 * (v105 - v136);
        if (v144 >= 0.0)
        {
          if (v144 < 4.50359963e15)
          {
            v145 = (v144 + v144) + 1;
LABEL_157:
            v144 = (v145 >> 1);
          }
        }

        else if (v144 > -4.50359963e15)
        {
          v145 = (v144 + v144) - 1 + (((v144 + v144) - 1) >> 63);
          goto LABEL_157;
        }

        *v102 = v137 + v144;
        v104 = v102[1];
        if (!v104)
        {
          goto LABEL_112;
        }

LABEL_128:
        v119 = v3[2];
        v120 = v3[3];
        v121 = (v120 - v119) >> 3;
        if (v121 < 1)
        {
          v130 = v3[2];
          if (v120 == v119)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v122 = v3[2];
          if (v120 - v119 != 8)
          {
            v122 = v3[2];
            do
            {
              v123 = (2 * v121) & 0xFFFFFFFFFFFFFFF8;
              _X17 = v122 + v123;
              __asm { PRFM            #0, [X17] }

              v126 = &v122[v121 >> 1];
              _X16 = v126 + v123;
              __asm { PRFM            #0, [X16] }

              if (*v126 >= v104)
              {
                v129 = 0;
              }

              else
              {
                v129 = v121 >> 1;
              }

              v122 += v129;
              v121 -= v121 >> 1;
            }

            while (v121 > 1);
          }

          v130 = &v122[*v122 < v104];
          if (v120 == v130)
          {
            goto LABEL_112;
          }
        }

        v131 = v130 - v119;
        if (*v130 == v104)
        {
          v104 = *(v3[5] + v131);
          goto LABEL_112;
        }

        if (v130 == v119)
        {
          v132 = 0;
          v133 = 0;
          v134 = *v119;
          v135 = v3[5];
        }

        else
        {
          v140 = v130;
          v135 = (v3[5] + v131);
          v133 = *(v135 - 1);
          v132 = *(v130 - 1);
          v134 = *v140 - v132;
        }

        v141 = (*v135 - v133) / v134 * (v104 - v132);
        if (v141 >= 0.0)
        {
          if (v141 < 4.50359963e15)
          {
            v142 = (v141 + v141) + 1;
LABEL_153:
            v141 = (v142 >> 1);
          }
        }

        else if (v141 > -4.50359963e15)
        {
          v142 = (v141 + v141) - 1 + (((v141 + v141) - 1) >> 63);
          goto LABEL_153;
        }

        v104 = v133 + v141;
        goto LABEL_112;
      }

      break;
    }

    v100 += 77;
    if (v100 != v101)
    {
      continue;
    }

    return result;
  }
}

void *sub_7D2C38(void *result, uint64_t a2)
{
  v2 = *(a2 + 1152);
  v3 = *(a2 + 1160);
  if (v2 == v3)
  {
    return result;
  }

  while (2)
  {
    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    while (v4 != v5)
    {
      v7 = *v4;
      if (!*v4)
      {
        goto LABEL_21;
      }

      v8 = result[2];
      v9 = result[3];
      v10 = (v9 - v8) >> 3;
      if (v10 < 1)
      {
        v23 = result[2];
        if (v9 == v8)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v11 = result[2];
        if (v9 - v8 != 8)
        {
          v11 = result[2];
          do
          {
            v12 = (2 * v10) & 0xFFFFFFFFFFFFFFF8;
            _X4 = v11 + v12;
            __asm { PRFM            #0, [X4] }

            v19 = &v11[v10 >> 1];
            _X3 = v19 + v12;
            __asm { PRFM            #0, [X3] }

            if (*v19 >= v7)
            {
              v22 = 0;
            }

            else
            {
              v22 = v10 >> 1;
            }

            v11 += v22;
            v10 -= v10 >> 1;
          }

          while (v10 > 1);
        }

        v23 = &v11[*v11 < v7];
        if (v9 == v23)
        {
          goto LABEL_21;
        }
      }

      v24 = v23 - v8;
      if (*v23 != v7)
      {
        if (v23 == v8)
        {
          v42 = 0;
          v43 = 0;
          v44 = *v8;
          v45 = result[5];
        }

        else
        {
          v49 = v23;
          v45 = (result[5] + v24);
          v43 = *(v45 - 1);
          v42 = *(v23 - 1);
          v44 = *v49 - v42;
        }

        v50 = (*v45 - v43) / v44 * (v7 - v42);
        if (v50 >= 0.0)
        {
          if (v50 < 4.50359963e15)
          {
            v51 = (v50 + v50) + 1;
LABEL_51:
            v50 = (v51 >> 1);
          }
        }

        else if (v50 > -4.50359963e15)
        {
          v51 = (v50 + v50) - 1 + (((v50 + v50) - 1) >> 63);
          goto LABEL_51;
        }

        *v4 = v43 + v50;
        v6 = v4[1];
        if (!v6)
        {
          goto LABEL_6;
        }

        goto LABEL_22;
      }

      v7 = *(result[5] + v24);
LABEL_21:
      *v4 = v7;
      v6 = v4[1];
      if (!v6)
      {
        goto LABEL_6;
      }

LABEL_22:
      v25 = result[2];
      v26 = result[3];
      v27 = (v26 - v25) >> 3;
      if (v27 < 1)
      {
        v36 = result[2];
        if (v26 == v25)
        {
          goto LABEL_6;
        }

LABEL_32:
        v37 = v36 - v25;
        if (*v36 == v6)
        {
          v6 = *(result[5] + v37);
          goto LABEL_6;
        }

        if (v36 == v25)
        {
          v38 = 0;
          v39 = 0;
          v40 = *v25;
          v41 = result[5];
        }

        else
        {
          v46 = v36;
          v41 = (result[5] + v37);
          v39 = *(v41 - 1);
          v38 = *(v36 - 1);
          v40 = *v46 - v38;
        }

        v47 = (*v41 - v39) / v40 * (v6 - v38);
        if (v47 >= 0.0)
        {
          if (v47 < 4.50359963e15)
          {
            v48 = (v47 + v47) + 1;
LABEL_47:
            v47 = (v48 >> 1);
          }
        }

        else if (v47 > -4.50359963e15)
        {
          v48 = (v47 + v47) - 1 + (((v47 + v47) - 1) >> 63);
          goto LABEL_47;
        }

        v6 = v39 + v47;
        goto LABEL_6;
      }

      v28 = result[2];
      if (v26 - v25 != 8)
      {
        v28 = result[2];
        do
        {
          v29 = (2 * v27) & 0xFFFFFFFFFFFFFFF8;
          _X4 = v28 + v29;
          __asm { PRFM            #0, [X4] }

          v32 = &v28[v27 >> 1];
          _X3 = v32 + v29;
          __asm { PRFM            #0, [X3] }

          if (*v32 >= v6)
          {
            v35 = 0;
          }

          else
          {
            v35 = v27 >> 1;
          }

          v28 += v35;
          v27 -= v27 >> 1;
        }

        while (v27 > 1);
      }

      v36 = &v28[*v28 < v6];
      if (v26 != v36)
      {
        goto LABEL_32;
      }

LABEL_6:
      v4[1] = v6;
      v4 += 2;
    }

    v2 += 176;
    if (v2 != v3)
    {
      continue;
    }

    return result;
  }
}

void *sub_7D2F2C(void *result, void *a2)
{
  v24 = result;
  v3 = a2[942];
  for (i = a2[943]; v3 != i; v3 += 448)
  {
    v5 = sub_4DADB4(v3);
    result = sub_7D334C(&v24, v5);
  }

  v6 = a2[939];
  for (j = a2[940]; v6 != j; v6 += 1120)
  {
    v8 = sub_4DADB4(v6);
    result = sub_7D334C(&v24, v8);
  }

  v9 = a2[139] - a2[138];
  if (v9)
  {
    v10 = 0;
    v11 = 0x3795876FF3795877 * (v9 >> 3);
    do
    {
      v12 = (a2[138] + 2616 * v10);
      v13 = v12[236];
      for (k = v12[237]; v13 != k; v13 += 1120)
      {
        v15 = sub_4DADB4(v13);
        result = sub_7D334C(&v24, v15);
      }

      v16 = v12[239];
      for (m = v12[240]; v16 != m; v16 += 448)
      {
        v18 = sub_4DADB4(v16);
        result = sub_7D334C(&v24, v18);
      }

      v19 = v12[242];
      v20 = v12[243];
      while (v19 != v20)
      {
        v21 = sub_4DADB4(v19);
        result = sub_7D334C(&v24, v21);
        v22 = *(v19 + 680);
        for (n = *(v19 + 688); v22 != n; v22 += 7)
        {
          result = sub_7D334C(&v24, v22);
        }

        v19 += 704;
      }

      ++v10;
    }

    while (v10 != v11);
  }

  return result;
}

uint64_t sub_7D30D0(uint64_t result, void *a2)
{
  if (a2[1281] != 0x7FFFFFFFFFFFFFFFLL && a2[1282] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12[7] = v2;
    v12[8] = v3;
    v6 = result;
    v12[0] = sub_4D1DB8(a2) - a2[1281];
    v7 = *(v6[6] - 8);
    a2[1281] = v7 - sub_7D31EC(v6, v12);
    v12[0] = sub_4D1DB8(a2) - a2[1282];
    v8 = *(v6[6] - 8);
    result = sub_7D31EC(v6, v12);
    a2[1282] = v8 - result;
    v9 = a2[1286];
    for (i = a2[1287]; v9 != i; v9 += 64)
    {
      if (*(v9 + 56) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12[0] = sub_4D1DB8(a2) - *(v9 + 56);
        v11 = *(v6[6] - 8);
        result = sub_7D31EC(v6, v12);
        *(v9 + 56) = v11 - result;
      }
    }
  }

  return result;
}

uint64_t sub_7D31EC(void *a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return result;
  }

  v5 = a1[2];
  v4 = a1[3];
  v6 = (v4 - v5) >> 3;
  if (v6 < 1)
  {
    v19 = a1[2];
    if (v4 == v5)
    {
      return result;
    }

LABEL_12:
    v20 = v19 - v5;
    if (*v19 == result)
    {
      return *(a1[5] + v20);
    }

    if (v19 == v5)
    {
      v21 = 0;
      v22 = 0;
      v23 = *v5;
      v24 = a1[5];
    }

    else
    {
      v25 = v19;
      v24 = (a1[5] + v20);
      v22 = *(v24 - 1);
      v21 = *(v19 - 1);
      v23 = *v25 - v21;
    }

    v26 = (*v24 - v22) / v23 * (result - v21);
    if (v26 >= 0.0)
    {
      if (v26 < 4.50359963e15)
      {
        v27 = (v26 + v26) + 1;
        goto LABEL_22;
      }
    }

    else if (v26 > -4.50359963e15)
    {
      v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
LABEL_22:
      v26 = (v27 >> 1);
    }

    return v22 + v26;
  }

  v7 = a1[2];
  if (v4 - v5 != 8)
  {
    v7 = a1[2];
    do
    {
      v8 = (2 * v6) & 0xFFFFFFFFFFFFFFF8;
      _X15 = v7 + v8;
      __asm { PRFM            #0, [X15] }

      v15 = &v7[v6 >> 1];
      _X14 = v15 + v8;
      __asm { PRFM            #0, [X14] }

      if (*v15 >= result)
      {
        v18 = 0;
      }

      else
      {
        v18 = v6 >> 1;
      }

      v7 += v18;
      v6 -= v6 >> 1;
    }

    while (v6 > 1);
  }

  v19 = &v7[*v7 < result];
  if (v4 != v19)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_7D334C(void **a1, void *a2)
{
  v3 = *a1;
  sub_6816D0(a2);
  if (v4)
  {
    v16 = sub_6816D0(a2);
    v17 = v5;
    if ((v5 & 1) == 0)
    {
      sub_4F0F0C();
    }

    v6 = sub_7D31EC(v3, &v16);
    sub_681698(a2, v6);
  }

  result = sub_6816DC(a2);
  if (result)
  {
    result = sub_68163C(a2);
    if (result)
    {
      v8 = sub_58BBC(a2);
      v9 = sub_7D31EC(v3, v8);
      *sub_58BBC(a2) = v9;
      v10 = sub_58BBC(a2);
      v11 = sub_7D31EC(v3, (v10 + 8));
      *(sub_58BBC(a2) + 8) = v11;
      v12 = nullsub_1(a2);
      v13 = sub_7D31EC(v3, (v12 + 16));
      v14 = v13 - *sub_58BBC(a2);
      *nullsub_1(a2) = v14;
      v15 = v13 - *(sub_58BBC(a2) + 8);
      result = nullsub_1(a2);
      *(result + 8) = v15;
    }
  }

  return result;
}

void sub_7D346C(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = sub_4D1DC0(a1);
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  sub_4D1DDC(a1, v6);
  if (v6[3] != v6[1])
  {
    sub_4D23F8(a1, 0, v5);
    operator new();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_7D3644(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_7D3680(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = sub_4D1DC0(a1);
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  sub_4D1DDC(a1, v5);
  if (v5[3] != v5[1])
  {
    sub_5FC64(a1[1266]);
    sub_4D2354(a1, 0);
    operator new();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_7D38F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    *(a10 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_7D3944(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = sub_4D1DC0(a1);
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  sub_4D1DDC(a1, v6);
  if (v6[3] != v6[1])
  {
    sub_4D23F8(a1, 0, v5);
    operator new();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_7D3B1C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_7D3B58(void *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = sub_4D1DC0(a1);
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  sub_4D1DDC(a1, v5);
  if (v5[3] != v5[1])
  {
    sub_5FC64(a1[1266]);
    sub_4D2354(a1, 0);
    operator new();
  }

  a2[2] = 0;
  *a2 = 0;
}

void sub_7D3DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    *(a10 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_7D3E1C()
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
  xmmword_27A99D8 = 0u;
  unk_27A99E8 = 0u;
  dword_27A99F8 = 1065353216;
  sub_3A9A34(&xmmword_27A99D8, v0);
  sub_3A9A34(&xmmword_27A99D8, v3);
  sub_3A9A34(&xmmword_27A99D8, __p);
  sub_3A9A34(&xmmword_27A99D8, v9);
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
    qword_27A99B0 = 0;
    qword_27A99B8 = 0;
    qword_27A99A8 = 0;
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

void sub_7D4064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27A99C0)
  {
    qword_27A99C8 = qword_27A99C0;
    operator delete(qword_27A99C0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7D4110(uint64_t a1, void *a2, void *a3)
{
  sub_7D44E4(a1, a2, a3);

  return sub_7D48F8(a1, a2, a3);
}

uint64_t sub_7D4160(uint64_t a1, uint64_t a2)
{
  result = nullsub_1(a2);
  v4 = *result;
  v5 = *(result + 8);
  if (*result != v5)
  {
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v7 = vnegq_f64(v6);
    do
    {
      v8 = v7;
      result = sub_7D42F4(a1, &v8, v4);
      v4 += 1582;
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t sub_7D41D8(uint64_t a1, uint64_t a2)
{
  result = nullsub_1(a2);
  v4 = *result;
  v5 = *(result + 8);
  if (*result != v5)
  {
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v7 = vnegq_f64(v6);
    do
    {
      v8 = v7;
      sub_7D44E4(a1, &v8, v4);
      result = sub_7D48F8(a1, &v8, v4);
      v4 += 1582;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_7D4260(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 != v5)
  {
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v7 = vnegq_f64(v6);
    do
    {
      v8 = v7;
      sub_7D4AE8(a1, &v8, v4);
      if (*(a1 + 80) == 1)
      {
        sub_7DAF1C();
      }

      v4 += 1582;
    }

    while (v4 != v5);
  }
}

uint64_t sub_7D42F4(uint64_t result, void *a2, void *a3)
{
  v3 = a3[1272];
  if (v3 != a3[1273])
  {
    v6 = result;
    v7 = sub_69B32C(a3);
    if (sub_4F8554(a2))
    {
      v9 = *(v3 + 8);
      if (v7 - v9 >= *a2 - a2[1])
      {
        v19 = *(v3 + 24);
        v20 = v9;
        goto LABEL_15;
      }

      v10 = *(v3 + 8);
      v11 = *(v6 + 24);
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (!((v13 < 0) ^ v12 | (v13 == 0)))
      {
LABEL_9:
        v14 = *(v3 + 24);
        v19 = v14;
        v20 = v13;
        v15 = v10 - v13;
        if (v10 - v13 < 1)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v10 = *(v3 + 8);
      v16 = *(v6 + 24);
      v12 = __OFSUB__(v10, v16);
      v13 = v10 - v16;
      if (!((v13 < 0) ^ v12 | (v13 == 0)))
      {
        goto LABEL_9;
      }
    }

    v14 = *(v3 + 24);
    v19 = v14;
    v20 = 0;
    v15 = v10;
    if (v10 < 1)
    {
      goto LABEL_15;
    }

LABEL_12:
    v17 = 0;
    do
    {
      if (!v14)
      {
        break;
      }

      v17 += sub_4D23F8(a3, v14, v8);
      v14 = --v19;
    }

    while (v17 < v15);
LABEL_15:
    sub_685A18(&__p);
  }

  return result;
}

void sub_7D44BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7D44E4(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 8) == 1)
  {
    v4 = a3[924];
    v5 = a3[925];
    if (v4 != v5)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3);
      do
      {
        v11 = v9;
        v12 = v10;
        while (1)
        {
          v13 = v4 + 24 * v11;
          v15 = *(v13 + 16);
          v14 = (v13 + 16);
          if ((v15 & 0xFFFFFFFE) == 2)
          {
            break;
          }

          if (!v7)
          {
            v7 = 0;
            v9 = v11 + 1;
            goto LABEL_17;
          }

          v16 = v11;
          if (v11 < v12)
          {
            v16 = v11;
            while (1)
            {
              v17 = *v14;
              v14 += 6;
              if ((v17 & 0xFFFFFFFE) == 2)
              {
                break;
              }

              if (v12 == ++v16)
              {
                goto LABEL_16;
              }
            }
          }

          if (v16 == v12)
          {
LABEL_16:
            sub_7D6248(a1, v8, v11, a3, 0, &v24);
          }

          v18 = sub_69CBA4(a3, v16);
          v19 = sub_69CBA4(a3, v11);
          v20 = *(a1 + 16);
          v7 = v18 - v19 <= v20;
          if (v18 - v19 > v20)
          {
            sub_7D6248(a1, v8, v11, a3, 0, &v24);
          }

          v4 = a3[924];
          v12 = 0xAAAAAAAAAAAAAAABLL * ((a3[925] - v4) >> 3);
          v11 = v16;
          if (v16 >= v12)
          {
            goto LABEL_30;
          }
        }

        if (!v7)
        {
          v8 = v11;
        }

        if (v11 < v12)
        {
          v21 = (v4 + 24 * v11 + 16);
          while (1)
          {
            v22 = *v21;
            v21 += 6;
            if ((v22 & 0xFFFFFFFE) != 2)
            {
              break;
            }

            if (v12 == ++v11)
            {
              goto LABEL_28;
            }
          }
        }

        if (v11 == v12)
        {
LABEL_28:
          sub_7D6248(a1, v8, v12 - 1, a3, 1, &v24);
        }

        v7 = 1;
        v9 = v11;
LABEL_17:
        v4 = a3[924];
        v10 = 0xAAAAAAAAAAAAAAABLL * ((a3[925] - v4) >> 3);
      }

      while (v9 < v10);
LABEL_30:
      *&v24 = sub_69B32C(a3);
      sub_7D500C(a1, a2, &v24, a3 + 1272);
    }
  }
}

void sub_7D48BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_570440(va);
  _Unwind_Resume(a1);
}

void sub_7D48D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_570440(va);
  _Unwind_Resume(a1);
}

void sub_7D48E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_570440(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7D48F8(uint64_t result, void *a2, void *a3)
{
  v3 = a3[1272];
  if (v3 != a3[1273])
  {
    v6 = result;
    v7 = sub_69B32C(a3);
    if (sub_4F8554(a2))
    {
      v9 = *(v3 + 8);
      if (v7 - v9 >= *a2 - a2[1])
      {
        v19 = *(v3 + 24);
        v20 = v9;
        goto LABEL_15;
      }

      v10 = *(v3 + 8);
      v11 = *(v6 + 24);
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (!((v13 < 0) ^ v12 | (v13 == 0)))
      {
LABEL_9:
        v14 = *(v3 + 24);
        v19 = v14;
        v20 = v13;
        v15 = v10 - v13;
        if (v10 - v13 < 1)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v10 = *(v3 + 8);
      v16 = *(v6 + 24);
      v12 = __OFSUB__(v10, v16);
      v13 = v10 - v16;
      if (!((v13 < 0) ^ v12 | (v13 == 0)))
      {
        goto LABEL_9;
      }
    }

    v14 = *(v3 + 24);
    v19 = v14;
    v20 = 0;
    v15 = v10;
    if (v10 < 1)
    {
      goto LABEL_15;
    }

LABEL_12:
    v17 = 0;
    do
    {
      if (!v14)
      {
        break;
      }

      v17 += sub_4D23F8(a3, v14, v8);
      v14 = --v19;
    }

    while (v17 < v15);
LABEL_15:
    sub_685A18(&__p);
  }

  return result;
}

void sub_7D4AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_7D4AE8(uint64_t result, void *a2, void *a3)
{
  v3 = a3[1272];
  if (v3 != a3[1273])
  {
    v6 = result;
    v7 = sub_69B32C(a3);
    if (sub_4F8554(a2))
    {
      v9 = *(v3 + 8);
      if (v7 - v9 >= *a2 - a2[1])
      {
        v19 = *(v3 + 24);
        v20 = v9;
        goto LABEL_15;
      }

      v10 = *(v3 + 8);
      v11 = *(v6 + 24);
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (!((v13 < 0) ^ v12 | (v13 == 0)))
      {
LABEL_9:
        v14 = *(v3 + 24);
        v19 = v14;
        v20 = v13;
        v15 = v10 - v13;
        if (v10 - v13 < 1)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v10 = *(v3 + 8);
      v16 = *(v6 + 24);
      v12 = __OFSUB__(v10, v16);
      v13 = v10 - v16;
      if (!((v13 < 0) ^ v12 | (v13 == 0)))
      {
        goto LABEL_9;
      }
    }

    v14 = *(v3 + 24);
    v19 = v14;
    v20 = 0;
    v15 = v10;
    if (v10 < 1)
    {
      goto LABEL_15;
    }

LABEL_12:
    v17 = 0;
    do
    {
      if (!v14)
      {
        break;
      }

      v17 += sub_4D23F8(a3, v14, v8);
      v14 = --v19;
    }

    while (v17 < v15);
LABEL_15:
    sub_685A18(&__p);
  }

  return result;
}

void sub_7D4CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_7D4E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_7D4E74(uint64_t a1, void *a2)
{
  *v10 = 0u;
  *__p = 0u;
  v12 = 1065353216;
  if (*(a1 + 52) == 1)
  {
    v9 = 0;
    sub_7D5CBC(v10, &v9);
  }

  if (*(a1 + 53) == 1)
  {
    v9 = 1;
    sub_7D5CBC(v10, &v9);
  }

  if (*(a1 + 54) == 1)
  {
    v9 = 2;
    sub_7D5CBC(v10, &v9);
  }

  if (*(a1 + 55) == 1)
  {
    v9 = 3;
    sub_7D5CBC(v10, &v9);
  }

  if (__p[1])
  {
    v4 = sub_6850C8(a2 + 73, v10) / (a2[2] - a2[1]) >= *(a1 + 56);
    v5 = __p[0];
    if (!__p[0])
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    v5 = __p[0];
    if (!__p[0])
    {
      goto LABEL_12;
    }
  }

  do
  {
    v6 = *v5;
    operator delete(v5);
    v5 = v6;
  }

  while (v6);
LABEL_12:
  v7 = v10[0];
  v10[0] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v4;
}

void sub_7D4FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_7D4FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_7D4FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_7D4FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_7D4FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_7D500C(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = a4[1];
  if (*a4 == v6)
  {
    goto LABEL_27;
  }

  while (1)
  {
    if (!sub_4F8554(a2) || *a3 - *(v5 + 8) < *a2 - a2[1])
    {
      v10 = *(v5 + 80);
      v11 = *(a1 + 48);
      v12 = sub_7D4E74(a1, v5);
      if (v10 < v11 || !v12)
      {
        break;
      }
    }

    v5 += 616;
    if (v5 == v6)
    {
      v14 = v6;
      goto LABEL_28;
    }
  }

  if (v5 == v6 || v5 + 616 == v6)
  {
LABEL_27:
    v14 = v5;
  }

  else
  {
    v14 = v5;
    do
    {
      if (sub_4F8554(a2) && *a3 - *(v5 + 624) >= *a2 - a2[1] || ((v18 = *(v5 + 696), v19 = *(a1 + 48), v20 = sub_7D4E74(a1, (v5 + 616)), v18 >= v19) ? (v21 = !v20) : (v21 = 1), !v21))
      {
        v22 = *(v5 + 616);
        v23 = *(v5 + 632);
        v24 = *(v5 + 648);
        *(v14 + 48) = *(v5 + 664);
        *(v14 + 16) = v23;
        *(v14 + 32) = v24;
        *v14 = v22;
        v25 = *(v14 + 56);
        if (v25)
        {
          *(v14 + 64) = v25;
          operator delete(v25);
          *(v14 + 56) = 0;
          *(v14 + 64) = 0;
          *(v14 + 72) = 0;
        }

        *(v14 + 56) = *(v5 + 672);
        *(v14 + 72) = *(v5 + 688);
        *(v5 + 672) = 0;
        *(v5 + 680) = 0;
        *(v5 + 688) = 0;
        sub_5D85BC(v14 + 80, (v5 + 696));
        v26 = (v14 + 552);
        v27 = *(v14 + 552);
        if (v27)
        {
          *(v14 + 560) = v27;
          operator delete(v27);
          *v26 = 0;
          *(v14 + 560) = 0;
          *(v14 + 568) = 0;
        }

        *v26 = *(v5 + 1168);
        *(v14 + 568) = *(v5 + 1184);
        *(v5 + 1184) = 0;
        *(v5 + 1168) = 0u;
        v15 = *(v5 + 1192);
        v16 = *(v5 + 1208);
        *(v14 + 608) = *(v5 + 1224);
        *(v14 + 576) = v15;
        *(v14 + 592) = v16;
        v14 += 616;
      }

      v17 = v5 + 1232;
      v5 += 616;
    }

    while (v17 != v6);
  }

LABEL_28:
  v28 = a4[1];
  if (v14 != v28)
  {
    while (v28 != v14)
    {
      v28 -= 616;
      sub_570440(v28);
    }

    a4[1] = v14;
  }
}

void sub_7D5C5C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_7D5CBC(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
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
        if (*(v7 + 16) == v2)
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t sub_7D5FF8(uint64_t *a1, char *a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7)
{
  v7 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x6A63BD81A98EF6)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v8)
  {
    v8 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v10 = 0x6A63BD81A98EF6;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0x6A63BD81A98EF6)
    {
      operator new();
    }

    sub_1808();
  }

  v24 = 8 * ((a1[1] - *a1) >> 3);
  sub_685670(v24, *a2, a3, a4, *a5, *a6, a7, 1);
  v11 = *a1;
  v12 = a1[1];
  v13 = 616 * v7 - &v12[-*a1];
  if (v12 != *a1)
  {
    v14 = v11 + 80;
    v15 = v24 - 8 * (&v12[-*a1] >> 3) + 80;
    do
    {
      v16 = *(v14 - 5);
      v17 = *(v14 - 3);
      v18 = *(v14 - 4);
      *(v15 - 64) = *(v14 - 4);
      *(v15 - 48) = v17;
      *(v15 - 80) = v16;
      *(v15 - 32) = v18;
      *(v15 - 24) = 0;
      *(v15 - 16) = 0;
      *(v15 - 8) = 0;
      *(v15 - 24) = *(v14 - 24);
      *(v15 - 8) = *(v14 - 1);
      *(v14 - 3) = 0;
      *(v14 - 2) = 0;
      *(v14 - 1) = 0;
      sub_5D7BA0(v15, v14);
      *(v19 + 472) = 0;
      *(v19 + 480) = 0;
      *(v19 + 488) = 0;
      *(v19 + 472) = *(v14 + 59);
      *(v19 + 480) = *(v14 + 30);
      *(v14 + 59) = 0;
      *(v14 + 60) = 0;
      *(v14 + 61) = 0;
      v20 = *(v14 + 31);
      v21 = *(v14 + 32);
      *(v19 + 528) = *(v14 + 66);
      *(v19 + 496) = v20;
      *(v19 + 512) = v21;
      v22 = v14 + 536;
      v14 += 616;
      v15 = v19 + 616;
    }

    while (v22 != v12);
    do
    {
      sub_570440(v11);
      v11 += 616;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v24 + 616;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v24 + 616;
}

void sub_7D6234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_751560(va);
  _Unwind_Resume(a1);
}

void sub_7D6248(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v20 = sub_69CBA4(a4, a2);
  if (a5)
  {
    v19 = sub_69B32C(a4);
    v12 = sub_69CBB8(a4, a2);
    v13 = sub_4D1DC0(a4) - 1;
  }

  else
  {
    v19 = sub_69CBA4(a4, a3);
    v12 = sub_69CBB8(a4, a2);
    v13 = sub_69CBB8(a4, a3);
  }

  sub_6851E8(a6, &v20, &v19, 1);
  *(a6 + 576) = 0;
  *(a6 + 24) = v12;
  *(a6 + 32) = v13;
  v15 = sub_4D25C0(a4, v12, v14);
  *(a6 + 40) = v20 - v15;
  v17 = sub_4D2544(a4, v12, 1, v13, 0, v16);
  *(a6 + 48) = v19 - (v17 + v15);
  sub_7D6A30(a1, &v18);
}

void sub_7D66EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  sub_5C39A8(&a35);
  sub_570440(v38);
  _Unwind_Resume(a1);
}

uint64_t sub_7D67BC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x6A63BD81A98EF6)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v6 = 0x6A63BD81A98EF6;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x6A63BD81A98EF6)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = *(a2 + 16);
  v8 = 8 * ((a1[1] - *a1) >> 3);
  *v8 = *a2;
  *(v8 + 16) = v7;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = *(a2 + 48);
  *(v8 + 56) = *(a2 + 56);
  *(v8 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  sub_5D7BA0(616 * v2 + 80, (a2 + 80));
  v9 = *(a2 + 552);
  *(a2 + 552) = 0;
  v10 = *(a2 + 560);
  v11 = *(a2 + 576);
  *(a2 + 568) = 0;
  *(a2 + 560) = 0;
  v12 = *a1;
  v13 = a1[1];
  v14 = 616 * v2 - &v13[-*a1];
  *(v8 + 552) = v9;
  *(v8 + 560) = v10;
  *(v8 + 576) = v11;
  *(v8 + 592) = *(a2 + 592);
  *(v8 + 608) = *(a2 + 608);
  if (v13 != v12)
  {
    v15 = v12 + 80;
    v16 = 616 * v2 - 8 * ((v13 - v12) >> 3) + 80;
    v17 = v14;
    do
    {
      v18 = *(v15 - 5);
      v19 = *(v15 - 4);
      v20 = *(v15 - 3);
      *(v16 - 32) = *(v15 - 4);
      *(v16 - 64) = v19;
      *(v16 - 48) = v20;
      *(v16 - 80) = v18;
      *(v17 + 72) = 0;
      *(v17 + 56) = 0u;
      *(v17 + 56) = *(v15 - 24);
      *(v17 + 72) = *(v15 - 1);
      *(v15 - 1) = 0;
      *(v15 - 24) = 0u;
      sub_5D7BA0(v16, v15);
      *(v17 + 568) = 0;
      *(v17 + 552) = 0u;
      *(v17 + 552) = *(v15 + 59);
      *(v17 + 560) = *(v15 + 30);
      *(v15 + 59) = 0;
      *(v15 + 60) = 0;
      *(v15 + 61) = 0;
      v21 = *(v15 + 31);
      v22 = *(v15 + 32);
      *(v17 + 608) = *(v15 + 66);
      *(v17 + 576) = v21;
      *(v17 + 592) = v22;
      v17 += 616;
      v23 = v15 + 536;
      v15 += 616;
      v16 = v24 + 616;
    }

    while (v23 != v13);
    do
    {
      sub_570440(v12);
      v12 += 616;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v8 + 616;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v8 + 616;
}

void sub_7D6A30(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0x8000000080000000;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  sub_763044(v2, *a1);
}

void sub_7D6E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    v32 = a1;
    operator delete(__p);
    a1 = v32;
  }

  _Unwind_Resume(a1);
}

void sub_7D9EF8(_Unwind_Exception *a1)
{
  if (qword_27AAA50)
  {
    qword_27AAA58 = qword_27AAA50;
    operator delete(qword_27AAA50);
  }

  _Unwind_Resume(a1);
}

void sub_7DA190(uint64_t a1, uint64_t a2)
{
  strcpy(v4, "RouteLineStylesBuilder");
  v4[23] = 22;
  memset(v3, 0, sizeof(v3));
  v2 = sub_3AEC94(a2, v4, v3);
  sub_41D598(v2, &v5);
  operator new();
}

void sub_7DA358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (*(v20 - 49) < 0)
  {
    operator delete(*(v20 - 72));
  }

  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_7DA3AC(uint64_t a1, uint64_t a2)
{
  strcpy(v4, "RouteLineStylesBuilder");
  v4[23] = 22;
  memset(v3, 0, sizeof(v3));
  v2 = sub_3AEC94(a2, v4, v3);
  sub_41D7AC(v2, &v5);
  operator new();
}

void sub_7DA574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (*(v20 - 49) < 0)
  {
    operator delete(*(v20 - 72));
  }

  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_7DA5C8(uint64_t a1, uint64_t a2)
{
  strcpy(v4, "RouteLineStylesBuilder");
  v4[23] = 22;
  memset(v3, 0, sizeof(v3));
  v2 = sub_3AEC94(a2, v4, v3);
  sub_41D820(v2, &v5);
  operator new();
}

void sub_7DA790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (*(v20 - 49) < 0)
  {
    operator delete(*(v20 - 72));
  }

  sub_5C010(&a20);
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_7DA7E4(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v5 = *a1;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (v5 != 1)
  {
    return;
  }

  v6 = a2;
  if (*(a2 + 1096) != 3)
  {
    operator new();
  }

  _X25 = *(a2 + 1104);
  v8 = *(a2 + 1112);
  if (_X25 == v8)
  {
    v9 = 0;
    v32 = a3[2];
    if (!v32)
    {
      goto LABEL_42;
    }

LABEL_40:
    *v9 = 0;
    *(v9 + 8) = 0;
    a3[1] = v9 + 16;
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v36 = v6;
  do
  {
    __asm { PRFM            #0, [X25,#0x1730] }

    v17 = *(_X25 + 712);
    v18 = *(_X25 + 720);
    if ((*(_X25 + 704) & 1) != 0 || v17 != v18)
    {
      if (v17 != v18)
      {
        v19 = 1;
        goto LABEL_15;
      }
    }

    else if ((*(_X25 + 705) & 1) == 0)
    {
      goto LABEL_7;
    }

    v19 = *(_X25 + 705);
LABEL_15:
    _X8 = _X25 + 5256;
    __asm { PRFM            #0, [X8] }

    v10 += sub_4D2544(v6, v11, 1, *(_X25 + 24), 0, a4);
    v22 = a3[2];
    if (!v9 && v10 >= 1)
    {
      if (v9 >= v22)
      {
        v23 = v22 - v9;
        v24 = v23 >> 3;
        if ((v23 >> 3) <= 1)
        {
          v24 = 1;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF0)
        {
          v25 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        if (!(v25 >> 60))
        {
          operator new();
        }

        *a3 = 0;
        sub_1808();
      }

      *v9 = 0;
      *(v9 + 8) = v19 & 1;
      a3[1] = v9 + 16;
      v22 = a3[2];
      v9 += 16;
    }

    v26 = (v19 & 1) == 0;
    if (v9 < v22)
    {
      *v9 = v10;
      *(v9 + 8) = v26;
      v9 += 16;
    }

    else
    {
      v27 = v9;
      v28 = v9 >> 4;
      v29 = v28 + 1;
      if ((v28 + 1) >> 60)
      {
        *a3 = 0;
        sub_1794();
      }

      if (v22 >> 3 > v29)
      {
        v29 = v22 >> 3;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF0)
      {
        v30 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v29;
      }

      if (v30)
      {
        if (!(v30 >> 60))
        {
          operator new();
        }

        *a3 = 0;
        sub_1808();
      }

      v31 = 16 * v28;
      *v31 = v10;
      *(v31 + 8) = v26;
      v9 = 16 * v28 + 16;
      memcpy(0, 0, v27);
      a3[1] = v9;
      a3[2] = 0;
      v6 = v36;
    }

    a3[1] = v9;
    v11 = *(_X25 + 24);
LABEL_7:
    _X25 += 2616;
  }

  while (_X25 != v8);
  *a3 = 0;
  if (!v9)
  {
    v32 = a3[2];
    if (v32)
    {
      goto LABEL_40;
    }

LABEL_42:
    v33 = v32 - v9;
    v34 = v33 >> 3;
    if ((v33 >> 3) <= 1)
    {
      v34 = 1;
    }

    if (v33 >= 0x7FFFFFFFFFFFFFF0)
    {
      v35 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v35 = v34;
    }

    if (!(v35 >> 60))
    {
      operator new();
    }

    sub_1808();
  }
}

void sub_7DAB58(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_7DAB90(unsigned __int8 *a1, uint64_t a2)
{
  v3 = nullsub_1(a2);
  v5 = *v3;
  v6 = *(v3 + 8);
  if (*v3 != v6)
  {
    do
    {
      sub_7DA7E4(a1, v5, &v8, result);
      v7 = v5[1543];
      if (v7)
      {
        v5[1544] = v7;
        operator delete(v7);
      }

      result = *&v8;
      *(v5 + 1543) = v8;
      v5[1545] = v9;
      v5 += 1582;
    }

    while (v5 != v6);
  }

  return result;
}

void sub_7DAC28()
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
  xmmword_27AAAC0 = 0u;
  *algn_27AAAD0 = 0u;
  dword_27AAAE0 = 1065353216;
  sub_3A9A34(&xmmword_27AAAC0, v0);
  sub_3A9A34(&xmmword_27AAAC0, v3);
  sub_3A9A34(&xmmword_27AAAC0, __p);
  sub_3A9A34(&xmmword_27AAAC0, v9);
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
    qword_27AAA98 = 0;
    qword_27AAAA0 = 0;
    qword_27AAA90 = 0;
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

void sub_7DAE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27AAAA8)
  {
    qword_27AAAB0 = qword_27AAAA8;
    operator delete(qword_27AAAA8);
  }

  _Unwind_Resume(exception_object);
}

void sub_7DAF1C()
{
  sub_7C97B0(1, v25);
  sub_4D0560();
  v1 = v0;
  v3 = v2;
  v4 = 0;
  while (1)
  {
    sub_4D0568();
    v6 = v5;
    v8 = v7;
    if (v1)
    {
      v9 = sub_4D1DC0(v1);
      v10 = v3 < v9;
      if (!v6)
      {
        if (v3 >= v9)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_20;
      }

      v10 = 0;
    }

    v11 = sub_4D1DC0(v6);
    if (v8 >= v11 || !v10)
    {
      break;
    }

    v13 = sub_4D1F50(v1, v3);
    if (v13 == sub_4D1F50(v6, v8))
    {
      goto LABEL_20;
    }

LABEL_16:
    v14 = sub_4D1F50(v1, v3);
    v24 = *(v14 + 32) | ((*(v14 + 36) & 0x1FFFFFFF) << 32);
    __p = &v24;
    v15 = sub_7CC190(v25, &v24);
    sub_7DB190(v1, v3, v15 + 3, &__p);
    if (__p != v23)
    {
      sub_7DB7CC(__p, v1, v3, v4);
    }

    v17 = sub_4D23F8(v1, v3, v16);
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
    }

    v4 += v17;
    ++v3;
  }

  if ((v10 ^ (v8 < v11)))
  {
    goto LABEL_16;
  }

LABEL_20:
  v18 = v26;
  if (v26)
  {
    do
    {
      v20 = *v18;
      v21 = v18[3];
      if (v21)
      {
        v18[4] = v21;
        operator delete(v21);
      }

      operator delete(v18);
      v18 = v20;
    }

    while (v20);
  }

  v19 = v25[0];
  v25[0] = 0;
  if (v19)
  {
    operator delete(v19);
  }
}

void sub_7DB104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_39AFC(va);
  _Unwind_Resume(a1);
}

void sub_7DB118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_39AFC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_7DB190@<X0>(void *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a4;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if ((*(sub_4D1F50(a1, a2) + 39) & 0x20) == 0)
  {
    v8 = sub_4D21C8(a1, a2);
    v9 = sub_4D2148(a1, a2);
    v10 = 1000000000 - v8;
    result = (1000000000 - v9);
    v12 = *a3;
    if (*a3 >= a3[1])
    {
      return result;
    }

    goto LABEL_5;
  }

  v13 = sub_4D2148(a1, a2);
  result = sub_4D21C8(a1, a2);
  v10 = v13;
  v12 = *a3;
  if (*a3 < a3[1])
  {
LABEL_5:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v52 = result << 32;
    v53 = a3;
    v18 = v12 - 12;
    v19 = -1;
    v56 = v7;
    v55 = v10;
    v54 = result;
    do
    {
      v21 = *v12;
      v22 = *(v12 + 4);
      if (*v12 == 2)
      {
        v23 = v15 + 1;
      }

      else
      {
        v23 = v15;
      }

      if (v21 == 3)
      {
        v24 = v16 + 1;
      }

      else
      {
        v24 = v16;
      }

      if (v21 == 3)
      {
        v23 = v15;
      }

      v25 = v16 - 1;
      if (v21 != 1)
      {
        v25 = v16;
      }

      if (!v21)
      {
        v25 = v16;
      }

      v26 = v15 - 1;
      if (v21)
      {
        v26 = v15;
      }

      if (v21 <= 1)
      {
        v16 = v25;
      }

      else
      {
        v16 = v24;
      }

      if (v21 <= 1)
      {
        v15 = v26;
      }

      else
      {
        v15 = v23;
      }

      v20 = v15 > 0 && v16 > 0;
      if (v22 >= v10)
      {
        if (v22 > result)
        {
          return result;
        }

        if (*(v12 + 8) == 1)
        {
          if (v19 < 0x3B9ACA01)
          {
            v28 = v7[2];
            if (v14 >= v28)
            {
              v35 = *v7;
              v36 = v14 - *v7;
              v37 = 0xAAAAAAAAAAAAAAABLL * (v36 >> 2) + 1;
              __srca = v35;
              if (v37 > 0x1555555555555555)
              {
                sub_1794();
              }

              v38 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v35) >> 2);
              if (2 * v38 > v37)
              {
                v37 = 2 * v38;
              }

              if (v38 >= 0xAAAAAAAAAAAAAAALL)
              {
                v39 = 0x1555555555555555;
              }

              else
              {
                v39 = v37;
              }

              if (v39)
              {
                if (v39 <= 0x1555555555555555)
                {
                  operator new();
                }

                sub_1808();
              }

              v43 = 4 * (v36 >> 2);
              *v43 = v19 | (v22 << 32);
              *(v43 + 8) = v17;
              v14 = v43 + 12;
              v44 = v43 - v36;
              memcpy((v43 - v36), v35, v36);
              v7 = v56;
              *v56 = v44;
              v56[1] = v14;
              v56[2] = 0;
              if (__srca)
              {
                operator delete(__srca);
              }

              v10 = v55;
              result = v54;
            }

            else
            {
              *v14 = v19 | (v22 << 32);
              *(v14 + 8) = v17;
              v14 += 12;
            }

            v20 = 0;
            v7[1] = v14;
LABEL_88:
            v19 = -1;
            goto LABEL_8;
          }
        }

        else
        {
          if (v20 != v17 && v19 < 0x3B9ACA01 && v19 < v22)
          {
            v29 = v7[2];
            if (v14 >= v29)
            {
              v30 = *v7;
              v31 = v14 - *v7;
              v32 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 2) + 1;
              __src = v30;
              if (v32 > 0x1555555555555555)
              {
                sub_1794();
              }

              v33 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 2);
              if (2 * v33 > v32)
              {
                v32 = 2 * v33;
              }

              if (v33 >= 0xAAAAAAAAAAAAAAALL)
              {
                v34 = 0x1555555555555555;
              }

              else
              {
                v34 = v32;
              }

              if (v34)
              {
                if (v34 <= 0x1555555555555555)
                {
                  operator new();
                }

                sub_1808();
              }

              v41 = 4 * (v31 >> 2);
              *v41 = v19 | (v22 << 32);
              *(v41 + 8) = v17;
              v14 = v41 + 12;
              v42 = v41 - v31;
              memcpy((v41 - v31), v30, v31);
              v7 = v56;
              *v56 = v42;
              v56[1] = v14;
              v56[2] = 0;
              if (__src)
              {
                operator delete(__src);
              }

              a3 = v53;
              v10 = v55;
              result = v54;
            }

            else
            {
              *v14 = v19 | (v22 << 32);
              *(v14 + 8) = v17;
              v14 += 12;
            }

            v7[1] = v14;
            v19 = *(v12 + 4);
            *(v12 + 8) = 1;
            goto LABEL_8;
          }

          if (v10 == v22)
          {
            if ((v21 & 0xFFFFFFFE) == 2)
            {
              *(v12 + 8) = 1;
              v19 = v10;
              goto LABEL_8;
            }
          }

          else if (v10 >= v22 || v22 >= result)
          {
            if (v21 <= 1 && v22 == result)
            {
              if (v19 <= 0x3B9ACA00 || v12 != *a3 && (v19 = *(v18 + 4), LOBYTE(v17) = v20, v19 < 0x3B9ACA01))
              {
                if (v19 < result)
                {
                  v40 = v7[2];
                  if (v14 >= v40)
                  {
                    v45 = *v7;
                    v46 = v14 - *v7;
                    v47 = 0xAAAAAAAAAAAAAAABLL * (v46 >> 2) + 1;
                    __srcb = v45;
                    if (v47 > 0x1555555555555555)
                    {
                      sub_1794();
                    }

                    v48 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v45) >> 2);
                    if (2 * v48 > v47)
                    {
                      v47 = 2 * v48;
                    }

                    if (v48 >= 0xAAAAAAAAAAAAAAALL)
                    {
                      v49 = 0x1555555555555555;
                    }

                    else
                    {
                      v49 = v47;
                    }

                    if (v49)
                    {
                      if (v49 <= 0x1555555555555555)
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v50 = 4 * (v46 >> 2);
                    *v50 = v52 | v19;
                    *(v50 + 8) = v17;
                    v14 = v50 + 12;
                    v51 = v50 - v46;
                    memcpy((v50 - v46), v45, v46);
                    v7 = v56;
                    *v56 = v51;
                    v56[1] = v14;
                    v56[2] = 0;
                    if (__srcb)
                    {
                      operator delete(__srcb);
                    }

                    v10 = v55;
                    result = v54;
                  }

                  else
                  {
                    *v14 = v52 | v19;
                    *(v14 + 8) = v17;
                    v14 += 12;
                  }

                  v7[1] = v14;
                }
              }

              v20 = 0;
              *(v12 + 8) = 1;
              goto LABEL_88;
            }
          }

          else
          {
            if (v19 > 0x3B9ACA00 && v12 != *a3)
            {
              v19 = *(v18 + 4);
              v17 = v20;
            }

            *(v12 + 8) = 1;
          }
        }
      }

      v20 = v17;
LABEL_8:
      v12 += 12;
      v18 += 12;
      v17 = v20;
    }

    while (v12 < a3[1]);
  }

  return result;
}

void sub_7DB7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
    *(a15 + 8) = a16;
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_7DB7CC(int *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v9 = sub_7CA078(a1, a2, a3) + a4;
  v8 = sub_7CA2A0(a1, a2, a3) + a4;
  sub_5889EC();
}

void sub_7DB9F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_570440(va);
  sub_53E440(v2 - 192);
  _Unwind_Resume(a1);
}

void sub_7DBA14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v2 + 10208) = v3;
  sub_570440(va);
  sub_53E440(v4 - 192);
  _Unwind_Resume(a1);
}

uint64_t sub_7DBA4C(uint64_t *a1, __int128 *a2)
{
  v2 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x6A63BD81A98EF6)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 3)) >= 0x3531DEC0D4C77BLL)
  {
    v4 = 0x6A63BD81A98EF6;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x6A63BD81A98EF6)
    {
      operator new();
    }

    sub_1808();
  }

  v18 = 8 * ((a1[1] - *a1) >> 3);
  sub_571154(v18, a2);
  v5 = *a1;
  v6 = a1[1];
  v7 = v18 - &v6[-*a1];
  if (v6 != *a1)
  {
    v8 = v5 + 80;
    v9 = v18 - 8 * (&v6[-*a1] >> 3) + 80;
    do
    {
      v10 = *(v8 - 5);
      v11 = *(v8 - 3);
      v12 = *(v8 - 4);
      *(v9 - 64) = *(v8 - 4);
      *(v9 - 48) = v11;
      *(v9 - 80) = v10;
      *(v9 - 32) = v12;
      *(v9 - 24) = 0;
      *(v9 - 16) = 0;
      *(v9 - 8) = 0;
      *(v9 - 24) = *(v8 - 24);
      *(v9 - 8) = *(v8 - 1);
      *(v8 - 3) = 0;
      *(v8 - 2) = 0;
      *(v8 - 1) = 0;
      sub_5D7BA0(v9, v8);
      *(v13 + 472) = 0;
      *(v13 + 480) = 0;
      *(v13 + 488) = 0;
      *(v13 + 472) = *(v8 + 59);
      *(v13 + 480) = *(v8 + 30);
      *(v8 + 59) = 0;
      *(v8 + 60) = 0;
      *(v8 + 61) = 0;
      v14 = *(v8 + 31);
      v15 = *(v8 + 32);
      *(v13 + 528) = *(v8 + 66);
      *(v13 + 496) = v14;
      *(v13 + 512) = v15;
      v16 = v8 + 536;
      v8 += 616;
      v9 = v13 + 616;
    }

    while (v16 != v6);
    do
    {
      sub_570440(v5);
      v5 += 616;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  *a1 = v7;
  a1[1] = v18 + 616;
  a1[2] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return v18 + 616;
}

void sub_7DBC4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_7DBC60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7DBC60(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 616;
    sub_570440(i - 616);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_7DBCB4()
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
  xmmword_27AAB18 = 0u;
  unk_27AAB28 = 0u;
  dword_27AAB38 = 1065353216;
  sub_3A9A34(&xmmword_27AAB18, v0);
  sub_3A9A34(&xmmword_27AAB18, v3);
  sub_3A9A34(&xmmword_27AAB18, __p);
  sub_3A9A34(&xmmword_27AAB18, v9);
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
    qword_27AAAF0 = 0;
    qword_27AAAF8 = 0;
    qword_27AAAE8 = 0;
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

void sub_7DBEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27AAB00)
  {
    qword_27AAB08 = qword_27AAB00;
    operator delete(qword_27AAB00);
  }

  _Unwind_Resume(exception_object);
}

void sub_7DBFA8(BOOL *a1, uint64_t a2)
{
  v5[23] = 10;
  strcpy(v5, "RouteNamer");
  memset(v4, 0, sizeof(v4));
  v3 = sub_3AEC94(a2, v5, v4);
  sub_41D7AC(v3, v6);
  sub_7DF74C(a1, v6);
}

void sub_7DC110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_7DC14C(BOOL *a1, uint64_t a2, uint64_t a3)
{
  v7[23] = 10;
  strcpy(v7, "RouteNamer");
  memset(v6, 0, sizeof(v6));
  v5 = sub_3AEC94(a2, v7, v6);
  sub_41D60C(v5, 0, *(a3 + 1566), v8);
  sub_7DF74C(a1, v8);
}

void sub_7DC2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_5C010(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_7DC300(uint64_t result, void *a2)
{
  if (*(result + 1) == 1)
  {
    memset(v4, 0, sizeof(v4));
    v5 = 1065353216;
    v2 = result;
    sub_7DC37C(result, a2, v4);
    sub_7DC4AC(v2, a2, v4);
    return sub_7DCC34(v4);
  }

  return result;
}

void sub_7DC37C(uint64_t a1, uint64_t a2, void *a3)
{
  *v15 = 0u;
  *__p = 0u;
  v17 = 1065353216;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    do
    {
      sub_7DE500(a1, v3, v15);
      v3 += 1582;
    }

    while (v3 != v4);
    v8 = *(a2 + 8) - *a2;
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0x5DDB1ADCB91F64A7 * (v8 >> 4);
      do
      {
        sub_7DE720(a1, (*a2 + v9), v10++, v15, a3);
        v9 += 12656;
      }

      while (v11 != v10);
    }
  }

  v12 = __p[0];
  if (__p[0])
  {
    do
    {
      v13 = *v12;
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = v15[0];
  v15[0] = 0;
  if (v14)
  {
    operator delete(v14);
  }
}

void sub_7DC4AC(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v4 = *(a3 + 16);
  if (v4)
  {
    while (1)
    {
      v5 = v4[21];
      v6 = *(v4 + 22);
      v7 = v4[23];
      sub_5139E8(v55, v4 + 1);
      *&v65 = v5;
      *(&v65 + 1) = v6;
      v66 = v7;
      if (v6 >= 0.0)
      {
        v8 = v69;
        if (v69 >= v70)
        {
          v10 = sub_7E6078(&v68, v55);
        }

        else
        {
          sub_5139E8(v69, v55);
          v9 = v65;
          v8[21] = v66;
          *(v8 + 19) = v9;
          v10 = v8 + 22;
        }

        v69 = v10;
        sub_7E657C(v68, v10, v52, 0x2E8BA2E8BA2E8BA3 * ((v10 - v68) >> 4));
      }

      if (v64 < 0)
      {
        operator delete(__p);
        if ((v62 & 0x80000000) == 0)
        {
LABEL_11:
          if ((v60 & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_17;
        }
      }

      else if ((v62 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(v61);
      if ((v60 & 0x80000000) == 0)
      {
LABEL_12:
        if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

LABEL_17:
      operator delete(v59);
      if ((v58 & 0x80000000) == 0)
      {
LABEL_13:
        if (v56 < 0)
        {
          goto LABEL_19;
        }

        goto LABEL_3;
      }

LABEL_18:
      operator delete(v57);
      if (v56 < 0)
      {
LABEL_19:
        operator delete(v55[0]);
      }

LABEL_3:
      v4 = *v4;
      if (!v4)
      {
        v4 = v68;
        v11 = v69;
        goto LABEL_22;
      }
    }
  }

  v11 = 0;
LABEL_22:
  *v52 = 0u;
  *v53 = 0u;
  v54 = 1065353216;
  *v49 = 0u;
  *v50 = 0u;
  v51 = 1065353216;
  if (v4 != v11)
  {
    while (1)
    {
      v12 = v53[1];
      if (v53[1] >= (0x5DDB1ADCB91F64A7 * ((a2[1] - *a2) >> 4)))
      {
        goto LABEL_84;
      }

      if (sub_138B0(v49, v4))
      {
LABEL_27:
        sub_7E72A0(v68, v69, v55, 0x2E8BA2E8BA2E8BA3 * ((v69 - v68) >> 4));
        sub_7E494C(&v68, v69 - 22);
        goto LABEL_24;
      }

      v13 = v4[19];
      if (v52[1])
      {
        v14 = vcnt_s8(v52[1]);
        v14.i16[0] = vaddlv_u8(v14);
        if (v14.u32[0] > 1uLL)
        {
          v15 = v4[19];
          if (v13 >= v52[1])
          {
            v15 = v13 % v52[1];
          }
        }

        else
        {
          v15 = (v52[1] - 1) & v13;
        }

        v16 = *(v52[0] + v15);
        if (v16)
        {
          v17 = *v16;
          if (v17)
          {
            if (v14.u32[0] < 2uLL)
            {
              while (1)
              {
                v19 = v17[1];
                if (v13 == v19)
                {
                  if (v17[2] == v13)
                  {
                    goto LABEL_27;
                  }
                }

                else if ((v19 & (v52[1] - 1)) != v15)
                {
                  goto LABEL_48;
                }

                v17 = *v17;
                if (!v17)
                {
                  goto LABEL_48;
                }
              }
            }

            do
            {
              v18 = v17[1];
              if (v13 == v18)
              {
                if (v17[2] == v13)
                {
                  goto LABEL_27;
                }
              }

              else
              {
                if (v18 >= v52[1])
                {
                  v18 %= v52[1];
                }

                if (v18 != v15)
                {
                  break;
                }
              }

              v17 = *v17;
            }

            while (v17);
          }
        }
      }

LABEL_48:
      sub_5139E8(v39, v4);
      sub_7DEBBC((*a2 + 12656 * v4[19]), v4, &v37);
      sub_5139E8(v55, v39);
      v65 = 0uLL;
      v66 = 0;
      if (v38 != v37)
      {
        if (((v38 - v37) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (v48 < 0)
      {
        operator delete(v47);
        if ((v46 & 0x80000000) == 0)
        {
LABEL_55:
          if ((v44 & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_74;
        }
      }

      else if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      operator delete(v45);
      if ((v44 & 0x80000000) == 0)
      {
LABEL_56:
        if (v42 < 0)
        {
          goto LABEL_75;
        }

        goto LABEL_57;
      }

LABEL_74:
      operator delete(v43);
      if (v42 < 0)
      {
LABEL_75:
        operator delete(v41);
        if ((v40 & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_76;
      }

LABEL_57:
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

LABEL_76:
      operator delete(v39[0]);
LABEL_58:
      v20 = *a2 + 12656 * v4[19];
      v21 = v20 + 1176;
      v22 = *(v20 + 1184);
      if (v22 >= *(v20 + 1192))
      {
        v23 = sub_692F88(v21, v55);
      }

      else
      {
        sub_5139E8(v22, v55);
        v22[19] = 0;
        v22[20] = 0;
        v22[21] = 0;
        if (*(&v65 + 1) != v65)
        {
          if (((*(&v65 + 1) - v65) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v23 = v22 + 22;
        *(v21 + 8) = v22 + 22;
      }

      *(v21 + 8) = v23;
      sub_23914(v49, v4);
      sub_7E6F6C(v52, v4 + 19);
      sub_7E72A0(v68, v69, &v67, 0x2E8BA2E8BA2E8BA3 * ((v69 - v68) >> 4));
      sub_7E494C(&v68, v69 - 22);
      if (v65)
      {
        *(&v65 + 1) = v65;
        operator delete(v65);
      }

      if (v64 < 0)
      {
        operator delete(__p);
        if ((v62 & 0x80000000) == 0)
        {
LABEL_68:
          if ((v60 & 0x80000000) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_79;
        }
      }

      else if ((v62 & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      operator delete(v61);
      if ((v60 & 0x80000000) == 0)
      {
LABEL_69:
        if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_80;
      }

LABEL_79:
      operator delete(v59);
      if ((v58 & 0x80000000) == 0)
      {
LABEL_70:
        if (v56 < 0)
        {
          goto LABEL_81;
        }

        goto LABEL_24;
      }

LABEL_80:
      operator delete(v57);
      if (v56 < 0)
      {
LABEL_81:
        operator delete(v55[0]);
      }

LABEL_24:
      v4 = v68;
      if (v68 == v69)
      {
        v12 = v53[1];
        goto LABEL_84;
      }
    }
  }

  v12 = 0;
LABEL_84:
  v24 = a2[1];
  v25 = 0x5DDB1ADCB91F64A7 * ((v24 - *a2) >> 4);
  if (v12 != v25 && v24 != *a2)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      sub_7DF21C(a1, a3, v28, (*a2 + v27));
      v28 = (v28 + 1);
      v27 += 12656;
    }

    while (v25 != v28);
  }

  v29 = v50[0];
  if (v50[0])
  {
    do
    {
      v34 = *v29;
      if (*(v29 + 39) < 0)
      {
        operator delete(v29[2]);
      }

      operator delete(v29);
      v29 = v34;
    }

    while (v34);
  }

  v30 = v49[0];
  v49[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  v31 = v53[0];
  if (v53[0])
  {
    do
    {
      v32 = *v31;
      operator delete(v31);
      v31 = v32;
    }

    while (v32);
  }

  v33 = v52[0];
  v52[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  if (v68)
  {
    sub_7E494C(&v68, v68);
    operator delete(v68);
  }
}

void sub_7DCB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  v49 = *v44;
  if (*v44)
  {
    *(v46 + 160) = v49;
    operator delete(v49);
  }

  sub_3E5388(v46);
  *(v45 + 8) = v46;
  sub_7DEDD0(&a44);
  sub_23D9C(&a33);
  sub_11BD8(&a39);
  sub_7E4910((v47 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_7DCC34(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 167) < 0)
      {
        operator delete(v2[18]);
        if ((*(v2 + 135) & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(v2 + 111) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_14;
        }
      }

      else if ((*(v2 + 135) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(v2[14]);
      if ((*(v2 + 111) & 0x80000000) == 0)
      {
LABEL_9:
        if ((*(v2 + 71) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      operator delete(v2[11]);
      if ((*(v2 + 71) & 0x80000000) == 0)
      {
LABEL_10:
        if (*(v2 + 39) < 0)
        {
          goto LABEL_16;
        }

        goto LABEL_5;
      }

LABEL_15:
      operator delete(v2[6]);
      if (*(v2 + 39) < 0)
      {
LABEL_16:
        operator delete(v2[2]);
      }

LABEL_5:
      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

_BYTE *sub_7DCD04(_BYTE *result, uint64_t *a2)
{
  v3 = result;
  if ((*result & 1) != 0 || result[1] == 1)
  {
    v4 = *a2;
    v5 = a2[1];
    if (*a2 == v5)
    {
      goto LABEL_11;
    }

    v6 = v4 + 976;
    do
    {
      result = sub_68EC38(v4, v3[2]);
      v4 += 976;
      if (result)
      {
        v7 = v6 == v5;
      }

      else
      {
        v7 = 1;
      }

      v6 += 976;
    }

    while (!v7);
    if (result)
    {
LABEL_11:
      memset(v11, 0, sizeof(v11));
      v12 = 1065353216;
      sub_7DCE54(v3, a2, v11);
      if (v3[1] == 1)
      {
        sub_7DCF94(v3, a2, v11);
      }

      if (*v3 == 1)
      {
        if ((v3[4] & 1) != 0 || (v3[3] & 1) != 0 || (v8 = *a2, v9 = a2[1], *a2 == v9))
        {
LABEL_19:
          sub_7CCF34(a2);
        }

        else
        {
          while (1)
          {
            v10 = nullsub_1(v8);
            if (v10[1] - *v10 != 12656)
            {
              break;
            }

            v8 += 7808;
            if (v8 == v9)
            {
              goto LABEL_19;
            }
          }
        }
      }

      return sub_7DCC34(v11);
    }
  }

  return result;
}

void sub_7DCE54(uint64_t a1, uint64_t *a2, void *a3)
{
  *v17 = 0u;
  *__p = 0u;
  v19 = 1065353216;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v8 = nullsub_1(v3);
      sub_7DE500(a1, *v8, v17);
      v3 += 7808;
    }

    while (v3 != v4);
    v9 = a2[1] - *a2;
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0x4FBCDA3AC10C9715 * (v9 >> 7);
      do
      {
        v13 = nullsub_1(*a2 + v10);
        sub_7DE720(a1, *v13, v11++, v17, a3);
        v10 += 7808;
      }

      while (v12 != v11);
    }
  }

  v14 = __p[0];
  if (__p[0])
  {
    do
    {
      v15 = *v14;
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = v17[0];
  v17[0] = 0;
  if (v16)
  {
    operator delete(v16);
  }
}

void sub_7DCF94(uint64_t a1, void *a2, uint64_t a3)
{
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v6 = *(a3 + 16);
  if (v6)
  {
    while (1)
    {
      v7 = v6[21];
      v8 = *(v6 + 22);
      v9 = v6[23];
      sub_5139E8(v53, v6 + 1);
      *&v63 = v7;
      *(&v63 + 1) = v8;
      v64 = v9;
      if (v8 >= 0.0)
      {
        v10 = v67;
        if (v67 >= v68)
        {
          v12 = sub_7E6078(&v66, v53);
        }

        else
        {
          sub_5139E8(v67, v53);
          v11 = v63;
          v10[21] = v64;
          *(v10 + 19) = v11;
          v12 = v10 + 22;
        }

        v67 = v12;
        sub_7E657C(v66, v12, v50, 0x2E8BA2E8BA2E8BA3 * ((v12 - v66) >> 4));
      }

      if (v62 < 0)
      {
        operator delete(__p);
        if ((v60 & 0x80000000) == 0)
        {
LABEL_11:
          if ((v58 & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_17;
        }
      }

      else if ((v60 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      operator delete(v59);
      if ((v58 & 0x80000000) == 0)
      {
LABEL_12:
        if ((v56 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

LABEL_17:
      operator delete(v57);
      if ((v56 & 0x80000000) == 0)
      {
LABEL_13:
        if (v54 < 0)
        {
          goto LABEL_19;
        }

        goto LABEL_3;
      }

LABEL_18:
      operator delete(v55);
      if (v54 < 0)
      {
LABEL_19:
        operator delete(v53[0]);
      }

LABEL_3:
      v6 = *v6;
      if (!v6)
      {
        v6 = v66;
        v13 = v67;
        goto LABEL_22;
      }
    }
  }

  v13 = 0;
LABEL_22:
  *v50 = 0u;
  *v51 = 0u;
  v52 = 1065353216;
  *v47 = 0u;
  *v48 = 0u;
  v49 = 1065353216;
  if (v6 != v13)
  {
    while (1)
    {
      v14 = v51[1];
      if (v51[1] >= (0x4FBCDA3AC10C9715 * ((a2[1] - *a2) >> 7)))
      {
        goto LABEL_77;
      }

      if (sub_138B0(v47, v6))
      {
LABEL_24:
        sub_7E69A8(v66, v67, v53, 0x2E8BA2E8BA2E8BA3 * ((v67 - v66) >> 4));
        sub_7E494C(&v66, v67 - 22);
        goto LABEL_25;
      }

      v15 = v6[19];
      if (v50[1])
      {
        v16 = vcnt_s8(v50[1]);
        v16.i16[0] = vaddlv_u8(v16);
        if (v16.u32[0] > 1uLL)
        {
          v17 = v6[19];
          if (v15 >= v50[1])
          {
            v17 = v15 % v50[1];
          }
        }

        else
        {
          v17 = (v50[1] - 1) & v15;
        }

        v18 = *(v50[0] + v17);
        if (v18)
        {
          v19 = *v18;
          if (v19)
          {
            if (v16.u32[0] < 2uLL)
            {
              while (1)
              {
                v21 = v19[1];
                if (v15 == v21)
                {
                  if (v19[2] == v15)
                  {
                    goto LABEL_24;
                  }
                }

                else if ((v21 & (v50[1] - 1)) != v17)
                {
                  goto LABEL_48;
                }

                v19 = *v19;
                if (!v19)
                {
                  goto LABEL_48;
                }
              }
            }

            do
            {
              v20 = v19[1];
              if (v15 == v20)
              {
                if (v19[2] == v15)
                {
                  goto LABEL_24;
                }
              }

              else
              {
                if (v20 >= v50[1])
                {
                  v20 %= v50[1];
                }

                if (v20 != v17)
                {
                  break;
                }
              }

              v19 = *v19;
            }

            while (v19);
          }
        }
      }

LABEL_48:
      v22 = sub_7DE9A0(a2, v15);
      v23 = *nullsub_1(v22);
      sub_5139E8(v37, v6);
      sub_7DEBBC(v23, v6, &v35);
      sub_5139E8(v53, v37);
      v63 = 0uLL;
      v64 = 0;
      if (v36 != v35)
      {
        if (((v36 - v35) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v46 < 0)
      {
        operator delete(v45);
        if ((v44 & 0x80000000) == 0)
        {
LABEL_55:
          if ((v42 & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_68;
        }
      }

      else if ((v44 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      operator delete(v43);
      if ((v42 & 0x80000000) == 0)
      {
LABEL_56:
        if (v40 < 0)
        {
          goto LABEL_69;
        }

        goto LABEL_57;
      }

LABEL_68:
      operator delete(v41);
      if (v40 < 0)
      {
LABEL_69:
        operator delete(v39);
        if ((v38 & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_70;
      }

LABEL_57:
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

LABEL_70:
      operator delete(v37[0]);
LABEL_58:
      sub_68ED40((*a2 + 7808 * v6[19]), v53);
      sub_23914(v47, v6);
      sub_7E6F6C(v50, v6 + 19);
      sub_7E69A8(v66, v67, &v65, 0x2E8BA2E8BA2E8BA3 * ((v67 - v66) >> 4));
      sub_7E494C(&v66, v67 - 22);
      if (v63)
      {
        *(&v63 + 1) = v63;
        operator delete(v63);
      }

      if (v62 < 0)
      {
        operator delete(__p);
        if ((v60 & 0x80000000) == 0)
        {
LABEL_62:
          if ((v58 & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_73;
        }
      }

      else if ((v60 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      operator delete(v59);
      if ((v58 & 0x80000000) == 0)
      {
LABEL_63:
        if ((v56 & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_74;
      }

LABEL_73:
      operator delete(v57);
      if ((v56 & 0x80000000) == 0)
      {
LABEL_64:
        if (v54 < 0)
        {
          goto LABEL_75;
        }

        goto LABEL_25;
      }

LABEL_74:
      operator delete(v55);
      if (v54 < 0)
      {
LABEL_75:
        operator delete(v53[0]);
      }

LABEL_25:
      v6 = v66;
      if (v66 == v67)
      {
        v14 = v51[1];
        goto LABEL_77;
      }
    }
  }

  v14 = 0;
LABEL_77:
  v24 = a2[1];
  v25 = 0x4FBCDA3AC10C9715 * ((v24 - *a2) >> 7);
  if (v14 != v25 && v24 != *a2)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      sub_7DEE84(a1, a3, v28, (*a2 + v27));
      v28 = (v28 + 1);
      v27 += 7808;
    }

    while (v25 != v28);
  }

  v29 = v48[0];
  if (v48[0])
  {
    do
    {
      v34 = *v29;
      if (*(v29 + 39) < 0)
      {
        operator delete(v29[2]);
      }

      operator delete(v29);
      v29 = v34;
    }

    while (v34);
  }

  v30 = v47[0];
  v47[0] = 0;
  if (v30)
  {
    operator delete(v30);
  }

  v31 = v51[0];
  if (v51[0])
  {
    do
    {
      v32 = *v31;
      operator delete(v31);
      v31 = v32;
    }

    while (v32);
  }

  v33 = v50[0];
  v50[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  if (v66)
  {
    sub_7E494C(&v66, v66);
    operator delete(v66);
  }
}

void sub_7DD58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62)
{
  if (__p)
  {
    a62 = __p;
    operator delete(__p);
  }

  sub_3E5388(&a42);
  if (a9)
  {
    operator delete(a9);
  }

  sub_3E5388(&a12);
  sub_23D9C(&a31);
  sub_11BD8(&a37);
  sub_7E4910((v62 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_7DD654(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  if (*a3 == v7)
  {
    goto LABEL_85;
  }

  v8 = v6 + 976;
  do
  {
    result = sub_68EC38(v6, *(a1 + 2));
    v6 += 976;
    if (result)
    {
      v10 = v8 == v7;
    }

    else
    {
      v10 = 1;
    }

    v8 += 976;
  }

  while (!v10);
  if (result)
  {
LABEL_85:
    result = sub_68EC38(a2, *(a1 + 2));
    if (result)
    {
      v65 = 0u;
      v66 = 0u;
      v67 = 1065353216;
      sub_7DCE54(a1, a3, &v65);
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v11 = sub_68C454(a2, 0);
      v12 = *a3;
      v13 = a3[1];
      if (*a3 != v13)
      {
        do
        {
          sub_68EE8C(v12);
          v14 = sub_68C454(v12, 0);
          sub_7DDBA0(a1, v11, v14, &v62);
          v12 += 976;
        }

        while (v12 != v13);
      }

      v15 = v66;
      if (v66)
      {
        while (1)
        {
          sub_5139E8(v52, (v15 + 16));
          v16 = *(v15 + 168);
          if (v16 >= 0xAAAAAAAAAAAAAAABLL * ((v63 - v62) >> 4))
          {
            goto LABEL_47;
          }

          v17 = sub_7DDE90(&v62, *(v15 + 168));
          if (!sub_138B0((v17 + 8), v52))
          {
            sub_5139E8(v42, v52);
            v21 = sub_7DDE90(&v62, v16);
            v22 = sub_7DE0AC(a1, v11, v42, *v21);
            if (v51 < 0)
            {
              operator delete(__p);
              if (v49 < 0)
              {
                goto LABEL_40;
              }

LABEL_21:
              if ((v47 & 0x80000000) == 0)
              {
                goto LABEL_22;
              }

LABEL_41:
              operator delete(v46);
              if (v45 < 0)
              {
                goto LABEL_42;
              }

LABEL_23:
              if ((v43 & 0x80000000) == 0)
              {
                goto LABEL_24;
              }

LABEL_43:
              operator delete(v42[0]);
              v32 = *(v15 + 184);
              v24 = v32 - v22;
              if (v24 >= v32 * 0.5)
              {
LABEL_46:
                *(v15 + 184) = v24;
LABEL_47:
                v25 = *v15;
                if ((v61 & 0x80000000) == 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_65;
              }
            }

            else
            {
              if ((v49 & 0x80000000) == 0)
              {
                goto LABEL_21;
              }

LABEL_40:
              operator delete(v48);
              if (v47 < 0)
              {
                goto LABEL_41;
              }

LABEL_22:
              if ((v45 & 0x80000000) == 0)
              {
                goto LABEL_23;
              }

LABEL_42:
              operator delete(v44);
              if (v43 < 0)
              {
                goto LABEL_43;
              }

LABEL_24:
              v23 = *(v15 + 184);
              v24 = v23 - v22;
              if (v24 >= v23 * 0.5)
              {
                goto LABEL_46;
              }
            }

            v33 = *(v15 + 176);
            if (v33 > 0.0)
            {
              *(v15 + 176) = -v33;
            }

            goto LABEL_46;
          }

          v18 = *(&v65 + 1);
          v19 = *(v15 + 8);
          v20 = vcnt_s8(*(&v65 + 8));
          v20.i16[0] = vaddlv_u8(v20);
          if (v20.u32[0] > 1uLL)
          {
            if (v19 >= *(&v65 + 1))
            {
              v19 %= *(&v65 + 1);
            }
          }

          else
          {
            v19 &= *(&v65 + 1) - 1;
          }

          v25 = *v15;
          v26 = v65;
          v27 = *(v65 + 8 * v19);
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27 != v15);
          if (v28 != &v66)
          {
            v29 = v28[1];
            if (v20.u32[0] > 1uLL)
            {
              if (v29 >= *(&v65 + 1))
              {
                v29 %= *(&v65 + 1);
              }
            }

            else
            {
              v29 &= *(&v65 + 1) - 1;
            }

            v30 = *v15;
            if (v29 == v19)
            {
              goto LABEL_57;
            }
          }

          if (!v25)
          {
            break;
          }

          v31 = *(v25 + 8);
          if (v20.u32[0] > 1uLL)
          {
            if (v31 >= *(&v65 + 1))
            {
              v31 %= *(&v65 + 1);
            }
          }

          else
          {
            v31 &= *(&v65 + 1) - 1;
          }

          v30 = *v15;
          if (v31 != v19)
          {
            break;
          }

LABEL_58:
          v34 = *(v30 + 8);
          if (v20.u32[0] > 1uLL)
          {
            if (v34 >= v18)
            {
              v34 %= v18;
            }
          }

          else
          {
            v34 &= v18 - 1;
          }

          if (v34 != v19)
          {
            *(v26 + 8 * v34) = v28;
            v30 = *v15;
          }

LABEL_64:
          *v28 = v30;
          *v15 = 0;
          --*(&v66 + 1);
          v68[0] = v15;
          v68[1] = &v65;
          v69 = 1;
          v70[0] = 0;
          *(v70 + 3) = 0;
          sub_7E57A0(v68);
          if ((v61 & 0x80000000) == 0)
          {
LABEL_48:
            if ((v59 & 0x80000000) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_66;
          }

LABEL_65:
          operator delete(v60);
          if ((v59 & 0x80000000) == 0)
          {
LABEL_49:
            if ((v57 & 0x80000000) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_67;
          }

LABEL_66:
          operator delete(v58);
          if ((v57 & 0x80000000) == 0)
          {
LABEL_50:
            if ((v55 & 0x80000000) == 0)
            {
              goto LABEL_51;
            }

            goto LABEL_68;
          }

LABEL_67:
          operator delete(v56);
          if ((v55 & 0x80000000) == 0)
          {
LABEL_51:
            if (v53 < 0)
            {
              goto LABEL_69;
            }

            goto LABEL_14;
          }

LABEL_68:
          operator delete(v54);
          if (v53 < 0)
          {
LABEL_69:
            operator delete(v52[0]);
          }

LABEL_14:
          v15 = v25;
          if (!v25)
          {
            goto LABEL_70;
          }
        }

        *(v65 + 8 * v19) = 0;
        v30 = *v15;
LABEL_57:
        if (!v30)
        {
          goto LABEL_64;
        }

        goto LABEL_58;
      }

LABEL_70:
      sub_7DCF94(a1, a3, &v65);
      v35 = v62;
      if (v62)
      {
        v36 = v63;
        v37 = v62;
        if (v63 != v62)
        {
          do
          {
            v38 = *(v36 - 24);
            if (v38)
            {
              do
              {
                v40 = *v38;
                if (*(v38 + 39) < 0)
                {
                  v41 = v38;
                  operator delete(v38[2]);
                  v38 = v41;
                }

                operator delete(v38);
                v38 = v40;
              }

              while (v40);
            }

            v39 = *(v36 - 40);
            *(v36 - 40) = 0;
            if (v39)
            {
              operator delete(v39);
            }

            v36 -= 48;
          }

          while (v36 != v35);
          v37 = v62;
        }

        v63 = v35;
        operator delete(v37);
      }

      return sub_7DCC34(&v65);
    }
  }

  return result;
}

void sub_7DDB40(_Unwind_Exception *a1)
{
  sub_7DE220((v1 - 200));
  sub_7DCC34(v1 - 176);
  _Unwind_Resume(a1);
}

void sub_7DDBA0(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = a3[148];
  v8 = a3[147];
  while (v7 != v8)
  {
    v7 -= 176;
    sub_5C17B4(v7);
  }

  a3[148] = v8;
  *v38 = 0u;
  v39 = 0u;
  v40 = 1065353216;
  v9 = sub_4D1DC0(a3);
  v10 = sub_4D1DC0(a2);
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v13 = sub_4D1F50(a2, v12);
      v14 = *(sub_4D1F50(a3, v12) + 32);
      if (__PAIR64__(*(v13 + 36), *(v13 + 32)) != __PAIR64__(WORD2(v14), v14) || *(v13 + 38) != BYTE6(v14))
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_29;
      }
    }

    v15 = v12 - 1;
    if (!v12)
    {
      v15 = 0;
    }

    v37 = v15;
    v16 = a3[156];
    for (i = a3[157]; v16 != i; v16 += 160)
    {
      if (*(v16 + 152) > v37)
      {
        break;
      }

      sub_23914(v38, v16);
    }

    sub_7DF588(&v37, v38, &v31);
    v18 = a4[1];
    if (v18 >= a4[2])
    {
      sub_7E4A14(a4, &v31);
      v21 = v34;
      a4[1] = v24;
      if (!v21)
      {
LABEL_27:
        v25 = __p;
        __p = 0;
        if (v25)
        {
          operator delete(v25);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v19 = __p;
      __p = 0;
      *v18 = v31;
      *(v18 + 8) = v19;
      *(v18 + 16) = v33;
      v33 = 0;
      v21 = v34;
      v20 = v35;
      *(v18 + 24) = v34;
      *(v18 + 32) = v20;
      *(v18 + 40) = v36;
      if (v20)
      {
        v22 = *(v21 + 1);
        v23 = *(v18 + 16);
        if ((v23 & (v23 - 1)) != 0)
        {
          if (v22 >= v23)
          {
            v22 %= v23;
          }
        }

        else
        {
          v22 &= v23 - 1;
        }

        v21 = 0;
        v19[v22] = v18 + 24;
        v34 = 0;
        v35 = 0;
      }

      a4[1] = v18 + 48;
      if (!v21)
      {
        goto LABEL_27;
      }
    }

    do
    {
      v30 = *v21;
      if (v21[39] < 0)
      {
        operator delete(*(v21 + 2));
      }

      operator delete(v21);
      v21 = v30;
    }

    while (v30);
    goto LABEL_27;
  }

LABEL_29:
  v26 = v39;
  if (v39)
  {
    do
    {
      v28 = *v26;
      if (*(v26 + 39) < 0)
      {
        v29 = v26;
        operator delete(v26[2]);
        v26 = v29;
      }

      operator delete(v26);
      v26 = v28;
    }

    while (v28);
  }

  v27 = v38[0];
  v38[0] = 0;
  if (v27)
  {
    operator delete(v27);
  }
}

void sub_7DDE10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_7DF6E0(va);
  sub_23D9C(va1);
  _Unwind_Resume(a1);
}

void sub_7DDE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_7DDE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_7DDE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_7DDE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

void sub_7DDE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23D9C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_7DDE90(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4));
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

  return *a1 + 48 * a2;
}

void sub_7DDFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_7DE0AC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v4 = a2[157] - a2[156];
  if (v4)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 5);
    while (1)
    {
      v11 = sub_50EFDC(a2 + 156, v9);
      if (!sub_734C10(v11))
      {
        goto LABEL_3;
      }

      v12 = *(v11 + 23);
      if (v12 >= 0)
      {
        v13 = *(v11 + 23);
      }

      else
      {
        v13 = *(v11 + 8);
      }

      v14 = *(a3 + 23);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a3 + 8);
      }

      if (v13 != v14)
      {
        goto LABEL_3;
      }

      v16 = v12 >= 0 ? v11 : *v11;
      v17 = v15 >= 0 ? a3 : *a3;
      if (memcmp(v16, v17, v13))
      {
        goto LABEL_3;
      }

      if (*(v11 + 152) <= a4)
      {
        v18 = a4;
      }

      else
      {
        v18 = *(v11 + 152);
      }

      if (v9 >= -1 - 0x3333333333333333 * ((a2[157] - a2[156]) >> 5))
      {
        v19 = sub_4D1DC0(a2);
        if (v19 >= a4)
        {
LABEL_25:
          if (v18 <= v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = v18;
          }

          if (v18 < v19)
          {
            do
            {
              v8 += sub_4D23F8(a2, v18++, v20);
            }

            while (v21 != v18);
          }
        }
      }

      else
      {
        v19 = *(sub_50EFDC(a2 + 156, v9 + 1) + 152);
        if (v19 >= a4)
        {
          goto LABEL_25;
        }
      }

LABEL_3:
      if (++v9 == v10)
      {
        return v8;
      }
    }
  }

  return 0;
}

void **sub_7DE220(void **a1)
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
          do
          {
            v7 = *v5;
            if (*(v5 + 39) < 0)
            {
              operator delete(v5[2]);
            }

            operator delete(v5);
            v5 = v7;
          }

          while (v7);
        }

        v6 = *(v3 - 5);
        *(v3 - 5) = 0;
        if (v6)
        {
          operator delete(v6);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_7DE2CC(_BYTE *a1, void *a2, uint64_t a3, void **a4)
{
  if (sub_68EC38(a4, a1[2]))
  {
    v7 = nullsub_1(a4);
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
      do
      {
        sub_60E420(v8, a2);
        v8 += 12656;
      }

      while (v8 != v9);
    }

    v10 = nullsub_1(a4);
    v11 = *v10;
    v12 = *(v10 + 8);
    if (*v10 != v12)
    {
      do
      {
        sub_60E82C(v11, a2);
        v11 += 1582;
      }

      while (v11 != v12);
    }

    __p = 0;
    v25 = 0;
    v26 = 0;
    v25 = sub_7E43F0(&__p, a4);
    sub_7DCD04(a1, &__p);
    v13 = sub_58BBC(__p);
    sub_68ECA4(a4, v13);
    v14 = nullsub_1(__p);
    v15 = v14[1] - *v14;
    if (v15)
    {
      v16 = 0;
      v17 = 0x5DDB1ADCB91F64A7 * (v15 >> 4);
      do
      {
        v18 = sub_68C454(__p, v16);
        v19 = sub_68C454(a4, v16);
        if (v19 != v18)
        {
          sub_601A50((v19 + 1152), v18[144], v18[145], 0x2E8BA2E8BA2E8BA3 * ((v18[145] - v18[144]) >> 4));
        }

        v20 = sub_68C454(a4, v16);
        if (v20 != v18)
        {
          sub_601A50((v20 + 1176), v18[147], v18[148], 0x2E8BA2E8BA2E8BA3 * ((v18[148] - v18[147]) >> 4));
        }

        ++v16;
      }

      while (v17 != v16);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v25;
      v23 = __p;
      if (v25 != __p)
      {
        do
        {
          v22 = sub_5C1158(v22 - 7808);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v25 = v21;
      operator delete(v23);
    }
  }
}