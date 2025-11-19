uint64_t physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::resize(uint64_t result, unsigned int a2, _DWORD *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = *v5 + 4 * a2;
    v8 = (*v5 + 4 * v6);
    do
    {
      *v8++ = *a3;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxPlane,physx::shdfnd::ReflectionAllocator<physx::PxPlane>>::resize(uint64_t result, unsigned int a2, __int128 *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::PxPlane,physx::shdfnd::ReflectionAllocator<physx::PxPlane>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = *v5 + 16 * a2;
    v8 = (*v5 + 16 * v6);
    v9 = *a3;
    do
    {
      *v8++ = v9;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = a2;
  return result;
}

float32x4_t physx::computeVolumeIntegralsEberlySIMD(uint64_t a1, uint64_t a2, float *a3, float32x4_t result, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = 0;
    result.i64[0] = *a3;
    result.i64[1] = *(a3 + 2);
    v11 = *(a1 + 8);
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    v14 = 0uLL;
    v15 = 0;
    a9.i64[0] = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = (v12 + 20 * v10);
      if (v18[1].i8[2] != 2)
      {
        v19 = 0;
        v20 = v18[1].u16[0];
        v21 = vsubq_f32(*(v11 + 12 * *(v13 + v20)), result);
        v22 = vextq_s8(v21, v21, 8uLL).u64[0];
        *v23.f32 = vext_s8(*v21.f32, v22, 4uLL);
        v23.i64[1] = __PAIR64__(v22.u32[1], v21.u32[0]);
        v24 = *v18;
        v24.i32[3] = 0;
        v25 = vmulq_f32(v21, v21);
        v26 = vmulq_f32(v21, v25);
        do
        {
          v27 = vsubq_f32(*(v11 + 12 * *(v13 + 1 + v20 + v19)), result);
          v28 = vsubq_f32(*(v11 + 12 * *(v13 + v20 + (v19 + 2))), result);
          v29 = vextq_s8(v27, v27, 8uLL).u64[0];
          *v30.f32 = vext_s8(*v27.f32, v29, 4uLL);
          v31 = vsubq_f32(v27, v21);
          v32 = vsubq_f32(v28, v21);
          v33 = vmls_f32(vmul_f32(*v31.f32, *&vextq_s8(v32, v32, 4uLL)), *&vextq_s8(v31, v31, 4uLL), *v32.i8);
          *v31.f32 = vext_s8(v33, vmls_f32(vmul_f32(*&vextq_s8(v31, v31, 8uLL), *v32.i8), *v31.f32, *&vextq_s8(v32, v32, 8uLL)), 4uLL);
          v31.i64[1] = v33.u32[0];
          v34 = v31;
          v34.i32[3] = 0;
          v35 = vmulq_f32(v24, v34);
          v36 = vpaddq_f32(v35, v35);
          *v36.f32 = vpadd_f32(*v36.f32, *v36.f32);
          v37 = vdupq_lane_s32(*&vmvnq_s8(vcgtq_f32(a9, v36)), 0);
          v38 = vbslq_s8(v37, v28, v27);
          v39 = vbslq_s8(v37, v27, v28);
          v27.i32[1] = v29.i32[1];
          v30.i64[1] = v27.i64[0];
          v27.i64[0] = vextq_s8(v28, v28, 8uLL).u64[0];
          *v40.f32 = vext_s8(*v28.f32, *v27.f32, 4uLL);
          v28.i32[1] = v27.i32[1];
          v40.i64[1] = v28.i64[0];
          v41 = vbslq_s8(v37, v31, vnegq_f32(v31));
          v42 = vaddq_f32(v21, v39);
          v43 = vaddq_f32(v38, v42);
          v44 = vmlaq_f32(v25, v42, v39);
          v45 = vmlaq_f32(v26, v44, v39);
          v46 = vmlaq_f32(v44, v43, v38);
          v15 = vmla_n_f32(v15, vdup_lane_s32(*v43.f32, 0), v41.f32[0]);
          v14 = vmlaq_f32(v14, v46, v41);
          v16 = vmlaq_f32(v16, vmlaq_f32(v45, v46, v38), v41);
          v17 = vmlaq_f32(v17, vmlaq_f32(vmlaq_f32(vmulq_f32(vmlaq_f32(v46, vaddq_f32(v21, v43), v21), v23), vmlaq_f32(v46, vaddq_f32(v39, v43), v39), v30), vmlaq_f32(v46, vaddq_f32(v38, v43), v38), v40), v41);
          ++v19;
        }

        while (v18[1].u8[2] - 2 != v19);
      }

      ++v10;
    }

    while (v10 != v9);
    *result.f32 = vmul_f32(v15, vdup_n_s32(0x3E2AAAABu));
    v47 = vmulq_f32(v16, vdupq_n_s32(0x3C888889u));
    v48 = vmulq_f32(v14, vdupq_n_s32(0x3D2AAAABu));
    v49 = vmulq_f32(v17, vdupq_n_s32(0x3C088889u));
  }

  else
  {
    result.i64[0] = 0;
    v49 = 0uLL;
    v47.i64[0] = 0;
    v47.i32[2] = 0;
    v48 = 0uLL;
  }

  v50 = vrecpe_f32(*result.f32);
  v51 = 4;
  do
  {
    v50 = vmul_f32(v50, vrecps_f32(*result.f32, v50));
    --v51;
  }

  while (v51);
  _Q1 = vmulq_n_f32(v48, v50.f32[0]);
  *a2 = _Q1;
  v53 = (v47.f32[1] + v47.f32[2]);
  *(a2 + 16) = result.f32[0];
  *(a2 + 24) = v53;
  v54 = (v47.f32[0] + v47.f32[2]);
  v55 = vaddv_f32(*v47.f32);
  v56 = -*&v49.i32[1];
  *(a2 + 56) = v54;
  *(a2 + 64) = v56;
  _S5 = _Q1.i32[2];
  _S6 = _Q1.i32[1];
  __asm { FMLA            S17, S6, V1.S[1] }

  *(a2 + 88) = v55;
  *(a2 + 96) = v53 - (_S17 * result.f32[0]);
  __asm { FMLA            S18, S5, V1.S[2] }

  v65 = vmuls_lane_f32(_Q1.f32[1], *_Q1.f32, 1) + (_Q1.f32[0] * _Q1.f32[0]);
  *(a2 + 160) = v55 - (v65 * result.f32[0]);
  v66 = v56 + vmuls_lane_f32(vmuls_lane_f32(result.f32[0], *_Q1.f32, 1), _Q1, 2);
  *(a2 + 128) = v54 - (_S18 * result.f32[0]);
  *(a2 + 136) = v66;
  v67.i32[0] = vextq_s8(v49, v49, 8uLL).u32[0];
  v67.i32[1] = v49.i32[0];
  v68 = vcvtq_f64_f32(vneg_f32(v67));
  *(a2 + 32) = v68.f64[1];
  *(a2 + 72) = v68.f64[0];
  *(a2 + 80) = v56;
  *(a2 + 40) = v68;
  v69 = vextq_s8(_Q1, _Q1, 8uLL).u32[0];
  v70 = vaddq_f64(v68, vcvtq_f64_f32(vmul_f32(*_Q1.f32, vmul_n_f32(__PAIR64__(_Q1.u32[0], v69), result.f32[0]))));
  *(a2 + 120) = v70.i64[1];
  *(a2 + 144) = v70.i64[0];
  *(a2 + 152) = v66;
  *(a2 + 104) = vextq_s8(v70, v70, 8uLL);
  v71 = *a3;
  v72 = a3[2];
  if (COERCE_FLOAT(*a3) != 0.0 || *(&v71 + 1) != 0.0 || v72 != 0.0)
  {
    _D21 = vadd_f32(*_Q1.f32, *&v71);
    v74 = _Q1.f32[2] + v72;
    _S24 = _D21.i32[1];
    __asm { FMLA            S23, S24, V21.S[1] }

    *(a2 + 24) = v53 - (result.f32[0] * (_S17 - _S23));
    v77 = v54 - (result.f32[0] * (_S18 - (vmul_f32(_D21, _D21).f32[0] + (v74 * v74))));
    *(a2 + 88) = v55 - (result.f32[0] * (v65 - (vmuls_lane_f32(_D21.f32[1], _D21, 1) + (_D21.f32[0] * _D21.f32[0]))));
    v78 = (result.f32[0] * ((_Q1.f32[1] * _Q1.f32[2]) - (_D21.f32[1] * v74)));
    v79 = vdup_lane_s32(_D21, 0);
    v79.f32[0] = v74;
    result = vaddq_f64(v68, vcvtq_f64_f32(vmul_n_f32(vmla_n_f32(vmul_f32(_D21, vneg_f32(v79)), __PAIR64__(_Q1.u32[1], v69), _Q1.f32[0]), result.f32[0])));
    *(a2 + 32) = result.i64[1];
    *(a2 + 56) = v77;
    *(a2 + 64) = v56 + v78;
    *(a2 + 72) = result.i64[0];
    *(a2 + 80) = v56 + v78;
    *(a2 + 40) = result;
    *a2 = _D21;
    *(a2 + 8) = v74;
  }

  return result;
}

uint64_t physx::computeVolumeIntegralsEberly(uint64_t result, uint64_t a2, float *a3)
{
  v107 = *MEMORY[0x1E69E9840];
  v105 = 0u;
  memset(v106, 0, sizeof(v106));
  v103 = 0u;
  v104 = 0u;
  v3 = *(result + 40);
  if (v3)
  {
    v4 = 0;
    v5 = *(result + 8);
    v6 = *(result + 32);
    v7 = 0.0;
    v8 = 0.0;
    v9 = *(result + 56);
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v100 = a3[1];
    v101 = *a3;
    v14 = 0.0;
    v15 = 0.0;
    v99 = a3[2];
    v16 = 0.0;
    v17 = 0.0;
    do
    {
      v18 = v6 + 20 * v4;
      v19 = *(v18 + 18);
      if (v19 != 2)
      {
        v20 = (v9 + *(v18 + 16));
        v21 = (v5 + 12 * *v20);
        v22 = v21[1] - v100;
        v23 = v21[2] - v99;
        v96 = *(v18 + 4);
        v97 = *v18;
        v95 = *(v18 + 8);
        v98 = *v21 - v101;
        v24 = v98;
        v25 = v22;
        v26 = v23;
        v27 = v24 * v24;
        v28 = v25 * v25;
        v29 = v26 * v26;
        for (i = 2; i != v19; ++i)
        {
          v31 = (v5 + 12 * v20[(i - 1) % v19]);
          v32 = *v31 - v101;
          v33 = v31[1] - v100;
          v34 = v31[2] - v99;
          result = v5 + 12 * v20[i % v19];
          v35 = *result - v101;
          v36 = *(result + 4) - v100;
          v37 = *(result + 8) - v99;
          v38 = ((v33 - v22) * (v37 - v23)) - ((v34 - v23) * (v36 - v22));
          v39 = ((v34 - v23) * (v35 - v98)) - ((v32 - v98) * (v37 - v23));
          v40 = ((v32 - v98) * (v36 - v22)) - ((v33 - v22) * (v35 - v98));
          if ((((v96 * v39) + (v38 * v97)) + (v40 * v95)) >= 0.0)
          {
            v41 = *result - v101;
            v42 = *(result + 4) - v100;
            v43 = *(result + 8) - v99;
            v35 = v32;
            v36 = v33;
            v37 = v34;
          }

          else
          {
            v38 = -v38;
            v39 = -v39;
            v40 = -v40;
            v41 = v32;
            v42 = v33;
            v43 = v34;
          }

          v44 = v35;
          v45 = v41;
          v46 = v38;
          v47 = v24 + v44 + v45;
          v48 = v27 + v44 * (v24 + v44);
          v49 = v48 + v45 * v47;
          v50 = v49 + v24 * (v47 + v24);
          v51 = v49 + v44 * (v47 + v44);
          v17 = v17 + v46 * v47;
          v52 = v49 + v45 * (v47 + v45);
          v16 = v16 + v46 * v49;
          v13 = v13 + v46 * (v48 * v44 + v24 * v27 + v45 * v49);
          v53 = v42;
          v54 = v25 + v36;
          v55 = v51 * v36 + v25 * v50 + v53 * v52;
          v56 = v54 + v53;
          v57 = v28 + v36 * v54;
          v10 = v10 + v46 * v55;
          v58 = v57 + v53 * v56;
          v15 = v15 + v39 * v58;
          v12 = v12 + v39 * (v57 * v36 + v25 * v28 + v53 * v58);
          v59 = v43;
          v60 = v26 + v37;
          v61 = (v58 + v36 * (v56 + v36)) * v37 + v26 * (v58 + v25 * (v56 + v25)) + v59 * (v58 + v53 * (v56 + v53));
          v62 = v60 + v59;
          v63 = v29 + v37 * v60;
          v8 = v8 + v39 * v61;
          v64 = v63 + v59 * v62;
          v14 = v14 + v40 * v64;
          v11 = v11 + v40 * (v63 * v37 + v26 * v29 + v59 * v64);
          v7 = v7 + v40 * ((v64 + v37 * (v62 + v37)) * v44 + v24 * (v64 + v26 * (v62 + v26)) + v45 * (v64 + v59 * (v62 + v59)));
        }
      }

      ++v4;
    }

    while (v4 != v3);
    v103.f64[0] = v16;
    v103.f64[1] = v15;
    *&v104 = v14;
    *(&v104 + 1) = v13;
    *&v105 = v12;
    *(&v105 + 1) = v11;
    *v106 = v10;
    *&v106[8] = v8;
    *&v106[16] = v7;
  }

  else
  {
    v17 = 0.0;
  }

  v65 = 0;
  v102 = v17;
  do
  {
    *(&v102 + v65 * 16) = vmulq_f64(xmmword_1E31179A8[v65], *(&v102 + v65 * 16));
    ++v65;
  }

  while (v65 != 5);
  v66 = v102;
  _D1 = vcvt_f32_f64(vdivq_f64(v103, vdupq_lane_s64(*&v102, 0)));
  *a2 = _D1;
  v68 = *(&v104 + 1);
  v69 = *&v104 / v66;
  *(a2 + 8) = v69;
  v70 = v105;
  v71 = *&v105 + *(&v105 + 1);
  *(a2 + 16) = v66;
  *(a2 + 24) = v71;
  v72 = *(&v70 + 1) + v68;
  v73 = *&v70 + v68;
  v74 = *v106;
  v75 = -*v106;
  *(a2 + 48) = -*v106;
  *(a2 + 56) = *(&v70 + 1) + v68;
  *(a2 + 32) = v75;
  v76 = vnegq_f64(*&v106[8]);
  *(a2 + 80) = v76.f64[0];
  *(a2 + 88) = v73;
  *(a2 + 64) = v76;
  *(a2 + 40) = v76.f64[1];
  _S17 = _D1.i32[1];
  __asm { FMLA            S18, S17, V1.S[1] }

  v83 = vmul_f32(_D1, _D1).f32[0] + (v69 * v69);
  v84 = vmuls_lane_f32(_D1.f32[1], _D1, 1) + (_D1.f32[0] * _D1.f32[0]);
  v85 = -(v74 - v66 * vmuls_lane_f32(_D1.f32[0], _D1, 1));
  *(a2 + 96) = v71 - v66 * _S18;
  *(a2 + 104) = v85;
  v86 = v76.f64[0] + v66 * vmuls_lane_f32(v69, _D1, 1);
  *(a2 + 128) = v72 - v66 * v83;
  *(a2 + 136) = v86;
  v87 = v76.f64[1] + v66 * (v69 * _D1.f32[0]);
  *(a2 + 152) = v86;
  *(a2 + 160) = v73 - v66 * v84;
  *(a2 + 144) = v87;
  *(a2 + 112) = v87;
  *(a2 + 120) = v85;
  v88 = a3[1];
  v89 = a3[2];
  if (*a3 != 0.0 || v88 != 0.0 || v89 != 0.0)
  {
    v90 = *a3 + _D1.f32[0];
    v91 = v88 + _D1.f32[1];
    v92 = v89 + v69;
    *(a2 + 88) = v73 + -v66 * (v84 - ((v91 * v91) + (v90 * v90)));
    v93 = v75 + v66 * ((_D1.f32[0] * _D1.f32[1]) - (v90 * v91));
    *(a2 + 24) = v71 + -v66 * (_S18 - ((v92 * v92) + (v91 * v91)));
    *(a2 + 32) = v93;
    v76.f64[0] = v76.f64[0] + v66 * ((_D1.f32[1] * v69) - (v91 * v92));
    *(a2 + 56) = v72 + -v66 * (v83 - ((v90 * v90) + (v92 * v92)));
    *(a2 + 64) = v76.f64[0];
    v94 = v76.f64[1] + v66 * ((v69 * _D1.f32[0]) - (v92 * v90));
    *(a2 + 72) = v94;
    *(a2 + 80) = v76.f64[0];
    *(a2 + 40) = v94;
    *(a2 + 48) = v93;
    *a2 = v90;
    *(a2 + 4) = v91;
    *(a2 + 8) = v92;
  }

  return result;
}

void physx::ConvexMeshBuilder::~ConvexMeshBuilder(physx::ConvexMeshBuilder *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    physx::BigConvexData::~BigConvexData(*(this + 19));
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
  }

  *(this + 19) = 0;

  physx::ConvexPolygonsBuilder::~ConvexPolygonsBuilder(this);
}

