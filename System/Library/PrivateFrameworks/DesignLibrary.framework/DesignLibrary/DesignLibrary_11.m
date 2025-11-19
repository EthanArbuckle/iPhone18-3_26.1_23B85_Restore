uint64_t sub_18AF6C5C8()
{
  sub_18AFCE294();
  sub_18AF6C114(v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6C60C()
{
  sub_18AFCE294();
  sub_18AF6C114(v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6C648(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x401uLL);
  memcpy(__dst, a2, 0x401uLL);
  return sub_18AE92510(v4, __dst) & 1;
}

void sub_18AF6C6A0()
{
  v1 = -*(v0 + 32);
  v2 = fabs(*(v0 + 24));
  v3 = v1 - v2;
  if (v1 - v2 > v1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v4 = *(v0 + 48);
  if (v4 <= 0.0)
  {
    return;
  }

  v5 = v4 * sub_18AF5A3E0(*(v0 + 128));
  if (v5 < 0.0)
  {
    goto LABEL_11;
  }

  if (v3 > 0.0)
  {
    v3 = 0.0;
  }

  if (v5 >= v1)
  {
    v1 = v5 + 0.0;
  }

  if (v3 > v1)
  {
    goto LABEL_12;
  }
}

uint64_t sub_18AF6C730()
{
  v1 = *(v0 + 8);
  if (v1 < *(v0 + 16) && *(v0 + 48) == *(v0 + 52))
  {
    v3 = *(v0 + 16);
  }

  else
  {
    v3 = *(v0 + 8);
  }

  if (*(v0 + 32) < *(v0 + 40) && *(v0 + 60) == *(v0 + 64))
  {
    v5 = *(v0 + 32);
  }

  else
  {
    v5 = *(v0 + 40);
  }

  if (v5 > v3)
  {
    v1 = v3;
  }

  else
  {
    v5 = *(v0 + 40);
  }

  if (v1 >= v5)
  {
    return 0;
  }

  if (v1 <= v5 + 1.0)
  {
    return *&v1;
  }

  __break(1u);
  return result;
}

void sub_18AF6C7A0()
{
  v1 = -fabs(*(v0 + 8));
  v2 = *(v0 + 28);
  v3 = *(v0 + 32);
  if (v2 >= v3)
  {
    return;
  }

  v4 = v3 + 1.0;
  if (v2 > (v3 + 1.0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = v2;
  if (v6 < v1)
  {
    v1 = v6;
  }

  v7 = v4 < 0.0;
  v8 = 0.0;
  if (!v7)
  {
    v8 = v5;
  }

  if (v1 > v8)
  {
    goto LABEL_10;
  }
}

uint64_t sub_18AF6C808()
{
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  if (v0[28] == 1)
  {
    sub_18AFCE2B4();
  }

  else
  {
    sub_18AFCE2B4();
    sub_18AFCCE44();
  }

  if (v0[48] == 1)
  {
    sub_18AFCE2B4();
  }

  else
  {
    sub_18AFCE2B4();
    sub_18AFCCE44();
  }

  if (v0[68] == 1)
  {
    return sub_18AFCE2B4();
  }

  sub_18AFCE2B4();

  return sub_18AFCCE44();
}

uint64_t sub_18AF6C958()
{
  sub_18AFCE294();
  sub_18AF6C808();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6C99C()
{
  sub_18AFCE294();
  sub_18AF6C808();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6C9D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v8[0] = v2;
  *(v8 + 13) = *(a1 + 61);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v10[0] = v4;
  *(v10 + 13) = *(a2 + 61);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18AE8DE28(v7, v9) & 1;
}

uint64_t sub_18AF6CA34()
{
  sub_18AF4AF54(*v0, v0[1]);
  v1 = v0[2];
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18CFED640](*&v1);
  v2 = v0[3];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x18CFED640](*&v2);
  v3 = v0[4];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x18CFED640](*&v3);
  v4 = v0[5];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x18CFED640](*&v4);
  v5 = v0[6];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x18CFED640](*&v5);
  sub_18AF6C808();
  sub_18AFCE2C4();
  v6 = v0[17];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return MEMORY[0x18CFED640](*&v6);
}

uint64_t sub_18AF6CB18()
{
  sub_18AFCE294();
  sub_18AF6CA34();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6CB5C()
{
  sub_18AFCE294();
  sub_18AF6CA34();
  return sub_18AFCE2E4();
}

BOOL sub_18AF6CB98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v11[8] = a1[8];
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v12[8] = a2[8];
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  return sub_18AF6EB8C(v11, v12);
}

uint64_t sub_18AF6CC1C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18CFED640](*&v1);
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x18CFED640](*&v2);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x18CFED640](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x18CFED640](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x18CFED640](*&v9);
  if (v6 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v6;
  }

  MEMORY[0x18CFED640](*&v10);
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  return sub_18AFCE2C4();
}

uint64_t sub_18AF6CD40()
{
  sub_18AFCE294();
  sub_18AF6CC1C();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6CD84()
{
  sub_18AFCE294();
  sub_18AF6CC1C();
  return sub_18AFCE2E4();
}

BOOL sub_18AF6CDC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18AE90DEC(v7, v9);
}

uint64_t sub_18AF6CE1C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18CFED640](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x18CFED640](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x18CFED640](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x18CFED640](*&v4);
  v5 = v0[4];
  v6 = v0[5];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x18CFED640](*&v5);
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6;
  }

  MEMORY[0x18CFED640](*&v7);
  return sub_18AFCE2C4();
}

uint64_t sub_18AF6CED8()
{
  sub_18AFCE294();
  sub_18AF6CE1C();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6CF1C()
{
  sub_18AFCE294();
  sub_18AF6CE1C();
  return sub_18AFCE2E4();
}

BOOL sub_18AF6CF58(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) != 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  return result;
}

uint64_t sub_18AF6CFBC()
{
  sub_18AFCE294();
  sub_18AFCE2C4();
  sub_18AF6C808();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6D070()
{
  sub_18AFCE294();
  sub_18AFCE2C4();
  sub_18AF6C808();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6D0D8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 20);
  v4 = *(a1 + 52);
  v9[2] = *(a1 + 36);
  v10[0] = v4;
  *(v10 + 13) = *(a1 + 65);
  v9[0] = *(a1 + 4);
  v9[1] = v3;
  LODWORD(v3) = *a2;
  v5 = *(a2 + 52);
  v11[2] = *(a2 + 36);
  v12[0] = v5;
  v6 = *(a2 + 20);
  *(v12 + 13) = *(a2 + 65);
  v11[0] = *(a2 + 4);
  v11[1] = v6;
  if (v2 == *&v3)
  {
    v7 = sub_18AE8DE28(v9, v11);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_18AF6D15C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18CFED640](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x18CFED640](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x18CFED640](*&v3);
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AF6C808();
  return sub_18AFCE2B4();
}

uint64_t sub_18AF6D22C()
{
  sub_18AFCE294();
  sub_18AF6D15C();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6D270()
{
  sub_18AFCE294();
  sub_18AF6D15C();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6D2AC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 84);
  v23[2] = *(a1 + 68);
  v24[0] = v3;
  *(v24 + 13) = *(a1 + 97);
  *&v26[13] = *(a2 + 97);
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v7 = *(a1 + 28);
  v9 = *(a1 + 32);
  v10 = *(a1 + 52);
  v23[0] = *(a1 + 36);
  v23[1] = v10;
  v11 = *(a1 + 105);
  v13 = *a2;
  v12 = *(a2 + 8);
  v14 = *(a2 + 16);
  v16 = *(a2 + 24);
  v15 = *(a2 + 28);
  v17 = *(a2 + 32);
  v18 = *(a2 + 84);
  v25[2] = *(a2 + 68);
  *v26 = v18;
  v19 = v5 == v13;
  v20 = *(a2 + 52);
  v25[0] = *(a2 + 36);
  v25[1] = v20;
  if (v19 && v4 == v12 && v6 == v14 && v8 == v16 && v7 == v15 && v9 == v17)
  {
    v21 = *(a2 + 105);
    v2 = sub_18AE8DE28(v23, v25) & (v11 ^ v21 ^ 1);
  }

  return v2 & 1;
}

uint64_t sub_18AF6D388()
{
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  return sub_18AFCE2C4();
}

uint64_t sub_18AF6D3F4()
{
  sub_18AFCE294();
  sub_18AF6D388();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6D464()
{
  sub_18AFCE294();
  sub_18AF6D388();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6D4F4()
{
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCCCC4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  return sub_18AFCE2C4();
}

float32x4_t sub_18AF6D5F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D2>, double a5@<D3>)
{
  *&a4 = 1.0 - a3;
  *&a5 = a3;
  v6 = *(v5 + 16);
  v7 = *(a1 + 16);
  v8 = (1.0 - a3) * *(v5 + 24) + *(a1 + 24) * a3;
  *a2 = vaddq_f32(vmulq_n_f32(*v5, *&a4), vmulq_n_f32(*a1, *&a5));
  *(a2 + 16) = vadd_f32(vmul_f32(v6, *&vdupq_lane_s32(*&a4, 0)), vmul_f32(v7, *&vdupq_lane_s32(*&a5, 0)));
  *(a2 + 24) = v8;
  result = vaddq_f32(vmulq_n_f32(*(v5 + 32), *&a4), vmulq_n_f32(*(a1 + 32), *&a5));
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_18AF6D660()
{
  sub_18AFCE294();
  sub_18AF6D4F4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6D6A4()
{
  sub_18AFCE294();
  sub_18AF6D4F4();
  return sub_18AFCE2E4();
}

BOOL sub_18AF6D6E0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_18AE92DBC(v7, v8);
}

double sub_18AF6D728@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v23 = 1.0 - a10;
  v13 = (1.0 - a10) * *v10 + *a1 * a10;
  v14 = 1.0 - a10;
  v15 = *(v10 + 8) * v14;
  v16 = a10;
  v17 = v15 + (*(a1 + 8) * v16);
  v18 = (1.0 - a10) * *(v10 + 32) + *(a1 + 32) * a10;
  v24 = vaddq_f64(vmulq_n_f64(*(v10 + 16), 1.0 - a10), vmulq_n_f64(*(a1 + 16), a10));
  sub_18AE9582C(a1 + 40, a2, a3, a4, a5, a6, a7, a8, v25, a10, v24.f64[0]);
  result = v23 * *(v10 + 112) + *(a1 + 112) * a10;
  *a9 = v13;
  *(a9 + 8) = v17;
  *(a9 + 16) = v24;
  *(a9 + 32) = v18;
  v20 = v25[0];
  *(a9 + 56) = v25[1];
  v21 = *v26;
  *(a9 + 72) = v25[2];
  *(a9 + 88) = v21;
  *(a9 + 101) = *&v26[13];
  *(a9 + 40) = v20;
  *(a9 + 112) = result;
  return result;
}

uint64_t sub_18AF6D840()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18CFED640](*&v1);
  sub_18AFCE2C4();
  sub_18AFCCCC4();
  v2 = v0[3];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x18CFED640](*&v2);
  v3 = v0[4];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x18CFED640](*&v3);
  sub_18AF6C808();

  return sub_18AFCCCC4();
}

uint64_t sub_18AF6D900()
{
  sub_18AFCE294();
  sub_18AF6D840();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6D944()
{
  sub_18AFCE294();
  sub_18AF6D840();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6D980(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_18AF6EA94(v12, v14) & 1;
}

uint64_t sub_18AF6DA04()
{
  sub_18AFCE2C4();
  v1 = *(v0 + 8);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18CFED640](*&v1);
  sub_18AF6D840();
  return sub_18AF6D840();
}

uint64_t sub_18AF6DA7C()
{
  sub_18AFCE294();
  sub_18AF6DA04();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6DAC0()
{
  sub_18AFCE294();
  sub_18AF6DA04();
  return sub_18AFCE2E4();
}

BOOL sub_18AF6DAFC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[13];
  v19[12] = a1[12];
  v19[13] = v2;
  v3 = a1[15];
  v19[14] = a1[14];
  v19[15] = v3;
  v4 = a1[9];
  v19[8] = a1[8];
  v19[9] = v4;
  v5 = a1[11];
  v19[10] = a1[10];
  v19[11] = v5;
  v6 = a1[5];
  v19[4] = a1[4];
  v19[5] = v6;
  v7 = a1[7];
  v19[6] = a1[6];
  v19[7] = v7;
  v8 = a1[1];
  v19[0] = *a1;
  v19[1] = v8;
  v9 = a1[3];
  v19[2] = a1[2];
  v19[3] = v9;
  v10 = a2[13];
  v20[12] = a2[12];
  v20[13] = v10;
  v11 = a2[15];
  v20[14] = a2[14];
  v20[15] = v11;
  v12 = a2[9];
  v20[8] = a2[8];
  v20[9] = v12;
  v13 = a2[11];
  v20[10] = a2[10];
  v20[11] = v13;
  v14 = a2[5];
  v20[4] = a2[4];
  v20[5] = v14;
  v15 = a2[7];
  v20[6] = a2[6];
  v20[7] = v15;
  v16 = a2[1];
  v20[0] = *a2;
  v20[1] = v16;
  v17 = a2[3];
  v20[2] = a2[2];
  v20[3] = v17;
  return sub_18AE92EB0(v19, v20);
}

uint64_t sub_18AF6DBB0(double a1, double a2, double a3)
{
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  v4 = 0.0;
  if (a3 != 0.0)
  {
    v4 = a3;
  }

  return MEMORY[0x18CFED640](*&v4);
}

uint64_t sub_18AF6DC20()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[1];
  sub_18AFCE294();
  LODWORD(v4) = v1;
  LODWORD(v5) = v2;
  sub_18AF6DBB0(v4, v5, v3);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6DC84()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[1];
  sub_18AFCE294();
  LODWORD(v4) = v1;
  LODWORD(v5) = v2;
  sub_18AF6DBB0(v4, v5, v3);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6DD14(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x18CFED640](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x18CFED640](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x18CFED640](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x18CFED640](*&v9);
}

uint64_t sub_18AF6DD94()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_18AFCE294();
  sub_18AF6DD14(v1, v2, v3, v4);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6DE08()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_18AFCE294();
  sub_18AF6DD14(v1, v2, v3, v4);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6DEA8(double a1, double a2, double a3)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x18CFED640](*&a1);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x18CFED640](*&v5);
  if (a3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a3;
  }

  return MEMORY[0x18CFED640](*&v6);
}

uint64_t sub_18AF6DF14()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_18AFCE294();
  sub_18AF6DEA8(v1, v2, v3);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6DF84()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_18AFCE294();
  sub_18AF6DEA8(v1, v2, v3);
  return sub_18AFCE2E4();
}

void sub_18AF6E014(double a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = sqrt((v2 - *v1) * (v2 - *v1));
  v5 = 0.0;
  if (v4 > 0.0000000149011612)
  {
    v6 = sqrt((a1 - v3) * (a1 - v3));
    if (v3 > a1)
    {
      v6 = -v6;
    }

    v5 = v6 / v4;
  }

  if ((*(v1 + 64) & 1) == 0 && (*(v1 + 48) & 1) == 0 && v5 > 1.0)
  {
    v7 = *(v1 + 56);
    v8 = v2 + v7;
    if (v2 > v2 + v7)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = *(v1 + 40);
    if (sqrt((v8 - v2) * (v8 - v2)) <= 0.0000000149011612)
    {
      if ((*(v1 + 32) & 1) == 0)
      {
LABEL_11:
        if (*(v1 + 24) <= v9)
        {
          return;
        }

        goto LABEL_18;
      }
    }

    else if ((*(v1 + 32) & 1) == 0)
    {
      goto LABEL_11;
    }

    if (v9 > *(v1 + 16))
    {
LABEL_19:
      __break(1u);
    }
  }
}

void sub_18AF6E1A0(double a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = sqrt((v2 - *v1) * (v2 - *v1));
  v5 = 0.0;
  if (v4 > 0.0000000149011612)
  {
    v6 = sqrt((a1 - v3) * (a1 - v3));
    if (v3 > a1)
    {
      v6 = -v6;
    }

    v5 = v6 / v4;
  }

  if ((*(v1 + 48) & 1) == 0 && (*(v1 + 32) & 1) == 0 && v5 > 1.0)
  {
    v7 = *(v1 + 40);
    v8 = v2 + v7;
    if (v2 > v2 + v7)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = *(v1 + 28);
    if (sqrt((v8 - v2) * (v8 - v2)) <= 0.0000000149011612)
    {
      if ((*(v1 + 24) & 1) == 0)
      {
LABEL_11:
        if (*(v1 + 20) <= v9)
        {
          return;
        }

        goto LABEL_18;
      }
    }

    else if ((*(v1 + 24) & 1) == 0)
    {
      goto LABEL_11;
    }

    if (v9 > *(v1 + 16))
    {
LABEL_19:
      __break(1u);
    }
  }
}

uint64_t sub_18AF6E32C(double a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = sqrt((v2 - *v1) * (v2 - *v1));
  v5 = 0.0;
  if (v4 > 0.0000000149011612)
  {
    v6 = sqrt((a1 - v3) * (a1 - v3));
    if (v3 > a1)
    {
      v6 = -v6;
    }

    v5 = v6 / v4;
  }

  if ((*(v1 + 64) & 1) != 0 || (*(v1 + 48) & 1) != 0 || v5 <= 1.0)
  {
    goto LABEL_12;
  }

  v7 = v2 + *(v1 + 56);
  if (v2 > v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *(v1 + 40);
  if (sqrt((v7 - v2) * (v7 - v2)) <= 0.0000000149011612)
  {
    if ((*(v1 + 32) & 1) == 0)
    {
LABEL_11:
      if (v8 >= *(v1 + 24))
      {
LABEL_12:
        sub_18AFCCC94();
        sub_18AFCCC94();
        sub_18AFCCCA4();
        sub_18AFCCC94();
        sub_18AFCCC94();
        return sub_18AFCCCA4();
      }

      goto LABEL_17;
    }
  }

  else if ((*(v1 + 32) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*(v1 + 16) >= v8)
  {
    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_18AF6E56C(double a1, double a2, double a3)
{
  if (a2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a2;
  }

  MEMORY[0x18CFED640](*&v4);
  if (a3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a3;
  }

  MEMORY[0x18CFED640](*&v5);
  return sub_18AFCE2C4();
}

uint64_t sub_18AF6E5DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_18AFCE294();
  LODWORD(v4) = v1;
  sub_18AF6E56C(v4, v2, v3);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6E64C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_18AFCE294();
  LODWORD(v4) = v1;
  sub_18AF6E56C(v4, v2, v3);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6E6E4()
{
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18CFED640](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  MEMORY[0x18CFED640](*&v3);
  return sub_18AFCE2C4();
}

uint64_t sub_18AF6E780()
{
  sub_18AFCE294();
  sub_18AF6E6E4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6E7C4()
{
  sub_18AFCE294();
  sub_18AF6E6E4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF6E800(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 8) == *(a2 + 8);
  return v5 & (*(a1 + 24) == *(a2 + 24));
}

uint64_t sub_18AF6E848()
{
  if (v0[4])
  {
    return sub_18AFCE2B4();
  }

  v3 = v0[2];
  v2 = v0[3];
  v5 = *v0;
  v4 = v0[1];
  sub_18AFCE2B4();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x18CFED640](v6);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x18CFED640](v7);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x18CFED640](v8);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x18CFED640](v9);
}

uint64_t sub_18AF6E8D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_18AFCE2B4();
  }

  sub_18AFCE2B4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x18CFED640](v6);
}

uint64_t sub_18AF6E950()
{
  if (*(v0 + 32))
  {
    return sub_18AFCE2B4();
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_18AFCE2B4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x18CFED640](v4);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x18CFED640](v5);
  return sub_18AFCE2C4();
}

uint64_t sub_18AF6EA00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_18AFCE2B4();
  }

  sub_18AFCE2B4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  return sub_18AFCE2C4();
}

uint64_t sub_18AF6EA94(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if ((sub_18AFCCCB4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v5 = *(a1 + 88);
  v11[2] = *(a1 + 72);
  v12[0] = v5;
  *(v12 + 13) = *(a1 + 101);
  v11[0] = *(a1 + 40);
  v11[1] = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 88);
  v9[2] = *(a2 + 72);
  v10[0] = v7;
  *(v10 + 13) = *(a2 + 101);
  v9[0] = *(a2 + 40);
  v9[1] = v6;
  if ((sub_18AE8DE28(v11, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_18AFCCCB4();
}

BOOL sub_18AF6EB8C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56) || *(a1 + 60) != *(a2 + 60) || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v2 = *(a1 + 104);
  v3 = *(a1 + 124);
  v4 = *(a2 + 104);
  v5 = *(a2 + 124);
  if (*(a1 + 84))
  {
    if ((*(a2 + 84) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 84))
    {
      return 0;
    }

    v7 = a2;
    v8 = a1;
    v9 = sub_18AFCCE14();
    a2 = v7;
    v10 = v9;
    a1 = v8;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (v2)
  {
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4)
    {
      return 0;
    }

    v11 = a2;
    v12 = a1;
    v13 = sub_18AFCCE14();
    a2 = v11;
    v14 = v13;
    a1 = v12;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (v5)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

  v15 = a2;
  v16 = a1;
  v17 = sub_18AFCCE14();
  a2 = v15;
  v18 = v17;
  a1 = v16;
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  if (*(a1 + 128) != *(a2 + 128))
  {
    return 0;
  }

  return *(a1 + 136) == *(a2 + 136);
}

uint64_t sub_18AF6EE34(uint64_t a1, uint64_t a2)
{
  v4 = _s11EnvironmentVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF6EE98(uint64_t a1)
{
  v2 = _s11EnvironmentVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_18AF6EEF4(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + *(_s11EnvironmentVMa() + 44);
  if (v4[25])
  {
    v5 = 48.0;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 1);
    v7 = *(v4 + 2);
    v8 = v4[24];
    if (v6)
    {
      v5 = 48.0;
    }

    if ((v8 & 1) == 0)
    {
      v5 = v7;
    }
  }

  sub_18AF6E1A0(v5);
  v9 = *a1;
  v10 = *a1 * -2.0;
  *a2 = 1067030938;
  *(a2 + 4) = v11;
  *(a2 + 8) = 1064849900;
  *(a2 + 16) = v10;
  *(a2 + 24) = -v9;
}

uint64_t sub_18AF6EFE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 69))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AF6F004(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 69) = v3;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_18AF6F074(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AF6F094(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 144) = v3;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18AF6F144(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 52))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AF6F164(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 52) = v3;
  return result;
}

__n128 __swift_memcpy73_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18AF6F1D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AF6F1F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 73) = v3;
  return result;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_18AF6F260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 106))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 105);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18AF6F2B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 105) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_18AF6F370(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AF6F390(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 120) = v3;
  return result;
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_18AF6F41C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 256))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AF6F43C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 256) = v3;
  return result;
}

uint64_t sub_18AF6F4C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 1025))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 497);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_18AF6F520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 1016) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 1024) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 1025) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 1025) = 0;
    }

    if (a2)
    {
      *(result + 497) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_18AF6F688()
{
  result = qword_1EA99BA68;
  if (!qword_1EA99BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BA68);
  }

  return result;
}

unint64_t sub_18AF6F6E4()
{
  result = qword_1EA99BA70;
  if (!qword_1EA99BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BA70);
  }

  return result;
}

unint64_t sub_18AF6F770()
{
  result = qword_1EA99BA78[0];
  if (!qword_1EA99BA78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA99BA78);
  }

  return result;
}

