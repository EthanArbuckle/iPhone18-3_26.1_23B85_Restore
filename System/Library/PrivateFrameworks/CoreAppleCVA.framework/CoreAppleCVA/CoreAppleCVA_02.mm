uint64_t sub_2450444A8(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *a2;
  if (*a2 - 4 * *(a2 + 12) == *result - 4 * *(result + 12))
  {
    v14 = *(a2 + 8);
    v15 = v3[v14];
    v16 = v3[1];
    v30[0] = *v3;
    v30[1] = v15;
    v17 = v3[(v14 + 1)];
    v30[2] = v3[(2 * v14)];
    v30[3] = v16;
    v18 = v3[(2 * v14) | 1];
    v30[4] = v17;
    v30[5] = v18;
    v19 = v3[(v14 + 2)];
    v30[6] = v3[2];
    v30[7] = v19;
    v30[8] = v3[(2 * v14 + 2)];
    v20 = *(result + 8);
    if (v20)
    {
      v21 = &v2[3 * v20];
      v22 = (v20 - 3) << 32;
      v23 = v30;
      do
      {
        v24 = *v23++;
        *v2 = v24;
        v25 = HIDWORD(v22);
        v26 = v22 < 2;
        if (v22 < 2)
        {
          v25 = 0;
        }

        v27 = &v2[v25];
        v28 = (v22 + 1);
        v29 = v22 & 0xFFFFFFFF00000000;
        if (!v26)
        {
          v28 = 0;
        }

        v22 = v28 | v29;
        v2 = v27 + 1;
      }

      while (v2 != v21);
    }
  }

  else
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = 0;
      v6 = &v2[3 * v4];
      v7 = (v4 - 3) << 32;
      v8 = *(a2 + 8);
      do
      {
        *v2 = v3[(HIDWORD(v5) + v8 * v5)];
        if (v5 >= 2)
        {
          v5 = (v5 & 0xFFFFFFFF00000000) + 0x100000000;
        }

        else
        {
          v5 = (v5 + 1) | v5 & 0xFFFFFFFF00000000;
        }

        v9 = HIDWORD(v7);
        v10 = v7 < 2;
        if (v7 < 2)
        {
          v9 = 0;
        }

        v11 = &v2[v9];
        v12 = (v7 + 1);
        v13 = v7 & 0xFFFFFFFF00000000;
        if (!v10)
        {
          v12 = 0;
        }

        v7 = v12 | v13;
        v2 = v11 + 1;
      }

      while (v2 != v6);
    }
  }

  return result;
}

float *sub_2450445F0(float *result, uint64_t **a2)
{
  v2 = result;
  v3 = a2[1];
  v4 = *v3;
  if ((*v3 - 4 * *(v3 + 3)) == result)
  {
    v19 = 0;
    v18 = 0;
    result = sub_2450445F0(&v18);
    *v2 = v18;
    *(v2 + 2) = v19;
  }

  else
  {
    v5 = **a2;
    v6 = *v5;
    v7 = **v5;
    v8 = *(*v5 + 4);
    v9 = *(*v5 + 8);
    v10 = (*(v5 + 8) - 3);
    v11 = &v6[v10];
    v12 = v11[3];
    v13 = v11[4];
    v11 += 3;
    v14 = v11[2];
    v15 = &v11[v10];
    v16 = v15[4];
    v17 = v15[5];
    *result = ((0.0 - (v7 * *v4)) - (v12 * v4[1])) - (v15[3] * v4[2]);
    result[1] = ((0.0 - (v8 * *v4)) - (v13 * v4[1])) - (v16 * v4[2]);
    result[2] = ((0.0 - (v9 * *v4)) - (v14 * v4[1])) - (v17 * v4[2]);
  }

  return result;
}

uint64_t cva::SE3GroupStorage<float,cva::Matrix<float,4u,4u,false>>::adjoint@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q3>)
{
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (result == a2)
  {
    v17 = 0;
    *&v18 = *(result + 20);
    *(&v18 + 1) = *(result + 32);
    v19.i64[0] = *result;
    v19.i32[2] = *(result + 8);
    v19.i32[3] = *(result + 16);
    v68 = v19;
    *v69 = v18;
    *&v69[16] = *(result + 40);
    v20 = 0x300000000;
    v21 = &v68;
    do
    {
      v22 = v21->i32[0];
      v21 = (v21 + 4);
      *(a2 + v17) = v22;
      v23 = v20 < 2;
      v24 = (v20 >> 30) & 0x3FFFFFFFCLL;
      if (v20 < 2)
      {
        v24 = 0;
      }

      v25 = v17 + v24;
      v26 = (v20 + 1);
      v27 = v20 & 0xFFFFFFFF00000000;
      if (!v23)
      {
        v26 = 0;
      }

      v20 = v26 | v27;
      v17 = v25 + 4;
    }

    while (v17 != 72);
  }

  else
  {
    v3 = 0;
    v4 = 0x100000000;
    v5 = 0x300000000;
    v6 = result;
    do
    {
      *(a2 + v3) = *v6;
      v7 = HIDWORD(v4);
      v8 = v4 < 2;
      if (v4 < 2)
      {
        v7 = 0;
      }

      v9 = &v6[v7];
      v10 = (v4 + 1);
      v11 = v4 & 0xFFFFFFFF00000000;
      if (!v8)
      {
        v10 = 0;
      }

      v4 = v10 | v11;
      v6 = v9 + 1;
      v12 = v5 < 2;
      v13 = (v5 >> 30) & 0x3FFFFFFFCLL;
      if (v5 < 2)
      {
        v13 = 0;
      }

      v14 = v3 + v13;
      v15 = (v5 + 1);
      v16 = v5 & 0xFFFFFFFF00000000;
      if (!v12)
      {
        v15 = 0;
      }

      v5 = v15 | v16;
      v3 = v14 + 4;
    }

    while (v3 != 72);
  }

  v28 = *a2;
  v28.i32[3] = *(a2 + 24);
  v30 = *(a2 + 28);
  v29 = *(a2 + 48);
  v30.i64[1] = *(a2 + 48);
  v68 = v28;
  *v69 = v30;
  v31 = &v68;
  *&v69[16] = v29.i32[2];
  v32 = 0x300000000;
  for (i = 84; i != 156; i = v37 + 4)
  {
    v34 = v31->i32[0];
    v31 = (v31 + 4);
    *(a2 + i) = v34;
    v35 = v32 < 2;
    v36 = (v32 >> 30) & 0x3FFFFFFFCLL;
    if (v32 < 2)
    {
      v36 = 0;
    }

    v37 = i + v36;
    v38 = (v32 + 1);
    v39 = v32 & 0xFFFFFFFF00000000;
    if (!v35)
    {
      v38 = 0;
    }

    v32 = v38 | v39;
  }

  v28.i32[0] = *(result + 48);
  v30.i64[0] = *(result + 52);
  v29.i64[0] = *result;
  a3.i32[0] = *(result + 8);
  v40 = *(result + 16);
  v41.i32[0] = *(result + 20);
  v42 = *(result + 32);
  v43.i32[0] = *(result + 40);
  v44 = v30;
  v44.i32[2] = v28.i32[0];
  v45 = vmuls_lane_f32(v40, *v30.i8, 1) - (*v28.i32 * *(result + 24));
  v46 = v44;
  v46.i32[3] = v30.i32[0];
  v47 = vextq_s8(vextq_s8(a3, a3, 4uLL), v29, 0xCuLL);
  v47.i32[3] = *(result + 24);
  v44.i32[3] = v30.i32[1];
  v29.i64[1] = __PAIR64__(v41.u32[0], a3.u32[0]);
  v48 = vmulq_f32(v44, v29);
  v68 = vsubq_f32(vmulq_f32(v46, v47), vzip2q_s32(vzip1q_s32(v48, vextq_s8(v48, v48, 0xCuLL)), v48));
  v49 = vextq_s8(vextq_s8(v28, v28, 4uLL), v30, 0xCuLL);
  v50 = v49;
  v50.i32[3] = v49.i32[0];
  v41.i32[1] = v43.i32[0];
  *&v41.u32[2] = v42;
  *v69 = v45;
  v49.i32[3] = v49.i32[1];
  v43.f32[1] = v40;
  *&v43.u32[2] = vrev64_s32(v42);
  v51 = vmulq_f32(v49, v43);
  *&v69[4] = vsubq_f32(vmulq_f32(v50, v41), vzip2q_s32(vzip1q_s32(v51, vextq_s8(v51, v51, 0xCuLL)), v51));
  v52 = 0x300000000;
  v53 = &v68;
  for (j = 12; j != 84; j = v58 + 4)
  {
    v55 = v53->i32[0];
    v53 = (v53 + 4);
    *(a2 + j) = v55;
    v56 = v52 < 2;
    v57 = (v52 >> 30) & 0x3FFFFFFFCLL;
    if (v52 < 2)
    {
      v57 = 0;
    }

    v58 = j + v57;
    v59 = (v52 + 1);
    v60 = v52 & 0xFFFFFFFF00000000;
    if (!v56)
    {
      v59 = 0;
    }

    v52 = v59 | v60;
  }

  v61 = 0x300000000;
  for (k = 72; k != 144; k = v65 + 4)
  {
    *(a2 + k) = 0;
    v63 = v61 < 2;
    v64 = (v61 >> 30) & 0x3FFFFFFFCLL;
    if (v61 < 2)
    {
      v64 = 0;
    }

    v65 = k + v64;
    v66 = (v61 + 1);
    v67 = v61 & 0xFFFFFFFF00000000;
    if (!v63)
    {
      v66 = 0;
    }

    v61 = v66 | v67;
  }

  return result;
}

uint64_t sub_245044A8C(uint64_t result, float *a2, float32x2_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = v5 * *result;
  v7 = v5 * *(result + 4);
  v8 = v5 * *(result + 8);
  a3->f32[0] = *a2 + (v6 * *result);
  a3[2].f32[1] = v3 + (v7 * *(result + 4));
  a3[5].f32[0] = v3 + (v8 * *(result + 8));
  v9 = *(result + 4);
  v10 = v6 * v9;
  v11 = *(result + 8);
  v12 = v6 * v11;
  v13 = v7 * v11;
  v14 = v4 * *result;
  v15 = v4 * v9;
  v16 = v4 * v11;
  a3[2].f32[0] = v10 - v16;
  a3[4].f32[0] = v15 + v12;
  a3[4].f32[1] = v13 - v14;
  a3->f32[1] = v10 + v16;
  a3[1].f32[0] = v12 - v15;
  a3[3].f32[0] = v13 + v14;
  v17 = *(result + 12);
  v18 = *(result + 16);
  v19.i32[0] = vdup_lane_s32(v18, 1).u32[0];
  v20 = *(result + 4);
  v19.f32[1] = v17;
  v21.i32[0] = vdup_lane_s32(v20, 1).u32[0];
  v21.i32[1] = *result;
  v22 = vsub_f32(vmul_f32(v20, v19), vmul_f32(v21, v18));
  v23 = (*result * v18.f32[0]) - (v17 * v20.f32[0]);
  v31.i32[0] = v22.i32[1];
  v31.f32[1] = v23;
  v25 = a2[2];
  v24 = a2[3];
  if (result == a3)
  {
    v27 = v18.f32[1] + (v25 * v23);
    v28 = *(result + 4);
    v29.i32[0] = vdup_lane_s32(v28, 1).u32[0];
    v29.i32[1] = *result;
    v30 = vadd_f32(vadd_f32(*(result + 12), vmul_n_f32(v22, v25)), vmul_n_f32(vmla_f32(vmul_f32(v31, vneg_f32(v29)), vzip1_s32(vdup_lane_s32(v31, 1), v22), v28), v24));
    v26 = (v24 * ((-v28.f32[0] * v22.f32[0]) + (*result * v31.f32[0]))) + v27;
    a3[6] = v30;
  }

  else
  {
    a3[6].f32[0] = (v17 + (v25 * v22.f32[0])) + (v24 * (vmuls_lane_f32(-*(result + 8), v22, 1) + (*(result + 4) * v23)));
    a3[6].f32[1] = (*(result + 16) + vmuls_lane_f32(v25, v22, 1)) + (v24 * ((*(result + 8) * v22.f32[0]) - (*result * v23)));
    v26 = (*(result + 20) + (v23 * v25)) + (v24 * ((*result * v22.f32[1]) - (*(result + 4) * v22.f32[0])));
  }

  a3[7].f32[0] = v26;
  return result;
}

uint64_t cva::SE3AlgebraStorage<float,cva::Matrix<float,6u,1u,false>>::exp@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D2>)
{
  *a2 = xmmword_24508A9E0;
  *(a2 + 16) = unk_24508A9F0;
  *(a2 + 32) = xmmword_24508AA00;
  *(a2 + 48) = unk_24508AA10;
  v4 = vmul_f32(*(a1 + 4), *(a1 + 4));
  *&a3 = ((*a1 * *a1) + v4.f32[0]) + v4.f32[1];
  if (*&a3 >= 0.0061)
  {
    v12 = sqrtf(*&a3);
    v13 = a1;
    v17 = ((*a1 * *a1) + v4.f32[0]) + v4.f32[1];
    v14 = __sincosf_stret(v12);
    v11.f32[0] = v14.__cosval;
    a1 = v13;
    v11.f32[1] = v14.__sinval / v12;
    __asm { FMOV            V0.2S, #1.0 }

    v5 = vmul_n_f32(vsub_f32(_D0, v11), 1.0 / v17);
  }

  else
  {
    v5 = vmls_lane_f32(0x3E2AAAAB3F000000, vadd_f32(vdiv_f32(vdup_lane_s32(*&a3, 0), 0xC59D8000C4340000), 0x3C0888893D2AAAABLL), *&a3, 0);
    __asm { FMOV            V1.2S, #1.0 }

    v11 = vmls_lane_f32(_D1, v5, *&a3, 0);
  }

  v18[0] = v11;
  v18[1] = v5;
  return sub_245044A8C(a1, v18, a2);
}

double cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::SE3GroupStorage(_OWORD *a1)
{
  a1[4] = xmmword_24508AA60;
  a1[5] = unk_24508AA70;
  a1[6] = xmmword_24508AA80;
  a1[7] = unk_24508AA90;
  *a1 = xmmword_24508AA20;
  a1[1] = *algn_24508AA30;
  result = 0.0;
  a1[2] = xmmword_24508AA40;
  a1[3] = unk_24508AA50;
  return result;
}

{
  a1[4] = xmmword_24508AA60;
  a1[5] = unk_24508AA70;
  a1[6] = xmmword_24508AA80;
  a1[7] = unk_24508AA90;
  *a1 = xmmword_24508AA20;
  a1[1] = *algn_24508AA30;
  result = 0.0;
  a1[2] = xmmword_24508AA40;
  a1[3] = unk_24508AA50;
  return result;
}

double cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::SE3GroupStorage(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v4 = 0x100000000;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  do
  {
    v5 = *a2++;
    *(a1 + v3) = v5;
    v6 = v4 < 2;
    v7 = (v4 >> 29) & 0x7FFFFFFF8;
    if (v4 < 2)
    {
      v7 = 0;
    }

    v8 = v3 + v7;
    v9 = (v4 + 1);
    v10 = v4 & 0xFFFFFFFF00000000;
    if (!v6)
    {
      v9 = 0;
    }

    v4 = v9 | v10;
    v3 = v8 + 8;
  }

  while (v3 != 96);
  *(a1 + 96) = *a3;
  *(a1 + 104) = *(a3 + 8);
  result = *(a3 + 16);
  *(a1 + 112) = result;
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

{
  v3 = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v4 = 0x100000000;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  do
  {
    v5 = *a2++;
    *(a1 + v3) = v5;
    v6 = v4 < 2;
    v7 = (v4 >> 29) & 0x7FFFFFFF8;
    if (v4 < 2)
    {
      v7 = 0;
    }

    v8 = v3 + v7;
    v9 = (v4 + 1);
    v10 = v4 & 0xFFFFFFFF00000000;
    if (!v6)
    {
      v9 = 0;
    }

    v4 = v9 | v10;
    v3 = v8 + 8;
  }

  while (v3 != 96);
  *(a1 + 96) = *a3;
  *(a1 + 104) = *(a3 + 8);
  result = *(a3 + 16);
  *(a1 + 112) = result;
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

void cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::R()
{
  ;
}

{
  ;
}

uint64_t cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::T(uint64_t a1)
{
  return a1 + 96;
}

{
  return a1 + 96;
}

void cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::lplus(float64x2_t *a1, _OWORD *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  *v33 = *a2;
  *&v33[16] = v3;
  v34 = a2[2];
  v22[0] = v33;
  v22[1] = 6;
  v23[5] = unk_24508AA70;
  v23[6] = xmmword_24508AA80;
  v23[7] = unk_24508AA90;
  v23[0] = xmmword_24508AA20;
  v23[1] = *algn_24508AA30;
  v23[2] = xmmword_24508AA40;
  memset(&v23[3], 0, 32);
  v4 = vmulq_f64(*&v33[8], *&v33[8]);
  v5 = *v33 * *v33 + v4.f64[0] + v4.f64[1];
  if (v5 >= 0.0000002635)
  {
    v13 = sqrt(v5);
    v21 = *v33 * *v33 + v4.f64[0] + v4.f64[1];
    v14 = __sincos_stret(v13);
    v12.f64[0] = v14.__cosval;
    v12.f64[1] = v14.__sinval / v13;
    __asm { FMOV            V0.2D, #1.0 }

    v6 = vmulq_n_f64(vsubq_f64(_Q0, v12), 1.0 / v21);
  }

  else
  {
    v6 = vmlsq_lane_f64(xmmword_24508A7F0, vaddq_f64(vdivq_f64(vdupq_lane_s64(*&v5, 0), xmmword_24508A7D0), xmmword_24508A7E0), v5, 0);
    __asm { FMOV            V1.2D, #1.0 }

    v12 = vmlsq_lane_f64(_Q1, v6, v5, 0);
  }

  v25 = v12;
  v26 = v6;
  sub_2450450A8(v22, v25.f64, v23);
  v24[0] = v23;
  v24[1] = a1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  sub_245045258(v25.f64, v24);
  v16 = v30;
  a1[4] = v29;
  a1[5] = v16;
  v17 = v32;
  a1[6] = v31;
  a1[7] = v17;
  v18 = v26;
  *a1 = v25;
  a1[1] = v18;
  v19 = v28;
  a1[2] = v27;
  a1[3] = v19;
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2450450A8(uint64_t result, double *a2, float64x2_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = *result;
  v7 = **result;
  v8 = v5 * v7;
  v9 = v5 * *(*result + 8);
  v10 = v5 * *(*result + 16);
  a3->f64[0] = *a2 + v8 * v7;
  a3[2].f64[1] = v3 + v9 * v6[1];
  a3[5].f64[0] = v3 + v10 * v6[2];
  v11 = v6[1];
  v12 = v8 * v11;
  v13 = v6[2];
  v14 = v8 * v13;
  v15 = v9 * v13;
  v16 = v4 * *v6;
  v17 = v4 * v11;
  v18 = v4 * v13;
  a3[2].f64[0] = v12 - v18;
  a3[4].f64[0] = v17 + v14;
  a3[4].f64[1] = v15 - v16;
  a3->f64[1] = v12 + v18;
  a3[1].f64[0] = v14 - v17;
  a3[3].f64[0] = v15 + v16;
  v19 = HIDWORD(*(result + 8));
  v20 = &v6[-v19];
  v21 = (v20 + 8 * (v19 + 3));
  v22 = v6[1];
  v23 = v6[2];
  v24 = v21->f64[1];
  v25 = v21[1].f64[0];
  v26 = v22 * v25 - v23 * v24;
  v27 = v23 * v21->f64[0] - *v6 * v25;
  v28 = *v6 * v24 - v22 * v21->f64[0];
  *&v36[16] = v28;
  v30 = a2[2];
  v29 = a2[3];
  if (v20 == a3)
  {
    v32 = v25 + v30 * v28;
    v33 = *(v6 + 1);
    *&v34.f64[0] = vdupq_laneq_s64(v33, 1).u64[0];
    v34.f64[1] = *v6;
    v35 = vnegq_f64(v34);
    *&v34.f64[0] = vdupq_laneq_s64(*&v36[8], 1).u64[0];
    v34.f64[1] = v26;
    v31 = v29 * (*v6 * *&v36[8] - v33.f64[0] * v26) + v32;
    a3[6] = vaddq_f64(vaddq_f64(*v21, vmulq_n_f64(*v36, v30)), vmulq_n_f64(vmlaq_f64(vmulq_f64(*&v36[8], v35), v34, v33), v29));
  }

  else
  {
    a3[6].f64[0] = v21->f64[0] + v26 * v30 + v29 * (v22 * v28 - v23 * v27);
    a3[6].f64[1] = v21->f64[1] + v27 * v30 + v29 * (v6[2] * v26 - *v6 * v28);
    v31 = v21[1].f64[0] + v28 * v30 + v29 * (*v6 * v27 - v6[1] * v26);
  }

  a3[7].f64[0] = v31;
  return result;
}

float64_t sub_245045258(double *a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = *(a2 + 8), v4 == a1))
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    sub_245045258(&v35);
    v30 = v40;
    *(a1 + 4) = v39;
    *(a1 + 5) = v30;
    v31 = v42;
    *(a1 + 6) = v41;
    *(a1 + 7) = v31;
    v32 = v36;
    *a1 = v35;
    *(a1 + 1) = v32;
    *&v28.f64[0] = v37;
    v33 = v38;
    *(a1 + 2) = v37;
    *(a1 + 3) = v33;
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = vld1q_dup_f64(v5++);
    v7 = v4[2];
    v8 = v4[3];
    v9 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_f64(0, v6, v3[1]), v3[3], *v5), v3[5], v7), v3[7], v8);
    *a1 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_f64(0, v6, *v3), v3[2], *v5), v3[4], v7), v3[6], v8);
    *(a1 + 1) = v9;
    v9.f64[0] = v4[4];
    v10 = v4[5];
    v11 = vmlaq_n_f64(vmlaq_n_f64(0, *v3, v9.f64[0]), v3[2], v10);
    v12 = vmlaq_n_f64(vmlaq_n_f64(0, v3[1], v9.f64[0]), v3[3], v10);
    v13 = v4[6];
    v14 = v4[7];
    v15 = vmlaq_n_f64(vmlaq_n_f64(v12, v3[5], v13), v3[7], v14);
    *(a1 + 2) = vmlaq_n_f64(vmlaq_n_f64(v11, v3[4], v13), v3[6], v14);
    *(a1 + 3) = v15;
    v9.f64[0] = v4[8];
    v16 = v4[9];
    v17 = vmlaq_n_f64(vmlaq_n_f64(0, *v3, v9.f64[0]), v3[2], v16);
    v18 = vmlaq_n_f64(vmlaq_n_f64(0, v3[1], v9.f64[0]), v3[3], v16);
    v19 = v4[10];
    v20 = v4[11];
    v21 = vmlaq_n_f64(vmlaq_n_f64(v18, v3[5], v19), v3[7], v20);
    *(a1 + 4) = vmlaq_n_f64(vmlaq_n_f64(v17, v3[4], v19), v3[6], v20);
    *(a1 + 5) = v21;
    v22 = v4[12];
    v23 = v4[13];
    v24 = vmlaq_n_f64(vmlaq_n_f64(0, *v3, v22), v3[2], v23);
    v25 = vmlaq_n_f64(vmlaq_n_f64(0, v3[1], v22), v3[3], v23);
    v26 = v4[14];
    v27 = v4[15];
    v28 = v3[7];
    v29 = vmlaq_n_f64(vmlaq_n_f64(v25, v3[5], v26), v28, v27);
    *(a1 + 6) = vmlaq_n_f64(vmlaq_n_f64(v24, v3[4], v26), v3[6], v27);
    *(a1 + 7) = v29;
  }

  return v28.f64[0];
}

double cva::SE3AlgebraStorage<double,cva::MatrixRef<double const,6u,1u,false>>::SE3AlgebraStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 6;
  a1[1] = 6;
  return result;
}

{
  *a1 = a2;
  *&result = 6;
  a1[1] = 6;
  return result;
}

uint64_t cva::SE3AlgebraStorage<double,cva::MatrixRef<double const,6u,1u,false>>::exp@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = xmmword_24508AA60;
  *(a2 + 80) = unk_24508AA70;
  *(a2 + 96) = xmmword_24508AA80;
  *(a2 + 112) = unk_24508AA90;
  *a2 = xmmword_24508AA20;
  *(a2 + 16) = *algn_24508AA30;
  *(a2 + 32) = xmmword_24508AA40;
  *(a2 + 48) = unk_24508AA50;
  v3 = vmulq_f64(*(*a1 + 8), *(*a1 + 8));
  v4 = **a1 * **a1 + v3.f64[0] + v3.f64[1];
  if (v4 >= 0.0000002635)
  {
    v12 = sqrt(v4);
    v13 = a1;
    v17 = **a1 * **a1 + v3.f64[0] + v3.f64[1];
    v14 = __sincos_stret(v12);
    v11.f64[0] = v14.__cosval;
    a1 = v13;
    v11.f64[1] = v14.__sinval / v12;
    __asm { FMOV            V0.2D, #1.0 }

    v5 = vmulq_n_f64(vsubq_f64(_Q0, v11), 1.0 / v17);
  }

  else
  {
    v5 = vmlsq_lane_f64(xmmword_24508A7F0, vaddq_f64(vdivq_f64(vdupq_lane_s64(*&v4, 0), xmmword_24508A7D0), xmmword_24508A7E0), v4, 0);
    __asm { FMOV            V1.2D, #1.0 }

    v11 = vmlsq_lane_f64(_Q1, v5, v4, 0);
  }

  v18[0] = v11;
  v18[1] = v5;
  return sub_2450450A8(a1, v18, a2);
}

void cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::rplus(float64x2_t *a1, _OWORD *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  *v33 = *a2;
  *&v33[16] = v3;
  v34 = a2[2];
  v22[0] = v33;
  v22[1] = 6;
  v23[5] = unk_24508AA70;
  v23[6] = xmmword_24508AA80;
  v23[7] = unk_24508AA90;
  v23[0] = xmmword_24508AA20;
  v23[1] = *algn_24508AA30;
  v23[2] = xmmword_24508AA40;
  memset(&v23[3], 0, 32);
  v4 = vmulq_f64(*&v33[8], *&v33[8]);
  v5 = *v33 * *v33 + v4.f64[0] + v4.f64[1];
  if (v5 >= 0.0000002635)
  {
    v13 = sqrt(v5);
    v21 = *v33 * *v33 + v4.f64[0] + v4.f64[1];
    v14 = __sincos_stret(v13);
    v12.f64[0] = v14.__cosval;
    v12.f64[1] = v14.__sinval / v13;
    __asm { FMOV            V0.2D, #1.0 }

    v6 = vmulq_n_f64(vsubq_f64(_Q0, v12), 1.0 / v21);
  }

  else
  {
    v6 = vmlsq_lane_f64(xmmword_24508A7F0, vaddq_f64(vdivq_f64(vdupq_lane_s64(*&v5, 0), xmmword_24508A7D0), xmmword_24508A7E0), v5, 0);
    __asm { FMOV            V1.2D, #1.0 }

    v12 = vmlsq_lane_f64(_Q1, v6, v5, 0);
  }

  v25 = v12;
  v26 = v6;
  sub_2450450A8(v22, v25.f64, v23);
  v24[0] = a1;
  v24[1] = v23;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  sub_245045258(v25.f64, v24);
  v16 = v30;
  a1[4] = v29;
  a1[5] = v16;
  v17 = v32;
  a1[6] = v31;
  a1[7] = v17;
  v18 = v26;
  *a1 = v25;
  a1[1] = v18;
  v19 = v28;
  a1[2] = v27;
  a1[3] = v19;
  v20 = *MEMORY[0x277D85DE8];
}

double cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::transform@<D0>(float64x2_t *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = a1;
  v7[1] = 4;
  v8[0] = v7;
  v8[1] = a2;
  v10 = 0.0;
  v9 = 0uLL;
  sub_245039A0C(v9.f64, v8);
  *a3 = 0;
  *(a3 + 8) = 0;
  result = v10 + a1[7].f64[0];
  *a3 = vaddq_f64(v9, a1[6]);
  *(a3 + 16) = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

double cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::inverseTransform@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v10[0] = a1;
  v10[1] = 4;
  v11 = v10;
  v12[0] = &v11;
  v12[1] = a2;
  v7[0] = a1;
  v7[1] = 4;
  v8 = v7;
  v6[0] = a1 + 96;
  v6[1] = 0xC00000004;
  v9[0] = &v8;
  v9[1] = v6;
  v13 = 0uLL;
  v14 = 0.0;
  sub_245039B54(&v13, v12);
  v15 = 0uLL;
  v16 = 0.0;
  sub_245045828(&v15, v9);
  *a3 = vsubq_f64(v13, v15);
  result = v14 - v16;
  a3[1].f64[0] = v14 - v16;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_245045828(uint64_t a1, uint64_t **a2)
{
  v3 = a2[1];
  v4 = *v3;
  if (*v3 - 8 * *(v3 + 3) == a1)
  {
    v9 = 0uLL;
    v10 = 0;
    sub_245045828(&v9);
    result = *&v9;
    *a1 = v9;
    *(a1 + 16) = v10;
  }

  else
  {
    v5 = **a2;
    v6 = *(v5 + 8);
    v7 = *v5;
    *a1 = v7[1] * v4[1] + *v7 * *v4 + 0.0 + v7[2] * v4[2];
    *(a1 + 8) = v7[v6 + 1] * v4[1] + v7[v6] * *v4 + 0.0 + v7[(v6 + 2)] * v4[2];
    result = v7[(2 * v6) + 1] * v4[1] + v7[(2 * v6)] * *v4 + 0.0 + v7[(2 * v6 + 2)] * v4[2];
    *(a1 + 16) = result;
  }

  return result;
}

void cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::transformJacobian(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (a1 == a2)
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a1 + 16);
    v14 = v29;
    v15 = *a1;
    v29[2] = *(a1 + 8);
    v29[0] = 0;
    *&v29[1] = -v13;
    *&v29[3] = v13;
    v29[4] = 0;
    v30 = vnegq_f64(v15);
    v31 = v15.f64[0];
    v32 = 0;
    do
    {
      v16 = *v14++;
      *(a2 + v11) = v16;
      v17 = v12 < 2;
      v18 = (v12 >> 29) & 0x7FFFFFFF8;
      if (v12 < 2)
      {
        v18 = 0;
      }

      v19 = v11 + v18;
      v20 = (v12 + 1);
      v21 = v12 & 0xFFFFFFFF00000000;
      if (!v17)
      {
        v20 = 0;
      }

      v12 = v20 | v21;
      v11 = v19 + 8;
    }

    while (v11 != 72);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v10 = 0.0;
      if (HIDWORD(v4) != v4)
      {
        v10 = *(a1 + 8 * dword_24508AAD0[(HIDWORD(v4) + 4 * v4)]) * dbl_24508AB00[(HIDWORD(v4) + 4 * v4)];
      }

      *(a2 + v2) = v10;
      if (v4 >= 2)
      {
        v4 = (v4 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v4 = (v4 + 1) | v4 & 0xFFFFFFFF00000000;
      }

      v5 = v3 < 2;
      v6 = (v3 >> 29) & 0x7FFFFFFF8;
      if (v3 < 2)
      {
        v6 = 0;
      }

      v7 = v2 + v6;
      v8 = (v3 + 1);
      v9 = v3 & 0xFFFFFFFF00000000;
      if (!v5)
      {
        v8 = 0;
      }

      v3 = v8 | v9;
      v2 = v7 + 8;
    }

    while (v2 != 72);
  }

  v22 = 0;
  for (i = 72; i != 144; i = v26 + 8)
  {
    *(a2 + i) = 0;
    v24 = v22 < 2;
    v25 = (v22 >> 29) & 0x7FFFFFFF8;
    if (v22 < 2)
    {
      v25 = 0;
    }

    v26 = i + v25;
    v27 = (v22 + 1);
    v28 = v22 & 0xFFFFFFFF00000000;
    if (!v24)
    {
      v27 = 0;
    }

    v22 = v27 | v28;
  }

  *(a2 + 72) = 0x3FF0000000000000;
  *(a2 + 104) = 0x3FF0000000000000;
  *(a2 + 136) = 0x3FF0000000000000;
}

uint64_t cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::inverseTransformJacobian@<X0>(double *a1@<X0>, double *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = 0;
  v4 = 0;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[8];
  v11 = a1[9];
  v12 = a1[10];
  v14 = a2[1];
  v13 = a2[2];
  v15 = v5 * v13 - v6 * v14;
  *&v16 = v8 * v13 - v9 * v14;
  v17 = v11 * v13 - v12 * v14;
  v18 = v6 * *a2 - *a1 * v13;
  v19 = v9 * *a2 - v7 * v13;
  v20 = v12 * *a2 - v10 * v13;
  v21 = *a1 * v14 - v5 * *a2;
  v22 = v7 * v14 - v8 * *a2;
  v23 = v10 * v14 - v11 * *a2;
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v24 = &v33;
  do
  {
    v25 = *v24++;
    *(a3 + v3) = v25;
    v26 = v4 < 2;
    v27 = (v4 >> 29) & 0x7FFFFFFF8;
    if (v4 < 2)
    {
      v27 = 0;
    }

    v28 = v3 + v27;
    v29 = (v4 + 1);
    v30 = v4 & 0xFFFFFFFF00000000;
    if (!v26)
    {
      v29 = 0;
    }

    v4 = v29 | v30;
    v3 = v28 + 8;
  }

  while (v3 != 72);
  v33 = *&a1;
  v34 = 4;
  v32[0] = a3 + 72;
  v32[1] = 0x900000003;
  return sub_245045BE4(v32, &v33);
}

uint64_t sub_245045BE4(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *a2;
  if (*a2 - 8 * *(a2 + 12) == *result - 8 * *(result + 12))
  {
    v14 = *(a2 + 8);
    v15 = v3[1];
    v16 = -v3[v14];
    v17 = v3[(2 * v14)];
    v30[0] = -*v3;
    v30[1] = v16;
    v30[2] = -v17;
    v30[3] = -v15;
    v18 = -v3[(2 * v14) | 1u];
    v30[4] = -v3[(v14 + 1)];
    v30[5] = v18;
    v19 = -v3[(v14 + 2)];
    v30[6] = -v3[2];
    v30[7] = v19;
    v30[8] = -v3[(2 * v14 + 2)];
    v20 = *(result + 8);
    if (v20)
    {
      v21 = &v2[3 * v20];
      v22 = (v20 - 3) << 32;
      v23 = v30;
      do
      {
        v24 = *v23++;
        *v2 = v24;
        v25 = HIDWORD(v22);
        v26 = v22 < 2;
        if (v22 < 2)
        {
          v25 = 0;
        }

        v27 = &v2[v25];
        v28 = (v22 + 1);
        v29 = v22 & 0xFFFFFFFF00000000;
        if (!v26)
        {
          v28 = 0;
        }

        v22 = v28 | v29;
        v2 = v27 + 1;
      }

      while (v2 != v21);
    }
  }

  else
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = 0;
      v6 = &v2[3 * v4];
      v7 = (v4 - 3) << 32;
      v8 = *(a2 + 8);
      do
      {
        *v2 = -v3[(HIDWORD(v5) + v8 * v5)];
        if (v5 >= 2)
        {
          v5 = (v5 & 0xFFFFFFFF00000000) + 0x100000000;
        }

        else
        {
          v5 = (v5 + 1) | v5 & 0xFFFFFFFF00000000;
        }

        v9 = HIDWORD(v7);
        v10 = v7 < 2;
        if (v7 < 2)
        {
          v9 = 0;
        }

        v11 = &v2[v9];
        v12 = (v7 + 1);
        v13 = v7 & 0xFFFFFFFF00000000;
        if (!v10)
        {
          v12 = 0;
        }

        v7 = v12 | v13;
        v2 = v11 + 1;
      }

      while (v2 != v6);
    }
  }

  return result;
}

