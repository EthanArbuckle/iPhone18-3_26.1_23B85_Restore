int8x16_t Main_theDots43_graph_5FFFB499_88F0_4B6A_BCBA_6EF5652B911B(int8x16_t result, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  result.i64[1] = vextq_s8(*a4, *a4, 8uLL).u64[0];
  *a4 = result;
  return result;
}

int8x16_t __vfx_script_theDots43_graph_5FFFB499_88F0_4B6A_BCBA_6EF5652B911B()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  result.i64[0] = **(arguments_buffer + 16);
  result.i64[1] = vextq_s8(*v1, *v1, 8uLL).u64[0];
  *v1 = result;
  return result;
}

__n128 __vfx_script_theDots43_graph_36CA844C_8E91_48B8_A106_31932436F98D()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  result.n128_u64[0] = **(arguments_buffer + 16);
  result.n128_u32[3] = 1.0;
  **(arguments_buffer + 24) = result;
  return result;
}

void Spawn_theDots43_graph_2D76B3B9_EBB8_405E_8D64_86B1CBD816F5(const void *a1, unsigned int a2, float a3, uint64_t a4, float a5, float a6, float *a7, float *a8, float *a9, float *a10)
{
  v10 = 0;
  v11 = (a3 * 40.0);
  v12 = a3 * 30.0;
  v13 = 0;
  v14 = a4 == 3 || a4 == 0;
  v15 = v14;
  v16 = v11;
  if (v14)
  {
    v10 = 1;
  }

  if (v14)
  {
    v13 = 1;
  }

  v17 = v12;
  v18 = (a5 * a6);
  if (v10)
  {
    v16 = 0.0;
  }

  *a7 = v16;
  if (v13)
  {
    v17 = 0.0;
  }

  *a8 = v17;
  *a9 = v17;
  if (v15)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v18;
  }

  *a10 = v19;
}

uint64_t __vfx_script_theDots43_graph_2D76B3B9_EBB8_405E_8D64_86B1CBD816F5()
{
  result = vfx_script_get_arguments_buffer();
  v1 = *(result + 56);
  v2 = *(result + 64);
  v3 = *(result + 72);
  v4 = **(result + 16);
  v5 = **(result + 24);
  v7 = v5 == 3 || v5 == 0;
  v8 = (v4 * 40.0);
  v9 = (v4 * 30.0);
  v10 = (**(result + 32) * **(result + 40));
  if (v7)
  {
    v8 = 0.0;
  }

  **(result + 48) = v8;
  if (v7)
  {
    v9 = 0.0;
  }

  *v1 = v9;
  *v2 = v9;
  if (v7)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v10;
  }

  *v3 = v11;
  return result;
}

float Init_theDots43_graph_BCD27D5D_75F7_4364_B275_47FF3D6A254D(float a1, float a2, __n128 a3, uint64_t a4, uint64_t a5, float *a6, __int128 *a7, __n128 *a8, __int128 *a9, __int128 *a10, __int128 *a11, int32x4_t *a12, __n128 *a13)
{
  v15 = *a9;
  v16 = *a10;
  v17 = *a11;
  v18 = *a7;
  *&v13 = -1.03 * a3.n128_f32[0];
  *&v14 = 1.03 * a3.n128_f32[0];
  v19 = a3;
  v19.n128_u32[1] = a13->n128_u32[1];
  v20 = a3;
  v20.n128_u32[1] = a8->n128_u32[1];
  *a12 = vdupq_lane_s32(a3.n128_u64[0], 1);
  v21 = fminf(a1, a2);
  result = fmaxf(a1, a2);
  *a6 = v21;
  a6[1] = result;
  DWORD1(v13) = DWORD1(v15);
  DWORD2(v13) = DWORD2(v15);
  *a9 = v13;
  DWORD2(v16) = a3.n128_u32[1];
  *a10 = v16;
  DWORD1(v14) = DWORD1(v17);
  DWORD2(v14) = DWORD2(v17);
  *a11 = v14;
  v19.n128_u32[2] = a3.n128_u32[1];
  *a13 = v19;
  DWORD2(v18) = vmuls_lane_f32(-1.01, a3.n128_u64[0], 1);
  *a7 = v18;
  v20.n128_u32[2] = a3.n128_u32[1];
  *a8 = v20;
  return result;
}

float __vfx_script_theDots43_graph_BCD27D5D_75F7_4364_B275_47FF3D6A254D()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[2];
  v2 = arguments_buffer[3];
  v3 = arguments_buffer[4];
  v4 = arguments_buffer[5];
  v5 = arguments_buffer[6];
  v6 = arguments_buffer[7];
  v7 = arguments_buffer[8];
  v8 = arguments_buffer[9];
  v9 = arguments_buffer[10];
  v10 = arguments_buffer[11];
  v11 = arguments_buffer[12];
  v12 = *v1;
  v13 = *v2;
  *&v14 = *v3;
  v15 = *v7;
  v16 = *v8;
  v17 = *v9;
  v18 = *v5;
  v19 = vmuls_lane_f32(-1.01, *v3, 1);
  *&v20 = -1.03 * COERCE_FLOAT(*v3);
  v21 = v14;
  DWORD1(v21) = *(v11 + 4);
  *&v22 = 1.03 * COERCE_FLOAT(*v3);
  v23 = v14;
  DWORD1(v23) = *(v6 + 4);
  *v10 = vdupq_lane_s32(*v3, 1);
  v24 = fminf(v12, v13);
  result = fmaxf(v12, v13);
  *v4 = v24;
  v4[1] = result;
  DWORD1(v20) = DWORD1(v15);
  DWORD2(v20) = DWORD2(v15);
  *v7 = v20;
  DWORD2(v16) = DWORD1(v14);
  *v8 = v16;
  DWORD1(v22) = DWORD1(v17);
  DWORD2(v22) = DWORD2(v17);
  DWORD2(v21) = DWORD1(v14);
  *v9 = v22;
  *v11 = v21;
  *(&v18 + 2) = v19;
  DWORD2(v23) = DWORD1(v14);
  *v5 = v18;
  *v6 = v23;
  *(v5 + 3) = 1065353216;
  *(v7 + 3) = 1065353216;
  *(v9 + 3) = 1065353216;
  return result;
}

__n128 Update_theDots43_graph_5084D6A9_79BC_4F64_86C8_E5E14A582B60(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, __int128 *a5)
{
  v10 = *a5;
  if (a3)
  {
    v7 = 0.2;
  }

  else
  {
    v7 = 0.0;
  }

  vfx_script_clock_time();
  *&v8 = *&v8;
  *&v8 = *&v8 * 0.01;
  *a4 = v7;
  *(&v8 + 4) = *(&v10 + 4);
  *a5 = v8;
  result.n128_u64[0] = v8;
  result.n128_u32[2] = DWORD2(v8);
  return result;
}

__n128 __vfx_script_theDots43_graph_5084D6A9_79BC_4F64_86C8_E5E14A582B60()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v2 = *(arguments_buffer + 32);
  v11 = *v2;
  if (**(arguments_buffer + 16))
  {
    v3 = 0.2;
  }

  else
  {
    v3 = 0.0;
  }

  vfx_script_clock_time();
  *&v4 = v4;
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.n128_f32[0] = *&v4 * 0.01;
  *v1 = v3;
  result = v11;
  *(_Q1.n128_u64 + 4) = *(v11.n128_u64 + 4);
  *v2 = _Q1;
  return result;
}

__n128 Render_theDots43_graph_22359051_1A50_4A9E_9C98_BE787048611B(__n128 a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  a1.n128_u32[1] = HIDWORD(a4->n128_u64[0]);
  a1.n128_u32[2] = a4->n128_u64[1];
  *a4 = a1;
  result.n128_u64[0] = a1.n128_u64[0];
  result.n128_u32[2] = a1.n128_u32[2];
  return result;
}

__n128 __vfx_script_theDots43_graph_22359051_1A50_4A9E_9C98_BE787048611B()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  __asm { FMOV            V0.4S, #1.0 }

  LODWORD(_Q0) = **(arguments_buffer + 16);
  DWORD1(_Q0) = HIDWORD(*v1);
  DWORD2(_Q0) = v1[1];
  *v1 = _Q0;
  result.n128_u64[0] = _Q0;
  result.n128_u32[2] = DWORD2(_Q0);
  return result;
}

float Spawn_theDots43_graph_DE046CD1_7FE7_4906_B9F1_F72E3C619103(const void *a1, unsigned int a2, float a3, uint64_t a4, float *a5)
{
  v5 = a3;
  if (a4)
  {
    v5 = 0;
  }

  result = v5;
  *a5 = v5;
  return result;
}

float __vfx_script_theDots43_graph_DE046CD1_7FE7_4906_B9F1_F72E3C619103()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  if (**(arguments_buffer + 24))
  {
    v1 = 0;
  }

  else
  {
    v1 = **(arguments_buffer + 16);
  }

  result = v1;
  **(arguments_buffer + 32) = v1;
  return result;
}

float Init_theDots43_graph_7305A5D5_5654_4FA6_A663_A585F6E30B0D(float a1, float a2, __n128 a3, uint64_t a4, uint64_t a5, float *a6, __n128 *a7)
{
  a3.n128_u32[1] = a7->n128_u32[1];
  *a6 = fminf(a1, a2);
  a6[1] = fmaxf(a1, a2);
  result = 5.0;
  a3.n128_u32[2] = 5.0;
  *a7 = a3;
  return result;
}

float __vfx_script_theDots43_graph_7305A5D5_5654_4FA6_A663_A585F6E30B0D()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 40);
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4 = **(arguments_buffer + 24);
  *&v5 = **(arguments_buffer + 32);
  DWORD1(v5) = *(v2 + 4);
  *v1 = fminf(v3, v4);
  v1[1] = fmaxf(v3, v4);
  result = 5.0;
  DWORD2(v5) = 5.0;
  *v2 = v5;
  return result;
}

void Update_theDots43_graph_2B30E278_AC76_44BE_AB61_653374A3FC69(const void *a1, unsigned int a2, uint64_t a3, float a4, float a5, float *a6)
{
  v6 = (a4 - a5) > 1.0 && a3 == 0;
  v7 = 0.4;
  if (!v6)
  {
    v7 = 0.0;
  }

  *a6 = v7;
}

uint64_t __vfx_script_theDots43_graph_2B30E278_AC76_44BE_AB61_653374A3FC69()
{
  result = vfx_script_get_arguments_buffer();
  v1 = (**(result + 24) - **(result + 32)) > 1.0 && **(result + 16) == 0;
  v2 = 0.4;
  if (!v1)
  {
    v2 = 0.0;
  }

  **(result + 40) = v2;
  return result;
}

float Main_theDots43_graph_CE4C8270_6015_4AB6_BEA3_093561972C9B(const void *a1, unsigned int a2, uint64_t a3, float a4, float a5, int a6, const void *a7, float a8, const void *a9, float a10, float a11, float a12, float a13, BOOL *a14, float *a15, float *a16, float *a17, float *a18, float *a19, float *a20, float *a21, float *a22, float *a23, float *a24)
{
  v28 = a5;
  v30 = a3 == 2;
  if (a6)
  {
    a5 = a4;
  }

  v42 = a5;
  v41 = fminf(fmaxf((v28 - a4) / 1.8, 0.0), 1.0);
  vfx_script_texture_sample1d();
  v40 = 0.09 * v31;
  vfx_script_texture_sample1d();
  v33 = powf(v32, 0.454);
  v34 = fminf(fmaxf((v28 - a11) * 0.5, 0.0), 1.0);
  if (a3 != 3)
  {
    a11 = v28;
  }

  v35 = a3 - 1;
  if (v35)
  {
    a12 = v28;
  }

  vfx_script_clock_delta_time();
  v37 = a10 - v36;
  if ((v30 & (a6 ^ 1)) != 0)
  {
    v37 = 1.5;
  }

  if (v35 >= 2)
  {
    v38 = v28;
  }

  else
  {
    v38 = a13;
  }

  *a14 = v30;
  *a15 = v42;
  *a16 = v41;
  *a17 = v40;
  *a18 = v33;
  *a19 = v34;
  *a20 = a11;
  *a21 = a12;
  *a22 = v37;
  result = (fminf(fmaxf((v28 - a13) / 3.0, 0.0), 1.0) * -210.0) + 300.0;
  *a23 = v38;
  *a24 = result;
  return result;
}

float __vfx_script_theDots43_graph_CE4C8270_6015_4AB6_BEA3_093561972C9B()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 112);
  v4 = *(arguments_buffer + 120);
  v5 = *(arguments_buffer + 128);
  v6 = *(arguments_buffer + 136);
  v7 = *(arguments_buffer + 144);
  v30 = *(arguments_buffer + 152);
  v31 = *(arguments_buffer + 104);
  v28 = *(arguments_buffer + 168);
  v29 = *(arguments_buffer + 160);
  v32 = *(arguments_buffer + 184);
  v33 = *(arguments_buffer + 176);
  v8 = **(arguments_buffer + 16);
  v9 = *v2;
  v10 = **(arguments_buffer + 40);
  v11 = **(arguments_buffer + 72);
  v12 = **(arguments_buffer + 80);
  v13 = **(arguments_buffer + 88);
  v14 = **(arguments_buffer + 96);
  v15 = v8 == 2;
  if (**(arguments_buffer + 40))
  {
    v16 = *v1;
  }

  else
  {
    v16 = *v2;
  }

  v27 = v16;
  v26 = fminf(fmaxf((v9 - *v1) / 1.8, 0.0), 1.0);
  vfx_script_texture_sample1d();
  v25 = 0.09 * v17;
  vfx_script_texture_sample1d();
  v19 = powf(v18, 0.454);
  v20 = fminf(fmaxf((v9 - v12) * 0.5, 0.0), 1.0);
  if (v8 != 3)
  {
    v12 = v9;
  }

  if (v8 != 1)
  {
    v13 = v9;
  }

  vfx_script_clock_delta_time();
  v22 = v11 - v21;
  if ((v15 & (v10 ^ 1)) != 0)
  {
    v22 = 1.5;
  }

  if ((v8 - 1) >= 2)
  {
    v23 = v9;
  }

  else
  {
    v23 = v14;
  }

  *v31 = v15;
  *v3 = v27;
  *v4 = v26;
  *v5 = v25;
  *v6 = v19;
  *v7 = v20;
  *v30 = v12;
  *v29 = v13;
  *v28 = v22;
  result = (fminf(fmaxf((v9 - v14) / 3.0, 0.0), 1.0) * -210.0) + 300.0;
  *v33 = v23;
  *v32 = result;
  return result;
}

float32x2_t Main_theDots43_graph_A0481AEC_B1D8_4B78_9EBF_4FDAD85966B8(float32x2_t a1, float a2, float32x2_t a3, float32x2_t a4, uint64_t a5, uint64_t a6, float32x2_t *a7, float32x2_t *a8, float32x2_t *a9)
{
  *a7 = vmul_n_f32(vmul_f32(a1, vdup_n_s32(0x3F99999Au)), a2);
  result = vmul_n_f32(a4, a2);
  *a8 = vmul_n_f32(a3, a2);
  *a9 = result;
  return result;
}

float32x2_t __vfx_script_theDots43_graph_A0481AEC_B1D8_4B78_9EBF_4FDAD85966B8()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 24);
  v2 = *(arguments_buffer + 56);
  v3 = *(arguments_buffer + 64);
  result = vmul_n_f32(vmul_f32(**(arguments_buffer + 16), vdup_n_s32(0x3F99999Au)), *v1);
  v5 = vmul_n_f32(**(arguments_buffer + 32), *v1);
  v6 = vmul_n_f32(**(arguments_buffer + 40), *v1);
  **(arguments_buffer + 48) = result;
  *v2 = v5;
  *v3 = v6;
  return result;
}

double Render_theDots43_graph_A8A6477D_6307_4242_B152_EF604169D0BD(__n128 a1, double a2, uint64_t a3, uint64_t a4, __n128 *a5, __n128 *a6)
{
  *a5 = a1;
  a1.n128_f64[0] = a2;
  *a6 = a1;
  return a1.n128_f64[0];
}

double __vfx_script_theDots43_graph_A8A6477D_6307_4242_B152_EF604169D0BD()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 32);
  v2 = *(arguments_buffer + 40);
  *&v3 = **(arguments_buffer + 16);
  *&v4 = **(arguments_buffer + 24);
  *v1 = v3;
  *v2 = v4;
  *(v1 + 12) = 1065353216;
  *(v2 + 12) = 1065353216;
  return *&v3;
}

uint64_t Main_theDots43_graph_5872B619_3E0E_483F_A17A_9A51AC199048(double a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, float *a6)
{
  vfx_script_curve_create();
  vfx_script_curve_evaluate();
  v12 = v11 * 30.0;
  if (a4 == 3)
  {
    *&v10 = 1.0;
  }

  else
  {
    *&v10 = 0.0;
  }

  v13 = *&v10 * v12;
  *&v10 = a1;
  *a5 = v10;
  *a6 = v13;
  return vfx_script_curve_destroy();
}

uint64_t __vfx_script_theDots43_graph_5872B619_3E0E_483F_A17A_9A51AC199048()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 40);
  v2 = *(arguments_buffer + 48);
  *&v3 = **(arguments_buffer + 16);
  v9 = v3;
  v4 = **(arguments_buffer + 32);
  vfx_script_curve_create();
  vfx_script_curve_evaluate();
  v6 = v5 * 30.0;
  if (v4 == 3)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  *v1 = v9;
  *v2 = v7 * v6;
  result = vfx_script_curve_destroy();
  *(v1 + 12) = 1065353216;
  return result;
}

float32x2_t Main_theDots43_graph_ADCAE428_080C_4109_8059_A0751E5A7216(float32x2_t a1, float a2, uint64_t a3, uint64_t a4, float32x2_t *a5)
{
  result = vmul_n_f32(a1, a2);
  *a5 = result;
  return result;
}

float32x2_t __vfx_script_theDots43_graph_ADCAE428_080C_4109_8059_A0751E5A7216()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  result = vmul_n_f32(**(arguments_buffer + 16), **(arguments_buffer + 24));
  **(arguments_buffer + 32) = result;
  return result;
}

float Init_theDots43_graph_4C67E203_F67A_42BD_B2F6_DCD0D0603B38(float a1, float a2, uint64_t a3, uint64_t a4, float *a5)
{
  v5 = fminf(a1, a2);
  result = fmaxf(a1, a2);
  *a5 = v5;
  a5[1] = result;
  return result;
}

float __vfx_script_theDots43_graph_4C67E203_F67A_42BD_B2F6_DCD0D0603B38()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = arguments_buffer[2];
  v2 = arguments_buffer[3];
  v3 = arguments_buffer[4];
  result = fmaxf(*v1, *v2);
  *v3 = fminf(*v1, *v2);
  v3[1] = result;
  return result;
}

__n128 Update_theDots43_graph_ADD6D082_79B4_45F8_8A33_ED8E6F591675(double a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7, __n128 *a8)
{
  v15 = *a8;
  vfx_script_texture_sample1d();
  if (a6 != 3)
  {
    v12 = 0.0;
  }

  v13.n128_f32[0] = a2 * 0.01;
  *a7 = v12;
  result = v15;
  *(v13.n128_u64 + 4) = *(v15.n128_u64 + 4);
  *a8 = v13;
  return result;
}

__n128 __vfx_script_theDots43_graph_ADD6D082_79B4_45F8_8A33_ED8E6F591675()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 48);
  v2 = *(arguments_buffer + 56);
  v3 = **(arguments_buffer + 32);
  v4 = **(arguments_buffer + 40);
  v12 = *v2;
  vfx_script_texture_sample1d();
  if (v3 != 3)
  {
    v5 = 0.0;
  }

  __asm { FMOV            V2.4S, #1.0 }

  _Q2.n128_f32[0] = v4 * 0.01;
  *v1 = v5;
  result = v12;
  *(_Q2.n128_u64 + 4) = *(v12.n128_u64 + 4);
  *v2 = _Q2;
  return result;
}

__n128 __vfx_script_theDots43_graph_7BFB6AE5_BE7F_4222_9EC8_BDCE36619F0E()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  result.n128_u64[0] = **(arguments_buffer + 16);
  result.n128_u32[3] = 1.0;
  **(arguments_buffer + 24) = result;
  return result;
}

float Spawn_theDots43_graph_16212ED8_D4BB_4BC2_BDD7_69D537B91698(const void *a1, unsigned int a2, const void *a3, float a4, unint64_t a5, float *a6)
{
  vfx_script_texture_sample1d();
  v9 = 10000.0 * v8;
  v10 = 0.0;
  if (a5 == 2)
  {
    v10 = 1.0;
  }

  result = v10 * v9;
  *a6 = result;
  return result;
}