__n128 sub_18AF6F7F8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + *(_s11EnvironmentVMa() + 44);
  if (*(v4 + 25))
  {
    v5 = 48.0;
  }

  else if (*(v4 + 24))
  {
    if (*(v4 + 8))
    {
      v5 = 48.0;
    }

    else
    {
      v5 = *v4;
    }
  }

  else
  {
    v5 = *(v4 + 16);
  }

  v6 = *(v2 + 320);
  if (*(v2 + 385))
  {
    sub_18AF6E32C(v5);
    v6 = v7;
  }

  v8 = *(v2 + 16);
  if (*(v2 + 81))
  {
    sub_18AF6E014(v5);
    v8 = v9;
  }

  v10 = *(v2 + 88);
  if (*(v2 + 153))
  {
    sub_18AF6E014(v5);
  }

  v11 = *(v2 + 4);
  v13 = *(v2 + 392);
  v12 = *(v2 + 400);
  v14 = *(v2 + 8);
  v15 = *(v2 + 304);
  v16 = *(v2 + 312);
  *a2 = *v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 24) = v11;
  *(a2 + 32) = v6;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  *(a2 + 56) = *(v2 + 156);
  v17 = *(v2 + 172);
  v18 = *(v2 + 188);
  v19 = *(v2 + 204);
  *(a2 + 117) = *(v2 + 217);
  *(a2 + 104) = v19;
  *(a2 + 88) = v18;
  *(a2 + 72) = v17;
  *(a2 + 128) = v15;
  *(a2 + 136) = v10;
  *(a2 + 144) = v14;
  *(a2 + 152) = v6;
  *(a2 + 160) = v12;
  *(a2 + 168) = v13;
  result = *(v2 + 244);
  v21 = *(v2 + 276);
  *(a2 + 208) = *(v2 + 260);
  *(a2 + 224) = v21;
  *(a2 + 237) = *(v2 + 289);
  *(a2 + 176) = *(v2 + 228);
  *(a2 + 192) = result;
  *(a2 + 248) = v16;
  return result;
}

double sub_18AF6F9C8(double a1)
{
  result = *v1 * a1;
  *v1 = result;
  return result;
}

double sub_18AF6FA34@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 0.0174532925;
  *a2 = result;
  return result;
}

double sub_18AF6FA4C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 0.0174532925;
  *a2 = result;
  return result;
}

double sub_18AF6FA68@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  sub_18AFCCC94();
  sub_18AFCCC94();
  sub_18AFCCCA4();
  result = v4;
  *a2 = v4;
  return result;
}

double sub_18AF6FAC8(double *a1)
{
  v3 = *a1;
  sub_18AFCCC94();
  sub_18AFCCC94();
  sub_18AFCCCA4();
  result = v3;
  *a1 = v3;
  return result;
}

double sub_18AF6FB28@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  sub_18AFCCC94();
  sub_18AFCCC94();
  sub_18AFCCCA4();
  result = v4;
  *a2 = v4;
  return result;
}

double sub_18AF6FB88(double *a1)
{
  v3 = *a1;
  sub_18AFCCC94();
  sub_18AFCCC94();
  sub_18AFCCCA4();
  result = v3;
  *a1 = v3;
  return result;
}

double sub_18AF6FBF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = a1 + *(_s11EnvironmentVMa() + 44);
      v5 = *v4;
      v6 = ((*(v4 + 25) | *(v4 + 8)) & 1) == 0;
      goto LABEL_4;
    }

    v7 = a1 + *(_s11EnvironmentVMa() + 44);
    if (*(v7 + 25))
    {
      v5 = 48.0;
    }

    else
    {
      if (*(v7 + 24))
      {
        v5 = *v7;
        v6 = (*(v7 + 8) & 1) == 0;
LABEL_4:
        if (!v6)
        {
          v5 = 48.0;
        }

        goto LABEL_12;
      }

      v5 = *(v7 + 16);
    }

LABEL_12:
    *&a2 = v5 * *&a2;
  }

  return *&a2;
}

double sub_18AF6FCAC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

double sub_18AF6FCC0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v130 = *(v6 + 24);
  v131 = *(v6 + 16);
  v160 = *(v6 + 34);
  v8 = *(v1 + 1);
  v7 = *(v1 + 2);
  v188 = *(v1 + 3);
  v9 = *(v1 + 12);
  v185 = *(v1 + 11);
  v10 = *(v1 + 13);
  v11 = v2 + *(_s11EnvironmentVMa() + 44);
  v12 = *(v11 + 1);
  v13 = v11[25];
  v167 = *v11;
  v163 = *(v11 + 2);
  v165 = v12;
  v169 = v11[24];
  if (v13)
  {
    v14 = 48.0;
  }

  else if (v11[24])
  {
    if (v12)
    {
      v14 = 48.0;
    }

    else
    {
      v14 = *v11;
    }
  }

  else
  {
    v14 = *(v11 + 2);
  }

  v15 = v7 * v14;
  v16 = *(v1 + 3);
  v295 = *(v1 + 2);
  v296 = v16;
  v297 = *(v1 + 4);
  v298 = *(v1 + 80);
  sub_18AF6E1A0(v14);
  v18 = v17;
  v19 = *(v1 + 50);
  v20 = *(v1 + 58);
  v292 = *(v1 + 54);
  v293 = v20;
  v294 = *(v1 + 248);
  v290 = *(v1 + 46);
  v291 = v19;
  sub_18AF6E014(v14);
  v22 = v21;
  v23 = *(v1 + 35);
  v24 = *(v1 + 288);
  v25 = *(v1 + 37);
  v26 = *(v1 + 304);
  v171 = *(v1 + 39);
  v27 = *(v1 + 320);
  v177 = *(v1 + 41);
  v174 = *(v1 + 336);
  v183 = *(v1 + 43);
  v180 = *(v1 + 352);
  if (v13)
  {
    v28 = 48.0;
  }

  else if (v169)
  {
    v28 = v167;
    if (v165)
    {
      v28 = 48.0;
    }
  }

  else
  {
    v28 = v163;
  }

  v120 = v1[64];
  v114 = v1[65];
  v112 = v1[66];
  v116 = v1[67];
  v113 = v1[68];
  v118 = v1[69];
  v29 = fmin(v15, 75.0);
  v30 = v8 * v14;
  v289 = *(v1 + 424);
  v31 = *(v1 + 102);
  v287 = *(v1 + 98);
  v288 = v31;
  v32 = *(v1 + 94);
  v285 = *(v1 + 90);
  v286 = v32;
  sub_18AF6E014(v28);
  v34 = v33 + v33;
  v110 = sub_18AF6FBF4(v3, v23, v24);
  v35 = sub_18AF6FBF4(v3, v25, v26);
  v108 = sub_18AF6FBF4(v3, v171, v27);
  v164 = sub_18AF6FBF4(v3, v177, v174);
  v162 = sub_18AF6FBF4(v3, v183, v180);
  sub_18AF71074(v3, v262);
  v166 = v262[1];
  v168 = v262[0];
  v149 = v264;
  v150 = v263;
  v148 = v265;
  sub_18AF711A0(v3, v266);
  v142 = *v266;
  v111 = *&v266[1];
  v109 = *&v266[2];
  v136 = v268;
  v139 = v269;
  v140 = v267;
  v184 = v270;
  v36 = v271;
  v37 = v272;
  v38 = v273;
  v172 = v276;
  v175 = v275;
  v39 = v277;
  v178 = v278;
  v181 = v274;
  v135 = v279;
  v170 = v280;
  sub_18AF6F7F8(v3, v261);
  v133 = v37;
  v134 = v36;
  v132 = v38;
  if (v160 >= 2)
  {
    v127 = 0x3FF921FB54442D18;
    v128 = 0x3F80000000000000;
    v125 = 0x40D3333300000000;
    v126 = 3231711232;
    v123 = 3226678067;
    v124 = 0xC180000000000000;
    v122 = 1098907648;
  }

  else
  {
    v122 = 0;
    v123 = 0;
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = 0;
  }

  v129 = *v1;
  *&v220 = v9;
  *(&v220 + 1) = v10;
  *&v221 = v29;
  *(&v221 + 1) = v30;
  *&v222 = 0;
  *(&v222 + 1) = v188;
  *&v223[0] = v185;
  v40 = *(v1 + 7);
  *(&v223[1] + 8) = *(v1 + 8);
  v41 = *(v1 + 10);
  *(&v223[2] + 8) = *(v1 + 9);
  *(&v223[3] + 8) = v41;
  *(&v223[4] + 5) = *(v1 + 173);
  *(v223 + 8) = v40;
  LODWORD(v224) = v18;
  *(&v224 + 1) = v22;
  sub_18AF6A9C0(&v220);
  v42 = v35;
  v186 = v35;
  v226 = 0;
  v43 = v34;
  v189 = v34;
  v227 = 0;
  v44 = *(v1 + 166);
  v161 = v1[167];
  v158 = *(v1 + 85);
  v159 = *(v1 + 84);
  v156 = *(v1 + 87);
  v157 = *(v1 + 86);
  v154 = *(v1 + 89);
  v155 = *(v1 + 88);
  v152 = *(v1 + 91);
  v153 = *(v1 + 90);
  v151 = *(v1 + 736);
  v228 = 0;
  v229[2] = v261[2];
  v229[3] = v261[3];
  v229[0] = v261[0];
  v229[1] = v261[1];
  v229[6] = v261[6];
  v229[7] = v261[7];
  v229[4] = v261[4];
  v229[5] = v261[5];
  v229[10] = v261[10];
  v229[11] = v261[11];
  v229[8] = v261[8];
  v229[9] = v261[9];
  v229[14] = v261[14];
  v229[15] = v261[15];
  v229[12] = v261[12];
  v229[13] = v261[13];
  sub_18AF4FBB8(v229);
  sub_18AF6EEF4(v3, &v281);
  v147 = LODWORD(v282);
  v145 = v284;
  v146 = v283;
  v144 = v281;
  sub_18AF6A99C(&v230);
  *&v209[100] = v236;
  *&v209[116] = v237;
  *&v209[132] = v238;
  *&v209[36] = v232;
  *&v209[52] = v233;
  *&v209[68] = v234;
  *&v209[84] = v235;
  *&v209[4] = v230;
  v209[148] = v239;
  *&v209[20] = v231;
  v240 = 1;
  v241 = 1;
  v242 = 1;
  sub_18AF6A96C(__src);
  memcpy(&v207[3], __src, 0x101uLL);
  v205 = 1;
  v249 = 1;
  v246 = 1;
  __src[260] = 1;
  v250 = 0u;
  v251 = 0u;
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  LODWORD(v255) = 0;
  BYTE4(v255) = 1;
  *v256 = 0;
  *(&v255 + 1) = 0;
  v256[8] = 1;
  *&v256[20] = 0;
  *&v256[12] = 0;
  v256[28] = 1;
  LODWORD(v257) = 0;
  *(&v257 + 1) = 0;
  sub_18AF6A9C0(&v250);
  *&__dst[96] = v223[3];
  *&__dst[112] = v223[4];
  *&__dst[128] = v224;
  *&__dst[32] = v222;
  *&__dst[48] = v223[0];
  *&__dst[64] = v223[1];
  *&__dst[80] = v223[2];
  *__dst = v220;
  *&__dst[16] = v221;
  *v193 = *&v256[16];
  *&v193[16] = v257;
  *&__dst[248] = *v256;
  *&__dst[184] = v252;
  *&__dst[200] = v253;
  *&__dst[216] = v254;
  *&__dst[232] = v255;
  *&__dst[152] = v250;
  *&__dst[168] = v251;
  v259[6] = v223[3];
  v259[7] = v223[4];
  v259[8] = v224;
  v259[2] = v222;
  v259[3] = v223[0];
  v259[4] = v223[1];
  v259[5] = v223[2];
  __dst[144] = v225;
  v193[32] = v258;
  v260 = v225;
  v259[0] = v220;
  v259[1] = v221;
  if (sub_18AF4FB80(v259) == 1)
  {
    *&v196[96] = *&__dst[248];
    *&v196[112] = *v193;
    *&v196[128] = *&v193[16];
    v196[144] = v193[32];
    *&v196[32] = *&__dst[184];
    *&v196[48] = *&__dst[200];
    *&v196[64] = *&__dst[216];
    *&v196[80] = *&__dst[232];
    *v196 = *&__dst[152];
    *&v196[16] = *&__dst[168];
    v45 = v109;
    v46 = v111;
    v47 = v142;
    if (sub_18AF4FB80(v196) == 1)
    {
      v216 = v236;
      v217 = v237;
      v218 = v238;
      v219 = v239;
      v212 = v232;
      v213 = v233;
      v214 = v234;
      v215 = v235;
      v210 = v230;
      v211 = v231;
      v48 = v140;
      v49 = v136;
      v50 = v39;
LABEL_27:
      v51 = v110;
      v52 = v108;
      goto LABEL_28;
    }
  }

  else
  {
    *&v196[96] = *&__dst[248];
    *&v196[112] = *v193;
    *&v196[128] = *&v193[16];
    v196[144] = v193[32];
    *&v196[32] = *&__dst[184];
    *&v196[48] = *&__dst[200];
    *&v196[64] = *&__dst[216];
    *&v196[80] = *&__dst[232];
    *v196 = *&__dst[152];
    *&v196[16] = *&__dst[168];
    v45 = v109;
    v46 = v111;
    v47 = v142;
    if (sub_18AF4FB80(v196) != 1)
    {
      v350[6] = *&__dst[96];
      v350[7] = *&__dst[112];
      v350[2] = *&__dst[32];
      v350[3] = *&__dst[48];
      v350[4] = *&__dst[64];
      v350[5] = *&__dst[80];
      v350[0] = *__dst;
      v350[1] = *&__dst[16];
      v351[5] = *&__dst[232];
      v351[6] = *&__dst[248];
      v351[7] = *v193;
      v351[8] = *&v193[16];
      v351[1] = *&__dst[168];
      v351[2] = *&__dst[184];
      v351[3] = *&__dst[200];
      v351[4] = *&__dst[216];
      v350[8] = *&__dst[128];
      v351[0] = *&__dst[152];
      v48 = v140;
      v49 = v136;
      v50 = v39;
      if (sub_18AF6EB8C(v350, v351))
      {
        v216 = v236;
        v217 = v237;
        v218 = v238;
        v219 = v239;
        v212 = v232;
        v213 = v233;
        v214 = v234;
        v215 = v235;
        v53 = v230;
        v54 = v231;
      }

      else
      {
        v216 = v223[3];
        v217 = v223[4];
        v218 = v224;
        v219 = v225;
        v212 = v222;
        v213 = v223[0];
        v214 = v223[1];
        v215 = v223[2];
        v53 = v220;
        v54 = v221;
      }

      v210 = v53;
      v211 = v54;
      goto LABEL_27;
    }
  }

  v48 = v140;
  v49 = v136;
  v50 = v39;
  v51 = v110;
  v52 = v108;
  v216 = v223[3];
  v217 = v223[4];
  v218 = v224;
  v219 = v225;
  v212 = v222;
  v213 = v223[0];
  v214 = v223[1];
  v215 = v223[2];
  v210 = v220;
  v211 = v221;
LABEL_28:
  *&v209[100] = v216;
  *&v209[116] = v217;
  *&v209[132] = v218;
  *&v209[36] = v212;
  *&v209[52] = v213;
  *&v209[68] = v214;
  *&v209[84] = v215;
  *&v209[4] = v210;
  *&v55 = v186;
  *(&v55 + 1) = v52;
  v187 = v55;
  *&v55 = v189;
  *(&v55 + 1) = v51;
  v190 = v55;
  v56 = v114 | (v112 << 32);
  v209[148] = v219;
  *&v209[20] = v211;
  v199 = 0;
  v57 = v118 | (v120 << 32);
  v58 = v226;
  v59 = v178;
  v60 = v184;
  v143 = v116 | (v113 << 32);
  if ((v226 & 1) == 0)
  {
    *v347 = v43;
    *&v347[1] = v51;
    *&v347[2] = v42;
    *&v347[3] = v52;
    *&v347[4] = v164;
    *&v347[5] = v162;
    v347[6] = v114 | (v112 << 32);
    v347[7] = v116 | (v113 << 32);
    v347[8] = v118 | (v120 << 32);
    memset(v348, 0, sizeof(v348));
    v349 = 0;
    if (sub_18AE90DEC(v347, v348))
    {
      v56 = 0;
      v143 = 0;
      v57 = 0;
      v162 = 0.0;
      v164 = 0.0;
      v58 = v240;
      v190 = 0u;
      v187 = 0u;
    }
  }

  v198 = 0;
  v61 = v227;
  v62 = v168.f64[1];
  v63 = v166.f64[1];
  v117 = v56;
  if ((v227 & 1) == 0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v168), vceqzq_f64(v166))))) & 1) == 0 && v150 == 0.0 && v149 == 0.0 && v148 == 0.0)
  {
    v148 = 0.0;
    v168.f64[0] = 0.0;
    v61 = v241;
    v62 = 0.0;
    v166.f64[0] = 0.0;
    v63 = 0.0;
    v149 = 0.0;
    v150 = 0.0;
  }

  v197 = 0;
  v141 = v228;
  v115 = v61;
  if ((v228 & 1) == 0 && v44 == 0.0)
  {
    v324 = v161;
    v325 = v159;
    v326 = v158;
    v327 = v157;
    v328 = v156;
    v329 = v155;
    v330 = v154;
    v331 = v153;
    v332 = v152;
    v333 = v151;
    memset(v334, 0, sizeof(v334));
    v335 = 0;
    v336 = 1;
    v337 = v247;
    v338 = v248;
    v340 = 0;
    v339 = 0;
    v341 = 1;
    v342 = v244;
    v343 = v245;
    v344 = 0;
    v345 = 0;
    v346 = 1;
    if (sub_18AE8DE28(&v324, v334))
    {
      v161 = 0;
      v158 = 0;
      v159 = 0;
      v156 = 0;
      v157 = 0;
      v154 = 0;
      v155 = 0;
      v152 = 0;
      v153 = 0;
      v151 = 0;
      v44 = 0.0;
      v141 = v242;
    }
  }

  v121 = v57;
  v119 = v58;
  if (v170 == 2)
  {
    LOBYTE(v170) = 2;
LABEL_43:
    v64 = v181;
    v66 = v172;
    v65 = v175;
    goto LABEL_44;
  }

  if (v47 != 0.0 || v46 != 0.0 || v45 != 0.0 || v48 != 0.0 || v49 != 0.0 || v139 != 0.0)
  {
    goto LABEL_43;
  }

  v301 = v184;
  v67 = v36;
  v302 = v36;
  v68 = v50;
  v70 = v38;
  v69 = v133;
  v303 = v133;
  v304 = v38;
  v305 = v181;
  v306 = v175;
  v307 = v172;
  v137 = v68;
  v308 = v68;
  v309 = v178;
  v71 = v135;
  v310 = v135;
  memset(v311, 0, sizeof(v311));
  v312 = 0;
  v313 = 1;
  v314 = v247;
  v315 = v248;
  v317 = 0;
  v316 = 0;
  v318 = 1;
  v319 = v244;
  v320 = v245;
  v321 = 0;
  v322 = 0;
  v323 = 1;
  if (sub_18AE8DE28(&v301, v311))
  {
    v72 = v170;
    v73 = (v170 & 1) == 0;
    if ((v170 & 1) == 0)
    {
      v47 = 0.0;
      v46 = 0.0;
      v45 = 0.0;
      v71 = 0;
    }

    v135 = v71;
    if ((v170 & 1) == 0)
    {
      v72 = 2;
    }

    LOBYTE(v170) = v72;
    if (v73)
    {
      v74 = 0;
    }

    else
    {
      v74 = v184;
    }

    if (v73)
    {
      v48 = 0.0;
    }

    if (v73)
    {
      v49 = 0.0;
    }

    if (v73)
    {
      v67 = 0;
    }

    if (v73)
    {
      v69 = 0;
    }

    v133 = v69;
    v134 = v67;
    if (v73)
    {
      v70 = 0;
    }

    v132 = v70;
    v64 = v181;
    if (v73)
    {
      v64 = 0;
    }

    v75 = v139;
    if (v73)
    {
      v75 = 0.0;
    }

    v139 = v75;
    if (v73)
    {
      v65 = 0;
    }

    else
    {
      v65 = v175;
    }

    if (v73)
    {
      v66 = 0;
    }

    else
    {
      v66 = v172;
    }

    v50 = v137;
    if (v73)
    {
      v50 = 0;
    }

    if (v73)
    {
      v59 = 0;
    }

    else
    {
      v59 = v178;
    }

    v60 = v74;
  }

  else
  {
    v65 = v175;
    v66 = v172;
    v50 = v137;
    v59 = v178;
    v64 = v181;
    v60 = v184;
  }

LABEL_44:
  v208 = 0;
  LODWORD(v195[0]) = 0;
  memset(&v195[1], 0, 20);
  memset(&v195[4], 0, 52);
  BYTE4(v195[10]) = 1;
  *(&v195[10] + 5) = v247;
  HIBYTE(v195[10]) = v248;
  v195[12] = 0;
  v195[11] = 0;
  LOBYTE(v195[13]) = 1;
  *(&v195[13] + 1) = v244;
  BYTE3(v195[13]) = v245;
  *(&v195[13] + 4) = 0;
  *(&v195[14] + 4) = 0;
  BYTE4(v195[15]) = 1;
  memset(&v195[16], 0, 20);
  memset(&v195[19], 0, 52);
  BYTE4(v195[25]) = 1;
  *(&v195[25] + 5) = v247;
  HIBYTE(v195[25]) = v248;
  v195[27] = 0;
  v195[26] = 0;
  LOBYTE(v195[28]) = 1;
  BYTE3(v195[28]) = v245;
  *(&v195[28] + 1) = v244;
  *(&v195[28] + 4) = 0;
  *(&v195[29] + 4) = 0;
  BYTE4(v195[30]) = 1;
  v195[31] = 0;
  sub_18AF4FBB8(v195);
  memcpy(__dst, v229, 0x101uLL);
  memcpy(v193, v195, sizeof(v193));
  memcpy(v196, v229, sizeof(v196));
  v179 = v59;
  if (sub_18AF4FB9C(v196) == 1)
  {
    memcpy(v191, v193, 0x101uLL);
    if (sub_18AF4FB9C(v191) == 1)
    {
LABEL_98:
      v77 = __src;
      goto LABEL_100;
    }
  }

  else
  {
    memcpy(v191, v193, 0x101uLL);
    v76 = sub_18AF4FB9C(v191);
    if (v76 != 1)
    {
      v299[13] = *&__dst[208];
      v299[14] = *&__dst[224];
      v299[15] = *&__dst[240];
      v299[8] = *&__dst[128];
      v299[9] = *&__dst[144];
      v299[10] = *&__dst[160];
      v299[11] = *&__dst[176];
      v299[12] = *&__dst[192];
      v299[4] = *&__dst[64];
      v299[5] = *&__dst[80];
      v299[6] = *&__dst[96];
      v299[7] = *&__dst[112];
      v299[0] = *__dst;
      v299[1] = *&__dst[16];
      v299[2] = *&__dst[32];
      v299[3] = *&__dst[48];
      v300[12] = *&v193[192];
      v300[13] = *&v193[208];
      v300[14] = *&v193[224];
      v300[15] = *&v193[240];
      v300[8] = *&v193[128];
      v300[9] = *&v193[144];
      v300[10] = *&v193[160];
      v300[11] = *&v193[176];
      v300[4] = *&v193[64];
      v300[5] = *&v193[80];
      v300[6] = *&v193[96];
      v300[7] = *&v193[112];
      v300[0] = *v193;
      v300[1] = *&v193[16];
      v300[2] = *&v193[32];
      v300[3] = *&v193[48];
      if (sub_18AE92EB0(v299, v300))
      {
        goto LABEL_98;
      }
    }
  }

  v77 = v229;