double cva::SE3AlgebraStorage<double,cva::Matrix<double,6u,1u,false>>::SE3AlgebraStorage(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::logJacobian(double *a1@<X0>, uint64_t a2@<X8>)
{
  v91[2] = *MEMORY[0x277D85DE8];
  *(a2 + 328) = 0;
  *(a2 + 248) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 24) = 0u;
  v4 = (a2 + 24);
  *(a2 + 40) = 0u;
  v4[17] = 0u;
  v4[18] = 0u;
  v4[15] = 0u;
  v4[16] = 0u;
  memset(v84, 0, sizeof(v84));
  v83 = 0u;
  memset(v82, 0, sizeof(v82));
  sub_245039D5C(a1, 4, v82[0].f64, &v82[1].f64[1]);
  v6 = v82[0].f64[1];
  v5 = v82[0].f64[0];
  *a2 = v82[0].f64[0];
  *(a2 + 8) = v6;
  _D11 = v82[1].f64[0];
  *(a2 + 16) = v82[1].f64[0];
  v80 = a1 + 12;
  v81 = 0xC00000004;
  v71 = COERCE_DOUBLE(&v82[1].f64[1]);
  v72 = COERCE_DOUBLE(&v80);
  if (&v82[1].f64[1] == a2 || a1 == a2)
  {
    v85 = 0uLL;
    v86 = 0.0;
    sub_24504644C(&v85, &v71);
    _Q19 = v85;
    v12 = v86;
  }

  else
  {
    v8 = a1[12];
    v9 = a1[13];
    v10 = a1[14];
    _Q19 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(0, *(&v82[1] + 8), v8), v83, v9), *&v84[1], v10);
    v12 = v82[2].f64[1] * v8 + 0.0 + v84[0] * v9 + v84[3] * v10;
  }

  *(a2 + 24) = _Q19;
  *(a2 + 40) = v12;
  v13 = v5 * v5;
  v14 = v5 * v5 + v6 * v6 + _D11 * _D11;
  if (v14 >= 0.0000002635)
  {
    v68 = v5;
    v20 = sqrt(v14);
    v69 = _Q19;
    v21 = __sincos_stret(v20);
    _Q19 = v69;
    v22 = v21.__sinval / v20;
    v5 = v68;
    _D0 = 1.0 / v14 * (1.0 - v21.__cosval);
    v16 = 1.0 / v14 * (1.0 - v22);
    v17 = v16 - _D0;
    v18 = 1.0 / v14 * (v22 + _D0 * -2.0);
    v19 = 1.0 / v14 * (_D0 + v16 * -3.0);
  }

  else
  {
    _D0 = 0.5 - v14 * (v14 / -720.0 + 0.0416666667);
    v16 = 0.166666667 - v14 * (v14 / -5040.0 + 0.00833333333);
    v17 = v14 * (v14 * -0.00119047619 + 0.0333333333) + -0.333333333;
    v18 = v14 * (v14 * -0.000148809524 + 0.00555555556) + -0.0833333333;
    v19 = v14 * (v14 * -0.0000165343915 + 0.000793650794) + -0.0166666667;
  }

  v23 = 0;
  v24 = a2 + 48;
  v25 = vmuld_lane_f64(v6, _Q19, 1);
  v26 = v5 * _Q19.f64[0] + v25 + _D11 * v12;
  v27 = (v17 + v19 * v13) * v26 + (v16 + v16) * (v5 * _Q19.f64[0]);
  v28 = (v17 + v19 * (v6 * v6)) * v26 + (v16 + v16) * v25;
  v79 = (v17 + v19 * (_D11 * _D11)) * v26 + (v16 + v16) * (_D11 * v12);
  v29 = v19 * v26;
  v30 = v6 * (v5 * (v19 * v26)) + v16 * (vmuld_lane_f64(v5, _Q19, 1) + _Q19.f64[0] * v6);
  v31 = _D11 * (v5 * v29) + v16 * (v5 * v12 + _Q19.f64[0] * _D11);
  __asm { FMLA            D17, D11, V19.D[1] }

  v37 = _D11 * (v6 * v29) + v16 * _D17;
  v38 = v18 * v26;
  v39 = _D11 * v38 + _D0 * v12;
  __asm { FMLA            D16, D0, V19.D[1] }

  v41 = v5 * v38 + _D0 * _Q19.f64[0];
  v71 = v27;
  v72 = v39 + v30;
  v73 = v31 - _D16;
  v74 = v30 - v39;
  v77 = _D16 + v31;
  v78 = v37 - v41;
  v75 = v28;
  v76 = v41 + v37;
  v42 = 0x300000000;
  v43 = 3;
  do
  {
    *(v24 + v23) = v82[0].f64[v43];
    v44 = v42 < 2;
    v45 = (v42 >> 29) & 0x7FFFFFFF8;
    if (v42 < 2)
    {
      v45 = 0;
    }

    v46 = v23 + v45;
    v47 = (v42 + 1);
    v48 = v42 & 0xFFFFFFFF00000000;
    if (!v44)
    {
      v47 = 0;
    }

    v42 = v47 | v48;
    v23 = v46 + 8;
    ++v43;
  }

  while (v23 != 144);
  v85 = *(a2 + 48);
  v49 = *(a2 + 64);
  v87 = *(a2 + 96);
  v50 = *(a2 + 112);
  v86 = v49;
  v88 = v50;
  v89 = *(a2 + 144);
  v51 = 0x300000000;
  v52 = &v85;
  v53 = 168;
  v90 = *(a2 + 160);
  do
  {
    v54 = v52->f64[0];
    v52 = (v52 + 8);
    *(v24 + v53) = v54;
    v55 = v51 < 2;
    v56 = (v51 >> 29) & 0x7FFFFFFF8;
    if (v51 < 2)
    {
      v56 = 0;
    }

    v57 = v53 + v56;
    v58 = (v51 + 1);
    v59 = v51 & 0xFFFFFFFF00000000;
    if (!v55)
    {
      v58 = 0;
    }

    v51 = v58 | v59;
    v53 = v57 + 8;
  }

  while (v53 != 312);
  v91[0] = &v82[1].f64[1];
  v80 = v91;
  v81 = &v71;
  *&v85.f64[0] = &v80;
  *&v85.f64[1] = &v82[1].f64[1];
  v70[0] = a2 + 72;
  v70[1] = 0x300000006;
  sub_24504652C(v70, &v85);
  v60 = 0x300000000;
  for (i = 144; i != 288; i = v64 + 8)
  {
    *(v24 + i) = 0;
    v62 = v60 < 2;
    v63 = (v60 >> 29) & 0x7FFFFFFF8;
    if (v60 < 2)
    {
      v63 = 0;
    }

    v64 = i + v63;
    v65 = (v60 + 1);
    v66 = v60 & 0xFFFFFFFF00000000;
    if (!v62)
    {
      v65 = 0;
    }

    v60 = v65 | v66;
  }

  v67 = *MEMORY[0x277D85DE8];
}

double sub_24504644C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = *(a2 + 8), v5 = *v4, *v4 - 8 * *(v4 + 12) == a1))
  {
    v7 = 0uLL;
    v8 = 0;
    sub_24504644C(&v7);
    result = *&v7;
    *a1 = v7;
    *(a1 + 16) = v8;
  }

  else
  {
    *a1 = *v3 * *v5 + 0.0 + v3[3] * v5[1] + v3[6] * v5[2];
    *(a1 + 8) = v3[1] * *v5 + 0.0 + v3[4] * v5[1] + v3[7] * v5[2];
    result = v3[2] * *v5 + 0.0 + v3[5] * v5[1] + v3[8] * v5[2];
    *(a1 + 16) = result;
  }

  return result;
}

void sub_24504652C(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v4 = *a1;
  if (v3 == (*a1 - 8 * *(a1 + 12)))
  {
    v33 = 0.0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    sub_245046710(&v29, a2);
    v18 = *(a1 + 8);
    if (v18)
    {
      v19 = *a1;
      v20 = *a1 + 8 * (3 * v18);
      v21 = (v18 - 3) << 32;
      v22 = &v29;
      do
      {
        v23 = *v22++;
        *v19 = v23;
        v24 = HIDWORD(v21);
        v25 = v21 < 2;
        if (v21 < 2)
        {
          v24 = 0;
        }

        v26 = &v19[v24];
        v27 = (v21 + 1);
        v28 = v21 & 0xFFFFFFFF00000000;
        if (!v25)
        {
          v27 = 0;
        }

        v21 = v27 | v28;
        v19 = v26 + 1;
      }

      while (v19 != v20);
    }
  }

  else
  {
    v5 = *a2;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0.0;
    sub_245046884(&v29, v5);
    v6 = *(a1 + 8);
    v7 = *&v29;
    v8 = *(&v30 + 1);
    v9 = *&v32;
    *v4 = *&v29 * *v3 + 0.0 + *(&v30 + 1) * v3[1] + *&v32 * v3[2];
    v10 = *(&v29 + 1);
    v11 = *&v31;
    v12 = *(&v32 + 1);
    v4[1] = *(&v29 + 1) * *v3 + 0.0 + *&v31 * v3[1] + *(&v32 + 1) * v3[2];
    v13 = *&v30;
    v14 = *(&v31 + 1);
    v15 = v33;
    v4[2] = *&v30 * *v3 + 0.0 + *(&v31 + 1) * v3[1] + v33 * v3[2];
    v16 = &v4[v6];
    *v16 = v7 * v3[3] + 0.0 + v8 * v3[4] + v9 * v3[5];
    v16[1] = v10 * v3[3] + 0.0 + v11 * v3[4] + v12 * v3[5];
    v16[2] = v13 * v3[3] + 0.0 + v14 * v3[4] + v15 * v3[5];
    v17 = &v4[(2 * v6)];
    *v17 = v7 * v3[6] + 0.0 + v8 * v3[7] + v9 * v3[8];
    v17[1] = v10 * v3[6] + 0.0 + v11 * v3[7] + v12 * v3[8];
    v17[2] = v13 * v3[6] + 0.0 + v14 * v3[7] + v15 * v3[8];
  }
}

__n128 sub_245046710(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3 == a1)
  {
    v16 = 0.0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    sub_245046710(&v12);
    v11 = v15;
    *(a1 + 32) = v14;
    *(a1 + 48) = v11;
    *(a1 + 64) = v16;
    result = v13;
    *a1 = v12;
    *(a1 + 16) = result;
  }

  else
  {
    v4 = *a2;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0.0;
    sub_245046884(&v12, v4);
    v5 = v12;
    v6 = v13;
    v7 = v15;
    *a1 = *&v12 * *v3 + 0.0 + v13.n128_f64[1] * v3[1] + *&v15 * v3[2];
    v8 = v14;
    *(a1 + 8) = *(&v5 + 1) * *v3 + 0.0 + *&v14 * v3[1] + *(&v7 + 1) * v3[2];
    v9 = v16;
    *(a1 + 16) = v6.n128_f64[0] * *v3 + 0.0 + *(&v8 + 1) * v3[1] + v16 * v3[2];
    *(a1 + 24) = *&v5 * v3[3] + 0.0 + v6.n128_f64[1] * v3[4] + *&v7 * v3[5];
    *(a1 + 32) = *(&v5 + 1) * v3[3] + 0.0 + *&v8 * v3[4] + *(&v7 + 1) * v3[5];
    *(a1 + 40) = v6.n128_f64[0] * v3[3] + 0.0 + *(&v8 + 1) * v3[4] + v9 * v3[5];
    *(a1 + 48) = *&v5 * v3[6] + 0.0 + v6.n128_f64[1] * v3[7] + *&v7 * v3[8];
    *(a1 + 56) = *(&v5 + 1) * v3[6] + 0.0 + *&v8 * v3[7] + *(&v7 + 1) * v3[8];
    result.n128_f64[0] = v6.n128_f64[0] * v3[6] + 0.0 + *(&v8 + 1) * v3[7] + v9 * v3[8];
    *(a1 + 64) = result.n128_u64[0];
  }

  return result;
}

__n128 sub_245046884(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == a1)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    sub_245046884(&v16);
    v15 = v19;
    *(a1 + 32) = v18;
    *(a1 + 48) = v15;
    *(a1 + 64) = v20;
    result = v17;
    *a1 = v16;
    *(a1 + 16) = result;
  }

  else
  {
    v4 = **a2;
    v6 = *v4;
    v5 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v10 = v4[4];
    v9 = v4[5];
    v12 = v4[6];
    v11 = v4[7];
    v13 = v4[8];
    *a1 = 0.0 - *v4 * *v3 - v8 * v3[1] - v12 * v3[2];
    *(a1 + 8) = 0.0 - v5 * *v3 - v10 * v3[1] - v11 * v3[2];
    *(a1 + 16) = 0.0 - v7 * *v3 - v9 * v3[1] - v13 * v3[2];
    *(a1 + 24) = 0.0 - v6 * v3[3] - v8 * v3[4] - v12 * v3[5];
    *(a1 + 32) = 0.0 - v5 * v3[3] - v10 * v3[4] - v11 * v3[5];
    *(a1 + 40) = 0.0 - v7 * v3[3] - v9 * v3[4] - v13 * v3[5];
    *(a1 + 48) = 0.0 - v6 * v3[6] - v8 * v3[7] - v12 * v3[8];
    *(a1 + 56) = 0.0 - v5 * v3[6] - v10 * v3[7] - v11 * v3[8];
    result.n128_f64[0] = 0.0 - v7 * v3[6] - v9 * v3[7] - v13 * v3[8];
    *(a1 + 64) = result.n128_u64[0];
  }

  return result;
}

void cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::inverse(double *a1@<X0>, uint64_t a2@<X8>)
{
  v16[2] = *MEMORY[0x277D85DE8];
  *(a2 + 64) = xmmword_24508AA60;
  *(a2 + 80) = unk_24508AA70;
  *(a2 + 96) = xmmword_24508AA80;
  *(a2 + 112) = unk_24508AA90;
  *a2 = xmmword_24508AA20;
  *(a2 + 16) = *algn_24508AA30;
  *(a2 + 32) = xmmword_24508AA40;
  *(a2 + 48) = unk_24508AA50;
  *&v14.f64[0] = a1;
  *&v14.f64[1] = 4;
  v12 = a2;
  v13 = 4;
  sub_245046B1C(&v12, &v14);
  v11[0] = a2;
  v11[1] = 4;
  v16[0] = v11;
  v10[0] = a1 + 12;
  v10[1] = 0xC00000004;
  v12 = v16;
  v13 = v10;
  if (a1 == a2)
  {
    v14 = 0uLL;
    v15 = 0.0;
    sub_245046C64(&v14, &v12);
    v7 = v14;
    v8 = v15;
  }

  else
  {
    v4 = a1[12];
    v5 = a1[13];
    v6 = a1[14];
    v7 = vmlsq_lane_f64(vmlsq_lane_f64(vmlsq_lane_f64(0, *a2, v4, 0), *(a2 + 32), v5, 0), *(a2 + 64), v6, 0);
    v8 = 0.0 - *(a2 + 16) * v4 - *(a2 + 48) * v5 - *(a2 + 80) * v6;
  }

  *(a2 + 96) = v7;
  *(a2 + 112) = v8;
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_245046B1C(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *a2;
  if (*a2 - 8 * *(a2 + 12) == *result - 8 * *(result + 12))
  {
    v14 = *(a2 + 8);
    v15 = v3[v14];
    v16 = v3[1];
    v30[0] = *v3;
    v30[1] = v15;
    v17 = v3[(v14 + 1)];
    v30[2] = v3[(2 * v14)];
    v30[3] = v16;
    v18 = v3[(2 * v14) | 1u];
    v30[4] = v17;
    v30[5] = v18;
    v19 = v3[(v14 + 2)];
    v30[6] = v3[2];
    v30[7] = v19;
    v30[8] = v3[(2 * v14 + 2)];
    v20 = *(result + 8);
    if (v20)
    {
      v21 = &v2[3 * v20];
      v22 = (v20 - 3) << 32;
      v23 = v30;
      do
      {
        v24 = *v23++;
        *v2 = v24;
        v25 = HIDWORD(v22);
        v26 = v22 < 2;
        if (v22 < 2)
        {
          v25 = 0;
        }

        v27 = &v2[v25];
        v28 = (v22 + 1);
        v29 = v22 & 0xFFFFFFFF00000000;
        if (!v26)
        {
          v28 = 0;
        }

        v22 = v28 | v29;
        v2 = v27 + 1;
      }

      while (v2 != v21);
    }
  }

  else
  {
    v4 = *(result + 8);
    if (v4)
    {
      v5 = 0;
      v6 = &v2[3 * v4];
      v7 = (v4 - 3) << 32;
      v8 = *(a2 + 8);
      do
      {
        *v2 = v3[(HIDWORD(v5) + v8 * v5)];
        if (v5 >= 2)
        {
          v5 = (v5 & 0xFFFFFFFF00000000) + 0x100000000;
        }

        else
        {
          v5 = (v5 + 1) | v5 & 0xFFFFFFFF00000000;
        }

        v9 = HIDWORD(v7);
        v10 = v7 < 2;
        if (v7 < 2)
        {
          v9 = 0;
        }

        v11 = &v2[v9];
        v12 = (v7 + 1);
        v13 = v7 & 0xFFFFFFFF00000000;
        if (!v10)
        {
          v12 = 0;
        }

        v7 = v12 | v13;
        v2 = v11 + 1;
      }

      while (v2 != v6);
    }
  }

  return result;
}

double sub_245046C64(uint64_t a1, uint64_t **a2)
{
  v3 = a2[1];
  v4 = *v3;
  if (*v3 - 8 * *(v3 + 3) == a1)
  {
    v19 = 0uLL;
    v20 = 0;
    sub_245046C64(&v19);
    result = *&v19;
    *a1 = v19;
    *(a1 + 16) = v20;
  }

  else
  {
    v5 = **a2;
    v6 = *v5;
    v7 = **v5;
    v8 = *(*v5 + 8);
    v9 = *(*v5 + 16);
    v10 = (*(v5 + 8) - 3);
    v11 = &v6[v10];
    v12 = v11[3];
    v13 = v11[4];
    v11 += 3;
    v14 = v11[2];
    v15 = &v11[v10];
    v16 = v15[4];
    v17 = v15[5];
    *a1 = 0.0 - v7 * *v4 - v12 * v4[1] - v15[3] * v4[2];
    *(a1 + 8) = 0.0 - v8 * *v4 - v13 * v4[1] - v16 * v4[2];
    result = 0.0 - v9 * *v4 - v14 * v4[1] - v17 * v4[2];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::adjoint@<X0>(uint64_t result@<X0>, float64x2_t *a2@<X8>, int64x2_t a3@<Q2>)
{
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  if (result == a2)
  {
    v17 = 0;
    v63 = *result;
    *v64 = *(result + 16);
    *&v64[8] = *(result + 32);
    *&v64[24] = *(result + 48);
    v65 = *(result + 64);
    v18 = 0x300000000;
    v19 = &v63;
    v66 = *(result + 80);
    do
    {
      v20 = v19->f64[0];
      v19 = (v19 + 8);
      *(a2->f64 + v17) = v20;
      v21 = v18 < 2;
      v22 = (v18 >> 29) & 0x7FFFFFFF8;
      if (v18 < 2)
      {
        v22 = 0;
      }

      v23 = v17 + v22;
      v24 = (v18 + 1);
      v25 = v18 & 0xFFFFFFFF00000000;
      if (!v21)
      {
        v24 = 0;
      }

      v18 = v24 | v25;
      v17 = v23 + 8;
    }

    while (v17 != 144);
  }

  else
  {
    v3 = 0;
    v4 = 0x100000000;
    v5 = 0x300000000;
    v6 = result;
    do
    {
      *(a2->f64 + v3) = *v6;
      v7 = HIDWORD(v4);
      v8 = v4 < 2;
      if (v4 < 2)
      {
        v7 = 0;
      }

      v9 = &v6[v7];
      v10 = (v4 + 1);
      v11 = v4 & 0xFFFFFFFF00000000;
      if (!v8)
      {
        v10 = 0;
      }

      v4 = v10 | v11;
      v6 = v9 + 1;
      v12 = v5 < 2;
      v13 = (v5 >> 29) & 0x7FFFFFFF8;
      if (v5 < 2)
      {
        v13 = 0;
      }

      v14 = v3 + v13;
      v15 = (v5 + 1);
      v16 = v5 & 0xFFFFFFFF00000000;
      if (!v12)
      {
        v15 = 0;
      }

      v5 = v15 | v16;
      v3 = v14 + 8;
    }

    while (v3 != 144);
  }

  v63 = *a2;
  *v64 = a2[1].f64[0];
  *&v64[8] = a2[3];
  *&v64[24] = a2[4].f64[0];
  v65 = a2[6];
  v26 = 0x300000000;
  v27 = &v63;
  v28 = 168;
  v66 = a2[7].f64[0];
  do
  {
    v29 = v27->f64[0];
    v27 = (v27 + 8);
    *(a2->f64 + v28) = v29;
    v30 = v26 < 2;
    v31 = (v26 >> 29) & 0x7FFFFFFF8;
    if (v26 < 2)
    {
      v31 = 0;
    }

    v32 = v28 + v31;
    v33 = (v26 + 1);
    v34 = v26 & 0xFFFFFFFF00000000;
    if (!v30)
    {
      v33 = 0;
    }

    v26 = v33 | v34;
    v28 = v32 + 8;
  }

  while (v28 != 312);
  v35.f64[0] = *(result + 96);
  a3.i64[0] = *(result + 48);
  v36 = *(result + 64);
  v37 = *(result + 104);
  v38 = *(result + 8);
  *&v39.f64[0] = vdupq_laneq_s64(v38, 1).u64[0];
  v39.f64[1] = *result;
  *&v40.f64[0] = vextq_s8(v37, v37, 8uLL).u64[0];
  v40.f64[1] = v35.f64[0];
  v41 = *(result + 72);
  v42 = v35.f64[0] * v41.f64[0];
  *&v35.f64[1] = a3.i64[0];
  v43 = vsubq_f64(vmulq_f64(v37, v39), vmulq_f64(v40, v38));
  v44 = vmulq_f64(v35, vzip1q_s64(v38, v37));
  v45 = *(result + 32);
  v46 = vsubq_f64(vmulq_f64(v40, v45), vmulq_f64(*(result + 96), vzip1q_s64(a3, v45)));
  v45.f64[0] = *result;
  v63 = v43;
  *v64 = vsubq_f64(v44, vmulq_f64(v37, v45));
  *&v44.f64[0] = vdupq_laneq_s64(v41, 1).u64[0];
  v44.f64[1] = v36;
  *&v64[16] = v46;
  v65 = vsubq_f64(vmulq_f64(v37, v44), vmulq_f64(v40, v41));
  v66 = v42 - v36 * v37.f64[0];
  v47 = 0x300000000;
  v48 = &v63;
  for (i = 24; i != 168; i = v53 + 8)
  {
    v50 = v48->f64[0];
    v48 = (v48 + 8);
    *(a2->f64 + i) = v50;
    v51 = v47 < 2;
    v52 = (v47 >> 29) & 0x7FFFFFFF8;
    if (v47 < 2)
    {
      v52 = 0;
    }

    v53 = i + v52;
    v54 = (v47 + 1);
    v55 = v47 & 0xFFFFFFFF00000000;
    if (!v51)
    {
      v54 = 0;
    }

    v47 = v54 | v55;
  }

  v56 = 0x300000000;
  for (j = 144; j != 288; j = v60 + 8)
  {
    *(a2->f64 + j) = 0.0;
    v58 = v56 < 2;
    v59 = (v56 >> 29) & 0x7FFFFFFF8;
    if (v56 < 2)
    {
      v59 = 0;
    }

    v60 = j + v59;
    v61 = (v56 + 1);
    v62 = v56 & 0xFFFFFFFF00000000;
    if (!v58)
    {
      v61 = 0;
    }

    v56 = v61 | v62;
  }

  return result;
}

uint64_t sub_245047118(uint64_t result, double *a2, float64x2_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = v5 * *result;
  v7 = v5 * *(result + 8);
  v8 = v5 * *(result + 16);
  a3->f64[0] = *a2 + v6 * *result;
  a3[2].f64[1] = v3 + v7 * *(result + 8);
  a3[5].f64[0] = v3 + v8 * *(result + 16);
  v9 = *(result + 8);
  v10 = v6 * v9;
  v11 = *(result + 16);
  v12 = v6 * v11;
  v13 = v7 * v11;
  v14 = v4 * *result;
  v15 = v4 * v9;
  v16 = v4 * v11;
  a3[2].f64[0] = v10 - v16;
  a3[4].f64[0] = v15 + v12;
  a3[4].f64[1] = v13 - v14;
  a3->f64[1] = v10 + v16;
  a3[1].f64[0] = v12 - v15;
  a3[3].f64[0] = v13 + v14;
  v17 = *(result + 8);
  v18 = *(result + 16);
  v19 = *(result + 24);
  v20 = *(result + 32);
  v21 = *(result + 40);
  v22 = v17 * v21 - v18 * v20;
  v23 = v18 * v19 - *result * v21;
  v24 = *result * v20 - v17 * v19;
  *&v32[16] = v24;
  v26 = a2[2];
  v25 = a2[3];
  if (result == a3)
  {
    v28 = v21 + v26 * v24;
    v29 = *(result + 8);
    *&v30.f64[0] = vdupq_laneq_s64(v29, 1).u64[0];
    v30.f64[1] = *result;
    v31 = vnegq_f64(v30);
    *&v30.f64[0] = vdupq_laneq_s64(*&v32[8], 1).u64[0];
    v30.f64[1] = v22;
    v27 = v25 * (*result * *&v32[8] - v29.f64[0] * v22) + v28;
    a3[6] = vaddq_f64(vaddq_f64(*(result + 24), vmulq_n_f64(*v32, v26)), vmulq_n_f64(vmlaq_f64(vmulq_f64(*&v32[8], v31), v30, v29), v25));
  }

  else
  {
    a3[6].f64[0] = v19 + v22 * v26 + v25 * (v17 * v24 - v18 * v23);
    a3[6].f64[1] = *(result + 32) + v23 * v26 + v25 * (*(result + 16) * v22 - *result * v24);
    v27 = *(result + 40) + v24 * v26 + v25 * (*result * v23 - *(result + 8) * v22);
  }

  a3[7].f64[0] = v27;
  return result;
}

uint64_t cva::SE3AlgebraStorage<double,cva::Matrix<double,6u,1u,false>>::exp@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = xmmword_24508AA60;
  *(a2 + 80) = unk_24508AA70;
  *(a2 + 96) = xmmword_24508AA80;
  *(a2 + 112) = unk_24508AA90;
  *a2 = xmmword_24508AA20;
  *(a2 + 16) = *algn_24508AA30;
  *(a2 + 32) = xmmword_24508AA40;
  *(a2 + 48) = unk_24508AA50;
  v3 = vmulq_f64(*(a1 + 8), *(a1 + 8));
  v4 = *a1 * *a1 + v3.f64[0] + v3.f64[1];
  if (v4 >= 0.0000002635)
  {
    v12 = sqrt(v4);
    v13 = a1;
    v17 = *a1 * *a1 + v3.f64[0] + v3.f64[1];
    v14 = __sincos_stret(v12);
    v11.f64[0] = v14.__cosval;
    a1 = v13;
    v11.f64[1] = v14.__sinval / v12;
    __asm { FMOV            V0.2D, #1.0 }

    v5 = vmulq_n_f64(vsubq_f64(_Q0, v11), 1.0 / v17);
  }

  else
  {
    v5 = vmlsq_lane_f64(xmmword_24508A7F0, vaddq_f64(vdivq_f64(vdupq_lane_s64(*&v4, 0), xmmword_24508A7D0), xmmword_24508A7E0), v4, 0);
    __asm { FMOV            V1.2D, #1.0 }

    v11 = vmlsq_lane_f64(_Q1, v5, v4, 0);
  }

  v18[0] = v11;
  v18[1] = v5;
  return sub_245047118(a1, v18, a2);
}

double cva::SE3GroupStorage<float,cva::MatrixRef<float const,4u,4u,false>>::SE3GroupStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 4;
  a1[1] = 4;
  return result;
}

{
  *a1 = a2;
  *&result = 4;
  a1[1] = 4;
  return result;
}

{
  *a1 = a2;
  *&result = 4;
  a1[1] = 4;
  return result;
}

{
  *a1 = a2;
  *&result = 4;
  a1[1] = 4;
  return result;
}

uint64_t *cva::SE3GroupStorage<float,cva::MatrixRef<float const,4u,4u,false>>::affine@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v4 = *(result + 2);
  v3 = *(result + 3);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 28) = 0u;
  v5 = &v2[-v3];
  v6 = (v4 - 3);
  v7 = *v2;
  if (v5 == a2)
  {
    *&v14 = *(v2 + 1);
    v15 = v6;
    v16 = &v2[v15];
    v17 = *(v16 + 3);
    v16 += 3;
    LODWORD(v18) = v16[2];
    v19 = &v16[v15];
    DWORD1(v18) = v19[3];
    v20 = &v19[v15 + 3];
    *(&v14 + 1) = v17;
    *(&v18 + 1) = *(v19 + 2);
    v21 = *(v20 + 20);
    v22 = *(v20 + 12);
    *a2 = v7;
    *(a2 + 4) = v14;
    *(a2 + 20) = v18;
    *(a2 + 36) = v22;
    *(a2 + 44) = v21;
  }

  else
  {
    *a2 = v7;
    *(a2 + 4) = v2[1];
    *(a2 + 8) = v2[2];
    v8 = v6;
    v9 = &v2[v8];
    v10 = v9[3];
    v9 += 3;
    *(a2 + 12) = v10;
    *(a2 + 16) = v9[1];
    *(a2 + 20) = v9[2];
    v11 = &v9[v8];
    v12 = v11[3];
    v11 += 3;
    *(a2 + 24) = v12;
    *(a2 + 28) = v11[1];
    *(a2 + 32) = v11[2];
    v13 = &v11[v8];
    *(a2 + 36) = v13[3];
    *(a2 + 40) = v13[4];
    *(a2 + 44) = v13[5];
  }

  return result;
}

float *cva::SE3GroupStorage<float,cva::MatrixRef<float const,4u,4u,false>>::transform@<X0>(void *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v14[0] = v13;
  v14[1] = a2;
  v5 = v13[0] - 4 * HIDWORD(v4);
  v6 = (v5 + 4 * (3 * v4 + HIDWORD(v4)));
  v15 = 0;
  v16 = 0.0;
  result = sub_245038EEC(&v15, v14);
  *a3 = 0;
  v8 = *&v15 + *v6;
  if (v5 == a3)
  {
    v11 = *(&v15 + 1) + v6[1];
    v10 = v16 + v6[2];
    *a3 = v8;
    *(a3 + 4) = v11;
  }

  else
  {
    *a3 = v8;
    v9 = v16;
    *(a3 + 4) = *(&v15 + 1) + v6[1];
    v10 = v9 + v6[2];
  }

  *(a3 + 8) = v10;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

float cva::SE3GroupStorage<float,cva::MatrixRef<float const,4u,4u,false>>::inverseTransform@<S0>(void *a1@<X0>, uint64_t *a2@<X1>, float32x2_t *a3@<X8>)
{
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v13 = v12;
  v14[0] = &v13;
  v14[1] = a2;
  v9[0] = v12[0];
  v9[1] = v4;
  v10 = v9;
  v6 = v12[0] - 4 * HIDWORD(v4) + 4 * (3 * v4 + HIDWORD(v4));
  v7 = v4;
  v8 = 3 * v4 + HIDWORD(v4);
  v11[0] = &v10;
  v11[1] = &v6;
  v16 = 0.0;
  v15 = 0;
  sub_245039034(&v15, v14);
  v18 = 0.0;
  v17 = 0;
  sub_2450431AC(&v17, v11);
  *a3 = vsub_f32(v15, v17);
  result = v16 - v18;
  a3[1].f32[0] = v16 - v18;
  return result;
}

void cva::SE3GroupStorage<float,cva::MatrixRef<float const,4u,4u,false>>::transformJacobian(float32x2_t *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (a1 == a2)
  {
    v11 = 0;
    v12 = 0;
    v13 = a1[1].f32[0];
    v14 = v29;
    v15 = *a1;
    v29[2] = HIDWORD(*a1);
    v29[0] = 0;
    *&v29[1] = -v13;
    *&v29[3] = v13;
    v29[4] = 0;
    v30 = vneg_f32(v15);
    v31 = v15.i32[0];
    v32 = 0;
    do
    {
      v16 = *v14++;
      *(a2 + v11) = v16;
      v17 = v12 < 2;
      v18 = (v12 >> 30) & 0x3FFFFFFFCLL;
      if (v12 < 2)
      {
        v18 = 0;
      }

      v19 = v11 + v18;
      v20 = (v12 + 1);
      v21 = v12 & 0xFFFFFFFF00000000;
      if (!v17)
      {
        v20 = 0;
      }

      v12 = v20 | v21;
      v11 = v19 + 4;
    }

    while (v11 != 36);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v10 = 0.0;
      if (HIDWORD(v4) != v4)
      {
        v10 = a1->f32[dword_24508AAD0[(HIDWORD(v4) + 4 * v4)]] * flt_24508AAA0[(HIDWORD(v4) + 4 * v4)];
      }

      *(a2 + v2) = v10;
      if (v4 >= 2)
      {
        v4 = (v4 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v4 = (v4 + 1) | v4 & 0xFFFFFFFF00000000;
      }

      v5 = v3 < 2;
      v6 = (v3 >> 30) & 0x3FFFFFFFCLL;
      if (v3 < 2)
      {
        v6 = 0;
      }

      v7 = v2 + v6;
      v8 = (v3 + 1);
      v9 = v3 & 0xFFFFFFFF00000000;
      if (!v5)
      {
        v8 = 0;
      }

      v3 = v8 | v9;
      v2 = v7 + 4;
    }

    while (v2 != 36);
  }

  v22 = 0;
  for (i = 36; i != 72; i = v26 + 4)
  {
    *(a2 + i) = 0;
    v24 = v22 < 2;
    v25 = (v22 >> 30) & 0x3FFFFFFFCLL;
    if (v22 < 2)
    {
      v25 = 0;
    }

    v26 = i + v25;
    v27 = (v22 + 1);
    v28 = v22 & 0xFFFFFFFF00000000;
    if (!v24)
    {
      v27 = 0;
    }

    v22 = v27 | v28;
  }

  *(a2 + 36) = 1065353216;
  *(a2 + 52) = 1065353216;
  *(a2 + 68) = 1065353216;
}

uint64_t cva::SE3GroupStorage<float,cva::MatrixRef<float const,4u,4u,false>>::inverseTransformJacobian@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, int32x4_t a4@<Q5>)
{
  v4 = 0;
  v5 = 0;
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v6 = *a1;
  v7 = a1[1];
  v8.i64[0] = **a1;
  v9 = 4 * (v7 - 3);
  v8.i32[2] = *(*a1 + 2);
  v10 = *a1 + v9;
  v11.i64[0] = *(v10 + 16);
  v10 += 12;
  v8.i32[3] = *v10;
  v12 = v10 + v9;
  a4.i64[0] = *(a2 + 4);
  v13 = (*(v12 + 12) * *a4.i32) - (*a2 * COERCE_FLOAT(*(v12 + 16)));
  v14.i64[0] = v11.i64[0];
  v14.i64[1] = *(v12 + 16);
  v15 = a4;
  v15.i32[2] = *a2;
  v16 = v15;
  v16.i32[3] = *a2;
  v15.i32[3] = a4.i32[0];
  v17 = vmulq_f32(v8, v15);
  v18 = vmulq_f32(v14, vuzp2q_s32(v16, v16));
  v19 = vuzp1q_s32(vextq_s8(v17, v17, 8uLL), vuzp2q_s32(v17, v18));
  v20 = vrev64q_s32(v18);
  v20.i32[0] = v17.i32[3];
  v11.i32[2] = *(v12 + 12);
  v11.i32[3] = HIDWORD(*(v12 + 16));
  v21 = vuzp2q_s32(a4, vzip1q_s32(a4, a4));
  v22 = v21;
  v22.i32[1] = *a2;
  v23 = vuzp1q_s32(v22, v22);
  v22.i32[3] = v21.i32[0];
  v23.i32[0] = *a2;
  v24 = vsubq_f32(v20, vmulq_f32(v11, v23));
  v25 = vsubq_f32(v19, vmulq_f32(v8, v22));
  v26 = vextq_s8(vuzp2q_s32(vuzp1q_s32(v25, v25), v24), v25, 4uLL);
  v27 = vtrn2q_s32(v25, vtrn1q_s32(v25, v24));
  v37[1] = vextq_s8(v27, v27, 8uLL);
  v37[0] = v26;
  v38 = v13;
  v28 = v37;
  do
  {
    v29 = *v28++;
    *(a3 + v4) = v29;
    v30 = v5 < 2;
    v31 = (v5 >> 30) & 0x3FFFFFFFCLL;
    if (v5 < 2)
    {
      v31 = 0;
    }

    v32 = v4 + v31;
    v33 = (v5 + 1);
    v34 = v5 & 0xFFFFFFFF00000000;
    if (!v30)
    {
      v33 = 0;
    }

    v5 = v33 | v34;
    v4 = v32 + 4;
  }

  while (v4 != 36);
  *&v37[0] = v6;
  *(&v37[0] + 1) = v7;
  v36[0] = a3 + 36;
  v36[1] = 0x900000003;
  return sub_245043558(v36, v37);
}

void cva::SE3GroupStorage<float,cva::MatrixRef<float const,4u,4u,false>>::logJacobian(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86[2] = *MEMORY[0x277D85DE8];
  *(a2 + 152) = 0u;
  *(a2 + 140) = 0u;
  *(a2 + 124) = 0u;
  *(a2 + 108) = 0u;
  *(a2 + 92) = 0u;
  *(a2 + 76) = 0u;
  *(a2 + 60) = 0u;
  *(a2 + 44) = 0u;
  *(a2 + 28) = 0u;
  *(a2 + 12) = 0u;
  v3 = *a1;
  v4 = *(a1 + 8);
  v83 = 0u;
  memset(v82, 0, sizeof(v82));
  sub_245039258(v3, v4, v82, (v82 | 0xC));
  v5 = *&v82[0];
  *a2 = *&v82[0];
  v6 = *(v82 + 2);
  *(a2 + 8) = DWORD2(v82[0]);
  v7 = &v3[-HIDWORD(v4)];
  v8 = 3 * v4 + HIDWORD(v4);
  v9 = &v7[v8];
  v76 = v9;
  v77 = v4 | (v8 << 32);
  *&v84[0] = v82 | 0xC;
  *(&v84[0] + 1) = &v76;
  v71 = v6;
  v72 = v5;
  if ((v82 | 0xC) == a2 || v7 == a2)
  {
    LODWORD(v75) = 0;
    v74 = 0;
    sub_245043E0C(&v74, v84);
    v6 = v71;
    v5 = v72;
    v12 = v74;
    v13 = *&v75;
  }

  else
  {
    v10 = v9[1];
    v11 = v9[2];
    v12 = vmla_n_f32(vmla_n_f32(vmla_n_f32(0, *(v82 + 12), *v9), *(&v82[1] + 8), v10), *(&v83 + 4), v11);
    v13 = (((*(&v82[1] + 1) * *v9) + 0.0) + (*&v83 * v10)) + (*(&v83 + 3) * v11);
  }

  *(a2 + 12) = v12;
  *(a2 + 20) = v13;
  v14 = vmul_f32(v5, v5);
  v15 = v14.f32[1];
  v16 = v6 * v6;
  v17 = vaddv_f32(v14) + (v6 * v6);
  if (v17 >= 0.0061)
  {
    v23 = sqrtf(v17);
    v69 = v13;
    v70 = v12;
    v68 = v14.i32[0];
    v24 = __sincosf_stret(v23);
    v14.i32[0] = v68;
    v13 = v69;
    v12 = v70;
    v6 = v71;
    v5 = v72;
    v18 = (1.0 / v17) * (1.0 - v24.__cosval);
    v19 = (1.0 / v17) * (1.0 - (v24.__sinval / v23));
    v20 = v19 - v18;
    v21 = (1.0 / v17) * ((v24.__sinval / v23) + (v18 * -2.0));
    v22 = (1.0 / v17) * (v18 + (v19 * -3.0));
  }

  else
  {
    v18 = 0.5 - (v17 * ((v17 / -720.0) + 0.041667));
    v19 = 0.16667 - (v17 * ((v17 / -5040.0) + 0.0083333));
    v20 = (v17 * ((v17 * -0.0011905) + 0.033333)) + -0.33333;
    v21 = (v17 * ((v17 * -0.00014881) + 0.0055556)) + -0.083333;
    v22 = (v17 * ((v17 * -0.000016534) + 0.00079365)) + -0.016667;
  }

  v25 = 0;
  v26 = a2 + 24;
  v27 = vmul_f32(v5, v12).f32[0];
  v28 = vmuls_lane_f32(v5.f32[1], v12, 1);
  v29 = (v27 + v28) + (v6 * v13);
  v30 = ((v20 + (v22 * v14.f32[0])) * v29) + ((v19 + v19) * v27);
  v31 = ((v20 + (v22 * v15)) * v29) + ((v19 + v19) * v28);
  v32 = ((v20 + (v22 * v16)) * v29) + ((v19 + v19) * (v6 * v13));
  v33 = v22 * v29;
  v34 = v21 * v29;
  v35 = (v6 * v34) + (v18 * v13);
  v36 = vmul_n_f32(v5, v33);
  v37 = vmuls_lane_f32(v36.f32[0], v5, 1) + (v19 * (vmuls_lane_f32(v5.f32[0], v12, 1) + (v12.f32[0] * v5.f32[1])));
  v38 = vrev64_s32(vmla_n_f32(vmul_n_f32(v36, v6), vmla_n_f32(vmul_n_f32(v5, v13), v12, v6), v19));
  v39 = vmla_n_f32(vmul_n_f32(v5, v34), v12, v18);
  *(&v77 + 1) = v37 - v35;
  v78 = v31;
  *&v76 = v30;
  *(&v76 + 1) = v35 + v37;
  v40 = vsub_f32(v38, v39);
  LODWORD(v77) = v40.i32[1];
  v80 = v40.i32[0];
  v81 = v32;
  v79 = vadd_f32(v39, v38);
  v41 = 0x300000000;
  v42 = 12;
  do
  {
    *(v26 + v25) = *(v82 + v42);
    v43 = v41 < 2;
    v44 = (v41 >> 30) & 0x3FFFFFFFCLL;
    if (v41 < 2)
    {
      v44 = 0;
    }

    v45 = v25 + v44;
    v46 = (v41 + 1);
    v47 = v41 & 0xFFFFFFFF00000000;
    if (!v43)
    {
      v46 = 0;
    }

    v41 = v46 | v47;
    v25 = v45 + 4;
    v42 += 4;
  }

  while (v25 != 72);
  v48 = *(a2 + 24);
  HIDWORD(v48) = *(a2 + 48);
  v49 = *(a2 + 52);
  v50 = *(a2 + 72);
  *(&v49 + 1) = *(a2 + 72);
  v84[0] = v48;
  v84[1] = v49;
  v51 = v84;
  v85 = DWORD2(v50);
  v52 = 0x300000000;
  for (i = 84; i != 156; i = v57 + 4)
  {
    v54 = *v51++;
    *(v26 + i) = v54;
    v55 = v52 < 2;
    v56 = (v52 >> 30) & 0x3FFFFFFFCLL;
    if (v52 < 2)
    {
      v56 = 0;
    }

    v57 = i + v56;
    v58 = (v52 + 1);
    v59 = v52 & 0xFFFFFFFF00000000;
    if (!v55)
    {
      v58 = 0;
    }

    v52 = v58 | v59;
  }

  v86[0] = v82 | 0xC;
  v74 = v86;
  v75 = &v76;
  *&v84[0] = &v74;
  *(&v84[0] + 1) = v82 | 0xC;
  v73[0] = a2 + 36;
  v73[1] = 0x300000006;
  sub_245043EEC(v73, v84);
  v60 = 0x300000000;
  for (j = 72; j != 144; j = v64 + 4)
  {
    *(v26 + j) = 0;
    v62 = v60 < 2;
    v63 = (v60 >> 30) & 0x3FFFFFFFCLL;
    if (v60 < 2)
    {
      v63 = 0;
    }

    v64 = j + v63;
    v65 = (v60 + 1);
    v66 = v60 & 0xFFFFFFFF00000000;
    if (!v62)
    {
      v65 = 0;
    }

    v60 = v65 | v66;
  }

  v67 = *MEMORY[0x277D85DE8];
}

uint64_t cva::SE3GroupStorage<float,cva::MatrixRef<float const,4u,4u,false>>::inverse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[2] = *MEMORY[0x277D85DE8];
  *a2 = xmmword_24508A9E0;
  *(a2 + 16) = unk_24508A9F0;
  *(a2 + 32) = xmmword_24508AA00;
  *(a2 + 48) = unk_24508AA10;
  v4 = *(a1 + 8);
  v21 = *a1;
  v22 = v4;
  v25[0] = a2;
  v25[1] = 4;
  result = sub_2450444A8(v25, &v21);
  v20[0] = a2;
  v20[1] = 4;
  v25[0] = v20;
  v7 = *(a1 + 8);
  v6 = *(a1 + 12);
  v8 = *a1 - 4 * v6;
  v9 = (3 * v7 + v6);
  v10 = (v8 + 4 * v9);
  v19[0] = v10;
  v19[1] = v7 | (v9 << 32);
  v21 = v25;
  v22 = v19;
  if (v8 == a2)
  {
    v24 = 0.0;
    v23 = 0;
    result = sub_2450445F0(&v23, &v21);
    *(a2 + 48) = v23;
    v17 = v24;
  }

  else
  {
    v11 = *(a2 + 4);
    v12 = *(a2 + 8);
    v13 = *(a2 + 20);
    v14 = *(a2 + 24);
    v15 = *(a2 + 36);
    v16 = *(a2 + 40);
    *(a2 + 48) = ((0.0 - (*a2 * *v10)) - (*(a2 + 16) * v10[1])) - (*(a2 + 32) * v10[2]);
    *(a2 + 52) = ((0.0 - (v11 * *v10)) - (v13 * v10[1])) - (v15 * v10[2]);
    v17 = ((0.0 - (v12 * *v10)) - (v14 * v10[1])) - (v16 * v10[2]);
  }

  *(a2 + 56) = v17;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t cva::SE3GroupStorage<float,cva::MatrixRef<float const,4u,4u,false>>::adjoint@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q3>, int8x16_t a4@<Q4>, int8x16_t a5@<Q6>)
{
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = *result;
  v6 = *(result + 8);
  v7 = *result - 4 * HIDWORD(v6);
  if (v7 == a2)
  {
    v21 = 0;
    v22.i64[0] = *v5;
    v23 = (v6 - 3);
    v22.i32[2] = v5[2];
    v24 = &v5[v23 + 3];
    v22.i32[3] = *v24;
    v25 = &v24[v23];
    *&v26 = *&v5[v23 + 4];
    *(&v26 + 1) = *(v25 + 3);
    v81 = v22;
    *v82 = v26;
    *&v82[16] = v25[5];
    v27 = 0x300000000;
    v28 = &v81;
    do
    {
      v29 = v28->i32[0];
      v28 = (v28 + 4);
      *(a2 + v21) = v29;
      v30 = v27 < 2;
      v31 = (v27 >> 30) & 0x3FFFFFFFCLL;
      if (v27 < 2)
      {
        v31 = 0;
      }

      v32 = v21 + v31;
      v33 = (v27 + 1);
      v34 = v27 & 0xFFFFFFFF00000000;
      if (!v30)
      {
        v33 = 0;
      }

      v27 = v33 | v34;
      v21 = v32 + 4;
    }

    while (v21 != 72);
  }

  else
  {
    v8 = 0;
    v9 = (v6 << 32) - 0x300000000;
    v10 = 0x300000000;
    v11 = *result;
    do
    {
      *(a2 + v8) = *v11;
      v12 = HIDWORD(v9);
      v13 = v9 < 2;
      if (v9 < 2)
      {
        v12 = 0;
      }

      v14 = &v11[v12];
      v15 = (v9 + 1);
      v16 = v9 & 0xFFFFFFFF00000000;
      if (!v13)
      {
        v15 = 0;
      }

      v9 = v15 | v16;
      v11 = v14 + 1;
      v17 = v10 < 2;
      v18 = (v10 >> 30) & 0x3FFFFFFFCLL;
      if (v10 < 2)
      {
        v18 = 0;
      }

      v19 = v8 + v18;
      result = (v10 + 1);
      v20 = v10 & 0xFFFFFFFF00000000;
      if (!v17)
      {
        result = 0;
      }

      v10 = result | v20;
      v8 = v19 + 4;
    }

    while (v8 != 72);
  }

  v35 = *a2;
  v35.i32[3] = *(a2 + 24);
  v37 = *(a2 + 28);
  v36 = *(a2 + 48);
  v37.i64[1] = *(a2 + 48);
  v81 = v35;
  *v82 = v37;
  v38 = &v81;
  *&v82[16] = DWORD2(v36);
  v39 = 0x300000000;
  for (i = 84; i != 156; i = v44 + 4)
  {
    v41 = v38->i32[0];
    v38 = (v38 + 4);
    *(a2 + i) = v41;
    v42 = v39 < 2;
    v43 = (v39 >> 30) & 0x3FFFFFFFCLL;
    if (v39 < 2)
    {
      v43 = 0;
    }

    v44 = i + v43;
    v45 = (v39 + 1);
    v46 = v39 & 0xFFFFFFFF00000000;
    if (!v42)
    {
      v45 = 0;
    }

    v39 = v45 | v46;
  }

  v47 = v7 + 4 * (3 * v6 + HIDWORD(v6));
  v37.i32[0] = *v47;
  v35.i64[0] = *(v47 + 4);
  v48 = v6 - 3;
  a3.i64[0] = *v5;
  v49 = v5 + 2;
  v50 = v48;
  v51 = &v5[v50];
  v52 = v51[3];
  a4.i32[0] = v51[4];
  v51 += 3;
  v53 = &v51[v50];
  a5.i64[0] = *(v53 + 3);
  v54 = vmuls_lane_f32(v52, *v35.i8, 1) - (*v47 * v51[2]);
  v55 = vuzp2q_s32(v35, vzip1q_s32(v35, v35));
  v56 = v55;
  v56.i32[1] = *v47;
  v57.f32[0] = v53[5];
  v56.i32[3] = v55.i32[2];
  a3.i32[2] = *v49;
  v58 = a3;
  v58.f32[3] = v51[2];
  v59 = vmulq_f32(v56, v58);
  v56.i64[0] = v35.i64[0];
  v56.i32[2] = *v47;
  v56.i32[3] = v35.i32[1];
  a3.i32[3] = a4.i32[0];
  v60 = vsubq_f32(vzip2q_s32(vzip1q_s32(v59, vextq_s8(v59, v59, 0xCuLL)), v59), vmulq_f32(v56, a3));
  v81 = vzip2q_s32(vzip1q_s32(v60, vextq_s8(v60, v60, 0xCuLL)), v60);
  *v82 = v54;
  v61 = vzip1q_s32(v37, vrev64q_s32(v35));
  v61.i32[2] = v61.i32[0];
  v62 = vextq_s8(vextq_s8(a4, a4, 4uLL), a5, 0xCuLL);
  v62.i32[3] = v57.i32[0];
  v63 = vextq_s8(vextq_s8(v37, v37, 4uLL), v35, 0xCuLL);
  v63.i32[3] = v63.i32[1];
  v57.f32[1] = v52;
  *&v57.u32[2] = vrev64_s32(*a5.i8);
  v64 = vsubq_f32(vrev64q_s32(vmulq_f32(v61, v62)), vmulq_f32(v63, v57));
  *&v82[4] = vzip2q_s32(vzip1q_s32(v64, vextq_s8(v64, v64, 0xCuLL)), v64);
  v65 = 0x300000000;
  v66 = &v81;
  for (j = 12; j != 84; j = v71 + 4)
  {
    v68 = v66->i32[0];
    v66 = (v66 + 4);
    *(a2 + j) = v68;
    v69 = v65 < 2;
    v70 = (v65 >> 30) & 0x3FFFFFFFCLL;
    if (v65 < 2)
    {
      v70 = 0;
    }

    v71 = j + v70;
    v72 = (v65 + 1);
    v73 = v65 & 0xFFFFFFFF00000000;
    if (!v69)
    {
      v72 = 0;
    }

    v65 = v72 | v73;
  }

  v74 = 0x300000000;
  for (k = 72; k != 144; k = v78 + 4)
  {
    *(a2 + k) = 0;
    v76 = v74 < 2;
    v77 = (v74 >> 30) & 0x3FFFFFFFCLL;
    if (v74 < 2)
    {
      v77 = 0;
    }

    v78 = k + v77;
    v79 = (v74 + 1);
    v80 = v74 & 0xFFFFFFFF00000000;
    if (!v76)
    {
      v79 = 0;
    }

    v74 = v79 | v80;
  }

  return result;
}

uint64_t cva::SE3GroupStorage<float,cva::MatrixRef<float const,4u,4u,false>>::serialize(uint64_t result)
{
  v1 = *(result + 8);
  if (4 * v1)
  {
    v2 = *result;
    v3 = *result + 4 * (4 * v1);
    v4 = (v1 - 4) << 32;
    do
    {
      v8 = *v2;
      result = std::ostream::write();
      v5 = HIDWORD(v4);
      if (v4 < 3)
      {
        v5 = 0;
      }

      v6 = &v2[v5];
      v7 = (v4 + 1);
      if (v4 >= 3)
      {
        v7 = 0;
      }

      v4 = v7 | v4 & 0xFFFFFFFF00000000;
      v2 = v6 + 1;
    }

    while (v6 + 1 != v3);
  }

  return result;
}

double cva::SE3GroupStorage<double,cva::MatrixRef<double const,4u,4u,false>>::SE3GroupStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 4;
  a1[1] = 4;
  return result;
}

{
  *a1 = a2;
  *&result = 4;
  a1[1] = 4;
  return result;
}

{
  *a1 = a2;
  *&result = 4;
  a1[1] = 4;
  return result;
}

{
  *a1 = a2;
  *&result = 4;
  a1[1] = 4;
  return result;
}

uint64_t **cva::SE3GroupStorage<double,cva::MatrixRef<double const,4u,4u,false>>::affine@<X0>(uint64_t **result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v4 = *(result + 2);
  v3 = *(result + 3);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  v5 = &v2[-v3];
  v6 = (v4 - 3);
  v7 = *v2;
  if (v5 == a2)
  {
    v14 = v6;
    v15 = *&v2[v14 + 3];
    v16 = v2[v14 + 5];
    v17 = &v2[v14 + 3 + v14];
    v18 = *(v17 + 24);
    v17 += 24;
    v19 = *(v17 + 16);
    v20 = v17 + v14 * 8;
    v21 = *(v20 + 40);
    v22 = *(v2 + 1);
    v23 = *(v20 + 24);
    *a2 = v7;
    *(a2 + 8) = v22;
    *(a2 + 24) = v15;
    *(a2 + 40) = v16;
    *(a2 + 48) = v18;
    *(a2 + 64) = v19;
    *(a2 + 72) = v23;
    *(a2 + 88) = v21;
  }

  else
  {
    *a2 = v7;
    *(a2 + 8) = v2[1];
    *(a2 + 16) = v2[2];
    v8 = v6;
    v9 = &v2[v8];
    v10 = v9[3];
    v9 += 3;
    *(a2 + 24) = v10;
    *(a2 + 32) = v9[1];
    *(a2 + 40) = v9[2];
    v11 = &v9[v8];
    v12 = v11[3];
    v11 += 3;
    *(a2 + 48) = v12;
    *(a2 + 56) = v11[1];
    *(a2 + 64) = v11[2];
    v13 = &v11[v8];
    *(a2 + 72) = v13[3];
    *(a2 + 80) = v13[4];
    *(a2 + 88) = v13[5];
  }

  return result;
}

double *cva::SE3GroupStorage<double,cva::MatrixRef<double const,4u,4u,false>>::transform@<X0>(void *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v14[0] = v13;
  v14[1] = a2;
  v5 = v13[0] - 8 * HIDWORD(v4);
  v6 = (v5 + 8 * (3 * v4 + HIDWORD(v4)));
  v16 = 0.0;
  v17 = 0.0;
  v15 = 0.0;
  result = sub_245039A0C(&v15, v14);
  *a3 = 0;
  *(a3 + 8) = 0;
  v8 = v15 + *v6;
  if (v5 == a3)
  {
    v11 = v16 + v6[1];
    v10 = v17 + v6[2];
    *a3 = v8;
    *(a3 + 8) = v11;
  }

  else
  {
    *a3 = v8;
    v9 = v17;
    *(a3 + 8) = v16 + v6[1];
    v10 = v9 + v6[2];
  }

  *(a3 + 16) = v10;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

double cva::SE3GroupStorage<double,cva::MatrixRef<double const,4u,4u,false>>::inverseTransform@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v14 = v13;
  v15[0] = &v14;
  v15[1] = a2;
  v10[0] = v13[0];
  v10[1] = v4;
  v11 = v10;
  v7 = v13[0] - 8 * HIDWORD(v4) + 8 * (3 * v4 + HIDWORD(v4));
  v8 = v4;
  v9 = 3 * v4 + HIDWORD(v4);
  v12[0] = &v11;
  v12[1] = &v7;
  v16 = 0uLL;
  v17 = 0.0;
  sub_245039B54(&v16, v15);
  v18 = 0uLL;
  v19 = 0.0;
  sub_245045828(&v18, v12);
  *a3 = vsubq_f64(v16, v18);
  result = v17 - v19;
  a3[1].f64[0] = v17 - v19;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void cva::SE3GroupStorage<double,cva::MatrixRef<double const,4u,4u,false>>::transformJacobian(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (a1 == a2)
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a1 + 16);
    v14 = v29;
    v15 = *a1;
    v29[2] = *(a1 + 8);
    v29[0] = 0;
    *&v29[1] = -v13;
    *&v29[3] = v13;
    v29[4] = 0;
    v30 = vnegq_f64(v15);
    v31 = v15.f64[0];
    v32 = 0;
    do
    {
      v16 = *v14++;
      *(a2 + v11) = v16;
      v17 = v12 < 2;
      v18 = (v12 >> 29) & 0x7FFFFFFF8;
      if (v12 < 2)
      {
        v18 = 0;
      }

      v19 = v11 + v18;
      v20 = (v12 + 1);
      v21 = v12 & 0xFFFFFFFF00000000;
      if (!v17)
      {
        v20 = 0;
      }

      v12 = v20 | v21;
      v11 = v19 + 8;
    }

    while (v11 != 72);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v10 = 0.0;
      if (HIDWORD(v4) != v4)
      {
        v10 = *(a1 + 8 * dword_24508AAD0[(HIDWORD(v4) + 4 * v4)]) * dbl_24508AB00[(HIDWORD(v4) + 4 * v4)];
      }

      *(a2 + v2) = v10;
      if (v4 >= 2)
      {
        v4 = (v4 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v4 = (v4 + 1) | v4 & 0xFFFFFFFF00000000;
      }

      v5 = v3 < 2;
      v6 = (v3 >> 29) & 0x7FFFFFFF8;
      if (v3 < 2)
      {
        v6 = 0;
      }

      v7 = v2 + v6;
      v8 = (v3 + 1);
      v9 = v3 & 0xFFFFFFFF00000000;
      if (!v5)
      {
        v8 = 0;
      }

      v3 = v8 | v9;
      v2 = v7 + 8;
    }

    while (v2 != 72);
  }

  v22 = 0;
  for (i = 72; i != 144; i = v26 + 8)
  {
    *(a2 + i) = 0;
    v24 = v22 < 2;
    v25 = (v22 >> 29) & 0x7FFFFFFF8;
    if (v22 < 2)
    {
      v25 = 0;
    }

    v26 = i + v25;
    v27 = (v22 + 1);
    v28 = v22 & 0xFFFFFFFF00000000;
    if (!v24)
    {
      v27 = 0;
    }

    v22 = v27 | v28;
  }

  *(a2 + 72) = 0x3FF0000000000000;
  *(a2 + 104) = 0x3FF0000000000000;
  *(a2 + 136) = 0x3FF0000000000000;
}

uint64_t cva::SE3GroupStorage<double,cva::MatrixRef<double const,4u,4u,false>>::inverseTransformJacobian@<X0>(uint64_t a1@<X0>, double *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = 0;
  v4 = 0;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = (LODWORD(v6) - 3);
  v8 = (*a1 + v7 * 8);
  v9 = v8[3];
  v10 = v8[4];
  v8 += 3;
  v11 = v8[2];
  v12 = &v8[v7];
  v13 = v12[3];
  v14 = v12[4];
  v15 = v12[5];
  v16 = **a1;
  v17 = *(*a1 + 8);
  v18 = *(*a1 + 16);
  v20 = a2[1];
  v19 = a2[2];
  v21 = v17 * v19 - v18 * v20;
  v22 = v10 * v19 - v11 * v20;
  v23 = v14 * v19 - v15 * v20;
  v24 = v18 * *a2 - v16 * v19;
  v25 = v11 * *a2 - v9 * v19;
  v26 = v15 * *a2 - v13 * v19;
  v27 = v16 * v20 - v17 * *a2;
  v28 = v9 * v20 - v10 * *a2;
  v29 = v13 * v20 - v14 * *a2;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v42 = v24;
  v43 = v25;
  v44 = v26;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v30 = &v39;
  do
  {
    v31 = *v30++;
    *(a3 + v3) = v31;
    v32 = v4 < 2;
    v33 = (v4 >> 29) & 0x7FFFFFFF8;
    if (v4 < 2)
    {
      v33 = 0;
    }

    v34 = v3 + v33;
    v35 = (v4 + 1);
    v36 = v4 & 0xFFFFFFFF00000000;
    if (!v32)
    {
      v35 = 0;
    }

    v4 = v35 | v36;
    v3 = v34 + 8;
  }

  while (v3 != 72);
  v39 = *&v5;
  v40 = v6;
  v38[0] = a3 + 72;
  v38[1] = 0x900000003;
  return sub_245045BE4(v38, &v39);
}