uint64_t physx::ConvexMeshBuilder::build(float32x4_t *a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  if (v8 < 3 || v8 >= 0x10000 && (*(a2 + 72) & 1) != 0)
  {
    goto LABEL_9;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_9;
  }

  if (*a2 < 0xCu || *(a2 + 76) < 4u)
  {
    goto LABEL_9;
  }

  if (*(a2 + 32))
  {
    if (*(a2 + 40) < 4u || !*(a2 + 56))
    {
      goto LABEL_9;
    }

    v14 = *(a2 + 72);
    v15 = (v14 & 1) != 0 ? 2 : 4;
    if (*(a2 + 48) < v15 || *(a2 + 24) <= 0x13u)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = *(a2 + 72);
    if ((v14 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  v16 = *(a2 + 74);
  if ((v14 & 0x20) != 0)
  {
    if ((v16 - 4) < 0xFD)
    {
      goto LABEL_25;
    }

LABEL_9:
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexMeshBuilder.cpp", 73, "Gu::ConvexMesh::loadFromDesc: desc.isValid() failed!", a6, a7, a8, v23.i8[0]);
    return 0;
  }

  if ((v16 - 8) >= 0xF9)
  {
    goto LABEL_9;
  }

LABEL_25:
  result = physx::ConvexMeshBuilder::loadConvexHull(a1, a2, a5);
  if (result)
  {
    v17 = a1[7].u8[6];
    physx::Gu::computeBoundsAroundVertices(&v23, v17, a1->i64[0]);
    v18 = vextq_s8(v23, v23, 8uLL);
    v19 = vextq_s8(v23, v18, 0xCuLL);
    v20 = vsubq_f32(v23, v19);
    *&v19.i32[1] = v24;
    v21 = vaddq_f32(v23, v19);
    v21.i32[3] = v20.i32[3];
    v22 = vsub_f32(v24, vext_s8(*v23.i8, *v18.f32, 4uLL));
    v18.i64[0] = 0x3F0000003F000000;
    v18.i64[1] = 0x3F0000003F000000;
    a1[5] = vmulq_f32(v21, v18);
    *a1[6].f32 = vmul_f32(v22, 0x3F0000003F000000);
    if (v17 > a3)
    {
      physx::ConvexMeshBuilder::computeGaussMaps(a1);
    }

    if ((a4 & 1) == 0)
    {
      physx::ConvexMeshBuilder::computeInternalObjects(a1);
    }

    return 1;
  }

  return result;
}

uint64_t physx::ConvexMeshBuilder::loadConvexHull(uint64_t *a1, unsigned int *a2, uint64_t a3)
{
  v196 = *MEMORY[0x1E69E9840];
  v6 = a2[4];
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v165[-v7];
  bzero(&v165[-v7], v9);
  if (v6)
  {
    v11 = *a2;
    v12 = *(a2 + 1);
    v13 = v8;
    v14 = v6;
    do
    {
      *v13 = *v12;
      *(v13 + 2) = *(v12 + 8);
      v13 += 12;
      v12 += v11;
      --v14;
    }

    while (v14);
  }

  v174 = a3;
  v15 = *(a2 + 7);
  if (v15)
  {
    v16 = a2[16];
    MEMORY[0x1EEE9AC00](v10);
    v18 = &v165[-((v17 + 15) & 0x7FFFFFFF0)];
    bzero(v18, v17);
    if (a2[18])
    {
      if (v16)
      {
        v21 = a2[12];
        v22 = v18;
        do
        {
          *v22 = *v15;
          v22 += 4;
          v15 = (v15 + v21);
        }

        while (v22 < &v18[4 * v16]);
      }
    }

    else if (v16)
    {
      v19 = 0;
      v20 = a2[12];
      do
      {
        *&v18[4 * v19] = *v15;
        v15 = (v15 + v20);
        ++v19;
      }

      while (v16 != v19);
    }
  }

  else
  {
    v18 = 0;
  }

  v23 = *(a2 + 4);
  v24 = a2[10];
  if (v23)
  {
    MEMORY[0x1EEE9AC00](v10);
    v26 = &v165[-((v25 + 15) & 0x3FFFFFFFF0)];
    bzero(v26, v25);
    if (v24)
    {
      v27 = a2[6];
      v28 = v26;
      v29 = v24;
      do
      {
        *v28 = *v23;
        *(v28 + 4) = *(v23 + 16);
        v28 += 20;
        v23 += v27;
        --v29;
      }

      while (v29);
      if (!v174 && v24 != 1)
      {
        v30 = 0;
        v31 = 1;
        v32 = 36;
        do
        {
          if (*&v26[v32] > *&v26[20 * v30 + 16])
          {
            v30 = v31;
          }

          ++v31;
          v32 += 20;
        }

        while (v24 != v31);
        if (v30)
        {
          v33 = *(v26 + 4);
          v34 = *v26;
          v35 = &v26[20 * v30];
          *v26 = *v35;
          *(v26 + 4) = *(v35 + 4);
          *v35 = v34;
          *(v35 + 4) = v33;
        }
      }
    }
  }

  else
  {
    v26 = 0;
  }

  v171 = *(a2 + 36);
  v36 = a2[16];
  a1[6] = 0;
  v37 = a1 + 6;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  *(a1[7] + 38) = v6;
  v38 = 12 * v6;
  v39 = &re::introspect_BOOL(BOOL)::info;
  v40 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v38 + 12, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", 119);
  *a1 = v40;
  memcpy(v40, v8, 12 * *(a1[7] + 38));
  *(a1[7] + 39) = 0;
  if (a1[2])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  a1[2] = 0;
  if (a1[1])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  a1[1] = 0;
  if (v24 >= 0x100)
  {
    v44 = physx::shdfnd::Foundation::mInstance;
    v45 = "ConvexHullBuilder::init: convex hull has more than 255 polygons!";
    v46 = 129;
LABEL_33:
    physx::shdfnd::Foundation::error(v44, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", v46, v45, v41, v42, v43, v165[0]);
LABEL_160:
    physx::shdfnd::Foundation::error(v39[428], 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexMeshBuilder.cpp", 312, "Gu::ConvexMesh::loadConvexHull: convex hull init failed!", v41, v42, v43, v165[0]);
    return 0;
  }

  *(a1[7] + 39) = v24;
  if (v24)
  {
    a1[1] = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, (20 * v24), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", 135);
    v47 = physx::shdfnd::ReflectionAllocator<unsigned char>::allocate(&v190, v36, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", 137);
    v48 = 0;
    a1[2] = v47;
    v49 = a1[1];
    do
    {
      v50 = &v26[20 * v48];
      v51 = v49 + 20 * v48;
      *(v51 + 16) = v47 - *(a1 + 8);
      v52 = *(v50 + 8);
      *(v51 + 18) = v52;
      if (v52)
      {
        v53 = &v18[4 * *(v50 + 9)];
        v54 = v47;
        v55 = v52;
        do
        {
          v56 = *v53;
          v53 += 4;
          *v54++ = v56;
          --v55;
        }

        while (v55);
        v49 = a1[1];
      }

      else
      {
        v52 = 0;
      }

      *(v49 + 20 * v48) = *v50;
      v47 += v52;
      ++v48;
    }

    while (v48 != v24);
  }

  else
  {
    a1[1] = 0;
    a1[2] = physx::shdfnd::ReflectionAllocator<unsigned char>::allocate(&v190, v36, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", 137);
  }

  v57 = v174;
  if ((physx::ConvexHullBuilder::calculateVertexMapTable(a1, v24, v174 == 0) & 1) == 0)
  {
    goto LABEL_160;
  }

  if (v57 && ((*(*v57 + 32))(v57, v36, a1[2], a1 + 3, a1 + 5, a1 + 6) & 1) != 0)
  {
    *(a1[7] + 36) = v36 >> 1;
    v67 = v171;
    if (!v24)
    {
      goto LABEL_125;
    }

    goto LABEL_116;
  }

  if (v36)
  {
    v44 = physx::shdfnd::Foundation::mInstance;
    v45 = "Cooking::cookConvexMesh: non-manifold mesh cannot be used, invalid mesh!";
    v46 = 567;
    goto LABEL_33;
  }

  v68 = *(a1[7] + 39);
  if (a1[3])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  a1[3] = 0;
  a1[3] = physx::shdfnd::ReflectionAllocator<unsigned char>::allocate(&v190, v36, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", 575);
  v170 = physx::shdfnd::ReflectionAllocator<unsigned int>::allocate(&v190, 4 * (8 * v36), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", 577);
  v174 = v170 + 4 * v36;
  v173 = v174 + 4 * v36;
  v172 = v173 + 4 * v36;
  v168 = v172 + 4 * v36;
  v167 = v168 + 4 * v36;
  v69 = v167 + 4 * v36;
  v70 = (v69 + 4 * v36);
  v71 = physx::shdfnd::ReflectionAllocator<BOOL>::allocate(&v190, v36, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", 589);
  if (v68)
  {
    v72 = 0;
    v73 = 0;
    v74 = v170;
    v75 = a1[1];
    v76 = a1[2];
    v78 = v173;
    v77 = v174;
    v79 = v71;
    v80 = v172;
    do
    {
      v81 = v75 + 20 * v72;
      v82 = *(v81 + 18);
      if (*(v81 + 18))
      {
        v83 = 0;
        v84 = 0;
        v85 = v76 + *(v81 + 16);
        do
        {
          v86 = *(v85 + v84);
          if (v82 - 1 == v84)
          {
            v87 = 0;
          }

          else
          {
            v87 = v84 + 1;
          }

          v88 = *(v85 + v87);
          v89 = v86 > v88;
          if (v86 <= v88)
          {
            v90 = v88;
          }

          else
          {
            v90 = *(v85 + v84);
          }

          if (v86 >= v88)
          {
            v86 = v88;
          }

          *(v74 + 4 * v84) = v86;
          *(v77 + 4 * v84) = v90;
          *(v78 + 4 * v84) = v72;
          *(v80 + 4 * v84) = v84;
          *(v79 + v84) = v89;
          v91 = v73 + v84++;
          v70[v91] = v91;
          v83 -= 4;
        }

        while (v82 != v84);
        v74 -= v83;
        v77 -= v83;
        v78 -= v83;
        v73 += v84;
        v79 += v84;
        v80 -= v83;
      }

      ++v72;
    }

    while (v72 != v68);
  }

  v169 = v71;
  v194 = 0;
  v193 = 0u;
  v192 = 0u;
  v195 = 1;
  v191 = 0x80000000;
  v166 = &unk_1F5D21400;
  v190 = &unk_1F5D21400;
  physx::Cm::RadixSortBuffered::Sort(&v190);
  physx::Cm::RadixSortBuffered::Sort(&v190);
  v92 = v192;
  if (*v37)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v37 = 0;
  *v37 = physx::shdfnd::ReflectionAllocator<unsigned short>::allocate(&v179, 2 * v36, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", 635);
  if (a1[5])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  a1[5] = 0;
  v93 = physx::shdfnd::ReflectionAllocator<unsigned short>::allocate(&v179, 2 * v36, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", 639);
  a1[5] = v93;
  v94 = a1[7];
  *(v94 + 36) = 0;
  if (v36)
  {
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v98 = *v37;
    v99 = -1;
    v100 = -1;
    v101 = -1;
    v39 = &re::introspect_BOOL(BOOL)::info;
    v67 = v171;
    v103 = v169;
    v102 = v170;
    v105 = v167;
    v104 = v168;
    while (1)
    {
      v106 = *(v92 + 4 * v95);
      v107 = *(v173 + 4 * v106);
      v108 = *(v172 + 4 * v106);
      v109 = *(v102 + 4 * v106);
      v110 = *(v174 + 4 * v106);
      if (v109 == v101 && v110 == v100)
      {
        v114 = v96;
        v115 = 2 * v96;
        *(a1[3] + v115 - 2) = v99;
        *(a1[3] + v115 - 1) = v107;
        ++v97;
        v93 = a1[5];
      }

      else
      {
        if (v95 && v97 != 1)
        {
          v125 = 675;
          goto LABEL_159;
        }

        v97 = 0;
        if (*(v103 + v106))
        {
          v112 = *(v102 + 4 * v106);
        }

        else
        {
          v112 = *(v174 + 4 * v106);
        }

        if (*(v103 + v106))
        {
          v113 = *(v174 + 4 * v106);
        }

        else
        {
          v113 = *(v102 + 4 * v106);
        }

        *v98 = v113;
        v98[1] = v112;
        v98 += 2;
        v114 = ++v96;
        v101 = v109;
        v100 = v110;
        v99 = v107;
      }

      *(v93 + 2 * (v108 + *(a1[1] + 20 * v107 + 16))) = v95 >> 1;
      *(v104 + 4 * v95) = v107;
      *(v105 + 4 * v95) = v108;
      *(v69 + 4 * v95++) = v114 - 1;
      if (v36 == v95)
      {
        v94 = a1[7];
        goto LABEL_91;
      }
    }
  }

  v96 = 0;
  v39 = &re::introspect_BOOL(BOOL)::info;
  v67 = v171;
  v103 = v169;
  v102 = v170;
LABEL_91:
  *(v94 + 36) = v96;
  if ((v67 & 0x10) == 0)
  {
    physx::Cm::RadixSortBuffered::Sort(&v190);
    physx::Cm::RadixSortBuffered::Sort(&v190);
    if (v36)
    {
      v116 = v192;
      v117 = (v69 + 4 * v36);
      v118 = v36;
      do
      {
        v119 = *v116++;
        *v117++ = *(v69 + 4 * v119);
        --v118;
      }

      while (v118);
    }

    if ((*(a1[7] + 36) & 0x7FFF) != 0)
    {
      v120 = 8 * (*(a1[7] + 36) & 0x7FFF);
      v121 = physx::shdfnd::Foundation::mInstance;
      if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
      {
        v122 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::EdgeDescData>::getName() [T = physx::Gu::EdgeDescData]";
      }

      else
      {
        v122 = "<allocation names disabled>";
      }

      v123 = (*(*(v121 + 24) + 16))(v121 + 24, v120, v122, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", 725);
      v124 = 8 * (*(a1[7] + 36) & 0x7FFF);
    }

    else
    {
      v124 = 0;
      v123 = 0;
    }

    bzero(v123, v124);
    for (; v36; LODWORD(v36) = v36 - 1)
    {
      v126 = *v70++;
      ++v123[4 * v126 + 1];
    }

    v127 = *(a1[7] + 36) & 0x7FFF;
    v39 = &re::introspect_BOOL(BOOL)::info;
    v103 = v169;
    v102 = v170;
    if ((*(a1[7] + 36) & 0x7FFF) != 0)
    {
      v128 = v123 + 1;
      while (1)
      {
        v129 = *v128;
        v128 += 4;
        if (v129 != 2)
        {
          break;
        }

        if (!--v127)
        {
          goto LABEL_110;
        }
      }

      v125 = 739;
LABEL_159:
      physx::shdfnd::Foundation::error(v39[428], 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", v125, "Cooking::cookConvexMesh: non-manifold mesh cannot be used, invalid mesh!", v103, v104, v105, v165[0]);
      v190 = v166;
      physx::Cm::RadixSortBuffered::reset(&v190);
      goto LABEL_160;
    }

    if (v123)
    {
LABEL_110:
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v123);
      v103 = v169;
      v102 = v170;
    }
  }

  if (v102)
  {
    (*(*(v39[428] + 24) + 24))();
    v103 = v169;
  }

  if (v103)
  {
    (*(*(v39[428] + 24) + 24))();
  }

  v190 = v166;
  physx::Cm::RadixSortBuffered::reset(&v190);
  if (v24)
  {
LABEL_116:
    v130 = 0;
    v131 = *(a1[7] + 38);
    v132 = *a1;
    v133 = a1[1];
    do
    {
      v134 = v133 + 20 * v130;
      if (v131)
      {
        v135 = 0;
        v136 = *v134;
        v137 = *(v134 + 4);
        v138 = *(v134 + 8);
        v139 = -1;
        v140 = 3.4028e38;
        v141 = v132;
        do
        {
          v66.i32[0] = *(v141 + 8);
          *&v65 = ((v137 * *(v141 + 4)) + (*v141 * v136)) + (v66.f32[0] * v138);
          if (*&v65 < v140)
          {
            v140 = ((v137 * *(v141 + 4)) + (*v141 * v136)) + (v66.f32[0] * v138);
            v139 = v135;
          }

          ++v135;
          v141 += 12;
        }

        while (v131 > v135);
      }

      else
      {
        v139 = -1;
      }

      *(v134 + 19) = v139;
      ++v130;
    }

    while (v130 != v24);
  }

LABEL_125:
  if ((v67 & 0x10) == 0 && (physx::ConvexHullBuilder::checkHullPolygons(a1, v58, v59, v60, v61, v41, v42, v43) & 1) == 0)
  {
    goto LABEL_160;
  }

  if (*(a1 + 40) <= 0.0)
  {
    v142 = *(a2 + 36);
    v185 = 0;
    v187 = 0;
    v188 = 16711680;
    v189 = 255;
    v143 = *(a1 + 118);
    v179 = 12;
    v144 = *a1;
    v145 = a1[1];
    v180 = *a1;
    v183 = v145;
    v181 = v143;
    v182 = 20;
    v184 = *(a1[7] + 39);
    v186 = a1[2];
    if (v143)
    {
      v146 = (v144 + 8);
      v147 = 0;
      v62.i64[0] = 0;
      v148 = v143;
      do
      {
        v63 = *(v146 - 1);
        v147 = vadd_f32(v147, *&v63);
        v149 = *v146;
        v146 += 3;
        v62.f32[0] = v62.f32[0] + v149;
        --v148;
      }

      while (v148);
    }

    else
    {
      v147 = 0;
      v62.i64[0] = 0;
    }

    LODWORD(v64) = 1.0;
    *&v63 = 1.0 / v143;
    v150 = COERCE_DOUBLE(vmul_n_f32(v147, *&v63));
    v177 = v150;
    v62.f32[0] = *&v63 * v62.f32[0];
    v178 = v62.i32[0];
    if ((v142 & 0x40) != 0)
    {
      physx::computeVolumeIntegralsEberlySIMD(&v179, &v190, &v177, v62, v150, v63, v64, v65, v66);
    }

    else
    {
      physx::computeVolumeIntegralsEberly(&v179, &v190, &v177);
    }

    v154 = 0;
    v155 = 24;
    v156 = a1 + 164;
    do
    {
      v157 = 0;
      v158 = v155;
      do
      {
        v159 = *(&v190 + v158);
        *(v156 + v157) = v159;
        v157 += 4;
        v158 += 24;
      }

      while (v157 != 12);
      ++v154;
      v156 += 12;
      v155 += 8;
    }

    while (v154 != 3);
    v160 = v190;
    a1[13] = v190;
    v161 = v191;
    *(a1 + 28) = v191;
    if ((*(a1 + 41) >> 23) == 255 || (*(a1 + 42) >> 23) == 255 || (*(a1 + 43) >> 23) == 255 || (*(a1 + 44) >> 23) == 255 || (*(a1 + 45) >> 23) == 255 || (*(a1 + 46) >> 23) == 255 || (*(a1 + 47) >> 23) == 255 || (*(a1 + 48) >> 23) == 255 || (*(a1 + 49) >> 23) == 255 || (v160 >> 23) == 255 || (HIDWORD(v160) >> 23) == 255 || (v161 >> 23) == 255 || (v162 = *&v192, (LODWORD(v162) >> 23) == 255))
    {
      physx::shdfnd::Foundation::error(v39[428], 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexMeshBuilder.cpp", 242, "Gu::ConvexMesh: Error computing mesh mass properties!\n", v151, v152, v153, v165[0]);
    }

    else
    {
      if (*&v192 < 0.0)
      {
        physx::shdfnd::Foundation::error(v39[428], 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexMeshBuilder.cpp", 233, "Gu::ConvexMesh: Mesh has a negative volume! Is it open or do (some) faces have reversed winding? (Taking absolute value.)", v151, v152, v153, v165[0]);
        physx::PxMat33::operator-(v175, (a1 + 164));
        v163 = v175[1];
        *(a1 + 164) = v175[0];
        *(a1 + 180) = v163;
        *(a1 + 49) = v176;
        v162 = -v162;
      }

      *(a1 + 40) = v162;
    }
  }

  return 1;
}

uint64_t physx::ConvexMeshBuilder::computeGaussMaps(physx::ConvexMeshBuilder *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    physx::BigConvexData::~BigConvexData(*(this + 19));
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
  }

  v3 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v4 = "static const char *physx::shdfnd::ReflectionAllocator<physx::BigConvexData>::getName() [T = physx::BigConvexData]";
  }

  else
  {
    v4 = "<allocation names disabled>";
  }

  v5 = (*(*(v3 + 24) + 16))(v3 + 24, 48, v4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexMeshBuilder.cpp", 388);
  *v5 = 0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0;
  *(this + 19) = v5;
  v6 = *this;
  v8[1] = v5;
  v8[2] = v6;
  v8[0] = this + 80;
  physx::BigConvexDataBuilder::computeValencies(v8, this);
  return physx::BigConvexDataBuilder::precompute(v8, 16);
}

float physx::ConvexMeshBuilder::computeInternalObjects(physx::ConvexMeshBuilder *this)
{
  v1 = *(this + 1);
  *(this + 34) = 2139095039;
  v2 = *(this + 119);
  if (*(this + 119))
  {
    v3 = *(this + 26);
    v4 = *(this + 27);
    v5 = *(this + 28);
    v6 = v1 + 2;
    v7 = 3.4028e38;
    v8 = *(this + 119);
    do
    {
      v9 = fabsf(v6[1] + (((v4 * *(v6 - 1)) + (v3 * *(v6 - 2))) + (v5 * *v6)));
      if (v9 < v7)
      {
        *(this + 34) = v9;
        v7 = v9;
      }

      v6 += 5;
      --v8;
    }

    while (v8);
  }

  else
  {
    v7 = 3.4028e38;
  }

  *(this + 140) = vneg_f32(0x80000000800000);
  v10 = this + 140;
  v11 = (*(this + 22) + *(this + 25)) - (*(this + 22) - *(this + 25));
  v57 = vsub_f32(vadd_f32(*(this + 80), *(this + 92)), vsub_f32(*(this + 80), *(this + 92)));
  v58 = v11;
  v12 = *&vcgt_f32(vdup_lane_s32(v57, 1), v57) & 1;
  if (v11 <= *(&v57 & 0xFFFFFFFFFFFFFFFBLL | (4 * v12)))
  {
    v13 = v12;
  }

  else
  {
    v13 = 2;
  }

  v14 = v57.f32[(v13 + (v13 >> 1) + 1) & 3];
  v15 = v57.f32[(v13 + (v13 >> 1) + 1 + (((v13 + (v13 >> 1) + 1) & 3) >> 1) + 1) & 3];
  if (v14 >= v15)
  {
    v16 = (v13 + (v13 >> 1) + 1) & 3;
  }

  else
  {
    v16 = (v13 + (v13 >> 1) + 1 + (((v13 + (v13 >> 1) + 1) & 3) >> 1) + 1) & 3;
  }

  if (v14 >= v15)
  {
    v17 = (v13 + (v13 >> 1) + 1 + (((v13 + (v13 >> 1) + 1) & 3) >> 1) + 1) & 3;
  }

  else
  {
    v17 = (v13 + (v13 >> 1) + 1) & 3;
  }

  *(this + 37) = 2139095039;
  if (v2)
  {
    v18 = *(this + 26);
    v19 = *(this + 27);
    v20 = *(this + 28);
    v21 = v1;
    v22 = v2;
    v23 = v7 / 1.7321;
    do
    {
      v24 = v21[v13];
      if (fabsf(v24) >= 0.0000001)
      {
        v25 = -v21[3] - (((v19 * v21[1]) + (*v21 * v18)) + (v21[2] * v20));
        v26 = 1.0 / v24;
        v27 = v23 * v21[v16];
        v28 = v23 * v21[v17];
        v29 = fabsf(v26 * ((v25 - v27) - v28));
        if (v29 <= v23)
        {
          v29 = v23;
        }

        v30 = *&v10[4 * v13];
        if (v29 >= v30)
        {
          v31 = *&v10[4 * v13];
        }

        else
        {
          v31 = v29;
        }

        v32 = fabsf(v26 * (v28 + (v25 - v27)));
        if (v32 <= v23)
        {
          v32 = v23;
        }

        if (v32 >= v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = v32;
        }

        v34 = v27 + v25;
        v35 = fabsf(v26 * (v28 + v34));
        if (v35 <= v23)
        {
          v36 = v23;
        }

        else
        {
          v36 = v35;
        }

        if (v36 >= v33)
        {
          v37 = v33;
        }

        else
        {
          v37 = v36;
        }

        v38 = fabsf(v26 * (v34 - v28));
        if (v38 <= v23)
        {
          v38 = v23;
        }

        if (v29 < v30 || v32 < v31 || v36 < v33 || v38 < v37)
        {
          if (v38 < v37)
          {
            v37 = v38;
          }

          *&v10[4 * v13] = v37;
        }
      }

      v21 += 5;
      --v22;
    }

    while (v22);
    do
    {
      v42 = v1[v16];
      v43 = v1[v17];
      v44 = v42 + v43;
      v45 = -v1[3] - (((v19 * v1[1]) + (*v1 * v18)) + (v1[2] * v20));
      v46 = *&v10[4 * v13] * v1[v13];
      if (fabsf(v42 + v43) >= 0.0000001)
      {
        v47 = fabsf((v45 - v46) / v44);
        if (v47 <= v23)
        {
          v47 = v23;
        }

        v48 = *&v10[4 * v16];
        v49 = fabsf((v45 + v46) / v44);
        if (v49 <= v23)
        {
          v49 = v23;
        }

        if (v47 < v48)
        {
          v50 = 1;
        }

        else
        {
          v47 = *&v10[4 * v16];
          v50 = v49 < v48;
        }

        if (v50)
        {
          if (v49 >= v47)
          {
            v49 = v47;
          }

          *&v10[4 * v16] = v49;
        }
      }

      v51 = v42 - v43;
      if (fabsf(v51) >= 0.0000001)
      {
        v52 = fabsf((v45 - v46) / v51);
        if (v52 <= v23)
        {
          v52 = v23;
        }

        v53 = *&v10[4 * v16];
        v54 = fabsf((v45 + v46) / v51);
        if (v54 <= v23)
        {
          v54 = v23;
        }

        if (v52 < v53)
        {
          v55 = 1;
        }

        else
        {
          v52 = *&v10[4 * v16];
          v55 = v54 < v53;
        }

        if (v55)
        {
          if (v54 >= v52)
          {
            v54 = v52;
          }

          *&v10[4 * v16] = v54;
        }
      }

      v1 += 5;
      --v2;
    }

    while (v2);
  }

  result = *&v10[4 * v16];
  *&v10[4 * v17] = result;
  return result;
}

uint64_t physx::ConvexMeshBuilder::save(uint64_t a1, void (***a2)(uint64_t (***)(void, unsigned int *, uint64_t), unsigned int *, uint64_t), int a3)
{
  result = physx::writeHeader(67, 86, 88, 77, 0xDu, a3, a2);
  if (result)
  {
    LODWORD(v12[0]) = 0;
    (**a2)(a2, v12, 4);
    result = physx::ConvexHullBuilder::save(a1, a2, a3);
    if (result)
    {
      LODWORD(v12[0]) = 0;
      (**a2)(a2, v12, 4);
      physx::writeFloat(a3, a2, *(a1 + 80) - *(a1 + 92));
      physx::writeFloat(a3, a2, *(a1 + 84) - *(a1 + 96));
      physx::writeFloat(a3, a2, *(a1 + 88) - *(a1 + 100));
      physx::writeFloat(a3, a2, *(a1 + 80) + *(a1 + 92));
      physx::writeFloat(a3, a2, *(a1 + 84) + *(a1 + 96));
      physx::writeFloat(a3, a2, *(a1 + 88) + *(a1 + 100));
      physx::writeFloat(a3, a2, *(a1 + 160));
      physx::writeFloatBuffer(a1 + 164, 9, a3, a2);
      physx::writeFloatBuffer(a1 + 104, 3, a3, a2);
      if (*(a1 + 152))
      {
        if (a3)
        {
          v7 = -1;
        }

        else
        {
          v7 = 0;
        }

        v8 = vbsl_s8(vdup_n_s16(v7), 8388671, 0x3F008000000000);
        LODWORD(v12[0]) = vuzp1_s8(v8, v8).u32[0];
        (**a2)(a2, v12, 4);
        v9 = *a1;
        v12[1] = *(a1 + 152);
        v12[2] = v9;
        v12[0] = a1 + 80;
        physx::BigConvexDataBuilder::save(v12, a2, a3);
      }

      else
      {
        if (a3)
        {
          v10 = -1;
        }

        else
        {
          v10 = 0;
        }

        v11 = vbsl_s8(vdup_n_s16(v10), 8388799, 0xBF008000000000);
        LODWORD(v12[0]) = vuzp1_s8(v11, v11).u32[0];
        (**a2)(a2, v12, 4);
      }

      physx::writeFloat(a3, a2, *(a1 + 136));
      physx::writeFloat(a3, a2, *(a1 + 140));
      physx::writeFloat(a3, a2, *(a1 + 144));
      physx::writeFloat(a3, a2, *(a1 + 148));
      return 1;
    }
  }

  return result;
}

uint64_t physx::ConvexMeshBuilder::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(v4 + 38);
  *(a2 + 38) = v5;
  v6 = *(a1 + 64);
  v7 = *(v4 + 36) & 0x7FFF;
  v8 = v7 | (v6 << 15);
  *(a2 + 36) = v8;
  v9 = *(v4 + 39);
  *(a2 + 39) = v9;
  v10 = 0;
  if (v9)
  {
    v11 = (*(a1 + 8) + 18);
    v12 = v9;
    do
    {
      v13 = *v11;
      v11 += 20;
      v10 += v13;
      --v12;
    }

    while (v12);
  }

  if (v6)
  {
    v14 = 4 * v7;
  }

  else
  {
    v14 = 0;
  }

  v15 = 15 * v5 + 2 * v7 + 20 * v9 + v14 + v10 + 3;
  if ((v15 & 0xFFFFFFFC) != 0)
  {
    v16 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v15 & 0xFFFFFFFC, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullBuilder.cpp", 449);
    LODWORD(v9) = *(a2 + 39);
    v17 = *(a2 + 38);
    v8 = *(a2 + 36);
    v5 = *(*(a1 + 56) + 38);
  }

  else
  {
    v16 = 0;
    v17 = v5;
  }

  *(a2 + 40) = v16;
  v18 = (v16 + 20 * v9);
  v19 = &v18[12 * v17];
  v20 = v8;
  v21 = v8 & 0x7FFF;
  v22 = &v19[2 * v21];
  v23 = &v22[3 * v17];
  v24 = 4 * v21;
  if (v20 < 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  memcpy(v18, *a1, 12 * v5);
  memcpy(*(a2 + 40), *(a1 + 8), 20 * *(a2 + 39));
  memcpy(&v23[v25], *(a1 + 16), v10);
  memcpy(v19, *(a1 + 24), 2 * (*(*(a1 + 56) + 36) & 0x7FFF));
  if (*(a1 + 64))
  {
    memcpy(v23, *(a1 + 48), 4 * (*(*(a1 + 56) + 36) & 0x7FFF));
  }

  memcpy(v22, *(a1 + 32), 3 * *(*(a1 + 56) + 38));
  *(a2 + 72) = v10;
  *(a2 + 76) = *(a1 + 160);
  *(a2 + 92) = *(a1 + 176);
  *(a2 + 100) = *(a1 + 184);
  *(a2 + 108) = *(a1 + 192);
  *a2 = *(a1 + 80);
  *(a2 + 8) = *(a1 + 88);
  *(a2 + 16) = *(a1 + 96);
  *(a2 + 24) = *(a1 + 104);
  *(a2 + 32) = *(a1 + 112);
  v26 = *(a1 + 152);
  if (v26)
  {
    *(a1 + 152) = 0;
  }

  *(a2 + 48) = v26;
  *(a2 + 120) = v26;
  *(a2 + 56) = *(a1 + 136);
  *(a2 + 60) = *(a1 + 140);
  *(a2 + 64) = *(a1 + 144);
  *(a2 + 68) = *(a1 + 148);
  return 1;
}

float32_t physx::PxMat33::operator-(float32x4_t *a1, float32x4_t *a2)
{
  result = -a2[2].f32[0];
  v3 = vnegq_f32(a2[1]);
  *a1 = vnegq_f32(*a2);
  a1[1] = v3;
  a1[2].f32[0] = result;
  return result;
}

uint64_t physx::ConvexMeshBuilder::computeHullPolygons(uint64_t a1, _DWORD *a2, const void *a3, _DWORD *a4, uint64_t a5, uint64_t a6, _DWORD *a7, void *a8, unsigned int *a9, uint64_t *a10, _DWORD *a11, uint64_t *a12)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 68) = *a4;
  v18 = (a1 + 68);
  v19 = *a2;
  *(*(a1 + 56) + 38) = *a2;
  v20 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * v19 + 12, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexPolygonsBuilder.cpp", 996);
  *a1 = v20;
  memcpy(v20, a3, 12 * *(*(a1 + 56) + 38));
  v21 = physx::shdfnd::ReflectionAllocator<physx::HullTriangleData>::allocate(12 * *v18, 999);
  v22 = v21;
  *(a1 + 72) = v21;
  v248 = a8;
  if (*v18)
  {
    v23 = 0;
    v24 = v21 + 2;
    v25 = 2;
    do
    {
      *(v24 - 2) = *(a5 + 4 * (v25 - 2));
      *(v24 - 1) = *(a5 + 4 * (v25 - 1));
      *v24 = *(a5 + 4 * v25);
      v24 += 3;
      ++v23;
      v26 = *v18;
      v25 += 3;
    }

    while (v23 < v26);
  }

  else
  {
    LODWORD(v26) = 0;
  }

  LOBYTE(v27) = *(*(a1 + 56) + 38);
  v28 = *a1;
  physx::MeshCleaner::MeshCleaner(&v249, v27, *a1, v26, v21, 0.0);
  v29 = HIDWORD(v249);
  if (HIDWORD(v249))
  {
    v27 = v249;
    *v18 = HIDWORD(v249);
    memcpy(v28, __src, (12 * v27));
    v30 = 0;
    v31 = v251;
    v32 = (v22 + 4);
    do
    {
      *(v32 - 1) = *(v31 + 4 * v30);
      *v32 = *(v31 + 4 * (v30 + 1));
      v32[1] = *(v31 + 4 * (v30 + 2));
      v30 += 3;
      v32 += 3;
    }

    while (3 * v29 != v30);
    TestDuplicateTriangles(v18, v22, 1);
    TestUnifiedNormals(v27, v28, *v18, v22, 1);
    TestUnifiedNormals(v27, v28, *v18, v22, 1);
    TestDuplicateTriangles(v18, v22, 1);
  }

  physx::MeshCleaner::~MeshCleaner(&v249);
  *(*(a1 + 56) + 38) = v27;
  v33 = *a1;
  LODWORD(v249) = *(a1 + 68);
  if (!TestDuplicateTriangles(&v249, v22, 0) || (TestUnifiedNormals(v27, v33, v249, v22, 0) & 1) == 0)
  {
    goto LABEL_170;
  }

  *(*(a1 + 56) + 39) = 0;
  if (*(a1 + 16))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 16) = 0;
  if (*(a1 + 32))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 32) = 0;
  if (*(a1 + 8))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 8) = 0;
  v249 = 0;
  __src = 0;
  v256 = 0;
  v257 = 0;
  v254 = 0;
  v255 = 0;
  v253 = 0;
  v41 = 0;
  if (!extractHullPolygons(&v253, &v249, a1, &v256, &v254))
  {
    goto LABEL_152;
  }

  v42 = *(*(a1 + 56) + 38);
  if (v255)
  {
    v43 = v42 - v255;
    if (v42 == v255)
    {
      v44 = 0;
    }

    else
    {
      v44 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * (v42 - v255), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexPolygonsBuilder.cpp", 1057);
      v42 = *(*(a1 + 56) + 38);
    }

    v46 = physx::shdfnd::ReflectionAllocator<unsigned char>::allocate(v258, v42, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexPolygonsBuilder.cpp", 1058);
    if (*(*(a1 + 56) + 38))
    {
      v47 = 0;
      v48 = 0;
      do
      {
        v49 = v255;
        if (!v255)
        {
          goto LABEL_33;
        }

        v50 = v254;
        while (1)
        {
          v51 = *v50++;
          if (v51 == v47)
          {
            break;
          }

          if (!--v49)
          {
            goto LABEL_33;
          }
        }

        if (v49)
        {
          v52 = -1;
        }

        else
        {
LABEL_33:
          v53 = *a1 + 12 * v47;
          v54 = &v44[3 * v48];
          *v54 = *v53;
          v54[2] = *(v53 + 8);
          v52 = v48++;
        }

        *(v46 + v47++) = v52;
      }

      while (v47 < *(*(a1 + 56) + 38));
    }

    v45 = v253;
    if (v253)
    {
      v55 = 0;
      v56 = v249;
      do
      {
        v59 = *v56;
        v57 = v56 + 1;
        v58 = v59;
        v60 = v57;
        v61 = v59;
        if (v59)
        {
          do
          {
            *v60 = *(v46 + *v60);
            ++v60;
            --v61;
          }

          while (v61);
        }

        else
        {
          v58 = 0;
        }

        v56 = &v57[v58];
        ++v55;
      }

      while (v55 != v45);
    }

    if (v46)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v46);
    }

    LOBYTE(v42) = v43;
  }

  else
  {
    v44 = *a1;
    v45 = v253;
  }

  if (v45 >= 0x100)
  {
    v62 = physx::shdfnd::Foundation::mInstance;
    v63 = "ConvexHullBuilder: convex hull has more than 255 polygons!";
    v64 = 1096;
LABEL_47:
    physx::shdfnd::Foundation::error(v62, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexPolygonsBuilder.cpp", v64, v63, v34, v35, v36, v247);
    goto LABEL_151;
  }

  *(*(a1 + 56) + 39) = v45;
  if (v45)
  {
    v65 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 20 * v45, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexPolygonsBuilder.cpp", 1102);
    v66 = 20 * *(*(a1 + 56) + 39);
  }

  else
  {
    v66 = 0;
    v65 = 0;
  }

  *(a1 + 8) = v65;
  bzero(v65, v66);
  physx::ConvexHullBuilder::computeGeomCenter(*a1, *(*(a1 + 56) + 38), v252, *(a1 + 68), *(a1 + 72), v67);
  v68 = physx::shdfnd::ReflectionAllocator<unsigned char>::allocate(v258, __src - v45, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexPolygonsBuilder.cpp", 1113);
  *(a1 + 16) = v68;
  if (v45)
  {
    v69 = 0;
    v70 = v256;
    v71 = v249;
    v72 = *(a1 + 8);
    do
    {
      v73 = v72 + 20 * v69;
      *(v73 + 16) = v68 - *(a1 + 16);
      v76 = *v71;
      v74 = (v71 + 1);
      v75 = v76;
      *(v73 + 18) = v76;
      if (v76)
      {
        v77 = 0;
        v78 = v74;
        v79 = v75;
        do
        {
          v81 = *v78++;
          v80 = v81;
          if (v81 == 255)
          {
            --*(*(a1 + 8) + 20 * v69 + 18);
          }

          else
          {
            *(v68 + v77++) = v80;
          }

          --v79;
        }

        while (v79);
        v72 = *(a1 + 8);
      }

      v82 = (v72 + 20 * v69);
      v83 = v82[2].u8[2];
      if (v68 && v44 && v82[2].i8[2])
      {
        v84 = 0;
        v85 = v83 - 1;
        v86 = 0.0;
        v87 = 0.0;
        v88 = 0.0;
        v89 = 0.0;
        v90 = 0.0;
        v91 = 0.0;
        do
        {
          v92 = &v44[3 * *(v68 + v85)];
          v93 = &v44[3 * *(v68 + v84)];
          v94 = v92[1];
          v95 = v93[1];
          v96 = v92[2];
          v97 = v93[2];
          v86 = v86 + ((v94 - v95) * (v96 + v97));
          v87 = v87 + ((v96 - v97) * (*v92 + *v93));
          v88 = v88 + ((*v92 - *v93) * (v94 + v95));
          v89 = v89 + *v93;
          v90 = v90 + v95;
          v91 = v91 + v97;
          v85 = v84++;
        }

        while (v83 != v84);
        v82->f32[0] = v86;
        v82->f32[1] = v87;
        v82[1].f32[0] = v88;
        v98 = sqrtf(((v87 * v87) + (v86 * v86)) + (v88 * v88));
        if (v98 > 0.0)
        {
          v99 = 1.0 / v98;
          v86 = v86 * v99;
          v87 = v87 * v99;
          v82->f32[0] = v86;
          v82->f32[1] = v87;
          v88 = v88 * v99;
          v82[1].f32[0] = v88;
        }

        v82[1].f32[1] = -(((v90 * v87) + (v89 * v86)) + (v91 * v88)) / v83;
      }

      v100 = v70 + 1;
      v101 = *v70;
      if (*v70)
      {
        v102 = 0;
        v103 = 0;
        v104 = *a1;
        v105 = 4 * (v101 - 1);
LABEL_70:
        ++v100;
        do
        {
          v106 = (*(a1 + 72) + 12 * *(v100 - 1));
          v107 = &v104[3 * *v106];
          v108 = &v104[3 * v106[1]];
          v109 = &v104[3 * v106[2]];
          v110 = v107[1];
          v111 = *v108 - *v107;
          v112 = v108[1] - v110;
          v113 = *v109 - *v107;
          v114 = v107[2];
          v115 = v108[2] - v114;
          v116 = v109[1] - v110;
          v117 = v109[2] - v114;
          v118 = (v112 * v117) - (v115 * v116);
          v119 = (v115 * v113) - (v111 * v117);
          v120 = (v111 * v116) - (v112 * v113);
          v121 = ((v119 * v119) + (v118 * v118)) + (v120 * v120);
          v122 = 0.0;
          v123 = 0.0;
          v124 = 0.0;
          if (v121 > 0.0)
          {
            v125 = 1.0 / sqrtf(v121);
            v122 = v118 * v125;
            v123 = v119 * v125;
            v124 = v120 * v125;
          }

          if (!v102)
          {
            v126 = *v82;
            v127 = vmuls_lane_f32(v123, *v82, 1) + (v122 * COERCE_FLOAT(*v82));
            v128 = v82[1].f32[0];
            if ((v127 + (v124 * v128)) < 0.0)
            {
              v102 = 1;
              v103 = 1;
              if (v101 != 1)
              {
                goto LABEL_70;
              }

              v70 = (v70 + v105 + 8);
              goto LABEL_81;
            }
          }

          ++v102;
          ++v100;
        }

        while (v101 != v102);
        v70 = (v70 + v105 + 8);
        if ((v103 & 1) == 0)
        {
          goto LABEL_87;
        }

        v126 = *v82;
        v128 = v82[1].f32[0];
LABEL_81:
        *v82 = vneg_f32(v126);
        v129 = -v82[1].f32[1];
        v82[1].f32[0] = -v128;
        v82[1].f32[1] = v129;
        if (v68 && v83 >= 2)
        {
          v130 = v83 >> 1;
          v131 = v83 - 1;
          v132 = v68;
          do
          {
            v133 = *v132;
            *v132++ = *(v68 + v131);
            *(v68 + v131--) = v133;
            --v130;
          }

          while (v130);
          v72 = *(a1 + 8);
        }
      }

      else
      {
        ++v70;
      }

LABEL_87:
      v134 = *(a1 + 56);
      v135 = *(v134 + 38);
      v136 = (v72 + 20 * v69);
      if (*(v134 + 38))
      {
        _Q2.i64[0] = v136->i64[0];
        v138 = v136->f32[2];
        v139 = v72 + 20 * v69;
        v141 = *(v139 + 12);
        v140 = (v139 + 12);
        v142 = v141;
        v143 = (*a1 + 8);
        do
        {
          v144 = -(((_Q2.f32[1] * *(v143 - 1)) + (_Q2.f32[0] * *(v143 - 2))) + (v138 * *v143));
          if (v142 > v144)
          {
            *v140 = v144;
            v142 = v144;
          }

          v143 += 3;
          --v135;
        }

        while (v135);
        _Q2.i64[1] = __PAIR64__(LODWORD(v142), LODWORD(v138));
      }

      else
      {
        _Q2 = *v136;
      }

      _S4 = v252[2];
      __asm { FMLA            S3, S4, V2.S[2] }

      if ((_Q2.f32[3] + _S3) > 0.0)
      {
        if (v68)
        {
          v151 = *(v72 + 20 * v69 + 18);
          if (v151 >= 2)
          {
            v152 = v151 >> 1;
            v153 = v151 - 1;
            v154 = v68;
            do
            {
              v155 = *v154;
              *v154++ = *(v68 + v153);
              *(v68 + v153--) = v155;
              --v152;
            }

            while (v152);
            v72 = *(a1 + 8);
            _Q2 = *(v72 + 20 * v69);
          }
        }

        *(v72 + 20 * v69) = vnegq_f32(_Q2);
      }

      v71 = &v74[v75];
      v68 += *(v72 + 20 * v69++ + 18);
    }

    while (v69 != v45);
  }

  if (v44 != *a1)
  {
    memcpy(*a1, v44, 12 * v42);
    if (v44)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v44);
      v45 = v253;
    }

    *(*(a1 + 56) + 38) = v42;
  }

  if (!physx::ConvexHullBuilder::calculateVertexMapTable(a1, v45, 0))
  {
    goto LABEL_151;
  }

  v156 = *(a1 + 56);
  if (v45)
  {
    v157 = 0;
    v158 = *(v156 + 38);
    v159 = *a1;
    v160 = *(a1 + 8);
    do
    {
      v161 = v160 + 20 * v157;
      if (v158)
      {
        v162 = 0;
        v163 = *v161;
        v164 = *(v161 + 4);
        v165 = *(v161 + 8);
        v166 = -1;
        v167 = 3.4028e38;
        v168 = v159;
        do
        {
          v169 = v168[2];
          if ((((v164 * v168[1]) + (*v168 * v163)) + (v169 * v165)) < v167)
          {
            v167 = ((v164 * v168[1]) + (*v168 * v163)) + (v169 * v165);
            v166 = v162;
          }

          ++v162;
          v168 += 3;
        }

        while (v158 > v162);
      }

      else
      {
        v166 = -1;
      }

      *(v161 + 19) = v166;
      ++v157;
    }

    while (v157 != v45);
  }

  v170 = *(v156 + 39);
  if (!v170)
  {
    goto LABEL_151;
  }

  v171 = *(a1 + 8);
  if (!v171)
  {
    goto LABEL_151;
  }

  v172 = 0;
  v173 = (v171 + 18);
  do
  {
    v175 = *v173;
    v173 += 20;
    v174 = v175;
    if (v175 <= 2)
    {
      v62 = physx::shdfnd::Foundation::mInstance;
      v63 = "ConvexHullBuilder::CreateTrianglesFromPolygons: convex hull has a polygon with less than 3 vertices!";
      v64 = 1232;
      goto LABEL_47;
    }

    v172 = v172 + v174 - 2;
    --v170;
  }

  while (v170);
  v176 = physx::shdfnd::ReflectionAllocator<physx::HullTriangleData>::allocate(12 * v172, 1238);
  v178 = v176;
  v179 = *a1;
  v180 = *(*(a1 + 56) + 39);
  if (*(*(a1 + 56) + 39))
  {
    v181 = 0;
    v182 = 0;
    v184 = *(a1 + 8);
    v183 = *(a1 + 16);
    v185 = v176;
    do
    {
      v186 = v184 + 20 * v181;
      v187 = *(v186 + 18);
      if (v187 != 2)
      {
        v188 = (v183 + *(v186 + 16));
        for (i = 2; i != v187; ++i)
        {
          v190 = *v188;
          *v185 = v190;
          v191 = v188[(i - 1) % v187];
          v185[1] = v191;
          v192 = v188[i % v187];
          v185[2] = v192;
          v193 = &v179[3 * v190];
          v194 = &v179[3 * v191];
          v195 = &v179[3 * v192];
          v196 = v193[1];
          v197 = *v194 - *v193;
          v198 = v194[1] - v196;
          v199 = *v195 - *v193;
          v200 = v193[2];
          v201 = v194[2] - v200;
          v202 = v195[1] - v196;
          v203 = v195[2] - v200;
          v177 = ((((v201 * v199) - (v197 * v203)) * ((v201 * v199) - (v197 * v203))) + (((v198 * v203) - (v201 * v202)) * ((v198 * v203) - (v201 * v202)))) + (((v197 * v202) - (v198 * v199)) * ((v197 * v202) - (v198 * v199)));
          if (v177 == 0.0)
          {
            v204 = 0;
          }

          else
          {
            ++v182;
            v204 = 12;
          }

          v185 = (v185 + v204);
        }
      }

      ++v181;
    }

    while (v181 != v180);
  }

  else
  {
    v182 = 0;
  }

  if (*(a1 + 72))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 72) = 0;
  if (v172 == v182)
  {
    v205 = v178;
  }

  else
  {
    v206 = physx::shdfnd::ReflectionAllocator<physx::HullTriangleData>::allocate(12 * v182, 1299);
    if (!v206)
    {
      if (v178)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v178);
      }

LABEL_151:
      v41 = 0;
      goto LABEL_152;
    }

    v205 = v206;
    memcpy(v206, v178, 12 * v182);
    if (v178)
    {
      v177 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v178);
    }
  }

  *(a1 + 72) = v205;
  *(a1 + 68) = v182;
  physx::ConvexHullBuilder::computeGeomCenter(*a1, *(*(a1 + 56) + 38), v258, v182, v205, v177);
  if (v182)
  {
    v207 = 0;
    v208 = *v258;
    v209 = *&v258[1];
    v210 = (v205 + 8);
    v211 = *&v258[2];
    do
    {
      v212 = *(v210 - 1);
      v213 = &v179[3 * *(v210 - 2)];
      v214 = &v179[3 * v212];
      v215 = &v179[3 * *v210];
      v216 = v213[1];
      v217 = *v214 - *v213;
      v218 = v214[1] - v216;
      v219 = v213[2];
      v220 = v214[2] - v219;
      v221 = *v215 - *v213;
      v222 = v215[1] - v216;
      v223 = v215[2] - v219;
      v224 = (v218 * v223) - (v220 * v222);
      v225 = (v220 * v221) - (v217 * v223);
      v226 = (v217 * v222) - (v218 * v221);
      v227 = ((v225 * v225) + (v224 * v224)) + (v226 * v226);
      v228 = 0.0;
      v229 = 0.0;
      v230 = 0.0;
      if (v227 > 0.0)
      {
        v231 = 1.0 / sqrtf(v227);
        v228 = v224 * v231;
        v229 = v225 * v231;
        v230 = v226 * v231;
      }

      if ((((v209 * v229) + (v208 * v228)) + (v211 * v230)) > (((v216 * v229) + (*v213 * v228)) + (v219 * v230)))
      {
        *(v210 - 1) = *v210;
        *v210 = v212;
        v182 = *v18;
      }

      ++v207;
      v210 += 3;
    }

    while (v207 < v182);
  }

  v41 = 1;
LABEL_152:
  if ((v255 & 0x8000000000000000) == 0 && (v255 & 0x7FFFFFFF00000000) != 0)
  {
    v37 = v254;
    if (v254)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  if ((v257 & 0x8000000000000000) == 0 && (v257 & 0x7FFFFFFF00000000) != 0)
  {
    v37 = v256;
    if (v256)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  if ((HIDWORD(__src) & 0x80000000) == 0 && (HIDWORD(__src) & 0x7FFFFFFF) != 0)
  {
    v37 = v249;
    if (v249)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  if (!v41 || (physx::ConvexHullBuilder::checkHullPolygons(a1, v37, v38, v39, v40, v34, v35, v36) & 1) == 0)
  {
LABEL_170:
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexMeshBuilder.cpp", 331, "ConvexMeshBuilder::computeHullPolygons: compute convex hull polygons failed. Provided triangles dont form a convex hull.", v34, v35, v36, v247);
    return 0;
  }

  v232 = *(a1 + 56);
  *a7 = *(v232 + 38);
  *a11 = *(v232 + 39);
  v233 = (*(*a6 + 16))(a6, 12 * *a7, "PxVec3", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexMeshBuilder.cpp", 338);
  *v248 = v233;
  memcpy(v233, *a1, (12 * *a7));
  *a9 = 0;
  if (*a11)
  {
    v234 = 0;
    v235 = 0;
    v236 = (*(a1 + 8) + 18);
    do
    {
      v237 = *v236;
      v236 += 20;
      v234 += v237;
      *a9 = v234;
      ++v235;
    }

    while (v235 < *a11);
    v238 = 4 * v234;
  }

  else
  {
    v238 = 0;
  }

  v240 = (*(*a6 + 16))(a6, v238, "PxU32", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexMeshBuilder.cpp", 347);
  *a10 = v240;
  if (*a9)
  {
    v241 = 0;
    v242 = *(a1 + 16);
    do
    {
      *(v240 + 4 * v241) = *(v242 + v241);
      ++v241;
    }

    while (v241 < *a9);
  }

  v243 = (*(*a6 + 16))(a6, 20 * *a11, "PxHullPolygon", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexMeshBuilder.cpp", 353);
  *a12 = v243;
  v244 = *a11;
  if (v244)
  {
    v245 = v243 + 12;
    v246 = *(a1 + 8) + 12;
    do
    {
      *(v245 - 12) = *(v246 - 12);
      *(v245 - 8) = *(v246 - 8);
      *(v245 - 4) = *(v246 - 4);
      *v245 = *v246;
      *(v245 + 4) = *(v246 + 6);
      *(v245 + 6) = *(v246 + 4);
      v245 += 20;
      v246 += 20;
      --v244;
    }

    while (v244);
  }

  return 1;
}

void physx::ConvexPolygonsBuilder::~ConvexPolygonsBuilder(physx::ConvexPolygonsBuilder *this)
{
  if (*(this + 9))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *(this + 9) = 0;

  physx::ConvexHullBuilder::~ConvexHullBuilder(this);
}

uint64_t extractHullPolygons(_DWORD *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v168 = a5;
  v166 = a2;
  v199 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 17);
  v9 = *a3;
  v10 = *(a3[7] + 38);
  v11 = a3[9];
  v187 = *(a3 + 17);
  v178 = v11;
  v188 = v11;
  v189 = 0;
  v190 = v9;
  v191 = 1000593162;
  v185 = 0;
  v186 = 0;
  if (!physx::AdjacenciesBuilder::Init(&v185, &v187) || (v12 = physx::Adjacencies::ComputeNbBoundaryEdges(&v185), v12))
  {
    v13 = 0;
    goto LABEL_4;
  }

  v159 = a3;
  v163 = a4;
  MEMORY[0x1EEE9AC00](v12);
  v165 = &v158[-((v8 + 15) & 0x1FFFFFFF0)];
  bzero(v165, v8);
  MEMORY[0x1EEE9AC00](v15);
  v167 = &v158[-v16];
  v162 = v10;
  bzero(&v158[-v16], v10);
  v160 = a1;
  *a1 = 0;
  v17 = v168;
  v18 = v8;
  v161 = v8;
  while (1)
  {
    if (v18)
    {
      v19 = 0;
      v20 = v162;
      v21 = v167;
      v22 = v165;
      while (v165[v19] == 1)
      {
        if (v18 == ++v19)
        {
          goto LABEL_234;
        }
      }
    }

    else
    {
      v19 = 0;
      v20 = v162;
      v21 = v167;
      v22 = v165;
    }

    if (v19 == v18)
    {
      break;
    }

    v183 = 0;
    v184 = 0;
    v23 = v186;
    v164 = v19;
LABEL_16:
    extractHullPolygons(unsigned int &,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &,physx::ConvexPolygonsBuilder const&,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>*,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &)::Local::FloodFill(&v183, v23, v19, v22);
    v24 = 0;
    v23 = v186;
    v25 = v184;
    v26 = v183;
    v27 = v184 - 1;
    v28 = 1;
    v170 = v183;
    v169 = v184;
    while (v24 != v25)
    {
      v29 = *(v26 + 4 * v24);
      v173 = v28;
      v172 = v24 + 1;
      if (v24 + 1 < v25)
      {
        v30 = v28 + 1;
        v31 = (v26 + 4 * v28);
        v32 = 1;
        v33 = v27;
        while (1)
        {
          v34 = *v31++;
          v35 = (v23 + 12 * v34);
          v36 = v35[1];
          v38 = (*v35 & 0x20000000) == 0 || (*v35 & 0x1FFFFFFF) != v29;
          v39 = v36 & 0x1FFFFFFF;
          v40 = (v36 & 0x20000000) == 0 && v38;
          if (v39 == v29)
          {
            v38 = v40;
          }

          v41 = v35[2];
          if ((v41 & 0x1FFFFFFF) == v29)
          {
            if ((v41 & 0x20000000) != 0)
            {
              LOBYTE(v38) = 0;
            }

            if (!v38)
            {
              goto LABEL_40;
            }
          }

          else if (!v38)
          {
            goto LABEL_40;
          }

          v32 = v30++ < v25;
          if (!--v33)
          {
            goto LABEL_40;
          }
        }
      }

      v32 = 0;
LABEL_40:
      v171 = v32;
      v174 = v27;
      if (v178)
      {
        v42 = 0;
        v43 = v23 + 12 * v29;
        v44 = *(v178 + 12 * v29);
        v176 = *(v178 + 4 * (3 * v29 + 1));
        v177 = v44;
        v175 = *(v178 + 4 * (3 * v29 + 2));
        while (1)
        {
          if ((*(v43 + 4 * v42) & 0x20000000) == 0)
          {
            if (v42 == 1)
            {
              v45 = v177;
            }

            else
            {
              v45 = v176;
            }

            v46 = 0;
            if (v42 == 1)
            {
              v47 = 2;
            }

            else
            {
              v47 = 1;
            }

            if (!v42)
            {
              v46 = 1;
            }

            v48 = *(v43 + 4 * v46);
            v49 = v42 ? v45 : v177;
            v50 = v42 ? v175 : v176;
            v51 = v42 ? v47 : 2;
            LODWORD(v196) = 0;
            LODWORD(v181) = 0;
            v52 = v178;
            NeighborFace = extractHullPolygons(unsigned int &,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &,physx::ConvexPolygonsBuilder const&,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>*,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &)::Local::GetNeighborFace(v29, v49, v23, v178, &v196, &v181);
            LODWORD(v179) = 0;
            v195 = 0;
            v54 = extractHullPolygons(unsigned int &,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &,physx::ConvexPolygonsBuilder const&,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>*,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &)::Local::GetNeighborFace(v48 & 0x1FFFFFFF, v49, v23, v52, &v179, &v195);
            if (NeighborFace)
            {
              if (v54 && v196 == v195 && v181 == v179)
              {
                break;
              }
            }

            v55 = *(v43 + 4 * v51);
            v56 = v178;
            v57 = extractHullPolygons(unsigned int &,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &,physx::ConvexPolygonsBuilder const&,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>*,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &)::Local::GetNeighborFace(v29, v50, v23, v178, &v196, &v181);
            v58 = extractHullPolygons(unsigned int &,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &,physx::ConvexPolygonsBuilder const&,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>*,physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>> &)::Local::GetNeighborFace(v55 & 0x1FFFFFFF, v50, v23, v56, &v179, &v195);
            if (v57)
            {
              if (v58 && v196 == v195 && v181 == v179)
              {
                break;
              }
            }
          }

          if (++v42 == 3)
          {
            goto LABEL_69;
          }
        }

        v26 = v170;
LABEL_72:
        v59 = 0;
        v22 = v165;
        do
        {
          v60 = v23 + 12 * *(v26 + 4 * v59);
          *v60 |= 0x2000000020000000uLL;
          *(v60 + 8) |= 0x20000000u;
          v22[*(v26 + 4 * v59++)] = 0;
        }

        while (v59 < v184);
        LODWORD(v184) = 0;
        LODWORD(v19) = v164;
        goto LABEL_16;
      }

LABEL_69:
      v28 = v173 + 1;
      v27 = v174 - 1;
      v24 = v172;
      v26 = v170;
      v25 = v169;
      if (v171)
      {
        goto LABEL_72;
      }
    }

    v181 = 0;
    v182 = 0;
    if (v25)
    {
      v61 = 0;
      do
      {
        v62 = *(v183 + 4 * v61);
        v63 = *(v178 + 12 * v62);
        v64 = *(v178 + 4 * (3 * v62 + 1));
        v65 = *(v178 + 4 * (3 * v62 + 2));
        v66 = v186;
        if ((*(v186 + 12 * v62 + 3) & 0x20) != 0)
        {
          LODWORD(v196) = *(v178 + 12 * v62);
          HIDWORD(v196) = v64;
          v67 = v182;
          if ((HIDWORD(v182) & 0x7FFFFFFFu) <= v182)
          {
            physx::shdfnd::Array<Pair,physx::shdfnd::ReflectionAllocator<Pair>>::growAndPushBack(&v181, &v196);
          }

          else
          {
            *(v181 + 8 * v182) = v196;
            LODWORD(v182) = v67 + 1;
          }

          v66 = v186;
        }

        if ((*(v66 + 12 * v62 + 7) & 0x20) != 0)
        {
          v196 = __PAIR64__(v65, v63);
          v68 = v182;
          if ((HIDWORD(v182) & 0x7FFFFFFFu) <= v182)
          {
            physx::shdfnd::Array<Pair,physx::shdfnd::ReflectionAllocator<Pair>>::growAndPushBack(&v181, &v196);
          }

          else
          {
            *(v181 + 8 * v182) = v196;
            LODWORD(v182) = v68 + 1;
          }

          v66 = v186;
        }

        if ((*(v66 + 12 * v62 + 11) & 0x20) != 0)
        {
          v196 = __PAIR64__(v65, v64);
          v69 = v182;
          if ((HIDWORD(v182) & 0x7FFFFFFFu) <= v182)
          {
            physx::shdfnd::Array<Pair,physx::shdfnd::ReflectionAllocator<Pair>>::growAndPushBack(&v181, &v196);
          }

          else
          {
            *(v181 + 8 * v182) = v196;
            LODWORD(v182) = v69 + 1;
          }
        }

        ++v61;
      }

      while (v61 < v184);
    }

    v179 = 0;
    v180 = 0;
    physx::shdfnd::Array<Pair,physx::shdfnd::ReflectionAllocator<Pair>>::copy<physx::shdfnd::ReflectionAllocator<Pair>>(&v196, &v181);
    v73 = v197;
    v74 = v196;
    if (v197)
    {
      v75 = v197 - 1;
      while (2)
      {
        v76 = 0;
        v77 = 2;
        v78 = 1;
        v79 = v74 + 2;
        v80 = v75;
        v81 = v73;
        while (1)
        {
          v82 = v76 + 1;
          if (v76 + 1 < v81)
          {
            break;
          }

LABEL_106:
          ++v77;
          --v80;
          v79 += 2;
          ++v78;
          v76 = v82;
          if (v82 == v81)
          {
            v194 = -1;
            v195 = -1;
            v95 = *v74;
            v194 = v74[1];
            v195 = v95;
            if ((HIDWORD(v180) & 0x7FFFFFFFu) <= v180)
            {
              physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v179, &v195);
              v96 = v180;
            }

            else
            {
              v179[v180] = v95;
              v96 = v180 + 1;
              LODWORD(v180) = v180 + 1;
            }

            if ((HIDWORD(v180) & 0x7FFFFFFFu) <= v96)
            {
              physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v179, &v194);
            }

            else
            {
              v179[v96] = v194;
              LODWORD(v180) = v180 + 1;
            }

            if (v81 < 2)
            {
              if (v81 == 1)
              {
                goto LABEL_125;
              }

              LODWORD(v97) = -1;
            }

            else
            {
              memmove(v74, v74 + 2, 8 * v81 - 8);
              LODWORD(v97) = v81 - 1;
              v197 = v81 - 1;
            }

            v99 = v194;
            do
            {
              v100 = v97;
              v101 = 1;
              v102 = v74;
              v97 = v97;
              while (1)
              {
                v103 = *v102;
                v193 = v103;
                v104 = v102[1];
                v192 = v104;
                if (v103 == v99)
                {
                  break;
                }

                if (v104 == v99)
                {
                  if ((HIDWORD(v180) & 0x7FFFFFFFu) <= v180)
                  {
                    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v179, &v193);
                  }

                  else
                  {
                    v179[v180] = v103;
                    LODWORD(v180) = v180 + 1;
                  }

                  v99 = v193;
                  v194 = v193;
                  v195 = v192;
                  if (v101 < v100)
                  {
                    v106 = 0;
                    do
                    {
                      *&v102[2 * v106] = *&v74[2 * v101 + 2 * v106];
                      ++v106;
                    }

                    while (v100 - v101 != v106);
                  }

                  goto LABEL_146;
                }

                ++v101;
                v102 += 2;
                if (!--v97)
                {
                  v98 = 0;
                  goto LABEL_147;
                }
              }

              if ((HIDWORD(v180) & 0x7FFFFFFFu) <= v180)
              {
                physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(&v179, &v192);
              }

              else
              {
                v179[v180] = v104;
                LODWORD(v180) = v180 + 1;
              }

              v99 = v192;
              v194 = v192;
              v195 = v193;
              if (v101 < v100)
              {
                v105 = 0;
                do
                {
                  *&v102[2 * v105] = *&v74[2 * v101 + 2 * v105];
                  ++v105;
                }

                while (v100 - v101 != v105);
              }

LABEL_146:
              v98 = 1;
              LODWORD(v97) = v100 - 1;
            }

            while (v100 != 1);
            goto LABEL_147;
          }
        }

        v83 = &v74[2 * v76];
        v84 = *v83;
        v85 = v83[1];
        v86 = v79;
        v87 = v80;
        v88 = v77;
        while (1)
        {
          v70 = v86[1];
          if (*v86 == v84 && v70 == v85)
          {
            break;
          }

          if (v70 == v84 && *v86 == v85)
          {
            break;
          }

          ++v88;
          v86 += 2;
          if (!--v87)
          {
            goto LABEL_106;
          }
        }

        if (v88 < v81)
        {
          v91 = 0;
          do
          {
            *&v86[2 * v91] = *&v74[2 * v88 + 2 * v91];
            ++v91;
          }

          while (v88 + v91 < v81);
        }

        if (v81 - 1 > v82)
        {
          v92 = v75 - v78;
          v93 = &v74[2 * v78];
          do
          {
            v94 = *v93;
            v93 += 2;
            *v83 = v94;
            v83 += 2;
            --v92;
          }

          while (v92);
        }

        v75 -= 2;
        v73 = v81 - 2;
        if (v81 != 2)
        {
          continue;
        }

        break;
      }
    }

LABEL_125:
    v98 = 1;
LABEL_147:
    if ((v198 & 0x80000000) == 0 && (v198 & 0x7FFFFFFF) != 0 && v74 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v74);
    }

    if ((v98 & 1) == 0)
    {
      physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexPolygonsBuilder.cpp", 943, "Meshmerizer::extractHullPolygons: line strip extraction failed", v70, v71, v72, v158[0]);
      goto LABEL_159;
    }

    v108 = v168;
    v109 = v166;
    if (!v180)
    {
      goto LABEL_159;
    }

    v110 = v179;
    v111 = (v180 - 1);
    LODWORD(v196) = v180 - 1;
    v112 = *(v166 + 8);
    if ((*(v166 + 12) & 0x7FFFFFFFu) <= v112)
    {
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v166, &v196);
      v109 = v166;
      v108 = v168;
      if (v111)
      {
LABEL_174:
        v113 = v110;
        v114 = v111;
        do
        {
          v115 = *v113;
          ++v167[v115];
          v116 = *(v109 + 8);
          if ((*(v109 + 12) & 0x7FFFFFFFu) <= v116)
          {
            physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v109, v113);
            v109 = v166;
            v108 = v168;
          }

          else
          {
            *(*v109 + 4 * v116) = v115;
            ++*(v109 + 8);
          }

          ++v113;
          --v114;
        }

        while (v114);
      }
    }

    else
    {
      *(*v166 + 4 * v112) = v111;
      ++*(v109 + 8);
      if (v111)
      {
        goto LABEL_174;
      }
    }

    ++*v160;
    v117 = v184;
    if (v184)
    {
      v118 = 0;
      while (1)
      {
        v119 = 3 * *(v183 + 4 * v118);
        v120 = *(v178 + 4 * v119);
        LODWORD(v196) = v120;
        v121 = *(v178 + 4 * (v119 + 1));
        v195 = v121;
        v122 = *(v178 + 4 * (v119 + 2));
        v194 = v122;
        v123 = 0;
        v124 = 0;
        if (v111)
        {
          v125 = 0;
          v126 = v110;
          v127 = 1;
          do
          {
            v128 = *v126++;
            v125 |= v120 == v128;
            v124 |= v121 == v128;
            v123 |= v122 == v128;
            if (v125 & v124 & v123)
            {
              break;
            }
          }

          while (v127++ < v111);
          if (v125)
          {
            break;
          }
        }

        v130 = *(v108 + 8);
        v131 = *v108;
        if (v130)
        {
          v132 = *v108;
          v133 = *(v108 + 8);
          while (1)
          {
            v134 = *v132++;
            if (v134 == v120)
            {
              break;
            }

            if (!--v133)
            {
              v135 = *(v108 + 8);
              goto LABEL_196;
            }
          }

          v135 = *(v108 + 8);
          if (v133)
          {
            break;
          }
        }

        else
        {
          v135 = 0;
        }

LABEL_196:
        if ((*(v108 + 12) & 0x7FFFFFFFu) <= v130)
        {
          physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v108, &v196);
          v108 = v168;
          if (v124)
          {
            goto LABEL_215;
          }

LABEL_204:
          v136 = *(v108 + 8);
          v131 = *v108;
          if (!v136)
          {
            goto LABEL_205;
          }

          goto LABEL_199;
        }

        v131[v135] = v120;
        v136 = *(v108 + 8) + 1;
        *(v108 + 8) = v136;
        if (v124)
        {
          goto LABEL_215;
        }

        if (!v136)
        {
LABEL_205:
          v137 = 0;
          goto LABEL_207;
        }

LABEL_199:
        v137 = v136;
        v138 = v131;
        v139 = v136;
        while (1)
        {
          v140 = *v138++;
          if (v140 == v195)
          {
            break;
          }

          if (!--v139)
          {
            goto LABEL_207;
          }
        }

        if (v139)
        {
          goto LABEL_215;
        }

LABEL_207:
        if ((*(v108 + 12) & 0x7FFFFFFFu) <= v136)
        {
          physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v108, &v195);
          v108 = v168;
LABEL_215:
          if ((v123 & 1) == 0)
          {
            v141 = *(v108 + 8);
            v131 = *v108;
            if (!v141)
            {
LABEL_217:
              v142 = 0;
LABEL_219:
              if ((*(v108 + 12) & 0x7FFFFFFFu) <= v141)
              {
                physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v108, &v194);
                v108 = v168;
              }

              else
              {
                v131[v142] = v194;
                ++*(v108 + 8);
              }

              goto LABEL_222;
            }

LABEL_210:
            v142 = v141;
            v143 = v131;
            v144 = v141;
            while (1)
            {
              v145 = *v143++;
              if (v145 == v194)
              {
                break;
              }

              if (!--v144)
              {
                goto LABEL_219;
              }
            }

            if (v144)
            {
              goto LABEL_222;
            }

            goto LABEL_219;
          }

          goto LABEL_222;
        }

        v131[v137] = v195;
        v141 = *(v108 + 8) + 1;
        *(v108 + 8) = v141;
        if ((v123 & 1) == 0)
        {
          if (!v141)
          {
            goto LABEL_217;
          }

          goto LABEL_210;
        }

LABEL_222:
        ++v118;
        v117 = v184;
        if (v118 >= v184)
        {
          goto LABEL_223;
        }
      }

      if (v124)
      {
        goto LABEL_215;
      }

      goto LABEL_204;
    }

LABEL_223:
    if (v163)
    {
      LODWORD(v196) = v117;
      v146 = v163;
      v147 = *(v163 + 8);
      if ((*(v163 + 12) & 0x7FFFFFFFu) <= v147)
      {
        physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v163, &v196);
      }

      else
      {
        *(*v163 + 4 * v147) = v117;
        ++*(v146 + 8);
      }

      if (v184)
      {
        v148 = 0;
        v149 = 0;
        do
        {
          v150 = v163;
          v151 = *(v163 + 8);
          if ((*(v163 + 12) & 0x7FFFFFFFu) <= v151)
          {
            physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v163, (v183 + v148));
          }

          else
          {
            *(*v163 + 4 * v151) = *(v183 + 4 * v149);
            ++*(v150 + 8);
          }

          ++v149;
          v148 += 4;
        }

        while (v149 < v184);
      }
    }