LABEL_100:
  memcpy(v194, v77, sizeof(v194));
  memcpy(&v207[3], v194, 0x101uLL);
  v78 = 0;
  v182 = v64;
  v173 = v66;
  v176 = v65;
  v138 = v50;
  if (*&v281 == 0.0)
  {
    v79 = v128;
    v80 = v126;
    if (*(&v281 + 1) == 0.0)
    {
      v78 = 0;
      if (v282 == 0.0 && v283 == 0.0)
      {
        v78 = v284 == 0.0;
        v81 = v144;
        if (v284 == 0.0)
        {
          v81 = 0;
        }

        v144 = v81;
        v82 = v147;
        if (v284 == 0.0)
        {
          v82 = 0;
        }

        v147 = v82;
        v83 = v146;
        if (v284 == 0.0)
        {
          v83 = 0.0;
        }

        v146 = v83;
        v84 = v145;
        if (v284 == 0.0)
        {
          v84 = 0.0;
        }

        v145 = v84;
      }
    }

    v85 = v127;
  }

  else
  {
    v85 = v127;
    v79 = v128;
    v80 = v126;
  }

  v206 = v78;
  v191[0] = v124 | v122;
  v191[1] = v125 | v123;
  v191[2] = v80;
  v191[3] = v85;
  v191[4] = 0;
  v191[5] = v79;
  memset(__dst, 0, 48);
  v86 = v79;
  v87 = v80;
  v88 = sub_18AE92DBC(v191, __dst);
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v92 = v85;
  v93 = 0;
  v94 = 0;
  if (!v88)
  {
    v89 = v124 | v122;
    v90 = v125 | v123;
    v91 = v87;
    v93 = v92;
    v94 = v86;
  }

  *(v5 + 224) = v117;
  *(v5 + 232) = v143;
  v95 = 0x4120000000000000;
  if ((v130 & 0x2000000) != 0)
  {
    v95 = 0;
  }

  v96 = v89;
  v97 = v88;
  v205 = v88;
  v98 = 0.0;
  v204 = 1;
  if ((v131 & 0x1000000) == 0)
  {
    v98 = 1.0;
  }

  v203 = 1;
  v202 = 0;
  v201 = 1;
  v200 = 0;
  v99 = v208;
  *(v5 + 161) = *&v209[141];
  v100 = v206;
  *v5 = v129;
  *(v5 + 8) = 0;
  *(v5 + 16) = v98;
  v101 = *v209;
  *(v5 + 36) = *&v209[16];
  *(v5 + 20) = v101;
  v102 = *&v209[32];
  v103 = *&v209[48];
  v104 = *&v209[64];
  *(v5 + 100) = *&v209[80];
  *(v5 + 84) = v104;
  *(v5 + 68) = v103;
  *(v5 + 52) = v102;
  v105 = *&v209[96];
  v106 = *&v209[112];
  *(v5 + 148) = *&v209[128];
  *(v5 + 132) = v106;
  *(v5 + 116) = v105;
  *(v5 + 176) = v190;
  *(v5 + 192) = v187;
  *(v5 + 208) = v164;
  *(v5 + 216) = v162;
  *(v5 + 240) = v121;
  *(v5 + 248) = v119;
  *(v5 + 256) = v168.f64[0];
  *(v5 + 264) = v62;
  *(v5 + 272) = v166.f64[0];
  *(v5 + 280) = v63;
  *(v5 + 288) = v150;
  *(v5 + 296) = v149;
  *(v5 + 304) = v148;
  *(v5 + 308) = v115;
  *(v5 + 312) = v44;
  *(v5 + 316) = v161;
  *(v5 + 320) = v159;
  *(v5 + 328) = v158;
  *(v5 + 336) = v157;
  *(v5 + 344) = v156;
  *(v5 + 352) = v155;
  *(v5 + 360) = v154;
  *(v5 + 368) = v153;
  *(v5 + 376) = v152;
  *(v5 + 384) = v151;
  *(v5 + 385) = v141;
  *(v5 + 392) = v47;
  *(v5 + 400) = v46;
  *(v5 + 408) = v45;
  *(v5 + 416) = v48;
  *(v5 + 420) = v49;
  *(v5 + 424) = v139;
  *(v5 + 428) = v60;
  *(v5 + 432) = v134;
  *(v5 + 440) = v133;
  *(v5 + 448) = v132;
  *(v5 + 456) = v182;
  *(v5 + 464) = v176;
  *(v5 + 472) = v173;
  *(v5 + 480) = v138;
  *(v5 + 488) = v179;
  *(v5 + 496) = v135;
  *(v5 + 497) = v170;
  *(v5 + 500) = 0xBF8000003F800000;
  *(v5 + 508) = v95;
  *(v5 + 516) = v99;
  memcpy((v5 + 517), v207, 0x104uLL);
  *(v5 + 784) = v144;
  *(v5 + 792) = v147;
  *(v5 + 800) = v146;
  *(v5 + 808) = v145;
  *(v5 + 816) = v100;
  *(v5 + 824) = v96;
  *(v5 + 832) = v90;
  *(v5 + 840) = v91;
  *(v5 + 848) = v93;
  *(v5 + 856) = 0;
  *(v5 + 864) = v94;
  *(v5 + 872) = v97;
  *(v5 + 880) = 0;
  *(v5 + 888) = 0u;
  *(v5 + 904) = 1;
  *(v5 + 912) = 0;
  *(v5 + 920) = 0u;
  *(v5 + 936) = 1;
  *(v5 + 944) = xmmword_18AFDC130;
  *(v5 + 960) = 0;
  *(v5 + 968) = 0u;
  *(v5 + 984) = 1;
  result = 1.0;
  *(v5 + 992) = 0u;
  *(v5 + 1008) = xmmword_18AFD1C10;
  *(v5 + 1024) = 0;
  return result;
}

double sub_18AF71074@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = a1 + *(_s11EnvironmentVMa() + 44);
  if (v6[25])
  {
    v7 = 48.0;
    v8 = v5 * 48.0;
    result = *(v2 + 16);
    if (*(v2 + 8) > v5 * 48.0)
    {
      v8 = *(v2 + 8);
    }

    v10 = *(v2 + 24) * 48.0;
    if (*(v2 + 32) > v10)
    {
      v10 = *(v2 + 32);
    }

    v11 = *(v2 + 40);
    v12 = *(v2 + 48);
    goto LABEL_20;
  }

  v13 = *(v6 + 2);
  if (v13)
  {
    v14 = 48.0;
  }

  else
  {
    v14 = *v6;
  }

  v8 = v5 * v14;
  result = *(v2 + 16);
  if (*(v2 + 8) > v5 * v14)
  {
    v8 = *(v2 + 8);
  }

  v15 = *(v2 + 24) * v14;
  if (*(v2 + 32) > v15)
  {
    v10 = *(v2 + 32);
  }

  else
  {
    v10 = v15;
  }

  v11 = *(v2 + 40);
  v12 = *(v2 + 48);
  if ((v6[24] & 1) == 0)
  {
    v7 = *(v6 + 2);
LABEL_20:
    v16 = v12 * v7;
    goto LABEL_21;
  }

  v7 = *v6;
  if (v13)
  {
    v7 = 48.0;
  }

  v16 = v7 * v12;
LABEL_21:
  if (v11 < v10)
  {
    v10 = v11;
  }

  if (result >= v8)
  {
    result = v8;
  }

  v17 = v7 * *(v2 + 56);
  v18 = *(v2 + 64);
  v19 = *a1 + -1.0;
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0xBFF0000000000000;
  *(a2 + 40) = v19;
  *(a2 + 48) = v18;
  return result;
}

__n128 sub_18AF711A0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = a1 + *(_s11EnvironmentVMa() + 44);
  if ((*(v5 + 25) & 1) == 0)
  {
    v11 = *v5;
    v12 = *(v5 + 8);
    v6 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v13)
    {
      v14 = 48.0;
      if ((v12 & 1) == 0)
      {
        v14 = v11;
      }

      v7 = v4 * v14;
      v15 = *(v2 + 7);
      v17 = *(v2 + 9);
      v16 = *(v2 + 10);
      if (v12)
      {
        v8 = v15 * 48.0;
        if (v17 * 48.0 >= v16)
        {
          v9 = *(v2 + 10);
        }

        else
        {
          v9 = v17 * 48.0;
        }

        v18 = v2[1];
        v26 = *v2;
        v27 = v18;
        v28 = v2[2];
        v29 = *(v2 + 48);
        goto LABEL_20;
      }

      v8 = v15 * v11;
      v19 = v11;
    }

    else
    {
      v7 = v4 * v6;
      v8 = *(v2 + 7) * v6;
      v17 = *(v2 + 9);
      v16 = *(v2 + 10);
      v19 = v6;
    }

    v20 = v17 * v19;
    v21 = v2[1];
    v26 = *v2;
    v27 = v21;
    v28 = v2[2];
    v29 = *(v2 + 48);
    if (v20 >= v16)
    {
      v9 = v16;
    }

    else
    {
      v9 = v20;
    }

    if ((v13 & 1) == 0)
    {
LABEL_22:
      v10 = &v26;
      goto LABEL_23;
    }

LABEL_20:
    v6 = 48.0;
    if ((v12 & 1) == 0)
    {
      v6 = v11;
    }

    goto LABEL_22;
  }

  v6 = 48.0;
  v7 = v4 * 48.0;
  v8 = *(v2 + 7) * 48.0;
  if (*(v2 + 9) * 48.0 >= *(v2 + 10))
  {
    v9 = *(v2 + 10);
  }

  else
  {
    v9 = *(v2 + 9) * 48.0;
  }

  v10 = v2;
LABEL_23:
  v22 = v10[1];
  v30 = *v10;
  v31 = v22;
  v32 = v10[2];
  v33 = *(v10 + 48);
  sub_18AF6E1A0(v6);
  v23 = *(v2 + 157);
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v24;
  *(a2 + 28) = 1065353216;
  *(a2 + 52) = *(v2 + 104);
  *(a2 + 68) = *(v2 + 120);
  *(a2 + 84) = *(v2 + 136);
  *(a2 + 97) = *(v2 + 149);
  result = *(v2 + 88);
  *(a2 + 36) = result;
  *(a2 + 105) = v23;
  return result;
}

double sub_18AF7135C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 208);
  *&v97[196] = *(v3 + 192);
  *&v97[212] = v7;
  *&v97[228] = *(v3 + 224);
  v8 = *(v3 + 144);
  *&v97[132] = *(v3 + 128);
  *&v97[148] = v8;
  v9 = *(v3 + 176);
  *&v97[164] = *(v3 + 160);
  *&v97[180] = v9;
  v10 = *(v3 + 80);
  *&v97[68] = *(v3 + 64);
  *&v97[84] = v10;
  v11 = *(v3 + 112);
  *&v97[100] = *(v3 + 96);
  *&v97[116] = v11;
  v12 = *(v3 + 16);
  *&v97[4] = *v3;
  *&v97[20] = v12;
  v13 = *(v3 + 48);
  *&v97[36] = *(v3 + 32);
  *&v97[52] = v13;
  v14 = *(v3 + 376);
  *&v96[119] = *(v3 + 360);
  *&v96[135] = v14;
  *&v96[151] = *(v3 + 392);
  *&v96[160] = *(v3 + 401);
  v15 = *(v3 + 312);
  *&v96[55] = *(v3 + 296);
  *&v96[71] = v15;
  v16 = *(v3 + 344);
  *&v96[87] = *(v3 + 328);
  *&v96[103] = v16;
  *&v96[7] = *(v3 + 248);
  v17 = *(v3 + 280);
  *&v96[23] = *(v3 + 264);
  *&v96[39] = v17;
  v18 = *(v3 + 424);
  *&v95[23] = *(v3 + 440);
  v19 = *(v3 + 472);
  *&v95[39] = *(v3 + 456);
  v97[244] = *(v3 + 240);
  *&v95[55] = v19;
  *&v95[71] = *(v3 + 488);
  *&v95[7] = v18;
  v20 = *(v3 + 608);
  *&v94[100] = *(v3 + 592);
  *&v94[116] = v20;
  *&v94[132] = *(v3 + 624);
  *&v94[146] = *(v3 + 638);
  v21 = *(v3 + 544);
  *&v94[36] = *(v3 + 528);
  *&v94[52] = v21;
  v22 = *(v3 + 576);
  *&v94[68] = *(v3 + 560);
  *&v94[84] = v22;
  v23 = *(v3 + 512);
  *&v94[4] = *(v3 + 496);
  *&v94[20] = v23;
  *&v93[18] = *(v3 + 1152);
  *&v93[34] = *(v3 + 1168);
  *&v93[50] = *(v3 + 1184);
  *&v93[59] = *(v3 + 1193);
  *&v93[2] = *(v3 + 1136);
  memcpy(&__src[7], (v3 + 656), 0x198uLL);
  v69 = 1048576000;
  v82 = *&v97[192];
  v83 = *&v97[208];
  *v84 = *&v97[224];
  *&v84[13] = *&v97[237];
  v78 = *&v97[128];
  v79 = *&v97[144];
  v80 = *&v97[160];
  v81 = *&v97[176];
  v74 = *&v97[64];
  v75 = *&v97[80];
  v76 = *&v97[96];
  v77 = *&v97[112];
  v70 = *v97;
  v71 = *&v97[16];
  v72 = *&v97[32];
  v73 = *&v97[48];
  *&v84[133] = *&v96[112];
  *&v84[149] = *&v96[128];
  *&v84[165] = *&v96[144];
  *&v84[181] = *&v96[160];
  *&v84[69] = *&v96[48];
  *&v84[85] = *&v96[64];
  *&v84[101] = *&v96[80];
  *&v84[117] = *&v96[96];
  *&v84[37] = *&v96[16];
  *&v84[53] = *&v96[32];
  *&v84[21] = *v96;
  *&v84[229] = *&v95[32];
  *v85 = *&v95[48];
  *&v85[11] = *&v95[59];
  *&v84[197] = *v95;
  *&v84[213] = *&v95[16];
  *&v85[155] = *&v94[128];
  *&v85[171] = *&v94[144];
  *&v85[91] = *&v94[64];
  *&v85[107] = *&v94[80];
  *&v85[123] = *&v94[96];
  *&v85[139] = *&v94[112];
  *&v85[27] = *v94;
  *&v85[43] = *&v94[16];
  *&v85[59] = *&v94[32];
  *&v85[75] = *&v94[48];
  v86 = *&v94[160];
  v89 = *&v93[32];
  *v90 = *&v93[48];
  *&v90[11] = *&v93[59];
  v87 = *v93;
  v88 = *&v93[16];
  memcpy(v91, __src, sizeof(v91));
  sub_18AF719A4(a2, v60);
  v24 = v60[2];
  v25 = v60[3];
  v26 = *&v60[4];
  v27 = *(&v60[1] + 1);
  v54 = *&v60[1];
  v56 = v60[0];
  sub_18AF6FCC0(a1);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v56)))) & 1) == 0 && (v28 = vceqz_f32(v54), (v28.i8[0]) && (v28.i8[4] & 1) != 0 && (sub_18AFCCCB4() & 1) != 0 && *&v24 == 0.0 && *(&v24 + 1) == 0.0 && *(&v24 + 2) == 0.0 && *(&v24 + 3) == 0.0)
  {
    v53 = 0;
    v55 = 0;
    v57 = 0;
    v51 = 0;
    v52 = 0u;
    v29 = 1;
  }

  else
  {
    v29 = 0;
    v30 = v56.u32[1];
    v31 = v56.u32[0];
    v32.i32[0] = vdup_laneq_s32(v56, 3).u32[0];
    v32.i32[1] = v54.i32[1];
    v33 = vzip1_s32(*&vextq_s8(v56, v56, 8uLL), v54);
    v57 = v27;
    v55 = v31 | (v30 << 32);
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v52 = vorrq_s8(vshll_n_s32(v32, 0x20uLL), v34);
    v51 = *(&v24 + 1);
    v53 = v24;
  }

  v59 = v29;
  v35 = *&v25 == 0.0;
  if (*(&v25 + 1) != 0.0)
  {
    v35 = 0;
  }

  v36 = v26 == 0.0 && v35;
  v58 = v36;
  v37 = *(v3 + 1216);
  v38 = *(v3 + 1224);
  v39 = a2 + *(_s11EnvironmentVMa() + 44);
  if (*(v39 + 25) & 1) != 0 || (*(v39 + 8))
  {
    v40 = 48.0;
  }

  else
  {
    v40 = *v39;
  }

  v41 = v37 * v40;
  v42 = v38 * v40;
  if (v41 == 0.0 && v42 == 0.0)
  {
    v43 = 1;
    v41 = 0.0;
    v42 = 0.0;
  }

  else
  {
    v43 = 0;
  }

  v44 = !v36;
  if (v36)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = v26;
  }

  if (v44)
  {
    v46 = *(&v25 + 1);
  }

  else
  {
    v46 = 0;
  }

  if (v44)
  {
    v47 = v25;
  }

  else
  {
    v47 = 0;
  }

  memcpy(a3, v60, 0x338uLL);
  *(a3 + 824) = v55;
  *(a3 + 832) = v52;
  *(a3 + 848) = v57;
  *(a3 + 856) = v53;
  *(a3 + 864) = v51;
  *(a3 + 872) = v59;
  *(a3 + 873) = *v61;
  *(a3 + 876) = *&v61[3];
  *(a3 + 880) = v47;
  *(a3 + 888) = v46;
  *(a3 + 896) = v45;
  *(a3 + 904) = v58;
  *(a3 + 905) = *v62;
  *(a3 + 908) = *&v62[3];
  *(a3 + 912) = v41;
  *(a3 + 920) = v42;
  *(a3 + 928) = 0;
  *(a3 + 936) = v43;
  v48 = v66;
  *(a3 + 969) = v65;
  *(a3 + 985) = v48;
  *(a3 + 1001) = v67;
  *(a3 + 1017) = v68;
  result = *&v63;
  v50 = v64;
  *(a3 + 937) = v63;
  *(a3 + 953) = v50;
  return result;
}

uint64_t sub_18AF719A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = _s11EnvironmentVMa();
  v7 = a1 + *(result + 44);
  if (*(v7 + 25))
  {
    v8 = 48.0;
    v9 = v5 * 48.0;
    v10 = *(v2 + 8) * 48.0;
    v11 = vmulq_f64(*(v2 + 16), vdupq_n_s64(0x4048000000000000uLL));
    v12 = *(v2 + 40);
    v13 = *(v2 + 32) * 48.0;
  }

  else
  {
    v8 = *v7;
    v14 = *(v7 + 8) & 1;
    if (v14)
    {
      v15 = 48.0;
    }

    else
    {
      v15 = v8;
    }

    v9 = v5 * v15;
    v10 = *(v2 + 8) * v15;
    v11 = vmulq_n_f64(*(v2 + 16), v15);
    v12 = *(v2 + 40);
    v13 = v15 * *(v2 + 32);
    if (!v14)
    {
      v16 = v8 * v12;
      goto LABEL_10;
    }

    v8 = 48.0;
  }

  v16 = v12 * 48.0;
LABEL_10:
  v17 = *(v2 + 56);
  v18 = v16;
  v19 = v13;
  v20 = v8 * *(v2 + 48);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = vcvt_f32_f64(v11);
  *(a2 + 20) = v19;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 36) = v20;
  *(a2 + 40) = *(v2 + 64);
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = 0;
  return result;
}

BOOL sub_18AF71AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v67 = a6;
  v68 = a8;
  v62 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v55 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18AFCE074();
  v61 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v58 = v16;
  v59 = &v50 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v56 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v60 = &v50 - v18;
  v66 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_18AFCE074();
  v65 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v50 - v22;
  v24 = swift_getTupleTypeMetadata2();
  v63 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v50 - v25;
  if ((sub_18AFCDDC4() & 1) == 0)
  {
    return 0;
  }

  v69 = a3;
  v70 = a4;
  v54 = a5;
  v71 = a5;
  v72 = v67;
  v73 = a7;
  v74 = v68;
  v27 = type metadata accessor for ClampedLinearMap();
  if ((sub_18AFCDDC4() & 1) == 0 || *(a1 + *(v27 + 72)) != *(a2 + *(v27 + 72)))
  {
    return 0;
  }

  v50 = a7;
  v51 = v27;
  v67 = *(v27 + 76);
  v28 = a1;
  v29 = *(v24 + 48);
  v30 = *(v65 + 16);
  v52 = v28;
  v30(v26, &v67[v28], v21);
  v68 = v29;
  v53 = a2;
  v31 = &v67[a2];
  v67 = v30;
  v30(&v26[v29], v31, v21);
  v32 = *(v66 + 48);
  if (v32(v26, 1, a4) != 1)
  {
    (v67)(v23, v26, v21);
    if (v32(&v26[v68], 1, a4) != 1)
    {
      v33 = v66;
      v34 = v57;
      (*(v66 + 32))(v57, &v26[v68], a4);
      v35 = sub_18AFCDDF4();
      v36 = *(v33 + 8);
      v36(v34, a4);
      v36(v23, a4);
      (*(v65 + 8))(v26, v21);
      if ((v35 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v66 + 8))(v23, a4);
LABEL_9:
    (*(v63 + 8))(v26, v24);
    return 0;
  }

  if (v32(&v26[v68], 1, a4) != 1)
  {
    goto LABEL_9;
  }

  (*(v65 + 8))(v26, v21);
LABEL_11:
  v37 = *(v51 + 80);
  v38 = *(TupleTypeMetadata2 + 48);
  v40 = v60;
  v39 = v61;
  v41 = *(v61 + 16);
  v42 = v58;
  v41(v60, v52 + v37, v58);
  v41(&v40[v38], v53 + v37, v42);
  v43 = v62;
  v44 = *(v62 + 48);
  if (v44(v40, 1, a3) == 1)
  {
    if (v44(&v40[v38], 1, a3) == 1)
    {
      (*(v39 + 8))(v40, v42);
      return 1;
    }

    goto LABEL_16;
  }

  v41(v59, v40, v42);
  if (v44(&v40[v38], 1, a3) == 1)
  {
    (*(v43 + 8))(v59, a3);
LABEL_16:
    (*(v56 + 8))(v40, TupleTypeMetadata2);
    return 0;
  }

  v46 = v55;
  (*(v43 + 32))(v55, &v40[v38], a3);
  v47 = v59;
  v48 = sub_18AFCDDF4();
  v49 = *(v43 + 8);
  v49(v46, a3);
  v49(v47, a3);
  (*(v39 + 8))(v40, v42);
  return (v48 & 1) != 0;
}

uint64_t sub_18AF72214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_18AFCDDD4();
  MEMORY[0x18CFED150](a1, v7, a3);
  v8 = sub_18AFCDDD4();
  MEMORY[0x18CFED150](a1, v8, a4);
  sub_18AFCE2B4();
  sub_18AFCE074();
  sub_18AFCE084();
  sub_18AFCE074();
  return sub_18AFCE084();
}