void cva::SE3GroupStorage<double,cva::MatrixRef<double const,4u,4u,false>>::logJacobian(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94[2] = *MEMORY[0x277D85DE8];
  *(a2 + 328) = 0;
  *(a2 + 248) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  v3 = (a2 + 24);
  v3[17] = 0u;
  v3[18] = 0u;
  v3[15] = 0u;
  v3[16] = 0u;
  v4 = *a1;
  v5 = *(a1 + 8);
  memset(v87, 0, sizeof(v87));
  v86 = 0u;
  memset(v85, 0, sizeof(v85));
  sub_245039D5C(v4, v5, v85[0].f64, &v85[1].f64[1]);
  v7 = v85[0].f64[1];
  v6 = v85[0].f64[0];
  *a2 = v85[0].f64[0];
  *(a2 + 8) = v7;
  _D11 = v85[1].f64[0];
  *(a2 + 16) = v85[1].f64[0];
  v9 = &v4[-HIDWORD(v5)];
  v10 = 3 * v5 + HIDWORD(v5);
  v11 = &v9[v10];
  v83 = v11;
  v84 = (v5 | (v10 << 32));
  v74 = COERCE_DOUBLE(&v85[1].f64[1]);
  v75 = COERCE_DOUBLE(&v83);
  if (&v85[1].f64[1] == a2 || v9 == a2)
  {
    v88 = 0uLL;
    v89 = 0.0;
    sub_24504644C(&v88, &v74);
    _Q19 = v88;
    v15 = v89;
  }

  else
  {
    v12 = v11[1];
    v13 = v11[2];
    _Q19 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(0, *(&v85[1] + 8), *v11), v86, v12), *&v87[1], v13);
    v15 = v85[2].f64[1] * *v11 + 0.0 + v87[0] * v12 + v87[3] * v13;
  }

  *(a2 + 24) = _Q19;
  *(a2 + 40) = v15;
  v16 = v6 * v6;
  v17 = v6 * v6 + v7 * v7 + _D11 * _D11;
  if (v17 >= 0.0000002635)
  {
    v71 = v6;
    v23 = sqrt(v17);
    v72 = _Q19;
    v24 = __sincos_stret(v23);
    _Q19 = v72;
    v25 = v24.__sinval / v23;
    v6 = v71;
    _D0 = 1.0 / v17 * (1.0 - v24.__cosval);
    v19 = 1.0 / v17 * (1.0 - v25);
    v20 = v19 - _D0;
    v21 = 1.0 / v17 * (v25 + _D0 * -2.0);
    v22 = 1.0 / v17 * (_D0 + v19 * -3.0);
  }

  else
  {
    _D0 = 0.5 - v17 * (v17 / -720.0 + 0.0416666667);
    v19 = 0.166666667 - v17 * (v17 / -5040.0 + 0.00833333333);
    v20 = v17 * (v17 * -0.00119047619 + 0.0333333333) + -0.333333333;
    v21 = v17 * (v17 * -0.000148809524 + 0.00555555556) + -0.0833333333;
    v22 = v17 * (v17 * -0.0000165343915 + 0.000793650794) + -0.0166666667;
  }

  v26 = 0;
  v27 = a2 + 48;
  v28 = vmuld_lane_f64(v7, _Q19, 1);
  v29 = v6 * _Q19.f64[0] + v28 + _D11 * v15;
  v30 = (v20 + v22 * v16) * v29 + (v19 + v19) * (v6 * _Q19.f64[0]);
  v31 = (v20 + v22 * (v7 * v7)) * v29 + (v19 + v19) * v28;
  v82 = (v20 + v22 * (_D11 * _D11)) * v29 + (v19 + v19) * (_D11 * v15);
  v32 = v22 * v29;
  v33 = v7 * (v6 * (v22 * v29)) + v19 * (vmuld_lane_f64(v6, _Q19, 1) + _Q19.f64[0] * v7);
  v34 = _D11 * (v6 * v32) + v19 * (v6 * v15 + _Q19.f64[0] * _D11);
  __asm { FMLA            D17, D11, V19.D[1] }

  v40 = _D11 * (v7 * v32) + v19 * _D17;
  v41 = v21 * v29;
  v42 = _D11 * v41 + _D0 * v15;
  __asm { FMLA            D16, D0, V19.D[1] }

  v44 = v6 * v41 + _D0 * _Q19.f64[0];
  v74 = v30;
  v75 = v42 + v33;
  v76 = v34 - _D16;
  v77 = v33 - v42;
  v80 = _D16 + v34;
  v81 = v40 - v44;
  v78 = v31;
  v79 = v44 + v40;
  v45 = 0x300000000;
  v46 = 3;
  do
  {
    *(v27 + v26) = v85[0].f64[v46];
    v47 = v45 < 2;
    v48 = (v45 >> 29) & 0x7FFFFFFF8;
    if (v45 < 2)
    {
      v48 = 0;
    }

    v49 = v26 + v48;
    v50 = (v45 + 1);
    v51 = v45 & 0xFFFFFFFF00000000;
    if (!v47)
    {
      v50 = 0;
    }

    v45 = v50 | v51;
    v26 = v49 + 8;
    ++v46;
  }

  while (v26 != 144);
  v88 = *(a2 + 48);
  v52 = *(a2 + 64);
  v90 = *(a2 + 96);
  v53 = *(a2 + 112);
  v89 = v52;
  v91 = v53;
  v92 = *(a2 + 144);
  v54 = 0x300000000;
  v55 = &v88;
  v56 = 168;
  v93 = *(a2 + 160);
  do
  {
    v57 = v55->f64[0];
    v55 = (v55 + 8);
    *(v27 + v56) = v57;
    v58 = v54 < 2;
    v59 = (v54 >> 29) & 0x7FFFFFFF8;
    if (v54 < 2)
    {
      v59 = 0;
    }

    v60 = v56 + v59;
    v61 = (v54 + 1);
    v62 = v54 & 0xFFFFFFFF00000000;
    if (!v58)
    {
      v61 = 0;
    }

    v54 = v61 | v62;
    v56 = v60 + 8;
  }

  while (v56 != 312);
  v94[0] = &v85[1].f64[1];
  v83 = v94;
  v84 = &v74;
  *&v88.f64[0] = &v83;
  *&v88.f64[1] = &v85[1].f64[1];
  v73[0] = a2 + 72;
  v73[1] = 0x300000006;
  sub_24504652C(v73, &v88);
  v63 = 0x300000000;
  for (i = 144; i != 288; i = v67 + 8)
  {
    *(v27 + i) = 0;
    v65 = v63 < 2;
    v66 = (v63 >> 29) & 0x7FFFFFFF8;
    if (v63 < 2)
    {
      v66 = 0;
    }

    v67 = i + v66;
    v68 = (v63 + 1);
    v69 = v63 & 0xFFFFFFFF00000000;
    if (!v65)
    {
      v68 = 0;
    }

    v63 = v68 | v69;
  }

  v70 = *MEMORY[0x277D85DE8];
}

void cva::SE3GroupStorage<double,cva::MatrixRef<double const,4u,4u,false>>::inverse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[2] = *MEMORY[0x277D85DE8];
  *(a2 + 64) = xmmword_24508AA60;
  *(a2 + 80) = unk_24508AA70;
  *(a2 + 96) = xmmword_24508AA80;
  *(a2 + 112) = unk_24508AA90;
  *a2 = xmmword_24508AA20;
  *(a2 + 16) = *algn_24508AA30;
  *(a2 + 32) = xmmword_24508AA40;
  *(a2 + 48) = unk_24508AA50;
  v4 = *(a1 + 8);
  *&v22 = *a1;
  *(&v22 + 1) = v4;
  v20 = a2;
  v21 = 4;
  sub_245046B1C(&v20, &v22);
  v19[0] = a2;
  v19[1] = 4;
  v24[0] = v19;
  v6 = *(a1 + 8);
  v5 = *(a1 + 12);
  v7 = *a1 - 8 * v5;
  v8 = (3 * v6 + v5);
  v9 = (v7 + 8 * v8);
  v18[0] = v9;
  v18[1] = v6 | (v8 << 32);
  v20 = v24;
  v21 = v18;
  if (v7 == a2)
  {
    v22 = 0uLL;
    v23 = 0.0;
    sub_245046C64(&v22, &v20);
    *(a2 + 96) = v22;
    v16 = v23;
  }

  else
  {
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
    v12 = *(a2 + 40);
    v13 = *(a2 + 48);
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 96) = 0.0 - *a2 * *v9 - *(a2 + 32) * v9[1] - *(a2 + 64) * v9[2];
    *(a2 + 104) = 0.0 - v10 * *v9 - v12 * v9[1] - v14 * v9[2];
    v16 = 0.0 - v11 * *v9 - v13 * v9[1] - v15 * v9[2];
  }

  *(a2 + 112) = v16;
  v17 = *MEMORY[0x277D85DE8];
}

unint64_t cva::SE3GroupStorage<double,cva::MatrixRef<double const,4u,4u,false>>::adjoint@<X0>(unint64_t result@<X0>, float64x2_t *a2@<X8>, int64x2_t a3@<Q3>)
{
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  v3 = *result;
  v4 = *(result + 8);
  v5 = *result - 8 * HIDWORD(v4);
  *a2 = 0u;
  a2[1] = 0u;
  if (v5 == a2)
  {
    v19 = 0;
    v68 = *v3;
    *v69 = *(v3 + 16);
    v20 = 8 * (v4 - 3);
    *&v69[8] = *(v3 + v20 + 24);
    *&v69[24] = *(v3 + v20 + 40);
    v21 = v3 + v20 + 24 + v20;
    v70 = *(v21 + 24);
    v71 = *(v21 + 40);
    v22 = 0x300000000;
    v23 = &v68;
    do
    {
      v24 = v23->f64[0];
      v23 = (v23 + 8);
      *(a2->f64 + v19) = v24;
      v25 = v22 < 2;
      v26 = (v22 >> 29) & 0x7FFFFFFF8;
      if (v22 < 2)
      {
        v26 = 0;
      }

      v27 = v19 + v26;
      v28 = (v22 + 1);
      v29 = v22 & 0xFFFFFFFF00000000;
      if (!v25)
      {
        v28 = 0;
      }

      v22 = v28 | v29;
      v19 = v27 + 8;
    }

    while (v19 != 144);
  }

  else
  {
    v6 = 0;
    v7 = (v4 << 32) - 0x300000000;
    v8 = 0x300000000;
    v9 = v3;
    do
    {
      *(a2->f64 + v6) = *v9;
      v10 = HIDWORD(v7);
      v11 = v7 < 2;
      if (v7 < 2)
      {
        v10 = 0;
      }

      v12 = &v9[v10];
      v13 = (v7 + 1);
      v14 = v7 & 0xFFFFFFFF00000000;
      if (!v11)
      {
        v13 = 0;
      }

      v7 = v13 | v14;
      v9 = v12 + 1;
      v15 = v8 < 2;
      v16 = (v8 >> 29) & 0x7FFFFFFF8;
      if (v8 < 2)
      {
        v16 = 0;
      }

      v17 = v6 + v16;
      result = (v8 + 1);
      v18 = v8 & 0xFFFFFFFF00000000;
      if (!v15)
      {
        result = 0;
      }

      v8 = result | v18;
      v6 = v17 + 8;
    }

    while (v6 != 144);
  }

  v68 = *a2;
  *v69 = a2[1].f64[0];
  *&v69[8] = a2[3];
  *&v69[24] = a2[4].f64[0];
  v70 = a2[6];
  v30 = 0x300000000;
  v31 = &v68;
  v32 = 168;
  v71 = a2[7].f64[0];
  do
  {
    v33 = v31->f64[0];
    v31 = (v31 + 8);
    *(a2->f64 + v32) = v33;
    v34 = v30 < 2;
    v35 = (v30 >> 29) & 0x7FFFFFFF8;
    if (v30 < 2)
    {
      v35 = 0;
    }

    v36 = v32 + v35;
    v37 = (v30 + 1);
    v38 = v30 & 0xFFFFFFFF00000000;
    if (!v34)
    {
      v37 = 0;
    }

    v30 = v37 | v38;
    v32 = v36 + 8;
  }

  while (v32 != 312);
  v39 = v5 + 8 * (3 * v4 + HIDWORD(v4));
  v40.f64[0] = *v39;
  v41 = 8 * (v4 - 3);
  v42 = *(v3 + v41 + 24);
  a3.i64[0] = *(v3 + v41 + 40);
  v43 = (v3 + v41 + 24 + v41);
  v44 = v43[1].f64[1];
  v45 = *(v3 + 8);
  *&v46.f64[0] = vdupq_laneq_s64(v45, 1).u64[0];
  v47 = *(v39 + 8);
  v46.f64[1] = *v3;
  *&v48.f64[0] = vextq_s8(v47, v47, 8uLL).u64[0];
  v48.f64[1] = *v39;
  v49 = v43[2];
  v50 = *v39 * v49.f64[0];
  *&v40.f64[1] = a3.i64[0];
  v51 = vsubq_f64(vmulq_f64(v48, v42), vmulq_f64(*v39, vzip1q_s64(a3, v42)));
  v42.f64[0] = *v3;
  v68 = vsubq_f64(vmulq_f64(v47, v46), vmulq_f64(v48, v45));
  *v69 = vsubq_f64(vmulq_f64(v40, vzip1q_s64(v45, v47)), vmulq_f64(v47, v42));
  *&v40.f64[0] = vdupq_laneq_s64(v49, 1).u64[0];
  v40.f64[1] = v44;
  *&v69[16] = v51;
  v70 = vsubq_f64(vmulq_f64(v47, v40), vmulq_f64(v48, v49));
  v71 = v50 - v44 * v47.f64[0];
  v52 = 0x300000000;
  v53 = &v68;
  for (i = 24; i != 168; i = v58 + 8)
  {
    v55 = v53->f64[0];
    v53 = (v53 + 8);
    *(a2->f64 + i) = v55;
    v56 = v52 < 2;
    v57 = (v52 >> 29) & 0x7FFFFFFF8;
    if (v52 < 2)
    {
      v57 = 0;
    }

    v58 = i + v57;
    v59 = (v52 + 1);
    v60 = v52 & 0xFFFFFFFF00000000;
    if (!v56)
    {
      v59 = 0;
    }

    v52 = v59 | v60;
  }

  v61 = 0x300000000;
  for (j = 144; j != 288; j = v65 + 8)
  {
    *(a2->f64 + j) = 0.0;
    v63 = v61 < 2;
    v64 = (v61 >> 29) & 0x7FFFFFFF8;
    if (v61 < 2)
    {
      v64 = 0;
    }

    v65 = j + v64;
    v66 = (v61 + 1);
    v67 = v61 & 0xFFFFFFFF00000000;
    if (!v63)
    {
      v66 = 0;
    }

    v61 = v66 | v67;
  }

  return result;
}

uint64_t cva::SE3GroupStorage<double,cva::MatrixRef<double const,4u,4u,false>>::serialize(uint64_t result)
{
  v1 = *(result + 8);
  if (4 * v1)
  {
    v2 = *result;
    v3 = *result + 8 * (4 * v1);
    v4 = (v1 - 4) << 32;
    do
    {
      v8 = *v2;
      result = std::ostream::write();
      v5 = HIDWORD(v4);
      if (v4 < 3)
      {
        v5 = 0;
      }

      v6 = &v2[v5];
      v7 = (v4 + 1);
      if (v4 >= 3)
      {
        v7 = 0;
      }

      v4 = v7 | v4 & 0xFFFFFFFF00000000;
      v2 = v6 + 1;
    }

    while (v6 + 1 != v3);
  }

  return result;
}

float cva::SE3AlgebraStorage<float,cva::Matrix<float,6u,1u,false>>::SE3AlgebraStorage(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 4) = a2[1];
  *(a1 + 8) = a2[2];
  *(a1 + 12) = *a3;
  *(a1 + 16) = *(a3 + 4);
  result = *(a3 + 8);
  *(a1 + 20) = result;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 4) = a2[1];
  *(a1 + 8) = a2[2];
  *(a1 + 12) = *a3;
  *(a1 + 16) = *(a3 + 4);
  result = *(a3 + 8);
  *(a1 + 20) = result;
  return result;
}

void cva::SE3AlgebraStorage<float,cva::Matrix<float,6u,1u,false>>::R()
{
  ;
}

{
  ;
}

uint64_t cva::SE3AlgebraStorage<float,cva::Matrix<float,6u,1u,false>>::T(uint64_t a1)
{
  return a1 + 12;
}

{
  return a1 + 12;
}

uint64_t cva::SE3AlgebraStorage<float,cva::Matrix<float,6u,1u,false>>::adjoint@<X0>(uint64_t result@<X0>, __int128 *a2@<X8>)
{
  v2 = 0;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v3 = *result;
  v4 = &v43;
  v5 = *(result + 4);
  DWORD1(v43) = v5.i32[1];
  *(&v43 + 1) = vneg_f32(v5);
  LODWORD(v44) = 0;
  *(&v44 + 4) = __PAIR64__(v5.u32[0], LODWORD(v3));
  *(&v44 + 3) = -v3;
  v6 = 0x300000000;
  v45 = 0;
  do
  {
    v7 = *v4++;
    *(a2 + v2) = v7;
    v8 = v6 < 2;
    v9 = (v6 >> 30) & 0x3FFFFFFFCLL;
    if (v6 < 2)
    {
      v9 = 0;
    }

    v10 = v2 + v9;
    v11 = (v6 + 1);
    v12 = v6 & 0xFFFFFFFF00000000;
    if (!v8)
    {
      v11 = 0;
    }

    v6 = v11 | v12;
    v2 = v10 + 4;
  }

  while (v2 != 72);
  v13 = *a2;
  HIDWORD(v13) = *(a2 + 6);
  v14 = *(a2 + 28);
  v15 = a2[3];
  *(&v14 + 1) = *(a2 + 6);
  v43 = v13;
  v44 = v14;
  v16 = &v43;
  v45 = DWORD2(v15);
  v17 = 0x300000000;
  for (i = 84; i != 156; i = v22 + 4)
  {
    v19 = *v16++;
    *(a2 + i) = v19;
    v20 = v17 < 2;
    v21 = (v17 >> 30) & 0x3FFFFFFFCLL;
    if (v17 < 2)
    {
      v21 = 0;
    }

    v22 = i + v21;
    v23 = (v17 + 1);
    v24 = v17 & 0xFFFFFFFF00000000;
    if (!v20)
    {
      v23 = 0;
    }

    v17 = v23 | v24;
  }

  v25 = *(result + 12);
  LODWORD(v43) = 0;
  v26 = &v43;
  v27 = *(result + 16);
  DWORD1(v43) = v27.i32[1];
  *(&v43 + 1) = vneg_f32(v27);
  LODWORD(v44) = 0;
  *(&v44 + 4) = __PAIR64__(v27.u32[0], LODWORD(v25));
  *(&v44 + 3) = -v25;
  v45 = 0;
  v28 = 0x300000000;
  for (j = 12; j != 84; j = v33 + 4)
  {
    v30 = *v26++;
    *(a2 + j) = v30;
    v31 = v28 < 2;
    v32 = (v28 >> 30) & 0x3FFFFFFFCLL;
    if (v28 < 2)
    {
      v32 = 0;
    }

    v33 = j + v32;
    v34 = (v28 + 1);
    v35 = v28 & 0xFFFFFFFF00000000;
    if (!v31)
    {
      v34 = 0;
    }

    v28 = v34 | v35;
  }

  v36 = 0x300000000;
  for (k = 72; k != 144; k = v40 + 4)
  {
    *(a2 + k) = 0;
    v38 = v36 < 2;
    v39 = (v36 >> 30) & 0x3FFFFFFFCLL;
    if (v36 < 2)
    {
      v39 = 0;
    }

    v40 = k + v39;
    v41 = (v36 + 1);
    v42 = v36 & 0xFFFFFFFF00000000;
    if (!v38)
    {
      v41 = 0;
    }

    v36 = v41 | v42;
  }

  return result;
}

float cva::SE3AlgebraStorage<float,cva::Matrix<float,6u,1u,false>>::hat@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *(a2 + 16) = -v2;
  v4 = *a1;
  v3 = *(a1 + 4);
  v5 = -*a1;
  *(a2 + 32) = v3;
  *(a2 + 36) = v5;
  *(a2 + 48) = *(a1 + 12);
  *a2 = 0;
  *(a2 + 20) = 0;
  *(a2 + 4) = v2;
  *(a2 + 8) = -v3;
  *(a2 + 24) = v4;
  result = *(a1 + 20);
  *(a2 + 56) = result;
  *(a2 + 12) = 0;
  *(a2 + 28) = 0;
  *(a2 + 40) = 0;
  *(a2 + 60) = 0;
  return result;
}

uint64_t cva::SE3AlgebraStorage<float,cva::Matrix<float,6u,1u,false>>::exp@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = xmmword_24508A9E0;
  *(a2 + 16) = unk_24508A9F0;
  *(a2 + 32) = xmmword_24508AA00;
  *(a2 + 48) = unk_24508AA10;
  v5 = vdupq_lane_s32(*&a3, 0).u64[0];
  v18 = vmulq_n_f32(*a1, *&a3);
  v19 = vmul_f32(*(a1 + 16), v5);
  v4 = vmulq_f32(v18, v18);
  v5.f32[0] = vaddv_f32(*v4.f32) + v4.f32[2];
  if (v5.f32[0] >= 0.0061)
  {
    v13 = sqrtf(v5.f32[0]);
    v17 = v5.f32[0];
    v14 = __sincosf_stret(v13);
    v12.f32[0] = v14.__cosval;
    v12.f32[1] = v14.__sinval / v13;
    __asm { FMOV            V0.2S, #1.0 }

    v6 = vmul_n_f32(vsub_f32(_D0, v12), 1.0 / v17);
  }

  else
  {
    v6 = vmls_lane_f32(0x3E2AAAAB3F000000, vadd_f32(vdiv_f32(vdup_lane_s32(v5, 0), 0xC59D8000C4340000), 0x3C0888893D2AAAABLL), v5, 0);
    __asm { FMOV            V1.2S, #1.0 }

    v12 = vmls_lane_f32(_D1, v6, v5, 0);
  }

  v20[0] = v12;
  v20[1] = v6;
  return sub_245044A8C(&v18, v20, a2);
}

void cva::SE3AlgebraStorage<float,cva::Matrix<float,6u,1u,false>>::expJacobian(float *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_24508A9E0;
  *(a2 + 16) = unk_24508A9F0;
  *(a2 + 32) = xmmword_24508AA00;
  *(a2 + 48) = unk_24508AA10;
  v4 = a2 + 64;
  *(a2 + 76) = 0u;
  *(a2 + 92) = 0u;
  *(a2 + 108) = 0u;
  *(a2 + 124) = 0u;
  *(a2 + 140) = 0u;
  *(a2 + 156) = 0u;
  *(a2 + 172) = 0u;
  *(a2 + 188) = 0u;
  *(a2 + 204) = 0;
  v76[0] = a1 + 3;
  v76[1] = 0x300000006;
  v5 = *a1;
  v6 = a1[1];
  v7 = v5 * v5;
  v8 = v6 * v6;
  v9 = a1[2];
  v10 = v9 * v9;
  v11 = ((v5 * v5) + (v6 * v6)) + (v9 * v9);
  if (v11 >= 0.0061)
  {
    v19 = sqrtf(v11);
    v20 = __sincosf_stret(v19);
    cosval = v20.__cosval;
    v7 = v5 * v5;
    v10 = v9 * v9;
    v14 = v20.__sinval / v19;
    v12 = (1.0 / v11) * (1.0 - v20.__cosval);
    v13 = (1.0 / v11) * (1.0 - v14);
    v16 = v13 - v12;
    v17 = (1.0 / v11) * (v14 + (v12 * -2.0));
    v18 = (1.0 / v11) * (v12 + (v13 * -3.0));
  }

  else
  {
    v12 = 0.5 - (v11 * ((v11 / -720.0) + 0.041667));
    v13 = 0.16667 - (v11 * ((v11 / -5040.0) + 0.0083333));
    v14 = 1.0 - (v11 * v13);
    cosval = 1.0 - (v11 * v12);
    v16 = (v11 * ((v11 * -0.0011905) + 0.033333)) + -0.33333;
    v17 = (v11 * ((v11 * -0.00014881) + 0.0055556)) + -0.083333;
    v18 = (v11 * ((v11 * -0.000016534) + 0.00079365)) + -0.016667;
  }

  v21 = cosval + ((v5 * v12) * v5);
  v22 = cosval + ((v6 * v12) * v6);
  *(a2 + 40) = cosval + ((v9 * v12) * v9);
  v23 = (v5 * v12) * v6;
  v24 = (v5 * v12) * v9;
  v25 = (v6 * v12) * v9;
  *(a2 + 16) = v23 - (v14 * v9);
  *(a2 + 20) = v22;
  *a2 = v21;
  *(a2 + 4) = v23 + (v14 * v9);
  *(a2 + 32) = (v14 * v6) + v24;
  *(a2 + 36) = v25 - (v14 * v5);
  *(a2 + 8) = v24 - (v14 * v6);
  *(a2 + 24) = v25 + (v14 * v5);
  v75[0] = v4;
  v75[1] = 6;
  v26 = v14 + ((v13 * v5) * v5);
  v27 = v14 + ((v13 * v6) * v6);
  v28 = v14 + ((v13 * v9) * v9);
  v29 = (v13 * v5) * v6;
  v30 = (v13 * v5) * v9;
  v31 = (v13 * v6) * v9;
  v32 = v29 - (v9 * v12);
  *(a2 + 88) = v32;
  *(a2 + 92) = v27;
  v33 = (v6 * v12) + v30;
  v34 = v29 + (v9 * v12);
  *(a2 + 64) = v26;
  *(a2 + 68) = v34;
  v35 = v31 - (v5 * v12);
  *(a2 + 112) = v33;
  *(a2 + 116) = v35;
  *(a2 + 120) = v28;
  v36 = v30 - (v6 * v12);
  *(a2 + 72) = v36;
  v37 = v31 + (v5 * v12);
  *(a2 + 96) = v37;
  *&v79[0] = v75;
  *(&v79[0] + 1) = v76;
  if (a1 == a2)
  {
    v78 = 0.0;
    v77 = 0;
    v74 = v17;
    v43 = v10;
    v44 = v7;
    v73 = v18;
    sub_24504A0D8(&v77, v79);
    v18 = v73;
    v17 = v74;
    v7 = v44;
    v10 = v43;
    v8 = v6 * v6;
    *(a2 + 48) = v77;
    v42 = v78;
    v38 = a1[3];
    v39 = a1[4];
    v41 = a1[5];
  }

  else
  {
    v38 = a1[3];
    v39 = a1[4];
    v40 = ((v26 * v38) + 0.0) + (v32 * v39);
    v41 = a1[5];
    *(a2 + 48) = v40 + (v33 * v41);
    *(a2 + 52) = (((v34 * v38) + 0.0) + (v27 * v39)) + (v35 * v41);
    v42 = (((v36 * v38) + 0.0) + (v37 * v39)) + (v28 * v41);
  }

  *(a2 + 56) = v42;
  v45 = ((v5 * v38) + (v6 * v39)) + (v9 * v41);
  *(a2 + 76) = ((v16 + (v18 * v7)) * v45) + ((v13 + v13) * (v5 * v38));
  *(a2 + 104) = ((v16 + (v18 * v8)) * v45) + ((v13 + v13) * (v6 * v39));
  *(a2 + 132) = ((v16 + (v18 * v10)) * v45) + ((v13 + v13) * (v9 * v41));
  v46 = (v18 * v45) * v5;
  v47 = (v6 * v46) + (v13 * ((v39 * v5) + (v38 * v6)));
  v48 = (v46 * v9) + (v13 * ((v5 * v41) + (v38 * v9)));
  v49 = (((v18 * v45) * v6) * v9) + (v13 * ((v6 * v41) + (v39 * v9)));
  v50 = v17 * v45;
  v51 = (v50 * v9) + (v12 * v41);
  v52 = (v50 * v6) + (v12 * v39);
  v53 = (v50 * v5) + (v12 * v38);
  *(a2 + 100) = v47 - v51;
  *(a2 + 80) = v47 + v51;
  *(a2 + 124) = v52 + v48;
  *(a2 + 84) = v48 - v52;
  *(a2 + 128) = v49 - v53;
  *(a2 + 108) = v53 + v49;
  v54 = 0x300000000;
  for (i = 72; i != 144; i = v58 + 4)
  {
    *(v4 + i) = 0;
    v56 = v54 < 2;
    v57 = (v54 >> 30) & 0x3FFFFFFFCLL;
    if (v54 < 2)
    {
      v57 = 0;
    }

    v58 = i + v57;
    v59 = (v54 + 1);
    v60 = v54 & 0xFFFFFFFF00000000;
    if (!v56)
    {
      v59 = 0;
    }

    v54 = v59 | v60;
  }

  v61 = *(a2 + 64);
  HIDWORD(v61) = *(a2 + 88);
  v62 = *(a2 + 92);
  v63 = *(a2 + 112);
  *(&v62 + 1) = *(a2 + 112);
  v79[0] = v61;
  v79[1] = v62;
  v64 = v79;
  v80 = DWORD2(v63);
  v65 = 0x300000000;
  for (j = 84; j != 156; j = v70 + 4)
  {
    v67 = *v64++;
    *(v4 + j) = v67;
    v68 = v65 < 2;
    v69 = (v65 >> 30) & 0x3FFFFFFFCLL;
    if (v65 < 2)
    {
      v69 = 0;
    }

    v70 = j + v69;
    v71 = (v65 + 1);
    v72 = v65 & 0xFFFFFFFF00000000;
    if (!v68)
    {
      v71 = 0;
    }

    v65 = v71 | v72;
  }
}

float *sub_24504A0D8(float *result, uint64_t **a2)
{
  v2 = result;
  v3 = **a2;
  if ((v3 - 4 * *(*a2 + 3)) == result || (v4 = a2[1], v5 = *v4, (*v4 - 4 * *(v4 + 3)) == result))
  {
    v22 = 0;
    v21 = 0;
    result = sub_24504A0D8(&v21);
    *v2 = v21;
    *(v2 + 2) = v22;
  }

  else
  {
    v6 = *(*a2 + 2);
    if (v6)
    {
      v7 = 0;
      v8 = 4 * (3 * v6);
      v9 = 4 * v6;
      v10 = 0.0;
      v11 = v5;
      do
      {
        v12 = *v11++;
        v10 = v10 + (*(v3 + v7) * v12);
        v7 += v9;
      }

      while (v8 != v7);
      v13 = 0;
      *result = v10;
      v14 = 0.0;
      v15 = v5;
      do
      {
        v16 = *v15++;
        v14 = v14 + (*(v3 + 4 + v13) * v16);
        v13 += v9;
      }

      while (v8 != v13);
      v17 = 0;
      result[1] = v14;
      v18 = v3 + 8;
      v19 = 0.0;
      do
      {
        v20 = *v5++;
        v19 = v19 + (*(v18 + v17) * v20);
        v17 += v9;
      }

      while (v8 != v17);
    }

    else
    {
      *result = 0;
      v19 = 0.0;
    }

    result[2] = v19;
  }

  return result;
}

float *cva::SE3AlgebraStorage<float,cva::Matrix<float,6u,1u,false>>::enforce(float *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = result[2];
  v4 = ((v1 * v1) + (v2 * v2)) + (v3 * v3);
  if (v4 > 9.8696)
  {
    if (v4 >= 0.0061)
    {
      v8 = sqrtf(v4);
      v9 = result;
      v10 = __sincosf_stret(v8);
      result = v9;
      v7 = v10.__sinval / v8;
      v5 = (1.0 / v4) * (1.0 - v10.__cosval);
      v6 = (1.0 / v4) * (1.0 - (v10.__sinval / v8));
    }

    else
    {
      v5 = 0.5 - (v4 * ((v4 / -720.0) + 0.041667));
      v6 = 0.16667 - (v4 * ((v4 / -5040.0) + 0.0083333));
      v7 = 1.0 - (v4 * v6);
    }

    v11 = result[3];
    v12 = result[4];
    v13 = result[5];
    v14 = (v2 * v13) - (v3 * v12);
    v15 = (v3 * v11) - (v1 * v13);
    v16 = (v1 * v12) - (v2 * v11);
    v17 = (v11 + (v5 * v14)) + (v6 * ((v2 * v16) - (v3 * v15)));
    v18 = (v12 + (v5 * v15)) + (v6 * ((v3 * v14) - (v1 * v16)));
    v19 = (v13 + (v5 * v16)) + (v6 * ((v1 * v15) - (v2 * v14)));
    v20 = ((v2 * v2) + (v1 * v1)) + (v3 * v3);
    if (v20 <= 9.8696)
    {
      v26 = 1.0;
      v25 = 1.0;
    }

    else
    {
      v21 = sqrtf(v20) / 3.1416;
      v22 = ceilf(v21) + -1.0;
      v23 = v22;
      v24 = v21 - v22;
      if (v23)
      {
        v24 = v24 + -1.0;
      }

      v25 = v24 / v21;
      v1 = v1 * v25;
      v2 = v2 * v25;
      *result = v1;
      result[1] = v2;
      v3 = v3 * v25;
      result[2] = v3;
      v26 = v25 * v25;
      v4 = v4 * (v25 * v25);
      if (fabsf(v25) <= 0.000244)
      {
        if (v4 >= 0.00000149)
        {
          if (v4 >= 0.0061)
          {
            v37 = sqrtf(v4);
            v38 = result;
            v39 = __sincosf_stret(v37);
            result = v38;
            v36 = v39.__sinval / v37;
            v34 = (1.0 / v4) * (1.0 - v39.__cosval);
            v35 = (1.0 / v4) * (1.0 - (v39.__sinval / v37));
          }

          else
          {
            v34 = 0.5 - (v4 * ((v4 / -720.0) + 0.041667));
            v35 = 0.16667 - (v4 * ((v4 / -5040.0) + 0.0083333));
            v36 = 1.0 - (v4 * v35);
          }

          v27 = -(v35 - (v34 * 0.5)) / v36;
        }

        else
        {
          v27 = ((v4 * 0.0013889) + 0.083333) + (v4 * 0.000033069);
        }

LABEL_14:
        v31 = (v2 * v19) - (v3 * v18);
        v32 = (v3 * v17) - (v1 * v19);
        v33 = (v1 * v18) - (v2 * v17);
        result[4] = (v18 - (v32 * 0.5)) + (v27 * ((v3 * v31) - (v1 * v33)));
        result[5] = (v19 - (v33 * 0.5)) + (v27 * ((v1 * v32) - (v2 * v31)));
        result[3] = (v17 - (v31 * 0.5)) + (v27 * ((v2 * v33) - (v3 * v32)));
        return result;
      }
    }

    v28 = v7 / v25;
    v29 = v5 / v26;
    v30 = ((-(1.0 - v28) / v4) + (v29 * 0.5)) / v28;
    v27 = (v29 + (v28 * -0.5)) / (v4 * v29);
    if (v4 <= 9.0)
    {
      v27 = v30;
    }

    goto LABEL_14;
  }

  return result;
}

double cva::SE3AlgebraStorage<double,cva::Matrix<double,6u,1u,false>>::SE3AlgebraStorage(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *a3;
  *(a1 + 32) = *(a3 + 8);
  result = *(a3 + 16);
  *(a1 + 40) = result;
  return result;
}

{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *a3;
  *(a1 + 32) = *(a3 + 8);
  result = *(a3 + 16);
  *(a1 + 40) = result;
  return result;
}

void cva::SE3AlgebraStorage<double,cva::Matrix<double,6u,1u,false>>::R()
{
  ;
}

{
  ;
}

uint64_t cva::SE3AlgebraStorage<double,cva::Matrix<double,6u,1u,false>>::T(uint64_t a1)
{
  return a1 + 24;
}

{
  return a1 + 24;
}

uint64_t cva::SE3AlgebraStorage<double,cva::Matrix<double,6u,1u,false>>::adjoint@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = 0;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v3 = *result;
  v4 = -*result;
  v5 = &v41;
  v6 = *(result + 8);
  *(&v41 + 1) = *(result + 16);
  *v42 = vnegq_f64(v6);
  *&v42[16] = 0;
  v43 = v3;
  *&v44 = v6.f64[0];
  *(&v44 + 1) = v4;
  v7 = 0x300000000;
  v45 = 0;
  do
  {
    v8 = *v5++;
    *(a2 + v2) = v8;
    v9 = v7 < 2;
    v10 = (v7 >> 29) & 0x7FFFFFFF8;
    if (v7 < 2)
    {
      v10 = 0;
    }

    v11 = v2 + v10;
    v12 = (v7 + 1);
    v13 = v7 & 0xFFFFFFFF00000000;
    if (!v9)
    {
      v12 = 0;
    }

    v7 = v12 | v13;
    v2 = v11 + 8;
  }

  while (v2 != 144);
  v41 = *a2;
  *v42 = *(a2 + 2);
  *&v42[8] = a2[3];
  v43 = *(a2 + 8);
  v44 = a2[6];
  v14 = 0x300000000;
  v15 = &v41;
  v16 = 168;
  v45 = *(a2 + 14);
  do
  {
    v17 = *v15++;
    *(a2 + v16) = v17;
    v18 = v14 < 2;
    v19 = (v14 >> 29) & 0x7FFFFFFF8;
    if (v14 < 2)
    {
      v19 = 0;
    }

    v20 = v16 + v19;
    v21 = (v14 + 1);
    v22 = v14 & 0xFFFFFFFF00000000;
    if (!v18)
    {
      v21 = 0;
    }

    v14 = v21 | v22;
    v16 = v20 + 8;
  }

  while (v16 != 312);
  v23 = *(result + 24);
  *&v41 = 0;
  v24 = &v41;
  v25 = *(result + 32);
  *(&v41 + 1) = *(result + 40);
  *v42 = vnegq_f64(v25);
  *&v42[16] = 0;
  v43 = v23;
  *&v44 = v25.f64[0];
  *(&v44 + 1) = -v23;
  v45 = 0;
  v26 = 0x300000000;
  for (i = 24; i != 168; i = v31 + 8)
  {
    v28 = *v24++;
    *(a2 + i) = v28;
    v29 = v26 < 2;
    v30 = (v26 >> 29) & 0x7FFFFFFF8;
    if (v26 < 2)
    {
      v30 = 0;
    }

    v31 = i + v30;
    v32 = (v26 + 1);
    v33 = v26 & 0xFFFFFFFF00000000;
    if (!v29)
    {
      v32 = 0;
    }

    v26 = v32 | v33;
  }

  v34 = 0x300000000;
  for (j = 144; j != 288; j = v38 + 8)
  {
    *(a2 + j) = 0;
    v36 = v34 < 2;
    v37 = (v34 >> 29) & 0x7FFFFFFF8;
    if (v34 < 2)
    {
      v37 = 0;
    }

    v38 = j + v37;
    v39 = (v34 + 1);
    v40 = v34 & 0xFFFFFFFF00000000;
    if (!v36)
    {
      v39 = 0;
    }

    v34 = v39 | v40;
  }

  return result;
}