float __vfx_script_theDots43_graph_16212ED8_D4BB_4BC2_BDD7_69D537B91698()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 40);
  v2 = **(arguments_buffer + 32);
  vfx_script_texture_sample1d();
  v4 = 10000.0 * v3;
  v5 = 0.0;
  if (v2 == 2)
  {
    v5 = 1.0;
  }

  result = v4 * v5;
  *v1 = result;
  return result;
}

int32x4_t Init_theDots43_graph_54EAFB11_761C_4522_A4C8_96D05E554BDA(float a1, float a2, __n128 a3, int32x4_t a4, uint64_t a5, uint64_t a6, float *a7, __n128 *a8, int32x4_t *a9)
{
  v9 = *a8;
  v10 = *a9;
  *a7 = fminf(a1, a2);
  a7[1] = fmaxf(a1, a2);
  a3.n128_u32[1] = v9.n128_u32[1];
  a3.n128_u32[2] = v9.n128_u32[2];
  *a8 = a3;
  result = vextq_s8(vzip1q_s32(v10, a4), v10, 4uLL);
  *a9 = result;
  return result;
}

int32x4_t __vfx_script_theDots43_graph_54EAFB11_761C_4522_A4C8_96D05E554BDA()
{
  arguments_buffer = vfx_script_get_arguments_buffer();
  v1 = *(arguments_buffer + 48);
  v2 = *(arguments_buffer + 56);
  v3 = *(arguments_buffer + 64);
  v4 = **(arguments_buffer + 16);
  v5 = **(arguments_buffer + 24);
  LODWORD(v6) = **(arguments_buffer + 32);
  v7.i64[0] = **(arguments_buffer + 40);
  v8 = *v2;
  v9 = *v3;
  *v1 = fminf(v4, v5);
  v1[1] = fmaxf(v4, v5);
  DWORD1(v6) = DWORD1(v8);
  DWORD2(v6) = DWORD2(v8);
  *v2 = v6;
  result = vextq_s8(vzip1q_s32(v9, v7), v9, 4uLL);
  *v3 = result;
  *(v2 + 3) = 1065353216;
  return result;
}

void Update_theDots43_graph_9806A27E_9136_41EF_9897_C1BDF928916A(const void *a1, unsigned int a2, int a3, float *a4)
{
  v4 = 0.0;
  if (a3)
  {
    v4 = 1.0;
  }

  *a4 = v4;
}

uint64_t __vfx_script_theDots43_graph_9806A27E_9136_41EF_9897_C1BDF928916A()
{
  result = vfx_script_get_arguments_buffer();
  v1 = 0.0;
  if (**(result + 16))
  {
    v1 = 1.0;
  }

  **(result + 24) = v1;
  return result;
}

float ParticleInit_theDots43_particleInit_5(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, __int128 *a5, __n128 *a6, __n128 *a7)
{
  v7 = *a5;
  *a6 = a1;
  result = 1.0;
  a2.n128_u32[3] = 1.0;
  *a7 = a2;
  DWORD1(v7) = 0;
  *a5 = v7;
  return result;
}

__n128 ParticleInit_theDots43_particleInit_127(__n128 a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, _OWORD *a7, _OWORD *a8)
{
  v28 = *(a6 + 8);
  v11 = a4 + a3;
  v12 = a4 + a3 + vfx_script_clock_simulation_index();
  v13 = vfx_script_clock_simulation_index();
  v14.i32[0] = v12;
  v14.i32[1] = v11 + v13;
  v15 = vmla_s32(0xF46964429B4474D8, v14, vdup_n_s32(0x2C9277B5u));
  v16 = vmul_s32(veor_s8(vshl_u32(v15, vsub_s32(0x300000003, vshr_n_u32(v15, 0x1CuLL))), v15), vdup_n_s32(0x108EF2D9u));
  __asm { FMOV            V1.2S, #1.0 }

  v22 = vorr_s8(veor_s8(vshl_u32(v16, 0xFFFFFFE1FFFFFFF7), vshl_u32(v16, 0xFFFFFFF7FFFFFFE1)), _D1);
  __asm { FMOV            V1.2S, #-1.0 }

  v27 = vmla_f32(0x3F80000000000000, 0x3ECCCCCC3DCCCCCDLL, vadd_f32(v22, _D1));
  vfx_script_texture_sample1d();
  *a7 = v24;
  *a8 = v24;
  result = a1;
  *&v26 = v27;
  *(&v26 + 1) = __PAIR64__(a1.n128_u32[0], v28);
  *a6 = v26;
  return result;
}

float ParticleInit_theDots43_particleInit_120(float32x4_t a1, float32_t a2, __n128 a3, float a4, __n128 a5, uint64_t a6, int a7, int a8, float32x4_t *a9, __n128 *a10, __int128 *a11, float32x4_t *a12, __n128 *a13)
{
  v47 = *a11;
  v21 = vfx_script_clock_simulation_index();
  v22 = a8 + a7;
  v23 = 277803737 * (((747796405 * (v22 + v21) - 1537097584) >> (((747796405 * (v22 + v21) - 1537097584) >> 28) + 4)) ^ (747796405 * (v22 + v21) - 1537097584));
  v24 = sqrtf(COERCE_FLOAT((v23 >> 31) ^ (v23 >> 9) | 0x3F800000) + -1.0);
  v25 = vfx_script_clock_simulation_index();
  v26 = 277803737 * (((747796405 * (v22 + v25) - 2093082855) >> (((747796405 * (v22 + v25) - 2093082855) >> 28) + 4)) ^ (747796405 * (v22 + v25) - 2093082855));
  v27 = __sincosf_stret((COERCE_FLOAT((v26 >> 31) ^ (v26 >> 9) | 0x3F800000) + -1.0) * 6.2832);
  *&v28 = v24 * v27.__cosval;
  *(&v28 + 1) = v24 * v27.__sinval;
  v29 = a1;
  v29.i32[2] = 0;
  v44 = vmulq_f32(v28, vdupq_n_s32(0x3E99999Au));
  v30 = vaddq_f32(v29, v44);
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.f32[0] = a2;
  v46 = vmulq_f32(_Q1, v30);
  v36 = vfx_script_clock_simulation_index();
  v38 = 0.0;
  if (sqrtf(vaddv_f32(*&vmulq_f32(v44, v44))) > 0.15)
  {
    v38 = a4;
  }

  v39 = v46;
  v39.i32[3] = 1.0;
  *a9 = v39;
  *a12 = v46;
  v40 = a3;
  *a13 = a5;
  v37 = 277803737 * (((747796405 * (v22 + v36) - 2015290331) >> (((747796405 * (v22 + v36) - 2015290331) >> 28) + 4)) ^ (747796405 * (v22 + v36) - 2015290331));
  v40.n128_f32[3] = COERCE_FLOAT((v37 >> 31) ^ (v37 >> 9) | 0x3F800000) + -1.0;
  *a10 = v40;
  v41 = v47;
  *&v41 = v38;
  *a11 = v41;
  return *&v41;
}

double ParticleUpdate_theDots43_particleUpdate_29(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 *a12, float32x4_t *a13, double a14, float a15, float a16, double a17, double a18, double a19, float a20)
{
  v33 = *a12;
  v31 = a5.f32[2];
  a6.i32[2] = 0;
  v23 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a4, a3, a5, 2), a2, *a5.f32, 1), a1, a5.f32[0]), a6);
  v24 = vmulq_f32(v23, v23);
  v30 = (fminf(fmaxf(sqrtf(v24.f32[2] + vaddv_f32(*v24.f32)) / 0.8, 0.0), 1.0) + 0.0) * a7;
  vfx_script_texture_sample1d();
  v32 = vmulq_n_f32(vmulq_n_f32(v25, v30), 1.0 - fminf(fmaxf((v31 - a16) / ((a16 + 0.5) - a16), 0.0), 1.0));
  vfx_script_texture_sample1d();
  v27 = vmulq_f32(v26, v32);
  *a13 = vmlaq_n_f32(v27, vsubq_f32(vmulq_f32(v32, xmmword_2440D5BD0), v27), a20);
  v28 = v33;
  DWORD1(v28) = 0;
  *a12 = v28;
  return *&v28;
}

double ParticleUpdate_theDots43_particleUpdate_107(int32x4_t a1, float32x4_t a2, float a3, float a4, float32x2_t a5, float32x4_t a6, int32x4_t a7, uint64_t a8, uint64_t a9, uint64_t a10, float32x4_t *a11)
{
  a7.i32[0] = vadd_f32(*a1.i8, 0).u32[0];
  __asm { FMOV            V7.2S, #-4.0 }

  *a1.i8 = vmul_f32(*a1.i8, _D7);
  a7.i32[1] = a1.i32[1];
  v15 = vzip1q_s32(a7, a1);
  v15.i32[1] = 0;
  v16 = vsubq_f32(v15, a2);
  v17 = vmulq_f32(v16, v16);
  v17.f32[0] = v17.f32[2] + vaddv_f32(*v17.f32);
  v18 = vdupq_lane_s32(*v17.f32, 0);
  v18.i32[3] = 0;
  v19 = vrsqrteq_f32(v18);
  v20 = vmulq_f32(v19, vrsqrtsq_f32(v18, vmulq_f32(v19, v19)));
  v21 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v17.f32[0] != 0.0)), 0x1FuLL));
  v21.i32[3] = 0;
  v22 = vbslq_s8(vcltzq_s32(v21), vmulq_f32(v16, vmulq_f32(v20, vrsqrtsq_f32(v18, vmulq_f32(v20, v20)))), v16);
  *v21.i32 = a3 - a4;
  v23 = fminf(fmaxf((a3 - a4) / 0.6, 0.0), 1.0);
  v24 = vmulq_n_f32(v22, (v23 * (v23 * (v23 * v23))) * 0.4);
  if (*v21.i32 > 0.0 && a10 == 1)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  v27 = vaddq_f32(a6, vmulq_n_f32(v24, vmuls_lane_f32(v26, a5, 1)));
  v27.i32[1] = 0;
  *a11 = v27;
  return *v27.i64;
}

int8x8_t ParticleUpdate_theDots43_particleUpdate_24(int8x8_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x8_t *a6)
{
  result = vbsl_s8(vceqd_s64(a5, 2), vdup_n_s32(0x3DCCCCCDu), vbsl_s8(vceqd_s64(a5, 1), a1, a2));
  *a6 = result;
  return result;
}

__n128 ParticleUpdate_theDots43_particleUpdate_85(int8x16_t a1, int8x16_t a2, int64x2_t a3, float a4, float a5, float32x4_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int8x16_t *a13, float32x4_t *a14, int8x16_t *a15, float *a16, unsigned int a17, int8x16_t *a18)
{
  v45 = a3;
  v49 = *a18;
  v25.i64[1] = a18->i64[1];
  v25.i64[0] = a11;
  a3.i64[0] = 3;
  v26 = vceqq_s64(v25, a3);
  v27 = vandq_s8(a1, v26);
  v28 = vdupq_lane_s64(v26.i64[0], 0);
  v46 = vbslq_s8(v28, a7, a8);
  v47 = vorrq_s8(v27, vbicq_s8(a2, v28));
  vfx_script_texture_sample1d();
  v43 = v29;
  vfx_script_clock_delta_time();
  v42 = v30;
  vfx_script_clock_delta_time();
  v36.i32[1] = v42;
  __asm { FMOV            V1.2S, #1.0 }

  *v36.i8 = vminnm_f32(vmaxnm_f32(vadd_f32(vext_s8(*v45.i8, *&vextq_s8(v45, v45, 8uLL), 4uLL), vand_s8(vmul_n_f32(vmul_f32(*v36.i8, __PAIR64__(LODWORD(a4), a17)), *&a2.i32[3] + 1.0), vcltz_s32(vshl_n_s32(vdup_n_s32((vmuls_lane_f32(0.3, a2, 3) + a5) > 0.5), 0x1FuLL)))), 0), _D1);
  v37 = vmulq_f32(vmulq_n_f32(v43, 1.0 - *&v36.i32[1]), a6);
  v38 = (1.0 - *v36.i32) * *v45.i32;
  if (!_ZF)
  {
    v38 = 0.0;
  }

  *v36.i8 = vand_s8(*v36.i8, vcltz_s32(vshl_n_s32(vdup_n_s32(a11 == 3), 0x1FuLL)));
  *a14 = v37;
  *a15 = v46;
  *a16 = v38;
  v39 = vextq_s8(vextq_s8(v49, v49, 4uLL), v36, 0xCuLL);
  v39.i32[3] = v49.i32[3];
  *a18 = v39;
  v40 = v47;
  v40.i32[2] = 0;
  *a13 = v40;
  result.n128_u64[0] = v40.i64[0];
  result.n128_u32[2] = v40.u32[2];
  return result;
}

float32x4_t ParticleUpdate_theDots43_particleUpdate_70(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, uint64_t a8, uint64_t a9, __int128 *a10, float32x4_t *a11)
{
  v11 = *a10;
  a6.i32[2] = 0;
  v12 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a4, a3, a5, 2), a2, *a5.f32, 1), a1, a5.f32[0]), a6);
  v13 = vmulq_f32(v12, v12);
  result = vmulq_n_f32(a7, fminf(fmaxf(sqrtf(v13.f32[2] + vaddv_f32(*v13.f32)), 0.0), 1.0));
  *a11 = result;
  DWORD1(v11) = 0;
  *a10 = v11;
  return result;
}

void sub_243F4D7D4(char a1)
{
  LOBYTE(v10) = sub_243FEA57C() & 1;
  v11 = v2;
  v3 = sub_2440D1C40();
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  v7 = [v3 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v7 setOverrideUserInterfaceStyle_];

  if (a1)
  {
    return;
  }

  v8 = [v3 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = v8;
  sub_243F4DD0C();
}

void sub_243F4DA20(char a1)
{
  sub_243FED1CC(v9);
  v2 = sub_2440D1C40();
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  v6 = [v2 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v6 setOverrideUserInterfaceStyle_];

  if (a1)
  {
    return;
  }

  v7 = [v2 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = v7;
  sub_243F4DD0C();
}

id sub_243F4DBB0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_243F4DC10(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243F4DD0C()
{
  v1 = [v0 layer];
  v2 = [v1 disableUpdateMask];

  v3 = [v0 layer];
  [v3 setDisableUpdateMask_];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_243F4DE64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F4E158(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  sub_2440D11D0();
  v5 = sub_2440D11E0();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t sub_243F4E250(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_243F4E2B0()
{
  result = MCGestaltIsInternalBuild();
  byte_27EDC63E0 = result;
  return result;
}

void sub_243F4E308(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_27EDC6698 != -1)
  {
    v33 = a1;
    v34 = a6;
    v35 = a5;
    swift_once();
    a1 = v33;
    a5 = v35;
    a6 = v34;
  }

  v8 = byte_27EDC63E0;
  if (byte_27EDC63E0 & 1) != 0 || (a1)
  {
    v9 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v9 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v41 = a3;
      v42 = a4;
      v10 = a6;
      v11 = a5;

      MEMORY[0x245D57000](8250, 0xE200000000000000);
      MEMORY[0x245D57000](v11, v10);
      a4 = v42;
    }

    else
    {
    }

    swift_unknownObjectRetain();

    oslog = sub_2440D11C0();
    v12 = sub_2440D3490();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v12))
    {
      v37 = v12;
      v38 = a3;
      v13 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v13 = 136446466;
      sub_2440D2F40();
      sub_243F4EF64();
      v14 = sub_2440D3690();
      v16 = v15;

      v17 = sub_243F4ECA0(8uLL, v14, v16);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF0);
      v41 = sub_2440D3040();
      v42 = v24;
      MEMORY[0x245D57000](45, 0xE100000000000000);
      v25 = MEMORY[0x245D56F70](v17, v19, v21, v23);
      v27 = v26;

      MEMORY[0x245D57000](v25, v27);

      v28 = v41;
      v29 = v42;
      v41 = 2715432;
      v42 = 0xE300000000000000;
      if (v8)
      {
        MEMORY[0x245D57000](v28, v29);
      }

      else
      {
        MEMORY[0x245D57080](v28, v29);

        v30 = sub_2440D39C0();
        MEMORY[0x245D57000](v30);
      }

      v31 = sub_243F4E6F8(v41, v42, &v40);

      *(v13 + 4) = v31;
      *(v13 + 12) = 2082;
      v32 = sub_243F4E6F8(v38, a4, &v40);

      *(v13 + 14) = v32;
      _os_log_impl(&dword_243F48000, oslog, v37, "%{public}s.%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D58570](v36, -1, -1);
      MEMORY[0x245D58570](v13, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_243F4E6F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243F4E7C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_243F4F028(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_243F4E7C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_243F4E8D0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2440D3870();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_243F4E8D0(uint64_t a1, unint64_t a2)
{
  v3 = sub_243F4E91C(a1, a2);
  sub_243F4EA4C(&unk_285773080);
  return v3;
}

uint64_t sub_243F4E91C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_243F4EB38(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2440D3870();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2440D3110();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243F4EB38(v10, 0);
        result = sub_2440D3810();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_243F4EA4C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_243F4EBAC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_243F4EB38(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC0500);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_243F4EBAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC0500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_243F4ECA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_2440D30E0();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_2440D31C0();
}

uint64_t sub_243F4ED5C()
{
  sub_2440D2F40();
  sub_243F4EF64();
  v0 = sub_2440D3690();
  v2 = v1;

  v3 = sub_243F4ECA0(8uLL, v0, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF0);
  v23 = sub_2440D3040();
  v24 = v10;
  MEMORY[0x245D57000](45, 0xE100000000000000);
  v11 = MEMORY[0x245D56F70](v3, v5, v7, v9);
  v13 = v12;

  MEMORY[0x245D57000](v11, v13);

  v20 = v23;
  if (qword_27EDC6698 != -1)
  {
    swift_once();
    v20 = v23;
  }

  if (byte_27EDC63E0 == 1)
  {
    v21 = v24;
  }

  else
  {
    MEMORY[0x245D57080](v20, v24, v14, v15, v16, v17, v18, v19);

    v20 = sub_2440D39C0();
  }

  MEMORY[0x245D57000](v20, v21, v14, v15, v16, v17, v18, v19);

  return 2715432;
}

unint64_t sub_243F4EF64()
{
  result = qword_27EDC4A50;
  if (!qword_27EDC4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC4A50);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_243F4F028(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_243F4F0EC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    type metadata accessor for PINButtonModelFactory();
    v2 = sub_2440AB104();
    v3 = sub_243F5D774(v2, v6);
    v4 = (*(**(v0 + 48) + 312))(v3);
    v1 = sub_2440AB1C4(v6, v4, 0);
    __swift_destroy_boxed_opaque_existential_0(v6);
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t (*sub_243F4F1D4(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_243F4F0EC();
  return sub_243F4F21C;
}

uint64_t sub_243F4F22C()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    type metadata accessor for FineRotationManager(0);
    v1 = sub_243F7E4B0();
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t (*sub_243F4F2A4(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_243F4F22C();
  return sub_243F4F2EC;
}

uint64_t sub_243F4F310@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243F4F3CC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t (*sub_243F4F498(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__pinUIIsPresented;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_243F4F61C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243F4F6D8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t (*sub_243F4F7A4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__readingVOInstructions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_243F4F928@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 448))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243F4F9E4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t (*sub_243F4FAB0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__isIssuer;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_243F4FC34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 496))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243F4FCF0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t (*sub_243F4FDBC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__presentAuth;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_243F4FF40@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 544))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243F4FFFC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t (*sub_243F500C8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__showLockOnStatusBar;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_243F5024C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 592))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_243F50308(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t (*sub_243F503D4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__cancelUnlockInstruction;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

__n128 sub_243F50544@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  result = v6;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double sub_243F505D0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 640))(v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_243F5063C(_OWORD *a1)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v3 = a1[3];
  v8[2] = a1[2];
  v8[3] = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1[1];
  v7[4] = *a1;
  v7[5] = v4;
  v5 = a1[3];
  v7[6] = a1[2];
  v7[7] = v5;

  sub_243F5F574(v8, v7, &qword_27EDBFF08);
  return sub_2440D1350();
}

uint64_t sub_243F506E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t sub_243F50780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF10);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_243F508B8()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_didMerchantAuthorize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243F508FC(char a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_didMerchantAuthorize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243F509AC()
{
  v1 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_incomingCallAccepted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243F509F0(char a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_incomingCallAccepted;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243F50AB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_243F50B20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 808))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_243F50BDC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_243F50C48(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F5F634;
}

uint64_t sub_243F50D14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243F50E4C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__presentingPasscode;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5F638;
}

uint64_t sub_243F50FBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2440D1340();

  return v1;
}

uint64_t sub_243F51030@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 880))();
  *a2 = result;
  return result;
}

uint64_t sub_243F51084(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 888);

  return v2(v3);
}

uint64_t sub_243F510E0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2440D1350();
}

uint64_t (*sub_243F51150(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2440D1330();
  return sub_243F511F4;
}

void sub_243F511F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_243F5127C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_2440D1310();
  return swift_endAccess();
}

uint64_t sub_243F512F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF28);
  sub_2440D1320();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_243F5142C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF30);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__authModel;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF28);
  sub_2440D1310();
  swift_endAccess();
  return sub_243F5159C;
}