uint64_t sub_18AF72304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18AFCE294();
  sub_18AF72214(v7, a1, a2, a3);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF72364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v52 = a1;
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v57 = a6;
  v58 = a7;
  v59 = a8;
  v14 = type metadata accessor for ClampedLinearMap();
  v49 = *(v14 - 8);
  v50 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v41 - v15;
  v48 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v41 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a3;
  v44 = a5;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v57 = a6;
  v45 = a6;
  v46 = a8;
  v51 = a7;
  v58 = a7;
  v59 = a8;
  v18 = type metadata accessor for InputOutputMap();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  v26 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v28 = &v41 - v27;
  v30 = *(v29 + 48);
  v31 = *(v19 + 16);
  v31(&v41 - v27, v52, v18, v26);
  (v31)(&v28[v30], v53, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v31)(v24, v28, v18);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v37 = v48;
      v38 = v41;
      (*(v48 + 32))(v41, &v28[v30], a4);
      v35 = sub_18AFCDDF4();
      v39 = *(v37 + 8);
      v39(v38, a4);
      v39(v24, a4);
      goto LABEL_9;
    }

    (*(v48 + 8))(v24, a4);
    goto LABEL_7;
  }

  (v31)(v21, v28, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v49 + 8))(v21, v50);
LABEL_7:
    v35 = 0;
    v19 = v47;
    v18 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v33 = v49;
  v32 = v50;
  v34 = v42;
  (*(v49 + 32))(v42, &v28[v30], v50);
  v35 = sub_18AF71AAC(v21, v34, v43, a4, v44, v45, v51, v46);
  v36 = *(v33 + 8);
  v36(v34, v32);
  v36(v21, v32);
LABEL_9:
  (*(v19 + 8))(v28, v18);
  return v35 & 1;
}

uint64_t sub_18AF727D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v8 = *(a2 + 16);
  v9 = *(a2 + 56);
  v28 = a4;
  v29 = v8;
  v27 = *(a2 + 24);
  v30 = v27;
  v31 = *(a2 + 40);
  v32 = v9;
  v10 = type metadata accessor for ClampedLinearMap();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = v27;
  v15 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v5, a2, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v22, v10);
    MEMORY[0x18CFED610](1);
    sub_18AF72214(a1, v10, v26, v28);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    (*(v15 + 32))(v18, v22, v14);
    MEMORY[0x18CFED610](0);
    sub_18AFCDDA4();
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_18AF72A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18AFCE294();
  sub_18AF727D8(v7, a1, a2, a3);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF72B94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3 - 16);
  v6 = *(a3 - 8);
  sub_18AFCE294();
  a4(v9, a2, v6, v7);
  return sub_18AFCE2E4();
}

double sub_18AF72C48@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_18AFCCCF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_18AFCBB34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1ED56A8C0 != -1)
  {
    swift_once();
  }

  v10 = sub_18AFA49A8();
  _s11EnvironmentVMa();
  (*(v7 + 104))(v9, *MEMORY[0x1E697DBA8], v6);
  sub_18AE84004();
  v11 = sub_18AFCDDF4();
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
    v12 = 0.6;
    sub_18AFCCDE4();
    v13 = 0;
    v16.i64[0] = v14;
    v16.i64[1] = v15;
    v18.i32[1] = v17;
    v19 = vshll_n_s32(v18, 0x20uLL);
    v20 = 1.2;
    v21 = 1031127695;
    v39 = 1;
    v22 = vorrq_s8(v19, v16);
    v38 = 0;
    v37 = 1;
  }

  else
  {
    v39 = 1;
    v38 = 1;
    v37 = 1;
    v22 = 0uLL;
    v20 = 1.5;
    v12 = 1.0;
    v21 = 1063675494;
    v13 = 1;
  }

  *a1 = v10;
  __asm { FMOV            V3.2S, #1.0 }

  *(a1 + 4) = _D3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 81) = 0;
  *(a1 + 88) = 0x3FF0000000000000;
  *(a1 + 153) = 0;
  *(a1 + 156) = v21;
  *(a1 + 160) = v12;
  *(a1 + 164) = v20;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 185) = v35;
  *(a1 + 187) = v36;
  *(a1 + 188) = v22;
  *(a1 + 204) = v13;
  v28 = v33;
  *(a1 + 207) = v34;
  *(a1 + 205) = v28;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 1;
  *(a1 + 228) = v21;
  *(a1 + 232) = v12;
  *(a1 + 236) = v20;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 1;
  v29 = v35;
  *(a1 + 259) = v36;
  *(a1 + 257) = v29;
  *(a1 + 260) = v22;
  *(a1 + 276) = v13;
  v30 = v33;
  *(a1 + 279) = v34;
  *(a1 + 277) = v30;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 1;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  result = 166.0;
  *(a1 + 320) = xmmword_18AFDE650;
  *(a1 + 336) = xmmword_18AFDE660;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 1;
  *(a1 + 376) = 0;
  *(a1 + 384) = 257;
  *(a1 + 392) = 0x3FE0000000000000;
  *(a1 + 400) = 0x3FE6666666666666;
  return result;
}

uint64_t sub_18AF72FF0()
{
  result = sub_18AFCDDD4();
  if (v1 <= 0x3F)
  {
    result = sub_18AFCDDD4();
    if (v2 <= 0x3F)
    {
      result = sub_18AFCE074();
      if (v3 <= 0x3F)
      {
        result = sub_18AFCE074();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_18AF730D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = *(v4 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = v8 - 1;
  if (!v8)
  {
    v12 = 0;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  v13 = v5 - 1;
  if (!v5)
  {
    v13 = 0;
  }

  if (v11 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (v14 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = v14;
  }

  if (v8)
  {
    v16 = *(*(v6 - 8) + 64);
  }

  else
  {
    v16 = v9 + 1;
  }

  if (v5)
  {
    v17 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v17 = v10 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v4 + 80);
  v19 = *(v7 + 80);
  v20 = ((v10 + v18) & ~v18) + v10 + v19;
  v21 = ((v9 + v19) & ~v19) + v9;
  v22 = v19 + 1;
  v23 = a2 - v15;
  if (a2 > v15)
  {
    v24 = v17 + ((v16 + v18 + ((v22 + v21 + (v20 & ~v19)) & ~v19)) & ~v18);
    v25 = 8 * v24;
    if (v24 > 3)
    {
      goto LABEL_25;
    }

    v27 = ((v23 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    if (v27 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    if (v27 >= 2)
    {
LABEL_25:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_45;
      }

LABEL_32:
      v28 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v28 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v29 = v24;
        }

        else
        {
          v29 = 4;
        }

        if (v29 > 2)
        {
          if (v29 == 3)
          {
            v30 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v30 = *a1;
          }
        }

        else if (v29 == 1)
        {
          v30 = *a1;
        }

        else
        {
          v30 = *a1;
        }
      }

      else
      {
        v30 = 0;
      }

      v37 = v15 + (v30 | v28);
      return (v37 + 1);
    }
  }

LABEL_45:
  if (v5 == v15)
  {
    v31 = *(v4 + 48);

    return v31();
  }

  v33 = (a1 + v20) & ~v19;
  if (v8 != v15)
  {
    v35 = (v33 + v21);
    if (v14 <= 0xFE)
    {
      v36 = *v35;
      if (v36 >= 2)
      {
        v37 = (v36 + 2147483646) & 0x7FFFFFFF;
        return (v37 + 1);
      }

      return 0;
    }

    v38 = &v35[v22] & ~v19;
    if (v12 == v15)
    {
      if (v8 < 2)
      {
        return 0;
      }

      v39 = (*(v7 + 48))(v38, v8, v6);
    }

    else
    {
      v39 = (*(v4 + 48))((v38 + v18 + v16) & ~v18);
    }

    if (v39 >= 2)
    {
      return v39 - 1;
    }

    else
    {
      return 0;
    }
  }

  v34 = *(v7 + 48);

  return v34(v33, v8, v6);
}

char *sub_18AF733FC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(v6 + 64);
  if (v10 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = v10 - 1;
  if (!v10)
  {
    v14 = 0;
  }

  if (v13 <= v14)
  {
    v13 = v14;
  }

  v15 = v7 - 1;
  if (!v7)
  {
    v15 = 0;
  }

  if (v13 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (v16 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v16;
  }

  if (v10)
  {
    v18 = *(*(v8 - 8) + 64);
  }

  else
  {
    v18 = v11 + 1;
  }

  v19 = *(v6 + 80);
  v20 = *(v9 + 80);
  v21 = ((v12 + v19) & ~v19) + v12 + v20;
  v22 = ((v11 + v20) & ~v20) + v11;
  v23 = v20 + 1;
  if (!v7)
  {
    ++v12;
  }

  v24 = v12 + ((v18 + v19 + ((v20 + 1 + v22 + (v21 & ~v20)) & ~v20)) & ~v19);
  v25 = a3 >= v17;
  v26 = a3 - v17;
  if (v26 == 0 || !v25)
  {
LABEL_33:
    if (v17 < a2)
    {
      goto LABEL_34;
    }

    goto LABEL_43;
  }

  if (v24 > 3)
  {
    v5 = 1;
    if (v17 < a2)
    {
      goto LABEL_34;
    }

    goto LABEL_43;
  }

  v27 = ((v26 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
  if (!HIWORD(v27))
  {
    if (v27 < 0x100)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    if (v27 >= 2)
    {
      v5 = v28;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_33;
  }

  v5 = 4;
  if (v17 < a2)
  {
LABEL_34:
    v29 = ~v17 + a2;
    if (v24 < 4)
    {
      v31 = (v29 >> (8 * v24)) + 1;
      if (v24)
      {
        v32 = v29 & ~(-1 << (8 * v24));
        v33 = result;
        bzero(result, v24);
        result = v33;
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *v33 = v32;
            if (v5 > 1)
            {
LABEL_69:
              if (v5 == 2)
              {
                *&result[v24] = v31;
              }

              else
              {
                *&result[v24] = v31;
              }

              return result;
            }
          }

          else
          {
            *v33 = v29;
            if (v5 > 1)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_66;
        }

        *v33 = v32;
        v33[2] = BYTE2(v32);
      }

      if (v5 > 1)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v30 = result;
      bzero(result, v24);
      result = v30;
      *v30 = v29;
      v31 = 1;
      if (v5 > 1)
      {
        goto LABEL_69;
      }
    }

LABEL_66:
    if (v5)
    {
      result[v24] = v31;
    }

    return result;
  }

LABEL_43:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v24] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_50;
    }

    *&result[v24] = 0;
  }

  else if (v5)
  {
    result[v24] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_50;
  }

  if (!a2)
  {
    return result;
  }

LABEL_50:
  if (v7 == v17)
  {
    v34 = *(v6 + 56);
LABEL_52:

    return v34();
  }

  v35 = ~v20;
  result = (&result[v21] & v35);
  if (v10 == v17)
  {
    v36 = *(v9 + 56);
  }

  else
  {
    v37 = &result[v22];
    if (v16 <= 0xFE)
    {
      *v37 = a2 + 1;
      return result;
    }

    result = (&v37[v23] & v35);
    if (v14 != v17)
    {
      v34 = *(v6 + 56);
      goto LABEL_52;
    }

    if (v10 < 2)
    {
      return result;
    }

    v36 = *(v9 + 56);
  }

  return v36(result);
}

uint64_t sub_18AF73798()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ClampedLinearMap();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18AF73824(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 64);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = *(v3 + 80);
  v9 = (v4 + v8 + ((v4 + v8) & ~v8) + ((v6 + v8 + ((v6 + v7) & ~v7)) & ~v8) + 1) & ~v8;
  v10 = v4 + v7;
  if (!*(v3 + 84))
  {
    ++v10;
  }

  if (!*(v5 + 84))
  {
    ++v6;
  }

  v11 = v6 + ((v10 + v9) & ~v7);
  if (v11 <= v4)
  {
    v12 = *(*(*(a3 + 24) - 8) + 64);
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_30;
  }

  v13 = v12 + 1;
  v14 = 8 * (v12 + 1);
  if ((v12 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 254) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v17 < 2)
    {
LABEL_30:
      v19 = *(a1 + v12);
      if (v19 >= 2)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_19:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return (v13 | v18) + 255;
}

void sub_18AF73A00(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 64);
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = *(v5 + 80);
  v11 = (v6 + v10 + ((v6 + v10) & ~v10) + ((v8 + v10 + ((v8 + v9) & ~v9)) & ~v10) + 1) & ~v10;
  v12 = v6 + v9;
  if (!*(v5 + 84))
  {
    ++v12;
  }

  if (!*(v7 + 84))
  {
    ++v8;
  }

  v13 = v8 + ((v12 + v11) & ~v9);
  if (v13 <= v6)
  {
    v13 = *(*(*(a4 + 24) - 8) + 64);
  }

  v14 = v13 + 1;
  if (a3 < 0xFF)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 + ~(-1 << (8 * v14)) - 254) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFE)
  {
    v16 = a2 - 255;
    if (v14 >= 4)
    {
      bzero(a1, v13 + 1);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v17 = (v16 >> (8 * v14)) + 1;
    if (v13 != -1)
    {
      v20 = v16 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v20;
          if (v15 > 1)
          {
LABEL_43:
            if (v15 == 2)
            {
              *&a1[v14] = v17;
            }

            else
            {
              *&a1[v14] = v17;
            }

            return;
          }
        }

        else
        {
          *a1 = v16;
          if (v15 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }

      *a1 = v20;
      a1[2] = BYTE2(v20);
    }

    if (v15 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v13] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_28;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_18AF73C84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 1152))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18AF73CD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 1144) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 1152) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 1152) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_18AF73E98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 169))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 136);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18AF73EEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s6SpecV1V4BlurV8DistanceOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s6SpecV1V4BlurV8DistanceOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_18AF74038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 408))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 81);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18AF74080(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 408) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 408) = 0;
    }

    if (a2)
    {
      *(result + 81) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy158_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 142) = *(a2 + 142);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_18AF74170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 158))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18AF741C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 156) = 0;
    *(result + 152) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 158) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 158) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy68_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18AF74268(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 68))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AF74288(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 68) = v3;
  return result;
}

__n128 __swift_memcpy241_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_18AF74324(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 241))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18AF74378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 241) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 241) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_18AF7441C()
{
  result = qword_1EA99BB80;
  if (!qword_1EA99BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BB80);
  }

  return result;
}

unint64_t sub_18AF74474()
{
  result = qword_1EA99BB88;
  if (!qword_1EA99BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BB88);
  }

  return result;
}