double cva::SE3AlgebraStorage<double,cva::Matrix<double,6u,1u,false>>::hat@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *(a2 + 32) = -v2;
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = -*a1;
  *(a2 + 64) = v3;
  *(a2 + 72) = v5;
  *(a2 + 96) = *(a1 + 24);
  *a2 = 0;
  *(a2 + 40) = 0;
  *(a2 + 8) = v2;
  *(a2 + 16) = -v3;
  *(a2 + 48) = v4;
  result = *(a1 + 40);
  *(a2 + 112) = result;
  *(a2 + 24) = 0;
  *(a2 + 56) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 120) = 0;
  return result;
}

uint64_t cva::SE3AlgebraStorage<double,cva::Matrix<double,6u,1u,false>>::exp@<X0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 64) = xmmword_24508AA60;
  *(a2 + 80) = unk_24508AA70;
  *(a2 + 96) = xmmword_24508AA80;
  *(a2 + 112) = unk_24508AA90;
  *a2 = xmmword_24508AA20;
  *(a2 + 16) = *algn_24508AA30;
  *(a2 + 32) = xmmword_24508AA40;
  *(a2 + 48) = unk_24508AA50;
  v4 = vmulq_n_f64(a1[1], a3);
  v19[0] = vmulq_n_f64(*a1, a3);
  v19[1] = v4;
  v19[2] = vmulq_n_f64(a1[2], a3);
  v5 = vmulq_f64(v19[0], v19[0]);
  v6 = vaddq_f64(vaddq_f64(v5, vdupq_laneq_s64(v5, 1)), vmulq_f64(v4, v4)).f64[0];
  if (v6 >= 0.0000002635)
  {
    v14 = sqrt(v6);
    v18 = v6;
    v15 = __sincos_stret(v14);
    v13.f64[0] = v15.__cosval;
    v13.f64[1] = v15.__sinval / v14;
    __asm { FMOV            V0.2D, #1.0 }

    v7 = vmulq_n_f64(vsubq_f64(_Q0, v13), 1.0 / v18);
  }

  else
  {
    v7 = vmlsq_lane_f64(xmmword_24508A7F0, vaddq_f64(vdivq_f64(vdupq_lane_s64(*&v6, 0), xmmword_24508A7D0), xmmword_24508A7E0), v6, 0);
    __asm { FMOV            V1.2D, #1.0 }

    v13 = vmlsq_lane_f64(_Q1, v7, v6, 0);
  }

  v20[0] = v13;
  v20[1] = v7;
  return sub_245047118(v19, v20, a2);
}

void cva::SE3AlgebraStorage<double,cva::Matrix<double,6u,1u,false>>::expJacobian(double *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = xmmword_24508AA60;
  *(a2 + 80) = unk_24508AA70;
  *(a2 + 96) = xmmword_24508AA80;
  *(a2 + 112) = unk_24508AA90;
  *a2 = xmmword_24508AA20;
  *(a2 + 16) = *algn_24508AA30;
  *(a2 + 32) = xmmword_24508AA40;
  *(a2 + 48) = unk_24508AA50;
  v4 = a2 + 128;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 408) = 0;
  *(a2 + 152) = 0u;
  v5 = (a2 + 152);
  v5[7] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  v77[0] = a1 + 3;
  v77[1] = 0x300000006;
  v6 = *a1;
  v7 = a1[1];
  v8 = v6 * v6;
  v9 = v7 * v7;
  v10 = a1[2];
  v11 = v10 * v10;
  v12 = v6 * v6 + v7 * v7 + v10 * v10;
  if (v12 >= 0.0000002635)
  {
    v20 = sqrt(v12);
    v21 = __sincos_stret(v20);
    cosval = v21.__cosval;
    v8 = v6 * v6;
    v11 = v10 * v10;
    v15 = v21.__sinval / v20;
    v13 = 1.0 / v12 * (1.0 - v21.__cosval);
    v14 = 1.0 / v12 * (1.0 - v15);
    v17 = v14 - v13;
    v18 = 1.0 / v12 * (v15 + v13 * -2.0);
    v19 = 1.0 / v12 * (v13 + v14 * -3.0);
  }

  else
  {
    v13 = 0.5 - v12 * (v12 / -720.0 + 0.0416666667);
    v14 = 0.166666667 - v12 * (v12 / -5040.0 + 0.00833333333);
    v15 = 1.0 - v12 * v14;
    cosval = 1.0 - v12 * v13;
    v17 = v12 * (v12 * -0.00119047619 + 0.0333333333) + -0.333333333;
    v18 = v12 * (v12 * -0.000148809524 + 0.00555555556) + -0.0833333333;
    v19 = v12 * (v12 * -0.0000165343915 + 0.000793650794) + -0.0166666667;
  }

  v22 = cosval + v6 * v13 * v6;
  v23 = cosval + v7 * v13 * v7;
  *(a2 + 80) = cosval + v10 * v13 * v10;
  v24 = v6 * v13 * v7;
  v25 = v6 * v13 * v10;
  v26 = v7 * v13 * v10;
  *(a2 + 32) = v24 - v15 * v10;
  *(a2 + 40) = v23;
  *a2 = v22;
  *(a2 + 8) = v24 + v15 * v10;
  *(a2 + 64) = v15 * v7 + v25;
  *(a2 + 72) = v26 - v15 * v6;
  *(a2 + 16) = v25 - v15 * v7;
  *(a2 + 48) = v26 + v15 * v6;
  v76[0] = v4;
  v76[1] = 6;
  v27 = v15 + v14 * v6 * v6;
  v28 = v15 + v14 * v7 * v7;
  v29 = v15 + v14 * v10 * v10;
  v30 = v14 * v6 * v7;
  v31 = v14 * v6 * v10;
  v32 = v14 * v7 * v10;
  v33 = v30 - v10 * v13;
  *(a2 + 176) = v33;
  *(a2 + 184) = v28;
  v34 = v7 * v13 + v31;
  v35 = v30 + v10 * v13;
  *(a2 + 128) = v27;
  *(a2 + 136) = v35;
  v36 = v32 - v6 * v13;
  *(a2 + 224) = v34;
  *(a2 + 232) = v36;
  *(a2 + 240) = v29;
  v37 = v31 - v7 * v13;
  *(a2 + 144) = v37;
  v38 = v32 + v6 * v13;
  *(a2 + 192) = v38;
  v75[0] = v76;
  v75[1] = v77;
  if (a1 == a2)
  {
    v78 = 0uLL;
    v79 = 0.0;
    v74 = v18;
    v44 = v11;
    v45 = v8;
    v73 = v19;
    sub_24504AEC0(&v78, v75);
    v19 = v73;
    v18 = v74;
    v8 = v45;
    v11 = v44;
    v9 = v7 * v7;
    *(a2 + 96) = v78;
    v43 = v79;
    v39 = a1[3];
    v40 = a1[4];
    v42 = a1[5];
  }

  else
  {
    v39 = a1[3];
    v40 = a1[4];
    v41 = v27 * v39 + 0.0 + v33 * v40;
    v42 = a1[5];
    *(a2 + 96) = v41 + v34 * v42;
    *(a2 + 104) = v35 * v39 + 0.0 + v28 * v40 + v36 * v42;
    v43 = v37 * v39 + 0.0 + v38 * v40 + v29 * v42;
  }

  *(a2 + 112) = v43;
  v46 = v6 * v39 + v7 * v40 + v10 * v42;
  v47 = (v17 + v19 * v8) * v46 + (v14 + v14) * (v6 * v39);
  v48 = (v17 + v19 * v9) * v46 + (v14 + v14) * (v7 * v40);
  *(a2 + 264) = (v17 + v19 * v11) * v46 + (v14 + v14) * (v10 * v42);
  v49 = v19 * v46 * v6;
  v50 = v7 * v49 + v14 * (v40 * v6 + v39 * v7);
  v51 = v49 * v10 + v14 * (v6 * v42 + v39 * v10);
  v52 = v19 * v46 * v7 * v10 + v14 * (v7 * v42 + v40 * v10);
  v53 = v18 * v46;
  v54 = v53 * v10 + v13 * v42;
  v55 = v53 * v7 + v13 * v40;
  v56 = v53 * v6 + v13 * v39;
  *(a2 + 200) = v50 - v54;
  *(a2 + 208) = v48;
  *(a2 + 152) = v47;
  *(a2 + 160) = v50 + v54;
  *(a2 + 168) = v51 - v55;
  *(a2 + 248) = v55 + v51;
  *(a2 + 256) = v52 - v56;
  *(a2 + 216) = v56 + v52;
  v57 = 0x300000000;
  for (i = 144; i != 288; i = v61 + 8)
  {
    *(v4 + i) = 0;
    v59 = v57 < 2;
    v60 = (v57 >> 29) & 0x7FFFFFFF8;
    if (v57 < 2)
    {
      v60 = 0;
    }

    v61 = i + v60;
    v62 = (v57 + 1);
    v63 = v57 & 0xFFFFFFFF00000000;
    if (!v59)
    {
      v62 = 0;
    }

    v57 = v62 | v63;
  }

  v78 = *(a2 + 128);
  v79 = *(a2 + 144);
  v80 = *(a2 + 176);
  v81 = *(a2 + 192);
  v82 = *(a2 + 224);
  v64 = 0x300000000;
  v65 = &v78;
  v66 = 168;
  v83 = *(a2 + 240);
  do
  {
    v67 = *v65++;
    *(v4 + v66) = v67;
    v68 = v64 < 2;
    v69 = (v64 >> 29) & 0x7FFFFFFF8;
    if (v64 < 2)
    {
      v69 = 0;
    }

    v70 = v66 + v69;
    v71 = (v64 + 1);
    v72 = v64 & 0xFFFFFFFF00000000;
    if (!v68)
    {
      v71 = 0;
    }

    v64 = v71 | v72;
    v66 = v70 + 8;
  }

  while (v66 != 312);
}

double *sub_24504AEC0(double *result, uint64_t **a2)
{
  v2 = result;
  v3 = **a2;
  if ((v3 - 8 * *(*a2 + 3)) == result || (v4 = a2[1], v5 = *v4, (*v4 - 8 * *(v4 + 3)) == result))
  {
    v21 = 0uLL;
    v22 = 0;
    result = sub_24504AEC0(&v21);
    *v2 = v21;
    *(v2 + 2) = v22;
  }

  else
  {
    v6 = *(*a2 + 2);
    if (v6)
    {
      v7 = 0;
      v8 = 8 * (3 * v6);
      v9 = 8 * v6;
      v10 = 0.0;
      v11 = v5;
      do
      {
        v12 = *v11++;
        v10 = v10 + *(v3 + v7) * v12;
        v7 += v9;
      }

      while (v8 != v7);
      v13 = 0;
      *result = v10;
      v14 = 0.0;
      v15 = v5;
      do
      {
        v16 = *v15++;
        v14 = v14 + *(v3 + 8 + v13) * v16;
        v13 += v9;
      }

      while (v8 != v13);
      v17 = 0;
      result[1] = v14;
      v18 = v3 + 16;
      v19 = 0.0;
      do
      {
        v20 = *v5++;
        v19 = v19 + *(v18 + v17) * v20;
        v17 += v9;
      }

      while (v8 != v17);
    }

    else
    {
      *result = 0.0;
      result[1] = 0.0;
      v19 = 0.0;
    }

    result[2] = v19;
  }

  return result;
}

double *cva::SE3AlgebraStorage<double,cva::Matrix<double,6u,1u,false>>::enforce(double *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = result[2];
  v4 = v1 * v1 + v2 * v2 + v3 * v3;
  if (v4 > 9.8696044)
  {
    if (v4 >= 0.0000002635)
    {
      v8 = sqrt(v4);
      v9 = result;
      v10 = __sincos_stret(v8);
      result = v9;
      v7 = v10.__sinval / v8;
      v5 = 1.0 / v4 * (1.0 - v10.__cosval);
      v6 = 1.0 / v4 * (1.0 - v10.__sinval / v8);
    }

    else
    {
      v5 = 0.5 - v4 * (v4 / -720.0 + 0.0416666667);
      v6 = 0.166666667 - v4 * (v4 / -5040.0 + 0.00833333333);
      v7 = 1.0 - v4 * v6;
    }

    v11 = result[3];
    v12 = result[4];
    v13 = result[5];
    v14 = v2 * v13 - v3 * v12;
    v15 = v3 * v11 - v1 * v13;
    v16 = v1 * v12 - v2 * v11;
    v17 = v11 + v5 * v14 + v6 * (v2 * v16 - v3 * v15);
    v18 = v5 * v15 + v12 + v6 * (v3 * v14 - v1 * v16);
    v19 = v6 * (v1 * v15 - v2 * v14) + v5 * v16 + v13;
    v20 = v2 * v2 + v1 * v1 + v3 * v3;
    if (v20 <= 9.8696044)
    {
      v26 = 1.0;
      v25 = 1.0;
    }

    else
    {
      v21 = sqrt(v20) / 3.14159265;
      v22 = ceil(v21) + -1.0;
      v23 = v22;
      v24 = v21 - v22;
      if (v23)
      {
        v24 = v24 + -1.0;
      }

      v25 = v24 / v21;
      v1 = v1 * v25;
      v2 = v2 * v25;
      *result = v1;
      result[1] = v2;
      v3 = v3 * v25;
      result[2] = v3;
      v26 = v25 * v25;
      v4 = v4 * (v25 * v25);
      if (fabs(v25) <= 0.00000001054)
      {
        if (v4 >= 2.775e-15)
        {
          if (v4 >= 0.0000002635)
          {
            v37 = sqrt(v4);
            v38 = result;
            v39 = v19;
            v40 = __sincos_stret(v37);
            v19 = v39;
            result = v38;
            v36 = v40.__sinval / v37;
            v34 = 1.0 / v4 * (1.0 - v40.__cosval);
            v35 = 1.0 / v4 * (1.0 - v40.__sinval / v37);
          }

          else
          {
            v34 = 0.5 - v4 * (v4 / -720.0 + 0.0416666667);
            v35 = 0.166666667 - v4 * (v4 / -5040.0 + 0.00833333333);
            v36 = 1.0 - v4 * v35;
          }

          v27 = -(v35 - v34 * 0.5) / v36;
        }

        else
        {
          v27 = v4 * 0.00138888889 + 0.0833333333 + v4 * 0.0000330687831;
        }

LABEL_14:
        v31 = v2 * v19 - v3 * v18;
        v32 = v3 * v17 - v1 * v19;
        v33 = v1 * v18 - v2 * v17;
        result[4] = v18 - v32 * 0.5 + v27 * (v3 * v31 - v1 * v33);
        result[5] = v19 - v33 * 0.5 + v27 * (v1 * v32 - v2 * v31);
        result[3] = v17 - v31 * 0.5 + v27 * (v2 * v33 - v3 * v32);
        return result;
      }
    }

    v28 = v7 / v25;
    v29 = v5 / v26;
    v30 = (-(1.0 - v28) / v4 + v29 * 0.5) / v28;
    v27 = (v29 + v28 * -0.5) / (v4 * v29);
    if (v4 <= 9.0)
    {
      v27 = v30;
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t cva::SE3AlgebraStorage<float,cva::MatrixRef<float const,6u,1u,false>>::adjoint@<X0>(uint64_t result@<X0>, __int128 *a2@<X8>)
{
  v2 = 0;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v3 = *result;
  v4 = **result;
  v5 = &v45;
  v6 = *(*result + 4);
  DWORD1(v45) = v6.i32[1];
  *(&v45 + 1) = vneg_f32(v6);
  LODWORD(v46) = 0;
  *(&v46 + 4) = __PAIR64__(v6.u32[0], LODWORD(v4));
  *(&v46 + 3) = -v4;
  v47 = 0;
  v7 = 0x300000000;
  do
  {
    v8 = *v5++;
    *(a2 + v2) = v8;
    v9 = v7 < 2;
    v10 = (v7 >> 30) & 0x3FFFFFFFCLL;
    if (v7 < 2)
    {
      v10 = 0;
    }

    v11 = v2 + v10;
    v12 = (v7 + 1);
    v13 = v7 & 0xFFFFFFFF00000000;
    if (!v9)
    {
      v12 = 0;
    }

    v7 = v12 | v13;
    v2 = v11 + 4;
  }

  while (v2 != 72);
  v14 = *a2;
  HIDWORD(v14) = *(a2 + 6);
  v15 = *(a2 + 28);
  v16 = a2[3];
  *(&v15 + 1) = *(a2 + 6);
  v45 = v14;
  v46 = v15;
  v17 = &v45;
  v47 = DWORD2(v16);
  v18 = 0x300000000;
  for (i = 84; i != 156; i = v23 + 4)
  {
    v20 = *v17++;
    *(a2 + i) = v20;
    v21 = v18 < 2;
    v22 = (v18 >> 30) & 0x3FFFFFFFCLL;
    if (v18 < 2)
    {
      v22 = 0;
    }

    v23 = i + v22;
    v24 = (v18 + 1);
    v25 = v18 & 0xFFFFFFFF00000000;
    if (!v21)
    {
      v24 = 0;
    }

    v18 = v24 | v25;
  }

  v26 = &v3[*(result + 12) + 3 - *(result + 12)];
  v27 = *v26;
  LODWORD(v45) = 0;
  v28 = *(v26 + 4);
  v29 = &v45;
  DWORD1(v45) = v28.i32[1];
  *(&v45 + 1) = vneg_f32(v28);
  LODWORD(v46) = 0;
  *(&v46 + 4) = __PAIR64__(v28.u32[0], LODWORD(v27));
  *(&v46 + 3) = -v27;
  v47 = 0;
  v30 = 0x300000000;
  for (j = 12; j != 84; j = v35 + 4)
  {
    v32 = *v29++;
    *(a2 + j) = v32;
    v33 = v30 < 2;
    v34 = (v30 >> 30) & 0x3FFFFFFFCLL;
    if (v30 < 2)
    {
      v34 = 0;
    }

    v35 = j + v34;
    v36 = (v30 + 1);
    v37 = v30 & 0xFFFFFFFF00000000;
    if (!v33)
    {
      v36 = 0;
    }

    v30 = v36 | v37;
  }

  v38 = 0x300000000;
  for (k = 72; k != 144; k = v42 + 4)
  {
    *(a2 + k) = 0;
    v40 = v38 < 2;
    v41 = (v38 >> 30) & 0x3FFFFFFFCLL;
    if (v38 < 2)
    {
      v41 = 0;
    }

    v42 = k + v41;
    v43 = (v38 + 1);
    v44 = v38 & 0xFFFFFFFF00000000;
    if (!v40)
    {
      v43 = 0;
    }

    v38 = v43 | v44;
  }

  return result;
}

float cva::SE3AlgebraStorage<float,cva::MatrixRef<float const,6u,1u,false>>::hat@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  *(a2 + 16) = -v3;
  v5 = *v2;
  v4 = *(v2 + 4);
  v6 = -*v2;
  *(a2 + 32) = v4;
  *(a2 + 36) = v6;
  *(a2 + 48) = *(v2 + 12);
  *a2 = 0;
  *(a2 + 20) = 0;
  *(a2 + 4) = v3;
  *(a2 + 8) = -v4;
  *(a2 + 24) = v5;
  result = *(v2 + 20);
  *(a2 + 56) = result;
  *(a2 + 12) = 0;
  *(a2 + 28) = 0;
  *(a2 + 40) = 0;
  *(a2 + 60) = 0;
  return result;
}

uint64_t cva::SE3AlgebraStorage<float,cva::MatrixRef<float const,6u,1u,false>>::exp@<X0>(float32x4_t **a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = xmmword_24508A9E0;
  *(a2 + 16) = unk_24508A9F0;
  *(a2 + 32) = xmmword_24508AA00;
  *(a2 + 48) = unk_24508AA10;
  v4 = *a1;
  v6 = vdupq_lane_s32(*&a3, 0).u64[0];
  v19 = vmulq_n_f32(**a1, *&a3);
  v20 = vmul_f32(*v4[1].f32, v6);
  v5 = vmulq_f32(v19, v19);
  v6.f32[0] = vaddv_f32(*v5.f32) + v5.f32[2];
  if (v6.f32[0] >= 0.0061)
  {
    v14 = sqrtf(v6.f32[0]);
    v18 = v6.f32[0];
    v15 = __sincosf_stret(v14);
    v13.f32[0] = v15.__cosval;
    v13.f32[1] = v15.__sinval / v14;
    __asm { FMOV            V0.2S, #1.0 }

    v7 = vmul_n_f32(vsub_f32(_D0, v13), 1.0 / v18);
  }

  else
  {
    v7 = vmls_lane_f32(0x3E2AAAAB3F000000, vadd_f32(vdiv_f32(vdup_lane_s32(v6, 0), 0xC59D8000C4340000), 0x3C0888893D2AAAABLL), v6, 0);
    __asm { FMOV            V1.2S, #1.0 }

    v13 = vmls_lane_f32(_D1, v7, v6, 0);
  }

  v21[0] = v13;
  v21[1] = v7;
  return sub_245044A8C(&v19, v21, a2);
}

void cva::SE3AlgebraStorage<float,cva::MatrixRef<float const,6u,1u,false>>::expJacobian(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_24508A9E0;
  *(a2 + 16) = unk_24508A9F0;
  *(a2 + 32) = xmmword_24508AA00;
  *(a2 + 48) = unk_24508AA10;
  v3 = a2 + 64;
  *(a2 + 76) = 0u;
  *(a2 + 92) = 0u;
  *(a2 + 108) = 0u;
  *(a2 + 124) = 0u;
  *(a2 + 140) = 0u;
  *(a2 + 156) = 0u;
  *(a2 + 172) = 0u;
  *(a2 + 188) = 0u;
  *(a2 + 204) = 0;
  v4 = *a1;
  v5 = *(a1 + 12);
  v6 = *a1 - 4 * v5;
  v7 = (v5 + 3);
  v8 = (v6 + 4 * v7);
  v9 = *(a1 + 8) | (v7 << 32);
  v84[0] = v8;
  v84[1] = v9;
  v10 = *v4;
  v11 = v4[1];
  v12 = v10 * v10;
  v13 = v11 * v11;
  v14 = v4[2];
  v15 = v14 * v14;
  v16 = ((v10 * v10) + (v11 * v11)) + (v14 * v14);
  if (v16 >= 0.0061)
  {
    v24 = sqrtf(v16);
    v25 = __sincosf_stret(v24);
    cosval = v25.__cosval;
    v12 = v10 * v10;
    v15 = v14 * v14;
    v19 = v25.__sinval / v24;
    v17 = (1.0 / v16) * (1.0 - v25.__cosval);
    v18 = (1.0 / v16) * (1.0 - v19);
    v21 = v18 - v17;
    v22 = (1.0 / v16) * (v19 + (v17 * -2.0));
    v23 = (1.0 / v16) * (v17 + (v18 * -3.0));
  }

  else
  {
    v17 = 0.5 - (v16 * ((v16 / -720.0) + 0.041667));
    v18 = 0.16667 - (v16 * ((v16 / -5040.0) + 0.0083333));
    v19 = 1.0 - (v16 * v18);
    cosval = 1.0 - (v16 * v17);
    v21 = (v16 * ((v16 * -0.0011905) + 0.033333)) + -0.33333;
    v22 = (v16 * ((v16 * -0.00014881) + 0.0055556)) + -0.083333;
    v23 = (v16 * ((v16 * -0.000016534) + 0.00079365)) + -0.016667;
  }

  v26 = cosval + ((v10 * v17) * v10);
  v27 = cosval + ((v11 * v17) * v11);
  *(a2 + 40) = cosval + ((v14 * v17) * v14);
  v28 = (v10 * v17) * v11;
  v29 = (v10 * v17) * v14;
  v30 = (v11 * v17) * v14;
  *(a2 + 16) = v28 - (v19 * v14);
  *(a2 + 20) = v27;
  *a2 = v26;
  *(a2 + 4) = v28 + (v19 * v14);
  *(a2 + 32) = (v19 * v11) + v29;
  *(a2 + 36) = v30 - (v19 * v10);
  *(a2 + 8) = v29 - (v19 * v11);
  *(a2 + 24) = v30 + (v19 * v10);
  v83[0] = v3;
  v83[1] = 6;
  v31 = v19 + ((v18 * v10) * v10);
  v32 = v19 + ((v18 * v11) * v11);
  v33 = v19 + ((v18 * v14) * v14);
  v34 = (v18 * v10) * v11;
  v35 = (v18 * v10) * v14;
  v36 = (v18 * v11) * v14;
  v37 = v34 - (v14 * v17);
  *(a2 + 88) = v37;
  *(a2 + 92) = v32;
  v38 = (v11 * v17) + v35;
  v39 = v34 + (v14 * v17);
  *(a2 + 64) = v31;
  *(a2 + 68) = v39;
  v40 = v36 - (v10 * v17);
  *(a2 + 112) = v38;
  *(a2 + 116) = v40;
  *(a2 + 120) = v33;
  v41 = v35 - (v11 * v17);
  *(a2 + 72) = v41;
  v42 = v36 + (v10 * v17);
  *(a2 + 96) = v42;
  *&v87[0] = v83;
  *(&v87[0] + 1) = v84;
  if (v6 == a2)
  {
    v86 = 0;
    v85 = 0;
    v82 = v22;
    v49 = v15;
    v50 = v12;
    v81 = v23;
    sub_24504A0D8(&v85, v87);
    v23 = v81;
    v22 = v82;
    v12 = v50;
    v15 = v49;
    v13 = v11 * v11;
    *(a2 + 48) = v85;
    *(a2 + 56) = v86;
    v43 = *v8;
    v44 = v8[1];
    v46 = v8[2];
  }

  else
  {
    v43 = *v8;
    v44 = v8[1];
    v45 = ((v31 * *v8) + 0.0) + (v37 * v44);
    v46 = v8[2];
    v47 = v45 + (v38 * v46);
    v48 = (v39 * *v8) + 0.0;
    *(a2 + 48) = v47;
    *(a2 + 52) = (v48 + (v32 * v44)) + (v40 * v46);
    *(a2 + 56) = (((v41 * v43) + 0.0) + (v42 * v44)) + (v33 * v46);
  }

  v51 = ((v10 * v43) + (v11 * v44)) + (v14 * v46);
  v52 = ((v21 + (v23 * v12)) * v51) + ((v18 + v18) * (v10 * v43));
  v53 = ((v21 + (v23 * v13)) * v51) + ((v18 + v18) * (v11 * v44));
  *(a2 + 132) = ((v21 + (v23 * v15)) * v51) + ((v18 + v18) * (v14 * v46));
  v54 = (v23 * v51) * v10;
  v55 = (v11 * v54) + (v18 * ((v44 * v10) + (v43 * v11)));
  v56 = (v54 * v14) + (v18 * ((v10 * v46) + (v43 * v14)));
  v57 = (((v23 * v51) * v11) * v14) + (v18 * ((v11 * v46) + (v44 * v14)));
  v58 = v22 * v51;
  v59 = (v58 * v14) + (v17 * v46);
  v60 = (v58 * v11) + (v17 * v44);
  v61 = (v58 * v10) + (v17 * v43);
  *(a2 + 100) = v55 - v59;
  *(a2 + 104) = v53;
  *(a2 + 76) = v52;
  *(a2 + 80) = v55 + v59;
  *(a2 + 84) = v56 - v60;
  *(a2 + 124) = v60 + v56;
  *(a2 + 128) = v57 - v61;
  *(a2 + 108) = v61 + v57;
  v62 = 0x300000000;
  for (i = 72; i != 144; i = v66 + 4)
  {
    *(v3 + i) = 0;
    v64 = v62 < 2;
    v65 = (v62 >> 30) & 0x3FFFFFFFCLL;
    if (v62 < 2)
    {
      v65 = 0;
    }

    v66 = i + v65;
    v67 = (v62 + 1);
    v68 = v62 & 0xFFFFFFFF00000000;
    if (!v64)
    {
      v67 = 0;
    }

    v62 = v67 | v68;
  }

  v69 = *(a2 + 64);
  HIDWORD(v69) = *(a2 + 88);
  v70 = *(a2 + 92);
  v71 = *(a2 + 112);
  *(&v70 + 1) = *(a2 + 112);
  v87[0] = v69;
  v87[1] = v70;
  v72 = v87;
  v88 = DWORD2(v71);
  v73 = 0x300000000;
  for (j = 84; j != 156; j = v78 + 4)
  {
    v75 = *v72++;
    *(v3 + j) = v75;
    v76 = v73 < 2;
    v77 = (v73 >> 30) & 0x3FFFFFFFCLL;
    if (v73 < 2)
    {
      v77 = 0;
    }

    v78 = j + v77;
    v79 = (v73 + 1);
    v80 = v73 & 0xFFFFFFFF00000000;
    if (!v76)
    {
      v79 = 0;
    }

    v73 = v79 | v80;
  }
}

uint64_t cva::SE3AlgebraStorage<double,cva::MatrixRef<double const,6u,1u,false>>::adjoint@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = 0;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v3 = *result;
  v4 = **result;
  v5 = &v42;
  v6 = *(*result + 8);
  *(&v42 + 1) = *(*result + 16);
  *v43 = vnegq_f64(v6);
  *&v43[16] = 0;
  v44 = v4;
  *&v45 = v6.f64[0];
  *(&v45 + 1) = -v4;
  v7 = 0x300000000;
  v46 = 0;
  do
  {
    v8 = *v5++;
    *(a2 + v2) = v8;
    v9 = v7 < 2;
    v10 = (v7 >> 29) & 0x7FFFFFFF8;
    if (v7 < 2)
    {
      v10 = 0;
    }

    v11 = v2 + v10;
    v12 = (v7 + 1);
    v13 = v7 & 0xFFFFFFFF00000000;
    if (!v9)
    {
      v12 = 0;
    }

    v7 = v12 | v13;
    v2 = v11 + 8;
  }

  while (v2 != 144);
  v42 = *a2;
  *v43 = *(a2 + 2);
  *&v43[8] = a2[3];
  v44 = *(a2 + 8);
  v45 = a2[6];
  v14 = 0x300000000;
  v15 = &v42;
  v16 = 168;
  v46 = *(a2 + 14);
  do
  {
    v17 = *v15++;
    *(a2 + v16) = v17;
    v18 = v14 < 2;
    v19 = (v14 >> 29) & 0x7FFFFFFF8;
    if (v14 < 2)
    {
      v19 = 0;
    }

    v20 = v16 + v19;
    v21 = (v14 + 1);
    v22 = v14 & 0xFFFFFFFF00000000;
    if (!v18)
    {
      v21 = 0;
    }

    v14 = v21 | v22;
    v16 = v20 + 8;
  }

  while (v16 != 312);
  v23 = &v3[*(result + 12) + 3 - *(result + 12)];
  v24 = *v23;
  *&v42 = 0;
  v25 = *(v23 + 8);
  v26 = &v42;
  *(&v42 + 1) = *&v25.f64[1];
  *v43 = vnegq_f64(v25);
  *&v43[16] = 0;
  v44 = v24;
  *&v45 = v25.f64[0];
  *(&v45 + 1) = -v24;
  v46 = 0;
  v27 = 0x300000000;
  for (i = 24; i != 168; i = v32 + 8)
  {
    v29 = *v26++;
    *(a2 + i) = v29;
    v30 = v27 < 2;
    v31 = (v27 >> 29) & 0x7FFFFFFF8;
    if (v27 < 2)
    {
      v31 = 0;
    }

    v32 = i + v31;
    v33 = (v27 + 1);
    v34 = v27 & 0xFFFFFFFF00000000;
    if (!v30)
    {
      v33 = 0;
    }

    v27 = v33 | v34;
  }

  v35 = 0x300000000;
  for (j = 144; j != 288; j = v39 + 8)
  {
    *(a2 + j) = 0;
    v37 = v35 < 2;
    v38 = (v35 >> 29) & 0x7FFFFFFF8;
    if (v35 < 2)
    {
      v38 = 0;
    }

    v39 = j + v38;
    v40 = (v35 + 1);
    v41 = v35 & 0xFFFFFFFF00000000;
    if (!v37)
    {
      v40 = 0;
    }

    v35 = v40 | v41;
  }

  return result;
}

double cva::SE3AlgebraStorage<double,cva::MatrixRef<double const,6u,1u,false>>::hat@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(a2 + 32) = -v3;
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = -*v2;
  *(a2 + 64) = v4;
  *(a2 + 72) = v6;
  *(a2 + 96) = *(v2 + 24);
  *a2 = 0;
  *(a2 + 40) = 0;
  *(a2 + 8) = v3;
  *(a2 + 16) = -v4;
  *(a2 + 48) = v5;
  result = *(v2 + 40);
  *(a2 + 112) = result;
  *(a2 + 24) = 0;
  *(a2 + 56) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 120) = 0;
  return result;
}

uint64_t cva::SE3AlgebraStorage<double,cva::MatrixRef<double const,6u,1u,false>>::exp@<X0>(float64x2_t **a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 64) = xmmword_24508AA60;
  *(a2 + 80) = unk_24508AA70;
  *(a2 + 96) = xmmword_24508AA80;
  *(a2 + 112) = unk_24508AA90;
  *a2 = xmmword_24508AA20;
  *(a2 + 16) = *algn_24508AA30;
  *(a2 + 32) = xmmword_24508AA40;
  *(a2 + 48) = unk_24508AA50;
  v4 = *a1;
  v5 = vmulq_n_f64((*a1)[1], a3);
  v20[0] = vmulq_n_f64(**a1, a3);
  v20[1] = v5;
  v20[2] = vmulq_n_f64(v4[2], a3);
  v6 = vmulq_f64(v20[0], v20[0]);
  v7 = vaddq_f64(vaddq_f64(v6, vdupq_laneq_s64(v6, 1)), vmulq_f64(v5, v5)).f64[0];
  if (v7 >= 0.0000002635)
  {
    v15 = sqrt(v7);
    v19 = v7;
    v16 = __sincos_stret(v15);
    v14.f64[0] = v16.__cosval;
    v14.f64[1] = v16.__sinval / v15;
    __asm { FMOV            V0.2D, #1.0 }

    v8 = vmulq_n_f64(vsubq_f64(_Q0, v14), 1.0 / v19);
  }

  else
  {
    v8 = vmlsq_lane_f64(xmmword_24508A7F0, vaddq_f64(vdivq_f64(vdupq_lane_s64(*&v7, 0), xmmword_24508A7D0), xmmword_24508A7E0), v7, 0);
    __asm { FMOV            V1.2D, #1.0 }

    v14 = vmlsq_lane_f64(_Q1, v8, v7, 0);
  }

  v21[0] = v14;
  v21[1] = v8;
  return sub_245047118(v20, v21, a2);
}

void cva::SE3AlgebraStorage<double,cva::MatrixRef<double const,6u,1u,false>>::expJacobian(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = xmmword_24508AA60;
  *(a2 + 80) = unk_24508AA70;
  *(a2 + 96) = xmmword_24508AA80;
  *(a2 + 112) = unk_24508AA90;
  *a2 = xmmword_24508AA20;
  *(a2 + 16) = *algn_24508AA30;
  *(a2 + 32) = xmmword_24508AA40;
  *(a2 + 48) = unk_24508AA50;
  v3 = a2 + 128;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 152) = 0u;
  v4 = (a2 + 152);
  *(a2 + 408) = 0;
  v4[7] = 0u;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  v4[11] = 0u;
  v4[12] = 0u;
  v4[13] = 0u;
  v4[14] = 0u;
  v4[15] = 0u;
  v5 = *a1;
  v6 = *(a1 + 12);
  v7 = *a1 - 8 * v6;
  v8 = (v6 + 3);
  v9 = (v7 + 8 * v8);
  v10 = *(a1 + 8) | (v8 << 32);
  v83[0] = v9;
  v83[1] = v10;
  v11 = *v5;
  v12 = v5[1];
  v13 = v11 * v11;
  v14 = v12 * v12;
  v15 = v5[2];
  v16 = v15 * v15;
  v17 = v11 * v11 + v12 * v12 + v15 * v15;
  if (v17 >= 0.0000002635)
  {
    v25 = sqrt(v17);
    v26 = __sincos_stret(v25);
    cosval = v26.__cosval;
    v13 = v11 * v11;
    v16 = v15 * v15;
    v20 = v26.__sinval / v25;
    v18 = 1.0 / v17 * (1.0 - v26.__cosval);
    v19 = 1.0 / v17 * (1.0 - v20);
    v22 = v19 - v18;
    v23 = 1.0 / v17 * (v20 + v18 * -2.0);
    v24 = 1.0 / v17 * (v18 + v19 * -3.0);
  }

  else
  {
    v18 = 0.5 - v17 * (v17 / -720.0 + 0.0416666667);
    v19 = 0.166666667 - v17 * (v17 / -5040.0 + 0.00833333333);
    v20 = 1.0 - v17 * v19;
    cosval = 1.0 - v17 * v18;
    v22 = v17 * (v17 * -0.00119047619 + 0.0333333333) + -0.333333333;
    v23 = v17 * (v17 * -0.000148809524 + 0.00555555556) + -0.0833333333;
    v24 = v17 * (v17 * -0.0000165343915 + 0.000793650794) + -0.0166666667;
  }

  v27 = cosval + v11 * v18 * v11;
  v28 = cosval + v12 * v18 * v12;
  *(a2 + 80) = cosval + v15 * v18 * v15;
  v29 = v11 * v18 * v12;
  v30 = v11 * v18 * v15;
  v31 = v12 * v18 * v15;
  *(a2 + 32) = v29 - v20 * v15;
  *(a2 + 40) = v28;
  *a2 = v27;
  *(a2 + 8) = v29 + v20 * v15;
  *(a2 + 64) = v20 * v12 + v30;
  *(a2 + 72) = v31 - v20 * v11;
  *(a2 + 16) = v30 - v20 * v12;
  *(a2 + 48) = v31 + v20 * v11;
  v82[0] = v3;
  v82[1] = 6;
  v32 = v20 + v19 * v11 * v11;
  v33 = v20 + v19 * v12 * v12;
  v34 = v20 + v19 * v15 * v15;
  v35 = v19 * v11 * v12;
  v36 = v19 * v11 * v15;
  v37 = v19 * v12 * v15;
  v38 = v35 - v15 * v18;
  *(a2 + 176) = v38;
  *(a2 + 184) = v33;
  v39 = v12 * v18 + v36;
  v40 = v35 + v15 * v18;
  *(a2 + 128) = v32;
  *(a2 + 136) = v40;
  v41 = v37 - v11 * v18;
  *(a2 + 224) = v39;
  *(a2 + 232) = v41;
  *(a2 + 240) = v34;
  v42 = v36 - v12 * v18;
  *(a2 + 144) = v42;
  v43 = v37 + v11 * v18;
  *(a2 + 192) = v43;
  v81[0] = v82;
  v81[1] = v83;
  if (v7 == a2)
  {
    v84 = 0uLL;
    v85 = 0;
    v80 = v23;
    v50 = v16;
    v51 = v13;
    v79 = v24;
    sub_24504AEC0(&v84, v81);
    v24 = v79;
    v23 = v80;
    v13 = v51;
    v16 = v50;
    v14 = v12 * v12;
    *(a2 + 96) = v84;
    *(a2 + 112) = v85;
    v44 = *v9;
    v45 = v9[1];
    v47 = v9[2];
  }

  else
  {
    v44 = *v9;
    v45 = v9[1];
    v46 = v32 * *v9 + 0.0 + v38 * v45;
    v47 = v9[2];
    v48 = v46 + v39 * v47;
    v49 = v40 * *v9 + 0.0;
    *(a2 + 96) = v48;
    *(a2 + 104) = v49 + v33 * v45 + v41 * v47;
    *(a2 + 112) = v42 * v44 + 0.0 + v43 * v45 + v34 * v47;
  }

  v52 = v11 * v44 + v12 * v45 + v15 * v47;
  v53 = (v22 + v24 * v13) * v52 + (v19 + v19) * (v11 * v44);
  v54 = (v22 + v24 * v14) * v52 + (v19 + v19) * (v12 * v45);
  *(a2 + 264) = (v22 + v24 * v16) * v52 + (v19 + v19) * (v15 * v47);
  v55 = v24 * v52 * v11;
  v56 = v12 * v55 + v19 * (v45 * v11 + v44 * v12);
  v57 = v55 * v15 + v19 * (v11 * v47 + v44 * v15);
  v58 = v24 * v52 * v12 * v15 + v19 * (v12 * v47 + v45 * v15);
  v59 = v23 * v52;
  v60 = v59 * v15 + v18 * v47;
  v61 = v59 * v12 + v18 * v45;
  v62 = v59 * v11 + v18 * v44;
  *(a2 + 200) = v56 - v60;
  *(a2 + 208) = v54;
  *(a2 + 152) = v53;
  *(a2 + 160) = v56 + v60;
  *(a2 + 168) = v57 - v61;
  *(a2 + 248) = v61 + v57;
  *(a2 + 256) = v58 - v62;
  *(a2 + 216) = v62 + v58;
  v63 = 0x300000000;
  for (i = 144; i != 288; i = v67 + 8)
  {
    *(v3 + i) = 0;
    v65 = v63 < 2;
    v66 = (v63 >> 29) & 0x7FFFFFFF8;
    if (v63 < 2)
    {
      v66 = 0;
    }

    v67 = i + v66;
    v68 = (v63 + 1);
    v69 = v63 & 0xFFFFFFFF00000000;
    if (!v65)
    {
      v68 = 0;
    }

    v63 = v68 | v69;
  }

  v84 = *(a2 + 128);
  v85 = *(a2 + 144);
  v86 = *(a2 + 176);
  v87 = *(a2 + 192);
  v88 = *(a2 + 224);
  v70 = 0x300000000;
  v71 = &v84;
  v72 = 168;
  v89 = *(a2 + 240);
  do
  {
    v73 = *v71++;
    *(v3 + v72) = v73;
    v74 = v70 < 2;
    v75 = (v70 >> 29) & 0x7FFFFFFF8;
    if (v70 < 2)
    {
      v75 = 0;
    }

    v76 = v72 + v75;
    v77 = (v70 + 1);
    v78 = v70 & 0xFFFFFFFF00000000;
    if (!v74)
    {
      v77 = 0;
    }

    v70 = v77 | v78;
    v72 = v76 + 8;
  }

  while (v72 != 312);
}

double cva::SO2GroupStorage<float,cva::Matrix<float,2u,2u,false>>::SO2GroupStorage(_OWORD *a1)
{
  *&result = 1065353216;
  *a1 = xmmword_24508A840;
  return result;
}

{
  *&result = 1065353216;
  *a1 = xmmword_24508A840;
  return result;
}

float *cva::SO2GroupStorage<float,cva::Matrix<float,2u,2u,false>>::SO2GroupStorage(float *a1, float a2)
{
  v3 = __sincosf_stret(a2);
  *a1 = v3.__cosval;
  a1[1] = v3.__sinval;
  a1[2] = -v3.__sinval;
  a1[3] = v3.__cosval;
  return a1;
}

{
  v3 = __sincosf_stret(a2);
  *a1 = v3.__cosval;
  a1[1] = v3.__sinval;
  a1[2] = -v3.__sinval;
  a1[3] = v3.__cosval;
  return a1;
}

double cva::SO2GroupStorage<float,cva::Matrix<float,2u,2u,false>>::lplus(float *a1, float *a2)
{
  v3 = __sincosf_stret(*a2);
  v5[0] = LODWORD(v3.__cosval);
  v5[1] = LODWORD(v3.__sinval);
  *&v5[2] = -v3.__sinval;
  v5[3] = LODWORD(v3.__cosval);
  v6[0] = v5;
  v6[1] = a1;
  v7 = 0uLL;
  sub_24504C564(&v7, v6);
  result = *&v7;
  *a1 = v7;
  return result;
}

double sub_24504C564(uint64_t a1, float **a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v6 = 0uLL;
    sub_24504C564(&v6);
    result = *&v6;
    *a1 = v6;
  }

  else
  {
    *a1 = ((*v3 * *v4) + 0.0) + (v3[2] * v4[1]);
    *(a1 + 4) = ((v3[1] * *v4) + 0.0) + (v3[3] * v4[1]);
    *(a1 + 8) = ((*v3 * v4[2]) + 0.0) + (v3[2] * v4[3]);
    *&result = ((v3[1] * v4[2]) + 0.0) + (v3[3] * v4[3]);
    *(a1 + 12) = LODWORD(result);
  }

  return result;
}