void sub_243F515A0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_2440D1320();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_2440D1320();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_243F51708@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_bsActionContinuity;
  swift_beginAccess();
  return sub_243F5F574(v1 + v3, a1, &qword_27EDBFF40);
}

uint64_t sub_243F51770(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_bsActionContinuity;
  swift_beginAccess();
  sub_243F517D0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_243F517D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F518B8()
{
  v1 = *v0;
  sub_2440D3B20();
  MEMORY[0x245D57A30](v1);
  return sub_2440D3B50();
}

uint64_t sub_243F5192C()
{
  v1 = *v0;
  sub_2440D3B20();
  MEMORY[0x245D57A30](v1);
  return sub_2440D3B50();
}

uint64_t sub_243F51980(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_243F5D03C(a1, a2);

  return v4;
}

uint64_t sub_243F519E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20]();
  v3 = &v19 - v2;
  v4 = sub_243F4DF68();
  sub_243F5F574(v4, v3, &qword_27EDC0A50);
  v5 = sub_2440D11E0();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    v7 = sub_243F5EED4(v3, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3490();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243F48000, v8, v9, "model destroyed", v10, 2u);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    v7 = (*(v6 + 8))(v3, v5);
  }

  (*(*v1 + 984))(v7);
  swift_unknownObjectRelease();

  v11 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__pinUIIsPresented;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  v13 = *(*(v12 - 8) + 8);
  v13(v1 + v11, v12);
  v13(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__readingVOInstructions, v12);
  v13(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__isIssuer, v12);
  v13(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__presentAuth, v12);
  v13(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__showLockOnStatusBar, v12);
  v13(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__cancelUnlockInstruction, v12);
  v14 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__topBarModel;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF10);
  (*(*(v15 - 8) + 8))(v1 + v14, v15);

  v13(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__presentingPasscode, v12);

  v16 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__authModel;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF28);
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  sub_243F5EED4(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_bsActionContinuity, &qword_27EDBFF40);

  return v1;
}

uint64_t sub_243F51DE8()
{
  sub_243F519E4();

  return swift_deallocClassInstance();
}

void sub_243F51E40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v2 = (MEMORY[0x28223BE20])();
  v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v50 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - v7;
  v53 = sub_243F4DF68();
  sub_243F5F574(v53, v8, &qword_27EDC0A50);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v8, 1, v9);
  v52 = v10;
  if (v12 == 1)
  {
    v13 = sub_243F5EED4(v8, &qword_27EDC0A50);
  }

  else
  {
    v14 = sub_2440D11C0();
    v15 = sub_2440D3490();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_243F48000, v14, v15, "cleaning", v16, 2u);
      MEMORY[0x245D58570](v16, -1, -1);
    }

    v13 = (*(v10 + 8))(v8, v9);
  }

  (*(**(v1 + 64) + 168))(v13);
  v17 = *(v1 + 40);
  v18 = *(**(v17 + 56) + 312);

  v18(v19);

  v21 = *(v1 + 32);
  v22 = *(*v21 + 504);
  v23 = (v22)(v20);
  if (sub_2440B3AD0(v23))
  {
    sub_243F5F574(v53, v6, &qword_27EDC0A50);
    if (v11(v6, 1, v9) == 1)
    {
      v24 = sub_243F5EED4(v6, &qword_27EDC0A50);
    }

    else
    {
      v26 = sub_2440D11C0();
      v27 = sub_2440D3470();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_243F48000, v26, v27, "still active, canceling", v28, 2u);
        MEMORY[0x245D58570](v28, -1, -1);
      }

      v24 = (*(v52 + 8))(v6, v9);
    }

    (*(*v21 + 936))(v24);
    (*(*v21 + 904))(5);
    sub_243F5D774(v17 + 16, v54);
    v29 = v55;
    v30 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v31 = (*(v30 + 56))(v29, v30);
    __swift_destroy_boxed_opaque_existential_0(v54);
    if (v31)
    {
      v32 = *(v1 + 16);
      if (v32)
      {
        v33 = *(*v21 + 944);
        swift_unknownObjectRetain();
        v34 = v33(2, 0);
        v36 = v35;
        v37 = sub_2440D0670();
        sub_243F5D81C(v34, v36);
        [v32 reportPINErrorWithError:30 analyticsData:v37];
LABEL_21:

        swift_unknownObjectRelease();
      }
    }
  }

  else if (*(*(v1 + 48) + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_privacyLock) == 1 && ((*(*v1 + 496))() & 1) != 0 && ((*(*v1 + 760))() & 1) == 0)
  {
    LOBYTE(v54[0]) = v22();
    v57 = 5;
    sub_243F5D720();
    if ((sub_2440D2F50() & 1) == 0)
    {
      v25 = v51;
      sub_243F5F574(v53, v51, &qword_27EDC0A50);
      if (v11(v25, 1, v9) == 1)
      {
        sub_243F5EED4(v25, &qword_27EDC0A50);
      }

      else
      {
        v46 = sub_2440D11C0();
        v47 = sub_2440D3470();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_243F48000, v46, v47, "unauthorized termination during cleanup", v48, 2u);
          MEMORY[0x245D58570](v48, -1, -1);
        }

        (*(v52 + 8))(v25, v9);
      }

      (*(*v1 + 504))(0);
      (*(*v21 + 904))(5);
      v49 = *(v1 + 16);
      if (v49)
      {
        swift_unknownObjectRetain();
        sub_2440D1040();
        v37 = sub_2440D2F80();

        [v49 pinAuthResultWithError:v37 cancelsFlow:1];
        goto LABEL_21;
      }
    }
  }

  v38 = sub_243FA9620();
  swift_beginAccess();
  v39 = *(**v38 + 496);

  v39(v40);

  v41 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper;
  v42 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper);
  if (v42)
  {
    v43 = v42;
    sub_2440ABF24();

    v44 = *(v1 + v41);
    if (v44)
    {
      v45 = v44 + OBJC_IVAR____TtC19ContactlessReaderUI27PrivacyAuthenticatorWrapper_delegate;
      swift_beginAccess();
      *(v45 + 8) = 0;
      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_243F5263C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v2 - 8);
  v68 = &v56 - v3;
  v4 = sub_2440D2C80();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x28223BE20](v4);
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2440D2CA0();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2440D0AC0();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2440D08A0();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0[4];
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = *(*v11 + 256);

  v13(sub_243F5D8A8, v12);

  v14 = sub_243FA9620();
  swift_beginAccess();
  v15 = *v14;
  v16 = *(**v14 + 208);

  v1[2] = v16(v17);
  v18 = swift_unknownObjectRelease();
  v19 = v16(v18);
  v20 = (*(*v11 + 232))(v19);
  v21 = v16(v20);
  if (v21)
  {
    (*(*v21 + 232))(v1);
  }

  v22 = *(*v15 + 488);

  v22(&unk_2440D5FF0, v1);

  v23 = *(*v15 + 472);

  v23(&unk_2440D6000, v1);

  (*(*v1 + 1000))(v24);
  sub_243F541E0();
  v26 = v1[5];
  v25 = v1[6];
  v27 = *(v26 + 56);
  v28 = *(*v25 + 336);

  v30 = v28(v29);
  (*(*v15 + 328))();
  (*(*v27 + 304))(v30 & 1, v10);

  (*(v57 + 8))(v10, v58);
  v31 = *(**(v26 + 56) + 352);

  v31(0);

  v33 = v1[8];
  v34 = (*(*v33 + 152))(v32);
  (*(*v11 + 888))(v34 & 1);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = *(*v33 + 176);

  v36(sub_243F5DB7C, v35);

  LODWORD(v35) = *(v25 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_issuerPIN);
  v38 = (*(*v15 + 304))(v37);
  v39 = v38;
  if (v35 == 1)
  {
    v40 = v59;
    if (v38)
    {
      (*((*MEMORY[0x277D85000] & *v38) + 0xF8))();
    }

    sub_2440D09C0();
  }

  else
  {
    v40 = v59;
    if (v38)
    {
      (*((*MEMORY[0x277D85000] & *v38) + 0x100))(1);
    }

    (*(*v15 + 408))(1);
    sub_2440D0A40();
  }

  sub_2440D0A90();
  (*(v60 + 8))(v40, v61);
  sub_243F5DB84();
  v61 = sub_2440D3530();
  aBlock[4] = sub_243F5DBD0;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor;
  v41 = _Block_copy(aBlock);

  v42 = v62;
  sub_2440D2C90();
  v69 = MEMORY[0x277D84F90];
  sub_243F5E180(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v43 = v64;
  v44 = v67;
  sub_2440D3710();
  v45 = v61;
  MEMORY[0x245D57440](0, v42, v43, v41);
  _Block_release(v41);

  (*(v66 + 8))(v43, v44);
  (*(v63 + 8))(v42, v65);

  v47 = (*(*v25 + 192))(v46);
  v49 = v48;
  v51 = v25[2];
  v50 = v25[3];
  v52 = sub_2440D3390();
  v53 = v68;
  (*(*(v52 - 8) + 56))(v68, 1, 1, v52);
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v1;
  v54[5] = v47;
  v54[6] = v49;
  v54[7] = v51;
  v54[8] = v50;

  sub_243F54830(0, 0, v53, &unk_2440D6018, v54);
}

uint64_t sub_243F5311C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243F531AC;

  return sub_243F532B4();
}

uint64_t sub_243F531AC(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_243F532B4()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF40);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F53394, 0, 0);
}

uint64_t sub_243F53394()
{
  v1 = *(v0 + 40);
  v2 = sub_243F4DF68();
  sub_243F5F574(v2, v1, &qword_27EDC0A50);
  v3 = sub_2440D11E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  if (v5(v1, 1, v3) == 1)
  {
    v6 = sub_243F5EED4(*(v0 + 40), &qword_27EDC0A50);
  }

  else
  {
    v7 = sub_2440D11C0();
    v8 = sub_2440D3490();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_243F48000, v7, v8, "inCallHandler - triggered", v9, 2u);
      MEMORY[0x245D58570](v9, -1, -1);
    }

    v10 = *(v0 + 40);

    v6 = (*(v4 + 8))(v10, v3);
  }

  v11 = *(v0 + 24);
  (*(**(v0 + 16) + 928))(v6);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF38);
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_243F5EED4(v11, &qword_27EDBFF40);
  if (v13 == 1)
  {
    v14 = swift_task_alloc();
    *(v0 + 48) = v14;
    *v14 = v0;
    v14[1] = sub_243F537A8;
    v15 = *(v0 + 16);
    v16 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](v0 + 64, 0, 0, 0x61486C6C61436E69, 0xEF292872656C646ELL, sub_243F5F510, v15, v16);
  }

  else
  {
    v17 = *(v0 + 32);
    sub_243F5F574(v2, v17, &qword_27EDC0A50);
    if (v5(v17, 1, v3) == 1)
    {
      sub_243F5EED4(*(v0 + 32), &qword_27EDC0A50);
    }

    else
    {
      v18 = sub_2440D11C0();
      v19 = sub_2440D3490();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_243F48000, v18, v19, "inCallHandler - bsAction already being processed", v20, 2u);
        MEMORY[0x245D58570](v20, -1, -1);
      }

      v21 = *(v0 + 32);

      (*(v4 + 8))(v21, v3);
    }

    v22 = *(v0 + 8);

    return v22(0);
  }
}

uint64_t sub_243F537A8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_243F53944;
  }

  else
  {
    v2 = sub_243F538BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243F538BC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_243F53944()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_243F539DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3 + 16;
  v5 = sub_243FA9620();
  swift_beginAccess();
  v6 = *(**v5 + 360);

  v6(1);

  sub_2440D2BA0();
  sub_2440D16E0();

  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = [v7 pinViewLoaded];
  }

  v8 = *(a1 + 32);
  result = (*(*v8 + 696))(v7);
  if (result)
  {
    (*(*v8 + 456))(v13);
    if (v13[5])
    {
      return sub_243F5EED4(v13, &qword_27EDBFF68);
    }

    else
    {
      v10 = sub_2440D3390();
      (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = a1;

      sub_243F54830(0, 0, v4, &unk_2440D6460, v11);
    }
  }

  return result;
}

uint64_t sub_243F53C34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF58);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2440D5CF0;
  v7 = sub_243FA9620();
  swift_beginAccess();
  v8 = *(**v7 + 304);

  v10 = v8(v9);

  if (v10)
  {
    (*((*MEMORY[0x277D85000] & *v10) + 0xD0))(v11);

    swift_allocObject();
    swift_weakInit();
    sub_243F5DD50(&qword_27EDBFF60, &qword_27EDBFF50);
    v10 = sub_2440D1370();

    (*(v3 + 8))(v5, v2);
  }

  *(v6 + 32) = v10;
  *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_subscribers) = v6;
}

uint64_t sub_243F53E90(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18[-v3];
  v5 = *a1;
  v6 = sub_243F4DF68();
  sub_243F5F574(v6, v4, &qword_27EDC0A50);
  v7 = sub_2440D11E0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v9 = sub_2440D11C0();
    v10 = sub_2440D3490();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_243F48000, v9, v10, "incoming call", v11, 2u);
      MEMORY[0x245D58570](v11, -1, -1);
    }

    (*(v8 + 8))(v4, v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    if (v5 == 5 || (v18[7] = v5, v18[6] = 0, sub_243F5E0B8(), (sub_2440D2F50() & 1) == 0))
    {
      (*(*v13 + 552))(*(v13[6] + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_privacyLock));
      v17 = *(**(v13[5] + 56) + 248);

      v17(0);
    }

    else
    {
      (*(*v13 + 552))(0);
      v14 = *(**(v13[5] + 56) + 248);

      v14(1);

      v15 = *(**(v13[5] + 56) + 296);

      v15(v16);
    }
  }

  return result;
}

uint64_t sub_243F541E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3];
  type metadata accessor for PINTopBarModelFactory();
  v5 = *(v0 + 48);
  v6 = swift_allocObject();
  swift_weakInit();

  sub_2440C74DC(v5, sub_243F5F310, v6, v15);

  v7 = sub_2440D3390();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_2440D3360();

  sub_243F5F368(v15, v14);
  v8 = sub_2440D3350();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v1;
  v11 = v15[1];
  *(v9 + 40) = v15[0];
  *(v9 + 56) = v11;
  v12 = v15[3];
  *(v9 + 72) = v15[2];
  *(v9 + 88) = v12;
  sub_243F54830(0, 0, v4, &unk_2440D6470, v9);
  sub_243F5F4BC(v15);
}

uint64_t sub_243F543B0(__int16 a1)
{
  v2 = a1;
  if ((a1 & 0x100) == 0)
  {
    v3 = *(v1 + 56);
    v4 = type metadata accessor for AddDigitCommand();
    v7 = v1 + 32;
    v5 = *(v1 + 32);
    v6 = *(v7 + 8);

    v8 = sub_243F9CB14(v6, v5, v2);
    v38 = v4;
    v39 = &off_285775200;
LABEL_9:
    v37[0] = v8;
    (*(*v3 + 96))(v37);
    return __swift_destroy_boxed_opaque_existential_0(v37);
  }

  if (!a1)
  {
    v17 = *(v1 + 16);
    if (v17)
    {
      v18 = *(**(v1 + 32) + 944);
      swift_unknownObjectRetain();
      v19 = v18(1, 0);
      v21 = v20;
      v22 = sub_2440D0670();
      sub_243F5D81C(v19, v21);
      [v17 reportPINErrorWithError:30 analyticsData:v22];

      swift_unknownObjectRelease();
    }

    v23 = *(v1 + 40);
    v24 = *(**(v23 + 56) + 296);

    v26 = v1;
    v24(v25);

    v3 = *(v1 + 56);
    v27 = type metadata accessor for CancelCommand();
    v28 = *(v26 + 32);

    v8 = sub_243F9F2F0(v23, v28);
    v38 = v27;
    v39 = &off_285775240;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v9 = *(v1 + 56);
    v10 = type metadata accessor for SubmitCommand();
    v12 = *(v1 + 32);
    v11 = *(v1 + 40);
    v13 = *(**(v1 + 48) + 408);

    v15 = v13(v14);
    v16 = sub_243F9CB14(v11, v12, v15 & 1);
    v38 = v10;
    v39 = &off_285775230;
  }

  else
  {
    type metadata accessor for MockDaemon();
    if (sub_243F62C7C(56))
    {
      v29 = *(v1 + 32);
      v30 = sub_243F4E2F4();
      return (*(*v29 + 848))(v30);
    }

    v32 = v1;
    v9 = *(v1 + 56);
    v33 = type metadata accessor for RemoveDigitCommand();
    v36 = v32 + 32;
    v35 = *(v32 + 32);
    v34 = *(v36 + 8);

    v16 = sub_243FA146C(v34, v35);
    v38 = v33;
    v39 = &off_285775210;
  }

  v37[0] = v16;
  (*(*v9 + 96))(v37);
  return __swift_destroy_boxed_opaque_existential_0(v37);
}

uint64_t sub_243F546D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  v6 = a5[1];
  *(v5 + 16) = *a5;
  *(v5 + 32) = v6;
  v7 = a5[3];
  *(v5 + 48) = a5[2];
  *(v5 + 64) = v7;
  sub_2440D3360();
  *(v5 + 160) = sub_2440D3350();
  v9 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_243F5477C, v9, v8);
}

uint64_t sub_243F5477C()
{
  v1 = *(v0 + 152);

  swift_getKeyPath();
  swift_getKeyPath();

  sub_243F5F368(v1, v0 + 80);
  sub_2440D1350();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_243F54830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_243F5F574(a3, v25 - v10, &unk_27EDC03E0);
  v12 = sub_2440D3390();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_243F5EED4(v11, &unk_27EDC03E0);
  }

  else
  {
    sub_2440D3380();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2440D3320();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2440D3060() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_243F5EED4(a3, &unk_27EDC03E0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_243F5EED4(a3, &unk_27EDC03E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_243F54B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_243F5F574(a3, v25 - v10, &unk_27EDC03E0);
  v12 = sub_2440D3390();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_243F5EED4(v11, &unk_27EDC03E0);
  }

  else
  {
    sub_2440D3380();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2440D3320();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2440D3060() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFC8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_243F5EED4(a3, &unk_27EDC03E0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_243F5EED4(a3, &unk_27EDC03E0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFC8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_243F54E44(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = v2[6];
  if (*(v5 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_issuerPIN) == 1)
  {
    v6 = (*(*v2 + 328))();
    (*(*v6 + 280))(a1, a2);
  }

  else
  {
    v8 = (*(*v5 + 432))();
    return a1(v8 & 1);
  }
}

uint64_t sub_243F54F54(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(**(result + 32) + 888);

    v7(a1 & 1);

    v9 = (*(*v6[4] + 552))(v8);
    if ((sub_2440B446C(v9 & 1) & 1) == 0 || (a1 & 1) == 0)
    {
    }

    v10 = *(*v6[4] + 456);

    v10(v24, v11);

    if (v24[5])
    {
      sub_243F5EED4(v24, &qword_27EDBFF68);
    }

    v12 = sub_243F4DF68();
    sub_243F5F574(v12, v4, &qword_27EDC0A50);
    v13 = sub_2440D11E0();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v4, 1, v13) == 1)
    {
      sub_243F5EED4(v4, &qword_27EDC0A50);
    }

    else
    {
      v15 = sub_2440D11C0();
      v16 = sub_2440D3490();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_243F48000, v15, v16, "VO activated from AX: exiting", v17, 2u);
        MEMORY[0x245D58570](v17, -1, -1);
      }

      (*(v14 + 8))(v4, v13);
    }

    v18 = v6[7];
    v19 = type metadata accessor for SwitchAXCommand();
    v21 = v6[4];
    v20 = v6[5];

    v22 = sub_243FA14A4(v20, v21, 0);
    v23[3] = v19;
    v23[4] = &off_285775250;
    v23[0] = v22;
    (*(*v18 + 96))(v23);

    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  return result;
}

uint64_t sub_243F552CC()
{
  *(v0 + 24) = sub_2440D3360();
  *(v0 + 32) = sub_2440D3350();
  v2 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_243F55364, v2, v1);
}

uint64_t sub_243F55364()
{
  v1 = *(v0 + 16);

  (*(*v1 + 408))(1);

  return MEMORY[0x2822009F8](sub_243F55400, 0, 0);
}