uint64_t sub_18AF744DC()
{
  sub_18AFCE294();
  sub_18AF6C808();
  sub_18AF6C808();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF745DC()
{
  sub_18AFCE294();
  sub_18AF6C808();
  sub_18AF6C808();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF74664(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v17[0] = v2;
  *(v17 + 13) = *(a1 + 61);
  v3 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v3;
  v4 = *(a1 + 88);
  v5 = *(a1 + 120);
  v12[2] = *(a1 + 104);
  v13[0] = v5;
  *(v13 + 13) = *(a1 + 133);
  v12[0] = *(a1 + 72);
  v12[1] = v4;
  v6 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v19[0] = v6;
  *(v19 + 13) = *(a2 + 61);
  v7 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v7;
  v8 = *(a2 + 88);
  v9 = *(a2 + 120);
  v14[2] = *(a2 + 104);
  v15[0] = v9;
  *(v15 + 13) = *(a2 + 133);
  v14[0] = *(a2 + 72);
  v14[1] = v8;
  if (sub_18AE8DE28(v16, v18))
  {
    v10 = sub_18AE8DE28(v12, v14);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

double sub_18AF74724(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BB98);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v118 - v12;
  v14 = sub_18AFCDC44();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313[0] = *v8;
  *(v313 + 5) = *(v8 + 5);
  v157 = *(v8 + 13);
  v18 = *(v8 + 30);
  v310 = *(v8 + 14);
  v311 = v18;
  v312 = *(v8 + 46);
  v19 = *(_s11EnvironmentVMa() + 36);
  v156 = v4;
  v20 = v4 + v19;
  v22 = *(v4 + v19);
  v21 = *(v4 + v19 + 8);
  sub_18AF769B8(v2, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_18AF76A28(v13);
    if ((*(v20 + 24) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v24 = 1.0;
    if ((v6 & 0x100000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  (*(v15 + 32))(v17, v13, v14);
  sub_18AFCDC14();
  v21 = v25;
  (*(v15 + 8))(v17, v14);
  if (*(v20 + 24))
  {
    goto LABEL_10;
  }

LABEL_3:
  v23 = (*(v20 + 16) + -65.0) / 70.0;
  if (v23 < 0.0)
  {
    v23 = 0.0;
  }

  if (v23 > 1.0)
  {
    v23 = 1.0;
  }

  v24 = v23;
  if ((v6 & 0x100000000) == 0)
  {
LABEL_11:
    v26 = 0.0;
    if (*&v6 >= 0.0)
    {
      v26 = *&v6;
    }

    if (v26 <= 1.0)
    {
      v22 = v26;
    }

    else
    {
      v22 = 1.0;
    }
  }

LABEL_16:
  v27 = _s8TextSpecVMa();
  sub_18AF75A40(v156, &v233);
  v28 = (v2 + v27[6]);
  v30 = v28[2];
  v29 = v28[3];
  v32 = v28[6];
  v31 = v28[7];
  if ((v157 - 15) > 3)
  {
    v35 = *v28;
    v34 = v28[1];
    v36 = v22 * v28[4];
    v37 = v21 * v32 + v31;
    if (v28[5] + v36 > v37)
    {
      v37 = v28[5] + v36;
    }

    v133 = v37;
    v33 = v21 * v30 + v29;
    if (v33 >= v34 + v22 * v35)
    {
      v33 = v34 + v22 * v35;
    }
  }

  else
  {
    v133 = v32 * v24 + v31;
    v33 = v30 * v24 + v29;
  }

  v132 = v33;
  v150 = v233.n128_u64[1];
  v151 = v233.n128_u64[0];
  v148 = v235;
  v149 = v234;
  v153 = v237;
  v154 = v236;
  v158 = v238;
  v155 = v239;
  v152 = v240;
  memcpy(v309, (v2 + v27[7]), sizeof(v309));
  *v160 = v313[0];
  *&v160[5] = *(v313 + 5);
  v38 = v157;
  v160[13] = v157;
  *&v160[14] = v310;
  *&v160[30] = v311;
  *&v160[46] = v312;
  v39 = v156;
  sub_18AF75D7C(v160, v156, v24, 0, v188, v21);
  v40 = v2 + v27[8];
  v41 = *(v40 + 112);
  v307[15] = *(v40 + 96);
  v307[16] = v41;
  v307[17] = *(v40 + 128);
  v42 = *(v40 + 48);
  v307[11] = *(v40 + 32);
  v307[12] = v42;
  v43 = *(v40 + 80);
  v307[13] = *(v40 + 64);
  v307[14] = v43;
  v44 = *(v40 + 16);
  v307[9] = *v40;
  v307[10] = v44;
  *&v160[14] = v310;
  v308 = *(v40 + 144);
  *v160 = v313[0];
  *&v160[5] = *(v313 + 5);
  v160[13] = v38;
  *&v160[30] = v311;
  *&v160[46] = v312;
  sub_18AF76588(v160, v39, v241);
  v45 = *v241;
  v147 = v241[1];
  v145 = v243;
  v146 = v242;
  v143 = v245;
  v144 = v244;
  v141 = v247;
  v142 = v246;
  v139 = v249;
  v140 = v248;
  v138 = v250;
  v191 = 1;
  v190 = 1;
  v189 = 1;
  memset(v194, 0, 28);
  v193 = 0u;
  v192 = 0u;
  __asm { FMOV            V0.2S, #1.0 }

  *(&v194[1] + 12) = _D0;
  *(&v194[2] + 12) = 0;
  *(&v194[2] + 4) = 0;
  BYTE4(v194[3]) = 1;
  *&v195[0] = 0;
  *(&v194[3] + 1) = 0;
  BYTE8(v195[0]) = 1;
  *(&v195[1] + 4) = 0;
  *(v195 + 12) = 0;
  BYTE12(v195[1]) = 1;
  LODWORD(v196) = 0;
  *(&v196 + 1) = 0;
  sub_18AF6A9C0(&v192);
  v198 = 0;
  v199 = 0;
  v200 = 0;
  v50 = v2 + v27[9];
  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = *(v50 + 16);
  v54 = *(v50 + 24);
  v55 = *(v50 + 28);
  v134 = *(v50 + 32);
  v131 = *(v50 + 36);
  v56 = *(v50 + 40);
  v57 = *(v50 + 48);
  v130 = *(v50 + 56);
  v58 = *(v50 + 72);
  v126 = *(v50 + 64);
  v127 = v56;
  v59 = *(v50 + 88);
  v123 = *(v50 + 80);
  v124 = v59;
  v125 = v57;
  v60 = *(v50 + 96);
  v61 = *(v50 + 104);
  v157 = *(v50 + 105);
  v201[12] = v188[12];
  v201[13] = v188[13];
  v201[14] = v188[14];
  v201[15] = v188[15];
  v201[8] = v188[8];
  v201[9] = v188[9];
  v201[10] = v188[10];
  v201[11] = v188[11];
  v201[4] = v188[4];
  v201[5] = v188[5];
  v201[6] = v188[6];
  v201[7] = v188[7];
  v201[0] = v188[0];
  v201[1] = v188[1];
  v201[2] = v188[2];
  v201[3] = v188[3];
  sub_18AF4FBB8(v201);
  sub_18AF6EEF4(v39, &v251);
  v156 = v252;
  v136 = v254;
  v137 = v253;
  v135 = v251;
  sub_18AF6A99C(&v202);
  *&v177[100] = v208;
  *&v177[116] = v209;
  *&v177[132] = v210;
  *&v177[36] = v204;
  *&v177[52] = v205;
  *&v177[68] = v206;
  *&v177[84] = v207;
  *&v177[4] = v202;
  v177[148] = v211;
  *&v177[20] = v203;
  v212 = 1;
  v213 = 1;
  v214 = 1;
  sub_18AF6A96C(v215);
  memcpy(&v175[3], v215, 0x101uLL);
  v173 = 1;
  v221 = 1;
  v218 = 1;
  v215[260] = 1;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  LODWORD(v227) = 0;
  BYTE4(v227) = 1;
  *&v228[0] = 0;
  *(&v227 + 1) = 0;
  BYTE8(v228[0]) = 1;
  *(&v228[1] + 4) = 0;
  *(v228 + 12) = 0;
  BYTE12(v228[1]) = 1;
  LODWORD(v229) = 0;
  *(&v229 + 1) = 0;
  sub_18AF6A9C0(&v222);
  *&v160[96] = v195[0];
  *&v160[112] = v195[1];
  *&v160[128] = v196;
  *&v160[32] = v194[0];
  *&v160[48] = v194[1];
  *&v160[64] = v194[2];
  *&v160[80] = v194[3];
  *v160 = v192;
  *&v160[16] = v193;
  *v161 = v228[1];
  *&v161[16] = v229;
  *&v160[248] = v228[0];
  *&v160[184] = v224;
  *&v160[200] = v225;
  *&v160[216] = v226;
  *&v160[232] = v227;
  *&v160[152] = v222;
  *&v160[168] = v223;
  v231[6] = v195[0];
  v231[7] = v195[1];
  v231[8] = v196;
  v231[2] = v194[0];
  v231[3] = v194[1];
  v231[4] = v194[2];
  v231[5] = v194[3];
  v160[144] = v197;
  v161[32] = v230;
  v232 = v197;
  v231[0] = v192;
  v231[1] = v193;
  v62 = sub_18AF4FB80(v231);
  v128 = v61;
  v129 = v58;
  if (v62 != 1)
  {
    *&v164[96] = *&v160[248];
    *&v164[112] = *v161;
    *&v164[128] = *&v161[16];
    v164[144] = v161[32];
    *&v164[32] = *&v160[184];
    *&v164[48] = *&v160[200];
    *&v164[64] = *&v160[216];
    *&v164[80] = *&v160[232];
    *v164 = *&v160[152];
    *&v164[16] = *&v160[168];
    if (sub_18AF4FB80(v164) != 1)
    {
      v306[6] = *&v160[96];
      v306[7] = *&v160[112];
      v306[8] = *&v160[128];
      v306[2] = *&v160[32];
      v306[3] = *&v160[48];
      v306[5] = *&v160[80];
      v306[4] = *&v160[64];
      v306[1] = *&v160[16];
      v306[0] = *v160;
      v307[6] = *&v160[248];
      v307[7] = *v161;
      v307[8] = *&v161[16];
      v307[2] = *&v160[184];
      v307[3] = *&v160[200];
      v307[5] = *&v160[232];
      v307[4] = *&v160[216];
      v307[1] = *&v160[168];
      v307[0] = *&v160[152];
      v117 = sub_18AF6EB8C(v306, v307);
      v63 = v158;
      if (v117)
      {
        v184 = v208;
        v185 = v209;
        v186 = v210;
        v187 = v211;
        v180 = v204;
        v181 = v205;
        v182 = v206;
        v183 = v207;
        v64 = v202;
        v65 = v203;
        goto LABEL_28;
      }

LABEL_27:
      v184 = v195[0];
      v185 = v195[1];
      v186 = v196;
      v187 = v197;
      v180 = v194[0];
      v181 = v194[1];
      v182 = v194[2];
      v183 = v194[3];
      v64 = v192;
      v65 = v193;
LABEL_28:
      v178 = v64;
      v179 = v65;
      goto LABEL_29;
    }

LABEL_26:
    v63 = v158;
    goto LABEL_27;
  }

  *&v164[96] = *&v160[248];
  *&v164[112] = *v161;
  *&v164[128] = *&v161[16];
  v164[144] = v161[32];
  *&v164[32] = *&v160[184];
  *&v164[48] = *&v160[200];
  *&v164[64] = *&v160[216];
  *&v164[80] = *&v160[232];
  *v164 = *&v160[152];
  *&v164[16] = *&v160[168];
  if (sub_18AF4FB80(v164) != 1)
  {
    goto LABEL_26;
  }

  v184 = v208;
  v185 = v209;
  v186 = v210;
  v187 = v211;
  v180 = v204;
  v181 = v205;
  v182 = v206;
  v183 = v207;
  v178 = v202;
  v179 = v203;
  v63 = v158;
LABEL_29:
  v66 = v60;
  *&v177[100] = v184;
  *&v177[116] = v185;
  *&v177[132] = v186;
  *&v177[36] = v180;
  *&v177[52] = v181;
  *&v177[68] = v182;
  *&v177[84] = v183;
  *&v177[4] = v178;
  v177[148] = v187;
  *&v177[20] = v179;
  v167 = 0;
  v67 = v198;
  v68 = v124;
  v69 = v125;
  if ((v198 & 1) == 0)
  {
    v303[0] = v151;
    v303[1] = v150;
    v303[2] = v149;
    v303[3] = v148;
    v303[4] = v154;
    v303[5] = v153;
    v303[6] = v63;
    v303[7] = v155;
    v303[8] = v152;
    memset(v304, 0, sizeof(v304));
    v305 = 0;
    if (sub_18AE90DEC(v303, v304))
    {
      v150 = 0;
      v151 = 0;
      v148 = 0;
      v149 = 0;
      v153 = 0;
      v154 = 0;
      v63 = 0;
      v155 = 0;
      v152 = 0;
      v67 = v212;
    }
  }

  v166 = 0;
  v158 = v63;
  v165 = 0;
  v70 = v200;
  v121 = v199;
  v122 = v67;
  if ((v200 & 1) == 0 && v45 == 0.0)
  {
    v280 = v147;
    v281 = v146;
    v282 = v145;
    v283 = v144;
    v284 = v143;
    v285 = v142;
    v286 = v141;
    v287 = v140;
    v288 = v139;
    v289 = v138;
    memset(v290, 0, sizeof(v290));
    v291 = 0;
    v292 = 1;
    v293 = v219;
    v294 = v220;
    v296 = 0;
    v295 = 0;
    v297 = 1;
    v298 = v216;
    v299 = v217;
    v300 = 0;
    v301 = 0;
    v302 = 1;
    if (sub_18AE8DE28(&v280, v290))
    {
      v147 = 0;
      v145 = 0;
      v146 = 0;
      v143 = 0;
      v144 = 0;
      v141 = 0;
      v142 = 0;
      v139 = 0;
      v140 = 0;
      v138 = 0;
      v45 = 0.0;
      v70 = v214;
    }
  }

  v120 = v70;
  if (v157 == 2)
  {
    v157 = 2;
LABEL_38:
    v71 = v123;
    goto LABEL_39;
  }

  if (v51 != 0.0 || v52 != 0.0 || v53 != 0.0 || v54 != 0.0 || v55 != 0.0 || v134 != 0.0)
  {
    goto LABEL_38;
  }

  v257 = v131;
  v74 = v68;
  v75 = v127;
  v258 = v127;
  v259 = v69;
  v260 = v130;
  v76 = v66;
  v77 = v126;
  v261 = v126;
  v262 = v129;
  v78 = v123;
  v263 = v123;
  v264 = v74;
  v119 = v76;
  v265 = v76;
  v79 = v128;
  v266 = v128;
  memset(v267, 0, sizeof(v267));
  v268 = 0;
  v269 = 1;
  v270 = v219;
  v271 = v220;
  v273 = 0;
  v272 = 0;
  v274 = 1;
  v275 = v216;
  v276 = v217;
  v277 = 0;
  v278 = 0;
  v279 = 1;
  if (sub_18AE8DE28(&v257, v267))
  {
    v80 = v157;
    _ZF = (v157 & 1) == 0;
    if ((v157 & 1) == 0)
    {
      v51 = 0.0;
      v52 = 0.0;
      v53 = 0.0;
      v79 = 0;
    }

    v128 = v79;
    if ((v157 & 1) == 0)
    {
      v80 = 2;
    }

    v157 = v80;
    v82 = v131;
    if (_ZF)
    {
      v82 = 0;
    }

    v131 = v82;
    if (_ZF)
    {
      v54 = 0.0;
    }

    if (_ZF)
    {
      v55 = 0.0;
    }

    if (_ZF)
    {
      v75 = 0;
    }

    v69 = v125;
    if (_ZF)
    {
      v69 = 0;
    }

    if (_ZF)
    {
      v83 = 0;
    }

    else
    {
      v83 = v130;
    }

    if (_ZF)
    {
      v77 = 0;
    }

    v126 = v77;
    v127 = v75;
    v84 = v134;
    if (_ZF)
    {
      v84 = 0.0;
    }

    v134 = v84;
    v85 = v129;
    if (_ZF)
    {
      v85 = 0;
    }

    v129 = v85;
    v130 = v83;
    if (_ZF)
    {
      v71 = 0;
    }

    else
    {
      v71 = v78;
    }

    v68 = v124;
    if (_ZF)
    {
      v68 = 0;
    }

    v66 = v119;
    if (_ZF)
    {
      v66 = 0;
    }
  }

  else
  {
    v68 = v124;
    v69 = v125;
    v71 = v78;
    v66 = v119;
  }

LABEL_39:
  v176 = 0;
  LODWORD(v163[0]) = 0;
  memset(&v163[1], 0, 20);
  memset(&v163[4], 0, 52);
  BYTE4(v163[10]) = 1;
  *(&v163[10] + 5) = v219;
  HIBYTE(v163[10]) = v220;
  v163[12] = 0;
  v163[11] = 0;
  LOBYTE(v163[13]) = 1;
  *(&v163[13] + 1) = v216;
  BYTE3(v163[13]) = v217;
  *(&v163[13] + 4) = 0;
  *(&v163[14] + 4) = 0;
  BYTE4(v163[15]) = 1;
  memset(&v163[16], 0, 20);
  memset(&v163[19], 0, 52);
  BYTE4(v163[25]) = 1;
  *(&v163[25] + 5) = v219;
  HIBYTE(v163[25]) = v220;
  v163[27] = 0;
  v163[26] = 0;
  LOBYTE(v163[28]) = 1;
  BYTE3(v163[28]) = v217;
  *(&v163[28] + 1) = v216;
  *(&v163[28] + 4) = 0;
  *(&v163[29] + 4) = 0;
  BYTE4(v163[30]) = 1;
  v163[31] = 0;
  sub_18AF4FBB8(v163);
  memcpy(v160, v201, 0x101uLL);
  memcpy(v161, v163, sizeof(v161));
  memcpy(v164, v201, sizeof(v164));
  if (sub_18AF4FB9C(v164) == 1)
  {
    memcpy(v159, v161, 0x101uLL);
    v72 = sub_18AF4FB9C(v159);
    v73 = v127;
    if (v72 != 1)
    {
LABEL_92:
      v87 = v201;
      goto LABEL_93;
    }
  }

  else
  {
    memcpy(v159, v161, 0x101uLL);
    v86 = sub_18AF4FB9C(v159);
    v73 = v127;
    if (v86 == 1)
    {
      goto LABEL_92;
    }

    v255[12] = *&v160[192];
    v255[13] = *&v160[208];
    v255[14] = *&v160[224];
    v255[15] = *&v160[240];
    v255[8] = *&v160[128];
    v255[9] = *&v160[144];
    v255[10] = *&v160[160];
    v255[11] = *&v160[176];
    v255[4] = *&v160[64];
    v255[5] = *&v160[80];
    v255[6] = *&v160[96];
    v255[7] = *&v160[112];
    v255[0] = *v160;
    v255[1] = *&v160[16];
    v255[2] = *&v160[32];
    v255[3] = *&v160[48];
    v256[12] = *&v161[192];
    v256[13] = *&v161[208];
    v256[14] = *&v161[224];
    v256[15] = *&v161[240];
    v256[8] = *&v161[128];
    v256[9] = *&v161[144];
    v256[10] = *&v161[160];
    v256[11] = *&v161[176];
    v256[4] = *&v161[64];
    v256[5] = *&v161[80];
    v256[6] = *&v161[96];
    v256[7] = *&v161[112];
    v256[0] = *v161;
    v256[1] = *&v161[16];
    v256[2] = *&v161[32];
    v256[3] = *&v161[48];
    if (!sub_18AE92EB0(v255, v256))
    {
      goto LABEL_92;
    }
  }

  v87 = v215;
LABEL_93:
  memcpy(v162, v87, sizeof(v162));
  memcpy(&v175[3], v162, 0x101uLL);
  v88 = 0;
  if (*&v251 != 0.0 || *(&v251 + 1) != 0.0)
  {
    v89 = v66;
    goto LABEL_108;
  }

  v89 = v66;
  v88 = 0;
  if (*&v252 != 0.0)
  {
LABEL_108:
    v90 = v68;
    v91 = v71;
    goto LABEL_109;
  }

  v90 = v68;
  v91 = v71;
  if (v253 == 0.0)
  {
    v88 = v254 == 0.0;
    if (v254 == 0.0)
    {
      v92 = 0;
    }

    else
    {
      v92 = v135;
    }

    v93 = v156;
    if (v254 == 0.0)
    {
      v93 = 0;
    }

    v156 = v93;
    v94 = v137;
    if (v254 == 0.0)
    {
      v94 = 0.0;
    }

    v137 = v94;
    v95 = v136;
    if (v254 == 0.0)
    {
      v95 = 0.0;
    }

    v135 = v92;
    v136 = v95;
  }

LABEL_109:
  v174 = v88;
  memset(v159, 0, 48);
  memset(v160, 0, 48);
  v96 = sub_18AE92DBC(v159, v160);
  v97 = v150;
  *(v10 + 176) = v151;
  *(v10 + 184) = v97;
  v98 = v148;
  *(v10 + 192) = v149;
  *(v10 + 200) = v98;
  *v10 = 1048576000;
  *(v10 + 16) = 1065353216;
  v99 = v96;
  v173 = v96;
  v100 = *v177;
  *(v10 + 36) = *&v177[16];
  *(v10 + 20) = v100;
  v101 = *&v177[32];
  v102 = *&v177[48];
  v103 = *&v177[64];
  *(v10 + 100) = *&v177[80];
  *(v10 + 84) = v103;
  *(v10 + 68) = v102;
  v104 = *&v177[96];
  v105 = *&v177[112];
  v106 = *&v177[128];
  *(v10 + 161) = *&v177[141];
  v172 = 1;
  v171 = 1;
  v170 = 0;
  v169 = 1;
  v168 = 0;
  v107 = v153;
  *(v10 + 208) = v154;
  *(v10 + 216) = v107;
  LOBYTE(v98) = v176;
  v108 = v174;
  *(v10 + 8) = 0;
  *(v10 + 52) = v101;
  *(v10 + 148) = v106;
  *(v10 + 132) = v105;
  *(v10 + 116) = v104;
  v109 = v155;
  *(v10 + 224) = v158;
  *(v10 + 232) = v109;
  *(v10 + 240) = v152;
  LOBYTE(v109) = v121;
  *(v10 + 248) = v122;
  *&v101 = v132;
  *(v10 + 256) = v133;
  *(v10 + 264) = v101;
  *(v10 + 272) = 0u;
  *(v10 + 288) = -1.0;
  *(v10 + 296) = 10.0;
  *(v10 + 304) = 0;
  *(v10 + 308) = v109;
  *(v10 + 312) = v45;
  *(v10 + 316) = v147;
  v110 = v145;
  *(v10 + 320) = v146;
  *(v10 + 328) = v110;
  v111 = v143;
  *(v10 + 336) = v144;
  *(v10 + 344) = v111;
  v112 = v141;
  *(v10 + 352) = v142;
  *(v10 + 360) = v112;
  v113 = v139;
  *(v10 + 368) = v140;
  *(v10 + 376) = v113;
  *(v10 + 384) = v138;
  *(v10 + 385) = v120;
  *(v10 + 392) = v51;
  *(v10 + 400) = v52;
  *(v10 + 408) = v53;
  *(v10 + 416) = v54;
  *(v10 + 420) = v55;
  *(v10 + 424) = v134;
  *(v10 + 428) = v131;
  *(v10 + 432) = v73;
  *(v10 + 440) = v69;
  v114 = v126;
  *(v10 + 448) = v130;
  *(v10 + 456) = v114;
  *(v10 + 464) = v129;
  *(v10 + 472) = v91;
  *(v10 + 480) = v90;
  *(v10 + 488) = v89;
  *(v10 + 496) = v128;
  *(v10 + 497) = v157;
  *(v10 + 500) = xmmword_18AFDBC70;
  *(v10 + 516) = v98;
  memcpy((v10 + 517), v175, 0x104uLL);
  *(v10 + 784) = v135;
  *(v10 + 792) = v156;
  v115 = v136;
  *(v10 + 800) = v137;
  *(v10 + 808) = v115;
  *(v10 + 816) = v108;
  *(v10 + 824) = 0u;
  *(v10 + 840) = 0u;
  *(v10 + 856) = 0u;
  *(v10 + 872) = v99;
  *(v10 + 880) = 0;
  *(v10 + 888) = 0u;
  *(v10 + 904) = 1;
  *(v10 + 912) = 0;
  *(v10 + 920) = 0u;
  *(v10 + 936) = 1;
  *(v10 + 944) = xmmword_18AFDC130;
  *(v10 + 960) = 0;
  *(v10 + 968) = 0u;
  *(v10 + 984) = 1;
  result = 1.0;
  *(v10 + 992) = 0u;
  *(v10 + 1008) = xmmword_18AFD1C10;
  *(v10 + 1024) = 0;
  return result;
}

__n128 sub_18AF75A40@<Q0>(uint64_t a1@<X1>, __n128 *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v9 = *(v2 + 72);
  v10 = *(v2 + 80);
  v11 = *(v2 + 88);
  v12 = *(v2 + 96);
  v13 = *(v2 + 104);
  if (*(v2 + 40))
  {
    if (*(v2 + 40) == 1)
    {
      v14 = a1 + *(_s11EnvironmentVMa() + 44);
      v15 = *v14;
      v16 = ((*(v14 + 25) | *(v14 + 8)) & 1) == 0;
      goto LABEL_4;
    }

    v17 = a1 + *(_s11EnvironmentVMa() + 44);
    if (*(v17 + 25))
    {
      v15 = 48.0;
    }

    else
    {
      if (*(v17 + 24))
      {
        v15 = *v17;
        v16 = (*(v17 + 8) & 1) == 0;
LABEL_4:
        if (!v16)
        {
          v15 = 48.0;
        }

        goto LABEL_12;
      }

      v15 = *(v17 + 16);
    }

LABEL_12:
    v5 = v15 * v5;
  }

  if (!v7)
  {
    goto LABEL_25;
  }

  if (v7 == 1)
  {
    v18 = a1 + *(_s11EnvironmentVMa() + 44);
    v19 = *v18;
    v20 = ((*(v18 + 25) | *(v18 + 8)) & 1) == 0;
    goto LABEL_16;
  }

  v21 = a1 + *(_s11EnvironmentVMa() + 44);
  if (*(v21 + 25))
  {
    v19 = 48.0;
  }

  else
  {
    if (*(v21 + 24))
    {
      v19 = *v21;
      v20 = (*(v21 + 8) & 1) == 0;
LABEL_16:
      if (!v20)
      {
        v19 = 48.0;
      }

      goto LABEL_24;
    }

    v19 = *(v21 + 16);
  }

LABEL_24:
  v6 = v19 * v6;
LABEL_25:
  if (!v9)
  {
    goto LABEL_37;
  }

  if (v9 == 1)
  {
    v22 = a1 + *(_s11EnvironmentVMa() + 44);
    v23 = *v22;
    v24 = ((*(v22 + 25) | *(v22 + 8)) & 1) == 0;
    goto LABEL_28;
  }

  v25 = a1 + *(_s11EnvironmentVMa() + 44);
  if (*(v25 + 25))
  {
    v23 = 48.0;
  }

  else
  {
    if (*(v25 + 24))
    {
      v23 = *v25;
      v24 = (*(v25 + 8) & 1) == 0;
LABEL_28:
      if (!v24)
      {
        v23 = 48.0;
      }

      goto LABEL_36;
    }

    v23 = *(v25 + 16);
  }

LABEL_36:
  v8 = v23 * v8;
LABEL_37:
  if (!v11)
  {
    goto LABEL_49;
  }

  if (v11 == 1)
  {
    v26 = a1 + *(_s11EnvironmentVMa() + 44);
    v27 = *v26;
    v28 = ((*(v26 + 25) | *(v26 + 8)) & 1) == 0;
    goto LABEL_40;
  }

  v29 = a1 + *(_s11EnvironmentVMa() + 44);
  if (*(v29 + 25))
  {
    v27 = 48.0;
  }

  else
  {
    if (*(v29 + 24))
    {
      v27 = *v29;
      v28 = (*(v29 + 8) & 1) == 0;
LABEL_40:
      if (!v28)
      {
        v27 = 48.0;
      }

      goto LABEL_48;
    }

    v27 = *(v29 + 16);
  }

LABEL_48:
  v10 = v27 * v10;
LABEL_49:
  if (v13)
  {
    if (v13 == 1)
    {
      v30 = a1 + *(_s11EnvironmentVMa() + 44);
      v31 = *v30;
      v32 = ((*(v30 + 25) | *(v30 + 8)) & 1) == 0;
      goto LABEL_52;
    }

    v33 = a1 + *(_s11EnvironmentVMa() + 44);
    if (*(v33 + 25))
    {
      v31 = 48.0;
    }

    else
    {
      if (*(v33 + 24))
      {
        v31 = *v33;
        v32 = (*(v33 + 8) & 1) == 0;
LABEL_52:
        if (!v32)
        {
          v31 = 48.0;
        }

        goto LABEL_60;
      }

      v31 = *(v33 + 16);
    }

LABEL_60:
    v12 = v31 * v12;
  }

  v34 = *(v2 + 24);
  a2->n128_f64[0] = *v2 + *v2;
  a2->n128_f64[1] = v5;
  a2[1].n128_f64[0] = v6;
  a2[1].n128_f64[1] = v8;
  a2[2].n128_f64[0] = v10;
  a2[2].n128_f64[1] = v12;
  result = *(v2 + 8);
  a2[3] = result;
  a2[4].n128_u32[0] = v34;
  a2[4].n128_u32[1] = 1065353216;
  return result;
}

unint64_t sub_18AF75D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D1>)
{
  v7 = v6;
  LODWORD(v129) = a4;
  v128 = a3;
  v131 = a6;
  v11 = sub_18AFCCCF4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 13);
  sub_18AF72C48(&v155);
  sub_18AF6F7F8(a2, &v156);
  v24 = v156;
  v154 = v156;
  v130 = v157;
  v152 = v158;
  v153 = v159;
  v16 = v161;
  v150 = v162;
  v151 = v163;
  v17 = *v7;
  v18 = *(v7 + 1);
  v19 = *(v7 + 2);
  v20 = *(v7 + 3);
  v21 = *(v7 + 4);
  v22 = *(v7 + 5);
  v172 = *(v7 + 48);
  v23 = *(v7 + 7);
  v171 = *(v7 + 64);
  v25.n128_u32[0] = v7[17];
  v24.n128_u32[0] = v7[18];
  v26.n128_u32[0] = v7[19];
  v27 = *(v7 + 10);
  v28 = *(v7 + 11);
  v29 = *(v7 + 96);
  v30 = *(v7 + 25);
  v31 = *(v7 + 27);
  v32 = *(v7 + 116);
  v33 = *(v7 + 15);
  v34 = *(v7 + 16);
  v35 = *(v7 + 136);
  v36 = *(v7 + 137);
  v37 = v7[36];
  v38 = *(v7 + 19);
  v39 = *(v7 + 20);
  v40 = *(v7 + 21);
  v41 = *(v7 + 22);
  v42 = *(v7 + 23);
  v170 = *(v7 + 192);
  v43 = *(v7 + 25);
  v169 = *(v7 + 208);
  v44 = *(v7 + 53);
  v45 = *(v7 + 54);
  v46 = *(v7 + 55);
  v47 = *(v7 + 28);
  v48 = *(v7 + 29);
  v49 = *(v7 + 240);
  v167 = *(v7 + 241);
  v168 = *(v7 + 243);
  v50 = *(v7 + 61);
  v51 = *(v7 + 63);
  v52 = *(v7 + 260);
  v53 = *(v7 + 261);
  v166 = *(v7 + 263);
  v165 = v53;
  if ((v15 - 15) > 3)
  {
    v122 = v160;
    v123 = v164;
    v124 = v39;
    v125 = v38;
    v126 = v41;
    v127 = v40;
    v128 = v18;
    v129 = v19;
    v67 = v21;
    v68 = v20;
    v69 = v17;
    v70 = v37;
    v71 = *MEMORY[0x1E69814D8];
    v72 = *(v12 + 104);
    v72(v14, v71, v11, v52, v50, v51, v24.n128_f32[0], v25.n128_f32[0], v26.n128_f32[0]);
    sub_18AFCCDE4();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v142 = 1;
    v139 = 0;
    v136 = 1;
    (v72)(v14, v71, v11);
    sub_18AFCCDE4();
    v83 = v81 | (v82 << 32);
    v149 = 1;
    v31 = v84 | (v85 << 32);
    v146 = 0;
    v143 = 1;
    v86 = a2 + *(_s11EnvironmentVMa() + 40);
    if (*(v86 + 4) == 1)
    {
      v29 = v149;
      v140 = v147;
      v141 = v148;
      v32 = v146;
      v137 = v144;
      v138 = v145;
      v87 = &v143;
      v25.n128_u32[0] = 1053609165;
      v24.n128_u32[0] = 1058642330;
      v88 = v131;
    }

    else
    {
      v88 = v131;
      if (*v86 <= 0.5)
      {
        v83 = v74 | (v76 << 32);
        v31 = v78 | (v80 << 32);
        v29 = v142;
        v24.n128_u32[0] = 1.0;
        v87 = &v136;
        v32 = v139;
        v25.n128_u32[0] = 1063675494;
      }

      else
      {
        v29 = v149;
        v140 = v147;
        v141 = v148;
        v32 = v146;
        v137 = v144;
        v138 = v145;
        v87 = &v143;
        v25.n128_u32[0] = 1053609165;
        v24.n128_u32[0] = 1058642330;
      }
    }

    v37 = v70;
    v17 = v69;
    v20 = v68;
    v21 = v67;
    v18 = v128;
    v19 = v129;
    v41 = v126;
    v40 = v127;
    v39 = v124;
    v38 = v125;
    v107 = v122;
    v108 = v123;
    v27 = 0;
    v28 = 0;
    v33 = 0;
    v34 = 0;
    v96 = 0;
    result = 0;
    v102 = 0;
    v103 = 0;
    v35 = *v87;
    v177 = v154;
    v175 = v152;
    v176 = v153;
    v173 = v150;
    v174 = v151;
    v134 = v140;
    v26.n128_u32[0] = 1.5;
    v106 = 0.5;
    v135 = v141;
    v109 = 0.7;
    v57 = v88;
    v105 = 0.5;
    v93 = v25.n128_f32[0];
    v94 = v24.n128_f32[0];
    v95 = 1.5;
    v133 = v138;
    v98 = v29;
    v30 = v83;
    v99 = v83;
    v100 = v31;
    v101 = v32;
    v132 = v137;
    v104 = v35;
  }

  else
  {
    LODWORD(v123) = v52;
    v54 = *(v7 + 33);
    v55 = *(v7 + 34);
    LODWORD(v122) = *(v7 + 280);
    v56 = *(v7 + 281);
    if (LOBYTE(v129))
    {
      v57 = 1.0;
    }

    else
    {
      v57 = v128;
    }

    if (v36)
    {
      v116 = v47;
      v117 = v48;
      v58 = *MEMORY[0x1E69814D8];
      v59 = *(v12 + 104);
      HIDWORD(v115) = v49;
      v60 = v11;
      v120 = v17;
      v121 = v37;
      v118 = v21;
      v119 = v20;
      v128 = v18;
      v129 = v19;
      v126 = v41;
      v127 = v40;
      v124 = v39;
      v125 = v38;
      v61 = v50;
      v62 = v55;
      v63 = v54;
      v64 = v51;
      v65 = v56;
      v59(v14, v58, v60, v24, v25, v26);
      sub_18AFCCDE4();
      v56 = v65;
      v51 = v64;
      v54 = v63;
      v55 = v62;
      v50 = v61;
      LOBYTE(v49) = BYTE4(v115);
      v47 = v116;
      v48 = v117;
      v39 = v124;
      v38 = v125;
      v41 = v126;
      v40 = v127;
      v18 = v128;
      v19 = v129;
      v21 = v118;
      v20 = v119;
      v17 = v120;
      v37 = v121;
      v34 = 0;
      v33 = 0;
      v31 = 0;
      v30 = 0;
      v29 = 0;
      v27 = v24.n128_u32[0] | (v25.n128_u32[0] << 32);
      v28 = v26.n128_u32[0] | (v66 << 32);
      v177.n128_u8[0] = 0;
      v35 = 1;
      LOBYTE(v175) = 1;
      LOBYTE(v173) = 1;
      v26.n128_u32[0] = 1.5;
      v24.n128_u32[0] = 1067030938;
      v32 = 1;
      v25.n128_u32[0] = 1067030938;
    }

    else
    {
      v134 = *(v7 + 97);
      v135 = *(v7 + 99);
      v132 = *(v7 + 117);
      v133 = *(v7 + 119);
    }

    v88 = v131;
    v89 = (v56 & 1) == 0;
    v90 = &v167;
    if (v56)
    {
      v90 = &v134;
    }

    v140 = *v90;
    v91 = *(v90 + 2);
    if (v56)
    {
      v92 = &v132;
    }

    else
    {
      v92 = &v165;
    }

    if (v56)
    {
      v93 = v25.n128_f32[0];
    }

    else
    {
      v93 = v44;
    }

    if (v56)
    {
      v94 = v24.n128_f32[0];
    }

    else
    {
      v94 = v45;
    }

    if (v56)
    {
      v95 = v26.n128_f32[0];
    }

    else
    {
      v95 = v46;
    }

    if (v56)
    {
      v96 = v27;
    }

    else
    {
      v96 = v47;
    }

    if (v89)
    {
      result = v48;
    }

    else
    {
      result = v28;
    }

    if (v89)
    {
      v98 = v49;
    }

    else
    {
      v98 = v29;
    }

    if (v89)
    {
      v99 = v50;
    }

    else
    {
      v99 = v30;
    }

    if (v89)
    {
      v100 = v51;
    }

    else
    {
      v100 = v31;
    }

    if (v89)
    {
      v101 = LOBYTE(v123);
    }

    else
    {
      v101 = v32;
    }

    if (v89)
    {
      v102 = v54;
    }

    else
    {
      v102 = v33;
    }

    if (v89)
    {
      v103 = v55;
    }

    else
    {
      v103 = v34;
    }

    v104 = LOBYTE(v122);
    if (!v89)
    {
      v104 = v35;
    }

    v141 = v91;
    v137 = *v92;
    v138 = *(v92 + 2);
    v105 = 0.8;
    if (v172)
    {
      v106 = 0.8;
    }

    else
    {
      v106 = v22;
    }

    if (!v170)
    {
      v105 = v42;
    }

    if (v171)
    {
      v107 = 0.0;
    }

    else
    {
      v107 = v23;
    }

    if (v169)
    {
      v108 = 0.0;
    }

    else
    {
      v108 = v43;
    }

    v177 = v154;
    v176 = v153;
    v175 = v152;
    v173 = v150;
    v109 = 1.0;
    v174 = v151;
  }

  *a5 = v177;
  *(a5 + 16) = v19 + v18 * v57;
  *(a5 + 24) = v17;
  *(a5 + 28) = v130;
  *(a5 + 32) = (v20 * v88 + v21) * 0.0174532925;
  *(a5 + 40) = v109;
  *(a5 + 48) = v106;
  *(a5 + 56) = v25.n128_u32[0];
  *(a5 + 60) = v24.n128_u32[0];
  *(a5 + 64) = v26.n128_u32[0];
  *(a5 + 68) = v27;
  *(a5 + 76) = v28;
  *(a5 + 84) = v29;
  *(a5 + 85) = v134;
  *(a5 + 87) = v135;
  *(a5 + 88) = v30;
  *(a5 + 96) = v31;
  *(a5 + 104) = v32;
  v110 = v132;
  *(a5 + 107) = v133;
  *(a5 + 105) = v110;
  *(a5 + 108) = v33;
  *(a5 + 116) = v34;
  *(a5 + 124) = v35;
  v111 = v175;
  *(a5 + 127) = v176;
  *(a5 + 125) = v111;
  *(a5 + 128) = v107;
  *(a5 + 136) = v39 + v38 * v57;
  *(a5 + 144) = v37;
  *(a5 + 148) = v16;
  *(a5 + 152) = (v40 * v88 + v41) * 0.0174532925;
  *(a5 + 160) = v109;
  *(a5 + 168) = v105;
  *(a5 + 176) = v93;
  *(a5 + 180) = v94;
  *(a5 + 184) = v95;
  *(a5 + 188) = v96;
  *(a5 + 196) = result;
  *(a5 + 204) = v98;
  v112 = v140;
  *(a5 + 207) = v141;
  *(a5 + 205) = v112;
  *(a5 + 208) = v99;
  *(a5 + 216) = v100;
  *(a5 + 224) = v101;
  v113 = v137;
  *(a5 + 227) = v138;
  *(a5 + 225) = v113;
  *(a5 + 228) = v102;
  *(a5 + 236) = v103;
  *(a5 + 244) = v104;
  v114 = v173;
  *(a5 + 247) = v174;
  *(a5 + 245) = v114;
  *(a5 + 248) = v108;
  return result;
}

double sub_18AF76588@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_18AFCBB34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v10) = *(a1 + 13) - 15;
  v12 = (v4 + 4);
  if (v10 > 3)
  {
    v19 = a2 + *(_s11EnvironmentVMa() + 40);
    if ((*(v19 + 4) & 1) != 0 || *v19 > 0.5)
    {
      v12 = (v4 + 76);
    }
  }

  else
  {
    v13 = *(v4 + 116);
    v29[6] = *(v4 + 100);
    v30[0] = v13;
    *(v30 + 13) = *(v4 + 129);
    v14 = *(v4 + 52);
    v29[2] = *(v4 + 36);
    v29[3] = v14;
    v15 = *(v4 + 84);
    v29[4] = *(v4 + 68);
    v29[5] = v15;
    v16 = *(v4 + 20);
    v29[0] = *v12;
    v29[1] = v16;
    _s11EnvironmentVMa();
    (*(v9 + 104))(v11, *MEMORY[0x1E697DBA8], v8);
    sub_18AE84004();
    v17 = sub_18AFCDDF4();
    (*(v9 + 8))(v11, v8);
    v18 = 72;
    if (v17)
    {
      v18 = 0;
    }

    v12 = v29 + v18;
  }

  *&v28[13] = *(v12 + 61);
  v20 = *(v12 + 3);
  v27 = *(v12 + 2);
  v21 = v27;
  *v28 = v20;
  v23 = *v12;
  v26 = *(v12 + 1);
  v22 = v26;
  v25 = v23;
  *a3 = *v4;
  *(a3 + 20) = v22;
  *(a3 + 36) = v21;
  result = *v28;
  *(a3 + 52) = *v28;
  *(a3 + 65) = *&v28[13];
  *(a3 + 4) = v23;
  return result;
}

BOOL sub_18AF76780(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[3] == a2[3])
  {
    return a1[2] == a2[2];
  }

  return 0;
}

uint64_t sub_18AF767B8(double a1, double a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x18CFED640](*&a1);
  if (a2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a2;
  }

  MEMORY[0x18CFED640](*&v8);
  if (a5)
  {
    return sub_18AFCE2B4();
  }

  sub_18AFCE2B4();
  if ((a4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  return MEMORY[0x18CFED640](v10);
}

uint64_t sub_18AF7683C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_18AFCE294();
  sub_18AF767B8(v1, v2, v6, v3, v4);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF768B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_18AFCE294();
  sub_18AF767B8(v1, v2, v6, v3, v4);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF76910(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_18AF76964()
{
  result = qword_1EA99BB90;
  if (!qword_1EA99BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BB90);
  }

  return result;
}

uint64_t sub_18AF769B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BB98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF76A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BB98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s8TextSpecVMa()
{
  result = qword_1ED56A518;
  if (!qword_1ED56A518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AF76ADC()
{
  if (*(v0 + 112))
  {
    return 0;
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    v4 = sqrt((v3 - v2) * (v3 - v2));
    v5 = 0.0;
    if (v4 > 0.0000000149011612)
    {
      v6 = *(v0 + 80);
      v7 = sqrt((v6 - v2) * (v6 - v2));
      if (v6 >= v2)
      {
        v8 = v7;
      }

      else
      {
        v8 = -v7;
      }

      v5 = v8 / v4;
    }

    if (v5 < 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v5;
    }

    if (v9 > 1.0)
    {
      v9 = 1.0;
    }

    return *&v9;
  }

  return result;
}

double sub_18AF76B64()
{
  sub_18AFC21F0(v9);
  if (v10)
  {
    CTFontGetWeight();
    v2 = sqrt((v1 + 1.0) * (v1 + 1.0));
    if (v1 >= -1.0)
    {
      v3 = v2;
    }

    else
    {
      v3 = -v2;
    }

    v4 = v3 * 0.5;
  }

  else
  {
    v5 = sqrt((v9[0] + -110.0) * (v9[0] + -110.0));
    if (v9[0] >= 110.0)
    {
      v6 = v5;
    }

    else
    {
      v6 = -v5;
    }

    v4 = v6 / 750.0;
  }

  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  if (v4 <= 1.0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1.0;
  }

  sub_18AF76ADC();
  CTFontGetSize(v0);
  return v7;
}

void sub_18AF76C88()
{
  sub_18AF76D28();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_18AF76D28()
{
  if (!qword_1ED56A480[0])
  {
    sub_18AFCDC44();
    v0 = sub_18AFCE074();
    if (!v1)
    {
      atomic_store(v0, qword_1ED56A480);
    }
  }
}

__n128 __swift_memcpy145_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_18AF76DB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 145))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AF76DD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 145) = v3;
  return result;
}

uint64_t sub_18AF76E40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 282))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AF76E60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 282) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_18AF76F38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 105))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18AF76F80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy141_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_18AF77024(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 141))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AF77044(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 140) = 0;
    *(result + 136) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 141) = v3;
  return result;
}

