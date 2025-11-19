uint64_t GeomMTDCallback_SphereBox(float32x2_t *a1, float *a2, uint64_t a3, float *a4, float *a5, uint64_t a6)
{
  v6 = vdup_lane_s32(*a6, 1);
  v7 = vdup_laneq_s32(*a6, 2);
  v8 = vdup_laneq_s32(*a6, 3);
  _Q4 = vaddq_f32(*a6, *a6);
  v10 = vdup_lane_s32(vmul_f32(*a6, *_Q4.f32), 0);
  v11 = vmul_lane_f32(v6, *_Q4.f32, 1);
  v12 = vmul_laneq_f32(v7, _Q4, 2);
  v13 = vmul_n_f32(v6, _Q4.f32[0]);
  v14 = vmul_n_f32(v7, _Q4.f32[0]);
  v15 = vmul_n_f32(v8, _Q4.f32[0]);
  v16 = vmul_lane_f32(v7, *_Q4.f32, 1);
  v17 = vmul_lane_f32(v8, *_Q4.f32, 1);
  v18 = vmul_laneq_f32(v8, _Q4, 2);
  __asm { FMOV            V4.2S, #1.0 }

  v22 = vsub_f32(*_Q4.f32, v10);
  LODWORD(v23) = vadd_f32(v13, v18).u32[0];
  v24 = vsub_f32(v14, v17).f32[0];
  v25 = vsub_f32(v13, v18);
  v26 = vsub_f32(v22, v12).f32[0];
  v27 = vadd_f32(v16, v15);
  v28 = vadd_f32(v14, v17);
  v29 = vsub_f32(v16, v15);
  v30 = vsub_f32(v22, v11).f32[0];
  v31 = (1.0 - v11.f32[1]) - v12.f32[1];
  v32 = a5[1];
  v33 = a5[2];
  v34 = v30 + (v26 + (v31 + 1.0));
  v35 = vsub_f32(v27, v29).u32[0];
  v36 = v28.f32[1] - v24;
  v37 = v30 + ((1.0 - v31) - v26);
  v38 = v28.f32[1] + v24;
  v39 = vadd_f32(v27, v29).u32[0];
  if (v31 < -v26)
  {
    v40 = v30 + ((1.0 - v31) - v26);
  }

  else
  {
    v40 = v30 + (v26 + (v31 + 1.0));
  }

  if (v31 < -v26)
  {
    v41 = v38;
  }

  else
  {
    v41 = *&v35;
  }

  if (v31 < -v26)
  {
    v42 = *&v39;
  }

  else
  {
    v42 = v36;
  }

  if (v31 < -v26)
  {
    v34 = v23 - v25.f32[1];
  }

  else
  {
    v37 = v23 - v25.f32[1];
  }

  v43 = v23 + v25.f32[1];
  v44 = v31 <= v26;
  v45 = (v26 + (1.0 - v31)) - v30;
  v46 = ((v31 + 1.0) - v26) - v30;
  if (v44)
  {
    v47 = v45;
  }

  else
  {
    v47 = v46;
  }

  if (v44)
  {
    v46 = v43;
    v43 = v45;
    v48 = v36;
  }

  else
  {
    *&v39 = v38;
    v48 = *&v35;
  }

  _NF = v30 < 0.0;
  if (v30 < 0.0)
  {
    v50 = v47;
  }

  else
  {
    v50 = v40;
  }

  if (_NF)
  {
    v41 = v46;
  }

  if (_NF)
  {
    v51 = v43;
  }

  else
  {
    v51 = v42;
  }

  if (_NF)
  {
    v52 = *&v39;
  }

  else
  {
    v52 = v37;
  }

  if (_NF)
  {
    v53 = v48;
  }

  else
  {
    v53 = v34;
  }

  v54 = 0.5 / sqrtf(v50);
  v55 = v41 * v54;
  v56 = v51 * v54;
  v57 = v54 * v52;
  v58 = v54 * v53;
  v59 = a4[4] - *(a6 + 16);
  v60 = a4[5] - *(a6 + 20);
  v61 = a4[6] - *(a6 + 24);
  v62 = (v58 * v58) + -0.5;
  v63 = (((v60 + v60) * (v51 * v54)) + ((v41 * v54) * (v59 + v59))) + ((v54 * v52) * (v61 + v61));
  v64 = (((v59 + v59) * v62) - ((((v51 * v54) * (v61 + v61)) - ((v54 * v52) * (v60 + v60))) * v58)) + ((v41 * v54) * v63);
  v65 = (((v60 + v60) * v62) - ((((v54 * v52) * (v59 + v59)) - ((v41 * v54) * (v61 + v61))) * v58)) + ((v51 * v54) * v63);
  v66 = -v32;
  if (v64 >= -v32)
  {
    if (v64 <= v32)
    {
      v67 = 0;
      v66 = (((v59 + v59) * v62) - (((v56 * (v61 + v61)) - (v57 * (v60 + v60))) * v58)) + (v55 * v63);
    }

    else
    {
      v67 = 1;
      v66 = a5[1];
    }
  }

  else
  {
    v67 = 1;
  }

  v68 = a5[3];
  v69 = (((v61 + v61) * v62) - (((v55 * (v60 + v60)) - (v56 * (v59 + v59))) * v58)) + (v57 * v63);
  if (v65 >= -v33)
  {
    if (v65 > v33)
    {
      v67 = 1;
      v65 = a5[2];
    }
  }

  else
  {
    v67 = 1;
    v65 = -v33;
  }

  v70 = *(a3 + 4);
  v71 = -(v54 * v52);
  v72 = -(v41 * v54);
  v73 = -(v51 * v54);
  v74 = -v68;
  if (v69 >= -v68)
  {
    if (v69 <= v68)
    {
      v74 = v69;
    }

    else
    {
      v67 = 1;
      v74 = a5[3];
    }

    if (v67 != 1)
    {
      v85 = v32 - fabsf(v66);
      v86 = v33 - fabsf(v65);
      v87 = v68 - fabsf(v69);
      if (v86 >= v85)
      {
        if (v85 < v87)
        {
          *a2 = -v85;
          v89 = -2.0;
          if (v66 > 0.0)
          {
            v89 = 2.0;
          }

          v88 = 0.0;
          goto LABEL_60;
        }
      }

      else if (v86 < v87)
      {
        *a2 = -v86;
        v88 = 2.0;
        if (v65 <= 0.0)
        {
          v88 = -2.0;
        }

        v89 = 0.0;
LABEL_60:
        v90 = 0.0;
LABEL_64:
        v91 = v90 + v90;
        v92 = ((v56 * v88) + (v55 * v89)) + (v57 * v91);
        a1->f32[0] = ((v58 * ((v88 * v71) + (v56 * v91))) + (v89 * v62)) + (v55 * v92);
        a1->f32[1] = ((v58 * ((v91 * v72) + (v57 * v89))) + (v88 * v62)) + (v56 * v92);
        a1[1].f32[0] = ((v58 * ((v89 * v73) + (v55 * v88))) + (v91 * v62)) + (v57 * v92);
        v83 = *a2;
        goto LABEL_65;
      }

      v90 = 1.0;
      if (v69 <= 0.0)
      {
        v90 = -1.0;
      }

      *a2 = -v87;
      v89 = 0.0;
      v88 = 0.0;
      goto LABEL_64;
    }
  }

  v75 = v65 + v65;
  v76 = v74 + v74;
  v77 = ((v56 * (v65 + v65)) + (v55 * (v66 + v66))) + (v57 * v76);
  v78 = ((v58 * ((v75 * v71) + (v56 * v76))) + ((v66 + v66) * v62)) + (v55 * v77);
  v79 = ((v58 * ((v76 * v72) + (v57 * (v66 + v66)))) + (v75 * v62)) + (v56 * v77);
  v80 = v61 - (((v58 * (((v66 + v66) * v73) + (v55 * v75))) + (v76 * v62)) + (v57 * v77));
  a1->f32[0] = v59 - v78;
  a1->f32[1] = v60 - v79;
  a1[1].f32[0] = v80;
  v81 = (((v60 - v79) * (v60 - v79)) + ((v59 - v78) * (v59 - v78))) + (v80 * v80);
  if (v81 > ((v70 + 0.0) * (v70 + 0.0)))
  {
    return 0;
  }

  v82 = 1.0 / sqrtf(v81);
  *a2 = v82;
  *a1 = vmul_n_f32(*a1, v82);
  a1[1].f32[0] = v82 * a1[1].f32[0];
  v83 = v81 * *a2;
LABEL_65:
  *a2 = fmaxf(-(v83 - v70), 0.0);
  return 1;
}

uint64_t GeomMTDCallback_SphereConvex(float32x2_t *a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, double a7, double a8, double a9, double a10)
{
  *&v13 = *(a4 + 16);
  v40 = v13;
  v41 = *(a4 + 24);
  *(&v13 + 2) = v41;
  LODWORD(a8) = *(a3 + 4);
  HIDWORD(v13) = LODWORD(a8);
  v42 = *&a8;
  v43 = v13;
  v45 = 0.0;
  v14 = *(a5 + 32);
  if (pointConvexDistance(a1, v44, &v45, &v43, v14, (a5 + 4), a6, *&v13, a8, a9, a10))
  {
    v15 = *(v14 + 71);
    if (*(v14 + 71))
    {
      v16 = (*&v40 - a6[4]) + (*&v40 - a6[4]);
      v17 = (*(&v40 + 1) - a6[5]) + (*(&v40 + 1) - a6[5]);
      v18 = (v41 - a6[6]) + (v41 - a6[6]);
      v20 = a6[2];
      v19 = a6[3];
      v21 = (v19 * v19) + -0.5;
      v22 = *a6;
      v23 = a6[1];
      v24 = ((v17 * v23) + (*a6 * v16)) + (v20 * v18);
      v25 = ((v16 * v21) - (((v23 * v18) - (v20 * v17)) * v19)) + (*a6 * v24);
      v26 = -*a6;
      v27 = ((v17 * v21) - (((v20 * v16) - (*a6 * v18)) * v19)) + (v23 * v24);
      v28 = ((v18 * v21) - (((*a6 * v17) - (v23 * v16)) * v19)) + (v20 * v24);
      v29 = *(v14 + 72);
      v30 = -3.4028e38;
      do
      {
        v31 = v29[1];
        v32 = v29[2];
        v33 = v29[3] + (((v27 * v31) + (v25 * *v29)) + (v28 * v32));
        if (v33 > v30)
        {
          v34 = *v29 + *v29;
          v35 = v31 + v31;
          v36 = v32 + v32;
          v37 = ((v23 * v35) + (v22 * v34)) + (v20 * (v32 + v32));
          a1->f32[0] = ((v19 * ((v35 * -v20) + (v23 * v36))) + (v34 * v21)) + (v22 * v37);
          a1->f32[1] = ((v19 * ((v36 * v26) + (v20 * v34))) + (v35 * v21)) + (v23 * v37);
          a1[1].f32[0] = ((v19 * ((v34 * -v23) + (v22 * v35))) + (v36 * v21)) + (v20 * v37);
          v30 = v33;
        }

        v29 += 5;
        --v15;
      }

      while (v15);
    }

    else
    {
      v30 = -3.4028e38;
    }

    *a2 = fmaxf(v42 - v30, 0.0);
  }

  else
  {
    if (v45 > (v42 * v42))
    {
      return 0;
    }

    *a2 = fmaxf(v42 - sqrtf(v45), 0.0);
    v39 = -a1[1].f32[0];
    *a1 = vneg_f32(*a1);
    a1[1].f32[0] = v39;
  }

  return 1;
}

uint64_t GeomMTDCallback_SphereMesh(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v28 = *MEMORY[0x1E69E9840];
  v10 = *(v9 + 4);
  v12 = *(v11 + 24);
  v27[0] = -1;
  LODWORD(v24[0]) = 0;
  HIDWORD(v24[0]) = v10;
  v13 = *(v11 + 16);
  physx::Gu::GeometryUnion::set(v27, v24);
  v26[0] = -1;
  physx::Gu::GeometryUnion::set(v26, v5);
  v23 = 0;
  v22 = 0;
  v25 = 0;
  v19 = xmmword_1E30474D0;
  v20 = v13;
  v21 = v12;
  v17 = 0;
  v18 = 1065353216;
  v14 = physx::Gu::contactSphereMesh(v27, v26, &v19, v3, &v17, &v22, v24, 0);
  result = 0;
  if (v14)
  {
    v16 = v25;
    LODWORD(result) = processContacts(v8, v7, v25, v24);
    if (v16)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t GeomMTDCallback_SphereHeightField(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v28 = *MEMORY[0x1E69E9840];
  v10 = *(v9 + 4);
  v12 = *(v11 + 24);
  v27[0] = -1;
  LODWORD(v24[0]) = 0;
  HIDWORD(v24[0]) = v10;
  v13 = *(v11 + 16);
  physx::Gu::GeometryUnion::set(v27, v24);
  v26[0].i32[0] = -1;
  physx::Gu::GeometryUnion::set(v26, v5);
  v23 = 0;
  v22 = 0;
  v25 = 0;
  v19 = xmmword_1E30474D0;
  v20 = v13;
  v21 = v12;
  v17 = 0;
  v18 = 1065353216;
  v14 = physx::Gu::contactSphereHeightfield(v27, v26, &v19, v3, &v17, &v22, v24, 0);
  result = 0;
  if (v14)
  {
    v16 = v25;
    LODWORD(result) = processContacts(v8, v7, v25, v24);
    if (v16)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL GeomMTDCallback_PlaneCapsule(float *a1, float *a2, uint64_t a3, float *a4, uint64_t a5, float *a6)
{
  v6 = *a6;
  v7 = a6[1];
  v8 = v6 + v6;
  v10 = a6[2];
  v9 = a6[3];
  v11 = v9 + v9;
  v12 = ((v9 * (v9 + v9)) + -1.0) + (v6 * (v6 + v6));
  v13 = (v8 * v7) + (v10 * (v9 + v9));
  v14 = (v8 * v10) - (v7 * v11);
  v15 = *(a5 + 8);
  v16 = v12 * v15;
  v17 = v15 * v13;
  v18 = v14 * v15;
  v19 = a6[4];
  v20 = a6[5];
  v21 = v19 + v16;
  v22 = v20 + v17;
  v23 = a6[6];
  v24 = v18 + v23;
  v25 = v19 - v16;
  v26 = v20 - v17;
  v27 = v23 - v18;
  v29 = a4[2];
  v28 = a4[3];
  v30 = v28 + v28;
  v31 = *a4;
  v32 = a4[1];
  v33 = v31 + v31;
  v34 = ((v28 * (v28 + v28)) + -1.0) + (v31 * (v31 + v31));
  v35 = ((v31 + v31) * v32) + (v29 * v30);
  v36 = (v33 * v29) - (v32 * v30);
  v37 = ((a4[5] * v35) + (a4[4] * v34)) + (a4[6] * v36);
  v38 = (((v22 * v35) + (v21 * v34)) + (v24 * v36)) - v37;
  v39 = (((v26 * v35) + (v25 * v34)) + (v27 * v36)) - v37;
  if (v38 < v39)
  {
    v39 = v38;
  }

  v40 = v39 - *(a5 + 4);
  if (v40 <= 0.0)
  {
    *a1 = -v34;
    a1[1] = -v35;
    a1[2] = -v36;
    *a2 = fmaxf(-v40, 0.0);
  }

  return v40 <= 0.0;
}

BOOL GeomMTDCallback_PlaneBox(float *a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, int32x2_t *a6)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = vdup_lane_s32(*a6, 1);
  v9 = vdup_laneq_s32(*a6->i8, 2);
  v10 = vdup_laneq_s32(*a6->i8, 3);
  _Q4 = vaddq_f32(*a6->i8, *a6->i8);
  v12 = vdup_lane_s32(vmul_f32(*a6, *_Q4.f32), 0);
  v13 = vmul_lane_f32(v8, *_Q4.f32, 1);
  v14 = vmul_laneq_f32(v9, _Q4, 2);
  v15 = vmul_n_f32(v8, _Q4.f32[0]);
  v16 = vmul_n_f32(v9, _Q4.f32[0]);
  v17 = vmul_n_f32(v10, _Q4.f32[0]);
  v18 = vmul_lane_f32(v9, *_Q4.f32, 1);
  v19 = vmul_lane_f32(v10, *_Q4.f32, 1);
  v20 = vmul_laneq_f32(v10, _Q4, 2);
  __asm { FMOV            V4.2S, #1.0 }

  v25 = vsub_f32(*_Q4.f32, v12);
  LODWORD(v26) = vsub_f32(v16, v19).u32[0];
  LODWORD(v27) = vadd_f32(v18, v17).u32[0];
  v36.f32[0] = (1.0 - v13.f32[1]) - v14.f32[1];
  v36.i32[1] = vadd_f32(v15, v20).u32[0];
  HIDWORD(v26) = vsub_f32(v15, v20).i32[1];
  v37 = v26;
  v38 = vsub_f32(v25, v14).u32[0];
  HIDWORD(v27) = vadd_f32(v16, v19).i32[1];
  v39[0] = v27;
  v39[1] = vzip1_s32(vsub_f32(v18, v17), vsub_f32(v25, v13));
  *&v28 = a6[2];
  DWORD2(v28) = a6[3].i32[0];
  HIDWORD(v28) = *(a5 + 4);
  v40 = v28;
  v41 = *(a5 + 8);
  LODWORD(v28) = *a4;
  v15.i32[0] = *(a4 + 4);
  _Q4.i32[0] = *(a4 + 8);
  v20.i32[0] = *(a4 + 12);
  v29 = ((v20.f32[0] * (v20.f32[0] + v20.f32[0])) + -1.0) + (*&v28 * (*&v28 + *&v28));
  v30 = ((*&v28 + *&v28) * v15.f32[0]) + (_Q4.f32[0] * (v20.f32[0] + v20.f32[0]));
  v31 = ((*&v28 + *&v28) * _Q4.f32[0]) - (v15.f32[0] * (v20.f32[0] + v20.f32[0]));
  v32 = ((*(a4 + 20) * v30) + (*(a4 + 16) * v29)) + (*(a4 + 24) * v31);
  physx::Gu::computeOBBPoints(v42, &v40, &v40 + 3, &v36, (&v37 + 4), (v39 + 4));
  v33 = 0;
  v34 = (((v30 * v42[1]) + (v42[0] * v29)) + (v42[2] * v31)) - v32;
  do
  {
    if (v34 >= ((((v30 * v42[v33 + 4]) + (v42[v33 + 3] * v29)) + (v42[v33 + 5] * v31)) - v32))
    {
      v34 = (((v30 * v42[v33 + 4]) + (v42[v33 + 3] * v29)) + (v42[v33 + 5] * v31)) - v32;
    }

    v33 += 3;
  }

  while (v33 != 21);
  if (v34 <= 0.0)
  {
    *a1 = -v29;
    a1[1] = -v30;
    a1[2] = -v31;
    *a2 = fmaxf(-v34, 0.0);
  }

  return v34 <= 0.0;
}

BOOL GeomMTDCallback_PlaneConvex(float *a1, float *a2, uint64_t a3, float *a4, uint64_t a5, float *a6)
{
  v6 = *a4;
  v7 = a4[1];
  v8 = v6 + v6;
  v10 = a4[2];
  v9 = a4[3];
  v11 = v9 + v9;
  v12 = ((v9 * (v9 + v9)) + -1.0) + (v6 * (v6 + v6));
  v13 = (v8 * v7) + (v10 * (v9 + v9));
  v14 = (v8 * v10) - (v7 * v11);
  v15 = ((a4[5] * v13) + (a4[4] * v12)) + (a4[6] * v14);
  v16 = *(a5 + 32);
  v17 = *(v16 + 70);
  v18 = *(v16 + 72);
  v19 = 5 * *(v16 + 71);
  v20 = (v18 + 4 * v19);
  v21 = *v20 + *v20;
  v22 = v20[1] + v20[1];
  v23 = v20[2] + v20[2];
  v25 = a6[2];
  v24 = a6[3];
  v26 = (v24 * v24) + -0.5;
  v27 = *a6;
  v28 = a6[1];
  v29 = ((v22 * v28) + (*a6 * v21)) + (v25 * v23);
  v30 = ((v24 * ((v28 * v23) - (v25 * v22))) + (v21 * v26)) + (*a6 * v29);
  v31 = ((v24 * ((v25 * v21) - (*a6 * v23))) + (v22 * v26)) + (v28 * v29);
  v32 = ((v24 * ((*a6 * v22) - (v28 * v21))) + (v23 * v26)) + (v25 * v29);
  v33 = a6[4];
  v34 = a6[5];
  v35 = a6[6];
  v36 = (((v13 * (v34 + v31)) + ((v33 + v30) * v12)) + ((v35 + v32) * v14)) - v15;
  if (v17 >= 2)
  {
    v37 = v17 - 1;
    v38 = (4 * v19 + v18 + 20);
    do
    {
      v39 = *(v38 - 1);
      v40 = *(v38 - 2) + *(v38 - 2);
      v41 = *v38;
      v38 += 3;
      v42 = v39 + v39;
      v43 = ((v28 * v42) + (v27 * v40)) + (v25 * (v41 + v41));
      v44 = (((v13 * (v34 + (((v24 * (((v41 + v41) * -v27) + (v25 * v40))) + (v42 * v26)) + (v28 * v43)))) + ((v33 + (((v24 * ((v42 * -v25) + (v28 * (v41 + v41)))) + (v40 * v26)) + (v27 * v43))) * v12)) + ((v35 + (((v24 * ((v40 * -v28) + (v27 * v42))) + ((v41 + v41) * v26)) + (v25 * v43))) * v14)) - v15;
      if (v36 >= v44)
      {
        v36 = v44;
      }

      --v37;
    }

    while (v37);
  }

  if (v36 <= 0.0)
  {
    *a1 = -v12;
    a1[1] = -v13;
    a1[2] = -v14;
    *a2 = fmaxf(-v36, 0.0);
  }

  return v36 <= 0.0;
}

BOOL GeomMTDCallback_CapsuleCapsule(float32x2_t *a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a4;
  v9 = v8 + v8;
  v10 = *(a4 + 12);
  v11 = *(a4 + 16);
  v12 = v10 + v10;
  v13 = ((v10 * (v10 + v10)) + -1.0) + (v8 * (v8 + v8));
  v14 = *(a3 + 8);
  v15 = v13 * v14;
  v16 = v11 + v15;
  v17 = v11 - v15;
  v49 = *(a3 + 4);
  v18 = *a6;
  v19 = v18 + v18;
  v20 = *(a6 + 12);
  v21 = *(a6 + 16);
  v22 = v20 + v20;
  v23 = ((v20 * (v20 + v20)) + -1.0) + (v18 * (v18 + v18));
  v25 = *(a5 + 4);
  v24 = *(a5 + 8);
  v26 = v23 * v24;
  *v47 = v16;
  *v48 = v17;
  *v44 = v21 + v26;
  *v45 = v21 - v26;
  v46 = v25;
  v50 = 0;
  v53 = v17 - v16;
  v27 = *(a4 + 4);
  v28.i32[0] = vdup_lane_s32(v27, 1).u32[0];
  v28.f32[1] = -v27.f32[0];
  v29 = vmul_n_f32(vmla_n_f32(vmul_n_f32(v27, v9), v28, v12), v14);
  v30 = *(a4 + 20);
  *&v47[4] = vadd_f32(v30, v29);
  *&v48[4] = vsub_f32(v30, v29);
  v54 = vsub_f32(*&v48[4], *&v47[4]);
  v51 = (v21 - v26) - (v21 + v26);
  v31 = *(a6 + 4);
  v32.i32[0] = vdup_lane_s32(v31, 1).u32[0];
  v32.f32[1] = -v31.f32[0];
  v33 = vmul_n_f32(vmla_n_f32(vmul_n_f32(v31, v19), v32, v22), v24);
  v34 = *(a6 + 20);
  *&v44[4] = vadd_f32(v34, v33);
  *&v45[4] = vsub_f32(v34, v33);
  v52 = vsub_f32(*&v45[4], *&v44[4]);
  v35 = physx::Gu::distanceSegmentSegmentSquared(v47, &v53, v44, &v51, &v50 + 1, &v50);
  v36 = v49 + v46;
  if (v35 <= (v36 * v36))
  {
    v37 = vsub_f32(vadd_f32(*v47, vmul_n_f32(vsub_f32(*v48, *v47), *(&v50 + 1))), vadd_f32(*v44, vmul_n_f32(vsub_f32(*v45, *v44), *&v50)));
    v38 = (*&v47[8] + (*(&v50 + 1) * (*&v48[8] - *&v47[8]))) - (*&v44[8] + (*&v50 * (*&v45[8] - *&v44[8])));
    v39 = (COERCE_FLOAT(vmul_f32(v37, v37).i32[1]) + (v37.f32[0] * v37.f32[0])) + (v38 * v38);
    v40 = sqrtf(v39);
    if (v39 >= 0.000001)
    {
      v41 = vmul_n_f32(v37, 1.0 / v40);
      v42 = v38 * (1.0 / v40);
    }

    else
    {
      v41 = 1065353216;
      v42 = 0.0;
    }

    *a1 = v41;
    a1[1].f32[0] = v42;
    *a2 = fmaxf(v36 - v40, 0.0);
  }

  return v35 <= (v36 * v36);
}

BOOL GeomMTDCallback_CapsuleBox(float *a1, float *a2, uint64_t a3, float *a4, uint64_t a5, int32x2_t *a6)
{
  v8 = *a4;
  v9 = a4[1];
  v10 = v8 + v8;
  v12 = a4[2];
  v11 = a4[3];
  v13 = v11 + v11;
  v14 = ((v11 * (v11 + v11)) + -1.0) + (v8 * (v8 + v8));
  v15 = (v10 * v9) + (v12 * (v11 + v11));
  v16 = (v10 * v12) - (v9 * v13);
  v18 = *(a3 + 4);
  v17 = *(a3 + 8);
  v19 = v14 * v17;
  v20 = v17 * v15;
  v21 = v16 * v17;
  v22 = a4[4];
  v23 = a4[5];
  v24 = a4[6];
  v100.f32[0] = v22 + v19;
  v100.f32[1] = v23 + v20;
  v101 = v21 + v24;
  v102.f32[0] = v22 - v19;
  v102.f32[1] = v23 - v20;
  v103 = v24 - v21;
  v104 = v18;
  v25 = vdup_lane_s32(*a6, 1);
  v26 = vdup_laneq_s32(*a6->i8, 2);
  v27 = vdup_laneq_s32(*a6->i8, 3);
  _Q4 = vaddq_f32(*a6->i8, *a6->i8);
  v29 = vdup_lane_s32(vmul_f32(*a6, *_Q4.f32), 0);
  v30 = vmul_lane_f32(v25, *_Q4.f32, 1);
  v31 = vmul_laneq_f32(v26, _Q4, 2);
  v32 = vmul_n_f32(v25, _Q4.f32[0]);
  v33 = vmul_n_f32(v26, _Q4.f32[0]);
  v34 = vmul_n_f32(v27, _Q4.f32[0]);
  v35 = vmul_lane_f32(v26, *_Q4.f32, 1);
  v36 = vmul_lane_f32(v27, *_Q4.f32, 1);
  v37 = vmul_laneq_f32(v27, _Q4, 2);
  __asm { FMOV            V4.2S, #1.0 }

  v41 = vsub_f32(*_Q4.f32, v29);
  LODWORD(v42) = vsub_f32(v33, v36).u32[0];
  LODWORD(v43) = vadd_f32(v35, v34).u32[0];
  v95.f32[0] = (1.0 - v30.f32[1]) - v31.f32[1];
  v95.i32[1] = vadd_f32(v32, v37).u32[0];
  HIDWORD(v42) = vsub_f32(v32, v37).i32[1];
  *v96 = v42;
  *&v96[8] = vsub_f32(v41, v31).u32[0];
  HIDWORD(v43) = vadd_f32(v33, v36).i32[1];
  *&v97 = v43;
  *(&v97 + 1) = vzip1_s32(vsub_f32(v35, v34), vsub_f32(v41, v30));
  *&v44 = a6[2];
  DWORD2(v44) = a6[3].i32[0];
  HIDWORD(v44) = *(a5 + 4);
  v98 = v44;
  v99 = *(a5 + 8);
  v107 = 0.0;
  physx::Gu::distanceSegmentBoxSquared(&v100, &v102, &v98, (&v98 + 12), &v95, &v107, &v105);
  result = 0;
  v47 = v104;
  if (v45 <= (v47 * v47))
  {
    if (v45 == 0.0 || (v48 = vsub_f32(vadd_f32(v100, vmul_n_f32(vsub_f32(v102, v100), v107)), vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(v95, v105.f32[0]), vmul_n_f32(*&v96[4], v105.f32[1])), vmul_n_f32(*(&v97 + 4), v106)), *&v98)), v49 = (v101 + (v107 * (v103 - v101))) - ((((v105.f32[0] * *v96) + (v105.f32[1] * *&v97)) + (v106 * *(&v97 + 3))) + *(&v98 + 2)), v50 = sqrtf((COERCE_FLOAT(vmul_f32(v48, v48).i32[1]) + (v48.f32[0] * v48.f32[0])) + (v49 * v49)), v50 == 0.0))
    {
      v51 = 0;
      v52 = 0.0;
      v53 = 3.4028e38;
      *&v54 = 0.0;
      *&v55 = 0.0;
      while (1)
      {
        v109[0] = 0.0;
        result = PxcTestAxis((&v95 + v51 * 4), &v100, &v95, v109, v47);
        if (!result)
        {
          break;
        }

        if (v109[0] < v53)
        {
          v55 = v95.i32[v51];
          v54 = v95.i32[v51 + 1];
          v52 = *(&v95 + v51 * 4 + 8);
          v53 = v109[0];
        }

        v51 += 3;
        if (v51 == 9)
        {
          v94 = v47;
          v91 = *&v55;
          v92 = *&v54;
          v93 = v52;
          v89 = v100.f32[1];
          v90 = v100.f32[0];
          v87 = v101;
          v88 = v102.f32[0];
          v56 = v102.f32[0] - v100.f32[0];
          v85 = v103;
          v86 = v102.f32[1];
          v57 = v102.f32[1] - v100.f32[1];
          v58 = v103 - v101;
          v59 = ((v57 * v57) + (v56 * v56)) + (v58 * v58);
          v60 = 0.0;
          v61 = 0.0;
          v62 = 0.0;
          if (v59 > 0.0)
          {
            v63 = 1.0 / sqrtf(v59);
            v62 = v56 * v63;
            v61 = v57 * v63;
            v60 = v58 * v63;
          }

          v64 = 0;
          v65 = -v60;
          v66 = -v62;
          v67 = -v61;
          do
          {
            v69 = v95.f32[v64 + 1];
            v68 = *(&v95 + v64 * 4 + 8);
            v70 = v95.f32[v64];
            v71 = (v69 * v65) + (v61 * v68);
            v72 = (v68 * v66) + (v60 * v70);
            v73 = (v70 * v67) + (v62 * v69);
            if (fabsf(v71) > 0.000001 || fabsf(v72) > 0.000001 || fabsf(v73) > 0.000001)
            {
              v74 = ((v72 * v72) + (v71 * v71)) + (v73 * v73);
              v75 = 0.0;
              v76 = 0.0;
              v77 = 0.0;
              if (v74 > 0.0)
              {
                v78 = 1.0 / sqrtf(v74);
                v77 = v71 * v78;
                v76 = v72 * v78;
                v75 = v73 * v78;
              }

              v109[0] = v77;
              v109[1] = v76;
              v109[2] = v75;
              v108 = 0.0;
              result = PxcTestAxis(v109, &v100, &v95, &v108, v94);
              if (!result)
              {
                return result;
              }

              if (v108 < v53)
              {
                v91 = v77;
                v92 = v76;
                v93 = v75;
                v53 = v108;
              }

              v66 = -v62;
              v65 = -v60;
              v67 = -v61;
            }

            v64 += 3;
          }

          while (v64 != 9);
          v79 = ((v92 * (((v86 + v89) * 0.5) - *(&v98 + 1))) + (v91 * (((v88 + v90) * 0.5) - *&v98))) + (v93 * (((v85 + v87) * 0.5) - *(&v98 + 2)));
          _NF = v79 < 0.0;
          if (v79 >= 0.0)
          {
            v81 = v91;
          }

          else
          {
            v81 = -v91;
          }

          if (_NF)
          {
            v82 = -v92;
          }

          else
          {
            v82 = v92;
          }

          *a2 = fmaxf(v53, 0.0);
          if (_NF)
          {
            v83 = -v93;
          }

          else
          {
            v83 = v93;
          }

          *a1 = v81;
          a1[1] = v82;
          a1[2] = v83;
          return 1;
        }
      }
    }

    else
    {
      v84 = 1.0 / v50;
      *a1 = vmul_n_f32(v48, v84);
      a1[2] = v49 * v84;
      *a2 = fmaxf(v47 - sqrtf(v45), 0.0);
      return 1;
    }
  }

  return result;
}

void GeomMTDCallback_CapsuleConvex(uint64_t a1, float *a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6, double a7)
{
  v193 = *MEMORY[0x1E69E9840];
  LODWORD(a7) = a4->i32[0];
  v9 = a4->f32[1];
  v11 = a4->f32[2];
  v10 = a4->f32[3];
  v12 = v10 + v10;
  v13 = ((v10 * (v10 + v10)) + -1.0) + (*&a7 * (*&a7 + *&a7));
  v14 = ((*&a7 + *&a7) * v9) + (v11 * v12);
  v15 = ((*&a7 + *&a7) * v11) - (v9 * v12);
  LODWORD(a7) = *(a3 + 4);
  v16 = *(a3 + 8);
  v17 = v16 * v14;
  v18 = v15 * v16;
  v20 = a4[1].f32[0];
  v19 = a4[1].f32[1];
  v21 = a4[1].f32[2];
  v22 = (v20 - (v13 * v16)) - (v20 + (v13 * v16));
  v23 = sqrtf(((((v19 - v17) - (v19 + v17)) * ((v19 - v17) - (v19 + v17))) + (v22 * v22)) + (((v21 - v18) - (v18 + v21)) * ((v21 - v18) - (v18 + v21)))) * 0.5;
  v24 = vdup_lane_s32(*&a7, 0);
  v25 = *(a5 + 32);
  v26 = *(a5 + 4);
  v27 = v26;
  v27.i32[3] = 0;
  v28 = *(a5 + 16);
  v29 = COERCE_FLOAT(*(a5 + 12)) == 1.0;
  if (COERCE_FLOAT(HIDWORD(*(a5 + 4))) != 1.0)
  {
    v29 = 0;
  }

  if (v26.f32[0] != 1.0)
  {
    v29 = 0;
  }

  v30 = *(v25 + 72) + 20 * *(v25 + 71);
  v179 = 0;
  v177 = 0u;
  v178 = 0u;
  v186 = v25 + 32;
  v188 = v30;
  v31.i64[0] = *(v25 + 92);
  v31.i64[1] = *(v25 + 100);
  v32 = vmulq_f32(v27, v31);
  v189 = *(v25 + 70);
  *v32.i8 = vpmin_f32(vdup_laneq_s32(v32, 2), *v32.i8);
  *v32.i32 = vpmin_f32(*v32.i8, *v32.i8).f32[0];
  *&v178 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v32.i32);
  *(&v178 + 2) = 0.025 * *v32.i32;
  __asm { FMOV            V4.2S, #1.0 }

  if (v29)
  {
    v180 = xmmword_1E3047670;
    v181 = xmmword_1E3047680;
    v182 = xmmword_1E30476A0;
    v183 = xmmword_1E3047670;
    v184 = xmmword_1E3047680;
    v185 = xmmword_1E30476A0;
  }

  else
  {
    v38 = vrecpeq_f32(v27);
    v39 = 4;
    do
    {
      v38 = vmulq_f32(v38, vrecpsq_f32(v38, v27));
      --v39;
    }

    while (v39);
    *v40.f32 = vdup_lane_s32(*v26.f32, 0);
    v40.i64[1] = v40.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v40, v27)), *&a7).u32[0] & 0xFFFFFF) != 0)
    {
      v47 = vdup_lane_s32(*v28.f32, 1);
      v48 = vdup_laneq_s32(v28, 2);
      v49 = vdup_laneq_s32(v28, 3);
      v50 = vaddq_f32(v28, v28);
      v51 = vmul_lane_f32(v47, *v50.f32, 1);
      v52 = vmul_laneq_f32(v48, v50, 2);
      v53 = vmul_n_f32(v47, v50.f32[0]);
      v54 = vmul_n_f32(v48, v50.f32[0]);
      v55 = vmul_n_f32(v49, v50.f32[0]);
      v56 = vmul_lane_f32(v48, *v50.f32, 1);
      v57 = vmul_lane_f32(v49, *v50.f32, 1);
      v58 = vmul_laneq_f32(v49, v50, 2);
      v59 = vsub_f32(_D4, vdup_lane_s32(vmul_f32(*v28.f32, *v50.f32), 0));
      v60 = vsub_f32(vsub_f32(_D4, v51), v52);
      v61 = vadd_f32(v53, v58);
      v62 = vsub_f32(v54, v57);
      *v50.f32 = vsub_f32(v53, v58);
      v63 = vsub_f32(v59, v52);
      v64 = vadd_f32(v56, v55);
      v65 = vadd_f32(v54, v57);
      v66 = vsub_f32(v56, v55);
      v67 = vext_s8(v65, v66, 4uLL);
      *v68.f32 = vext_s8(v60, *&vdupq_lane_s32(*v50.f32, 1), 4uLL);
      v68.i64[1] = vdup_lane_s32(v67, 0).u32[0];
      v69 = vsub_f32(v59, v51);
      *v70.f32 = vext_s8(*&vdupq_lane_s32(v61, 0), v63, 4uLL);
      v70.i64[1] = vdup_lane_s32(v67, 1).u32[0];
      *v71.f32 = vext_s8(*&vdupq_lane_s32(v62, 0), v64, 4uLL);
      v71.i64[1] = vdup_lane_s32(v69, 0).u32[0];
      v72 = vmulq_n_f32(v68, v26.f32[0]);
      v72.i32[3] = 0;
      v73 = vmulq_lane_f32(v70, *v26.f32, 1);
      v73.i32[3] = 0;
      v74 = vmulq_laneq_f32(v71, v26, 2);
      v74.i32[3] = 0;
      v75 = vmulq_lane_f32(v72, v60, 1);
      v75.i32[3] = 0;
      v76 = vmulq_n_f32(v73, *v61.i32);
      v76.i32[3] = 0;
      v77 = vmulq_n_f32(v74, *v62.i32);
      v77.i32[3] = 0;
      v41 = vaddq_f32(v77, vaddq_f32(v75, v76));
      v78 = vmulq_lane_f32(v72, *v50.f32, 1);
      v78.i32[3] = 0;
      v79 = vmulq_n_f32(v73, *v63.i32);
      v79.i32[3] = 0;
      v80 = vmulq_n_f32(v74, *v64.i32);
      v80.i32[3] = 0;
      v81 = vaddq_f32(v78, v79);
      v82 = vmulq_lane_f32(v72, v65, 1);
      v82.i32[3] = 0;
      v83 = vmulq_n_f32(v73, *v66.i32);
      v83.i32[3] = 0;
      v84 = vmulq_n_f32(v74, *v69.i32);
      v84.i32[3] = 0;
      v42 = vaddq_f32(v80, v81);
      v43 = vaddq_f32(v84, vaddq_f32(v82, v83));
      v180 = v41;
      v181 = v42;
      v182 = v43;
      v85 = vmulq_n_f32(v68, v38.f32[0]);
      v85.i32[3] = 0;
      v86 = vmulq_lane_f32(v70, *v38.f32, 1);
      v86.i32[3] = 0;
      v87 = vmulq_laneq_f32(v71, v38, 2);
      v87.i32[3] = 0;
      v88 = vmulq_lane_f32(v85, v60, 1);
      v88.i32[3] = 0;
      v89 = vmulq_n_f32(v86, *v61.i32);
      v89.i32[3] = 0;
      v90 = vmulq_n_f32(v87, *v62.i32);
      v90.i32[3] = 0;
      v44 = vaddq_f32(v90, vaddq_f32(v88, v89));
      v91 = vmulq_lane_f32(v85, *v50.f32, 1);
      v91.i32[3] = 0;
      v92 = vmulq_n_f32(v86, *v63.i32);
      v92.i32[3] = 0;
      v93 = vmulq_n_f32(v87, *v64.i32);
      v93.i32[3] = 0;
      v94 = vaddq_f32(v91, v92);
      v95 = vmulq_lane_f32(v85, v65, 1);
      v95.i32[3] = 0;
      v96 = vmulq_n_f32(v86, *v66.i32);
      v96.i32[3] = 0;
      v45 = vaddq_f32(v93, v94);
      v97 = vmulq_n_f32(v87, *v69.i32);
      v97.i32[3] = 0;
      v46 = vaddq_f32(v97, vaddq_f32(v95, v96));
    }

    else
    {
      v38.i32[3] = 0;
      v41 = vmulq_f32(v27, xmmword_1E3047670);
      v42 = vmulq_f32(v27, xmmword_1E3047680);
      v43 = vmulq_f32(v27, xmmword_1E30476A0);
      v180 = v41;
      v181 = v42;
      v182 = v43;
      v44 = vmulq_f32(v38, xmmword_1E3047670);
      v45 = vmulq_f32(v38, xmmword_1E3047680);
      v46 = vmulq_f32(v38, xmmword_1E30476A0);
    }

    v183 = v44;
    v184 = v45;
    v185 = v46;
    v98 = vmulq_f32(v41, 0);
    v98.i32[3] = 0;
    v99 = vmulq_f32(v42, 0);
    v99.i32[3] = 0;
    v100 = vmulq_f32(v43, 0);
    v100.i32[3] = 0;
    v177 = vaddq_f32(v100, vaddq_f32(v99, v98));
  }

  v101.i64[0] = __PAIR64__(LODWORD(v19), LODWORD(v20));
  v101.i64[1] = LODWORD(v21);
  v102 = *a6;
  v103.i64[0] = a6[1].i64[0];
  v103.i64[1] = a6[1].u32[2];
  v104 = vnegq_f32(*a6);
  v105 = v104;
  v105.i32[3] = 0;
  v106 = vsubq_f32(v101, v103);
  v107 = vdupq_laneq_s32(*a6, 3).u64[0];
  v108 = vmulq_n_f32(v106, vmla_f32(0xBF000000BF000000, v107, v107).f32[0]);
  v108.i32[3] = 0;
  v109 = vextq_s8(v105, v105, 8uLL).u64[0];
  v110 = vext_s8(*v104.f32, v109, 4uLL);
  v111 = vmls_f32(vmul_f32(*v104.f32, *&vextq_s8(v106, v106, 4uLL)), v110, *v106.f32);
  *v112.f32 = vext_s8(v111, vmls_f32(vmul_f32(v109, *v106.f32), *v104.f32, *&vextq_s8(v106, v106, 8uLL)), 4uLL);
  v112.i64[1] = v111.u32[0];
  v113 = vmlaq_laneq_f32(v108, v112, *a6, 3);
  v113.i64[1] = vextq_s8(v113, v113, 8uLL).u32[0];
  v114 = vmulq_f32(v105, v106);
  v114.i64[0] = vpaddq_f32(v114, v114).u64[0];
  v115 = vmlaq_n_f32(v113, v105, vpadd_f32(*v114.f32, *v114.f32).f32[0]);
  v116 = *a4;
  v116.i32[3] = 0;
  v117 = vmulq_f32(v116, v105);
  v117.i64[0] = vpaddq_f32(v117, v117).u64[0];
  v118 = vmulq_laneq_f32(v116, *a6, 3);
  v116.i64[0] = vextq_s8(v116, v116, 8uLL).u64[0];
  v119 = vmls_f32(vmul_f32(*v104.f32, vext_s8(*a4->f32, *v116.f32, 4uLL)), v110, *a4->f32);
  *v120.f32 = vext_s8(v119, vmls_f32(vmul_f32(*a4->f32, v109), *v104.f32, *v116.f32), 4uLL);
  *&v120.u32[2] = v119;
  v121 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v105, *a4, 3), v118), v120);
  *v104.f32 = vdup_lane_s32(*v121.f32, 1);
  *v116.f32 = vdup_laneq_s32(v121, 2);
  v122 = vaddq_f32(v121, v121);
  *v105.f32 = vsub_f32(vmul_f32(*&vextq_s8(*a4, *a4, 8uLL), *&vextq_s8(v102, v102, 8uLL)), vpadd_f32(*v117.f32, *v117.f32));
  v123 = vdup_lane_s32(*v122.f32, 1);
  *v118.f32 = vdup_laneq_s32(v122, 2);
  *v121.f32 = vdup_lane_s32(vmul_f32(*v121.f32, *v122.f32), 0);
  v124 = vmul_lane_f32(*v104.f32, *v122.f32, 1);
  v125 = vmul_laneq_f32(*v116.f32, v122, 2);
  *v104.f32 = vmul_n_f32(*v104.f32, v122.f32[0]);
  v126 = vmul_n_f32(*v116.f32, v122.f32[0]);
  *v116.f32 = vmul_lane_f32(*v116.f32, *v122.f32, 1);
  *v122.f32 = vmul_lane_f32(vdup_lane_s32(*v122.f32, 0), *v105.f32, 1);
  v127 = vmul_lane_f32(v123, *v105.f32, 1);
  *v105.f32 = vmul_lane_f32(*v118.f32, *v105.f32, 1);
  *v121.f32 = vsub_f32(_D4, *v121.f32);
  *v128.f32 = vext_s8(vsub_f32(vsub_f32(_D4, v124), v125), vadd_f32(*v104.f32, *v105.f32), 4uLL);
  *&v128.u32[2] = vsub_f32(v126, v127);
  v187 = *(v25 + 80);
  v129 = vaddq_f32(v115, v115);
  v129.i32[3] = 0;
  *v104.f32 = vext_s8(vsub_f32(*v104.f32, *v105.f32), vsub_f32(*v121.f32, v125), 4uLL);
  *&v104.u32[2] = vadd_f32(*v116.f32, *v122.f32);
  *v105.f32 = vext_s8(vadd_f32(v126, v127), vsub_f32(*v116.f32, *v122.f32), 4uLL);
  *&v105.u32[2] = vsub_f32(*v121.f32, v124);
  v154[0] = v102;
  v154[1] = v103;
  v153 = 0uLL;
  v130 = vmulq_n_f32(xmmword_1E3047670, v23);
  v131 = vmulq_n_f32(v128, v130.f32[0]);
  v131.i32[3] = 0;
  v132 = vmulq_lane_f32(v104, *v130.f32, 1);
  v132.i32[3] = 0;
  v133 = vmulq_laneq_f32(v105, v130, 2);
  v133.i32[3] = 0;
  v152 = 0;
  v134 = vaddq_f32(v133, vaddq_f32(v131, v132));
  v172 = 4;
  v168 = v129;
  v176 = v24;
  v174 = vaddq_f32(v129, v134);
  v175 = vsubq_f32(v129, v134);
  v169 = LODWORD(a7);
  v170 = LODWORD(a7);
  v171 = LODWORD(a7);
  v173 = 1;
  if (v26.f32[0] == 1.0 && *(a5 + 8) == 1.0)
  {
    v135 = *(a5 + 12);
    physx::Gu::getPCMConvexData(&v177, v135 == 1.0, &v155);
    if (v135 == 1.0)
    {
      v136 = 1;
      v137 = &unk_1F5D216F0;
      goto LABEL_23;
    }
  }

  else
  {
    v138 = vaddq_f32(vaddq_f32(vmulq_n_f32(v180, *(v25 + 56)), vmulq_n_f32(v181, *(v25 + 60))), vmulq_n_f32(v182, *(v25 + 64)));
    v155 = v138.i64[0];
    v156 = v138.i32[2];
    v139 = *(v25 + 70);
    v140 = *(v25 + 71);
    v157 = v139;
    v158 = v140;
    v141 = *(v25 + 68);
    v142 = v141;
    v143 = v141 & 0x7FFF;
    v159 = v143;
    v145 = *(v25 + 72);
    v144 = *(v25 + 80);
    v160 = v145;
    v161 = v145 + 20 * v140;
    v146 = v161 + 12 * v139;
    v147 = v146 + 2 * v143 + 3 * v139;
    v148 = 4 * v143;
    if (v142 >= 0)
    {
      v148 = 0;
    }

    v149 = v147 + v148;
    if (v142 >= 0)
    {
      v147 = 0;
    }

    v162 = v149;
    v163 = v146;
    v164 = v147;
    v165 = 0;
    v166 = 0;
    v167 = v144;
  }

  v136 = 0;
  v137 = &unk_1F5D21740;
LABEL_23:
  v190[5] = &v180;
  v190[6] = &v183;
  v191 = v136;
  v190[4] = v154;
  v190[0] = v137;
  v192 = &v177;
  physx::Gu::computeMTD(&v168, &v155, v190, &v152, &v153);
  if (v150)
  {
    *a2 = fmaxf(v152.f32[0], 0.0);
    v151 = v153.i32[2];
    *a1 = v153.i64[0];
    *(a1 + 8) = v151;
  }
}

uint64_t GeomMTDCallback_CapsuleMesh(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v47 = *MEMORY[0x1E69E9840];
  v10 = *v9;
  v11 = v9[1];
  v12 = v10 + v10;
  v14 = v9[2];
  v13 = v9[3];
  v15 = v13 + v13;
  v16 = ((v13 * (v13 + v13)) + -1.0) + (v10 * (v10 + v10));
  v17 = (v12 * v11) + (v14 * (v13 + v13));
  v18 = (v12 * v14) - (v11 * v15);
  v21 = *(v19 + 4);
  v20 = *(v19 + 8);
  v22 = v16 * v20;
  v23 = v20 * v17;
  v24 = v18 * v20;
  v25 = v9[4];
  v26 = v9[5];
  v27 = v9[6];
  v31.f32[0] = v25 + v22;
  v31.f32[1] = v26 + v23;
  v32 = v24 + v27;
  v33.f32[0] = v25 - v22;
  v33.f32[1] = v26 - v23;
  v34 = v27 - v24;
  v35 = v21;
  v41 = 0;
  physx::PxTransformFromSegment(&v31, &v33, &v41, v40);
  v46[0] = -1;
  LODWORD(v42) = 2;
  HIDWORD(v42) = v21;
  v43 = v41;
  physx::Gu::GeometryUnion::set(v46, &v42);
  v45[0] = -1;
  physx::Gu::GeometryUnion::set(v45, v5);
  v39 = 0;
  v38 = 0;
  v44 = 0;
  v36 = 0;
  v37 = 1065353216;
  v28 = physx::Gu::contactCapsuleMesh(v46, v45, v40, v3, &v36, &v38, &v42);
  result = 0;
  if (v28)
  {
    v30 = v44;
    LODWORD(result) = processContacts(v8, v7, v44, &v42);
    if (v30)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t GeomMTDCallback_CapsuleHeightField(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v55 = *MEMORY[0x1E69E9840];
  v10 = *v9;
  v11 = v9[1];
  v12 = v10 + v10;
  v14 = v9[2];
  v13 = v9[3];
  v15 = v13 + v13;
  v16 = ((v13 * (v13 + v13)) + -1.0) + (v10 * (v10 + v10));
  v17 = (v12 * v11) + (v14 * (v13 + v13));
  v18 = (v12 * v14) - (v11 * v15);
  v21 = *(v19 + 4);
  v20 = *(v19 + 8);
  v22 = v16 * v20;
  v23 = v20 * v17;
  v24 = v18 * v20;
  v25 = v9[4];
  v26 = v9[5];
  v27 = v9[6];
  v39.f32[0] = v25 + v22;
  v39.f32[1] = v26 + v23;
  v40 = v24 + v27;
  v41.f32[0] = v25 - v22;
  v41.f32[1] = v26 - v23;
  v42 = v27 - v24;
  v43 = v21;
  v49 = 0;
  physx::PxTransformFromSegment(&v39, &v41, &v49, v48);
  v54[0] = -1;
  LODWORD(v50) = 2;
  HIDWORD(v50) = v21;
  v51 = v49;
  physx::Gu::GeometryUnion::set(v54, &v50);
  v53[0].i32[0] = -1;
  physx::Gu::GeometryUnion::set(v53, v5);
  v47 = 0;
  v46 = 0;
  v52 = 0;
  v44 = 0;
  v45 = 1065353216;
  v36 = physx::Gu::contactCapsuleHeightfield(v54, v53, v48, v3, &v44, v28, v29, v30, v31, v32, v33, v34, v35, &v46, &v50);
  result = 0;
  if (v36)
  {
    v38 = v52;
    LODWORD(result) = processContacts(v8, v7, v52, &v50);
    if (v38)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL GeomMTDCallback_BoxBox(float *a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = vdup_lane_s32(*a4, 1);
  v9 = vdup_laneq_s32(*a4, 2);
  v10 = vdup_laneq_s32(*a4, 3);
  v11 = vaddq_f32(*a4, *a4);
  v12 = vmul_lane_f32(v8, *v11.f32, 1);
  v13 = vmul_laneq_f32(v9, v11, 2);
  v14 = vmul_n_f32(v8, v11.f32[0]);
  v15 = vmul_n_f32(v9, v11.f32[0]);
  v16 = vmul_n_f32(v10, v11.f32[0]);
  v17 = vmul_lane_f32(v9, *v11.f32, 1);
  v18 = vmul_lane_f32(v10, *v11.f32, 1);
  v19 = vmul_laneq_f32(v10, v11, 2);
  __asm { FMOV            V0.2S, #1.0 }

  *v11.f32 = vsub_f32(_D0, vdup_lane_s32(vmul_f32(*a4, *v11.f32), 0));
  v24 = vadd_f32(v14, v19);
  v25 = vsub_f32(v15, v18);
  v26 = vsub_f32(*v11.f32, v13);
  v27 = vadd_f32(v17, v16);
  v28 = vadd_f32(v15, v18);
  v29 = vsub_f32(v17, v16);
  *v11.f32 = vsub_f32(*v11.f32, v12);
  v30 = (1.0 - v12.f32[1]) - v13.f32[1];
  v116 = v30;
  v108 = v25.f32[0];
  v110 = v24.f32[0];
  *v31.i8 = v24;
  v31.u64[1] = v25;
  *v32.i8 = vsub_f32(v14, v19);
  v105 = v27.f32[0];
  v106 = v26.f32[0];
  v32.u64[1] = v26;
  v33 = vuzp1q_s32(v31, v32);
  v103 = v28.f32[1];
  v104 = v32.i32[1];
  v33.i32[2] = v32.i32[1];
  v117 = v33;
  *v33.i8 = v27;
  v33.u64[1] = v28;
  v99 = v11.f32[0];
  v100 = v29.f32[0];
  *v32.i8 = v29;
  v32.i64[1] = v11.i64[0];
  v34 = vuzp1q_s32(v33, v32);
  v34.i32[1] = v28.i32[1];
  v118[0] = v34;
  v34.i64[0] = *(a4 + 16);
  v91 = *v34.i8;
  v92 = *(a4 + 24);
  *&v34.i32[2] = v92;
  v34.i32[3] = *(a3 + 4);
  v118[1] = v34;
  v119 = *(a3 + 8);
  *v32.i8 = vdup_lane_s32(*a6, 1);
  *v11.f32 = vdup_laneq_s32(*a6, 2);
  v35 = vdup_laneq_s32(*a6, 3);
  v36 = vaddq_f32(*a6, *a6);
  v37 = vmul_lane_f32(*v32.i8, *v36.f32, 1);
  v38 = vmul_laneq_f32(*v11.f32, v36, 2);
  *v32.i8 = vmul_n_f32(*v32.i8, v36.f32[0]);
  v39 = vmul_n_f32(*v11.f32, v36.f32[0]);
  v40 = vmul_n_f32(v35, v36.f32[0]);
  *v11.f32 = vmul_lane_f32(*v11.f32, *v36.f32, 1);
  v41 = vmul_lane_f32(v35, *v36.f32, 1);
  v42 = vmul_laneq_f32(v35, v36, 2);
  v43 = vsub_f32(_D0, vdup_lane_s32(vmul_f32(*a6, *v36.f32), 0));
  v44 = vadd_f32(*v32.i8, v42);
  v45 = vsub_f32(v39, v41);
  v46 = vsub_f32(*v32.i8, v42);
  v47 = vsub_f32(v43, v38);
  *v36.f32 = vadd_f32(*v11.f32, v40);
  v48 = vadd_f32(v39, v41);
  *v34.i8 = vsub_f32(*v11.f32, v40);
  *v32.i8 = vsub_f32(v43, v37);
  v49 = (1.0 - v37.f32[1]) - v38.f32[1];
  v112 = v49;
  v97 = v45.f32[0];
  v98 = v44.f32[0];
  *v50.i8 = v44;
  v50.u64[1] = v45;
  *v51.i8 = v46;
  v95 = v36.f32[0];
  v96 = v47.f32[0];
  v51.u64[1] = v47;
  v52 = vuzp1q_s32(v50, v51);
  v101 = v48.f32[1];
  v102 = v46.f32[1];
  v52.i32[2] = v46.i32[1];
  v51.i64[0] = v36.i64[0];
  v51.u64[1] = v48;
  v93 = v32.i32[0];
  v94 = v34.i32[0];
  v34.i64[1] = v32.i64[0];
  v113 = v52;
  v53 = vuzp1q_s32(v51, v34);
  v53.i32[1] = v48.i32[1];
  v114[0] = v53;
  v53.i64[0] = *(a6 + 16);
  v89 = *v53.i8;
  v90 = *(a6 + 24);
  *&v53.i32[2] = v90;
  v53.i32[3] = *(a5 + 4);
  v114[1] = v53;
  v115 = *(a5 + 8);
  v120[0] = 0.0;
  result = PxcTestAxis(&v116, &v116, &v112, v120);
  if (!result)
  {
    return result;
  }

  v55 = v120[0];
  v120[0] = 0.0;
  if (!PxcTestAxis(&v117.i32[2], &v116, &v112, v120))
  {
    return 0;
  }

  v56 = fminf(v55, 3.4028e38);
  if (v120[0] < v56)
  {
    v57 = v120[0];
  }

  else
  {
    v57 = v56;
  }

  if (v120[0] >= v56)
  {
    v58 = v110;
  }

  else
  {
    v30 = *&v104;
    v58 = v106;
  }

  if (v120[0] < v56)
  {
    v59 = v105;
  }

  else
  {
    v59 = v108;
  }

  v120[0] = 0.0;
  result = PxcTestAxis(v118 + 1, &v116, &v112, v120);
  if (!result)
  {
    return result;
  }

  _NF = v120[0] < v57;
  if (v120[0] >= v57)
  {
    v61 = v58;
  }

  else
  {
    v57 = v120[0];
    v30 = v103;
    v61 = v100;
  }

  v62 = _NF ? v99 : v59;
  v120[0] = 0.0;
  result = PxcTestAxis(&v112, &v116, &v112, v120);
  if (!result)
  {
    return result;
  }

  v63 = v120[0] < v57;
  if (v120[0] >= v57)
  {
    v49 = v30;
  }

  else
  {
    v57 = v120[0];
  }

  if (v63)
  {
    v61 = v98;
  }

  if (v63)
  {
    v62 = v97;
  }

  v120[0] = 0.0;
  result = PxcTestAxis(&v113.i32[2], &v116, &v112, v120);
  if (!result)
  {
    return result;
  }

  v64 = v120[0] < v57 ? v120[0] : v57;
  if (v120[0] >= v57)
  {
    v65 = v61;
  }

  else
  {
    v49 = v102;
    v65 = v96;
  }

  v66 = v120[0] < v57 ? v95 : v62;
  v120[0] = 0.0;
  if (!PxcTestAxis(v114 + 1, &v116, &v112, v120))
  {
    return 0;
  }

  if (v120[0] < v64)
  {
    v64 = v120[0];
    v49 = v101;
    v65 = *&v94;
    v66 = *&v93;
  }

  v107 = v66;
  v109 = v65;
  v111 = v49;
  for (i = 0; i != 3; ++i)
  {
    v68 = 0;
    v69 = &v112 + 3 * i;
    v71 = v69[1];
    v70 = v69[2];
    v72 = *v69;
    do
    {
      v74 = *(&v116 + v68 * 4 + 4);
      v73 = *&v117.i32[v68 + 1];
      v75 = *(&v116 + v68 * 4);
      v76 = (v74 * v70) - (v73 * v71);
      v77 = (v73 * v72) - (v75 * v70);
      v78 = (v75 * v71) - (v74 * v72);
      if (fabsf(v76) > 0.000001 || fabsf(v77) > 0.000001 || fabsf(v78) > 0.000001)
      {
        v79 = ((v77 * v77) + (v76 * v76)) + (v78 * v78);
        v80 = 0.0;
        v81 = 0.0;
        v82 = 0.0;
        if (v79 > 0.0)
        {
          v83 = 1.0 / sqrtf(v79);
          v82 = v76 * v83;
          v81 = v77 * v83;
          v80 = v78 * v83;
        }

        v120[0] = v82;
        v120[1] = v81;
        v120[2] = v80;
        v121 = 0.0;
        result = PxcTestAxis(v120, &v116, &v112, &v121);
        if (!result)
        {
          return result;
        }

        if (v121 < v64)
        {
          v64 = v121;
          v111 = v82;
          v109 = v81;
          v107 = v80;
        }
      }

      v68 += 3;
    }

    while (v68 != 9);
  }

  v84 = vsub_f32(v89, v91);
  v84.f32[0] = (vmuls_lane_f32(v109, v84, 1) + (v111 * v84.f32[0])) + (v107 * (v90 - v92));
  v85 = v84.f32[0] < 0.0;
  if (v84.f32[0] >= 0.0)
  {
    v86 = -v111;
  }

  else
  {
    v86 = v111;
  }

  v87 = -v109;
  if (v85)
  {
    v87 = v109;
  }

  v88 = -v107;
  if (v85)
  {
    v88 = v107;
  }

  *a1 = v86;
  a1[1] = v87;
  a1[2] = v88;
  *a2 = fmaxf(v64, 0.0);
  return 1;
}

uint64_t GeomMTDCallback_BoxConvex(uint64_t a1, float *a2, uint64_t a3, int32x2_t *a4, uint64_t a5, __int128 *a6)
{
  v7 = 0;
  v185 = *MEMORY[0x1E69E9840];
  v34 = *a4->i8;
  v8 = vdup_lane_s32(*a4, 1);
  v9 = vdup_laneq_s32(*a4->i8, 2);
  v10 = vdup_laneq_s32(*a4->i8, 3);
  v11 = vaddq_f32(v34, v34);
  v12 = vmul_lane_f32(v8, *v11.f32, 1);
  v13 = vmul_laneq_f32(v9, v11, 2);
  v14 = vmul_n_f32(v8, v11.f32[0]);
  v15 = vmul_n_f32(v9, v11.f32[0]);
  v16 = vmul_n_f32(v10, v11.f32[0]);
  v17 = vmul_lane_f32(v9, *v11.f32, 1);
  v18 = vmul_lane_f32(v10, *v11.f32, 1);
  v19 = vmul_laneq_f32(v10, v11, 2);
  __asm { FMOV            V6.2S, #1.0 }

  *v34.f32 = vsub_f32(_D6, vdup_lane_s32(vmul_f32(*a4, *v11.f32), 0));
  v24 = vadd_f32(v14, v19).f32[0];
  v25 = vsub_f32(v15, v18).f32[0];
  v35 = vsub_f32(v14, v19);
  v26 = vsub_f32(*v34.f32, v13).f32[0];
  v27 = vadd_f32(v17, v16);
  v28 = vadd_f32(v15, v18);
  v29 = vsub_f32(v17, v16);
  v30 = vsub_f32(*v34.f32, v12).f32[0];
  v31 = (1.0 - v12.f32[1]) - v13.f32[1];
  *&v32 = a4[2];
  v33 = a4[3].u32[0];
  v34.i64[0] = *(a3 + 4);
  v35.i32[0] = *(a3 + 12);
  v36 = v24 - v35.f32[1];
  v37 = v31 + 1.0;
  v38 = vsub_f32(v27, v29).u32[0];
  v39 = v28.f32[1] - v25;
  v41 = v30 + ((1.0 - v31) - v26);
  v42 = v28.f32[1] + v25;
  v43 = vadd_f32(v27, v29).u32[0];
  if (v31 < -v26)
  {
    v44 = v30 + ((1.0 - v31) - v26);
  }

  else
  {
    v44 = v30 + (v26 + (v31 + 1.0));
  }

  if (v31 < -v26)
  {
    v45 = v42;
  }

  else
  {
    v45 = *&v38;
  }

  if (v31 < -v26)
  {
    v46 = *&v43;
  }

  else
  {
    v46 = v39;
  }

  if (v31 >= -v26)
  {
    v41 = v24 - v35.f32[1];
    v36 = v30 + (v26 + (v31 + 1.0));
  }

  v47 = v24 + v35.f32[1];
  v48 = v31 <= v26;
  v40 = 1.0 - v31;
  v49 = (v26 + (1.0 - v31)) - v30;
  v50 = (v37 - v26) - v30;
  if (v48)
  {
    v51 = (v26 + v40) - v30;
  }

  else
  {
    v51 = (v37 - v26) - v30;
  }

  if (v48)
  {
    v50 = v47;
    v47 = v49;
    v52 = *&v43;
  }

  else
  {
    v52 = v42;
  }

  if (v48)
  {
    v53 = v39;
  }

  else
  {
    v53 = *&v38;
  }

  _NF = v30 < 0.0;
  if (v30 < 0.0)
  {
    v55 = v51;
  }

  else
  {
    v55 = v44;
  }

  if (_NF)
  {
    v56 = v47;
  }

  else
  {
    v50 = v45;
    v56 = v46;
  }

  if (!_NF)
  {
    v52 = v41;
    v53 = v36;
  }

  v57 = 0.5 / sqrtf(v55);
  *&v58 = v50 * v57;
  *(&v58 + 1) = v56 * v57;
  *(&v58 + 2) = v57 * v52;
  v59 = v34;
  v59.i32[2] = *(a3 + 12);
  v60 = v57 * v53;
  v61 = vdup_laneq_s32(v59, 2);
  v59.i32[3] = 0;
  v149 = 3;
  v150 = 0;
  v145[0] = 0;
  v145[1] = 0;
  v151 = v59;
  *v59.i8 = vpmin_f32(v61, *v34.f32);
  *v59.i32 = vpmin_f32(*v59.i8, *v59.i8).f32[0];
  v146 = 0.15 * *v59.i32;
  v147 = 0.05 * *v59.i32;
  v148 = 0.05 * *v59.i32;
  v62 = *(a5 + 32);
  v63 = *(a5 + 4);
  v64 = v63;
  v64.i32[3] = 0;
  LODWORD(v65) = HIDWORD(*(a5 + 4));
  if (v63.f32[0] == 1.0 && v65 == 1.0)
  {
    v7 = v63.f32[2] == 1.0;
  }

  *(&v58 + 3) = v60;
  v66 = *(a5 + 16);
  v67 = *(v62 + 72) + 20 * *(v62 + 71);
  v167 = 0u;
  v168 = 0;
  v166 = 0u;
  v175 = v62 + 32;
  v177 = v67;
  v178 = *(v62 + 70);
  v68.i64[0] = *(v62 + 92);
  v68.i64[1] = *(v62 + 100);
  v69 = vmulq_f32(v64, v68);
  *v69.i8 = vpmin_f32(vdup_laneq_s32(v69, 2), *v69.i8);
  *v69.i32 = vpmin_f32(*v69.i8, *v69.i8).f32[0];
  *&v167 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v69.i32);
  *(&v167 + 2) = 0.025 * *v69.i32;
  if (v7)
  {
    v169 = xmmword_1E3047670;
    v170 = xmmword_1E3047680;
    v171 = xmmword_1E30476A0;
    v172 = xmmword_1E3047670;
    v173 = xmmword_1E3047680;
    v174 = xmmword_1E30476A0;
  }

  else
  {
    v70 = vrecpeq_f32(v64);
    v71 = 4;
    do
    {
      v70 = vmulq_f32(v70, vrecpsq_f32(v70, v64));
      --v71;
    }

    while (v71);
    *v72.f32 = vdup_lane_s32(*v63.f32, 0);
    v72.i64[1] = v72.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v72, v64)), *v34.f32).u32[0] & 0xFFFFFF) != 0)
    {
      v78 = vdup_lane_s32(*v66.f32, 1);
      v79 = vdup_laneq_s32(v66, 2);
      v80 = vdup_laneq_s32(v66, 3);
      v81 = vaddq_f32(v66, v66);
      v82 = vmul_lane_f32(v78, *v81.f32, 1);
      v83 = vmul_laneq_f32(v79, v81, 2);
      v84 = vmul_n_f32(v78, v81.f32[0]);
      v85 = vmul_n_f32(v79, v81.f32[0]);
      v86 = vmul_n_f32(v80, v81.f32[0]);
      v87 = vmul_lane_f32(v79, *v81.f32, 1);
      v88 = vmul_lane_f32(v80, *v81.f32, 1);
      v89 = vmul_laneq_f32(v80, v81, 2);
      v90 = vsub_f32(_D6, vdup_lane_s32(vmul_f32(*v66.f32, *v81.f32), 0));
      *v81.f32 = vsub_f32(vsub_f32(_D6, v82), v83);
      v91 = vadd_f32(v84, v89);
      v92 = vsub_f32(v85, v88);
      v93 = vsub_f32(v84, v89);
      v94 = vadd_f32(v85, v88);
      v95 = vsub_f32(v87, v86);
      v96 = vext_s8(v94, v95, 4uLL);
      v97 = vsub_f32(v90, v83);
      *v98.f32 = vext_s8(*v81.f32, *&vdupq_lane_s32(v93, 1), 4uLL);
      v98.i64[1] = vdup_lane_s32(v96, 0).u32[0];
      v99 = vsub_f32(v90, v82);
      *v100.f32 = vext_s8(*&vdupq_lane_s32(v91, 0), v97, 4uLL);
      v100.i64[1] = vdup_lane_s32(v96, 1).u32[0];
      v101 = vadd_f32(v87, v86);
      *v102.f32 = vext_s8(*&vdupq_lane_s32(v92, 0), v101, 4uLL);
      v102.i64[1] = vdup_lane_s32(v99, 0).u32[0];
      v103 = vmulq_n_f32(v98, v63.f32[0]);
      v103.i32[3] = 0;
      v104 = vmulq_lane_f32(v100, *v63.f32, 1);
      v104.i32[3] = 0;
      v105 = vmulq_laneq_f32(v102, v63, 2);
      v105.i32[3] = 0;
      v106 = vmulq_lane_f32(v103, *v81.f32, 1);
      v106.i32[3] = 0;
      v107 = vmulq_n_f32(v104, *v91.i32);
      v107.i32[3] = 0;
      v108 = vmulq_n_f32(v105, *v92.i32);
      v108.i32[3] = 0;
      v73 = vaddq_f32(v108, vaddq_f32(v106, v107));
      v109 = vmulq_lane_f32(v103, v93, 1);
      v109.i32[3] = 0;
      v110 = vmulq_n_f32(v104, *v97.i32);
      v110.i32[3] = 0;
      v111 = vmulq_n_f32(v105, *v101.i32);
      v111.i32[3] = 0;
      v74 = vaddq_f32(v111, vaddq_f32(v109, v110));
      v112 = vmulq_lane_f32(v103, v94, 1);
      v112.i32[3] = 0;
      v113 = vmulq_n_f32(v104, *v95.i32);
      v113.i32[3] = 0;
      v114 = vmulq_n_f32(v105, *v99.i32);
      v114.i32[3] = 0;
      v75 = vaddq_f32(v114, vaddq_f32(v112, v113));
      v169 = v73;
      v170 = v74;
      v115 = vmulq_n_f32(v98, v70.f32[0]);
      v115.i32[3] = 0;
      v116 = vmulq_lane_f32(v100, *v70.f32, 1);
      v116.i32[3] = 0;
      v117 = vmulq_laneq_f32(v102, v70, 2);
      v117.i32[3] = 0;
      v118 = vmulq_lane_f32(v115, *v81.f32, 1);
      v118.i32[3] = 0;
      v119 = vmulq_n_f32(v116, *v91.i32);
      v119.i32[3] = 0;
      v171 = v75;
      v120 = vmulq_n_f32(v117, *v92.i32);
      v120.i32[3] = 0;
      v121 = vaddq_f32(v120, vaddq_f32(v118, v119));
      v122 = vmulq_lane_f32(v115, v93, 1);
      v122.i32[3] = 0;
      v123 = vmulq_n_f32(v116, *v97.i32);
      v123.i32[3] = 0;
      v124 = vmulq_n_f32(v117, *v101.i32);
      v124.i32[3] = 0;
      v76 = vaddq_f32(v124, vaddq_f32(v122, v123));
      v125 = vmulq_lane_f32(v115, v94, 1);
      v125.i32[3] = 0;
      v126 = vmulq_n_f32(v116, *v95.i32);
      v126.i32[3] = 0;
      v127 = vmulq_n_f32(v117, *v99.i32);
      v127.i32[3] = 0;
      v77 = vaddq_f32(v127, vaddq_f32(v125, v126));
      v172 = v121;
      v65 = *(a5 + 8);
    }

    else
    {
      v70.i32[3] = 0;
      v73 = vmulq_f32(v64, xmmword_1E3047670);
      v74 = vmulq_f32(v64, xmmword_1E3047680);
      v75 = vmulq_f32(v64, xmmword_1E30476A0);
      v169 = v73;
      v170 = v74;
      v171 = v75;
      v76 = vmulq_f32(v70, xmmword_1E3047680);
      v77 = vmulq_f32(v70, xmmword_1E30476A0);
      v172 = vmulq_f32(v70, xmmword_1E3047670);
    }

    v173 = v76;
    v174 = v77;
    v128 = vmulq_f32(v73, 0);
    v128.i32[3] = 0;
    v129 = vmulq_f32(v74, 0);
    v129.i32[3] = 0;
    v130 = vmulq_f32(v75, 0);
    v130.i32[3] = 0;
    v166 = vaddq_f32(v130, vaddq_f32(v129, v128));
  }

  v131 = 0;
  v176 = *(v62 + 80);
  *(&v32 + 1) = v33;
  v132 = *a6;
  *&v133 = *(a6 + 2);
  *(&v133 + 1) = *(a6 + 6);
  v144[0] = v58;
  v144[1] = v32;
  v143[0] = v132;
  v143[1] = v133;
  v142 = 0uLL;
  v141 = 0;
  if (v63.f32[0] == 1.0 && v65 == 1.0)
  {
    v131 = *(a5 + 12) == 1.0;
  }

  v139 = v34.i64[0];
  v140 = v35.i32[0];
  physx::Gu::PolygonalBox::PolygonalBox(v154, &v139);
  v157 = 0;
  v159 = 0x600000008;
  v158 = 0;
  v160 = 0;
  v161 = &v156;
  v162 = &v155;
  v164 = 0u;
  v165 = 0u;
  v163 = &physx::Gu::gPCMBoxPolygonData;
  physx::Gu::getPCMConvexData(&v166, v131, v153);
  v152[0] = xmmword_1E3047670;
  v152[1] = xmmword_1E3047680;
  v152[2] = xmmword_1E30476A0;
  v182[4] = v144;
  v182[5] = v152;
  v182[6] = v152;
  v183 = 1;
  v182[0] = &unk_1F5D21690;
  v184 = v145;
  if (v131)
  {
    v134 = 1;
    v135 = &unk_1F5D216F0;
  }

  else
  {
    v134 = 0;
    v135 = &unk_1F5D21740;
  }

  v179[5] = &v169;
  v179[6] = &v172;
  v180 = v134;
  v179[4] = v143;
  v179[0] = v135;
  v181 = &v166;
  result = physx::Gu::computeMTD(&v157, v153, v182, v179, &v141, &v142);
  if (result)
  {
    *a2 = fmaxf(v141.f32[0], 0.0);
    v137 = v142.i32[2];
    *a1 = v142.i64[0];
    *(a1 + 8) = v137;
  }

  return result;
}

uint64_t GeomMTDCallback_BoxMesh(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v74 = *MEMORY[0x1E69E9840];
  v10 = vdup_lane_s32(*v9, 1);
  v11 = vdup_laneq_s32(*v9->i8, 2);
  v12 = vdup_laneq_s32(*v9->i8, 3);
  _Q4 = vaddq_f32(*v9->i8, *v9->i8);
  v14 = vdup_lane_s32(vmul_f32(*v9, *_Q4.f32), 0);
  v15 = vmul_lane_f32(v10, *_Q4.f32, 1);
  v16 = vmul_laneq_f32(v11, _Q4, 2);
  v17 = vmul_n_f32(v10, _Q4.f32[0]);
  v18 = vmul_n_f32(v11, _Q4.f32[0]);
  v19 = vmul_n_f32(v12, _Q4.f32[0]);
  v20 = vmul_lane_f32(v11, *_Q4.f32, 1);
  v21 = vmul_lane_f32(v12, *_Q4.f32, 1);
  v22 = vmul_laneq_f32(v12, _Q4, 2);
  __asm { FMOV            V4.2S, #1.0 }

  v26 = vsub_f32(*_Q4.f32, v14);
  v27 = vadd_f32(v17, v22).f32[0];
  v28 = vsub_f32(v18, v21).f32[0];
  v29 = vsub_f32(v17, v22);
  v30 = vsub_f32(v26, v16).f32[0];
  v31 = vadd_f32(v20, v19);
  v32 = vsub_f32(v20, v19);
  v33 = vsub_f32(v26, v15).f32[0];
  v34 = (1.0 - v15.f32[1]) - v16.f32[1];
  v16.i32[0] = vadd_f32(v18, v21).i32[1];
  v35 = v9[2];
  v36 = v9[3].i32[0];
  v38 = *(v37 + 4);
  v39 = *(v37 + 12);
  v40 = v27 - v29.f32[1];
  v41 = vsub_f32(v31, v32).u32[0];
  v42 = v16.f32[0] - v28;
  v43 = v33 + ((1.0 - v34) - v30);
  v44 = v16.f32[0] + v28;
  LODWORD(v45) = vadd_f32(v31, v32).u32[0];
  if (v34 < -v30)
  {
    v46 = v33 + ((1.0 - v34) - v30);
  }

  else
  {
    v46 = v33 + (v30 + (v34 + 1.0));
  }

  if (v34 < -v30)
  {
    v47 = v44;
  }

  else
  {
    v47 = *&v41;
  }

  if (v34 < -v30)
  {
    v48 = v45;
  }

  else
  {
    v48 = v42;
  }

  if (v34 >= -v30)
  {
    v43 = v27 - v29.f32[1];
    v40 = v33 + (v30 + (v34 + 1.0));
  }

  v49 = v27 + v29.f32[1];
  v50 = v34 <= v30;
  v51 = (v30 + (1.0 - v34)) - v33;
  v52 = ((v34 + 1.0) - v30) - v33;
  if (v50)
  {
    v53 = v51;
  }

  else
  {
    v53 = v52;
  }

  if (v50)
  {
    v52 = v49;
    v49 = v51;
    v54 = v42;
  }

  else
  {
    v45 = v44;
    v54 = *&v41;
  }

  _NF = v33 < 0.0;
  if (v33 < 0.0)
  {
    v56 = v53;
  }

  else
  {
    v56 = v46;
  }

  if (!_NF)
  {
    v52 = v47;
    v49 = v48;
    v45 = v43;
    v54 = v40;
  }

  v57 = 0.5 / sqrtf(v56);
  v65[0] = v52 * v57;
  v65[1] = v49 * v57;
  v65[2] = v57 * v45;
  v65[3] = v57 * v54;
  v66 = v35;
  v67 = v36;
  v73[0] = -1;
  v68 = 3;
  v69 = v38;
  v70 = v39;
  physx::Gu::GeometryUnion::set(v73, &v68);
  v72[0] = NAN;
  physx::Gu::GeometryUnion::set(v72, v5);
  v64 = 0;
  v63 = 0;
  v71 = 0;
  v61 = 0;
  v62 = 1065353216;
  v58 = physx::Gu::contactBoxMesh(v73, v72, v65, v3, &v61, &v63, &v68);
  result = 0;
  if (v58)
  {
    v60 = v71;
    LODWORD(result) = processContacts(v8, v7, v71, &v68);
    if (v60)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t GeomMTDCallback_BoxHeightField(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v73 = *MEMORY[0x1E69E9840];
  v10 = vdup_lane_s32(*v9, 1);
  v11 = vdup_laneq_s32(*v9->i8, 2);
  v12 = vdup_laneq_s32(*v9->i8, 3);
  _Q4 = vaddq_f32(*v9->i8, *v9->i8);
  v14 = vdup_lane_s32(vmul_f32(*v9, *_Q4.f32), 0);
  v15 = vmul_lane_f32(v10, *_Q4.f32, 1);
  v16 = vmul_laneq_f32(v11, _Q4, 2);
  v17 = vmul_n_f32(v10, _Q4.f32[0]);
  v18 = vmul_n_f32(v11, _Q4.f32[0]);
  v19 = vmul_n_f32(v12, _Q4.f32[0]);
  v20 = vmul_lane_f32(v11, *_Q4.f32, 1);
  v21 = vmul_lane_f32(v12, *_Q4.f32, 1);
  v22 = vmul_laneq_f32(v12, _Q4, 2);
  __asm { FMOV            V4.2S, #1.0 }

  v26 = vsub_f32(*_Q4.f32, v14);
  v27 = vadd_f32(v17, v22).f32[0];
  v28 = vsub_f32(v18, v21).f32[0];
  v29 = vsub_f32(v17, v22);
  v30 = vsub_f32(v26, v16).f32[0];
  v31 = vadd_f32(v20, v19);
  v32 = vsub_f32(v20, v19);
  v33 = vsub_f32(v26, v15).f32[0];
  v34 = (1.0 - v15.f32[1]) - v16.f32[1];
  v16.i32[0] = vadd_f32(v18, v21).i32[1];
  v35 = v9[2];
  v36 = v9[3].i32[0];
  v38 = *(v37 + 4);
  v39 = *(v37 + 12);
  v40 = v27 - v29.f32[1];
  v41 = vsub_f32(v31, v32).u32[0];
  v42 = v16.f32[0] - v28;
  v43 = v33 + ((1.0 - v34) - v30);
  v44 = v16.f32[0] + v28;
  LODWORD(v45) = vadd_f32(v31, v32).u32[0];
  if (v34 < -v30)
  {
    v46 = v33 + ((1.0 - v34) - v30);
  }

  else
  {
    v46 = v33 + (v30 + (v34 + 1.0));
  }

  if (v34 < -v30)
  {
    v47 = v44;
  }

  else
  {
    v47 = *&v41;
  }

  if (v34 < -v30)
  {
    v48 = v45;
  }

  else
  {
    v48 = v42;
  }

  if (v34 >= -v30)
  {
    v43 = v27 - v29.f32[1];
    v40 = v33 + (v30 + (v34 + 1.0));
  }

  v49 = v27 + v29.f32[1];
  v50 = v34 <= v30;
  v51 = (v30 + (1.0 - v34)) - v33;
  v52 = ((v34 + 1.0) - v30) - v33;
  if (v50)
  {
    v53 = v51;
  }

  else
  {
    v53 = v52;
  }

  if (v50)
  {
    v52 = v49;
    v49 = v51;
    v54 = v42;
  }

  else
  {
    v45 = v44;
    v54 = *&v41;
  }

  _NF = v33 < 0.0;
  if (v33 < 0.0)
  {
    v56 = v53;
  }

  else
  {
    v56 = v46;
  }

  if (!_NF)
  {
    v52 = v47;
    v49 = v48;
    v45 = v43;
    v54 = v40;
  }

  v57 = 0.5 / sqrtf(v56);
  v64[0] = v52 * v57;
  v64[1] = v49 * v57;
  v64[2] = v57 * v45;
  v64[3] = v57 * v54;
  v65 = v35;
  v66 = v36;
  v72[0] = -1;
  v67 = 3;
  v68 = v38;
  v69 = v39;
  physx::Gu::GeometryUnion::set(v72, &v67);
  v71[0] = -1;
  physx::Gu::GeometryUnion::set(v71, v5);
  v70 = 0;
  v61 = 0;
  v62 = 1065353216;
  v58 = physx::Gu::contactBoxHeightfield(v72, v71, v64, v3, &v61, v63, &v67);
  result = 0;
  if (v58)
  {
    v60 = v70;
    LODWORD(result) = processContacts(v8, v7, v70, &v67);
    if (v60)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__n128 GeomMTDCallback_ConvexConvex(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v205 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 32);
  v9 = *(a3 + 4);
  v10 = v9;
  v10.i32[3] = 0;
  v11 = *(a3 + 16);
  v12 = *(v8 + 72) + 20 * *(v8 + 71);
  v13 = COERCE_FLOAT(*(a3 + 12)) == 1.0;
  if (v9.f32[0] != 1.0 || COERCE_FLOAT(HIDWORD(*(a3 + 4))) != 1.0)
  {
    v13 = 0;
  }

  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v195 = v8 + 32;
  v197 = v12;
  v198 = *(v8 + 70);
  v15.i64[0] = *(v8 + 92);
  v15.i64[1] = *(v8 + 100);
  v16 = vmulq_f32(v10, v15);
  *v16.i8 = vpmin_f32(vdup_laneq_s32(v16, 2), *v16.i8);
  v17 = vpmin_f32(*v16.i8, *v16.i8).f32[0];
  *&v187 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, v17);
  *(&v187 + 2) = 0.025 * v17;
  if (v13)
  {
    v189 = xmmword_1E3047670;
    v190 = xmmword_1E3047680;
    v191 = xmmword_1E30476A0;
    v192 = xmmword_1E3047670;
    v193 = xmmword_1E3047680;
    v194 = xmmword_1E30476A0;
  }

  else
  {
    v18 = vrecpeq_f32(v10);
    v19 = 4;
    do
    {
      v18 = vmulq_f32(v18, vrecpsq_f32(v18, v10));
      --v19;
    }

    while (v19);
    *v20.f32 = vdup_lane_s32(*v9.f32, 0);
    v20.i64[1] = v20.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v20, v10)), *v9.f32).u32[0] & 0xFFFFFF) != 0)
    {
      v27 = vdup_lane_s32(*v11.f32, 1);
      v28 = vdup_laneq_s32(v11, 2);
      v29 = vdup_laneq_s32(v11, 3);
      v30 = vaddq_f32(v11, v11);
      v31 = vmul_lane_f32(v27, *v30.f32, 1);
      v32 = vmul_laneq_f32(v28, v30, 2);
      v33 = vmul_n_f32(v27, v30.f32[0]);
      v34 = vmul_n_f32(v28, v30.f32[0]);
      v35 = vmul_n_f32(v29, v30.f32[0]);
      v36 = vmul_lane_f32(v28, *v30.f32, 1);
      v37 = vmul_lane_f32(v29, *v30.f32, 1);
      v38 = vmul_laneq_f32(v29, v30, 2);
      __asm { FMOV            V7.2S, #1.0 }

      v43 = vsub_f32(_D7, vdup_lane_s32(vmul_f32(*v11.f32, *v30.f32), 0));
      v44 = vsub_f32(vsub_f32(_D7, v31), v32);
      v45 = vadd_f32(v33, v38);
      v46 = vsub_f32(v34, v37);
      *v30.f32 = vsub_f32(v33, v38);
      v47 = vsub_f32(v43, v32);
      v48 = vadd_f32(v36, v35);
      v49 = vadd_f32(v34, v37);
      v50 = vsub_f32(v36, v35);
      v51 = vext_s8(v49, v50, 4uLL);
      *v52.f32 = vext_s8(v44, *&vdupq_lane_s32(*v30.f32, 1), 4uLL);
      v52.i64[1] = vdup_lane_s32(v51, 0).u32[0];
      v53 = vsub_f32(v43, v31);
      *v54.f32 = vext_s8(*&vdupq_lane_s32(v45, 0), v47, 4uLL);
      v54.i64[1] = vdup_lane_s32(v51, 1).u32[0];
      *v55.f32 = vext_s8(*&vdupq_lane_s32(v46, 0), v48, 4uLL);
      v55.i64[1] = vdup_lane_s32(v53, 0).u32[0];
      v56 = vmulq_n_f32(v52, v9.f32[0]);
      v56.i32[3] = 0;
      v57 = vmulq_lane_f32(v54, *v9.f32, 1);
      v57.i32[3] = 0;
      v58 = vmulq_laneq_f32(v55, v9, 2);
      v58.i32[3] = 0;
      v59 = vmulq_lane_f32(v56, v44, 1);
      v59.i32[3] = 0;
      v60 = vmulq_n_f32(v57, *v45.i32);
      v60.i32[3] = 0;
      v61 = vmulq_n_f32(v58, *v46.i32);
      v61.i32[3] = 0;
      v21 = vaddq_f32(v61, vaddq_f32(v59, v60));
      v62 = vmulq_lane_f32(v56, *v30.f32, 1);
      v62.i32[3] = 0;
      v63 = vmulq_n_f32(v57, *v47.i32);
      v63.i32[3] = 0;
      v64 = vmulq_n_f32(v58, *v48.i32);
      v64.i32[3] = 0;
      v65 = vaddq_f32(v62, v63);
      v66 = vmulq_lane_f32(v56, v49, 1);
      v66.i32[3] = 0;
      v67 = vmulq_n_f32(v57, *v50.i32);
      v67.i32[3] = 0;
      v68 = vmulq_n_f32(v58, *v53.i32);
      v68.i32[3] = 0;
      v22 = vaddq_f32(v64, v65);
      v23 = vaddq_f32(v68, vaddq_f32(v66, v67));
      v189 = v21;
      v190 = v22;
      v191 = v23;
      v69 = vmulq_n_f32(v52, v18.f32[0]);
      v69.i32[3] = 0;
      v70 = vmulq_lane_f32(v54, *v18.f32, 1);
      v70.i32[3] = 0;
      v71 = vmulq_laneq_f32(v55, v18, 2);
      v71.i32[3] = 0;
      v72 = vmulq_lane_f32(v69, v44, 1);
      v72.i32[3] = 0;
      v73 = vmulq_n_f32(v70, *v45.i32);
      v73.i32[3] = 0;
      v74 = vmulq_n_f32(v71, *v46.i32);
      v74.i32[3] = 0;
      v24 = vaddq_f32(v74, vaddq_f32(v72, v73));
      v75 = vmulq_lane_f32(v69, *v30.f32, 1);
      v75.i32[3] = 0;
      v76 = vmulq_n_f32(v70, *v47.i32);
      v76.i32[3] = 0;
      v77 = vmulq_n_f32(v71, *v48.i32);
      v77.i32[3] = 0;
      v78 = vaddq_f32(v75, v76);
      v79 = vmulq_lane_f32(v69, v49, 1);
      v79.i32[3] = 0;
      v80 = vmulq_n_f32(v70, *v50.i32);
      v80.i32[3] = 0;
      v25 = vaddq_f32(v77, v78);
      v81 = vmulq_n_f32(v71, *v53.i32);
      v81.i32[3] = 0;
      v26 = vaddq_f32(v81, vaddq_f32(v79, v80));
    }

    else
    {
      v18.i32[3] = 0;
      v21 = vmulq_f32(v10, xmmword_1E3047670);
      v22 = vmulq_f32(v10, xmmword_1E3047680);
      v23 = vmulq_f32(v10, xmmword_1E30476A0);
      v189 = v21;
      v190 = v22;
      v191 = v23;
      v24 = vmulq_f32(v18, xmmword_1E3047670);
      v25 = vmulq_f32(v18, xmmword_1E3047680);
      v26 = vmulq_f32(v18, xmmword_1E30476A0);
    }

    v192 = v24;
    v193 = v25;
    v194 = v26;
    v82 = vmulq_f32(v21, 0);
    v82.i32[3] = 0;
    v83 = vmulq_f32(v22, 0);
    v83.i32[3] = 0;
    v84 = vmulq_f32(v23, 0);
    v84.i32[3] = 0;
    v186 = vaddq_f32(v84, vaddq_f32(v83, v82));
  }

  v85 = 0;
  v196 = *(v8 + 80);
  v86 = *(a5 + 32);
  v87 = *(a5 + 4);
  v88 = v87;
  v88.i32[3] = 0;
  if (v87.f32[0] == 1.0 && v87.f32[1] == 1.0)
  {
    v85 = v87.f32[2] == 1.0;
  }

  v89 = *(v86 + 72) + 20 * *(v86 + 71);
  v90 = *(a5 + 16);
  v175 = 0;
  v173 = 0u;
  v174 = 0u;
  v182 = v86 + 32;
  v184 = v89;
  v91.i64[0] = *(v86 + 92);
  v91.i32[2] = *(v86 + 100);
  v185 = *(v86 + 70);
  v91.i64[1] = v91.u32[2];
  v92 = vmulq_f32(v88, v91);
  *v92.i8 = vpmin_f32(vdup_laneq_s32(v92, 2), *v92.i8);
  *v92.i32 = vpmin_f32(*v92.i8, *v92.i8).f32[0];
  *&v174 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v92.i32);
  *(&v174 + 2) = 0.025 * *v92.i32;
  if (v85)
  {
    v176 = xmmword_1E3047670;
    v177 = xmmword_1E3047680;
    v178 = xmmword_1E30476A0;
    v179 = xmmword_1E3047670;
    v180 = xmmword_1E3047680;
    v181 = xmmword_1E30476A0;
  }

  else
  {
    v93 = vrecpeq_f32(v88);
    v94 = 4;
    do
    {
      v93 = vmulq_f32(v93, vrecpsq_f32(v93, v88));
      --v94;
    }

    while (v94);
    *v95.f32 = vdup_lane_s32(*v87.f32, 0);
    v95.i64[1] = v95.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v95, v88)), *v87.f32).u32[0] & 0xFFFFFF) != 0)
    {
      v102 = vdup_lane_s32(*v90.f32, 1);
      v103 = vdup_laneq_s32(v90, 2);
      v104 = vdup_laneq_s32(v90, 3);
      _Q6 = vaddq_f32(v90, v90);
      v106 = vdup_lane_s32(vmul_f32(*v90.f32, *_Q6.f32), 0);
      v107 = vmul_lane_f32(v102, *_Q6.f32, 1);
      v108 = vmul_laneq_f32(v103, _Q6, 2);
      v109 = vmul_n_f32(v102, _Q6.f32[0]);
      v110 = vmul_n_f32(v103, _Q6.f32[0]);
      v111 = vmul_n_f32(v104, _Q6.f32[0]);
      v112 = vmul_lane_f32(v103, *_Q6.f32, 1);
      v113 = vmul_lane_f32(v104, *_Q6.f32, 1);
      v114 = vmul_laneq_f32(v104, _Q6, 2);
      __asm { FMOV            V6.2S, #1.0 }

      v115 = vsub_f32(*_Q6.f32, v106);
      v116 = vsub_f32(vsub_f32(*_Q6.f32, v107), v108);
      v117 = vadd_f32(v109, v114);
      v118 = vsub_f32(v110, v113);
      *_Q6.f32 = vsub_f32(v109, v114);
      v119 = vsub_f32(v115, v108);
      v120 = vadd_f32(v112, v111);
      v121 = vadd_f32(v110, v113);
      v122 = vsub_f32(v112, v111);
      v123 = vext_s8(v121, v122, 4uLL);
      *v124.f32 = vext_s8(v116, *&vdupq_lane_s32(*_Q6.f32, 1), 4uLL);
      v124.i64[1] = vdup_lane_s32(v123, 0).u32[0];
      v125 = vsub_f32(v115, v107);
      *v126.f32 = vext_s8(*&vdupq_lane_s32(v117, 0), v119, 4uLL);
      v126.i64[1] = vdup_lane_s32(v123, 1).u32[0];
      *v127.f32 = vext_s8(*&vdupq_lane_s32(v118, 0), v120, 4uLL);
      v127.i64[1] = vdup_lane_s32(v125, 0).u32[0];
      v128 = vmulq_n_f32(v124, v87.f32[0]);
      v128.i32[3] = 0;
      v129 = vmulq_lane_f32(v126, *v87.f32, 1);
      v129.i32[3] = 0;
      v130 = vmulq_laneq_f32(v127, v87, 2);
      v130.i32[3] = 0;
      v131 = vmulq_lane_f32(v128, v116, 1);
      v131.i32[3] = 0;
      v132 = vmulq_n_f32(v129, *v117.i32);
      v132.i32[3] = 0;
      v133 = vmulq_n_f32(v130, *v118.i32);
      v133.i32[3] = 0;
      v96 = vaddq_f32(v133, vaddq_f32(v131, v132));
      v134 = vmulq_lane_f32(v128, *_Q6.f32, 1);
      v134.i32[3] = 0;
      v135 = vmulq_n_f32(v129, *v119.i32);
      v135.i32[3] = 0;
      v136 = vmulq_n_f32(v130, *v120.i32);
      v136.i32[3] = 0;
      v137 = vaddq_f32(v134, v135);
      v138 = vmulq_lane_f32(v128, v121, 1);
      v138.i32[3] = 0;
      v139 = vmulq_n_f32(v129, *v122.i32);
      v139.i32[3] = 0;
      v140 = vmulq_n_f32(v130, *v125.i32);
      v140.i32[3] = 0;
      v97 = vaddq_f32(v136, v137);
      v98 = vaddq_f32(v140, vaddq_f32(v138, v139));
      v176 = v96;
      v177 = v97;
      v178 = v98;
      v141 = vmulq_n_f32(v124, v93.f32[0]);
      v141.i32[3] = 0;
      v142 = vmulq_lane_f32(v126, *v93.f32, 1);
      v142.i32[3] = 0;
      v143 = vmulq_laneq_f32(v127, v93, 2);
      v143.i32[3] = 0;
      v144 = vmulq_lane_f32(v141, v116, 1);
      v144.i32[3] = 0;
      v145 = vmulq_n_f32(v142, *v117.i32);
      v145.i32[3] = 0;
      v146 = vmulq_n_f32(v143, *v118.i32);
      v146.i32[3] = 0;
      v99 = vaddq_f32(v146, vaddq_f32(v144, v145));
      v147 = vmulq_lane_f32(v141, *_Q6.f32, 1);
      v147.i32[3] = 0;
      v148 = vmulq_n_f32(v142, *v119.i32);
      v148.i32[3] = 0;
      v149 = vmulq_n_f32(v143, *v120.i32);
      v149.i32[3] = 0;
      v150 = vaddq_f32(v147, v148);
      v151 = vmulq_lane_f32(v141, v121, 1);
      v151.i32[3] = 0;
      v152 = vmulq_n_f32(v142, *v122.i32);
      v152.i32[3] = 0;
      v100 = vaddq_f32(v149, v150);
      v153 = vmulq_n_f32(v143, *v125.i32);
      v153.i32[3] = 0;
      v101 = vaddq_f32(v153, vaddq_f32(v151, v152));
    }

    else
    {
      v93.i32[3] = 0;
      v96 = vmulq_f32(v88, xmmword_1E3047670);
      v97 = vmulq_f32(v88, xmmword_1E3047680);
      v98 = vmulq_f32(v88, xmmword_1E30476A0);
      v176 = v96;
      v177 = v97;
      v178 = v98;
      v99 = vmulq_f32(v93, xmmword_1E3047670);
      v100 = vmulq_f32(v93, xmmword_1E3047680);
      v101 = vmulq_f32(v93, xmmword_1E30476A0);
    }

    v179 = v99;
    v180 = v100;
    v181 = v101;
    v154 = vmulq_f32(v96, 0);
    v154.i32[3] = 0;
    v155 = vmulq_f32(v97, 0);
    v155.i32[3] = 0;
    v156 = vmulq_f32(v98, 0);
    v156.i32[3] = 0;
    v173 = vaddq_f32(v156, vaddq_f32(v155, v154));
  }

  v157 = 0;
  v183 = *(v86 + 80);
  *&v158 = *(a4 + 16);
  *(&v158 + 1) = *(a4 + 24);
  v159 = *a6;
  *&v160 = *(a6 + 2);
  *(&v160 + 1) = *(a6 + 6);
  v170[0] = *a4;
  v170[1] = v158;
  v169[0] = v159;
  v169[1] = v160;
  v168 = 0uLL;
  v167 = 0;
  if (*(a3 + 4) == 1.0 && *(a3 + 8) == 1.0)
  {
    v157 = *(a3 + 12) == 1.0;
  }

  v161 = 0;
  if (v87.f32[0] == 1.0 && *(a5 + 8) == 1.0)
  {
    v161 = *(a5 + 12) == 1.0;
  }

  physx::Gu::getPCMConvexData(&v186, v157, v172);
  physx::Gu::getPCMConvexData(&v173, v161, v171);
  if (v157)
  {
    v162 = 1;
    v163 = &unk_1F5D216F0;
  }

  else
  {
    v162 = 0;
    v163 = &unk_1F5D21740;
  }

  v202[5] = &v189;
  v202[6] = &v192;
  v203 = v162;
  v202[4] = v170;
  v202[0] = v163;
  v204 = &v186;
  if (v161)
  {
    v164 = 1;
    v165 = &unk_1F5D216F0;
  }

  else
  {
    v164 = 0;
    v165 = &unk_1F5D21740;
  }

  v199[5] = &v176;
  v199[6] = &v179;
  v200 = v164;
  v199[4] = v169;
  v199[0] = v165;
  v201 = &v173;
  if (physx::Gu::computeMTD(v172, v171, v202, v199, &v167, &v168))
  {
    *a2 = fmaxf(v167.f32[0], 0.0);
    result = v168;
    *a1 = v168.n128_u64[0];
    *(a1 + 8) = result.n128_u32[2];
  }

  return result;
}

uint64_t GeomMTDCallback_ConvexMesh(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v22[0] = -1;
  physx::Gu::GeometryUnion::set(v22, v11);
  v21[0] = NAN;
  physx::Gu::GeometryUnion::set(v21, v5);
  v18 = 0;
  v17 = 0;
  v20 = 0;
  v15 = 0;
  v16 = 1065353216;
  v12 = physx::Gu::contactConvexMesh(v22, v21, v7, v3, &v15, &v17, v19);
  result = 0;
  if (v12)
  {
    v14 = v20;
    LODWORD(result) = processContacts(v10, v9, v20, v19);
    if (v14)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t GeomMTDCallback_ConvexHeightField(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v22 = *MEMORY[0x1E69E9840];
  v21[0] = -1;
  physx::Gu::GeometryUnion::set(v21, v11);
  v20[0] = -1;
  physx::Gu::GeometryUnion::set(v20, v5);
  v19 = 0;
  v15 = 0;
  v16 = 1065353216;
  v12 = physx::Gu::contactConvexHeightfield(v21, v20, v7, v3, &v15, v17, v18);
  result = 0;
  if (v12)
  {
    v14 = v19;
    LODWORD(result) = processContacts(v10, v9, v19, v18);
    if (v14)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sweepBox_HeightFieldGeom_Precise(physx::PxGeometry const&,physx::PxTransform const&,physx::PxBoxGeometry const&,physx::PxTransform const&,physx::Gu::Box const&,physx::PxVec3 const&,float,physx::PxSweepHit &,physx::PxFlags<physx::PxHitFlag::Enum,unsigned short>,float)::LocalReport::onEvent(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  if (a2)
  {
    v5 = a2;
    do
    {
      v7 = *a3++;
      v6 = v7;
      physx::Gu::HeightFieldUtil::getTriangle(*(a1 + 8), *(a1 + 16), v26, 0, 0, v7, 1, 1);
      v20 = 0uLL;
      v21 = -1;
      v22 = 0;
      *v24 = 0;
      *&v24[8] = 0;
      v23 = 0;
      *&v24[16] = 2139095039;
      v8 = *(a1 + 108);
      v19 = *(a1 + 112);
      if (sweepBoxVsTriangles(1, v26, a1 + 36, (a1 + 96), &v20, &v19, *(a1 + 114), 0, v8, v9, v10, v11, v12, v13, v14, v15))
      {
        v16 = *(a1 + 24);
        if (*&v24[16] < *(v16 + 48))
        {
          v17 = v20;
          *(v16 + 16) = v21;
          *v16 = v17;
          *(v16 + 20) = v22;
          *(v16 + 24) = v23;
          *(v16 + 32) = *v24;
          *(v16 + 36) = *&v24[4];
          *(v16 + 52) = v25;
          *(*(a1 + 24) + 16) = v6;
          *(a1 + 32) = 1;
        }
      }

      --v5;
    }

    while (v5);
  }

  return 1;
}

uint64_t physx::Gu::MeshDataBase::allocateVertices(physx::Gu::MeshDataBase *this, int a2)
{
  if (a2 == -1)
  {
    result = 0;
  }

  else
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * (a2 + 1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMeshData.h", 148);
  }

  *(this + 3) = result;
  *(this + 4) = a2;
  return result;
}

uint64_t physx::Gu::TriangleMeshData::allocateTriangles(physx::Gu::TriangleMeshData *this, unsigned int a2, char a3, int a4)
{
  v7 = 4;
  if (!*(this + 9) && (a3 & 1) == 0)
  {
    *(this + 12) |= 2u;
    v7 = 2;
  }

  if (a2)
  {
    v8 = 3 * v7 * a2;
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v8, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMeshData.h", 228);
    *(this + 14) = result;
    if (a4)
    {
      v10 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v8, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMeshData.h", 230);
      v11 = *(this + 14);
LABEL_8:
      *(this + 10) = v10;
      result = v11;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
    result = 0;
    *(this + 14) = 0;
    if (a4)
    {
      goto LABEL_8;
    }
  }

  *(this + 26) = a2;
  return result;
}

void physx::Gu::RTreeTriangleData::~RTreeTriangleData(physx::Gu::RTreeTriangleData *this)
{
  *this = &unk_1F5D215B0;
  physx::Gu::RTree::~RTree((this + 144));

  physx::Gu::TriangleMeshData::~TriangleMeshData(this);
}

{
  *this = &unk_1F5D215B0;
  physx::Gu::RTree::~RTree((this + 144));
  physx::Gu::TriangleMeshData::~TriangleMeshData(this);
  v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v2();
}

void physx::Gu::TriangleMeshData::~TriangleMeshData(physx::Gu::TriangleMeshData *this)
{
  physx::Gu::TriangleMeshData::~TriangleMeshData(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

{
  *this = &unk_1F5D21618;
  if (*(this + 14))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 16))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 16) = 0;
  }

  if (*(this + 15))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 15) = 0;
  }

  v2 = *(this + 17);
  if (v2)
  {
    physx::Gu::BV32Tree::release(*(this + 17));
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
    *(this + 17) = 0;
  }

  physx::Gu::MeshDataBase::~MeshDataBase(this);
}

void physx::Gu::MeshDataBase::~MeshDataBase(physx::Gu::MeshDataBase *this)
{
  physx::Gu::MeshDataBase::~MeshDataBase(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

{
  *this = &unk_1F5D21638;
  if (*(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 8))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 8) = 0;
  }

  if (*(this + 9))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 9) = 0;
  }

  if (*(this + 10))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 11))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 11) = 0;
  }

  if (*(this + 12))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *(this + 12) = 0;
  }
}

void physx::Gu::RTree::~RTree(physx::Gu::RTree *this)
{
  if ((*(this + 84) & 1) == 0)
  {
    v2 = *(this + 11);
    if (v2)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2 - *(v2 - 8));
      *(this + 11) = 0;
    }
  }
}

void physx::Gu::BV4TriangleData::~BV4TriangleData(physx::Gu::BV4TriangleData *this)
{
  physx::Gu::BV4TriangleData::~BV4TriangleData(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

{
  *this = &unk_1F5D21658;
  v2 = physx::Gu::BV4Tree::release((this + 192));
  if (*(this + 20))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(v2);
  }

  *(this + 20) = 0;

  physx::Gu::TriangleMeshData::~TriangleMeshData(this);
}

uint64_t physx::shdfnd::ReflectionAllocator<unsigned char>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v8 = "static const char *physx::shdfnd::ReflectionAllocator<unsigned char>::getName() [T = unsigned char]";
  }

  else
  {
    v8 = "<allocation names disabled>";
  }

  v9 = *(*(v7 + 24) + 16);

  return v9(v7 + 24, a2, v8, a3, a4);
}

uint64_t processContacts(float32x2_t *a1, float *a2, unsigned int a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    v5 = a4 + 8;
    v6 = 0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0;
    do
    {
      v14.i32[0] = *(v5 - 8);
      v10 = (v5 - 4);
      v12 = *v5;
      v11.i32[0] = *(v5 + 4);
      v5 += 64;
      v13 = v11.f32[0] * v12;
      v14.i32[1] = v11.i32[0];
      if (v7 >= v13)
      {
        v7 = v13;
      }

      v11.i32[1] = *v10;
      v15 = vmul_f32(v14, v11);
      v9 = vbsl_s8(vcgt_f32(v15, v9), v9, v15);
      v6 = vbsl_s8(vcgt_f32(v6, v15), v6, v15);
      if (v8 <= v13)
      {
        v8 = v13;
      }

      --v4;
    }

    while (v4);
    v16 = vceqz_f32(v9);
    if (v7 == 0.0)
    {
      v17 = v8;
    }

    else
    {
      v17 = v7;
    }

    v18 = vceqz_f32(v6);
    if (v8 != 0.0)
    {
      v7 = v8;
    }

    v19 = v7 + v17;
    v20 = vmul_f32(vadd_f32(vbsl_s8(v18, v9, v6), vbsl_s8(v16, v6, v9)), 0x3F0000003F000000);
    v21 = v19 * 0.5;
    v22 = (COERCE_FLOAT(vmul_f32(v20, v20).i32[1]) + (v20.f32[0] * v20.f32[0])) + (v21 * v21);
    if (v22 < 1.0e-10)
    {
      return 0;
    }

    v24 = v22 <= 0.0;
    v25 = sqrtf(v22);
    if (v24)
    {
      v26 = 0;
      v27 = 0.0;
    }

    else
    {
      v26 = vmul_n_f32(v20, 1.0 / v25);
      v27 = v21 * (1.0 / v25);
    }

    *a1 = vneg_f32(v26);
    a1[1].f32[0] = -v27;
    *a2 = v25;
  }

  return 1;
}

uint64_t physx::Gu::SupportLocalImpl<physx::Gu::ConvexHullNoScaleV>::doSupport(uint64_t result, float32x4_t *a2, float32x2_t *a3, float32x2_t *a4)
{
  v7 = *(result + 64);
  if (*(v7 + 152))
  {
    v8 = physx::Gu::ConvexHullV::hillClimbing(*(result + 64), a2);
    v9 = vnegq_f32(*a2);
    v9.i32[3] = 0;
    v30 = v9;
    result = physx::Gu::ConvexHullV::hillClimbing(v7, &v30);
    v10 = *(v7 + 160);
    v11 = *(v10 + 12 * v8);
    v11.i32[3] = 0;
    v12 = *(v10 + 12 * result);
    v12.i32[3] = 0;
    v13 = vmulq_f32(*a2, v12);
    v13.i64[0] = vpaddq_f32(v13, v13).u64[0];
    *a3 = vpadd_f32(*v13.f32, *v13.f32);
    v14 = vmulq_f32(v11, *a2);
    v14.i64[0] = vpaddq_f32(v14, v14).u64[0];
    v15 = vpadd_f32(*v14.f32, *v14.f32);
  }

  else
  {
    v16 = *(v7 + 160);
    v17 = *v16;
    v17.i32[3] = 0;
    v18 = vmulq_f32(v17, *a2);
    v18.i64[0] = vpaddq_f32(v18, v18).u64[0];
    v15 = vpadd_f32(*v18.f32, *v18.f32);
    v19 = *(v7 + 168);
    if (v19 < 2)
    {
      v22 = v15;
    }

    else
    {
      v20 = v19 - 1;
      _X9 = (v16 + 140);
      v22 = v15;
      do
      {
        __asm { PRFM            #0, [X9] }

        v28 = _X9[-8];
        v28.i32[3] = 0;
        v29 = vmulq_f32(*a2, v28);
        v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
        *v29.f32 = vpadd_f32(*v29.f32, *v29.f32);
        v15 = vmax_f32(*v29.f32, v15);
        v22 = vmin_f32(*v29.f32, v22);
        _X9 = (_X9 + 12);
        --v20;
      }

      while (v20);
    }

    *a3 = v22;
  }

  *a4 = v15;
  return result;
}

__n128 physx::Gu::SupportLocalImpl<physx::Gu::ConvexHullNoScaleV>::populateVerts(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, __n128 *a5)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v6 = *a2++;
      result = *(a4 + 12 * v6);
      result.n128_u32[3] = 0;
      *a5++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t physx::Gu::ConvexHullV::supportVertexIndex(uint64_t a1, float32x4_t *a2)
{
  if (*(a1 + 152))
  {
    return physx::Gu::ConvexHullV::hillClimbing(a1, a2);
  }

  v4 = *(a1 + 168);
  if (v4 < 2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  LODWORD(v5) = HIDWORD(a2->i64[0]);
  v6 = COERCE_FLOAT(a2->i64[1]);
  v7 = *(a1 + 160);
  v9 = v7[1];
  v8 = v7[2];
  v11 = *v7;
  v10 = v7 + 5;
  v12 = ((v5 * v9) + (v11 * COERCE_FLOAT(*a2))) + (v8 * v6);
  for (i = 1; i != v4; ++i)
  {
    v14 = (v5 * *(v10 - 1)) + (*(v10 - 2) * COERCE_FLOAT(*a2));
    v15 = *v10;
    v10 += 3;
    v16 = v14 + (v15 * v6);
    if (v16 <= v12)
    {
      result = result;
    }

    else
    {
      result = i;
    }

    if (v16 > v12)
    {
      v12 = v16;
    }
  }

  return result;
}

uint64_t physx::Gu::ConvexHullV::hillClimbing(uint64_t a1, float32x4_t *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 152);
  v3 = v2[3];
  v4 = v2[4];
  memset(v35, 0, sizeof(v35));
  v5 = *a2;
  v6 = *a2;
  v33 = a2->i64[0];
  v7 = &v34;
  v34 = v5.i32[2];
  v8 = *v2;
  v9 = v6 & 0x7FFFFFFF;
  v10 = vabs_f32(vext_s8(*v5.f32, *&vextq_s8(v5, v5, 8uLL), 4uLL));
  if (v10.i32[0] > v9 && v10.i32[0] > v10.i32[1])
  {
    v12 = 1;
    v13 = &v33;
  }

  else if (v10.i32[1] <= v9)
  {
    v12 = 0;
    v13 = &v34;
    v7 = &v33 + 1;
  }

  else
  {
    v12 = 2;
    v7 = &v33;
    v13 = &v33 + 1;
  }

  v14 = 1.0 / fabsf(*(&v33 + v12));
  HIDWORD(v15) = v12;
  LODWORD(v15) = *(&v33 + v12);
  v16 = vcvts_n_f32_u32(v8 - 1, 1uLL);
  v17 = *(v2[1] + ((v16 * ((v14 * *v13) + 1.0)) + 0.5) + (((v16 * ((*v7 * v14) + 1.0)) + 0.5) + (v15 >> 31) * v8) * v8);
  v18 = *(a1 + 160);
  v19 = *(v18 + 12 * v17);
  v19.i32[3] = 0;
  v20 = vmulq_f32(v5, v19);
  v20.i64[0] = vpaddq_f32(v20, v20).u64[0];
  v21 = vpadd_f32(*v20.f32, *v20.f32);
  do
  {
    result = v17;
    v23 = (v3 + 4 * v17);
    v24 = *v23;
    if (!*v23)
    {
      break;
    }

    v25 = (v4 + v23[1]);
    v17 = result;
    do
    {
      v27 = *v25++;
      v26 = v27;
      v28 = *(v18 + 12 * v27);
      v28.i32[3] = 0;
      v29 = vmulq_f32(v5, v28);
      v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
      v30 = vpadd_f32(*v29.f32, *v29.f32);
      if (vcgt_f32(v30, v21).u8[0])
      {
        v31 = 1 << (v26 & 0x1F);
        v32 = *(v35 + (v26 >> 5));
        if ((v32 & v31) == 0)
        {
          *(v35 + (v26 >> 5)) = v32 | v31;
          v21 = v30;
          v17 = v26;
        }
      }

      --v24;
    }

    while (v24);
  }

  while (v17 != result);
  return result;
}

double physx::Gu::SupportLocalImpl<physx::Gu::ConvexHullV>::doSupport(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 64);
  v3 = vmulq_f32(*a2, v2[3]);
  v3.i64[0] = vpaddq_f32(v3, v3).u64[0];
  v4 = vmulq_f32(*a2, v2[4]);
  v4.i64[0] = vpaddq_f32(v4, v4).u64[0];
  v5 = vmulq_f32(*a2, v2[5]);
  v5.i64[0] = vpaddq_f32(v5, v5).u64[0];
  *v3.f32 = vext_s8(vpadd_f32(*v3.f32, *v3.f32), vpadd_f32(*v4.f32, *v4.f32), 4uLL);
  v3.i64[1] = vpadd_f32(*v5.f32, *v5.f32).u32[0];
  v11 = v3;
  v6 = *(v2[10].i64[0] + 12 * physx::Gu::ConvexHullV::supportVertexIndex(v2, &v11));
  v7 = vmulq_n_f32(v2[3], v6.f32[0]);
  v7.i32[3] = 0;
  v8 = vmulq_lane_f32(v2[4], *v6.f32, 1);
  v8.i32[3] = 0;
  v9 = vmulq_laneq_f32(v2[5], v6, 2);
  v9.i32[3] = 0;
  *&result = vaddq_f32(vaddq_f32(v7, v8), v9).u64[0];
  return result;
}

uint64_t physx::Gu::SupportLocalImpl<physx::Gu::ConvexHullV>::doSupport(uint64_t result, float32x4_t *a2, float32x2_t *a3, float32x2_t *a4, double a5, double a6, double a7, double a8, double a9)
{
  v11 = *(result + 64);
  v12 = vmulq_f32(*a2, v11[3]);
  v12.i64[0] = vpaddq_f32(v12, v12).u64[0];
  _D1 = vpadd_f32(*v12.f32, *v12.f32);
  v14 = vmulq_f32(*a2, v11[4]);
  v14.i64[0] = vpaddq_f32(v14, v14).u64[0];
  v15 = vmulq_f32(*a2, v11[5]);
  v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
  LODWORD(v16) = vpadd_f32(*v15.f32, *v15.f32).u32[0];
  *_Q0.f32 = vext_s8(_D1, vpadd_f32(*v14.f32, *v14.f32), 4uLL);
  _Q0.i64[1] = LODWORD(v16);
  v50 = _Q0;
  if (v11[9].i64[1])
  {
    v19 = physx::Gu::ConvexHullV::hillClimbing(v11, &v50);
    v20 = vnegq_f32(v50);
    v20.i32[3] = 0;
    v49 = v20;
    result = physx::Gu::ConvexHullV::hillClimbing(v11, &v49);
    v21 = v11[10].i64[0];
    v22 = *(v21 + 12 * v19);
    v23 = v11[3];
    v24 = v11[4];
    v25 = vmulq_n_f32(v23, v22.f32[0]);
    v25.i32[3] = 0;
    v26 = vmulq_lane_f32(v24, *v22.f32, 1);
    v26.i32[3] = 0;
    v27 = v11[5];
    v28 = vmulq_laneq_f32(v27, v22, 2);
    v28.i32[3] = 0;
    v29 = vaddq_f32(v25, v26);
    v30 = *(v21 + 12 * result);
    v31 = vmulq_n_f32(v23, v30.f32[0]);
    v31.i32[3] = 0;
    v32 = vmulq_lane_f32(v24, *v30.f32, 1);
    v32.i32[3] = 0;
    v33 = vmulq_laneq_f32(v27, v30, 2);
    v33.i32[3] = 0;
    v34 = vmulq_f32(*a2, vaddq_f32(v33, vaddq_f32(v31, v32)));
    v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
    *a3 = vpadd_f32(*v34.f32, *v34.f32);
    v35 = vmulq_f32(vaddq_f32(v29, v28), *a2);
    v35.i64[0] = vpaddq_f32(v35, v35).u64[0];
    v36 = vpadd_f32(*v35.f32, *v35.f32);
  }

  else
  {
    v37 = v11[10].i64[0];
    _S2 = *(v37 + 8);
    __asm { FMLA            S1, S2, V0.S[2] }

    v43 = v11[10].u8[8];
    if (v43 < 2)
    {
      LODWORD(a9) = _D1.i32[0];
    }

    else
    {
      v44 = v43 - 1;
      v45 = (v37 + 20);
      LODWORD(a9) = _D1.i32[0];
      do
      {
        v46 = (_Q0.f32[1] * *(v45 - 1)) + (*(v45 - 2) * _Q0.f32[0]);
        v47 = *v45;
        v45 += 3;
        v48 = v46 + (v47 * v16);
        if (v48 > *_D1.i32)
        {
          *_D1.i32 = v48;
        }

        if (v48 < *&a9)
        {
          *&a9 = v48;
        }

        --v44;
      }

      while (v44);
    }

    *a3 = vdup_lane_s32(*&a9, 0);
    v36 = vdup_lane_s32(_D1, 0);
  }

  *a4 = v36;
  return result;
}

float32x4_t physx::Gu::SupportLocalImpl<physx::Gu::ConvexHullV>::populateVerts(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, float32x4_t *a5)
{
  if (a3)
  {
    v5 = *(a1 + 64);
    v6 = a3;
    do
    {
      v7 = *a2++;
      v8 = *(a4 + 12 * v7);
      v9 = vmulq_n_f32(v5[3], v8.f32[0]);
      v9.i32[3] = 0;
      v10 = vmulq_lane_f32(v5[4], *v8.f32, 1);
      v10.i32[3] = 0;
      v11 = vmulq_laneq_f32(v5[5], v8, 2);
      v11.i32[3] = 0;
      result = vaddq_f32(vaddq_f32(v9, v10), v11);
      *a5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

BOOL PxcTestAxis(float *a1, float *a2, float *a3, float *a4)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = ((a2[10] * v4) + (a2[9] * *a1)) + (a2[11] * v5);
  v7 = ((a2[13] * fabsf(((v4 * a2[4]) + (a2[3] * *a1)) + (a2[5] * v5))) + (fabsf(((v4 * a2[1]) + (*a2 * *a1)) + (a2[2] * v5)) * a2[12])) + (fabsf(((v4 * a2[7]) + (a2[6] * *a1)) + (a2[8] * v5)) * a2[14]);
  v8 = v6 - v7;
  v9 = v6 + v7;
  v10 = ((v4 * a3[10]) + (a3[9] * *a1)) + (a3[11] * v5);
  v11 = ((a3[13] * fabsf(((v4 * a3[4]) + (a3[3] * *a1)) + (a3[5] * v5))) + (fabsf(((v4 * a3[1]) + (*a3 * *a1)) + (a3[2] * v5)) * a3[12])) + (fabsf(((v4 * a3[7]) + (a3[6] * *a1)) + (a3[8] * v5)) * a3[14]);
  v12 = v10 - v11;
  v13 = v10 + v11;
  result = v13 >= v8 && v9 >= v12;
  if (result)
  {
    v15 = v9 - v12;
    v16 = v13 - v8;
    if (v15 >= v16)
    {
      v15 = v16;
    }

    *a4 = v15;
  }

  return result;
}

double physx::Gu::SupportLocalImpl<physx::Gu::BoxV>::doSupport(uint64_t a1, float32x4_t *a2)
{
  v2 = *(*(a1 + 64) + 48);
  v3 = vnegq_f32(v2);
  v3.i32[3] = 0;
  *&result = vbslq_s8(vcgtzq_f32(*a2), v2, v3).u64[0];
  return result;
}

float32x2_t physx::Gu::SupportLocalImpl<physx::Gu::BoxV>::doSupport(uint64_t a1, float32x4_t *a2, float32x2_t *a3, void *a4)
{
  v4 = *(*(a1 + 64) + 48);
  v5 = vnegq_f32(v4);
  v5.i32[3] = 0;
  v6 = vmulq_f32(*a2, vbslq_s8(vcgtzq_f32(*a2), v4, v5));
  v6.i64[0] = vpaddq_f32(v6, v6).u64[0];
  *v6.f32 = vpadd_f32(*v6.f32, *v6.f32);
  *a4 = v6.i64[0];
  result = vneg_f32(*v6.f32);
  *a3 = result;
  return result;
}

__n128 physx::Gu::SupportLocalImpl<physx::Gu::BoxV>::populateVerts(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, __n128 *a5)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v6 = *a2++;
      result = *(a4 + 12 * v6);
      result.n128_u32[3] = 0;
      *a5++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void *physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    v4 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v2 = (v5 | HIWORD(v5)) + 1;
  }

  v6 = *(a1 + 32);
  v7 = (*(a1 + 40) * v2);
  v8 = ((-4 * (v2 + v7)) & 0xC) + 4 * (v2 + v7);
  if (v8 + 8 * v7)
  {
    v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v8 + 8 * v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[4 * v2];
  v11 = &v9[v8];
  result = memset(v9, 255, 4 * v2);
  if (*(a1 + 52))
  {
    v13 = 0;
    do
    {
      v14 = *(*(a1 + 8) + 8 * v13);
      v15 = (~(v14 << 32) + v14) ^ ((~(v14 << 32) + v14) >> 22);
      v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
      v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
      LODWORD(v17) = (v2 - 1) & ((v17 >> 31) ^ v17);
      *&v10[4 * v13] = *&v9[4 * v17];
      *&v9[4 * v17] = v13;
      *&v11[8 * v13++] = v14;
    }

    while (v13 < *(a1 + 52));
  }

  if (*a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 32) = v7;
  *(a1 + 36) = v2;
  if (*(a1 + 44) == -1)
  {
    *(a1 + 44) = v6;
  }

  return result;
}

uint64_t physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::create(int32x2_t *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4].u32[1];
  if (!v5)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v6 = ~(*a2 << 32) + *a2;
  v7 = 9 * (((v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13)) ^ (((v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = (v5 - 1) & ((v8 >> 31) ^ v8);
  v10 = *(*&a1[3] + 4 * v9);
  if (v10 == -1)
  {
LABEL_8:
    *a3 = 0;
    if (a1[6].i32[1] == a1[4].i32[0])
    {
      if (v5)
      {
        v12 = 2 * v5;
      }

      else
      {
        v12 = 16;
      }

      if (v5 < v12)
      {
        physx::shdfnd::internal::HashBase<physx::Gu::TriangleMesh *,physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::internal::HashSetBase<physx::Gu::TriangleMesh *,physx::shdfnd::Hash<physx::Gu::TriangleMesh *>,physx::shdfnd::NonTrackingAllocator,true>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1, v12);
        v5 = a1[4].u32[1];
      }

      v13 = ~(*a2 << 32) + *a2;
      v14 = 9 * (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) ^ (((v13 ^ (v13 >> 22)) + ~((v13 ^ (v13 >> 22)) << 13)) >> 8));
      v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
      v9 = (v5 - 1) & ((v15 >> 31) ^ v15);
    }

    v16 = a1[5].u32[1];
    a1[5].i32[1] = v16 + 1;
    v17 = a1[3];
    v18 = a1[1];
    *(*&a1[2] + 4 * v16) = *(*&v17 + 4 * v9);
    *(*&v17 + 4 * v9) = v16;
    a1[6] = vadd_s32(a1[6], 0x100000001);
    return *&v18 + 8 * v16;
  }

  v11 = a1[1];
  while (*(*&v11 + 8 * v10) != *a2)
  {
    v10 = *(*&a1[2] + 4 * v10);
    if (v10 == -1)
    {
      goto LABEL_8;
    }
  }

  result = *&v11 + 8 * v10;
  *a3 = 1;
  return result;
}

uint64_t physx::shdfnd::Array<physx::GuMeshFactoryListener *,physx::shdfnd::ReflectionAllocator<physx::GuMeshFactoryListener *>>::growAndPushBack(uint64_t a1, void *a2)
{
  v4 = *(a1 + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::GuMeshFactoryListener *>::getName() [T = physx::GuMeshFactoryListener *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    v8 = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 8);
  v10 = (v8 + 8 * v9);
  if (v9)
  {
    v11 = *a1;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(a1 + 12) & 0x80000000) == 0 && *a1)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    v9 = *(a1 + 8);
  }

  *a1 = v8;
  *(a1 + 8) = v9 + 1;
  *(a1 + 12) = v5;
  return v8 + 8 * v9;
}

double physx::Gu::LocalConvex<physx::Gu::CapsuleV>::support(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 8);
  v3 = v2[3];
  v4 = v2[4];
  v5 = vmulq_f32(v3, *a2);
  v5.i64[0] = vpaddq_f32(v5, v5).u64[0];
  v6 = vmulq_f32(*a2, v4);
  v6.i64[0] = vpaddq_f32(v6, v6).u64[0];
  *&result = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v5.f32, *v5.f32), vpadd_f32(*v6.f32, *v6.f32)), 0)), v3, v4).u64[0];
  return result;
}

double physx::Gu::LocalConvex<physx::Gu::CapsuleV>::support(uint64_t a1, float32x4_t *a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  v4 = vmulq_f32(v3[3], *a2);
  v4.i64[0] = vpaddq_f32(v4, v4).u64[0];
  v5 = vmulq_f32(*a2, v3[4]);
  v5.i64[0] = vpaddq_f32(v5, v5).u64[0];
  *v5.f32 = vand_s8(vcgt_f32(vpadd_f32(*v4.f32, *v4.f32), vpadd_f32(*v5.f32, *v5.f32)), 0x100000001);
  *a3 = v5.i32[0];
  *&result = vbslq_s8(vcltzq_s32(vshlq_n_s32(vdupq_lane_s32(*v5.f32, 0), 0x1FuLL)), v3[3], v3[4]).u64[0];
  return result;
}

double physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::supportPoint(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2[10].i64[0] + 12 * a2);
  v4 = vmulq_n_f32(v2[3], v3.f32[0]);
  v4.i32[3] = 0;
  v5 = vmulq_lane_f32(v2[4], *v3.f32, 1);
  v5.i32[3] = 0;
  v6 = vmulq_laneq_f32(v2[5], v3, 2);
  v6.i32[3] = 0;
  *&result = vaddq_f32(vaddq_f32(v4, v5), v6).u64[0];
  return result;
}

double physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 8);
  v3 = vmulq_f32(*a2, v2[3]);
  v3.i64[0] = vpaddq_f32(v3, v3).u64[0];
  v4 = vmulq_f32(*a2, v2[4]);
  v4.i64[0] = vpaddq_f32(v4, v4).u64[0];
  v5 = vmulq_f32(*a2, v2[5]);
  v5.i64[0] = vpaddq_f32(v5, v5).u64[0];
  *v3.f32 = vext_s8(vpadd_f32(*v3.f32, *v3.f32), vpadd_f32(*v4.f32, *v4.f32), 4uLL);
  v3.i64[1] = vpadd_f32(*v5.f32, *v5.f32).u32[0];
  v11 = v3;
  v6 = *(v2[10].i64[0] + 12 * physx::Gu::ConvexHullV::supportVertexIndex(v2, &v11));
  v7 = vmulq_n_f32(v2[3], v6.f32[0]);
  v7.i32[3] = 0;
  v8 = vmulq_lane_f32(v2[4], *v6.f32, 1);
  v8.i32[3] = 0;
  v9 = vmulq_laneq_f32(v2[5], v6, 2);
  v9.i32[3] = 0;
  *&result = vaddq_f32(vaddq_f32(v7, v8), v9).u64[0];
  return result;
}

double physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(uint64_t a1, float32x4_t *a2, _DWORD *a3)
{
  v4 = *(a1 + 8);
  v5 = vmulq_f32(*a2, v4[3]);
  v5.i64[0] = vpaddq_f32(v5, v5).u64[0];
  v6 = vmulq_f32(*a2, v4[4]);
  v6.i64[0] = vpaddq_f32(v6, v6).u64[0];
  v7 = vmulq_f32(*a2, v4[5]);
  v7.i64[0] = vpaddq_f32(v7, v7).u64[0];
  *v5.f32 = vext_s8(vpadd_f32(*v5.f32, *v5.f32), vpadd_f32(*v6.f32, *v6.f32), 4uLL);
  v5.i64[1] = vpadd_f32(*v7.f32, *v7.f32).u32[0];
  v14 = v5;
  v8 = physx::Gu::ConvexHullV::supportVertexIndex(v4, &v14);
  *a3 = v8;
  v9 = *(v4[10].i64[0] + 12 * v8);
  v10 = vmulq_n_f32(v4[3], v9.f32[0]);
  v10.i32[3] = 0;
  v11 = vmulq_lane_f32(v4[4], *v9.f32, 1);
  v11.i32[3] = 0;
  v12 = vmulq_laneq_f32(v4[5], v9, 2);
  v12.i32[3] = 0;
  *&result = vaddq_f32(vaddq_f32(v10, v11), v12).u64[0];
  return result;
}

BOOL GeomOverlapCallback_SphereSphere(uint64_t a1, float *a2, uint64_t a3, float *a4)
{
  v4 = a4[4] - a2[4];
  v5 = a4[5] - a2[5];
  v6 = a4[6] - a2[6];
  v7 = *(a1 + 4) + *(a3 + 4);
  return (((v5 * v5) + (v4 * v4)) + (v6 * v6)) <= (v7 * v7);
}

BOOL GeomOverlapCallback_SpherePlane(uint64_t a1, float *a2, uint64_t a3, float *a4)
{
  v5 = a4[2];
  v4 = a4[3];
  v6 = v4 + v4;
  v7 = *a4;
  v8 = a4[1];
  v9 = ((v4 * (v4 + v4)) + -1.0) + (v7 * (v7 + v7));
  return (((((((v7 + v7) * v8) + (v5 * v6)) * a2[5]) + (a2[4] * v9)) + (a2[6] * (((v7 + v7) * v5) - (v8 * v6)))) - (((a4[5] * (((v7 + v7) * v8) + (v5 * v6))) + (a4[4] * v9)) + (a4[6] * (((v7 + v7) * v5) - (v8 * v6))))) <= *(a1 + 4);
}

BOOL GeomOverlapCallback_SphereCapsule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a4;
  v5 = *(a4 + 12);
  v6 = *(a3 + 8);
  v7 = (((v5 * (v5 + v5)) + -1.0) + (v4 * (v4 + v4))) * v6;
  v8 = -v7 - v7;
  _D7 = *(a4 + 4);
  v10 = -_D7.f32[0];
  v11 = vmul_n_f32(_D7, v4 + v4);
  _D7.i32[0] = vdup_lane_s32(_D7, 1).u32[0];
  _D7.f32[1] = v10;
  v12 = vmul_n_f32(vmla_n_f32(v11, _D7, v5 + v5), v6);
  v13 = vsub_f32(vneg_f32(v12), v12);
  _D3 = vsub_f32(vsub_f32(*(a2 + 20), *(a4 + 20)), v12);
  _D7.i32[0] = v13.i32[1];
  __asm { FMLA            S6, S7, V3.S[1] }

  if (_S6 > 0.0)
  {
    v20 = (vmul_f32(v13, v13).f32[0] + (v8 * v8)) + (v13.f32[1] * v13.f32[1]);
    if (_S6 >= v20)
    {
      _D3 = vsub_f32(_D3, v13);
    }

    else
    {
      _D3 = vsub_f32(_D3, vmul_n_f32(v13, _S6 / v20));
    }
  }

  v21 = *(a1 + 4) + *(a3 + 4);
  _S2 = _D3.i32[1];
  __asm { FMLA            S1, S2, V3.S[1] }

  return _S1 <= (v21 * v21);
}

BOOL GeomOverlapCallback_SphereBox(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t *a4)
{
  v4 = vdup_lane_s32(*a4, 1);
  v5 = vdup_laneq_s32(*a4->i8, 2);
  v6 = vdup_laneq_s32(*a4->i8, 3);
  _Q4 = vaddq_f32(*a4->i8, *a4->i8);
  v8 = vdup_lane_s32(vmul_f32(*a4, *_Q4.f32), 0);
  v9 = vmul_lane_f32(v4, *_Q4.f32, 1);
  v10 = vmul_laneq_f32(v5, _Q4, 2);
  v11 = vmul_n_f32(v4, _Q4.f32[0]);
  v12 = vmul_n_f32(v5, _Q4.f32[0]);
  v13 = vmul_n_f32(v6, _Q4.f32[0]);
  v14 = vmul_lane_f32(v5, *_Q4.f32, 1);
  v15 = vmul_lane_f32(v6, *_Q4.f32, 1);
  v16 = vmul_laneq_f32(v6, _Q4, 2);
  __asm { FMOV            V4.2S, #1.0 }

  v21 = vsub_f32(*_Q4.f32, v8);
  LODWORD(v22) = vsub_f32(v12, v15).u32[0];
  LODWORD(v23) = vadd_f32(v14, v13).u32[0];
  v28[0] = (1.0 - v9.f32[1]) - v10.f32[1];
  LODWORD(v28[1]) = vadd_f32(v11, v16).u32[0];
  HIDWORD(v22) = vsub_f32(v11, v16).i32[1];
  v29 = v22;
  v30 = vsub_f32(v21, v10).u32[0];
  HIDWORD(v23) = vadd_f32(v12, v15).i32[1];
  *&v24 = a4[2];
  DWORD2(v24) = a4[3].i32[0];
  HIDWORD(v24) = *(a3 + 4);
  v31 = v23;
  v32 = vzip1_s32(vsub_f32(v14, v13), vsub_f32(v21, v9));
  v33 = v24;
  v34 = *(a3 + 8);
  *&v25 = *(a2 + 16);
  DWORD2(v25) = *(a2 + 24);
  HIDWORD(v25) = *(a1 + 4);
  v27 = v25;
  return physx::Gu::intersectSphereBox(&v27, v28, a3);
}

BOOL GeomOverlapCallback_SphereConvex(uint64_t a1, float *a2, uint64_t a3, float *a4, float *a5, int8x8_t a6)
{
  v145 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = 0;
  if (a5)
  {
    v9 = 1.0;
    if (*(a5 + 6) == 2)
    {
      v8 = *a5;
      v9 = a5[2];
    }
  }

  else
  {
    v9 = 1.0;
  }

  a6.i32[0] = *(a1 + 4);
  v10 = *(a3 + 4);
  v11 = v10;
  v11.i32[3] = 0;
  v12 = *(a3 + 16);
  v13 = *a4;
  v14 = a4[1];
  v16 = a4[2];
  v15 = a4[3];
  v17 = a2[4];
  v18 = a2[5];
  v20 = a4[4];
  v19 = a4[5];
  v21 = a2[6];
  v22 = a4[6];
  v23 = *(v7 + 72) + 20 * *(v7 + 71);
  v24 = COERCE_FLOAT(*(a3 + 12)) == 1.0;
  if (v10.f32[0] != 1.0 || COERCE_FLOAT(HIDWORD(*(a3 + 4))) != 1.0)
  {
    v24 = 0;
  }

  v26 = 0uLL;
  v134 = 0;
  v132 = 0u;
  v133 = 0u;
  v141 = v7 + 32;
  v143 = v23;
  v144 = *(v7 + 70);
  v27.i64[0] = *(v7 + 92);
  v27.i64[1] = *(v7 + 100);
  v28 = vmulq_f32(v11, v27);
  *v28.i8 = vpmin_f32(vdup_laneq_s32(v28, 2), *v28.i8);
  *v28.i32 = vpmin_f32(*v28.i8, *v28.i8).f32[0];
  *&v133 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v28.i32);
  *(&v133 + 2) = 0.025 * *v28.i32;
  if (v24)
  {
    v135 = xmmword_1E3047670;
    v136 = xmmword_1E3047680;
    v137 = xmmword_1E30476A0;
    v138 = xmmword_1E3047670;
    v139 = xmmword_1E3047680;
    v140 = xmmword_1E30476A0;
  }

  else
  {
    v29 = vrecpeq_f32(v11);
    v30 = 4;
    do
    {
      v29 = vmulq_f32(v29, vrecpsq_f32(v29, v11));
      --v30;
    }

    while (v30);
    *v31.f32 = vdup_lane_s32(*v10.f32, 0);
    v31.i64[1] = v31.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v31, v11)), a6).u32[0] & 0xFFFFFF) != 0)
    {
      v38 = vdup_lane_s32(*v12.f32, 1);
      v39 = vdup_laneq_s32(v12, 2);
      v40 = vdup_laneq_s32(v12, 3);
      v41 = vaddq_f32(v12, v12);
      v42 = vmul_lane_f32(v38, *v41.f32, 1);
      v43 = vmul_laneq_f32(v39, v41, 2);
      v44 = vmul_n_f32(v38, v41.f32[0]);
      v45 = vmul_n_f32(v39, v41.f32[0]);
      v46 = vmul_n_f32(v40, v41.f32[0]);
      v47 = vmul_lane_f32(v39, *v41.f32, 1);
      v48 = vmul_lane_f32(v40, *v41.f32, 1);
      v49 = vmul_laneq_f32(v40, v41, 2);
      __asm { FMOV            V24.2S, #1.0 }

      v54 = vsub_f32(_D24, vdup_lane_s32(vmul_f32(*v12.f32, *v41.f32), 0));
      v55 = vsub_f32(vsub_f32(_D24, v42), v43);
      v56 = vadd_f32(v44, v49);
      v57 = vsub_f32(v45, v48);
      *v41.f32 = vsub_f32(v44, v49);
      v58 = vsub_f32(v54, v43);
      v59 = vadd_f32(v47, v46);
      v60 = vadd_f32(v45, v48);
      v61 = vsub_f32(v47, v46);
      v62 = vext_s8(v60, v61, 4uLL);
      *v63.f32 = vext_s8(v55, *&vdupq_lane_s32(*v41.f32, 1), 4uLL);
      v63.i64[1] = vdup_lane_s32(v62, 0).u32[0];
      v64 = vsub_f32(v54, v42);
      *v65.f32 = vext_s8(*&vdupq_lane_s32(v56, 0), v58, 4uLL);
      v65.i64[1] = vdup_lane_s32(v62, 1).u32[0];
      *v66.f32 = vext_s8(*&vdupq_lane_s32(v57, 0), v59, 4uLL);
      v66.i64[1] = vdup_lane_s32(v64, 0).u32[0];
      v67 = vmulq_n_f32(v63, v10.f32[0]);
      v67.i32[3] = 0;
      v68 = vmulq_lane_f32(v65, *v10.f32, 1);
      v68.i32[3] = 0;
      v69 = vmulq_laneq_f32(v66, v10, 2);
      v69.i32[3] = 0;
      v70 = vmulq_lane_f32(v67, v55, 1);
      v70.i32[3] = 0;
      v71 = vmulq_n_f32(v68, *v56.i32);
      v71.i32[3] = 0;
      v72 = vmulq_n_f32(v69, *v57.i32);
      v72.i32[3] = 0;
      v32 = vaddq_f32(v72, vaddq_f32(v70, v71));
      v73 = vmulq_lane_f32(v67, *v41.f32, 1);
      v73.i32[3] = 0;
      v74 = vmulq_n_f32(v68, *v58.i32);
      v74.i32[3] = 0;
      v114 = v22;
      v75 = v21;
      v76 = v20;
      v77 = v19;
      v78 = v18;
      v79 = v17;
      v80 = v9;
      v81 = v8;
      v82 = vmulq_n_f32(v69, *v59.i32);
      v82.i32[3] = 0;
      v83 = vaddq_f32(v73, v74);
      v84 = vmulq_lane_f32(v67, v60, 1);
      v84.i32[3] = 0;
      v85 = vmulq_n_f32(v68, *v61.i32);
      v85.i32[3] = 0;
      v86 = vmulq_n_f32(v69, *v64.i32);
      v86.i32[3] = 0;
      v33 = vaddq_f32(v82, v83);
      v34 = vaddq_f32(v86, vaddq_f32(v84, v85));
      v135 = v32;
      v136 = v33;
      v137 = v34;
      v87 = vmulq_n_f32(v63, v29.f32[0]);
      v87.i32[3] = 0;
      v88 = vmulq_lane_f32(v65, *v29.f32, 1);
      v88.i32[3] = 0;
      v89 = vmulq_laneq_f32(v66, v29, 2);
      v89.i32[3] = 0;
      v90 = vmulq_lane_f32(v87, v55, 1);
      v90.i32[3] = 0;
      v91 = vmulq_n_f32(v88, *v56.i32);
      v91.i32[3] = 0;
      v92 = vmulq_n_f32(v89, *v57.i32);
      v92.i32[3] = 0;
      v35 = vaddq_f32(v92, vaddq_f32(v90, v91));
      v93 = vmulq_lane_f32(v87, *v41.f32, 1);
      v93.i32[3] = 0;
      v94 = vmulq_n_f32(v88, *v58.i32);
      v94.i32[3] = 0;
      v95 = vmulq_n_f32(v89, *v59.i32);
      v95.i32[3] = 0;
      v96 = vaddq_f32(v93, v94);
      v97 = vmulq_lane_f32(v87, v60, 1);
      v8 = v81;
      v9 = v80;
      v17 = v79;
      v18 = v78;
      v19 = v77;
      v20 = v76;
      v21 = v75;
      v22 = v114;
      v97.i32[3] = 0;
      v98 = vmulq_n_f32(v88, *v61.i32);
      v98.i32[3] = 0;
      v36 = vaddq_f32(v95, v96);
      v99 = vmulq_n_f32(v89, *v64.i32);
      v99.i32[3] = 0;
      v37 = vaddq_f32(v99, vaddq_f32(v97, v98));
    }

    else
    {
      v29.i32[3] = 0;
      v32 = vmulq_f32(v11, xmmword_1E3047670);
      v33 = vmulq_f32(v11, xmmword_1E3047680);
      v34 = vmulq_f32(v11, xmmword_1E30476A0);
      v135 = v32;
      v136 = v33;
      v137 = v34;
      v35 = vmulq_f32(v29, xmmword_1E3047670);
      v36 = vmulq_f32(v29, xmmword_1E3047680);
      v37 = vmulq_f32(v29, xmmword_1E30476A0);
    }

    v138 = v35;
    v139 = v36;
    v140 = v37;
    v100 = vmulq_f32(v32, 0);
    v100.i32[3] = 0;
    v101 = vmulq_f32(v33, 0);
    v101.i32[3] = 0;
    v102 = vmulq_f32(v34, 0);
    v102.i32[3] = 0;
    v26 = vaddq_f32(v102, vaddq_f32(v101, v100));
    v132 = v26;
  }

  v103 = (v21 - v22) + (v21 - v22);
  v104 = (v17 - v20) + (v17 - v20);
  v105 = (v18 - v19) + (v18 - v19);
  v106 = (-(v14 * v105) - (v13 * v104)) - (v16 * v103);
  v107 = (v15 * v15) + -0.5;
  *&v108 = ((v15 * ((v14 * v104) - (v13 * v105))) + (v103 * v107)) - (v16 * v106);
  v109 = ((v15 * ((v13 * v103) - (v16 * v104))) + (v105 * v107)) - (v14 * v106);
  v110.f32[0] = ((v15 * ((v16 * v105) - (v14 * v103))) + (v104 * v107)) - (v13 * v106);
  v110.f32[1] = v109;
  v110.i64[1] = v108;
  v142 = *(v7 + 80);
  v127 = 4;
  v131 = vdup_lane_s32(a6, 0);
  v129 = v110;
  v130 = v110;
  v124 = a6.i32[0];
  v125 = a6.i32[0];
  v126 = a6.i32[0];
  v128 = 1;
  v122 = 0u;
  v123 = v110;
  v120 = 0u;
  v121 = 0u;
  v119 = 0;
  v118[1] = &v123;
  v117[1] = &v132;
  v118[0] = &unk_1F5D217B8;
  v117[0] = &unk_1F5D21818;
  v116 = vsubq_f32(v110, v26);
  v115 = 0;
  v111 = physx::Gu::gjk<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(v118, v117, &v116, &v115, &v122, &v121, &v120, &v119);
  if (a5 && v111 == 2)
  {
    *a5 = v8;
    a5[2] = v9;
    v112 = 2;
LABEL_23:
    *(a5 + 6) = v112;
    return v111 == 2;
  }

  if (a5)
  {
    v112 = 2 * (v111 == 2);
    goto LABEL_23;
  }

  return v111 == 2;
}

BOOL GeomOverlapCallback_PlaneCapsule(uint64_t a1, float *a2, uint64_t a3, float *a4)
{
  v4 = *a4;
  v5 = a4[1];
  v7 = a4[2];
  v6 = a4[3];
  v8 = v6 + v6;
  v9 = ((v6 * (v6 + v6)) + -1.0) + (v4 * (v4 + v4));
  v10 = ((v4 + v4) * v5) + (v7 * v8);
  v11 = ((v4 + v4) * v7) - (v5 * v8);
  v12 = *(a3 + 4);
  v13 = *(a3 + 8);
  v14 = v9 * v13;
  v15 = v13 * v10;
  v16 = v11 * v13;
  v17 = a4[4];
  v18 = a4[5];
  v19 = a4[6];
  v21 = a2[2];
  v20 = a2[3];
  v22 = v20 + v20;
  v23 = (v20 * (v20 + v20)) + -1.0;
  v24 = *a2;
  v25 = a2[1];
  v26 = v24 + v24;
  v27 = v23 + (v24 * (v24 + v24));
  v28 = ((v24 + v24) * v25) + (v21 * v22);
  v29 = (v26 * v21) - (v25 * v22);
  v30 = ((a2[5] * v28) + (a2[4] * v27)) + (a2[6] * v29);
  return (((((v18 + v15) * v28) + ((v17 + v14) * v27)) + ((v16 + v19) * v29)) - v30) <= v12 || (((((v18 - v15) * v28) + ((v17 - v14) * v27)) + ((v19 - v16) * v29)) - v30) <= v12;
}

BOOL GeomOverlapCallback_PlaneBox(uint64_t a1, float *a2, float *a3, float *a4)
{
  v4 = *a4;
  v5 = a4[1];
  v6 = a4[2];
  v7 = a4[3];
  v8 = v4 * (v4 + v4);
  v9 = v5 * (v5 + v5);
  v10 = v6 * (v6 + v6);
  v11 = (v4 + v4) * v5;
  v12 = (v4 + v4) * v6;
  v13 = (v4 + v4) * v7;
  v14 = (v5 + v5) * v6;
  v15 = (v5 + v5) * v7;
  v16 = (v6 + v6) * v7;
  v17 = (1.0 - v9) - v10;
  v18 = v11 + v16;
  v19 = v12 - v15;
  v20 = v11 - v16;
  v21 = 1.0 - v8;
  v22 = (1.0 - v8) - v10;
  v23 = v14 + v13;
  v24 = v12 + v15;
  v25 = v14 - v13;
  v26 = v21 - v9;
  v27 = *a2;
  v28 = a2[1];
  v29 = v27 + v27;
  v31 = a2[2];
  v30 = a2[3];
  v32 = v30 + v30;
  v33 = ((v30 * (v30 + v30)) + -1.0) + (v27 * (v27 + v27));
  v34 = (v29 * v28) + (v31 * (v30 + v30));
  v35 = (v29 * v31) - (v28 * v32);
  v36 = -1;
LABEL_2:
  v37 = v36;
  v38 = a3[1] * v36;
  v39 = v17 * v38;
  v40 = v18 * v38;
  v41 = v19 * v38;
  v42 = -1;
LABEL_3:
  v43 = v42;
  v44 = a3[2] * v42;
  v45 = v22 * v44;
  v46 = v23 * v44;
  v47 = v39 + (v20 * v44);
  v48 = v40 + v45;
  v49 = v41 + v46;
  v50 = -1;
  while (1)
  {
    v51 = (((v34 * (a4[5] + (v48 + (v25 * (a3[3] * v50))))) + ((a4[4] + (v47 + (v24 * (a3[3] * v50)))) * v33)) + ((a4[6] + (v49 + (v26 * (a3[3] * v50)))) * v35)) - (((a2[5] * v34) + (a2[4] * v33)) + (a2[6] * v35));
    if (v51 <= 0.0)
    {
      return v51 <= 0.0;
    }

    v52 = v50;
    v50 += 2;
    if ((v52 & 0x80000000) == 0)
    {
      v42 = v43 + 2;
      if (v43 < 0)
      {
        goto LABEL_3;
      }

      v36 = v37 + 2;
      if (v37 < 0)
      {
        goto LABEL_2;
      }

      return v51 <= 0.0;
    }
  }
}

BOOL GeomOverlapCallback_PlaneConvex(double a1, double a2, double a3, double a4, double _D4, uint64_t a6, float32x2_t *a7, float32x2_t *a8, uint64_t a9)
{
  v10 = a8[4];
  v11 = *(*&v10 + 80);
  v12 = (*(*&v10 + 72) + 20 * *(*&v10 + 71));
  v13 = *(a9 + 20);
  v99 = *(a9 + 24);
  _S25 = *(a9 + 12);
  v14 = *(a9 + 16);
  v9.i32[0] = *a9;
  _D26 = *(a9 + 4);
  v17 = a7[2].f32[0];
  v18 = a7[2].f32[1];
  v19 = a7[3].f32[0];
  LODWORD(_D4) = a7[1].i32[0];
  _D5 = *a7;
  v22 = a8->f32[1];
  v21 = a8[1].f32[0];
  v23 = a8[1].f32[1];
  v24 = _D26.f32[1];
  v25 = -_D26.f32[1];
  v26 = vzip1_s32(v9, _D26);
  v27 = vneg_f32(v26);
  v28 = *&v27.i32[1];
  __asm { FMLA            S7, S25, V5.S[1] }

  v34 = (_S7 - (COERCE_FLOAT(*a7) * _D26.f32[1])) + (*&_D4 * *a9);
  v35 = vdup_lane_s32(v27, 0);
  v35.f32[0] = -_D26.f32[1];
  v36.i32[0] = vdup_lane_s32(*a7, 1).u32[0];
  v36.i32[1] = LODWORD(_D4);
  v37 = vmla_f32(vmls_f32(vmla_n_f32(vmul_n_f32(v35, a7[1].f32[1]), vzip1_s32(*&_D4, *a7), _S25), v36, v26), _D26, *a7);
  __asm { FMLA            S3, S4, V26.S[1] }

  v39 = vadd_f32(__PAIR64__(v37.u32[1], LODWORD(_S3)), __PAIR64__(v37.u32[1], LODWORD(_S3)));
  v40.f32[0] = vmuls_lane_f32(v34, v39, 1);
  v40.f32[1] = (_S3 * v39.f32[0]) + -1.0;
  v41 = vmla_f32(v40, v39, v37);
  v42 = vmuls_lane_f32(v37.f32[0], v39, 1) - (v39.f32[0] * v34);
  v43 = a8[2];
  v44 = a8[3];
  v45 = vadd_f32(v43, v43);
  v46 = vmul_f32(v43, __PAIR64__(v45.u32[1], v43.u32[0]));
  v47 = vadd_f32(v43, __PAIR64__(v45.u32[1], v43.u32[0]));
  v48 = vext_s8(v46, v47, 4uLL);
  v36.f32[0] = vmul_f32(v43, v47).f32[0];
  v49 = vmul_n_f32(v44, v47.f32[0]);
  v50 = vrev64_s32(vmul_lane_f32(v44, v45, 1));
  v51 = vmul_f32(v43, v48);
  v43.i32[0] = 1.0;
  v52 = vmul_n_f32(v44, vadd_f32(v44, v44).f32[0]);
  v43.i32[0] = vsub_f32(v43, v48).u32[0];
  v43.i32[1] = v51.i32[1];
  v53 = vsub_f32(v43, v52);
  v48.f32[0] = 1.0 - v36.f32[0];
  v43.f32[0] = 1.0 - v36.f32[0];
  v54 = vadd_f32(v43, v52);
  v55 = vsub_f32(v43, v52);
  v56 = vext_s8(v54, v55, 4uLL);
  v57.f32[0] = vsub_f32(v49, v50).f32[0];
  v58 = vadd_f32(v49, v50);
  *v46.i32 = v48.f32[0] - *&v46.i32[1];
  v48.f32[0] = (v48.f32[0] - *&v46.i32[1]) * v23;
  v57.i32[1] = v58.i32[1];
  v59 = vsub_f32(v50, v49);
  v60 = vmul_n_f32(v53, v22);
  v61 = v22 * v58.f32[0];
  v62 = vmul_n_f32(v56, v21);
  v63 = vmuls_lane_f32(v21, v59, 1);
  v64 = vmul_n_f32(v57, v23);
  v54.f32[0] = ((v61 * v53.f32[0]) + vmuls_lane_f32(v63, v54, 1)) + (v48.f32[0] * v57.f32[0]);
  *v55.i32 = vmuls_lane_f32(v61, v53, 1) + (v63 * *v55.i32);
  v65 = ((v61 * v58.f32[0]) + vmuls_lane_f32(v63, v59, 1)) + (*v46.i32 * v48.f32[0]);
  v66 = v41.f32[1];
  v67 = vadd_f32(vmul_n_f32(vadd_f32(vadd_f32(vmul_n_f32(v60, v58.f32[0]), vmul_lane_f32(v62, v59, 1)), vmul_n_f32(v64, *v46.i32)), v42), vadd_f32(vmul_f32(v41, vadd_f32(vadd_f32(vmul_f32(vrev64_s32(v53), v60), vmul_f32(vrev64_s32(v56), v62)), vmul_f32(vrev64_s32(v57), v64))), vmul_f32(vrev64_s32(v41), vadd_f32(vadd_f32(vmul_f32(v53, v60), vmul_f32(v56, v62)), vmul_f32(v57, v64)))));
  v68 = (v42 * v65) + (vmuls_lane_f32(v54.f32[0], v41, 1) + ((*v55.i32 + vmuls_lane_f32(v48.f32[0], v58, 1)) * v41.f32[0]));
  v104 = v67;
  v105 = v68;
  if (v11)
  {
    v92 = v41.f32[1];
    v93 = v14;
    v69 = v13;
    v70 = &v105;
    v71 = *v11;
    v72 = vabs_f32(v67);
    v73 = LODWORD(v68) & 0x7FFFFFFF;
    v74 = v72.i32[1] > v72.i32[0] && v72.i32[1] > v73;
    v97 = _D26.i32[0];
    v98 = _S25;
    v96 = v27.i32[0];
    v94 = v42;
    v95 = v41.i32[0];
    v75 = v19;
    if (v74)
    {
      v76 = v18;
      v77 = v17;
      v78 = 1;
      v79 = &v104;
    }

    else
    {
      v76 = v18;
      v77 = v17;
      if (v72.i32[0] >= v73)
      {
        v78 = 0;
        v79 = &v105;
        v70 = &v104 + 1;
      }

      else
      {
        v78 = 2;
        v70 = &v104;
        v79 = &v104 + 1;
      }
    }

    v82 = 1.0 / fabsf(v104.f32[v78]);
    HIDWORD(v83) = v78;
    LODWORD(v83) = v104.i32[v78];
    v84 = vcvts_n_f32_u32(v71 - 1, 1uLL);
    v85 = (*(v11 + 1) + ((v84 * ((v82 * *v79) + 1.0)) + 0.5) + (((v84 * ((*v70 * v82) + 1.0)) + 0.5) + (v83 >> 31) * v71) * v71);
    v86 = *v85;
    v102 = v85[v11[1]];
    v103 = v86;
    v100 = vneg_f32(v67);
    v101 = -v68;
    v91 = v67;
    physx::localSearch(&v103, &v100, v12, v11);
    physx::localSearch(&v102, &v104, v12, v11);
    v81 = (vmuls_lane_f32(v12[3 * v103 + 1], v91, 1) + (v12[3 * v103] * v91.f32[0])) + (v12[3 * v103 + 2] * v68);
    _D26.i32[0] = v97;
    _S25 = v98;
    v27.i32[0] = v96;
    v25 = -v24;
    v17 = v77;
    v18 = v76;
    v42 = v94;
    v41.i32[0] = v95;
    v19 = v75;
    v13 = v69;
    v66 = v92;
    v14 = v93;
  }

  else
  {
    v80 = *(*&v10 + 70);
    v81 = 3.4028e38;
    do
    {
      if (v81 >= (((v67.f32[1] * v12[1]) + (*v12 * v67.f32[0])) + (v12[2] * v68)))
      {
        v81 = ((v67.f32[1] * v12[1]) + (*v12 * v67.f32[0])) + (v12[2] * v68);
      }

      v12 += 3;
      --v80;
    }

    while (v80);
  }

  v87 = (((v13 * -2.0) * _D26.f32[0]) + (*v9.i32 * (v14 * -2.0))) + (v24 * (v99 * -2.0));
  v88 = (_S25 * _S25) + -0.5;
  v89 = (((v18 + v18) * v28) + (*v27.i32 * (v17 + v17))) + (v25 * (v19 + v19));
  return v81 <= ((((((((v13 * -2.0) * v88) - ((((v99 * -2.0) * *v27.i32) + (v24 * (v14 * -2.0))) * _S25)) + (_D26.f32[0] * v87)) + (((_S25 * ((*v9.i32 * (v19 + v19)) + (v25 * (v17 + v17)))) + ((v18 + v18) * v88)) + (v28 * v89))) * v41.f32[0]) + ((((((v14 * -2.0) * v88) - ((((v13 * -2.0) * v25) + (_D26.f32[0] * (v99 * -2.0))) * _S25)) + (*v9.i32 * v87)) + (((_S25 * ((v24 * (v18 + v18)) + (v28 * (v19 + v19)))) + ((v17 + v17) * v88)) + (*v27.i32 * v89))) * v66)) + ((((((v99 * -2.0) * v88) - ((((v14 * -2.0) * v28) + (*v9.i32 * (v13 * -2.0))) * _S25)) + (v24 * v87)) + (((_S25 * ((_D26.f32[0] * (v17 + v17)) + (*v27.i32 * (v18 + v18)))) + ((v19 + v19) * v88)) + (v25 * v89))) * v42));
}

BOOL GeomOverlapCallback_CapsuleCapsule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 12);
  v5 = *(a4 + 12);
  v6 = *(a4 + 16) - *(a2 + 16);
  v7 = *a2;
  v8 = v7 + v7;
  v9 = v4 + v4;
  v10 = ((v4 * (v4 + v4)) + -1.0) + (v7 * (v7 + v7));
  v11 = *(a1 + 8);
  v12 = *a4;
  v13 = v12 + v12;
  v14 = v5 + v5;
  v15 = ((v5 * (v5 + v5)) + -1.0) + (v12 * (v12 + v12));
  v33 = (v10 * v11) + (v10 * v11);
  v16 = *(a2 + 4);
  v17.i32[0] = vdup_lane_s32(v16, 1).u32[0];
  v17.f32[1] = -v16.f32[0];
  v18 = *(a3 + 8);
  v19 = v15 * v18;
  v20 = -(v10 * v11);
  v21 = vmul_n_f32(vmla_n_f32(vmul_n_f32(v16, v8), v17, v9), v11);
  v35[0] = v20;
  v35[1] = -v21.f32[0];
  v35[2] = -v21.f32[1];
  v34 = vadd_f32(v21, v21);
  v22 = v6 - v19;
  v23 = *(a4 + 4);
  v21.f32[0] = -v23.f32[0];
  v24 = vmul_n_f32(v23, v13);
  v23.i32[0] = vdup_lane_s32(v23, 1).u32[0];
  v23.i32[1] = v21.i32[0];
  v25 = vmul_n_f32(vmla_n_f32(v24, v23, v14), v18);
  v32 = vsub_f32(vsub_f32(*(a4 + 20), *(a2 + 20)), v25);
  v26 = v25.f32[1];
  v27 = vdup_lane_s32(v25, 0);
  v27.f32[0] = v19;
  v29 = vadd_f32(v27, v27);
  v30 = v26 + v26;
  v31 = v22;
  return physx::Gu::distanceSegmentSegmentSquared(v35, &v33, &v31, &v29, 0, 0) <= ((*(a1 + 4) + *(a3 + 4)) * (*(a1 + 4) + *(a3 + 4)));
}

BOOL GeomOverlapCallback_CapsuleBox(uint64_t a1, float32x2_t *a2, uint64_t a3, float32x2_t *a4)
{
  v5 = a4[3].f32[0] - a2[3].f32[0];
  v36 = vsub_f32(a4[2], a2[2]);
  v37 = v5;
  v6 = a2->f32[0];
  v7 = a2->f32[1];
  v8 = v6 + v6;
  v10 = a2[1].f32[0];
  v9 = a2[1].f32[1];
  v11 = v9 + v9;
  v12 = ((v9 * (v9 + v9)) + -1.0) + (v6 * (v6 + v6));
  v13 = (v8 * v7) + (v10 * (v9 + v9));
  v14 = (v8 * v10) - (v7 * v11);
  v15 = *(a1 + 8);
  v35[0] = v12 * v15;
  v35[1] = v15 * v13;
  v35[2] = v14 * v15;
  v16 = a4->f32[0];
  v17 = a4->f32[1];
  v18 = a4[1].f32[0];
  v19 = a4[1].f32[1];
  v20 = v17 + v17;
  v21 = v18 + v18;
  v22 = v17 * (v17 + v17);
  v23 = v18 * (v18 + v18);
  v24 = (v16 + v16) * v17;
  v25 = (v16 + v16) * v18;
  v26 = (v16 + v16) * v19;
  v27 = v20 * v18;
  v28 = v20 * v19;
  v29 = v21 * v19;
  v34[0] = (1.0 - v22) - v23;
  v34[1] = v24 + v29;
  v30 = 1.0 - (v16 * (v16 + v16));
  v34[2] = v25 - v28;
  v34[3] = v24 - v29;
  v34[4] = v30 - v23;
  v34[5] = v27 + v26;
  v34[6] = v25 + v28;
  v34[7] = v27 - v26;
  v34[8] = v30 - v22;
  v33[0] = -(v12 * v15);
  v33[1] = -(v15 * v13);
  v33[2] = -(v14 * v15);
  physx::Gu::distanceSegmentBoxSquared(v35, v33, &v36, (a3 + 4), v34, 0, 0);
  return v31 <= (*(a1 + 4) * *(a1 + 4));
}

BOOL GeomOverlapCallback_CapsuleConvex(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, float *a5, int8x8_t a6, float32x4_t a7, double a8, double a9, double a10, double a11, float32x4_t a12)
{
  v171 = *MEMORY[0x1E69E9840];
  v15 = *(a3 + 32);
  v16 = 0;
  if (a5)
  {
    v17 = 1.0;
    if (*(a5 + 6) == 2)
    {
      v16 = *a5;
      v17 = a5[2];
    }
  }

  else
  {
    v17 = 1.0;
  }

  a6.i32[0] = *(a1 + 4);
  v18 = *(a1 + 8);
  v19 = *(a3 + 4);
  v20 = v19;
  v20.i32[3] = 0;
  v21 = *(a3 + 16);
  v22 = *a4;
  v23 = a4[1];
  v25 = a4[2];
  v24 = a4[3];
  v26 = *(a2 + 16);
  v27 = *(a2 + 20);
  v29 = a4[4];
  v28 = a4[5];
  v30 = *(a2 + 24);
  v31 = a4[6];
  v13.i32[0] = *(a2 + 8);
  v32 = *(a2 + 12);
  v34 = *a2;
  v33 = *(a2 + 4);
  v35 = COERCE_FLOAT(*(a3 + 12)) == 1.0;
  if (COERCE_FLOAT(HIDWORD(*(a3 + 4))) != 1.0)
  {
    v35 = 0;
  }

  if (v19.f32[0] != 1.0)
  {
    v35 = 0;
  }

  v160 = 0;
  v158 = 0u;
  v159 = 0u;
  v36 = *(v15 + 72) + 20 * *(v15 + 71);
  v167 = v15 + 32;
  v169 = v36;
  v37.i64[0] = *(v15 + 92);
  v37.i64[1] = *(v15 + 100);
  v38 = vmulq_f32(v20, v37);
  v170 = *(v15 + 70);
  *v38.i8 = vpmin_f32(vdup_laneq_s32(v38, 2), *v38.i8);
  *v38.i32 = vpmin_f32(*v38.i8, *v38.i8).f32[0];
  *&v159 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v38.i32);
  *(&v159 + 2) = 0.025 * *v38.i32;
  __asm { FMOV            V24.2S, #1.0 }

  if (v35)
  {
    v44.i32[1] = 1065353216;
    v161 = xmmword_1E3047670;
    v162 = xmmword_1E3047680;
    v163 = xmmword_1E30476A0;
    v164 = xmmword_1E3047670;
    v165 = xmmword_1E3047680;
    v166 = xmmword_1E30476A0;
  }

  else
  {
    v140 = v29;
    v45 = vrecpeq_f32(v20);
    v46 = 4;
    do
    {
      v45 = vmulq_f32(v45, vrecpsq_f32(v45, v20));
      --v46;
    }

    while (v46);
    *v47.f32 = vdup_lane_s32(*v19.f32, 0);
    v47.i64[1] = v47.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v47, v20)), a6).u32[0] & 0xFFFFFF) != 0)
    {
      v53 = vdup_lane_s32(*v21.f32, 1);
      v54 = vdup_laneq_s32(v21, 2);
      v55 = vdup_laneq_s32(v21, 3);
      v137 = v18;
      v56 = vaddq_f32(v21, v21);
      v139 = v16;
      v57 = vmul_lane_f32(v53, *v56.f32, 1);
      v58 = vmul_laneq_f32(v54, v56, 2);
      v59 = vmul_n_f32(v53, v56.f32[0]);
      v134 = v28;
      v135 = v27;
      v60 = vmul_n_f32(v54, v56.f32[0]);
      v61 = vmul_n_f32(v55, v56.f32[0]);
      v62 = vmul_lane_f32(v54, *v56.f32, 1);
      v63 = vmul_lane_f32(v55, *v56.f32, 1);
      v64 = vmul_laneq_f32(v55, v56, 2);
      v65 = vsub_f32(_D24, vdup_lane_s32(vmul_f32(*v21.f32, *v56.f32), 0));
      v66 = vsub_f32(vsub_f32(_D24, v57), v58);
      v136 = v26;
      v67 = vadd_f32(v59, v64);
      v138 = v17;
      v68 = vsub_f32(v60, v63);
      *v56.f32 = vsub_f32(v59, v64);
      v69 = vsub_f32(v65, v58);
      v70 = vadd_f32(v62, v61);
      v71 = vadd_f32(v60, v63);
      v72 = vsub_f32(v62, v61);
      v73 = vext_s8(v71, v72, 4uLL);
      *v74.f32 = vext_s8(v66, *&vdupq_lane_s32(*v56.f32, 1), 4uLL);
      v74.i64[1] = vdup_lane_s32(v73, 0).u32[0];
      v61.i32[0] = vdup_lane_s32(v73, 1).u32[0];
      v75 = vsub_f32(v65, v57);
      *v76.f32 = vext_s8(*&vdupq_lane_s32(v67, 0), v69, 4uLL);
      v76.i64[1] = v61.u32[0];
      *v77.f32 = vext_s8(*&vdupq_lane_s32(v68, 0), v70, 4uLL);
      v77.i64[1] = vdup_lane_s32(v75, 0).u32[0];
      v78 = vmulq_n_f32(v74, v19.f32[0]);
      v78.i32[3] = 0;
      v79 = vmulq_lane_f32(v76, *v19.f32, 1);
      v79.i32[3] = 0;
      v80 = vmulq_laneq_f32(v77, v19, 2);
      v80.i32[3] = 0;
      v81 = vmulq_lane_f32(v78, v66, 1);
      v81.i32[3] = 0;
      v82 = vmulq_n_f32(v79, *v67.i32);
      v82.i32[3] = 0;
      v83 = vmulq_n_f32(v80, *v68.i32);
      v83.i32[3] = 0;
      v48 = vaddq_f32(v83, vaddq_f32(v81, v82));
      v84 = vmulq_lane_f32(v78, *v56.f32, 1);
      v84.i32[3] = 0;
      v85 = vmulq_n_f32(v79, *v69.i32);
      v85.i32[3] = 0;
      v86 = vmulq_n_f32(v80, *v70.i32);
      v86.i32[3] = 0;
      v87 = vaddq_f32(v84, v85);
      v88 = vmulq_lane_f32(v78, v71, 1);
      v88.i32[3] = 0;
      v89 = vmulq_n_f32(v79, *v72.i32);
      v89.i32[3] = 0;
      v90 = vmulq_n_f32(v80, *v75.i32);
      v90.i32[3] = 0;
      v49 = vaddq_f32(v86, v87);
      v50 = vaddq_f32(v90, vaddq_f32(v88, v89));
      v161 = v48;
      v162 = v49;
      v163 = v50;
      v91 = vmulq_n_f32(v74, v45.f32[0]);
      v91.i32[3] = 0;
      v92 = vmulq_lane_f32(v76, *v45.f32, 1);
      v16 = v139;
      v92.i32[3] = 0;
      v93 = vmulq_laneq_f32(v77, v45, 2);
      v93.i32[3] = 0;
      v94 = vmulq_lane_f32(v91, v66, 1);
      v94.i32[3] = 0;
      v95 = vmulq_n_f32(v92, *v67.i32);
      v27 = v135;
      v26 = v136;
      v95.i32[3] = 0;
      v96 = vmulq_n_f32(v93, *v68.i32);
      v17 = v138;
      v96.i32[3] = 0;
      v51 = vaddq_f32(v96, vaddq_f32(v94, v95));
      v97 = vmulq_lane_f32(v91, *v56.f32, 1);
      v18 = v137;
      v97.i32[3] = 0;
      v98 = vmulq_n_f32(v92, *v69.i32);
      v98.i32[3] = 0;
      v99 = vmulq_n_f32(v93, *v70.i32);
      v99.i32[3] = 0;
      v12 = vaddq_f32(v97, v98);
      v100 = vmulq_lane_f32(v91, v71, 1);
      v100.i32[3] = 0;
      v101 = vmulq_n_f32(v92, *v72.i32);
      v101.i32[3] = 0;
      v52 = vaddq_f32(v99, v12);
      v102 = vmulq_n_f32(v93, *v75.i32);
      v28 = v134;
      v102.i32[3] = 0;
      v44 = vaddq_f32(v102, vaddq_f32(v100, v101));
    }

    else
    {
      v45.i32[3] = 0;
      v48 = vmulq_f32(v20, xmmword_1E3047670);
      v49 = vmulq_f32(v20, xmmword_1E3047680);
      v50 = vmulq_f32(v20, xmmword_1E30476A0);
      v161 = v48;
      v162 = v49;
      v163 = v50;
      v51 = vmulq_f32(v45, xmmword_1E3047670);
      v52 = vmulq_f32(v45, xmmword_1E3047680);
      v44 = vmulq_f32(v45, xmmword_1E30476A0);
    }

    v164 = v51;
    v165 = v52;
    v166 = v44;
    v103 = vmulq_f32(v48, 0);
    v103.i32[3] = 0;
    v104 = vmulq_f32(v49, 0);
    v104.i32[3] = 0;
    v105 = vmulq_f32(v50, 0);
    v105.i32[3] = 0;
    a12 = vaddq_f32(v104, v103);
    a7 = vaddq_f32(v105, a12);
    v158 = a7;
    v29 = v140;
  }

  a7.f32[0] = (((v24 * v34) - (v22 * v32)) - (v23 * *v13.i32)) + (v33 * v25);
  a12.f32[0] = a7.f32[0] + a7.f32[0];
  v106 = vdup_lane_s32(*a12.f32, 0);
  v12.f32[0] = (((v24 * *v13.i32) - (v25 * v32)) - (v22 * v33)) + (v34 * v23);
  v107 = vdup_lane_s32(*v12.f32, 0);
  v108 = vmul_n_f32(v107, a7.f32[0] + a7.f32[0]);
  v44.f32[0] = (((v24 * v33) - (v23 * v32)) - (v25 * v34)) + (*v13.i32 * v22);
  *v13.i32 = (((v22 * v34) + (v24 * v32)) + (v23 * v33)) + (v25 * *v13.i32);
  v109 = vdup_lane_s32(v13, 0);
  v110 = vmul_n_f32(v109, v44.f32[0] + v44.f32[0]);
  v111 = vmul_n_f32(v107, v44.f32[0] + v44.f32[0]);
  v112 = vmul_n_f32(v109, a7.f32[0] + a7.f32[0]);
  *v113.f32 = vext_s8(vadd_f32(v108, v110), vsub_f32(v111, v112), 4uLL);
  a7.f32[0] = a7.f32[0] * (a7.f32[0] + a7.f32[0]);
  v114 = vsub_f32(_D24, vdup_lane_s32(*a7.f32, 0));
  v115 = vmul_n_f32(vdup_lane_s32(*v44.f32, 0), v44.f32[0] + v44.f32[0]);
  *&v113.u32[2] = vsub_f32(v114, v115);
  v116 = vmul_n_f32(v106, v44.f32[0]);
  v117 = v12.f32[0] + v12.f32[0];
  v118 = vmul_n_f32(v109, v117);
  v119 = vmul_n_f32(v107, v117);
  *v120.f32 = vext_s8(vsub_f32(v116, v118), vsub_f32(v114, v119), 4uLL);
  *&v120.u32[2] = vadd_f32(v112, v111);
  *v121.f32 = vext_s8(vsub_f32(vsub_f32(_D24, v115), v119), vadd_f32(v116, v118), 4uLL);
  *&v121.u32[2] = vsub_f32(v108, v110);
  v116.f32[0] = (v30 - v31) + (v30 - v31);
  v119.f32[0] = (v26 - v29) + (v26 - v29);
  v107.f32[0] = (v27 - v28) + (v27 - v28);
  v122 = (-(v23 * v107.f32[0]) - (v22 * v119.f32[0])) - (v25 * v116.f32[0]);
  v123 = (v24 * v24) + -0.5;
  v118.f32[0] = ((v24 * ((v23 * v119.f32[0]) - (v22 * v107.f32[0]))) + (v116.f32[0] * v123)) - (v25 * v122);
  v124 = ((v24 * ((v22 * v116.f32[0]) - (v25 * v119.f32[0]))) + (v107.f32[0] * v123)) - (v23 * v122);
  v125.f32[0] = ((v24 * ((v25 * v107.f32[0]) - (v23 * v116.f32[0]))) + (v119.f32[0] * v123)) - (v22 * v122);
  v125.f32[1] = v124;
  v125.i64[1] = v118.u32[0];
  v168 = *(v15 + 80);
  v126 = vmulq_n_f32(xmmword_1E3047670, v18);
  v127 = vmulq_n_f32(v121, v126.f32[0]);
  v127.i32[3] = 0;
  v128 = vmulq_lane_f32(v120, *v126.f32, 1);
  v128.i32[3] = 0;
  v129 = vmulq_laneq_f32(v113, v126, 2);
  v129.i32[3] = 0;
  v130 = vaddq_f32(v129, vaddq_f32(v128, v127));
  v153 = 4;
  v148 = 0u;
  v149 = v125;
  v157 = vdup_lane_s32(a6, 0);
  v155 = vaddq_f32(v125, v130);
  v156 = vsubq_f32(v125, v130);
  v150 = a6.i32[0];
  v151 = a6.i32[0];
  v152 = a6.i32[0];
  v154 = 1;
  v146 = 0u;
  v147 = 0u;
  v145 = 0;
  v144[1] = &v149;
  v143[1] = &v158;
  v144[0] = &unk_1F5D217B8;
  v143[0] = &unk_1F5D21818;
  v142 = vsubq_f32(v125, v158);
  v141 = 0;
  v131 = physx::Gu::gjk<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(v144, v143, &v142, &v141, &v148, &v147, &v146, &v145);
  if (a5 && v131 == 2)
  {
    *a5 = v16;
    a5[2] = v17;
    v132 = 2;
LABEL_22:
    *(a5 + 6) = v132;
    return v131 == 2;
  }

  if (a5)
  {
    v132 = 2 * (v131 == 2);
    goto LABEL_22;
  }

  return v131 == 2;
}

uint64_t GeomOverlapCallback_BoxBox(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = vdup_lane_s32(*a2, 1);
  v5 = vdup_laneq_s32(*a2, 2);
  v6 = vdup_laneq_s32(*a2, 3);
  _Q4 = vaddq_f32(*a2, *a2);
  v8 = vdup_lane_s32(vmul_f32(*a2, *_Q4.f32), 0);
  v9 = vmul_lane_f32(v4, *_Q4.f32, 1);
  v10 = vmul_laneq_f32(v5, _Q4, 2);
  v11 = vmul_n_f32(v4, _Q4.f32[0]);
  v12 = vmul_n_f32(v5, _Q4.f32[0]);
  v13 = vmul_n_f32(v6, _Q4.f32[0]);
  v14 = vmul_lane_f32(v5, *_Q4.f32, 1);
  v15 = vmul_lane_f32(v6, *_Q4.f32, 1);
  *&v16 = vmul_laneq_f32(v6, _Q4, 2);
  __asm { FMOV            V4.2S, #1.0 }

  v21 = vsub_f32(*_Q4.f32, v8);
  LODWORD(v22) = vadd_f32(v11, *&v16).u32[0];
  LODWORD(v23) = vsub_f32(v12, v15).u32[0];
  v24 = vsub_f32(v11, *&v16);
  LODWORD(v16) = vsub_f32(v21, v10).u32[0];
  v21.i32[0] = vsub_f32(v21, v9).u32[0];
  v43[0] = (1.0 - v9.f32[1]) - v10.f32[1];
  v43[1] = v22;
  HIDWORD(v23) = v24.i32[1];
  v44 = v23;
  *(&v16 + 1) = vext_s8(vadd_f32(v12, v15), vsub_f32(v14, v13), 4uLL);
  DWORD1(v16) = vadd_f32(v14, v13).u32[0];
  v45 = v16;
  v25 = vdup_lane_s32(*a4, 1);
  *&v16 = vdup_laneq_s32(*a4, 2);
  v26 = vdup_laneq_s32(*a4, 3);
  v27 = vaddq_f32(*a4, *a4);
  v28 = vdup_lane_s32(vmul_f32(*a4, *v27.f32), 0);
  v46 = v21.u32[0];
  v29 = vmul_lane_f32(v25, *v27.f32, 1);
  v30 = vmul_laneq_f32(*&v16, v27, 2);
  v31 = vmul_n_f32(v25, v27.f32[0]);
  v32 = vmul_n_f32(*&v16, v27.f32[0]);
  v33 = vmul_n_f32(v26, v27.f32[0]);
  *&v16 = vmul_lane_f32(*&v16, *v27.f32, 1);
  v34 = vmul_lane_f32(v26, *v27.f32, 1);
  *&v35 = vmul_laneq_f32(v26, v27, 2);
  v36 = vsub_f32(*_Q4.f32, v28);
  _Q4.i32[0] = vadd_f32(v31, *&v35).u32[0];
  v27.i32[0] = vsub_f32(v32, v34).u32[0];
  v37 = vsub_f32(v31, *&v35);
  LODWORD(v35) = vsub_f32(v36, v30).u32[0];
  v39[0] = (1.0 - v29.f32[1]) - v30.f32[1];
  v39[1] = _Q4.f32[0];
  v27.i32[1] = v37.i32[1];
  v40 = v27.i64[0];
  *(&v35 + 1) = vext_s8(vadd_f32(v32, v34), vsub_f32(*&v16, v33), 4uLL);
  DWORD1(v35) = vadd_f32(*&v16, v33).u32[0];
  v41 = v35;
  v42 = vsub_f32(v36, v29).u32[0];
  return physx::Gu::intersectOBBOBB((a1 + 4), (a2 + 16), v43, (a3 + 4), (a4 + 16), v39, 1);
}

uint64_t GeomOverlapCallback_BoxConvex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, double a6, int32x4_t a7)
{
  v308 = *MEMORY[0x1E69E9840];
  v13 = *(a3 + 32);
  v14 = 0;
  if (a5)
  {
    v15 = 1.0;
    if (*(a5 + 6) == 2)
    {
      v14 = *a5;
      v15 = a5[2];
    }
  }

  else
  {
    v15 = 1.0;
  }

  v255 = v15;
  v256 = v14;
  v16 = 0;
  a7.i64[0] = *(a1 + 4);
  v17 = *(a1 + 12);
  v18 = *(a3 + 4);
  v19 = v18;
  v19.i32[3] = 0;
  v20 = *(a3 + 16);
  v21 = *(a4 + 4);
  v7.i32[0] = *(a4 + 8);
  v22 = *(a4 + 12);
  v23 = *(a2 + 16) - *(a4 + 16);
  *v8.i32 = *(a2 + 20) - *(a4 + 20);
  v24 = *(a2 + 24) - *(a4 + 24);
  v25 = v23 + v23;
  *v8.i32 = *v8.i32 + *v8.i32;
  v26 = v24 + v24;
  *v9.i32 = (v22 * v22) + -0.5;
  v27 = (-(v21 * *v8.i32) - (*a4 * v25)) - (*v7.i32 * v26);
  *&v28 = ((v22 * ((*v7.i32 * *v8.i32) - (v21 * v26))) + (v25 * *v9.i32)) - (*a4 * v27);
  *&v29 = ((v22 * ((*a4 * v26) - (*v7.i32 * v25))) + (*v8.i32 * *v9.i32)) - (v21 * v27);
  *&v30 = ((v22 * ((v21 * v25) - (*a4 * *v8.i32))) + (v26 * *v9.i32)) - (*v7.i32 * v27);
  v31 = *(a2 + 8);
  v8.i32[0] = *(a2 + 12);
  v32 = *(a2 + 4);
  *v9.i32 = (((v22 * *a2) - (*a4 * *v8.i32)) - (v21 * v31)) + (v32 * *v7.i32);
  *v10.i32 = (((v22 * v32) - (v21 * *v8.i32)) - (*v7.i32 * *a2)) + (v31 * *a4);
  *v11.i32 = (((v22 * v31) - (*v7.i32 * *v8.i32)) - (*a4 * v32)) + (*a2 * v21);
  *v7.i32 = (((*a4 * *a2) + (v22 * *v8.i32)) + (v21 * v32)) + (*v7.i32 * v31);
  v33.i64[0] = __PAIR64__(v29, v28);
  v33.i64[1] = v30;
  v34 = vdup_lane_s32(v11, 0);
  v35 = vdup_lane_s32(v7, 0);
  *v8.i32 = *v9.i32 + *v9.i32;
  *v9.i32 = *v9.i32 * (*v9.i32 + *v9.i32);
  v36 = vmul_n_f32(vdup_lane_s32(v10, 0), *v10.i32 + *v10.i32);
  v37 = vmul_n_f32(v34, *v11.i32 + *v11.i32);
  v38 = vmul_n_f32(vdup_lane_s32(v8, 0), *v10.i32);
  v39 = vmul_n_f32(v34, *v8.i32);
  v40 = vmul_n_f32(v35, *v8.i32);
  v41 = vmul_n_f32(v34, *v10.i32 + *v10.i32);
  v42 = vmul_n_f32(v35, *v10.i32 + *v10.i32);
  v43 = vmul_n_f32(v35, *v11.i32 + *v11.i32);
  __asm { FMOV            V10.2S, #1.0 }

  v49 = vsub_f32(_D10, vdup_lane_s32(v9, 0));
  *v50.i8 = vext_s8(vsub_f32(vsub_f32(_D10, v36), v37), vadd_f32(v38, v43), 4uLL);
  v50.i64[1] = vsub_f32(v39, v42).u32[0];
  *v51.i8 = vext_s8(vsub_f32(v38, v43), vsub_f32(v49, v37), 4uLL);
  v51.i64[1] = vadd_f32(v40, v41).u32[0];
  v275 = v50;
  v276 = v51;
  *v51.i8 = vext_s8(vadd_f32(v39, v42), vsub_f32(v41, v40), 4uLL);
  v51.i64[1] = vsub_f32(v49, v36).u32[0];
  v277 = v51;
  v278 = v33;
  if (*(a3 + 4) == 1.0 && *(a3 + 8) == 1.0)
  {
    v16 = *(a3 + 12) == 1.0;
  }

  v288 = 0;
  v295 = v13 + 32;
  v297 = *(v13 + 72) + 20 * *(v13 + 71);
  v298 = *(v13 + 70);
  v52.i64[0] = *(v13 + 92);
  v52.i64[1] = *(v13 + 100);
  v53 = vmulq_f32(v19, v52);
  v284 = 0uLL;
  v287 = 0;
  *v53.i8 = vpmin_f32(vdup_laneq_s32(v53, 2), *v53.i8);
  v54 = vpmin_f32(*v53.i8, *v53.i8).f32[0];
  v55 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, v54);
  v285 = v55;
  v286 = 0.025 * v54;
  if (v16)
  {
    v289 = xmmword_1E3047670;
    v290 = xmmword_1E3047680;
    v291 = xmmword_1E30476A0;
    v292 = xmmword_1E3047670;
    v293 = xmmword_1E3047680;
    v294 = xmmword_1E30476A0;
  }

  else
  {
    v56 = vrecpeq_f32(v19);
    v57 = 4;
    do
    {
      v56 = vmulq_f32(v56, vrecpsq_f32(v56, v19));
      --v57;
    }

    while (v57);
    *v58.f32 = vdup_lane_s32(*v18.f32, 0);
    v58.i64[1] = v58.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v58, v19)), *v33.f32).u32[0] & 0xFFFFFF) != 0)
    {
      v65 = vdup_lane_s32(*v20.f32, 1);
      v66 = vdup_laneq_s32(v20, 2);
      v67 = vdup_laneq_s32(v20, 3);
      v68 = vaddq_f32(v20, v20);
      v69 = vmul_lane_f32(v65, *v68.f32, 1);
      v70 = vmul_laneq_f32(v66, v68, 2);
      v71 = vmul_n_f32(v65, v68.f32[0]);
      v72 = vmul_n_f32(v66, v68.f32[0]);
      v73 = vmul_n_f32(v67, v68.f32[0]);
      v74 = vmul_lane_f32(v66, *v68.f32, 1);
      v75 = vmul_lane_f32(v67, *v68.f32, 1);
      v76 = vmul_laneq_f32(v67, v68, 2);
      v77 = vsub_f32(_D10, vdup_lane_s32(vmul_f32(*v20.f32, *v68.f32), 0));
      v78 = vsub_f32(vsub_f32(_D10, v69), v70);
      v79 = vadd_f32(v71, v76);
      v80 = vsub_f32(v72, v75);
      *v68.f32 = vsub_f32(v71, v76);
      v81 = vsub_f32(v77, v70);
      v82 = vadd_f32(v74, v73);
      v83 = vadd_f32(v72, v75);
      v84 = vsub_f32(v74, v73);
      v85 = vext_s8(v83, v84, 4uLL);
      *v86.f32 = vext_s8(v78, *&vdupq_lane_s32(*v68.f32, 1), 4uLL);
      v86.i64[1] = vdup_lane_s32(v85, 0).u32[0];
      v87 = vsub_f32(v77, v69);
      *v88.f32 = vext_s8(*&vdupq_lane_s32(v79, 0), v81, 4uLL);
      v88.i64[1] = vdup_lane_s32(v85, 1).u32[0];
      *v89.f32 = vext_s8(*&vdupq_lane_s32(v80, 0), v82, 4uLL);
      v89.i64[1] = vdup_lane_s32(v87, 0).u32[0];
      v90 = vmulq_n_f32(v86, v18.f32[0]);
      v90.i32[3] = 0;
      v91 = vmulq_lane_f32(v88, *v18.f32, 1);
      v91.i32[3] = 0;
      v92 = vmulq_laneq_f32(v89, v18, 2);
      v92.i32[3] = 0;
      v93 = vmulq_lane_f32(v90, v78, 1);
      v93.i32[3] = 0;
      v94 = vmulq_n_f32(v91, *v79.i32);
      v94.i32[3] = 0;
      v95 = vmulq_n_f32(v92, *v80.i32);
      v95.i32[3] = 0;
      v59 = vaddq_f32(v95, vaddq_f32(v93, v94));
      v96 = vmulq_lane_f32(v90, *v68.f32, 1);
      v96.i32[3] = 0;
      v97 = vmulq_n_f32(v91, *v81.i32);
      v97.i32[3] = 0;
      v98 = vmulq_n_f32(v92, *v82.i32);
      v98.i32[3] = 0;
      v99 = vaddq_f32(v96, v97);
      v100 = vmulq_lane_f32(v90, v83, 1);
      v100.i32[3] = 0;
      v101 = vmulq_n_f32(v91, *v84.i32);
      v101.i32[3] = 0;
      v102 = vmulq_n_f32(v92, *v87.i32);
      v102.i32[3] = 0;
      v60 = vaddq_f32(v98, v99);
      v61 = vaddq_f32(v102, vaddq_f32(v100, v101));
      v289 = v59;
      v290 = v60;
      v291 = v61;
      v103 = vmulq_n_f32(v86, v56.f32[0]);
      v103.i32[3] = 0;
      v104 = vmulq_lane_f32(v88, *v56.f32, 1);
      v104.i32[3] = 0;
      v105 = vmulq_laneq_f32(v89, v56, 2);
      v105.i32[3] = 0;
      v106 = vmulq_lane_f32(v103, v78, 1);
      v106.i32[3] = 0;
      v107 = vmulq_n_f32(v104, *v79.i32);
      v107.i32[3] = 0;
      v108 = vmulq_n_f32(v105, *v80.i32);
      v108.i32[3] = 0;
      v62 = vaddq_f32(v108, vaddq_f32(v106, v107));
      v109 = vmulq_lane_f32(v103, *v68.f32, 1);
      v109.i32[3] = 0;
      v110 = vmulq_n_f32(v104, *v81.i32);
      v110.i32[3] = 0;
      v111 = vmulq_n_f32(v105, *v82.i32);
      v111.i32[3] = 0;
      v112 = vaddq_f32(v109, v110);
      v113 = vmulq_lane_f32(v103, v83, 1);
      v113.i32[3] = 0;
      v114 = vmulq_n_f32(v104, *v84.i32);
      v114.i32[3] = 0;
      v63 = vaddq_f32(v111, v112);
      v115 = vmulq_n_f32(v105, *v87.i32);
      v115.i32[3] = 0;
      v64 = vaddq_f32(v115, vaddq_f32(v113, v114));
    }

    else
    {
      v56.i32[3] = 0;
      v59 = vmulq_f32(v19, xmmword_1E3047670);
      v60 = vmulq_f32(v19, xmmword_1E3047680);
      v61 = vmulq_f32(v19, xmmword_1E30476A0);
      v289 = v59;
      v290 = v60;
      v291 = v61;
      v62 = vmulq_f32(v56, xmmword_1E3047670);
      v63 = vmulq_f32(v56, xmmword_1E3047680);
      v64 = vmulq_f32(v56, xmmword_1E30476A0);
    }

    v293 = v63;
    v294 = v64;
    v116 = vmulq_f32(v59, 0);
    v116.i32[3] = 0;
    v117 = vmulq_f32(v60, 0);
    v117.i32[3] = 0;
    v118 = vmulq_f32(v61, 0);
    v118.i32[3] = 0;
    v292 = v62;
    v284 = vaddq_f32(v118, vaddq_f32(v117, v116));
  }

  v119 = a7;
  v119.i32[2] = v17;
  v120 = vdup_laneq_s32(v119, 2);
  v119.i32[3] = 0;
  v296 = *(v13 + 80);
  v272 = 3;
  v273 = 0;
  v268[0] = 0;
  v268[1] = 0;
  v274 = v119;
  v121 = vpmin_f32(v120, *a7.i8);
  v122 = vpmin_f32(v121, v121);
  v120.f32[0] = 0.15 * *v122.i32;
  *v122.i32 = 0.05 * *v122.i32;
  v269 = v120.i32[0];
  v270 = v122.i32[0];
  v271 = v122.i32[0];
  v262 = v268;
  v263 = &v275;
  v267 = v278;
  v123 = vzip1q_s32(v275, v277);
  v124 = vzip1q_s32(v276, 0);
  v264 = vzip1q_s32(v123, v124);
  v265 = vzip2q_s32(v123, v124);
  v266 = vzip1q_s32(vzip2q_s32(v275, v277), vzip2q_s32(v276, 0));
  v260 = &v284;
  v261 = &unk_1F5D21AE0;
  v259 = &unk_1F5D21818;
  v125 = vmulq_f32(v33, v33);
  v125.i64[0] = vpaddq_f32(v125, v125).u64[0];
  v281 = 0;
  v126 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v125.f32, *v125.f32)), 0)), v33, xmmword_1E3047670);
  v280 = v126;
  v127 = vmulq_f32(v126, v126);
  v128 = vpaddq_f32(v127, v127);
  *v128.f32 = vpadd_f32(*v128.f32, *v128.f32);
  v129 = vrsqrte_f32(*v128.f32);
  v130 = 4;
  do
  {
    v129 = vmul_f32(v129, vrsqrts_f32(vmul_f32(v129, v129), *v128.f32));
    --v130;
  }

  while (v130);
  v131 = vbsl_s8(vdup_lane_s32(vceqz_f32(*v128.f32), 0), *v128.f32, vmul_f32(*v128.f32, v129));
  *v128.f32 = vrecpe_f32(v131);
  v132 = 4;
  do
  {
    *v128.f32 = vmul_f32(*v128.f32, vrecps_f32(v131, *v128.f32));
    --v132;
  }

  while (v132);
  v133 = vmulq_n_f32(v126, v128.f32[0]);
  v133.i32[3] = 0;
  v134 = vmul_f32(vmin_f32(vdup_lane_s32(v122, 0), vdup_lane_s32(v55, 1)), vdup_n_s32(0x3DCCCCCDu));
  *v128.f32 = vdup_n_s32(0x358637BDu);
  v135 = vmax_f32(v134, *v128.f32);
  v134.i32[0] = -v288;
  v136 = vdup_lane_s32(vand_s8(v134, v55), 0);
  v137 = vadd_f32(v136, 0);
  v138 = vneg_f32(0x80000000800000);
  v139 = vdup_n_s32(0x3F7FF141u);
  v128.i32[0] = -1;
  v254 = v128;
  do
  {
    v258 = v133;
    v279 = v126;
    v140 = vnegq_f32(v126);
    v141 = vmulq_n_f32(v264, v140.f32[0]);
    v141.i32[3] = 0;
    v142 = vmulq_lane_f32(v265, *v140.f32, 1);
    v142.i32[3] = 0;
    v143 = vmulq_laneq_f32(v266, v140, 2);
    v143.i32[3] = 0;
    v144 = vcgtzq_f32(vaddq_f32(vaddq_f32(v141, v142), v143));
    v145 = v262[3];
    v146 = vnegq_f32(v145);
    v146.i32[3] = 0;
    v147 = vbslq_s8(v144, v145, v146);
    v148 = vmulq_n_f32(*v263, v147.f32[0]);
    v148.i32[3] = 0;
    v149 = v138;
    v150 = vmulq_lane_f32(v263[1], *v147.f32, 1);
    v150.i32[3] = 0;
    v151 = vmulq_laneq_f32(v263[2], v147, 2);
    v151.i32[3] = 0;
    v257 = vaddq_f32(v263[3], vaddq_f32(v151, vaddq_f32(v148, v150)));
    *v152.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(&v259, &v280);
    v153 = v152;
    v126 = vsubq_f32(v257, v152);
    v154 = vmulq_f32(v258, v126);
    v154.i64[0] = vpaddq_f32(v154, v154).u64[0];
    v155 = vpadd_f32(*v154.f32, *v154.f32);
    v156 = vcgt_f32(v155, v136);
    if ((vmvn_s8(v156).u8[0] & 1) == 0)
    {
      goto LABEL_69;
    }

    v157 = v281;
    if (vuzp1_s8(vdup_lane_s16(vand_s8(v156, vcgt_f32(v155, vmul_f32(v149, v139))), 0), *v126.f32).u32[0] == -1)
    {
      if (v281 == 3)
      {
        v282 = 0;
        v283 = 0;
        physx::Gu::barycentricCoordinates(&v280, &v305, &v306, v307, &v283, &v282);
      }

LABEL_69:
      v245 = 0;
      goto LABEL_70;
    }

    *(&v302 + v281) = v257;
    *(&v299 + v157) = v153;
    v281 = v157 + 1;
    *(&v305 + v157) = v126;
    switch(v157)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v305, &v302, &v299, &v281);
        break;
      case 2:
        v126 = v305;
        v166 = vsubq_f32(v306, v305);
        v167 = vsubq_f32(v307[0], v305);
        v169 = vmls_f32(vmul_f32(*v166.f32, *&vextq_s8(v167, v167, 4uLL)), *&vextq_s8(v166, v166, 4uLL), *v167.f32);
        *v168.f32 = vext_s8(v169, vmls_f32(vmul_f32(*&vextq_s8(v166, v166, 8uLL), *v167.f32), *v166.f32, *&vextq_s8(v167, v167, 8uLL)), 4uLL);
        v169.i32[1] = 0;
        v281 = 3;
        v170 = vpadd_f32(vmul_f32(*v168.f32, *v168.f32), vmul_f32(v169.u32[0], v169.u32[0]));
        v171 = vpadd_f32(v170, v170);
        if (v171.f32[0] <= 0.00000011921)
        {
          v281 = 2;
          v208 = vmulq_f32(v166, v166);
          v208.i64[0] = vpaddq_f32(v208, v208).u64[0];
          v209 = vpadd_f32(*v208.f32, *v208.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v209), 0), *v305.f32).u32[0] == -1)
          {
LABEL_45:
            v281 = 1;
            break;
          }

          v210 = vnegq_f32(v305);
          v210.i32[3] = 0;
          v211 = vmulq_f32(v210, v166);
          v211.i64[0] = vpaddq_f32(v211, v211).u64[0];
          v212 = vpadd_f32(*v211.f32, *v211.f32);
          v213 = vrecpe_f32(v209);
          v214 = 4;
          do
          {
            v213 = vmul_f32(v213, vrecps_f32(v209, v213));
            --v214;
          }

          while (v214);
          v126 = vmlaq_n_f32(v305, v166, vmax_f32(vmin_f32(vmul_f32(v212, v213), _D10), 0).f32[0]);
          goto LABEL_44;
        }

        *&v168.u32[2] = v169;
        v172 = vextq_s8(v306, v306, 8uLL).u64[0];
        v173 = vextq_s8(v307[0], v307[0], 8uLL).u64[0];
        v174 = vextq_s8(v307[0], v307[0], 4uLL).u64[0];
        v175 = vextq_s8(v306, v306, 4uLL).u64[0];
        v176 = vmls_f32(vmul_f32(*v306.f32, v174), v175, *v307[0].f32);
        *v177.f32 = vext_s8(v176, vmls_f32(vmul_f32(v172, *v307[0].f32), *v306.f32, v173), 4uLL);
        v177.i64[1] = v176.u32[0];
        v178 = vextq_s8(v305, v305, 8uLL).u64[0];
        v179 = vextq_s8(v305, v305, 4uLL).u64[0];
        v180 = vmls_f32(vmul_f32(v179, *v307[0].f32), v174, *v305.f32);
        *v181.f32 = vext_s8(v180, vmls_f32(vmul_f32(*v305.f32, v173), *v307[0].f32, v178), 4uLL);
        v181.i64[1] = v180.u32[0];
        v182 = vmls_f32(vmul_f32(*v305.f32, v175), v179, *v306.f32);
        *v183.f32 = vext_s8(v182, vmls_f32(vmul_f32(v178, *v306.f32), *v305.f32, v172), 4uLL);
        v183.i64[1] = v182.u32[0];
        v184 = vmulq_f32(v177, v168);
        v184.i64[0] = vpaddq_f32(v184, v184).u64[0];
        v185 = vpadd_f32(*v184.f32, *v184.f32);
        v186 = vmulq_f32(v181, v168);
        v186.i64[0] = vpaddq_f32(v186, v186).u64[0];
        v187 = vpadd_f32(*v186.f32, *v186.f32);
        v188 = vmulq_f32(v183, v168);
        v188.i64[0] = vpaddq_f32(v188, v188).u64[0];
        v189 = vpadd_f32(*v188.f32, *v188.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v187), vcgez_f32(v185)), vcgez_f32(v189)), 0), *v305.f32).u32[0] != -1)
        {
          v190 = vnegq_f32(v305);
          v190.i32[3] = 0;
          v191 = vnegq_f32(v306);
          v191.i32[3] = 0;
          v192 = vmulq_f32(v190, v166);
          v192.i64[0] = vpaddq_f32(v192, v192).u64[0];
          v193 = vpadd_f32(*v192.f32, *v192.f32);
          v194 = vmulq_f32(v166, v191);
          v194.i64[0] = vpaddq_f32(v194, v194).u64[0];
          v195 = vpadd_f32(*v194.f32, *v194.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v189), vand_s8(vclez_f32(v195), vcgez_f32(v193))), 0), *v305.f32).u32[0] == -1)
          {
            v219 = vsub_f32(v193, v195);
            v220 = vrecpe_f32(v219);
            v221 = 4;
            do
            {
              v220 = vmul_f32(v220, vrecps_f32(v219, v220));
              --v221;
            }

            while (v221);
            v207 = 0;
            v126 = vmlaq_n_f32(v305, v166, vmul_f32(v193, vbsl_s8(vcgt_f32(vabs_f32(v219), 0x3400000034000000), v220, 0)).f32[0]);
            v126.i64[1] = vextq_s8(v126, v126, 8uLL).u32[0];
            v206 = 2;
LABEL_52:
            v222 = &v300;
            v223 = &v303;
            v224 = &v306;
          }

          else
          {
            v196 = vnegq_f32(v307[0]);
            v196.i32[3] = 0;
            v197 = vmulq_f32(v191, v167);
            v197.i64[0] = vpaddq_f32(v197, v197).u64[0];
            v198 = vpadd_f32(*v197.f32, *v197.f32);
            v199 = vmulq_f32(v166, v196);
            v199.i64[0] = vpaddq_f32(v199, v199).u64[0];
            v200 = vpadd_f32(*v199.f32, *v199.f32);
            v201 = vmulq_f32(v167, v196);
            v201.i64[0] = vpaddq_f32(v201, v201).u64[0];
            v202 = vpadd_f32(*v201.f32, *v201.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v198, v195), vcge_f32(v200, v202)), vclez_f32(v185)), 0), *v305.f32).u32[0] == -1)
            {
              v225 = vsub_f32(v198, v195);
              v226 = vadd_f32(v225, vsub_f32(v200, v202));
              v227 = vrecpe_f32(v226);
              v228 = 4;
              do
              {
                v227 = vmul_f32(v227, vrecps_f32(v226, v227));
                --v228;
              }

              while (v228);
              v229 = vmlaq_n_f32(v306, vsubq_f32(v307[0], v306), vmul_f32(v225, vbsl_s8(vcgt_f32(vabs_f32(v226), 0x3400000034000000), v227, 0)).f32[0]);
              v206 = 2;
              v222 = v301;
              v229.i64[1] = vextq_s8(v229, v229, 8uLL).u32[0];
              v223 = v304;
              v224 = v307;
              v207 = 1;
              v126 = v229;
            }

            else
            {
              v203 = vmulq_f32(v190, v167);
              v203.i64[0] = vpaddq_f32(v203, v203).u64[0];
              v204 = vpadd_f32(*v203.f32, *v203.f32);
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v187), vand_s8(vclez_f32(v202), vcgez_f32(v204))), 0), *v305.f32).u32[0] != -1)
              {
                if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v204), vclez_f32(v193)), 0), *v305.f32).u32[0] == -1)
                {
                  v207 = 0;
                  v206 = 1;
                }

                else
                {
                  *v126.f32 = vdup_lane_s16(vand_s8(vcge_f32(v195, v198), vcgez_f32(v195)), 0);
                  *v126.f32 = vuzp1_s8(*v126.f32, *v126.f32);
                  v205 = v126.i32[0];
                  v206 = 1;
                  v126 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v126, v254), 0), v306, v307[0]);
                  if (v205 == -1)
                  {
                    v207 = 1;
                  }

                  else
                  {
                    v207 = 2;
                  }
                }

                goto LABEL_52;
              }

              v230 = vsub_f32(v204, v202);
              v231 = vrecpe_f32(v230);
              v232 = 4;
              do
              {
                v231 = vmul_f32(v231, vrecps_f32(v230, v231));
                --v232;
              }

              while (v232);
              v207 = 0;
              v126 = vmlaq_n_f32(v305, v167, vmul_f32(v204, vbsl_s8(vcgt_f32(vabs_f32(v230), 0x3400000034000000), v231, 0)).f32[0]);
              v126.i64[1] = vextq_s8(v126, v126, 8uLL).u32[0];
              v206 = 2;
              v222 = v301;
              v223 = v304;
              v224 = v307;
            }
          }

          v233 = *(&v302 + v207);
          v234 = *v224;
          v235 = *v223;
          v236 = *(&v299 + v207);
          v237 = *v222;
          v305 = *(&v305 + v207);
          v306 = v234;
          v302 = v233;
          v303 = v235;
          v299 = v236;
          v300 = v237;
          v281 = v206;
          break;
        }

        v215 = vmulq_f32(v305, v168);
        v216 = vrecpe_f32(v171);
        v217 = 4;
        do
        {
          v216 = vmul_f32(v216, vrecps_f32(v171, v216));
          --v217;
        }

        while (v217);
        v218 = vpaddq_f32(v215, v215).u64[0];
        v126 = vmulq_n_f32(v168, vmul_f32(v216, vpadd_f32(v218, v218)).f32[0]);
        v126.i32[3] = 0;
        break;
      case 1:
        v126 = v305;
        v158 = vsubq_f32(v306, v305);
        v159 = vmulq_f32(v158, v158);
        v159.i64[0] = vpaddq_f32(v159, v159).u64[0];
        v160 = vpadd_f32(*v159.f32, *v159.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v160), 0), *v305.f32).u32[0] == -1)
        {
          goto LABEL_45;
        }

        v161 = vnegq_f32(v305);
        v161.i32[3] = 0;
        v162 = vmulq_f32(v161, v158);
        v162.i64[0] = vpaddq_f32(v162, v162).u64[0];
        v163 = vpadd_f32(*v162.f32, *v162.f32);
        v164 = vrecpe_f32(v160);
        v165 = 4;
        do
        {
          v164 = vmul_f32(v164, vrecps_f32(v160, v164));
          --v165;
        }

        while (v165);
        v126 = vmlaq_n_f32(v305, v158, vmax_f32(vmin_f32(vmul_f32(v163, v164), _D10), 0).f32[0]);
LABEL_44:
        v126.i64[1] = vextq_s8(v126, v126, 8uLL).u32[0];
        break;
    }

    v280 = v126;
    v238 = vmulq_f32(v126, v126);
    v238.i64[0] = vpaddq_f32(v238, v238).u64[0];
    v239 = vpadd_f32(*v238.f32, *v238.f32);
    v240 = vrsqrte_f32(v239);
    v241 = 4;
    do
    {
      v240 = vmul_f32(v240, vrsqrts_f32(vmul_f32(v240, v240), v239));
      --v241;
    }

    while (v241);
    v138 = vbsl_s8(vdup_lane_s32(vceqz_f32(v239), 0), v239, vmul_f32(v239, v240));
    v242 = vrecpe_f32(v138);
    v243 = 4;
    do
    {
      v242 = vmul_f32(v242, vrecps_f32(v138, v242));
      --v243;
    }

    while (v243);
    v133 = vmulq_n_f32(v126, v242.f32[0]);
    v133.i32[3] = 0;
    v244 = vcgt_f32(v149, v138);
  }

  while (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v138, v135), v244), 0), *v126.f32).u32[0] == -1);
  v247 = vdup_lane_s16(v244, 0);
  if (vuzp1_s8(v247, v247).u32[0] == -1)
  {
    v245 = 1;
  }

  else
  {
    f32 = v262[1].f32;
    v249 = vld1_dup_f32(f32);
    v250 = v260[1].f32;
    v251 = vld1_dup_f32(v250);
    v252 = vbsl_s8(vdup_lane_s32(vcgtz_f32(v136), 0), v137, vmul_f32(vmin_f32(v249, v251), vdup_n_s32(0x3E4CCCCDu)));
    if (v281 == 3)
    {
      v282 = 0;
      v283 = 0;
      physx::Gu::barycentricCoordinates(&v279, &v305, &v306, v307, &v283, &v282);
    }

    v245 = vcgt_f32(vmax_f32(vsub_f32(v149, v137), 0), v252).u8[0] ^ 1;
  }

  if (a5 && (v245 & 1) != 0)
  {
    *a5 = v256;
    a5[2] = v255;
    v246 = 2;
    v245 = 1;
    goto LABEL_82;
  }

LABEL_70:
  if (!a5)
  {
    return v245 & 1;
  }

  if (v245)
  {
    v246 = 2;
  }

  else
  {
    v246 = 0;
  }

LABEL_82:
  *(a5 + 6) = v246;
  return v245 & 1;
}

uint64_t GeomOverlapCallback_ConvexConvex(uint64_t a1, int8x8_t *a2, uint64_t a3, float32x4_t *a4, uint64_t a5)
{
  v357 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = *(a3 + 32);
  v7 = *(a1 + 4);
  v8 = v7;
  v8.i32[3] = 0;
  v9 = *(a1 + 16);
  v10 = *(a3 + 4);
  v11 = *(a3 + 16);
  *v12.f32 = a2[2];
  v12.i64[1] = a2[3].u32[0];
  v13.i64[0] = a4[1].i64[0];
  v13.i64[1] = a4[1].u32[2];
  v14 = vnegq_f32(*a4);
  v15 = vsubq_f32(v12, v13);
  v16 = v14;
  v16.i32[3] = 0;
  v17 = vdupq_laneq_s32(*a4, 3).u64[0];
  v18 = vmulq_n_f32(v15, vmla_f32(0xBF000000BF000000, v17, v17).f32[0]);
  v18.i32[3] = 0;
  v19 = vextq_s8(v16, v16, 8uLL).u64[0];
  v20 = vext_s8(*v14.f32, v19, 4uLL);
  v21 = vmls_f32(vmul_f32(*v14.f32, *&vextq_s8(v15, v15, 4uLL)), v20, *v15.f32);
  *v22.f32 = vext_s8(v21, vmls_f32(vmul_f32(v19, *v15.f32), *v14.f32, *&vextq_s8(v15, v15, 8uLL)), 4uLL);
  v22.i64[1] = v21.u32[0];
  v23 = vmlaq_laneq_f32(v18, v22, *a4, 3);
  v23.i64[1] = vextq_s8(v23, v23, 8uLL).u32[0];
  v24 = vmulq_f32(v16, v15);
  v24.i64[0] = vpaddq_f32(v24, v24).u64[0];
  v25 = vmlaq_n_f32(v23, v16, vpadd_f32(*v24.f32, *v24.f32).f32[0]);
  v26 = vaddq_f32(v25, v25);
  v26.i32[3] = 0;
  v27 = *a2->i8;
  v27.i32[3] = 0;
  v28 = vmulq_f32(v27, v16);
  v28.i64[0] = vpaddq_f32(v28, v28).u64[0];
  v29 = vmulq_laneq_f32(v27, *a4, 3);
  v27.i64[0] = vextq_s8(v27, v27, 8uLL).u64[0];
  v30 = vmls_f32(vmul_f32(vext_s8(*a2, *v27.f32, 4uLL), *v14.f32), v20, *a2);
  *v31.f32 = vext_s8(v30, vmls_f32(vmul_f32(*a2, v19), *v14.f32, *v27.f32), 4uLL);
  *&v31.u32[2] = v30;
  v32 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v16, *a2->i8, 3), v29), v31);
  *v14.f32 = vdup_lane_s32(*v32.f32, 1);
  *v29.f32 = vdup_laneq_s32(v32, 2);
  v33 = vaddq_f32(v32, v32);
  *v16.f32 = vsub_f32(vmul_f32(*&vextq_s8(*a2->i8, *a2->i8, 8uLL), *&vextq_s8(*a4, *a4, 8uLL)), vpadd_f32(*v28.f32, *v28.f32));
  v34 = vdup_laneq_s32(v33, 2);
  *v32.f32 = vdup_lane_s32(vmul_f32(*v32.f32, *v33.f32), 0);
  v35 = vmul_lane_f32(*v14.f32, *v33.f32, 1);
  v36 = vmul_laneq_f32(*v29.f32, v33, 2);
  *v14.f32 = vmul_n_f32(*v14.f32, v33.f32[0]);
  v37 = vmul_n_f32(*v29.f32, v33.f32[0]);
  v38 = vmul_lane_f32(vdup_lane_s32(*v33.f32, 0), *v16.f32, 1);
  *v29.f32 = vmul_lane_f32(*v29.f32, *v33.f32, 1);
  *v33.f32 = vmul_lane_f32(vdup_lane_s32(*v33.f32, 1), *v16.f32, 1);
  *v16.f32 = vmul_lane_f32(v34, *v16.f32, 1);
  __asm { FMOV            V8.2S, #1.0 }

  *v44.i8 = vext_s8(vsub_f32(vsub_f32(_D8, v35), v36), vadd_f32(*v14.f32, *v16.f32), 4uLL);
  v44.i64[1] = vsub_f32(v37, *v33.f32).u32[0];
  *v32.f32 = vsub_f32(_D8, *v32.f32);
  *v14.f32 = vext_s8(vsub_f32(*v14.f32, *v16.f32), vsub_f32(*v32.f32, v36), 4uLL);
  v14.i64[1] = vadd_f32(*v29.f32, v38).u32[0];
  *v29.f32 = vext_s8(vadd_f32(v37, *v33.f32), vsub_f32(*v29.f32, v38), 4uLL);
  v29.i64[1] = vsub_f32(*v32.f32, v35).u32[0];
  v310 = v44;
  v311 = v14;
  v312 = v29;
  v313 = v26;
  v45 = *(a1 + 4) == 1.0 && *(a1 + 8) == 1.0 && *(a1 + 12) == 1.0;
  v337 = 0;
  v344 = v5 + 32;
  v346 = *(v5 + 72) + 20 * *(v5 + 71);
  v347 = *(v5 + 70);
  v46.i64[0] = *(v5 + 92);
  v46.i64[1] = *(v5 + 100);
  v47 = vmulq_f32(v8, v46);
  v334 = 0u;
  v48 = vpmin_f32(vdup_laneq_s32(v47, 2), *v47.i8);
  v49 = vpmin_f32(v48, v48).f32[0];
  v50 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, v49);
  v335 = v50;
  v336 = COERCE_UNSIGNED_INT(0.025 * v49);
  if (v45)
  {
    v338 = xmmword_1E3047670;
    v339 = xmmword_1E3047680;
    v340 = xmmword_1E30476A0;
    v341 = xmmword_1E3047670;
    v342 = xmmword_1E3047680;
    v343 = xmmword_1E30476A0;
  }

  else
  {
    v51 = vrecpeq_f32(v8);
    v52 = 4;
    do
    {
      v51 = vmulq_f32(v51, vrecpsq_f32(v51, v8));
      --v52;
    }

    while (v52);
    *v53.f32 = vdup_lane_s32(*v7.f32, 0);
    v53.i64[1] = v53.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v53, v8)), *v10.f32).u32[0] & 0xFFFFFF) != 0)
    {
      v59 = vdup_lane_s32(*v9.f32, 1);
      v60 = vdup_laneq_s32(v9, 2);
      v61 = vdup_laneq_s32(v9, 3);
      v62 = vaddq_f32(v9, v9);
      v63 = vmul_lane_f32(v59, *v62.f32, 1);
      v64 = vmul_laneq_f32(v60, v62, 2);
      v65 = vmul_n_f32(v59, v62.f32[0]);
      v66 = vmul_n_f32(v60, v62.f32[0]);
      v67 = vmul_n_f32(v61, v62.f32[0]);
      v68 = vmul_lane_f32(v60, *v62.f32, 1);
      v69 = vmul_lane_f32(v61, *v62.f32, 1);
      v70 = vmul_laneq_f32(v61, v62, 2);
      v71 = vsub_f32(_D8, vdup_lane_s32(vmul_f32(*v9.f32, *v62.f32), 0));
      v72 = vsub_f32(vsub_f32(_D8, v63), v64);
      *v62.f32 = vadd_f32(v65, v70);
      v73 = vsub_f32(v66, v69);
      v74 = vsub_f32(v65, v70);
      v75 = vadd_f32(v66, v69);
      v76 = vsub_f32(v68, v67);
      v77 = vext_s8(v75, v76, 4uLL);
      v78 = vsub_f32(v71, v64);
      *v79.f32 = vext_s8(v72, *&vdupq_lane_s32(v74, 1), 4uLL);
      v79.i64[1] = vdup_lane_s32(v77, 0).u32[0];
      v80 = vsub_f32(v71, v63);
      *v81.f32 = vext_s8(*&vdupq_lane_s32(*v62.f32, 0), v78, 4uLL);
      v81.i64[1] = vdup_lane_s32(v77, 1).u32[0];
      v82 = vadd_f32(v68, v67);
      *v83.f32 = vext_s8(*&vdupq_lane_s32(v73, 0), v82, 4uLL);
      v83.i64[1] = vdup_lane_s32(v80, 0).u32[0];
      v84 = vmulq_n_f32(v79, v7.f32[0]);
      v84.i32[3] = 0;
      v85 = vmulq_lane_f32(v81, *v7.f32, 1);
      v85.i32[3] = 0;
      v86 = vmulq_laneq_f32(v83, v7, 2);
      v86.i32[3] = 0;
      v87 = vmulq_lane_f32(v84, v72, 1);
      v87.i32[3] = 0;
      v88 = vmulq_n_f32(v85, v62.f32[0]);
      v88.i32[3] = 0;
      v89 = vmulq_n_f32(v86, *v73.i32);
      v89.i32[3] = 0;
      v54 = vaddq_f32(v89, vaddq_f32(v87, v88));
      v90 = vmulq_lane_f32(v84, v74, 1);
      v90.i32[3] = 0;
      v91 = vmulq_n_f32(v85, *v78.i32);
      v91.i32[3] = 0;
      v92 = vmulq_n_f32(v86, *v82.i32);
      v92.i32[3] = 0;
      v55 = vaddq_f32(v92, vaddq_f32(v90, v91));
      v93 = vmulq_lane_f32(v84, v75, 1);
      v93.i32[3] = 0;
      v94 = vmulq_n_f32(v85, *v76.i32);
      v94.i32[3] = 0;
      v95 = vmulq_n_f32(v86, *v80.i32);
      v95.i32[3] = 0;
      v56 = vaddq_f32(v95, vaddq_f32(v93, v94));
      v338 = v54;
      v339 = v55;
      v96 = vmulq_n_f32(v79, v51.f32[0]);
      v96.i32[3] = 0;
      v97 = vmulq_lane_f32(v81, *v51.f32, 1);
      v97.i32[3] = 0;
      v98 = vmulq_laneq_f32(v83, v51, 2);
      v98.i32[3] = 0;
      v99 = vmulq_lane_f32(v96, v72, 1);
      v99.i32[3] = 0;
      v100 = vmulq_n_f32(v97, v62.f32[0]);
      v100.i32[3] = 0;
      v101 = vmulq_n_f32(v98, *v73.i32);
      v101.i32[3] = 0;
      v102 = vaddq_f32(v101, vaddq_f32(v99, v100));
      v103 = vmulq_lane_f32(v96, v74, 1);
      v103.i32[3] = 0;
      v104 = vmulq_n_f32(v97, *v78.i32);
      v104.i32[3] = 0;
      v105 = vmulq_n_f32(v98, *v82.i32);
      v105.i32[3] = 0;
      v106 = vmulq_lane_f32(v96, v75, 1);
      v106.i32[3] = 0;
      v107 = vmulq_n_f32(v97, *v76.i32);
      v107.i32[3] = 0;
      v108 = vmulq_n_f32(v98, *v80.i32);
      v108.i32[3] = 0;
      v57 = vaddq_f32(v105, vaddq_f32(v103, v104));
      v58 = vaddq_f32(v108, vaddq_f32(v106, v107));
      v340 = v56;
      v341 = v102;
    }

    else
    {
      v51.i32[3] = 0;
      v54 = vmulq_f32(v8, xmmword_1E3047670);
      v55 = vmulq_f32(v8, xmmword_1E3047680);
      v56 = vmulq_f32(v8, xmmword_1E30476A0);
      v338 = v54;
      v339 = v55;
      v57 = vmulq_f32(v51, xmmword_1E3047680);
      v58 = vmulq_f32(v51, xmmword_1E30476A0);
      v340 = v56;
      v341 = vmulq_f32(v51, xmmword_1E3047670);
    }

    v342 = v57;
    v343 = v58;
    v109 = vmulq_f32(v54, 0);
    v109.i32[3] = 0;
    v110 = vmulq_f32(v55, 0);
    v110.i32[3] = 0;
    v111 = vmulq_f32(v56, 0);
    v111.i32[3] = 0;
    v334 = vaddq_f32(v111, vaddq_f32(v110, v109));
  }

  v112 = v10;
  v112.i32[3] = 0;
  v345 = *(v5 + 80);
  v113 = *(a3 + 4) == 1.0 && *(a3 + 8) == 1.0 && *(a3 + 12) == 1.0;
  v323 = 0;
  v330 = v6 + 32;
  v332 = *(v6 + 72) + 20 * *(v6 + 71);
  v333 = *(v6 + 70);
  v114.i64[0] = *(v6 + 92);
  v114.i32[2] = *(v6 + 100);
  v319 = 0u;
  v322 = 0;
  v114.i64[1] = v114.u32[2];
  v115 = vmulq_f32(v112, v114);
  *v115.i8 = vpmin_f32(vdup_laneq_s32(v115, 2), *v115.i8);
  v114.f32[0] = vpmin_f32(*v115.i8, *v115.i8).f32[0];
  v116 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, v114.f32[0]);
  v320 = v116;
  v321 = 0.025 * v114.f32[0];
  if (v113)
  {
    v117 = a5;
    v324 = xmmword_1E3047670;
    v325 = xmmword_1E3047680;
    v326 = xmmword_1E30476A0;
    v327 = xmmword_1E3047670;
    v328 = xmmword_1E3047680;
    v329 = xmmword_1E30476A0;
  }

  else
  {
    v118 = vrecpeq_f32(v112);
    v119 = 4;
    do
    {
      v118 = vmulq_f32(v118, vrecpsq_f32(v118, v112));
      --v119;
    }

    while (v119);
    *v120.f32 = vdup_lane_s32(*v10.f32, 0);
    v120.i64[1] = v120.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v120, v112)), *v10.f32).u32[0] & 0xFFFFFF) != 0)
    {
      v125 = vdup_lane_s32(*v11.f32, 1);
      v126 = vdup_laneq_s32(v11, 2);
      v127 = vdup_laneq_s32(v11, 3);
      v128 = vaddq_f32(v11, v11);
      v129 = vmul_lane_f32(v125, *v128.f32, 1);
      v130 = vmul_laneq_f32(v126, v128, 2);
      v131 = vmul_n_f32(v125, v128.f32[0]);
      v132 = vmul_n_f32(v126, v128.f32[0]);
      v133 = vmul_n_f32(v127, v128.f32[0]);
      v134 = vmul_lane_f32(v126, *v128.f32, 1);
      v135 = vmul_lane_f32(v127, *v128.f32, 1);
      v136 = vmul_laneq_f32(v127, v128, 2);
      v137 = vsub_f32(_D8, vdup_lane_s32(vmul_f32(*v11.f32, *v128.f32), 0));
      v138 = vsub_f32(vsub_f32(_D8, v129), v130);
      *v128.f32 = vadd_f32(v131, v136);
      v139 = vsub_f32(v132, v135);
      v140 = vsub_f32(v131, v136);
      v141 = vadd_f32(v132, v135);
      v142 = vsub_f32(v134, v133);
      v143 = vext_s8(v141, v142, 4uLL);
      v144 = vsub_f32(v137, v130);
      *v145.f32 = vext_s8(v138, *&vdupq_lane_s32(v140, 1), 4uLL);
      v145.i64[1] = vdup_lane_s32(v143, 0).u32[0];
      v146 = vsub_f32(v137, v129);
      *v147.f32 = vext_s8(*&vdupq_lane_s32(*v128.f32, 0), v144, 4uLL);
      v147.i64[1] = vdup_lane_s32(v143, 1).u32[0];
      v148 = vadd_f32(v134, v133);
      *v149.f32 = vext_s8(*&vdupq_lane_s32(v139, 0), v148, 4uLL);
      v149.i64[1] = vdup_lane_s32(v146, 0).u32[0];
      v150 = vmulq_n_f32(v145, v10.f32[0]);
      v150.i32[3] = 0;
      v151 = vmulq_lane_f32(v147, *v10.f32, 1);
      v151.i32[3] = 0;
      v152 = vmulq_laneq_f32(v149, v10, 2);
      v152.i32[3] = 0;
      v153 = vmulq_lane_f32(v150, v138, 1);
      v153.i32[3] = 0;
      v154 = vmulq_n_f32(v151, v128.f32[0]);
      v154.i32[3] = 0;
      v155 = vmulq_n_f32(v152, *v139.i32);
      v155.i32[3] = 0;
      v121 = vaddq_f32(v155, vaddq_f32(v153, v154));
      v156 = vmulq_lane_f32(v150, v140, 1);
      v156.i32[3] = 0;
      v157 = vmulq_n_f32(v151, *v144.i32);
      v157.i32[3] = 0;
      v158 = vmulq_n_f32(v152, *v148.i32);
      v158.i32[3] = 0;
      v122 = vaddq_f32(v158, vaddq_f32(v156, v157));
      v159 = vmulq_lane_f32(v150, v141, 1);
      v159.i32[3] = 0;
      v160 = vmulq_n_f32(v151, *v142.i32);
      v160.i32[3] = 0;
      v161 = vmulq_n_f32(v152, *v146.i32);
      v161.i32[3] = 0;
      v123 = vaddq_f32(v161, vaddq_f32(v159, v160));
      v324 = v121;
      v325 = v122;
      v162 = vmulq_n_f32(v145, v118.f32[0]);
      v162.i32[3] = 0;
      v163 = vmulq_lane_f32(v147, *v118.f32, 1);
      v163.i32[3] = 0;
      v164 = vmulq_laneq_f32(v149, v118, 2);
      v164.i32[3] = 0;
      v165 = vmulq_lane_f32(v162, v138, 1);
      v165.i32[3] = 0;
      v166 = vmulq_n_f32(v163, v128.f32[0]);
      v166.i32[3] = 0;
      v167 = vmulq_n_f32(v164, *v139.i32);
      v167.i32[3] = 0;
      v168 = vaddq_f32(v167, vaddq_f32(v165, v166));
      v169 = vmulq_lane_f32(v162, v140, 1);
      v169.i32[3] = 0;
      v170 = vmulq_n_f32(v163, *v144.i32);
      v170.i32[3] = 0;
      v171 = vmulq_n_f32(v164, *v148.i32);
      v171.i32[3] = 0;
      v172 = vmulq_lane_f32(v162, v141, 1);
      v172.i32[3] = 0;
      v173 = vmulq_n_f32(v163, *v142.i32);
      v173.i32[3] = 0;
      v174 = vmulq_n_f32(v164, *v146.i32);
      v174.i32[3] = 0;
      v124 = vaddq_f32(v174, vaddq_f32(v172, v173));
      v326 = v123;
      v327 = v168;
      v328 = vaddq_f32(v171, vaddq_f32(v169, v170));
    }

    else
    {
      v118.i32[3] = 0;
      v121 = vmulq_f32(v112, xmmword_1E3047670);
      v122 = vmulq_f32(v112, xmmword_1E3047680);
      v123 = vmulq_f32(v112, xmmword_1E30476A0);
      v324 = v121;
      v325 = v122;
      v124 = vmulq_f32(v118, xmmword_1E30476A0);
      v326 = v123;
      v327 = vmulq_f32(v118, xmmword_1E3047670);
      v328 = vmulq_f32(v118, xmmword_1E3047680);
    }

    v117 = a5;
    v175 = vmulq_f32(v121, 0);
    v175.i32[3] = 0;
    v176 = vmulq_f32(v122, 0);
    v176.i32[3] = 0;
    v177 = vmulq_f32(v123, 0);
    v177.i32[3] = 0;
    v329 = v124;
    v319 = vaddq_f32(v177, vaddq_f32(v176, v175));
  }

  v331 = *(v6 + 80);
  v304.i64[1] = &v334;
  v305 = &v310;
  v309 = v313;
  v178 = vzip1q_s32(v310, v312);
  v179 = vzip1q_s32(v311, 0);
  v306 = vzip1q_s32(v178, v179);
  v307 = vzip2q_s32(v178, v179);
  v308 = vzip1q_s32(vzip2q_s32(v310, v312), vzip2q_s32(v311, 0));
  v303 = &v319;
  v304.i64[0] = &unk_1F5D21B40;
  v302 = &unk_1F5D21818;
  v180 = vmulq_f32(v313, v313);
  v180.i64[0] = vpaddq_f32(v180, v180).u64[0];
  v317 = 0;
  v181 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v180.f32, *v180.f32)), 0)), v313, xmmword_1E3047670);
  v316 = v181;
  v182 = vmulq_f32(v181, v181);
  v183 = vpaddq_f32(v182, v182);
  *v183.f32 = vpadd_f32(*v183.f32, *v183.f32);
  v184 = vrsqrte_f32(*v183.f32);
  v185 = 4;
  do
  {
    v184 = vmul_f32(v184, vrsqrts_f32(vmul_f32(v184, v184), *v183.f32));
    --v185;
  }

  while (v185);
  v186 = vbsl_s8(vdup_lane_s32(vceqz_f32(*v183.f32), 0), *v183.f32, vmul_f32(*v183.f32, v184));
  *v183.f32 = vrecpe_f32(v186);
  v187 = 4;
  do
  {
    *v183.f32 = vmul_f32(*v183.f32, vrecps_f32(v186, *v183.f32));
    --v187;
  }

  while (v187);
  v188 = vmulq_n_f32(v181, v183.f32[0]);
  v188.i32[3] = 0;
  *v183.f32 = vmul_f32(vmin_f32(vdup_lane_s32(v50, 1), vdup_lane_s32(v116, 1)), vdup_n_s32(0x3DCCCCCDu));
  v189 = vmax_f32(*v183.f32, vdup_n_s32(0x358637BDu));
  v183.i32[0] = -v337;
  v190 = vdup_lane_s32(vand_s8(*v183.f32, v50), 0);
  v183.i32[0] = -v323;
  *v183.f32 = vdup_lane_s32(vand_s8(*v183.f32, v116), 0);
  v191 = vadd_f32(v190, *v183.f32);
  v192 = vneg_f32(0x80000000800000);
  v193 = vdup_n_s32(0x3F7FF141u);
  v183.i32[0] = -1;
  v299 = v183;
  do
  {
    v301 = v188;
    v194 = v192;
    v315 = v181;
    v195 = vnegq_f32(v181);
    v195.i32[3] = 0;
    v314 = v195;
    *v196.i64 = physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>::support(&v304, &v314);
    v300 = v196;
    *v197.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(&v302, &v316);
    v198 = v197;
    v181 = vsubq_f32(v300, v197);
    v199 = vmulq_f32(v301, v181);
    v199.i64[0] = vpaddq_f32(v199, v199).u64[0];
    v200 = vpadd_f32(*v199.f32, *v199.f32);
    v201 = vcgt_f32(v200, v191);
    if ((vmvn_s8(v201).u8[0] & 1) == 0)
    {
      goto LABEL_78;
    }

    v202 = v317;
    if (vuzp1_s8(vdup_lane_s16(vand_s8(v201, vcgt_f32(v200, vmul_f32(v194, v193))), 0), *v181.f32).u32[0] == -1)
    {
      if (v317 == 3)
      {
        v314.i64[0] = 0;
        v318 = 0;
        physx::Gu::barycentricCoordinates(&v316, &v354, &v355, v356, &v314, &v318);
      }

LABEL_78:
      v290 = 0;
      if (!v117)
      {
        return v290 & 1;
      }

      goto LABEL_84;
    }

    *(&v351 + v317) = v300;
    *(&v348 + v202) = v198;
    v317 = v202 + 1;
    *(&v354 + v202) = v181;
    switch(v202)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v354, &v351, &v348, &v317);
        break;
      case 2:
        v181 = v354;
        v211 = vsubq_f32(v355, v354);
        v212 = vsubq_f32(v356[0], v354);
        v214 = vmls_f32(vmul_f32(*v211.f32, *&vextq_s8(v212, v212, 4uLL)), *&vextq_s8(v211, v211, 4uLL), *v212.f32);
        *v213.f32 = vext_s8(v214, vmls_f32(vmul_f32(*&vextq_s8(v211, v211, 8uLL), *v212.f32), *v211.f32, *&vextq_s8(v212, v212, 8uLL)), 4uLL);
        v214.i32[1] = 0;
        v317 = 3;
        v215 = vpadd_f32(vmul_f32(*v213.f32, *v213.f32), vmul_f32(v214.u32[0], v214.u32[0]));
        v216 = vpadd_f32(v215, v215);
        if (v216.f32[0] <= 0.00000011921)
        {
          v317 = 2;
          v253 = vmulq_f32(v211, v211);
          v253.i64[0] = vpaddq_f32(v253, v253).u64[0];
          v254 = vpadd_f32(*v253.f32, *v253.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v254), 0), *v354.f32).u32[0] == -1)
          {
LABEL_54:
            v317 = 1;
            break;
          }

          v255 = vnegq_f32(v354);
          v255.i32[3] = 0;
          v256 = vmulq_f32(v255, v211);
          v256.i64[0] = vpaddq_f32(v256, v256).u64[0];
          v257 = vpadd_f32(*v256.f32, *v256.f32);
          v258 = vrecpe_f32(v254);
          v259 = 4;
          do
          {
            v258 = vmul_f32(v258, vrecps_f32(v254, v258));
            --v259;
          }

          while (v259);
          v181 = vmlaq_n_f32(v354, v211, vmax_f32(vmin_f32(vmul_f32(v257, v258), _D8), 0).f32[0]);
          goto LABEL_53;
        }

        *&v213.u32[2] = v214;
        v217 = vextq_s8(v355, v355, 8uLL).u64[0];
        v218 = vextq_s8(v356[0], v356[0], 8uLL).u64[0];
        v219 = vextq_s8(v356[0], v356[0], 4uLL).u64[0];
        v220 = vextq_s8(v355, v355, 4uLL).u64[0];
        v221 = vmls_f32(vmul_f32(*v355.f32, v219), v220, *v356[0].f32);
        *v222.f32 = vext_s8(v221, vmls_f32(vmul_f32(v217, *v356[0].f32), *v355.f32, v218), 4uLL);
        v222.i64[1] = v221.u32[0];
        v223 = vextq_s8(v354, v354, 8uLL).u64[0];
        v224 = vextq_s8(v354, v354, 4uLL).u64[0];
        v225 = vmls_f32(vmul_f32(v224, *v356[0].f32), v219, *v354.f32);
        *v226.f32 = vext_s8(v225, vmls_f32(vmul_f32(*v354.f32, v218), *v356[0].f32, v223), 4uLL);
        v226.i64[1] = v225.u32[0];
        v227 = vmls_f32(vmul_f32(*v354.f32, v220), v224, *v355.f32);
        *v228.f32 = vext_s8(v227, vmls_f32(vmul_f32(v223, *v355.f32), *v354.f32, v217), 4uLL);
        v228.i64[1] = v227.u32[0];
        v229 = vmulq_f32(v222, v213);
        v229.i64[0] = vpaddq_f32(v229, v229).u64[0];
        v230 = vpadd_f32(*v229.f32, *v229.f32);
        v231 = vmulq_f32(v226, v213);
        v231.i64[0] = vpaddq_f32(v231, v231).u64[0];
        v232 = vpadd_f32(*v231.f32, *v231.f32);
        v233 = vmulq_f32(v228, v213);
        v233.i64[0] = vpaddq_f32(v233, v233).u64[0];
        v234 = vpadd_f32(*v233.f32, *v233.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v232), vcgez_f32(v230)), vcgez_f32(v234)), 0), *v354.f32).u32[0] != -1)
        {
          v235 = vnegq_f32(v354);
          v235.i32[3] = 0;
          v236 = vnegq_f32(v355);
          v236.i32[3] = 0;
          v237 = vmulq_f32(v235, v211);
          v237.i64[0] = vpaddq_f32(v237, v237).u64[0];
          v238 = vpadd_f32(*v237.f32, *v237.f32);
          v239 = vmulq_f32(v211, v236);
          v239.i64[0] = vpaddq_f32(v239, v239).u64[0];
          v240 = vpadd_f32(*v239.f32, *v239.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v234), vand_s8(vclez_f32(v240), vcgez_f32(v238))), 0), *v354.f32).u32[0] == -1)
          {
            v264 = vsub_f32(v238, v240);
            v265 = vrecpe_f32(v264);
            v266 = 4;
            do
            {
              v265 = vmul_f32(v265, vrecps_f32(v264, v265));
              --v266;
            }

            while (v266);
            v252 = 0;
            v181 = vmlaq_n_f32(v354, v211, vmul_f32(v238, vbsl_s8(vcgt_f32(vabs_f32(v264), 0x3400000034000000), v265, 0)).f32[0]);
            v181.i64[1] = vextq_s8(v181, v181, 8uLL).u32[0];
            v251 = 2;
LABEL_61:
            v267 = &v349;
            v268 = &v352;
            v269 = &v355;
          }

          else
          {
            v241 = vnegq_f32(v356[0]);
            v241.i32[3] = 0;
            v242 = vmulq_f32(v236, v212);
            v242.i64[0] = vpaddq_f32(v242, v242).u64[0];
            v243 = vpadd_f32(*v242.f32, *v242.f32);
            v244 = vmulq_f32(v211, v241);
            v244.i64[0] = vpaddq_f32(v244, v244).u64[0];
            v245 = vpadd_f32(*v244.f32, *v244.f32);
            v246 = vmulq_f32(v212, v241);
            v246.i64[0] = vpaddq_f32(v246, v246).u64[0];
            v247 = vpadd_f32(*v246.f32, *v246.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v243, v240), vcge_f32(v245, v247)), vclez_f32(v230)), 0), *v354.f32).u32[0] == -1)
            {
              v270 = vsub_f32(v243, v240);
              v271 = vadd_f32(v270, vsub_f32(v245, v247));
              v272 = vrecpe_f32(v271);
              v273 = 4;
              do
              {
                v272 = vmul_f32(v272, vrecps_f32(v271, v272));
                --v273;
              }

              while (v273);
              v274 = vmlaq_n_f32(v355, vsubq_f32(v356[0], v355), vmul_f32(v270, vbsl_s8(vcgt_f32(vabs_f32(v271), 0x3400000034000000), v272, 0)).f32[0]);
              v251 = 2;
              v267 = v350;
              v274.i64[1] = vextq_s8(v274, v274, 8uLL).u32[0];
              v268 = v353;
              v269 = v356;
              v252 = 1;
              v181 = v274;
            }

            else
            {
              v248 = vmulq_f32(v235, v212);
              v248.i64[0] = vpaddq_f32(v248, v248).u64[0];
              v249 = vpadd_f32(*v248.f32, *v248.f32);
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v232), vand_s8(vclez_f32(v247), vcgez_f32(v249))), 0), *v354.f32).u32[0] != -1)
              {
                if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v249), vclez_f32(v238)), 0), *v354.f32).u32[0] == -1)
                {
                  v252 = 0;
                  v251 = 1;
                }

                else
                {
                  *v181.f32 = vdup_lane_s16(vand_s8(vcge_f32(v240, v243), vcgez_f32(v240)), 0);
                  *v181.f32 = vuzp1_s8(*v181.f32, *v181.f32);
                  v250 = v181.i32[0];
                  v251 = 1;
                  v181 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v181, v299), 0), v355, v356[0]);
                  if (v250 == -1)
                  {
                    v252 = 1;
                  }

                  else
                  {
                    v252 = 2;
                  }
                }

                goto LABEL_61;
              }

              v275 = vsub_f32(v249, v247);
              v276 = vrecpe_f32(v275);
              v277 = 4;
              do
              {
                v276 = vmul_f32(v276, vrecps_f32(v275, v276));
                --v277;
              }

              while (v277);
              v252 = 0;
              v181 = vmlaq_n_f32(v354, v212, vmul_f32(v249, vbsl_s8(vcgt_f32(vabs_f32(v275), 0x3400000034000000), v276, 0)).f32[0]);
              v181.i64[1] = vextq_s8(v181, v181, 8uLL).u32[0];
              v251 = 2;
              v267 = v350;
              v268 = v353;
              v269 = v356;
            }
          }

          v278 = *(&v351 + v252);
          v279 = *v269;
          v280 = *v268;
          v281 = *(&v348 + v252);
          v282 = *v267;
          v354 = *(&v354 + v252);
          v355 = v279;
          v351 = v278;
          v352 = v280;
          v348 = v281;
          v349 = v282;
          v317 = v251;
          break;
        }

        v260 = vmulq_f32(v354, v213);
        v261 = vrecpe_f32(v216);
        v262 = 4;
        do
        {
          v261 = vmul_f32(v261, vrecps_f32(v216, v261));
          --v262;
        }

        while (v262);
        v263 = vpaddq_f32(v260, v260).u64[0];
        v181 = vmulq_n_f32(v213, vmul_f32(v261, vpadd_f32(v263, v263)).f32[0]);
        v181.i32[3] = 0;
        break;
      case 1:
        v181 = v354;
        v203 = vsubq_f32(v355, v354);
        v204 = vmulq_f32(v203, v203);
        v204.i64[0] = vpaddq_f32(v204, v204).u64[0];
        v205 = vpadd_f32(*v204.f32, *v204.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v205), 0), *v354.f32).u32[0] == -1)
        {
          goto LABEL_54;
        }

        v206 = vnegq_f32(v354);
        v206.i32[3] = 0;
        v207 = vmulq_f32(v206, v203);
        v207.i64[0] = vpaddq_f32(v207, v207).u64[0];
        v208 = vpadd_f32(*v207.f32, *v207.f32);
        v209 = vrecpe_f32(v205);
        v210 = 4;
        do
        {
          v209 = vmul_f32(v209, vrecps_f32(v205, v209));
          --v210;
        }

        while (v210);
        v181 = vmlaq_n_f32(v354, v203, vmax_f32(vmin_f32(vmul_f32(v208, v209), _D8), 0).f32[0]);
LABEL_53:
        v181.i64[1] = vextq_s8(v181, v181, 8uLL).u32[0];
        break;
    }

    v316 = v181;
    v283 = vmulq_f32(v181, v181);
    v283.i64[0] = vpaddq_f32(v283, v283).u64[0];
    v284 = vpadd_f32(*v283.f32, *v283.f32);
    v285 = vrsqrte_f32(v284);
    v286 = 4;
    do
    {
      v285 = vmul_f32(v285, vrsqrts_f32(vmul_f32(v285, v285), v284));
      --v286;
    }

    while (v286);
    v192 = vbsl_s8(vdup_lane_s32(vceqz_f32(v284), 0), v284, vmul_f32(v284, v285));
    v287 = vrecpe_f32(v192);
    v288 = 4;
    do
    {
      v287 = vmul_f32(v287, vrecps_f32(v192, v287));
      --v288;
    }

    while (v288);
    v188 = vmulq_n_f32(v181, v287.f32[0]);
    v188.i32[3] = 0;
    v289 = vcgt_f32(v194, v192);
  }

  while (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v192, v189), v289), 0), *v181.f32).u32[0] == -1);
  v291 = vdup_lane_s16(v289, 0);
  if (vuzp1_s8(v291, v291).u32[0] == -1)
  {
    v290 = 1;
    if (!v117)
    {
      return v290 & 1;
    }

    goto LABEL_84;
  }

  v292 = (v304.i64[1] + 16);
  v293 = vld1_dup_f32(v292);
  f32 = v303[1].f32;
  v295 = vld1_dup_f32(f32);
  v296 = vbsl_s8(vdup_lane_s32(vcgtz_f32(v191), 0), v191, vmul_f32(vmin_f32(v293, v295), vdup_n_s32(0x3E4CCCCDu)));
  if (v317 == 3)
  {
    v314.i64[0] = 0;
    v318 = 0;
    physx::Gu::barycentricCoordinates(&v315, &v354, &v355, v356, &v314, &v318);
  }

  v290 = vcgt_f32(vmax_f32(vsub_f32(v194, v191), 0), v296).u8[0] ^ 1;
  if (v117)
  {
LABEL_84:
    if (v290)
    {
      v297 = 2;
    }

    else
    {
      v297 = 0;
    }

    *(v117 + 12) = v297;
  }

  return v290 & 1;
}

void physx::Gu::registerHeightFields(physx::Gu *this)
{
  qword_1EE185D80 = raycast_heightField;
  off_1EE185DB8[0] = sweepCapsule_HeightFieldGeom;
  off_1EE185DF0[0] = sweepCapsule_HeightFieldGeom;
  off_1EE185E28[0] = sweepBox_HeightFieldGeom;
  off_1EE185E60[0] = sweepBox_HeightFieldGeom_Precise;
  off_1EE185E98[0] = sweepConvex_HeightFieldGeom;
  off_1EE185ED0 = GeomOverlapCallback_SphereHeightfield;
  off_1EE185F40 = GeomOverlapCallback_CapsuleHeightfield;
  off_1EE185F78 = GeomOverlapCallback_BoxHeightfield;
  off_1EE185FB0 = GeomOverlapCallback_ConvexHeightfield;
}

uint64_t raycast_box(uint64_t a1, void *a2, float *a3, float32x2_t *a4, __int16 *a5, float a6, uint64_t a7, uint64_t a8)
{
  v14 = a3[1] - *(a2 + 5);
  v15 = a3[2] - *(a2 + 6);
  v16 = (*a3 - *(a2 + 4)) + (*a3 - *(a2 + 4));
  v17 = v14 + v14;
  v18 = v15 + v15;
  v20 = *(a2 + 2);
  v19 = *(a2 + 3);
  v21 = (v19 * v19) + -0.5;
  v22 = *a2;
  v23 = *(a2 + 1);
  v24 = ((v17 * v23) + (*a2 * v16)) + (v20 * v18);
  v25 = ((v16 * v21) - (((v23 * v18) - (v20 * v17)) * v19)) + (*a2 * v24);
  v26 = ((v17 * v21) - (((v20 * v16) - (*a2 * v18)) * v19)) + (v23 * v24);
  v27 = ((v18 * v21) - (((*a2 * v17) - (v23 * v16)) * v19)) + (v20 * v24);
  *v60 = v25;
  *&v60[1] = v26;
  *&v60[2] = v27;
  v28 = a4->f32[0] + a4->f32[0];
  v29 = a4->f32[1] + a4->f32[1];
  v30 = a4[1].f32[0] + a4[1].f32[0];
  v31 = ((v23 * v29) + (v22 * v28)) + (v20 * v30);
  v59[0] = ((v28 * v21) - (((v23 * v30) - (v20 * v29)) * v19)) + (v22 * v31);
  v59[1] = ((v29 * v21) - (((v20 * v28) - (v22 * v30)) * v19)) + (v23 * v31);
  v59[2] = ((v30 * v21) - (((v22 * v29) - (v23 * v28)) * v19)) + (v20 * v31);
  v32 = *(a1 + 4);
  v56 = 0.0;
  v33 = -*(a1 + 12);
  v54 = vneg_f32(v32);
  v55 = v33;
  result = physx::Gu::rayAABBIntersect2(&v54, (a1 + 4), v60, v59, &v57, &v56);
  if (result)
  {
    v36 = v56;
    if (v56 <= a6)
    {
      v37 = 0;
      *(a8 + 48) = v56;
      *(a8 + 16) = -1;
      *(a8 + 52) = 0;
      *(a8 + 56) = 0;
      v38 = *a5;
      if (*a5)
      {
        if (v36 == 0.0)
        {
          v44 = *a3;
          v45 = a3[2];
        }

        else
        {
          v35.i32[0] = *(a2 + 2);
          v39 = *(a2 + 3);
          v40 = (v39 * v39) + -0.5;
          v41 = vadd_f32(v57, v57);
          v42 = (vmuls_lane_f32(v41.f32[1], *a2, 1) + (COERCE_FLOAT(*a2) * v41.f32[0])) + (*v35.i32 * (v58 + v58));
          v43.i32[0] = vdup_lane_s32(v41, 1).u32[0];
          v43.f32[1] = v58 + v58;
          v44 = vadd_f32(a2[2], vmla_n_f32(vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(v43, vneg_f32(vzip1_s32(v35, *a2))), vext_s8(v43, v41, 4uLL), *(a2 + 4)), v39), v41, v40), *a2, v42));
          v45 = *(a2 + 6) + (((v39 * ((-COERCE_FLOAT(HIDWORD(*a2)) * v41.f32[0]) + (COERCE_FLOAT(*a2) * v41.f32[1]))) + ((v58 + v58) * v40)) + (*v35.i32 * v42));
        }

        *(a8 + 24) = v44;
        *(a8 + 32) = v45;
        v37 = 1;
      }

      if ((v38 & 2) != 0)
      {
        v37 |= 2u;
        if (v36 == 0.0)
        {
          v46 = -a4[1].f32[0];
          *(a8 + 36) = vneg_f32(*a4);
        }

        else
        {
          v54 = 0;
          v55 = 0.0;
          v47 = -1.0;
          if (v57.f32[(result - 1)] > 0.0)
          {
            v47 = 1.0;
          }

          v54.f32[(result - 1)] = v47;
          v49 = *(a2 + 2);
          v48 = *(a2 + 3);
          v50 = (v48 * v48) + -0.5;
          v51 = *(a2 + 1);
          v52 = (((v54.f32[1] + v54.f32[1]) * v51) + (*a2 * (v54.f32[0] + v54.f32[0]))) + (v49 * (v55 + v55));
          v53 = ((v48 * ((v49 * (v54.f32[0] + v54.f32[0])) - (*a2 * (v55 + v55)))) + ((v54.f32[1] + v54.f32[1]) * v50)) + (v51 * v52);
          v46 = ((v48 * ((*a2 * (v54.f32[1] + v54.f32[1])) - (v51 * (v54.f32[0] + v54.f32[0])))) + ((v55 + v55) * v50)) + (v49 * v52);
          *(a8 + 36) = ((v48 * ((v51 * (v55 + v55)) - (v49 * (v54.f32[1] + v54.f32[1])))) + ((v54.f32[0] + v54.f32[0]) * v50)) + (*a2 * v52);
          *(a8 + 40) = v53;
        }

        *(a8 + 44) = v46;
      }

      else
      {
        *(a8 + 40) = 0;
        *(a8 + 36) = 0;
      }

      *(a8 + 20) = v37;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void raycast_sphere(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, _BYTE *a5, float a6, uint64_t a7, float32x2_t *a8)
{
  v12 = &a8[6];
  physx::Gu::intersectRaySphere(a3, a4, &a2[2], &a8[6], &a8[3], a6, *(a1 + 4));
  if (v13)
  {
    a8[2].i32[0] = -1;
    a8[6].i32[1] = 0;
    a8[7].i32[0] = 0;
    if ((*a5 & 2) == 0)
    {
      a8[5] = 0;
      a8[4].i32[1] = 0;
      v14 = 1;
LABEL_10:
      a8[2].i16[2] = v14;
      return;
    }

    if (*v12 == 0.0)
    {
      v15 = -a4[1].f32[0];
      *(a8 + 36) = vneg_f32(*a4);
    }

    else
    {
      v16 = vsub_f32(a8[3], a2[2]);
      v17 = a8[4].f32[0] - a2[3].f32[0];
      *(a8 + 36) = v16;
      a8[5].f32[1] = v17;
      v18 = sqrtf((COERCE_FLOAT(vmul_f32(v16, v16).i32[1]) + (v16.f32[0] * v16.f32[0])) + (v17 * v17));
      if (v18 <= 0.0)
      {
LABEL_9:
        v14 = 3;
        goto LABEL_10;
      }

      v19 = 1.0 / v18;
      *(a8 + 36) = vmul_n_f32(v16, v19);
      v15 = v17 * v19;
    }

    a8[5].f32[1] = v15;
    goto LABEL_9;
  }
}

void raycast_capsule(uint64_t a1, float *a2, float32x2_t *a3, float32x2_t *a4, _BYTE *a5, float a6, uint64_t a7, float32x2_t *a8)
{
  v71 = *MEMORY[0x1E69E9840];
  v13 = *a2;
  v14 = a2[1];
  v16 = a2[2];
  v15 = a2[3];
  v17 = v15 + v15;
  v18 = ((v15 * (v15 + v15)) + -1.0) + (v13 * (v13 + v13));
  v19 = ((v13 + v13) * v14) + (v16 * v17);
  v20 = ((v13 + v13) * v16) - (v14 * v17);
  v21 = *(a1 + 4);
  v22 = *(a1 + 8);
  v23 = v18 * v22;
  v24 = v22 * v19;
  v25 = v20 * v22;
  v26 = a2[4];
  v27 = a2[5];
  v28 = a2[6];
  v62.f32[0] = v26 + v23;
  v62.f32[1] = v27 + v24;
  v63 = v25 + v28;
  v64.f32[0] = v26 - v23;
  v64.f32[1] = v27 - v24;
  v65 = v28 - v25;
  v66 = v21;
  v29 = (v26 - v23) - (v26 + v23);
  v30 = (v27 - v24) - (v27 + v24);
  v31 = (v28 - v25) - (v25 + v28);
  v32 = COERCE_FLOAT(*a3) - (v26 + v23);
  v33 = COERCE_FLOAT(HIDWORD(*a3)) - (v27 + v24);
  v34 = a3[1].f32[0];
  v35 = v34 - v63;
  v36 = ((v30 * v33) + (v32 * v29)) + ((v34 - v63) * v31);
  if (v36 > 0.0)
  {
    v37 = ((v30 * v30) + (v29 * v29)) + (v31 * v31);
    if (v36 < v37)
    {
      v38 = v36 / v37;
      v29 = v29 * v38;
      v30 = v30 * v38;
      v31 = v31 * v38;
    }

    v32 = v32 - v29;
    v33 = v33 - v30;
    v35 = v35 - v31;
  }

  v39 = sqrtf(((v33 * v33) + (v32 * v32)) + (v35 * v35)) - v21;
  v40 = 0.0;
  if (v39 > 0.0)
  {
    v41 = v39 + -10.0;
    v42 = v39 <= 10.0;
    v43 = 0.0;
    if (!v42)
    {
      v43 = v41;
    }

    v44 = v34 + (v43 * a4[1].f32[0]);
    v61 = v43;
    v67 = vadd_f32(*a3, vmul_n_f32(*a4, v43));
    v68 = v44;
    physx::Gu::intersectRayCapsuleInternal(&v67, a4, &v62, &v64, &v69, v21);
    if (!v45)
    {
      return;
    }

    if (v45 == 1)
    {
      v46 = v69;
    }

    else
    {
      v46 = v69;
      if (v69 >= v70)
      {
        v46 = v70;
      }
    }

    v40 = v61 + v46;
  }

  if (v40 >= 0.0 && v40 <= a6)
  {
    v47 = vadd_f32(vmul_n_f32(*a4, v40), *a3);
    v48 = (v40 * a4[1].f32[0]) + a3[1].f32[0];
    a8[3] = v47;
    a8[4].f32[0] = v48;
    a8[6].f32[0] = v40;
    a8[2].i32[0] = -1;
    a8[6].i32[1] = 0;
    a8[7].i32[0] = 0;
    if ((*a5 & 2) == 0)
    {
      a8[5] = 0;
      a8[4].i32[1] = 0;
      v49 = 1;
LABEL_27:
      a8[2].i16[2] = v49;
      return;
    }

    if (v40 == 0.0)
    {
      v50 = -a4[1].f32[0];
      *(a8 + 36) = vneg_f32(*a4);
    }

    else
    {
      v51 = vsub_f32(v64, v62);
      v52 = v65 - v63;
      v53 = vsub_f32(v47, v62);
      v54 = (COERCE_FLOAT(vmul_f32(v51, v53).i32[1]) + (v53.f32[0] * v51.f32[0])) + ((v48 - v63) * (v65 - v63));
      v55 = 0.0;
      if (v54 > 0.0)
      {
        v56 = (vmuls_lane_f32(v51.f32[1], v51, 1) + (v51.f32[0] * v51.f32[0])) + (v52 * v52);
        v55 = 1.0;
        if (v54 < v56)
        {
          v55 = v54 / v56;
        }
      }

      v57 = vsub_f32(v47, vadd_f32(v62, vmul_n_f32(v51, v55)));
      v58 = v48 - (v63 + (v52 * v55));
      *(a8 + 36) = v57;
      a8[5].f32[1] = v58;
      v59 = sqrtf((COERCE_FLOAT(vmul_f32(v57, v57).i32[1]) + (v57.f32[0] * v57.f32[0])) + (v58 * v58));
      if (v59 <= 0.0)
      {
        goto LABEL_26;
      }

      v60 = 1.0 / v59;
      *(a8 + 36) = vmul_n_f32(v57, v60);
      v50 = v58 * v60;
    }

    a8[5].f32[1] = v50;
LABEL_26:
    v49 = 3;
    goto LABEL_27;
  }
}

uint64_t raycast_plane(float a1, uint64_t a2, float *a3, float32x2_t *a4, float32x2_t *a5, uint64_t a6, uint64_t a7, float32x2_t *a8)
{
  result = 0;
  v10 = a3[2];
  v9 = a3[3];
  v11 = *a3;
  v12 = a3[1];
  v13 = v11 + v11;
  v14 = ((v9 * (v9 + v9)) + -1.0) + (v11 * (v11 + v11));
  v15 = (v13 * v12) + (v10 * (v9 + v9));
  v16 = (v13 * v10) - (v12 * (v9 + v9));
  v17 = a5[1].f32[0];
  v18 = (vmuls_lane_f32(v15, *a5, 1) + (COERCE_FLOAT(*a5) * v14)) + (v17 * v16);
  if (v18 < 0.0 && fabsf(v18) >= 0.0000001)
  {
    v19 = a4[1].f32[0];
    v20 = -(((vmuls_lane_f32(v15, *a4, 1) + (COERCE_FLOAT(*a4) * v14)) + (v19 * v16)) - (((v15 * a3[5]) + (a3[4] * v14)) + (a3[6] * v16))) / v18;
    a8[3] = vadd_f32(*a4, vmul_n_f32(*a5, v20));
    a8[4].f32[0] = v19 + (v17 * v20);
    if (v20 >= 0.0 && v20 <= a1)
    {
      a8[2].i32[0] = -1;
      a8[6].i32[1] = 0;
      a8[7].i32[0] = 0;
      a8[2].i16[2] = 3;
      a8[4].f32[1] = v14;
      a8[5].f32[0] = v15;
      result = 1;
      a8[5].f32[1] = v16;
      a8[6].f32[0] = v20;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t raycast_convexMesh(uint64_t a1, float32x2_t *a2, float *a3, float32x2_t *a4, __int16 *a5, float a6, int32x4_t a7, double a8, int32x4_t a9, uint64_t a10, uint64_t a11)
{
  v18 = *(a1 + 32);
  v19 = 1.0 / *(a1 + 12);
  __asm { FMOV            V2.2S, #1.0 }

  v120 = _D2;
  *a7.i8 = vdiv_f32(_D2, *(a1 + 4));
  v122 = *a7.i8;
  v123 = v19;
  v124 = *(a1 + 16);
  v25 = a2[2].f32[0] * -2.0;
  *a7.i32 = a2[2].f32[1] * -2.0;
  _D2.f32[0] = a2[3].f32[0] * -2.0;
  v27 = a2[1].f32[0];
  v26 = a2[1].f32[1];
  *a9.i32 = (v26 * v26) + -0.5;
  v28 = a2->f32[1];
  v29 = ((*a7.i32 * v28) + (a2->f32[0] * v25)) + (v27 * _D2.f32[0]);
  v30 = ((v25 * *a9.i32) - (((v28 * _D2.f32[0]) - (v27 * *a7.i32)) * v26)) + (a2->f32[0] * v29);
  v31 = ((*a7.i32 * *a9.i32) - (((v27 * v25) - (a2->f32[0] * _D2.f32[0])) * v26)) + (v28 * v29);
  v32 = (_D2.f32[0] * *a9.i32) - (((a2->f32[0] * *a7.i32) - (v28 * v25)) * v26);
  v121[0] = -a2->f32[0];
  v121[1] = -v28;
  v121[2] = -v27;
  v121[3] = v26;
  v121[4] = v30;
  v121[5] = v31;
  v121[6] = v32 + (v27 * v29);
  physx::operator*(&v122, v121, &v125, a7, a9);
  v34 = *(v18 + 71);
  v35 = *(v18 + 72);
  v36 = v126;
  v37 = *a3;
  v38 = a3[1];
  v39 = v128;
  v40 = a3[2];
  v41 = v130;
  v42.i32[0] = v132;
  v44 = a4->f32[0];
  v43 = a4->f32[1];
  v45 = a4[1].f32[0];
  v46 = v125;
  v47 = v127;
  v48 = v129;
  v49 = v131;
  *(a11 + 16) = -1;
  if (!v34)
  {
LABEL_13:
    *(a11 + 16) = -1;
    *(a11 + 48) = 0;
    *(a11 + 56) = 0;
    *(a11 + 24) = v37;
    *(a11 + 28) = v38;
    *(a11 + 32) = v40;
    v64 = -a4[1].f32[0];
    *(a11 + 36) = vneg_f32(*a4);
    *(a11 + 44) = v64;
    v65 = 3;
LABEL_14:
    *(a11 + 20) = v65;
    return 1;
  }

  v50 = 0;
  v42.f32[0] = (((v37 * v36) + (v38 * v39)) + (v40 * v41)) + v42.f32[0];
  v51 = (v36 * v44) + (v39 * v43);
  v52 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(v46, v37), vmul_n_f32(v47, v38)), vmul_n_f32(v48, v40)), v49);
  v53 = vadd_f32(vadd_f32(vmul_n_f32(v46, v44), vmul_n_f32(v47, v43)), vmul_n_f32(v48, v45));
  v54 = v51 + (v41 * v45);
  v55 = (v35 + 8);
  LOBYTE(v56) = 1;
  v57 = 3.4028e38;
  v58 = -3.4028e38;
  do
  {
    v59 = *(v55 - 2);
    v60 = *(v55 - 1);
    v61 = v55[1] + (((v52.f32[1] * v60) + (v52.f32[0] * v59)) + (v42.f32[0] * *v55));
    v62 = ((v53.f32[1] * v60) + (v59 * v53.f32[0])) + (*v55 * v54);
    v63 = -v61 / v62;
    if (v62 <= 0.0000001)
    {
      if (v62 >= -0.0000001)
      {
        if (v61 > 0.0)
        {
          return 0;
        }
      }

      else if (v63 > v58)
      {
        *(a11 + 16) = v50;
        v58 = -v61 / v62;
      }
    }

    else if (v57 >= v63)
    {
      v57 = -v61 / v62;
    }

    v56 = (v61 <= 0.0) & v56;
    ++v50;
    v55 += 5;
  }

  while (v34 != v50);
  if (v56)
  {
    goto LABEL_13;
  }

  result = 0;
  if (v58 < (a6 + -0.00001) && v58 < v57 && v58 > 0.0)
  {
    v67 = *a5;
    if (*a5)
    {
      v68 = v42.f32[0] + (v54 * v58);
      v69 = *(a1 + 16);
      v70 = *(a1 + 20);
      v42.f32[0] = v69 + v69;
      v71 = v70 + v70;
      v72 = v70 * (v70 + v70);
      v73 = *(a1 + 24);
      v74 = vmul_n_f32(v73, vadd_f32(v73, v73).f32[0]);
      v75.i32[0] = vmul_f32(__PAIR64__(v120.u32[1], LODWORD(v70)), v42).u32[0];
      v76 = vmul_n_f32(v73, v69 + v69);
      v42.f32[1] = v69 * (v69 + v69);
      v77 = vsub_f32(v120, v42);
      v75.i32[1] = v77.i32[1];
      v78 = vrev64_s32(v74);
      v79.i32[0] = vadd_f32(v75, v78).u32[0];
      v79.i32[1] = vsub_f32(v77, v78).i32[1];
      *v33.i32 = 1.0 - v72;
      v80 = *(a1 + 4);
      v78.i32[0] = a2[1].i32[0];
      v81 = a2[1].f32[1];
      v82 = (v81 * v81) + -0.5;
      v83 = vmul_n_f32(v73, v71);
      v84 = vrev64_s32(v83);
      v85 = vsub_f32(vzip1_s32(v33, v75), v74);
      v86 = vadd_f32(v76, v84);
      v84.i32[0] = vsub_f32(v76, v84).u32[0];
      v84.i32[1] = v86.i32[1];
      v87 = vmul_n_f32(v85, v80);
      v88 = v80 * v86.f32[0];
      v89 = vzip2_s32(v79, v85);
      v90 = vmul_n_f32(v87, v86.f32[0]);
      v91 = v88 * v86.f32[0];
      v83.i32[1] = v77.i32[1];
      v92 = *(a1 + 8);
      v76.i32[0] = vdup_lane_s32(v76, 1).u32[0];
      v76.f32[1] = v72;
      v93 = vsub_f32(v83, v76);
      v94 = vmul_n_f32(v79, v92.f32[0]);
      v95 = vmul_f32(v93, v92);
      v96 = vmul_lane_f32(v84, v92, 1);
      v97 = vadd_f32(vadd_f32(vmul_n_f32(v87, v85.f32[0]), vmul_n_f32(v94, *v79.i32)), vmul_n_f32(v96, v84.f32[0]));
      v98 = __PAIR64__(v87.u32[1], v94.u32[0]);
      v87.i32[1] = v94.i32[1];
      v99 = vadd_f32(vadd_f32(vmul_f32(v89, v98), vmul_f32(vrev64_s32(v89), v87)), vmul_lane_f32(v96, v86, 1));
      v100 = vmul_f32(v93, v95);
      v101 = vadd_f32(vadd_f32(v90, vmul_n_f32(v94, v93.f32[0])), vmul_lane_f32(v96, v93, 1));
      v102 = vadd_f32(v52, vmul_n_f32(v53, v58));
      v103 = vadd_f32(vadd_f32(vmul_n_f32(v85, v88), vmul_n_f32(v79, v95.f32[0])), vmul_lane_f32(v84, v95, 1));
      v104 = vmul_n_f32(v97, v102.f32[0]);
      v105 = vmul_lane_f32(v99, v102, 1);
      v106 = vmul_f32(v102, v103);
      v107 = vadd_f32(v104, v105);
      v108 = vdup_lane_s32(v106, 0);
      v108.f32[0] = v91 + *v100.i32;
      v109 = vadd_f32(v108, vzip2_s32(v100, v106));
      v110 = vadd_f32(vmul_n_f32(v101, v68), v107);
      v109.f32[0] = (v68 * v109.f32[0]) + v109.f32[1];
      v111 = vadd_f32(v110, v110);
      v109.f32[0] = v109.f32[0] + v109.f32[0];
      v101.i32[0] = HIDWORD(*a2);
      v105.f32[0] = (vmuls_lane_f32(v101.f32[0], v111, 1) + (COERCE_FLOAT(*a2) * v111.f32[0])) + (v78.f32[0] * v109.f32[0]);
      v84.i32[0] = vdup_lane_s32(v111, 1).u32[0];
      v84.i32[1] = v109.i32[0];
      v109.f32[0] = a2[3].f32[0] + (((v81 * ((-v101.f32[0] * v111.f32[0]) + (COERCE_FLOAT(*a2) * v111.f32[1]))) + (v109.f32[0] * v82)) + (v78.f32[0] * v105.f32[0]));
      *(a11 + 24) = vadd_f32(a2[2], vmla_n_f32(vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(v84, vneg_f32(vzip1_s32(v78, *a2))), vext_s8(v84, v111, 4uLL), *(a2 + 4)), v81), v111, v82), *a2, v105.f32[0]));
      *(a11 + 32) = v109.i32[0];
      v65 = 1025;
    }

    else
    {
      v65 = 1024;
    }

    *(a11 + 48) = v58;
    *(a11 + 52) = 0;
    *(a11 + 36) = 0;
    *(a11 + 44) = 0;
    if ((v67 & 2) != 0)
    {
      v65 |= 2u;
      v112 = (v35 + 20 * *(a11 + 16));
      v113 = v112[1];
      v114 = v112[2];
      v115 = (vmuls_lane_f32(v113, v46, 1) + (v46.f32[0] * *v112)) + (v36 * v114);
      v116 = (vmuls_lane_f32(v113, v47, 1) + (v47.f32[0] * *v112)) + (v39 * v114);
      v117 = (vmuls_lane_f32(v113, v48, 1) + (v48.f32[0] * *v112)) + (v41 * v114);
      *(a11 + 36) = v115;
      *(a11 + 40) = v116;
      *(a11 + 44) = v117;
      v118 = sqrtf(((v116 * v116) + (v115 * v115)) + (v117 * v117));
      if (v118 > 0.0)
      {
        v119 = 1.0 / v118;
        *(a11 + 36) = v115 * v119;
        *(a11 + 40) = v116 * v119;
        *(a11 + 44) = v117 * v119;
      }
    }

    goto LABEL_14;
  }

  return result;
}

float32x4_t physx::operator*@<Q0>(float32x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, int32x4_t a4@<Q1>, int32x4_t a5@<Q3>)
{
  v5 = a1[1].f32[0];
  v6 = *a2;
  a4.i32[0] = *(a2 + 4);
  v7 = *(a2 + 8);
  a5.i32[0] = *(a2 + 12);
  v8 = *a4.i32 + *a4.i32;
  v9 = v7 + v7;
  v10 = *a4.i32 * (*a4.i32 + *a4.i32);
  v11 = v7 * (v7 + v7);
  *a4.i32 = (v6 + v6) * *a4.i32;
  v12 = (v6 + v6) * v7;
  v13 = (v6 + v6) * *a5.i32;
  v14 = v8 * v7;
  v15 = v8 * *a5.i32;
  *a5.i32 = v9 * *a5.i32;
  v16 = (1.0 - v10) - v11;
  v17 = *a4.i32 + *a5.i32;
  v18 = v12 - v15;
  v19 = *a4.i32 - *a5.i32;
  *a5.i32 = 1.0 - (v6 * (v6 + v6));
  v20 = *a5.i32 - v11;
  v21 = v14 + v13;
  *a4.i32 = v12 + v15;
  v22 = v14 - v13;
  *a5.i32 = *a5.i32 - v10;
  v23 = *(a2 + 24);
  v24 = *(a1 + 12);
  v25 = *(a1 + 20);
  v26 = vadd_f32(v24, v24);
  v27 = vmul_f32(v24, __PAIR64__(v26.u32[1], v24.u32[0]));
  v28 = vadd_f32(v24, __PAIR64__(v26.u32[1], v24.u32[0]));
  v29 = vext_s8(v27, v28, 4uLL);
  v30 = vmul_f32(v24, v28).f32[0];
  v31 = vmul_n_f32(v25, v28.f32[0]);
  v32 = vrev64_s32(vmul_lane_f32(v25, v26, 1));
  v33 = vmul_n_f32(v25, vadd_f32(v25, v25).f32[0]);
  v34 = vmul_f32(v24, v29);
  v24.i32[0] = 1.0;
  v35.i32[0] = vsub_f32(v24, v29).u32[0];
  v35.i32[1] = v34.i32[1];
  v36 = vsub_f32(v35, v33);
  v35.f32[0] = 1.0 - v30;
  v37 = vadd_f32(v35, v33);
  v38 = vext_s8(v37, vsub_f32(v35, v33), 4uLL);
  v29.f32[0] = vsub_f32(v31, v32).f32[0];
  v39 = vadd_f32(v31, v32);
  v33.f32[0] = (1.0 - v30) - *&v27.i32[1];
  v40 = vmul_n_f32(__PAIR64__(v39.u32[1], v29.u32[0]), v5);
  v41 = v33.f32[0] * v5;
  v42 = vmul_n_f32(v40, v29.f32[0]);
  v43 = v41 * v29.f32[0];
  v44 = vzip2_s32(v38, v36);
  v45 = vmul_lane_f32(v40, v39, 1);
  v29.f32[0] = vmuls_lane_f32(v41, v39, 1);
  v46 = vsub_f32(v32, v31);
  v47 = vmul_n_f32(v36, COERCE_FLOAT(*a1));
  v39.i32[1] = v46.i32[1];
  v48 = vmul_lane_f32(v38, *a1, 1);
  v49 = vmul_f32(*a1, v39);
  v50 = vadd_f32(vadd_f32(vmul_n_f32(v47, v36.f32[0]), vmul_lane_f32(v48, v37, 1)), v42);
  v37.f32[0] = vaddv_f32(vmul_f32(vzip1_s32(v36, v38), v49)) + v43;
  v51 = __PAIR64__(v48.u32[1], v47.u32[0]);
  v52 = vmul_lane_f32(v48, v46, 1);
  v48.i32[1] = v47.i32[1];
  v53 = vadd_f32(vadd_f32(vmul_f32(v44, v48), vmul_f32(vrev64_s32(v44), v51)), v45);
  v36.f32[0] = vaddv_f32(vmul_f32(vzip2_s32(v36, v38), v49)) + v29.f32[0];
  v54 = vadd_f32(vadd_f32(vmul_n_f32(v47, v39.f32[0]), v52), vmul_n_f32(v40, v33.f32[0]));
  v33.f32[0] = vaddv_f32(vmul_f32(v39, v49)) + (v33.f32[0] * v41);
  v55 = vadd_f32(vmul_n_f32(v50, v16), vmul_n_f32(v53, v17));
  v56 = (v37.f32[0] * v16) + (v36.f32[0] * v17);
  v57 = vadd_f32(vmul_n_f32(v54, v18), v55);
  v58 = (v33.f32[0] * v18) + v56;
  v59 = (v19 * v50.f32[0]) + (v20 * v53.f32[0]);
  v55.f32[0] = vmuls_lane_f32(v19, v50, 1) + vmuls_lane_f32(v20, v53, 1);
  v60 = (v37.f32[0] * v19) + (v36.f32[0] * v20);
  v61 = vmuls_lane_f32(v21, v54, 1);
  v62 = (v21 * v54.f32[0]) + v59;
  v63 = (v33.f32[0] * v21) + v60;
  *a3 = v57;
  *v64.f32 = v50;
  v64.i64[1] = __PAIR64__(v50.u32[0], v37.u32[0]);
  *(a3 + 8) = v58;
  *(a3 + 12) = v62;
  *v65.f32 = v53;
  v65.i64[1] = __PAIR64__(v53.u32[0], v36.u32[0]);
  *v66.f32 = v54;
  v66.i64[1] = __PAIR64__(v54.u32[0], v33.u32[0]);
  *(a3 + 16) = v61 + v55.f32[0];
  *(a3 + 20) = v63;
  v67 = a5;
  *&v67.i32[1] = v23;
  v68 = vzip1q_s32(v67, v67);
  v68.i32[2] = a5.i32[0];
  v69 = vmulq_f32(v66, v68);
  v53.i32[0] = v37.i32[0];
  v68.i64[0] = *(a2 + 16);
  v70.i32[0] = vdup_lane_s32(v50, 1).u32[0];
  v70.i32[1] = v36.i32[0];
  v57.i32[0] = vdup_lane_s32(v54, 1).u32[0];
  v57.i32[1] = v33.i32[0];
  *v66.f32 = vadd_f32(vrev64_s32(vmul_f32(v53, *v68.f32)), vmul_f32(v70, *v68.f32));
  v71 = vzip1q_s32(a4, v68);
  v72 = vzip1q_s32(v71, v71);
  v72.i32[2] = v71.i32[0];
  *v71.i8 = vadd_f32(*v66.f32, vmul_n_f32(v57, v23));
  v68.f32[0] = v22;
  v73 = vzip1q_s32(v68, v68);
  v73.f32[2] = v22;
  result = vaddq_f32(vaddq_f32(vmulq_f32(v64, v72), vmulq_f32(v65, v73)), v69);
  *(a3 + 24) = result;
  *(a3 + 40) = v71.i64[0];
  return result;
}

uint64_t raycast_triangleMesh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 *a5)
{
  v5 = physx::Gu::gMidphaseRaycastTable[*(*(a1 + 40) + 8) - 3];
  v7 = *a5;
  return v5();
}

uint64_t raycast_heightField(float32x2_t *a1, float *a2, float *a3, float *a4, __int16 *a5, int a6, uint64_t a7, float a8, double a9)
{
  v311 = *MEMORY[0x1E69E9840];
  v15 = a2[4] * -2.0;
  v16 = a2[5] * -2.0;
  v17 = a2[6] * -2.0;
  v19 = a2[2];
  v18 = a2[3];
  v20 = (v18 * v18) + -0.5;
  v21 = *a2;
  v22 = a2[1];
  v23 = ((v16 * v22) + (*a2 * v15)) + (v19 * v17);
  v24 = ((v15 * v20) - (((v22 * v17) - (v19 * v16)) * v18)) + (*a2 * v23);
  v25 = ((v16 * v20) - (((v19 * v15) - (*a2 * v17)) * v18)) + (v22 * v23);
  v26 = ((v17 * v20) - (((*a2 * v16) - (v22 * v15)) * v18)) + (v19 * v23);
  v27 = *a3 + *a3;
  v28 = a3[1] + a3[1];
  v29 = a3[2] + a3[2];
  v30 = (-(v22 * v28) - (*a2 * v27)) - (v19 * v29);
  v31 = ((v18 * ((v19 * v28) - (v22 * v29))) + (v27 * v20)) - (*a2 * v30);
  v32 = ((v18 * ((*a2 * v29) - (v19 * v27))) + (v28 * v20)) - (v22 * v30);
  v33 = ((v18 * ((v22 * v27) - (*a2 * v28))) + (v29 * v20)) - (v19 * v30);
  v295.f32[0] = v24 + v31;
  v295.f32[1] = v25 + v32;
  v296 = v26 + v33;
  v34 = *a4 + *a4;
  v35 = a4[1] + a4[1];
  v36 = a4[2] + a4[2];
  v37 = (-(v22 * v35) - (v21 * v34)) - (v19 * v36);
  v38 = ((v18 * ((v19 * v35) - (v22 * v36))) + (v34 * v20)) - (v21 * v37);
  v39 = ((v18 * ((v21 * v36) - (v19 * v34))) + (v35 * v20)) - (v22 * v37);
  v40 = ((v18 * ((v22 * v34) - (v21 * v35))) + (v36 * v20)) - (v19 * v37);
  v294[0] = v38;
  v294[1] = v39;
  v294[2] = v40;
  v41 = a1[3].i8[4];
  v42 = (v41 & 2) == 0 && (*a5 & 0x80) == 0;
  v260 = v42;
  v292 = a1[1];
  v293 = a1;
  v43 = a1[3].f32[0];
  __asm { FMOV            V2.2S, #1.0 }

  v48 = COERCE_DOUBLE(vrev64_s32(vdiv_f32(*&_D2, a1[2])));
  v290 = v48;
  LODWORD(v48) = 1.0;
  v291 = 1.0 / v43;
  v288 = __PAIR64__(LODWORD(v39), LODWORD(v38));
  v289 = v40;
  *&a9 = sqrtf(((v39 * v39) + (v38 * v38)) + (v40 * v40));
  if (*&a9 >= 1.0e-20)
  {
    *&v48 = 1.0 / *&a9;
    v38 = v38 * (1.0 / *&a9);
    v39 = v39 * (1.0 / *&a9);
    v288 = __PAIR64__(LODWORD(v39), LODWORD(v38));
    v40 = v40 * (1.0 / *&a9);
    v289 = v40;
  }

  physx::Gu::HeightFieldUtil::computeLocalBounds(&v290, v287, v48, a9, _D2);
  v49.i32[0] = *v287;
  v50.i64[0] = *&v287[12];
  v51.i64[0] = 0x3F0000003F000000;
  v51.i64[1] = 0x3F0000003F000000;
  v52.i64[0] = *&v287[4];
  v53 = vextq_s8(vextq_s8(v49, v49, 4uLL), v52, 0xCuLL);
  v50.i64[1] = *&v287[20] | 0x3F00000000000000;
  v54 = vaddq_f32(v53, v50);
  v53.f32[3] = *&v287[12] - *v287;
  v55 = vmul_f32(vmul_f32(vsub_f32(*&v287[16], *&v287[4]), 0x3F0000003F000000), vdup_n_s32(0x3F8147AEu));
  v54.i32[3] = vmulq_f32(v53, v51).i32[3];
  v56 = vmulq_f32(v54, xmmword_1E31164B0);
  v57 = vextq_s8(v56, vextq_s8(v56, v56, 8uLL), 0xCuLL);
  v58 = vaddq_f32(v56, v57);
  *&v57.i32[1] = v55;
  v59 = vsubq_f32(v56, v57);
  v59.i32[3] = v58.i32[3];
  *v287 = v59;
  *&v287[16] = vadd_f32(*&vextq_s8(v56, v56, 4uLL), v55);
  v285 = 0.0;
  v60 = physx::Gu::rayAABBIntersect2(v287, (v287 | 0xC), &v295, v294, v286, &v285);
  result = 0;
  if (v60 && v285 <= a8)
  {
    v62 = *a5;
    if ((*a5 & 0x20) != 0)
    {
      v63 = a6;
    }

    else
    {
      v63 = 1;
    }

    v275 = a7;
    v276 = v63;
    v277 = 0;
    v278 = &v290;
    v279 = a2;
    v280 = a4;
    v281 = v294;
    v282 = &v295;
    v283 = v62;
    v284 = (v41 & 2) >> 1;
    v64 = v295.f32[0];
    v65 = 0.0;
    v273 = v295;
    v66 = v296;
    v274 = v296;
    if (v285 <= 0.0)
    {
      v261 = v295.f32[1];
    }

    else
    {
      v65 = v285 + -10.0;
      v64 = v295.f32[0] + ((v285 + -10.0) * v38);
      v66 = v296 + ((v285 + -10.0) * v40);
      v273.f32[0] = v64;
      v273.f32[1] = v295.f32[1] + ((v285 + -10.0) * v39);
      v261 = v273.f32[1];
      v274 = v66;
    }

    v67 = a8 - v65;
    v68 = *&v287[12] - *v287;
    v69 = vsub_f32(*&v287[16], *&v287[4]);
    if (v69.f32[0] <= v69.f32[1])
    {
      v69.f32[0] = v69.f32[1];
    }

    if (v68 <= v69.f32[0])
    {
      v68 = v69.f32[0];
    }

    v70 = (v68 * 2.0) + 10.0;
    if (v67 >= v70)
    {
      v71 = v70;
    }

    else
    {
      v71 = v67;
    }

    v309 = 0;
    v72 = physx::Gu::intersectRayAABB2(v287, (v287 | 0xC), &v273, &v288, &v309 + 1, &v309, v71);
    v73 = v260;
    v74 = v261;
    if (v72)
    {
      v75 = (*(&v309 + 1) * v39) + v261;
      v76 = (*(&v309 + 1) * v40) + v66;
      v77 = v64;
      v78 = v64 + (v38 * *&v309);
      v80 = v292;
      v81 = *(*&v292 + 56);
      v82 = *(*&v292 + 60);
      v83 = (v81 - 1) * 1.0;
      v84 = (v82 - 1) * 1.0;
      v85 = ((*(&v309 + 1) * v38) + v64) * *&v290;
      v86 = fmaxf(v85, 0.0000001);
      if (v86 >= v83)
      {
        v86 = v83 + 0.0;
      }

      v87 = v76 * v291;
      v88 = fmaxf(v76 * v291, 0.0000001);
      v89 = v84 + 0.0;
      if (v88 < v84)
      {
        v89 = v88;
      }

      v90 = v78 * *&v290;
      v91 = (v66 + (v40 * *&v309)) * v291;
      v92 = (v78 * *&v290) - v85;
      if (v92 < 0.0)
      {
        v93 = -1.0;
      }

      else
      {
        v93 = 1.0;
      }

      if ((v91 - v87) < 0.0)
      {
        v94 = -1.0;
      }

      else
      {
        v94 = 1.0;
      }

      v266 = v94;
      v267 = v93;
      v95 = v93 * 1.0e-10;
      if (vabds_f32(v90, v85) < 1.0e-10)
      {
        v92 = v95;
      }

      if (vabds_f32(v91, v87) >= 1.0e-10)
      {
        v96 = v91 - v87;
      }

      else
      {
        v96 = v94 * 1.0e-10;
      }

      v97 = (v71 * v38) * *&v290;
      v98 = v71 * v39;
      v99 = (v71 * v40) * v291;
      v100 = sqrtf(((v98 * v98) + (v97 * v97)) + (v99 * v99));
      v101 = v100 <= 1.0e-20;
      v246 = v100;
      v102 = 1.0 / v100;
      v103 = v97 * v102;
      v104 = (v71 * v39) * v102;
      v105 = v99 * v102;
      if (v101)
      {
        v106 = (v71 * v40) * v291;
      }

      else
      {
        v106 = v105;
      }

      if (!v101)
      {
        v98 = v104;
        v97 = v103;
      }

      v271 = v97;
      v272 = v98;
      v107 = floorf(v86);
      v108 = ceilf(v86);
      v109 = floorf(v89);
      v110 = ceilf(v89);
      if (v96 <= 0.0)
      {
        v111 = v110;
      }

      else
      {
        v111 = v109;
      }

      v112 = v107 + -1.0;
      if (v107 != v86)
      {
        v112 = v107;
      }

      if (v108 == v86)
      {
        v113 = v108 + 1.0;
      }

      else
      {
        v113 = v108;
      }

      if (v92 <= 0.0)
      {
        v107 = v108;
        v113 = v112;
      }

      v114 = v109 + -1.0;
      if (v109 != v89)
      {
        v114 = v109;
      }

      if (v110 == v89)
      {
        v115 = v110 + 1.0;
      }

      else
      {
        v115 = v110;
      }

      if (v96 <= 0.0)
      {
        v115 = v114;
      }

      v116 = (v113 - v85) / v92;
      v117 = (v115 - v87) / v96;
      if (v116 < 0.0)
      {
        v116 = fabsf(0.0000001 / v92);
      }

      v118 = v107;
      v119 = v111;
      v79 = v261 + (v39 * *&v309);
      v120 = v79 - v75;
      v121 = v267;
      v122 = v266;
      if (v117 < 0.0)
      {
        v117 = fabsf(0.0000001 / v96);
      }

      v258 = v293[5];
      v259 = v293[6];
      v123 = v293[4];
      v268 = v66 * v291;
      v269 = v77 * *&v290;
      v252 = 1.0 / fabsf(v92);
      v124 = v118;
      v125 = v119;
      v126 = v75 + (v120 * 0.0);
      v127 = v121 + (1 - v122) / 2;
      v256 = v127 + 1;
      v257 = 2 - v127;
      v128 = -v106;
      v129 = -v271;
      v265 = -v272;
      v255 = v81;
      v130 = "N2re17FromToByAnimationINS_7Vector2IfEEEE" + 8;
      v250 = v75;
      v251 = 1.0 / fabsf(v96);
      v249 = v292;
      v262 = v106;
      v253 = -v106;
      v254 = v79 - v75;
      v247 = v123;
      do
      {
        v131 = v126;
        if (v116 >= v117)
        {
          v132 = v117;
        }

        else
        {
          v132 = v116;
        }

        v126 = v75 + (v132 * v120);
        v133 = v118 + v121;
        v134 = *(*&v80 + 80);
        v135 = v123 * *(v134 + 4 * (v119 + v118 * v82));
        v136 = v123 * *(v134 + 4 * (v119 + v118 * v82 + v122));
        v137 = *(v134 + 4 * (v119 + (v118 + v121) * v82));
        v310[0] = v135;
        v310[1] = v136;
        v138 = v123 * v137;
        v139 = v123 * *(v134 + 4 * (v119 + (v118 + v121) * v82 + v122));
        v310[2] = v138;
        v310[3] = v139;
        if (v138 >= v139)
        {
          v140 = v139;
        }

        else
        {
          v140 = v123 * v137;
        }

        if (v138 <= v139)
        {
          v138 = v139;
        }

        if (v135 >= v136)
        {
          v141 = v136;
        }

        else
        {
          v141 = v135;
        }

        if (v135 <= v136)
        {
          v135 = v136;
        }

        if (v141 >= v140)
        {
          v142 = v140;
        }

        else
        {
          v142 = v141;
        }

        if (v135 <= v138)
        {
          v135 = v138;
        }

        if (v131 >= v126)
        {
          v143 = v75 + (v132 * v120);
        }

        else
        {
          v143 = v131;
        }

        if (v131 <= v126)
        {
          v131 = v75 + (v132 * v120);
        }

        v144 = v131 + 0.0001;
        if ((v143 + -0.0001) > v135 || v144 < v142)
        {
          goto LABEL_151;
        }

        v270 = v132;
        v146 = v310[(1 - v122) / 2 - v121 + 1];
        v147 = v310[v257];
        v148 = v310[v256];
        v149 = v310[v121 - (1 - v122) / 2 + 2];
        if (v124 >= (v267 + v124))
        {
          v150 = v267 + v124;
        }

        else
        {
          v150 = v124;
        }

        if (v124 <= (v267 + v124))
        {
          v151 = v267 + v124;
        }

        else
        {
          v151 = v124;
        }

        v152 = v266 + v125;
        if (v125 >= (v266 + v125))
        {
          v153 = v266 + v125;
        }

        else
        {
          v153 = v125;
        }

        if (v125 > (v266 + v125))
        {
          v152 = v125;
        }

        v307 = v310[v257];
        v308 = v150;
        v305 = v151;
        v306 = v152;
        v303 = v152;
        v304 = v149;
        if (v133 >= v118)
        {
          v154 = v118;
        }

        else
        {
          v154 = v118 + v121;
        }

        v155 = v119 + v122;
        if (v119 + v122 >= v119)
        {
          v155 = v119;
        }

        v156 = v155 + v154 * v82;
        v157 = v134 + 4 * v156;
        v158 = *(v157 + 2);
        if ((v158 & 0x80) != 0)
        {
          v159 = &v308;
          v160 = &v306;
          v161 = &v307;
          v162 = v152;
          v152 = v153;
          v163 = v151;
        }

        else
        {
          v159 = &v305;
          v160 = &v303;
          v161 = &v304;
          v162 = v153;
          v149 = v148;
          v148 = v146;
          v146 = v147;
          v163 = v150;
        }

        v164 = v150 - v163;
        v165 = v146 - v148;
        v166 = v152 - v153;
        v167 = v151 - v163;
        v168 = v149 - v148;
        v169 = v162 - v153;
        v170 = ((v149 - v148) * v128) + (v272 * (v162 - v153));
        v171 = ((v162 - v153) * v129) + (v106 * (v151 - v163));
        v172 = ((v151 - v163) * v265) + (v271 * (v149 - v148));
        v173 = (((v146 - v148) * v171) + ((v150 - v163) * v170)) + ((v152 - v153) * v172);
        v264 = v124;
        if (v73)
        {
          v174 = 0.0;
          if (v173 < 1.4211e-14 || ((v175 = v269 - v163, v176 = v74 - v148, v177 = v268 - v153, v178 = ((v176 * v171) + (v175 * v170)) + ((v268 - v153) * v172), v179 = -(v173 * 0.0001), v180 = v173 + (v173 * 0.0001), v178 >= v179) ? (v181 = v178 <= v180) : (v181 = 0), !v181))
          {
LABEL_116:
            v182 = 0.0;
LABEL_119:
            v183 = 0;
            v184 = 3.4028e38;
            v185 = v174;
            v186 = v182;
            goto LABEL_120;
          }

          v240 = (v176 * v166) - (v177 * v165);
          v241 = (v177 * v164) - (v175 * v166);
          v242 = (v175 * v165) - (v176 * v164);
          v243 = ((v272 * v241) + (v271 * v240)) + (v106 * v242);
          v244 = v243 >= v179 && (v178 + v243) <= v180;
          v182 = 0.0;
          if (!v244)
          {
            goto LABEL_119;
          }

          v184 = (1.0 / v173) * (((v168 * v241) + (v167 * v240)) + (v169 * v242));
          v186 = v178 * (1.0 / v173);
          v185 = (1.0 / v173) * v243;
        }

        else
        {
          v174 = 0.0;
          if (fabsf(v173) < 1.4211e-14 || (v225 = 1.0 / v173, v226 = v269 - v163, v227 = v74 - v148, v228 = v268 - v153, v186 = ((((v74 - v148) * v171) + (v226 * v170)) + ((v268 - v153) * v172)) * v225, v186 < -0.0001) || v186 > 1.0001)
          {
            v182 = 0.0;
            v106 = v262;
            goto LABEL_119;
          }

          v229 = (v227 * v166) - (v228 * v165);
          v230 = (v228 * v164) - (v226 * v166);
          v231 = (v226 * v165) - (v227 * v164);
          v106 = v262;
          v185 = v225 * (((v272 * v230) + (v271 * v229)) + (v262 * v231));
          if (v185 < -0.0001)
          {
            goto LABEL_116;
          }

          v182 = 0.0;
          if ((v186 + v185) > 1.0001)
          {
            goto LABEL_119;
          }

          v184 = v225 * (((v168 * v230) + (v167 * v229)) + (v169 * v231));
        }

        if ((~v158 & 0x7F) == 0 || (v184 >= 0.0 ? (v245 = v184 > v246) : (v245 = 1), v245))
        {
          v174 = v185;
          v182 = v186;
          goto LABEL_119;
        }

        v183 = 1;
LABEL_120:
        v187 = *v159;
        v188 = v151 - *v159;
        v189 = *v161;
        v190 = v149 - *v161;
        v191 = *v160;
        v192 = v162 - *v160;
        v193 = v150 - *v159;
        v194 = v146 - *v161;
        v195 = v152 - *v160;
        v196 = (v194 * v128) + (v272 * v195);
        v197 = (v195 * v129) + (v106 * v193);
        v198 = (v193 * v265) + (v271 * v194);
        v199 = ((v190 * v197) + (v188 * v196)) + (v192 * v198);
        v263 = v125;
        if (v73)
        {
          v200 = 0.0;
          if (v199 < 1.4211e-14 || ((v201 = v269 - v187, v202 = v74 - v189, v203 = v268 - v191, v204 = (((v74 - v189) * v197) + ((v269 - v187) * v196)) + ((v268 - v191) * v198), v205 = -(v199 * 0.0001), v206 = v199 + (v199 * 0.0001), v204 >= v205) ? (v207 = v204 <= v206) : (v207 = 0), !v207))
          {
LABEL_134:
            v213 = 0.0;
            goto LABEL_135;
          }

          v208 = (v202 * v192) - (v203 * v190);
          v209 = (v203 * v188) - (v201 * v192);
          v210 = (v201 * v190) - (v202 * v188);
          v211 = ((v272 * v209) + (v271 * v208)) + (v106 * v210);
          v212 = v211 >= v205 && (v204 + v211) <= v206;
          v213 = 0.0;
          if (!v212)
          {
            goto LABEL_135;
          }

          v214 = (((v194 * v209) + (v193 * v208)) + (v195 * v210)) * (1.0 / v199);
          v215 = v204 * (1.0 / v199);
          v216 = v211 * (1.0 / v199);
        }

        else
        {
          v200 = 0.0;
          if (fabsf(v199) < 1.4211e-14)
          {
            goto LABEL_134;
          }

          v232 = 1.0 / v199;
          v233 = v269 - v187;
          v234 = v74 - v189;
          v235 = v268 - v191;
          v215 = ((((v74 - v189) * v197) + ((v269 - v187) * v196)) + (v235 * v198)) * v232;
          if (v215 < -0.0001)
          {
            goto LABEL_134;
          }

          if (v215 > 1.0001)
          {
            goto LABEL_134;
          }

          v236 = (v234 * v192) - (v235 * v190);
          v237 = (v235 * v188) - (v233 * v192);
          v238 = (v233 * v190) - (v234 * v188);
          v216 = (((v272 * v237) + (v271 * v236)) + (v106 * v238)) * v232;
          if (v216 < -0.0001)
          {
            goto LABEL_134;
          }

          v213 = 0.0;
          if ((v215 + v216) > 1.0001)
          {
            goto LABEL_135;
          }

          v214 = (((v194 * v237) + (v193 * v236)) + (v195 * v238)) * v232;
        }

        v239 = v214 < 0.0 || v214 > v246;
        if (!v239 && (~*(v157 + 3) & 0x7F) != 0)
        {
          v217 = 1;
          goto LABEL_136;
        }

        v200 = v216;
        v213 = v215;
LABEL_135:
        v217 = 0;
        v214 = 3.4028e38;
        v216 = v200;
        v215 = v213;
LABEL_136:
        v132 = v270;
        v218 = v183 ^ 1;
        if (v184 > v214)
        {
          v218 = 1;
        }

        if (v218)
        {
          v220 = v217 ^ 1;
          if (v214 > v184)
          {
            v220 = 1;
          }

          if ((v220 & 1) == 0)
          {
            v221 = v116;
            v222 = v185;
            v248 = v117;
            v223 = v221;
            v224 = v186;
            v300 = v258 * (v269 + (v271 * v214));
            v301 = v74 + (v272 * v214);
            v302 = v259 * (v268 + (v106 * v214));
            {
              return v277;
            }

            if (v183)
            {
              v297 = v258 * (v269 + (v271 * v184));
              v298 = v261 + (v272 * v184);
              v299 = v259 * (v268 + (v262 * v184));
              {
                return v277;
              }
            }

            v73 = v260;
            v74 = v261;
            v106 = v262;
            v75 = v250;
            v80 = v249;
            v130 = "omToByAnimationINS_7Vector2IfEEEE";
            v132 = v270;
            v116 = v223;
            v123 = v247;
            v117 = v248;
          }
        }

        else
        {
          v300 = v258 * (v269 + (v271 * v184));
          v301 = v74 + (v272 * v184);
          v302 = v259 * (v268 + (v106 * v184));
          v219 = 2 * v156;
          {
            return v277;
          }

          if (v217)
          {
            v297 = v258 * (v269 + (v271 * v214));
            v298 = v261 + (v272 * v214);
            v299 = v259 * (v268 + (v262 * v214));
            {
              return v277;
            }
          }

          v73 = v260;
          v74 = v261;
          v106 = v262;
          v75 = v250;
          v80 = v249;
          v130 = "N2re17FromToByAnimationINS_7Vector2IfEEEE" + 8;
          v132 = v270;
        }

        v128 = v253;
        v120 = v254;
        v125 = v263;
        v124 = v264;
        v129 = -v271;
LABEL_151:
        if (v116 >= v117)
        {
          v119 += v122;
          if (v119 + v122 < 0 || (v119 + v122) >= v82)
          {
            return v277;
          }

          v125 = v266 + v125;
          v117 = v251 + v117;
        }

        else
        {
          if (v133 + v121 < 0 || (v133 + v121) >= v255)
          {
            return v277;
          }

          v124 = v267 + v124;
          v116 = v252 + v116;
          v118 += v121;
        }
      }

      while (v132 < *(v130 + 550));
    }

    return v277;
  }

  return result;
}

uint64_t physx::readChunk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (***a5)(void, uint64_t, uint64_t))
{
  (**a5)(a5, a1, 1);
  (**a5)(a5, a2, 1);
  (**a5)(a5, a3, 1);
  v9 = **a5;

  return v9(a5, a4, 1);
}

uint64_t physx::readDword(int a1, void (***a2)(void, unsigned __int32 *, uint64_t))
{
  v6 = 0;
  (**a2)(a2, &v6, 4);
  if (a1)
  {
    v3.i32[0] = v6;
    v4 = vrev64_s16(*&vmovl_u8(v3));
    return vuzp1_s8(v4, v4).u32[0];
  }

  return v6;
}

float physx::readFloat(int a1, void (***a2)(void, float *, uint64_t))
{
  (**a2)(a2, &v6, 4);
  if (a1)
  {
    *v3.i32 = v6;
    v4 = vrev64_s16(*&vmovl_u8(v3));
    LODWORD(v6) = vuzp1_s8(v4, v4).u32[0];
  }

  return v6;
}

uint64_t physx::writeDword(unsigned int a1, int a2, uint64_t (***a3)(void, unsigned int *, uint64_t))
{
  v4 = a1;
  if (a2)
  {
    v4 = bswap32(a1);
  }

  return (**a3)(a3, &v4, 4);
}

uint64_t physx::writeFloat(int a1, uint64_t (***a2)(void, unsigned int *, uint64_t), float a3)
{
  v4 = LODWORD(a3);
  if (a1)
  {
    v4 = bswap32(LODWORD(a3));
  }

  return (**a2)(a2, &v4, 4);
}

uint64_t physx::readFloatBuffer(__int32 *a1, unsigned int a2, int a3, void (***a4)(void, __int32 *, void))
{
  v6 = a1;
  (**a4)(a4, a1, 4 * a2);
  if (a2 && a3)
  {
    v8 = a2;
    do
    {
      v7.i32[0] = *v6;
      v9 = vrev64_s16(*&vmovl_u8(v7));
      v7 = vuzp1_s8(v9, v9);
      *v6++ = v7.i32[0];
      --v8;
    }

    while (v8);
  }

  return 1;
}

uint64_t physx::writeFloatBuffer(uint64_t result, int a2, int a3, uint64_t (***a4)(void, unsigned int *, uint64_t))
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    if (a2)
    {
      do
      {
        --v5;
        v7 = *v6++;
        v9 = bswap32(v7);
        result = (**a4)(a4, &v9, 4);
      }

      while (v5);
    }
  }

  else
  {
    v8 = **a4;

    return v8(a4, result, (4 * a2));
  }

  return result;
}

uint64_t physx::writeWordBuffer(uint64_t result, int a2, int a3, uint64_t (***a4)(void, __int16 *, uint64_t))
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    if (a2)
    {
      do
      {
        --v5;
        v7 = *v6++;
        v9 = bswap32(v7) >> 16;
        result = (**a4)(a4, &v9, 2);
      }

      while (v5);
    }
  }

  else
  {
    v8 = **a4;

    return v8(a4, result, (2 * a2));
  }

  return result;
}

uint64_t physx::readWordBuffer(uint64_t a1, unsigned int a2, int a3, uint64_t (***a4)(void, uint64_t, void))
{
  result = (**a4)(a4, a1, 2 * a2);
  if (a2 && a3)
  {
    v8 = a2;
    v9 = (a1 + 1);
    do
    {
      v10 = *(v9 - 1);
      *(v9 - 1) = *v9;
      *v9 = v10;
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t physx::writeHeader(char a1, char a2, char a3, char a4, unsigned int a5, int a6, void (***a7)(uint64_t (***)(void, unsigned int *, uint64_t), unsigned int *, uint64_t))
{
  qmemcpy(v16, "SXN", sizeof(v16));
  v15 = a6 ^ 1;
  (**a7)(a7, &v16[2], 1);
  (**a7)(a7, &v16[1], 1);
  (**a7)(a7, v16, 1);
  (**a7)(a7, &v15, 1);
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  (**a7)(a7, &v20, 1);
  (**a7)(a7, &v19, 1);
  (**a7)(a7, &v18, 1);
  (**a7)(a7, &v17, 1);
  physx::writeDword(a5, a6, a7);
  return 1;
}

uint64_t physx::Gu::WriteHeader(char a1, char a2, char a3, char a4, unsigned int a5, int a6, void (***a7)(uint64_t (***)(void, unsigned int *, uint64_t), unsigned int *, uint64_t))
{
  qmemcpy(v16, "ECI", sizeof(v16));
  v15 = a6 ^ 1;
  (**a7)(a7, &v16[2], 1);
  (**a7)(a7, &v16[1], 1);
  (**a7)(a7, v16, 1);
  (**a7)(a7, &v15, 1);
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  (**a7)(a7, &v20, 1);
  (**a7)(a7, &v19, 1);
  (**a7)(a7, &v18, 1);
  (**a7)(a7, &v17, 1);
  physx::writeDword(a5, a6, a7);
  return 1;
}

uint64_t physx::readHeader(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3, unsigned __int8 a4, _DWORD *a5, BOOL *a6, uint64_t (***a7)(void, uint64_t, uint64_t))
{
  v15 = 0;
  physx::readChunk(&v15 + 3, &v15 + 2, &v15 + 1, &v15, a7);
  result = 0;
  if (HIBYTE(v15) == 78 && BYTE2(v15) == 88 && BYTE1(v15) == 83)
  {
    *a6 = (v15 & 1) == 0;
    physx::readChunk(&v15 + 3, &v15 + 2, &v15 + 1, &v15, a7);
    result = 0;
    if (HIBYTE(v15) == a1 && BYTE2(v15) == a2 && BYTE1(v15) == a3 && v15 == a4)
    {
      *a5 = physx::readDword(*a6, a7);
      return 1;
    }
  }

  return result;
}

uint64_t physx::Gu::ReadHeader(int a1, int a2, int a3, int a4, _DWORD *a5, BOOL *a6, uint64_t (***a7)(void, uint64_t, uint64_t))
{
  v15 = 0;
  physx::readChunk(&v15 + 3, &v15 + 2, &v15 + 1, &v15, a7);
  result = 0;
  if (HIBYTE(v15) == 73 && BYTE2(v15) == 67 && BYTE1(v15) == 69)
  {
    *a6 = (v15 & 1) == 0;
    physx::readChunk(&v15 + 3, &v15 + 2, &v15 + 1, &v15, a7);
    if (SHIBYTE(v15) == a1 && SBYTE2(v15) == a2 && SBYTE1(v15) == a3 && v15 == a4)
    {
      *a5 = physx::readDword(*a6, a7);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t physx::storeIndices(uint64_t result, unsigned int a2, uint64_t a3, uint64_t (***a4)(void, unsigned int *, uint64_t), int a5)
{
  v6 = a3;
  if (result > 0xFF)
  {
    if (WORD1(result))
    {

      return physx::writeFloatBuffer(a3, a2, a5, a4);
    }

    else if (a2)
    {
      v10 = a2;
      do
      {
        v12 = *v6++;
        v11 = v12;
        v14 = v12;
        if (a5)
        {
          v14 = bswap32(v11) >> 16;
        }

        result = (**a4)(a4, &v14, 2);
        --v10;
      }

      while (v10);
    }
  }

  else if (a2)
  {
    v7 = a2;
    do
    {
      v8 = *v6++;
      v13 = v8;
      result = (**a4)(a4, &v13, 1);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t physx::readIndices(uint64_t result, unsigned int a2, __int32 *a3, uint64_t (***a4)(void, unsigned __int8 *, uint64_t), int a5)
{
  v6 = a3;
  if (result > 0xFF)
  {
    if (WORD1(result))
    {

      return physx::readFloatBuffer(a3, a2, a5, a4);
    }

    else if (a2)
    {
      v9 = a2;
      do
      {
        v12 = 0;
        result = (**a4)(a4, &v12, 2);
        if (a5)
        {
          v10 = v12;
          LOBYTE(v12) = HIBYTE(v12);
          HIBYTE(v12) = v10;
        }

        *v6++ = v12;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v11 = 0;
    if (a2)
    {
      v7 = a2;
      do
      {
        result = (**a4)(a4, &v11, 1);
        *v6++ = v11;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t physx::Gu::StoreIndices(uint64_t result, unsigned int a2, char *a3, uint64_t (***a4)(void, __int16 *, uint64_t), int a5)
{
  if (result >= 0x100)
  {
    if (a2)
    {
      v10 = a2;
      do
      {
        v12 = *a3;
        a3 += 2;
        v11 = v12;
        v14 = v12;
        if (a5)
        {
          v14 = __rev16(v11);
        }

        result = (**a4)(a4, &v14, 2);
        --v10;
      }

      while (v10);
    }
  }

  else if (a2)
  {
    v7 = a2;
    do
    {
      v8 = *a3;
      a3 += 2;
      v13 = v8;
      result = (**a4)(a4, &v13, 1);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t physx::Gu::ReadIndices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (***a4)(void, char *, uint64_t), int a5)
{
  v6 = a3;
  v12[1] = *MEMORY[0x1E69E9840];
  if (a1 > 0xFF)
  {

    return physx::readWordBuffer(a3, a2, a5, a4);
  }

  else
  {
    v8 = a2;
    MEMORY[0x1EEE9AC00](a1);
    v9 = v12 - ((a2 + 15) & 0x1FFFFFFF0);
    bzero(v9, a2);
    result = (**a4)(a4, v12 - ((v8 + 15) & 0x1FFFFFFF0), a2);
    if (a2)
    {
      do
      {
        v11 = *v9++;
        *v6++ = v11;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t physx::Gu::computeCapsule_TriangleMeshMTD(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v95 = v2;
  v102 = v3;
  v5 = v4;
  v7 = v6;
  v125[513] = *MEMORY[0x1E69E9840];
  v101 = v1;
  v8 = *(*(v1 + 40) + 80);
  v9 = (*(v1 + 4) * *(v1 + 8)) * *(v1 + 12);
  v122 = 0;
  *v10.i32 = v6 * 1.15;
  v121 = vdup_lane_s32(v10, 0);
  v97 = v11;
  physx::operator*(v11, (v1 + 4), &v114);
  v112 = 0;
  v113 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(&v112, 0x80u);
  v13 = 0;
  v14 = 0;
  v15 = 0uLL;
  v111 = 0u;
  v109 = 0u;
  v108 = 0xFFFFFFF;
  v16 = *(v5 + 48);
  v17 = *(v5 + 64);
  v18 = vneg_f32(0x80000000800000);
  while (1)
  {
    v100 = v15;
    LODWORD(v113) = 0;
    v16.i32[3] = v17.i32[0];
    v104 = v16;
    v105 = vextq_s8(v17, v17, 4uLL).u64[0];
    v106 = v7;
    physx::Gu::computeBoxAroundCapsule(&v104, v103, v12);
    midPhaseQuery(v101, v97, v103, &v112, v19, v20);
    v26 = v113;
    if (!v113)
    {
      v15 = v100;
      goto LABEL_36;
    }

    v96 = v13;
    v27 = v112;
    v107 = v18;
    if ((v113 + 31) < 0x20)
    {
      v15 = v100;
      goto LABEL_35;
    }

    v99 = v14;
    v28 = 0;
    v29 = 0;
    v98 = v112;
    v30 = v113;
    do
    {
      v31 = v30;
      if (v30 >= 0x20uLL)
      {
        v31 = 32;
      }

      if (v31 <= 1)
      {
        v31 = 1;
      }

      v32 = 32 * v28;
      if ((v26 - 32 * v28) >= 0x20)
      {
        v33 = 32;
      }

      else
      {
        v33 = v26 - 32 * v28;
      }

      if (v32 != v26)
      {
        v34 = *(v101 + 40);
        v35 = *(v34 + 92);
        v36 = v115;
        v37 = v116;
        v21.i64[0] = v117;
        v22.i64[0] = v119;
        v40.i64[0] = __PAIR64__(LODWORD(v116), v115.u32[0]);
        v38 = v118;
        v39 = v120;
        v40.i64[1] = __PAIR64__(v115.u32[3], v114);
        v41 = *(v34 + 40);
        v42 = *(v34 + 48);
        v43 = *&v115.i32[1];
        v44 = vuzp2q_s32(v36, v36);
        v44.i32[0] = v114;
        v44.i32[3] = v114;
        v45 = vuzp2q_s32(v22, vzip1q_s32(v22, v22));
        v46.i64[0] = vzip2q_s32(v115, vuzp1q_s32(v36, v36)).u64[0];
        v46.i64[1] = __PAIR64__(v46.u32[0], LODWORD(v116));
        v47.i64[0] = v117;
        v47.i64[1] = __PAIR64__(v117, LODWORD(v118));
        v48 = vuzp2q_s32(v21, vzip1q_s32(v21, v21));
        v49.i64[0] = v119;
        v49.i64[1] = __PAIR64__(v119, LODWORD(v120));
        v50 = v48;
        v50.f32[1] = v118;
        v50.i32[3] = v48.i32[0];
        v51 = v45;
        v51.f32[1] = v120;
        v51.i32[3] = v45.i32[0];
        v52 = v27;
        v53 = &v124;
        do
        {
          v55 = *v52++;
          v54 = v55;
          if ((v35 & 2) != 0)
          {
            v60 = (v42 + 6 * v54);
            v57 = *v60;
            v58 = v60[1];
            v59 = v60[2];
          }

          else
          {
            v56 = (v42 + 12 * v54);
            v57 = *v56;
            v58 = v56[1];
            v59 = v56[2];
          }

          if (v9 >= 0.0)
          {
            v61 = v59;
          }

          else
          {
            v61 = v58;
          }

          if (v9 < 0.0)
          {
            v58 = v59;
          }

          v62 = (v41 + 12 * v57);
          v63 = (v41 + 12 * v58);
          *v23.f32 = *v63;
          v25.i32[0] = v62[1].i32[0];
          *v64.f32 = *v62;
          v64.i32[3] = vdup_lane_s32(*v63, 0).i32[1];
          v64.i32[2] = *v62;
          v24.i32[0] = v63[1].i32[0];
          *v65.f32 = vrev64_s32(*v62);
          v65.i32[3] = HIDWORD(*v63);
          v65.i32[2] = v65.i32[0];
          v66 = vmulq_f32(v46, v65);
          v67 = v25;
          v67.i32[1] = v24.i32[0];
          v68 = vaddq_f32(vmulq_f32(v44, v64), v66);
          v69 = vzip1q_s32(v67, v67);
          v69.i32[2] = v25.i32[0];
          v25 = vmulq_f32(v47, v69);
          v70 = vaddq_f32(v68, v25);
          v71 = (v41 + 12 * v61);
          *v25.f32 = *v71;
          v72 = vmulq_f32(v36, vzip1q_s32(v25, v23));
          v73 = v72;
          v73.i32[0] = v72.i32[3];
          v73.i32[3] = v72.i32[0];
          *&v23.u32[2] = *v71;
          v25.f32[0] = v39 + (((v43 * COERCE_FLOAT(*v71)) + vmuls_lane_f32(v37, *v71, 1)) + (v38 * v71[1].f32[0]));
          v24.i32[1] = v71[1].i32[0];
          v24 = vmulq_f32(v50, vzip1q_s32(v24, v24));
          v23 = vaddq_f32(v51, vaddq_f32(vaddq_f32(v73, vmulq_f32(v40, v23)), v24));
          v53[-2] = vaddq_f32(v49, v70);
          v53[-1] = v23;
          v53->f32[0] = v25.f32[0];
          if (v8)
          {
            v74 = *(v8 + v54);
          }

          else
          {
            v74 = 56;
          }

          v53->i8[4] = v74;
          v53 = (v53 + 40);
          --v31;
        }

        while (v31);
      }

      v29 |= calculateMTD(v5, &v121, v102, v123, v33, v32, v125, &v122, &v109, &v111, &v110, &v108, &v107);
      ++v28;
      v30 -= 32;
      v27 += 32;
    }

    while (v28 != (v26 + 31) >> 5);
    v15 = v100;
    if ((v29 & 1) == 0)
    {
      goto LABEL_35;
    }

    v75 = v98[v108];
    v108 = v75;
    v76 = vsub_f32(v107, *(v5 + 80)).f32[0];
    if (v76 > 0.0)
    {
      break;
    }

    v77 = vmulq_n_f32(v109, v76);
    v77.i32[3] = 0;
    v15 = vsubq_f32(v100, v77);
    v78 = vsubq_f32(*v5, v77);
    v79 = vsubq_f32(v78, *v5);
    *v5 = v78;
    v16 = vaddq_f32(*(v5 + 48), v79);
    v17 = vaddq_f32(*(v5 + 64), v79);
    *(v5 + 48) = v16;
    *(v5 + 64) = v17;
    v14 = v99 + 1;
    v13 = 1;
    if (v99 == 3)
    {
      goto LABEL_36;
    }
  }

  if (!v99)
  {
    v88 = v95;
    *(v95 + 48) = 0;
    v93 = v111;
    v94 = v109;
    HIDWORD(v93) = v109.i32[0];
    *(v95 + 24) = v93;
    *(v95 + 40) = vext_s8(*v94.i8, *&vextq_s8(v94, v94, 8uLL), 4uLL);
    goto LABEL_42;
  }

  v96 = 1;
LABEL_35:
  v13 = v96;
LABEL_36:
  v80 = vmulq_f32(v15, v15);
  v80.i64[0] = vpaddq_f32(v80, v80).u64[0];
  v81 = vpadd_f32(*v80.f32, *v80.f32);
  v82 = vrsqrte_f32(v81);
  v83 = 4;
  do
  {
    v82 = vmul_f32(v82, vrsqrts_f32(vmul_f32(v82, v82), v81));
    --v83;
  }

  while (v83);
  v84 = vbsl_s8(vdup_lane_s32(vceqz_f32(v81), 0), v81, vmul_f32(v81, v82));
  v85 = vrecpe_f32(v84);
  v86 = 4;
  do
  {
    v85 = vmul_f32(v85, vrecps_f32(v84, v85));
    --v86;
  }

  while (v86);
  if (v13)
  {
    v87 = vandq_s8(vdupq_lane_s32(vcgtz_f32(v84), 0), vmulq_n_f32(v15, v85.f32[0]));
    v88 = v95;
    *(v95 + 48) = -v84.f32[0];
    v89 = v111;
    HIDWORD(v89) = v87.i32[0];
    *(v95 + 24) = v89;
    *(v95 + 40) = vext_s8(*v87.i8, *&vextq_s8(v87, v87, 8uLL), 4uLL);
    v75 = v108;
LABEL_42:
    *(v88 + 16) = v75;
    v90 = 1;
    goto LABEL_44;
  }

  v90 = 0;
LABEL_44:
  if ((v113 & 0x8000000000000000) == 0 && (v113 & 0x7FFFFFFF00000000) != 0 && v112 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v90;
}

float physx::operator*@<S0>(uint64_t a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  v7 = v4 + v4;
  v8 = v5 + v5;
  v9 = v4 * (v4 + v4);
  v10 = v5 * (v5 + v5);
  v11 = (v3 + v3) * v4;
  v12 = (v3 + v3) * v5;
  v13 = (v3 + v3) * v6;
  v14 = v7 * v5;
  v15 = v7 * v6;
  v16 = v8 * v6;
  v17 = (1.0 - v9) - v10;
  v18 = v11 + v16;
  v19 = v12 - v15;
  v20 = v11 - v16;
  v21 = 1.0 - (v3 * (v3 + v3));
  v22 = v21 - v10;
  v23 = v14 + v13;
  v24 = v12 + v15;
  v25 = v14 - v13;
  v26 = v21 - v9;
  v27 = a2[4];
  v28 = a2[5];
  v29 = a2[6];
  v31 = a2[2];
  v30 = a2[3];
  v32 = v27 + v27;
  v33 = v28 + v28;
  v34 = v27 * (v27 + v27);
  v35 = v28 * (v28 + v28);
  v36 = (v30 + v30) * v27;
  v37 = (v30 + v30) * v28;
  v38 = (v30 + v30) * v29;
  v39 = v32 * v28;
  v40 = v32 * v29;
  v41 = v33 * v29;
  v42 = (1.0 - v34) - v35;
  v43 = v36 + v41;
  v44 = v37 - v40;
  v45 = v36 - v41;
  v46 = 1.0 - (v30 * (v30 + v30));
  v47 = v46 - v35;
  v48 = v39 + v38;
  v49 = v37 + v40;
  v50 = v39 - v38;
  v51 = v46 - v34;
  v52 = a2[1];
  v53 = *a2 * v42;
  v54 = *a2 * v45;
  v55 = *a2 * v49;
  v56 = v43 * v52;
  v57 = v47 * v52;
  v58 = v50 * v52;
  v59 = v44 * v31;
  v60 = v48 * v31;
  v61 = v51 * v31;
  v62 = v42 * v54;
  v63 = v43 * v57;
  v64 = (v42 * v53) + (v43 * v56);
  v65 = (v42 * v55) + (v43 * v58);
  v66 = v64 + (v44 * v59);
  v67 = (v62 + v63) + (v44 * v60);
  v68 = v65 + (v44 * v61);
  v69 = v45 * v54;
  v70 = v47 * v57;
  v71 = (v45 * v53) + (v47 * v56);
  v72 = (v45 * v55) + (v47 * v58);
  v73 = v71 + (v48 * v59);
  v74 = (v69 + v70) + (v48 * v60);
  v75 = v72 + (v48 * v61);
  v76 = v49 * v53;
  v77 = v49 * v54;
  v78 = v50 * v57;
  v79 = v76 + (v50 * v56);
  v80 = (v49 * v55) + (v50 * v58);
  v81 = v51 * v59;
  v82 = v51 * v60;
  v83 = v51 * v61;
  v84 = v79 + v81;
  v85 = (v77 + v78) + v82;
  v86 = v80 + v83;
  *a3 = (v24 * v68) + ((v17 * v66) + (v20 * v67));
  *(a3 + 4) = (v25 * v68) + ((v18 * v66) + (v22 * v67));
  *(a3 + 8) = (v26 * v68) + ((v19 * v66) + (v23 * v67));
  *(a3 + 12) = (v24 * v75) + ((v17 * v73) + (v20 * v74));
  *(a3 + 16) = (v25 * v75) + ((v18 * v73) + (v22 * v74));
  *(a3 + 20) = (v26 * v75) + ((v19 * v73) + (v23 * v74));
  *(a3 + 24) = (v24 * v86) + ((v17 * v84) + (v20 * v85));
  *(a3 + 28) = (v25 * v86) + ((v18 * v84) + (v22 * v85));
  *(a3 + 32) = (v26 * v86) + ((v19 * v84) + (v23 * v85));
  *(a3 + 36) = *(a1 + 16);
  result = *(a1 + 24);
  *(a3 + 44) = result;
  return result;
}

uint64_t midPhaseQuery(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, int8x16_t a5, int32x4_t a6)
{
  v7 = *(a1 + 40);
  v8 = physx::Gu::computeVertexSpaceOBB(v13, a3, a2, (a1 + 4), a5, a6);
  v11 = 2;
  v10 = &unk_1F5D21980;
  v12 = a4;
  return (physx::Gu::gMidphaseBoxCBOverlapTable[*(v7 + 8) - 3])(v7, v13, &v10, 1, 1, v8);
}

uint64_t calculateMTD(float32x4_t *a1, float32x2_t *a2, char a3, uint64_t a4, unsigned int a5, int a6, int32x2_t *a7, unsigned int *a8, _OWORD *a9, _OWORD *a10, _OWORD *a11, _DWORD *a12, float32x2_t *a13)
{
  v13 = *a13;
  if (a5)
  {
    v21 = 0;
    v52 = 0;
    v22 = a5;
    v51 = a7 + 12;
    do
    {
      *a8 = 0;
      v23 = a4 + 40 * v21;
      v56 = 0;
      v53 = 0uLL;
      v54 = 0x7F7FFFFF3CA3D70ALL;
      v55 = 0x57F7FFFFFLL;
      v24.i64[0] = *v23;
      v24.i64[1] = *(v23 + 8);
      v25.i64[0] = *(v23 + 12);
      v25.i64[1] = *(v23 + 20);
      v57 = v24;
      v58 = v25;
      v26.i64[0] = *(v23 + 24);
      v26.i64[1] = *(v23 + 32);
      v59 = v26;
      v27 = vsubq_f32(v25, v24);
      v28 = vsubq_f32(v26, v24);
      v29 = vmls_f32(vmul_f32(*v27.i8, *&vextq_s8(v28, v28, 4uLL)), *&vextq_s8(v27, v27, 4uLL), *v28.i8);
      *v30.f32 = vext_s8(v29, vmls_f32(vmul_f32(*&vextq_s8(v27, v27, 8uLL), *v28.i8), *v27.i8, *&vextq_s8(v28, v28, 8uLL)), 4uLL);
      v30.i64[1] = v29.u32[0];
      v31 = *(v23 + 36);
      *v28.i8 = vpadd_f32(vmul_f32(*v30.f32, *v30.f32), vmul_f32(v29.u32[0], v29.u32[0]));
      v32 = vpadd_f32(*v28.i8, *v28.i8);
      v33 = vrsqrte_f32(v32);
      v34 = 4;
      do
      {
        v33 = vmul_f32(v33, vrsqrts_f32(vmul_f32(v33, v33), v32));
        --v34;
      }

      while (v34);
      v35 = vbsl_s8(vdup_lane_s32(vceqz_f32(v32), 0), v32, vmul_f32(v32, v33));
      v36 = vrecpe_f32(v35);
      v37 = 4;
      do
      {
        v36 = vmul_f32(v36, vrecps_f32(v35, v36));
        --v37;
      }

      while (v37);
      if ((a3 & 1) != 0 || (v38 = vmulq_n_f32(v30, v36.f32[0]), v38.i32[3] = 0, v39 = vmulq_f32(v38, vsubq_f32(*a1, v24)), v39.i64[0] = vpaddq_f32(v39, v39).u64[0], vpadd_f32(*v39.f32, *v39.f32).f32[0] >= 0.0))
      {
        physx::Gu::PCMCapsuleVsMeshContactGeneration::processTriangle(&v53, v21 + a6, a1, a2, v31, a7, a8);
        v40 = *a8;
        if (v40)
        {
          v41 = vdup_lane_s32(a7[5], 1);
          if (v40 == 1)
          {
            v42 = 0;
          }

          else
          {
            LODWORD(v42) = 0;
            v43 = v51;
            for (i = 1; i != v40; ++i)
            {
              v45 = vdup_lane_s32(v43[1], 1);
              v46 = vcgt_f32(v41, v45).u8[0];
              if (v46)
              {
                v47 = -1;
              }

              else
              {
                v47 = 0;
              }

              v41 = vbsl_s8(vdup_n_s32(v47), v45, v41);
              if (v46)
              {
                v42 = i;
              }

              else
              {
                v42 = v42;
              }

              v43 += 8;
            }
          }

          if (vcgt_f32(v13, v41).u8[0])
          {
            *a12 = v21 + a6;
            v48 = &a7[8 * v42];
            v49 = *v48[4].i8;
            HIDWORD(v49) = 0;
            *a9 = v49;
            *a10 = *v48[2].i8;
            *a11 = *v48->i8;
            v52 = 1;
            v13 = v41;
          }

          else
          {
            v52 = 1;
          }
        }
      }

      ++v21;
    }

    while (v21 != v22);
  }

  else
  {
    v52 = 0;
  }

  *a13 = v13;
  return v52 & 1;
}

uint64_t physx::Gu::computeCapsule_HeightFieldMTD(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v87 = v2;
  v89 = v3;
  v93 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v1;
  v131[513] = *MEMORY[0x1E69E9840];
  v129 = 0;
  *v12.i32 = v7 * 1.01;
  v128 = vdup_lane_s32(v12, 0);
  v126 = 0;
  v127 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(&v126, 0x80u);
  v14 = 0;
  v15 = 0;
  v124 = v11[1];
  v125 = v11;
  v16 = v11[3].f32[0];
  __asm { FMOV            V2.2S, #1.0 }

  v122 = vrev64_s32(vdiv_f32(_D2, v11[2]));
  v123 = 1.0 / v16;
  v21 = 0uLL;
  v121 = 0u;
  v119 = 0u;
  v118 = 0xFFFFFFF;
  v117 = 0;
  v22 = *(v6 + 48);
  v23 = *(v6 + 64);
  v24 = vneg_f32(0x80000000800000);
  v92 = v6;
  v96 = v10;
  while (1)
  {
    v91 = v21;
    v22.i32[3] = v23.i32[0];
    v114 = v22;
    v115 = vextq_s8(v23, v23, 4uLL).u64[0];
    v116 = v8;
    physx::Gu::computeBoxAroundCapsule(&v114, &v99, v13);
    if (v107 >= 0.0)
    {
      v27 = v100 - v102;
      if (v99 < -v103)
      {
        v32 = v107 + ((1.0 - v99) - v103);
        v28 = 0.5 / sqrtf(v32);
        v29 = v28 * (v105 + v101);
        v30 = v28 * (v104 + v106);
        v31 = v32 * v28;
        goto LABEL_7;
      }

      v36 = v107 + ((v99 + 1.0) + v103);
      v37 = 0.5 / sqrtf(v36);
      v29 = v37 * (v104 - v106);
      v30 = v37 * (v105 - v101);
      v31 = v37 * v27;
      v33 = v36 * v37;
    }

    else
    {
      v25 = v100 + v102;
      if (v99 > v103)
      {
        v26 = ((v99 + 1.0) - v103) - v107;
        v27 = v104 - v106;
        v28 = 0.5 / sqrtf(v26);
        v29 = v26 * v28;
        v30 = v28 * v25;
        v31 = v28 * (v105 + v101);
LABEL_7:
        v33 = v28 * v27;
        goto LABEL_10;
      }

      v34 = ((1.0 - v99) + v103) - v107;
      v35 = 0.5 / sqrtf(v34);
      v29 = v35 * v25;
      v30 = v34 * v35;
      v31 = v35 * (v104 + v106);
      v33 = v35 * (v105 - v101);
    }

LABEL_10:
    v38 = v30 + v30;
    v39 = v31 + v31;
    v40 = v30 * (v30 + v30);
    v41 = v31 * (v31 + v31);
    v42 = (v29 + v29) * v30;
    v43 = (v29 + v29) * v31;
    v44 = (v29 + v29) * v33;
    v45 = v38 * v31;
    v46 = v38 * v33;
    v47 = v39 * v33;
    v48 = (1.0 - v40) - v41;
    v49 = v42 + v47;
    v50 = v42 - v47;
    v51 = 1.0 - (v29 * (v29 + v29));
    v52 = v51 - v41;
    v53 = v45 + v44;
    v54 = (fabsf(v48 * v111) + fabsf(v50 * v112)) + fabsf((v43 + v46) * v113);
    v55 = (fabsf(v49 * v111) + fabsf(v52 * v112)) + fabsf((v45 - v44) * v113);
    v56 = (fabsf((v43 - v46) * v111) + fabsf(v53 * v112)) + fabsf((v51 - v40) * v113);
    v98[0] = v108 - v54;
    v98[1] = v109 - v55;
    v98[2] = v110 - v56;
    v98[3] = v108 + v54;
    v98[4] = v109 + v55;
    v98[5] = v110 + v56;
    v130[0] = &unk_1F5D219D0;
    v130[1] = &v126;
    physx::Gu::HeightFieldUtil::overlapAABBTriangles(&v122, v10, v98, v89, v130);
    v57 = v127;
    if (!v127)
    {
      v21 = v91;
      goto LABEL_33;
    }

    v88 = v14;
    v117 = v24;
    if ((v127 + 31) < 0x20)
    {
      v21 = v91;
      goto LABEL_32;
    }

    v90 = v15;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v94 = (v127 + 31) >> 5;
    v95 = v127;
    v61 = v127;
    do
    {
      v62 = v61;
      if (v61 >= 0x20uLL)
      {
        v62 = 32;
      }

      if (v62 <= 1)
      {
        v63 = 1;
      }

      else
      {
        v63 = v62;
      }

      v64 = v57 - 32 * v59;
      if (v64 >= 0x20)
      {
        v64 = 32;
      }

      v97 = v64;
      if (32 * v59 != v57)
      {
        v65 = v130;
        v66 = v58;
        do
        {
          physx::Gu::HeightFieldUtil::getTriangle(&v122, v96, v65, 0, 0, *(v126 + v66), 1, 1);
          *(v65 + 36) = 56;
          v65 += 5;
          v66 += 4;
          --v63;
        }

        while (v63);
      }

      v60 |= calculateMTD(v92, &v128, v93, v130, v97, 32 * v59++, v131, &v129, &v119, &v121, &v120, &v118, &v117);
      v61 -= 32;
      v58 += 128;
      v57 = v95;
    }

    while (v59 != v94);
    v21 = v91;
    if ((v60 & 1) == 0)
    {
      goto LABEL_32;
    }

    v67 = *(v126 + 4 * v118);
    v118 = v67;
    v68 = vsub_f32(v117, *(v92 + 80)).f32[0];
    if (v68 > 0.0)
    {
      break;
    }

    v69 = vmulq_n_f32(v119, v68);
    v69.i32[3] = 0;
    v21 = vsubq_f32(v91, v69);
    v70 = vsubq_f32(*v92, v69);
    v71 = vsubq_f32(v70, *v92);
    *v92 = v70;
    v22 = vaddq_f32(*(v92 + 48), v71);
    v23 = vaddq_f32(*(v92 + 64), v71);
    *(v92 + 48) = v22;
    *(v92 + 64) = v23;
    v15 = v90 + 1;
    v14 = 1;
    v10 = v96;
    if (v90 == 3)
    {
      goto LABEL_33;
    }
  }

  if (!v90)
  {
    v80 = v87;
    *(v87 + 48) = 0;
    v85 = v121;
    v86 = v119;
    HIDWORD(v85) = v119.i32[0];
    *(v87 + 24) = v85;
    *(v87 + 40) = vext_s8(*v86.i8, *&vextq_s8(v86, v86, 8uLL), 4uLL);
    goto LABEL_39;
  }

  v88 = 1;
LABEL_32:
  v14 = v88;
LABEL_33:
  v72 = vmulq_f32(v21, v21);
  v72.i64[0] = vpaddq_f32(v72, v72).u64[0];
  v73 = vpadd_f32(*v72.f32, *v72.f32);
  v74 = vrsqrte_f32(v73);
  v75 = 4;
  do
  {
    v74 = vmul_f32(v74, vrsqrts_f32(vmul_f32(v74, v74), v73));
    --v75;
  }

  while (v75);
  v76 = vbsl_s8(vdup_lane_s32(vceqz_f32(v73), 0), v73, vmul_f32(v73, v74));
  v77 = vrecpe_f32(v76);
  v78 = 4;
  do
  {
    v77 = vmul_f32(v77, vrecps_f32(v76, v77));
    --v78;
  }

  while (v78);
  if (v14)
  {
    v79 = vandq_s8(vdupq_lane_s32(vcgtz_f32(v76), 0), vmulq_n_f32(v21, v77.f32[0]));
    v80 = v87;
    *(v87 + 48) = -v76.f32[0];
    v81 = v121;
    HIDWORD(v81) = v79.i32[0];
    *(v87 + 24) = v81;
    *(v87 + 40) = vext_s8(*v79.i8, *&vextq_s8(v79, v79, 8uLL), 4uLL);
    v67 = v118;
LABEL_39:
    *(v80 + 16) = v67;
    v82 = 1;
    goto LABEL_41;
  }

  v82 = 0;
LABEL_41:
  if ((v127 & 0x8000000000000000) == 0 && (v127 & 0x7FFFFFFF00000000) != 0 && v126 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v82;
}

uint64_t physx::Gu::computeBox_TriangleMeshMTD(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v89 = v2;
  v100 = v3;
  v5 = v4;
  v7 = v6;
  v98 = v8;
  v10 = v9;
  v11 = v1;
  v160[513] = *MEMORY[0x1E69E9840];
  v99 = *(v1 + 40);
  v12 = *(v99 + 80);
  v149 = 0;
  v148 = 0;
  v147 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(&v147, 0x80u);
  v145 = 0u;
  v146 = 0u;
  v144 = 0u;
  v143 = 0xFFFFFFF;
  v13 = v7[1];
  v138 = *v7;
  v139 = v13;
  v140 = v7[2];
  v13.i64[0] = v5[1].i64[0];
  v13.i64[1] = v5[1].u32[2];
  v95 = v13;
  v14.i64[0] = *(v7 + 6);
  v15 = v14;
  v15.i32[2] = *(v7 + 14);
  v93 = *v5;
  v16 = vdup_laneq_s32(v15, 2);
  v15.i32[3] = 0;
  v17 = vpmin_f32(v16, *v14.i8);
  v18 = vpmin_f32(v17, v17);
  v137 = vadd_f32(vdup_lane_s32(v98, 0), vmul_f32(v18, vdup_n_s32(0x3E19999Au)));
  v141 = vadd_f32(*v14.i8, vdup_lane_s32(v137, 0));
  v142 = *&v15.i32[2] + *v137.i32;
  v134 = 3;
  v135 = 0;
  v130[1] = 0;
  v130[0] = 0;
  v136 = v15;
  v131 = 0.15 * v18.f32[0];
  v132 = 0.05 * v18.f32[0];
  v133 = 0.05 * v18.f32[0];
  v97 = vextq_s8(v140, vextq_s8(0, 0, 0xCuLL), 4uLL);
  physx::Gu::PolygonalBox::PolygonalBox(v118, v7 + 12);
  v121 = 0;
  v123 = 0x600000008;
  v122 = 0;
  v124 = 0;
  v125 = &v120;
  v126 = &v119;
  v127 = &physx::Gu::gPCMBoxPolygonData;
  v128 = 0u;
  v129 = 0u;
  v91 = 0u;
  v117[0] = xmmword_1E3047670;
  v117[1] = xmmword_1E3047680;
  v117[2] = xmmword_1E30476A0;
  v92 = v10;
  physx::operator*(v10, v11 + 1, &v105);
  v19 = 0;
  v20 = 0;
  v21 = v93;
  v22.i64[1] = v95.i64[1];
  v103 = v93;
  v104 = v95;
  v22.i64[0] = 0x80000000800000;
  v23 = vneg_f32(0x80000000800000);
  v24 = 0uLL;
  while (1)
  {
    v96 = v24;
    LODWORD(v148) = 0;
    midPhaseQuery(v11, v92, &v138, &v147, v22, v21);
    v25 = v148;
    if (!v148)
    {
      v24 = v96;
      goto LABEL_36;
    }

    v90 = v19;
    v104 = v97;
    v155 = &v103;
    v156 = v117;
    v157 = v117;
    v158 = 1;
    v152.i64[0] = &unk_1F5D21690;
    v159 = v130;
    v154 = 0;
    v153 = 0;
    v26.i32[3] = 0;
    v26.f32[0] = ((*&v138 * v105) + (*(&v138 + 1) * v106)) + (*(&v138 + 2) * v107);
    v26.f32[1] = ((*(&v138 + 3) * v105) + (v139.f32[0] * v106)) + (v139.f32[1] * v107);
    v26.f32[2] = ((v139.f32[2] * v105) + (v139.f32[3] * v106)) + (*v140.i32 * v107);
    v27.i32[3] = 0;
    v27.f32[0] = ((*&v138 * v108) + (*(&v138 + 1) * v109)) + (*(&v138 + 2) * v110);
    v27.f32[1] = ((*(&v138 + 3) * v108) + (v139.f32[0] * v109)) + (v139.f32[1] * v110);
    v27.f32[2] = ((v139.f32[2] * v108) + (v139.f32[3] * v109)) + (*v140.i32 * v110);
    v28.i32[3] = 0;
    v28.f32[0] = ((*&v138 * v111) + (*(&v138 + 1) * v112)) + (*(&v138 + 2) * v113);
    v28.f32[1] = ((*(&v138 + 3) * v111) + (v139.f32[0] * v112)) + (v139.f32[1] * v113);
    v28.f32[2] = ((v139.f32[2] * v111) + (v139.f32[3] * v112)) + (*v140.i32 * v113);
    v29.i32[3] = 0;
    v29.f32[0] = ((-(*&v140.i32[2] * *(&v138 + 1)) - (*&v138 * *&v140.i32[1])) - (*(&v138 + 2) * *&v140.i32[3])) + (((*&v138 * v114) + (*(&v138 + 1) * v115)) + (*(&v138 + 2) * v116));
    v29.f32[1] = ((-(*&v140.i32[2] * v139.f32[0]) - (*(&v138 + 3) * *&v140.i32[1])) - (v139.f32[1] * *&v140.i32[3])) + (((*(&v138 + 3) * v114) + (v139.f32[0] * v115)) + (v139.f32[1] * v116));
    v29.f32[2] = ((-(*&v140.i32[2] * v139.f32[3]) - (v139.f32[2] * *&v140.i32[1])) - (*v140.i32 * *&v140.i32[3])) + (((v139.f32[2] * v114) + (v139.f32[3] * v115)) + (*v140.i32 * v116));
    v101[0] = v26;
    v101[1] = v27;
    v101[2] = v28;
    v101[3] = v29;
    v102 = v23;
    if ((v148 + 31) < 0x20)
    {
      goto LABEL_35;
    }

    v94 = v20;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = v148;
    do
    {
      v34 = v33;
      if (v33 >= 0x20uLL)
      {
        v34 = 32;
      }

      if (v34 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v34;
      }

      if ((v25 - 32 * v31) >= 0x20)
      {
        v36 = 32;
      }

      else
      {
        v36 = v25 - 32 * v31;
      }

      if (32 * v31 != v25)
      {
        v37 = (v11[1] * v11[2]) * v11[3];
        v38 = *(v99 + 92);
        v39 = *(v99 + 40);
        v40 = *(v99 + 48);
        v41 = (v147 + v30);
        v42 = &v151;
        do
        {
          v44 = *v41++;
          v43 = v44;
          if ((v38 & 2) != 0)
          {
            v49 = (v40 + 6 * v43);
            v46 = *v49;
            v47 = v49[1];
            v48 = v49[2];
          }

          else
          {
            v45 = (v40 + 12 * v43);
            v46 = *v45;
            v47 = v45[1];
            v48 = v45[2];
          }

          if (v37 >= 0.0)
          {
            v50 = v48;
          }

          else
          {
            v50 = v47;
          }

          if (v37 < 0.0)
          {
            v47 = v48;
          }

          v51 = v39 + 12 * v46;
          *(v42 - 5) = *v51;
          *(v42 - 3) = *(v51 + 8);
          v52 = v39 + 12 * v47;
          *(v42 - 1) = *v52;
          *v42 = *(v52 + 8);
          v53 = v39 + 12 * v50;
          *(v42 + 1) = *v53;
          v42[3] = *(v53 + 8);
          if (v12)
          {
            v54 = *(v12 + v43);
          }

          else
          {
            v54 = 56;
          }

          *(v42 + 16) = v54;
          v42 += 10;
          --v35;
        }

        while (v35);
      }

      v32 |= calculateMTD(&v121, &v152, &v103, v101, v100, &v137, v150, v36, 32 * v31++, v160, &v149, &v144, &v146, &v145, &v143, &v102);
      v33 -= 32;
      v30 += 128;
    }

    while (v31 != (v25 + 31) >> 5);
    if ((v32 & 1) == 0)
    {
      goto LABEL_35;
    }

    v55 = *(v147 + 4 * v143);
    v143 = v55;
    v56 = v103;
    v56.i32[3] = 0;
    v57 = vdupq_laneq_s32(v103, 3).u64[0];
    LODWORD(v58) = vmla_f32(0xBF000000BF000000, v57, v57).u32[0];
    v59 = vmulq_n_f32(v144, v58);
    v59.i32[3] = 0;
    v60 = vextq_s8(v56, v56, 8uLL).u64[0];
    v61 = vextq_s8(v144, v144, 8uLL).u64[0];
    v62 = vext_s8(*v144.f32, v61, 4uLL);
    v63 = vmls_f32(vmul_f32(v60, *v144.f32), *v103.i8, v61);
    v64 = vext_s8(*v103.i8, v60, 4uLL);
    v65 = vmls_f32(vmul_f32(*v103.i8, v62), v64, *v144.f32);
    *v66.f32 = vext_s8(v65, v63, 4uLL);
    v66.i64[1] = v65.u32[0];
    v67 = vmlaq_laneq_f32(v59, v66, v103, 3);
    v67.i64[1] = vextq_s8(v67, v67, 8uLL).u32[0];
    v68 = vmulq_f32(v56, v144);
    v68.i64[0] = vpaddq_f32(v68, v68).u64[0];
    v69 = vmulq_n_f32(v146, v58);
    v69.i32[3] = 0;
    v70 = vmlaq_n_f32(v67, v56, vpadd_f32(*v68.f32, *v68.f32).f32[0]);
    v68.i64[0] = vextq_s8(v146, v146, 8uLL).u64[0];
    *v66.f32 = vmls_f32(vmul_f32(*v103.i8, vext_s8(*v146.i8, *v68.f32, 4uLL)), v64, *v146.i8);
    *v68.f32 = vext_s8(*v66.f32, vmls_f32(vmul_f32(v60, *v146.i8), *v103.i8, *v68.f32), 4uLL);
    v68.i64[1] = v66.u32[0];
    v71 = vmlaq_laneq_f32(v69, v68, v103, 3);
    v71.i64[1] = vextq_s8(v71, v71, 8uLL).u32[0];
    v72 = vaddq_f32(v70, v70);
    v73 = vmulq_f32(v56, v146);
    v73.i64[0] = vpaddq_f32(v73, v73).u64[0];
    v74 = vmlaq_n_f32(v71, v56, vpadd_f32(*v73.f32, *v73.f32).f32[0]);
    v74.i64[1] = vextq_s8(v74, v74, 8uLL).u32[0];
    v73.i64[0] = 0x4000000040000000;
    v73.i64[1] = 0x4000000040000000;
    v75 = vmlaq_f32(v104, v73, v74);
    v56.i64[0] = v75.i64[0];
    v56.i64[1] = vextq_s8(v75, v75, 8uLL).u32[0];
    v91 = v56;
    if (v102.f32[0] > 0.0)
    {
      break;
    }

    v22 = vmulq_n_f32(v72, v102.f32[0]);
    v22.i32[3] = 0;
    v24 = vsubq_f32(v96, v22);
    v21 = vsubq_f32(v97, v22);
    *(v140.i64 + 4) = v21.i64[0];
    v97 = v21;
    v140.i32[3] = v21.i32[2];
    ++v20;
    v19 = 1;
    if (v94 == 3)
    {
      goto LABEL_36;
    }
  }

  if (!v20)
  {
    v75.i32[3] = v72.i32[0];
    v84 = v89;
    *(v89 + 48) = 0;
    *(v89 + 24) = v75;
    *(v89 + 40) = vextq_s8(v72, v72, 4uLL).u64[0];
    goto LABEL_42;
  }

  v90 = 1;
LABEL_35:
  v24 = v96;
  v19 = v90;
LABEL_36:
  v76 = vmulq_f32(v24, v24);
  v76.i64[0] = vpaddq_f32(v76, v76).u64[0];
  v77 = vpadd_f32(*v76.f32, *v76.f32);
  v78 = vrsqrte_f32(v77);
  v79 = 4;
  do
  {
    v78 = vmul_f32(v78, vrsqrts_f32(vmul_f32(v78, v78), v77));
    --v79;
  }

  while (v79);
  v80 = vbsl_s8(vdup_lane_s32(vceqz_f32(v77), 0), v77, vmul_f32(v77, v78));
  v81 = vrecpe_f32(v80);
  v82 = 4;
  do
  {
    v81 = vmul_f32(v81, vrecps_f32(v80, v81));
    --v82;
  }

  while (v82);
  if (v19)
  {
    v83 = vandq_s8(vdupq_lane_s32(vcgtz_f32(v80), 0), vmulq_n_f32(v24, v81.f32[0]));
    v84 = v89;
    *(v89 + 48) = -v80.f32[0];
    v85 = v91;
    v85.i32[3] = v83.i32[0];
    *(v89 + 24) = v85;
    *(v89 + 40) = vext_s8(*v83.i8, *&vextq_s8(v83, v83, 8uLL), 4uLL);
    v55 = v143;
LABEL_42:
    *(v84 + 16) = v55;
    v86 = 1;
    goto LABEL_44;
  }

  v86 = 0;
LABEL_44:
  if ((v148 & 0x8000000000000000) == 0 && (v148 & 0x7FFFFFFF00000000) != 0 && v147 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v86;
}

uint64_t calculateMTD(uint64_t a1, float32x4_t *a2, uint64_t a3, float32x4_t *a4, char a5, float32x2_t *a6, uint64_t a7, unsigned int a8, int a9, int32x2_t *a10, unsigned int *a11, _OWORD *a12, _OWORD *a13, _OWORD *a14, _DWORD *a15, float32x2_t *a16)
{
  v16 = *a16;
  if (a8)
  {
    v20 = 0;
    v21 = 0;
    v22 = a8;
    do
    {
      *a11 = 0;
      physx::Gu::PCMConvexVsMeshContactGeneration::processTriangle(a1, a2, (a7 + 40 * v20), v20 + a9, *(a7 + 40 * v20 + 36), a6, a5, a3, a4, a10, a11);
      v23 = *a11;
      if (v23)
      {
        v24 = vdup_lane_s32(a10[5], 1);
        if (v23 == 1)
        {
          v25 = 0;
        }

        else
        {
          LODWORD(v25) = 0;
          v26 = a10 + 12;
          for (i = 1; i != v23; ++i)
          {
            v28 = vdup_lane_s32(v26[1], 1);
            v29 = vcgt_f32(v24, v28).u8[0];
            if (v29)
            {
              v30 = -1;
            }

            else
            {
              v30 = 0;
            }

            v24 = vbsl_s8(vdup_n_s32(v30), v28, v24);
            if (v29)
            {
              v25 = i;
            }

            else
            {
              v25 = v25;
            }

            v26 += 8;
          }
        }

        if (vcgt_f32(v16, v24).u8[0])
        {
          *a15 = v20 + a9;
          v31 = &a10[8 * v25];
          v32 = *v31[4].i8;
          HIDWORD(v32) = 0;
          *a12 = v32;
          *a13 = *v31[2].i8;
          *a14 = *v31->i8;
          v21 = 1;
          v16 = v24;
        }

        else
        {
          v21 = 1;
        }
      }

      ++v20;
    }

    while (v20 != v22);
  }

  else
  {
    v21 = 0;
  }

  *a16 = v16;
  return v21 & 1;
}

uint64_t physx::Gu::computeBox_HeightFieldMTD(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v184 = v2;
  v203 = v3;
  v211 = v4;
  v215 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v268[513] = *MEMORY[0x1E69E9840];
  v258 = 0;
  v257 = 0;
  v256 = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(&v256, 0x80u);
  v254 = v12[1];
  v255 = v12;
  v13 = v12[3].f32[0];
  __asm { FMOV            V2.2S, #1.0 }

  v252 = vrev64_s32(vdiv_f32(_D2, v12[2]));
  v253 = 1.0 / v13;
  v18.i32[3] = 0;
  v250 = 0u;
  v251 = 0u;
  v249 = 0u;
  v248 = 0xFFFFFFF;
  v20 = *v9;
  v19 = *(v9 + 4);
  v204 = *(v9 + 12);
  v205 = *(v9 + 8);
  v21 = *(v9 + 16);
  v189 = *(v9 + 20);
  v23 = *(v9 + 24);
  v22 = *(v9 + 28);
  v24 = *(v9 + 32);
  v219 = *(v9 + 36);
  v25 = *(v9 + 48);
  v26.i64[0] = v7[1].i64[0];
  v26.i64[1] = v7[1].u32[2];
  v202 = v26;
  v26.i32[0] = *(v9 + 52);
  v27.i32[3] = 0;
  *v27.i32 = v25;
  *(v27.i64 + 4) = v26.u32[0];
  v28 = *(v9 + 40);
  v29 = v27;
  v29.i32[2] = *(v9 + 56);
  v200 = *v7;
  *v27.i8 = vpmin_f32(vdup_laneq_s32(v29, 2), *v27.i8);
  *v27.i8 = vpmin_f32(*v27.i8, *v27.i8);
  v247 = vadd_f32(vdup_lane_s32(v215, 0), vmul_f32(*v27.i8, vdup_n_s32(0x3E19999Au)));
  v206 = v25 + v247.f32[0];
  v208 = v26.f32[0] + v247.f32[0];
  v216 = *&v29.i32[2] + v247.f32[0];
  v244 = 3;
  v245 = 0;
  v240[1] = 0;
  v240[0] = 0;
  v246 = v29;
  v241 = 0.15 * *v27.i32;
  v242 = 0.05 * *v27.i32;
  v243 = 0.05 * *v27.i32;
  v18.f32[0] = v219;
  v212 = v28;
  *(v18.i64 + 4) = v28;
  v210 = v18;
  physx::Gu::PolygonalBox::PolygonalBox(v228, (v9 + 48));
  v30 = 0;
  v31 = 0;
  v32 = ((v20 + 1.0) + v21) + v24;
  v33 = 0.5 / sqrtf(v32);
  v34 = ((1.0 - v20) - v21) + v24;
  v35 = 0.5 / sqrtf(v34);
  v36 = ((1.0 - v20) + v21) - v24;
  v37 = 0.5 / sqrtf(v36);
  v38 = ((v20 + 1.0) - v21) - v24;
  v39 = 0.5 / sqrtf(v38);
  v40 = *v11;
  v41 = v11[1];
  v42 = v41 + v41;
  v43 = v11[2];
  v44 = v11[3];
  v45 = v43 + v43;
  v46 = v41 * (v41 + v41);
  v47 = v43 * (v43 + v43);
  v48 = (v40 + v40) * v41;
  v49 = (v40 + v40) * v43;
  v50 = (v40 + v40) * v44;
  v51 = v42 * v43;
  v52 = v42 * v44;
  v53 = v45 * v44;
  v54 = (1.0 - v46) - v47;
  v55 = v48 + v53;
  v56 = v49 - v52;
  v57 = v48 - v53;
  v58 = 1.0 - (v40 * (v40 + v40));
  v59 = v58 - v47;
  v60 = v51 + v50;
  v61 = v49 + v52;
  v62 = v51 - v50;
  v63 = v58 - v46;
  v188 = (v19 - v204) * v33;
  v185 = (v205 + v23) * v35;
  v64 = (v189 + v22) * v35;
  v65 = v34 * v35;
  v66 = (v19 - v204) * v35;
  v186 = (v189 + v22) * v37;
  v187 = v36 * v37;
  v67 = (v23 - v205) * v37;
  v68 = (v19 + v204) * v37;
  v69 = v38 * v39;
  v70 = (v19 + v204) * v39;
  v71 = (v205 + v23) * v39;
  v72 = (v189 - v22) * v39;
  v233 = 0x600000008;
  v227[0] = xmmword_1E3047670;
  v227[1] = xmmword_1E3047680;
  v227[2] = xmmword_1E30476A0;
  v225 = v200;
  v226 = v202;
  v73 = (v20 * v54) + (v19 * v55);
  v74 = (v204 * v54) + (v21 * v55);
  v75 = (v23 * v54) + (v22 * v55);
  *&v76 = (v205 * v56) + v73;
  *&v77 = (v189 * v56) + v74;
  *&v78 = (v24 * v56) + v75;
  v79 = (v20 * v57) + (v19 * v59);
  v80 = (v204 * v57) + (v21 * v59);
  v81 = (v23 * v57) + (v22 * v59);
  *&v82 = (v205 * v60) + v79;
  *&v83 = (v189 * v60) + v80;
  *&v84 = (v24 * v60) + v81;
  v85 = v204 * v61;
  v86 = (v20 * v61) + (v19 * v62);
  v87 = v21 * v62;
  v88 = (v23 * v61) + (v22 * v62);
  *&v89 = (v205 * v63) + v86;
  *&v90 = (v189 * v63) + (v85 + v87);
  v91 = v11[4];
  v92 = v11[5];
  *&v93 = (v24 * v63) + v88;
  v199 = v19;
  v94 = (v20 * v91) + (v19 * v92);
  v95 = (v204 * v91) + (v21 * v92);
  v198 = v22;
  v96 = (v23 * v91) + (v22 * v92);
  v97.i64[0] = __PAIR64__(v77, v76);
  v98 = v11[6];
  v97.i64[1] = v78;
  v196 = v97;
  v194 = v95 + (v189 * v98);
  v195 = v94 + (v205 * v98);
  v99.i64[0] = __PAIR64__(v83, v82);
  v99.i64[1] = v84;
  v100.i64[0] = __PAIR64__(v90, v89);
  v191 = v96 + (v24 * v98);
  v100.i64[1] = v93;
  v192 = v100;
  v193 = v99;
  v101 = (v189 - v22) * v33;
  v102 = v186;
  if (v20 < -v21)
  {
    v101 = v185;
  }

  v103 = (v23 - v205) * v33;
  if (v20 < -v21)
  {
    v103 = v64;
  }

  v105 = v32 * v33;
  v104 = v188;
  if (v20 < -v21)
  {
    v104 = v65;
    v105 = v66;
  }

  v197 = v20;
  if (v20 <= v21)
  {
    v106 = v68;
  }

  else
  {
    v106 = v69;
  }

  v107 = v187;
  if (v20 > v21)
  {
    v107 = v70;
    v102 = v71;
    v67 = v72;
  }

  v108 = v24;
  if (v24 < 0.0)
  {
    v101 = v106;
    v103 = v107;
    v104 = v102;
    v105 = v67;
  }

  v109 = v103 + v103;
  v110 = v104 + v104;
  v111 = v103 * (v103 + v103);
  v112 = v104 * (v104 + v104);
  v113 = v103 * (v101 + v101);
  v114 = v104 * (v101 + v101);
  v115 = v105 * (v101 + v101);
  v116 = v104 * v109;
  v117 = v105 * v109;
  v118 = v105 * v110;
  v119 = v113 + v118;
  v120 = v113 - v118;
  v121 = v114 - v117;
  v122 = v114 + v117;
  v123 = v116 + v115;
  v124 = v116 - v115;
  v125 = 1.0 - (v101 * (v101 + v101));
  v126 = fabsf(v122 * v216);
  v127 = v212;
  v128 = v126 + (fabsf(((1.0 - v111) - v112) * v206) + fabsf(v120 * v208));
  v231 = 0;
  v232 = 0;
  v234 = 0;
  v235 = &v230;
  v236 = &v229;
  v237 = &physx::Gu::gPCMBoxPolygonData;
  v238 = 0u;
  v239 = 0u;
  v201 = 0u;
  v129 = v219;
  v130 = fabsf(v124 * v216) + (fabsf(v119 * v206) + fabsf((v125 - v112) * v208));
  v131 = fabsf((v125 - v111) * v216) + (fabsf(v121 * v206) + fabsf(v123 * v208));
  v132 = vneg_f32(0x80000000800000);
  v133 = 0uLL;
  v218 = v11;
  v134 = v11;
  while (1)
  {
    v209 = v133;
    LODWORD(v257) = 0;
    v135 = *(&v127 + 1);
    v220 = v129;
    v213 = *&v127;
    v223[0] = v129 - v128;
    v223[1] = *&v127 - v130;
    v223[2] = *(&v127 + 1) - v131;
    v223[3] = v128 + v129;
    v223[4] = v130 + *&v127;
    v223[5] = v131 + *(&v127 + 1);
    v259[0] = &unk_1F5D219D0;
    v259[1] = &v256;
    physx::Gu::HeightFieldUtil::overlapAABBTriangles(&v252, v11, v223, v203, v259);
    v136 = v257;
    if (!v257)
    {
      goto LABEL_36;
    }

    v190 = v30;
    v226 = v210;
    v263 = &v225;
    v264 = v227;
    v265 = v227;
    v266 = 1;
    v260.i64[0] = &unk_1F5D21690;
    v267 = v240;
    v262 = 0;
    v261 = 0;
    v137.i32[3] = 0;
    v137.f32[0] = v195 + ((-(v213 * v199) - (v197 * v220)) - (v205 * v135));
    v137.f32[1] = v194 + ((-(v213 * v21) - (v204 * v220)) - (v189 * v135));
    v137.f32[2] = v191 + ((-(v213 * v198) - (v23 * v220)) - (v108 * v135));
    v222[0] = v196;
    v222[1] = v193;
    v222[2] = v192;
    v222[3] = v137;
    v224 = v132;
    if ((v257 + 31) < 0x20)
    {
      goto LABEL_35;
    }

    v207 = v31;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v214 = (v257 + 31) >> 5;
    v141 = v257;
    v217 = v257;
    do
    {
      v142 = v141;
      if (v141 >= 0x20uLL)
      {
        v142 = 32;
      }

      if (v142 <= 1)
      {
        v143 = 1;
      }

      else
      {
        v143 = v142;
      }

      v144 = 32 * v139;
      v145 = v136 - 32 * v139;
      if (v145 >= 0x20)
      {
        v145 = 32;
      }

      v221 = v145;
      if (v144 != v136)
      {
        v146 = v259;
        v147 = v138;
        do
        {
          physx::Gu::HeightFieldUtil::getTriangle(&v252, v134, v146, 0, 0, *(v256 + v147), 0, 0);
          *(v146 + 36) = 56;
          v146 += 5;
          v147 += 4;
          --v143;
        }

        while (v143);
      }

      v140 |= calculateMTD(&v231, &v260, &v225, v222, v211, &v247, v259, v221, v144, v268, &v258, &v249, &v251, &v250, &v248, &v224);
      ++v139;
      v141 -= 32;
      v138 += 128;
      v136 = v217;
    }

    while (v139 != v214);
    if ((v140 & 1) == 0)
    {
      goto LABEL_35;
    }

    v148 = *(v256 + 4 * v248);
    v248 = v148;
    v149 = v225;
    v149.i32[3] = 0;
    v150 = vdupq_laneq_s32(v225, 3).u64[0];
    LODWORD(v151) = vmla_f32(0xBF000000BF000000, v150, v150).u32[0];
    v152 = vmulq_n_f32(v249, v151);
    v152.i32[3] = 0;
    v153 = vextq_s8(v149, v149, 8uLL).u64[0];
    v154 = vextq_s8(v249, v249, 8uLL).u64[0];
    v155 = vext_s8(*v249.f32, v154, 4uLL);
    v156 = vmls_f32(vmul_f32(v153, *v249.f32), *v225.i8, v154);
    v157 = vext_s8(*v225.i8, v153, 4uLL);
    v158 = vmls_f32(vmul_f32(*v225.i8, v155), v157, *v249.f32);
    *v159.f32 = vext_s8(v158, v156, 4uLL);
    v159.i64[1] = v158.u32[0];
    v160 = vmlaq_laneq_f32(v152, v159, v225, 3);
    v160.i64[1] = vextq_s8(v160, v160, 8uLL).u32[0];
    v161 = vmulq_f32(v149, v249);
    v161.i64[0] = vpaddq_f32(v161, v161).u64[0];
    v162 = vmulq_n_f32(v251, v151);
    v162.i32[3] = 0;
    v163 = vmlaq_n_f32(v160, v149, vpadd_f32(*v161.f32, *v161.f32).f32[0]);
    v161.i64[0] = vextq_s8(v251, v251, 8uLL).u64[0];
    *v159.f32 = vmls_f32(vmul_f32(*v225.i8, vext_s8(*v251.i8, *v161.f32, 4uLL)), v157, *v251.i8);
    *v161.f32 = vext_s8(*v159.f32, vmls_f32(vmul_f32(v153, *v251.i8), *v225.i8, *v161.f32), 4uLL);
    v161.i64[1] = v159.u32[0];
    v164 = vmlaq_laneq_f32(v162, v161, v225, 3);
    v164.i64[1] = vextq_s8(v164, v164, 8uLL).u32[0];
    v165 = vaddq_f32(v163, v163);
    v166 = vmulq_f32(v149, v251);
    v166.i64[0] = vpaddq_f32(v166, v166).u64[0];
    v167 = vmlaq_n_f32(v164, v149, vpadd_f32(*v166.f32, *v166.f32).f32[0]);
    v167.i64[1] = vextq_s8(v167, v167, 8uLL).u32[0];
    v166.i64[0] = 0x4000000040000000;
    v166.i64[1] = 0x4000000040000000;
    v168 = vmlaq_f32(v226, v166, v167);
    v149.i64[0] = v168.i64[0];
    v149.i64[1] = vextq_s8(v168, v168, 8uLL).u32[0];
    v201 = v149;
    if (v224.f32[0] > 0.0)
    {
      break;
    }

    v169 = vmulq_n_f32(v165, v224.f32[0]);
    v169.i32[3] = 0;
    v133 = vsubq_f32(v209, v169);
    v170 = vsubq_f32(v210, v169);
    v31 = v207 + 1;
    v127 = vextq_s8(v170, v170, 4uLL).u64[0];
    v30 = 1;
    v210 = v170;
    v129 = *v170.i32;
    v11 = v218;
    if (v207 == 3)
    {
      goto LABEL_37;
    }
  }

  if (!v207)
  {
    v168.i32[3] = v165.i32[0];
    v179 = v184;
    *(v184 + 48) = 0;
    *(v184 + 24) = v168;
    *(v184 + 40) = vextq_s8(v165, v165, 4uLL).u64[0];
    goto LABEL_43;
  }

  v190 = 1;
LABEL_35:
  v30 = v190;
LABEL_36:
  v133 = v209;
LABEL_37:
  v171 = vmulq_f32(v133, v133);
  v171.i64[0] = vpaddq_f32(v171, v171).u64[0];
  v172 = vpadd_f32(*v171.f32, *v171.f32);
  v173 = vrsqrte_f32(v172);
  v174 = 4;
  do
  {
    v173 = vmul_f32(v173, vrsqrts_f32(vmul_f32(v173, v173), v172));
    --v174;
  }

  while (v174);
  v175 = vbsl_s8(vdup_lane_s32(vceqz_f32(v172), 0), v172, vmul_f32(v172, v173));
  v176 = vrecpe_f32(v175);
  v177 = 4;
  do
  {
    v176 = vmul_f32(v176, vrecps_f32(v175, v176));
    --v177;
  }

  while (v177);
  if (v30)
  {
    v178 = vandq_s8(vdupq_lane_s32(vcgtz_f32(v175), 0), vmulq_n_f32(v133, v176.f32[0]));
    v179 = v184;
    *(v184 + 48) = -v175.f32[0];
    v180 = v201;
    v180.i32[3] = v178.i32[0];
    *(v184 + 24) = v180;
    *(v184 + 40) = vext_s8(*v178.i8, *&vextq_s8(v178, v178, 8uLL), 4uLL);
    v148 = v248;
LABEL_43:
    *(v179 + 16) = v148;
    v181 = 1;
    goto LABEL_45;
  }

  v181 = 0;
LABEL_45:
  if ((v257 & 0x8000000000000000) == 0 && (v257 & 0x7FFFFFFF00000000) != 0 && v256 != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  return v181;
}