uint64_t sub_243F55400()
{
  v1 = *(v0[2] + 40);
  v0[5] = v1;
  v2 = *(v1 + 56);
  v0[6] = v2;
  v3 = *(*v2 + 288);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_243F55540;

  return v6(3);
}

uint64_t sub_243F55540()
{

  if (v0)
  {

    v1 = sub_243F5F5F0;
  }

  else
  {

    v1 = sub_243F55688;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_243F55688()
{
  v1 = *(v0[5] + 56);
  v0[8] = v1;
  v2 = *(*v1 + 288);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_243F557C0;

  return v5(0);
}

uint64_t sub_243F557C0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {

    v2 = sub_243F55A5C;
  }

  else
  {

    v2 = sub_243F55908;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243F55908()
{
  v0[11] = v0[10];
  v0[12] = sub_2440D3350();
  v2 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_243F5599C, v2, v1);
}

uint64_t sub_243F5599C()
{

  sub_2440D2BA0();
  sub_2440D16E0();

  return MEMORY[0x2822009F8](sub_243F55A48, 0, 0);
}

uint64_t sub_243F55A5C()
{
  *(v0 + 88) = 0;
  *(v0 + 96) = sub_2440D3350();
  v2 = sub_2440D3320();

  return MEMORY[0x2822009F8](sub_243F5599C, v2, v1);
}

uint64_t sub_243F55AEC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PINViewModel();
  result = sub_2440D12F0();
  *a1 = result;
  return result;
}

uint64_t sub_243F55B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_243F55B4C, 0, 0);
}

uint64_t sub_243F55B4C()
{
  v1 = *(*(v0[3] + 40) + 56);
  v0[4] = v1;
  v2 = *(*v1 + 288);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_243F55C88;

  return v5(0);
}

uint64_t sub_243F55C88()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = sub_243F5F644;
  }

  else
  {

    v2 = sub_243F55DD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_243F55DF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_2440D3390();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_243F54B30(0, 0, v3, &unk_2440D6410, v5);
}

uint64_t sub_243F55F10()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-1] - v3;
  v5 = sub_243F4DF68();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3490();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      *v10 = 136315138;
      v12 = sub_2440D0D70();
      v14 = sub_243F4E6F8(v12, v13, v21);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_243F48000, v8, v9, "errorInDaemon: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x245D58570](v11, -1, -1);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  sub_243F5D774(*(v1 + 40) + 16, v21);
  v15 = v22;
  v16 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v16 + 56))(v15, v16);
  __swift_destroy_boxed_opaque_existential_0(v21);
  v17 = *(v1 + 32);
  v18 = sub_243F4E2F4();
  return (*(*v17 + 848))(v18);
}

uint64_t sub_243F561B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243F56268, 0, 0);
}

uint64_t sub_243F56268()
{
  v1 = v0[18];
  v31 = sub_243F4DF68();
  sub_243F5F574(v31, v1, &qword_27EDC0A50);
  v2 = sub_2440D11E0();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_243F5EED4(v0[18], &qword_27EDC0A50);
  }

  else
  {
    v4 = sub_2440D11C0();
    v5 = sub_2440D3490();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_243F48000, v4, v5, "starting", v6, 2u);
      MEMORY[0x245D58570](v6, -1, -1);
    }

    v7 = v0[18];

    (*(v3 + 8))(v7, v2);
  }

  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  sub_243F5D774(*(v0[12] + 40) + 16, (v0 + 2));
  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v14 = (*(v13 + 8))(v11, v10, v9, v8, v12, v13);
  v15 = v0[12];
  v16 = __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  result = (*(*v15 + 304))(v16);
  v18 = result;
  v19 = *(v14 + 16);
  if (v19 >= 2)
  {

    v20 = v19 - 1;
    v21 = 33;
    do
    {
      v22 = *(v14 + v21);
      v23 = *(**(v18 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_action) + 96);

      v23(v22);

      v24 = *(v18 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_next);
      if (v24)
      {

        v18 = v24;
      }

      ++v21;
      --v20;
    }

    while (v20);
  }

  v25 = *(v18 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_next);
  if (v25)
  {
    if (!*(v14 + 16))
    {
      __break(1u);
      return result;
    }

    v26 = *(v25 + OBJC_IVAR____TtC19ContactlessReaderUI14PINButtonModel_action);
    v27 = *(v14 + 32);

    (*(*v26 + 96))(v27);
  }

  else
  {
  }

  v28 = *(v0[12] + 32);
  v29 = (*(*v28 + 904))(1);
  (*(*v28 + 920))(v29);

  v30 = v0[1];

  return v30();
}

id sub_243F568A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v57 - v3;
  v4 = sub_2440D0AC0();
  v59 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v62 = sub_243F4DF68();
  sub_243F5F574(v62, v14, &qword_27EDC0A50);
  v15 = sub_2440D11E0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, v15) == 1)
  {
    v18 = sub_243F5EED4(v14, &qword_27EDC0A50);
  }

  else
  {
    v58 = v4;
    v19 = v17;
    v20 = sub_2440D11C0();
    v21 = sub_2440D3490();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v57 = v16;
      v23 = v1;
      v24 = v22;
      *v22 = 0;
      _os_log_impl(&dword_243F48000, v20, v21, "closing", v22, 2u);
      v25 = v24;
      v1 = v23;
      v16 = v57;
      MEMORY[0x245D58570](v25, -1, -1);
    }

    v18 = (*(v16 + 8))(v14, v15);
    v17 = v19;
    v4 = v58;
  }

  v26 = v1[4];
  v27 = (*(*v26 + 456))(v66, v18);
  if (v66[5])
  {
    sub_243F5EED4(v66, &qword_27EDBFF68);
    sub_243F5F574(v62, v12, &qword_27EDC0A50);
    if (v17(v12, 1, v15) == 1)
    {
      return sub_243F5EED4(v12, &qword_27EDC0A50);
    }

    else
    {
      v37 = sub_2440D11C0();
      v38 = sub_2440D3470();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_243F48000, v37, v38, "error displayed", v39, 2u);
        MEMORY[0x245D58570](v39, -1, -1);
      }

      return (*(v16 + 8))(v12, v15);
    }
  }

  else
  {
    v29 = v17;
    v58 = v1[6];
    if (*(v58 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_issuerPIN) == 1)
    {
      sub_2440D09B0();
      sub_2440D0AA0();
      v27 = (v59[1])(v6, v4);
    }

    (*(*v26 + 936))(v27);
    v59 = v1;
    v30 = v1[5];
    v31 = *(**(v30 + 56) + 296);

    v31(v32);

    v34 = (*(*v26 + 504))(v33);
    v35 = sub_2440B3AD0(v34);
    if (v35)
    {
      v36 = v61;
      sub_243F5F574(v62, v61, &qword_27EDC0A50);
      if (v29(v36, 1, v15) == 1)
      {
        sub_243F5EED4(v36, &qword_27EDC0A50);
      }

      else
      {
        v40 = sub_2440D11C0();
        v41 = sub_2440D3490();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_243F48000, v40, v41, "still active, canceling", v42, 2u);
          v43 = v42;
          v36 = v61;
          MEMORY[0x245D58570](v43, -1, -1);
        }

        (*(v16 + 8))(v36, v15);
      }

      v44 = sub_2440D3390();
      v45 = v60;
      (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
      v46 = swift_allocObject();
      v46[2] = 0;
      v46[3] = 0;
      v46[4] = v59;

      sub_243F54830(0, 0, v45, &unk_2440D6050, v46);

      sub_243F5D774(v30 + 16, v63);
      v47 = v64;
      v48 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      LOBYTE(v47) = (*(v48 + 56))(v47, v48);
      v35 = __swift_destroy_boxed_opaque_existential_0(v63);
      if (v47)
      {
        v49 = v59[2];
        if (v49)
        {
          v50 = *(*v26 + 944);
          swift_unknownObjectRetain();
          v51 = v50(2, 0);
          v53 = v52;
          v54 = sub_2440D0670();
          sub_243F5D81C(v51, v53);
          [v49 reportPINErrorWithError:30 analyticsData:v54];

          v35 = swift_unknownObjectRelease();
        }
      }
    }

    v55 = (*(*v26 + 896))(v35);
    if (*(v58 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_privacyLock) == 1)
    {
      v56 = v59;
      if ((*(*v59 + 784))(v55) & 1) != 0 && (sub_243FC13CC())
      {
        if (((*(*v56 + 496))() & 1) == 0)
        {
          sub_243F5736C();
        }

        sub_243F5751C();
      }

      else
      {
        sub_243F5736C();
      }

      result = v56[2];
      if (result)
      {
        return [result pinAuthNeeded];
      }
    }

    else
    {
      return sub_243F57D4C();
    }
  }

  return result;
}

uint64_t sub_243F57154()
{
  v3 = (*(**(*(v0 + 16) + 32) + 872) + **(**(*(v0 + 16) + 32) + 872));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_243F57278;

  return v3(1);
}

uint64_t sub_243F57278()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243F5736C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_243F4E0C8();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v8 = sub_243F4E2F4();
    v9 = sub_243F4E2FC();
    sub_243F4E308(v8 & 1, v1, 0xD000000000000011, 0x80000002440E89F0, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  sub_2440D1180();

  sub_2440D1160();
}

uint64_t sub_243F5751C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF40);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  v12 = sub_2440D2C80();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x28223BE20](v12);
  v48 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2440D2CA0();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v53 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  v45 = sub_243F4E0C8();
  sub_243F5F574(v45, v19, &qword_27EDC0A50);
  v20 = sub_2440D11E0();
  v21 = *(v20 - 8);
  v44 = *(v21 + 48);
  if (v44(v19, 1, v20) == 1)
  {
    sub_243F5EED4(v19, &qword_27EDC0A50);
  }

  else
  {
    v52 = v11;
    v42 = v3;
    v22 = v21;
    v23 = sub_243F4E2F4();
    v24 = sub_243F4E2FC();
    v43 = v20;
    v25 = v23 & 1;
    v21 = v22;
    v3 = v42;
    v11 = v52;
    sub_243F4E308(v25, v1, 0xD00000000000001DLL, 0x80000002440E8700, v24, v26);
    v20 = v43;

    (*(v21 + 8))(v19, v20);
  }

  if (*(v1[6] + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_privacyLock) == 1)
  {
    if (*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_evaluating))
    {
      v51 = v21;
      v27 = v53;
      sub_243F5F574(v45, v53, &qword_27EDC0A50);
      if (v44(v27, 1, v20) == 1)
      {
        sub_243F5EED4(v27, &qword_27EDC0A50);
      }

      else
      {
        v52 = v11;
        v34 = sub_2440D11C0();
        v35 = sub_2440D3490();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = v9;
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_243F48000, v34, v35, "PrivacyLock: Evaluating already", v37, 2u);
          v38 = v37;
          v9 = v36;
          v27 = v53;
          MEMORY[0x245D58570](v38, -1, -1);
        }

        (*(v51 + 8))(v27, v20);
        v11 = v52;
      }

      v39 = sub_243F59E00();
      (*(*v1 + 928))(v39);
      if ((*(v3 + 48))(v11, 1, v2))
      {
        sub_243F5EED4(v11, &qword_27EDBFF40);
      }

      else
      {
        (*(v3 + 16))(v5, v11, v2);
        sub_243F5EED4(v11, &qword_27EDBFF40);
        sub_243F5DF24();
        v40 = swift_allocError();
        *v41 = 0;
        aBlock[0] = v40;
        sub_2440D3330();
        (*(v3 + 8))(v5, v2);
      }

      (*(v3 + 56))(v9, 1, 1, v2);
      return (*(*v1 + 936))(v9);
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_evaluating) = 1;
      sub_243F5DB84();
      v29 = sub_2440D3530();
      aBlock[4] = sub_243F5DF20;
      aBlock[5] = v1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243F5F604;
      aBlock[3] = &block_descriptor_73;
      v30 = _Block_copy(aBlock);

      v31 = v46;
      sub_2440D2C90();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_243F5E180(&qword_27EDC0510, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
      sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
      v32 = v48;
      v33 = v51;
      sub_2440D3710();
      MEMORY[0x245D57440](0, v31, v32, v30);
      _Block_release(v30);

      (*(v50 + 8))(v32, v33);
      return (*(v47 + 8))(v31, v49);
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_evaluating) = 0;
    return sub_243F57D4C();
  }
}

uint64_t sub_243F57D4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF38);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v34 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF40);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = &v34 - v7;
  v8 = sub_2440D2C80();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2440D2CA0();
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  v17 = sub_243F4DF68();
  sub_243F5F574(v17, v16, &qword_27EDC0A50);
  v18 = sub_2440D11E0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    v20 = sub_243F5EED4(v16, &qword_27EDC0A50);
  }

  else
  {
    v21 = sub_2440D11C0();
    v22 = sub_2440D3490();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_243F48000, v21, v22, "finish closing", v23, 2u);
      MEMORY[0x245D58570](v23, -1, -1);
    }

    v20 = (*(v19 + 8))(v16, v18);
  }

  if ((*(*v1 + 784))(v20))
  {
    (*(*v1 + 792))(0);
  }

  sub_243F5DB84();
  v24 = sub_2440D3530();
  aBlock[4] = sub_243F5ED74;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_131;
  v25 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F5E180(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v13, v10, v25);
  _Block_release(v25);

  (*(v37 + 8))(v10, v8);
  v26 = (*(v35 + 8))(v13, v36);
  v27 = v38;
  (*(*v1 + 928))(v26);
  v29 = v40;
  v28 = v41;
  if ((*(v40 + 48))(v27, 1, v41))
  {
    sub_243F5EED4(v27, &qword_27EDBFF40);
  }

  else
  {
    v30 = v34;
    (*(v29 + 16))(v34, v27, v28);
    sub_243F5EED4(v27, &qword_27EDBFF40);
    LOBYTE(aBlock[0]) = 1;
    sub_2440D3340();
    (*(v29 + 8))(v30, v28);
  }

  v31 = v39;
  (*(v29 + 56))(v39, 1, 1, v28);
  (*(*v1 + 936))(v31);
  v32 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock;
  if (*(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock))
  {

    sub_2440D2CF0();
  }

  *(v1 + v32) = 0;
}

uint64_t sub_243F5848C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_243F584D0()
{
  v1 = v0;
  v2 = sub_2440D2C80();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2440D2CA0();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_243F4DF68();
  sub_243F5F574(v11, v10, &qword_27EDC0A50);
  v12 = sub_2440D11E0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    v14 = sub_243F5EED4(v10, &qword_27EDC0A50);
  }

  else
  {
    v15 = sub_2440D11C0();
    v16 = sub_2440D3490();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_243F48000, v15, v16, "closing immediately", v17, 2u);
      MEMORY[0x245D58570](v17, -1, -1);
    }

    v14 = (*(v13 + 8))(v10, v12);
  }

  ((*v1)[123])(v14);
  sub_243F5DB84();
  v18 = sub_2440D3530();
  aBlock[4] = sub_243F5DF78;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_76;
  v19 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F5E180(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v7, v4, v19);
  _Block_release(v19);

  (*(v28 + 8))(v4, v2);
  v20 = (*(v26 + 8))(v7, v27);
  (*(*v1[4] + 896))(v20);
  v21 = sub_243FA9620();
  swift_beginAccess();
  v22 = *(**v21 + 536);

  v22(v23);
}

uint64_t sub_243F589E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_243F58A2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_243F4DF68();
  sub_243F5F574(v5, v4, &qword_27EDC0A50);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v8 = sub_243F5EED4(v4, &qword_27EDC0A50);
  }

  else
  {
    v9 = sub_2440D11C0();
    v10 = sub_2440D3490();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_243F48000, v9, v10, "closed", v11, 2u);
      MEMORY[0x245D58570](v11, -1, -1);
    }

    v8 = (*(v7 + 8))(v4, v6);
  }

  result = (*(*v1 + 984))(v8);
  if (*(v1[6] + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_issuerPIN) == 1)
  {
    v13 = sub_243FA9620();
    swift_beginAccess();
    v14 = *(**v13 + 536);

    v14(v15);
  }

  return result;
}

uint64_t sub_243F58C80(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_2440D0AC0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC03E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v50 = sub_243F4DF68();
  sub_243F5F574(v50, v14, &qword_27EDC0A50);
  v15 = sub_2440D11E0();
  v16 = *(v15 - 8);
  v49 = *(v16 + 48);
  if (v49(v14, 1, v15) == 1)
  {
    v17 = sub_243F5EED4(v14, &qword_27EDC0A50);
  }

  else
  {
    v48 = v9;
    v18 = sub_2440D11C0();
    v19 = sub_2440D3490();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v45 = v16;
      v21 = v20;
      v22 = swift_slowAlloc();
      v47 = v4;
      v44 = v22;
      v53 = v22;
      *v21 = 136446210;
      v23 = sub_2440D0BE0();
      v46 = v2;
      v25 = v6;
      v26 = v3;
      v27 = sub_243F4E6F8(v23, v24, &v53);
      v2 = v46;

      *(v21 + 4) = v27;
      v3 = v26;
      v6 = v25;
      _os_log_impl(&dword_243F48000, v18, v19, "sessionEvent: %{public}s", v21, 0xCu);
      v28 = v44;
      __swift_destroy_boxed_opaque_existential_0(v44);
      v4 = v47;
      MEMORY[0x245D58570](v28, -1, -1);
      v29 = v21;
      v16 = v45;
      MEMORY[0x245D58570](v29, -1, -1);
    }

    v17 = (*(v16 + 8))(v14, v15);
    v9 = v48;
  }

  v30 = *(v2 + 32);
  v31 = (*(*v30 + 504))(v17);
  if (!sub_243FA1978(v31, 5))
  {
    switch(v52)
    {
      case 2:
        v42 = 0x206E6F6973736573;
        v43 = 0xEF64696C61766E69;
        break;
      case 1:
        v38 = (*(*v30 + 280))();
        if (v38)
        {
          v39 = v38;
          v40 = sub_2440D3390();
          (*(*(v40 - 8) + 56))(v9, 1, 1, v40);
          v41 = swift_allocObject();
          v41[2] = 0;
          v41[3] = 0;
          v41[4] = v2;
          v41[5] = v39;

          sub_243F54830(0, 0, v9, &unk_2440D6068, v41);

          goto LABEL_22;
        }

        v42 = 0x20676E697373696DLL;
        v43 = 0xEC00000061746164;
        break;
      case 0:
        (*(*v30 + 856))();
LABEL_22:
        sub_2440D09E0();
        sub_2440D0A90();
        return (*(v4 + 8))(v6, v3);
      default:
        v42 = 0x206E776F6E6B6E75;
        v43 = 0xED0000746E657665;
        break;
    }

    sub_243F59278(v42, v43);
    goto LABEL_22;
  }

  v32 = v51;
  sub_243F5F574(v50, v51, &qword_27EDC0A50);
  if (v49(v32, 1, v15) == 1)
  {
    return sub_243F5EED4(v32, &qword_27EDC0A50);
  }

  v34 = v16;
  v35 = sub_2440D11C0();
  v36 = sub_2440D3470();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_243F48000, v35, v36, "sessionEvent: canceled", v37, 2u);
    MEMORY[0x245D58570](v37, -1, -1);
  }

  return (*(v34 + 8))(v32, v15);
}

uint64_t sub_243F59278(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_243F4DF68();
  sub_243F5F574(v9, v8, &qword_27EDC0A50);
  v10 = sub_2440D11E0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_243F5EED4(v8, &qword_27EDC0A50);
  }

  else
  {

    v12 = sub_2440D11C0();
    v13 = sub_2440D3470();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_243F4E6F8(a1, a2, &v20);
      _os_log_impl(&dword_243F48000, v12, v13, "%{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245D58570](v15, -1, -1);
      MEMORY[0x245D58570](v14, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  v16 = *(v3 + 32);
  (*(*v16 + 288))(0);
  v17 = sub_243F4E2F4();
  return (*(*v16 + 848))(v17);
}

uint64_t sub_243F5950C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a3);
}

uint64_t sub_243F59564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_243F59584, 0, 0);
}

uint64_t sub_243F59584()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[3];
    v4 = *(**(v1 + 32) + 944);
    swift_unknownObjectRetain();
    v5 = v4(0, 1);
    v7 = v6;
    v8 = sub_2440D0670();
    sub_243F5D81C(v5, v7);
    [v2 pinDataReceivedWithPinData:v3 analyticsData:v8];
    swift_unknownObjectRelease();

    v1 = v0[2];
  }

  v9 = *(v1 + 32);
  (*(*v9 + 288))(0);
  v12 = (*(*v9 + 864) + **(*v9 + 864));
  v10 = swift_task_alloc();
  v0[4] = v10;
  *v10 = v0;
  v10[1] = sub_243F59780;

  return v12();
}

uint64_t sub_243F59780()
{

  return MEMORY[0x2822009F8](sub_243F5987C, 0, 0);
}