__n128 __swift_memcpy138_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_18AF770DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 138))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AF770FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 138) = v3;
  return result;
}

unint64_t sub_18AF77170()
{
  result = qword_1EA99BBA0;
  if (!qword_1EA99BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BBA0);
  }

  return result;
}

unint64_t sub_18AF771C8()
{
  result = qword_1EA99BBA8;
  if (!qword_1EA99BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BBA8);
  }

  return result;
}

uint64_t sub_18AF7721C(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  v38 = a2;
  v39 = a3;
  v6 = v3 + 260;
  v7 = sub_18AFCCCF4();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFCBB34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 520) = 0;
  *(v4 + 432) = 0u;
  *(v4 + 448) = 0u;
  *(v4 + 464) = 0u;
  *(v4 + 480) = 0u;
  *(v4 + 496) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *v6 = _Q0;
  *(v4 + 276) = 1065353216;
  *(v4 + 376) = 0x4041800000000000;
  *(v4 + 384) = 0x4049000000000000;
  v18 = *(_s11EnvironmentVMa() + 20);
  v19 = *MEMORY[0x1E697DBA8];
  v32 = *(v10 + 104);
  v32(v12, v19, v9);
  sub_18AE84004();
  v33 = v18;
  v34 = a1;
  LOBYTE(a1) = sub_18AFCDDF4();
  v20 = *(v10 + 8);
  result = v20(v12, v9);
  if (a1)
  {
    v22 = v38;
    v23 = 0.2;
    v24 = 0.1;
    if (v38)
    {
      v23 = 0.5;
    }

    else
    {
      v24 = 0.2;
    }

    *(v4 + 668) = v24;
    *(v4 + 672) = v23;
    *(v4 + 676) = 1060320051;
  }

  else
  {
    *(v4 + 676) = 1063675494;
    v22 = v38;
    if (v38)
    {
      *(v4 + 672) = *(v4 + 672) + -0.15;
    }

    else
    {
      *(v4 + 668) = 0x3F6666663F666666;
    }
  }

  if (v22)
  {
    v25 = 0.4;
  }

  else
  {
    v25 = 0.55;
  }

  if (*(v6 + 436) != 1)
  {
    if (*(v4 + 692) > v25)
    {
      v25 = *(v4 + 692);
    }

    if ((v39 & 1) == 0)
    {
      *(v4 + 692) = v25;
      return result;
    }

LABEL_18:
    v32(v12, v19, v9);
    sub_18AFCDDF4();
    v20(v12, v9);
    (*(v35 + 104))(v37, *MEMORY[0x1E69814D8], v36);
    result = sub_18AFCCDE4();
    v28.i64[0] = v26;
    v28.i64[1] = v27;
    v30.i32[1] = v29;
    *(v6 + 420) = vorrq_s8(vshll_n_s32(v30, 0x20uLL), v28);
    *(v6 + 436) = 0;
    return result;
  }

  if (v39)
  {
    goto LABEL_18;
  }

  return result;
}

double sub_18AF775C0@<D0>(uint64_t a1@<X0>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  v7 = sub_18AFCBB34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);
  v12 = v3[1];
  v28 = *v3;
  v29 = v12;
  v30 = *(v3 + 8);
  v14 = *(v3 + 9);
  v13 = *(v3 + 10);
  v15 = *(v3 + 11);
  v16 = *(v3 + 12);
  v17 = *(v3 + 52);
  v18 = *(v3 + 60);
  v26 = *(v3 + 68);
  v27 = *(v3 + 84);
  if ((v11 & 0x10) == 0 || (a2 & 0x80) != 0)
  {
    if ((v11 & 8) == 0 || (a2 & 0x100) != 0)
    {
      goto LABEL_21;
    }

    v21 = v14 + 0.5;
    v22 = v15 + -0.5;
    v19 = *MEMORY[0x1E697DBA8];
LABEL_18:
    _s11EnvironmentVMa();
    (*(v8 + 104))(v10, v19, v7);
    sub_18AE84004();
    v23 = sub_18AFCDDF4();
    (*(v8 + 8))(v10, v7);
    if (v23)
    {
      v15 = v22;
    }

    else
    {
      v14 = v21;
    }

    goto LABEL_21;
  }

  _s11EnvironmentVMa();
  v19 = *MEMORY[0x1E697DBA8];
  (*(v8 + 104))(v10, v19, v7);
  sub_18AE84004();
  v20 = sub_18AFCDDF4();
  (*(v8 + 8))(v10, v7);
  if (v20)
  {
    v15 = 0.2;
  }

  else
  {
    v15 = 0.9;
  }

  if (v20)
  {
    v21 = 0.7;
  }

  else
  {
    v21 = 1.4;
  }

  if (v20)
  {
    v22 = -0.3;
  }

  else
  {
    v22 = 0.4;
  }

  v18 = vdup_n_s32(0x3EE66666u);
  v13 = -1.0;
  v16 = 1.0;
  v14 = v15;
  if ((v11 & 8) != 0 && (a2 & 0x100) == 0)
  {
    goto LABEL_18;
  }

LABEL_21:
  v24 = v29;
  *a3 = v28;
  *(a3 + 16) = v24;
  *(a3 + 32) = v30;
  *(a3 + 36) = v14;
  *(a3 + 40) = v13;
  *(a3 + 44) = v15;
  *(a3 + 48) = v16;
  *(a3 + 52) = v17;
  *(a3 + 60) = v18;
  result = *&v26;
  *(a3 + 68) = v26;
  *(a3 + 84) = v27;
  return result;
}

void *sub_18AF7789C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a1;
  v3 = sub_18AFCCCF4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x1E69814D8];
  v9 = *(v4 + 104);
  v9(v7, v8, v3, v5);
  sub_18AFCCDE4();
  v29 = v10 | (v11 << 32);
  v14 = v12 | (v13 << 32);
  v39 = 0;
  v38 = 1;
  v37 = 1;
  v42 = 1;
  v41 = 1;
  v40 = 1;
  v47[0] = 1;
  v46[0] = 1;
  v36 = 1;
  (v9)(v7, v8, v3);
  sub_18AFCCDE4();
  v45 = 0;
  v44 = 1;
  v43 = 1;
  v34 = v16 | (v18 << 32);
  v35 = v15 | (v17 << 32);
  LOBYTE(v49[0]) = 1;
  LOBYTE(v48[0]) = 1;
  LOBYTE(v4) = v39;
  v19 = v38;
  LOBYTE(v3) = v37;
  v47[0] = 1;
  v46[0] = 1;
  v31 = v42;
  v32 = v41;
  v33 = v40;
  sub_18AF72C48(v46);
  memcpy(&v47[7], v46, 0x198uLL);
  *a2 = 1048576000;
  *(a2 + 8) = xmmword_18AFDED40;
  *(a2 + 24) = xmmword_18AFDED50;
  *(a2 + 40) = 0x4064000000000000;
  *(a2 + 48) = 0x3F4000003E800000;
  *(a2 + 56) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = xmmword_18AFDED60;
  *(a2 + 104) = 0x4020000000000000;
  *(a2 + 112) = 0x3F80000000000000;
  *(a2 + 120) = 1067030938;
  *(a2 + 124) = v29;
  *(a2 + 132) = v14;
  *(a2 + 140) = v4;
  *(a2 + 144) = 0u;
  *(a2 + 160) = v19;
  *(a2 + 164) = 0u;
  *(a2 + 180) = v3;
  *(a2 + 184) = xmmword_18AFDED70;
  *(a2 + 200) = xmmword_18AFD1C00;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 1;
  *(a2 + 240) = 0;
  *(a2 + 248) = 1;
  *(a2 + 252) = *(v49 + 3);
  *(a2 + 249) = v49[0];
  *(a2 + 256) = xmmword_18AFDED80;
  __asm { FMOV            V1.2S, #1.0 }

  *(a2 + 272) = _D1;
  *(a2 + 280) = 0xBFE0000000000000;
  *(a2 + 288) = 1;
  *(a2 + 296) = 0xBFF0000000000000;
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0x4000000000000000;
  *(a2 + 352) = 2;
  *(a2 + 360) = 0x4048000000000000;
  *(a2 + 368) = xmmword_18AFDED90;
  *(a2 + 384) = 0x4020000000000000;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  *(a2 + 408) = 1;
  *(a2 + 416) = 0;
  *(a2 + 424) = 1;
  *(a2 + 428) = *(v48 + 3);
  *(a2 + 425) = v48[0];
  *(a2 + 432) = xmmword_18AFDEDA0;
  *(a2 + 448) = xmmword_18AFDEDB0;
  *(a2 + 464) = xmmword_18AFDEDC0;
  *(a2 + 480) = xmmword_18AFDEDD0;
  *(a2 + 496) = 1065353216;
  *(a2 + 504) = 0x4050000000000000;
  *(a2 + 512) = 0x4064000000000000;
  *(a2 + 520) = 0x3F00000000000000;
  *(a2 + 528) = 0;
  *(a2 + 532) = 0;
  *(a2 + 536) = 1;
  *(a2 + 544) = 0;
  *(a2 + 552) = v36;
  *(a2 + 560) = vdupq_n_s64(0x3FD6666666666666uLL);
  *(a2 + 576) = xmmword_18AFDEDE0;
  *(a2 + 592) = 0x3F8000003F400000;
  *(a2 + 600) = 1067030938;
  *(a2 + 604) = 0u;
  v25 = v32;
  *(a2 + 620) = v31;
  *(a2 + 624) = 0u;
  *(a2 + 640) = v25;
  *(a2 + 644) = 0u;
  *(a2 + 660) = v33;
  *(a2 + 661) = 1;
  *(a2 + 664) = xmmword_18AFDEDF0;
  v26 = v34;
  *(a2 + 680) = v35;
  *(a2 + 688) = v26;
  *(a2 + 696) = 0;
  *(a2 + 700) = 0u;
  *(a2 + 716) = 1;
  *(a2 + 720) = 0u;
  *(a2 + 736) = 1;
  return memcpy((a2 + 737), v47, 0x19FuLL);
}