LABEL_159:
    if ((v180 & 0x8000000000000000) == 0 && (v180 & 0x7FFFFFFF00000000) != 0 && v179)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    if ((v182 & 0x8000000000000000) == 0 && (v182 & 0x7FFFFFFF00000000) != 0 && v181)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    if ((v184 & 0x8000000000000000) == 0 && (v184 & 0x7FFFFFFF00000000) != 0 && v183)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    v13 = 0;
    v17 = v168;
    v18 = v161;
    if ((v98 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_234:
  LODWORD(v196) = 0;
  if (v20)
  {
    for (i = 0; i < v20; LODWORD(v196) = i)
    {
      if (v21[i] <= 2u)
      {
        v153 = *(v17 + 8);
        if (v153)
        {
          v154 = *v17;
          v155 = *(v17 + 8);
          while (1)
          {
            v156 = *v154++;
            if (v156 == i)
            {
              break;
            }

            if (!--v155)
            {
              v157 = *(v17 + 8);
              goto LABEL_244;
            }
          }

          v157 = *(v17 + 8);
          if (v155)
          {
            goto LABEL_247;
          }
        }

        else
        {
          v157 = 0;
        }

LABEL_244:
        if ((*(v17 + 12) & 0x7FFFFFFFu) <= v153)
        {
          physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v17, &v196);
          v17 = v168;
        }

        else
        {
          *(*v17 + 4 * v157) = i;
          ++*(v17 + 8);
        }
      }

LABEL_247:
      i = v196 + 1;
    }
  }

  v13 = 1;
  if (v163 && *(v17 + 8))
  {
    checkRedundantVertices(v160, v166, v159[9], v163, v17);
  }

LABEL_4:
  if (v186)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v186 - 16);
  }

  return v13;
}