uint64_t sub_243F5987C()
{
  v1 = *sub_244070AF8();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_243F59918;

  return MEMORY[0x282200480](v1);
}

uint64_t sub_243F59918()
{

  if (v0)
  {

    v1 = sub_243F5F5F4;
  }

  else
  {
    v1 = sub_243F59A30;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_243F59A30()
{
  [*(v0 + 16) closeUI];
  v1 = *(v0 + 8);

  return v1();
}

id sub_243F59A98(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  (*(*a2 + 792))(1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF38);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = (*(*a2 + 936))(v9);
  if ((*(*a2 + 496))(v12))
  {
    sub_243F5751C();
    v13 = sub_243F4DF68();
    sub_243F5F574(v13, v6, &qword_27EDC0A50);
    v14 = sub_2440D11E0();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      return sub_243F5EED4(v6, &qword_27EDC0A50);
    }

    else
    {
      v17 = sub_2440D11C0();
      v18 = sub_2440D3490();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_243F48000, v17, v18, "inCallHandler - privacyAuthenticateIfNeeded returned", v19, 2u);
        MEMORY[0x245D58570](v19, -1, -1);
      }

      return (*(v15 + 8))(v6, v14);
    }
  }

  else
  {
    (*(*a2 + 600))(1);
    return [a2 closeUI];
  }
}

uint64_t sub_243F59E00()
{
  v1 = sub_2440D2CD0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = sub_2440D2C80();
  MEMORY[0x28223BE20](v14);
  v15 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock;
  if (*(v0 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock))
  {
    v16 = sub_243F4E0C8();
    sub_243F5F574(v16, v11, &qword_27EDC0A50);
    v17 = sub_2440D11E0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v11, 1, v17) == 1)
    {
      return sub_243F5EED4(v11, &qword_27EDC0A50);
    }

    else
    {
      v25 = sub_2440D11C0();
      v26 = sub_2440D3490();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_243F48000, v25, v26, "PrivacyLock: Evaluating lock release already scheduled", v27, 2u);
        MEMORY[0x245D58570](v27, -1, -1);
      }

      return (*(v18 + 8))(v11, v17);
    }
  }

  else
  {
    v39 = v5;
    v40 = v7;
    v41 = v2;
    v42 = v1;
    v20 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_243F5ECD0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243F5F604;
    aBlock[3] = &block_descriptor_127;
    v38 = _Block_copy(aBlock);
    v43 = MEMORY[0x277D84F90];
    sub_243F5E180(&qword_27EDC0510, MEMORY[0x277D85198]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
    sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
    sub_2440D3710();
    sub_2440D2D00();
    swift_allocObject();
    v21 = sub_2440D2CE0();

    *(v0 + v15) = v21;

    v22 = sub_243F4E0C8();
    sub_243F5F574(v22, v13, &qword_27EDC0A50);
    v23 = sub_2440D11E0();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v13, 1, v23) == 1)
    {
      sub_243F5EED4(v13, &qword_27EDC0A50);
    }

    else
    {
      v28 = sub_2440D11C0();
      v29 = sub_2440D3490();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_243F48000, v28, v29, "PrivacyLock: Scheduling evaluating lock release", v30, 2u);
        MEMORY[0x245D58570](v30, -1, -1);
      }

      (*(v24 + 8))(v13, v23);
    }

    v32 = v40;
    v31 = v41;
    v33 = v39;
    sub_243F5DB84();
    v34 = sub_2440D3530();
    sub_2440D2CC0();
    sub_2440D2D20();
    v35 = *(v31 + 8);
    v36 = v33;
    v37 = v42;
    v35(v36, v42);
    sub_2440D3510();

    return (v35)(v32, v37);
  }
}

uint64_t sub_243F5A3FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = sub_243F4E0C8();
  sub_243F5F574(v8, v7, &qword_27EDC0A50);
  v9 = sub_2440D11E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    v12 = sub_243F5EED4(v7, &qword_27EDC0A50);
  }

  else
  {
    v13 = v10;
    v14 = sub_243F4E2F4();
    v15 = sub_243F4E2FC();
    v28 = v9;
    v16 = v14 & 1;
    v10 = v13;
    sub_243F4E308(v16, v1, 0xD000000000000011, 0x80000002440E8720, v15, v17);
    v9 = v28;

    v12 = (*(v13 + 8))(v7, v9);
  }

  v18 = (*(*v1 + 880))(v12);
  if (v18)
  {
    v19 = v18;
    (*(*v18 + 120))(0);
    type metadata accessor for PrivacyAuthenticatorWrapper();

    v20 = sub_2440ABBD4(v19, v1, &off_2857732B0);
    v21 = *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper);
    *(v1 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper) = v20;
    v22 = v20;

    sub_2440AC3A4();
  }

  else
  {
    sub_243F5F574(v8, v5, &qword_27EDC0A50);
    if (v11(v5, 1, v9) == 1)
    {
      return sub_243F5EED4(v5, &qword_27EDC0A50);
    }

    else
    {
      v24 = sub_2440D11C0();
      v25 = sub_2440D3490();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_243F48000, v24, v25, "No auth model", v26, 2u);
        MEMORY[0x245D58570](v26, -1, -1);
      }

      return (*(v10 + 8))(v5, v9);
    }
  }
}

uint64_t sub_243F5A768()
{
  v1 = v0;
  v2 = sub_2440D2C80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2440D2CA0();
  v19 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v0 + 48) + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_privacyLock) == 1)
  {
    v10 = sub_243FA9620();
    swift_beginAccess();
    v11 = *(**v10 + 304);

    v13 = v11(v12);

    if (!v13 || (v15 = (*((*MEMORY[0x277D85000] & *v13) + 0xB8))(v14), v13, v15 == 5) || (LOBYTE(aBlock[0]) = v15, v20 = 0, sub_243F5E0B8(), result = sub_2440D2F50(), (result & 1) == 0))
    {
      sub_243F5DB84();
      v18 = sub_2440D3530();
      aBlock[4] = sub_243F5E088;
      aBlock[5] = v1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243F5F604;
      aBlock[3] = &block_descriptor_83;
      v16 = _Block_copy(aBlock);

      sub_2440D2C90();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_243F5E180(&qword_27EDC0510, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
      sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
      sub_2440D3710();
      v17 = v18;
      MEMORY[0x245D57440](0, v9, v5, v16);
      _Block_release(v16);

      (*(v3 + 8))(v5, v2);
      return (*(v19 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_243F5AB3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11[-v1];
  v3 = sub_243F4E0C8();
  sub_243F5F574(v3, v2, &qword_27EDC0A50);
  v4 = sub_2440D11E0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_243F5EED4(v2, &qword_27EDC0A50);
  }

  else
  {
    v6 = sub_2440D11C0();
    v7 = sub_2440D3490();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_243F48000, v6, v7, "PrivacyLock: release evaluating work item triggered", v8, 2u);
      MEMORY[0x245D58570](v8, -1, -1);
    }

    (*(v5 + 8))(v2, v4);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_evaluating) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock) = 0;
  }

  return result;
}

uint64_t sub_243F5AD58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x64656C65636E6163;
  v5 = 0xED00007070417942;
  v6 = 0xE800000000000000;
  v7 = 0x6B6361626C6C6166;
  if (a1 != 4)
  {
    v7 = 0x65766F6365726E75;
    v6 = 0xED0000656C626172;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x6164696C61766E69;
  v9 = 0xEB00000000646574;
  if (a1 != 1)
  {
    v8 = 0x64656C65636E6163;
    v9 = 0xEE00726573557942;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x73736563637573;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0x64656C65636E6163;
      v14 = 0x7070417942;
    }

    else
    {
      if (a2 == 4)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6B6361626C6C6166)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      v13 = 0x65766F6365726E75;
      v14 = 0x656C626172;
    }

    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v10 != v13)
    {
LABEL_34:
      v15 = sub_2440D3A10();
      goto LABEL_35;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEB00000000646574;
      if (v10 != 0x6164696C61766E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00726573557942;
      if (v10 != 0x64656C65636E6163)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x73736563637573)
    {
      goto LABEL_34;
    }
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v15 = 1;
LABEL_35:

  return v15 & 1;
}

uint64_t sub_243F5AF94()
{
  sub_2440D3B20();
  sub_2440D30B0();

  return sub_2440D3B50();
}

uint64_t sub_243F5B0C8()
{
  sub_2440D30B0();
}

uint64_t sub_243F5B1EC()
{
  sub_2440D3B20();
  sub_2440D30B0();

  return sub_2440D3B50();
}

uint64_t sub_243F5B31C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243F5E10C();
  *a1 = result;
  return result;
}

void sub_243F5B34C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x73736563637573;
  v5 = 0xED00007070417942;
  v6 = 0x64656C65636E6163;
  v7 = 0xE800000000000000;
  v8 = 0x6B6361626C6C6166;
  if (v2 != 4)
  {
    v8 = 0x65766F6365726E75;
    v7 = 0xED0000656C626172;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000646574;
  v10 = 0x6164696C61766E69;
  if (v2 != 1)
  {
    v10 = 0x64656C65636E6163;
    v9 = 0xEE00726573557942;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

void sub_243F5B438(int a1, int a2, void *a3)
{
  v4 = v3;
  v68 = a2;
  v69 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v67 = &v60 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  v17 = sub_243F4E0C8();
  sub_243F5F574(v17, v16, &qword_27EDC0A50);
  v18 = sub_2440D11E0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v16, 1, v18) != 1)
  {
    v65 = v20;
    v66 = v9;
    v24 = sub_2440D11C0();
    v25 = sub_2440D3490();
    if (os_log_type_enabled(v24, v25))
    {
      v62 = v19;
      v63 = v18;
      v64 = a3;
      v26 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v70 = v61;
      v27 = v68;
      v28 = 0xE700000000000000;
      v29 = 0x73736563637573;
      v30 = 0xED00007070417942;
      *v26 = 136315138;
      v31 = 0x64656C65636E6163;
      v32 = 0xE800000000000000;
      v33 = 0x6B6361626C6C6166;
      if (v27 != 4)
      {
        v33 = 0x65766F6365726E75;
        v32 = 0xED0000656C626172;
      }

      if (v27 != 3)
      {
        v31 = v33;
        v30 = v32;
      }

      v34 = 0xEB00000000646574;
      v35 = 0x6164696C61766E69;
      if (v27 != 1)
      {
        v35 = 0x64656C65636E6163;
        v34 = 0xEE00726573557942;
      }

      if (v27)
      {
        v29 = v35;
        v28 = v34;
      }

      if (v27 <= 2)
      {
        v36 = v29;
      }

      else
      {
        v36 = v31;
      }

      if (v27 <= 2)
      {
        v37 = v28;
      }

      else
      {
        v37 = v30;
      }

      v38 = sub_243F4E6F8(v36, v37, &v70);

      *(v26 + 4) = v38;
      _os_log_impl(&dword_243F48000, v24, v25, "PrivacyLock: didComplete with %s", v26, 0xCu);
      v39 = v61;
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x245D58570](v39, -1, -1);
      MEMORY[0x245D58570](v26, -1, -1);

      v18 = v63;
      a3 = v64;
      v19 = v62;
    }

    else
    {
    }

    v21 = (*(v19 + 8))(v16, v18);
    v20 = v65;
    v9 = v66;
    if ((v69 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_29:
    sub_243F5F574(v17, v14, &qword_27EDC0A50);
    if (v20(v14, 1, v18) == 1)
    {
      sub_243F5EED4(v14, &qword_27EDC0A50);
    }

    else
    {
      v40 = sub_2440D11C0();
      v41 = sub_2440D3490();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_243F48000, v40, v41, "didComplete success", v42, 2u);
        MEMORY[0x245D58570](v42, -1, -1);
      }

      (*(v19 + 8))(v14, v18);
    }

    (*(*v4 + 768))(1);
    v43 = *(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper);
    if (v43)
    {
      v44 = v43;
      sub_2440ABF24();
    }

    *(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_evaluating) = 0;
    sub_243F5BCBC(a3);
    v45 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock;
    if (*(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock))
    {

      sub_2440D2CF0();
    }

    *(v4 + v45) = 0;

    sub_243F57D4C();
    return;
  }

  v21 = sub_243F5EED4(v16, &qword_27EDC0A50);
  if (v69)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (v68 == 5)
  {
    v47 = *(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper);
    if (v47)
    {
      v48 = v47;
      sub_2440ABF24();
    }

    sub_243F57D4C();
    goto LABEL_54;
  }

  if (v68 != 4)
  {
    if (v68 == 2)
    {
      if (((*(*v4 + 784))(v21) & 1) != 0 && ((*(*v4 + 496))() & 1) == 0)
      {
        sub_243F5736C();
      }

      v22 = *(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper);
      if (v22)
      {
        v23 = v22;
        sub_2440AC11C();
      }
    }

    else
    {
      sub_243F5F574(v17, v9, &qword_27EDC0A50);
      if (v20(v9, 1, v18) == 1)
      {
        sub_243F5EED4(v9, &qword_27EDC0A50);
      }

      else
      {
        v54 = sub_2440D11C0();
        v55 = sub_2440D3490();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = v9;
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_243F48000, v54, v55, "didComplete default handling", v57, 2u);
          v58 = v57;
          v9 = v56;
          MEMORY[0x245D58570](v58, -1, -1);
        }

        (*(v19 + 8))(v9, v18);
      }
    }

LABEL_54:
    *(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_evaluating) = 0;
    v59 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock;
    if (*(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock))
    {

      sub_2440D2CF0();
    }

    *(v4 + v59) = 0;

    sub_243F5BCBC(a3);
    return;
  }

  if (((*(*v4 + 496))(v21) & 1) == 0)
  {
    sub_243F5736C();
  }

  v46 = v67;
  sub_243F5F574(v17, v67, &qword_27EDC0A50);
  if (v20(v46, 1, v18) == 1)
  {
    sub_243F5EED4(v46, &qword_27EDC0A50);
  }

  else
  {
    v49 = sub_243F4E2F4();
    v50 = sub_243F4E2FC();
    sub_243F4E308(v49 & 1, v4, 0xD000000000000014, 0x80000002440E8740, v50, v51);

    (*(v19 + 8))(v46, v18);
  }

  (*(*v4 + 816))(1);
  v52 = *(v4 + OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper);
  if (v52)
  {
    v53 = v52;
    sub_2440AE9E8();
  }
}

void sub_243F5BCBC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v45 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  v48 = sub_243F4E0C8();
  sub_243F5F574(v48, v12, &qword_27EDC0A50);
  v13 = sub_2440D11E0();
  v14 = *(v13 - 8);
  v47 = *(v14 + 48);
  if (v47(v12, 1, v13) == 1)
  {
    sub_243F5EED4(v12, &qword_27EDC0A50);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v24 = *(v2 + 16);
    if (v24)
    {
      [v24 pinAuthResultWithError:0 cancelsFlow:0];
    }

    return;
  }

  v46 = a1;
  v21 = sub_243F4E2F4();
  v22 = sub_243F4E2FC();
  a1 = v46;
  sub_243F4E308(v21 & 1, v2, 0xD000000000000012, 0x80000002440E8760, v22, v23);

  (*(v14 + 8))(v12, v13);
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v50 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38F0);
  type metadata accessor for LAError(0);
  if (swift_dynamicCast())
  {
    v16 = v14;
    v17 = v49;
    sub_244058890();
    if (v18)
    {
      v19 = *(v2 + 16);
      if (v19)
      {
        swift_unknownObjectRetain();
        v20 = sub_2440D2F80();

        [v19 pinAuthResultWithError:v20 cancelsFlow:0];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }

    sub_243F5F574(v48, v10, &qword_27EDC0A50);
    if (v47(v10, 1, v13) == 1)
    {

      v28 = v10;
      goto LABEL_16;
    }

    v36 = v17;
    v37 = v10;
    v38 = sub_2440D11C0();
    v39 = sub_2440D3470();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v36;
      v50 = v41;
      *v40 = 136315138;
      sub_243F5E180(&unk_27EDC5CC0, type metadata accessor for LAError);
      v42 = sub_2440D3AB0();
      v44 = sub_243F4E6F8(v42, v43, &v50);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_243F48000, v38, v39, "Could not parse LAError error: [%s]", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x245D58570](v41, -1, -1);
      MEMORY[0x245D58570](v40, -1, -1);
    }

    else
    {
    }

    (*(v16 + 8))(v37, v13);
  }

  else
  {
    swift_getErrorValue();
    v25 = sub_2440D3AB0();
    v27 = v26;
    sub_243F5F574(v48, v7, &qword_27EDC0A50);
    if (v47(v7, 1, v13) == 1)
    {

      v28 = v7;
LABEL_16:
      sub_243F5EED4(v28, &qword_27EDC0A50);
      return;
    }

    v29 = sub_2440D11C0();
    v30 = sub_2440D3470();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v7;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50 = v33;
      *v32 = 136315138;
      v34 = sub_243F4E6F8(v25, v27, &v50);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_243F48000, v29, v30, "Could not cast error to LAError: [%s]", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x245D58570](v33, -1, -1);
      v35 = v32;
      v7 = v31;
      MEMORY[0x245D58570](v35, -1, -1);
    }

    else
    {
    }

    (*(v14 + 8))(v7, v13);
  }
}

uint64_t sub_243F5C2C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF40);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v15 = sub_243F4E0C8();
  sub_243F5F574(v15, v14, &qword_27EDC0A50);
  v16 = sub_2440D11E0();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_243F5EED4(v14, &qword_27EDC0A50);
  }

  else
  {
    v27 = v2;
    v18 = sub_243F4E2F4();
    v19 = sub_243F4E2FC();
    v26 = v5;
    v2 = v27;
    sub_243F4E308(v18 & 1, v1, 0xD000000000000012, 0x80000002440E8780, v19, v20);
    v5 = v26;

    (*(v17 + 8))(v14, v16);
  }

  sub_2440D1180();

  sub_2440D1160();

  (*(*v1 + 928))(v21);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    sub_243F5EED4(v11, &qword_27EDBFF40);
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_243F5EED4(v11, &qword_27EDBFF40);
    sub_243F5DF24();
    v22 = swift_allocError();
    *v23 = 1;
    v28 = v22;
    sub_2440D3330();
    (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 56))(v9, 1, 1, v2);
  return (*(*v1 + 936))(v9);
}

