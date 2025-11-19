void sub_19D367C1C(void *a1)
{
  v1 = sub_19D367B20(a1);

  operator delete(v1);
}

uint64_t sub_19D367C44(uint64_t a1, uint64_t a2, uint64_t a3, void *__src)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v30 = *(a2 + 16);
  }

  sub_19D388468(a1, __p, a3, __src);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10B9890;
  v27 = a1 + 1040;
  v28 = a1 + 1064;
  v25 = a1 + 1112;
  v26 = a1 + 1088;
  v23 = a1 + 1136;
  v24 = a1 + 1160;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0;
  v7 = __src[7];
  if (v7 <= 1)
  {
    v7 = 1;
  }

  *(a1 + 1320) = v7;
  v8 = __src[9];
  if (!v8)
  {
    v8 = 2;
  }

  *(a1 + 1328) = v8;
  v9 = __src[8];
  if (v9 <= 1)
  {
    v9 = 1;
  }

  *(a1 + 1336) = v9;
  v10 = __src[10];
  if (v10 <= 1)
  {
    v10 = 1;
  }

  *(a1 + 1344) = v10;
  v11 = __src[11];
  if (!v11)
  {
    v11 = 2;
  }

  *(a1 + 1352) = v11;
  v12 = *(__src + 32);
  LODWORD(__srca) = 1;
  v32 = vdupq_n_s64(1uLL);
  v34 = 0;
  v35 = 0;
  v33 = v12;
  sub_19D2AD9C0(a1 + 16, &__srca, &v36);
  v13 = *(__src + 64);
  v14 = (*(*a1 + 240))(a1);
  LODWORD(__srca) = 9;
  v32 = vdupq_n_s64(1uLL);
  v34 = 0;
  v35 = 0;
  v33 = v13 << v14;
  sub_19D2AD9C0(a1 + 40, &__srca, &v36);
  v15 = *(__src + 32);
  v16 = *(__src + 64);
  __srca = __src[56];
  sub_19D2C8478(a1 + 1016, &__srca);
  __srca = __src[57];
  sub_19D2C8478(v28, &__srca);
  __srca = __src[72];
  sub_19D2C7DFC(v27, &__srca);
  __srca = __src[73];
  sub_19D2C7DFC(v26, &__srca);
  __srca = __src[58];
  sub_19D2C8478(v25, &__srca);
  __srca = __src[59];
  sub_19D2C8478(v24, &__srca);
  __srca = __src[74];
  sub_19D2C7DFC(v23, &__srca);
  __srca = __src[75];
  sub_19D2C7DFC(a1 + 1184, &__srca);
  v17 = v16 * v15;
  __srca = __src[56] + v17;
  sub_19D2C8478(a1 + 1016, &__srca);
  v18 = (v16 * v16);
  __srca = __src[57] + v18;
  sub_19D2C8478(v28, &__srca);
  __srca = __src[72] + 4 * v16;
  sub_19D2C7DFC(v27, &__srca);
  __srca = __src[73] + 4 * v16;
  sub_19D2C7DFC(v26, &__srca);
  __srca = __src[58] + v17;
  sub_19D2C8478(v25, &__srca);
  __srca = __src[59] + v18;
  sub_19D2C8478(v24, &__srca);
  __srca = __src[74] + 4 * v16;
  sub_19D2C7DFC(v23, &__srca);
  __srca = __src[75] + 4 * v16;
  sub_19D2C7DFC(a1 + 1184, &__srca);
  __srca = __src[56] + 2 * v17;
  sub_19D2C8478(a1 + 1016, &__srca);
  __srca = __src[57] + 2 * v18;
  sub_19D2C8478(v28, &__srca);
  __srca = __src[72] + 8 * v16;
  sub_19D2C7DFC(v27, &__srca);
  __srca = __src[73] + 8 * v16;
  sub_19D2C7DFC(v26, &__srca);
  __srca = __src[58] + 2 * v17;
  sub_19D2C8478(v25, &__srca);
  __srca = __src[59] + 2 * v18;
  sub_19D2C8478(v24, &__srca);
  __srca = __src[74] + 8 * v16;
  sub_19D2C7DFC(v23, &__srca);
  __srca = __src[75] + 8 * v16;
  sub_19D2C7DFC(a1 + 1184, &__srca);
  v17 *= 3;
  __srca = __src[56] + v17;
  sub_19D2C8478(a1 + 1016, &__srca);
  __srca = __src[57] + 3 * v18;
  sub_19D2C8478(v28, &__srca);
  __srca = __src[72] + 12 * v16;
  sub_19D2C7DFC(v27, &__srca);
  __srca = __src[73] + 12 * v16;
  sub_19D2C7DFC(v26, &__srca);
  __srca = __src[58] + v17;
  sub_19D2C8478(v25, &__srca);
  __srca = __src[59] + 3 * v18;
  sub_19D2C8478(v24, &__srca);
  __srca = __src[74] + 12 * v16;
  sub_19D2C7DFC(v23, &__srca);
  __srca = __src[75] + 12 * v16;
  sub_19D2C7DFC(a1 + 1184, &__srca);
  v19 = __src[61];
  __srca = __src[60];
  v32.i64[0] = __srca + v16;
  v20 = 2 * v16;
  v32.i64[1] = __srca + v20;
  sub_19D36A350((a1 + 1208), &__srca, &v33, 3uLL);
  __srca = v19;
  v32.i64[0] = v19 + v16;
  v32.i64[1] = v19 + v20;
  sub_19D36A350((a1 + 1232), &__srca, &v33, 3uLL);
  *(a1 + 1256) = __src[62];
  *(a1 + 1264) = __src[63];
  v21 = *(__src + 80);
  if (v21 <= 0)
  {
    v21 = *(__src + 64);
  }

  *(a1 + 1272) = v21;
  return a1;
}

