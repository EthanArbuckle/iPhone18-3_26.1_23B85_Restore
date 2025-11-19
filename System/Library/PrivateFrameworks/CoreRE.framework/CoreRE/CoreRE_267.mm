uint64_t physx::Gu::generateOrProcessContactsBoxConvex(uint64_t a1, uint64_t a2, uint64_t a3, int32x4_t *a4, float32x4_t *a5, int a6, uint64_t a7, uint64_t a8, float32x2_t a9, float32x2_t a10, double a11, float32x4_t *a12, unsigned int a13, char a14)
{
  v143 = *MEMORY[0x1E69E9840];
  v119 = a10;
  if (!a6)
  {
    return 0;
  }

  v20 = *(a8 + 64);
  if (*(a8 + 64))
  {
    v21 = *(a8 + 80);
    v22 = v21[2];
    if (v20 != 1)
    {
      v23 = v20 - 1;
      v24 = v21 + 5;
      do
      {
        v25 = *v24;
        v24 += 3;
        v22 = vaddq_f32(v22, v25);
        --v23;
      }

      while (v23);
    }

    v22.i32[3] = 0;
    v26 = vmulq_f32(v22, v22);
    v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
    v27 = vpadd_f32(*v26.f32, *v26.f32);
    v28 = vrsqrte_f32(v27);
    v29 = 4;
    do
    {
      v28 = vmul_f32(v28, vrsqrts_f32(vmul_f32(v28, v28), v27));
      --v29;
    }

    while (v29);
    v30 = vbsl_s8(vdup_lane_s32(vceqz_f32(v27), 0), v27, vmul_f32(v27, v28));
    v31 = vrecpe_f32(v30);
    v32 = 4;
    do
    {
      v31 = vmul_f32(v31, vrecps_f32(v30, v31));
      --v32;
    }

    while (v32);
    v33 = vmulq_n_f32(v22, v31.f32[0]);
    v33.i32[3] = 0;
  }

  else
  {
    v33 = 0uLL;
  }

  v118 = v33;
  v35 = physx::Gu::addGJKEPAContacts(a1, a2, a5, a6, a12, a7, a8, vmul_f32(a9, vdup_n_s32(0x3D4CCCCDu)));
  v36 = *(a7 + 32);
  if ((v35 & 1) == 0 && ((v37 = vmulq_f32(v118, v36), v37.i64[0] = vpaddq_f32(v37, v37).u64[0], vpadd_f32(*v37.f32, *v37.f32).f32[0] >= 0.70711) ? (v38 = *(a8 + 64) >= a13) : (v38 = 0), v38))
  {
    v39 = vaddq_f32(v118, v36);
    v40 = *a4;
    v40.i32[3] = 0;
    v41 = vdupq_laneq_s32(*a4, 3).u64[0];
    v42 = vmulq_n_f32(v39, vmla_f32(0xBF000000BF000000, v41, v41).f32[0]);
    v42.i32[3] = 0;
    v43 = vextq_s8(v40, v40, 8uLL).u64[0];
    v44 = vmls_f32(vmul_f32(*&vextq_s8(v39, v39, 4uLL), *a4->i8), vext_s8(*a4->i8, v43, 4uLL), *v39.f32);
    *v45.f32 = vext_s8(v44, vmls_f32(vmul_f32(*v39.f32, v43), *a4->i8, *&vextq_s8(v39, v39, 8uLL)), 4uLL);
    v45.i64[1] = v44.u32[0];
    v46 = vmlaq_laneq_f32(v42, v45, *a4, 3);
    v46.i64[1] = vextq_s8(v46, v46, 8uLL).u32[0];
    v47 = vmulq_f32(v39, v40);
    v47.i64[0] = vpaddq_f32(v47, v47).u64[0];
    v48 = vmlaq_n_f32(v46, v40, vpadd_f32(*v47.f32, *v47.f32).f32[0]);
    v49 = vaddq_f32(v48, v48);
    v49.i32[3] = 0;
    v50 = vmulq_f32(v49, v49);
    v50.i64[0] = vpaddq_f32(v50, v50).u64[0];
    v51 = vpadd_f32(*v50.f32, *v50.f32);
    v52 = vrsqrte_f32(v51);
    v53 = 4;
    do
    {
      v52 = vmul_f32(v52, vrsqrts_f32(vmul_f32(v52, v52), v51));
      --v53;
    }

    while (v53);
    v54 = vbsl_s8(vdup_lane_s32(vceqz_f32(v51), 0), v51, vmul_f32(v51, v52));
    v55 = vrecpe_f32(v54);
    v56 = 4;
    do
    {
      v55 = vmul_f32(v55, vrecps_f32(v54, v55));
      --v56;
    }

    while (v56);
    v57 = vmulq_n_f32(v49, v55.f32[0]);
    v57.i32[3] = 0;
    v124 = v57;
    physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(a8, a12, &v124, a4, &v119);
    return 1;
  }

  else
  {
    v58 = *(a1 + 8);
    v59 = *(a2 + 8);
    v60 = *(v58 + 48);
    v126 = *(v58 + 48);
    v127 = DWORD2(v60);
    physx::Gu::PolygonalBox::PolygonalBox(&v124, &v126);
    v128 = 0;
    v129 = 0;
    v130 = 0x600000008;
    v131 = 0;
    v132 = &v125;
    v133 = &v124.i8[8];
    v135 = 0u;
    v136 = 0u;
    v134 = &physx::Gu::gPCMBoxPolygonData;
    physx::Gu::getPCMConvexData(v59, a14, v123);
    v122[0] = xmmword_1E3047670;
    v122[1] = xmmword_1E3047680;
    v122[2] = xmmword_1E30476A0;
    v140[4] = a3;
    v140[5] = v122;
    v140[6] = v122;
    v141 = 1;
    v140[0] = &unk_1F5D21690;
    v142 = v58;
    if (a14)
    {
      v61 = 1;
      v62 = &unk_1F5D216F0;
    }

    else
    {
      v61 = 0;
      v62 = &unk_1F5D21740;
    }

    v137[5] = v59 + 3;
    v137[6] = v59 + 6;
    v138 = v61;
    v137[4] = a4;
    v137[0] = v62;
    v139 = v59;
    v121 = 0;
    v34 = physx::Gu::generateFullContactManifold(&v128, v123, v140, v137, a12, &v121, &v119, (a7 + 32), *(v58 + 16), v59[1].f32[0], *&a11, a7, (a7 + 16), v35);
    if (v34)
    {
      if (v121)
      {
        physx::Gu::PersistentContactManifold::addBatchManifoldContacts(a8, a12, v121, a11);
        v63 = *(a8 + 80);
        v64 = *(v63 + 32);
        v65 = *(a8 + 64);
        v66 = v64;
        if (v65 >= 2)
        {
          v67 = v65 - 1;
          v68 = (v63 + 80);
          v66 = v64;
          do
          {
            v69 = *v68;
            v68 += 3;
            v66 = vaddq_f32(v66, v69);
            --v67;
          }

          while (v67);
        }

        v66.i32[3] = 0;
        v70 = vmulq_f32(v66, v66);
        v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
        v64.i32[3] = 0;
        v71 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v70.f32, *v70.f32), 0x3400000034000000), 0)), 0x1FuLL)), v66, v64);
        v72 = *a4;
        v72.i32[3] = 0;
        v73 = vdupq_laneq_s32(*a4, 3).u64[0];
        v74 = vmulq_n_f32(v71, vmla_f32(0xBF000000BF000000, v73, v73).f32[0]);
        v74.i32[3] = 0;
        v75 = vextq_s8(v72, v72, 8uLL).u64[0];
        v76 = vextq_s8(v71, v71, 8uLL).u64[0];
        v77 = vmls_f32(vmul_f32(*a4->i8, vext_s8(*v71.f32, v76, 4uLL)), vext_s8(*a4->i8, v75, 4uLL), *v71.f32);
        *v78.f32 = vext_s8(v77, vmls_f32(vmul_f32(v75, *v71.f32), *a4->i8, v76), 4uLL);
        v78.i64[1] = v77.u32[0];
        v79 = vmlaq_laneq_f32(v74, v78, *a4, 3);
        v79.i64[1] = vextq_s8(v79, v79, 8uLL).u32[0];
        v80 = vmulq_f32(v72, v71);
        v80.i64[0] = vpaddq_f32(v80, v80).u64[0];
        v81 = vmlaq_n_f32(v79, v72, vpadd_f32(*v80.f32, *v80.f32).f32[0]);
        v82 = vaddq_f32(v81, v81);
        v82.i32[3] = 0;
        v83 = vmulq_f32(v82, v82);
        v83.i64[0] = vpaddq_f32(v83, v83).u64[0];
        v84 = vpadd_f32(*v83.f32, *v83.f32);
        v85 = vrsqrte_f32(v84);
        v86 = 4;
        do
        {
          v85 = vmul_f32(v85, vrsqrts_f32(vmul_f32(v85, v85), v84));
          --v86;
        }

        while (v86);
        v87 = vbsl_s8(vdup_lane_s32(vceqz_f32(v84), 0), v84, vmul_f32(v84, v85));
        v88 = vrecpe_f32(v87);
        v89 = 4;
        do
        {
          v88 = vmul_f32(v88, vrecps_f32(v87, v88));
          --v89;
        }

        while (v89);
LABEL_45:
        v115 = vmulq_n_f32(v82, v88.f32[0]);
        v115.i32[3] = 0;
        v120 = v115;
        physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(a8, a12, &v120, a4, &v119);
        return v34;
      }

      if ((v35 & 1) == 0)
      {
        v90 = *(a8 + 80);
        v91 = *(v90 + 32);
        v92 = *(a8 + 64);
        v93 = v91;
        if (v92 >= 2)
        {
          v94 = v92 - 1;
          v95 = (v90 + 80);
          v93 = v91;
          do
          {
            v96 = *v95;
            v95 += 3;
            v93 = vaddq_f32(v93, v96);
            --v94;
          }

          while (v94);
        }

        v93.i32[3] = 0;
        v97 = vmulq_f32(v93, v93);
        v97.i64[0] = vpaddq_f32(v97, v97).u64[0];
        v91.i32[3] = 0;
        v98 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v97.f32, *v97.f32), 0x3400000034000000), 0)), 0x1FuLL)), v93, v91);
        v99 = *a4;
        v99.i32[3] = 0;
        v100 = vdupq_laneq_s32(*a4, 3).u64[0];
        v101 = vmulq_n_f32(v98, vmla_f32(0xBF000000BF000000, v100, v100).f32[0]);
        v101.i32[3] = 0;
        v102 = vextq_s8(v99, v99, 8uLL).u64[0];
        v103 = vextq_s8(v98, v98, 8uLL).u64[0];
        v104 = vmls_f32(vmul_f32(*a4->i8, vext_s8(*v98.f32, v103, 4uLL)), vext_s8(*a4->i8, v102, 4uLL), *v98.f32);
        *v105.f32 = vext_s8(v104, vmls_f32(vmul_f32(v102, *v98.f32), *a4->i8, v103), 4uLL);
        v105.i64[1] = v104.u32[0];
        v106 = vmlaq_laneq_f32(v101, v105, *a4, 3);
        v106.i64[1] = vextq_s8(v106, v106, 8uLL).u32[0];
        v107 = vmulq_f32(v99, v98);
        v107.i64[0] = vpaddq_f32(v107, v107).u64[0];
        v108 = vmlaq_n_f32(v106, v99, vpadd_f32(*v107.f32, *v107.f32).f32[0]);
        v82 = vaddq_f32(v108, v108);
        v82.i32[3] = 0;
        v109 = vmulq_f32(v82, v82);
        v109.i64[0] = vpaddq_f32(v109, v109).u64[0];
        v110 = vpadd_f32(*v109.f32, *v109.f32);
        v111 = vrsqrte_f32(v110);
        v112 = 4;
        do
        {
          v111 = vmul_f32(v111, vrsqrts_f32(vmul_f32(v111, v111), v110));
          --v112;
        }

        while (v112);
        v113 = vbsl_s8(vdup_lane_s32(vceqz_f32(v110), 0), v110, vmul_f32(v110, v111));
        v88 = vrecpe_f32(v113);
        v114 = 4;
        do
        {
          v88 = vmul_f32(v88, vrecps_f32(v113, v88));
          --v114;
        }

        while (v114);
        goto LABEL_45;
      }
    }
  }

  return v34;
}

uint64_t physx::Gu::TriangleMesh::getTriangleMaterialIndex(physx::Gu::TriangleMesh *this, unsigned int a2)
{
  v2 = *(this + 12);
  if (v2)
  {
    return *(v2 + 2 * a2);
  }

  else
  {
    return 0xFFFFLL;
  }
}

float32x2_t physx::Gu::TriangleMesh::getLocalBounds@<D0>(physx::Gu::TriangleMesh *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 56);
  v3 = vextq_s8(v2, v2, 8uLL);
  v4 = vextq_s8(v2, v3, 0xCuLL);
  v5 = vaddq_f32(v2, v4);
  *(v4.i64 + 4) = *(this + 9);
  v6 = vsubq_f32(v2, v4);
  v6.i32[3] = v5.i32[3];
  result = vadd_f32(vext_s8(*v2.f32, *v3.i8, 4uLL), *(this + 72));
  *a2 = v6;
  *(a2 + 16) = result;
  return result;
}

void physx::Gu::BV4TriangleMesh::~BV4TriangleMesh(physx::Gu::BV4TriangleMesh *this)
{
  physx::Gu::BV4TriangleMesh::~BV4TriangleMesh(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

{
  *this = &unk_1F5D228D0;
  *(this + 2) = &unk_1F5D22990;
  v2 = physx::Gu::BV4Tree::release((this + 208));
  if (*(this + 22))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(v2);
  }

  *(this + 22) = 0;

  physx::Gu::TriangleMesh::~TriangleMesh(this);
}

void non-virtual thunk tophysx::Gu::BV4TriangleMesh::~BV4TriangleMesh(physx::Gu::BV4TriangleMesh *this)
{
  physx::Gu::BV4TriangleMesh::~BV4TriangleMesh((this - 16));
}

{
  physx::Gu::BV4TriangleMesh::~BV4TriangleMesh((this - 16));
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

void physx::Gu::RTreeTriangleMesh::~RTreeTriangleMesh(physx::Gu::RTreeTriangleMesh *this)
{
  *this = &unk_1F5D229B8;
  *(this + 2) = &unk_1F5D22A78;
  physx::Gu::RTree::~RTree((this + 160));

  physx::Gu::TriangleMesh::~TriangleMesh(this);
}

{
  *this = &unk_1F5D229B8;
  *(this + 2) = &unk_1F5D22A78;
  physx::Gu::RTree::~RTree((this + 160));
  physx::Gu::TriangleMesh::~TriangleMesh(this);
  v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v2();
}

void non-virtual thunk tophysx::Gu::RTreeTriangleMesh::~RTreeTriangleMesh(physx::Gu::RTreeTriangleMesh *this)
{
  v1 = (this - 16);
  *(this - 2) = &unk_1F5D229B8;
  *this = &unk_1F5D22A78;
  physx::Gu::RTree::~RTree((this + 144));

  physx::Gu::TriangleMesh::~TriangleMesh(v1);
}

{
  v1 = (this - 16);
  *(this - 2) = &unk_1F5D229B8;
  *this = &unk_1F5D22A78;
  physx::Gu::RTree::~RTree((this + 144));
  physx::Gu::TriangleMesh::~TriangleMesh(v1);
  v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v2();
}

uint64_t physx::Gu::unsupportedCapsuleSweepMidphase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, vars0);
  }

  return 0;
}

uint64_t physx::Gu::unsupportedBoxSweepMidphase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, vars0);
  }

  return 0;
}

uint64_t physx::Gu::unsupportedConvexSweepMidphase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((physx::Gu::Midphase::outputError(void)::reportOnlyOnce & 1) == 0)
  {
    physx::Gu::Midphase::outputError(void)::reportOnlyOnce = 1;
    return physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuMidphaseInterface.h", 175, "BV4 midphase only supported on Intel platforms.", a6, a7, a8, a9);
  }

  return result;
}

uint64_t _BuildBV32(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4, __n128 a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = (a2 + 1288);
  memset(v42, 0, sizeof(v42));
  v8 = 31;
  result = fillInNodes(a3, 0, 0x1Fu, v42, (a2 + 1288));
  v10 = 0;
  do
  {
    v11 = v10;
    if (v8 <= v10 + 1)
    {
      ++v10;
    }

    else
    {
      v10 = v8;
    }

    while (*(v42 + v11))
    {
      if (++v11 >= v8)
      {
        goto LABEL_13;
      }
    }

    if (v8 > v11)
    {
      while (!*(v42 + v8))
      {
        if (--v8 <= v11)
        {
          goto LABEL_16;
        }
      }
    }

    v10 = v11;
LABEL_13:
    if (v10 != v8)
    {
      v12 = *(v42 + v8);
      *(v42 + v8) = *(v42 + v10);
      *(v42 + v10) = v12;
    }
  }

  while (v10 < v8);
LABEL_16:
  *a4 += *v7;
  v13 = *v7;
  v14 = a5.n128_f32[0];
  if (v13)
  {
    v15 = 0;
    v16 = a2 + 8;
    v17 = vdup_lane_s32(a5.n128_u64[0], 0);
    __asm { FMOV            V11.2S, #-1.0 }

    do
    {
      v23 = *(v42 + v15);
      if (v23)
      {
        if (*(v23 + 24))
        {
          v24 = (*(v23 + 8) + *(v23 + 20)) * 0.5;
          v25 = (v16 + 40 * v15);
          *v25 = vmul_f32(vadd_f32(*v23, *(v23 + 12)), 0x3F0000003F000000);
          v25[1].f32[0] = v24;
          v26 = vmul_f32(vsub_f32(*(v23 + 12), *v23), 0x3F0000003F000000);
          v27 = (*(v23 + 20) - *(v23 + 8)) * 0.5;
          v25[2] = v26;
          v25[3].f32[0] = v27;
          if (v14 != 0.0)
          {
            v25[2] = vadd_f32(v26, v17);
            v25[3].f32[0] = v27 + v14;
          }

          v28 = physx::shdfnd::Foundation::mInstance;
          if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
          {
            v29 = "static const char *physx::shdfnd::ReflectionAllocator<BV32Node>::getName() [T = BV32Node]";
          }

          else
          {
            v29 = "<allocation names disabled>";
          }

          v30 = (*(*(v28 + 24) + 16))(v28 + 24, 1296, v29, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV32Build.cpp", 147);
          for (i = 0; i != 1280; i += 40)
          {
            v32 = v30 + i;
            *(v32 + 40) = 0xFFFFFFFFLL;
            *(v32 + 8) = 0u;
            *(v32 + 24) = _D11;
            *(v32 + 32) = -1082130432;
          }

          *(v30 + 1288) = 0;
          v25[4] = v30;
          result = _BuildBV32(a1, a5);
          v14 = a5.n128_f32[0];
          v13 = *v7;
        }

        else
        {
          v33 = *(v23 + 40);
          v34 = *a1;
          v35 = *(v23 + 32);
          v36 = (*(v23 + 8) + *(v23 + 20)) * 0.5;
          v37 = (v16 + 40 * v15);
          *v37 = vmul_f32(vadd_f32(*v23, *(v23 + 12)), 0x3F0000003F000000);
          v37[1].f32[0] = v36;
          v38 = vmul_f32(vsub_f32(*(v23 + 12), *v23), 0x3F0000003F000000);
          v39 = (*(v23 + 20) - *(v23 + 8)) * 0.5;
          v37[2] = v38;
          v37[3].f32[0] = v39;
          if (v14 != 0.0)
          {
            v37[2] = vadd_f32(v38, v17);
            v37[3].f32[0] = v39 + v14;
          }

          v37[4] = ((2 * (v33 & 0x8000003F | ((((v35 - v34) >> 2) & 0x1FFFFFF) << 6))) | 1);
        }
      }

      ++v15;
    }

    while (v15 < v13);
  }

  return result;
}

uint64_t BuildBV32Internal(physx::Gu::BV32Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float)::Local::_Flatten(uint64_t a1, unsigned int a2, int *a3, uint64_t a4, unsigned int *a5, unsigned int *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = *a6 + 1;
  *a6 = v11;
  if (v11 > *a5)
  {
    *a5 = v11;
  }

  v12 = *(a4 + 1288);
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = a4 + 24;
  v14 = a2;
  v15 = *(a4 + 1288);
  do
  {
    v16 = a1 + 40 * v14;
    *v16 = *(v13 - 16);
    *(v16 + 8) = *(v13 - 8);
    *(v16 + 16) = *v13;
    *(v16 + 24) = *(v13 + 8);
    *(v16 + 32) = *(v13 + 16);
    ++v14;
    v13 += 40;
    --v15;
  }

  while (v15);
  v17 = 0;
  v18 = 0;
  *&v19 = -1;
  *(&v19 + 1) = -1;
  v33[6] = v19;
  v33[7] = v19;
  v33[4] = v19;
  v33[5] = v19;
  v33[2] = v19;
  v33[3] = v19;
  v33[0] = v19;
  v33[1] = v19;
  v20 = 40;
  v21 = 40 * a2 + 32;
  memset(v32, 0, sizeof(v32));
  do
  {
    v22 = *(a4 + v20);
    if ((v22 & 1) == 0)
    {
      v23 = *a3;
      *a3 += *(v22 + 1288);
      *(a1 + v21) = ((v23 << 11) + 2 * *(v22 + 1288));
      *(v33 + v18) = v23;
      *(v32 + v18++) = v22;
      v12 = *(a4 + 1288);
    }

    ++v17;
    v21 += 40;
    v20 += 40;
  }

  while (v17 < v12);
  if (!v18)
  {
    goto LABEL_14;
  }

  v24 = v18;
  v25 = v32;
  v26 = v33;
  do
  {
    v28 = *v26++;
    v27 = v28;
    v29 = *v25++;
    result = BuildBV32Internal(physx::Gu::BV32Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float)::Local::_Flatten(a1, v27, a3, v29, a5, a6);
    --*a6;
    --v24;
  }

  while (v24);
  if (a4)
  {
LABEL_14:
    v31 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    return v31();
  }

  return result;
}

uint64_t fillInNodes(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  v7 = a3;
  if (a2 + 1 == a3)
  {
LABEL_7:
    v10 = *(result + 24);
    if (v10)
    {
      result = v10 + 48;
    }

    else
    {
      result = 0;
    }

    *(a4 + 8 * a2) = v10;
    v11 = 2;
  }

  else
  {
    while (1)
    {
      v8 = *(result + 24);
      v9 = a2 + ((v7 - a2) >> 1);
      if (*(v8 + 24))
      {
        fillInNodes(*(result + 24));
      }

      else
      {
        *(a4 + 8 * a2) = v8;
        ++*a5;
      }

      result = v8 + 48;
      a2 = v9 + 1;
      if (!*(v8 + 72))
      {
        break;
      }

      if (v9 + 2 == v7)
      {
        goto LABEL_7;
      }
    }

    v11 = 1;
    v7 = v9 + 1;
  }

  *(a4 + 8 * v7) = result;
  *a5 += v11;
  return result;
}

float32x4_t *physx::Gu::getIncidentPolygon(float32x4_t *result, int8x16_t *a2, float32x4_t *a3, float32x4_t a4, float32x4_t a5)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = a3[2];
  v8 = vmulq_f32(*a3, a4);
  v8.i64[0] = vpaddq_f32(v8, v8).u64[0];
  v9 = vpadd_f32(*v8.f32, *v8.f32);
  v10 = vmulq_f32(v5, a4);
  v10.i64[0] = vpaddq_f32(v10, v10).u64[0];
  v11 = vpadd_f32(*v10.f32, *v10.f32);
  v12 = vmulq_f32(v7, a4);
  v12.i64[0] = vpaddq_f32(v12, v12).u64[0];
  v13 = vpadd_f32(*v12.f32, *v12.f32);
  v14 = vabs_f32(v13);
  if (vcage_f32(v9, v11).u8[0] & 1) != 0 && (vcge_f32(vabs_f32(v9), v14).u8[0])
  {
    v15 = vdup_lane_s32(*a5.f32, 0);
    v16 = vcgtz_f32(v9);
    v17 = vnegq_f32(v6);
    v17.i32[3] = 0;
    v18 = vmulq_n_f32(v6, *vbsl_s8(v16, vneg_f32(v15), v15).i32);
    v18.i32[3] = 0;
    v19 = vmulq_lane_f32(v5, *a5.f32, 1);
    v19.i32[3] = 0;
    v20 = vmulq_laneq_f32(v7, a5, 2);
    v20.i32[3] = 0;
    *a2 = vbslq_s8(vmovl_s16(vdup_lane_s16(v16, 0)), v17, v6);
    v21 = vaddq_f32(v18, a3[3]);
    v22 = vaddq_f32(v19, v20);
    v23 = vsubq_f32(v19, v20);
    *result = vaddq_f32(v22, v21);
    result[1] = vaddq_f32(v23, v21);
    result[2] = vsubq_f32(v21, v22);
    v24 = vsubq_f32(v21, v23);
  }

  else
  {
    v25 = vcge_f32(vabs_f32(v11), v14).u8[0];
    v26 = vmulq_n_f32(v6, a5.f32[0]);
    v26.i32[3] = 0;
    if (v25)
    {
      v27 = vdup_lane_s32(*a5.f32, 1);
      v28 = vcgtz_f32(v11);
      v29 = vnegq_f32(v5);
      v29.i32[3] = 0;
      v30 = vbslq_s8(vmovl_s16(vdup_lane_s16(v28, 0)), v29, v5);
      v31 = vmulq_n_f32(v5, *vbsl_s8(v28, vneg_f32(v27), v27).i32);
      v31.i32[3] = 0;
      v32 = vmulq_laneq_f32(v7, a5, 2);
      v32.i32[3] = 0;
      *a2 = v30;
      v33 = vaddq_f32(v31, a3[3]);
    }

    else
    {
      v34 = vdup_laneq_s32(a5, 2);
      v35 = vcgtz_f32(v13);
      v36 = vnegq_f32(v7);
      v36.i32[3] = 0;
      v37 = vbslq_s8(vmovl_s16(vdup_lane_s16(v35, 0)), v36, v7);
      v32 = vmulq_lane_f32(v5, *a5.f32, 1);
      v32.i32[3] = 0;
      v38 = vmulq_n_f32(v7, *vbsl_s8(v35, vneg_f32(v34), v34).i32);
      v38.i32[3] = 0;
      *a2 = v37;
      v33 = vaddq_f32(v38, a3[3]);
    }

    v39 = vaddq_f32(v26, v32);
    v40 = vsubq_f32(v26, v32);
    *result = vaddq_f32(v39, v33);
    result[1] = vaddq_f32(v40, v33);
    result[2] = vsubq_f32(v33, v39);
    v24 = vsubq_f32(v33, v40);
  }

  result[3] = v24;
  return result;
}

int8x8_t *physx::Gu::calculateContacts(int8x8_t *result, int8x8_t *a2, float32x4_t *a3, int32x4_t *a4, float32x4_t *a5, uint64_t a6, _DWORD *a7, float32x2_t *a8, double a9, double a10, double a11, double a12, float32x4_t a13, double a14, float32x4_t a15)
{
  v16 = 0;
  v17 = *result;
  v18 = *a2;
  *v19.f32 = vext_s8(*result, *a2, 4uLL);
  v19.i64[1] = 2139095039;
  v20 = xmmword_1E31137A0;
  v21 = xmmword_1E3116F50;
  *a15.f32 = *a8;
  do
  {
    v22 = a3[v16];
    v23 = vneg_f32(vdup_laneq_s32(v22, 2));
    if (vmvn_s8(vcgt_f32(*a15.f32, v23)).u8[0])
    {
      v170[v16 + 4] = 0;
LABEL_5:
      v170[v16] = 0;
      goto LABEL_6;
    }

    v170[v16 + 4] = 1;
    v15 = vcgeq_f32(v19, vabsq_f32(v22));
    if (vuzp1_s8(vmovn_s32(v15), 2139095039).u32[0] != -1)
    {
      goto LABEL_5;
    }

    v170[v16] = 1;
    v24 = v22;
    v24.i32[2] = 0;
    *(a6 + 48 * *a7) = v24;
    *(a6 + 48 * *a7 + 16) = a3[v16];
    a15 = *a5;
    a15.i32[3] = v23.i32[1];
    v25 = (*a7)++;
    *(a6 + 48 * v25 + 32) = a15;
    *a15.f32 = *a8;
LABEL_6:
    v20 = vminq_f32(v20, v22);
    v21 = vmaxq_f32(v21, v22);
    ++v16;
  }

  while (v16 != 4);
  if (*a7 != 4)
  {
    v26 = vdup_laneq_s32(*a4, 2);
    *a13.f32 = vneg_f32(v18);
    v27 = *result;
    *v15.f32 = vext_s8(*result, *a2, 4uLL);
    v28 = vorrq_s8(vcgtq_f32(v20, v15), vcgtq_f32(v15, v21)).u64[0];
    v29 = vorrq_s8(vdupq_lane_s32(v28, 0), vdupq_lane_s32(v28, 1));
    v30.i64[0] = -1;
    v30.i64[1] = -1;
    if (vuzp1_s8(vmovn_s32(vceqq_s32(v29, v30)), 2139095039).u32[0] != -1)
    {
      v31 = 0;
      v32 = vdup_lane_s32(*v15.f32, 0);
      v33 = vdup_lane_s32(*v15.f32, 1);
      v34 = 1;
      LODWORD(v35) = 3;
      do
      {
        while (1)
        {
          v36 = a3[v35];
          v35 = v31;
          v37 = vdup_lane_s32(*v36.f32, 1);
          v38 = a3[v31];
          v39 = vdup_lane_s32(*v38.f32, 1);
          v40 = vdup_lane_s32(*v36.f32, 0);
          v41 = vdup_lane_s32(*v38.f32, 0);
          if (vuzp1_s8(vdup_lane_s16(vorr_s8(vand_s8(vceq_f32(v32, v41), vceq_f32(v33, v39)), vand_s8(vceq_f32(v32, v40), vceq_f32(v33, v37))), 0), 2139095039).u32[0] == -1)
          {
            goto LABEL_21;
          }

          if ((veor_s8(vcgt_f32(v37, v33), vcgt_f32(v39, v33)).u8[0] & 1) == 0)
          {
            break;
          }

          v42 = vsub_f32(v39, v37);
          v43 = vmul_f32(vsub_f32(v33, v37), vsub_f32(v41, v40));
          v44 = vmul_n_f32(v42, v15.f32[0]);
          v45 = vadd_f32(v43, vmul_f32(vadd_f32(v40, 0x3400000034000000), v42));
          v46 = vdup_lane_s32(vcgtz_f32(v42), 0);
          if ((vcge_f32(vbsl_s8(v46, v45, v44), vbsl_s8(v46, v44, v45)).u8[0] & 1) == 0)
          {
            break;
          }

          if ((v34 & 1) == 0)
          {
            goto LABEL_25;
          }

          v34 = 0;
          ++v31;
          if (v35 == 3)
          {
            goto LABEL_21;
          }
        }

        ++v31;
      }

      while (v35 != 3);
      if ((v34 & 1) == 0)
      {
LABEL_21:
        v47 = vmulq_f32(*a4, vsubq_f32(*a3, v15));
        v48 = vextq_s8(v47, v47, 8uLL).u64[0];
        v49 = vrecpe_f32(v26);
        v50 = 4;
        do
        {
          v49 = vmul_f32(v49, vrecps_f32(v26, v49));
          --v50;
        }

        while (v50);
        v51 = vpadd_f32(*v47.i8, v48);
        v52 = vmul_f32(v49, vpadd_f32(v51, v51));
        v53 = vneg_f32(v52);
        if ((vmvn_s8(vcgt_f32(*a15.f32, v53)).u8[0] & 1) == 0)
        {
          *(a6 + 48 * *a7) = v15;
          v15.i32[2] = v52.i32[0];
          *(a6 + 48 * *a7 + 16) = v15;
          a15 = *a5;
          a15.i32[3] = v53.i32[1];
          v54 = (*a7)++;
          *(a6 + 48 * v54 + 32) = a15;
          v27 = *result;
        }
      }
    }

LABEL_25:
    v55 = vneg_f32(v17);
    *a15.f32 = vext_s8(v27, *a13.f32, 4uLL);
    v56 = vorrq_s8(vcgtq_f32(v20, a15), vcgtq_f32(a15, v21)).u64[0];
    v57 = vceqq_s32(vorrq_s8(vdupq_lane_s32(v56, 0), vdupq_lane_s32(v56, 1)), v30);
    if (vuzp1_s8(vmovn_s32(v57), 2139095039).u32[0] != -1)
    {
      v58 = 0;
      v59 = vdup_lane_s32(*a15.f32, 0);
      v60 = vdup_lane_s32(*a15.f32, 1);
      v61 = 1;
      LODWORD(v62) = 3;
      do
      {
        while (1)
        {
          v63 = a3[v62];
          v62 = v58;
          v64 = vdup_lane_s32(*v63.f32, 1);
          v65 = a3[v58];
          v66 = vdup_lane_s32(*v65.f32, 1);
          v67 = vdup_lane_s32(*v63.f32, 0);
          v68 = vdup_lane_s32(*v65.f32, 0);
          if (vuzp1_s8(vdup_lane_s16(vorr_s8(vand_s8(vceq_f32(v59, v68), vceq_f32(v60, v66)), vand_s8(vceq_f32(v59, v67), vceq_f32(v60, v64))), 0), 2139095039).u32[0] == -1)
          {
            goto LABEL_36;
          }

          if ((veor_s8(vcgt_f32(v64, v60), vcgt_f32(v66, v60)).u8[0] & 1) == 0)
          {
            break;
          }

          v69 = vsub_f32(v66, v64);
          v70 = vmul_f32(vsub_f32(v60, v64), vsub_f32(v68, v67));
          v71 = vmul_n_f32(v69, a15.f32[0]);
          v72 = vadd_f32(v70, vmul_f32(vadd_f32(v67, 0x3400000034000000), v69));
          v73 = vdup_lane_s32(vcgtz_f32(v69), 0);
          if ((vcge_f32(vbsl_s8(v73, v72, v71), vbsl_s8(v73, v71, v72)).u8[0] & 1) == 0)
          {
            break;
          }

          if ((v61 & 1) == 0)
          {
            goto LABEL_40;
          }

          v61 = 0;
          ++v58;
          if (v62 == 3)
          {
            goto LABEL_36;
          }
        }

        ++v58;
      }

      while (v62 != 3);
      if ((v61 & 1) == 0)
      {
LABEL_36:
        v57 = vmulq_f32(*a4, vsubq_f32(*a3, a15));
        v74 = vextq_s8(v57, v57, 8uLL).u64[0];
        v75 = vrecpe_f32(v26);
        v76 = 4;
        do
        {
          v75 = vmul_f32(v75, vrecps_f32(v26, v75));
          --v76;
        }

        while (v76);
        v77 = vpadd_f32(*v57.f32, v74);
        v78 = vmul_f32(v75, vpadd_f32(v77, v77));
        v79 = vneg_f32(v78);
        if (COERCE_FLOAT(*a8) > v79.f32[0])
        {
          *(a6 + 48 * *a7) = a15;
          a15.i32[2] = v78.i32[0];
          *(a6 + 48 * *a7 + 16) = a15;
          v80 = *a5;
          v80.i32[3] = v79.i32[1];
          v81 = (*a7)++;
          *(a6 + 48 * v81 + 32) = v80;
        }
      }
    }

LABEL_40:
    *v57.f32 = vext_s8(v55, *a2, 4uLL);
    v82 = vorrq_s8(vcgtq_f32(v20, v57), vcgtq_f32(v57, v21)).u64[0];
    v83 = vorrq_s8(vdupq_lane_s32(v82, 0), vdupq_lane_s32(v82, 1));
    v84.i64[0] = -1;
    v84.i64[1] = -1;
    if (vuzp1_s8(vmovn_s32(vceqq_s32(v83, v84)), 2139095039).u32[0] != -1)
    {
      v85 = 0;
      v86 = vdup_lane_s32(*v57.f32, 0);
      v87 = vdup_lane_s32(*v57.f32, 1);
      v88 = 1;
      LODWORD(v89) = 3;
      do
      {
        while (1)
        {
          v90 = a3[v89];
          v89 = v85;
          v91 = vdup_lane_s32(*v90.f32, 1);
          v92 = a3[v85];
          v93 = vdup_lane_s32(*v92.f32, 1);
          v94 = vdup_lane_s32(*v90.f32, 0);
          v95 = vdup_lane_s32(*v92.f32, 0);
          if (vuzp1_s8(vdup_lane_s16(vorr_s8(vand_s8(vceq_f32(v86, v95), vceq_f32(v87, v93)), vand_s8(vceq_f32(v86, v94), vceq_f32(v87, v91))), 0), 2139095039).u32[0] == -1)
          {
            goto LABEL_51;
          }

          if ((veor_s8(vcgt_f32(v91, v87), vcgt_f32(v93, v87)).u8[0] & 1) == 0)
          {
            break;
          }

          v96 = vsub_f32(v93, v91);
          v97 = vmul_f32(vsub_f32(v87, v91), vsub_f32(v95, v94));
          v98 = vmul_n_f32(v96, v57.f32[0]);
          v99 = vadd_f32(v97, vmul_f32(vadd_f32(v94, 0x3400000034000000), v96));
          v100 = vdup_lane_s32(vcgtz_f32(v96), 0);
          if ((vcge_f32(vbsl_s8(v100, v99, v98), vbsl_s8(v100, v98, v99)).u8[0] & 1) == 0)
          {
            break;
          }

          if ((v88 & 1) == 0)
          {
            goto LABEL_55;
          }

          v88 = 0;
          ++v85;
          if (v89 == 3)
          {
            goto LABEL_51;
          }
        }

        ++v85;
      }

      while (v89 != 3);
      if ((v88 & 1) == 0)
      {
LABEL_51:
        v101 = vmulq_f32(*a4, vsubq_f32(*a3, v57));
        v102 = vextq_s8(v101, v101, 8uLL).u64[0];
        v103 = vrecpe_f32(v26);
        v104 = 4;
        do
        {
          v103 = vmul_f32(v103, vrecps_f32(v26, v103));
          --v104;
        }

        while (v104);
        v105 = vpadd_f32(*v101.i8, v102);
        v106 = vmul_f32(v103, vpadd_f32(v105, v105));
        v107 = vneg_f32(v106);
        if (COERCE_FLOAT(*a8) > v107.f32[0])
        {
          *(a6 + 48 * *a7) = v57;
          v57.i32[2] = v106.i32[0];
          *(a6 + 48 * *a7 + 16) = v57;
          v108 = *a5;
          v108.i32[3] = v107.i32[1];
          v109 = (*a7)++;
          *(a6 + 48 * v109 + 32) = v108;
        }
      }
    }

LABEL_55:
    *a13.f32 = vext_s8(v55, *a13.f32, 4uLL);
    v110 = vorrq_s8(vcgtq_f32(a13, v21), vcgtq_f32(v20, a13)).u64[0];
    if (vuzp1_s8(vmovn_s32(vceqq_s32(vorrq_s8(vdupq_lane_s32(v110, 0), vdupq_lane_s32(v110, 1)), v84)), 2139095039).u32[0] != -1)
    {
      v111 = 0;
      v112 = vdup_lane_s32(*a13.f32, 0);
      v113 = vdup_lane_s32(*a13.f32, 1);
      v114 = 1;
      LODWORD(v115) = 3;
      do
      {
        while (1)
        {
          v116 = a3[v115];
          v115 = v111;
          v117 = vdup_lane_s32(*v116.f32, 1);
          v118 = a3[v111];
          v119 = vdup_lane_s32(*v118.f32, 1);
          v120 = vdup_lane_s32(*v116.f32, 0);
          v121 = vdup_lane_s32(*v118.f32, 0);
          if (vuzp1_s8(vdup_lane_s16(vorr_s8(vand_s8(vceq_f32(v112, v121), vceq_f32(v113, v119)), vand_s8(vceq_f32(v112, v120), vceq_f32(v113, v117))), 0), 2139095039).u32[0] == -1)
          {
            goto LABEL_66;
          }

          if ((veor_s8(vcgt_f32(v117, v113), vcgt_f32(v119, v113)).u8[0] & 1) == 0)
          {
            break;
          }

          v122 = vsub_f32(v119, v117);
          v123 = vmul_f32(vsub_f32(v113, v117), vsub_f32(v121, v120));
          v124 = vmul_n_f32(v122, a13.f32[0]);
          v125 = vadd_f32(v123, vmul_f32(vadd_f32(v120, 0x3400000034000000), v122));
          v126 = vdup_lane_s32(vcgtz_f32(v122), 0);
          if ((vcge_f32(vbsl_s8(v126, v125, v124), vbsl_s8(v126, v124, v125)).u8[0] & 1) == 0)
          {
            break;
          }

          if ((v114 & 1) == 0)
          {
            goto LABEL_70;
          }

          v114 = 0;
          ++v111;
          if (v115 == 3)
          {
            goto LABEL_66;
          }
        }

        ++v111;
      }

      while (v115 != 3);
      if ((v114 & 1) == 0)
      {
LABEL_66:
        v127 = vmulq_f32(*a4, vsubq_f32(*a3, a13));
        v128 = vextq_s8(v127, v127, 8uLL).u64[0];
        v129 = vrecpe_f32(v26);
        v130 = 4;
        do
        {
          v129 = vmul_f32(v129, vrecps_f32(v26, v129));
          --v130;
        }

        while (v130);
        v131 = vpadd_f32(*v127.i8, v128);
        v132 = vmul_f32(v129, vpadd_f32(v131, v131));
        v133 = vneg_f32(v132);
        if (COERCE_FLOAT(*a8) > v133.f32[0])
        {
          *(a6 + 48 * *a7) = a13;
          v134 = a13;
          v134.i32[2] = v132.i32[0];
          *(a6 + 48 * *a7 + 16) = v134;
          v135 = *a5;
          v135.i32[3] = v133.i32[1];
          v136 = (*a7)++;
          *(a6 + 48 * v136 + 32) = v135;
        }
      }
    }

LABEL_70:
    v137 = 0;
    *v138.f32 = vext_s8(*result, *a2, 4uLL);
    v138.i64[1] = 2139095039;
    a13.i64[1] = vneg_f32(vadd_f32(*a8, 0x3400000034000000)).u32[0];
    v139 = 3;
    __asm { FMOV            V5.2S, #1.0 }

    while (2)
    {
      v145 = v139;
      v139 = v137;
      v146 = a3[v137];
      v147 = a3[v145];
      if (v170[v137 + 4])
      {
        v148 = v170[v137];
        if (v170[v145 + 4])
        {
          v149 = v170[v145];
          if (!v148 || (v170[v145] & 1) == 0)
          {
            break;
          }

LABEL_85:
          v137 = v139 + 1;
          if (v139 == 3)
          {
            return result;
          }

          continue;
        }

        v149 = 0;
      }

      else
      {
        if ((v170[v145 + 4] & 1) == 0)
        {
          goto LABEL_85;
        }

        LOBYTE(v148) = 0;
        v149 = v170[v145];
      }

      break;
    }

    v150 = vcgtq_f32(xmmword_1E3115C00, vabdq_f32(v147, v146));
    if (vuzp1_s8(vmovn_s32(vornq_s8(vbicq_s8(vmvnq_s8(vcgtq_f32(a13, v146)), vcgtq_f32(v146, v138)), v150)), 0x358637BD358637BDLL).u32[0] == -1)
    {
      v151 = vsubq_f32(v147, v146);
      v152 = vrecpeq_f32(v151);
      v153 = vmulq_f32(v152, vrecpsq_f32(v152, v151));
      v153.i32[3] = 0;
      v154 = vbicq_s8(vmulq_f32(vsubq_f32(a13, v146), v153), v150);
      v155 = vbslq_s8(v150, xmmword_1E31137A0, vmulq_f32(vsubq_f32(v138, v146), v153));
      v156 = vminq_f32(v154, v155);
      v157 = vmaxq_f32(v154, v155);
      *v156.i8 = vpmax_f32(vdup_laneq_s32(v156, 2), *v156.i8);
      *v157.i8 = vpmin_f32(vdup_laneq_s32(v157, 2), *v157.i8);
      v158 = vmax_f32(vpmax_f32(*v156.i8, *v156.i8), 0);
      v159 = vmin_f32(vpmin_f32(*v157.i8, *v157.i8), _D5);
      if (vuzp1_s8(vdup_lane_s16(vmvn_s8(vcgt_f32(v158, vminnm_f32(v159, _D5))), 0), 0x358637BD358637BDLL).u32[0] == -1)
      {
        if ((v148 & 1) == 0)
        {
          v160 = vmlaq_n_f32(v146, v151, v158.f32[0]);
          v161 = vdupq_laneq_s32(v160, 2);
          v160.i64[1] = vextq_s8(v160, v160, 8uLL).u32[0];
          v162 = v160;
          v162.i32[2] = 0;
          *(a6 + 48 * *a7) = v162;
          *(a6 + 48 * *a7 + 16) = v160;
          v163 = *a5;
          v163.i32[3] = vnegq_f32(v161).i32[3];
          v164 = (*a7)++;
          *(a6 + 48 * v164 + 32) = v163;
        }

        if ((v149 & 1) == 0)
        {
          v165 = vmlaq_n_f32(v146, v151, v159.f32[0]);
          *&v166 = v165.i64[0];
          *(&v166 + 1) = vextq_s8(v165, v165, 8uLL).u32[0];
          v167 = v166;
          DWORD2(v167) = 0;
          *(a6 + 48 * *a7) = v167;
          *(a6 + 48 * *a7 + 16) = v166;
          v168 = *a5;
          v168.i32[3] = vnegq_f32(vdupq_laneq_s32(v165, 2)).i32[3];
          v169 = (*a7)++;
          *(a6 + 48 * v169 + 32) = v168;
        }
      }
    }

    goto LABEL_85;
  }

  return result;
}

uint64_t physx::RefitCallback<unsigned short>::recomputeBounds(uint64_t result, unint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = (v5 + 6 * (a2 >> 5));
  v7 = v4 + 12 * *v6;
  v8.i64[0] = *v7;
  v8.i64[1] = *(v7 + 8);
  v9 = v4 + 12 * v6[1];
  v10.i64[0] = *v9;
  v10.i64[1] = *(v9 + 8);
  v11 = vminq_f32(v8, v10);
  v12 = vmaxq_f32(v8, v10);
  v13 = v4 + 12 * v6[2];
  v14.i64[0] = *v13;
  v14.i64[1] = *(v13 + 8);
  v15 = vminq_f32(v11, v14);
  v16 = vmaxq_f32(v12, v14);
  if (((a2 >> 1) & 0xF) != 0)
  {
    v17 = (a2 >> 1) & 0xF;
    v18 = (v5 + 6 * (a2 >> 5) + 10);
    do
    {
      v19 = v4 + 12 * *(v18 - 2);
      v20.i64[0] = *v19;
      v20.i64[1] = *(v19 + 8);
      v21 = vminq_f32(v15, v20);
      v22 = vmaxq_f32(v16, v20);
      v23 = v4 + 12 * *(v18 - 1);
      v20.i64[0] = *v23;
      v20.i64[1] = *(v23 + 8);
      v24 = vminq_f32(v21, v20);
      v25 = vmaxq_f32(v22, v20);
      v26 = *v18;
      v18 += 3;
      v27 = v4 + 12 * v26;
      v20.i64[0] = *v27;
      v20.i64[1] = *(v27 + 8);
      v15 = vminq_f32(v24, v20);
      v16 = vmaxq_f32(v25, v20);
      --v17;
    }

    while (v17);
  }

  *a3 = v15;
  *a4 = v16;
  return result;
}

uint64_t physx::RefitCallback<unsigned int>::recomputeBounds(uint64_t result, unint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = (v5 + 12 * (a2 >> 5));
  v7 = v4 + 12 * *v6;
  v8.i64[0] = *v7;
  v8.i64[1] = *(v7 + 8);
  v9 = v4 + 12 * v6[1];
  v10.i64[0] = *v9;
  v10.i64[1] = *(v9 + 8);
  v11 = vminq_f32(v8, v10);
  v12 = vmaxq_f32(v8, v10);
  v13 = v4 + 12 * v6[2];
  v14.i64[0] = *v13;
  v14.i64[1] = *(v13 + 8);
  v15 = vminq_f32(v11, v14);
  v16 = vmaxq_f32(v12, v14);
  if (((a2 >> 1) & 0xF) != 0)
  {
    v17 = (a2 >> 1) & 0xF;
    v18 = (v5 + 12 * (a2 >> 5) + 20);
    do
    {
      v19 = v4 + 12 * *(v18 - 2);
      v20.i64[0] = *v19;
      v20.i64[1] = *(v19 + 8);
      v21 = vminq_f32(v15, v20);
      v22 = vmaxq_f32(v16, v20);
      v23 = v4 + 12 * *(v18 - 1);
      v20.i64[0] = *v23;
      v20.i64[1] = *(v23 + 8);
      v24 = vminq_f32(v21, v20);
      v25 = vmaxq_f32(v22, v20);
      v26 = *v18;
      v18 += 3;
      v27 = v4 + 12 * v26;
      v20.i64[0] = *v27;
      v20.i64[1] = *(v27 + 8);
      v15 = vminq_f32(v24, v20);
      v16 = vmaxq_f32(v25, v20);
      --v17;
    }

    while (v17);
  }

  *a3 = v15;
  *a4 = v16;
  return result;
}

__n128 physx::Gu::LocalConvex<physx::Gu::ConvexHullNoScaleV>::support(uint64_t a1, float32x4_t *a2, _DWORD *a3)
{
  v4 = *(a1 + 8);
  v5 = physx::Gu::ConvexHullV::supportVertexIndex(v4, a2);
  *a3 = v5;
  return *(*(v4 + 160) + 12 * v5);
}

uint64_t physx::Gu::pcmContactCapsuleBox(uint64_t a1, uint64_t a2, float32x4_t *a3, int32x4_t *a4, uint64_t a5, float32x4_t **a6, float32x4_t *a7)
{
  v202 = *MEMORY[0x1E69E9840];
  _X20 = *a6;
  __asm { PRFM            #0, [X20,#0x100] }

  v16 = *(a2 + 4);
  v17 = v16;
  v17.i32[2] = *(a2 + 12);
  v188 = vdup_lane_s32(*a5, 0);
  v18.i64[0] = a3[1].i64[0];
  v18.i64[1] = a3[1].u32[2];
  v187[0] = *a3;
  v187[1] = v18;
  v19.i64[0] = a4[1].i64[0];
  v19.i64[1] = a4[1].u32[2];
  v185 = *a4;
  v186 = v19;
  v20 = vnegq_f32(v185);
  v21 = v20;
  v21.i32[3] = 0;
  v22 = vdupq_laneq_s32(v185, 3).u64[0];
  v23 = vsubq_f32(v18, v19);
  v24 = vmulq_n_f32(v23, vmla_f32(0xBF000000BF000000, v22, v22).f32[0]);
  v24.i32[3] = 0;
  v25 = vextq_s8(v21, v21, 8uLL).u64[0];
  v26 = vext_s8(*v20.f32, v25, 4uLL);
  v27 = vmls_f32(vmul_f32(*v20.f32, *&vextq_s8(v23, v23, 4uLL)), v26, *v23.f32);
  *v28.f32 = vext_s8(v27, vmls_f32(vmul_f32(v25, *v23.f32), *v20.f32, *&vextq_s8(v23, v23, 8uLL)), 4uLL);
  v28.i64[1] = v27.u32[0];
  v29 = vmlaq_laneq_f32(v24, v28, v185, 3);
  v29.i64[1] = vextq_s8(v29, v29, 8uLL).u32[0];
  v30 = vmulq_f32(v21, v23);
  v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
  _Q7 = vmlaq_n_f32(v29, v21, vpadd_f32(*v30.f32, *v30.f32).f32[0]);
  v32 = vaddq_f32(_Q7, _Q7);
  v32.i32[3] = 0;
  v33 = v187[0];
  v33.i32[3] = 0;
  v34 = vmulq_f32(v33, v21);
  v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
  v35 = vsub_f32(vmul_f32(*&vextq_s8(v187[0], v187[0], 8uLL), *&vextq_s8(v185, v185, 8uLL)), vpadd_f32(*v34.f32, *v34.f32));
  v36 = vmulq_laneq_f32(v33, v185, 3);
  v33.i64[0] = vextq_s8(v33, v33, 8uLL).u64[0];
  *_Q7.f32 = vmls_f32(vmul_f32(vext_s8(*v187[0].f32, *v33.f32, 4uLL), *v20.f32), v26, *v187[0].f32);
  *v37.f32 = vext_s8(*_Q7.f32, vmls_f32(vmul_f32(*v187[0].f32, v25), *v20.f32, *v33.f32), 4uLL);
  v37.i64[1] = _Q7.i64[0];
  v38 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v21, v187[0], 3), v36), v37);
  *v37.f32 = vdup_lane_s32(*v38.f32, 1);
  *v36.f32 = vdup_laneq_s32(v38, 2);
  v39 = vaddq_f32(v38, v38);
  *_Q7.f32 = vdup_laneq_s32(v39, 2);
  *v34.f32 = vdup_lane_s32(vmul_f32(*v38.f32, *v39.f32), 0);
  v40 = vmul_lane_f32(*v37.f32, *v39.f32, 1);
  *v28.f32 = vmul_laneq_f32(*v36.f32, v39, 2);
  *v37.f32 = vmul_n_f32(*v37.f32, v39.f32[0]);
  v41 = vmul_n_f32(*v36.f32, v39.f32[0]);
  *v21.f32 = vmul_lane_f32(vdup_lane_s32(*v39.f32, 0), v35, 1);
  *v36.f32 = vmul_lane_f32(*v36.f32, *v39.f32, 1);
  *v39.f32 = vmul_lane_f32(vdup_lane_s32(*v39.f32, 1), v35, 1);
  *v33.f32 = vmul_lane_f32(*_Q7.f32, v35, 1);
  __asm { FMOV            V7.2S, #1.0 }

  *v34.f32 = vsub_f32(*_Q7.f32, *v34.f32);
  *v42.f32 = vext_s8(vsub_f32(vsub_f32(*_Q7.f32, v40), *v28.f32), vadd_f32(*v37.f32, *v33.f32), 4uLL);
  v42.i64[1] = vsub_f32(v41, *v39.f32).u32[0];
  *v37.f32 = vsub_f32(*v37.f32, *v33.f32);
  *v33.f32 = vsub_f32(*v34.f32, *v28.f32);
  *v43.f32 = vext_s8(*v37.f32, *v33.f32, 4uLL);
  v43.i64[1] = vadd_f32(*v36.f32, *v21.f32).u32[0];
  v45 = vadd_f32(v41, *v39.f32);
  *v44.f32 = vext_s8(v45, vsub_f32(*v36.f32, *v21.f32), 4uLL);
  v44.i64[1] = vsub_f32(*v34.f32, v40).u32[0];
  v45.i32[0] = *(a1 + 4);
  v46 = vdup_lane_s32(v45, 0);
  v184 = v46;
  v47 = *(a1 + 8);
  v48 = _X20[4].u8[0];
  *v16.i8 = vpmin_f32(vdup_laneq_s32(v17, 2), *v16.i8);
  v49 = vpmin_f32(*v16.i8, *v16.i8);
  v33.f32[0] = *(a5 + 8) * 0.15;
  v50 = vmin_f32(vmin_f32(vmul_f32(v49, vdup_n_s32(0x3E19999Au)), vdup_lane_s32(*v33.f32, 0)), v46);
  if (_X20[4].i8[0])
  {
    v51 = vmul_f32(v50, vdup_n_s32(0x3F4CCCCDu));
    v52 = vmul_f32(v51, v51);
    v53 = 48 * v48;
    do
    {
      v54 = _X20[5].i64[0];
      v55 = (v54 + v53 - 48);
      v56 = vmulq_n_f32(v42, COERCE_FLOAT(*v55));
      v56.i32[3] = 0;
      v57 = vmulq_lane_f32(v43, *v55->f32, 1);
      v57.i32[3] = 0;
      v58 = vmulq_laneq_f32(v44, *v55, 2);
      v58.i32[3] = 0;
      v59 = vaddq_f32(v32, vaddq_f32(v58, vaddq_f32(v56, v57)));
      v61 = *(v54 + v53 - 32);
      v60 = *(v54 + v53 - 16);
      v62 = v60;
      v62.i32[3] = 0;
      v63 = vmulq_f32(v62, vsubq_f32(v59, v61));
      v63.i64[0] = vpaddq_f32(v63, v63).u64[0];
      v64 = vpadd_f32(*v63.f32, *v63.f32);
      v65 = vmlsq_lane_f32(v59, v62, v64, 0);
      v65.i64[1] = vextq_s8(v65, v65, 8uLL).u32[0];
      v66 = vsubq_f32(v61, v65);
      v67 = vmulq_f32(v66, v66);
      v67.i64[0] = vpaddq_f32(v67, v67).u64[0];
      if (vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v67.f32, *v67.f32), v52), 0), *v17.i8).u32[0] == -1)
      {
        v68 = _X20[4].i8[0] - 1;
        _X20[4].i8[0] = v68;
        v69 = (v54 + 48 * v68);
        v70 = *v69;
        v71 = v69[2];
        v55[1] = v69[1];
        v55[2] = v71;
        *v55 = v70;
      }

      else
      {
        v60.i32[3] = v64.i32[1];
        *(v54 + v53 - 16) = v60;
      }

      v53 -= 48;
    }

    while (v53);
    v72 = _X20[4].u8[0];
  }

  else
  {
    v72 = 0;
  }

  v73 = v38;
  v73.i32[3] = v35.i32[1];
  if (v72 != v48 || (v74 = vabdq_f32(v32, _X20[1]), *v74.i8 = vpmax_f32(*&vextq_s8(v74, v74, 8uLL), *v74.i8), v75 = (&physx::Gu::invalidateQuatThresholds2 + 4 * v48), v76 = vld1_dup_f32(v75), v77 = vmulq_f32(v73, *_X20), v77.i64[0] = vpaddq_f32(v77, v77).u64[0], vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(v76, vpadd_f32(*v77.f32, *v77.f32)), vcgt_f32(vpmax_f32(*v74.i8, *v74.i8), vmul_n_f32(v50, physx::Gu::invalidateThresholds2[v48]))), 0), *v17.i8).u32[0] == -1))
  {
    v162 = v73;
    v163 = *v38.f32;
    v165 = v35;
    v17.i32[3] = 0;
    *_X20 = v73;
    _X20[1] = v32;
    v180 = v42;
    v181 = v43;
    v182 = v44;
    v183 = v32;
    v177 = 3;
    v178 = 0;
    v173 = v186;
    v179 = v17;
    v107 = 0.15 * v49.f32[0];
    v49.f32[0] = 0.05 * v49.f32[0];
    v174 = v107;
    v175 = v49.i32[0];
    v108 = vmulq_n_f32(xmmword_1E3047670, *&v47);
    v160 = v43;
    v161 = v42;
    v109 = vmulq_n_f32(v42, v108.f32[0]);
    v109.i32[3] = 0;
    v110 = vmulq_lane_f32(v43, *v108.f32, 1);
    v110.i32[3] = 0;
    v159 = v44;
    v111 = vmulq_laneq_f32(v44, v108, 2);
    v111.i32[3] = 0;
    v176 = v49.i32[0];
    v112 = vaddq_f32(v109, v110);
    v113 = vaddq_f32(v111, v112);
    v197 = 4;
    v193 = v32;
    v201 = v46;
    v199 = vaddq_f32(v32, v113);
    v200 = vsubq_f32(v32, v113);
    v194 = v45.i32[0];
    v195 = v45.i32[0];
    v196 = v45.i32[0];
    v198 = 1;
    v172[1] = &v193;
    v171[1] = &v173;
    v172[0] = &unk_1F5D217B8;
    v171[0] = &unk_1F5D21A80;
    v192 = 0;
    v189 = 0u;
    v190 = 0u;
    v191[0] = 0u;
    v164 = v32;
    v170 = vsubq_f32(v32, v186);
    result = physx::Gu::gjkPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(v172, v171, &v170, &v188, 1, &_X20[4].i8[3], &_X20[4].i8[7], &_X20[4].i8[2], *v170.i64, *&v45, *v199.f32, v112, v49, &v189);
    v169 = 0;
    switch(result)
    {
      case 0:
        return result;
      case 2:
        v115 = v189;
        v116 = v190;
        v117 = v164;
        v118 = vsubq_f32(v189, v164);
        v119 = vmulq_f32(v118, v161);
        v119.i64[0] = vpaddq_f32(v119, v119).u64[0];
        v120 = vmulq_f32(v118, v160);
        v120.i64[0] = vpaddq_f32(v120, v120).u64[0];
        v121 = vmulq_f32(v118, v159);
        v121.i64[0] = vpaddq_f32(v121, v121).u64[0];
        *v120.f32 = vext_s8(vpadd_f32(*v119.f32, *v119.f32), vpadd_f32(*v120.f32, *v120.f32), 4uLL);
        v120.i64[1] = vpadd_f32(*v121.f32, *v121.f32).u32[0];
        v122 = v191[0];
        v123 = HIDWORD(v192);
        v124 = v191[0];
        v124.i32[3] = HIDWORD(v192);
        *a7 = v120;
        a7[1] = v116;
        v169 = 1;
        a7[2] = v124;
        v125 = v165;
        v127 = v162;
        v126 = v163;
        break;
      case 4:
        v167.n128_u64[0] = *(a2 + 4);
        v167.n128_u32[2] = *(a2 + 12);
        return physx::Gu::fullContactsGenerationCapsuleBox(&v193, &v173, &v167, &v180, v187, &v185, a7, &v169, v174, *(a5 + 8), a7, _X20, v191, &v190, &v188, 1);
      default:
        v128 = 1;
        v129 = physx::Gu::epaPenetration(v172);
        v117 = v164;
        v125 = v165;
        v127 = v162;
        v126 = v163;
        if (v129 != 5)
        {
LABEL_31:
          v167.n128_u64[0] = *(a2 + 4);
          v167.n128_u32[2] = *(a2 + 12);
          return physx::Gu::fullContactsGenerationCapsuleBox(&v193, &v173, &v167, &v180, v187, &v185, a7, &v169, v174, *(a5 + 8), a7, _X20, v191, &v190, &v188, v128);
        }

        v115 = v189;
        v130 = v190;
        v131 = vsubq_f32(v189, v183);
        v132 = vmulq_f32(v180, v131);
        v132.i64[0] = vpaddq_f32(v132, v132).u64[0];
        v133 = vmulq_f32(v131, v181);
        v133.i64[0] = vpaddq_f32(v133, v133).u64[0];
        v134 = vmulq_f32(v131, v182);
        v134.i64[0] = vpaddq_f32(v134, v134).u64[0];
        *v132.f32 = vext_s8(vpadd_f32(*v132.f32, *v132.f32), vpadd_f32(*v133.f32, *v133.f32), 4uLL);
        v132.i64[1] = vpadd_f32(*v134.f32, *v134.f32).u32[0];
        v122 = v191[0];
        v123 = HIDWORD(v192);
        v135 = v191[0];
        v135.i32[3] = HIDWORD(v192);
        v136 = v169;
        v137 = &a7[3 * v169];
        *v137 = v132;
        v137[1] = v130;
        v169 = v136 + 1;
        v137[2] = v135;
        break;
    }

    v128 = 0;
    if (v48 && v72 == v48)
    {
      v138 = vdup_lane_s32(v125, 1);
      v168 = vmul_f32(v50, vdup_n_s32(0x3DCCCCCDu));
      v122.i32[3] = v123;
      v127.i32[3] = 0;
      v139 = vsubq_f32(v115, v117);
      v140 = vmulq_n_f32(v139, vmla_f32(0xBF000000BF000000, v138, v138).f32[0]);
      v140.i32[3] = 0;
      v167 = v122;
      v141 = vextq_s8(v127, v127, 8uLL).u64[0];
      v142 = vmls_f32(vmul_f32(v126, *&vextq_s8(v139, v139, 4uLL)), vext_s8(v126, v141, 4uLL), *v139.f32);
      *v143.f32 = vext_s8(v142, vmls_f32(vmul_f32(v141, *v139.f32), v126, *&vextq_s8(v139, v139, 8uLL)), 4uLL);
      v143.i64[1] = v142.u32[0];
      v144 = vmlsq_lane_f32(v140, v143, v125, 1);
      v144.i64[1] = vextq_s8(v144, v144, 8uLL).u32[0];
      v145 = vmulq_f32(v127, v139);
      v145.i64[0] = vpaddq_f32(v145, v145).u64[0];
      v146 = vmlaq_n_f32(v144, v127, vpadd_f32(*v145.f32, *v145.f32).f32[0]);
      v147 = vaddq_f32(v146, v146);
      v147.i32[3] = 0;
      v166 = v147;
      physx::Gu::PersistentContactManifold::addManifoldPoint2(_X20, &v166, &v190, &v167, &v168);
      v148 = v185;
      v148.i32[3] = 0;
      v149 = vdupq_laneq_s32(v185, 3).u64[0];
      v150 = vmulq_n_f32(v191[0], vmla_f32(0xBF000000BF000000, v149, v149).f32[0]);
      v150.i32[3] = 0;
      v151 = vextq_s8(v148, v148, 8uLL).u64[0];
      v152 = vextq_s8(v191[0], v191[0], 8uLL).u64[0];
      v153 = vmls_f32(vmul_f32(*v185.i8, vext_s8(*v191[0].i8, v152, 4uLL)), vext_s8(*v185.i8, v151, 4uLL), *v191[0].i8);
      *v154.f32 = vext_s8(v153, vmls_f32(vmul_f32(v151, *v191[0].i8), *v185.i8, v152), 4uLL);
      v154.i64[1] = v153.u32[0];
      v155 = vmlaq_laneq_f32(v150, v154, v185, 3);
      v155.i64[1] = vextq_s8(v155, v155, 8uLL).u32[0];
      v156 = vmulq_f32(v148, v191[0]);
      v156.i64[0] = vpaddq_f32(v156, v156).u64[0];
      v157 = vmlaq_n_f32(v155, v148, vpadd_f32(*v156.f32, *v156.f32).f32[0]);
      v158 = vaddq_f32(v157, v157);
      v158.i32[3] = 0;
      v166 = v158;
      v105 = &v166;
      v106 = &v166;
LABEL_30:
      physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(_X20, a7, v105, v106, v187, &v184, &v188);
      return 1;
    }

    goto LABEL_31;
  }

  if (v48)
  {
    v78 = _X20[5].i64[0];
    v79 = *(v78 + 32);
    v80 = v79;
    if (v48 != 1)
    {
      v81 = v48 - 1;
      v82 = (v78 + 80);
      v80 = v79;
      do
      {
        v83 = *v82;
        v82 += 3;
        v80 = vaddq_f32(v80, v83);
        --v81;
      }

      while (v81);
    }

    v80.i32[3] = 0;
    v84 = vmulq_f32(v80, v80);
    v84.i64[0] = vpaddq_f32(v84, v84).u64[0];
    v79.i32[3] = 0;
    v85 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v84.f32, *v84.f32), 0x3400000034000000), 0)), 0x1FuLL)), v80, v79);
    v86 = v185;
    v86.i32[3] = 0;
    v87 = vdupq_laneq_s32(v185, 3).u64[0];
    v88 = vmulq_n_f32(v85, vmla_f32(0xBF000000BF000000, v87, v87).f32[0]);
    v88.i32[3] = 0;
    v89 = vextq_s8(v86, v86, 8uLL).u64[0];
    v90 = vextq_s8(v85, v85, 8uLL).u64[0];
    v91 = vmls_f32(vmul_f32(*v185.i8, vext_s8(*v85.f32, v90, 4uLL)), vext_s8(*v185.i8, v89, 4uLL), *v85.f32);
    *v92.f32 = vext_s8(v91, vmls_f32(vmul_f32(v89, *v85.f32), *v185.i8, v90), 4uLL);
    v92.i64[1] = v91.u32[0];
    v93 = vmlaq_laneq_f32(v88, v92, v185, 3);
    v93.i64[1] = vextq_s8(v93, v93, 8uLL).u32[0];
    v94 = vmulq_f32(v86, v85);
    v94.i64[0] = vpaddq_f32(v94, v94).u64[0];
    v95 = vmlaq_n_f32(v93, v86, vpadd_f32(*v94.f32, *v94.f32).f32[0]);
    v96 = vaddq_f32(v95, v95);
    v96.i32[3] = 0;
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
    do
    {
      v102 = vmul_f32(v102, vrecps_f32(v101, v102));
      --v103;
    }

    while (v103);
    v104 = vmulq_n_f32(v96, v102.f32[0]);
    v104.i32[3] = 0;
    v193 = v104;
    v105 = &v193;
    v106 = &v193;
    goto LABEL_30;
  }

  return 0;
}

uint64_t physx::Gu::fullContactsGenerationCapsuleBox(uint64_t a1, uint64_t a2, float *a3, float32x4_t *a4, float32x4_t *a5, int32x4_t *a6, uint64_t a7, int *a8, float32_t a9, float a10, uint64_t a11, uint64_t a12, int8x16_t *a13, float32x2_t *a14, float32x2_t *a15, char a16)
{
  v58 = *MEMORY[0x1E69E9840];
  physx::Gu::PolygonalBox::PolygonalBox(v43, a3);
  v46 = 0;
  v48 = 0x600000008;
  v47 = 0;
  v49 = 0;
  v21 = a7;
  v50 = &v45;
  v51 = &v44;
  v52 = &physx::Gu::gPCMBoxPolygonData;
  v53 = 0u;
  v54 = 0u;
  v42[0] = xmmword_1E3047670;
  v42[1] = xmmword_1E3047680;
  v22 = xmmword_1E30476A0;
  v42[2] = xmmword_1E30476A0;
  v55[4] = a6;
  v55[5] = v42;
  v55[6] = v42;
  v56 = 1;
  v55[0] = &unk_1F5D21690;
  v57 = a2;
  v23 = *a8;
  v22.f32[0] = a9;
  CapsuleBoxFullContactManifold = physx::Gu::generateCapsuleBoxFullContactManifold(a1, &v46, v55, a4, a7, a8, a15, a13, v22, a10, a14, a16);
  if (CapsuleBoxFullContactManifold)
  {
    v25 = *a8;
    if (v23)
    {
      if (v25 != v23)
      {
        v23 = v25 - 1;
        *a8 = v25 - 1;
        v21 = a7 + 48;
      }
    }

    else
    {
      v23 = *a8;
    }

    physx::Gu::PersistentContactManifold::addBatchManifoldContacts2(a12, v21, v23);
    v26 = *a6;
    v26.i32[3] = 0;
    v27 = vdupq_laneq_s32(*a6, 3).u64[0];
    v28 = vmulq_n_f32(*a13, vmla_f32(0xBF000000BF000000, v27, v27).f32[0]);
    v28.i32[3] = 0;
    v29 = vextq_s8(v26, v26, 8uLL).u64[0];
    v30 = vextq_s8(*a13, *a13, 8uLL).u64[0];
    v31 = vmls_f32(vmul_f32(*a6->i8, vext_s8(*a13->i8, v30, 4uLL)), vext_s8(*a6->i8, v29, 4uLL), *a13->i8);
    *v32.f32 = vext_s8(v31, vmls_f32(vmul_f32(v29, *a13->i8), *a6->i8, v30), 4uLL);
    v32.i64[1] = v31.u32[0];
    v33 = vmlaq_laneq_f32(v28, v32, *a6, 3);
    v33.i64[1] = vextq_s8(v33, v33, 8uLL).u32[0];
    v34 = vmulq_f32(v26, *a13);
    v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
    v35 = vmlaq_n_f32(v33, v26, vpadd_f32(*v34.f32, *v34.f32).f32[0]);
    v36 = vaddq_f32(v35, v35);
    v36.i32[3] = 0;
    *a13 = v36;
    physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(a12, a11, a13, a13, a5, (a1 + 80), a15);
  }

  return CapsuleBoxFullContactManifold;
}

uint64_t physx::Gu::pcmContactCapsuleCapsule(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x2_t *a5, uint64_t a6, uint64_t a7)
{
  v8.i64[0] = a3[1].i64[0];
  v8.i64[1] = a3[1].u32[2];
  _Q5 = *a3;
  v10.i64[0] = a4[1].i64[0];
  v10.i64[1] = a4[1].u32[2];
  v11 = *a4;
  v12 = *(a1 + 4);
  v13 = *(a2 + 4);
  v14 = *(a2 + 8);
  v15.i64[0] = 0x3F0000003F000000;
  v15.i64[1] = 0x3F0000003F000000;
  v16 = vmulq_f32(vaddq_f32(v8, v10), v15);
  v16.i32[3] = 0;
  v17 = *a5;
  v18 = vsubq_f32(v8, v16);
  v19 = vextq_s8(_Q5, _Q5, 8uLL).u64[0];
  v20 = vmulq_n_f32(*a3, vadd_f32(*_Q5.i8, *_Q5.i8).f32[0]);
  v20.i32[3] = 0;
  v153 = v16;
  v21 = vsubq_f32(v10, v16);
  *v10.f32 = vext_s8(vdup_laneq_s32(*a3, 3), v19, 4uLL);
  v10.i64[1] = vneg_f32(vdup_lane_s32(*a3->f32, 1)).u32[0];
  v22 = vmlaq_n_f32(v20, v10, *vdup_lane_s32(vadd_f32(v19, v19), 1).i32);
  __asm { FMOV            V5.2S, #-1.0 }

  v22.i32[0] = vadd_f32(*v22.f32, *_Q5.i8).u32[0];
  v27 = vmulq_n_f32(v22, COERCE_FLOAT(*(a1 + 8)));
  v27.i32[3] = 0;
  v156 = vaddq_f32(v18, v27);
  v151 = vsubq_f32(v18, v27);
  v158 = vsubq_f32(v151, v156);
  v163 = v158;
  v164 = v156;
  v28 = vextq_s8(v11, v11, 8uLL).u64[0];
  v29 = vmulq_n_f32(v11, vadd_f32(*v11.f32, *v11.f32).f32[0]);
  v29.i32[3] = 0;
  *v27.f32 = vext_s8(vdup_laneq_s32(v11, 3), v28, 4uLL);
  v27.i64[1] = vneg_f32(vdup_lane_s32(*v11.f32, 1)).u32[0];
  v30 = vmlaq_n_f32(v29, v27, *vdup_lane_s32(vadd_f32(v28, v28), 1).i32);
  v30.i32[0] = vadd_f32(*v30.f32, *_Q5.i8).u32[0];
  v31 = vmulq_n_f32(v30, *&v14);
  v31.i32[3] = 0;
  v32 = vaddq_f32(v21, v31);
  v150 = vsubq_f32(v21, v31);
  v157 = vsubq_f32(v150, v32);
  v161 = v157;
  v162 = v32;
  v152 = v12;
  v154 = vadd_f32(v12, v13);
  v155 = v32;
  v33 = vadd_f32(v154, v17);
  v34 = vdup_lane_s32(vmul_f32(v33, v33), 0);
  v159 = 0;
  v160 = 0;
  v35 = physx::Gu::distanceSegmentSegmentSquared(&v164, &v163, &v162, &v161, &v160, &v159);
  v38 = vcge_f32(v34, v35).u8[0];
  if (v38)
  {
    v39 = vdup_lane_s32(v154, 0);
    v40 = vmulq_f32(v158, v158);
    v40.i64[0] = vpaddq_f32(v40, v40).u64[0];
    v41 = vpadd_f32(*v40.f32, *v40.f32);
    v42 = vmulq_f32(v157, v157);
    v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
    v43 = vpadd_f32(*v42.f32, *v42.f32);
    v44 = vrsqrte_f32(v41);
    v45 = 4;
    do
    {
      v44 = vmul_f32(v44, vrsqrts_f32(vmul_f32(v44, v44), v41));
      --v45;
    }

    while (v45);
    *v36.i8 = vcgt_f32(vdup_n_s32(0x358637BDu), v43);
    v46 = vbsl_s8(vdup_lane_s32(vceqz_f32(v41), 0), v41, vmul_f32(v41, v44));
    v47 = vrecpe_f32(v46);
    v48 = 4;
    do
    {
      v47 = vmul_f32(v47, vrecps_f32(v46, v47));
      --v48;
    }

    while (v48);
    v49 = vmulq_n_f32(v158, v47.f32[0]);
    v49.i32[3] = 0;
    *v37.i8 = vcgt_f32(vdup_n_s32(0x358637BDu), v41);
    v50 = vdupq_lane_s32(*&vmvnq_s8(v37), 0);
    v51 = vrsqrte_f32(v43);
    v52 = 4;
    do
    {
      v51 = vmul_f32(v51, vrsqrts_f32(vmul_f32(v51, v51), v43));
      --v52;
    }

    while (v52);
    v53 = vandq_s8(v49, v50);
    v54 = vbsl_s8(vdup_lane_s32(vceqz_f32(v43), 0), v43, vmul_f32(v43, v51));
    v55 = vrecpe_f32(v54);
    v56 = 4;
    do
    {
      v55 = vmul_f32(v55, vrecps_f32(v54, v55));
      --v56;
    }

    while (v56);
    v57 = vmulq_n_f32(v157, v55.f32[0]);
    v57.i32[3] = 0;
    v58 = vmulq_f32(v53, vandq_s8(v57, vdupq_lane_s32(*&vmvnq_s8(v36), 0)));
    v58.i64[0] = vpaddq_f32(v58, v58).u64[0];
    if (vabs_f32(vpadd_f32(*v58.f32, *v58.f32)).f32[0] <= 0.9998)
    {
      goto LABEL_38;
    }

    *v59.i8 = v41;
    v59.u64[1] = v43;
    v60 = vrev64q_s32(v59);
    v61 = vrecpeq_f32(v60);
    v62 = 4;
    do
    {
      v61 = vmulq_f32(v61, vrecpsq_f32(v61, v60));
      --v62;
    }

    while (v62);
    v63 = vmulq_f32(v158, vsubq_f32(v155, v156));
    v64 = vmulq_f32(v157, vsubq_f32(v156, v155));
    v65 = vzip1q_s32(v63, v64);
    v66 = vmulq_f32(v158, vsubq_f32(v150, v156));
    v67 = vmulq_f32(vsubq_f32(v151, v155), v157);
    v68 = vzip1q_s32(v66, v67);
    v69 = vbicq_s8(vmulq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v63, v64), vzip2q_s32(v66, v67)), vaddq_f32(vzip1q_s32(v65, v68), vzip2q_s32(v65, v68))), v61), vceqzq_f32(v60));
    __asm { FMOV            V5.4S, #1.0 }

    v71 = vmovn_s32(vandq_s8(vcgezq_f32(v69), vcgeq_f32(_Q5, v69)));
    if (vdup_lane_s8(v71, 0).u32[0] == -1 && (v72 = vmlaq_n_f32(v156, v158, v69.f32[0]), v72.i64[1] = vextq_s8(v72, v72, 8uLL).u32[0], v73 = vsubq_f32(v72, v155), v74 = vmulq_f32(v73, v73), v74.i64[0] = vpaddq_f32(v74, v74).u64[0], v75 = vpadd_f32(*v74.f32, *v74.f32), vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v75, vdup_n_s32(0x358637BDu)), vcgt_f32(v34, v75)), 0), v35).u32[0] == -1))
    {
      v140 = vrsqrte_f32(v75);
      v141 = 4;
      do
      {
        v140 = vmul_f32(v140, vrsqrts_f32(vmul_f32(v140, v140), v75));
        --v141;
      }

      while (v141);
      v142 = vbsl_s8(vdup_lane_s32(vceqz_f32(v75), 0), v75, vmul_f32(v75, v140));
      v143 = vrecpe_f32(v142);
      v144 = 4;
      do
      {
        v143 = vmul_f32(v143, vrecps_f32(v142, v143));
        --v144;
      }

      while (v144);
      v145 = vmulq_n_f32(v73, v143.f32[0]);
      v146 = v145;
      v146.i32[3] = 0;
      v147 = vaddq_f32(v153, vmlsq_lane_f32(v72, v146, v152, 0));
      v148 = *(a7 + 4096);
      *(a7 + 4096) = v148 + 1;
      v145.i32[3] = vsub_f32(v142, v39).i32[1];
      v149 = (a7 + (v148 << 6));
      *v149 = v145;
      v149[1].i64[0] = v147.i64[0];
      v149[1].i32[2] = v147.i32[2];
      v149[3].i32[1] = -1;
      v76 = 1;
    }

    else
    {
      v76 = 0;
    }

    if (vdup_lane_s8(v71, 2).u32[0] == -1)
    {
      v77 = vmlaq_lane_f32(v156, v158, *v69.f32, 1);
      v77.i64[1] = vextq_s8(v77, v77, 8uLL).u32[0];
      v78 = vsubq_f32(v77, v150);
      v79 = vmulq_f32(v78, v78);
      v79.i64[0] = vpaddq_f32(v79, v79).u64[0];
      v80 = vpadd_f32(*v79.f32, *v79.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v80, vdup_n_s32(0x358637BDu)), vcgt_f32(v34, v80)), 0), v35).u32[0] == -1)
      {
        v81 = vrsqrte_f32(v80);
        v82 = 4;
        do
        {
          v81 = vmul_f32(v81, vrsqrts_f32(vmul_f32(v81, v81), v80));
          --v82;
        }

        while (v82);
        v83 = vbsl_s8(vdup_lane_s32(vceqz_f32(v80), 0), v80, vmul_f32(v80, v81));
        v84 = vrecpe_f32(v83);
        v85 = 4;
        do
        {
          v84 = vmul_f32(v84, vrecps_f32(v83, v84));
          --v85;
        }

        while (v85);
        v86 = vmulq_n_f32(v78, v84.f32[0]);
        v87 = v86;
        v87.i32[3] = 0;
        v88 = vaddq_f32(v153, vmlsq_lane_f32(v77, v87, v152, 0));
        v89 = *(a7 + 4096);
        *(a7 + 4096) = v89 + 1;
        v86.i32[3] = vsub_f32(v83, v39).i32[1];
        v90 = (a7 + (v89 << 6));
        *v90 = v86;
        v90[1].i64[0] = v88.i64[0];
        v90[1].i32[2] = v88.i32[2];
        v90[3].i32[1] = -1;
        ++v76;
      }
    }

    if (vdup_lane_s8(v71, 4).u32[0] == -1)
    {
      v91 = vmlaq_laneq_f32(v155, v157, v69, 2);
      v91.i64[1] = vextq_s8(v91, v91, 8uLL).u32[0];
      v92 = vsubq_f32(v156, v91);
      v93 = vmulq_f32(v92, v92);
      v93.i64[0] = vpaddq_f32(v93, v93).u64[0];
      v94 = vpadd_f32(*v93.f32, *v93.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v94, vdup_n_s32(0x358637BDu)), vcgt_f32(v34, v94)), 0), v35).u32[0] == -1)
      {
        v95 = vrsqrte_f32(v94);
        v96 = 4;
        do
        {
          v95 = vmul_f32(v95, vrsqrts_f32(vmul_f32(v95, v95), v94));
          --v96;
        }

        while (v96);
        v97 = vbsl_s8(vdup_lane_s32(vceqz_f32(v94), 0), v94, vmul_f32(v94, v95));
        v98 = vrecpe_f32(v97);
        v99 = 4;
        do
        {
          v98 = vmul_f32(v98, vrecps_f32(v97, v98));
          --v99;
        }

        while (v99);
        v100 = vmulq_n_f32(v92, v98.f32[0]);
        v101 = v100;
        v101.i32[3] = 0;
        v102 = vaddq_f32(v153, vmlsq_lane_f32(v156, v101, v152, 0));
        v103 = *(a7 + 4096);
        *(a7 + 4096) = v103 + 1;
        v100.i32[3] = vsub_f32(v97, v39).i32[1];
        v104 = (a7 + (v103 << 6));
        *v104 = v100;
        v104[1].i64[0] = v102.i64[0];
        v104[1].i32[2] = v102.i32[2];
        v104[3].i32[1] = -1;
        ++v76;
      }
    }

    if (vdup_lane_s8(v71, 6).u32[0] == -1)
    {
      v105 = vmlaq_laneq_f32(v155, v157, v69, 3);
      v105.i64[1] = vextq_s8(v105, v105, 8uLL).u32[0];
      v106 = vsubq_f32(v151, v105);
      v107 = vmulq_f32(v106, v106);
      v107.i64[0] = vpaddq_f32(v107, v107).u64[0];
      v108 = vpadd_f32(*v107.f32, *v107.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v108, vdup_n_s32(0x358637BDu)), vcgt_f32(v34, v108)), 0), v35).u32[0] == -1)
      {
        v109 = vrsqrte_f32(v108);
        v110 = 4;
        do
        {
          v109 = vmul_f32(v109, vrsqrts_f32(vmul_f32(v109, v109), v108));
          --v110;
        }

        while (v110);
        v111 = vbsl_s8(vdup_lane_s32(vceqz_f32(v108), 0), v108, vmul_f32(v108, v109));
        v112 = vrecpe_f32(v111);
        v113 = 4;
        do
        {
          v112 = vmul_f32(v112, vrecps_f32(v111, v112));
          --v113;
        }

        while (v113);
        v114 = vmulq_n_f32(v106, v112.f32[0]);
        v115 = v114;
        v115.i32[3] = 0;
        v116 = vaddq_f32(v153, vmlsq_lane_f32(v151, v115, v152, 0));
        v117 = *(a7 + 4096);
        *(a7 + 4096) = v117 + 1;
        v114.i32[3] = vsub_f32(v111, v39).i32[1];
        v118 = (a7 + (v117 << 6));
        *v118 = v114;
        v118[1].i64[0] = v116.i64[0];
        v118[1].i32[2] = v116.i32[2];
        v118[3].i32[1] = -1;
        ++v76;
      }
    }

    if (!v76)
    {
LABEL_38:
      v119 = vmlaq_n_f32(v156, v158, v160.f32[0]);
      v119.i64[1] = vextq_s8(v119, v119, 8uLL).u32[0];
      v120 = vmlaq_n_f32(v155, v157, *&v159);
      v120.i64[1] = vextq_s8(v120, v120, 8uLL).u32[0];
      v121 = vdup_n_s32(0x358637BDu);
      v122 = vcgt_f32(v121, v35);
      v123 = vbslq_s8(vdupq_lane_s32(v122, 0), vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(v41, v121), 0)), v158, xmmword_1E3047670), vsubq_f32(v119, v120));
      v124 = vmulq_f32(v123, v123);
      v124.i64[0] = vpaddq_f32(v124, v124).u64[0];
      v125 = vpadd_f32(*v124.f32, *v124.f32);
      v126 = vrsqrte_f32(v125);
      v127 = 4;
      do
      {
        v126 = vmul_f32(v126, vrsqrts_f32(vmul_f32(v126, v126), v125));
        --v127;
      }

      while (v127);
      v128 = vbsl_s8(vdup_lane_s32(vceqz_f32(v125), 0), v125, vmul_f32(v125, v126));
      v129 = vrecpe_f32(v128);
      v130 = 4;
      do
      {
        v129 = vmul_f32(v129, vrecps_f32(v128, v129));
        --v130;
      }

      while (v130);
      v131 = vmulq_n_f32(v123, v129.f32[0]);
      v132 = v131;
      v132.i32[3] = 0;
      v133 = vmlsq_lane_f32(v119, v132, v152, 0);
      v134 = vrsqrte_f32(v35);
      v135 = 4;
      do
      {
        v134 = vmul_f32(v134, vrsqrts_f32(vmul_f32(v134, v134), v35));
        --v135;
      }

      while (v135);
      v136 = vaddq_f32(v153, v133);
      v137 = *(a7 + 4096);
      *(a7 + 4096) = v137 + 1;
      v131.i32[3] = vsub_f32(vand_s8(vdup_lane_s32(vmvn_s8(*&v122), 0), vbsl_s8(vcltz_s32(vshl_n_s32(vdup_lane_s32(vceqz_f32(*&v35), 0), 0x1FuLL)), v35, vmul_f32(*&v35, v134))), v39).i32[1];
      v138 = (a7 + (v137 << 6));
      *v138 = v131;
      v138[1].i64[0] = v136.i64[0];
      v138[1].i32[2] = v136.i32[2];
      v138[3].i32[1] = -1;
    }
  }

  return v38 & 1;
}

uint64_t physx::Gu::pcmContactCapsuleConvex(uint64_t a1, uint64_t a2, float32x4_t *a3, int32x4_t *a4, uint64_t a5, float32x4_t **a6, float32x4_t *a7)
{
  v261 = *MEMORY[0x1E69E9840];
  v8 = *a6;
  _X8 = *(a2 + 48);
  __asm { PRFM            #0, [X8] }

  v15 = *(a2 + 4);
  v16 = v15;
  v16.i32[3] = 0;
  v19 = *a5;
  v17 = vdup_lane_s32(*a5, 0);
  v18 = *(a1 + 8);
  v19.i32[0] = *(a1 + 4);
  v20 = vdup_lane_s32(v19, 0);
  v231 = v20;
  v232 = v17;
  v21.i64[0] = a3[1].i64[0];
  v21.i64[1] = a3[1].u32[2];
  v230[0] = *a3;
  v230[1] = v21;
  v22.i64[0] = a4[1].i64[0];
  v22.i64[1] = a4[1].u32[2];
  v229[0] = *a4;
  v229[1] = v22;
  v23 = vnegq_f32(v229[0]);
  v24 = vsubq_f32(v21, v22);
  v25 = v23;
  v25.i32[3] = 0;
  v26 = vdupq_laneq_s32(v229[0], 3).u64[0];
  v27 = vmulq_n_f32(v24, vmla_f32(0xBF000000BF000000, v26, v26).f32[0]);
  v27.i32[3] = 0;
  v28 = vextq_s8(v25, v25, 8uLL).u64[0];
  v29 = vext_s8(*v23.f32, v28, 4uLL);
  v30 = vmls_f32(vmul_f32(*v23.f32, *&vextq_s8(v24, v24, 4uLL)), v29, *v24.f32);
  *v31.f32 = vext_s8(v30, vmls_f32(vmul_f32(v28, *v24.f32), *v23.f32, *&vextq_s8(v24, v24, 8uLL)), 4uLL);
  v31.i64[1] = v30.u32[0];
  v32 = vmlaq_laneq_f32(v27, v31, v229[0], 3);
  v32.i64[1] = vextq_s8(v32, v32, 8uLL).u32[0];
  v33 = vmulq_f32(v25, v24);
  v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
  v34 = vmlaq_n_f32(v32, v25, vpadd_f32(*v33.f32, *v33.f32).f32[0]);
  v35 = vaddq_f32(v34, v34);
  v35.i32[3] = 0;
  v36 = v230[0];
  v36.i32[3] = 0;
  v37 = vmulq_f32(v36, v25);
  v38 = vmulq_laneq_f32(v36, v229[0], 3);
  v36.i64[0] = vextq_s8(v36, v36, 8uLL).u64[0];
  v39 = vmls_f32(vmul_f32(vext_s8(*v230[0].f32, *v36.f32, 4uLL), *v23.f32), v29, *v230[0].f32);
  *v40.f32 = vext_s8(v39, vmls_f32(vmul_f32(*v230[0].f32, v28), *v23.f32, *v36.f32), 4uLL);
  *&v40.u32[2] = v39;
  v41 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v25, v230[0], 3), v38), v40);
  *v38.f32 = vdup_lane_s32(*v41.f32, 1);
  *v25.f32 = vdup_laneq_s32(v41, 2);
  v23.i64[0] = vpaddq_f32(v37, v37).u64[0];
  _Q18 = vaddq_f32(v41, v41);
  v43 = vdup_laneq_s32(_Q18, 2);
  v44 = vdup_lane_s32(vmul_f32(*v41.f32, *_Q18.f32), 0);
  v45 = vsub_f32(vmul_f32(*&vextq_s8(v230[0], v230[0], 8uLL), *&vextq_s8(v229[0], v229[0], 8uLL)), vpadd_f32(*v23.f32, *v23.f32));
  *v33.f32 = vmul_lane_f32(*v38.f32, *_Q18.f32, 1);
  v46 = vmul_laneq_f32(*v25.f32, _Q18, 2);
  v47 = vmul_n_f32(*v38.f32, _Q18.f32[0]);
  v48 = vmul_n_f32(*v25.f32, _Q18.f32[0]);
  v49 = vmul_lane_f32(vdup_lane_s32(*_Q18.f32, 0), v45, 1);
  *v25.f32 = vmul_lane_f32(*v25.f32, *_Q18.f32, 1);
  *_Q18.f32 = vmul_lane_f32(vdup_lane_s32(*_Q18.f32, 1), v45, 1);
  *v37.f32 = vmul_lane_f32(v43, v45, 1);
  __asm { FMOV            V6.2S, #1.0 }

  v51 = vsub_f32(_D6, v44);
  *v52.f32 = vext_s8(vsub_f32(vsub_f32(_D6, *v33.f32), v46), vadd_f32(v47, *v37.f32), 4uLL);
  v52.i64[1] = vsub_f32(v48, *_Q18.f32).u32[0];
  *v53.f32 = vext_s8(vsub_f32(v47, *v37.f32), vsub_f32(v51, v46), 4uLL);
  v53.i64[1] = vadd_f32(*v25.f32, v49).u32[0];
  v225 = v52;
  v226 = v53;
  *v54.f32 = vext_s8(vadd_f32(v48, *_Q18.f32), vsub_f32(*v25.f32, v49), 4uLL);
  v54.i64[1] = vsub_f32(v51, *v33.f32).u32[0];
  v227 = v54;
  v228 = v35;
  v25.i64[0] = *(_X8 + 60);
  v25.i64[1] = *(_X8 + 68);
  v55 = vmulq_f32(v16, v25);
  *v33.f32 = vdup_laneq_s32(v55, 2);
  *v55.i8 = vpmin_f32(*v33.f32, *v55.i8);
  v219 = *(a5 + 8);
  v33.f32[0] = v219 * 0.05;
  __asm { FMOV            V18.2S, #0.25 }

  *v55.i8 = vmin_f32(vmul_f32(vpmin_f32(*v55.i8, *v55.i8), *_Q18.f32), vdup_lane_s32(*v33.f32, 0));
  v56 = vmin_f32(*v55.i8, vmul_n_f32(vdup_n_s32(0x3D4CCCCDu), *v19.i32));
  v57 = v8[4].u8[0];
  if (v8[4].i8[0])
  {
    __asm { FMOV            V16.2S, #1.25 }

    v59 = vmul_f32(v56, _D16);
    *v55.i8 = vmul_f32(v59, v59);
    v60 = 48 * v57;
    do
    {
      v61 = v8[5].i64[0];
      v62 = (v61 + v60 - 48);
      v63 = vmulq_n_f32(v52, COERCE_FLOAT(*v62));
      v63.i32[3] = 0;
      v64 = vmulq_lane_f32(v53, *v62->f32, 1);
      v64.i32[3] = 0;
      v65 = vmulq_laneq_f32(v54, *v62, 2);
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
      if (vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v74.f32, *v74.f32), *v55.i8), 0), v19).u32[0] == -1)
      {
        v75 = v8[4].i8[0] - 1;
        v8[4].i8[0] = v75;
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
    v79 = v8[4].u8[0];
  }

  else
  {
    v79 = 0;
  }

  v41.i32[3] = v45.i32[1];
  if (v79 == v57)
  {
    v55 = vabdq_f32(v35, v8[1]);
    *v55.i8 = vpmax_f32(*&vextq_s8(v55, v55, 8uLL), *v55.i8);
    v80 = (&physx::Gu::invalidateQuatThresholds2 + 4 * v57);
    v81 = vld1_dup_f32(v80);
    v82 = vmulq_f32(v41, *v8);
    v82.i64[0] = vpaddq_f32(v82, v82).u64[0];
    v83 = vcgt_f32(vpmax_f32(*v55.i8, *v55.i8), vmul_n_f32(v56, physx::Gu::invalidateThresholds2[v57]));
    *v55.i8 = vcgt_f32(v81, vpadd_f32(*v82.f32, *v82.f32));
    if (vuzp1_s8(vdup_lane_s16(vorr_s8(*v55.i8, v83), 0), v19).u32[0] != -1)
    {
      if (!v57)
      {
        return 0;
      }

      v84 = v8[5].i64[0];
      v85 = *(v84 + 32);
      v86 = v85;
      if (v57 != 1)
      {
        v87 = v57 - 1;
        v88 = (v84 + 80);
        v86 = v85;
        do
        {
          v89 = *v88;
          v88 += 3;
          v86 = vaddq_f32(v86, v89);
          --v87;
        }

        while (v87);
      }

      v86.i32[3] = 0;
      v90 = vmulq_f32(v86, v86);
      v90.i64[0] = vpaddq_f32(v90, v90).u64[0];
      v85.i32[3] = 0;
      v91 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v90.f32, *v90.f32), 0x3400000034000000), 0)), 0x1FuLL)), v86, v85);
      v92 = v229[0];
      v92.i32[3] = 0;
      v93 = vdupq_laneq_s32(v229[0], 3).u64[0];
      v94 = vmulq_n_f32(v91, vmla_f32(0xBF000000BF000000, v93, v93).f32[0]);
      v94.i32[3] = 0;
      v95 = vextq_s8(v92, v92, 8uLL).u64[0];
      v96 = vextq_s8(v91, v91, 8uLL).u64[0];
      v97 = vmls_f32(vmul_f32(*v229[0].i8, vext_s8(*v91.f32, v96, 4uLL)), vext_s8(*v229[0].i8, v95, 4uLL), *v91.f32);
      *v98.f32 = vext_s8(v97, vmls_f32(vmul_f32(v95, *v91.f32), *v229[0].i8, v96), 4uLL);
      v98.i64[1] = v97.u32[0];
      v99 = vmlaq_laneq_f32(v94, v98, v229[0], 3);
      v99.i64[1] = vextq_s8(v99, v99, 8uLL).u32[0];
      v100 = vmulq_f32(v92, v91);
      v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
      v101 = vmlaq_n_f32(v99, v92, vpadd_f32(*v100.f32, *v100.f32).f32[0]);
      v102 = vaddq_f32(v101, v101);
      v102.i32[3] = 0;
      v103 = vmulq_f32(v102, v102);
      v103.i64[0] = vpaddq_f32(v103, v103).u64[0];
      v104 = vpadd_f32(*v103.f32, *v103.f32);
      v105 = vrsqrte_f32(v104);
      v106 = 4;
      do
      {
        v105 = vmul_f32(v105, vrsqrts_f32(vmul_f32(v105, v105), v104));
        --v106;
      }

      while (v106);
      v107 = vbsl_s8(vdup_lane_s32(vceqz_f32(v104), 0), v104, vmul_f32(v104, v105));
      v108 = vrecpe_f32(v107);
      v109 = 4;
      do
      {
        v108 = vmul_f32(v108, vrecps_f32(v107, v108));
        --v109;
      }

      while (v109);
      v110 = vmulq_n_f32(v102, v108.f32[0]);
      v110.i32[3] = 0;
      v246 = v110;
      v111 = &v246;
      v112 = &v246;
      goto LABEL_48;
    }
  }

  v113 = 0;
  if (*(a2 + 4) == 1.0 && *(a2 + 8) == 1.0)
  {
    v113 = *(a2 + 12) == 1.0;
  }

  *v8 = v41;
  v8[1] = v35;
  v114 = *(a2 + 16);
  v55.i32[0] = *(_X8 + 24);
  v115 = v55;
  v115.i32[1] = *(_X8 + 28);
  v116 = v115;
  v116.i32[2] = *(_X8 + 32);
  v249 = 0;
  v250 = 0;
  v246 = v116;
  v257 = _X8;
  v259 = *(_X8 + 40) + 20 * *(_X8 + 39);
  v260 = *(_X8 + 38);
  v117.i64[0] = *(_X8 + 60);
  v117.i64[1] = *(_X8 + 68);
  v118 = vmulq_f32(v16, v117);
  *v118.i8 = vpmin_f32(vdup_laneq_s32(v118, 2), *v118.i8);
  *v118.i32 = vpmin_f32(*v118.i8, *v118.i8).f32[0];
  v247 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v118.i32);
  v248 = 0.025 * *v118.i32;
  if (v113)
  {
    v251 = xmmword_1E3047670;
    v252 = xmmword_1E3047680;
    v253 = xmmword_1E30476A0;
    v254 = xmmword_1E3047670;
    v255 = xmmword_1E3047680;
    v256 = xmmword_1E30476A0;
  }

  else
  {
    v119 = vrecpeq_f32(v16);
    v120 = 4;
    do
    {
      v119 = vmulq_f32(v119, vrecpsq_f32(v119, v16));
      --v120;
    }

    while (v120);
    *v121.f32 = vdup_lane_s32(*v15.f32, 0);
    v121.i64[1] = v121.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v121, v16)), v19).u32[0] & 0xFFFFFF) != 0)
    {
      v126 = vdup_lane_s32(*v114.f32, 1);
      v127 = vdup_laneq_s32(v114, 2);
      v128 = vdup_laneq_s32(v114, 3);
      v129 = vaddq_f32(v114, v114);
      v130 = vmul_lane_f32(v126, *v129.f32, 1);
      v131 = vmul_laneq_f32(v127, v129, 2);
      v132 = vmul_n_f32(v126, v129.f32[0]);
      v133 = vmul_n_f32(v127, v129.f32[0]);
      v134 = vmul_n_f32(v128, v129.f32[0]);
      v135 = vmul_lane_f32(v127, *v129.f32, 1);
      v136 = vmul_lane_f32(v128, *v129.f32, 1);
      v137 = vmul_laneq_f32(v128, v129, 2);
      v138 = vsub_f32(_D6, vdup_lane_s32(vmul_f32(*v114.f32, *v129.f32), 0));
      v139 = vsub_f32(vsub_f32(_D6, v130), v131);
      v140 = vadd_f32(v132, v137);
      *v129.f32 = vsub_f32(v133, v136);
      v141 = vsub_f32(v132, v137);
      v142 = vsub_f32(v138, v131);
      v143 = vadd_f32(v135, v134);
      v144 = vadd_f32(v133, v136);
      v145 = vsub_f32(v135, v134);
      v146 = vext_s8(v144, v145, 4uLL);
      *v147.f32 = vext_s8(v139, *&vdupq_lane_s32(v141, 1), 4uLL);
      v147.i64[1] = vdup_lane_s32(v146, 0).u32[0];
      v148 = vsub_f32(v138, v130);
      *v149.f32 = vext_s8(*&vdupq_lane_s32(v140, 0), v142, 4uLL);
      v149.i64[1] = vdup_lane_s32(v146, 1).u32[0];
      *v150.f32 = vext_s8(*&vdupq_lane_s32(*v129.f32, 0), v143, 4uLL);
      v150.i64[1] = vdup_lane_s32(v148, 0).u32[0];
      v151 = vmulq_n_f32(v147, v15.f32[0]);
      v151.i32[3] = 0;
      v152 = vmulq_lane_f32(v149, *v15.f32, 1);
      v152.i32[3] = 0;
      v153 = vmulq_laneq_f32(v150, v15, 2);
      v153.i32[3] = 0;
      v154 = vmulq_lane_f32(v151, v139, 1);
      v154.i32[3] = 0;
      v155 = vmulq_n_f32(v152, *v140.i32);
      v155.i32[3] = 0;
      v156 = vmulq_n_f32(v153, v129.f32[0]);
      v156.i32[3] = 0;
      v122 = vaddq_f32(v156, vaddq_f32(v154, v155));
      v157 = vmulq_lane_f32(v151, v141, 1);
      v157.i32[3] = 0;
      v158 = vmulq_n_f32(v152, *v142.i32);
      v158.i32[3] = 0;
      v159 = vmulq_n_f32(v153, *v143.i32);
      v159.i32[3] = 0;
      v160 = vaddq_f32(v157, v158);
      v161 = vmulq_lane_f32(v151, v144, 1);
      v161.i32[3] = 0;
      v162 = vmulq_n_f32(v152, *v145.i32);
      v162.i32[3] = 0;
      v163 = vmulq_n_f32(v153, *v148.i32);
      v163.i32[3] = 0;
      v123 = vaddq_f32(v159, v160);
      v124 = vaddq_f32(v163, vaddq_f32(v161, v162));
      v251 = v122;
      v252 = v123;
      v164 = vmulq_n_f32(v147, v119.f32[0]);
      v164.i32[3] = 0;
      v165 = vmulq_lane_f32(v149, *v119.f32, 1);
      v165.i32[3] = 0;
      v166 = vmulq_laneq_f32(v150, v119, 2);
      v166.i32[3] = 0;
      v167 = vmulq_lane_f32(v164, v139, 1);
      v167.i32[3] = 0;
      v168 = vmulq_n_f32(v165, *v140.i32);
      v168.i32[3] = 0;
      v169 = vmulq_n_f32(v166, v129.f32[0]);
      v169.i32[3] = 0;
      v170 = vmulq_lane_f32(v164, v141, 1);
      v170.i32[3] = 0;
      v171 = vmulq_n_f32(v165, *v142.i32);
      v171.i32[3] = 0;
      v172 = vmulq_n_f32(v166, *v143.i32);
      v172.i32[3] = 0;
      v173 = vmulq_lane_f32(v164, v144, 1);
      v173.i32[3] = 0;
      v174 = vmulq_n_f32(v165, *v145.i32);
      v174.i32[3] = 0;
      v175 = vmulq_n_f32(v166, *v148.i32);
      v175.i32[3] = 0;
      v125 = vaddq_f32(v175, vaddq_f32(v173, v174));
      v253 = v124;
      v254 = vaddq_f32(v169, vaddq_f32(v167, v168));
      v255 = vaddq_f32(v172, vaddq_f32(v170, v171));
      v52 = v225;
      v53 = v226;
      v54 = v227;
      v35 = v228;
    }

    else
    {
      v119.i32[3] = 0;
      v122 = vmulq_f32(v16, xmmword_1E3047670);
      v123 = vmulq_f32(v16, xmmword_1E3047680);
      v124 = vmulq_f32(v16, xmmword_1E30476A0);
      v251 = v122;
      v252 = v123;
      v125 = vmulq_f32(v119, xmmword_1E30476A0);
      v253 = v124;
      v254 = vmulq_f32(v119, xmmword_1E3047670);
      v255 = vmulq_f32(v119, xmmword_1E3047680);
    }

    v176 = vmulq_n_f32(v122, *v55.i32);
    v176.i32[3] = 0;
    v177 = vmulq_lane_f32(v123, *v115.f32, 1);
    v177.i32[3] = 0;
    v178 = vmulq_laneq_f32(v124, v116, 2);
    v178.i32[3] = 0;
    v116 = vaddq_f32(v178, vaddq_f32(v177, v176));
    v256 = v125;
    v246 = v116;
  }

  v179 = vmulq_n_f32(xmmword_1E3047670, *&v18);
  v216 = v53;
  v217 = v52;
  v180 = vmulq_n_f32(v52, v179.f32[0]);
  v180.i32[3] = 0;
  v181 = vmulq_lane_f32(v53, *v179.f32, 1);
  v181.i32[3] = 0;
  v215 = v54;
  v182 = vmulq_laneq_f32(v54, v179, 2);
  v182.i32[3] = 0;
  v258 = *(_X8 + 48);
  v183 = vaddq_f32(v181, v180);
  v184 = vaddq_f32(v182, v183);
  v241 = 4;
  v237 = v35;
  v245 = v20;
  v185 = vaddq_f32(v35, v184);
  v186 = vsubq_f32(v35, v184);
  v243 = v185;
  v244 = v186;
  v238 = v19.i32[0];
  v239 = v19.i32[0];
  v240 = v19.i32[0];
  v242 = 1;
  v236 = 0;
  v233 = 0u;
  v234 = 0u;
  v235[0] = 0u;
  v224[1] = &v237;
  v224[0] = &unk_1F5D217B8;
  v218 = v35;
  v187 = vsubq_f32(v35, v116);
  v223 = v187;
  if (!v113)
  {
    v222.i64[1] = &v246;
    v222.i64[0] = &unk_1F5D21818;
    result = physx::Gu::gjkPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(v224, &v222, &v223, &v232, 1, &v8[4].i8[3], &v8[4].i8[7], &v8[4].i8[2], *v187.i64, *v185.i64, *v186.f32, v183, *v181.f32, &v233);
    if (!result)
    {
      return result;
    }

LABEL_35:
    if (result == 4)
    {
      return physx::Gu::fullContactsGenerationCapsuleConvex(&v237, &v246, &v225, v230, v229, a7, a7, v113, v247.f32[0], v219, v8, v235, &v234, &v232, 1);
    }

    v221 = vmul_f32(v56, vdup_n_s32(0x3D4CCCCDu));
    if (result == 2)
    {
      v189 = v234;
      v190 = vsubq_f32(v233, v218);
      v191 = vmulq_f32(v217, v190);
      v191.i64[0] = vpaddq_f32(v191, v191).u64[0];
      v192 = vmulq_f32(v216, v190);
      v192.i64[0] = vpaddq_f32(v192, v192).u64[0];
      v193 = vmulq_f32(v215, v190);
      v193.i64[0] = vpaddq_f32(v193, v193).u64[0];
      *v191.f32 = vext_s8(vpadd_f32(*v191.f32, *v191.f32), vpadd_f32(*v192.f32, *v192.f32), 4uLL);
      v191.i64[1] = vpadd_f32(*v193.f32, *v193.f32).u32[0];
      v194 = v235[0];
      v194.i32[3] = HIDWORD(v236);
      v222 = v191;
      v220 = v194;
      *a7 = v191;
      a7[1] = v189;
    }

    else
    {
      v222.i64[1] = &v246;
      if (v113)
      {
        v195 = &unk_1F5D22C50;
      }

      else
      {
        v195 = &unk_1F5D21818;
      }

      v222.i64[0] = v195;
      if (physx::Gu::epaPenetration(v224) != 5)
      {
        v203 = 1;
        return physx::Gu::fullContactsGenerationCapsuleConvex(&v237, &v246, &v225, v230, v229, a7, a7, v113, v247.f32[0], v219, v8, v235, &v234, &v232, v203);
      }

      v196 = v234;
      v197 = vsubq_f32(v233, v228);
      v198 = vmulq_f32(v225, v197);
      v199 = vmulq_f32(v197, v226);
      v200 = vmulq_f32(v197, v227);
      v201 = vpaddq_f32(v198, v198).u64[0];
      v198.i64[0] = vpaddq_f32(v199, v199).u64[0];
      v200.i64[0] = vpaddq_f32(v200, v200).u64[0];
      *v202.f32 = vext_s8(vpadd_f32(v201, v201), vpadd_f32(*v198.f32, *v198.f32), 4uLL);
      v202.i64[1] = vpadd_f32(*v200.f32, *v200.f32).u32[0];
      v194 = v235[0];
      v194.i32[3] = HIDWORD(v236);
      v222 = v202;
      v220 = v194;
      *a7 = v202;
      a7[1] = v196;
    }

    a7[2] = v194;
    physx::Gu::PersistentContactManifold::addManifoldPoint2(v8, &v222, &v234, &v220, &v221);
    v203 = 0;
    if (v57 && v79 == v57)
    {
      v204 = v229[0];
      v204.i32[3] = 0;
      v205 = vdupq_laneq_s32(v229[0], 3).u64[0];
      v206 = vmulq_n_f32(v235[0], vmla_f32(0xBF000000BF000000, v205, v205).f32[0]);
      v206.i32[3] = 0;
      v207 = vextq_s8(v204, v204, 8uLL).u64[0];
      v208 = vextq_s8(v235[0], v235[0], 8uLL).u64[0];
      v209 = vmls_f32(vmul_f32(*v229[0].i8, vext_s8(*v235[0].f32, v208, 4uLL)), vext_s8(*v229[0].i8, v207, 4uLL), *v235[0].f32);
      *v210.f32 = vext_s8(v209, vmls_f32(vmul_f32(v207, *v235[0].f32), *v229[0].i8, v208), 4uLL);
      v210.i64[1] = v209.u32[0];
      v211 = vmlaq_laneq_f32(v206, v210, v229[0], 3);
      v211.i64[1] = vextq_s8(v211, v211, 8uLL).u32[0];
      v212 = vmulq_f32(v204, v235[0]);
      v212.i64[0] = vpaddq_f32(v212, v212).u64[0];
      v213 = vmlaq_n_f32(v211, v204, vpadd_f32(*v212.f32, *v212.f32).f32[0]);
      v214 = vaddq_f32(v213, v213);
      v214.i32[3] = 0;
      v222 = v214;
      v111 = &v222;
      v112 = &v222;
LABEL_48:
      physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(v8, a7, v111, v112, v230, &v231, &v232);
      return 1;
    }

    return physx::Gu::fullContactsGenerationCapsuleConvex(&v237, &v246, &v225, v230, v229, a7, a7, v113, v247.f32[0], v219, v8, v235, &v234, &v232, v203);
  }

  v222.i64[1] = &v246;
  v222.i64[0] = &unk_1F5D22C50;
  result = physx::Gu::gjkPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullNoScaleV>>(v224, &v222, &v223, &v232, 1, &v8[4].i8[3], &v8[4].i8[7], &v8[4].i8[2], *v187.i64, *v185.i64, *v186.f32, v183, *v181.f32, &v233);
  if (result)
  {
    goto LABEL_35;
  }

  return result;
}

uint64_t physx::Gu::gjkPenetration<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullNoScaleV>>(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t *a4, int a5, _BYTE *a6, _BYTE *a7, _BYTE *a8, double a9, double a10, int8x8_t a11, float32x4_t a12, int8x8_t a13, uint64_t a14)
{
  v14 = a7;
  v15 = a6;
  v358 = *MEMORY[0x1E69E9840];
  v18 = *(a1 + 8);
  v19 = (v18 + 20);
  v20 = vld1_dup_f32(v19);
  v21 = *(a2 + 8);
  v22 = (v21 + 20);
  v23 = vld1_dup_f32(v22);
  a11.i32[0] = *(v18 + 16);
  a12.i32[0] = *(v21 + 16);
  a13.i32[0] = -*(v18 + 32);
  v24 = vand_s8(a13, a11);
  v25 = vdup_lane_s32(v24, 0);
  v24.i32[0] = -*(v21 + 32);
  v26 = vdup_lane_s32(vand_s8(v24, *a12.f32), 0);
  v27 = vmul_f32(vmin_f32(v20, v23), vdup_n_s32(0x3DCCCCCDu));
  v328 = v25;
  v329 = v26.f32[0];
  v28 = vadd_f32(v25, v26);
  v29 = *a4;
  v340 = 0uLL;
  v339 = 0;
  v30 = *a8;
  __asm { FMOV            V9.2S, #1.0 }

  v332 = v28;
  if (!*a8)
  {
    v52 = vmulq_f32(*a3, *a3);
    v52.i64[0] = vpaddq_f32(v52, v52).u64[0];
    v44 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v52.f32, *v52.f32)), 0)), *a3, xmmword_1E3047670);
    v340 = v44;
    v53 = vmulq_f32(v44, v44);
    v53.i64[0] = vpaddq_f32(v53, v53).u64[0];
    v54 = vpadd_f32(*v53.f32, *v53.f32);
    v55 = vrsqrte_f32(v54);
    v56 = 4;
    do
    {
      v55 = vmul_f32(v55, vrsqrts_f32(vmul_f32(v55, v55), v54));
      --v56;
    }

    while (v56);
    v57 = vbsl_s8(vdup_lane_s32(vceqz_f32(v54), 0), v54, vmul_f32(v54, v55));
    v58 = vrecpe_f32(v57);
    v59 = 4;
    do
    {
      *a12.f32 = vrecps_f32(v57, v58);
      v58 = vmul_f32(v58, *a12.f32);
      --v59;
    }

    while (v59);
    v60 = vmulq_n_f32(v44, v58.f32[0]);
    v60.i32[3] = 0;
    v335 = v60;
    v61 = vneg_f32(0x80000000800000);
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v63 = 0uLL;
    goto LABEL_52;
  }

  v36 = 0;
  v37 = v18 + 48;
  v38 = *(v21 + 160);
  v39 = -1;
  do
  {
    v40 = a6[v36];
    *(&v346 + v36) = v40;
    v41 = a7[v36];
    *(&v343 + v36) = v41;
    v42 = *(v37 + 16 * (1 - v40));
    v43 = *(v38 + 12 * v41);
    v43.i32[3] = 0;
    v44 = vsubq_f32(v42, v43);
    *(&v352 + v36) = v42;
    *(&v349 + v36) = v43;
    *(&v355 + v36) = v44;
    ++v39;
    ++v36;
  }

  while (v30 != v36);
  v339 = v30;
  if (v39 == 3)
  {
    v336 = v29;
    physx::Gu::closestPtPointTetrahedron(&v355, &v352, &v349, &v346, &v343, &v339);
    LODWORD(v29) = v336;
    v28.i32[0] = v332.i32[0];
    goto LABEL_47;
  }

  if (v39 != 2)
  {
    if (v39 != 1)
    {
      goto LABEL_47;
    }

    v44 = v355;
    v45 = vsubq_f32(v356, v355);
    v46 = vmulq_f32(v45, v45);
    v46.i64[0] = vpaddq_f32(v46, v46).u64[0];
    v47 = vpadd_f32(*v46.f32, *v46.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v47), 0), *v355.f32).u32[0] != -1)
    {
      v48 = vnegq_f32(v355);
      v48.i32[3] = 0;
      v49 = vmulq_f32(v48, v45);
      a12 = vpaddq_f32(v49, v49);
      *a12.f32 = vpadd_f32(*a12.f32, *a12.f32);
      v50 = vrecpe_f32(v47);
      v51 = 4;
      do
      {
        v50 = vmul_f32(v50, vrecps_f32(v47, v50));
        --v51;
      }

      while (v51);
      v44 = vmlaq_n_f32(v355, v45, vmax_f32(vmin_f32(vmul_f32(*a12.f32, v50), _D9), 0).f32[0]);
LABEL_31:
      v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
      goto LABEL_47;
    }

LABEL_32:
    v339 = 1;
    goto LABEL_47;
  }

  v339 = 3;
  v44 = v355;
  a12 = vsubq_f32(v356, v355);
  v64 = vsubq_f32(v357[0], v355);
  v66 = vmls_f32(vmul_f32(*a12.f32, *&vextq_s8(v64, v64, 4uLL)), *&vextq_s8(a12, a12, 4uLL), *v64.f32);
  *v65.f32 = vext_s8(v66, vmls_f32(vmul_f32(*&vextq_s8(a12, a12, 8uLL), *v64.f32), *a12.f32, *&vextq_s8(v64, v64, 8uLL)), 4uLL);
  v66.i32[1] = 0;
  v67 = vpadd_f32(vmul_f32(*v65.f32, *v65.f32), vmul_f32(v66.u32[0], v66.u32[0]));
  v68 = vpadd_f32(v67, v67);
  if (v68.f32[0] <= 0.00000011921)
  {
    v339 = 2;
    v107 = vmulq_f32(a12, a12);
    v107.i64[0] = vpaddq_f32(v107, v107).u64[0];
    v108 = vpadd_f32(*v107.f32, *v107.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v108), 0), *v355.f32).u32[0] != -1)
    {
      v109 = vnegq_f32(v355);
      v109.i32[3] = 0;
      v110 = vmulq_f32(v109, a12);
      v110.i64[0] = vpaddq_f32(v110, v110).u64[0];
      v111 = vpadd_f32(*v110.f32, *v110.f32);
      v112 = vrecpe_f32(v108);
      v113 = 4;
      do
      {
        v112 = vmul_f32(v112, vrecps_f32(v108, v112));
        --v113;
      }

      while (v113);
      v44 = vmlaq_n_f32(v355, a12, vmax_f32(vmin_f32(vmul_f32(v111, v112), _D9), 0).f32[0]);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  *&v65.u32[2] = v66;
  v69 = vextq_s8(v356, v356, 8uLL).u64[0];
  v70 = vextq_s8(v357[0], v357[0], 8uLL).u64[0];
  v71 = vextq_s8(v357[0], v357[0], 4uLL).u64[0];
  v72 = vextq_s8(v356, v356, 4uLL).u64[0];
  v73 = vmls_f32(vmul_f32(*v356.f32, v71), v72, *v357[0].i8);
  *v74.f32 = vext_s8(v73, vmls_f32(vmul_f32(v69, *v357[0].i8), *v356.f32, v70), 4uLL);
  v74.i64[1] = v73.u32[0];
  v75 = vextq_s8(v355, v355, 8uLL).u64[0];
  v76 = vextq_s8(v355, v355, 4uLL).u64[0];
  v77 = vmls_f32(vmul_f32(v76, *v357[0].i8), v71, *v355.f32);
  *v78.f32 = vext_s8(v77, vmls_f32(vmul_f32(*v355.f32, v70), *v357[0].i8, v75), 4uLL);
  v78.i64[1] = v77.u32[0];
  v79 = vmls_f32(vmul_f32(*v355.f32, v72), v76, *v356.f32);
  *v80.f32 = vext_s8(v79, vmls_f32(vmul_f32(v75, *v356.f32), *v355.f32, v69), 4uLL);
  v80.i64[1] = v79.u32[0];
  v81 = vmulq_f32(v74, v65);
  v81.i64[0] = vpaddq_f32(v81, v81).u64[0];
  v82 = vpadd_f32(*v81.f32, *v81.f32);
  v83 = vmulq_f32(v78, v65);
  v83.i64[0] = vpaddq_f32(v83, v83).u64[0];
  v84 = vpadd_f32(*v83.f32, *v83.f32);
  v85 = vmulq_f32(v80, v65);
  v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
  v86 = vpadd_f32(*v85.f32, *v85.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v84), vcgez_f32(v82)), vcgez_f32(v86)), 0), *v355.f32).u32[0] == -1)
  {
    v114 = vmulq_f32(v355, v65);
    v115 = vextq_s8(v114, v114, 8uLL).u64[0];
    v116 = vrecpe_f32(v68);
    v117 = 4;
    do
    {
      v116 = vmul_f32(v116, vrecps_f32(v68, v116));
      --v117;
    }

    while (v117);
    v118 = vpadd_f32(*v114.i8, v115);
    v44 = vmulq_n_f32(v65, vmul_f32(v116, vpadd_f32(v118, v118)).f32[0]);
    v44.i32[3] = 0;
    goto LABEL_47;
  }

  v87 = vnegq_f32(v355);
  v87.i32[3] = 0;
  v88 = vnegq_f32(v356);
  v88.i32[3] = 0;
  v89 = vmulq_f32(v87, a12);
  v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
  v90 = vpadd_f32(*v89.f32, *v89.f32);
  v91 = vmulq_f32(a12, v88);
  v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
  v92 = vpadd_f32(*v91.f32, *v91.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v86), vand_s8(vclez_f32(v92), vcgez_f32(v90))), 0), *v355.f32).u32[0] == -1)
  {
    v119 = vsub_f32(v90, v92);
    v120 = vrecpe_f32(v119);
    v121 = 4;
    do
    {
      v120 = vmul_f32(v120, vrecps_f32(v119, v120));
      --v121;
    }

    while (v121);
    v105 = 0;
    v44 = vmlaq_n_f32(v355, a12, vmul_f32(v90, vbsl_s8(vcgt_f32(vabs_f32(v119), 0x3400000034000000), v120, 0)).f32[0]);
    v104 = 2;
    v106 = &v344;
    v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
  }

  else
  {
    v93 = vnegq_f32(v357[0]);
    v93.i32[3] = 0;
    v94 = vmulq_f32(v88, v64);
    v94.i64[0] = vpaddq_f32(v94, v94).u64[0];
    v95 = vpadd_f32(*v94.f32, *v94.f32);
    v96 = vmulq_f32(a12, v93);
    v96.i64[0] = vpaddq_f32(v96, v96).u64[0];
    v97 = vpadd_f32(*v96.f32, *v96.f32);
    v98 = vmulq_f32(v64, v93);
    v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
    v99 = vpadd_f32(*v98.f32, *v98.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v95, v92), vcge_f32(v97, v99)), vclez_f32(v82)), 0), *v355.f32).u32[0] == -1)
    {
      v126 = vsub_f32(v95, v92);
      v127 = vadd_f32(v126, vsub_f32(v97, v99));
      v128 = vrecpe_f32(v127);
      v129 = 4;
      do
      {
        v128 = vmul_f32(v128, vrecps_f32(v127, v128));
        --v129;
      }

      while (v129);
      v130 = vmlaq_n_f32(v356, vsubq_f32(v357[0], v356), vmul_f32(v126, vbsl_s8(vcgt_f32(vabs_f32(v127), 0x3400000034000000), v128, 0)).f32[0]);
      v104 = 2;
      v105 = 1;
      v122 = &v348;
      v106 = &v345;
      v130.i64[1] = vextq_s8(v130, v130, 8uLL).u32[0];
      v124 = v354;
      v123 = v351;
      v125 = v357;
      v44 = v130;
      goto LABEL_46;
    }

    v100 = vmulq_f32(v87, v64);
    v101 = vpaddq_f32(v100, v100);
    *v101.i8 = vpadd_f32(*v101.i8, *v101.i8);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v84), vand_s8(vclez_f32(v99), vcgez_f32(*v101.i8))), 0), *v355.f32).u32[0] == -1)
    {
      v131 = vsub_f32(*v101.i8, v99);
      v132 = vrecpe_f32(v131);
      v133 = 4;
      do
      {
        v132 = vmul_f32(v132, vrecps_f32(v131, v132));
        --v133;
      }

      while (v133);
      v105 = 0;
      v44 = vmlaq_n_f32(v355, v64, vmul_f32(*v101.i8, vbsl_s8(vcgt_f32(vabs_f32(v131), 0x3400000034000000), v132, 0)).f32[0]);
      v104 = 2;
      v122 = &v348;
      v106 = &v345;
      v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
      v124 = v354;
      v123 = v351;
      v125 = v357;
      goto LABEL_46;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(*v101.i8), vclez_f32(v90)), 0), *v355.f32).u32[0] == -1)
    {
      v105 = 0;
      v104 = 1;
      v106 = &v344;
    }

    else
    {
      *v101.i8 = vcge_f32(v92, v95);
      *v44.f32 = vdup_lane_s16(vand_s8(*v101.i8, vcgez_f32(v92)), 0);
      *v44.f32 = vuzp1_s8(*v44.f32, *v44.f32);
      v101.i32[0] = -1;
      v102 = v44.i32[0];
      v103 = vdupq_lane_s32(*&vceqq_s32(v44, v101), 0);
      v104 = 1;
      if (v102 == -1)
      {
        v105 = 1;
      }

      else
      {
        v105 = 2;
      }

      v106 = &v344;
      v44 = vbslq_s8(v103, v356, v357[0]);
    }
  }

  v123 = &v350;
  v122 = &v347;
  v124 = &v353;
  v125 = &v356;
LABEL_46:
  v134 = *(&v355 + v105);
  v135 = *v125;
  a12 = *(&v352 + v105);
  v136 = *v124;
  v137 = *(&v349 + v105);
  v138 = *v123;
  v139 = *(&v346 + v105);
  v140 = *v122;
  v141 = *(&v343 + v105);
  v142 = *v106;
  v355 = v134;
  v356 = v135;
  v352 = a12;
  v353 = v136;
  v349 = v137;
  v350 = v138;
  v346 = v139;
  v347 = v140;
  v343 = v141;
  v344 = v142;
  v339 = v104;
LABEL_47:
  v340 = v44;
  v143 = vmulq_f32(v44, v44);
  v143.i64[0] = vpaddq_f32(v143, v143).u64[0];
  v144 = vpadd_f32(*v143.f32, *v143.f32);
  v145 = vrsqrte_f32(v144);
  v146 = 4;
  do
  {
    v145 = vmul_f32(v145, vrsqrts_f32(vmul_f32(v145, v145), v144));
    --v146;
  }

  while (v146);
  v61 = vbsl_s8(vdup_lane_s32(vceqz_f32(v144), 0), v144, vmul_f32(v144, v145));
  v147 = vrecpe_f32(v61);
  v148 = 4;
  do
  {
    *a12.f32 = vrecps_f32(v61, v147);
    v147 = vmul_f32(v147, *a12.f32);
    --v148;
  }

  while (v148);
  v149 = vmulq_n_f32(v44, v147.f32[0]);
  v149.i32[3] = 0;
  v335 = v149;
  v62 = vdupq_lane_s32(vcgt_f32(v61, v27), 0);
  v63 = v44;
LABEL_52:
  v150 = *&v29 + v28.f32[0];
  a12.i32[0] = -1;
  v327 = a12;
  v151 = v61;
  v152.i64[0] = -1;
  v152.i64[1] = -1;
  while (1)
  {
    v153 = v44;
    v154.i64[0] = -1;
    v154.i64[1] = -1;
    *v154.i8 = vmovn_s32(vceqq_s32(v62, v154));
    if (vuzp1_s8(*v154.i8, *v154.i8).u32[0] != -1)
    {
      break;
    }

    v337 = v61;
    v155 = vnegq_f32(v153);
    v155.i32[3] = 0;
    v156 = v339;
    v157 = *(a1 + 8);
    v158 = vmulq_f32(v155, v157[3]);
    v158.i64[0] = vpaddq_f32(v158, v158).u64[0];
    v159 = vmulq_f32(v155, v157[4]);
    v159.i64[0] = vpaddq_f32(v159, v159).u64[0];
    *v159.f32 = vand_s8(vcgt_f32(vpadd_f32(*v158.f32, *v158.f32), vpadd_f32(*v159.f32, *v159.f32)), 0x100000001);
    *(&v346 + v339) = v159.i32[0];
    v333 = v153;
    v334 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vdupq_lane_s32(*v159.f32, 0), 0x1FuLL)), v157[3], v157[4]);
    v160 = *(a2 + 8);
    v161 = physx::Gu::ConvexHullV::supportVertexIndex(v160, &v340);
    v162 = v335;
    *(&v343 + v156) = v161;
    v163 = *(*(v160 + 160) + 12 * v161);
    v163.i32[3] = 0;
    v44 = vsubq_f32(v334, v163);
    v164 = vmulq_f32(v335, v44);
    v164.i64[0] = vpaddq_f32(v164, v164).u64[0];
    v165 = vpadd_f32(*v164.f32, *v164.f32).f32[0];
    if (v165 > v150)
    {
      if (v15)
      {
        v271 = v339;
        *a8 = v339;
        if (v271)
        {
          v272 = &v343;
          v273 = &v346;
          do
          {
            v274 = *v273++;
            *v15++ = v274;
            v275 = *v272++;
            *v14++ = v275;
            --v271;
          }

          while (v271);
        }
      }

      return 0;
    }

    v166 = v337;
    v167 = v339;
    if (v165 > (0.99977 * v337.f32[0]))
    {
      v276 = v332;
      if (!v15)
      {
        goto LABEL_116;
      }

      *a8 = v339;
      if (v167)
      {
        v277 = &v343;
        v278 = &v346;
        v279 = v167;
        do
        {
          v280 = *v278++;
          *v15++ = v280;
          v281 = *v277++;
          *v14++ = v281;
          --v279;
        }

        while (v279);
LABEL_116:
        v282 = a14;
        *(a14 + 32) = v335;
        if (v167 != 3)
        {
          if (v167 == 2)
          {
            v294 = vsubq_f32(v355, v340);
            v295 = vsubq_f32(vsubq_f32(v356, v340), v294);
            v296 = vmulq_f32(v295, v295);
            v296.i64[0] = vpaddq_f32(v296, v296).u64[0];
            v297 = vpadd_f32(*v296.f32, *v296.f32);
            v298 = vrecpe_f32(v297);
            v299 = 4;
            v285 = a5;
            do
            {
              v298 = vmul_f32(v298, vrecps_f32(v297, v298));
              --v299;
            }

            while (v299);
            v300 = vnegq_f32(v294);
            v300.i32[3] = 0;
            v301 = vmulq_f32(v300, v295);
            v301.i64[0] = vpaddq_f32(v301, v301).u64[0];
            v300.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v297), v298, 0), vpadd_f32(*v301.f32, *v301.f32)).u32[0];
            v283 = vmlaq_n_f32(v352, vsubq_f32(v353, v352), v300.f32[0]);
            v283.i64[1] = vextq_s8(v283, v283, 8uLL).u32[0];
            v284 = vmlaq_n_f32(v349, vsubq_f32(v350, v349), v300.f32[0]);
            v284.i64[1] = vextq_s8(v284, v284, 8uLL).u32[0];
          }

          else
          {
            v283 = 0uLL;
            v284 = 0uLL;
            v285 = a5;
            if (v167 == 1)
            {
              v283 = v352;
              v284 = v349;
              if (!a5)
              {
LABEL_137:
                v307 = vmlsq_lane_f32(v283, v162, v328, 0);
                v307.i64[1] = vextq_s8(v307, v307, 8uLL).u32[0];
                v308 = vmlaq_n_f32(v284, v162, v329);
                v308.i64[1] = vextq_s8(v308, v308, 8uLL).u32[0];
                *v282 = v307;
                *(v282 + 16) = v308;
                *(v282 + 64) = vsub_f32(v166, v276);
                return 2;
              }

LABEL_134:
              *v282 = v283;
              *(v282 + 16) = v284;
              result = 2;
              *(v282 + 64) = v166;
              return result;
            }
          }

          if (!v285)
          {
            goto LABEL_137;
          }

          goto LABEL_134;
        }

        v341 = 0;
        v342 = 0;
        physx::Gu::barycentricCoordinates(&v340, &v355, &v356, v357, &v342, &v341);
        v162 = v335;
        v166 = v337;
        v276 = v332;
        v302 = vmulq_n_f32(vsubq_f32(v353, v352), v342.f32[0]);
        v302.i32[3] = 0;
        v303 = vmulq_n_f32(vsubq_f32(v354[0], v352), v341.f32[0]);
        v303.i32[3] = 0;
        v304 = vaddq_f32(v302, v303);
        v305 = vmulq_n_f32(vsubq_f32(v350, v349), v342.f32[0]);
        v305.i32[3] = 0;
        v283 = vaddq_f32(v352, v304);
        v306 = vmulq_n_f32(vsubq_f32(v351[0], v349), v341.f32[0]);
        v306.i32[3] = 0;
        v284 = vaddq_f32(v349, vaddq_f32(v305, v306));
      }

      else
      {
        v282 = a14;
        *(a14 + 32) = v335;
        v283 = 0uLL;
        v284 = 0uLL;
      }

      if (!a5)
      {
        goto LABEL_137;
      }

      goto LABEL_134;
    }

    *(&v352 + v339) = v334;
    *(&v349 + v167) = v163;
    v339 = v167 + 1;
    *(&v355 + v167) = v44;
    switch(v167)
    {
      case 3:
        physx::Gu::closestPtPointTetrahedron(&v355, &v352, &v349, &v346, &v343, &v339);
        v166 = v337;
        break;
      case 2:
        v44 = v355;
        v176 = vsubq_f32(v356, v355);
        v177 = vsubq_f32(v357[0], v355);
        v179 = vmls_f32(vmul_f32(*v176.f32, *&vextq_s8(v177, v177, 4uLL)), *&vextq_s8(v176, v176, 4uLL), *v177.f32);
        *v178.f32 = vext_s8(v179, vmls_f32(vmul_f32(*&vextq_s8(v176, v176, 8uLL), *v177.f32), *v176.f32, *&vextq_s8(v177, v177, 8uLL)), 4uLL);
        v179.i32[1] = 0;
        v339 = 3;
        v180 = vpadd_f32(vmul_f32(*v178.f32, *v178.f32), vmul_f32(v179.u32[0], v179.u32[0]));
        v181 = vpadd_f32(v180, v180);
        if (v181.f32[0] <= 0.00000011921)
        {
          v339 = 2;
          v220 = vmulq_f32(v176, v176);
          v220.i64[0] = vpaddq_f32(v220, v220).u64[0];
          v221 = vpadd_f32(*v220.f32, *v220.f32);
          if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v221), 0), *v355.f32).u32[0] == -1)
          {
LABEL_79:
            v339 = 1;
            break;
          }

          v222 = vnegq_f32(v355);
          v222.i32[3] = 0;
          v223 = vmulq_f32(v222, v176);
          v223.i64[0] = vpaddq_f32(v223, v223).u64[0];
          v224 = vpadd_f32(*v223.f32, *v223.f32);
          v225 = vrecpe_f32(v221);
          v226 = 4;
          do
          {
            v225 = vmul_f32(v225, vrecps_f32(v221, v225));
            --v226;
          }

          while (v226);
          v44 = vmlaq_n_f32(v355, v176, vmax_f32(vmin_f32(vmul_f32(v224, v225), _D9), 0).f32[0]);
          goto LABEL_78;
        }

        *&v178.u32[2] = v179;
        v182 = vextq_s8(v356, v356, 8uLL).u64[0];
        v183 = vextq_s8(v357[0], v357[0], 8uLL).u64[0];
        v184 = vextq_s8(v357[0], v357[0], 4uLL).u64[0];
        v185 = vextq_s8(v356, v356, 4uLL).u64[0];
        v186 = vmls_f32(vmul_f32(*v356.f32, v184), v185, *v357[0].i8);
        *v187.f32 = vext_s8(v186, vmls_f32(vmul_f32(v182, *v357[0].i8), *v356.f32, v183), 4uLL);
        v187.i64[1] = v186.u32[0];
        v188 = vextq_s8(v355, v355, 8uLL).u64[0];
        v189 = vextq_s8(v355, v355, 4uLL).u64[0];
        v190 = vmls_f32(vmul_f32(v189, *v357[0].i8), v184, *v355.f32);
        *v191.f32 = vext_s8(v190, vmls_f32(vmul_f32(*v355.f32, v183), *v357[0].i8, v188), 4uLL);
        v191.i64[1] = v190.u32[0];
        v192 = vmls_f32(vmul_f32(*v355.f32, v185), v189, *v356.f32);
        *v193.f32 = vext_s8(v192, vmls_f32(vmul_f32(v188, *v356.f32), *v355.f32, v182), 4uLL);
        v193.i64[1] = v192.u32[0];
        v194 = vmulq_f32(v187, v178);
        v194.i64[0] = vpaddq_f32(v194, v194).u64[0];
        v195 = vpadd_f32(*v194.f32, *v194.f32);
        v196 = vmulq_f32(v191, v178);
        v196.i64[0] = vpaddq_f32(v196, v196).u64[0];
        v197 = vpadd_f32(*v196.f32, *v196.f32);
        v198 = vmulq_f32(v193, v178);
        v198.i64[0] = vpaddq_f32(v198, v198).u64[0];
        v199 = vpadd_f32(*v198.f32, *v198.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v197), vcgez_f32(v195)), vcgez_f32(v199)), 0), *v355.f32).u32[0] != -1)
        {
          v200 = vnegq_f32(v355);
          v200.i32[3] = 0;
          v201 = vnegq_f32(v356);
          v201.i32[3] = 0;
          v202 = vmulq_f32(v200, v176);
          v202.i64[0] = vpaddq_f32(v202, v202).u64[0];
          v203 = vpadd_f32(*v202.f32, *v202.f32);
          v204 = vmulq_f32(v176, v201);
          v204.i64[0] = vpaddq_f32(v204, v204).u64[0];
          v205 = vpadd_f32(*v204.f32, *v204.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v199), vand_s8(vclez_f32(v205), vcgez_f32(v203))), 0), *v355.f32).u32[0] == -1)
          {
            v232 = vsub_f32(v203, v205);
            v233 = vrecpe_f32(v232);
            v234 = 4;
            do
            {
              v233 = vmul_f32(v233, vrecps_f32(v232, v233));
              --v234;
            }

            while (v234);
            v218 = 0;
            v44 = vmlaq_n_f32(v355, v176, vmul_f32(v203, vbsl_s8(vcgt_f32(vabs_f32(v232), 0x3400000034000000), v233, 0)).f32[0]);
            v217 = 2;
            v219 = &v344;
            v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
            goto LABEL_86;
          }

          v206 = vnegq_f32(v357[0]);
          v206.i32[3] = 0;
          v207 = vmulq_f32(v201, v177);
          v207.i64[0] = vpaddq_f32(v207, v207).u64[0];
          v208 = vpadd_f32(*v207.f32, *v207.f32);
          v209 = vmulq_f32(v176, v206);
          v209.i64[0] = vpaddq_f32(v209, v209).u64[0];
          v210 = vpadd_f32(*v209.f32, *v209.f32);
          v211 = vmulq_f32(v177, v206);
          v211.i64[0] = vpaddq_f32(v211, v211).u64[0];
          v212 = vpadd_f32(*v211.f32, *v211.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v208, v205), vcge_f32(v210, v212)), vclez_f32(v195)), 0), *v355.f32).u32[0] == -1)
          {
            v239 = vsub_f32(v208, v205);
            v240 = vadd_f32(v239, vsub_f32(v210, v212));
            v241 = vrecpe_f32(v240);
            v242 = 4;
            do
            {
              v241 = vmul_f32(v241, vrecps_f32(v240, v241));
              --v242;
            }

            while (v242);
            v243 = vmlaq_n_f32(v356, vsubq_f32(v357[0], v356), vmul_f32(v239, vbsl_s8(vcgt_f32(vabs_f32(v240), 0x3400000034000000), v241, 0)).f32[0]);
            v243.i64[1] = vextq_s8(v243, v243, 8uLL).u32[0];
            v217 = 2;
            v44 = v243;
            v218 = 1;
            v219 = &v345;
          }

          else
          {
            v213 = vmulq_f32(v200, v177);
            v213.i64[0] = vpaddq_f32(v213, v213).u64[0];
            v214 = vpadd_f32(*v213.f32, *v213.f32);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v197), vand_s8(vclez_f32(v212), vcgez_f32(v214))), 0), *v355.f32).u32[0] != -1)
            {
              if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v214), vclez_f32(v203)), 0), *v355.f32).u32[0] == -1)
              {
                v218 = 0;
                v217 = 1;
                v219 = &v344;
              }

              else
              {
                *v44.f32 = vdup_lane_s16(vand_s8(vcge_f32(v205, v208), vcgez_f32(v205)), 0);
                *v44.f32 = vuzp1_s8(*v44.f32, *v44.f32);
                v215 = v44.i32[0];
                v216 = vdupq_lane_s32(*&vceqq_s32(v44, v327), 0);
                v217 = 1;
                if (v215 == -1)
                {
                  v218 = 1;
                }

                else
                {
                  v218 = 2;
                }

                v219 = &v344;
                v44 = vbslq_s8(v216, v356, v357[0]);
              }

LABEL_86:
              v236 = &v350;
              v235 = &v347;
              v237 = &v353;
              v238 = &v356;
LABEL_94:
              v247 = *(&v355 + v218);
              v248 = *v238;
              v249 = *(&v352 + v218);
              v250 = *v237;
              v251 = *(&v349 + v218);
              v252 = *v236;
              v253 = *(&v346 + v218);
              v254 = *v235;
              v255 = *(&v343 + v218);
              v256 = *v219;
              v355 = v247;
              v356 = v248;
              v352 = v249;
              v353 = v250;
              v349 = v251;
              v350 = v252;
              v346 = v253;
              v347 = v254;
              v343 = v255;
              v344 = v256;
              v339 = v217;
              break;
            }

            v244 = vsub_f32(v214, v212);
            v245 = vrecpe_f32(v244);
            v246 = 4;
            do
            {
              v245 = vmul_f32(v245, vrecps_f32(v244, v245));
              --v246;
            }

            while (v246);
            v218 = 0;
            v44 = vmlaq_n_f32(v355, v177, vmul_f32(v214, vbsl_s8(vcgt_f32(vabs_f32(v244), 0x3400000034000000), v245, 0)).f32[0]);
            v217 = 2;
            v219 = &v345;
            v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
          }

          v236 = v351;
          v235 = &v348;
          v237 = v354;
          v238 = v357;
          goto LABEL_94;
        }

        v227 = vmulq_f32(v355, v178);
        v228 = vextq_s8(v227, v227, 8uLL).u64[0];
        v229 = vrecpe_f32(v181);
        v230 = 4;
        do
        {
          v229 = vmul_f32(v229, vrecps_f32(v181, v229));
          --v230;
        }

        while (v230);
        v231 = vpadd_f32(*v227.i8, v228);
        v44 = vmulq_n_f32(v178, vmul_f32(v229, vpadd_f32(v231, v231)).f32[0]);
        v44.i32[3] = 0;
        break;
      case 1:
        v44 = v355;
        v168 = vsubq_f32(v356, v355);
        v169 = vmulq_f32(v168, v168);
        v169.i64[0] = vpaddq_f32(v169, v169).u64[0];
        v170 = vpadd_f32(*v169.f32, *v169.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v170), 0), *v355.f32).u32[0] == -1)
        {
          goto LABEL_79;
        }

        v171 = vnegq_f32(v355);
        v171.i32[3] = 0;
        v172 = vmulq_f32(v171, v168);
        v172.i64[0] = vpaddq_f32(v172, v172).u64[0];
        v173 = vpadd_f32(*v172.f32, *v172.f32);
        v174 = vrecpe_f32(v170);
        v175 = 4;
        do
        {
          v174 = vmul_f32(v174, vrecps_f32(v170, v174));
          --v175;
        }

        while (v175);
        v44 = vmlaq_n_f32(v355, v168, vmax_f32(vmin_f32(vmul_f32(v173, v174), _D9), 0).f32[0]);
LABEL_78:
        v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
        break;
    }

    v340 = v44;
    v257 = vmulq_f32(v44, v44);
    v257.i64[0] = vpaddq_f32(v257, v257).u64[0];
    v258 = vpadd_f32(*v257.f32, *v257.f32);
    v259 = vrsqrte_f32(v258);
    v260 = 4;
    do
    {
      v259 = vmul_f32(v259, vrsqrts_f32(vmul_f32(v259, v259), v258));
      --v260;
    }

    while (v260);
    v61 = vbsl_s8(vdup_lane_s32(vceqz_f32(v258), 0), v258, vmul_f32(v258, v259));
    v261 = vrecpe_f32(v61);
    v262 = 4;
    do
    {
      v261 = vmul_f32(v261, vrecps_f32(v61, v261));
      --v262;
    }

    while (v262);
    v263 = vmulq_n_f32(v44, v261.f32[0]);
    v263.i32[3] = 0;
    v335 = v263;
    *v263.f32 = vcgt_f32(v166, v61);
    v152 = vdupq_lane_s32(*v263.f32, 0);
    v62 = vdupq_lane_s32(vand_s8(vcgt_f32(v61, v27), *v263.f32), 0);
    v151 = v166;
    v63 = v333;
  }

  v264 = vmovn_s32(vceqzq_s32(v152));
  v265 = v339;
  if (vuzp1_s8(v264, v264).u32[0] != -1)
  {
    if (v15)
    {
      *a8 = v339;
      if (v265)
      {
        v266 = &v343;
        v267 = &v346;
        do
        {
          v268 = *v267++;
          *v15++ = v268;
          v269 = *v266++;
          *v14++ = v269;
          --v265;
        }

        while (v265);
      }
    }

    return 5;
  }

  v286 = v332;
  if (v15)
  {
    v287 = v339 - 1;
    *a8 = v339 - 1;
    if (v265 != 1)
    {
      v288 = &v343;
      v289 = &v346;
      do
      {
        v290 = *v289++;
        *v15++ = v290;
        v291 = *v288++;
        *v14++ = v291;
        --v287;
      }

      while (v287);
      goto LABEL_125;
    }

LABEL_128:
    v292 = v352;
    v293 = v349;
  }

  else
  {
LABEL_125:
    v340 = v63;
    if (v265 == 3)
    {
      v341 = 0;
      v342 = 0;
      v338 = v63;
      physx::Gu::barycentricCoordinates(&v340, &v355, &v356, v357, &v342, &v341);
      v286 = v332;
      v317 = vmulq_n_f32(vsubq_f32(v353, v352), v342.f32[0]);
      v317.i32[3] = 0;
      v318 = vmulq_n_f32(vsubq_f32(v354[0], v352), v341.f32[0]);
      v318.i32[3] = 0;
      v319 = vaddq_f32(v317, v318);
      v320 = vmulq_n_f32(vsubq_f32(v350, v349), v342.f32[0]);
      v320.i32[3] = 0;
      v292 = vaddq_f32(v352, v319);
      v321 = vmulq_n_f32(vsubq_f32(v351[0], v349), v341.f32[0]);
      v63 = v338;
      v321.i32[3] = 0;
      v293 = vaddq_f32(v349, vaddq_f32(v320, v321));
    }

    else if (v265 == 2)
    {
      v309 = vsubq_f32(v355, v63);
      v310 = vsubq_f32(vsubq_f32(v356, v63), v309);
      v311 = vmulq_f32(v310, v310);
      v311.i64[0] = vpaddq_f32(v311, v311).u64[0];
      v312 = vpadd_f32(*v311.f32, *v311.f32);
      v313 = vrecpe_f32(v312);
      v314 = 4;
      do
      {
        v313 = vmul_f32(v313, vrecps_f32(v312, v313));
        --v314;
      }

      while (v314);
      v315 = vnegq_f32(v309);
      v315.i32[3] = 0;
      v316 = vmulq_f32(v315, v310);
      v316.i64[0] = vpaddq_f32(v316, v316).u64[0];
      v315.i32[0] = vmul_f32(vbsl_s8(vcgtz_f32(v312), v313, 0), vpadd_f32(*v316.f32, *v316.f32)).u32[0];
      v292 = vmlaq_n_f32(v352, vsubq_f32(v353, v352), v315.f32[0]);
      v292.i64[1] = vextq_s8(v292, v292, 8uLL).u32[0];
      v293 = vmlaq_n_f32(v349, vsubq_f32(v350, v349), v315.f32[0]);
      v293.i64[1] = vextq_s8(v293, v293, 8uLL).u32[0];
    }

    else
    {
      v292 = 0uLL;
      v293 = 0uLL;
      if (v265 == 1)
      {
        goto LABEL_128;
      }
    }
  }

  v322 = vrecpe_f32(v151);
  v323 = 4;
  do
  {
    v322 = vmul_f32(v322, vrecps_f32(v151, v322));
    --v323;
  }

  while (v323);
  v324 = vmulq_n_f32(v63, v322.f32[0]);
  v324.i32[3] = 0;
  *(a14 + 32) = v324;
  *(a14 + 48) = v335;
  if (a5)
  {
    *a14 = v292;
    *(a14 + 16) = v293;
    *(a14 + 64) = v151;
  }

  else
  {
    v325 = vmlsq_lane_f32(v292, v324, v328, 0);
    v325.i64[1] = vextq_s8(v325, v325, 8uLL).u32[0];
    v326 = vmlaq_n_f32(v293, v324, v329);
    v326.i64[1] = vextq_s8(v326, v326, 8uLL).u32[0];
    *a14 = v325;
    *(a14 + 16) = v326;
    *(a14 + 64) = vsub_f32(v151, v286);
    if (vcge_f32(v286, v151).u32[0])
    {
      return 2;
    }
  }

  return 4;
}

uint64_t physx::Gu::fullContactsGenerationCapsuleConvex(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, int32x4_t *a5, uint64_t a6, uint64_t a7, int a8, float a9, float a10, uint64_t a11, float32x4_t *a12, float32x2_t *a13, float32x2_t *a14, char a15)
{
  v45 = *MEMORY[0x1E69E9840];
  physx::Gu::getPCMConvexData(a2, a8, v41);
  if (a8)
  {
    v22 = 1;
    v23 = &unk_1F5D216F0;
  }

  else
  {
    v22 = 0;
    v23 = &unk_1F5D21740;
  }

  v42[4] = a5;
  v42[5] = a2 + 3;
  v42[6] = a2 + 6;
  v43 = v22;
  v42[0] = v23;
  v44 = a2;
  v40 = 0;
  FullContactManifold = physx::Gu::generateFullContactManifold(a1, v41, v42, a3, a6, &v40, a14, a12, a9, a10, a13, a15);
  if (FullContactManifold)
  {
    if (v40)
    {
      physx::Gu::PersistentContactManifold::addBatchManifoldContacts2(a11, a6, v40);
LABEL_8:
      v25 = *a5;
      v25.i32[3] = 0;
      v26 = vdupq_laneq_s32(*a5, 3).u64[0];
      v27 = vmulq_n_f32(*a12, vmla_f32(0xBF000000BF000000, v26, v26).f32[0]);
      v27.i32[3] = 0;
      v28 = vextq_s8(v25, v25, 8uLL).u64[0];
      v29 = vextq_s8(*a12, *a12, 8uLL).u64[0];
      v30 = vmls_f32(vmul_f32(*a5->i8, vext_s8(*a12->f32, v29, 4uLL)), vext_s8(*a5->i8, v28, 4uLL), *a12->f32);
      *v31.f32 = vext_s8(v30, vmls_f32(vmul_f32(v28, *a12->f32), *a5->i8, v29), 4uLL);
      v31.i64[1] = v30.u32[0];
      v32 = vmlaq_laneq_f32(v27, v31, *a5, 3);
      v32.i64[1] = vextq_s8(v32, v32, 8uLL).u32[0];
      v33 = vmulq_f32(v25, *a12);
      v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
      v34 = vmlaq_n_f32(v32, v25, vpadd_f32(*v33.f32, *v33.f32).f32[0]);
      v35 = vaddq_f32(v34, v34);
      v35.i32[3] = 0;
      *a12 = v35;
      physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(a11, a7, a12, a12, a4, (a1 + 80), a14);
      return FullContactManifold;
    }

    if ((a15 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  return FullContactManifold;
}

BOOL physx::Gu::pcmContactCapsuleHeightField(uint64_t a1, float32x2_t *a2, float32x4_t *a3, float32x4_t *a4, int32x2_t *a5, float32x4_t **a6, uint64_t a7, double a8)
{
  v232 = *MEMORY[0x1E69E9840];
  v9 = *a6;
  LODWORD(a8) = *(a1 + 4);
  v10 = vdup_lane_s32(*&a8, 0);
  v209 = vdup_lane_s32(*a5, 0);
  v210 = v10;
  v11.i64[0] = a3[1].i64[0];
  v11.i64[1] = a3[1].u32[2];
  v12 = *a4;
  v13.i64[0] = a4[1].i64[0];
  v13.i64[1] = a4[1].u32[2];
  v14 = vnegq_f32(*a4);
  v15 = vsubq_f32(v11, v13);
  v16 = v14;
  v16.i32[3] = 0;
  v17 = vdupq_laneq_s32(*a4, 3).u64[0];
  v18 = vmulq_n_f32(v15, vmla_f32(0xBF000000BF000000, v17, v17).f32[0]);
  v18.i32[3] = 0;
  v208[0] = *a3;
  v208[1] = v11;
  v19 = vextq_s8(v16, v16, 8uLL).u64[0];
  v20 = vext_s8(*v14.f32, v19, 4uLL);
  v21 = vmls_f32(vmul_f32(*v14.f32, *&vextq_s8(v15, v15, 4uLL)), v20, *v15.f32);
  *v11.f32 = vext_s8(v21, vmls_f32(vmul_f32(v19, *v15.f32), *v14.f32, *&vextq_s8(v15, v15, 8uLL)), 4uLL);
  v11.i64[1] = v21.u32[0];
  v22 = vmlaq_laneq_f32(v18, v11, v12, 3);
  v22.i64[1] = vextq_s8(v22, v22, 8uLL).u32[0];
  v23 = vmulq_f32(v16, v15);
  v23.i64[0] = vpaddq_f32(v23, v23).u64[0];
  v24 = vmlaq_n_f32(v22, v16, vpadd_f32(*v23.f32, *v23.f32).f32[0]);
  v25 = vaddq_f32(v24, v24);
  v25.i32[3] = 0;
  v26 = v208[0];
  v26.i32[3] = 0;
  v27 = vmulq_f32(v26, v16);
  v27.i64[0] = vpaddq_f32(v27, v27).u64[0];
  v28 = vsub_f32(vmul_f32(*&vextq_s8(v208[0], v208[0], 8uLL), *&vextq_s8(v12, v12, 8uLL)), vpadd_f32(*v27.f32, *v27.f32));
  v29 = vmulq_laneq_f32(v26, v12, 3);
  v26.i64[0] = vextq_s8(v26, v26, 8uLL).u64[0];
  v30 = vmls_f32(vmul_f32(vext_s8(*v208[0].f32, *v26.f32, 4uLL), *v14.f32), v20, *v208[0].f32);
  *v31.f32 = vext_s8(v30, vmls_f32(vmul_f32(*v208[0].f32, v19), *v14.f32, *v26.f32), 4uLL);
  *&v31.u32[2] = v30;
  v32 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v16, v208[0], 3), v29), v31);
  v33 = v32;
  v33.i32[3] = v28.i32[1];
  v207[0] = v12;
  v207[1] = v13;
  v206 = vmul_n_f32(vdup_n_s32(0x3A83126Fu), *&a8);
  v34 = vabdq_f32(v25, v9[1]);
  *v34.i8 = vpmax_f32(*&vextq_s8(v34, v34, 8uLL), *v34.i8);
  v35 = vmulq_f32(v33, *v9);
  v35.i64[0] = vpaddq_f32(v35, v35).u64[0];
  if (vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(vdup_n_s32(0x3F7FF2E5u), vpadd_f32(*v35.f32, *v35.f32)), vcgt_f32(vpmax_f32(*v34.i8, *v34.i8), vmul_n_f32(vdup_n_s32(0x3CA3D70Au), *&a8))), 0), *&a8).u32[0] == -1)
  {
    v9[3].i8[14] = 0;
    *v9 = v33;
    v9[1] = v25;
    v204 = a2[1];
    v205 = a2;
    v71 = a2[3].f32[0];
    __asm { FMOV            V4.2S, #1.0 }

    v202 = vrev64_s32(vdiv_f32(_D4, a2[2]));
    v203 = 1.0 / v71;
    v73 = a3->f32[0];
    v74 = a3->f32[1];
    _D4.f32[0] = v73 + v73;
    v76 = a3->f32[2];
    v75 = a3->f32[3];
    v77 = v75 + v75;
    v78 = ((v75 * (v75 + v75)) + -1.0) + (v73 * (v73 + v73));
    v79 = (_D4.f32[0] * v74) + (v76 * (v75 + v75));
    v80 = (_D4.f32[0] * v76) - (v74 * v77);
    _D4.i32[0] = *(a1 + 8);
    v81 = v78 * _D4.f32[0];
    v82 = _D4.f32[0] * v79;
    v83 = v80 * _D4.f32[0];
    v84 = *(a1 + 4) + *a5->i32;
    _D4.f32[0] = a3[1].f32[0] - a4[1].f32[0];
    v85 = a3[1].f32[1] - a4[1].f32[1];
    v86 = a3[1].f32[2] - a4[1].f32[2];
    _D4.f32[0] = _D4.f32[0] + _D4.f32[0];
    v87 = v85 + v85;
    v88 = v86 + v86;
    v90 = a4->f32[2];
    v89 = a4->f32[3];
    v91 = (v89 * v89) + -0.5;
    v92 = a4->f32[1];
    v93 = ((v87 * v92) + (a4->f32[0] * _D4.f32[0])) + (v90 * v88);
    *&v94 = ((_D4.f32[0] * v91) - (((v92 * v88) - (v90 * v87)) * v89)) + (a4->f32[0] * v93);
    *&v95 = ((v87 * v91) - (((v90 * _D4.f32[0]) - (a4->f32[0] * v88)) * v89)) + (v92 * v93);
    _D4.f32[0] = ((v88 * v91) - (((a4->f32[0] * v87) - (v92 * _D4.f32[0])) * v89)) + (v90 * v93);
    v96 = v81 + v81;
    v97 = v82 + v82;
    v98 = v83 + v83;
    v99 = ((v97 * v92) + (a4->f32[0] * v96)) + (v90 * v98);
    *&v100 = ((v96 * v91) - (((v92 * v98) - (v90 * v97)) * v89)) + (a4->f32[0] * v99);
    *&v101 = ((v97 * v91) - (((v90 * v96) - (a4->f32[0] * v98)) * v89)) + (v92 * v99);
    *&v102 = ((v98 * v91) - (((a4->f32[0] * v97) - (v92 * v96)) * v89)) + (v90 * v99);
    v103.i64[0] = __PAIR64__(v95, v94);
    v103.i64[1] = _D4.u32[0];
    v104.i64[0] = __PAIR64__(v101, v100);
    v104.i64[1] = v102;
    v227 = 4;
    v223 = v103;
    v231 = v10;
    v229 = vaddq_f32(v103, v104);
    v230 = vsubq_f32(v103, v104);
    v224 = LODWORD(a8);
    v225 = LODWORD(a8);
    v226 = LODWORD(a8);
    v228 = 1;
    v211.i64[0] = &unk_1F5D22D08;
    v211.i64[1] = &v202;
    *&v212 = a4;
    (*(**&v204 + 104))(&v197);
    BYTE8(v212) = (v197 & 1) == 0;
    v211.i64[0] = &unk_1F5D22CB0;
    physx::Gu::PCMMeshContactGeneration::PCMMeshContactGeneration(v213, &v209, &v206, v208, v207, v9, a7, 0, 0);
    v222 = &v223;
    v220 = vadd_f32(v231, v209);
    v221 = vmul_f32(v220, v220);
    v105 = v84 + *(a1 + 8);
    v106 = a4->f32[1];
    v107 = a4->f32[2];
    v108 = a4->f32[3];
    v109 = a3[1].f32[0] - a4[1].f32[0];
    v110 = a3[1].f32[1] - a4[1].f32[1];
    v111 = a3[1].f32[2] - a4[1].f32[2];
    v112 = v109 + v109;
    v113 = v110 + v110;
    v114 = v111 + v111;
    v115 = (v108 * v108) + -0.5;
    v116 = (-(v106 * v113) - (a4->f32[0] * v112)) - (v107 * v114);
    v117 = ((v108 * ((v107 * v113) - (v106 * v114))) + (v112 * v115)) - (a4->f32[0] * v116);
    v118 = ((v108 * ((a4->f32[0] * v114) - (v107 * v112))) + (v113 * v115)) - (v106 * v116);
    v119 = ((v108 * ((v106 * v112) - (a4->f32[0] * v113))) + (v114 * v115)) - (v107 * v116);
    v121 = a3->f32[2];
    v120 = a3->f32[3];
    v122 = a3->f32[1];
    v123 = (((v108 * a3->f32[0]) - (a4->f32[0] * v120)) - (v106 * v121)) + (v122 * v107);
    v124 = (((v108 * v122) - (v106 * v120)) - (v107 * a3->f32[0])) + (v121 * a4->f32[0]);
    v125 = (((v108 * v121) - (v107 * v120)) - (a4->f32[0] * v122)) + (a3->f32[0] * v106);
    v126 = (((a4->f32[0] * a3->f32[0]) + (v108 * v120)) + (v106 * v122)) + (v107 * v121);
    v127 = ((v105 - v105) * 0.5) + ((v105 - v105) * 0.5);
    v128 = ((v84 - v84) * 0.5) + ((v84 - v84) * 0.5);
    v129 = (v126 * v126) + -0.5;
    v130 = ((v128 * v124) + (v123 * v127)) + (v125 * v128);
    v131 = ((v126 * ((v124 * v128) - (v125 * v128))) + (v127 * v129)) + (v123 * v130);
    v132 = ((v126 * ((v125 * v127) - (v123 * v128))) + (v128 * v129)) + (v124 * v130);
    v133 = ((v126 * ((v123 * v128) - (v124 * v127))) + (v128 * v129)) + (v125 * v130);
    v134 = v117 + v131;
    v135 = v118 + v132;
    v136 = v119 + v133;
    v137 = v124 + v124;
    v138 = v125 + v125;
    v139 = v124 * (v124 + v124);
    v140 = v125 * (v125 + v125);
    v141 = (v123 + v123) * v124;
    v142 = v125 * (v123 + v123);
    v143 = v126 * (v123 + v123);
    v144 = v125 * v137;
    v145 = v126 * v137;
    v146 = v126 * v138;
    v147 = (1.0 - v139) - v140;
    v148 = 1.0 - (v123 * (v123 + v123));
    v149 = v148 - v140;
    v150 = v148 - v139;
    v151 = (v105 + v105) * 0.5;
    v152 = (v84 + v84) * 0.5;
    v153 = v151 * (v141 + v146);
    v154 = v152 * (v141 - v146);
    v155 = v152 * (v143 + v144);
    v156 = fabsf(v152 * (v142 + v145)) + (fabsf(v154) + fabsf(v151 * v147));
    v157 = fabsf(v152 * (v144 - v143)) + (fabsf(v153) + fabsf(v152 * v149));
    v158 = fabsf(v152 * v150) + (fabsf(v151 * (v142 - v145)) + fabsf(v155));
    *&v197 = v134 - v156;
    *(&v197 + 1) = v135 - v157;
    v198 = v136 - v158;
    v199 = v134 + v156;
    v200 = v135 + v157;
    v201 = v136 + v158;
    physx::Gu::HeightFieldUtil::overlapAABBTriangles(&v202, a4->f32, &v197, 0, &v211);
    v159 = v218;
    if (v218)
    {
      v160 = v219;
      if (v219 >= 2)
      {
        v161 = 0;
        v162 = -1;
        v163 = 1;
        do
        {
          v164 = v214[v163 - 1];
          v165 = v214[v163];
          if (COERCE_FLOAT(*(v164 + 40)) > COERCE_FLOAT(*(v165 + 40)))
          {
            v214[v163 - 1] = v165;
            v214[v163] = v164;
            if (v163 - 2 >= 0)
            {
              v166 = &v214[v162 + 1];
              v167 = v161;
              do
              {
                v169 = *(v166 - 1);
                v168 = *v166;
                if (COERCE_FLOAT(*(*v166 + 40)) >= COERCE_FLOAT(*(v169 + 40)))
                {
                  break;
                }

                *v166 = v169;
                *--v166 = v168;
                --v167;
              }

              while (v167 > 0);
            }
          }

          ++v163;
          ++v162;
          ++v161;
        }

        while (v163 != v160);
      }

      if (v160)
      {
        v170 = 0;
        for (i = 0; i != v160; ++i)
        {
          v172 = v214[i];
          v172[1].i64[1] = v172;
          v172[2].i64[0] = v172;
          v173 = v172[3].i32[1] - v172[3].i32[0];
          v172[3].i32[2] = v173;
          v172[1].i64[0] = 0;
          v174 = v170;
          while (v174)
          {
            v175 = *(&v213[127] + v174 + 8);
            v176 = *(v175 + 32);
            v177 = vmulq_f32(*v172, *v176);
            v177.i64[0] = vpaddq_f32(v177, v177).u64[0];
            v174 -= 8;
            if (vpadd_f32(*v177.f32, *v177.f32).f32[0] >= *&v215)
            {
              *(v175 + 16) = v172;
              v176[1].i64[1] = v172;
              v172[2].i64[0] = v176;
              *(*(v175 + 32) + 56) += v173;
              break;
            }
          }

          v170 += 8;
        }

        v178 = 0;
        v179 = v217;
        do
        {
          v180 = v214[v178];
          if (v180)
          {
            _ZF = *(v180 + 32) == v180;
          }

          else
          {
            _ZF = 0;
          }

          if (_ZF)
          {
            while (*(v180 + 16))
            {
              v182 = v180;
              v180 = *(v180 + 16);
              v183 = *(v182 + 48);
              v184 = *(v182 + 52);
              if (v183 < v184)
              {
                v185 = *(v180 + 52);
                do
                {
                  v186 = *(v180 + 48);
                  if (v186 < v185)
                  {
                    do
                    {
                      v187 = v179 + (v186 << 6);
                      v188 = vsubq_f32(*(v187 + 16), *(v179 + (v183 << 6) + 16));
                      v189 = vmulq_f32(v188, v188);
                      v189.i64[0] = vpaddq_f32(v189, v189).u64[0];
                      if (*v216 > vpadd_f32(*v189.f32, *v189.f32).f32[0])
                      {
                        v190 = (v179 + ((v185 - 1) << 6));
                        v191 = *v190;
                        v192 = v190[1];
                        v193 = v190[2];
                        *(v187 + 48) = *(v190 + 12);
                        *(v187 + 16) = v192;
                        *(v187 + 32) = v193;
                        *v187 = v191;
                        v185 = *(v180 + 52) - 1;
                        *(v180 + 52) = v185;
                        --v186;
                      }

                      ++v186;
                    }

                    while (v186 < v185);
                    v184 = *(v182 + 52);
                  }

                  ++v183;
                }

                while (v183 < v184);
              }
            }
          }

          ++v178;
        }

        while (v178 != v160);
        v194 = v217;
        v159 = v218;
        v195 = v219;
      }

      else
      {
        v195 = 0;
        v194 = v217;
      }

      physx::Gu::MultiplePersistentContactManifold::addManifoldContactPoints(v214[36], v194, v159, v214, v195, v216, &v215, 3);
    }
  }

  else
  {
    v36 = vdup_lane_s32(*v32.f32, 1);
    v37 = vdup_laneq_s32(v32, 2);
    v38 = vaddq_f32(v32, v32);
    v39 = vdup_laneq_s32(v38, 2);
    v40 = vdup_lane_s32(vmul_f32(*v32.f32, *v38.f32), 0);
    v41 = vmul_lane_f32(v36, *v38.f32, 1);
    v42 = vmul_laneq_f32(v37, v38, 2);
    v43 = vmul_n_f32(v36, v38.f32[0]);
    v44 = vmul_n_f32(v37, v38.f32[0]);
    v45 = vmul_lane_f32(vdup_lane_s32(*v38.f32, 0), v28, 1);
    v46 = vmul_lane_f32(v37, *v38.f32, 1);
    *v38.f32 = vmul_lane_f32(vdup_lane_s32(*v38.f32, 1), v28, 1);
    v47 = vmul_lane_f32(v39, v28, 1);
    __asm { FMOV            V16.2S, #1.0 }

    v52 = vsub_f32(_D16, v40);
    *v53.f32 = vext_s8(vsub_f32(vsub_f32(_D16, v41), v42), vadd_f32(v43, v47), 4uLL);
    v53.i64[1] = vsub_f32(v44, *v38.f32).u32[0];
    *&v54 = vext_s8(vsub_f32(v43, v47), vsub_f32(v52, v42), 4uLL);
    *(&v54 + 1) = vadd_f32(v46, v45).u32[0];
    v211 = v53;
    v212 = v54;
    *&v54 = vext_s8(vadd_f32(v44, *v38.f32), vsub_f32(v46, v45), 4uLL);
    *(&v54 + 1) = vsub_f32(v52, v41).u32[0];
    v213[0] = v54;
    v213[1] = v25;
    *v223.f32 = vmul_n_f32(vdup_n_s32(0x3D4CCCCDu), *&a8);
    v55 = v9[3].u8[14];
    if (v9[3].i8[14])
    {
      v56 = 0;
      v57 = &v9[3].i8[8];
      v58 = v9 + 4;
      do
      {
        v59 = v57[v56];
        LODWORD(v60) = v55 - 2;
        if (v56 >= v60)
        {
          v60 = v60;
        }

        else
        {
          v60 = v56;
        }

        _X8 = &v58[25 * v57[v60 + 1]];
        __asm
        {
          PRFM            #0, [X8]
          PRFM            #0, [X8,#0x80]
          PRFM            #0, [X8,#0x100]
        }

        v65 = physx::Gu::SinglePersistentContactManifold::refreshContactPoints(&v58[25 * v57[v56]], &v211, &v223).u32[0];
        if (v58[25 * v59 + 24].i32[0])
        {
          v9[2].i32[v59] = v65;
          ++v56;
        }

        else
        {
          v66 = v9[3].i8[14] - 1;
          v9[3].i8[14] = v66;
          v67 = v57[v66];
          v57[v66] = v59;
          v57[v56] = v67;
        }

        v55 = v9[3].u8[14];
      }

      while (v56 < v55);
    }
  }

  return physx::Gu::MultiplePersistentContactManifold::addManifoldContactsToContactBuffer(v9, a7, v208, v207, &v210);
}

BOOL physx::Gu::pcmContactCapsuleMesh(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v13 = v12;
  v211 = *MEMORY[0x1E69E9840];
  v15 = *v14;
  v16 = *(v2 + 4);
  v187 = vdup_lane_s32(*v6, 0);
  v188 = vdup_lane_s32(v16, 0);
  v17.i64[0] = v4[1].i64[0];
  v17.i64[1] = v4[1].u32[2];
  v186[0] = *v4;
  v186[1] = v17;
  v18.i64[0] = v5[1].i64[0];
  v18.i64[1] = v5[1].u32[2];
  v185[0] = *v5;
  v185[1] = v18;
  v19 = vnegq_f32(v185[0]);
  v20 = v19;
  v20.i32[3] = 0;
  v21 = vsubq_f32(v17, v18);
  v22 = vdupq_laneq_s32(v185[0], 3).u64[0];
  v23 = vmulq_n_f32(v21, vmla_f32(0xBF000000BF000000, v22, v22).f32[0]);
  v23.i32[3] = 0;
  v24 = vextq_s8(v20, v20, 8uLL).u64[0];
  v25 = vext_s8(*v19.f32, v24, 4uLL);
  v26 = vmls_f32(vmul_f32(*v19.f32, *&vextq_s8(v21, v21, 4uLL)), v25, *v21.f32);
  *v27.f32 = vext_s8(v26, vmls_f32(vmul_f32(v24, *v21.f32), *v19.f32, *&vextq_s8(v21, v21, 8uLL)), 4uLL);
  v27.i64[1] = v26.u32[0];
  v28 = vmlaq_laneq_f32(v23, v27, v185[0], 3);
  v28.i64[1] = vextq_s8(v28, v28, 8uLL).u32[0];
  v29 = vmulq_f32(v20, v21);
  v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
  v30 = vmlaq_n_f32(v28, v20, vpadd_f32(*v29.f32, *v29.f32).f32[0]);
  v31 = vaddq_f32(v30, v30);
  v31.i32[3] = 0;
  v32 = v186[0];
  v32.i32[3] = 0;
  v33 = vmulq_f32(v32, v20);
  v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
  v34 = vsub_f32(vmul_f32(*&vextq_s8(v186[0], v186[0], 8uLL), *&vextq_s8(v185[0], v185[0], 8uLL)), vpadd_f32(*v33.f32, *v33.f32));
  v33.i64[0] = vextq_s8(v32, v32, 8uLL).u64[0];
  *v27.f32 = vmls_f32(vmul_f32(vext_s8(*v186[0].i8, *v33.f32, 4uLL), *v19.f32), v25, *v186[0].i8);
  *v35.f32 = vext_s8(*v27.f32, vmls_f32(vmul_f32(*v186[0].i8, v24), *v19.f32, *v33.f32), 4uLL);
  v35.i64[1] = v27.i64[0];
  v36 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v20, v186[0], 3), vmulq_laneq_f32(v32, v185[0], 3)), v35);
  v37 = v36;
  v37.i32[3] = v34.i32[1];
  v38 = vabdq_f32(v31, v15[1]);
  v39 = vextq_s8(v38, v38, 8uLL);
  *v38.i8 = vpmax_f32(*v39.i8, *v38.i8);
  v40 = vmulq_f32(v37, *v15);
  v41 = vpaddq_f32(v40, v40);
  *v35.f32 = vcgt_f32(vpmax_f32(*v38.i8, *v38.i8), vmul_n_f32(vdup_n_s32(0x3CA3D70Au), *v16.i32));
  v42 = vcgt_f32(vdup_n_s32(0x3F7FF2E5u), vpadd_f32(*v41.i8, *v41.i8));
  v43 = vuzp1_s8(vdup_lane_s16(vorr_s8(v42, *v35.f32), 0), v16);
  if (v43.i32[0] == -1)
  {
    v76 = v6;
    v77 = v5;
    v78 = v4;
    v79 = v3;
    v80 = v2;
    *v36.f32 = vdup_n_s32(0x3A83126Fu);
    v184 = vmul_n_f32(*v36.f32, *v16.i32);
    v181[0] = xmmword_1E3047670;
    v181[1] = xmmword_1E3047670;
    v181[2] = xmmword_1E3060D60;
    v181[3] = xmmword_1E3047680;
    v182 = 0x3F80000000000000;
    v82 = *(v3 + 4);
    v83 = *(v3 + 8);
    v81 = (v3 + 4);
    v84 = v81[2];
    v183 = 0;
    v86 = v83 == 1.0 && v82 == 1.0;
    v87 = v86 && v84 == 1.0;
    if (!v87)
    {
      v88 = v7;
      physx::Cm::FastVertex2ShapeScaling::init(v181, v81, (v79 + 16));
      v7 = v88;
    }

    v89 = v78->f32[0];
    v36.i32[0] = v78->i32[1];
    *v43.i32 = v89 + v89;
    v90 = v78->f32[2];
    v42.i32[0] = v78->i32[3];
    *v41.i32 = *v42.i32 + *v42.i32;
    v91 = ((*v42.i32 * (*v42.i32 + *v42.i32)) + -1.0) + (v89 * (v89 + v89));
    *v42.i32 = (*v43.i32 * v36.f32[0]) + (v90 * (*v42.i32 + *v42.i32));
    v36.f32[0] = (*v43.i32 * v90) - (v36.f32[0] * *v41.i32);
    v43.i32[0] = *(v80 + 8);
    *v41.i32 = v91 * *v43.i32;
    *v39.i32 = *v43.i32 * *v42.i32;
    v92 = v36.f32[0] * *v43.i32;
    v93 = v78[1].f32[0];
    v94 = v78[1].f32[1];
    v95.f32[0] = v93 + (v91 * *v43.i32);
    v96.f32[0] = v94 + (*v43.i32 * *v42.i32);
    v97 = v78[1].f32[2];
    v98.f32[0] = (v36.f32[0] * *v43.i32) + v97;
    *v8.i32 = v93 - (v91 * *v43.i32);
    *v9.i32 = v94 - (*v43.i32 * *v42.i32);
    v99 = v97 - (v36.f32[0] * *v43.i32);
    v10.i32[0] = v77[1].i32[1];
    v11.i32[0] = v77[1].i32[2];
    v42.i32[0] = v77->i32[3];
    v1.i32[0] = v77[1].i32[0];
    *v43.i32 = (*v42.i32 * *v42.i32) + -0.5;
    v36.i32[0] = v77->i32[0];
    v100 = *(v80 + 4) + *v76;
    _S26 = (v93 - *v1.i32) + (v93 - *v1.i32);
    v102 = (v94 - *v10.i32) + (v94 - *v10.i32);
    _S25 = (v97 - *v11.i32) + (v97 - *v11.i32);
    _S20 = *v41.i32 + *v41.i32;
    v105 = *v39.i32 + *v39.i32;
    _S18 = v92 + v92;
    v206 = 4;
    v210 = v188;
    v204 = vdup_lane_s32(v188, 0);
    v205 = v188.i32[0];
    v207 = 1;
    v95.i32[1] = v8.i32[0];
    v96.i32[1] = v9.i32[0];
    v107 = vsub_f32(v95, vdup_lane_s32(v1, 0));
    *v41.i8 = vsub_f32(v96, vdup_lane_s32(v10, 0));
    v98.f32[1] = v99;
    v108 = vsub_f32(v98, vdup_lane_s32(v11, 0));
    *v39.i8 = vadd_f32(v107, v107);
    v109 = vadd_f32(*v41.i8, *v41.i8);
    *v41.i8 = vadd_f32(v108, v108);
    *v110.i8 = vzip1_s32(v109, *v41.i8);
    v110.i64[1] = __PAIR64__(v109.u32[1], v39.u32[0]);
    v111 = vzip1q_s32(vrev64q_s32(v110), v41);
    v111.i32[1] = v39.i32[0];
    v112 = vdupq_lane_s32(v42, 0).u64[0];
    _Q17 = vextq_s8(v110, v110, 8uLL);
    v114 = vuzp1q_s32(_Q17, vuzp2q_s32(v110, v39));
    v115 = vdupq_lane_s32(v43, 0).u64[0];
    _Q17.i64[0] = *(v77->i64 + 4);
    *v9.i32 = -*&_Q17.i32[1];
    *v8.i8 = vneg_f32(vzip1_s32(*v36.f32, *_Q17.i8));
    __asm { FMLA            S30, S25, V17.S[1] }

    *&v117 = ((_S26 * *v43.i32) - (((*_Q17.i32 * _S25) - (*&_Q17.i32[1] * v102)) * *v42.i32)) + (v36.f32[0] * _S30);
    __asm { FMLA            S8, S26, V17.S[1] }

    *&v119 = ((v102 * *v43.i32) - (_S8 * *v42.i32)) + (*_Q17.i32 * _S30);
    __asm
    {
      FMLA            S25, S30, V17.S[1]
      FMLA            S26, S18, V17.S[1]
    }

    *&v122 = ((_S20 * *v43.i32) - (((*_Q17.i32 * _S18) - (*&_Q17.i32[1] * v105)) * *v42.i32)) + (v36.f32[0] * _S26);
    __asm { FMLA            S29, S20, V17.S[1] }

    *&v124 = ((v105 * *v43.i32) - (_S29 * *v42.i32)) + (*_Q17.i32 * _S26);
    v125.i64[0] = __PAIR64__(v119, v117);
    v125.i64[1] = _S25;
    v126.i64[0] = __PAIR64__(v124, v122);
    __asm { FMLA            S18, S26, V17.S[1] }

    v126.i64[1] = _S18;
    v203 = v125;
    v128 = vaddq_f32(v125, v126);
    v208 = v128;
    v209 = vsubq_f32(v125, v126);
    v126.i32[0] = vdup_lane_s32(*_Q17.i8, 1).u32[0];
    *v128.i8 = vmla_lane_f32(vmla_n_f32(vmul_n_f32(v109, *_Q17.i32), *v39.i8, v36.f32[0]), *v41.i8, *_Q17.i8, 1);
    v129 = vzip1q_s32(v128, v128);
    v129.i32[2] = v128.i32[0];
    v130 = vextq_s8(vextq_s8(v9, v9, 4uLL), v8, 0xCuLL);
    v130.i32[3] = v130.i32[0];
    v131 = vmulq_f32(v110, v130);
    v130.i64[0] = _Q17.i64[0];
    v130.i64[1] = __PAIR64__(_Q17.u32[0], v36.u32[0]);
    v132 = vmlaq_n_f32(vmulq_n_f32(vnegq_f32(vmlaq_f32(v131, v111, v130)), *v42.i32), v114, *v43.i32);
    v133 = vextq_s8(vextq_s8(v36, v36, 4uLL), _Q17, 0xCuLL);
    v133.i32[3] = v133.i32[0];
    v126.i32[1] = v36.i32[0];
    v178 = vmlaq_f32(v132, v129, v133);
    v179 = vmla_lane_f32(vmla_f32(vmul_f32(v112, vneg_f32(vmla_f32(vmul_f32(vzip2_s32(*v41.i8, *v39.i8), *v8.i8), vzip2_s32(*v39.i8, v109), *v126.f32))), v115, vzip2_s32(v109, *v41.i8)), *_Q17.i8, *v128.i8, 1);
    v180 = v100;
    v134 = *(v79 + 48);
    v15[3].i8[14] = 0;
    *v15 = v37;
    v15[1] = v31;
    v135 = *(v134 + 80);
    v189.i32[2] = 2;
    *&v190 = v181;
    *(&v190 + 1) = v135;
    LOBYTE(v191[0]) = v87;
    v192 = 0;
    v189.i64[0] = &unk_1F5D22D30;
    physx::Gu::PCMMeshContactGeneration::PCMMeshContactGeneration(v193, &v187, &v184, v186, v185, v15, v13, 0, v7);
    v202 = &v203;
    v200 = vadd_f32(v210, v187);
    v201 = vmul_f32(v200, v200);
    v136.n128_f32[0] = physx::Gu::Box::create(v175, &v178);
    if (!v87)
    {
      v136.n128_f32[0] = physx::Cm::FastVertex2ShapeScaling::transformQueryBounds(v181, &v176, &v177, v175);
    }

    (physx::Gu::gMidphaseBoxCBOverlapTable[*(v134 + 8) - 3])(v134, v175, &v189, 1, 1, v136);
    if (v192)
    {
      physx::Gu::PCMMeshContactGeneration::processTriangleCache<16u,physx::Gu::PCMCapsuleVsMeshContactGeneration>(v193, v191 + 4);
      v192 = 0;
    }

    v137 = v198;
    if (v198)
    {
      v138 = v199;
      if (v199 >= 2)
      {
        v139 = 0;
        v140 = -1;
        v141 = 1;
        do
        {
          v142 = v194[v141 - 1];
          v143 = v194[v141];
          if (COERCE_FLOAT(*(v142 + 40)) > COERCE_FLOAT(*(v143 + 40)))
          {
            v194[v141 - 1] = v143;
            v194[v141] = v142;
            if (v141 - 2 >= 0)
            {
              v144 = &v194[v140 + 1];
              v145 = v139;
              do
              {
                v147 = *(v144 - 1);
                v146 = *v144;
                if (COERCE_FLOAT(*(*v144 + 40)) >= COERCE_FLOAT(*(v147 + 40)))
                {
                  break;
                }

                *v144 = v147;
                *--v144 = v146;
                --v145;
              }

              while (v145 > 0);
            }
          }

          ++v141;
          ++v140;
          ++v139;
        }

        while (v141 != v138);
      }

      if (v138)
      {
        v148 = 0;
        for (i = 0; i != v138; ++i)
        {
          v150 = v194[i];
          v150[1].i64[1] = v150;
          v150[2].i64[0] = v150;
          v151 = v150[3].i32[1] - v150[3].i32[0];
          v150[3].i32[2] = v151;
          v150[1].i64[0] = 0;
          v152 = v148;
          while (v152)
          {
            v153 = *&v193[v152 + 2040];
            v154 = *(v153 + 32);
            v155 = vmulq_f32(*v150, *v154);
            v155.i64[0] = vpaddq_f32(v155, v155).u64[0];
            v152 -= 8;
            if (vpadd_f32(*v155.f32, *v155.f32).f32[0] >= *&v195)
            {
              *(v153 + 16) = v150;
              v154[1].i64[1] = v150;
              v150[2].i64[0] = v154;
              *(*(v153 + 32) + 56) += v151;
              break;
            }
          }

          v148 += 8;
        }

        v156 = 0;
        v157 = v197;
        do
        {
          v158 = v194[v156];
          if (v158)
          {
            v159 = *(v158 + 32) == v158;
          }

          else
          {
            v159 = 0;
          }

          if (v159)
          {
            while (*(v158 + 16))
            {
              v160 = v158;
              v158 = *(v158 + 16);
              v161 = *(v160 + 48);
              v162 = *(v160 + 52);
              if (v161 < v162)
              {
                v163 = *(v158 + 52);
                do
                {
                  v164 = *(v158 + 48);
                  if (v164 < v163)
                  {
                    do
                    {
                      v165 = v157 + (v164 << 6);
                      v166 = vsubq_f32(*(v165 + 16), *(v157 + (v161 << 6) + 16));
                      v167 = vmulq_f32(v166, v166);
                      v167.i64[0] = vpaddq_f32(v167, v167).u64[0];
                      if (v196[0] > vpadd_f32(*v167.f32, *v167.f32).f32[0])
                      {
                        v168 = (v157 + ((v163 - 1) << 6));
                        v169 = *v168;
                        v170 = v168[1];
                        v171 = v168[2];
                        *(v165 + 48) = *(v168 + 12);
                        *(v165 + 16) = v170;
                        *(v165 + 32) = v171;
                        *v165 = v169;
                        v163 = *(v158 + 52) - 1;
                        *(v158 + 52) = v163;
                        --v164;
                      }

                      ++v164;
                    }

                    while (v164 < v163);
                    v162 = *(v160 + 52);
                  }

                  ++v161;
                }

                while (v161 < v162);
              }
            }
          }

          ++v156;
        }

        while (v156 != v138);
        v172 = v197;
        v137 = v198;
        v173 = v199;
      }

      else
      {
        v173 = 0;
        v172 = v197;
      }

      physx::Gu::MultiplePersistentContactManifold::addManifoldContactPoints(v194[36], v172, v137, v194, v173, v196, &v195, 3);
    }
  }

  else
  {
    v44 = vdup_lane_s32(*v36.f32, 1);
    v45 = vdup_laneq_s32(v36, 2);
    v46 = vaddq_f32(v36, v36);
    v47 = vdup_laneq_s32(v46, 2);
    v48 = vdup_lane_s32(vmul_f32(*v36.f32, *v46.f32), 0);
    v49 = vmul_lane_f32(v44, *v46.f32, 1);
    v50 = vmul_laneq_f32(v45, v46, 2);
    v51 = vmul_n_f32(v44, v46.f32[0]);
    v52 = vmul_n_f32(v45, v46.f32[0]);
    v53 = vmul_lane_f32(vdup_lane_s32(*v46.f32, 0), v34, 1);
    v54 = vmul_lane_f32(v45, *v46.f32, 1);
    *v46.f32 = vmul_lane_f32(vdup_lane_s32(*v46.f32, 1), v34, 1);
    v55 = vmul_lane_f32(v47, v34, 1);
    __asm { FMOV            V7.2S, #1.0 }

    v60 = vsub_f32(_D7, v48);
    *v61.f32 = vext_s8(vsub_f32(vsub_f32(_D7, v49), v50), vadd_f32(v51, v55), 4uLL);
    v61.i64[1] = vsub_f32(v52, *v46.f32).u32[0];
    *&v62 = vext_s8(vsub_f32(v51, v55), vsub_f32(v60, v50), 4uLL);
    *(&v62 + 1) = vadd_f32(v54, v53).u32[0];
    v189 = v61;
    v190 = v62;
    *&v62 = vext_s8(vadd_f32(v52, *v46.f32), vsub_f32(v54, v53), 4uLL);
    *(&v62 + 1) = vsub_f32(v60, v49).u32[0];
    v191[0] = v62;
    v191[1] = v31;
    *v203.f32 = vmul_n_f32(vdup_n_s32(0x3D4CCCCDu), *v16.i32);
    v63 = v15[3].u8[14];
    if (v15[3].i8[14])
    {
      v64 = 0;
      v65 = &v15[3].i8[8];
      v66 = v15 + 4;
      do
      {
        v67 = v65[v64];
        LODWORD(v68) = v63 - 2;
        if (v64 >= v68)
        {
          v68 = v68;
        }

        else
        {
          v68 = v64;
        }

        _X8 = &v66[25 * v65[v68 + 1]];
        __asm
        {
          PRFM            #0, [X8]
          PRFM            #0, [X8,#0x80]
          PRFM            #0, [X8,#0x100]
        }

        v73 = physx::Gu::SinglePersistentContactManifold::refreshContactPoints(&v66[25 * v65[v64]], &v189, &v203).u32[0];
        if (v66[25 * v67 + 24].i32[0])
        {
          v15[2].i32[v67] = v73;
          ++v64;
        }

        else
        {
          v74 = v15[3].i8[14] - 1;
          v15[3].i8[14] = v74;
          v75 = v65[v74];
          v65[v74] = v67;
          v65[v64] = v75;
        }

        v63 = v15[3].u8[14];
      }

      while (v64 < v63);
    }
  }

  return physx::Gu::MultiplePersistentContactManifold::addManifoldContactsToContactBuffer(v15, v13, v186, v185, &v188);
}

int64x2_t physx::Gu::PCMConvexVsMeshContactGeneration::addContactsToPatch(float32x4_t *a1, unsigned int a2, float32x4_t a3)
{
  v5 = vmulq_f32(a1[148], a3);
  v5.i64[0] = vpaddq_f32(v5, v5).u64[0];
  v6 = vmulq_f32(a1[149], a3);
  v6.i64[0] = vpaddq_f32(v6, v6).u64[0];
  result = vmulq_f32(a1[150], a3);
  result.i64[0] = vpaddq_f32(result, result).u64[0];
  v8 = vpadd_f32(*result.i8, *result.i8).u32[0];
  *v9.f32 = vext_s8(vpadd_f32(*v5.f32, *v5.f32), vpadd_f32(*v6.f32, *v6.f32), 4uLL);
  LODWORD(v10) = a1[152].i32[2];
  v11 = v10 - a2;
  v12 = a2;
  if (v11 >= 6)
  {
    v93 = v8;
    v94 = v9.i64[0];
    physx::Gu::SinglePersistentContactManifold::reduceContacts(a1[152].i64[0] + (a2 << 6), v11);
    v8 = v93;
    v9.i64[0] = v94;
    LODWORD(v10) = a2 + 5;
    a1[152].i32[2] = a2 + 5;
  }

  if (v10 > a2)
  {
    v13 = a2;
    do
    {
      v14 = v13++;
      if (v13 < v10)
      {
        v15 = v13;
        do
        {
          v16 = a1[152].i64[0];
          v17 = v16 + (v15 << 6);
          v18 = vsubq_f32(*(v17 + 16), *(v16 + (v14 << 6) + 16));
          result = vmulq_f32(v18, v18);
          result.i64[0] = vpaddq_f32(result, result).u64[0];
          if (COERCE_FLOAT(a1[147].i64[1]) > vpadd_f32(*result.i8, *result.i8).f32[0])
          {
            v19 = v16 + ((v10 - 1) << 6);
            result = *v19;
            v20 = *(v19 + 16);
            v21 = *(v19 + 32);
            *(v17 + 48) = *(v19 + 48);
            *(v17 + 16) = v20;
            *(v17 + 32) = v21;
            *v17 = result;
            LODWORD(v10) = a1[152].i32[2] - 1;
            a1[152].i32[2] = v10;
            --v15;
          }

          ++v15;
        }

        while (v15 < v10);
      }
    }

    while (v13 < v10);
  }

  v9.i64[1] = v8;
  if (v10 <= a2)
  {
    *result.i8 = vneg_f32(0x80000000800000);
  }

  else
  {
    v22 = a2 << 6;
    *result.i8 = vneg_f32(0x80000000800000);
    do
    {
      v23 = (a1[152].i64[0] + v22);
      v24 = vdup_laneq_s32(v23[2], 3);
      v25 = v9;
      v25.i32[3] = HIDWORD(*&v23[2]);
      v23[2] = v25;
      v26 = (a1[152].i64[0] + v22);
      v27 = vsubq_f32(v26[1], a1[151]);
      v28 = vmulq_f32(a1[148], v27);
      v28.i64[0] = vpaddq_f32(v28, v28).u64[0];
      v29 = vmulq_f32(v27, a1[149]);
      v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
      v30 = vmulq_f32(v27, a1[150]);
      v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
      *v28.f32 = vext_s8(vpadd_f32(*v28.f32, *v28.f32), vpadd_f32(*v29.f32, *v29.f32), 4uLL);
      v28.i64[1] = vpadd_f32(*v30.f32, *v30.f32).u32[0];
      v26[1] = v28;
      *result.i8 = vmin_f32(*result.i8, v24);
      ++v12;
      v10 = a1[152].u32[2];
      v22 += 64;
    }

    while (v12 < v10);
  }

  v31 = a1[152].u32[3];
  if (v31 && (v32 = &a1[4 * (v31 - 1)], v33 = vmulq_f32(*v32, v9), v33.i64[0] = vpaddq_f32(v33, v33).u64[0], vpadd_f32(*v33.f32, *v33.f32).f32[0] > COERCE_FLOAT(a1[147].i64[0])))
  {
    v35 = v32[3].u32[0];
    v36 = v32[3].u32[1];
    while (v35 < v36)
    {
      v37 = a2;
      if (v10 > a2)
      {
        do
        {
          v38 = a1[152].i64[0];
          v39 = v38 + (v37 << 6);
          v40 = v38 + (v35 << 6);
          v41 = vsubq_f32(*(v39 + 16), *(v40 + 16));
          v42 = vmulq_f32(v41, v41);
          v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
          if (COERCE_FLOAT(a1[147].i64[1]) > vpadd_f32(*v42.f32, *v42.f32).f32[0])
          {
            if (*(v40 + 44) > *(v39 + 44))
            {
              v43 = *v39;
              v44 = *(v39 + 16);
              v45 = *(v39 + 32);
              *(v40 + 48) = *(v39 + 48);
              *(v40 + 16) = v44;
              *(v40 + 32) = v45;
              *v40 = v43;
              v38 = a1[152].i64[0];
              LODWORD(v10) = a1[152].i32[2];
            }

            v46 = v38 + ((v10 - 1) << 6);
            v47 = v38 + (v37 << 6);
            v48 = *v46;
            v49 = *(v46 + 16);
            v50 = *(v46 + 32);
            *(v47 + 48) = *(v46 + 48);
            *(v47 + 16) = v49;
            *(v47 + 32) = v50;
            *v47 = v48;
            LODWORD(v10) = a1[152].i32[2] - 1;
            a1[152].i32[2] = v10;
            --v37;
          }

          ++v37;
        }

        while (v37 < v10);
        v36 = v32[3].u32[1];
      }

      ++v35;
    }

    v32[3].i32[1] = v10;
    *result.i8 = vmin_f32(*&v32[2].u32[2], *result.i8);
    v32[2].i64[1] = result.i64[0];
  }

  else
  {
    v34 = &a1[4 * v31];
    v34[3].i32[0] = a2;
    v34[3].i32[1] = v10;
    v34[2].i64[1] = result.i64[0];
    a1[152].i32[3] = v31 + 1;
    *v34 = v9;
    LODWORD(v10) = a1[152].i32[2];
  }

  if (v10 >= 0x10)
  {
    v51 = a1[152].u32[3];
    if (v51 >= 2)
    {
      v52 = 0;
      v53 = a1 + 128;
      v54 = -1;
      for (i = 1; i != v51; ++i)
      {
        v56 = v53->i64[i - 1];
        v57 = v53->i64[i];
        if (COERCE_FLOAT(*(v56 + 40)) > COERCE_FLOAT(*(v57 + 40)))
        {
          v53->i64[i - 1] = v57;
          v53->i64[i] = v56;
          if (i - 2 >= 0)
          {
            v58 = &a1[128].i64[v54 + 1];
            v59 = v52;
            do
            {
              v61 = *(v58 - 8);
              v60 = *v58;
              if (COERCE_FLOAT(*(*v58 + 40)) >= COERCE_FLOAT(*(v61 + 40)))
              {
                break;
              }

              *v58 = v61;
              *(v58 - 8) = v60;
              v58 -= 8;
              --v59;
            }

            while (v59 > 0);
          }
        }

        ++v54;
        ++v52;
      }
    }

    v62 = &a1[128];
    v63 = a1 + 147;
    if (v51)
    {
      v64 = 0;
      for (j = 0; j != v51; ++j)
      {
        v66 = v62[j];
        v66[1].i64[1] = v66;
        v66[2].i64[0] = v66;
        v67 = v66[3].i32[1] - v66[3].i32[0];
        v66[3].i32[2] = v67;
        v66[1].i64[0] = 0;
        v68 = v64;
        while (v68)
        {
          v69 = *(&a1[127].i64[1] + v68);
          v70 = *(v69 + 32);
          v71 = vmulq_f32(*v66, *v70);
          v71.i64[0] = vpaddq_f32(v71, v71).u64[0];
          v68 -= 8;
          if (vpadd_f32(*v71.f32, *v71.f32).f32[0] >= COERCE_FLOAT(v63->i64[0]))
          {
            *(v69 + 16) = v66;
            v70[1].i64[1] = v66;
            v66[2].i64[0] = v70;
            *(*(v69 + 32) + 56) += v67;
            break;
          }
        }

        v64 += 8;
      }

      v72 = 0;
      v73 = a1[152].i64[0];
      v74 = &a1[147].i64[1];
      do
      {
        v75 = v62[v72];
        if (v75)
        {
          v76 = *(v75 + 32) == v75;
        }

        else
        {
          v76 = 0;
        }

        if (v76)
        {
          while (*(v75 + 16))
          {
            v77 = v75;
            v75 = *(v75 + 16);
            v78 = *(v77 + 48);
            v79 = *(v77 + 52);
            if (v78 < v79)
            {
              v80 = *(v75 + 52);
              do
              {
                v81 = *(v75 + 48);
                if (v81 < v80)
                {
                  do
                  {
                    v82 = v73 + (v81 << 6);
                    v83 = vsubq_f32(*(v82 + 16), *(v73 + (v78 << 6) + 16));
                    v84 = vmulq_f32(v83, v83);
                    v84.i64[0] = vpaddq_f32(v84, v84).u64[0];
                    if (COERCE_FLOAT(*v74) > vpadd_f32(*v84.f32, *v84.f32).f32[0])
                    {
                      v85 = v73 + ((v80 - 1) << 6);
                      v86 = *v85;
                      v87 = *(v85 + 16);
                      v88 = *(v85 + 32);
                      *(v82 + 48) = *(v85 + 48);
                      *(v82 + 16) = v87;
                      *(v82 + 32) = v88;
                      *v82 = v86;
                      v80 = *(v75 + 52) - 1;
                      *(v75 + 52) = v80;
                      --v81;
                    }

                    ++v81;
                  }

                  while (v81 < v80);
                  v79 = *(v77 + 52);
                }

                ++v78;
              }

              while (v78 < v79);
            }
          }
        }

        ++v72;
      }

      while (v72 != v51);
      LODWORD(v10) = a1[152].i32[2];
      v89 = a1[152].u32[3];
    }

    else
    {
      v89 = 0;
      v74 = &a1[147].i64[1];
    }

    physx::Gu::MultiplePersistentContactManifold::addManifoldContactPoints(a1[146].i64[0], a1[152].i64[0], v10, v62, v89, v74, v63, 6);
    a1[152].i64[1] = 0;
    result = xmmword_1E3049620;
    v90 = 128;
    v91 = vdupq_n_s64(a1);
    v92 = vdupq_n_s64(2uLL);
    do
    {
      a1[v90] = vaddq_s64(v91, vshlq_n_s64(result, 6uLL));
      result = vaddq_s64(result, v92);
      ++v90;
    }

    while (v90 != 144);
  }

  return result;
}

void physx::Gu::PCMConvexVsMeshContactGeneration::generateLastContacts(float32x4_t *this)
{
  v1 = this[233].i64[1];
  v2 = *(v1 + 4368);
  if (v2 > 0xE)
  {
    v4 = 0;
    v5 = *(v1 + 4360);
    v38 = v2 / 0xFuLL;
    v37 = &this[152].i32[2];
    v6 = &this[234].i8[8];
    v39 = &this[274].i8[8];
    v7 = &this[266].i8[8];
    v34 = vdupq_n_s32(0x3EAAAA9Fu);
    v35 = v5;
    do
    {
      v8 = v5 + 60 * v4;
      v9 = *(v8 + 40);
      v40 = *(v8 + 36);
      v10 = *(v8 + 44);
      v11 = *(v8 + 56);
      if ((v11 & 8) != 0 || (v40 >= v9 ? (v12 = *(v8 + 40)) : (v12 = *(v8 + 36)), v40 <= v9 ? (v13 = *(v8 + 40)) : (v13 = *(v8 + 36)), !physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::get(this[153].i64 + 4, v12, v13)))
      {
        if ((v11 & 0x10) != 0 || (v9 >= v10 ? (v14 = v10) : (v14 = v9), v9 <= v10 ? (v15 = v10) : (v15 = v9), !physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::get(this[153].i64 + 4, v14, v15)))
        {
          if ((v11 & 0x20) != 0 || (v10 >= v40 ? (v16 = v40) : (v16 = v10), v10 <= v40 ? (v17 = v40) : (v17 = v10), !physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::get(this[153].i64 + 4, v16, v17)))
          {
            v36 = v4;
            v48 = 0;
            v18.i64[0] = *v8;
            v18.i64[1] = *(v8 + 8);
            v19.i64[0] = *(v8 + 12);
            v19.i64[1] = *(v8 + 20);
            v20.i64[0] = *(v8 + 24);
            v20.i64[1] = *(v8 + 32);
            v21 = vmulq_f32(vaddq_f32(vaddq_f32(v18, v19), v20), v34);
            v21.i32[3] = 0;
            v44 = v21;
            v49 = v18;
            v50 = v19;
            v51[0] = v20;
            v45 = 0x7F7FFFFF00000000;
            v46 = 2139095039;
            v47 = 5;
            v43 = 0uLL;
            v22 = this[152].u32[2];
            physx::Gu::PCMConvexVsMeshContactGeneration::generatePolyDataContactManifold(this, &v44, *(v8 + 52), *(v8 + 48), v11, this[152].i64[0], v37, this[144].i64, &v43);
            v41 = 0;
            v42 = 0;
            v23 = this[152].u32[2];
            if (v23 <= v22)
            {
              LODWORD(v26) = this[152].i32[2];
            }

            else
            {
              v24 = (v23 - 1);
              v25 = v24 << 6;
              LODWORD(v26) = this[152].i32[2];
              do
              {
                physx::Gu::barycentricCoordinates((this[152].i64[0] + (--v23 << 6) + 16), &v49, &v50, v51, &v42, &v41);
                if (v42.f32[0] > 0.97)
                {
                  for (i = v39[v9 & 0x7F]; i != 255; i = v7[i])
                  {
                    if (*&v6[4 * i] == v9)
                    {
LABEL_44:
                      v26 = (v26 - 1);
                      if (v23 < v26)
                      {
                        v30 = v25;
                        v31 = v24;
                        do
                        {
                          ++v31;
                          v32 = this[152].i64[0] + v30;
                          v33 = *(v32 + 80);
                          *v32 = *(v32 + 64);
                          *(v32 + 16) = v33;
                          *(v32 + 32) = *(v32 + 96);
                          *(v32 + 48) = *(v32 + 112);
                          v30 += 64;
                        }

                        while (v31 < v26);
                      }

                      break;
                    }
                  }
                }

                else if (v41.f32[0] > 0.97)
                {
                  for (j = v39[v10 & 0x7F]; j != 255; j = v7[j])
                  {
                    if (*&v6[4 * j] == v10)
                    {
                      goto LABEL_44;
                    }
                  }
                }

                else if (vadd_f32(v42, v41).f32[0] <= 0.03)
                {
                  for (k = v39[v40 & 0x7F]; k != 255; k = v7[k])
                  {
                    if (*&v6[4 * k] == v40)
                    {
                      goto LABEL_44;
                    }
                  }
                }

                --v24;
                v25 -= 64;
              }

              while (v23 > v22);
            }

            *v37 = v26;
            v5 = v35;
            if (v26 > v22)
            {
              physx::Gu::PCMConvexVsMeshContactGeneration::addContactsToPatch(this, v22, v43);
            }

            v4 = v36;
          }
        }
      }

      ++v4;
    }

    while (v4 != v38);
  }
}

_DWORD *physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::get(uint64_t a1, int a2, int a3)
{
  v3 = 9 * (((a3 | (a2 << 16)) + ~((a3 | (a2 << 16)) << 15)) ^ (((a3 | (a2 << 16)) + ~((a3 | (a2 << 16)) << 15)) >> 10));
  v4 = (v3 ^ (v3 >> 6)) + ~((v3 ^ (v3 >> 6)) << 11);
  v5 = *(a1 + ((v4 ^ BYTE2(v4)) & 0x7F) + 1152);
  if (v5 == 255)
  {
    return 0;
  }

  while (1)
  {
    v6 = (a1 + 8 * v5);
    if (*v6 == a2 && v6[1] == a3)
    {
      break;
    }

    v5 = *(a1 + 1024 + v5);
    if (v5 == 255)
    {
      return 0;
    }
  }

  return v6;
}

BOOL physx::Gu::PCMConvexVsMeshContactGeneration::processTriangle(uint64_t a1, float *a2, __int32 a3, char a4, int *a5, double a6, double a7, __n128 a8, double a9, double a10, __n128 a11)
{
  v75 = *MEMORY[0x1E69E9840];
  v71[0] = xmmword_1E3047670;
  v71[1] = xmmword_1E3047680;
  v71[2] = xmmword_1E30476A0;
  v14 = *a2;
  v14.f32[1] = a2[1];
  v15 = v14;
  v15.f32[2] = a2[2];
  a11.n128_f32[0] = a2[3];
  v16 = a11;
  v16.n128_f32[1] = a2[4];
  v17 = v16;
  v17.f32[2] = a2[5];
  a8.n128_f32[0] = a2[6];
  v18 = a8;
  v18.n128_f32[1] = a2[7];
  v19 = v18;
  v19.f32[2] = a2[8];
  v20 = vsubq_f32(v17, v15);
  v21 = vsubq_f32(v19, v15);
  v22 = vmls_f32(vmul_f32(*v20.i8, *&vextq_s8(v21, v21, 4uLL)), *&vextq_s8(v20, v20, 4uLL), *v21.i8);
  *v23.f32 = vext_s8(v22, vmls_f32(vmul_f32(*&vextq_s8(v20, v20, 8uLL), *v21.i8), *v20.i8, *&vextq_s8(v21, v21, 8uLL)), 4uLL);
  v23.i64[1] = v22.u32[0];
  *v21.i8 = vpadd_f32(vmul_f32(*v23.f32, *v23.f32), vmul_f32(v22.u32[0], v22.u32[0]));
  v24 = vpadd_f32(*v21.i8, *v21.i8);
  v25 = vrsqrte_f32(v24);
  v26 = 4;
  do
  {
    v25 = vmul_f32(v25, vrsqrts_f32(vmul_f32(v25, v25), v24));
    --v26;
  }

  while (v26);
  v27 = vbsl_s8(vdup_lane_s32(vceqz_f32(v24), 0), v24, vmul_f32(v24, v25));
  v28 = vrecpe_f32(v27);
  v29 = 4;
  do
  {
    v28 = vmul_f32(v28, vrecps_f32(v27, v28));
    --v29;
  }

  while (v29);
  v30 = vmulq_n_f32(v23, v28.f32[0]);
  v30.i32[3] = 0;
  v31 = vmulq_f32(v15, v30);
  v31.i64[0] = vpaddq_f32(v31, v31).u64[0];
  v32 = vmulq_f32(v30, *(a1 + 4528));
  v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
  v33 = vcgt_f32(vpadd_f32(*v31.f32, *v31.f32), vpadd_f32(*v32.f32, *v32.f32)).u8[0];
  if ((v33 & 1) == 0)
  {
    v34 = *(a1 + 2416);
    v35 = *(a1 + 2368);
    v36 = vmulq_n_f32(v35, *a2);
    v36.i32[3] = 0;
    v37 = *(a1 + 2384);
    v38 = vmulq_lane_f32(v37, *v14.f32, 1);
    v38.i32[3] = 0;
    v39 = *(a1 + 2400);
    v40 = vmulq_laneq_f32(v39, v15, 2);
    v40.i32[3] = 0;
    v41 = vmulq_n_f32(v35, a11.n128_f32[0]);
    v41.i32[3] = 0;
    v42 = vmulq_lane_f32(v37, v16.n128_u64[0], 1);
    v42.i32[3] = 0;
    v43 = vaddq_f32(v34, vaddq_f32(vaddq_f32(v36, v38), v40));
    v44 = vmulq_laneq_f32(v39, v17, 2);
    v44.i32[3] = 0;
    v45 = vmulq_n_f32(v35, a8.n128_f32[0]);
    v45.i32[3] = 0;
    v46 = vmulq_lane_f32(v37, v18.n128_u64[0], 1);
    v46.i32[3] = 0;
    v47 = vaddq_f32(v34, vaddq_f32(vaddq_f32(v41, v42), v44));
    v48 = vmulq_laneq_f32(v39, v19, 2);
    v48.i32[3] = 0;
    v49 = vaddq_f32(v34, vaddq_f32(vaddq_f32(v45, v46), v48));
    v67 = 0;
    v50 = vmulq_f32(vaddq_f32(v49, vaddq_f32(v43, v47)), vdupq_n_s32(0x3EAAAA9Fu));
    v50.i32[3] = 0;
    v64 = v50;
    v68 = v43;
    v69 = v47;
    v70 = v49;
    v65 = 0x7F7FFFFF00000000;
    v66 = 0x57F7FFFFFLL;
    v72[4] = *(a1 + 2320);
    v72[5] = v71;
    v72[6] = v71;
    v73 = 1;
    v72[0] = &unk_1F5D22E78;
    v74 = &v64;
    v51 = *(a1 + 2440);
    v63 = 0uLL;
    physx::Gu::PCMConvexVsMeshContactGeneration::generateTriangleFullContactManifold(a1, &v64, a3, a5, a4, *(a1 + 4544), v72, *(a1 + 4552), *(a1 + 2432), (a1 + 2440), (a1 + 2304), &v63);
    if (*(a1 + 2440) > v51)
    {
      if ((a4 & 8) != 0)
      {
        if ((a4 & 0x10) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v55 = *a5;
        v56 = a5[1];
        if (*a5 >= v56)
        {
          v57 = a5[1];
        }

        else
        {
          v57 = *a5;
        }

        if (v55 <= v56)
        {
          v55 = a5[1];
        }

        v61 = v57;
        v62 = v55;
        physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::addData(a1 + 2452, &v61);
        if ((a4 & 0x10) != 0)
        {
LABEL_9:
          if ((a4 & 0x20) != 0)
          {
LABEL_16:
            v61 = *a5;
            physx::Gu::CacheMap<physx::Gu::CachedVertex,128u>::addData(a1 + 3752, &v61);
            v61 = a5[1];
            physx::Gu::CacheMap<physx::Gu::CachedVertex,128u>::addData(a1 + 3752, &v61);
            v61 = a5[2];
            physx::Gu::CacheMap<physx::Gu::CachedVertex,128u>::addData(a1 + 3752, &v61);
            physx::Gu::PCMConvexVsMeshContactGeneration::addContactsToPatch(a1, v51, v63);
            return (v33 & 1) == 0;
          }

LABEL_10:
          v52 = a5[2];
          if (v52 >= *a5)
          {
            v53 = *a5;
          }

          else
          {
            v53 = a5[2];
          }

          if (v52 <= *a5)
          {
            v52 = *a5;
          }

          v61 = v53;
          v62 = v52;
          physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::addData(a1 + 2452, &v61);
          goto LABEL_16;
        }
      }

      v58 = a5[1];
      v59 = a5[2];
      if (v58 >= v59)
      {
        v60 = a5[2];
      }

      else
      {
        v60 = a5[1];
      }

      if (v58 <= v59)
      {
        v58 = a5[2];
      }

      v61 = v60;
      v62 = v58;
      physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::addData(a1 + 2452, &v61);
      if ((a4 & 0x20) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }
  }

  return (v33 & 1) == 0;
}

uint64_t physx::Gu::PCMConvexVsMeshContactGeneration::processTriangle(uint64_t a1, float32x4_t *a2, float *a3, __int32 a4, unsigned int a5, float32x2_t *a6, char a7, uint64_t a8, float32x4_t *a9, uint64_t a10, _DWORD *a11)
{
  v58 = *MEMORY[0x1E69E9840];
  v54[0] = xmmword_1E3047670;
  v54[1] = xmmword_1E3047680;
  v11 = a9[1];
  v12 = vmulq_n_f32(*a9, *a3);
  v12.i32[3] = 0;
  v13 = vmulq_n_f32(v11, a3[1]);
  v13.i32[3] = 0;
  v14 = vaddq_f32(v12, v13);
  v16 = a9[2];
  v15 = a9[3];
  v17 = vmulq_n_f32(v16, a3[2]);
  v17.i32[3] = 0;
  v18 = vaddq_f32(v14, v17);
  v19 = vmulq_n_f32(*a9, a3[3]);
  v19.i32[3] = 0;
  v20 = vmulq_n_f32(v11, a3[4]);
  v20.i32[3] = 0;
  v21 = vaddq_f32(v15, v18);
  v22 = vmulq_n_f32(v16, a3[5]);
  v22.i32[3] = 0;
  v23 = vaddq_f32(vaddq_f32(v19, v20), v22);
  v24 = vmulq_n_f32(*a9, a3[6]);
  v24.i32[3] = 0;
  v25 = vmulq_n_f32(v11, a3[7]);
  v25.i32[3] = 0;
  v26 = vaddq_f32(v15, v23);
  v27 = vmulq_n_f32(v16, a3[8]);
  v27.i32[3] = 0;
  v28 = vaddq_f32(v15, vaddq_f32(vaddq_f32(v24, v25), v27));
  v29 = vsubq_f32(v26, v21);
  v30 = vsubq_f32(v28, v21);
  v31 = vmls_f32(vmul_f32(*v29.i8, *&vextq_s8(v30, v30, 4uLL)), *&vextq_s8(v29, v29, 4uLL), *v30.i8);
  *v32.f32 = vext_s8(v31, vmls_f32(vmul_f32(*&vextq_s8(v29, v29, 8uLL), *v30.i8), *v29.i8, *&vextq_s8(v30, v30, 8uLL)), 4uLL);
  v32.i64[1] = v31.u32[0];
  v54[2] = xmmword_1E30476A0;
  v33 = vpadd_f32(vmul_f32(*v32.f32, *v32.f32), vmul_f32(v31.u32[0], v31.u32[0]));
  v34 = vpadd_f32(v33, v33);
  v35 = vrsqrte_f32(v34);
  v36 = 4;
  do
  {
    v35 = vmul_f32(v35, vrsqrts_f32(vmul_f32(v35, v35), v34));
    --v36;
  }

  while (v36);
  v37 = vbsl_s8(vdup_lane_s32(vceqz_f32(v34), 0), v34, vmul_f32(v34, v35));
  v38 = vrecpe_f32(v37);
  v39 = 4;
  do
  {
    v38 = vmul_f32(v38, vrecps_f32(v37, v38));
    --v39;
  }

  while (v39);
  if ((a7 & 1) == 0)
  {
    v40 = vmulq_n_f32(v32, v38.f32[0]);
    v40.i32[3] = 0;
    v41 = vmulq_f32(v40, a2[1]);
    v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
    v42 = vmulq_f32(v21, v40);
    v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
    if (vcgt_f32(vpadd_f32(*v42.f32, *v42.f32), vpadd_f32(*v41.f32, *v41.f32)).u8[0])
    {
      return 0;
    }
  }

  v50 = 0;
  v44 = vmulq_f32(vaddq_f32(v28, vaddq_f32(v21, v26)), vdupq_n_s32(0x3EAAAA9Fu));
  v44.i32[3] = 0;
  v47 = v44;
  v51 = v21;
  v52 = v26;
  v53 = v28;
  v48 = 0x7F7FFFFF00000000;
  v49 = 0x57F7FFFFFLL;
  v55[4] = a8;
  v55[5] = v54;
  v55[6] = v54;
  v43 = 1;
  v56 = 1;
  v55[0] = &unk_1F5D22E78;
  v57 = &v47;
  v46 = 0uLL;
  physx::Gu::PCMConvexVsMeshContactGeneration::generateTriangleFullContactManifold(&v47, a4, a5, a1, v55, a2, a10, a11, a6, &v46);
  return v43;
}

BOOL physx::Gu::PCMSphereVsMeshContactGeneration::processTriangle(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int *a5)
{
  v8.i64[0] = *a2;
  v8.i64[1] = *(a2 + 8);
  v9.i64[0] = *(a2 + 12);
  v9.i64[1] = *(a2 + 20);
  v10.i64[0] = *(a2 + 24);
  v10.i64[1] = *(a2 + 32);
  v11 = vsubq_f32(v9, v8);
  v12 = vsubq_f32(v10, v8);
  v13 = vmls_f32(vmul_f32(*v11.f32, *&vextq_s8(v12, v12, 4uLL)), *&vextq_s8(v11, v11, 4uLL), *v12.f32);
  *v14.f32 = vext_s8(v13, vmls_f32(vmul_f32(*&vextq_s8(v11, v11, 8uLL), *v12.f32), *v11.f32, *&vextq_s8(v12, v12, 8uLL)), 4uLL);
  v14.i64[1] = v13.u32[0];
  v15 = vpadd_f32(vmul_f32(*v14.f32, *v14.f32), vmul_f32(v13.u32[0], v13.u32[0]));
  v16 = vpadd_f32(v15, v15);
  v17 = vrsqrte_f32(v16);
  v18 = 4;
  do
  {
    v17 = vmul_f32(v17, vrsqrts_f32(vmul_f32(v17, v17), v16));
    --v18;
  }

  while (v18);
  v19 = vbsl_s8(vdup_lane_s32(vceqz_f32(v16), 0), v16, vmul_f32(v16, v17));
  v20 = vrecpe_f32(v19);
  v21 = 4;
  do
  {
    v20 = vmul_f32(v20, vrecps_f32(v19, v20));
    --v21;
  }

  while (v21);
  v22 = vmulq_n_f32(v14, v20.f32[0]);
  v22.i32[3] = 0;
  v23 = vmulq_f32(v8, v22);
  v23.i64[0] = vpaddq_f32(v23, v23).u64[0];
  v24 = vpadd_f32(*v23.f32, *v23.f32);
  v25 = *(a1 + 3760);
  v26 = vmulq_f32(v22, v25);
  v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
  v27 = vcgt_f32(v24, vpadd_f32(*v26.f32, *v26.f32)).u8[0];
  if (v27)
  {
    return (v27 & 1) == 0;
  }

  v28 = vsubq_f32(v25, v8);
  v29 = vmulq_f32(v11, v28);
  v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
  v30 = vpadd_f32(*v29.f32, *v29.f32);
  v31 = vmulq_f32(v12, v28);
  v31.i64[0] = vpaddq_f32(v31, v31).u64[0];
  v32 = vpadd_f32(*v31.f32, *v31.f32);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vcltz_f32(v32), vcltz_f32(v30)), 0), *v22.f32).u32[0] == -1)
  {
    LOBYTE(v65) = (a4 & 0x28) != 0;
    v115 = v8;
    v67 = vmulq_f32(v28, v28);
  }

  else
  {
    v33 = vsubq_f32(v25, v9);
    v34 = vmulq_f32(v11, v33);
    v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
    v35 = vpadd_f32(*v34.f32, *v34.f32);
    v36 = vmulq_f32(v12, v33);
    v36.i64[0] = vpaddq_f32(v36, v36).u64[0];
    v37 = vpadd_f32(*v36.f32, *v36.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vcge_f32(v35, v37), vcgez_f32(v35)), 0), *v22.f32).u32[0] == -1)
    {
      LOBYTE(v65) = (a4 & 0x18) != 0;
      v115 = v9;
      v67 = vmulq_f32(v33, v33);
    }

    else
    {
      v38 = vsubq_f32(v25, v10);
      v39 = vmulq_f32(v11, v38);
      v39.i64[0] = vpaddq_f32(v39, v39).u64[0];
      v40 = vpadd_f32(*v39.f32, *v39.f32);
      v41 = vmulq_f32(v12, v38);
      v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
      v42 = vpadd_f32(*v41.f32, *v41.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgez_f32(v42), vcge_f32(v42, v40)), 0), *v22.f32).u32[0] == -1)
      {
        LOBYTE(v65) = (a4 & 0x30) != 0;
        v115 = v10;
        v67 = vmulq_f32(v38, v38);
        v8 = v10;
        goto LABEL_30;
      }

      v43 = vextq_s8(v33, v33, 8uLL).u64[0];
      v44 = vextq_s8(v33, v33, 4uLL).u64[0];
      v45 = vextq_s8(v28, v28, 8uLL).u64[0];
      v46 = vextq_s8(v28, v28, 4uLL).u64[0];
      v47 = vmls_f32(vmul_f32(*v28.f32, v44), v46, *v33.f32);
      *v48.f32 = vext_s8(v47, vmls_f32(vmul_f32(v45, *v33.f32), *v28.f32, v43), 4uLL);
      v48.i64[1] = v47.u32[0];
      v49 = vmulq_f32(v14, v48);
      v49.i64[0] = vpaddq_f32(v49, v49).u64[0];
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcltz_f32(v35), vcgez_f32(v30)), vcltz_f32(vpadd_f32(*v49.f32, *v49.f32))), 0), *v22.f32).u32[0] == -1)
      {
        v68 = vsub_f32(v30, v35);
        v69 = vrecpe_f32(v68);
        v70 = 4;
        do
        {
          v69 = vmul_f32(v69, vrecps_f32(v68, v69));
          --v70;
        }

        while (v70);
        v8 = vmlaq_n_f32(v8, v11, vmul_f32(v30, v69).f32[0]);
        v71 = vextq_s8(v8, v8, 8uLL).u32[0];
        v65 = (a4 >> 3) & 1;
LABEL_29:
        v8.i64[1] = v71;
        v81 = vsubq_f32(v25, v8);
        v115 = v8;
        v67 = vmulq_f32(v81, v81);
        goto LABEL_30;
      }

      v50 = vextq_s8(v38, v38, 8uLL).u64[0];
      v51 = vextq_s8(v38, v38, 4uLL).u64[0];
      v52 = vmls_f32(vmul_f32(*v33.f32, v51), v44, *v38.f32);
      *v53.f32 = vext_s8(v52, vmls_f32(vmul_f32(v43, *v38.f32), *v33.f32, v50), 4uLL);
      v53.i64[1] = v52.u32[0];
      v54 = vmulq_f32(v14, v53);
      v54.i64[0] = vpaddq_f32(v54, v54).u64[0];
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v40, v42), vcge_f32(v37, v35)), vcltz_f32(vpadd_f32(*v54.f32, *v54.f32))), 0), *v22.f32).u32[0] != -1)
      {
        v55 = vmls_f32(vmul_f32(*v38.f32, v46), v51, *v28.f32);
        *v56.f32 = vext_s8(v55, vmls_f32(vmul_f32(v50, *v28.f32), *v38.f32, v45), 4uLL);
        v56.i64[1] = v55.u32[0];
        v57 = vmulq_f32(v14, v56);
        v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcltz_f32(v42), vcgez_f32(v32)), vcltz_f32(vpadd_f32(*v57.f32, *v57.f32))), 0), *v22.f32).u32[0] != -1)
        {
          v58 = vmulq_f32(v14, vsubq_f32(v8, v25));
          v59 = vrecpe_f32(v16);
          v60 = 4;
          do
          {
            v59 = vmul_f32(v59, vrecps_f32(v16, v59));
            --v60;
          }

          while (v60);
          v61 = vpaddq_f32(v58, v58).u64[0];
          v62 = vmulq_n_f32(v14, vmul_f32(v59, vpadd_f32(v61, v61)).f32[0]);
          v62.i32[3] = 0;
          v8 = vaddq_f32(v25, v62);
          v115 = v8;
          v63 = vmulq_f32(v62, v62);
          v63.i64[0] = vpaddq_f32(v63, v63).u64[0];
          v64 = vpadd_f32(*v63.f32, *v63.f32);
          if (COERCE_FLOAT(*(a1 + 3784)) <= v64.f32[0])
          {
            return (v27 & 1) == 0;
          }

          LOBYTE(v65) = 1;
          v66 = v22;
          goto LABEL_36;
        }

        v78 = vsub_f32(v32, v42);
        v79 = vrecpe_f32(v78);
        v80 = 4;
        do
        {
          v79 = vmul_f32(v79, vrecps_f32(v78, v79));
          --v80;
        }

        while (v80);
        v8 = vmlaq_n_f32(v8, v12, vmul_f32(v32, v79).f32[0]);
        v71 = vextq_s8(v8, v8, 8uLL).u32[0];
        v65 = (a4 >> 5) & 1;
        goto LABEL_29;
      }

      v72 = vsubq_f32(v10, v9);
      v73 = vsub_f32(v37, v35);
      v74 = vadd_f32(v73, vsub_f32(v40, v42));
      v75 = vrecpe_f32(v74);
      v76 = 4;
      do
      {
        v75 = vmul_f32(v75, vrecps_f32(v74, v75));
        --v76;
      }

      while (v76);
      v65 = (a4 >> 4) & 1;
      v9 = vmlaq_n_f32(v9, v72, vmul_f32(v73, v75).f32[0]);
      v9.i64[1] = vextq_s8(v9, v9, 8uLL).u32[0];
      v77 = vsubq_f32(v25, v9);
      v115 = v9;
      v67 = vmulq_f32(v77, v77);
    }

    v8 = v9;
  }

LABEL_30:
  v82 = vpaddq_f32(v67, v67).u64[0];
  v64 = vpadd_f32(v82, v82);
  if (COERCE_FLOAT(*(a1 + 3784)) <= v64.f32[0])
  {
    return (v27 & 1) == 0;
  }

  v83 = vsubq_f32(v25, v8);
  v84 = vmulq_f32(v83, v83);
  v84.i64[0] = vpaddq_f32(v84, v84).u64[0];
  v85 = vpadd_f32(*v84.f32, *v84.f32);
  v86 = vrsqrte_f32(v85);
  v87 = 4;
  do
  {
    v86 = vmul_f32(v86, vrsqrts_f32(vmul_f32(v86, v86), v85));
    --v87;
  }

  while (v87);
  v88 = vbsl_s8(vdup_lane_s32(vceqz_f32(v85), 0), v85, vmul_f32(v85, v86));
  v89 = vrecpe_f32(v88);
  v90 = 4;
  do
  {
    v89 = vmul_f32(v89, vrecps_f32(v88, v89));
    --v90;
  }

  while (v90);
  v66 = vmulq_n_f32(v83, v89.f32[0]);
  v66.i32[3] = 0;
LABEL_36:
  v114 = v66;
  v91 = vmulq_f32(v22, v66);
  v91.i64[0] = vpaddq_f32(v91, v91).u64[0];
  if (vpadd_f32(*v91.f32, *v91.f32).f32[0] > 0.996)
  {
    v97 = vrsqrte_f32(v64);
    v98 = 4;
    do
    {
      v97 = vmul_f32(v97, vrsqrts_f32(vmul_f32(v97, v97), v64));
      --v98;
    }

    while (v98);
    v99 = vbsl_s8(vdup_lane_s32(vceqz_f32(v64), 0), v64, vmul_f32(v64, v97));
    v100 = *a5;
    v101 = a5[1];
    if (*a5 >= v101)
    {
      v102 = a5[1];
    }

    else
    {
      v102 = *a5;
    }

    if (v100 <= v101)
    {
      v100 = a5[1];
    }

    *&v113 = __PAIR64__(v100, v102);
    physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::addData(a1 + 2452, &v113);
    v103 = a5[1];
    v104 = a5[2];
    if (v103 >= v104)
    {
      v105 = a5[2];
    }

    else
    {
      v105 = a5[1];
    }

    if (v103 <= v104)
    {
      v103 = a5[2];
    }

    *&v113 = __PAIR64__(v103, v105);
    physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::addData(a1 + 2452, &v113);
    v106 = a5[2];
    if (v106 >= *a5)
    {
      v107 = *a5;
    }

    else
    {
      v107 = a5[2];
    }

    if (v106 <= *a5)
    {
      v106 = *a5;
    }

    *&v113 = __PAIR64__(v106, v107);
    physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::addData(a1 + 2452, &v113);
    *v108.i8 = v99;
    physx::Gu::PCMSphereVsMeshContactGeneration::addToPatch(a1, &v115, &v114, a3, v108);
  }

  else
  {
    v92 = *(a1 + 3736);
    v93 = *(v92 + 4368);
    v94 = v93 + 15;
    v112 = v64;
    v111 = v66;
    if ((*(v92 + 4372) & 0x7FFFFFFFu) < v93 + 15)
    {
      physx::shdfnd::Array<unsigned int,physx::shdfnd::InlineAllocator<4352u,physx::shdfnd::ReflectionAllocator<unsigned int>>>::recreate(v92, v93 + 15);
      v64 = v112;
      v92 = *(a1 + 3736);
      v93 = *(v92 + 4368);
    }

    v95 = *(v92 + 4360) + 4 * v93;
    *(v92 + 4368) = v94;
    *&v113 = v64;
    v96 = *(a1 + 4832);
    DWORD2(v113) = v96;
    if ((*(a1 + 4836) & 0x7FFFFFFFu) <= v96)
    {
      physx::shdfnd::Array<physx::Gu::SortedTriangle,physx::shdfnd::InlineAllocator<1024u,physx::shdfnd::ReflectionAllocator<physx::Gu::SortedTriangle>>>::growAndPushBack(a1 + 3792, &v113);
      v64 = v112;
    }

    else
    {
      *(*(a1 + 4824) + 16 * v96) = v113;
      ++*(a1 + 4832);
    }

    v109 = v8;
    *(v95 + 48) = a3;
    *(v95 + 52) = 0;
    *(v95 + 56) = v65;
    *(v95 + 36) = *a5;
    *(v95 + 40) = a5[1];
    *(v95 + 44) = a5[2];
    v109.i32[3] = v111.i32[0];
    *v95 = v109;
    *(v95 + 16) = vextq_s8(v111, v111, 4uLL).u64[0];
    *(v95 + 24) = v64;
    *(v95 + 32) = v64.i32[0];
  }

  return (v27 & 1) == 0;
}

int64x2_t physx::Gu::PCMSphereVsMeshContactGeneration::addToPatch(unint64_t a1, _OWORD *a2, float32x4_t *a3, int a4, int64x2_t result)
{
  v6 = *(a1 + 2444);
  if (v6 && (v7 = (a1 + ((v6 - 1) << 6)), v8 = vmulq_f32(*v7, *a3), v8.i64[0] = vpaddq_f32(v8, v8).u64[0], vpadd_f32(*v8.f32, *v8.f32).f32[0] > COERCE_FLOAT(*(a1 + 2352))))
  {
    if (COERCE_FLOAT(v7[2].i64[1]) > *result.i32)
    {
      v54 = (*(a1 + 2432) + (v7[3].u32[0] << 6));
      *v54 = 0;
      v54[1] = 0;
      *(*(a1 + 2432) + (v7[3].u32[0] << 6) + 16) = *a2;
      v55 = *a3;
      v55.i32[3] = result.i32[1];
      *(*(a1 + 2432) + (v7[3].u32[0] << 6) + 32) = v55;
      *(*(a1 + 2432) + (v7[3].u32[0] << 6) + 48) = a4;
      v7[2].i64[1] = result.i64[0];
    }
  }

  else
  {
    v9 = (*(a1 + 2432) + (*(a1 + 2440) << 6));
    *v9 = 0;
    v9[1] = 0;
    *(*(a1 + 2432) + (*(a1 + 2440) << 6) + 16) = *a2;
    v10 = *a3;
    v10.i32[3] = result.i32[1];
    *(*(a1 + 2432) + (*(a1 + 2440) << 6) + 32) = v10;
    v11 = *(a1 + 2432);
    v12 = *(a1 + 2440);
    *(a1 + 2440) = v12 + 1;
    *(v11 + (v12 << 6) + 48) = a4;
    v13 = *(a1 + 2444);
    v14 = (a1 + (v13 << 6));
    v14[3].i32[0] = v12;
    v14[3].i32[1] = v12 + 1;
    v14[2].i64[1] = result.i64[0];
    result = *a3;
    *(a1 + 2444) = v13 + 1;
    *v14 = result;
  }

  v15 = *(a1 + 2440);
  if (v15 >= 0x10)
  {
    v16 = *(a1 + 2444);
    if (v16 >= 2)
    {
      v17 = 0;
      v18 = a1 + 2048;
      v19 = -1;
      for (i = 1; i != v16; ++i)
      {
        v21 = *(v18 + 8 * (i - 1));
        v22 = *(v18 + 8 * i);
        if (COERCE_FLOAT(*(v21 + 40)) > COERCE_FLOAT(*(v22 + 40)))
        {
          *(v18 + 8 * (i - 1)) = v22;
          *(v18 + 8 * i) = v21;
          if (i - 2 >= 0)
          {
            v23 = a1 + 2056 + 8 * v19;
            v24 = v17;
            do
            {
              v26 = *(v23 - 8);
              v25 = *v23;
              if (COERCE_FLOAT(*(*v23 + 40)) >= COERCE_FLOAT(*(v26 + 40)))
              {
                break;
              }

              *v23 = v26;
              *(v23 - 8) = v25;
              v23 -= 8;
              --v24;
            }

            while (v24 > 0);
          }
        }

        ++v19;
        ++v17;
      }
    }

    v27 = (a1 + 2048);
    v28 = (a1 + 2352);
    if (v16)
    {
      v29 = 0;
      for (j = 0; j != v16; ++j)
      {
        v31 = v27[j];
        v31[1].i64[1] = v31;
        v31[2].i64[0] = v31;
        v32 = v31[3].i32[1] - v31[3].i32[0];
        v31[3].i32[2] = v32;
        v31[1].i64[0] = 0;
        v33 = v29;
        while (v33)
        {
          v34 = *(a1 + 2040 + v33);
          v35 = *(v34 + 32);
          v36 = vmulq_f32(*v31, *v35);
          v36.i64[0] = vpaddq_f32(v36, v36).u64[0];
          v33 -= 8;
          if (vpadd_f32(*v36.f32, *v36.f32).f32[0] >= COERCE_FLOAT(*v28))
          {
            *(v34 + 16) = v31;
            v35[1].i64[1] = v31;
            v31[2].i64[0] = v35;
            *(*(v34 + 32) + 56) += v32;
            break;
          }
        }

        v29 += 8;
      }

      v37 = 0;
      v38 = *(a1 + 2432);
      v39 = (a1 + 2360);
      do
      {
        v40 = v27[v37];
        if (v40)
        {
          v41 = *(v40 + 32) == v40;
        }

        else
        {
          v41 = 0;
        }

        if (v41)
        {
          while (*(v40 + 16))
          {
            v42 = v40;
            v40 = *(v40 + 16);
            v43 = *(v42 + 48);
            v44 = *(v42 + 52);
            if (v43 < v44)
            {
              v45 = *(v40 + 52);
              do
              {
                v46 = *(v40 + 48);
                if (v46 < v45)
                {
                  do
                  {
                    v47 = v38 + (v46 << 6);
                    v48 = vsubq_f32(*(v47 + 16), *(v38 + (v43 << 6) + 16));
                    v49 = vmulq_f32(v48, v48);
                    v49.i64[0] = vpaddq_f32(v49, v49).u64[0];
                    if (COERCE_FLOAT(*v39) > vpadd_f32(*v49.f32, *v49.f32).f32[0])
                    {
                      v50 = (v38 + ((v45 - 1) << 6));
                      v51 = *v50;
                      v52 = v50[1];
                      v53 = v50[2];
                      *(v47 + 48) = *(v50 + 12);
                      *(v47 + 16) = v52;
                      *(v47 + 32) = v53;
                      *v47 = v51;
                      v45 = *(v40 + 52) - 1;
                      *(v40 + 52) = v45;
                      --v46;
                    }

                    ++v46;
                  }

                  while (v46 < v45);
                  v44 = *(v42 + 52);
                }

                ++v43;
              }

              while (v43 < v44);
            }
          }
        }

        ++v37;
      }

      while (v37 != v16);
      v15 = *(a1 + 2440);
      v56 = *(a1 + 2444);
    }

    else
    {
      v56 = 0;
      v39 = (a1 + 2360);
    }

    physx::Gu::MultiplePersistentContactManifold::addManifoldContactPoints(*(a1 + 2336), *(a1 + 2432), v15, v27, v56, v39, v28, 1);
    *(a1 + 2440) = 0;
    result = xmmword_1E3049620;
    v57 = 2048;
    v58 = vdupq_n_s64(a1);
    v59 = vdupq_n_s64(2uLL);
    do
    {
      *(a1 + v57) = vaddq_s64(v58, vshlq_n_s64(result, 6uLL));
      result = vaddq_s64(result, v59);
      v57 += 16;
    }

    while (v57 != 2304);
  }

  return result;
}

void physx::Gu::PCMSphereVsMeshContactGeneration::generateLastContacts(physx::Gu::PCMSphereVsMeshContactGeneration *this)
{
  v70 = *MEMORY[0x1E69E9840];
  v63 = *(this + 1208);
  if (!v63)
  {
    return;
  }

  v2 = *(this + 603);
  v68 = 0;
  v67 = v69;
  *(v64.i64 + 4) = 0x2000000000;
  v65 = v69;
  v66 = 0;
  v3 = v63 - 1;
  if (v63 - 1 < 1)
  {
    goto LABEL_40;
  }

  v4 = 0;
  v5 = v69;
  memset(v69, 0, sizeof(v69));
  while (1)
  {
    while (1)
    {
      if (v3 <= v4)
      {
        goto LABEL_34;
      }

      if ((v3 - v4) <= 4)
      {
        break;
      }

      v6 = (v2 + 16 * ((v4 + v3) / 2));
      v7 = (v2 + 16 * v4);
      v8 = *v7;
      if (COERCE_FLOAT(*v6) < COERCE_FLOAT(*v7))
      {
        v9 = *v7;
        *v7 = *v6;
        *v6 = v9;
        v8 = *v7;
      }

      v10 = (v2 + 16 * v3);
      v11 = *v10;
      if (COERCE_FLOAT(*v10) < *&v8)
      {
        v12 = *v7;
        *v7 = *v10;
        *v10 = v12;
        v11 = *v10;
      }

      if (*&v11 < COERCE_FLOAT(*v6))
      {
        v13 = *v6;
        *v6 = *v10;
        *v10 = v13;
      }

      v14 = *v6;
      *v6 = *(v10 - 1);
      *(v10 - 1) = v14;
      v15 = v3 - 1;
      v16 = (v2 + 16 * v15);
      v17 = v4;
      while (1)
      {
        v18 = 0;
        v19 = *v16;
        v20 = v17;
        v21 = (v2 + 16 * v17);
        do
        {
          v22 = *(v21++ + 2);
          ++v18;
        }

        while (*&v22 < *&v19);
        v23 = v15;
        v15 = v2 + 16 * v15;
        do
        {
          --v23;
          v24 = *(v15 - 16);
          v15 -= 16;
        }

        while (*&v19 < *&v24);
        if (v20 + v18 >= v23)
        {
          break;
        }

        v25 = *v21;
        *v21 = *v15;
        *v15 = v25;
        v17 = v18 + v20;
        LODWORD(v15) = v23;
      }

      v26 = *v21;
      *v21 = *v16;
      *v16 = v26;
      v27 = v64.u32[1];
      v28 = v64.i32[2] - 1;
      if (v20 - v4 + v18 >= v3 - v20 - v18)
      {
        if (v64.i32[1] >= v28)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Gu::SortedTriangle>>::grow(&v64);
          v27 = v64.u32[1];
          v5 = v65;
        }

        v64.i32[1] = v27 + 1;
        *(v5 + v27) = v18 + v20 + 1;
        v30 = v64.u32[1];
        ++v64.i32[1];
        *(v5 + v30) = v3;
        v3 = v20 + v18 - 1;
      }

      else
      {
        if (v64.i32[1] >= v28)
        {
          physx::shdfnd::internal::Stack<physx::shdfnd::ReflectionAllocator<physx::Gu::SortedTriangle>>::grow(&v64);
          v27 = v64.u32[1];
          v5 = v65;
        }

        v64.i32[1] = v27 + 1;
        *(v5 + v27) = v4;
        v29 = v64.u32[1];
        ++v64.i32[1];
        *(v5 + v29) = v20 - 1 + v18;
        v4 = v20 + v18 + 1;
      }
    }

    v31 = v4;
    v32 = v4 + 1;
    v33 = v2 + 16 + 16 * v4;
    do
    {
      v34 = v31++;
      v35 = v33;
      v36 = v32;
      v37 = v34;
      v38 = v34;
      do
      {
        v39 = *v35;
        v35 += 2;
        if (*&v39 < COERCE_FLOAT(*(v2 + 16 * v38)))
        {
          v38 = v36;
        }

        ++v37;
        ++v36;
      }

      while (v37 < v3);
      if (v38 != v34)
      {
        v40 = *(v2 + 16 * v38);
        *(v2 + 16 * v38) = *(v2 + 16 * v34);
        *(v2 + 16 * v34) = v40;
      }

      ++v32;
      v33 += 16;
    }

    while (v31 != v3);
LABEL_34:
    v41 = v64.i32[1];
    if (!v64.i32[1])
    {
      break;
    }

    --v64.i32[1];
    v3 = *(v5 + (v41 - 1));
    v64.i32[1] = v41 - 2;
    v4 = *(v5 + (v41 - 2));
  }

  if (v66)
  {
    if (v5)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
      if (v68)
      {
        physx::shdfnd::TempAllocator::deallocate(&v67, v67);
      }
    }
  }

LABEL_40:
  v42 = 0;
  v43 = *(*(this + 467) + 4360);
  do
  {
    v44 = v43 + 60 * *(*(this + 603) + 16 * v42 + 8);
    v46 = *(v44 + 36);
    v45 = *(v44 + 40);
    v47 = *(v44 + 44);
    v48 = *(v44 + 56);
    if (v46 >= v45)
    {
      v49 = *(v44 + 40);
    }

    else
    {
      v49 = *(v44 + 36);
    }

    if (v46 <= v45)
    {
      v50 = *(v44 + 40);
    }

    else
    {
      v50 = *(v44 + 36);
    }

    *&v69[0] = __PAIR64__(v50, v49);
    v51 = physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::addData(this + 2452, v69);
    if (v45 >= v47)
    {
      v52 = v47;
    }

    else
    {
      v52 = v45;
    }

    if (v45 <= v47)
    {
      v53 = v47;
    }

    else
    {
      v53 = v45;
    }

    *&v69[0] = __PAIR64__(v53, v52);
    v54 = physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::addData(this + 2452, v69);
    if (v47 >= v46)
    {
      v55 = v46;
    }

    else
    {
      v55 = v47;
    }

    if (v47 <= v46)
    {
      v56 = v46;
    }

    else
    {
      v56 = v47;
    }

    *&v69[0] = __PAIR64__(v56, v55);
    v57 = physx::Gu::CacheMap<physx::Gu::CachedEdge,128u>::addData(this + 2452, v69);
    if (v51 && v54 && v57 && v48)
    {
      *&v58 = *v44;
      *(&v58 + 1) = *(v44 + 8);
      v69[0] = v58;
      *&v58 = *(v44 + 12);
      v60.i64[1] = *(v44 + 20);
      v64 = v60;
      v59 = (v44 + 24);
      *v60.i8 = vld1_dup_f32(v59);
      v61 = vrsqrte_f32(*v60.i8);
      v62 = 4;
      do
      {
        v61 = vmul_f32(v61, vrsqrts_f32(vmul_f32(v61, v61), *v60.i8));
        --v62;
      }

      while (v62);
      *v60.i8 = vbsl_s8(vdup_lane_s32(vceqz_f32(*v60.i8), 0), *v60.i8, vmul_f32(*v60.i8, v61));
      physx::Gu::PCMSphereVsMeshContactGeneration::addToPatch(this, v69, &v64, *(v44 + 48), v60);
    }

    ++v42;
  }

  while (v42 != v63);
}

__n128 physx::Gu::PCMCapsuleVsMeshContactGeneration::generateEE(int8x8_t *a1, int a2, uint64_t a3, _DWORD *a4, __n128 result, float32x4_t a6, float32x2_t a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a9, a8);
  v10 = *a1->i8;
  v11 = vextq_s8(v10, v10, 8uLL).u64[0];
  v12 = vext_s8(*a1, v11, 4uLL);
  v13 = vmls_f32(vmul_f32(*v9.f32, v12), *&vextq_s8(v9, v9, 4uLL), *a1);
  *v14.f32 = vext_s8(v13, vmls_f32(vmul_f32(*&vextq_s8(v9, v9, 8uLL), *a1), *v9.f32, v11), 4uLL);
  v14.i64[1] = v13.u32[0];
  v15 = vmulq_f32(v14, a8);
  v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
  v16 = vpadd_f32(*v15.f32, *v15.f32);
  v17 = vmulq_f32(v14, result);
  v17.i64[0] = vpaddq_f32(v17, v17).u64[0];
  v18 = vpadd_f32(*v17.f32, *v17.f32);
  v19 = vmulq_f32(v14, a6);
  v19.i64[0] = vpaddq_f32(v19, v19).u64[0];
  if (vmul_f32(vsub_f32(v18, v16), vsub_f32(vpadd_f32(*v19.f32, *v19.f32), v16)).f32[0] <= 0.0)
  {
    v20 = vsubq_f32(a6, result);
    v21 = vmulq_f32(v20, v14);
    v21.i64[0] = vpaddq_f32(v21, v21).u64[0];
    v22 = vpadd_f32(*v21.f32, *v21.f32);
    if (v22.f32[0] != 0.0)
    {
      v23 = vrecpe_f32(v22);
      v24 = 4;
      do
      {
        v23 = vmul_f32(v23, vrecps_f32(v22, v23));
        --v24;
      }

      while (v24);
      result = vmlaq_n_f32(result, v20, vmul_f32(vsub_f32(v16, v18), v23).f32[0]);
      result.n128_u64[1] = vextq_s8(result, result, 8uLL).u32[0];
      v25 = vmls_f32(vmul_f32(*&vextq_s8(v20, v20, 4uLL), *v10.f32), v12, *v20.f32);
      *v26.f32 = vext_s8(v25, vmls_f32(vmul_f32(*v20.f32, v11), *v10.f32, *&vextq_s8(v20, v20, 8uLL)), 4uLL);
      v26.i64[1] = v25.u32[0];
      v27 = vsubq_f32(result, a8);
      v28 = vmulq_f32(v26, v27);
      v29 = vextq_s8(v28, v28, 8uLL).u64[0];
      v30 = vmulq_f32(v9, v26);
      v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
      v31 = vpadd_f32(*v30.f32, *v30.f32);
      v32 = vrecpe_f32(v31);
      v33 = 4;
      do
      {
        v32 = vmul_f32(v32, vrecps_f32(v31, v32));
        --v33;
      }

      while (v33);
      v34 = vpadd_f32(*v28.i8, v29);
      v35 = vmul_f32(v32, vpadd_f32(v34, v34));
      __asm { FMOV            V6.2S, #1.0 }

      if (vuzp1_s8(vdup_lane_s16(vorn_s8(vmvn_s8(vcge_f32(_D6, v35)), vcgez_f32(v35)), 0), result.n128_u64[0]).u32[0] != -1)
      {
        v41 = vmlsq_lane_f32(v27, v9, v35, 0);
        v42 = vextq_s8(v41, v41, 8uLL).u32[0];
        v43 = vpadd_f32(vmul_f32(*v41.f32, *v41.f32), vmul_f32(v42, v42));
        if ((vmvn_s8(vcgt_f32(a7, vpadd_f32(v43, v43))).u8[0] & 1) == 0)
        {
          v41.i64[1] = v42;
          v44 = vsubq_f32(result, v41);
          v45 = vmulq_f32(v10, v41);
          v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
          *(a3 + (*a4 << 6)) = result;
          *(a3 + (*a4 << 6) + 16) = v44;
          result = *a1->i8;
          result.n128_u32[3] = vpadd_f32(*&v45, *&v45).u32[1];
          *(a3 + (*a4 << 6) + 32) = result;
          v46 = *a4;
          *a4 = v46 + 1;
          *(a3 + (v46 << 6) + 48) = a2;
        }
      }
    }
  }

  return result;
}

__n128 physx::Gu::PCMCapsuleVsMeshContactGeneration::generateEEMTD(int8x8_t *a1, int a2, uint64_t a3, _DWORD *a4, __n128 result, float32x4_t a6, float32x2_t a7, float32x4_t a8, float32x4_t a9)
{
  v9 = vsubq_f32(a9, a8);
  v10 = *a1->i8;
  v11 = vextq_s8(v10, v10, 8uLL).u64[0];
  v12 = vext_s8(*a1, v11, 4uLL);
  v13 = vmls_f32(vmul_f32(*v9.f32, v12), *&vextq_s8(v9, v9, 4uLL), *a1);
  *v14.f32 = vext_s8(v13, vmls_f32(vmul_f32(*&vextq_s8(v9, v9, 8uLL), *a1), *v9.f32, v11), 4uLL);
  v14.i64[1] = v13.u32[0];
  v15 = vmulq_f32(v14, a8);
  v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
  v16 = vpadd_f32(*v15.f32, *v15.f32);
  v17 = vmulq_f32(v14, result);
  v17.i64[0] = vpaddq_f32(v17, v17).u64[0];
  v18 = vpadd_f32(*v17.f32, *v17.f32);
  v19 = vmulq_f32(v14, a6);
  v19.i64[0] = vpaddq_f32(v19, v19).u64[0];
  if (vmul_f32(vsub_f32(v18, v16), vsub_f32(vpadd_f32(*v19.f32, *v19.f32), v16)).f32[0] <= 0.0)
  {
    v20 = vsubq_f32(a6, result);
    v21 = vmulq_f32(v20, v14);
    v21.i64[0] = vpaddq_f32(v21, v21).u64[0];
    v22 = vpadd_f32(*v21.f32, *v21.f32);
    if (v22.f32[0] != 0.0)
    {
      v23 = vrecpe_f32(v22);
      v24 = 4;
      do
      {
        v23 = vmul_f32(v23, vrecps_f32(v22, v23));
        --v24;
      }

      while (v24);
      result = vmlaq_n_f32(result, v20, vmul_f32(vsub_f32(v16, v18), v23).f32[0]);
      result.n128_u64[1] = vextq_s8(result, result, 8uLL).u32[0];
      v25 = vmls_f32(vmul_f32(*&vextq_s8(v20, v20, 4uLL), *v10.f32), v12, *v20.f32);
      *v26.f32 = vext_s8(v25, vmls_f32(vmul_f32(*v20.f32, v11), *v10.f32, *&vextq_s8(v20, v20, 8uLL)), 4uLL);
      v26.i64[1] = v25.u32[0];
      v27 = vsubq_f32(result, a8);
      v28 = vmulq_f32(v26, v27);
      v29 = vextq_s8(v28, v28, 8uLL).u64[0];
      v30 = vmulq_f32(v9, v26);
      v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
      v31 = vpadd_f32(*v30.f32, *v30.f32);
      v32 = vrecpe_f32(v31);
      v33 = 4;
      do
      {
        v32 = vmul_f32(v32, vrecps_f32(v31, v32));
        --v33;
      }

      while (v33);
      v34 = vpadd_f32(*v28.i8, v29);
      __asm { FMOV            V6.2S, #1.0 }

      v40 = vmlsq_lane_f32(v27, v9, vmax_f32(vmin_f32(vmul_f32(v32, vpadd_f32(v34, v34)), _D6), 0), 0);
      v40.i64[1] = vextq_s8(v40, v40, 8uLL).u32[0];
      v41 = vmulq_f32(v10, v40);
      v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
      v42 = vpadd_f32(*v41.f32, *v41.f32);
      if ((vmvn_s8(vcgt_f32(a7, v42)).u8[0] & 1) == 0)
      {
        *(a3 + (*a4 << 6)) = result;
        *(a3 + (*a4 << 6) + 16) = vsubq_f32(result, v40);
        result = *a1->i8;
        result.n128_u32[3] = v42.u32[1];
        *(a3 + (*a4 << 6) + 32) = result;
        v43 = *a4;
        *a4 = v43 + 1;
        *(a3 + (v43 << 6) + 48) = a2;
      }
    }
  }

  return result;
}

float32x4_t physx::Gu::PCMCapsuleVsMeshContactGeneration::generateContacts(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, int a4, float32x4_t *a5, float32x2_t *a6, uint64_t a7, _DWORD *a8, float32x4_t a9, float32x4_t a10, float32x4_t a11)
{
  v11 = *a1;
  v12 = vsubq_f32(a9, *a1);
  v13 = vsubq_f32(a10, *a1);
  result = vmulq_f32(v12, v12);
  result.i64[0] = vpaddq_f32(result, result).u64[0];
  *result.f32 = vpadd_f32(*result.f32, *result.f32);
  v15 = vmulq_f32(v12, v13);
  v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
  v16 = vpadd_f32(*v15.f32, *v15.f32);
  v17 = vmulq_f32(v13, v13);
  v17.i64[0] = vpaddq_f32(v17, v17).u64[0];
  v18 = vpadd_f32(*v17.f32, *v17.f32);
  v19 = vsub_f32(vmul_f32(*result.f32, v18), vmul_f32(v16, v16));
  v20 = vrecpe_f32(v19);
  v21 = 4;
  do
  {
    v20 = vmul_f32(v20, vrecps_f32(v19, v20));
    --v21;
  }

  while (v21);
  v22 = vsubq_f32(a11, v11);
  v23 = *a2;
  v24 = vnegq_f32(v22);
  v24.i32[3] = 0;
  v25 = vmulq_f32(v24, *a2);
  v26 = vextq_s8(v25, v25, 8uLL).u64[0];
  v27 = vmulq_f32(*a2, *a3);
  v27.i64[0] = vpaddq_f32(v27, v27).u64[0];
  v28 = vpadd_f32(*v27.f32, *v27.f32);
  v29 = vrecpe_f32(v28);
  v30 = 4;
  v31 = v29;
  do
  {
    v31 = vmul_f32(v31, vrecps_f32(v28, v31));
    --v30;
  }

  while (v30);
  v32 = vpadd_f32(*v25.i8, v26);
  v33 = vmul_f32(v31, vpadd_f32(v32, v32));
  v34 = vdup_lane_s32(vcgtz_f32(v28), 0);
  *v35.f32 = vand_s8(v34, v33);
  v36 = vmulq_f32(v22, v23);
  v36.i64[0] = vpaddq_f32(v36, v36).u64[0];
  v37 = vpadd_f32(*v36.f32, *v36.f32);
  v38 = vmlaq_n_f32(a11, *a3, v35.f32[0]);
  v38.i64[1] = vextq_s8(v38, v38, 8uLL).u32[0];
  v39 = vsubq_f32(v38, v11);
  v40 = vmulq_f32(v12, v39);
  v40.i64[0] = vpaddq_f32(v40, v40).u64[0];
  *v40.f32 = vpadd_f32(*v40.f32, *v40.f32);
  v41 = vmulq_f32(v13, v39);
  v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
  *v41.f32 = vpadd_f32(*v41.f32, *v41.f32);
  v42 = vmul_f32(v20, vsub_f32(vmul_f32(v18, *v40.f32), vmul_f32(v16, *v41.f32)));
  *v41.f32 = vmul_f32(v20, vsub_f32(vmul_f32(*result.f32, *v41.f32), vmul_f32(v16, *v40.f32)));
  v43 = vdup_n_s32(0x3F800001u);
  v44 = vsubq_f32(*a5, v11);
  if (vuzp1_s8(vcltz_s16(vshl_n_s16(vdup_lane_s16(vand_s8(vand_s8(vand_s8(vand_s8(vcge_f32(v43, v42), vcgt_f32(*a6, v37)), vand_s8(vcge_f32(v42, 0xB4000000B4000000), vcge_f32(v43, *v41.f32))), vcge_f32(*v41.f32, 0xB4000000B4000000)), vcgt_f32(v43, vadd_f32(v42, *v41.f32))), 0), 0xFuLL)), *result.f32).u32[0] == -1)
  {
    *(a7 + (*a8 << 6)) = a11;
    *(a7 + (*a8 << 6) + 16) = v38;
    v45 = *a3;
    v35.i64[1] = v35.i64[0];
    v45.i32[3] = vnegq_f32(v35).i32[3];
    *(a7 + (*a8 << 6) + 32) = v45;
    v46 = *a8;
    *a8 = v46 + 1;
    *(a7 + (v46 << 6) + 48) = a4;
    v23 = *a2;
  }

  v47 = vnegq_f32(v44);
  v47.i32[3] = 0;
  v48 = vmulq_f32(v47, v23);
  v49 = vextq_s8(v48, v48, 8uLL).u64[0];
  v50 = vmulq_f32(v44, v23);
  v51 = vextq_s8(v50, v50, 8uLL).u64[0];
  v52 = 4;
  do
  {
    v29 = vmul_f32(v29, vrecps_f32(v28, v29));
    --v52;
  }

  while (v52);
  v53 = vpadd_f32(*v48.f32, v49);
  v54 = vpadd_f32(*v50.i8, v51);
  *v48.f32 = vand_s8(v34, vmul_f32(v29, vpadd_f32(v53, v53)));
  v55 = vmlaq_n_f32(*a5, *a3, v48.f32[0]);
  v55.i64[1] = vextq_s8(v55, v55, 8uLL).u32[0];
  v56 = vsubq_f32(v55, *a1);
  v57 = vmulq_f32(v12, v56);
  v57.i64[0] = vpaddq_f32(v57, v57).u64[0];
  *v57.f32 = vpadd_f32(*v57.f32, *v57.f32);
  v58 = vmulq_f32(v13, v56);
  v58.i64[0] = vpaddq_f32(v58, v58).u64[0];
  *v58.f32 = vpadd_f32(*v58.f32, *v58.f32);
  v59 = vmul_f32(v20, vsub_f32(vmul_f32(v18, *v57.f32), vmul_f32(v16, *v58.f32)));
  v60 = vmul_f32(v20, vsub_f32(vmul_f32(*result.f32, *v58.f32), vmul_f32(v16, *v57.f32)));
  *v57.f32 = vdup_n_s32(0x3F800001u);
  v61 = vcltz_s16(vshl_n_s16(vdup_lane_s16(vand_s8(vand_s8(vand_s8(vand_s8(vcge_f32(*v57.f32, v59), vcgt_f32(*a6, vpadd_f32(v54, v54))), vand_s8(vcge_f32(v59, 0xB4000000B4000000), vcge_f32(*v57.f32, v60))), vcge_f32(v60, 0xB4000000B4000000)), vcgt_f32(*v57.f32, vadd_f32(v59, v60))), 0), 0xFuLL));
  *result.f32 = vuzp1_s8(v61, v61);
  if (result.i32[0] == -1)
  {
    *(a7 + (*a8 << 6)) = *a5;
    *(a7 + (*a8 << 6) + 16) = v55;
    v48.i64[1] = v48.i64[0];
    result = *a3;
    result.i32[3] = vnegq_f32(v48).i32[3];
    *(a7 + (*a8 << 6) + 32) = result;
    v62 = *a8;
    *a8 = v62 + 1;
    *(a7 + (v62 << 6) + 48) = a4;
  }

  return result;
}

void *physx::Gu::pcmDistanceSegmentTriangleSquared(void *result, void *a2, void *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v8 = vsubq_f32(a7, a6);
  v9 = vsubq_f32(a8, a6);
  v10 = vmls_f32(vmul_f32(*v8.f32, *&vextq_s8(v9, v9, 4uLL)), *&vextq_s8(v8, v8, 4uLL), *v9.f32);
  *v11.f32 = vext_s8(v10, vmls_f32(vmul_f32(*&vextq_s8(v8, v8, 8uLL), *v9.f32), *v8.f32, *&vextq_s8(v9, v9, 8uLL)), 4uLL);
  v11.i64[1] = v10.u32[0];
  v12 = vpadd_f32(vmul_f32(*v11.f32, *v11.f32), vmul_f32(v10.u32[0], v10.u32[0]));
  v13 = vpadd_f32(v12, v12);
  v14 = vrsqrte_f32(v13);
  v15 = 4;
  do
  {
    v14 = vmul_f32(v14, vrsqrts_f32(vmul_f32(v14, v14), v13));
    --v15;
  }

  while (v15);
  v16 = vsubq_f32(a4, a6);
  v17 = vbsl_s8(vdup_lane_s32(vceqz_f32(v13), 0), v13, vmul_f32(v13, v14));
  v18 = vrecpe_f32(v17);
  v19 = 4;
  do
  {
    v18 = vmul_f32(v18, vrecps_f32(v17, v18));
    --v19;
  }

  while (v19);
  v20 = vsubq_f32(a8, a7);
  v21 = vmulq_n_f32(v11, v18.f32[0]);
  v21.i32[3] = 0;
  v22 = vmulq_f32(v8, v8);
  v23 = vmulq_f32(v8, v9);
  v24 = vmulq_f32(v9, v9);
  v25 = vmulq_f32(v16, v21);
  v26 = vzip1q_s32(v22, v24);
  v27 = vzip2q_s32(v22, v24);
  v28 = vzip1q_s32(v23, v25);
  v29 = vaddq_f32(vzip1q_s32(v27, vzip2q_s32(v23, v25)), vaddq_f32(vzip1q_s32(v26, v28), vzip2q_s32(v26, v28)));
  v30 = vmulq_f32(v29, v29);
  v31 = vsub_f32(vmul_laneq_f32(vdup_lane_s32(*v29.f32, 0), v29, 2), vdup_lane_s32(*v30.i8, 1));
  v32 = vrecpe_f32(v31);
  v33 = 4;
  do
  {
    v32 = vmul_f32(v32, vrecps_f32(v31, v32));
    --v33;
  }

  while (v33);
  v34 = vsubq_f32(a5, a4);
  v35 = vmulq_f32(vsubq_f32(a5, a6), v21);
  v35.i64[0] = vpaddq_f32(v35, v35).u64[0];
  v36 = vpadd_f32(*v35.f32, *v35.f32);
  if (vuzp1_s8(vdup_lane_s16(vcltz_f32(vmul_laneq_f32(v36, v29, 3)), 0), *a4.f32).u32[0] != -1)
  {
    goto LABEL_11;
  }

  v37 = vdup_lane_s32(*v29.f32, 1);
  v38 = vpaddq_f32(v25, v25).u64[0];
  v39 = vmulq_f32(v34, v21);
  v39.i64[0] = vpaddq_f32(v39, v39).u64[0];
  v40 = vpadd_f32(*v39.f32, *v39.f32);
  v41 = vrecpe_f32(v40);
  v42 = 4;
  do
  {
    v41 = vmul_f32(v41, vrecps_f32(v40, v41));
    --v42;
  }

  while (v42);
  v43 = vmul_f32(v41, vneg_f32(vpadd_f32(v38, v38)));
  v44 = vmlaq_n_f32(a4, v34, v43.f32[0]);
  v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
  v45 = vsubq_f32(v44, a6);
  v46 = vmulq_f32(v8, v45);
  v46.i64[0] = vpaddq_f32(v46, v46).u64[0];
  *v46.f32 = vpadd_f32(*v46.f32, *v46.f32);
  v47 = vmulq_f32(v9, v45);
  v47.i64[0] = vpaddq_f32(v47, v47).u64[0];
  v48 = vpadd_f32(*v47.f32, *v47.f32);
  v49 = vmul_f32(v32, vmls_f32(vmul_laneq_f32(*v46.f32, v29, 2), v48, v37));
  v50 = vmul_f32(v32, vmls_f32(vmul_n_f32(v48, v29.f32[0]), *v46.f32, v37));
  v51 = vdup_n_s32(0x3F800001u);
  if (vuzp1_s8(vcltz_s16(vshl_n_s16(vdup_lane_s16(vand_s8(vand_s8(vand_s8(vcge_f32(v51, v49), vcge_f32(v51, v50)), vand_s8(vcge_f32(v49, 0xB4000000B4000000), vcge_f32(v50, 0xB4000000B4000000))), vcgt_f32(v51, vadd_f32(v49, v50))), 0), 0xFuLL)), *a4.f32).u32[0] == -1)
  {
    *result = v43;
    *a2 = v49;
    *a3 = v50;
  }

  else
  {
LABEL_11:
    v52 = vdup_laneq_s32(v30, 3);
    v53 = vmlsq_laneq_f32(a4, v21, v29, 3);
    v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
    v54 = vmlsq_lane_f32(a5, v21, v36, 0);
    v54.i64[1] = vextq_s8(v54, v54, 8uLL).u32[0];
    v55 = vsubq_f32(v53, a6);
    v56 = vsubq_f32(v54, a6);
    v57 = vmulq_f32(v8, v55);
    v58 = vmulq_f32(v9, v55);
    v59 = vmulq_f32(v8, v56);
    v60 = vmulq_f32(v9, v56);
    v61 = vzip1q_s32(v57, v59);
    v62 = vzip2q_s32(v57, v59);
    v63 = vzip1q_s32(v58, v60);
    v64 = vaddq_f32(vzip1q_s32(v62, vzip2q_s32(v58, v60)), vaddq_f32(vzip1q_s32(v61, v63), vzip2q_s32(v61, v63)));
    *v62.f32 = vrev64_s32(*v64.f32);
    *&v62.u32[2] = vrev64_s32(*&vextq_s8(v64, v64, 8uLL));
    v65 = vmulq_n_f32(vmlsq_lane_f32(vmulq_f32(vrev64q_s32(vuzp1q_s32(v29, v29)), v64), v62, *v29.f32, 1), v32.f32[0]);
    v66 = vdup_lane_s32(*v65.f32, 0);
    v67 = vdup_lane_s32(*v65.f32, 1);
    v68 = vdup_laneq_s32(v65, 2);
    v69 = vmul_f32(v36, v36);
    v70 = vdup_laneq_s32(v65, 3);
    v71 = vuzp1q_s32(v65, v65);
    v72 = vuzp2q_s32(v65, v65);
    v73.i64[0] = 0xB4000000B4000000;
    v73.i64[1] = 0xB4000000B4000000;
    v74 = vdupq_n_s32(0x3F800001u);
    v71.i64[0] = vandq_s8(vandq_s8(vandq_s8(vcgeq_f32(v74, v71), vcgeq_f32(v74, v72)), vandq_s8(vcgeq_f32(v71, v73), vcgeq_f32(v72, v73))), vcgtq_f32(v74, vpaddq_f32(v65, v65))).u64[0];
    v75 = vdupq_lane_s32(*v71.f32, 0);
    v76 = vdupq_lane_s32(*v71.f32, 1);
    v73.i64[0] = -1;
    v73.i64[1] = -1;
    if (vuzp1_s8(vmovn_s32(vceqq_s32(vandq_s8(v75, v76), v73)), *a4.f32).u32[0] == -1)
    {
      v143 = vdup_lane_s32(vcgt_f32(v69, v52), 0);
      __asm { FMOV            V2.2S, #1.0 }

      *result = vbic_s8(_D2, v143);
      *a2 = vbsl_s8(v143, v66, v68);
      *a3 = vbsl_s8(v143, v67, v70);
    }

    else
    {
      v77 = vdupq_lane_s32(*v34.f32, 1);
      v78 = vdupq_lane_s32(*a4.f32, 1);
      v79 = vzip1q_s32(v8, v9);
      v80 = vzip1q_s32(v20, v8);
      v81 = vzip2q_s32(v79, v80);
      v82 = vzip1q_s32(a6, a6);
      v83 = vzip1q_s32(a7, a6);
      v84 = vzip2q_s32(v82, v83);
      v85 = vsubq_f32(v78, v84);
      v86 = vmulq_f32(v34, v34);
      v86.i64[0] = vpaddq_f32(v86, v86).u64[0];
      *v91.f32 = vpadd_f32(*v86.f32, *v86.f32);
      v87 = vmulq_f32(v81, v81);
      v88 = vmulq_lane_f32(v81, *v34.f32, 1);
      v89 = vmulq_lane_f32(v85, *v34.f32, 1);
      v90 = vmulq_f32(v85, v81);
      v91.i64[1] = v91.i64[0];
      v92 = vrecpeq_f32(v91);
      v93 = 4;
      do
      {
        v92 = vmulq_f32(v92, vrecpsq_f32(v92, v91));
        --v93;
      }

      while (v93);
      v94 = vdupq_lane_s32(*v34.f32, 0);
      v95 = vdupq_lane_s32(*a4.f32, 0);
      v96 = vzip1q_s32(v79, v80);
      v97 = vzip1q_s32(v82, v83);
      v98 = vsubq_f32(v95, v97);
      v99 = vmlaq_n_f32(v89, v98, v34.f32[0]);
      v100 = vdupq_laneq_s32(v34, 2);
      v101 = vzip1q_s32(vzip2q_s32(v8, v9), vzip2q_s32(v20, v8));
      v102 = vzip1q_s32(vdupq_laneq_s32(a6, 2), vzip2q_s32(a7, a6));
      v103 = vmlaq_f32(vmlaq_f32(v87, v96, v96), v101, v101);
      v104 = vrecpeq_f32(v103);
      v105 = 4;
      do
      {
        v104 = vmulq_f32(v104, vrecpsq_f32(v104, v103));
        --v105;
      }

      while (v105);
      v147 = v70;
      v106 = vdupq_laneq_s32(a4, 2);
      v107 = vsubq_f32(v106, v102);
      v108 = vmlaq_f32(v99, v107, v100);
      v109 = vmlaq_f32(vmlaq_f32(v88, v96, v94), v101, v100);
      v110 = vsubq_f32(vmulq_f32(v103, v91), vmulq_f32(v109, v109));
      v111 = vmulq_f32(v108, v103);
      v112 = vrecpeq_f32(v110);
      v113 = 4;
      do
      {
        v112 = vmulq_f32(v112, vrecpsq_f32(v112, v110));
        --v113;
      }

      while (v113);
      v114 = vmlaq_f32(vmlaq_f32(v90, v98, v96), v107, v101);
      v115 = vmulq_f32(vsubq_f32(vmulq_f32(v109, v114), v111), v112);
      __asm { FMOV            V14.4S, #1.0 }

      v121 = vmaxq_f32(vminq_f32(vbslq_s8(vceqzq_f32(v110), _Q14, v115), _Q14), 0);
      v122.i64[0] = 0x3400000034000000;
      v122.i64[1] = 0x3400000034000000;
      v123 = vcgeq_f32(v122, v110);
      v122.i64[0] = 0x3F0000003F000000;
      v122.i64[1] = 0x3F0000003F000000;
      v124 = vmaxq_f32(vminq_f32(vbslq_s8(vceqzq_f32(v103), _Q14, vmulq_f32(v104, vaddq_f32(v114, vmulq_f32(v109, vbslq_s8(v123, v122, v121))))), _Q14), 0);
      v125 = vmaxq_f32(vminq_f32(vbslq_s8(vceqzq_f32(v91), _Q14, vmulq_f32(v92, vsubq_f32(vmulq_f32(v109, v124), v108))), _Q14), 0);
      v126 = vmlaq_f32(v102, v124, v101);
      v127 = vsubq_f32(vmlaq_f32(v95, v125, v94), vmlaq_f32(v97, v124, v96));
      v128 = vsubq_f32(vmlaq_f32(v78, v125, v77), vmlaq_f32(v84, v124, v81));
      v129 = vsubq_f32(vmlaq_f32(v106, v125, v100), v126);
      v130 = vmlaq_f32(vmlaq_f32(vmulq_f32(v129, v129), v128, v128), v127, v127);
      v131 = vdup_lane_s32(*v124.f32, 1);
      __asm { FMOV            V2.2S, #1.0 }

      v133 = vdup_lane_s32(*v130.i8, 0);
      v134 = vdup_lane_s32(*v130.i8, 1);
      *v130.i8 = vdup_laneq_s32(v130, 2);
      v135 = vand_s8(vcgt_f32(v134, v133), vcgt_f32(*v130.i8, v133));
      v136 = vdup_lane_s32(vcgt_f32(*v130.i8, v134), 0);
      v137 = vdup_lane_s32(v135, 0);
      v138 = vbsl_s8(v137, v133, vbsl_s8(v136, v134, *v130.i8));
      v139 = vorr_s8(vdup_lane_s32(vand_s8(*v124.f32, v135), 0), vbic_s8(vand_s8(v136, vsub_f32(_D2, v131)), v137));
      v140 = vbic_s8(vbsl_s8(v136, v131, vdup_laneq_s32(v124, 2)), v137);
      v141 = vbsl_s8(v137, vdup_lane_s32(*v125.f32, 0), vbsl_s8(v136, vdup_lane_s32(*v125.f32, 1), vdup_laneq_s32(v125, 2)));
      v142.i64[0] = -1;
      v142.i64[1] = -1;
      if (vuzp1_s8(vmovn_s32(vceqq_s32(v75, v142)), v138).u32[0] == -1)
      {
        v145 = vdup_lane_s32(vcgt_f32(v138, v52), 0);
        *result = vbic_s8(v141, v145);
        *a2 = vbsl_s8(v145, v66, v139);
        *a3 = vbsl_s8(v145, v67, v140);
      }

      else if (vuzp1_s8(vmovn_s32(vceqq_s32(v76, v142)), v138).u32[0] == -1)
      {
        v146 = vdup_lane_s32(vcgt_f32(v138, v69), 0);
        *result = vbsl_s8(v146, _D2, v141);
        *a2 = vbsl_s8(v146, v68, v139);
        *a3 = vbsl_s8(v146, v147, v140);
      }

      else
      {
        *result = v141;
        *a2 = v139;
        *a3 = v140;
      }
    }
  }

  return result;
}

BOOL physx::Gu::selectNormal(char a1, double a2, double a3)
{
  if (*&a2 < 0.000001)
  {
    if (*&a3 < 0.000001)
    {
      if ((a1 & 0x28) == 0)
      {
        return 1;
      }
    }

    else if (*&a3 > 1.0)
    {
      if ((a1 & 0x30) == 0)
      {
        return 1;
      }
    }

    else if ((a1 & 0x20) == 0)
    {
      return 1;
    }

    return 0;
  }

  if (*&a2 > 1.0)
  {
    return *&a3 < 0.000001 && (a1 & 0x18) == 0;
  }

  if (*&a3 < 0.000001)
  {
    return (a1 & 8) == 0;
  }

  v3 = 1;
  if ((a1 & 0x10) != 0 && vadd_f32(*&a2, *&a3).f32[0] >= 0.9999)
  {
    return 0;
  }

  return v3;
}

uint64_t physx::Gu::PCMCapsuleVsMeshContactGeneration::processTriangle(float32x4_t *a1, int a2, float32x4_t *a3, float32x2_t *a4, char a5, uint64_t a6, _DWORD *a7)
{
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1[5];
  v16 = vsubq_f32(v14, v13);
  v17 = vsubq_f32(v15, v13);
  v18 = vmls_f32(vmul_f32(*v16.i8, *&vextq_s8(v17, v17, 4uLL)), *&vextq_s8(v16, v16, 4uLL), *v17.i8);
  *v19.f32 = vext_s8(v18, vmls_f32(vmul_f32(*&vextq_s8(v16, v16, 8uLL), *v17.i8), *v16.i8, *&vextq_s8(v17, v17, 8uLL)), 4uLL);
  v19.i64[1] = v18.u32[0];
  v65 = v13;
  *v17.i8 = vpadd_f32(vmul_f32(*v19.f32, *v19.f32), vmul_f32(v18.u32[0], v18.u32[0]));
  v20 = vpadd_f32(*v17.i8, *v17.i8);
  v21 = vrsqrte_f32(v20);
  v22 = 4;
  do
  {
    v21 = vmul_f32(v21, vrsqrts_f32(vmul_f32(v21, v21), v20));
    --v22;
  }

  while (v22);
  v23 = vbsl_s8(vdup_lane_s32(vceqz_f32(v20), 0), v20, vmul_f32(v20, v21));
  v24 = vrecpe_f32(v23);
  v25 = 4;
  do
  {
    v24 = vmul_f32(v24, vrecps_f32(v23, v24));
    --v25;
  }

  while (v25);
  v26 = vmulq_n_f32(v19, v24.f32[0]);
  v26.i32[3] = 0;
  v55 = v26;
  v64 = v26;
  v27 = vmul_f32(*a4, *a4);
  v62 = 0.0;
  v63 = 0;
  v61 = 0.0;
  v56 = a3[3];
  v57 = v13;
  v54 = a3[4];
  v58 = v14;
  v59 = v15;
  physx::Gu::pcmDistanceSegmentTriangleSquared(&v63, &v62, &v61, v56, v54, v13, v14, v15);
  if (vcgt_f32(v27, v28).u8[0])
  {
    v53 = v28.f32[0];
    v51 = *&v61;
    v52 = *&v62;
    if (physx::Gu::selectNormal(a5, v62, v61))
    {
      v29 = v56;
      v60 = v55;
      v30 = v58;
      v31 = v59;
    }

    else
    {
      v30 = v58;
      v31 = v59;
      v29 = v56;
      if (v53 == 0.0)
      {
        v49 = v55;
      }

      else
      {
        v32 = vmlaq_n_f32(v56, vsubq_f32(v54, v56), *&v63);
        __asm { FMOV            V3.2S, #1.0 }

        LODWORD(v38) = vsub_f32(_D3, vadd_f32(v52, v51)).u32[0];
        v39 = vmulq_n_f32(v59, v51.f32[0]);
        v39.i32[3] = 0;
        v40 = vmlaq_n_f32(v39, v58, v52.f32[0]);
        v40.i64[1] = vextq_s8(v40, v40, 8uLL).u32[0];
        v41 = vmlaq_n_f32(v40, v57, v38);
        *v42.f32 = vsub_f32(*v32.i8, *v41.i8);
        *&v42.u32[2] = vsub_f32(vextq_s8(v32, v32, 8uLL).u32[0], vextq_s8(v41, v41, 8uLL).u32[0]);
        *v41.i8 = vpadd_f32(vmul_f32(*v42.f32, *v42.f32), vmul_f32(*&v42.u32[2], *&v42.u32[2]));
        v43 = vpadd_f32(*v41.i8, *v41.i8);
        v44 = vrsqrte_f32(v43);
        v45 = 4;
        do
        {
          v44 = vmul_f32(v44, vrsqrts_f32(vmul_f32(v44, v44), v43));
          --v45;
        }

        while (v45);
        v46 = vbsl_s8(vdup_lane_s32(vceqz_f32(v43), 0), v43, vmul_f32(v43, v44));
        v47 = vrecpe_f32(v46);
        v48 = 4;
        do
        {
          v47 = vmul_f32(v47, vrecps_f32(v46, v47));
          --v48;
        }

        while (v48);
        v49 = vmulq_n_f32(v42, v47.f32[0]);
        v49.i32[3] = 0;
      }

      v60 = v49;
    }

    physx::Gu::PCMCapsuleVsMeshContactGeneration::generateContacts(&v65, &v64, &v60, a2, a3 + 4, a4, a6, a7, v30, v31, v29);
    physx::Gu::PCMCapsuleVsMeshContactGeneration::generateEEMTD(&v60, a2, a6, a7, a3[3], a3[4], *a4, v57, v58);
    physx::Gu::PCMCapsuleVsMeshContactGeneration::generateEEMTD(&v60, a2, a6, a7, a3[3], a3[4], *a4, v58, v59);
    physx::Gu::PCMCapsuleVsMeshContactGeneration::generateEEMTD(&v60, a2, a6, a7, a3[3], a3[4], *a4, v57, v59);
  }

  return 1;
}

uint64_t physx::Gu::pcmContactConvexConvex(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v355 = *MEMORY[0x1E69E9840];
  v10 = *a6;
  _X27 = *(a1 + 48);
  __asm { PRFM            #0, [X27] }

  _X25 = *(a2 + 48);
  __asm { PRFM            #0, [X25] }

  v18 = *(a1 + 4);
  v19 = v18;
  v19.i32[3] = 0;
  v20 = *(a2 + 4);
  v21 = v20;
  v21.i32[3] = 0;
  v313 = vdup_lane_s32(*a5, 0);
  v22.i64[0] = a3[1].i64[0];
  v22.i64[1] = a3[1].u32[2];
  v312[0] = *a3;
  v312[1] = v22;
  v23.i64[0] = a4[1].i64[0];
  v23.i64[1] = a4[1].u32[2];
  v24 = vnegq_f32(*a4);
  v25 = vsubq_f32(v22, v23);
  v26 = v24;
  v26.i32[3] = 0;
  v27 = vdupq_laneq_s32(*a4, 3).u64[0];
  v28 = vmulq_n_f32(v25, vmla_f32(0xBF000000BF000000, v27, v27).f32[0]);
  v28.i32[3] = 0;
  v29 = vextq_s8(v26, v26, 8uLL).u64[0];
  v30 = vext_s8(*v24.f32, v29, 4uLL);
  v31 = vmls_f32(vmul_f32(*v24.f32, *&vextq_s8(v25, v25, 4uLL)), v30, *v25.f32);
  *v32.f32 = vext_s8(v31, vmls_f32(vmul_f32(v29, *v25.f32), *v24.f32, *&vextq_s8(v25, v25, 8uLL)), 4uLL);
  v32.i64[1] = v31.u32[0];
  v33 = vmlaq_laneq_f32(v28, v32, *a4, 3);
  v33.i64[1] = vextq_s8(v33, v33, 8uLL).u32[0];
  v34 = vmulq_f32(v26, v25);
  v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
  v35 = vmlaq_n_f32(v33, v26, vpadd_f32(*v34.f32, *v34.f32).f32[0]);
  v36 = vaddq_f32(v35, v35);
  v36.i32[3] = 0;
  v37 = v312[0];
  v37.i32[3] = 0;
  _Q16 = vmulq_f32(v37, v26);
  _Q16.i64[0] = vpaddq_f32(_Q16, _Q16).u64[0];
  v39 = vmulq_laneq_f32(v37, *a4, 3);
  v37.i64[0] = vextq_s8(v37, v37, 8uLL).u64[0];
  v40 = vmls_f32(vmul_f32(vext_s8(*v312[0].f32, *v37.f32, 4uLL), *v24.f32), v30, *v312[0].f32);
  *v41.f32 = vext_s8(v40, vmls_f32(vmul_f32(*v312[0].f32, v29), *v24.f32, *v37.f32), 4uLL);
  *&v41.u32[2] = v40;
  v42 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v26, v312[0], 3), v39), v41);
  *v24.f32 = vdup_lane_s32(*v42.f32, 1);
  *v26.f32 = vdup_laneq_s32(v42, 2);
  v43 = vaddq_f32(v42, v42);
  v44 = vdup_lane_s32(*v43.f32, 0);
  v45 = vsub_f32(vmul_f32(*&vextq_s8(v312[0], v312[0], 8uLL), *&vextq_s8(*a4, *a4, 8uLL)), vpadd_f32(*_Q16.f32, *_Q16.f32));
  *v39.f32 = vmul_lane_f32(*v24.f32, *v43.f32, 1);
  v46 = vmul_laneq_f32(*v26.f32, v43, 2);
  v47 = vmul_n_f32(*v24.f32, v43.f32[0]);
  v48 = vmul_n_f32(*v26.f32, v43.f32[0]);
  *v35.f32 = vmul_lane_f32(vdup_lane_s32(*v43.f32, 1), v45, 1);
  *_Q16.f32 = vmul_lane_f32(vdup_laneq_s32(v43, 2), v45, 1);
  __asm { FMOV            V15.2S, #1.0 }

  *v50.f32 = vext_s8(vsub_f32(vsub_f32(_D15, *v39.f32), v46), vadd_f32(v47, *_Q16.f32), 4uLL);
  v50.i64[1] = vsub_f32(v48, *v35.f32).u32[0];
  v51 = vdup_lane_s32(vmul_f32(*v42.f32, *v43.f32), 0);
  *v43.f32 = vmul_lane_f32(*v26.f32, *v43.f32, 1);
  v52 = vmul_lane_f32(v44, v45, 1);
  v53 = vsub_f32(_D15, v51);
  *v54.f32 = vext_s8(vsub_f32(v47, *_Q16.f32), vsub_f32(v53, v46), 4uLL);
  v54.i64[1] = vadd_f32(*v43.f32, v52).u32[0];
  v311[0] = *a4;
  v311[1] = v23;
  v307 = v50;
  v308 = v54;
  *v55.f32 = vext_s8(vadd_f32(v48, *v35.f32), vsub_f32(*v43.f32, v52), 4uLL);
  v55.i64[1] = vsub_f32(v53, *v39.f32).u32[0];
  v309 = v55;
  v310 = v36;
  v56 = *(a5 + 8);
  v57.i64[0] = *(_X27 + 60);
  v57.i64[1] = *(_X27 + 68);
  v58 = vmulq_f32(v19, v57);
  *v35.f32 = vpmin_f32(vdup_laneq_s32(v58, 2), *v58.f32);
  v52.f32[0] = v56 * 0.05;
  v59 = vdup_lane_s32(v52, 0);
  __asm { FMOV            V16.2S, #0.25 }

  v39.i64[0] = *(_X25 + 60);
  v39.i64[1] = *(_X25 + 68);
  v60 = vmulq_f32(v21, v39);
  *v60.i8 = vpmin_f32(vdup_laneq_s32(v60, 2), *v60.i8);
  v61 = *(v10 + 64);
  v62 = vmin_f32(vmin_f32(vmul_f32(vpmin_f32(*v35.f32, *v35.f32), *_Q16.f32), v59), vmin_f32(vmul_f32(vpmin_f32(*v60.i8, *v60.i8), *_Q16.f32), v59));
  if (*(v10 + 64))
  {
    v63 = vmul_f32(v62, vdup_n_s32(0x3F4CCCCDu));
    v64 = vmul_f32(v63, v63);
    v65 = 48 * v61;
    do
    {
      v66 = *(v10 + 80);
      v67 = (v66 + v65 - 48);
      v68 = vmulq_n_f32(v50, COERCE_FLOAT(*v67));
      v68.i32[3] = 0;
      v69 = vmulq_lane_f32(v54, *v67->f32, 1);
      v69.i32[3] = 0;
      v70 = vmulq_laneq_f32(v55, *v67, 2);
      v70.i32[3] = 0;
      v71 = vaddq_f32(v36, vaddq_f32(v70, vaddq_f32(v68, v69)));
      v73 = *(v66 + v65 - 32);
      v72 = *(v66 + v65 - 16);
      v74 = v72;
      v74.i32[3] = 0;
      v75 = vmulq_f32(v74, vsubq_f32(v71, v73));
      v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
      v76 = vpadd_f32(*v75.f32, *v75.f32);
      v77 = vmlsq_lane_f32(v71, v74, v76, 0);
      v77.i64[1] = vextq_s8(v77, v77, 8uLL).u32[0];
      v78 = vsubq_f32(v73, v77);
      v79 = vmulq_f32(v78, v78);
      v79.i64[0] = vpaddq_f32(v79, v79).u64[0];
      if (vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v79.f32, *v79.f32), v64), 0), v45).u32[0] == -1)
      {
        v80 = *(v10 + 64) - 1;
        *(v10 + 64) = v80;
        v81 = (v66 + 48 * v80);
        v82 = *v81;
        v83 = v81[2];
        v67[1] = v81[1];
        v67[2] = v83;
        *v67 = v82;
      }

      else
      {
        v72.i32[3] = v76.i32[1];
        *(v66 + v65 - 16) = v72;
      }

      v65 -= 48;
    }

    while (v65);
    v84 = *(v10 + 64);
    v57.i64[0] = *(_X27 + 60);
    v57.i64[1] = *(_X27 + 68);
    v58 = vmulq_f32(v19, v57);
  }

  else
  {
    v84 = 0;
  }

  v42.i32[3] = v45.i32[1];
  v85 = vmulq_f32(v58, v58);
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
  v89 = vmulq_f32(v21, v57);
  v90 = vmulq_f32(v89, v89);
  v90.i64[0] = vpaddq_f32(v90, v90).u64[0];
  v91 = vpadd_f32(*v90.f32, *v90.f32);
  v92 = vrsqrte_f32(v91);
  v93 = 4;
  do
  {
    v92 = vmul_f32(v92, vrsqrts_f32(vmul_f32(v92, v92), v91));
    --v93;
  }

  while (v93);
  v94 = v312[0];
  v95 = v311[0];
  if (v84 != v61)
  {
    goto LABEL_37;
  }

  v96 = vmul_n_f32(v62, physx::Gu::invalidateThresholds[v61]);
  v97 = vabdq_f32(v36, *(v10 + 16));
  v58 = vextq_s8(v97, v97, 8uLL);
  *v97.i8 = vpmax_f32(*v58.f32, *v97.i8);
  v98 = (&physx::Gu::invalidateQuatThresholds + 4 * v61);
  *v58.f32 = vld1_dup_f32(v98);
  v99 = vpmax_f32(*v97.i8, *v97.i8);
  v100 = vmulq_f32(v312[0], *(v10 + 32));
  v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
  v101 = vpadd_f32(*v100.f32, *v100.f32);
  v102 = vmulq_f32(v311[0], *(v10 + 48));
  v102.i64[0] = vpaddq_f32(v102, v102).u64[0];
  v103 = vpadd_f32(*v102.f32, *v102.f32);
  *v58.f32 = vorr_s8(vcgt_f32(*v58.f32, v101), vcgt_f32(*v58.f32, v103));
  if (vuzp1_s8(vdup_lane_s16(vorr_s8(*v58.f32, vcgt_f32(v99, v96)), 0), v86).u32[0] == -1)
  {
    goto LABEL_37;
  }

  v304 = _D15;
  v305 = v21;
  v306 = v20;
  v104 = v62;
  v105 = v56;
  v106 = vbsl_s8(vdup_lane_s32(vceqz_f32(v86), 0), v86, vmul_f32(v86, v87));
  v107 = vmul_f32(v91, v92);
  v108 = vdup_lane_s32(vceqz_f32(v91), 0);
  v109 = 0.0;
  v110 = 0.0;
  v302 = v19;
  v303 = v18;
  v300 = v42;
  v301 = v36;
  if (v101.f32[0] < 1.0)
  {
    v111 = -1.0;
    if (v101.f32[0] >= -1.0)
    {
      v111 = v101.f32[0];
    }

    if (v111 > 1.0)
    {
      v111 = 1.0;
    }

    v299 = v103.i32[0];
    v110 = acosf(v111);
    v109 = 0.0;
    v103.i32[0] = v299;
    v94 = v312[0];
    v95 = v311[0];
    v42 = v300;
    v36 = v301;
    v19 = v302;
    v18 = v303;
  }

  v112 = vbsl_s8(v108, v91, v107);
  v113 = vmul_n_f32(v106, v110);
  if (v103.f32[0] < 1.0)
  {
    v114 = -1.0;
    if (v103.f32[0] >= -1.0)
    {
      v114 = v103.f32[0];
    }

    if (v114 > 1.0)
    {
      v114 = 1.0;
    }

    v115 = acosf(v114);
    v94 = v312[0];
    v95 = v311[0];
    v42 = v300;
    v36 = v301;
    v19 = v302;
    v18 = v303;
    v109 = v115;
  }

  v116 = vdup_lane_s16(vcgt_f32(vmaxnm_f32(vmul_n_f32(v112, v109), v113), v96), 0);
  v56 = v105;
  v62 = v104;
  v21 = v305;
  v20 = v306;
  _D15 = v304;
  if (vuzp1_s8(v116, v116).u32[0] == -1)
  {
LABEL_37:
    *v10 = v42;
    *(v10 + 16) = v36;
    *(v10 + 32) = v94;
    *(v10 + 48) = v95;
    v145 = *(a1 + 4) == 1.0 && *(a1 + 8) == 1.0 && *(a1 + 12) == 1.0;
    v147 = *(a2 + 4) == 1.0 && *(a2 + 8) == 1.0 && *(a2 + 12) == 1.0;
    v148 = *(a1 + 16);
    v149 = *(a2 + 16);
    v58.i32[0] = *(_X27 + 24);
    v150 = v58;
    v150.i32[1] = *(_X27 + 28);
    v151 = v150;
    v151.i32[2] = *(_X27 + 32);
    v343 = 0;
    v344 = 0;
    v340 = v151;
    v351 = _X27;
    v353 = *(_X27 + 40) + 20 * *(_X27 + 39);
    v354 = *(_X27 + 38);
    v152.i64[0] = *(_X27 + 60);
    v152.i64[1] = *(_X27 + 68);
    v153 = vmulq_f32(v19, v152);
    *v153.i8 = vpmin_f32(vdup_laneq_s32(v153, 2), *v153.i8);
    v154 = vpmin_f32(*v153.i8, *v153.i8).f32[0];
    v341 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, v154);
    v342 = 0.025 * v154;
    if (v145)
    {
      v345 = xmmword_1E3047670;
      v346 = xmmword_1E3047680;
      v155 = xmmword_1E30476A0;
      v347 = xmmword_1E30476A0;
      v348 = xmmword_1E3047670;
      v349 = xmmword_1E3047680;
      v350 = xmmword_1E30476A0;
    }

    else
    {
      v156 = vrecpeq_f32(v19);
      v157 = 4;
      do
      {
        v156 = vmulq_f32(v156, vrecpsq_f32(v156, v19));
        --v157;
      }

      while (v157);
      *v158.f32 = vdup_lane_s32(*v18.f32, 0);
      v158.i64[1] = v158.u32[0];
      if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v158, v19)), *v149.f32).u32[0] & 0xFFFFFF) != 0)
      {
        v165 = vdup_lane_s32(*v148.f32, 1);
        v166 = vdup_laneq_s32(v148, 2);
        v167 = vdup_laneq_s32(v148, 3);
        v168 = vaddq_f32(v148, v148);
        v169 = vmul_lane_f32(v165, *v168.f32, 1);
        v170 = vmul_laneq_f32(v166, v168, 2);
        v171 = vmul_n_f32(v165, v168.f32[0]);
        v172 = vmul_n_f32(v166, v168.f32[0]);
        v173 = vmul_n_f32(v167, v168.f32[0]);
        v174 = vmul_lane_f32(v166, *v168.f32, 1);
        v175 = vmul_lane_f32(v167, *v168.f32, 1);
        v176 = vmul_laneq_f32(v167, v168, 2);
        v177 = vsub_f32(_D15, vdup_lane_s32(vmul_f32(*v148.f32, *v168.f32), 0));
        v178 = vsub_f32(vsub_f32(_D15, v169), v170);
        *v168.f32 = vadd_f32(v171, v176);
        v179 = vsub_f32(v172, v175);
        v180 = vsub_f32(v171, v176);
        v181 = vadd_f32(v172, v175);
        v182 = vsub_f32(v174, v173);
        v183 = vext_s8(v181, v182, 4uLL);
        v184 = vsub_f32(v177, v170);
        *v185.f32 = vext_s8(v178, *&vdupq_lane_s32(v180, 1), 4uLL);
        v185.i64[1] = vdup_lane_s32(v183, 0).u32[0];
        v186 = vsub_f32(v177, v169);
        *v187.f32 = vext_s8(*&vdupq_lane_s32(*v168.f32, 0), v184, 4uLL);
        v187.i64[1] = vdup_lane_s32(v183, 1).u32[0];
        v188 = vadd_f32(v174, v173);
        *v189.f32 = vext_s8(*&vdupq_lane_s32(v179, 0), v188, 4uLL);
        v189.i64[1] = vdup_lane_s32(v186, 0).u32[0];
        v190 = vmulq_n_f32(v185, v18.f32[0]);
        v190.i32[3] = 0;
        v191 = vmulq_lane_f32(v187, *v18.f32, 1);
        v191.i32[3] = 0;
        v192 = vmulq_laneq_f32(v189, v18, 2);
        v192.i32[3] = 0;
        v193 = vmulq_lane_f32(v190, v178, 1);
        v193.i32[3] = 0;
        v194 = vmulq_n_f32(v191, v168.f32[0]);
        v194.i32[3] = 0;
        v195 = vmulq_n_f32(v192, *v179.i32);
        v195.i32[3] = 0;
        v159 = vaddq_f32(v195, vaddq_f32(v193, v194));
        v196 = vmulq_lane_f32(v190, v180, 1);
        v196.i32[3] = 0;
        v197 = vmulq_n_f32(v191, *v184.i32);
        v197.i32[3] = 0;
        v198 = vmulq_n_f32(v192, *v188.i32);
        v198.i32[3] = 0;
        v160 = vaddq_f32(v198, vaddq_f32(v196, v197));
        v199 = vmulq_lane_f32(v190, v181, 1);
        v199.i32[3] = 0;
        v200 = vmulq_n_f32(v191, *v182.i32);
        v200.i32[3] = 0;
        v201 = vmulq_n_f32(v192, *v186.i32);
        v201.i32[3] = 0;
        v161 = vaddq_f32(v201, vaddq_f32(v199, v200));
        v345 = v159;
        v346 = v160;
        v202 = vmulq_n_f32(v185, v156.f32[0]);
        v202.i32[3] = 0;
        v203 = vmulq_lane_f32(v187, *v156.f32, 1);
        v203.i32[3] = 0;
        v204 = vmulq_laneq_f32(v189, v156, 2);
        v204.i32[3] = 0;
        v205 = vmulq_lane_f32(v202, v178, 1);
        v205.i32[3] = 0;
        v206 = vmulq_n_f32(v203, v168.f32[0]);
        v206.i32[3] = 0;
        v207 = vmulq_n_f32(v204, *v179.i32);
        v207.i32[3] = 0;
        v208 = vaddq_f32(v207, vaddq_f32(v205, v206));
        v209 = vmulq_lane_f32(v202, v180, 1);
        v209.i32[3] = 0;
        v210 = vmulq_n_f32(v203, *v184.i32);
        v210.i32[3] = 0;
        v211 = vmulq_n_f32(v204, *v188.i32);
        v211.i32[3] = 0;
        v212 = vmulq_lane_f32(v202, v181, 1);
        v212.i32[3] = 0;
        v213 = vmulq_n_f32(v203, *v182.i32);
        v213.i32[3] = 0;
        v214 = vmulq_n_f32(v204, *v186.i32);
        v214.i32[3] = 0;
        v164 = vaddq_f32(v214, vaddq_f32(v212, v213));
        v347 = v161;
        v348 = v208;
        v349 = vaddq_f32(v211, vaddq_f32(v209, v210));
      }

      else
      {
        v156.i32[3] = 0;
        v159 = vmulq_f32(v19, xmmword_1E3047670);
        v160 = vmulq_f32(v19, xmmword_1E3047680);
        v161 = vmulq_f32(v19, xmmword_1E30476A0);
        v345 = v159;
        v346 = v160;
        v162 = vmulq_f32(v156, xmmword_1E3047670);
        v163 = vmulq_f32(v156, xmmword_1E3047680);
        v164 = vmulq_f32(v156, xmmword_1E30476A0);
        v347 = v161;
        v348 = v162;
        v349 = v163;
      }

      v155 = vmulq_n_f32(v159, v58.f32[0]);
      v155.i32[3] = 0;
      v215 = vmulq_lane_f32(v160, *v150.f32, 1);
      v215.i32[3] = 0;
      v216 = vmulq_laneq_f32(v161, v151, 2);
      v216.i32[3] = 0;
      v350 = v164;
      v340 = vaddq_f32(v216, vaddq_f32(v215, v155));
    }

    v352 = *(_X27 + 48);
    v155.i32[0] = *(_X25 + 24);
    v217 = v155;
    v217.i32[1] = *(_X25 + 28);
    v218 = v217;
    v218.i32[2] = *(_X25 + 32);
    v328 = 0;
    v329 = 0;
    v336 = _X25;
    v338 = *(_X25 + 40) + 20 * *(_X25 + 39);
    v339 = *(_X25 + 38);
    v219.i64[0] = *(_X25 + 60);
    v219.i32[2] = *(_X25 + 68);
    v325 = v218;
    v219.i64[1] = v219.u32[2];
    v220 = vmulq_f32(v21, v219);
    *v220.i8 = vpmin_f32(vdup_laneq_s32(v220, 2), *v220.i8);
    *v220.i32 = vpmin_f32(*v220.i8, *v220.i8).f32[0];
    v326 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v220.i32);
    v327 = 0.025 * *v220.i32;
    if (v147)
    {
      v330 = xmmword_1E3047670;
      v331 = xmmword_1E3047680;
      v332 = xmmword_1E30476A0;
      v333 = xmmword_1E3047670;
      v334 = xmmword_1E3047680;
      v335 = xmmword_1E30476A0;
    }

    else
    {
      v221 = vrecpeq_f32(v21);
      v222 = 4;
      do
      {
        v221 = vmulq_f32(v221, vrecpsq_f32(v221, v21));
        --v222;
      }

      while (v222);
      *v223.f32 = vdup_lane_s32(*v20.f32, 0);
      v223.i64[1] = v223.u32[0];
      if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v223, v21)), *v149.f32).u32[0] & 0xFFFFFF) != 0)
      {
        v228 = vdup_lane_s32(*v149.f32, 1);
        v229 = vdup_laneq_s32(v149, 2);
        v230 = vdup_laneq_s32(v149, 3);
        v231 = vaddq_f32(v149, v149);
        v232 = vmul_lane_f32(v228, *v231.f32, 1);
        v233 = vmul_laneq_f32(v229, v231, 2);
        v234 = vmul_n_f32(v228, v231.f32[0]);
        v235 = vmul_n_f32(v229, v231.f32[0]);
        v236 = vmul_n_f32(v230, v231.f32[0]);
        v237 = vmul_lane_f32(v229, *v231.f32, 1);
        v238 = vmul_lane_f32(v230, *v231.f32, 1);
        v239 = vmul_laneq_f32(v230, v231, 2);
        v240 = vsub_f32(_D15, vdup_lane_s32(vmul_f32(*v149.f32, *v231.f32), 0));
        v241 = vsub_f32(vsub_f32(_D15, v232), v233);
        *v231.f32 = vadd_f32(v234, v239);
        v242 = vsub_f32(v235, v238);
        v243 = vsub_f32(v234, v239);
        v244 = vadd_f32(v235, v238);
        v245 = vsub_f32(v237, v236);
        v246 = vext_s8(v244, v245, 4uLL);
        v247 = vsub_f32(v240, v233);
        *v248.f32 = vext_s8(v241, *&vdupq_lane_s32(v243, 1), 4uLL);
        v248.i64[1] = vdup_lane_s32(v246, 0).u32[0];
        v249 = vsub_f32(v240, v232);
        *v250.f32 = vext_s8(*&vdupq_lane_s32(*v231.f32, 0), v247, 4uLL);
        v250.i64[1] = vdup_lane_s32(v246, 1).u32[0];
        v251 = vadd_f32(v237, v236);
        *v252.f32 = vext_s8(*&vdupq_lane_s32(v242, 0), v251, 4uLL);
        v252.i64[1] = vdup_lane_s32(v249, 0).u32[0];
        v253 = vmulq_n_f32(v248, v20.f32[0]);
        v253.i32[3] = 0;
        v254 = vmulq_lane_f32(v250, *v20.f32, 1);
        v254.i32[3] = 0;
        v255 = vmulq_laneq_f32(v252, v20, 2);
        v255.i32[3] = 0;
        v256 = vmulq_lane_f32(v253, v241, 1);
        v256.i32[3] = 0;
        v257 = vmulq_n_f32(v254, v231.f32[0]);
        v257.i32[3] = 0;
        v258 = vmulq_n_f32(v255, *v242.i32);
        v258.i32[3] = 0;
        v224 = vaddq_f32(v258, vaddq_f32(v256, v257));
        v259 = vmulq_lane_f32(v253, v243, 1);
        v259.i32[3] = 0;
        v260 = vmulq_n_f32(v254, *v247.i32);
        v260.i32[3] = 0;
        v261 = vmulq_n_f32(v255, *v251.i32);
        v261.i32[3] = 0;
        v225 = vaddq_f32(v261, vaddq_f32(v259, v260));
        v262 = vmulq_lane_f32(v253, v244, 1);
        v262.i32[3] = 0;
        v263 = vmulq_n_f32(v254, *v245.i32);
        v263.i32[3] = 0;
        v264 = vmulq_n_f32(v255, *v249.i32);
        v264.i32[3] = 0;
        v226 = vaddq_f32(v264, vaddq_f32(v262, v263));
        v330 = v224;
        v331 = v225;
        v265 = vmulq_n_f32(v248, v221.f32[0]);
        v265.i32[3] = 0;
        v266 = vmulq_lane_f32(v250, *v221.f32, 1);
        v266.i32[3] = 0;
        v267 = vmulq_laneq_f32(v252, v221, 2);
        v267.i32[3] = 0;
        v268 = vmulq_lane_f32(v265, v241, 1);
        v268.i32[3] = 0;
        v269 = vmulq_n_f32(v266, v231.f32[0]);
        v269.i32[3] = 0;
        v270 = vmulq_n_f32(v267, *v242.i32);
        v270.i32[3] = 0;
        v271 = vaddq_f32(v270, vaddq_f32(v268, v269));
        v272 = vmulq_lane_f32(v265, v243, 1);
        v272.i32[3] = 0;
        v273 = vmulq_n_f32(v266, *v247.i32);
        v273.i32[3] = 0;
        v274 = vmulq_n_f32(v267, *v251.i32);
        v274.i32[3] = 0;
        v275 = vmulq_lane_f32(v265, v244, 1);
        v275.i32[3] = 0;
        v276 = vmulq_n_f32(v266, *v245.i32);
        v276.i32[3] = 0;
        v277 = vmulq_n_f32(v267, *v249.i32);
        v277.i32[3] = 0;
        v227 = vaddq_f32(v277, vaddq_f32(v275, v276));
        v332 = v226;
        v333 = v271;
        v334 = vaddq_f32(v274, vaddq_f32(v272, v273));
      }

      else
      {
        v221.i32[3] = 0;
        v224 = vmulq_f32(v21, xmmword_1E3047670);
        v225 = vmulq_f32(v21, xmmword_1E3047680);
        v226 = vmulq_f32(v21, xmmword_1E30476A0);
        v330 = v224;
        v331 = v225;
        v227 = vmulq_f32(v221, xmmword_1E30476A0);
        v332 = v226;
        v333 = vmulq_f32(v221, xmmword_1E3047670);
        v334 = vmulq_f32(v221, xmmword_1E3047680);
      }

      v278 = vmulq_n_f32(v224, v155.f32[0]);
      v278.i32[3] = 0;
      v279 = vmulq_lane_f32(v225, *v217.f32, 1);
      v279.i32[3] = 0;
      v280 = vmulq_laneq_f32(v226, v218, 2);
      v280.i32[3] = 0;
      v335 = v227;
      v325 = vaddq_f32(v280, vaddq_f32(v279, v278));
    }

    v337 = *(_X25 + 48);
    v324 = 0;
    memset(v323, 0, 48);
    v281 = v313;
    if (v145)
    {
      v316.i64[1] = &v340;
      v316.i64[0] = &unk_1F5D22D98;
      v317 = &v307;
      v321 = v310;
      v282 = vzip1q_s32(v307, v309);
      v283 = vzip1q_s32(v308, 0);
      v284 = vzip1q_s32(v282, v283);
      v285 = vzip2q_s32(v282, v283);
      v318 = v284;
      v319 = v285;
      v320 = vzip1q_s32(vzip2q_s32(v307, v309), vzip2q_s32(v308, 0));
      v315 = &v325;
      if (v147)
      {
        v314 = &unk_1F5D22C50;
        v286 = physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::ConvexHullNoScaleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullNoScaleV>>(&v316, &v314, (v10 + 67), (v10 + 71), (v10 + 66), v323, v310, v313, *v285.i64, v284, *v282.i8);
        v288 = 257;
      }

      else
      {
        v314 = &unk_1F5D21818;
        v286 = physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::ConvexHullNoScaleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(&v316, &v314, (v10 + 67), (v10 + 71), (v10 + 66), v323, v310, v313, *v285.i64, v284, *v282.i8);
        v288 = 1;
      }
    }

    else
    {
      v322 = v313;
      v316.i64[1] = &v340;
      v316.i64[0] = &unk_1F5D21B40;
      v317 = &v307;
      v321 = v310;
      v289 = vzip1q_s32(v307, v309);
      v290 = vzip2q_s32(v307, v309);
      v291 = vzip1q_s32(v308, 0);
      v292 = vzip1q_s32(v289, v291);
      v293 = vzip2q_s32(v289, v291);
      v294 = vzip1q_s32(v290, vzip2q_s32(v308, 0));
      v318 = v292;
      v319 = v293;
      v320 = v294;
      if (!v147)
      {
        v315 = &v325;
        v314 = &unk_1F5D21818;
        v286 = physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(&v316, &v314, &v310, &v322, 1, (v10 + 67), (v10 + 71), (v10 + 66), *v294.i64, *v290.i64, *v293.i8, v292, v323);
        v296 = v322;
        *&v298[4] = 0;
        *v298 = v61;
        v297 = a7;
        v295 = v62;
        goto LABEL_73;
      }

      v315 = &v325;
      v314 = &unk_1F5D22C50;
      v286 = physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::ConvexHullV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullNoScaleV>>(&v316, &v314, (v10 + 67), (v10 + 71), (v10 + 66), v323, v310, v313, *v293.i64, v292, *v289.i8);
      v288 = 256;
    }

    *&v298[4] = v288;
    *v298 = v61;
    v297 = a7;
    v295 = v62;
    v296 = v281;
LABEL_73:
    *&v287 = v56;
    return physx::Gu::generateOrProcessContactsConvexConvex(&v316, &v314, v312, v311, &v307, v286, v323, v10, v295, v296, v287, v297, *v298, v298[4], v298[5]);
  }

  if (!v61)
  {
    return 0;
  }

  v117 = *(v10 + 80);
  v118 = *(v117 + 32);
  v119 = v118;
  if (v61 != 1)
  {
    v120 = v61 - 1;
    v121 = (v117 + 80);
    v119 = v118;
    do
    {
      v122 = *v121;
      v121 += 3;
      v119 = vaddq_f32(v119, v122);
      --v120;
    }

    while (v120);
  }

  v119.i32[3] = 0;
  v123 = vmulq_f32(v119, v119);
  v123.i64[0] = vpaddq_f32(v123, v123).u64[0];
  v118.i32[3] = 0;
  v124 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v123.f32, *v123.f32), 0x3400000034000000), 0)), 0x1FuLL)), v119, v118);
  v125 = v95;
  v125.i32[3] = 0;
  v123.i64[0] = vdupq_laneq_s32(v95, 3).u64[0];
  v126 = vmulq_n_f32(v124, vmla_f32(0xBF000000BF000000, *v123.f32, *v123.f32).f32[0]);
  v126.i32[3] = 0;
  v127 = vextq_s8(v125, v125, 8uLL).u64[0];
  v128 = vextq_s8(v124, v124, 8uLL).u64[0];
  v129 = vmls_f32(vmul_f32(*v95.f32, vext_s8(*v124.f32, v128, 4uLL)), vext_s8(*v95.f32, v127, 4uLL), *v124.f32);
  *v130.f32 = vext_s8(v129, vmls_f32(vmul_f32(v127, *v124.f32), *v95.f32, v128), 4uLL);
  v130.i64[1] = v129.u32[0];
  v131 = vmlaq_laneq_f32(v126, v130, v95, 3);
  v131.i64[1] = vextq_s8(v131, v131, 8uLL).u32[0];
  v132 = vmulq_f32(v125, v124);
  v132.i64[0] = vpaddq_f32(v132, v132).u64[0];
  v133 = vmlaq_n_f32(v131, v125, vpadd_f32(*v132.f32, *v132.f32).f32[0]);
  v134 = vaddq_f32(v133, v133);
  v134.i32[3] = 0;
  v135 = vmulq_f32(v134, v134);
  v135.i64[0] = vpaddq_f32(v135, v135).u64[0];
  v136 = vpadd_f32(*v135.f32, *v135.f32);
  v137 = vrsqrte_f32(v136);
  v138 = 4;
  do
  {
    v137 = vmul_f32(v137, vrsqrts_f32(vmul_f32(v137, v137), v136));
    --v138;
  }

  while (v138);
  v139 = vbsl_s8(vdup_lane_s32(vceqz_f32(v136), 0), v136, vmul_f32(v136, v137));
  v140 = vrecpe_f32(v139);
  v141 = 4;
  do
  {
    v140 = vmul_f32(v140, vrecps_f32(v139, v140));
    --v141;
  }

  while (v141);
  v142 = vmulq_n_f32(v134, v140.f32[0]);
  v142.i32[3] = 0;
  v340 = v142;
  physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(v10, a7, &v340, v311, &v313);
  return 1;
}

BOOL physx::Gu::PCMContactConvexHeightfield(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, float32x4_t *a10, uint64_t a11)
{
  v18 = MEMORY[0x1EEE9AC00](a1);
  v177 = v19;
  v205 = *MEMORY[0x1E69E9840];
  v20 = *v15;
  v21.i64[0] = v15[1].i64[0];
  v21.i64[1] = v15[1].u32[2];
  v22.i64[0] = v16[1].i64[0];
  v22.i64[1] = v16[1].u32[2];
  v23 = *v16;
  v191 = vdup_lane_s32(v24, 0);
  v190[0] = v20;
  v190[1] = v21;
  v189[0] = v23;
  v189[1] = v22;
  v25 = vnegq_f32(v23);
  v26 = v25;
  v26.i32[3] = 0;
  v27 = vsubq_f32(v21, v22);
  v22.i64[0] = vdupq_laneq_s32(v23, 3).u64[0];
  v28 = vmulq_n_f32(v27, vmla_f32(0xBF000000BF000000, *v22.f32, *v22.f32).f32[0]);
  v28.i32[3] = 0;
  v29 = vextq_s8(v26, v26, 8uLL).u64[0];
  v30 = vext_s8(*v25.f32, v29, 4uLL);
  v31 = vmls_f32(vmul_f32(*v25.f32, *&vextq_s8(v27, v27, 4uLL)), v30, *v27.f32);
  *v32.f32 = vext_s8(v31, vmls_f32(vmul_f32(v29, *v27.f32), *v25.f32, *&vextq_s8(v27, v27, 8uLL)), 4uLL);
  v32.i64[1] = v31.u32[0];
  v33 = vmlaq_laneq_f32(v28, v32, v23, 3);
  v33.i64[1] = vextq_s8(v33, v33, 8uLL).u32[0];
  v34 = vmulq_f32(v26, v27);
  v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
  v35 = vmlaq_n_f32(v33, v26, vpadd_f32(*v34.f32, *v34.f32).f32[0]);
  v36 = vaddq_f32(v35, v35);
  v36.i32[3] = 0;
  v37 = v20;
  v37.i32[3] = 0;
  v38 = vmulq_f32(v37, v26);
  v38.i64[0] = vpaddq_f32(v38, v38).u64[0];
  v39 = vsub_f32(vmul_f32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v23, v23, 8uLL)), vpadd_f32(*v38.f32, *v38.f32));
  v40 = vmulq_laneq_f32(v26, v20, 3);
  v38.i64[0] = vextq_s8(v37, v37, 8uLL).u64[0];
  v41 = vmls_f32(vmul_f32(vext_s8(*v20.f32, *v38.f32, 4uLL), *v25.f32), v30, *v20.f32);
  *v20.f32 = vext_s8(v41, vmls_f32(vmul_f32(*v20.f32, v29), *v25.f32, *v38.f32), 4uLL);
  *&v20.u32[2] = v41;
  v42 = vaddq_f32(vaddq_f32(v40, vmulq_laneq_f32(v37, v23, 3)), v20);
  v43 = v42;
  v43.i32[3] = v39.i32[1];
  v44 = vabdq_f32(v36, a10[1]);
  *v44.i8 = vpmax_f32(*&vextq_s8(v44, v44, 8uLL), *v44.i8);
  v45 = vmulq_f32(v43, *a10);
  v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
  if (vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(vdup_n_s32(0x3F7FF2E5u), vpadd_f32(*v45.f32, *v45.f32)), vcgt_f32(vpmax_f32(*v44.i8, *v44.i8), vmul_f32(*&v18, vdup_n_s32(0x3E4CCCCDu)))), 0), *&v18).u32[0] == -1)
  {
    v80 = v16;
    v81 = v13;
    v188 = vmul_f32(*&v18, vdup_n_s32(0x3D4CCCCDu));
    a10[3].i8[14] = 0;
    *a10 = v43;
    a10[1] = v36;
    v82 = v16->f32[1];
    v83 = v16->f32[2];
    v84 = v16->f32[3];
    v85 = v15[1].f32[0] - v16[1].f32[0];
    v86 = v15[1].f32[1] - v16[1].f32[1];
    v87 = v15[1].f32[2] - v16[1].f32[2];
    v88 = v85 + v85;
    v89 = v86 + v86;
    v90 = v87 + v87;
    v91 = (v84 * v84) + -0.5;
    v92 = (-(v82 * v89) - (v16->f32[0] * v88)) - (v83 * v90);
    v93 = ((v84 * ((v83 * v89) - (v82 * v90))) + (v88 * v91)) - (v16->f32[0] * v92);
    v94 = ((v84 * ((v16->f32[0] * v90) - (v83 * v88))) + (v89 * v91)) - (v82 * v92);
    v95 = ((v84 * ((v82 * v88) - (v16->f32[0] * v89))) + (v90 * v91)) - (v83 * v92);
    v97 = v15->f32[2];
    v96 = v15->f32[3];
    v98 = v15->f32[1];
    v99 = (((v84 * v15->f32[0]) - (v16->f32[0] * v96)) - (v82 * v97)) + (v98 * v83);
    v100 = (((v84 * v98) - (v82 * v96)) - (v83 * v15->f32[0])) + (v97 * v16->f32[0]);
    v101 = (((v84 * v97) - (v83 * v96)) - (v16->f32[0] * v98)) + (v15->f32[0] * v82);
    v102 = (((v16->f32[0] * v15->f32[0]) + (v84 * v96)) + (v82 * v98)) + (v83 * v97);
    v103 = v11;
    v186 = v14[1];
    v187 = v14;
    v104 = v14[3].f32[0];
    __asm { FMOV            V2.2S, #1.0 }

    v184 = vrev64_s32(vdiv_f32(_D2, v14[2]));
    v185 = 1.0 / v104;
    v202 = 1;
    v204 = 0x44000000000;
    v203 = v201;
    v106 = v12;
    v107 = v17;
    (*(**&v186 + 104))(&v183);
    v108 = (v183 & 1) == 0;
    v192.i64[0] = &unk_1F5D22E50;
    v192.i64[1] = &v184;
    *&v193 = v80;
    (*(**&v186 + 104))(&v178);
    BYTE8(v193) = (v178 & 1) == 0;
    v192.i64[0] = &unk_1F5D22DF8;
    physx::Gu::PCMConvexVsMeshContactGeneration::PCMConvexVsMeshContactGeneration(v194, &v191, &v188, v190, v189, a10, v177, v103, v106, v201, v107, a9, v108, a11);
    v109 = v81[1];
    v111 = v81[2];
    v110 = v81[3];
    v112 = v81[4];
    v113 = v81[5];
    v114 = ((*v81 + v110) * 0.5) + ((*v81 + v110) * 0.5);
    v115 = ((v109 + v112) * 0.5) + ((v109 + v112) * 0.5);
    v116 = ((v111 + v113) * 0.5) + ((v111 + v113) * 0.5);
    v117 = (v102 * v102) + -0.5;
    v118 = ((v100 * v115) + (v99 * v114)) + (v101 * v116);
    v119 = ((v102 * ((v100 * v116) - (v101 * v115))) + (v114 * v117)) + (v99 * v118);
    v120 = ((v102 * ((v101 * v114) - (v99 * v116))) + (v115 * v117)) + (v100 * v118);
    v121 = ((v102 * ((v99 * v115) - (v100 * v114))) + (v116 * v117)) + (v101 * v118);
    v122 = v93 + v119;
    v123 = v94 + v120;
    v124 = v95 + v121;
    v125 = v100 * (v100 + v100);
    v126 = v101 * (v101 + v101);
    v127 = (v99 + v99) * v100;
    v128 = v101 * (v99 + v99);
    v129 = v102 * (v99 + v99);
    v130 = v101 * (v100 + v100);
    v131 = v102 * (v100 + v100);
    v132 = v102 * (v101 + v101);
    v133 = 1.0 - (v99 * (v99 + v99));
    v134 = (v110 - *v81) * 0.5;
    v135 = (v112 - v109) * 0.5;
    v136 = (v113 - v111) * 0.5;
    v137 = (fabsf(((1.0 - v125) - v126) * v134) + fabsf((v127 - v132) * v135)) + fabsf((v128 + v131) * v136);
    v138 = (fabsf((v127 + v132) * v134) + fabsf((v133 - v126) * v135)) + fabsf((v130 - v129) * v136);
    v139 = (fabsf((v128 - v131) * v134) + fabsf((v129 + v130) * v135)) + fabsf((v133 - v125) * v136);
    *&v178 = v122 - v137;
    *(&v178 + 1) = v123 - v138;
    v179 = v124 - v139;
    v180 = v137 + v122;
    v181 = v138 + v123;
    v182 = v139 + v124;
    physx::Gu::HeightFieldUtil::overlapAABBTriangles(&v184, v80, &v178, 0, &v192);
    physx::Gu::PCMConvexVsMeshContactGeneration::generateLastContacts(v194);
    v140 = v199;
    if (v199)
    {
      v141 = v200;
      if (v200 >= 2)
      {
        v142 = 0;
        v143 = -1;
        v144 = 1;
        do
        {
          v145 = v195[v144 - 1];
          v146 = v195[v144];
          if (COERCE_FLOAT(*(v145 + 40)) > COERCE_FLOAT(*(v146 + 40)))
          {
            v195[v144 - 1] = v146;
            v195[v144] = v145;
            if (v144 - 2 >= 0)
            {
              v147 = &v195[v143 + 1];
              v148 = v142;
              do
              {
                v150 = *(v147 - 1);
                v149 = *v147;
                if (COERCE_FLOAT(*(*v147 + 40)) >= COERCE_FLOAT(*(v150 + 40)))
                {
                  break;
                }

                *v147 = v150;
                *--v147 = v149;
                --v148;
              }

              while (v148 > 0);
            }
          }

          ++v144;
          ++v143;
          ++v142;
        }

        while (v144 != v141);
      }

      if (v141)
      {
        v151 = 0;
        for (i = 0; i != v141; ++i)
        {
          v153 = v195[i];
          v153[1].i64[1] = v153;
          v153[2].i64[0] = v153;
          v154 = v153[3].i32[1] - v153[3].i32[0];
          v153[3].i32[2] = v154;
          v153[1].i64[0] = 0;
          v155 = v151;
          while (v155)
          {
            v156 = *(&v194[127].i64[1] + v155);
            v157 = *(v156 + 32);
            v158 = vmulq_f32(*v153, *v157);
            v158.i64[0] = vpaddq_f32(v158, v158).u64[0];
            v155 -= 8;
            if (vpadd_f32(*v158.f32, *v158.f32).f32[0] >= *&v196)
            {
              *(v156 + 16) = v153;
              v157[1].i64[1] = v153;
              v153[2].i64[0] = v157;
              *(*(v156 + 32) + 56) += v154;
              break;
            }
          }

          v151 += 8;
        }

        v159 = 0;
        v160 = v198;
        do
        {
          v161 = v195[v159];
          if (v161)
          {
            _ZF = *(v161 + 32) == v161;
          }

          else
          {
            _ZF = 0;
          }

          if (_ZF)
          {
            while (*(v161 + 16))
            {
              v163 = v161;
              v161 = *(v161 + 16);
              v164 = *(v163 + 48);
              v165 = *(v163 + 52);
              if (v164 < v165)
              {
                v166 = *(v161 + 52);
                do
                {
                  v167 = *(v161 + 48);
                  if (v167 < v166)
                  {
                    do
                    {
                      v168 = v160 + (v167 << 6);
                      v169 = vsubq_f32(*(v168 + 16), *(v160 + (v164 << 6) + 16));
                      v170 = vmulq_f32(v169, v169);
                      v170.i64[0] = vpaddq_f32(v170, v170).u64[0];
                      if (v197[0] > vpadd_f32(*v170.f32, *v170.f32).f32[0])
                      {
                        v171 = (v160 + ((v166 - 1) << 6));
                        v172 = *v171;
                        v173 = v171[1];
                        v174 = v171[2];
                        *(v168 + 48) = *(v171 + 12);
                        *(v168 + 16) = v173;
                        *(v168 + 32) = v174;
                        *v168 = v172;
                        v166 = *(v161 + 52) - 1;
                        *(v161 + 52) = v166;
                        --v167;
                      }

                      ++v167;
                    }

                    while (v167 < v166);
                    v165 = *(v163 + 52);
                  }

                  ++v164;
                }

                while (v164 < v165);
              }
            }
          }

          ++v159;
        }

        while (v159 != v141);
        v175 = v198;
        v140 = v199;
        v176 = v200;
      }

      else
      {
        v176 = 0;
        v175 = v198;
      }

      physx::Gu::MultiplePersistentContactManifold::addManifoldContactPoints(v195[36], v175, v140, v195, v176, v197, &v196, 6);
    }

    if ((v204 & 0x8000000000000000) == 0 && (v204 & 0x7FFFFFFF00000000) != 0 && v203 != v201 && v203)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  else
  {
    v46 = vdup_lane_s32(*v42.f32, 1);
    v47 = vdup_laneq_s32(v42, 2);
    v48 = vaddq_f32(v42, v42);
    v49 = vdup_laneq_s32(v48, 2);
    v194[1] = v36;
    v50 = vdup_lane_s32(vmul_f32(*v42.f32, *v48.f32), 0);
    v51 = vmul_lane_f32(v46, *v48.f32, 1);
    v52 = vmul_laneq_f32(v47, v48, 2);
    v53 = vmul_n_f32(v46, v48.f32[0]);
    v54 = vmul_n_f32(v47, v48.f32[0]);
    v55 = vmul_lane_f32(vdup_lane_s32(*v48.f32, 0), v39, 1);
    v56 = vmul_lane_f32(v47, *v48.f32, 1);
    *v48.f32 = vmul_lane_f32(vdup_lane_s32(*v48.f32, 1), v39, 1);
    v57 = vmul_lane_f32(v49, v39, 1);
    __asm { FMOV            V16.2S, #1.0 }

    v62 = vsub_f32(_D16, v50);
    *v63.f32 = vext_s8(vsub_f32(vsub_f32(_D16, v51), v52), vadd_f32(v53, v57), 4uLL);
    v63.i64[1] = vsub_f32(v54, *v48.f32).u32[0];
    v192 = v63;
    *&v64 = vext_s8(vsub_f32(v53, v57), vsub_f32(v62, v52), 4uLL);
    *(&v64 + 1) = vadd_f32(v56, v55).u32[0];
    v193 = v64;
    v62.i32[0] = vsub_f32(v62, v51).u32[0];
    *v65.f32 = vext_s8(vadd_f32(v54, *v48.f32), vsub_f32(v56, v55), 4uLL);
    v65.i64[1] = v62.u32[0];
    v194[0] = v65;
    v201[0] = vmul_f32(*&v18, vdup_n_s32(0x3F19999Au));
    v66 = a10[3].u8[14];
    if (a10[3].i8[14])
    {
      v67 = 0;
      v68 = &a10[3].i8[8];
      v69 = a10 + 4;
      do
      {
        v70 = v68[v67];
        LODWORD(v71) = v66 - 2;
        if (v67 >= v71)
        {
          v71 = v71;
        }

        else
        {
          v71 = v67;
        }

        _X8 = &v69[25 * v68[v71 + 1]];
        __asm
        {
          PRFM            #0, [X8]
          PRFM            #0, [X8,#0x80]
          PRFM            #0, [X8,#0x100]
        }

        v76 = physx::Gu::SinglePersistentContactManifold::refreshContactPoints(&v69[25 * v68[v67]], &v192, v201).u32[0];
        if (v69[25 * v70 + 24].i32[0])
        {
          a10[2].i32[v70] = v76;
          ++v67;
        }

        else
        {
          v77 = a10[3].i8[14] - 1;
          a10[3].i8[14] = v77;
          v78 = v68[v77];
          v68[v77] = v70;
          v68[v67] = v78;
        }

        v66 = a10[3].u8[14];
      }

      while (v67 < v66);
    }
  }

  return physx::Gu::MultiplePersistentContactManifold::addManifoldContactsToContactBuffer(a10, v177, v189);
}

BOOL physx::Gu::pcmContactConvexHeightField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x4_t **a6, uint64_t a7, uint64_t a8)
{
  v119 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 48);
  v16 = *a6;
  *&v17 = *(a3 + 16);
  *(&v17 + 1) = *(a3 + 24);
  v102[0] = *a3;
  v102[1] = v17;
  v99[0] = xmmword_1E3047670;
  v99[1] = xmmword_1E3047670;
  v99[2] = xmmword_1E3060D60;
  v99[3] = xmmword_1E3047680;
  v100 = 0x3F80000000000000;
  v101 = 0;
  PCMConvexData = physx::Gu::getPCMConvexData(a1, v99, v98, v97);
  v19 = 0;
  v20.i64[0] = *(v15 + 60);
  v21 = *(a1 + 4);
  v22 = v21;
  v22.i32[3] = 0;
  v20.i64[1] = *(v15 + 68);
  v23 = vmulq_f32(v22, v20);
  v24 = vpmin_f32(vdup_laneq_s32(v23, 2), *v23.i8);
  LODWORD(v25) = vpmin_f32(v24, v24).u32[0];
  __asm { FMOV            V1.2S, #0.25 }

  if (v21.f32[0] == 1.0 && v21.f32[1] == 1.0)
  {
    v19 = v21.f32[2] == 1.0;
  }

  v24.f32[0] = *(a5 + 8) * 0.05;
  v31 = vdup_lane_s32(v24, 0);
  v32 = *(a1 + 16);
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v115 = v15;
  v117 = *(v15 + 40) + 20 * *(v15 + 39);
  v118 = *(v15 + 38);
  *&v107 = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, v25);
  *(&v107 + 2) = 0.025 * v25;
  if (v19)
  {
    v109 = xmmword_1E3047670;
    v110 = xmmword_1E3047680;
    v111 = xmmword_1E30476A0;
    v112 = xmmword_1E3047670;
    v113 = xmmword_1E3047680;
    v114 = xmmword_1E30476A0;
  }

  else
  {
    v33 = vrecpeq_f32(v22);
    v34 = 4;
    do
    {
      v33 = vmulq_f32(v33, vrecpsq_f32(v33, v22));
      --v34;
    }

    while (v34);
    *v35.f32 = vdup_lane_s32(*v21.f32, 0);
    v35.i64[1] = v35.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v35, v22)), v31).u32[0] & 0xFFFFFF) != 0)
    {
      v42 = vdup_lane_s32(*v32.f32, 1);
      v43 = vdup_laneq_s32(v32, 2);
      v44 = vdup_laneq_s32(v32, 3);
      v45 = vaddq_f32(v32, v32);
      v46 = vmul_lane_f32(v42, *v45.f32, 1);
      v47 = vmul_laneq_f32(v43, v45, 2);
      v48 = vmul_n_f32(v42, v45.f32[0]);
      v49 = vmul_n_f32(v43, v45.f32[0]);
      v50 = vmul_n_f32(v44, v45.f32[0]);
      v51 = vmul_lane_f32(v43, *v45.f32, 1);
      v52 = vmul_lane_f32(v44, *v45.f32, 1);
      v53 = vmul_laneq_f32(v44, v45, 2);
      __asm { FMOV            V7.2S, #1.0 }

      v55 = vsub_f32(_D7, vdup_lane_s32(vmul_f32(*v32.f32, *v45.f32), 0));
      v56 = vsub_f32(vsub_f32(_D7, v46), v47);
      *v45.f32 = vadd_f32(v48, v53);
      v57 = vsub_f32(v49, v52);
      v58 = vsub_f32(v48, v53);
      v59 = vadd_f32(v49, v52);
      v60 = vsub_f32(v51, v50);
      v61 = vext_s8(v59, v60, 4uLL);
      v62 = vsub_f32(v55, v47);
      *v63.f32 = vext_s8(v56, *&vdupq_lane_s32(v58, 1), 4uLL);
      v63.i64[1] = vdup_lane_s32(v61, 0).u32[0];
      v64 = vsub_f32(v55, v46);
      *v65.f32 = vext_s8(*&vdupq_lane_s32(*v45.f32, 0), v62, 4uLL);
      v65.i64[1] = vdup_lane_s32(v61, 1).u32[0];
      v66 = vadd_f32(v51, v50);
      *v67.f32 = vext_s8(*&vdupq_lane_s32(v57, 0), v66, 4uLL);
      v67.i64[1] = vdup_lane_s32(v64, 0).u32[0];
      v68 = vmulq_n_f32(v63, v21.f32[0]);
      v68.i32[3] = 0;
      v69 = vmulq_lane_f32(v65, *v21.f32, 1);
      v69.i32[3] = 0;
      v70 = vmulq_laneq_f32(v67, v21, 2);
      v70.i32[3] = 0;
      v71 = vmulq_lane_f32(v68, v56, 1);
      v71.i32[3] = 0;
      v72 = vmulq_n_f32(v69, v45.f32[0]);
      v72.i32[3] = 0;
      v73 = vmulq_n_f32(v70, *v57.i32);
      v73.i32[3] = 0;
      v36 = vaddq_f32(v73, vaddq_f32(v71, v72));
      v74 = vmulq_lane_f32(v68, v58, 1);
      v74.i32[3] = 0;
      v75 = vmulq_n_f32(v69, *v62.i32);
      v75.i32[3] = 0;
      v76 = vmulq_n_f32(v70, *v66.i32);
      v76.i32[3] = 0;
      v37 = vaddq_f32(v76, vaddq_f32(v74, v75));
      v77 = vmulq_lane_f32(v68, v59, 1);
      v77.i32[3] = 0;
      v78 = vmulq_n_f32(v69, *v60.i32);
      v78.i32[3] = 0;
      v79 = vmulq_n_f32(v70, *v64.i32);
      v79.i32[3] = 0;
      v38 = vaddq_f32(v79, vaddq_f32(v77, v78));
      v109 = v36;
      v110 = v37;
      v80 = vmulq_n_f32(v63, v33.f32[0]);
      v80.i32[3] = 0;
      v81 = vmulq_lane_f32(v65, *v33.f32, 1);
      v81.i32[3] = 0;
      v82 = vmulq_laneq_f32(v67, v33, 2);
      v82.i32[3] = 0;
      v83 = vmulq_lane_f32(v80, v56, 1);
      v83.i32[3] = 0;
      v84 = vmulq_n_f32(v81, v45.f32[0]);
      v84.i32[3] = 0;
      v85 = vmulq_n_f32(v82, *v57.i32);
      v85.i32[3] = 0;
      v86 = vaddq_f32(v85, vaddq_f32(v83, v84));
      v87 = vmulq_lane_f32(v80, v58, 1);
      v87.i32[3] = 0;
      v88 = vmulq_n_f32(v81, *v62.i32);
      v88.i32[3] = 0;
      v89 = vmulq_n_f32(v82, *v66.i32);
      v89.i32[3] = 0;
      v90 = vmulq_lane_f32(v80, v59, 1);
      v90.i32[3] = 0;
      v91 = vmulq_n_f32(v81, *v60.i32);
      v91.i32[3] = 0;
      v92 = vmulq_n_f32(v82, *v64.i32);
      v92.i32[3] = 0;
      v40 = vaddq_f32(v89, vaddq_f32(v87, v88));
      v41 = vaddq_f32(v92, vaddq_f32(v90, v91));
      v111 = v38;
      v112 = v86;
    }

    else
    {
      v33.i32[3] = 0;
      v36 = vmulq_f32(v22, xmmword_1E3047670);
      v37 = vmulq_f32(v22, xmmword_1E3047680);
      v38 = vmulq_f32(v22, xmmword_1E30476A0);
      v109 = v36;
      v110 = v37;
      v39 = vmulq_f32(v33, xmmword_1E3047670);
      v40 = vmulq_f32(v33, xmmword_1E3047680);
      v41 = vmulq_f32(v33, xmmword_1E30476A0);
      v111 = v38;
      v112 = v39;
    }

    v113 = v40;
    v114 = v41;
    v93 = vmulq_f32(v36, 0);
    v93.i32[3] = 0;
    v94 = vmulq_f32(v37, 0);
    v94.i32[3] = 0;
    v95 = vmulq_f32(v38, 0);
    v95.i32[3] = 0;
    v106 = vaddq_f32(v95, vaddq_f32(v94, v93));
  }

  v116 = *(v15 + 48);
  v103[4] = v102;
  v103[5] = &v109;
  v103[6] = &v112;
  if (PCMConvexData)
  {
    v104 = 1;
    v103[0] = &unk_1F5D216F0;
    v105 = &v106;
    return physx::Gu::PCMContactConvexHeightfield(v97, v103, v98, a2, a3, a4, a7, v99, 1, v16, a8);
  }

  else
  {
    v104 = 0;
    v103[0] = &unk_1F5D21740;
    v105 = &v106;
    return physx::Gu::PCMContactConvexHeightfield(v97, v103, v98, a2, a3, a4, a7, v99, 0, v16, a8);
  }
}

BOOL physx::Gu::pcmContactBoxHeightField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int32 *a5, float32x4_t **a6, uint64_t a7, uint64_t a8, int32x2_t a9, double a10, double a11, double a12, int32x4_t a13)
{
  v59 = *MEMORY[0x1E69E9840];
  v18 = *a6;
  a9.i32[0] = *a5;
  v19 = *(a1 + 12);
  v20 = *a5 + v19;
  a13.i64[0] = *(a1 + 4);
  v21 = vadd_f32(vdup_lane_s32(a9, 0), *a13.i8);
  v52 = vneg_f32(v21);
  v53 = -v20;
  v54 = v21;
  v55 = v20;
  v49[0] = xmmword_1E3047670;
  v49[1] = xmmword_1E3047670;
  v49[2] = xmmword_1E3060D60;
  v49[3] = xmmword_1E3047680;
  v50 = 0x3F80000000000000;
  v51 = 0;
  *&v22 = *(a3 + 16);
  *(&v22 + 1) = *(a3 + 24);
  v23 = *a3;
  v24 = a13;
  *&v24.i32[2] = v19;
  v25 = vdup_laneq_s32(v24, 2);
  v24.i32[3] = 0;
  v26 = vpmin_f32(v25, *a13.i8);
  v26.f32[0] = vpmin_f32(v26, v26).f32[0];
  v46 = 3;
  v47 = 0;
  v42[0] = 0;
  v42[1] = 0;
  v48 = v24;
  v43 = 0.15 * v26.f32[0];
  v44 = 0.05 * v26.f32[0];
  v45 = 0.05 * v26.f32[0];
  v41[0] = v23;
  v41[1] = v22;
  physx::Gu::PolygonalBox::PolygonalBox(v29, (a1 + 4));
  v32 = 0;
  v34 = 0x600000008;
  v33 = 0;
  v35 = 0;
  v36 = &v31;
  v37 = &v30;
  v38 = &physx::Gu::gPCMBoxPolygonData;
  v39 = 0u;
  v40 = 0u;
  v28[0] = xmmword_1E3047670;
  v28[1] = xmmword_1E3047680;
  v28[2] = xmmword_1E30476A0;
  v56[4] = v41;
  v56[5] = v28;
  v56[6] = v28;
  v57 = 1;
  v56[0] = &unk_1F5D21690;
  v58 = v42;
  return physx::Gu::PCMContactConvexHeightfield(&v32, v56, &v52, a2, a3, a4, a7, v49, 1, v18, a8);
}

uint64_t physx::Gu::PCMHeightfieldContactGenerationCallback<physx::PCMCapsuleVsHeightfieldContactGenerationCallback>::onEvent(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a2 + 15 >= 0x10)
  {
    v5 = 0;
    v29 = (a2 + 15) >> 4;
    do
    {
      v55 = 0;
      if (a2 >= 0x10)
      {
        v6 = 16;
      }

      else
      {
        v6 = a2;
      }

      v31 = v5;
      v32 = a2;
      v30 = v6;
      if (a2)
      {
        v35 = v6;
        do
        {
          v33 = *a3;
          physx::Gu::HeightFieldUtil::getTriangle(*(a1 + 8), *(a1 + 16), &v45, v53, v52, *a3, 0, 0);
          v7 = ((*(&v47 + 1) - *(&v45 + 1)) * (v50 - v46)) - ((v48 - v46) * (*(&v49 + 1) - *(&v45 + 1)));
          v8 = ((v48 - v46) * (*&v49 - *&v45)) - ((*&v47 - *&v45) * (v50 - v46));
          v9 = ((*&v47 - *&v45) * (*(&v49 + 1) - *(&v45 + 1))) - ((*(&v47 + 1) - *(&v45 + 1)) * (*&v49 - *&v45));
          v10 = sqrtf(((v8 * v8) + (v7 * v7)) + (v9 * v9));
          v34 = a3 + 1;
          if (v10 > 0.0)
          {
            v11 = 1.0 / v10;
            v7 = v7 * v11;
            v8 = v8 * v11;
            v9 = v9 * v11;
          }

          v12 = 0;
          v13 = 0;
          --v35;
          do
          {
            v14 = v52[v12];
            if (v14 == -1)
            {
              if (*(a1 + 24) == 1)
              {
                v13 |= 8 << v12;
              }

              else
              {
                v13 |= 1 << v12;
              }
            }

            else
            {
              physx::Gu::HeightFieldUtil::getTriangle(*(a1 + 8), *(a1 + 16), &v36, v51, 0, v14, 0, 0);
              v15 = ((v40 - v37) * (v44 - v38)) - ((v41 - v38) * (v43 - v37));
              v16 = ((v41 - v38) * (v42 - v36)) - ((v39 - v36) * (v44 - v38));
              v17 = ((v39 - v36) * (v43 - v37)) - ((v40 - v37) * (v42 - v36));
              v18 = &v45 + 3 * byte_1E3117328[v12];
              if ((((v16 * (v18[1] - v37)) + (v15 * (*v18 - v36))) + (v17 * (v18[2] - v38))) < 0.0)
              {
                v19 = sqrtf(((v16 * v16) + (v15 * v15)) + (v17 * v17));
                if (v19 > 0.0)
                {
                  v20 = 1.0 / v19;
                  v15 = v15 * v20;
                  v16 = v16 * v20;
                  v17 = v17 * v20;
                }

                v21 = 8 << v12;
                if ((((v8 * v16) + (v15 * v7)) + (v17 * v9)) >= 0.997)
                {
                  v21 = 0;
                }

                v13 |= v21;
              }
            }

            ++v12;
          }

          while (v12 != 3);
          v22 = v55++;
          v23 = &v54[3 * (3 * v22)];
          *v23 = v45;
          v23[2] = v46;
          LODWORD(v23) = 3 * v22 + 1;
          v24 = &v54[3 * v23];
          *v24 = v47;
          v24[2] = v48;
          v25 = v53[1];
          v54[(3 * v22) + 144] = v53[0];
          v26 = 3 * v22 + 2;
          v27 = &v54[3 * v26];
          *v27 = v49;
          v54[v23 + 144] = v25;
          v54[v26 + 144] = v53[2];
          v27[2] = v50;
          v54[v22 + 192] = v33;
          *(&v54[208] + v22) = v13;
          a3 = v34;
        }

        while (v35);
      }

      physx::Gu::PCMMeshContactGeneration::processTriangleCache<16u,physx::Gu::PCMCapsuleVsMeshContactGeneration>(a1 + 32, v54);
      a2 = v32 - v30;
      v5 = v31 + 1;
    }

    while (v31 + 1 != v29);
  }

  return 1;
}

int32x2_t physx::Gu::PCMMeshContactGeneration::PCMMeshContactGeneration(unint64_t a1, void *a2, float32x2_t *a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v10 = vneg_f32(0x80000000800000);
  do
  {
    v11 = (a1 + v9);
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v11;
    v11[5] = v10;
    v9 += 64;
  }

  while (v9 != 2048);
  *(a1 + 2304) = *a2;
  *(a1 + 2312) = *a3;
  *(a1 + 2320) = a4;
  *(a1 + 2328) = a5;
  *(a1 + 2336) = a6;
  *(a1 + 2344) = a7;
  *(a1 + 2416) = 0u;
  *(a1 + 2368) = xmmword_1E3047670;
  *(a1 + 2384) = xmmword_1E3047680;
  *(a1 + 2400) = xmmword_1E30476A0;
  *(a1 + 3732) = 0;
  *&v12 = -1;
  *(&v12 + 1) = -1;
  *(a1 + 3604) = v12;
  *(a1 + 3620) = v12;
  *(a1 + 3636) = v12;
  *(a1 + 3652) = v12;
  *(a1 + 3668) = v12;
  *(a1 + 3684) = v12;
  *(a1 + 3700) = v12;
  *(a1 + 3716) = v12;
  *(a1 + 3736) = a8;
  *(a1 + 3744) = a9;
  *(a1 + 2440) = 0;
  *(a1 + 2448) = 0;
  v13 = vnegq_f32(*a4);
  v14 = vsubq_f32(a5[1], a4[1]);
  v15 = v13;
  v15.i32[3] = 0;
  v16 = vdupq_laneq_s32(*a4, 3).u64[0];
  v17 = vmulq_n_f32(v14, vmla_f32(0xBF000000BF000000, v16, v16).f32[0]);
  v17.i32[3] = 0;
  v18 = vextq_s8(v15, v15, 8uLL).u64[0];
  v19 = vext_s8(*v13.f32, v18, 4uLL);
  v20 = vmls_f32(vmul_f32(*v13.f32, *&vextq_s8(v14, v14, 4uLL)), v19, *v14.f32);
  *v21.f32 = vext_s8(v20, vmls_f32(vmul_f32(v18, *v14.f32), *v13.f32, *&vextq_s8(v14, v14, 8uLL)), 4uLL);
  v21.i64[1] = v20.u32[0];
  v22 = vmlaq_laneq_f32(v17, v21, *a4, 3);
  v22.i64[1] = vextq_s8(v22, v22, 8uLL).u32[0];
  v23 = vmulq_f32(v15, v14);
  v23.i64[0] = vpaddq_f32(v23, v23).u64[0];
  v24 = vmlaq_n_f32(v22, v15, vpadd_f32(*v23.f32, *v23.f32).f32[0]);
  v25 = vaddq_f32(v24, v24);
  v25.i32[3] = 0;
  v26 = *a5;
  v26.i32[3] = 0;
  v27 = vmulq_f32(v15, v26);
  v27.i64[0] = vpaddq_f32(v27, v27).u64[0];
  *v21.f32 = vsub_f32(vmul_f32(*&vextq_s8(*a4, *a4, 8uLL), *&vextq_s8(*a5, *a5, 8uLL)), vpadd_f32(*v27.f32, *v27.f32));
  v28 = vmulq_laneq_f32(v26, *a4, 3);
  v26.i64[0] = vextq_s8(v26, v26, 8uLL).u64[0];
  *v27.f32 = vmls_f32(vmul_f32(*v13.f32, vext_s8(*a5->f32, *v26.f32, 4uLL)), v19, *a5->f32);
  *v13.f32 = vext_s8(*v27.f32, vmls_f32(vmul_f32(v18, *a5->f32), *v13.f32, *v26.f32), 4uLL);
  v13.i64[1] = v27.i64[0];
  v29 = vaddq_f32(vaddq_f32(vmulq_laneq_f32(v15, *a5, 3), v28), v13);
  *v28.f32 = vdup_lane_s32(*v29.f32, 1);
  *v15.f32 = vdup_laneq_s32(v29, 2);
  v30 = vdup_lane_s32(*v21.f32, 1);
  _Q5 = vaddq_f32(v29, v29);
  *v29.f32 = vdup_lane_s32(vmul_f32(*v29.f32, *_Q5.f32), 0);
  v32 = vmul_lane_f32(*v28.f32, *_Q5.f32, 1);
  *v21.f32 = vmul_laneq_f32(*v15.f32, _Q5, 2);
  *v28.f32 = vmul_n_f32(*v28.f32, _Q5.f32[0]);
  *v27.f32 = vmul_n_f32(*v15.f32, _Q5.f32[0]);
  v33 = vmul_n_f32(v30, _Q5.f32[0]);
  *v15.f32 = vmul_lane_f32(*v15.f32, *_Q5.f32, 1);
  v34 = vmul_lane_f32(v30, *_Q5.f32, 1);
  v35 = vmul_laneq_f32(v30, _Q5, 2);
  __asm { FMOV            V5.2S, #1.0 }

  *v29.f32 = vsub_f32(*_Q5.f32, *v29.f32);
  *_Q5.f32 = vext_s8(vsub_f32(vsub_f32(*_Q5.f32, v32), *v21.f32), vadd_f32(*v28.f32, v35), 4uLL);
  _Q5.i64[1] = vsub_f32(*v27.f32, v34).u32[0];
  *v28.f32 = vext_s8(vsub_f32(*v28.f32, v35), vsub_f32(*v29.f32, *v21.f32), 4uLL);
  v28.i64[1] = vadd_f32(*v15.f32, v33).u32[0];
  *v15.f32 = vext_s8(vadd_f32(*v27.f32, v34), vsub_f32(*v15.f32, v33), 4uLL);
  v15.i64[1] = vsub_f32(*v29.f32, v32).u32[0];
  *(a1 + 2368) = _Q5;
  *(a1 + 2384) = v28;
  *(a1 + 2400) = v15;
  *(a1 + 2416) = v25;
  v40 = xmmword_1E3049620;
  for (i = 2048; i != 2304; i += 16)
  {
    *(a1 + i) = vaddq_s64(vdupq_n_s64(a1), vshlq_n_s64(v40, 6uLL));
    v40 = vaddq_s64(v40, vdupq_n_s64(2uLL));
  }

  *(a1 + 2432) = a7;
  *(a1 + 2360) = vmul_f32(*a3, *a3);
  result = vdup_n_s32(0x3F7EF9DBu);
  *(a1 + 2352) = result;
  return result;
}

float physx::Gu::TriangleCache<16u>::addTriangle(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, char a5)
{
  v5 = *(a1 + 848);
  *(a1 + 848) = v5 + 1;
  v6 = a1 + 12 * (3 * v5);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  LODWORD(v6) = 3 * v5 + 1;
  v7 = a1 + 12 * v6;
  *v7 = *(a2 + 12);
  *(v7 + 8) = *(a2 + 20);
  LODWORD(v7) = 3 * v5 + 2;
  v8 = a1 + 12 * v7;
  *v8 = *(a2 + 24);
  result = *(a2 + 32);
  *(v8 + 8) = result;
  *(a1 + 576 + 4 * (3 * v5)) = *a3;
  *(a1 + 576 + 4 * v6) = a3[1];
  *(a1 + 576 + 4 * v7) = a3[2];
  *(a1 + 4 * v5 + 768) = a4;
  *(a1 + v5 + 832) = a5;
  return result;
}

void physx::Gu::PCMMeshContactGeneration::processTriangleCache<16u,physx::Gu::PCMCapsuleVsMeshContactGeneration>(unint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 848);
  if (v2)
  {
    v3 = a2;
    v5 = (a2 + 832);
    v6 = (a2 + 768);
    v7 = (a1 + 2440);
    v8 = (a1 + 2360);
    v9 = (a1 + 2352);
    v134 = a1 + 2056;
    v135 = (a1 + 2048);
    v10 = a1 + 2040;
    v11 = vneg_f32(0x80000000800000);
    do
    {
      v12 = *v6;
      v13.i64[0] = *v3;
      v13.i64[1] = *(v3 + 8);
      v14.i64[0] = *(v3 + 12);
      v14.i64[1] = *(v3 + 20);
      v15.i64[0] = *(v3 + 24);
      v15.i64[1] = *(v3 + 32);
      v16 = *v5;
      v17 = vsubq_f32(v14, v13);
      v18 = vsubq_f32(v15, v13);
      v19 = vmls_f32(vmul_f32(*v17.i8, *&vextq_s8(v18, v18, 4uLL)), *&vextq_s8(v17, v17, 4uLL), *v18.i8);
      *v20.f32 = vext_s8(v19, vmls_f32(vmul_f32(*&vextq_s8(v17, v17, 8uLL), *v18.i8), *v17.i8, *&vextq_s8(v18, v18, 8uLL)), 4uLL);
      v20.i64[1] = v19.u32[0];
      v153[0] = v13;
      *v18.i8 = vpadd_f32(vmul_f32(*v20.f32, *v20.f32), vmul_f32(v19.u32[0], v19.u32[0]));
      v21 = vpadd_f32(*v18.i8, *v18.i8);
      v22 = vrsqrte_f32(v21);
      v23 = 4;
      do
      {
        v22 = vmul_f32(v22, vrsqrts_f32(vmul_f32(v22, v22), v21));
        --v23;
      }

      while (v23);
      v24 = vbsl_s8(vdup_lane_s32(vceqz_f32(v21), 0), v21, vmul_f32(v21, v22));
      v25 = vrecpe_f32(v24);
      v26 = 4;
      do
      {
        v25 = vmul_f32(v25, vrecps_f32(v24, v25));
        --v26;
      }

      while (v26);
      v27 = vmulq_n_f32(v20, v25.f32[0]);
      v27.i32[3] = 0;
      v152 = v27;
      v28 = vmulq_f32(v13, v27);
      v28.i64[0] = vpaddq_f32(v28, v28).u64[0];
      v29 = *(a1 + 3768);
      v30 = vmulq_f32(v27, *v29);
      v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
      if ((vcgt_f32(vpadd_f32(*v28.f32, *v28.f32), vpadd_f32(*v30.f32, *v30.f32)).u32[0] & 1) == 0)
      {
        v143 = v6;
        v144 = v5;
        v150 = 0.0;
        v151 = 0;
        v149 = 0.0;
        v32 = v29[4];
        v31 = v29 + 4;
        v140 = v31[-1];
        v142 = v27;
        v139 = v32;
        v145 = v13;
        v146 = v14;
        v147 = v15;
        physx::Gu::pcmDistanceSegmentTriangleSquared(&v151, &v150, &v149, v140, v32, v13, v14, v15);
        if (COERCE_FLOAT(*(a1 + 3760)) > v33)
        {
          v138 = v33;
          v136 = *&v149;
          v137 = *&v150;
          if (physx::Gu::selectNormal(v16, v150, v149))
          {
            v34 = v140;
            v148 = v142;
            v35 = v146;
            v36 = v147;
          }

          else
          {
            v34 = v140;
            v37 = v142;
            v35 = v146;
            v36 = v147;
            if (v138 != 0.0)
            {
              v38 = vmlaq_n_f32(v140, vsubq_f32(v139, v140), *&v151);
              __asm { FMOV            V3.2S, #1.0 }

              LODWORD(v43) = vsub_f32(_D3, vadd_f32(v137, v136)).u32[0];
              v44 = vmulq_n_f32(v147, v136.f32[0]);
              v44.i32[3] = 0;
              v45 = vmlaq_n_f32(v44, v146, v137.f32[0]);
              v45.i64[1] = vextq_s8(v45, v45, 8uLL).u32[0];
              v46 = vmlaq_n_f32(v45, v145, v43);
              *v47.f32 = vsub_f32(*v38.i8, *v46.i8);
              *&v47.u32[2] = vsub_f32(vextq_s8(v38, v38, 8uLL).u32[0], vextq_s8(v46, v46, 8uLL).u32[0]);
              *v46.i8 = vpadd_f32(vmul_f32(*v47.f32, *v47.f32), vmul_f32(*&v47.u32[2], *&v47.u32[2]));
              v48 = vpadd_f32(*v46.i8, *v46.i8);
              v49 = vrsqrte_f32(v48);
              v50 = 4;
              do
              {
                v49 = vmul_f32(v49, vrsqrts_f32(vmul_f32(v49, v49), v48));
                --v50;
              }

              while (v50);
              v51 = vbsl_s8(vdup_lane_s32(vceqz_f32(v48), 0), v48, vmul_f32(v48, v49));
              v52 = vrecpe_f32(v51);
              v53 = 4;
              do
              {
                v52 = vmul_f32(v52, vrecps_f32(v51, v52));
                --v53;
              }

              while (v53);
              v37 = vmulq_n_f32(v47, v52.f32[0]);
              v37.i32[3] = 0;
              v142 = v37;
            }

            v148 = v37;
          }

          v141 = *(a1 + 2440);
          physx::Gu::PCMCapsuleVsMeshContactGeneration::generateContacts(v153, &v152, &v148, v12, v31, (a1 + 3752), *(a1 + 2432), v7, v35, v36, v34);
          v54 = *(a1 + 3768);
          v55 = *(a1 + 2432);
          physx::Gu::PCMCapsuleVsMeshContactGeneration::generateEE(&v148, v12, v55, v7, *(v54 + 48), *(v54 + 64), *(a1 + 3760), v145, v146);
          physx::Gu::PCMCapsuleVsMeshContactGeneration::generateEE(&v148, v12, v55, v7, *(v54 + 48), *(v54 + 64), *(a1 + 3760), v146, v147);
          physx::Gu::PCMCapsuleVsMeshContactGeneration::generateEE(&v148, v12, v55, v7, *(v54 + 48), *(v54 + 64), *(a1 + 3760), v145, v147);
          LODWORD(v56) = *(a1 + 2440);
          if (v56 != v141)
          {
            v57 = v11;
            if (v141 < v56)
            {
              v57 = vneg_f32(0x80000000800000);
              v58 = v141 << 6;
              v59 = v141;
              do
              {
                v60 = (*(a1 + 2432) + v58);
                v61 = vmulq_n_f32(*(a1 + 2368), COERCE_FLOAT(*v60));
                v61.i32[3] = 0;
                v62 = vmulq_lane_f32(*(a1 + 2384), *v60->i8, 1);
                v62.i32[3] = 0;
                v63 = vdup_laneq_s32(v60[2], 3);
                v64 = vmulq_laneq_f32(*(a1 + 2400), *v60, 2);
                v64.i32[3] = 0;
                *v60 = vaddq_f32(*(a1 + 2416), vaddq_f32(vaddq_f32(v61, v62), v64));
                v57 = vmin_f32(v57, v63);
                ++v59;
                v56 = *(a1 + 2440);
                v58 += 64;
              }

              while (v59 < v56);
            }

            v65 = v141;
            if (v141 < v56)
            {
              do
              {
                v66 = v65++;
                if (v65 < v56)
                {
                  v67 = *(*(a1 + 2432) + (v66 << 6) + 16);
                  v68 = v65;
                  do
                  {
                    v69 = *(a1 + 2432);
                    v70 = v69 + (v68 << 6);
                    v71 = vsubq_f32(*(v70 + 16), v67);
                    v72 = vmulq_f32(v71, v71);
                    v72.i64[0] = vpaddq_f32(v72, v72).u64[0];
                    if (COERCE_FLOAT(*(a1 + 2360)) > vpadd_f32(*v72.f32, *v72.f32).f32[0])
                    {
                      v73 = (v69 + ((v56 - 1) << 6));
                      v74 = *v73;
                      v75 = v73[1];
                      v76 = v73[2];
                      *(v70 + 48) = *(v73 + 12);
                      *(v70 + 16) = v75;
                      *(v70 + 32) = v76;
                      *v70 = v74;
                      LODWORD(v56) = *v7 - 1;
                      *v7 = v56;
                      --v68;
                    }

                    ++v68;
                  }

                  while (v68 < v56);
                }
              }

              while (v65 < v56);
            }

            v77 = *(a1 + 2444);
            if (v77 && (v78 = a1 + ((v77 - 1) << 6), v79 = vmulq_f32(v142, *v78), v79.i64[0] = vpaddq_f32(v79, v79).u64[0], vpadd_f32(*v79.f32, *v79.f32).f32[0] > COERCE_FLOAT(*(a1 + 2352))))
            {
              v81 = *(v78 + 48);
              v82 = *(v78 + 52);
              while (v81 < v82)
              {
                v83 = v141;
                if (v141 < v56)
                {
                  do
                  {
                    v84 = *(a1 + 2432);
                    v85 = (v84 + (v83 << 6));
                    v86 = (v84 + (v81 << 6));
                    v87 = vsubq_f32(v85[1], v86[1]);
                    v88 = vmulq_f32(v87, v87);
                    v88.i64[0] = vpaddq_f32(v88, v88).u64[0];
                    if (COERCE_FLOAT(*(a1 + 2360)) > vpadd_f32(*v88.f32, *v88.f32).f32[0])
                    {
                      if (v86[2].f32[3] > v85[2].f32[3])
                      {
                        v89 = *v85;
                        v90 = v85[1];
                        v91 = v85[2];
                        v86[3].i32[0] = v85[3].i32[0];
                        v86[1] = v90;
                        v86[2] = v91;
                        *v86 = v89;
                        v84 = *(a1 + 2432);
                        LODWORD(v56) = *(a1 + 2440);
                      }

                      v92 = (v84 + ((v56 - 1) << 6));
                      v93 = v84 + (v83 << 6);
                      v94 = *v92;
                      v95 = v92[1];
                      v96 = v92[2];
                      *(v93 + 48) = *(v92 + 12);
                      *(v93 + 16) = v95;
                      *(v93 + 32) = v96;
                      *v93 = v94;
                      LODWORD(v56) = *v7 - 1;
                      *v7 = v56;
                      --v83;
                    }

                    ++v83;
                  }

                  while (v83 < v56);
                  v82 = *(v78 + 52);
                }

                ++v81;
              }

              *(v78 + 52) = v56;
              *(v78 + 40) = vmin_f32(*(v78 + 40), v57);
            }

            else
            {
              v80 = a1 + (v77 << 6);
              *(v80 + 48) = v141;
              *(v80 + 52) = v56;
              *(v80 + 40) = v57;
              *(a1 + 2444) = v77 + 1;
              *v80 = v142;
              LODWORD(v56) = *(a1 + 2440);
            }

            if (v56 >= 0x10)
            {
              v97 = *(a1 + 2444);
              if (v97 >= 2)
              {
                v98 = 0;
                v99 = -1;
                for (i = 1; i != v97; ++i)
                {
                  v101 = v135[i - 1];
                  v102 = v135[i];
                  if (COERCE_FLOAT(*(v101 + 40)) > COERCE_FLOAT(*(v102 + 40)))
                  {
                    v135[i - 1] = v102;
                    v135[i] = v101;
                    if (i - 2 >= 0)
                    {
                      v103 = v134 + 8 * v99;
                      v104 = v98;
                      do
                      {
                        v106 = *(v103 - 8);
                        v105 = *v103;
                        if (COERCE_FLOAT(*(*v103 + 40)) >= COERCE_FLOAT(*(v106 + 40)))
                        {
                          break;
                        }

                        *v103 = v106;
                        *(v103 - 8) = v105;
                        v103 -= 8;
                        --v104;
                      }

                      while (v104 > 0);
                    }
                  }

                  ++v99;
                  ++v98;
                }
              }

              if (v97)
              {
                v107 = 0;
                for (j = 0; j != v97; ++j)
                {
                  v109 = v135[j];
                  v109[1].i64[1] = v109;
                  v109[2].i64[0] = v109;
                  v110 = v109[3].i32[1] - v109[3].i32[0];
                  v109[3].i32[2] = v110;
                  v109[1].i64[0] = 0;
                  v111 = v107;
                  while (v111)
                  {
                    v112 = *(v10 + v111);
                    v113 = *(v112 + 32);
                    v114 = vmulq_f32(*v109, *v113);
                    v114.i64[0] = vpaddq_f32(v114, v114).u64[0];
                    v111 -= 8;
                    if (vpadd_f32(*v114.f32, *v114.f32).f32[0] >= COERCE_FLOAT(*v9))
                    {
                      *(v112 + 16) = v109;
                      v113[1].i64[1] = v109;
                      v109[2].i64[0] = v113;
                      *(*(v112 + 32) + 56) += v110;
                      break;
                    }
                  }

                  v107 += 8;
                }

                v115 = 0;
                v116 = *(a1 + 2432);
                do
                {
                  v117 = v135[v115];
                  if (v117)
                  {
                    _ZF = *(v117 + 32) == v117;
                  }

                  else
                  {
                    _ZF = 0;
                  }

                  if (_ZF)
                  {
                    while (*(v117 + 16))
                    {
                      v119 = v117;
                      v117 = *(v117 + 16);
                      v120 = *(v119 + 48);
                      v121 = *(v119 + 52);
                      if (v120 < v121)
                      {
                        v122 = *(v117 + 52);
                        do
                        {
                          v123 = *(v117 + 48);
                          if (v123 < v122)
                          {
                            do
                            {
                              v124 = v116 + (v123 << 6);
                              v125 = vsubq_f32(*(v124 + 16), *(v116 + (v120 << 6) + 16));
                              v126 = vmulq_f32(v125, v125);
                              v126.i64[0] = vpaddq_f32(v126, v126).u64[0];
                              if (COERCE_FLOAT(*v8) > vpadd_f32(*v126.f32, *v126.f32).f32[0])
                              {
                                v127 = (v116 + ((v122 - 1) << 6));
                                v128 = *v127;
                                v129 = v127[1];
                                v130 = v127[2];
                                *(v124 + 48) = *(v127 + 12);
                                *(v124 + 16) = v129;
                                *(v124 + 32) = v130;
                                *v124 = v128;
                                v122 = *(v117 + 52) - 1;
                                *(v117 + 52) = v122;
                                --v123;
                              }

                              ++v123;
                            }

                            while (v123 < v122);
                            v121 = *(v119 + 52);
                          }

                          ++v120;
                        }

                        while (v120 < v121);
                      }
                    }
                  }

                  ++v115;
                }

                while (v115 != v97);
                LODWORD(v56) = *(a1 + 2440);
                v131 = *(a1 + 2444);
              }

              else
              {
                v131 = 0;
              }

              physx::Gu::MultiplePersistentContactManifold::addManifoldContactPoints(*(a1 + 2336), *(a1 + 2432), v56, v135, v131, v8, v9, 3);
              *(a1 + 2440) = 0;
              v132 = xmmword_1E3049620;
              for (k = 2048; k != 2304; k += 16)
              {
                *(a1 + k) = vaddq_s64(vdupq_n_s64(a1), vshlq_n_s64(v132, 6uLL));
                v132 = vaddq_s64(v132, vdupq_n_s64(2uLL));
              }
            }
          }
        }

        v6 = v143;
        v5 = v144;
      }

      v3 += 36;
      ++v6;
      ++v5;
      --v2;
    }

    while (v2);
  }
}

uint64_t physx::Gu::PCMMeshContactGenerationCallback<physx::PCMCapsuleVsMeshContactGenerationCallback>::processHit(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, uint64_t a6, _DWORD *a7)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) == 1)
  {
    *&v9 = *a3;
    *(&v9 + 2) = a3[2];
    *(&v9 + 3) = *a4;
    *&v10 = *(a4 + 1);
    *(&v10 + 1) = *a5;
    v49[0] = v9;
    v49[1] = v10;
    v50 = *(a5 + 2);
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(v11 + 72);
    v13 = *(v11 + 8);
    v14 = a3[1];
    v15 = *(v11 + 20);
    v16 = a3[2];
    v17 = *(v11 + 32);
    v18 = ((*a3 * v13) + (v14 * v15)) + (v16 * v17);
    v19 = *v11;
    v20 = *(v11 + 12);
    v21 = *(v11 + 24);
    *&v49[0] = vadd_f32(vadd_f32(vmul_n_f32(*v11, *a3), vmul_n_f32(v20, v14)), vmul_n_f32(v21, v16));
    *(v49 + 2) = v18;
    v22 = a4[1];
    v23 = (*a4 * v19.f32[0]) + (v22 * v20.f32[0]);
    v24 = vmuls_lane_f32(*a4, v19, 1) + vmuls_lane_f32(v22, v20, 1);
    v25 = (v13 * *a4) + (v15 * v22);
    v26 = a4[2];
    v27 = v23 + (v26 * v21.f32[0]);
    v28 = v24 + vmuls_lane_f32(v26, v21, 1);
    v29 = v25 + (v17 * v26);
    v30 = 12;
    if (v12)
    {
      v31 = 24;
    }

    else
    {
      v31 = 12;
    }

    *(v49 + v31) = v27;
    if (v12)
    {
      v32 = 28;
    }

    else
    {
      v32 = 16;
    }

    *(v49 + v32) = v28;
    if (v12)
    {
      v33 = 32;
    }

    else
    {
      v33 = 20;
    }

    *(v49 + v33) = v29;
    v34 = a5[1];
    v35 = *a5 * v19.f32[0];
    v36 = v34 * v20.f32[0];
    v37 = vmuls_lane_f32(*a5, v19, 1) + vmuls_lane_f32(v34, v20, 1);
    v38 = (v13 * *a5) + (v15 * v34);
    v39 = a5[2];
    v40 = v39 * v21.f32[0];
    v41 = v37 + vmuls_lane_f32(v39, v21, 1);
    v42 = v38 + (v17 * v39);
    if (!v12)
    {
      v30 = 24;
    }

    *(v49 + v30) = (v35 + v36) + v40;
    if (v12)
    {
      v43 = 16;
    }

    else
    {
      v43 = 28;
    }

    *(v49 + v43) = v41;
    if (v12)
    {
      v44 = 20;
    }

    else
    {
      v44 = 32;
    }

    *(v49 + v44) = v42;
  }

  v45 = *(a2 + 16);
  v46 = *(a1 + 24);
  if (v46)
  {
    v47 = *(v46 + v45);
  }

  else
  {
    v47 = 56;
  }

  if (*(a1 + 884) == 16)
  {
    physx::Gu::PCMMeshContactGeneration::processTriangleCache<16u,physx::Gu::PCMCapsuleVsMeshContactGeneration>(a1 + 896, a1 + 36);
    *(a1 + 884) = 0;
  }

  physx::Gu::TriangleCache<16u>::addTriangle(a1 + 36, v49, a7, v45, v47);
  return 1;
}

uint64_t physx::Gu::gjkPenetration<physx::Gu::RelativeConvex<physx::Gu::ConvexHullNoScaleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullNoScaleV>>(float32x4_t *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, float32x4_t *a6, float32x4_t a7, float32x2_t a8, double a9, float32x4_t a10, int8x8_t a11)
{
  v343 = *MEMORY[0x1E69E9840];
  v16 = a1->i64[1];
  v17 = (v16 + 20);
  v18 = vld1_dup_f32(v17);
  v19 = *(a2 + 8);
  v20 = (v19 + 20);
  v21 = vld1_dup_f32(v20);
  v22 = vmin_f32(v18, v21);
  v23 = vdup_n_s32(0x3DCCCCCDu);
  v24 = vmul_f32(v22, v23);
  v22.i32[0] = *(v16 + 16);
  v23.i32[0] = *(v19 + 16);
  a10.i32[0] = -*(v16 + 32);
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
  v34 = *(v16 + 160);
  v35 = -1;
  v36 = *(v19 + 160);
  do
  {
    v37 = a3[v32];
    *(&v331 + v32) = v37;
    v38 = a4[v32];
    *(&v328 + v32) = v38;
    v39 = *(v34 + 12 * v37);
    v40 = vmulq_n_f32(*v33, v39.f32[0]);
    v40.i32[3] = 0;
    v41 = vmulq_lane_f32(v33[1], *v39.f32, 1);
    v41.i32[3] = 0;
    a10 = v33[3];
    v42 = vmulq_laneq_f32(v33[2], v39, 2);
    v42.i32[3] = 0;
    v43 = vaddq_f32(vaddq_f32(v40, v41), v42);
    v44 = *(v36 + 12 * v38);
    v44.i32[3] = 0;
    v45 = vaddq_f32(a10, v43);
    v46 = vsubq_f32(v45, v44);
    *(&v337 + v32) = v45;
    *(&v334 + v32) = v44;
    *(&v340 + v32) = v46;
    ++v35;
    ++v32;
  }

  while (v26 != v32);
  v325 = v26;
  if (v35 == 3)
  {
    physx::Gu::closestPtPointTetrahedron(&v340, &v337, &v334, &v331, &v328, &v325);
    goto LABEL_47;
  }

  if (v35 != 2)
  {
    if (v35 != 1)
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
    *v158.i64 = physx::Gu::RelativeConvex<physx::Gu::ConvexHullNoScaleV>::support(a1, &v324, &v331 + v325);
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