uint64_t sub_243F5C710(char a1)
{
  v3 = *(v1 + 56);
  v4 = type metadata accessor for SwitchAXCommand();
  v7 = v1 + 32;
  v5 = *(v1 + 32);
  v6 = *(v7 + 8);

  v9[3] = v4;
  v9[4] = &off_285775250;
  v9[0] = sub_243FA14A4(v6, v5, a1);
  (*(*v3 + 96))(v9);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_243F5C7C4(uint64_t a1)
{
  v2 = sub_243F5E180(&qword_27EDBFFB0, type metadata accessor for LAError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_243F5C830(uint64_t a1)
{
  v2 = sub_243F5E180(&qword_27EDBFFB0, type metadata accessor for LAError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_243F5C89C(uint64_t a1)
{
  v2 = sub_243F5E180(&unk_27EDC4B50, type metadata accessor for LAError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_243F5C928(uint64_t a1)
{
  v2 = sub_243F5E180(&unk_27EDC4B50, type metadata accessor for LAError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_243F5C994(uint64_t a1)
{
  v2 = sub_243F5E180(&unk_27EDC4B50, type metadata accessor for LAError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_243F5CA00(void *a1, uint64_t a2)
{
  v4 = sub_243F5E180(&unk_27EDC4B50, type metadata accessor for LAError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_243F5CAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_243F5E180(&unk_27EDC4B50, type metadata accessor for LAError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_243F5CB30()
{
  sub_2440D3B20();
  sub_2440D2F10();
  return sub_2440D3B50();
}

void *sub_243F5CB90@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_243F5CBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243F5E180(&unk_27EDC4B50, type metadata accessor for LAError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_243F5CC44(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_243F5CD3C;

  return v6(a1);
}

uint64_t sub_243F5CD3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_243F5CE34(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_243F5CF28;

  return v5(v2 + 32);
}

uint64_t sub_243F5CF28()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_243F5D03C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFD0);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF28);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFEF8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  type metadata accessor for VoiceOverStatusObserver();
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  *(v2 + 8) = sub_243FC7308();
  *(v2 + 9) = 0;
  v16 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__pinUIIsPresented;
  LOBYTE(v50) = 0;
  sub_2440D1300();
  v17 = *(v13 + 32);
  v17(&v2[v16], v15, v12);
  v18 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__readingVOInstructions;
  LOBYTE(v50) = 0;
  sub_2440D1300();
  v17(&v2[v18], v15, v12);
  v19 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__isIssuer;
  LOBYTE(v50) = 0;
  sub_2440D1300();
  v17(&v2[v19], v15, v12);
  v20 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__presentAuth;
  LOBYTE(v50) = 0;
  sub_2440D1300();
  v17(&v2[v20], v15, v12);
  v21 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__showLockOnStatusBar;
  LOBYTE(v50) = 0;
  sub_2440D1300();
  v17(&v2[v21], v15, v12);
  v22 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__cancelUnlockInstruction;
  LOBYTE(v50) = 0;
  sub_2440D1300();
  v17(&v2[v22], v15, v12);
  v23 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__topBarModel;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF08);
  sub_2440D1300();
  (*(v9 + 32))(&v2[v23], v11, v8);
  v24 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_context;
  *&v2[v24] = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v2[OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_evaluating] = 0;
  *&v2[OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_subscribers] = MEMORY[0x277D84F90];
  v2[OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_didMerchantAuthorize] = 0;
  v2[OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_incomingCallAccepted] = 0;
  v25 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__presentingPasscode;
  LOBYTE(v50) = 0;
  sub_2440D1300();
  v17(&v2[v25], v15, v12);
  *&v2[OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_authWrapper] = 0;
  v26 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel__authModel;
  *&v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF20);
  v27 = v43;
  sub_2440D1300();
  (*(v44 + 32))(&v3[v26], v27, v45);
  v28 = OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_bsActionContinuity;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFF38);
  (*(*(v29 - 8) + 56))(&v3[v28], 1, 1, v29);
  *&v3[OBJC_IVAR____TtC19ContactlessReaderUI12PINViewModel_releaseEvaluatingLock] = 0;
  v30 = v46;
  v31 = v47;
  *(v3 + 4) = v46;
  *(v3 + 5) = *(v30 + 40);
  *(v3 + 7) = v31;

  v32 = sub_243FA9620();
  swift_beginAccess();
  v33 = *(**v32 + 256);

  v35 = v48;
  v33(v34);
  v36 = type metadata accessor for TransactionContext(0);
  result = (*(*(v36 - 8) + 48))(v35, 1, v36);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = *(v35 + *(v36 + 20));
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(v3 + 6) = result;

  sub_243F5F518(v35);
  v38 = *(v3 + 6);
  if (*(v38 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_privacyLock) == 1)
  {
    type metadata accessor for PrivacyAuthenticatorModel();
    v39 = sub_243FD07B4();
    swift_getKeyPath();
    swift_getKeyPath();
    v49 = v39;

    sub_2440D1350();
    v38 = *(v3 + 6);
  }

  v40 = *(v38 + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_issuerPIN);
  v41 = *(**(v3 + 4) + 360);

  v41(v40);

  return v3;
}

unint64_t sub_243F5D720()
{
  result = qword_27EDBFF48;
  if (!qword_27EDBFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFF48);
  }

  return result;
}

uint64_t sub_243F5D774(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_243F5D81C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_243F5D870()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *sub_243F5D8A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 600))(1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [result closeUI];
  }

  return result;
}

uint64_t sub_243F5D964()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243F5F614;

  return sub_243F5311C();
}

uint64_t sub_243F5D9F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243F5DA80;

  return sub_243F539C0();
}

uint64_t sub_243F5DA80(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_243F5DB84()
{
  result = qword_27EDC6160;
  if (!qword_27EDC6160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC6160);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_243F5DC3C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_243F5F610;

  return sub_243F561B8(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_54Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_243F5DD50(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243F5DD98()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5DE2C;

  return sub_243F57134(v3, v4, v5, v2);
}

uint64_t sub_243F5DE2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_243F5DF24()
{
  result = qword_27EDBFF70;
  if (!qword_27EDBFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFF70);
  }

  return result;
}

uint64_t sub_243F5DFA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_243F5DFF0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243F5F610;

  return sub_243F59564(v4, v5, v6, v2, v3);
}

unint64_t sub_243F5E0B8()
{
  result = qword_27EDBFF78;
  if (!qword_27EDBFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFF78);
  }

  return result;
}

uint64_t sub_243F5E10C()
{
  v0 = sub_2440D3970();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_243F5E180(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243F5E1C8()
{
  result = (*(*v0 + 784))();
  if (result)
  {
    result = (*(*v0 + 496))();
    if ((result & 1) == 0)
    {

      return sub_243F5736C();
    }
  }

  return result;
}

unint64_t sub_243F5E258()
{
  result = qword_27EDBFF80;
  if (!qword_27EDBFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFF80);
  }

  return result;
}

unint64_t sub_243F5E2BC()
{
  result = qword_27EDBFF88;
  if (!qword_27EDBFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFF88);
  }

  return result;
}

uint64_t type metadata accessor for PINViewModel()
{
  result = qword_27EDC6B20;
  if (!qword_27EDC6B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243F5E364()
{
  sub_243F5EAAC(319, &qword_27EDBFF90, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_243F5E5AC(319, &qword_27EDBFF98, &qword_27EDBFF08, &unk_2440D5EC0, MEMORY[0x277CBCED0]);
    if (v1 <= 0x3F)
    {
      sub_243F5E5AC(319, &qword_27EDBFFA0, &qword_27EDBFF20, &unk_2440D5F68, MEMORY[0x277CBCED0]);
      if (v2 <= 0x3F)
      {
        sub_243F5E5AC(319, &qword_27EDBFFA8, &qword_27EDBFF38, &unk_2440D5FC8, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_243F5E5AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PINViewModel.BSActionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PINViewModel.BSActionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivacyLockCompleteStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivacyLockCompleteStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_243F5EAAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_243F5EB48()
{
  result = qword_27EDC5CD0;
  if (!qword_27EDC5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC5CD0);
  }

  return result;
}

uint64_t sub_243F5EC30(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243F5F610;

  return sub_243F55B2C(a1, v5, v6, v4);
}

uint64_t sub_243F5ED8C()
{
  sub_2440D2BA0();
  sub_2440D16E0();
}

uint64_t sub_243F5EDF4()
{
  result = (*(*v0 + 360))(0);
  if ((*(v0[6] + OBJC_IVAR____TtC19ContactlessReaderUI10PINContext_issuerPIN) & 1) == 0)
  {
    v2 = sub_243FA9620();
    swift_beginAccess();
    v3 = *(**v2 + 528);

    v3(v4);
  }

  return result;
}

uint64_t sub_243F5EED4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_243F5EF34()
{

  return swift_deallocObject();
}

uint64_t sub_243F5EF6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243F5F610;

  return sub_243F5CE34(a1, v4);
}

uint64_t sub_243F5F024(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243F5DE2C;

  return sub_243F5CE34(a1, v4);
}

uint64_t sub_243F5F0DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243F5F610;

  return sub_243F5CC44(a1, v4);
}

uint64_t objectdestroy_64Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_243F5F228()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_243F552AC(v3, v4, v5, v2);
}

uint64_t sub_243F5F310()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_243F543B0(256);
  }

  return result;
}

uint64_t sub_243F5F3C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_243F5F424()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_243F5F610;

  return sub_243F546D4(v3, v4, v5, v2, (v0 + 40));
}

uint64_t sub_243F5F518(uint64_t a1)
{
  v2 = type metadata accessor for TransactionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243F5F574(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_243F5F68C(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for IdentityView(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_24401B970();
  v12 = v11;
  sub_243F4E2F4();
  sub_243F68750();
  sub_24401E8DC();
  sub_24401B98C(sub_243F5F8AC, a1, v10, v12, v6, v9);
  v13 = sub_2440D1C40();
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = v14;
  v16 = [objc_opt_self() clearColor];
  [v15 setBackgroundColor_];

  v17 = [v13 view];
  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v17 setOverrideUserInterfaceStyle_];

  if (a2)
  {
LABEL_6:

    return;
  }

  v18 = [v13 view];
  if (v18)
  {
    v19 = v18;
    sub_243F4DD0C();

    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

id sub_243F5F910()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_243F4E22C();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5FAB0(v4);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3490();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243F48000, v8, v9, "IdentityHostingController deinit", v10, 2u);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v11 = type metadata accessor for IdentityHostingController();
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t sub_243F5FAB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for IdentityHostingController()
{
  result = qword_27EDC6CB0;
  if (!qword_27EDC6CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243F5FC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  sub_2440D0B30();
  sub_2440D0B20();
  v9 = sub_2440D0B10();
  v11 = v10;

  if (v11 >> 60 == 15)
  {
    return (*(*v4 + 88))(a3);
  }

  v13 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_243F5FECC(v9, v11);
  v14 = sub_2440D0670();
  v15 = [v13 initWithData_];

  sub_243F5FF20(v9, v11);
  if (!v15)
  {
    v16 = sub_243F4E038();
    sub_243F4DE64(v16, v8);
    v17 = sub_2440D11E0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      sub_243F5FF20(v9, v11);
      sub_243F5FAB0(v8);
    }

    else
    {
      v19 = sub_2440D11C0();
      v20 = sub_2440D3470();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_243F48000, v19, v20, "logo is not an image, default to category", v21, 2u);
        MEMORY[0x245D58570](v21, -1, -1);
      }

      sub_243F5FF20(v9, v11);

      (*(v18 + 8))(v8, v17);
    }

    return (*(*v4 + 88))(a3);
  }

  sub_2440D2690();
  sub_243F5FF20(v9, v11);
  return v15;
}

uint64_t sub_243F5FECC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_243F5FF20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243F5D81C(a1, a2);
  }

  return a1;
}

id sub_243F5FF34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  type metadata accessor for MerchantCategoryDefinitions();
  v8 = sub_2440CF8C0(a1);
  v9 = sub_243F602C4(v8);
  if (!v9)
  {
    v16 = sub_243F4E038();
    sub_243F4DE64(v16, v5);
    v17 = sub_2440D11E0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v5, 1, v17) != 1)
    {
      v23 = sub_2440D11C0();
      v24 = sub_2440D3470();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_243F48000, v23, v24, "Unable to return icon due to invalid stylingInfo", v25, 2u);
        MEMORY[0x245D58570](v25, -1, -1);
      }

      (*(v18 + 8))(v5, v17);
      goto LABEL_15;
    }

    v19 = v5;
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = [v10 imageForSize:4 scale:1 transparent:v13];
  if (!v14)
  {
    v20 = sub_243F4E038();
    sub_243F4DE64(v20, v7);
    v21 = sub_2440D11E0();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v7, 1, v21) != 1)
    {
      v26 = sub_2440D11C0();
      v27 = sub_2440D3470();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_243F48000, v26, v27, "No icon returned for category", v28, 2u);
        MEMORY[0x245D58570](v28, -1, -1);
      }

      (*(v22 + 8))(v7, v21);
      goto LABEL_15;
    }

    v19 = v7;
LABEL_8:
    sub_243F5FAB0(v19);
LABEL_15:
    v15 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    sub_2440D2690();
    return v15;
  }

  v15 = v14;

  return v15;
}

id sub_243F602C4(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_243F4E038();
  sub_243F4DE64(v5, v4);
  v6 = sub_2440D11E0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_243F5FAB0(v4);
  }

  else
  {
    v8 = sub_2440D11C0();
    v9 = sub_2440D3460();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      v12 = sub_2440CF1CC(a1);
      v14 = sub_243F4E6F8(v12, v13, &v24);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_243F48000, v8, v9, "stylingInfoForCategory %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x245D58570](v11, -1, -1);
      MEMORY[0x245D58570](v10, -1, -1);
    }

    (*(v7 + 8))(v4, v6);
  }

  v15 = [objc_opt_self() sharedService];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  sub_2440CF1CC(a1);
  v17 = sub_2440D2F80();

  v18 = [v16 stylingForWalletCategory_];

  if (v18)
  {
    v19 = [objc_opt_self() mainScreen];
    [v19 scale];
    v21 = v20;

    if (![v18 tintColorForScale_])
    {
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.674509804 green:0.776470588 blue:0.901960784 alpha:1.0];
    }

    sub_2440D2700();
  }

  else
  {
  }

  return v18;
}

uint64_t type metadata accessor for RegisteredDescription()
{
  result = qword_27EDC6D40;
  if (!qword_27EDC6D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243F60648()
{
  result = qword_27EDBFFF8;
  if (!qword_27EDBFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFFF8);
  }

  return result;
}

unint64_t sub_243F6069C()
{
  result = qword_27EDC0000;
  if (!qword_27EDC0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0000);
  }

  return result;
}

uint64_t sub_243F606F0@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v2 = type metadata accessor for RegisteredDescription();
  v70 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v71 = v3;
  v72 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2440D1F60();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0010);
  MEMORY[0x28223BE20](v61);
  v6 = &v57 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0018);
  MEMORY[0x28223BE20](v59);
  v8 = &v57 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0020);
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v58 = &v57 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0028);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v57 - v10;
  v69 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
  v73 = v1;
  sub_2440D1510();
  v11 = v79;
  if (v79 > 1.3)
  {
    v11 = 1.3;
  }

  v12 = v11 * 22.0;
  LOBYTE(v76) = 1;
  sub_2440D2970();
  v13 = *&v79;
  v14 = v80;
  v15 = v81;
  v75 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0030);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0038);
  sub_243F61520();
  sub_243F615DC();
  v18 = sub_24404D154();
  v57 = v8;
  sub_24404D15C(v13, v14, v15, sub_243F60F68, sub_243F61518, v16, v8, 10.0, v18, v17);
  v19 = *MEMORY[0x277CDF988];
  v20 = sub_2440D1770();
  (*(*(v20 - 8) + 104))(v6, v19, v20);
  sub_243F62C20(&qword_27EDC00D8, MEMORY[0x277CDFA28]);
  result = sub_2440D2F50();
  if (result)
  {
    v22 = sub_243F5DD50(&qword_27EDC00E0, &qword_27EDC0018);
    v23 = sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    v24 = v58;
    v25 = *&v59;
    v26 = v61;
    v27 = v57;
    sub_2440D2420();
    sub_243F5EED4(v6, &qword_27EDC0010);
    sub_243F5EED4(v27, &qword_27EDC0018);
    v28 = v64;
    sub_2440D1F40();
    v79 = v25;
    v80 = v26;
    v81 = v22;
    v82 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = v63;
    v31 = v62;
    sub_2440D2490();
    (*(v67 + 8))(v28, v68);
    (*(v60 + 8))(v24, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
    v32 = v73;
    sub_2440D1E60();
    v78 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC00F0);
    v76 = v31;
    v77 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_243F619D0();
    v33 = v74;
    v34 = v66;
    sub_2440D24A0();

    (*(v65 + 8))(v30, v34);
    LOBYTE(OpaqueTypeConformance2) = sub_2440D20C0();
    sub_2440D13D0();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0100) + 36);
    *v43 = OpaqueTypeConformance2;
    *(v43 + 8) = v36;
    *(v43 + 16) = v38;
    *(v43 + 24) = v40;
    *(v43 + 32) = v42;
    *(v43 + 40) = 0;
    LOBYTE(OpaqueTypeConformance2) = sub_2440D20D0();
    sub_2440707C0();
    sub_2440D13D0();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0108) + 36);
    *v52 = OpaqueTypeConformance2;
    *(v52 + 8) = v45;
    *(v52 + 16) = v47;
    *(v52 + 24) = v49;
    *(v52 + 32) = v51;
    *(v52 + 40) = 0;
    v53 = v72;
    sub_243F61EB0(v32, v72);
    v54 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v55 = swift_allocObject();
    sub_243F61F18(v53, v55 + v54);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0110);
    v56 = (v33 + *(result + 36));
    *v56 = sub_243F61F7C;
    v56[1] = v55;
    v56[2] = 0;
    v56[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243F60F68()
{
  sub_24401FBC0();
  v0 = sub_24401FBD4();
  v2 = v1;
  v4 = v3;
  sub_2440D21B0();
  v5 = sub_2440D22A0();
  v7 = v6;
  v9 = v8;
  sub_243F62C68(v0, v2, v4 & 1);

  sub_2440D21D0();
  v10 = sub_2440D22E0();
  v12 = v11;
  v14 = v13;

  sub_243F62C68(v5, v7, v9 & 1);

  sub_243FFAE40();

  v15 = sub_2440D22C0();
  v17 = v16;
  v19 = v18;

  sub_243F62C68(v10, v12, v14 & 1);

  sub_2440D24E0();
  sub_243F62C68(v15, v17, v19 & 1);
}

uint64_t sub_243F61140@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = sub_2440D1B10();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - v6;
  v8 = sub_2440D2770();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2440D2760();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  v12 = sub_2440D2790();

  (*(v9 + 8))(v11, v8);
  sub_2440D2160();
  sub_2440D2180();
  v13 = sub_2440D21F0();

  KeyPath = swift_getKeyPath();
  v15 = sub_2440D2660();
  v16 = swift_getKeyPath();
  LOBYTE(v27[0]) = 1;
  sub_2440D1B00();
  (*(v2 + 16))(v5, v7, v1);
  sub_243F62C20(&qword_27EDC0148, MEMORY[0x277CE0068]);
  v17 = sub_2440D1610();
  (*(v2 + 8))(v7, v1);
  sub_2440D2B00();
  sub_2440D1560();
  v20 = v12;
  LOWORD(v21) = 1;
  *(&v21 + 1) = KeyPath;
  *&v22 = v13;
  *(&v22 + 1) = v16;
  *&v23 = v15;
  *(&v23 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0060);
  sub_243F61698();
  sub_2440D24E0();
  v27[4] = v24;
  v27[5] = v25;
  v27[6] = v26;
  v27[0] = v20;
  v27[1] = v21;
  v27[2] = v22;
  v27[3] = v23;
  return sub_243F5EED4(v27, &qword_27EDC0060);
}

unint64_t sub_243F61520()
{
  result = qword_27EDC0040;
  if (!qword_27EDC0040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0030);
    sub_243F62C20(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0040);
  }

  return result;
}

unint64_t sub_243F615DC()
{
  result = qword_27EDC0050;
  if (!qword_27EDC0050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0038);
    sub_243F61698();
    sub_243F62C20(&qword_27EDC0048, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0050);
  }

  return result;
}

unint64_t sub_243F61698()
{
  result = qword_27EDC0058;
  if (!qword_27EDC0058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0060);
    sub_243F61724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0058);
  }

  return result;
}

unint64_t sub_243F61724()
{
  result = qword_27EDC0068;
  if (!qword_27EDC0068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0070);
    sub_243F617DC();
    sub_243F5DD50(&qword_27EDC00C8, &qword_27EDC00D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0068);
  }

  return result;
}

unint64_t sub_243F617DC()
{
  result = qword_27EDC0078;
  if (!qword_27EDC0078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0080);
    sub_243F61894();
    sub_243F5DD50(&qword_27EDC00B8, &qword_27EDC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0078);
  }

  return result;
}

unint64_t sub_243F61894()
{
  result = qword_27EDC0088;
  if (!qword_27EDC0088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0090);
    sub_243F6194C();
    sub_243F5DD50(&qword_27EDC00A8, &qword_27EDC00B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0088);
  }

  return result;
}

unint64_t sub_243F6194C()
{
  result = qword_27EDC0098;
  if (!qword_27EDC0098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC00A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0098);
  }

  return result;
}

unint64_t sub_243F619D0()
{
  result = qword_27EDC00F8;
  if (!qword_27EDC00F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC00F0);
    sub_243F60648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC00F8);
  }

  return result;
}

uint64_t sub_243F61A54(uint64_t a1)
{
  v24 = a1;
  v26 = sub_2440D2C80();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2440D2CA0();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RegisteredDescription();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_2440D2CD0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  sub_243F5DB84();
  v23 = sub_2440D3530();
  sub_2440D2CC0();
  sub_2440D2D20();
  v25 = *(v10 + 8);
  v25(v13, v9);
  sub_243F61EB0(v24, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_243F61F18(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_243F62A80;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_0;
  v18 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F62C20(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  v19 = v26;
  sub_2440D3710();
  v20 = v23;
  MEMORY[0x245D57400](v15, v5, v2, v18);
  _Block_release(v18);

  (*(v29 + 8))(v2, v19);
  (*(v27 + 8))(v5, v28);
  return (v25)(v15, v9);
}

uint64_t sub_243F61EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisteredDescription();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F61F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisteredDescription();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F61F7C()
{
  v1 = *(type metadata accessor for RegisteredDescription() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_243F61A54(v2);
}

uint64_t sub_243F61FDC()
{
  sub_243F60648();

  return sub_2440D1E70();
}

uint64_t sub_243F62028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = type metadata accessor for RegisteredDescription();
  sub_243F620B0(a4, a5 + *(v7 + 20));
  sub_243F6069C();
  return sub_2440D1500();
}

uint64_t sub_243F620B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F62178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_243F622C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_243F62404()
{
  sub_243F624A0();
  if (v0 <= 0x3F)
  {
    sub_243F624F0();
    if (v1 <= 0x3F)
    {
      sub_243F62560();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243F624A0()
{
  if (!qword_27EDC0118)
  {
    v0 = sub_2440D2980();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC0118);
    }
  }
}

void sub_243F624F0()
{
  if (!qword_27EDC0120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC00F0);
    sub_243F619D0();
    v0 = sub_2440D1E80();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC0120);
    }
  }
}

void sub_243F62560()
{
  if (!qword_27EDC0128)
  {
    sub_243F6069C();
    v0 = sub_2440D1520();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDC0128);
    }
  }
}