double cva::SO2AlgebraStorage<float,cva::MatrixRef<float const,1u,1u,false>>::SO2AlgebraStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 1;
  a1[1] = 1;
  return result;
}

{
  *a1 = a2;
  *&result = 1;
  a1[1] = 1;
  return result;
}

{
  *a1 = a2;
  *&result = 1;
  a1[1] = 1;
  return result;
}

{
  *a1 = a2;
  *&result = 1;
  a1[1] = 1;
  return result;
}

float cva::SO2AlgebraStorage<float,cva::MatrixRef<float const,1u,1u,false>>::exp@<S0>(float **a1@<X0>, float *a2@<X8>)
{
  v3 = __sincosf_stret(**a1);
  *a2 = v3.__cosval;
  a2[1] = v3.__sinval;
  result = -v3.__sinval;
  a2[2] = -v3.__sinval;
  a2[3] = v3.__cosval;
  return result;
}

double cva::SO2GroupStorage<float,cva::Matrix<float,2u,2u,false>>::rplus(float *a1, float *a2)
{
  v3 = __sincosf_stret(*a2);
  v5[0] = LODWORD(v3.__cosval);
  v5[1] = LODWORD(v3.__sinval);
  *&v5[2] = -v3.__sinval;
  v5[3] = LODWORD(v3.__cosval);
  v6[0] = a1;
  v6[1] = v5;
  v7 = 0uLL;
  sub_24504C564(&v7, v6);
  result = *&v7;
  *a1 = v7;
  return result;
}

float *cva::SO2GroupStorage<float,cva::Matrix<float,2u,2u,false>>::transform@<X0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v4[0] = a1;
  v4[1] = a2;
  *a3 = 0;
  return sub_24504C6F8(a3, v4);
}

float *sub_24504C6F8(float *result, float **a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 == result || (v4 = a2[1], v4 == result))
  {
    v5 = 0;
    result = sub_24504C6F8(&v5);
    *v2 = v5;
  }

  else
  {
    *result = ((*v3 * *v4) + 0.0) + (v3[2] * v4[1]);
    result[1] = ((v3[1] * *v4) + 0.0) + (v3[3] * v4[1]);
  }

  return result;
}

float *cva::SO2GroupStorage<float,cva::Matrix<float,2u,2u,false>>::inverseTransform@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v4 = a1;
  v5[0] = &v4;
  v5[1] = a2;
  *a3 = 0;
  return sub_24504C7BC(a3, v5);
}

float *sub_24504C7BC(float *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  if (v3 == result)
  {
    v5 = 0;
    result = sub_24504C7BC(&v5);
    *v2 = v5;
  }

  else
  {
    v4 = **a2;
    *result = ((v4[1] * v3[1]) + (*v4 * *v3)) + 0.0;
    result[1] = ((v4[3] * v3[1]) + (v4[2] * *v3)) + 0.0;
  }

  return result;
}

float cva::SO2GroupStorage<float,cva::Matrix<float,2u,2u,false>>::transformJacobian@<S0>(float *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = -a1[1];
  *a2 = result;
  *(a2 + 4) = v2;
  return result;
}

float *cva::SO2GroupStorage<float,cva::Matrix<float,2u,2u,false>>::inverseTransformJacobian@<X0>(uint64_t a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = -*a2;
  *a3 = a2[1];
  a3[1] = v3;
  v5 = a1;
  v6[0] = &v5;
  v6[1] = a3;
  return sub_24504C7BC(a3, v6);
}

void cva::SO2GroupStorage<float,cva::Matrix<float,2u,2u,false>>::log(float *a1@<X0>, float *a2@<X8>)
{
  v3 = atan2f(a1[1], *a1);
  if (v3 <= 0.0)
  {
      ;
    }
  }

  else
  {
      ;
    }
  }

  *a2 = v3;
}

_DWORD *cva::SO2AlgebraStorage<float,cva::Matrix<float,1u,1u,false>>::SO2AlgebraStorage(_DWORD *result)
{
  *result = 0;
  return result;
}

{
  *result = 0;
  return result;
}

void cva::SO2GroupStorage<float,cva::Matrix<float,2u,2u,false>>::logJacobian(float *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = atan2f(a1[1], *a1);
  *a2 = v3;
  if (v3 <= 0.0)
  {
    if (v3 <= -3.1416)
    {
      do
      {
        v3 = v3 + 3.1416;
      }

      while (v3 <= -3.1416);
      goto LABEL_7;
    }
  }

  else if (v3 >= 3.1416)
  {
    do
    {
      v3 = v3 + -3.1416;
    }

    while (v3 >= 3.1416);
LABEL_7:
    *a2 = v3;
  }

  *(a2 + 4) = 1065353216;
}

void cva::SO2GroupStorage<float,cva::Matrix<float,2u,2u,false>>::enforce(float *a1)
{
  v2 = atan2f(a1[1], *a1);
  if (v2 <= 0.0)
  {
      ;
    }
  }

  else
  {
      ;
    }
  }

  v3 = __sincosf_stret(v2);
  *a1 = v3.__cosval;
  a1[1] = v3.__sinval;
  a1[2] = -v3.__sinval;
  a1[3] = v3.__cosval;
}

float cva::SO2AlgebraStorage<float,cva::Matrix<float,1u,1u,false>>::exp@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  v3 = __sincosf_stret(*a1);
  *a2 = v3.__cosval;
  a2[1] = v3.__sinval;
  result = -v3.__sinval;
  a2[2] = -v3.__sinval;
  a2[3] = v3.__cosval;
  return result;
}

void *cva::SO2GroupStorage<double,cva::Matrix<double,2u,2u,false>>::SO2GroupStorage(void *result)
{
  *result = 0x3FF0000000000000;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0x3FF0000000000000;
  return result;
}

{
  *result = 0x3FF0000000000000;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0x3FF0000000000000;
  return result;
}

double *cva::SO2GroupStorage<double,cva::Matrix<double,2u,2u,false>>::SO2GroupStorage(double *a1, double a2)
{
  v3 = __sincos_stret(a2);
  *a1 = v3.__cosval;
  a1[1] = v3.__sinval;
  a1[2] = -v3.__sinval;
  a1[3] = v3.__cosval;
  return a1;
}

{
  v3 = __sincos_stret(a2);
  *a1 = v3.__cosval;
  a1[1] = v3.__sinval;
  a1[2] = -v3.__sinval;
  a1[3] = v3.__cosval;
  return a1;
}

double cva::SO2GroupStorage<double,cva::Matrix<double,2u,2u,false>>::lplus(uint64_t a1, double *a2)
{
  v3 = __sincos_stret(*a2);
  v6[0] = *&v3.__cosval;
  v6[1] = *&v3.__sinval;
  *&v6[2] = -v3.__sinval;
  v6[3] = *&v3.__cosval;
  v7[0] = v6;
  v7[1] = a1;
  v8 = 0u;
  v9 = 0u;
  sub_24504CC0C(&v8, v7);
  result = *&v8;
  v5 = v9;
  *a1 = v8;
  *(a1 + 16) = v5;
  return result;
}

double sub_24504CC0C(uint64_t a1, double **a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v7 = 0u;
    v8 = 0u;
    sub_24504CC0C(&v7);
    result = *&v7;
    v6 = v8;
    *a1 = v7;
    *(a1 + 16) = v6;
  }

  else
  {
    *a1 = *v3 * *v4 + 0.0 + v3[2] * v4[1];
    *(a1 + 8) = v3[1] * *v4 + 0.0 + v3[3] * v4[1];
    *(a1 + 16) = *v3 * v4[2] + 0.0 + v3[2] * v4[3];
    result = v3[1] * v4[2] + 0.0 + v3[3] * v4[3];
    *(a1 + 24) = result;
  }

  return result;
}

double cva::SO2AlgebraStorage<double,cva::MatrixRef<double const,1u,1u,false>>::SO2AlgebraStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 1;
  a1[1] = 1;
  return result;
}

{
  *a1 = a2;
  *&result = 1;
  a1[1] = 1;
  return result;
}

{
  *a1 = a2;
  *&result = 1;
  a1[1] = 1;
  return result;
}

{
  *a1 = a2;
  *&result = 1;
  a1[1] = 1;
  return result;
}

double cva::SO2AlgebraStorage<double,cva::MatrixRef<double const,1u,1u,false>>::exp@<D0>(double **a1@<X0>, double *a2@<X8>)
{
  v3 = __sincos_stret(**a1);
  *a2 = v3.__cosval;
  a2[1] = v3.__sinval;
  result = -v3.__sinval;
  a2[2] = -v3.__sinval;
  a2[3] = v3.__cosval;
  return result;
}

double cva::SO2GroupStorage<double,cva::Matrix<double,2u,2u,false>>::rplus(uint64_t a1, double *a2)
{
  v3 = __sincos_stret(*a2);
  v6[0] = *&v3.__cosval;
  v6[1] = *&v3.__sinval;
  *&v6[2] = -v3.__sinval;
  v6[3] = *&v3.__cosval;
  v7[0] = a1;
  v7[1] = v6;
  v8 = 0u;
  v9 = 0u;
  sub_24504CC0C(&v8, v7);
  result = *&v8;
  v5 = v9;
  *a1 = v8;
  *(a1 + 16) = v5;
  return result;
}

double cva::SO2GroupStorage<double,cva::Matrix<double,2u,2u,false>>::transform@<D0>(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4[0] = a1;
  v4[1] = a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  return sub_24504CDA8(a3, v4);
}

double sub_24504CDA8(double *a1, double **a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v6 = 0uLL;
    sub_24504CDA8(&v6);
    result = *&v6;
    *a1 = v6;
  }

  else
  {
    *a1 = *v3 * *v4 + 0.0 + v3[2] * v4[1];
    result = v3[1] * *v4 + 0.0 + v3[3] * v4[1];
    a1[1] = result;
  }

  return result;
}

double cva::SO2GroupStorage<double,cva::Matrix<double,2u,2u,false>>::inverseTransform@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v5[0] = &v4;
  v5[1] = a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  return sub_24504CE6C(a3, v5);
}

double sub_24504CE6C(double *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == a1)
  {
    v6 = 0uLL;
    sub_24504CE6C(&v6);
    result = *&v6;
    *a1 = v6;
  }

  else
  {
    v4 = **a2;
    *a1 = v4[1] * v3[1] + *v4 * *v3 + 0.0;
    result = v4[3] * v3[1] + v4[2] * *v3 + 0.0;
    a1[1] = result;
  }

  return result;
}

double cva::SO2GroupStorage<double,cva::Matrix<double,2u,2u,false>>::transformJacobian@<D0>(double *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = -a1[1];
  *a2 = result;
  *(a2 + 8) = v2;
  return result;
}

double cva::SO2GroupStorage<double,cva::Matrix<double,2u,2u,false>>::inverseTransformJacobian@<D0>(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v3 = -*a2;
  *a3 = a2[1];
  a3[1] = v3;
  v5 = a1;
  v6[0] = &v5;
  v6[1] = a3;
  return sub_24504CE6C(a3, v6);
}

void cva::SO2GroupStorage<double,cva::Matrix<double,2u,2u,false>>::log(long double *a1@<X0>, double *a2@<X8>)
{
  v3 = atan2(a1[1], *a1);
  if (v3 <= 0.0)
  {
      ;
    }
  }

  else
  {
      ;
    }
  }

  *a2 = v3;
}

void *cva::SO2AlgebraStorage<double,cva::Matrix<double,1u,1u,false>>::SO2AlgebraStorage(void *result)
{
  *result = 0;
  return result;
}

{
  *result = 0;
  return result;
}

void cva::SO2GroupStorage<double,cva::Matrix<double,2u,2u,false>>::logJacobian(long double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = atan2(a1[1], *a1);
  *a2 = v3;
  if (v3 <= 0.0)
  {
    if (v3 <= -3.14159265)
    {
      do
      {
        v3 = v3 + 3.14159265;
      }

      while (v3 <= -3.14159265);
      goto LABEL_7;
    }
  }

  else if (v3 >= 3.14159265)
  {
    do
    {
      v3 = v3 + -3.14159265;
    }

    while (v3 >= 3.14159265);
LABEL_7:
    *a2 = v3;
  }

  *(a2 + 8) = 0x3FF0000000000000;
}

int8x16_t cva::SO2GroupStorage<double,cva::Matrix<double,2u,2u,false>>::inverse@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  result = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  return result;
}

void cva::SO2GroupStorage<double,cva::Matrix<double,2u,2u,false>>::enforce(uint64_t a1)
{
  v2 = atan2(*(a1 + 8), *a1);
  if (v2 <= 0.0)
  {
      ;
    }
  }

  else
  {
      ;
    }
  }

  v3 = __sincos_stret(v2);
  *a1 = v3.__cosval;
  *(a1 + 8) = v3.__sinval;
  *(a1 + 16) = -v3.__sinval;
  *(a1 + 24) = v3.__cosval;
}

double cva::SO2AlgebraStorage<double,cva::Matrix<double,1u,1u,false>>::exp@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v3 = __sincos_stret(*a1);
  *a2 = v3.__cosval;
  a2[1] = v3.__sinval;
  result = -v3.__sinval;
  a2[2] = -v3.__sinval;
  a2[3] = v3.__cosval;
  return result;
}

double cva::SO2GroupStorage<float,cva::MatrixRef<float const,2u,2u,false>>::SO2GroupStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 2;
  a1[1] = 2;
  return result;
}

{
  *a1 = a2;
  *&result = 2;
  a1[1] = 2;
  return result;
}

{
  *a1 = a2;
  *&result = 2;
  a1[1] = 2;
  return result;
}

{
  *a1 = a2;
  *&result = 2;
  a1[1] = 2;
  return result;
}

float *cva::SO2GroupStorage<float,cva::MatrixRef<float const,2u,2u,false>>::transform@<X0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v4[0] = a1;
  v4[1] = a2;
  *a3 = 0;
  return sub_24503EAF8(a3, v4);
}

float *cva::SO2GroupStorage<float,cva::MatrixRef<float const,2u,2u,false>>::inverseTransform@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, float *a3@<X8>)
{
  v4 = a1;
  v5[0] = &v4;
  v5[1] = a2;
  *a3 = 0;
  return sub_24503EC68(a3, v5);
}

float cva::SO2GroupStorage<float,cva::MatrixRef<float const,2u,2u,false>>::transformJacobian@<S0>(float *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = -a1[1];
  *a2 = result;
  *(a2 + 4) = v2;
  return result;
}

float *cva::SO2GroupStorage<float,cva::MatrixRef<float const,2u,2u,false>>::inverseTransformJacobian@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = -*a2;
  *a3 = *(a2 + 4);
  *(a3 + 4) = v3;
  v5 = a1;
  v6[0] = &v5;
  v6[1] = a3;
  return sub_24503EC68(a3, v6);
}

void cva::SO2GroupStorage<float,cva::MatrixRef<float const,2u,2u,false>>::log(float **a1@<X0>, float *a2@<X8>)
{
  v3 = atan2f((*a1)[1], **a1);
  if (v3 <= 0.0)
  {
      ;
    }
  }

  else
  {
      ;
    }
  }

  *a2 = v3;
}

void cva::SO2GroupStorage<float,cva::MatrixRef<float const,2u,2u,false>>::logJacobian(float **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = atan2f((*a1)[1], **a1);
  *a2 = v3;
  if (v3 <= 0.0)
  {
    if (v3 <= -3.1416)
    {
      do
      {
        v3 = v3 + 3.1416;
      }

      while (v3 <= -3.1416);
      goto LABEL_7;
    }
  }

  else if (v3 >= 3.1416)
  {
    do
    {
      v3 = v3 + -3.1416;
    }

    while (v3 >= 3.1416);
LABEL_7:
    *a2 = v3;
  }

  *(a2 + 4) = 1065353216;
}

float cva::SO2GroupStorage<float,cva::MatrixRef<float const,2u,2u,false>>::inverse@<S0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[2];
  result = *(*a1 + 4 * v2);
  v4 = *(*a1 + 4);
  v5 = *(*a1 + 4 * (v2 + 1));
  *a2 = **a1;
  *(a2 + 4) = result;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  return result;
}

uint64_t cva::SO2GroupStorage<float,cva::MatrixRef<float const,2u,2u,false>>::serialize(uint64_t result)
{
  v1 = *(result + 8);
  if (2 * v1)
  {
    v2 = *result;
    v3 = *result + 4 * (2 * v1);
    v4 = (v1 - 2) << 32;
    do
    {
      v8 = *v2;
      result = std::ostream::write();
      v5 = HIDWORD(v4);
      if (v4 < 1)
      {
        v5 = 0;
      }

      v6 = &v2[v5];
      v7 = (v4 + 1);
      if (v4 >= 1)
      {
        v7 = 0;
      }

      v4 = v7 | v4 & 0xFFFFFFFF00000000;
      v2 = v6 + 1;
    }

    while (v6 + 1 != v3);
  }

  return result;
}