void *sub_18AF77D10(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v163 = v1;
  v3 = v2;
  v149 = v4;
  v159 = &v305[16] + 4;
  v160 = v5;
  v6 = sub_18AFCBB34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v156 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFCCCF4();
  v10 = *(v9 - 8);
  v161 = v9;
  v162 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s11EnvironmentVMa();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  v18 = *(v3 + 3);
  v430 = *(v3 + 2);
  v19 = v3[2];
  v20 = v160;
  v428 = v19;
  v429 = v17;
  sub_18AF6EE34(v163, v16);
  v21 = *(v14 + 28);
  v154 = *(v7 + 8);
  *&v148 = v7 + 8;
  v154(&v16[v21], v6);
  v22 = *MEMORY[0x1E697DBB8];
  v152 = *(v7 + 104);
  v153 = v21;
  v157 = v6;
  v155 = v7 + 104;
  v152(&v16[v21], v22, v6);
  v427[0] = v429;
  *&v427[1] = v430;
  *(&v427[1] + 1) = v18;
  v427[2] = v428;
  v163 = v16;
  v23 = v18;
  sub_18AF96894(v427);
  v343 = v346;
  v344 = v347;
  v345 = v348;
  v341 = v359;
  v342[0] = *v360;
  *(v342 + 12) = *&v360[12];
  v337 = v355;
  v338 = v356;
  v340 = v358;
  v339 = v357;
  v333 = v351;
  v334 = v352;
  v336 = v354;
  v335 = v353;
  v332 = v350;
  v331 = v349;
  v327 = *&v360[80];
  v328 = *&v360[96];
  v329 = *&v360[112];
  v330 = *&v360[128];
  v325 = *&v360[48];
  v326 = *&v360[64];
  v323 = *&v360[225];
  v324[0] = *v361;
  *(v324 + 15) = *&v361[15];
  v319 = *&v360[161];
  v320 = *&v360[177];
  v322 = *&v360[209];
  v321 = *&v360[193];
  v317 = *&v361[27];
  v318 = v362;
  v314 = v369;
  v315 = v370;
  v316 = v371;
  v310 = v365;
  v311 = v366;
  v313 = v368;
  v312 = v367;
  v309 = v364;
  v308 = v363;
  memcpy(v307, v372, sizeof(v307));
  v24 = *(v162 + 104);
  LODWORD(v151) = *MEMORY[0x1E69814D8];
  v162 += 104;
  v150 = v24;
  v24(v12);
  v158 = v12;
  sub_18AFCCDE4();
  v305[0] = v343;
  v305[1] = v344;
  v305[2] = v345;
  *(&v305[12] + 8) = v340;
  *(&v305[13] + 8) = v341;
  *(&v305[14] + 8) = v342[0];
  *(&v305[15] + 4) = *(v342 + 12);
  *(&v305[8] + 8) = v336;
  *(&v305[9] + 8) = v337;
  *(&v305[10] + 8) = v338;
  *(&v305[11] + 8) = v339;
  *(&v305[4] + 8) = v332;
  *(&v305[5] + 8) = v333;
  v433 = 0;
  v432 = 1;
  v431 = 1;
  *(&v305[6] + 8) = v334;
  *&v305[3] = 0;
  *(&v305[7] + 8) = v335;
  *(&v305[3] + 8) = v331;
  *v159 = xmmword_18AFDEE20;
  DWORD1(v305[17]) = 1065353216;
  *(&v305[19] + 8) = v327;
  *(&v305[20] + 8) = v328;
  *(&v305[21] + 8) = v329;
  *(&v305[22] + 8) = v330;
  *(&v305[17] + 8) = v325;
  *(&v305[18] + 8) = v326;
  *(&v305[23] + 1) = 0x4000000000000000;
  *&v305[24] = 0x400C000000000000;
  BYTE8(v305[24]) = 0;
  *(&v305[28] + 9) = v323;
  *(&v305[29] + 9) = v324[0];
  *(&v305[24] + 9) = v319;
  *(&v305[25] + 9) = v320;
  *(&v305[26] + 9) = v321;
  *(&v305[27] + 9) = v322;
  *(&v305[30] + 1) = *(v324 + 15);
  LODWORD(v305[31]) = 0;
  *(&v305[31] + 4) = v317;
  DWORD1(v305[32]) = v318;
  *(&v305[32] + 1) = 0;
  *&v305[41] = v316;
  v305[40] = v315;
  v305[39] = v314;
  v305[38] = v313;
  v305[37] = v312;
  v305[36] = v311;
  v305[35] = v310;
  v305[33] = v308;
  v305[34] = v309;
  *(&v305[41] + 8) = xmmword_18AFDEE30;
  v27.i64[0] = v25;
  v27.i64[1] = v26;
  v29.i32[1] = v28;
  *(&v305[42] + 8) = vorrq_s8(vshll_n_s32(v29, 0x20uLL), v27);
  BYTE8(v305[43]) = 0;
  *(&v305[43] + 12) = 0u;
  BYTE12(v305[44]) = 1;
  v305[45] = 0u;
  LOBYTE(v305[46]) = 1;
  memcpy(&v305[46] + 1, v307, 0x19FuLL);
  if ((v18 & 0x20) != 0 && (v20 & 0x200) == 0)
  {
    *&v305[27] = 0;
    __asm { FMOV            V0.2D, #8.0 }

    *(v159 + 116) = _Q0;
  }

  if ((v18 & 0x10) == 0)
  {
    if ((v18 & 8) == 0 || (v20 & 0x100) != 0)
    {
      goto LABEL_16;
    }

    v35 = 0;
    goto LABEL_12;
  }

  v35 = (v20 & 0x80) == 0;
  if ((v20 & 0x80) == 0)
  {
    sub_18AF7721C(v163, 1, 0);
  }

  if ((v18 & 8) != 0 && (v20 & 0x100) == 0)
  {
LABEL_12:
    v37 = v156;
    v36 = v157;
    v152(v156, *MEMORY[0x1E697DBA8], v157);
    sub_18AE84004();
    v38 = sub_18AFCDDF4();
    v154(v37, v36);
    if (v38)
    {
      if (!v35)
      {
        *&v305[42] = *&v305[42] + -0.5;
        DWORD1(v305[42]) = 1060320051;
      }
    }

    else
    {
      DWORD1(v305[42]) = 1061997773;
      *(v159 + 51) = vadd_f32(*(v159 + 408), 0xBF0000003E800000);
    }
  }

LABEL_16:
  if ((v23 & 0x800000) != 0 && (v20 & 0x1000) == 0)
  {
    LOBYTE(v427[0]) = 0;
    *(&v305[66] + 1) = 0x400921FB54442D18;
    BYTE9(v305[70]) = 0;
    v39 = *MEMORY[0x1E697DBA8];
    v41 = v156;
    v40 = v157;
    v152(v156, v39, v157);
    sub_18AE84004();
    v42 = sub_18AFCDDF4();
    v154(v41, v40);
    if ((v42 & 1) == 0)
    {
      *(&v305[71] + 1) = 0x3FC999999999999ALL;
    }

    if ((v23 & 2) != 0)
    {
      v43 = (v23 & 4) != 0 && (v160 & 0x40) == 0;
    }

    else
    {
      v43 = 1;
    }

    v150(v158, v151, v161);
    sub_18AFCCDE4();
    v144 = v45;
    v145 = v44;
    v146 = v47;
    v147 = v46;
    v49 = v156;
    v48 = v157;
    v152(v156, v39, v157);
    sub_18AFCDDF4();
    v154(v49, v48);
    v50 = 0.93;
    if (!v43)
    {
      v50 = 1.0;
    }

    v51 = 0.9;
    if (v43)
    {
      v51 = 0.6;
    }

    *(&v305[56] + 4) = __PAIR64__(LODWORD(v50), LODWORD(v51));
    *(&v305[60] + 3) = v51;
    *&v305[61] = v50;
    v52 = v159;
    v159[760] = 0;
    v53.i64[0] = v145;
    v53.i64[1] = v144;
    v54 = vorrq_s8(vshll_n_s32(__PAIR64__(v146, v147), 0x20uLL), v53);
    *(v52 + 744) = v54;
    *(v52 + 42) = v54;
    v52[688] = 0;
  }

  memcpy(v427, v305, sizeof(v427));
  v375[0] = v429;
  *&v375[1] = v430;
  v157 = v23;
  *(&v375[1] + 1) = v23;
  v375[2] = v428;
  sub_18AF6FCC0(v375);
  memcpy(v306, v373, sizeof(v306));
  v150(v158, v151, v161);
  sub_18AFCCDE4();
  v247 = 1;
  v244 = 0;
  v162 = v55 | (v57 << 32);
  v241 = 1;
  v161 = v56 | (v58 << 32);
  v59 = *&v306[584];
  v60 = v306[604];
  v254 = *&v306[605];
  v255 = v306[607];
  v61 = v306[624];
  v252 = *&v306[625];
  v253 = v306[627];
  v62 = v306[644];
  v251 = v306[647];
  v250 = *&v306[645];
  v63 = *&v306[648];
  v64 = *&v306[656];
  v65 = *&v306[664];
  v66 = *&v306[672];
  v67 = *&v306[680];
  v68 = *&v306[688];
  v249 = v306[767];
  v248 = *&v306[765];
  v69 = *&v306[768];
  LODWORD(v146) = *&v306[520];
  v256[0] = *&v306[520];
  LODWORD(v156) = *&v306[524];
  v256[1] = *&v306[524];
  *&v145 = *&v306[528];
  v257 = *&v306[528];
  *&v144 = *&v306[536];
  v258 = *&v306[536];
  LODWORD(v143) = *&v306[544];
  v259 = *&v306[544];
  LODWORD(v155) = *&v306[548];
  v260 = *&v306[548];
  v141 = *&v306[560];
  v142 = *&v306[552];
  v261 = *&v306[552];
  v262 = *&v306[560];
  v140 = *&v306[568];
  v263 = *&v306[568];
  v138 = *&v306[580];
  v139 = *&v306[576];
  v264 = *&v306[576];
  v265 = *&v306[580];
  v266 = *&v306[584];
  v152 = *&v306[596];
  v153 = *&v306[588];
  v267 = *&v306[588];
  v268 = *&v306[596];
  v269 = v306[604];
  v158 = &v306[625];
  v159 = &v306[605];
  v271 = v306[607];
  v270 = *&v306[605];
  v150 = *&v306[616];
  v151 = *&v306[608];
  v272 = *&v306[608];
  v273 = *&v306[616];
  v274 = v306[624];
  v276 = v306[627];
  v275 = *&v306[625];
  v148 = *&v306[628];
  v277 = *&v306[628];
  *&v147 = *&v306[636];
  v278 = *&v306[636];
  v279 = v306[644];
  v281 = v306[647];
  v280 = *&v306[645];
  v282 = *&v306[648];
  v283 = *&v306[656];
  v284 = *&v306[664];
  LODWORD(v154) = *&v306[668];
  v285 = *&v306[668];
  v286 = *&v306[672];
  v287 = *&v306[680];
  v288 = *&v306[688];
  v289 = *&v306[696];
  v290 = *&v306[704];
  v291 = *&v306[708];
  v292 = v306[724];
  v294 = v306[727];
  v293 = *&v306[725];
  v295 = *&v306[728];
  v296 = v306[744];
  v298 = v306[747];
  v297 = *&v306[745];
  v299 = *&v306[748];
  v300 = v306[764];
  v302 = v306[767];
  v301 = *&v306[765];
  v303 = *&v306[768];
  v304 = v306[776];
  if (sub_18AF4FB9C(v256) == 1)
  {
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0.0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    LOBYTE(v375[0]) = 1;
    v83 = 0;
    v374[0] = 1;
    v84 = 0;
    LOBYTE(v184[0]) = 1;
    v59 = 0;
    v60 = 1;
    v63 = 0;
    v61 = 1;
    v62 = 1;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
  }

  else
  {
    v239 = v254;
    v240 = v255;
    v237 = v252;
    v238 = v253;
    v235 = v250;
    v236 = v251;
    v234 = v249;
    v233 = v248;
    v71 = v152;
    v70 = v153;
    v73 = v150;
    v72 = v151;
    v74 = v148;
    v75 = v147;
    v77 = v146;
    v76 = v145;
    v78 = v144;
    v79 = v143;
    v81 = v141;
    v80 = v142;
    v82 = v140;
    v84 = v138;
    v83 = v139;
  }

  v376[0] = v77;
  v376[1] = v156;
  v377 = v76;
  v378 = v78;
  v379 = v79;
  v380 = v155;
  v381 = v80;
  v382 = v81;
  v383 = v82;
  v384 = v83;
  v385 = v84;
  v386 = v59;
  v387 = v70;
  v388 = v71;
  v389 = v60;
  v390 = v239;
  v391 = v240;
  v392 = v72;
  v393 = v73;
  v394 = v61;
  v395 = v237;
  v396 = v238;
  v397 = v74;
  v398 = v75;
  v399 = v62;
  v401 = v236;
  v400 = v235;
  v402 = v63;
  v403 = v64;
  v404 = v65;
  v405 = v154;
  v406 = v66;
  v407 = v67;
  v408 = v68;
  v156 = 0x3F8000003E19999ALL;
  v409 = 0x3F8000003E19999ALL;
  v410 = 1069547520;
  v412 = 0;
  v411 = 0;
  v413 = v247;
  v415 = v246;
  v414 = v245;
  v416 = v162;
  v417 = v161;
  v418 = v244;
  v420 = v243;
  v419 = v242;
  v422 = 0;
  v421 = 0;
  v423 = v241;
  v425 = v234;
  v424 = v233;
  v426 = v69;
  sub_18AF6B330(v376);
  v85 = *&v306[520];
  v86 = *&v306[528];
  v87 = *&v306[536];
  v88 = *&v306[544];
  v89 = *&v306[552];
  v182 = *&v306[645];
  v183 = v306[647];
  v180 = *&v306[725];
  v181 = v306[727];
  v178 = *&v306[745];
  v179 = v306[747];
  v90 = *&v306[756];
  v177 = v306[767];
  v176 = *&v306[765];
  v184[0] = *&v306[520];
  LODWORD(v155) = *&v306[524];
  v184[1] = *&v306[524];
  v185 = *&v306[528];
  v186 = *&v306[536];
  v187 = *&v306[544];
  LODWORD(v154) = *&v306[548];
  v188 = *&v306[548];
  v189 = *&v306[552];
  v190 = *&v306[560];
  *&v146 = *&v306[560];
  v152 = *&v306[568];
  v191 = *&v306[568];
  v192 = *&v306[576];
  v193 = *&v306[584];
  v194 = *&v306[588];
  v195 = v306[604];
  v91 = *v159;
  v197 = v159[2];
  v196 = v91;
  v198 = *&v306[608];
  v199 = v306[624];
  v92 = *v158;
  v201 = v158[2];
  v200 = v92;
  v202 = *&v306[628];
  v203 = v306[644];
  v205 = v306[647];
  v204 = *&v306[645];
  v153 = *&v306[648];
  v206 = *&v306[648];
  v207 = *&v306[656];
  v151 = *&v306[656];
  LODWORD(v150) = *&v306[664];
  v208 = *&v306[664];
  LODWORD(v158) = *&v306[668];
  v209 = *&v306[668];
  v148 = *&v306[672];
  v210 = *&v306[672];
  v211 = *&v306[680];
  *&v147 = *&v306[680];
  *&v145 = *&v306[688];
  v212 = *&v306[688];
  LODWORD(v144) = *&v306[696];
  v213 = *&v306[696];
  v93 = *&v306[700];
  v214 = *&v306[700];
  v94 = *&v306[704];
  v215 = *&v306[704];
  v95 = *&v306[708];
  v216 = *&v306[708];
  v96 = *&v306[716];
  v217 = *&v306[716];
  v97 = v306[724];
  v218 = v306[724];
  v98 = *&v306[736];
  v220 = v306[727];
  v219 = *&v306[725];
  v99 = *&v306[728];
  v221 = *&v306[728];
  v222 = *&v306[736];
  v100 = v306[744];
  v223 = v306[744];
  v225 = v306[747];
  v224 = *&v306[745];
  v159 = *&v306[748];
  v226 = *&v306[748];
  v227 = *&v306[756];
  v101 = v306[764];
  v228 = v306[764];
  v230 = v306[767];
  v229 = *&v306[765];
  v102 = *&v306[768];
  v231 = *&v306[768];
  v232 = v306[776];
  if (sub_18AF4FB9C(v184) == 1)
  {
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v98 = 0;
    v159 = 0;
    v90 = 0;
    v86 = 0.0;
    v85 = 0.0;
    v87 = 0.0;
    v88 = 0.0;
    v89 = 0;
    v106 = 0;
    v107 = 0;
    v97 = 1;
    v108 = 0;
    LOBYTE(v375[0]) = 1;
    v109 = 0;
    v374[0] = 1;
    v110 = 0;
    LOBYTE(v164) = 1;
    v111 = 0.0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v100 = 1;
    v117 = 1;
    v118 = 0;
    v119 = v160;
  }

  else
  {
    v174 = v182;
    v175 = v183;
    v172 = v180;
    v173 = v181;
    v170 = v178;
    v171 = v179;
    v169 = v177;
    v168 = v176;
    v119 = v160;
    v103 = v95;
    v104 = v96;
    v105 = v99;
    v107 = v152;
    v108 = v153;
    v109 = v151;
    v110 = v150;
    v111 = v148;
    v112 = v147;
    v113 = v145;
    v114 = v144;
    v115 = v93;
    v106 = v146;
    v116 = v94;
    v118 = v102;
    v117 = v101;
  }

  v120 = v247;
  v121 = v244;
  v122 = v241;
  if (v85 == 0.0 && v86 == 0.0 && v87 == 0.0 && v88 == 0.0)
  {
    v152 = v107;
    v153 = v108;
    v123 = v104;
    v151 = v90;
    v141 = v103;
    v142 = v98;
    v124 = v105;
    v125 = v109;
    v126 = v110;
    *&v150 = v85;
    v148 = v86;
    *&v147 = v87;
    *&v146 = v88;
    *&v145 = v89;
    v127 = v111;
    v128 = v112;
    v129 = v113;
    v130 = v114;
    v131 = v115;
    v132 = v106;
    LODWORD(v144) = v116;
    v133 = v100;
    v143 = v118;
    v134 = v117;
    sub_18AFCCCB4();
    v103 = v141;
    v117 = v134;
    v118 = v143;
    v100 = v133;
    v116 = v144;
    v106 = v132;
    v107 = v152;
    v108 = v153;
    v115 = v131;
    v114 = v130;
    v113 = v129;
    v112 = v128;
    v111 = v127;
    v89 = v145;
    LODWORD(v88) = v146;
    v87 = *&v147;
    v86 = v148;
    LODWORD(v85) = v150;
    v110 = v126;
    v109 = v125;
    v105 = v124;
    v98 = v142;
    v90 = v151;
    v104 = v123;
    v119 = v160;
  }

  *&v375[0] = __PAIR64__(v155, LODWORD(v85));
  *(v375 + 1) = v86;
  *&v375[1] = v87;
  *(&v375[1] + 1) = __PAIR64__(v154, LODWORD(v88));
  *&v375[2] = v89;
  *(&v375[2] + 1) = v106;
  *&v375[3] = v107;
  *(&v375[3] + 1) = v156;
  LODWORD(v375[4]) = 1069547520;
  *(&v375[4] + 12) = 0;
  *(&v375[4] + 4) = 0;
  BYTE4(v375[5]) = v120;
  *(&v375[5] + 5) = v245;
  BYTE7(v375[5]) = v246;
  *(&v375[5] + 1) = v162;
  *&v375[6] = v161;
  BYTE8(v375[6]) = v121;
  BYTE11(v375[6]) = v243;
  *(&v375[6] + 9) = v242;
  *(&v375[6] + 12) = 0;
  *(&v375[7] + 4) = 0;
  BYTE12(v375[7]) = v122;
  HIBYTE(v375[7]) = v175;
  *(&v375[7] + 13) = v174;
  *&v375[8] = v108;
  *(&v375[8] + 1) = v109;
  *&v375[9] = __PAIR64__(v158, v110);
  *(&v375[9] + 1) = v111;
  *&v375[10] = v112;
  *(&v375[10] + 1) = v113;
  *&v375[11] = __PAIR64__(v115, v114);
  DWORD2(v375[11]) = v116;
  *(&v375[11] + 12) = v103;
  *(&v375[12] + 4) = v104;
  BYTE12(v375[12]) = v97;
  HIBYTE(v375[12]) = v173;
  *(&v375[12] + 13) = v172;
  *&v375[13] = v105;
  *(&v375[13] + 1) = v98;
  LOBYTE(v375[14]) = v100;
  BYTE3(v375[14]) = v171;
  *(&v375[14] + 1) = v170;
  *(&v375[14] + 4) = v159;
  *(&v375[14] + 12) = v90;
  BYTE4(v375[15]) = v117;
  BYTE7(v375[15]) = v169;
  *(&v375[15] + 5) = v168;
  *(&v375[15] + 1) = v118;
  sub_18AF4FBB8(v375);
  memcpy(&v306[520], v375, 0x101uLL);
  *&v306[8] = 0x3FA1111111111111;
  memcpy(v375, v306, 0x401uLL);
  v164 = v429;
  v165 = v430;
  v166 = v157;
  v167 = v428;
  v135 = v163;
  sub_18AF4CBF0(&v164, v163, v119, v374);
  sub_18AF6EE98(v135);
  return memcpy(v149, v374, 0x401uLL);
}

void *sub_18AF79140@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a1[1];
  v23 = *a1;
  v24 = v8;
  v25 = a1[2];
  sub_18AF97C20(&v23);
  if (v20)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
  }

  else
  {
    v10 = v19;
    v11 = v17;
    v12 = v18;
    v9 = v16;
  }

  v35 = v15[16];
  v36 = v15[17];
  v37 = v15[18];
  v38 = v15[19];
  v31 = v15[12];
  v32 = v15[13];
  v33 = v15[14];
  v34 = v15[15];
  v27 = v15[8];
  v28 = v15[9];
  v29 = v15[10];
  v30 = v15[11];
  v23 = v15[4];
  v24 = v15[5];
  v25 = v15[6];
  v26 = v15[7];
  v39 = 0x4014000000000000;
  v40 = v9;
  v41 = v11;
  v42 = v12;
  v43 = v10;
  v44 = 0;
  memcpy(v45, v21, sizeof(v45));
  v13 = a1[1];
  v15[0] = *a1;
  v15[1] = v13;
  v15[2] = a1[2];
  sub_18AF4CBF0(v15, a2, a3 | 0x1380, __src);
  return memcpy(a4, __src, 0x401uLL);
}