void sub_19D368210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, void **a11, void **a12, void **a13, void **a14, void **a15, void **a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v26 = *a9;
  if (*a9)
  {
    v22[155] = v26;
    operator delete(v26);
    v27 = *a10;
    if (!*a10)
    {
LABEL_3:
      v28 = *v24;
      if (!*v24)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v27 = *a10;
    if (!*a10)
    {
      goto LABEL_3;
    }
  }

  v22[152] = v27;
  operator delete(v27);
  v28 = *v24;
  if (!*v24)
  {
LABEL_4:
    v29 = *a12;
    if (!*a12)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v22[149] = v28;
  operator delete(v28);
  v29 = *a12;
  if (!*a12)
  {
LABEL_5:
    v30 = *a11;
    if (!*a11)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v22[146] = v29;
  operator delete(v29);
  v30 = *a11;
  if (!*a11)
  {
LABEL_6:
    v31 = *a13;
    if (!*a13)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v22[143] = v30;
  operator delete(v30);
  v31 = *a13;
  if (!*a13)
  {
LABEL_7:
    v32 = *a14;
    if (!*a14)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v22[140] = v31;
  operator delete(v31);
  v32 = *a14;
  if (!*a14)
  {
LABEL_8:
    v33 = *a16;
    if (!*a16)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v22[137] = v32;
  operator delete(v32);
  v33 = *a16;
  if (!*a16)
  {
LABEL_9:
    v34 = *a15;
    if (!*a15)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v22[134] = v33;
  operator delete(v33);
  v34 = *a15;
  if (!*a15)
  {
LABEL_10:
    v35 = *v23;
    if (!*v23)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v22[131] = v34;
  operator delete(v34);
  v35 = *v23;
  if (!*v23)
  {
LABEL_11:
    sub_19D388648(v22);
    _Unwind_Resume(a1);
  }

LABEL_21:
  v22[128] = v35;
  operator delete(v35);
  sub_19D388648(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_19D368434(void *a1, uint64_t a2)
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
      (*(**v4 + 8))(*v4);
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
  if ((*(*a1 + 104))(a1) == 9 || (*(*a1 + 104))(a1) == 10)
  {
    v10 = *(*a2 + 144);
    v11 = a2;
    v12 = a1;
  }

  else
  {
    v10 = *(*a2 + 136);
    v11 = a2;
    v12 = a1;
  }

  return v10(v11, v12);
}

void sub_19D3685E0(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 280) = a3;
  v40 = *sub_19D387A2C(a1, 1);
  v39 = *sub_19D387D50(a1, 9);
  v6 = a1 + 232;
  if (*(a1 + 240) != a1 + 232)
  {
    sub_19D43026C();
  }

  v7 = (*(*a1 + 56))(a1, 1) * a3;
  v42 = v7 / (*(*a1 + 88))(a1);
  __p = (*(*a1 + 64))(a1, 9);
  v8 = (*(*a1 + 88))(a1);
  v41 = __p * a3 / v8;
  if (a2 >= 1)
  {
    v9 = 0;
    v11 = *(a1 + 160);
    v10 = *(a1 + 168);
    if (v11 != v10)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v12 = sub_19D387D50(a1, 9);
      sub_19D366718(a1, *v12);
      v13 = sub_19D387A2C(a1, 1);
      *v13 += 4 * v42;
      v14 = sub_19D387D50(a1, 9);
      *v14 += 4 * v41;
      if (++v9 == a2)
      {
        break;
      }

      v11 = *(a1 + 160);
      v10 = *(a1 + 168);
      while (v11 != v10)
      {
LABEL_7:
        v15 = *v11++;
        (*(*v15 + 16))(v15, a3);
      }
    }
  }

  if ((*(*a1 + 240))(a1))
  {
    v16 = sub_19D387A2C(a1, 1);
    *v16 -= 4 * v42;
    v17 = sub_19D387D50(a1, 9);
    *v17 -= 4 * v41;
    v18 = sub_19D387D50(a1, 9);
    *v18 += 4 * (__p / v8 / 2);
    v37 = *(a1 + 1288);
    *(a1 + 1288) = *(a1 + 1304);
    *(a1 + 1296) = *(a1 + 1312);
    v19 = *(a1 + 1016);
    v20 = *(a1 + 1024);
    if (v20 != v19)
    {
      if (((v20 - v19) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v21 = *(a1 + 1040);
    v22 = *(a1 + 1048);
    if (v22 != v21)
    {
      if (((v22 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v23 = *(a1 + 1064);
    v24 = *(a1 + 1072);
    if (v24 != v23)
    {
      if (((v24 - v23) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v25 = *(a1 + 1088);
    v26 = *(a1 + 1096);
    if (v26 != v25)
    {
      if (((v26 - v25) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v27 = *(a1 + 1208);
    v28 = *(a1 + 1216);
    if (v28 != v27)
    {
      if (((v28 - v27) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v36 = *(a1 + 1256);
    sub_19D36A570((a1 + 1016), *(a1 + 1112), *(a1 + 1120), (*(a1 + 1120) - *(a1 + 1112)) >> 3);
    sub_19D36A1F4((a1 + 1040), *(a1 + 1136), *(a1 + 1144), (*(a1 + 1144) - *(a1 + 1136)) >> 3);
    sub_19D36A570((a1 + 1064), *(a1 + 1160), *(a1 + 1168), (*(a1 + 1168) - *(a1 + 1160)) >> 3);
    sub_19D36A1F4((a1 + 1088), *(a1 + 1184), *(a1 + 1192), (*(a1 + 1192) - *(a1 + 1184)) >> 3);
    sub_19D36A570((a1 + 1208), *(a1 + 1232), *(a1 + 1240), (*(a1 + 1240) - *(a1 + 1232)) >> 3);
    *(a1 + 1256) = *(a1 + 1264);
    if (a2 >= 1)
    {
      v29 = 0;
      do
      {
        v30 = *(a1 + 160);
        for (i = *(a1 + 168); v30 != i; ++v30)
        {
          (*(**v30 + 16))(*v30, a3);
        }

        v32 = sub_19D387D50(a1, 9);
        sub_19D366718(a1, *v32);
        v33 = sub_19D387A2C(a1, 1);
        *v33 -= 4 * v42;
        v34 = sub_19D387D50(a1, 9);
        *v34 -= 4 * v41;
        ++v29;
      }

      while (v29 != a2);
    }

    *(a1 + 1288) = v37;
    sub_19D36A570((a1 + 1016), 0, 0, 0);
    sub_19D36A1F4((a1 + 1040), 0, 0, 0);
    sub_19D36A570((a1 + 1064), 0, 0, 0);
    sub_19D36A1F4((a1 + 1088), 0, 0, 0);
    sub_19D36A570((a1 + 1208), 0, 0, 0);
    *(a1 + 1256) = v36;
  }

  for (j = *(a1 + 240); j != v6; j = *(j + 8))
  {
    sub_19D430284(*(a1 + 8), *(j + 16) * a3, *(j + 24));
    *(j + 24) = 0;
  }

  *sub_19D387A2C(a1, 1) = v40;
  *sub_19D387D50(a1, 9) = v39;

  sub_19D388804(a1);
}

void sub_19D368D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (v24)
  {
    operator delete(v24);
    if (!v23)
    {
LABEL_3:
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v23)
  {
    goto LABEL_3;
  }

  operator delete(v23);
  if (!v22)
  {
LABEL_4:
    if (!__p)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v22);
  if (!__p)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_19D368DDC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(*a1 + 80))(a1, 9);
  v7 = (*(*a1 + 88))(a1) * v6;
  if ((*(*a1 + 104))(a1) == 9 || (*(*a1 + 104))(a1) == 10)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(a1 + 1272);
    v8 = (*(*a1 + 88))(a1) * v9;
  }

  v10 = v8 + v7;
  (*(*a1 + 240))(a1);
  __p = 0;
  v34 = 0;
  v35 = 0;
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v11 = 0;
  v12 = *(a1 + 1288);
  v13 = (*(*a1 + 80))(a1, 9);
  v14 = (*(*a1 + 80))(a1, 9);
  v15 = (*(*a1 + 88))(a1);
  memmove(0, (v12 + 4 * v13 * a3), v15 * v14);
  if ((*(*a1 + 240))(a1))
  {
    v16 = (*(*a1 + 80))(a1, 9);
    v17 = (*(*a1 + 88))(a1);
    v18 = *(a1 + 1304);
    v19 = (*(*a1 + 80))(a1, 9);
    v20 = (*(*a1 + 80))(a1, 9);
    v21 = (*(*a1 + 88))(a1);
    v11 = (v17 * v16);
    memmove(v11, (v18 + 4 * v19 * a3), v21 * v20);
  }

  if ((*(*a1 + 104))(a1) != 9 && (*(*a1 + 104))(a1) != 10)
  {
    v22 = (*(*a1 + 80))(a1, 9);
    v23 = (*(*a1 + 88))(a1);
    v24 = *(a1 + 1296);
    v25 = *(a1 + 1272);
    v26 = (*(*a1 + 88))(a1);
    v27 = v11 + v23 * v22;
    memmove(v27, (v24 + 4 * v25 * a3), v26 * v25);
    if ((*(*a1 + 240))(a1))
    {
      v28 = *(a1 + 1272);
      v29 = (*(*a1 + 88))(a1);
      v30 = *(a1 + 1312);
      v31 = *(a1 + 1272);
      v32 = (*(*a1 + 88))(a1);
      memmove(&v27[v28 * v29], (v30 + 4 * v31 * a3), v32 * v31);
    }
  }

  sub_19D37D9D8(a2 + 16, (a1 + 256), &__p);
  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }
}

void sub_19D369348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D369364(uint64_t a1, const __CFArray *a2, int a3)
{
  v6 = (*(*a1 + 80))(a1, 9);
  v7 = (*(*a1 + 88))(a1) * v6;
  if ((*(*a1 + 104))(a1) == 9 || (*(*a1 + 104))(a1) == 10)
  {
    v8 = 0;
  }

  else
  {
    v9 = *(a1 + 1272);
    v8 = (*(*a1 + 88))(a1) * v9;
  }

  v10 = (v8 + v7) << (*(*a1 + 240))(a1);
  v11 = *(a1 + 280);
  v12 = *(a1 + 1280);
  if (v11 != a3)
  {
    if (v12)
    {
      sub_19D430284(*(a1 + 8), v10 * v11, v12);
    }

LABEL_10:
    sub_19D43026C();
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    if (a3 >= 1)
    {
      v13 = 0;
      do
      {
        v14 = *(a1 + 1288);
        v15 = (*(*a1 + 80))(a1, 9);
        v16 = (v14 + (v15 * v13 * (*(*a1 + 88))(a1)));
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v13);
        v18 = sub_19D37D73C(ValueAtIndex + 16, (a1 + 256));
        v19 = (*(*a1 + 80))(a1, 9);
        v20 = (*(*a1 + 88))(a1);
        memmove(v16, v18, v20 * v19);
        if ((*(*a1 + 240))(a1))
        {
          v21 = (*(*a1 + 80))(a1, 9);
          v16 += (v21 * a3 * (*(*a1 + 88))(a1));
          v22 = (*(*a1 + 80))(a1, 9);
          v18 = (v18 + ((*(*a1 + 88))(a1) * v22));
          v23 = (*(*a1 + 80))(a1, 9);
          v24 = (*(*a1 + 88))(a1);
          memmove(v16, v18, v24 * v23);
        }

        if ((*(*a1 + 104))(a1) != 9 && (*(*a1 + 104))(a1) != 10)
        {
          v25 = (*(*a1 + 80))(a1, 9);
          v26 = &v16[(v25 * a3 * (*(*a1 + 88))(a1))];
          v27 = (*(*a1 + 80))(a1, 9);
          v28 = v18 + ((*(*a1 + 88))(a1) * v27);
          v29 = *(a1 + 1272);
          v30 = (*(*a1 + 88))(a1);
          memmove(v26, v28, v29 * v30);
          if ((*(*a1 + 240))(a1))
          {
            v31 = *(a1 + 1272);
            v32 = &v26[(v31 * a3 * (*(*a1 + 88))(a1))];
            v33 = *(a1 + 1272);
            v34 = &v28[v33 * (*(*a1 + 88))(a1)];
            v35 = *(a1 + 1272);
            v36 = (*(*a1 + 88))(a1);
            memmove(v32, v34, v35 * v36);
          }
        }

        ++v13;
      }

      while (a3 != v13);
    }
  }

  else
  {
    v37 = *(a1 + 1280);

    bzero(v37, v10 * a3);
  }
}

void sub_19D369B74(uint64_t a1)
{
  sub_19D388804(a1);
  v2 = (*(*a1 + 80))(a1, 9);
  v3 = (*(*a1 + 88))(a1);
  if ((*(*a1 + 104))(a1) == 9 || (*(*a1 + 104))(a1) == 10)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 1272);
    v4 = (*(*a1 + 88))(a1) * v5;
  }

  v6 = v4 + v3 * v2;
  v7 = (*(*a1 + 240))(a1);
  sub_19D430284(*(a1 + 8), (v6 << v7) * *(a1 + 280), *(a1 + 1280));
  *(a1 + 1280) = 0;
}

uint64_t sub_19D369CDC(uint64_t a1)
{
  result = sub_19D3888A0(a1);
  if (*(a1 + 1280))
  {
    v3 = result;
    v4 = (*(*a1 + 80))(a1, 9);
    v5 = (*(*a1 + 88))(a1) * v4;
    if ((*(*a1 + 104))(a1) == 9 || (*(*a1 + 104))(a1) == 10)
    {
      v6 = 0;
    }

    else
    {
      v7 = *(a1 + 1272);
      v6 = (*(*a1 + 88))(a1) * v7;
    }

    return (v3 + ((v6 + v5) << (*(*a1 + 240))(a1)) * *(a1 + 280));
  }

  return result;
}

int64x2_t sub_19D369E40(int *a1, int a2)
{
  v4 = a1[142];
  v5 = (*(*a1 + 240))(a1);
  v6 = (*(*a1 + 224))(a1);
  v7 = (*(*a1 + 216))(a1, 1);
  v8 = *(a1 + 6);
  if (!v8)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v9 = v8;
      v10 = *(v8 + 8);
      if (v10 <= a2)
      {
        break;
      }

      v8 = *v9;
      if (!*v9)
      {
        goto LABEL_8;
      }
    }

    if (v10 >= a2)
    {
      break;
    }

    v8 = v9[1];
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  result = vdupq_n_s64(1uLL);
  *(v9 + 5) = result;
  v9[7] = v4 << v5;
  v9[8] = v6;
  v9[9] = v7;
  return result;
}

void *sub_19D369FD4(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v11 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }
    }

    sub_19D2AE2B4();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 3)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 8;
    if (v21 >= 0x38)
    {
      v18 = v17;
      if ((&v8[v17] - &__src[v14]) >= 0x20)
      {
        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 8;
      *v18 = v28;
      v18 += 8;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = &v8[v19];
LABEL_27:
  v6[1] = v20;
  return result;
}

char *sub_19D36A1F4(char **a1, char *a2, uint64_t a3, unint64_t a4)
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

    sub_19D2AE2B4();
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

void *sub_19D36A350(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v11 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }
    }

    sub_19D2AE2B4();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 3)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 8;
    if (v21 >= 0x38)
    {
      v18 = v17;
      if ((&v8[v17] - &__src[v14]) >= 0x20)
      {
        v22 = (v21 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 4;
        }

        while (v26);
        if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 8;
      *v18 = v28;
      v18 += 8;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = &v8[v19];
LABEL_27:
  v6[1] = v20;
  return result;
}

char *sub_19D36A570(char **a1, char *a2, uint64_t a3, unint64_t a4)
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

    sub_19D2AE2B4();
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

void sub_19D36A7E4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[7] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_19D36A914(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[9] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_19D36AAD4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[9] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_19D36ABC4(void *result)
{
  *result = &unk_1F10B9AB8;
  v1 = result[6];
  if (v1)
  {
    result[7] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_19D36AC1C(void *a1)
{
  *a1 = &unk_1F10B9AB8;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void sub_19D36AC80(uint64_t a1, int a2)
{
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }
}

void *sub_19D36B56C(void *result)
{
  *result = &unk_1F10BC4A0;
  v1 = result[8];
  if (v1)
  {
    result[9] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_19D36B5C4(void *a1)
{
  *a1 = &unk_1F10BC4A0;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_19D36B630(uint64_t result, int a2)
{
  v2 = **(result + 16);
  v3 = (**(result + 24) + 4 * *(result + 52));
  v4 = **(result + 32);
  if (*(result + 45) == 1)
  {
    *(result + 44) = 1;
    *(result + 40) = *v3;
  }

  if (a2 >= 1)
  {
    v5 = *(result + 76);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = v2 + 4 * *(result + 48);
      v8 = v4 + 4 * *(result + 56);
      v9 = 4 * *(result + 60);
      v10 = *(result + 72);
      v11 = 4 * *(result + 64);
      v12 = 4 * *(result + 68);
      v13 = 4 * v5;
      do
      {
        v14 = 0;
        do
        {
          if (v10 <= 2)
          {
            switch(v10)
            {
              case 0:
                if (*(result + 44))
                {
                  v15 = *(result + 40);
                }

                else if (v3)
                {
                  v15 = *&v3[v14 / 4];
                }

                else
                {
                  v15 = 0.0;
                }

                v16 = *(v7 + v14);
LABEL_10:
                v17 = v15 + v16;
LABEL_11:
                *(v8 + v14) = v17;
                break;
              case 1:
                if (*(result + 44))
                {
                  v22 = *(result + 40);
                }

                else if (v3)
                {
                  v22 = *&v3[v14 / 4];
                }

                else
                {
                  v22 = 0.0;
                }

                v17 = *(v7 + v14) - v22;
                goto LABEL_11;
              case 2:
                if (*(result + 44))
                {
                  v18 = *(result + 40);
                }

                else if (v3)
                {
                  v18 = *&v3[v14 / 4];
                }

                else
                {
                  v18 = 1.0;
                }

                v17 = v18 * *(v7 + v14);
                goto LABEL_11;
            }
          }

          else
          {
            if (v10 <= 4)
            {
              if (v10 == 3)
              {
                if (*(result + 44))
                {
                  v20 = *(result + 40);
                }

                else if (v3)
                {
                  v20 = *&v3[v14 / 4];
                }

                else
                {
                  v20 = 1.0;
                }

                v17 = *(v7 + v14) / v20;
              }

              else
              {
                v17 = sqrtf(*(v7 + v14));
              }

              goto LABEL_11;
            }

            if (v10 == 5)
            {
              if (*(result + 44))
              {
                v21 = *(result + 40);
              }

              else if (v3)
              {
                v21 = *&v3[v14 / 4];
              }

              else
              {
                v21 = 1.0;
              }

              v17 = *(v8 + v14) + (v21 * *(v7 + v14));
              goto LABEL_11;
            }

            if (v10 == 6)
            {
              if (*(result + 44))
              {
                v19 = *(result + 40);
              }

              else if (v3)
              {
                v19 = *&v3[v14 / 4];
              }

              else
              {
                v19 = 0.0;
              }

              v15 = v19 + *(v7 + v14);
              v16 = *(v8 + v14);
              goto LABEL_10;
            }
          }

          v14 += 4;
        }

        while (v13 != v14);
        v3 = (v3 + v11);
        ++v6;
        v7 += v9;
        v8 += v12;
      }

      while (v6 != a2);
    }
  }

  return result;
}

void *sub_19D36B838(void *result)
{
  *result = &unk_1F10BC4C8;
  v1 = result[8];
  if (v1)
  {
    result[9] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_19D36B890(void *a1)
{
  *a1 = &unk_1F10BC4C8;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_19D36B8FC(uint64_t result, int a2, double a3)
{
  v3 = **(result + 16);
  v4 = (**(result + 24) + *(result + 48));
  v5 = **(result + 32);
  if (*(result + 42) == 1)
  {
    *(result + 41) = 1;
    *(result + 40) = *v4;
  }

  if (a2 >= 1)
  {
    v6 = *(result + 72);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = v3 + *(result + 44);
      v9 = *(result + 56);
      v10 = v5 + 4 * *(result + 52);
      v11 = *(result + 60);
      v12 = *(result + 68);
      v13 = 4 * *(result + 64);
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (v12 <= 2)
          {
            switch(v12)
            {
              case 0:
                if (*(result + 41))
                {
                  v15 = *(result + 40);
                }

                else if (v4)
                {
                  v15 = v4[i];
                }

                else
                {
                  v15 = 0;
                }

                LOBYTE(a3) = *(v8 + i);
                *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
                *&a3 = SLODWORD(a3);
                v16 = v15;
LABEL_10:
                *&a3 = v16 + *&a3;
LABEL_11:
                *(v10 + 4 * i) = LODWORD(a3);
                continue;
              case 1:
                if (*(result + 41))
                {
                  v21 = *(result + 40);
                }

                else if (v4)
                {
                  v21 = v4[i];
                }

                else
                {
                  v21 = 0;
                }

                LOBYTE(a3) = *(v8 + i);
                *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
                *&a3 = SLODWORD(a3) - v21;
                goto LABEL_11;
              case 2:
                if (*(result + 41))
                {
                  v17 = *(result + 40);
                }

                else if (v4)
                {
                  v17 = v4[i];
                }

                else
                {
                  v17 = 1;
                }

                LOBYTE(a3) = *(v8 + i);
                *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
                *&a3 = v17 * SLODWORD(a3);
                goto LABEL_11;
            }
          }

          else
          {
            if (v12 <= 4)
            {
              if (v12 == 3)
              {
                if (*(result + 41))
                {
                  v19 = *(result + 40);
                }

                else if (v4)
                {
                  v19 = v4[i];
                }

                else
                {
                  v19 = 1;
                }

                LOBYTE(a3) = *(v8 + i);
                *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
                *&a3 = SLODWORD(a3) / v19;
              }

              else
              {
                LOBYTE(a3) = *(v8 + i);
                *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
                *&a3 = sqrtf(SLODWORD(a3));
              }

              goto LABEL_11;
            }

            if (v12 == 5)
            {
              if (*(result + 41))
              {
                v20 = *(result + 40);
              }

              else if (v4)
              {
                v20 = v4[i];
              }

              else
              {
                v20 = 1;
              }

              LOBYTE(a3) = *(v8 + i);
              *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
              *&a3 = *(v10 + 4 * i) + (v20 * SLODWORD(a3));
              goto LABEL_11;
            }

            if (v12 == 6)
            {
              if (*(result + 41))
              {
                v18 = *(result + 40);
              }

              else if (v4)
              {
                v18 = v4[i];
              }

              else
              {
                v18 = 0;
              }

              LOBYTE(a3) = *(v8 + i);
              *&a3 = vmovl_s16(*&vmovl_s8(*&a3)).u64[0];
              *&a3 = SLODWORD(a3);
              v16 = v18 + *(v10 + 4 * i);
              goto LABEL_10;
            }
          }
        }

        v8 += v9;
        v4 += v11;
        ++v7;
        v10 += v13;
      }

      while (v7 != a2);
    }
  }

  return result;
}

void sub_19D36BB64(uint64_t a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = a2;
    v5 = 4 * *(a1 + 16) * *(a1 + 20);
    do
    {
      vDSP_mtrans((**(a1 + 24) + v3), 1, (**(a1 + 32) + v3), 1, *(a1 + 20), *(a1 + 16));
      v3 += v5;
      --v4;
    }

    while (v4);
  }
}

void sub_19D36BBE4(int a1@<W1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v6 = *(a2 + 40);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  if (v5 * a1)
  {
    if (((v5 * a1) & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v8 = v5 * a1;
  v9 = v8 / v5;
  v10 = v8 % v5;
  _ZF = v8 < v5 && v10 == 0;
  v12 = !_ZF;
  v32 = v12;
  if (!_ZF)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    do
    {
      *(8 * v14 * v5 + 8 * v13) = 0;
      ++v15;
      v14 = v16 / v5;
      v13 = v15 - v16 / v5 * v5;
      ++v16;
    }

    while (v14 != v9 || v13 != v10);
  }

  if (a1 >= 1)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  if (v32)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    do
    {
      *(8 * v19 * v5 + 8 * v18) = 0;
      ++v20;
      v19 = v21 / v5;
      v18 = v20 - v21 / v5 * v5;
      ++v21;
    }

    while (v19 != v9 || v18 != v10);
  }

  if (v5 >= 1)
  {
    if (a1 != -1)
    {
      if (a1 >= -1)
      {
        __asm { FMOV            V2.2D, #1.0 }

        operator new();
      }

      sub_19D2AE2B4();
    }

    sub_19D2AE2B4();
  }

  if (v32)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 1;
    do
    {
      *(8 * v28 * v5 + 8 * v27) = 0;
      ++v29;
      v28 = v30 / v5;
      v27 = v29 - v30 / v5 * v5;
      ++v30;
    }

    while (v28 != v9 || v27 != v10);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = a1 | (v5 << 32);
}

void sub_19D36CDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56)
{
  if (__p)
  {
    operator delete(__p);
    if (!v56)
    {
LABEL_3:
      v59 = a31;
      if (!a31)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v56)
  {
    goto LABEL_3;
  }

  operator delete(v56);
  v59 = a31;
  if (!a31)
  {
LABEL_4:
    sub_19D36CF9C(v57 - 232);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(v59);
  sub_19D36CF9C(v57 - 232);
  _Unwind_Resume(a1);
}

uint64_t sub_19D36CF9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_19D36CFE0(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v38 = *(a2 + 24);
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  if (v38 * a1)
  {
    if (((v38 * a1) & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = v38 * a1;
  v8 = v7 / v38;
  v9 = v7 % v38;
  _ZF = v7 < v38 && v9 == 0;
  v11 = !_ZF;
  v37 = v11;
  if (!_ZF)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
    do
    {
      *(8 * v13 * v38 + 8 * v12) = 0;
      ++v14;
      v13 = v15 / v38;
      v12 = v14 - v13 * v38;
      ++v15;
    }

    while (v13 != v8 || v12 != v9);
  }

  if (a1 >= 1 && v38)
  {
    if ((v38 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  if (v37)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 1;
    do
    {
      *(8 * v18 * v38 + 8 * v17) = 0;
      ++v19;
      v18 = v20 / v38;
      v17 = v19 - v18 * v38;
      ++v20;
    }

    while (v18 != v8 || v17 != v9);
  }

  if (v38 >= 1)
  {
    if (a1 != -1)
    {
      if (a1 >= -1)
      {
        __asm { FMOV            V2.2D, #1.0 }

        operator new();
      }

      sub_19D2AE2B4();
    }

    sub_19D2AE2B4();
  }

  if (v37)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
    do
    {
      *(8 * v27 * v38 + 8 * v26) = 0;
      ++v28;
      v27 = v29 / v38;
      v26 = v28 - v27 * v38;
      ++v29;
    }

    while (v27 != v8 || v26 != v9);
  }

  if (a1)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 1;
    do
    {
      *(8 * v38 * v32 + 8 * v31) = round(*(8 * v38 * v32 + 8 * v31));
      ++v33;
      v32 = v34 / v38;
      v35 = v34 / v38 * v38;
      v31 = v33 - v35;
      v36 = v34 / v38 == a1 && v35 == v34;
      ++v34;
    }

    while (!v36);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = a1;
    *(a3 + 28) = v38;
    operator delete(0);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 28) = v38;
  }
}

void sub_19D36E2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D36E2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52)
{
  if (v52)
  {
    operator delete(v52);
    if (!__p)
    {
LABEL_3:
      v55 = a31;
      if (!a31)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  v55 = a31;
  if (!a31)
  {
LABEL_4:
    v56 = a30;
    if (!a30)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v55);
  v56 = a30;
  if (!a30)
  {
LABEL_5:
    sub_19D36CF9C(v53 - 248);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v56);
  sub_19D36CF9C(v53 - 248);
  _Unwind_Resume(a1);
}

void sub_19D36E47C(void *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  v3 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v45 = a3;
  LOBYTE(v46) = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  if (sub_19D36EBA8(a1))
  {
    sub_19D36EC54(a1, &v45);
    v35 = 0;
    v36 = 0;
    v34 = 0;
    if (v46 != v45)
    {
      if (((v46 - v45) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v37 = v47;
    v39 = 0;
    v40 = 0;
    __p = 0;
    v22 = v3;
    if (v49 != v48)
    {
      if (((v49 - v48) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v41 = v50;
    sub_19D36BBE4(0, &v34, v42);
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    v19 = v43;
    if (v43 >= 1)
    {
      v4 = 0;
      v23 = 0;
      while (1)
      {
        if (v44)
        {
          if ((v44 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v21 = v4;
        sub_19D370C7C(&v32, a1);
        v5 = v32;
        v6 = v33;
        if (v32 != v33)
        {
          break;
        }

LABEL_43:
        if (v5)
        {
          v16 = v33;
          v17 = v5;
          if (v33 != v5)
          {
            do
            {
              v18 = *(v16 - 25);
              v16 -= 6;
              if (v18 < 0)
              {
                operator delete(*v16);
              }
            }

            while (v16 != v5);
            v17 = v32;
          }

          v33 = v5;
          operator delete(v17);
        }

        v4 = v21 + 8;
        if (++v23 == v19)
        {
          goto LABEL_52;
        }
      }

      v7 = 0;
      while (1)
      {
        if (*(v5 + 23) < 0)
        {
          sub_19D2AD6B8(v28, *v5, v5[1]);
        }

        else
        {
          v8 = *v5;
          v29 = v5[2];
          *v28 = v8;
        }

        v9 = *(v5 + 3);
        v31 = *(v5 + 10);
        v30 = v9;
        v10 = *v3;
        v25 = 0;
        v26 = 0;
        v24 = 0;
        v27 = 0;
        if (v31)
        {
          if ((v31 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v11 = v10 + 24 * v23;
        v12 = *(v11 + 8);
        if (v12 < *(v11 + 16))
        {
          break;
        }

        *(v11 + 8) = sub_19D371F14(v11, v28, &v24);
        v14 = v24;
        if (v24)
        {
          goto LABEL_34;
        }

LABEL_35:
        v15 = v31;
        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28[0]);
        }

        v7 += v15;
        v5 += 6;
        if (v5 == v6)
        {
          v5 = v32;
          goto LABEL_43;
        }
      }

      if (SHIBYTE(v29) < 0)
      {
        sub_19D2AD6B8(v12, v28[0], v28[1]);
      }

      else
      {
        v13 = *v28;
        *(v12 + 16) = v29;
        *v12 = v13;
      }

      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      v3 = v22;
      *(v12 + 48) = 0;
      *(v11 + 8) = v12 + 56;
      *(v11 + 8) = v12 + 56;
      v14 = v24;
      if (!v24)
      {
        goto LABEL_35;
      }

LABEL_34:
      v25 = v14;
      operator delete(v14);
      goto LABEL_35;
    }

LABEL_52:
    if (v42[0])
    {
      v42[1] = v42[0];
      operator delete(v42[0]);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }
  }
}

void sub_19D36EA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_19D36CF9C(&a28);
  sub_19D36CF9C(v29 - 152);
  sub_19D36EEA8(v28);
  _Unwind_Resume(a1);
}

void sub_19D36EAE8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v28 - 184);
  if (v29)
  {
    *(v28 - 176) = v29;
    JUMPOUT(0x19D36EB84);
  }

  JUMPOUT(0x19D36EB88);
}

uint64_t sub_19D36EBA8(void *a1)
{
  sub_19D370C7C(&__p, a1);
  result = sub_19D3716BC(__p, v8, 0);
  v2 = __p;
  if (__p)
  {
    v3 = result;
    v4 = v8;
    v5 = __p;
    if (v8 != __p)
    {
      do
      {
        v6 = *(v4 - 25);
        v4 -= 6;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = __p;
    }

    v8 = v2;
    operator delete(v5);
    return v3;
  }

  return result;
}

void sub_19D36EC54(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_19D36EBA8(a1);
  sub_19D373338(a2, v4);
  sub_19D370C7C(&v33, a1);
  v5 = v33;
  v6 = v34;
  if (v33 != v34)
  {
    v7 = 0;
    do
    {
      if (*(v5 + 23) < 0)
      {
        sub_19D2AD6B8(__p, *v5, v5[1]);
      }

      else
      {
        v8 = *v5;
        v30 = v5[2];
        *__p = v8;
      }

      v9 = *(v5 + 3);
      v32 = *(v5 + 10);
      v31 = v9;
      v10 = v32 + v7;
      if (v32 >= 1)
      {
        v11 = 0;
        v12 = v31;
        v13 = v7 <= v10 ? v32 + v7 : v7;
        v14 = *a2;
        v15 = a2[4];
        v16 = v13 - v7;
        if ((v13 - v7) < 6 || v13 - 1 < v7)
        {
          goto LABEL_19;
        }

        if ((v15 - v14) < 0x20)
        {
          goto LABEL_19;
        }

        v11 = v16 & 0xFFFFFFFC;
        v18 = vdupq_lane_s64(v31, 0);
        v19 = vdupq_lane_s64(*(&v31 + 1), 0);
        v20 = v16 & 0xFFFFFFFC;
        v21 = v7;
        do
        {
          v22 = 8 * v21;
          v23 = (v14 + v22);
          *v23 = v18;
          v23[1] = v18;
          v24 = (v15 + v22);
          *v24 = v19;
          v24[1] = v19;
          v21 += 4;
          v20 -= 4;
        }

        while (v20);
        if (v16 != v11)
        {
LABEL_19:
          v25 = v11 + v7;
          do
          {
            *(v14 + 8 * v25) = v12;
            *(v15 + 8 * v25++) = *(&v12 + 1);
          }

          while (v13 != v25);
        }
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[0]);
      }

      v5 += 6;
      v7 = v10;
    }

    while (v5 != v6);
    v5 = v33;
  }

  if (v5)
  {
    v26 = v34;
    v27 = v5;
    if (v34 != v5)
    {
      do
      {
        v28 = *(v26 - 25);
        v26 -= 6;
        if (v28 < 0)
        {
          operator delete(*v26);
        }
      }

      while (v26 != v5);
      v27 = v33;
    }

    v34 = v5;
    operator delete(v27);
  }
}

void sub_19D36EE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_19D36EE34(va);
  sub_19D36CF9C(v8);
  _Unwind_Resume(a1);
}

void ***sub_19D36EE34(void ***a1)
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
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void ***sub_19D36EEA8(void ***a1)
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
              v10 = *(v9 - 4);
              if (v10)
              {
                *(v9 - 3) = v10;
                operator delete(v10);
              }

              v11 = v9 - 7;
              if (*(v9 - 33) < 0)
              {
                operator delete(*v11);
              }

              v9 -= 7;
            }

            while (v11 != v7);
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

void sub_19D36EF78(uint64_t a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  v3 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v45 = a3;
  LOBYTE(v46) = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  if (sub_19D36F6A8(a1))
  {
    sub_19D36F758(a1, &v45);
    v35 = 0;
    v36 = 0;
    v34 = 0;
    if (v46 != v45)
    {
      if (((v46 - v45) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v37 = v47;
    v39 = 0;
    v40 = 0;
    __p = 0;
    v22 = v3;
    if (v49 != v48)
    {
      if (((v49 - v48) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_19D2AE2B4();
    }

    v41 = v50;
    sub_19D36CFE0(0, &v34, v42);
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    v19 = v43;
    if (v43 >= 1)
    {
      v4 = 0;
      v23 = 0;
      while (1)
      {
        if (v44)
        {
          if ((v44 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v21 = v4;
        sub_19D370EB8(&v32, (a1 + 24));
        v5 = v32;
        v6 = v33;
        if (v32 != v33)
        {
          break;
        }

LABEL_43:
        if (v5)
        {
          v16 = v33;
          v17 = v5;
          if (v33 != v5)
          {
            do
            {
              v18 = *(v16 - 17);
              v16 -= 5;
              if (v18 < 0)
              {
                operator delete(*v16);
              }
            }

            while (v16 != v5);
            v17 = v32;
          }

          v33 = v5;
          operator delete(v17);
        }

        v4 = v21 + 4;
        if (++v23 == v19)
        {
          goto LABEL_52;
        }
      }

      v7 = 0;
      while (1)
      {
        if (*(v5 + 23) < 0)
        {
          sub_19D2AD6B8(v28, *v5, v5[1]);
        }

        else
        {
          v8 = *v5;
          v29 = v5[2];
          *v28 = v8;
        }

        v9 = v5[3];
        v31 = *(v5 + 8);
        v30 = v9;
        v10 = *v3;
        v25 = 0;
        v26 = 0;
        v24 = 0;
        v27 = 0;
        if (v31)
        {
          if ((v31 & 0x80000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v11 = v10 + 24 * v23;
        v12 = *(v11 + 8);
        if (v12 < *(v11 + 16))
        {
          break;
        }

        *(v11 + 8) = sub_19D37249C(v11, v28, &v24);
        v14 = v24;
        if (v24)
        {
          goto LABEL_34;
        }

LABEL_35:
        v15 = v31;
        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28[0]);
        }

        v7 += v15;
        v5 += 5;
        if (v5 == v6)
        {
          v5 = v32;
          goto LABEL_43;
        }
      }

      if (SHIBYTE(v29) < 0)
      {
        sub_19D2AD6B8(v12, v28[0], v28[1]);
      }

      else
      {
        v13 = *v28;
        *(v12 + 16) = v29;
        *v12 = v13;
      }

      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      v3 = v22;
      *(v12 + 48) = 0;
      *(v11 + 8) = v12 + 56;
      *(v11 + 8) = v12 + 56;
      v14 = v24;
      if (!v24)
      {
        goto LABEL_35;
      }

LABEL_34:
      v25 = v14;
      operator delete(v14);
      goto LABEL_35;
    }

LABEL_52:
    if (v42[0])
    {
      v42[1] = v42[0];
      operator delete(v42[0]);
    }

    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }
  }
}

void sub_19D36F558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_19D36CF9C(&a28);
  sub_19D36CF9C(v29 - 152);
  sub_19D36EEA8(v28);
  _Unwind_Resume(a1);
}

void sub_19D36F5E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v28 - 184);
  if (v29)
  {
    *(v28 - 176) = v29;
    JUMPOUT(0x19D36F684);
  }

  JUMPOUT(0x19D36F688);
}

uint64_t sub_19D36F6A8(uint64_t a1)
{
  sub_19D370EB8(&__p, (a1 + 24));
  result = sub_19D3717F8(__p, v8, 0);
  v2 = __p;
  if (__p)
  {
    v3 = result;
    v4 = v8;
    v5 = __p;
    if (v8 != __p)
    {
      do
      {
        v6 = *(v4 - 17);
        v4 -= 5;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = __p;
    }

    v8 = v2;
    operator delete(v5);
    return v3;
  }

  return result;
}

void sub_19D36F758(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_19D36F6A8(a1);
  sub_19D373464(a2, v4);
  sub_19D370EB8(&v34, (a1 + 24));
  v5 = v34;
  v6 = v35;
  if (v34 != v35)
  {
    v7 = 0;
    do
    {
      if (*(v5 + 23) < 0)
      {
        sub_19D2AD6B8(__p, *v5, v5[1]);
      }

      else
      {
        v8 = *v5;
        v31 = v5[2];
        *__p = v8;
      }

      v9 = v5[3];
      v33 = *(v5 + 8);
      v32 = v9;
      v10 = v33;
      if (v33 >= 1)
      {
        v11 = 0;
        v12 = v32;
        v13 = HIDWORD(v32);
        v14 = v33 + v7;
        if (v7 > v33 + v7)
        {
          v14 = v7;
        }

        v15 = *a2;
        v16 = a2[4];
        v17 = v14 - v7;
        if ((v14 - v7) < 8 || v14 - 1 < v7)
        {
          goto LABEL_18;
        }

        if ((v16 - v15) < 0x20)
        {
          goto LABEL_18;
        }

        v11 = v17 & 0xFFFFFFF8;
        v19 = vdupq_n_s32(v32);
        v20 = vdupq_n_s32(HIDWORD(v32));
        v21 = v17 & 0xFFFFFFF8;
        v22 = v7;
        do
        {
          v23 = 4 * v22;
          v24 = (v15 + v23);
          *v24 = v19;
          v24[1] = v19;
          v25 = (v16 + v23);
          *v25 = v20;
          v25[1] = v20;
          v22 += 8;
          v21 -= 8;
        }

        while (v21);
        if (v17 != v11)
        {
LABEL_18:
          v26 = v11 + v7;
          do
          {
            *(v15 + 4 * v26) = v12;
            *(v16 + 4 * v26++) = v13;
          }

          while (v14 != v26);
        }

        v10 = v33;
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      v7 += v10;
      v5 += 5;
    }

    while (v5 != v6);
    v5 = v34;
  }

  if (v5)
  {
    v27 = v35;
    v28 = v5;
    if (v35 != v5)
    {
      do
      {
        v29 = *(v27 - 17);
        v27 -= 5;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v5);
      v28 = v34;
    }

    v35 = v5;
    operator delete(v28);
  }
}

void sub_19D36F920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_19D36F93C(va);
  sub_19D36CF9C(v6);
  _Unwind_Resume(a1);
}

void ***sub_19D36F93C(void ***a1)
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
        v5 = *(v3 - 17);
        v3 -= 5;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_19D36F9B0(void *a1, uint64_t *a2)
{
  v4 = sub_19D370B80(a1);
  *(v4 + 2528) = 0;
  *(v4 + 2512) = 0u;
  __A = 0;
  v29 = 0;
  v30 = 0;
  v6 = *a2;
  v5 = a2[1];
  v7 = v5 - *a2;
  v31 = v7 >> 3;
  if (v31)
  {
    sub_19D3628E0(&__A, (v7 >> 3));
    v6 = *a2;
    v5 = a2[1];
  }

  if (v6 != v5)
  {
    v8 = 0;
    v9 = __A;
    v10 = v5 - v6 - 8;
    if (v10 < 0x18 || __A - v6 < 0x20)
    {
      v12 = v6;
    }

    else
    {
      v11 = (v10 >> 3) + 1;
      v8 = v11 & 0x3FFFFFFFFFFFFFFCLL;
      v12 = (v6 + 8 * (v11 & 0x3FFFFFFFFFFFFFFCLL));
      v13 = (v6 + 16);
      v14 = __A + 2;
      v15 = v11 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 4;
        v15 -= 4;
      }

      while (v15);
      if (v11 == v8)
      {
        goto LABEL_13;
      }
    }

    v17 = &v9[v8];
    do
    {
      v18 = *v12++;
      *v17++ = v18;
    }

    while (v12 != v5);
  }

LABEL_13:
  v19 = sub_19D36FEE4(&__A);
  __B = v19 + v19 + 0.0002;
  if (v29 != __A)
  {
    if (((v29 - __A) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v20 = v31;
  *&v24 = 0;
  v21 = v31;
  vDSP_meanvD(__A, 1, &v24, v31);
  *&v24 = -*&v24;
  vDSP_vsaddD(0, 1, &v24, 0, 1, v21);
  vDSP_vsdivD(0, 1, &__B, 0, 1, v21);
  if (v20)
  {
    if ((v20 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  LODWORD(v24) = 0;
  vvexp(0, 0, &v24);
  *&v24 = 0;
  vDSP_sveD(0, 1, &v24, v21);
  *&v26 = v24;
  vDSP_vsdivD(0, 1, &v26, 0, 1, v21);
  v24 = 0uLL;
  v25 = 0;
  sub_19D3729AC(&v24);
  v22 = a1[314];
  if (v22)
  {
    a1[315] = v22;
    operator delete(v22);
    a1[314] = 0;
    a1[315] = 0;
    a1[316] = 0;
  }

  *(a1 + 157) = v24;
  a1[316] = v25;
  if (__A)
  {
    v29 = __A;
    operator delete(__A);
  }

  return a1;
}

void sub_19D36FE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_19D370070(v16);
  _Unwind_Resume(a1);
}

double sub_19D36FEE4(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (v1 != *a1)
  {
    if (((v1 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v3 = *(a1 + 24);
  __C = 0.0;
  vDSP_meanvD(v2, 1, &__C, v3);
  __C = -__C;
  vDSP_vsaddD(0, 1, &__C, 0, 1, v3);
  __C = 0.0;
  vDSP_rmsqvD(0, 1, &__C, v3);
  return __C;
}

void sub_19D370034(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D370070(uint64_t a1)
{
  v2 = *(a1 + 2512);
  if (v2)
  {
    *(a1 + 2520) = v2;
    operator delete(v2);
  }

  std::random_device::~random_device((a1 + 2504));
  return a1;
}

double sub_19D3700B0(uint64_t a1)
{
  if (*(a1 + 2536))
  {
    *(a1 + 2536) = 0;
    v2 = *(a1 + 2528);
  }

  else
  {
    v3 = *(a1 + 2496);
    do
    {
      v4 = (v3 + 1) % 0x270;
      v5 = *(a1 + 4 * v4);
      v6 = v5 & 0x7FFFFFFE | *(a1 + 4 * v3) & 0x80000000;
      if (v5)
      {
        v7 = -1727483681;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7 ^ *(a1 + 4 * ((v3 + 397) % 0x270)) ^ (v6 >> 1);
      *(a1 + 4 * v3) = v8;
      v9 = ((v8 ^ (v8 >> 11)) << 7) & 0x9D2C5680 ^ v8 ^ (v8 >> 11);
      if (v4 == 623)
      {
        v10 = 0;
      }

      else
      {
        v10 = v4 + 1;
      }

      v11 = *(a1 + 4 * v10);
      v12 = (v9 << 15) & 0xEFC60000 ^ v9 ^ (((v9 << 15) & 0xEFC60000 ^ v9) >> 18);
      if (v4 >= 0xE3)
      {
        v13 = -227;
      }

      else
      {
        v13 = 397;
      }

      v14 = *(a1 + 4 * (v13 + v4));
      v15 = v12;
      if (v11)
      {
        v16 = -1727483681;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16 ^ v14 ^ ((v11 & 0x7FFFFFFE | *(a1 + 4 * v4) & 0x80000000) >> 1);
      *(a1 + 4 * v4) = v17;
      v18 = ((v17 ^ (v17 >> 11)) << 7) & 0x9D2C5680 ^ v17 ^ (v17 >> 11);
      v19 = (v10 + 1) % 0x270;
      v20 = *(a1 + 4 * v19);
      v21 = v20 & 0x7FFFFFFE | *(a1 + 4 * v10) & 0x80000000;
      v22 = (v18 << 15) & 0xEFC60000 ^ v18 ^ (((v18 << 15) & 0xEFC60000 ^ v18) >> 18);
      if (v20)
      {
        v23 = -1727483681;
      }

      else
      {
        v23 = 0;
      }

      v24 = v22;
      v25 = v23 ^ *(a1 + 4 * ((v10 + 397) % 0x270)) ^ (v21 >> 1);
      *(a1 + 4 * v10) = v25;
      v26 = ((v25 ^ (v25 >> 11)) << 7) & 0x9D2C5680 ^ v25 ^ (v25 >> 11);
      if (v19 == 623)
      {
        v3 = 0;
      }

      else
      {
        v3 = v19 + 1;
      }

      v27 = *(a1 + 4 * v3);
      v28 = (v26 << 15) & 0xEFC60000 ^ v26 ^ (((v26 << 15) & 0xEFC60000 ^ v26) >> 18);
      v29 = v27 & 0x7FFFFFFE | *(a1 + 4 * v19) & 0x80000000;
      if (v19 >= 0xE3)
      {
        v30 = -227;
      }

      else
      {
        v30 = 397;
      }

      v31 = v15 + v24 * 4294967300.0;
      v32 = *(a1 + 4 * (v30 + v19));
      if (v27)
      {
        v33 = -1727483681;
      }

      else
      {
        v33 = 0;
      }

      v34 = v28;
      v35 = v33 ^ v32 ^ (v29 >> 1);
      v36 = ((v35 ^ (v35 >> 11)) << 7) & 0x9D2C5680 ^ v35 ^ (v35 >> 11);
      v37 = v31 * 1.08420217e-19 + -1.0;
      v38 = (v34 + ((v36 << 15) & 0xEFC60000 ^ v36 ^ (((v36 << 15) & 0xEFC60000 ^ v36) >> 18)) * 4294967300.0) * 1.08420217e-19 + -1.0;
      v39 = v37 * v37 + v38 * v38;
      *(a1 + 4 * v19) = v35;
    }

    while (v39 > 1.0 || v39 == 0.0);
    *(a1 + 2496) = v3;
    v40 = sqrt(log(v37 * v37 + v38 * v38) * -2.0 / v39);
    *(a1 + 2528) = v40 * v38;
    *(a1 + 2536) = 1;
    v2 = v40 * v37;
  }

  return *(a1 + 2512) + *(a1 + 2520) * v2;
}

void sub_19D370344(void *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  sub_19D370C7C(&v48, a1);
  sub_19D370EB8(&v50, a1 + 3);
  sub_19D36E47C(&v48, a2, &v52);
  v6 = v50;
  if (v50)
  {
    v7 = v51;
    v8 = v50;
    if (v51 != v50)
    {
      do
      {
        v9 = *(v7 - 17);
        v7 -= 5;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = v50;
    }

    v51 = v6;
    operator delete(v8);
  }

  v10 = v48;
  if (v48)
  {
    v11 = v49;
    v12 = v48;
    if (v49 != v48)
    {
      do
      {
        v13 = *(v11 - 25);
        v11 -= 6;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = v48;
    }

    v49 = v10;
    operator delete(v12);
  }

  sub_19D370C7C(&v42, a1);
  sub_19D370EB8(&__p, a1 + 3);
  sub_19D36EF78(&v42, a2, &v46);
  v14 = __p;
  if (__p)
  {
    v15 = v45;
    v16 = __p;
    if (v45 != __p)
    {
      do
      {
        v17 = *(v15 - 17);
        v15 -= 5;
        if (v17 < 0)
        {
          operator delete(*v15);
        }
      }

      while (v15 != v14);
      v16 = __p;
    }

    v45 = v14;
    operator delete(v16);
  }

  v18 = v42;
  if (v42)
  {
    v19 = v43;
    v20 = v42;
    if (v43 != v42)
    {
      do
      {
        v21 = *(v19 - 25);
        v19 -= 6;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = v42;
    }

    v43 = v18;
    operator delete(v20);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v22 = v46;
  if (v46)
  {
    v23 = v47;
    v24 = v46;
    if (v47 != v46)
    {
      v25 = v47;
      do
      {
        v28 = *(v25 - 3);
        v25 -= 3;
        v27 = v28;
        if (v28)
        {
          v29 = *(v23 - 2);
          v26 = v27;
          if (v29 != v27)
          {
            do
            {
              v30 = *(v29 - 4);
              if (v30)
              {
                *(v29 - 3) = v30;
                operator delete(v30);
              }

              v31 = v29 - 7;
              if (*(v29 - 33) < 0)
              {
                operator delete(*v31);
              }

              v29 -= 7;
            }

            while (v31 != v27);
            v26 = *v25;
          }

          *(v23 - 2) = v27;
          operator delete(v26);
        }

        v23 = v25;
      }

      while (v25 != v22);
      v24 = v46;
    }

    v47 = v22;
    operator delete(v24);
  }

  v32 = v52;
  if (v52)
  {
    v33 = v53;
    v34 = v52;
    if (v53 != v52)
    {
      v35 = v53;
      do
      {
        v38 = *(v35 - 3);
        v35 -= 3;
        v37 = v38;
        if (v38)
        {
          v39 = *(v33 - 2);
          v36 = v37;
          if (v39 != v37)
          {
            do
            {
              v40 = *(v39 - 4);
              if (v40)
              {
                *(v39 - 3) = v40;
                operator delete(v40);
              }

              v41 = v39 - 7;
              if (*(v39 - 33) < 0)
              {
                operator delete(*v41);
              }

              v39 -= 7;
            }

            while (v41 != v37);
            v36 = *v35;
          }

          *(v33 - 2) = v37;
          operator delete(v36);
        }

        v33 = v35;
      }

      while (v35 != v32);
      v34 = v52;
    }

    v53 = v32;
    operator delete(v34);
  }
}

void sub_19D370828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  sub_19D3708F4(&a27);
  sub_19D36EEA8((v27 - 104));
  _Unwind_Resume(a1);
}

void sub_19D370844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  sub_19D36EE34(&a27);
  sub_19D36EEA8((v27 - 104));
  _Unwind_Resume(a1);
}

void sub_19D37089C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_19D372E00(va);
  sub_19D36EEA8((v7 - 176));
  sub_19D36EEA8((v7 - 104));
  _Unwind_Resume(a1);
}

void sub_19D3708C0(_Unwind_Exception *a1)
{
  sub_19D372E78(v1);
  sub_19D36EEA8((v2 - 176));
  sub_19D36EEA8((v2 - 104));
  _Unwind_Resume(a1);
}

void ***sub_19D3708F4(void ***a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 17);
        v3 -= 5;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = a1[1];
    v8 = *a1;
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 25);
        v7 -= 6;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *a1;
    }

    a1[1] = v6;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_19D3709B0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 4);
        if (v7)
        {
          *(v5 - 3) = v7;
          operator delete(v7);
        }

        v8 = v5 - 7;
        if (*(v5 - 33) < 0)
        {
          operator delete(*v8);
        }

        v5 -= 7;
      }

      while (v8 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v9 = (a1 + 24);
  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 24);
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 4);
        if (v13)
        {
          *(v11 - 3) = v13;
          operator delete(v13);
        }

        v14 = v11 - 7;
        if (*(v11 - 33) < 0)
        {
          operator delete(*v14);
        }

        v11 -= 7;
      }

      while (v14 != v10);
      v12 = *v9;
    }

    *(a1 + 32) = v10;
    operator delete(v12);
    *v9 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v15 = a1 + 56;
  sub_19D2A3E48(a1 + 48, *(a1 + 56));
  v16 = (a2 + 56);
  v17 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v17;
  v18 = *(a2 + 64);
  *(a1 + 64) = v18;
  if (v18)
  {
    *(v17 + 16) = v15;
    *(a2 + 48) = v16;
    *v16 = 0;
    *(a2 + 64) = 0;
  }

  else
  {
    *(a1 + 48) = v15;
  }

  v19 = a1 + 80;
  sub_19D2A3E48(a1 + 72, *(a1 + 80));
  v20 = (a2 + 80);
  v21 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v21;
  v22 = *(a2 + 88);
  *(a1 + 88) = v22;
  if (v22)
  {
    *(v21 + 16) = v19;
    *(a2 + 72) = v20;
    *v20 = 0;
    *(a2 + 88) = 0;
  }

  else
  {
    *(a1 + 72) = v19;
  }

  return a1;
}

uint64_t sub_19D370B80(uint64_t a1)
{
  v2 = 5489;
  *a1 = 5489;
  for (i = 1; i != 624; ++i)
  {
    v2 = i + 1812433253 * (v2 ^ (v2 >> 30));
    *(a1 + 4 * i) = v2;
  }

  *(a1 + 2496) = 0;
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device((a1 + 2504), &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  v4 = MEMORY[0x19EAFA320](a1 + 2504);
  *a1 = v4;
  for (j = 1; j != 624; ++j)
  {
    v4 = j + 1812433253 * (v4 ^ (v4 >> 30));
    *(a1 + 4 * j) = v4;
  }

  *(a1 + 2496) = 0;
  return a1;
}

void sub_19D370C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D370C7C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  return result;
}

void sub_19D370DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_19D370DD4(&a11);
  *(v11 + 8) = v12;
  sub_19D370E34(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D370DD4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 25);
      v3 -= 6;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_19D370E34(void ****a1)
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
          v6 = *(v4 - 25);
          v4 -= 6;
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

void *sub_19D370EB8(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  return result;
}

void sub_19D370FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_19D371010(&a11);
  *(v11 + 8) = v12;
  sub_19D371070(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D371010(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 17);
      v3 -= 5;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_19D371070(void ****a1)
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
          v6 = *(v4 - 17);
          v4 -= 5;
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

__int128 **sub_19D3710F4(__int128 **a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_19D371930(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_19D371C6C((a1 + 3), *a3, a3[1], 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 3));
  a1[7] = 0;
  a1[6] = (a1 + 7);
  a1[8] = 0;
  a1[10] = 0;
  a1[9] = (a1 + 10);
  a1[11] = 0;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    while (1)
    {
      if (*(v5 + 23) < 0)
      {
        sub_19D2AD6B8(v20, *v5, *(v5 + 1));
      }

      else
      {
        v7 = *v5;
        v21 = *(v5 + 2);
        *v20 = v7;
      }

      __p = 0;
      v23 = 0;
      v24 = 0;
      v9 = *(v5 + 3);
      v8 = *(v5 + 4);
      if (v8 != v9)
      {
        if (((v8 - v9) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      v25 = *(v5 + 12);
      if (SHIBYTE(v21) < 0)
      {
        sub_19D2AD6B8(v18, v20[0], v20[1]);
      }

      else
      {
        *v18 = *v20;
        v19 = v21;
      }

      sub_19D371440((a1 + 6), v18);
      if (SHIBYTE(v19) < 0)
      {
        break;
      }

      v10 = __p;
      if (__p)
      {
        goto LABEL_15;
      }

LABEL_16:
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

      v5 = (v5 + 56);
      if (v5 == v6)
      {
        goto LABEL_20;
      }
    }

    operator delete(v18[0]);
    v10 = __p;
    if (!__p)
    {
      goto LABEL_16;
    }

LABEL_15:
    v23 = v10;
    operator delete(v10);
    goto LABEL_16;
  }

LABEL_20:
  v11 = a1[3];
  v12 = a1[4];
  if (v11 != v12)
  {
    while (1)
    {
      if (*(v11 + 23) < 0)
      {
        sub_19D2AD6B8(v20, *v11, *(v11 + 1));
      }

      else
      {
        v13 = *v11;
        v21 = *(v11 + 2);
        *v20 = v13;
      }

      __p = 0;
      v23 = 0;
      v24 = 0;
      v15 = *(v11 + 3);
      v14 = *(v11 + 4);
      if (v14 != v15)
      {
        if (((v14 - v15) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      v25 = *(v11 + 12);
      if (SHIBYTE(v21) < 0)
      {
        sub_19D2AD6B8(v18, v20[0], v20[1]);
      }

      else
      {
        *v18 = *v20;
        v19 = v21;
      }

      sub_19D371440((a1 + 9), v18);
      if (SHIBYTE(v19) < 0)
      {
        break;
      }

      v16 = __p;
      if (__p)
      {
        goto LABEL_34;
      }

LABEL_35:
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

      v11 = (v11 + 56);
      if (v11 == v12)
      {
        return a1;
      }
    }

    operator delete(v18[0]);
    v16 = __p;
    if (!__p)
    {
      goto LABEL_35;
    }

LABEL_34:
    v23 = v16;
    operator delete(v16);
    goto LABEL_35;
  }

  return a1;
}

void sub_19D371400(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  sub_19D2ABE10(a1);
}

void *sub_19D371440(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

uint64_t sub_19D3715C0(uint64_t a1)
{
  sub_19D2A3E48(a1 + 72, *(a1 + 80));
  sub_19D2A3E48(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 4);
        if (v5)
        {
          *(v3 - 3) = v5;
          operator delete(v5);
        }

        v6 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 7;
      }

      while (v6 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v7 = *a1;
  if (*a1)
  {
    v8 = *(a1 + 8);
    v9 = *a1;
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 4);
        if (v10)
        {
          *(v8 - 3) = v10;
          operator delete(v10);
        }

        v11 = v8 - 7;
        if (*(v8 - 33) < 0)
        {
          operator delete(*v11);
        }

        v8 -= 7;
      }

      while (v11 != v7);
      v9 = *a1;
    }

    *(a1 + 8) = v7;
    operator delete(v9);
  }

  return a1;
}

uint64_t sub_19D3716BC(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 3)
    {
      if (*(i + 23) < 0)
      {
        sub_19D2AD6B8(v11, *i, *(i + 1));
        v9 = *(i + 24);
        v14 = *(i + 10);
        v13 = v9;
        if ((SHIBYTE(v12) & 0x80000000) == 0)
        {
LABEL_7:
          *__p = *v11;
          v16 = v12;
          goto LABEL_10;
        }
      }

      else
      {
        v7 = *i;
        v12 = *(i + 2);
        *v11 = v7;
        v8 = *(i + 24);
        v14 = *(i + 10);
        v13 = v8;
        if ((SHIBYTE(v12) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      sub_19D2AD6B8(__p, v11[0], v11[1]);
LABEL_10:
      v18 = v14;
      v17 = v13;
      v10 = v14;
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v12) < 0)
        {
LABEL_14:
          operator delete(v11[0]);
        }
      }

      else if (SHIBYTE(v12) < 0)
      {
        goto LABEL_14;
      }

      a3 = (v10 + a3);
    }
  }

  return a3;
}

void sub_19D3717DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D3717F8(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i = (i + 40))
    {
      if (*(i + 23) < 0)
      {
        sub_19D2AD6B8(v11, *i, *(i + 1));
        v9 = *(i + 3);
        v14 = *(i + 8);
        v13 = v9;
        if ((SHIBYTE(v12) & 0x80000000) == 0)
        {
LABEL_7:
          *__p = *v11;
          v16 = v12;
          goto LABEL_10;
        }
      }

      else
      {
        v7 = *i;
        v8 = *(i + 3);
        v12 = *(i + 2);
        *v11 = v7;
        v14 = *(i + 8);
        v13 = v8;
        if ((SHIBYTE(v12) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }
      }

      sub_19D2AD6B8(__p, v11[0], v11[1]);
LABEL_10:
      v18 = v14;
      v17 = v13;
      v10 = v14;
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v12) < 0)
        {
LABEL_14:
          operator delete(v11[0]);
        }
      }

      else if (SHIBYTE(v12) < 0)
      {
        goto LABEL_14;
      }

      a3 = (v10 + a3);
    }
  }

  return a3;
}

void sub_19D371914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D371930(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }
}

void sub_19D371A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_19D371A58(&a11);
  *(v11 + 8) = v12;
  sub_19D371BCC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D371A58(uint64_t a1)
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
        v7 = *(v4 - 4);
        if (v7)
        {
          *(v4 - 3) = v7;
          operator delete(v7);
        }

        v8 = v4 - 7;
        if (*(v4 - 33) < 0)
        {
          operator delete(*v8);
        }

        v4 -= 7;
      }

      while (v8 != v5);
    }
  }

  return a1;
}

void sub_19D371AD4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    v5 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v5;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v7 = *(a3 + 3);
    v6 = *(a3 + 4);
    v8 = v6 - v7;
    if (v6 == v7)
    {
      goto LABEL_7;
    }

LABEL_5:
    if ((v8 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D2AD6B8(a2, *a3, *(a3 + 1));
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v10 = *(a3 + 3);
  v9 = *(a3 + 4);
  v8 = v9 - v10;
  if (v9 != v10)
  {
    goto LABEL_5;
  }

LABEL_7:
  *(a2 + 48) = *(a3 + 12);
}

void sub_19D371BA8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_19D4546CC(v1);
  _Unwind_Resume(a1);
}

void ****sub_19D371BCC(void ****a1)
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
          v6 = *(v4 - 4);
          if (v6)
          {
            *(v4 - 3) = v6;
            operator delete(v6);
          }

          v7 = v4 - 7;
          if (*(v4 - 33) < 0)
          {
            operator delete(*v7);
          }

          v4 -= 7;
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

void sub_19D371C6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }
}

void sub_19D371D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_19D371A58(&a11);
  *(v11 + 8) = v12;
  sub_19D371BCC(&a9);
  _Unwind_Resume(a1);
}

void sub_19D371D94(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    v5 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v5;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v7 = *(a3 + 3);
    v6 = *(a3 + 4);
    v8 = v6 - v7;
    if (v6 == v7)
    {
      goto LABEL_7;
    }

LABEL_5:
    if ((v8 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D2AD6B8(a2, *a3, *(a3 + 1));
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v10 = *(a3 + 3);
  v9 = *(a3 + 4);
  v8 = v9 - v10;
  if (v9 != v10)
  {
    goto LABEL_5;
  }

LABEL_7:
  *(a2 + 48) = *(a3 + 12);
}

void sub_19D371E68(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_19D4546CC(v1);
  _Unwind_Resume(a1);
}

void ***sub_19D371E8C(void ***a1)
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
        v5 = *(v3 - 4);
        if (v5)
        {
          *(v3 - 3) = v5;
          operator delete(v5);
        }

        v6 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 7;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_19D371F14(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x492492492492492)
  {
    sub_19D2AE2B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v4;
  }

  v16 = a1;
  if (v6)
  {
    if (v6 <= 0x492492492492492)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  __p = 0;
  v13 = 56 * v3;
  v15 = 0;
  sub_19D3720A0(a1, 56 * v3, a2, a3);
  v14 = 56 * v3 + 56;
  sub_19D372210(a1, &__p);
  v7 = *(a1 + 8);
  v8 = v13;
  while (1)
  {
    v9 = v14;
    if (v14 == v8)
    {
      break;
    }

    v14 -= 56;
    v10 = *(v9 - 32);
    if (v10)
    {
      *(v9 - 24) = v10;
      operator delete(v10);
    }

    if (*(v9 - 33) < 0)
    {
      operator delete(*(v9 - 56));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_19D37208C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D372424(va);
  _Unwind_Resume(a1);
}

void sub_19D3720A0(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  if (v5 != *a4)
  {
    if (((v5 - *a4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = *(a4 + 24);
  if (*(a3 + 23) < 0)
  {
    sub_19D2AD6B8(a2, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v6;
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v7;
}

void sub_19D3721EC(void *a1)
{
  v4 = *v2;
  if (!*v2)
  {
    sub_19D2ABE10(a1);
  }

  *(v1 + 32) = v4;
  operator delete(v4);
  sub_19D2ABE10(a1);
}

void sub_19D372210(__int128 **a1, void *a2)
{
  v4 = a2[1];
  v6 = *a1;
  v5 = a1[1];
  v7 = v4 + *a1 - v5;
  v14 = v7;
  if (*a1 != v5)
  {
    v8 = v4 + v6 - v5;
    v9 = *a1;
    do
    {
      sub_19D37232C(a1, v8, v9);
      v9 = (v9 + 56);
      v8 = v14 + 56;
      v14 += 56;
    }

    while (v9 != v5);
    do
    {
      v10 = *(v6 + 3);
      if (v10)
      {
        *(v6 + 4) = v10;
        operator delete(v10);
      }

      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      v6 = (v6 + 56);
    }

    while (v6 != v5);
  }

  a2[1] = v7;
  v11 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_19D37232C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    v5 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v5;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v7 = *(a3 + 3);
    v6 = *(a3 + 4);
    v8 = v6 - v7;
    if (v6 == v7)
    {
      goto LABEL_7;
    }

LABEL_5:
    if ((v8 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D2AD6B8(a2, *a3, *(a3 + 1));
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v10 = *(a3 + 3);
  v9 = *(a3 + 4);
  v8 = v9 - v10;
  if (v9 != v10)
  {
    goto LABEL_5;
  }

LABEL_7:
  *(a2 + 48) = *(a3 + 12);
}

void sub_19D372400(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_19D4546CC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19D372424(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }

    if (*(i - 33) < 0)
    {
      operator delete(*(i - 56));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_19D37249C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x492492492492492)
  {
    sub_19D2AE2B4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v4;
  }

  v16 = a1;
  if (v6)
  {
    if (v6 <= 0x492492492492492)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  __p = 0;
  v13 = 56 * v3;
  v15 = 0;
  sub_19D372628(a1, 56 * v3, a2, a3);
  v14 = 56 * v3 + 56;
  sub_19D372798(a1, &__p);
  v7 = *(a1 + 8);
  v8 = v13;
  while (1)
  {
    v9 = v14;
    if (v14 == v8)
    {
      break;
    }

    v14 -= 56;
    v10 = *(v9 - 32);
    if (v10)
    {
      *(v9 - 24) = v10;
      operator delete(v10);
    }

    if (*(v9 - 33) < 0)
    {
      operator delete(*(v9 - 56));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_19D372614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D372424(va);
  _Unwind_Resume(a1);
}

void sub_19D372628(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  if (v5 != *a4)
  {
    if (((v5 - *a4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v7 = *(a4 + 24);
  if (*(a3 + 23) < 0)
  {
    sub_19D2AD6B8(a2, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v6;
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v7;
}

void sub_19D372774(void *a1)
{
  v4 = *v2;
  if (!*v2)
  {
    sub_19D2ABE10(a1);
  }

  *(v1 + 32) = v4;
  operator delete(v4);
  sub_19D2ABE10(a1);
}

void sub_19D372798(__int128 **a1, void *a2)
{
  v4 = a2[1];
  v6 = *a1;
  v5 = a1[1];
  v7 = v4 + *a1 - v5;
  v14 = v7;
  if (*a1 != v5)
  {
    v8 = v4 + v6 - v5;
    v9 = *a1;
    do
    {
      sub_19D3728B4(a1, v8, v9);
      v9 = (v9 + 56);
      v8 = v14 + 56;
      v14 += 56;
    }

    while (v9 != v5);
    do
    {
      v10 = *(v6 + 3);
      if (v10)
      {
        *(v6 + 4) = v10;
        operator delete(v10);
      }

      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      v6 = (v6 + 56);
    }

    while (v6 != v5);
  }

  a2[1] = v7;
  v11 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_19D3728B4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    v5 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v5;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v7 = *(a3 + 3);
    v6 = *(a3 + 4);
    v8 = v6 - v7;
    if (v6 == v7)
    {
      goto LABEL_7;
    }

LABEL_5:
    if ((v8 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  sub_19D2AD6B8(a2, *a3, *(a3 + 1));
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v10 = *(a3 + 3);
  v9 = *(a3 + 4);
  v8 = v9 - v10;
  if (v9 != v10)
  {
    goto LABEL_5;
  }

LABEL_7:
  *(a2 + 48) = *(a3 + 12);
}

void sub_19D372988(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_19D4546CC(v1);
  _Unwind_Resume(a1);
}

void sub_19D3729AC(double **a1)
{
  v1 = a1[1];
  v2 = *a1;
  if (*a1 != v1)
  {
    v3 = v1 - v2;
    v4 = (v1 - v2) >> 3;
    if (v4 < 2)
    {
      a1[1] = v2;

      sub_19D372C10(a1);
    }

    else
    {
      v5 = 0.0;
      v6 = *a1;
      if (v3 - 8 < 0x18)
      {
        goto LABEL_38;
      }

      v7 = ((v3 - 8) >> 3) + 1;
      v6 = &v2->f64[v7 & 0x3FFFFFFFFFFFFFFCLL];
      v8 = v2 + 1;
      v9 = 0uLL;
      v10 = v7 & 0x3FFFFFFFFFFFFFFCLL;
      v11 = 0uLL;
      do
      {
        v9 = vaddq_f64(v8[-1], v9);
        v11 = vaddq_f64(*v8, v11);
        v8 += 2;
        v10 -= 4;
      }

      while (v10);
      v5 = vaddvq_f64(vaddq_f64(v11, v9));
      if (v7 != (v7 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_38:
        do
        {
          v12 = *v6++;
          v5 = v12 + v5;
        }

        while (v6 != v1);
      }

      if (v2 < v1)
      {
        v13 = &v2->f64[1];
        if (v1 > &v2->f64[1])
        {
          v13 = a1[1];
        }

        v14 = v13 + ~v2;
        v15 = *a1;
        if (v14 <= 0x17)
        {
          goto LABEL_15;
        }

        v16 = (v14 >> 3) + 1;
        v15 = &v2->f64[v16 & 0x3FFFFFFFFFFFFFFCLL];
        __asm { FMOV            V2.2D, #1.0 }

        v22 = vdivq_f64(_Q2, vdupq_lane_s64(*&v5, 0));
        v23 = v2 + 1;
        v24 = v16 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v25 = vmulq_f64(*v23, v22);
          v23[-1] = vmulq_f64(v23[-1], v22);
          *v23 = v25;
          v23 += 2;
          v24 -= 4;
        }

        while (v24);
        if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_15:
          v26 = 1.0 / v5;
          do
          {
            *v15 = *v15 * v26;
            ++v15;
          }

          while (v15 < v1);
        }
      }

      v27 = v4 - 1;
      if (v27)
      {
        if (!(v27 >> 61))
        {
          operator new();
        }

        sub_19D2AE2B4();
      }

      v28 = (v1 - 8);
      if (v28 != v2)
      {
        v29 = &v2->f64[1];
        v30 = v2->f64[0];
        MEMORY[0] = *&v2->f64[0];
        if (&v2->f64[1] == v28)
        {
          *a1 = 0;
          a1[1] = 0;
          a1[2] = 0;
          v33 = v2;

          goto LABEL_30;
        }

        v31 = 8;
        do
        {
          v32 = *v29++;
          v30 = v32 + v30;
          *v31 = v30;
          v31 += 8;
        }

        while (v29 != v28);
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      if (v2)
      {
        v33 = v2;

LABEL_30:
        operator delete(v33);
      }
    }
  }
}

void sub_19D372C10(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 16) - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    v6 = v4 >> 3;
    if (v1 != v2)
    {
      if (!(v6 >> 61))
      {
        operator new();
      }

      sub_19D2AD81C();
    }

    if (v4 < v3)
    {
      v7 = 8 * v6;
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

void sub_19D372D08(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v9 = *(v6 - 3);
        v6 -= 3;
        v8 = v9;
        if (v9)
        {
          v10 = *(v4 - 2);
          v7 = v8;
          if (v10 != v8)
          {
            do
            {
              v11 = *(v10 - 4);
              if (v11)
              {
                *(v10 - 3) = v11;
                operator delete(v11);
              }

              v12 = v10 - 7;
              if (*(v10 - 33) < 0)
              {
                operator delete(*v12);
              }

              v10 -= 7;
            }

            while (v12 != v8);
            v7 = *v6;
          }

          *(v4 - 2) = v8;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ***sub_19D372E00(void ***result)
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
          v4 = sub_19D3715C0(v4 - 96);
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

void **sub_19D372E78(void **a1)
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
        v3 = sub_19D3715C0(v3 - 96);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_19D372ED4(uint64_t *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = *a1;
    v3 = a1[5];
    v4 = a1[2];
    v5 = *(*a1 + 2496);
    if (v4 >= 0x40)
    {
      v17 = 0;
      do
      {
        v18 = v5;
        v5 = (v5 + 1) % 0x270;
        v19 = *(v2 + 4 * v5);
        v20 = v19 & 0x7FFFFFFE | *(v2 + 4 * v18) & 0x80000000;
        if (v19)
        {
          v21 = -1727483681;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21 ^ *(v2 + 4 * ((v18 + 397) % 0x270)) ^ (v20 >> 1);
        *(v2 + 4 * v18) = v22;
        v23 = ((v22 ^ (v22 >> 11)) << 7) & 0x9D2C5680 ^ v22 ^ (v22 >> 11);
        v24 = (v23 << 15) & 0xEFC60000 ^ v23 ^ (((v23 << 15) & 0xEFC60000 ^ v23) >> 18);
      }

      while (v3 <= v24 || ++v17 != v1);
      v6 = a1[7] & v24;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = v5;
        v5 = (v5 + 1) % 0x270;
        v9 = *(v2 + 4 * v5);
        v10 = v9 & 0x7FFFFFFE | *(v2 + 4 * v8) & 0x80000000;
        if (v9)
        {
          v11 = -1727483681;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11 ^ *(v2 + 4 * ((v8 + 397) % 0x270)) ^ (v10 >> 1);
        *(v2 + 4 * v8) = v12;
        v13 = ((v12 ^ (v12 >> 11)) << 7) & 0x9D2C5680 ^ v12 ^ (v12 >> 11);
        v14 = (v13 << 15) & 0xEFC60000 ^ v13 ^ (((v13 << 15) & 0xEFC60000 ^ v13) >> 18);
        if (v3 > v14)
        {
          v6 = (v6 << v4) + (a1[7] & v14);
          if (++v7 == v1)
          {
            break;
          }
        }
      }
    }

    *(v2 + 2496) = v5;
    v15 = a1[3];
    if (v1 < v15)
    {
      goto LABEL_20;
    }

    return v6;
  }

  v6 = 0;
  v15 = a1[3];
  if (!v15)
  {
    return v6;
  }

LABEL_20:
  v25 = *a1;
  v26 = a1[6];
  v27 = a1[2];
  v28 = *(*a1 + 2496);
  if (v27 >= 0x3F)
  {
    do
    {
      v37 = v28;
      v28 = (v28 + 1) % 0x270;
      v38 = *(v25 + 4 * v28);
      v39 = v38 & 0x7FFFFFFE | *(v25 + 4 * v37) & 0x80000000;
      if (v38)
      {
        v40 = -1727483681;
      }

      else
      {
        v40 = 0;
      }

      v41 = v40 ^ *(v25 + 4 * ((v37 + 397) % 0x270)) ^ (v39 >> 1);
      *(v25 + 4 * v37) = v41;
      v42 = ((v41 ^ (v41 >> 11)) << 7) & 0x9D2C5680 ^ v41 ^ (v41 >> 11);
      v43 = (v42 << 15) & 0xEFC60000 ^ v42 ^ (((v42 << 15) & 0xEFC60000 ^ v42) >> 18);
    }

    while (v26 <= v43 || ++v1 != v15);
    v44 = *(a1 + 15) & v43;
    *(v25 + 2496) = v28;
    return v44;
  }

  else
  {
    v29 = v27 + 1;
    while (1)
    {
      v30 = v28;
      v28 = (v28 + 1) % 0x270;
      v31 = *(v25 + 4 * v28);
      v32 = v31 & 0x7FFFFFFE | *(v25 + 4 * v30) & 0x80000000;
      if (v31)
      {
        v33 = -1727483681;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33 ^ *(v25 + 4 * ((v30 + 397) % 0x270)) ^ (v32 >> 1);
      *(v25 + 4 * v30) = v34;
      v35 = ((v34 ^ (v34 >> 11)) << 7) & 0x9D2C5680 ^ v34 ^ (v34 >> 11);
      v36 = (v35 << 15) & 0xEFC60000 ^ v35 ^ (((v35 << 15) & 0xEFC60000 ^ v35) >> 18);
      if (v26 > v36)
      {
        v6 = (v6 << v29) + (*(a1 + 15) & v36);
        if (++v1 == v15)
        {
          break;
        }
      }
    }

    *(v25 + 2496) = v28;
    return v6;
  }
}

uint64_t sub_19D373204(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = 0;
  *result = 0;
  *(result + 16) = 0;
  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v4 = *(a2 + 24);
  *(result + 40) = 0;
  *(result + 24) = v4;
  *(result + 32) = 0;
  *(result + 48) = 0;
  v5 = *(a3 + 8);
  if (v5 != *a3)
  {
    if (((v5 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 56) = *(a3 + 24);
  return result;
}

void sub_19D37330C(void *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *v2 = v4;
    operator delete(v4);
  }

  sub_19D2ABE10(a1);
}

uint64_t sub_19D373338(uint64_t result, int a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 24) = 0;
  *(result + 16) = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_19D373464(uint64_t result, int a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 24) = 0;
  *(result + 16) = 0;
  if (a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  return result;
}

id sub_19D3742F4(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = objc_msgSend_mutableCopy(v3, v4, v5, v6);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = objc_msgSend_copy(v3, v8, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v27, v31, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 == v17)
        {
          v19 = *(*(&v27 + 1) + 8 * i);
          if (objc_msgSend_containsObject_(*(a1 + 32), v14, v19, v15))
          {
            continue;
          }
        }

        else
        {
          objc_enumerationMutation(v11);
          v19 = *(*(&v27 + 1) + 8 * i);
          if (objc_msgSend_containsObject_(*(a1 + 32), v20, v19, v21))
          {
            continue;
          }
        }

        objc_msgSend_removeObject_(v7, v14, v19, v15);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v27, v31, 16);
    }

    while (v16);
  }

  v25 = objc_msgSend_copy(v7, v22, v23, v24);

  return v25;
}

double sub_19D374E94()
{
  if (qword_1EB0147F0 != -1)
  {
    sub_19D4546DC();
  }

  v0 = pthread_getspecific(qword_1EB0147F8);
  v1 = pthread_getspecific(qword_1EB014800);
  v2 = v1;
  if (v0)
  {
    if (v1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v2 = malloc_type_malloc(0x10uLL, 0x1000040D9A13B51uLL);
    pthread_setspecific(qword_1EB014800, v2);
    v4.tv_sec = 0;
    *&v4.tv_usec = 0;
    if (*v0)
    {
      goto LABEL_6;
    }

LABEL_9:
    *v0 = 1;
    gettimeofday(v2, 0);
    goto LABEL_6;
  }

  v0 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  pthread_setspecific(qword_1EB0147F8, v0);
  *v0 = 0;
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_5:
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  if (!*v0)
  {
    goto LABEL_9;
  }

LABEL_6:
  gettimeofday(&v4, 0);
  return (v4.tv_sec - v2->tv_sec) + (v4.tv_usec - v2->tv_usec) * 0.000001;
}

uint64_t sub_19D374FC0()
{
  v0 = MEMORY[0x1E69E9B38];
  pthread_key_create(&qword_1EB0147F8, MEMORY[0x1E69E9B38]);

  return pthread_key_create(&qword_1EB014800, v0);
}

__darwin_time_t sub_19D375018()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec ^ v1.tv_usec;
}

uint64_t sub_19D3750B8(uint64_t a1)
{
  *a1 = &unk_1F10B9BD8;
  v2 = *(a1 + 360);
  if (v2)
  {
    do
    {
      while (1)
      {
        v3 = *v2;
        v4 = v2[6];
        if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
        }

        if (*(v2 + 39) < 0)
        {
          break;
        }

        operator delete(v2);
        v2 = v3;
        if (!v3)
        {
          goto LABEL_9;
        }
      }

      operator delete(v2[2]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

LABEL_9:
  v5 = *(a1 + 344);
  *(a1 + 344) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 336);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 320);
  *(a1 + 320) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  sub_19D2A3E48(a1 + 296, *(a1 + 304));
  v8 = *(a1 + 272);
  if (v8)
  {
    do
    {
      v11 = *v8;
      if (*(v8 + 63) < 0)
      {
        operator delete(v8[5]);
        if (*(v8 + 39) < 0)
        {
LABEL_27:
          operator delete(v8[2]);
        }
      }

      else if (*(v8 + 39) < 0)
      {
        goto LABEL_27;
      }

      operator delete(v8);
      v8 = v11;
    }

    while (v11);
  }

  v9 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return sub_19D2A3D18(a1);
}

void sub_19D375298(uint64_t a1)
{
  v1 = sub_19D3750B8(a1);

  operator delete(v1);
}

uint64_t sub_19D3752C0(uint64_t a1, char *a2)
{
  v4 = (a1 + 16);
  sub_19D2A3E48(a1 + 8, *(a1 + 16));
  *(a1 + 8) = v4;
  *v4 = 0;
  v6 = a1 + 40;
  v5 = *(a1 + 40);
  *(a1 + 24) = 0;
  sub_19D2A3E48(a1 + 32, v5);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = a1 + 40;
  if (!*(a1 + 280))
  {
    goto LABEL_6;
  }

  v7 = *(a1 + 272);
  if (v7)
  {
    do
    {
      v10 = *v7;
      if (*(v7 + 63) < 0)
      {
        operator delete(v7[5]);
        if (*(v7 + 39) < 0)
        {
LABEL_14:
          operator delete(v7[2]);
        }
      }

      else if (*(v7 + 39) < 0)
      {
        goto LABEL_14;
      }

      operator delete(v7);
      v7 = v10;
    }

    while (v10);
  }

  *(a1 + 272) = 0;
  v8 = *(a1 + 264);
  if (v8)
  {
    bzero(*(a1 + 256), 8 * v8);
  }

  *(a1 + 280) = 0;
LABEL_6:
  sub_19D2A3E48(a1 + 296, *(a1 + 304));
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = a1 + 304;
  if (*(a1 + 368))
  {
    v9 = *(a1 + 360);
    if (v9)
    {
      do
      {
        while (1)
        {
          v11 = *v9;
          v12 = v9[6];
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          if (*(v9 + 39) < 0)
          {
            break;
          }

          operator delete(v9);
          v9 = v11;
          if (!v11)
          {
            goto LABEL_21;
          }
        }

        operator delete(v9[2]);
        operator delete(v9);
        v9 = v11;
      }

      while (v11);
    }

LABEL_21:
    *(a1 + 360) = 0;
    v13 = *(a1 + 352);
    if (v13)
    {
      bzero(*(a1 + 344), 8 * v13);
    }

    *(a1 + 368) = 0;
  }

  LODWORD(v14) = a2[23];
  if ((v14 & 0x80000000) != 0)
  {
    sub_19D2AD6B8(&v67, *a2, *(a2 + 1));
    LOBYTE(v14) = a2[23];
  }

  else
  {
    v67 = *a2;
  }

  *(&v66.__r_.__value_.__s + 23) = 4;
  strcpy(&v66, "main");
  v14 = v14;
  if ((v14 & 0x80u) == 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 1);
  }

  if (v14)
  {
    v16 = &v15[v14];
    v17 = v15;
    v18 = &v15[v14];
    do
    {
      v19 = v17;
      while (1)
      {
        v20 = *v17++;
        if (v20 == 35)
        {
          break;
        }

        v19 = v17;
        if (v17 == v16)
        {
          v19 = v18;
          goto LABEL_39;
        }
      }

      v18 = v19;
    }

    while (v17 != v16);
LABEL_39:
    if (v19 != v16)
    {
      v21 = v19 - v15;
      if (v19 - v15 != -1)
      {
        if (v14 >= v21)
        {
          v22 = v19 - v15;
        }

        else
        {
          v22 = v14;
        }

        if (v22 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_19D2AD774();
        }

        if (v22 >= 0x17)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = v22;
        if (v19 == v15)
        {
          __p.__r_.__value_.__s.__data_[v22] = 0;
          if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          memmove(&__p, v15, v22);
          __p.__r_.__value_.__s.__data_[v22] = 0;
          if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_48:
            v67 = __p;
            v23 = a2[23];
            if ((v23 & 0x8000000000000000) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_159;
          }
        }

        operator delete(v67.__r_.__value_.__l.__data_);
        v67 = __p;
        v23 = a2[23];
        if ((v23 & 0x8000000000000000) == 0)
        {
LABEL_49:
          if (v21 < v23)
          {
            v24 = v21 + 1;
            v25 = v23 - (v21 + 1);
            if (v25 <= 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_51;
            }

            goto LABEL_161;
          }

          goto LABEL_168;
        }

LABEL_159:
        v23 = *(a2 + 1);
        if (v23 > v21)
        {
          a2 = *a2;
          v24 = v21 + 1;
          v25 = v23 - (v21 + 1);
          if (v25 <= 0x7FFFFFFFFFFFFFF7)
          {
LABEL_51:
            v6 = a1 + 40;
            if (v25 >= 0x17)
            {
              operator new();
            }

            *(&__p.__r_.__value_.__s + 23) = v25;
            if (v23 == v24)
            {
              __p.__r_.__value_.__s.__data_[v23 - v21 - 1] = 0;
              if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_54:
                v66 = __p;
                goto LABEL_55;
              }
            }

            else
            {
              memmove(&__p, &a2[v21 + 1], v25);
              __p.__r_.__value_.__s.__data_[v23 - v21 - 1] = 0;
              if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_54;
              }
            }

            operator delete(v66.__r_.__value_.__l.__data_);
            goto LABEL_54;
          }

LABEL_161:
          sub_19D2AD774();
        }

LABEL_168:
        sub_19D2AEA14();
      }
    }
  }

LABEL_55:
  size = SHIBYTE(v67.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v67.__r_.__value_.__l.__size_;
    if (v67.__r_.__value_.__l.__size_ <= 3)
    {
      goto LABEL_60;
    }
  }

  else if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 4)
  {
    goto LABEL_60;
  }

  v27 = std::string::compare(&v67, size - 4, 4uLL, ".mil");
  if (!v27)
  {
    sub_19D3760C0(v27);
  }

LABEL_60:
  *(&__p.__r_.__value_.__s + 23) = 11;
  strcpy(&__p, "E5Inference");
  E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
  if (v68)
  {
    operator new();
  }

  v68 = 0;
  v28 = *(a1 + 336);
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v29 = v68;
  v68 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v30 = *(E5RT::ExecutionStreamOperation::GetInputPorts(*(a1 + 328)) + 16);
  if (v30)
  {
    while (1)
    {
      PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(v30[5]);
      E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
      E5RT::TensorDescriptor::AllocateMemory();
      sub_19D378360((a1 + 344), (v30 + 2));
      v32 = __p.__r_.__value_.__r.__words[0];
      __p.__r_.__value_.__r.__words[0] = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      __p.__r_.__value_.__r.__words[0] = (v30 + 2);
      v33 = sub_19D3789E8((a1 + 344), (v30 + 2))[6];
      v64 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(v33 + 1, 1uLL, memory_order_relaxed);
      }

      E5RT::IOPort::BindMemoryObject();
      v34 = v64;
      if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v34);
      }

      v35 = *(v30 + 39);
      v36 = v30[2];
      v37 = v35 >= 0 ? (v30 + 2) : v30[2];
      v38 = v35 >= 0 ? *(v30 + 39) : v30[3];
      if (v38)
      {
        v39 = &v37[v38];
        v40 = v37[v38 - 1] != 110 || &v37[v38 - 1] == v37;
        if (!v40 && *(v39 - 2) == 105 && v39 - 2 != v37 && *(v39 - 3) == 95)
        {
          break;
        }
      }

      v41 = -8;
      v42 = v38;
      v43 = "";
      while (v42 && v41)
      {
        v44 = *--v43;
        v45 = v37[--v42];
        ++v41;
        if (v45 != v44)
        {
          goto LABEL_98;
        }
      }

      if (v43 == "_history")
      {
        if (v38 >= v38 - 8)
        {
          v46 = v38 - 8;
        }

        else
        {
          v46 = v38;
        }

        if (v46 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_19D2AD774();
        }

        if (v46 >= 0x17)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = v46;
        if (!v46)
        {
          goto LABEL_129;
        }

LABEL_128:
        memmove(&__p, v37, v46);
LABEL_129:
        __p.__r_.__value_.__s.__data_[v46] = 0;
        v68 = v30 + 2;
        v50 = sub_19D378E18((v6 + 216), (v30 + 2));
        if (*(v50 + 63) < 0)
        {
          v51 = v50;
          operator delete(v50[5]);
          v50 = v51;
        }

        *(v50 + 5) = __p;
        goto LABEL_72;
      }

LABEL_98:
      if ((v35 & 0x80000000) != 0)
      {
        if (v30[3] != 16)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v36 = v30 + 2;
        if (v35 != 16)
        {
          goto LABEL_71;
        }
      }

      v48 = *v36;
      v47 = v36[1];
      if (v48 != 0x5F79726F74736968 || v47 != 0x6B73616D5F646170)
      {
LABEL_71:
        sub_19D2A4A4C(a1 + 8, v30 + 2);
      }

LABEL_72:
      v30 = *v30;
      if (!v30)
      {
        goto LABEL_132;
      }
    }

    if (v38 >= v38 - 3)
    {
      v46 = v38 - 3;
    }

    else
    {
      v46 = v38;
    }

    if (v46 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_19D2AD774();
    }

    if (v46 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v46;
    if (v46)
    {
      goto LABEL_128;
    }

    goto LABEL_129;
  }

LABEL_132:
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*(a1 + 328));
  for (i = *(OutputPorts + 2); i; i = *i)
  {
    sub_19D2A4A4C(a1 + 32, i + 2);
    v54 = E5RT::IOPort::GetPortDescriptorRef(i[5]);
    E5RT::OperandDescriptor::TensorDescriptor(v54);
    E5RT::TensorDescriptor::AllocateMemory();
    sub_19D378360((a1 + 344), (i + 2));
    v55 = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = 0;
    if (v55)
    {
      (*(*v55 + 8))(v55);
    }

    __p.__r_.__value_.__r.__words[0] = (i + 2);
    v56 = sub_19D3789E8((a1 + 344), (i + 2))[6];
    v63 = v56;
    if (v56)
    {
      atomic_fetch_add_explicit(v56 + 1, 1uLL, memory_order_relaxed);
    }

    OutputPorts = E5RT::IOPort::BindMemoryObject();
    if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v63->__on_zero_shared)(v63);
      std::__shared_weak_count::__release_weak(v63);
    }
  }

  E5RT::ExecutionStream::CreateExecutionStream(&__p, OutputPorts);
  v57 = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  v58 = *(a1 + 320);
  *(a1 + 320) = v57;
  if (v58)
  {
    (*(*v58 + 8))(v58);
    v59 = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = 0;
    if (v59)
    {
      (*(*v59 + 8))(v59);
    }
  }

  v60 = *(a1 + 336);
  v62 = v60;
  if (v60)
  {
    atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (!v62 || atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_150;
    }

LABEL_153:
    operator delete(v66.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 1;
    }

LABEL_154:
    operator delete(v67.__r_.__value_.__l.__data_);
    return 1;
  }

  (v62->__on_zero_shared)(v62);
  std::__shared_weak_count::__release_weak(v62);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_153;
  }

LABEL_150:
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_154;
  }

  return 1;
}

void sub_19D375EF8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a29 < 0)
  {
    operator delete(__p);
    if ((a36 & 0x80000000) == 0)
    {
LABEL_3:
      __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a31);
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
LABEL_4:
    v38 = sub_19D398AE4();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_19D45478C();
    }

    goto LABEL_10;
  }

LABEL_8:
  v39 = sub_19D398AE4();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    sub_19D454758();
  }

LABEL_10:
  __cxa_end_catch();
  JUMPOUT(0x19D375CA8);
}

void sub_19D3760C0(E5RT::E5CompilerOptions *a1)
{
  v1[4] = *MEMORY[0x1E69E9840];
  E5RT::E5CompilerOptions::Create(v1, a1);
  operator new();
}

void sub_19D3764AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (!a19)
  {
    _Unwind_Resume(exception_object);
  }

  (*(*a19 + 8))(a19);
  _Unwind_Resume(exception_object);
}

uint64_t sub_19D37661C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

E5RT::ExecutionStream *sub_19D376694(uint64_t a1)
{
  result = *(a1 + 320);
  if (result)
  {
    E5RT::ExecutionStream::ResetStream(result);
    result = *(a1 + 320);
    *(a1 + 320) = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

BOOL sub_19D376728(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 320))
  {
    v22 = sub_19D398AE4();
    result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_19D45490C();
      return 0;
    }

    return result;
  }

  sub_19D42AC20(a1, a3, __p);
  v7 = *(a1 + 304);
  if (!v7)
  {
LABEL_26:
    v27 = __p;
    v18 = sub_19D3789E8((a1 + 344), __p);
    DataSpan = E5RT::BufferObject::GetDataSpan(v18[5]);
    if (v20)
    {
      memmove(DataSpan, a2, v20);
    }

    sub_19D2A4A4C(a1 + 296, __p);
    *(a1 + 56) = *(a4 + 24);
    result = 1;
    if ((v26 & 0x80000000) == 0)
    {
      return result;
    }

LABEL_34:
    v24 = result;
    operator delete(__p[0]);
    return v24;
  }

  if ((v26 & 0x80u) == 0)
  {
    v8 = v26;
  }

  else
  {
    v8 = __p[1];
  }

  if ((v26 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  while (1)
  {
    v10 = *(v7 + 55);
    if (v10 >= 0)
    {
      v11 = *(v7 + 55);
    }

    else
    {
      v11 = v7[5];
    }

    if (v10 >= 0)
    {
      v12 = (v7 + 4);
    }

    else
    {
      v12 = v7[4];
    }

    if (v11 >= v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v11;
    }

    v14 = memcmp(v9, v12, v13);
    v15 = v8 < v11;
    if (v14)
    {
      v15 = v14 < 0;
    }

    if (v15)
    {
      goto LABEL_9;
    }

    v16 = memcmp(v12, v9, v13);
    v17 = v11 < v8;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      break;
    }

    ++v7;
LABEL_9:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_26;
    }
  }

  v23 = sub_19D398AE4();
  result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_19D454888();
    result = 0;
    if ((v26 & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (v26 < 0)
  {
    goto LABEL_34;
  }

  return result;
}

void sub_19D376918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19D376938(uint64_t a1, CFArrayRef theArray)
{
  v2 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count % *(a1 + 56))
    {
      goto LABEL_3;
    }
  }

  else
  {
    Count = 0;
    if (0uLL % *(a1 + 56))
    {
LABEL_3:
      v5 = sub_19D398AE4();
      result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_19D454940();
        return 0;
      }

      return result;
    }
  }

  HIBYTE(__p[2]) = 16;
  strcpy(__p, "history_pad_mask");
  v7 = sub_19D2B0B4C((a1 + 344), __p);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_21:
    v12 = 0;
    goto LABEL_32;
  }

  v20 = v7;
  operator delete(__p[0]);
  if (!v20)
  {
    goto LABEL_21;
  }

LABEL_8:
  HIBYTE(__p[2]) = 16;
  strcpy(__p, "history_pad_mask");
  v86[0] = __p;
  v8 = sub_19D379388((a1 + 344), __p);
  DataSpan = E5RT::BufferObject::GetDataSpan(v8[5]);
  v11 = v10;
  v12 = v10 >> 2;
  if (v10 >= 4)
  {
    v13 = DataSpan;
  }

  else
  {
    v13 = 0;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v14 = Count / *(a1 + 56);
  if (v14 >= v12)
  {
    v14 = v12;
  }

  v15 = 4 * v14;
  if ((4 * v14) >= 1)
  {
    bzero(v13, 4 * v14);
  }

  v16 = (v11 - v15) >> 2;
  if (v16 >= 1)
  {
    v17 = &v13[v15];
    if (v16 >= 8)
    {
      v21 = 0;
      v18 = &v17[4 * (v16 & 0x7FFFFFFFFFFFFFF8)];
      v19 = ((v11 - v15) >> 2) & 7;
      __asm { FMOV            V0.4S, #1.0 }

      v26 = v16 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v27 = &v17[4 * v21];
        *v27 = _Q0;
        *(v27 + 1) = _Q0;
        v21 += 8;
        v26 -= 8;
      }

      while (v26);
      if (v16 == (v16 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v18 = &v13[v15];
      v19 = (v11 - v15) >> 2;
    }

    *v18 = 1065353216;
    if (v19 >= 2)
    {
      *(v18 + 1) = 1065353216;
      if (v19 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        *(v18 + 2) = 1065353216;
        if ((v19 & 6) != 2)
        {
          *(v18 + 3) = 1065353216;
          if (v19 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            *(v18 + 4) = 1065353216;
            if ((v19 & 6) != 4)
            {
              *(v18 + 5) = 1065353216;
              if (v19 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                *(v18 + 6) = 1065353216;
              }
            }
          }
        }
      }
    }
  }

LABEL_32:
  if (!Count)
  {
    for (i = *(a1 + 272); i; i = *i)
    {
      __p[0] = i + 2;
      v74 = sub_19D3789E8((a1 + 344), (i + 2));
      v75 = E5RT::BufferObject::GetDataSpan(v74[5]);
      if (v76 < 4)
      {
        v75 = 0;
      }

      v77 = v76 & 0xFFFFFFFFFFFFFFFCLL;
      if (v77 >= 1)
      {
        bzero(v75, v77);
      }
    }

    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, Count - 1);
  v29 = *(a1 + 272);
  if (!v29)
  {
    return 1;
  }

  v30 = ValueAtIndex;
  v84 = Count;
  while (1)
  {
    sub_19D37D87C(v30 + 16, v29 + 5, __p);
    v31 = (LODWORD(__p[0]) * LODWORD(__p[1]) * LODWORD(__p[2]) * v89 * v90);
    v85 = v31 << 32;
    InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
    PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(InputPortRef);
    v34 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
    __p[0] = v29 + 2;
    v35 = sub_19D3789E8((a1 + 344), (v29 + 2));
    v36 = E5RT::BufferObject::GetDataSpan(v35[5]);
    if (v37 >= 4)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0;
    }

    v87[0] = v38;
    v87[1] = v37 >> 2;
    v39 = *(v29 + 39);
    v40 = v29[2];
    if (v39 >= 0)
    {
      v40 = (v29 + 2);
    }

    if (v39 < 0)
    {
      v39 = v29[3];
    }

    if (!v39 || ((v41 = v40 + v39, *(v40 + v39 - 1) == 110) ? (_ZF = (v40 + v39 - 1) == v40) : (_ZF = 1), _ZF || (*(v41 - 2) == 105 ? (v43 = v41 - 2 == v40) : (v43 = 1), v43 || *(v41 - 3) != 95)))
    {
      v46 = v40 - 1;
      v47 = -8;
      v48 = "";
      while (v39 && v47)
      {
        v49 = *--v48;
        v50 = *(v46 + v39--);
        ++v47;
        if (v50 != v49)
        {
          goto LABEL_119;
        }
      }

      if (v48 != "_history")
      {
LABEL_119:
        v78 = sub_19D398AE4();
        if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        sub_19D454B28();
        return 0;
      }

      NumElements = E5RT::TensorDescriptor::GetNumElements(v34);
      v52 = v12 * *(a1 + 56);
      if (NumElements == v52 * v31)
      {
        v83 = v30;
        if (!v52)
        {
          goto LABEL_109;
        }

        v53 = 0;
        if (v52 >= v84)
        {
          v52 = v84;
        }

        v54 = v84 - v52;
        if (v52 <= 1)
        {
          v55 = 1;
        }

        else
        {
          v55 = v52;
        }

        while (1)
        {
          v56 = CFArrayGetValueAtIndex(v2, v54 + v53);
          sub_19D37D87C(v56 + 16, v29 + 5, __p);
          if (v85 != (LODWORD(__p[0]) * LODWORD(__p[1]) * LODWORD(__p[2]) * v89 * v90) << 32)
          {
            break;
          }

          v57 = v2;
          v58 = *(a1 + 56);
          v59 = v53 / v58;
          __p[0] = sub_19D37726C(v87, v58, v53 % v58);
          __p[1] = v60;
          v61 = v12;
          v62 = sub_19D37726C(__p, v12, v59);
          v64 = v63;
          v65 = sub_19D37D73C(v56 + 16, v29 + 5);
          if (v64)
          {
            memmove(v62, v65, 4 * v64);
          }

          ++v53;
          v12 = v61;
          v2 = v57;
          if (v55 == v53)
          {
            goto LABEL_109;
          }
        }

        v79 = sub_19D398AE4();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_125;
        }

        return 0;
      }

      v82 = sub_19D398AE4();
      if (!os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      sub_19D454AB0();
      return 0;
    }

    sub_19D37D87C(v30 + 16, v29 + 5, __p);
    sub_19D377180(v86, v34, 1);
    if (__p[0] == 1)
    {
      if (__p[1] == 1)
      {
        if (__p[2] == 1)
        {
          if (v89 == 1)
          {
            v44 = v90 == 1;
            v45 = 4;
            if (v90 == 1)
            {
              v45 = 5;
            }
          }

          else
          {
            v44 = 0;
            v45 = 3;
          }
        }

        else
        {
          v44 = 0;
          v45 = 2;
        }
      }

      else
      {
        v44 = 0;
        v45 = 1;
      }
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    if (v86[0] == 1)
    {
      if (v86[1] == 1)
      {
        if (v86[2] == 1)
        {
          if (v86[3] == 1)
          {
            v66 = 4;
            if (v86[4] == 1)
            {
              v66 = 5;
            }
          }

          else
          {
            v66 = 3;
          }
        }

        else
        {
          v66 = 2;
        }
      }

      else
      {
        v66 = 1;
      }
    }

    else
    {
      v66 = 0;
    }

    if (v44)
    {
LABEL_92:
      if (v66 != 5)
      {
        goto LABEL_126;
      }
    }

    else
    {
      while (v66 != 5)
      {
        if (__p[v45] != v86[v66])
        {
          goto LABEL_126;
        }

        do
        {
          ++v45;
        }

        while (v45 != 5 && __p[v45] == 1);
        do
        {
          ++v66;
        }

        while (v66 != 5 && v86[v66] == 1);
        if (v45 == 5)
        {
          goto LABEL_92;
        }
      }

      if (v45 != 5)
      {
LABEL_126:
        v81 = sub_19D398AE4();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          sub_19D4549C0();
        }

        return 0;
      }
    }

    v83 = v30;
    v67 = *(a1 + 56);
    if (v67)
    {
      break;
    }

LABEL_109:
    v29 = *v29;
    result = 1;
    v30 = v83;
    if (!v29)
    {
      return result;
    }
  }

  v68 = 0;
  while (1)
  {
    v69 = CFArrayGetValueAtIndex(v2, v84 + v68 - v67);
    sub_19D37D87C(v69 + 16, v29 + 5, __p);
    if (v85 != (LODWORD(__p[0]) * LODWORD(__p[1]) * LODWORD(__p[2]) * v89 * v90) << 32)
    {
      break;
    }

    v70 = sub_19D37D73C(v69 + 16, v29 + 5);
    v71 = sub_19D37726C(v87, *(a1 + 56), v68);
    if (v72)
    {
      memmove(v71, v70, 4 * v72);
    }

    ++v68;
    v67 = *(a1 + 56);
    if (v68 >= v67)
    {
      goto LABEL_109;
    }
  }

  v80 = sub_19D398AE4();
  if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
  {
    return 0;
  }

LABEL_125:
  sub_19D454A38();
  return 0;
}

void sub_19D377160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19D377180(uint64_t a1, E5RT::TensorDescriptor *this, uint64_t a3)
{
  TensorShape = E5RT::TensorDescriptor::GetTensorShape(this);
  v6 = *TensorShape;
  v7 = *(TensorShape + 8);
  v8 = v7 - *TensorShape;
  if ((v8 >> 3) < 6)
  {
    memset_pattern16(__b, &unk_19D4758F0, 0x28uLL);
    if (v7 != v6)
    {
      memcpy(__b, v6, v8);
    }

    if (a3)
    {
      *&__b[0] = 1;
    }

    result = *__b;
    v11 = __b[1];
    *a1 = __b[0];
    *(a1 + 16) = v11;
    *(a1 + 32) = v13;
  }

  else
  {
    v9 = sub_19D398AE4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_19D454BA0(v8 >> 3, v9);
    }

    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_19D37726C(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = v4 / a2;
  if (v4 != v5 * a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_19D379784(exception, "index out of bounds");
    sub_19D454C28();
  }

  if (v4 < a2 || (v4 > v5 * a3 ? (v6 = v5 * a3 + v5 > v4) : (v6 = 1), v6))
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    sub_19D379784(v8, "index out of bounds");
    sub_19D454C28();
  }

  return *a1 + 4 * v5 * a3;
}

BOOL sub_19D377328(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 320))
  {
    v33 = sub_19D398AE4();
    result = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_19D454D20();
      return 0;
    }

    return result;
  }

  v3 = *(a1 + 8);
  if (*(a1 + 24) == *(a1 + 312))
  {
    v5 = (a1 + 16);
    if (v3 == (a1 + 16))
    {
LABEL_85:
      if (((*(*a1 + 112))(a1, a2) & 1) == 0)
      {
        return 0;
      }

      E5RT::ExecutionStream::ExecuteStreamSync(*(a1 + 320));
      sub_19D2A3E48(a1 + 296, *(a1 + 304));
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
      result = 1;
      *(a1 + 296) = a1 + 304;
      return result;
    }

    v6 = *(a1 + 296);
    v7 = *(a1 + 8);
    while (1)
    {
      v8 = *(v7 + 55);
      if (v8 >= 0)
      {
        v9 = *(v7 + 55);
      }

      else
      {
        v9 = v7[5];
      }

      v10 = *(v6 + 55);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = v6[5];
      }

      if (v9 != v10)
      {
        break;
      }

      v12 = v8 >= 0 ? v7 + 4 : v7[4];
      v13 = v11 >= 0 ? v6 + 4 : v6[4];
      if (memcmp(v12, v13, v9))
      {
        break;
      }

      v14 = v7[1];
      v15 = v7;
      if (v14)
      {
        do
        {
          v7 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v7 = v15[2];
          v16 = *v7 == v15;
          v15 = v7;
        }

        while (!v16);
      }

      v17 = v6[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v6[2];
          v16 = *v18 == v6;
          v6 = v18;
        }

        while (!v16);
      }

      v6 = v18;
      if (v7 == v5)
      {
        goto LABEL_85;
      }
    }
  }

  v62 = (a1 + 16);
  memset(&v63, 0, sizeof(v63));
  if (v3 == (a1 + 16))
  {
    goto LABEL_147;
  }

  while (2)
  {
    if (*(v3 + 55) < 0)
    {
      sub_19D2AD6B8(&v66, v3[4], v3[5]);
    }

    else
    {
      v66 = *(v3 + 2);
      v67 = v3[6];
    }

    v19 = *(a1 + 304);
    v20 = HIBYTE(v67);
    if (!v19)
    {
      if (v67 < 0)
      {
        operator delete(v66);
      }

LABEL_72:
      v35 = *(v3 + 55);
      if (v35 >= 0)
      {
        v36 = (v3 + 4);
      }

      else
      {
        v36 = v3[4];
      }

      if (v35 >= 0)
      {
        v37 = *(v3 + 55);
      }

      else
      {
        v37 = v3[5];
      }

      sub_19D3797B8(&v63, &v63, v36, (v36 + v37), v37);
      v38 = v3[1];
      if (v38)
      {
        do
        {
          v32 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v32 = v3[2];
          v16 = *v32 == v3;
          v3 = v32;
        }

        while (!v16);
      }

      break;
    }

    if (v67 >= 0)
    {
      v21 = HIBYTE(v67);
    }

    else
    {
      v21 = *(&v66 + 1);
    }

    __p = v66;
    if (v67 >= 0)
    {
      v22 = &v66;
    }

    else
    {
      v22 = v66;
    }

    while (1)
    {
      v23 = *(v19 + 55);
      if (v23 >= 0)
      {
        v24 = *(v19 + 55);
      }

      else
      {
        v24 = v19[5];
      }

      if (v23 >= 0)
      {
        v25 = (v19 + 4);
      }

      else
      {
        v25 = v19[4];
      }

      if (v24 >= v21)
      {
        v26 = v21;
      }

      else
      {
        v26 = v24;
      }

      v27 = memcmp(v22, v25, v26);
      v28 = v21 < v24;
      if (v27)
      {
        v28 = v27 < 0;
      }

      if (v28)
      {
        goto LABEL_42;
      }

      v29 = memcmp(v25, v22, v26);
      v30 = v24 < v21;
      if (v29)
      {
        v30 = v29 < 0;
      }

      if (!v30)
      {
        break;
      }

      ++v19;
LABEL_42:
      v19 = *v19;
      if (!v19)
      {
        if (v20 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_72;
      }
    }

    if (v20 < 0)
    {
      operator delete(__p);
      v31 = v3[1];
      if (v31)
      {
        goto LABEL_62;
      }

      do
      {
LABEL_64:
        v32 = v3[2];
        v16 = *v32 == v3;
        v3 = v32;
      }

      while (!v16);
    }

    else
    {
      v31 = v3[1];
      if (!v31)
      {
        goto LABEL_64;
      }

      do
      {
LABEL_62:
        v32 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    v3 = v32;
    if (v32 != v62)
    {
      continue;
    }

    break;
  }

  if (v32 != v62)
  {
    do
    {
      if (*(v32 + 55) < 0)
      {
        sub_19D2AD6B8(v64, v32[4], v32[5]);
      }

      else
      {
        *v64 = *(v32 + 2);
        v65 = v32[6];
      }

      v39 = *(a1 + 304);
      v40 = HIBYTE(v65);
      if (v39)
      {
        if (v65 >= 0)
        {
          v41 = HIBYTE(v65);
        }

        else
        {
          v41 = v64[1];
        }

        if (v65 >= 0)
        {
          v42 = v64;
        }

        else
        {
          v42 = v64[0];
        }

        while (1)
        {
          v43 = *(v39 + 55);
          if (v43 >= 0)
          {
            v44 = *(v39 + 55);
          }

          else
          {
            v44 = v39[5];
          }

          if (v43 >= 0)
          {
            v45 = (v39 + 4);
          }

          else
          {
            v45 = v39[4];
          }

          if (v44 >= v41)
          {
            v46 = v41;
          }

          else
          {
            v46 = v44;
          }

          v47 = memcmp(v42, v45, v46);
          v48 = v41 < v44;
          if (v47)
          {
            v48 = v47 < 0;
          }

          if (!v48)
          {
            v49 = memcmp(v45, v42, v46);
            v50 = v44 < v41;
            if (v49)
            {
              v50 = v49 < 0;
            }

            if (!v50)
            {
              v51 = 0;
              if ((v40 & 0x80) == 0)
              {
                goto LABEL_118;
              }

LABEL_121:
              operator delete(v64[0]);
              if (v51)
              {
                goto LABEL_122;
              }

              goto LABEL_139;
            }

            ++v39;
          }

          v39 = *v39;
          if (!v39)
          {
            v51 = 1;
            if (v40 < 0)
            {
              goto LABEL_121;
            }

            goto LABEL_118;
          }
        }
      }

      v51 = 1;
      if (v65 < 0)
      {
        goto LABEL_121;
      }

LABEL_118:
      if (v51)
      {
LABEL_122:
        size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v53 = &v63;
        }

        else
        {
          v53 = v63.__r_.__value_.__r.__words[0];
        }

        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v63.__r_.__value_.__l.__size_;
        }

        sub_19D379AF0(&v63, v53 + size, ", ", "", 2uLL);
        v54 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v55 = &v63;
        }

        else
        {
          v55 = v63.__r_.__value_.__r.__words[0];
        }

        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v54 = v63.__r_.__value_.__l.__size_;
        }

        v56 = *(v32 + 55);
        if (v56 >= 0)
        {
          v57 = (v32 + 4);
        }

        else
        {
          v57 = v32[4];
        }

        if (v56 >= 0)
        {
          v58 = *(v32 + 55);
        }

        else
        {
          v58 = v32[5];
        }

        sub_19D3797B8(&v63, v55 + v54, v57, (v57 + v58), v58);
      }

LABEL_139:
      v59 = v32[1];
      if (v59)
      {
        do
        {
          v60 = v59;
          v59 = *v59;
        }

        while (v59);
      }

      else
      {
        do
        {
          v60 = v32[2];
          v16 = *v60 == v32;
          v32 = v60;
        }

        while (!v16);
      }

      v32 = v60;
    }

    while (v60 != v62);
  }

LABEL_147:
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_19D3778A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v19 = sub_19D398AE4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_19D454C80();
    }
  }

  else
  {
    v20 = sub_19D398AE4();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_19D454C4C();
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x19D377874);
}

uint64_t **sub_19D377958(uint64_t a1, uint64_t a2)
{
  sub_19D2AAC0C(a1, a2, __p);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*(a1 + 328));
  result = sub_19D2B0B4C(OutputPorts, __p);
  if (result)
  {
    v9 = __p;
    v5 = sub_19D3789E8((a1 + 344), __p);
    result = E5RT::BufferObject::GetDataSpan(v5[5]);
  }

  if (v8 < 0)
  {
    v6 = result;
    operator delete(__p[0]);
    return v6;
  }

  return result;
}

void sub_19D3779F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *sub_19D377A14(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (*(a1 + 56) >= 1)
  {
    v3 = 0;
    do
    {
      if (qword_1EB013258 != -1)
      {
        sub_19D454D54();
      }

      Instance = _CFRuntimeCreateInstance();
      Instance[3] = 0;
      Instance[6] = 0;
      Instance[2] = Instance + 3;
      Instance[4] = 0;
      Instance[5] = Instance + 6;
      Instance[8] = 0;
      Instance[9] = 0;
      Instance[7] = 0;
      CFArrayAppendValue(Mutable, Instance);
      CFRelease(Instance);
      ++v3;
    }

    while (v3 < *(a1 + 56));
  }

  v43[0] = 0;
  v43[1] = 0;
  v42 = v43;
  v5 = *(a1 + 272);
  if (v5)
  {
    do
    {
      v7 = v43[0];
      if (v43[0])
      {
        v8 = *(v5 + 63);
        if (v8 >= 0)
        {
          v9 = *(v5 + 63);
        }

        else
        {
          v9 = v5[6];
        }

        if (v8 >= 0)
        {
          v10 = v5 + 5;
        }

        else
        {
          v10 = v5[5];
        }

        do
        {
          v11 = *(v7 + 55);
          if (v11 >= 0)
          {
            v12 = *(v7 + 55);
          }

          else
          {
            v12 = v7[5];
          }

          if (v11 >= 0)
          {
            v13 = (v7 + 4);
          }

          else
          {
            v13 = v7[4];
          }

          if (v12 >= v9)
          {
            v14 = v9;
          }

          else
          {
            v14 = v12;
          }

          v15 = memcmp(v10, v13, v14);
          v16 = v9 < v12;
          if (v15)
          {
            v16 = v15 < 0;
          }

          if (!v16)
          {
            v17 = memcmp(v13, v10, v14);
            v18 = v12 < v9;
            if (v17)
            {
              v18 = v17 < 0;
            }

            if (!v18)
            {
              goto LABEL_8;
            }

            ++v7;
          }

          v7 = *v7;
        }

        while (v7);
      }

      sub_19D2A4A4C(&v42, v5 + 5);
      if (*(v5 + 63) >= 0)
      {
        v19 = *(v5 + 63);
      }

      else
      {
        v19 = v5[6];
      }

      if (v19 + 4 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_19D2AD774();
      }

      if (v19 + 4 >= 0x17)
      {
        operator new();
      }

      __p[1] = 0;
      v41 = 0;
      __p[0] = 0;
      HIBYTE(v41) = v19 + 4;
      if (v19)
      {
        if (*(v5 + 63) >= 0)
        {
          v20 = v5 + 5;
        }

        else
        {
          v20 = v5[5];
        }

        memmove(__p, v20, v19);
      }

      strcpy(__p + v19, "_out");
      OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
      PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(OutputPortRef);
      v23 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
      sub_19D377180(v38, v23, 1);
      *&v36[0] = __p;
      v24 = sub_19D3789E8((a1 + 344), __p);
      DataSpan = E5RT::BufferObject::GetDataSpan(v24[5]);
      LODWORD(v27) = *(a1 + 56);
      if (v27 >= 1)
      {
        v28 = DataSpan;
        v29 = v26;
        v30 = 0;
        do
        {
          v31 = v29 / v27;
          if (v29 % v27 || v29 < v27 || (v29 > v31 * v30 ? (v32 = v31 * v30 + v31 > v29) : (v32 = 1), v32))
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "index out of bounds");
            exception->__vftable = (MEMORY[0x1E69E5598] + 16);
            __cxa_throw(exception, off_1E7626748, MEMORY[0x1E69E5268]);
          }

          ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v30);
          v36[0] = v38[0];
          v36[1] = v38[1];
          v37 = v39;
          sub_19D37DA88(ValueAtIndex + 16, v5 + 5, v36);
          sub_19D37DA30(ValueAtIndex + 16, v5 + 5, (v28 + v31 * v30++), v31);
          v27 = *(a1 + 56);
        }

        while (v30 < v27);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_8:
      v5 = *v5;
    }

    while (v5);
    v6 = v43[0];
  }

  else
  {
    v6 = 0;
  }

  sub_19D2A3E48(&v42, v6);
  return Mutable;
}

void sub_19D377E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, char *a27)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_19D2A3E48(&a26, a27);
  _Unwind_Resume(a1);
}

uint64_t sub_19D377EE8(uint64_t a1, uint64_t a2)
{
  sub_19D42AC20(a1, a2, __p);
  v2 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v2 = __p[1];
  }

  if (v2)
  {
    InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
    PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(InputPortRef);
    v5 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
    NumElements = E5RT::TensorDescriptor::GetNumElements(v5);
    if ((v9 & 0x80) == 0)
    {
      return NumElements;
    }
  }

  else
  {
    NumElements = 0;
    if ((v9 & 0x80) == 0)
    {
      return NumElements;
    }
  }

  operator delete(__p[0]);
  return NumElements;
}

void sub_19D377F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D377F98(uint64_t a1, uint64_t a2)
{
  sub_19D2AAC0C(a1, a2, __p);
  v2 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v2 = __p[1];
  }

  if (v2)
  {
    OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
    PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(OutputPortRef);
    v5 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
    NumElements = E5RT::TensorDescriptor::GetNumElements(v5);
    if ((v9 & 0x80) == 0)
    {
      return NumElements;
    }
  }

  else
  {
    NumElements = 0;
    if ((v9 & 0x80) == 0)
    {
      return NumElements;
    }
  }

  operator delete(__p[0]);
  return NumElements;
}

void sub_19D37802C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D378048(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D42AC20(a1, a2, __p);
  v4 = v10;
  v5 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  if (v4)
  {
    InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
    PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(InputPortRef);
    v8 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
    sub_19D377180(a3, v8, 0);
    if ((v10 & 0x80) == 0)
    {
      return;
    }

LABEL_7:
    operator delete(__p[0]);
    return;
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_7;
  }
}

void sub_19D3780E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D378104(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_19D2AAC0C(a1, a2, __p);
  v4 = v10;
  v5 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  if (v4)
  {
    OutputPortRef = E5RT::ExecutionStreamOperation::GetOutputPortRef();
    PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(OutputPortRef);
    v8 = E5RT::OperandDescriptor::TensorDescriptor(PortDescriptorRef);
    sub_19D377180(a3, v8, 0);
    if ((v10 & 0x80) == 0)
    {
      return;
    }

LABEL_7:
    operator delete(__p[0]);
    return;
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_7;
  }
}

void sub_19D3781A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19D3781C8(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  return result;
}

void sub_19D3782E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_19D378300(&a11);
  *(v11 + 8) = v12;
  sub_19D2CA2A4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_19D378300(uint64_t a1)
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

uint64_t **sub_19D378360(void *a1, uint64_t a2)
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

  v6 = sub_19D2A4C00(v24, a2, v5);
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
    sub_19D378734();
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

void sub_19D37871C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D37885C(va);
  _Unwind_Resume(a1);
}

void sub_19D378838(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_19D37885C(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D37885C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 48);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v6;
        if ((*(v6 + 39) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*(v2 + 39) < 0)
      {
LABEL_6:
        v4 = v2;
        operator delete(*(v2 + 16));
        v2 = v4;
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

void sub_19D378920(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_19D378948(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_19D378978(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000019D47580DLL)
  {
    if (((v2 & 0x800000019D47580DLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000019D47580DLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000019D47580DLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t **sub_19D3789E8(void *a1, uint64_t a2)
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

  v6 = sub_19D2A4C00(&v24, a2, v5);
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

void sub_19D378DEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D37885C(va);
  _Unwind_Resume(a1);
}

void sub_19D378E00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D37885C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_19D378E18(void *a1, uint64_t a2)
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

  v6 = sub_19D2A4C00(&v24, a2, v5);
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

void sub_19D379220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D37924C(va);
  _Unwind_Resume(a1);
}

void sub_19D379234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D37924C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D37924C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 63) < 0)
      {
        operator delete(*(v2 + 40));
        if ((*(v2 + 39) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 39) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 16));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

void sub_19D3792C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_19D3792E8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_19D379318(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000019D4758ACLL)
  {
    if (((v2 & 0x800000019D4758ACLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000019D4758ACLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000019D4758ACLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t **sub_19D379388(void *a1, uint64_t a2)
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

  v6 = sub_19D2A4C00(&v24, a2, v5);
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

void sub_19D37976C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D37885C(va);
  _Unwind_Resume(a1);
}

std::runtime_error *sub_19D379784(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E5598] + 16);
  return result;
}

std::string::size_type sub_19D3797B8(std::string *this, uint64_t a2, unint64_t a3, std::string::value_type *a4, std::string::size_type __n_add)
{
  v7 = a3;
  v8 = this;
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = a2 - this;
    if (__n_add)
    {
      if (a3 < this || this->__r_.__value_.__r.__words + v9 + 1 <= a3)
      {
        v11 = 22;
        v12 = this;
        if (22 - v9 < __n_add)
        {
          goto LABEL_6;
        }

LABEL_14:
        if (v9 == v10)
        {
          v13 = v10 + __n_add;
          if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          memmove(v12 + v10 + __n_add, v12 + v10, v9 - v10);
          v13 = v9 + __n_add;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_16;
      }

LABEL_21:
      memset(&v28, 0, sizeof(v28));
      if (a4 == a3)
      {
        size = 0;
        v19 = 0;
        v20 = 0;
      }

      else
      {
        do
        {
          std::string::push_back(&v28, *v7++);
        }

        while (v7 != a4);
        v20 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        size = v28.__r_.__value_.__l.__size_;
        v19 = v28.__r_.__value_.__r.__words[0];
        LOBYTE(v9) = *(&v8->__r_.__value_.__s + 23);
      }

      if ((v20 & 0x80u) == 0)
      {
        v21 = &v28;
      }

      else
      {
        v21 = v19;
      }

      if ((v20 & 0x80u) == 0)
      {
        v22 = v20;
      }

      else
      {
        v22 = size;
      }

      if ((v9 & 0x80) != 0)
      {
        v9 = v8->__r_.__value_.__l.__size_;
        v23 = (v8->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v23 - v9 >= __n_add)
        {
          v24 = v8->__r_.__value_.__r.__words[0];
          v25 = v9 - v10;
          if (v9 == v10)
          {
LABEL_34:
            v26 = v10 + __n_add;
            if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_52:
              v8->__r_.__value_.__l.__size_ = v26;
              v24->__r_.__value_.__s.__data_[v26] = 0;
              if (!v22)
              {
LABEL_42:
                if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
                {
                  result = v10 + v8->__r_.__value_.__r.__words[0];
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return result;
                  }
                }

                else
                {
                  result = v8 + v10;
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return result;
                  }
                }

                v27 = result;
                operator delete(v28.__r_.__value_.__l.__data_);
                return v27;
              }

LABEL_41:
              memmove(v24 + v10, v21, v22);
              goto LABEL_42;
            }

LABEL_40:
            *(&v8->__r_.__value_.__s + 23) = v26 & 0x7F;
            v24->__r_.__value_.__s.__data_[v26] = 0;
            if (!v22)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

LABEL_51:
          memmove(v24 + v10 + __n_add, v24 + v10, v25);
          v26 = v9 + __n_add;
          if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_52;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v9 = v9;
        v23 = 22;
        v24 = v8;
        if (22 - v9 >= __n_add)
        {
          v25 = v9 - v10;
          if (v9 == v10)
          {
            goto LABEL_34;
          }

          goto LABEL_51;
        }
      }

      std::string::__grow_by(v8, v23, v9 + __n_add - v23, v9, v10, 0, __n_add);
      v8->__r_.__value_.__l.__size_ = v9 + __n_add;
      v24 = v8->__r_.__value_.__r.__words[0];
      v26 = v9 + __n_add;
      if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_52;
      }

      goto LABEL_40;
    }

    v12 = this;
    return v12 + v10;
  }

  v12 = this->__r_.__value_.__r.__words[0];
  v10 = a2 - this->__r_.__value_.__r.__words[0];
  if (!__n_add)
  {
    return v12 + v10;
  }

  v14 = this->__r_.__value_.__l.__size_;
  if (v12 <= a3 && v12->__r_.__value_.__r.__words + v14 + 1 > a3)
  {
    goto LABEL_21;
  }

  v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v9 = this->__r_.__value_.__l.__size_;
  if (v11 - v14 >= __n_add)
  {
    goto LABEL_14;
  }

LABEL_6:
  std::string::__grow_by(this, v11, v9 + __n_add - v11, v9, v10, 0, __n_add);
  v8->__r_.__value_.__l.__size_ = v9 + __n_add;
  v12 = v8->__r_.__value_.__r.__words[0];
  v13 = v9 + __n_add;
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_48:
    v8->__r_.__value_.__l.__size_ = v13;
    v12->__r_.__value_.__s.__data_[v13] = 0;
    v16 = a4 - v7;
    if (a4 == v7)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(&v8->__r_.__value_.__s + 23) = v13 & 0x7F;
  v12->__r_.__value_.__s.__data_[v13] = 0;
  v16 = a4 - v7;
  if (a4 != v7)
  {
LABEL_17:
    memmove(v12 + v10, v7, v16);
  }

LABEL_18:
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = v8->__r_.__value_.__r.__words[0];
  }

  return v8 + v10;
}