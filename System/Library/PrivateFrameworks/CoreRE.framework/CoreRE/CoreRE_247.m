float physx::Dy::FeatherstoneArticulation::pxcFsGetVelocity@<S0>(physx::Dy::FeatherstoneArticulation *this@<X0>, unsigned int a2@<W1>, _OWORD *a3@<X8>, double a4@<D2>, double a5@<D4>)
{
  v5 = *(this + 46);
  v6 = **(this + 83);
  v7 = *(this + 76);
  v44 = 0u;
  v45 = 0u;
  if (v6)
  {
    v23 = 0;
    v24 = 0.0;
    v18 = 0.0;
    v17 = 0;
  }

  else
  {
    v8 = *(v5 + 4);
    v9 = -v8;
    v10 = *(v5 + 8);
    LODWORD(a5) = *(v5 + 16);
    v11 = *(v5 + 20);
    v12 = -v11;
    LODWORD(a4) = *(v5 + 24);
    v13.i32[0] = *(this + 185);
    v14 = *(this + 191);
    v15 = *(this + 732);
    v16 = *(this + 756);
    v17 = vadd_f32(vsub_f32(vsub_f32(vmul_n_f32(*(this + 744), -v8), vmul_n_f32(v15, *v5)), vmul_n_f32(v16, v10)), vsub_f32(vsub_f32(vmul_n_f32(*(this + 780), -v11), vmul_n_f32(*(this + 768), *&a5)), vmul_n_f32(*(this + 792), *&a4)));
    v18 = ((-(v8 * *(this + 188)) - (*v5 * v13.f32[0])) - (v10 * v14)) + ((-(v11 * *(this + 197)) - (*&a5 * *(this + 194))) - (*&a4 * *(this + 200)));
    v19 = (-(v8 * *(this + 206)) - (*v5 * *(this + 203))) - (v10 * *(this + 209));
    v20 = (vmuls_lane_f32(v12, v16, 1) - (v16.f32[0] * *&a5)) - (v14 * *&a4);
    v21 = vsub_f32(vsub_f32(vmul_n_f32(*(this + 816), v9), vmul_n_f32(*(this + 804), *v5)), vmul_n_f32(*(this + 828), v10));
    v22.i32[1] = HIDWORD(*(this + 93));
    v22.i32[0] = v15.i32[1];
    v15.i32[1] = *(this + 93);
    v13.i32[1] = *(this + 188);
    v23 = vadd_f32(vmls_lane_f32(vmls_lane_f32(vmul_n_f32(v22, v12), v15, *&a5, 0), v13, *&a4, 0), v21);
    *&v44 = v17;
    *(&v44 + 2) = v18;
    v24 = v20 + v19;
    *&v45 = v23;
    *(&v45 + 2) = v20 + v19;
  }

  v37 = a2;
  v25 = *(v7 + 40 * a2 + 8);
  v26 = v25 - 1;
  if (v25 != 1)
  {
    v27 = *(this + 78);
    v28 = *(this + 60);
    v29 = *(this + 62);
    v30 = *(this + 66);
    do
    {
      v31 = __clz(__rbit32(v26));
      LODWORD(v32) = __clz(__rbit32(HIDWORD(v26))) + 32;
      if (v26)
      {
        v32 = v31;
      }

      else
      {
        v32 = v32;
      }

      physx::Dy::FeatherstoneArticulation::propagateVelocityTestImpulseW(&v40, v27 + 160 * v32 + 120, (v28 + 112 * v32), (v29 + 36 * v32), v30 + 76 * v32, (v5 + 32 * v32), &v44);
      v17 = v40;
      *&v44 = v40;
      v18 = v41;
      *(&v44 + 1) = LODWORD(v41);
      v23 = v42;
      *&v45 = v42;
      v24 = v43;
      *(&v45 + 1) = LODWORD(v43);
      v26 &= v26 - 1;
    }

    while (v26);
  }

  v33 = (*(this + 40) + 32 * v37);
  *&v34 = vadd_f32(v17, *v33);
  result = v18 + v33[1].f32[0];
  *&v36 = vadd_f32(v23, v33[2]);
  *(&v36 + 1) = COERCE_UNSIGNED_INT(v24 + v33[3].f32[0]);
  *(&v34 + 1) = LODWORD(result);
  *a3 = v36;
  a3[1] = v34;
  return result;
}

float32_t physx::Dy::FeatherstoneArticulation::propagateVelocityTestImpulseW(float32x2_t *a1, uint64_t a2, float *a3, float *a4, uint64_t a5, float *a6, uint64_t a7)
{
  v59[3] = *MEMORY[0x1E69E9840];
  v7 = *(a5 + 72);
  _S2 = *a2;
  v9 = *(a7 + 8);
  _D1 = *a7;
  _D3 = *(a2 + 4);
  v12.i32[0] = vdup_lane_s32(_D3, 1).u32[0];
  v12.i32[1] = *a2;
  v13 = vrev64_s32(*a7);
  v13.f32[0] = v9;
  v14 = vmls_f32(vmul_f32(v12, *(a7 + 4)), v13, _D3);
  __asm { FMLS            S3, S2, V1.S[1] }

  v19 = vadd_f32(v14, *(a7 + 16));
  v20 = _D3.f32[0] + *(a7 + 24);
  if (v7)
  {
    v21 = a3[1];
    v22 = a3[2];
    v23 = a3[3];
    v24 = vmuls_lane_f32(v23, _D1, 1);
    v26 = a3[4];
    v25 = a3[5];
    v27 = a3[6];
    v28 = a3[7];
    v29 = a3[8];
    v30 = (((v21 * _D1.f32[0]) + vmuls_lane_f32(v26, _D1, 1)) + (v9 * v28)) + (((a3[10] * v19.f32[0]) + vmuls_lane_f32(a3[13], v19, 1)) + (v20 * a3[16]));
    v31 = (((v22 * _D1.f32[0]) + vmuls_lane_f32(v25, _D1, 1)) + (v9 * v29)) + (((a3[11] * v19.f32[0]) + vmuls_lane_f32(a3[14], v19, 1)) + (v20 * a3[17]));
    v32 = (vmuls_lane_f32(v21, v19, 1) + (*a3 * v19.f32[0])) + (v22 * v20);
    v33 = (vmuls_lane_f32(v26, v19, 1) + (v23 * v19.f32[0])) + (v25 * v20);
    v34 = v32 + (((a3[18] * _D1.f32[0]) + vmuls_lane_f32(a3[21], _D1, 1)) + (v9 * a3[24]));
    v35 = v33 + (((a3[19] * _D1.f32[0]) + vmuls_lane_f32(a3[22], _D1, 1)) + (v9 * a3[25]));
    v36 = ((((*a3 * _D1.f32[0]) + v24) + (v9 * v27)) + (((a3[9] * v19.f32[0]) + vmuls_lane_f32(a3[12], v19, 1)) + (v20 * a3[15]))) + *a6;
    v37 = v30 + a6[1];
    v38 = v31 + a6[2];
    v39 = v34 + a6[4];
    v40 = v35 + a6[5];
    v41 = (((vmuls_lane_f32(v28, v19, 1) + (v27 * v19.f32[0])) + (v29 * v20)) + (((a3[20] * _D1.f32[0]) + vmuls_lane_f32(a3[23], _D1, 1)) + (v9 * a3[26]))) + a6[6];
    v42 = (a5 + 12);
    v43 = v59;
    v44 = *(a5 + 72);
    do
    {
      *v43++ = -((((v37 * v42[1]) + (*v42 * v36)) + (v42[2] * v38)) + (((v40 * *(v42 - 2)) + (*(v42 - 3) * v39)) + (*(v42 - 1) * v41)));
      v42 += 6;
      --v44;
    }

    while (v44);
    v45 = 0;
    v46 = 0;
    v47 = 0.0;
    v48 = 0.0;
    v49 = 0;
    do
    {
      v50 = v59;
      v51 = a4;
      v52 = v7;
      v53 = 0.0;
      do
      {
        v54 = *v51;
        v51 += 3;
        v55 = v54;
        v56 = *v50++;
        v53 = v53 + (v55 * v56);
        --v52;
      }

      while (v52);
      v57 = a5 + 24 * v45;
      v46 = vadd_f32(v46, vmul_n_f32(*v57, v53));
      v48 = v48 + (v53 * *(v57 + 8));
      v49 = vadd_f32(v49, vmul_n_f32(*(v57 + 12), v53));
      v47 = v47 + (v53 * *(v57 + 20));
      ++v45;
      ++a4;
    }

    while (v45 != v7);
  }

  else
  {
    v46 = 0;
    v48 = 0.0;
    v47 = 0.0;
    v49 = 0;
  }

  result = v9 + v48;
  *a1 = vadd_f32(_D1, v46);
  a1[1].f32[0] = result;
  a1[1].i32[1] = 0;
  a1[2] = vadd_f32(v19, v49);
  a1[3].f32[0] = v20 + v47;
  a1[3].i32[1] = 0;
  return result;
}

__n128 physx::Dy::FeatherstoneArticulation::pxcFsGetVelocities(uint64_t a1, unsigned int a2, unsigned int a3, _OWORD *a4, uint64_t a5, double a6, double a7, double a8)
{
  v8 = *(a1 + 368);
  v9 = **(a1 + 664);
  v10 = *(a1 + 608);
  v74 = 0u;
  v75 = 0u;
  if (v9)
  {
    v21 = 0;
    v25 = 0.0;
    v22 = 0.0;
    v24 = 0;
  }

  else
  {
    v11 = *(v8 + 4);
    v12 = -v11;
    v13 = *(v8 + 8);
    LODWORD(a8) = *(v8 + 16);
    v14 = *(v8 + 20);
    v15 = *(v8 + 24);
    v16.i32[0] = *(a1 + 740);
    v17 = *(a1 + 764);
    v18 = *(a1 + 732);
    v19 = *(a1 + 744);
    v20 = *(a1 + 756);
    v21 = vadd_f32(vsub_f32(vsub_f32(vmul_n_f32(v19, -v11), vmul_n_f32(v18, *v8)), vmul_n_f32(v20, v13)), vsub_f32(vsub_f32(vmul_n_f32(*(a1 + 780), -v14), vmul_n_f32(*(a1 + 768), *&a8)), vmul_n_f32(*(a1 + 792), v15.f32[0])));
    v22 = ((-(v11 * *(a1 + 752)) - (*v8 * v16.f32[0])) - (v13 * v17)) + ((-(v14 * *(a1 + 788)) - (*&a8 * *(a1 + 776))) - (v15.f32[0] * *(a1 + 800)));
    v23 = (-(v11 * *(a1 + 824)) - (*v8 * *(a1 + 812))) - (v13 * *(a1 + 836));
    v16.i32[1] = *(a1 + 752);
    v24 = vadd_f32(vmls_lane_f32(vmls_lane_f32(vmul_n_f32(vzip2_s32(v18, v19), -v14), vzip1_s32(v18, v19), *&a8, 0), v16, v15, 0), vsub_f32(vsub_f32(vmul_n_f32(*(a1 + 816), v12), vmul_n_f32(*(a1 + 804), *v8)), vmul_n_f32(*(a1 + 828), v13)));
    *&v74 = v21;
    *(&v74 + 2) = v22;
    v25 = ((vmuls_lane_f32(-v14, v20, 1) - (v20.f32[0] * *&a8)) - (v17 * v15.f32[0])) + v23;
    *&v75 = v24;
    *(&v75 + 2) = v25;
  }

  v56 = *(v10 + 40 * a2 + 8);
  v57 = *(v10 + 40 * a3 + 8);
  v62 = v57 & v56;
  v26 = (v57 & v56) - 1;
  if ((v57 & v56) != 1)
  {
    v27 = *(a1 + 624);
    v28 = *(a1 + 480);
    v29 = *(a1 + 496);
    v30 = *(a1 + 528);
    do
    {
      v31 = __clz(__rbit32(v26));
      LODWORD(v32) = __clz(__rbit32(HIDWORD(v26))) + 32;
      if (v26)
      {
        v32 = v31;
      }

      else
      {
        v32 = v32;
      }

      physx::Dy::FeatherstoneArticulation::propagateVelocityTestImpulseW(&v68, v27 + 160 * v32 + 120, (v28 + 112 * v32), (v29 + 36 * v32), v30 + 76 * v32, (v8 + 32 * v32), &v74);
      v21 = v68;
      *&v74 = v68;
      v22 = v69;
      *(&v74 + 1) = LODWORD(v69);
      v24 = v71;
      *&v75 = v71;
      v25 = v72;
      *(&v75 + 1) = LODWORD(v72);
      v26 &= v26 - 1;
    }

    while (v26);
  }

  v68 = v21;
  v69 = v22;
  v70 = 0;
  v33 = v25;
  v34 = v22;
  v71 = v24;
  v72 = v25;
  v35 = v21;
  v36 = v24;
  v73 = 0;
  if (v62 != v56)
  {
    v37 = v62 ^ v56;
    v38 = *(a1 + 624);
    v39 = *(a1 + 480);
    v40 = *(a1 + 496);
    v41 = *(a1 + 528);
    do
    {
      v42 = __clz(__rbit32(v37));
      LODWORD(v43) = __clz(__rbit32(HIDWORD(v37))) + 32;
      if (v37)
      {
        v43 = v42;
      }

      else
      {
        v43 = v43;
      }

      physx::Dy::FeatherstoneArticulation::propagateVelocityTestImpulseW(&v64, v38 + 160 * v43 + 120, (v39 + 112 * v43), (v40 + 36 * v43), v41 + 76 * v43, (v8 + 32 * v43), &v74);
      v35 = v64;
      *&v74 = v64;
      v34 = v65;
      *(&v74 + 1) = LODWORD(v65);
      v36 = v66;
      *&v75 = v66;
      v33 = v67;
      *(&v75 + 1) = LODWORD(v67);
      v37 &= v37 - 1;
    }

    while (v37);
  }

  if (v62 != v57)
  {
    v44 = v62 ^ v57;
    v45 = *(a1 + 624);
    v46 = *(a1 + 480);
    v47 = *(a1 + 496);
    v48 = *(a1 + 528);
    do
    {
      v49 = __clz(__rbit32(v44));
      LODWORD(v50) = __clz(__rbit32(HIDWORD(v44))) + 32;
      if (v44)
      {
        v50 = v49;
      }

      else
      {
        v50 = v50;
      }

      physx::Dy::FeatherstoneArticulation::propagateVelocityTestImpulseW(&v64, v45 + 160 * v50 + 120, (v46 + 112 * v50), (v47 + 36 * v50), v48 + 76 * v50, (v8 + 32 * v50), &v68);
      v21 = v64;
      v68 = v64;
      v22 = v65;
      v69 = v65;
      v70 = 0;
      v24 = v66;
      v71 = v66;
      v25 = v67;
      v72 = v67;
      v73 = 0;
      v44 &= v44 - 1;
    }

    while (v44);
  }

  v51 = (*(a1 + 320) + 32 * a2);
  *&v52 = vadd_f32(v35, *v51);
  *&v53 = vadd_f32(v36, v51[2]);
  *(&v53 + 2) = v33 + v51[3].f32[0];
  HIDWORD(v53) = 0;
  *(&v52 + 2) = v34 + v51[1].f32[0];
  HIDWORD(v52) = 0;
  *a4 = v53;
  a4[1] = v52;
  v54 = (*(a1 + 320) + 32 * a3);
  result.n128_u64[0] = vadd_f32(v21, *v54);
  *&v53 = vadd_f32(v24, v54[2]);
  *(&v53 + 2) = v25 + v54[3].f32[0];
  HIDWORD(v53) = 0;
  result.n128_f32[2] = v22 + v54[1].f32[0];
  result.n128_u32[3] = 0;
  *a5 = v53;
  *(a5 + 16) = result;
  return result;
}

float32_t physx::Dy::FeatherstoneArticulation::pxcFsApplyImpulse(uint64_t a1, unsigned int a2, __n128 a3, __n128 a4)
{
  v4 = a2;
  v5 = *(a1 + 56);
  v6 = *(a1 + 368);
  v7 = *(a1 + 624);
  *(a1 + 685) = 1;
  v20 = vneg_f32(a3.n128_u64[0]);
  v21 = -a3.n128_f32[2];
  v22 = 0;
  v23 = vneg_f32(a4.n128_u64[0]);
  v24 = -a4.n128_f32[2];
  v25 = 0;
  v8 = (v6 + 32 * a2);
  *v8 = vsub_f32(*v8, a3.n128_u64[0]);
  v8[1].f32[0] = v8[1].f32[0] - a3.n128_f32[2];
  v8[2] = vsub_f32(v8[2], a4.n128_u64[0]);
  result = v8[3].f32[0] - a4.n128_f32[2];
  v8[3].f32[0] = result;
  if (a2)
  {
    v10 = *(a1 + 544);
    v11 = *(a1 + 528);
    do
    {
      physx::Dy::FeatherstoneArticulation::propagateImpulseW((v10 + 96 * v4), v7 + 160 * v4 + 120, v11 + 76 * v4, &v20, &v16);
      v12 = v17;
      v21 = v17;
      v22 = 0;
      v13 = v19;
      v24 = v19;
      v25 = 0;
      v20 = v16;
      v14 = v18;
      v23 = v18;
      v4 = *(v5 + 40 * v4 + 32);
      v15 = (v6 + 32 * v4);
      *v15 = vadd_f32(v16, *v15);
      v15[1].f32[0] = v12 + v15[1].f32[0];
      v15[2] = vadd_f32(v14, v15[2]);
      result = v13 + v15[3].f32[0];
      v15[3].f32[0] = result;
    }

    while (v4);
  }

  return result;
}

float32_t physx::Dy::FeatherstoneArticulation::propagateImpulseW@<S0>(float32x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float32x2_t *a4@<X3>, float32x2_t *a5@<X8>)
{
  v5 = *(a3 + 72);
  v6 = *a4;
  v7 = a4[1].f32[0];
  v8 = a4[2];
  v9 = a4[3].f32[0];
  if (v5)
  {
    v10 = (a3 + 12);
    v11 = a1 + 2;
    v12 = 0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0;
    do
    {
      v16 = (((v6.f32[1] * v10[1]) + (*v10 * v6.f32[0])) + (v10[2] * v7)) + (((v8.f32[1] * *(v10 - 2)) + (*(v10 - 3) * v8.f32[0])) + (*(v10 - 1) * v9));
      v12 = vadd_f32(v12, vmul_n_f32(v11[-2], v16));
      v14 = v14 + (v16 * v11[-1].f32[0]);
      v15 = vadd_f32(v15, vmul_n_f32(*v11, v16));
      v13 = v13 + (v16 * v11[1].f32[0]);
      v10 += 6;
      v11 += 4;
      --v5;
    }

    while (v5);
  }

  else
  {
    v12 = 0;
    v14 = 0.0;
    v13 = 0.0;
    v15 = 0;
  }

  _D3 = vsub_f32(v6, v12);
  v18 = v7 - v14;
  v19 = v9 - v13;
  _S4 = *a2;
  *a5 = _D3;
  a5[1].f32[0] = v18;
  v21 = *(a2 + 4);
  v22.i32[0] = vdup_lane_s32(v21, 1).u32[0];
  v22.i32[1] = _S4;
  a5[1].i32[1] = 0;
  v23 = vrev64_s32(_D3);
  v24 = __PAIR64__(LODWORD(v18), v23.u32[0]);
  v23.f32[0] = v18;
  __asm { FMLA            S0, S4, V3.S[1] }

  a5[2] = vadd_f32(vsub_f32(v8, v15), vmla_f32(vmul_f32(v24, vneg_f32(v22)), v23, v21));
  result = v19 + _S0;
  a5[3].f32[0] = result;
  a5[3].i32[1] = 0;
  return result;
}

float32_t physx::Dy::FeatherstoneArticulation::pxcFsApplyImpulses(uint64_t a1, float32x2_t *a2)
{
  v3 = *(a1 + 608);
  v4 = *(a1 + 616);
  v5 = *(a1 + 368);
  *(a1 + 685) = 1;
  v6 = (v4 - 1);
  if (v6)
  {
    v7 = v6 - 1;
    v8 = (*(a1 + 544) + 96 * v6);
    v9 = &v5[4 * v6 + 2];
    v10 = *(a1 + 624) + 160 * v6 + 120;
    v11 = (v3 + 40 * v6 + 32);
    v12 = *(a1 + 528) + 76 * v6;
    v13 = &a2[4 * v6];
    do
    {
      physx::Dy::FeatherstoneArticulation::propagateImpulseW(v8, v10, v12, v13, &v17);
      v14 = *v11;
      v11 -= 10;
      v15 = &a2[4 * v14];
      *v15 = vadd_f32(v17, *v15);
      v15[1].f32[0] = v18 + v15[1].f32[0];
      v15[2] = vadd_f32(v19, v15[2]);
      v15[3].f32[0] = v20 + v15[3].f32[0];
      v9[-2] = vadd_f32(*v13, v9[-2]);
      v9[-1].f32[0] = v13[1].f32[0] + v9[-1].f32[0];
      *v9 = vadd_f32(v13[2], *v9);
      LODWORD(v15) = v7--;
      v8 -= 12;
      v9[1].f32[0] = v13[3].f32[0] + v9[1].f32[0];
      v9 -= 4;
      v10 -= 160;
      v12 -= 76;
      v13 -= 4;
    }

    while (v15);
  }

  *v5 = vadd_f32(*a2, *v5);
  v5[1].f32[0] = a2[1].f32[0] + v5[1].f32[0];
  v5[2] = vadd_f32(a2[2], v5[2]);
  result = a2[3].f32[0] + v5[3].f32[0];
  v5[3].f32[0] = result;
  return result;
}

void physx::Dy::FeatherstoneArticulation::pxcFsApplyImpulses(uint64_t a1, unsigned int a2, __int128 *a3, __int128 *a4, unsigned int a5, __int128 *a6, __int128 *a7)
{
  LODWORD(v7) = a2;
  v8 = *(a1 + 624);
  *(a1 + 685) = 1;
  v9 = *(a1 + 368);
  v10 = *(a1 + 56);
  v11 = *a4;
  LODWORD(v12) = *(a4 + 1);
  v13 = *a3;
  LODWORD(v14) = *(a3 + 1);
  v15 = *a7;
  LODWORD(v16) = HIDWORD(*a7);
  LODWORD(v17) = *(a7 + 1);
  v18 = *a6;
  LODWORD(v19) = HIDWORD(*a6);
  LODWORD(v20) = *(a6 + 1);
  v21 = a2;
  v22 = *(v10 + 40 * a5 + 8) & *(v10 + 40 * a2 + 8);
  v23 = HIDWORD(v22);
  v24 = 31 - __clz(v22);
  v25 = __clz(v23) ^ 0x3F;
  if (v23)
  {
    LODWORD(v26) = v25;
  }

  else
  {
    LODWORD(v26) = v24;
  }

  v27 = -v14;
  v28 = -v12;
  v29 = vneg_f32(*&v13);
  v78 = v29;
  v79 = -v14;
  v80 = 0;
  v30 = vneg_f32(*&v11);
  v81 = v30;
  v82 = -v12;
  v83 = 0;
  v31.f32[0] = -*&v18;
  v32 = -v19;
  v33 = -v20;
  v34.f32[0] = -*&v15;
  v35 = -v16;
  v36 = -v17;
  v72.f32[0] = -*&v18;
  v72.f32[1] = v32;
  v73 = -v20;
  v74 = 0;
  v75.f32[0] = -*&v15;
  v75.f32[1] = -v16;
  v76 = -v17;
  v77 = 0;
  v37 = (v9 + 32 * a5);
  *v37 = vsub_f32(*v37, *&v18);
  v37[1].f32[0] = v37[1].f32[0] - v20;
  v37[2] = vsub_f32(v37[2], *&v15);
  v37[3].f32[0] = v37[3].f32[0] - v17;
  v61 = a1;
  if (v26 != a5)
  {
    LODWORD(v38) = a5;
    v54 = a2;
    v55 = v13;
    v56 = v11;
    v57 = v30;
    v59 = v29;
    v39 = *(a1 + 544);
    v40 = *(a1 + 528);
    do
    {
      physx::Dy::FeatherstoneArticulation::propagateImpulseW((v39 + 96 * v38), v8 + 160 * v38 + 120, v40 + 76 * v38, &v72, &v66);
      v33 = v67;
      v73 = v67;
      v74 = 0;
      v36 = v70;
      v76 = v70;
      v77 = 0;
      v31 = v66;
      v72 = v66;
      v34 = v69;
      v75 = v69;
      v38 = *(v10 + 40 * v38 + 32);
      v41 = (v9 + 32 * v38);
      *v41 = vadd_f32(v66, *v41);
      v41[1].f32[0] = v33 + v41[1].f32[0];
      v41[2] = vadd_f32(v34, v41[2]);
      v41[3].f32[0] = v36 + v41[3].f32[0];
    }

    while (v38 != v26);
    v32 = v31.f32[1];
    v35 = v34.f32[1];
    a1 = v61;
    v30 = v57;
    v29 = v59;
    *&v13 = v55;
    *&v11 = v56;
    v21 = v54;
  }

  v42 = (v9 + 32 * v21);
  *v42 = vsub_f32(*v42, *&v13);
  v42[1].f32[0] = v42[1].f32[0] - v14;
  v42[2] = vsub_f32(v42[2], *&v11);
  v42[3].f32[0] = v42[3].f32[0] - v12;
  if (v26 == v7)
  {
    v43 = v29.f32[1];
    v44 = v30.f32[1];
  }

  else
  {
    v58 = v34.i32[0];
    v60 = v31.i32[0];
    v45 = *(a1 + 544);
    v46 = *(a1 + 528);
    do
    {
      physx::Dy::FeatherstoneArticulation::propagateImpulseW((v45 + 96 * v7), v8 + 160 * v7 + 120, v46 + 76 * v7, &v78, &v66);
      v27 = v67;
      v79 = v67;
      v80 = 0;
      v28 = v70;
      v82 = v70;
      v83 = 0;
      v29 = v66;
      v78 = v66;
      v30 = v69;
      v81 = v69;
      v7 = *(v10 + 40 * v7 + 32);
      v47 = (v9 + 32 * v7);
      *v47 = vadd_f32(v66, *v47);
      v47[1].f32[0] = v27 + v47[1].f32[0];
      v47[2] = vadd_f32(v30, v47[2]);
      v47[3].f32[0] = v28 + v47[3].f32[0];
    }

    while (v7 != v26);
    v43 = v29.f32[1];
    v44 = v30.f32[1];
    a1 = v61;
    v34.i32[0] = v58;
    v31.i32[0] = v60;
  }

  v66.f32[0] = v31.f32[0] + v29.f32[0];
  v66.f32[1] = v32 + v43;
  v67 = v33 + v27;
  v68 = 0;
  v69.f32[0] = v34.f32[0] + v30.f32[0];
  v69.f32[1] = v35 + v44;
  v70 = v36 + v28;
  v71 = 0;
  if (v26)
  {
    v48 = *(a1 + 544);
    v49 = *(a1 + 528);
    do
    {
      physx::Dy::FeatherstoneArticulation::propagateImpulseW((v48 + 96 * v26), v8 + 160 * v26 + 120, v49 + 76 * v26, &v66, &v62);
      v50 = v63;
      v67 = v63;
      v68 = 0;
      v51 = v65;
      v70 = v65;
      v71 = 0;
      v66 = v62;
      v52 = v64;
      v69 = v64;
      v26 = *(v10 + 40 * v26 + 32);
      v53 = (v9 + 32 * v26);
      *v53 = vadd_f32(v62, *v53);
      v53[1].f32[0] = v50 + v53[1].f32[0];
      v53[2] = vadd_f32(v52, v53[2]);
      v53[3].f32[0] = v51 + v53[3].f32[0];
    }

    while (v26);
  }
}

void physx::Dy::computeSphericalJointPositions(float *a1, float *a2, float *a3, float *a4, uint64_t a5, uint64_t a6)
{
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a4[2];
  v11 = a4[3];
  v13 = a4[1];
  v14 = (((v10 * *a4) - (*a3 * v11)) - (v8 * v12)) + (v13 * v9);
  v15 = (((v10 * v13) - (v8 * v11)) - (v9 * *a4)) + (v12 * *a3);
  v16 = (((v10 * v12) - (v9 * v11)) - (*a3 * v13)) + (*a4 * v8);
  v17 = (((*a3 * *a4) + (v10 * v11)) + (v8 * v13)) + (v9 * v12);
  v18 = sqrtf((((v15 * v15) + (v14 * v14)) + (v16 * v16)) + (v17 * v17));
  v19 = v14 / v18;
  v20 = v15 / v18;
  v21 = v16 / v18;
  v22 = v17 / v18;
  *a1 = v14 / v18;
  a1[1] = v15 / v18;
  a1[2] = v16 / v18;
  a1[3] = v22;
  v23 = a2[1];
  v24 = a2[2];
  v25 = a2[3];
  v26 = (((v25 * v19) - (v22 * *a2)) - (v20 * v24)) + (v23 * v21);
  v27 = (((v25 * v20) - (v22 * v23)) - (v21 * *a2)) + (v24 * v19);
  v28 = (((v25 * v21) - (v22 * v24)) - (v19 * v23)) + (*a2 * v20);
  v29 = ((v27 * v27) + (v26 * v26)) + (v28 * v28);
  if (v29 >= 1.0e-16)
  {
    v34 = (((*a2 * v19) + (v22 * v25)) + (v20 * v23)) + (v21 * v24);
    v35 = 1.0 / sqrtf(v29);
    v30 = v26 * v35;
    v33 = v27 * v35;
    v32 = v28 * v35;
    if (fabsf(v34) >= 0.00000001)
    {
      v36 = atan2f(v29 * v35, v34);
      v31 = v36 + v36;
    }

    else
    {
      v31 = 3.1416;
    }
  }

  else
  {
    v30 = 1.0;
    v31 = 0.0;
    v32 = 0.0;
    v33 = 0.0;
  }

  v37 = 0;
  v38 = v31 * v30;
  v39 = v31 * v33;
  v40 = (a6 + 8);
  v41 = v31 * v32;
  do
  {
    v42 = (v39 * *(v40 - 1)) + (*(v40 - 2) * v38);
    v43 = *v40;
    v40 += 6;
    *(a5 + v37) = -(v42 + (v43 * v41));
    v37 += 4;
  }

  while (v37 != 12);
}

float32_t physx::Dy::FeatherstoneArticulation::getDeltaVWithDeltaJV@<S0>(char a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D2>)
{
  v11 = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  if ((a1 & 1) == 0)
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    v14 = -v13;
    v15 = *(a4 + 8);
    LODWORD(a7) = *(a4 + 16);
    v16 = *(a4 + 20);
    v17 = -v16;
    v11.i32[0] = *(a4 + 24);
    v18.i32[0] = *(a3 + 564);
    v19 = *(a3 + 576);
    v20 = *(a3 + 588);
    v21 = ((-(v13 * v19) - (*a4 * v18.f32[0])) - (v15 * v20)) + ((-(v16 * *(a3 + 612)) - (*&a7 * *(a3 + 600))) - (v11.f32[0] * *(a3 + 624)));
    v22 = *(a3 + 556);
    v23 = *(a3 + 568);
    v24 = *(a3 + 580);
    v25 = vadd_f32(vsub_f32(vsub_f32(vmul_n_f32(v23, -v13), vmul_n_f32(v22, *a4)), vmul_n_f32(v24, v15)), vsub_f32(vsub_f32(vmul_n_f32(*(a3 + 604), v17), vmul_n_f32(*(a3 + 592), *&a7)), vmul_n_f32(*(a3 + 616), v11.f32[0])));
    v26 = ((vmuls_lane_f32(v17, v24, 1) - (v24.f32[0] * *&a7)) - (v20 * v11.f32[0])) + ((-(v13 * *(a3 + 648)) - (*a4 * *(a3 + 636))) - (v15 * *(a3 + 660)));
    *a6 = v25;
    *(a6 + 8) = v21;
    v18.f32[1] = v19;
    v11 = vadd_f32(vmls_lane_f32(vmls_lane_f32(vmul_n_f32(vzip2_s32(v22, v23), v17), vzip1_s32(v22, v23), *&a7, 0), v18, v11, 0), vsub_f32(vsub_f32(vmul_n_f32(*(a3 + 640), v14), vmul_n_f32(*(a3 + 628), v12)), vmul_n_f32(*(a3 + 652), v15)));
    *(a6 + 16) = v11;
    *(a6 + 24) = v26;
  }

  v27 = *(*(a3 + 432) + 40 * a2 + 8);
  v28 = v27 - 1;
  if (v27 != 1)
  {
    do
    {
      v29 = __clz(__rbit32(v28));
      LODWORD(v30) = __clz(__rbit32(HIDWORD(v28))) + 32;
      if (v28)
      {
        v30 = v29;
      }

      else
      {
        v30 = v30;
      }

      physx::Dy::FeatherstoneArticulation::propagateVelocityW(*(a3 + 448) + 160 * v30 + 120, (*(a3 + 304) + 112 * v30), (*(a3 + 320) + 36 * v30), *(a3 + 352) + 76 * v30, (a4 + 32 * v30), a5 + 4 * *(*(a3 + 456) + 80 * v30 + 72), a6, &v32);
      *a6 = v32;
      *(a6 + 8) = v33;
      *(a6 + 12) = 0;
      *(a6 + 16) = v34;
      v11.i32[0] = v35;
      *(a6 + 24) = v35;
      *(a6 + 28) = 0;
      v28 &= v28 - 1;
    }

    while (v28);
  }

  return v11.f32[0];
}

float32_t physx::Dy::FeatherstoneArticulation::getZ(unsigned int a1, void *a2, uint64_t a3, float32x2_t *a4)
{
  v4 = a1;
  v5 = a2[54];
  v6 = -a4[3].f32[0];
  v7 = (a3 + 32 * a1);
  v8 = vneg_f32(*a4);
  v7[1].f32[0] = -a4[1].f32[0];
  v7[1].i32[1] = 0;
  v9 = vneg_f32(a4[2]);
  *v7 = v8;
  v7[2] = v9;
  v7[3].f32[0] = v6;
  v7[3].i32[1] = 0;
  if (a1)
  {
    v11 = a2[46];
    v12 = a2[56];
    v13 = a2[44];
    do
    {
      physx::Dy::FeatherstoneArticulation::propagateImpulseW((v11 + 96 * v4), v12 + 160 * v4 + 120, v13 + 76 * v4, (a3 + 32 * v4), &v16);
      v4 = *(v5 + 40 * v4 + 32);
      v14 = (a3 + 32 * v4);
      *v14 = v16;
      v14[1].i32[0] = v17;
      v14[1].i32[1] = 0;
      v14[2] = v18;
      v9.i32[0] = v19;
      v14[3].i32[0] = v19;
      v14[3].i32[1] = 0;
    }

    while (v4);
  }

  return v9.f32[0];
}

void physx::Dy::FeatherstoneArticulation::getImpulseSelfResponse(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, __int128 *a5, uint64_t a6, unsigned int a7, float32x2_t *a8, float32x4_t a9, double a10, float32x4_t a11, float32x4_t a12, float32x4_t a13, float32x4_t a14, float32x4_t a15, float32x4_t a16, uint64_t a17)
{
  v132 = *MEMORY[0x1E69E9840];
  v20 = a7;
  if (*(a1 + 40 * a7 + 32) == a4)
  {
    v22 = *a8->f32;
    v21 = *a8[2].f32;
    v101 = *a5;
    v102 = a5[1];
    v126 = vneg_f32(*a8);
    v127 = -*(&v22 + 2);
    v128 = 0;
    v129 = vneg_f32(*&v21);
    v130 = -*(&v21 + 2);
    v131 = 0;
    v23 = a3[56] + 160 * a7;
    v24 = a3[44] + 76 * a7;
    physx::Dy::FeatherstoneArticulation::propagateImpulseW((a3[46] + 96 * a7), v23 + 120, v24, &v126, &v120);
    v25 = v102;
    *v26.f32 = vsub_f32(*&v101, v120);
    v27.f32[0] = *(&v101 + 2) - v121;
    *v28.f32 = vsub_f32(*v102.f32, v123);
    v29.f32[0] = v124;
    v25.f32[0] = v102.f32[2] - v124;
    v26.f32[2] = *(&v101 + 2) - v121;
    v26.i32[3] = 0;
    v28.f32[2] = v102.f32[2] - v124;
    v28.i32[3] = 0;
    physx::Dy::SpatialImpulseResponseMatrix::getResponse(&v118, a3[36] + 192 * a4, v26, v28, v27, v25, v29, v30, v31, v32);
    physx::Dy::FeatherstoneArticulation::propagateVelocityTestImpulseW(&v116, v23 + 120, (a3[38] + 112 * v20), (a3[40] + 36 * v20), v24, &v126, &v118);
    v34 = v118;
    v33 = v119;
    HIDWORD(v33) = 0;
    v34.i32[3] = 0;
    *a6 = v33;
    *(a6 + 16) = v34;
    v36 = v116;
    v35 = v117;
    HIDWORD(v35) = 0;
    v36.i32[3] = 0;
    *a17 = v35;
    *(a17 + 16) = v36;
  }

  else
  {
    v39 = a4;
    v40 = a7;
    if (a4 != a7)
    {
      v41 = a4;
      v40 = a7;
      do
      {
        if (v41 >= v40)
        {
          v41 = *(a1 + 40 * v41 + 32);
        }

        else
        {
          v40 = *(a1 + 40 * v40 + 32);
        }
      }

      while (v41 != v40);
    }

    v42 = 0;
    v43 = *a5;
    a12.i64[0] = *(a5 + 2);
    v45 = -*(a5 + 6);
    v121 = -*(a5 + 2);
    v44 = v121;
    v122 = 0;
    v124 = v45;
    v125 = 0;
    v46 = vneg_f32(v43);
    v120 = v46;
    v47 = vneg_f32(*a8);
    v48 = -a8[1].f32[0];
    v49 = vneg_f32(*a12.f32);
    v123 = v49;
    v50 = vneg_f32(a8[2]);
    v51 = -a8[3].f32[0];
    *v118.f32 = v47;
    v118.i64[1] = LODWORD(v48);
    *&v119 = v50;
    *(&v119 + 2) = v51;
    HIDWORD(v119) = 0;
    v52 = (a2 + 32 * a4);
    *v52 = v46;
    v52[1].f32[0] = v44;
    v52[1].i32[1] = 0;
    v52[2] = v49;
    v52[3].f32[0] = v45;
    v52[3].i32[1] = 0;
    v53 = (a2 + 32 * a7);
    *v53 = v47;
    v53[1].f32[0] = v48;
    v53[1].i32[1] = 0;
    v53[2] = v50;
    v53[3].f32[0] = v51;
    v53[3].i32[1] = 0;
    if (v40 != a4)
    {
      v54 = 0;
      v55 = a3[46];
      v56 = a3[56];
      v57 = a3[44];
      do
      {
        physx::Dy::FeatherstoneArticulation::propagateImpulseW((v55 + 96 * v39), v56 + 160 * v39 + 120, v57 + 76 * v39, &v120, &v116);
        v46 = *v116.f32;
        v120 = *v116.f32;
        v44 = v116.f32[2];
        v121 = v116.f32[2];
        v122 = 0;
        v49 = v117;
        v123 = v117;
        v45 = *(&v117 + 2);
        v124 = *(&v117 + 2);
        v125 = 0;
        v126.i32[v54] = v39;
        v58 = *(a1 + 40 * v39 + 32);
        v59 = (a2 + 32 * v58);
        *v59 = v46;
        v59[1].f32[0] = v44;
        v59[1].i32[1] = 0;
        v59[2] = v49;
        v59[3].f32[0] = v45;
        v59[3].i32[1] = 0;
        v42 = ++v54;
        v39 = v58;
      }

      while (v58 != v40);
    }

    v60 = v42;
    if (v40 != v20)
    {
      v61 = a3[46];
      v62 = a3[56];
      v63 = a3[44];
      v64 = v42;
      do
      {
        physx::Dy::FeatherstoneArticulation::propagateImpulseW((v61 + 96 * v20), v62 + 160 * v20 + 120, v63 + 76 * v20, &v118, &v116);
        v47 = *v116.f32;
        v118.i64[0] = v116.i64[0];
        v48 = v116.f32[2];
        v118.i64[1] = v116.u32[2];
        v50 = v117;
        *&v119 = v117;
        v51 = *(&v117 + 2);
        *(&v119 + 1) = DWORD2(v117);
        v126.i32[v64] = v20;
        v65 = *(a1 + 40 * v20 + 32);
        v66 = (a2 + 32 * v65);
        *v66 = v47;
        v66[1].f32[0] = v48;
        v66[1].i32[1] = 0;
        v66[2] = v50;
        v66[3].f32[0] = v51;
        v66[3].i32[1] = 0;
        v60 = ++v64;
        v20 = v65;
      }

      while (v65 != v40);
    }

    *a9.f32 = vadd_f32(v46, v47);
    *a11.f32 = vadd_f32(v49, v50);
    v67.i64[0] = vnegq_f32(a9).u64[0];
    v67.f32[2] = -(v44 + v48);
    v67.i32[3] = 0;
    a12.f32[0] = -(v45 + v51);
    v68.i64[0] = vnegq_f32(a11).u64[0];
    v68.f32[2] = a12.f32[0];
    v68.i32[3] = 0;
    physx::Dy::SpatialImpulseResponseMatrix::getResponse(&v116, a3[36] + 192 * v40, v67, v68, a11, a12, a13, a14, a15, a16);
    v70 = v116.i32[1];
    v69 = v116.i32[0];
    v114 = v116;
    v95 = v116.i32[3];
    v71 = v116.i32[2];
    v73 = DWORD1(v117);
    v72 = v117;
    v115 = v117;
    v74 = v116.i32[2];
    v75 = v116.i32[1];
    v76 = DWORD2(v117);
    v77 = v116.i32[0];
    v78 = DWORD2(v117);
    v79 = DWORD1(v117);
    v80 = v117;
    v94 = HIDWORD(v117);
    if (v60 > v42)
    {
      v81 = a3[56];
      v82 = a3[38];
      v83 = v60;
      v84 = a3[40];
      v85 = a3[44];
      do
      {
        v86 = *(&v125 + v83);
        v87 = v83 - 1;
        physx::Dy::FeatherstoneArticulation::propagateVelocityTestImpulseW(&v108, v81 + 160 * v86 + 120, (v82 + 112 * v86), (v84 + 36 * v86), v85 + 76 * v86, (a2 + 32 * v86), &v114);
        v75 = v108.i32[1];
        v77 = v108.i32[0];
        *v114.f32 = v108;
        v74 = v109;
        v79 = HIDWORD(v111);
        v80 = v111;
        v114.i64[1] = v109;
        v78 = v112;
        *&v115 = v111;
        *(&v115 + 1) = v112;
        v83 = v87;
      }

      while (v87 > v42);
    }

    v96 = v80;
    v97 = v77;
    v98 = v74;
    v99 = v75;
    v108 = __PAIR64__(v70, v69);
    v109 = v71;
    v110 = v95;
    v111 = __PAIR64__(v73, v72);
    v112 = v76;
    v113 = v94;
    if (v42)
    {
      v88 = a3[56];
      v89 = a3[38];
      v90 = 4 * v42;
      v91 = a3[40];
      v92 = a3[44];
      do
      {
        v93 = *(&v125 + v90);
        physx::Dy::FeatherstoneArticulation::propagateVelocityTestImpulseW(&v104, v88 + 160 * v93 + 120, (v89 + 112 * v93), (v91 + 36 * v93), v92 + 76 * v93, (a2 + 32 * v93), &v108);
        v70 = v104.i32[1];
        v69 = v104.i32[0];
        v108 = v104;
        v71 = v105;
        v73 = HIDWORD(v106);
        v72 = v106;
        v109 = v105;
        v110 = 0;
        v76 = v107;
        v111 = v106;
        v112 = v107;
        v113 = 0;
        v90 -= 4;
      }

      while (v90);
    }

    *a6 = v72;
    *(a6 + 4) = v73;
    *(a6 + 8) = v76;
    *(a6 + 16) = v69;
    *(a6 + 20) = v70;
    *(a6 + 24) = v71;
    *a17 = v96;
    *(a17 + 4) = v79;
    *(a17 + 8) = v78;
    *(a17 + 16) = v97;
    *(a17 + 20) = v99;
    *(a17 + 24) = v98;
  }
}

uint64_t physx::Dy::FeatherstoneArticulation::storeStaticConstraint(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 880);
  if ((*(a1 + 884) & 0x7FFFFFFFu) <= v2)
  {
    physx::shdfnd::Array<physx::PxSolverConstraintDesc,physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>>::growAndPushBack(a1 + 872, a2);
  }

  else
  {
    v3 = (*(a1 + 872) + 48 * v2);
    v4 = *a2;
    v5 = a2[2];
    v3[1] = a2[1];
    v3[2] = v5;
    *v3 = v4;
    ++*(a1 + 880);
  }

  return 1;
}

void physx::Dy::FeatherstoneArticulation::prepareStaticConstraintsTGS(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, void), uint64_t a4, uint64_t a5, uint64_t (**a6)(void, void), uint64_t a7, float a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15)
{
  v123[0] = &unk_1F5D1DC80;
  v123[1] = a6;
  v123[2] = a3 + 1484;
  v123[3] = a3 + 1478;
  v123[4] = a3 + 1526;
  v120 = xmmword_1E30474D0;
  v121 = 0;
  v122 = 0;
  physx::shdfnd::sort<physx::PxSolverConstraintDesc,physx::Dy::ArticulationStaticConstraintSortPredicate,physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>>(*(a1 + 872), *(a1 + 880));
  if (*(a1 + 880))
  {
    v26 = 0;
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      v31 = *(a1 + 872) + 48 * v26;
      v32 = *(v31 + 16);
      v33 = *(v31 + 18);
      if (v32 == 0xFFFF)
      {
        v34 = *(v31 + 18);
      }

      else
      {
        v34 = *(v31 + 16);
      }

      if (*(v31 + 30) == 1)
      {
        v35 = *(v31 + 32);
        v36 = *(a2 + 32) + 32 * (*(a2 + 4 * (*(v35 + 108) & 7)) + (*(v35 + 108) >> 3));
        _ZF = v32 == 0xFFFF;
        v37 = *(v31 + 20);
        v38 = *(v31 + 24);
        if (_ZF)
        {
          v39 = *(v31 + 20);
        }

        else
        {
          v39 = 0;
        }

        v40 = a4 + 48 * v39;
        if (v33 == 0xFFFF)
        {
          v41 = *(v31 + 24);
        }

        else
        {
          v41 = 0;
        }

        v42 = a4 + 48 * v41;
        v44 = *(v35 + 32);
        v43 = *(v35 + 40);
        v45 = *(v35 + 24);
        v46 = *(v36 + 16);
        v47 = *v31;
        v105 = *v44;
        *&v48 = *(v44 + 16);
        DWORD2(v48) = *(v44 + 24);
        HIDWORD(v48) = *v43;
        v106 = v48;
        v107 = *(v43 + 4);
        v108 = *(v43 + 20);
        v111 = v45;
        v117 = v46;
        v99 = v31;
        v100 = v47;
        v101 = a5 + (v37 << 6);
        v102 = a5 + (v38 << 6);
        v103 = v40;
        v104 = v42;
        v49 = *(v35 + 80);
        BYTE2(v113) = HIBYTE(v49) & 1;
        BYTE1(v113) = (v49 & 4) != 0;
        v50 = 8;
        if ((v49 & 8) != 0)
        {
          v51 = 8;
        }

        else
        {
          v51 = 1;
        }

        v109 = v51;
        if ((v49 & 0x10) == 0)
        {
          if ((v49 & 0x400) != 0)
          {
            v50 = 4;
          }

          else if ((v49 & 0x40) != 0)
          {
            v50 = 1;
          }

          else
          {
            v50 = 2;
          }
        }

        v110 = v50;
        v77 = (v40 + 12);
        if ((v49 & 8) != 0)
        {
          v77 = (*(v35 + 32) + 128);
        }

        v78 = *v77;
        v79 = (*(v35 + 40) + 128);
        v80 = (v42 + 12);
        if ((v49 & 0x10) == 0)
        {
          v79 = v80;
        }

        v81.i32[0] = *(v35 + 84);
        v81.i32[1] = *(v35 + 85);
        v82 = *v79;
        v83 = vceqz_s32(v81);
        v124.val[0] = vbic_s8(_D8, v83);
        v124.val[1] = v124.val[0];
        v84 = v98;
        vst2_f32(v84, v124);
        LODWORD(v114) = *(v35 + 92);
        v115 = *(v35 + 72);
        v116 = *(v35 + 82);
        HIDWORD(v114) = 2139095039;
        if (v78 >= v82)
        {
          v78 = v82;
        }

        v118 = v78;
        v119 = *(v35 + 112);
        *v83.i32 = a11;
        *&v25 = a13;
        physx::Dy::createFinalizeSolverContactsStep(v98, v36, a3, v123, a10, *&v83, *&v25, a14, a12);
        *(v31 + 28) = *(v36 + 24);
        *(v31 + 40) = *(v36 + 16);
        *(v35 + 72) = v115;
        *(v35 + 82) = v116;
        if (*(v31 + 32))
        {
LABEL_52:
          v85 = *(a1 + 560);
          v86 = *(v85 + 4 * v34);
          if (!v86)
          {
            *(*(a1 + 576) + 4 * v34) = v26;
            v86 = *(v85 + 4 * v34);
          }

          *(v85 + 4 * v34) = v86 + 1;
          goto LABEL_59;
        }

        v87 = v26 + 1;
        LODWORD(v72) = *(a1 + 880);
        if (v87 < v72)
        {
          v88 = (*(a1 + 872) + 48 * v26);
          v89 = 48 * (v26 + 1);
          do
          {
            v90 = (*(a1 + 872) + v89);
            v91 = *v90;
            v25 = v90[2];
            v88[1] = v90[1];
            v88[2] = v25;
            *v88 = v91;
            v88 += 3;
            ++v87;
            v72 = *(a1 + 880);
            v89 += 48;
          }

          while (v87 < v72);
        }
      }

      else
      {
        v52 = *(v31 + 32);
        v53 = v52[5];
        if (v53)
        {
          v54 = *(v53 + 40);
        }

        else
        {
          v54 = &v120;
        }

        v55 = v52[6];
        if (v55)
        {
          v56 = *(v55 + 40);
        }

        else
        {
          v56 = &v120;
        }

        v57 = v52[4];
        v58 = *(v52 + 4);
        _ZF = v32 == 0xFFFF;
        v60 = *(v31 + 20);
        v61 = *(v31 + 24);
        if (_ZF)
        {
          v62 = *(v31 + 20);
        }

        else
        {
          v62 = 0;
        }

        v63 = a4 + 48 * v62;
        if (_ZF)
        {
          v64 = 1;
        }

        else
        {
          v64 = 8;
        }

        v65 = v33 == 0xFFFF;
        if (v33 == 0xFFFF)
        {
          v66 = *(v31 + 24);
        }

        else
        {
          v66 = 0;
        }

        v96[1] = v52[2];
        v96[2] = v57;
        v97 = v58;
        v96[0] = v52;
        v67 = *v54;
        v68 = *v31;
        v99 = v31;
        v105 = v67;
        *&v67 = *(v54 + 2);
        DWORD2(v67) = *(v54 + 6);
        HIDWORD(v67) = *v56;
        v106 = v67;
        v107 = *(v56 + 4);
        v108 = *(v56 + 20);
        v100 = v68;
        v101 = a5 + (v60 << 6);
        v102 = a5 + (v61 << 6);
        v103 = v63;
        v104 = a4 + 48 * v66;
        v112 = *v52;
        v114 = a7 + 32 * *(v52 + 18);
        v69 = *(v52 + 5);
        LOBYTE(v115) = HIBYTE(v69) & 1;
        BYTE1(v115) = (v69 & 0x80) != 0;
        BYTE2(v115) = (v69 & 0x20) != 0;
        BYTE3(v115) = (v69 & 0x200) != 0;
        v113 = *(v52 + 19);
        if (v65)
        {
          v70 = 1;
        }

        else
        {
          v70 = 8;
        }

        v109 = v64;
        v110 = v70;
        physx::Dy::SetupSolverConstraintStep(v96, v98, v123, a8, a9, a10, a11, a15);
        if (*(v31 + 32))
        {
          goto LABEL_52;
        }

        v71 = v26 + 1;
        LODWORD(v72) = *(a1 + 880);
        if (v71 < v72)
        {
          v73 = (*(a1 + 872) + 48 * v26);
          v74 = 48 * (v26 + 1);
          do
          {
            v75 = (*(a1 + 872) + v74);
            v76 = *v75;
            v25 = v75[2];
            v73[1] = v75[1];
            v73[2] = v25;
            *v73 = v76;
            v73 += 3;
            ++v71;
            v72 = *(a1 + 880);
            v74 += 48;
          }

          while (v71 < v72);
        }
      }

      *(a1 + 880) = v72 - 1;
      --v26;
LABEL_59:
      ++v26;
    }

    while (v26 < *(a1 + 880));
  }
}

void physx::Dy::FeatherstoneArticulation::prepareStaticConstraints(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, void), uint64_t a6, float a7, float a8, float a9, float a10, float a11, float a12, float a13)
{
  v110 = *MEMORY[0x1E69E9840];
  v92[0] = &unk_1F5D1DC80;
  v92[1] = a5;
  v92[2] = (a3 + 11872);
  v92[3] = (a3 + 11824);
  v92[4] = (a3 + 12208);
  v89 = xmmword_1E30474D0;
  v90 = 0;
  v91 = 0;
  v86 = *(a3 + 12160);
  physx::shdfnd::sort<physx::PxSolverConstraintDesc,physx::Dy::ArticulationStaticConstraintSortPredicate,physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>>(*(a1 + 872), *(a1 + 880));
  if (*(a1 + 880))
  {
    v27 = 0;
    __asm { FMOV            V15.2S, #1.0 }

    do
    {
      v33 = *(a1 + 872) + 48 * v27;
      v34 = *(v33 + 16);
      v35 = *(v33 + 18);
      if (v34 == 0xFFFF)
      {
        v36 = *(v33 + 18);
      }

      else
      {
        v36 = *(v33 + 16);
      }

      if (*(v33 + 30) == 1)
      {
        v37 = *(v33 + 32);
        v38 = *(v37 + 108);
        v39 = *(a2 + 32);
        v40 = *(a2 + 4 * (v38 & 7));
        v41 = *(v33 + 20);
        if (v34 != 0xFFFF)
        {
          v41 = 0;
        }

        v42 = a4 + 112 * v41;
        if (v35 == 0xFFFF)
        {
          v43 = *(v33 + 24);
        }

        else
        {
          v43 = 0;
        }

        v96 = v42;
        v97 = a4 + 112 * v43;
        v45 = *(v37 + 32);
        v44 = *(v37 + 40);
        v46 = *(v45 + 28);
        if (v44)
        {
          v46 |= *(v44 + 28);
          v47 = *(v37 + 40);
        }

        else
        {
          v47 = &v89;
        }

        v51 = v39 + 32 * (v40 + (v38 >> 3));
        v98 = *v45;
        *&v52 = *(v45 + 16);
        DWORD2(v52) = *(v45 + 24);
        HIDWORD(v52) = *v47;
        v99 = v52;
        *v100 = *(v47 + 1);
        *&v100[4] = *(v47 + 2);
        if (!v44)
        {
          v44 = &v89;
        }

        DWORD1(v53) = *(v44 + 4);
        *(&v53 + 1) = *(v47 + 20);
        LODWORD(v53) = *(v47 + 3);
        *&v100[8] = v53;
        v103 = *(v37 + 24);
        v109 = *(v51 + 16);
        v94 = v33;
        v95 = *v33;
        v54 = *(v37 + 80);
        BYTE2(v105) = HIBYTE(v54) & 1;
        BYTE1(v105) = (v54 & 4) != 0;
        v55 = 8;
        if ((v54 & 8) != 0)
        {
          v56 = 8;
        }

        else
        {
          v56 = 1;
        }

        v101 = v56;
        if ((v54 & 0x10) == 0)
        {
          if ((v54 & 0x400) != 0)
          {
            v55 = 4;
          }

          else if ((v54 & 0x40) != 0)
          {
            v55 = 1;
          }

          else
          {
            v55 = 2;
          }
        }

        v102 = v55;
        v75.i32[0] = *(v37 + 84);
        v75.i32[1] = *(v37 + 85);
        v77 = COERCE_DOUBLE(vbic_s8(_D15, vceqz_s32(v75)));
        v76 = v77;
        vst2_f32(v93.f32, *&v77);
        LODWORD(v106) = *(v37 + 92);
        v107 = *(v37 + 72);
        v108 = *(v37 + 82);
        LODWORD(v77) = 2139095039;
        if ((v46 & 0x20) != 0)
        {
          *&v77 = a13;
        }

        HIDWORD(v106) = LODWORD(v77);
        *&v77 = a8;
        *&v76 = a10;
        *&v22 = a11;
        *&v23 = a12;
        physx::Dy::createFinalizeSolverContacts(&v93, v51, a3, v92, v86, v77, v76, *&v22, a9, v23, v24, v25, v26);
        *(v33 + 28) = *(v51 + 24);
        *(v33 + 40) = *(v51 + 16);
        *(v37 + 72) = v107;
        *(v37 + 82) = v108;
        if (!*(v33 + 32))
        {
          v78 = v27 + 1;
          LODWORD(v70) = *(a1 + 880);
          if (v78 < v70)
          {
            v79 = (*(a1 + 872) + 48 * v27);
            v80 = 48 * (v27 + 1);
            do
            {
              v81 = (*(a1 + 872) + v80);
              v82 = *v81;
              v22 = v81[2];
              v79[1] = v81[1];
              v79[2] = v22;
              *v79 = v82;
              v79 += 3;
              ++v78;
              v70 = *(a1 + 880);
              v80 += 48;
            }

            while (v78 < v70);
          }

LABEL_53:
          *(a1 + 880) = v70 - 1;
          --v27;
          goto LABEL_54;
        }

        v67 = *(a1 + 560);
        v68 = *(v67 + 4 * v36);
        if (!v68)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v48 = *(v33 + 32);
        v49 = v48[5];
        if (v49)
        {
          v50 = *(v49 + 40);
        }

        else
        {
          v50 = &v89;
        }

        v57 = v48[6];
        if (v57)
        {
          v58 = *(v57 + 40);
        }

        else
        {
          v58 = &v89;
        }

        v59 = v48[4];
        v60 = *(v48 + 4);
        _ZF = v34 == 0xFFFF;
        v61 = *(v33 + 20);
        if (!_ZF)
        {
          v61 = 0;
        }

        v62 = a4 + 112 * v61;
        if (v35 == 0xFFFF)
        {
          v63 = *(v33 + 24);
        }

        else
        {
          v63 = 0;
        }

        v87[1] = v48[2];
        v87[2] = v59;
        v88 = v60;
        v87[0] = v48;
        v64 = *v50;
        v65 = *v33;
        v94 = v33;
        v98 = v64;
        *&v64 = *(v50 + 2);
        DWORD2(v64) = *(v50 + 6);
        HIDWORD(v64) = *v58;
        v99 = v64;
        *v100 = *(v58 + 4);
        *&v100[16] = *(v58 + 20);
        v96 = v62;
        v97 = a4 + 112 * v63;
        v95 = v65;
        v104 = *v48;
        v106 = a6 + 32 * *(v48 + 18);
        v66 = *(v48 + 5);
        LOBYTE(v107) = HIBYTE(v66) & 1;
        BYTE1(v107) = (v66 & 0x80) != 0;
        BYTE2(v107) = (v66 & 0x20) != 0;
        BYTE3(v107) = (v66 & 0x200) != 0;
        v105 = *(v48 + 19);
        physx::Dy::SetupSolverConstraint(v87, &v93, v92, v86, a7, a8);
        if (!*(v33 + 32))
        {
          v69 = v27 + 1;
          LODWORD(v70) = *(a1 + 880);
          if (v69 < v70)
          {
            v71 = (*(a1 + 872) + 48 * v27);
            v72 = 48 * (v27 + 1);
            do
            {
              v73 = (*(a1 + 872) + v72);
              v74 = *v73;
              v22 = v73[2];
              v71[1] = v73[1];
              v71[2] = v22;
              *v71 = v74;
              v71 += 3;
              ++v69;
              v70 = *(a1 + 880);
              v72 += 48;
            }

            while (v69 < v70);
          }

          goto LABEL_53;
        }

        v67 = *(a1 + 560);
        v68 = *(v67 + 4 * v36);
        if (!v68)
        {
LABEL_48:
          *(*(a1 + 576) + 4 * v36) = v27;
          v68 = *(v67 + 4 * v36);
        }
      }

      *(v67 + 4 * v36) = v68 + 1;
LABEL_54:
      ++v27;
    }

    while (v27 < *(a1 + 880));
  }
}

uint64_t physx::Dy::createFinalizeSolverContacts(float32x4_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, float a9, double a10, double a11, double a12, double a13)
{
  v14 = a1[3].i64[0];
  v15 = *(a1[2].i64[1] + 76);
  v16 = a3 + 16;
  *(a3 + 4112) = 0;
  v17 = *(v14 + 76);
  if (v15 < v17)
  {
    v17 = v15;
  }

  v18 = *a2;
  __asm { FMOV            V5.4S, #1.0 }

  if (!*a2)
  {
    LOBYTE(v28) = 0;
LABEL_41:
    v29 = 0;
    goto LABEL_42;
  }

  v24 = *(v18 + 43);
  if ((v24 & 2) != 0)
  {
    v25 = 64;
  }

  else
  {
    v25 = 16;
  }

  if ((*(v18 + 43) & 4) != 0)
  {
    LOBYTE(v28) = 0;
    LOBYTE(v18) = 0;
    goto LABEL_41;
  }

  v26 = *(a2 + 25);
  v27 = v24;
  _Q5 = *v18;
  v28 = (v24 >> 5) & 1;
  v29 = 0;
  if (*(a2 + 25))
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = v24 & 0x82;
    if ((v27 & 2) != 0)
    {
      v34 = 6;
    }

    else
    {
      v34 = 4;
    }

    if (v27 < 0)
    {
      v25 = 32;
      v34 = 5;
    }

    _X1 = a2[1];
    while (1)
    {
      if (v30)
      {
        v36 = *(v18 + 41);
        _CF = v36 >= v31;
        v38 = v36 - v31;
        v37 = v38 != 0 && _CF;
        LODWORD(v39) = v38 << v34;
        if (v37)
        {
          v39 = v39;
        }

        else
        {
          v39 = 0;
        }

        _X1 += v39;
        v18 += 48;
      }

      v31 = *(v18 + 41);
      if (*(v18 + 41))
      {
        break;
      }

LABEL_37:
      if (++v30 == v26)
      {
        goto LABEL_38;
      }
    }

    if (v32)
    {
      v40 = v25;
    }

    else
    {
      v40 = 0;
    }

    v41 = *(v18 + 41);
    while (1)
    {
      _X1 += v40;
      __asm { PRFM            #0, [X1,#0x80] }

      _X7 = v16 + (v29 << 6);
      __asm { PRFM            #0, [X7,#0x80] }

      *&a13 = v17;
      if ((v27 & 0x20) != 0)
      {
        if (!v33)
        {
          LODWORD(a13) = 2139095039;
LABEL_31:
          *&v45 = *(v18 + 16);
          DWORD2(v45) = *(v18 + 24);
          HIDWORD(v45) = *(_X1 + 12);
          *_X7 = v45;
          *(_X7 + 16) = *_X1;
          LODWORD(v45) = *(_X1 + 8);
          *(_X7 + 48) = *(v18 + 42);
          *(_X7 + 24) = v45;
          *(_X7 + 28) = LODWORD(a13);
          *(_X7 + 44) = *(v18 + 36);
          *(_X7 + 56) = vrev64_s32(*(v18 + 28));
          if (v33)
          {
            a13 = *(_X1 + 16);
            v46 = *(_X1 + 24);
          }

          else
          {
            a13 = 0.0;
            v46 = 0;
          }

          *(_X7 + 32) = a13;
          *(_X7 + 40) = v46;
          ++v29;
          goto LABEL_35;
        }

        LODWORD(a13) = *(_X1 + 28);
      }

      if (*&a13 != 0.0)
      {
        goto LABEL_31;
      }

LABEL_35:
      v40 = v25;
      if (!--v41)
      {
        v32 = 1;
        goto LABEL_37;
      }
    }
  }

LABEL_38:
  LODWORD(v18) = (v27 >> 4) & 1;
LABEL_42:
  *(a3 + 4112) = v29;
  a1[8].i64[1] = v16;
  a1[9].i32[0] = v29;
  a1[9].i8[5] |= v18;
  a1[9].i8[4] = v28;
  v47 = *a1;
  v48 = vmulq_f32(_Q5, *a1);
  *a1 = v48;

  return physx::Dy::createFinalizeSolverContacts(a1, a3 + 4128, a4, a5, a6, a7, a8, a9, a10, v48.f32[0], v47.f32[0], *&a13);
}

uint64_t physx::Dy::SetupSolverConstraint(uint64_t a1, uint64_t a2, uint64_t (***a3)(void, void), uint64_t a4, float a5, float a6)
{
  v27 = *MEMORY[0x1E69E9840];
  *(*(a2 + 16) + 30) = 0;
  v6 = *(a1 + 8);
  if (!v6)
  {
    return 0;
  }

  bzero(v26, 0x3C0uLL);
  for (i = 0; i != 960; i += 80)
  {
    v14 = &v26[i];
    *(v14 + 11) = -8388609;
    *(v14 + 15) = 2139095039;
  }

  __asm { FMOV            V0.4S, #1.0 }

  *a2 = _Q0;
  v24 = 0;
  v25 = 0;
  v20 = v6(v26, &v24, 12, a2, *(a1 + 16), a2 + 56, a2 + 84, *(a2 + 163), v23, v22);
  *(a2 + 128) = v26;
  *(a2 + 136) = v20;
  *(a2 + 164) = v24;
  *(a2 + 172) = v25;
  return physx::Dy::ConstraintHelper::setupSolverConstraint(a2, a3, a4, a5, a6);
}

void physx::Dy::FeatherstoneArticulation::setupInternalConstraintsRecursive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, float32x4_t _Q0, float32x4_t _Q1, float32x4_t _Q2, float32x4_t a12, float32x4_t a13, float32x4_t _Q5, float32x4_t a15, float32x4_t _Q7)
{
  v16 = a7;
  v19 = a4;
  v20 = a3;
  v21 = _Q5.f32[0];
  v22 = a13.f32[0];
  v23 = a12.f32[0];
  v24 = _Q2.f32[0];
  v25 = _Q1.f32[0];
  v26 = _Q0.f32[0];
  v28 = a1;
  v29 = 0;
  v30 = 0;
  v256 = *MEMORY[0x1E69E9840];
  v31 = a2 + 40 * a8;
  v32 = *(a5 + 456) + 80 * a8;
  v238 = v31;
  v33 = *(v31 + 24);
  v34 = v33[62];
  do
  {
    if (v33[v29 + 28] > 0.0 && (v33[v29 + 26] > 0.0 || v33[v29 + 27] > 0.0))
    {
      ++v30;
    }

    v29 += 4;
  }

  while (v29 != 24);
  v35 = 0;
  v36 = *(v32 + 76);
  if (v34 <= 0.0)
  {
    v36 = 0;
  }

  v239 = v36;
  if ((v30 + 2 * *(v32 + 77) + v36) != -*(v32 + 79))
  {
    v202 = *(a5 + 456) + 80 * a8;
    v221 = _Q2.u32[0];
    v198 = a3;
    v199 = a4;
    v37 = 0;
    v38 = 0;
    v241 = 0;
    v205 = *(a5 + 80) + 4 * *(v32 + 72);
    v39 = (*(a5 + 208) + 32 * a8);
    v40 = (v34 * v26) * (sqrtf(((v39[1] * v39[1]) + (*v39 * *v39)) + (v39[2] * v39[2])) + sqrtf(((v39[5] * v39[5]) + (v39[4] * v39[4])) + (v39[6] * v39[6])));
    v41 = a2 + 40 * *(v31 + 32);
    v42 = *(v41 + 16);
    v220 = v41 + 16;
    v43 = v33[4] + v33[4];
    v44 = v33[5] + v33[5];
    v45 = v33[7];
    v46 = v42[1];
    v47 = v42[2];
    v48 = v42[3];
    v225 = v33[6] + v33[6];
    v210 = v48 * ((v47 * v43) - (*v42 * v225));
    v212 = v48 * ((v46 * v225) - (v47 * v44));
    v229 = v43;
    v227 = v44;
    v208 = v48 * ((*v42 * v44) - (v46 * v43));
    v50 = v33[2];
    v49 = v33[3];
    v51 = v33[1];
    v52 = (((*v42 * v49) + (v48 * *v33)) + (v46 * v50)) - (v51 * v47);
    v53 = ((v46 * v49) + (v48 * v51)) + (v47 * *v33);
    v54 = -v50;
    v55 = v53 - (v50 * *v42);
    v56 = ((v47 * v49) + (v48 * v50)) + (*v42 * v51);
    v214 = v48;
    v216 = v47;
    v57 = (((v48 * v49) - (*v42 * *v33)) - (v46 * v51)) - (v47 * v50);
    v58 = *(v31 + 16);
    v59 = v33[10];
    v60 = v58[1];
    v61 = v58[2];
    v62 = v58[3];
    v64 = v33[8];
    v63 = v33[9];
    v65 = (((*v58 * v59) + (v62 * v45)) + (v60 * v63)) - (v64 * v61);
    v66 = ((v60 * v59) + (v62 * v64)) + (v61 * v45);
    v67 = (((v61 * v59) + (v62 * v63)) + (*v58 * v64)) - (v45 * v60);
    v68 = ((v62 * v59) - (*v58 * v45)) - (v60 * v64);
    v69 = v33[12] + v33[12];
    _Q7.f32[0] = v33[13] + v33[13];
    a13.f32[0] = v66 - (v63 * *v58);
    v70 = v68 - (v61 * v63);
    a15.f32[0] = v62 * ((v60 * _Q7.f32[0]) - (v61 * v69));
    v222 = *v42;
    v173 = -(v53 + (v54 * *v42));
    v192 = _Q7.f32[0];
    v194 = v61;
    v195 = v33[11] + v33[11];
    _Q5.f32[0] = v62 * ((v61 * v195) - (*v58 * _Q7.f32[0]));
    v218 = v46;
    v190 = -(v56 + (-*v33 * v46));
    v191 = a15.f32[0];
    v196 = v60;
    v207 = *v58;
    v193 = v62;
    v188 = v62 * ((*v58 * v69) - (v60 * v195));
    v189 = _Q5.f32[0];
    v71 = v34 <= 0.0;
    v201 = v65;
    v179 = v55;
    v180 = v56 - (*v33 * v46);
    v187 = (v57 * a13.f32[0]) - (v55 * v70);
    v174 = v70;
    v175 = a13.f32[0];
    v176 = v57;
    v177 = v67;
    v178 = v52;
    v171 = ((v57 * v67) - (v180 * v70)) - (v52 * a13.f32[0]);
    v172 = (v57 * v65) - (v52 * v70);
    v72 = v33 + 258;
    v73 = v33 + 14;
    v74 = 0.0;
    if (v71)
    {
      v40 = 0.0;
    }

    v200 = a7;
    if (!a7)
    {
      v74 = 1.0;
    }

    v223 = v74;
    v224 = v40;
    v206 = *(a5 + 464) + 96 * a8;
    v204 = v206 + 12;
    v75 = v33 + 29;
    v182 = v42[5];
    v183 = v42[4];
    v181 = v42[6];
    v185 = v58[5];
    v186 = v58[4];
    v184 = v58[6];
    while (!v72[v37])
    {
LABEL_47:
      ++v37;
      v73 += 2;
      v75 += 4;
      if (v37 == 3)
      {
        v203 = v21;
        v99 = (v214 * v214) + -0.5;
        v100 = (v193 * v193) + -0.5;
        v101 = ((v227 * v218) + (v222 * v229)) + (v216 * v225);
        v102 = (v210 + (v227 * v99)) + (v218 * v101);
        v219 = v183 + ((v212 + (v229 * v99)) + (v222 * v101));
        v215 = v181 + ((v208 + (v225 * v99)) + (v216 * v101));
        v217 = v182 + v102;
        v103 = ((v69 * v196) + (v207 * v195)) + (v194 * v192);
        v211 = v185 + ((v189 + (v69 * v100)) + (v196 * v103));
        v213 = v186 + ((v191 + (v195 * v100)) + (v207 * v103));
        v209 = v184 + ((v188 + (v192 * v100)) + (v194 * v103));
        v104 = v33 + 20;
        v105 = v33 + 261;
        v106 = v33 + 38;
        v107 = 3;
        v108 = 1.0;
        *_Q0.i64 = -2.84809454e-306;
        v24 = *&v221;
        while (!*v105)
        {
LABEL_89:
          v104 += 2;
          ++v105;
          v106 += 4;
          if (!--v107)
          {
            v32 = v202;
            v21 = v203;
            if (*(v202 + 79))
            {
              v144 = (v178 * v174) + (v176 * v201);
              v145 = (v179 * v174) + (v176 * v175);
              v146 = (v180 * v174) + (v176 * v177);
              v147 = ((v179 * v175) + (v178 * v201)) + (v180 * v177);
              v148 = (v176 * v174) - v147;
              v149 = (v179 * v201) + (v178 * v175);
              v150 = (v180 * v201) + (v178 * v177);
              v151 = (((v178 * v201) + (v178 * v201)) + v148) * 0.5;
              *v251 = v151;
              *&v251[4] = (v146 + v149) * 0.5;
              v152 = (v179 * v177) + (v180 * v175);
              v153 = (v149 - v146) * 0.5;
              a13.f32[0] = (((v179 * v175) + (v179 * v175)) + v148) * 0.5;
              *&v251[8] = (v150 - v145) * 0.5;
              v252 = v153;
              *v253 = a13.f32[0];
              *&v253[4] = (v144 + v152) * 0.5;
              v154 = ((v180 * v177) + (v180 * v177)) + v148;
              v155 = (v150 + v145) * 0.5;
              _Q7.f32[0] = (v152 - v144) * 0.5;
              _Q5.f32[0] = v154 * 0.5;
              *&v253[8] = v155;
              v254 = _Q7.i32[0];
              v255 = v154 * 0.5;
              a15.f32[0] = (v176 * v174) + v147;
              if (a15.f32[0] == 0.0)
              {
                a15.i64[0] = 0x3400000034000000;
                a13.f32[0] = a13.f32[0] + 0.00000011921;
                *v251 = v151 + 0.00000011921;
                *v253 = a13.i32[0];
                v255 = _Q5.f32[0] + 0.00000011921;
              }

              v156 = 0;
              v250[0] = -((v172 + (v173 * v177)) + (v175 * v180));
              v250[1] = -((v187 + (v190 * v201)) + (v177 * v178));
              v250[2] = -(v171 + (v201 * v179));
              v157 = v24 * v23;
              v158 = &v251[8];
              do
              {
                if (!v72[v156])
                {
                  _Q1.i64[0] = *(v158 - 1);
                  v240 = *_Q1.f32;
                  a12.i32[0] = *v158;
                  v236 = a12.f32[0];
                  v159 = v250[v156];
                  v160 = *(v238 + 32);
                  v161.i64[0] = _Q1.i64[0];
                  v161.i64[1] = *v158;
                  *&v162 = vnegq_f32(_Q1).u64[0];
                  v243 = 0u;
                  v244 = v161;
                  v161.f32[0] = -a12.f32[0];
                  *(&v162 + 2) = -a12.f32[0];
                  HIDWORD(v162) = 0;
                  v242[0] = 0u;
                  v242[1] = v162;
                  physx::Dy::FeatherstoneArticulation::getImpulseSelfResponse(a2, a6, a5, v160, &v243, v247, a8, v242, v161, *&v162, 0, a12, a13, _Q5, a15, _Q7, &v245);
                  v163 = v248;
                  _Q5.i32[0] = v249;
                  v164 = v246.i64[0];
                  a15.i32[0] = v246.i32[2];
                  _Q7.f32[0] = ((vmuls_lane_f32(*(&v248 + 1), v240, 1) + (*&v248 * v240.f32[0])) + (*&v249 * v236)) - ((vmuls_lane_f32(v246.f32[1], v240, 1) + (v246.f32[0] * v240.f32[0])) + (v246.f32[2] * v236));
                  a13.i64[0] = 0;
                  if (_Q7.f32[0] > 0.00001)
                  {
                    a13.f32[0] = 1.0 / (_Q7.f32[0] + v22);
                  }

                  v165 = *(a5 + 248);
                  *(a5 + 248) = v165 + 1;
                  v166 = *(a5 + 240) + 80 * v165;
                  *(v166 + 48) = v240;
                  *v166 = v163;
                  *(v166 + 8) = _Q5.i32[0];
                  *(v166 + 12) = *v247;
                  *(v166 + 20) = *&v247[8];
                  *(v166 + 24) = v164;
                  *(v166 + 32) = a15.i32[0];
                  *(v166 + 36) = v245.i64[0];
                  *(v166 + 44) = v245.i32[2];
                  *(v166 + 56) = v236;
                  *(v166 + 60) = a13.i32[0];
                  *(v166 + 64) = v159;
                  *(v166 + 68) = v157;
                }

                ++v156;
                v158 += 3;
              }

              while (v156 != 3);
              v19 = v199;
              v16 = v200;
              v20 = v198;
              v24 = *&v221;
              v28 = a1;
              v32 = v202;
            }

            else
            {
              v19 = v199;
              v16 = v200;
              v20 = v198;
              v28 = a1;
            }

            v35 = v241;
            goto LABEL_107;
          }
        }

        if (v106[2] <= 0.0)
        {
          v109 = 0;
        }

        else
        {
          if (*v106 > 0.0)
          {
            v109 = 1;
            goto LABEL_66;
          }

          v109 = v106[1] > 0.0;
        }

        if (*v105 != 1 && v239 == 0 && !v109)
        {
          goto LABEL_88;
        }

LABEL_66:
        v112 = *(a5 + 352) + 76 * a8 + 24 * v38;
        _Q7.i64[0] = *(v112 + 12);
        v113 = *(v112 + 20);
        _Q0.f32[0] = v219 - *(*v220 + 16);
        _Q2.f32[0] = v215 - *(*v220 + 24);
        v232 = (_Q2.f32[0] * _Q7.f32[0]) - (_Q0.f32[0] * v113);
        v234 = vmuls_lane_f32(-_Q2.f32[0], *_Q7.f32, 1) + ((v217 - *(*v220 + 20)) * v113);
        __asm { FMLA            S1, S0, V7.S[1] }

        v114 = _Q1.i32[0];
        v230 = _Q1.f32[0];
        v115 = *(v238 + 16);
        _Q0.f32[0] = v213 - v115[4];
        _Q1.f32[0] = v211 - v115[5];
        _Q2.f32[0] = v209 - v115[6];
        v116 = vmuls_lane_f32(-_Q2.f32[0], *_Q7.f32, 1);
        v117 = v113;
        v118 = v116 + (_Q1.f32[0] * v113);
        v119 = -(_Q0.f32[0] * v113);
        v120 = v117;
        v121 = v119 + (_Q2.f32[0] * _Q7.f32[0]);
        a13.f32[0] = -((-_Q1.f32[0] * _Q7.f32[0]) + (_Q0.f32[0] * _Q7.f32[1]));
        v122.i64[0] = _Q7.i64[0];
        v226 = _Q7;
        v228 = v120;
        v122.i64[1] = LODWORD(v120);
        v123 = *(v238 + 32);
        v124.i64[0] = __PAIR64__(LODWORD(v232), LODWORD(v234));
        v124.i64[1] = v114;
        _Q1.f32[0] = -(v116 + (_Q1.f32[0] * v120));
        _Q2.f32[0] = -(v119 + (_Q2.f32[0] * v226.f32[0]));
        v125.i64[0] = vnegq_f32(v226).u64[0];
        v125.f32[2] = -v120;
        v125.i32[3] = 0;
        v126.i64[0] = __PAIR64__(_Q2.u32[0], _Q1.u32[0]);
        v245 = v122;
        v246 = v124;
        v126.i64[1] = a13.u32[0];
        __asm { FMLA            S14, S0, V20.S[1] }

        v243 = v125;
        v244 = v126;
        physx::Dy::FeatherstoneArticulation::getImpulseSelfResponse(a2, a6, a5, v123, &v245, v251, a8, &v243, _Q0, *_Q1.i64, _Q2, v126, a13, v125, v122, v124, v247);
        _S19 = v228;
        a13.i32[0] = *v251;
        *&_Q2 = *&v251[4];
        __asm { FMLA            S0, S19, V2.S[1] }

        a12.i64[0] = *v253;
        v130 = *&v253[8];
        a15.i32[0] = *v247;
        _Q5.i64[0] = *&v247[4];
        __asm { FMLA            S1, S19, V5.S[1] }

        v131 = v248;
        _Q7.i32[0] = v249;
        _Q0.f32[0] = (_Q0.f32[0] + ((vmuls_lane_f32(v232, *v253, 1) + (*v253 * v234)) + (*&v253[8] * v230))) - (_Q1.f32[0] + ((vmuls_lane_f32(v121, v248, 1) + (*&v248 * v118)) + (*&v249 * _S14)));
        _Q1.i64[0] = 0;
        if (_Q0.f32[0] > 0.00001)
        {
          _Q1.f32[0] = v108 / (_Q0.f32[0] + v22);
        }

        v132 = *(a5 + 232);
        *(a5 + 232) = v132 + 1;
        v133 = *(a5 + 224) + 176 * v132;
        *(v133 + 96) = _Q1.i32[0];
        *(v133 + 100) = _Q0.i32[0];
        *v133 = v226.i64[0];
        *(v133 + 8) = v228;
        *(v133 + 12) = v234;
        *(v133 + 16) = v232;
        *(v133 + 20) = v230;
        *(v133 + 24) = v226.i64[0];
        a12.i64[1] = __PAIR64__(a13.u32[0], v130);
        *(v133 + 32) = v228;
        *(v133 + 36) = v118;
        _Q2.i64[1] = v131;
        *(v133 + 40) = v121;
        *(v133 + 44) = _S14;
        _Q7.i32[1] = a15.i32[0];
        _Q7.i64[1] = _Q5.i64[0];
        *(v133 + 48) = a12;
        *(v133 + 64) = _Q2;
        *(v133 + 80) = _Q7;
        *(v133 + 120) = v23;
        *(v133 + 168) = 1;
        *(v133 + 112) = 0;
        *(v133 + 160) = 0;
        *(v133 + 156) = v224;
        *(v133 + 164) = v223;
        *_Q2.i64 = -2.84809454e-306;
        if (*v105 == 1)
        {
          _Q2.i64[0] = *v104;
        }

        *(v133 + 104) = _Q2.i64[0];
        v24 = *&v221;
        if (!v109)
        {
          _Q0.i32[1] = 0;
          _Q0.i64[1] = 0;
          *(v133 + 140) = 0u;
          *(v133 + 124) = 0u;
          goto LABEL_87;
        }

        v134 = *(v204 + 4 * v38);
        if (*v105 == 1)
        {
          v135 = *v104;
          if (*v104 <= v134)
          {
            v135 = *(v204 + 4 * v38);
          }

          if (v104[1] >= v135)
          {
            v134 = v135;
          }

          else
          {
            v134 = v104[1];
          }
        }

        v136 = -*(v206 + 4 * v38);
        v137 = *(v205 + 4 * v38);
        v138 = *(v106 + 3);
        if (v138 == 2)
        {
          v139 = 0.0;
          _Q1.i32[0] = 1761892689;
LABEL_82:
          v140 = (v139 + (v25 * _Q1.f32[0])) * v25;
          v141 = (((v134 - v137) * _Q1.f32[0]) + (v139 * v136)) * v25;
          v142 = (v139 + (v26 * _Q1.f32[0])) * v26;
        }

        else
        {
          if (v138 == 3)
          {
            _Q1.i64[0] = 0;
            v139 = 1.0e25;
            goto LABEL_82;
          }

          v143 = v106[1];
          v140 = (v143 + (v25 * *v106)) * v25;
          v141 = (((v134 - v137) * *v106) + (v143 * v136)) * v25;
          v142 = (v143 + (v26 * *v106)) * v26;
          if (v138 == 1)
          {
            a15.f32[0] = 1.0 / (v140 + 1.0);
            _Q7.f32[0] = 1.0 / (v142 + 1.0);
            *(v133 + 124) = _Q1.f32[0] * (v141 * a15.f32[0]);
            *(v133 + 136) = _Q1.f32[0] * -(a15.f32[0] * v140);
            _Q1.f32[0] = _Q1.f32[0] * (v142 * _Q7.f32[0]);
            goto LABEL_86;
          }

          _Q7.i64[0] = 0;
          a15.i64[0] = 0;
          _Q1.i64[0] = 0;
          if (v138)
          {
LABEL_86:
            v108 = 1.0;
            *(v133 + 128) = 0;
            *(v133 + 132) = v137;
            *(v133 + 144) = 1.0 - a15.f32[0];
            *(v133 + 148) = v106[2] * v203;
            *(v133 + 152) = 0;
            *(v133 + 140) = ((1.0 - _Q7.f32[0]) * (_Q0.f32[0] * _Q1.f32[0])) * v23;
LABEL_87:
            v241 |= 1 << v38;
LABEL_88:
            ++v38;
            goto LABEL_89;
          }
        }

        a15.i64[0] = 0;
        _Q7.i64[0] = 0;
        if (_Q0.f32[0] > 0.0)
        {
          a15.f32[0] = 1.0 / ((v140 * _Q0.f32[0]) + 1.0);
          _Q7.f32[0] = 1.0 / ((v142 * _Q0.f32[0]) + 1.0);
        }

        *(v133 + 124) = v141 * a15.f32[0];
        *(v133 + 136) = -(a15.f32[0] * v140);
        _Q1.f32[0] = v142 * _Q7.f32[0];
        goto LABEL_86;
      }
    }

    v76 = *v75;
    if (v72[v37] != 1 && v239 == 0 && LODWORD(v76) == 4)
    {
LABEL_46:
      ++v38;
      goto LABEL_47;
    }

    v79 = *(a5 + 352) + 76 * a8 + 24 * v38;
    _Q1.i64[0] = *v79;
    a12.i32[0] = *(v79 + 8);
    v231 = a12.f32[0];
    v233 = *v79;
    v80 = *(v238 + 32);
    v81.i64[0] = *v79;
    v81.i64[1] = a12.u32[0];
    v82.i64[0] = vnegq_f32(_Q1).u64[0];
    v245 = 0u;
    v246 = v81;
    v81.f32[0] = -a12.f32[0];
    v82.f32[2] = -a12.f32[0];
    v82.i32[3] = 0;
    v243 = 0u;
    v244 = v82;
    physx::Dy::FeatherstoneArticulation::getImpulseSelfResponse(a2, a6, a5, v80, &v245, v251, a8, &v243, v81, *v82.i64, 0, a12, a13, _Q5, a15, _Q7, v247);
    *&_Q16 = v231;
    _Q5.i32[0] = *v253;
    _Q2.i64[0] = *&v253[4];
    __asm { FMLA            S0, S16, V2.S[1] }

    a13.i32[0] = HIDWORD(v248);
    a12.i32[0] = v248;
    a15.i32[0] = v249;
    _Q0.f32[0] = _Q0.f32[0] - ((vmuls_lane_f32(*(&v248 + 1), v233, 1) + (*&v248 * v233.f32[0])) + (*&v249 * v231));
    _Q1.i64[0] = 0;
    _Q7.i32[0] = 925353388;
    if (_Q0.f32[0] > 0.00001)
    {
      _Q1.f32[0] = 1.0 / (_Q0.f32[0] + v22);
    }

    v87 = *(a5 + 232);
    *(a5 + 232) = v87 + 1;
    v88 = *(a5 + 224) + 176 * v87;
    *(v88 + 100) = _Q0.i32[0];
    *v88 = 0;
    *(v88 + 8) = 0;
    *(v88 + 12) = v233;
    *(v88 + 20) = v231;
    *(v88 + 24) = 0;
    *(v88 + 32) = 0;
    *(v88 + 36) = v233;
    DWORD1(_Q16) = _Q5.i32[0];
    *(&_Q16 + 1) = _Q2.i64[0];
    *(v88 + 44) = _Q16;
    *(v88 + 60) = *v251;
    *(v88 + 68) = *&v251[8];
    *(v88 + 72) = a12.i32[0];
    *(v88 + 76) = a13.i32[0];
    *(v88 + 80) = a15.i32[0];
    *(v88 + 84) = *v247;
    *(v88 + 92) = *&v247[8];
    *(v88 + 96) = _Q1.i32[0];
    *(v88 + 120) = v23;
    *(v88 + 168) = 0;
    *_Q2.i64 = -2.84809454e-306;
    if (v72[v37] == 1)
    {
      _Q2.i64[0] = *v73;
    }

    *(v88 + 104) = _Q2.i64[0];
    *(v88 + 112) = 0;
    *(v88 + 160) = 0;
    *(v88 + 156) = v224;
    *(v88 + 164) = v223;
    if (LODWORD(v76) == 4)
    {
      _Q0.i64[1] = 0;
      *(v88 + 140) = 0u;
      *(v88 + 124) = 0u;
LABEL_45:
      v241 |= 1 << v38;
      goto LABEL_46;
    }

    v89 = *(v204 + 4 * v38);
    if (v72[v37] == 1)
    {
      v90 = *v73;
      if (*v73 <= v89)
      {
        v90 = *(v204 + 4 * v38);
      }

      if (v73[1] >= v90)
      {
        v89 = v90;
      }

      else
      {
        v89 = v73[1];
      }
    }

    v91 = *(v206 + 4 * v38);
    v92 = *(v205 + 4 * v38);
    v93 = *v75;
    if (*v75 == 2)
    {
      _Q1.i64[0] = 0;
      v94 = 1.0e25;
    }

    else
    {
      if (v93 != 3)
      {
        v97 = *(v75 - 3);
        v98 = *(v75 - 2);
        v95 = (v98 + (v25 * v97)) * v25;
        _Q5.f32[0] = (((v89 - v92) * v97) + (v98 * v91)) * v25;
        v96 = (v98 + (v26 * v97)) * v26;
        if (v93 == 1)
        {
          a15.f32[0] = 1.0 / (v95 + 1.0);
          _Q7.f32[0] = 1.0 / (v96 + 1.0);
          _Q5.f32[0] = _Q1.f32[0] * (_Q5.f32[0] * a15.f32[0]);
          *(v88 + 124) = _Q5.i32[0];
          *(v88 + 136) = _Q1.f32[0] * -(a15.f32[0] * v95);
          _Q1.f32[0] = _Q1.f32[0] * (v96 * _Q7.f32[0]);
        }

        else
        {
          _Q1.i64[0] = 0;
          _Q7.i64[0] = 0;
          a15.i64[0] = 0;
          if (!v93)
          {
            goto LABEL_41;
          }
        }

LABEL_44:
        a13.f32[0] = 1.0 - _Q7.f32[0];
        *(v88 + 128) = 0;
        *(v88 + 132) = v92;
        *(v88 + 144) = 1.0 - a15.f32[0];
        *(v88 + 148) = *(v75 - 1) * v21;
        *(v88 + 152) = 0;
        *(v88 + 140) = ((_Q0.f32[0] * _Q1.f32[0]) * (1.0 - _Q7.f32[0])) * v23;
        goto LABEL_45;
      }

      v94 = 0.0;
      _Q1.i32[0] = 1761892689;
    }

    v95 = (_Q1.f32[0] + (v25 * v94)) * v25;
    _Q5.f32[0] = (((v89 - v92) * v94) + (_Q1.f32[0] * v91)) * v25;
    v96 = (_Q1.f32[0] + (v26 * v94)) * v26;
LABEL_41:
    a15.i64[0] = 0;
    _Q7.i64[0] = 0;
    if (_Q0.f32[0] > 0.0)
    {
      a15.f32[0] = 1.0 / ((v95 * _Q0.f32[0]) + 1.0);
      _Q7.f32[0] = 1.0 / ((v96 * _Q0.f32[0]) + 1.0);
    }

    *(v88 + 124) = _Q5.f32[0] * a15.f32[0];
    *(v88 + 136) = -(a15.f32[0] * v95);
    _Q1.f32[0] = v96 * _Q7.f32[0];
    goto LABEL_44;
  }

LABEL_107:
  *(v32 + 78) = v35;
  for (i = *v238; i; i &= i - 1)
  {
    v168 = __clz(__rbit32(i));
    v169 = __clz(__rbit32(HIDWORD(i))) + 32;
    if (i)
    {
      v170 = v168;
    }

    else
    {
      v170 = v169;
    }

    physx::Dy::FeatherstoneArticulation::setupInternalConstraintsRecursive(v28, a2, v20, v19, a5, a6, v16, v170, v26, v25, v24, v23, v22, v21);
  }
}

void physx::Dy::FeatherstoneArticulation::setupInternalConstraints(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float32x4_t a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12, float32x4_t a13, float32x4_t a14, float32x4_t a15)
{
  v20 = a11.i32[0];
  v21 = a10.i32[0];
  v22 = a9.f32[0];
  v23 = a8.i32[0];
  *(a5 + 232) = 0;
  v26 = *(a5 + 476);
  if ((*(a5 + 236) & 0x7FFFFFFFu) < v26)
  {
    physx::shdfnd::Array<physx::Dy::ArticulationInternalConstraint,physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationInternalConstraint>>::recreate(a5 + 224, v26);
  }

  *(a5 + 248) = 0;
  v27 = *(a5 + 480);
  if ((*(a5 + 252) & 0x7FFFFFFFu) < v27)
  {
    physx::shdfnd::Array<physx::Dy::ArticulationInternalLockedAxis,physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationInternalLockedAxis>>::recreate(a5 + 240, v27);
  }

  if ((**(a5 + 488) & 2) != 0)
  {
    v28 = v22;
  }

  else
  {
    v28 = 1.0;
  }

  for (i = *a2; i; i &= i - 1)
  {
    v30 = __clz(__rbit32(i));
    v31 = __clz(__rbit32(HIDWORD(i))) + 32;
    if (i)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    a8.i32[0] = v23;
    a9.f32[0] = v22;
    a10.i32[0] = v21;
    a11.i32[0] = v20;
    a12.i32[0] = 953267991;
    a13.f32[0] = v28;
    physx::Dy::FeatherstoneArticulation::setupInternalConstraintsRecursive(a1, a2, a3, a4, a5, a6, a7, v32, a8, a9, a10, a11, a12, a13, a14, a15);
  }
}

void physx::Dy::FeatherstoneArticulation::teleportLinks(physx::Dy::FeatherstoneArticulation *this, physx::Dy::ArticulationData *a2)
{
  physx::Dy::FeatherstoneArticulation::jcalc(this, a2, 1);
  v11 = *(this + 154);
  if (v11 >= 2)
  {
    v12 = *(this + 76);
    v13 = *(this + 79);
    v14 = *(a2 + 10);
    v15 = *(this + 74);
    v16 = *(a2 + 42);
    v17 = (v16 + 84);
    v135 = v14 - 4;
    v136 = v15;
    v18 = 1;
    v19 = -0.5;
    v145 = v16;
    v138 = v13;
    v139 = v11;
    v137 = v14;
    while (1)
    {
      v20 = v12 + 40 * v18;
      v21 = *(v12 + 40 * *(v20 + 32) + 16);
      v23 = *v21;
      v22 = v21[1];
      v24 = v13 + 80 * v18;
      v25 = v21[2];
      v26 = v21[3];
      v28 = v21[4];
      v27 = v21[5];
      v29 = v21[6];
      v30 = *(v20 + 24);
      v31 = *(v24 + 72);
      v32 = (v14 + 4 * v31);
      v34 = *(v30 + 44);
      v33 = *(v30 + 48);
      v35 = *(v30 + 52);
      v37 = *(v30 + 16);
      v36 = *(v30 + 20);
      v38 = *(v30 + 24);
      v39 = (v15 + 16 * v18);
      _S13 = *v39;
      _S8 = v39[1];
      _S14 = v39[2];
      v42 = v39[3];
      v44 = *(v30 + 270);
      if (v44 <= 1)
      {
        break;
      }

      if (v44 == 2)
      {
        v84 = *(v24 + 76);
        v143 = v27;
        v144 = v28;
        v141 = v22;
        v142 = v29;
        v161 = v25;
        v163 = v23;
        v157 = v35;
        v159 = v26;
        v153 = v34;
        v155 = v33;
        v140 = v39[3];
        v149 = v36;
        v151 = v38;
        v147 = v37;
        if (v84 >= 3)
        {
          v102 = 0;
          v103 = 0.0;
          v104 = v17;
          do
          {
            v105 = *v32++;
            v102 = vsub_f32(v102, vmul_n_f32(*(v104 - 2), v105));
            v103 = v103 - (v105 * *v104);
            v104 += 6;
            --v84;
          }

          while (v84);
          v106 = (COERCE_FLOAT(vmul_f32(v102, v102).i32[1]) + (v102.f32[0] * v102.f32[0])) + (v103 * v103);
          if (v106 >= 1.0e-24)
          {
            v110 = sqrtf(v106);
            v111 = vmul_n_f32(v102, 1.0 / v110);
            v112 = v103 * (1.0 / v110);
            v113 = __sincosf_stret(v110 * 0.5);
            cosval = v113.__cosval;
            v107 = vmul_n_f32(v111, v113.__sinval);
            v109 = v113.__sinval * v112;
          }

          else
          {
            v107 = 0;
            cosval = 1.0;
            v109 = 0.0;
          }

          v114 = sqrtf(((vmuls_lane_f32(v107.f32[1], v107, 1) + (v107.f32[0] * v107.f32[0])) + (v109 * v109)) + (cosval * cosval));
          v99 = v107.f32[0] / v114;
          v100 = v107.f32[1] / v114;
          v101 = v109 / v114;
          v89 = cosval / v114;
        }

        else
        {
          if (v84)
          {
            v85 = 0;
            v86 = 24 * v84;
            v87 = (v135 + 4 * v31 + 4 * v84);
            v88 = 0.0;
            v89 = 1.0;
            v90 = v16;
            v91 = 0.0;
            v92 = 0.0;
            v93 = -0.5;
            do
            {
              v94 = *v87--;
              v95 = __sincosf_stret(v94 * -0.5);
              v96 = *(v90 + v86 + 52) * v95.__sinval;
              v97 = v95.__sinval * *(v90 + v86 + 56);
              v98 = v95.__sinval * *(v90 + v86 + 60);
              v99 = (((v92 * v95.__cosval) + (v89 * v96)) + (v91 * v98)) - (v97 * v88);
              v100 = (((v91 * v95.__cosval) + (v89 * v97)) + (v88 * v96)) - (v98 * v92);
              v101 = (((v88 * v95.__cosval) + (v89 * v98)) + (v92 * v97)) - (v96 * v91);
              v85 += 24;
              v90 -= 24;
              v89 = (((v89 * v95.__cosval) - (v92 * v96)) - (v91 * v97)) - (v88 * v98);
              v88 = v101;
              v91 = v100;
              v92 = v99;
            }

            while (v86 != v85);
            goto LABEL_28;
          }

          v89 = 1.0;
          v99 = 0.0;
          v100 = 0.0;
          v101 = 0.0;
        }

        v93 = -0.5;
LABEL_28:
        v115 = (((v140 * v99) + (v89 * _S13)) + (v100 * _S14)) - (_S8 * v101);
        v116 = (((v140 * v100) + (v89 * _S8)) + (v101 * _S13)) - (_S14 * v99);
        v117 = (((v140 * v101) + (v89 * _S14)) + (v99 * _S8)) - (_S13 * v100);
        v118 = (((v89 * v140) - (v99 * _S13)) - (v100 * _S8)) - (v101 * _S14);
        v119 = sqrtf((((v116 * v116) + (v115 * v115)) + (v117 * v117)) + (v118 * v118));
        v4 = v115 / v119;
        v5 = v116 / v119;
        v6 = v117 / v119;
        v7 = v118 / v119;
        v120 = v93 + (v7 * v7);
        v121 = (((v149 + v149) * (v116 / v119)) + (v4 * (v147 + v147))) + ((v117 / v119) * (v151 + v151));
        v64 = -(v117 / v119);
        v65 = -v4;
        v66 = -(v116 / v119);
        v122 = ((v7 * ((v4 * (v149 + v149)) - ((v116 / v119) * (v147 + v147)))) + ((v151 + v151) * v120)) + ((v117 / v119) * v121);
        v8 = (((v7 * ((v5 * (v151 + v151)) - (v6 * (v149 + v149)))) + ((v147 + v147) * v120)) + (v4 * v121)) - v153;
        v9 = (((v7 * ((v6 * (v147 + v147)) - (v4 * (v151 + v151)))) + ((v149 + v149) * v120)) + (v5 * v121)) - v155;
        v26 = v159;
        v10 = v122 - v157;
        v13 = v138;
        v11 = v139;
        v15 = v136;
        v14 = v137;
        v19 = -0.5;
        v27 = v143;
        v28 = v144;
        v22 = v141;
        v29 = v142;
        v25 = v161;
        v23 = v163;
        goto LABEL_29;
      }

      if (v44 == 3)
      {
        v67 = v37 + v37;
        v68 = v36 + v36;
        v69 = v38 + v38;
        v70 = v19 + (v42 * v42);
        v71 = (((v36 + v36) * _S8) + (_S13 * (v37 + v37))) + (_S14 * (v38 + v38));
        v64 = -_S14;
        v72 = ((v42 * ((_S8 * v69) - (_S14 * (v36 + v36)))) + ((v37 + v37) * v70)) + (_S13 * v71);
        v65 = -_S13;
        v73 = ((((_S14 * (v37 + v37)) - (_S13 * v69)) * v42) + (v68 * v70)) + (_S8 * v71);
        v66 = -_S8;
        v74 = ((((_S13 * v68) - (_S8 * v67)) * v42) + (v69 * v70)) + (_S14 * v71);
        v8 = v72 - v34;
        v9 = v73 - v33;
        v10 = v74 - v35;
LABEL_14:
        v4 = *v39;
        v5 = v39[1];
        v6 = v39[2];
        v7 = v39[3];
        goto LABEL_29;
      }

      v65 = -v4;
      v66 = -v5;
      v64 = -v6;
LABEL_29:
      v123 = *(v20 + 16);
      v124 = (((v23 * v7) + (v26 * v65)) + (v22 * v64)) + (v5 * v25);
      v125 = (((v22 * v7) + (v26 * v66)) + (v25 * v65)) + (v6 * v23);
      v126 = (((v25 * v7) + (v26 * v64)) + (v23 * v66)) + (v4 * v22);
      v127 = (((v23 * v4) + (v26 * v7)) + (v22 * v5)) + (v25 * v6);
      v128 = sqrtf((((v125 * v125) + (v124 * v124)) + (v126 * v126)) + (v127 * v127));
      v129 = v124 / v128;
      v130 = v125 / v128;
      v131 = v126 / v128;
      v132 = v127 / v128;
      *v123 = v129;
      v123[1] = v130;
      v123[2] = v131;
      v123[3] = v132;
      v133 = v19 + (v132 * v132);
      v134 = (((v9 + v9) * v130) + (v129 * (v8 + v8))) + (v131 * (v10 + v10));
      v123[4] = v28 + (((v132 * ((v130 * (v10 + v10)) - (v131 * (v9 + v9)))) + ((v8 + v8) * v133)) + (v129 * v134));
      v123[5] = v27 + (((v132 * ((v131 * (v8 + v8)) - (v129 * (v10 + v10)))) + ((v9 + v9) * v133)) + (v130 * v134));
      v123[6] = v29 + (((v132 * ((v129 * (v9 + v9)) - (v130 * (v8 + v8)))) + ((v10 + v10) * v133)) + (v131 * v134));
      ++v18;
      v17 += 19;
      v16 += 76;
      if (v18 == v11)
      {
        return;
      }
    }

    if (v44)
    {
      v45 = (v145 + 76 * v18);
      v160 = v25;
      v162 = v23;
      v156 = v35;
      v158 = v26;
      v152 = v34;
      v154 = v33;
      v148 = v36;
      v150 = v38;
      v146 = v37;
      v47 = __sincosf_stret(*v32 * v19);
      v46.f32[0] = v47.__cosval;
      v19 = -0.5;
      v26 = v158;
      v48 = vmul_n_f32(*v45, v47.__sinval);
      _D2 = vbsl_s8(vdup_lane_s32(vcgt_f32(0, v46), 0), vneg_f32(v48), v48);
      v50 = -(v47.__sinval * v45[1].f32[0]);
      if (v47.__cosval < 0.0)
      {
        v46.f32[0] = -v47.__cosval;
      }

      else
      {
        v50 = v47.__sinval * v45[1].f32[0];
      }

      __asm { FMLA            S3, S14, V2.S[1] }

      v56 = _S3 - (_S8 * v50);
      v57 = ((vmuls_lane_f32(v42, _D2, 1) + (v46.f32[0] * _S8)) + (v50 * _S13)) - (_D2.f32[0] * _S14);
      __asm
      {
        FMLS            S5, S13, V2.S[1]
        FMLS            S1, S8, V2.S[1]
      }

      v60 = _S1 - (v50 * _S14);
      v61 = sqrtf((((v57 * v57) + (v56 * v56)) + (_S5 * _S5)) + (v60 * v60));
      v4 = v56 / v61;
      v5 = v57 / v61;
      v6 = _S5 / v61;
      v7 = v60 / v61;
      v62 = (v7 * v7) + -0.5;
      v63 = (((v148 + v148) * (v57 / v61)) + (v4 * (v146 + v146))) + ((_S5 / v61) * (v150 + v150));
      v64 = -(_S5 / v61);
      v65 = -v4;
      v66 = -v5;
      v8 = (((v7 * ((v5 * (v150 + v150)) - (v6 * (v148 + v148)))) + ((v146 + v146) * v62)) + (v4 * v63)) - v152;
      v9 = (((v7 * ((v6 * (v146 + v146)) - (v4 * (v150 + v150)))) + ((v148 + v148) * v62)) + (v5 * v63)) - v154;
      v25 = v160;
      v23 = v162;
      v10 = (((v7 * ((v4 * (v148 + v148)) - (v5 * (v146 + v146)))) + ((v150 + v150) * v62)) + (v6 * v63)) - v156;
      goto LABEL_29;
    }

    v75 = v37 + v37;
    v76 = v36 + v36;
    v77 = v38 + v38;
    v78 = v19 + (v42 * v42);
    v79 = (((v36 + v36) * _S8) + (_S13 * (v37 + v37))) + (_S14 * (v38 + v38));
    v64 = -_S14;
    v80 = ((v42 * ((_S8 * v77) - (_S14 * (v36 + v36)))) + ((v37 + v37) * v78)) + (_S13 * v79);
    v65 = -_S13;
    v81 = ((((_S14 * (v37 + v37)) - (_S13 * v77)) * v42) + (v76 * v78)) + (_S8 * v79);
    v66 = -_S8;
    v82 = ((((_S13 * v76) - (_S8 * v75)) * v42) + (v77 * v78)) + (_S14 * v79);
    v83 = (v145 + 76 * v18);
    v8 = (v80 - v34) + (*v32 * v83[3]);
    v9 = (v81 - v33) + (*v32 * v83[4]);
    v10 = (v82 - v35) + (*v32 * v83[5]);
    goto LABEL_14;
  }
}

void physx::Dy::FeatherstoneArticulation::jcalc(physx::Dy::FeatherstoneArticulation *this, physx::Dy::ArticulationData *a2, int a3)
{
  if ((*(this + 161) & 1) != 0 || a3)
  {
    v4 = *(a2 + 110);
    if (v4 < 2)
    {
      v6 = 0;
      v108 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = *(a2 + 57);
      v8 = *(a2 + 58);
      v9 = v7 + 80;
      v10 = (v7 + 88);
      v11 = *(a2 + 54);
      v12 = 96;
      v13 = 1;
      do
      {
        v14 = *(v11 + 40 * v13 + 24);
        v15 = v7 + 80 * v13;
        v16 = *(v14 + 269);
        if ((v16 & 1) != 0 || a3)
        {
          v17 = 0;
          *(v15 + 76) = 0;
          *(v15 + 79) = 0;
          v18 = v14 + 258;
          v19 = v14 + 252;
          do
          {
            if (*(v18 + v17))
            {
              v20 = *(v15 + 76);
              *(v9 + 24 * v20 + 4 * v17) = 1065353216;
              if (*(v18 + v17) == 1)
              {
                ++*(v15 + 77);
              }

              *(v15 + 76) = v20 + 1;
              *(v19 + v20) = v17;
            }

            ++v17;
          }

          while (v17 != 6);
          *(v15 + 79) = 0;
          if (*(v14 + 270) == 2 && *(v15 + 76) == 2)
          {
            for (i = 0; i != 3; ++i)
            {
              if (!*(v18 + i))
              {
                v22 = *(v15 + 76);
                *(v9 + 24 * v22 + 4 * i) = 1065353216;
                *(v15 + 76) = v22 + 1;
                *(v19 + v22) = i;
                ++*(v15 + 79);
              }
            }
          }

          v16 = *(v14 + 269) & 0xFE;
          *(v14 + 269) = v16;
        }

        v23 = *(a2 + 42);
        if ((v16 & 2) != 0 || a3)
        {
          v24 = *(v14 + 4);
          v25 = *(v14 + 8);
          v26 = *(v14 + 12);
          v27 = *(v14 + 28);
          v28 = *(v14 + 32);
          v30 = *(v14 + 36);
          v29 = *(v14 + 40);
          v31 = (((v26 * v27) - (v29 * *v14)) - (v28 * v25)) + (v24 * v30);
          v32 = (((v26 * v28) - (v29 * v24)) - (v30 * *v14)) + (v25 * v27);
          v33 = (((v26 * v30) - (v29 * v25)) - (v27 * v24)) + (*v14 * v28);
          v34 = (((*v14 * v27) + (v29 * v26)) + (v28 * v24)) + (v30 * v25);
          v35 = sqrtf((((v32 * v32) + (v31 * v31)) + (v33 * v33)) + (v34 * v34));
          v36 = v23 + 76 * v13;
          v37 = (*(this + 74) + 16 * v13);
          *v37 = v31 / v35;
          v37[1] = v32 / v35;
          v37[2] = v33 / v35;
          v37[3] = v34 / v35;
          v38 = *(v14 + 44);
          v39 = *(v14 + 48);
          v40 = -v38;
          v41 = -v39;
          v42 = *(v14 + 52);
          v43 = -v42;
          v44 = *(v14 + 270);
          if (v44 > 1)
          {
            if (v44 == 2)
            {
              v79 = *(v15 + 76);
              *(v36 + 72) = v79;
              if (v79)
              {
                v81 = *(v14 + 36);
                v80 = *(v14 + 40);
                v82 = (v80 * v80) + -0.5;
                v83 = *(v14 + 28);
                v84 = *(v14 + 32);
                v85 = (v23 + v12);
                v86 = v10;
                do
                {
                  v87 = *(v86 - 2) + *(v86 - 2);
                  v88 = *(v86 - 1) + *(v86 - 1);
                  v89 = *v86 + *v86;
                  v90 = ((v84 * v88) + (v83 * v87)) + (v81 * v89);
                  v91 = ((v80 * ((v88 * -v81) + (v84 * v89))) + (v87 * v82)) + (v83 * v90);
                  v92 = ((v80 * ((v89 * -v83) + (v81 * v87))) + (v88 * v82)) + (v84 * v90);
                  v93 = ((v80 * ((v87 * -v84) + (v83 * v88))) + (v89 * v82)) + (v81 * v90);
                  v94 = ((v92 * v92) + (v91 * v91)) + (v93 * v93);
                  v95 = 0.0;
                  v96 = 0.0;
                  v97 = 0.0;
                  if (v94 > 0.0)
                  {
                    v98 = 1.0 / sqrtf(v94);
                    v95 = v91 * v98;
                    v96 = v92 * v98;
                    v97 = v93 * v98;
                  }

                  *(v85 - 5) = v95;
                  *(v85 - 4) = v96;
                  *(v85 - 3) = v97;
                  *(v85 - 2) = (v39 * v97) + (v96 * v43);
                  *(v85 - 1) = (v42 * v95) + (v97 * v40);
                  *v85 = (v38 * v96) + (v95 * v41);
                  v86 += 6;
                  v85 += 6;
                  --v79;
                }

                while (v79);
              }
            }

            else if (v44 == 3)
            {
              *(v36 + 72) = 0;
            }
          }

          else if (*(v14 + 270))
          {
            if (v44 == 1)
            {
              v45 = *v15 + *v15;
              v46 = *(v15 + 4) + *(v15 + 4);
              v47 = *(v15 + 8) + *(v15 + 8);
              v49 = *(v14 + 36);
              v48 = *(v14 + 40);
              v50 = (v48 * v48) + -0.5;
              v51 = *(v14 + 28);
              v52 = *(v14 + 32);
              v53 = ((v46 * v52) + (v51 * v45)) + (v49 * v47);
              v54 = ((v48 * ((v52 * v47) - (v49 * v46))) + (v45 * v50)) + (v51 * v53);
              v55 = ((v48 * ((v49 * v45) - (v51 * v47))) + (v46 * v50)) + (v52 * v53);
              v56 = ((v48 * ((v51 * v46) - (v52 * v45))) + (v47 * v50)) + (v49 * v53);
              v57 = ((v55 * v55) + (v54 * v54)) + (v56 * v56);
              v58 = 0.0;
              v59 = 0.0;
              v60 = 0.0;
              if (v57 > 0.0)
              {
                v61 = 1.0 / sqrtf(v57);
                v58 = v54 * v61;
                v59 = v55 * v61;
                v60 = v56 * v61;
              }

              *(v36 + 72) = 1;
              *v36 = v58;
              *(v36 + 4) = v59;
              *(v36 + 8) = v60;
              *(v36 + 12) = (v39 * v60) + (v59 * v43);
              *(v36 + 16) = (v42 * v58) + (v60 * v40);
              *(v36 + 20) = (v38 * v59) + (v58 * v41);
            }
          }

          else
          {
            v62 = *(v15 + 12) + *(v15 + 12);
            v63 = *(v15 + 16) + *(v15 + 16);
            v64 = *(v15 + 20) + *(v15 + 20);
            v66 = *(v14 + 36);
            v65 = *(v14 + 40);
            v67 = (v65 * v65) + -0.5;
            v68 = *(v14 + 28);
            v69 = *(v14 + 32);
            v70 = ((v63 * v69) + (v68 * v62)) + (v66 * v64);
            v71 = ((v65 * ((v69 * v64) - (v66 * v63))) + (v62 * v67)) + (v68 * v70);
            v72 = ((v65 * ((v66 * v62) - (v68 * v64))) + (v63 * v67)) + (v69 * v70);
            v73 = ((v65 * ((v68 * v63) - (v69 * v62))) + (v64 * v67)) + (v66 * v70);
            v74 = ((v72 * v72) + (v71 * v71)) + (v73 * v73);
            v75 = 0.0;
            v76 = 0.0;
            v77 = 0.0;
            if (v74 > 0.0)
            {
              v78 = 1.0 / sqrtf(v74);
              v75 = v71 * v78;
              v76 = v72 * v78;
              v77 = v73 * v78;
            }

            *(v36 + 72) = 1;
            *v36 = 0;
            *(v36 + 8) = 0;
            *(v36 + 12) = v75;
            *(v36 + 16) = v76;
            *(v36 + 20) = v77;
          }

          v16 &= ~2u;
          *(v14 + 269) = v16;
        }

        v99 = v8 + 96 * v13;
        if ((v16 & 8) != 0)
        {
          v100 = 0;
          v101 = 0;
          v102 = v14 + 258;
          do
          {
            if (*(v102 + v100))
            {
              *(v99 + 4 * v101++) = *(v102 + 4 * v100 - 34);
            }

            ++v100;
          }

          while (v100 != 6);
          v16 &= ~8u;
          *(v14 + 269) = v16;
        }

        if ((v16 & 4) != 0)
        {
          v103 = 0;
          v104 = 0;
          v105 = v14 + 258;
          v106 = v99 + 12;
          do
          {
            if (*(v105 + v103))
            {
              *(v106 + 4 * v104++) = *(v105 + 4 * v103 - 58);
            }

            ++v103;
          }

          while (v103 != 6);
          *(v14 + 269) = v16 & 0xFB;
        }

        v6 |= *(v14 + 270) == 2;
        v107 = v5;
        *(v14 + 268) = v5;
        v5 += *(v15 + 76);
        ++v13;
        *(v15 + 72) = v107;
        v9 += 80;
        v10 += 20;
        v12 += 76;
      }

      while (v13 != v4);
      v108 = v5;
    }

    if (*(this + 163) != v108)
    {
      physx::Dy::ArticulationData::resizeJointData((this + 176), v108);
      *(this + 163) = v108;
    }

    *(this + 864) = v6 & 1;
    *(this + 161) = 0;
  }
}

void physx::Dy::FeatherstoneArticulation::computeLinkVelocities(physx::Dy::FeatherstoneArticulation *this, physx::Dy::ArticulationData *a2)
{
  physx::Dy::FeatherstoneArticulation::jcalc(this, a2, 1);
  v3 = *(a2 + 110);
  if (v3 >= 2)
  {
    v4 = *(a2 + 54);
    v5 = *(a2 + 6);
    v6 = *(a2 + 57);
    v7 = *(a2 + 42) + 96;
    for (i = 1; i != v3; ++i)
    {
      v9 = v4 + 40 * i;
      v10 = *(v9 + 16);
      v11 = *(v4 + 40 * *(v9 + 32) + 16);
      v17 = *(v11 + 84);
      v12 = vsub_f32(*(v10 + 20), *(v11 + 20));
      v13.i32[0] = vdup_lane_s32(v12, 1).u32[0];
      v13.f32[1] = *(v10 + 16) - *(v11 + 16);
      v14.i32[0] = vrev64_s32(v17).u32[0];
      v14.i32[1] = *(v11 + 80);
      v15 = vadd_f32(*(v11 + 64), vmls_f32(vmul_f32(v17, v13), v14, v12));
      v16 = *(v11 + 80);
      v17.f32[0] = *(v11 + 72) + ((v14.f32[1] * v12.f32[0]) - (v17.f32[0] * v13.f32[1]));
      if (v5)
      {
        v12.i32[0] = *(v10 + 8);
        v18 = *(v10 + 12);
        v19 = *v10;
        v20 = v6 + 80 * i;
        v21 = *(v20 + 76);
        if (*(v20 + 76))
        {
          v22 = (v5 + 4 * *(v20 + 72));
          v23 = 0;
          v24 = v7;
          v25 = 0;
          v26 = 0;
          do
          {
            v27 = vld1_dup_f32(v22++);
            v28 = vmul_f32(v27, *(v24 - 5));
            v29 = v24 - 3;
            v30 = vmul_f32(v27, *(v24 - 2));
            v31 = *v24;
            v24 += 6;
            v32.i32[0] = v31;
            v32.i32[1] = *v29;
            v25 = vadd_f32(v25, v28);
            v23 = vadd_f32(v23, v30);
            v26 = vadd_f32(v26, vmul_f32(v27, v32));
            --v21;
          }

          while (v21);
          v33 = vadd_f32(v25, v25);
          v34 = vadd_f32(v23, v23);
          v35 = vadd_f32(v26, v26);
        }

        else
        {
          v34 = 0;
          v33 = 0;
          v35 = 0;
        }

        v36 = (v18 * v18) + -0.5;
        v37.i32[0] = vdup_lane_s32(v33, 1).u32[0];
        v38 = vneg_f32(vzip1_s32(v12, v19));
        v37.i32[1] = v35.i32[1];
        v39.i32[0] = vdup_lane_s32(v19, 1).u32[0];
        v39.i32[1] = *(v10 + 8);
        v40 = vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(v37, v38), vext_s8(v37, v33, 4uLL), v39), v18), v33, v36);
        v41 = vzip1_s32(vdup_lane_s32(v34, 1), v35);
        v42 = vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(v41, v38), vext_s8(v41, v34, 4uLL), v39), v18), v34, v36);
        v43 = vzip2_s32(v34, v33);
        v44 = vzip1_s32(v34, v33);
        v45 = vmla_n_f32(vmla_n_f32(vmul_lane_f32(v43, v19, 1), v44, v19.f32[0]), v35, v12.f32[0]);
        v16 = vadd_f32(v16, vmla_lane_f32(v40, v19, v45, 1));
        v15 = vadd_f32(v15, vmla_n_f32(v42, v19, v45.f32[0]));
        v17 = vadd_f32(v17, vmla_n_f32(vmla_n_f32(vmul_n_f32(vmla_n_f32(vmul_n_f32(v44, -v19.f32[1]), v43, v19.f32[0]), v18), v35, v36), v45, v12.f32[0]));
      }

      *(v10 + 64) = v15;
      *(v10 + 72) = v17.i32[0];
      *(v10 + 80) = v16;
      *(v10 + 88) = v17.i32[1];
      v7 += 76;
    }
  }
}

void physx::Dy::FeatherstoneArticulation::computeSpatialInertia(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 440);
  if (v2)
  {
    v3 = (*(a2 + 432) + 16);
    v4 = *(a2 + 304) + 52;
    do
    {
      v6 = *v3;
      v3 += 5;
      v5 = v6;
      v8 = v6[30];
      v7 = v6[31];
      v9 = v6[28];
      v10 = v6[29];
      if (v7 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0 / v7;
      }

      v12 = 1.0 / v9;
      v13 = 1.0 / v10;
      v14 = *v5;
      v15 = v5[1];
      v16 = v9 == 0.0;
      v18 = v5[2];
      v17 = v5[3];
      v19 = v14 + v14;
      v20 = v15 + v15;
      v21 = v18 + v18;
      v22 = v14 * (v14 + v14);
      v23 = 1.0 / v8;
      v24 = v15 * (v15 + v15);
      v25 = v18 * (v18 + v18);
      v26 = v19 * v15;
      v27 = v19 * v18;
      v28 = v19 * v17;
      if (v16)
      {
        v12 = 0.0;
      }

      v29 = v20 * v18;
      v30 = v20 * v17;
      v31 = v21 * v17;
      v32 = (1.0 - v24) - v25;
      v16 = v10 == 0.0;
      v33 = v26 + v31;
      v34 = v27 - v30;
      v35 = v26 - v31;
      v36 = 1.0 - v22;
      v37 = v36 - v25;
      if (v16)
      {
        v13 = 0.0;
      }

      v38 = v29 + v28;
      v39 = v27 + v30;
      v40 = v29 - v28;
      *(v4 - 20) = 0;
      *(v4 - 36) = 0uLL;
      v41 = v36 - v24;
      *(v4 - 52) = 0uLL;
      *(v4 - 16) = v11;
      *(v4 - 12) = 0;
      *(v4 - 4) = 0;
      *v4 = v11;
      v16 = v8 == 0.0;
      *(v4 + 4) = 0;
      *(v4 + 12) = 0;
      v42 = v12 * v32;
      v43 = v12 * v33;
      v44 = v12 * v34;
      if (v16)
      {
        v23 = 0.0;
      }

      *(v4 + 16) = v11;
      *(v4 + 20) = ((v35 * (v13 * v35)) + (v42 * v32)) + ((v23 * v39) * v39);
      v45 = ((v37 * (v13 * v35)) + (v42 * v33)) + ((v23 * v39) * v40);
      v46 = ((v38 * (v13 * v35)) + (v42 * v34)) + ((v23 * v39) * v41);
      *(v4 + 32) = v45;
      *(v4 + 36) = ((v37 * (v13 * v37)) + (v43 * v33)) + ((v23 * v40) * v40);
      *(v4 + 24) = v45;
      *(v4 + 28) = v46;
      v47 = ((v38 * (v13 * v37)) + (v43 * v34)) + ((v23 * v40) * v41);
      *(v4 + 40) = v47;
      *(v4 + 44) = v46;
      *(v4 + 48) = v47;
      *(v4 + 52) = ((v38 * (v13 * v38)) + (v44 * v34)) + ((v23 * v41) * v41);
      v4 += 112;
      --v2;
    }

    while (v2);
  }
}

void physx::Dy::FeatherstoneArticulation::computeZ(double a1, double a2, int8x8_t a3, double a4, double a5, double a6, double a7, int8x8_t a8, uint64_t a9, uint64_t a10, float32x2_t *a11, uint64_t *a12)
{
  v12 = *(a10 + 472);
  v13 = 1.0 / v12;
  _NF = v12 < 0.000001;
  v15 = 3.4028e38;
  if (!_NF)
  {
    v15 = v13;
  }

  v16 = *(a10 + 440);
  if (v16)
  {
    a3.i32[0] = 0;
    v17 = 0;
    v18 = *a12;
    v19 = a12[3];
    v20 = a12[4];
    v21 = 32 * v16;
    v22 = (*(a10 + 432) + 16);
    v23 = (*(a10 + 304) + 104);
    do
    {
      v24 = *(v18 + v17);
      _D5 = *(v18 + v17 + 4);
      _S7 = _D5.i32[1];
      __asm { FMLA            S6, S7, V5.S[1] }

      v31 = sqrtf(_S6);
      if (v31 > 0.0)
      {
        v24 = v24 * (1.0 / v31);
        _D5 = vmul_n_f32(_D5, 1.0 / v31);
      }

      v32 = *v22;
      if (v31 >= v15)
      {
        v31 = v15;
      }

      v33 = v31 * v24;
      a8.i32[0] = *(v32 + 157);
      v34 = vmul_n_f32(_D5, v31);
      v35 = vand_s8(vneg_f32(*a11), vdup_lane_s8(vceq_s8(a8, a3), 0));
      if (*(v32 + 157))
      {
        v36 = 0.0;
      }

      else
      {
        v36 = -a11[1].f32[0];
      }

      v37 = 1.0 / *(v32 + 124);
      a8 = vmul_n_f32(v35, v37);
      v38 = v36 * v37;
      v39 = v19 + v17;
      *v39 = *&a8;
      *(v39 + 8) = v36 * v37;
      v40.i32[0] = *(v23 - 3);
      v41.i32[0] = *v23;
      v42 = ((v33 * *(v23 - 7)) + (*(v23 - 4) * v34.f32[0])) + vmuls_lane_f32(*(v23 - 1), v34, 1);
      v43.i32[0] = vdup_lane_s32(v34, 1).u32[0];
      v43.f32[1] = v33;
      v44 = vneg_f32(v43);
      v45 = vext_s8(v43, v34, 4uLL);
      v40.i32[1] = *(v23 - 8);
      v41.i32[1] = *(v23 - 2);
      v46 = vadd_f32(vadd_f32(vmul_f32(vrev64_s32(v45), v40), vmul_f32(v45, *(v23 - 6))), vmul_lane_f32(v41, v34, 1));
      v47 = vdup_lane_s32(v46, 0);
      v47.f32[0] = v42;
      v48 = vmla_f32(vmul_f32(v47, v44), v46, v34);
      v49 = vmuls_lane_f32(-v34.f32[0], v46, 1) + (v33 * v42);
      *(v39 + 16) = v48;
      *(v39 + 24) = v49;
      if (v20)
      {
        v50 = *(v20 + v17 + 8);
        v51 = *(v20 + v17 + 16);
        v52 = *(v20 + v17 + 20);
        v53 = *(v20 + v17 + 24);
        *(v19 + v17) = vsub_f32(a8, vmul_n_f32(*(v20 + v17), v37));
        *(v39 + 8) = v38 - (v37 * v50);
        v54 = (-(v52 * *(v23 - 3)) - (v51 * *(v23 - 6))) - (v53 * *v23);
        a8 = vmul_n_f32(*(v23 - 2), v53);
        *(v39 + 16) = vadd_f32(v48, vsub_f32(vsub_f32(vmul_n_f32(*(v23 - 5), -v52), vmul_n_f32(*(v23 - 8), v51)), a8));
        *(v39 + 24) = v49 + v54;
      }

      v17 += 32;
      v22 += 5;
      v23 += 28;
    }

    while (v21 != v17);
  }
}

uint64_t physx::Dy::FeatherstoneArticulation::computeC(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = a6[6];
  v7 = a6[2];
  v8 = *(a5 + 440);
  _D0.i32[1] = 0;
  *v7 = 0u;
  v7[1] = 0u;
  if (v8 >= 2)
  {
    v10 = *(a5 + 432);
    v11 = *(a5 + 448);
    v12 = *(a5 + 456);
    v13 = *(a5 + 352) + 96;
    v14 = *a6;
    v15 = 1;
    result = 40;
    do
    {
      v17 = v14 + 32 * *(v10 + 40 * v15 + 32);
      LODWORD(a3) = *v17;
      v18 = v11 + 160 * v15;
      _D0.i32[0] = *(v18 + 120);
      _D1 = *(v17 + 4);
      __asm { FMLA            S6, S0, V1.S[1] }

      v25 = vneg_f32(_D1);
      v26 = vmla_f32(vmul_f32(vzip1_s32(_D0, *(v18 + 124)), v25), *(v18 + 124), vzip1_s32(*&a3, _D1));
      v27 = vdup_lane_s32(v26, 0);
      v27.f32[0] = _S6;
      v28.i32[0] = vdup_lane_s32(v25, 1).u32[0];
      v28.f32[1] = -*v17;
      v29 = v12 + 80 * v15;
      _D0 = vmla_f32(vmul_f32(v27, v28), v26, _D1);
      v30 = vmul_lane_f32(v25, v26, 1).f32[0] + (*v17 * _S6);
      v31 = *(v29 + 76);
      if (*(v29 + 76))
      {
        v32 = (v6 + 4 * *(v29 + 72));
        v33 = 0;
        v34 = 0.0;
        v35 = v13;
        v36 = 0.0;
        v37 = 0;
        do
        {
          v38 = *v32++;
          v36 = v36 + (v38 * *(v35 - 5));
          v39.i32[0] = *v35;
          v39.i32[1] = *(v35 - 2);
          v33 = vadd_f32(v33, vmul_n_f32(*(v35 - 4), v38));
          v34 = v34 + (v38 * *(v35 - 1));
          v37 = vadd_f32(v37, vmul_n_f32(v39, v38));
          v35 += 6;
          --v31;
        }

        while (v31);
        v40.i32[0] = vdup_lane_s32(v33, 1).u32[0];
        v40.f32[1] = v36;
        v41 = vmla_f32(vmul_f32(v33, v28), v40, _D1);
        v42 = (v36 * v25.f32[0]) + (*&a3 * v33.f32[0]);
        v43 = vdup_lane_s32(v37, 0);
        v43.f32[0] = v34;
        v44 = vmuls_lane_f32(v25.f32[0], v37, 1);
        v45 = vmla_f32(vmul_f32(v43, v28), v37, _D1);
        _D0 = vadd_f32(_D0, vadd_f32(vmla_f32(vmul_f32(v43, vneg_f32(v40)), v37, v33), vadd_f32(v45, v45)));
        v30 = v30 + ((vmuls_lane_f32(-v33.f32[0], v37, 1) + (v36 * v34)) + ((v44 + (*&a3 * v34)) + (v44 + (*&a3 * v34))));
      }

      else
      {
        v41 = 0;
        v42 = 0.0;
      }

      v46 = &v7[2 * v15];
      *v46 = v41;
      v46[1].f32[0] = v42;
      v46[1].i32[1] = 0;
      v46[2] = _D0;
      v46[3].f32[0] = v30;
      v46[3].i32[1] = 0;
      ++v15;
      v13 += 76;
    }

    while (v15 != v8);
  }

  return result;
}

uint64_t physx::Dy::FeatherstoneArticulation::computeRelativeTransformC2P(int8x16_t a1, double a2, int8x16_t a3, int8x16_t a4, double a5, double a6, double a7, float32x4_t a8, uint64_t a9, uint64_t a10)
{
  v15 = *(a10 + 440);
  if (v15 >= 2)
  {
    v16 = *(a10 + 432);
    v17 = *(a10 + 336);
    v18 = *(a10 + 352);
    v19 = *(a10 + 448);
    v20 = *(a10 + 464);
    v21 = v17 + 96;
    v22 = *(a10 + 456) + 80;
    v23 = 1;
    result = 160;
    a1.i32[0] = -0.5;
    v25 = v18;
    do
    {
      v26 = v16 + 40 * v23;
      v27 = v19 + 160 * v23;
      v28 = *(v26 + 16);
      v29 = *(v16 + 40 * *(v26 + 32) + 16);
      v30 = *(v28 + 6) - v29[3].f32[0];
      v31 = v30 + v30;
      v11.i32[0] = *(v28 + 2);
      v32 = *(v28 + 3);
      a8.f32[0] = (v32 * v32) + -0.5;
      a3.i64[0] = *v28;
      *a4.i8 = vneg_f32(vzip1_s32(*v11.f32, *v28));
      v10.f32[0] = -COERCE_FLOAT(HIDWORD(*v28));
      v33 = vsub_f32(v28[2], v29[2]);
      v34 = vadd_f32(v33, v33);
      v35 = (vmuls_lane_f32(v34.f32[1], *v28, 1) + (COERCE_FLOAT(*v28) * v34.f32[0])) + (v11.f32[0] * v31);
      v36.i32[0] = vdup_lane_s32(v34, 1).u32[0];
      v36.f32[1] = v31;
      v37 = ((v31 * a8.f32[0]) - (((v10.f32[0] * v34.f32[0]) + (COERCE_FLOAT(*v28) * v34.f32[1])) * v32)) + (v11.f32[0] * v35);
      *(v27 + 108) = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v36, *a4.i8), vext_s8(v36, v34, 4uLL), *(v28 + 4))), v32), v34, a8.f32[0]), *v28, v35);
      *(v27 + 116) = v37;
      v38 = *(v28 + 6) - v29[3].f32[0];
      *(v27 + 120) = vsub_f32(v28[2], v29[2]);
      *(v27 + 128) = v38;
      v39 = *(v17 + 76 * v23 + 72);
      *(v18 + 76 * v23 + 72) = v39;
      if (v39)
      {
        v40 = 0;
        v41 = vdup_lane_s32(*a8.f32, 0);
        v42 = vdup_lane_s32(*v11.f32, 0);
        v43 = vdup_lane_s32(*a3.i8, 0);
        a8 = vdupq_lane_s32(*a8.f32, 0);
        v44 = a3;
        v44.i32[3] = a3.i32[0];
        v50 = vextq_s8(vextq_s8(v44, v11, 4uLL), v44, 0xCuLL);
        v45 = vextq_s8(v10, v10, 4uLL);
        v46 = v44;
        v46.i32[2] = v11.i32[0];
        v47 = vextq_s8(a1, a4, 0xCuLL);
        v47.i32[0] = v10.i32[0];
        v47.i32[3] = v10.i32[0];
        v10.i64[0] = __PAIR64__(a3.u32[0], v11.u32[0]);
        *&v10.u32[2] = vext_s8(*a3.i8, *v11.f32, 4uLL);
        v48.i32[0] = vdup_lane_s32(*a3.i8, 1).u32[0];
        v49 = vextq_s8(v45, a4, 0xCuLL);
        v48.i32[1] = v11.i32[0];
        v49.i32[3] = v49.i32[0];
        v11 = v46;
        v11.i32[3] = a3.i32[0];
        v50.i32[3] = v50.i32[0];
        v51 = 24 * v39;
        do
        {
          v52.i32[0] = *(v21 + v40 - 20);
          v12.i32[0] = *(v21 + v40 - 16);
          v13.i32[0] = *(v21 + v40 - 12);
          v53 = v25 + v40;
          v12.i32[1] = *(v21 + v40 - 4);
          v13.i32[1] = *(v21 + v40);
          *v13.i8 = vadd_f32(*v13.i8, *v13.i8);
          *v12.i8 = vadd_f32(*v12.i8, *v12.i8);
          v52.i32[1] = *(v21 + v40 - 8);
          v54 = vadd_f32(v52, v52);
          *v14.i8 = vmla_f32(vmla_f32(vmul_lane_f32(*v12.i8, *a3.i8, 1), v54, v43), *v13.i8, v42);
          v55.i64[0] = __PAIR64__(v12.u32[1], v54.u32[0]);
          v55.i64[1] = __PAIR64__(v54.u32[1], v13.u32[1]);
          v56 = vmulq_f32(v55, v49);
          v57 = vextq_s8(v55, vrev64q_s32(v12), 8uLL);
          v58 = vextq_s8(v57, v57, 0xCuLL);
          v59 = vmlaq_f32(v56, v58, v11);
          v60 = vextq_s8(v58, vrev64q_s32(v13), 8uLL);
          *(v53 + 76) = vmla_n_f32(vmla_f32(vmul_n_f32(vmla_f32(vmul_f32(vzip1_s32(*v12.i8, *v13.i8), *a4.i8), vzip1_s32(*v13.i8, v54), __PAIR64__(v42.u32[1], a3.u32[1])), v32), v41, vzip1_s32(v54, *v12.i8)), *a3.i8, *v14.i32);
          *(v53 + 84) = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v59, v32), a8, vextq_s8(v60, v60, 0xCuLL)), vzip1q_s32(v14, vdupq_lane_s32(*v14.i8, 1)), v50);
          v54.i32[0] = *(v22 + v40);
          v12.i32[0] = *(v22 + v40 + 4);
          v13.i32[0] = *(v22 + v40 + 8);
          v61 = v20 + v40;
          v12.i32[1] = *(v22 + v40 + 16);
          *v12.i8 = vadd_f32(*v12.i8, *v12.i8);
          v13.i32[1] = *(v22 + v40 + 20);
          v54.i32[1] = *(v22 + v40 + 12);
          v62 = vadd_f32(v54, v54);
          *v13.i8 = vadd_f32(*v13.i8, *v13.i8);
          v63.i64[0] = __PAIR64__(v12.u32[1], v62.u32[0]);
          *v14.i8 = vmla_f32(vmla_f32(vmul_lane_f32(*v12.i8, *a3.i8, 1), v62, v43), *v13.i8, v42);
          v63.i64[1] = __PAIR64__(v62.u32[1], v13.u32[1]);
          v64 = vmulq_f32(v63, v47);
          v65 = vextq_s8(v63, vrev64q_s32(v12), 8uLL);
          v66 = vextq_s8(v65, v65, 0xCuLL);
          v67 = vmulq_n_f32(vmlaq_f32(v64, v66, v46), v32);
          v68 = vextq_s8(v66, vrev64q_s32(v13), 8uLL);
          *(v61 + 120) = vmla_n_f32(vmla_f32(vmul_n_f32(vmla_f32(vmul_f32(vzip1_s32(*v12.i8, *v13.i8), *a4.i8), vzip1_s32(*v13.i8, v62), v48), v32), v41, vzip1_s32(v62, *v12.i8)), *a3.i8, *v14.i32);
          *(v61 + 128) = vmlaq_f32(vmlaq_f32(v67, a8, vextq_s8(v68, v68, 0xCuLL)), vzip1q_s32(v14, vdupq_lane_s32(*v14.i8, 1)), v10);
          v40 += 24;
        }

        while (v51 != v40);
      }

      ++v23;
      v20 += 96;
      v21 += 76;
      v25 += 76;
      v22 += 80;
    }

    while (v23 != v15);
  }

  return result;
}

float physx::Dy::FeatherstoneArticulation::computeRelativeTransformC2B(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 440);
  if (v2 >= 2)
  {
    v3 = *(a2 + 432);
    v4 = *(v3 + 16);
    v5 = v2 - 1;
    v6 = (*(a2 + 448) + 264);
    v7 = (v3 + 56);
    do
    {
      v8 = *v7;
      v7 += 5;
      result = v8[3].f32[0] - v4[3].f32[0];
      *(v6 - 1) = vsub_f32(v8[2], v4[2]);
      *v6 = result;
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t physx::Dy::FeatherstoneArticulation::getDenseJacobian(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  (*(*a1 + 104))(a1);
  v8 = *(a1 + 616);
  v9 = *(a1 + 608);
  v79 = *(a1 + 624);
  result = (*(*a1 + 56))(a1);
  v11 = 0;
  v12 = *(a1 + 616);
  v13 = **(a1 + 664);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 6;
  }

  *a4 = v14 + result;
  v77 = v14 - 6;
  v78 = v14;
  *a3 = v14 - 6 + 6 * v12;
  if ((v13 & 1) == 0)
  {
    v15 = *(a2 + 8);
    *v15 = 1065353216;
    *(v15 + 12) = 0;
    *(v15 + 4) = 0;
    *(v15 + 20) = 0;
    v16 = *a4;
    *(v15 + 4 * v16) = 0;
    *(v15 + 4 * (v16 + 1)) = 1065353216;
    *(v15 + 4 * (v16 + 2)) = 0;
    *(v15 + 4 * (v16 + 3)) = 0;
    *(v15 + 4 * (v16 + 4)) = 0;
    *(v15 + 4 * (v16 + 5)) = 0;
    *(v15 + 4 * (2 * v16)) = 0;
    *(v15 + 4 * (2 * v16 + 2)) = 1065353216;
    *(v15 + 4 * (2 * v16 + 4)) = 0;
    *(v15 + 4 * (3 * v16)) = 0;
    *(v15 + 4 * (3 * v16 + 1)) = 0;
    *(v15 + 4 * (3 * v16 + 2)) = 0;
    *(v15 + 4 * (3 * v16 + 3)) = 1065353216;
    *(v15 + 4 * (3 * v16 + 4)) = 0;
    *(v15 + 4 * (3 * v16 + 5)) = 0;
    v17 = (v15 + 4 * (4 * v16));
    *v17 = 0;
    v17[1] = 0;
    *(v15 + 4 * (4 * v16 + 4)) = 1065353216;
    LODWORD(v16) = 5 * v16;
    *(v15 + 4 * v16) = 0;
    *(v15 + 4 * (v16 + 1)) = 0;
    *(v15 + 4 * (v16 + 2)) = 0;
    *(v15 + 4 * (v16 + 3)) = 0;
    *(v15 + 4 * (v16 + 4)) = 0;
    v18 = v16 + 5;
    v11 = 6;
    *(v15 + 4 * v18) = 1065353216;
  }

  if (v8 >= 2)
  {
    v19 = *(a1 + 632);
    v20 = *(a2 + 8);
    v21 = *a4;
    v22 = v21 * (v11 + 5);
    v23 = (6 * v21);
    v24 = v21 * (v11 + 4);
    result = v21 * (v11 + 3);
    v25 = v21 * (v11 + 2);
    v26 = v11 * v21;
    v27 = v21 + v11 * v21;
    v28 = 1;
    v29 = 96;
    do
    {
      v30 = v9 + 40 * v28;
      v31 = v79 + 160 * v28;
      v32 = *(v30 + 16);
      *(v31 + 144) = *(v32 + 76);
      v33 = *(v30 + 32);
      if ((v13 & 1) == 0 || v33)
      {
        v34 = *(v19 + 80 * v33 + 72) + v78 + *(v19 + 80 * v33 + 76);
        v35 = 3 * v33;
        v36 = v77 + 6 * v33;
        v37 = (v36 + 3) * v21;
        v38 = (v36 + 4) * v21;
        v39 = (v36 + 5) * v21;
        v40 = v36 * v21;
        v41 = (v36 + 2) * v21;
        v42 = v34 + 1;
        v43 = v21 * (v78 - 5 + 2 * v35);
        for (i = -1; i != v34; ++i)
        {
          v45 = *(v20 + 4 * (v39 + i + 1));
          v46 = *(v20 + 4 * (v38 + i + 1));
          v48 = *(v31 + 124);
          v47 = *(v31 + 128);
          v49 = *(v31 + 120);
          v50 = *(v20 + 4 * (v37 + i + 1));
          *(v20 + 4 * (v26 + i + 1)) = *(v20 + 4 * (v40 + i + 1)) + ((v46 * v47) - (v45 * v48));
          *(v20 + 4 * (v27 + i + 1)) = ((v45 * v49) - (v50 * v47)) + *(v20 + 4 * (v43 + i + 1));
          *(v20 + 4 * (v25 + i + 1)) = ((v50 * v48) - (v46 * v49)) + *(v20 + 4 * (v41 + i + 1));
          *(v20 + 4 * (result + i + 1)) = v50;
          *(v20 + 4 * (v24 + i + 1)) = v46;
          *(v20 + 4 * (v22 + i + 1)) = v45;
        }

        if (v34 + 1 < v11)
        {
          do
          {
            *(v20 + 4 * (v26 + v42)) = 0;
            *(v20 + 4 * (v27 + v42)) = 0;
            *(v20 + 4 * (v25 + v42)) = 0;
            *(v20 + 4 * (result + v42)) = 0;
            *(v20 + 4 * (v24 + v42)) = 0;
            *(v20 + 4 * (v22 + v42++)) = 0;
          }

          while (v42 < v11);
        }
      }

      v51 = v19 + 80 * v28;
      v52 = *(v51 + 76);
      if (*(v51 + 76))
      {
        v53 = 0;
        v54 = (*(a1 + 512) + v29);
        do
        {
          v55 = *(v54 - 5) + *(v54 - 5);
          v56 = *(v54 - 4) + *(v54 - 4);
          v58 = *(v32 + 8);
          v57 = *(v32 + 12);
          v59 = *(v54 - 3) + *(v54 - 3);
          v60 = (v57 * v57) + -0.5;
          v61 = *(v32 + 4);
          v62 = ((v56 * v61) + (*v32 * v55)) + (v58 * v59);
          v63 = (v57 * ((v61 * v59) - (v58 * v56))) + (v55 * v60);
          v64 = v57 * ((v58 * v55) - (*v32 * v59));
          v65 = v57 * ((*v32 * v56) - (v61 * v55));
          v66 = v64 + (v56 * v60);
          v67 = *(v54 - 2) + *(v54 - 2);
          v68 = *(v54 - 1) + *(v54 - 1);
          v69 = *v54 + *v54;
          v70 = v65 + (v59 * v60);
          v71 = ((v61 * v68) + (*v32 * v67)) + (v58 * v69);
          v72 = v63 + (*v32 * v62);
          v73 = ((v57 * ((v61 * v69) - (v58 * v68))) + (v67 * v60)) + (*v32 * v71);
          v74 = (v57 * ((v58 * v67) - (*v32 * v69))) + (v68 * v60);
          v75 = v57 * ((*v32 * v68) - (v61 * v67));
          *(v20 + 4 * (v11 + v26 + v53)) = v73;
          *(v20 + 4 * (v11 + v27 + v53)) = v74 + (v61 * v71);
          *(v20 + 4 * (v11 + v25 + v53)) = (v75 + (v69 * v60)) + (v58 * v71);
          *(v20 + 4 * (v11 + result + v53)) = v72;
          *(v20 + 4 * (v11 + v24 + v53)) = v66 + (v61 * v62);
          *(v20 + 4 * (v11 + v22 + v53++)) = v70 + (v58 * v62);
          v54 += 6;
        }

        while (v52 != v53);
        v11 += v53;
      }

      if (v11 < v21)
      {
        v76 = v11;
        do
        {
          *(v20 + 4 * (v26 + v76)) = 0;
          *(v20 + 4 * (v27 + v76)) = 0;
          *(v20 + 4 * (v25 + v76)) = 0;
          *(v20 + 4 * (result + v76)) = 0;
          *(v20 + 4 * (v24 + v76)) = 0;
          *(v20 + 4 * (v22 + v76++)) = 0;
        }

        while (v21 != v76);
      }

      ++v28;
      v22 += v23;
      v24 += v23;
      result += v23;
      v25 += v23;
      v27 += v23;
      v26 += v23;
      v29 += 76;
    }

    while (v28 != v8);
  }

  return result;
}

uint64_t physx::Dy::FeatherstoneArticulation::computeLinkVelocities(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *(a2 + 432);
  v4 = *(a2 + 448);
  v5 = *(a2 + 440);
  v6 = **(a2 + 488);
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[6];
  v10 = *(v3 + 16);
  *(v4 + 144) = *(v10 + 76);
  if (v6)
  {
    *v7 = 0u;
    *(v7 + 1) = 0u;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    v11 = *v7;
    v12 = *(v7 + 2);
  }

  else
  {
    v11 = *(v10 + 80);
    v12 = *(v10 + 88);
    v13 = *(v10 + 72);
    *(v7 + 2) = v12;
    *(v7 + 3) = 0;
    v14 = *(v10 + 64);
    *v7 = v11;
    v7[2] = v14;
    *(v7 + 6) = v13;
    *(v7 + 7) = 0;
  }

  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 12) = 0;
  *(a2 + 16) = v7[2];
  *(a2 + 24) = *(v7 + 6);
  *(a2 + 28) = 0;
  if (v5 >= 2)
  {
    v15 = *(a2 + 352) + 96;
    v16 = *(a2 + 456);
    v17 = 1;
    result = 80;
    do
    {
      v19 = v3 + 40 * v17;
      v20 = v4 + 160 * v17;
      *(v20 + 144) = *(*(v19 + 16) + 76);
      _S2 = *(v20 + 120);
      v22 = &v7[4 * *(v19 + 32)];
      v23 = *(v22 + 2);
      _D1 = *v22;
      _D3 = *(v20 + 124);
      v26.i32[0] = vdup_lane_s32(_D3, 1).u32[0];
      v26.i32[1] = _S2;
      v27 = vrev64_s32(*v22);
      v27.f32[0] = v23;
      v28 = vmls_f32(vmul_f32(v26, *(v22 + 4)), v27, _D3);
      __asm { FMLS            S3, S2, V1.S[1] }

      v33 = vadd_f32(v22[2], v28);
      v34 = _D3.f32[0] + *(v22 + 6);
      if (v9)
      {
        v35 = v16 + 80 * v17;
        v36 = *(v35 + 76);
        if (*(v35 + 76))
        {
          v37 = v9 + *(v35 + 72);
          v38 = 0;
          v39 = 0.0;
          v40 = v15;
          v41 = 0.0;
          v42 = 0;
          do
          {
            v43 = *v37++;
            v44 = v43;
            v45 = vmul_n_f32(*(v40 - 5), v43);
            v46 = v43 * *(v40 - 3);
            v47 = vmul_n_f32(*(v40 - 2), v43);
            v48 = *v40;
            v40 += 6;
            v38 = vadd_f32(v38, v45);
            v39 = v39 + v46;
            v42 = vadd_f32(v42, v47);
            v41 = v41 + (v44 * v48);
            --v36;
          }

          while (v36);
        }

        else
        {
          v38 = 0;
          v41 = 0.0;
          v39 = 0.0;
          v42 = 0;
        }

        _D1 = vadd_f32(_D1, v38);
        v23 = v23 + v39;
        v33 = vadd_f32(v33, v42);
        v34 = v34 + v41;
      }

      v49 = &v7[4 * v17];
      *v49 = _D1;
      v49[1].f32[0] = v23;
      v49[1].i32[1] = 0;
      v49[2] = v33;
      v49[3].f32[0] = v34;
      v49[3].i32[1] = 0;
      ++v17;
      v15 += 76;
    }

    while (v17 != v5);
  }

  return result;
}

float32_t physx::Dy::solveStaticConstraint(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, int8x16_t *a5, int a6, int8x16_t a7, __n128 a8, int8x16_t a9, double a10, double a11, double a12, int16x8_t a13)
{
  v18 = *a2->f32;
  v17 = *a2[2].f32;
  v17.i64[1] = a2[3].u32[0];
  v18.i64[1] = a2[1].u32[0];
  v19 = 0uLL;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v43 = 0u;
  if (a6)
  {
    v19.i16[0] = *(a1 + 16);
    a13.i32[0] = -1;
    v20 = vdupq_lane_s16(*&vceqq_s16(v19, a13), 0);
    v22 = *a5;
    v21 = a5[1];
    v21.i64[1] = a5[1].u32[2];
    v22.i64[1] = a5->u32[2];
    v23 = vbslq_s8(v20, xmmword_1E30474D0, a7);
    v24 = vbslq_s8(v20, a7, xmmword_1E30474D0);
    v48 = vbicq_s8(v18, v20);
    v49 = vandq_s8(v17, v20);
    v47 = vandq_s8(v18, v20);
    v39 = vandq_s8(v22, v20);
    v40 = vandq_s8(v21, v20);
    v37 = v24;
    v38 = v23;
    v41 = vbicq_s8(v22, v20);
    v42 = vbicq_s8(v21, v20);
    v50 = vbicq_s8(v17, v20);
    if (**(a1 + 32) == 3)
    {
      v24.i32[0] = a9.i32[0];
      physx::Dy::solveExtContactStep(a1, &v50, &v49, &v48, &v47, &v42, &v40, &v41, *v24.i8, a8.n128_u64[0], &v39, &v46, &v45, &v44, &v43, 1);
    }

    else
    {
      v24.i32[0] = a8.n128_u32[0];
      physx::Dy::solveExt1D(a1, &v50, &v49, &v48, &v47, &v42, &v40, &v41, *v24.i8, a8.n128_u64[0], &v39, &v38, &v37, &v46, &v45, &v44, &v43);
    }
  }

  else
  {
    if (*(a1 + 16) == -1)
    {
      v19 = v17;
      v25 = v18;
      v18 = 0uLL;
      v17 = 0uLL;
    }

    else
    {
      v25 = 0uLL;
    }

    v48 = v18;
    v49 = v19;
    v47 = v25;
    v50 = v17;
    if (**(a1 + 32) == 3)
    {
      physx::Dy::solveExtContact(a1, &v50, &v49, &v48, &v47, &v46, &v45, &v44, *v25.i64, a8, a9, v17, &v43, 1);
    }

    else
    {
      physx::Dy::solveExt1D(a1, &v50, &v49, &v48, &v47, &v46, &v45, &v44, &v43);
    }
  }

  v26 = &v46;
  if (*(a1 + 16) == 0xFFFF)
  {
    v26 = &v45;
  }

  v27 = *v26;
  v28 = &v44;
  if (*(a1 + 16) == 0xFFFF)
  {
    v28 = &v43;
  }

  v29 = *v28;
  v30 = &v48;
  if (*(a1 + 16) == 0xFFFF)
  {
    v30 = &v47;
  }

  v31 = *v30;
  v32 = &v50;
  if (*(a1 + 16) == 0xFFFF)
  {
    v32 = &v49;
  }

  v33 = *v32;
  v34 = *&v31.i32[2] - a2[1].f32[0];
  *a4 = vadd_f32(vsub_f32(*v31.i8, *a2), *a4);
  a4[1].f32[0] = v34 + a4[1].f32[0];
  v35 = *&v33.i32[2] - a2[3].f32[0];
  a4[2] = vadd_f32(vsub_f32(*v33.i8, a2[2]), a4[2]);
  a4[3].f32[0] = v35 + a4[3].f32[0];
  a2[1].i32[0] = v31.i32[2];
  *a2 = *v31.i8;
  a2[2] = *v33.i8;
  a2[3].i32[0] = v33.i32[2];
  *a3 = vsub_f32(*a3, *v27.f32);
  a3[1].f32[0] = a3[1].f32[0] - v27.f32[2];
  a3[2] = vsub_f32(a3[2], v29.n128_u64[0]);
  result = a3[3].f32[0] - v29.n128_f32[2];
  a3[3].f32[0] = result;
  return result;
}

uint64_t physx::Dy::FeatherstoneArticulation::writebackInternalConstraints(uint64_t this, int a2)
{
  if (*(this + 880))
  {
    v3 = this;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(v3 + 872) + v4;
      v7 = **(v6 + 32);
      if (a2)
      {
        if (v7 == 3)
        {
          this = physx::Dy::writeBackContact(v6);
        }

        else
        {
          this = physx::Dy::writeBack1D(v6);
        }
      }

      else if (v7 == 3)
      {
        this = physx::Dy::writeBackContact(v6, v9, v8, v8);
      }

      else
      {
        this = physx::Dy::writeBack1D(v6);
      }

      ++v5;
      v4 += 48;
    }

    while (v5 < *(v3 + 880));
  }

  return this;
}

float32x2_t physx::Dy::FeatherstoneArticulation::solveInternalConstraintRecursive(float32x2_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, _DWORD *a8, float a9, float a10, float a11, unsigned int *a12)
{
  v17 = a6;
  v18 = a2[76] + 40 * a6;
  v19 = a2[78];
  v20 = a2[79] + 80 * a6;
  v243 = 0u;
  v244 = 0u;
  v21 = a2[40];
  v22 = (v21 + 32 * *(v18 + 32));
  v23 = *a7;
  v24 = *v22;
  v25 = *(a7 + 8);
  v26 = v22[1].f32[0];
  v27 = *(a7 + 16);
  v28 = v22[2];
  v29 = *(a7 + 24);
  v30 = v22[3].f32[0];
  v197 = v19 + 160 * a6;
  physx::Dy::FeatherstoneArticulation::propagateVelocityTestImpulseW(&v240, v197 + 120, (a2[60] + 112 * a6), (a2[62] + 36 * a6), a2[66] + 76 * a6, (a2[46] + 32 * a6), a7);
  v32 = (v21 + 32 * v17);
  v33 = v240;
  v34 = v32[1].f32[0];
  v35 = v32[2].f32[0];
  LODWORD(v46) = v32[2].i32[1];
  v36 = v32[3].f32[0];
  *&v37 = vadd_f32(*v32, v240);
  v233 = v37;
  v235 = 0;
  v239 = 0;
  v230 = v240;
  v38 = v241;
  v39 = v34 + *&v241;
  v40 = v35 + *(&v241 + 2);
  v42 = *(&v241 + 3);
  v41 = *(&v241 + 2);
  v43 = v39;
  v234 = v39;
  v44 = v40;
  v236 = v40;
  v237 = *&v46 + *(&v241 + 3);
  v45 = *&v46 + *(&v241 + 3);
  v231 = v241;
  *&v46 = v242;
  v238 = v36 + *&v242;
  v232 = v242;
  v47 = *(v20 + 78);
  v198 = a3;
  v199 = a1;
  v196 = v18;
  if (!*(v20 + 78))
  {
    v206 = 0;
    v202 = 0.0;
    v212 = 0.0;
    v214 = 0;
    v48 = a11;
    v49 = a6;
    goto LABEL_69;
  }

  v50 = v36 + *&v242;
  v51 = v46;
  v52 = *(v20 + 79);
  v53 = v25 + v26;
  v54 = vadd_f32(v23, v24);
  v55 = *(v20 + 76);
  v200 = v243;
  v201 = *(&v243 + 2);
  v56 = v244;
  v57 = *(&v244 + 2);
  v205 = *(*(v18 + 24) + 264);
  v204 = -v205;
  v58 = v37;
  if (*(v20 + 76))
  {
    v59 = 0;
    v60 = a2[32] + 4 * *(v20 + 72);
    *&v31 = vadd_f32(v27, v28);
    v221 = v31;
    v219 = v29 + v30;
    v61 = *a8;
    v207 = 0;
    v62 = 0.0;
    v203 = 0.0;
    v63 = 0;
    v48 = a11;
    v64 = v44;
    v65 = v45;
    v66 = v50;
    v67 = v43;
    v68 = *(&v37 + 1);
    v69 = v51;
    while (((v47 >> v59) & 1) == 0)
    {
      v72 = v61;
LABEL_53:
      ++v59;
      v61 = v72;
      if (v55 == v59)
      {
        *(&v231 + 3) = v42;
        LODWORD(v232) = v69;
        v136 = v207;
        v137 = v203;
        goto LABEL_56;
      }
    }

    v210 = v33;
    v211 = v56;
    v70 = v57;
    v71 = v38;
    v72 = (v61 + 1);
    *a8 = v72;
    v73 = (a2[50] + 176 * v61);
    v74 = *(v60 + 4 * v59);
    v75 = *(v73 + 33);
    v213 = v41;
    v209 = v42;
    v208 = v69;
    v215 = v63;
    if ((v73[21] & 1) == 0)
    {
      if (v74 <= 6.2832)
      {
        if (v74 >= -6.2832)
        {
          goto LABEL_13;
        }

        v76 = 12.566;
      }

      else
      {
        v76 = -12.566;
      }

      v74 = v74 + v76;
      v75 = v75 + v76;
    }

LABEL_13:
    v77 = *(v73 + 24);
    v78 = *(v73 + 25);
    v80 = *(v73 + 31);
    v79 = *(v73 + 32);
    v81 = v75 + ((v80 * v78) * v48);
    v82 = *(v73 + 36);
    v83 = v68;
    v84 = vmuls_lane_f32(v68, v82, 1);
    v85 = v58;
    v86 = *(v73 + 11);
    v87 = v67;
    v88 = (v84 + (v82.f32[0] * *&v58)) + (v86 * v67);
    v89 = v73[3];
    v90 = v65;
    v91 = vmuls_lane_f32(v65, v89, 1);
    v92 = v64;
    v93 = v91 + (v89.f32[0] * v64);
    v94 = *(v73 + 8);
    v95 = v66;
    v96 = v88 + (v93 + (v94 * v66));
    v97 = *(v73 + 12);
    v98 = *(v73 + 5);
    v99 = v53;
    v100 = *v73;
    v101 = vmul_f32(*&v221, *v73);
    v102 = *(v73 + 2);
    v103 = v96 - (((COERCE_FLOAT(vmul_f32(v54, v97).i32[1]) + (v97.f32[0] * v54.f32[0])) + (v98 * v53)) + ((v101.f32[1] + (COERCE_FLOAT(*v73) * *&v221)) + (v102 * v219)));
    v104 = *(v73 + 40);
    v105 = v104 * *(v73 + 41);
    v106 = v105 - (v103 * v77);
    v107 = *(v73 + 38);
    v108 = *(v73 + 39);
    if (v106 < -v108)
    {
      v106 = -v108;
    }

    if (v108 < v106)
    {
      v106 = *(v73 + 39);
    }

    v109 = v106 - v105;
    *(v73 + 40) = v104 + v109;
    v110 = v103 + (v109 * v78);
    v111 = *(v73 + 37);
    v112 = (v80 + ((*(v73 + 34) * v110) + (*(v73 + 36) * v107))) + ((v81 - v74) * v79);
    if (v112 < -v111)
    {
      v112 = -v111;
    }

    if (v111 >= v112)
    {
      v113 = v112;
    }

    else
    {
      v113 = *(v73 + 37);
    }

    v114 = v113 - v107;
    v115 = v110 + ((v113 - v107) * v78);
    if ((a4 & 1) == 0)
    {
      v119 = v74 + (v115 * a9);
      v120 = *(v73 + 27);
      if (v74 > v120 || v119 > v120)
      {
        v129 = *(v73 + 29);
        v128 = *(v73 + 30);
        if (v74 <= v120)
        {
          v128 = 1.0;
        }

        v130 = v115 + (((v120 - v119) * a10) * v128);
        if (v130 < v204)
        {
          v130 = -v205;
        }

        if (v205 < v130)
        {
          v130 = v205;
        }

        v131 = fminf(v129 + ((v130 - v115) * v77), 0.0);
        v116 = v131 - v129;
        v127 = v129 + (v131 - v129);
        goto LABEL_49;
      }

      v121 = *(v73 + 26);
      if (v74 < v121 || v119 < v121)
      {
        v122 = *(v73 + 30);
        if (v74 >= v121)
        {
          v122 = 1.0;
        }

        v123 = v115 + (((v121 - v119) * a10) * v122);
        if (v123 < v204)
        {
          v123 = -v205;
        }

        if (v205 < v123)
        {
          v123 = v205;
        }

        v124 = *(v73 + 28);
        v125 = fmaxf(v124 + ((v123 - v115) * v77), 0.0);
        v116 = v125 - v124;
        v118 = v124 + (v125 - v124);
        goto LABEL_38;
      }
    }

    v116 = -(v115 * v77);
    if (v115 > 0.0)
    {
      v117 = *(v73 + 28);
      if (v116 <= -v117)
      {
        v116 = -v117;
      }

      v118 = v117 + v116;
LABEL_38:
      *(v73 + 28) = v118;
      goto LABEL_50;
    }

    v126 = *(v73 + 29);
    if (v116 >= -v126)
    {
      v116 = -v126;
    }

    v127 = v126 + v116;
LABEL_49:
    *(v73 + 29) = v127;
LABEL_50:
    v38 = v71;
    v53 = v99;
    v132 = (v109 + v114) + v116;
    v57 = v70;
    if (v132 == 0.0)
    {
      v48 = a11;
      v63 = v215;
      v33 = v210;
      v56 = v211;
      v41 = v213;
      v64 = v92;
      v65 = v90;
      v66 = v95;
      v67 = v87;
      v58 = v85;
      v68 = v83;
      v42 = v209;
      v69 = v208;
    }

    else
    {
      *(v73 + 38) = v113;
      v207 = vadd_f32(v207, vmul_n_f32(v100, v132));
      v133 = v203 + (v102 * v132);
      v63 = vadd_f32(v215, vmul_n_f32(v97, v132));
      v62 = v62 + (v98 * v132);
      v200 = vsub_f32(v200, vmul_n_f32(v89, v132));
      v201 = v201 - (v94 * v132);
      v203 = v133;
      v56 = vsub_f32(v211, vmul_n_f32(v82, v132));
      v57 = v57 - (v86 * v132);
      v134 = vmul_n_f32(v73[9], -v132);
      v54 = vsub_f32(v54, vmul_n_f32(v73[6], v132));
      v53 = v53 - (v132 * *(v73 + 14));
      *(&v135 + 1) = *(&v221 + 1);
      *&v135 = vsub_f32(*&v221, vmul_n_f32(*(v73 + 60), v132));
      v221 = v135;
      v48 = a11;
      v219 = v219 - (v132 * *(v73 + 17));
      v68 = v83 + v134.f32[1];
      v58 = v85;
      *&v58 = *&v85 + v134.f32[0];
      v33 = vadd_f32(v210, v134);
      v67 = v87 - (v132 * *(v73 + 20));
      *&v38 = *&v38 - (v132 * *(v73 + 20));
      v64 = v92 - (v132 * *(v73 + 21));
      v41 = v213 - (v132 * *(v73 + 21));
      v65 = v90 - (v132 * *(v73 + 22));
      v42 = v209 - (v132 * *(v73 + 22));
      v66 = v95 - (v132 * *(v73 + 23));
      v69 = v208;
      *&v69 = *&v208 - (v132 * *(v73 + 23));
    }

    goto LABEL_53;
  }

  v136 = 0;
  v137 = 0.0;
  v62 = 0.0;
  v63 = 0;
  v48 = a11;
  v64 = v44;
  v65 = v45;
  v66 = v50;
  v67 = v43;
  v68 = *(&v37 + 1);
  LODWORD(v69) = v51;
LABEL_56:
  *&v243 = v200;
  *(&v243 + 2) = v201;
  if (v55 - v52 < v55)
  {
    v138 = a2[52];
    v139 = *a12;
    do
    {
      v140 = v139 + 1;
      *a12 = v139 + 1;
      v141 = (v138 + 80 * v139);
      v142 = v141[6];
      v143 = v141[7].f32[0];
      v144 = ((vmuls_lane_f32(v68, v142, 1) + (v142.f32[0] * *&v58)) + (v143 * v67)) - ((COERCE_FLOAT(vmul_f32(v54, v142).i32[1]) + (v142.f32[0] * v54.f32[0])) + (v143 * v53));
      v145 = -v144;
      if ((a4 & 1) == 0)
      {
        v146 = a2[54];
        v147 = (v146 + 32 * *(v18 + 32));
        v145 = ((v141[8].f32[0] - ((((v142.f32[1] * *(v146 + 32 * v17 + 4)) + (v142.f32[0] * *(v146 + 32 * v17))) + (v143 * *(v146 + 32 * v17 + 8))) - (((v142.f32[1] * v147[1]) + (v142.f32[0] * *v147)) + (v143 * v147[2])))) * v141[8].f32[1]) - v144;
      }

      v148 = v144 + v145;
      if ((v144 + v145) < v204)
      {
        v148 = -v205;
      }

      if (v205 < v148)
      {
        v148 = v205;
      }

      v149 = v141[7].f32[1] * (v148 - v144);
      if (v149 != 0.0)
      {
        v150 = vmul_n_f32(v142, v149);
        v63 = vadd_f32(v63, v150);
        v62 = v62 + (v143 * v149);
        v56 = vsub_f32(v56, v150);
        v57 = v57 - (v143 * v149);
        v151 = vmul_n_f32(v141[3], -v149);
        v54 = vsub_f32(v54, vmul_n_f32(*v141, v149));
        v53 = v53 - (v149 * v141[1].f32[0]);
        *&v58 = *&v58 + v151.f32[0];
        v68 = v68 + v151.f32[1];
        v67 = v67 - (v149 * v141[4].f32[0]);
        v64 = v64 - (v149 * v141[4].f32[1]);
        v65 = v65 - (v149 * v141[5].f32[0]);
        v66 = v66 - (v149 * v141[5].f32[1]);
        v33 = vadd_f32(v33, v151);
        *&v38 = *&v38 - (v149 * v141[4].f32[0]);
        v41 = v41 - (v149 * v141[4].f32[1]);
        v42 = v42 - (v149 * v141[5].f32[0]);
        *&v69 = *&v69 - (v149 * v141[5].f32[1]);
      }

      v139 = v140;
      --v52;
    }

    while (v52);
    *(&v231 + 3) = v42;
    LODWORD(v232) = v69;
  }

  v49 = a6;
  v214 = v63;
  v212 = v62;
  v202 = v137;
  v206 = v136;
  v233 = __PAIR64__(LODWORD(v68), v58);
  *&v244 = v56;
  *(&v244 + 2) = v57;
  v234 = v67;
  v236 = v64;
  v237 = v65;
  v238 = v66;
  v230 = v33;
  LODWORD(v231) = v38;
  *(&v231 + 2) = v41;
LABEL_69:
  v152 = *(a2[70] + 4 * v17);
  v153 = a2[54];
  v154 = (*(*a2 + 336))(a2, v49);
  if (v152)
  {
    v161 = v154;
    v162 = *(a2[72] + 4 * v17);
    v155.n128_u32[1] = 0;
    if (a4)
    {
      v163 = 0.0;
    }

    else
    {
      v163 = -3.4028e38;
    }

    do
    {
      v164 = v162 + 1;
      v155.n128_f32[0] = v48;
      *v156.i32 = v163;
      physx::Dy::solveStaticConstraint(a2[109] + 48 * v162, &v233, &v243, &v230, (v153 + 32 * v17), a5, *v161, v155, v156, v157, v158, v159, v160);
      v162 = v164;
      --v152;
    }

    while (v152);
  }

  v165 = *v196;
  v167 = *(&v243 + 1);
  LODWORD(v166) = v243;
  v168 = *(&v243 + 2);
  v170 = *(&v244 + 1);
  LODWORD(v169) = v244;
  v171 = *(&v244 + 2);
  if (*v196)
  {
    v222 = v230;
    v220 = *&v231;
    v172 = *(&v231 + 8);
    v173 = *&v232;
    v174 = v198;
    while (1)
    {
      v175 = __clz(__rbit32(v165));
      v176 = __clz(__rbit32(HIDWORD(v165))) + 32;
      v177 = v165 ? v175 : v176;
      physx::Dy::FeatherstoneArticulation::solveInternalConstraintRecursive(&v226, a2, v198, a4, a5, v177, &v230, a8, a9, a10, a11, a12);
      *v184.f32 = v226;
      v166 = v166 + v226.f32[0];
      v167 = v167 + v226.f32[1];
      v168 = v168 + v227;
      *v185.f32 = v228;
      v169 = v169 + v228.f32[0];
      v170 = v170 + v228.f32[1];
      v171 = v171 + v229;
      v165 &= v165 - 1;
      if (!v165)
      {
        break;
      }

      v179.f32[0] = -v227;
      v186.i64[0] = vnegq_f32(v184).u64[0];
      v186.f32[2] = -v227;
      v186.i32[3] = 0;
      v178.f32[0] = -v229;
      v187.i64[0] = vnegq_f32(v185).u64[0];
      v187.f32[2] = -v229;
      v187.i32[3] = 0;
      physx::Dy::SpatialImpulseResponseMatrix::getResponse(&v223, a2[58] + 192 * v17, v186, v187, v178, v179, v180, v181, v182, v183);
      v222 = vadd_f32(v222, *v223.f32);
      v230 = v222;
      v220 = v220 + v223.f32[2];
      *&v231 = v220;
      v172 = vadd_f32(v172, v224);
      *(&v231 + 1) = v172;
      v173 = v173 + v225;
      *&v232 = v173;
    }

    *&v243 = __PAIR64__(LODWORD(v167), LODWORD(v166));
    *(&v243 + 2) = v168;
    *&v244 = __PAIR64__(LODWORD(v170), LODWORD(v169));
    *(&v244 + 2) = v171;
    v206 = vadd_f32(v206, 0);
    v188 = v202 + 0.0;
    v214 = vadd_f32(v214, 0);
    v189 = v212 + 0.0;
  }

  else
  {
    v174 = v198;
    v188 = v202;
    v189 = v212;
  }

  v190 = v174 + 32 * v17;
  *v190 = v166;
  *(v190 + 4) = v167;
  *(v190 + 8) = v168;
  *(v190 + 12) = 0;
  *(v190 + 16) = v169;
  *(v190 + 20) = v170;
  *(v190 + 24) = v171;
  *(v190 + 28) = 0;
  physx::Dy::FeatherstoneArticulation::propagateImpulseW((a2[68] + 96 * v17), v197 + 120, a2[66] + 76 * v17, &v243, &v226);
  v191 = v188 + v227;
  v192 = v189 + v229;
  *v199 = vadd_f32(v206, v226);
  v199[1].f32[0] = v191;
  v199[1].i32[1] = 0;
  result = vadd_f32(v214, v228);
  v199[2] = result;
  v199[3].f32[0] = v192;
  v199[3].i32[1] = 0;
  return result;
}

void physx::Dy::FeatherstoneArticulation::solveInternalConstraints(uint64_t a1, uint64_t a2, float a3, float a4, float a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a8;
  v14 = *(a1 + 616);
  if (*(a1 + 408) || *(a1 + 424) || *(a1 + 880))
  {
    v15 = (a1 + 732);
    v16 = **(a1 + 664);
    v17 = *(a1 + 560);
    v18 = *(a1 + 576);
    v19 = *(a1 + 608);
    v20 = *(a1 + 320);
    v21 = *(a1 + 368);
    v22 = 0.0;
    if (a8)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = -3.4028e38;
    }

    v90 = 0u;
    v91 = 0u;
    v24 = 0;
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0;
    v28 = 0;
    v78 = v16;
    if ((v16 & 1) == 0)
    {
      v29 = v21->f32[1];
      v30 = -v29;
      v31 = v21[1].f32[0];
      LODWORD(a6) = v21[2].i32[0];
      v32 = v21[2].f32[1];
      v33 = -v32;
      v28.i32[0] = v21[3].i32[0];
      v34.i32[0] = *(a1 + 740);
      v35 = *(a1 + 764);
      v36 = (-(v32 * *(a1 + 788)) - (*&a6 * *(a1 + 776))) - (v28.f32[0] * *(a1 + 800));
      v37 = *(a1 + 744);
      v38 = *(a1 + 756);
      v27 = vadd_f32(vsub_f32(vsub_f32(vmul_n_f32(v37, -v29), vmul_n_f32(*v15, v21->f32[0])), vmul_n_f32(v38, v31)), vsub_f32(vsub_f32(vmul_n_f32(*(a1 + 780), -v32), vmul_n_f32(*(a1 + 768), *&a6)), vmul_n_f32(*(a1 + 792), v28.f32[0])));
      v26 = ((-(v29 * *(a1 + 752)) - (v21->f32[0] * v34.f32[0])) - (v31 * v35)) + v36;
      v39 = (-(v29 * *(a1 + 824)) - (v21->f32[0] * *(a1 + 812))) - (v31 * *(a1 + 836));
      v40 = (vmuls_lane_f32(v33, v38, 1) - (v38.f32[0] * *&a6)) - (v35 * v28.f32[0]);
      v34.i32[1] = *(a1 + 752);
      v28 = vadd_f32(vmls_lane_f32(vmls_lane_f32(vmul_n_f32(vzip2_s32(*v15, v37), v33), vzip1_s32(*v15, v37), *&a6, 0), v34, v28, 0), vsub_f32(vsub_f32(vmul_n_f32(*(a1 + 816), v30), vmul_n_f32(*(a1 + 804), v21->f32[0])), vmul_n_f32(*(a1 + 828), v31)));
      *&v90 = v27;
      *(&v90 + 2) = v26;
      v25 = v40 + v39;
      *&v91 = v28;
      *(&v91 + 2) = v40 + v39;
    }

    v41 = v26 + v20[1].f32[0];
    v42 = v25 + v20[3].f32[0];
    v92 = vadd_f32(v27, *v20);
    v93 = v41;
    v94 = 0;
    v95 = vadd_f32(v28, v20[2]);
    v96 = v42;
    v97 = 0;
    v88 = 0uLL;
    v89 = 0uLL;
    v43 = *v17;
    v44 = 0.0;
    v45 = 0;
    if (*v17)
    {
      v76 = v19;
      v77 = v21;
      v79 = a8;
      v46 = *(a1 + 432);
      v47 = v18;
      v48 = (*(*a1 + 336))(a1, 0);
      v55 = *v47;
      do
      {
        v56 = v55 + 1;
        v49.n128_f32[0] = a5;
        *v50.i32 = v23;
        physx::Dy::solveStaticConstraint(*(a1 + 872) + 48 * v55, &v92, &v88, &v90, v46, a9, *v48, v49, v50, v51, v52, v53, v54);
        v55 = v56;
        --v43;
      }

      while (v43);
      v24 = v88;
      v44 = *(&v88 + 2);
      v45 = v89;
      v22 = *(&v89 + 2);
      v11 = v79;
      v19 = v76;
      v21 = v77;
    }

    v87 = 0;
    v57 = *v19;
    if (*v19)
    {
      v80 = a5;
      v58 = *(&v91 + 2);
      v59 = v91;
      v60 = *(&v90 + 2);
      v61 = v90;
      do
      {
        v62 = __clz(__rbit32(v57));
        v63 = __clz(__rbit32(HIDWORD(v57))) + 32;
        if (v57)
        {
          v64 = v62;
        }

        else
        {
          v64 = v63;
        }

        v57 &= v57 - 1;
        physx::Dy::FeatherstoneArticulation::solveInternalConstraintRecursive(&v83, a1, a2, v11, a9, v64, &v90, &v87 + 1, a3, a4, v80, &v87);
        v65.f32[0] = v86;
        if ((v78 & 1) == 0 && v57)
        {
          v66.i32[0] = *(a1 + 740);
          v67 = *(a1 + 752);
          v68 = *(a1 + 764);
          v69 = ((-(v83.f32[1] * v67) - (v66.f32[0] * v83.f32[0])) - (v84 * v68)) + ((-(v85.f32[1] * *(a1 + 788)) - (*(a1 + 776) * v85.f32[0])) - (v86 * *(a1 + 800)));
          v70 = *v15;
          v71 = *(a1 + 744);
          v72 = *(a1 + 756);
          v73 = ((vmuls_lane_f32(-v85.f32[1], v72, 1) - (v72.f32[0] * v85.f32[0])) - (v68 * v86)) + ((-(v83.f32[1] * *(a1 + 824)) - (*(a1 + 812) * v83.f32[0])) - (v84 * *(a1 + 836)));
          v61 = vadd_f32(v61, vadd_f32(vsub_f32(vsub_f32(vmul_n_f32(v71, -v83.f32[1]), vmul_n_f32(*v15, v83.f32[0])), vmul_n_f32(v72, v84)), vsub_f32(vsub_f32(vmul_n_f32(*(a1 + 780), -v85.f32[1]), vmul_n_f32(*(a1 + 768), v85.f32[0])), vmul_n_f32(*(a1 + 792), v86))));
          *&v90 = v61;
          v60 = v60 + v69;
          *(&v90 + 2) = v60;
          v66.f32[1] = v67;
          v59 = vadd_f32(v59, vadd_f32(vmls_lane_f32(vmls_lane_f32(vmul_n_f32(vzip2_s32(v70, v71), -v85.f32[1]), vzip1_s32(v70, v71), v85, 0), v66, v65, 0), vsub_f32(vsub_f32(vmul_n_f32(*(a1 + 816), -v83.f32[1]), vmul_n_f32(*(a1 + 804), v83.f32[0])), vmul_n_f32(*(a1 + 828), v84))));
          *&v91 = v59;
          v58 = v58 + v73;
          *(&v91 + 2) = v58;
        }

        v24 = vadd_f32(v24, v83);
        v44 = v44 + v84;
        v45 = vadd_f32(v45, v85);
        v22 = v22 + v86;
      }

      while (v57);
    }

    *a2 = v24;
    *(a2 + 8) = v44;
    *(a2 + 16) = v45;
    *(a2 + 24) = v22;
    if (v14)
    {
      v74 = (a2 + 16);
      v75 = v21 + 2;
      do
      {
        v75[-2] = vadd_f32(v74[-2], v75[-2]);
        v75[-1].f32[0] = v74[-1].f32[0] + v75[-1].f32[0];
        *v75 = vadd_f32(*v74, *v75);
        v75[1].f32[0] = v74[1].f32[0] + v75[1].f32[0];
        v74 += 4;
        v75 += 4;
        --v14;
      }

      while (v14);
    }

    *(a1 + 685) = 1;
  }
}

void physx::Dy::FeatherstoneArticulation::teleportRootLink(physx::Dy::FeatherstoneArticulation *this)
{
  physx::Dy::FeatherstoneArticulation::jcalc(this, (this + 176), 0);
  v9 = *(this + 154);
  if (v9 >= 2)
  {
    v10 = *(this + 76);
    v134 = *(this + 32);
    v11 = 76;
    v12 = 76 * v9;
    v13 = (v10 + 72);
    v14 = (*(this + 40) + 40);
    v15 = (*(this + 79) + 152);
    v16 = (*(this + 74) + 28);
    v17 = -0.5;
    while (1)
    {
      v18 = *(v10 + 40 * *v13 + 16);
      v20 = *v18;
      v19 = v18[1];
      v22 = v18[2];
      v21 = v18[3];
      v23 = v18[4];
      v24 = v18[5];
      v25 = v18[6];
      v27 = *(v13 - 2);
      v26 = *(v13 - 1);
      v29 = *v15;
      v15 += 20;
      v28 = v29;
      v30 = *(v26 + 44);
      v31 = *(v26 + 48);
      v32 = *(v26 + 52);
      v34 = *(v26 + 16);
      v33 = *(v26 + 20);
      v35 = *(v26 + 24);
      _S13 = *(v16 - 3);
      _S8 = *(v16 - 2);
      _S14 = *(v16 - 1);
      v38 = *v16;
      v40 = *(v26 + 270);
      if (v40 <= 1)
      {
        break;
      }

      if (v40 == 2)
      {
        v81 = *v27;
        v80 = v27[1];
        v82 = v27[2];
        v83 = v27[3];
        v84 = *(v14 - 2);
        v85 = *(v14 - 1);
        v86 = *v14;
        v87 = ((v85 * v85) + (v84 * v84)) + (v86 * v86);
        if (v87 >= 1.0e-24)
        {
          v92 = sqrtf(v87);
          v128 = v85 * (1.0 / v92);
          v129 = v84 * (1.0 / v92);
          v127 = v86 * (1.0 / v92);
          v148 = v24;
          v150 = v20;
          v152 = v19;
          v142 = v30;
          v144 = v31;
          v93 = v22;
          v146 = v32;
          v138 = v33;
          v140 = v35;
          v136 = v34;
          v132 = v27[2];
          v133 = v27[1];
          v130 = v27[3];
          v131 = *v27;
          v94 = __sincosf_stret(v92 * 0.5);
          cosval = v94.__cosval;
          v83 = v130;
          v81 = v131;
          v82 = v132;
          v80 = v133;
          v34 = v136;
          v33 = v138;
          v31 = v144;
          v32 = v146;
          v20 = v150;
          v19 = v152;
          v22 = v93;
          v35 = v140;
          v30 = v142;
          v24 = v148;
          v17 = -0.5;
          v89 = v94.__sinval * v129;
          v90 = v94.__sinval * v128;
          v91 = v94.__sinval * v127;
        }

        else
        {
          cosval = 1.0;
          v89 = 0.0;
          v90 = 0.0;
          v91 = 0.0;
        }

        v95 = (((v83 * v89) + (cosval * v81)) + (v90 * v82)) - (v80 * v91);
        v96 = (((v83 * v90) + (cosval * v80)) + (v91 * v81)) - (v82 * v89);
        v97 = (((v83 * v91) + (cosval * v82)) + (v89 * v80)) - (v81 * v90);
        v98 = (((cosval * v83) - (v89 * v81)) - (v90 * v80)) - (v91 * v82);
        v99 = (((v98 * _S13) - (v95 * v38)) - (v96 * _S14)) + (_S8 * v97);
        v100 = (((v98 * _S8) - (v96 * v38)) - (v97 * _S13)) + (_S14 * v95);
        v101 = (((v98 * _S14) - (v97 * v38)) - (v95 * _S8)) + (_S13 * v96);
        v102 = (((_S13 * v95) + (v98 * v38)) + (v96 * _S8)) + (v97 * _S14);
        v103 = (((v21 * v99) + (v102 * v20)) + (v100 * v22)) - (v19 * v101);
        v104 = (((v21 * v100) + (v102 * v19)) + (v101 * v20)) - (v22 * v99);
        v105 = (((v21 * v101) + (v102 * v22)) + (v99 * v19)) - (v20 * v100);
        v106 = (((v102 * v21) - (v99 * v20)) - (v100 * v19)) - (v101 * v22);
        v107 = sqrtf((((v104 * v104) + (v103 * v103)) + (v105 * v105)) + (v106 * v106));
        v2 = v103 / v107;
        v3 = v104 / v107;
        v4 = v105 / v107;
        v5 = v106 / v107;
        v108 = v34 + v34;
        v109 = v33 + v33;
        v110 = v35 + v35;
        v111 = v17 + (v5 * v5);
        v112 = (((v33 + v33) * v3) + (v2 * v108)) + (v4 * (v35 + v35));
        v61 = -v4;
        v113 = ((v5 * ((v3 * (v35 + v35)) - (v4 * (v33 + v33)))) + (v108 * v111)) + (v2 * v112);
        v62 = -v2;
        v114 = ((v5 * ((v4 * v108) - (v2 * v110))) + ((v33 + v33) * v111)) + (v3 * v112);
        v63 = -v3;
        v115 = ((v5 * ((v2 * v109) - (v3 * v108))) + (v110 * v111)) + (v4 * v112);
        v6 = v113 - v30;
        v7 = v114 - v31;
        v8 = v115 - v32;
        goto LABEL_19;
      }

      if (v40 == 3)
      {
        v64 = v33 + v33;
        v65 = v35 + v35;
        v66 = v17 + (v38 * v38);
        v67 = (((v33 + v33) * _S8) + (_S13 * (v34 + v34))) + (_S14 * (v35 + v35));
        v61 = -_S14;
        v68 = ((v38 * ((_S8 * (v35 + v35)) - (_S14 * (v33 + v33)))) + ((v34 + v34) * v66)) + (_S13 * v67);
        v62 = -_S13;
        v69 = ((((_S14 * (v34 + v34)) - (_S13 * v65)) * v38) + ((v33 + v33) * v66)) + (_S8 * v67);
        v63 = -_S8;
        v70 = ((((_S13 * v64) - (_S8 * (v34 + v34))) * v38) + (v65 * v66)) + (_S14 * v67);
        v6 = v68 - v30;
        v7 = v69 - v31;
        v8 = v70 - v32;
LABEL_14:
        v2 = *(v16 - 3);
        v3 = *(v16 - 2);
        v4 = *(v16 - 1);
        v5 = *v16;
        goto LABEL_19;
      }

      v62 = -v2;
      v63 = -v3;
      v61 = -v4;
LABEL_19:
      v116 = (((v20 * v5) + (v21 * v62)) + (v19 * v61)) + (v3 * v22);
      v117 = (((v19 * v5) + (v21 * v63)) + (v22 * v62)) + (v4 * v20);
      v118 = (((v22 * v5) + (v21 * v61)) + (v20 * v63)) + (v2 * v19);
      v119 = (((v20 * v2) + (v21 * v5)) + (v19 * v3)) + (v22 * v4);
      v120 = sqrtf((((v117 * v117) + (v116 * v116)) + (v118 * v118)) + (v119 * v119));
      v121 = v116 / v120;
      v122 = v117 / v120;
      v123 = v118 / v120;
      v124 = v119 / v120;
      *v27 = v121;
      v27[1] = v122;
      v27[2] = v123;
      v27[3] = v124;
      v125 = v17 + (v124 * v124);
      v126 = (((v7 + v7) * v122) + (v121 * (v6 + v6))) + (v123 * (v8 + v8));
      v11 += 76;
      v27[4] = v23 + (((v124 * ((v122 * (v8 + v8)) - (v123 * (v7 + v7)))) + ((v6 + v6) * v125)) + (v121 * v126));
      v27[5] = v24 + (((v124 * ((v123 * (v6 + v6)) - (v121 * (v8 + v8)))) + ((v7 + v7) * v125)) + (v122 * v126));
      v27[6] = v25 + (((v124 * ((v121 * (v7 + v7)) - (v122 * (v6 + v6)))) + ((v8 + v8) * v125)) + (v123 * v126));
      v13 += 10;
      v14 += 8;
      v16 += 4;
      if (v12 == v11)
      {
        return;
      }
    }

    if (v40)
    {
      v41 = (*(this + 64) + v11);
      v147 = v24;
      v149 = v20;
      v151 = v19;
      v141 = v30;
      v143 = v31;
      v42 = v22;
      v145 = v32;
      v137 = v33;
      v139 = v35;
      v135 = v34;
      v44 = __sincosf_stret(*(v134 + 4 * v28) * v17);
      v43.f32[0] = v44.__cosval;
      v20 = v149;
      v19 = v151;
      v22 = v42;
      v24 = v147;
      v17 = -0.5;
      v45 = vmul_n_f32(*v41, v44.__sinval);
      _D2 = vbsl_s8(vdup_lane_s32(vcgt_f32(0, v43), 0), vneg_f32(v45), v45);
      v47 = -(v44.__sinval * v41[1].f32[0]);
      if (v44.__cosval < 0.0)
      {
        v43.f32[0] = -v44.__cosval;
      }

      else
      {
        v47 = v44.__sinval * v41[1].f32[0];
      }

      __asm { FMLA            S3, S14, V2.S[1] }

      v53 = _S3 - (_S8 * v47);
      v54 = ((vmuls_lane_f32(v38, _D2, 1) + (v43.f32[0] * _S8)) + (v47 * _S13)) - (_D2.f32[0] * _S14);
      __asm
      {
        FMLS            S5, S13, V2.S[1]
        FMLS            S1, S8, V2.S[1]
      }

      v57 = _S1 - (v47 * _S14);
      v58 = sqrtf((((v54 * v54) + (v53 * v53)) + (_S5 * _S5)) + (v57 * v57));
      v2 = v53 / v58;
      v3 = v54 / v58;
      v4 = _S5 / v58;
      v5 = v57 / v58;
      v59 = (v5 * v5) + -0.5;
      v60 = (((v137 + v137) * (v54 / v58)) + (v2 * (v135 + v135))) + ((_S5 / v58) * (v139 + v139));
      v61 = -(_S5 / v58);
      v62 = -v2;
      v63 = -v3;
      v6 = (((v5 * ((v3 * (v139 + v139)) - (v4 * (v137 + v137)))) + ((v135 + v135) * v59)) + (v2 * v60)) - v141;
      v7 = (((v5 * ((v4 * (v135 + v135)) - (v2 * (v139 + v139)))) + ((v137 + v137) * v59)) + (v3 * v60)) - v143;
      v8 = (((v5 * ((v2 * (v137 + v137)) - (v3 * (v135 + v135)))) + ((v139 + v139) * v59)) + (v4 * v60)) - v145;
      goto LABEL_19;
    }

    v71 = v33 + v33;
    v72 = v35 + v35;
    v73 = v17 + (v38 * v38);
    v74 = (((v33 + v33) * _S8) + (_S13 * (v34 + v34))) + (_S14 * (v35 + v35));
    v61 = -_S14;
    v75 = ((v38 * ((_S8 * (v35 + v35)) - (_S14 * (v33 + v33)))) + ((v34 + v34) * v73)) + (_S13 * v74);
    v62 = -_S13;
    v76 = ((((_S14 * (v34 + v34)) - (_S13 * v72)) * v38) + ((v33 + v33) * v73)) + (_S8 * v74);
    v63 = -_S8;
    v77 = ((((_S13 * v71) - (_S8 * (v34 + v34))) * v38) + (v72 * v73)) + (_S14 * v74);
    v78 = (*(this + 64) + v11);
    v79 = *(v134 + 4 * v28);
    v6 = (v75 - v30) + (v79 * v78[3]);
    v7 = (v76 - v31) + (v79 * v78[4]);
    v8 = (v77 - v32) + (v79 * v78[5]);
    goto LABEL_14;
  }
}

void physx::Dy::FeatherstoneArticulation::computeArticulatedSpatialInertia(uint64_t a1, uint64_t a2, double a3, double a4, int8x16_t a5, double a6, int32x4_t a7)
{
  v8 = a2;
  *&v310[36] = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 440);
  v10 = (v9 - 1);
  if (v9 != 1)
  {
    v11 = a1;
    v12 = *(a2 + 432);
    v278 = *(a2 + 456);
    v279 = *(a2 + 448);
    v13 = 76 * v10 + 12;
    v14 = v279 + 160 * v10 + 16;
    v15 = 36 * (v9 - 1);
    v16 = (96 * (v9 - 1)) | 0x10;
    v17 = 0uLL;
    v273 = v12;
    do
    {
      v18 = v278 + 80 * v10;
      v21 = *(v18 + 76);
      v19 = (v18 + 76);
      v20 = v21;
      v281 = v16;
      if (v21)
      {
        v22 = *(v11 + 480) + 112 * v10;
        v23 = (*(v11 + 528) + v13);
        v24 = v14;
        do
        {
          v25.i32[0] = *(v22 + 8);
          v26 = *(v23 - 3);
          v27 = *(v23 - 2);
          v28 = *(v22 + 20);
          v29 = *(v22 + 32);
          v31 = *(v23 - 1);
          v30 = *v23;
          v33 = v23[1];
          v32 = v23[2];
          v34 = (((v26 * v25.f32[0]) + (v27 * v28)) + (v31 * v29)) + (((*v23 * *(v22 + 44)) + (v33 * *(v22 + 56))) + (v32 * *(v22 + 68)));
          v35 = *v22;
          v36 = *(v22 + 12);
          v37 = *(v22 + 24);
          v38 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*v22, v26), vmul_n_f32(v36, v27)), vmul_n_f32(v37, v31)), vadd_f32(vadd_f32(vmul_n_f32(*(v22 + 36), *v23), vmul_n_f32(*(v22 + 48), v33)), vmul_n_f32(*(v22 + 60), v32)));
          v39 = ((vmuls_lane_f32(v33, v37, 1) + (v37.f32[0] * *v23)) + (v29 * v32)) + (((v26 * *(v22 + 80)) + (v27 * *(v22 + 92))) + (v31 * *(v22 + 104)));
          v24[-1].f32[0] = v34;
          *a5.i8 = vadd_f32(vadd_f32(vmul_n_f32(*(v22 + 72), v26), vmul_n_f32(*(v22 + 84), v27)), vmul_n_f32(*(v22 + 96), v31));
          v25.f32[1] = v28;
          v24[-2] = v38;
          *v24 = vadd_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(vzip2_s32(v35, v36), v33), vzip1_s32(v35, v36), v30), v25, v32), *a5.i8);
          v24[1].f32[0] = v39;
          v23 += 6;
          v24 += 4;
          --v20;
        }

        while (v20);
        v40 = *v19;
      }

      else
      {
        v40 = 0;
      }

      v41 = v279 + 160 * v10;
      v280 = v12 + 40 * v10;
      v42 = *(*(v280 + 24) + 270);
      v43 = *(v8 + 304);
      v44 = *(v8 + 320);
      v45 = *(v8 + 368);
      v46 = v45 + 96 * v10;
      v47 = *(v8 + 352);
      v282 = v14;
      if (v42 >= 2)
      {
        if (v42 == 2)
        {
          v72 = 0.0;
          v73 = 1.0;
          v74 = 1.0;
          v290 = xmmword_1E3047670;
          v291 = xmmword_1E3047670;
          v75 = 0.0;
          *&v292 = 1.0;
          v76 = 0.0;
          v7.i64[0] = 0;
          v77 = 0.0;
          v78 = 0.0;
          v79 = 0.0;
          v80 = 1.0;
          v81 = 1.0;
          if (v40)
          {
            v82 = 0;
            v83 = (v47 + v13);
            v84 = &v290;
            do
            {
              v85 = (v41 + 32 * v82);
              v86 = *v85;
              v87 = v85[1];
              v88 = v85[2];
              v89 = v85[4];
              v90 = v85[5];
              v91 = v85[6];
              v92 = v83;
              v93 = v84;
              v94 = v40;
              do
              {
                *v93++ = (((v87 * v92[1]) + (*v92 * v86)) + (v92[2] * v88)) + (((v90 * *(v92 - 2)) + (*(v92 - 3) * v89)) + (*(v92 - 1) * v91));
                v92 += 6;
                --v94;
              }

              while (v94);
              ++v82;
              v84 = (v84 + 12);
            }

            while (v82 != v40);
            v80 = *&v292;
            v79 = *(&v291 + 1);
            v81 = *&v291;
            v78 = *(&v291 + 3);
            v77 = *(&v291 + 2);
            v7.i32[0] = HIDWORD(v290);
            v76 = *(&v290 + 2);
            v75 = *(&v290 + 1);
            v74 = *&v290;
          }

          v95 = (v81 * v80) - (v79 * v78);
          v96 = (v79 * v77) - (*v7.i32 * v80);
          v97 = (*v7.i32 * v78) - (v81 * v77);
          v98 = ((v75 * v96) + (v95 * v74)) + (v97 * v76);
          v99 = 0.0;
          v100 = 1.0;
          v101 = 0.0;
          v102 = 1.0;
          if (v98 != 0.0)
          {
            v73 = v95 * (1.0 / v98);
            v72 = v96 * (1.0 / v98);
            v99 = v97 * (1.0 / v98);
            v100 = ((v80 * v74) - (v77 * v76)) * (1.0 / v98);
            v101 = ((v77 * v75) - (v78 * v74)) * (1.0 / v98);
            v102 = ((v74 * v81) - (v75 * *v7.i32)) * (1.0 / v98);
          }

          *__src = v73;
          *&__src[1] = v72;
          *&__src[2] = v99;
          *&__src[3] = v72;
          *&__src[4] = v100;
          *&__src[5] = v101;
          *&__src[6] = v99;
          *&__src[7] = v101;
          *&__src[8] = v102;
          if (v40)
          {
            v274 = v45;
            v275 = v43;
            v276 = v13;
            v277 = v10;
            v103 = v40;
            v104 = (v44 + v15);
            v105 = __src;
            v106 = v40;
            do
            {
              memcpy(v104, v105, 4 * v40);
              v105 += 3;
              v104 += 12;
              --v106;
            }

            while (v106);
            v107 = 0;
            v11 = a1;
            v8 = a2;
            v10 = v277;
            v17 = 0uLL;
            v45 = v274;
            v43 = v275;
            do
            {
              v108 = 0;
              v109 = 0.0;
              v110 = v282;
              v111 = v44;
              v112 = v40;
              v113 = 0.0;
              v114 = 0;
              do
              {
                v115 = *(v111 + v15);
                v108 = vadd_f32(v108, vmul_n_f32(v110[-2], v115));
                v113 = v113 + (v115 * v110[-1].f32[0]);
                v114 = vadd_f32(v114, vmul_n_f32(*v110, v115));
                v109 = v109 + (v115 * v110[1].f32[0]);
                v111 += 4;
                v110 += 4;
                --v112;
              }

              while (v112);
              v116 = (v46 + 32 * v107);
              *v116 = v108;
              v116[1].f32[0] = v113;
              v116[1].i32[1] = 0;
              v116[2] = v114;
              v116[3].f32[0] = v109;
              v116[3].i32[1] = 0;
              ++v107;
              v44 += 12;
            }

            while (v107 != v40);
            v117 = v310;
            v118 = v282;
            v119 = v40;
            do
            {
              v120 = v118->i32[1];
              *(v117 - 9) = v118->i32[0];
              *(v117 - 6) = v120;
              *(v117 - 3) = v118[1].i32[0];
              v121 = v118[-2].i32[1];
              *v117 = v118[-2].i32[0];
              v117[3] = v121;
              v122 = v118[-1].i32[0];
              v118 += 4;
              v117[6] = v122;
              ++v117;
              --v119;
            }

            while (v119);
            v13 = v276;
          }

          else
          {
            v103 = 0;
          }

          v123 = v281;
          v124 = 0;
          v125 = &v309;
          do
          {
            v126 = &v293 + 4 * v124;
            *v126->f32 = v17;
            *v126[2].f32 = v17;
            if (v40)
            {
              v127 = 0;
              v128 = 0.0;
              v129 = (v45 + v281);
              v130 = v125;
              v131 = v103;
              v132 = 0.0;
              v133 = 0;
              do
              {
                v134 = *v130++;
                v127 = vadd_f32(v127, vmul_n_f32(v129[-2], v134));
                v132 = v132 + (v134 * v129[-1].f32[0]);
                v133 = vadd_f32(v133, vmul_n_f32(*v129, v134));
                v128 = v128 + (v134 * v129[1].f32[0]);
                v129 += 4;
                --v131;
              }

              while (v131);
              *v126 = v127;
              v126[1].f32[0] = v132;
              v126[2] = v133;
              v126[3].f32[0] = v128;
            }

            ++v124;
            v125 += 3;
          }

          while (v124 != 6);
          v48 = v13;
          *v67.f32 = v293;
          v57.i64[0] = v299;
          v135 = *v303;
          v7.i32[0] = v296;
          v59.i32[0] = *&v303[8];
          v68.i64[0] = v305;
          v69.i64[0] = v308;
          v67.i64[1] = __PAIR64__(v298, v294.u32[0]);
          v57.i64[1] = v302;
          v283 = v67;
          v284 = v57;
          v64 = vextq_s8(vextq_s8(v135, v135, 4uLL), v304, 0xCuLL);
          v64.i32[3] = v304.i32[2];
          v68.i64[1] = __PAIR64__(v307, v306);
          v285 = v64;
          v286 = v68;
          v69.i64[1] = v295;
          v287 = v69;
          *v288 = v296;
          v135.i64[0] = v300;
          *&v288[4] = v300;
          *&v288[20] = *&v303[12];
          v71 = vextq_s8(vextq_s8(v7, v7, 4uLL), v135, 0xCuLL);
          v71.i32[3] = v301;
          v12 = v273;
          goto LABEL_42;
        }

        v48 = v13;
        *&v288[12] = v17;
        v287 = v17;
        *v288 = v17;
        v67 = 0uLL;
        v59.i32[0] = 0;
        v57 = 0uLL;
        v285 = v17;
        v286 = v17;
        v64 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        v71 = 0uLL;
        v283 = v17;
        v284 = v17;
      }

      else
      {
        v48 = v13;
        v49 = (v47 + 76 * v10);
        v50 = (((v49[4] * *(v41 + 4)) + (v49[3] * *v41)) + (v49[5] * *(v41 + 8))) + (((v49[1] * *(v41 + 20)) + (*v49 * *(v41 + 16))) + (v49[2] * *(v41 + 24)));
        if (v50 <= 0.00001)
        {
          v51 = 0.0;
        }

        else
        {
          v51 = 1.0 / v50;
        }

        *(v44 + 36 * v10) = v51;
        *a5.i32 = *v41 * v51;
        v52.i64[0] = *(v41 + 4);
        v52.i64[1] = *(v41 + 16);
        v53 = vmulq_n_f32(v52, v51);
        v54 = v51 * *(v41 + 24);
        *v46 = a5.i32[0];
        *(v46 + 4) = v53.i64[0];
        *(v46 + 12) = 0;
        *(v46 + 16) = v53.i64[1];
        *(v46 + 24) = v54;
        *(v46 + 28) = 0;
        v7.i64[0] = *(v41 + 16);
        v55 = vzip1q_s32(v7, v7);
        v55.i32[2] = v7.i32[0];
        a7.i32[0] = *(v41 + 24);
        v56.i64[0] = v53.i64[0];
        v56.i64[1] = __PAIR64__(v53.u32[0], a5.u32[0]);
        v52.i64[0] = *(v41 + 20);
        v57 = vmulq_f32(v56, vzip1q_s32(v52, v52));
        v59 = vuzp2q_s32(v53, vzip1q_s32(v53, v53));
        v58 = v59;
        v58.i32[1] = a5.i32[0];
        v58.i32[3] = v59.i32[0];
        *v59.i32 = vmuls_lane_f32(*a7.i32, v53, 2);
        v60 = vmuls_lane_f32(*a7.i32, v53, 3);
        v61 = v54 * *a7.i32;
        a7.i32[1] = *v41;
        v62 = vdupq_lane_s32(*a7.i8, 1);
        v63 = vzip1q_s32(a7, v62);
        v62.i64[0] = *(v41 + 4);
        v64 = vmulq_f32(v58, v63);
        v65 = vzip1q_s32(v62, v62);
        v65.i32[2] = v62.i32[0];
        v66 = vextq_s8(vextq_s8(a5, a5, 4uLL), v53, 0xCuLL);
        v66.i32[3] = v66.i32[0];
        v67 = vmulq_f32(v66, v55);
        v68 = vmulq_f32(v66, v65);
        *v62.f32 = vdup_lane_s32(*v62.f32, 1);
        *&v62.u32[2] = vdup_lane_s32(*v7.i8, 0);
        v69 = vmulq_f32(v53, v62);
        v70 = vextq_s8(v53, v57, 4uLL);
        v70.f32[0] = v54;
        v70.f32[3] = v54;
        v71 = vmulq_f32(v70, vzip1q_s32(v7, vdupq_lane_s32(*v7.i8, 1)));
        *&v288[20] = v60;
        *&v288[24] = v61;
      }

      v123 = v281;
LABEL_42:
      v136 = v43 + 112 * v10;
      v137 = *(v136 + 104) - *&v288[24];
      v138 = vsubq_f32(*(v136 + 16), v57);
      v283 = vsubq_f32(*v136, v67);
      v284 = v138;
      v139 = vsubq_f32(*(v136 + 48), v68);
      v285 = vsubq_f32(*(v136 + 32), v64);
      v286 = v139;
      v140 = vsubq_f32(*(v136 + 80), v71);
      v287 = vsubq_f32(*(v136 + 64), v69);
      *v288 = v140;
      v59.i32[1] = *&v288[20];
      *&v288[16] = vsub_f32(*(v136 + 96), *v59.i8);
      *&v288[24] = v137;
      v138.i32[0] = *(v41 + 120);
      v293.i32[0] = 0;
      v140.i64[0] = *(v41 + 124);
      v293.i32[1] = v140.i32[1];
      v294 = vneg_f32(*v140.f32);
      LODWORD(v295) = 0;
      HIDWORD(v295) = v138.i32[0];
      v296 = v140.i32[0];
      v297 = -v138.f32[0];
      v298 = 0;
      physx::Dy::FeatherstoneArticulation::translateInertia(&v293, &v283);
      v141 = (*(v8 + 304) + 112 * *(v280 + 32));
      v142 = vadd_f32(*&v283.u32[2], v141[1]);
      *v141 = vadd_f32(*v283.f32, *v141);
      v141[1] = v142;
      v143 = vadd_f32(*&v284.u32[2], v141[3]);
      v141[2] = vadd_f32(*v284.f32, v141[2]);
      v141[3] = v143;
      v144 = vadd_f32(*&v285.u32[2], v141[5]);
      v141[4] = vadd_f32(*v285.f32, v141[4]);
      v141[5] = v144;
      v145 = vadd_f32(*&v286.u32[2], v141[7]);
      v141[6] = vadd_f32(*v286.f32, v141[6]);
      v141[7] = v145;
      v146 = vadd_f32(*&v287.u32[2], v141[9]);
      v141[8] = vadd_f32(*v287.f32, v141[8]);
      v141[9] = v146;
      v147 = vadd_f32(*&v288[8], v141[11]);
      *a5.i8 = vadd_f32(*&v288[16], v141[12]);
      v148 = *&v288[24] + v141[13].f32[0];
      v141[10] = vadd_f32(*v288, v141[10]);
      v141[11] = v147;
      v13 = v48 - 76;
      v14 = &v282[-20];
      v141[12] = *a5.i8;
      v15 -= 36;
      v16 = v123 - 96;
      v141[13].f32[0] = v148;
      --v10;
      v17 = 0uLL;
    }

    while (v10);
  }

  v149 = *(v8 + 304);
  v150 = *(v149 + 72);
  v151 = *(v149 + 84);
  v152.i32[3] = 0;
  v152.i32[0] = v151.i32[3];
  *(v152.i64 + 4) = *(v149 + 100);
  v153 = vdup_lane_s32(*v152.f32, 1);
  v154 = v152;
  v154.i32[2] = *(v149 + 104);
  v161.i64[1] = 0;
  v155 = *(v149 + 36);
  v156 = *(v149 + 48);
  v157.i32[3] = 0;
  v157.i32[0] = v156.i32[3];
  *(v157.i64 + 4) = *(v149 + 64);
  v158 = vdup_lane_s32(*v157.f32, 1);
  v159 = v157;
  v159.i32[2] = *(v149 + 68);
  v160 = *(v149 + 12);
  v161.i32[0] = v160.i32[3];
  v162 = *v149;
  v164 = *(v149 + 28);
  v163 = *(v149 + 32);
  v165 = vext_s8(vdup_lane_s32(*v150.f32, 0), *v151.f32, 4uLL);
  *&v176.u32[2] = vdup_laneq_s32(v151, 3);
  *v166.f32 = vext_s8(*v150.f32, vdup_lane_s32(*v151.f32, 1), 4uLL);
  *&v166.u32[2] = v153;
  *v167.f32 = vext_s8(vdup_laneq_s32(v150, 2), *&vextq_s8(v151, v151, 8uLL), 4uLL);
  v167.i64[1] = vextq_s8(v154, v154, 8uLL).u64[0];
  v168 = vaddq_f32(v154, v167);
  v169.i64[0] = 0x3F0000003F000000;
  v169.i64[1] = 0x3F0000003F000000;
  v170 = vmulq_f32(vaddq_f32(v150, v176), v169);
  v171 = v170;
  v171.i32[3] = 0;
  v172 = vmulq_f32(vaddq_f32(v151, v166), v169);
  v173 = v172;
  v173.i32[3] = 0;
  v174 = vmulq_f32(v168, v169);
  v175 = v174;
  v175.i32[3] = 0;
  *v176.f32 = vext_s8(vdup_lane_s32(*v155.f32, 0), *v156.f32, 4uLL);
  *v177.f32 = vext_s8(*v155.f32, vdup_lane_s32(*v156.f32, 1), 4uLL);
  *&v177.u32[2] = v158;
  *v178.f32 = vext_s8(vdup_laneq_s32(v155, 2), *&vextq_s8(v156, v156, 8uLL), 4uLL);
  v178.i64[1] = vextq_s8(v159, v159, 8uLL).u64[0];
  v179 = vaddq_f32(v156, v177);
  v180 = vaddq_f32(v159, v178);
  v159.i64[0] = vextq_s8(v173, v173, 8uLL).u64[0];
  v181 = vextq_s8(v175, v175, 8uLL).u64[0];
  v182 = vext_s8(*v174.f32, v181, 4uLL);
  v183 = vext_s8(*v172.f32, *v159.f32, 4uLL);
  v184 = vmls_f32(vmul_f32(*v159.f32, *v174.f32), *v172.f32, v181);
  v185 = vmls_f32(vmul_f32(*v172.f32, v182), v183, *v174.f32);
  *v187.f32 = vext_s8(v185, v184, 4uLL);
  v185.i32[1] = 0;
  v186 = vmulq_f32(v179, v169);
  v187.i64[1] = v185.u32[0];
  v188 = vextq_s8(v171, v171, 8uLL).u64[0];
  v189 = vext_s8(*v170.f32, v188, 4uLL);
  v190 = vmls_f32(vmul_f32(*v174.f32, v189), v182, *v170.f32);
  v191 = vmulq_f32(v171, v187);
  v191.i64[0] = vpaddq_f32(v191, v191).u64[0];
  v192 = vpadd_f32(*v191.f32, *v191.f32);
  v193 = vrecpe_f32(v192);
  v194 = 4;
  do
  {
    v193 = vmul_f32(v193, vrecps_f32(v192, v193));
    --v194;
  }

  while (v194);
  v161.i32[1] = v164;
  *&v176.u32[2] = vdup_laneq_s32(v156, 3);
  v195.i64[0] = 0x3F0000003F000000;
  v195.i64[1] = 0x3F0000003F000000;
  v199 = vmulq_f32(vaddq_f32(v155, v176), v195);
  v196 = v162;
  v196.i32[3] = 0;
  v197 = v161;
  v197.i32[2] = v163;
  v198 = v160;
  v198.i32[3] = 0;
  v199.i32[3] = 0;
  v186.i32[3] = 0;
  v200 = vmulq_f32(v180, v195);
  v200.i32[3] = 0;
  if (v192.f32[0] == 0.0)
  {
    v206 = xmmword_1E30476A0;
    v204 = xmmword_1E3047680;
    v201 = xmmword_1E3047670;
  }

  else
  {
    v201 = vmulq_n_f32(v187, v193.f32[0]);
    v201.i32[3] = 0;
    *v202.f32 = vext_s8(vdup_lane_s32(v184, 0), vmls_f32(vmul_f32(*v170.f32, v181), *v174.f32, v188), 4uLL);
    *&v202.u32[2] = v190;
    v203 = vmls_f32(vmul_f32(*v170.f32, v183), v189, *v172.f32);
    v204 = vmulq_n_f32(v202, v193.f32[0]);
    v204.i32[3] = 0;
    *v205.f32 = vext_s8(vdup_lane_s32(v185, 0), v190, 4uLL);
    *&v205.u32[2] = v203;
    v206 = vmulq_n_f32(v205, v193.f32[0]);
    v206.i32[3] = 0;
  }

  v207 = vnegq_f32(v196);
  v207.i32[3] = 0;
  v208 = vnegq_f32(v198);
  v208.i32[3] = 0;
  v209 = vnegq_f32(v197);
  v209.i32[3] = 0;
  v210 = vmulq_n_f32(v207, v201.f32[0]);
  v210.i32[3] = 0;
  v211 = vmulq_lane_f32(v208, *v201.f32, 1);
  v211.i32[3] = 0;
  v212 = vmulq_laneq_f32(v209, v201, 2);
  v212.i32[3] = 0;
  v213 = vaddq_f32(v210, v211);
  v214 = vmulq_n_f32(v207, v204.f32[0]);
  v214.i32[3] = 0;
  v215 = vmulq_lane_f32(v208, *v204.f32, 1);
  v215.i32[3] = 0;
  v216 = vaddq_f32(v212, v213);
  v217 = vmulq_laneq_f32(v209, v204, 2);
  v217.i32[3] = 0;
  v218 = vaddq_f32(v217, vaddq_f32(v214, v215));
  v219 = vmulq_n_f32(v207, v206.f32[0]);
  v219.i32[3] = 0;
  v220 = vmulq_lane_f32(v208, *v206.f32, 1);
  v220.i32[3] = 0;
  v221 = vmulq_laneq_f32(v209, v206, 2);
  v221.i32[3] = 0;
  v222 = vaddq_f32(v221, vaddq_f32(v219, v220));
  v223 = vmulq_n_f32(v216, v162.f32[0]);
  v223.i32[3] = 0;
  v224 = vmulq_n_f32(v218, v160.f32[0]);
  v224.i32[3] = 0;
  v225 = vmulq_n_f32(v222, *vdup_laneq_s32(v160, 3).i32);
  v225.i32[3] = 0;
  v226 = vaddq_f32(vaddq_f32(v223, v224), v225);
  v227 = vmulq_lane_f32(v216, *v162.f32, 1);
  v227.i32[3] = 0;
  v228 = vmulq_lane_f32(v218, *v160.f32, 1);
  v228.i32[3] = 0;
  v229 = vmulq_n_f32(v222, *vdup_lane_s32(*v161.f32, 1).i32);
  v229.i32[3] = 0;
  v230 = vmulq_laneq_f32(v216, v162, 2);
  v230.i32[3] = 0;
  v231 = vmulq_laneq_f32(v218, v160, 2);
  v231.i32[3] = 0;
  v232 = vaddq_f32(vaddq_f32(v227, v228), v229);
  v233 = vmulq_laneq_f32(v222, v197, 2);
  v233.i32[3] = 0;
  v234 = vaddq_f32(vaddq_f32(v230, v231), v233);
  v235 = vaddq_f32(v199, v226);
  v236 = vaddq_f32(v186, v232);
  v237 = vaddq_f32(v200, v234);
  v238 = vextq_s8(v237, v237, 8uLL).u64[0];
  v226.i64[0] = vextq_s8(v237, v237, 4uLL).u64[0];
  v239 = vextq_s8(v236, v236, 4uLL).u64[0];
  v240 = vmls_f32(vmul_f32(*&vextq_s8(v236, v236, 8uLL), *v237.i8), *v236.i8, v238);
  v241 = vmls_f32(vmul_f32(*v236.i8, *v226.f32), v239, *v237.i8);
  *v242.f32 = vext_s8(v241, v240, 4uLL);
  v241.i32[1] = 0;
  v242.i64[1] = v241.u32[0];
  v243 = vextq_s8(v235, v235, 4uLL).u64[0];
  v244 = vmls_f32(vmul_f32(*v237.i8, v243), *v226.f32, *v235.f32);
  v245 = vmulq_f32(v235, v242);
  v245.i64[0] = vpaddq_f32(v245, v245).u64[0];
  v246 = vpadd_f32(*v245.f32, *v245.f32);
  v247 = vrecpe_f32(v246);
  v248 = 4;
  do
  {
    v247 = vmul_f32(v247, vrecps_f32(v246, v247));
    --v248;
  }

  while (v248);
  if (v246.f32[0] == 0.0)
  {
    v257 = xmmword_1E30476A0;
    v255 = xmmword_1E3047680;
    v252 = xmmword_1E3047670;
  }

  else
  {
    v249 = vextq_s8(v235, v235, 8uLL).u64[0];
    v250 = vmul_f32(*v235.f32, v239);
    v251 = vmul_f32(v238, *v235.f32);
    v252 = vmulq_n_f32(v242, v247.f32[0]);
    v252.i32[3] = 0;
    *v253.f32 = vext_s8(vdup_lane_s32(v240, 0), vmls_f32(v251, *v237.i8, v249), 4uLL);
    *&v253.u32[2] = v244;
    v254 = vmls_f32(v250, v243, *v236.i8);
    v255 = vmulq_n_f32(v253, v247.f32[0]);
    v255.i32[3] = 0;
    *v256.f32 = vext_s8(vdup_lane_s32(v241, 0), v244, 4uLL);
    *&v256.u32[2] = v254;
    v257 = vmulq_n_f32(v256, v247.f32[0]);
    v257.i32[3] = 0;
  }

  v258 = vdupq_laneq_s32(v216, 2).u64[0];
  v259 = vaddq_f32(vaddq_f32(vmulq_n_f32(v252, v216.f32[0]), vmulq_lane_f32(v255, *v216.f32, 1)), vmulq_laneq_f32(v257, v216, 2));
  v260 = vdupq_lane_s32(*v218.f32, 1).u64[0];
  v261 = vextq_s8(v218, v218, 8uLL).u64[0];
  v262 = vaddq_f32(vaddq_f32(vmulq_n_f32(v252, v218.f32[0]), vmulq_lane_f32(v255, *v218.f32, 1)), vmulq_laneq_f32(v257, v218, 2));
  *v263.f32 = vext_s8(*&vdupq_lane_s32(*v216.f32, 0), *v218.f32, 4uLL);
  v263.i64[1] = vdup_lane_s32(*v222.f32, 0).u32[0];
  *v264.f32 = vext_s8(*v216.f32, v260, 4uLL);
  v264.i64[1] = vdup_lane_s32(*v222.f32, 1).u32[0];
  *v265.f32 = vext_s8(v258, v261, 4uLL);
  v265.i64[1] = vdup_laneq_s32(v222, 2).u32[0];
  v266 = vaddq_f32(vaddq_f32(vmulq_n_f32(v252, v222.f32[0]), vmulq_lane_f32(v255, *v222.f32, 1)), vmulq_laneq_f32(v257, v222, 2));
  v267 = vaddq_f32(v201, vaddq_f32(vmulq_laneq_f32(v265, v259, 2), vaddq_f32(vmulq_n_f32(v263, v259.f32[0]), vmulq_lane_f32(v264, *v259.f32, 1))));
  v268 = vaddq_f32(v204, vaddq_f32(vmulq_laneq_f32(v265, v262, 2), vaddq_f32(vmulq_n_f32(v263, v262.f32[0]), vmulq_lane_f32(v264, *v262.f32, 1))));
  v269 = vaddq_f32(v206, vaddq_f32(vmulq_laneq_f32(v265, v266, 2), vaddq_f32(vmulq_n_f32(v263, v266.f32[0]), vmulq_lane_f32(v264, *v266.f32, 1))));
  v264.i64[0] = vtrn1q_s32(v262, v266).u64[0];
  v264.i64[1] = __PAIR64__(v262.u32[1], v259.u32[1]);
  *(v8 + 556) = v259.i32[0];
  v270 = vtrn2q_s32(v266, vuzp1q_s32(v259, v266));
  v270.i32[2] = v262.i32[2];
  *(v8 + 560) = v264;
  *(v8 + 576) = v270;
  v267.i32[3] = v268.i32[0];
  *(v8 + 592) = v267;
  *(v8 + 608) = vextq_s8(vextq_s8(v268, v268, 0xCuLL), v269, 8uLL);
  v255.i32[3] = v257.i32[0];
  *(v8 + 624) = vextq_s8(vuzp1q_s32(v269, v269), v252, 0xCuLL);
  *(v8 + 640) = v255;
  *(v8 + 656) = vextq_s8(v257, v257, 4uLL).u64[0];
}

float32_t physx::Dy::FeatherstoneArticulation::computeArticulatedSpatialZ(float32_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (*(a3 + 440) - 1);
  if (*(a3 + 440) != 1)
  {
    v5 = *(a3 + 432);
    v6 = *(a3 + 448);
    v7 = *(a3 + 456);
    v8 = a4[2];
    v9 = a4[3];
    v10 = a4[8];
    v11 = *(a3 + 352) + 76 * v4 + 12;
    v12 = *(a3 + 368) + 96 * v4;
    v13 = *(a3 + 304);
    v14 = v6 + 160 * v4 + 132;
    do
    {
      v15 = v7 + 80 * v4;
      v16 = v13 + 112 * v4;
      v17 = (v8 + 32 * v4);
      v18.i32[0] = *(v16 + 8);
      v19 = *v17;
      v20 = v17[1];
      v21 = v17[2];
      v22 = *(v16 + 32);
      v23 = v17[4];
      v24 = v17[5];
      v25 = v17[6];
      v26 = (((*v17 * v18.f32[0]) + (v20 * *(v16 + 20))) + (v21 * v22)) + (((v23 * *(v16 + 44)) + (v24 * *(v16 + 56))) + (v25 * *(v16 + 68)));
      v27 = ((*v17 * *(v16 + 80)) + (v20 * *(v16 + 92))) + (v21 * *(v16 + 104));
      v28 = (v9 + 32 * v4);
      v29 = *(v16 + 12);
      v30 = *(v16 + 24);
      v31 = ((vmuls_lane_f32(v24, v30, 1) + (v30.f32[0] * v23)) + (v22 * v25)) + v27;
      v32 = vadd_f32(vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*v16, v19), vmul_n_f32(v29, v20)), vmul_n_f32(v30, v21)), vadd_f32(vadd_f32(vmul_n_f32(*(v16 + 36), v23), vmul_n_f32(*(v16 + 48), v24)), vmul_n_f32(*(v16 + 60), v25))), *v28);
      v33 = v26 + v28[1].f32[0];
      v18.i32[1] = *(v16 + 20);
      v34 = vadd_f32(vadd_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(vzip2_s32(*v16, v29), v24), vzip1_s32(*v16, v29), v23), v18, v25), vadd_f32(vadd_f32(vmul_n_f32(*(v16 + 72), v19), vmul_n_f32(*(v16 + 84), v20)), vmul_n_f32(*(v16 + 96), v21))), v28[2]);
      v35 = v31 + v28[3].f32[0];
      v36 = *(v15 + 76);
      if (*(v15 + 76))
      {
        v37 = 0;
        v38 = (v10 + 4 * *(v15 + 72));
        v39 = 32 * v36;
        v40 = 0;
        v41 = 0.0;
        v42 = v14;
        v43 = v11;
        v44 = 0.0;
        v45 = 0;
        do
        {
          v46 = *v38++;
          v47 = v46 - ((((v32.f32[1] * v43[1]) + (*v43 * v32.f32[0])) + (v43[2] * v33)) + (((v34.f32[1] * *(v43 - 2)) + (*(v43 - 3) * v34.f32[0])) + (*(v43 - 1) * v35)));
          *v42++ = v47;
          v40 = vadd_f32(v40, vmul_n_f32(*(v12 + v37), v47));
          v44 = v44 + (v47 * *(v12 + v37 + 8));
          v45 = vadd_f32(v45, vmul_n_f32(*(v12 + v37 + 16), v47));
          v41 = v41 + (v47 * *(v12 + v37 + 24));
          v37 += 32;
          v43 += 6;
        }

        while (v39 != v37);
      }

      else
      {
        v40 = 0;
        v44 = 0.0;
        v41 = 0.0;
        v45 = 0;
      }

      v48 = v6 + 160 * v4;
      _D1 = vadd_f32(v32, v40);
      *&v50 = v33 + v44;
      v51 = vadd_f32(v34, v45);
      v52 = v35 + v41;
      _S4 = *(v48 + 120);
      v54 = (v9 + 32 * *(v5 + 40 * v4 + 32));
      v55 = *&v50 + v54[1].f32[0];
      v56 = *(v48 + 124);
      v57.i32[0] = vdup_lane_s32(v56, 1).u32[0];
      v57.i32[1] = _S4;
      v58 = vrev64_s32(_D1);
      v59 = __PAIR64__(v50, v58.u32[0]);
      v58.i32[0] = v50;
      __asm { FMLA            S0, S4, V1.S[1] }

      *v54 = vadd_f32(_D1, *v54);
      v54[1].f32[0] = v55;
      v54[2] = vadd_f32(vadd_f32(v51, vmla_f32(vmul_f32(v59, vneg_f32(v57)), v58, v56)), v54[2]);
      result = (v52 + _S0) + v54[3].f32[0];
      v54[3].f32[0] = result;
      v11 -= 76;
      v12 -= 96;
      v14 -= 160;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t physx::Dy::FeatherstoneArticulation::computeJointAccelerationW(uint64_t result, uint64_t a2, unsigned __int8 a3, float *a4, uint64_t a5, unsigned int a6)
{
  v26[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = *a4;
    v7 = a4[1];
    v8 = a4[2];
    v9 = (a2 + 132);
    v10 = a4[4];
    v11 = a4[5];
    v12 = (a2 + 16);
    v13 = v26;
    v14 = a3;
    v15 = a4[6];
    do
    {
      v16 = *v9++;
      *v13++ = v16 - ((((v7 * v12[1]) + (*v12 * v6)) + (v12[2] * v8)) + (((v11 * *(v12 - 3)) + (*(v12 - 4) * v10)) + (*(v12 - 2) * v15)));
      v12 += 8;
      --v14;
    }

    while (v14);
    v17 = 0;
    v18 = *(result + 496) + 36 * a6;
    do
    {
      *(a5 + 4 * v17) = 0;
      v19 = 0.0;
      v20 = v26;
      v21 = v18;
      v22 = a3;
      do
      {
        v23 = *v21;
        v21 += 3;
        v24 = v23;
        v25 = *v20++;
        v19 = v19 + (v24 * v25);
        *(a5 + 4 * v17) = v19;
        --v22;
      }

      while (v22);
      ++v17;
      v18 += 4;
    }

    while (v17 != a3);
  }

  return result;
}

uint64_t physx::Dy::FeatherstoneArticulation::computeLinkAcceleration(uint64_t result, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, __n128 _Q5)
{
  v10 = *(a2 + 440);
  v11 = *(a2 + 472);
  v12 = *a3;
  v13 = *(a3 + 8);
  v75 = *(a3 + 16);
  v76 = result;
  if ((**(a2 + 488) & 1) == 0)
  {
    v14 = *(a3 + 24);
    v15.i32[0] = *(a2 + 564);
    v16 = *(a2 + 576);
    v17 = *(a2 + 588);
    v18 = *v14;
    v19 = v14[1];
    v20 = v14[2];
    v21 = v14[4];
    v22 = v14[5];
    v23 = v14[6];
    v24 = (((v15.f32[0] * *v14) + (v16 * v19)) + (v17 * v20)) + (((*(a2 + 600) * v21) + (*(a2 + 612) * v22)) + (*(a2 + 624) * v23));
    v25 = *(a2 + 556);
    v26 = *(a2 + 568);
    v27 = *(a2 + 580);
    v28 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(v25, *v14), vmul_n_f32(v26, v19)), vmul_n_f32(v27, v20)), vadd_f32(vadd_f32(vmul_n_f32(*(a2 + 592), v21), vmul_n_f32(*(a2 + 604), v22)), vmul_n_f32(*(a2 + 616), v23)));
    v29 = (((*(a2 + 636) * *v14) + (*(a2 + 648) * v19)) + (*(a2 + 660) * v20)) + ((vmuls_lane_f32(v22, v27, 1) + (v27.f32[0] * v21)) + (v17 * v23));
    v13[1].f32[0] = -v24;
    v13[1].i32[1] = 0;
    v15.f32[1] = v16;
    v30 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*(a2 + 628), v18), vmul_n_f32(*(a2 + 640), v19)), vmul_n_f32(*(a2 + 652), v20)), vmla_n_f32(vmla_n_f32(vmul_n_f32(vzip2_s32(v25, v26), v22), vzip1_s32(v25, v26), v21), v15, v23));
    *v13 = vneg_f32(v28);
    v13[2] = vneg_f32(v30);
    v13[3].f32[0] = -v29;
    v13[3].i32[1] = 0;
    *v12 = vsub_f32(*v12, vmul_n_f32(v28, v11));
    v12[1].f32[0] = v12[1].f32[0] - (v11 * v24);
    v12[2] = vsub_f32(v12[2], vmul_n_f32(v30, v11));
    v12[3].f32[0] = v12[3].f32[0] - (v11 * v29);
  }

  if (v10 >= 2)
  {
    v31 = 1;
    v32 = *(a3 + 56);
    v73 = *(a3 + 48);
    v33 = 96;
    v74 = v11;
    do
    {
      v34 = *(a2 + 432) + 40 * v31;
      v35 = *(a2 + 456);
      v36 = *(a2 + 448) + 160 * v31;
      v37 = *(v34 + 24);
      _S0 = *(v36 + 120);
      v39 = &v13[4 * *(v34 + 32)];
      _Q5.n128_u64[0] = *v39;
      _D1 = *(v36 + 124);
      v41.i32[0] = vdup_lane_s32(_D1, 1).u32[0];
      v41.i32[1] = _S0;
      v42 = vrev64_s32(*v39);
      v42.i32[0] = v39[1].i32[0];
      v43 = vmls_f32(vmul_f32(v41, *(v39 + 4)), v42, _D1);
      __asm { FMLS            S1, S0, V5.S[1] }

      v48 = vadd_f32(v39[2], v43);
      v49 = _D1.f32[0] + v39[3].f32[0];
      v77 = v42.f32[0];
      v78 = _Q5;
      v79 = *v39;
      v80 = v42.i32[0];
      v81 = 0;
      v82 = v48;
      v83 = v49;
      v84 = 0;
      v50 = v35 + 80 * v31;
      v51 = (v32 + 4 * *(v50 + 72));
      result = physx::Dy::FeatherstoneArticulation::computeJointAccelerationW(v76, v36, *(v50 + 76), &v79, v51, v31);
      v52 = *(v50 + 76);
      if (*(v50 + 76))
      {
        v53 = (v73 + 4 * *(v50 + 72));
        v54 = (*(a2 + 352) + v33);
        v55 = 0;
        v56 = 0.0;
        v57 = 0.0;
        v58 = 0;
        v59 = v74;
        do
        {
          v60 = *v53 + (*v51 * v74);
          v61 = *(v37 + 264);
          if (fabsf(v60) > v61)
          {
            if (v60 >= 0.0)
            {
              v60 = *(v37 + 264);
            }

            else
            {
              v60 = -v61;
            }

            *v51 = (v60 - *v53) / v74;
          }

          *v53++ = v60;
          v62 = *v51++;
          v63 = v62;
          v55 = vadd_f32(v55, vmul_n_f32(*(v54 - 5), v62));
          v57 = v57 + (v62 * *(v54 - 3));
          v64 = vmul_n_f32(*(v54 - 2), v62);
          v65 = *v54;
          v54 += 6;
          v58 = vadd_f32(v58, v64);
          v56 = v56 + (v63 * v65);
          --v52;
        }

        while (v52);
      }

      else
      {
        v55 = 0;
        v57 = 0.0;
        v56 = 0.0;
        v58 = 0;
        v59 = v74;
      }

      v66 = (v75 + 32 * v31);
      v67 = v57 + (v77 + v66[1].f32[0]);
      v68 = v56 + (v49 + v66[3].f32[0]);
      v69 = &v13[4 * v31];
      _Q5.n128_u64[1] = v78.n128_u64[1];
      v70 = vadd_f32(v55, vadd_f32(v78.n128_u64[0], *v66));
      v69[1].f32[0] = v67;
      v69[1].i32[1] = 0;
      v71 = vadd_f32(v58, vadd_f32(v48, v66[2]));
      *v69 = v70;
      v69[2] = v71;
      v69[3].f32[0] = v68;
      v69[3].i32[1] = 0;
      v72 = &v12[4 * v31];
      *v72 = vadd_f32(vmul_n_f32(v70, v59), *v72);
      v72[1].f32[0] = (v59 * v67) + v72[1].f32[0];
      v72[2] = vadd_f32(vmul_n_f32(v71, v59), v72[2]);
      v72[3].f32[0] = (v59 * v68) + v72[3].f32[0];
      ++v31;
      v33 += 76;
    }

    while (v31 != v10);
  }

  return result;
}

void physx::Dy::FeatherstoneArticulation::computeUnconstrainedVelocitiesInternal(uint64_t a1, float32x2_t *a2, float *a3, float32x2_t *a4)
{
  v6 = a1;
  *(a1 + 880) = 0;
  bzero(*(a1 + 560), (4 * *(a1 + 568)));
  v245 = (32 * *(v6 + 616));
  bzero(*(v6 + 432), v245);
  bzero(*(v6 + 240), (4 * *(v6 + 652)));
  *(v6 + 685) = 0;
  physx::Dy::FeatherstoneArticulation::jcalc(v6, (v6 + 176), 0);
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  v7 = *(v6 + 336);
  v256[0] = *(v6 + 320);
  v256[1] = v7;
  v8 = *(v6 + 368);
  v256[2] = *(v6 + 352);
  v257 = v8;
  v9 = *(v6 + 208);
  *(&v259 + 1) = *(v6 + 224);
  *&v260 = v9;
  v10 = *(v6 + 256);
  *(&v260 + 1) = *(v6 + 272);
  *&v261 = v10;
  v258 = *(v6 + 672);
  v19 = physx::Dy::FeatherstoneArticulation::computeRelativeTransformC2P(0, v12, v13, v14, v15, v16, v17, v18, v11, v6 + 176);
  v20 = physx::Dy::FeatherstoneArticulation::computeLinkVelocities(v19, v6 + 176, v256);
  physx::Dy::FeatherstoneArticulation::computeSpatialInertia(v20, v6 + 176);
  physx::Dy::FeatherstoneArticulation::computeZ(v22, v23, v24, v25, v26, v27, v28, v29, v21, v6 + 176, a2, v256);
  v35 = *(v6 + 616);
  if (v35 >= 2)
  {
    memcpy(*(v6 + 384), *(v6 + 368), 32 * v35);
  }

  v36 = (v6 + 732);
  physx::Dy::FeatherstoneArticulation::computeArticulatedSpatialInertia(v6, v6 + 176, v30, v31, v32, v33, v34);
  v252 = *(v6 + 616);
  v37 = *(v6 + 464);
  v250 = *(v6 + 608);
  v251 = v37;
  v244 = a3;
  if (**(v6 + 664))
  {
    v37[10] = 0u;
    v37[11] = 0u;
    v37[8] = 0u;
    v37[9] = 0u;
    v37[6] = 0u;
    v37[7] = 0u;
    v37[4] = 0u;
    v37[5] = 0u;
    v37[2] = 0u;
    v37[3] = 0u;
    *v37 = 0u;
    v37[1] = 0u;
  }

  else
  {
    v38 = 0;
    v39 = (v37 + 1);
    do
    {
      if (v38 >= 3)
      {
        v40 = &v280 + 4;
      }

      else
      {
        v40 = &v280;
      }

      v280 = 0uLL;
      v281 = 0uLL;
      *&v40[4 * v38] = 1065353216;
      v41.i32[0] = *(v6 + 740);
      v42 = v280;
      v43 = *(v6 + 752);
      v44 = *(v6 + 764);
      v45 = *(&v280 + 2);
      v46 = v281;
      v47 = *(&v281 + 2);
      v48 = (((*&v280 * v41.f32[0]) + (*(&v280 + 1) * v43)) + (*(&v280 + 2) * v44)) + (((*&v281 * *(v6 + 776)) + (*(&v281 + 1) * *(v6 + 788))) + (*(&v281 + 2) * *(v6 + 800)));
      v49 = *v36;
      v50 = *(v6 + 744);
      v51 = *(v6 + 756);
      v52 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*v36, *&v280), vmul_n_f32(v50, *(&v280 + 1))), vmul_n_f32(v51, *(&v280 + 2))), vadd_f32(vadd_f32(vmul_n_f32(*(v6 + 768), *&v281), vmul_n_f32(*(v6 + 780), *(&v281 + 1))), vmul_n_f32(*(v6 + 792), *(&v281 + 2))));
      v53 = ((vmuls_lane_f32(*(&v281 + 1), v51, 1) + (v51.f32[0] * *&v281)) + (v44 * *(&v281 + 2))) + (((*&v280 * *(v6 + 812)) + (*(&v280 + 1) * *(v6 + 824))) + (*(&v280 + 2) * *(v6 + 836)));
      v39[-1].f32[0] = v48;
      v39[-1].i32[1] = 0;
      v41.f32[1] = v43;
      v54 = vadd_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(vzip2_s32(v49, v50), *(&v46 + 1)), vzip1_s32(v49, v50), *&v46), v41, v47), vadd_f32(vadd_f32(vmul_n_f32(*(v6 + 804), *&v42), vmul_n_f32(*(v6 + 816), *(&v42 + 1))), vmul_n_f32(*(v6 + 828), v45)));
      v39[-2] = v52;
      *v39 = v54;
      v39[1].f32[0] = v53;
      v39[1].i32[1] = 0;
      ++v38;
      v39 += 4;
    }

    while (v38 != 6);
  }

  v243 = (v6 + 732);
  if (v252 >= 2)
  {
    v55 = *(v6 + 528);
    v56 = v251 + 55;
    v254 = 1;
    v247 = *(v6 + 544);
    v248 = *(v6 + 624);
    v57 = 0uLL;
    v249 = v6;
    do
    {
      v58 = 0;
      v59 = v55;
      v60 = v248 + 160 * v254;
      v278 = *(v60 + 120);
      v279 = *(v60 + 128);
      v61 = (*(v6 + 480) + 112 * v254);
      v62 = (*(v6 + 496) + 36 * v254);
      v55 = *(v6 + 528);
      v253 = v56;
      v63 = v56;
      do
      {
        v280 = v57;
        v281 = v57;
        *((&v280 | (4 * (v58 > 2))) + 4 * v58) = 1065353216;
        v272 = vneg_f32(*&v280);
        v273 = -*(&v280 + 2);
        v274 = 0;
        v275 = vneg_f32(*&v281);
        v276 = -*(&v281 + 2);
        v277 = 0;
        physx::Dy::FeatherstoneArticulation::propagateImpulseW((v247 + 96 * v254), &v278, v59 + 76 * v254, &v272, v271);
        physx::Dy::SpatialImpulseResponseMatrix::getResponse(&v262, &v251[12 * *(v250 + 40 * v254 + 32)], v271[0], v271[1], v64, v65, v66, v67, v68, v69);
        v265 = vneg_f32(*v262.f32);
        v266 = -v262.f32[2];
        v267 = 0;
        v268 = vneg_f32(v263);
        v269 = -v264;
        v270 = 0;
        physx::Dy::FeatherstoneArticulation::propagateVelocityTestImpulseW(&v262, &v278, v61, v62, v55 + 76 * v254, &v272, &v265);
        v57 = 0uLL;
        *(v63 - 7) = v262.i64[0];
        *(v63 - 5) = v262.f32[2];
        *(v63 - 4) = 0.0;
        *(v63 - 3) = v263;
        *(v63 - 1) = v264;
        *v63 = 0.0;
        v63 += 8;
        ++v58;
        v59 = v55;
      }

      while (v58 != 6);
      v56 = v253 + 48;
      ++v254;
      v6 = v249;
    }

    while (v254 != v252);
  }

  v70 = v256[0];
  v71 = v257;
  bzero(v244, (32 * *(v6 + 616)));
  v77 = *(v6 + 616);
  if (v77)
  {
    v78 = 0;
    v79 = 0;
    v73.i32[0] = *(v6 + 648);
    v80 = *(v6 + 608);
    LODWORD(v74) = 1.0;
    v75 = 0.0;
    __asm { FMOV            V3.2S, #1.0 }

    do
    {
      while (1)
      {
        v86 = *(v80 + 40 * v78 + 16);
        v87 = *(v86 + 31);
        if (v87 == 0.0)
        {
          v88 = 0.0;
        }

        else
        {
          v88 = 1.0 / v87;
        }

        v89 = 1.0 / *(v86 + 30);
        v90 = &v244[8 * v78];
        v91 = &v70[4 * v78];
        v92 = vdiv_f32(_D3, v86[14]);
        v93 = *v91;
        v94 = v91[1].f32[0];
        v95 = v91[2];
        v96 = v91[3].f32[0];
        v98 = *(v86 + 26);
        v97 = *(v86 + 27);
        if (v98 > 0.0 || v97 > 0.0)
        {
          v99 = fminf(v73.f32[0] * v98, 1.0);
          v100 = fminf(v73.f32[0] * v97, 1.0);
          v101 = &v71[2 * v78];
          v76.f32[0] = (v88 * (v96 * v99)) - (v99 * (v73.f32[0] * v101[1].f32[0]));
          *v90 = vadd_f32(*v90, vsub_f32(vmul_n_f32(vmul_n_f32(v95, v99), v88), vmul_n_f32(vmul_n_f32(*v101, v73.f32[0]), v99)));
          v90[1].f32[0] = v76.f32[0] + v90[1].f32[0];
          v102 = vadd_f32(v93, v93);
          _S27 = v94 + v94;
          v76.i32[0] = *(v86 + 2);
          v104 = *(v86 + 3);
          v105 = (v104 * v104) + -0.5;
          _D25 = *v86;
          LODWORD(v107) = HIDWORD(*v86);
          v108 = (vmuls_lane_f32(v102.f32[1], *v86, 1) + (COERCE_FLOAT(*v86) * v102.f32[0])) + (v76.f32[0] * (v94 + v94));
          v109 = vneg_f32(vzip1_s32(v76, *v86));
          __asm { FMLA            S8, S27, V25.S[1] }

          _D8.f32[1] = vmuls_lane_f32(v94 + v94, v109, 1) + (v76.f32[0] * v102.f32[0]);
          v111 = -v107;
          v112 = vmul_f32(v92, vmul_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(_D8), v104), v102, v105), *v86, v108), v100));
          v102.f32[0] = v89 * (v100 * ((((v94 + v94) * v105) - (((-v107 * v102.f32[0]) + (COERCE_FLOAT(*v86) * v102.f32[1])) * v104)) + (v76.f32[0] * v108)));
          v113 = vadd_f32(v112, v112);
          v102.f32[0] = v102.f32[0] + v102.f32[0];
          v114 = (vmuls_lane_f32(v107, v113, 1) + (COERCE_FLOAT(*v86) * v113.f32[0])) + (v76.f32[0] * v102.f32[0]);
          v115.i32[0] = vdup_lane_s32(v113, 1).u32[0];
          v115.i32[1] = v102.i32[0];
          v116 = (((v104 * ((v111 * v113.f32[0]) + (COERCE_FLOAT(*v86) * v113.f32[1]))) + (v102.f32[0] * v105)) + (v76.f32[0] * v114)) - (v100 * (v73.f32[0] * v101[3].f32[0]));
          v76 = v90[2];
          v90[2] = vadd_f32(v76, vsub_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(v115, v109), vext_s8(v115, v113, 4uLL), *(v86 + 4)), v104), v113, v105), *v86, v114), vmul_n_f32(vmul_n_f32(v101[2], v73.f32[0]), v100)));
          v90[3].f32[0] = v90[3].f32[0] + v116;
          v79 = 1;
        }

        v118 = *(v86 + 24);
        v117 = *(v86 + 25);
        v119 = (vmuls_lane_f32(v93.f32[1], v93, 1) + (v93.f32[0] * v93.f32[0])) + (v94 * v94);
        v120 = (COERCE_FLOAT(vmul_f32(v95, v95).i32[1]) + (v95.f32[0] * v95.f32[0])) + (v96 * v96);
        if (v119 <= v118 && v120 <= v117)
        {
          break;
        }

        if (v119 > v118)
        {
          v122 = 1.0 - (sqrtf(v118) / sqrtf(v119));
          v93.f32[0] = v93.f32[0] + v93.f32[0];
          v123 = v94 + v94;
          v125 = *(v86 + 2);
          v124 = *(v86 + 3);
          v126 = (v124 * v124) + -0.5;
          v127 = *(v86 + 1);
          v128 = (((v93.f32[1] + v93.f32[1]) * v127) + (*v86 * v93.f32[0])) + (v125 * v123);
          v129 = ((v93.f32[0] * v126) - (((v127 * v123) - (v125 * (v93.f32[1] + v93.f32[1]))) * v124)) + (*v86 * v128);
          v130 = (((v93.f32[1] + v93.f32[1]) * v126) - (((v125 * v93.f32[0]) - (*v86 * v123)) * v124)) + (v127 * v128);
          v131 = ((v123 * v126) - (((*v86 * (v93.f32[1] + v93.f32[1])) - (v127 * v93.f32[0])) * v124)) + (v125 * v128);
          v132 = v129 * v92.f32[0];
          v133 = vmuls_lane_f32(v130, v92, 1);
          v134 = v89 * v131;
          v135 = (v122 * v132) + (v122 * v132);
          v136 = (v122 * v133) + (v122 * v133);
          v137 = (v122 * v134) + (v122 * v134);
          v138 = ((v127 * v136) + (*v86 * v135)) + (v125 * v137);
          v139 = ((v124 * ((v127 * v137) - (v125 * v136))) + (v135 * v126)) + (*v86 * v138);
          v140 = ((v124 * ((v125 * v135) - (*v86 * v137))) + (v136 * v126)) + (v127 * v138);
          v141 = ((v124 * ((*v86 * v136) - (v127 * v135))) + (v137 * v126)) + (v125 * v138);
          v142 = v90[2].f32[1] + v140;
          v90[2].f32[0] = v90[2].f32[0] + v139;
          v90[2].f32[1] = v142;
          v90[3].f32[0] = v90[3].f32[0] + v141;
          v79 = 1;
        }

        if (v120 <= v117)
        {
          break;
        }

        v143 = 1.0 - (sqrtf(v117) / sqrtf(v120));
        *v90 = vadd_f32(vmul_n_f32(vmul_n_f32(v95, v88), v143), *v90);
        v90[1].f32[0] = ((v88 * v96) * v143) + v90[1].f32[0];
        ++v78;
        v79 = 1;
        if (v78 == v77)
        {
          goto LABEL_35;
        }
      }

      ++v78;
    }

    while (v78 != v77);
    if ((v79 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_35:
    v144 = (v77 - 1);
    if (v144)
    {
      v145 = v144 - 1;
      v146 = (v80 + 40 * v144 + 32);
      v147 = &v244[8 * v144];
      v148 = *(v6 + 528) + 76 * v144;
      v149 = *(v6 + 624) + 160 * v144 + 120;
      v150 = (*(v6 + 544) + 96 * v144);
      do
      {
        physx::Dy::FeatherstoneArticulation::propagateImpulseW(v150, v149, v148, v147, &v280);
        v151 = *v146;
        v146 -= 10;
        v152 = &v244[8 * v151];
        *v152 = vadd_f32(*&v280, *v152);
        v152[1].f32[0] = *(&v280 + 2) + v152[1].f32[0];
        v74 = *&v152[2];
        v73 = vadd_f32(*&v281, *&v74);
        v152[2] = v73;
        LODWORD(v74) = v152[3].i32[0];
        v73.f32[0] = *(&v281 + 2) + *&v74;
        v152[3].f32[0] = *(&v281 + 2) + *&v74;
        LODWORD(v152) = v145--;
        v147 -= 4;
        v148 -= 76;
        v149 -= 160;
        v150 -= 12;
      }

      while (v152);
    }

    v153 = *(v6 + 320);
    v154 = *(v6 + 632);
    v155 = *(v6 + 240);
    if (**(v6 + 664))
    {
      *a4 = 0;
      a4[1] = 0;
      a4[3].i32[0] = 0;
      a4[2] = 0;
    }

    else
    {
      v156 = *v244;
      v157 = v244[1];
      v158 = -v157;
      v159 = v244[2];
      *&v75 = v244[4];
      v160 = v244[5];
      v161 = -v160;
      v73.f32[0] = v244[6];
      v162.i32[0] = *(v6 + 740);
      v163 = *(v6 + 752);
      v164 = *(v6 + 764);
      v165 = ((-(v157 * v163) - (*v244 * v162.f32[0])) - (v159 * v164)) + ((-(v160 * *(v6 + 788)) - (*&v75 * *(v6 + 776))) - (v73.f32[0] * *(v6 + 800)));
      v166 = *v243;
      v167 = *(v6 + 744);
      v168 = v243[3];
      v169 = vadd_f32(vsub_f32(vsub_f32(vmul_n_f32(v167, -v157), vmul_n_f32(*v243, *v244)), vmul_n_f32(v168, v159)), vsub_f32(vsub_f32(vmul_n_f32(v243[6], v161), vmul_n_f32(*(v6 + 768), *&v75)), vmul_n_f32(*(v6 + 792), v73.f32[0])));
      v170 = ((vmuls_lane_f32(v161, v168, 1) - (v168.f32[0] * *&v75)) - (v164 * v73.f32[0])) + ((-(v157 * *(v6 + 824)) - (*v244 * *(v6 + 812))) - (v159 * *(v6 + 836)));
      a4[1].f32[0] = v165;
      a4[1].i32[1] = 0;
      v162.f32[1] = v163;
      v171 = vadd_f32(vmls_lane_f32(vmls_lane_f32(vmul_n_f32(vzip2_s32(v166, v167), v161), vzip1_s32(v166, v167), *&v75, 0), v162, v73, 0), vsub_f32(vsub_f32(vmul_n_f32(*(v6 + 816), v158), vmul_n_f32(v243[9], v156)), vmul_n_f32(v243[12], v159)));
      *a4 = v169;
      a4[2] = v171;
      a4[3].f32[0] = v170;
      *v153 = vadd_f32(v169, *v153);
      v153[1].f32[0] = v165 + v153[1].f32[0];
      v74 = *&v153[2];
      v73 = vadd_f32(a4[2], *&v74);
      v153[2] = v73;
      LODWORD(v74) = v153[3].i32[0];
      v73.f32[0] = a4[3].f32[0] + *&v74;
      v153[3].i32[0] = v73.i32[0];
    }

    a4[3].i32[1] = 0;
    v172 = *(v6 + 616);
    if (v172 >= 2)
    {
      v173 = 0;
      v255 = 32 * v172 - 32;
      v174 = (v154 + 152);
      v175 = (v80 + 72);
      v176 = a4;
      v177 = 280;
      v178 = 112;
      v179 = v6;
      v180 = 36;
      v181 = 76;
      do
      {
        v182 = *v174;
        v174 += 20;
        v183 = v155 + 4 * v182;
        v184 = *v175;
        v175 += 10;
        physx::Dy::FeatherstoneArticulation::propagateVelocityW(*(v179 + 624) + v177, (*(v179 + 480) + v178), (*(v179 + 496) + v180), *(v179 + 528) + v181, &v244[v173 / 4 + 8], v183, &v176[4 * v184], &v280);
        v176 = a4;
        v185 = &a4[v173 / 8 + 4];
        v186 = *(&v280 + 2);
        v185[1].i32[0] = DWORD2(v280);
        v185[1].i32[1] = 0;
        LODWORD(v74) = DWORD2(v281);
        v185[3].i32[0] = DWORD2(v281);
        v185[3].i32[1] = 0;
        v187 = &v153[v173 / 8];
        v188 = v280;
        *v185 = v280;
        v187[5].f32[0] = v186 + v153[v173 / 8 + 5].f32[0];
        v189 = v281;
        v185[2] = v281;
        v187[4] = vadd_f32(v188, v153[v173 / 8 + 4]);
        v75 = *&v153[v173 / 8 + 6];
        v73 = vadd_f32(v189, *&v75);
        v187[6] = v73;
        v73.i32[0] = v153[v173 / 8 + 7].i32[0];
        v173 += 32;
        v177 += 160;
        v73.f32[0] = *&v74 + v73.f32[0];
        v187[7].i32[0] = v73.i32[0];
        v178 += 112;
        v180 += 36;
        v181 += 76;
      }

      while (v255 != v173);
      v190 = *(v179 + 616);
      v6 = v179;
      if (v190 >= 2)
      {
        v191 = *(v179 + 240);
        v192 = *(v179 + 224);
        v193 = 1;
        v194 = *(v179 + 632);
        do
        {
          v195 = v194 + 80 * v193;
          v196 = *(v195 + 76);
          if (*(v195 + 76))
          {
            v197 = *(v195 + 72);
            do
            {
              LODWORD(v74) = *(v192 + 4 * v197);
              v73.f32[0] = *(v191 + 4 * v197) + *&v74;
              *(v192 + 4 * v197) = v73.i32[0];
              *(v191 + 4 * v197++) = 0;
              --v196;
            }

            while (v196);
          }

          ++v193;
        }

        while (v193 != v190);
      }
    }
  }

LABEL_50:
  v198 = physx::Dy::FeatherstoneArticulation::computeC(*&v73, v74, v75, v72, v6 + 176, v256);
  *&v200 = physx::Dy::FeatherstoneArticulation::computeArticulatedSpatialZ(v199, v198, v6 + 176, v256);
  physx::Dy::FeatherstoneArticulation::computeLinkAcceleration(v6, v6 + 176, v256, v200, v201, v202, v203, v204, v205);
  if (*(v6 + 616) >= 2u)
  {
    v257 = *(v6 + 384);
    physx::Dy::FeatherstoneArticulation::computeZAForceInv(v206, v207, v208, v209, v210, v6, v6 + 176, v256);
    v211 = v257;
    v212 = (*(v6 + 616) - 1);
    if (v212 >= 2)
    {
      v213 = v212 - 1;
      v214 = (*(v6 + 608) + 40 * v212 + 32);
      v215 = (*(v6 + 624) + 160 * v212 + 124);
      v216 = &v257[2 * v212 + 1];
      do
      {
        _S1 = v215[-1].i32[1];
        v218 = *v214;
        v214 -= 10;
        v219 = &v211[2 * v218];
        _D3 = v216[-2];
        v221 = *v215;
        v215 -= 20;
        v222.i32[0] = vdup_lane_s32(v221, 1).u32[0];
        v222.i32[1] = _S1;
        v223 = v216[-1].f32[0] + v219[1].f32[0];
        v224 = vrev64_s32(_D3);
        v224.i32[0] = v216[-1].i32[0];
        __asm { FMLA            S6, S1, V3.S[1] }

        v226 = _S6 + v216[1].f32[0];
        v227 = vadd_f32(vmla_f32(vmul_f32(*(v216 - 12), vneg_f32(v222)), v224, v221), *v216);
        *v219 = vadd_f32(_D3, *v219);
        v219[1].f32[0] = v223;
        v228 = v219[3].f32[0];
        v219[2] = vadd_f32(v227, v219[2]);
        v219[3].f32[0] = v226 + v228;
        v216 -= 4;
      }

      while ((v213-- & 0xFFFFFFFE));
    }

    *v211 = 0u;
    v211[1] = 0u;
  }

  *(v6 + 684) = 1;
  bzero(*(v6 + 368), v245);
  *(v6 + 16) = 0;
  *(v6 + 8) = 0;
  v230 = *(v6 + 616);
  if (v230)
  {
    v231 = *(v6 + 712);
    v232 = (*(v6 + 608) + 16);
    v233 = (*(v6 + 696) + 12);
    v234 = (*(v6 + 448) + 12);
    do
    {
      v235 = *v232;
      v232 += 5;
      v236 = *v235;
      *(v233 - 3) = *v235;
      v237 = v235[1];
      *(v233 - 2) = v237;
      v238 = v235[2];
      *(v233 - 1) = v238;
      v239 = v235[3];
      *v233 = v239;
      v240 = v235[4];
      v233[1] = v240;
      v241 = v235[5];
      v233[2] = v241;
      v242 = v235[6];
      v233[3] = v242;
      *(v234 - 3) = v236;
      *(v234 - 2) = v237;
      *(v234 - 1) = v238;
      *v234 = v239;
      v234[1] = v240;
      v234[2] = v241;
      v234[3] = v242;
      *v231++ = xmmword_1E30474D0;
      v233 += 7;
      v234 += 7;
      --v230;
    }

    while (v230);
  }
}

void physx::Dy::FeatherstoneArticulation::updateBodies(physx::Dy::FeatherstoneArticulation *this, physx::Dy::FeatherstoneArticulation *a2, float32x4_t _Q0, float32x4_t a4, double _D2, double a6, double a7, double a8, float32x4_t a9, int8x16_t a10)
{
  v290 = *MEMORY[0x1E69E9840];
  v12 = *(this + 76);
  v13 = *(this + 154);
  v14 = *(this + 40);
  v15 = *(this + 84);
  v285 = _Q0;
  *(this + 162) = _Q0.i32[0];
  v16 = *(this + 56);
  if (*(this + 864) == 1 && v13 != 0)
  {
    v18 = (v16 + 24);
    v19 = (v12 + 16);
    v20 = v13;
    do
    {
      v21 = *v19;
      v19 += 5;
      *(v18 - 6) = *v21;
      _Q0.i64[0] = *(v21 + 16);
      *(v18 - 1) = _Q0.i64[0];
      _Q0.i32[0] = *(v21 + 24);
      *v18 = _Q0.i32[0];
      v18 += 7;
      --v20;
    }

    while (v20);
  }

  v273 = this;
  v258 = v14;
  if (a2)
  {
    if (**(this + 83))
    {
      v257 = *(this + 38);
    }

    else
    {
      v22 = *(v12 + 16);
      v23 = *(this + 38);
      v24 = v23[3].f32[0];
      v25 = v23[2];
      v26 = *(v22 + 16);
      v27 = *(v22 + 24);
      v30.i32[3] = v285.i32[3];
      v28 = vmul_n_f32(*v23, v285.f32[0]);
      v257 = v23;
      v29 = v23[1].f32[0] * v285.f32[0];
      *v30.i32 = (COERCE_FLOAT(vmul_f32(v28, v28).i32[1]) + (v28.f32[0] * v28.f32[0])) + (v29 * v29);
      if (*v30.i32 >= 1.0e-24)
      {
        v61 = sqrtf(*v30.i32);
        v62 = vmul_n_f32(v28, 1.0 / v61);
        v63 = v29 * (1.0 / v61);
        v64 = __sincosf_stret(v61 * 0.5);
        cosval = v64.__cosval;
        this = v273;
        *v30.i8 = vmul_n_f32(v62, v64.__sinval);
        v32 = v64.__sinval * v63;
      }

      else
      {
        v30.i64[0] = 0;
        cosval = 1.0;
        v32 = 0.0;
      }

      v10 = v285.f32[0];
      a10 = vdupq_laneq_s32(*v22, 3);
      v65 = -*&v30.i32[1];
      *&v30.i32[2] = v32;
      v66 = v30;
      v66.f32[3] = -*v30.i32;
      v67 = vmlaq_n_f32(vmulq_f32(vextq_s8(a10, *v22, 4uLL), v66), *v22, cosval);
      v68 = vextq_s8(vextq_s8(v30, v30, 0xCuLL), v30, 8uLL);
      _Q2 = vzip1q_s32(*v22, *v22);
      _Q2.i32[0] = *(v22 + 8);
      v70 = vuzp1q_s32(vextq_s8(_Q2, _Q2, 8uLL), vuzp2q_s32(_Q2, v68));
      a9 = vzip1q_s32(vrev64q_s32(v68), v70);
      a9.i32[1] = v68.i32[2];
      v68.f32[3] = v65;
      _Q0 = vmlsq_f32(vmlaq_f32(v67, _Q2, v68), a9, v70);
      _Q1 = vmulq_f32(_Q0, _Q0);
      _Q2.i32[0] = _Q0.i32[2];
      __asm { FMLA            S1, S2, V0.S[2] }

      _Q2.i32[0] = _Q0.i32[3];
      __asm { FMLA            S1, S2, V0.S[3] }

      _Q1.f32[0] = sqrtf(_Q1.f32[0]);
      a4 = vdupq_lane_s32(*_Q1.f32, 0);
      _D2 = COERCE_DOUBLE(vmul_n_f32(v25, v285.f32[0]));
      *v22 = vdivq_f32(_Q0, a4);
      *_Q0.f32 = vadd_f32(*&_D2, v26);
      *(v22 + 16) = _Q0.i64[0];
      *(v22 + 24) = (v24 * v285.f32[0]) + v27;
    }

    if (v13 >= 2)
    {
      v72 = *(this + 36);
      v73 = 1;
      v283 = 84;
      v74 = -0.5;
      v276 = *(this + 79);
      v277 = *(this + 32);
      v274 = *(this + 28);
      v275 = *(this + 74);
      v261 = v72;
      v255 = v16;
      v256 = v12;
      while (1)
      {
        v75 = v12 + 40 * v73;
        v76 = *(v12 + 40 * *(v75 + 32) + 16);
        v78 = *v76;
        v77 = v76[1];
        v79 = v276 + 80 * v73;
        v80 = v76[2];
        v284 = v76[3];
        v82 = v76[4];
        v81 = v76[5];
        v83 = v76[6];
        v84 = *(v79 + 72);
        v85 = (v274 + 4 * v84);
        v86 = (v72 + 4 * v84);
        v87 = (v277 + 4 * v84);
        v89 = *(v75 + 16);
        v88 = *(v75 + 24);
        v91 = *(v88 + 44);
        v90 = *(v88 + 48);
        v92 = *(v88 + 52);
        v278 = *(v88 + 16);
        v279 = *(v88 + 20);
        v280 = *(v88 + 24);
        v93 = (v275 + 16 * v73);
        _S8 = *v93;
        _S13 = v93[1];
        _S12 = v93[2];
        v97 = v93[3];
        v98 = *(v88 + 270);
        if (v98 <= 1)
        {
          break;
        }

        if (v98 == 2)
        {
          v117 = *(v79 + 76);
          v262 = v83;
          v263 = v81;
          v270 = *(v88 + 48);
          v272 = *(v88 + 52);
          v268 = *(v88 + 44);
          if (v117 > 2)
          {
            v166 = (v16 + 28 * v73);
            v168 = *v166;
            v167 = v166[1];
            v169 = v166[2];
            v170 = v166[3];
            v171 = &v257[4 * v73];
            v172 = *v171 * v285.f32[0];
            v173 = v171[1] * v285.f32[0];
            v174 = v171[2] * v285.f32[0];
            v175 = ((v173 * v173) + (v172 * v172)) + (v174 * v174);
            if (v175 >= 1.0e-24)
            {
              v180 = sqrtf(v175);
              v281 = v173 * (1.0 / v180);
              v282 = v172 * (1.0 / v180);
              v260 = v82;
              v181 = v174 * (1.0 / v180);
              v182 = v77;
              v183 = v78;
              v184 = v80;
              v185 = __sincosf_stret(v180 * 0.5);
              v176 = v185.__cosval;
              v80 = v184;
              v78 = v183;
              v77 = v182;
              this = v273;
              v177 = v185.__sinval * v282;
              v178 = v185.__sinval * v281;
              v179 = v185.__sinval * v181;
              v82 = v260;
            }

            else
            {
              v176 = 1.0;
              v177 = 0.0;
              v178 = 0.0;
              v179 = 0.0;
            }

            v289 = *(*(this + 74) + 16 * v73);
            *&v287 = (((v170 * v177) + (v176 * v168)) + (v178 * v169)) - (v167 * v179);
            *(&v287 + 1) = (((v170 * v178) + (v176 * v167)) + (v179 * v168)) - (v169 * v177);
            *(&v287 + 2) = (((v170 * v179) + (v176 * v169)) + (v177 * v167)) - (v168 * v178);
            *(&v287 + 3) = (((v176 * v170) - (v177 * v168)) - (v178 * v167)) - (v179 * v169);
            v286[0] = v78;
            v286[1] = v77;
            v286[2] = v80;
            v286[3] = v284;
            v186 = v77;
            v187 = v78;
            v188 = v80;
            physx::Dy::computeSphericalJointPositions(v288, &v289, &v287, v286, v87, *(this + 64) + 76 * v73);
            v80 = v188;
            v78 = v187;
            v77 = v186;
            this = v273;
            _S13 = *(v288 + 1);
            _S8 = *v288;
            v97 = *(v288 + 3);
            _S12 = *(v288 + 2);
            v74 = -0.5;
            v189 = (*(v288 + 3) * *(v288 + 3)) + -0.5;
            v190 = (((v279 + v279) * *(v288 + 1)) + (*v288 * (v278 + v278))) + (*(v288 + 2) * (v280 + v280));
            v103 = -*(v288 + 2);
            v104 = -*v288;
            v105 = -*(v288 + 1);
            _Q0.f32[0] = (((*(v288 + 3) * ((*(v288 + 1) * (v280 + v280)) - (*(v288 + 2) * (v279 + v279)))) + ((v278 + v278) * v189)) + (*v288 * v190)) - v268;
            a4.f32[0] = (((((*(v288 + 2) * (v278 + v278)) - (*v288 * (v280 + v280))) * *(v288 + 3)) + ((v279 + v279) * v189)) + (*(v288 + 1) * v190)) - v270;
            *&_D2 = (((((*v288 * (v279 + v279)) - (*(v288 + 1) * (v278 + v278))) * *(v288 + 3)) + ((v280 + v280) * v189)) + (*(v288 + 2) * v190)) - v272;
            v83 = v262;
            v81 = v263;
            goto LABEL_92;
          }

          v259 = v82;
          v265 = v78;
          v266 = v77;
          v264 = v80;
          if (!v117)
          {
            v122 = 1.0;
            v140 = 0.0;
            v141 = 0.0;
            v142 = 0.0;
LABEL_90:
            v74 = -0.5;
            v191 = (v122 * v122) + -0.5;
            v192 = (((v279 + v279) * v141) + (v140 * (v278 + v278))) + (v142 * (v280 + v280));
            v103 = -v142;
            v104 = -v140;
            v105 = -v141;
            _Q0.f32[0] = (((v122 * ((v141 * (v280 + v280)) - (v142 * (v279 + v279)))) + ((v278 + v278) * v191)) + (v140 * v192)) - v268;
            a4.f32[0] = (((((v142 * (v278 + v278)) - (v140 * (v280 + v280))) * v122) + ((v279 + v279) * v191)) + (v141 * v192)) - v270;
            *&_D2 = (((((v140 * (v279 + v279)) - (v141 * (v278 + v278))) * v122) + ((v280 + v280) * v191)) + (v142 * v192)) - v272;
            _S8 = v140;
            _S13 = v141;
            _S12 = v142;
            v97 = v122;
            v16 = v255;
            v12 = v256;
            this = v273;
            v72 = v261;
            v82 = v259;
            v83 = v262;
            v81 = v263;
            goto LABEL_91;
          }

          v118 = 0;
          v119 = 4 * v117;
          v120 = (*(this + 64) + v283);
          v121 = 0.0;
          v122 = 1.0;
          v123 = 0.0;
          v124 = 0.0;
          while (2)
          {
            v125 = v87[v118 / 4] + ((v85[v118 / 4] + v86[v118 / 4]) * v285.f32[0]);
            if (v125 > 6.2832)
            {
              v126 = -12.566;
              goto LABEL_62;
            }

            if (v125 < -6.2832)
            {
              v126 = 12.566;
LABEL_62:
              v125 = v125 + v126;
            }

            if (v125 < -12.566)
            {
              v125 = -12.566;
            }

            if (v125 > 12.566)
            {
              v125 = 12.566;
            }

            v87[v118 / 4] = v125;
            v127 = __sincosf_stret(v125 * -0.5);
            a4.f32[0] = v127.__cosval;
            v128 = vmul_n_f32(*(v120 - 2), v127.__sinval);
            v129 = *v120;
            v120 += 6;
            v130 = v129 * v127.__sinval;
            _D2 = COERCE_DOUBLE(vbsl_s8(vdup_lane_s32(vcgt_f32(0, *a4.f32), 0), vneg_f32(v128), v128));
            _Q0.f32[0] = -(v129 * v127.__sinval);
            if (v127.__cosval < 0.0)
            {
              a4.f32[0] = -v127.__cosval;
            }

            else
            {
              _Q0.f32[0] = v130;
            }

            __asm { FMLA            S3, S12, V2.S[1] }

            v132 = _S3 + (-_S13 * _Q0.f32[0]);
            v133 = ((vmuls_lane_f32(v97, *&_D2, 1) + (a4.f32[0] * _S13)) + (_Q0.f32[0] * _S8)) + (-_S12 * *&_D2);
            _S6 = -_S8;
            __asm
            {
              FMLA            S5, S6, V2.S[1]
              FMLS            S1, S13, V2.S[1]
            }

            v137 = _S1 - (_Q0.f32[0] * _S12);
            v138 = sqrtf((((v133 * v133) + (v132 * v132)) + (_S5 * _S5)) + (v137 * v137));
            v139 = v137 / v138;
            v140 = (((v124 * v139) + (v122 * (v132 / v138))) + (v123 * (_S5 / v138))) - ((v133 / v138) * v121);
            v141 = (((v123 * v139) + (v122 * (v133 / v138))) + (v121 * (v132 / v138))) - ((_S5 / v138) * v124);
            v142 = (((v121 * v139) + (v122 * (_S5 / v138))) + (v124 * (v133 / v138))) - ((v132 / v138) * v123);
            v118 += 4;
            v122 = (((v122 * v139) - (v124 * (v132 / v138))) - (v123 * (v133 / v138))) - (v121 * (_S5 / v138));
            v121 = v142;
            v123 = v141;
            v124 = v140;
            if (v119 == v118)
            {
              goto LABEL_90;
            }

            continue;
          }
        }

        if (v98 != 3)
        {
          goto LABEL_49;
        }

        v101 = v74 + (v97 * v97);
        v102 = (((v279 + v279) * _S13) + (_S8 * (v278 + v278))) + (_S12 * (v280 + v280));
        v103 = -_S12;
        v104 = -_S8;
        v105 = -_S13;
        _Q0.f32[0] = (((v97 * ((_S13 * (v280 + v280)) - (_S12 * (v279 + v279)))) + ((v278 + v278) * v101)) + (_S8 * v102)) - *(v88 + 44);
        a4.f32[0] = (((((_S12 * (v278 + v278)) - (_S8 * (v280 + v280))) * v97) + ((v279 + v279) * v101)) + (_S13 * v102)) - *(v88 + 48);
        *&_D2 = (((((_S8 * (v279 + v279)) - (_S13 * (v278 + v278))) * v97) + ((v280 + v280) * v101)) + (_S12 * v102)) - *(v88 + 52);
LABEL_92:
        v193 = (((v78 * v97) + (v284 * v104)) + (v77 * v103)) + (_S13 * v80);
        v194 = (((v77 * v97) + (v284 * v105)) + (v80 * v104)) + (_S12 * v78);
        v195 = (((v80 * v97) + (v284 * v103)) + (v78 * v105)) + (_S8 * v77);
        v196 = (((v78 * _S8) + (v284 * v97)) + (v77 * _S13)) + (v80 * _S12);
        v197 = sqrtf((((v194 * v194) + (v193 * v193)) + (v195 * v195)) + (v196 * v196));
        v198 = v193 / v197;
        v199 = v194 / v197;
        v200 = v195 / v197;
        v201 = v196 / v197;
        *v89 = v198;
        v89[1] = v199;
        v89[2] = v200;
        v89[3] = v201;
        v202 = v74 + (v201 * v201);
        v203 = (((a4.f32[0] + a4.f32[0]) * v199) + (v198 * (_Q0.f32[0] + _Q0.f32[0]))) + (v200 * (*&_D2 + *&_D2));
        v204 = ((v201 * ((v199 * (*&_D2 + *&_D2)) - (v200 * (a4.f32[0] + a4.f32[0])))) + ((_Q0.f32[0] + _Q0.f32[0]) * v202)) + (v198 * v203);
        v205 = ((v201 * ((v200 * (_Q0.f32[0] + _Q0.f32[0])) - (v198 * (*&_D2 + *&_D2)))) + ((a4.f32[0] + a4.f32[0]) * v202)) + (v199 * v203);
        v206 = ((v201 * ((v198 * (a4.f32[0] + a4.f32[0])) - (v199 * (_Q0.f32[0] + _Q0.f32[0])))) + ((*&_D2 + *&_D2) * v202)) + (v200 * v203);
        ++v73;
        v283 += 76;
        a9.f32[0] = v97;
        v89[4] = v82 + v204;
        v89[5] = v81 + v205;
        v89[6] = v83 + v206;
        *a10.i32 = _S12;
        v10 = _S13;
        v11 = _S8;
        if (v73 == v13)
        {
          goto LABEL_93;
        }
      }

      if (!*(v88 + 270))
      {
        a4.i32[1] = v285.i32[1];
        v106 = *v87 + ((*v85 + *v86) * v285.f32[0]);
        *v87 = v106;
        v107 = *(v88 + 252);
        if (*(v88 + v107 + 258) == 1)
        {
          v108 = v88 + 8 * v107;
          v110 = *(v108 + 56);
          v109 = v108 + 56;
          v111 = v110;
          if (v106 < v110)
          {
            *v87 = v111;
            v106 = v111;
          }

          v112 = v91;
          v113 = v90;
          v114 = v92;
          v115 = v80;
          v116 = *(v109 + 4);
          if (v106 > v116)
          {
            *v87 = v116;
            v106 = v116;
          }
        }

        else
        {
          v112 = v91;
          v113 = v90;
          v114 = v92;
          v115 = v80;
        }

        v158 = v74 + (v97 * v97);
        v159 = (((v279 + v279) * _S13) + (_S8 * (v278 + v278))) + (_S12 * (v280 + v280));
        v103 = -_S12;
        v104 = -_S8;
        v105 = -_S13;
        v160 = (*(this + 64) + 76 * v73);
        v161 = (((v97 * ((_S13 * (v280 + v280)) - (_S12 * (v279 + v279)))) + ((v278 + v278) * v158)) + (_S8 * v159)) - v112;
        v162 = (((((_S12 * (v278 + v278)) - (_S8 * (v280 + v280))) * v97) + ((v279 + v279) * v158)) + (_S13 * v159)) - v113;
        v163 = (((((_S8 * (v279 + v279)) - (_S13 * (v278 + v278))) * v97) + ((v280 + v280) * v158)) + (_S12 * v159)) - v114;
        v164 = v106 * v160[4];
        v165 = v106 * v160[5];
        _Q0.f32[0] = v161 + (v106 * v160[3]);
        a4.f32[0] = v162 + v164;
        *&_D2 = v163 + v165;
        v80 = v115;
        goto LABEL_92;
      }

      if (v98 == 1)
      {
        v99 = *v87 + ((*v85 + *v86) * v285.f32[0]);
        v265 = v78;
        v266 = v77;
        v264 = v80;
        v269 = *(v88 + 48);
        v271 = *(v88 + 52);
        v267 = *(v88 + 44);
        if (v99 > 6.2832)
        {
          v100 = -12.566;
          goto LABEL_74;
        }

        if (v99 < -6.2832)
        {
          v100 = 12.566;
LABEL_74:
          v99 = v99 + v100;
        }

        if (v99 < -12.566)
        {
          v99 = -12.566;
        }

        if (v99 > 12.566)
        {
          v99 = 12.566;
        }

        *v87 = v99;
        v143 = (*(this + 64) + 76 * v73);
        v144 = __sincosf_stret(v99 * v74);
        a4.f32[0] = v144.__cosval;
        this = v273;
        v145 = vmul_n_f32(*v143, v144.__sinval);
        _D2 = COERCE_DOUBLE(vbsl_s8(vdup_lane_s32(vcgt_f32(0, *a4.f32), 0), vneg_f32(v145), v145));
        _Q0.f32[0] = -(v143[1].f32[0] * v144.__sinval);
        if (v144.__cosval < 0.0)
        {
          a4.f32[0] = -v144.__cosval;
        }

        else
        {
          _Q0.f32[0] = v143[1].f32[0] * v144.__sinval;
        }

        __asm { FMLA            S3, S12, V2.S[1] }

        v147 = _S3 - (_S13 * _Q0.f32[0]);
        v148 = ((vmuls_lane_f32(v97, *&_D2, 1) + (a4.f32[0] * _S13)) + (_Q0.f32[0] * _S8)) - (*&_D2 * _S12);
        __asm
        {
          FMLS            S5, S8, V2.S[1]
          FMLS            S1, S13, V2.S[1]
        }

        v151 = _S1 - (_Q0.f32[0] * _S12);
        v152 = sqrtf((((v148 * v148) + (v147 * v147)) + (_S5 * _S5)) + (v151 * v151));
        _S8 = v147 / v152;
        _S13 = v148 / v152;
        _S12 = _S5 / v152;
        v97 = v151 / v152;
        v153 = v74 + (v97 * v97);
        v154 = (((v279 + v279) * (v148 / v152)) + ((v147 / v152) * (v278 + v278))) + ((_S5 / v152) * (v280 + v280));
        v103 = -(_S5 / v152);
        v155 = (((v151 / v152) * (((v148 / v152) * (v280 + v280)) - ((_S5 / v152) * (v279 + v279)))) + ((v278 + v278) * v153)) + (_S8 * v154);
        v104 = -_S8;
        v156 = (((v151 / v152) * (((_S5 / v152) * (v278 + v278)) - (_S8 * (v280 + v280)))) + ((v279 + v279) * v153)) + (_S13 * v154);
        v105 = -_S13;
        v157 = (((v151 / v152) * ((_S8 * (v279 + v279)) - (_S13 * (v278 + v278)))) + ((v280 + v280) * v153)) + (_S12 * v154);
        _Q0.f32[0] = v155 - v267;
        a4.f32[0] = v156 - v269;
        *&_D2 = v157 - v271;
        v72 = v261;
LABEL_91:
        v78 = v265;
        v77 = v266;
        v80 = v264;
        goto LABEL_92;
      }

LABEL_49:
      v104 = -v11;
      v105 = -v10;
      v103 = -*a10.i32;
      _S8 = v11;
      _S13 = v10;
      _S12 = *a10.i32;
      v97 = a9.f32[0];
      goto LABEL_92;
    }
  }

  else if (v13)
  {
    v33 = (v12 + 16);
    v34 = (*(this + 87) + 24);
    v35 = v13;
    do
    {
      _Q0 = *(v34 - 6);
      _Q1 = vmulq_f32(_Q0, _Q0);
      LODWORD(_D2) = *v34;
      _S3 = *(v34 - 2);
      __asm { FMLA            S1, S3, V0.S[2] }

      v42 = *v33;
      v33 += 5;
      _S3 = _Q0.i32[3];
      __asm { FMLA            S1, S3, V0.S[3] }

      _Q1.f32[0] = sqrtf(_Q1.f32[0]);
      a4 = vdupq_lane_s32(*_Q1.f32, 0);
      v44 = *(v34 - 1);
      _Q0 = vdivq_f32(_Q0, a4);
      *v42 = _Q0;
      v42[1].n128_u64[0] = v44;
      v42[1].n128_u32[2] = LODWORD(_D2);
      v34 += 7;
      --v35;
    }

    while (v35);
    if (v13 != 1)
    {
      v45 = *(this + 32);
      v46 = (*(this + 79) + 152);
      v47 = (v12 + 72);
      v48 = 1;
      v49 = 76;
      do
      {
        v50 = *(v47 - 1);
        v51 = *v46;
        v46 += 20;
        v52 = (v45 + 4 * v51);
        v53 = *(v50 + 270);
        if (*(v50 + 270))
        {
          if (v53 == 1)
          {
            _Q0.i32[0] = *v52;
            if (*v52 <= 6.2832)
            {
              if (_Q0.f32[0] < -6.2832)
              {
                _Q0.f32[0] = _Q0.f32[0] + 12.566;
              }
            }

            else
            {
              _Q0.f32[0] = _Q0.f32[0] + -12.566;
            }

            if (_Q0.f32[0] < -12.566)
            {
              _Q0.f32[0] = -12.566;
            }

            if (_Q0.f32[0] > 12.566)
            {
              _Q0.f32[0] = 12.566;
            }

            *v52 = _Q0.i32[0];
          }

          else if (v53 == 2)
          {
            v54 = *v47;
            v55 = *(*(this + 74) + 16 * v48);
            v289 = **(v47 - 2);
            v287 = **(v12 + 40 * v54 + 16);
            v288[0] = v55;
            physx::Dy::computeSphericalJointPositions(v286, v288, &v289, &v287, v52, *(this + 64) + v49);
            this = v273;
          }
        }

        else
        {
          v56 = *(v50 + 252);
          if (*(v50 + v56 + 258) == 1)
          {
            _Q0.i32[0] = *v52;
            v57 = v50 + 8 * v56;
            v59 = *(v57 + 56);
            v58 = v57 + 56;
            v60 = LODWORD(v59);
            if (*v52 < v59)
            {
              *v52 = v60;
              _Q0.i32[0] = v60;
            }

            a4.i32[0] = *(v58 + 4);
            if (_Q0.f32[0] > a4.f32[0])
            {
              *v52 = a4.i32[0];
            }
          }
        }

        ++v48;
        v49 += 76;
        v47 += 10;
      }

      while (v13 != v48);
    }
  }

LABEL_93:
  if (*(this + 685) == 1)
  {
    physx::Dy::PxcFsFlushVelocity(v273, v288, *_Q0.i64, *a4.i64, _D2);
    v207 = *(v273 + 154);
    if (v207 >= 2)
    {
      v208 = *(v273 + 28);
      v209 = *(v273 + 26);
      v210 = *(v273 + 30);
      v211 = *(v273 + 76);
      v212 = *(v273 + 79);
      v213 = 1;
      v214 = 1.0 / *(v273 + 162);
      do
      {
        v215 = v211 + 40 * v213;
        v216 = v212 + 80 * v213;
        v217 = *(v215 + 24);
        v218 = *(v216 + 72);
        v219 = v208 + 4 * v218;
        v220 = (v209 + 4 * v218);
        v221 = (v210 + 4 * v218);
        v222 = *(v217 + 270);
        if (v222 >= 2)
        {
          if (v222 == 2)
          {
            v223 = *(v216 + 76);
            if (v223 > 2)
            {
              v225 = *(v215 + 32);
              v226 = *(v215 + 16);
              *&v289 = *v219;
              DWORD2(v289) = *(v219 + 8);
              v227 = (v258 + 32 * v213);
              v228 = (v258 + 32 * v225);
              v229 = v227[1] - v228[1];
              v230 = v227[2] - v228[2];
              v231 = v226[1];
              v233 = *(v217 + 36);
              v232 = *(v217 + 40);
              v234 = *(v217 + 28);
              v235 = *(v217 + 32);
              v237 = v226[2];
              v236 = v226[3];
              v238 = (((v232 * *v226) + (v236 * v234)) + (v231 * v233)) - (v235 * v237);
              v239 = (((v232 * v231) + (v236 * v235)) + (v237 * v234)) - (v233 * *v226);
              v240 = (((v232 * v237) + (v236 * v233)) + (*v226 * v235)) - (v234 * v231);
              v241 = (((v236 * v232) - (*v226 * v234)) - (v231 * v235)) - (v237 * v233);
              v242 = (*v227 - *v228) + (*v227 - *v228);
              v243 = v229 + v229;
              v244 = v230 + v230;
              v245 = (v241 * v241) + -0.5;
              v246 = (((v229 + v229) * v239) + (v238 * v242)) + (v240 * v244);
              v247 = ((v242 * v245) - (((v239 * v244) - (v240 * (v229 + v229))) * v241)) + (v238 * v246);
              if (*(v217 + 258))
              {
                *v219 = v247;
                v248 = 1;
              }

              else
              {
                v248 = 0;
              }

              v249 = ((v243 * v245) - (((v240 * v242) - (v238 * v244)) * v241)) + (v239 * v246);
              if (*(v217 + 259))
              {
                *(v219 + 4 * v248++) = v249;
              }

              v250 = ((v244 * v245) - (((v238 * v243) - (v239 * v242)) * v241)) + (v240 * v246);
              if (*(v217 + 260))
              {
                *(v219 + 4 * v248++) = v250;
              }

              if (!*(v217 + 258))
              {
                *(v219 + 4 * v248++) = v247;
              }

              if (!*(v217 + 259))
              {
                *(v219 + 4 * v248++) = v249;
              }

              if (!*(v217 + 260))
              {
                *(v219 + 4 * v248) = v250;
              }

              for (i = 0; i != 12; i += 4)
              {
                *(v209 + i) = *(v209 + i) + ((*(&v289 + i) - *(v219 + i)) * v214);
              }
            }

            else if (v223)
            {
              do
              {
                *v219 = *v221 + *v219;
                v219 += 4;
                v224 = *v221++;
                *v220 = *v220 + (v224 * v214);
                ++v220;
                --v223;
              }

              while (v223);
            }
          }
        }

        else
        {
          *v219 = *v221 + *v219;
          *v220 = *v220 + (*v221 * v214);
        }

        ++v213;
      }

      while (v213 != v207);
    }
  }

  if (v13)
  {
    v252 = v258 + 16;
    v253 = (v12 + 16);
    do
    {
      v254 = *v253;
      v253 += 5;
      *(v254 + 64) = *v252;
      *(v254 + 72) = *(v252 + 8);
      *(v254 + 80) = *(v252 - 16);
      *(v254 + 88) = *(v252 - 8);
      *v15 = 0uLL;
      v15[1] = 0uLL;
      v15 += 2;
      v252 += 32;
      --v13;
    }

    while (v13);
  }
}

uint64_t physx::Dy::FeatherstoneArticulation::getJointAcceleration(uint64_t a1, float32x2_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 684) == 1)
  {
    v19 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v19, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyFeatherstoneForwardDynamic.cpp", 1569, "Articulation::getJointAcceleration() commonInit need to be called first to initialize data!", a6, a7, a8, a9);
  }

  else
  {
    v251 = v18;
    v252 = v17;
    v253 = v16;
    v254 = v15;
    v255 = v14;
    v256 = v13;
    v257 = v12;
    v258 = v11;
    v259 = v9;
    v260 = v10;
    v24 = *(a1 + 616);
    v25 = a3[13];
    v250 = 0;
    v248 = 0u;
    v249 = 0u;
    v247 = 0u;
    v234 = v25;
    v26 = physx::PxcScratchAllocator::alloc(v25, 240 * v24, 0);
    v27 = (v26 + (32 * v24));
    v246[0] = v26;
    v246[1] = v27;
    v28 = v26 + (96 * v24);
    v235 = (v26 + (v24 << 6));
    v246[2] = v235;
    v246[3] = v28;
    v233 = v26;
    v29 = a3[3];
    *(&v247 + 1) = v26 + (v24 << 7);
    *&v248 = v29;
    *&v249 = a3[6];
    v30 = physx::Dy::FeatherstoneArticulation::computeLinkVelocities(v26, a1 + 176, v246);
    physx::Dy::FeatherstoneArticulation::computeSpatialInertia(v30, a1 + 176);
    physx::Dy::FeatherstoneArticulation::computeZ(v32, v33, v34, v35, v36, v37, v38, v39, v31, a1 + 176, a2, v246);
    physx::Dy::FeatherstoneArticulation::computeArticulatedSpatialInertia(a1, a1 + 176, v40, v41, v42, v43, v44);
    v49 = physx::Dy::FeatherstoneArticulation::computeC(v46, v47, v48, v45, a1 + 176, v246);
    physx::Dy::FeatherstoneArticulation::computeArticulatedSpatialZ(v50, v49, a1 + 176, v246);
    if ((**(a1 + 664) & 1) == 0)
    {
      v51 = *(a1 + 480);
      v53.i32[0] = *v51;
      v52.i32[0] = *(v51 + 4);
      v54 = *(v51 + 24);
      v55 = *(v51 + 28);
      v57 = *(v51 + 8);
      v56 = *(v51 + 12);
      v59 = *(v51 + 16);
      v58.i32[0] = *(v51 + 20);
      v60 = *(v51 + 32);
      v62 = *(v51 + 100);
      v61 = *(v51 + 104);
      v63 = *(v51 + 88);
      v64 = *(v51 + 92);
      v65 = *(v51 + 96);
      v67 = *(v51 + 80);
      v66 = *(v51 + 84);
      v68.f32[0] = (v66 * v62) - (v63 * v65);
      v69 = *(v51 + 72);
      v70 = *(v51 + 76);
      v71 = ((v70 * ((v64 * v65) - (v66 * v61))) + (v69 * ((v63 * v61) - (v64 * v62)))) + (v67 * v68.f32[0]);
      v72 = 1065353216;
      v73 = 0x3F80000000000000;
      v74 = 0;
      v236 = 1.0;
      v238 = 1065353216;
      v227 = v61;
      if (v71 == 0.0)
      {
        v77 = 0.0;
        v80 = 0.0;
        v82 = 1.0;
        v79 = 0x3F80000000000000;
        v81 = 0;
      }

      else
      {
        v75 = 1.0 / v71;
        v76.f32[0] = (v63 * v61) - (v62 * v64);
        v76.f32[1] = -((v70 * v61) - (v62 * v67));
        v72 = vmul_n_f32(v76, v75);
        v77 = ((v70 * v64) - (v67 * v63)) * v75;
        v78.f32[0] = -((v65 * -v64) + (v66 * v61));
        v78.f32[1] = (v69 * v61) - (v67 * v65);
        v79 = vmul_n_f32(v78, v75);
        v80 = -(((v69 * v64) - (v67 * v66)) * v75);
        v68.f32[1] = -((v69 * v62) - (v70 * v65));
        v81 = vmul_n_f32(v68, v75);
        v82 = ((v70 * -v66) + (v69 * v63)) * v75;
      }

      v83.i32[0] = *(v51 + 28);
      v83.i32[1] = *(v51 + 4);
      v221 = v83;
      v84 = vsub_f32(vsub_f32(vmul_n_f32(v79, -v56), vmul_n_f32(v72, v53.f32[0])), vmul_n_f32(v81, v54));
      v222 = -v59;
      v85 = vsub_f32(vsub_f32(vmul_n_f32(v79, -v59), vmul_n_f32(v72, v52.f32[0])), vmul_n_f32(v81, v55));
      v86 = vsub_f32(vsub_f32(vmul_n_f32(v79, -v58.f32[0]), vmul_n_f32(v72, v57)), vmul_n_f32(v81, v60));
      v87 = (-(v58.f32[0] * v80) - (v57 * v77)) - (v60 * v82);
      v229 = (-(v59 * v80) - (v52.f32[0] * v77)) - (v55 * v82);
      v230 = (-(v56 * v80) - (v53.f32[0] * v77)) - (v54 * v82);
      v88 = ((v52.f32[0] * v84.f32[0]) + vmuls_lane_f32(v59, v84, 1)) + (v55 * v230);
      v89 = ((v57 * v84.f32[0]) + vmuls_lane_f32(v58.f32[0], v84, 1)) + (v60 * v230);
      v90 = ((v52.f32[0] * v85.f32[0]) + vmuls_lane_f32(v59, v85, 1)) + (v55 * v229);
      v91 = ((v57 * v85.f32[0]) + vmuls_lane_f32(v58.f32[0], v85, 1)) + (v60 * v229);
      v92 = v53.f32[0] * v86.f32[0];
      v93 = v52.f32[0] * v86.f32[0];
      v225 = *(v51 + 8);
      v83.f32[0] = vmuls_lane_f32(v56, v86, 1);
      v223 = *(v51 + 16);
      v94 = vmuls_lane_f32(v59, v86, 1);
      v226 = v86;
      v95 = (v57 * v86.f32[0]) + vmuls_lane_f32(v58.f32[0], v86, 1);
      v228 = v87;
      v224 = *(v51 + 32);
      v86.f32[0] = v60 * v87;
      v96 = (v92 + v83.f32[0]) + (v54 * v87);
      v97 = (v93 + v94) + (v55 * v87);
      v98 = v95 + v86.f32[0];
      v99 = *(v51 + 36);
      v100 = *(v51 + 40);
      v101 = v99 + (((v53.f32[0] * v84.f32[0]) + vmuls_lane_f32(v56, v84, 1)) + (v54 * v230));
      v102 = v100 + v88;
      v103 = *(v51 + 44);
      v104 = *(v51 + 48);
      v105 = v103 + v89;
      v106 = (((v53.f32[0] * v85.f32[0]) + vmuls_lane_f32(v56, v85, 1)) + (v54 * v229)) + v104;
      v108 = *(v51 + 52);
      v107 = *(v51 + 56);
      v109 = v90 + v108;
      v110 = v91 + v107;
      v111 = *(v51 + 60);
      v112 = *(v51 + 64);
      v113 = v96 + v111;
      v114 = v97 + v112;
      v115 = *(v51 + 68);
      v116 = v98 + v115;
      v117 = ((v102 * ((v110 * v113) - (v106 * (v98 + v115)))) + (v101 * ((v109 * (v98 + v115)) - (v110 * v114)))) + (v105 * ((v106 * v114) - (v109 * v113)));
      v232 = 0;
      if (v117 != 0.0)
      {
        v118 = 1.0 / v117;
        v119 = (v102 * v110) - (v105 * v109);
        v120.f32[0] = -((v113 * -v110) + (v106 * v116));
        v120.f32[1] = (v109 * v116) - (v114 * v110);
        v121 = vmul_n_f32(v120, 1.0 / v117);
        v120.f32[0] = (v101 * v116) - (v105 * v113);
        v120.f32[1] = -((v102 * v116) - (v114 * v105));
        v73 = v121;
        v122.f32[0] = -((v101 * v110) - (v105 * v106));
        v122.f32[1] = v119;
        v74 = vmul_n_f32(v122, v118);
        v122.f32[0] = -((v101 * v114) - (v102 * v113));
        v122.f32[1] = (v106 * v114) - (v109 * v113);
        v232 = vmul_n_f32(v122, v118);
        v236 = ((v102 * -v106) + (v101 * v109)) * v118;
        v238 = vmul_n_f32(v120, v118);
      }

      v231 = v74;
      v123 = vneg_f32(v221);
      v124 = (v104 * v112) - (v108 * v111);
      v125 = ((v100 * ((v107 * v111) - (v104 * v115))) + (v99 * ((v108 * v115) - (v107 * v112)))) + (v103 * v124);
      v126 = 1.0;
      v127 = 0.0;
      v128 = 0.0;
      v129 = 0.0;
      v130 = 1.0;
      v131 = 0.0;
      v132 = 0.0;
      v133 = 0.0;
      v134 = 1.0;
      if (v125 != 0.0)
      {
        v126 = ((v108 * v115) - (v112 * v107)) * (1.0 / v125);
        v127 = -(((v100 * v115) - (v112 * v103)) * (1.0 / v125));
        v128 = ((v100 * v107) - (v103 * v108)) * (1.0 / v125);
        v129 = -(((v111 * -v107) + (v104 * v115)) * (1.0 / v125));
        v130 = ((v99 * v115) - (v103 * v111)) * (1.0 / v125);
        v131 = -(((v99 * v107) - (v103 * v104)) * (1.0 / v125));
        v132 = v124 * (1.0 / v125);
        v133 = -(((v99 * v112) - (v100 * v111)) * (1.0 / v125));
        v134 = ((v100 * -v104) + (v99 * v108)) * (1.0 / v125);
      }

      v135 = vmul_n_f32(v123, v129);
      v136 = vmul_n_f32(v123, v130);
      v137 = vmul_n_f32(v123, v131);
      v138 = (v131 * v222) - (v56 * v128);
      *&v139 = ((v129 * v222) - (v56 * v126)) - (v58.f32[0] * v132);
      v140 = vmul_n_f32(__PAIR64__(v225, LODWORD(v224)), v133);
      *&v141 = ((v130 * v222) - (v56 * v127)) - (v58.f32[0] * v133);
      *&v142 = v138 - (v58.f32[0] * v134);
      v143 = ((v54 * *&v139) + (v55 * *&v141)) + (v224 * *&v142);
      v144 = vsub_f32(v135, vmul_n_f32(__PAIR64__(v53.u32[0], LODWORD(v54)), v126));
      v145 = vsub_f32(v136, vmul_n_f32(__PAIR64__(v53.u32[0], LODWORD(v54)), v127));
      v146 = vsub_f32(v137, vmul_n_f32(__PAIR64__(v53.u32[0], LODWORD(v54)), v128));
      v147 = vsub_f32(v144, vmul_n_f32(__PAIR64__(v225, LODWORD(v224)), v132));
      v148 = vsub_f32(v145, v140);
      v149 = vsub_f32(v146, vmul_n_f32(__PAIR64__(v225, LODWORD(v224)), v134));
      v53.i32[1] = *(v51 + 24);
      v52.i32[1] = *(v51 + 28);
      _D7 = __PAIR64__(v149.u32[1], v142);
      _D3 = vadd_f32(vadd_f32(vmul_f32(v53, v147), vmul_f32(v52, v148)), vmul_f32(__PAIR64__(LODWORD(v224), v225), v149));
      v151 = v224 * v149.f32[0];
      v149.f32[0] = ((v56 * v147.f32[0]) + (v223 * v148.f32[0])) + (v58.f32[0] * v149.f32[0]);
      v152 = ((v54 * v147.f32[0]) + (v55 * v148.f32[0])) + v151;
      v153 = *(v51 + 92) + v143;
      v58.i32[1] = *(v51 + 8);
      v154 = vadd_f32(vadd_f32(vmul_f32(__PAIR64__(LODWORD(v56), v53.u32[0]), __PAIR64__(v147.u32[1], v139)), vmul_f32(__PAIR64__(LODWORD(v223), v52.u32[0]), __PAIR64__(v148.u32[1], v141))), vmul_f32(__PAIR64__(v58.u32[0], v225), _D7));
      v155 = vadd_f32(vadd_f32(vmul_f32(__PAIR64__(v53.u32[0], LODWORD(v56)), __PAIR64__(v147.u32[1], v139)), vmul_f32(__PAIR64__(v52.u32[0], LODWORD(v223)), __PAIR64__(v148.u32[1], v141))), vmul_f32(v58, _D7));
      v147.i32[0] = *(v51 + 84);
      v147.i32[1] = *(v51 + 76);
      v156 = vadd_f32(v147, v154);
      _D4 = vadd_f32(__PAIR64__(*(v51 + 72), *(v51 + 88)), v155);
      _D1 = vadd_f32(__PAIR64__(*(v51 + 80), *(v51 + 96)), _D3);
      v159 = *(v51 + 100) + v149.f32[0];
      v160 = v227 + v152;
      _D7.f32[0] = (_D4.f32[0] * (v227 + v152)) - (v153 * v159);
      __asm { FMLA            S3, S7, V4.S[1] }

      _D7.f32[0] = (-_D4.f32[0] * _D1.f32[0]) + (v156.f32[0] * v159);
      __asm { FMLA            S3, S7, V1.S[1] }

      if (_S3 == 0.0)
      {
        __asm { FMOV            V2.2S, #1.0 }

        v175 = 0;
        v177 = 0.0;
        v178 = 0;
        v180 = v231;
        v172 = 0.0;
        v179 = 1.0;
      }

      else
      {
        v167 = -v156.f32[0];
        v168 = v156.f32[1];
        v169 = 1.0 / _S3;
        v170 = vdup_lane_s32(_D1, 0);
        v171 = vneg_f32(__PAIR64__(_D1.u32[1], LODWORD(v159)));
        v172 = (vmuls_lane_f32(_D4.f32[0], v171, 1) + (v156.f32[1] * v153)) * v169;
        v170.f32[0] = v153;
        v173 = vmla_n_f32(vmul_f32(v170, v171), _D4, v160);
        v174 = vdup_lane_s32(v171, 0);
        v174.f32[0] = -v153;
        v175 = vmul_n_f32(vneg_f32(vmla_n_f32(vmul_f32(_D1, v174), v156, v160)), v169);
        _D2 = vmul_n_f32(v173, v169);
        v177 = -((vmuls_lane_f32(v156.f32[0], v171, 1) + (_D4.f32[1] * v153)) * v169);
        _D7.f32[1] = -((_D4.f32[1] * v159) - (v156.f32[1] * _D1.f32[0]));
        v178 = vmul_n_f32(_D7, v169);
        v179 = ((v168 * v167) + (_D4.f32[1] * _D4.f32[0])) * v169;
        v180 = v231;
      }

      v181 = (vmuls_lane_f32(v230, v232, 1) + (v229 * v232.f32[0])) + (v228 * v236);
      v182 = *(v28 + 2);
      v183 = *(v28 + 6);
      v184 = vadd_f32(vadd_f32(vmul_f32(__PAIR64__(v84.u32[1], v85.u32[0]), v232), vmul_f32(__PAIR64__(v85.u32[1], v84.u32[0]), vrev64_s32(v232))), vmul_n_f32(v226, v236));
      v185 = vadd_f32(vadd_f32(vmul_f32(v84, v73), vmul_f32(v85, v238)), vmul_f32(v226, v180));
      v186 = vadd_f32(vadd_f32(vmul_f32(v84, vrev64_s32(v73)), vmul_f32(v85, vrev64_s32(v238))), vmul_f32(v226, vrev64_s32(v180)));
      v187 = vrev64_s32(*v28);
      v188 = *(v28 + 16);
      v189 = vrev64_s32(v188);
      *v27 = vneg_f32(vadd_f32(vadd_f32(vadd_f32(vmul_f32(v185, v187), vmul_f32(v186, *v28)), vmul_n_f32(v184, v182)), vadd_f32(vadd_f32(vmul_f32(v175, v189), vmul_f32(_D2, v188)), vmul_n_f32(v178, v183))));
      *(v27 + 3) = 0;
      v190 = vadd_f32(vadd_f32(vmul_n_f32(v73, v230), vmul_n_f32(v238, v229)), vmul_n_f32(v180, v228));
      *(v27 + 2) = -((vaddv_f32(vmul_f32(v190, v187)) + (v181 * v182)) + (((v172 * v188.f32[0]) + vmuls_lane_f32(v177, v188, 1)) + (v179 * v183)));
      v27[2] = vneg_f32(vrev64_s32(vadd_f32(vadd_f32(vadd_f32(vmul_f32(vext_s8(v238, v73, 4uLL), vrev64_s32(v187)), vmul_f32(__PAIR64__(v73.u32[1], v238.u32[0]), v187)), vmul_n_f32(v232, v182)), vmla_n_f32(vmla_n_f32(vmul_lane_f32(vzip2_s32(v186, v185), v188, 1), vzip1_s32(v185, v186), v188.f32[0]), v190, v183))));
      *(v27 + 6) = -((vaddv_f32(vmul_f32(v180, v187)) + (v236 * v182)) + ((vmul_lane_f32(v189, v184, 1).f32[0] + (v184.f32[0] * v188.f32[0])) + (v181 * v183)));
      *(v27 + 7) = 0;
    }

    if (v24 >= 2)
    {
      v191 = 1;
      v192 = a3[4];
      v193 = 96;
      do
      {
        v194 = *(a1 + 624) + 160 * v191;
        _S0 = *(v194 + 120);
        v196 = &v27[4 * *(*(a1 + 608) + 40 * v191 + 32)];
        _D1 = *(v194 + 124);
        v198.i32[0] = vdup_lane_s32(_D1, 1).u32[0];
        v198.i32[1] = _S0;
        _D6 = *v196;
        v200 = vrev64_s32(*v196);
        v200.i32[0] = *(v196 + 2);
        v201 = vmls_f32(vmul_f32(v198, *(v196 + 4)), v200, _D1);
        __asm { FMLS            S1, S0, V6.S[1] }

        v202 = vadd_f32(*(v196 + 16), v201);
        v203 = _D1.f32[0] + *(v196 + 6);
        v237 = *v196;
        v239 = v200.f32[0];
        v240 = *v196;
        v241 = v200.i32[0];
        v242 = 0;
        v243 = v202;
        v244 = v203;
        v245 = 0;
        v204 = *(a1 + 632) + 80 * v191;
        v205 = (v192 + 4 * *(v204 + 72));
        physx::Dy::FeatherstoneArticulation::computeJointAccelerationW(a1, v194, *(v204 + 76), &v240, v205, v191);
        v206 = *(v204 + 76);
        if (*(v204 + 76))
        {
          v207 = (*(a1 + 528) + v193);
          v208 = 0;
          v209 = 0.0;
          v210 = 0.0;
          v211 = 0;
          do
          {
            v212 = *v205++;
            v213 = v212;
            v208 = vadd_f32(v208, vmul_n_f32(*(v207 - 5), v212));
            v210 = v210 + (v212 * *(v207 - 3));
            v214 = vmul_n_f32(*(v207 - 2), v212);
            v215 = *v207;
            v207 += 6;
            v211 = vadd_f32(v211, v214);
            v209 = v209 + (v213 * v215);
            --v206;
          }

          while (v206);
        }

        else
        {
          v208 = 0;
          v210 = 0.0;
          v209 = 0.0;
          v211 = 0;
        }

        v216 = &v235[4 * v191];
        v217 = v209 + (v203 + v216[3].f32[0]);
        v218 = &v27[4 * v191];
        v219 = vadd_f32(v208, vadd_f32(v237, *v216));
        v218[1].f32[0] = v210 + (v239 + v216[1].f32[0]);
        v218[1].i32[1] = 0;
        v220 = vadd_f32(v211, vadd_f32(v202, v216[2]));
        *v218 = v219;
        v218[2] = v220;
        v218[3].f32[0] = v217;
        v218[3].i32[1] = 0;
        ++v191;
        v193 += 76;
      }

      while (v191 != v24);
    }

    return physx::PxcScratchAllocator::free(v234, v233);
  }
}

uint64_t physx::Dy::partitionContactConstraints(uint64_t *a1)
{
  v322 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 2);
  v3 = *(a1 + 6);
  v4 = *(a1 + 10);
  v313 = a1[4];
  v5 = a1[6];
  v318 = a1[7];
  v6 = a1[10];
  *(v6 + 8) = 0;
  v7 = *(a1 + 3);
  if (v2)
  {
    v8 = 0;
    v9 = *a1;
    v10 = v2;
    do
    {
      v11 = v9 + v8;
      *(v11 + 28) = 0;
      *(v11 + 12) = 0;
      v8 += v7;
      --v10;
    }

    while (v10);
  }

  v314 = v4;
  v317 = v5;
  v312 = a1;
  if (!v3)
  {
    v15 = *a1;
    v16 = v7 * v2;
    *(v6 + 8) = 32;
    v17 = *v6;
    v17[6] = 0u;
    v17[7] = 0u;
    v17[4] = 0u;
    v17[5] = 0u;
    v17[2] = 0u;
    v17[3] = 0u;
    *v17 = 0u;
    v17[1] = 0u;
    if (v4)
    {
      v18 = 0;
      v19 = v314 - 1;
      _X12 = v313;
      do
      {
        v21 = v19;
        if (v19 >= 4uLL)
        {
          v21 = 4;
        }

        v22 = &_X12[6 * v21];
        _X14 = v22[4];
        __asm { PRFM            #0, [X14] }

        _X14 = *v22;
        _X13 = v22[1];
        __asm
        {
          PRFM            #0, [X14]
          PRFM            #0, [X13]
          PRFM            #0, [X12,#0x180]
        }

        v34 = *_X12;
        v35 = _X12[1];
        v36 = (*_X12 - v15) / v7;
        v37 = (v35 - v15) / v7;
        if (v36 >= v2 || v37 >= v2)
        {
          if (v36 < v2)
          {
            ++*(v34 + 14);
          }

          if (v37 < v2)
          {
            ++*(_X12[1] + 14);
          }
        }

        else
        {
          v38 = *(v34 + 28);
          v39 = *(v35 + 28);
          if ((v39 | v38) == 0xFFFFFFFF)
          {
            v45 = &v318[6 * v18++];
            v46 = *_X12;
            v47 = *(_X12 + 2);
            v45[1] = *(_X12 + 1);
            v45[2] = v47;
            *v45 = v46;
          }

          else
          {
            v40 = __clz(__rbit32(~(v39 | v38)));
            v41 = (1 << v40) | v39;
            ++*(*v6 + 4 * v40);
            *(*_X12 + 28) = (1 << v40) | v38;
            v42 = *(*_X12 + 12);
            if (v42 <= v40 + 1)
            {
              LOWORD(v42) = v40 + 1;
            }

            *(*_X12 + 12) = v42;
            *(_X12[1] + 28) = v41;
            v43 = _X12[1];
            v44 = *(v43 + 12);
            if (v44 <= v40 + 1)
            {
              LOWORD(v44) = v40 + 1;
            }

            *(v43 + 12) = v44;
          }
        }

        _X12 += 6;
        --v19;
      }

      while (v19 != -1);
      if (v18)
      {
        v48 = 0;
        do
        {
          if (v16)
          {
            for (i = 0; i < v16; i += v7)
            {
              *(v15 + 28 + i) = 0;
            }
          }

          v48 += 32;
          v50 = *(v6 + 8);
          LODWORD(v319) = 0;
          physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(v6, v50 + 32, &v319);
          v51 = (*v6 + 4 * v48);
          v51[6] = 0u;
          v51[7] = 0u;
          v51[4] = 0u;
          v51[5] = 0u;
          v51[2] = 0u;
          v51[3] = 0u;
          *v51 = 0u;
          v51[1] = 0u;
          if (v18 <= 1)
          {
            v52 = 1;
          }

          else
          {
            v52 = v18;
          }

          v5 = v317;
          v53 = v318;
          v18 = 0;
          do
          {
            v54 = v53[1];
            v55 = *(*v53 + 28);
            v56 = *(v54 + 28);
            if ((v56 | v55) == 0xFFFFFFFF)
            {
              v67 = &v318[6 * v18++];
              v68 = *v53;
              v69 = *(v53 + 2);
              v67[1] = *(v53 + 1);
              v67[2] = v69;
              *v67 = v68;
            }

            else
            {
              v57 = (v54 - v15) / v7;
              v58 = __clz(__rbit32(~(v56 | v55)));
              if ((*v53 - v15) / v7 >= v2)
              {
                v59 = 0;
              }

              else
              {
                v59 = 1 << v58;
              }

              v60 = v59 | v55;
              if (v57 >= v2)
              {
                v61 = 0;
              }

              else
              {
                v61 = 1 << v58;
              }

              v62 = v61 | v56;
              ++*(*v6 + 4 * (v58 + v48));
              v63 = v58 + v48 + 1;
              *(*v53 + 28) = v60;
              v64 = *(*v53 + 12);
              if (v64 <= v63)
              {
                LOWORD(v64) = v63;
              }

              *(*v53 + 12) = v64;
              *(v53[1] + 28) = v62;
              v65 = v53[1];
              v66 = *(v65 + 12);
              if (v66 <= v63)
              {
                LOWORD(v66) = v63;
              }

              *(v65 + 12) = v66;
            }

            v53 += 6;
            --v52;
          }

          while (v52);
        }

        while (v18);
      }
    }

    if (v16)
    {
      for (j = 0; j < v16; j += v7)
      {
        v71 = v15 + j;
        *(v71 + 28) = 0;
        LODWORD(v72) = *(v71 + 14);
        v73 = v72 + *(v71 + 12);
        if (v73 > *(v6 + 8))
        {
          LODWORD(v319) = 0;
          physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(v6, v73, &v319);
          v5 = v317;
          LODWORD(v72) = *(v71 + 14);
        }

        if (v72)
        {
          v72 = v72;
          v74 = (*v6 + 4 * *(v71 + 12));
          do
          {
            ++*v74++;
            --v72;
          }

          while (v72);
        }
      }
    }

    if (*(v6 + 8))
    {
      v75 = 0;
      v76 = 0;
      v77 = *v6;
      do
      {
        v78 = *(v77 + v75);
        *(v77 + v75) = v76;
        v76 += v78;
        ++v75;
      }

      while (v75 < *(v6 + 8));
    }

    v79 = v312;
    v80 = v314;
    if (v2)
    {
      v81 = 0;
      v82 = *v312;
      _X10 = *v312 + 256;
      v84 = v2;
      do
      {
        __asm { PRFM            #0, [X10] }

        v86 = v82 + v81;
        *(v86 + 28) = 0;
        *(v86 + 14) = 0;
        v81 += v7;
        ++_X10;
        --v84;
      }

      while (v84);
    }

    _X1 = v313;
    if (!v80)
    {
LABEL_104:
      v136 = 0;
      v137 = v79;
      goto LABEL_303;
    }

    v88 = 0;
    v89 = 0;
    v90 = v80 - 1;
    while (1)
    {
      v91 = v90;
      if (v90 >= 4uLL)
      {
        v91 = 4;
      }

      v92 = &_X1[6 * v91];
      _X15 = v92[4];
      __asm { PRFM            #0, [X15] }

      _X15 = *v92;
      _X14 = v92[1];
      __asm
      {
        PRFM            #0, [X15]
        PRFM            #0, [X14]
        PRFM            #0, [X1,#0x180]
      }

      v100 = *_X1;
      v101 = _X1[1];
      v102 = (*_X1 - v15) / v7;
      v103 = (v101 - v15) / v7;
      if (v102 >= v2 || v103 >= v2)
      {
        if (v102 >= v2 && v103 >= v2)
        {
          goto LABEL_83;
        }

        if (v102 >= v2)
        {
          v100 = _X1[1];
        }

        v112 = *(v100 + 12);
        v113 = *(v100 + 14);
        *(v100 + 14) = v113 + 1;
        v114 = *v6 + 4 * v113;
        v111 = *(v114 + 4 * v112);
        *(v114 + 4 * v112) = v111 + 1;
      }

      else
      {
        v104 = *(v100 + 28);
        v105 = *(v101 + 28);
        if ((v105 | v104) == 0xFFFFFFFF)
        {
          v111 = v88++;
          v115 = v318;
          goto LABEL_82;
        }

        v106 = __clz(__rbit32(~(v105 | v104)));
        v107 = (1 << v106) | v105;
        *(v100 + 28) = (1 << v106) | v104;
        v108 = *(*_X1 + 12);
        if (v108 <= v106 + 1)
        {
          LOWORD(v108) = v106 + 1;
        }

        *(*_X1 + 12) = v108;
        *(_X1[1] + 28) = v107;
        v109 = _X1[1];
        v110 = *(v109 + 12);
        if (v110 <= v106 + 1)
        {
          LOWORD(v110) = v106 + 1;
        }

        *(v109 + 12) = v110;
        v111 = *(*v6 + 4 * v106);
        *(*v6 + 4 * v106) = v111 + 1;
      }

      v115 = v5;
LABEL_82:
      v116 = &v115[6 * v111];
      v117 = *_X1;
      v118 = *(_X1 + 2);
      v116[1] = *(_X1 + 1);
      v116[2] = v118;
      *v116 = v117;
LABEL_83:
      ++v89;
      _X1 += 6;
      --v90;
      if (v80 == v89)
      {
        if (v88)
        {
          v119 = 0;
          v120 = v318 + 1;
          do
          {
            if (v16)
            {
              for (k = 0; k < v16; k += v7)
              {
                *(v15 + 28 + k) = 0;
              }
            }

            v119 += 32;
            if (v88 <= 1)
            {
              v122 = 1;
            }

            else
            {
              v122 = v88;
            }

            v123 = v120;
            v88 = 0;
            do
            {
              v124 = *(v123 - 1);
              v125 = *(v124 + 28);
              v126 = *(*v123 + 28);
              if ((v126 | v125) == 0xFFFFFFFF)
              {
                v131 = v88++;
                v132 = v318;
              }

              else
              {
                v127 = __clz(__rbit32(~(v126 | v125)));
                if ((v124 - v15) / v7 >= v2)
                {
                  v128 = 0;
                }

                else
                {
                  v128 = 1 << v127;
                }

                v129 = v128 | v125;
                if ((*v123 - v15) / v7 >= v2)
                {
                  v130 = 0;
                }

                else
                {
                  v130 = 1 << v127;
                }

                *(v124 + 28) = v129;
                *(*v123 + 28) = v130 | v126;
                v131 = *(*v6 + 4 * (v127 + v119));
                *(*v6 + 4 * (v127 + v119)) = v131 + 1;
                v132 = v5;
              }

              v133 = &v132[6 * v131];
              v134 = *(v123 - 1);
              v135 = *(v123 + 3);
              v133[1] = *(v123 + 1);
              v133[2] = v135;
              *v133 = v134;
              v123 += 6;
              --v122;
            }

            while (v122);
          }

          while (v88);
        }

        goto LABEL_104;
      }
    }
  }

  v12 = a1[2];
  v13 = (8 * v3);
  v320 = v13 > 0x400;
  if (v13 < 0x401)
  {
    MEMORY[0x1EEE9AC00](a1);
    v14 = (&v311 - ((v13 + 15) & 0x1FFFFFFF0));
    bzero(v14, (8 * v3));
  }

  else
  {
    v14 = physx::shdfnd::TempAllocator::allocate(&v321, (8 * v3), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyConstraintPartition.cpp", 844);
  }

  v311 = (8 * v3);
  v138 = 0;
  v319 = v14;
  do
  {
    v139 = *v12;
    v12 += 12;
    v14[v138++] = v139;
    *(v139 + 8) = 0;
  }

  while (v3 != v138);
  v315 = v14;
  v316 = v3;
  v140 = *a1;
  v141 = v7 * v2;
  *(v6 + 8) = 32;
  v142 = *v6;
  v142[6] = 0u;
  v142[7] = 0u;
  v142[4] = 0u;
  v142[5] = 0u;
  v142[2] = 0u;
  v142[3] = 0u;
  *v142 = 0u;
  v142[1] = 0u;
  v143 = v317;
  if (v4)
  {
    v144 = 0;
    v145 = v314 - 1;
    _X28 = v313;
    while (1)
    {
      v147 = v145;
      if (v145 >= 4uLL)
      {
        v147 = 4;
      }

      v148 = &_X28[6 * v147];
      _X9 = v148[4];
      __asm { PRFM            #0, [X9] }

      _X9 = *v148;
      _X8 = v148[1];
      __asm
      {
        PRFM            #0, [X9]
        PRFM            #0, [X8]
        PRFM            #0, [X28,#0x180]
      }

      v156 = *(_X28 + 8);
      v157 = *_X28;
      if (v156 != 0xFFFF)
      {
        break;
      }

      if ((v157 - v140) / v7 < v2)
      {
        v158 = 14;
        goto LABEL_116;
      }

      v157 = _X28[1];
      if (*(_X28 + 9) != -1)
      {
        goto LABEL_140;
      }

      if ((v157 - v140) / v7 < v2)
      {
        goto LABEL_143;
      }

LABEL_144:
      _X28 += 6;
      if (--v145 == -1)
      {
        if (!v144)
        {
          goto LABEL_193;
        }

        v179 = 0;
        while (1)
        {
          if (v141)
          {
            for (m = 0; m < v141; m += v7)
            {
              *(v140 + 28 + m) = 0;
            }
          }

          v181 = v315;
          v182 = v316;
          do
          {
            v183 = *v181++;
            *(v183 + 12) = 0;
            --v182;
          }

          while (v182);
          v179 += 32;
          v184 = *(v6 + 8);
          v321 = 0;
          physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(v6, v184 + 32, &v321);
          v185 = (*v6 + 4 * v179);
          v185[6] = 0u;
          v185[7] = 0u;
          v185[4] = 0u;
          v185[5] = 0u;
          v185[2] = 0u;
          v185[3] = 0u;
          *v185 = 0u;
          v185[1] = 0u;
          if (v144 <= 1)
          {
            v186 = 1;
          }

          else
          {
            v186 = v144;
          }

          v143 = v317;
          v187 = v318;
          v144 = 0;
          do
          {
            v188 = *(v187 + 8);
            v189 = *v187;
            if (v188 != 0xFFFF)
            {
              v190 = 12;
LABEL_160:
              v191 = *(v189 + v190);
              v192 = 1;
              goto LABEL_161;
            }

            if ((v189 - v140) / v7 < v2)
            {
              v190 = 28;
              goto LABEL_160;
            }

            v191 = 0;
            v192 = 0;
LABEL_161:
            v193 = *(v187 + 9);
            v194 = v187[1];
            if (v193 != 0xFFFF)
            {
              v195 = 12;
LABEL_165:
              v196 = *(v194 + v195);
              v197 = 1;
              goto LABEL_166;
            }

            if ((v194 - v140) / v7 < v2)
            {
              v195 = 28;
              goto LABEL_165;
            }

            v197 = 0;
            v196 = 0;
LABEL_166:
            if ((v196 | v191) == 0xFFFFFFFF)
            {
              v205 = &v318[6 * v144++];
              v206 = *v187;
              v207 = *(v187 + 2);
              v205[1] = *(v187 + 1);
              v205[2] = v207;
              *v205 = v206;
            }

            else
            {
              v198 = __clz(__rbit32(~(v196 | v191)));
              if (v192)
              {
                v199 = 1 << v198;
              }

              else
              {
                v199 = 0;
              }

              v200 = v199 | v191;
              if (v197)
              {
                v201 = 1 << v198;
              }

              else
              {
                v201 = 0;
              }

              ++*(*v6 + 4 * (v198 + v179));
              v202 = v198 + v179 + 1;
              v203 = *v187;
              if (v188 == 0xFFFF)
              {
                *(v203 + 28) = v200;
                v208 = *(*v187 + 12);
                if (v208 <= v202)
                {
                  LOWORD(v208) = v198 + v179 + 1;
                }

                *(*v187 + 12) = v208;
              }

              else
              {
                *(v203 + 12) = v200;
                v204 = *(v203 + 10);
                if (v204 <= v202)
                {
                  LOWORD(v204) = v198 + v179 + 1;
                }

                *(v203 + 10) = v204;
              }

              v209 = v201 | v196;
              v210 = v187[1];
              if (v193 == 0xFFFF)
              {
                *(v210 + 28) = v209;
                v212 = v187[1];
                v213 = *(v212 + 12);
                if (v213 <= v202)
                {
                  LOWORD(v213) = v198 + v179 + 1;
                }

                *(v212 + 12) = v213;
              }

              else
              {
                *(v210 + 12) = v209;
                v211 = *(v210 + 10);
                if (v211 <= v202)
                {
                  LOWORD(v211) = v198 + v179 + 1;
                }

                *(v210 + 10) = v211;
              }
            }

            v187 += 6;
            --v186;
          }

          while (v186);
          if (!v144)
          {
            goto LABEL_193;
          }
        }
      }
    }

    v158 = 6;
LABEL_116:
    v159 = *&v157[v158];
    v160 = *(_X28 + 9);
    v161 = _X28[1];
    if (v160 != 0xFFFF)
    {
      v162 = 12;
      goto LABEL_120;
    }

    if ((v161 - v140) / v7 < v2)
    {
      v162 = 28;
LABEL_120:
      v163 = *(v161 + v162);
      if ((v163 | v159) == 0xFFFFFFFF)
      {
        v170 = &v318[6 * v144++];
        v171 = *_X28;
        v172 = *(_X28 + 2);
        v170[1] = *(_X28 + 1);
        v170[2] = v172;
        *v170 = v171;
      }

      else
      {
        v164 = __clz(__rbit32(~(v163 | v159)));
        v165 = 1 << v164;
        v166 = (1 << v164) | v159;
        ++*(*v6 + 4 * v164);
        v167 = v164 + 1;
        v168 = *_X28;
        if (v156 == 0xFFFF)
        {
          *(v168 + 28) = v166;
          v173 = *(*_X28 + 12);
          if (v173 <= v167)
          {
            LOWORD(v173) = v167;
          }

          *(*_X28 + 12) = v173;
        }

        else
        {
          *(v168 + 12) = v166;
          v169 = *(v168 + 10);
          if (v169 <= v167)
          {
            LOWORD(v169) = v167;
          }

          *(v168 + 10) = v169;
        }

        v174 = v165 | v163;
        v175 = _X28[1];
        if (v160 == 0xFFFF)
        {
          *(v175 + 28) = v174;
          v177 = _X28[1];
          v178 = *(v177 + 12);
          if (v178 <= v167)
          {
            LOWORD(v178) = v167;
          }

          *(v177 + 12) = v178;
        }

        else
        {
          *(v175 + 12) = v174;
          v176 = *(v175 + 10);
          if (v176 <= v167)
          {
            LOWORD(v176) = v167;
          }

          *(v175 + 10) = v176;
        }
      }

      goto LABEL_144;
    }

    if (v156 != 0xFFFF)
    {
LABEL_140:
      if (((*(*v157 + 352))(v157) & 1) == 0)
      {
        ++v157[4];
      }

      v143 = v317;
      goto LABEL_144;
    }

LABEL_143:
    ++v157[7];
    goto LABEL_144;
  }

LABEL_193:
  v214 = v315;
  if (v141)
  {
    for (n = 0; n < v141; n += v7)
    {
      v216 = v140 + n;
      *(v216 + 28) = 0;
      LODWORD(v217) = *(v216 + 14);
      v218 = v217 + *(v216 + 12);
      if (v218 > *(v6 + 8))
      {
        v321 = 0;
        physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(v6, v218, &v321);
        v143 = v317;
        LODWORD(v217) = *(v216 + 14);
      }

      if (v217)
      {
        v217 = v217;
        v219 = (*v6 + 4 * *(v216 + 12));
        do
        {
          ++*v219++;
          --v217;
        }

        while (v217);
      }
    }
  }

  v220 = 0;
  do
  {
    v221 = v214[v220];
    *(v221 + 12) = 0;
    LODWORD(v222) = *(v221 + 8);
    v223 = v222 + *(v221 + 10);
    if (v223 > *(v6 + 8))
    {
      v321 = 0;
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(v6, v223, &v321);
      v143 = v317;
      LODWORD(v222) = *(v221 + 8);
    }

    if (v222)
    {
      v222 = v222;
      v224 = (*v6 + 4 * *(v221 + 10));
      do
      {
        ++*v224++;
        --v222;
      }

      while (v222);
    }

    ++v220;
    v225 = v316;
  }

  while (v220 != v316);
  v137 = v312;
  if (*(v6 + 8))
  {
    v226 = 0;
    v227 = 0;
    v228 = *v6;
    do
    {
      v229 = *(v228 + v226);
      *(v228 + v226) = v227;
      v227 += v229;
      ++v226;
    }

    while (v226 < *(v6 + 8));
  }

  v230 = v314;
  _X21 = v313;
  if (v2)
  {
    v232 = 0;
    v233 = *v137;
    v234 = v2;
    do
    {
      v235 = v233 + v232;
      *(v235 + 28) = 0;
      *(v235 + 14) = 0;
      v232 += v7;
      --v234;
    }

    while (v234);
  }

  v236 = 0;
  v237 = v315;
  do
  {
    v238 = v237[v236];
    *(v238 + 12) = 0;
    *(v238 + 8) = 0;
    ++v236;
  }

  while (v225 != v236);
  if (v230)
  {
    v239 = 0;
    v136 = 0;
    v240 = v230 - 1;
    while (1)
    {
      v241 = v240;
      if (v240 >= 4uLL)
      {
        v241 = 4;
      }

      v242 = &_X21[6 * v241];
      _X9 = v242[4];
      __asm { PRFM            #0, [X9] }

      _X9 = *v242;
      _X8 = v242[1];
      __asm
      {
        PRFM            #0, [X9]
        PRFM            #0, [X8]
        PRFM            #0, [X21,#0x180]
      }

      v250 = *(_X21 + 8);
      v251 = *_X21;
      if (v250 != 0xFFFF)
      {
        break;
      }

      if ((v251 - v140) / v7 < v2)
      {
        v252 = 28;
        goto LABEL_224;
      }

      v251 = _X21[1];
      if (*(_X21 + 9) == -1)
      {
        if ((v251 - v140) / v7 < v2)
        {
          goto LABEL_252;
        }

        goto LABEL_250;
      }

LABEL_249:
      v270 = (*(*v251 + 344))(v251, _X21);
      v143 = v317;
      if ((v270 & 1) == 0)
      {
        v271 = *(v251 + 10);
        v272 = *(v251 + 8);
        *(v251 + 8) = v272 + 1;
        goto LABEL_253;
      }

LABEL_250:
      ++v136;
LABEL_255:
      _X21 += 6;
      if (--v240 == -1)
      {
        if (!v239)
        {
          v230 = v314;
          goto LABEL_300;
        }

        v277 = 0;
        v278 = (v318 + 2);
        v230 = v314;
        while (1)
        {
          if (v141)
          {
            for (ii = 0; ii < v141; ii += v7)
            {
              *(v140 + 28 + ii) = 0;
            }
          }

          v280 = v315;
          v281 = v316;
          do
          {
            v282 = *v280++;
            *(v282 + 12) = 0;
            --v281;
          }

          while (v281);
          v277 += 32;
          if (v239 <= 1)
          {
            v283 = 1;
          }

          else
          {
            v283 = v239;
          }

          v284 = v278;
          v239 = 0;
          do
          {
            v285 = *(v284 - 2);
            v286 = *v284;
            if (v286 != 0xFFFF)
            {
              v287 = 12;
LABEL_271:
              v288 = *(v285 + v287);
              v289 = 1;
              goto LABEL_272;
            }

            if ((v285 - v140) / v7 < v2)
            {
              v287 = 28;
              goto LABEL_271;
            }

            v288 = 0;
            v289 = 0;
LABEL_272:
            v290 = v284[1];
            v291 = *(v284 - 1);
            if (v290 != 0xFFFF)
            {
              v292 = 12;
LABEL_276:
              v293 = *(v291 + v292);
              v294 = 1;
              goto LABEL_277;
            }

            if ((v291 - v140) / v7 < v2)
            {
              v292 = 28;
              goto LABEL_276;
            }

            v294 = 0;
            v293 = 0;
LABEL_277:
            if ((v293 | v288) == 0xFFFFFFFF)
            {
              v302 = v239++;
              v303 = v318;
            }

            else
            {
              v295 = __clz(__rbit32(~(v293 | v288)));
              if (v289)
              {
                v296 = 1 << v295;
              }

              else
              {
                v296 = 0;
              }

              v297 = v296 | v288;
              if (v294)
              {
                v298 = 1 << v295;
              }

              else
              {
                v298 = 0;
              }

              v299 = v298 | v293;
              if (v286 == 0xFFFF)
              {
                v300 = 28;
              }

              else
              {
                v300 = 12;
              }

              *(v285 + v300) = v297;
              if (v290 == 0xFFFF)
              {
                v301 = 28;
              }

              else
              {
                v301 = 12;
              }

              *(*(v284 - 1) + v301) = v299;
              v302 = *(*v6 + 4 * (v295 + v277));
              *(*v6 + 4 * (v295 + v277)) = v302 + 1;
              v303 = v143;
            }

            v304 = &v303[6 * v302];
            v305 = *(v284 - 1);
            v306 = *(v284 + 1);
            v304[1] = *v284;
            v304[2] = v306;
            *v304 = v305;
            v284 += 24;
            --v283;
          }

          while (v283);
          if (!v239)
          {
LABEL_300:
            v137 = v312;
            goto LABEL_301;
          }
        }
      }
    }

    v252 = 12;
LABEL_224:
    v253 = *(v251 + v252);
    v254 = *(_X21 + 9);
    v255 = _X21[1];
    if (v254 != 0xFFFF)
    {
      v256 = 12;
      goto LABEL_228;
    }

    if ((v255 - v140) / v7 < v2)
    {
      v256 = 28;
LABEL_228:
      v257 = *(v255 + v256);
      if ((v257 | v253) == 0xFFFFFFFF)
      {
        v262 = &v318[6 * v239++];
      }

      else
      {
        v258 = __clz(__rbit32(~(v257 | v253)));
        v259 = (1 << v258) | v253;
        v260 = v258 + 1;
        if (v250 == 0xFFFF)
        {
          *(v251 + 28) = v259;
          v263 = *(*_X21 + 12);
          if (v263 <= v260)
          {
            LOWORD(v263) = v258 + 1;
          }

          *(*_X21 + 12) = v263;
        }

        else
        {
          *(v251 + 12) = v259;
          v261 = *(v251 + 10);
          if (v261 <= v260)
          {
            LOWORD(v261) = v258 + 1;
          }

          *(v251 + 10) = v261;
        }

        v264 = (1 << v258) | v257;
        v265 = _X21[1];
        if (v254 == 0xFFFF)
        {
          *(v265 + 28) = v264;
          v267 = _X21[1];
          v268 = *(v267 + 12);
          if (v268 <= v260)
          {
            LOWORD(v268) = v258 + 1;
          }

          *(v267 + 12) = v268;
        }

        else
        {
          *(v265 + 12) = v264;
          v266 = *(v265 + 10);
          if (v266 <= v260)
          {
            LOWORD(v266) = v258 + 1;
          }

          *(v265 + 10) = v266;
        }

        v269 = *(*v6 + 4 * v258);
        *(*v6 + 4 * v258) = v269 + 1;
        v262 = &v143[6 * v269];
      }

      goto LABEL_254;
    }

    if (v250 == 0xFFFF)
    {
LABEL_252:
      v271 = *(v251 + 12);
      v272 = *(v251 + 14);
      *(v251 + 14) = v272 + 1;
LABEL_253:
      v273 = *v6 + 4 * v272;
      v274 = *(v273 + 4 * v271);
      *(v273 + 4 * v271) = v274 + 1;
      v262 = &v143[6 * v274];
LABEL_254:
      v275 = *_X21;
      v276 = *(_X21 + 2);
      v262[1] = *(_X21 + 1);
      v262[2] = v276;
      *v262 = v275;
      goto LABEL_255;
    }

    goto LABEL_249;
  }

  v136 = 0;
LABEL_301:
  v80 = v230 - v136;
  if (v311 >= 0x401)
  {
    physx::shdfnd::TempAllocator::deallocate(&v319, v315);
  }

LABEL_303:
  *(v137 + 16) = v80;
  *(v137 + 17) = 0;
  *(v137 + 18) = v136;
  v307 = *(v6 + 8);
  if (!v307)
  {
    return 0;
  }

  result = 0;
  v309 = 0;
  while (1)
  {
    v310 = *(*v6 + 4 * result);
    if (v310 == v309)
    {
      break;
    }

    ++result;
    v309 = v310;
    if (v307 == result)
    {
      return *(v6 + 8);
    }
  }

  return result;
}

void physx::Dy::preprocessRows(float **a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, double a11, double a12, float32x4_t a13, double a14, double a15, float32x4_t a16, char a17, char a18, char a19)
{
  v101[100] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v23 = 0;
    v24 = a5;
    do
    {
      v25 = a2 + 80 * v23;
      if (v23)
      {
        v26 = *(v25 + 78);
        v27 = v23;
        while (1)
        {
          v28 = (v27 - 1);
          v29 = a1[v28];
          if (v26 >= *(v29 + 39))
          {
            break;
          }

          a1[v27--] = v29;
          if (!v28)
          {
            LODWORD(v27) = 0;
            break;
          }
        }

        v27 = v27;
      }

      else
      {
        v27 = 0;
      }

      a1[v27] = v25;
      ++v23;
    }

    while (v23 != a5);
    v30 = (a2 + 76);
    do
    {
      v31 = 0;
      if ((*v30 & 8) != 0)
      {
        v31 = *(v30 - 16);
      }

      *(v30 - 1) = v31;
      v30 += 40;
      --v24;
    }

    while (v24);
  }

  if (a5)
  {
    v32 = *a6;
    v33 = *(a6 + 12);
    a13.i64[0] = *(a6 + 24);
    a13.i32[2] = *(a6 + 32);
    v34 = *a7;
    v35 = *(a7 + 12);
    v36 = a5;
    a16.i64[0] = *(a7 + 24);
    v37 = a1;
    v38 = a3;
    v39 = a4;
    a16.i32[2] = *(a7 + 32);
    do
    {
      v40 = *v37++;
      v41 = vmulq_n_f32(v32, v40[4]);
      v41.i32[3] = 0;
      v42 = vmulq_n_f32(v33, v40[5]);
      v42.i32[3] = 0;
      v43 = vmulq_n_f32(a13, v40[6]);
      v43.i32[3] = 0;
      v44 = vaddq_f32(vaddq_f32(v41, v42), v43);
      v45 = vmulq_n_f32(v34, v40[12]);
      v45.i32[3] = 0;
      v19 = vmulq_n_f32(v35, v40[13]);
      v19.i32[3] = 0;
      v20 = vmulq_n_f32(a16, v40[14]);
      v20.i32[3] = 0;
      *v38++ = v44;
      *v39++ = vaddq_f32(vaddq_f32(v45, v19), v20);
      --v36;
    }

    while (v36);
  }

  if ((a17 & 1) == 0)
  {
    v19.f32[0] = *a8 * a9;
    v20.i32[0] = *(a8 + 12);
    *v21.i32 = *(a8 + 8) * a10;
    v101[0] = vdup_lane_s32(*v19.f32, 0);
    v101[1] = vdup_lane_s32(v21, 0);
    v46 = *(a8 + 4);
    v101[2] = vdup_lane_s32(v46, 0);
    v101[3] = vdup_lane_s32(*v20.f32, 0);
    if (a5)
    {
      v47 = 0;
      v97 = a5;
      v48 = a5;
      v95 = v20.i32[0];
      v96 = v19.i32[0];
      v93 = v46.i32[0];
      v94 = v21.i32[0];
      v92 = a5;
      do
      {
        v49 = v47;
        v50 = v47;
        v51 = &a1[v47];
        v52 = HIBYTE((*v51)[4].u16[7]);
        if (a5 <= v47 + 1)
        {
          ++v47;
        }

        else
        {
          v47 = a5;
        }

        v53 = v47 - 1;
        v54 = 1;
        while (v50 + v54 < v48)
        {
          v55 = v51[v54++][4].u8[15];
          if (v55 != v52)
          {
            v56 = v50 + v54;
            v53 = v56 - 2;
            v47 = v56 - 1;
            break;
          }
        }

        if (v52 == 1)
        {
          if (a18)
          {
            if (v49 <= v53)
            {
              v88 = v53 + 1;
              v89 = v53 + 1 - v49;
              v90 = v50;
              while (*(a1[v90] + 78) != 2)
              {
                ++v90;
                if (!--v89)
                {
                  goto LABEL_64;
                }
              }

              v88 = v90;
            }

            else
            {
              v88 = v50;
            }

LABEL_64:
            v98 = v47;
            if (v88 + 2 == v53)
            {
              v91 = v50;
              v50 = v91;
            }

            a5 = v97;
            v20.i32[0] = v95;
            v19.i32[0] = v96;
            v46.i32[0] = v93;
            v21.i32[0] = v94;
            v47 = v98;
            v48 = v92;
          }
        }

        else if (v52 == 4 || v52 == 8 && a19)
        {
          v57 = v49;
          if (v49 <= v53)
          {
            v57 = v53 + 1;
            v58 = v53 + 1 - v49;
            v59 = v50;
            while (!*(a1[v59] + 78))
            {
              ++v59;
              if (!--v58)
              {
                goto LABEL_40;
              }
            }

            v57 = v59;
          }

LABEL_40:
          if (v47 != v49)
          {
            v60 = 0;
            f32 = a3[v50].f32;
            v62 = v57 - v49;
            v63 = &a4[v50];
            do
            {
              if (v60 >= v62)
              {
                v64 = v62;
              }

              else
              {
                v64 = v60;
              }

              if (v62 >= v60)
              {
                v65 = v60;
              }

              else
              {
                v65 = v62;
              }

              v66 = v51[v60];
              v67 = *v66;
              v68 = v66[1];
              v69 = v66[2];
              v70 = v66[3];
              v69.i32[3] = 0;
              v70.i32[3] = 0;
              v71 = f32[v60];
              v72 = v63[v60];
              if (v65)
              {
                v73 = 0;
                v74 = 16 * v64;
                do
                {
                  v75 = vaddq_f32(vmlaq_f32(vmulq_f32(v67, *&v101[v73 / 8 + 40]), *&v101[v73 / 8 + 88], v69), vmlaq_f32(vmulq_f32(v71, *&v101[v73 / 8 + 28]), *&v101[v73 / 8 + 76], v72));
                  v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
                  *v75.f32 = vpadd_f32(*v75.f32, *v75.f32);
                  v67 = vmlsq_lane_f32(v67, *&v101[v73 / 8 + 16], *v75.f32, 0);
                  v68 = vmlsq_lane_f32(v68, *&v101[v73 / 8 + 4], *v75.f32, 0);
                  v69 = vmlsq_lane_f32(v69, *&v101[v73 / 8 + 64], *v75.f32, 0);
                  v69.i64[1] = vextq_s8(v69, v69, 8uLL).u32[0];
                  v70 = vmlsq_lane_f32(v70, *&v101[v73 / 8 + 52], *v75.f32, 0);
                  v70.i64[1] = vextq_s8(v70, v70, 8uLL).u32[0];
                  v71 = vmlsq_lane_f32(v71, f32[v73 / 0x10], *v75.f32, 0);
                  v72 = vmlsq_lane_f32(v72, v63[v73 / 0x10], *v75.f32, 0);
                  v73 += 16;
                }

                while (v74 != v73);
              }

              *v66 = v67;
              v51[v60][1] = v68;
              v76 = v51[v60];
              v76[2].i64[0] = v69.i64[0];
              v76[2].i32[2] = v69.i32[2];
              v76[3].i32[2] = v70.i32[2];
              v76[3].i64[0] = v70.i64[0];
              f32[v60] = v71;
              v63[v60] = v72;
              if (v60 < v62)
              {
                *&v101[2 * v60 + 16] = v67;
                *&v101[2 * v60 + 4] = v68;
                *&v101[2 * v60 + 64] = v69;
                *&v101[2 * v60 + 52] = v70;
                v67.i32[3] = 0;
                v77 = vmulq_n_f32(v67, v19.f32[0]);
                v77.i32[3] = 0;
                v78 = vmulq_n_f32(v69, *v21.i32);
                v78.i32[3] = 0;
                v79 = vmulq_n_f32(v71, *v46.i32);
                v80 = vmulq_n_f32(v72, v20.f32[0]);
                v81 = vaddq_f32(vmlaq_f32(vmulq_f32(v72, v80), v71, v79), vmlaq_f32(vmulq_f32(v69, v78), v77, v67));
                v81.i64[0] = vpaddq_f32(v81, v81).u64[0];
                v82 = vpadd_f32(*v81.f32, *v81.f32);
                v83 = vrecpe_f32(v82);
                v84 = 4;
                do
                {
                  v83 = vmul_f32(v83, vrecps_f32(v82, v83));
                  --v84;
                }

                while (v84);
                LODWORD(v85) = vand_s8(vdup_lane_s32(vcgtz_f32(v82), 0), v83).u32[0];
                v77.i32[3] = 0;
                *&v101[2 * v60 + 40] = vmulq_n_f32(v77, v85);
                v79.i32[3] = 0;
                *&v101[2 * v60 + 28] = vmulq_n_f32(v79, v85);
                v86 = vmulq_n_f32(v78, v85);
                v86.i32[3] = 0;
                *&v101[2 * v60 + 88] = v86;
                v87 = vmulq_n_f32(v80, v85);
                v87.i32[3] = 0;
                *&v101[2 * v60 + 76] = v87;
              }

              ++v60;
            }

            while (v60 != v47 - v49);
          }
        }
      }

      while (v47 < a5);
    }
  }
}