double cva::SO2GroupStorage<double,cva::MatrixRef<double const,2u,2u,false>>::SO2GroupStorage(void *a1, uint64_t a2)
{
  *a1 = a2;
  *&result = 2;
  a1[1] = 2;
  return result;
}

{
  *a1 = a2;
  *&result = 2;
  a1[1] = 2;
  return result;
}

{
  *a1 = a2;
  *&result = 2;
  a1[1] = 2;
  return result;
}

{
  *a1 = a2;
  *&result = 2;
  a1[1] = 2;
  return result;
}

double *cva::SO2GroupStorage<double,cva::MatrixRef<double const,2u,2u,false>>::transform@<X0>(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4[0] = a1;
  v4[1] = a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  return sub_24503FC18(a3, v4);
}

double cva::SO2GroupStorage<double,cva::MatrixRef<double const,2u,2u,false>>::inverseTransform@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v5[0] = &v4;
  v5[1] = a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  return sub_24503FDB0(a3, v5);
}

double cva::SO2GroupStorage<double,cva::MatrixRef<double const,2u,2u,false>>::transformJacobian@<D0>(double *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  result = -a1[1];
  *a2 = result;
  *(a2 + 8) = v2;
  return result;
}

double cva::SO2GroupStorage<double,cva::MatrixRef<double const,2u,2u,false>>::inverseTransformJacobian@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = -*a2;
  *a3 = *(a2 + 8);
  *(a3 + 8) = v3;
  v5 = a1;
  v6[0] = &v5;
  v6[1] = a3;
  return sub_24503FDB0(a3, v6);
}

void cva::SO2GroupStorage<double,cva::MatrixRef<double const,2u,2u,false>>::log(long double **a1@<X0>, double *a2@<X8>)
{
  v3 = atan2((*a1)[1], **a1);
  if (v3 <= 0.0)
  {
      ;
    }
  }

  else
  {
      ;
    }
  }

  *a2 = v3;
}

void cva::SO2GroupStorage<double,cva::MatrixRef<double const,2u,2u,false>>::logJacobian(long double **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = atan2((*a1)[1], **a1);
  *a2 = v3;
  if (v3 <= 0.0)
  {
    if (v3 <= -3.14159265)
    {
      do
      {
        v3 = v3 + 3.14159265;
      }

      while (v3 <= -3.14159265);
      goto LABEL_7;
    }
  }

  else if (v3 >= 3.14159265)
  {
    do
    {
      v3 = v3 + -3.14159265;
    }

    while (v3 >= 3.14159265);
LABEL_7:
    *a2 = v3;
  }

  *(a2 + 8) = 0x3FF0000000000000;
}

double cva::SO2GroupStorage<double,cva::MatrixRef<double const,2u,2u,false>>::inverse@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[2];
  result = *(*a1 + 8 * v2);
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 8 * (v2 + 1));
  *a2 = **a1;
  *(a2 + 8) = result;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  return result;
}

uint64_t cva::SO2GroupStorage<double,cva::MatrixRef<double const,2u,2u,false>>::serialize(uint64_t result)
{
  v1 = *(result + 8);
  if (2 * v1)
  {
    v2 = *result;
    v3 = *result + 8 * (2 * v1);
    v4 = (v1 - 2) << 32;
    do
    {
      v8 = *v2;
      result = std::ostream::write();
      v5 = HIDWORD(v4);
      if (v4 < 1)
      {
        v5 = 0;
      }

      v6 = &v2[v5];
      v7 = (v4 + 1);
      if (v4 >= 1)
      {
        v7 = 0;
      }

      v4 = v7 | v4 & 0xFFFFFFFF00000000;
      v2 = v6 + 1;
    }

    while (v6 + 1 != v3);
  }

  return result;
}

float cva::SO2AlgebraStorage<float,cva::Matrix<float,1u,1u,false>>::hat@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  result = *a1;
  v3 = -*a1;
  *(a2 + 4) = *a1;
  *(a2 + 8) = v3;
  return result;
}

float cva::SO2AlgebraStorage<float,cva::Matrix<float,1u,1u,false>>::exp@<S0>(float *a1@<X0>, float *a2@<X8>, float a3@<S0>)
{
  v4 = __sincosf_stret(*a1 * a3);
  *a2 = v4.__cosval;
  a2[1] = v4.__sinval;
  result = -v4.__sinval;
  a2[2] = -v4.__sinval;
  a2[3] = v4.__cosval;
  return result;
}

float cva::SO2AlgebraStorage<float,cva::Matrix<float,1u,1u,false>>::expJacobian@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __sincosf_stret(*a1);
  *a2 = v3.__cosval;
  *(a2 + 4) = v3.__sinval;
  result = -v3.__sinval;
  *(a2 + 8) = -v3.__sinval;
  *(a2 + 12) = v3.__cosval;
  *(a2 + 16) = 1065353216;
  return result;
}

float *cva::SO2AlgebraStorage<float,cva::Matrix<float,1u,1u,false>>::enforce(float *result)
{
  v1 = *result;
  if (*result <= 0.0)
  {
    if (v1 > -3.1416)
    {
      return result;
    }

    do
    {
      v1 = v1 + 3.1416;
    }

    while (v1 <= -3.1416);
  }

  else
  {
    if (v1 < 3.1416)
    {
      return result;
    }

    do
    {
      v1 = v1 + -3.1416;
    }

    while (v1 >= 3.1416);
  }

  *result = v1;
  return result;
}

double cva::SO2AlgebraStorage<double,cva::Matrix<double,1u,1u,false>>::hat@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = *a1;
  v3 = -*a1;
  *(a2 + 8) = *a1;
  *(a2 + 16) = v3;
  return result;
}

double cva::SO2AlgebraStorage<double,cva::Matrix<double,1u,1u,false>>::exp@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v4 = __sincos_stret(*a1 * a3);
  *a2 = v4.__cosval;
  a2[1] = v4.__sinval;
  result = -v4.__sinval;
  a2[2] = -v4.__sinval;
  a2[3] = v4.__cosval;
  return result;
}

double cva::SO2AlgebraStorage<double,cva::Matrix<double,1u,1u,false>>::expJacobian@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __sincos_stret(*a1);
  *a2 = v3.__cosval;
  *(a2 + 8) = v3.__sinval;
  result = -v3.__sinval;
  *(a2 + 16) = -v3.__sinval;
  *(a2 + 24) = v3.__cosval;
  *(a2 + 32) = 0x3FF0000000000000;
  return result;
}

double *cva::SO2AlgebraStorage<double,cva::Matrix<double,1u,1u,false>>::enforce(double *result)
{
  v1 = *result;
  if (*result <= 0.0)
  {
    if (v1 > -3.14159265)
    {
      return result;
    }

    do
    {
      v1 = v1 + 3.14159265;
    }

    while (v1 <= -3.14159265);
  }

  else
  {
    if (v1 < 3.14159265)
    {
      return result;
    }

    do
    {
      v1 = v1 + -3.14159265;
    }

    while (v1 >= 3.14159265);
  }

  *result = v1;
  return result;
}

float cva::SO2AlgebraStorage<float,cva::MatrixRef<float const,1u,1u,false>>::hat@<S0>(float **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  result = **a1;
  *(a2 + 4) = result;
  *(a2 + 8) = -result;
  return result;
}

float cva::SO2AlgebraStorage<float,cva::MatrixRef<float const,1u,1u,false>>::exp@<S0>(float **a1@<X0>, float *a2@<X8>, float a3@<S0>)
{
  v4 = __sincosf_stret(**a1 * a3);
  *a2 = v4.__cosval;
  a2[1] = v4.__sinval;
  result = -v4.__sinval;
  a2[2] = -v4.__sinval;
  a2[3] = v4.__cosval;
  return result;
}

float cva::SO2AlgebraStorage<float,cva::MatrixRef<float const,1u,1u,false>>::expJacobian@<S0>(float **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __sincosf_stret(**a1);
  *a2 = v3.__cosval;
  *(a2 + 4) = v3.__sinval;
  result = -v3.__sinval;
  *(a2 + 8) = -v3.__sinval;
  *(a2 + 12) = v3.__cosval;
  *(a2 + 16) = 1065353216;
  return result;
}

double cva::SO2AlgebraStorage<double,cva::MatrixRef<double const,1u,1u,false>>::hat@<D0>(double **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = **a1;
  *(a2 + 8) = result;
  *(a2 + 16) = -result;
  return result;
}

double cva::SO2AlgebraStorage<double,cva::MatrixRef<double const,1u,1u,false>>::exp@<D0>(double **a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v4 = __sincos_stret(**a1 * a3);
  *a2 = v4.__cosval;
  a2[1] = v4.__sinval;
  result = -v4.__sinval;
  a2[2] = -v4.__sinval;
  a2[3] = v4.__cosval;
  return result;
}

double cva::SO2AlgebraStorage<double,cva::MatrixRef<double const,1u,1u,false>>::expJacobian@<D0>(double **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __sincos_stret(**a1);
  *a2 = v3.__cosval;
  *(a2 + 8) = v3.__sinval;
  result = -v3.__sinval;
  *(a2 + 16) = -v3.__sinval;
  *(a2 + 24) = v3.__cosval;
  *(a2 + 32) = 0x3FF0000000000000;
  return result;
}

__int128 *cva::Profiler::instance(cva::Profiler *this)
{
  if ((atomic_load_explicit(&qword_27EDF6408, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EDF6408))
  {
    sub_24504F630();
  }

  return &xmmword_27EDF6380;
}

void sub_24504F630()
{
  xmmword_27EDF63C0 = 0u;
  *&qword_27EDF63D0 = 0u;
  xmmword_27EDF63A0 = 0u;
  unk_27EDF63B0 = 0u;
  xmmword_27EDF6380 = 0u;
  *&qword_27EDF6390 = 0u;
  qword_27EDF63E0 = 0x400000000000000;
  qword_27EDF63E8 = &qword_27EDF63E8;
  qword_27EDF63F0 = &qword_27EDF63E8;
  unk_27EDF63F8 = 0;
  qword_27EDF63D0 = 1953460050;
  byte_27EDF6400 = 1;
  operator new();
}

uint64_t sub_24504F8B4(uint64_t a1)
{
  sub_24504F9D8(a1 + 48);
  if (*(a1 + 120))
  {
    v2 = *(a1 + 112);
    v3 = *(*(a1 + 104) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 120) = 0;
    if (v2 != (a1 + 104))
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 104));
    }
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 40) = 0;
  v8 = v7 - v6;
  if (v8 >= 3)
  {
    do
    {
      operator delete(*v6);
      v7 = *(a1 + 16);
      v6 = (*(a1 + 8) + 8);
      *(a1 + 8) = v6;
      v8 = v7 - v6;
    }

    while (v8 > 2);
  }

  if (v8 == 1)
  {
    v9 = 256;
    goto LABEL_12;
  }

  if (v8 == 2)
  {
    v9 = 512;
LABEL_12:
    *(a1 + 32) = v9;
  }

  if (v6 != v7)
  {
    do
    {
      v10 = *v6++;
      operator delete(v10);
    }

    while (v6 != v7);
    v12 = *(a1 + 8);
    v11 = *(a1 + 16);
    if (v11 != v12)
    {
      *(a1 + 16) = v11 + ((v12 - v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_24504F9D8(uint64_t a1)
{
  v2 = (a1 + 56);
  v3 = *(a1 + 64);
  if (v3 != (a1 + 56))
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        sub_24504F9D8(v3[2]);
        if (*(v4 + 72))
        {
          v5 = *(v4 + 64);
          v6 = *(*(v4 + 56) + 8);
          v7 = *v5;
          *(v7 + 8) = v6;
          *v6 = v7;
          *(v4 + 72) = 0;
          if (v5 != (v4 + 56))
          {
            do
            {
              v8 = v5[1];
              operator delete(v5);
              v5 = v8;
            }

            while (v8 != (v4 + 56));
          }
        }

        if (*(v4 + 55) < 0)
        {
          operator delete(*(v4 + 32));
        }

        MEMORY[0x245D61480](v4, 0x1032C40776C1D1BLL);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (*(a1 + 72))
  {
    v9 = *(a1 + 64);
    v10 = *(*(a1 + 56) + 8);
    v11 = *v9;
    *(v11 + 8) = v10;
    *v10 = v11;
    *(a1 + 72) = 0;
    if (v9 != v2)
    {
      do
      {
        v12 = v9[1];
        operator delete(v9);
        v9 = v12;
      }

      while (v12 != v2);
    }
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void cva::backTrace(cva *this@<X0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, _BYTE *a6@<X8>)
{
  v8 = this;
  v81 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    operator new();
  }

  v58 = backtrace(0, 0);
  v9 = backtrace_symbols(0, v58);
  v77 = 0;
  v64 = &unk_2857FD4B0;
  v65 = v9;
  v67 = &v64;
  sub_245050624(&v64, v76);
  v60 = v8;
  v57 = a4;
  if (v67 == &v64)
  {
    (*(*v67 + 4))(v67);
  }

  else if (v67)
  {
    (*(*v67 + 5))();
  }

  v75[6] = 0;
  v55 = MEMORY[0x277D82890] + 24;
  v53 = MEMORY[0x277D82890] + 104;
  v75[0] = MEMORY[0x277D82890] + 104;
  v10 = MEMORY[0x277D82890] + 64;
  v66 = MEMORY[0x277D82890] + 64;
  v11 = MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 24);
  v64 = *(MEMORY[0x277D82818] + 16);
  *(&v64 + *(v64 - 3)) = v12;
  v65 = 0;
  v13 = (&v64 + *(v64 - 3));
  std::ios_base::init(v13, &v67);
  v13[1].__vftable = 0;
  v13[1].__fmtflags_ = -1;
  v14 = v11[5];
  v66 = v11[4];
  *(&v66 + *(v66 - 24)) = v14;
  v64 = v11[1];
  *(&v64 + *(v64 - 3)) = v11[6];
  v75[0] = v53;
  v64 = v55;
  v56 = MEMORY[0x277D82868] + 16;
  v66 = v10;
  v67 = (MEMORY[0x277D82868] + 16);
  MEMORY[0x245D61420](&v68);
  v71 = 0u;
  v69 = 0u;
  v70 = 0u;
  v54 = MEMORY[0x277D82878] + 16;
  v67 = (MEMORY[0x277D82878] + 16);
  __p = 0u;
  v73 = 0u;
  v74 = 24;
  sub_245050864(&v67);
  v15 = v60;
  if (v58 > a4)
  {
    v16 = a4;
    v17 = MEMORY[0x277D85DE0];
    do
    {
      snprintf(__str, 0x20uLL, "%-3u 0x%016lx ", v16 - v57, *(8 * v16));
      v20 = strlen(__str);
      sub_2450509AC(&v66, __str, v20);
      v21 = v9[v16];
      v22 = *v21;
      if (v22 < 1)
      {
        goto LABEL_50;
      }

      if ((*(v17 + 4 * v22 + 60) & 0x400) == 0)
      {
LABEL_13:
        if (v22 != 48)
        {
          goto LABEL_50;
        }

        if (v21[1] != 120)
        {
          goto LABEL_50;
        }

        v23 = v21[2];
        if (v23 < 0 || (*(v17 + 4 * v23 + 60) & 0x10000) == 0)
        {
          goto LABEL_50;
        }

        if (v21[2])
        {
          v21 += 2;
          do
          {
            if ((*(v17 + 4 * v23 + 60) & 0x10000) == 0)
            {
              goto LABEL_22;
            }

            v24 = *++v21;
            LODWORD(v23) = v24;
          }

          while (v24 > 0);
          if (v23)
          {
            do
            {
LABEL_22:
              if ((v23 & 0x80) != 0)
              {
                if (!__maskrune(v23, 0x4000uLL))
                {
                  goto LABEL_50;
                }
              }

              else if ((*(v17 + 4 * v23 + 60) & 0x4000) == 0)
              {
                goto LABEL_50;
              }

              v25 = *++v21;
              LOBYTE(v23) = v25;
            }

            while (v25);
          }

          goto LABEL_50;
        }

        v21 += 2;
        if (!v15)
        {
          goto LABEL_9;
        }

LABEL_51:
        if (dladdr(*(8 * v16), &v61))
        {
          v32 = v61.dli_sname == 0;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
          goto LABEL_9;
        }

        v63 = 0;
        *__str = &unk_2857FD468;
        v79 = 0;
        v80 = __str;
        sub_245050624(__str, v62);
        if (v80 == __str)
        {
          (*(*v80 + 32))(v80);
        }

        else if (v80)
        {
          (*(*v80 + 40))();
        }

        *__str = -1;
        dli_sname = v61.dli_sname;
        if (a2 && *v61.dli_sname == 95)
        {
          v34 = __cxa_demangle(v61.dli_sname, 0, 0, __str);
          dli_sname = v61.dli_sname;
          v35 = *__str == 0;
        }

        else
        {
          v35 = 0;
          v34 = 0;
        }

        if (dli_sname)
        {
          v36 = dli_sname;
        }

        else
        {
          v36 = v21;
        }

        if (v35 && v34 != 0)
        {
          v37 = v34;
        }

        else
        {
          v37 = v36;
        }

        v38 = strlen(v37);
        v39 = sub_2450509AC(&v66, v37, v38);
        v40 = sub_2450509AC(v39, " + ", 3);
        MEMORY[0x245D61340](v40, *(8 * v16) - v61.dli_saddr);
        if (a3 && v61.dli_fname)
        {
          v41 = strrchr(v61.dli_fname, 47);
          sub_2450509AC(&v66, " (", 2);
          if (v41)
          {
            dli_fname = v41 + 1;
          }

          else
          {
            dli_fname = v61.dli_fname;
          }

          v43 = strlen(dli_fname);
          v44 = sub_2450509AC(&v66, dli_fname, v43);
          sub_2450509AC(v44, ")", 1);
        }

        sub_2450509AC(&v66, "\n", 1);
        v15 = v60;
        if (v63)
        {
          (*(*v63 + 48))(v63);
          if (v63 == v62)
          {
            (*(*v63 + 32))(v63);
          }

          else if (v63)
          {
            (*(*v63 + 40))();
          }

          goto LABEL_10;
        }

LABEL_106:
        sub_245050C64();
      }

      do
      {
        if ((*(v17 + 4 * v22 + 60) & 0x400) == 0)
        {
          goto LABEL_31;
        }

        v26 = *++v21;
        LODWORD(v22) = v26;
      }

      while (v26 > 0);
      if (!v22)
      {
        goto LABEL_50;
      }

LABEL_31:
      while ((v22 & 0x80) == 0)
      {
        if ((*(v17 + 4 * v22 + 60) & 0x4000) == 0)
        {
          goto LABEL_37;
        }

LABEL_35:
        v27 = *++v21;
        LOBYTE(v22) = v27;
        if (!v27)
        {
          goto LABEL_50;
        }
      }

      if (__maskrune(v22, 0x4000uLL))
      {
        goto LABEL_35;
      }

LABEL_37:
      v28 = *v21;
      if (!*v21)
      {
        goto LABEL_50;
      }

      while (2)
      {
        if ((v28 & 0x80) == 0)
        {
          if ((*(v17 + 4 * v28 + 60) & 0x4000) != 0)
          {
            break;
          }

          goto LABEL_42;
        }

        if (!__maskrune(v28, 0x4000uLL))
        {
LABEL_42:
          v29 = *++v21;
          v28 = v29;
          if (!v29)
          {
            goto LABEL_50;
          }

          continue;
        }

        break;
      }

      v30 = *v21;
      if (*v21)
      {
        do
        {
          if (v30 < 0)
          {
            if (!__maskrune(v30, 0x4000uLL))
            {
LABEL_80:
              LOBYTE(v22) = *v21;
              goto LABEL_13;
            }
          }

          else if ((*(v17 + 4 * v30 + 60) & 0x4000) == 0)
          {
            goto LABEL_80;
          }

          v31 = *++v21;
          v30 = v31;
        }

        while (v31);
      }

LABEL_50:
      if (v15)
      {
        goto LABEL_51;
      }

LABEL_9:
      v18 = strlen(v21);
      v19 = sub_2450509AC(&v66, v21, v18);
      sub_2450509AC(v19, "\n", 1);
LABEL_10:
      ++v16;
    }

    while (v16 != v58);
  }

  if (!v58)
  {
    sub_2450509AC(&v66, "...                    <redacted>\n", 34);
  }

  if ((v74 & 0x10) != 0)
  {
    v47 = *(&v73 + 1);
    if (*(&v73 + 1) < v71)
    {
      *(&v73 + 1) = v71;
      v47 = v71;
    }

    v48 = &v70 + 1;
  }

  else
  {
    if ((v74 & 8) == 0)
    {
      v45 = 0;
      a6[23] = 0;
      v46 = v56;
      goto LABEL_98;
    }

    v48 = &v69;
    v47 = v70;
  }

  v49 = *v48;
  v45 = v47 - *v48;
  if (v45 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24504FAF4();
  }

  if (v45 >= 0x17)
  {
    operator new();
  }

  a6[23] = v45;
  v46 = v56;
  if (v45)
  {
    memmove(a6, v49, v45);
  }

LABEL_98:
  a6[v45] = 0;
  v64 = *MEMORY[0x277D82818];
  v50 = *(MEMORY[0x277D82818] + 72);
  *(&v64 + *(v64 - 3)) = *(MEMORY[0x277D82818] + 64);
  v66 = v50;
  v67 = v54;
  if (SBYTE7(v73) < 0)
  {
    operator delete(__p);
  }

  v67 = v46;
  std::locale::~locale(&v68);
  std::iostream::~basic_iostream();
  MEMORY[0x245D61460](v75);
  if (!v77)
  {
    goto LABEL_106;
  }

  (*(*v77 + 48))(v77);
  if (v77 == v76)
  {
    (*(*v77 + 32))(v77);
  }

  else if (v77)
  {
    (*(*v77 + 40))();
  }

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t sub_245050624(uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v8[0] + 24))(v8, v5);
        result = (*(v8[0] + 32))(v8);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        goto LABEL_11;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245050864(uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *sub_2450509AC(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245D612F0](v20, a1);
  if (v20[0] != 1)
  {
    goto LABEL_30;
  }

  v6 = a1 + *(*a1 - 24);
  v7 = *(v6 + 5);
  v8 = a2 + a3;
  if ((*(v6 + 2) & 0xB0) == 0x20)
  {
    v9 = a2 + a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = *(v6 + 36);
  if (v10 == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v11 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
    v10 = (v11->__vftable[2].~facet_0)(v11, 32);
    std::locale::~locale(&__b);
    *(v6 + 36) = v10;
    if (!v7)
    {
      goto LABEL_29;
    }
  }

  else if (!v7)
  {
    goto LABEL_29;
  }

  v12 = *(v6 + 3);
  v13 = v12 <= a3;
  v14 = v12 - a3;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if (v9 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v9 - a2) != v9 - a2)
  {
    goto LABEL_29;
  }

  if (v15 >= 1)
  {
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_24504FAF4();
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v22 = v15;
    memset(&__b, v10, v15);
    *(&__b.__locale_ + v15) = 0;
    if (v22 >= 0)
    {
      p_b = &__b;
    }

    else
    {
      p_b = __b.__locale_;
    }

    v17 = (*(*v7 + 96))(v7, p_b, v15);
    v18 = v17;
    if ((v22 & 0x80000000) == 0)
    {
      if (v17 != v15)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    operator delete(__b.__locale_);
    if (v18 != v15)
    {
LABEL_29:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
      goto LABEL_30;
    }
  }

LABEL_26:
  if (v8 - v9 >= 1 && (*(*v7 + 96))(v7, v9, v8 - v9) != v8 - v9)
  {
    goto LABEL_29;
  }

  *(v6 + 3) = 0;
LABEL_30:
  MEMORY[0x245D61300](v20);
  return a1;
}

uint64_t sub_245050C8C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2857FD468;
  a2[1] = v2;
  return result;
}

uint64_t sub_245050D30(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2857FD4B0;
  a2[1] = v2;
  return result;
}

__int128 *cva::ProfilerAriadne::instance(cva::ProfilerAriadne *this)
{
  if ((atomic_load_explicit(&qword_27EDF64B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EDF64B0))
  {
    sub_245050E3C();
    __cxa_atexit(sub_245050ED0, &xmmword_27EDF6410, &dword_245028000);
    __cxa_guard_release(&qword_27EDF64B0);
  }

  return &xmmword_27EDF6410;
}

uint64_t sub_245050E3C()
{
  v3 = *MEMORY[0x277D85DE8];
  xmmword_27EDF6410 = 0u;
  unk_27EDF6420 = 0u;
  xmmword_27EDF6430 = 0u;
  unk_27EDF6440 = 0u;
  xmmword_27EDF6450 = 0u;
  dword_27EDF6460 = 1065353216;
  word_27EDF6468 = 0;
  pthread_mutexattr_init(&v2);
  pthread_mutexattr_settype(&v2, 2);
  result = pthread_mutex_init(&stru_27EDF6470, &v2);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245050ED0(uint64_t a1)
{
  pthread_mutex_destroy((a1 + 96));
  v2 = *(a1 + 64);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return sub_245050F54(a1);
}

uint64_t sub_245050F54(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v4 = (a1 + 40);
    v3 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * v5 + -4080 * (v5 / 0xAA);
    v9 = v2[(*(a1 + 40) + v5) / 0xAA] + 24 * *(a1 + 40) + 24 * v5 + -4080 * ((*(a1 + 40) + v5) / 0xAA);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 85;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 170;
LABEL_17:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t cva::ProfilerAriadne::printPlist(cva::ProfilerAriadne *this)
{
  v34[6] = 0;
  v2 = MEMORY[0x277D828A0] + 24;
  v3 = MEMORY[0x277D828A0] + 64;
  v34[0] = MEMORY[0x277D828A0] + 64;
  v4 = *(MEMORY[0x277D82828] + 16);
  v25 = *(MEMORY[0x277D82828] + 8);
  *(&v25 + *(v25 - 24)) = v4;
  v5 = (&v25 + *(v25 - 24));
  std::ios_base::init(v5, &v26);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  v34[0] = v3;
  v24 = MEMORY[0x277D82868] + 16;
  v25 = v2;
  v26 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245D61420](&v27);
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v23 = MEMORY[0x277D82878] + 16;
  v26 = MEMORY[0x277D82878] + 16;
  *__p = 0u;
  v32 = 0u;
  v33 = 16;
  sub_245050864(&v26);
  pthread_mutex_lock((this + 96));
  sub_2450509AC(&v25, "Ariadne custom signpost plist:\n", 31);
  sub_2450509AC(&v25, "<?xml version=1.0 encoding=UTF-8?>\n", 39);
  sub_2450509AC(&v25, "<!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>\n", 103);
  sub_2450509AC(&v25, "<plist version=1.0>\n", 22);
  sub_2450509AC(&v25, "<array>\n", 8);
  sub_2450509AC(&v25, "  <dict>\n", 9);
  sub_2450509AC(&v25, "    <key>Name</key>\n", 20);
  sub_2450509AC(&v25, "    <string>AppleCVA</string>\n", 30);
  sub_2450509AC(&v25, "    <key>Children</key>\n", 24);
  sub_2450509AC(&v25, "    <array>\n", 12);
  for (i = *(this + 8); i; i = *i)
  {
    sub_2450509AC(&v25, "      <dict>\n", 13);
    sub_2450509AC(&v25, "        <key>Name</key>\n", 24);
    sub_2450509AC(&v25, "        <string>", 16);
    v7 = *(i + 39);
    if (v7 >= 0)
    {
      v8 = (i + 2);
    }

    else
    {
      v8 = i[2];
    }

    if (v7 >= 0)
    {
      v9 = *(i + 39);
    }

    else
    {
      v9 = i[3];
    }

    sub_2450509AC(&v25, v8, v9);
    sub_2450509AC(&v25, "</string>\n", 10);
    sub_2450509AC(&v25, "        <key>Type</key>\n", 24);
    sub_2450509AC(&v25, "        <string>Interval</string>\n", 34);
    sub_2450509AC(&v25, "        <key>Component</key>\n", 29);
    sub_2450509AC(&v25, "        <string>", 16);
    v10 = v25;
    *(&v26 + *(v25 - 24)) = *(&v26 + *(v25 - 24)) & 0xFFFFFFB5 | 8;
    *(&v26 + *(v10 - 24)) |= 0x200u;
    v11 = MEMORY[0x245D61330](&v25, 0);
    v12 = *v11;
    *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 2;
    *(v11 + *(v12 - 24) + 8) &= ~0x200u;
    v13 = sub_2450509AC(v11, "</string>\n", 10);
    v14 = sub_2450509AC(v13, "        <key>CodeBegin</key>\n", 29);
    v15 = sub_2450509AC(v14, "        <string>", 16);
    v16 = MEMORY[0x245D61350](v15, *(i + 20));
    v17 = sub_2450509AC(v16, "</string>\n", 10);
    v18 = sub_2450509AC(v17, "        <key>CodeEnd</key>\n", 27);
    v19 = sub_2450509AC(v18, "        <string>", 16);
    v20 = MEMORY[0x245D61330](v19, *(i + 20) + 1);
    v21 = sub_2450509AC(v20, "</string>\n", 10);
    sub_2450509AC(v21, "      </dict>\n", 14);
  }

  sub_2450509AC(&v25, "    </array>\n", 13);
  sub_2450509AC(&v25, "  </dict>\n", 10);
  sub_2450509AC(&v25, "</array>\n", 9);
  sub_2450509AC(&v25, "</plist>\n", 9);
  pthread_mutex_unlock((this + 96));
  v25 = *MEMORY[0x277D82828];
  *(&v25 + *(v25 - 24)) = *(MEMORY[0x277D82828] + 24);
  v26 = v23;
  if (SBYTE7(v32) < 0)
  {
    operator delete(__p[0]);
  }

  v26 = v24;
  std::locale::~locale(&v27);
  std::ostream::~ostream();
  return MEMORY[0x245D61460](v34);
}

uint64_t cva::ProfilerAriadne::clear(cva::ProfilerAriadne *this)
{
  pthread_mutex_lock((this + 96));
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v2 == v3)
  {
    v4 = (this + 40);
    v11 = *(this + 1);
  }

  else
  {
    v4 = (this + 40);
    v5 = *(this + 4);
    v6 = &v3[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * v5 + -4080 * (v5 / 0xAA);
    v9 = v3[(*(this + 5) + v5) / 0xAA] + 24 * *(this + 5) + 24 * v5 + -4080 * ((*(this + 5) + v5) / 0xAA);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = *(this + 1);
      v2 = *(this + 2);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = (v11 - v3) >> 3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(this + 2);
      v3 = (*(this + 1) + 8);
      *(this + 1) = v3;
      v12 = (v2 - v3) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 85;
    goto LABEL_18;
  }

  if (v12 == 2)
  {
    v13 = 170;
LABEL_18:
    *(this + 4) = v13;
  }

  v14 = *(this + 5);
  if (v14)
  {
    v15 = *(this + 4);
    if (v15 >= 0xAA)
    {
      operator delete(*v3);
      v2 = *(this + 2);
      v3 = (*(this + 1) + 8);
      *(this + 1) = v3;
      v14 = *(this + 5);
      v15 = *(this + 4) - 170;
      *(this + 4) = v15;
    }

    v16 = 170 * ((v2 - v3) >> 3) - 1;
    if (v2 == v3)
    {
      v16 = 0;
    }

    if (v16 - (v14 + v15) >= 0xAA)
    {
      operator delete(*(v2 - 8));
      v3 = *(this + 1);
      v2 = *(this + 2) - 8;
      *(this + 2) = v2;
    }
  }

  else
  {
    while (v2 != v3)
    {
      operator delete(*(v2 - 8));
      v3 = *(this + 1);
      v2 = *(this + 2) - 8;
      *(this + 2) = v2;
    }

    *(this + 4) = 0;
    v3 = v2;
  }

  v17 = *this;
  v18 = *(this + 3) - *this;
  v19 = v2 - v3;
  if (v18 > v2 - v3)
  {
    v20 = v19 >> 3;
    if (v2 != v3)
    {
      if (!(v20 >> 61))
      {
        operator new();
      }

      goto LABEL_75;
    }

    if (v19 < v18)
    {
      v21 = *(this + 1);
      v22 = (*(this + 2) - v21);
      v23 = v22;
      if (!v22)
      {
        goto LABEL_44;
      }

      v24 = (v22 - 1);
      if ((v22 - 1) < 0x18)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0;
        if (-v21 >= 0x20)
        {
          v26 = (v24 >> 3) + 1;
          v25 = (8 * (v26 & 0x3FFFFFFFFFFFFFFCLL));
          v27 = (v21 + 16);
          v28 = 16;
          v29 = v26 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v30 = *v27;
            *(v28 - 16) = *(v27 - 1);
            *v28 = v30;
            v27 += 2;
            v28 += 32;
            v29 -= 4;
          }

          while (v29);
          if (v26 == (v26 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_44:
            *this = 0;
            *(this + 1) = 0;
            *(this + 2) = v23;
            *(this + 3) = 8 * v20;
            if (v17)
            {
              operator delete(v17);
            }

            goto LABEL_46;
          }

          v21 += 8 * (v26 & 0x3FFFFFFFFFFFFFFCLL);
        }
      }

      do
      {
        v31 = *v21;
        v21 += 8;
        *v25++ = v31;
      }

      while (v25 != v23);
      goto LABEL_44;
    }
  }

LABEL_46:
  v32 = *(this + 1);
  v33 = *(this + 2);
  if (v33 == v32)
  {
    v34 = *(this + 1);
  }

  else
  {
    v34 = v33 + ((v32 - v33 + 7) & 0xFFFFFFFFFFFFFFF8);
    *(this + 2) = v34;
  }

  v35 = *this;
  v36 = *(this + 3) - *this;
  v37 = v34 - v32;
  if (v36 > v34 - v32)
  {
    v38 = v37 >> 3;
    if (v34 != v32)
    {
      if (!(v38 >> 61))
      {
        operator new();
      }

LABEL_75:
      sub_24504FAF4();
    }

    if (v37 < v36)
    {
      v39 = *(this + 1);
      v40 = (*(this + 2) - v39);
      v41 = v40;
      if (!v40)
      {
        goto LABEL_64;
      }

      v42 = (v40 - 1);
      if ((v40 - 1) < 0x18)
      {
        v43 = 0;
      }

      else
      {
        v43 = 0;
        if (-v39 >= 0x20)
        {
          v44 = (v42 >> 3) + 1;
          v43 = (8 * (v44 & 0x3FFFFFFFFFFFFFFCLL));
          v45 = (v39 + 16);
          v46 = 16;
          v47 = v44 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v48 = *v45;
            *(v46 - 16) = *(v45 - 1);
            *v46 = v48;
            v45 += 2;
            v46 += 32;
            v47 -= 4;
          }

          while (v47);
          if (v44 == (v44 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_64:
            *this = 0;
            *(this + 1) = 0;
            *(this + 2) = v41;
            *(this + 3) = 8 * v38;
            if (v35)
            {
              operator delete(v35);
            }

            goto LABEL_66;
          }

          v39 += 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
        }
      }

      do
      {
        v49 = *v39;
        v39 += 8;
        *v43++ = v49;
      }

      while (v43 != v41);
      goto LABEL_64;
    }
  }

LABEL_66:
  *this = 0u;
  *(this + 1) = 0u;
  v54 = 0u;
  v55 = 0u;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v56 = 0uLL;
  sub_245050F54(&v54);
  if (*(this + 9))
  {
    v50 = *(this + 8);
    if (v50)
    {
      do
      {
        v53 = *v50;
        if (*(v50 + 39) < 0)
        {
          operator delete(v50[2]);
        }

        operator delete(v50);
        v50 = v53;
      }

      while (v53);
    }

    *(this + 8) = 0;
    v51 = *(this + 7);
    if (v51)
    {
      bzero(*(this + 6), 8 * v51);
    }

    *(this + 9) = 0;
  }

  *(this + 44) = 0;
  return pthread_mutex_unlock((this + 96));
}

uint64_t cva::mtl::createMetal(cva::mtl *this, const char *const *a2, uint64_t a3, const char *a4)
{
  v5 = a2;
  v39 = *MEMORY[0x277D85DE8];
  v34 = MTLCreateSystemDefaultDevice();
  if (v34)
  {
    v7 = v5;
    v33 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v5];
    if (v5)
    {
      do
      {
        v8 = *this;
        v9 = v34;
        v10 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1];
        if (a3)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithCString:a3 encoding:1];
          v12 = [v10 stringByAppendingString:@".metallib"];
          v13 = [v11 stringByAppendingPathComponent:v12];
          v37 = 0;
          v14 = [v9 newLibraryWithFile:v13 error:&v37];

          if (v14)
          {
            goto LABEL_20;
          }
        }

        bufsize = 1025;
        if (!_NSGetExecutablePath(buf, &bufsize))
        {
          v15 = [MEMORY[0x277CCACA8] stringWithCString:buf encoding:1];
          v16 = [v15 stringByDeletingLastPathComponent];
          v17 = [v10 stringByAppendingString:@".metallib"];
          v18 = [v16 stringByAppendingPathComponent:v17];
          v35 = 0;
          v14 = [v9 newLibraryWithFile:v18 error:&v35];

          if (v14)
          {
            goto LABEL_20;
          }

          v19 = [MEMORY[0x277CCA8D8] mainBundle];
          if (v19)
          {
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/PrivateFrameworks/CoreAppleCVA.framework/%@.metallib", v10];
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Frameworks/AppleCVA.framework/%@", v10];
            v32 = [v19 pathForResource:v31 ofType:@"metallib"];
            v21 = v20;
            if (v21)
            {
              *buf = 0;
              v14 = [v9 newLibraryWithFile:v21 error:buf];
              v22 = *buf;
              v23 = v22;
              if (v14)
              {
                v24 = v21;
                goto LABEL_17;
              }

              NSLog(&cfstr_FailedCreating_1.isa, v22);

              v25 = v21;
            }

            else
            {
              v25 = 0;
            }

            v26 = v32;
            if (v26)
            {
              *buf = 0;
              v24 = v26;
              v14 = [v9 newLibraryWithFile:v26 error:buf];
              v27 = *buf;
              v23 = v27;
              if (!v14)
              {
                NSLog(&cfstr_FailedCreating_1.isa, v27);
              }

LABEL_17:
            }

            else
            {
              v24 = 0;
              v14 = 0;
            }

            goto LABEL_20;
          }
        }

        v14 = 0;
LABEL_20:

        if (!v14)
        {
          goto LABEL_27;
        }

        v28 = [MEMORY[0x277CCACA8] stringWithCString:*this encoding:1];
        [v33 setObject:v14 forKey:v28];

        this = (this + 8);
        --v7;
      }

      while (v7);
    }

    if ([v34 newCommandQueue])
    {
      operator new();
    }

    NSLog(&cfstr_FailedCreating_0.isa);

LABEL_27:
  }

  else
  {
    NSLog(&cfstr_FailedCreating.isa);
  }

  v29 = *MEMORY[0x277D85DE8];
  return 0;
}

id *cva::mtl::destroyMetal(id *result)
{
  if (result)
  {
    v1 = result;

    JUMPOUT(0x245D61480);
  }

  return result;
}

uint64_t cva::mtl::createMetalBuffer(id *a1, unsigned int a2)
{
  v3 = *a1;
  if ([v3 newBufferWithLength:a2 options:0])
  {
    operator new();
  }

  return 0;
}

id *cva::mtl::destroyMetalBuffer(id *result)
{
  if (result)
  {

    JUMPOUT(0x245D61480);
  }

  return result;
}

uint64_t cva::mtl::destroyMetalTexture(uint64_t result)
{
  if (result)
  {

    JUMPOUT(0x245D61480);
  }

  return result;
}

uint64_t cva::mtl::createMetalCommandBuffer(uint64_t a1)
{
  v1 = *(a1 + 8);
  [v1 commandBuffer];
  if (objc_claimAutoreleasedReturnValue())
  {
    operator new();
  }

  return 0;
}

id *cva::mtl::destroyMetalCommandBuffer(id *result)
{
  if (result)
  {

    JUMPOUT(0x245D61480);
  }

  return result;
}

BOOL cva::mtl::waitUntilCompleted(id *a1)
{
  v1 = *a1;
  [v1 waitUntilCompleted];
  v2 = [v1 status] == 4;

  return v2;
}

id CVAGetMetalLibrary(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = v3;
  if (a2 || [v3 count] != 1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:a2 encoding:1];
    v6 = [v4 objectForKey:v5];
  }

  else
  {
    v5 = [v4 allValues];
    v6 = [v5 objectAtIndex:0];
  }

  v7 = v6;

  return v7;
}

