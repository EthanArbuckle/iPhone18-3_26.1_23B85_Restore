BOOL intersectEdgeEdgePreca(float *a1, float *a2, uint64_t a3, float *a4, unsigned int a5, unsigned int a6, float32x2_t *a7, float *a8, float a9, float a10, float *a11, float *a12, float32x2_t *a13)
{
  v13 = *a8;
  v14 = a8[1];
  v15 = a4[1];
  v16 = a8[2];
  v17 = a4[2];
  v18 = a4[3];
  v19 = (((v14 * v15) + (*a8 * *a4)) + (v16 * v17)) + v18;
  v20 = a11[1];
  v21 = a11[2];
  if ((v19 * (v18 + (((v15 * v20) + (*a11 * *a4)) + (v21 * v17)))) > 0.0)
  {
    return 0;
  }

  v22 = *a11 - v13;
  v23 = v20 - v14;
  v24 = v21 - v16;
  v25 = ((v15 * v23) + (*a4 * v22)) + (v17 * v24);
  if (v25 == 0.0)
  {
    return 0;
  }

  v26 = v19 / v25;
  a13->f32[0] = v13 - (v22 * v26);
  a13->f32[1] = v14 - (v23 * v26);
  a13[1].f32[0] = v16 - (v24 * v26);
  v27 = ((*(a3 + 4 * a5) * (a13->f32[a6] - a1[a6])) - (*(a3 + 4 * a6) * (a13->f32[a5] - a1[a5]))) * a9;
  *a12 = v27;
  if (v27 < a10)
  {
    return 0;
  }

  v29 = v27 * a7[1].f32[0];
  v30 = vsub_f32(*a13, vmul_n_f32(*a7, v27));
  *a13 = v30;
  v31 = a13[1].f32[0] - v29;
  a13[1].f32[0] = v31;
  return ((((a1[1] - v30.f32[1]) * (a2[1] - v30.f32[1])) + ((*a1 - v30.f32[0]) * (*a2 - v30.f32[0]))) + ((a1[2] - v31) * (a2[2] - v31))) < 0.0;
}

uint64_t GuTestAxis(float *a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, float a7)
{
  v9 = a1[1];
  v10 = a1[2];
  v11 = ((a2[1] * v9) + (*a2 * *a1)) + (a2[2] * v10);
  v12 = ((v9 * a2[4]) + (a2[3] * *a1)) + (a2[5] * v10);
  if (v11 <= v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  v14 = v11 + a7;
  v17 = 0;
  (*(a3 + 88))(a3, a1, a5, a4, &v17 + 4, &v17);
  if (v14 < *(&v17 + 1) || *&v17 < (v13 - a7))
  {
    return 0;
  }

  v16 = v14 - *(&v17 + 1);
  if ((v14 - *(&v17 + 1)) >= (*&v17 - (v13 - a7)))
  {
    v16 = *&v17 - (v13 - a7);
  }

  *a6 = v16;
  return 1;
}

uint64_t local_Split(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v6 = *(a1 + 32);
  v7 = (*(a1 + 4 * a3) + *(a1 + 4 * a3 + 12)) * 0.5;
  v8 = v6;
  do
  {
    v9 = *v8;
    if (*(a2 + 4 * a3 + 12 * *v8) > v7)
    {
      *v8 = v6[result];
      v6[result] = v9;
      result = (result + 1);
    }

    ++v8;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_Check(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result + 48;
    v11 = 0;
    BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_CheckMD(result, &v11 + 1, &v11);
    v10 = 0;
    BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_CheckMD(v2, &v10 + 1, &v10);
    if (HIDWORD(v11) > HIDWORD(v10))
    {
      v3 = v1;
      v4 = *(v1 + 24);
      v5 = *(v1 + 32);
      v6 = *(v1 + 40);
      v7 = *(v1 + 48);
      v8 = *(v1 + 64);
      *(v1 + 24) = *(v1 + 72);
      *(v1 + 40) = *(v1 + 88);
      v9 = *v1;
      *v1 = v7;
      *(v1 + 48) = v9;
      *&v7 = *(v1 + 16);
      *(v1 + 16) = v8;
      *(v1 + 64) = v7;
      *(v1 + 72) = v4;
      *(v1 + 80) = v5;
      *(v1 + 88) = v6;
      v1 = v2;
      v2 = v3;
    }

    BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_Check(*(v1 + 24));
    return BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_Check(*(v2 + 24));
  }

  return result;
}

uint64_t _BuildBV4(uint64_t *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    while (1)
    {
      v8 = *(a3 + 24);
      v9 = v8 ? v8 + 48 : 0;
      v10 = *(v8 + 24);
      v11 = *(v9 + 24);
      if (!v10)
      {
        break;
      }

      if (!v11)
      {
        ++*(a4 + 12);
        setPrimitive(*a1, a2, 2u, v8 + 48, *(a4 + 20));
        v15 = *(v8 + 24);
        if (v15)
        {
          a3 = (v15 + 12);
        }

        else
        {
          a3 = 0;
        }

        v16 = setNode(*a1, a2, 0, *(v8 + 24), a4);
        v17 = setNode(*a1, a2, 1u, a3, a4);
        a2[12] = precomputeNodeSorting(v8, (v8 + 48));
        result = precomputeNodeSorting(v15, a3);
        a2[24] = result;
        if (!v16)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      ++*(a4 + 16);
      a3 = (v11 + 12);
      v12 = setNode(*a1, a2, 0, v10, a4);
      v18 = setNode(*a1, a2, 1u, (v10 + 12), a4);
      v19 = setNode(*a1, a2, 2u, v11, a4);
      v13 = setNode(*a1, a2, 3u, (v11 + 12), a4);
      a2[12] = precomputeNodeSorting(v8, (v8 + 48));
      a2[24] = precomputeNodeSorting(v10, v10 + 12);
      result = precomputeNodeSorting(v11, v11 + 12);
      a2[36] = result;
      if (v12)
      {
        result = _BuildBV4(a1, v12, v10, a4);
      }

      if (v18)
      {
        result = _BuildBV4(a1, v18, v10 + 12, a4);
      }

      if (v19)
      {
        result = _BuildBV4(a1, v19, v11, a4);
      }

      a2 = v13;
      if (!v13)
      {
        return result;
      }
    }

    if (!v11)
    {
      break;
    }

    ++*(a4 + 8);
    setPrimitive(*a1, a2, 0, v8, *(a4 + 20));
    v15 = *(v9 + 24);
    if (v15)
    {
      a3 = (v15 + 12);
    }

    else
    {
      a3 = 0;
    }

    v16 = setNode(*a1, a2, 1u, v15, a4);
    v17 = setNode(*a1, a2, 2u, a3, a4);
    a2[12] = precomputeNodeSorting(v8, (v8 + 48));
    result = precomputeNodeSorting(v15, a3);
    a2[36] = result;
    if (!v16)
    {
      goto LABEL_20;
    }

LABEL_19:
    result = _BuildBV4(a1, v16, v15, a4);
LABEL_20:
    a2 = v17;
    if (!v17)
    {
      return result;
    }
  }

  ++*(a4 + 4);
  setPrimitive(*a1, a2, 0, v8, *(a4 + 20));
  setPrimitive(*a1, a2, 1u, v8 + 48, *(a4 + 20));
  result = precomputeNodeSorting(v8, (v8 + 48));
  a2[12] = result;
  return result;
}

uint64_t BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_CheckMD(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *a3;
  v5 = *a3 + 1;
  *a3 = v5;
  if (*a2 <= v5)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = *a2;
  }

  *a2 = v6;
  result = *(a1 + 24);
  if (result)
  {
    result = (BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_CheckMD)();
    --*a3;
    v10 = *(a1 + 24);
    if (v10)
    {
      result = BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_CheckMD(v10 + 48, a2, a3);
      --*a3;
    }
  }

  return result;
}

uint64_t setPrimitive(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, float a5)
{
  v5 = *(a4 + 40);
  v6 = *(a4 + 32);
  v7 = a2 + 48 * a3;
  v8 = vextq_s8(*a4, *a4, 8uLL);
  v9 = vextq_s8(*a4, v8, 0xCuLL);
  v10 = vsubq_f32(*a4, v9);
  *(v9.i64 + 4) = *(a4 + 16);
  v11 = vaddq_f32(*a4, v9);
  v11.i32[3] = v10.i32[3];
  v12 = vsub_f32(*(a4 + 16), vext_s8(*a4, *v8.f32, 4uLL));
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v13 = vmulq_f32(v11, v8);
  v14 = vmul_f32(v12, 0x3F0000003F000000);
  *(v7 + 12) = v13;
  *(v7 + 28) = v14;
  if (a5 != 0.0)
  {
    *(v7 + 24) = v13.f32[3] + a5;
    *(v7 + 28) = v14.f32[0] + a5;
    *(v7 + 32) = v14.f32[1] + a5;
  }

  *(v7 + 40) = (2 * (v5 & 0x8000000F | (16 * (((v6 - result) >> 2) & 0x7FFFFFF)))) | 1;
  return result;
}

uint64_t precomputeNodeSorting(float *a1, float *a2)
{
  v2 = ((*a1 + a1[3]) * 0.5) - ((*a2 + a2[3]) * 0.5);
  v3 = ((a1[1] + a1[4]) * 0.5) - ((a2[1] + a2[4]) * 0.5);
  v4 = ((a1[2] + a1[5]) * 0.5) - ((a2[2] + a2[5]) * 0.5);
  v5 = v3 * 0.57735;
  v6 = (v3 * 0.57735) + (v2 * 0.57735);
  v7 = v3 * -0.57735;
  v8 = v7 + (v2 * 0.57735);
  v9 = v8 + (v4 * 0.57735);
  v10 = v8 + (v4 * -0.57735);
  v11 = v5 + (v2 * -0.57735);
  v12 = v11 + (v4 * 0.57735);
  v13 = v11 + (v4 * -0.57735);
  v14 = v7 + (v2 * -0.57735);
  if ((v6 + (v4 * -0.57735)) >= 0.0)
  {
    v15 = (((v6 + (v4 * 0.57735)) >= 0.0) << 7) | 0x40;
  }

  else
  {
    v15 = ((v6 + (v4 * 0.57735)) >= 0.0) << 7;
  }

  if (v9 >= 0.0)
  {
    v15 |= 0x20u;
  }

  if (v10 >= 0.0)
  {
    v15 |= 0x10u;
  }

  if (v12 >= 0.0)
  {
    v15 |= 8u;
  }

  if (v13 >= 0.0)
  {
    v15 |= 4u;
  }

  if ((v14 + (v4 * 0.57735)) >= 0.0)
  {
    v15 |= 2u;
  }

  return v15 | ((v14 + (v4 * -0.57735)) >= 0.0);
}

uint64_t setNode(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, BV4BuildParams *this)
{
  if (*(a4 + 24))
  {
    v5 = a2 + 48 * a3;
    v6 = v5 + 8;
    v7 = vextq_s8(*a4, *a4, 8uLL);
    v8 = vextq_s8(*a4, v7, 0xCuLL);
    v9 = vsubq_f32(*a4, v8);
    *(v8.i64 + 4) = *(a4 + 16);
    v10 = vaddq_f32(*a4, v8);
    v10.i32[3] = v9.i32[3];
    v11 = vsub_f32(*(a4 + 16), vext_s8(*a4, *v7.f32, 4uLL));
    v7.i64[0] = 0x3F0000003F000000;
    v7.i64[1] = 0x3F0000003F000000;
    v12 = vmulq_f32(v10, v7);
    v13 = vmul_f32(v11, 0x3F0000003F000000);
    *(v5 + 12) = v12;
    *(v5 + 28) = v13;
    v14 = *(this + 5);
    if (v14 != 0.0)
    {
      *(v5 + 24) = v12.f32[3] + v14;
      *(v5 + 28) = v13.f32[0] + v14;
      *(v5 + 32) = v13.f32[1] + v14;
    }

    ++*this;
    result = BV4BuildParams::allocateNode(this);
    *(v6 + 32) = result;
  }

  else
  {
    setPrimitive(a1, a2, a3, a4, *(this + 5));
    return 0;
  }

  return result;
}

uint64_t _ComputeMaxValues(uint64_t a1, float *a2, float *a3)
{
  v5 = a1 + 20;
  v6 = 4;
  do
  {
    result = *(v5 + 20);
    if (result != 0xFFFFFFFFLL)
    {
      v9 = *(v5 - 8);
      v8 = *(v5 - 4);
      v10 = *v5;
      v11 = *(v5 + 4);
      v13 = *(v5 + 8);
      v12 = *(v5 + 12);
      v14 = vabds_f32(v9, v11);
      if (v14 > *a2)
      {
        *a2 = v14;
      }

      v15 = fabsf(v8 - v13);
      if (v15 > a2[1])
      {
        a2[1] = v15;
      }

      v16 = fabsf(v10 - v12);
      if (v16 > a2[2])
      {
        a2[2] = v16;
      }

      v17 = fabsf(v9 + v11);
      if (v17 > *a3)
      {
        *a3 = v17;
      }

      v18 = fabsf(v8 + v13);
      if (v18 > a3[1])
      {
        a3[1] = v18;
      }

      v19 = fabsf(v10 + v12);
      if (v19 > a3[2])
      {
        a3[2] = v19;
      }

      if ((result & 1) == 0)
      {
        result = _ComputeMaxValues();
      }
    }

    v5 += 48;
    --v6;
  }

  while (v6);
  return result;
}

uint64_t _FlattenQ(uint64_t result, unsigned int a2, int *a3, void *a4, unsigned int *a5, unsigned int *a6, float *a7, float *a8, uint64_t a9, uint64_t a10)
{
  v12 = result;
  v75 = *MEMORY[0x1E69E9840];
  v13 = *a6 + 1;
  *a6 = v13;
  if (v13 > *a5)
  {
    *a5 = v13;
  }

  v14.i64[0] = a4[5];
  v14.i64[1] = a4[11];
  v15.i64[0] = a4[17];
  v15.i64[1] = a4[23];
  v16 = xmmword_1E3102070;
  v17.i64[0] = 0xFFFFFFFFLL;
  v17.i64[1] = 0xFFFFFFFFLL;
  v18 = vuzp1q_s32(vceqq_s64(v14, v17), vceqq_s64(v15, v17));
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(v18))))
  {
    v19 = 0;
    v20 = vaddvq_s32(vbicq_s8(xmmword_1E3102070, v18));
    v21 = *a7;
    v22 = a7[1];
    v23 = a7[2];
    v24 = *a8;
    v25 = a8[1];
    v26 = a8[2];
    v10.i32[0] = v20 & 0xF;
    v27 = vcnt_s8(v10);
    v27.i16[0] = vaddlv_u8(v27);
    v28 = v27.u32[0];
    do
    {
      v29 = 0;
      v30 = &a4[6 * v19 + 1];
      v31 = *(v30 + 4);
      v32 = *(v30 + 8);
      v34 = *(v30 + 12);
      v33 = *(v30 + 16);
      *&v35 = v31 - v33;
      v36 = *(v30 + 20);
      v37 = *(v30 + 24);
      *&v38 = v32 - v36;
      *&v39 = v31 + v33;
      *&v40 = v32 + v36;
      v41 = v12 + 16 * (v19 + a2);
      *(v41 + 2) = (v21 * *&v35);
      *(v41 + 6) = (v22 * *&v38);
      *(v41 + 10) = (v23 * (v34 - v37));
      *v41 = (v24 * *&v39);
      *(v41 + 4) = (v25 * *&v40);
      *(v41 + 8) = (v26 * (v34 + v37));
      *&v72[0] = __PAIR64__(v38, v35);
      *(v72 + 2) = v34 - v37;
      v73 = __PAIR64__(v40, v39);
      *&v74 = v34 + v37;
      do
      {
        result = v41 + 4 * v29;
        v42 = *(a9 + 4 * v29);
        v43 = *(a10 + 4 * v29);
        v44 = *(&v73 + v29);
        v45 = *(v72 + v29);
        v46 = *(result + 2);
        v47 = *result;
LABEL_7:
        v48 = v42 * v46;
        if (v46)
        {
          v49 = v48 <= v45;
        }

        else
        {
          v49 = 1;
        }

        while (v47 != 0x7FFF && (v43 * v47) < v44)
        {
          *result = ++v47;
          if (!v49)
          {
LABEL_18:
            *(result + 2) = --v46;
            goto LABEL_7;
          }
        }

        if (v48 > v45 && v46 != 0)
        {
          goto LABEL_18;
        }

        ++v29;
      }

      while (v29 != 3);
      *(v41 + 12) = *(v30 + 32);
      ++v19;
    }

    while (v19 != v28);
  }

  v51 = 0;
  v73 = -1;
  v74 = -1;
  v52 = (v12 + 16 * a2 + 12);
  v53 = a4 + 6;
  v54 = 4;
  memset(v72, 0, sizeof(v72));
  do
  {
    v55 = *(v53 - 1);
    if (v55 == 0xFFFFFFFFLL)
    {
      *(v52 - 3) = 0;
      *(v52 - 1) = 0xFFFFFFFF00000000;
    }

    else if ((v55 & 1) == 0)
    {
      v56 = *a3;
      *a3 += 4;
      v57.i64[0] = v55[5];
      v57.i64[1] = v55[11];
      v58.i64[0] = v55[17];
      v58.i64[1] = v55[23];
      v59 = vbicq_s8(xmmword_1E3102070, vuzp1q_s32(vceqq_s64(v57, v17), vceqq_s64(v58, v17)));
      v59.i32[0] = vaddvq_s32(v59);
      *v59.i8 = vcnt_s8(*v59.i8);
      v59.i16[0] = vaddlv_u8(*v59.i8);
      result = ((v56 << 11) | (2 * v59.i32[0])) - 4;
      *(&v73 + v51) = v56;
      *(v72 + v51++) = v55;
      *v52 = result | (8 * *v53);
    }

    v52 += 4;
    v53 += 12;
    --v54;
  }

  while (v54);
  if (v51)
  {
    v60 = v51;
    v61 = v72;
    v62 = &v73;
    do
    {
      v64 = *v62;
      v62 = (v62 + 4);
      v63 = v64;
      v65 = *v61++;
      v66 = v12;
      v67 = a5;
      v68 = v12;
      v69 = a7;
      v70 = a8;
      result = _FlattenQ(v66, v63, a3, v65, v16);
      a8 = v70;
      a7 = v69;
      v12 = v68;
      a5 = v67;
      --*a6;
      --v60;
    }

    while (v60);
  }

  return result;
}

BOOL RayMeshColliderCallback::processHit(uint64_t a1, float *a2, float *a3, float *a4, float *a5)
{
  v6 = a2[13];
  v5 = a2[14];
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = *a4;
  v11 = a4[1];
  v12 = a4[2];
  v13 = *a5;
  v14 = a5[1];
  v15 = a5[2];
  v92 = *a2;
  v93 = *(a2 + 4);
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  v21 = v16[2];
  v22 = v16[3];
  v23 = (v22 * v22) + -0.5;
  v24 = *v16;
  v25 = v16[1];
  if ((*(a1 + 56) & 2) != 0)
  {
    v32 = ((v11 - v8) * (v15 - v9)) - ((v12 - v9) * (v14 - v8));
    v33 = ((v12 - v9) * (v13 - v7)) - ((v10 - v7) * (v15 - v9));
    v34 = ((v10 - v7) * (v14 - v8)) - ((v11 - v8) * (v13 - v7));
    v35 = *(a1 + 48);
    if (v35)
    {
      v26 = ((v33 * v35[1]) + (*v35 * v32)) + (v35[2] * v34);
      v28 = ((v33 * v35[4]) + (v35[3] * v32)) + (v35[5] * v34);
      v29 = ((v33 * v35[7]) + (v35[6] * v32)) + (v35[8] * v34);
      v36 = (v18 * v19) * v20;
      v37 = v36 < 0.0;
      if (v36 < 0.0)
      {
        v30 = *(a2 + 14);
      }

      else
      {
        v30 = *(a2 + 13);
      }

      if (v37)
      {
        v31 = *(a2 + 13);
      }

      else
      {
        v31 = *(a2 + 14);
      }
    }

    else
    {
      v38 = v32 + v32;
      v39 = v33 + v33;
      v40 = v34 + v34;
      v41 = ((v39 * v25) + (v24 * v38)) + (v21 * v40);
      v26 = ((v22 * ((v39 * -v21) + (v25 * v40))) + (v38 * v23)) + (v24 * v41);
      v28 = ((v22 * ((v40 * -v24) + (v21 * v38))) + (v39 * v23)) + (v25 * v41);
      v29 = ((v22 * ((v38 * -v25) + (v24 * v39))) + (v40 * v23)) + (v21 * v41);
      v30 = *(a2 + 13);
      v31 = *(a2 + 14);
    }

    v42 = sqrtf(((v28 * v28) + (v26 * v26)) + (v29 * v29));
    if (v42 > 0.0)
    {
      v43 = 1.0 / v42;
      v26 = v26 * v43;
      v28 = v28 * v43;
      v29 = v29 * v43;
    }

    if (*(a1 + 72) == 1 && (((v28 * *(*(a1 + 64) + 4)) + (v26 * **(a1 + 64))) + (v29 * *(*(a1 + 64) + 8))) > 0.0)
    {
      v26 = -v26;
      v28 = -v28;
      v29 = -v29;
    }

    v27 = 1035;
  }

  else
  {
    v26 = 0.0;
    v27 = 1033;
    v28 = 0.0;
    v29 = 0.0;
    v30 = *(a2 + 13);
    v31 = *(a2 + 14);
  }

  v44 = *(a1 + 24);
  v45 = *(a1 + 28);
  if (v44 != v45)
  {
    v46 = (1.0 - v6) - v5;
    v47 = v6 * v11;
    v48 = v5 * v13;
    v49 = v5 * v14;
    v50 = ((v46 * v9) + (v6 * v12)) + (v5 * v15);
    v51 = (((v46 * v7) + (v6 * v10)) + v48) + (((v46 * v7) + (v6 * v10)) + v48);
    v52 = (((v46 * v8) + v47) + v49) + (((v46 * v8) + v47) + v49);
    v53 = v50 + v50;
    v54 = v17[3];
    v55 = v17[4];
    v56 = v17[5];
    v57 = v17[6];
    v58 = (v57 * v57) + -0.5;
    v59 = v57 * ((v56 * v51) - (v54 * v53));
    v60 = v57 * ((v54 * v52) - (v55 * v51));
    v61 = ((v52 * v55) + (v54 * v51)) + (v56 * v53);
    v62 = (v57 * ((v55 * v53) - (v56 * v52))) + (v51 * v58);
    v63 = v19 * ((v59 + (v52 * v58)) + (v55 * v61));
    v64 = v20 * ((v60 + (v53 * v58)) + (v56 * v61));
    v65 = (v18 * (v62 + (v54 * v61))) + (v18 * (v62 + (v54 * v61)));
    v66 = v63 + v63;
    v67 = v64 + v64;
    v68 = -(((v55 * v67) - (v56 * v66)) * v57);
    v69 = -(((v56 * v65) - (v54 * v67)) * v57);
    v70 = -(((v54 * v66) - (v55 * v65)) * v57);
    v71 = ((v55 * v66) + (v54 * v65)) + (v56 * v67);
    v72 = ((v68 + (v65 * v58)) + (v54 * v71)) + ((v68 + (v65 * v58)) + (v54 * v71));
    v73 = ((v69 + (v66 * v58)) + (v55 * v71)) + ((v69 + (v66 * v58)) + (v55 * v71));
    v74 = ((v70 + (v67 * v58)) + (v56 * v71)) + ((v70 + (v67 * v58)) + (v56 * v71));
    v75 = v22 * ((v25 * v74) - (v21 * v73));
    v76 = v22 * ((v21 * v72) - (v24 * v74));
    v77 = v22 * ((v24 * v73) - (v25 * v72));
    v78 = ((v25 * v73) + (v24 * v72)) + (v21 * v74);
    v79 = v75 + (v72 * v23);
    v80 = v76 + (v73 * v23);
    v81 = v77 + (v74 * v23);
    v82 = a2[12];
    v83 = v79 + (v24 * v78);
    v84 = v80 + (v25 * v78);
    v85 = v16[4];
    v86 = v16[5];
    v87 = v16[6];
    v88 = *(a1 + 76);
    v89 = *(a1 + 16);
    *(a1 + 24) = v44 + 1;
    v90 = v89 + (v44 << 6);
    *v90 = v92;
    *(v90 + 16) = v93;
    *(v90 + 20) = v27;
    *(v90 + 24) = v85 + v83;
    *(v90 + 28) = v86 + v84;
    *(v90 + 32) = v87 + (v81 + (v21 * v78));
    *(v90 + 36) = v26;
    *(v90 + 40) = v28;
    *(v90 + 44) = v29;
    *(v90 + 48) = v82 * v88;
    *(v90 + 52) = v30;
    *(v90 + 56) = v31;
  }

  return v44 != v45;
}

uint64_t RayRTreeCallback<0,false>::RayRTreeCallback(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, float a9, float a10)
{
  *result = &unk_1F5D22268;
  *(result + 8) = &unk_1F5D22298;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  *(result + 48) = 0;
  *&v10 = *a6;
  *(result + 56) = *a6;
  v11 = *(a6 + 8);
  *(result + 64) = v11;
  *&v12 = *a7;
  *(result + 68) = *a7;
  v13 = *(a7 + 8);
  *(result + 76) = v13;
  *(result + 80) = a8;
  *(result + 84) = a9;
  *(result + 88) = a10;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = -1;
  *(result + 116) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 120) = 0;
  *(result + 144) = 2139095039;
  *(result + 152) = 0;
  *(result + 209) = *(a2 + 8) == 1;
  *(&v10 + 1) = v11;
  *(&v12 + 1) = v13;
  *(result + 208) = 0;
  *(result + 240) = v10;
  *(result + 256) = v12;
  return result;
}

BOOL RayRTreeCallback<0,false>::processResults(uint64_t a1, unsigned int a2, uint64_t a3, float *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0uLL;
  v31 = -1;
  v32 = 0;
  v34 = 0;
  v33 = 0uLL;
  *v35 = 2139095039;
  *&v35[8] = 0;
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v27 = a2;
    v28 = a3;
LABEL_3:
    v8 = *(a3 + 4 * v6);
    v9 = v8 >> 5;
    v10 = ((v8 >> 1) & 0xF) + 1;
    v11 = 3 * (v8 >> 5);
    v12 = 4 * v11;
    v13 = 2 * v11;
    while (1)
    {
      v14 = *(a1 + 32);
      if (*(a1 + 24))
      {
        v15 = v14 + v13;
        v16 = *(v14 + v13);
        v17 = *(v15 + 2);
        v18 = *(v15 + 4);
      }

      else
      {
        v19 = v14 + v12;
        v16 = *(v14 + v12);
        v17 = *(v19 + 4);
        v18 = *(v19 + 8);
      }

      v20 = *(a1 + 40);
      v21 = v20 + 12 * v16;
      v22 = v20 + 12 * v17;
      v23 = v20 + 12 * v18;
      v36[0] = v16;
      v36[1] = v17;
      v36[2] = v18;
      v31 = v9;
      v32 = 1;
      if (*(a1 + 209) == 1)
      {
        v24 = *v35;
        if (*v35 < *(a1 + 144))
        {
          *(a1 + 96) = v30;
          *(a1 + 112) = v31;
          *(a1 + 116) = 1;
          *(a1 + 120) = v33;
          *(a1 + 136) = v34;
          *(a1 + 144) = v24;
          *(a1 + 148) = *&v35[4];
          if (v24 >= *a4)
          {
            v24 = *a4;
          }

          *a4 = v24;
          *(a1 + 160) = *v21;
          *(a1 + 168) = *(v21 + 8);
          *(a1 + 172) = *v22;
          *(a1 + 180) = *(v22 + 8);
          *(a1 + 184) = *v23;
          *(a1 + 192) = *(v23 + 8);
          *(a1 + 196) = v16;
          *(a1 + 200) = v17;
          *(a1 + 204) = v18;
          *(a1 + 208) = 1;
        }
      }

      else
      {
        v29 = *a4;
        if (!(***(a1 + 16))(*(a1 + 16), &v30, v21, v22, v23, &v29, v36))
        {
          return v7;
        }

        v25 = v29;
        if (v29 < *a4)
        {
          *a4 = v29;
          *(a1 + 88) = v25;
        }
      }

      if (!*(*(a1 + 16) + 8))
      {
        break;
      }

      LODWORD(v9) = v9 + 1;
      v12 += 12;
      v13 += 6;
      if (!--v10)
      {
        ++v6;
        a3 = v28;
        v7 = v6 >= v27;
        if (v6 != v27)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }
  }

  else
  {
    return 1;
  }

  return v7;
}

void RayRTreeCallback<0,false>::~RayRTreeCallback(uint64_t a1)
{
  RayRTreeCallback<0,false>::~RayRTreeCallback(a1);

  JUMPOUT(0x1E6906520);
}

BOOL RayRTreeCallback<0,false>::processResults(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0uLL;
  v30 = -1;
  v31 = 0;
  v33 = 0;
  v32 = 0uLL;
  *v34 = 2139095039;
  *&v34[8] = 0;
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0.0;
    v27 = a2;
LABEL_3:
    v8 = *(a3 + 4 * v5);
    v9 = v8 >> 5;
    v10 = ((v8 >> 1) & 0xF) + 1;
    v11 = 3 * (v8 >> 5);
    v12 = 4 * v11;
    v13 = 2 * v11;
    while (1)
    {
      v14 = *(a1 + 32);
      if (*(a1 + 24))
      {
        v15 = v14 + v13;
        v16 = *(v14 + v13);
        v17 = *(v15 + 2);
        v18 = *(v15 + 4);
      }

      else
      {
        v19 = v14 + v12;
        v16 = *(v14 + v12);
        v17 = *(v19 + 4);
        v18 = *(v19 + 8);
      }

      v20 = *(a1 + 40);
      v21 = v20 + 12 * v16;
      v22 = v20 + 12 * v17;
      v23 = v20 + 12 * v18;
      v35[0] = v16;
      v35[1] = v17;
      v35[2] = v18;
      v30 = v9;
      v31 = 1;
      if (*(a1 + 209) == 1)
      {
        v24 = *v34;
        if (*v34 < *(a1 + 144))
        {
          *(a1 + 96) = v29;
          *(a1 + 112) = v30;
          *(a1 + 116) = 1;
          *(a1 + 120) = v32;
          *(a1 + 136) = v33;
          *(a1 + 144) = v24;
          *(a1 + 148) = *&v34[4];
          if (v24 < v7)
          {
            v7 = v24;
          }

          *(a1 + 160) = *v21;
          *(a1 + 168) = *(v21 + 8);
          *(a1 + 172) = *v22;
          *(a1 + 180) = *(v22 + 8);
          *(a1 + 184) = *v23;
          *(a1 + 192) = *(v23 + 8);
          *(a1 + 196) = v16;
          *(a1 + 200) = v17;
          *(a1 + 204) = v18;
          *(a1 + 208) = 1;
        }
      }

      else
      {
        v28 = v7;
        if (!(***(a1 + 16))(*(a1 + 16), &v29, v21, v22, v23, &v28, v35))
        {
          return v6;
        }

        v25 = v28;
        if (v28 < v7)
        {
          *(a1 + 88) = v28;
          v7 = v25;
        }
      }

      if (!*(*(a1 + 16) + 8))
      {
        break;
      }

      LODWORD(v9) = v9 + 1;
      v12 += 12;
      v13 += 6;
      if (!--v10)
      {
        v6 = ++v5 >= v27;
        if (v5 != v27)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

void non-virtual thunk toRayRTreeCallback<0,false>::~RayRTreeCallback(uint64_t a1)
{
  RayRTreeCallback<0,false>::~RayRTreeCallback(a1 - 8);

  JUMPOUT(0x1E6906520);
}

uint64_t RayRTreeCallback<0,false>::~RayRTreeCallback(uint64_t a1)
{
  *a1 = &unk_1F5D22268;
  *(a1 + 8) = &unk_1F5D22298;
  if (*(a1 + 208) == 1)
  {
    (***(a1 + 16))(*(a1 + 16), a1 + 96, a1 + 160, a1 + 172, a1 + 184, a1 + 88, a1 + 196);
  }

  return a1;
}

float RayRTreeCallback<1,false>::RayRTreeCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, float a9, float a10, uint64_t a11)
{
  *a1 = &unk_1F5D22320;
  *(a1 + 8) = &unk_1F5D22350;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = a11;
  *&v11 = *a6;
  *(a1 + 56) = *a6;
  v12 = *(a6 + 8);
  *(a1 + 64) = v12;
  *&v13 = *a7;
  *(a1 + 68) = *a7;
  v14 = *(a7 + 8);
  *(a1 + 76) = v14;
  *(a1 + 80) = a8;
  *(a1 + 84) = a9;
  *(a1 + 88) = a10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 116) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 2139095039;
  *(a1 + 152) = 0;
  *(a1 + 209) = *(a2 + 8) == 1;
  *(a1 + 208) = 0;
  *&v15 = *a11;
  *(&v15 + 1) = *(a11 + 8);
  *(&v11 + 1) = v12;
  *(a1 + 224) = v15;
  *(a1 + 240) = v11;
  *(&v13 + 1) = v14;
  *(a1 + 256) = v13;
  return *&v15;
}

BOOL RayRTreeCallback<1,false>::processResults(uint64_t a1, unsigned int a2, uint64_t a3, float *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0uLL;
  v31 = -1;
  v32 = 0;
  v34 = 0;
  v33 = 0uLL;
  *v35 = 2139095039;
  *&v35[8] = 0;
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v27 = a2;
    v28 = a3;
LABEL_3:
    v8 = *(a3 + 4 * v6);
    v9 = v8 >> 5;
    v10 = ((v8 >> 1) & 0xF) + 1;
    v11 = 3 * (v8 >> 5);
    v12 = 4 * v11;
    v13 = 2 * v11;
    while (1)
    {
      v14 = *(a1 + 32);
      if (*(a1 + 24))
      {
        v15 = v14 + v13;
        v16 = *(v14 + v13);
        v17 = *(v15 + 2);
        v18 = *(v15 + 4);
      }

      else
      {
        v19 = v14 + v12;
        v16 = *(v14 + v12);
        v17 = *(v19 + 4);
        v18 = *(v19 + 8);
      }

      v20 = *(a1 + 40);
      v21 = v20 + 12 * v16;
      v22 = v20 + 12 * v17;
      v23 = v20 + 12 * v18;
      v36[0] = v16;
      v36[1] = v17;
      v36[2] = v18;
      v31 = v9;
      v32 = 1;
      if (*(a1 + 209) == 1)
      {
        v24 = *v35;
        if (*v35 < *(a1 + 144))
        {
          *(a1 + 96) = v30;
          *(a1 + 112) = v31;
          *(a1 + 116) = 1;
          *(a1 + 120) = v33;
          *(a1 + 136) = v34;
          *(a1 + 144) = v24;
          *(a1 + 148) = *&v35[4];
          if (v24 >= *a4)
          {
            v24 = *a4;
          }

          *a4 = v24;
          *(a1 + 160) = *v21;
          *(a1 + 168) = *(v21 + 8);
          *(a1 + 172) = *v22;
          *(a1 + 180) = *(v22 + 8);
          *(a1 + 184) = *v23;
          *(a1 + 192) = *(v23 + 8);
          *(a1 + 196) = v16;
          *(a1 + 200) = v17;
          *(a1 + 204) = v18;
          *(a1 + 208) = 1;
        }
      }

      else
      {
        v29 = *a4;
        if (!(***(a1 + 16))(*(a1 + 16), &v30, v21, v22, v23, &v29, v36))
        {
          return v7;
        }

        v25 = v29;
        if (v29 < *a4)
        {
          *a4 = v29;
          *(a1 + 88) = v25;
        }
      }

      if (!*(*(a1 + 16) + 8))
      {
        break;
      }

      LODWORD(v9) = v9 + 1;
      v12 += 12;
      v13 += 6;
      if (!--v10)
      {
        ++v6;
        a3 = v28;
        v7 = v6 >= v27;
        if (v6 != v27)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }
  }

  else
  {
    return 1;
  }

  return v7;
}

void RayRTreeCallback<1,false>::~RayRTreeCallback(uint64_t a1)
{
  RayRTreeCallback<1,false>::~RayRTreeCallback(a1);

  JUMPOUT(0x1E6906520);
}

BOOL RayRTreeCallback<1,false>::processResults(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0uLL;
  v30 = -1;
  v31 = 0;
  v33 = 0;
  v32 = 0uLL;
  *v34 = 2139095039;
  *&v34[8] = 0;
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0.0;
    v27 = a2;
LABEL_3:
    v8 = *(a3 + 4 * v5);
    v9 = v8 >> 5;
    v10 = ((v8 >> 1) & 0xF) + 1;
    v11 = 3 * (v8 >> 5);
    v12 = 4 * v11;
    v13 = 2 * v11;
    while (1)
    {
      v14 = *(a1 + 32);
      if (*(a1 + 24))
      {
        v15 = v14 + v13;
        v16 = *(v14 + v13);
        v17 = *(v15 + 2);
        v18 = *(v15 + 4);
      }

      else
      {
        v19 = v14 + v12;
        v16 = *(v14 + v12);
        v17 = *(v19 + 4);
        v18 = *(v19 + 8);
      }

      v20 = *(a1 + 40);
      v21 = v20 + 12 * v16;
      v22 = v20 + 12 * v17;
      v23 = v20 + 12 * v18;
      v35[0] = v16;
      v35[1] = v17;
      v35[2] = v18;
      v30 = v9;
      v31 = 1;
      if (*(a1 + 209) == 1)
      {
        v24 = *v34;
        if (*v34 < *(a1 + 144))
        {
          *(a1 + 96) = v29;
          *(a1 + 112) = v30;
          *(a1 + 116) = 1;
          *(a1 + 120) = v32;
          *(a1 + 136) = v33;
          *(a1 + 144) = v24;
          *(a1 + 148) = *&v34[4];
          if (v24 < v7)
          {
            v7 = v24;
          }

          *(a1 + 160) = *v21;
          *(a1 + 168) = *(v21 + 8);
          *(a1 + 172) = *v22;
          *(a1 + 180) = *(v22 + 8);
          *(a1 + 184) = *v23;
          *(a1 + 192) = *(v23 + 8);
          *(a1 + 196) = v16;
          *(a1 + 200) = v17;
          *(a1 + 204) = v18;
          *(a1 + 208) = 1;
        }
      }

      else
      {
        v28 = v7;
        if (!(***(a1 + 16))(*(a1 + 16), &v29, v21, v22, v23, &v28, v35))
        {
          return v6;
        }

        v25 = v28;
        if (v28 < v7)
        {
          *(a1 + 88) = v28;
          v7 = v25;
        }
      }

      if (!*(*(a1 + 16) + 8))
      {
        break;
      }

      LODWORD(v9) = v9 + 1;
      v12 += 12;
      v13 += 6;
      if (!--v10)
      {
        v6 = ++v5 >= v27;
        if (v5 != v27)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

void non-virtual thunk toRayRTreeCallback<1,false>::~RayRTreeCallback(uint64_t a1)
{
  RayRTreeCallback<1,false>::~RayRTreeCallback(a1 - 8);

  JUMPOUT(0x1E6906520);
}

uint64_t RayRTreeCallback<1,false>::~RayRTreeCallback(uint64_t a1)
{
  *a1 = &unk_1F5D22320;
  *(a1 + 8) = &unk_1F5D22350;
  if (*(a1 + 208) == 1)
  {
    (***(a1 + 16))(*(a1 + 16), a1 + 96, a1 + 160, a1 + 172, a1 + 184, a1 + 88, a1 + 196);
  }

  return a1;
}

BOOL RayRTreeCallback<0,true>::processResults(uint64_t a1, unsigned int a2, uint64_t a3, float *a4)
{
  v85 = *MEMORY[0x1E69E9840];
  v75 = 0uLL;
  v76 = -1;
  v77 = 0;
  v79 = 0;
  v78 = 0uLL;
  if (!a2)
  {
    return 1;
  }

  v7 = 0;
  v8 = 0;
  v9 = a2;
  v72 = a2;
  do
  {
    v10 = *(a3 + 4 * v7);
    v11 = v10 >> 5;
    v12 = ((v10 >> 1) & 0xF) + 1;
    v13 = 3 * (v10 >> 5);
    v14 = 4 * v13;
    v15 = 2 * v13;
    do
    {
      v16 = *(a1 + 32);
      if (*(a1 + 24))
      {
        v17 = v16 + v15;
        v18 = *(v16 + v15);
        v19 = *(v17 + 2);
        v20 = *(v17 + 4);
      }

      else
      {
        v21 = v16 + v14;
        v18 = *(v16 + v14);
        v19 = *(v21 + 4);
        v20 = *(v21 + 8);
      }

      v22 = *(a1 + 40);
      v23 = (v22 + 12 * v18);
      v24 = (v22 + 12 * v19);
      v25 = (v22 + 12 * v20);
      v82 = v18;
      v83 = v19;
      v84 = v20;
      v26 = *(a1 + 84);
      v28 = *v23;
      v27 = v23[1];
      v29 = *v24 - *v23;
      v30 = v24[1] - v27;
      v31 = v23[2];
      v32 = v24[2] - v31;
      v33 = *v25 - *v23;
      v34 = v25[1] - v27;
      v35 = v25[2] - v31;
      v37 = *(a1 + 72);
      v36 = *(a1 + 76);
      v38 = *(a1 + 68);
      v39 = (v37 * v35) - (v36 * v34);
      v40 = (v36 * v33) - (v38 * v35);
      v41 = (v38 * v34) - (v37 * v33);
      v42 = ((v30 * v40) + (v29 * v39)) + (v32 * v41);
      if (*(a1 + 80))
      {
        if (fabsf(v42) < 1.4211e-14)
        {
          goto LABEL_32;
        }

        v43 = *(a1 + 56) - v28;
        v44 = 1.0 / v42;
        v45 = *(a1 + 60) - v27;
        v46 = *(a1 + 64) - v31;
        v47 = v44 * (((v40 * v45) + (v43 * v39)) + (v46 * v41));
        v48 = -v26;
        v49 = v26 + 1.0;
        v50 = v47 >= -v26 && v47 <= v49;
        v51 = (v45 * v32) - (v46 * v30);
        v52 = (v46 * v29) - (v43 * v32);
        v53 = (v43 * v30) - (v45 * v29);
        v54 = v44 * (((v37 * v52) + (v38 * v51)) + (v36 * v53));
        v55 = !v50 || v54 < v48;
        if (v55 || (v47 + v54) > v49)
        {
          goto LABEL_32;
        }

        v57 = v44 * (((v34 * v52) + (v33 * v51)) + (v35 * v53));
        v80 = v57;
        v81[0] = v47;
      }

      else
      {
        if (v42 < 1.4211e-14)
        {
          goto LABEL_32;
        }

        v58 = *(a1 + 56) - v28;
        v59 = *(a1 + 60) - v27;
        v60 = *(a1 + 64) - v31;
        v61 = ((v40 * v59) + (v58 * v39)) + (v60 * v41);
        v62 = -(v26 * v42);
        v63 = v42 + (v26 * v42);
        v64 = v61 >= v62 && v61 <= v63;
        v65 = (v59 * v32) - (v60 * v30);
        v66 = (v60 * v29) - (v58 * v32);
        v67 = (v58 * v30) - (v59 * v29);
        v68 = ((v37 * v66) + (v38 * v65)) + (v36 * v67);
        v69 = !v64 || v68 < v62;
        if (v69 || (v61 + v68) > v63)
        {
          goto LABEL_32;
        }

        v57 = (1.0 / v42) * (((v34 * v66) + (v33 * v65)) + (v35 * v67));
        v80 = v57;
        v81[0] = (1.0 / v42) * v61;
        v54 = (1.0 / v42) * v68;
      }

      v81[1] = v54;
      if (v57 >= 0.0 && v57 <= *(a1 + 88))
      {
        v76 = v11;
        v77 = 1;
        if (*(a1 + 209) == 1)
        {
          if (v57 < *(a1 + 144))
          {
            *(a1 + 96) = v75;
            *(a1 + 112) = v76;
            *(a1 + 116) = 1;
            *(a1 + 120) = v78;
            *(a1 + 136) = v79;
            *(a1 + 144) = v57;
            *(a1 + 148) = *v81;
            if (v57 >= *a4)
            {
              v57 = *a4;
            }

            *a4 = v57;
            *(a1 + 160) = *v23;
            *(a1 + 168) = v23[2];
            *(a1 + 172) = *v24;
            *(a1 + 180) = v24[2];
            *(a1 + 184) = *v25;
            *(a1 + 192) = v25[2];
            *(a1 + 196) = v18;
            *(a1 + 200) = v19;
            *(a1 + 204) = v20;
            *(a1 + 208) = 1;
          }
        }

        else
        {
          v73 = v7;
          v74 = *a4;
          if (!(***(a1 + 16))(*(a1 + 16), &v75))
          {
            return v8;
          }

          if (v74 < *a4)
          {
            *a4 = v74;
            *(a1 + 88) = v74;
          }

          v9 = v72;
          v7 = v73;
        }

        if (!*(*(a1 + 16) + 8))
        {
          return v8;
        }
      }

LABEL_32:
      LODWORD(v11) = v11 + 1;
      v14 += 12;
      v15 += 6;
      --v12;
    }

    while (v12);
    v8 = ++v7 >= v9;
  }

  while (v7 != v9);
  return 1;
}

void RayRTreeCallback<0,true>::~RayRTreeCallback(uint64_t a1)
{
  RayRTreeCallback<0,true>::~RayRTreeCallback(a1);

  JUMPOUT(0x1E6906520);
}

BOOL RayRTreeCallback<0,true>::processResults(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v72 = 0uLL;
  v73 = -1;
  v74 = 0;
  v76 = 0;
  v75 = 0uLL;
  if (!a2)
  {
    goto LABEL_47;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0.0;
  for (i = a2; i != v5; v6 = v5 >= i)
  {
    v9 = *(a3 + 4 * v5);
    v10 = v9 >> 5;
    v11 = ((v9 >> 1) & 0xF) + 1;
    v12 = 3 * (v9 >> 5);
    v13 = 4 * v12;
    v14 = 2 * v12;
    do
    {
      v15 = *(a1 + 32);
      if (*(a1 + 24))
      {
        v16 = v15 + v14;
        v17 = *(v15 + v14);
        v18 = *(v16 + 2);
        v19 = *(v16 + 4);
      }

      else
      {
        v20 = v15 + v13;
        v17 = *(v15 + v13);
        v18 = *(v20 + 4);
        v19 = *(v20 + 8);
      }

      v21 = *(a1 + 40);
      v22 = (v21 + 12 * v17);
      v23 = (v21 + 12 * v18);
      v24 = (v21 + 12 * v19);
      v79 = v17;
      v80 = v18;
      v81 = v19;
      v25 = *(a1 + 84);
      v27 = *v22;
      v26 = v22[1];
      v28 = *v23 - *v22;
      v29 = v23[1] - v26;
      v30 = v22[2];
      v31 = v23[2] - v30;
      v32 = *v24 - *v22;
      v33 = v24[1] - v26;
      v34 = v24[2] - v30;
      v36 = *(a1 + 72);
      v35 = *(a1 + 76);
      v37 = *(a1 + 68);
      v38 = (v36 * v34) - (v35 * v33);
      v39 = (v35 * v32) - (v37 * v34);
      v40 = (v37 * v33) - (v36 * v32);
      v41 = ((v29 * v39) + (v28 * v38)) + (v31 * v40);
      if (*(a1 + 80))
      {
        if (fabsf(v41) < 1.4211e-14)
        {
          goto LABEL_32;
        }

        v42 = *(a1 + 56) - v27;
        v43 = 1.0 / v41;
        v44 = *(a1 + 60) - v26;
        v45 = *(a1 + 64) - v30;
        v46 = v43 * (((v39 * v44) + (v42 * v38)) + (v45 * v40));
        v47 = -v25;
        v48 = v25 + 1.0;
        v49 = v46 >= -v25 && v46 <= v48;
        v50 = (v44 * v31) - (v45 * v29);
        v51 = (v45 * v28) - (v42 * v31);
        v52 = (v42 * v29) - (v44 * v28);
        v53 = v43 * (((v36 * v51) + (v37 * v50)) + (v35 * v52));
        v54 = !v49 || v53 < v47;
        if (v54 || (v46 + v53) > v48)
        {
          goto LABEL_32;
        }

        v56 = v43 * (((v33 * v51) + (v32 * v50)) + (v34 * v52));
        v77 = v56;
        v78[0] = v46;
      }

      else
      {
        if (v41 < 1.4211e-14)
        {
          goto LABEL_32;
        }

        v57 = *(a1 + 56) - v27;
        v58 = *(a1 + 60) - v26;
        v59 = *(a1 + 64) - v30;
        v60 = ((v39 * v58) + (v57 * v38)) + (v59 * v40);
        v61 = -(v25 * v41);
        v62 = v41 + (v25 * v41);
        v63 = v60 >= v61 && v60 <= v62;
        v64 = (v58 * v31) - (v59 * v29);
        v65 = (v59 * v28) - (v57 * v31);
        v66 = (v57 * v29) - (v58 * v28);
        v67 = ((v36 * v65) + (v37 * v64)) + (v35 * v66);
        v68 = !v63 || v67 < v61;
        if (v68 || (v60 + v67) > v62)
        {
          goto LABEL_32;
        }

        v56 = (1.0 / v41) * (((v33 * v65) + (v32 * v64)) + (v34 * v66));
        v77 = v56;
        v78[0] = (1.0 / v41) * v60;
        v53 = (1.0 / v41) * v67;
      }

      v78[1] = v53;
      if (v56 >= 0.0 && v56 <= *(a1 + 88))
      {
        v73 = v10;
        v74 = 1;
        if (*(a1 + 209) == 1)
        {
          if (v56 < *(a1 + 144))
          {
            *(a1 + 96) = v72;
            *(a1 + 112) = v73;
            *(a1 + 116) = 1;
            *(a1 + 120) = v75;
            *(a1 + 136) = v76;
            *(a1 + 144) = v56;
            *(a1 + 148) = *v78;
            if (v56 < v7)
            {
              v7 = v56;
            }

            *(a1 + 160) = *v22;
            *(a1 + 168) = v22[2];
            *(a1 + 172) = *v23;
            *(a1 + 180) = v23[2];
            *(a1 + 184) = *v24;
            *(a1 + 192) = v24[2];
            *(a1 + 196) = v17;
            *(a1 + 200) = v18;
            *(a1 + 204) = v19;
            *(a1 + 208) = 1;
          }
        }

        else
        {
          v71 = v6;
          if (!(***(a1 + 16))(*(a1 + 16), &v72))
          {
            LOBYTE(v6) = v71;
            return v6;
          }

          v6 = v71;
        }

        if (!*(*(a1 + 16) + 8))
        {
          return v6;
        }
      }

LABEL_32:
      LODWORD(v10) = v10 + 1;
      v13 += 12;
      v14 += 6;
      --v11;
    }

    while (v11);
    ++v5;
  }

LABEL_47:
  LOBYTE(v6) = 1;
  return v6;
}

void non-virtual thunk toRayRTreeCallback<0,true>::~RayRTreeCallback(uint64_t a1)
{
  RayRTreeCallback<0,true>::~RayRTreeCallback(a1 - 8);

  JUMPOUT(0x1E6906520);
}

uint64_t RayRTreeCallback<0,true>::~RayRTreeCallback(uint64_t a1)
{
  *a1 = &unk_1F5D223B8;
  *(a1 + 8) = &unk_1F5D223E8;
  if (*(a1 + 208) == 1)
  {
    (***(a1 + 16))(*(a1 + 16), a1 + 96, a1 + 160, a1 + 172, a1 + 184, a1 + 88, a1 + 196);
  }

  return a1;
}

BOOL RayRTreeCallback<1,true>::processResults(uint64_t a1, unsigned int a2, uint64_t a3, float *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v49 = 0uLL;
  v50 = -1;
  v51 = 0;
  v53 = 0;
  v52 = 0uLL;
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = xmmword_1E3116C60;
    v9 = xmmword_1E30DA660;
    v10 = xmmword_1E304F3C0;
    v46 = a2;
    v47 = a3;
LABEL_3:
    v11 = 0;
    v12 = *(a3 + 4 * v6);
    v13 = v12 >> 5;
    v14 = ((v12 >> 1) & 0xF) + 1;
    while (1)
    {
      v15 = v11 + v13;
      v16 = *(a1 + 32);
      if (*(a1 + 24))
      {
        v17 = (v16 + 6 * v15);
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
      }

      else
      {
        v21 = (v16 + 12 * v15);
        v18 = *v21;
        v19 = v21[1];
        v20 = v21[2];
      }

      v22 = *(a1 + 40);
      v23 = v22 + 12 * v18;
      v24 = v22 + 12 * v19;
      v25 = v22 + 12 * v20;
      v56 = v18;
      v57 = v19;
      v58 = v20;
      v26.i64[0] = *v23;
      v26.i64[1] = *(v23 + 8);
      v27.i64[0] = *v24;
      v27.i64[1] = *(v24 + 8);
      v28.i64[0] = *v25;
      v28.i64[1] = *(v25 + 8);
      v29 = vminq_f32(vminq_f32(v26, v27), v28);
      v30 = vmaxq_f32(v26, v27);
      v31 = *(a1 + 88);
      v32 = v31 >= 1.0 ? *(a1 + 88) : 1.0;
      v33 = v32 * 0.001;
      v34 = *(a1 + 224);
      v35 = vsubq_f32(v29, v34);
      v29.f32[0] = v31 + v33;
      v36 = vmulq_f32(vmaxq_f32(vabsq_f32(*(a1 + 256)), v8), vbslq_s8(vcgezq_f32(*(a1 + 256)), v10, v9));
      v37 = vrecpeq_f32(v36);
      v38 = 4;
      do
      {
        v37 = vmulq_f32(v37, vrecpsq_f32(v37, v36));
        --v38;
      }

      while (v38);
      v39 = vaddq_f32(vmaxq_f32(v30, v28), v34);
      v37.i32[3] = 0;
      v40 = *(a1 + 240);
      v41 = vmulq_f32(v37, vsubq_f32(v35, v40));
      v42 = vmulq_f32(v37, vsubq_f32(v39, v40));
      v43 = vminq_f32(v42, v41);
      v44 = vmaxq_f32(v42, v41);
      if (vcgt_f32(vmin_f32(vmin_f32(vdup_lane_s32(*v44.i8, 0), vmin_f32(vdup_lane_s32(*v44.i8, 1), vdup_laneq_s32(v44, 2))), vdup_lane_s32(*v29.f32, 0)), vmax_f32(vmax_f32(vdup_lane_s32(*v43.i8, 0), vmax_f32(vdup_lane_s32(*v43.i8, 1), vdup_laneq_s32(v43, 2))), 0)).u32[0])
      {
        v54 = *(a1 + 88);
        v55 = 0;
        v50 = v11 + v13;
        v51 = 1;
        if (*(a1 + 209) == 1)
        {
          if (v31 < *(a1 + 144))
          {
            *(a1 + 96) = v49;
            *(a1 + 112) = v50;
            *(a1 + 116) = 1;
            *(a1 + 120) = v52;
            *(a1 + 136) = v53;
            *(a1 + 144) = v31;
            *(a1 + 148) = v55;
            if (v31 >= *a4)
            {
              v31 = *a4;
            }

            *a4 = v31;
            *(a1 + 160) = *v23;
            *(a1 + 168) = *(v23 + 8);
            *(a1 + 172) = *v24;
            *(a1 + 180) = *(v24 + 8);
            *(a1 + 184) = *v25;
            *(a1 + 192) = *(v25 + 8);
            *(a1 + 196) = v18;
            *(a1 + 200) = v19;
            *(a1 + 204) = v20;
            *(a1 + 208) = 1;
          }
        }

        else
        {
          v48 = *a4;
          if (!(***(a1 + 16))(*(a1 + 16), &v49))
          {
            return v7;
          }

          if (v48 < *a4)
          {
            *a4 = v48;
            *(a1 + 88) = v48;
          }

          v9 = xmmword_1E30DA660;
          v8 = xmmword_1E3116C60;
          v10 = xmmword_1E304F3C0;
        }

        if (!*(*(a1 + 16) + 8))
        {
          break;
        }
      }

      if (++v11 == v14)
      {
        ++v6;
        a3 = v47;
        v7 = v6 >= v46;
        if (v6 != v46)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }
  }

  else
  {
    return 1;
  }

  return v7;
}

void RayRTreeCallback<1,true>::~RayRTreeCallback(uint64_t a1)
{
  RayRTreeCallback<1,true>::~RayRTreeCallback(a1);

  JUMPOUT(0x1E6906520);
}

BOOL RayRTreeCallback<1,true>::processResults(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v47 = 0uLL;
  v48 = -1;
  v49 = 0;
  v51 = 0;
  v50 = 0uLL;
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0.0;
    v8 = xmmword_1E3116C60;
    v9 = xmmword_1E30DA660;
    v46 = a2;
    v10 = xmmword_1E304F3C0;
LABEL_3:
    v11 = 0;
    v12 = *(a3 + 4 * v5);
    v13 = v12 >> 5;
    v14 = ((v12 >> 1) & 0xF) + 1;
    while (1)
    {
      v15 = v11 + v13;
      v16 = *(a1 + 32);
      if (*(a1 + 24))
      {
        v17 = (v16 + 6 * v15);
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
      }

      else
      {
        v21 = (v16 + 12 * v15);
        v18 = *v21;
        v19 = v21[1];
        v20 = v21[2];
      }

      v22 = *(a1 + 40);
      v23 = v22 + 12 * v18;
      v24 = v22 + 12 * v19;
      v25 = v22 + 12 * v20;
      v54 = v18;
      v55 = v19;
      v56 = v20;
      v26.i64[0] = *v23;
      v26.i64[1] = *(v23 + 8);
      v27.i64[0] = *v24;
      v27.i64[1] = *(v24 + 8);
      v28.i64[0] = *v25;
      v28.i64[1] = *(v25 + 8);
      v29 = vminq_f32(vminq_f32(v26, v27), v28);
      v30 = vmaxq_f32(v26, v27);
      v31 = *(a1 + 88);
      v32 = v31 >= 1.0 ? *(a1 + 88) : 1.0;
      v33 = v32 * 0.001;
      v34 = *(a1 + 224);
      v35 = vsubq_f32(v29, v34);
      v29.f32[0] = v31 + v33;
      v36 = vmulq_f32(vmaxq_f32(vabsq_f32(*(a1 + 256)), v8), vbslq_s8(vcgezq_f32(*(a1 + 256)), v10, v9));
      v37 = vrecpeq_f32(v36);
      v38 = 4;
      do
      {
        v37 = vmulq_f32(v37, vrecpsq_f32(v37, v36));
        --v38;
      }

      while (v38);
      v39 = vaddq_f32(vmaxq_f32(v30, v28), v34);
      v37.i32[3] = 0;
      v40 = *(a1 + 240);
      v41 = vmulq_f32(v37, vsubq_f32(v35, v40));
      v42 = vmulq_f32(v37, vsubq_f32(v39, v40));
      v43 = vminq_f32(v42, v41);
      v44 = vmaxq_f32(v42, v41);
      if (vcgt_f32(vmin_f32(vmin_f32(vdup_lane_s32(*v44.i8, 0), vmin_f32(vdup_lane_s32(*v44.i8, 1), vdup_laneq_s32(v44, 2))), vdup_lane_s32(*v29.f32, 0)), vmax_f32(vmax_f32(vdup_lane_s32(*v43.i8, 0), vmax_f32(vdup_lane_s32(*v43.i8, 1), vdup_laneq_s32(v43, 2))), 0)).u32[0])
      {
        v52 = *(a1 + 88);
        v53 = 0;
        v48 = v11 + v13;
        v49 = 1;
        if (*(a1 + 209) == 1)
        {
          if (v31 < *(a1 + 144))
          {
            *(a1 + 96) = v47;
            *(a1 + 112) = v48;
            *(a1 + 116) = 1;
            *(a1 + 120) = v50;
            *(a1 + 136) = v51;
            *(a1 + 144) = v31;
            *(a1 + 148) = v53;
            if (v31 < v7)
            {
              v7 = v31;
            }

            *(a1 + 160) = *v23;
            *(a1 + 168) = *(v23 + 8);
            *(a1 + 172) = *v24;
            *(a1 + 180) = *(v24 + 8);
            *(a1 + 184) = *v25;
            *(a1 + 192) = *(v25 + 8);
            *(a1 + 196) = v18;
            *(a1 + 200) = v19;
            *(a1 + 204) = v20;
            *(a1 + 208) = 1;
          }
        }

        else
        {
          if (!(***(a1 + 16))(*(a1 + 16), &v47))
          {
            return v6;
          }

          v9 = xmmword_1E30DA660;
          v8 = xmmword_1E3116C60;
          v10 = xmmword_1E304F3C0;
        }

        if (!*(*(a1 + 16) + 8))
        {
          break;
        }
      }

      if (++v11 == v14)
      {
        v6 = ++v5 >= v46;
        if (v5 != v46)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

void non-virtual thunk toRayRTreeCallback<1,true>::~RayRTreeCallback(uint64_t a1)
{
  RayRTreeCallback<1,true>::~RayRTreeCallback(a1 - 8);

  JUMPOUT(0x1E6906520);
}

uint64_t RayRTreeCallback<1,true>::~RayRTreeCallback(uint64_t a1)
{
  *a1 = &unk_1F5D22450;
  *(a1 + 8) = &unk_1F5D22480;
  if (*(a1 + 208) == 1)
  {
    (***(a1 + 16))(*(a1 + 16), a1 + 96, a1 + 160, a1 + 172, a1 + 184, a1 + 88, a1 + 196);
  }

  return a1;
}

uint64_t anonymous namespace::IntersectSphereVsMeshCallback<true>::processHit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7.i64[0] = *a3;
  v7.i64[1] = *(a3 + 8);
  v22 = v7;
  v7.i64[0] = *a4;
  v7.i64[1] = *(a4 + 8);
  v8.i64[0] = *a5;
  v8.i32[2] = *(a5 + 8);
  v21 = v7;
  v8.i64[1] = v8.u32[2];
  v20 = v8;
  v18 = 0;
  v19 = 0;
  v17 = 0uLL;
  v7.i64[0] = *(a1 + 40);
  v7.i64[1] = *(a1 + 48);
  v16 = v7;
  v9 = physx::Gu::distancePointTriangleSquared(&v16, &v22, &v21, &v20, &v19, &v18, &v17).f32[0];
  result = 1;
  if (v9 <= *(a1 + 36))
  {
    *(a1 + 32) = 1;
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = *(v11 + 2);
      if (v12 >= *(v11 + 3))
      {
        *(v11 + 24) = 1;
      }

      else
      {
        v13 = *(v11 + 5);
        if (v13 >= *(v11 + 4))
        {
          v14 = *(a2 + 16);
          v15 = *v11;
          *(v11 + 2) = v12 + 1;
          *(v15 + 4 * v12) = v14;
        }

        else
        {
          *(v11 + 5) = v13 + 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t anonymous namespace::IntersectSphereVsMeshCallback<false>::processHit(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5)
{
  v7 = *(a1 + 16);
  v8 = *(v7 + 8);
  v9 = a3[1];
  v10 = *(v7 + 20);
  v11 = (*a3 * v8) + (v9 * v10);
  v12 = a3[2];
  v13 = *(v7 + 32);
  v14 = *v7;
  v15 = *(v7 + 12);
  v16 = vadd_f32(vmul_n_f32(*v7, *a3), vmul_n_f32(v15, v9));
  v17 = *(v7 + 24);
  *v18.f32 = vadd_f32(v16, vmul_n_f32(v17, v12));
  v18.i64[1] = COERCE_UNSIGNED_INT(v11 + (v12 * v13));
  v42 = v18;
  if (*(a1 + 33))
  {
    v19 = a5;
  }

  else
  {
    v19 = a4;
  }

  v20 = v19[1];
  v21 = v19[2];
  *v22.f32 = vadd_f32(vadd_f32(vmul_n_f32(v14, *v19), vmul_n_f32(v15, v20)), vmul_n_f32(v17, v21));
  v22.f32[2] = ((v8 * *v19) + (v10 * v20)) + (v13 * v21);
  v22.i32[3] = 0;
  if (*(a1 + 33))
  {
    v23 = a4;
  }

  else
  {
    v23 = a5;
  }

  v24 = v23[1];
  v25 = (v8 * *v23) + (v10 * v24);
  v26 = v23[2];
  *v27.f32 = vadd_f32(vadd_f32(vmul_n_f32(v14, *v23), vmul_n_f32(v15, v24)), vmul_n_f32(v17, v26));
  v27.f32[2] = v25 + (v13 * v26);
  v41 = v22;
  v27.i32[3] = 0;
  v40 = v27;
  v38 = 0;
  v39 = 0;
  v37 = 0uLL;
  v28.i64[0] = *(a1 + 40);
  v28.i64[1] = *(a1 + 48);
  v36 = v28;
  v29 = physx::Gu::distancePointTriangleSquared(&v36, &v42, &v41, &v40, &v39, &v38, &v37).f32[0];
  result = 1;
  if (v29 <= *(a1 + 36))
  {
    *(a1 + 32) = 1;
    v31 = *(a1 + 24);
    if (v31)
    {
      v32 = *(v31 + 2);
      if (v32 >= *(v31 + 3))
      {
        *(v31 + 24) = 1;
      }

      else
      {
        v33 = *(v31 + 5);
        if (v33 >= *(v31 + 4))
        {
          v34 = *(a2 + 16);
          v35 = *v31;
          *(v31 + 2) = v32 + 1;
          *(v35 + 4 * v32) = v34;
        }

        else
        {
          *(v31 + 5) = v33 + 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t anonymous namespace::IntersectBoxVsMeshCallback<true>::processHit(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5)
{
  v7 = *(a1 + 16);
  v8 = *(v7 + 8);
  v9 = a3[1];
  v10 = *(v7 + 20);
  v11 = a3[2];
  v12 = *(v7 + 32);
  v13 = ((*a3 * v8) + (v9 * v10)) + (v11 * v12);
  v14 = *v7;
  v15 = *(v7 + 12);
  v16 = vadd_f32(vmul_n_f32(*v7, *a3), vmul_n_f32(v15, v9));
  v17 = *(v7 + 24);
  *v33.f32 = vadd_f32(v16, vmul_n_f32(v17, v11));
  v33.f32[2] = v13;
  v18 = a4[1];
  v19 = a4[2];
  v20 = ((v8 * *a4) + (v10 * v18)) + (v12 * v19);
  *v32.f32 = vadd_f32(vadd_f32(vmul_n_f32(v14, *a4), vmul_n_f32(v15, v18)), vmul_n_f32(v17, v19));
  v32.f32[2] = v20;
  v21 = a5[1];
  v22 = (v8 * *a5) + (v10 * v21);
  v23 = a5[2];
  *v31.f32 = vadd_f32(vadd_f32(vmul_n_f32(v14, *a5), vmul_n_f32(v15, v21)), vmul_n_f32(v17, v23));
  v31.f32[2] = v22 + (v12 * v23);
  v24 = physx::Gu::intersectTriangleBox_Unsafe((a1 + 100), (a1 + 84), &v33, &v32, &v31);
  result = 1;
  if (v24)
  {
    *(a1 + 32) = 1;
    v26 = *(a1 + 24);
    if (v26)
    {
      v27 = *(v26 + 2);
      if (v27 >= *(v26 + 3))
      {
        *(v26 + 24) = 1;
      }

      else
      {
        v28 = *(v26 + 5);
        if (v28 >= *(v26 + 4))
        {
          v29 = *(a2 + 16);
          v30 = *v26;
          *(v26 + 2) = v27 + 1;
          *(v30 + 4 * v27) = v29;
        }

        else
        {
          *(v26 + 5) = v28 + 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t anonymous namespace::IntersectBoxVsMeshCallback<false>::processHit(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5)
{
  v7 = *(a1 + 44);
  v8 = a3[1];
  v9 = *(a1 + 56);
  v10 = a3[2];
  v11 = *(a1 + 68);
  v12 = *(a1 + 80);
  v13 = (((*a3 * v7) + (v8 * v9)) + (v10 * v11)) + v12;
  v14 = *(a1 + 36);
  v15 = *(a1 + 48);
  v16 = vadd_f32(vmul_n_f32(v14, *a3), vmul_n_f32(v15, v8));
  v17 = *(a1 + 60);
  v18 = vadd_f32(v16, vmul_n_f32(v17, v10));
  v19 = *(a1 + 72);
  *v38.f32 = vadd_f32(v18, v19);
  v38.f32[2] = v13;
  v20 = *(a1 + 33) == 0;
  if (*(a1 + 33))
  {
    v21 = a5;
  }

  else
  {
    v21 = a4;
  }

  v22 = v21[1];
  v23 = v21[2];
  v24 = v12 + (((v7 * *v21) + (v9 * v22)) + (v11 * v23));
  *v37.f32 = vadd_f32(v19, vadd_f32(vadd_f32(vmul_n_f32(v14, *v21), vmul_n_f32(v15, v22)), vmul_n_f32(v17, v23)));
  v37.f32[2] = v24;
  if (v20)
  {
    v25 = a5;
  }

  else
  {
    v25 = a4;
  }

  v26 = v25[1];
  v27 = (v7 * *v25) + (v9 * v26);
  v28 = v25[2];
  *v36.f32 = vadd_f32(v19, vadd_f32(vadd_f32(vmul_n_f32(v14, *v25), vmul_n_f32(v15, v26)), vmul_n_f32(v17, v28)));
  v36.f32[2] = v12 + (v27 + (v11 * v28));
  v29 = physx::Gu::intersectTriangleBox_Unsafe((a1 + 100), (a1 + 84), &v38, &v37, &v36);
  result = 1;
  if (v29)
  {
    *(a1 + 32) = 1;
    v31 = *(a1 + 24);
    if (v31)
    {
      v32 = *(v31 + 2);
      if (v32 >= *(v31 + 3))
      {
        *(v31 + 24) = 1;
      }

      else
      {
        v33 = *(v31 + 5);
        if (v33 >= *(v31 + 4))
        {
          v34 = *(a2 + 16);
          v35 = *v31;
          *(v31 + 2) = v32 + 1;
          *(v35 + 4 * v32) = v34;
        }

        else
        {
          *(v31 + 5) = v33 + 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t anonymous namespace::IntersectCapsuleVsMeshCallback<true>::processHit(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5)
{
  v7 = a3[1];
  v8 = *a3 - *a4;
  v9 = v7 - a4[1];
  v10 = a3[2];
  v11 = *a3 - *a5;
  v12 = v10 - a4[2];
  v13 = v7 - a5[1];
  v14 = v10 - a5[2];
  v22[0] = (v9 * v14) - (v12 * v13);
  v22[1] = (v12 * v11) - (v8 * v14);
  v22[2] = (v8 * v13) - (v9 * v11);
  v15 = physx::Gu::intersectCapsuleTriangle(v22, a3, a4, a5, (a1 + 36), (a1 + 64));
  result = 1;
  if (v15)
  {
    *(a1 + 32) = 1;
    v17 = *(a1 + 24);
    if (v17)
    {
      v18 = *(v17 + 2);
      if (v18 >= *(v17 + 3))
      {
        *(v17 + 24) = 1;
      }

      else
      {
        v19 = *(v17 + 5);
        if (v19 >= *(v17 + 4))
        {
          v20 = *(a2 + 16);
          v21 = *v17;
          *(v17 + 2) = v18 + 1;
          *(v21 + 4 * v18) = v20;
        }

        else
        {
          *(v17 + 5) = v19 + 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t anonymous namespace::IntersectCapsuleVsMeshCallback<false>::processHit(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5)
{
  v7 = *(a1 + 16);
  v8 = *(v7 + 8);
  v9 = a3[1];
  v10 = *(v7 + 20);
  v11 = a3[2];
  v12 = *(v7 + 32);
  v13 = ((*a3 * v8) + (v9 * v10)) + (v11 * v12);
  v14 = *v7;
  v15 = *(v7 + 12);
  v16 = vadd_f32(vmul_n_f32(*v7, *a3), vmul_n_f32(v15, v9));
  v17 = *(v7 + 24);
  v18 = vadd_f32(v16, vmul_n_f32(v17, v11));
  v53 = v18;
  v54 = v13;
  _ZF = *(a1 + 33) == 0;
  if (*(a1 + 33))
  {
    v20 = a5;
  }

  else
  {
    v20 = a4;
  }

  v21 = v20[1];
  v22 = v20[2];
  v23 = ((v8 * *v20) + (v10 * v21)) + (v12 * v22);
  v24 = vadd_f32(vadd_f32(vmul_n_f32(v14, *v20), vmul_n_f32(v15, v21)), vmul_n_f32(v17, v22));
  v51 = v24;
  v52 = v23;
  if (_ZF)
  {
    v25 = a5;
  }

  else
  {
    v25 = a4;
  }

  v26 = v25[1];
  v27 = (v8 * *v25) + (v10 * v26);
  v28 = v25[2];
  _D3 = vadd_f32(vadd_f32(vmul_n_f32(v14, *v25), vmul_n_f32(v15, v26)), vmul_n_f32(v17, v28));
  v49 = _D3;
  v50 = v27 + (v12 * v28);
  _D4 = vsub_f32(v18, v24);
  _S1 = v13 - v50;
  v32 = vdup_lane_s32(v18, 0);
  v18.f32[0] = v13;
  v33 = vsub_f32(v32, vzip1_s32(_D3, v24));
  _D3.f32[0] = v23;
  v34 = vsub_f32(v18, _D3);
  __asm { FMLA            S3, S1, V4.S[1] }

  v38 = vrev64_s32(v33);
  v39 = vneg_f32(__PAIR64__(_D4.u32[1], v38.u32[0]));
  v38.f32[0] = _S1;
  v47 = _D3.i32[0];
  v48 = vmla_f32(vmul_f32(v38, v39), v34, v33);
  v40 = physx::Gu::intersectCapsuleTriangle(&v47, &v53, &v51, &v49, (a1 + 36), (a1 + 64));
  result = 1;
  if (v40)
  {
    *(a1 + 32) = 1;
    v42 = *(a1 + 24);
    if (v42)
    {
      v43 = *(v42 + 2);
      if (v43 >= *(v42 + 3))
      {
        *(v42 + 24) = 1;
      }

      else
      {
        v44 = *(v42 + 5);
        if (v44 >= *(v42 + 4))
        {
          v45 = *(a2 + 16);
          v46 = *v42;
          *(v42 + 2) = v43 + 1;
          *(v46 + 4 * v43) = v45;
        }

        else
        {
          *(v42 + 5) = v44 + 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void physx::PxMeshQuery::getTriangle(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int *a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a1 + 40);
  if (a6 && !*(v14 + 112))
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuMeshQuery.cpp", 111, "Adjacency information not created. Set buildTriangleAdjacencies on Cooking params.", a6, a7, a8, v50.i8[0]);
  }

  physx::operator*(a2, (a1 + 4), &v50);
  v15 = (*(a1 + 4) * *(a1 + 8)) * *(a1 + 12);
  v16 = *(v14 + 48);
  if ((*(v14 + 92) & 2) != 0)
  {
    v21 = (v16 + 6 * a3);
    v18 = *v21;
    v19 = v21[1];
    v20 = v21[2];
  }

  else
  {
    v17 = (v16 + 12 * a3);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
  }

  if (v15 >= 0.0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v19;
  }

  if (v15 < 0.0)
  {
    v19 = v20;
  }

  v23 = *(v14 + 40);
  v24 = (v23 + 12 * v18);
  v25 = v51;
  v26 = v24[1];
  v27 = v53;
  v28 = v24[2];
  v29 = v55;
  v30 = v57;
  v31 = (((*v24 * v51) + (v26 * v53)) + (v28 * v55)) + v57;
  v32 = v50;
  v33 = v52;
  v34 = vadd_f32(vmul_n_f32(v50, *v24), vmul_n_f32(v52, v26));
  v35 = v54;
  v36 = vadd_f32(v34, vmul_n_f32(v54, v28));
  v37 = v56;
  *a4 = vadd_f32(v36, v56);
  *(a4 + 8) = v31;
  v38 = (v23 + 12 * v19);
  v39 = v38[1];
  v40 = v38[2];
  v41 = v30 + (((v25 * *v38) + (v27 * v39)) + (v29 * v40));
  *(a4 + 12) = vadd_f32(v37, vadd_f32(vadd_f32(vmul_n_f32(v32, *v38), vmul_n_f32(v33, v39)), vmul_n_f32(v35, v40)));
  *(a4 + 20) = v41;
  v42 = (v23 + 12 * v22);
  v43 = v42[1];
  v44 = (v25 * *v42) + (v27 * v43);
  v45 = v42[2];
  *(a4 + 24) = vadd_f32(v37, vadd_f32(vadd_f32(vmul_n_f32(v32, *v42), vmul_n_f32(v33, v43)), vmul_n_f32(v35, v45)));
  *(a4 + 32) = v30 + (v44 + (v29 * v45));
  if (a5)
  {
    *a5 = v18;
    a5[1] = v19;
    a5[2] = v22;
  }

  if (a6)
  {
    v46 = *(v14 + 112);
    if (v46)
    {
      v47 = 3 * a3 + 2;
      if (v15 >= 0.0)
      {
        v48 = 3 * a3;
      }

      else
      {
        v48 = 3 * a3 + 2;
      }

      if (v15 < 0.0)
      {
        v47 = 3 * a3;
      }

      *a6 = *(v46 + 4 * v48);
      a6[1] = *(v46 + 4 * (3 * a3 + 1));
      v49 = *(v46 + 4 * v47);
    }

    else
    {
      *a6 = -1;
      v49 = -1;
    }

    a6[2] = v49;
  }
}

BOOL physx::PxMeshQuery::getTriangle(float32x2_t *a1, float *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a1[1];
  v16 = a1;
  v6 = a1[3].f32[0];
  __asm { FMOV            V2.2S, #1.0 }

  v13 = vrev64_s32(vdiv_f32(_D2, a1[2]));
  v14 = 1.0 / v6;
  return physx::Gu::HeightFieldUtil::getTriangle(&v13, a2, a4, a5, a6, a3, 1, 1);
}

uint64_t physx::PxMeshQuery::findOverlapTriangleMesh(float *a1, float32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, _BYTE *a8)
{
  v60 = a5;
  v61 = 0;
  v62 = a6;
  v63 = a7;
  v64 = 0;
  v65 = 0;
  v10 = *(a3 + 40);
  v11 = *a1;
  if (!*a1)
  {
    *&v52 = a2[1].i64[0];
    DWORD2(v52) = a2[1].i32[2];
    *(&v52 + 3) = a1[1];
    v54 = v52;
    v33 = *(v10 + 8) - 3;
    v34 = physx::Gu::gMidphaseSphereOverlapTable;
    goto LABEL_7;
  }

  if (LODWORD(v11) == 2)
  {
    v35 = a2->f32[0];
    v36 = a2->f32[1];
    v37 = v35 + v35;
    v39 = a2->f32[2];
    v38 = a2->f32[3];
    v40 = v38 + v38;
    v41 = ((v38 * (v38 + v38)) + -1.0) + (v35 * (v35 + v35));
    v42 = (v37 * v36) + (v39 * (v38 + v38));
    v43 = (v37 * v39) - (v36 * v40);
    v45 = *(a1 + 1);
    v44 = a1[2];
    v46 = v41 * v44;
    v47 = v44 * v42;
    v48 = v43 * v44;
    v49 = a2[1].f32[0];
    v50 = a2[1].f32[1];
    v51 = a2[1].f32[2];
    *&v54 = v49 + v46;
    *(&v54 + 1) = v50 + v47;
    *(&v54 + 2) = v48 + v51;
    *(&v54 + 3) = v49 - v46;
    v55 = v50 - v47;
    *&v56 = v51 - v48;
    HIDWORD(v56) = v45;
    v33 = *(v10 + 8) - 3;
    v34 = &physx::Gu::gMidphaseCapsuleOverlapTable;
    goto LABEL_7;
  }

  if (LODWORD(v11) == 3)
  {
    v12 = vdup_lane_s32(*a2->f32, 1);
    v13 = vdup_laneq_s32(*a2, 2);
    v14 = vdup_laneq_s32(*a2, 3);
    _Q4 = vaddq_f32(*a2, *a2);
    v16 = vdup_lane_s32(vmul_f32(*a2->f32, *_Q4.f32), 0);
    v17 = vmul_lane_f32(v12, *_Q4.f32, 1);
    v18 = vmul_laneq_f32(v13, _Q4, 2);
    v19 = vmul_n_f32(v12, _Q4.f32[0]);
    v20 = vmul_n_f32(v13, _Q4.f32[0]);
    v21 = vmul_n_f32(v14, _Q4.f32[0]);
    v22 = vmul_lane_f32(v13, *_Q4.f32, 1);
    v23 = vmul_lane_f32(v14, *_Q4.f32, 1);
    v24 = vmul_laneq_f32(v14, _Q4, 2);
    __asm { FMOV            V4.2S, #1.0 }

    v29 = vsub_f32(*_Q4.f32, v16);
    LODWORD(v30) = vsub_f32(v20, v23).u32[0];
    LODWORD(v31) = vadd_f32(v22, v21).u32[0];
    HIDWORD(v30) = vsub_f32(v19, v24).i32[1];
    *&v54 = (1.0 - v17.f32[1]) - v18.f32[1];
    DWORD1(v54) = vadd_f32(v19, v24).u32[0];
    *(&v54 + 1) = v30;
    LODWORD(v55) = vsub_f32(v29, v18).u32[0];
    HIDWORD(v31) = vadd_f32(v20, v23).i32[1];
    v56 = v31;
    v57 = vzip1_s32(vsub_f32(v22, v21), vsub_f32(v29, v17));
    *&v32 = a2[1].i64[0];
    DWORD2(v32) = a2[1].i32[2];
    *(&v32 + 3) = a1[1];
    v58 = v32;
    v59 = *(a1 + 1);
    v33 = *(v10 + 8) - 3;
    v34 = physx::Gu::gMidphaseBoxOverlapTable;
LABEL_7:
    (v34[v33])(&v54);
  }

  *a8 = v65;
  return v61;
}

uint64_t physx::PxMeshQuery::findOverlapHeightField(uint64_t a1, float *a2, float32x2_t *a3, float *a4, uint64_t a5, int a6, int a7, _BYTE *a8, double a9, double a10, double a11)
{
  v15 = *a4;
  v16 = a4[1];
  v18 = a4[2];
  v17 = a4[3];
  v20 = a2[4];
  v19 = a2[5];
  v22 = a4[4];
  v21 = a4[5];
  v23 = a2[6];
  v24 = a4[6];
  v26 = a2[2];
  v25 = a2[3];
  v28 = *a2;
  v27 = a2[1];
  *&a11 = (((v17 * *a2) - (*a4 * v25)) - (v16 * v26)) + (v27 * v18);
  v29 = ((v17 * v27) - (v16 * v25)) - (v18 * *a2);
  v30 = ((v17 * v26) - (v18 * v25)) - (*a4 * v27);
  v31 = ((*a4 * *a2) + (v17 * v25)) + (v16 * v27);
  v32 = *a1;
  v33 = 0.0;
  if (*a1 <= 1)
  {
    if (v32 != -1)
    {
      if (!v32)
      {
        v33 = *(a1 + 4);
        v34 = v33;
        v35 = v33;
        goto LABEL_9;
      }

      if (v32 != 1)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  if ((v32 - 4) < 4)
  {
LABEL_7:
    *a8 = 0;
LABEL_8:
    v34 = 0.0;
    v35 = 0.0;
    goto LABEL_9;
  }

  if (v32 == 3)
  {
    v33 = *(a1 + 4);
    v34 = *(a1 + 8);
    v35 = *(a1 + 12);
  }

  else
  {
    v34 = 0.0;
    v35 = 0.0;
    if (v32 == 2)
    {
      v34 = *(a1 + 4);
      v33 = *(a1 + 8) + v34;
      v35 = v34;
    }
  }

LABEL_9:
  v36 = -v15;
  v37 = -v16;
  v38 = -v18;
  *v13.i32 = v29 + (v26 * v15);
  *v12.i32 = v30 + (v28 * v16);
  *v11.i32 = v31 + (v18 * v26);
  if (*&a11 == 0.0 && *v13.i32 == 0.0 && *v12.i32 == 0.0)
  {
    v39 = 1;
    v40 = v33;
    v41 = v34;
    v42 = v35;
  }

  else
  {
    v39 = 0;
    v92 = v24;
    v43 = v22;
    v44 = v21;
    v45 = v19;
    v46 = v20;
    v47 = *v13.i32 * (*v13.i32 + *v13.i32);
    v48 = *v12.i32 * (*v12.i32 + *v12.i32);
    v49 = (*&a11 + *&a11) * *v13.i32;
    v50 = *v12.i32 * (*&a11 + *&a11);
    v51 = *v11.i32 * (*&a11 + *&a11);
    v52 = *v12.i32 * (*v13.i32 + *v13.i32);
    v53 = *v11.i32 * (*v13.i32 + *v13.i32);
    v54 = *v11.i32 * (*v12.i32 + *v12.i32);
    v55 = v49 + v54;
    v56 = v50 - v53;
    v57 = v49 - v54;
    v58 = 1.0 - (*&a11 * (*&a11 + *&a11));
    v59 = (v51 + v52) * v34;
    v60 = (v52 - v51) * v35;
    v40 = (fabsf(((1.0 - v47) - v48) * v33) + fabsf(v57 * v34)) + fabsf((v50 + v53) * v35);
    v41 = (fabsf(v55 * v33) + fabsf((v58 - v48) * v34)) + fabsf(v60);
    v61 = fabsf((v58 - v47) * v35);
    v20 = v46;
    v19 = v45;
    v21 = v44;
    v22 = v43;
    v24 = v92;
    v42 = (fabsf(v56 * v33) + fabsf(v59)) + v61;
  }

  v62 = (v23 - v24) + (v23 - v24);
  v63 = (v20 - v22) + (v20 - v22);
  v64 = (v19 - v21) + (v19 - v21);
  v65 = ((v64 * v37) + (v36 * v63)) + (v38 * v62);
  v66 = (v17 * v17) + -0.5;
  v67 = ((v17 * ((v16 * v63) + (v36 * v64))) + (v62 * v66)) + (v38 * v65);
  v68 = ((v17 * ((v15 * v62) + (v38 * v63))) + (v64 * v66)) + (v37 * v65);
  v69 = ((v17 * ((v18 * v64) + (v37 * v62))) + (v63 * v66)) + (v36 * v65);
  v117[0] = v69 - v40;
  v117[1] = v68 - v41;
  v117[2] = v67 - v42;
  v117[3] = v69 + v40;
  v70.i64[0] = __PAIR64__(v13.u32[0], LODWORD(a11));
  v117[4] = v68 + v41;
  v117[5] = v67 + v42;
  v70.i64[1] = __PAIR64__(v11.u32[0], v12.u32[0]);
  v115 = a3[1];
  v116 = a3;
  v71 = a3[3].f32[0];
  __asm { FMOV            V18.2S, #1.0 }

  v113 = vrev64_s32(vdiv_f32(_D18, a3[2]));
  v114 = 1.0 / v71;
  v94 = 0;
  v95 = a6;
  v96 = a7;
  v97 = 0;
  v98 = 0;
  v93[0] = &unk_1F5D226B0;
  v93[1] = a5;
  v99 = &v113;
  v112 = v39;
  v77 = vdup_lane_s32(v13, 0);
  v78 = vdup_lane_s32(v12, 0);
  v79 = vdup_lane_s32(v11, 0);
  v80 = vaddq_f32(v70, v70);
  v81 = vdup_lane_s32(vmul_f32(*&a11, *v80.f32), 0);
  v82 = vmul_lane_f32(v77, *v80.f32, 1);
  v83 = vmul_laneq_f32(v78, v80, 2);
  v84 = vmul_n_f32(v77, v80.f32[0]);
  v85 = vmul_n_f32(v78, v80.f32[0]);
  v86 = vmul_n_f32(v79, v80.f32[0]);
  v87 = vmul_lane_f32(v78, *v80.f32, 1);
  v88 = vmul_lane_f32(v79, *v80.f32, 1);
  *v80.f32 = vmul_laneq_f32(v79, v80, 2);
  v89 = vsub_f32(_D18, v81);
  v79.i32[0] = vsub_f32(v85, v88).u32[0];
  LODWORD(v90) = vadd_f32(v87, v86).u32[0];
  v100 = (1.0 - v82.f32[1]) - v83.f32[1];
  v101 = vadd_f32(v84, *v80.f32).u32[0];
  v79.i32[1] = vsub_f32(v84, *&v80).i32[1];
  v102 = v79;
  v103 = vsub_f32(v89, v83).u32[0];
  HIDWORD(v90) = vadd_f32(v85, v88).i32[1];
  v104 = v90;
  v105 = vzip1_s32(vsub_f32(v87, v86), vsub_f32(v89, v82));
  v106 = v69;
  v107 = v68;
  v108 = v67;
  v109 = v33;
  v110 = v34;
  v111 = v35;
  physx::Gu::HeightFieldUtil::overlapAABBTriangles(&v113, a4, v117, 0, v93);
  *a8 = v98;
  return v94;
}

uint64_t physx::PxMeshQuery::sweep(float32x2_t *a1, int *a2, int32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, _WORD *a7, unsigned int *a8, double a9, double a10, double a11, double a12, double a13, double a14, float32x4_t a15, __n128 a16, unsigned __int8 a17)
{
  LODWORD(a11) = 1287568416;
  *&a9 = fminf(*&a9, 100000000.0);
  v17 = *a2;
  if (*a2 == 3)
  {
    if ((*a7 & 0x100) != 0)
    {
      LOWORD(v21[0]) = *a7;
      return physx::Gu::sweepBoxTriangles_Precise(a4, a5, a17, a2, a3, a1, a6, a8, *&a9, a10, a11, a12, a13, a14, *a15.i64, a16, v21);
    }

    else
    {
      LOWORD(v21[0]) = *a7;
      return physx::Gu::sweepBoxTriangles(a4, a5, a17, a2, a3, a1, a6, a8, a9, *&a10, a11, a12, a13, a14, a15, v21);
    }
  }

  else if (v17 == 2)
  {
    LOWORD(v21[0]) = *a7;
    return physx::Gu::sweepCapsuleTriangles(a4, a5, a17, a2, a3, a1, a6, a8, *&a9, *&a10, v21);
  }

  else if (v17)
  {
    return 0;
  }

  else
  {
    v18 = a2[1];
    v21[0] = 2;
    v21[1] = v18;
    v21[2] = 0;
    v20 = *a7;
    return physx::Gu::sweepCapsuleTriangles(a4, a5, a17, v21, a3, a1, a6, a8, *&a9, *&a10, &v20);
  }
}

uint64_t GeomOverlapCallback_SphereMesh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3 = *(a2 + 16);
  DWORD2(v3) = *(a2 + 24);
  HIDWORD(v3) = *(a1 + 4);
  v5 = v3;
  return (physx::Gu::gMidphaseSphereOverlapTable[*(*(a3 + 40) + 8) - 3])(&v5);
}

uint64_t GeomOverlapCallback_CapsuleMesh(uint64_t a1, float *a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = *a2;
  v6 = a2[1];
  v7 = v5 + v5;
  v9 = a2[2];
  v8 = a2[3];
  v10 = v8 + v8;
  v11 = ((v8 * (v8 + v8)) + -1.0) + (v5 * (v5 + v5));
  v12 = (v7 * v6) + (v9 * (v8 + v8));
  v13 = (v7 * v9) - (v6 * v10);
  v15 = *(a1 + 4);
  v14 = *(a1 + 8);
  v16 = v11 * v14;
  v17 = v14 * v12;
  v18 = v13 * v14;
  v19 = a2[4];
  v20 = a2[5];
  v21 = a2[6];
  v23[0] = v19 + v16;
  v23[1] = v20 + v17;
  v23[2] = v18 + v21;
  v23[3] = v19 - v16;
  v23[4] = v20 - v17;
  v23[5] = v21 - v18;
  v23[6] = v15;
  return (*(&physx::Gu::gMidphaseCapsuleOverlapTable + *(v4 + 8) - 3))(v23);
}

uint64_t GeomOverlapCallback_BoxMesh(uint64_t a1, int32x2_t *a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = vdup_lane_s32(*a2, 1);
  v6 = vdup_laneq_s32(*a2->i8, 2);
  v7 = vdup_laneq_s32(*a2->i8, 3);
  _Q4 = vaddq_f32(*a2->i8, *a2->i8);
  v9 = vdup_lane_s32(vmul_f32(*a2, *_Q4.f32), 0);
  v10 = vmul_lane_f32(v5, *_Q4.f32, 1);
  v11 = vmul_laneq_f32(v6, _Q4, 2);
  v12 = vmul_n_f32(v5, _Q4.f32[0]);
  v13 = vmul_n_f32(v6, _Q4.f32[0]);
  v14 = vmul_n_f32(v7, _Q4.f32[0]);
  v15 = vmul_lane_f32(v6, *_Q4.f32, 1);
  v16 = vmul_lane_f32(v7, *_Q4.f32, 1);
  v17 = vmul_laneq_f32(v7, _Q4, 2);
  __asm { FMOV            V4.2S, #1.0 }

  v22 = vsub_f32(*_Q4.f32, v9);
  LODWORD(v23) = vsub_f32(v13, v16).u32[0];
  LODWORD(v24) = vadd_f32(v15, v14).u32[0];
  v27[0] = (1.0 - v10.f32[1]) - v11.f32[1];
  LODWORD(v27[1]) = vadd_f32(v12, v17).u32[0];
  HIDWORD(v23) = vsub_f32(v12, v17).i32[1];
  v28 = v23;
  v29 = vsub_f32(v22, v11).u32[0];
  HIDWORD(v24) = vadd_f32(v13, v16).i32[1];
  *&v25 = a2[2];
  DWORD2(v25) = a2[3].i32[0];
  v30 = v24;
  v31 = vzip1_s32(vsub_f32(v15, v14), vsub_f32(v22, v10));
  HIDWORD(v25) = *(a1 + 4);
  v32 = v25;
  v33 = *(a1 + 8);
  return (physx::Gu::gMidphaseBoxOverlapTable[*(v4 + 8) - 3])(v27);
}

uint64_t GeomOverlapCallback_ConvexMesh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v238 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 4) == 1.0 && *(a1 + 8) == 1.0 && *(a1 + 12) == 1.0;
  v9 = *(a3 + 4) == 1.0 && *(a3 + 8) == 1.0 && *(a3 + 12) == 1.0;
  v10 = *(a1 + 32);
  v11 = *(a3 + 40);
  v12 = xmmword_1E3047670;
  *v202 = xmmword_1E3047670;
  *&v202[16] = xmmword_1E3047670;
  v13 = xmmword_1E3060D60;
  v14 = xmmword_1E3047680;
  v203 = xmmword_1E3060D60;
  v204 = xmmword_1E3047680;
  v205 = 0x3F80000000000000;
  v206 = 0;
  if (!v8)
  {
    physx::Cm::FastVertex2ShapeScaling::init(v202, (a1 + 4), (a1 + 16));
    v13 = xmmword_1E3060D60;
    v14 = xmmword_1E3047680;
    v12 = xmmword_1E3047670;
  }

  v197[0] = v12;
  v197[1] = v12;
  v198 = v13;
  v199 = v14;
  v200 = 0x3F80000000000000;
  v201 = 0;
  if ((v9 & 1) == 0)
  {
    physx::Cm::FastVertex2ShapeScaling::init(v197, (a3 + 4), (a3 + 16));
  }

  v15 = *a2;
  v16 = *(a2 + 4);
  v17 = *(a2 + 8);
  v18 = *(a2 + 12);
  v19 = v16 + v16;
  v20 = v17 + v17;
  v21 = v16 * (v16 + v16);
  v22 = v17 * (v17 + v17);
  v23 = (v15 + v15) * v16;
  v24 = (v15 + v15) * v17;
  v25 = (v15 + v15) * v18;
  v26 = v19 * v17;
  v27 = v19 * v18;
  v28 = v20 * v18;
  v194[0] = (1.0 - v21) - v22;
  v194[1] = v23 + v28;
  v29 = 1.0 - (v15 * (v15 + v15));
  v194[2] = v24 - v27;
  v194[3] = v23 - v28;
  v194[4] = v29 - v22;
  v194[5] = v26 + v25;
  v194[6] = v24 + v27;
  v194[7] = v26 - v25;
  v195 = *(a2 + 16);
  v30 = *(a2 + 24);
  v194[8] = v29 - v21;
  v196 = v30;
  v31 = *a4;
  v32 = *(a4 + 4);
  v33 = *(a4 + 8);
  v34 = *(a4 + 12);
  v35 = v32 + v32;
  v36 = v33 + v33;
  v37 = v32 * (v32 + v32);
  v38 = v33 * (v33 + v33);
  v39 = (v31 + v31) * v32;
  v40 = (v31 + v31) * v33;
  v41 = (v31 + v31) * v34;
  v42 = v35 * v33;
  v43 = v35 * v34;
  v44 = v36 * v34;
  v191[0] = (1.0 - v37) - v38;
  v191[1] = v39 + v44;
  v45 = 1.0 - (v31 * (v31 + v31));
  v191[2] = v40 - v43;
  v191[3] = v39 - v44;
  v191[4] = v45 - v38;
  v191[5] = v42 + v41;
  v191[6] = v40 + v43;
  v191[7] = v42 - v41;
  v191[8] = v45 - v37;
  v192 = *(a4 + 16);
  v193 = *(a4 + 24);
  v46 = *(v10 + 32);
  v47 = *(v10 + 36);
  v48 = *(v10 + 40);
  v49 = ((v46 * *&v202[8]) + (v47 * *&v202[20])) + (v48 * *&v203);
  v50 = *(v10 + 44);
  v51 = *(v10 + 48);
  v52 = *(v10 + 52);
  v53 = (fabsf(*&v202[8] * v50) + fabsf(*&v202[20] * v51)) + fabsf(*&v203 * v52);
  v54 = v49 - v53;
  v55 = v49 + v53;
  v56 = vadd_f32(vadd_f32(vmul_n_f32(*v202, v46), vmul_n_f32(*&v202[12], v47)), vmul_n_f32(*&v202[24], v48));
  v57 = vadd_f32(vadd_f32(vabs_f32(vmul_n_f32(*v202, v50)), vabs_f32(vmul_n_f32(*&v202[12], v51))), vabs_f32(vmul_n_f32(*&v202[24], v52)));
  v187 = vsub_f32(v56, v57);
  v188 = v54;
  v189 = vadd_f32(v56, v57);
  v190 = v55;
  physx::Gu::computeHullOBB(&v173, &v187, v194, v191, v197, v9, 0.0);
  v208 = 2;
  v207 = &unk_1F5D22720;
  v236 = 0;
  if ((v9 & 1) == 0)
  {
    *&v60 = *&v197[0];
    *(&v60 + 1) = DWORD2(v197[0]);
    *&v61 = *(v197 + 12);
    *(&v61 + 1) = DWORD1(v197[1]);
    *&v62 = *(&v197[1] + 1);
    *(&v62 + 1) = v198;
    v233 = v60;
    v234 = v61;
    v235 = v62;
  }

  v63 = *(a1 + 4);
  v64 = v63;
  v64.i32[3] = 0;
  v65 = *(a1 + 16);
  __asm { FMOV            V0.2S, #1.0 }

  v71 = xmmword_1E3047680;
  v72 = xmmword_1E3047670;
  if (_ZF && v63.f32[1] == 1.0)
  {
    v73 = *(v10 + 72);
    v74 = *(v10 + 71);
    v75 = *(v10 + 70);
    v76 = *(v10 + 92);
    v77 = *(v10 + 96);
    if (v63.f32[2] == 1.0)
    {
      v78 = xmmword_1E30476A0;
      v79 = 0uLL;
      v80 = xmmword_1E3047670;
      v81 = xmmword_1E3047680;
      v82 = xmmword_1E30476A0;
      goto LABEL_27;
    }
  }

  else
  {
    v73 = *(v10 + 72);
    v74 = *(v10 + 71);
    v75 = *(v10 + 70);
    v76 = *(v10 + 92);
    v77 = *(v10 + 96);
  }

  v83 = vrecpeq_f32(v64);
  v84 = 4;
  do
  {
    v83 = vmulq_f32(v83, vrecpsq_f32(v83, v64));
    --v84;
  }

  while (v84);
  *v85.f32 = vdup_lane_s32(*v63.f32, 0);
  v85.i64[1] = v85.u32[0];
  if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v85, v64)), _D0).u32[0] & 0xFFFFFF) != 0)
  {
    v86 = vdup_lane_s32(*v65.f32, 1);
    v87 = vdup_laneq_s32(v65, 2);
    v88 = vdup_laneq_s32(v65, 3);
    v89 = vaddq_f32(v65, v65);
    v90 = vmul_lane_f32(v86, *v89.f32, 1);
    v91 = vmul_laneq_f32(v87, v89, 2);
    v92 = vmul_n_f32(v86, v89.f32[0]);
    v93 = vmul_n_f32(v87, v89.f32[0]);
    v94 = vmul_n_f32(v88, v89.f32[0]);
    v95 = vmul_lane_f32(v87, *v89.f32, 1);
    v96 = vmul_lane_f32(v88, *v89.f32, 1);
    v97 = vmul_laneq_f32(v88, v89, 2);
    v98 = vsub_f32(_D0, vdup_lane_s32(vmul_f32(*v65.f32, *v89.f32), 0));
    v99 = vsub_f32(vsub_f32(_D0, v90), v91);
    *v89.f32 = vadd_f32(v92, v97);
    v100 = vsub_f32(v93, v96);
    v101 = vsub_f32(v92, v97);
    v102 = vadd_f32(v93, v96);
    v103 = vsub_f32(v95, v94);
    v104 = vext_s8(v102, v103, 4uLL);
    v105 = vsub_f32(v98, v91);
    *v106.f32 = vext_s8(v99, *&vdupq_lane_s32(v101, 1), 4uLL);
    v106.i64[1] = vdup_lane_s32(v104, 0).u32[0];
    v107 = vsub_f32(v98, v90);
    *v108.f32 = vext_s8(*&vdupq_lane_s32(*v89.f32, 0), v105, 4uLL);
    v108.i64[1] = vdup_lane_s32(v104, 1).u32[0];
    v58 = vadd_f32(v95, v94);
    *v109.f32 = vext_s8(*&vdupq_lane_s32(v100, 0), v58, 4uLL);
    v109.i64[1] = vdup_lane_s32(v107, 0).u32[0];
    v110 = vmulq_n_f32(v106, v63.f32[0]);
    v110.i32[3] = 0;
    v111 = vmulq_lane_f32(v108, *v63.f32, 1);
    v111.i32[3] = 0;
    v112 = vmulq_laneq_f32(v109, v63, 2);
    v112.i32[3] = 0;
    v113 = vmulq_lane_f32(v110, v99, 1);
    v113.i32[3] = 0;
    v114 = vmulq_n_f32(v111, v89.f32[0]);
    v114.i32[3] = 0;
    v115 = vmulq_n_f32(v112, *v100.i32);
    v115.i32[3] = 0;
    v72 = vaddq_f32(v115, vaddq_f32(v113, v114));
    v116 = vmulq_lane_f32(v110, v101, 1);
    v116.i32[3] = 0;
    v117 = vmulq_n_f32(v111, *v105.i32);
    v117.i32[3] = 0;
    v118 = vmulq_n_f32(v112, *v58.i32);
    v118.i32[3] = 0;
    v119 = vmulq_lane_f32(v110, v102, 1);
    v119.i32[3] = 0;
    v120 = vmulq_n_f32(v111, *v103.i32);
    v120.i32[3] = 0;
    v71 = vaddq_f32(v118, vaddq_f32(v116, v117));
    v121 = vmulq_n_f32(v112, *v107.i32);
    v121.i32[3] = 0;
    v78 = vaddq_f32(v121, vaddq_f32(v119, v120));
    v59 = vmulq_n_f32(v106, v83.f32[0]);
    v59.i32[3] = 0;
    v122 = vmulq_lane_f32(v108, *v83.f32, 1);
    v122.i32[3] = 0;
    v123 = vmulq_laneq_f32(v109, v83, 2);
    v123.i32[3] = 0;
    v124 = vmulq_lane_f32(v59, v99, 1);
    v124.i32[3] = 0;
    v125 = vmulq_n_f32(v122, v89.f32[0]);
    v125.i32[3] = 0;
    v126 = vmulq_n_f32(v123, *v100.i32);
    v126.i32[3] = 0;
    v80 = vaddq_f32(v126, vaddq_f32(v124, v125));
    v127 = vmulq_lane_f32(v59, v101, 1);
    v127.i32[3] = 0;
    v128 = vmulq_n_f32(v122, *v105.i32);
    v128.i32[3] = 0;
    v129 = vmulq_n_f32(v123, *v58.i32);
    v129.i32[3] = 0;
    v130 = vaddq_f32(v127, v128);
    v131 = vmulq_lane_f32(v59, v102, 1);
    v131.i32[3] = 0;
    v132 = vmulq_n_f32(v122, *v103.i32);
    v132.i32[3] = 0;
    v81 = vaddq_f32(v129, v130);
    v133 = vmulq_n_f32(v123, *v107.i32);
    v133.i32[3] = 0;
    v82 = vaddq_f32(v133, vaddq_f32(v131, v132));
  }

  else
  {
    v83.i32[3] = 0;
    v80 = vmulq_f32(v83, xmmword_1E3047670);
    v72 = vmulq_f32(v64, xmmword_1E3047670);
    v81 = vmulq_f32(v83, xmmword_1E3047680);
    v71 = vmulq_f32(v64, xmmword_1E3047680);
    v78 = vmulq_f32(v64, xmmword_1E30476A0);
    v82 = vmulq_f32(v83, xmmword_1E30476A0);
  }

  v134 = vmulq_f32(v72, 0);
  v134.i32[3] = 0;
  v135 = vmulq_f32(v71, 0);
  v135.i32[3] = 0;
  v136 = vmulq_f32(v78, 0);
  v136.i32[3] = 0;
  v79 = vaddq_f32(vaddq_f32(v134, v135), v136);
LABEL_27:
  v137.i64[0] = __PAIR64__(v77, v76);
  v137.i64[1] = HIDWORD(v77);
  v138 = vmulq_f32(v64, v137);
  *v138.i8 = vpmin_f32(vdup_laneq_s32(v138, 2), *v138.i8);
  *v138.i32 = vpmin_f32(*v138.i8, *v138.i8).f32[0];
  v139 = *(v10 + 80);
  v140.i32[1] = 1028443341;
  v215 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v138.i32);
  v216 = 0.025 * *v138.i32;
  v219 = v72;
  v220 = v71;
  v221 = v78;
  v222 = v80;
  v223 = v81;
  v224 = v82;
  v141 = *(a2 + 4);
  v142 = *(a2 + 8);
  v143 = *(a2 + 12);
  v144 = *(a4 + 16) - *(a2 + 16);
  v81.f32[0] = *(a4 + 20) - *(a2 + 20);
  v145 = *(a4 + 24) - *(a2 + 24);
  v146 = v144 + v144;
  v81.f32[0] = v81.f32[0] + v81.f32[0];
  v147 = v145 + v145;
  v137.f32[0] = (v143 * v143) + -0.5;
  v148 = (-(v141 * v81.f32[0]) - (*a2 * v146)) - (v142 * v147);
  *&v149 = ((v143 * ((v142 * v81.f32[0]) - (v141 * v147))) + (v146 * v137.f32[0])) - (*a2 * v148);
  *&v150 = ((v143 * ((*a2 * v147) - (v142 * v146))) + (v81.f32[0] * v137.f32[0])) - (v141 * v148);
  *&v151 = ((v143 * ((v141 * v146) - (*a2 * v81.f32[0]))) + (v147 * v137.f32[0])) - (v142 * v148);
  v152 = *(a4 + 8);
  v81.i32[0] = *(a4 + 12);
  v153 = *(a4 + 4);
  v137.f32[0] = (v143 * *a4) - (*a2 * v81.f32[0]);
  *v58.i32 = (((v143 * v153) - (v141 * v81.f32[0])) - (v142 * *a4)) + (v152 * *a2);
  v59.f32[0] = (((v143 * v152) - (v142 * v81.f32[0])) - (*a2 * v153)) + (*a4 * v141);
  v154 = *a2 * *a4;
  v138.i32[3] = 0;
  v217 = 0;
  v218 = 0;
  v225 = v10 + 32;
  v226 = v139;
  v227 = v73 + 20 * v74;
  v228 = v75;
  v137.f32[0] = (v137.f32[0] - (v141 * v152)) + (v153 * v142);
  *v140.i32 = ((v154 + (v143 * v81.f32[0])) + (v141 * v153)) + (v142 * v152);
  *&v155 = __PAIR64__(v150, v149);
  *(&v155 + 1) = v151;
  v156 = vdup_lane_s32(*v59.f32, 0);
  v157 = vdup_lane_s32(v140, 0);
  v81.f32[0] = v137.f32[0] + v137.f32[0];
  v137.f32[0] = v137.f32[0] * (v137.f32[0] + v137.f32[0]);
  v158 = vmul_n_f32(vdup_lane_s32(v58, 0), *v58.i32 + *v58.i32);
  v159 = vmul_n_f32(v156, v59.f32[0] + v59.f32[0]);
  v160 = vmul_n_f32(vdup_lane_s32(*v81.f32, 0), *v58.i32);
  v161 = vmul_n_f32(v156, v81.f32[0]);
  v162 = vmul_n_f32(v157, v81.f32[0]);
  v163 = vmul_n_f32(v156, *v58.i32 + *v58.i32);
  v164 = vmul_n_f32(v157, *v58.i32 + *v58.i32);
  v165 = vmul_n_f32(v157, v59.f32[0] + v59.f32[0]);
  *v137.f32 = vsub_f32(_D0, vdup_lane_s32(*v137.f32, 0));
  *&v166 = vext_s8(vsub_f32(vsub_f32(_D0, v158), v159), vadd_f32(v160, v165), 4uLL);
  *(&v166 + 1) = vsub_f32(v161, v164).u32[0];
  *&v167 = vext_s8(vsub_f32(v160, v165), vsub_f32(*v137.f32, v159), 4uLL);
  *(&v167 + 1) = vadd_f32(v162, v163).u32[0];
  *&v168 = vext_s8(vadd_f32(v161, v164), vsub_f32(v163, v162), 4uLL);
  *(&v168 + 1) = vsub_f32(*v137.f32, v158).u32[0];
  v229 = v166;
  v230 = v167;
  v231 = v168;
  v232 = v155;
  v237 = v9;
  *&v169 = __PAIR64__(LODWORD(v176), LODWORD(v173));
  *(&v169 + 1) = LODWORD(v179);
  *&v170 = __PAIR64__(LODWORD(v177), LODWORD(v174));
  *(&v170 + 1) = LODWORD(v180);
  *&v171 = __PAIR64__(LODWORD(v178), LODWORD(v175));
  *(&v171 + 1) = LODWORD(v181);
  *v138.i32 = (-(v183 * v174) - (v173 * v182)) - (v175 * v184);
  *&v138.i32[1] = (-(v183 * v177) - (v176 * v182)) - (v178 * v184);
  *&v138.i32[2] = (-(v183 * v180) - (v179 * v182)) - (v181 * v184);
  v209 = v169;
  v210 = v170;
  v211 = v171;
  v212 = v138;
  *&v166 = vadd_f32(v185, vdup_n_s32(0x3A83126Fu));
  *(&v166 + 2) = v186 + 0.001;
  HIDWORD(v166) = 0;
  v213 = v166;
  v214 = v79;
  (physx::Gu::gMidphaseBoxCBOverlapTable[*(v11 + 8) - 3])(v11, &v173, &v207, 1, 0);
  return v236;
}

uint64_t physx::Gu::RTree::load(uint64_t a1, void (***a2)(uint64_t (***)(void, uint64_t, uint64_t), unsigned int *, uint64_t), uint64_t a3, int a4)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    v7 = *(a1 + 88);
    if (v7)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v7 - *(v7 - 8));
      *(a1 + 88) = 0;
    }
  }

  v15 = 0;
  physx::readChunk(&v15 + 3, &v15 + 2, &v15 + 1, &v15, a2);
  result = 0;
  if (HIBYTE(v15) == 82 && BYTE2(v15) == 84 && BYTE1(v15) == 82 && v15 == 69)
  {
    v16 = 0;
    (**a2)(a2, &v16, 4);
    v9 = v16;
    v10 = 1;
    if (v16 == 1 || v16 == 0x1000000)
    {
      goto LABEL_13;
    }

    v11 = bswap32(v16);
    if (a4)
    {
      v9 = v11;
    }

    v10 = a4;
    if (v9 <= 3)
    {
LABEL_13:
      physx::readFloatBuffer(a1, 4u, v10, a2);
      physx::readFloatBuffer((a1 + 16), 4u, v10, a2);
      physx::readFloatBuffer((a1 + 32), 4u, v10, a2);
      physx::readFloatBuffer((a1 + 48), 4u, v10, a2);
      *(a1 + 64) = physx::readDword(v10, a2);
      *(a1 + 68) = physx::readDword(v10, a2);
      *(a1 + 72) = physx::readDword(v10, a2);
      *(a1 + 76) = physx::readDword(v10, a2);
      *(a1 + 80) = physx::readDword(v10, a2);
      physx::readDword(v10, a2);
      *(a1 + 88) = physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::NonTrackingAllocator>::allocate(&v14, 112 * *(a1 + 80), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuRTree.cpp", 87);
      if (*(a1 + 80))
      {
        v12 = 0;
        v13 = 96;
        do
        {
          physx::readFloatBuffer((*(a1 + 88) + v13 - 96), 4u, v10, a2);
          physx::readFloatBuffer((*(a1 + 88) + v13 - 80), 4u, v10, a2);
          physx::readFloatBuffer((*(a1 + 88) + v13 - 64), 4u, v10, a2);
          physx::readFloatBuffer((*(a1 + 88) + v13 - 48), 4u, v10, a2);
          physx::readFloatBuffer((*(a1 + 88) + v13 - 32), 4u, v10, a2);
          physx::readFloatBuffer((*(a1 + 88) + v13 - 16), 4u, v10, a2);
          physx::readFloatBuffer((*(a1 + 88) + v13), 4u, v10, a2);
          ++v12;
          v13 += 112;
        }

        while (v12 < *(a1 + 80));
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::NonTrackingAllocator>::allocate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 + 135;
  if (!v4)
  {
    return 0;
  }

  result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v4, "NonTrackedAlloc", a3, a4);
  if (result)
  {
    v6 = result;
    result = (result + 135) & 0xFFFFFFFFFFFFFF80;
    *(result - 8) = result - v6;
  }

  return result;
}

uint64_t physx::Gu::RTree::refitAllStaticTree(uint64_t result, uint64_t (***a2)(void, void, __int128 *, __int128 *), uint64_t a3)
{
  v42 = result;
  v3 = *(result + 80);
  if (v3 >= 1)
  {
    v5 = *(result + 88);
    do
    {
      v6 = 0;
      v43 = v3;
      v44 = v3 - 1;
      v7 = *(v42 + 88) + 112 * (v3 - 1);
      v8 = v7 + 48;
      v9 = v7 + 96;
      v10 = v7 + 16;
      v11 = v7 + 32;
      v12 = v7 + 64;
      v13 = v7 + 80;
      do
      {
        v14 = *(v7 + 4 * v6);
        v15 = *(v8 + 4 * v6);
        if (v14 <= v15)
        {
          v16 = *(v9 + 4 * v6);
          if (v16)
          {
            v45 = 0u;
            v46 = 0u;
            result = (**a2)(a2, (*(v9 + 4 * v6) - 1), &v46, &v45);
            v26 = v45;
            v25 = v46;
            *(v7 + 4 * v6) = v46;
            *(v10 + 4 * v6) = DWORD1(v25);
            *(v11 + 4 * v6) = DWORD2(v25);
            *(v8 + 4 * v6) = v26;
            *(v12 + 4 * v6) = DWORD1(v26);
            *(v13 + 4 * v6) = DWORD2(v26);
          }

          else
          {
            v17 = v5 + v16 + 48;
            v18 = 1;
            v19 = 4;
            do
            {
              v20 = *(v17 - 48);
              if (v20 <= *v17)
              {
                if (v18)
                {
                  *(v7 + 4 * v6) = v20;
                  *(v10 + 4 * v6) = *(v17 - 32);
                  *(v11 + 4 * v6) = *(v17 - 16);
                  v15 = *v17;
                  *(v8 + 4 * v6) = *v17;
                  *(v12 + 4 * v6) = *(v17 + 16);
                  v21 = *(v17 + 32);
                }

                else
                {
                  if (v14 < v20)
                  {
                    v20 = v14;
                  }

                  *(v7 + 4 * v6) = v20;
                  v22 = *(v10 + 4 * v6);
                  if (v22 >= *(v17 - 32))
                  {
                    v22 = *(v17 - 32);
                  }

                  *(v10 + 4 * v6) = v22;
                  v23 = *(v11 + 4 * v6);
                  if (v23 >= *(v17 - 16))
                  {
                    v23 = *(v17 - 16);
                  }

                  *(v11 + 4 * v6) = v23;
                  if (v15 <= *v17)
                  {
                    v15 = *v17;
                  }

                  *(v8 + 4 * v6) = v15;
                  v24 = *(v12 + 4 * v6);
                  if (v24 <= *(v17 + 16))
                  {
                    v24 = *(v17 + 16);
                  }

                  *(v12 + 4 * v6) = v24;
                  v21 = *(v13 + 4 * v6);
                  if (v21 <= *(v17 + 32))
                  {
                    v21 = *(v17 + 32);
                  }
                }

                v18 = 0;
                *(v13 + 4 * v6) = v21;
                v14 = v20;
              }

              v17 += 4;
              --v19;
            }

            while (v19);
          }
        }

        ++v6;
      }

      while (v6 != 4);
      v3 = v44;
    }

    while (v43 > 1);
  }

  if (a3)
  {
    v27 = *(v42 + 68);
    if (v27)
    {
      v28 = 0;
      v29 = *(a3 + 16);
      v30 = *a3;
      v31 = *(v42 + 88) + 48;
      do
      {
        v32 = 0x80000000800000;
        v33 = v31;
        v34 = 4;
        v35 = xmmword_1E3116ED0;
        do
        {
          v36.i32[0] = *(v33 - 12);
          if (v36.f32[0] <= *v33)
          {
            v36.i32[1] = *(v33 - 8);
            v36.i32[2] = *(v33 - 4);
            v36.i32[3] = *v33;
            v37 = vmovn_s32(vcgtq_f32(v36, v35));
            v37.i16[3] = vmovn_s32(vcgtq_f32(v35, v36)).i16[3];
            v35 = vbslq_s8(vmovl_s16(v37), v35, v36);
            v38.i32[0] = v33[4];
            v38.i32[1] = v33[8];
            v32 = vbsl_s8(vcgt_f32(v32, v38), v32, v38);
          }

          ++v33;
          --v34;
        }

        while (v34);
        if (v28)
        {
          v39 = v30;
          v39.i32[3] = v35.i32[3];
          v40 = v35;
          v40.i32[3] = v30.i32[3];
          v35 = vbslq_s8(vcgtq_f32(v40, v39), v30, v35);
          v32 = vbsl_s8(vcgt_f32(v29, v32), v29, v32);
        }

        ++v28;
        *a3 = v35;
        *(a3 + 16) = v32;
        v31 += 112;
        v30 = v35;
        v29 = v32;
      }

      while (v28 != v27);
    }
  }

  return result;
}

uint64_t physx::Gu::RTree::traverseRay<0>(uint64_t result, uint64_t a2, uint64_t a3, float32_t a4, uint64_t a5, uint64_t a6, uint64_t (***a7)(void, uint64_t, _DWORD *, float *))
{
  v62[63] = *MEMORY[0x1E69E9840];
  v8 = *(result + 68);
  if (v8 - 1 >= 0)
  {
    v7.f32[0] = a4;
    v10 = *(result + 88);
    v11 = vdupq_lane_s32(*v7.f32, 0);
    v12.i64[0] = *a2;
    v12.i64[1] = *(a2 + 8);
    v13.i64[0] = *a3;
    v13.i64[1] = *(a3 + 8);
    v14.i64[0] = 0x8000000080000000;
    v14.i64[1] = 0x8000000080000000;
    v15 = vorrq_s8(vandq_s8(v13, v14), vmaxq_f32(vabsq_f32(v13), vdupq_n_s32(0x3089705Fu)));
    v16 = vrecpeq_f32(v15);
    v17 = vmulq_f32(v16, vrecpsq_f32(v16, v15));
    v18.i64[0] = 0x4000000040000000;
    v18.i64[1] = 0x4000000040000000;
    v19 = vmulq_f32(v17, vmlsq_f32(v18, v17, v15));
    v20 = vmlsq_f32(0, v12, v19);
    v56 = vdupq_lane_s32(*v19.f32, 1);
    v57 = vdupq_lane_s32(*v19.f32, 0);
    v54 = vdupq_lane_s32(*v20.i8, 0);
    v55 = vdupq_laneq_s32(v19, 2);
    v52 = vdupq_laneq_s32(v20, 2);
    v53 = vdupq_lane_s32(*v20.i8, 1);
    v21 = vdupq_n_s64(v8 - 1);
    v22 = (v8 + 3) & 0x1FFFFFFFCLL;
    v23 = 112 * v8 - 224;
    v24 = xmmword_1E3049640;
    v25 = xmmword_1E3049620;
    v26 = v62;
    v27 = vdupq_n_s64(4uLL);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v21, v25));
      if (vuzp1_s16(v28, *v21.i8).u8[0])
      {
        *(v26 - 1) = v23 + 112;
      }

      if (vuzp1_s16(v28, *&v21).i8[2])
      {
        *v26 = v23;
      }

      if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v24))).i32[1])
      {
        v26[1] = v23 - 112;
        v26[2] = v23 - 224;
      }

      v24 = vaddq_s64(v24, v27);
      v25 = vaddq_s64(v25, v27);
      v23 -= 448;
      v26 += 4;
      v22 -= 4;
    }

    while (v22);
    v51 = vdupq_n_s32(0x3089705Fu);
    do
    {
      while (1)
      {
        v29 = v8 - 1;
        v30 = v61[(v8 - 1) + 2];
        if (v30)
        {
          break;
        }

        v31 = (v10 + v30);
        v32 = v31[6].i32[1];
        v61[v29 + 2] = v31[6].i32[0];
        v33 = v31[3];
        v34 = vcgtq_f32(*v31, v33);
        v35 = vmlaq_f32(v54, v57, *v31);
        v36 = vmlaq_f32(v53, v56, v31[1]);
        v37 = vmlaq_f32(v52, v55, v31[2]);
        v38 = vmlaq_f32(v54, v57, v33);
        v39 = vmlaq_f32(v53, v56, v31[4]);
        v40 = vmlaq_f32(v52, v55, v31[5]);
        v41 = vminq_f32(v35, v38);
        v42 = vmaxq_f32(v35, v38);
        v43 = vminq_f32(v36, v39);
        v44 = vmaxq_f32(v36, v39);
        v45 = vmaxq_f32(vmaxq_f32(v41, v43), vminq_f32(v37, v40));
        v46 = vminq_f32(vminq_f32(v42, v44), vmaxq_f32(v37, v40));
        v47 = vorrq_s8(vorrq_s8(vcgtq_f32(v45, v11), v34), vorrq_s8(vcgtq_f32(v51, v46), vcgtq_f32(v45, v46)));
        *v37.f32 = vadd_s32(*v47.i8, (v8 | 0x100000000));
        v61[v37.u32[0] + 2] = v32;
        v48 = v31[6].i32[2];
        LODWORD(v31) = v31[6].i32[3];
        v61[v37.i32[1] + v37.i32[0] + 2] = v48;
        v49 = v47.i32[2] + v37.i32[1] + v37.i32[0] + 1;
        v61[v49 + 2] = v31;
        LODWORD(v8) = v47.i32[3] + v49 + 1;
        if (!v8)
        {
          return result;
        }
      }

      v59 = v11;
      v61[0] = v30 - 1;
      v60 = v7.f32[0];
      v58 = v7;
      result = (**a7)(a7, 1, v61, &v60);
      if (!result)
      {
        break;
      }

      v50.f32[0] = v60;
      v7 = v58;
      v11 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v58, v50)), 0), vdupq_lane_s32(*v50.f32, 0), v59);
      if (v58.f32[0] != v60)
      {
        v7.f32[0] = v60;
      }

      LODWORD(v8) = v29;
    }

    while (v29);
  }

  return result;
}

uint64_t physx::Gu::RTree::traverseRay<1>(uint64_t result, uint64_t a2, uint64_t a3, float32_t a4, uint64_t a5, uint64_t a6, uint64_t (***a7)(void, uint64_t, _DWORD *, float *), uint64_t a8)
{
  v67[63] = *MEMORY[0x1E69E9840];
  v9 = *(result + 68);
  if (v9 - 1 >= 0)
  {
    v8.f32[0] = a4;
    v11.i64[0] = *a8;
    v11.i64[1] = *(a8 + 8);
    v12 = *(result + 88);
    v13 = vaddq_f32(v11, vdupq_n_s32(0x33D6BF95u));
    v61 = vdupq_lane_s32(*v13.f32, 1);
    v62 = vdupq_lane_s32(*v13.f32, 0);
    v60 = vdupq_laneq_s32(v13, 2);
    v14 = vdupq_lane_s32(*v8.f32, 0);
    v13.i64[0] = *a2;
    v13.i64[1] = *(a2 + 8);
    v15.i64[0] = *a3;
    v15.i64[1] = *(a3 + 8);
    v16.i64[0] = 0x8000000080000000;
    v16.i64[1] = 0x8000000080000000;
    v17 = vorrq_s8(vandq_s8(v15, v16), vmaxq_f32(vabsq_f32(v15), vdupq_n_s32(0x3089705Fu)));
    v18 = vrecpeq_f32(v17);
    v19 = vmulq_f32(v18, vrecpsq_f32(v18, v17));
    v20.i64[0] = 0x4000000040000000;
    v20.i64[1] = 0x4000000040000000;
    v21 = vmulq_f32(v19, vmlsq_f32(v20, v19, v17));
    v22 = vmlsq_f32(0, v13, v21);
    v58 = vdupq_lane_s32(*v21.f32, 1);
    v59 = vdupq_lane_s32(*v21.f32, 0);
    v56 = vdupq_lane_s32(*v22.i8, 0);
    v57 = vdupq_laneq_s32(v21, 2);
    v54 = vdupq_laneq_s32(v22, 2);
    v55 = vdupq_lane_s32(*v22.i8, 1);
    v23 = vdupq_n_s64(v9 - 1);
    v24 = (v9 + 3) & 0x1FFFFFFFCLL;
    v25 = 112 * v9 - 224;
    v26 = xmmword_1E3049640;
    v27 = xmmword_1E3049620;
    v28 = v67;
    v29 = vdupq_n_s64(4uLL);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v23, v27));
      if (vuzp1_s16(v30, *v23.i8).u8[0])
      {
        *(v28 - 1) = v25 + 112;
      }

      if (vuzp1_s16(v30, *&v23).i8[2])
      {
        *v28 = v25;
      }

      if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, *&v26))).i32[1])
      {
        v28[1] = v25 - 112;
        v28[2] = v25 - 224;
      }

      v26 = vaddq_s64(v26, v29);
      v27 = vaddq_s64(v27, v29);
      v25 -= 448;
      v28 += 4;
      v24 -= 4;
    }

    while (v24);
    v53 = vdupq_n_s32(0x3089705Fu);
    do
    {
      while (1)
      {
        v31 = v9 - 1;
        v32 = v66[(v9 - 1) + 2];
        if (v32)
        {
          break;
        }

        v33 = (v12 + v32);
        v34 = v33[6].i32[1];
        v66[v31 + 2] = v33[6].i32[0];
        v35 = v33[3];
        v36 = vcgtq_f32(*v33, v35);
        v37 = vmlaq_f32(v56, v59, vsubq_f32(*v33, v62));
        v38 = vmlaq_f32(v55, v58, vsubq_f32(v33[1], v61));
        v39 = vmlaq_f32(v54, v57, vsubq_f32(v33[2], v60));
        v40 = vmlaq_f32(v56, v59, vaddq_f32(v62, v35));
        v41 = vmlaq_f32(v55, v58, vaddq_f32(v61, v33[4]));
        v42 = vmlaq_f32(v54, v57, vaddq_f32(v60, v33[5]));
        v43 = vminq_f32(v37, v40);
        v44 = vmaxq_f32(v37, v40);
        v45 = vminq_f32(v38, v41);
        v46 = vmaxq_f32(v38, v41);
        v47 = vmaxq_f32(vmaxq_f32(v43, v45), vminq_f32(v39, v42));
        v48 = vminq_f32(vminq_f32(v44, v46), vmaxq_f32(v39, v42));
        v49 = vorrq_s8(vorrq_s8(vcgtq_f32(v47, v14), v36), vorrq_s8(vcgtq_f32(v53, v48), vcgtq_f32(v47, v48)));
        *v39.f32 = vadd_s32(*v49.i8, (v9 | 0x100000000));
        v66[v39.u32[0] + 2] = v34;
        v50 = v33[6].i32[2];
        LODWORD(v33) = v33[6].i32[3];
        v66[v39.i32[1] + v39.i32[0] + 2] = v50;
        v51 = v49.i32[2] + v39.i32[1] + v39.i32[0] + 1;
        v66[v51 + 2] = v33;
        LODWORD(v9) = v49.i32[3] + v51 + 1;
        if (!v9)
        {
          return result;
        }
      }

      v64 = v14;
      v66[0] = v32 - 1;
      v65 = v8.f32[0];
      v63 = v8;
      result = (**a7)(a7, 1, v66, &v65);
      if (!result)
      {
        break;
      }

      v52.f32[0] = v65;
      v8 = v63;
      v14 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v63, v52)), 0), vdupq_lane_s32(*v52.f32, 0), v64);
      if (v63.f32[0] != v65)
      {
        v8.f32[0] = v65;
      }

      LODWORD(v9) = v31;
    }

    while (v31);
  }

  return result;
}

uint64_t physx::Gu::RTree::traverseAABB(uint64_t result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (***a6)(void, uint64_t, unsigned int *))
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(a2 + 4);
  v9 = *a3;
  v10 = *(a3 + 4);
  v11 = *(result + 68);
  if (v11 - 1 < 0)
  {
    v14 = 4;
  }

  else
  {
    v12 = 112 * v11 - 112;
    v13 = 4;
    do
    {
      v14 = v13 + 4;
      *(&v30[1] + v13 + 8) = v12;
      v12 -= 112;
      v13 += 4;
      --v11;
    }

    while (v11);
  }

  v15 = 0;
  v27 = vdupq_lane_s32(v8, 0);
  v28 = vdupq_lane_s32(v7, 0);
  v25 = vdupq_lane_s32(v9, 0);
  v26 = vdupq_lane_s32(v8, 1);
  v23 = vdupq_lane_s32(v10, 1);
  v24 = vdupq_lane_s32(v10, 0);
  v16 = 1;
  v17 = *(result + 88);
  do
  {
    v14 -= 4;
    v18 = v15;
    if (!v16)
    {
      v18 = *(&v30[1] + v14 + 8);
    }

    v19 = 0;
    v16 = 0;
    v20 = (v17 + v18);
    v21 = v20 + 6;
    v30[0] = vorrq_s8(vorrq_s8(vorrq_s8(vcgtq_f32(v20[1], v24), vcgtq_f32(*v20, v25)), vorrq_s8(vcgtq_f32(v20[2], v23), vcgtq_f32(v28, v20[3]))), vorrq_s8(vcgtq_f32(v27, v20[4]), vcgtq_f32(v26, v20[5])));
    do
    {
      v22 = v21->i32[v19];
      v29 = v22 & 0xFFFFFFFE;
      if (!*(v30 + v19 * 4))
      {
        if (v22)
        {
          result = (**a6)(a6, 1, &v29);
          if ((result & 1) == 0)
          {
            return result;
          }
        }

        else
        {
          *(&v30[1] + v14 + 8) = v22 & 0xFFFFFFFE;
          v14 += 4;
          v16 = 1;
          v15 = v22 & 0xFFFFFFFE;
        }
      }

      ++v19;
    }

    while (v19 != 4);
  }

  while (v14 > 4);
  return result;
}

uint64_t physx::Gu::RTree::traverseOBB(uint64_t this, const physx::Gu::Box *a2, unsigned int a3, unsigned int *a4, physx::Gu::RTree::Callback *a5)
{
  v124 = *MEMORY[0x1E69E9840];
  v8 = *(this + 88);
  v9 = *(a2 + 36);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 52);
  v13 = *a2;
  v14 = *a2;
  v14.i32[1] = *(a2 + 1);
  v15 = v14;
  v15.i32[2] = *(a2 + 2);
  v5.i32[0] = *(a2 + 3);
  v16 = v5;
  v16.i32[1] = *(a2 + 4);
  v17 = v16;
  v17.i32[2] = *(a2 + 5);
  v6.i32[0] = *(a2 + 6);
  v18 = v6;
  v18.i32[1] = *(a2 + 7);
  v19 = v18;
  v19.i32[2] = *(a2 + 8);
  v20 = *(this + 68);
  if (v20 - 1 < 0)
  {
    v22 = v123;
  }

  else
  {
    v21 = 112 * v20 - 112;
    v22 = v123;
    do
    {
      *v22++ = v21;
      v21 -= 112;
      --v20;
    }

    while (v20);
  }

  v23 = 0;
  v118 = vdupq_lane_s32(*&v9, 0);
  v117 = vdupq_lane_s32(*&v10, 0);
  v115 = vdupq_lane_s32(v13, 0);
  v116 = vdupq_lane_s32((v10 >> 32), 0);
  v113 = vdupq_laneq_s32(v15, 2);
  v114 = vdupq_lane_s32(*v14.f32, 1);
  v111 = vdupq_lane_s32(*v16.f32, 1);
  v112 = vdupq_lane_s32(*v5.f32, 0);
  v109 = vdupq_lane_s32(*v6.f32, 0);
  v110 = vdupq_laneq_s32(v17, 2);
  v107 = vdupq_laneq_s32(v19, 2);
  v108 = vdupq_lane_s32(*v18.f32, 1);
  v106 = vdupq_lane_s32(v11, 0);
  v104 = vdupq_lane_s32(v12, 0);
  v105 = vsubq_f32(0, v106);
  v103 = vsubq_f32(0, v104);
  v24 = vmlaq_n_f32(0, v15, *v11.i32);
  v101 = vdupq_lane_s32(*v24.i8, 0);
  v102 = vdupq_lane_s32(v12, 1);
  v25 = vmlaq_n_f32(0, v17, v12.f32[0]);
  v99 = vdupq_laneq_s32(v24, 2);
  v100 = vdupq_lane_s32(*v24.i8, 1);
  v97 = vsubq_f32(0, v102);
  v98 = vdupq_lane_s32(*v25.i8, 0);
  v26 = vmlaq_lane_f32(0, v19, v12, 1);
  v95 = vdupq_laneq_s32(v25, 2);
  v96 = vdupq_lane_s32(*v25.i8, 1);
  v27 = 1;
  v93 = vdupq_lane_s32(*v26.i8, 1);
  v94 = vdupq_lane_s32(*v26.i8, 0);
  v92 = vdupq_laneq_s32(v26, 2);
  do
  {
    --v22;
    v28 = v23;
    if (!v27)
    {
      v28 = *v22;
    }

    v29 = 0;
    v27 = 0;
    v30 = (v8 + v28);
    v31 = v30[1];
    v33 = v30[2];
    v32 = v30[3];
    v34 = v30[4];
    v35 = v30[5];
    v36 = vmaxq_f32(*v30, vminq_f32(v32, v118));
    v37 = vmaxq_f32(v31, vminq_f32(v34, v117));
    v38 = vmaxq_f32(v33, vminq_f32(v35, v116));
    v39 = vsubq_f32(v36, v118);
    v40 = vsubq_f32(v37, v117);
    v41 = vsubq_f32(v38, v116);
    v42 = vmaxq_f32(v105, vminq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(0, v113, v41), v114, v40), v115, v39), v106));
    v43 = vmaxq_f32(v103, vminq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(0, v110, v41), v111, v40), v112, v39), v104));
    v44 = vmaxq_f32(v97, vminq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(0, v107, v41), v108, v40), v109, v39), v102));
    v45 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v118, v109, v44), v112, v43), v115, v42);
    v46 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v117, v108, v44), v111, v43), v114, v42);
    v47 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v116, v107, v44), v110, v43), v113, v42);
    v119 = vmaxq_f32(v33, vminq_f32(v35, v47));
    v120 = vmaxq_f32(v31, vminq_f32(v34, v46));
    v48.i64[0] = 0x3F0000003F000000;
    v48.i64[1] = 0x3F0000003F000000;
    v49 = vmlaq_f32(0, v48, vaddq_f32(*v30, v32));
    v50 = vmlaq_f32(0, v48, vaddq_f32(v31, v34));
    v51 = vmlaq_f32(0, v48, vaddq_f32(v33, v35));
    v52 = vsubq_f32(v32, v49);
    v53 = vsubq_f32(v34, v50);
    v54 = vsubq_f32(v35, v51);
    v55 = vsubq_f32(v45, v36);
    v56 = vsubq_f32(v46, v37);
    v57 = vsubq_f32(v47, v38);
    v58 = vmlaq_f32(0, v54, v57);
    v59 = vmlaq_f32(0, v51, v57);
    v60 = vmlaq_f32(0, v99, v57);
    v61 = vmlaq_f32(0, v95, v57);
    v62 = vmlaq_f32(0, v92, v57);
    v63 = vmlaq_f32(0, v116, v57);
    v64 = vmlaq_f32(0, v53, v56);
    v65 = vmlaq_f32(v59, v50, v56);
    v66 = vmlaq_f32(v60, v100, v56);
    v67 = vmlaq_f32(v61, v96, v56);
    v68 = vmlaq_f32(v62, v93, v56);
    v69 = vmlaq_f32(v63, v117, v56);
    v70 = vmlaq_f32(0, v52, v55);
    v71 = vmlaq_f32(v66, v101, v55);
    v72 = vmlaq_f32(v67, v98, v55);
    v73 = vmlaq_f32(v68, v94, v55);
    v74 = vabdq_f32(vmlaq_f32(v65, v49, v55), vmlaq_f32(v69, v118, v55));
    v75 = vsubq_f32(v45, vmaxq_f32(*v30, vminq_f32(v32, v45)));
    v76 = vsubq_f32(v46, v120);
    v77 = vsubq_f32(v47, v119);
    v78 = vmlaq_f32(0, v52, v75);
    v79 = vmlaq_f32(0, v53, v76);
    v80 = vmlaq_f32(0, v54, v77);
    v81 = vmlaq_f32(vmlaq_f32(vmlaq_f32(0, v51, v77), v50, v76), v49, v75);
    v82 = vmlaq_f32(vmlaq_f32(vmlaq_f32(0, v99, v77), v100, v76), v101, v75);
    v83 = vmlaq_f32(vmlaq_f32(vmlaq_f32(0, v95, v77), v96, v76), v98, v75);
    v84 = vmlaq_f32(vmlaq_f32(vmlaq_f32(0, v92, v77), v93, v76), v94, v75);
    v85 = vabdq_f32(v81, vmlaq_f32(vmlaq_f32(vmlaq_f32(0, v116, v77), v117, v76), v118, v75));
    v86 = vaddq_f32(vabsq_f32(v84), vaddq_f32(vabsq_f32(v82), vabsq_f32(v83)));
    v87 = vdupq_n_s32(0xB58637BD);
    v88 = vdupq_n_s32(0x358637BDu);
    v89 = vbicq_s8(vornq_s8(vmvnq_s8(vcgtq_f32(vaddq_f32(v74, v87), vaddq_f32(vaddq_f32(vabsq_f32(v58), vaddq_f32(vabsq_f32(v70), vabsq_f32(v64))), vaddq_f32(vabsq_f32(v73), vaddq_f32(vabsq_f32(v71), vabsq_f32(v72)))))), vcgtq_f32(v74, v88)), vcgtq_f32(*v30, v32));
    v32.i64[0] = 0x100000001;
    v32.i64[1] = 0x100000001;
    v122 = vandq_s8(vandq_s8(v89, v32), vornq_s8(vmvnq_s8(vcgtq_f32(vaddq_f32(v85, v87), vaddq_f32(vaddq_f32(vaddq_f32(vabsq_f32(v78), vabsq_f32(v79)), vabsq_f32(v80)), v86))), vcgtq_f32(v85, v88)));
    v90 = v30 + 6;
    do
    {
      v91 = v90->i32[v29];
      v121 = v91 & 0xFFFFFFFE;
      if (v122.i32[v29])
      {
        if (v91)
        {
          this = (**a5)(a5, 1, &v121, a4);
          if ((this & 1) == 0)
          {
            return this;
          }
        }

        else
        {
          *v22++ = v91 & 0xFFFFFFFE;
          v23 = v121;
          v27 = 1;
        }
      }

      ++v29;
    }

    while (v29 != 4);
  }

  while (v22 > v123);
  return this;
}

uint64_t physx::Gu::unsupportedBoxOverlapMidphase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, vars0);
  }

  return 0;
}

{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, vars0);
  }

  return 0;
}

uint64_t physx::Gu::unsupportedCapsuleOverlapMidphase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, vars0);
  }

  return 0;
}

uint64_t physx::Gu::unsupportedSphereOverlapMidphase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, vars0);
  }

  return 0;
}

uint64_t anonymous namespace::HfTrianglesEntityReport2::onEvent(float32x4_t *this, unsigned int a2, unsigned int *a3)
{
  if (this[7].i8[0] != 1)
  {
    v22 = xmmword_1E30474D0;
    v23 = 0;
    v24 = 0;
    if (a2)
    {
      v10 = a2;
      do
      {
        physx::Gu::HeightFieldUtil::getTriangle(this[2].i64[1], &v22, v19, 0, 0, *a3, 0, 0);
        if (physx::Gu::intersectTriangleBox(this + 3, v19, &v20, &v21, v11, v12, v13))
        {
          v14 = this[1].u32[0];
          if (v14 >= this[1].i32[1])
          {
            goto LABEL_18;
          }

          v15 = this[1].u32[3];
          if (v15 >= this[1].i32[2])
          {
            v16 = *a3;
            v17 = this->i64[1];
            this[1].i32[0] = v14 + 1;
            *(v17 + 4 * v14) = v16;
          }

          else
          {
            this[1].i32[3] = v15 + 1;
          }
        }

        ++a3;
        --v10;
      }

      while (v10);
    }

    return 1;
  }

  if (!a2)
  {
    return 1;
  }

  while (1)
  {
    v5 = this[1].u32[0];
    if (v5 >= this[1].i32[1])
    {
      break;
    }

    v7 = *a3++;
    v6 = v7;
    v8 = this[1].u32[3];
    if (v8 >= this[1].i32[2])
    {
      v9 = this->i64[1];
      this[1].i32[0] = v5 + 1;
      *(v9 + 4 * v5) = v6;
    }

    else
    {
      this[1].i32[3] = v8 + 1;
    }

    if (!--a2)
    {
      return 1;
    }
  }

LABEL_18:
  result = 0;
  this[2].i8[0] = 1;
  return result;
}

uint64_t ConvexVsMeshOverlapCallback::processHit(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5)
{
  v213 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v5.f32[1] = a3[1];
  v6 = v5;
  v6.f32[2] = a3[2];
  v7.i32[1] = 0;
  v8 = *a4;
  v8.f32[1] = a4[1];
  v9 = v8;
  v9.f32[2] = a4[2];
  v10 = *a5;
  v10.f32[1] = a5[1];
  v11 = v10;
  v11.f32[2] = a5[2];
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  v14 = vmulq_n_f32(v12, *a3);
  v14.i32[3] = 0;
  v15 = vmulq_lane_f32(v13, *v5.f32, 1);
  v15.i32[3] = 0;
  v17 = *(a1 + 48);
  v16 = *(a1 + 64);
  v18 = vmulq_laneq_f32(v17, v6, 2);
  v18.i32[3] = 0;
  v19 = vaddq_f32(vaddq_f32(v14, v15), v18);
  v20 = vmulq_n_f32(v12, *a4);
  v20.i32[3] = 0;
  v21 = vmulq_lane_f32(v13, *v8.f32, 1);
  v21.i32[3] = 0;
  v22 = vaddq_f32(v16, v19);
  v23 = vmulq_laneq_f32(v17, v9, 2);
  v23.i32[3] = 0;
  v24 = vmulq_n_f32(v12, *a5);
  v24.i32[3] = 0;
  v25 = vmulq_lane_f32(v13, *v10.f32, 1);
  v25.i32[3] = 0;
  v26 = vaddq_f32(v16, vaddq_f32(vaddq_f32(v20, v21), v23));
  v27 = vmulq_laneq_f32(v17, v11, 2);
  v27.i32[3] = 0;
  v28 = vaddq_f32(v16, vaddq_f32(vaddq_f32(v24, v25), v27));
  v29 = vminq_f32(vminq_f32(v22, v26), v28);
  v30 = vmaxq_f32(vmaxq_f32(v22, v26), v28);
  v31 = *(a1 + 80);
  v32 = vnegq_f32(v31);
  v32.i32[3] = 0;
  v33 = vorrq_s8(vcgtq_f32(v32, v30), vcgtq_f32(v29, v31));
  *v29.f32 = vmovn_s32(v33);
  v29.i64[1] = vextq_s8(v33, v33, 8uLL).u64[0];
  *v33.i8 = vmovn_s16(v29);
  if (vuzp1_s8(vdup_lane_s16(vtst_s32((v33.i64[0] & 0xFFFFFF00FFFFFFLL), (v33.i64[0] & 0xFFFFFF00FFFFFFLL)), 0), *v5.f32).u32[0] != -1)
  {
    if ((*(a1 + 385) & 1) == 0)
    {
      v35 = *(a1 + 336);
      v36 = *(a1 + 352);
      v37 = vmulq_n_f32(v35, *a3);
      v37.i32[3] = 0;
      v38 = vmulq_lane_f32(v36, *v5.f32, 1);
      v38.i32[3] = 0;
      v39 = *(a1 + 368);
      v40 = vmulq_laneq_f32(v39, v6, 2);
      v40.i32[3] = 0;
      v6 = vaddq_f32(vaddq_f32(v37, v38), v40);
      v41 = vmulq_n_f32(v35, *a4);
      v41.i32[3] = 0;
      v42 = vmulq_lane_f32(v36, *v8.f32, 1);
      v42.i32[3] = 0;
      v43 = vmulq_laneq_f32(v39, v9, 2);
      v43.i32[3] = 0;
      v7 = vaddq_f32(v41, v42);
      v44 = vmulq_n_f32(v35, *a5);
      v44.i32[3] = 0;
      v45 = vmulq_lane_f32(v36, *v10.f32, 1);
      v45.i32[3] = 0;
      v9 = vaddq_f32(v7, v43);
      v46 = vmulq_laneq_f32(v39, v11, 2);
      v46.i32[3] = 0;
      v11 = vaddq_f32(vaddq_f32(v44, v45), v46);
    }

    v47 = vmulq_f32(vaddq_f32(vaddq_f32(v6, v9), v11), vdupq_n_s32(0x3EAAAA9Fu));
    v47.i32[3] = 0;
    v195 = 0;
    v192 = v47;
    v196 = v6;
    v197 = v9;
    v198 = v11;
    v193 = 0x7F7FFFFF00000000;
    v194 = 0x57F7FFFFFLL;
    v186.i64[1] = &v192;
    v187 = a1 + 272;
    v186.i64[0] = &unk_1F5D21D08;
    v48 = *(a1 + 288);
    v188 = *(a1 + 272);
    v189 = v48;
    v49 = *(a1 + 320);
    v190 = *(a1 + 304);
    v191 = v49;
    v50 = vzip1q_s32(v188, v190);
    v51 = vzip1q_s32(v189, 0);
    v52 = vzip1q_s32(vzip2q_s32(v188, v190), vzip2q_s32(v189, 0));
    v188 = vzip1q_s32(v50, v51);
    v189 = vzip2q_s32(v50, v51);
    v190 = v52;
    v184 = &unk_1F5D21818;
    v185 = a1 + 96;
    v53 = *(a1 + 320);
    v202 = 0;
    v54 = vmulq_f32(v53, v53);
    v54.i64[0] = vpaddq_f32(v54, v54).u64[0];
    v58.i64[1] = 0;
    v55 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v54.f32, *v54.f32)), 0)), v53, xmmword_1E3047670);
    v201 = v55;
    v56 = vmulq_f32(v55, v55);
    v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
    v57 = vpadd_f32(*v56.f32, *v56.f32);
    *v58.i8 = vrsqrte_f32(v57);
    v59 = 4;
    do
    {
      *v58.i8 = vmul_f32(*v58.i8, vrsqrts_f32(vmul_f32(*v58.i8, *v58.i8), v57));
      --v59;
    }

    while (v59);
    v60 = vbsl_s8(vdup_lane_s32(vceqz_f32(v57), 0), v57, vmul_f32(v57, *v58.i8));
    v61 = vrecpe_f32(v60);
    v62 = 4;
    do
    {
      v61 = vmul_f32(v61, vrecps_f32(v60, v61));
      --v62;
    }

    while (v62);
    v63 = vmulq_n_f32(v55, v61.f32[0]);
    v63.i32[3] = 0;
    v64 = (a1 + 116);
    *v58.i8 = vld1_dup_f32(v64);
    v65 = vneg_f32(0x80000000800000);
    *v58.i8 = vmul_f32(vmin_f32(*v58.i8, v65), vdup_n_s32(0x3DCCCCCDu));
    v51.i32[0] = *(a1 + 112);
    v7.i32[0] = -*(a1 + 128);
    v66 = vdup_lane_s32(vand_s8(*v51.i8, *v7.f32), 0);
    v67 = vmax_f32(*v58.i8, vdup_n_s32(0x358637BDu));
    v68 = vadd_f32(v66, 0);
    v69 = vdup_n_s32(0x3F7FF141u);
    v58.i32[0] = -1;
    v181 = v58;
    while (1)
    {
      v183 = v63;
      v70 = v65;
      v200 = v55;
      v71 = vnegq_f32(v55);
      v71.i32[3] = 0;
      v199 = v71;
      *v72.i64 = physx::Gu::RelativeConvex<physx::Gu::TriangleV>::support(&v186, &v199);
      v182 = v72;
      *v73.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(&v184, &v201);
      v74 = v73;
      v55 = vsubq_f32(v182, v73);
      v75 = vmulq_f32(v183, v55);
      v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
      v76 = vpadd_f32(*v75.f32, *v75.f32);
      v77 = vcgt_f32(v76, v66);
      if ((vmvn_s8(v77).u8[0] & 1) == 0)
      {
        return 1;
      }

      v78 = v202;
      if (vuzp1_s8(vdup_lane_s16(vand_s8(v77, vcgt_f32(v76, vmul_f32(v70, v69))), 0), *v55.f32).u32[0] == -1)
      {
        if (v202 == 3)
        {
          v199.i64[0] = 0;
          v203 = 0;
          physx::Gu::barycentricCoordinates(&v201, &v210, &v211, v212, &v199, &v203);
        }

        return 1;
      }

      *(&v207 + v202) = v182;
      *(&v204 + v78) = v74;
      v202 = v78 + 1;
      *(&v210 + v78) = v55;
      if (v78 == 3)
      {
        physx::Gu::closestPtPointTetrahedron(&v210, &v207, &v204, &v202);
        goto LABEL_48;
      }

      if (v78 != 2)
      {
        if (v78 != 1)
        {
          goto LABEL_48;
        }

        v55 = v210;
        v79 = vsubq_f32(v211, v210);
        v80 = vmulq_f32(v79, v79);
        v80.i64[0] = vpaddq_f32(v80, v80).u64[0];
        v81 = vpadd_f32(*v80.f32, *v80.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v81), 0), *v210.f32).u32[0] != -1)
        {
          v82 = vnegq_f32(v210);
          v82.i32[3] = 0;
          v83 = vmulq_f32(v82, v79);
          v83.i64[0] = vpaddq_f32(v83, v83).u64[0];
          v84 = vpadd_f32(*v83.f32, *v83.f32);
          v85 = vrecpe_f32(v81);
          v86 = 4;
          do
          {
            v85 = vmul_f32(v85, vrecps_f32(v81, v85));
            --v86;
          }

          while (v86);
          v87 = vmul_f32(v84, v85);
          __asm { FMOV            V3.2S, #1.0 }

          v55 = vmlaq_n_f32(v210, v79, vmax_f32(vmin_f32(v87, _D3), 0).f32[0]);
LABEL_32:
          v55.i64[1] = vextq_s8(v55, v55, 8uLL).u32[0];
          goto LABEL_48;
        }

LABEL_33:
        v202 = 1;
        goto LABEL_48;
      }

      v55 = v210;
      v93 = vsubq_f32(v211, v210);
      v94 = vsubq_f32(v212[0], v210);
      v96 = vmls_f32(vmul_f32(*v93.f32, *&vextq_s8(v94, v94, 4uLL)), *&vextq_s8(v93, v93, 4uLL), *v94.f32);
      *v95.f32 = vext_s8(v96, vmls_f32(vmul_f32(*&vextq_s8(v93, v93, 8uLL), *v94.f32), *v93.f32, *&vextq_s8(v94, v94, 8uLL)), 4uLL);
      v96.i32[1] = 0;
      v202 = 3;
      v97 = vpadd_f32(vmul_f32(*v95.f32, *v95.f32), vmul_f32(v96.u32[0], v96.u32[0]));
      v98 = vpadd_f32(v97, v97);
      if (v98.f32[0] <= 0.00000011921)
      {
        v202 = 2;
        v135 = vmulq_f32(v93, v93);
        v135.i64[0] = vpaddq_f32(v135, v135).u64[0];
        v136 = vpadd_f32(*v135.f32, *v135.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v136), 0), *v210.f32).u32[0] != -1)
        {
          v137 = vnegq_f32(v210);
          v137.i32[3] = 0;
          v138 = vmulq_f32(v137, v93);
          v138.i64[0] = vpaddq_f32(v138, v138).u64[0];
          v139 = vpadd_f32(*v138.f32, *v138.f32);
          v140 = vrecpe_f32(v136);
          v141 = 4;
          do
          {
            v140 = vmul_f32(v140, vrecps_f32(v136, v140));
            --v141;
          }

          while (v141);
          v142 = vmul_f32(v139, v140);
          __asm { FMOV            V2.2S, #1.0 }

          v55 = vmlaq_n_f32(v210, v93, vmax_f32(vmin_f32(v142, _D2), 0).f32[0]);
          goto LABEL_32;
        }

        goto LABEL_33;
      }

      *&v95.u32[2] = v96;
      v99 = vextq_s8(v211, v211, 8uLL).u64[0];
      v100 = vextq_s8(v212[0], v212[0], 8uLL).u64[0];
      v101 = vextq_s8(v212[0], v212[0], 4uLL).u64[0];
      v102 = vextq_s8(v211, v211, 4uLL).u64[0];
      v103 = vmls_f32(vmul_f32(*v211.f32, v101), v102, *v212[0].f32);
      *v104.f32 = vext_s8(v103, vmls_f32(vmul_f32(v99, *v212[0].f32), *v211.f32, v100), 4uLL);
      v104.i64[1] = v103.u32[0];
      v105 = vextq_s8(v210, v210, 8uLL).u64[0];
      v106 = vextq_s8(v210, v210, 4uLL).u64[0];
      v107 = vmls_f32(vmul_f32(v106, *v212[0].f32), v101, *v210.f32);
      *v108.f32 = vext_s8(v107, vmls_f32(vmul_f32(*v210.f32, v100), *v212[0].f32, v105), 4uLL);
      v108.i64[1] = v107.u32[0];
      v109 = vmls_f32(vmul_f32(*v210.f32, v102), v106, *v211.f32);
      *v110.f32 = vext_s8(v109, vmls_f32(vmul_f32(v105, *v211.f32), *v210.f32, v99), 4uLL);
      v110.i64[1] = v109.u32[0];
      v111 = vmulq_f32(v104, v95);
      v111.i64[0] = vpaddq_f32(v111, v111).u64[0];
      v112 = vpadd_f32(*v111.f32, *v111.f32);
      v113 = vmulq_f32(v108, v95);
      v113.i64[0] = vpaddq_f32(v113, v113).u64[0];
      v114 = vpadd_f32(*v113.f32, *v113.f32);
      v115 = vmulq_f32(v110, v95);
      v115.i64[0] = vpaddq_f32(v115, v115).u64[0];
      v116 = vpadd_f32(*v115.f32, *v115.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v114), vcgez_f32(v112)), vcgez_f32(v116)), 0), *v210.f32).u32[0] == -1)
      {
        v144 = vmulq_f32(v210, v95);
        v145 = vrecpe_f32(v98);
        v146 = 4;
        do
        {
          v145 = vmul_f32(v145, vrecps_f32(v98, v145));
          --v146;
        }

        while (v146);
        v147 = vpaddq_f32(v144, v144).u64[0];
        v55 = vmulq_n_f32(v95, vmul_f32(v145, vpadd_f32(v147, v147)).f32[0]);
        v55.i32[3] = 0;
        goto LABEL_48;
      }

      v117 = vnegq_f32(v210);
      v117.i32[3] = 0;
      v118 = vnegq_f32(v211);
      v118.i32[3] = 0;
      v119 = vmulq_f32(v117, v93);
      v119.i64[0] = vpaddq_f32(v119, v119).u64[0];
      v120 = vpadd_f32(*v119.f32, *v119.f32);
      v121 = vmulq_f32(v93, v118);
      v121.i64[0] = vpaddq_f32(v121, v121).u64[0];
      v122 = vpadd_f32(*v121.f32, *v121.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v116), vand_s8(vclez_f32(v122), vcgez_f32(v120))), 0), *v210.f32).u32[0] == -1)
      {
        v148 = vsub_f32(v120, v122);
        v149 = vrecpe_f32(v148);
        v150 = 4;
        do
        {
          v149 = vmul_f32(v149, vrecps_f32(v148, v149));
          --v150;
        }

        while (v150);
        v134 = 0;
        v55 = vmlaq_n_f32(v210, v93, vmul_f32(v120, vbsl_s8(vcgt_f32(vabs_f32(v148), 0x3400000034000000), v149, 0)).f32[0]);
        v55.i64[1] = vextq_s8(v55, v55, 8uLL).u32[0];
        v133 = 2;
      }

      else
      {
        v123 = vnegq_f32(v212[0]);
        v123.i32[3] = 0;
        v124 = vmulq_f32(v118, v94);
        v124.i64[0] = vpaddq_f32(v124, v124).u64[0];
        v125 = vpadd_f32(*v124.f32, *v124.f32);
        v126 = vmulq_f32(v93, v123);
        v126.i64[0] = vpaddq_f32(v126, v126).u64[0];
        v127 = vpadd_f32(*v126.f32, *v126.f32);
        v128 = vmulq_f32(v94, v123);
        v128.i64[0] = vpaddq_f32(v128, v128).u64[0];
        v129 = vpadd_f32(*v128.f32, *v128.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v125, v122), vcge_f32(v127, v129)), vclez_f32(v112)), 0), *v210.f32).u32[0] == -1)
        {
          v154 = vsub_f32(v125, v122);
          v155 = vadd_f32(v154, vsub_f32(v127, v129));
          v156 = vrecpe_f32(v155);
          v157 = 4;
          do
          {
            v156 = vmul_f32(v156, vrecps_f32(v155, v156));
            --v157;
          }

          while (v157);
          v158 = vmlaq_n_f32(v211, vsubq_f32(v212[0], v211), vmul_f32(v154, vbsl_s8(vcgt_f32(vabs_f32(v155), 0x3400000034000000), v156, 0)).f32[0]);
          v133 = 2;
          v151 = v206;
          v158.i64[1] = vextq_s8(v158, v158, 8uLL).u32[0];
          v152 = v209;
          v153 = v212;
          v134 = 1;
          v55 = v158;
          goto LABEL_47;
        }

        v130 = vmulq_f32(v117, v94);
        v130.i64[0] = vpaddq_f32(v130, v130).u64[0];
        v131 = vpadd_f32(*v130.f32, *v130.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v114), vand_s8(vclez_f32(v129), vcgez_f32(v131))), 0), *v210.f32).u32[0] == -1)
        {
          v159 = vsub_f32(v131, v129);
          v160 = vrecpe_f32(v159);
          v161 = 4;
          do
          {
            v160 = vmul_f32(v160, vrecps_f32(v159, v160));
            --v161;
          }

          while (v161);
          v134 = 0;
          v55 = vmlaq_n_f32(v210, v94, vmul_f32(v131, vbsl_s8(vcgt_f32(vabs_f32(v159), 0x3400000034000000), v160, 0)).f32[0]);
          v55.i64[1] = vextq_s8(v55, v55, 8uLL).u32[0];
          v133 = 2;
          v151 = v206;
          v152 = v209;
          v153 = v212;
          goto LABEL_47;
        }

        if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v131), vclez_f32(v120)), 0), *v210.f32).u32[0] == -1)
        {
          v134 = 0;
          v133 = 1;
        }

        else
        {
          *v55.f32 = vdup_lane_s16(vand_s8(vcge_f32(v122, v125), vcgez_f32(v122)), 0);
          *v55.f32 = vuzp1_s8(*v55.f32, *v55.f32);
          v132 = v55.i32[0];
          v133 = 1;
          v55 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v55, v181), 0), v211, v212[0]);
          if (v132 == -1)
          {
            v134 = 1;
          }

          else
          {
            v134 = 2;
          }
        }
      }

      v151 = &v205;
      v152 = &v208;
      v153 = &v211;
LABEL_47:
      v162 = *(&v207 + v134);
      v163 = *v153;
      v164 = *v152;
      v165 = *(&v204 + v134);
      v166 = *v151;
      v210 = *(&v210 + v134);
      v211 = v163;
      v207 = v162;
      v208 = v164;
      v204 = v165;
      v205 = v166;
      v202 = v133;
LABEL_48:
      v201 = v55;
      v167 = vmulq_f32(v55, v55);
      v167.i64[0] = vpaddq_f32(v167, v167).u64[0];
      v168 = vpadd_f32(*v167.f32, *v167.f32);
      v169 = vrsqrte_f32(v168);
      v170 = 4;
      do
      {
        v169 = vmul_f32(v169, vrsqrts_f32(vmul_f32(v169, v169), v168));
        --v170;
      }

      while (v170);
      v65 = vbsl_s8(vdup_lane_s32(vceqz_f32(v168), 0), v168, vmul_f32(v168, v169));
      v171 = vrecpe_f32(v65);
      v172 = 4;
      do
      {
        v171 = vmul_f32(v171, vrecps_f32(v65, v171));
        --v172;
      }

      while (v172);
      v63 = vmulq_n_f32(v55, v171.f32[0]);
      v63.i32[3] = 0;
      v173 = vcgt_f32(v70, v65);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v65, v67), v173), 0), *v55.f32).u32[0] != -1)
      {
        v174 = vdup_lane_s16(v173, 0);
        if (vuzp1_s8(v174, v174).u32[0] == -1)
        {
          goto LABEL_62;
        }

        v175 = (v186.i64[1] + 16);
        v176 = vld1_dup_f32(v175);
        v177 = (v185 + 16);
        v178 = vld1_dup_f32(v177);
        v179 = vbsl_s8(vdup_lane_s32(vcgtz_f32(v66), 0), v68, vmul_f32(vmin_f32(v176, v178), vdup_n_s32(0x3E4CCCCDu)));
        if (v202 == 3)
        {
          v199.i64[0] = 0;
          v203 = 0;
          physx::Gu::barycentricCoordinates(&v200, &v210, &v211, v212, &v199, &v203);
        }

        if ((vcgt_f32(vmax_f32(vsub_f32(v70, v68), 0), v179).u32[0] & 1) == 0)
        {
LABEL_62:
          result = 0;
          *(a1 + 384) = 1;
          return result;
        }

        return 1;
      }
    }
  }

  return 1;
}

uint64_t physx::Gu::SweepCapsuleMeshHitCallback::SweepCapsuleMeshHitCallback(uint64_t result, uint64_t a2, uint64_t a3, char a4, float *a5, uint64_t a6, _WORD *a7, char a8, float a9, float a10)
{
  *(result + 8) = 2;
  *(result + 12) = *a7;
  *(result + 14) = 0;
  *(result + 16) = a8;
  *(result + 20) = a10;
  *result = &unk_1F5D22770;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a9;
  *(result + 44) = 0x40000000;
  *(result + 48) = a9 + 0.001;
  *(result + 56) = a5;
  *(result + 64) = a6;
  *(result + 72) = a4;
  v10 = *a5 == a5[3] && a5[1] == a5[4] && a5[2] == a5[5];
  *(result + 73) = v10;
  *(a2 + 48) = a9;
  return result;
}

uint64_t physx::Gu::SweepCapsuleMeshHitCallback::processHit(uint64_t a1, uint64_t a2, float *a3, float32x2_t *a4, float32x2_t *a5, float *a6, double a7, float32x4_t a8, float32x4_t a9)
{
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  if (*(a1 + 16))
  {
    v15 = a5;
  }

  else
  {
    v15 = a4;
  }

  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v20 = *(a1 + 24);
  v19 = *(a1 + 32);
  v21 = *v19;
  v22 = *(v19 + 12);
  v23 = *(v19 + 24);
  v24 = *(v19 + 36);
  if (*(a1 + 16))
  {
    v25 = a4;
  }

  else
  {
    v25 = a5;
  }

  v26 = v25[1].f32[0];
  v27 = (((v12 * v21) + (v13 * v22)) + (v14 * v23)) + v24;
  v28 = v24 + (((v21 * v16) + (v22 * v17)) + (v23 * v18));
  v29 = *(v19 + 4);
  v30 = *(v19 + 16);
  v31 = vmul_n_f32(v30, v13);
  v32 = *(v19 + 28);
  v33 = *(v19 + 40);
  v34 = vadd_f32(vadd_f32(vmul_n_f32(v29, v16), vmul_n_f32(v30, v17)), vmul_n_f32(v32, v18));
  *a8.f32 = vadd_f32(vmul_f32(v29, *v25), vmul_lane_f32(v30, *v25, 1));
  a8.f32[0] = v33.f32[0] + (a8.f32[0] + (v26 * v32.f32[0]));
  v35 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(v29, v12), v31), vmul_n_f32(v32, v14)), v33);
  v30.i32[0] = *v19;
  *a9.f32 = vadd_f32(v33, v34);
  v36.i32[0] = vdup_lane_s32(v32, 1).u32[0];
  v36.i32[1] = *(v19 + 24);
  v37 = vadd_f32(vadd_f32(vrev64_s32(vmul_f32(v30, *v25)), vmul_f32(*(v19 + 8), *v25)), vmul_n_f32(v36, v26));
  v36.i32[0] = vdup_lane_s32(v33, 1).u32[0];
  v36.i32[1] = *(v19 + 36);
  v38 = vadd_f32(v36, v37);
  v85 = v27;
  v86 = v35;
  v87 = v28;
  v89 = __PAIR64__(a8.u32[0], v38.u32[1]);
  v88 = a9.i64[0];
  v90 = v38.i32[0];
  v80[0] = 0;
  v80[1] = 0;
  v81 = -1;
  v82 = 0;
  memset(v83, 0, sizeof(v83));
  v84 = 3.4028e38;
  v39 = *(v20 + 48);
  v40 = 1.0;
  if (v39 >= 1.0)
  {
    v40 = *(v20 + 48);
  }

  v41 = v40 * 0.001;
  v42 = v39 + v41;
  v43 = *(a1 + 56);
  if (*(a1 + 73) == 1)
  {
    v44 = v43[3].f32[0];
    v45 = *(a1 + 64);
    v46 = *(a1 + 12);
    v47 = *(a1 + 72);
    if ((v46 & 0x10) != 0)
    {
      goto LABEL_15;
    }

    v48 = vsub_f32(*a9.f32, v35);
    v49.i32[0] = vdup_lane_s32(v35, 1).u32[0];
    v49.f32[1] = v27;
    v50 = vsub_f32(v38, v49);
    v51 = a8.f32[0] - v35.f32[0];
    v52.i32[0] = vdup_lane_s32(v48, 1).u32[0];
    v52.f32[1] = v28 - v27;
    v53 = vdup_lane_s32(v50, 0);
    v53.f32[0] = v51;
    v54 = vmla_f32(vmul_f32(v53, vneg_f32(v52)), v50, v48);
    v55 = vmuls_lane_f32(-v48.f32[0], v50, 1) + ((v28 - v27) * v51);
    if ((v46 & 0x80) == 0 && (v47 & 1) == 0 && ((vmuls_lane_f32(v45->f32[1], v54, 1) + (v54.f32[0] * v45->f32[0])) + (v55 * v45[1].f32[0])) > 0.0)
    {
      return 1;
    }

    v77 = v54;
    v93 = 0;
    physx::Gu::closestPtPointTriangle(v43, &v85, &v87, &v89, &v93 + 1, &v93, &v91);
    if (((((v91.f32[1] - v43->f32[1]) * (v91.f32[1] - v43->f32[1])) + ((v91.f32[0] - v43->f32[0]) * (v91.f32[0] - v43->f32[0]))) + ((v92 - v43[1].f32[0]) * (v92 - v43[1].f32[0]))) > (v44 * v44))
    {
LABEL_15:
      v76 = (v46 & 0x80) != 0;
      v56 = 1;
      if ((physx::Gu::sweepSphereTriangles(1, &v85, v43, v45, 0, v80, &v78, v47, v44, v42, v76, SHIBYTE(v76), 0) & 1) == 0)
      {
        return v56;
      }
    }

    else
    {
      v58 = (COERCE_FLOAT(vmul_f32(v77, v77).i32[1]) + (v77.f32[0] * v77.f32[0])) + (v55 * v55);
      if (v58 <= 0.0)
      {
        v60 = 0;
        v61 = 0.0;
      }

      else
      {
        v59 = 1.0 / sqrtf(v58);
        v60 = vmul_n_f32(v77, v59);
        v61 = v55 * v59;
      }

      v78 = v60;
      v79 = v61;
      v82 = 1026;
      v62 = -v45[1].f32[0];
      *&v83[12] = vneg_f32(*v45);
      *&v83[20] = v62;
      v84 = 0.0;
    }
  }

  else
  {
    v57 = *(a1 + 64);
    v91.i16[0] = *(a1 + 12);
    v56 = 1;
    if (!physx::Gu::sweepCapsuleTriangles_Precise(1, &v85, v43, v57, 0, v80, &v78, &v91, v39 + v41, a8, a9, *(a1 + 72), 0))
    {
      return v56;
    }
  }

  v63 = v84;
  if (v84 <= *(a1 + 40))
  {
    v64 = -fabsf(((v78.f32[1] * *(*(a1 + 64) + 4)) + (v78.f32[0] * **(a1 + 64))) + (v79 * *(*(a1 + 64) + 8)));
    v65 = *(a1 + 48);
    if (v84 <= v65)
    {
      v66 = *(a1 + 48);
    }

    else
    {
      v66 = v84;
    }

    if (v66 < 1.0)
    {
      v66 = 1.0;
    }

    v67 = v66 * 0.001;
    if (v65 - (v66 * 0.001)) > v84 || ((v68 = *(a1 + 44), v69 = v65 + v67, v68 > v64) ? (v70 = v69 <= v84) : (v70 = 1), !v70 || (v68 == v64 ? (v71 = v84 < v65) : (v71 = 0), !v71 ? (v72 = 0) : (v72 = 1), v84 == 0.0 || (v72)))
    {
      *(a1 + 44) = v64;
      *a6 = v63 * *(a1 + 20);
      v73 = *(a1 + 48);
      if (v73 >= v63)
      {
        v73 = v63;
      }

      *(a1 + 48) = v73;
      v74 = *(a1 + 24);
      *(v74 + 20) = v82;
      *(v74 + 48) = v63;
      *(v74 + 40) = *&v83[16];
      *(v74 + 24) = *v83;
      *(v74 + 16) = *(a2 + 16);
      *(a1 + 14) = 1;
      if (v84 == 0.0)
      {
        v56 = 0;
        *(a1 + 15) = 1;
        return v56;
      }

      if ((*(a1 + 12) & 0x40) != 0)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t physx::Gu::SweepCapsuleMeshHitCallback::finalizeHit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 14);
  if (v4 == 1)
  {
    if (*(a1 + 15) == 1)
    {
      if ((*(a1 + 12) & 0x200) == 0)
      {
        v7 = *(a1 + 64);
        *(a2 + 20) = 1026;
LABEL_9:
        *(a2 + 48) = 0;
        v10 = -v7[1].f32[0];
        *(a2 + 36) = vneg_f32(*v7);
        *(a2 + 44) = v10;
        return v4;
      }

      v8 = physx::Gu::computeCapsule_TriangleMeshMTD(a4);
      v7 = *(a1 + 64);
      *(a2 + 20) = 1026;
      if ((v8 & 1) == 0)
      {
        goto LABEL_9;
      }

      if (*(a2 + 48) == 0.0)
      {
        v9 = -v7[1].f32[0];
        *(a2 + 36) = vneg_f32(*v7);
        *(a2 + 44) = v9;
      }
    }

    *(a2 + 20) = 1027;
  }

  return v4;
}

uint64_t sweepCapsule_MeshGeom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 *a8)
{
  v8 = physx::Gu::gMidphaseCapsuleSweepTable[*(*(a1 + 40) + 8) - 3];
  v10 = *a8;
  return v8();
}

uint64_t physx::Gu::SweepBoxMeshHitCallback::SweepBoxMeshHitCallback(uint64_t result, int a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, float32x2_t *a7, uint64_t a8, int32x2_t a9, float a10, float a11, unsigned __int16 *a12, char a13)
{
  *(result + 8) = a2;
  *(result + 12) = *a12;
  *(result + 16) = a13;
  *(result + 20) = a11;
  *result = &unk_1F5D22798;
  *(result + 24) = a3;
  *(result + 32) = a9.i32[0];
  *(result + 48) = a5;
  *(result + 56) = a7;
  *(result + 64) = a8;
  *(result + 72) = a10;
  *(result + 176) = a4;
  *&v13 = *a6;
  *(&v13 + 1) = *(a6 + 8);
  *(result + 144) = v13;
  *(result + 40) = vdup_lane_s32(a9, 0);
  *(result + 36) = a9.i32[0];
  v14 = a7[1].f32[0];
  v15 = 1.0 / v14;
  _ZF = v14 == 0.0;
  v17 = 0.0;
  if (!_ZF)
  {
    v17 = v15;
  }

  __asm { FMOV            V3.2S, #1.0 }

  *(result + 164) = vbic_s8(vdiv_f32(_D3, *a7), vceqz_f32(*a7));
  *(result + 172) = v17;
  return result;
}

uint64_t physx::Gu::SweepBoxMeshHitCallback::processHit(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5, float *a6, double a7, double a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, double a13, int32x4_t a14)
{
  if ((*(a1 + 12) & 0x100) == 0)
  {
    v103 = 0;
    v20 = *(a1 + 24);
    v21 = *v20;
    v22 = *(v20 + 12);
    v23 = *(v20 + 24);
    v24 = *(v20 + 36);
    v25 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v20, COERCE_FLOAT(*a3->f32)), v22, *a3, 1), v23, *a3->f32, 2), v24);
    v26 = v25;
    v26.i32[3] = 0;
    if (*(a1 + 16))
    {
      v27 = a5;
    }

    else
    {
      v27 = a4;
    }

    v28 = vaddq_f32(v24, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*v27->f32)), v22, *v27, 1), v23, *v27->f32, 2));
    v29 = v28;
    v29.i32[3] = 0;
    if (*(a1 + 16))
    {
      v30 = a4;
    }

    else
    {
      v30 = a5;
    }

    v31 = vaddq_f32(v24, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*v30->f32)), v22, *v30, 1), v23, *v30->f32, 2));
    v32 = v31;
    v32.i32[3] = 0;
    if ((*(a1 + 176) & 1) != 0 || (v33 = vsubq_f32(v32, v29), v34 = vsubq_f32(v26, v29), v35 = vmls_f32(vmul_f32(*&vextq_s8(v34, v34, 4uLL), *v33.f32), *&vextq_s8(v33, v33, 4uLL), *v34.i8), *v33.f32 = vext_s8(v35, vmls_f32(vmul_f32(*v34.i8, *&vextq_s8(v33, v33, 8uLL)), *v33.f32, *&vextq_s8(v34, v34, 8uLL)), 4uLL), v33.i64[1] = v35.u32[0], v23 = *(a1 + 144), v36 = vmulq_f32(v33, v23), v36.i64[0] = vpaddq_f32(v36, v36).u64[0], vpadd_f32(*v36.f32, *v36.f32).f32[0] < 0.0))
    {
      v83 = v31;
      v84 = v28;
      v85 = v25;
      v37 = *(a1 + 48);
      v23.i64[0] = *(v37 + 48);
      v38 = v23;
      v38.i32[2] = *(v37 + 56);
      v39 = vdup_laneq_s32(v38, 2);
      v38.i32[3] = 0;
      v101 = v38;
      v102 = 0u;
      v99 = 3;
      v100 = 0;
      v95[0] = 0;
      v95[1] = 0;
      v40 = vpmin_f32(v39, *v23.f32);
      v40.f32[0] = vpmin_f32(v40, v40).f32[0];
      v96 = 0.15 * v40.f32[0];
      v97 = 0.05 * v40.f32[0];
      v98 = 0.05 * v40.f32[0];
      LOBYTE(v91) = 0;
      v41 = vmulq_f32(vaddq_f32(vaddq_f32(v26, v29), v32), vdupq_n_s32(0x3EAAAA9Fu));
      v41.i32[3] = 0;
      v89 = v41;
      v92 = v26;
      v93 = v29;
      v94 = v32;
      v42.i32[1] = 2139095039;
      v90.i64[0] = 0x7F7FFFFF00000000;
      v90.i64[1] = 0x57F7FFFFFLL;
      v88[1] = &v89;
      v87[1] = v95;
      v88[0] = &unk_1F5D21A20;
      v87[0] = &unk_1F5D21A80;
      v86 = v41;
      v42.i32[0] = *(a1 + 72);
      v105 = 0u;
      v106 = 0u;
      v104 = 0;
      v43 = physx::Gu::gjkRaycast<physx::Gu::LocalConvex<physx::Gu::TriangleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(v88, v87, &v86, v42, &v103, &v102, (a1 + 144), &v104, &v105, &v106);
      if (!v43)
      {
        return !v43;
      }

      v44 = v105;
      v45 = v106;
      *(a1 + 14) = 1;
      *(a1 + 112) = v45;
      *(a1 + 160) = *(a2 + 16);
      v46 = v103;
      if (vcge_f32(v103, v104).u8[0])
      {
        *(a1 + 15) = 1;
        *a6 = 0.0;
        *(a1 + 40) = v46;
        *(a1 + 32) = 0;
        v47 = *(a1 + 64);
        v44.i64[0] = *v47;
        *&v48 = vnegq_f32(v44).u64[0];
        *(&v48 + 2) = -*(v47 + 8);
        HIDWORD(v48) = 0;
        *(a1 + 128) = v48;
        return !v43;
      }

      v78 = *(a1 + 32) * v104.f32[0];
      v79 = vmulq_n_f32(*(a1 + 144), v104.f32[0]);
      v80 = vmul_f32(v104, *(a1 + 40));
      *(a1 + 32) = v78;
      v79.i32[3] = 0;
      *(a1 + 40) = v80;
      *(a1 + 128) = v44;
      *(a1 + 144) = v79;
      v81 = v78 * *(a1 + 20);
      if (v81 < *a6)
      {
        *a6 = v81;
      }

      v82 = v85;
      v82.i32[3] = v84.i32[0];
      *(a1 + 76) = v82;
      *(a1 + 92) = vextq_s8(vextq_s8(v84, v84, 0xCuLL), v83, 8uLL);
      *(a1 + 108) = v83.i32[2];
    }

    return 1;
  }

  v50 = *(a1 + 24);
  v51 = *(v50 + 20);
  a12.i64[0] = *(v50 + 28);
  a10.i32[0] = *(v50 + 36);
  a9.i64[0] = *(v50 + 40);
  if (*(a1 + 16))
  {
    v52 = a5;
  }

  else
  {
    v52 = a4;
  }

  *v15.f32 = *v52;
  a14.i32[0] = v52[1].i32[0];
  if (*(a1 + 16))
  {
    v53 = a4;
  }

  else
  {
    v53 = a5;
  }

  *v16.i8 = *v53;
  *v54.f32 = *a3;
  v54.i32[3] = vdup_lane_s32(*&v15, 0).i32[1];
  v54.i32[2] = *a3;
  *v55.f32 = vrev64_s32(*a3);
  v55.i64[1] = __PAIR64__(v15.u32[1], v55.u32[0]);
  a11.i32[0] = *(v50 + 24);
  v56 = vextq_s8(vextq_s8(a11, a11, 4uLL), a12, 0xCuLL);
  v56.i32[3] = v56.i32[0];
  v14.i32[0] = a3[1].i32[0];
  v57 = v14;
  v57.i32[1] = a14.i32[0];
  v58 = vzip1q_s32(v57, v57);
  v58.i32[2] = v14.i32[0];
  v59 = vmulq_f32(v56, v58);
  v60 = vextq_s8(vextq_s8(a10, a10, 4uLL), a9, 0xCuLL);
  v60.i32[3] = v60.i32[0];
  v61 = *(v50 + 4);
  v62 = (vmuls_lane_f32(COERCE_FLOAT(*v53), *v61.f32, 1) + vmuls_lane_f32(v51, *v53, 1)) + vmuls_lane_f32(v53[1].f32[0], *a12.i8, 1);
  v63 = vzip1q_s32(v16, v15);
  *&v15.u32[2] = *v53;
  v64 = vmulq_f32(v61, v63);
  v65 = vuzp2q_s32(v61, v61);
  v66 = vzip2q_s32(v61, vuzp1q_s32(v61, v61)).u64[0];
  v61.i32[1] = *(v50 + 20);
  v61.i32[2] = *v50;
  v67 = vmulq_f32(v61, v15);
  v68 = v64;
  v68.i32[0] = v64.i32[3];
  v68.i32[3] = v64.i32[0];
  v64.i64[0] = *(v50 + 28);
  v64.i64[1] = __PAIR64__(v64.u32[0], a11.u32[0]);
  a14.i32[1] = v53[1].i32[0];
  v69 = vmulq_f32(v64, vzip1q_s32(a14, a14));
  v70.i64[0] = *(v50 + 40);
  v70.i64[1] = __PAIR64__(a9.u32[0], a10.u32[0]);
  v65.i32[0] = *v50;
  v65.i32[3] = *v50;
  v71.i64[0] = v66;
  v71.i64[1] = __PAIR64__(v66, LODWORD(v51));
  v89 = vaddq_f32(v60, vaddq_f32(vaddq_f32(vmulq_f32(v65, v54), vmulq_f32(v71, v55)), v59));
  v90 = vaddq_f32(v70, vaddq_f32(vaddq_f32(v68, v67), v69));
  v91 = *&a9.i32[1] + v62;
  LODWORD(v95[0]) = 2139095039;
  v72 = physx::Gu::triBoxSweepTestBoxSpace(v89.f32, (*(a1 + 48) + 48), *(a1 + 56), (a1 + 164), v95, (*(a1 + 176) & 1) == 0, *(a1 + 32));
  result = v72 == 0;
  if (v72)
  {
    v73 = *v95;
    if (*v95 <= *(a1 + 32))
    {
      *(a1 + 32) = v95[0];
      *a6 = v73 * *(a1 + 20);
      v74 = *(a1 + 64);
      v75 = v89;
      v76 = v90;
      v77 = v89;
      v77.i32[3] = 0;
      *(a1 + 14) = 1;
      *(a1 + 112) = v77;
      v77.i64[0] = *v74;
      v77.i64[0] = vnegq_f32(v77).u64[0];
      v77.f32[2] = -*(v74 + 8);
      v77.i32[3] = 0;
      *(a1 + 128) = v77;
      *(a1 + 160) = *(a2 + 16);
      *(a1 + 76) = v75;
      *(a1 + 92) = v76;
      *(a1 + 108) = v91;
      if (v73 == 0.0)
      {
        *(a1 + 15) = 1;
        return result;
      }
    }

    return 1;
  }

  return result;
}

uint64_t physx::Gu::SweepBoxMeshHitCallback::finalizeHit(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, uint64_t a12, float32x4_t *a13, float32x2_t *a14, int a15, char a16)
{
  v16 = *(a1 + 14);
  if (v16 == 1)
  {
    v19 = *(a1 + 112);
    v20 = *(a1 + 128);
    *(a2 + 16) = *(a1 + 160);
    if (*(a1 + 15) == 1)
    {
      if ((*(a1 + 12) & 0x200) == 0)
      {
        v21 = *(a1 + 64);
        *(a2 + 20) = 1026;
LABEL_15:
        *(a2 + 48) = 0;
        v54 = -v21[1].f32[0];
        *(a2 + 36) = vneg_f32(*v21);
        *(a2 + 44) = v54;
        return v16;
      }

      v51 = physx::Gu::computeBox_TriangleMeshMTD(a3);
      v21 = *(a1 + 64);
      *(a2 + 20) = 1026;
      if ((v51 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (*(a2 + 48) == 0.0)
      {
        v52 = -v21[1].f32[0];
        *(a2 + 36) = vneg_f32(*v21);
        *(a2 + 44) = v52;
      }

      v53 = 1027;
LABEL_29:
      *(a2 + 20) = v53;
      return v16;
    }

    v25 = *(a1 + 32);
    *(a2 + 48) = v25;
    *(a2 + 20) = 1024;
    v26 = *(a1 + 12);
    if ((v26 & 0x100) != 0)
    {
      if ((v26 & 3) != 0)
      {
        v55 = *(a1 + 48);
        physx::Gu::computeBoxTriImpactData(&v71, &v69, (v55 + 48), a14, a1 + 76, v25, *v19.i64, a6, v20, a8, a9, a10, a11);
        if ((v26 & 2) != 0)
        {
          v56 = v69.f32[1];
          v57 = v69.f32[0];
          v58 = v70;
          v59 = sqrtf(((v69.f32[1] * v69.f32[1]) + (v69.f32[0] * v69.f32[0])) + (v58 * v58));
          if (v59 > 0.0)
          {
            v60 = 1.0 / v59;
            v57 = v69.f32[0] * v60;
            v56 = v69.f32[1] * v60;
            v58 = v70 * v60;
          }

          v61 = a14->f32[1];
          v62 = a14[1].f32[0];
          if ((((v56 * v61) + (v57 * a14->f32[0])) + (v58 * v62)) > 0.0)
          {
            v58 = -v58;
            v56 = -v56;
            v57 = -v57;
          }

          if (a15)
          {
            if ((a16 & 1) == 0)
            {
              v63 = *(a1 + 76);
              v64 = *(a1 + 80);
              v65 = *(a1 + 84);
              if ((((v61 * (((*(a1 + 96) - v65) * (*(a1 + 100) - v63)) - ((*(a1 + 88) - v63) * (*(a1 + 108) - v65)))) + ((((*(a1 + 92) - v64) * (*(a1 + 108) - v65)) - ((*(a1 + 96) - v65) * (*(a1 + 104) - v64))) * a14->f32[0])) + ((((*(a1 + 88) - v63) * (*(a1 + 104) - v64)) - ((*(a1 + 92) - v64) * (*(a1 + 100) - v63))) * v62)) > 0.0)
              {
                v57 = -v57;
                v56 = -v56;
                v58 = -v58;
              }
            }
          }

          v66 = ((v57 * *(v55 + 8)) + (v56 * *(v55 + 20))) + (v58 * *(v55 + 32));
          *(a2 + 36) = vadd_f32(vadd_f32(vmul_n_f32(*v55, v57), vmul_n_f32(*(v55 + 12), v56)), vmul_n_f32(*(v55 + 24), v58));
          *(a2 + 44) = v66;
          *(a2 + 20) |= 2u;
        }

        if (v26)
        {
          v67 = (((v71.f32[0] * *(v55 + 8)) + (v71.f32[1] * *(v55 + 20))) + (v72 * *(v55 + 32))) + *(v55 + 44);
          *(a2 + 24) = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*v55, v71.f32[0]), vmul_n_f32(*(v55 + 12), v71.f32[1])), vmul_n_f32(*(v55 + 24), v72)), *(v55 + 36));
          *(a2 + 32) = v67;
          v53 = *(a2 + 20) | 1;
          goto LABEL_29;
        }
      }
    }

    else
    {
      v27.i64[0] = a13[1].i64[0];
      v27.i64[1] = a13[1].u32[2];
      v28 = *a13;
      *(a2 + 20) = 1027;
      v29 = vnegq_f32(v20);
      v29.i32[3] = 0;
      if (a15)
      {
        if ((a16 & 1) == 0)
        {
          v30 = *(a1 + 76);
          v31 = *(a1 + 80);
          v32 = *(a1 + 84);
          if ((((a14->f32[1] * (((*(a1 + 96) - v32) * (*(a1 + 100) - v30)) - ((*(a1 + 88) - v30) * (*(a1 + 108) - v32)))) + ((((*(a1 + 92) - v31) * (*(a1 + 108) - v32)) - ((*(a1 + 96) - v32) * (*(a1 + 104) - v31))) * a14->f32[0])) + ((((*(a1 + 88) - v30) * (*(a1 + 104) - v31)) - ((*(a1 + 92) - v31) * (*(a1 + 100) - v30))) * a14[1].f32[0])) > 0.0)
          {
            v29 = vnegq_f32(v29);
            v29.i32[3] = 0;
          }
        }
      }

      v33 = v28;
      v33.i32[3] = 0;
      v34 = vdupq_laneq_s32(v28, 3).u64[0];
      LODWORD(v35) = vmla_f32(0xBF000000BF000000, v34, v34).u32[0];
      v36 = vmulq_n_f32(v29, v35);
      v36.i32[3] = 0;
      v37 = vextq_s8(v33, v33, 8uLL).u64[0];
      v38 = vext_s8(*v28.f32, v37, 4uLL);
      v39 = vmls_f32(vmul_f32(*v28.f32, *&vextq_s8(v29, v29, 4uLL)), v38, *v29.f32);
      *v40.f32 = vext_s8(v39, vmls_f32(vmul_f32(v37, *v29.f32), *v28.f32, *&vextq_s8(v29, v29, 8uLL)), 4uLL);
      v40.i64[1] = v39.u32[0];
      v41 = vmlaq_laneq_f32(v36, v40, v28, 3);
      v41.i64[1] = vextq_s8(v41, v41, 8uLL).u32[0];
      v42 = vmulq_f32(v33, v29);
      v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
      v43 = vmlaq_n_f32(v41, v33, vpadd_f32(*v42.f32, *v42.f32).f32[0]);
      v44 = vaddq_f32(v43, v43);
      v45 = vmulq_n_f32(v19, v35);
      v45.i32[3] = 0;
      *v40.f32 = vmls_f32(vmul_f32(*&vextq_s8(v19, v19, 4uLL), *v28.f32), v38, *v19.f32);
      *v46.f32 = vext_s8(*v40.f32, vmls_f32(vmul_f32(*v19.f32, v37), *v28.f32, *&vextq_s8(v19, v19, 8uLL)), 4uLL);
      v46.i64[1] = v40.u32[0];
      v47 = vmlaq_laneq_f32(v45, v46, v28, 3);
      v47.i64[1] = vextq_s8(v47, v47, 8uLL).u32[0];
      v48 = vmulq_f32(v19, v33);
      v48.i64[0] = vpaddq_f32(v48, v48).u64[0];
      v49 = vmlaq_n_f32(v47, v33, vpadd_f32(*v48.f32, *v48.f32).f32[0]);
      v49.i64[1] = vextq_s8(v49, v49, 8uLL).u32[0];
      *(a2 + 40) = vextq_s8(v44, v44, 4uLL).u64[0];
      v48.i64[0] = 0x4000000040000000;
      v48.i64[1] = 0x4000000040000000;
      v50 = vmlaq_f32(v27, v48, v49);
      v50.i32[3] = v44.i32[0];
      *(a2 + 24) = v50;
    }
  }

  return v16;
}

uint64_t sweepBox_MeshGeom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 *a8)
{
  v8 = physx::Gu::gMidphaseBoxSweepTable[*(*(a1 + 40) + 8) - 3];
  v10 = *a8;
  return v8();
}

BOOL physx::Gu::SweepConvexMeshHitCallback::processHit(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, float *a6, int32x2_t a7)
{
  v10 = *(a1 + 336);
  v11 = *v10;
  v12 = v10[1];
  v13 = a3[1];
  v14 = v10[2];
  v15 = v10[3];
  v16 = v10[4];
  v17 = v10[5];
  v18 = (*a3 * *v10) + (v13 * v15);
  v19 = (*a3 * v12) + (v13 * v16);
  v20 = (*a3 * v14) + (v13 * v17);
  v21 = a3[2];
  v22 = v10[6];
  v23 = v10[7];
  v24 = v10[8];
  v25 = v18 + (v21 * v22);
  v26 = v19 + (v21 * v23);
  v27 = v20 + (v21 * v24);
  if (*(a1 + 16))
  {
    v28 = a5;
  }

  else
  {
    v28 = a4;
  }

  v29 = v28[1];
  v30 = (v11 * *v28) + (v15 * v29);
  v31 = (v12 * *v28) + (v16 * v29);
  v32 = (v14 * *v28) + (v17 * v29);
  v33 = v28[2];
  v34 = v30 + (v22 * v33);
  v35 = v31 + (v23 * v33);
  v36 = v32 + (v24 * v33);
  if (*(a1 + 16))
  {
    v37 = a4;
  }

  else
  {
    v37 = a5;
  }

  v38 = v37[1];
  v39 = (v11 * *v37) + (v15 * v38);
  v40 = (v12 * *v37) + (v16 * v38);
  v41 = (v14 * *v37) + (v17 * v38);
  v42 = v37[2];
  v43 = v22 * v42;
  v44 = v23 * v42;
  v45 = v24 * v42;
  v46 = v39 + v43;
  v47 = v40 + v44;
  v48 = v41 + v45;
  a7.i32[0] = *(a1 + 456);
  v49 = *(a2 + 16);
  if ((*(a1 + 461) & 1) == 0 && ((((((v36 - v27) * (v46 - v34)) - ((v34 - v25) * (v48 - v36))) * *(a1 + 448)) + ((((v35 - v26) * (v48 - v36)) - ((v36 - v27) * (v47 - v35))) * *(a1 + 444))) + ((((v34 - v25) * (v47 - v35)) - ((v35 - v26) * (v46 - v34))) * *(a1 + 452))) <= 0.0)
  {
    return 1;
  }

  v7.i32[0] = *(a1 + 392);
  v111 = v7;
  v132 = 0u;
  v131 = 0;
  v50 = *(a1 + 240);
  v51 = *(a1 + 256);
  v119 = v26;
  v120 = v25;
  v52 = vmulq_n_f32(v50, v25);
  v52.i32[3] = 0;
  v53 = vmulq_n_f32(v51, v26);
  v53.i32[3] = 0;
  v55 = *(a1 + 272);
  v54 = *(a1 + 288);
  v117 = v36;
  v118 = v27;
  v56 = vmulq_n_f32(v55, v27);
  v56.i32[3] = 0;
  v57 = vaddq_f32(vaddq_f32(v52, v53), v56);
  v114 = v35;
  v115 = v34;
  v58 = vmulq_n_f32(v50, v34);
  v58.i32[3] = 0;
  v59 = vmulq_n_f32(v51, v35);
  v59.i32[3] = 0;
  v60 = vaddq_f32(v54, v57);
  v61 = vmulq_n_f32(v55, v36);
  v61.i32[3] = 0;
  v112 = v47;
  v113 = v46;
  v62 = vmulq_n_f32(v50, v46);
  v62.i32[3] = 0;
  v63 = vmulq_n_f32(v51, v47);
  v63.i32[3] = 0;
  v64 = vaddq_f32(v54, vaddq_f32(vaddq_f32(v58, v59), v61));
  v116 = v48;
  v65 = vmulq_n_f32(v55, v48);
  v65.i32[3] = 0;
  v66 = vaddq_f32(v54, vaddq_f32(vaddq_f32(v62, v63), v65));
  v127 = 0;
  v67 = vmulq_f32(vaddq_f32(v66, vaddq_f32(v60, v64)), vdupq_n_s32(0x3EAAAA9Fu));
  v67.i32[3] = 0;
  v124 = v67;
  v128 = v60;
  v129 = v64;
  v130 = v66;
  v125 = 0x7F7FFFFF00000000;
  v126 = 0x57F7FFFFFLL;
  v123[1] = &v124;
  v122[1] = a1 + 64;
  v123[0] = &unk_1F5D21A20;
  v122[0] = &unk_1F5D21818;
  v121 = vsubq_f32(v67, *(a1 + 64));
  v134 = 0u;
  v135 = 0u;
  v133 = 0;
  if (!physx::Gu::gjkRaycast<physx::Gu::LocalConvex<physx::Gu::TriangleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(v123, v122, &v121, a7, &v131, &v132, (a1 + 416), &v133, &v134, &v135))
  {
    return 1;
  }

  if (*&v131 >= v133.f32[0])
  {
    *(a1 + 15) = 1;
    *(a1 + 360) = v49;
    *(a1 + 364) = 1026;
    v109 = -*(a1 + 440);
    *(a1 + 380) = vneg_f32(*(a1 + 432));
    *(a1 + 388) = v109;
    *(a1 + 392) = 0;
    v68.i32[0] = 0;
    v70 = v119;
    v69 = v120;
    v72 = v117;
    v71 = v118;
    v104 = v115;
    v73 = v116;
    v105 = v113;
  }

  else
  {
    v68 = vmul_f32(v133, *(a1 + 400));
    v70 = v119;
    v69 = v120;
    v72 = v117;
    v71 = v118;
    v73 = v116;
    if ((vcgt_f32(vdup_lane_s32(v111, 0), v68).u8[0] & 1) == 0)
    {
      return 1;
    }

    v74 = v134;
    v75 = v135;
    v77 = *(a1 + 304);
    v76 = *(a1 + 320);
    v78 = v77;
    v78.i32[3] = 0;
    v79 = vdupq_laneq_s32(v77, 3).u64[0];
    *(a1 + 360) = v49;
    LODWORD(v80) = vmla_f32(0xBF000000BF000000, v79, v79).u32[0];
    v81 = vmulq_n_f32(v75, v80);
    v81.i32[3] = 0;
    v82 = vextq_s8(v78, v78, 8uLL).u64[0];
    v83 = vext_s8(*v77.f32, v82, 4uLL);
    v84 = vmls_f32(vmul_f32(*&vextq_s8(v75, v75, 4uLL), *v77.f32), v83, *v75.f32);
    *v85.f32 = vext_s8(v84, vmls_f32(vmul_f32(*v75.f32, v82), *v77.f32, *&vextq_s8(v75, v75, 8uLL)), 4uLL);
    v85.i64[1] = v84.u32[0];
    v86 = vmlaq_laneq_f32(v81, v85, v77, 3);
    v86.i64[1] = vextq_s8(v86, v86, 8uLL).u32[0];
    v87 = vmulq_f32(v75, v78);
    v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
    v88 = vmlaq_n_f32(v86, v78, vpadd_f32(*v87.f32, *v87.f32).f32[0]);
    v89 = vextq_s8(v88, v88, 8uLL).u32[0];
    v90 = vmulq_n_f32(v74, v80);
    v90.i32[3] = 0;
    v91 = vmls_f32(vmul_f32(*&vextq_s8(v74, v74, 4uLL), *v77.f32), v83, *v74.f32);
    *v92.f32 = vext_s8(v91, vmls_f32(vmul_f32(*v74.f32, v82), *v77.f32, *&vextq_s8(v74, v74, 8uLL)), 4uLL);
    v92.i64[1] = v91.u32[0];
    v93 = vmlaq_laneq_f32(v90, v92, v77, 3);
    v93.i64[1] = vextq_s8(v93, v93, 8uLL).u32[0];
    v94 = vmulq_f32(v74, v78);
    v94.i64[0] = vpaddq_f32(v94, v94).u64[0];
    v95 = vmlaq_n_f32(v93, v78, vpadd_f32(*v94.f32, *v94.f32).f32[0]);
    v96 = vaddq_f32(v95, v95);
    v96.i32[3] = 0;
    *(a1 + 364) = 1027;
    v97 = vmulq_f32(v96, v96);
    v97.i64[0] = vpaddq_f32(v97, v97).u64[0];
    v98 = vpadd_f32(*v97.f32, *v97.f32);
    v99 = vrsqrte_f32(v98);
    v100 = 4;
    do
    {
      v99 = vmul_f32(v99, vrsqrts_f32(vmul_f32(v99, v99), v98));
      --v100;
    }

    while (v100);
    v101 = vbsl_s8(vdup_lane_s32(vceqz_f32(v98), 0), v98, vmul_f32(v98, v99));
    v102 = vrecpe_f32(v101);
    v103 = 4;
    v104 = v115;
    v105 = v113;
    do
    {
      v102 = vmul_f32(v102, vrecps_f32(v101, v102));
      --v103;
    }

    while (v103);
    v88.i64[1] = v89;
    v106.i64[0] = 0x4000000040000000;
    v106.i64[1] = 0x4000000040000000;
    v107 = vmlaq_f32(v76, v106, v88);
    v108 = vmulq_n_f32(v96, v102.f32[0]);
    v107.i32[3] = v108.i32[0];
    *(a1 + 368) = v107;
    *(a1 + 384) = vextq_s8(v108, v108, 4uLL).u64[0];
    *(a1 + 392) = v68.i32[0];
  }

  *(a1 + 14) = 1;
  *a6 = v68.f32[0] * *(a1 + 20);
  *(a1 + 24) = v69;
  *(a1 + 28) = v70;
  *(a1 + 32) = v71;
  *(a1 + 36) = v104;
  *(a1 + 40) = v114;
  *(a1 + 44) = v72;
  *(a1 + 48) = v105;
  *(a1 + 52) = v112;
  *(a1 + 56) = v73;
  return (*(a1 + 460) & 1) == 0 && *(a1 + 392) != 0.0;
}

uint64_t sweepConvex_MeshGeom(uint64_t a1, float32x4_t *a2, uint64_t a3, float32x4_t *a4, float32x2_t *a5, uint64_t a6, unsigned __int16 *a7, double a8, double a9)
{
  v304 = *MEMORY[0x1E69E9840];
  v15 = *(a3 + 4) == 1.0 && *(a3 + 8) == 1.0 && *(a3 + 12) == 1.0;
  v16 = *(a1 + 4) == 1.0 && *(a1 + 8) == 1.0 && *(a1 + 12) == 1.0;
  v17 = *(a3 + 32);
  v223 = *(a1 + 40);
  *v248 = xmmword_1E3047670;
  *&v248[16] = xmmword_1E3047670;
  v18 = xmmword_1E3060D60;
  v249 = xmmword_1E3060D60;
  v250 = xmmword_1E3047680;
  v251 = 0x3F80000000000000;
  v252 = 0;
  if (!v15)
  {
    physx::Cm::FastVertex2ShapeScaling::init(v248, (a3 + 4), (a3 + 16));
    v18 = xmmword_1E3060D60;
  }

  v244[0] = xmmword_1E3047670;
  v244[1] = xmmword_1E3047670;
  v245 = v18;
  *v246 = xmmword_1E3047680;
  *&v246[16] = 0x3F80000000000000;
  v247 = 0;
  if (!v16)
  {
    physx::Cm::FastVertex2ShapeScaling::init(v244, (a1 + 4), (a1 + 16));
  }

  v19 = *(v17 + 32);
  v20 = *(v17 + 36);
  v21 = *(v17 + 40);
  v22 = ((v19 * *&v248[8]) + (v20 * *&v248[20])) + (v21 * *&v249);
  v23 = *(v17 + 44);
  v24 = *(v17 + 48);
  v25 = *(v17 + 52);
  v26 = (fabsf(*&v248[8] * v23) + fabsf(*&v248[20] * v24)) + fabsf(*&v249 * v25);
  v27 = v22 - v26;
  v28 = v22 + v26;
  v29 = vadd_f32(vadd_f32(vmul_n_f32(*v248, v19), vmul_n_f32(*&v248[12], v20)), vmul_n_f32(*&v248[24], v21));
  v30 = vadd_f32(vadd_f32(vabs_f32(vmul_n_f32(*v248, v23)), vabs_f32(vmul_n_f32(*&v248[12], v24))), vabs_f32(vmul_n_f32(*&v248[24], v25)));
  v240 = vsub_f32(v29, v30);
  v241 = v27;
  v242 = vadd_f32(v29, v30);
  v243 = v28;
  v29.i32[0] = a4->i32[0];
  v31 = a4->f32[1];
  v32 = a4->f32[2];
  v30.i32[0] = a4->i32[3];
  v33 = v31 + v31;
  v34 = v32 + v32;
  v35 = v31 * (v31 + v31);
  v36 = v32 * (v32 + v32);
  v37 = (v29.f32[0] + v29.f32[0]) * v31;
  v38 = (v29.f32[0] + v29.f32[0]) * v32;
  v39 = (v29.f32[0] + v29.f32[0]) * v30.f32[0];
  v40 = v33 * v32;
  v41 = v33 * v30.f32[0];
  v30.f32[0] = v34 * v30.f32[0];
  *&v253 = (1.0 - v35) - v36;
  *(&v253 + 1) = v37 + v30.f32[0];
  v29.f32[0] = 1.0 - (v29.f32[0] * (v29.f32[0] + v29.f32[0]));
  *&v254 = v38 - v41;
  v255 = v37 - v30.f32[0];
  v256 = v29.f32[0] - v36;
  v257 = v40 + v39;
  v258 = v38 + v41;
  v259 = v40 - v39;
  v261 = a4[1].i64[0];
  v42 = a4[1].f32[2];
  v260 = v29.f32[0] - v35;
  v262 = v42;
  v29.i32[0] = a2->i32[0];
  v43 = a2->f32[1];
  v44 = a2->f32[2];
  v30.i32[0] = a2->i32[3];
  v45 = v43 + v43;
  v46 = v44 + v44;
  v47 = v43 * (v43 + v43);
  v48 = v44 * (v44 + v44);
  v49 = (v29.f32[0] + v29.f32[0]) * v43;
  v50 = (v29.f32[0] + v29.f32[0]) * v44;
  v51 = (v29.f32[0] + v29.f32[0]) * v30.f32[0];
  v52 = v45 * v44;
  v53 = v45 * v30.f32[0];
  v30.f32[0] = v46 * v30.f32[0];
  v227.f32[0] = (1.0 - v47) - v48;
  v227.f32[1] = v49 + v30.f32[0];
  v29.f32[0] = 1.0 - (v29.f32[0] * (v29.f32[0] + v29.f32[0]));
  v228 = v50 - v53;
  v229 = v49 - v30.f32[0];
  v230 = v29.f32[0] - v48;
  v231 = v52 + v51;
  v232 = v50 + v53;
  v233 = v52 - v51;
  v234 = v29.f32[0] - v47;
  v235 = a2[1].i64[0];
  v236 = a2[1].i32[2];
  physx::Gu::computeHullOBB(v237, &v240, &v253, &v227, v244, v16, 0.0);
  v238 = vadd_f32(v238, vdup_lane_s32(*&a9, 0));
  v239 = v239 + *&a9;
  v54 = *a5;
  LODWORD(v55) = HIDWORD(*a5);
  v56 = a5[1].f32[0];
  v58 = a2->f32[2];
  v57 = a2->f32[3];
  v59 = (v57 * v57) + -0.5;
  v60 = a2->f32[0];
  v61 = a2->f32[1];
  v62 = (((v55 + v55) * v61) + (a2->f32[0] * (v54.f32[0] + v54.f32[0]))) + (v58 * (v56 + v56));
  v63 = -a2->f32[0];
  v68.f32[0] = ((((v54.f32[0] + v54.f32[0]) * v59) - (((v61 * (v56 + v56)) - (v58 * (v55 + v55))) * v57)) + (a2->f32[0] * v62)) * *&a8;
  v64 = ((((v55 + v55) * v59) - (((v58 * (v54.f32[0] + v54.f32[0])) - (a2->f32[0] * (v56 + v56))) * v57)) + (v61 * v62)) * *&a8;
  v65 = ((((v56 + v56) * v59) - (((a2->f32[0] * (v55 + v55)) - (v61 * (v54.f32[0] + v54.f32[0]))) * v57)) + (v58 * v62)) * *&a8;
  v66 = (*(&v245 + 3) * v68.f32[0]) + (v64 * *&v246[8]);
  v67 = vadd_f32(vadd_f32(vmul_n_f32(*(&v245 + 4), v68.f32[0]), vmul_n_f32(*v246, v64)), vmul_n_f32(*&v246[12], v65));
  v68.f32[0] = v66 + (v65 * *&v246[20]);
  v227 = v67;
  v228 = v68.f32[0];
  v69 = vmul_f32(v67, v67);
  *v69.i32 = sqrtf((*&v69.i32[1] + (v67.f32[0] * v67.f32[0])) + (v68.f32[0] * v68.f32[0]));
  if (*v69.i32 > 0.0)
  {
    v227 = vmul_n_f32(v67, 1.0 / *v69.i32);
    v228 = v68.f32[0] * (1.0 / *v69.i32);
  }

  v70 = 0;
  if (v16)
  {
    v71 = 1.0;
  }

  else
  {
    v71 = *v69.i32 / *&a8;
  }

  v72 = *a7;
  v221 = *(a1 + 32);
  v73 = *a7 & 0x80 | v221 & 2;
  *v68.f32 = vneg_f32(v54);
  v254 = 2;
  LODWORD(v255) = v72;
  LOBYTE(v256) = v247;
  v257 = v71;
  v253 = &unk_1F5D227C0;
  v266 = 0u;
  v267 = 0u;
  v268 = 0;
  v285 = v244;
  v286 = 0uLL;
  v288 = 0;
  v291 = 0;
  v289 = 0;
  v290 = 0;
  v296 = v68.i64[0];
  v297 = -v56;
  v301 = LODWORD(a9);
  v302 = (v72 & 0x40) != 0;
  v303 = v73 != 0;
  v292 = LODWORD(a8);
  v287 = -1;
  v74 = v54.f32[0] * -2.0;
  v75 = v55 * -2.0;
  v76 = v56 * -2.0;
  v77 = ((v75 * v61) + (v60 * v74)) + (v58 * v76);
  v298 = ((v74 * v59) - (((v75 * -v58) + (v61 * v76)) * v57)) + (v60 * v77);
  v299 = ((v75 * v59) - (((v76 * v63) + (v58 * v74)) * v57)) + (v61 * v77);
  v300 = ((v76 * v59) - (((v74 * -v61) + (v60 * v75)) * v57)) + (v58 * v77);
  v68.f32[2] = v297;
  v78.i64[0] = a2[1].i64[0];
  v78.i64[1] = a2[1].u32[2];
  v79 = *a4;
  v80.i64[0] = a4[1].i64[0];
  v80.i64[1] = a4[1].u32[2];
  v81 = vnegq_f32(*a4);
  v82 = vdupq_laneq_s32(*a4, 3).u64[0];
  v83 = v81;
  v83.i32[3] = 0;
  v84 = vsubq_f32(v78, v80);
  v78.i32[0] = vmla_f32(0xBF000000BF000000, v82, v82).u32[0];
  v85 = vmulq_n_f32(v84, v78.f32[0]);
  v85.i32[3] = 0;
  v86 = vextq_s8(v83, v83, 8uLL).u64[0];
  v87 = vext_s8(*v81.f32, v86, 4uLL);
  v88 = vmls_f32(vmul_f32(*v81.f32, *&vextq_s8(v84, v84, 4uLL)), v87, *v84.f32);
  *v89.f32 = vext_s8(v88, vmls_f32(vmul_f32(v86, *v84.f32), *v81.f32, *&vextq_s8(v84, v84, 8uLL)), 4uLL);
  v89.i64[1] = v88.u32[0];
  v90 = vmlaq_laneq_f32(v85, v89, *a4, 3);
  v90.i64[1] = vextq_s8(v90, v90, 8uLL).u32[0];
  v91 = vmulq_f32(v83, v84);
  v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
  v92 = vmlaq_n_f32(v90, v83, vpadd_f32(*v91.f32, *v91.f32).f32[0]);
  v93 = vaddq_f32(v92, v92);
  v93.i32[3] = 0;
  v94 = *a2;
  v94.i32[3] = 0;
  v95 = vmulq_f32(v94, v83);
  v95.i64[0] = vpaddq_f32(v95, v95).u64[0];
  v96 = vsub_f32(vmul_f32(*&vextq_s8(*a2, *a2, 8uLL), *&vextq_s8(v79, v79, 8uLL)), vpadd_f32(*v95.f32, *v95.f32));
  v97 = vmulq_laneq_f32(v94, *a4, 3);
  v94.i64[0] = vextq_s8(v94, v94, 8uLL).u64[0];
  v98 = vmls_f32(vmul_f32(vext_s8(*a2->f32, *v94.f32, 4uLL), *v81.f32), v87, *a2->f32);
  *v99.f32 = vext_s8(v98, vmls_f32(vmul_f32(*a2->f32, v86), *v81.f32, *v94.f32), 4uLL);
  *&v99.u32[2] = v98;
  v100 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v83, *a2, 3), v97), v99);
  *v81.f32 = vdup_lane_s32(*v100.f32, 1);
  *v83.f32 = vdup_laneq_s32(v100, 2);
  v101 = vaddq_f32(v100, v100);
  v102 = vdup_laneq_s32(v101, 2);
  v103 = vdup_lane_s32(vmul_f32(*v100.f32, *v101.f32), 0);
  v104 = vmul_lane_f32(*v81.f32, *v101.f32, 1);
  v105 = vmul_laneq_f32(*v83.f32, v101, 2);
  *v81.f32 = vmul_n_f32(*v81.f32, v101.f32[0]);
  v106 = vmul_n_f32(*v83.f32, v101.f32[0]);
  v107 = vmul_lane_f32(vdup_lane_s32(*v101.f32, 0), v96, 1);
  *v83.f32 = vmul_lane_f32(*v83.f32, *v101.f32, 1);
  *v101.f32 = vmul_lane_f32(vdup_lane_s32(*v101.f32, 1), v96, 1);
  v108 = vmul_lane_f32(v102, v96, 1);
  __asm { FMOV            V3.2S, #1.0 }

  *v97.f32 = vsub_f32(_D3, v103);
  *&v113 = vext_s8(vsub_f32(vsub_f32(_D3, v104), v105), vadd_f32(*v81.f32, v108), 4uLL);
  *(&v113 + 1) = vsub_f32(v106, *v101.f32).u32[0];
  *v81.f32 = vext_s8(vsub_f32(*v81.f32, v108), vsub_f32(*v97.f32, v105), 4uLL);
  v81.i64[1] = vadd_f32(*v83.f32, v107).u32[0];
  *v83.f32 = vext_s8(vadd_f32(v106, *v101.f32), vsub_f32(*v83.f32, v107), 4uLL);
  v83.i64[1] = vsub_f32(*v97.f32, v104).u32[0];
  v279 = v113;
  v280 = v81;
  v281 = v83;
  v282 = v93;
  v283 = v79;
  v284 = v80;
  v114 = vmulq_n_f32(v68, *&a8);
  v114.i32[3] = 0;
  v115 = vnegq_f32(v114);
  v116 = v115;
  v116.i32[3] = 0;
  v117 = v79;
  v117.i32[3] = 0;
  v118 = vmulq_n_f32(v116, v78.f32[0]);
  v118.i32[3] = 0;
  v81.i64[0] = vextq_s8(v117, v117, 8uLL).u64[0];
  v83.i64[0] = vextq_s8(v116, v116, 8uLL).u64[0];
  *v101.f32 = vmls_f32(vmul_f32(vext_s8(*v115.f32, *v83.f32, 4uLL), *v79.f32), vext_s8(*v79.f32, *v81.f32, 4uLL), *v115.f32);
  *v115.f32 = vext_s8(*v101.f32, vmls_f32(vmul_f32(*v115.f32, *v81.f32), *v79.f32, *v83.f32), 4uLL);
  v115.i64[1] = v101.u32[0];
  v119 = vmlsq_laneq_f32(v118, v115, v79, 3);
  v119.i64[1] = vextq_s8(v119, v119, 8uLL).u32[0];
  v120 = vmulq_f32(v116, v117);
  v120.i64[0] = vpaddq_f32(v120, v120).u64[0];
  v121 = vmlaq_n_f32(v119, v117, vpadd_f32(*v120.f32, *v120.f32).f32[0]);
  v122 = vaddq_f32(v121, v121);
  v122.i32[3] = 0;
  v295 = v122;
  v294 = vdupq_lane_s32(*&a8, 0).u64[0];
  v123 = *(a3 + 4);
  v124 = v123;
  v124.i32[3] = 0;
  if (v123.f32[0] == 1.0 && v123.f32[1] == 1.0)
  {
    v70 = v123.f32[2] == 1.0;
  }

  v125 = *(a3 + 16);
  v126 = *(v17 + 72) + 20 * *(v17 + 71);
  v127.i64[0] = *(v17 + 92);
  v127.i64[1] = *(v17 + 100);
  v128 = vmulq_f32(v124, v127);
  *v128.i8 = vpmin_f32(vdup_laneq_s32(v128, 2), *v128.i8);
  *v128.i32 = vpmin_f32(*v128.i8, *v128.i8).f32[0];
  *&v267 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v128.i32);
  *(&v267 + 2) = 0.025 * *v128.i32;
  if (v70)
  {
    v269 = xmmword_1E3047670;
    v270 = xmmword_1E3047680;
    v271 = xmmword_1E30476A0;
    v272 = xmmword_1E3047670;
    v273 = xmmword_1E3047680;
    v274 = xmmword_1E30476A0;
  }

  else
  {
    v129 = vrecpeq_f32(v124);
    v130 = 4;
    do
    {
      v129 = vmulq_f32(v129, vrecpsq_f32(v129, v124));
      --v130;
    }

    while (v130);
    *v131.f32 = vdup_lane_s32(*v123.f32, 0);
    v131.i64[1] = v131.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v131, v124)), v69).u32[0] & 0xFFFFFF) != 0)
    {
      v138 = vdup_lane_s32(*v125.f32, 1);
      v139 = vdup_laneq_s32(v125, 2);
      v140 = vdup_laneq_s32(v125, 3);
      v141 = vaddq_f32(v125, v125);
      v142 = vmul_lane_f32(v138, *v141.f32, 1);
      v143 = vmul_laneq_f32(v139, v141, 2);
      v144 = vmul_n_f32(v138, v141.f32[0]);
      v145 = vmul_n_f32(v139, v141.f32[0]);
      v146 = vmul_n_f32(v140, v141.f32[0]);
      v147 = vmul_lane_f32(v139, *v141.f32, 1);
      v148 = vmul_lane_f32(v140, *v141.f32, 1);
      v149 = vmul_laneq_f32(v140, v141, 2);
      v150 = vsub_f32(_D3, vdup_lane_s32(vmul_f32(*v125.f32, *v141.f32), 0));
      v151 = vsub_f32(vsub_f32(_D3, v142), v143);
      v152 = vadd_f32(v144, v149);
      *v141.f32 = vsub_f32(v145, v148);
      v153 = vsub_f32(v144, v149);
      v154 = vsub_f32(v150, v143);
      v155 = vadd_f32(v147, v146);
      v156 = vadd_f32(v145, v148);
      v157 = vsub_f32(v147, v146);
      v158 = vext_s8(v156, v157, 4uLL);
      *v159.f32 = vext_s8(v151, *&vdupq_lane_s32(v153, 1), 4uLL);
      v159.i64[1] = vdup_lane_s32(v158, 0).u32[0];
      v160 = vsub_f32(v150, v142);
      *v161.f32 = vext_s8(*&vdupq_lane_s32(v152, 0), v154, 4uLL);
      v161.i64[1] = vdup_lane_s32(v158, 1).u32[0];
      *v162.f32 = vext_s8(*&vdupq_lane_s32(*v141.f32, 0), v155, 4uLL);
      v162.i64[1] = vdup_lane_s32(v160, 0).u32[0];
      v163 = vmulq_n_f32(v159, v123.f32[0]);
      v163.i32[3] = 0;
      v164 = vmulq_lane_f32(v161, *v123.f32, 1);
      v164.i32[3] = 0;
      v165 = vmulq_laneq_f32(v162, v123, 2);
      v165.i32[3] = 0;
      v166 = vmulq_lane_f32(v163, v151, 1);
      v166.i32[3] = 0;
      v167 = vmulq_n_f32(v164, *v152.i32);
      v167.i32[3] = 0;
      v168 = vmulq_n_f32(v165, v141.f32[0]);
      v168.i32[3] = 0;
      v132 = vaddq_f32(v168, vaddq_f32(v166, v167));
      v169 = vmulq_lane_f32(v163, v153, 1);
      v169.i32[3] = 0;
      v170 = vmulq_n_f32(v164, *v154.i32);
      v170.i32[3] = 0;
      v171 = vmulq_n_f32(v165, *v155.i32);
      v171.i32[3] = 0;
      v172 = vaddq_f32(v169, v170);
      v173 = vmulq_lane_f32(v163, v156, 1);
      v173.i32[3] = 0;
      v174 = vmulq_n_f32(v164, *v157.i32);
      v174.i32[3] = 0;
      v175 = vmulq_n_f32(v165, *v160.i32);
      v175.i32[3] = 0;
      v133 = vaddq_f32(v171, v172);
      v134 = vaddq_f32(v175, vaddq_f32(v173, v174));
      v269 = v132;
      v270 = v133;
      v271 = v134;
      v176 = vmulq_n_f32(v159, v129.f32[0]);
      v176.i32[3] = 0;
      v177 = vmulq_lane_f32(v161, *v129.f32, 1);
      v177.i32[3] = 0;
      v178 = vmulq_laneq_f32(v162, v129, 2);
      v178.i32[3] = 0;
      v179 = vmulq_lane_f32(v176, v151, 1);
      v179.i32[3] = 0;
      v180 = vmulq_n_f32(v177, *v152.i32);
      v180.i32[3] = 0;
      v181 = vmulq_n_f32(v178, v141.f32[0]);
      v181.i32[3] = 0;
      v135 = vaddq_f32(v181, vaddq_f32(v179, v180));
      v182 = vmulq_lane_f32(v176, v153, 1);
      v182.i32[3] = 0;
      v183 = vmulq_n_f32(v177, *v154.i32);
      v183.i32[3] = 0;
      v184 = vmulq_n_f32(v178, *v155.i32);
      v184.i32[3] = 0;
      v185 = vaddq_f32(v182, v183);
      v186 = vmulq_lane_f32(v176, v156, 1);
      v186.i32[3] = 0;
      v187 = vmulq_n_f32(v177, *v157.i32);
      v187.i32[3] = 0;
      v136 = vaddq_f32(v184, v185);
      v188 = vmulq_n_f32(v178, *v160.i32);
      v188.i32[3] = 0;
      v137 = vaddq_f32(v188, vaddq_f32(v186, v187));
    }

    else
    {
      v129.i32[3] = 0;
      v132 = vmulq_f32(v124, xmmword_1E3047670);
      v133 = vmulq_f32(v124, xmmword_1E3047680);
      v134 = vmulq_f32(v124, xmmword_1E30476A0);
      v269 = v132;
      v270 = v133;
      v271 = v134;
      v135 = vmulq_f32(v129, xmmword_1E3047670);
      v136 = vmulq_f32(v129, xmmword_1E3047680);
      v137 = vmulq_f32(v129, xmmword_1E30476A0);
    }

    v272 = v135;
    v273 = v136;
    v274 = v137;
    v189 = vmulq_f32(v132, 0);
    v189.i32[3] = 0;
    v190 = vmulq_f32(v133, 0);
    v190.i32[3] = 0;
    v191 = vmulq_f32(v134, 0);
    v191.i32[3] = 0;
    v266 = vaddq_f32(v191, vaddq_f32(v190, v189));
  }

  v277 = v126;
  v278 = *(v17 + 70);
  v266 = 0uLL;
  v192 = *(v17 + 80);
  v276 = v192;
  v275 = v17 + 32;
  if (v192)
  {
    _X10 = *(v192 + 24);
    _X9 = *(v192 + 32);
    __asm
    {
      PRFM            #0, [X10]
      PRFM            #0, [X10,#0x80]
      PRFM            #0, [X9]
    }
  }

  physx::Gu::gMidphaseConvexSweepTable[*(v223 + 8) - 3]();
  v198 = BYTE2(v255);
  if (BYTE2(v255) == 1)
  {
    if (HIBYTE(v255) == 1)
    {
      if ((*a7 & 0x200) != 0)
      {
        v217 = physx::Gu::computeConvex_TriangleMeshMTD(a1);
        *(a6 + 20) = 1026;
        if (v217)
        {
          if (*(a6 + 48) == 0.0)
          {
            v218 = -a5[1].f32[0];
            *(a6 + 36) = vneg_f32(*a5);
            *(a6 + 44) = v218;
          }

          *(a6 + 20) = 1027;
          goto LABEL_48;
        }
      }

      else
      {
        *(a6 + 20) = 1026;
      }

      *(a6 + 48) = 0;
      v219 = -a5[1].f32[0];
      *(a6 + 36) = vneg_f32(*a5);
      *(a6 + 44) = v219;
LABEL_48:
      *(a6 + 16) = v287;
      return v198;
    }

    *a6 = v286;
    *(a6 + 16) = v287;
    *(a6 + 20) = v288;
    *(a6 + 24) = v289;
    v199 = v290;
    v200 = v291;
    v201 = v292;
    *(a6 + 52) = v293;
    v202 = -*(&v199 + 1);
    v203 = -*&v200;
    v204 = -*(&v200 + 1);
    *(a6 + 32) = v199;
    *(a6 + 36) = -*(&v199 + 1);
    *(a6 + 40) = -*&v200;
    *(a6 + 44) = -*(&v200 + 1);
    *(a6 + 48) = v201;
    v205 = sqrtf(((*&v200 * *&v200) + (*(&v199 + 1) * *(&v199 + 1))) + (*(&v200 + 1) * *(&v200 + 1)));
    if (v205 > 0.0)
    {
      v206 = 1.0 / v205;
      v202 = v206 * v202;
      v203 = v206 * v203;
      *(a6 + 36) = v202;
      *(a6 + 40) = v203;
      v204 = v206 * v204;
      *(a6 + 44) = v204;
    }

    if ((v221 & 2) == 0 && (v72 & 0x80) != 0)
    {
      v207 = ((*(&v261 + 1) - v259) * (v265 - v260)) - ((v262 - v260) * (v264 - v259));
      v208 = ((v262 - v260) * (v263 - v258)) - ((*&v261 - v258) * (v265 - v260));
      v209 = ((*&v261 - v258) * (v264 - v259)) - ((*(&v261 + 1) - v259) * (v263 - v258));
      v210 = v208 + v208;
      v211 = v209 + v209;
      v213 = a2->f32[2];
      v212 = a2->f32[3];
      v214 = (v212 * v212) + -0.5;
      v215 = a2->f32[1];
      v216 = ((v215 * v210) + (a2->f32[0] * (v207 + v207))) + (v213 * v211);
      if ((((a5->f32[1] * (((v212 * ((v213 * (v207 + v207)) - (a2->f32[0] * v211))) + (v210 * v214)) + (v215 * v216))) + ((((v212 * ((v215 * v211) - (v213 * v210))) + ((v207 + v207) * v214)) + (a2->f32[0] * v216)) * a5->f32[0])) + ((((v212 * ((a2->f32[0] * v210) - (v215 * (v207 + v207)))) + (v211 * v214)) + (v213 * v216)) * a5[1].f32[0])) > 0.0)
      {
        *(a6 + 36) = -v202;
        *(a6 + 40) = -v203;
        *(a6 + 44) = -v204;
      }
    }
  }

  return v198;
}

double physx::Gu::TriangleMesh::TriangleMesh(physx::Gu::TriangleMesh *this, physx::GuMeshFactory *a2, physx::Gu::TriangleMeshData *a3)
{
  *(this + 4) = physx::gTable[*(a3 + 2)];
  *(this + 5) = 3;
  *(this + 6) = 1;
  *this = &unk_1F5D227E8;
  *(this + 2) = &unk_1F5D228A8;
  v3 = *(a3 + 26);
  *(this + 7) = *(a3 + 4);
  *(this + 8) = v3;
  v4 = *(a3 + 14);
  v5 = *(a3 + 15);
  *(this + 5) = *(a3 + 3);
  *(this + 6) = v4;
  v6 = (*(a3 + 10) + *(a3 + 13)) * 0.5;
  *(this + 7) = vmul_f32(vadd_f32(*(a3 + 32), *(a3 + 44)), 0x3F0000003F000000);
  *(this + 16) = v6;
  v7 = (*(a3 + 13) - *(a3 + 10)) * 0.5;
  *(this + 68) = vmul_f32(vsub_f32(*(a3 + 44), *(a3 + 32)), 0x3F0000003F000000);
  *(this + 19) = v7;
  *(this + 10) = v5;
  *(this + 22) = *(a3 + 14);
  *(this + 92) = *(a3 + 12);
  *(this + 12) = *(a3 + 16);
  *(this + 104) = *(a3 + 4);
  *(this + 15) = a2;
  *(this + 8) = *(a3 + 5);
  v8 = *(a3 + 17);
  *(this + 18) = *(a3 + 12);
  *(this + 19) = v8;
  *(a3 + 3) = 0;
  *(a3 + 12) = 0;
  result = 0.0;
  *(a3 + 4) = 0u;
  *(a3 + 5) = 0u;
  *(a3 + 7) = 0u;
  *(a3 + 8) = 0u;
  return result;
}

void physx::Gu::TriangleMesh::~TriangleMesh(physx::Gu::TriangleMesh *this)
{
  *this = &unk_1F5D227E8;
  *(this + 2) = &unk_1F5D228A8;
  if (*(this + 10))
  {
    if (*(this + 10))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 10) = 0;
    if (*(this + 13))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 13) = 0;
    if (*(this + 14))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 14) = 0;
    if (*(this + 12))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 12) = 0;
    if (*(this + 6))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 6) = 0;
    if (*(this + 5))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 5) = 0;
    if (*(this + 16))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 16) = 0;
    if (*(this + 17))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 17) = 0;
    if (*(this + 18))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(this + 18) = 0;
    v2 = *(this + 19);
    if (v2)
    {
      physx::Gu::BV32Tree::release(*(this + 19));
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
    }
  }
}

uint64_t physx::Gu::TriangleMesh::exportExtraData(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 40))
  {
    (*(*a2 + 24))(a2, 16);
    result = (*(*a2 + 16))(a2, *(v3 + 40), (12 * *(v3 + 28)));
  }

  if (*(v3 + 48))
  {
    v4 = *(v3 + 92);
    (*(*a2 + 24))(a2, 16);
    if ((v4 & 2) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    result = (*(*a2 + 16))(a2, *(v3 + 48), ((3 * *(v3 + 32)) << v5));
  }

  if (*(v3 + 80))
  {
    (*(*a2 + 24))(a2, 16);
    result = (*(*a2 + 16))(a2, *(v3 + 80), *(v3 + 32));
  }

  if (*(v3 + 96))
  {
    (*(*a2 + 24))(a2, 16);
    result = (*(*a2 + 16))(a2, *(v3 + 96), (2 * *(v3 + 32)));
  }

  if (*(v3 + 104))
  {
    (*(*a2 + 24))(a2, 16);
    result = (*(*a2 + 16))(a2, *(v3 + 104), (4 * *(v3 + 32)));
  }

  if (*(v3 + 112))
  {
    (*(*a2 + 24))(a2, 16);
    v6 = *(v3 + 112);
    v7 = (12 * *(v3 + 32));
    v8 = *(*a2 + 16);

    return v8(a2, v6, v7);
  }

  return result;
}

uint64_t physx::Gu::TriangleMesh::onRefCountZero(physx::Gu::TriangleMesh *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (physx::GuMeshFactory::removeTriangleMesh(*(this + 15), this))
  {
    v13 = *(this + 4);
    v14 = *(this + 15);
    v15 = *this;
    if (*(this + 5))
    {
      result = (*(v15 + 32))(this);
    }

    else
    {
      result = (*(v15 + 24))(this);
    }

    v18 = *(v14 + 248);
    if (v18)
    {
      v19 = 0;
      v20 = 8 * v18;
      do
      {
        result = (*(**(*(v14 + 240) + v19) + 16))(*(*(v14 + 240) + v19), this, v13);
        v19 += 8;
      }

      while (v20 != v19);
    }
  }

  else
  {
    v17 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v17, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuTriangleMesh.cpp", 208, "Gu::TriangleMesh::release: double deletion detected!", v10, v11, v12, a9);
  }

  return result;
}

uint64_t physx::Gu::TriangleMesh::release(uint64_t this)
{
  if (atomic_fetch_add((this + 24), 0xFFFFFFFF) == 1)
  {
    return (*(*(this + 16) + 16))();
  }

  return this;
}

float32x2_t physx::Gu::TriangleMesh::refitBVH@<D0>(physx::Gu::TriangleMesh *this@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuTriangleMesh.cpp", 227, "PxTriangleMesh::refitBVH() is only supported for meshes with PxMeshMidPhase::eBVH33.", a2, a3, a4, v13);
  v7 = *(this + 56);
  v8 = vextq_s8(v7, v7, 8uLL);
  v9 = vextq_s8(v7, v8, 0xCuLL);
  v10 = vaddq_f32(v7, v9);
  *(v9.i64 + 4) = *(this + 9);
  v11 = vsubq_f32(v7, v9);
  v11.i32[3] = v10.i32[3];
  result = vadd_f32(vext_s8(*v7.f32, *v8.i8, 4uLL), *(this + 72));
  *a5 = v11;
  *(a5 + 16) = result;
  return result;
}

physx::Gu::BV4TriangleMesh *physx::Gu::BV4TriangleMesh::BV4TriangleMesh(physx::Gu::BV4TriangleMesh *this, physx::GuMeshFactory *a2, physx::Gu::TriangleMeshData *a3)
{
  physx::Gu::TriangleMesh::TriangleMesh(this, a2, a3);
  *v5 = &unk_1F5D228D0;
  *(v5 + 16) = &unk_1F5D22990;
  *(v5 + 160) = 0;
  v6 = v5 + 160;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;
  *(v5 + 184) = 0;
  *(v5 + 256) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 270) = 0;
  *(v5 + 192) = 0u;
  *(v5 + 220) = 0u;
  *(v5 + 208) = 0u;
  v7 = (v5 + 208);
  *(v5 + 160) = *(a3 + 36);
  *(v5 + 184) = *(a3 + 42);
  *(v5 + 192) = *(a3 + 11);
  *(v5 + 168) = *(a3 + 152);
  *(a3 + 36) = 0;
  *(a3 + 19) = 0;
  *(a3 + 20) = 0;
  *(a3 + 42) = 0;
  *(a3 + 22) = 0;
  *(a3 + 23) = 0;
  physx::Gu::BV4Tree::operator=(v5 + 208, a3 + 192);
  *v7 = v6;
  return this;
}

uint64_t physx::Gu::BV4TriangleMesh::exportExtraData(uint64_t a1, uint64_t a2)
{
  physx::Gu::BV4Tree::exportExtraData(a1 + 208, a2);

  return physx::Gu::TriangleMesh::exportExtraData(a1, a2);
}

__n128 physx::Gu::RTreeTriangleMesh::RTreeTriangleMesh(physx::Gu::RTreeTriangleMesh *this, physx::GuMeshFactory *a2, physx::Gu::TriangleMeshData *a3)
{
  physx::Gu::TriangleMesh::TriangleMesh(this, a2, a3);
  *v4 = &unk_1F5D229B8;
  *(v4 + 16) = &unk_1F5D22A78;
  *(v4 + 244) = 0;
  *(v4 + 248) = 0;
  *(v4 + 232) = 0;
  *(v4 + 224) = 4;
  *(v4 + 160) = *(a3 + 9);
  *(v4 + 176) = *(a3 + 10);
  *(v4 + 192) = *(a3 + 11);
  *(v4 + 208) = *(a3 + 12);
  result = *(a3 + 14);
  *(v4 + 224) = *(a3 + 13);
  *(v4 + 240) = result;
  *(a3 + 29) = 0;
  return result;
}

uint64_t physx::Gu::RTreeTriangleMesh::exportExtraData(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 24))(a2, 128);
  (*(*a2 + 16))(a2, *(a1 + 248), (112 * *(a1 + 240)));

  return physx::Gu::TriangleMesh::exportExtraData(a1, a2);
}

float32x2_t physx::Gu::RTreeTriangleMesh::refitBVH@<D0>(physx::Gu::RTreeTriangleMesh *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(this + 92) & 2) != 0)
  {
    v4 = &unk_1F5D22BC0;
  }

  else
  {
    v4 = &unk_1F5D22C10;
  }

  v14 = v4;
  v15 = *(this + 40);
  physx::Gu::RTree::refitAllStaticTree(this + 160, &v14, a2);
  v5 = *(this + 61);
  if ((v5 & 2) == 0)
  {
    *(this + 61) = v5 | 2;
    if (*(this + 10))
    {
      v6 = (*(*this + 80))(this);
      if (v6)
      {
          ;
        }
      }
    }
  }

  v8 = vextq_s8(*a2, *a2, 8uLL);
  v9 = vextq_s8(*a2, v8, 0xCuLL);
  v10 = vsubq_f32(*a2, v9);
  *(v9.i64 + 4) = *(a2 + 16);
  v11 = vaddq_f32(*a2, v9);
  v11.i32[3] = v10.i32[3];
  v12 = vsub_f32(*(a2 + 16), vext_s8(*a2, *v8.f32, 4uLL));
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  result = vmul_f32(v12, 0x3F0000003F000000);
  *(this + 56) = vmulq_f32(v11, v8);
  *(this + 9) = result;
  return result;
}

uint64_t physx::Gu::BV32Tree::release(uint64_t this)
{
  v1 = this;
  if ((*(this + 56) & 1) == 0)
  {
    if (*(this + 32))
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      *(v1 + 32) = 0;
    }

    if (*(v1 + 40))
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    *(v1 + 40) = 0;
  }

  *(v1 + 32) = 0;
  *(v1 + 24) = 0;
  return this;
}

uint64_t physx::Gu::BV32Tree::load(uint64_t a1, void (***a2)(void, float *, uint64_t), int a3)
{
  physx::Gu::BV32Tree::release(a1);
  v16 = 0;
  physx::readChunk(&v16 + 3, &v16 + 2, &v16 + 1, &v16, a2);
  result = 0;
  if (HIBYTE(v16) == 66 && BYTE2(v16) == 86 && BYTE1(v16) == 51 && v16 == 50)
  {
    v17 = 0;
    (**a2)(a2, &v17, 4);
    v7 = v17;
    v8 = 1;
    if (v17 == 1 || v17 == 0x1000000)
    {
      goto LABEL_10;
    }

    v9 = bswap32(v17);
    if (a3)
    {
      v7 = v9;
    }

    v8 = a3;
    if (v7 <= 3)
    {
LABEL_10:
      *(a1 + 8) = physx::readFloat(v8, a2);
      *(a1 + 12) = physx::readFloat(v8, a2);
      *(a1 + 16) = physx::readFloat(v8, a2);
      *(a1 + 20) = physx::readFloat(v8, a2);
      *(a1 + 52) = physx::readDword(v8, a2);
      Dword = physx::readDword(v8, a2);
      *(a1 + 48) = Dword;
      if (Dword)
      {
        v11 = 1168 * Dword;
        v12 = 0;
        *(a1 + 40) = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v11, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV32.cpp", 167);
        do
        {
          v13 = (*(a1 + 40) + v12);
          v14 = physx::readDword(v8, a2);
          v13[288] = v14;
          physx::readFloatBuffer(v13 + 256, v14, v8, a2);
          v15 = 4 * v13[288];
          physx::readFloatBuffer(v13, v15, v8, a2);
          physx::readFloatBuffer(v13 + 128, v15, v8, a2);
          v12 += 1168;
        }

        while (v11 != v12);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t physx::Gu::BV32Tree::calculateLeafNode(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if ((v2 & 1) == 0)
  {
    v3 = (v2 >> 1) & 0x3FF;
    if (v3)
    {
      v4 = result;
      v5 = 0;
      v6 = v2 >> 11;
      v7 = v2 >> 11;
      v8 = (v2 >> 1) & 0x3FF;
      do
      {
        v5 += *(*(result + 32) + 40 * v7++ + 32) & 1;
        --v8;
      }

      while (v8);
      *(a2 + 12) = v5;
      do
      {
        result = physx::Gu::BV32Tree::calculateLeafNode(v4, *(v4 + 32) + 40 * v6);
        LODWORD(v6) = v6 + 1;
        --v3;
      }

      while (v3);
    }

    else
    {
      *(a2 + 12) = 0;
    }
  }

  return result;
}

uint64_t physx::Gu::BV32Tree::createSOAformatNode(uint64_t result, uint64_t a2, unint64_t a3, unsigned int a4, _DWORD *a5, _DWORD *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = (a3 >> 1) & 0x3FF;
  if (v6)
  {
    v9 = a4;
    v10 = result;
    v11 = 0;
    v12 = a3 >> 11;
    v13 = *(result + 32);
    v14 = (a2 + 1024);
    v15 = 1024;
    v16 = a3 >> 11;
    do
    {
      v17 = v13 + 40 * v16;
      v18 = *(v17 + 8);
      result = a2 + v11;
      *result = *v17;
      *(result + 8) = v18;
      *(result + 12) = 0;
      v19 = *(v17 + 24);
      *(result + 512) = *(v17 + 16);
      *(result + 520) = v19;
      *(result + 524) = 0;
      *(a2 + v15) = *(v17 + 32);
      v11 += 16;
      v15 += 4;
      ++v16;
    }

    while (16 * ((a3 >> 1) & 0x3FF) != v11);
    v20 = 0;
    *(a2 + 1152) = v6;
    *&v21 = -1;
    *(&v21 + 1) = -1;
    v30[6] = v21;
    v30[7] = v21;
    v30[4] = v21;
    v30[5] = v21;
    v30[2] = v21;
    v30[3] = v21;
    v30[0] = v21;
    v30[1] = v21;
    memset(v29, 0, sizeof(v29));
    do
    {
      v22 = v13 + 40 * v12;
      v23 = *(v22 + 32);
      if ((v23 & 1) == 0)
      {
        result = *a5;
        *a5 = result + ((v23 >> 1) & 0x3FF) - *(v22 + 12);
        *v14 = *v14 & 0x7FF | ((v20 + a4) << 11);
        *(v30 + v20) = result;
        *(v29 + v20++) = v22;
      }

      ++v14;
      LODWORD(v12) = v12 + 1;
      --v6;
    }

    while (v6);
    *a6 += v20;
    if (v20)
    {
      v24 = v30;
      v25 = v29;
      v26 = v20;
      do
      {
        v28 = *v25++;
        v27 = v28;
        LODWORD(v28) = *v24++;
        result = physx::Gu::BV32Tree::createSOAformatNode(v10, *(v10 + 40) + 1168 * v9++, *(v27 + 32), v28, a5, a6);
        --v26;
      }

      while (v26);
    }
  }

  else
  {
    *(a2 + 1152) = 0;
  }

  return result;
}

BOOL physx::Gu::BuildBV32Ex(float32x2_t *this, physx::Gu::BV32Tree *a2, physx::Gu::SourceMesh *a3, float a4)
{
  v4 = a3;
  v8 = *(a2 + 6);
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v9 = physx::Gu::AABBTree::buildFromMesh(&v57, a2, a3);
  if (v9)
  {
    if (v8)
    {
      v10 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v8, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV32Build.cpp", 509);
    }

    else
    {
      v10 = 0;
    }

    v45[0] = a2;
    v45[1] = v10;
    v46 = v4;
    v47 = 0;
    v48 = v8;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    *&v60[4] = 0;
    physx::Gu::AABBTree::walk(BOOL (*)(physx::Gu::AABBTreeNode const*,unsigned int,void *),void *)const::Local::_Walk(v58, &v60[8], &v60[4], gReorderCallback, v45);
    physx::Gu::SourceMesh::remapTopology(a2, v10);
    if (v10)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v10);
    }

    if (*(a2 + 6) > 0x20u)
    {
      BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_Check(*(v58 + 24));
      LODWORD(v45[0]) = 1;
      v17 = physx::shdfnd::Foundation::mInstance;
      if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
      {
        v18 = "static const char *physx::shdfnd::ReflectionAllocator<BV32Node>::getName() [T = BV32Node]";
      }

      else
      {
        v18 = "<allocation names disabled>";
      }

      v19 = (*(*(v17 + 24) + 16))(v17 + 24, 1296, v18, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV32Build.cpp", 337);
      v20 = v19;
      v21 = 0;
      v22 = 0uLL;
      __asm { FMOV            V9.2S, #-1.0 }

      do
      {
        v28 = v19 + v21;
        *(v28 + 40) = 0xFFFFFFFFLL;
        *(v28 + 8) = 0uLL;
        *(v28 + 24) = _D9;
        *(v28 + 32) = -1082130432;
        v21 += 40;
      }

      while (v21 != 1280);
      *(v19 + 1288) = 0;
      v22.n128_f32[0] = a4;
      _BuildBV32(&v57, v19, v58, v45, v22);
      v29 = physx::Gu::BV4Tree::init(this, a2, v58);
      v30 = *(v20 + 1288) + 1;
      *&v60[8] = v30;
      v31 = v45[0];
      v32 = 40 * LODWORD(v45[0]);
      v33 = physx::shdfnd::Foundation::mInstance;
      if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance, v29))
      {
        v34 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::BV32Data>::getName() [T = physx::Gu::BV32Data]";
      }

      else
      {
        v34 = "<allocation names disabled>";
      }

      v35 = (*(*(v33 + 24) + 16))(v33 + 24, v32, v34, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV32Build.cpp", 419);
      v36 = v35;
      v37 = v35 + 2;
      do
      {
        v37[2] = 0xFFFFFFFFLL;
        *v37[-2].f32 = 0uLL;
        *v37 = _D9;
        v37[1].i32[0] = -1082130432;
        v37 += 5;
        v32 -= 40;
      }

      while (v32);
      v38 = v58;
      v39 = (*(v38 + 8) + *(v38 + 20)) * 0.5;
      *v35 = vmul_f32(vadd_f32(*v58, *(v58 + 12)), 0x3F0000003F000000);
      v35[1].f32[0] = v39;
      v40 = (*(v38 + 20) - *(v38 + 8)) * 0.5;
      v35[2] = vmul_f32(vsub_f32(*(v38 + 12), *v38), 0x3F0000003F000000);
      v35[3].f32[0] = v40;
      v35[4] = (2 * *(v20 + 1288) + 2048);
      this[6].i32[1] = v30;
      *v60 = 0;
      BuildBV32Internal(physx::Gu::BV32Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float)::Local::_Flatten(v35, 1u, &v60[8], v20, &v60[4], v60);
      this[3].i32[0] = v31;
      this[4] = v36;
      physx::Gu::BV32Tree::calculateLeafNode(this, v36);
      v41 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 1168 * v31, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV32Build.cpp", 447);
      this[5] = v41;
      this[6].i32[0] = v31;
      v42 = this[4];
      v43 = *(*&v42 + 32);
      *&v60[4] = ((v43 >> 1) & 0x3FF) - *(*&v42 + 12) + 1;
      *&v60[8] = 1;
      physx::Gu::BV32Tree::createSOAformatNode(this, v41, v43, 1u, &v60[4], &v60[8]);
      this[6].i32[0] = *&v60[8];
    }

    else
    {
      this[6].i32[0] = 1;
      v11 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 1168, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV32Build.cpp", 289);
      this[5] = v11;
      v11[144].i32[0] = 1;
      v12 = v58;
      v13 = *(v58 + 8);
      v14 = *(v58 + 20);
      v15 = *v58;
      v16 = *(v58 + 12);
      *v11 = vmul_f32(vadd_f32(*v58, v16), 0x3F0000003F000000);
      v11[1].f32[0] = (v13 + v14) * 0.5;
      v11[1].i32[1] = 0;
      v11[64] = vmul_f32(vsub_f32(v16, v15), 0x3F0000003F000000);
      v11[65].f32[0] = (v14 - v13) * 0.5;
      v11[65].i32[1] = 0;
      v11[128].i32[0] = (2 * *(a2 + 6)) | 1;
      physx::Gu::BV4Tree::init(this, a2, v12);
    }
  }

  physx::Gu::AABBTree::release(&v57);
  return v9;
}

uint64_t gReorderCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 24))
  {
    v3 = *(a1 + 40);
    ++*(a3 + 4 * (v3 - 1) + 28);
    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = *(a3 + 8);
      v6 = *(a3 + 20);
      do
      {
        *(v5 + 4 * v6) = *v4;
        v7 = *(a3 + 20);
        *v4++ = v7;
        v6 = v7 + 1;
        *(a3 + 20) = v6;
        --v3;
      }

      while (v3);
    }
  }

  return 1;
}

uint64_t physx::Gu::pcmContactBoxBox(_DWORD *a1, _DWORD *a2, int32x4_t *a3, float32x4_t *a4, int32x2_t *a5, uint64_t *a6, uint64_t a7)
{
  v634 = *MEMORY[0x1E69E9840];
  _X20 = *a6;
  __asm { PRFM            #0, [X20,#0x100] }

  v16 = vdup_lane_s32(*a5, 0);
  v8.i32[0] = a1[1];
  v17 = v8;
  v17.i32[1] = a1[2];
  v18 = v17;
  v18.i32[2] = a1[3];
  v7.i32[0] = a2[1];
  v581 = *v7.f32;
  v7.i32[1] = a2[2];
  v19 = v7;
  v19.i32[2] = a2[3];
  v20.i64[0] = a3[1].i64[0];
  v20.i32[2] = a3[1].i32[2];
  v621 = v16;
  v20.i64[1] = v20.u32[2];
  v21 = *a4;
  v22.i64[0] = a4[1].i64[0];
  v22.i64[1] = a4[1].u32[2];
  v23 = vnegq_f32(*a4);
  v24 = vsubq_f32(v20, v22);
  v25 = v23;
  v25.i32[3] = 0;
  v26 = vdupq_laneq_s32(*a4, 3);
  LODWORD(v27) = vmla_f32(0xBF000000BF000000, *v26.f32, *v26.f32).u32[0];
  v28 = vmulq_n_f32(v24, v27);
  v28.i32[3] = 0;
  v29 = vextq_s8(v25, v25, 8uLL).u64[0];
  v30 = vext_s8(*v23.f32, v29, 4uLL);
  v31 = vmls_f32(vmul_f32(*v23.f32, *&vextq_s8(v24, v24, 4uLL)), v30, *v24.f32);
  *v32.f32 = vext_s8(v31, vmls_f32(vmul_f32(v29, *v24.f32), *v23.f32, *&vextq_s8(v24, v24, 8uLL)), 4uLL);
  v32.i64[1] = v31.u32[0];
  v33 = vmlaq_laneq_f32(v28, v32, *a4, 3);
  v33.i64[1] = vextq_s8(v33, v33, 8uLL).u32[0];
  v34 = vmulq_f32(v25, v24);
  v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
  v35 = vmlaq_n_f32(v33, v25, vpadd_f32(*v34.f32, *v34.f32).f32[0]);
  v36 = vaddq_f32(v35, v35);
  v36.i32[3] = 0;
  v37 = *a3;
  v38 = *a3;
  v38.i32[3] = 0;
  v39 = vdupq_laneq_s32(*a3, 3).u64[0];
  v40 = vmulq_f32(v38, v25);
  v40.i64[0] = vpaddq_f32(v40, v40).u64[0];
  v41 = vmulq_laneq_f32(v38, *a4, 3);
  v38.i64[0] = vextq_s8(v38, v38, 8uLL).u64[0];
  v42 = vmls_f32(vmul_f32(vext_s8(*a3->i8, *v38.f32, 4uLL), *v23.f32), v30, *a3->i8);
  *v23.f32 = vext_s8(v42, vmls_f32(vmul_f32(*a3->i8, v29), *v23.f32, *v38.f32), 4uLL);
  *&v23.u32[2] = v42;
  v43 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v25, *a3, 3), v41), v23);
  *v25.f32 = vdup_lane_s32(*v43.f32, 1);
  *v38.f32 = vdup_laneq_s32(v43, 2);
  v44 = vaddq_f32(v43, v43);
  v45 = vsub_f32(vmul_laneq_f32(v39, *a4, 3), vpadd_f32(*v40.f32, *v40.f32));
  *v35.f32 = vdup_lane_s32(*v44.f32, 1);
  *v41.f32 = vdup_laneq_s32(v44, 2);
  v46 = vdup_lane_s32(vmul_f32(*v43.f32, *v44.f32), 0);
  v47 = vmul_lane_f32(*v25.f32, *v44.f32, 1);
  v48 = vmul_laneq_f32(*v38.f32, v44, 2);
  v49 = vmul_n_f32(*v25.f32, v44.f32[0]);
  v50 = vmul_n_f32(*v38.f32, v44.f32[0]);
  *v40.f32 = vmul_lane_f32(vdup_lane_s32(*v44.f32, 0), v45, 1);
  *v44.f32 = vmul_lane_f32(*v38.f32, *v44.f32, 1);
  *v35.f32 = vmul_lane_f32(*v35.f32, v45, 1);
  *v38.f32 = vmul_lane_f32(*v41.f32, v45, 1);
  __asm { FMOV            V13.2S, #1.0 }

  *v41.f32 = vsub_f32(_D13, v46);
  *v52.f32 = vext_s8(vsub_f32(vsub_f32(_D13, v47), v48), vadd_f32(v49, *v38.f32), 4uLL);
  v52.i64[1] = vsub_f32(v50, *v35.f32).u32[0];
  *v53.f32 = vext_s8(vsub_f32(v49, *v38.f32), vsub_f32(*v41.f32, v48), 4uLL);
  v53.i64[1] = vadd_f32(*v44.f32, *v40.f32).u32[0];
  v620[0] = *a4;
  v620[1] = v22;
  v616 = v52;
  v617 = v53;
  *v44.f32 = vsub_f32(*v44.f32, *v40.f32);
  v40.i64[0] = vsub_f32(*v41.f32, v47).u32[0];
  *v54.f32 = vext_s8(vadd_f32(v50, *v35.f32), *v44.f32, 4uLL);
  v54.i64[1] = v40.u32[0];
  v619 = v36;
  v618 = v54;
  v40.i32[0] = a5[1].i32[0];
  v578 = *v17.f32;
  v585 = vdup_laneq_s32(v18, 2);
  *v44.f32 = vpmin_f32(v585, *v17.f32);
  *v41.f32 = vpmin_f32(*v44.f32, *v44.f32);
  v566 = *v40.i64;
  v44.f32[0] = v40.f32[0] * 0.15;
  *v44.f32 = vdup_lane_s32(*v44.f32, 0);
  *v40.f32 = vdup_n_s32(0x3E19999Au);
  v564 = v41.f32[0];
  v583 = vdup_laneq_s32(v19, 2);
  v55 = vpmin_f32(v583, *v7.f32);
  v56 = vpmin_f32(v55, v55);
  v565 = v56.f32[0];
  v57 = vmin_f32(vmin_f32(vmul_f32(*v41.f32, *v40.f32), *v44.f32), vmin_f32(vmul_f32(v56, *v40.f32), *v44.f32));
  v58 = *(_X20 + 64);
  if (*(_X20 + 64))
  {
    v59 = vmul_f32(v57, vdup_n_s32(0x3F4CCCCDu));
    v60 = vmul_f32(v59, v59);
    v61 = 48 * v58;
    do
    {
      v62 = *(_X20 + 80);
      v63 = (v62 + v61 - 48);
      v64 = vmulq_n_f32(v52, COERCE_FLOAT(*v63));
      v64.i32[3] = 0;
      v65 = vmulq_lane_f32(v53, *v63->f32, 1);
      v65.i32[3] = 0;
      v66 = vmulq_laneq_f32(v54, *v63, 2);
      v66.i32[3] = 0;
      v67 = vaddq_f32(v36, vaddq_f32(v66, vaddq_f32(v64, v65)));
      v69 = *(v62 + v61 - 32);
      v68 = *(v62 + v61 - 16);
      v70 = v68;
      v70.i32[3] = 0;
      v71 = vmulq_f32(v70, vsubq_f32(v67, v69));
      v71.i64[0] = vpaddq_f32(v71, v71).u64[0];
      v72 = vpadd_f32(*v71.f32, *v71.f32);
      v73 = vmlsq_lane_f32(v67, v70, v72, 0);
      v73.i64[1] = vextq_s8(v73, v73, 8uLL).u32[0];
      v74 = vsubq_f32(v69, v73);
      v75 = vmulq_f32(v74, v74);
      v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
      if (vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v75.f32, *v75.f32), v60), 0), v45).u32[0] == -1)
      {
        v76 = *(_X20 + 64) - 1;
        *(_X20 + 64) = v76;
        v77 = (v62 + 48 * v76);
        v78 = *v77;
        v79 = v77[2];
        v63[1] = v77[1];
        v63[2] = v79;
        *v63 = v78;
      }

      else
      {
        v68.i32[3] = v72.i32[1];
        *(v62 + v61 - 16) = v68;
      }

      v61 -= 48;
    }

    while (v61);
    v80 = *(_X20 + 64);
  }

  else
  {
    v80 = 0;
  }

  v576 = v16;
  v43.i32[3] = v45.i32[1];
  v574 = v43;
  v567 = v18;
  v81 = vmulq_f32(v18, v18);
  v81.i64[0] = vpaddq_f32(v81, v81).u64[0];
  v82 = vpadd_f32(*v81.f32, *v81.f32);
  v83 = vrsqrte_f32(v82);
  v84 = 4;
  do
  {
    v83 = vmul_f32(v83, vrsqrts_f32(vmul_f32(v83, v83), v82));
    --v84;
  }

  while (v84);
  v85 = vmulq_f32(v19, v19);
  v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
  v86 = vpadd_f32(*v85.f32, *v85.f32);
  v87 = vrsqrte_f32(v86);
  v88 = 4;
  do
  {
    v87 = vmul_f32(v87, vrsqrts_f32(vmul_f32(v87, v87), v86));
    --v88;
  }

  while (v88);
  v568 = v22;
  v570 = *v8.f32;
  v572 = *v7.f32;
  if (v80 != v58)
  {
    goto LABEL_38;
  }

  v89 = vmul_n_f32(v57, physx::Gu::invalidateThresholds[v58]);
  v90 = vabdq_f32(v36, *(_X20 + 16));
  *v90.i8 = vpmax_f32(*&vextq_s8(v90, v90, 8uLL), *v90.i8);
  v91 = (&physx::Gu::invalidateQuatThresholds + 4 * v58);
  v92 = vld1_dup_f32(v91);
  v93 = vpmax_f32(*v90.i8, *v90.i8);
  v94 = vmulq_f32(v37, *(_X20 + 32));
  v94.i64[0] = vpaddq_f32(v94, v94).u64[0];
  v95 = vpadd_f32(*v94.f32, *v94.f32);
  v96 = vmulq_f32(v21, *(_X20 + 48));
  v96.i64[0] = vpaddq_f32(v96, v96).u64[0];
  v97 = vpadd_f32(*v96.f32, *v96.f32);
  if (vuzp1_s8(vdup_lane_s16(vorr_s8(vorr_s8(vcgt_f32(v92, v95), vcgt_f32(v92, v97)), vcgt_f32(v93, v89)), 0), v82).u32[0] == -1)
  {
    goto LABEL_38;
  }

  v554 = v37;
  v556 = v26;
  v560 = v19;
  v562 = v20;
  v98 = vbsl_s8(vdup_lane_s32(vceqz_f32(v82), 0), v82, vmul_f32(v82, v83));
  v99 = vmul_f32(v86, v87);
  v100 = vdup_lane_s32(vceqz_f32(v86), 0);
  v101 = 0.0;
  v102 = 0.0;
  v558 = v21;
  v550 = v27;
  v552 = v36;
  v548 = v39;
  if (v95.f32[0] < 1.0)
  {
    v103 = -1.0;
    if (v95.f32[0] >= -1.0)
    {
      v103 = v95.f32[0];
    }

    if (v103 > 1.0)
    {
      v103 = 1.0;
    }

    v104 = v57;
    v105 = v89;
    v546 = v97.i32[0];
    v106 = v98;
    v102 = acosf(v103);
    v101 = 0.0;
    v98 = v106;
    v97.i32[0] = v546;
    v39 = v548;
    v89 = v105;
    v27 = v550;
    v36 = v552;
    v26 = v556;
    v21 = v558;
    v22 = v568;
    *v8.f32 = v570;
    v57 = v104;
  }

  v107 = vbsl_s8(v100, v86, v99);
  v108 = vmul_n_f32(v98, v102);
  if (v97.f32[0] < 1.0)
  {
    v109 = -1.0;
    if (v97.f32[0] >= -1.0)
    {
      v109 = v97.f32[0];
    }

    if (v109 > 1.0)
    {
      v109 = 1.0;
    }

    v110 = v57;
    v111 = v89;
    v112 = acosf(v109);
    v89 = v111;
    v39 = v548;
    v27 = v550;
    v36 = v552;
    v26 = v556;
    v21 = v558;
    v22 = v568;
    *v8.f32 = v570;
    v57 = v110;
    v101 = v112;
  }

  v113 = vdup_lane_s16(vcgt_f32(vmaxnm_f32(vmul_n_f32(v107, v101), v108), v89), 0);
  v19 = v560;
  v20 = v562;
  *v7.f32 = v572;
  v37 = v554;
  if (vuzp1_s8(v113, v113).u32[0] == -1)
  {
LABEL_38:
    v538 = v57;
    v139 = vdup_lane_s32(*v37.f32, 1);
    v140 = vdup_laneq_s32(v37, 2);
    v141 = vaddq_f32(v37, v37);
    v142 = vdup_lane_s32(vmul_f32(*v37.f32, *v141.f32), 0);
    v143 = vmul_lane_f32(v139, *v141.f32, 1);
    v144 = vmul_laneq_f32(v140, v141, 2);
    v145 = vmul_n_f32(v139, v141.f32[0]);
    v146 = vmul_n_f32(v140, v141.f32[0]);
    v147 = vmul_n_f32(v39, v141.f32[0]);
    v148 = vmul_lane_f32(v140, *v141.f32, 1);
    v149 = vmul_lane_f32(v39, *v141.f32, 1);
    *v141.f32 = vmul_laneq_f32(v39, v141, 2);
    v150 = vsub_f32(_D13, v142);
    v151 = vsub_f32(vsub_f32(_D13, v143), v144);
    v152 = vadd_f32(v145, *v141.f32);
    v153 = v36;
    v154 = vsub_f32(v146, v149).u32[0];
    v155 = vsub_f32(v145, *v141.f32);
    v156 = vadd_f32(v148, v147).u32[0];
    LODWORD(v157) = vsub_f32(v150, v143).u32[0];
    v158 = vsub_f32(v148, v147);
    v539 = vadd_f32(v146, v149);
    v540 = *v158.i32;
    v159 = vext_s8(v539, v158, 4uLL);
    v160 = vdup_lane_s32(*v21.f32, 1);
    *v141.f32 = vdup_laneq_s32(v21, 2);
    v161 = vaddq_f32(v21, v21);
    v162 = vdup_lane_s32(vmul_f32(*v21.f32, *v161.f32), 0);
    v163 = vmul_lane_f32(v160, *v161.f32, 1);
    v164 = vmul_laneq_f32(*v141.f32, v161, 2);
    v165 = vmul_n_f32(v160, v161.f32[0]);
    v166 = vmul_n_f32(*v141.f32, v161.f32[0]);
    v167 = vmul_n_f32(*v26.f32, v161.f32[0]);
    *v141.f32 = vmul_lane_f32(*v141.f32, *v161.f32, 1);
    v168 = vmul_lane_f32(*v26.f32, *v161.f32, 1);
    *v161.f32 = vmul_laneq_f32(*v26.f32, v161, 2);
    v169 = vsub_f32(_D13, v162);
    v170 = vsub_f32(v166, v168).u32[0];
    v171 = vext_s8(vsub_f32(vsub_f32(_D13, v163), v164), vadd_f32(v165, *v161.f32), 4uLL);
    *v172.f32 = v171;
    v172.i64[1] = v170;
    v173 = vsub_f32(v165, *v161.f32);
    v174 = vadd_f32(*v141.f32, v167).u32[0];
    *v175.f32 = vext_s8(v173, vsub_f32(v169, v164), 4uLL);
    v555 = *v175.f32;
    v175.i64[1] = v174.u32[0];
    *v176.f32 = vext_s8(vadd_f32(v166, v168), vsub_f32(*v141.f32, v167), 4uLL);
    v176.i64[1] = vsub_f32(v169, v163).u32[0];
    v177 = vdup_lane_s32(v151, 1);
    v178 = vdup_lane_s32(v155, 1);
    v179 = vsub_f32(v150, v144);
    *v180.f32 = vext_s8(v177, v178, 4uLL);
    v545 = vdup_lane_s32(v159, 0).u32[0];
    v180.i64[1] = v545;
    v181 = vdup_lane_s32(v179, 0);
    *v182.f32 = v159;
    v541 = vdup_lane_s32(v152, 0);
    *v141.f32 = vext_s8(v541, v181, 4uLL);
    v544 = vdup_lane_s32(v159, 1).u32[0];
    v141.i64[1] = v544;
    *_X20 = v574;
    *(_X20 + 16) = v153;
    v183 = vdup_lane_s32(v156.u32[0], 0);
    *(_X20 + 32) = v37;
    *(_X20 + 48) = v21;
    v542 = vdup_lane_s32(v154.u32[0], 0);
    v543 = vdup_lane_s32(LODWORD(v157), 0).u32[0];
    *v184.f32 = vext_s8(v542, v183, 4uLL);
    v184.i64[1] = v543;
    v185 = vmulq_n_f32(v180, v171.f32[0]);
    v185.i32[3] = 0;
    v186 = vmulq_lane_f32(v141, v171, 1);
    v186.i32[3] = 0;
    v187 = vmulq_laneq_f32(v184, v172, 2);
    v187.i32[3] = 0;
    v188 = vaddq_f32(v187, vaddq_f32(v185, v186));
    v189 = vmulq_n_f32(v180, v175.f32[0]);
    v189.i32[3] = 0;
    v190 = vmulq_lane_f32(v141, *v175.f32, 1);
    v190.i32[3] = 0;
    v191 = vaddq_f32(v189, v190);
    v192 = vmulq_laneq_f32(v184, v175, 2);
    v192.i32[3] = 0;
    v193 = vmulq_n_f32(v180, v176.f32[0]);
    v193.i32[3] = 0;
    v194 = vmulq_lane_f32(v141, *v176.f32, 1);
    v194.i32[3] = 0;
    v195 = vmulq_laneq_f32(v184, v176, 2);
    v195.i32[3] = 0;
    v196 = vaddq_f32(v192, v191);
    v197 = vaddq_f32(v195, vaddq_f32(v193, v194));
    *v194.f32 = vext_s8(vdup_lane_s32(*v188.f32, 0), vdup_lane_s32(*v196.f32, 0), 4uLL);
    v194.i64[1] = vdup_lane_s32(*v197.f32, 0).u32[0];
    v198 = vaddq_f32(vabsq_f32(v194), xmmword_1E3115C00);
    v199 = vmulq_f32(v19, v198);
    v596[0] = vdup_lane_s32(*v8.f32, 0);
    v547 = v152;
    v549 = v154;
    *v194.f32 = vext_s8(v151, v152, 4uLL);
    v194.i64[1] = v154.u32[0];
    v200 = vsubq_f32(v22, v20);
    v551 = v194;
    v553 = v151;
    v201 = vmulq_f32(v200, v194);
    v201.i64[0] = vpaddq_f32(v201, v201).u64[0];
    v202 = vpadd_f32(*v201.f32, *v201.f32);
    v203 = vdup_lane_s32(v202, 1);
    *v201.f32 = vsub_f32(vadd_f32(v596[0], vadd_f32(vdup_lane_s32(*v199.i8, 0), vadd_f32(vdup_lane_s32(*v199.i8, 1), vdup_laneq_s32(v199, 2)))), vabs_f32(v203));
    v575 = v172;
    v612 = v172;
    v613 = v175;
    v557 = v176;
    v559 = v175;
    v614 = v176;
    v615 = v22;
    v204 = vdup_lane_s32(v578, 1);
    v611 = 0;
    *&v589 = v204;
    *v588.i8 = v585;
    v205 = vdup_lane_s32(v581, 0);
    *v587.f32 = v205;
    v206 = vdup_lane_s32(*v7.f32, 1);
    v623 = v206;
    v622 = v583;
    v207 = vadd_f32(v576, *v201.f32);
    if (v207.f32[0] < 0.0)
    {
      return 0;
    }

    *v208.f32 = vext_s8(v155, v179, 4uLL);
    v208.i64[1] = v156.u32[0];
    v536 = v208;
    v209 = vmulq_f32(v200, v208);
    v209.i64[0] = vpaddq_f32(v209, v209).u64[0];
    v210 = vpadd_f32(*v209.f32, *v209.f32);
    *v209.f32 = vext_s8(vdup_lane_s32(*v188.f32, 1), vdup_lane_s32(*v196.f32, 1), 4uLL);
    v209.i64[1] = vdup_lane_s32(*v197.f32, 1).u32[0];
    v537 = v210;
    v211 = vdup_lane_s32(v210, 0);
    v212 = vaddq_f32(vabsq_f32(v209), xmmword_1E3115C00);
    v213 = vmulq_f32(v19, v212);
    *&v624.u32[2] = vadd_f32(v576, vsub_f32(vadd_f32(v204, vadd_f32(vdup_lane_s32(*v213.i8, 0), vadd_f32(vdup_lane_s32(*v213.i8, 1), vdup_laneq_s32(v213, 2)))), vabs_f32(v211)));
    if (v624.f32[2] < 0.0)
    {
      return 0;
    }

    v182.i64[1] = LODWORD(v157);
    v214 = vmulq_f32(v200, v182);
    v214.i64[0] = vpaddq_f32(v214, v214).u64[0];
    LODWORD(v215) = vpadd_f32(*v214.f32, *v214.f32).u32[0];
    *v214.f32 = vext_s8(vdup_laneq_s32(v188, 2), vdup_laneq_s32(v196, 2), 4uLL);
    v214.i64[1] = vdup_laneq_s32(v197, 2).u32[0];
    v216 = vdup_lane_s32(LODWORD(v215), 0);
    v533 = v182;
    v534 = vaddq_f32(vabsq_f32(v214), xmmword_1E3115C00);
    v217 = vmulq_f32(v19, v534);
    v561 = v19;
    v563 = v20;
    *&v625 = vadd_f32(v576, vsub_f32(vadd_f32(v585, vadd_f32(vdup_lane_s32(*v217.i8, 0), vadd_f32(vdup_lane_s32(*v217.i8, 1), vdup_laneq_s32(v217, 2)))), vabs_f32(v216)));
    if (*&v625 < 0.0)
    {
      return 0;
    }

    *v218.f32 = vext_s8(v202, v537, 4uLL);
    v218.i64[1] = LODWORD(v215);
    v219 = vmulq_f32(v188, v218);
    v219.i64[0] = vpaddq_f32(v219, v219).u64[0];
    v220 = vpadd_f32(*v219.f32, *v219.f32);
    v532 = vaddq_f32(vabsq_f32(v188), xmmword_1E3115C00);
    v221 = vmulq_f32(v567, v532);
    *(&v625 + 1) = vadd_f32(v576, vsub_f32(vadd_f32(v205, vadd_f32(vdup_lane_s32(*v221.i8, 0), vadd_f32(vdup_lane_s32(*v221.i8, 1), vdup_laneq_s32(v221, 2)))), vabs_f32(v220)));
    if (*(&v625 + 2) < 0.0)
    {
      return 0;
    }

    v222 = vmulq_f32(v196, v218);
    v222.i64[0] = vpaddq_f32(v222, v222).u64[0];
    v223 = vpadd_f32(*v222.f32, *v222.f32);
    v531 = vaddq_f32(vabsq_f32(v196), xmmword_1E3115C00);
    v224 = vmulq_f32(v567, v531);
    *v626.i8 = vadd_f32(v576, vsub_f32(vadd_f32(v206, vadd_f32(vdup_lane_s32(*v224.i8, 0), vadd_f32(vdup_lane_s32(*v224.i8, 1), vdup_laneq_s32(v224, 2)))), vabs_f32(v223)));
    if (*v626.i32 < 0.0)
    {
      return 0;
    }

    v225 = vaddq_f32(vabsq_f32(v197), xmmword_1E3115C00);
    v226 = vmulq_f32(v197, v218);
    v226.i64[0] = vpaddq_f32(v226, v226).u64[0];
    v227 = vpadd_f32(*v226.f32, *v226.f32);
    v228 = vmulq_f32(v567, v225);
    v530 = v227.f32[0];
    v626.u64[1] = vadd_f32(v576, vsub_f32(vadd_f32(v583, vadd_f32(vdup_lane_s32(*v228.i8, 0), vadd_f32(vdup_lane_s32(*v228.i8, 1), vdup_laneq_s32(v228, 2)))), vabs_f32(v227)));
    if (*&v626.i32[2] < 0.0 || (vcgt_f32(vabd_f32(vmul_lane_f32(v216, *v188.f32, 1), vmul_laneq_f32(v211, v188, 2)), vadd_f32(v576, vadd_f32(vadd_f32(vmul_laneq_f32(v204, v532, 2), vmul_lane_f32(v585, *v532.f32, 1)), vadd_f32(vmul_laneq_f32(v206, v198, 2), vmul_lane_f32(v583, *v198.f32, 1))))).u8[0] & 1) != 0 || (vcgt_f32(vabd_f32(vmul_lane_f32(v216, *v196.f32, 1), vmul_laneq_f32(v211, v196, 2)), vadd_f32(v576, vadd_f32(vadd_f32(vmul_laneq_f32(v204, v531, 2), vmul_lane_f32(v585, *v531.f32, 1)), vadd_f32(vmul_n_f32(vdup_laneq_s32(v198, 2), *v581.i32), vmul_n_f32(v583, v198.f32[0]))))).u8[0] & 1) != 0 || (vcgt_f32(vabd_f32(vmul_lane_f32(v216, *v197.f32, 1), vmul_laneq_f32(v211, v197, 2)), vadd_f32(v576, vadd_f32(vadd_f32(vmul_laneq_f32(v204, v225, 2), vmul_lane_f32(v585, *v225.f32, 1)), vadd_f32(vmul_n_f32(vdup_lane_s32(*v198.f32, 1), *v581.i32), vmul_lane_f32(vdup_lane_s32(*v198.f32, 0), v572, 1))))).u8[0] & 1) != 0 || (vcgt_f32(vabd_f32(vmul_laneq_f32(v203, v188, 2), vmul_n_f32(v216, v188.f32[0])), vadd_f32(v576, vadd_f32(vadd_f32(vmul_n_f32(vdup_laneq_s32(v532, 2), *v570.i32), vmul_n_f32(v585, v532.f32[0])), vadd_f32(vmul_laneq_f32(v206, v212, 2), vmul_lane_f32(v583, *v212.f32, 1))))).u8[0] & 1) != 0 || (vcgt_f32(vabd_f32(vmul_laneq_f32(v203, v196, 2), vmul_n_f32(v216, v196.f32[0])), vadd_f32(v576, vadd_f32(vadd_f32(vmul_n_f32(vdup_laneq_s32(v531, 2), *v570.i32), vmul_n_f32(v585, v531.f32[0])), vadd_f32(vmul_n_f32(vdup_laneq_s32(v212, 2), *v581.i32), vmul_n_f32(v583, v212.f32[0]))))).u8[0] & 1) != 0 || (vcgt_f32(vabd_f32(vmul_laneq_f32(v203, v197, 2), vmul_n_f32(v216, v197.f32[0])), vadd_f32(v576, vadd_f32(vadd_f32(vmul_n_f32(vdup_laneq_s32(v225, 2), *v570.i32), vmul_n_f32(v585, v225.f32[0])), vadd_f32(vmul_n_f32(vdup_lane_s32(*v212.f32, 1), *v581.i32), vmul_lane_f32(vdup_lane_s32(*v212.f32, 0), v572, 1))))).u8[0] & 1) != 0 || (vcgt_f32(vabd_f32(vmul_n_f32(v211, v188.f32[0]), vmul_lane_f32(v203, *v188.f32, 1)), vadd_f32(v576, vadd_f32(vadd_f32(vmul_n_f32(vdup_lane_s32(*v532.f32, 1), *v570.i32), vmul_lane_f32(vdup_lane_s32(*v532.f32, 0), v578, 1)), vadd_f32(vmul_laneq_f32(v206, v534, 2), vmul_lane_f32(v583, *v534.f32, 1))))).u8[0] & 1) != 0 || (vcgt_f32(vabd_f32(vmul_n_f32(v211, v196.f32[0]), vmul_lane_f32(v203, *v196.f32, 1)), vadd_f32(v576, vadd_f32(vadd_f32(vmul_n_f32(vdup_lane_s32(*v531.f32, 1), *v570.i32), vmul_lane_f32(vdup_lane_s32(*v531.f32, 0), v578, 1)), vadd_f32(vmul_n_f32(vdup_laneq_s32(v534, 2), *v581.i32), vmul_n_f32(v583, v534.f32[0]))))).u8[0] & 1) != 0 || (vcgt_f32(vabd_f32(vmul_n_f32(v211, v197.f32[0]), vmul_lane_f32(v203, *v197.f32, 1)), vadd_f32(v576, vadd_f32(vadd_f32(vmul_n_f32(vdup_lane_s32(*v225.f32, 1), *v570.i32), vmul_lane_f32(vdup_lane_s32(*v225.f32, 0), v578, 1)), vadd_f32(vmul_n_f32(vdup_lane_s32(*v534.f32, 1), *v581.i32), vmul_lane_f32(vdup_lane_s32(*v534.f32, 0), v572, 1))))).u8[0] & 1) != 0)
    {
      return 0;
    }

    v577 = v179;
    v535 = v155;
    v584 = v156;
    v229 = v223.f32[0];
    v230 = 0;
    v231 = vdup_lane_s32(v171, 0);
    v232 = vdup_lane_s32(v171, 1);
    v233 = vdup_lane_s32(v170, 0);
    v234 = vdupq_lane_s32(*v575.f32, 1);
    v235 = vdupq_laneq_s32(v575, 2);
    v236 = vdup_lane_s32(v555, 1);
    v237 = vdupq_lane_s32(*v559.f32, 0);
    v238 = vdupq_lane_s32(*v559.f32, 1);
    v239 = vdupq_laneq_s32(v559, 2);
    v240 = vdupq_lane_s32(*v557.f32, 0);
    v241 = vdupq_lane_s32(*v557.f32, 1);
    v242 = 1;
    v243 = vdupq_laneq_s32(v557, 2);
    do
    {
      v244 = *&v624.f32[2 * v242];
      if (vcgt_f32(v207, v244).u8[0])
      {
        v230 = v242;
        v245 = -1;
      }

      else
      {
        v245 = 0;
      }

      v207 = vbsl_s8(vdup_n_s32(v245), v244, v207);
      ++v242;
    }

    while (v242 != 6);
    v604 = 0uLL;
    if (v230 > 2)
    {
      switch(v230)
      {
        case 3:
          v258 = vnegq_f32(v575);
          v259 = v258;
          v259.i32[3] = 0;
          if (v220.f32[0] <= 0.0)
          {
            v298 = vmlaq_n_f32(v568, v575, *v581.i32);
            v298.i64[1] = vextq_s8(v298, v298, 8uLL).u32[0];
            v231.i32[0] = vdup_lane_s32(*v258.f32, 0).u32[0];
            v232.i32[0] = vdup_lane_s32(*v258.f32, 1).u32[0];
            v233.i32[0] = vdup_laneq_s32(v258, 2).u32[0];
            v586 = v259;
            v582 = v298;
            v262 = v575;
          }

          else
          {
            v260 = vnegq_f32(v557);
            v260.i32[3] = 0;
            v557 = v260;
            v261 = vmlaq_n_f32(v568, v258, *v581.i32);
            v261.i64[1] = vextq_s8(v261, v261, 8uLL).u32[0];
            v586 = v575;
            v582 = v261;
            v262 = v259;
          }

          v299 = vsubq_f32(v563, v582);
          v300 = vmulq_f32(v557, v299);
          v300.i64[0] = vpaddq_f32(v300, v300).u64[0];
          v301 = vmulq_f32(v299, v559);
          v301.i64[0] = vpaddq_f32(v301, v301).u64[0];
          v302 = vmulq_f32(v586, v299);
          v302.i64[0] = vpaddq_f32(v302, v302).u64[0];
          *v300.f32 = vext_s8(vpadd_f32(*v300.f32, *v300.f32), vpadd_f32(*v301.f32, *v301.f32), 4uLL);
          v300.i64[1] = vpadd_f32(*v302.f32, *v302.f32).u32[0];
          *v302.f32 = vext_s8(vdup_lane_s32(*v557.f32, 0), v555, 4uLL);
          v302.i64[1] = v231.u32[0];
          *v303.f32 = vext_s8(*v557.f32, v236, 4uLL);
          v303.i64[1] = v232.u32[0];
          *v304.f32 = vext_s8(vdup_laneq_s32(v557, 2), v174.u32[0], 4uLL);
          v304.i64[1] = v233.u32[0];
          v305 = vmulq_lane_f32(v302, v553, 1);
          v305.i32[3] = 0;
          v306 = vmulq_n_f32(v303, *v547.i32);
          v306.i32[3] = 0;
          v307 = vmulq_n_f32(v304, *v549.i32);
          v307.i32[3] = 0;
          v308 = vaddq_f32(v305, v306);
          v309 = vmulq_lane_f32(v302, v535, 1);
          v309.i32[3] = 0;
          v310 = vmulq_n_f32(v303, *v577.i32);
          v310.i32[3] = 0;
          v311 = vaddq_f32(v307, v308);
          v312 = vmulq_n_f32(v304, *v156.i32);
          v312.i32[3] = 0;
          v313 = vmulq_lane_f32(v302, v539, 1);
          v313.i32[3] = 0;
          v314 = vmulq_n_f32(v303, v540);
          v314.i32[3] = 0;
          v315 = vmulq_n_f32(v304, v157);
          v315.i32[3] = 0;
          v590 = v311;
          v591 = vaddq_f32(v312, vaddq_f32(v309, v310));
          v592 = vaddq_f32(v315, vaddq_f32(v313, v314));
          v593 = v300;
          v316 = vmulq_f32(v557, v262);
          v316.i64[0] = vpaddq_f32(v316, v316).u64[0];
          v317 = vmulq_f32(v262, v559);
          v317.i64[0] = vpaddq_f32(v317, v317).u64[0];
          v318 = vmulq_f32(v259, v575);
          v318.i64[0] = vpaddq_f32(v318, v318).u64[0];
          *v316.f32 = vext_s8(vpadd_f32(*v316.f32, *v316.f32), vpadd_f32(*v317.f32, *v317.f32), 4uLL);
          v316.i64[1] = vpadd_f32(*v318.f32, *v318.f32).u32[0];
          v597 = v316;
          physx::Gu::getIncidentPolygon(&v628, &v604, &v590, v316, v567);
          physx::Gu::calculateContacts(&v622, &v623, &v628, &v604, &v597, a7, &v611, &v621, v319, v320, v321, v322, v323, v324, v325);
          v575 = v557;
          break;
        case 4:
          v266 = vnegq_f32(v559);
          v267 = v266;
          v267.i32[3] = 0;
          if (v229 <= 0.0)
          {
            v269 = v559;
            v266 = v559;
            v586 = v267;
          }

          else
          {
            v268 = vnegq_f32(v557);
            v268.i32[3] = 0;
            v557 = v268;
            v586 = v559;
            v269 = v267;
          }

          v410 = vmlaq_lane_f32(v568, v266, v572, 1);
          v410.i64[1] = vextq_s8(v410, v410, 8uLL).u32[0];
          v569 = v410;
          v411 = vsubq_f32(v563, v410);
          v412 = vmulq_f32(v411, v575);
          v412.i64[0] = vpaddq_f32(v412, v412).u64[0];
          v413 = vmulq_f32(v557, v411);
          v413.i64[0] = vpaddq_f32(v413, v413).u64[0];
          v414 = vmulq_f32(v586, v411);
          v414.i64[0] = vpaddq_f32(v414, v414).u64[0];
          v415 = vpadd_f32(*v414.f32, *v414.f32).u32[0];
          *v414.f32 = vext_s8(vpadd_f32(*v412.f32, *v412.f32), vpadd_f32(*v413.f32, *v413.f32), 4uLL);
          v414.i64[1] = v415;
          *v413.f32 = vext_s8(v231, *v557.f32, 4uLL);
          v413.i64[1] = vdup_lane_s32(*v586.f32, 0).u32[0];
          *v412.f32 = vext_s8(v232, vdup_lane_s32(*v557.f32, 1), 4uLL);
          v412.i64[1] = vdup_lane_s32(*v586.f32, 1).u32[0];
          *v416.f32 = vext_s8(v233, *&vextq_s8(v557, v557, 8uLL), 4uLL);
          v416.i64[1] = vdup_laneq_s32(v586, 2).u32[0];
          v417 = vmulq_lane_f32(v413, v553, 1);
          v417.i32[3] = 0;
          v418 = vmulq_n_f32(v412, *v547.i32);
          v418.i32[3] = 0;
          v419 = vmulq_n_f32(v416, *v549.i32);
          v419.i32[3] = 0;
          v420 = vaddq_f32(v417, v418);
          v421 = vmulq_lane_f32(v413, v535, 1);
          v421.i32[3] = 0;
          v422 = vmulq_n_f32(v412, *v577.i32);
          v422.i32[3] = 0;
          v423 = vaddq_f32(v419, v420);
          v424 = vmulq_n_f32(v416, *v156.i32);
          v424.i32[3] = 0;
          v425 = vmulq_lane_f32(v413, v539, 1);
          v425.i32[3] = 0;
          v426 = vmulq_n_f32(v412, v540);
          v426.i32[3] = 0;
          v427 = vmulq_n_f32(v416, v157);
          v427.i32[3] = 0;
          v590 = v423;
          v591 = vaddq_f32(v424, vaddq_f32(v421, v422));
          v592 = vaddq_f32(v427, vaddq_f32(v425, v426));
          v593 = v414;
          v428 = vmulq_f32(v269, v575);
          v428.i64[0] = vpaddq_f32(v428, v428).u64[0];
          v429 = vmulq_f32(v557, v269);
          v429.i64[0] = vpaddq_f32(v429, v429).u64[0];
          v430 = vmulq_f32(v267, v559);
          v430.i64[0] = vpaddq_f32(v430, v430).u64[0];
          *v428.f32 = vext_s8(vpadd_f32(*v428.f32, *v428.f32), vpadd_f32(*v429.f32, *v429.f32), 4uLL);
          v428.i64[1] = vpadd_f32(*v430.f32, *v430.f32).u32[0];
          v597 = v428;
          physx::Gu::getIncidentPolygon(&v628, &v604, &v590, v428, v567);
          physx::Gu::calculateContacts(&v587, &v622, &v628, &v604, &v597, a7, &v611, &v621, v431, v432, v433, v434, v435, v436, v437);
          v559 = v557;
          v582 = v569;
          break;
        case 5:
          if (v530 <= 0.0)
          {
            v356 = vnegq_f32(v559);
            v357 = v356;
            v357.i32[3] = 0;
            v559 = v357;
            v358 = vnegq_f32(v557);
            v358.i32[3] = 0;
            v586 = v358;
            v359 = vmlaq_laneq_f32(v568, v557, v561, 2);
            v359.i64[1] = vextq_s8(v359, v359, 8uLL).u32[0];
            v236 = vdup_lane_s32(*v356.i8, 1);
            v555 = *v356.i8;
            v174 = vextq_s8(v356, v356, 8uLL).u64[0];
            v582 = v359;
          }

          else
          {
            v252 = vmlsq_laneq_f32(v568, v557, v561, 2);
            v586 = v557;
            v253 = vnegq_f32(v557);
            v253.i32[3] = 0;
            v252.i64[1] = vextq_s8(v252, v252, 8uLL).u32[0];
            v582 = v252;
            v557 = v253;
          }

          v360 = vsubq_f32(v563, v582);
          v361 = vmulq_f32(v360, v575);
          v361.i64[0] = vpaddq_f32(v361, v361).u64[0];
          v362 = vmulq_f32(v559, v360);
          v362.i64[0] = vpaddq_f32(v362, v362).u64[0];
          v363 = vmulq_f32(v586, v360);
          v363.i64[0] = vpaddq_f32(v363, v363).u64[0];
          v364 = vpadd_f32(*v363.f32, *v363.f32).u32[0];
          *v363.f32 = vext_s8(vpadd_f32(*v361.f32, *v361.f32), vpadd_f32(*v362.f32, *v362.f32), 4uLL);
          v363.i64[1] = v364;
          *v362.f32 = vext_s8(v231, v555, 4uLL);
          v362.i64[1] = vdup_lane_s32(*v586.f32, 0).u32[0];
          *v365.f32 = vext_s8(v232, v236, 4uLL);
          v365.i64[1] = vdup_lane_s32(*v586.f32, 1).u32[0];
          *v366.f32 = vext_s8(v233, v174, 4uLL);
          v366.i64[1] = vdup_laneq_s32(v586, 2).u32[0];
          v367 = vmulq_lane_f32(v362, v553, 1);
          v367.i32[3] = 0;
          v368 = vmulq_n_f32(v365, *v547.i32);
          v368.i32[3] = 0;
          v369 = vmulq_n_f32(v366, *v549.i32);
          v369.i32[3] = 0;
          v370 = vaddq_f32(v367, v368);
          v371 = vmulq_lane_f32(v362, v535, 1);
          v371.i32[3] = 0;
          v372 = vmulq_n_f32(v365, *v577.i32);
          v372.i32[3] = 0;
          v373 = vaddq_f32(v369, v370);
          v374 = vmulq_n_f32(v366, *v156.i32);
          v374.i32[3] = 0;
          v375 = vmulq_lane_f32(v362, v539, 1);
          v375.i32[3] = 0;
          v376 = vmulq_n_f32(v365, v540);
          v376.i32[3] = 0;
          v377 = vmulq_n_f32(v366, v157);
          v377.i32[3] = 0;
          v590 = v373;
          v591 = vaddq_f32(v374, vaddq_f32(v371, v372));
          v592 = vaddq_f32(v377, vaddq_f32(v375, v376));
          v593 = v363;
          v378 = vmulq_f32(v557, v575);
          v378.i64[0] = vpaddq_f32(v378, v378).u64[0];
          v379 = vmulq_f32(v559, v557);
          v379.i64[0] = vpaddq_f32(v379, v379).u64[0];
          v380 = vmulq_f32(v586, v557);
          v380.i64[0] = vpaddq_f32(v380, v380).u64[0];
          *v378.f32 = vext_s8(vpadd_f32(*v378.f32, *v378.f32), vpadd_f32(*v379.f32, *v379.f32), 4uLL);
          v378.i64[1] = vpadd_f32(*v380.f32, *v380.f32).u32[0];
          v597 = v378;
          physx::Gu::getIncidentPolygon(&v628, &v604, &v590, v378, v567);
          physx::Gu::calculateContacts(&v587, &v623, &v628, &v604, &v597, a7, &v611, &v621, v381, v382, v383, v384, v385, v386, v387);
          break;
        default:
          return 0;
      }

      v438 = v611;
      if (v611)
      {
        v439 = (a7 + 16);
        do
        {
          v440 = *(v439 - 1);
          *(v439 - 1) = *v439;
          *v439 = v440;
          v439 += 3;
          --v438;
        }

        while (v438);
      }
    }

    else if (v230)
    {
      if (v230 == 1)
      {
        v263 = vdupq_lane_s32(v578, 1);
        if (*v537.i32 <= 0.0)
        {
          v388 = vnegq_f32(v533);
          v388.i32[3] = 0;
          v559 = v388;
          v389 = vmlsq_f32(v563, v263, v536);
          v389.i64[1] = vextq_s8(v389, v389, 8uLL).u32[0];
          v582 = v389;
          v586 = v536;
        }

        else
        {
          v264 = vnegq_f32(v536);
          v178.i32[0] = vdup_lane_s32(*v264.i8, 0).u32[0];
          v181.i32[0] = vdup_lane_s32(*v264.i8, 1).u32[0];
          v183.i32[0] = vdup_laneq_s32(v264, 2).u32[0];
          v264.i32[3] = 0;
          v586 = v264;
          v265 = vmlaq_f32(v563, v263, v536);
          v265.i64[1] = vextq_s8(v265, v265, 8uLL).u32[0];
          v582 = v265;
          v559 = v533;
        }

        v390 = vsubq_f32(v568, v582);
        v391 = vmulq_f32(v390, v551);
        v391.i64[0] = vpaddq_f32(v391, v391).u64[0];
        v392 = vmulq_f32(v559, v390);
        v392.i64[0] = vpaddq_f32(v392, v392).u64[0];
        v393 = vmulq_f32(v586, v390);
        v393.i64[0] = vpaddq_f32(v393, v393).u64[0];
        v394 = vpadd_f32(*v393.f32, *v393.f32).u32[0];
        *v393.f32 = vext_s8(vpadd_f32(*v391.f32, *v391.f32), vpadd_f32(*v392.f32, *v392.f32), 4uLL);
        v393.i64[1] = v394;
        *v391.f32 = vext_s8(v553, *v559.f32, 4uLL);
        v391.i64[1] = v178.u32[0];
        *v392.f32 = vext_s8(v541, vdup_lane_s32(*v559.f32, 1), 4uLL);
        v392.i64[1] = v181.u32[0];
        *v395.f32 = vext_s8(v542, *&vextq_s8(v559, v559, 8uLL), 4uLL);
        v395.i64[1] = v183.u32[0];
        v396 = vmulq_n_f32(v391, v575.f32[0]);
        v396.i32[3] = 0;
        v397 = vmulq_f32(v234, v392);
        v397.i32[3] = 0;
        v398 = vmulq_f32(v235, v395);
        v398.i32[3] = 0;
        v399 = vaddq_f32(v396, v397);
        v400 = vmulq_f32(v237, v391);
        v400.i32[3] = 0;
        v401 = vmulq_f32(v238, v392);
        v401.i32[3] = 0;
        v402 = vmulq_f32(v239, v395);
        v402.i32[3] = 0;
        v403 = vmulq_f32(v240, v391);
        v403.i32[3] = 0;
        v404 = vmulq_f32(v241, v392);
        v404.i32[3] = 0;
        v405 = vmulq_f32(v243, v395);
        v405.i32[3] = 0;
        v590 = vaddq_f32(v398, v399);
        v591 = vaddq_f32(v402, vaddq_f32(v400, v401));
        v592 = vaddq_f32(v405, vaddq_f32(v403, v404));
        v593 = v393;
        v406 = vmulq_f32(v586, v551);
        v406.i64[0] = vpaddq_f32(v406, v406).u64[0];
        v407 = vmulq_f32(v559, v586);
        v407.i64[0] = vpaddq_f32(v407, v407).u64[0];
        v408 = vmulq_f32(v586, v586);
        v408.i64[0] = vpaddq_f32(v408, v408).u64[0];
        *v406.f32 = vext_s8(vpadd_f32(*v406.f32, *v406.f32), vpadd_f32(*v407.f32, *v407.f32), 4uLL);
        v406.i64[1] = vpadd_f32(*v408.f32, *v408.f32).u32[0];
        v597 = v406;
        v409 = vnegq_f32(v406);
        v409.i32[3] = 0;
        physx::Gu::getIncidentPolygon(&v628, &v604, &v590, v409, v561);
        v355 = &v588;
      }

      else
      {
        if (v230 != 2)
        {
          return 0;
        }

        if (v215 <= 0.0)
        {
          v326 = vmlsq_laneq_f32(v563, v533, v567, 2);
          v251 = v543;
          v326.i64[1] = vextq_s8(v326, v326, 8uLL).u32[0];
          v582 = v326;
          v250 = v544;
          v249 = v545;
          v559 = v536;
          v586 = v533;
        }

        else
        {
          v246 = vnegq_f32(v533);
          LODWORD(v251) = vdup_laneq_s32(v246, 2).u32[0];
          v246.i32[3] = 0;
          v586 = v246;
          v247 = vmlaq_laneq_f32(v563, v533, v567, 2);
          v247.i64[1] = vextq_s8(v247, v247, 8uLL).u32[0];
          v582 = v247;
          v248 = vnegq_f32(v536);
          v248.i32[3] = 0;
          v559 = v248;
          v249 = vdup_lane_s32(*v246.i8, 0).u32[0];
          v250 = vdup_lane_s32(*v246.i8, 1).u32[0];
          v251 = v251;
        }

        v327 = vsubq_f32(v568, v582);
        v328 = vmulq_f32(v327, v551);
        v328.i64[0] = vpaddq_f32(v328, v328).u64[0];
        v329 = vmulq_f32(v559, v327);
        v329.i64[0] = vpaddq_f32(v329, v329).u64[0];
        v330 = vmulq_f32(v586, v327);
        v330.i64[0] = vpaddq_f32(v330, v330).u64[0];
        *v328.f32 = vext_s8(vpadd_f32(*v328.f32, *v328.f32), vpadd_f32(*v329.f32, *v329.f32), 4uLL);
        v328.i64[1] = vpadd_f32(*v330.f32, *v330.f32).u32[0];
        *v330.f32 = vext_s8(v553, *v559.f32, 4uLL);
        v330.i64[1] = v249;
        *v331.f32 = vext_s8(v541, vdup_lane_s32(*v559.f32, 1), 4uLL);
        v331.i64[1] = v250;
        *v332.f32 = vext_s8(v542, *&vextq_s8(v559, v559, 8uLL), 4uLL);
        v332.i64[1] = v251;
        v333 = vmulq_n_f32(v330, v575.f32[0]);
        v333.i32[3] = 0;
        v334 = vmulq_f32(v234, v331);
        v334.i32[3] = 0;
        v335 = vmulq_f32(v235, v332);
        v335.i32[3] = 0;
        v336 = vaddq_f32(v333, v334);
        v337 = vmulq_f32(v237, v330);
        v337.i32[3] = 0;
        v338 = vmulq_f32(v238, v331);
        v338.i32[3] = 0;
        v339 = vmulq_f32(v239, v332);
        v339.i32[3] = 0;
        v340 = vaddq_f32(v335, v336);
        v341 = vmulq_f32(v240, v330);
        v341.i32[3] = 0;
        v342 = vmulq_f32(v241, v331);
        v342.i32[3] = 0;
        v343 = vmulq_f32(v243, v332);
        v343.i32[3] = 0;
        v590 = v340;
        v591 = vaddq_f32(v339, vaddq_f32(v337, v338));
        v592 = vaddq_f32(v343, vaddq_f32(v341, v342));
        v593 = v328;
        v344 = vmulq_f32(v586, v551);
        v344.i64[0] = vpaddq_f32(v344, v344).u64[0];
        v345 = vmulq_f32(v559, v586);
        v345.i64[0] = vpaddq_f32(v345, v345).u64[0];
        v346 = vmulq_f32(v586, v586);
        v346.i64[0] = vpaddq_f32(v346, v346).u64[0];
        *v344.f32 = vext_s8(vpadd_f32(*v344.f32, *v344.f32), vpadd_f32(*v345.f32, *v345.f32), 4uLL);
        v344.i64[1] = vpadd_f32(*v346.f32, *v346.f32).u32[0];
        v597 = v344;
        v347 = vnegq_f32(v344);
        v347.i32[3] = 0;
        physx::Gu::getIncidentPolygon(&v628, &v604, &v590, v347, v561);
        v355 = &v589;
      }

      physx::Gu::calculateContacts(v596, v355, &v628, &v604, &v597, a7, &v611, &v621, v348, v349, v350, v351, v352, v353, v354);
      v575 = v551;
    }

    else
    {
      v254 = vdupq_lane_s32(v570, 0);
      if (*&v202.i32[1] <= 0.0)
      {
        v257 = vnegq_f32(v533);
        v257.i32[3] = 0;
        v270 = vmlsq_f32(v563, v254, v551);
        v270.i64[1] = vextq_s8(v270, v270, 8uLL).u32[0];
        v582 = v270;
        v586 = v551;
      }

      else
      {
        v255 = vnegq_f32(v551);
        v177.i32[0] = vdup_lane_s32(*v255.i8, 0).u32[0];
        v541.i32[0] = vdup_lane_s32(*v255.i8, 1).u32[0];
        v542.i32[0] = vdup_laneq_s32(v255, 2).u32[0];
        v255.i32[3] = 0;
        v586 = v255;
        v256 = vmlaq_f32(v563, v254, v551);
        v256.i64[1] = vextq_s8(v256, v256, 8uLL).u32[0];
        v582 = v256;
        v257 = v533;
      }

      v271 = vsubq_f32(v568, v582);
      v272 = vmulq_f32(v257, v271);
      v272.i64[0] = vpaddq_f32(v272, v272).u64[0];
      v273 = vmulq_f32(v271, v536);
      v273.i64[0] = vpaddq_f32(v273, v273).u64[0];
      v274 = vmulq_f32(v586, v271);
      v274.i64[0] = vpaddq_f32(v274, v274).u64[0];
      v275 = vpadd_f32(*v274.f32, *v274.f32).u32[0];
      *v274.f32 = vext_s8(vpadd_f32(*v272.f32, *v272.f32), vpadd_f32(*v273.f32, *v273.f32), 4uLL);
      v274.i64[1] = v275;
      *v272.f32 = vext_s8(vdup_lane_s32(*v257.f32, 0), v178, 4uLL);
      v272.i64[1] = v177.u32[0];
      *v273.f32 = vext_s8(*v257.f32, v179, 4uLL);
      v273.i64[1] = v541.u32[0];
      v579 = v257;
      *v276.f32 = vext_s8(vdup_laneq_s32(v257, 2), v156, 4uLL);
      v276.i64[1] = v542.u32[0];
      v277 = vmulq_n_f32(v272, v575.f32[0]);
      v277.i32[3] = 0;
      v278 = vmulq_f32(v234, v273);
      v278.i32[3] = 0;
      v279 = vmulq_f32(v235, v276);
      v279.i32[3] = 0;
      v280 = vaddq_f32(v277, v278);
      v281 = vmulq_f32(v237, v272);
      v281.i32[3] = 0;
      v282 = vmulq_f32(v238, v273);
      v282.i32[3] = 0;
      v283 = vmulq_f32(v239, v276);
      v283.i32[3] = 0;
      v284 = vmulq_f32(v240, v272);
      v284.i32[3] = 0;
      v285 = vmulq_f32(v241, v273);
      v285.i32[3] = 0;
      v286 = vmulq_f32(v243, v276);
      v286.i32[3] = 0;
      v590 = vaddq_f32(v279, v280);
      v591 = vaddq_f32(v283, vaddq_f32(v281, v282));
      v592 = vaddq_f32(v286, vaddq_f32(v284, v285));
      v593 = v274;
      v287 = vmulq_f32(v579, v586);
      v287.i64[0] = vpaddq_f32(v287, v287).u64[0];
      v288 = vmulq_f32(v586, v536);
      v288.i64[0] = vpaddq_f32(v288, v288).u64[0];
      v289 = vmulq_f32(v586, v586);
      v289.i64[0] = vpaddq_f32(v289, v289).u64[0];
      *v287.f32 = vext_s8(vpadd_f32(*v287.f32, *v287.f32), vpadd_f32(*v288.f32, *v288.f32), 4uLL);
      v287.i64[1] = vpadd_f32(*v289.f32, *v289.f32).u32[0];
      v597 = v287;
      v290 = vnegq_f32(v287);
      v290.i32[3] = 0;
      physx::Gu::getIncidentPolygon(&v628, &v604, &v590, v290, v561);
      physx::Gu::calculateContacts(&v588, &v589, &v628, &v604, &v597, a7, &v611, &v621, v291, v292, v293, v294, v295, v296, v297);
      v575 = v579;
      v559 = v536;
    }

    v441 = v611;
    if (v611)
    {
      v442 = vsubq_f32(v582, v615);
      v443 = vmulq_f32(v612, v442);
      v443.i64[0] = vpaddq_f32(v443, v443).u64[0];
      v444 = vmulq_f32(v442, v613);
      v444.i64[0] = vpaddq_f32(v444, v444).u64[0];
      v445 = vmulq_f32(v442, v614);
      v445.i64[0] = vpaddq_f32(v445, v445).u64[0];
      v446 = vpadd_f32(*v445.f32, *v445.f32).u32[0];
      *v447.f32 = vext_s8(vpadd_f32(*v443.f32, *v443.f32), vpadd_f32(*v444.f32, *v444.f32), 4uLL);
      v447.i64[1] = v446;
      *v448.f32 = vext_s8(vdup_lane_s32(*v612.f32, 0), *v613.f32, 4uLL);
      v448.i64[1] = vdup_lane_s32(*v614.f32, 0).u32[0];
      *v449.f32 = vext_s8(*v612.f32, vdup_lane_s32(*v613.f32, 1), 4uLL);
      v449.i64[1] = vdup_lane_s32(*v614.f32, 1).u32[0];
      v571 = v612;
      v573 = v613;
      v580 = v614;
      *v444.f32 = vext_s8(vdup_laneq_s32(v612, 2), *&vextq_s8(v573, v573, 8uLL), 4uLL);
      v444.i64[1] = vdup_laneq_s32(v614, 2).u32[0];
      v450 = vmulq_n_f32(v448, v575.f32[0]);
      v450.i32[3] = 0;
      v451 = vmulq_lane_f32(v449, *v575.f32, 1);
      v451.i32[3] = 0;
      v452 = vmulq_laneq_f32(v444, v575, 2);
      v452.i32[3] = 0;
      v453 = vaddq_f32(v452, vaddq_f32(v450, v451));
      v454 = vmulq_n_f32(v448, v559.f32[0]);
      v454.i32[3] = 0;
      v455 = vmulq_lane_f32(v449, *v559.f32, 1);
      v455.i32[3] = 0;
      v456 = vmulq_laneq_f32(v444, v559, 2);
      v456.i32[3] = 0;
      v457 = vmulq_n_f32(v448, v586.f32[0]);
      v457.i32[3] = 0;
      v458 = vmulq_lane_f32(v449, *v586.f32, 1);
      v458.i32[3] = 0;
      v459 = vmulq_laneq_f32(v444, v586, 2);
      v459.i32[3] = 0;
      v460 = vsubq_f32(v582, v563);
      v461 = vmulq_f32(v460, v551);
      v461.i64[0] = vpaddq_f32(v461, v461).u64[0];
      v462 = vmulq_f32(v460, v536);
      v462.i64[0] = vpaddq_f32(v462, v462).u64[0];
      v463 = vmulq_f32(v460, v533);
      v463.i64[0] = vpaddq_f32(v463, v463).u64[0];
      v464 = vpadd_f32(*v463.f32, *v463.f32).u32[0];
      *v465.f32 = vext_s8(vpadd_f32(*v461.f32, *v461.f32), vpadd_f32(*v462.f32, *v462.f32), 4uLL);
      v465.i64[1] = v464;
      *v462.f32 = vext_s8(v553, vdup_lane_s32(v535, 1), 4uLL);
      v462.i64[1] = v545;
      v466 = vaddq_f32(v456, vaddq_f32(v454, v455));
      *v456.f32 = vext_s8(vdup_lane_s32(v547, 0), v577, 4uLL);
      v456.i64[1] = v544;
      v467 = vaddq_f32(v457, v458);
      *v457.f32 = vext_s8(vdup_lane_s32(v549, 0), v584, 4uLL);
      v457.i64[1] = v543;
      v468 = vaddq_f32(v459, v467);
      v469 = vaddq_f32(vmulq_laneq_f32(v457, v575, 2), vaddq_f32(vmulq_n_f32(v462, v575.f32[0]), vmulq_lane_f32(v456, *v575.f32, 1)));
      v470 = vaddq_f32(vmulq_laneq_f32(v457, v559, 2), vaddq_f32(vmulq_n_f32(v462, v559.f32[0]), vmulq_lane_f32(v456, *v559.f32, 1)));
      v471 = vaddq_f32(vmulq_laneq_f32(v457, v586, 2), vaddq_f32(vmulq_n_f32(v462, v586.f32[0]), vmulq_lane_f32(v456, *v586.f32, 1)));
      v472 = vaddq_f32(vmulq_laneq_f32(v468, *(a7 + 32), 2), vaddq_f32(vmulq_n_f32(v453, COERCE_FLOAT(*(a7 + 32))), vmulq_lane_f32(v466, *(a7 + 32), 1)));
      v473 = a7 + 32;
      v474 = v611;
      do
      {
        v475 = *(v473 - 32);
        v476 = *(v473 - 16);
        v477 = vmulq_n_f32(v469, v475.f32[0]);
        v477.i32[3] = 0;
        v478 = vmulq_lane_f32(v470, *v475.f32, 1);
        v478.i32[3] = 0;
        v479 = vmulq_laneq_f32(v471, v475, 2);
        v479.i32[3] = 0;
        v480 = vaddq_f32(v479, vaddq_f32(v477, v478));
        v481 = vmulq_n_f32(v453, v476.f32[0]);
        v481.i32[3] = 0;
        v482 = vmulq_lane_f32(v466, *v476.f32, 1);
        v482.i32[3] = 0;
        v483 = vmulq_laneq_f32(v468, v476, 2);
        v483.i32[3] = 0;
        *(v473 - 32) = vaddq_f32(v480, v465);
        *(v473 - 16) = vaddq_f32(vaddq_f32(v483, vaddq_f32(v481, v482)), v447);
        v484 = v472;
        v484.i32[3] = *(v473 + 12);
        *v473 = v484;
        v473 += 48;
        --v474;
      }

      while (v474);
      physx::Gu::PersistentContactManifold::addBatchManifoldContacts(_X20, a7, v441, v566);
      v485 = *(*(_X20 + 80) + 32);
      v486 = vmulq_n_f32(v571, v485.f32[0]);
      v486.i32[3] = 0;
      v487 = vmulq_lane_f32(v573, *v485.f32, 1);
      v487.i32[3] = 0;
      v488 = vmulq_laneq_f32(v580, v485, 2);
      v488.i32[3] = 0;
      v489 = vaddq_f32(v488, vaddq_f32(v486, v487));
      v490 = vmulq_f32(v489, v489);
      v490.i64[0] = vpaddq_f32(v490, v490).u64[0];
      v491 = vpadd_f32(*v490.f32, *v490.f32);
      v492 = vrsqrte_f32(v491);
      v493 = 4;
      do
      {
        v492 = vmul_f32(v492, vrsqrts_f32(vmul_f32(v492, v492), v491));
        --v493;
      }

      while (v493);
      v494 = vbsl_s8(vdup_lane_s32(vceqz_f32(v491), 0), v491, vmul_f32(v491, v492));
      v495 = vrecpe_f32(v494);
      v496 = 4;
      do
      {
        v495 = vmul_f32(v495, vrecps_f32(v494, v495));
        --v496;
      }

      while (v496);
      v497 = vmulq_n_f32(v489, v495.f32[0]);
      v497.i32[3] = 0;
      v628 = v497;
      physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(_X20, a7, &v628, &v612);
      return 1;
    }

    v608 = 3;
    v609 = 0;
    v604 = 0uLL;
    v610 = v567;
    v605 = 0.15 * v564;
    v606 = 0.05 * v564;
    v607 = 0.05 * v564;
    v601 = 3;
    v602 = 0;
    v597 = 0uLL;
    v603 = v561;
    v598 = 0.15 * v565;
    v599 = 0.05 * v565;
    *(_X20 + 66) = 0;
    v600 = 0.05 * v565;
    v628.i64[0] = &unk_1F5D21AE0;
    v628.i64[1] = &v604;
    v629 = &v616;
    v633 = v619;
    v498 = vzip1q_s32(v616, v618);
    v499 = vzip1q_s32(v617, 0);
    v500 = vzip2q_s32(v617, 0);
    v630 = vzip1q_s32(v498, v499);
    v631 = vzip2q_s32(v498, v499);
    v632 = vzip1q_s32(vzip2q_s32(v616, v618), v500);
    v596[1] = &v597;
    v596[0] = &unk_1F5D21A80;
    v627 = 0;
    v624 = 0u;
    v625 = 0u;
    v626 = 0u;
    v501 = physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(&v628, v596, &v619, &v621, 1, (_X20 + 67), (_X20 + 71), (_X20 + 66), *v632.i64, *v631.i64, *v500.i8, &v624);
    if (v501 == 5)
    {
      v590.i64[1] = &v604;
      v590.i64[0] = &unk_1F5D21AE0;
      v591.i64[0] = &v616;
      v595 = v619;
      v502 = vzip1q_s32(v616, v618);
      v503 = vzip1q_s32(v617, 0);
      v592 = vzip1q_s32(v502, v503);
      v593 = vzip2q_s32(v502, v503);
      v594 = vzip1q_s32(vzip2q_s32(v616, v618), vzip2q_s32(v617, 0));
      *(&v589 + 1) = &v597;
      *&v589 = &unk_1F5D21A80;
      v501 = physx::Gu::epaPenetration(&v590);
    }

    if (v501 == 5 || v501 == 2)
    {
      v623 = vmul_f32(v538, vdup_n_s32(0x3D4CCCCDu));
      v504 = vsubq_f32(v624, v619);
      v505 = vmulq_f32(v616, v504);
      v506 = vmulq_f32(v504, v617);
      v507 = vmulq_f32(v504, v618);
      v508 = vpaddq_f32(v505, v505).u64[0];
      v505.i64[0] = vpaddq_f32(v506, v506).u64[0];
      v507.i64[0] = vpaddq_f32(v507, v507).u64[0];
      *v509.f32 = vext_s8(vpadd_f32(v508, v508), vpadd_f32(*v505.f32, *v505.f32), 4uLL);
      v509.i64[1] = vpadd_f32(*v507.f32, *v507.f32).u32[0];
      v589 = v625;
      v590 = v509;
      v510 = v626;
      v510.i32[3] = HIDWORD(v627);
      v588 = v510;
      physx::Gu::PersistentContactManifold::addManifoldPoint(_X20, &v590, &v589, &v588, &v623);
      v511 = v620[0];
      v511.i32[3] = 0;
      v512 = vdupq_laneq_s32(v620[0], 3).u64[0];
      v513 = vmulq_n_f32(v626, vmla_f32(0xBF000000BF000000, v512, v512).f32[0]);
      v513.i32[3] = 0;
      v514 = vextq_s8(v511, v511, 8uLL).u64[0];
      v515 = vextq_s8(v626, v626, 8uLL).u64[0];
      v516 = vmls_f32(vmul_f32(*v620[0].f32, vext_s8(*v626.i8, v515, 4uLL)), vext_s8(*v620[0].f32, v514, 4uLL), *v626.i8);
      *v517.f32 = vext_s8(v516, vmls_f32(vmul_f32(v514, *v626.i8), *v620[0].f32, v515), 4uLL);
      v517.i64[1] = v516.u32[0];
      v518 = vmlaq_laneq_f32(v513, v517, v620[0], 3);
      v518.i64[1] = vextq_s8(v518, v518, 8uLL).u32[0];
      v519 = vmulq_f32(v511, v626);
      v519.i64[0] = vpaddq_f32(v519, v519).u64[0];
      v520 = vmlaq_n_f32(v518, v511, vpadd_f32(*v519.f32, *v519.f32).f32[0]);
      v521 = vaddq_f32(v520, v520);
      v521.i32[3] = 0;
      v522 = vmulq_f32(v521, v521);
      v522.i64[0] = vpaddq_f32(v522, v522).u64[0];
      v523 = vpadd_f32(*v522.f32, *v522.f32);
      v524 = vrsqrte_f32(v523);
      v525 = 4;
      do
      {
        v524 = vmul_f32(v524, vrsqrts_f32(vmul_f32(v524, v524), v523));
        --v525;
      }

      while (v525);
      v526 = vbsl_s8(vdup_lane_s32(vceqz_f32(v523), 0), v523, vmul_f32(v523, v524));
      v527 = vrecpe_f32(v526);
      v528 = 4;
      do
      {
        v527 = vmul_f32(v527, vrecps_f32(v526, v527));
        --v528;
      }

      while (v528);
      v529 = vmulq_n_f32(v521, v527.f32[0]);
      v529.i32[3] = 0;
      v587 = v529;
      physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(_X20, a7, &v587, v620, &v621);
    }

    if (v501 == 2 || v501 == 5)
    {
      return 1;
    }
  }

  else if (v58)
  {
    v114 = *(_X20 + 80);
    v115 = *(v114 + 32);
    v116 = v115;
    if (v58 != 1)
    {
      v117 = v58 - 1;
      v118 = (v114 + 80);
      v116 = v115;
      do
      {
        v119 = *v118;
        v118 += 3;
        v116 = vaddq_f32(v116, v119);
        --v117;
      }

      while (v117);
    }

    v116.i32[3] = 0;
    v120 = vmulq_f32(v116, v116);
    v120.i64[0] = vpaddq_f32(v120, v120).u64[0];
    v115.i32[3] = 0;
    v121 = v21;
    v121.i32[3] = 0;
    v122 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v120.f32, *v120.f32), 0x3400000034000000), 0)), 0x1FuLL)), v116, v115);
    v123 = vmulq_n_f32(v122, v27);
    v123.i32[3] = 0;
    v120.i64[0] = vextq_s8(v121, v121, 8uLL).u64[0];
    v124 = vextq_s8(v122, v122, 8uLL).u64[0];
    v125 = vmls_f32(vmul_f32(*v21.f32, vext_s8(*v122.f32, v124, 4uLL)), vext_s8(*v21.f32, *v120.f32, 4uLL), *v122.f32);
    *v120.f32 = vext_s8(v125, vmls_f32(vmul_f32(*v120.f32, *v122.f32), *v21.f32, v124), 4uLL);
    v120.i64[1] = v125.u32[0];
    v126 = vmlaq_f32(v123, v26, v120);
    v126.i64[1] = vextq_s8(v126, v126, 8uLL).u32[0];
    v127 = vmulq_f32(v121, v122);
    v127.i64[0] = vpaddq_f32(v127, v127).u64[0];
    v128 = vmlaq_n_f32(v126, v121, vpadd_f32(*v127.f32, *v127.f32).f32[0]);
    v129 = vaddq_f32(v128, v128);
    v129.i32[3] = 0;
    v130 = vmulq_f32(v129, v129);
    v130.i64[0] = vpaddq_f32(v130, v130).u64[0];
    v131 = vpadd_f32(*v130.f32, *v130.f32);
    v132 = vrsqrte_f32(v131);
    v133 = 4;
    do
    {
      v132 = vmul_f32(v132, vrsqrts_f32(vmul_f32(v132, v132), v131));
      --v133;
    }

    while (v133);
    v134 = vbsl_s8(vdup_lane_s32(vceqz_f32(v131), 0), v131, vmul_f32(v131, v132));
    v135 = vrecpe_f32(v134);
    v136 = 4;
    do
    {
      v135 = vmul_f32(v135, vrecps_f32(v134, v135));
      --v136;
    }

    while (v136);
    v137 = vmulq_n_f32(v129, v135.f32[0]);
    v137.i32[3] = 0;
    v628 = v137;
    physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(_X20, a7, &v628, v620, &v621);
    return 1;
  }

  return 0;
}

uint64_t physx::Gu::pcmContactBoxConvex(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, uint64_t *a6, float32x4_t *a7)
{
  v271 = *MEMORY[0x1E69E9840];
  v9 = *a6;
  _X23 = *(a2 + 48);
  __asm { PRFM            #0, [X23] }

  v15 = vdup_lane_s32(*a5, 0);
  v16 = *(a1 + 4);
  v17 = v16;
  v17.i32[2] = *(a1 + 12);
  v18 = vdup_laneq_s32(v17, 2);
  v253 = v15;
  v19 = v17;
  v19.i32[3] = 0;
  v20 = *(a2 + 4);
  v21 = v20;
  v21.i32[3] = 0;
  v17.i64[0] = a3[1].i64[0];
  v17.i64[1] = a3[1].u32[2];
  v252[0] = *a3;
  v252[1] = v17;
  v22.i64[0] = a4[1].i64[0];
  v22.i64[1] = a4[1].u32[2];
  v251[0] = *a4;
  v251[1] = v22;
  v23 = vnegq_f32(v251[0]);
  v24 = v23;
  v24.i32[3] = 0;
  v25 = vsubq_f32(v17, v22);
  v26 = vdupq_laneq_s32(v251[0], 3).u64[0];
  v27 = vmulq_n_f32(v25, vmla_f32(0xBF000000BF000000, v26, v26).f32[0]);
  v27.i32[3] = 0;
  v28 = vextq_s8(v24, v24, 8uLL).u64[0];
  v29 = vext_s8(*v23.f32, v28, 4uLL);
  v30 = vmls_f32(vmul_f32(*v23.f32, *&vextq_s8(v25, v25, 4uLL)), v29, *v25.f32);
  *v31.f32 = vext_s8(v30, vmls_f32(vmul_f32(v28, *v25.f32), *v23.f32, *&vextq_s8(v25, v25, 8uLL)), 4uLL);
  v31.i64[1] = v30.u32[0];
  v32 = vmlaq_laneq_f32(v27, v31, v251[0], 3);
  v32.i64[1] = vextq_s8(v32, v32, 8uLL).u32[0];
  v33 = vmulq_f32(v24, v25);
  v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
  v34 = vmlaq_n_f32(v32, v24, vpadd_f32(*v33.f32, *v33.f32).f32[0]);
  v35 = vaddq_f32(v34, v34);
  v35.i32[3] = 0;
  v36 = v252[0];
  v36.i32[3] = 0;
  v37 = vmulq_f32(v36, v24);
  v37.i64[0] = vpaddq_f32(v37, v37).u64[0];
  v38 = vmulq_laneq_f32(v36, v251[0], 3);
  v36.i64[0] = vextq_s8(v36, v36, 8uLL).u64[0];
  *v31.f32 = vmls_f32(vmul_f32(vext_s8(*v252[0].f32, *v36.f32, 4uLL), *v23.f32), v29, *v252[0].f32);
  *v36.f32 = vext_s8(*v31.f32, vmls_f32(vmul_f32(*v252[0].f32, v28), *v23.f32, *v36.f32), 4uLL);
  v36.i64[1] = v31.i64[0];
  v39 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v24, v252[0], 3), v38), v36);
  v40 = vdup_lane_s32(*v39.f32, 1);
  *v38.f32 = vdup_laneq_s32(v39, 2);
  v41 = vsub_f32(vmul_f32(*&vextq_s8(v252[0], v252[0], 8uLL), *&vextq_s8(v251[0], v251[0], 8uLL)), vpadd_f32(*v37.f32, *v37.f32));
  v42 = vaddq_f32(v39, v39);
  *v24.f32 = vdup_lane_s32(*v42.f32, 1);
  *v37.f32 = vdup_laneq_s32(v42, 2);
  v43 = vdup_lane_s32(vmul_f32(*v39.f32, *v42.f32), 0);
  *v31.f32 = vmul_lane_f32(v40, *v42.f32, 1);
  v44 = vmul_laneq_f32(*v38.f32, v42, 2);
  v45 = vmul_n_f32(v40, v42.f32[0]);
  v46 = vmul_n_f32(*v38.f32, v42.f32[0]);
  *v23.f32 = vmul_lane_f32(vdup_lane_s32(*v42.f32, 0), v41, 1);
  *v42.f32 = vmul_lane_f32(*v38.f32, *v42.f32, 1);
  *v24.f32 = vmul_lane_f32(*v24.f32, v41, 1);
  *v38.f32 = vmul_lane_f32(*v37.f32, v41, 1);
  __asm { FMOV            V24.2S, #1.0 }

  *v37.f32 = vsub_f32(_D24, v43);
  *v48.f32 = vext_s8(vsub_f32(vsub_f32(_D24, *v31.f32), v44), vadd_f32(v45, *v38.f32), 4uLL);
  v48.i64[1] = vsub_f32(v46, *v24.f32).u32[0];
  *v49.f32 = vext_s8(vsub_f32(v45, *v38.f32), vsub_f32(*v37.f32, v44), 4uLL);
  v49.i64[1] = vadd_f32(*v42.f32, *v23.f32).u32[0];
  v247 = v48;
  v248 = v49;
  *v50.f32 = vext_s8(vadd_f32(v46, *v24.f32), vsub_f32(*v42.f32, *v23.f32), 4uLL);
  v50.i64[1] = vsub_f32(*v37.f32, *v31.f32).u32[0];
  v249 = v50;
  v250 = v35;
  v52.i64[0] = *(_X23 + 60);
  v51 = *(a5 + 8);
  v52.i64[1] = *(_X23 + 68);
  v53 = vmulq_f32(v21, v52);
  *v37.f32 = vdup_laneq_s32(v53, 2);
  *v53.i8 = vpmin_f32(*v37.f32, *v53.i8);
  v37.f32[0] = v51 * 0.05;
  __asm { FMOV            V17.2S, #0.25 }

  *v16.f32 = vpmin_f32(v18, *v16.f32);
  v55 = vpmin_f32(*v16.f32, *v16.f32);
  v16.f32[0] = v51 * 0.15;
  v56 = vmin_f32(vmin_f32(vmul_f32(vpmin_f32(*v53.i8, *v53.i8), _D17), vdup_lane_s32(*v37.f32, 0)), vmin_f32(vmul_f32(v55, vdup_n_s32(0x3E19999Au)), vdup_lane_s32(*v16.f32, 0)));
  v57 = *(v9 + 64);
  if (*(v9 + 64))
  {
    v58 = vmul_f32(v56, vdup_n_s32(0x3F4CCCCDu));
    v59 = vmul_f32(v58, v58);
    v60 = 48 * v57;
    do
    {
      v61 = *(v9 + 80);
      v62 = (v61 + v60 - 48);
      v63 = vmulq_n_f32(v48, COERCE_FLOAT(*v62));
      v63.i32[3] = 0;
      v64 = vmulq_lane_f32(v49, *v62->f32, 1);
      v64.i32[3] = 0;
      v65 = vmulq_laneq_f32(v50, *v62, 2);
      v65.i32[3] = 0;
      v66 = vaddq_f32(v35, vaddq_f32(v65, vaddq_f32(v63, v64)));
      v68 = *(v61 + v60 - 32);
      v67 = *(v61 + v60 - 16);
      v69 = v67;
      v69.i32[3] = 0;
      v70 = vmulq_f32(v69, vsubq_f32(v66, v68));
      v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
      v71 = vpadd_f32(*v70.f32, *v70.f32);
      v72 = vmlsq_lane_f32(v66, v69, v71, 0);
      v72.i64[1] = vextq_s8(v72, v72, 8uLL).u32[0];
      v73 = vsubq_f32(v68, v72);
      v74 = vmulq_f32(v73, v73);
      v74.i64[0] = vpaddq_f32(v74, v74).u64[0];
      if (vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v74.f32, *v74.f32), v59), 0), v59).u32[0] == -1)
      {
        v75 = *(v9 + 64) - 1;
        *(v9 + 64) = v75;
        v76 = (v61 + 48 * v75);
        v77 = *v76;
        v78 = v76[2];
        v62[1] = v76[1];
        v62[2] = v78;
        *v62 = v77;
      }

      else
      {
        v67.i32[3] = v71.i32[1];
        *(v61 + v60 - 16) = v67;
      }

      v60 -= 48;
    }

    while (v60);
    v52.i64[0] = *(_X23 + 60);
    v52.i64[1] = *(_X23 + 68);
  }

  v39.i32[3] = v41.i32[1];
  v79 = vmulq_f32(v19, v19);
  v79.i64[0] = vpaddq_f32(v79, v79).u64[0];
  v80 = vpadd_f32(*v79.f32, *v79.f32);
  v81 = vrsqrte_f32(v80);
  v82 = 4;
  do
  {
    v81 = vmul_f32(v81, vrsqrts_f32(vmul_f32(v81, v81), v80));
    --v82;
  }

  while (v82);
  v83 = vmulq_f32(v21, v52);
  v84 = vmulq_f32(v83, v83);
  v86 = vpaddq_f32(v84, v84);
  v85 = vpadd_f32(*v86.f32, *v86.f32);
  *v86.f32 = vrsqrte_f32(v85);
  v87 = 4;
  do
  {
    *v86.f32 = vmul_f32(*v86.f32, vrsqrts_f32(vmul_f32(*v86.f32, *v86.f32), v85));
    --v87;
  }

  while (v87);
  v88 = v252[0];
  v89 = v251[0];
  if (*(v9 + 64) != v57)
  {
    goto LABEL_36;
  }

  v90 = vmul_n_f32(v56, physx::Gu::invalidateThresholds[v57]);
  v91 = vabdq_f32(v35, *(v9 + 16));
  *v91.i8 = vpmax_f32(*&vextq_s8(v91, v91, 8uLL), *v91.i8);
  v92 = (&physx::Gu::invalidateQuatThresholds + 4 * v57);
  v93 = vld1_dup_f32(v92);
  v94 = vpmax_f32(*v91.i8, *v91.i8);
  v95 = vmulq_f32(v252[0], *(v9 + 32));
  v95.i64[0] = vpaddq_f32(v95, v95).u64[0];
  v96 = vpadd_f32(*v95.f32, *v95.f32);
  v97 = vmulq_f32(v251[0], *(v9 + 48));
  v97.i64[0] = vpaddq_f32(v97, v97).u64[0];
  v98 = vpadd_f32(*v97.f32, *v97.f32);
  if (vuzp1_s8(vdup_lane_s16(vorr_s8(vorr_s8(vcgt_f32(v93, v96), vcgt_f32(v93, v98)), vcgt_f32(v94, v90)), 0), v80).u32[0] == -1)
  {
    goto LABEL_36;
  }

  v230 = v55.i32[0];
  v231 = v19;
  v232 = v51;
  v99 = vbsl_s8(vdup_lane_s32(vceqz_f32(v80), 0), v80, vmul_f32(v80, v81));
  v100 = vmul_f32(v85, *v86.f32);
  v101 = vdup_lane_s32(vceqz_f32(v85), 0);
  v102 = 0.0;
  v103 = 0.0;
  v228 = v21;
  v229 = v20;
  v226 = v39;
  v227 = v35;
  if (v96.f32[0] < 1.0)
  {
    v104 = -1.0;
    if (v96.f32[0] >= -1.0)
    {
      v104 = v96.f32[0];
    }

    if (v104 > 1.0)
    {
      v104 = 1.0;
    }

    v224 = v56;
    v105 = v15;
    v106 = _D24;
    v107 = v90;
    v225 = v98.i32[0];
    v108 = v99;
    v103 = acosf(v104);
    v99 = v108;
    v102 = 0.0;
    v98.i32[0] = v225;
    v90 = v107;
    v88 = v252[0];
    v89 = v251[0];
    v39 = v226;
    v35 = v227;
    _D24 = v106;
    v21 = v228;
    v20 = v229;
    v15 = v105;
    v56 = v224;
  }

  v109 = vbsl_s8(v101, v85, v100);
  v110 = vmul_n_f32(v99, v103);
  if (v98.f32[0] < 1.0)
  {
    v111 = -1.0;
    if (v98.f32[0] >= -1.0)
    {
      v111 = v98.f32[0];
    }

    if (v111 > 1.0)
    {
      v111 = 1.0;
    }

    v112 = v56;
    v113 = v15;
    v114 = _D24;
    v115 = v90;
    v116 = acosf(v111);
    v90 = v115;
    v88 = v252[0];
    v89 = v251[0];
    v39 = v226;
    v35 = v227;
    _D24 = v114;
    v21 = v228;
    v20 = v229;
    v15 = v113;
    v56 = v112;
    v102 = v116;
  }

  v117 = vdup_lane_s16(vcgt_f32(vmaxnm_f32(vmul_n_f32(v109, v102), v110), v90), 0);
  v51 = v232;
  v55.i32[0] = v230;
  v19 = v231;
  if (vuzp1_s8(v117, v117).u32[0] == -1)
  {
LABEL_36:
    *v9 = v39;
    *(v9 + 16) = v35;
    *(v9 + 32) = v88;
    *(v9 + 48) = v89;
    v146 = *(a2 + 4) == 1.0 && *(a2 + 8) == 1.0 && *(a2 + 12) == 1.0;
    v147 = *(a2 + 16);
    v86.i32[0] = *(_X23 + 24);
    v148 = v86;
    v148.i32[1] = *(_X23 + 28);
    v149 = v148;
    v149.i32[2] = *(_X23 + 32);
    v259 = 0;
    v260 = 0;
    v256 = v149;
    v267 = _X23;
    v269 = *(_X23 + 40) + 20 * *(_X23 + 39);
    v270 = *(_X23 + 38);
    v150.i64[0] = *(_X23 + 60);
    v150.i64[1] = *(_X23 + 68);
    v151 = vmulq_f32(v21, v150);
    *v151.i8 = vpmin_f32(vdup_laneq_s32(v151, 2), *v151.i8);
    *v151.i32 = vpmin_f32(*v151.i8, *v151.i8).f32[0];
    v257 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v151.i32);
    v258 = 0.025 * *v151.i32;
    if (v146)
    {
      v261 = xmmword_1E3047670;
      v262 = xmmword_1E3047680;
      v263 = xmmword_1E30476A0;
      v264 = xmmword_1E3047670;
      v265 = xmmword_1E3047680;
      v266 = xmmword_1E30476A0;
    }

    else
    {
      v152 = vrecpeq_f32(v21);
      v153 = 4;
      do
      {
        v152 = vmulq_f32(v152, vrecpsq_f32(v152, v21));
        --v153;
      }

      while (v153);
      *v154.f32 = vdup_lane_s32(*v20.f32, 0);
      v154.i64[1] = v154.u32[0];
      if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v154, v21)), *v148.f32).u32[0] & 0xFFFFFF) != 0)
      {
        v161 = vdup_lane_s32(*v147.f32, 1);
        v162 = vdup_laneq_s32(v147, 2);
        v163 = vdup_laneq_s32(v147, 3);
        v164 = vaddq_f32(v147, v147);
        v165 = vmul_lane_f32(v161, *v164.f32, 1);
        v166 = vmul_laneq_f32(v162, v164, 2);
        v167 = vmul_n_f32(v161, v164.f32[0]);
        v168 = vmul_n_f32(v162, v164.f32[0]);
        v169 = vmul_n_f32(v163, v164.f32[0]);
        v170 = vmul_lane_f32(v162, *v164.f32, 1);
        v171 = vmul_lane_f32(v163, *v164.f32, 1);
        v172 = vmul_laneq_f32(v163, v164, 2);
        v173 = vsub_f32(_D24, vdup_lane_s32(vmul_f32(*v147.f32, *v164.f32), 0));
        v174 = vsub_f32(vsub_f32(_D24, v165), v166);
        *v164.f32 = vadd_f32(v167, v172);
        v175 = vsub_f32(v168, v171);
        v176 = vsub_f32(v167, v172);
        v177 = vadd_f32(v168, v171);
        v178 = vsub_f32(v170, v169);
        v179 = vext_s8(v177, v178, 4uLL);
        v180 = vsub_f32(v173, v166);
        *v181.f32 = vext_s8(v174, *&vdupq_lane_s32(v176, 1), 4uLL);
        v181.i64[1] = vdup_lane_s32(v179, 0).u32[0];
        v182 = vsub_f32(v173, v165);
        *v183.f32 = vext_s8(*&vdupq_lane_s32(*v164.f32, 0), v180, 4uLL);
        v183.i64[1] = vdup_lane_s32(v179, 1).u32[0];
        v184 = vadd_f32(v170, v169);
        *v185.f32 = vext_s8(*&vdupq_lane_s32(v175, 0), v184, 4uLL);
        v185.i64[1] = vdup_lane_s32(v182, 0).u32[0];
        v186 = vmulq_n_f32(v181, v20.f32[0]);
        v186.i32[3] = 0;
        v187 = vmulq_lane_f32(v183, *v20.f32, 1);
        v187.i32[3] = 0;
        v188 = vmulq_laneq_f32(v185, v20, 2);
        v188.i32[3] = 0;
        v189 = vmulq_lane_f32(v186, v174, 1);
        v189.i32[3] = 0;
        v190 = vmulq_n_f32(v187, v164.f32[0]);
        v190.i32[3] = 0;
        v191 = vmulq_n_f32(v188, *v175.i32);
        v191.i32[3] = 0;
        v155 = vaddq_f32(v191, vaddq_f32(v189, v190));
        v192 = vmulq_lane_f32(v186, v176, 1);
        v192.i32[3] = 0;
        v193 = vmulq_n_f32(v187, *v180.i32);
        v193.i32[3] = 0;
        v194 = vmulq_n_f32(v188, *v184.i32);
        v194.i32[3] = 0;
        v156 = vaddq_f32(v194, vaddq_f32(v192, v193));
        v195 = vmulq_lane_f32(v186, v177, 1);
        v195.i32[3] = 0;
        v196 = vmulq_n_f32(v187, *v178.i32);
        v196.i32[3] = 0;
        v197 = vmulq_n_f32(v188, *v182.i32);
        v197.i32[3] = 0;
        v157 = vaddq_f32(v197, vaddq_f32(v195, v196));
        v261 = v155;
        v262 = v156;
        v198 = vmulq_n_f32(v181, v152.f32[0]);
        v198.i32[3] = 0;
        v199 = vmulq_lane_f32(v183, *v152.f32, 1);
        v199.i32[3] = 0;
        v200 = vmulq_laneq_f32(v185, v152, 2);
        v200.i32[3] = 0;
        v201 = vmulq_lane_f32(v198, v174, 1);
        v201.i32[3] = 0;
        v202 = vmulq_n_f32(v199, v164.f32[0]);
        v202.i32[3] = 0;
        v203 = vmulq_n_f32(v200, *v175.i32);
        v203.i32[3] = 0;
        v204 = vaddq_f32(v203, vaddq_f32(v201, v202));
        v205 = vmulq_lane_f32(v198, v176, 1);
        v205.i32[3] = 0;
        v206 = vmulq_n_f32(v199, *v180.i32);
        v206.i32[3] = 0;
        v207 = vmulq_n_f32(v200, *v184.i32);
        v207.i32[3] = 0;
        v208 = vmulq_lane_f32(v198, v177, 1);
        v208.i32[3] = 0;
        v209 = vmulq_n_f32(v199, *v178.i32);
        v209.i32[3] = 0;
        v210 = vmulq_n_f32(v200, *v182.i32);
        v210.i32[3] = 0;
        v160 = vaddq_f32(v210, vaddq_f32(v208, v209));
        v263 = v157;
        v264 = v204;
        v265 = vaddq_f32(v207, vaddq_f32(v205, v206));
      }

      else
      {
        v152.i32[3] = 0;
        v155 = vmulq_f32(v21, xmmword_1E3047670);
        v156 = vmulq_f32(v21, xmmword_1E3047680);
        v157 = vmulq_f32(v21, xmmword_1E30476A0);
        v261 = v155;
        v262 = v156;
        v158 = vmulq_f32(v152, xmmword_1E3047670);
        v159 = vmulq_f32(v152, xmmword_1E3047680);
        v160 = vmulq_f32(v152, xmmword_1E30476A0);
        v263 = v157;
        v264 = v158;
        v265 = v159;
      }

      v211 = vmulq_n_f32(v155, v86.f32[0]);
      v211.i32[3] = 0;
      v212 = vmulq_lane_f32(v156, *v148.f32, 1);
      v212.i32[3] = 0;
      v213 = vmulq_laneq_f32(v157, v149, 2);
      v213.i32[3] = 0;
      v266 = v160;
      v256 = vaddq_f32(v213, vaddq_f32(v212, v211));
    }

    v268 = *(_X23 + 48);
    v244 = 3;
    v245 = 0;
    v240[0] = 0;
    v240[1] = 0;
    v246 = v19;
    v241 = 0.15 * v55.f32[0];
    v242 = 0.05 * v55.f32[0];
    v243 = 0.05 * v55.f32[0];
    v255 = 0;
    memset(v254, 0, 48);
    v234.i64[1] = v240;
    v234.i64[0] = &unk_1F5D21AE0;
    v235 = &v247;
    v239 = v250;
    v214 = vzip1q_s32(v247, v249);
    v215 = vzip2q_s32(v247, v249);
    v216 = vzip1q_s32(v248, 0);
    v217 = vzip1q_s32(v214, v216);
    v218 = vzip2q_s32(v214, v216);
    v219 = vzip1q_s32(v215, vzip2q_s32(v248, 0));
    v236 = v217;
    v237 = v218;
    v238 = v219;
    v233[1] = &v256;
    if (v146)
    {
      v233[0] = &unk_1F5D22C50;
      v220 = physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullNoScaleV>>(&v234, v233, (v9 + 67), (v9 + 71), (v9 + 66), v254, v250, v15, *v218.i64, v217, *v214.i8);
      v222 = v253;
      v223 = 1;
    }

    else
    {
      v233[0] = &unk_1F5D21818;
      v220 = physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(&v234, v233, &v250, &v253, 1, (v9 + 67), (v9 + 71), (v9 + 66), *v219.i64, *v215.i64, *v218.i8, v217, v254);
      v222 = v253;
      v223 = 0;
    }

    *&v221 = v51;
    return physx::Gu::generateOrProcessContactsBoxConvex(&v234, v233, v252, v251, &v247, v220, v254, v9, v56, v222, v221, a7, v57, v223);
  }

  else if (v57)
  {
    v118 = *(v9 + 80);
    v119 = *(v118 + 32);
    v120 = v119;
    if (v57 != 1)
    {
      v121 = v57 - 1;
      v122 = (v118 + 80);
      v120 = v119;
      do
      {
        v123 = *v122;
        v122 += 3;
        v120 = vaddq_f32(v120, v123);
        --v121;
      }

      while (v121);
    }

    v120.i32[3] = 0;
    v124 = vmulq_f32(v120, v120);
    v124.i64[0] = vpaddq_f32(v124, v124).u64[0];
    v119.i32[3] = 0;
    v125 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v124.f32, *v124.f32), 0x3400000034000000), 0)), 0x1FuLL)), v120, v119);
    v126 = v89;
    v126.i32[3] = 0;
    v124.i64[0] = vdupq_laneq_s32(v89, 3).u64[0];
    v127 = vmulq_n_f32(v125, vmla_f32(0xBF000000BF000000, *v124.f32, *v124.f32).f32[0]);
    v127.i32[3] = 0;
    v128 = vextq_s8(v126, v126, 8uLL).u64[0];
    v129 = vextq_s8(v125, v125, 8uLL).u64[0];
    v130 = vmls_f32(vmul_f32(*v89.f32, vext_s8(*v125.f32, v129, 4uLL)), vext_s8(*v89.f32, v128, 4uLL), *v125.f32);
    *v131.f32 = vext_s8(v130, vmls_f32(vmul_f32(v128, *v125.f32), *v89.f32, v129), 4uLL);
    v131.i64[1] = v130.u32[0];
    v132 = vmlaq_laneq_f32(v127, v131, v89, 3);
    v132.i64[1] = vextq_s8(v132, v132, 8uLL).u32[0];
    v133 = vmulq_f32(v126, v125);
    v133.i64[0] = vpaddq_f32(v133, v133).u64[0];
    v134 = vmlaq_n_f32(v132, v126, vpadd_f32(*v133.f32, *v133.f32).f32[0]);
    v135 = vaddq_f32(v134, v134);
    v135.i32[3] = 0;
    v136 = vmulq_f32(v135, v135);
    v136.i64[0] = vpaddq_f32(v136, v136).u64[0];
    v137 = vpadd_f32(*v136.f32, *v136.f32);
    v138 = vrsqrte_f32(v137);
    v139 = 4;
    do
    {
      v138 = vmul_f32(v138, vrsqrts_f32(vmul_f32(v138, v138), v137));
      --v139;
    }

    while (v139);
    v140 = vbsl_s8(vdup_lane_s32(vceqz_f32(v137), 0), v137, vmul_f32(v137, v138));
    v141 = vrecpe_f32(v140);
    v142 = 4;
    do
    {
      v141 = vmul_f32(v141, vrecps_f32(v140, v141));
      --v142;
    }

    while (v142);
    v143 = vmulq_n_f32(v135, v141.f32[0]);
    v143.i32[3] = 0;
    v256 = v143;
    physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(v9, a7, &v256, v251, &v253);
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::BoxV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullNoScaleV>>(float32x4_t *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, float32x4_t *a6, float32x4_t a7, float32x2_t a8, double a9, float32x4_t a10, int8x8_t a11)
{
  v343 = *MEMORY[0x1E69E9840];
  v16 = a1->i64[1];
  v17 = &v16[1].f32[1];
  v18 = vld1_dup_f32(v17);
  v19 = *(a2 + 8);
  v20 = (v19 + 20);
  v21 = vld1_dup_f32(v20);
  v22 = vmin_f32(v18, v21);
  v23 = vdup_n_s32(0x3DCCCCCDu);
  v24 = vmul_f32(v22, v23);
  v22.i32[0] = v16[1].i32[0];
  v23.i32[0] = *(v19 + 16);
  a10.i32[0] = -v16[2].u8[0];
  a11.i32[0] = -*(v19 + 32);
  v25 = vadd_f32(vand_s8(*a10.f32, v22), vand_s8(a11, v23));
  v326 = 0uLL;
  v325 = 0;
  v26 = *a5;
  __asm { FMOV            V10.2S, #1.0 }

  if (!*a5)
  {
    v54 = vmulq_f32(a7, a7);
    v54.i64[0] = vpaddq_f32(v54, v54).u64[0];
    v46 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v54.f32, *v54.f32)), 0)), a7, xmmword_1E3047670);
    v326 = v46;
    v55 = vmulq_f32(v46, v46);
    v55.i64[0] = vpaddq_f32(v55, v55).u64[0];
    v56 = vpadd_f32(*v55.f32, *v55.f32);
    v57 = vrsqrte_f32(v56);
    v58 = 4;
    do
    {
      v57 = vmul_f32(v57, vrsqrts_f32(vmul_f32(v57, v57), v56));
      --v58;
    }

    while (v58);
    v59 = vbsl_s8(vdup_lane_s32(vceqz_f32(v56), 0), v56, vmul_f32(v56, v57));
    v60 = vrecpe_f32(v59);
    v61 = 4;
    do
    {
      *a10.f32 = vrecps_f32(v59, v60);
      v60 = vmul_f32(v60, *a10.f32);
      --v61;
    }

    while (v61);
    v62 = vmulq_n_f32(v46, v60.f32[0]);
    v62.i32[3] = 0;
    v321 = v62;
    v63 = vneg_f32(0x80000000800000);
    v64.i64[0] = -1;
    v64.i64[1] = -1;
    v65 = 0uLL;
    goto LABEL_52;
  }

  v32 = 0;
  v33 = a1[1].i64[0];
  v34 = v16[3];
  v35 = *(v19 + 160);
  v36 = vnegq_f32(v34);
  v36.i32[3] = 0;
  v37 = -1;
  do
  {
    v38 = a3[v32];
    *(&v331 + v32) = v38;
    v39 = a4[v32];
    *(&v328 + v32) = v39;
    v40 = vbslq_s8(physx::boxVertexTable[v38], v34, v36);
    v41 = vmulq_n_f32(*v33, v40.f32[0]);
    v41.i32[3] = 0;
    v42 = vmulq_lane_f32(v33[1], *v40.f32, 1);
    v42.i32[3] = 0;
    v43 = vmulq_laneq_f32(v33[2], v40, 2);
    v43.i32[3] = 0;
    v44 = vaddq_f32(v43, vaddq_f32(v41, v42));
    a10 = *(v35 + 12 * v39);
    a10.i32[3] = 0;
    v45 = vaddq_f32(v33[3], v44);
    v46 = vsubq_f32(v45, a10);
    *(&v337 + v32) = v45;
    *(&v334 + v32) = a10;
    *(&v340 + v32) = v46;
    ++v37;
    ++v32;
  }

  while (v26 != v32);
  v325 = v26;
  if (v37 == 3)
  {
    physx::Gu::closestPtPointTetrahedron(&v340, &v337, &v334, &v331, &v328, &v325);
    goto LABEL_47;
  }

  if (v37 != 2)
  {
    if (v37 != 1)
    {
      goto LABEL_47;
    }

    v46 = v340;
    v47 = vsubq_f32(v341, v340);
    v48 = vmulq_f32(v47, v47);
    v48.i64[0] = vpaddq_f32(v48, v48).u64[0];
    v49 = vpadd_f32(*v48.f32, *v48.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v49), 0), *v340.f32).u32[0] != -1)
    {
      v50 = vnegq_f32(v340);
      v50.i32[3] = 0;
      v51 = vmulq_f32(v50, v47);
      a10 = vpaddq_f32(v51, v51);
      *a10.f32 = vpadd_f32(*a10.f32, *a10.f32);
      v52 = vrecpe_f32(v49);
      v53 = 4;
      do
      {
        v52 = vmul_f32(v52, vrecps_f32(v49, v52));
        --v53;
      }

      while (v53);
      v46 = vmlaq_n_f32(v340, v47, vmax_f32(vmin_f32(vmul_f32(*a10.f32, v52), _D10), 0).f32[0]);
LABEL_31:
      v46.i64[1] = vextq_s8(v46, v46, 8uLL).u32[0];
      goto LABEL_47;
    }

LABEL_32:
    v325 = 1;
    goto LABEL_47;
  }

  v325 = 3;
  v46 = v340;
  a10 = vsubq_f32(v341, v340);
  v66 = vsubq_f32(v342[0], v340);
  v68 = vmls_f32(vmul_f32(*a10.f32, *&vextq_s8(v66, v66, 4uLL)), *&vextq_s8(a10, a10, 4uLL), *v66.f32);
  *v67.f32 = vext_s8(v68, vmls_f32(vmul_f32(*&vextq_s8(a10, a10, 8uLL), *v66.f32), *a10.f32, *&vextq_s8(v66, v66, 8uLL)), 4uLL);
  v68.i32[1] = 0;
  v69 = vpadd_f32(vmul_f32(*v67.f32, *v67.f32), vmul_f32(v68.u32[0], v68.u32[0]));
  v70 = vpadd_f32(v69, v69);
  if (v70.f32[0] <= 0.00000011921)
  {
    v325 = 2;
    v109 = vmulq_f32(a10, a10);
    v109.i64[0] = vpaddq_f32(v109, v109).u64[0];
    v110 = vpadd_f32(*v109.f32, *v109.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v110), 0), *v340.f32).u32[0] != -1)
    {
      v111 = vnegq_f32(v340);
      v111.i32[3] = 0;
      v112 = vmulq_f32(v111, a10);
      v112.i64[0] = vpaddq_f32(v112, v112).u64[0];
      v113 = vpadd_f32(*v112.f32, *v112.f32);
      v114 = vrecpe_f32(v110);
      v115 = 4;
      do
      {
        v114 = vmul_f32(v114, vrecps_f32(v110, v114));
        --v115;
      }

      while (v115);
      v46 = vmlaq_n_f32(v340, a10, vmax_f32(vmin_f32(vmul_f32(v113, v114), _D10), 0).f32[0]);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *&v67.u32[2] = v68;
  v71 = vextq_s8(v341, v341, 8uLL).u64[0];
  v72 = vextq_s8(v342[0], v342[0], 8uLL).u64[0];
  v73 = vextq_s8(v342[0], v342[0], 4uLL).u64[0];
  v74 = vextq_s8(v341, v341, 4uLL).u64[0];
  v75 = vmls_f32(vmul_f32(*v341.f32, v73), v74, *v342[0].f32);
  *v76.f32 = vext_s8(v75, vmls_f32(vmul_f32(v71, *v342[0].f32), *v341.f32, v72), 4uLL);
  v76.i64[1] = v75.u32[0];
  v77 = vextq_s8(v340, v340, 8uLL).u64[0];
  v78 = vextq_s8(v340, v340, 4uLL).u64[0];
  v79 = vmls_f32(vmul_f32(v78, *v342[0].f32), v73, *v340.f32);
  *v80.f32 = vext_s8(v79, vmls_f32(vmul_f32(*v340.f32, v72), *v342[0].f32, v77), 4uLL);
  v80.i64[1] = v79.u32[0];
  v81 = vmls_f32(vmul_f32(*v340.f32, v74), v78, *v341.f32);
  *v82.f32 = vext_s8(v81, vmls_f32(vmul_f32(v77, *v341.f32), *v340.f32, v71), 4uLL);
  v82.i64[1] = v81.u32[0];
  v83 = vmulq_f32(v76, v67);
  v83.i64[0] = vpaddq_f32(v83, v83).u64[0];
  v84 = vpadd_f32(*v83.f32, *v83.f32);
  v85 = vmulq_f32(v80, v67);
  v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
  v86 = vpadd_f32(*v85.f32, *v85.f32);
  v87 = vmulq_f32(v82, v67);
  v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
  v88 = vpadd_f32(*v87.f32, *v87.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v86), vcgez_f32(v84)), vcgez_f32(v88)), 0), *v340.f32).u32[0] == -1)
  {
    v116 = vmulq_f32(v340, v67);
    v117 = vextq_s8(v116, v116, 8uLL).u64[0];
    v118 = vrecpe_f32(v70);
    v119 = 4;
    do
    {
      v118 = vmul_f32(v118, vrecps_f32(v70, v118));
      --v119;
    }

    while (v119);
    v120 = vpadd_f32(*v116.i8, v117);
    v46 = vmulq_n_f32(v67, vmul_f32(v118, vpadd_f32(v120, v120)).f32[0]);
    v46.i32[3] = 0;
    goto LABEL_47;
  }

  v89 = vnegq_f32(v340);
  v89.i32[3] = 0;
  v90 = vnegq_f32(v341);
  v90.i32[3] = 0;
  v91 = vmulq_f32(v89, a10);
  v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
  v92 = vpadd_f32(*v91.f32, *v91.f32);
  v93 = vmulq_f32(a10, v90);
  v93.i64[0] = vpaddq_f32(v93, v93).u64[0];
  v94 = vpadd_f32(*v93.f32, *v93.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v88), vand_s8(vclez_f32(v94), vcgez_f32(v92))), 0), *v340.f32).u32[0] == -1)
  {
    v121 = vsub_f32(v92, v94);
    v122 = vrecpe_f32(v121);
    v123 = 4;
    do
    {
      v122 = vmul_f32(v122, vrecps_f32(v121, v122));
      --v123;
    }

    while (v123);
    v107 = 0;
    v46 = vmlaq_n_f32(v340, a10, vmul_f32(v92, vbsl_s8(vcgt_f32(vabs_f32(v121), 0x3400000034000000), v122, 0)).f32[0]);
    v106 = 2;
    v108 = &v329;
    v46.i64[1] = vextq_s8(v46, v46, 8uLL).u32[0];
  }

  else
  {
    v95 = vnegq_f32(v342[0]);
    v95.i32[3] = 0;
    v96 = vmulq_f32(v90, v66);
    v96.i64[0] = vpaddq_f32(v96, v96).u64[0];
    v97 = vpadd_f32(*v96.f32, *v96.f32);
    v98 = vmulq_f32(a10, v95);
    v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
    v99 = vpadd_f32(*v98.f32, *v98.f32);
    v100 = vmulq_f32(v66, v95);
    v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
    v101 = vpadd_f32(*v100.f32, *v100.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v97, v94), vcge_f32(v99, v101)), vclez_f32(v84)), 0), *v340.f32).u32[0] == -1)
    {
      v128 = vsub_f32(v97, v94);
      v129 = vadd_f32(v128, vsub_f32(v99, v101));
      v130 = vrecpe_f32(v129);
      v131 = 4;
      do
      {
        v130 = vmul_f32(v130, vrecps_f32(v129, v130));
        --v131;
      }

      while (v131);
      v132 = vmlaq_n_f32(v341, vsubq_f32(v342[0], v341), vmul_f32(v128, vbsl_s8(vcgt_f32(vabs_f32(v129), 0x3400000034000000), v130, 0)).f32[0]);
      v106 = 2;
      v107 = 1;
      v124 = &v333;
      v108 = &v330;
      v132.i64[1] = vextq_s8(v132, v132, 8uLL).u32[0];
      v126 = v339;
      v125 = v336;
      v127 = v342;
      v46 = v132;
      goto LABEL_46;
    }

    v102 = vmulq_f32(v89, v66);
    v103 = vpaddq_f32(v102, v102);
    *v103.i8 = vpadd_f32(*v103.i8, *v103.i8);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v86), vand_s8(vclez_f32(v101), vcgez_f32(*v103.i8))), 0), *v340.f32).u32[0] == -1)
    {
      v133 = vsub_f32(*v103.i8, v101);
      v134 = vrecpe_f32(v133);
      v135 = 4;
      do
      {
        v134 = vmul_f32(v134, vrecps_f32(v133, v134));
        --v135;
      }

      while (v135);
      v107 = 0;
      v46 = vmlaq_n_f32(v340, v66, vmul_f32(*v103.i8, vbsl_s8(vcgt_f32(vabs_f32(v133), 0x3400000034000000), v134, 0)).f32[0]);
      v106 = 2;
      v124 = &v333;
      v108 = &v330;
      v46.i64[1] = vextq_s8(v46, v46, 8uLL).u32[0];
      v126 = v339;
      v125 = v336;
      v127 = v342;
      goto LABEL_46;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(*v103.i8), vclez_f32(v92)), 0), *v340.f32).u32[0] == -1)
    {
      v107 = 0;
      v106 = 1;
      v108 = &v329;
    }

    else
    {
      *v103.i8 = vcge_f32(v94, v97);
      *v46.f32 = vdup_lane_s16(vand_s8(*v103.i8, vcgez_f32(v94)), 0);
      *v46.f32 = vuzp1_s8(*v46.f32, *v46.f32);
      v103.i32[0] = -1;
      v104 = v46.i32[0];
      v105 = vdupq_lane_s32(*&vceqq_s32(v46, v103), 0);
      v106 = 1;
      if (v104 == -1)
      {
        v107 = 1;
      }

      else
      {
        v107 = 2;
      }

      v108 = &v329;
      v46 = vbslq_s8(v105, v341, v342[0]);
    }
  }

  v125 = &v335;
  v124 = &v332;
  v126 = &v338;
  v127 = &v341;
LABEL_46:
  v136 = *(&v340 + v107);
  v137 = *v127;
  a10 = *(&v337 + v107);
  v138 = *v126;
  v139 = *(&v334 + v107);
  v140 = *v125;
  v141 = *(&v331 + v107);
  v142 = *v124;
  v143 = *(&v328 + v107);
  v144 = *v108;
  v340 = v136;
  v341 = v137;
  v337 = a10;
  v338 = v138;
  v334 = v139;
  v335 = v140;
  v331 = v141;
  v332 = v142;
  v328 = v143;
  v329 = v144;
  v325 = v106;
LABEL_47:
  v326 = v46;
  v145 = vmulq_f32(v46, v46);
  v145.i64[0] = vpaddq_f32(v145, v145).u64[0];
  v146 = vpadd_f32(*v145.f32, *v145.f32);
  v147 = vrsqrte_f32(v146);
  v148 = 4;
  do
  {
    v147 = vmul_f32(v147, vrsqrts_f32(vmul_f32(v147, v147), v146));
    --v148;
  }

  while (v148);
  v63 = vbsl_s8(vdup_lane_s32(vceqz_f32(v146), 0), v146, vmul_f32(v146, v147));
  v149 = vrecpe_f32(v63);
  v150 = 4;
  do
  {
    *a10.f32 = vrecps_f32(v63, v149);
    v149 = vmul_f32(v149, *a10.f32);
    --v150;
  }

  while (v150);
  v151 = vmulq_n_f32(v46, v149.f32[0]);
  v151.i32[3] = 0;
  v321 = v151;
  v64 = vdupq_lane_s32(vcgt_f32(v63, v24), 0);
  v65 = v46;
LABEL_52:
  v152 = vadd_f32(v25, a8);
  a10.i32[0] = -1;
  v316 = a10;
  v153.i64[0] = -1;
  v153.i64[1] = -1;
  v154 = v63;
  while (1)
  {
    v155 = v46;
    v156.i64[0] = -1;
    v156.i64[1] = -1;
    *v156.i8 = vmovn_s32(vceqq_s32(v64, v156));
    if (vuzp1_s8(*v156.i8, *v156.i8).u32[0] != -1)
    {
      break;
    }

    v319 = v155;
    v157 = vnegq_f32(v155);
    v157.i32[3] = 0;
    v322 = v63;
    v324 = v157;
    *v158.i64 = physx::Gu::RelativeConvex<physx::Gu::BoxV>::support(a1, &v324, &v331 + v325);
    v320 = v158;
    v159 = v325;
    v160 = *(a2 + 8);
    v161 = physx::Gu::ConvexHullV::supportVertexIndex(v160, &v326);
    *(&v328 + v159) = v161;
    v162 = *(*(v160 + 160) + 12 * v161);
    v162.i32[3] = 0;
    v46 = vsubq_f32(v320, v162);
    v163 = vmulq_f32(v321, v46);
    v163.i64[0] = vpaddq_f32(v163, v163).u64[0];
    v164 = vpadd_f32(*v163.f32, *v163.f32);
    if ((vmvn_s8(vcgt_f32(v164, v152)).u8[0] & 1) == 0)
    {
      if (a3)
      {
        v270 = v325;
        *a5 = v325;
        if (v270)
        {
          v271 = &v328;
          v272 = &v331;
          do
          {
            v273 = *v272++;
            *a3++ = v273;
            v274 = *v271++;
            *a4++ = v274;
            --v270;
          }

          while (v270);
        }
      }

      return 0;
    }

    v165 = v322;
    v166 = v325;
    if (v164.f32[0] > (0.99977 * v322.f32[0]))
    {
      if (!a3)
      {
        goto LABEL_116;
      }

      *a5 = v325;
      if (v166)
      {
        v275 = &v328;
        v276 = &v331;
        v277 = v166;
        do
        {
          v278 = *v276++;
          *a3++ = v278;
          v279 = *v275++;
          *a4++ = v279;
          --v277;
        }

        while (v277);
LABEL_116:
        v280 = a6;
        a6[2] = v321;
        switch(v166)
        {
          case 3:
            v324.i64[0] = 0;
            v327 = 0;
            physx::Gu::barycentricCoordinates(&v326, &v340, &v341, v342, &v324, &v327);
            v165 = v322;
            v296 = vmulq_n_f32(vsubq_f32(v338, v337), v324.f32[0]);
            v296.i32[3] = 0;
            v297 = vmulq_n_f32(vsubq_f32(v339[0], v337), v327.f32[0]);
            v297.i32[3] = 0;
            v281 = vaddq_f32(v337, vaddq_f32(v296, v297));
            v298 = vmulq_n_f32(vsubq_f32(v335, v334), v324.f32[0]);
            v298.i32[3] = 0;
            v299 = vmulq_n_f32(vsubq_f32(v336[0], v334), v327.f32[0]);
            v299.i32[3] = 0;
            v282 = vaddq_f32(v334, vaddq_f32(v298, v299));
            break;
          case 2:
            v288 = vsubq_f32(v340, v326);
            v289 = vsubq_f32(vsubq_f32(v341, v326), v288);
            v290 = vmulq_f32(v289, v289);
            v290.i64[0] = vpaddq_f32(v290, v290).u64[0];
            v291 = vpadd_f32(*v290.f32, *v290.f32);
            v292 = vrecpe_f32(v291);
            v293 = 4;
            do
            {
              v292 = vmul_f32(v292, vrecps_f32(v291, v292));
              --v293;
            }

            while (v293);
            v294 = vnegq_f32(v288);
            v294.i32[3] = 0;
            v295 = vmulq_f32(v294, v289);
            v295.i64[0] = vpaddq_f32(v295, v295).u64[0];
            v294.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v291), v292, 0), vpadd_f32(*v295.f32, *v295.f32)).u32[0];
            v281 = vmlaq_n_f32(v337, vsubq_f32(v338, v337), v294.f32[0]);
            v281.i64[1] = vextq_s8(v281, v281, 8uLL).u32[0];
            v282 = vmlaq_n_f32(v334, vsubq_f32(v335, v334), v294.f32[0]);
            v282.i64[1] = vextq_s8(v282, v282, 8uLL).u32[0];
            break;
          case 1:
            v281 = v337;
            result = 2;
            v282 = v334;
LABEL_142:
            *v280 = v281;
            v280[1] = v282;
            *v280[4].f32 = v165;
            return result;
          default:
LABEL_129:
            result = 2;
            v281 = 0uLL;
            v282 = 0uLL;
            goto LABEL_142;
        }

        result = 2;
        goto LABEL_142;
      }

      v280 = a6;
      a6[2] = v321;
      goto LABEL_129;
    }

    *(&v337 + v325) = v320;
    *(&v334 + v166) = v162;
    v325 = v166 + 1;
    *(&v340 + v166) = v46;
    switch(v166)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v340, &v337, &v334, &v331, &v328, &v325);
        v165 = v322;
        break;
      case 2:
        v46 = v340;
        v175 = vsubq_f32(v341, v340);
        v176 = vsubq_f32(v342[0], v340);
        v178 = vmls_f32(vmul_f32(*v175.f32, *&vextq_s8(v176, v176, 4uLL)), *&vextq_s8(v175, v175, 4uLL), *v176.f32);
        *v177.f32 = vext_s8(v178, vmls_f32(vmul_f32(*&vextq_s8(v175, v175, 8uLL), *v176.f32), *v175.f32, *&vextq_s8(v176, v176, 8uLL)), 4uLL);
        v178.i32[1] = 0;
        v325 = 3;
        v179 = vpadd_f32(vmul_f32(*v177.f32, *v177.f32), vmul_f32(v178.u32[0], v178.u32[0]));
        v180 = vpadd_f32(v179, v179);
        if (v180.f32[0] <= 0.00000011921)
        {
          v325 = 2;
          v219 = vmulq_f32(v175, v175);
          v219.i64[0] = vpaddq_f32(v219, v219).u64[0];
          v220 = vpadd_f32(*v219.f32, *v219.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v220), 0), *v340.f32).u32[0] == -1)
          {
LABEL_79:
            v325 = 1;
            break;
          }

          v221 = vnegq_f32(v340);
          v221.i32[3] = 0;
          v222 = vmulq_f32(v221, v175);
          v222.i64[0] = vpaddq_f32(v222, v222).u64[0];
          v223 = vpadd_f32(*v222.f32, *v222.f32);
          v224 = vrecpe_f32(v220);
          v225 = 4;
          do
          {
            v224 = vmul_f32(v224, vrecps_f32(v220, v224));
            --v225;
          }

          while (v225);
          v46 = vmlaq_n_f32(v340, v175, vmax_f32(vmin_f32(vmul_f32(v223, v224), _D10), 0).f32[0]);
          goto LABEL_78;
        }

        *&v177.u32[2] = v178;
        v181 = vextq_s8(v341, v341, 8uLL).u64[0];
        v182 = vextq_s8(v342[0], v342[0], 8uLL).u64[0];
        v183 = vextq_s8(v342[0], v342[0], 4uLL).u64[0];
        v184 = vextq_s8(v341, v341, 4uLL).u64[0];
        v185 = vmls_f32(vmul_f32(*v341.f32, v183), v184, *v342[0].f32);
        *v186.f32 = vext_s8(v185, vmls_f32(vmul_f32(v181, *v342[0].f32), *v341.f32, v182), 4uLL);
        v186.i64[1] = v185.u32[0];
        v187 = vextq_s8(v340, v340, 8uLL).u64[0];
        v188 = vextq_s8(v340, v340, 4uLL).u64[0];
        v189 = vmls_f32(vmul_f32(v188, *v342[0].f32), v183, *v340.f32);
        *v190.f32 = vext_s8(v189, vmls_f32(vmul_f32(*v340.f32, v182), *v342[0].f32, v187), 4uLL);
        v190.i64[1] = v189.u32[0];
        v191 = vmls_f32(vmul_f32(*v340.f32, v184), v188, *v341.f32);
        *v192.f32 = vext_s8(v191, vmls_f32(vmul_f32(v187, *v341.f32), *v340.f32, v181), 4uLL);
        v192.i64[1] = v191.u32[0];
        v193 = vmulq_f32(v186, v177);
        v193.i64[0] = vpaddq_f32(v193, v193).u64[0];
        v194 = vpadd_f32(*v193.f32, *v193.f32);
        v195 = vmulq_f32(v190, v177);
        v195.i64[0] = vpaddq_f32(v195, v195).u64[0];
        v196 = vpadd_f32(*v195.f32, *v195.f32);
        v197 = vmulq_f32(v192, v177);
        v197.i64[0] = vpaddq_f32(v197, v197).u64[0];
        v198 = vpadd_f32(*v197.f32, *v197.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v196), vcgez_f32(v194)), vcgez_f32(v198)), 0), *v340.f32).u32[0] != -1)
        {
          v199 = vnegq_f32(v340);
          v199.i32[3] = 0;
          v200 = vnegq_f32(v341);
          v200.i32[3] = 0;
          v201 = vmulq_f32(v199, v175);
          v201.i64[0] = vpaddq_f32(v201, v201).u64[0];
          v202 = vpadd_f32(*v201.f32, *v201.f32);
          v203 = vmulq_f32(v175, v200);
          v203.i64[0] = vpaddq_f32(v203, v203).u64[0];
          v204 = vpadd_f32(*v203.f32, *v203.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v198), vand_s8(vclez_f32(v204), vcgez_f32(v202))), 0), *v340.f32).u32[0] == -1)
          {
            v231 = vsub_f32(v202, v204);
            v232 = vrecpe_f32(v231);
            v233 = 4;
            do
            {
              v232 = vmul_f32(v232, vrecps_f32(v231, v232));
              --v233;
            }

            while (v233);
            v217 = 0;
            v46 = vmlaq_n_f32(v340, v175, vmul_f32(v202, vbsl_s8(vcgt_f32(vabs_f32(v231), 0x3400000034000000), v232, 0)).f32[0]);
            v216 = 2;
            v218 = &v329;
            v46.i64[1] = vextq_s8(v46, v46, 8uLL).u32[0];
            goto LABEL_86;
          }

          v205 = vnegq_f32(v342[0]);
          v205.i32[3] = 0;
          v206 = vmulq_f32(v200, v176);
          v206.i64[0] = vpaddq_f32(v206, v206).u64[0];
          v207 = vpadd_f32(*v206.f32, *v206.f32);
          v208 = vmulq_f32(v175, v205);
          v208.i64[0] = vpaddq_f32(v208, v208).u64[0];
          v209 = vpadd_f32(*v208.f32, *v208.f32);
          v210 = vmulq_f32(v176, v205);
          v210.i64[0] = vpaddq_f32(v210, v210).u64[0];
          v211 = vpadd_f32(*v210.f32, *v210.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v207, v204), vcge_f32(v209, v211)), vclez_f32(v194)), 0), *v340.f32).u32[0] == -1)
          {
            v238 = vsub_f32(v207, v204);
            v239 = vadd_f32(v238, vsub_f32(v209, v211));
            v240 = vrecpe_f32(v239);
            v241 = 4;
            do
            {
              v240 = vmul_f32(v240, vrecps_f32(v239, v240));
              --v241;
            }

            while (v241);
            v242 = vmlaq_n_f32(v341, vsubq_f32(v342[0], v341), vmul_f32(v238, vbsl_s8(vcgt_f32(vabs_f32(v239), 0x3400000034000000), v240, 0)).f32[0]);
            v242.i64[1] = vextq_s8(v242, v242, 8uLL).u32[0];
            v216 = 2;
            v46 = v242;
            v217 = 1;
            v218 = &v330;
          }

          else
          {
            v212 = vmulq_f32(v199, v176);
            v212.i64[0] = vpaddq_f32(v212, v212).u64[0];
            v213 = vpadd_f32(*v212.f32, *v212.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v196), vand_s8(vclez_f32(v211), vcgez_f32(v213))), 0), *v340.f32).u32[0] != -1)
            {
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v213), vclez_f32(v202)), 0), *v340.f32).u32[0] == -1)
              {
                v217 = 0;
                v216 = 1;
                v218 = &v329;
              }

              else
              {
                *v46.f32 = vdup_lane_s16(vand_s8(vcge_f32(v204, v207), vcgez_f32(v204)), 0);
                *v46.f32 = vuzp1_s8(*v46.f32, *v46.f32);
                v214 = v46.i32[0];
                v215 = vdupq_lane_s32(*&vceqq_s32(v46, v316), 0);
                v216 = 1;
                if (v214 == -1)
                {
                  v217 = 1;
                }

                else
                {
                  v217 = 2;
                }

                v218 = &v329;
                v46 = vbslq_s8(v215, v341, v342[0]);
              }

LABEL_86:
              v235 = &v335;
              v234 = &v332;
              v236 = &v338;
              v237 = &v341;
LABEL_94:
              v246 = *(&v340 + v217);
              v247 = *v237;
              v248 = *(&v337 + v217);
              v249 = *v236;
              v250 = *(&v334 + v217);
              v251 = *v235;
              v252 = *(&v331 + v217);
              v253 = *v234;
              v254 = *(&v328 + v217);
              v255 = *v218;
              v340 = v246;
              v341 = v247;
              v337 = v248;
              v338 = v249;
              v334 = v250;
              v335 = v251;
              v331 = v252;
              v332 = v253;
              v328 = v254;
              v329 = v255;
              v325 = v216;
              break;
            }

            v243 = vsub_f32(v213, v211);
            v244 = vrecpe_f32(v243);
            v245 = 4;
            do
            {
              v244 = vmul_f32(v244, vrecps_f32(v243, v244));
              --v245;
            }

            while (v245);
            v217 = 0;
            v46 = vmlaq_n_f32(v340, v176, vmul_f32(v213, vbsl_s8(vcgt_f32(vabs_f32(v243), 0x3400000034000000), v244, 0)).f32[0]);
            v216 = 2;
            v218 = &v330;
            v46.i64[1] = vextq_s8(v46, v46, 8uLL).u32[0];
          }

          v235 = v336;
          v234 = &v333;
          v236 = v339;
          v237 = v342;
          goto LABEL_94;
        }

        v226 = vmulq_f32(v340, v177);
        v227 = vextq_s8(v226, v226, 8uLL).u64[0];
        v228 = vrecpe_f32(v180);
        v229 = 4;
        do
        {
          v228 = vmul_f32(v228, vrecps_f32(v180, v228));
          --v229;
        }

        while (v229);
        v230 = vpadd_f32(*v226.i8, v227);
        v46 = vmulq_n_f32(v177, vmul_f32(v228, vpadd_f32(v230, v230)).f32[0]);
        v46.i32[3] = 0;
        break;
      case 1:
        v46 = v340;
        v167 = vsubq_f32(v341, v340);
        v168 = vmulq_f32(v167, v167);
        v168.i64[0] = vpaddq_f32(v168, v168).u64[0];
        v169 = vpadd_f32(*v168.f32, *v168.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v169), 0), *v340.f32).u32[0] == -1)
        {
          goto LABEL_79;
        }

        v170 = vnegq_f32(v340);
        v170.i32[3] = 0;
        v171 = vmulq_f32(v170, v167);
        v171.i64[0] = vpaddq_f32(v171, v171).u64[0];
        v172 = vpadd_f32(*v171.f32, *v171.f32);
        v173 = vrecpe_f32(v169);
        v174 = 4;
        do
        {
          v173 = vmul_f32(v173, vrecps_f32(v169, v173));
          --v174;
        }

        while (v174);
        v46 = vmlaq_n_f32(v340, v167, vmax_f32(vmin_f32(vmul_f32(v172, v173), _D10), 0).f32[0]);
LABEL_78:
        v46.i64[1] = vextq_s8(v46, v46, 8uLL).u32[0];
        break;
    }

    v326 = v46;
    v256 = vmulq_f32(v46, v46);
    v256.i64[0] = vpaddq_f32(v256, v256).u64[0];
    v257 = vpadd_f32(*v256.f32, *v256.f32);
    v258 = vrsqrte_f32(v257);
    v259 = 4;
    do
    {
      v258 = vmul_f32(v258, vrsqrts_f32(vmul_f32(v258, v258), v257));
      --v259;
    }

    while (v259);
    v63 = vbsl_s8(vdup_lane_s32(vceqz_f32(v257), 0), v257, vmul_f32(v257, v258));
    v260 = vrecpe_f32(v63);
    v261 = 4;
    do
    {
      v260 = vmul_f32(v260, vrecps_f32(v63, v260));
      --v261;
    }

    while (v261);
    v262 = vmulq_n_f32(v46, v260.f32[0]);
    v262.i32[3] = 0;
    v321 = v262;
    *v262.f32 = vcgt_f32(v165, v63);
    v153 = vdupq_lane_s32(*v262.f32, 0);
    v64 = vdupq_lane_s32(vand_s8(vcgt_f32(v63, v24), *v262.f32), 0);
    v154 = v165;
    v65 = v319;
  }

  v263 = vmovn_s32(vceqzq_s32(v153));
  v264 = v325;
  if (vuzp1_s8(v263, v263).u32[0] == -1)
  {
    if (a3)
    {
      v283 = v325 - 1;
      *a5 = v325 - 1;
      if (v264 == 1)
      {
LABEL_127:
        v281 = v337;
        v282 = v334;
        goto LABEL_139;
      }

      v284 = &v328;
      v285 = &v331;
      do
      {
        v286 = *v285++;
        *a3++ = v286;
        v287 = *v284++;
        *a4++ = v287;
        --v283;
      }

      while (v283);
    }

    v326 = v65;
    if (v264 == 3)
    {
      v324.i64[0] = 0;
      v327 = 0;
      v323 = v65;
      physx::Gu::barycentricCoordinates(&v326, &v340, &v341, v342, &v324, &v327);
      v308 = vmulq_n_f32(vsubq_f32(v338, v337), v324.f32[0]);
      v308.i32[3] = 0;
      v309 = vmulq_n_f32(vsubq_f32(v339[0], v337), v327.f32[0]);
      v309.i32[3] = 0;
      v310 = vaddq_f32(v308, v309);
      v311 = vmulq_n_f32(vsubq_f32(v335, v334), v324.f32[0]);
      v311.i32[3] = 0;
      v281 = vaddq_f32(v337, v310);
      v312 = vmulq_n_f32(vsubq_f32(v336[0], v334), v327.f32[0]);
      v65 = v323;
      v312.i32[3] = 0;
      v282 = vaddq_f32(v334, vaddq_f32(v311, v312));
    }

    else
    {
      if (v264 == 2)
      {
        v300 = vsubq_f32(v340, v65);
        v301 = vsubq_f32(vsubq_f32(v341, v65), v300);
        v302 = vmulq_f32(v301, v301);
        v302.i64[0] = vpaddq_f32(v302, v302).u64[0];
        v303 = vpadd_f32(*v302.f32, *v302.f32);
        v304 = vrecpe_f32(v303);
        v305 = 4;
        do
        {
          v304 = vmul_f32(v304, vrecps_f32(v303, v304));
          --v305;
        }

        while (v305);
        v306 = vnegq_f32(v300);
        v306.i32[3] = 0;
        v307 = vmulq_f32(v306, v301);
        v307.i64[0] = vpaddq_f32(v307, v307).u64[0];
        v306.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v303), v304, 0), vpadd_f32(*v307.f32, *v307.f32)).u32[0];
        v281 = vmlaq_n_f32(v337, vsubq_f32(v338, v337), v306.f32[0]);
        v281.i64[1] = vextq_s8(v281, v281, 8uLL).u32[0];
        v282 = vmlaq_n_f32(v334, vsubq_f32(v335, v334), v306.f32[0]);
        v282.i64[1] = vextq_s8(v282, v282, 8uLL).u32[0];
        goto LABEL_139;
      }

      v281 = 0uLL;
      v282 = 0uLL;
      if (v264 == 1)
      {
        goto LABEL_127;
      }
    }

LABEL_139:
    v313 = vrecpe_f32(v154);
    v314 = 4;
    do
    {
      v313 = vmul_f32(v313, vrecps_f32(v154, v313));
      --v314;
    }

    while (v314);
    v315 = vmulq_n_f32(v65, v313.f32[0]);
    v315.i32[3] = 0;
    v280 = a6;
    a6[2] = v315;
    a6[3] = v321;
    result = 4;
    v165 = v154;
    goto LABEL_142;
  }

  if (a3)
  {
    *a5 = v325;
    if (v264)
    {
      v265 = &v328;
      v266 = &v331;
      do
      {
        v267 = *v266++;
        *a3++ = v267;
        v268 = *v265++;
        *a4++ = v268;
        --v264;
      }

      while (v264);
    }
  }

  return 5;
}