unint64_t sub_243F625C0()
{
  result = qword_27EDC0130;
  if (!qword_27EDC0130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0110);
    sub_243F6264C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0130);
  }

  return result;
}

unint64_t sub_243F6264C()
{
  result = qword_27EDC0138;
  if (!qword_27EDC0138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0108);
    sub_243F626D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0138);
  }

  return result;
}

unint64_t sub_243F626D8()
{
  result = qword_27EDC0140;
  if (!qword_27EDC0140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC00F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC0010);
    sub_243F5DD50(&qword_27EDC00E0, &qword_27EDC0018);
    sub_243F5DD50(&qword_27EDC00E8, &qword_27EDC0010);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243F619D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0140);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for RegisteredDescription();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 20);
  v4 = sub_2440D1F00();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);

  v6 = *(v1 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0008);
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_243F62A80()
{
  type metadata accessor for RegisteredDescription();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFF0);
  sub_2440D1E50();
  UIAccessibilityPostNotification(*MEMORY[0x277D764D8], 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE8);
  return sub_2440D2950();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243F62B70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2440D1A30();
  *a1 = result;
  return result;
}

uint64_t sub_243F62BC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2440D19B0();
  *a1 = result;
  return result;
}

uint64_t sub_243F62C20(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243F62C68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_243F62C7C(char a1)
{
  v2 = sub_2440D10F0();
  v3 = v2();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *sub_243FD662C();
  sub_2440B1460(a1);
  v5 = sub_2440D2F80();

  v6 = [v4 BOOLForKey_];

  return v6;
}

uint64_t sub_243F62D1C(char a1)
{
  v2 = sub_2440D10F0();
  v3 = v2();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *sub_243FD662C();
  sub_2440B1460(a1);
  v5 = sub_2440D2F80();

  v6 = [v4 stringForKey_];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_2440D2FB0();

  return v7;
}

uint64_t sub_243F62E08()
{
  v0 = sub_2440D0E90();
  *&v207 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v195 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v203 = &v195 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v202 = &v195 - v7;
  MEMORY[0x28223BE20](v6);
  v206 = &v195 - v8;
  v205 = sub_2440D08A0();
  *&v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v10 = &v195 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0150);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v195 - v12;
  v14 = sub_2440D0F50();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v209 = &v195 - v19;
  v21 = sub_2440D0E50();
  result = 0;
  if (v20 >> 60 != 15)
  {
    v201 = v0;
    v208 = v15;
    v23 = v20;
    sub_2440D02D0();
    swift_allocObject();
    sub_2440D02C0();
    sub_243F64408();
    sub_2440D02B0();
    v199 = v21;
    v200 = v23;

    v24 = v208;
    (*(v208 + 56))(v13, 0, 1, v14);
    v25 = v209;
    (*(v24 + 32))(v209, v13, v14);
    (*(v24 + 16))(v18, v25, v14);
    v26 = (*(v24 + 88))(v18, v14);
    if (v26 == *MEMORY[0x277D43B68])
    {
      (*(v24 + 96))(v18, v14);
      v27 = *v18;
      if (*v18 > 0.0 && v27 <= 100.0)
      {
        v198 = v14;
        v28 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
        [v28 setNumberStyle_];
        sub_243F6451C();
        v29 = sub_2440D35A0();
        [v28 setMultiplier_];

        [v28 setMinimumFractionDigits_];
        [v28 setMaximumFractionDigits_];
        v30 = sub_243FA9620();
        swift_beginAccess();
        v31 = *(**v30 + 328);

        v31(v32);

        v33 = sub_2440D0780();
        v34 = *(v204 + 8);
        v35 = v205;
        v34(v10, v205);
        [v28 setLocale_];

        v36 = [objc_allocWithZone(MEMORY[0x277CCA980]) initWithDouble_];
        v37 = [v28 stringFromNumber_];

        if (v37)
        {
          *&v207 = sub_2440D2FB0();
          v39 = v38;

          sub_2440D0800();
          v40 = sub_2440D0780();
          v34(v10, v35);
          [v28 setLocale_];

          v41 = [objc_allocWithZone(MEMORY[0x277CCA980]) initWithDouble_];
          v42 = [v28 stringFromNumber_];

          if (v42)
          {
            v43 = sub_2440D2FB0();
            v205 = v44;
            v206 = v43;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160);
            v45 = swift_allocObject();
            *(v45 + 16) = xmmword_2440D66C0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0);
            v46 = swift_allocObject();
            v204 = xmmword_2440D5CF0;
            *(v46 + 16) = xmmword_2440D5CF0;
            v47 = MEMORY[0x277D837D0];
            *(v46 + 56) = MEMORY[0x277D837D0];
            v48 = sub_243F644C8();
            *(v46 + 64) = v48;
            *(v46 + 32) = v207;
            *(v46 + 40) = v39;
            v49 = sub_243F68750();
            v50 = sub_244057E7C(v49 & 1, v46, 0xD000000000000025);
            v52 = v51;

            *(v45 + 32) = v50;
            *(v45 + 40) = v52;
            v53 = swift_allocObject();
            *(v53 + 16) = v204;
            *(v53 + 56) = v47;
            *(v53 + 64) = v48;
            v54 = v205;
            *(v53 + 32) = v206;
            *(v53 + 40) = v54;
            v55 = sub_244057E7C(0, v53, 0xD000000000000025);
            v57 = v56;

            *(v45 + 48) = v55;
            *(v45 + 56) = v57;
            sub_243F5FF20(v199, v200);

LABEL_45:
            (*(v208 + 8))(v209, v198);
            return v45;
          }

          (*(v208 + 8))(v209, v198);
          sub_243F5FF20(v199, v200);
        }

        else
        {
          (*(v208 + 8))(v209, v198);
          sub_243F5FF20(v199, v200);
        }

        return 0;
      }

      (*(v24 + 8))(v209, v14);
      goto LABEL_30;
    }

    v58 = *MEMORY[0x277D43B48];
    v198 = v14;
    if (v26 == v58)
    {
      v59 = (*(v24 + 96))(v18, v14);
      v60 = *v18;
      v61 = *(v18 + 2);
      *&v207 = *(v18 + 3);
      v62 = *(v18 + 4);
      v63 = *(v18 + 5);
      v64 = *(v18 + 6);
      v65 = *(v18 + 7);
      v66 = *(v18 + 8);
      v67 = *(v18 + 9);
      v68 = MEMORY[0x245D574F0](v59, 0.0);
      v206 = v60;
      v69 = v62;
      v70 = v207;
      LODWORD(v205) = v66;
      if (MEMORY[0x245D57510](v68))
      {
        LODWORD(v207) = v70;
        LODWORD(v204) = v65;
        v71 = sub_2440D0E00();
        v73 = v72;
        v74 = sub_2440D0DF0();
        v75 = sub_2440D0E40();
        v76 = sub_243FC04B4(v71, v73, v74, v75 & 1);

        v77 = objc_allocWithZone(MEMORY[0x277CCA980]);
        v210 = v206;
        v211 = v61;
        v212 = v207;
        v213 = v69;
        v214 = v63;
        v215 = v64;
        v216 = v204;
        v217 = v205;
        v218 = v67;
        v78 = [v77 initWithDecimal_];
        v79 = [v76 stringFromNumber_];

        if (v79)
        {
          v80 = sub_2440D2FB0();
          v82 = v81;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160);
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_2440D66C0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0);
          v84 = swift_allocObject();
          v207 = xmmword_2440D5CF0;
          *(v84 + 16) = xmmword_2440D5CF0;
          v85 = MEMORY[0x277D837D0];
          *(v84 + 56) = MEMORY[0x277D837D0];
          v86 = sub_243F644C8();
          *(v84 + 64) = v86;
          *(v84 + 32) = v80;
          *(v84 + 40) = v82;

          v87 = sub_243F68750();
          v88 = sub_244057E7C(v87 & 1, v84, 0xD000000000000024);
          v90 = v89;

          *(v83 + 32) = v88;
          *(v83 + 40) = v90;
          v91 = swift_allocObject();
          *(v91 + 16) = v207;
          *(v91 + 56) = v85;
          *(v91 + 64) = v86;
          *(v91 + 32) = v80;
          *(v91 + 40) = v82;
          v92 = v91;
          v93 = 0xD000000000000024;
LABEL_12:
          v94 = sub_244057E7C(0, v92, v93);
          v96 = v95;

          *(v83 + 48) = v94;
          *(v83 + 56) = v96;
          sub_243F5FF20(v199, v200);
          (*(v208 + 8))(v209, v198);
          return v83;
        }

LABEL_34:
        (*(v208 + 8))(v209, v198);
        goto LABEL_30;
      }
    }

    else
    {
      if (v26 == *MEMORY[0x277D43B58])
      {
        (*(v24 + 96))(v18, v14);
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0170);
        v98 = v18 + *(v97 + 48);
        v99 = *v98;
        v100 = *(v98 + 2);
        *&v204 = *(v98 + 3);
        v203 = *(v98 + 4);
        v101 = *(v98 + 5);
        v102 = *(v98 + 6);
        v103 = *(v98 + 7);
        v104 = *(v98 + 8);
        v105 = *(v98 + 9);
        v205 = *(v18 + *(v97 + 64));
        v106 = (*(v207 + 32))(v206, v18, v201);
        v107 = MEMORY[0x245D574F0](v106, 0.0);
        v108 = v99;
        v197 = v100;
        v109 = v103;
        v111 = v203;
        v110 = v204;
        v196 = v104;
        v195 = v105;
        if ((MEMORY[0x245D57510](v107) & 1) != 0 && v205 >= 1)
        {
          LODWORD(v204) = v110;
          v112 = sub_2440D0E00();
          v114 = v113;
          v115 = sub_2440D0DF0();
          v116 = sub_2440D0E40();
          v117 = sub_243FC04B4(v112, v114, v115, v116 & 1);

          v118 = objc_allocWithZone(MEMORY[0x277CCA980]);
          v210 = v108;
          v211 = v197;
          v212 = v204;
          v213 = v111;
          v214 = v101;
          v215 = v102;
          v216 = v109;
          v217 = v196;
          v218 = v195;
          v119 = [v118 initWithDecimal_];
          v120 = [v117 stringFromNumber_];

          if (v120)
          {
            v121 = sub_2440D2FB0();
            v123 = v122;

            v124 = v207;
            v125 = v201;
            v126 = v202;
            (*(v207 + 16))(v202, v206, v201);
            v127 = (*(v124 + 88))(v126, v125);
            if (v127 == *MEMORY[0x277D43950])
            {
              v128 = 0xD000000000000026;
            }

            else if (v127 == *MEMORY[0x277D43960])
            {
              v128 = 0xD000000000000027;
            }

            else
            {
              if (v127 != *MEMORY[0x277D43958])
              {
                sub_243F5FF20(v199, v200);

                v194 = *(v124 + 8);
                v194(v206, v125);
                (*(v208 + 8))(v209, v198);
                v194(v126, v125);
                return 0;
              }

              v128 = 0xD000000000000026;
            }

            v203 = v128;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160);
            v177 = swift_allocObject();
            v204 = xmmword_2440D66C0;
            *(v177 + 16) = xmmword_2440D66C0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0);
            v178 = swift_allocObject();
            *(v178 + 16) = v204;
            v179 = MEMORY[0x277D83C10];
            *(v178 + 56) = MEMORY[0x277D83B88];
            *(v178 + 64) = v179;
            v180 = v205;
            *(v178 + 32) = v205;
            *(v178 + 96) = MEMORY[0x277D837D0];
            v181 = sub_243F644C8();
            *(v178 + 104) = v181;
            v182 = v121;
            *(v178 + 72) = v121;
            *(v178 + 80) = v123;

            v183 = sub_243F68750();
            v184 = sub_244057E7C(v183 & 1, v178, v128);
            v186 = v185;

            *(v177 + 32) = v184;
            *(v177 + 40) = v186;
            v187 = swift_allocObject();
            *(v187 + 16) = v204;
            *(v187 + 56) = MEMORY[0x277D83B88];
            *(v187 + 64) = MEMORY[0x277D83C10];
            *(v187 + 32) = v180;
            *(v187 + 96) = MEMORY[0x277D837D0];
            *(v187 + 104) = v181;
            *(v187 + 72) = v182;
            *(v187 + 80) = v123;
            v188 = sub_244057E7C(0, v187, v203);
            v190 = v189;

            *(v177 + 48) = v188;
            *(v177 + 56) = v190;
            sub_243F5FF20(v199, v200);
            (*(v207 + 8))(v206, v201);
            (*(v208 + 8))(v209, v198);
            return v177;
          }

          sub_243F5FF20(v199, v200);
          (*(v207 + 8))(v206, v201);
          (*(v208 + 8))(v209, v198);
        }

        else
        {
          sub_243F5FF20(v199, v200);
          (*(v207 + 8))(v206, v201);
          (*(v24 + 8))(v209, v198);
        }

        return 0;
      }

      v129 = v207;
      if (v26 == *MEMORY[0x277D43B50])
      {
        (*(v24 + 96))(v18, v198);
        v130 = v203;
        v131 = v201;
        (*(v129 + 32))(v203, v18, v201);
        (*(v129 + 16))(v3, v130, v131);
        v132 = (*(v129 + 88))(v3, v131);
        if (v132 == *MEMORY[0x277D43950])
        {
          v133 = 0xD000000000000025;
        }

        else if (v132 == *MEMORY[0x277D43960])
        {
          v133 = 0xD000000000000026;
        }

        else
        {
          if (v132 != *MEMORY[0x277D43958])
          {
            sub_243F5FF20(v199, v200);
            v191 = *(v129 + 8);
            v191(v130, v131);
            (*(v24 + 8))(v209, v198);
            v191(v3, v131);
            return 0;
          }

          v133 = 0xD000000000000025;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_2440D66C0;
        v168 = sub_243F68750();
        *(v45 + 32) = sub_2440579C8(v168 & 1, v133);
        *(v45 + 40) = v169;
        v170 = sub_2440579C8(0, v133);
        v172 = v171;

        *(v45 + 48) = v170;
        *(v45 + 56) = v172;
        sub_243F5FF20(v199, v200);
        (*(v129 + 8))(v130, v131);
        goto LABEL_45;
      }

      if (v26 != *MEMORY[0x277D43B40])
      {
        if (v26 == *MEMORY[0x277D43B60])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160);
          v164 = swift_allocObject();
          *(v164 + 16) = xmmword_2440D66C0;
          v165 = sub_243F68750();
          *(v164 + 32) = sub_2440579C8(v165 & 1, 0xD00000000000001CLL);
          *(v164 + 40) = v166;
          *(v164 + 48) = sub_2440579C8(0, 0xD00000000000001CLL);
          *(v164 + 56) = v167;
          sub_243F5FF20(v199, v200);
          (*(v24 + 8))(v209, v198);
          return v164;
        }

        if (v26 == *MEMORY[0x277D43B70])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160);
          v173 = swift_allocObject();
          *(v173 + 16) = xmmword_2440D66C0;
          v174 = sub_243F68750();
          *(v173 + 32) = sub_2440579C8(v174 & 1, 0xD000000000000024);
          *(v173 + 40) = v175;
          *(v173 + 48) = sub_2440579C8(0, 0xD000000000000024);
          *(v173 + 56) = v176;
          sub_243F5FF20(v199, v200);
          (*(v24 + 8))(v209, v198);
          return v173;
        }

        v192 = *(v24 + 8);
        v193 = v198;
        v192(v209, v198);
        sub_243F5FF20(v199, v200);
        v192(v18, v193);
        return 0;
      }

      (*(v24 + 96))(v18, v198);
      v134 = *v18;
      v135 = *(v18 + 2);
      *&v207 = *(v18 + 3);
      v136 = *(v18 + 4);
      v137 = *(v18 + 5);
      v138 = *(v18 + 6);
      v139 = *(v18 + 7);
      v140 = *(v18 + 8);
      v141 = *(v18 + 9);
      v142 = MEMORY[0x245D57500](0);
      v206 = v134;
      v143 = v136;
      v144 = v207;
      LODWORD(v205) = v140;
      if (MEMORY[0x245D57510](v142))
      {
        LODWORD(v207) = v144;
        LODWORD(v204) = v139;
        v145 = sub_2440D0E00();
        v147 = v146;
        v148 = sub_2440D0DF0();
        v149 = sub_2440D0E40();
        v150 = sub_243FC04B4(v145, v147, v148, v149 & 1);

        v151 = objc_allocWithZone(MEMORY[0x277CCA980]);
        v210 = v206;
        v211 = v135;
        v212 = v207;
        v213 = v143;
        v214 = v137;
        v215 = v138;
        v216 = v204;
        v217 = v205;
        v218 = v141;
        v152 = [v151 initWithDecimal_];
        v153 = [v150 stringFromNumber_];

        if (v153)
        {
          v154 = sub_2440D2FB0();
          v156 = v155;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0160);
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_2440D66C0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC38B0);
          v157 = swift_allocObject();
          v207 = xmmword_2440D5CF0;
          *(v157 + 16) = xmmword_2440D5CF0;
          *(v157 + 56) = MEMORY[0x277D837D0];
          v158 = sub_243F644C8();
          *(v157 + 64) = v158;
          *(v157 + 32) = v154;
          *(v157 + 40) = v156;

          v159 = sub_243F68750();
          v160 = sub_244057E7C(v159 & 1, v157, 0xD000000000000023);
          v162 = v161;

          *(v83 + 32) = v160;
          *(v83 + 40) = v162;
          v163 = swift_allocObject();
          *(v163 + 16) = v207;
          *(v163 + 56) = MEMORY[0x277D837D0];
          *(v163 + 64) = v158;
          *(v163 + 32) = v154;
          *(v163 + 40) = v156;
          v92 = v163;
          v93 = 0xD000000000000023;
          goto LABEL_12;
        }

        goto LABEL_34;
      }
    }

    (*(v24 + 8))(v209, v198);
LABEL_30:
    sub_243F5FF20(v199, v200);
    return 0;
  }

  return result;
}

unint64_t sub_243F64408()
{
  result = qword_27EDC0158;
  if (!qword_27EDC0158)
  {
    sub_2440D0F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0158);
  }

  return result;
}

uint64_t sub_243F64460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_243F644C8()
{
  result = qword_27EDC0168;
  if (!qword_27EDC0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0168);
  }

  return result;
}

unint64_t sub_243F6451C()
{
  result = qword_27EDC0178;
  if (!qword_27EDC0178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDC0178);
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_243F645A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243F645C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

void type metadata accessor for Decimal()
{
  if (!qword_27EDC0180)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EDC0180);
    }
  }
}