uint64_t sub_18AF792A8@<X0>(unsigned int a1@<W3>, int a2@<W4>, uint64_t a3@<X8>)
{
  v82 = a2;
  v77 = a1;
  v88 = a3;
  v3 = sub_18AFCD9D4();
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v83 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_18AFCD774();
  v89 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v76 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_18AFCD704();
  v6 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v90 = (v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_18AFCDA04();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_18AFCCCF4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18AFCBB34();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x1E697DBA8], v13, v15);
  sub_18AE84004();
  v18 = v9;
  sub_18AFCDDF4();
  (*(v14 + 8))(v17, v13);
  v19 = *MEMORY[0x1E69814D8];
  v22 = *(v10 + 104);
  v21 = v10 + 104;
  v20 = v22;
  v22(v12, v19, v9);
  sub_18AFCCDE4();
  LODWORD(v81) = v23;
  LODWORD(v80) = v24;
  LODWORD(v79) = v25;
  LODWORD(v78) = v26;
  v22(v12, v19, v9);
  sub_18AFCCDE4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v22(v12, v19, v9);
  sub_18AFCCDE4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  if (qword_1ED56A8C0 != -1)
  {
    swift_once();
  }

  v43 = sub_18AFA4744();
  if (v43 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
    v44 = *(v89 + 72);
    v45 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v72 = 2 * v44;
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_18AFDBCA0;
    v77 = v19;
    v70[0] = v45;
    v73 = v46;
    v70[1] = v46 + v45;
    v74 = v20;
    v47 = *MEMORY[0x1E6979DA0];
    v92 = &_s12GradientFillVN;
    v48 = sub_18AF7B3C0();
    v75 = v21;
    v49 = v18;
    v71 = v48;
    v93 = v48;
    v50 = swift_allocObject();
    v91[0] = v50;
    *(v50 + 16) = v47;
    *(v50 + 24) = xmmword_18AFDEE50;
    *(v50 + 40) = xmmword_18AFDEE60;
    *(v50 + 56) = v28;
    *(v50 + 60) = v30;
    *(v50 + 64) = v32;
    *(v50 + 68) = v34;
    v51 = v80;
    *(v50 + 72) = v81;
    *(v50 + 76) = v51;
    v52 = v78;
    *(v50 + 80) = v79;
    *(v50 + 84) = v52;
    v80 = v47;
    sub_18AFCD804();
    __swift_destroy_boxed_opaque_existential_1(v91);
    v53 = v90;
    *v90 = 0;
    v54 = *MEMORY[0x1E6981BB8];
    v55 = *(v6 + 104);
    v56 = v86;
    (v55)(v53, v54, v86);
    sub_18AFCD784();
    v78 = v49;
    v74(v12, v77, v49);
    sub_18AFCCDE4();
    sub_18AFCD884();
    *v53 = 23;
    (v55)(v53, v54, v56);
    v79 = v44;
    sub_18AFCD784();
    v92 = &_s12GradientFillVN;
    v93 = v71;
    v57 = swift_allocObject();
    v91[0] = v57;
    *(v57 + 16) = v80;
    *(v57 + 24) = xmmword_18AFDEE70;
    *(v57 + 40) = xmmword_18AFDEE80;
    *(v57 + 56) = v36;
    *(v57 + 60) = v38;
    *(v57 + 64) = v40;
    *(v57 + 68) = v42;
    *(v57 + 72) = v36;
    *(v57 + 76) = v38;
    *(v57 + 80) = v40;
    *(v57 + 84) = v42;
    sub_18AFCD804();
    __swift_destroy_boxed_opaque_existential_1(v91);
    *v53 = 21;
    (v55)(v53, v54, v56);
    sub_18AFCD784();
    v81 = v55;
    if (v82)
    {
      v74(v12, v77, v78);
      sub_18AFCCDE4();
      sub_18AFCD864();
      v58 = v90;
      *v90 = 22;
      (v55)(v58, v54, v56);
      v59 = v76;
      sub_18AFCD784();
      v60 = v73;
      v62 = v73[2];
      v61 = v73[3];
      if (v62 >= v61 >> 1)
      {
        v60 = sub_18AE8C6D8(v61 > 1, v62 + 1, 1, v73);
      }

      v60[2] = v62 + 1;
      v63 = v60 + v70[0] + v62 * v79;
      v64 = v87;
      (*(v89 + 32))(v63, v59, v87);
    }

    else
    {
      v64 = v87;
    }

    v65 = v83;
    v66 = v84;
    v67 = v85;
    (*(v84 + 104))(v83, *MEMORY[0x1E6981C40], v85);
    sub_18AFCD874();

    (*(v66 + 8))(v65, v67);
    *v90 = 2;
    v81();
    goto LABEL_12;
  }

  v64 = v87;
  if (v43 == 2)
  {
    sub_18AFCD864();
    *v90 = 2;
    (*(v6 + 104))();
LABEL_12:
    v68 = v88;
    sub_18AFCD784();
    return (*(v89 + 56))(v68, 0, 1, v64);
  }

  result = sub_18AFCE1E4();
  __break(1u);
  return result;
}

id sub_18AF79DF0()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18AFCEB10;
  v3 = sub_18AFCCDD4();
  type metadata accessor for CGColor(0);
  v5 = v4;
  *(v2 + 56) = v4;
  *(v2 + 32) = v3;
  v6 = sub_18AFCCDD4();
  *(v2 + 88) = v5;
  *(v2 + 64) = v6;
  v7 = sub_18AFCDE94();

  [v1 setColors_];

  [v1 setType_];
  [v1 setStartPoint_];
  [v1 setEndPoint_];
  return v1;
}

uint64_t sub_18AF79F80()
{
  v0 = sub_18AFCDE34();
  v2 = v1;
  if (v0 == sub_18AFCDE34() && v2 == v3)
  {
  }

  else
  {
    v5 = sub_18AFCE264();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_18AFCDCB4() & 1) == 0 || (sub_18AFCDCB4() & 1) == 0 || (sub_18AFCCE14() & 1) == 0)
  {
    return 0;
  }

  return sub_18AFCCE14();
}

void *sub_18AF7A094(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v134 = v7;
  v141 = &v275[23] + 8;
  *&v131 = sub_18AFCCCF4();
  v133 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v9 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCBB34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v6;
  v15 = *(v6 + 3);
  v429 = *(v6 + 2);
  v427 = v6[2];
  v428 = v14;
  v16 = *(_s11EnvironmentVMa() + 20);
  v17 = *(v11 + 104);
  LODWORD(v138) = *MEMORY[0x1E697DBA8];
  v139 = v11 + 104;
  v137 = v17;
  v17(v13);
  v18 = sub_18AE84004();
  v140 = v16;
  v136 = v18;
  v19 = sub_18AFCDDF4();
  v20 = *(v11 + 8);
  v132 = (v11 + 8);
  v135 = v20;
  (v20)(v13, v10);
  LODWORD(v130) = v19 | ((v15 & 0x42000) == 0);
  v143 = v4;
  v144 = v2;
  v426[0] = v428;
  *&v426[1] = v429;
  v142 = v15;
  *(&v426[1] + 1) = v15;
  v426[2] = v427;
  sub_18AF96894(v426);
  v295 = v298;
  v296 = v299;
  v297 = v300;
  memcpy(v294, v301, sizeof(v294));
  v293[0] = v302[0];
  *(v293 + 3) = *(v302 + 3);
  v292[0] = v303[0];
  *(v292 + 3) = *(v303 + 3);
  v291[0] = v304[0];
  *(v291 + 3) = *(v304 + 3);
  v290 = v305;
  v289 = v306;
  v288 = v308;
  v287 = v307;
  v284 = v315;
  v285 = v316;
  v286 = v317;
  v280 = v311;
  v281 = v312;
  v283 = v314;
  v282 = v313;
  v279 = v310;
  v278 = v309;
  memcpy(v277, v318, sizeof(v277));
  LOBYTE(v426[0]) = 1;
  LOBYTE(v275[0]) = 1;
  v21 = (v133 + 104);
  LODWORD(v133) = v19;
  *&v128 = v21;
  v22 = v131;
  (*v21)(v9, *MEMORY[0x1E69814D8], v131);
  sub_18AFCCDE4();
  v26.i32[1] = v25;
  if (v19)
  {
    v27.i64[0] = v23;
    v27.i64[1] = v24;
    v129 = vorrq_s8(vshll_n_s32(v26, 0x20uLL), v27);
    LOBYTE(v426[0]) = 0;
    LOBYTE(v275[0]) = 1;
    LOBYTE(v321[0]) = 1;
    v28 = 1061997773;
    v29 = 0.3;
    v30 = 1028443341;
  }

  else
  {
    v31.i64[0] = v23;
    v31.i64[1] = v24;
    v129 = vorrq_s8(vshll_n_s32(v26, 0x20uLL), v31);
    LOBYTE(v426[0]) = 0;
    LOBYTE(v275[0]) = 1;
    LOBYTE(v321[0]) = 1;
    v28 = 1067030938;
    v29 = 0.8;
    v30 = 1039516303;
  }

  v32 = v30;
  if (v130)
  {
    v33 = v29;
  }

  else
  {
    v33 = 1.0;
  }

  v275[0] = v295;
  v275[1] = v296;
  v275[2] = v297;
  *&v275[3] = 0;
  memcpy(&v275[3] + 8, v294, 0x130uLL);
  *(&v275[22] + 1) = 0x4056800000000000;
  v275[23] = xmmword_18AFDEE90;
  *&v275[24] = 0x4010000000000000;
  BYTE8(v275[24]) = 0;
  *(&v275[24] + 9) = v293[0];
  HIDWORD(v275[24]) = *(v293 + 3);
  *&v275[25] = 0;
  BYTE8(v275[25]) = 1;
  *(&v275[25] + 9) = v292[0];
  HIDWORD(v275[25]) = *(v292 + 3);
  *&v275[26] = 0;
  BYTE8(v275[26]) = 1;
  *(&v275[26] + 9) = v291[0];
  HIDWORD(v275[26]) = *(v291 + 3);
  *(&v275[27] + 8) = v290;
  *&v275[27] = 0x3FC3333333333333;
  *(&v275[28] + 1) = 0xBFE4CCCCCCCCCCCDLL;
  v275[29] = v289;
  v275[30] = xmmword_18AFDEEA0;
  LODWORD(v275[31]) = 1056964608;
  *(&v275[31] + 4) = v287;
  DWORD1(v275[32]) = v288;
  *(&v275[32] + 1) = 0;
  v275[36] = v281;
  v275[35] = v280;
  v275[33] = v278;
  v275[34] = v279;
  *&v275[41] = v286;
  v275[40] = v285;
  v275[39] = v284;
  v275[37] = v282;
  v275[38] = v283;
  DWORD2(v275[41]) = 1065353216;
  HIDWORD(v275[41]) = v32;
  *&v275[42] = __PAIR64__(v28, LODWORD(v33));
  *(v141 + 19) = v129;
  BYTE8(v275[43]) = 0;
  *(&v275[43] + 12) = 0u;
  BYTE12(v275[44]) = 1;
  v275[45] = 0u;
  LOBYTE(v275[46]) = 1;
  memcpy(&v275[46] + 1, v277, 0x19FuLL);
  v34 = v142;
  if ((v142 & 0x20) != 0 && (v144 & 0x200) == 0)
  {
    *&v275[27] = 0;
    *v141 = xmmword_18AFDEEB0;
  }

  if ((v34 & 0x10) == 0)
  {
    if ((v34 & 8) == 0 || (v144 & 0x100) != 0)
    {
      goto LABEL_22;
    }

    v35 = 0;
    goto LABEL_18;
  }

  v35 = (v144 & 0x80) == 0;
  if ((v144 & 0x80) == 0)
  {
    sub_18AF7721C(v143, 1, 1);
    v34 = v142;
  }

  if ((v34 & 8) != 0 && (v144 & 0x100) == 0)
  {
LABEL_18:
    (v137)(v13, v138, v10);
    v36 = sub_18AFCDDF4();
    (v135)(v13, v10);
    if (v36)
    {
      v34 = v142;
      if (!v35)
      {
        *&v275[42] = *&v275[42] + -0.5;
        DWORD1(v275[42]) = 1060320051;
      }
    }

    else
    {
      v34 = v142;
      DWORD1(v275[42]) = 1061997773;
      *(v141 + 292) = vadd_f32(*(v141 + 292), 0xBF0000003E800000);
    }
  }

LABEL_22:
  if ((v34 & 0x800000) != 0 && (v144 & 0x1000) == 0)
  {
    LOBYTE(v426[0]) = 0;
    *(&v275[66] + 1) = 0x400921FB54442D18;
    BYTE9(v275[70]) = 0;
    (v137)(v13, v138, v10);
    v37 = sub_18AFCDDF4();
    (v135)(v13, v10);
    if ((v37 & 1) == 0)
    {
      *(&v275[71] + 1) = 0x3FC999999999999ALL;
    }

    if ((v142 & 2) != 0)
    {
      v38 = (v142 & 4) != 0 && (v144 & 0x40) == 0;
    }

    else
    {
      v38 = 1;
    }

    (*v128)(v9, *MEMORY[0x1E69814D8], v22);
    sub_18AFCCDE4();
    v128 = v40;
    v129 = v39;
    v130 = v42;
    v131 = v41;
    (v137)(v13, v138, v10);
    sub_18AFCDDF4();
    (v135)(v13, v10);
    v43 = 0.93;
    if (!v38)
    {
      v43 = 1.0;
    }

    v44 = 0.9;
    if (v38)
    {
      v44 = 0.6;
    }

    *(&v275[56] + 4) = __PAIR64__(LODWORD(v43), LODWORD(v44));
    *(&v275[60] + 3) = v44;
    *&v275[61] = v43;
    v45 = v141;
    v34 = v142;
    v141[644] = 0;
    v46.i64[0] = v129.u32[0];
    v46.i64[1] = v128;
    v47 = vorrq_s8(vshll_n_s32(__PAIR64__(v130, v131), 0x20uLL), v46);
    *(v45 + 628) = v47;
    *(v45 + 556) = v47;
    v45[572] = 0;
  }

  memcpy(v426, v275, sizeof(v426));
  v321[0] = v428;
  *&v321[1] = v429;
  *(&v321[1] + 1) = v34;
  v321[2] = v427;
  sub_18AF6FCC0(v321);
  memcpy(v276, v319, sizeof(v276));
  LOBYTE(v321[0]) = 1;
  v320[0] = 1;
  LODWORD(v139) = 1;
  LOBYTE(v222[0]) = 1;
  if (v133)
  {
    LODWORD(v141) = 1067030938;
    v48 = 1060320051;
  }

  else
  {
    LODWORD(v141) = 1066192077;
    v48 = 1058642330;
  }

  LODWORD(v140) = v48;
  v135 = &v276[605];
  v136 = &v276[625];
  v137 = &v276[645];
  v49 = v276[724];
  v138 = &v276[725];
  v233 = v276[604];
  v234 = *&v319[605];
  v235 = v319[607];
  v133 = &v276[745];
  v237 = v276[624];
  v239 = v319[627];
  v238 = *&v319[625];
  v241 = v276[644];
  v242 = *&v319[645];
  v243 = v319[647];
  v257 = *&v319[725];
  v258 = v319[727];
  v262 = *&v319[745];
  v263 = v319[747];
  v267 = *&v319[765];
  v232 = *&v276[588];
  v236 = *&v276[608];
  v240 = *&v276[628];
  v127 = *&v276[716];
  *&v128 = *&v276[708];
  v254 = *&v276[708];
  v255 = *&v276[716];
  v115 = *&v276[756];
  v116 = *&v276[748];
  v264 = *&v276[748];
  v265 = *&v276[756];
  v268 = v319[767];
  v270 = v276[776];
  v50 = v276[764];
  v132 = &v276[765];
  v51 = *&v276[768];
  LODWORD(v125) = *&v276[520];
  v222[0] = *&v276[520];
  LODWORD(v130) = *&v276[524];
  v222[1] = *&v276[524];
  v123 = *&v276[536];
  v124 = *&v276[528];
  v223 = *&v276[528];
  v224 = *&v276[536];
  LODWORD(v126) = *&v276[544];
  v225 = *&v276[544];
  v129.i32[0] = *&v276[548];
  v226 = *&v276[548];
  v120 = *&v276[552];
  v121 = *&v276[568];
  v227 = *&v276[552];
  v122 = *&v276[560];
  v228 = *&v276[560];
  v229 = *&v276[568];
  v230 = *&v276[576];
  v231 = *&v276[584];
  v52 = *&v276[648];
  v244 = *&v276[648];
  v53 = *&v276[656];
  v245 = *&v276[656];
  v54 = *&v276[664];
  v246 = *&v276[664];
  LODWORD(v131) = *&v276[668];
  v247 = *&v276[668];
  v118 = *&v276[680];
  v119 = *&v276[672];
  v248 = *&v276[672];
  v249 = *&v276[680];
  v55 = *&v276[688];
  v250 = *&v276[688];
  v56 = *&v276[696];
  v251 = *&v276[696];
  v57 = *&v276[700];
  v252 = *&v276[700];
  v58 = *&v276[704];
  v253 = *&v276[704];
  v256 = v276[724];
  v59 = *&v276[728];
  v259 = *&v276[728];
  v60 = *&v276[736];
  v260 = *&v276[736];
  v117 = v276[744];
  v261 = v276[744];
  v266 = v276[764];
  v269 = *&v276[768];
  if (sub_18AF4FB9C(v222) == 1)
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v60 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v49 = 1;
    v73 = 0;
    LOBYTE(v321[0]) = 1;
    v74 = 0;
    v320[0] = 1;
    v75 = 0;
    LOBYTE(v165[0]) = 1;
    v76 = 0;
    v77 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v78 = 1;
    v50 = 1;
    v51 = 0;
  }

  else
  {
    v220 = *&v319[645];
    v221 = v319[647];
    v218 = *&v319[725];
    v219 = v319[727];
    v216 = *&v319[745];
    v217 = v319[747];
    v215 = v319[767];
    v214 = *&v319[765];
    v62 = v127;
    v61 = v128;
    v63 = v59;
    v73 = v52;
    v67 = v125;
    v74 = v53;
    v75 = v54;
    v68 = v123;
    v66 = v124;
    v77 = v118;
    v76 = v119;
    v69 = v126;
    v72 = v121;
    v71 = v122;
    v70 = v120;
    v78 = v117;
    v65 = v115;
    v64 = v116;
  }

  v374[0] = v67;
  v374[1] = v130;
  v375 = v66;
  v376 = v68;
  v377 = v69;
  v378 = v129.i32[0];
  v379 = v70;
  v380 = v71;
  v381 = v72;
  v382 = v140;
  v383 = 1065353216;
  v384 = v141;
  v386 = 0;
  v385 = 0;
  v79 = v139;
  v387 = v139;
  v389 = v274;
  v388 = v273;
  v391 = 0;
  v390 = 0;
  v392 = v139;
  v394 = v272;
  v393 = v271;
  v396 = 0;
  v395 = 0;
  v397 = v139;
  v399 = v221;
  v398 = v220;
  v400 = v73;
  v401 = v74;
  v402 = v75;
  v403 = v131;
  v404 = v76;
  v405 = v77;
  v406 = v55;
  v407 = v56;
  v408 = v57;
  v409 = v58;
  v410 = v61;
  v411 = v62;
  v412 = v49;
  v414 = v219;
  v413 = v218;
  v415 = v63;
  v416 = v60;
  v417 = v78;
  v419 = v217;
  v418 = v216;
  v420 = v64;
  v421 = v65;
  v422 = v50;
  v424 = v215;
  v423 = v214;
  v425 = v51;
  sub_18AF6B330(v374);
  v80 = *&v276[520];
  v81 = *&v276[528];
  v82 = *&v276[536];
  v83 = *&v276[544];
  v84 = *&v276[552];
  v85 = *&v276[560];
  v86 = *&v276[568];
  v87 = *&v276[588];
  v88 = *&v276[596];
  v89 = v276[604];
  v90 = v136;
  v163 = *v135;
  v164 = v135[2];
  v91 = v276[624];
  v161 = *v136;
  v162 = v136[2];
  v92 = v276[644];
  v159 = *v137;
  v160 = v137[2];
  v158 = v132[2];
  v157 = *v132;
  v165[0] = *&v276[520];
  LODWORD(v130) = *&v276[524];
  v165[1] = *&v276[524];
  v166 = *&v276[528];
  v167 = *&v276[536];
  v168 = *&v276[544];
  LODWORD(v131) = *&v276[548];
  v169 = *&v276[548];
  v170 = *&v276[552];
  v171 = *&v276[560];
  v172 = *&v276[568];
  LODWORD(v121) = *&v276[576];
  v173 = *&v276[576];
  LODWORD(v120) = *&v276[580];
  v174 = *&v276[580];
  LODWORD(v122) = *&v276[584];
  v175 = *&v276[584];
  v176 = *&v276[588];
  v177 = *&v276[596];
  v178 = v276[604];
  v93 = *v135;
  v180 = v135[2];
  v179 = v93;
  v129.i64[0] = *&v276[608];
  v181 = *&v276[608];
  v182 = *&v276[616];
  v135 = *&v276[616];
  v136 = *&v276[628];
  v183 = v276[624];
  v94 = *v90;
  v185 = v90[2];
  v184 = v94;
  v186 = *&v276[628];
  v95 = *&v276[636];
  v187 = *&v276[636];
  v188 = v276[644];
  v96 = *v137;
  v190 = v137[2];
  v189 = v96;
  v123 = *&v276[648];
  v124 = *&v276[656];
  v191 = *&v276[648];
  v192 = *&v276[656];
  LODWORD(v128) = *&v276[664];
  v193 = *&v276[664];
  LODWORD(v137) = *&v276[668];
  v194 = *&v276[668];
  v125 = *&v276[672];
  v126 = *&v276[680];
  v195 = *&v276[672];
  v196 = *&v276[680];
  v127 = *&v276[688];
  v197 = *&v276[688];
  v198 = *&v276[696];
  v199 = *&v276[704];
  v200 = *&v276[708];
  v201 = v276[724];
  v97 = *v138;
  v203 = v138[2];
  v202 = v97;
  v204 = *&v276[728];
  v205 = v276[744];
  v98 = *v133;
  v207 = v133[2];
  v206 = v98;
  v208 = *&v276[748];
  v209 = v276[764];
  v99 = *v132;
  v211 = v132[2];
  v210 = v99;
  v100 = *&v276[768];
  v212 = *&v276[768];
  v213 = v276[776];
  if (sub_18AF4FB9C(v165) == 1)
  {
    v95 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v88 = 0;
    v87 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v92 = 1;
    v111 = 0;
    LOBYTE(v321[0]) = 1;
    v112 = 0;
    v320[0] = 1;
    v86 = 0;
    LOBYTE(v322[0]) = 1;
    v85 = 0;
    v91 = 1;
    v89 = 1;
    v84 = 0;
    v83 = 0;
    v82 = 0;
    v81 = 0;
    v80 = 0;
    v100 = 0;
  }

  else
  {
    v155 = v163;
    v156 = v164;
    v153 = v161;
    v154 = v162;
    v151 = v159;
    v152 = v160;
    v150 = v158;
    v149 = v157;
    v102 = v135;
    v101 = v136;
    v103 = v129.i64[0];
    v104 = v128;
    v106 = v126;
    v105 = v127;
    v108 = v124;
    v107 = v125;
    v109 = v123;
    v110 = v122;
    v112 = v121;
    v111 = v120;
  }

  v322[0] = v80;
  v322[1] = v130;
  v323 = v81;
  v324 = v82;
  v325 = v83;
  v326 = v131;
  v327 = v84;
  v328 = v85;
  v329 = v86;
  v330 = v112;
  v331 = v111;
  v332 = v110;
  v333 = v87;
  v334 = v88;
  v335 = v89;
  v336 = v155;
  v337 = v156;
  v338 = v103;
  v339 = v102;
  v340 = v91;
  v341 = v153;
  v342 = v154;
  v343 = v101;
  v344 = v95;
  v345 = v92;
  v346 = v151;
  v347 = v152;
  v348 = v109;
  v349 = v108;
  v350 = v104;
  v351 = v137;
  v352 = v107;
  v353 = v106;
  v354 = v105;
  v355 = v140;
  v356 = 1065353216;
  v357 = v141;
  v358 = 0;
  v359 = 0;
  v360 = v79;
  v362 = v274;
  v361 = v273;
  v363 = 0;
  v364 = 0;
  v365 = v79;
  v367 = v272;
  v366 = v271;
  v368 = 0;
  v369 = 0;
  v370 = v79;
  v371 = v149;
  v372 = v150;
  v373 = v100;
  sub_18AF6B330(v322);
  *&v276[500] = xmmword_18AFDBC70;
  v276[516] = 0;
  memcpy(v321, v276, 0x401uLL);
  v145 = v428;
  v146 = v429;
  v147 = v142;
  v148 = v427;
  sub_18AF4CBF0(&v145, v143, v144 | 0x1380, v320);
  return memcpy(v134, v320, 0x401uLL);
}