uint64_t local::QuickHullFace::mergeAdjacentFace(uint64_t *a1, void *a2, uint64_t a3, float a4)
{
  v7 = *(a2[6] + 56);
  v50 = v7;
  v8 = *(a3 + 8);
  if ((*(a3 + 12) & 0x7FFFFFFFu) <= v8)
  {
    physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::growAndPushBack(a3, &v50);
  }

  else
  {
    *(*a3 + 8 * v8) = v7;
    *(a3 + 8) = v8 + 1;
  }

  *(v7 + 60) = 1;
  v9 = a2[6];
  v10 = *(v9 + 32);
  v11 = a2[4];
  while (1)
  {
    v9 = *(v9 + 40);
    if (*(v11[6] + 56) != v7)
    {
      break;
    }

    v11 = v11[4];
    if (v11 == a2[4])
    {
      return 0;
    }
  }

  v12 = a2[5];
  while (*(*(v12 + 48) + 56) == v7)
  {
    v10 = v10[4];
    v12 = *(v12 + 40);
    if (v12 == a2[5])
    {
      return 0;
    }
  }

  v14 = v10[5];
  if (v9 != v14)
  {
    v15 = v9;
    do
    {
      *(v15 + 56) = a1;
      v15 = *(v15 + 40);
    }

    while (v15 != v14);
  }

  if (*a1 == a2)
  {
    *a1 = v12;
  }

  v17 = local::QuickHullFace::connectHalfEdges(a1, v10, v12, a4);
  v49 = v16;
  if (v16)
  {
    v18 = *(a3 + 8);
    if ((*(a3 + 12) & 0x7FFFFFFFu) <= v18)
    {
      physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::growAndPushBack(a3, &v49);
    }

    else
    {
      *(*a3 + 8 * v18) = v16;
      *(a3 + 8) = v18 + 1;
    }
  }

  local::QuickHullFace::connectHalfEdges(a1, v11, v9, v17);
  v49 = v19;
  if (v19)
  {
    v20 = *(a3 + 8);
    if ((*(a3 + 12) & 0x7FFFFFFFu) <= v20)
    {
      physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::growAndPushBack(a3, &v49);
    }

    else
    {
      *(*a3 + 8 * v20) = v19;
      *(a3 + 8) = v20 + 1;
    }
  }

  v21 = 0;
  a1[3] = 0;
  *(a1 + 8) = 0;
  v22 = *a1;
  v24 = **a1;
  v23 = *(*a1 + 4);
  v25 = *(*a1 + 8);
  v26 = 0.0;
  v27 = 3;
  do
  {
    v28 = *(v22 + 40);
    v29 = (((v23 - v28[1]) * (v23 - v28[1])) + ((v24 - *v28) * (v24 - *v28))) + ((v25 - v28[2]) * (v25 - v28[2]));
    if (v29 > v26)
    {
      v21 = v22;
    }

    v25 = v28[2];
    if (v29 > v26)
    {
      v26 = v29;
    }

    v23 = v28[1];
    v24 = *v28;
    v22 = *(v22 + 40);
    --v27;
  }

  while (v27);
  v30 = *(v21 + 40);
  v32 = *v21;
  v31 = *(v21 + 4);
  v33 = *v30 - *v21;
  v34 = *(v30 + 4) - v31;
  v35 = *(v21 + 8);
  v36 = *(v30 + 8) - v35;
  *(a1 + 10) = *v21;
  *(a1 + 11) = v31;
  *(a1 + 12) = v35;
  v37 = 1;
  v38 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  do
  {
    ++v37;
    v32 = v32 + *v30;
    v31 = v31 + *(v30 + 4);
    v35 = v35 + *(v30 + 8);
    *(a1 + 10) = v32;
    *(a1 + 11) = v31;
    *(a1 + 12) = v35;
    v30 = *(v30 + 40);
    v41 = *v30 - *v21;
    v42 = *(v30 + 4) - *(v21 + 4);
    v43 = *(v30 + 8) - *(v21 + 8);
    v40 = v40 + ((v42 * -v36) + (v34 * v43));
    v39 = v39 + ((v43 * -v33) + (v36 * v41));
    *(a1 + 6) = v40;
    *(a1 + 7) = v39;
    v38 = v38 + ((v41 * -v34) + (v33 * v42));
    *(a1 + 8) = v38;
  }

  while (v30 != v21);
  *(a1 + 4) = v37;
  v44 = sqrtf(((v39 * v39) + (v40 * v40)) + (v38 * v38));
  if (v44 > 0.0)
  {
    v40 = v40 * (1.0 / v44);
    v39 = v39 * (1.0 / v44);
    *(a1 + 6) = v40;
    *(a1 + 7) = v39;
    v38 = v38 * (1.0 / v44);
    *(a1 + 8) = v38;
  }

  v45 = 1.0 / v37;
  v46 = v45 * v32;
  *(a1 + 9) = v44;
  *(a1 + 10) = v46;
  v47 = v45 * v31;
  v48 = v45 * v35;
  *(a1 + 11) = v47;
  *(a1 + 12) = v48;
  *(a1 + 13) = ((v47 * v39) + (v40 * v46)) + (v38 * v48);
  return 1;
}

float local::QuickHullFace::connectHalfEdges(void *a1, void *a2, uint64_t a3, float result)
{
  v4 = *(a3 + 48);
  v5 = v4[7];
  if (*(a2[6] + 56) == v5)
  {
    if (*a1 == a2)
    {
      *a1 = a3;
    }

    if (*(v5 + 4) == 3)
    {
      v6 = *(v4[4] + 48);
      *(v5 + 15) = 1;
    }

    else
    {
      v6 = v4[5];
      v7 = *(v6 + 32);
      if (*v5 == v7)
      {
        *v5 = v6;
      }

      v8 = *(v7 + 32);
      *(v6 + 32) = v8;
      *(v8 + 40) = v6;
    }

    v9 = 0;
    v10 = a2[4];
    *(a3 + 32) = v10;
    *(v10 + 40) = a3;
    *(a3 + 48) = v6;
    *(v6 + 48) = a3;
    v5[3] = 0;
    *(v5 + 8) = 0;
    v11 = *v5;
    v13 = **v5;
    v12 = *(*v5 + 4);
    v14 = *(*v5 + 8);
    v15 = 0.0;
    v16 = 3;
    do
    {
      v17 = *(v11 + 40);
      v18 = (((v12 - v17[1]) * (v12 - v17[1])) + ((v13 - *v17) * (v13 - *v17))) + ((v14 - v17[2]) * (v14 - v17[2]));
      if (v18 > v15)
      {
        v9 = v11;
      }

      v14 = v17[2];
      if (v18 > v15)
      {
        v15 = v18;
      }

      v12 = v17[1];
      v13 = *v17;
      v11 = *(v11 + 40);
      --v16;
    }

    while (v16);
    v19 = *(v9 + 40);
    v21 = *v9;
    v20 = *(v9 + 4);
    v22 = *v19 - *v9;
    v23 = *(v19 + 4) - v20;
    v24 = *(v9 + 8);
    v25 = *(v19 + 8) - v24;
    *(v5 + 10) = *v9;
    *(v5 + 11) = v20;
    *(v5 + 12) = v24;
    v26 = 1;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    do
    {
      ++v26;
      v21 = v21 + *v19;
      v20 = v20 + *(v19 + 4);
      v24 = v24 + *(v19 + 8);
      *(v5 + 10) = v21;
      *(v5 + 11) = v20;
      *(v5 + 12) = v24;
      v19 = *(v19 + 40);
      v30 = *v19 - *v9;
      v31 = *(v19 + 4) - *(v9 + 4);
      v32 = *(v19 + 8) - *(v9 + 8);
      v29 = v29 + ((v31 * -v25) + (v23 * v32));
      v28 = v28 + ((v32 * -v22) + (v25 * v30));
      *(v5 + 6) = v29;
      *(v5 + 7) = v28;
      v27 = v27 + ((v30 * -v23) + (v22 * v31));
      *(v5 + 8) = v27;
    }

    while (v19 != v9);
    *(v5 + 4) = v26;
    v33 = sqrtf(((v28 * v28) + (v29 * v29)) + (v27 * v27));
    if (v33 > 0.0)
    {
      v29 = v29 * (1.0 / v33);
      v28 = v28 * (1.0 / v33);
      *(v5 + 6) = v29;
      *(v5 + 7) = v28;
      v27 = v27 * (1.0 / v33);
      *(v5 + 8) = v27;
    }

    v34 = 1.0 / v26;
    v35 = v34 * v21;
    *(v5 + 9) = v33;
    *(v5 + 10) = v35;
    v36 = v34 * v20;
    v37 = v34 * v24;
    *(v5 + 11) = v36;
    *(v5 + 12) = v37;
    result = ((v36 * v28) + (v29 * v35)) + (v27 * v37);
    *(v5 + 13) = result;
  }

  else
  {
    a2[5] = a3;
    *(a3 + 32) = a2;
  }

  return result;
}

void local::QuickHull::~QuickHull(local::QuickHull *this)
{
  v2 = *(this + 105);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 51) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v4 = *(this + 101);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 49) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v6 = *(this + 97);
  if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && *(this + 47) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v8 = *(this + 93);
  if ((v8 & 0x80000000) == 0 && (v8 & 0x7FFFFFFF) != 0 && *(this + 45))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v9 = *(this + 89);
  if ((v9 & 0x80000000) == 0 && (v9 & 0x7FFFFFFF) != 0 && *(this + 43))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v10 = *(this + 33);
  if ((v10 & 0x80000000) == 0 && (v10 & 0x7FFFFFFF) != 0 && *(this + 15))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v11 = *(this + 28);
  if (v11)
  {
    for (i = 0; i < v11; ++i)
    {
      if (*(*(this + 13) + 8 * i))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v11 = *(this + 28);
      }
    }
  }

  *(this + 28) = 0;
  v13 = *(this + 29);
  if ((v13 & 0x80000000) == 0 && (v13 & 0x7FFFFFFF) != 0 && *(this + 13) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v15 = *(this + 20);
  if (v15)
  {
    for (j = 0; j < v15; ++j)
    {
      if (*(*(this + 9) + 8 * j))
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v15 = *(this + 20);
      }
    }
  }

  *(this + 20) = 0;
  v17 = *(this + 21);
  if ((v17 & 0x80000000) == 0 && (v17 & 0x7FFFFFFF) != 0 && *(this + 9) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }
}

uint64_t local::QuickHull::preallocate(local::QuickHull *this, unsigned int a2)
{
  if (a2 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = a2;
  }

  *(this + 7) = v4;
  *(this + 6) = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 32 * v4, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 734);
  local::MemBlock<local::QuickHullHalfEdge,false>::init(this + 56, 9 * *(this + 7) - 18);
  v5 = 2 * *(this + 7) - 4;
  result = local::MemBlock<local::QuickHullFace,true>::init(this + 22, 2 * v5);
  if ((*(this + 33) & 0x7FFFFFFFu) < v5)
  {
    result = physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::recreate(this + 120, v5);
  }

  if ((*(this + 89) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<local::QuickHullVertex *,physx::shdfnd::ReflectionAllocator<local::QuickHullVertex *>>::recreate(this + 344, a2);
  }

  if ((*(this + 97) & 0x7FFFFFE0) == 0)
  {
    result = physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::recreate(this + 376, 0x20u);
  }

  if ((*(this + 101) & 0x7FFFFFE0) == 0)
  {
    result = physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::recreate(this + 392, 0x20u);
  }

  if ((*(this + 105) & 0x7FFFFFE0) == 0)
  {
    result = physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::recreate(this + 408, 0x20u);
  }

  if (a2 >= 0x80)
  {
    v7 = 128;
  }

  else
  {
    v7 = a2;
  }

  if ((*(this + 93) & 0x7FFFFFFFu) < v7)
  {

    return physx::shdfnd::Array<local::QuickHullHalfEdge *,physx::shdfnd::ReflectionAllocator<local::QuickHullHalfEdge *>>::recreate(this + 360, v7);
  }

  return result;
}

uint64_t local::MemBlock<local::QuickHullHalfEdge,false>::init(uint64_t a1, unsigned int a2)
{
  *a1 = a2;
  if (a2)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 72 * a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 84);
  }

  else
  {
    result = 0;
  }

  v5 = result;
  v4 = *(a1 + 24);
  if ((*(a1 + 28) & 0x7FFFFFFFu) <= v4)
  {
    return physx::shdfnd::Array<local::QuickHullHalfEdge *,physx::shdfnd::ReflectionAllocator<local::QuickHullHalfEdge *>>::growAndPushBack(a1 + 16, &v5);
  }

  *(*(a1 + 16) + 8 * v4) = result;
  *(a1 + 24) = v4 + 1;
  return result;
}

uint64_t local::MemBlock<local::QuickHullFace,true>::init(unsigned int *a1, unsigned int a2)
{
  *a1 = a2;
  if (a2)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 80 * a2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 84);
    v4 = *a1;
    v9 = result;
    if (v4)
    {
      v5 = 0;
      for (i = 0; i != v4; ++i)
      {
        v7 = result + v5;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *(v7 + 36) = 0;
        *(v7 + 52) = 0xFF7FFFFF00000000;
        *(v7 + 60) = 0;
        *(v7 + 64) = 0;
        *(v7 + 72) = i;
        v5 += 80;
        *(v7 + 76) = 0;
      }
    }
  }

  else
  {
    result = 0;
    v9 = 0;
  }

  v8 = a1[6];
  if ((a1[7] & 0x7FFFFFFF) <= v8)
  {
    return physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::growAndPushBack((a1 + 4), &v9);
  }

  *(*(a1 + 2) + 8 * v8) = result;
  a1[6] = v8 + 1;
  return result;
}

uint64_t local::QuickHull::createTriangle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 96);
  v9 = *(a1 + 88);
  if (v8 >= v9)
  {
    if (v9)
    {
      v12 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 80 * v9, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 138);
      v14 = (a1 + 92);
      v13 = *(a1 + 92);
      v15 = *(a1 + 88);
      v56 = v12;
      v16 = v13 + 1;
      *(a1 + 92) = v16;
      if (v15)
      {
        v17 = 0;
        v18 = v16 * v15;
        v19 = 80 * v15;
        do
        {
          v20 = v12 + v17;
          *v20 = 0;
          *(v20 + 8) = 0;
          *(v20 + 16) = 0;
          *(v20 + 36) = 0;
          *(v20 + 52) = 0xFF7FFFFF00000000;
          *(v20 + 60) = 0;
          *(v20 + 64) = 0;
          *(v20 + 72) = v18;
          v17 += 80;
          ++v18;
          *(v20 + 76) = 0;
        }

        while (v19 != v17);
      }
    }

    else
    {
      v12 = 0;
      v56 = 0;
      v14 = (a1 + 92);
      v16 = *(a1 + 92) + 1;
      *(a1 + 92) = v16;
    }

    v21 = *(a1 + 112);
    if ((*(a1 + 116) & 0x7FFFFFFFu) <= v21)
    {
      physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::growAndPushBack(a1 + 104, &v56);
      v16 = *v14;
    }

    else
    {
      *(*(a1 + 104) + 8 * v21) = v12;
      *(a1 + 112) = v21 + 1;
    }

    v11 = *(*(a1 + 104) + 8 * v16);
    *(a1 + 96) = 1;
  }

  else
  {
    v10 = *(*(a1 + 104) + 8 * *(a1 + 92));
    *(a1 + 96) = v8 + 1;
    v11 = v10 + 80 * v8;
  }

  FreeItem = local::MemBlock<local::QuickHullHalfEdge,false>::getFreeItem((a1 + 56));
  *(FreeItem + 56) = v11;
  *FreeItem = *a2;
  *(FreeItem + 8) = *(a2 + 8);
  v23 = *(a2 + 28);
  *(FreeItem + 12) = *(a2 + 12);
  *(FreeItem + 28) = v23;
  v24 = local::MemBlock<local::QuickHullHalfEdge,false>::getFreeItem((a1 + 56));
  *(v24 + 56) = v11;
  *v24 = *a3;
  *(v24 + 8) = *(a3 + 8);
  v25 = *(a3 + 28);
  *(v24 + 12) = *(a3 + 12);
  *(v24 + 28) = v25;
  v26 = local::MemBlock<local::QuickHullHalfEdge,false>::getFreeItem((a1 + 56));
  v27 = 0;
  *(v26 + 56) = v11;
  *v26 = *a4;
  *(v26 + 8) = *(a4 + 8);
  v28 = *(a4 + 12);
  *(v26 + 28) = *(a4 + 28);
  *(v26 + 12) = v28;
  *(FreeItem + 32) = v26;
  *(FreeItem + 40) = v24;
  *(v24 + 32) = FreeItem;
  *(v24 + 40) = v26;
  *(v26 + 32) = v24;
  *(v26 + 40) = FreeItem;
  *v11 = FreeItem;
  *(v11 + 64) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  v30 = *FreeItem;
  v29 = *(FreeItem + 4);
  v31 = *(FreeItem + 8);
  v32 = 0.0;
  v33 = 3;
  do
  {
    v34 = *(FreeItem + 40);
    v35 = (((v29 - v34[1]) * (v29 - v34[1])) + ((v30 - *v34) * (v30 - *v34))) + ((v31 - v34[2]) * (v31 - v34[2]));
    if (v35 > v32)
    {
      v27 = FreeItem;
    }

    v31 = v34[2];
    if (v35 > v32)
    {
      v32 = v35;
    }

    v29 = v34[1];
    v30 = *v34;
    FreeItem = *(FreeItem + 40);
    --v33;
  }

  while (v33);
  v36 = *(v27 + 40);
  v38 = *v27;
  v37 = *(v27 + 4);
  v39 = *v36 - *v27;
  v40 = *(v36 + 4) - v37;
  v41 = *(v27 + 8);
  v42 = *(v36 + 8) - v41;
  *(v11 + 40) = *v27;
  *(v11 + 44) = v37;
  *(v11 + 48) = v41;
  v43 = 1;
  v44 = 0.0;
  v45 = 0.0;
  v46 = 0.0;
  do
  {
    ++v43;
    v38 = v38 + *v36;
    v37 = v37 + *(v36 + 4);
    v41 = v41 + *(v36 + 8);
    *(v11 + 40) = v38;
    *(v11 + 44) = v37;
    *(v11 + 48) = v41;
    v36 = *(v36 + 40);
    v47 = *v36 - *v27;
    v48 = *(v36 + 4) - *(v27 + 4);
    v49 = *(v36 + 8) - *(v27 + 8);
    v46 = v46 + ((v48 * -v42) + (v40 * v49));
    v45 = v45 + ((v49 * -v39) + (v42 * v47));
    *(v11 + 24) = v46;
    *(v11 + 28) = v45;
    v44 = v44 + ((v47 * -v40) + (v39 * v48));
    *(v11 + 32) = v44;
  }

  while (v36 != v27);
  *(v11 + 8) = v43;
  v50 = sqrtf(((v45 * v45) + (v46 * v46)) + (v44 * v44));
  if (v50 > 0.0)
  {
    v46 = v46 * (1.0 / v50);
    v45 = v45 * (1.0 / v50);
    *(v11 + 24) = v46;
    *(v11 + 28) = v45;
    v44 = v44 * (1.0 / v50);
    *(v11 + 32) = v44;
  }

  v51 = 1.0 / v43;
  v52 = v51 * v38;
  *(v11 + 36) = v50;
  *(v11 + 40) = v52;
  v53 = v51 * v37;
  v54 = v51 * v41;
  *(v11 + 44) = v53;
  *(v11 + 48) = v54;
  *(v11 + 52) = ((v53 * v45) + (v46 * v52)) + (v44 * v54);
  return v11;
}

uint64_t local::QuickHull::buildHull(int8x8_t *this, double a2, __n128 a3, double a4, double a5, double a6, double a7, double a8, float a9)
{
  v11 = &this[30];
  v12 = &this[18];
  v233 = &this[18] + 4;
  v250 = *MEMORY[0x1E69E9840];
  v13 = this + 19;
  v14 = (&this[19] + 4);
  v15 = &this[30] + 4;
  v16 = this + 31;
  v17 = (&this[31] + 4);
  v18 = this + 22;
  v19 = &this[22] + 1;
  v20 = this + 23;
  v21 = (&this[23] + 4);
  v22 = this + 34;
  v23 = &this[34] + 1;
  v24 = this + 35;
  v25 = (&this[35] + 4);
  v26 = this + 26;
  v27 = &this[26] + 4;
  v28 = &this[27];
  v29 = &this[27] + 4;
  v30 = this + 38;
  v232 = v13;
  v31 = 0uLL;
  v230 = v15;
  v231 = v14;
  v228 = v17;
  v229 = v16;
LABEL_2:
  if (this[17].i8[4] != 1)
  {
    v32 = 0;
    v33 = this[6];
    do
    {
      v34 = &this[v32];
      v34[18] = **&v33;
      v34[19].i32[0] = *(*&v33 + 8);
      v35 = *(*&v33 + 12);
      v34[21].i32[1] = *(*&v33 + 28);
      *&v34[19].u8[4] = v35;
      v34[30] = **&v33;
      v34[31].i32[0] = *(*&v33 + 8);
      v36 = *(*&v33 + 12);
      v34[33].i32[1] = *(*&v33 + 28);
      *&v34[31].u8[4] = v36;
      v32 += 4;
    }

    while (v32 != 12);
    v37 = *v33.i32[0];
    a3.n128_u32[0] = *(*&v33 + 4);
    v38 = *(*&v33 + 8);
    v39 = this[4].u32[0];
    if (v39 >= 2)
    {
      v40 = v39 - 1;
      v41 = (*&v33 + 44);
      v42 = v37;
      v43 = a3.n128_f32[0];
      v44 = v38;
      while (1)
      {
        v45 = v41[-1].n128_f32[1];
        if (v45 <= v42)
        {
          v46 = v12;
          v47 = v233;
          v48 = v13;
          v49 = v14;
          v50 = v41[-1].n128_f32[1];
          if (v45 >= v37)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v46 = v11;
          v47 = v15;
          v48 = v16;
          v49 = v17;
          v42 = v41[-1].n128_f32[1];
          v50 = v37;
        }

        *v46 = v45;
        *v47 = v41[-1].n128_u32[2];
        v48->i32[0] = v41[-1].n128_i32[3];
        v51 = *v41;
        v49[1].n128_u32[0] = v41[1].n128_u32[0];
        *v49 = v51;
        v37 = v50;
LABEL_11:
        v52 = v41[-1].n128_f32[2];
        if (v52 <= v43)
        {
          v53 = v18;
          v54 = v19;
          v55 = v20;
          v56 = v21;
          v57 = v41[-1].n128_u32[2];
          if (v52 >= a3.n128_f32[0])
          {
            goto LABEL_15;
          }
        }

        else
        {
          v53 = v22;
          v54 = v23;
          v55 = v24;
          v56 = v25;
          v43 = v41[-1].n128_f32[2];
          v57 = a3.n128_u32[0];
        }

        v53->i32[0] = v41[-1].n128_i32[1];
        *v54 = v52;
        v55->i32[0] = v41[-1].n128_i32[3];
        a3 = *v41;
        v56[1].n128_u32[0] = v41[1].n128_u32[0];
        *v56 = a3;
        a3.n128_u32[0] = v57;
LABEL_15:
        v58 = v41[-1].n128_f32[3];
        if (v58 > v44)
        {
          v59 = v30;
          v61 = &this[39];
          v60 = &this[38] + 1;
          v62 = &this[39] + 4;
          v44 = v41[-1].n128_f32[3];
          a9 = v38;
LABEL_18:
          v59->i32[0] = v41[-1].n128_i32[1];
          *v60 = v41[-1].n128_u32[2];
          *v61 = v58;
          v63 = *v41;
          *(v62 + 4) = v41[1].n128_u32[0];
          *v62 = v63;
          v38 = a9;
          goto LABEL_19;
        }

        v59 = v26;
        v60 = v27;
        v61 = v28;
        v62 = v29;
        a9 = v41[-1].n128_f32[3];
        if (v58 < v38)
        {
          goto LABEL_18;
        }

LABEL_19:
        v41 += 2;
        if (!--v40)
        {
          goto LABEL_22;
        }
      }
    }

    v44 = *(*&v33 + 8);
    v43 = *(*&v33 + 4);
    v42 = *v33.i32[0];
LABEL_22:
    v64 = ((v44 + ((v43 + (v42 - v37)) - a3.n128_f32[0])) - v38) * 0.5;
    a3.n128_u32[0] = 884998144;
    v65.i32[0] = vdup_lane_s32(a3.n128_u64[0], 0).u32[0];
    v65.i32[1] = *(*this + 4);
    v66 = vmul_n_f32(v65, v64);
    this[42] = vbsl_s8(vcgt_f32(v66, v65), v66, v65);
  }

  v67 = 0;
  v68 = 0;
  LODWORD(v69) = 0;
  v70 = 0.0;
  do
  {
    v71 = v11[v68] - v11[v68 - 24];
    if (v71 <= v70)
    {
      v69 = v69;
    }

    else
    {
      v69 = v67;
    }

    if (v71 > v70)
    {
      v70 = v11[v68] - v11[v68 - 24];
    }

    v68 += 9;
    ++v67;
  }

  while (v68 != 27);
  v72 = *this[42].i32;
  if (v70 <= v72)
  {
    v223 = physx::shdfnd::Foundation::mInstance;
    v224 = "QuickHullConvexHullLib::findSimplex: Simplex input points appers to be almost at the same place";
    v225 = 877;
LABEL_194:
    physx::shdfnd::Foundation::error(v223, 32, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", v225, v224, v22, v23, v24, v226);
    return 4;
  }

  v73 = &v11[8 * v69];
  v234 = *v73;
  v74 = v234;
  v75 = *(v73 + 2);
  v236 = *(v73 + 12);
  v237 = *(v73 + 7);
  v76 = &v12[8 * v69];
  v77 = *v76;
  v78 = *(v76 + 1);
  v235 = v75;
  *v238 = v77;
  *&v238[1] = v78;
  v239 = *(v76 + 2);
  v79 = v239;
  v80 = *(v76 + 12);
  v240 = v80;
  v241 = *(v76 + 7);
  v81 = v77 - *&v234;
  v82 = *(&v234 + 1);
  v83 = v78 - *(&v234 + 1);
  v84 = v239 - v75;
  v85 = sqrtf(((v83 * v83) + (v81 * v81)) + (v84 * v84));
  if (v85 > 0.0)
  {
    v85 = 1.0 / v85;
    v81 = v81 * v85;
    v83 = v83 * v85;
    v84 = v84 * v85;
  }

  v86 = this[4].u32[0];
  if (v86)
  {
    v87 = -v81;
    v88 = -v83;
    v89 = *&this[6] + 12;
    v90 = 0.0;
    v91 = this[4].u32[0];
    do
    {
      v92 = *(v89 - 12);
      v93 = *(v89 - 8);
      v94 = *(v89 - 4);
      v95 = ((v93 - *(&v234 + 1)) * -v84) + (v83 * (v94 - v75));
      v96 = ((v94 - v75) * v87) + (v84 * (v92 - *&v234));
      v97 = ((v92 - *&v234) * v88) + (v81 * (v93 - *(&v234 + 1)));
      if ((((v96 * v96) + (v95 * v95)) + (v97 * v97)) > v90 && *v89 != v236 && *v89 != v240)
      {
        v243 = *v89;
        *&v80 = v94;
        a9 = v93;
        v9 = v92;
        v244 = *(v89 + 16);
        v78 = ((v93 - *(&v234 + 1)) * -v84) + (v83 * (v94 - v75));
        v79 = ((v94 - v75) * v87) + (v84 * (v92 - *&v234));
        v85 = ((v92 - *&v234) * v88) + (v81 * (v93 - *(&v234 + 1)));
        v90 = ((v96 * v96) + (v95 * v95)) + (v97 * v97);
      }

      v89 += 32;
      --v91;
    }

    while (v91);
    *v242 = v9;
    *&v242[1] = a9;
    v242[2] = v80;
  }

  else
  {
    v90 = 0.0;
  }

  if (sqrtf(v90) <= v72)
  {
    v223 = physx::shdfnd::Foundation::mInstance;
    v224 = "QuickHullConvexHullLib::findSimplex: Simplex input points appers to be colinear.";
    v225 = 912;
    goto LABEL_194;
  }

  v99 = sqrtf(((v79 * v79) + (v78 * v78)) + (v85 * v85));
  if (v99 > 0.0)
  {
    v100 = 1.0 / v99;
    v78 = v78 * v100;
    v79 = v79 * v100;
    v85 = v85 * v100;
  }

  v101 = (a9 * v79) + (v9 * v78);
  v102 = v101 + (*&v80 * v85);
  if (v86)
  {
    v103 = (*&this[6] + 12);
    v104 = 0.0;
    do
    {
      v105 = *(v103 - 3);
      v106 = *(v103 - 2);
      v107 = *(v103 - 1);
      v108 = vabds_f32(((v79 * v106) + (v105 * v78)) + (v107 * v85), v102);
      if (v108 > v104)
      {
        v109 = *v103;
        v110 = *v103 == v236 || LODWORD(v109) == v240;
        if (!v110 && LODWORD(v109) != v243)
        {
          v246 = *v103;
          v247 = *(v103 + 4);
          v101 = v107;
          v9 = v106;
          v82 = v105;
          v104 = v108;
        }
      }

      v103 += 8;
      --v86;
    }

    while (v86);
    *v245 = v82;
    *&v245[1] = v9;
    *&v245[2] = v101;
  }

  else
  {
    v104 = 0.0;
  }

  if (fabsf(v104) <= v72)
  {
    v223 = physx::shdfnd::Foundation::mInstance;
    v224 = "QuickHullConvexHullLib::findSimplex: Simplex input points appers to be coplanar.";
    v225 = 935;
    goto LABEL_194;
  }

  for (i = 0; i != 24; i += 8)
  {
    v74 = vadd_f32(v74, *&v238[i]);
    v75 = v75 + *(&v239 + i * 4);
  }

  v113 = ((v79 * v9) + (v82 * v78)) + (v101 * v85);
  __asm { FMOV            V3.2S, #0.25 }

  this[2] = vmul_f32(v74, _D3);
  *this[3].i32 = v75 * 0.25;
  v248 = v31;
  v249 = v31;
  if (v113 >= v102)
  {
    Triangle = local::QuickHull::createTriangle(this, &v234, v242, v238);
    *&v248 = Triangle;
    *(&v248 + 1) = local::QuickHull::createTriangle(this, v245, &v234, v238);
    *&v249 = local::QuickHull::createTriangle(this, v245, v238, v242);
    v133 = local::QuickHull::createTriangle(this, v245, v242, &v234);
    v134 = 0;
    *(&v249 + 1) = v133;
    v135 = -3;
    do
    {
      v136 = v134 + 1;
      v137 = *(&v248 + v134 + 1);
      v138 = *v137;
      v139 = v134 + 2;
      if (v134 == 2)
      {
        v139 = 1;
      }

      v140 = *(**(&v248 + v139) + 40);
      *(v138 + 48) = v140;
      *(v140 + 48) = v138;
      v141 = *(*(*v137 + 40) + 40);
      v142 = *Triangle;
      if (v134)
      {
        v143 = v135;
        do
        {
          v142 = *(v142 + 40);
          _CF = __CFADD__(v143++, 1);
        }

        while (!_CF);
      }

      *(v141 + 48) = v142;
      *(v142 + 48) = v141;
      ++v135;
      v134 = v136;
    }

    while (v136 != 3);
  }

  else
  {
    v118 = local::QuickHull::createTriangle(this, &v234, v238, v242);
    *&v248 = v118;
    v119 = local::QuickHull::createTriangle(this, v245, v238, &v234);
    *(&v248 + 1) = v119;
    v120 = local::QuickHull::createTriangle(this, v245, v242, v238);
    *&v249 = v120;
    *(&v249 + 1) = local::QuickHull::createTriangle(this, v245, &v234, v242);
    v121 = *(*v119 + 40);
    v122 = *v120;
    *(v121 + 48) = *v120;
    *(v122 + 48) = v121;
    v123 = *(*(*v119 + 40) + 40);
    v124 = *v118;
    v125 = -1;
    v126 = 1;
    do
    {
      v127 = v125;
      do
      {
        v124 = *(v124 + 40);
        _CF = __CFADD__(v127++, 1);
      }

      while (!_CF);
      *(v123 + 48) = v124;
      *(v124 + 48) = v123;
      v128 = v126 + 2;
      ++v126;
      v129 = *(&v248 + v126);
      v130 = *(*v129 + 40);
      --v125;
      if (v126 == 3)
      {
        v128 = 1;
      }

      v131 = **(&v248 + v128);
      *(v130 + 48) = v131;
      *(v131 + 48) = v130;
      v123 = *(*(*v129 + 40) + 40);
      v124 = *v118;
    }

    while (v126 != 3);
    *(v123 + 48) = v124;
    *(v124 + 48) = v123;
  }

  for (j = 0; j != 32; j += 8)
  {
    v145 = this[16].u32[0];
    if ((this[16].i32[1] & 0x7FFFFFFFu) <= v145)
    {
      physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::growAndPushBack(&this[15], (&v248 + j));
    }

    else
    {
      *(*&this[15] + 8 * v145) = *(&v248 + j);
      this[16].i32[0] = v145 + 1;
    }
  }

  this[17].i32[0] = 4;
  v146 = this[4].u32[0];
  if (v146)
  {
    v147 = 0;
    v148 = this[6];
    v149 = v236;
    v150 = v240;
    v151 = v243;
    v152 = v246;
    do
    {
      v153 = *&v148 + 32 * v147;
      v154 = *(v153 + 12);
      if (v154 != v149 && v154 != v150 && v154 != v151 && v154 != v152)
      {
        v158 = 0;
        v159 = 0;
        v160 = *this[42].i32;
        v161 = *v153;
        v162 = *(v153 + 4);
        v163 = *(v153 + 8);
        do
        {
          v164 = *(&v248 + v158);
          v165 = v164[13];
          if (((((v162 * v164[7]) + (v164[6] * v161)) + (v164[8] * v163)) - v165) > v160)
          {
            v160 = (((v162 * v164[7]) + (v164[6] * v161)) + (v164[8] * v163)) - v165;
            v159 = *(&v248 + v158);
          }

          v158 += 8;
        }

        while (v158 != 32);
        if (v159)
        {
          *(v153 + 16) = v160;
          v166 = *(v159 + 16);
          if (v166)
          {
            if (*(v166 + 16) <= v160)
            {
              *(v153 + 24) = v166;
              *(v159 + 16) = v153;
            }

            else
            {
              *(v153 + 24) = *(v166 + 24);
              *(v166 + 24) = v153;
            }
          }

          else
          {
            *(v159 + 16) = v153;
            *(v153 + 16) = v160;
            *(v153 + 24) = 0;
          }
        }
      }

      ++v147;
    }

    while (v147 != v146);
  }

  v167 = this[1];
  v168 = this[16].u32[0];
  if ((*(*&v167 + 72) & 4) == 0)
  {
LABEL_114:
    if (this[16].i32[0])
    {
      v226 = v12;
      v227 = v11;
      v171 = 4;
      while (1)
      {
        v172 = 0;
        v173 = 0;
        v174 = *&this[42].i32[1];
        v175 = this[15];
        do
        {
          v176 = *v175;
          if (!*(*v175 + 60))
          {
            v177 = *(v176 + 16);
            if (v177)
            {
              if (v174 < *(v177 + 16))
              {
                v173 = *v175;
                v174 = *(v177 + 16);
                v172 = *(v176 + 16);
              }
            }
          }

          ++v175;
          --v168;
        }

        while (v168);
        v167 = this[1];
        if (!v172 || *(v172 + 12) == this[5].i32[0] || (*(*&v167 + 72) & 0x20) != 0 && v171 >= *(*&v167 + 74))
        {
          goto LABEL_190;
        }

        *(v173 + 16) = *(*(v173 + 16) + 24);
        local::QuickHull::calculateHorizon(this, v172, 0, v173, &this[45], &this[49]);
        v178 = this[17].i32[0];
        if ((this[46].i32[0] + v178) >= 0x100)
        {
          v219 = this[50].i32[0];
          if (v219)
          {
            v220 = this[49];
            v221 = this[50].u32[0];
            do
            {
              v222 = *v220++;
              *(v222 + 60) = 0;
              --v221;
            }

            while (v221);
            this[17].i32[0] = v219 + v178;
          }

          this[4].i32[1] = v171;
          return 3;
        }

        v179 = 0;
        v180 = 0;
        v181 = 0;
        do
        {
          v182 = *(*&this[45] + 8 * v179);
          v183 = local::QuickHull::createTriangle(this, v172, *(v182 + 48), v182);
          v184 = v183;
          v234 = v183;
          v185 = this[16].u32[0];
          if ((this[16].i32[1] & 0x7FFFFFFFu) <= v185)
          {
            physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::growAndPushBack(&this[15], &v234);
          }

          else
          {
            *(*&this[15] + 8 * v185) = v183;
            this[16].i32[0] = v185 + 1;
          }

          ++this[17].i32[0];
          v186 = *v184;
          v187 = *(*v184 + 40);
          v188 = *(v187 + 40);
          v189 = *(v182 + 48);
          *(v188 + 48) = v189;
          *(v189 + 48) = v188;
          v190 = v186;
          if (v180)
          {
            *(v187 + 48) = v180;
            *(v180 + 48) = v187;
            v190 = v181;
          }

          v191 = this[48].u32[0];
          if ((this[48].i32[1] & 0x7FFFFFFFu) <= v191)
          {
            physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::growAndPushBack(&this[47], &v234);
          }

          else
          {
            *(*&this[47] + 8 * v191) = v184;
            this[48].i32[0] = v191 + 1;
          }

          ++v179;
          v180 = v186;
          v181 = v190;
        }

        while (v179 < this[46].u32[0]);
        v192 = *(v190 + 40);
        *(v192 + 48) = v186;
        *(v186 + 48) = v192;
        LOBYTE(v234) = 0;
        v193 = this[48].u32[0];
        if (v193)
        {
          for (k = 0; k < v193; ++k)
          {
            v195 = *(*&this[47] + 8 * k);
            if (!*(v195 + 60))
            {
                ;
              }

              v193 = this[48].u32[0];
            }
          }

          if (v234)
          {
            goto LABEL_172;
          }

          if (v193)
          {
            for (m = 0; m < v193; ++m)
            {
              v197 = *(*&this[47] + 8 * m);
              if (*(v197 + 60) == 2)
              {
                *(v197 + 60) = 0;
                  ;
                }

                v193 = this[48].u32[0];
              }
            }

            if (v234)
            {
LABEL_172:
              this[5].i32[0] = *(v172 + 12);
              v214 = this[10].u32[0];
              v12 = v226;
              v11 = v227;
              if (v214)
              {
                for (n = 0; n < v214; ++n)
                {
                  if (*(*&this[9] + 8 * n))
                  {
                    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
                    v214 = this[10].u32[0];
                  }
                }
              }

              this[10].i32[0] = 0;
              this[7].i32[1] = 0;
              this[8].i32[0] = 0;
              local::MemBlock<local::QuickHullHalfEdge,false>::init(&this[7], this[7].u32[0]);
              v216 = this[14].u32[0];
              if (v216)
              {
                for (ii = 0; ii < v216; ++ii)
                {
                  if (*(*&this[13] + 8 * ii))
                  {
                    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
                    v216 = this[14].u32[0];
                  }
                }
              }

              this[14].i32[0] = 0;
              this[11].i32[1] = 0;
              this[12].i32[0] = 0;
              local::MemBlock<local::QuickHullFace,true>::init(&this[11], this[11].u32[0]);
              this[16].i32[0] = 0;
              this[17].i32[0] = 0;
              this[44].i32[0] = 0;
              this[46].i32[0] = 0;
              this[48].i32[0] = 0;
              this[50].i32[0] = 0;
              this[52].i32[0] = 0;
              v14 = v231;
              v13 = v232;
              v16 = v229;
              v15 = v230;
              v18 = this + 22;
              v17 = v228;
              v20 = this + 23;
              v19 = &this[22] + 1;
              v22 = this + 34;
              v21 = (&this[23] + 4);
              v24 = this + 35;
              v23 = &this[34] + 1;
              v26 = this + 26;
              v25 = (&this[35] + 4);
              v28 = &this[27];
              v27 = &this[26] + 4;
              v30 = this + 38;
              v29 = &this[27] + 4;
              v31 = 0uLL;
              goto LABEL_2;
            }
          }
        }

        else
        {
          v193 = 0;
        }

        v198 = this[44].u32[0];
        if (v198)
        {
          v199 = 0;
          v200 = this[47];
          v201 = this[43];
          v202 = *this[42].i32;
          do
          {
            if (v193)
            {
              v203 = 0;
              v204 = *(*&v201 + 8 * v199);
              v205 = v200;
              v206 = v193;
              v207 = v202;
              do
              {
                v208 = *v205;
                if (!*(*v205 + 15))
                {
                  v209 = *(v204 + 8);
                  v210 = v208[6];
                  v211 = v208[7];
                  v212 = v208[13];
                  if (((((*(v204 + 4) * v211) + (v210 * *v204)) + (v208[8] * v209)) - v212) > v207)
                  {
                    v207 = (((*(v204 + 4) * v211) + (v210 * *v204)) + (v208[8] * v209)) - v212;
                    v203 = *v205;
                  }
                }

                ++v205;
                --v206;
              }

              while (v206);
              if (v203)
              {
                *(v204 + 16) = v207;
                v213 = *(v203 + 2);
                if (v213)
                {
                  if (*(v213 + 16) <= v207)
                  {
                    *(v204 + 24) = v213;
                    *(v203 + 2) = v204;
                  }

                  else
                  {
                    *(v204 + 24) = *(v213 + 24);
                    *(v213 + 24) = v204;
                  }
                }

                else
                {
                  *(v203 + 2) = v204;
                  *(v204 + 16) = v207;
                  *(v204 + 24) = 0;
                }
              }
            }

            ++v199;
          }

          while (v199 != v198);
        }

        this[44].i32[0] = 0;
        this[46].i32[0] = 0;
        this[48].i32[0] = 0;
        this[50].i32[0] = 0;
        ++v171;
        v168 = this[16].u32[0];
        if (!v168)
        {
          v167 = this[1];
          goto LABEL_190;
        }
      }
    }

LABEL_189:
    v171 = 4;
LABEL_190:
    this[4].i32[1] = v171;
    return 2 * (v171 > *(*&v167 + 74));
  }

  if (!this[16].i32[0])
  {
    goto LABEL_189;
  }

  v169 = this[15];
  v170 = this[16].u32[0];
  while (*(**&v169 + 36) >= (*this->i32[0] + *this->i32[0]))
  {
    *&v169 += 8;
    if (!--v170)
    {
      goto LABEL_114;
    }
  }

  return 1;
}