uint64_t type metadata accessor for IdentityCenterView()
{
  result = qword_27EDC6DE0;
  if (!qword_27EDC6DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243F64688()
{
  result = qword_27EDC0190;
  if (!qword_27EDC0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0190);
  }

  return result;
}

uint64_t sub_243F646DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for IdentityCenterView();
  v50 = *(v3 - 1);
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01C0);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01C8);
  MEMORY[0x28223BE20](v51);
  v57 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01D0);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v53 = &v48 - v10;
  *v7 = sub_2440D1C20();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01D8);
  sub_243F64DDC(v1, &v7[*(v11 + 44)]);
  v12 = sub_2440CBE68();
  swift_beginAccess();
  v13 = *v12;
  v14 = v2 + v3[11];
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v58) = v15;
  v59 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  LOBYTE(v12) = v62;
  v17 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01E0) + 36)];
  *v17 = v13;
  v17[8] = v12;
  sub_2440D2BC0();
  v18 = sub_2440D2B60();

  v19 = v2 + v3[8];
  v21 = *(v19 + 8);
  LOBYTE(v58) = *v19;
  v20 = v58;
  v59 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
  sub_2440D2820();
  LOBYTE(v12) = sub_243FA1978(v62, 2);
  v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01E8) + 36)];
  *v22 = v18;
  v22[8] = v12 & 1;
  v23 = sub_2440D2BA0();
  LOBYTE(v58) = v20;
  v59 = v21;
  sub_2440D2820();
  v24 = sub_243FA1978(v62, 4);
  v25 = &v7[*(v5 + 36)];
  *v25 = v23;
  v25[8] = v24;
  v52 = v3;
  v26 = (v2 + v3[9]);
  v27 = *v26;
  v28 = v26[1];
  v58 = v27;
  v59 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v29 = v49;
  sub_243F66AC0(v2, v49);
  v30 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v50 = v4;
  v31 = swift_allocObject();
  sub_243F66B28(v29, v31 + v30);
  v32 = sub_243F66BD4(&qword_27EDC01F0, &qword_27EDC01C0, &unk_2440D6760, sub_243F66BA4);
  sub_2440CC638(&v62, sub_243F66B8C, v31, v5, MEMORY[0x277D839F8], v32, v57);

  sub_243F5EED4(v7, &qword_27EDC01C0);
  if (*v2)
  {
    v33 = *(**v2 + 136);

    LOBYTE(v33) = v33(v34);

    LOBYTE(v58) = v33 & 1;
    v35 = v29;
    sub_243F66AC0(v2, v29);
    v36 = swift_allocObject();
    sub_243F66B28(v29, v36 + v30);
    v48 = sub_243F66E18();
    v37 = sub_243F66EFC();
    v38 = v53;
    v39 = v51;
    v40 = v57;
    sub_2440D25E0();

    sub_243F5EED4(v40, &qword_27EDC01C8);
    v41 = v2 + v52[6];
    v42 = *v41;
    v43 = *(v41 + 8);
    LOBYTE(v41) = *(v41 + 16);
    v58 = v42;
    v59 = v43;
    LOBYTE(v60) = v41;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0198);
    MEMORY[0x245D56840](&v62, v44);
    sub_243F66AC0(v2, v35);
    v45 = swift_allocObject();
    sub_243F66B28(v35, v45 + v30);
    v58 = v39;
    v59 = &type metadata for PhoneOrientation;
    v60 = v48;
    v61 = v37;
    swift_getOpaqueTypeConformance2();
    sub_243F67588();
    v46 = v55;
    sub_2440D25D0();

    return (*(v54 + 8))(v38, v46);
  }

  else
  {
    type metadata accessor for FineRotationManager(0);
    sub_243F682A4(&qword_27EDC0188, type metadata accessor for FineRotationManager);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

uint64_t sub_243F64DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IdentityCenterView();
  v76 = *(v4 - 1);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4);
  v63 = sub_2440D1F60();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0290);
  MEMORY[0x28223BE20](v64);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0298);
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02A0);
  MEMORY[0x28223BE20](v67);
  v68 = &v57 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02A8);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v57 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02B0);
  MEMORY[0x28223BE20](v69);
  v74 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02B8);
  v77 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v72 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = &v57 - v19;
  v20 = a1;
  v21 = a1 + v4[11];
  v22 = *v21;
  v23 = *(v21 + 8);
  LOBYTE(v80) = v22;
  *(&v80 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2820();
  v24 = 1;
  if (v78 == 1)
  {
    v58 = v16;
    v59 = v5;
    v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = a2;
    *v9 = sub_2440D1C20();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02C0);
    sub_243F6568C(v20, &v9[*(v25 + 44)]);
    sub_2440D1F30();
    v26 = sub_243F5DD50(&qword_27EDC02C8, &qword_27EDC0290);
    v27 = v64;
    sub_2440D2490();
    (*(v62 + 8))(v7, v63);
    sub_243F5EED4(v9, &qword_27EDC0290);
    v28 = v4[5];
    v63 = v20;
    v29 = v20 + v28;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
    v62 = v29;
    sub_2440D1E40();
    v30 = v12;
    if (v80 == 8 || (LOBYTE(v78) = 5, sub_243F68230(), (sub_2440D2F50() & 1) == 0))
    {
      v34 = 0;
      v35 = 0xE000000000000000;
    }

    else
    {
      v31 = (v63 + v4[14]);
      v32 = *v31;
      v33 = *(v31 + 2);
      v80 = v32;
      v81 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8);
      sub_2440D2820();
      v34 = v78;
      v35 = v79;
    }

    v36 = v60;
    *&v80 = v34;
    *(&v80 + 1) = v35;
    sub_243F4EF64();
    v37 = sub_2440D2310();
    v39 = v38;
    v41 = v40;
    *&v80 = v27;
    *(&v80 + 1) = v26;
    swift_getOpaqueTypeConformance2();
    v42 = v68;
    v43 = v66;
    sub_2440D2430();
    sub_243F62C68(v37, v39, v41 & 1);

    (*(v65 + 8))(v30, v43);
    sub_2440D1E60();
    LOBYTE(v78) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0258);
    sub_243F67FF8();
    sub_243F67D98();
    v44 = v70;
    sub_2440D24A0();

    sub_243F5EED4(v42, &qword_27EDC02A0);
    v45 = v63;
    sub_243F66AC0(v63, v36);
    v46 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v47 = swift_allocObject();
    sub_243F66B28(v36, v47 + v46);
    v48 = v74;
    (*(v73 + 32))(v74, v44, v75);
    v49 = (v48 + *(v69 + 36));
    *v49 = sub_243F68124;
    v49[1] = v47;
    v49[2] = 0;
    v49[3] = 0;
    sub_243F66AC0(v45, v36);
    v50 = swift_allocObject();
    sub_243F66B28(v36, v50 + v46);
    v51 = v72;
    sub_243F681C8(v48, v72, &qword_27EDC02B0);
    v16 = v58;
    v52 = (v51 + *(v58 + 36));
    *v52 = 0;
    v52[1] = 0;
    v52[2] = sub_243F6813C;
    v52[3] = v50;
    v53 = v51;
    v54 = v71;
    sub_243F681C8(v53, v71, &qword_27EDC02B8);
    v55 = v54;
    a2 = v61;
    sub_243F681C8(v55, v61, &qword_27EDC02B8);
    v24 = 0;
  }

  return (*(v77 + 56))(a2, v24, 1, v16);
}

uint64_t sub_243F6568C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v86 - v4);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02E8);
  MEMORY[0x28223BE20](v95);
  v98 = &v86 - v6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02F0);
  MEMORY[0x28223BE20](v96);
  v100 = &v86 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC02F8);
  v8 = MEMORY[0x28223BE20](v99);
  v104 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v97 = &v86 - v11;
  MEMORY[0x28223BE20](v10);
  v101 = &v86 - v12;
  v13 = sub_2440D2B00();
  v102 = v14;
  v103 = v13;
  v15 = type metadata accessor for IdentityCenterView();
  v16 = (a1 + v15[8]);
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v107) = *v16;
  *(&v107 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
  sub_2440D2820();
  LOBYTE(v107) = 0;
  sub_243F686B4();
  if (sub_2440D2F50())
  {
    sub_243F68708(&v107);
  }

  else
  {
    LOBYTE(v107) = v17;
    *(&v107 + 1) = v18;
    sub_2440D2820();
    v19 = v106[0];
    sub_243F4E2F4();
    sub_243F4E2F4();
    sub_244045F18();
    sub_243F68750();
    sub_243F676A0();
    sub_243F4E2F4();
    sub_243F62020();
    sub_24406A0A8(v19, &v133);
    sub_2440D2B00();
    sub_2440D1560();
    v150 = v136;
    v149 = v135;
    *&v155 = v141;
    v154 = v140;
    v153 = v139;
    v151 = v137;
    v152 = v138;
    v148 = v134;
    v147 = v133;
    v20 = (a1 + v15[10]);
    v21 = *v20;
    v22 = v20[1];
    *&v107 = v21;
    *(&v107 + 1) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
    sub_2440D2820();
    v23 = *v106 * 0.0174532925;
    sub_2440D2C40();
    v25 = v24;
    v27 = v26;
    v28 = (a1 + v15[9]);
    v29 = *v28;
    v30 = v28[1];
    *&v107 = v29;
    *(&v107 + 1) = v30;
    sub_2440D2820();
    v106[8] = v155;
    v106[9] = v156;
    v106[10] = v157;
    *&v106[11] = v158;
    v106[4] = v151;
    v106[5] = v152;
    v106[6] = v153;
    v106[7] = v154;
    v106[0] = v147;
    v106[1] = v148;
    v106[2] = v149;
    v106[3] = v150;
    *(&v106[11] + 1) = v23;
    *&v106[12] = v25;
    *(&v106[12] + 1) = v27;
    nullsub_1(v106);
    v117 = v106[10];
    v118 = v106[11];
    v119 = v106[12];
    *&v120 = *&v106[13];
    v113 = v106[6];
    v114 = v106[7];
    v115 = v106[8];
    v116 = v106[9];
    v109 = v106[2];
    v110 = v106[3];
    v111 = v106[4];
    v112 = v106[5];
    v107 = v106[0];
    v108 = v106[1];
  }

  v106[10] = v117;
  v106[11] = v118;
  v106[12] = v119;
  v106[6] = v113;
  v106[7] = v114;
  v106[8] = v115;
  v106[9] = v116;
  v106[2] = v109;
  v106[3] = v110;
  v106[4] = v111;
  v106[5] = v112;
  v106[0] = v107;
  v106[1] = v108;
  v143 = v117;
  v144 = v118;
  v145 = v119;
  v139 = v113;
  v140 = v114;
  v141 = v115;
  v142 = v116;
  v135 = v109;
  v136 = v110;
  v137 = v111;
  v138 = v112;
  v133 = v107;
  v134 = v108;
  v157 = v117;
  v158 = v118;
  v159 = v119;
  v153 = v113;
  v154 = v114;
  v155 = v115;
  v156 = v116;
  v149 = v109;
  v150 = v110;
  v151 = v111;
  v152 = v112;
  *&v106[13] = v120;
  v146 = v120;
  v160 = v120;
  v147 = v107;
  v148 = v108;
  sub_243F5F574(&v133, &v107, &qword_27EDC0300);
  sub_243F5EED4(&v147, &qword_27EDC0300);
  v171 = v143;
  v172 = v144;
  v173 = v145;
  v174 = v146;
  v167 = v139;
  v168 = v140;
  v169 = v141;
  v170 = v142;
  v163 = v135;
  v164 = v136;
  v165 = v137;
  v166 = v138;
  v161 = v133;
  v162 = v134;
  v94 = sub_243F9A1E0();
  sub_2440D2B00();
  sub_2440D1560();
  *v5 = sub_2440D2B00();
  v5[1] = v31;
  v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0308) + 44);
  v32 = (a1 + v15[13]);
  v33 = *v32;
  v90 = v32[1];
  v91 = v33;
  v89 = v32[2];
  *&v107 = v33;
  *(&v107 + 1) = v90;
  *&v108 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8);
  sub_2440D2820();
  sub_24401FBC0();
  v34 = sub_24401FBD4();
  v92 = v5;
  v36 = v35;
  v38 = v37;
  sub_2440D21D0();
  v39 = sub_2440D22E0();
  v87 = v40;
  v88 = v39;
  v42 = v41;
  v86 = v43;

  sub_243F62C68(v34, v36, v38 & 1);

  v44 = (a1 + v15[10]);
  v45 = *v44;
  v46 = v44[1];
  *&v107 = v45;
  *(&v107 + 1) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
  sub_2440D2820();
  v47 = *v106 * 0.0174532925;
  sub_2440D2C40();
  v49 = v48;
  v51 = v50;
  v52 = (a1 + v15[9]);
  v53 = *v52;
  v54 = v52[1];
  *&v107 = v53;
  *(&v107 + 1) = v54;
  sub_2440D2820();
  v55 = *&v106[0];
  v56 = v42 & 1;
  LOBYTE(v107) = v42 & 1;
  v57 = sub_243F9A09C();
  *&v107 = v91;
  *(&v107 + 1) = v90;
  *&v108 = v89;
  sub_2440D2820();
  v58 = v106[0];
  KeyPath = swift_getKeyPath();
  *&v106[0] = v88;
  *(&v106[0] + 1) = v87;
  LOBYTE(v106[1]) = v56;
  *(&v106[1] + 1) = v86;
  *&v106[2] = v47;
  *(&v106[2] + 1) = v49;
  *&v106[3] = v51;
  *(&v106[3] + 1) = v55;
  *&v106[4] = v57;
  *(&v106[4] + 8) = v58;
  *(&v106[5] + 1) = KeyPath;
  LOBYTE(v106[6]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0320);
  sub_243F685D0();
  v60 = v92;
  sub_2440D24E0();
  v111 = v106[4];
  v112 = v106[5];
  LOBYTE(v113) = v106[6];
  v107 = v106[0];
  v108 = v106[1];
  v109 = v106[2];
  v110 = v106[3];
  sub_243F5EED4(&v107, &qword_27EDC0320);
  sub_2440D2B00();
  sub_2440D18E0();
  v61 = v98;
  sub_243F681C8(v60, v98, &qword_27EDC02E0);
  v62 = (v61 + *(v95 + 36));
  v63 = v131;
  v62[4] = v130;
  v62[5] = v63;
  v62[6] = v132;
  v64 = v127;
  *v62 = v126;
  v62[1] = v64;
  v65 = v129;
  v62[2] = v128;
  v62[3] = v65;
  LOBYTE(v34) = sub_2440D20C0();
  sub_2440D13D0();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v100;
  sub_243F681C8(v61, v100, &qword_27EDC02E8);
  v75 = v74 + *(v96 + 36);
  *v75 = v34;
  *(v75 + 8) = v67;
  *(v75 + 16) = v69;
  *(v75 + 24) = v71;
  *(v75 + 32) = v73;
  *(v75 + 40) = 0;
  sub_243F9A1E0();
  sub_243F9A09C();
  v76 = sub_2440D1580();

  v77 = v97;
  sub_243F681C8(v74, v97, &qword_27EDC02F0);
  *(v77 + *(v99 + 36)) = v76;
  v78 = v101;
  sub_243F681C8(v77, v101, &qword_27EDC02F8);
  v79 = v104;
  sub_243F5F574(v78, v104, &qword_27EDC02F8);
  v81 = v102;
  v80 = v103;
  *&v106[0] = v103;
  *(&v106[0] + 1) = v102;
  v106[11] = v171;
  v106[12] = v172;
  v106[13] = v173;
  v106[7] = v167;
  v106[8] = v168;
  v106[9] = v169;
  v106[10] = v170;
  v106[3] = v163;
  v106[4] = v164;
  v106[5] = v165;
  v106[6] = v166;
  v106[1] = v161;
  v106[2] = v162;
  v82 = v94;
  *&v106[14] = v174;
  *(&v106[14] + 1) = v94;
  v106[15] = v175;
  v106[16] = v176;
  v106[17] = v177;
  v83 = v105;
  memcpy(v105, v106, 0x120uLL);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0310);
  sub_243F5F574(v79, v83 + *(v84 + 48), &qword_27EDC02F8);
  sub_243F5F574(v106, &v107, &qword_27EDC0318);
  sub_243F5EED4(v78, &qword_27EDC02F8);
  sub_243F5EED4(v79, &qword_27EDC02F8);
  *&v107 = v80;
  *(&v107 + 1) = v81;
  v118 = v171;
  v119 = v172;
  v120 = v173;
  v114 = v167;
  v115 = v168;
  v116 = v169;
  v117 = v170;
  v110 = v163;
  v111 = v164;
  v112 = v165;
  v113 = v166;
  v108 = v161;
  v109 = v162;
  v121 = v174;
  v122 = v82;
  v123 = v175;
  v124 = v176;
  v125 = v177;
  return sub_243F5EED4(&v107, &qword_27EDC0318);
}

void sub_243F6622C(uint64_t a1)
{
  v2 = sub_2440D2C80();
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2440D2CA0();
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IdentityCenterView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_243F5DB84();
  v11 = sub_2440D3530();
  sub_243F66AC0(a1, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_243F66B28(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = sub_243F684DC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_29;
  v14 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F682A4(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v7, v4, v14);
  _Block_release(v14);

  (*(v16 + 8))(v4, v2);
  (*(v5 + 8))(v7, v15);
  UIAccessibilityPostNotification(*MEMORY[0x277D764D8], 0);
}

uint64_t sub_243F665B0(uint64_t a1)
{
  v2 = sub_2440D2C80();
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2440D2CA0();
  v5 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IdentityCenterView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_243F5DB84();
  v11 = sub_2440D3530();
  sub_243F66AC0(a1, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_243F66B28(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = sub_243F68284;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F5F604;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);

  sub_2440D2C90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243F682A4(&qword_27EDC0510, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDC6170);
  sub_243F5DD50(&qword_27EDC0520, &unk_27EDC6170);
  sub_2440D3710();
  MEMORY[0x245D57440](0, v7, v4, v14);
  _Block_release(v14);

  (*(v17 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v16);
}

uint64_t sub_243F66920(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(**a1 + 136);

    LOBYTE(v1) = v1(v2);

    sub_243F7CACC(v1 & 1, 1);
    type metadata accessor for IdentityCenterView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A8);
    sub_2440D2830();
    sub_2440709C4();
    v3 = sub_2440D2B80();
    MEMORY[0x28223BE20](v3);
    sub_2440D16E0();
  }

  else
  {
    type metadata accessor for FineRotationManager(0);
    sub_243F682A4(&qword_27EDC0188, type metadata accessor for FineRotationManager);
    result = sub_2440D1910();
    __break(1u);
  }

  return result;
}

uint64_t sub_243F66AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityCenterView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F66B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityCenterView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243F66BD4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_243F5DD50(&qword_27EDC0218, &qword_27EDC0220);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243F66C84()
{
  result = qword_27EDC0200;
  if (!qword_27EDC0200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC01E0);
    sub_243F5DD50(&qword_27EDC0208, &qword_27EDC0210);
    sub_243F5DD50(&qword_27EDC0218, &qword_27EDC0220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0200);
  }

  return result;
}

uint64_t sub_243F66D68()
{
  type metadata accessor for IdentityCenterView();
  sub_2440709C4();
  sub_2440D2B80();
  sub_2440D16E0();
}

unint64_t sub_243F66E18()
{
  result = qword_27EDC0228;
  if (!qword_27EDC0228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDC01C8);
    sub_243F66BD4(&qword_27EDC01F0, &qword_27EDC01C0, &unk_2440D6760, sub_243F66BA4);
    sub_243F5DD50(&qword_27EDC0230, &qword_27EDC0238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0228);
  }

  return result;
}

unint64_t sub_243F66EFC()
{
  result = qword_27EDC09C0;
  if (!qword_27EDC09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC09C0);
  }

  return result;
}

uint64_t sub_243F66F50(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for IdentityCenterView();
  v3 = *a2;
  if (v3 <= 8)
  {
    if (v3 != 3 && v3 != 7)
    {
      goto LABEL_13;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
    sub_2440D2830();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
    sub_2440D2830();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8);
    sub_2440D2830();
    v4 = 0xD000000000000027;
LABEL_12:
    sub_2440579C8(0, v4);
    return sub_2440D2830();
  }

  if (v3 == 9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
    sub_2440D2830();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
    sub_2440D2830();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8);
    sub_2440D2830();
    v4 = 0xD000000000000024;
    goto LABEL_12;
  }

  if (v3 != 11 && v3 != 13)
  {
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
    sub_2440D2830();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
    sub_2440D2830();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8);
    sub_2440D2830();
    return sub_2440D2830();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B0);
  sub_2440D2830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01A0);
  sub_2440D2830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC01B8);
  return sub_2440D2830();
}

unint64_t sub_243F67588()
{
  result = qword_27EDC0240;
  if (!qword_27EDC0240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDC0240);
  }

  return result;
}

uint64_t sub_243F675E0()
{
  type metadata accessor for FineRotationManager(0);
  sub_243F682A4(&qword_27EDC0188, type metadata accessor for FineRotationManager);

  return sub_2440D1930();
}

uint64_t sub_243F67654()
{
  sub_243F64688();

  return sub_2440D1E70();
}

double sub_243F676C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  v12 = type metadata accessor for IdentityCenterView();
  sub_243F681C8(a3, a7 + v12[5], &qword_27EDBFFE0);
  v13 = a7 + v12[6];
  *v13 = a4;
  *(v13 + 1) = a5;
  v13[16] = a6;
  v14 = v12[7];
  *(a7 + v14) = sub_244070800();
  v15 = a7 + v12[8];
  sub_2440D2810();
  *v15 = v23;
  *(v15 + 1) = *(&v23 + 1);
  v16 = (a7 + v12[9]);
  sub_2440D2810();
  *v16 = v23;
  v17 = (a7 + v12[10]);
  sub_2440D2810();
  *v17 = v23;
  v18 = a7 + v12[11];
  sub_2440D2810();
  *v18 = v23;
  *(v18 + 1) = *(&v23 + 1);
  v19 = (a7 + v12[12]);
  sub_2440D2810();
  *v19 = v23;
  v20 = a7 + v12[13];
  sub_2440D2810();
  *v20 = v23;
  *(v20 + 2) = v24;
  v21 = a7 + v12[14];
  sub_2440D2810();
  result = *&v23;
  *v21 = v23;
  *(v21 + 2) = v24;
  return result;
}

uint64_t sub_243F67928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_243F67A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBFFE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}