id CVACreateMetalComputePipelineState(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x277CCACA8] stringWithCString:a3 encoding:1];
  v8 = [v6 newFunctionWithName:v7];
  if (v8)
  {
    v13 = 0;
    v9 = [v5 newComputePipelineStateWithFunction:v8 error:&v13];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t CVACreateTextureFromMetalTexture(void *a1)
{
  if (a1)
  {
    operator new();
  }

  return 0;
}

uint64_t CVACreateTextureFromBuffer(id *a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v12 = objc_opt_new();
  [v12 setWidth:a2];
  [v12 setHeight:a3];
  [v12 setPixelFormat:a5];
  v13 = *a1;
  if ([v13 newTextureWithDescriptor:v12 offset:a6 bytesPerRow:a4])
  {
    operator new();
  }

  return 0;
}

id *cva::mtl::destroyMPSCNNKernel(id *result)
{
  if (result)
  {

    JUMPOUT(0x245D61480);
  }

  return result;
}

id *cva::mtl::destroyMPSImage(id *result)
{
  if (result)
  {

    JUMPOUT(0x245D61480);
  }

  return result;
}

id *cva::mtl::destroyMPSTemporaryImage(id *result)
{
  if (result)
  {

    JUMPOUT(0x245D61480);
  }

  return result;
}

uint64_t CVACreateMPSCNNKernel(MPSCNNKernel *a1)
{
  if (a1)
  {
    operator new();
  }

  return 0;
}

uint64_t CVACreateMPSImage(MPSImage *a1)
{
  if (a1)
  {
    operator new();
  }

  return 0;
}

uint64_t CVACreateMPSTemporaryImage(MPSTemporaryImage *a1)
{
  if (a1)
  {
    operator new();
  }

  return 0;
}

void *cva::operator<<(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24504FAF4();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  v9 = *(a2 + 8);
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  *(__dst + v2) = 0;
  if ((v9 & 0x80u) == 0)
  {
    v5 = __dst;
  }

  else
  {
    v5 = __dst[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = __dst[1];
  }

  sub_2450509AC(a1, v5, v6);
  if (v9 < 0)
  {
    operator delete(__dst[0]);
  }

  return a1;
}

cva::MatrixRasterizerEngine *cva::MatrixRasterizerEngine::MatrixRasterizerEngine(cva::MatrixRasterizerEngine *this, int a2, int a3, double a4, unsigned int a5, unsigned __int32 a6, int a7)
{
  *this = a3;
  *(this + 1) = a2;
  *(this + 2) = LODWORD(a4);
  *(this + 20) = a7;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  if (*&a4 >= 1.0)
  {
    *&a4 = floorf(*&a4 + 0.5);
    *(this + 2) = LODWORD(a4);
  }

  v9 = *this;
  v10 = vcvt_f32_u32(*this);
  v11 = vmul_n_f32(v10, *&a4);
  v12 = vmax_s32(vadd_s32(vdup_n_s32(*&a4 >= 2.0), vcvt_s32_f32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*&a4 < 1.0), 0x1FuLL)), vrndp_f32(v11), v11))), 0x100000001);
  *(this + 12) = v12;
  if (a5 && v12.i32[0] > a5 || a6 && v12.i32[1] > a6)
  {
    a4 = COERCE_DOUBLE(vdiv_f32(vcvt_f32_u32(vadd_s32(__PAIR64__(a6, a5), vcge_u32(__PAIR64__(a6, a5), vadd_s32(v9, v9)))), v10));
    if (*(&a4 + 1) < *&a4)
    {
      *&a4 = *(&a4 + 1);
    }

    v13 = floorf(*&a4);
    if (*&a4 > 1.0)
    {
      *&a4 = v13;
    }

    *(this + 2) = LODWORD(a4);
    v14 = vmul_n_f32(v10, *&a4);
    v12 = vmax_s32(vadd_s32(vdup_n_s32(*&a4 >= 2.0), vcvt_s32_f32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*&a4 < 1.0), 0x1FuLL)), vrndp_f32(v14), v14))), 0x100000001);
    *(this + 12) = v12;
  }

  v15 = 1.0;
  if (*&a4 < 1.0)
  {
    v57 = v12;
    *(this + 120) = xmmword_24508A8D0;
    *(this + 19) = 0xFFD64F3CFFD99044;
    *(this + 136) = xmmword_24508A8E0;
    if ((logf(0.25 / (*&a4 * *&a4)) / 0.69315) >= 24.0)
    {
      fwrite("error: roundoff will occur", 0x1AuLL, 1uLL, *MEMORY[0x277D85DF8]);
      v26 = *(this + 20);
      v17 = *(this + 16);
      v16 = *(this + 17);
      v18 = vadd_s32(*(this + 12), 0x100000001);
      *(this + 12) = v18;
      if ((v26 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = vadd_s32(v57, 0x100000001);
      *(this + 12) = v18;
      if (!a7)
      {
LABEL_15:
        v19 = v18.u32[0];
        v20 = v18.u32[1];
        if (v18.i32[0] > v17 || v18.i32[1] > v16)
        {
LABEL_26:
          v27 = *(this + 10);
          if (v27)
          {
            free(v27);
            *(this + 10) = 0;
          }

          *(this + 7) = 0;
          *(this + 8) = v19 | (v20 << 32);
          *(this + 9) = ((((20 * v19 + 15) & 0xFFFFFFF0) >> 4) << 36) | 0x14;
          size = ((20 * v19 + 15) & 0xFFFFFFF0) * v20;
          if (size)
          {
            v28 = malloc_type_malloc(size, 0x1000040A86A77D5uLL);
          }

          else
          {
            v28 = 0;
          }

          *(this + 10) = v28;
          goto LABEL_49;
        }

LABEL_25:
        *(this + 7) = 0;
        *(this + 8) = v19 | (v20 << 32);
        goto LABEL_49;
      }
    }

    v19 = v18.u32[1];
    v20 = v18.u32[0];
    if (v18.i32[1] > v17 || v18.i32[0] > v16)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v21 = (*&a4 + 0.5);
  if (v21 < 2)
  {
    v25 = 219;
  }

  else
  {
    v22 = vcvts_n_f32_u32(v21 - 1, 1uLL);
    if (v22 >= 1.0)
    {
      v22 = 1.0;
    }

    v23 = (v22 * -0.25) + 1.0;
    v24 = v23 * 255.0;
    v15 = (((v21 * 0.86111) * v21) - (v23 * (2 * v21 - 1))) / ((v21 - 1) * (v21 - 1));
    v25 = v24;
  }

  if (v25 >= 255)
  {
    v25 = 255;
  }

  if ((v15 * 255.0) >= 255)
  {
    v29 = 255;
  }

  else
  {
    v29 = (v15 * 255.0);
  }

  v30 = v15 >= 0.875 || *&a4 < 3.0;
  v31 = v25 & ~(v25 >> 31);
  v32 = vdupq_n_s32(v31);
  v33 = *&vshrq_n_u32(vorrq_s8(vandq_s8(vmulq_s32(v32, xmmword_24508A850), xmmword_24508A860), vandq_s8(vmulq_s32(v32, xmmword_24508A870), xmmword_24508A880)), 8uLL) | __PAIR128__(0xFF000000FF000000, 0xFF000000FF000000);
  *(this + 120) = v33;
  v34 = v29 & ~(v29 >> 31);
  if (!v30)
  {
    v34 = 223;
  }

  *&v33 = __PAIR64__(v34, v31);
  v35 = vzip1q_s32(v33, vdupq_lane_s32(__PAIR64__(v34, v31), 1));
  *(this + 136) = *&vshrq_n_u32(vorrq_s8(vandq_s8(vmulq_s32(v35, xmmword_24508A890), xmmword_24508A8A0), vandq_s8(vmulq_s32(v35, xmmword_24508A8B0), xmmword_24508A8C0)), 8uLL) | __PAIR128__(0xFF000000FF000000, 0xFF000000FF000000);
  *(this + 38) = (((16646224 * v34) & 0xFF00FF00 | (43264 * v34) & 0xFF0000) >> 8) | 0xFF000000;
  *(this + 39) = (((16449607 * v34) & 0xFF00FF00 | (23808 * v34) & 0x7F0000) >> 8) | 0xFF000000;
  *(this + 3) = 0;
  if (a7)
  {
    v36 = v12.u32[1];
    v37 = (4 * v12.i32[1] + 15) & 0xFFFFFFF0;
    v38 = v12.u32[0];
  }

  else
  {
    v36 = v12.u32[0];
    v37 = (4 * v12.i32[0] + 15) & 0xFFFFFFF0;
    v38 = v12.u32[1];
  }

  *(this + 4) = v36 | (v38 << 32);
  *(this + 5) = ((v37 >> 4) << 36) | 4;
  if (v37 * v38)
  {
    *(this + 6) = malloc_type_malloc(v37 * v38, 0x100004052888210uLL);
  }

  else
  {
    *(this + 6) = 0;
  }

LABEL_49:
  if (*(this + 2) >= 1.0)
  {
    v48 = *(this + 6);
    if (v48)
    {
      v49 = *(this + 4);
      v50 = *(this + 5);
      v51 = (HIDWORD(v50) * HIDWORD(v49));
      if (v51)
      {
        v52 = 0;
        v53 = (v48 + *(this + 3));
        v54 = (v53 + v51);
        do
        {
          *v53 = -1;
          v53 = (v53 + v50);
          v55 = v52 + 1;
          if (v52 + 1 == v49)
          {
            v52 = 0;
          }

          else
          {
            ++v52;
          }

          if (v55 == v49)
          {
            v53 = (v53 + HIDWORD(v50) - (v55 * v50));
          }
        }

        while (v53 != v54);
      }
    }
  }

  else
  {
    v39 = *(this + 10);
    if (v39)
    {
      v40 = *(this + 8);
      v41 = *(this + 9);
      v42 = (HIDWORD(v41) * HIDWORD(v40));
      if (v42)
      {
        v43 = 0;
        v44 = v39 + *(this + 7);
        v45 = v44 + v42;
        do
        {
          v46 = v44 + v41;
          v47 = v43 + 1;
          if (v43 + 1 == v40)
          {
            v43 = 0;
          }

          else
          {
            ++v43;
          }

          *v44 = 0;
          *(v44 + 8) = 0;
          *(v44 + 16) = 0;
          if (v47 == v40)
          {
            v46 = v44 + v41 - (v47 * v41) + HIDWORD(v41);
          }

          v44 = v46;
        }

        while (v46 != v45);
      }
    }
  }

  return this;
}

float32x2_t cva::MatrixRasterizerEngine::calculateImageSize(cva::MatrixRasterizerEngine *this, unsigned int a2, unsigned __int32 a3)
{
  v3 = *(this + 2);
  if (v3 >= 1.0)
  {
    v3 = floorf(v3 + 0.5);
    *(this + 2) = v3;
  }

  v4 = v3 < 1.0;
  v5 = v3 >= 2.0;
  v6 = *this;
  result = vcvt_f32_u32(*this);
  v8 = vmul_n_f32(result, v3);
  v9 = vmax_s32(vadd_s32(vdup_n_s32(v5), vcvt_s32_f32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v4), 0x1FuLL)), vrndp_f32(v8), v8))), 0x100000001);
  *(this + 12) = v9;
  if (a2 && v9.i32[0] > a2 || a3 && v9.i32[1] > a3)
  {
    v10 = vdiv_f32(vcvt_f32_u32(vadd_s32(__PAIR64__(a3, a2), vcge_u32(__PAIR64__(a3, a2), vadd_s32(v6, v6)))), result);
    if (v10.f32[1] < v10.f32[0])
    {
      v10.f32[0] = v10.f32[1];
    }

    v11 = floorf(v10.f32[0]);
    if (v10.f32[0] > 1.0)
    {
      v10.f32[0] = v11;
    }

    *(this + 2) = v10.i32[0];
    v12 = vmul_n_f32(result, v10.f32[0]);
    result = vmax_s32(vadd_s32(vdup_n_s32(v10.f32[0] >= 2.0), vcvt_s32_f32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v10.f32[0] < 1.0), 0x1FuLL)), vrndp_f32(v12), v12))), 0x100000001);
    *(this + 12) = result;
  }

  return result;
}

__n128 cva::MatrixRasterizerEngine::calculateMeanBrightnessPreservingColors(cva::MatrixRasterizerEngine *this, __n128 result)
{
  v2 = *(this + 2);
  v3 = 1.0;
  if (v2 >= 1.0)
  {
    v4 = (v2 + 0.5);
    if (v4 < 2)
    {
      v8 = 219;
    }

    else
    {
      v5 = vcvts_n_f32_u32(v4 - 1, 1uLL);
      if (v5 >= 1.0)
      {
        v5 = 1.0;
      }

      v6 = (v5 * -0.25) + 1.0;
      v7 = v6 * 255.0;
      v3 = (((v4 * 0.86111) * v4) - (v6 * (2 * v4 - 1))) / ((v4 - 1) * (v4 - 1));
      v8 = v7;
    }

    if (v8 >= 255)
    {
      v8 = 255;
    }

    if ((v3 * 255.0) >= 255)
    {
      v9 = 255;
    }

    else
    {
      v9 = (v3 * 255.0);
    }

    v10 = v3 >= 0.875 || v2 < 3.0;
    v11 = v8 & ~(v8 >> 31);
    v12 = vdupq_n_s32(v11);
    v13 = *&vshrq_n_u32(vorrq_s8(vandq_s8(vmulq_s32(v12, xmmword_24508A850), xmmword_24508A860), vandq_s8(vmulq_s32(v12, xmmword_24508A870), xmmword_24508A880)), 8uLL) | __PAIR128__(0xFF000000FF000000, 0xFF000000FF000000);
    *(this + 120) = v13;
    v14 = v9 & ~(v9 >> 31);
    if (!v10)
    {
      v14 = 223;
    }

    *&v13 = __PAIR64__(v14, v11);
    v15 = vzip1q_s32(v13, vdupq_lane_s32(__PAIR64__(v14, v11), 1));
    result = (*&vshrq_n_u32(vorrq_s8(vandq_s8(vmulq_s32(v15, xmmword_24508A890), xmmword_24508A8A0), vandq_s8(vmulq_s32(v15, xmmword_24508A8B0), xmmword_24508A8C0)), 8uLL) | __PAIR128__(0xFF000000FF000000, 0xFF000000FF000000));
    *(this + 136) = result;
    *(this + 38) = (((16646224 * v14) & 0xFF00FF00 | (43264 * v14) & 0xFF0000) >> 8) | 0xFF000000;
    *(this + 39) = (((16449607 * v14) & 0xFF00FF00 | (23808 * v14) & 0x7F0000) >> 8) | 0xFF000000;
  }

  else
  {
    *(this + 120) = xmmword_24508A8D0;
    *(this + 38) = -2518972;
    result.n128_u64[0] = 0xFF5054A4FFD64F3CLL;
    *(this + 136) = xmmword_24508A8E0;
    *(this + 39) = -2732228;
  }

  return result;
}

uint64_t cva::MatrixRasterizerEngine::clear(uint64_t this)
{
  if (*(this + 8) >= 1.0)
  {
    v10 = *(this + 48);
    if (v10)
    {
      v11 = *(this + 32);
      v12 = *(this + 40);
      v13 = (HIDWORD(v12) * HIDWORD(v11));
      if (v13)
      {
        v14 = 0;
        v15 = (v10 + *(this + 24));
        v16 = (v15 + v13);
        do
        {
          *v15 = -1;
          v15 = (v15 + v12);
          v17 = v14 + 1;
          if (v14 + 1 == v11)
          {
            v14 = 0;
          }

          else
          {
            ++v14;
          }

          if (v17 == v11)
          {
            v15 = (v15 + HIDWORD(v12) - (v17 * v12));
          }
        }

        while (v15 != v16);
      }
    }
  }

  else
  {
    v1 = *(this + 80);
    if (v1)
    {
      v2 = *(this + 64);
      v3 = *(this + 72);
      v4 = (HIDWORD(v3) * HIDWORD(v2));
      if (v4)
      {
        v5 = 0;
        v6 = v1 + *(this + 56);
        v7 = v6 + v4;
        do
        {
          v8 = v6 + v3;
          v9 = v5 + 1;
          if (v5 + 1 == v2)
          {
            v5 = 0;
          }

          else
          {
            ++v5;
          }

          *v6 = 0;
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          if (v9 == v2)
          {
            v8 = v6 + v3 - (v9 * v3) + HIDWORD(v3);
          }

          v6 = v8;
        }

        while (v8 != v7);
      }
    }
  }

  return this;
}

uint64_t cva::MatrixRasterizerEngine::getImage32(cva::MatrixRasterizerEngine *this, double a2, double a3, double a4, float32x2_t a5, float32x4_t a6)
{
  LODWORD(a2) = *(this + 2);
  LODWORD(a3) = 1.0;
  if (*&a2 < 1.0)
  {
    return cva::MatrixRasterizerEngine::convertFloatImage(this, a2, a3, a4, a5, a6);
  }

  if (*(this + 20) == 1)
  {
    return cva::MatrixRasterizerEngine::transposeRGBImage(this);
  }

  return this + 24;
}

uint64_t cva::MatrixRasterizerEngine::transposeRGBImage(cva::MatrixRasterizerEngine *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v3 > *(this + 24) || v2 > *(this + 25))
  {
    v5 = *(this + 14);
    if (v5)
    {
      free(v5);
      *(this + 14) = 0;
    }

    *(this + 11) = 0;
    *(this + 12) = v3 | (v2 << 32);
    *(this + 13) = ((((4 * v3 + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
    size = v2 * ((4 * v3 + 15) & 0xFFFFFFF0);
    if (size)
    {
      v6 = malloc_type_malloc(size, 0x100004052888210uLL);
    }

    else
    {
      v6 = 0;
    }

    *(this + 14) = v6;
    LODWORD(v3) = *(this + 3);
    LODWORD(v2) = *(this + 4);
  }

  else
  {
    *(this + 11) = 0;
    *(this + 12) = v3 | (v2 << 32);
  }

  v7 = *(this + 6);
  v8 = (v7 + *(this + 3));
  if (!v7)
  {
    v8 = 0;
  }

  if (v3 >= 1 && v2 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(this + 5);
    v12 = *(this + 8);
    v13 = *(this + 14) + *(this + 11);
    do
    {
      v14 = 0;
      do
      {
        *(v13 + (*(this + 26) * v9 + *(this + 27) * v14++)) = *v8;
        v8 = (v8 + v11);
        v15 = v10 + 1;
        if (v10 + 1 == v12)
        {
          v10 = 0;
        }

        else
        {
          ++v10;
        }

        if (v15 == v12)
        {
          v8 = (v8 + HIDWORD(v11) - (v15 * v11));
        }
      }

      while (v2 != v14);
      ++v9;
    }

    while (v9 != v3);
  }

  return this + 88;
}

uint64_t cva::MatrixRasterizerEngine::convertFloatImage(cva::MatrixRasterizerEngine *this, double a2, double a3, double a4, float32x2_t a5, float32x4_t a6)
{
  v7 = *(this + 2);
  v8 = *(this + 3);
  v9 = (v8 - 1);
  v10 = (*(this + 4) - 1);
  if (v9 > *(this + 24) || v10 > *(this + 25))
  {
    v12 = *(this + 14);
    if (v12)
    {
      free(v12);
      *(this + 14) = 0;
    }

    *(this + 11) = 0;
    *(this + 12) = v9 | (v10 << 32);
    *(this + 13) = ((((4 * v9 + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
    size = ((4 * v9 + 15) & 0xFFFFFFF0) * v10;
    if (size)
    {
      v13 = malloc_type_malloc(size, 0x100004052888210uLL);
    }

    else
    {
      v13 = 0;
    }

    *(this + 14) = v13;
    v8 = *(this + 3);
  }

  else
  {
    *(this + 11) = 0;
    *(this + 12) = v9 | (v10 << 32);
  }

  if (v8)
  {
    operator new();
  }

  if (*(this + 4))
  {
    operator new();
  }

  v14 = *this;
  if (*this)
  {
    v15 = 0;
    do
    {
      v16 = v7 * v15;
      v17 = (4 * v16);
      v18 = v16 - v16;
      v19.f32[0] = 1.0 - v18;
      a5 = *v17;
      v19.f32[1] = v18;
      *v17 = vadd_f32(v19, *v17);
      ++v15;
    }

    while (LODWORD(v14) != v15);
  }

  v20 = *(this + 1);
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      v22 = v7 * i;
      v23 = (4 * v22);
      v24 = v22 - v22;
      v25.f32[0] = 1.0 - v24;
      a5 = *v23;
      v25.f32[1] = v24;
      *v23 = vadd_f32(v25, *v23);
    }
  }

  v26 = *(this + 20);
  v75 = (*(this + 17) - 1);
  if (v75 >= 1)
  {
    v27 = (*(this + 16) - 1);
    if (v27 >= 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = *(this + 16);
      v32 = *(this + 9);
      v31 = *(this + 10);
      v33 = HIDWORD(v32);
      if (v31)
      {
        v34 = v31 + *(this + 7);
      }

      else
      {
        v34 = 0;
      }

      do
      {
        v37 = 0;
        do
        {
          v41 = *(v34 + 4);
          v42 = (((*v34 + v41.f32[0]) + COERCE_FLOAT(HIDWORD(*(v34 + 4)))) + COERCE_FLOAT(*(v34 + 12))) + v41.f32[3];
          if (v42 == 0.0)
          {
            v73 = *(this + 26);
            v72 = *(this + 14) + *(this + 11);
            if (v26)
            {
              v38 = v73 * v28 + *(this + 27) * v37;
            }

            else
            {
              v38 = v73 * v37 + *(this + 27) * v28;
            }

            v70 = -1;
          }

          else
          {
            a6.f32[0] = *(4 * v28) * *(4 * v37);
            v43 = *v34 / a6.f32[0];
            v44 = vdivq_f32(v41, vdupq_lane_s32(*a6.f32, 0));
            a5.f32[0] = v42 / a6.f32[0];
            if (a5.f32[0] > 1.0)
            {
              a6 = vdupq_lane_s32(a5, 0);
              v44 = vdivq_f32(v44, a6);
              v43 = v43 / a5.f32[0];
              a5.i32[0] = 1.0;
            }

            v45 = ((1.0 - a5.f32[0]) * 255.0);
            if (v45 >= 255)
            {
              v45 = 255;
            }

            v46 = 16711935 * (v45 & ~(v45 >> 31));
            v47 = (v46 >> 8) & 0xFF00FF;
            v48 = vmuls_lane_f32(255.0, v44, 3);
            v49 = v46 & 0xFF00;
            if (v48 >= 255)
            {
              v48 = 255;
            }

            v50 = v48 & ~(v48 >> 31);
            v52 = *(this + 35);
            v51 = *(this + 36);
            v53 = (((v51 & 0xFF00FF) * v50) >> 8) & 0xFF00FF;
            v54 = (((v51 >> 8) & 0xFF00FF) * v50) & 0xFF00FF00;
            v55 = vmuls_lane_f32(255.0, v44, 2);
            if (v55 >= 255)
            {
              v55 = 255;
            }

            v56 = v55 & ~(v55 >> 31);
            v57 = *(this + 37);
            v58 = (((v57 & 0xFF00FF) * v56) >> 8) & 0xFF00FF;
            v59 = (((v57 >> 8) & 0xFF00FF) * v56) & 0xFF00FF00;
            v60 = *(this + 39);
            v61 = vmuls_lane_f32(255.0, *v44.f32, 1);
            if (v61 >= 255)
            {
              v61 = 255;
            }

            v62 = v61 & ~(v61 >> 31);
            v63 = (((v60 & 0xFF00FF) * v62) >> 8) & 0xFF00FF;
            v64 = (((v60 >> 8) & 0xFF00FF) * v62) & 0xFF00FF00;
            v65 = (255.0 * v44.f32[0]);
            if (v65 >= 255)
            {
              v65 = 255;
            }

            v66 = v65 & ~(v65 >> 31);
            v67 = (((v52 & 0xFF00FF) * v66) >> 8) & 0xFF00FF;
            v68 = (((v52 >> 8) & 0xFF00FF) * v66) & 0xFF00FF00;
            v69 = (v43 * 255.0);
            if (v69 >= 255)
            {
              v69 = 255;
            }

            v70 = (v53 | v54) + v59 + v58 + v64 + v63 + v68 + v67 + v49 + v47 + ((((*(this + 38) & 0xFF00FF) * (v69 & ~(v69 >> 31))) >> 8) & 0xFF00FF | (((*(this + 38) >> 8) & 0xFF00FF) * (v69 & ~(v69 >> 31))) & 0xFF00FF00);
            v71 = *(this + 26);
            v72 = *(this + 14) + *(this + 11);
            if (v26)
            {
              v38 = v71 * v28 + *(this + 27) * v37;
            }

            else
            {
              v38 = v71 * v37 + *(this + 27) * v28;
            }
          }

          *(v72 + v38) = v70;
          ++v37;
          v39 = v34 + v32;
          v40 = v29 + 1;
          v34 = v39 - ((v29 + 1) * v32) + v33;
          if (v29 + 1 == v30)
          {
            v29 = 0;
          }

          else
          {
            ++v29;
          }

          if (v40 != v30)
          {
            v34 = v39;
          }
        }

        while (v27 != v37);
        v35 = v34 + v32;
        v36 = v29 + 1;
        v34 = v35 - ((v29 + 1) * v32) + v33;
        if (v29 + 1 == v30)
        {
          v29 = 0;
        }

        else
        {
          ++v29;
        }

        if (v36 != v30)
        {
          v34 = v35;
        }

        ++v28;
      }

      while (v28 != v75);
    }
  }

  return this + 88;
}