uint64_t local::QuickHull::calculateHorizon(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = local::QuickHull::deleteFacePoints(a1, a4, 0);
  *(a4 + 60) = 1;
  v17 = a4;
  v13 = *(a6 + 8);
  if ((*(a6 + 12) & 0x7FFFFFFFu) <= v13)
  {
    result = physx::shdfnd::Array<local::QuickHullFace *,physx::shdfnd::ReflectionAllocator<local::QuickHullFace *>>::growAndPushBack(a6, &v17);
  }

  else
  {
    *(*a6 + 8 * v13) = a4;
    *(a6 + 8) = v13 + 1;
  }

  --*(a1 + 136);
  if (a3)
  {
    v14 = *(a3 + 40);
  }

  else
  {
    v14 = *a4;
    a3 = v14;
  }

  v17 = v14;
  do
  {
    v15 = *(*(v14 + 48) + 56);
    if (!*(v15 + 60))
    {
      if (((((a2[1] * *(v15 + 28)) + (*(v15 + 24) * *a2)) + (*(v15 + 32) * a2[2])) - *(v15 + 52)) <= *(a1 + 336))
      {
        v16 = *(a5 + 8);
        if ((*(a5 + 12) & 0x7FFFFFFFu) <= v16)
        {
          result = physx::shdfnd::Array<local::QuickHullHalfEdge *,physx::shdfnd::ReflectionAllocator<local::QuickHullHalfEdge *>>::growAndPushBack(a5, &v17);
        }

        else
        {
          *(*a5 + 8 * v16) = v14;
          *(a5 + 8) = v16 + 1;
        }
      }

      else
      {
        result = local::QuickHull::calculateHorizon(a1, a2);
      }
    }

    v14 = *(v14 + 40);
    v17 = v14;
  }

  while (v14 != a3);
  return result;
}

uint64_t local::QuickHull::doAdjacentMerge(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v7 = *a2;
  *a4 = 0;
  v8 = *(a2 + 36);
  v9 = 1;
  while (1)
  {
    v10 = v7[6];
    v11 = *(v10 + 56);
    if (!a3)
    {
      break;
    }

    if (v8 <= v11[9])
    {
      v12 = -*(a1 + 336);
      if (((((*(*(*(v10 + 48) + 56) + 44) * v11[7]) + (v11[6] * *(*(*(v10 + 48) + 56) + 40))) + (v11[8] * *(*(*(v10 + 48) + 56) + 48))) - v11[13]) > v12)
      {
        goto LABEL_16;
      }

      v16 = v7[7];
      v13 = ((v11[11] * v16[7]) + (v16[6] * v11[10])) + (v16[8] * v11[12]);
      v14 = v16[13];
    }

    else
    {
      v12 = -*(a1 + 336);
      if (((((v11[11] * *(v7[7] + 28)) + (*(v7[7] + 24) * v11[10])) + (*(v7[7] + 32) * v11[12])) - *(v7[7] + 52)) > v12)
      {
        goto LABEL_16;
      }

      v13 = ((*(*(*(v10 + 48) + 56) + 44) * v11[7]) + (v11[6] * *(*(*(v10 + 48) + 56) + 40))) + (v11[8] * *(*(*(v10 + 48) + 56) + 48));
      v14 = v11[13];
    }

    if ((v13 - v14) > v12)
    {
      v9 = 0;
    }

LABEL_13:
    v7 = v7[5];
    if (v7 == *a2)
    {
      result = 0;
      if ((v9 & 1) == 0)
      {
        *(a2 + 60) = 2;
      }

      return result;
    }
  }

  v15 = -*(a1 + 336);
  if (((((v11[11] * *(v7[7] + 28)) + (*(v7[7] + 24) * v11[10])) + (*(v7[7] + 32) * v11[12])) - *(v7[7] + 52)) <= v15 && ((((*(*(*(v10 + 48) + 56) + 44) * v11[7]) + (v11[6] * *(*(*(v10 + 48) + 56) + 40))) + (v11[8] * *(*(*(v10 + 48) + 56) + 48))) - v11[13]) <= v15)
  {
    goto LABEL_13;
  }

LABEL_16:
  *(a1 + 416) = 0;
  if (local::QuickHullFace::mergeAdjacentFace(a2, v7, a1 + 408, v8))
  {
    v18 = *(a1 + 416);
    *(a1 + 136) -= v18;
    if (v18)
    {
      v19 = 0;
      do
      {
        local::QuickHull::deleteFacePoints(a1, *(*(a1 + 408) + 8 * v19++), a2);
      }

      while (v19 < *(a1 + 416));
    }

    return 1;
  }

  else
  {
    result = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t local::QuickHull::deleteFacePoints(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v6 = result;
    do
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v7 = v3;
            v11 = v3;
            v3 = *(v3 + 24);
            *(v7 + 24) = 0;
            if (a3)
            {
              v8 = (((*(v7 + 4) * *(a3 + 28)) + (*(a3 + 24) * *v7)) + (*(a3 + 32) * *(v7 + 8))) - *(a3 + 52);
              if (v8 > *(v6 + 336))
              {
                break;
              }
            }

            v10 = *(v6 + 352);
            if ((*(v6 + 356) & 0x7FFFFFFFu) <= v10)
            {
              result = physx::shdfnd::Array<local::QuickHullVertex *,physx::shdfnd::ReflectionAllocator<local::QuickHullVertex *>>::growAndPushBack(v6 + 344, &v11);
              if (!v3)
              {
                goto LABEL_17;
              }
            }

            else
            {
              *(*(v6 + 344) + 8 * v10) = v7;
              *(v6 + 352) = v10 + 1;
              if (!v3)
              {
                goto LABEL_17;
              }
            }
          }

          *(v7 + 16) = v8;
          v9 = *(a3 + 16);
          if (v9)
          {
            break;
          }

          *(a3 + 16) = v7;
          *(v7 + 16) = v8;
          *(v7 + 24) = 0;
          if (!v3)
          {
            goto LABEL_17;
          }
        }

        if (*(v9 + 16) <= v8)
        {
          break;
        }

        *(v7 + 24) = *(v9 + 24);
        *(v9 + 24) = v7;
        if (!v3)
        {
          goto LABEL_17;
        }
      }

      *(v7 + 24) = v9;
      *(a3 + 16) = v7;
    }

    while (v3);
LABEL_17:
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL local::QuickHull::canMergeFaces(uint64_t a1, void *a2)
{
  v2 = a2;
  v104 = *MEMORY[0x1E69E9840];
  v4 = a2[7];
  v5 = *(a2[6] + 56);
  v6 = *(v4 + 8);
  v7 = *(v5 + 4);
  v8 = v7 + v6;
  if (v7 + v6 < 0xF)
  {
    MEMORY[0x1EEE9AC00](a1);
    v9 = (&v90 - v10);
    bzero(&v90 - v10, v11);
  }

  else
  {
    v9 = physx::shdfnd::TempAllocator::allocate(&v91, 72 * (v7 + v6), "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 1447);
    v6 = *(v4 + 8);
    v7 = *(v5 + 4);
  }

  bzero(v9, 72 * (v6 + v7));
  v92 = 0;
  v93 = 0;
  v96 = 0.0;
  v100 = 0xFF7FFFFF00000000;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v91 = v9;
  v12 = *v4;
  if (*v4 == v2)
  {
    v12 = v12[5];
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = v12;
  do
  {
    v17 = &v9[9 * v15];
    v17[7] = &v91;
    *v17 = *v16;
    *(v17 + 2) = *(v16 + 2);
    v18 = *(v16 + 12);
    *(v17 + 7) = *(v16 + 7);
    *(v17 + 12) = v18;
    if (v16 == v2)
    {
      v14 = v16[6];
      v13 = &v9[9 * v15];
    }

    v19 = v15;
    if (!v15)
    {
      v19 = *(v4 + 8);
    }

    v20 = v15++;
    v21 = v19 - 1;
    if (v16[5] == v12)
    {
      v22 = 0;
    }

    else
    {
      v22 = v15;
    }

    v23 = &v9[9 * v20];
    v23[4] = &v9[9 * v21];
    v23[5] = &v9[9 * v22];
    v16 = v16[5];
  }

  while (v16 != v12);
  v24 = *v5;
  do
  {
    v25 = &v9[9 * v15];
    v25[7] = &v91;
    *v25 = *v24;
    *(v25 + 2) = *(v24 + 8);
    v26 = *(v24 + 12);
    *(v25 + 7) = *(v24 + 28);
    *(v25 + 12) = v26;
    if (v14 == v24)
    {
      v14 = &v9[9 * v15];
    }

    v27 = *v5;
    if (*(v24 + 40) == *v5)
    {
      v29 = *(v4 + 8);
      v28 = v29;
    }

    else
    {
      v28 = v15 + 1;
      v29 = *(v4 + 8);
    }

    v30 = v15;
    if (v15 == v29)
    {
      v30 = v15 + *(v5 + 4);
    }

    v31 = &v9[9 * v15];
    v31[4] = &v9[9 * v30 - 9];
    v31[5] = &v9[9 * v28];
    ++v15;
    v24 = *(v24 + 40);
  }

  while (v24 != v27);
  v32 = 0;
  v34 = v13[4];
  v33 = v13[5];
  v36 = v14[4];
  v35 = v14[5];
  *(v36 + 40) = v33;
  *(v33 + 32) = v36;
  *(v34 + 40) = v35;
  *(v35 + 32) = v34;
  v94 = 0;
  v95 = 0.0;
  v37 = v91;
  v39 = *v91;
  v38 = v91[1];
  v40 = 0.0;
  v41 = 3;
  v42 = v91;
  v43 = v91[2];
  do
  {
    v44 = *(v42 + 5);
    v45 = (((v38 - v44[1]) * (v38 - v44[1])) + ((v39 - *v44) * (v39 - *v44))) + ((v43 - v44[2]) * (v43 - v44[2]));
    if (v45 > v40)
    {
      v32 = v42;
    }

    v43 = v44[2];
    if (v45 > v40)
    {
      v40 = v45;
    }

    v38 = v44[1];
    v39 = *v44;
    v42 = *(v42 + 5);
    --v41;
  }

  while (v41);
  v46 = *(v32 + 5);
  v48 = *v32;
  v47 = v32[1];
  v49 = *v46 - *v32;
  v50 = *(v46 + 4) - v47;
  v51 = v32[2];
  v52 = *(v46 + 8) - v51;
  v97 = *v32;
  v98 = v47;
  v99 = v51;
  v53 = 1;
  v54 = 0.0;
  v55 = 0.0;
  v56 = 0.0;
  do
  {
    ++v53;
    v48 = v48 + *v46;
    v97 = v48;
    v47 = v47 + *(v46 + 4);
    v98 = v47;
    v51 = v51 + *(v46 + 8);
    v99 = v51;
    v46 = *(v46 + 40);
    v57 = *v46 - *v32;
    v58 = *(v46 + 4) - v32[1];
    v59 = *(v46 + 8) - v32[2];
    v56 = v56 + ((v58 * -v52) + (v50 * v59));
    v55 = v55 + ((v59 * -v49) + (v52 * v57));
    v94 = __PAIR64__(LODWORD(v55), LODWORD(v56));
    v54 = v54 + ((v57 * -v50) + (v49 * v58));
    v95 = v54;
  }

  while (v46 != v32);
  v92 = v53;
  v60 = sqrtf(((v55 * v55) + (v56 * v56)) + (v54 * v54));
  if (v60 > 0.0)
  {
    v56 = v56 * (1.0 / v60);
    v55 = v55 * (1.0 / v60);
    v94 = __PAIR64__(LODWORD(v55), LODWORD(v56));
    v54 = v54 * (1.0 / v60);
    v95 = v54;
  }

  v61 = 1.0 / v53;
  v62 = v61 * v48;
  v96 = v60;
  v97 = v62;
  v63 = v61 * v47;
  v64 = v61 * v51;
  v98 = v63;
  v99 = v64;
  v65 = *(a1 + 32);
  if (v65)
  {
    v66 = ((v63 * v55) + (v56 * v62)) + (v54 * v64);
    v67 = (*(a1 + 48) + 8);
    while (((((v55 * *(v67 - 1)) + (v56 * *(v67 - 2))) + (v54 * *v67)) - v66) <= *(a1 + 340))
    {
      v67 += 8;
      if (!--v65)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    v69 = *v91;
    v68 = v91[1];
    v70 = v91[2];
LABEL_39:
    v37 = *(v37 + 5);
    v71 = *v37 - v69;
    v72 = v37[1] - v68;
    v73 = v37[2] - v70;
    v74 = sqrtf(((v72 * v72) + (v71 * v71)) + (v73 * v73));
    if (v74 > 0.0)
    {
      v75 = 1.0 / v74;
      v71 = v71 * v75;
      v72 = v72 * v75;
      v73 = v73 * v75;
    }

    v76 = v73 * -v56;
    v77 = v71 * -v55;
    v78 = -((v72 * -v54) + (v55 * v73));
    v79 = -(v76 + (v54 * v71));
    v80 = -(v77 + (v56 * v72));
    v81 = v37;
    while (((((v81[1] - v68) * v79) + ((*v81 - v69) * v78)) + ((v81[2] - v70) * v80)) <= *(a1 + 336))
    {
      v81 = *(v81 + 5);
      if (v81 == v37)
      {
        v70 = v37[2];
        v68 = v37[1];
        v69 = *v37;
        if (v37 != v91)
        {
          goto LABEL_39;
        }

        v83 = v2[5];
        v82 = v2[6];
        v84 = v82[7];
        v85 = v82[4];
        do
        {
          v2 = v2[4];
          v82 = v82[5];
          v86 = *(v2[6] + 56);
        }

        while (v86 == v84);
        while (1)
        {
          v87 = *(*(v83 + 48) + 56);
          if (v87 != v84)
          {
            break;
          }

          v85 = *(v85 + 32);
          v83 = *(v83 + 40);
        }

        if (*(*(v85 + 48) + 56) != v87)
        {
          v88 = v86 != *(v82[6] + 56);
          goto LABEL_53;
        }

        break;
      }
    }
  }

  v88 = 0;
LABEL_53:
  if (v8 >= 0xF)
  {
    physx::shdfnd::TempAllocator::deallocate(&v91, v9);
  }

  return v88;
}

_DWORD *local::addExpandPoint(_DWORD *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = (*a2 + 60 * v2 - 4);
    v4 = *(a2 + 8);
    while (*(v3 - 2) != result[12] || *(v3 - 1) != result[13] || *v3 != result[14])
    {
      v3 -= 15;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if ((*(a2 + 12) & 0x7FFFFFFFu) <= v2)
    {
      return physx::shdfnd::Array<local::ExpandPoint,physx::shdfnd::ReflectionAllocator<local::ExpandPoint>>::growAndPushBack(a2, result);
    }

    else
    {
      v5 = 0;
      v6 = *a2 + 60 * v2;
      do
      {
        *(v6 + v5 * 4) = *&result[v5];
        v5 += 4;
      }

      while (v5 != 12);
      v7 = *(result + 6);
      *(v6 + 56) = result[14];
      *(v6 + 48) = v7;
      ++*(a2 + 8);
    }
  }

  return result;
}

uint64_t physx::QuickHullConvexHullLib::QuickHullConvexHullLib(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_1F5D23320;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v6 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v7 = "static const char *physx::shdfnd::ReflectionAllocator<local::QuickHull>::getName() [T = local::QuickHull]";
  }

  else
  {
    v7 = "<allocation names disabled>";
  }

  v8 = (*(*(v6 + 24) + 16))(v6 + 24, 424, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 1810);
  *v8 = a3;
  *(v8 + 8) = a2;
  *(v8 + 36) = 0xFFFFFFFF00000000;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 72) = 0;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 133) = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(v8 + 336) = _D0;
  *(v8 + 344) = 0u;
  *(v8 + 360) = 0u;
  *(v8 + 376) = 0u;
  *(v8 + 392) = 0u;
  *(v8 + 408) = 0u;
  *(a1 + 56) = v8;
  local::QuickHull::preallocate(v8, *(a2 + 16));
  return a1;
}

void physx::QuickHullConvexHullLib::~QuickHullConvexHullLib(physx::QuickHullConvexHullLib *this)
{
  *this = &unk_1F5D23320;
  v2 = *(this + 7);
  if (!*(v2 + 48))
  {
    *(v2 + 128) = 0;
    goto LABEL_5;
  }

  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  *(v2 + 48) = 0;
  v3 = *(this + 7);
  *(v2 + 128) = 0;
  v2 = v3;
  if (v3)
  {
LABEL_5:
    local::QuickHull::~QuickHull(v2);
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v2);
  }

  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(v4 + 44);
    if ((v5 & 0x80000000) == 0 && (v5 & 0x7FFFFFFF) != 0 && *(v4 + 32) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    v7 = *(v4 + 28);
    if ((v7 & 0x80000000) == 0 && (v7 & 0x7FFFFFFF) != 0 && *(v4 + 16) != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    v9 = *(v4 + 12);
    if ((v9 & 0x80000000) == 0 && (v9 & 0x7FFFFFFF) != 0 && *v4 != 0)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v4);
  }

  if (*(this + 9))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(this + 10) = 0;
  *this = &unk_1F5D232E8;
  if (*(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  if (*(this + 6))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }
}

{
  physx::QuickHullConvexHullLib::~QuickHullConvexHullLib(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::QuickHullConvexHullLib::createConvexHull(float32x2_t *this)
{
  *&v170[24] = *MEMORY[0x1E69E9840];
  v2 = *(*&this[1] + 16);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * v2, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 1846);
  v147 = 0;
  v4 = this[1];
  v5 = v4[4];
  v6 = *(v4 + 1);
  v7 = *v4;
  if ((v4[18] & 0x100) != 0)
  {
    if (v5)
    {
      v12 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * v5, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullLib.cpp", 137);
      v10 = v12;
      this[6] = v12;
      v13 = vdup_n_s32(0xFE7FFFFF);
      v14 = vdup_n_s32(0x7E7FFFFFu);
      v15 = (v6 + 8);
      v16 = 8.5071e37;
      v17 = -8.5071e37;
      v18 = v5;
      do
      {
        if (v16 >= *v15)
        {
          v16 = *v15;
        }

        v19 = *(v15 - 2);
        v14 = vbsl_s8(vcgt_f32(v19, v14), v14, v19);
        v13 = vbsl_s8(vcgt_f32(v13, v19), v13, v19);
        if (v17 <= *v15)
        {
          v17 = *v15;
        }

        v15 = (v15 + v7);
        --v18;
      }

      while (v18);
      this[4] = vmul_f32(vadd_f32(v14, v13), 0x3F0000003F000000);
      this[5].f32[0] = (v16 + v17) * 0.5;
      v20 = (v12 + 8);
      v21 = (v6 + 8);
      v22 = v5;
      do
      {
        v23 = *v21 - this[5].f32[0];
        *(v20 - 1) = vsub_f32(*(v21 - 2), this[4]);
        *v20 = v23;
        v20 += 3;
        v21 = (v21 + v7);
        --v22;
      }

      while (v22);
    }

    else
    {
      v10 = 0;
      this[6] = 0;
      this[4] = 0;
      this[5].i32[0] = 0;
    }

    v8 = this;
    v9 = v5;
    v11 = 12;
  }

  else
  {
    v8 = this;
    v9 = v4[4];
    v10 = *(v4 + 1);
    v11 = *v4;
  }

  if ((physx::ConvexHullLib::cleanupVertices(v8, v9, v10, v11, &v147, v3, &v149, &v148) & 1) == 0)
  {
    if (v3)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v3);
    }

    return 3;
  }

  v29 = 0;
  v30 = v147;
  v31 = *v3;
  v32 = *(v3 + 4);
  v24.i32[0] = *(v3 + 8);
  do
  {
    v33 = (&v161 + v29);
    *v33 = v31;
    v33[1] = v32;
    v33[2] = *v24.i32;
    v33[3] = 0.0;
    v34 = (&v152 + v29);
    *v34 = v31;
    v34[1] = v32;
    v34[2] = *v24.i32;
    v29 += 32;
    v34[3] = 0.0;
  }

  while (v29 != 96);
  if (v30 < 2)
  {
    v52 = v31;
    v51 = v32;
    v50 = *v24.i32;
    goto LABEL_40;
  }

  LODWORD(v28) = v161;
  v35 = v162;
  v36 = v163;
  v37 = v164[0];
  v38 = v152;
  v39 = v153;
  v40 = v154[0];
  v42 = v165;
  v41 = v166;
  v43 = v167;
  v44 = v168;
  v46 = v155;
  v45 = v156;
  v47 = (v3 + 20);
  v48 = 1;
  v49 = v157;
  v50 = *v24.i32;
  v51 = v32;
  v52 = v31;
  v53 = v158;
  do
  {
    v54 = *(v47 - 2);
    if (v54 <= v31)
    {
      *&v55 = *(v47 - 1);
      if (v54 < v52)
      {
        v36 = *v47;
        v37 = v48;
        v35 = *(v47 - 1);
        *&v28 = *(v47 - 2);
        v52 = *&v28;
      }
    }

    else
    {
      v55 = *(v47 - 1);
      v40 = v48;
      v38 = *(v47 - 2);
      v31 = v38;
      v39 = v55;
    }

    if (*&v55 <= v32)
    {
      v56 = *v47;
      if (*&v55 < v51)
      {
        v44 = v48;
        v43 = *v47;
        v41 = v55;
        v42 = *(v47 - 2);
        v51 = *&v55;
      }
    }

    else
    {
      v53 = v48;
      v49 = *v47;
      v45 = v55;
      v46 = *(v47 - 2);
      v56 = *v47;
      v32 = *&v55;
    }

    if (v56 <= *v24.i32)
    {
      v57 = &v170[4];
      v58 = v170;
      v59 = &v169 + 4;
      v60 = &v169;
      v61 = v56;
      if (v56 >= v50)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v57 = &v160 + 4;
      v58 = &v160;
      v59 = &v159 + 4;
      v60 = &v159;
      v61 = v50;
      *v24.i32 = v56;
    }

    *v60 = v54;
    *v59 = v55;
    *v58 = v56;
    v50 = v61;
    *v57 = v48;
LABEL_34:
    ++v48;
    v47 += 3;
  }

  while (v30 != v48);
  v161 = LODWORD(v28);
  v162 = v35;
  v163 = v36;
  v164[0] = v37;
  v152 = v38;
  v153 = v39;
  v154[0] = v40;
  v165 = v42;
  v166 = v41;
  v167 = v43;
  v168 = v44;
  v155 = v46;
  v156 = v45;
  v157 = v49;
  v158 = v53;
LABEL_40:
  v63 = 0;
  v64 = 0;
  v65 = 0;
  LODWORD(v66) = 0;
  v67 = ((*v24.i32 + (((v31 - v52) + v32) - v51)) - v50) * 0.5;
  v24.i32[0] = 884998144;
  v68.i32[0] = vdup_lane_s32(v24, 0).u32[0];
  v68.i32[1] = *(*&this[2] + 4);
  v25.n128_u64[0] = vmul_n_f32(v68, v67);
  v69 = 0.0;
  do
  {
    v70 = *(&v152 + v63) - *(&v161 + v63);
    if (v70 <= v69)
    {
      v66 = v66;
    }

    else
    {
      v66 = v64;
    }

    if (v70 > v69)
    {
      v69 = *(&v152 + v63) - *(&v161 + v63);
    }

    v65 += 32;
    ++v64;
    v63 += 36;
  }

  while (v65 != 96);
  v71 = vcgt_f32(v25.n128_u64[0], v68);
  v72 = &v152 + 8 * v66;
  v73 = *v72;
  v74 = v72[1];
  v75 = v72[2];
  v76 = (&v161 + 8 * v66);
  v77 = v76[1];
  v78 = v76[2];
  v79 = *v76 - *v72;
  v80 = v77 - v74;
  v81 = v78 - v75;
  *&v26 = sqrtf(((v80 * v80) + (v79 * v79)) + (v81 * v81));
  if (*&v26 > 0.0)
  {
    v77 = 1.0;
    *&v26 = 1.0 / *&v26;
    v79 = v79 * *&v26;
    v80 = v80 * *&v26;
    v81 = v81 * *&v26;
  }

  v82 = COERCE_DOUBLE(vbsl_s8(v71, v25.n128_u64[0], v68));
  if (v30)
  {
    v83 = 0;
    v84 = 0;
    v85 = -v80;
    v86 = (v3 + 8);
    v87 = 0.0;
    do
    {
      v88 = *(v86 - 2);
      v89 = *(v86 - 1);
      v90 = *v86 - v75;
      v91 = ((v89 - v74) * -v81) + (v80 * v90);
      v92 = (v90 * -v79) + (v81 * (v88 - v73));
      v93 = ((v88 - v73) * v85) + (v79 * (v89 - v74));
      if ((((v92 * v92) + (v91 * v91)) + (v93 * v93)) > v87)
      {
        v25.n128_f32[0] = v91;
        *v71.i32 = v92;
        *&v26 = ((v88 - v73) * v85) + (v79 * (v89 - v74));
        v77 = *(v86 - 2);
        *&v28 = *(v86 - 1);
        v78 = *v86;
        v87 = ((v92 * v92) + (v91 * v91)) + (v93 * v93);
        v84 = v83;
      }

      ++v83;
      v86 += 3;
    }

    while (v30 != v83);
    v94 = v84;
  }

  else
  {
    v94 = 0;
    v87 = 0.0;
  }

  v95 = sqrtf(v87);
  v96 = v95 >= *&v82;
  if (v95 < *&v82)
  {
    v97 = v77 - v73;
    v98 = *&v28 - v74;
    v99 = v78 - v75;
    v100 = (((v80 * v98) + (v97 * v79)) + (v99 * v81)) / (((v80 * v80) + (v79 * v79)) + (v81 * v81));
    v101 = v97 - (v79 * v100);
    v102 = v98 - (v80 * v100);
    v103 = v99 - (v81 * v100);
    v104 = sqrtf(((v102 * v102) + (v101 * v101)) + (v103 * v103));
    if (v104 > 0.0)
    {
      v105 = 1.0 / v104;
      v101 = v101 * v105;
      v102 = v102 * v105;
      v103 = v103 * v105;
    }

    v77 = v77 + (*&v82 * v101);
    *&v28 = *&v28 + (*&v82 * v102);
    v78 = v78 + (*&v82 * v103);
    v106 = v3 + 12 * v94;
    *v106 = v77;
    *(v106 + 4) = LODWORD(v28);
    *(v106 + 8) = v78;
  }

  v107 = sqrtf(((*v71.i32 * *v71.i32) + (v25.n128_f32[0] * v25.n128_f32[0])) + (*&v26 * *&v26));
  if (v107 > 0.0)
  {
    v107 = 1.0 / v107;
    v25.n128_f32[0] = v25.n128_f32[0] * v107;
    *v71.i32 = *v71.i32 * v107;
    *&v26 = *&v26 * v107;
  }

  *&v28 = *&v28 * *v71.i32;
  *&v27 = (*&v28 + (v77 * v25.n128_f32[0])) + (v78 * *&v26);
  if (v30)
  {
    v108 = 0;
    v109 = 0;
    v110 = (v3 + 8);
    v111 = 0.0;
    do
    {
      v112 = (*v71.i32 * *(v110 - 1)) + (*(v110 - 2) * v25.n128_f32[0]);
      v113 = *v110;
      v110 += 3;
      v107 = v113;
      *&v28 = vabds_f32(v112 + (v113 * *&v26), *&v27);
      if (*&v28 > *&v111)
      {
        *&v111 = *&v28;
        v109 = v108;
      }

      ++v108;
    }

    while (v30 != v108);
  }

  else
  {
    v109 = 0;
    v111 = 0.0;
  }

  *&v111 = fabsf(*&v111);
  if (*&v111 < *&v82)
  {
    v114 = v3 + 12 * v109;
    LODWORD(v28) = *v114;
    LODWORD(v111) = *(v114 + 4);
    v107 = *(v114 + 8);
    v115 = ((*v71.i32 * *&v111) + (*v114 * v25.n128_f32[0])) + (v107 * *&v26);
    v116 = *&v82 * v25.n128_f32[0];
    v117 = *&v82 * *v71.i32;
    v118 = *&v82 * *&v26;
    if (v115 <= *&v27)
    {
      v25.n128_f32[0] = *&v28 - v116;
      *v71.i32 = *&v111 - v117;
      *&v26 = v107 - v118;
    }

    else
    {
      v25.n128_f32[0] = v116 + *&v28;
      *v71.i32 = v117 + *&v111;
      *&v26 = v118 + v107;
    }

    v96 = 0;
    *v114 = v25.n128_u32[0];
    *(v114 + 4) = v71.i32[0];
    *(v114 + 8) = LODWORD(v26);
  }

  v119 = this[7];
  v119[4].i32[0] = v30;
  if (v30)
  {
    v120 = 0;
    v121 = (*&v119[6] + 12);
    v122 = (v3 + 8);
    do
    {
      v25.n128_u64[0] = *(v122 - 1);
      *(v121 - 3) = v25.n128_u64[0];
      v123 = *v122;
      v122 += 3;
      v25.n128_u32[0] = v123;
      *(v121 - 1) = v123;
      *v121 = v120;
      v121 += 8;
      ++v120;
    }

    while (v30 != v120);
  }

  if (v96)
  {
    for (i = 0; i != 24; i += 8)
    {
      v125 = &v119[i / 2];
      v125[18] = *(&v161 + i * 4);
      v125[19].i32[0] = v164[i - 1];
      *&v125[19].u8[4] = *&v164[i];
      v125[21].i32[1] = v164[i + 4];
      v125[30] = *(&v152 + i * 4);
      v125[31].i32[0] = v154[i - 1];
      v25 = *&v154[i];
      *&v125[31].u8[4] = v25;
      v126 = v154[i + 4];
      v125[33].i32[1] = v126;
    }

    *&v119[42] = v82;
    v119[17].i8[4] = 1;
    v119 = this[7];
  }

  v127 = local::QuickHull::buildHull(v119, v82, v25, *&v71, v26, v27, v111, v28, v107);
  v62 = 3;
  if (v127 <= 1)
  {
    if (v127)
    {
      if (v127 == 1)
      {
        v62 = 1;
      }

      else
      {
        v62 = 3;
      }

      goto LABEL_117;
    }

    v129 = this[7];
    v130 = *(v129 + 128);
    if (v130)
    {
      for (j = 0; j < v130; ++j)
      {
        v132 = *(*(v129 + 120) + 8 * j);
        if (!*(v132 + 60))
        {
LABEL_94:
          v133 = *v132;
          v134 = *v132;
          do
          {
            v135 = *(v134[6] + 56);
            if ((((*(v132 + 28) * v135[7]) + (*(v132 + 24) * v135[6])) + (*(v132 + 32) * v135[8])) > 0.99863 && *(v132 + 36) >= v135[9])
            {
              if (local::QuickHull::canMergeFaces(v129, v134))
              {
                v150 = 0;
                v151 = 0;
                local::QuickHullFace::mergeAdjacentFace(v132, v134, &v150, v136);
                v137 = v151;
                *(v129 + 136) -= v151;
                v138 = v150;
                v139 = v150;
                if (v137)
                {
                  do
                  {
                    v140 = *v139++;
                    local::QuickHull::deleteFacePoints(v129, v140, v132);
                    --v137;
                  }

                  while (v137);
                }

                if ((v151 & 0x8000000000000000) == 0 && (v151 & 0x7FFFFFFF00000000) != 0 && v138 != 0)
                {
                  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v138);
                }

                goto LABEL_94;
              }

              v133 = *v132;
            }

            v134 = v134[5];
          }

          while (v134 != v133);
          v130 = *(v129 + 128);
        }
      }
    }

LABEL_113:
    v62 = 0;
    goto LABEL_117;
  }

  if (v127 == 2)
  {
    if ((*(*&this[1] + 72) & 0x20) != 0)
    {
      v62 = physx::QuickHullConvexHullLib::expandHull(this);
      goto LABEL_117;
    }

    physx::QuickHullConvexHullLib::expandHullOBB(this);
    goto LABEL_113;
  }

  if (v127 == 3)
  {
    v128 = this[1];
    if (*(*&this[7] + 36) > *(*&v128 + 74))
    {
      if ((*(*&v128 + 72) & 0x20) != 0)
      {
        physx::QuickHullConvexHullLib::expandHull(this);
      }

      else
      {
        physx::QuickHullConvexHullLib::expandHullOBB(this);
      }
    }

    v62 = 2;
  }

LABEL_117:
  if ((*(*&this[1] + 72) & 0x80) != 0 && !*&this[8] && !v62)
  {
    v142 = this[7];
    v143 = *(*&v142 + 128);
    if (v143)
    {
      v144 = 0;
      v145 = *(*&v142 + 120);
      do
      {
        if (!*(*v145 + 60) && v144 <= *(*v145 + 8))
        {
          v144 = *(*v145 + 8);
        }

        v145 += 8;
        --v143;
      }

      while (v143);
      if (v144 >= 0x21)
      {
        physx::QuickHullConvexHullLib::expandHullOBB(this);
      }
    }

    v62 = 0;
  }

  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v3);
  return v62;
}

uint64_t physx::QuickHullConvexHullLib::expandHull(physx::QuickHullConvexHullLib *this)
{
  v1 = this;
  v97 = *MEMORY[0x1E69E9840];
  v95 = 0;
  v96 = 0;
  v2 = *(this + 7);
  v3 = *(v2 + 32);
  if (v3)
  {
    this = physx::shdfnd::Array<local::ExpandPoint,physx::shdfnd::ReflectionAllocator<local::ExpandPoint>>::recreate(&v95, v3);
    v2 = *(v1 + 7);
  }

  LODWORD(v4) = *(v2 + 128);
  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = *(*(v2 + 120) + 8 * v5);
      if (!*(v6 + 60))
      {
        v7 = *v6;
        do
        {
          v8 = *(v7[7] + 72);
          v9 = v7[5];
          v10 = *(*(v7[6] + 56) + 72);
          if (v10 >= v8)
          {
            v11 = *(v7[7] + 72);
          }

          else
          {
            v11 = *(*(v7[6] + 56) + 72);
          }

          if (v10 <= v8)
          {
            v10 = *(v7[7] + 72);
          }

          v92 = v11;
          v93 = v10;
          v12 = *(*(*(v9 + 48) + 56) + 72);
          if (v12 >= v11)
          {
            v13 = &v94;
            if (v12 < v10)
            {
              v94 = v10;
              v13 = &v93;
            }
          }

          else
          {
            v93 = v11;
            v94 = v10;
            v13 = &v92;
          }

          *v13 = v12;
          this = local::addExpandPoint(v91, &v95);
          v7 = v7[5];
        }

        while (v7 != *v6);
        v2 = *(v1 + 7);
      }

      ++v5;
      v4 = *(v2 + 128);
    }

    while (v5 < v4);
  }

  v14 = *(v2 + 32);
  if (v14)
  {
    v15 = 0;
    v16 = *(v2 + 48);
    do
    {
      if (v4)
      {
        v17 = *(v2 + 120);
        v18 = v4;
        do
        {
          v19 = *v17;
          this = *(*v17 + 15);
          if (!this)
          {
            v20 = (((*(v16 + 32 * v15 + 4) * v19[7]) + (v19[6] * *(v16 + 32 * v15))) + (v19[8] * *(v16 + 32 * v15 + 8))) - v19[13];
            if (v20 > 0.0 && v20 > v19[14])
            {
              v19[14] = v20;
            }
          }

          ++v17;
          --v18;
        }

        while (v18);
      }

      ++v15;
    }

    while (v15 != v14);
  }

  v21 = v96;
  if (!v96)
  {
    goto LABEL_39;
  }

  v22 = 0;
  v23 = *(v2 + 88);
  v24 = *(v2 + 104);
  v25 = (v95 + 12);
  v26 = v95 + 48;
  do
  {
    v27 = 0;
    v28 = v25;
    do
    {
      v29 = *(v24 + 8 * (*(v26 + v27) / v23)) + 80 * (*(v26 + v27) % v23);
      v30 = *(v29 + 56);
      v31 = *(v29 + 32);
      v32 = -*(v29 + 52);
      if (v30 > 0.0)
      {
        v32 = v32 - v30;
      }

      *(v28 - 3) = *(v29 + 24);
      *(v28 - 1) = v31;
      *v28 = v32;
      v27 += 4;
      v28 += 4;
    }

    while (v27 != 12);
    ++v22;
    v25 += 15;
    v26 += 60;
  }

  while (v22 != v21);
  v33 = (12 * v21);
  if (v33 > 0x400)
  {
    v34 = physx::shdfnd::TempAllocator::allocate((&v90 + 7), v33, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 2170);
    v35 = 1;
    if (!v21)
    {
      goto LABEL_45;
    }
  }

  else
  {
LABEL_39:
    MEMORY[0x1EEE9AC00](this);
    v34 = (&v91[-2] - ((v36 + 15) & 0x1FFFFFFF0));
    bzero(v34, v36);
    v35 = 0;
    if (!v21)
    {
      goto LABEL_45;
    }
  }

  v37 = v34 + 2;
  v38 = (v95 + 24);
  v39 = v21;
  do
  {
    v40 = *(v38 - 6);
    v41 = *(v38 - 5);
    v42 = *(v38 - 4);
    v43 = *(v38 - 2);
    v44 = *(v38 - 1);
    v45 = *v38;
    v46 = v38[2];
    v47 = v38[3];
    v48 = v38[4];
    v49.f32[0] = (v41 * *v38) - (v44 * v42);
    v50 = ((v43 * ((v47 * v42) - (v41 * v48))) + (v40 * ((v44 * v48) - (v47 * *v38)))) + (v46 * v49.f32[0]);
    if (v50 == 0.0)
    {
      v59 = 0;
      v55 = 0.0;
      v58 = 0.0;
      v54 = 1065353216;
      v57 = 0x3F80000000000000;
      v60 = 1.0;
    }

    else
    {
      v51 = -v41;
      v52 = 1.0 / v50;
      v53.f32[0] = (v44 * v48) - (v45 * v47);
      v53.f32[1] = -((v43 * v48) - (v45 * v46));
      v54 = vmul_n_f32(v53, v52);
      v55 = ((v43 * v47) - (v46 * v44)) * v52;
      v56.f32[0] = -((v42 * -v47) + (v41 * v48));
      v56.f32[1] = (v40 * v48) - (v46 * v42);
      v57 = vmul_n_f32(v56, v52);
      v58 = -(((v40 * v47) - (v46 * v41)) * v52);
      v49.f32[1] = -((v40 * v45) - (v43 * v42));
      v59 = vmul_n_f32(v49, v52);
      v60 = ((v43 * v51) + (v40 * v44)) * v52;
    }

    v61 = *(v38 - 3);
    v62 = v38[1];
    v63 = v38[5];
    *(v37 - 1) = vneg_f32(vadd_f32(vadd_f32(vmul_n_f32(v54, v61), vmul_n_f32(v57, v62)), vmul_n_f32(v59, v63)));
    *v37 = -(((v55 * v61) + (v58 * v62)) + (v60 * v63));
    v37 += 3;
    v38 += 15;
    --v39;
  }

  while (v39);
LABEL_45:
  v64 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v65 = "static const char *physx::shdfnd::ReflectionAllocator<local::QuickHull>::getName() [T = local::QuickHull]";
  }

  else
  {
    v65 = "<allocation names disabled>";
  }

  v66 = (*(*(v64 + 24) + 16))(v64 + 24, 424, v65, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 2178);
  *v66 = **(v1 + 7);
  *(v66 + 36) = 0xFFFFFFFF00000000;
  *(v66 + 48) = 0;
  v67 = (v66 + 48);
  *(v66 + 56) = 0;
  *(v66 + 64) = 0;
  *(v66 + 80) = 0;
  *(v66 + 88) = 0;
  *(v66 + 72) = 0;
  *(v66 + 96) = 0;
  *(v66 + 104) = 0u;
  *(v66 + 120) = 0u;
  *(v66 + 133) = 0;
  __asm { FMOV            V1.2S, #-1.0 }

  *(v66 + 336) = _D1;
  *(v66 + 344) = 0u;
  *(v66 + 360) = 0u;
  *(v66 + 376) = 0u;
  *(v66 + 392) = 0u;
  *(v66 + 408) = 0u;
  local::QuickHull::preallocate(v66, v21);
  *(v66 + 32) = v21;
  if (v21)
  {
    v81 = 0;
    v82 = (*v67 + 12);
    v83 = (v34 + 2);
    do
    {
      v73 = *(v83 - 1);
      *(v82 - 3) = v73;
      v84 = *v83;
      v83 = (v83 + 12);
      LODWORD(v73) = v84;
      *(v82 - 1) = v84;
      *v82 = v81;
      v82 += 8;
      ++v81;
    }

    while (v21 != v81);
  }

  v85 = local::QuickHull::buildHull(v66, v73, v74, v75, v76, v77, v78, v79, v80);
  if (v85 > 1)
  {
    if ((v85 - 2) >= 2)
    {
      if (*v67)
      {
        (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        *v67 = 0;
      }

      *(v66 + 128) = 0;
      local::QuickHull::~QuickHull(v66);
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v66);
      v86 = 3;
      if (!v35)
      {
        goto LABEL_65;
      }

LABEL_64:
      physx::shdfnd::TempAllocator::deallocate(v91, v34);
      goto LABEL_65;
    }

LABEL_58:
    v87 = *(v1 + 7);
    if (*(v87 + 48))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      *(v87 + 48) = 0;
      v88 = *(v1 + 7);
      *(v87 + 128) = 0;
      v87 = v88;
      if (!v88)
      {
LABEL_63:
        v86 = 0;
        *(v1 + 7) = v66;
        if (!v35)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }
    }

    else
    {
      *(v87 + 128) = 0;
    }

    local::QuickHull::~QuickHull(v87);
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v87);
    goto LABEL_63;
  }

  if (!v85)
  {
    goto LABEL_58;
  }

  if (*v67)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    *v67 = 0;
  }

  *(v66 + 128) = 0;
  local::QuickHull::~QuickHull(v66);
  (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v66);
  v86 = 1;
  if (v35)
  {
    goto LABEL_64;
  }

LABEL_65:
  if ((v96 & 0x8000000000000000) == 0 && (v96 & 0x7FFFFFFF00000000) != 0 && v95)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  return v86;
}

void physx::QuickHullConvexHullLib::expandHullOBB(physx::QuickHullConvexHullLib *this)
{
  MEMORY[0x1EEE9AC00](this);
  v4 = v3;
  v607 = *MEMORY[0x1E69E9840];
  v563 = 0;
  v564 = 0;
  v5 = *(v3[7] + 128);
  if (v5)
  {
    physx::shdfnd::Array<physx::PxPlane,physx::shdfnd::ReflectionAllocator<physx::PxPlane>>::recreate(&v563, v5);
    v6 = v4[7];
    if (*(v6 + 128))
    {
      v7 = 0;
      do
      {
        v8 = *(*(v6 + 120) + 8 * v7);
        if (!*(v8 + 60))
        {
          v9 = *(v8 + 24);
          v10 = *(v8 + 28);
          *v581 = v9;
          *&v581[4] = v10;
          v11 = *(v8 + 32);
          v12 = *(v8 + 56);
          v13 = -*(v8 + 52);
          *&v581[8] = v11;
          *&v581[12] = v13;
          if (v12 > 0.0)
          {
            v13 = v13 - v12;
            *&v581[12] = v13;
          }

          v14 = v564;
          if ((HIDWORD(v564) & 0x7FFFFFFFu) <= v564)
          {
            physx::shdfnd::Array<physx::PxPlane,physx::shdfnd::ReflectionAllocator<physx::PxPlane>>::growAndPushBack(&v563, v581);
            v6 = v4[7];
          }

          else
          {
            v15 = v563 + 16 * v564;
            *v15 = v9;
            *(v15 + 4) = v10;
            *(v15 + 8) = v11;
            *(v15 + 12) = v13;
            LODWORD(v564) = v14 + 1;
          }
        }

        ++v7;
      }

      while (v7 < *(v6 + 128));
    }
  }

  v547 = 0;
  v548 = 0;
  v549 = 0;
  v550 = 0;
  v551 = 0;
  v552 = 0;
  v553 = 0;
  v554 = 0;
  v555 = 0;
  v557 = 16711935;
  physx::QuickHullConvexHullLib::fillConvexMeshDescFromQuickHull(v4, &v547);
  v21 = *(v4[1] + 72);
  v556 = v21;
  v22 = v548;
  v23 = v549;
  if (v549)
  {
    v24 = (v548 + 8);
    v25 = 0;
    v16.i64[0] = 0;
    v26 = v549;
    do
    {
      v17 = *(v24 - 1);
      v25 = vadd_f32(v25, *&v17);
      v27 = *v24;
      v24 += 3;
      v16.f32[0] = v16.f32[0] + v27;
      --v26;
    }

    while (v26);
  }

  else
  {
    v25 = 0;
    v16.i64[0] = 0;
  }

  v28 = v554;
  v29 = v551;
  LODWORD(v18) = 1.0;
  *&v17 = 1.0 / v549;
  v30 = COERCE_DOUBLE(vmul_n_f32(v25, *&v17));
  v566 = v30;
  v16.f32[0] = *&v17 * v16.f32[0];
  LODWORD(v567) = v16.i32[0];
  v31 = v555;
  if (v555)
  {
    v32 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v555, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullUtils.cpp", 844);
    v33 = v32;
    v34 = 0;
    do
    {
      *(v32 + v34) = *(v28 + 4 * v34);
      ++v34;
    }

    while (v31 != v34);
    v35 = v4;
  }

  else
  {
    v35 = v4;
    v33 = 0;
  }

  v36 = v552;
  if (v552)
  {
    v37 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 20 * v552, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullUtils.cpp", 850);
    v38 = (v37 + 18);
    v39 = (v29 + 18);
    v40 = v36;
    do
    {
      v16 = *(v39 - 9);
      *(v38 - 18) = v16;
      *v38 = *(v39 - 2);
      v41 = *v39;
      v39 += 10;
      *(v38 - 1) = v41;
      v38 += 20;
      --v40;
    }

    while (v40);
  }

  else
  {
    v37 = 0;
  }

  LODWORD(__src) = 0;
  v579 = 255;
  *(&__src + 1) = v22;
  v572.i32[0] = 0;
  v570 = *&v23;
  v573 = v37;
  v575 = 0;
  v574 = v36;
  v576 = v33;
  v578 = 16711680;
  v577 = v31;
  if ((v21 & 0x40) != 0)
  {
    physx::computeVolumeIntegralsEberlySIMD(&__src, v581, &v566, v16, v30, v17, v18, v19, v20);
    if (v23)
    {
LABEL_28:
      v42 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 16 * v23, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullUtils.cpp", 873);
      v43 = v42;
      v44 = 0;
      do
      {
        v45 = *v22;
        v22 = (v22 + 12);
        *(v42 + v44) = v45;
        v44 += 16;
      }

      while (16 * v23 != v44);
      goto LABEL_33;
    }
  }

  else
  {
    physx::computeVolumeIntegralsEberly(&__src, v581, &v566);
    if (v23)
    {
      goto LABEL_28;
    }
  }

  v43 = 0;
LABEL_33:
  v46 = 0;
  v47 = v568;
  v48 = 24;
  do
  {
    v49 = 0;
    v50 = v48;
    do
    {
      v51 = *&v581[v50];
      *(v47 + v49) = v51;
      v49 += 4;
      v50 += 24;
    }

    while (v49 != 12);
    ++v46;
    v47 = (v47 + 12);
    v48 += 8;
  }

  while (v46 != 3);
  physx::PxDiagonalize(v568, &v595, &v599);
  v52 = 0;
  v53 = v595;
  v54 = v596;
  v55 = v597;
  v56 = v54 + v54;
  v57 = v55 + v55;
  v58 = v54 * (v54 + v54);
  v59 = v55 * (v55 + v55);
  v60 = (v53 + v53) * v596;
  v61 = (v53 + v53) * v597;
  v62 = (v53 + v53) * v598;
  v63 = v56 * v597;
  v64 = v56 * v598;
  v599.f32[0] = (1.0 - v58) - v59;
  v599.f32[1] = v60 + (v57 * v598);
  v65 = 1.0 - (v53 * (v53 + v53));
  v600 = v61 - v64;
  v601 = v60 - (v57 * v598);
  v602 = v65 - v59;
  v603 = v63 + v62;
  v604 = v61 + v64;
  v605 = v63 - v62;
  v606 = v65 - v58;
  v66 = 1000000000.0;
  v67.i64[0] = 0x80000000800000;
  v67.i64[1] = 0x80000000800000;
  v543 = vnegq_f32(v67);
  v545 = *v581;
  do
  {
    v68 = 0;
    v69 = &v599 + 3 * v52;
    v70 = *v69;
    v71 = v69[2];
    do
    {
      v72 = __sincosf_stret((v68 * 0.31416) * 0.5);
      *v73.i8 = vmul_n_f32(v70, v72.__sinval);
      v74 = v73;
      *&v74.i32[2] = v71 * v72.__sinval;
      v75 = v74;
      v75.i32[3] = LODWORD(v72.__cosval);
      if (v23)
      {
        v76 = v75;
        v76.i32[3] = 0;
        v77 = vdupq_laneq_s32(v75, 3);
        LODWORD(v78) = vmla_f32(0xBF000000BF000000, *v77.f32, *v77.f32).u32[0];
        v79 = vextq_s8(v76, v76, 8uLL).u64[0];
        v80 = vext_s8(*v73.i8, v79, 4uLL);
        v81.i64[0] = 0x80000000800000;
        v81.i64[1] = 0x80000000800000;
        v82 = vnegq_f32(v81);
        v83 = v43;
        v84 = v23;
        v85 = v545;
        do
        {
          v86 = *v83++;
          v87 = vsubq_f32(v86, v545);
          v88 = v87;
          v88.i32[3] = 0;
          v89 = vmulq_n_f32(v88, v78);
          v90 = vextq_s8(v88, v88, 8uLL).u64[0];
          v91 = vmls_f32(vmul_f32(*v73.i8, vext_s8(*v87.f32, v90, 4uLL)), v80, *v87.f32);
          *v87.f32 = vext_s8(v91, vmls_f32(vmul_f32(v79, *v87.f32), *v73.i8, v90), 4uLL);
          v89.i32[3] = 0;
          v87.i64[1] = v91.u32[0];
          v92 = vmlsq_f32(v89, v77, v87);
          v92.i64[1] = vextq_s8(v92, v92, 8uLL).u32[0];
          v93 = vmulq_f32(v76, v88);
          v93.i64[0] = vpaddq_f32(v93, v93).u64[0];
          v94 = vmlaq_n_f32(v92, v76, vpadd_f32(*v93.f32, *v93.f32).f32[0]);
          v95 = vaddq_f32(v94, v94);
          v95.i32[3] = 0;
          v82 = vminq_f32(v82, v95);
          v81 = vmaxq_f32(v81, v95);
          --v84;
        }

        while (v84);
      }

      else
      {
        v81.i64[0] = 0x80000000800000;
        v81.i64[1] = 0x80000000800000;
        v82 = v543;
        v85 = v545;
      }

      v96 = vsubq_f32(v81, v82);
      v97 = vmuls_lane_f32(vmuls_lane_f32(v96.f32[0], *v96.f32, 1), v96, 2);
      if (v97 <= v66)
      {
        v1 = v96.f32[2];
        v98.i64[0] = 0xBF000000BF000000;
        v98.i64[1] = 0xBF000000BF000000;
        v99 = vaddq_f32(v81, vmulq_f32(v96, v98));
        v100 = vdup_laneq_s32(v74, 2);
        v101 = vaddq_f32(v75, v75);
        v102 = vmul_n_f32(v100, v101.f32[0]);
        v103 = vdup_laneq_s32(v75, 3);
        v104 = vmul_lane_f32(v103, *v101.f32, 1);
        v105 = vmul_lane_f32(v100, *v101.f32, 1);
        v106 = vmul_n_f32(v103, v101.f32[0]);
        *v107.f32 = vext_s8(vadd_f32(v102, v104), vsub_f32(v105, v106), 4uLL);
        __asm { FMOV            V23.2S, #1.0 }

        v111 = vdup_lane_s32(*v73.i8, 1);
        v112 = vsub_f32(_D23, vdup_lane_s32(vmul_f32(*v75.f32, *v101.f32), 0));
        v113 = vmul_lane_f32(v111, *v101.f32, 1);
        *&v107.u32[2] = vsub_f32(v112, v113);
        v114 = vmul_n_f32(v111, v101.f32[0]);
        v115 = vmul_laneq_f32(v103, v101, 2);
        v116 = vmul_laneq_f32(v100, v101, 2);
        *v117.f32 = vext_s8(vsub_f32(v114, v115), vsub_f32(v112, v116), 4uLL);
        *&v117.u32[2] = vadd_f32(v105, v106);
        *v118.f32 = vext_s8(vsub_f32(vsub_f32(_D23, v113), v116), vadd_f32(v114, v115), 4uLL);
        *&v118.u32[2] = vsub_f32(v102, v104);
        v558 = v73.i64[0];
        v119 = vaddq_f32(vmulq_laneq_f32(v107, v99, 2), vaddq_f32(vmulq_lane_f32(v117, *v99.f32, 1), vaddq_f32(v85, vmulq_n_f32(v118, v99.f32[0]))));
        v559 = v71 * v72.__sinval;
        cosval = v72.__cosval;
        v561 = *v119.f32;
        v562 = v119.i32[2];
        v66 = v97;
        v2 = *v96.f32;
      }

      ++v68;
    }

    while (v68 != 20);
    ++v52;
  }

  while (v52 != 3);
  v120 = &re::introspect_BOOL(BOOL)::info;
  if (v43)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v43);
  }

  v121 = v35;
  if (v33)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v33);
  }

  if (v37)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v37);
  }

  if (v35[9])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v35[9] = 0;
  v35[10] = 0;
  v122 = v564;
  v123 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v124 = "static const char *physx::shdfnd::ReflectionAllocator<physx::ConvexHull>::getName() [T = physx::ConvexHull]";
  }

  else
  {
    v124 = "<allocation names disabled>";
  }

  v125 = (*(*(v123 + 24) + 16))(v123 + 24, 56, v124, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 2255);
  v599 = vmul_f32(v2, 0x3F0000003F000000);
  v600 = v1 * 0.5;
  *(v125 + 16) = 0u;
  v126 = v125 + 16;
  *(v125 + 32) = 0u;
  v127 = v125 + 32;
  *v125 = 0u;
  *(v125 + 48) = &v563;
  v128 = *&v558;
  v129 = v559;
  v130 = v129 + v129;
  v131 = *(&v558 + 1) * (*(&v558 + 1) + *(&v558 + 1));
  v132 = v129 * (v129 + v129);
  v133 = (v128 + v128) * *(&v558 + 1);
  v134 = (v128 + v128) * v559;
  v135 = (v128 + v128) * cosval;
  v136 = (*(&v558 + 1) + *(&v558 + 1)) * v559;
  v137 = (*(&v558 + 1) + *(&v558 + 1)) * cosval;
  *&__src = (1.0 - v131) - v132;
  *(&__src + 1) = v133 + (v130 * cosval);
  v138 = 1.0 - (v128 * (v128 + v128));
  *(&__src + 2) = v134 - v137;
  *(&__src + 3) = v133 - (v130 * cosval);
  v570 = v138 - v132;
  v571 = v136 + v135;
  v572.f32[0] = v134 + v137;
  v572.f32[1] = v136 - v135;
  *&v573 = v138 - v131;
  physx::Gu::computeOBBPoints(v581, &v561, &v599, &__src, (&__src + 12), &v572);
  v139 = *&v581[8];
  *&v568[0] = *v581;
  DWORD2(v568[0]) = *&v581[8];
  v140 = *(v125 + 8);
  v141 = *(v125 + 12) & 0x7FFFFFFF;
  if (v141 <= v140)
  {
    physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(v125, v568);
    v143 = *(v125 + 8);
    v141 = *(v125 + 12) & 0x7FFFFFFF;
  }

  else
  {
    v142 = *v125 + 12 * v140;
    *v142 = *v581;
    *(v142 + 8) = v139;
    v143 = v140 + 1;
    *(v125 + 8) = v143;
  }

  v144 = v588;
  *&v568[0] = v587;
  *(v568 + 2) = v588;
  if (v141 <= v143)
  {
    physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(v125, v568);
    v146 = *(v125 + 8);
    v141 = *(v125 + 12) & 0x7FFFFFFF;
  }

  else
  {
    v145 = *v125 + 12 * v143;
    *v145 = v587;
    *(v145 + 8) = v144;
    v146 = v143 + 1;
    *(v125 + 8) = v146;
  }

  v147 = v586;
  *&v568[0] = v585;
  *(v568 + 2) = v586;
  if (v141 <= v146)
  {
    physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(v125, v568);
    v149 = *(v125 + 8);
    v141 = *(v125 + 12) & 0x7FFFFFFF;
  }

  else
  {
    v148 = *v125 + 12 * v146;
    *v148 = v585;
    *(v148 + 8) = v147;
    v149 = v146 + 1;
    *(v125 + 8) = v149;
  }

  v150 = v594;
  *&v568[0] = v593;
  *(v568 + 2) = v594;
  if (v141 <= v149)
  {
    physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(v125, v568);
    v152 = *(v125 + 8);
    v141 = *(v125 + 12) & 0x7FFFFFFF;
  }

  else
  {
    v151 = *v125 + 12 * v149;
    *v151 = v593;
    *(v151 + 8) = v150;
    v152 = v149 + 1;
    *(v125 + 8) = v152;
  }

  v153 = *&v581[16];
  v154 = v582;
  *&v568[0] = *&v581[12];
  *(v568 + 2) = v582;
  if (v141 <= v152)
  {
    physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(v125, v568);
    v156 = *(v125 + 8);
    v141 = *(v125 + 12) & 0x7FFFFFFF;
  }

  else
  {
    v155 = (*v125 + 12 * v152);
    *v155 = *&v581[12];
    *(v155 + 1) = v153;
    v155[2] = v154;
    v156 = v152 + 1;
    *(v125 + 8) = v156;
  }

  v157 = v590;
  *&v568[0] = v589;
  *(v568 + 2) = v590;
  if (v141 <= v156)
  {
    physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(v125, v568);
    v159 = *(v125 + 8);
    v141 = *(v125 + 12) & 0x7FFFFFFF;
  }

  else
  {
    v158 = *v125 + 12 * v156;
    *v158 = v589;
    *(v158 + 8) = v157;
    v159 = v156 + 1;
    *(v125 + 8) = v159;
  }

  v160 = v584;
  *&v568[0] = v583;
  *(v568 + 2) = v584;
  if (v141 <= v159)
  {
    physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(v125, v568);
    v162 = *(v125 + 8);
    v141 = *(v125 + 12) & 0x7FFFFFFF;
  }

  else
  {
    v161 = *v125 + 12 * v159;
    *v161 = v583;
    *(v161 + 8) = v160;
    v162 = v159 + 1;
    *(v125 + 8) = v162;
  }

  v163 = v592;
  *&v568[0] = v591;
  *(v568 + 2) = v592;
  if (v141 <= v162)
  {
    physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(v125, v568);
  }

  else
  {
    v164 = *v125 + 12 * v162;
    *v164 = v591;
    *(v164 + 8) = v163;
    *(v125 + 8) = v162 + 1;
  }

  v165 = ((*(&v587 + 1) - *&v581[4]) * (v594 - *&v581[8])) - ((v588 - *&v581[8]) * (*(&v593 + 1) - *&v581[4]));
  v166 = ((v588 - *&v581[8]) * (*&v593 - *v581)) - ((*&v587 - *v581) * (v594 - *&v581[8]));
  v167 = ((*&v587 - *v581) * (*(&v593 + 1) - *&v581[4])) - ((*(&v587 + 1) - *&v581[4]) * (*&v593 - *v581));
  v168 = ((v166 * v166) + (v165 * v165)) + (v167 * v167);
  v169 = 0.0;
  v170 = 0.0;
  v171 = 0.0;
  if (v168 > 0.0)
  {
    v172 = 1.0 / sqrtf(v168);
    v169 = v165 * v172;
    v170 = v166 * v172;
    v171 = v167 * v172;
  }

  v173 = -(((*&v581[4] * v170) + (*v581 * v169)) + (*&v581[8] * v171));
  *&v568[0] = __PAIR64__(LODWORD(v170), LODWORD(v169));
  *(v568 + 2) = v171;
  *(v568 + 3) = v173;
  v174 = *(v125 + 40);
  if ((*(v125 + 44) & 0x7FFFFFFFu) <= v174)
  {
    physx::shdfnd::Array<physx::PxPlane,physx::shdfnd::ReflectionAllocator<physx::PxPlane>>::growAndPushBack(v127, v568);
  }

  else
  {
    v175 = *(v125 + 32) + 16 * v174;
    *v175 = v169;
    *(v175 + 4) = v170;
    *(v175 + 8) = v171;
    *(v175 + 12) = v173;
    *(v125 + 40) = v174 + 1;
  }

  v176 = ((*(&v591 + 1) - *(&v583 + 1)) * (v590 - v584)) - ((v592 - v584) * (*(&v589 + 1) - *(&v583 + 1)));
  v177 = ((v592 - v584) * (*&v589 - *&v583)) - ((*&v591 - *&v583) * (v590 - v584));
  v178 = ((*&v591 - *&v583) * (*(&v589 + 1) - *(&v583 + 1))) - ((*(&v591 + 1) - *(&v583 + 1)) * (*&v589 - *&v583));
  v179 = ((v177 * v177) + (v176 * v176)) + (v178 * v178);
  v180 = 0.0;
  v181 = 0.0;
  v182 = 0.0;
  if (v179 > 0.0)
  {
    v183 = 1.0 / sqrtf(v179);
    v180 = v176 * v183;
    v181 = v177 * v183;
    v182 = v178 * v183;
  }

  v184 = -(((*(&v583 + 1) * v181) + (*&v583 * v180)) + (v584 * v182));
  *&v568[0] = __PAIR64__(LODWORD(v181), LODWORD(v180));
  *(v568 + 2) = v182;
  *(v568 + 3) = v184;
  v185 = *(v125 + 40);
  if ((*(v125 + 44) & 0x7FFFFFFFu) <= v185)
  {
    physx::shdfnd::Array<physx::PxPlane,physx::shdfnd::ReflectionAllocator<physx::PxPlane>>::growAndPushBack(v127, v568);
  }

  else
  {
    v186 = *(v125 + 32) + 16 * v185;
    *v186 = v180;
    *(v186 + 4) = v181;
    *(v186 + 8) = v182;
    *(v186 + 12) = v184;
    *(v125 + 40) = v185 + 1;
  }

  v187 = ((*&v581[16] - *&v581[4]) * (v590 - *&v581[8])) - ((v582 - *&v581[8]) * (*(&v589 + 1) - *&v581[4]));
  v188 = ((v582 - *&v581[8]) * (*&v589 - *v581)) - ((*&v581[12] - *v581) * (v590 - *&v581[8]));
  v189 = ((*&v581[12] - *v581) * (*(&v589 + 1) - *&v581[4])) - ((*&v581[16] - *&v581[4]) * (*&v589 - *v581));
  v190 = ((v188 * v188) + (v187 * v187)) + (v189 * v189);
  v191 = 0.0;
  v192 = 0.0;
  v193 = 0.0;
  if (v190 > 0.0)
  {
    v194 = 1.0 / sqrtf(v190);
    v191 = v187 * v194;
    v192 = v188 * v194;
    v193 = v189 * v194;
  }

  v195 = -(((*&v581[4] * v192) + (*v581 * v191)) + (*&v581[8] * v193));
  *&v568[0] = __PAIR64__(LODWORD(v192), LODWORD(v191));
  *(v568 + 2) = v193;
  *(v568 + 3) = v195;
  v196 = *(v125 + 40);
  if ((*(v125 + 44) & 0x7FFFFFFFu) <= v196)
  {
    physx::shdfnd::Array<physx::PxPlane,physx::shdfnd::ReflectionAllocator<physx::PxPlane>>::growAndPushBack(v127, v568);
  }

  else
  {
    v197 = *(v125 + 32) + 16 * v196;
    *v197 = v191;
    *(v197 + 4) = v192;
    *(v197 + 8) = v193;
    *(v197 + 12) = v195;
    *(v125 + 40) = v196 + 1;
  }

  v198 = ((*(&v591 + 1) - *(&v593 + 1)) * (v584 - v594)) - ((v592 - v594) * (*(&v583 + 1) - *(&v593 + 1)));
  v199 = ((v592 - v594) * (*&v583 - *&v593)) - ((*&v591 - *&v593) * (v584 - v594));
  v200 = ((*&v591 - *&v593) * (*(&v583 + 1) - *(&v593 + 1))) - ((*(&v591 + 1) - *(&v593 + 1)) * (*&v583 - *&v593));
  v201 = ((v199 * v199) + (v198 * v198)) + (v200 * v200);
  v202 = 0.0;
  v203 = 0.0;
  v204 = 0.0;
  if (v201 > 0.0)
  {
    v205 = 1.0 / sqrtf(v201);
    v202 = v198 * v205;
    v203 = v199 * v205;
    v204 = v200 * v205;
  }

  v206 = -(((*(&v593 + 1) * v203) + (*&v593 * v202)) + (v594 * v204));
  *&v568[0] = __PAIR64__(LODWORD(v203), LODWORD(v202));
  *(v568 + 2) = v204;
  *(v568 + 3) = v206;
  v207 = *(v125 + 40);
  if ((*(v125 + 44) & 0x7FFFFFFFu) <= v207)
  {
    physx::shdfnd::Array<physx::PxPlane,physx::shdfnd::ReflectionAllocator<physx::PxPlane>>::growAndPushBack(v127, v568);
  }

  else
  {
    v208 = *(v125 + 32) + 16 * v207;
    *v208 = v202;
    *(v208 + 4) = v203;
    *(v208 + 8) = v204;
    *(v208 + 12) = v206;
    *(v125 + 40) = v207 + 1;
  }

  v209 = ((*(&v585 + 1) - *&v581[4]) * (v584 - *&v581[8])) - ((v586 - *&v581[8]) * (*(&v583 + 1) - *&v581[4]));
  v210 = ((v586 - *&v581[8]) * (*&v583 - *v581)) - ((*&v585 - *v581) * (v584 - *&v581[8]));
  v211 = ((*&v585 - *v581) * (*(&v583 + 1) - *&v581[4])) - ((*(&v585 + 1) - *&v581[4]) * (*&v583 - *v581));
  v212 = ((v210 * v210) + (v209 * v209)) + (v211 * v211);
  v213 = 0.0;
  v214 = 0.0;
  v215 = 0.0;
  if (v212 > 0.0)
  {
    v216 = 1.0 / sqrtf(v212);
    v213 = v209 * v216;
    v214 = v210 * v216;
    v215 = v211 * v216;
  }

  v217 = -(((*&v581[4] * v214) + (*v581 * v213)) + (*&v581[8] * v215));
  *&v568[0] = __PAIR64__(LODWORD(v214), LODWORD(v213));
  *(v568 + 2) = v215;
  *(v568 + 3) = v217;
  v218 = *(v125 + 40);
  if ((*(v125 + 44) & 0x7FFFFFFFu) <= v218)
  {
    physx::shdfnd::Array<physx::PxPlane,physx::shdfnd::ReflectionAllocator<physx::PxPlane>>::growAndPushBack(v127, v568);
  }

  else
  {
    v219 = *(v125 + 32) + 16 * v218;
    *v219 = v213;
    *(v219 + 4) = v214;
    *(v219 + 8) = v215;
    *(v219 + 12) = v217;
    *(v125 + 40) = v218 + 1;
  }

  v220 = ((*(&v589 + 1) - *(&v587 + 1)) * (v592 - v588)) - ((v590 - v588) * (*(&v591 + 1) - *(&v587 + 1)));
  v221 = ((v590 - v588) * (*&v591 - *&v587)) - ((*&v589 - *&v587) * (v592 - v588));
  v222 = ((*&v589 - *&v587) * (*(&v591 + 1) - *(&v587 + 1))) - ((*(&v589 + 1) - *(&v587 + 1)) * (*&v591 - *&v587));
  v223 = ((v221 * v221) + (v220 * v220)) + (v222 * v222);
  v224 = 0.0;
  v225 = 0.0;
  v226 = 0.0;
  if (v223 > 0.0)
  {
    v227 = 1.0 / sqrtf(v223);
    v224 = v220 * v227;
    v225 = v221 * v227;
    v226 = v222 * v227;
  }

  v228 = -(((*(&v587 + 1) * v225) + (*&v587 * v224)) + (v588 * v226));
  *&v568[0] = __PAIR64__(LODWORD(v225), LODWORD(v224));
  *(v568 + 2) = v226;
  *(v568 + 3) = v228;
  v229 = *(v125 + 40);
  if ((*(v125 + 44) & 0x7FFFFFFFu) <= v229)
  {
    physx::shdfnd::Array<physx::PxPlane,physx::shdfnd::ReflectionAllocator<physx::PxPlane>>::growAndPushBack(v127, v568);
  }

  else
  {
    v230 = *(v125 + 32) + 16 * v229;
    *v230 = v224;
    *(v230 + 4) = v225;
    *(v230 + 8) = v226;
    *(v230 + 12) = v228;
    *(v125 + 40) = v229 + 1;
  }

  LODWORD(v568[0]) = 11;
  v231 = *(v125 + 24);
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v231)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v232 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v231) = v568[0];
    v232 = *(v125 + 24) + 1;
    *(v125 + 24) = v232;
  }

  LODWORD(v568[0]) = 65559;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v232)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v233 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v232) = v568[0];
    v233 = *(v125 + 24) + 1;
    *(v125 + 24) = v233;
  }

  LODWORD(v568[0]) = 196623;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v233)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v234 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v233) = v568[0];
    v234 = *(v125 + 24) + 1;
    *(v125 + 24) = v234;
  }

  LODWORD(v568[0]) = 131088;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v234)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v235 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v234) = v568[0];
    v235 = *(v125 + 24) + 1;
    *(v125 + 24) = v235;
  }

  LODWORD(v568[0]) = 17170445;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v235)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v236 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v235) = v568[0];
    v236 = *(v125 + 24) + 1;
    *(v125 + 24) = v236;
  }

  LODWORD(v568[0]) = 17235989;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v236)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v237 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v236) = v568[0];
    v237 = *(v125 + 24) + 1;
    *(v125 + 24) = v237;
  }

  LODWORD(v568[0]) = 17104905;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v237)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v238 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v237) = v568[0];
    v238 = *(v125 + 24) + 1;
    *(v125 + 24) = v238;
  }

  LODWORD(v568[0]) = 17039378;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v238)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v239 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v238) = v568[0];
    v239 = *(v125 + 24) + 1;
    *(v125 + 24) = v239;
  }

  LODWORD(v568[0]) = 33554451;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v239)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v240 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v239) = v568[0];
    v240 = *(v125 + 24) + 1;
    *(v125 + 24) = v240;
  }

  LODWORD(v568[0]) = 33816582;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v240)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v241 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v240) = v568[0];
    v241 = *(v125 + 24) + 1;
    *(v125 + 24) = v241;
  }

  LODWORD(v568[0]) = 33882132;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v241)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v242 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v241) = v568[0];
    v242 = *(v125 + 24) + 1;
    *(v125 + 24) = v242;
  }

  LODWORD(v568[0]) = 33619968;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v242)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v243 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v242) = v568[0];
    v243 = *(v125 + 24) + 1;
    *(v125 + 24) = v243;
  }

  LODWORD(v568[0]) = 50528278;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v243)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v244 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v243) = v568[0];
    v244 = *(v125 + 24) + 1;
    *(v125 + 24) = v244;
  }

  LODWORD(v568[0]) = 50790404;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v244)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v245 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v244) = v568[0];
    v245 = *(v125 + 24) + 1;
    *(v125 + 24) = v245;
  }

  LODWORD(v568[0]) = 50724881;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v245)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v246 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v245) = v568[0];
    v246 = *(v125 + 24) + 1;
    *(v125 + 24) = v246;
  }

  LODWORD(v568[0]) = 50462722;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v246)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v247 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v246) = v568[0];
    v247 = *(v125 + 24) + 1;
    *(v125 + 24) = v247;
  }

  LODWORD(v568[0]) = 67108867;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v247)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v248 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v247) = v568[0];
    v248 = *(v125 + 24) + 1;
    *(v125 + 24) = v248;
  }

  LODWORD(v568[0]) = 67239950;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v248)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v249 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v248) = v568[0];
    v249 = *(v125 + 24) + 1;
    *(v125 + 24) = v249;
  }

  LODWORD(v568[0]) = 67502087;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v249)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v250 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v249) = v568[0];
    v250 = *(v125 + 24) + 1;
    *(v125 + 24) = v250;
  }

  LODWORD(v568[0]) = 67371016;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v250)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v251 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v250) = v568[0];
    v251 = *(v125 + 24) + 1;
    *(v125 + 24) = v251;
  }

  LODWORD(v568[0]) = 83951626;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v251)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v252 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v251) = v568[0];
    v252 = *(v125 + 24) + 1;
    *(v125 + 24) = v252;
  }

  LODWORD(v568[0]) = 84213765;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v252)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v253 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v252) = v568[0];
    v253 = *(v125 + 24) + 1;
    *(v125 + 24) = v253;
  }

  LODWORD(v568[0]) = 84344844;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v253)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    v254 = *(v125 + 24);
  }

  else
  {
    *(*(v125 + 16) + 4 * v253) = v568[0];
    v254 = *(v125 + 24) + 1;
    *(v125 + 24) = v254;
  }

  LODWORD(v568[0]) = 84082689;
  if ((*(v125 + 28) & 0x7FFFFFFFu) <= v254)
  {
    physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::growAndPushBack(v126, v568);
    if (!v122)
    {
      goto LABEL_448;
    }
  }

  else
  {
    *(*(v125 + 16) + 4 * v254) = v568[0];
    ++*(v125 + 24);
    if (!v122)
    {
      goto LABEL_448;
    }
  }

  v255 = v35[7];
  if (v122 >= 0x100)
  {
    v256 = 256;
  }

  else
  {
    v256 = v122;
  }

  v535 = v256;
  v257 = *(v255 + 340);
  v258 = *(v255 + 336);
  v259 = -v257;
  v260 = "shHitCallbackE";
  do
  {
    v261 = v125;
    v262 = *(v125 + 48);
    v263 = *(v262 + 8);
    if (v263)
    {
      v264 = 0;
      v265 = -1;
      v266 = 0.0;
      while (1)
      {
        v267 = 0.0;
        v268 = 0.0;
        if (*(v125 + 8))
        {
          v269 = (*v262 + 16 * v264);
          v270 = *v269;
          v271 = v269[1];
          v272 = v269[2];
          v273 = v269[3];
          v274 = (*v125 + 8);
          v275 = *(v125 + 8);
          do
          {
            v276 = (v271 * *(v274 - 1)) + (*(v274 - 2) * v270);
            v277 = *v274;
            v274 += 3;
            v278 = v273 + (v276 + (v277 * v272));
            if (v267 <= v278)
            {
              v267 = v278;
            }

            if (v268 >= v278)
            {
              v268 = v278;
            }

            --v275;
          }

          while (v275);
        }

        v279 = v267 - v268;
        if (v279 < v257)
        {
          v279 = 1.0;
        }

        v280 = v267 / v279;
        if (v280 > v266)
        {
          v281 = *(v125 + 40);
          if (v281)
          {
            v282 = 0;
            v283 = (*v262 + 16 * v264);
            v284 = *v283;
            v285 = v283[1];
            while (1)
            {
              v286 = (*(v125 + 32) + 16 * v282);
              v287 = v286[1];
              if (v284 != *v286)
              {
                break;
              }

              v288 = v283[2];
              if (v285 != v287)
              {
                goto LABEL_210;
              }

              if (v288 != v286[2])
              {
                goto LABEL_210;
              }

              v289 = 0.0;
              if (v283[3] != v286[3])
              {
                goto LABEL_210;
              }

LABEL_217:
              ++v282;
              v280 = v289;
              if (v282 == v281)
              {
                goto LABEL_221;
              }
            }

            v288 = v283[2];
LABEL_210:
            if ((((v285 * v287) + (v284 * *v286)) + (v288 * v286[2])) > *(v260 + 592) && (v290 = *(v125 + 24), v290))
            {
              v291 = (*(v125 + 16) + 3);
              while (1)
              {
                if (v282 == *v291)
                {
                  v292 = (*v125 + 12 * *(v291 - 1));
                  if ((v283[3] + (((v285 * v292[1]) + (*v292 * v284)) + (v292[2] * v288))) < 0.0)
                  {
                    break;
                  }
                }

                v291 += 4;
                if (!--v290)
                {
                  goto LABEL_216;
                }
              }

              v289 = 0.0;
            }

            else
            {
LABEL_216:
              v289 = v280;
            }

            goto LABEL_217;
          }

          v289 = v280;
LABEL_221:
          if (v289 > v266)
          {
            v265 = v264;
            v266 = v289;
          }
        }

        if (++v264 == v263)
        {
          goto LABEL_226;
        }
      }
    }

    v265 = -1;
    v266 = 0.0;
LABEL_226:
    if (v266 <= v258)
    {
      v265 = -1;
    }

    if ((v265 & 0x80000000) != 0)
    {
LABEL_447:
      v125 = v261;
      break;
    }

    v566 = 0.0;
    v567 = 0;
    v293 = *(v125 + 8);
    if (!v293)
    {
      goto LABEL_239;
    }

    v294 = 0;
    v295 = 0;
    v296 = (v563 + 16 * v265);
    v297 = *v296;
    v298 = v296[1];
    v299 = v296[2];
    v300 = v296[3];
    v301 = (*v125 + 8);
    v302 = &v595 + 1;
    do
    {
      v303 = (v298 * *(v301 - 1)) + (*(v301 - 2) * v297);
      v304 = *v301;
      v301 += 3;
      v305 = v300 + (v303 + (v304 * v299));
      if (v305 > v257)
      {
        v306 = 2;
      }

      else
      {
        v306 = v305 < v259;
      }

      if (v305 < v259 && v305 <= v257)
      {
        v307 = v294;
      }

      else
      {
        v307 = -1;
      }

      v294 += v305 < v259 && v305 <= v257;
      *v302 = v307;
      v302[1] = -1;
      *(v302 - 1) = v306;
      v295 |= v306;
      v302 += 3;
      --v293;
    }

    while (v293);
    if ((v295 & 2) == 0)
    {
LABEL_239:
      v308 = v120[428];
      if ((*(*v308 + 40))(v308))
      {
        v309 = "static const char *physx::shdfnd::ReflectionAllocator<physx::ConvexHull>::getName() [T = physx::ConvexHull]";
      }

      else
      {
        v309 = "<allocation names disabled>";
      }

      v125 = (*(v308[3] + 16))(v308 + 3, 56, v309, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullUtils.cpp", 473);
      *v125 = 0u;
      *(v125 + 32) = 0u;
      *(v125 + 16) = 0u;
      *(v125 + 48) = *(v261 + 48);
      physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::resize(v125, *(v261 + 8), &__src);
      physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::resize(v125 + 16, *(v261 + 24), &__src);
      physx::shdfnd::Array<physx::PxPlane,physx::shdfnd::ReflectionAllocator<physx::PxPlane>>::resize(v125 + 32, *(v261 + 40), &__src);
      memcpy(*v125, *v261, (12 * *(v261 + 8)));
      memcpy(*(v125 + 16), *(v261 + 16), (4 * *(v261 + 24)));
      memcpy(*(v125 + 32), *(v261 + 32), (16 * *(v261 + 40)));
      goto LABEL_346;
    }

    v546 = v125;
    if (!*(v125 + 40))
    {
      LOWORD(v312) = 0;
      v426 = 0;
      v427 = 0;
      v428 = 1;
      v430 = -1;
      goto LABEL_321;
    }

    v533 = v121;
    v310 = 0;
    v536 = 0;
    v311 = 0;
    v312 = 0;
    LODWORD(v313) = 0;
    v540 = v296;
    do
    {
      v314 = 0;
      v315 = v313;
      v316 = 255;
      v313 = 0xFFFFFFFFLL;
      v317 = 255;
      v318 = 255;
      LODWORD(v319) = v315;
      v320 = v315;
      v541 = v310;
      v542 = v312;
      v544 = v315;
      v539 = v315;
      do
      {
        v321 = v319;
        v319 = (v319 + 1);
        v322 = *(v261 + 16);
        if (v319 < *(v261 + 24) && v310 == *(v322 + 4 * v319 + 3))
        {
          v323 = v319;
        }

        else
        {
          v323 = v320;
          v313 = v319;
          LODWORD(v319) = v315;
        }

        v324 = (v322 + 4 * v321);
        v325 = *v324;
        v326 = v322 + 4 * v325;
        v327 = *(v324 + 2);
        v328 = &v595 + 3 * v327;
        v329 = *v328;
        v330 = v322 + 4 * v323;
        v333 = *(v330 + 2);
        v332 = (v330 + 2);
        v331 = v333;
        v334 = &v595 + 3 * v333;
        v335 = *v334;
        if (v329 == 1)
        {
          v599.i16[v321] = v311;
          v336 = &v581[4 * v311];
          v336[2] = v328[1];
          v336[3] = v312;
          if (v335 == 1)
          {
            if (v321 > v325)
            {
              v337 = v599.i16[v325];
              *v336 = v337;
              *&v581[4 * v337] = v311;
            }

            ++v311;
LABEL_266:
            v261 = v546;
            goto LABEL_307;
          }

          if (v321 <= v325)
          {
            if (v335)
            {
              v261 = v546;
              v371 = *(v546 + 32);
              v372 = (v371 + 16 * *(v324 + 3));
              v373 = (v371 + 16 * *(v326 + 3));
              v374 = *v372;
              v375 = v372[1];
              v376 = v372[2];
              v377 = *v373;
              v378 = v373[1];
              v379 = v373[2];
              v380 = *v296;
              v381 = v296[1];
              v382 = v296[2];
              v383.f32[0] = (v375 * v379) - (v378 * v376);
              v384 = ((*v373 * ((v381 * v376) - (v375 * v382))) + (*v372 * ((v378 * v382) - (v381 * v379)))) + (*v296 * v383.f32[0]);
              if (v384 == 0.0)
              {
                v391 = 0x3F80000000000000;
                v388 = 1065353216;
                v393 = 0;
                v394 = 1.0;
                v389 = 0.0;
                v392 = 0.0;
              }

              else
              {
                v385 = -v375;
                v386 = 1.0 / v384;
                v387.f32[0] = (v378 * v382) - (v379 * v381);
                v387.f32[1] = -((v377 * v382) - (v379 * v380));
                v388 = vmul_n_f32(v387, v386);
                v389 = ((v377 * v381) - (v380 * v378)) * v386;
                v390.f32[0] = -((v376 * -v381) + (v375 * v382));
                v390.f32[1] = (v374 * v382) - (v380 * v376);
                v391 = vmul_n_f32(v390, v386);
                v392 = -(((v374 * v381) - (v380 * v375)) * v386);
                v383.f32[1] = -((v374 * v379) - (v377 * v376));
                v393 = vmul_n_f32(v383, v386);
                v394 = ((v377 * v385) + (v374 * v378)) * v386;
              }

              v410 = v372[3];
              v411 = v373[3];
              v412 = v296[3];
              v413 = vneg_f32(vadd_f32(vadd_f32(vmul_n_f32(v388, v410), vmul_n_f32(v391, v411)), vmul_n_f32(v393, v412)));
              v414 = -(((v389 * v410) + (v392 * v411)) + (v394 * v412));
              *&v565 = v413;
              *(&v565 + 2) = v414;
              v415 = v567;
              if ((HIDWORD(v567) & 0x7FFFFFFFu) <= v567)
              {
                v417 = v294;
                v418 = v313;
                physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(&v566, &v565);
                v312 = v542;
                v320 = v544;
                v313 = v418;
                v261 = v546;
                v296 = v540;
                v310 = v541;
                v294 = v417;
              }

              else
              {
                v416 = (*&v566 + 12 * v567);
                *v416 = v413;
                v416[1].f32[0] = v414;
                LODWORD(v567) = v415 + 1;
              }

              v316 = v294++;
              goto LABEL_295;
            }

            v316 = v334[1];
            if (v316 == 255)
            {
              v398 = *v546 + 12 * v331;
              v399 = v567;
              if ((HIDWORD(v567) & 0x7FFFFFFFu) <= v567)
              {
                v424 = v294;
                v538 = v313;
                physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(&v566, v398);
                v313 = v538;
                v296 = v540;
                v310 = v541;
                v312 = v542;
                v294 = v424;
                v331 = *v332;
              }

              else
              {
                v400 = *&v566 + 12 * v567;
                *v400 = *v398;
                *(v400 + 8) = *(v398 + 8);
                LODWORD(v567) = v399 + 1;
              }

              v316 = v294;
              *(&v595 + 3 * v331 + 1) = v294++;
              v320 = v544;
            }
          }

          else
          {
            v345 = v599.i16[v325];
            *v336 = v345;
            v346 = &v581[4 * v345];
            *v346 = v311;
            v316 = v346[2];
          }

          v261 = v546;
LABEL_295:
          if (v317 == 255 || v317 == v316)
          {
            ++v311;
          }

          else
          {
            v419 = &v581[4 * (v311 + 1)];
            v419[2] = v316;
            v318 = (v311 + 1);
            v419[3] = v312;
            *v419 = 255;
            v311 += 2;
          }

          goto LABEL_307;
        }

        if (v335 != 1)
        {
          goto LABEL_266;
        }

        v261 = v546;
        if (v321 <= v325)
        {
          if (*v328)
          {
            v347 = *(v546 + 32);
            v348 = (v347 + 16 * *(v324 + 3));
            v349 = (v347 + 16 * *(v326 + 3));
            v350 = *v348;
            v351 = v348[1];
            v352 = v348[2];
            v353 = *v349;
            v354 = v349[1];
            v355 = v349[2];
            v356 = *v296;
            v357 = v296[1];
            v358 = v296[2];
            v359.f32[0] = (v351 * v355) - (v354 * v352);
            v360 = ((*v349 * ((v357 * v352) - (v351 * v358))) + (*v348 * ((v354 * v358) - (v357 * v355)))) + (*v296 * v359.f32[0]);
            if (v360 == 0.0)
            {
              v367 = 0x3F80000000000000;
              v364 = 1065353216;
              v369 = 0;
              v370 = 1.0;
              v365 = 0.0;
              v368 = 0.0;
            }

            else
            {
              v361 = -v351;
              v362 = 1.0 / v360;
              v363.f32[0] = (v354 * v358) - (v355 * v357);
              v363.f32[1] = -((v353 * v358) - (v355 * v356));
              v364 = vmul_n_f32(v363, v362);
              v365 = ((v353 * v357) - (v356 * v354)) * v362;
              v366.f32[0] = -((v352 * -v357) + (v351 * v358));
              v366.f32[1] = (v350 * v358) - (v356 * v352);
              v367 = vmul_n_f32(v366, v362);
              v368 = -(((v350 * v357) - (v356 * v351)) * v362);
              v359.f32[1] = -((v350 * v355) - (v353 * v352));
              v369 = vmul_n_f32(v359, v362);
              v370 = ((v353 * v361) + (v350 * v354)) * v362;
            }

            v401 = v348[3];
            v402 = v349[3];
            v403 = v296[3];
            v404 = vneg_f32(vadd_f32(vadd_f32(vmul_n_f32(v364, v401), vmul_n_f32(v367, v402)), vmul_n_f32(v369, v403)));
            v405 = -(((v365 * v401) + (v368 * v402)) + (v370 * v403));
            *&v565 = v404;
            *(&v565 + 2) = v405;
            v406 = v567;
            if ((HIDWORD(v567) & 0x7FFFFFFFu) <= v567)
            {
              v408 = v294;
              v409 = v313;
              physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(&v566, &v565);
              v312 = v542;
              v320 = v544;
              v315 = v539;
              v313 = v409;
              v296 = v540;
              v310 = v541;
              v294 = v408;
              v261 = v546;
            }

            else
            {
              v407 = (*&v566 + 12 * v567);
              *v407 = v404;
              v407[1].f32[0] = v405;
              LODWORD(v567) = v406 + 1;
            }

            v317 = v294++;
          }

          else
          {
            v317 = v328[1];
            if (v317 == 255)
            {
              v395 = *v546 + 12 * *(v324 + 2);
              v396 = v567;
              if ((HIDWORD(v567) & 0x7FFFFFFFu) <= v567)
              {
                v420 = v294;
                v537 = v313;
                physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(&v566, v395);
                v313 = v537;
                v296 = v540;
                v310 = v541;
                v312 = v542;
                v294 = v420;
                v261 = v546;
                v327 = *(v324 + 2);
              }

              else
              {
                v397 = *&v566 + 12 * v567;
                *v397 = *v395;
                *(v397 + 8) = *(v395 + 8);
                LODWORD(v567) = v396 + 1;
              }

              v317 = v294;
              *(&v595 + 3 * v327 + 1) = v294++;
              v320 = v544;
            }
          }
        }

        else
        {
          v338 = v599.i16[*v324];
          v339 = v599.i16[*v324] + 1;
          v340 = v581[4 * v599.i16[*v324] + 3];
          if (v339 >= v311 || v581[4 * v339 + 3] != v340)
          {
            if (v338 >= 1)
            {
              v341 = 1;
            }

            else
            {
              v341 = v599.i16[*v324];
            }

            v342 = v341 - 1;
            v343 = &v580[4 * v338];
            while (v338 >= 2)
            {
              v344 = *v343;
              v343 -= 4;
              --v338;
              if (v344 != v340)
              {
                goto LABEL_277;
              }
            }

            v338 = v342;
LABEL_277:
            v339 = v338;
          }

          v317 = v581[4 * v339 + 2];
        }

        if (v316 != 255 && v317 != v316)
        {
          v421 = &v581[4 * v311];
          v421[2] = v316;
          v318 = v311;
          v421[3] = v312;
          *v421 = 255;
          ++v311;
        }

        v422 = &v581[4 * v311];
        v422[2] = v317;
        v422[3] = v312;
        v599.i16[v321] = v311;
        if (v321 > *v324)
        {
          v423 = v599.i16[*v324];
          *v422 = v423;
          *&v581[4 * v423] = v311;
        }

        ++v311;
LABEL_307:
        v314 |= v329;
      }

      while (v319 != v315);
      if (v314)
      {
        *(&__src + v312) = *(*(v261 + 32) + 16 * v310);
        v312 = (v312 + 1);
      }

      v260 = "N5physx2Gu26SweepConvexMeshHitCallbackE" + 25;
      v120 = &re::introspect_BOOL(BOOL)::info;
      if (v318 != 255)
      {
        v425 = v568 + 4 * v536;
        *v425 = v318;
        v425[2] = v317;
        v425[3] = v316;
        ++v536;
      }

      ++v310;
    }

    while (v310 < *(v261 + 40));
    v426 = v311;
    v427 = v536;
    if (!v536)
    {
      v428 = 1;
      v430 = -1;
      v121 = v533;
      goto LABEL_321;
    }

    v428 = 0;
    v429 = v312 + 1;
    *(&__src + v312) = *v296;
    v430 = v536 - 1;
    v121 = v533;
    if (v536 != 1)
    {
      LOWORD(v312) = v312 + 1;
LABEL_321:
      v431 = 0;
      v432 = v427 - 2;
      v433 = 2;
      while (1)
      {
        v434 = *(v568 + 4 * v431 + 3);
        v435 = v431 + 1;
        v436 = v568 + 4 * v431 + 4;
        if (v434 != v436[2])
        {
          if (v431 + 2 >= v427)
          {
LABEL_344:
            v125 = 0;
            goto LABEL_345;
          }

          v437 = v568 + 4 * v433;
          v438 = v432;
          while (v434 != v437[2])
          {
            v437 += 4;
            if (!--v438)
            {
              goto LABEL_344;
            }
          }

          v439 = *v436;
          *v436 = *v437;
          *v437 = v439;
        }

        ++v433;
        --v432;
        v431 = v435;
        if (v435 == v430)
        {
          v429 = v312;
          break;
        }
      }
    }

    if (v294)
    {
      v440 = v294;
      v534 = v121;
      v441 = v120[428];
      if ((*(*v441 + 40))(v441))
      {
        v442 = "static const char *physx::shdfnd::ReflectionAllocator<physx::ConvexHull>::getName() [T = physx::ConvexHull]";
      }

      else
      {
        v442 = "<allocation names disabled>";
      }

      v125 = (*(v441[3] + 16))(v441 + 3, 56, v442, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullUtils.cpp", 787);
      v443 = *(v546 + 48);
      *v125 = 0u;
      *(v125 + 16) = 0u;
      *(v125 + 32) = 0u;
      *(v125 + 48) = v443;
      v444 = *(v546 + 8);
      if (v444)
      {
        v445 = 0;
        v446 = 0;
        v447 = 0;
        v448 = &v595;
        v449 = v427;
        v450 = v440;
        do
        {
          v451 = *v448;
          v448 = (v448 + 3);
          if (v451 == 1)
          {
            v452 = *v546 + v445;
            v453 = *(v125 + 8);
            if ((*(v125 + 12) & 0x7FFFFFFFu) <= v453)
            {
              physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(v125, v452);
              v450 = v440;
              v449 = v427;
            }

            else
            {
              v454 = *v125 + 12 * v453;
              *v454 = *v452;
              *(v454 + 8) = *(v452 + 8);
              *(v125 + 8) = v453 + 1;
            }

            ++v447;
            v444 = *(v546 + 8);
          }

          ++v446;
          v445 += 12;
        }

        while (v446 < v444);
      }

      else
      {
        v447 = 0;
        v449 = v427;
        v450 = v440;
      }

      _CF = v450 >= v447;
      v512 = v450 - v447;
      v121 = v534;
      v120 = &re::introspect_BOOL(BOOL)::info;
      v260 = "N5physx2Gu26SweepConvexMeshHitCallbackE" + 25;
      if (v512 != 0 && _CF)
      {
        v513 = 0;
        do
        {
          v514 = *&v566 + v513;
          v515 = *(v125 + 8);
          if ((*(v125 + 12) & 0x7FFFFFFFu) <= v515)
          {
            physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::growAndPushBack(v125, v514);
            v449 = v427;
          }

          else
          {
            v516 = *v125 + 12 * v515;
            *v516 = *v514;
            *(v516 + 8) = *(v514 + 8);
            *(v125 + 8) = v515 + 1;
          }

          v513 += 12;
          --v512;
        }

        while (v512);
      }

      v517 = v449;
      physx::shdfnd::Array<physx::ConvexHull::HalfEdge,physx::shdfnd::ReflectionAllocator<physx::ConvexHull::HalfEdge>>::resize(v125 + 16, v449 + v426, &v565);
      physx::shdfnd::Array<physx::PxPlane,physx::shdfnd::ReflectionAllocator<physx::PxPlane>>::resize(v125 + 32, v429, &v565);
      v518 = *(v125 + 16);
      if ((v428 & 1) == 0)
      {
        v519 = v426;
        v520 = v568 + 2;
        v521 = v517;
        do
        {
          v522 = &v518[4 * v519];
          v522[3] = v429 - 1;
          v523 = *(v520 - 1);
          *v522 = v523;
          *&v581[4 * v523] = v519;
          v524 = *v520;
          v520 += 4;
          v522[2] = v524;
          ++v519;
          --v521;
        }

        while (v521);
      }

      memcpy(v518, v581, (4 * v426));
      memcpy(*(v125 + 32), &__src, 16 * v429);
    }

    else
    {
      v125 = 0;
      v260 = "N5physx2Gu26SweepConvexMeshHitCallbackE" + 25;
    }

LABEL_345:
    v261 = v546;
LABEL_346:
    if ((v567 & 0x8000000000000000) == 0 && (v567 & 0x7FFFFFFF00000000) != 0 && *&v566 != 0)
    {
      (*(*(v120[428] + 24) + 24))();
    }

    if (!v125)
    {
      goto LABEL_447;
    }

    v456 = 0;
    LODWORD(v457) = 0;
    --v535;
    v458 = *(v125 + 24);
    v459 = 3;
    while (v458 != v456)
    {
      v460 = *(v125 + 16);
      v461 = v460 + v459;
      v462 = *(v460 + v459);
      if (*(v460 + 4 * v457 + 3) != v462)
      {
        LODWORD(v457) = v456;
      }

      v463 = v457;
      if (v456 + 1 < v458)
      {
        if (*(v461 + 4) == v462)
        {
          v463 = v456 + 1;
        }

        else
        {
          v463 = v457;
        }
      }

      v464 = *(v461 - 3);
      if (v464 != 255 && v464 != 0xFFFF)
      {
        v459 += 4;
        ++v456;
        if (*(v460 + 4 * v464 + 2) == *(v460 + 4 * v463 + 2))
        {
          continue;
        }
      }

      v467 = *(v125 + 32);
      goto LABEL_432;
    }

    if (v458)
    {
      v466 = 0;
      v460 = *(v125 + 16);
      v467 = *(v125 + 32);
      v468 = *v125;
      v469 = (v460 + 3);
      v470 = 1;
      while (1)
      {
        v471 = *v469;
        v472 = (v467 + 16 * *v469);
        v473 = &v468[12 * *(v469 - 1)];
        v474 = *v473;
        v475 = v473[1];
        v476 = *v472;
        v477 = v472[1];
        v478 = v473[2];
        v479 = v472[2];
        v480 = (((v475 * v477) + (*v473 * *v472)) + (v478 * v479)) + v472[3];
        if (v480 > v257 || v480 < v259)
        {
          break;
        }

        if (*(v460 + 4 * v457 + 3) == v471)
        {
          v457 = v457;
        }

        else
        {
          v457 = (v470 - 1);
        }

        v482 = v466 + 1;
        if (v466 + 1 >= v458 || (v483 = v470, v469[4] != v471))
        {
          v483 = v457;
        }

        v484 = v483 + 1;
        if (v484 >= v458 || *(v460 + 4 * v484 + 3) != v471)
        {
          v484 = v457;
        }

        if (v466 != v484)
        {
          v485 = &v468[12 * *(v460 + 4 * v483 + 2)];
          v486 = v485[1];
          v487 = *v485 - v474;
          v488 = v486 - v475;
          v489 = &v468[12 * *(v460 + 4 * v484 + 2)];
          v490 = *v489 - *v485;
          v491 = v485[2];
          v492 = v491 - v478;
          v493 = v489[1] - v486;
          v494 = v489[2] - v491;
          v495 = (v488 * v494) - (v492 * v493);
          v496 = (v492 * v490) - (v487 * v494);
          v497 = (v487 * v493) - (v488 * v490);
          v498 = sqrtf(((v496 * v496) + (v495 * v495)) + (v497 * v497));
          if (v498 == 0.0)
          {
            v499 = 1.0;
          }

          else
          {
            v499 = v495;
          }

          if (v498 == 0.0)
          {
            v496 = 0.0;
            v497 = 0.0;
          }

          if ((((v477 * ((1.0 / v498) * v496)) + (((1.0 / v498) * v499) * v476)) + (((1.0 / v498) * v497) * v479)) <= 0.0)
          {
            break;
          }
        }

        ++v470;
        v469 += 4;
        v466 = v482;
        if (v482 == v458)
        {
          goto LABEL_390;
        }
      }

LABEL_432:
      v525 = *(v125 + 44);
      if ((v525 & 0x80000000) == 0 && (v525 & 0x7FFFFFFF) != 0 && v467 != 0)
      {
LABEL_437:
        (*(*(v120[428] + 24) + 24))();
        v460 = *(v125 + 16);
      }

LABEL_438:
      v527 = *(v125 + 28);
      if ((v527 & 0x80000000) == 0 && (v527 & 0x7FFFFFFF) != 0 && v460)
      {
LABEL_441:
        (*(*(v120[428] + 24) + 24))();
      }

LABEL_442:
      v528 = *(v125 + 12);
      if ((v528 & 0x80000000) == 0 && (v528 & 0x7FFFFFFF) != 0 && *v125)
      {
        (*(*(v120[428] + 24) + 24))();
      }

      (*(*(v120[428] + 24) + 24))();
      goto LABEL_447;
    }

LABEL_390:
    v500 = v121[1];
    if (*(v125 + 8) > *(v500 + 74))
    {
      v530 = *(v125 + 44);
      if ((v530 & 0x80000000) == 0 && (v530 & 0x7FFFFFFF) != 0 && *(v125 + 32))
      {
        (*(*(v120[428] + 24) + 24))();
      }

      v531 = *(v125 + 28);
      if ((v531 & 0x80000000) == 0 && (v531 & 0x7FFFFFFF) != 0 && *(v125 + 16))
      {
        goto LABEL_441;
      }

      goto LABEL_442;
    }

    if (v458 && (*(v500 + 72) & 0x80) != 0)
    {
      v501 = 0;
      v502 = 0;
      v503 = 0;
      v504 = 0;
      v460 = *(v125 + 16);
      v505 = 3;
      do
      {
        v506 = *(v460 + 4 * v502 + 3);
        v507 = *(v460 + v505);
        if (v503 > v504)
        {
          v508 = v503 + 1;
        }

        else
        {
          v508 = v504;
        }

        if (v506 == v507)
        {
          ++v503;
        }

        else
        {
          v504 = v508;
          v503 = 0;
        }

        if (v506 != v507)
        {
          v502 = v501;
        }

        ++v501;
        v505 += 4;
      }

      while (v458 != v501);
      if (v504 >= 0x21)
      {
        v532 = *(v125 + 44);
        if ((v532 & 0x80000000) == 0 && (v532 & 0x7FFFFFFF) != 0 && *(v125 + 32))
        {
          goto LABEL_437;
        }

        goto LABEL_438;
      }
    }

    v509 = *(v261 + 44);
    if ((v509 & 0x80000000) == 0 && (v509 & 0x7FFFFFFF) != 0 && *(v261 + 32))
    {
      (*(*(v120[428] + 24) + 24))();
    }

    v510 = *(v261 + 28);
    if ((v510 & 0x80000000) == 0 && (v510 & 0x7FFFFFFF) != 0 && *(v261 + 16))
    {
      (*(*(v120[428] + 24) + 24))();
    }

    v511 = *(v261 + 12);
    if ((v511 & 0x80000000) == 0 && (v511 & 0x7FFFFFFF) != 0 && *v261)
    {
      (*(*(v120[428] + 24) + 24))();
    }

    (*(*(v120[428] + 24) + 24))();
  }

  while (v535);
LABEL_448:
  v121[8] = v125;
  if ((v564 & 0x8000000000000000) == 0 && (v564 & 0x7FFFFFFF00000000) != 0 && v563 != 0)
  {
    (*(*(v120[428] + 24) + 24))();
  }
}

void *physx::QuickHullConvexHullLib::fillConvexMeshDescFromQuickHull(void *a1, uint64_t a2)
{
  v4 = a1[7];
  v5 = *(v4 + 128);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *(v4 + 120);
    do
    {
      v11 = *(v10 + 8 * v6);
      if (!*(v11 + 60))
      {
        ++v8;
        v12 = *(v11 + 8);
        v7 += v12;
        if (v12 > *(*(v10 + 8 * v9) + 8))
        {
          v9 = v6;
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  v13 = *(v4 + 32);
  v14 = 12 * v13 + 12;
  v15 = 4 * v13;
  v16 = 22 * v8 + 4 * v7 + 4 * v13;
  if (v16 + v14)
  {
    v17 = v15;
    v18 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v16 + v14, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 2411);
    v15 = v17;
    v19 = v18;
    v20 = 4 * *(a1[7] + 32);
  }

  else
  {
    v19 = 0;
    v20 = v15;
  }

  v21 = v19 + (4 * v7);
  v22 = v21 + v14;
  v23 = (v22 + (20 * v8));
  a1[9] = v19;
  a1[10] = &v23[v15];
  result = memset(v23, 255, v20);
  if (v5)
  {
    v25 = 0;
    v26 = 0;
    v27 = *(a1[7] + 120);
    do
    {
      v28 = *(v27 + 8 * v25);
      if (!*(v28 + 15))
      {
        v29 = *v28;
        v30 = *(v29 + 12);
        if (*&v23[4 * v30] == -1)
        {
          v31 = v21 + 12 * v26;
          *v31 = *v29;
          *(v31 + 8) = *(v29 + 8);
          *&v23[4 * v30] = v26++;
        }

        for (i = *(v29 + 40); i != v29; i = *(i + 40))
        {
          v33 = *(i + 12);
          if (*&v23[4 * v33] == -1)
          {
            v34 = v21 + 12 * v26;
            *v34 = *i;
            *(v34 + 8) = *(i + 8);
            *&v23[4 * v33] = v26++;
          }
        }
      }

      ++v25;
    }

    while (v25 != v5);
  }

  else
  {
    v26 = 0;
  }

  *(a2 + 16) = v26;
  *(a2 + 8) = v21;
  *a2 = 12;
  *(a2 + 64) = v7;
  *(a2 + 56) = v19;
  *(a2 + 48) = 4;
  *(a2 + 40) = v8;
  *(a2 + 32) = v22;
  *(a2 + 24) = 20;
  if (v5)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    do
    {
      if (v36 == v9)
      {
        v38 = 0;
      }

      else
      {
        v38 = v36;
      }

      if (!v36)
      {
        v38 = v9;
      }

      v39 = *(*(a1[7] + 120) + 8 * v38);
      if (!*(v39 + 15))
      {
        v40 = *v39;
        *(v40 + 64) = -1;
        *(v19 + 4 * v37) = *&v23[4 * *(v40 + 12)];
        v41 = *(v40 + 40);
        if (v41 != v40)
        {
          v42 = v37 + 1;
          do
          {
            result = *&v23[4 * *(v41 + 12)];
            *(v19 + 4 * v42) = result;
            *(v41 + 64) = -1;
            v41 = *(v41 + 40);
            ++v42;
          }

          while (v41 != v40);
        }

        v43 = *(v39 + 8);
        v44 = -*(v39 + 13);
        v45 = *(v39 + 4);
        v46 = v22 + 20 * v35;
        *(v46 + 18) = v37;
        v37 += v45;
        *v46 = v39[3];
        *(v46 + 8) = v43;
        *(v46 + 12) = v44;
        *(v46 + 16) = v45;
        *(a1[10] + 2 * v35) = v38;
        *(v39 + 76) = v35++;
      }

      ++v36;
    }

    while (v36 != v5);
  }

  return result;
}

BOOL physx::QuickHullConvexHullLib::createEdgeList(physx::QuickHullConvexHullLib *this, unsigned int a2, const unsigned __int8 *a3, unsigned __int8 **a4, unsigned __int16 **a5, unsigned __int16 **a6)
{
  v6 = *(this + 8);
  if (!v6)
  {
    v13 = physx::shdfnd::ReflectionAllocator<unsigned char>::allocate(&v31, a2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 2319);
    v14 = 2 * a2;
    v15 = physx::shdfnd::ReflectionAllocator<unsigned short>::allocate(&v30, v14, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 2320);
    v16 = physx::shdfnd::ReflectionAllocator<unsigned short>::allocate(&v29, v14, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 2321);
    *a4 = v13;
    *a6 = v15;
    *a5 = v16;
    v17 = *(this + 7);
    if (*(v17 + 136))
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      do
      {
        v22 = *(*(v17 + 120) + 8 * *(*(this + 10) + 2 * v18));
        v23 = *v22;
        v24 = *v22;
        do
        {
          v25 = *(v24 + 64);
          if (v25 == -1)
          {
            v15[2 * v19] = a3[v21];
            if (*(v24 + 40) == v23)
            {
              v26 = v20;
            }

            else
            {
              v26 = v21 + 1;
            }

            v27 = (2 * v19) | 1;
            v15[v27] = a3[v26];
            v13[2 * v19] = *(*(v24 + 56) + 76);
            v13[v27] = *(*(*(*(v24 + 40) + 48) + 56) + 76);
            v16[v21++] = v19;
            *(v24 + 64) = v19;
            v24 = *(v24 + 40);
            *(*(*(v24 + 48) + 32) + 64) = v19++;
            v23 = *v22;
          }

          else
          {
            v16[v21] = v25;
            v24 = *(v24 + 40);
            ++v21;
          }
        }

        while (v24 != v23);
        ++v18;
        v17 = *(this + 7);
        v20 = v21;
      }

      while (v18 < *(v17 + 136));
    }
  }

  return v6 == 0;
}

uint64_t physx::QuickHullConvexHullLib::fillConvexMeshDesc(float32x2_t *a1, uint64_t a2)
{
  v4 = a1[8];
  if (v4)
  {
    v5 = *(*&v4 + 24);
    v6 = *(*&v4 + 40);
    v7 = *(*&v4 + 8);
    v8 = (4 * v5);
    v9 = v8 + 20 * v6 + 12 * v7;
    if (v9 == -12)
    {
      v10 = 0;
    }

    else
    {
      v10 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, (v9 + 12), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/QuickHullConvexHullLib.cpp", 2529);
      v4 = a1[8];
    }

    a1[9] = v10;
    v12 = v10 + v8;
    v13 = (v12 + (20 * v6));
    result = memcpy(v13, **&v4, (12 * v7));
    v14 = a1[8];
    v15 = *(*&v14 + 24);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = *(*&v14 + 32);
      do
      {
        if (v16 + 1 >= v15)
        {
          v19 = 1;
        }

        else
        {
          result = v16 - v15;
          v19 = 1;
          while (*(*(*&v14 + 16) + 4 * v16 + 3) == *(*(*&v14 + 16) + 4 * (v16 + v19) + 3))
          {
            ++v19;
            if (!(result + v19))
            {
              v19 = v15 - v16;
              break;
            }
          }
        }

        v20 = v17;
        v21 = v12 + 20 * v17;
        *(v21 + 16) = v19;
        *(v21 + 18) = v16;
        v22 = (v18 + 16 * v20);
        *v21 = *v22;
        *(v21 + 4) = v22[1];
        *(v21 + 8) = v22[2];
        *(v21 + 12) = v22[3];
        if (v19)
        {
          v23 = *(*&v14 + 16);
          do
          {
            *(v10 + 4 * v16) = *(v23 + 4 * v16 + 2);
            ++v16;
            --v19;
          }

          while (v19);
          v15 = *(*&v14 + 24);
        }

        v17 = v20 + 1;
      }

      while (v16 < v15);
    }

    *(a2 + 64) = v5;
    *(a2 + 48) = 4;
    *(a2 + 56) = v10;
    *(a2 + 16) = v7;
    *a2 = 12;
    *(a2 + 8) = v13;
    *(a2 + 40) = v6;
    *(a2 + 24) = 20;
    *(a2 + 32) = v12;
    if (v6 >= 2)
    {
      LODWORD(v24) = 0;
      v25 = (v8 + v10 + 36);
      for (i = 1; i != v6; ++i)
      {
        v27 = *v25;
        v25 += 10;
        if (*(v12 + 20 * v24 + 16) >= v27)
        {
          v24 = v24;
        }

        else
        {
          v24 = i;
        }
      }

      if (v24)
      {
        if (v5)
        {
          result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v5, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxcooking/src/convex/ConvexHullLib.cpp", 313);
        }

        else
        {
          result = 0;
        }

        a1[3] = result;
        v28 = *v12;
        v29 = *(v12 + 16);
        v30 = *(v12 + 18);
        v31 = v12 + 20 * v24;
        v45 = v29;
        v46 = *(v31 + 16);
        v32 = *(v31 + 18);
        *v12 = *v31;
        *(v12 + 16) = *(v31 + 16);
        *v31 = v28;
        *(v31 + 16) = v29;
        *(v31 + 18) = v30;
        if (*(a2 + 40))
        {
          v33 = 0;
          v34 = 0;
          v35 = (v8 + v10 + 18);
          __src = (v10 + 4 * v30);
          v36 = (v10 + 4 * v32);
          do
          {
            if (v33)
            {
              v37 = (*&a1[3] + 4 * v34);
              if (v24 == v33)
              {
                result = memcpy(v37, __src, 4 * v45);
                *(v12 + 20 * v24 + 18) = v34;
                v38 = v45;
              }

              else
              {
                result = memcpy(v37, (v10 + 4 * *v35), 4 * *(v35 - 1));
                *v35 = v34;
                v38 = *(v35 - 1);
              }
            }

            else
            {
              result = memcpy(*&a1[3], v36, 4 * v46);
              *(v12 + 18) = v34;
              v38 = v46;
            }

            v34 += v38;
            ++v33;
            v35 += 10;
          }

          while (v33 < *(a2 + 40));
        }

        *(a2 + 56) = a1[3];
      }
    }
  }

  else
  {
    result = physx::QuickHullConvexHullLib::fillConvexMeshDescFromQuickHull(a1, a2);
  }

  if ((*(*&a1[1] + 72) & 0x100) != 0)
  {
    v39 = *(a2 + 16);
    if (v39)
    {
      v40 = (*(a2 + 8) + 8);
      do
      {
        v41 = *v40 + a1[5].f32[0];
        *(v40 - 1) = vadd_f32(*(v40 - 2), a1[4]);
        *v40 = v41;
        v40 += 3;
        --v39;
      }

      while (v39);
    }

    v42 = *(a2 + 40);
    if (v42)
    {
      v43 = (*(a2 + 32) + 12);
      do
      {
        *v43 = *v43 - (((*(v43 - 2) * a1[4].f32[1]) + (*(v43 - 3) * a1[4].f32[0])) + (*(v43 - 1) * a1[5].f32[0]));
        v43 += 5;
        --v42;
      }

      while (v42);
    }
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::resize(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::PxVec3,physx::shdfnd::ReflectionAllocator<physx::PxVec3>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = *v5 + 12 * a2;
    v8 = *v5 + 12 * v6;
    v9 = *a3;
    v10 = *(a3 + 2);
    do
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      v8 += 12;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = a2;
  return result;
}

BOOL TestDuplicateTriangles(unsigned int *a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = 1;
  if (a2)
  {
    v5 = *a1;
    if (v5)
    {
      MEMORY[0x1EEE9AC00](a1);
      v9 = &v20 - ((v8 + 15) & 0x1FFFFFFFF0);
      bzero(v9, v8);
      v10 = v9 + 8;
      v11 = (a2 + 8);
      v12 = v5;
      do
      {
        *(v10 - 1) = *(v11 - 1);
        v13 = *v11;
        v11 += 3;
        *v10 = v13;
        v10 += 3;
        --v12;
      }

      while (v12);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v24 = v9;
      v23 = v5;
      physx::ReducedVertexCloud::Reduce(&v23, &v21);
      v14 = v22;
      v3 = v22 >= *a1;
      if (v22 < *a1)
      {
        if (a3)
        {
          *a1 = v22;
          if (v14)
          {
            v15 = 0;
            v16 = (a2 + 8);
            v17 = (v21 + 8);
            do
            {
              *(v16 - 2) = *(v17 - 2);
              *(v16 - 1) = *(v17 - 1);
              v18 = *v17;
              v17 += 3;
              *v16 = v18;
              v16 += 3;
              ++v15;
            }

            while (v15 < *a1);
          }
        }
      }

      physx::ReducedVertexCloud::Clean(&v23);
    }
  }

  return v3;
}