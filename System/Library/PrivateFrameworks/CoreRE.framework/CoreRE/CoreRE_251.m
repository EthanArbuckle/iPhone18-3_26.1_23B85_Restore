void physx::Dy::FeatherstoneArticulation::getImpulseSelfResponseInv(uint64_t a1, char a2, unsigned int a3, unsigned __int32 a4, uint64_t a5, float32x2_t *a6, float32x2_t *a7, uint64_t a8, float32x2_t *a9, uint64_t a10)
{
  v11 = a3;
  v121 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 608);
  v14 = a4;
  if (*(v13 + 40 * a4 + 32) == a3)
  {
    v16 = a6[1].f32[0];
    v17 = a6[3].f32[0];
    *&v18 = -a7[1].f32[0];
    *&v19 = -a7[3].f32[0];
    *&v114 = vneg_f32(*a7);
    *(&v114 + 1) = v18;
    *&v115 = vneg_f32(a7[2]);
    *(&v115 + 1) = v19;
    v20 = *a6;
    v21 = a6[2];
    physx::Dy::FeatherstoneArticulation::propagateImpulseW((*(a1 + 544) + 96 * a4), *(a1 + 624) + 160 * a4 + 120, *(a1 + 528) + 76 * a4, &v114, &v117);
    v108 = vsub_f32(v20, v117);
    v109 = v16 - v118;
    v110 = 0;
    v111 = vsub_f32(v21, v119);
    v112 = v17 - v120;
    v113 = 0;
    physx::Dy::FeatherstoneArticulation::getZ(v11, (a1 + 176), a5, &v108);
    physx::Dy::FeatherstoneArticulation::getDeltaVWithDeltaJV(a2, v11, a1 + 176, a5, a10, &v97, v23);
    v102 = v97;
    v103 = v98;
    v104 = 0;
    v105 = *v100;
    v24 = *(a1 + 624) + 160 * v14;
    v25 = (*(a1 + 480) + 112 * v14);
    v26 = (*(a1 + 496) + 36 * v14);
    v106 = *&v100[8];
    v27 = *(a1 + 528) + 76 * v14;
    v107 = 0;
    physx::Dy::FeatherstoneArticulation::propagateVelocityW(v24 + 120, v25, v26, v27, &v114, a10, &v102, &v97);
    v28 = v98;
    v29 = *&v100[8];
    v30 = *v100;
    v31 = v97;
    *a8 = v105;
    *(a8 + 8) = v106;
    *(a8 + 16) = v102;
    *(a8 + 24) = v103;
    *a9 = v30;
    a9[1].i32[0] = v29;
    a9[2] = v31;
    a9[3].f32[0] = v28;
    return;
  }

  v32 = a4;
  v33 = a4;
  if (a3 != a4)
  {
    v34 = a3;
    v33 = a4;
    do
    {
      if (v34 >= v33)
      {
        v34 = *(v13 + 40 * v34 + 32);
      }

      else
      {
        v33 = *(v13 + 40 * v33 + 32);
      }
    }

    while (v34 != v33);
  }

  v35 = 0;
  v36 = -a6[1].f32[0];
  v37 = -a6[3].f32[0];
  v38 = vneg_f32(*a6);
  v39 = *a7;
  v40 = a7[1].f32[0];
  v41 = vneg_f32(a6[2]);
  v42 = a7[2];
  v43 = a7[3].f32[0];
  v44 = (&v114 + 2 * a3);
  *v44 = v38;
  v44[1].f32[0] = v36;
  v44[1].i32[1] = 0;
  v44[2] = v41;
  v44[3].f32[0] = v37;
  v44[3].i32[1] = 0;
  v109 = v36;
  v110 = 0;
  v112 = v37;
  v113 = 0;
  v108 = v38;
  v45 = vneg_f32(v39);
  v46 = -v40;
  v111 = v41;
  v47 = vneg_f32(v42);
  v48 = -v43;
  v102 = v45;
  v103 = -v40;
  v104 = 0;
  v105 = v47;
  v106 = -v43;
  v107 = 0;
  v49 = (&v114 + 2 * a4);
  *v49 = v45;
  v49[1].f32[0] = -v40;
  v49[1].i32[1] = 0;
  v49[2] = v47;
  v49[3].f32[0] = -v43;
  v49[3].i32[1] = 0;
  if (v33 != a3)
  {
    v50 = 0;
    do
    {
      physx::Dy::FeatherstoneArticulation::propagateImpulseW((*(a1 + 544) + 96 * v11), *(a1 + 624) + 160 * v11 + 120, *(a1 + 528) + 76 * v11, &v108, &v97);
      v38 = v97;
      v108 = v97;
      v36 = v98;
      v109 = v98;
      v110 = 0;
      v41 = *v100;
      v111 = *v100;
      v37 = *&v100[8];
      v112 = *&v100[8];
      v113 = 0;
      v51 = *(v13 + 40 * v11 + 32);
      v52 = (&v114 + 2 * v51);
      *v52 = v97;
      v52[1].f32[0] = v36;
      v52[1].i32[1] = 0;
      v52[2] = v41;
      v52[3].f32[0] = v37;
      v52[3].i32[1] = 0;
      v35 = v50 + 1;
      v117.i32[v50++] = v11;
      v11 = v51;
    }

    while (v51 != v33);
  }

  v92 = v35;
  v53 = v35;
  if (v33 != v32)
  {
    v53 = v35;
    do
    {
      v54 = v53;
      physx::Dy::FeatherstoneArticulation::propagateImpulseW((*(a1 + 544) + 96 * v32), *(a1 + 624) + 160 * v32 + 120, *(a1 + 528) + 76 * v32, &v102, &v97);
      v45 = v97;
      v102 = v97;
      v46 = v98;
      v103 = v98;
      v104 = 0;
      v47 = *v100;
      v105 = *v100;
      v48 = *&v100[8];
      v106 = *&v100[8];
      v107 = 0;
      v55 = *(v13 + 40 * v32 + 32);
      v56 = (&v114 + 2 * v55);
      *v56 = v97;
      v56[1].f32[0] = v46;
      v56[1].i32[1] = 0;
      v56[2] = v47;
      v56[3].f32[0] = v48;
      v56[3].i32[1] = 0;
      ++v53;
      v117.i32[v54] = v32;
      v32 = v55;
    }

    while (v55 != v33);
    v38 = v108;
    v36 = v109;
    v41 = v111;
    v37 = v112;
  }

  v57 = vadd_f32(v47, v41);
  v58 = (&v114 + 2 * v33);
  *v58 = vadd_f32(v45, v38);
  *(v58 + 8) = v46 + v36;
  *(v58 + 12) = 0;
  *(v58 + 16) = v57;
  *(v58 + 24) = v48 + v37;
  *(v58 + 28) = 0;
  LODWORD(v58) = v53;
  if (v33)
  {
    v59 = v53;
    do
    {
      physx::Dy::FeatherstoneArticulation::propagateImpulseW((*(a1 + 544) + 96 * v33), *(a1 + 624) + 160 * v33 + 120, *(a1 + 512) + 76 * v33, &v114 + 4 * v33, &v97);
      v60 = *(v13 + 40 * v33 + 32);
      v58 = (&v114 + 2 * v60);
      *v58 = v97;
      *(v58 + 8) = v98;
      *(v58 + 12) = 0;
      *(v58 + 16) = *v100;
      *(v58 + 24) = *&v100[8];
      *(v58 + 28) = 0;
      LODWORD(v58) = v59 + 1;
      v117.i32[v59++] = v33;
      v33 = v60;
    }

    while (v60);
  }

  v61 = (a1 + 732);
  if (**(a1 + 664))
  {
    v114 = 0u;
    v115 = 0u;
    v57 = 0;
    v65 = 0.0;
    v39 = 0;
    v64 = 0.0;
    v62 = 0.0;
    v63 = 0.0;
  }

  else
  {
    v62 = *(&v114 + 1);
    v63 = *&v114;
    v64 = *(&v114 + 2);
    v65 = *(&v115 + 1);
    v39.i32[0] = v115;
    v57.i32[0] = DWORD2(v115);
  }

  v66 = -v62;
  v67 = -v65;
  v68 = *(a1 + 740);
  v69.i32[0] = *(a1 + 752);
  v70 = (-(v65 * *(a1 + 788)) - (v39.f32[0] * *(a1 + 776))) - (v57.f32[0] * *(a1 + 800));
  v71 = *(a1 + 744);
  v72 = *(a1 + 756);
  v73 = vadd_f32(vsub_f32(vsub_f32(vmul_n_f32(v71, -v62), vmul_n_f32(*v61, v63)), vmul_n_f32(v72, v64)), vsub_f32(vsub_f32(vmul_n_f32(*(a1 + 780), -v65), vmul_n_f32(*(a1 + 768), v39.f32[0])), vmul_n_f32(*(a1 + 792), v57.f32[0])));
  v74 = ((-(v62 * v69.f32[0]) - (v63 * v68)) - (v64 * *(a1 + 764))) + v70;
  v75 = ((vmuls_lane_f32(v67, *v61, 1) - (COERCE_FLOAT(*v61) * v39.f32[0])) - (v68 * v57.f32[0])) + ((-(v62 * *(a1 + 816)) - (v63 * *(a1 + 804))) - (v64 * *(a1 + 828)));
  v76 = vsub_f32(vsub_f32(vmul_n_f32(*(a1 + 820), v66), vmul_n_f32(*(a1 + 808), v63)), vmul_n_f32(*(a1 + 832), v64));
  v69.i32[1] = *(a1 + 764);
  v97 = v73;
  v98 = v74;
  v99 = 0;
  *v100 = v75;
  v77 = vadd_f32(vmls_lane_f32(vmls_lane_f32(vmul_n_f32(vzip2_s32(v71, v72), v67), vzip1_s32(v71, v72), v39, 0), v69, v57, 0), v76);
  *&v100[4] = v77;
  v101 = 0;
  if (v58 > v53)
  {
    v58 = v58;
    do
    {
      v78 = v58 - 1;
      v79 = *&v116[4 * v58];
      physx::Dy::FeatherstoneArticulation::propagateVelocityW(*(a1 + 624) + 160 * v79 + 120, (*(a1 + 480) + 112 * v79), (*(a1 + 496) + 36 * v79), *(a1 + 528) + 76 * v79, &v114 + 8 * v79, a10, &v97, &v94);
      v73 = v94;
      v97 = v94;
      v74 = v95;
      v75 = *v96;
      v98 = v95;
      v99 = 0;
      *v100 = *v96;
      v77 = *&v96[4];
      *&v100[4] = *&v96[4];
      v101 = 0;
      v58 = v78;
    }

    while (v78 > v53);
  }

  v80 = v92;
  if (v53 > v92)
  {
    v81 = v53;
    v82 = a10;
    do
    {
      v83 = v81 - 1;
      v84 = *&v116[4 * v81];
      physx::Dy::FeatherstoneArticulation::propagateVelocityW(*(a1 + 624) + 160 * v84 + 120, (*(a1 + 480) + 112 * v84), (*(a1 + 496) + 36 * v84), *(a1 + 528) + 76 * v84, &v114 + 8 * v84, a10, &v97, &v94);
      v81 = v83;
    }

    while (v83 > v92);
    v85 = v94;
    v86 = v95;
    v87 = *v96;
    v88 = *&v96[8];
    v73 = v97;
    v74 = v98;
    v75 = *v100;
    v77 = *&v100[4];
    v80 = v92;
    if (!v92)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v88 = v77.i32[1];
  v87 = vdup_lane_s32(v77, 0);
  *v87.i32 = v75;
  v86 = v74;
  v85 = v73;
  v82 = a10;
  if (v92)
  {
LABEL_31:
    v93 = v87;
    v89 = 4 * v80;
    do
    {
      v90 = *&v116[v89];
      physx::Dy::FeatherstoneArticulation::propagateVelocityW(*(a1 + 624) + 160 * v90 + 120, (*(a1 + 480) + 112 * v90), (*(a1 + 496) + 36 * v90), *(a1 + 528) + 76 * v90, &v114 + 8 * v90, v82, &v97, &v94);
      v89 -= 4;
    }

    while (v89);
    v73 = v94;
    v74 = v95;
    v75 = *v96;
    v77 = *&v96[4];
    v87 = v93;
  }

LABEL_34:
  *a8 = v75;
  *(a8 + 4) = v77;
  *(a8 + 16) = v73;
  *(a8 + 24) = v74;
  *a9 = v87;
  a9[1].i32[0] = v88;
  a9[2] = v85;
  a9[3].f32[0] = v86;
}

float32_t physx::Dy::FeatherstoneArticulation::getImpulseResponseInv(uint64_t a1, uint64_t a2, char a3, unsigned int a4, float32x2_t *a5, float32x2_t *a6, uint64_t a7)
{
  v12 = a4;
  v13 = *(a2 + 608);
  v14 = *(a2 + 632);
  bzero(a5, (32 * *(a2 + 616)));
  v15 = -a6[3].f32[0];
  v16 = &a5[4 * v12];
  v17 = vneg_f32(*a6);
  v16[1].f32[0] = -a6[1].f32[0];
  v16[1].i32[1] = 0;
  v18 = vneg_f32(a6[2]);
  *v16 = v17;
  v16[2] = v18;
  v16[3].f32[0] = v15;
  v16[3].i32[1] = 0;
  if (a4)
  {
    v19 = v12;
    do
    {
      physx::Dy::FeatherstoneArticulation::propagateImpulseW((*(a2 + 544) + 96 * v19), *(a2 + 624) + 160 * v19 + 120, *(a2 + 528) + 76 * v19, &a5[4 * v19], &v44);
      v19 = *(v13 + 40 * v19 + 32);
      v20 = &a5[4 * v19];
      *v20 = v44;
      v20[1].i32[0] = v45;
      v20[1].i32[1] = 0;
      v20[2] = v46;
      v20[3].i32[0] = v47;
      v20[3].i32[1] = 0;
    }

    while (v19);
  }

  v21 = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if ((a3 & 1) == 0)
  {
    v22 = a5->f32[0];
    v23 = a5->f32[1];
    v24 = -v23;
    v25 = a5[1].f32[0];
    v17.i32[0] = a5[2].i32[0];
    v26 = a5[2].f32[1];
    v27 = -v26;
    v21.i32[0] = a5[3].i32[0];
    v28.i32[0] = *(a2 + 740);
    v29 = *(a2 + 752);
    v30 = *(a2 + 764);
    v31 = ((-(v23 * v29) - (a5->f32[0] * v28.f32[0])) - (v25 * v30)) + ((-(v26 * *(a2 + 788)) - (v17.f32[0] * *(a2 + 776))) - (v21.f32[0] * *(a2 + 800)));
    v32 = *(a2 + 732);
    v33 = *(a2 + 744);
    v34 = *(a2 + 756);
    v35 = vadd_f32(vsub_f32(vsub_f32(vmul_n_f32(v33, -v23), vmul_n_f32(v32, a5->f32[0])), vmul_n_f32(v34, v25)), vsub_f32(vsub_f32(vmul_n_f32(*(a2 + 780), v27), vmul_n_f32(*(a2 + 768), v17.f32[0])), vmul_n_f32(*(a2 + 792), v21.f32[0])));
    v36 = ((vmuls_lane_f32(v27, v34, 1) - (v34.f32[0] * v17.f32[0])) - (v30 * v21.f32[0])) + ((-(v23 * *(a2 + 824)) - (a5->f32[0] * *(a2 + 812))) - (v25 * *(a2 + 836)));
    *a1 = v35;
    *(a1 + 8) = v31;
    v28.f32[1] = v29;
    v21 = vadd_f32(vmls_lane_f32(vmls_lane_f32(vmul_n_f32(vzip2_s32(v32, v33), v27), vzip1_s32(v32, v33), v17, 0), v28, v21, 0), vsub_f32(vsub_f32(vmul_n_f32(*(a2 + 816), v24), vmul_n_f32(*(a2 + 804), v22)), vmul_n_f32(*(a2 + 828), v25)));
    *(a1 + 16) = v21;
    *(a1 + 24) = v36;
  }

  v37 = *(v13 + 40 * v12 + 8);
  v38 = v37 - 1;
  if (v37 != 1)
  {
    do
    {
      v39 = __clz(__rbit32(v38));
      LODWORD(v40) = __clz(__rbit32(HIDWORD(v38))) + 32;
      if (v38)
      {
        v40 = v39;
      }

      else
      {
        v40 = v40;
      }

      physx::Dy::FeatherstoneArticulation::propagateVelocityW(*(a2 + 624) + 160 * v40 + 120, (*(a2 + 480) + 112 * v40), (*(a2 + 496) + 36 * v40), *(a2 + 528) + 76 * v40, &a5[4 * v40], a7 + 4 * *(v14 + 80 * v40 + 72), a1, &v44);
      *a1 = v44;
      *(a1 + 8) = v45;
      *(a1 + 12) = 0;
      *(a1 + 16) = v46;
      v21.i32[0] = v47;
      *(a1 + 24) = v47;
      *(a1 + 28) = 0;
      v38 &= v38 - 1;
    }

    while (v38);
  }

  return v21.f32[0];
}

uint64_t physx::Dy::FeatherstoneArticulation::getCoefficientMatrixWithLoopJoints(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, double a5, double a6, int8x16_t a7, double a8, int32x4_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v93[117] = *MEMORY[0x1E69E9840];
  if (*(a1 + 684) == 1)
  {
    v14 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v14, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyFeatherstoneInverseDynamic.cpp", 1211, "ArticulationHelper::getCoefficientMatrix() commonInit need to be called first to initialize data!", a11, a12, a13, a14);
  }

  else
  {
    physx::Dy::FeatherstoneArticulation::computeArticulatedSpatialInertia(a1, a1 + 176, a5, a6, a7, a8, a9);
    v19 = *(a1 + 616);
    v54 = *(a1 + 652);
    v55 = *(a4 + 80);
    bzero(v55, 4 * a3 * v54);
    v20 = **(a1 + 664);
    v21 = *(a4 + 104);
    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    v87 = 0;
    v86[0] = physx::PxcScratchAllocator::alloc(v21, 240 * v19, 0);
    v86[1] = v86[0] + (32 * v19);
    v22 = (v86[0] + (96 * v19));
    v86[2] = v86[0] + (v19 << 6);
    v86[3] = v22;
    v52 = v86[0];
    v53 = v21;
    v88 = v86[0] + (v19 << 7);
    v56 = *(a1 + 652);
    result = physx::PxcScratchAllocator::alloc(v21, 8 * v56, 0);
    if (a3)
    {
      v23 = result;
      v24 = 0;
      v25 = (4 * v56);
      v51 = result + v25;
      v50 = a3;
      v26 = 1.0 / *(a1 + 648);
      do
      {
        v58 = v24;
        v27 = a2 + 16 * v24;
        v28 = *(v27 + 8);
        bzero(v92, 0x3C0uLL);
        for (i = 0; i != 960; i += 80)
        {
          v30 = &v92[i];
          *(v30 + 11) = -8388609;
          *(v30 + 15) = 2139095039;
        }

        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = xmmword_1E30474D0;
        v35 = 0;
        if (*(v28 + 40))
        {
          v36 = *(v28 + 56);
          v34 = *v36;
          v35 = *(v36 + 16);
          v33 = *(v36 + 24);
        }

        v83 = v34;
        v84 = v35;
        v85 = v33;
        v37 = xmmword_1E30474D0;
        if (*(v28 + 48))
        {
          v38 = *(v28 + 64);
          v37 = *v38;
          v31 = *(v38 + 16);
          v32 = *(v38 + 24);
        }

        v80 = v37;
        v81 = v31;
        v82 = v32;
        v78 = 0;
        v79 = 0;
        LODWORD(v28) = (*(v28 + 16))(v92, &v78, 12, v75, *(v28 + 32), &v83, &v80, (*(v28 + 10) >> 9) & 1, v77, v76);
        v39 = *v27;
        v40 = *(v27 + 4);
        bzero(v23, v25);
        if (v28)
        {
          v42 = v39 != 0x80000000 && v40 != 0x80000000;
          v28 = v28;
          v43 = v93;
          do
          {
            if (v42)
            {
              v69 = v43[-4];
              v70 = v43[-3].i32[0];
              v71 = 0;
              v72 = v43[-2];
              v73 = v43[-1].i32[0];
              v74 = 0;
              v63 = *v43;
              v64 = v43[1].i32[0];
              v65 = 0;
              v66 = v43[2];
              v67 = v43[3].i32[0];
              v68 = 0;
              if (v39 <= v40)
              {
                physx::Dy::FeatherstoneArticulation::getImpulseSelfResponseInv(a1, v20 & 1, v39, v40, v22, &v69, &v63, v62, v61, v23);
              }

              else
              {
                physx::Dy::FeatherstoneArticulation::getImpulseSelfResponseInv(a1, v20 & 1, v40, v39, v22, &v63, &v69, v61, v62, v23);
              }
            }

            else
            {
              if (v39 == 0x80000000)
              {
                v69 = *v43;
                v70 = v43[1].i32[0];
                v71 = 0;
                v72 = v43[2];
                v73 = v43[3].i32[0];
                v74 = 0;
                v44 = &v60;
                v45 = v20 & 1;
                v46 = a1;
                v47 = v40;
              }

              else
              {
                v69 = v43[-4];
                v70 = v43[-3].i32[0];
                v71 = 0;
                v72 = v43[-2];
                v73 = v43[-1].i32[0];
                v74 = 0;
                v44 = &v59;
                v45 = v20 & 1;
                v46 = a1;
                v47 = v39;
              }

              physx::Dy::FeatherstoneArticulation::getImpulseResponseInv(v44, v46, v45, v47, v22, &v69, v23);
            }

            v43 += 10;
            --v28;
          }

          while (v28);
        }

        v48 = v23;
        v49 = v56;
        if (v56)
        {
          do
          {
            *(v48 + v25) = v26 * *v48;
            ++v48;
            --v49;
          }

          while (v49);
        }

        physx::Dy::FeatherstoneArticulation::computeSpatialInertia(a1, a1 + 176);
        v87 = 0;
        *&v89 = 0;
        *(&v89 + 1) = v51;
        *&v90 = &v55[4 * (v54 * v58)];
        v69 = 0;
        v70 = 0;
        if (v20)
        {
          physx::Dy::FeatherstoneArticulation::inverseDynamic(a1, a1 + 176, &v69, v86, 0);
        }

        else
        {
          physx::Dy::FeatherstoneArticulation::inverseDynamicFloatingBase(a1, a1 + 176, &v69, v86, 0);
        }

        physx::PxcScratchAllocator::free(v53, v23);
        result = physx::PxcScratchAllocator::free(v53, v52);
        v24 = v58 + 1;
      }

      while (v58 + 1 != v50);
    }
  }

  return result;
}

uint64_t physx::Dy::FeatherstoneArticulation::getLambda(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, uint64_t a5, float *a6, float32x2_t *a7, int a8)
{
  v9 = 0;
  v187 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 648);
  v125 = *(a1 + 652);
  v11 = *(a1 + 616);
  v150 = &unk_1F5D1DD28;
  v151[0] = &unk_1F5D1DD70;
  memset(&v151[1], 0, 24);
  v152 = 0;
  do
  {
    v12 = &v151[v9 - 1];
    v12[6] = &unk_1F5D1DD70;
    v12[7] = 0;
    v12[8] = 0;
    v12[9] = 0;
    *(v12 + 20) = 0;
    v9 += 5;
  }

  while (v9 != 10);
  v154 = 0;
  v13 = a4[13];
  v14 = (32 * v11);
  v15 = physx::PxcScratchAllocator::alloc(v13, 32 * v11, 1);
  v121 = v14;
  v16 = physx::PxcScratchAllocator::alloc(v13, v14, 1);
  __b = physx::PxcScratchAllocator::alloc(v13, 8 * a3, 1);
  v17 = a4[11];
  v120 = a4[10];
  memset(v149, 0, 32);
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  memset(v145, 0, sizeof(v145));
  HIDWORD(v146) = 2139095039;
  DWORD1(v146) = -8388609;
  HIDWORD(v147) = 1065353216;
  v143 = v15;
  v144 = v16;
  v142[0] = 0;
  v18 = physx::PxcScratchAllocator::alloc(v13, 48 * a3, 1);
  v19 = a4;
  v20 = v18;
  v123 = v13;
  v21 = v13;
  v22 = v19;
  v23 = physx::PxcScratchAllocator::alloc(v21, 48 * *(a1 + 616) - 1, 1);
  v141[0] = a1;
  v140 = 0;
  v122 = v23;
  v132 = v15;
  v24 = v15;
  v25 = v16;
  physx::Dy::FeatherstoneArticulation::computeUnconstrainedVelocities(v141, v10, &v150, v23, &v140, a7, 0, v24, v16);
  v28 = a3;
  v29.i64[0] = 0;
  v138 = 0u;
  v137 = 0u;
  v139 = 0u;
  v30 = *(a1 + 336);
  v136[0] = *(a1 + 320);
  v136[1] = v30;
  v31 = *(a1 + 368);
  v136[2] = *(a1 + 352);
  v136[3] = v31;
  v32 = *(a1 + 208);
  *(&v137 + 1) = *(a1 + 224);
  *&v138 = v32;
  v33 = *(a1 + 256);
  *(&v138 + 1) = *(a1 + 272);
  *&v139 = v33;
  v136[4] = *(a1 + 672);
  v34 = a5;
  v124 = v25;
  if (a3)
  {
    v118 = v22;
    v35 = 0;
    v36 = *(a1 + 648);
    __asm { FMOV            V0.4S, #1.0 }

    v130 = _Q0;
    while (1)
    {
      v42 = (a2 + 16 * v35);
      v43 = *(v42 + 1);
      v44 = v20 + 48 * v35;
      v165 = v44;
      v177 = *v43;
      v179 = *(*(a1 + 32) + 232) + 32 * *(v43 + 18);
      v45 = *(v43 + 5);
      v180 = HIBYTE(v45) & 1;
      v181 = (v45 & 0x80) != 0;
      v182 = (v45 & 0x20) != 0;
      v183 = (v45 & 0x200) != 0;
      v178 = *(v43 + 19);
      bzero(v186, 0x3C0uLL);
      for (i = 0; i != 960; i += 80)
      {
        v47 = &v186[i];
        *(v47 + 11) = -8388609;
        *(v47 + 15) = 2139095039;
      }

      v164 = v130;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = xmmword_1E30474D0;
      v52 = 0;
      if (v43[5])
      {
        v53 = v43[7];
        v51 = *v53;
        v52 = *(v53 + 16);
        v50 = *(v53 + 24);
      }

      v161 = v51;
      v162 = v52;
      v163 = v50;
      v54 = xmmword_1E30474D0;
      if (v43[6])
      {
        v55 = v43[8];
        v54 = *v55;
        v48 = *(v55 + 16);
        v49 = *(v55 + 24);
      }

      *v160 = v54;
      *&v160[16] = v48;
      *&v160[24] = v49;
      v158 = 0;
      v159 = 0;
      v56 = (v43[2])(v186, &v158, 12, v155, v43[4], &v161, v160, (*(v43 + 5) >> 9) & 1, v157, v156);
      v184 = v158;
      v185 = v159;
      v170 = v161;
      *&v57 = v162;
      *(&v57 + 1) = __PAIR64__(*v160, v163);
      v171 = v57;
      v172 = *&v160[4];
      v173 = *&v160[20];
      v176 = v56;
      v175 = v186;
      v58 = *v42;
      v59 = v42[1];
      if (*v42 != 0x80000000 && v59 != 0x80000000)
      {
        break;
      }

      if (v58 == 0x80000000)
      {
        *(v44 + 16) = -1;
        *(v44 + 18) = v59;
        v60 = 0x800000002;
        *v44 = v149;
        v61 = a1;
        goto LABEL_18;
      }

      if (v59 == 0x80000000)
      {
        *(v44 + 16) = v58;
        *(v44 + 18) = -1;
        v60 = 0x200000008;
        *v44 = a1;
        v61 = v149;
        goto LABEL_18;
      }

LABEL_19:
      v166 = *v44;
      v167 = *(v44 + 8);
      v168 = v145;
      v169 = v145;
      physx::Dy::ConstraintHelper::setupSolverConstraint(&v164, &v150, v132, v36, 1.0 / v36);
      if (++v35 == a3)
      {
        memset_pattern16(__b, &unk_1E3113FF0, 4 * a3);
        v34 = a5;
        v22 = v118;
        v28 = a3;
        goto LABEL_21;
      }
    }

    *(v44 + 16) = v58;
    *(v44 + 18) = v59;
    v60 = 0x800000008;
    v61 = a1;
    *v44 = a1;
LABEL_18:
    *(v44 + 8) = v61;
    v174 = v60;
    goto LABEL_19;
  }

LABEL_21:
  if (a8)
  {
    v62 = 0;
    v63 = xmmword_1E3049640;
    v64 = xmmword_1E3049620;
    v65 = v28;
    do
    {
      v133 = v62;
      if (v28)
      {
        v67 = 0;
        do
        {
          v68 = *(v20 + 48 * v67 + 32);
          v69 = *(v68 + 1);
          if (*(v68 + 1))
          {
            v70 = 0;
            v29 = vdupq_n_s64(v69 - 1);
            do
            {
              v71 = vdupq_n_s64(v70);
              v72 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v71, v64)));
              if (vuzp1_s16(v72, *v29.i8).u8[0])
              {
                *(v68 + 136) = 0;
              }

              if (vuzp1_s16(v72, *&v29).i8[2])
              {
                *(v68 + 296) = 0;
              }

              v73 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v71, v63)));
              v27 = COERCE_DOUBLE(vuzp1_s16(*v29.i8, v73));
              if (BYTE4(v27))
              {
                *(v68 + 456) = 0;
              }

              v26 = COERCE_DOUBLE(vuzp1_s16(*v29.i8, v73));
              if (BYTE6(v26))
              {
                *(v68 + 616) = 0;
              }

              v70 += 4;
              v68 += 640;
            }

            while (((v69 + 3) & 0x1FC) != v70);
          }

          ++v67;
        }

        while (v67 != v65);
      }

      for (j = 0; j != 4; ++j)
      {
        while (1)
        {
          v75 = v20;
          v76 = v65;
          if (v28)
          {
            break;
          }

          ++j;
          v28 = a3;
          if (j == 4)
          {
            physx::Dy::PxcFsFlushVelocity(a1, v25, *v29.i64, v26, v27);
            goto LABEL_67;
          }
        }

        do
        {
          v29.i64[0] = physx::Dy::solveExt1D(v75, v142).n128_u64[0];
          v75 += 48;
          --v76;
        }

        while (v76);
        v28 = a3;
      }

      v77 = 0;
      do
      {
        v78 = *(v20 + 48 * v77 + 32);
        if (v78)
        {
          v79 = v78[1];
          if (v78[1])
          {
            v81 = *v78;
            v80 = (v78 + 76);
            if (v81 == 4)
            {
              v82 = 160;
            }

            else
            {
              v82 = 96;
            }

            do
            {
              v29.i32[0] = *v80;
              *(v80 - 4) = *v80;
              v80 = (v80 + v82);
              --v79;
            }

            while (v79);
          }
        }

        ++v77;
      }

      while (v77 != v65);
      physx::Dy::PxcFsFlushVelocity(a1, v25, *v29.i64, v26, v27);
      v83 = v20;
      v84 = v65;
      do
      {
        physx::Dy::solveExt1D(v83, v142);
        physx::Dy::writeBack1D(v83);
        v83 += 48;
        --v84;
      }

      while (v84);
      v85 = (*(*(a1 + 32) + 232) + 32 * *(*(a2 + 8) + 72));
      LOBYTE(v86) = 1;
      v87 = v17;
      v88 = __b;
      v89 = v65;
      do
      {
        v66 = 1.0 / v10;
        v90 = v10 * sqrtf((((v66 * v85[1]) * (v66 * v85[1])) + ((v66 * *v85) * (v66 * *v85))) + ((v66 * v85[2]) * (v66 * v85[2])));
        *v87++ = v90;
        v86 = (vabds_f32(*v88, v90) <= 0.00001) & v86;
        *v88++ = v90;
        --v89;
      }

      while (v89);
      if (v86)
      {
        break;
      }

      v91 = v34;
      v92 = v22[6];
      bzero(v92, (4 * v125));
      v93 = 0;
      do
      {
        while (!v125)
        {
          if (++v93 == v65)
          {
            goto LABEL_65;
          }
        }

        v94 = (v120 + 4 * (v125 * v93));
        v95 = v92;
        v96 = v125;
        do
        {
          v97 = *v94++;
          *v95 = *v95 + (v97 * v17[v93]);
          ++v95;
          --v96;
        }

        while (v96);
        ++v93;
      }

      while (v93 != v65);
      v98 = a6;
      v99 = v125;
      do
      {
        v100 = *v98++;
        *v92 = v100 - *v92;
        ++v92;
        --v99;
      }

      while (v99);
LABEL_65:
      v186[0] = 119;
      v101 = a1;
      v34 = v91;
      (*(*a1 + 72))(a1, v91, v186);
      v186[0] = 8;
      (*(*v101 + 72))(v101, v22, v186);
      bzero(*(v101 + 432), (32 * *(v101 + 616)));
      bzero(*(v101 + 240), (4 * *(v101 + 652)));
      *(a1 + 685) = 0;
      physx::Dy::FeatherstoneArticulation::computeLinkVelocities(v101, v101 + 176, v136);
      physx::Dy::FeatherstoneArticulation::computeZ(v102, v103, v104, v105, v106, v107, v108, v109, v101, v101 + 176, a7, v136);
      *&v111 = physx::Dy::FeatherstoneArticulation::computeArticulatedSpatialZ(v110, v101, v101 + 176, v136);
      physx::Dy::FeatherstoneArticulation::computeLinkAcceleration(v101, v101 + 176, v136, v111, v112, v113, v114, v115, v116);
      bzero(*(a1 + 368), v121);
      v62 = v133 + 1;
      v28 = a3;
      v25 = v124;
      v63 = xmmword_1E3049640;
      v64 = xmmword_1E3049620;
    }

    while (v133 + 1 != a8);
  }

  else
  {
LABEL_67:
    v86 = 1;
  }

  physx::PxcScratchAllocator::free(v123, v122);
  physx::PxcScratchAllocator::free(v123, __b);
  physx::PxcScratchAllocator::free(v123, v132);
  physx::PxcScratchAllocator::free(v123, v25);
  physx::PxcScratchAllocator::free(v123, v20);
  v154 = 1 - v154;
  physx::Dy::BlockBasedAllocator::release(v151);
  physx::Dy::BlockBasedAllocator::release(&v153[5 * v154]);
  v186[0] = 119;
  (*(*a1 + 72))(a1, v34, v186);
  physx::Dy::ArticulationBlockAllocator::~ArticulationBlockAllocator(&v150);
  return v86;
}

uint64_t physx::Dy::computeHi(uint64_t a1, unsigned int a2, uint64_t a3, float32x2_t *a4)
{
  result = a2;
  v6 = *(a1 + 432);
  v7 = *(a1 + 456);
  v8 = v7 + 80 * a2;
  v9 = *(a1 + 476);
  v10 = *(v8 + 76);
  if (*(v8 + 76))
  {
    v11 = 0;
    v12 = *(v8 + 72) + *(v8 + 72) * v9;
    v13 = *(a1 + 352) + 76 * a2 + 12;
    do
    {
      v14 = v13;
      v15 = v12;
      v16 = v10;
      do
      {
        v17 = &a4[4 * v11];
        *(a3 + 4 * v15++) = (((v14[1] * v17[1]) + (*v14 * *v17)) + (v14[2] * v17[2])) + (((*(v14 - 2) * v17[5]) + (*(v14 - 3) * v17[4])) + (*(v14 - 1) * v17[6]));
        v14 += 6;
        --v16;
      }

      while (v16);
      ++v11;
      v12 += v9;
    }

    while (v11 != v10);
  }

  v18 = *(v6 + 40 * result + 32);
  if (v18)
  {
    v19 = *(a1 + 448);
    if (v10 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v10;
    }

    v21 = *(a1 + 352);
    LOBYTE(v22) = v10;
    do
    {
      v23 = result;
      result = v18;
      if (v22)
      {
        v24 = v19 + 160 * v23;
        v25 = a4 + 2;
        v26 = v20;
        do
        {
          v27 = v25[-2].f32[0];
          v28 = *(v24 + 120);
          v29 = v25[1].f32[0];
          v25[-1].i32[1] = 0;
          v30 = *(v24 + 124);
          v31.i32[0] = vdup_lane_s32(v30, 1).u32[0];
          v31.f32[1] = v28;
          v32 = *(v25 - 12);
          v33.i32[0] = vdup_lane_s32(v32, 1).u32[0];
          v33.f32[1] = v27;
          *v25 = vadd_f32(vmla_f32(vmul_f32(v32, vneg_f32(v31)), v33, v30), *v25);
          v25[1].f32[0] = ((v28 * v32.f32[0]) - (v30.f32[0] * v27)) + v29;
          v25[1].i32[1] = 0;
          v25 += 4;
          --v26;
        }

        while (v26);
        v22 = v10;
      }

      else
      {
        v22 = 0;
      }

      v34 = v7 + 80 * result;
      v35 = *(v34 + 76);
      if (*(v34 + 76))
      {
        v36 = 0;
        v37 = *(v34 + 72);
        v38 = v37;
        do
        {
          if (v22)
          {
            v40 = v38 + v9 * *(v8 + 72);
            v41 = &a4[2];
            v42 = v22;
            do
            {
              v39 = (v21 + 76 * result + 24 * v36);
              *(a3 + 4 * v40) = (((v39[4] * *(v41 - 3)) + (v39[3] * *(v41 - 4))) + (v39[5] * *(v41 - 2))) + (((v39[1] * v41[1]) + (*v39 * *v41)) + (v39[2] * v41[2]));
              v40 += v9;
              v41 += 8;
              --v42;
            }

            while (v42);
          }

          ++v36;
          ++v38;
        }

        while (v36 != v35);
        v43 = 0;
        v44 = v9 * v37;
        do
        {
          if (v22)
          {
            v45 = *(v8 + 72);
            v46 = v45 + v44;
            v47 = v37 + v9 * v45;
            v48 = v22;
            do
            {
              *(a3 + 4 * v46++) = *(a3 + 4 * v47);
              v47 += v9;
              --v48;
            }

            while (v48);
          }

          ++v43;
          v44 += v9;
          ++v37;
        }

        while (v43 != v35);
      }

      v18 = *(v6 + 40 * result + 32);
    }

    while (v18);
  }

  return result;
}

uint64_t physx::Dy::FeatherstoneArticulation::getGeneralizedMassMatrixCRB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v292 = *MEMORY[0x1E69E9840];
  if (*(a1 + 684) == 1)
  {
    v9 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v9, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyFeatherstoneInverseDynamic.cpp", 2004, "ArticulationHelper::getGeneralizedMassMatrix() commonInit need to be called first to initialize data!", a6, a7, a8, a9);
  }

  else
  {
    v13 = **(a1 + 664);
    v14 = *(a1 + 652);
    v15 = *(a2 + 16);
    bzero(v15, (4 * v14 * v14));
    v16 = *(a1 + 616);
    v17 = *(a2 + 104);
    v249 = *(a1 + 608);
    if (v13)
    {
      v189 = physx::PxcScratchAllocator::alloc(v17, 112 * v16, 0);
      physx::Dy::FeatherstoneArticulation::initCompositeSpatialInertia(*(a1 + 608), *(a1 + 616), v189);
      v190 = (v16 - 1);
      if (v190)
      {
        v191 = 76 * v190 + 12;
        do
        {
          v192 = v189 + 112 * v190;
          v262 = *v192;
          v263 = *(v192 + 8);
          v264 = *(v192 + 16);
          v265 = *(v192 + 24);
          v266 = *(v192 + 32);
          v267 = *(v192 + 40);
          v268 = *(v192 + 48);
          v269 = *(v192 + 56);
          v270 = *(v192 + 64);
          v271 = *(v192 + 72);
          v272 = *(v192 + 80);
          v273 = *(v192 + 88);
          v274 = *(v192 + 96);
          v275 = *(v192 + 104);
          v276 = *(v192 + 108);
          v193 = *(a1 + 624) + 160 * v190;
          v194 = *(v193 + 120);
          v256[0].i32[0] = 0;
          v195 = *(v193 + 124);
          v256[0].i32[1] = v195.i32[1];
          v256[1] = vneg_f32(v195);
          v257 = 0;
          v258 = v194;
          v259 = v195.i32[0];
          v260 = -v194;
          v261 = 0;
          physx::Dy::FeatherstoneArticulation::translateInertia(v256, &v262);
          v196 = (v189 + 112 * *(v249 + 40 * v190 + 32));
          v197 = v196[1];
          *v196 = vadd_f32(v262, *v196);
          v196[1] = vadd_f32(v263, v197);
          v198 = v196[3];
          v196[2] = vadd_f32(v264, v196[2]);
          v196[3] = vadd_f32(v265, v198);
          v199 = v196[5];
          v196[4] = vadd_f32(v266, v196[4]);
          v196[5] = vadd_f32(v267, v199);
          v200 = v196[7];
          v196[6] = vadd_f32(v268, v196[6]);
          v196[7] = vadd_f32(v269, v200);
          v201 = v196[9];
          v196[8] = vadd_f32(v270, v196[8]);
          v196[9] = vadd_f32(v271, v201);
          v202 = v196[11];
          v196[10] = vadd_f32(v272, v196[10]);
          v196[11] = vadd_f32(v273, v202);
          v196[12] = vadd_f32(v274, v196[12]);
          v196[13].f32[0] = v275 + v196[13].f32[0];
          v203 = *(*(a1 + 632) + 80 * v190 + 76);
          if (*(*(a1 + 632) + 80 * v190 + 76))
          {
            v204 = *(v192 + 32);
            v255 = *(v192 + 44);
            v205 = *(v192 + 56);
            v206 = *(v192 + 68);
            v207 = *(v192 + 80);
            v208 = *(v192 + 92);
            v209 = *(v192 + 72);
            v210 = *(v192 + 84);
            v211 = *(v192 + 96);
            v212 = *(v192 + 104);
            v213 = *(v192 + 8);
            v214 = *(v192 + 24);
            v215 = *(v192 + 36);
            v216 = *(v192 + 48);
            v217 = *(v192 + 60);
            v218 = *v192;
            v219 = *(v192 + 12);
            v225.f32[0] = v213;
            v220 = vzip1_s32(*v192, v219);
            v221 = *(v192 + 20);
            v222 = vzip2_s32(*v192, v219);
            v223 = (*(a1 + 528) + v191);
            v224 = &v279;
            v225.f32[1] = v221;
            do
            {
              v226 = *(v223 - 3);
              v227 = *(v223 - 2);
              v228 = *(v223 - 1);
              v229 = *v223;
              v230 = v223[1];
              v231 = v223[2];
              v232 = (((v213 * v226) + (v221 * v227)) + (v204 * v228)) + (((v255 * *v223) + (v205 * v230)) + (v206 * v231));
              v233 = (((v207 * v226) + (v208 * v227)) + (v212 * v228)) + (((v214.f32[1] * v230) + (v214.f32[0] * *v223)) + (v204 * v231));
              v224[-2] = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(v218, v226), vmul_n_f32(v219, v227)), vmul_n_f32(v214, v228)), vadd_f32(vadd_f32(vmul_n_f32(v215, *v223), vmul_n_f32(v216, v230)), vmul_n_f32(v217, v231)));
              v224[-1].f32[0] = v232;
              *v224 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(v209, v226), vmul_n_f32(v210, v227)), vmul_n_f32(v211, v228)), vmla_n_f32(vmla_n_f32(vmul_n_f32(v222, v230), v220, v229), v225, v231));
              v224[1].f32[0] = v233;
              v223 += 6;
              v224 += 4;
              --v203;
            }

            while (v203);
          }

          physx::Dy::computeHi(a1 + 176, v190, v15, &v277);
          v191 -= 76;
          --v190;
        }

        while (v190);
      }

      v187 = v17;
      v188 = v189;
    }

    else
    {
      v246 = *(a1 + 624);
      v18 = physx::PxcScratchAllocator::alloc(v17, 112 * v16, 0);
      v234 = v14;
      v235 = v17;
      v19 = physx::PxcScratchAllocator::alloc(v17, 32 * v14, 0);
      physx::Dy::FeatherstoneArticulation::initCompositeSpatialInertia(*(a1 + 608), *(a1 + 616), v18);
      v20 = (v16 - 1);
      if (v16 != 1)
      {
        v21 = 76 * v20 + 12;
        v252 = v19 + 16;
        do
        {
          v22 = &v18[28 * v20];
          v277 = *v22;
          v278 = *(v22 + 2);
          v279 = *(v22 + 4);
          v280 = *(v22 + 6);
          v281 = *(v22 + 8);
          v282 = *(v22 + 10);
          v283 = *(v22 + 12);
          v284 = *(v22 + 14);
          v285 = *(v22 + 16);
          v286 = *(v22 + 18);
          v287 = *(v22 + 20);
          v288 = *(v22 + 22);
          v289 = *(v22 + 24);
          v290 = v22[26];
          v291 = *(v22 + 27);
          v23 = *(a1 + 624) + 160 * v20;
          v24 = *(v23 + 120);
          v262.i32[0] = 0;
          v25 = *(v23 + 124);
          v262.i32[1] = v25.i32[1];
          v263 = vneg_f32(v25);
          v264.i32[0] = 0;
          v264.f32[1] = v24;
          v265.i32[0] = v25.i32[0];
          v265.f32[1] = -v24;
          v266.i32[0] = 0;
          physx::Dy::FeatherstoneArticulation::translateInertia(&v262, &v277);
          v26 = &v18[28 * *(v249 + 40 * v20 + 32)];
          v27 = v26[1];
          *v26 = vadd_f32(v277, *v26);
          v26[1] = vadd_f32(v278, v27);
          v28 = v26[3];
          v26[2] = vadd_f32(v279, v26[2]);
          v26[3] = vadd_f32(v280, v28);
          v29 = v26[5];
          v26[4] = vadd_f32(v281, v26[4]);
          v26[5] = vadd_f32(v282, v29);
          v30 = v26[7];
          v26[6] = vadd_f32(v283, v26[6]);
          v26[7] = vadd_f32(v284, v30);
          v31 = v26[9];
          v26[8] = vadd_f32(v285, v26[8]);
          v26[9] = vadd_f32(v286, v31);
          v32 = v26[11];
          v26[10] = vadd_f32(v287, v26[10]);
          v26[11] = vadd_f32(v288, v32);
          v26[12] = vadd_f32(v289, v26[12]);
          v26[13].f32[0] = v290 + v26[13].f32[0];
          v33 = *(a1 + 632) + 80 * v20;
          v34 = *(v33 + 72);
          v35 = *(v33 + 76);
          if (*(v33 + 76))
          {
            v36 = (*(a1 + 528) + v21);
            v37 = (v252 + 32 * v34);
            do
            {
              v38.f32[0] = v22[2];
              v39 = *(v36 - 3);
              v40 = *(v36 - 2);
              v41 = v22[5];
              v42 = v22[8];
              v44 = *(v36 - 1);
              v43 = *v36;
              v46 = v36[1];
              v45 = v36[2];
              v47 = (((v39 * v38.f32[0]) + (v40 * v41)) + (v44 * v42)) + (((*v36 * v22[11]) + (v46 * v22[14])) + (v45 * v22[17]));
              v48 = *v22;
              v49 = *(v22 + 3);
              v50 = *(v22 + 6);
              v51 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*v22, v39), vmul_n_f32(v49, v40)), vmul_n_f32(v50, v44)), vadd_f32(vadd_f32(vmul_n_f32(*(v22 + 9), *v36), vmul_n_f32(*(v22 + 12), v46)), vmul_n_f32(*(v22 + 15), v45)));
              v52 = ((vmuls_lane_f32(v46, v50, 1) + (v50.f32[0] * *v36)) + (v42 * v45)) + (((v39 * v22[20]) + (v40 * v22[23])) + (v44 * v22[26]));
              v37[-1].f32[0] = v47;
              v53 = vadd_f32(vadd_f32(vmul_n_f32(*(v22 + 18), v39), vmul_n_f32(*(v22 + 21), v40)), vmul_n_f32(*(v22 + 24), v44));
              v38.f32[1] = v41;
              v37[-2] = v51;
              *v37 = vadd_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(vzip2_s32(v48, v49), v46), vzip1_s32(v48, v49), v43), v38, v45), v53);
              v37[1].f32[0] = v52;
              v36 += 6;
              v37 += 4;
              --v35;
            }

            while (v35);
          }

          v54 = physx::Dy::computeHi(a1 + 176, v20, v15, (v19 + 32 * v34));
          v55 = *(v33 + 76);
          if (*(v33 + 76))
          {
            v56 = (v252 + 32 * v34);
            do
            {
              v57 = v56[-2].f32[0];
              v58 = *(v246 + 160 * v54 + 96);
              v59 = v56[1].f32[0];
              v56[-1].i32[1] = 0;
              v60 = *(v246 + 160 * v54 + 100);
              v61.i32[0] = vdup_lane_s32(v60, 1).u32[0];
              v61.f32[1] = v58;
              v62 = *(v56 - 12);
              v63.i32[0] = vdup_lane_s32(v62, 1).u32[0];
              v63.f32[1] = v57;
              *v56 = vadd_f32(vmla_f32(vmul_f32(v62, vneg_f32(v61)), v63, v60), *v56);
              v56[1].f32[0] = ((v58 * v62.f32[0]) - (v60.f32[0] * v57)) + v59;
              v56[1].i32[1] = 0;
              v56 += 4;
              --v55;
            }

            while (v55);
          }

          v21 -= 76;
          --v20;
        }

        while (v20);
      }

      v65 = *v18;
      v64 = v18[1];
      v66 = v18[2];
      v67 = v18[3];
      v69 = v18[4];
      v68 = v18[5];
      v253 = v18[8];
      v70 = v18[19] + v18[21];
      v71 = v18[23] + v18[25];
      v72 = (v18[18] + v18[18]) * 0.5;
      v73 = v70 * 0.5;
      v74 = (v18[20] + v18[24]) * 0.5;
      v75 = (v18[22] + v18[22]) * 0.5;
      v76 = (v18[26] + v18[26]) * 0.5;
      v77 = (v18[10] + v18[12]) * 0.5;
      v241 = (v18[13] + v18[13]) * 0.5;
      v78 = (v18[14] + v18[16]) * 0.5;
      v244 = (v18[17] + v18[17]) * 0.5;
      v247 = (v18[11] + v18[15]) * 0.5;
      v79 = (v75 * v76) - ((v71 * 0.5) * (v71 * 0.5));
      v80 = ((v71 * 0.5) * v74) - ((v70 * 0.5) * v76);
      v81 = ((v70 * 0.5) * (v71 * 0.5)) - (v75 * v74);
      v82 = (((v70 * 0.5) * v80) + (v79 * v72)) + (v81 * v74);
      v83 = 0.0;
      v250 = 1.0;
      v85 = v18[6];
      v84 = v18[7];
      v86 = 1.0;
      v87 = 0.0;
      v88 = 0.0;
      v89 = 1.0;
      v90 = 0.0;
      v91 = 1.0;
      if (v82 != 0.0)
      {
        v92 = 1.0 / v82;
        v86 = v79 * v92;
        v87 = v80 * v92;
        v88 = v81 * v92;
        v89 = ((v76 * v72) - (v74 * v74)) * v92;
        v90 = ((v72 * -(v71 * 0.5)) + (v74 * v73)) * v92;
        v91 = ((v73 * -(v70 * 0.5)) + (v72 * v75)) * v92;
      }

      v93 = (-(v67 * v87) - (v65 * v86)) - (v85 * v88);
      v94 = (-(v69 * v87) - (v64 * v86)) - (v84 * v88);
      v95 = (-(v68 * v87) - (v66 * v86)) - (v253 * v88);
      v238 = v89;
      v96 = (-(v67 * v89) - (v65 * v87)) - (v85 * v90);
      v97 = (-(v69 * v89) - (v64 * v87)) - (v84 * v90);
      v98 = (-(v68 * v89) - (v66 * v87)) - (v253 * v90);
      v99 = (-(v67 * v90) - (v65 * v88)) - (v85 * v91);
      v100 = (-(v69 * v90) - (v64 * v88)) - (v84 * v91);
      v101 = (-(v68 * v90) - (v66 * v88)) - (v253 * v91);
      v102 = (v65 * v93) + (v67 * v96);
      v103 = (v65 * v94) + (v67 * v97);
      v104 = ((v65 * v95) + (v67 * v98)) + (v85 * v101);
      v105 = (v64 * v93) + (v69 * v96);
      v106 = ((v64 * v94) + (v69 * v97)) + (v84 * v100);
      v107 = ((v64 * v95) + (v69 * v98)) + (v84 * v101);
      v108 = (v66 * v93) + (v68 * v96);
      v109 = (v66 * v94) + (v68 * v97);
      v110 = ((v66 * v95) + (v68 * v98)) + (v253 * v101);
      v111 = ((v18[9] + v18[9]) * 0.5) + (v102 + (v85 * v99));
      v112 = v77 + (v103 + (v85 * v100));
      v113 = v247 + v104;
      v114 = v77 + (v105 + (v84 * v99));
      v115 = v241 + v106;
      v116 = v78 + v107;
      v117 = v247 + (v108 + (v253 * v99));
      v118 = v78 + (v109 + (v253 * v100));
      v119 = v244 + v110;
      v120 = ((v241 + v106) * (v244 + v110)) - ((v78 + v107) * v118);
      v121 = (v116 * v117) - (v114 * (v244 + v110));
      v122 = (v114 * v118) - (v115 * v117);
      v123 = ((v112 * v121) + (v120 * v111)) + (v122 * v113);
      v124 = 0.0;
      v125 = 1.0;
      v126 = 0.0;
      v127 = 1.0;
      if (v123 != 0.0)
      {
        v250 = v120 * (1.0 / v123);
        v83 = v121 * (1.0 / v123);
        v124 = v122 * (1.0 / v123);
        v125 = ((v119 * v111) - (v117 * v113)) * (1.0 / v123);
        v126 = ((v117 * v112) - (v118 * v111)) * (1.0 / v123);
        v127 = ((v111 * v115) - (v112 * v114)) * (1.0 / v123);
      }

      if (v234)
      {
        v128 = 0;
        v129 = 0;
        *&v130 = ((v96 * v250) + (v97 * v83)) + (v98 * v124);
        v248 = v86;
        v131 = ((v96 * v124) + (v97 * v126)) + (v98 * v127);
        v132 = ((v93 * v83) + (v94 * v125)) + (v95 * v126);
        v133 = ((v99 * v250) + (v100 * v83)) + (v101 * v124);
        v242 = v90;
        v134 = ((v99 * v83) + (v100 * v125)) + (v101 * v126);
        v135 = ((v93 * v124) + (v94 * v126)) + (v95 * v127);
        v136 = ((v99 * v124) + (v100 * v126)) + (v101 * v127);
        v137 = ((v96 * v83) + (v97 * v125)) + (v98 * v126);
        v138 = ((v93 * v250) + (v94 * v83)) + (v95 * v124);
        v254 = v138;
        v139 = ((v93 * v138) + (v94 * v132)) + (v95 * v135);
        v140 = ((v96 * v138) + (v97 * v132)) + (v98 * v135);
        v141 = ((v99 * v138) + (v100 * v132)) + (v101 * v135);
        v237 = v91;
        v142 = v83;
        v143 = __PAIR64__(LODWORD(v126), LODWORD(v250));
        v144 = ((v93 * *&v130) + (v94 * v137)) + (v95 * v131);
        v145 = ((v96 * *&v130) + (v97 * v137)) + (v98 * v131);
        v146 = ((v99 * *&v130) + (v100 * v137)) + (v101 * v131);
        v147 = (v93 * v133) + (v94 * v134);
        v148 = (v96 * v133) + (v97 * v134);
        v149 = v147 + (v95 * v136);
        v150 = v148 + (v98 * v136);
        v151 = v136;
        v152 = ((v99 * v133) + (v100 * v134)) + (v101 * v136);
        v153 = v248 + v139;
        v154 = v87 + v140;
        v155 = v87 + v144;
        v156 = v238 + v145;
        v157 = v88 + v141;
        v158 = v88 + v149;
        v159 = __PAIR64__(LODWORD(v124), LODWORD(v134));
        v160 = v242 + v146;
        v243 = v242 + v150;
        v245 = v157;
        v251 = *&v130;
        v161 = __PAIR64__(LODWORD(v126), LODWORD(v133));
        v162 = __PAIR64__(LODWORD(v127), LODWORD(v151));
        v240 = __PAIR64__(v143, LODWORD(v132));
        v163 = __PAIR64__(LODWORD(v142), v130);
        v239 = __PAIR64__(LODWORD(v124), LODWORD(v135));
        *&v143 = v131;
        v236 = v143;
        do
        {
          v164 = (v19 + 24);
          v165 = v128;
          v166 = v234;
          v167 = (v19 + 32 * v129);
          do
          {
            v168 = *(v164 - 4);
            v169 = *(v164 - 2);
            v170 = *(v164 - 1);
            v171 = v154 * v169;
            v172 = v156 * v170;
            v173 = (v153 * v169) + (v155 * v170);
            v174 = v156;
            v175 = v155;
            v176 = v154;
            v177 = v153;
            v178 = v171 + v172;
            v179.f32[0] = v173 + (v158 * *v164);
            v180 = *(v164 - 6);
            v181 = vrev64_s32(v180);
            v182.f32[0] = v178 + (v243 * *v164);
            v179.f32[1] = ((v251 * v170) + (v254 * v169)) + (v133 * *v164);
            v182.f32[1] = ((v137 * v170) + (v132 * v169)) + (v134 * *v164);
            v183.i32[0] = v167[5];
            v183.i32[1] = v167[1];
            v184 = vmul_f32(v183, vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(v163, v180.f32[0]), vmul_lane_f32(__PAIR64__(LODWORD(v125), LODWORD(v137)), v180, 1)), vmul_n_f32(v236, v168)), v182));
            v183.i32[0] = v167[4];
            v183.i32[1] = *v167;
            v185 = vmla_f32(v184, vadd_f32(vadd_f32(vadd_f32(vmul_f32(v240, v181), vmul_f32(__PAIR64__(LODWORD(v142), LODWORD(v254)), v180)), vmul_n_f32(v239, v168)), v179), v183);
            v179.f32[0] = ((v245 * v169) + (v160 * v170)) + ((v237 + v152) * *v164);
            v179.f32[1] = ((v131 * v170) + (v135 * v169)) + (v151 * *v164);
            v186 = vadd_f32(vadd_f32(vadd_f32(vmul_f32(v159, v181), vmul_f32(v161, v180)), vmul_n_f32(v162, v168)), v179);
            v179.i32[0] = v167[6];
            v179.i32[1] = v167[2];
            v186.f32[0] = *(v15 + v165) - vaddv_f32(vmla_f32(v185, v186, v179));
            v153 = v177;
            v154 = v176;
            v155 = v175;
            v156 = v174;
            *(v15 + v165++) = v186.i32[0];
            v164 += 8;
            --v166;
          }

          while (v166);
          ++v129;
          v128 += v234;
        }

        while (v129 != v234);
      }

      physx::PxcScratchAllocator::free(v235, v18);
      v187 = v235;
      v188 = v19;
    }

    return physx::PxcScratchAllocator::free(v187, v188);
  }
}

uint64_t physx::Dy::FeatherstoneArticulation::getGeneralizedMassMatrix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 684) == 1)
  {
    v11 = physx::shdfnd::Foundation::mInstance;

    return physx::shdfnd::Foundation::error(v11, 8, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyFeatherstoneInverseDynamic.cpp", 2024, "ArticulationHelper::getGeneralizedMassMatrix() commonInit need to be called first to initialize data!", a6, a7, a8, a9);
  }

  else
  {
    v82 = v9;
    v83 = v10;
    v14 = *(a2 + 16);
    v15 = *(a1 + 616);
    v16 = *(a1 + 652);
    v17 = *(a2 + 104);
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v71 = physx::PxcScratchAllocator::alloc(v17, 240 * v15, 0);
    v72 = (v71 + (32 * v15));
    v73 = v71 + (v15 << 6);
    v74 = (v71 + (96 * v15));
    v67 = v71;
    v68 = v17;
    v76 = v71 + (v15 << 7);
    v18 = physx::PxcScratchAllocator::alloc(v17, 4 * v16, 0);
    v77 = 0;
    v78 = v18;
    v75 = 0;
    v19 = **(a1 + 664);
    bzero(v18, (4 * v16));
    if (v16)
    {
      for (i = 0; i != v16; ++i)
      {
        v79 = v14 + 4 * (v16 * i);
        *&v18[4 * i] = 1065353216;
        if (v19)
        {
          v21 = *(a1 + 616);
          v22 = v72;
          v23 = v74;
          v24 = v78;
          *v72 = 0u;
          v22[1] = 0u;
          *v23 = 0u;
          v23[1] = 0u;
          if (v21 >= 2)
          {
            v25 = *(a1 + 608);
            v26 = *(a1 + 632);
            v27 = *(a1 + 624);
            v28 = 96;
            v29 = 1;
            v30 = *(a1 + 480);
            do
            {
              v31 = v26 + 80 * v29;
              v32 = v27 + 160 * v29;
              _S2 = *(v32 + 120);
              v34 = &v22[2 * *(v25 + 40 * v29 + 32)];
              v35 = *(v34 + 2);
              _D1 = *v34;
              v37 = *(v32 + 124);
              v38.i32[0] = vdup_lane_s32(v37, 1).u32[0];
              v38.i32[1] = _S2;
              _D5 = vrev64_s32(*v34);
              _D5.f32[0] = v35;
              v40 = vmls_f32(vmul_f32(v38, *(v34 + 4)), _D5, v37);
              __asm { FMLS            S5, S2, V1.S[1] }

              v45 = vadd_f32(v34[1], v40);
              v46 = _D5.f32[0] + *(v34 + 6);
              v47 = *(v31 + 76);
              if (*(v31 + 76))
              {
                v48 = &v24[4 * *(v31 + 72)];
                v49 = (*(a1 + 528) + v28);
                do
                {
                  v50 = *v48++;
                  v51 = v50;
                  _D1 = vadd_f32(_D1, vmul_n_f32(*(v49 - 5), v50));
                  v35 = v35 + (v50 * *(v49 - 3));
                  v52 = vmul_n_f32(*(v49 - 2), v50);
                  v53 = *v49;
                  v49 += 6;
                  v45 = vadd_f32(v45, v52);
                  v46 = v46 + (v51 * v53);
                  --v47;
                }

                while (v47);
              }

              v54 = &v22[2 * v29];
              *v54 = _D1;
              v54[1].f32[0] = v35;
              v54[1].i32[1] = 0;
              v54[2] = v45;
              v54[3].f32[0] = v46;
              v54[3].i32[1] = 0;
              v55 = v30 + 112 * v29;
              v56.i32[0] = *(v55 + 8);
              v57 = *(v55 + 20);
              v58 = *(v55 + 32);
              v59 = (((v56.f32[0] * _D1.f32[0]) + vmuls_lane_f32(v57, _D1, 1)) + (v35 * v58)) + (((*(v55 + 44) * v45.f32[0]) + vmuls_lane_f32(*(v55 + 56), v45, 1)) + (v46 * *(v55 + 68)));
              v60 = &v23[2 * v29];
              v61 = *v55;
              v62 = *(v55 + 12);
              v63 = *(v55 + 24);
              v64 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*v55, _D1.f32[0]), vmul_lane_f32(v62, _D1, 1)), vmul_n_f32(v63, v35)), vadd_f32(vadd_f32(vmul_n_f32(*(v55 + 36), v45.f32[0]), vmul_lane_f32(*(v55 + 48), v45, 1)), vmul_n_f32(*(v55 + 60), v46)));
              v65 = ((COERCE_FLOAT(vmul_f32(v45, v63).i32[1]) + (v63.f32[0] * v45.f32[0])) + (v58 * v46)) + (((*(v55 + 80) * _D1.f32[0]) + vmuls_lane_f32(*(v55 + 92), _D1, 1)) + (v35 * *(v55 + 104)));
              v60[1].f32[0] = v59;
              v60[1].i32[1] = 0;
              v56.f32[1] = v57;
              v66 = vadd_f32(vmla_n_f32(vmla_n_f32(vmul_lane_f32(vzip2_s32(v61, v62), v45, 1), vzip1_s32(v61, v62), v45.f32[0]), v56, v46), vadd_f32(vadd_f32(vmul_n_f32(*(v55 + 72), _D1.f32[0]), vmul_lane_f32(*(v55 + 84), _D1, 1)), vmul_n_f32(*(v55 + 96), v35)));
              *v60 = v64;
              v60[2] = v66;
              v60[3].f32[0] = v65;
              v60[3].i32[1] = 0;
              ++v29;
              v28 += 76;
            }

            while (v29 != v21);
          }

          physx::Dy::FeatherstoneArticulation::computeGeneralizedForceInv(a1 + 176, v74, v79);
        }

        else
        {
          v69 = 0;
          v70 = 0;
          physx::Dy::FeatherstoneArticulation::inverseDynamicFloatingBase(a1, a1 + 176, &v69, &v71, 0);
        }

        *&v18[4 * i] = 0;
      }
    }

    physx::PxcScratchAllocator::free(v68, v18);
    return physx::PxcScratchAllocator::free(v68, v67);
  }
}

uint64_t physx::Dy::writeBackContactCoulomb4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 88);
  v7 = *(result + 136);
  v8 = *(result + 184);
  v9 = *(v4 + 1);
  v10 = *v4;
  v43 = 0;
  if (v9)
  {
    v11 = &v4[v9];
    _ZF = v10 == 7;
    v13 = 128;
    if (_ZF)
    {
      v13 = 176;
    }

    v14 = 0uLL;
    _X5 = v4;
    do
    {
      v16 = (_X5 + 176);
      v17 = _X5[8];
      v18 = _X5[9];
      v19 = _X5[10];
      v20 = _X5[11];
      v21 = _X5[1];
      __asm
      {
        PRFM            #0, [X5,#0x1B0]
        PRFM            #0, [X5,#0x230]
      }

      if (_X5[1])
      {
        v26 = 0;
        do
        {
          v27 = v16[3];
          if (v5 && v26 < _X5[4])
          {
            *v5++ = v27.i32[0];
          }

          if (v6 && v26 < _X5[5])
          {
            *v6++ = v27.i32[1];
          }

          if (v7 && v26 < _X5[6])
          {
            *v7++ = v27.i32[2];
          }

          if (v8 && v26 < _X5[7])
          {
            *v8++ = v27.i32[3];
          }

          v16 = (v16 + v13);
          v14 = vaddq_f32(v14, v27);
          ++v26;
        }

        while (v21 != v26);
      }

      _X5 = v16;
    }

    while (v16 < v11);
    BYTE1(v43) = v18 & 1;
    BYTE2(v43) = v19 & 1;
    HIBYTE(v43) = v20 & 1;
    v28 = v17 & 1;
  }

  else
  {
    v28 = 0;
    v14 = 0uLL;
  }

  v29 = 0;
  v30 = v4 + 144;
  LOBYTE(v43) = v28;
  v44 = v14;
  v31 = (result + 18);
  do
  {
    if (*(&v43 + v29) == 1 && *(v31 - 1) == -1 && *v31 == -1)
    {
      v32 = v44.f32[v29];
      if (v32 != 0.0)
      {
        v33 = *(a3 + 8 * v29);
        v34 = *(v33 + 28);
        v35 = *(a4 + 8 * v29);
        v36 = *(v35 + 28);
        if (v34 < 3.4028e38 || v36 < 3.4028e38)
        {
          if (v34 >= v36)
          {
            v34 = *(v35 + 28);
          }

          v38 = *(v33 + 72) << 7;
          v39 = *(v35 + 72) << 7;
          v40 = *&v30[8 * v29];
          v41 = *(a2 + 16);
          *(a2 + 16) = v41 + 1;
          result = *(a2 + 8) + 32 * v41;
          *result = v40;
          if (v39 >= v38)
          {
            v42 = v38;
          }

          else
          {
            v42 = v39;
          }

          if (v39 <= v38)
          {
            v39 = v38;
          }

          *(result + 8) = v32;
          *(result + 12) = v34;
          *(result + 16) = v42;
          *(result + 20) = v39;
        }
      }
    }

    ++v29;
    v31 += 24;
  }

  while (v29 != 4);
  return result;
}

int32x4_t physx::Dy::solveContactCoulomb4_Block(int32x4_t **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[12];
  v6 = a1[13];
  v7 = **a1;
  v8 = (*a1)[1];
  v9 = v5[1];
  v10 = vzip1q_s32(v7, *v5);
  v12 = a1[18];
  v11 = a1[19];
  v14 = v2[1];
  v15 = v4[1];
  v16 = v3[1];
  v18 = v6[1];
  v19 = v12[1];
  v20 = v11[1];
  v21 = vzip2q_s32(v7, *v5);
  v22 = vzip1q_s32(*v4, *v12);
  v23 = vzip1q_s32(v10, v22);
  v24 = vzip2q_s32(v10, v22);
  v109 = vzip2q_s32(*v4, *v12);
  v110 = v21;
  v25 = vzip1q_s32(v21, v109);
  v26 = vzip1q_s32(*v2, *v6);
  v27 = vzip1q_s32(*v3, *v11);
  v28 = vzip1q_s32(v26, v27);
  v29 = vzip2q_s32(v26, v27);
  v107 = vzip2q_s32(*v3, *v11);
  v108 = vzip2q_s32(*v2, *v6);
  v30 = vzip1q_s32(v108, v107);
  v31 = vzip1q_s32(v8, v9);
  v32 = vzip2q_s32(v8, v9);
  v33 = vzip1q_s32(v15, v19);
  v34 = vzip1q_s32(v31, v33);
  v35 = vzip2q_s32(v31, v33);
  v105 = vzip2q_s32(v15, v19);
  v106 = v32;
  v36 = vzip1q_s32(v32, v105);
  v37 = vzip1q_s32(v14, v18);
  v38 = vzip1q_s32(v16, v20);
  v39 = vzip1q_s32(v37, v38);
  v40 = vzip2q_s32(v37, v38);
  v103 = vzip2q_s32(v16, v20);
  v104 = vzip2q_s32(v14, v18);
  v41 = vzip1q_s32(v104, v103);
  v42 = a1[4];
  if (v42->i16[1])
  {
    v43 = (v42 + v42->u16[1]);
    do
    {
      v44 = v42->u8[1];
      v45 = v42[5];
      v47 = v42[2];
      v46 = v42[3];
      v48 = v42[4];
      v113 = v29;
      v111 = v42[6];
      v112 = v28;
      if (v42->i8[1])
      {
        v49 = 0;
        v50 = v42[7];
        v51 = v42[8];
        v52 = vmlaq_f32(vmlaq_f32(vmulq_f32(v28, v47), v46, v29), v48, v30);
        v53 = vmlaq_f32(vmlaq_f32(vmulq_f32(v23, v47), v46, v24), v48, v25);
        v54 = vnegq_f32(v42[6]);
        v55 = v42->u16[1] + 96;
        v56 = 0uLL;
        do
        {
          _X7 = &v42[v49];
          __asm
          {
            PRFM            #0, [X7,#0x160]
            PRFM            #0, [X7,#0x1E0]
            PRFM            #0, [X7,#0x260]
            PRFM            #0, [X7,#0x2E0]
          }

          v66 = v42[v49 + 11];
          v67 = v42[v49 + 12];
          v69 = v42[v49 + 13];
          v68 = v42[v49 + 14];
          v70 = v42[v49 + 19];
          v71 = v42[v49 + 20];
          v72 = v42[v49 + 21];
          v73 = vminq_f32(vaddq_f32(v68, vmaxq_f32(vmlsq_f32(vmlaq_f32(vnegq_f32(v42[v49 + 17]), v42[v49 + 15], v42[v49 + 16]), v42[v49 + 15], vsubq_f32(vaddq_f32(v53, vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v66), v35, v67), v36, v69)), vaddq_f32(v52, vmlaq_f32(vmlaq_f32(vmulq_f32(v39, v70), v40, v71), v41, v72)))), vnegq_f32(v68))), v42[v49 + 18]);
          v74 = vsubq_f32(v73, v68);
          v53 = vmlaq_f32(v53, v74, v45);
          v52 = vmlaq_f32(v52, v74, v54);
          v56 = vaddq_f32(v56, v74);
          v75 = vmulq_f32(v50, v74);
          v76 = vmulq_f32(v51, v74);
          v34 = vmlaq_f32(v34, v75, v66);
          v39 = vmlsq_f32(v39, v76, v70);
          v35 = vmlaq_f32(v35, v75, v67);
          v40 = vmlsq_f32(v40, v76, v71);
          v36 = vmlaq_f32(v36, v75, v69);
          v41 = vmlsq_f32(v41, v76, v72);
          _X7[14] = v73;
          *(v42 + v55) = v73;
          v55 += 16;
          v49 += 11;
        }

        while (11 * v44 != v49);
      }

      else
      {
        v56 = 0uLL;
      }

      v42 += 11 * v44 + 11;
      v77 = vmulq_f32(v45, v56);
      v78 = vmulq_f32(v111, v56);
      v23 = vmlaq_f32(v23, v77, v47);
      v28 = vmlsq_f32(v112, v78, v47);
      v24 = vmlaq_f32(v24, v77, v46);
      v29 = vmlsq_f32(v113, v78, v46);
      v25 = vmlaq_f32(v25, v77, v48);
      v30 = vmlsq_f32(v30, v78, v48);
    }

    while (v42 < v43);
  }

  v79 = vzip2q_s32(v104, v103);
  v80 = vzip2q_s32(v106, v105);
  v81 = vzip2q_s32(v108, v107);
  v82 = vzip2q_s32(v110, v109);
  v83 = vzip1q_s32(v23, v25);
  v84 = vzip2q_s32(v23, v25);
  v85 = vzip1q_s32(v24, v82);
  v86 = vzip2q_s32(v24, v82);
  v87 = vzip1q_s32(v28, v30);
  v88 = vzip2q_s32(v28, v30);
  *v1 = vzip1q_s32(v83, v85);
  v89 = vzip1q_s32(v29, v81);
  *v4 = vzip2q_s32(v83, v85);
  v90 = vzip2q_s32(v29, v81);
  vst2_f32(v5->i32, v84);
  v91 = v5 + 1;
  *v12 = vzip2q_s32(v84, v86);
  vst2_f32(v2->i32, v87);
  v92 = vzip1q_s32(v34, v36);
  *v3 = vzip2q_s32(v87, v89);
  v93 = vzip2q_s32(v34, v36);
  v94 = vzip1q_s32(v35, v80);
  vst2_f32(v6->i32, v88);
  *v11 = vzip2q_s32(v88, v90);
  v95 = vzip2q_s32(v35, v80);
  v1[1] = vzip1q_s32(v92, v94);
  v4[1] = vzip2q_s32(v92, v94);
  v96 = vzip1q_s32(v93, v95);
  v97 = vzip2q_s32(v93, v95);
  *v91 = v96;
  v98 = vzip1q_s32(v39, v41);
  v12[1] = v97;
  v99 = vzip1q_s32(v40, v79);
  i32 = v2[1].i32;
  vst2_f32(i32, v98);
  v3[1] = vzip2q_s32(v98, v99);
  v100 = vzip2q_s32(v39, v41);
  v101 = vzip2q_s32(v40, v79);
  result = vzip2q_s32(v100, v101);
  v17 = v6[1].i32;
  vst2_f32(v17, v100);
  v11[1] = result;
  return result;
}

int32x4_t physx::Dy::solveContactCoulomb4_StaticBlock(int32x4_t **a1)
{
  v1 = *a1;
  v2 = a1[6];
  v3 = a1[12];
  v4 = a1[18];
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = v2[1];
  v8 = v3[1];
  v9 = v4[1];
  v10 = vzip1q_s32(v5, *v3);
  v11 = vzip2q_s32(v5, *v3);
  v12 = vzip1q_s32(*v2, *v4);
  v13 = vzip2q_s32(*v2, *v4);
  v14 = vzip1q_s32(v10, v12);
  v15 = vzip2q_s32(v10, v12);
  v16 = vzip1q_s32(v11, v13);
  v17 = vzip1q_s32(v6, v8);
  v18 = vzip2q_s32(v6, v8);
  v19 = vzip1q_s32(v7, v9);
  v20 = vzip2q_s32(v7, v9);
  v21 = vzip1q_s32(v17, v19);
  v22 = vzip2q_s32(v17, v19);
  v23 = vzip1q_s32(v18, v20);
  v24 = a1[4];
  if (v24->i16[1])
  {
    v25 = (v24 + v24->u16[1]);
    do
    {
      v26 = v24->u8[1];
      v28 = v24[2];
      v27 = v24[3];
      v29 = v24[4];
      v30 = v24[5];
      if (v24->i8[1])
      {
        v31 = (v24 + v24->u16[1] + 96);
        v32 = v24[7];
        v33 = vmlaq_f32(vmlaq_f32(vmulq_f32(v14, v28), v27, v15), v29, v16);
        _X16 = v24 + 18;
        v35 = 0uLL;
        v36 = v24->u8[1];
        do
        {
          __asm
          {
            PRFM            #0, [X16,#0x10]
            PRFM            #0, [X16,#0x90]
            PRFM            #0, [X16,#0x110]
          }

          v44 = _X16[-7];
          v45 = _X16[-6];
          v46 = _X16[-5];
          v47 = _X16[-4];
          v48 = vminq_f32(vaddq_f32(v47, vmaxq_f32(vmlsq_f32(vmlaq_f32(vnegq_f32(_X16[-1]), _X16[-3], _X16[-2]), _X16[-3], vaddq_f32(v33, vmlaq_f32(vmlaq_f32(vmulq_f32(v21, v44), v22, v45), v23, v46))), vnegq_f32(v47))), *_X16);
          v49 = vsubq_f32(v48, v47);
          v50 = vmulq_f32(v32, v49);
          v33 = vmlaq_f32(v33, v49, v30);
          v35 = vaddq_f32(v35, v49);
          v21 = vmlaq_f32(v21, v50, v44);
          v22 = vmlaq_f32(v22, v50, v45);
          v23 = vmlaq_f32(v23, v50, v46);
          _X16[-4] = v48;
          *v31++ = v48;
          _X16 += 8;
          --v36;
        }

        while (v36);
      }

      else
      {
        v35 = 0uLL;
      }

      v24 += 8 * v26 + 11;
      v51 = vmulq_f32(v30, v35);
      v14 = vmlaq_f32(v14, v51, v28);
      v15 = vmlaq_f32(v15, v51, v27);
      v16 = vmlaq_f32(v16, v51, v29);
    }

    while (v24 < v25);
  }

  v52 = vzip2q_s32(v18, v20);
  v53 = vzip2q_s32(v11, v13);
  v54 = vzip1q_s32(v14, v16);
  v55 = vzip2q_s32(v14, v16);
  v56 = vzip1q_s32(v15, v53);
  v57 = vzip2q_s32(v15, v53);
  v58 = vzip1q_s32(v54, v56);
  v59 = vzip2q_s32(v54, v56);
  v60 = vzip1q_s32(v21, v23);
  v61 = vzip2q_s32(v21, v23);
  v62 = vzip1q_s32(v22, v52);
  *v1 = v58;
  *v2 = v59;
  v63 = vzip2q_s32(v22, v52);
  v64 = vzip1q_s32(v60, v62);
  v65 = vzip2q_s32(v60, v62);
  v66 = vzip1q_s32(v61, v63);
  vst2_f32(v3->i32, v55);
  v67 = v3 + 1;
  *v4 = vzip2q_s32(v55, v57);
  v1[1] = v64;
  v2[1] = v65;
  result = vzip2q_s32(v61, v63);
  *v67 = v66;
  v4[1] = result;
  return result;
}

float32x4_t *physx::Dy::solveContactCoulombPreBlock_Conclude(uint64_t a1)
{
  physx::Dy::solveContactCoulomb4_Block(a1);
  v2 = *(a1 + 32);

  return physx::Dy::concludeContactCoulomb4(v2);
}

float32x4_t *physx::Dy::concludeContactCoulomb4(float32x4_t *result)
{
  if (result->i16[1])
  {
    v1 = (result + result->u16[1]);
    v2 = 8;
    if (result->i8[0] == 7)
    {
      v2 = 11;
    }

    do
    {
      v3 = result + 11;
      v4 = result->u8[1];
      __asm
      {
        PRFM            #0, [X0,#0x130]
        PRFM            #0, [X0,#0x1B0]
        PRFM            #0, [X0,#0x230]
      }

      if (result->i8[1])
      {
        do
        {
          result = &v3[v2];
          v3[6] = vmaxq_f32(v3[6], 0);
          v3 = (v3 + v2 * 16);
          --v4;
        }

        while (v4);
      }

      else
      {
        result += 11;
      }
    }

    while (result < v1);
  }

  return result;
}

float32x4_t *physx::Dy::solveContactCoulombPreBlock_ConcludeStatic(uint64_t a1)
{
  physx::Dy::solveContactCoulomb4_StaticBlock(a1);
  v2 = *(a1 + 32);

  return physx::Dy::concludeContactCoulomb4(v2);
}

uint64_t physx::Dy::solveContactCoulombPreBlock_WriteBack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[4] = *MEMORY[0x1E69E9840];
  physx::Dy::solveContactCoulomb4_Block(a1);
  v5 = *(a3 + 24);
  v6 = v5 + 112 * *(a1 + 20);
  v7 = v5 + 112 * *(a1 + 68);
  v8 = v5 + 112 * *(a1 + 116);
  v9 = v5 + 112 * *(a1 + 164);
  v10 = v5 + 112 * *(a1 + 24);
  v11 = v5 + 112 * *(a1 + 72);
  v12 = v5 + 112 * *(a1 + 120);
  v13 = v5 + 112 * *(a1 + 168);
  v25[0] = v6;
  v25[1] = v7;
  v25[2] = v8;
  v25[3] = v9;
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  v24[3] = v13;
  result = physx::Dy::writeBackContactCoulomb4(a1, a3, v25, v24);
  v15 = *(a3 + 16);
  if (v15 > *(a3 + 20) - 4)
  {
    add = atomic_fetch_add(*(a3 + 48), v15);
    v17 = *(a3 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = add + v15 - v17;
      do
      {
        v21 = (*(a3 + 8) + v18);
        v22 = (*(a3 + 32) + 32 * (v20 + v19));
        v23 = v21[1];
        *v22 = *v21;
        v22[1] = v23;
        ++v19;
        v18 += 32;
      }

      while (v19 < *(a3 + 16));
    }

    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t physx::Dy::solveContactCoulombPreBlock_WriteBackStatic(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[4] = *MEMORY[0x1E69E9840];
  physx::Dy::solveContactCoulomb4_StaticBlock(a1);
  v5 = *(a3 + 24);
  v6 = v5 + 112 * *(a1 + 20);
  v7 = v5 + 112 * *(a1 + 68);
  v8 = v5 + 112 * *(a1 + 116);
  v9 = v5 + 112 * *(a1 + 164);
  v10 = v5 + 112 * *(a1 + 24);
  v11 = v5 + 112 * *(a1 + 72);
  v12 = v5 + 112 * *(a1 + 120);
  v13 = v5 + 112 * *(a1 + 168);
  v25[0] = v6;
  v25[1] = v7;
  v25[2] = v8;
  v25[3] = v9;
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  v24[3] = v13;
  result = physx::Dy::writeBackContactCoulomb4(a1, a3, v25, v24);
  v15 = *(a3 + 16);
  if (v15 > *(a3 + 20) - 4)
  {
    add = atomic_fetch_add(*(a3 + 48), v15);
    v17 = *(a3 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = add + v15 - v17;
      do
      {
        v21 = (*(a3 + 8) + v18);
        v22 = (*(a3 + 32) + 32 * (v20 + v19));
        v23 = v21[1];
        *v22 = *v21;
        v22[1] = v23;
        ++v19;
        v18 += 32;
      }

      while (v19 < *(a3 + 16));
    }

    *(a3 + 16) = 0;
  }

  return result;
}

int32x4_t physx::Dy::solveFriction4_Block(int32x4_t **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[12];
  v6 = a1[13];
  v7 = **a1;
  v8 = (*a1)[1];
  v9 = v5[1];
  v10 = vzip1q_s32(v7, *v5);
  v12 = a1[18];
  v11 = a1[19];
  v14 = v2[1];
  v15 = v4[1];
  v16 = v3[1];
  v17 = v12[1];
  v18 = vzip2q_s32(v7, *v5);
  v19 = vzip1q_s32(*v4, *v12);
  v20 = v11[1];
  v21 = vzip1q_s32(v10, v19);
  v22 = vzip2q_s32(v10, v19);
  v118 = vzip2q_s32(*v4, *v12);
  v119 = v18;
  v23 = vzip1q_s32(v18, v118);
  v24 = vzip1q_s32(*v2, *v6);
  v25 = vzip1q_s32(*v3, *v11);
  v26 = vzip1q_s32(v24, v25);
  v27 = vzip2q_s32(v24, v25);
  v29 = v6[1];
  v116 = vzip2q_s32(*v3, *v11);
  v117 = vzip2q_s32(*v2, *v6);
  v30 = vzip1q_s32(v117, v116);
  v31 = vzip1q_s32(v8, v9);
  v32 = vzip2q_s32(v8, v9);
  v33 = vzip1q_s32(v15, v17);
  v34 = vzip1q_s32(v31, v33);
  v35 = vzip2q_s32(v31, v33);
  v114 = vzip2q_s32(v15, v17);
  v115 = v32;
  v36 = vzip1q_s32(v32, v114);
  v37 = vzip1q_s32(v14, v29);
  v38 = vzip1q_s32(v16, v20);
  v39 = vzip2q_s32(v16, v20);
  v40 = vzip1q_s32(v37, v38);
  v41 = vzip2q_s32(v37, v38);
  v113 = vzip2q_s32(v14, v29);
  v42 = vzip1q_s32(v113, v39);
  if (*(a1 + 15))
  {
    v43 = a1[4];
    v44 = &v43[*(a1 + 15)];
    do
    {
      v45 = v43 + 6;
      v46 = v43->u8[1];
      _X2 = &v43[v46 + 6];
      __asm
      {
        PRFM            #0, [X2,#0x80]
        PRFM            #0, [X2,#0x100]
        PRFM            #0, [X2,#0x180]
      }

      v55 = v43->u8[2];
      if (v43->i8[2])
      {
        v56 = 0;
        v57 = 0;
        v58 = v46;
        v59 = v43[1];
        v60 = v43[2];
        v61 = v43[3];
        v62 = v43[4];
        v63 = v43[5];
        v64 = v43->i32[3];
        v65 = &v43[v58];
        do
        {
          _X21 = &v65[v57];
          __asm
          {
            PRFM            #0, [X21,#0x120]
            PRFM            #0, [X21,#0x1A0]
            PRFM            #0, [X21,#0x220]
            PRFM            #0, [X21,#0x2A0]
          }

          v71 = v65[v57 + 6];
          v72 = v65[v57 + 7];
          v74 = v65[v57 + 8];
          v73 = v65[v57 + 9];
          v76 = v65[v57 + 10];
          v75 = v65[v57 + 11];
          v78 = v65[v57 + 16];
          v77 = v65[v57 + 17];
          v79 = v65[v57 + 15];
          v80 = vmulq_f32(v59, v45[v56 >> v64]);
          v81 = vmaxq_f32(vminq_f32(vmlaq_f32(vmlsq_f32(v65[v57 + 12], v65[v57 + 13], v65[v57 + 14]), v65[v57 + 13], vsubq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v21, v71), v72, v22), v74, v23), vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v73), v35, v76), v36, v75)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v26, v71), v72, v27), v74, v30), vmlaq_f32(vmlaq_f32(vmulq_f32(v40, v79), v41, v78), v42, v77)))), v80), vnegq_f32(v80));
          v82 = vsubq_f32(v81, v65[v57 + 12]);
          v83 = vmulq_f32(v60, v82);
          v84 = vmulq_f32(v61, v82);
          v21 = vmlaq_f32(v21, v83, v71);
          v26 = vmlsq_f32(v26, v84, v71);
          v22 = vmlaq_f32(v22, v83, v72);
          v27 = vmlsq_f32(v27, v84, v72);
          v23 = vmlaq_f32(v23, v83, v74);
          v30 = vmlsq_f32(v30, v84, v74);
          v85 = vmulq_f32(v62, v82);
          v34 = vmlaq_f32(v34, v85, v73);
          v35 = vmlaq_f32(v35, v85, v76);
          v36 = vmlaq_f32(v36, v85, v75);
          v86 = vmulq_f32(v63, v82);
          v40 = vmlsq_f32(v40, v86, v79);
          v41 = vmlsq_f32(v41, v86, v78);
          v42 = vmlsq_f32(v42, v86, v77);
          _X21[12] = v81;
          v57 += 12;
          ++v56;
        }

        while (12 * v55 != v57);
      }

      v43 = (_X2 + 192 * v55);
    }

    while (v43 < v44);
  }

  v87 = vzip2q_s32(v113, v39);
  v88 = vzip2q_s32(v115, v114);
  v89 = vzip2q_s32(v117, v116);
  v90 = vzip2q_s32(v119, v118);
  v91 = vzip1q_s32(v21, v23);
  v92 = vzip2q_s32(v21, v23);
  v93 = vzip1q_s32(v22, v90);
  v94 = vzip2q_s32(v22, v90);
  v95 = vzip1q_s32(v91, v93);
  v96 = vzip2q_s32(v91, v93);
  v97 = vzip1q_s32(v26, v30);
  v98 = vzip2q_s32(v26, v30);
  *v1 = v95;
  v99 = vzip1q_s32(v27, v89);
  *v4 = v96;
  v100 = vzip2q_s32(v27, v89);
  vst2_f32(v5->i32, v92);
  v101 = v5 + 1;
  *v12 = vzip2q_s32(v92, v94);
  vst2_f32(v2->i32, v97);
  v102 = vzip1q_s32(v34, v36);
  *v3 = vzip2q_s32(v97, v99);
  v103 = vzip2q_s32(v34, v36);
  v104 = vzip1q_s32(v35, v88);
  vst2_f32(v6->i32, v98);
  *v11 = vzip2q_s32(v98, v100);
  v105 = vzip2q_s32(v35, v88);
  v1[1] = vzip1q_s32(v102, v104);
  v4[1] = vzip2q_s32(v102, v104);
  v106 = vzip1q_s32(v103, v105);
  v107 = vzip2q_s32(v103, v105);
  *v101 = v106;
  v108 = vzip1q_s32(v40, v42);
  v12[1] = v107;
  v109 = vzip1q_s32(v41, v87);
  i32 = v2[1].i32;
  vst2_f32(i32, v108);
  v3[1] = vzip2q_s32(v108, v109);
  v110 = vzip2q_s32(v40, v42);
  v111 = vzip2q_s32(v41, v87);
  result = vzip2q_s32(v110, v111);
  v28 = v6[1].i32;
  vst2_f32(v28, v110);
  v11[1] = result;
  return result;
}

int32x4_t physx::Dy::solveFriction4_StaticBlock(int32x4_t **a1)
{
  v1 = *a1;
  v2 = a1[6];
  v3 = a1[12];
  v4 = a1[18];
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = v2[1];
  v8 = v3[1];
  v9 = v4[1];
  v10 = vzip1q_s32(v5, *v3);
  v11 = vzip2q_s32(v5, *v3);
  v12 = vzip1q_s32(*v2, *v4);
  v13 = vzip2q_s32(*v2, *v4);
  v14 = vzip1q_s32(v10, v12);
  v15 = vzip2q_s32(v10, v12);
  v16 = vzip1q_s32(v11, v13);
  v17 = vzip1q_s32(v6, v8);
  v18 = vzip2q_s32(v6, v8);
  v19 = vzip1q_s32(v7, v9);
  v20 = vzip2q_s32(v7, v9);
  v21 = vzip1q_s32(v17, v19);
  v22 = vzip2q_s32(v17, v19);
  v23 = vzip1q_s32(v18, v20);
  if (*(a1 + 15))
  {
    v24 = a1[4];
    v25 = &v24[*(a1 + 15)];
    do
    {
      v26 = v24 + 6;
      v27 = v24->u8[1];
      _X14 = &v24[v27 + 6];
      __asm
      {
        PRFM            #0, [X14,#0x80]
        PRFM            #0, [X14,#0x100]
        PRFM            #0, [X14,#0x180]
      }

      v36 = v24->u8[2];
      if (v24->i8[2])
      {
        v37 = 0;
        v38 = 0;
        v39 = v27;
        v40 = v24[1];
        v41 = v24[2];
        v42 = v24[4];
        v43 = v24->i32[3];
        v44 = &v24[v39];
        do
        {
          _X4 = &v44[v38];
          __asm
          {
            PRFM            #0, [X4,#0xF0]
            PRFM            #0, [X4,#0x170]
            PRFM            #0, [X4,#0x1F0]
          }

          v49 = vmulq_f32(v40, v26[v37 >> v43]);
          v50 = v44[v38 + 6];
          v51 = v44[v38 + 7];
          v52 = v44[v38 + 8];
          v53 = v44[v38 + 9];
          v54 = v44[v38 + 10];
          v55 = v44[v38 + 11];
          v56 = vmaxq_f32(vminq_f32(vmlaq_f32(vmlsq_f32(v44[v38 + 12], v44[v38 + 13], v44[v38 + 14]), v44[v38 + 13], vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v14, v50), v51, v15), v52, v16), vmlaq_f32(vmlaq_f32(vmulq_f32(v21, v53), v22, v54), v23, v55))), v49), vnegq_f32(v49));
          v57 = vsubq_f32(v56, v44[v38 + 12]);
          v58 = vmulq_f32(v42, v57);
          v14 = vmlaq_f32(v14, v57, vmulq_f32(v41, v50));
          v21 = vmlaq_f32(v21, v58, v53);
          v15 = vmlaq_f32(v15, v57, vmulq_f32(v41, v51));
          v22 = vmlaq_f32(v22, v58, v54);
          v16 = vmlaq_f32(v16, v57, vmulq_f32(v41, v52));
          v23 = vmlaq_f32(v23, v58, v55);
          _X4[12] = v56;
          v38 += 9;
          ++v37;
        }

        while (9 * v36 != v38);
      }

      v24 = (_X14 + 144 * v36);
    }

    while (v24 < v25);
  }

  v59 = vzip2q_s32(v18, v20);
  v60 = vzip2q_s32(v11, v13);
  v61 = vzip1q_s32(v14, v16);
  v62 = vzip2q_s32(v14, v16);
  v63 = vzip1q_s32(v15, v60);
  v64 = vzip2q_s32(v15, v60);
  v65 = vzip1q_s32(v61, v63);
  v66 = vzip2q_s32(v61, v63);
  v67 = vzip1q_s32(v21, v23);
  v68 = vzip2q_s32(v21, v23);
  v69 = vzip1q_s32(v22, v59);
  *v1 = v65;
  *v2 = v66;
  v70 = vzip2q_s32(v22, v59);
  v71 = vzip1q_s32(v67, v69);
  v72 = vzip2q_s32(v67, v69);
  v73 = vzip1q_s32(v68, v70);
  vst2_f32(v3->i32, v62);
  v74 = v3 + 1;
  *v4 = vzip2q_s32(v62, v64);
  v1[1] = v71;
  v2[1] = v72;
  result = vzip2q_s32(v68, v70);
  *v74 = v73;
  v4[1] = result;
  return result;
}

physx::Dy::ThreadContext *physx::Dy::ThreadContext::ThreadContext(physx::Dy::ThreadContext *this, physx::PxcNpMemBlockPool *a2)
{
  *this = 0;
  *(this + 1478) = a2;
  *(this + 1479) = 0;
  *(this + 11848) = 0u;
  *(this + 2960) = 0;
  *(this + 1483) = a2;
  *(this + 1484) = a2;
  *(this + 1485) = 0;
  *(this + 2972) = 0;
  *(this + 2974) = 0;
  *(this + 1488) = 0;
  *(this + 3058) = 0;
  *(this + 1530) = 0;
  *(this + 3062) = 0;
  *(this + 1533) = 0;
  *(this + 745) = 0u;
  *(this + 746) = 0u;
  *(this + 747) = 0u;
  *(this + 761) = 0u;
  *(this + 760) = 0u;
  *(this + 759) = 0u;
  *(this + 758) = 0u;
  *(this + 757) = 0u;
  *(this + 756) = 0u;
  *(this + 755) = 0u;
  *(this + 754) = 0u;
  *(this + 763) = 0u;
  *(this + 12280) = 0u;
  *(this + 12296) = 0u;
  *(this + 1539) = 0;
  physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(this + 11952, 0x200u);
  if ((*(this + 2983) & 0x7FFFFF80) == 0)
  {
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(this + 11920, 0x80u);
  }

  return this;
}

uint64_t physx::Dy::ThreadContext::resizeArrays(uint64_t this, int a2, unsigned int a3)
{
  v4 = this;
  *(this + 12072) = 0;
  v5 = (a2 + 63) & 0xFFFFFFC0;
  if ((*(this + 12076) & 0x7FFFFFFFu) < v5)
  {
    this = physx::shdfnd::Array<physx::PxSolverConstraintDesc,physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>>::recreate(this + 12064, v5);
  }

  *(v4 + 12296) = 0;
  v6 = a3 | (a3 >> 1) | ((a3 | (a3 >> 1)) >> 2);
  v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
  v8 = v7 | HIWORD(v7);
  if ((v8 + 1) > 0x10)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 16;
  }

  if ((*(v4 + 12300) & 0x7FFFFFFFu) < v9)
  {
    this = physx::shdfnd::Array<physx::Dy::ArticulationSolverDesc,physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationSolverDesc>>::recreate(v4 + 12288, v9);
  }

  *(v4 + 12296) = a3;
  *(v4 + 12264) = *(v4 + 12016);
  *(v4 + 12280) = *(v4 + 12064);
  return this;
}

uint64_t physx::Dy::DynamicsTGSContext::create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, char a11, char a12, char a13)
{
  result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 816, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyTGSDynamics.cpp", 108);
  if (result)
  {
    return physx::Dy::DynamicsTGSContext::DynamicsTGSContext(result, a1, a2, a3, a4, a5, a6, a7, a9, a8, a10, a11, a12, a13);
  }

  return result;
}

uint64_t physx::Dy::DynamicsTGSContext::destroy(physx::Dy::DynamicsTGSContext *this)
{
  (*(*this + 56))(this);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  return v1();
}

uint64_t physx::Dy::DynamicsTGSContext::resetThreadContexts(physx::Dy::DynamicsTGSContext *this)
{
  v2 = *(this + 54);
  pthread_mutex_lock((v2 + 8));
  v3 = *v2;
  *v2 = 0;
  result = pthread_mutex_unlock((v2 + 8));
  if (v3)
  {
    v5 = v3;
    do
    {
      v6 = *v5;
      v5[1479] = 0;
      *(v5 + 2960) = 0;
      v5[1485] = 0;
      *(v5 + 2972) = 0;
      v5[1533] = v5[1502];
      v5[1535] = v5[1508];
      v5[1530] = 0;
      *(v5 + 2974) = 0;
      v5[1488] = 0;
      *(v5 + 763) = 0uLL;
      v5 = v6;
    }

    while (v6);
    do
    {
      v7 = *v3;
      v8 = *(this + 54);
      pthread_mutex_lock((v8 + 8));
      *v3 = *v8;
      *v8 = v3;
      result = pthread_mutex_unlock((v8 + 8));
      v3 = v7;
    }

    while (v7);
  }

  return result;
}

float physx::Dy::copyToSolverBodyDataStep(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, int a5, unsigned int a6, char a7, uint64_t a8, float result, float a10, float a11, float a12, float a13, uint64_t a14, uint64_t a15)
{
  v15 = *a4;
  v16 = *(a4 + 4);
  v17 = *(a4 + 8);
  v18 = *(a4 + 12);
  v19 = v15 * (v15 + v15);
  v20 = v16 * (v16 + v16);
  v21 = v17 * (v17 + v17);
  v22 = (v15 + v15) * v16;
  v23 = (v15 + v15) * v17;
  v24 = (v15 + v15) * v18;
  v25 = (v16 + v16) * v17;
  v26 = (v16 + v16) * v18;
  v27 = (v17 + v17) * v18;
  v28 = (1.0 - v20) - v21;
  v29 = v22 + v27;
  v30 = v23 - v26;
  v31 = v22 - v27;
  v32 = 1.0 - v19;
  v33 = (1.0 - v19) - v21;
  v34 = v25 + v24;
  v35 = v23 + v26;
  v36 = v25 - v24;
  v37 = v32 - v20;
  v38 = a3[1];
  v39 = sqrtf(*a3);
  if (*a3 == 0.0)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = v39;
  }

  v41 = sqrtf(v38);
  if (v38 == 0.0)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = v41;
  }

  v43 = a3[2];
  v44 = sqrtf(v43);
  if (v43 == 0.0)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = v44;
  }

  *(a14 + 60) = ((v34 * (v34 * v42)) + ((v30 * v40) * v30)) + ((v37 * v45) * v37);
  v46 = ((v33 * (v31 * v42)) + ((v28 * v40) * v29)) + ((v35 * v45) * v36);
  *(a14 + 28) = ((v31 * (v31 * v42)) + ((v28 * v40) * v28)) + ((v35 * v45) * v35);
  *(a14 + 32) = v46;
  v47 = ((v34 * (v31 * v42)) + ((v28 * v40) * v30)) + ((v35 * v45) * v37);
  *(a14 + 36) = v47;
  *(a14 + 40) = v46;
  v48 = ((v34 * (v33 * v42)) + ((v29 * v40) * v30)) + ((v36 * v45) * v37);
  *(a14 + 44) = ((v33 * (v33 * v42)) + ((v29 * v40) * v29)) + ((v36 * v45) * v36);
  *(a14 + 48) = v48;
  *(a14 + 52) = v47;
  *(a14 + 56) = v48;
  *(a14 + 16) = *(a4 + 16);
  *(a14 + 24) = *(a4 + 24);
  *a14 = xmmword_1E30474D0;
  v49 = *(a1 + 8);
  v50 = *a2;
  v51.i64[0] = *(a2 + 4);
  if (a6)
  {
    v52 = vandq_s8(vdupq_n_s32(a6), xmmword_1E3114300);
    if ((a6 & 4) != 0)
    {
      v49 = 0.0;
    }

    if ((a6 & 8) != 0)
    {
      v50 = 0.0;
    }

    v51.i64[1] = *a1;
    v51 = vandq_s8(v51, vceqzq_s32(v52));
  }

  else
  {
    v51.i64[1] = *a1;
  }

  if (v45 == 0.0)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = 1.0 / v45;
  }

  v54 = v36 * v53;
  if (v40 == 0.0)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = 1.0 / v40;
  }

  v56 = v29 * v55;
  v57 = 1.0 / v42;
  if (v42 == 0.0)
  {
    v57 = 0.0;
  }

  v58 = ((v34 * (v33 * v57)) + (v56 * v30)) + (v54 * v37);
  v59 = ((v34 * (v31 * v57)) + ((v28 * v55) * v30)) + ((v35 * v53) * v37);
  v60 = ((v33 * (v31 * v57)) + ((v28 * v55) * v29)) + ((v35 * v53) * v36);
  v61 = ((v31 * (v31 * v57)) + ((v28 * v55) * v28)) + ((v35 * v53) * v35);
  v62 = vextq_s8(v51, v51, 8uLL).u64[0];
  *a8 = v62;
  *(a8 + 8) = v49;
  *(a8 + 16) = ((v61 * v50) + (v60 * *v51.i32)) + vmuls_lane_f32(v59, *v51.i8, 1);
  *(a8 + 20) = ((v60 * v50) + ((((v33 * (v33 * v57)) + (v56 * v29)) + (v54 * v36)) * *v51.i32)) + vmuls_lane_f32(v58, *v51.i8, 1);
  *(a8 + 24) = ((v59 * v50) + (v58 * *v51.i32)) + vmuls_lane_f32(((v34 * (v34 * v57)) + ((v30 * v55) * v30)) + ((v37 * v53) * v37), *v51.i8, 1);
  *(a8 + 48) = 0;
  *(a8 + 56) = 0;
  *(a8 + 32) = 0;
  *(a8 + 40) = 0;
  *(a8 + 60) = a6;
  *(a8 + 62) = a7;
  *(a8 + 44) = sqrtf(a13);
  *(a8 + 28) = 0;
  *(a15 + 36) = a5;
  *(a15 + 28) = a10;
  *(a15 + 32) = result;
  *(a15 + 40) = a12;
  *a15 = v62;
  *(a15 + 8) = v49;
  *(a15 + 12) = a11;
  *(a15 + 16) = v50;
  *(a15 + 20) = v51.i64[0];
  return result;
}

uint64_t physx::Dy::DynamicsTGSContext::DynamicsTGSContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, char a12, char a13, char a14)
{
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 72) = a10;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 88) = _D0;
  *(a1 + 96) = 2139095039;
  *(a1 + 100) = a12;
  *(a1 + 101) = a13;
  *(a1 + 102) = a14;
  *(a1 + 120) = -1073741824;
  *(a1 + 140) = 32;
  *(a1 + 224) = a7;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = a5;
  *a1 = &unk_1F5D1DCB8;
  v35 = a1 + 256;
  v27 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v28 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::SListImpl>::getName() [T = physx::shdfnd::SListImpl]";
  }

  else
  {
    v28 = "<allocation names disabled>";
  }

  v29 = (*(*(v27 + 24) + 16))(v27 + 24, 72, v28, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsSList.h", 103);
  *(a1 + 432) = v29;
  *v29 = 0;
  pthread_mutex_init((v29 + 8), 0);
  *(a1 + 440) = a2;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 712) = a8;
  *(a1 + 752) = 0;
  *(a1 + 760) = a9;
  *(a1 + 768) = a3;
  *(a1 + 776) = a4;
  *(a1 + 784) = a6;
  *(a1 + 800) = a11;
  v30 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 24, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/include/DyContext.h", 262);
  v30[1] = 0;
  v30[2] = 0;
  *v30 = a7;
  *(a1 + 8) = v30;
  v31 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 24, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/include/DyContext.h", 264);
  v31[1] = 0;
  v31[2] = 0;
  *v31 = a7;
  *(a1 + 16) = v31;
  v32 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 24, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyTGSDynamics.cpp", 274);
  v32[1] = 0;
  v32[2] = 0;
  *v32 = a7;
  *(a1 + 624) = v32;
  v33 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 24, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyTGSDynamics.cpp", 275);
  v33[1] = 0;
  v33[2] = 0;
  *v33 = a7;
  *(a1 + 632) = v33;
  *(a1 + 708) = 0;
  *(a1 + 792) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(v35 + 60) = 0u;
  *(a1 + 348) = 0u;
  *(a1 + 364) = 0u;
  *(a1 + 380) = 0;
  *(a1 + 332) = xmmword_1E3047670;
  *(a1 + 416) = 0x1FFFFFF00000000;
  *(a1 + 424) = 2139095039;
  *(a1 + 384) = xmmword_1E3113790;
  *(a1 + 400) = xmmword_1E3114310;
  return a1;
}

void physx::Dy::DynamicsTGSContext::~DynamicsTGSContext(physx::Dy::DynamicsTGSContext *this)
{
  *this = &unk_1F5D1DCB8;
  v2 = *(this + 78);
  if (v2)
  {
    v3 = *(v2 + 5);
    if (v3 < 0 || ((v3 & 0x7FFFFFFF) != 0 ? (v4 = v2[1] == 0) : (v4 = 1), v4 || ((*(**v2 + 24))(*v2, v2[1]), *(this + 78))))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  *(this + 78) = 0;
  v5 = *(this + 79);
  if (v5)
  {
    v6 = *(v5 + 5);
    if (v6 < 0 || ((v6 & 0x7FFFFFFF) != 0 ? (v7 = v5[1] == 0) : (v7 = 1), v7 || ((*(**v5 + 24))(*v5, v5[1]), *(this + 79))))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    }
  }

  *(this + 79) = 0;
  v8 = *(this + 175);
  if ((v8 & 0x80000000) == 0 && (v8 & 0x7FFFFFFF) != 0 && *(this + 86) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v10 = *(this + 171);
  if ((v10 & 0x80000000) == 0 && (v10 & 0x7FFFFFFF) != 0 && *(this + 84))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v11 = *(this + 167);
  if ((v11 & 0x80000000) == 0 && (v11 & 0x7FFFFFFF) != 0 && *(this + 82))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v12 = *(this + 163);
  if ((v12 & 0x80000000) == 0 && (v12 & 0x7FFFFFFF) != 0 && *(this + 80))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v13 = *(this + 155);
  if ((v13 & 0x80000000) == 0 && (v13 & 0x7FFFFFFF) != 0)
  {
    v14 = *(this + 76);
    if (v14)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v14 - *(v14 - 8));
    }
  }

  v15 = *(this + 151);
  if ((v15 & 0x80000000) == 0 && (v15 & 0x7FFFFFFF) != 0)
  {
    v16 = *(this + 74);
    if (v16)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v16 - *(v16 - 8));
    }
  }

  v17 = *(this + 147);
  if ((v17 & 0x80000000) == 0 && (v17 & 0x7FFFFFFF) != 0)
  {
    v18 = *(this + 72);
    if (v18)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v18 - *(v18 - 8));
    }
  }

  v19 = *(this + 143);
  if ((v19 & 0x80000000) == 0 && (v19 & 0x7FFFFFFF) != 0 && *(this + 70))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v20 = *(this + 139);
  if ((v20 & 0x80000000) == 0 && (v20 & 0x7FFFFFFF) != 0 && *(this + 68))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v21 = *(this + 135);
  if ((v21 & 0x80000000) == 0 && (v21 & 0x7FFFFFFF) != 0 && *(this + 66))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v22 = *(this + 131);
  if ((v22 & 0x80000000) == 0 && (v22 & 0x7FFFFFFF) != 0 && *(this + 64))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v23 = *(this + 127);
  if ((v23 & 0x80000000) == 0 && (v23 & 0x7FFFFFFF) != 0 && *(this + 62))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v24 = *(this + 123);
  if ((v24 & 0x80000000) == 0 && (v24 & 0x7FFFFFFF) != 0)
  {
    v25 = *(this + 60);
    if (v25)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v25 - *(v25 - 8));
    }
  }

  v26 = *(this + 119);
  if ((v26 & 0x80000000) == 0 && (v26 & 0x7FFFFFFF) != 0)
  {
    v27 = *(this + 58);
    if (v27)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v27 - *(v27 - 8));
    }
  }

  v28 = *(this + 115);
  if (v28 < 0)
  {
    goto LABEL_81;
  }

  if ((v28 & 0x7FFFFFFF) == 0)
  {
    goto LABEL_81;
  }

  v29 = *(this + 56);
  if (!v29)
  {
    goto LABEL_81;
  }

  for (i = v29 - *(v29 - 8); ; i = v31 - *(v31 - 8))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, i);
LABEL_81:
    v32 = physx::shdfnd::SListImpl::pop(*(this + 54));
    if (!v32)
    {
      break;
    }

    physx::Dy::ThreadContext::~ThreadContext(v32);
  }

  physx::shdfnd::SListT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::SListImpl>>::~SListT(this + 432);

  physx::Dy::Context::~Context(this);
}

{
  physx::Dy::DynamicsTGSContext::~DynamicsTGSContext(this);

  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::DynamicsTGSContext::update(physx::Dy::DynamicsTGSContext *this, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, float a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13)
{
  v17 = *a11;
  v18 = a11[1];
  *(this + 94) = *(a11 + 4);
  *(this + 45) = v17;
  *(this + 46) = v18;
  *(this + 22) = a9;
  *(this + 23) = 1.0 / a9;
  *(this + 13) = *a13;
  *(this + 28) = *(a13 + 8);
  v19 = *(a2 + 552);
  v20 = *(a2 + 432);
  if (v20)
  {
    v21 = *(a2 + 424);
    v22 = *(a2 + 200);
    v23 = *(a2 + 176);
    do
    {
      v24 = *v21++;
      v25 = *(*(v23 + 8 * (v24 / v22)) + 8 * (v24 % v22));
      if (v25)
      {
        *(v25 + 82) = 0;
      }

      --v20;
    }

    while (v20);
  }

  v26 = *(this + 31);
  v26[152] = *(a2 + 416);
  if (v19)
  {
    v26[151] = *(a2 + 384);
    v26[150] = *(a2 + 460);
    *(this + 177) = 0;
    physx::Dy::DynamicsTGSContext::resetThreadContexts(this);
    (*(*a4 + 32))(a4);
    v27 = physx::Cm::FlushPool::allocate(*(this + 97), 64, 0x10u);
    *(v27 + 8) = *(this + 100);
    *(v27 + 16) = 0;
    *(v27 + 32) = 0;
    *v27 = &unk_1F5D1DDA8;
    *(v27 + 40) = this;
    *(v27 + 48) = a2;
    *(v27 + 56) = a4;
    *(v27 + 32) = 1;
    *(v27 + 24) = a3;
    if (a3)
    {
      (*(*a3 + 32))(a3);
      *(v27 + 16) = *(*(v27 + 24) + 16);
    }

    *(this + 34) = 0;
    *(this + 70) = 0;
    *(this + 32) = 0;
    *(this + 66) = 0;
    v28 = *(a2 + 416);
    v29 = *(a2 + 408);
    *(this + 176) = v28;
    v30 = *(a2 + 384);
    v31 = *(a2 + 400);
    v32 = v30 + v28;
    v33 = *(this + 147) & 0x7FFFFFFF;
    if (v30 + v28 > v33)
    {
      v34 = (v32 & 0xFFFFFFE0) + 32;
      if ((*(this + 167) & 0x7FFFFFFFu) < v34)
      {
        physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(this + 656, (v32 & 0xFFFFFFE0) + 32);
        v33 = *(this + 147) & 0x7FFFFFFF;
      }

      if (v33 < v34)
      {
        physx::shdfnd::Array<physx::PxTGSSolverBodyVel,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyVel>>>::recreate(this + 72, (v32 & 0xFFFFFFE0) + 32);
      }

      if ((*(this + 151) & 0x7FFFFFFFu) < v34)
      {
        physx::shdfnd::Array<physx::PxTGSSolverBodyTxInertia,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyTxInertia>>>::recreate(this + 74, (v32 & 0xFFFFFFE0) + 32);
      }

      if ((*(this + 155) & 0x7FFFFFFFu) < v34)
      {
        physx::shdfnd::Array<physx::PxTGSSolverBodyData,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyData>>>::recreate(this + 76, (v32 & 0xFFFFFFE0) + 32);
      }
    }

    v65 = a2;
    v63 = v31;
    v64 = v30;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    physx::shdfnd::Array<physx::PxTGSSolverBodyVel,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyVel>>>::resize(this + 576, v32 + 1, &v66);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    physx::shdfnd::Array<physx::PxTGSSolverBodyTxInertia,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyTxInertia>>>::resize(this + 592, v32 + 1, &v66);
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    physx::shdfnd::Array<physx::PxTGSSolverBodyData,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyData>>>::resize(this + 608, (v32 + 1), &v66);
    LODWORD(v66) = 0;
    physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::resize(this + 656, v32 + 1, &v66);
    v35 = *(this + 72);
    *v35 = *(this + 32);
    *(v35 + 8) = *(this + 66);
    *(v35 + 12) = *(this + 67);
    *(v35 + 16) = *(this + 34);
    *(v35 + 24) = *(this + 70);
    *(v35 + 28) = *(this + 71);
    *(v35 + 32) = *(this + 18);
    *(v35 + 48) = *(this + 38);
    *(v35 + 56) = *(this + 78);
    *(v35 + 60) = *(this + 79);
    v36 = *(this + 74);
    *v36 = *(this + 20);
    *(v36 + 16) = *(this + 42);
    *(v36 + 24) = *(this + 43);
    *(v36 + 32) = *(this + 44);
    *(v36 + 40) = *(this + 45);
    *(v36 + 48) = *(this + 46);
    *(v36 + 56) = *(this + 47);
    v37 = *(this + 76);
    *v37 = *(this + 24);
    *(v37 + 16) = *(this + 50);
    *(v37 + 24) = *(this + 102);
    v38 = *(this + 412);
    *(v37 + 44) = *(this + 107);
    *(v37 + 28) = v38;
    if (v28)
    {
      v39 = v29;
      v40 = 0;
      v41 = a2 + 224;
      v42 = v28;
      do
      {
        v43 = v42 - 1024;
        v44 = v28;
        if (v42 >= 0x400)
        {
          v45 = 1024;
        }

        else
        {
          v45 = v42;
        }

        v46 = physx::Cm::FlushPool::allocate(*(this + 97), 88, 0x10u);
        v47 = v40 + 1;
        v48 = *(this + 72) + (v47 << 6);
        v49 = *(this + 74) + (v47 << 6);
        v50 = *(this + 76) + 48 * v47;
        *(v46 + 8) = *(this + 100);
        *(v46 + 16) = 0;
        *(v46 + 32) = 0;
        *v46 = &unk_1F5D1DE18;
        *(v46 + 40) = v39 + 4 * v40;
        *(v46 + 48) = v45;
        v28 = v44;
        *(v46 + 56) = v41;
        *(v46 + 64) = v48;
        *(v46 + 72) = v49;
        *(v46 + 80) = v50;
        *(v46 + 32) = 1;
        *(v46 + 24) = v27;
        (*(*v27 + 32))(v27);
        *(v46 + 16) = *(*(v46 + 24) + 16);
        (*(*v46 + 40))(v46);
        v40 += 1024;
        v42 = v43;
      }

      while (v40 < v44);
    }

    v51 = *(v65 + 456);
    v52 = v51 + (v63 << 6) + *(v65 + 460);
    *(this + 114) = 0;
    v53 = (v52 + 63) & 0xFFFFFFC0;
    if ((*(this + 115) & 0x7FFFFFFFu) < v53)
    {
      physx::shdfnd::Array<physx::PxSolverConstraintDesc,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>>>::recreate(this + 448, (v52 + 63) & 0xFFFFFFC0);
    }

    *(this + 114) = v52;
    *(this + 118) = 0;
    if ((*(this + 119) & 0x7FFFFFFFu) < v53)
    {
      physx::shdfnd::Array<physx::PxSolverConstraintDesc,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>>>::recreate(this + 464, (v52 + 63) & 0xFFFFFFC0);
    }

    *(this + 118) = v52;
    *(this + 126) = 0;
    if ((*(this + 127) & 0x7FFFFFFFu) < v53)
    {
      physx::shdfnd::Array<physx::PxConstraintBatchHeader,physx::shdfnd::ReflectionAllocator<physx::PxConstraintBatchHeader>>::recreate(this + 496, (v52 + 63) & 0xFFFFFFC0);
    }

    *(this + 126) = v52;
    *(this + 122) = 0;
    if ((*(this + 123) & 0x7FFFFFFFu) < v53)
    {
      physx::shdfnd::Array<physx::PxSolverConstraintDesc,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxSolverConstraintDesc>>>::recreate(this + 480, (v52 + 63) & 0xFFFFFFC0);
    }

    *(this + 122) = v52;
    *(this + 174) = 0;
    v54 = (v51 + 63) & 0xFFFFFFC0;
    if ((*(this + 175) & 0x7FFFFFFFu) < v54)
    {
      physx::shdfnd::Array<physx::PxsIndexedContactManager,physx::shdfnd::ReflectionAllocator<physx::PxsIndexedContactManager>>::recreate(this + 688, v54);
    }

    *(this + 174) = v51;
    *(this + 130) = 0;
    v55 = (v64 + 63) & 0xFFFFFFC0;
    if ((*(this + 131) & 0x7FFFFFFFu) < v55)
    {
      physx::shdfnd::Array<physx::Cm::SpatialVector,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVector>>::recreate(this + 512, (v64 + 63) & 0xFFFFFFC0);
    }

    *(this + 130) = v64;
    *(this + 134) = 0;
    if ((*(this + 135) & 0x7FFFFFFFu) < v55)
    {
      physx::shdfnd::Array<physx::PxsBodyCore *,physx::shdfnd::ReflectionAllocator<physx::PxsBodyCore *>>::recreate(this + 528, v55);
    }

    *(this + 134) = v64;
    *(this + 138) = 0;
    if ((*(this + 139) & 0x7FFFFFFFu) < v55)
    {
      physx::shdfnd::Array<physx::PxsRigidBody *,physx::shdfnd::ReflectionAllocator<physx::PxsRigidBody *>>::recreate(this + 544, v55);
    }

    *(this + 138) = v64;
    *(this + 142) = 0;
    v56 = (v63 + 63) & 0xFFFFFFC0;
    if ((*(this + 143) & 0x7FFFFFFFu) < v56)
    {
      physx::shdfnd::Array<physx::Dy::ArticulationV *,physx::shdfnd::ReflectionAllocator<physx::Dy::ArticulationV *>>::recreate(this + 560, v56);
    }

    *(this + 142) = v63;
    *(this + 170) = 0;
    if ((*(this + 171) & 0x7FFFFFFFu) < v55)
    {
      physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::recreate(this + 672, v55);
    }

    *(this + 170) = v64;
    v57 = *(this + 1);
    *(v57 + 16) = 0;
    v58 = v51 - 1;
    if (!v51)
    {
      v58 = 0;
    }

    v59 = v58 | (v58 >> 1) | ((v58 | (v58 >> 1)) >> 2);
    v60 = v59 | (v59 >> 4) | ((v59 | (v59 >> 4)) >> 8);
    v61 = (v60 | HIWORD(v60)) + 1;
    if ((*(v57 + 20) & 0x7FFFFFFFu) < v61)
    {
      physx::shdfnd::Array<physx::Dy::ThresholdStreamElement,physx::shdfnd::VirtualAllocator>::recreate(v57, v61);
    }

    *(this + 198) = 1 - *(this + 198);
    return (*(*v27 + 40))(v27);
  }

  else
  {
    *(v26 + 75) = 0;
    *(this + 177) = 0;

    return physx::Dy::DynamicsTGSContext::resetThreadContexts(this);
  }
}

uint64_t physx::shdfnd::Array<physx::PxTGSSolverBodyVel,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyVel>>>::resize(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::PxTGSSolverBodyVel,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyVel>>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = *v5 + (a2 << 6);
    v8 = *v5 + (v6 << 6);
    do
    {
      *v8 = *a3;
      *(v8 + 8) = *(a3 + 8);
      *(v8 + 12) = *(a3 + 12);
      *(v8 + 16) = *(a3 + 16);
      *(v8 + 24) = *(a3 + 24);
      *(v8 + 28) = *(a3 + 28);
      *(v8 + 32) = *(a3 + 32);
      *(v8 + 48) = *(a3 + 48);
      *(v8 + 56) = *(a3 + 56);
      *(v8 + 60) = *(a3 + 60);
      v8 += 64;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxTGSSolverBodyTxInertia,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyTxInertia>>>::resize(uint64_t result, unsigned int a2, __int128 *a3)
{
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::PxTGSSolverBodyTxInertia,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyTxInertia>>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < a2)
  {
    v7 = *v5 + (a2 << 6);
    v8 = *v5 + (v6 << 6);
    v9 = *a3;
    do
    {
      *v8 = v9;
      *(v8 + 16) = *(a3 + 2);
      *(v8 + 24) = *(a3 + 3);
      *(v8 + 32) = *(a3 + 4);
      *(v8 + 40) = *(a3 + 5);
      *(v8 + 48) = *(a3 + 6);
      *(v8 + 56) = *(a3 + 7);
      v8 += 64;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxTGSSolverBodyData,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyData>>>::resize(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  if ((*(result + 12) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::PxTGSSolverBodyData,physx::shdfnd::AlignedAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxTGSSolverBodyData>>>::recreate(result, a2);
  }

  v6 = *(v5 + 8);
  if (v6 < v4)
  {
    v7 = *v5 + 48 * v4;
    v8 = *v5 + 48 * v6;
    do
    {
      *v8 = *a3;
      *(v8 + 16) = *(a3 + 16);
      *(v8 + 24) = *(a3 + 24);
      v9 = *(a3 + 28);
      *(v8 + 44) = *(a3 + 44);
      *(v8 + 28) = v9;
      v8 += 48;
    }

    while (v8 < v7);
  }

  *(v5 + 8) = v4;
  return result;
}

void physx::Dy::DynamicsTGSContext::preIntegrateBodies(float32x2_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, unsigned int a7, float32x2_t *a8, float a9, unsigned int *a10, unsigned int *a11)
{
  if (a7)
  {
    v15 = 0;
    v16 = 0;
    v17 = a5 + 48;
    v18 = a4 + 64;
    v19 = a3 + 64;
    v20 = a7;
    v38 = a9;
    do
    {
      v21 = *a1;
      if ((*a1)[3].i16[3] > v15)
      {
        v15 = (*a1)[3].i16[3];
      }

      if (HIBYTE((*a1)[3].u16[3]) > v16)
      {
        v16 = HIBYTE((*a1)[3].u16[3]);
      }

      v22 = v21[8];
      v23 = v21[9].f32[0];
      if (!v21[19].i8[5])
      {
        v24 = *(*a2 + 76);
        v22 = vadd_f32(v22, vmul_n_f32(vmul_n_f32(*a8, a9), v24));
        v23 = v23 + (v24 * (a8[1].f32[0] * a9));
      }

      v25 = v21[12].f32[1];
      v26 = 1.0 - (v21[13].f32[0] * a9);
      v27 = 1.0 - (v21[13].f32[1] * a9);
      if (v26 < 0.0)
      {
        v26 = 0.0;
      }

      if (v27 < 0.0)
      {
        v27 = 0.0;
      }

      v28 = vmul_n_f32(v22, v26);
      v29 = v26 * v23;
      v30 = (COERCE_FLOAT(vmul_f32(v28, v28).i32[1]) + (v28.f32[0] * v28.f32[0])) + (v29 * v29);
      if (v30 > v25)
      {
        v31 = sqrtf(v25 / v30);
        v28 = vmul_n_f32(v28, v31);
        v29 = v29 * v31;
      }

      v32 = v21[12].f32[0];
      v33 = vmul_n_f32(v21[10], v27);
      v34 = v27 * v21[11].f32[0];
      v35 = (COERCE_FLOAT(vmul_f32(v33, v33).i32[1]) + (v33.f32[0] * v33.f32[0])) + (v34 * v34);
      if (v35 > v32)
      {
        v36 = sqrtf(v32 / v35);
        v33 = vmul_n_f32(v33, v36);
        v34 = v34 * v36;
      }

      v21[8] = v28;
      v21[9].f32[0] = v29;
      v21[10] = v33;
      v21[11].f32[0] = v34;
      v37 = *a6++;
      physx::Dy::copyToSolverBodyDataStep(&v21[8], &v21[10], &v21[14], v21, v37, v21[19].u8[6], 0, v19, v21[15].f32[1], v21[9].f32[1], v21[16].f32[0], v21[11].f32[1], v32, v18, v17);
      v17 += 48;
      v18 += 64;
      v19 += 64;
      a2 += 8;
      ++a1;
      --v20;
      a9 = v38;
    }

    while (v20);
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  *a10 = v15;
  *a11 = v16;
}

uint64_t physx::Dy::createFinalizeSolverContactsStep(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, float a5, double a6, double a7, float a8, float a9)
{
  *(a3 + 4112) = 0;
  if (*(a1 + 128) == 8 || (v10 = 0, (*(*(a1 + 24) + 62) & 1) == 0))
  {
    v10 = *(a1 + 4);
  }

  *(a1 + 4) = v10;
  if (*(a1 + 132) == 8 || (v11 = 0.0, (*(*(a1 + 32) + 62) & 1) == 0))
  {
    v11 = *(a1 + 12);
  }

  v12 = a3 + 16;
  *(a1 + 12) = v11;
  v13 = *a2;
  __asm { FMOV            V7.4S, #1.0 }

  if (!*a2)
  {
    LOBYTE(v23) = 0;
LABEL_45:
    v24 = 0;
    goto LABEL_46;
  }

  v19 = *(v13 + 43);
  if ((v19 & 2) != 0)
  {
    v20 = 64;
  }

  else
  {
    v20 = 16;
  }

  if ((*(v13 + 43) & 4) != 0)
  {
    LOBYTE(v23) = 0;
    LOBYTE(v13) = 0;
    goto LABEL_45;
  }

  v21 = *(a2 + 25);
  v22 = v19;
  _Q7 = *v13;
  v23 = (v19 >> 5) & 1;
  v24 = 0;
  if (*(a2 + 25))
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v19 & 0x82;
    if ((v22 & 2) != 0)
    {
      v29 = 6;
    }

    else
    {
      v29 = 4;
    }

    if (v22 < 0)
    {
      v20 = 32;
      v29 = 5;
    }

    v30 = *(a1 + 208);
    _X1 = a2[1];
    while (1)
    {
      if (v25)
      {
        v32 = *(v13 + 41);
        _CF = v32 >= v26;
        v34 = v32 - v26;
        v33 = v34 != 0 && _CF;
        LODWORD(v35) = v34 << v29;
        if (v33)
        {
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        _X1 += v35;
        v13 += 48;
      }

      v26 = *(v13 + 41);
      if (*(v13 + 41))
      {
        break;
      }

LABEL_41:
      if (++v25 == v21)
      {
        goto LABEL_42;
      }
    }

    if (v27)
    {
      v36 = v20;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(v13 + 41);
    while (1)
    {
      _X1 += v36;
      __asm { PRFM            #0, [X1,#0x80] }

      _X6 = v12 + (v24 << 6);
      __asm { PRFM            #0, [X6,#0x80] }

      v41 = v30;
      if ((v22 & 0x20) != 0)
      {
        if (!v28)
        {
          v41 = 3.4028e38;
LABEL_35:
          *&v42 = *(v13 + 16);
          DWORD2(v42) = *(v13 + 24);
          HIDWORD(v42) = *(_X1 + 12);
          *_X6 = v42;
          *(_X6 + 16) = *_X1;
          LODWORD(v42) = *(_X1 + 8);
          *(_X6 + 48) = *(v13 + 42);
          *(_X6 + 24) = v42;
          *(_X6 + 28) = v41;
          *(_X6 + 44) = *(v13 + 36);
          *(_X6 + 56) = vrev64_s32(*(v13 + 28));
          if (v28)
          {
            v43 = *(_X1 + 16);
            v44 = *(_X1 + 24);
          }

          else
          {
            v43 = 0;
            v44 = 0;
          }

          *(_X6 + 32) = v43;
          *(_X6 + 40) = v44;
          ++v24;
          goto LABEL_39;
        }

        v41 = *(_X1 + 28);
      }

      if (v41 != 0.0)
      {
        goto LABEL_35;
      }

LABEL_39:
      v36 = v20;
      if (!--v37)
      {
        v27 = 1;
        goto LABEL_41;
      }
    }
  }

LABEL_42:
  LODWORD(v13) = (v22 >> 4) & 1;
LABEL_46:
  *(a3 + 4112) = v24;
  *(a1 + 144) = v12;
  *(a1 + 152) = v24;
  *(a1 + 157) |= v13;
  v45.i32[0] = *a1;
  v45.i32[1] = v10;
  v45.i32[2] = *(a1 + 8);
  v45.f32[3] = v11;
  *(a1 + 156) = v23;
  v46 = vmulq_f32(_Q7, v45);
  *a1 = v46;

  return physx::Dy::createFinalizeSolverContactsStep(a1, a3 + 4128, a4, a5, a6, a7, a8, a9, v46.f32[0], v11, _Q7.f32[0]);
}

unint64_t physx::Dy::SetupSolverConstraintStep(uint64_t a1, uint64_t a2, uint64_t (***a3)(void, void), float a4, float a5, float a6, float a7, float a8)
{
  v31 = *MEMORY[0x1E69E9840];
  *(*(a2 + 16) + 30) = 0;
  v8 = *(a1 + 8);
  if (!v8)
  {
    return 0;
  }

  bzero(v30, 0x3C0uLL);
  for (i = 0; i != 960; i += 80)
  {
    v18 = &v30[i];
    *(v18 + 11) = -8388609;
    *(v18 + 15) = 2139095039;
  }

  __asm { FMOV            V0.4S, #1.0 }

  *a2 = _Q0;
  v29 = 0;
  v24 = *(a1 + 16);
  v25 = *(a2 + 171);
  v28 = 0;
  v26 = v8(v30, &v28, 12, a2, v24, a2 + 72, a2 + 100, v25, a2 + 184, a2 + 196);
  *(a2 + 136) = v30;
  *(a2 + 144) = v26;
  *(a2 + 172) = v28;
  *(a2 + 180) = v29;
  if (*(a2 + 128) != 8 && *(*(a2 + 24) + 62) == 1)
  {
    *(a2 + 4) = 0;
  }

  if (*(a2 + 132) != 8 && *(*(a2 + 32) + 62) == 1)
  {
    *(a2 + 12) = 0;
  }

  return physx::Dy::setupSolverConstraintStep(a2, a3, a4, a5, a6, a7, a8);
}

unsigned int *physx::Dy::solveContactBlock(unsigned int *result, uint64_t a2, int32x2_t a3, int32x2_t a4)
{
  v4 = *(result + 2);
  if (*result < *result + v4)
  {
    v5 = a4.i32[0];
    v6 = a3.i32[0];
    v7 = a2 + 48 * *result;
    do
    {
      a3.i32[0] = v6;
      a4.i32[0] = v5;
      result = physx::Dy::solveContact(v7, a3, a4);
      v7 += 48;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t **physx::Dy::solve1DBlock(uint64_t **result, uint64_t a2, uint64_t a3, int32x2_t a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v9 = *(result + 2);
  if (*result < (*result + v9))
  {
    v10 = LODWORD(a5);
    v12 = (a2 + 48 * *result);
    do
    {
      a4.i32[0] = v10;
      result = physx::Dy::solve1DStep(v12, a3, a4, a5, a6, a7, a8, a9);
      v12 += 6;
      --v9;
    }

    while (v9);
  }

  return result;
}

_DWORD *physx::Dy::solveExtContactBlock(_DWORD *result, uint64_t a2, float a3, float32_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 2);
  if (*result < (*result + v6))
  {
    v10 = (a2 + 48 * *result);
    do
    {
      result = physx::Dy::solveExtContactStep(v10, a6, a3, a4);
      v10 += 48;
      --v6;
    }

    while (v6);
  }

  return result;
}

_DWORD *physx::Dy::solveExt1DBlock(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, double a5, float a6)
{
  v6 = *(result + 2);
  if (*result < (*result + v6))
  {
    v10 = a2 + 48 * *result;
    do
    {
      result = physx::Dy::solveExt1DStep(v10, a4, a3, a6);
      v10 += 48;
      --v6;
    }

    while (v6);
  }

  return result;
}

unsigned int *physx::Dy::writeBackContact(unsigned int *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (*result < *result + v2)
  {
    v3 = a2 + 48 * *result;
    do
    {
      result = physx::Dy::writeBackContact(v3);
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  return result;
}

unsigned int *physx::Dy::writeBack1D(unsigned int *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (*result < *result + v2)
  {
    v3 = a2 + 48 * *result;
    do
    {
      result = physx::Dy::writeBack1D(v3);
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  return result;
}

unsigned int *physx::Dy::solveConcludeContactBlock(unsigned int *result, uint64_t a2, int32x2_t a3, int32x2_t a4)
{
  v4 = *(result + 2);
  if (*result < *result + v4)
  {
    v5 = a3.i32[0];
    v6 = a2 + 48 * *result;
    do
    {
      a3.i32[0] = -8388609;
      a4.i32[0] = v5;
      result = physx::Dy::solveContact(v6, a3, a4);
      v6 += 48;
      --v4;
    }

    while (v4);
  }

  return result;
}

_BYTE *physx::Dy::solveConclude1DBlock(_BYTE *result, uint64_t a2, uint64_t a3, int32x2_t a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v9 = *(result + 2);
  if (*result < (*result + v9))
  {
    v10 = a4.i32[0];
    v12 = a2 + 48 * *result;
    do
    {
      a4.i32[0] = v10;
      physx::Dy::solve1DStep(v12, a3, a4, a5, a6, a7, a8, a9);
      result = physx::Dy::conclude1DStep(*(v12 + 32));
      v12 += 48;
      --v9;
    }

    while (v9);
  }

  return result;
}

_DWORD *physx::Dy::solveConcludeContactExtBlock(_DWORD *result, uint64_t a2, float32_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 2);
  if (*result < (*result + v5))
  {
    v8 = (a2 + 48 * *result);
    do
    {
      result = physx::Dy::solveExtContactStep(v8, a5, -3.4028e38, a3);
      v8 += 48;
      --v5;
    }

    while (v5);
  }

  return result;
}

_BYTE *physx::Dy::solveConclude1DBlockExt(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = *(result + 2);
  if (*result < (*result + v5))
  {
    v9 = a2 + 48 * *result;
    do
    {
      physx::Dy::solveExt1DStep(v9, a4, a3, a5);
      result = physx::Dy::conclude1DStep(*(v9 + 32));
      v9 += 48;
      --v5;
    }

    while (v5);
  }

  return result;
}

float32_t physx::Dy::integrateCoreStep(float32x2_t *a1, uint64_t a2, float a3, double a4, __n128 a5)
{
  v5 = a3;
  v8 = a1[7].i16[2];
  if (!v8)
  {
    goto LABEL_9;
  }

  if (v8)
  {
    a1->i32[0] = 0;
    if ((v8 & 2) == 0)
    {
LABEL_4:
      if ((v8 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_4;
  }

  a1->i32[1] = 0;
  if ((v8 & 4) == 0)
  {
LABEL_5:
    if ((v8 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    a1[2].i32[0] = 0;
    if ((v8 & 0x10) == 0)
    {
LABEL_7:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_14:
  a1[1].i32[0] = 0;
  if ((v8 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((v8 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  a1[2].i32[1] = 0;
  if ((v8 & 0x20) != 0)
  {
LABEL_8:
    a1[3].i32[0] = 0;
  }

LABEL_9:
  v9 = vmul_n_f32(*a1, a3);
  v10 = a1[1].f32[0] * a3;
  v11 = a1[2];
  v12 = a1[3].f32[0];
  a5.n128_u64[0] = vadd_f32(vadd_f32(vmul_n_f32(*(a2 + 28), v11.f32[0]), vmul_lane_f32(*(a2 + 40), v11, 1)), vmul_n_f32(*(a2 + 52), v12));
  v13 = ((*(a2 + 36) * v11.f32[0]) + vmuls_lane_f32(*(a2 + 48), v11, 1)) + (v12 * *(a2 + 60));
  v14 = (COERCE_FLOAT(vmul_f32(*&a5, *&a5).i32[1]) + (a5.n128_f32[0] * a5.n128_f32[0])) + (v13 * v13);
  *(a2 + 16) = vadd_f32(v9, *(a2 + 16));
  *(a2 + 24) = v10 + *(a2 + 24);
  if (v14 != 0.0)
  {
    v15 = sqrtf(v14);
    v34 = v11;
    v35 = v5;
    v32 = a5;
    v33 = v12;
    v16 = __sincosf_stret((v15 * v5) * 0.5);
    v17.i32[3] = v32.n128_i32[3];
    *v17.i8 = vmul_n_f32(v32.n128_u64[0], v16.__sinval / v15);
    *&v17.i32[2] = v13 * (v16.__sinval / v15);
    v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
    *&v17.i32[3] = -*v17.i32;
    v19 = vzip1q_s32(vrev64q_s32(*a2), v18);
    v20 = vzip2q_s32(v18, *a2);
    v21 = vrev64q_s32(v18);
    v18.f32[3] = -*&v17.i32[1];
    v22 = vzip1q_s32(*a2, *a2);
    v22.i32[0] = *(a2 + 8);
    _Q2 = vmlaq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(*a2, 3), *a2, 4uLL), v17), 0, *a2), v22, v18);
    v19.i32[1] = v22.i32[0];
    v24 = vzip1q_s32(v21, v20);
    v12 = v33;
    v11 = v34;
    v5 = v35;
    _Q0 = vaddq_f32(vmulq_n_f32(*a2, v16.__cosval), vmlsq_f32(_Q2, v24, v19));
    _Q1 = vmulq_f32(_Q0, _Q0);
    _Q2.i32[0] = _Q0.i32[2];
    __asm { FMLA            S1, S2, V0.S[2] }

    _Q2.i32[0] = _Q0.i32[3];
    __asm { FMLA            S1, S2, V0.S[3] }

    _Q1.f32[0] = sqrtf(_Q1.f32[0]);
    *a2 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
  }

  a1[4] = vadd_f32(vmul_n_f32(v11, v5), a1[4]);
  a1[5].f32[0] = (v12 * v5) + a1[5].f32[0];
  a1[6] = vadd_f32(v9, a1[6]);
  result = v10 + a1[7].f32[0];
  a1[7].f32[0] = result;
  return result;
}

uint64_t physx::Dy::DynamicsTGSContext::stepArticulations(uint64_t result, uint64_t a2, float a3)
{
  v3 = *(a2 + 4);
  if ((v3 & 0x7FFFFFFF) != 0)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(v6 + 12288);
      v10 = physx::Dy::ArticulationPImpl::sUpdateDeltaMotion[*(*(v9 + v7) + 40)];
      if (v10)
      {
        result = v10(v9 + v7, *(v6 + 12176), a3);
        v3 = *(a2 + 4);
      }

      ++v8;
      v7 += 96;
    }

    while (v8 < (v3 & 0x7FFFFFFFu));
  }

  return result;
}

float32x2_t *physx::Dy::createImpulseResponseVector(float32x2_t *result, float32x2_t *a2, float *a3, uint64_t a4, __int16 a5)
{
  if (a5 == -1)
  {
    v7 = a3[1];
    v8 = a3[2];
    v9 = v8 * *(a4 + 60);
    v5 = vadd_f32(vadd_f32(vmul_n_f32(*(a4 + 28), *a3), vmul_n_f32(*(a4 + 40), v7)), vmul_n_f32(*(a4 + 52), v8));
    v6 = ((*a3 * *(a4 + 36)) + (v7 * *(a4 + 48))) + v9;
  }

  else
  {
    v5 = *a3;
    v6 = a3[2];
  }

  v10 = a2[1].i32[0];
  *result = *a2;
  result[1].i32[0] = v10;
  result[1].i32[1] = 0;
  result[2] = v5;
  result[3].f32[0] = v6;
  result[3].i32[1] = 0;
  return result;
}

float physx::Dy::getImpulseResponse(uint64_t *a1, float32x2_t *a2, float32x2_t *a3, uint64_t *a4, float32x2_t *a5, float32x2_t *a6, float a7, float a8, float a9, float a10)
{
  v57 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 12);
  if (v15 == 0xFFFF)
  {
    v25 = *(a1[2] + 32);
    v21 = (v25 * a2[1].f32[0]) * a7;
    v20 = vmul_n_f32(vmul_n_f32(*a2, v25), a7);
    *a3 = v20;
    a3[1].f32[0] = v21;
    v24 = a2[3].f32[0] * a8;
    v23 = vmul_n_f32(a2[2], a8);
    a3[2] = v23;
    a3[3].f32[0] = v24;
    v19 = v20.f32[1];
    v22 = v23.f32[1];
  }

  else
  {
    v16 = *a1;
    v17 = a2[1].f32[0] * a7;
    v46 = a9;
    v48 = a10;
    v18 = a2[3].f32[0] * a8;
    v50 = vmul_n_f32(*a2, a7);
    v51 = v17;
    v52 = 0;
    v53 = vmul_n_f32(a2[2], a8);
    v54 = v18;
    v55 = 0;
    (*(*v16 + 208))(v16, v15, v56, &v50, a3);
    a9 = v46;
    a10 = v48;
    v20.i32[0] = a3->i32[0];
    v19 = a3->f32[1];
    v21 = a3[1].f32[0];
    v23.i32[0] = a3[2].i32[0];
    v22 = a3[2].f32[1];
    v24 = a3[3].f32[0];
  }

  v26 = a2->f32[0];
  v27 = a2->f32[1];
  v28 = a2[1].f32[0];
  v30 = a2[2].f32[0];
  v29 = a2[2].f32[1];
  v31 = a2[3].f32[0];
  v32 = *(a4 + 12);
  if (v32 == 0xFFFF)
  {
    v42 = *(a4[2] + 32);
    v38 = (v42 * a5[1].f32[0]) * a9;
    v36 = vmul_n_f32(vmul_n_f32(*a5, v42), a9);
    *a6 = v36;
    a6[1].f32[0] = v38;
    v41 = a5[3].f32[0] * a10;
    v39 = vmul_n_f32(a5[2], a10);
    a6[2] = v39;
    a6[3].f32[0] = v41;
    v37 = v36.f32[1];
    v40 = v39.f32[1];
  }

  else
  {
    v33 = *a4;
    v34 = a5[1].f32[0] * a9;
    v35 = a5[3].f32[0] * a10;
    v50 = vmul_n_f32(*a5, a9);
    v51 = v34;
    v52 = 0;
    v53 = vmul_n_f32(a5[2], a10);
    v54 = v35;
    v55 = 0;
    v47 = v23.i32[0];
    v49 = v20.i32[0];
    v44 = v19;
    v45 = v27;
    (*(*v33 + 208))(v33, v32, v56, &v50, a6);
    v19 = v44;
    v27 = v45;
    v23.i32[0] = v47;
    v20.i32[0] = v49;
    v36.i32[0] = a6->i32[0];
    v37 = a6->f32[1];
    v38 = a6[1].f32[0];
    v39.i32[0] = a6[2].i32[0];
    v40 = a6[2].f32[1];
    v41 = a6[3].f32[0];
  }

  return ((((v19 * v27) + (v26 * v20.f32[0])) + (v28 * v21)) + (((v22 * v29) + (v30 * v23.f32[0])) + (v31 * v24))) + ((((v37 * a5->f32[1]) + (a5->f32[0] * v36.f32[0])) + (a5[1].f32[0] * v38)) + (((v40 * a5[2].f32[1]) + (a5[2].f32[0] * v39.f32[0])) + (a5[3].f32[0] * v41)));
}

float32x2_t physx::Dy::getImpulseResponse(uint64_t *a1, float32x4_t *a2, float32x4_t *a3, float32x2_t *a4, uint64_t *a5, float32x4_t *a6, float32x4_t *a7, float32x2_t *a8, double a9, double a10, float32x2_t a11, void *a12)
{
  v18 = *(a1 + 12);
  if (v18 == 0xFFFF)
  {
    a11.i32[0] = *(a1[2] + 32);
    v23 = vmulq_n_f32(*a2, vmul_f32(a11, *&a9).f32[0]);
    v23.i32[3] = 0;
    *a3 = v23;
    v22 = *a4;
    v24 = vmulq_n_f32(a2[1], COERCE_FLOAT(*a4));
    v24.i32[3] = 0;
    a3[1] = v24;
  }

  else
  {
    v19 = *a1;
    v20 = vmulq_n_f32(*a2, *&a9);
    v20.i32[3] = 0;
    v21 = vmulq_n_f32(a2[1], COERCE_FLOAT(*a4));
    v21.i32[3] = 0;
    v39 = v20;
    v40 = v21;
    (*(*v19 + 216))(v19, v18, 0, &v39, a3);
    v23 = *a3;
    v24 = a3[1];
  }

  v25 = *a2;
  v26 = a2[1];
  v27 = *(a5 + 12);
  if (v27 == 0xFFFF)
  {
    v22.i32[0] = *(a5[2] + 32);
    v31 = vmulq_n_f32(*a6, vmul_f32(v22, *a8).f32[0]);
    v31.i32[3] = 0;
    *a7 = v31;
    v32 = vmulq_n_f32(a6[1], COERCE_FLOAT(*a12));
    v32.i32[3] = 0;
    a7[1] = v32;
  }

  else
  {
    v28 = *a5;
    v29 = vmulq_n_f32(*a6, COERCE_FLOAT(*a8));
    v29.i32[3] = 0;
    v30 = vmulq_n_f32(a6[1], COERCE_FLOAT(*a12));
    v30.i32[3] = 0;
    v39 = v29;
    v40 = v30;
    v37 = v24;
    v38 = v23;
    v35 = v26;
    v36 = v25;
    (*(*v28 + 216))(v28, v27, 0, &v39, a7);
    v26 = v35;
    v25 = v36;
    v24 = v37;
    v23 = v38;
    v31 = *a7;
    v32 = a7[1];
  }

  v33 = vaddq_f32(vaddq_f32(vmulq_f32(v23, v25), vmulq_f32(v24, v26)), vaddq_f32(vmulq_f32(v31, *a6), vmulq_f32(v32, a6[1])));
  v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
  return vpadd_f32(*v33.f32, *v33.f32);
}

float physx::Dy::SolverExtBodyStep::projectVelocity(uint64_t a1, float *a2, float *a3)
{
  if (*(a1 + 24) == 0xFFFF)
  {
    v9 = *(a1 + 16);
    return (((v9[1] * a2[1]) + (*v9 * *a2)) + (v9[2] * a2[2])) + (((v9[5] * a3[1]) + (v9[4] * *a3)) + (v9[6] * a3[2]));
  }

  else
  {
    (*(**a1 + 232))(v10);
    v5.i64[0] = *a2;
    v5.i64[1] = *(a2 + 2);
    v6.i64[0] = *a3;
    v6.i64[1] = *(a3 + 2);
    v7 = vaddq_f32(vmulq_f32(v5, v10[0]), vmulq_f32(v6, v10[1]));
    v7.i64[0] = vpaddq_f32(v7, v7).u64[0];
    LODWORD(result) = vpadd_f32(*v7.f32, *v7.f32).u32[0];
  }

  return result;
}

uint64_t physx::Dy::createFinalizeSolverContactsStep(uint64_t a1, uint64_t a2, uint64_t a3, float a4, double a5, double a6, float a7, float a8, float a9, float a10, float a11)
{
  _X9 = *(a1 + 24);
  _X8 = *(a1 + 32);
  __asm
  {
    PRFM            #0, [X9]
    PRFM            #0, [X8]
  }

  _X19 = a2 + 7684;
  *(a2 + 7684) = 0;
  v681 = *(a1 + 158);
  v22 = *(a1 + 128);
  v21 = *(a1 + 132);
  _ZF = v21 == 4 || v21 == 2;
  v24 = _ZF;
  v25 = *(a1 + 157);
  v26 = *(a1 + 16);
  *(v26 + 30) = 0;
  v27 = *(a1 + 152);
  if (!v27)
  {
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    result = 1;
    *(v26 + 32) = 0;
    return result;
  }

  if ((v25 & 1) == 0)
  {
    physx::Dy::getFrictionPatches(a2, *(a1 + 168), *(a1 + 176), (a1 + 72), (a1 + 100), a8, a5, a6, a7, a8, a9, a10, a11);
    v27 = *(a1 + 152);
  }

  v30 = v22 | v21;
  v31 = a1;
  physx::Dy::createContactPatches(a2, *(a1 + 144), v27, 0.999);
  physx::Dy::correlatePatches(a2, *(v31 + 144), (v31 + 72), (v31 + 100), 0, 0, 0.999);
  physx::Dy::growPatches(a2, *(v31 + 144), (v31 + 72), (v31 + 100), 0, a8, *(v31 + 160) + a7);
  v35 = *(a2 + 7688);
  if (!v35)
  {
    _X15 = 0;
    v50 = 0;
    LOBYTE(v37) = 0;
    v52 = 0;
    v55 = a1;
LABEL_58:
    *(v55 + 168) = _X15;
    v661 = v52;
    *(v26 + 32) = v52;
    *(v55 + 176) = v37;
    *(v26 + 30) = v50 >> 4;
    v62 = *(v55 + 184);
    *(v26 + 40) = v62;
    if (v62)
    {
      v63 = *(v55 + 152);
    }

    else
    {
      v63 = 0;
    }

    *(v26 + 28) = v63;
    v64 = a2;
    if (_X15)
    {
      __asm
      {
        PRFM            #0, [X15]
        PRFM            #0, [X15,#0x80]
        PRFM            #0, [X15,#0x100]
      }

      v68 = *(a2 + 7688);
      if (v68)
      {
        v69 = 0;
        v70 = 104 * v68;
        v71 = 7296;
        _X11 = _X15;
        do
        {
          if (*(a2 + v71))
          {
            *_X11 = *(a2 + v69 + 2816);
            *(_X11 + 20) = *(a2 + v69 + 2836);
            *(_X11 + 32) = *(a2 + v69 + 2848);
            *(_X11 + 44) = *(a2 + v69 + 2860);
            *(_X11 + 56) = *(a2 + v69 + 2872);
            *(_X11 + 68) = *(a2 + v69 + 2884);
            *(_X11 + 80) = *(a2 + v69 + 2896);
            *(_X11 + 96) = *(a2 + v69 + 2912);
            v73 = (a2 + v69 + 2820);
            v32 = *v73;
            *(_X11 + 4) = *v73;
            *(_X11 + 28) = *(a2 + v69 + 2844);
            *(_X11 + 40) = *(a2 + v69 + 2856);
            *(_X11 + 52) = *(a2 + v69 + 2868);
            *(_X11 + 64) = *(a2 + v69 + 2880);
            *(_X11 + 76) = *(a2 + v69 + 2892);
            __asm { PRFM            #0, [X11,#0x168] }

            _X11 += 104;
          }

          v69 += 104;
          v71 += 4;
        }

        while (v70 != v69);
      }
    }

    if (v661)
    {
      v662 = _X15;
      v656 = v50;
      if ((v30 & 8) != 0)
      {
        v364 = *(v26 + 16);
        v366 = *(v55 + 24);
        v365 = *(v55 + 32);
        v367 = *(v55 + 40);
        v368 = *(v55 + 48);
        v785 = v366;
        v786 = v367;
        v370 = *(v55 + 56);
        v369 = *(v55 + 64);
        v787 = v370;
        v788 = v364;
        v371 = *(v26 + 18);
        v781 = v365;
        v782 = v368;
        v783 = v369;
        v784 = v371;
        if (v364 == 0xFFFF)
        {
          v372 = v366[62];
        }

        else
        {
          v372 = 0;
        }

        v33.n128_u32[0] = *(a1 + 216);
        v672 = *(a1 + 212);
        if (v371 == 0xFFFF)
        {
          v373 = v365[62];
        }

        else
        {
          v373 = 0;
        }

        v726 = *(a1 + 144);
        v32.n128_u32[0] = *a1;
        v670 = v32.n128_u64[0];
        v32.n128_u32[0] = *(a1 + 4);
        v685 = v32;
        v32.n128_u32[0] = *(a1 + 8);
        v674 = v32.n128_u64[0];
        v32.n128_u32[0] = *(a1 + 12);
        v684 = v32.n128_u64[0];
        v737 = *(a1 + 160);
        v776 = v33.n128_u64[0];
        v676 = fmaxf(v672, v33.n128_f32[0]) > 0.0;
        if (v364 == 0xFFFF)
        {
          v374 = *(v370 + 28);
        }

        else
        {
          v374 = (*(*v366 + 248))(v366, v364);
        }

        if (v371 == 0xFFFF)
        {
          v375 = *(v369 + 28);
        }

        else
        {
          (*(*v365 + 248))(v365, v371);
        }

        if (v374 > v375)
        {
          v375 = v374;
        }

        v680 = v375;
        if (v364 == 0xFFFF)
        {
          v376.i64[0] = *v370;
          v376.i64[1] = *(v370 + 8);
          v377.i64[0] = *(v370 + 16);
          v377.i64[1] = *(v370 + 24);
          v794 = v376;
          v795 = v377;
        }

        else
        {
          (*(*v366 + 232))(&v794, v366, v364);
        }

        if (v371 == 0xFFFF)
        {
          v378.i64[0] = *v369;
          v378.i64[1] = *(v369 + 8);
          v379.i64[0] = *(v369 + 16);
          v379.i64[1] = *(v369 + 24);
          v792 = v378;
          v793 = v379;
        }

        else
        {
          (*(*v365 + 232))(&v792, v365, v371);
        }

        v791 = vdup_lane_s32(v674, 0);
        v790 = vdup_lane_s32(v685.n128_u64[0], 0);
        v789 = vdup_lane_s32(v684, 0);
        v380 = a2;
        _X8 = a2 + 7556;
        __asm
        {
          PRFM            #0, [X8]
          PRFM            #0, [X19]
        }

        v384 = *(a2 + 7688);
        if (v384)
        {
          v385 = 0;
          v693 = 0;
          v386 = COERCE_DOUBLE(vdup_lane_s32(v670, 0));
          v387 = *(a1 + 88);
          v387.i64[1] = *(a1 + 96);
          v761 = v387;
          v388 = *(a1 + 116);
          v388.i64[1] = *(a1 + 124);
          v759 = v388;
          v735 = vdup_lane_s32(*&a6, 0);
          v34.f32[0] = a4 * 0.8;
          v388.i64[0] = 0;
          v391.i32[2] = 0;
          v391.i32[3] = vdupq_lane_s32(v674, 0).i32[3];
          v389.i64[0] = 0;
          v389.i64[1] = v670.u32[0];
          v390 = vorrq_s8(v391, v389);
          v724 = a2 + 7424;
          *v391.f32 = vdup_lane_s32(v776, 0);
          v668 = *v391.f32;
          v730 = v34;
          v733 = -(a4 * 0.8);
          _X19 = v661;
          v679 = a4;
          do
          {
            v393 = *(a2 + 7296 + 4 * v385);
            if (v393)
            {
              v394 = a2 + 2816 + 104 * v385;
              v395 = v726 + (*(v380 + 44 * *(v724 + 4 * v385)) << 6);
              v396 = *(v395 + 48);
              v391.i32[0] = 1.0;
              if ((v396 & 4) != 0)
              {
                v391.i16[0] = *(v394 + 2);
                v391.f32[0] = 1.0 / v391.u32[0];
              }

              v397 = *(v395 + 44);
              v389.i32[0] = *(v395 + 60);
              v753 = *v389.i8;
              v398 = *(v395 + 56);
              v399 = 0.0;
              if ((*(v395 + 48) & 1) == 0)
              {
                v399 = a4;
              }

              __asm
              {
                PRFM            #0, [X19,#0xD0]
                PRFM            #0, [X19,#0x150]
                PRFM            #0, [X19,#0x1D0]
              }

              _X19[2] = v393;
              v717 = v393;
              v714 = v396;
              if (v396)
              {
                v403 = 0;
              }

              else
              {
                v403 = 2 * *(v394 + 2);
              }

              v705 = a2 + 2816 + 104 * v385;
              v720 = v399;
              *v390.i32 = v391.f32[0] * v397;
              v391.f32[0] = v391.f32[0] * v398;
              v390.i32[1] = vdupq_lane_s32(*&v391, 0).i32[1];
              _X19[3] = v403;
              *_X19 = 3;
              v689 = v390.i64[1];
              *(_X19 + 1) = v390;
              v407.i32[1] = v684.i32[1];
              v404.i64[1] = v685.n128_i64[1];
              *(_X19 + 1) = v685.n128_u32[0];
              *(_X19 + 2) = v684.i32[0];
              v722 = v385;
              v405 = *(v724 + 4 * v385);
              v406 = v726 + (*(v380 + 44 * v405) << 6);
              v407.i32[0] = *(v406 + 8);
              v404.i64[0] = *v406;
              *(_X19 + 4) = *v406;
              v682 = (_X19 + 32);
              v409 = v404;
              v409.i32[1] = v404.i32[1];
              v408 = (_X19 + 80);
              v409.i32[3] = 0;
              v410 = v409;
              v410.i32[2] = v407.i32[0];
              *(_X19 + 10) = v407.i32[0];
              v691 = _X19;
              *(_X19 + 11) = v680;
              v411 = 0;
              v412 = vdup_n_s32(0x38D1B717u);
              v748 = *v409.f32;
              v756 = v410;
              v711 = *v404.f32;
              if (v405 == 0xFFFF)
              {
                v413 = 0;
                v414 = (_X19 + 80);
              }

              else
              {
                v407 = vdup_lane_s32(v753, 0);
                v415 = vextq_s8(v410, v410, 4uLL).u64[0];
                v416 = vneg_f32(*&vextq_s8(v410, v410, 8uLL));
                v417 = vneg_f32(*v409.f32);
                v418 = vnegq_f32(v410);
                v418.i32[3] = 0;
                v739 = v418;
                v742 = v415;
                v413 = 0;
                v419 = vcgtz_f32(v407);
                do
                {
                  v420 = (v380 + 44 * v405);
                  v421 = *(v420 + 5);
                  if (*(v420 + 5))
                  {
                    v422 = 0;
                    v423 = v726 + (*v420 << 6);
                    do
                    {
                      v424 = v423 + (v422 << 6);
                      v425 = *(v424 + 12);
                      v426.i32[0] = v425.i32[1];
                      v426.i32[1] = *(v424 + 20);
                      v426.i64[1] = *(v424 + 24);
                      v427 = vsubq_f32(v426, v761);
                      v428 = vmla_f32(vmul_f32(*v409.f32, *&vextq_s8(v427, v427, 8uLL)), *v427.i8, v416);
                      v429 = vmla_f32(vmul_f32(v415, *v427.i8), *&vextq_s8(v427, v427, 4uLL), v417);
                      v430 = v429.f32[0];
                      *v431.f32 = vext_s8(v429, v428, 4uLL);
                      v431.i64[1] = v429.u32[0];
                      v769 = v431;
                      if (v788 == -1)
                      {
                        v432 = *(v786 + 40);
                        v433 = vdupq_laneq_s32(v432, 3);
                        v433.i32[1] = *(v786 + 56);
                        v433.i32[2] = *(v786 + 60);
                        v434 = vmulq_lane_f32(*(v786 + 28), v429, 1);
                        v434.i32[3] = 0;
                        v435 = vmulq_n_f32(v432, *v428.i32);
                        v435.i32[3] = 0;
                        v436 = vmulq_n_f32(v433, v430);
                        v436.i32[3] = 0;
                        v431 = vaddq_f32(vaddq_f32(v434, v435), v436);
                      }

                      v437 = vsubq_f32(v426, v759);
                      *v438.f32 = vmla_f32(vmul_f32(*v409.f32, *&vextq_s8(v437, v437, 8uLL)), *v437.f32, v416);
                      v439 = vmla_f32(vmul_f32(v415, *v437.f32), *&vextq_s8(v437, v437, 4uLL), v417);
                      *v437.f32 = vext_s8(v439, *v438.f32, 4uLL);
                      v437.i64[1] = v439.u32[0];
                      v798 = v410;
                      v799 = v431;
                      v763 = v437;
                      v440 = vnegq_f32(v437);
                      v777 = v431;
                      if (v784 == -1)
                      {
                        v441 = *(v782 + 40);
                        v442 = vdupq_laneq_s32(v441, 3);
                        v442.i32[1] = *(v782 + 56);
                        v442.i32[2] = *(v782 + 60);
                        v443 = vmulq_n_f32(*(v782 + 28), v440.f32[0]);
                        v443.i32[3] = 0;
                        v438 = vmulq_lane_f32(v441, *v440.f32, 1);
                        v438.i32[3] = 0;
                        v444 = vmulq_laneq_f32(v442, v440, 2);
                        v444.i32[3] = 0;
                        v440 = vaddq_f32(vaddq_f32(v443, v438), v444);
                      }

                      else
                      {
                        v440.i32[3] = 0;
                      }

                      v414 = v408 + 7;
                      v766 = vsub_f32(v425, *&v737);
                      v796 = v739;
                      v797 = v440;
                      v772 = v440;
                      ImpulseResponse = physx::Dy::getImpulseResponse(&v785, &v798, &v802, &v790, &v781, &v796, &v800, &v791, v386, v737, *v438.f32, &v789);
                      v446 = vmulq_f32(v769, v795);
                      v410 = v756;
                      v447 = vaddq_f32(vmulq_f32(v756, v792), vmulq_f32(v763, v793));
                      v448 = vadd_f32(ImpulseResponse, v412);
                      v449 = vrecpe_f32(v448);
                      v450 = 4;
                      do
                      {
                        v449 = vmul_f32(v449, vrecps_f32(v448, v449));
                        --v450;
                      }

                      while (v450);
                      v451 = vaddq_f32(vmulq_f32(v756, v794), v446);
                      v452 = vsubq_f32(v451, v447);
                      v452.i64[0] = vpaddq_f32(v452, v452).u64[0];
                      *v452.f32 = vpadd_f32(*v452.f32, *v452.f32);
                      v453 = vcgt_f32(v735, *v452.f32);
                      v454 = vneg_f32(*v452.f32);
                      v455 = vand_s8(vdup_lane_s32(vand_s8(vand_s8(v419, v453), vcgt_f32(v454, vdup_lane_s32(vmul_f32(*&a5, v766), 0))), 0), vmul_n_f32(v454, *v753.i32));
                      v456.i64[0] = *(v424 + 32);
                      v456.i64[1] = *(v424 + 40);
                      v457 = vmulq_f32(v756, v456);
                      v457.i64[0] = vpaddq_f32(v457, v457).u64[0];
                      v458 = vadd_f32(vpadd_f32(*v457.f32, *v457.f32), v455);
                      if (v372)
                      {
                        v459 = vpaddq_f32(v451, v451).u64[0];
                        v458 = vsub_f32(v458, vpadd_f32(v459, v459));
                      }

                      v415 = v742;
                      *v409.f32 = v748;
                      v460 = v777;
                      if (v373)
                      {
                        v461 = vpaddq_f32(v447, v447).u64[0];
                        v458 = vadd_f32(v458, vpadd_f32(v461, v461));
                      }

                      v462 = vand_s8(vdup_lane_s32(vcgt_f32(ImpulseResponse, 0x3400000034000000), 0), v449);
                      v463 = vmax_f32(vmla_f32(vmul_f32(vsub_f32(v458, vdup_lane_s32(vmul_f32(v730, v766), 0)), v462), v462, v454), 0);
                      v460.i32[3] = vdupq_lane_s32(*&v766, 0).i32[3];
                      v408[2].i32[0] = v458.i32[0];
                      v408[2].f32[1] = v733;
                      v464 = vnegq_f32(v772);
                      v464.i32[3] = v462.i32[1];
                      *v408 = v460;
                      v408[1] = v464;
                      v465 = v803;
                      v466 = v800;
                      v467 = v801;
                      v408[3] = v802;
                      v408[4] = v466;
                      v408[5] = v465;
                      v408[6] = v467;
                      v411 = vadd_f32(v411, v463);
                      v468 = (v424 + 12);
                      v407 = vld1_dup_f32(v468);
                      v413 = vmin_f32(v407, v413);
                      ++v422;
                      v408 += 7;
                    }

                    while (v422 != v421);
                  }

                  else
                  {
                    v414 = v408;
                  }

                  v405 = v420[1];
                  v408 = v414;
                  v380 = a2;
                }

                while (v405 != 0xFFFF);
              }

              v407.f32[0] = v717;
              v469 = vdup_lane_s32(v407, 0);
              v470 = vrecpe_f32(v469);
              v471 = 4;
              do
              {
                v470 = vmul_f32(v470, vrecps_f32(v469, v470));
                --v471;
              }

              while (v471);
              v691[6].i32[1] = vmul_f32(v411, v470).u32[0];
              bzero(v414, 4 * v717);
              _X19 = &v414->i8[4 * ((v717 + 3) & 0xFFFFFFFC)];
              v691[7].i32[0] = 0;
              v473 = -0.5;
              if ((v714 & 1) == 0)
              {
                *v472.i8 = vdup_lane_s32(v711, 1);
                v474 = vsubq_f32(v794, v792);
                *v475.i8 = vext_s8(0, vneg_f32(vdup_laneq_s32(v756, 2)), 4uLL);
                v475.i64[1] = v472.u32[0];
                *v472.i8 = vext_s8(vneg_f32(*v472.i8), v711, 4uLL);
                v476 = vmulq_f32(v756, v474);
                v476.i64[0] = vpaddq_f32(v476, v476).u64[0];
                v477 = vmulq_n_f32(v756, vpadd_f32(*v476.f32, *v476.f32).f32[0]);
                v477.i32[3] = 0;
                v478 = vsubq_f32(v474, v477);
                v479 = vmulq_f32(v478, v478);
                v479.i64[0] = vpaddq_f32(v479, v479).u64[0];
                v391 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v479.f32, *v479.f32), v412), 0)), v478, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vdup_n_s32(0x3F3504F3u), vabs_f32(vdup_lane_s32(v711, 0))), 0)), 0x1FuLL)), v475, v472));
                v480 = vmulq_f32(v391, v391);
                v480.i64[0] = vpaddq_f32(v480, v480).u64[0];
                v481 = vpadd_f32(*v480.f32, *v480.f32);
                v482 = vrsqrte_f32(v481);
                v483 = 4;
                do
                {
                  v482 = vmul_f32(v482, vrsqrts_f32(vmul_f32(v482, v482), v481));
                  --v483;
                }

                while (v483);
                v484 = vbsl_s8(vdup_lane_s32(vceqz_f32(v481), 0), v481, vmul_f32(v481, v482));
                *v389.i8 = vrecpe_f32(v484);
                v485 = 4;
                do
                {
                  *v389.i8 = vmul_f32(*v389.i8, vrecps_f32(v484, *v389.i8));
                  --v485;
                }

                while (v485);
                v691[8] = (v662 + 104 * v693);
                if (*(v705 + 2))
                {
                  v486 = 0;
                  v487 = vextq_s8(v756, v756, 8uLL).u64[0];
                  v488 = vmulq_n_f32(v391, *v389.i32);
                  v489 = v488;
                  v489.i32[3] = 0;
                  v490 = vextq_s8(v489, v489, 8uLL).u64[0];
                  v491 = vext_s8(*v488.f32, v490, 4uLL);
                  v492 = vneg_f32(v490);
                  v493 = vmls_f32(vmul_f32(v748, v491), vext_s8(v748, v487, 4uLL), *v488.f32);
                  *v494.f32 = vext_s8(v493, vmls_f32(vmul_f32(v487, *v488.f32), v748, v490), 4uLL);
                  v494.i64[1] = v493.u32[0];
                  v778 = v488;
                  v495 = vneg_f32(*v488.f32);
                  v496 = vnegq_f32(v489);
                  v496.i32[3] = 0;
                  v712 = v496;
                  v757 = vext_s8(*v494.f32, v493.u32[0], 4uLL);
                  v754 = vneg_f32(v493.u32[0]);
                  v767 = *v494.f32;
                  v770 = v489;
                  v497 = vneg_f32(*v494.f32);
                  v498 = vnegq_f32(v494);
                  v498.i32[3] = 0;
                  v709 = v498;
                  v703 = v491;
                  v701 = v492;
                  v697 = v495;
                  v764 = v494;
                  do
                  {
                    v499 = (v705 + 40 + 12 * v486);
                    v500 = *v499 + *v499;
                    v501 = v499[1] + v499[1];
                    v502 = v499[2] + v499[2];
                    v504 = *(a1 + 80);
                    v503 = *(a1 + 84);
                    v505 = v473 + (v503 * v503);
                    v506 = *(a1 + 72);
                    v507 = *(a1 + 76);
                    v508 = ((v501 * v507) + (v506 * v500)) + (v504 * v502);
                    *&v509 = ((v503 * ((v507 * v502) - (v504 * v501))) + (v500 * v505)) + (v506 * v508);
                    *&v510 = ((v503 * ((v504 * v500) - (v506 * v502))) + (v501 * v505)) + (v507 * v508);
                    v511 = ((v503 * ((v506 * v501) - (v507 * v500))) + (v502 * v505)) + (v504 * v508);
                    v512 = __PAIR64__(v510, v509);
                    v512.f32[2] = v511;
                    v513 = _X19;
                    v514 = vextq_s8(v512, v512, 8uLL).u64[0];
                    v515 = vext_s8(__PAIR64__(v510, v509), v514, 4uLL);
                    v743 = v514;
                    v749 = __PAIR64__(v510, v509);
                    v516 = vmla_f32(vmul_f32(*v778.f32, v514), __PAIR64__(v510, v509), v492);
                    v517 = vmla_f32(vmul_f32(v491, __PAIR64__(v510, v509)), v515, v495);
                    v518 = v517.u32[0];
                    if (v788 == -1)
                    {
                      v520 = *(v786 + 40);
                      v521 = vdupq_laneq_s32(v520, 3);
                      v521.i32[1] = *(v786 + 56);
                      v521.i32[2] = *(v786 + 60);
                      v522 = vmulq_lane_f32(*(v786 + 28), v517, 1);
                      v522.i32[3] = 0;
                      v523 = vmulq_n_f32(v520, *v516.i32);
                      v523.i32[3] = 0;
                      v524 = vmulq_n_f32(v521, *&v518);
                      v524.i32[3] = 0;
                      v519 = vaddq_f32(vaddq_f32(v522, v523), v524);
                    }

                    else
                    {
                      *v519.f32 = vext_s8(v517, v516, 4uLL);
                      v519.i64[1] = v517.u32[0];
                    }

                    v525 = (v705 + 64 + 12 * v486);
                    v526 = *v525 + *v525;
                    v527 = v525[1] + v525[1];
                    v528 = v525[2] + v525[2];
                    v530 = *(a1 + 108);
                    v529 = *(a1 + 112);
                    v531 = v473 + (v529 * v529);
                    v532 = *(a1 + 100);
                    v533 = *(a1 + 104);
                    v534 = ((v527 * v533) + (v532 * v526)) + (v530 * v528);
                    *&v535 = ((v529 * ((v533 * v528) - (v530 * v527))) + (v526 * v531)) + (v532 * v534);
                    *&v536 = ((v529 * ((v530 * v526) - (v532 * v528))) + (v527 * v531)) + (v533 * v534);
                    v537 = ((v529 * ((v532 * v527) - (v533 * v526))) + (v528 * v531)) + (v530 * v534);
                    v538 = __PAIR64__(v536, v535);
                    v538.f32[2] = v537;
                    v539 = vextq_s8(v538, v538, 8uLL).u64[0];
                    v540 = vext_s8(__PAIR64__(v536, v535), v539, 4uLL);
                    v715 = v519;
                    v718 = v539;
                    v541 = vmul_f32(*v778.f32, v539);
                    v740 = __PAIR64__(v536, v535);
                    v542 = vmla_f32(vmul_f32(v491, __PAIR64__(v536, v535)), v540, v495);
                    *v543.f32 = vext_s8(v542, vmla_f32(v541, __PAIR64__(v536, v535), v492), 4uLL);
                    v543.i64[1] = v542.u32[0];
                    v798 = v489;
                    v799 = v519;
                    v544 = vnegq_f32(v543);
                    if (v784 == -1)
                    {
                      v545 = *(v782 + 40);
                      v546 = vdupq_laneq_s32(v545, 3);
                      v546.i32[1] = *(v782 + 56);
                      v546.i32[2] = *(v782 + 60);
                      v547 = vmulq_n_f32(*(v782 + 28), v544.f32[0]);
                      v547.i32[3] = 0;
                      v548 = vmulq_lane_f32(v545, *v544.f32, 1);
                      v548.i32[3] = 0;
                      v549 = vmulq_laneq_f32(v546, v544, 2);
                      v549.i32[3] = 0;
                      v544 = vaddq_f32(vaddq_f32(v547, v548), v549);
                    }

                    else
                    {
                      v544.i32[3] = 0;
                    }

                    _X19 += 256;
                    v550 = vaddq_f32(v759, v538);
                    v773 = vsubq_f32(vaddq_f32(v761, v512), v550);
                    v796 = v712;
                    v797 = v544;
                    v707 = v544;
                    v551 = physx::Dy::getImpulseResponse(&v785, &v798, &v802, &v790, &v781, &v796, &v800, &v791, v386, *v550.i64, *v759.f32, &v789);
                    v552 = vadd_f32(v551, v412);
                    v553 = vrecpe_f32(v552);
                    v554 = 4;
                    do
                    {
                      v553 = vmul_f32(v553, vrecps_f32(v552, v553));
                      --v554;
                    }

                    while (v554);
                    v555 = v726 + (*(v380 + 44 * *(v724 + 4 * v722)) << 6);
                    v556.i64[0] = *(v555 + 32);
                    v556.i64[1] = *(v555 + 40);
                    v557 = vmulq_f32(v770, v556);
                    v557.i64[0] = vpaddq_f32(v557, v557).u64[0];
                    v558 = vpadd_f32(*v557.f32, *v557.f32);
                    if (v372)
                    {
                      v559 = vaddq_f32(vmulq_f32(v770, v794), vmulq_f32(v715, v795));
                      v559.i64[0] = vpaddq_f32(v559, v559).u64[0];
                      v558 = vsub_f32(v558, vpadd_f32(*v559.f32, *v559.f32));
                    }

                    if (v373)
                    {
                      v560 = vaddq_f32(vmulq_f32(v712, v792), vmulq_f32(v707, v793));
                      v560.i64[0] = vpaddq_f32(v560, v560).u64[0];
                      v558 = vsub_f32(v558, vpadd_f32(*v560.f32, *v560.f32));
                    }

                    v561 = v778;
                    v562 = vmulq_f32(v770, v773);
                    v562.i64[0] = vpaddq_f32(v562, v562).u64[0];
                    v561.i32[3] = vpadd_f32(*&v562, *&v562).i32[1];
                    v563 = vdup_n_s32(0x3F4CCCCDu);
                    v564 = vand_s8(vdup_lane_s32(vcgt_f32(v551, 0x3400000034000000), 0), vmul_f32(v553, v563));
                    *v513 = v561;
                    v565 = v799;
                    v566 = v800;
                    v565.i32[3] = v558.i32[1];
                    v513[1] = v565;
                    v567 = vnegq_f32(v797);
                    v567.i32[3] = v564.i32[1];
                    v513[2] = v567;
                    v513[3].i32[1] = 0;
                    v513[3].f32[0] = v720;
                    v568 = v801;
                    v513[4] = v802;
                    v513[5] = v566;
                    v513[6] = v803;
                    v513[7] = v568;
                    v569 = vmla_f32(vmul_f32(v767, v743), v749, v754);
                    v570 = vmla_f32(vmul_f32(v757, v749), v515, v497);
                    v571 = v570.u32[0];
                    v572 = v788;
                    if (v788 == 0xFFFF)
                    {
                      v574 = *(v786 + 40);
                      v575 = vdupq_laneq_s32(v574, 3);
                      v575.i32[1] = *(v786 + 56);
                      v575.i32[2] = *(v786 + 60);
                      v576 = vmulq_lane_f32(*(v786 + 28), v570, 1);
                      v576.i32[3] = 0;
                      v577 = vmulq_n_f32(v574, *v569.i32);
                      v577.i32[3] = 0;
                      v578 = vmulq_n_f32(v575, *&v571);
                      v578.i32[3] = 0;
                      v573 = vaddq_f32(vaddq_f32(v576, v577), v578);
                    }

                    else
                    {
                      *v573.f32 = vext_s8(v570, v569, 4uLL);
                      v573.i64[1] = v570.u32[0];
                    }

                    *v579.f32 = v754;
                    v580 = vmla_f32(vmul_f32(v757, v740), v540, v497);
                    *v581.f32 = vext_s8(v580, vmla_f32(vmul_f32(v767, v718), v740, v754), 4uLL);
                    v581.i64[1] = v580.u32[0];
                    v582.i64[0] = v764.i64[0];
                    v798 = v764;
                    v799 = v573;
                    v583 = vnegq_f32(v581);
                    v584 = v784;
                    v750 = v573;
                    if (v784 == 0xFFFF)
                    {
                      v585 = *(v782 + 40);
                      v586 = vdupq_laneq_s32(v585, 3);
                      v586.i32[1] = *(v782 + 56);
                      v586.i32[2] = *(v782 + 60);
                      v587 = vmulq_n_f32(*(v782 + 28), v583.f32[0]);
                      v587.i32[3] = 0;
                      v582 = vmulq_lane_f32(v585, *v583.f32, 1);
                      v582.i32[3] = 0;
                      v579 = vmulq_laneq_f32(v586, v583, 2);
                      v579.i32[3] = 0;
                      v583 = vaddq_f32(vaddq_f32(v587, v582), v579);
                    }

                    else
                    {
                      v583.i32[3] = 0;
                    }

                    v796 = v709;
                    v797 = v583;
                    v744 = v583;
                    *v391.f32 = physx::Dy::getImpulseResponse(&v785, &v798, &v802, &v790, &v781, &v796, &v800, &v791, v386, *v582.i64, *v579.f32, &v789);
                    v588 = vadd_f32(*v391.f32, v412);
                    v589 = vrecpe_f32(v588);
                    v590 = 4;
                    do
                    {
                      v589 = vmul_f32(v589, vrecps_f32(v588, v589));
                      --v590;
                    }

                    while (v590);
                    v591 = v726 + (*(v380 + 44 * *(v724 + 4 * v722)) << 6);
                    v592.i64[0] = *(v591 + 32);
                    v592.i64[1] = *(v591 + 40);
                    v593 = vmulq_f32(v764, v592);
                    v593.i64[0] = vpaddq_f32(v593, v593).u64[0];
                    v594 = vpadd_f32(*v593.f32, *v593.f32);
                    v491 = v703;
                    v473 = -0.5;
                    v492 = v701;
                    v495 = v697;
                    v595 = v750;
                    if (v372)
                    {
                      v596 = vaddq_f32(vmulq_f32(v764, v794), vmulq_f32(v750, v795));
                      v596.i64[0] = vpaddq_f32(v596, v596).u64[0];
                      v594 = vsub_f32(v594, vpadd_f32(*v596.f32, *v596.f32));
                    }

                    v489 = v770;
                    if (v373)
                    {
                      v597 = v744;
                      v598 = vaddq_f32(vmulq_f32(v709, v792), vmulq_f32(v744, v793));
                      v598.i64[0] = vpaddq_f32(v598, v598).u64[0];
                      v594 = vsub_f32(v594, vpadd_f32(*v598.f32, *v598.f32));
                      v599 = v563;
                    }

                    else
                    {
                      v599 = v563;
                      v597 = v744;
                    }

                    *v391.f32 = vand_s8(vdup_lane_s32(vcgt_f32(*v391.f32, 0x3400000034000000), 0), vmul_f32(v589, v599));
                    v600 = vmulq_f32(v764, v773);
                    v600.i64[0] = vpaddq_f32(v600, v600).u64[0];
                    v601 = v764;
                    v601.i32[3] = vpadd_f32(*&v600, *&v600).i32[1];
                    v595.i32[3] = v594.i32[1];
                    v513[8] = v601;
                    v513[9] = v595;
                    v602 = vnegq_f32(v597);
                    v602.i32[3] = v391.i32[1];
                    v513[10] = v602;
                    v513[11].i32[1] = 0;
                    v513[11].f32[0] = v720;
                    v391.i32[1] = v802.i32[1];
                    v389 = v803;
                    v603 = v800;
                    v604 = v801;
                    v513[12] = v802;
                    v513[13] = v603;
                    v513[14] = v389;
                    v513[15] = v604;
                    ++v486;
                    v605 = *(v705 + 2);
                  }

                  while (v486 < v605);
                  _ZF = v605 == 1;
                  v606 = v676;
                  if (!_ZF)
                  {
                    v606 = 0;
                  }

                  if (v606)
                  {
                    v607 = vmul_n_f32(vmax_f32(vneg_f32(v413), 0), v672);
                    v608 = vrsqrte_f32(v607);
                    v609 = 4;
                    do
                    {
                      v608 = vmul_f32(v608, vrsqrts_f32(vmul_f32(v608, v608), v607));
                      --v609;
                    }

                    while (v609);
                    ++v691->i8[3];
                    v610 = *(a1 + 72);
                    v611 = *(a1 + 76);
                    v613 = *(v705 + 96);
                    v612 = *(v705 + 100);
                    v614 = *(v705 + 88);
                    v615 = *(v705 + 92);
                    v617 = *(a1 + 80);
                    v616 = *(a1 + 84);
                    v618 = (((v612 * v610) + (v616 * v614)) + (v611 * v613)) - (v615 * v617);
                    v619 = (((v612 * v611) + (v616 * v615)) + (v617 * v614)) - (v613 * v610);
                    v620 = (((v612 * v617) + (v616 * v613)) + (v610 * v615)) - (v614 * v611);
                    v621 = (((v616 * v612) - (v610 * v614)) - (v611 * v615)) - (v617 * v613);
                    v623 = *(a1 + 108);
                    v622 = *(a1 + 112);
                    v624 = *(a1 + 100);
                    v625 = *(a1 + 104);
                    v626 = (((v621 * v624) - (v618 * v622)) - (v619 * v623)) + (v625 * v620);
                    v627 = (((v621 * v625) - (v619 * v622)) - (v620 * v624)) + (v623 * v618);
                    v628 = (((v621 * v623) - (v620 * v622)) - (v618 * v625)) + (v624 * v619);
                    v629 = (((v624 * v618) + (v621 * v622)) + (v619 * v625)) + (v620 * v623);
                    v630 = (v726 + (*(v380 + 44 * *(v724 + 4 * v722)) << 6));
                    v631 = v630[1];
                    v632 = v630[2];
                    v633 = v626 * *v630;
                    v634 = v627 * v631;
                    v635 = v628 * v632;
                    v636 = sqrtf((((v634 * v634) + (v633 * v633)) + (v635 * v635)) + (v629 * v629));
                    if (v636 != 0.0)
                    {
                      v633 = v633 / v636;
                      v634 = v634 / v636;
                      v635 = v635 / v636;
                      v629 = v629 / v636;
                    }

                    v779 = vmax_f32(v668, vbsl_s8(vdup_lane_s32(vceqz_f32(v607), 0), v607, vmul_f32(v607, v608))).u32[0];
                    _X19 = &v513[24];
                    v637 = (((v631 * v634) + (v633 * *v630)) + (v635 * v632)) + (v629 * 0.0);
                    v800.i64[0] = 0;
                    v800.i32[2] = 0;
                    physx::Dy::createImpulseResponseVector(&v802, &v800, v682, v786, v572);
                    v798.i64[0] = 0;
                    v798.i32[2] = 0;
                    v638 = -v691[5].f32[0];
                    *v796.f32 = vneg_f32(v691[4]);
                    v796.f32[2] = v638;
                    physx::Dy::createImpulseResponseVector(&v800, &v798, v796.f32, v782, v584);
                    *v639.i32 = physx::Dy::getImpulseResponse(&v785, &v802, &v798, &v781, &v800, &v796, *v670.i32, v685.n128_f32[0], *v674.i32, *v684.i32);
                    v640 = vdup_lane_s32(v639, 0);
                    v641 = vadd_f32(v640, v412);
                    v642 = vrecpe_f32(v641);
                    v643 = 4;
                    do
                    {
                      v642 = vmul_f32(v642, vrecps_f32(v641, v642));
                      --v643;
                    }

                    while (v643);
                    v644 = 0.0;
                    if ((v636 + -0.000001) >= 0.0)
                    {
                      v644 = v637 / v629;
                    }

                    *v645.i32 = -atanf(v644);
                    v646.i64[0] = 0;
                    v646.i32[2] = 0;
                    v646.i32[3] = vdupq_lane_s32(v645, 0).i32[3];
                    v647.i64[0] = v803.i64[0];
                    v647.i64[1] = v803.u32[2];
                    v513[16] = v646;
                    v513[17] = v647;
                    v647.i64[0] = v801.i64[0];
                    v647.i64[1] = v801.u32[2];
                    v648 = vnegq_f32(v647);
                    v648.i32[3] = vand_s8(vdup_lane_s32(vcgt_f32(v640, 0x3400000034000000), 0), vmul_f32(v642, v563)).i32[1];
                    v513[18] = v648;
                    v513[19].f32[0] = v720;
                    v513[19].i32[1] = 0;
                    v391.i64[0] = v798.i64[0];
                    v389.i64[0] = v799.i64[0];
                    v391.i32[2] = v798.i32[2];
                    v513[19].i32[2] = v779;
                    v391.i64[1] = v391.u32[2];
                    v649.i64[0] = v796.i64[0];
                    v646.i64[0] = v797.i64[0];
                    v649.i64[1] = v796.u32[2];
                    v513[20] = v391;
                    v513[21] = v649;
                    v389.i64[1] = v799.u32[2];
                    v646.i64[1] = v797.u32[2];
                    v513[22] = v389;
                    v513[23] = v646;
                  }
                }
              }

              ++v693;
              v384 = *(v380 + 7688);
              a4 = v679;
              v385 = v722;
              v390.i64[1] = v689;
            }

            ++v385;
          }

          while (v385 < v384);
        }
      }

      else
      {
        v76 = *(v55 + 56);
        v75 = *(v55 + 64);
        v32.n128_u32[0] = *(v55 + 216);
        v653 = *(v55 + 212);
        v655 = fmaxf(v653, v32.n128_f32[0]) > 0.0;
        if (v24)
        {
          v77 = 5;
        }

        else
        {
          v77 = 1;
        }

        v677 = v77;
        v78 = *(v76 + 28);
        if (v78 <= *(v75 + 28))
        {
          v78 = *(v75 + 28);
        }

        v675 = v78;
        v654 = a2 + 7556;
        __asm
        {
          PRFM            #0, [X8]
          PRFM            #0, [X19]
        }

        v81 = 0.0;
        if (!v25)
        {
          v81 = a4;
        }

        v736 = v81;
        v82 = *(a2 + 7688);
        if (v82)
        {
          v83 = 0;
          v84 = 0;
          v85 = *(v55 + 40);
          v86 = *v55;
          v87 = *(v55 + 8);
          v673 = HIDWORD(*v55);
          v671 = v87.i32[1];
          v88 = *(v55 + 160);
          v89 = vmul_n_f32(vneg_f32(vdup_lane_s32(v87, 0)), COERCE_FLOAT(*(v75 + 32)));
          v90 = *(v55 + 72);
          v91 = *(v55 + 88);
          v91.i64[1] = *(v55 + 96);
          v92 = *(v55 + 116);
          v92.i64[1] = *(v55 + 124);
          v94 = *v76;
          v93 = *(v76 + 16);
          v94.i32[3] = 0;
          v96 = *v75;
          v95 = *(v75 + 16);
          v96.i32[3] = 0;
          v93.i32[3] = 0;
          v95.i32[3] = 0;
          v755 = v95;
          v758 = v93;
          v97 = *(v55 + 100);
          v98 = *(v85 + 28);
          v98.i32[3] = 0;
          v775 = v98;
          v99 = *(v85 + 40);
          v651 = *(v55 + 48);
          v652 = v85;
          v95.i32[0] = v99.i32[3];
          v99.i32[3] = 0;
          v95.i32[1] = *(v85 + 56);
          v95.i64[1] = *(v85 + 60);
          v768 = v95;
          v771 = v99;
          v100 = *(v651 + 28);
          v100.i32[3] = 0;
          v765 = v100;
          v101 = *(v651 + 40);
          v95.i32[0] = v101.i32[3];
          v101.i32[3] = 0;
          v95.i32[1] = *(v651 + 56);
          v95.i64[1] = *(v651 + 60);
          v760 = v95;
          v762 = v101;
          v102 = vdup_lane_s32(*&a6, 0);
          v95.i64[0] = 0;
          v95.i32[2] = 0;
          v95.i32[3] = v89.i32[1];
          v101.i64[0] = 0;
          LODWORD(v669) = vmul_f32(*v55, *(v76 + 32)).u32[0];
          v101.i64[1] = LODWORD(v669);
          v686 = vorrq_s8(v95, v101).i64[1];
          v103 = a2 + 7424;
          v104 = v90;
          v104.i32[3] = 0;
          v105 = a4 * -0.8;
          v106 = v92;
          v107 = v97;
          v107.i32[3] = 0;
          v710 = vdupq_laneq_s32(v90, 3);
          v108 = vdupq_laneq_s32(v97, 3);
          v702 = v108;
          LODWORD(v706) = vmla_f32(0xBF000000BF000000, *v710.f32, *v710.f32).u32[0];
          LODWORD(v708) = vmla_f32(0xBF000000BF000000, *v108.i8, *v108.i8).u32[0];
          v650 = vdup_lane_s32(v32.n128_u64[0], 0);
          _X22 = v661;
          v110 = *(v55 + 144);
          v664 = *(v55 + 136);
          v111 = *(*(v55 + 24) + 62);
          v112 = *(*(v55 + 32) + 62);
          v667 = v89;
          v663 = -v89.f32[0];
          v659 = v96;
          v660 = v94;
          v657 = vsubq_f32(v94, v96);
          v713 = v104;
          v716 = *v97.i8;
          v719 = *v90.i8;
          v699 = vextq_s8(v104, v104, 8uLL).u64[0];
          v700 = vsubq_f32(v91, v92);
          v698 = vext_s8(*v90.i8, v699, 4uLL);
          v704 = v107;
          v696 = vextq_s8(v107, v107, 8uLL).u64[0];
          v695 = vext_s8(*v97.i8, v696, 4uLL);
          v658 = vneg_f32(0x80000000800000);
          v738 = v87;
          v741 = *v55;
          v666 = v91;
          v734 = v92;
          v665 = a2 + 7424;
          while (1)
          {
            v113 = *(a2 + 7296 + 4 * v83);
            if (v113)
            {
              break;
            }

LABEL_147:
            if (++v83 >= v82)
            {
              goto LABEL_250;
            }
          }

          v114 = *(v103 + 4 * v83);
          v115 = (v110 + (*(v64 + 44 * v114) << 6));
          v116 = &v115[7] + 1;
          _X8 = (_X22 + 80);
          __asm { PRFM            #0, [X22,#0xD0] }

          v119 = vld1_dup_f32(v116);
          __asm { PRFM            #0, [X22,#0x150] }

          *(_X22 + 9) = v664;
          _X22[1] = v681;
          *(_X22 + 3) = v669;
          *(_X22 + 12) = v663;
          *v108.i8 = *v115;
          v121 = v108;
          v121.i32[1] = HIDWORD(*v115);
          v121.i32[3] = 0;
          v122 = v121;
          v122.i32[2] = v115[1].i32[0];
          v123 = vmulq_f32(v122, v122);
          v123.i64[0] = vpaddq_f32(v123, v123).u64[0];
          *v123.f32 = vpadd_f32(*v123.f32, *v123.f32);
          v124 = vmul_n_f32(*v123.f32, v669);
          v125 = vmul_f32(v667, *v123.f32);
          v678 = *v115;
          *(_X22 + 4) = *v115;
          *(_X22 + 10) = v122.i32[2];
          *(_X22 + 11) = v675;
          v745 = *v121.i8;
          v752 = v122;
          v683 = v84;
          if (v114 == 0xFFFF)
          {
            v126 = v658;
            v127 = (_X22 + 80);
          }

          else
          {
            v128 = vmulq_f32(v660, v122);
            v128.i64[0] = vpaddq_f32(v128, v128).u64[0];
            v129 = vpadd_f32(*v128.f32, *v128.f32);
            v130 = vmulq_f32(v659, v122);
            v130.i64[0] = vpaddq_f32(v130, v130).u64[0];
            v131 = vpadd_f32(*v130.f32, *v130.f32);
            v132 = vextq_s8(v122, v122, 4uLL).u64[0];
            v133 = vneg_f32(*&vextq_s8(v122, v122, 8uLL));
            v126 = vneg_f32(0x80000000800000);
            v134 = vneg_f32(*v121.i8);
            do
            {
              v135 = (a2 + 44 * v114);
              v136 = *(v135 + 5);
              if (*(v135 + 5))
              {
                v137 = 0;
                v138 = v110 + (*v135 << 6);
                do
                {
                  __asm { PRFM            #0, [X8,#0x100] }

                  v140 = v138 + (v137 << 6);
                  v141.i64[0] = *(v140 + 16);
                  v141.i64[1] = *(v140 + 24);
                  v142 = *(v140 + 12);
                  v143.i64[0] = *(v140 + 32);
                  v144 = *(v140 + 40);
                  v145 = vsubq_f32(v141, v91);
                  v146 = vsubq_f32(v141, v106);
                  v147 = vmla_f32(vmul_f32(v745, *&vextq_s8(v145, v145, 8uLL)), *v145.i8, v133);
                  v148 = vmla_f32(vmul_f32(v132, *v145.i8), *&vextq_s8(v145, v145, 4uLL), v134);
                  v149 = vmla_f32(vmul_f32(v132, *v146.i8), *&vextq_s8(v146, v146, 4uLL), v134);
                  v150 = vmulq_lane_f32(v775, v148, 1);
                  v150.i32[3] = 0;
                  v151 = vmulq_n_f32(v771, *v147.i32);
                  v151.i32[3] = 0;
                  v152 = vmla_f32(vmul_f32(v745, *&vextq_s8(v146, v146, 8uLL)), *v146.i8, v133);
                  v153 = vmulq_n_f32(v768, v148.f32[0]);
                  v153.i32[3] = 0;
                  v154 = vaddq_f32(vaddq_f32(v150, v151), v153);
                  v155 = vmulq_lane_f32(v765, v149, 1);
                  v155.i32[3] = 0;
                  v156 = vmulq_n_f32(v762, *v152.i32);
                  v156.i32[3] = 0;
                  v157 = vmulq_n_f32(v760, v149.f32[0]);
                  v157.i32[3] = 0;
                  v158 = vaddq_f32(vaddq_f32(v155, v156), v157);
                  v159 = vmulq_f32(v154, v154);
                  v159.i64[0] = vpaddq_f32(v159, v159).u64[0];
                  v160 = vmulq_f32(v158, v158);
                  v160.i64[0] = vpaddq_f32(v160, v160).u64[0];
                  v161 = vadd_f32(vadd_f32(v124, vmul_lane_f32(vpadd_f32(*v159.f32, *v159.f32), v86, 1)), vsub_f32(vmul_lane_f32(vpadd_f32(*v160.f32, *v160.f32), v87, 1), v125));
                  v162 = vrecpe_f32(v161);
                  v163 = 4;
                  do
                  {
                    v162 = vmul_f32(v162, vrecps_f32(v161, v162));
                    --v163;
                  }

                  while (v163);
                  v127 = _X8 + 3;
                  v164 = vcgtz_f32(v161);
                  v165 = vsub_f32(v142, v88);
                  v166 = vdup_lane_s32(v165, 0);
                  *v167.f32 = vext_s8(v148, v147, 4uLL);
                  v167.i64[1] = v148.u32[0];
                  v168 = vmulq_f32(v758, v167);
                  v168.i64[0] = vpaddq_f32(v168, v168).u64[0];
                  *v169.f32 = vext_s8(v149, v152, 4uLL);
                  v169.i64[1] = v149.u32[0];
                  *v168.f32 = vadd_f32(v129, vpadd_f32(*v168.f32, *v168.f32));
                  v170 = vmulq_f32(v755, v169);
                  v170.i64[0] = vpaddq_f32(v170, v170).u64[0];
                  v171 = vadd_f32(v131, vpadd_f32(*v170.f32, *v170.f32));
                  v172 = vsub_f32(*v168.f32, v171);
                  v173 = vneg_f32(v172);
                  v143.i64[1] = v144;
                  v174 = vand_s8(vand_s8(vcgt_f32(v102, v172), vcgtz_f32(v119)), vcgt_f32(v173, vdup_lane_s32(vmul_f32(*&a5, v165), 0)));
                  v175 = vmulq_f32(v752, v143);
                  v175.i64[0] = vpaddq_f32(v175, v175).u64[0];
                  v176 = vand_s8(v162, v164).u32[0];
                  v177 = vadd_f32(vpadd_f32(*v175.f32, *v175.f32), vand_s8(vdup_lane_s32(v174, 0), vmul_f32(v119, v173)));
                  v178 = vsub_f32(v177, *v168.f32);
                  if (v111)
                  {
                    v179 = -1;
                  }

                  else
                  {
                    v179 = 0;
                  }

                  v180 = vbsl_s8(vdup_n_s32(v179), v178, v177);
                  v181 = vadd_f32(v171, v180);
                  if (v112)
                  {
                    v182 = -1;
                  }

                  else
                  {
                    v182 = 0;
                  }

                  v158.i32[3] = v176;
                  v154.i32[3] = v165.i32[0];
                  *_X8 = v154;
                  _X8[1] = v158;
                  _X8[2].i32[0] = vbsl_s8(vdup_n_s32(v182), v181, v180).u32[0];
                  _X8[2].f32[1] = v105;
                  v126 = vmin_f32(v126, v166);
                  ++v137;
                  _X8 += 3;
                }

                while (v137 != v136);
              }

              else
              {
                v127 = _X8;
              }

              v114 = v135[1];
              _X8 = v127;
            }

            while (v114 != 0xFFFF);
          }

          bzero(v127, (4 * v113));
          _X19 = &v127->i8[4 * ((v113 + 3) & 0xFFFFFFFC)];
          v184 = &v115[7];
          v186.i64[1] = v686;
          v186.i32[0] = v115[5].i32[1];
          v185 = vld1q_dup_f32(v184);
          v186.i32[1] = v185.i32[1];
          if (v115[6].i8[0])
          {
            _X22[2] = v113;
            v189 = v683;
          }

          else
          {
            v187 = a2 + 2816 + 104 * v83;
            v188 = *(v187 + 2);
            _X22[2] = v113;
            v189 = v683;
            if (v188)
            {
              _X22[3] = 2 * v188;
              *_X22 = v677;
              *(_X22 + 1) = v186;
              *(_X22 + 1) = v673;
              *(_X22 + 2) = v671;
              *v186.i8 = vdup_lane_s32(v678, 1);
              *(_X22 + 14) = 0;
              v108.i64[1] = 0;
              *v190.i8 = vext_s8(0, vneg_f32(vdup_laneq_s32(v752, 2)), 4uLL);
              v190.i64[1] = v186.u32[0];
              *v186.i8 = vext_s8(vneg_f32(*v186.i8), v678, 4uLL);
              v191 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(vdup_n_s32(0x3F3504F3u), vabs_f32(vdup_lane_s32(v678, 0))), 0)), 0x1FuLL)), v190, v186);
              v192 = vmulq_f32(v657, v752);
              v192.i64[0] = vpaddq_f32(v192, v192).u64[0];
              v193 = vmulq_n_f32(v752, vpadd_f32(*v192.f32, *v192.f32).f32[0]);
              v193.i32[3] = 0;
              v194 = vsubq_f32(v657, v193);
              v195 = vmulq_f32(v194, v194);
              v195.i64[0] = vpaddq_f32(v195, v195).u64[0];
              v196 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v195.f32, *v195.f32), vdup_n_s32(0x38D1B717u)), 0)), v194, v191);
              v197 = vmulq_f32(v196, v196);
              v197.i64[0] = vpaddq_f32(v197, v197).u64[0];
              v198 = vpadd_f32(*v197.f32, *v197.f32);
              v199 = vrsqrte_f32(v198);
              v200 = 4;
              v87 = v738;
              v86 = v741;
              v106 = v734;
              do
              {
                v199 = vmul_f32(v199, vrsqrts_f32(vmul_f32(v199, v199), v198));
                --v200;
              }

              while (v200);
              v201 = vbsl_s8(vdup_lane_s32(vceqz_f32(v198), 0), v198, vmul_f32(v198, v199));
              v202 = vrecpe_f32(v201);
              v203 = 4;
              do
              {
                v202 = vmul_f32(v202, vrecps_f32(v201, v202));
                --v203;
              }

              while (v203);
              v204 = vextq_s8(v752, v752, 8uLL).u64[0];
              v205 = vmulq_n_f32(v196, v202.f32[0]);
              v206 = v205;
              v206.i32[3] = 0;
              v207 = vextq_s8(v206, v206, 8uLL).u64[0];
              v731 = vext_s8(*v205.f32, v207, 4uLL);
              v728 = vneg_f32(v207);
              v208 = vmls_f32(vmul_f32(v745, v731), vext_s8(v745, v204, 4uLL), *v205.f32);
              *v209.f32 = vext_s8(v208, vmls_f32(vmul_f32(v204, *v205.f32), v745, v207), 4uLL);
              v209.i64[1] = v208.u32[0];
              v746 = vneg_f32(*v205.f32);
              v210 = vpadd_f32(vmul_f32(*v209.f32, *v209.f32), vmul_f32(v208.u32[0], v208.u32[0]));
              v211 = vpadd_f32(v210, v210);
              v212 = vrsqrte_f32(v211);
              v213 = 4;
              do
              {
                v212 = vmul_f32(v212, vrsqrts_f32(vmul_f32(v212, v212), v211));
                --v213;
              }

              while (v213);
              v214 = vbsl_s8(vdup_lane_s32(vceqz_f32(v211), 0), v211, vmul_f32(v211, v212));
              v215 = vrecpe_f32(v214);
              v216 = 4;
              do
              {
                v215 = vmul_f32(v215, vrecps_f32(v214, v215));
                --v216;
              }

              while (v216);
              *(_X22 + 8) = v662 + 104 * v683;
              v217 = 0.5;
              if (*(v187 + 2) != 2)
              {
                v217 = 1.0;
              }

              if ((v115[6].i8[0] & 4) != 0)
              {
                v218 = v217;
              }

              else
              {
                v218 = 1.0;
              }

              if (*(v187 + 2))
              {
                v219 = 0;
                v220 = vmulq_n_f32(v209, v215.f32[0]);
                v221 = v220;
                v221.i32[3] = 0;
                v222 = vmulq_f32(v660, v206);
                v222.i64[0] = vpaddq_f32(v222, v222).u64[0];
                v223 = vpadd_f32(*v222.f32, *v222.f32);
                v224 = vmulq_f32(v659, v206);
                v224.i64[0] = vpaddq_f32(v224, v224).u64[0];
                v690 = vpadd_f32(*v224.f32, *v224.f32);
                v692 = v223;
                v225 = vmulq_f32(v660, v221);
                v225.i64[0] = vpaddq_f32(v225, v225).u64[0];
                v226 = vpadd_f32(*v225.f32, *v225.f32);
                v227 = vmulq_f32(v659, v221);
                v227.i64[0] = vpaddq_f32(v227, v227).u64[0];
                v687 = vpadd_f32(*v227.f32, *v227.f32);
                v688 = v226;
                v227.i64[0] = vextq_s8(v221, v221, 8uLL).u64[0];
                v725 = vext_s8(*v220.f32, *v227.f32, 4uLL);
                v723 = vneg_f32(*v227.f32);
                v721 = vneg_f32(*v220.f32);
                v103 = a2 + 7424;
                do
                {
                  v228 = _X19;
                  __asm
                  {
                    PRFM            #0, [X19,#0x100]
                    PRFM            #0, [X19,#0x180]
                  }

                  v231 = *(v654 + 4 * v83 + 2 * v219);
                  if (v231 == 0xFFFF)
                  {
                    v231 = *(a2 + 44 * *(v665 + 4 * v83));
                  }

                  v232 = (v187 + 40 + 12 * v219);
                  *v233.f32 = *v232;
                  v233.i64[1] = v232[1].u32[0];
                  v234 = (v187 + 64 + 12 * v219);
                  *v235.f32 = *v234;
                  v235.i64[1] = v234[1].u32[0];
                  v236 = vmulq_n_f32(v233, v706);
                  v236.i32[3] = 0;
                  v237 = vextq_s8(v233, v233, 8uLL).u64[0];
                  v238 = vmls_f32(vmul_f32(v719, vext_s8(*v232, v237, 4uLL)), v698, *v232);
                  *v239.f32 = vext_s8(v238, vmls_f32(vmul_f32(v699, *v232), v719, v237), 4uLL);
                  v239.i64[1] = v238.u32[0];
                  v240 = vmlaq_f32(v236, v710, v239);
                  v240.i64[1] = vextq_s8(v240, v240, 8uLL).u32[0];
                  v241 = vmulq_f32(v713, v233);
                  v241.i64[0] = vpaddq_f32(v241, v241).u64[0];
                  v242 = vmlaq_n_f32(v240, v713, vpadd_f32(*v241.f32, *v241.f32).f32[0]);
                  v243 = vaddq_f32(v242, v242);
                  v244 = v243;
                  v244.i32[3] = 0;
                  v245 = vmulq_n_f32(v235, v708);
                  v245.i32[3] = 0;
                  v233.i64[0] = vextq_s8(v235, v235, 8uLL).u64[0];
                  *v242.f32 = vmls_f32(vmul_f32(v716, vext_s8(*v234, *v233.f32, 4uLL)), v695, *v234);
                  *v233.f32 = vext_s8(*v242.f32, vmls_f32(vmul_f32(v696, *v234), v716, *v233.f32), 4uLL);
                  v233.i64[1] = v242.u32[0];
                  v246 = vmlaq_f32(v245, v702, v233);
                  v246.i64[1] = vextq_s8(v246, v246, 8uLL).u32[0];
                  _X19 += 128;
                  v247 = vmulq_f32(v704, v235);
                  v247.i64[0] = vpaddq_f32(v247, v247).u64[0];
                  v248 = vmlaq_n_f32(v246, v704, vpadd_f32(*v247.f32, *v247.f32).f32[0]);
                  v249 = vaddq_f32(v248, v248);
                  v250 = v249;
                  v250.i32[3] = 0;
                  v251 = v110 + (v231 << 6);
                  v252.i64[0] = *(v251 + 32);
                  v253 = *(v251 + 40);
                  v254 = vextq_s8(v244, v244, 8uLL).u64[0];
                  v255 = vext_s8(*v243.f32, v254, 4uLL);
                  v256 = vmla_f32(vmul_f32(*v205.f32, v254), *v243.f32, v728);
                  v257 = vmla_f32(vmul_f32(v731, *v243.f32), v255, v746);
                  v258 = v257.u32[0];
                  v259 = vextq_s8(v250, v250, 8uLL).u64[0];
                  v260 = vext_s8(*v249.f32, v259, 4uLL);
                  v261 = vmla_f32(vmul_f32(v731, *v249.f32), v260, v746);
                  v262 = vmulq_lane_f32(v775, v257, 1);
                  v262.i32[3] = 0;
                  v263 = vmulq_n_f32(v771, *v256.i32);
                  v263.i32[3] = 0;
                  v264 = vmla_f32(vmul_f32(*v205.f32, v259), *v249.f32, v728);
                  v265 = vmulq_n_f32(v768, v257.f32[0]);
                  v265.i32[3] = 0;
                  v266 = vaddq_f32(vaddq_f32(v262, v263), v265);
                  v267 = vmulq_lane_f32(v765, v261, 1);
                  v267.i32[3] = 0;
                  v268 = vmulq_n_f32(v762, *v264.i32);
                  v268.i32[3] = 0;
                  v269 = vmulq_n_f32(v760, v261.f32[0]);
                  v269.i32[3] = 0;
                  v270 = vaddq_f32(vaddq_f32(v267, v268), v269);
                  v271 = vmulq_f32(v266, v266);
                  v271.i64[0] = vpaddq_f32(v271, v271).u64[0];
                  v272 = vmulq_f32(v270, v270);
                  v272.i64[0] = vpaddq_f32(v272, v272).u64[0];
                  v273 = vadd_f32(vadd_f32(v124, vmul_lane_f32(vpadd_f32(*v271.f32, *v271.f32), v741, 1)), vsub_f32(vmul_lane_f32(vpadd_f32(*v272.f32, *v272.f32), v738, 1), v125));
                  v274 = vrecpe_f32(v273);
                  v275 = 4;
                  do
                  {
                    v274 = vmul_f32(v274, vrecps_f32(v273, v274));
                    --v275;
                  }

                  while (v275);
                  v252.i64[1] = v253;
                  v276 = vmulq_f32(v206, v252);
                  v277 = vpaddq_f32(v276, v276);
                  *v277.f32 = vpadd_f32(*v277.f32, *v277.f32);
                  if (v111)
                  {
                    *v278.f32 = vext_s8(v257, v256, 4uLL);
                    v278.i64[1] = v258;
                    v279 = vmulq_f32(v758, v278);
                    v279.i64[0] = vpaddq_f32(v279, v279).u64[0];
                    *v277.f32 = vsub_f32(*v277.f32, vadd_f32(v692, vpadd_f32(*v279.f32, *v279.f32)));
                  }

                  v280 = vaddq_f32(v700, vsubq_f32(v244, v250));
                  v281 = vdup_n_s32(0x3F4CCCCDu);
                  v282 = vand_s8(vdup_lane_s32(vcgtz_f32(v273), 0), vmul_f32(v274, v281));
                  if (v112)
                  {
                    *v283.f32 = vext_s8(v261, v264, 4uLL);
                    v283.i64[1] = v261.u32[0];
                    v284 = vmulq_f32(v755, v283);
                    v284.i64[0] = vpaddq_f32(v284, v284).u64[0];
                    *v277.f32 = vadd_f32(*v277.f32, vadd_f32(v690, vpadd_f32(*v284.f32, *v284.f32)));
                  }

                  v87 = v738;
                  v285 = vmulq_f32(v206, v280);
                  v285.i64[0] = vpaddq_f32(v285, v285).u64[0];
                  v286 = v205;
                  v286.i32[3] = vpadd_f32(*&v285, *&v285).i32[1];
                  v266.i32[3] = v277.i32[1];
                  *v228 = v286;
                  v228[1] = v266;
                  v270.i32[3] = v282.i32[1];
                  v228[2] = v270;
                  v228[3].i32[1] = 0;
                  v228[3].f32[2] = v218;
                  v228[3].f32[0] = v736;
                  v287 = vmulq_f32(v221, v252);
                  v288 = vmla_f32(vmul_f32(*v220.f32, v254), *v243.f32, v723);
                  v289 = vmla_f32(vmul_f32(v725, *v243.f32), v255, v721);
                  *v277.f32 = vmla_f32(vmul_f32(v725, *v249.f32), v260, v721);
                  v108 = v277;
                  v108.i32[1] = 0;
                  v290 = vmulq_lane_f32(v775, v289, 1);
                  v290.i32[3] = 0;
                  v291 = vmulq_n_f32(v771, *v288.i32);
                  v291.i32[3] = 0;
                  v292 = vmla_f32(vmul_f32(*v220.f32, v259), *v249.f32, v723);
                  v293 = vmulq_n_f32(v768, v289.f32[0]);
                  v293.i32[3] = 0;
                  v294 = vaddq_f32(vaddq_f32(v290, v291), v293);
                  v295 = vmulq_lane_f32(v765, *v277.f32, 1);
                  v295.i32[3] = 0;
                  v296 = vmulq_n_f32(v762, *v292.i32);
                  v296.i32[3] = 0;
                  v297 = vmulq_n_f32(v760, v277.f32[0]);
                  v297.i32[3] = 0;
                  v298 = vaddq_f32(vaddq_f32(v295, v296), v297);
                  v299 = vmulq_f32(v294, v294);
                  v299.i64[0] = vpaddq_f32(v299, v299).u64[0];
                  v86 = v741;
                  v300 = vmulq_f32(v298, v298);
                  v300.i64[0] = vpaddq_f32(v300, v300).u64[0];
                  v301 = vadd_f32(vadd_f32(v124, vmul_lane_f32(vpadd_f32(*v299.f32, *v299.f32), v741, 1)), vsub_f32(vmul_lane_f32(vpadd_f32(*v300.f32, *v300.f32), v738, 1), v125));
                  v302 = vrecpe_f32(v301);
                  v303 = 4;
                  do
                  {
                    v302 = vmul_f32(v302, vrecps_f32(v301, v302));
                    --v303;
                  }

                  while (v303);
                  v304 = vpaddq_f32(v287, v287).u64[0];
                  v305 = vpadd_f32(v304, v304);
                  v106 = v734;
                  if (v111)
                  {
                    *v306.f32 = vext_s8(v289, v288, 4uLL);
                    v306.i64[1] = v289.u32[0];
                    v307 = vmulq_f32(v758, v306);
                    v307.i64[0] = vpaddq_f32(v307, v307).u64[0];
                    v305 = vsub_f32(v305, vadd_f32(v688, vpadd_f32(*v307.f32, *v307.f32)));
                  }

                  if (v112)
                  {
                    *v308.f32 = vext_s8(*v277.f32, v292, 4uLL);
                    v308.i64[1] = v108.i64[0];
                    v309 = vmulq_f32(v755, v308);
                    v309.i64[0] = vpaddq_f32(v309, v309).u64[0];
                    v305 = vadd_f32(v305, vadd_f32(v687, vpadd_f32(*v309.f32, *v309.f32)));
                  }

                  v310 = vmulq_f32(v221, v280);
                  v310.i64[0] = vpaddq_f32(v310, v310).u64[0];
                  v311 = v220;
                  v311.i32[3] = vpadd_f32(*&v310, *&v310).i32[1];
                  v294.i32[3] = v305.i32[1];
                  v228[4] = v311;
                  v228[5] = v294;
                  v298.i32[3] = vand_s8(vdup_lane_s32(vcgtz_f32(v301), 0), vmul_f32(v302, v281)).i32[1];
                  v228[6] = v298;
                  v228[7].i32[1] = 0;
                  v228[7].f32[2] = v218;
                  v228[7].f32[0] = v736;
                  ++v219;
                  v312 = *(v187 + 2);
                }

                while (v219 < v312);
                v313 = v655;
                if (v312 != 1)
                {
                  v313 = 0;
                }

                if (v313)
                {
                  v314 = vmul_n_f32(vmax_f32(vneg_f32(v126), 0), v653);
                  v315 = vrsqrte_f32(v314);
                  v316 = 4;
                  do
                  {
                    v315 = vmul_f32(v315, vrsqrts_f32(vmul_f32(v315, v315), v314));
                    --v316;
                  }

                  while (v316);
                  ++_X22[3];
                  v317 = v652[1];
                  v319 = *(v187 + 96);
                  v318 = *(v187 + 100);
                  v320 = *(v187 + 88);
                  v321 = *(v187 + 92);
                  v323 = v652[2];
                  v322 = v652[3];
                  v324 = (((v318 * *v652) + (v322 * v320)) + (v317 * v319)) - (v321 * v323);
                  v325 = (((v318 * v317) + (v322 * v321)) + (v323 * v320)) - (v319 * *v652);
                  v326 = (((v318 * v323) + (v322 * v319)) + (*v652 * v321)) - (v320 * v317);
                  v327 = (((v322 * v318) - (*v652 * v320)) - (v317 * v321)) - (v323 * v319);
                  v329 = *(v651 + 8);
                  v328 = *(v651 + 12);
                  v330 = *(v651 + 4);
                  v331 = (((v327 * *v651) - (v324 * v328)) - (v325 * v329)) + (v330 * v326);
                  v332 = (((v327 * v330) - (v325 * v328)) - (v326 * *v651)) + (v329 * v324);
                  v333 = (((v327 * v329) - (v326 * v328)) - (v324 * v330)) + (*v651 * v325);
                  v334 = (((*v651 * v324) + (v327 * v328)) + (v325 * v330)) + (v326 * v329);
                  v335 = (v110 + (*(a2 + 44 * *(v665 + 4 * v83)) << 6));
                  v336 = v335[1];
                  v337 = v335[2];
                  v338 = v331 * *v335;
                  v339 = v332 * v336;
                  v340 = v333 * v337;
                  v341 = sqrtf((((v339 * v339) + (v338 * v338)) + (v340 * v340)) + (v334 * v334));
                  if (v341 != 0.0)
                  {
                    v338 = v338 / v341;
                    v339 = v339 / v341;
                    v340 = v340 / v341;
                    v334 = v334 / v341;
                  }

                  v747 = vmax_f32(v650, vbsl_s8(vdup_lane_s32(vceqz_f32(v314), 0), v314, vmul_f32(v314, v315))).u32[0];
                  _X19 = &v228[12];
                  v342 = (((v336 * v339) + (v338 * *v335)) + (v340 * v337)) + (v334 * 0.0);
                  v343 = vmulq_n_f32(v775, v678.f32[0]);
                  v343.i32[3] = 0;
                  v344 = vmulq_lane_f32(v771, v678, 1);
                  v344.i32[3] = 0;
                  v345 = vmulq_laneq_f32(v768, v752, 2);
                  v345.i32[3] = 0;
                  v346 = vaddq_f32(vaddq_f32(v343, v344), v345);
                  v347 = vmulq_n_f32(v765, v678.f32[0]);
                  v347.i32[3] = 0;
                  v348 = vmulq_lane_f32(v762, v678, 1);
                  v348.i32[3] = 0;
                  v349 = vmulq_laneq_f32(v760, v752, 2);
                  v349.i32[3] = 0;
                  v729 = vaddq_f32(vaddq_f32(v347, v348), v349);
                  v732 = v346;
                  v350 = vmulq_f32(v346, v346);
                  v350.i64[0] = vpaddq_f32(v350, v350).u64[0];
                  v351 = vmulq_f32(v729, v729);
                  v351.i64[0] = vpaddq_f32(v351, v351).u64[0];
                  v352 = vadd_f32(vmul_lane_f32(vpadd_f32(*v350.f32, *v350.f32), v741, 1), vmul_lane_f32(vpadd_f32(*v351.f32, *v351.f32), v738, 1));
                  v353 = vrecpe_f32(v352);
                  v354 = 4;
                  do
                  {
                    v353 = vmul_f32(v353, vrecps_f32(v352, v353));
                    --v354;
                  }

                  while (v354);
                  v355 = v342 / v334;
                  if ((v341 + -0.000001) < 0.0)
                  {
                    v355 = 0.0;
                  }

                  *v356.i32 = atanf(v355);
                  v357.i32[1] = 0;
                  if (v111)
                  {
                    v358 = vmulq_f32(v758, v752);
                    v358.i64[0] = vpaddq_f32(v358, v358).u64[0];
                    v357 = vpadd_f32(*v358.f32, *v358.f32);
                  }

                  v189 = v683;
                  if (v112)
                  {
                    v359 = vmulq_f32(v755, v752);
                    v359.i64[0] = vpaddq_f32(v359, v359).u64[0];
                    v357 = vpadd_f32(*v359.f32, *v359.f32);
                  }

                  v360 = vand_s8(vdup_lane_s32(vcgtz_f32(v352), 0), vmul_f32(v353, v281));
                  *v356.i32 = -*v356.i32;
                  v361.i64[0] = 0;
                  v361.i32[2] = 0;
                  v361.i32[3] = vdupq_lane_s32(v356, 0).i32[3];
                  v362 = v732;
                  v106 = v734;
                  v362.i32[3] = v357.i32[1];
                  v228[8] = v361;
                  v228[9] = v362;
                  v363 = v729;
                  v363.i32[3] = v360.i32[1];
                  v228[10] = v363;
                  v228[11].f32[0] = v736;
                  v228[11].i32[1] = 0;
                  v86 = v741;
                  v228[11].i32[2] = v747;
                  v87 = v738;
                }
              }

              else
              {
                v103 = a2 + 7424;
              }

              goto LABEL_146;
            }
          }

          _X22[3] = 0;
          *_X22 = v677;
          *(_X22 + 1) = v186;
          *(_X22 + 1) = v673;
          *(_X22 + 2) = v671;
          *(_X22 + 14) = 0;
          v87 = v738;
          v86 = v741;
          v106 = v734;
          v103 = a2 + 7424;
LABEL_146:
          v84 = v189 + 1;
          v64 = a2;
          v82 = *(a2 + 7688);
          _X22 = _X19;
          v91 = v666;
          goto LABEL_147;
        }
      }

LABEL_250:
      *&v661[v656] = 0;
    }

    return 1;
  }

  v36 = 0;
  v37 = 0;
  v32.n128_u32[0] = *(a1 + 212);
  v38 = (a2 + 7424);
  if (v32.n128_f32[0] <= *(a1 + 216))
  {
    v32.n128_u32[0] = *(a1 + 216);
  }

  if ((v30 & 8) != 0)
  {
    v39 = 112;
  }

  else
  {
    v39 = 48;
  }

  if ((v30 & 8) != 0)
  {
    v40 = 7;
  }

  else
  {
    v40 = 6;
  }

  v41 = (a2 + 2818);
  v33.n128_u64[0] = 0;
  do
  {
    if (*v38 != 0xFFFF)
    {
      ++v37;
    }

    v42 = *(v38 - 32);
    if (v42)
    {
      v36 += v42 * v39 + ((4 * v42 + 12) & 0xFFFFFFF0) + 80;
      if ((*(v41 - 1) & 1) == 0)
      {
        v43 = *v41;
        v44 = v43 != 1 || v32.n128_f32[0] <= 0.0;
        v45 = 2 * v43;
        if (!v44)
        {
          v45 = 3;
        }

        v36 += v45 << v40;
      }
    }

    ++v38;
    v41 += 52;
    --v35;
  }

  while (v35);
  v774 = v25;
  v46 = _X19;
  v47 = v30;
  v48 = (104 * v37 + 15) & 0xFFFFFFF0;
  v49 = v24;
  v50 = (v36 + 15) & 0xFFFFFFF0;
  if (v50)
  {
    v51 = (**a3)(a3, v50 + 16, v32, v33);
    if (v51 == -1)
    {
      v52 = 0;
    }

    else
    {
      v52 = v51;
    }
  }

  else
  {
    v52 = 0;
  }

  if (v50)
  {
    v56 = v52 == 0;
  }

  else
  {
    v56 = 0;
  }

  v57 = !v56;
  if (v48)
  {
    v58 = v57 == 0;
  }

  else
  {
    v58 = 1;
  }

  if (v58)
  {
    _X15 = 0;
  }

  else
  {
    v59 = v52;
    v60 = (*(*a3 + 8))(a3, (104 * v37 + 15) & 0xFFFFFFF0);
    v52 = v59;
    if (v60 == -1)
    {
      _X15 = 0;
    }

    else
    {
      _X15 = v60;
    }
  }

  v55 = a1;
  result = 0;
  if ((v57 & 1) == 0)
  {
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(v26 + 32) = 0;
    *(v26 + 30) = 0;
    return result;
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(v26 + 32) = 0;
  *(v26 + 30) = 0;
  if (v48)
  {
    v61 = _X15 == 0;
  }

  else
  {
    v61 = 0;
  }

  v24 = v49;
  v30 = v47;
  _X19 = v46;
  v25 = v774;
  if (!v61)
  {
    goto LABEL_58;
  }

  return result;
}

uint64_t physx::Dy::solveContact(uint64_t result, int32x2_t a2, int32x2_t a3)
{
  v6 = *result;
  v5 = *(result + 8);
  v8.i64[0] = **result;
  v7 = (*result + 8);
  v8.i64[1] = *v7;
  v9.i64[0] = *v5;
  v9.i64[1] = *(v5 + 8);
  v11.i64[0] = *(*result + 16);
  v10 = (*result + 24);
  v11.i64[1] = *v10;
  v12.i64[0] = *(v5 + 16);
  v12.i64[1] = *(v5 + 24);
  if (*(result + 30))
  {
    v13 = vdup_lane_s32(a2, 0);
    v14.i64[0] = v6[4];
    v14.i64[1] = *(v6 + 10);
    v15.i64[0] = *(v5 + 32);
    v15.i64[1] = *(v5 + 40);
    v16.i64[0] = v6[6];
    v16.i64[1] = *(v6 + 14);
    v17.i64[0] = *(v5 + 48);
    v17.i64[1] = *(v5 + 56);
    v18 = vsubq_f32(v16, v17);
    v19 = vdup_lane_s32(a3, 0);
    _X15 = *(result + 32);
    v21 = &_X15[2 * *(result + 30)];
    v22 = vneg_f32(0x80000000800000);
    do
    {
      v23 = _X15->u8[2];
      v24 = _X15->u8[3];
      __asm { PRFM            #0, [X15,#0x50] }

      result = 3 * _X15->u8[2];
      v30 = &_X15[6 * _X15->u8[2] + 10];
      v4.i32[0] = _X15[1].i32[0];
      v31 = _X15[1].f32[1];
      v32 = _X15[6].f32[0];
      v3.i32[0] = _X15->i32[1];
      if (_X15->i8[2])
      {
        *v33.f32 = _X15[4];
        v33.i64[1] = _X15[5].u32[0];
        v34 = vmulq_n_f32(v33, v31);
        v34.i32[3] = 0;
        v35 = vmulq_f32(v18, v33);
        v35.i64[0] = vpaddq_f32(v35, v35).u64[0];
        v36 = vpadd_f32(*v35.f32, *v35.f32);
        v37 = &_X15[5] + 1;
        *v35.f32 = vld1_dup_f32(v37);
        v38 = vmulq_n_f32(v33, v32);
        v38.i32[3] = 0;
        v39 = vnegq_f32(v38);
        v40 = vneg_f32(*v35.f32);
        _X2 = _X15 + 13;
        v42 = 0;
        v43 = &_X15[6 * _X15->u8[2] + 10];
        v44 = _X15->u8[2];
        v45 = v43;
        do
        {
          __asm { PRFM            #0, [X2,#0x68] }

          *v47.f32 = _X2[-3];
          v47.i64[1] = _X2[-2].u32[0];
          *v48.f32 = _X2[-1];
          v48.i64[1] = _X2->u32[0];
          v49 = vmulq_f32(v14, v47);
          v49.i64[0] = vpaddq_f32(v49, v49).u64[0];
          v50 = vmulq_f32(v15, v48);
          v50.i64[0] = vpaddq_f32(v50, v50).u64[0];
          *v50.f32 = vpadd_f32(*v50.f32, *v50.f32);
          *v49.f32 = vsub_f32(vpadd_f32(*v49.f32, *v49.f32), *v50.f32);
          v50.i32[0] = _X2[1].i32[0];
          v51 = vdup_lane_s32(*v50.f32, 0);
          *v49.f32 = vsub_f32(vadd_f32(v36, *v49.f32), vmul_n_f32(v19, v50.f32[0]));
          v52 = &_X2[-2] + 1;
          *v50.f32 = vld1_dup_f32(v52);
          v53 = vld1_dup_f32(v45++);
          *v49.f32 = vadd_f32(v51, vmin_f32(v40, vmul_n_f32(vmax_f32(v13, vadd_f32(*v49.f32, *v50.f32)), _X2[1].f32[1])));
          v54 = vsubq_f32(vmlaq_f32(vmulq_f32(v11, v47), v33, v8), vmlaq_f32(vmulq_f32(v12, v48), v33, v9));
          v54.i64[0] = vpaddq_f32(v54, v54).u64[0];
          *v49.f32 = vmin_f32(vadd_f32(v53, vmax_f32(vmul_n_f32(vsub_f32(*v49.f32, vpadd_f32(*v54.f32, *v54.f32)), _X2->f32[1]), vneg_f32(v53))), v22);
          *v50.f32 = vsub_f32(*v49.f32, v53);
          v8 = vmlaq_n_f32(v8, v34, v50.f32[0]);
          v8.i64[1] = vextq_s8(v8, v8, 8uLL).u32[0];
          v9 = vmlaq_n_f32(v9, v39, v50.f32[0]);
          v9.i64[1] = vextq_s8(v9, v9, 8uLL).u32[0];
          v11 = vmlaq_n_f32(v11, v47, vmul_f32(v3, *v50.f32).f32[0]);
          v11.i64[1] = vextq_s8(v11, v11, 8uLL).u32[0];
          v12 = vmlsq_lane_f32(v12, v48, vmul_f32(v4, *v50.f32), 0);
          v12.i64[1] = vextq_s8(v12, v12, 8uLL).u32[0];
          *v43 = v49.f32[0];
          v42 = vadd_f32(v42, *v49.f32);
          _X2 += 6;
          v43 = v45;
          --v44;
        }

        while (v44);
      }

      else
      {
        v42 = 0;
      }

      v55 = (4 * v23 + 12) & 0x7F0;
      if (v24)
      {
        v56 = 0;
        v57 = 2 * result;
        result = v24 << 6;
        v58 = _X15[2];
        v59 = vmul_n_f32(v42, v58.f32[0]);
        v60 = vmul_lane_f32(v42, v58, 1);
        v61 = vneg_f32(v60);
        v62 = &_X15[v57] + v55;
        v63 = 0uLL;
        do
        {
          _X4 = &v62[v56];
          __asm { PRFM            #0, [X4,#0xD0] }

          v66 = *&v62[v56 + 136];
          v68 = *&v62[v56 + 80];
          v67 = *&v62[v56 + 96];
          v69 = vdup_laneq_s32(v68, 3);
          v68.i32[3] = 0;
          v70 = vdup_laneq_s32(v67, 3);
          v71 = vmul_laneq_f32(v19, v67, 3);
          v67.i32[3] = 0;
          v72 = *&v62[v56 + 112];
          v72.i32[3] = 0;
          v73 = &v62[v56 + 132];
          v74 = vld1_dup_f32(v73);
          v75 = vmulq_f32(v14, v67);
          v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
          v76 = vmulq_f32(v15, v72);
          v76.i64[0] = vpaddq_f32(v76, v76).u64[0];
          *v75.f32 = vsub_f32(vpadd_f32(*v75.f32, *v75.f32), vpadd_f32(*v76.f32, *v76.f32));
          v77 = vmulq_f32(v18, v68);
          v77.i64[0] = vpaddq_f32(v77, v77).u64[0];
          v78 = vadd_f32(v69, vsub_f32(vadd_f32(*v75.f32, vpadd_f32(*v77.f32, *v77.f32)), v71));
          v79 = vmulq_n_f32(v68, v31);
          v79.i32[3] = 0;
          v80 = vmulq_n_f32(v68, v32);
          v80.i32[3] = 0;
          v81 = vsubq_f32(vmlaq_f32(vmulq_f32(v11, v67), v68, v8), vmlaq_f32(vmulq_f32(v12, v72), v68, v9));
          v81.i64[0] = vpaddq_f32(v81, v81).u64[0];
          v82 = vmls_laneq_f32(vmls_laneq_f32(v74, vsub_f32(vmul_n_f32(v78, *&v62[v56 + 128]), v70), *&v62[v56 + 112], 3), vpadd_f32(*v81.f32, *v81.f32), *&v62[v56 + 112], 3);
          v83 = vdupq_lane_s32(vcgt_f32(vabs_f32(v82), vmul_n_f32(v59, v66)), 0);
          v84 = vbsl_s8(*v83.i8, vmin_f32(vmul_n_f32(v60, v66), vmax_f32(vmul_n_f32(v61, v66), v82)), v82);
          *v81.f32 = vsub_f32(v84, v74);
          v8 = vmlaq_n_f32(v8, v79, v81.f32[0]);
          v8.i64[1] = vextq_s8(v8, v8, 8uLL).u32[0];
          v9 = vmlsq_lane_f32(v9, v80, *v81.f32, 0);
          v9.i64[1] = vextq_s8(v9, v9, 8uLL).u32[0];
          v11 = vmlaq_n_f32(v11, v67, vmul_f32(v3, *v81.f32).f32[0]);
          v11.i64[1] = vextq_s8(v11, v11, 8uLL).u32[0];
          v12 = vmlsq_lane_f32(v12, v72, vmul_f32(v4, *v81.f32), 0);
          v63 = vorrq_s8(v83, v63);
          v12.i64[1] = vextq_s8(v12, v12, 8uLL).u32[0];
          *(_X4 + 33) = v84.i32[0];
          v56 += 64;
        }

        while (result != v56);
        _X15[7].i32[0] = v63.i32[0];
      }

      _X15 = (v30 + v55 + (v24 << 6));
    }

    while (_X15 < v21);
  }

  *v6 = v8.i64[0];
  *v7 = v8.i32[2];
  *v5 = v9.i64[0];
  *(v5 + 8) = v9.i32[2];
  v6[2] = v11.i64[0];
  *v10 = v11.i32[2];
  *(v5 + 16) = v12.i64[0];
  *(v5 + 24) = v12.i32[2];
  return result;
}

uint64_t physx::Dy::writeBackContact(uint64_t result)
{
  if (*(result + 30))
  {
    _X14 = *(result + 32);
    v1 = *(result + 40);
    v3 = &_X14[16 * *(result + 30)];
    do
    {
      v4 = _X14[2];
      v5 = _X14[3];
      __asm
      {
        PRFM            #0, [X14,#0x150]
        PRFM            #0, [X14,#0x1D0]
      }

      v12 = *_X14;
      if (v12 == 3)
      {
        v13 = 112;
      }

      else
      {
        v13 = 48;
      }

      result = &_X14[v13 * v4 + 80];
      if (v1 && _X14[2])
      {
        v14 = result;
        v15 = _X14[2];
        do
        {
          v16 = *v14++;
          *v1++ = v16;
          --v15;
        }

        while (v15);
      }

      if (*(_X14 + 14))
      {
        v17 = *(_X14 + 8);
        if (v17)
        {
          *v17 = 1;
        }
      }

      if (v12 == 3)
      {
        v18 = 7;
      }

      else
      {
        v18 = 6;
      }

      _X14 = (result + ((4 * v4 + 12) & 0x7F0) + (v5 << v18));
    }

    while (_X14 < v3);
  }

  return result;
}

float *physx::Dy::setSolverConstantsStep(float *result, float *a2, float *a3, float *a4, float *a5, float *a6, float *a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, float a14, float a15, float a16, float a17)
{
  v17 = 1.0 / a10;
  if (a10 <= a11)
  {
    v17 = 0.0;
  }

  v18 = *(a8 + 12);
  *a7 = v17;
  v19 = *(a8 + 76);
  if (v19)
  {
    *result = 0.0;
    v21 = *(a8 + 64);
    v22 = *(a8 + 68);
    v23 = (v22 + (a14 * v21)) * a14;
    v24 = ((v22 * *(a8 + 28)) - (v21 * v18)) * a14;
    v25 = (v22 + (a13 * v21)) * a13;
    *a4 = a15;
    v26 = 1.0 / ((v23 * a10) + 1.0);
    v27 = (v25 * a10) + 1.0;
    v28 = (v24 * v26) * a10;
    v29 = -(v26 * v23) * a10;
    v30 = 1.0 / (v23 + 1.0);
    v31 = v25 + 1.0;
    v32 = v24 * v30;
    v33 = -(v30 * v23);
    if ((v19 & 2) != 0)
    {
      v29 = v33;
    }

    else
    {
      v32 = v28;
    }

    if ((v19 & 2) != 0)
    {
      v26 = v30;
    }

    else
    {
      v31 = v27;
    }

    *a3 = v32;
    *a5 = v29;
    *a6 = 1.0 - v26;
    *a2 = -(a16 * a12) * (1.0 - (1.0 / v31));
  }

  else
  {
    *a5 = -1.0;
    *a6 = 1.0;
    if ((v19 & 4) != 0 && (v20 = -a9, *(a8 + 68) < v20))
    {
      *result = 0.0;
      *a2 = 0.0;
      *a3 = *(a8 + 64) * v20;
      *a4 = 0.0;
    }

    else
    {
      *a2 = -(a16 * a12);
      if ((v19 & 0x80) != 0)
      {
        *result = 0.0;
        v34 = *(a8 + 28) - (v18 * a17);
      }

      else
      {
        *result = v18;
        v34 = *(a8 + 28);
      }

      *a3 = v34;
      *a4 = a15;
    }
  }

  return result;
}

unint64_t physx::Dy::setupSolverConstraintStep(uint64_t a1, uint64_t (***a2)(void, void), float a3, float a4, float a5, float a6, float a7)
{
  v137 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 144);
  v8 = *(a1 + 16);
  if (!v7)
  {
    result = 0;
    *(v8 + 36) = 0;
    *(v8 + 28) = 0;
    *(v8 + 44) = 0;
    return result;
  }

  v10 = *(v8 + 18);
  if (*(v8 + 16) == -1)
  {
    v11 = v10 != 0xFFFF;
    v112 = *(*v8 + 62);
  }

  else
  {
    v112 = 0;
    v11 = 1;
  }

  if (v10 == 0xFFFF)
  {
    v111 = *(*(v8 + 8) + 62);
  }

  else
  {
    v111 = 0;
  }

  if (v11)
  {
    v13 = 160;
  }

  else
  {
    v13 = 96;
  }

  v14 = v13 * v7;
  v15 = (**a2)(a2, (v13 * v7 + 192));
  if (v15 + 1 < 2)
  {
    return 0;
  }

  v16 = (v14 + 176);
  *(v8 + 32) = v15;
  *(v8 + 30) = v16 >> 4;
  *(v8 + 40) = *(a1 + 160);
  *(v8 + 28) = 8;
  bzero(v15, v16);
  v21 = *(v8 + 32);
  v22 = *(a1 + 144);
  if (v11)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  *v21 = v23;
  *(v21 + 1) = v22;
  *(v21 + 2) = 0;
  v24 = *a1;
  *(v21 + 44) = *a1;
  *(v21 + 60) = *(a1 + 4);
  v25 = *(a1 + 8);
  *(v21 + 64) = vneg_f32(v25);
  *(v21 + 16) = *(a1 + 172);
  *(v21 + 24) = *(a1 + 180);
  v26 = *(a1 + 148);
  *(v21 + 4) = vmul_n_f32(v26, a4);
  v27 = v26.f32[0] != 3.4028e38;
  if (*(a1 + 152) != 3.4028e38)
  {
    v27 = 1;
  }

  *(v21 + 3) = v27;
  v28 = *(*(a1 + 56) + 32);
  *(v21 + 12) = v24 * v28;
  v29 = *(*(a1 + 64) + 32);
  *(v21 + 28) = v29 * v25.f32[0];
  v30 = *(a1 + 192) - *(a1 + 96);
  *(v21 + 32) = vsub_f32(*(a1 + 184), *(a1 + 88));
  *(v21 + 40) = v30;
  v31 = *(a1 + 204) - *(a1 + 124);
  v17.i64[0] = *(a1 + 116);
  v32 = COERCE_DOUBLE(vsub_f32(*(a1 + 196), *v17.f32));
  *(v21 + 48) = v32;
  *(v21 + 56) = v31;
  memset(v136, 0, sizeof(v136));
  v33 = *(a1 + 136);
  if (v22)
  {
    v34 = (v33 + 78);
    for (i = v22; i; --i)
    {
      if ((*(v34 - 1) & 0x40) != 0)
      {
        v36 = *v34;
        if (v36 == 2048)
        {
          v37 = 1024;
          goto LABEL_26;
        }

        if (v36 == 2049)
        {
          v37 = 1025;
LABEL_26:
          *v34 = v37;
        }
      }

      v34 += 40;
    }
  }

  physx::Dy::preprocessRows(v136, v33, &v135, &v134, v22, *(a1 + 40) + 28, *(a1 + 48) + 28, a1, v28, v29, 0.0, v32, v17, v18, v19, v20, (v11 | *(a1 + 168)) & 1, *(a1 + 169), 0);
  if (!*(a1 + 144))
  {
    return 0;
  }

  v110 = v13;
  v38 = 0;
  v108 = 0;
  _X20 = (v21 + 176);
  v106 = v21 + 128;
  v107 = v21 + 80;
  v40 = &v134.f32[2];
  v41 = &v135.f32[2];
  v42 = 1.0;
  v43 = 1.0;
  v109 = v11;
  do
  {
    v44 = a4;
    __asm { PRFM            #0, [X20,#0x80] }

    v50 = *(v136 + v38);
    v51 = v50[9].i16[2];
    if (((a4 < 1.0) & *(a1 + 170)) == 0)
    {
      v44 = 1.0;
    }

    if ((v51 & 0x20) != 0)
    {
      v52 = v44;
    }

    else
    {
      v52 = 1.0;
    }

    if (v11)
    {
      v53 = *(a1 + 32);
      v54 = *(a1 + 40);
      v55 = *(a1 + 48);
      v132[0] = *(a1 + 24);
      v132[1] = v54;
      v56 = *(a1 + 64);
      v132[2] = *(a1 + 56);
      v133 = *(v8 + 16);
      v130[0] = v53;
      v130[1] = v55;
      v130[2] = v56;
      v131 = *(v8 + 18);
      v57 = v131;
      physx::Dy::createImpulseResponseVector(&v126, v50, &v50[2], v54, v133);
      v58 = -v50[5].f32[0];
      v120 = vneg_f32(v50[4]);
      v121 = v58;
      v59 = -v50[7].f32[0];
      v118 = vneg_f32(v50[6]);
      v119 = v59;
      physx::Dy::createImpulseResponseVector(&v122, &v120, &v118, v55, v57);
      v60 = -v123;
      v61 = -v125;
      v62 = v52 * v50[5].f32[1];
      v63 = v52 * v50[7].f32[1];
      *_X20 = v126;
      _X20[1].i32[0] = v127;
      _X20[2] = vneg_f32(v122);
      _X20[4] = v128;
      _X20[3].f32[0] = v60;
      _X20[5].i32[0] = v129;
      _X20[6] = vneg_f32(v124);
      _X20[7].f32[0] = v61;
      _X20[8].f32[1] = v62;
      _X20[9].f32[0] = v63;
      _X20[10].i32[1] = 0;
      _X20[9].i32[1] = 0;
      _X20[11].i32[1] = 1065353216;
      ImpulseResponse = physx::Dy::getImpulseResponse(v132, &v126, _X20 + 12, v130, &v122, _X20 + 16, *a1, *(a1 + 4), *(a1 + 8), *(a1 + 12));
      if (ImpulseResponse >= 0.000001)
      {
        v65 = ImpulseResponse + 0.0001;
      }

      else
      {
        v65 = 0.0;
      }

      v66 = physx::Dy::SolverExtBodyStep::projectVelocity(v132, _X20, &_X20[4]);
      v67 = physx::Dy::SolverExtBodyStep::projectVelocity(v130, &_X20[2], &_X20[6]);
      v68 = v67;
      if ((v50[9].i16[2] & 0x40) == 0)
      {
        _X20[11].i32[1] = 0;
      }

      v69 = v66 - v67;
      v43 = 0.7;
      v70 = a6 * 1.5;
      v42 = 0.7;
      v11 = v109;
    }

    else
    {
      v71 = *(v41 - 2);
      v72 = *(v41 - 1);
      v73 = *v41;
      v74 = *(v40 - 2);
      v75 = *(v40 - 1);
      v76 = *v40;
      v77 = v52 * v50[5].f32[1];
      v78 = v52 * v50[7].f32[1];
      v79 = v50->f32[0];
      _X20->i32[0] = v50->i32[0];
      v80 = v50->f32[1];
      _X20->f32[1] = v80;
      v81 = v50[1].f32[0];
      _X20[1].f32[0] = v81;
      v82 = v50[4].f32[0];
      _X20[2].f32[0] = v82;
      v83 = v50[4].f32[1];
      _X20[2].f32[1] = v83;
      v84 = v50[5].f32[0];
      _X20[3].f32[0] = v84;
      v85 = v50[2].f32[0];
      _X20[4].f32[0] = v85;
      v86 = v50[2].f32[1];
      _X20[4].f32[1] = v86;
      v87 = v50[3].f32[0];
      _X20[5].f32[0] = v87;
      v88 = v50[6].f32[0];
      _X20[6].f32[0] = v88;
      v89 = v50[6].f32[1];
      _X20[6].f32[1] = v89;
      v90 = v50[7].f32[0];
      _X20[7].f32[0] = v90;
      _X20[8].f32[1] = v77;
      _X20[9].f32[0] = v78;
      _X20[10].i32[1] = 0;
      _X20[9].i32[1] = 0;
      _X20[11].i32[1] = 1065353216;
      v91 = *(a1 + 56);
      v92 = *(a1 + 64);
      v65 = ((((((v83 * v83) + (v82 * v82)) + (v84 * v84)) * v92[8]) * *(a1 + 8)) + (((((v80 * v80) + (v79 * v79)) + (v81 * v81)) * v91[8]) * *a1)) + (((((v72 * v72) + (v71 * v71)) + (v73 * v73)) * *(a1 + 4)) + ((((v75 * v75) + (v74 * v74)) + (v76 * v76)) * *(a1 + 12)));
      v66 = (((v80 * v91[1]) + (*v91 * v79)) + (v91[2] * v81)) + (((v86 * v91[5]) + (v91[4] * v85)) + (v91[6] * v87));
      v68 = (((v83 * v92[1]) + (*v92 * v82)) + (v92[2] * v84)) + (((v89 * v92[5]) + (v92[4] * v88)) + (v92[6] * v90));
      v69 = v66 - v68;
      if ((v51 & 0x40) != 0)
      {
        v70 = a6 * 15.0;
      }

      else
      {
        _X20[4] = 0;
        _X20[5].i32[0] = 0;
        _X20[6] = 0;
        _X20[7].i32[0] = 0;
        v70 = a6 * 15.0;
        _X20[11].i32[1] = 0;
      }
    }

    LODWORD(v132[0]) = 0;
    v93 = *(a1 + 156);
    if (v11)
    {
      v93 = 0.00001;
    }

    v94 = v50[9].i16[2];
    if ((v94 & 0x40) != 0)
    {
      v95 = v42;
    }

    else
    {
      v95 = v43;
    }

    v96 = v70 * a7;
    if ((v94 & 0x40) != 0)
    {
      v97 = a6 * 1.5;
    }

    else
    {
      v97 = v96;
    }

    physx::Dy::setSolverConstantsStep(&_X20[1] + 1, &_X20[3] + 1, &_X20[8], &_X20[10], &_X20[5] + 1, &_X20[7] + 1, v132, v50, v69, v65, v93, v95, a3, a4, v97, a5, a6);
    v98 = v132[0];
    _X20[11].i32[0] = v132[0];
    if (v112)
    {
      _X20[8].f32[0] = _X20[8].f32[0] - v66;
    }

    if (v111)
    {
      _X20[5].f32[1] = v68 + _X20[5].f32[1];
    }

    v99 = v50[9].i16[2];
    if ((v99 & 0x10) != 0)
    {
      _X20[10].i32[1] |= 2u;
    }

    if ((v99 & 8) != 0)
    {
      _X20[10].i32[1] |= 4u;
    }

    v100 = v50[9].u16[3];
    if (v100)
    {
      _X20[10].i32[1] |= 0x40u;
    }

    if (!v11 && (*(a1 + 168) & 1) == 0)
    {
      if (v100 == 1024)
      {
        _X20[10].i32[1] |= 8u;
        v101 = *(a1 + 4);
        v102 = v101 * *v41;
        v103 = (v107 + 16 * v108);
        *v103 = vmul_n_f32(*(v41 - 2), v101);
        v103[1].f32[0] = v102;
        v103[1].i32[1] = v98;
        v104 = *(a1 + 12);
        v105 = (v106 + 16 * v108);
        *v105 = vmul_n_f32(*(v40 - 2), v104);
        v105[1].f32[0] = v104 * *v40;
        v105[1].i32[1] = v50[1].i32[1];
        ++v108;
      }

      else if ((v100 & 0x800) != 0)
      {
        _X20[10].i32[1] |= 0x10u;
      }
    }

    _X20 = (_X20 + v110);
    ++v38;
    result = *(a1 + 144);
    v40 += 4;
    v41 += 4;
  }

  while (v38 < result);
  return result;
}

__n128 physx::Dy::solveExt1D(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, float32x4_t *a7, float32x4_t *a8, int32x2_t a9, int32x2_t a10, float32x4_t *a11, int32x4_t *a12, int32x4_t *a13, float32x4_t *a14, float32x4_t *a15, float32x4_t *a16, __n128 *a17)
{
  v20 = *(a1 + 32);
  if (v20->i8[1])
  {
    a10.i32[0] = 0;
    v21 = 0;
    v22.i64[0] = v20[2].i64[0];
    v23.i64[0] = v20[3].i64[0];
    v24 = vdup_lane_s32(a9, 0);
    v22.i64[1] = v20[2].u32[2];
    v23.i64[1] = v20[3].u32[2];
    v25 = *a12;
    v25.i32[3] = 0;
    v26 = vdupq_laneq_s32(*a12, 3).u64[0];
    v27 = vmulq_n_f32(v22, vmla_f32(0xBF000000BF000000, v26, v26).f32[0]);
    v27.i32[3] = 0;
    v28 = vextq_s8(v25, v25, 8uLL).u64[0];
    v29 = vextq_s8(v22, v22, 8uLL).u64[0];
    v30 = vmls_f32(vmul_f32(*v22.f32, v28), *a12->i8, v29);
    v31 = vmls_f32(vmul_f32(vext_s8(*v22.f32, v29, 4uLL), *a12->i8), vext_s8(*a12->i8, v28, 4uLL), *v22.f32);
    *v32.f32 = vext_s8(v31, v30, 4uLL);
    v32.i64[1] = v31.u32[0];
    v33 = vmlaq_laneq_f32(v27, v32, *a12, 3);
    v33.i64[1] = vextq_s8(v33, v33, 8uLL).u32[0];
    v34 = vmulq_f32(v22, v25);
    v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
    v35 = vmlaq_n_f32(v33, v25, vpadd_f32(*v34.f32, *v34.f32).f32[0]);
    v36 = vaddq_f32(v35, v35);
    v36.i32[3] = 0;
    v37 = *a13;
    v37.i32[3] = 0;
    v35.i64[0] = vdupq_laneq_s32(*a13, 3).u64[0];
    v38 = vmulq_n_f32(v23, vmla_f32(0xBF000000BF000000, *v35.f32, *v35.f32).f32[0]);
    v38.i32[3] = 0;
    v39 = vextq_s8(v37, v37, 8uLL).u64[0];
    v40 = vextq_s8(v23, v23, 8uLL).u64[0];
    v41 = vmls_f32(vmul_f32(vext_s8(*v23.f32, v40, 4uLL), *a13->i8), vext_s8(*a13->i8, v39, 4uLL), *v23.f32);
    *v42.f32 = vext_s8(v41, vmls_f32(vmul_f32(*v23.f32, v39), *a13->i8, v40), 4uLL);
    v42.i64[1] = v41.u32[0];
    v43 = vmlaq_laneq_f32(v38, v42, *a13, 3);
    v43.i64[1] = vextq_s8(v43, v43, 8uLL).u32[0];
    v44 = vmulq_f32(v23, v37);
    v44.i64[0] = vpaddq_f32(v44, v44).u64[0];
    v45 = vmlaq_n_f32(v43, v37, vpadd_f32(*v44.f32, *v44.f32).f32[0]);
    v46 = vaddq_f32(v45, v45);
    v46.i32[3] = 0;
    v47 = vsubq_f32(vaddq_f32(*a6, v36), v22);
    v48 = vsubq_f32(vaddq_f32(*a7, v46), v23);
    _X15 = v20 + 11;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    do
    {
      __asm { PRFM            #0, [X15,#0xA0] }

      v59.i64[0] = _X15->i64[0];
      v60.i64[0] = _X15[1].i64[0];
      v59.i64[1] = _X15->u32[2];
      v61.i64[0] = _X15[2].i64[0];
      v60.i64[1] = _X15[1].u32[2];
      v62.i64[0] = _X15[3].i64[0];
      v61.i64[1] = _X15[2].u32[2];
      v62.i64[1] = _X15[3].u32[2];
      v17.i32[0] = _X15[4].i32[0];
      v63 = vdup_lane_s32(v17, 0);
      v64 = vmulq_f32(v61, *a8);
      v64.i64[0] = vpaddq_f32(v64, v64).u64[0];
      v65 = vmulq_f32(v62, *a11);
      v65.i64[0] = vpaddq_f32(v65, v65).u64[0];
      *v64.f32 = vsub_f32(vpadd_f32(*v64.f32, *v64.f32), vpadd_f32(*v65.f32, *v65.f32));
      v66 = &_X15->f32[3];
      *v65.f32 = vld1_dup_f32(v66);
      v67 = vmulq_f32(v47, v59);
      v67.i64[0] = vpaddq_f32(v67, v67).u64[0];
      v68 = vpadd_f32(*v67.f32, *v67.f32);
      v69 = vmulq_f32(v48, v60);
      v69.i64[0] = vpaddq_f32(v69, v69).u64[0];
      *v65.f32 = vadd_f32(*v65.f32, vsub_f32(v68, vpadd_f32(*v69.f32, *v69.f32)));
      f32 = _X15[5].f32;
      *v69.f32 = vld1_dup_f32(f32);
      v19.i32[0] = _X15[5].i32[1] & 0x40;
      *v64.f32 = vmls_lane_f32(vadd_f32(vmul_n_f32(*v64.f32, _X15[5].f32[3]), *v65.f32), v24, v17, 0);
      v71 = vdup_lane_s32(vceq_s32(v19, a10), 0);
      v19 = vneg_f32(*v69.f32);
      v72 = vbsl_s8(v71, v19, 0x80000000800000);
      v19.i32[0] = _X15[4].i32[3];
      v73 = &_X15[4].f32[2];
      v74 = vld1_dup_f32(v73);
      v75 = &_X15[4].f32[1];
      v76 = vadd_f32(v63, vmax_f32(vmin_f32(vmul_n_f32(*v64.f32, _X15[1].f32[3]), *v69.f32), v72));
      *v64.f32 = vld1_dup_f32(v75);
      v77 = vsubq_f32(vmlaq_f32(vmulq_f32(v61, *a4), v59, *a2), vmlaq_f32(vmulq_f32(v62, *a5), v60, *a3));
      v77.i64[0] = vpaddq_f32(v77, v77).u64[0];
      *v18.i32 = _X15[3].f32[3] * v19.f32[0];
      v78 = vmin_f32(v74, vmax_f32(*v64.f32, vadd_f32(vdup_lane_s32(*v18.i8, 0), vmla_n_f32(vmul_n_f32(v76, _X15[5].f32[2]), vpadd_f32(*v77.f32, *v77.f32), _X15[5].f32[2] * _X15[2].f32[3]))));
      _X15[4].i32[3] = v78.i32[0];
      v17 = vsub_f32(v78, v19);
      v50 = vmlaq_n_f32(v50, v59, v17.f32[0]);
      v52 = vmlaq_n_f32(v52, v61, v17.f32[0]);
      v51 = vmlaq_n_f32(v51, v60, v17.f32[0]);
      v79 = vmlaq_n_f32(*a2, _X15[6], v17.f32[0]);
      v53 = vmlaq_n_f32(v53, v62, v17.f32[0]);
      v79.i64[1] = vextq_s8(v79, v79, 8uLL).u32[0];
      *a2 = v79;
      v80 = vmlaq_n_f32(*a4, _X15[7], v17.f32[0]);
      v80.i64[1] = vextq_s8(v80, v80, 8uLL).u32[0];
      *a4 = v80;
      v18 = vmlaq_n_f32(*a3, _X15[8], v17.f32[0]);
      v50.i64[1] = vextq_s8(v50, v50, 8uLL).u32[0];
      v18.i64[1] = vextq_s8(v18, v18, 8uLL).u32[0];
      *a3 = v18;
      v52.i64[1] = vextq_s8(v52, v52, 8uLL).u32[0];
      v81 = vmlaq_n_f32(*a5, _X15[9], v17.f32[0]);
      v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
      v81.i64[1] = vextq_s8(v81, v81, 8uLL).u32[0];
      v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
      _X15 += 10;
      *a5 = v81;
      ++v21;
    }

    while (v21 < v20->u8[1]);
  }

  else
  {
    v53 = 0uLL;
    v52 = 0uLL;
    v51 = 0uLL;
    v50 = 0uLL;
  }

  v82 = vmulq_n_f32(v50, v20[2].f32[3]);
  v82.i32[3] = 0;
  *a14 = v82;
  v83 = vmulq_n_f32(v51, v20[4].f32[0]);
  v83.i32[3] = 0;
  *a15 = v83;
  v84 = vmulq_n_f32(v52, v20[3].f32[3]);
  v84.i32[3] = 0;
  *a16 = v84;
  result = vmulq_n_f32(v53, v20[4].f32[1]);
  result.n128_u32[3] = 0;
  *a17 = result;
  return result;
}

_DWORD *physx::Dy::solveExt1DStep(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v7 = *a1;
  if (v7 == *(a1 + 8))
  {
    (*(*v7 + 304))(v7, *(a1 + 16), *(a1 + 18), &v33, &v31);
    v43 = v34;
    v44 = v33;
    v41 = v32;
    v42 = v31;
    (*(**a1 + 240))(v30);
    (*(**(a1 + 8) + 240))(v29);
    v39 = v30[1];
    v40 = v30[0];
    v37 = v29[1];
    v38 = v29[0];
    v36 = *(*(**a1 + 336))();
    v14 = *(*(**(a1 + 8) + 336))();
  }

  else
  {
    if (*(a1 + 16) == 0xFFFF)
    {
      v10.i64[0] = *v7;
      v10.i64[1] = *(v7 + 8);
      v11.i64[0] = *(v7 + 16);
      v11.i64[1] = *(v7 + 24);
      v12.i64[0] = *(v7 + 48);
      v12.i64[1] = *(v7 + 56);
      v13.i64[0] = *(v7 + 32);
      v13.i64[1] = *(v7 + 40);
      v9 = *(a3 + (*(a1 + 20) << 6));
    }

    else
    {
      (*(*v7 + 312))(&v33);
      v28 = *(*(**a1 + 336))();
      (*(**a1 + 240))(&v31);
      v9 = v28;
      v10 = v33;
      v11 = v34;
      v12 = v31;
      v13 = v32;
    }

    v43 = v11;
    v44 = v10;
    v39 = v13;
    v40 = v12;
    v36 = v9;
    if (*(a1 + 18) != 0xFFFF)
    {
      (*(**(a1 + 8) + 312))(&v33);
      v35 = *(*(**(a1 + 8) + 336))();
      (*(**(a1 + 8) + 240))(&v31);
      v41 = v34;
      v42 = v33;
      v11.i64[0] = v32.i64[0];
      v37 = v32;
      v38 = v31;
      goto LABEL_10;
    }

    v15 = *(a1 + 8);
    v16.i64[0] = *v15;
    v16.i64[1] = *(v15 + 8);
    v42 = v16;
    v16.i64[0] = *(v15 + 16);
    v16.i64[1] = *(v15 + 24);
    v41 = v16;
    v16.i64[0] = *(v15 + 48);
    v16.i64[1] = *(v15 + 56);
    v38 = v16;
    v16.i64[0] = *(v15 + 32);
    v16.i64[1] = *(v15 + 40);
    v37 = v16;
    v14 = *(a3 + (*(a1 + 24) << 6));
  }

  v35 = v14;
LABEL_10:
  v33 = 0u;
  v31 = 0u;
  v30[0] = 0u;
  v29[0] = 0u;
  v17 = physx::Dy::solveExt1D(a1, &v44, &v42, &v43, &v41, &v40, &v38, &v39, LODWORD(a4), *v11.f32, &v37, &v36, &v35, &v33, &v31, v30, v29);
  v18 = *a1;
  v19 = *(a1 + 16);
  if (*a1 == *(a1 + 8))
  {
    return (*(*v18 + 264))(v18, v19, &v33, v30, *(a1 + 18), &v31, v29, *(a2 + 56), v17, *(a2 + 64));
  }

  if (v19 == 0xFFFF)
  {
    v21 = v43;
    v22 = v44.i32[2];
    *v18 = v44.i64[0];
    v18[2] = v22;
    v23 = *a1;
    *(v23 + 16) = v21.i64[0];
    *(v23 + 24) = v21.i32[2];
  }

  else
  {
    (*(*v18 + 256))(v18, v19, *(a2 + 56), *(a2 + 64), v33, v30[0]);
  }

  v24 = *(a1 + 18);
  result = *(a1 + 8);
  if (v24 != 0xFFFF)
  {
    return (*(*result + 256))(result, v24, *(a2 + 56), *(a2 + 64), v31, v29[0]);
  }

  v25 = v41;
  v26 = v42.i32[2];
  *result = v42.i64[0];
  result[2] = v26;
  v27 = *(a1 + 8);
  *(v27 + 16) = v25.i64[0];
  *(v27 + 24) = v25.i32[2];
  return result;
}

uint64_t **physx::Dy::solve1DStep(uint64_t **result, uint64_t a2, int32x2_t a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v10 = result[4];
  if (v10)
  {
    v12 = *result;
    v11 = result[1];
    v14.i64[0] = **result;
    v13 = *result + 1;
    v14.i64[1] = *v13;
    v15.i64[0] = *v11;
    v15.i64[1] = *(v11 + 2);
    v17.i64[0] = (*result)[2];
    v16 = *result + 3;
    v17.i64[1] = *v16;
    v18.i64[0] = v11[2];
    v18.i64[1] = *(v11 + 6);
    v19 = v10->u8[1];
    if (v10->i8[1])
    {
      v20 = 0;
      v21 = *(result + 6);
      v22 = a2 + (*(result + 5) << 6);
      v23 = a2 + (v21 << 6);
      a8.i64[0] = *(v22 + 28);
      a8.i32[2] = *(v22 + 36);
      v168 = a8;
      a8.i64[0] = *(v22 + 40);
      a8.i32[2] = *(v22 + 48);
      v167 = a8;
      a8.i64[0] = *(v22 + 52);
      a8.i32[2] = *(v22 + 60);
      v166 = a8;
      a8.i64[0] = *(v23 + 28);
      a8.i32[2] = *(v23 + 36);
      v165 = a8;
      a8.i64[0] = *(v23 + 40);
      a8.i32[2] = *(v23 + 48);
      v164 = a8;
      a8.i64[0] = *(v23 + 52);
      a8.i32[2] = *(v23 + 60);
      v163 = a8;
      v24.i64[0] = v10[2].i64[0];
      v25.i64[0] = v10[3].i64[0];
      v26 = vdup_lane_s32(a3, 0);
      v162 = v26;
      v26.i32[0] = v10->i32[3];
      v161 = v26;
      v160 = vdup_lane_s32(v26, 0);
      v24.i64[1] = v10[2].u32[2];
      v25.i64[1] = v10[3].u32[2];
      v27 = *v22;
      v27.i32[3] = 0;
      v28 = vdupq_laneq_s32(*v22, 3).u64[0];
      v29 = vmulq_n_f32(v24, vmla_f32(0xBF000000BF000000, v28, v28).f32[0]);
      v29.i32[3] = 0;
      v30 = vextq_s8(v27, v27, 8uLL).u64[0];
      v31 = vextq_s8(v24, v24, 8uLL).u64[0];
      v32 = vmls_f32(vmul_f32(*v22, vext_s8(*v24.f32, v31, 4uLL)), vext_s8(*v22, v30, 4uLL), *v24.f32);
      *v33.f32 = vext_s8(v32, vmls_f32(vmul_f32(v30, *v24.f32), *v22, v31), 4uLL);
      v33.i64[1] = v32.u32[0];
      v34 = vmlaq_laneq_f32(v29, v33, *v22, 3);
      v34.i64[1] = vextq_s8(v34, v34, 8uLL).u32[0];
      v35 = vmulq_f32(v27, v24);
      v35.i64[0] = vpaddq_f32(v35, v35).u64[0];
      v36 = vmlaq_n_f32(v34, v27, vpadd_f32(*v35.f32, *v35.f32).f32[0]);
      v37 = vaddq_f32(v36, v36);
      v38 = v37;
      v38.i32[3] = 0;
      v39 = *v23;
      v39.i32[3] = 0;
      v27.i64[0] = vdupq_laneq_s32(*v23, 3).u64[0];
      v40 = vmulq_n_f32(v25, vmla_f32(0xBF000000BF000000, *v27.f32, *v27.f32).f32[0]);
      v40.i32[3] = 0;
      v36.i64[0] = vextq_s8(v39, v39, 8uLL).u64[0];
      v41 = vextq_s8(v25, v25, 8uLL).u64[0];
      v42 = vmls_f32(vmul_f32(*v23, vext_s8(*v25.f32, v41, 4uLL)), vext_s8(*v23, *v36.f32, 4uLL), *v25.f32);
      *v43.f32 = vext_s8(v42, vmls_f32(vmul_f32(*v36.f32, *v25.f32), *v23, v41), 4uLL);
      v43.i64[1] = v42.u32[0];
      v44 = vmlaq_laneq_f32(v40, v43, *v23, 3);
      v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
      v45 = vmulq_f32(v39, v25);
      v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
      v46 = vmlaq_n_f32(v44, v39, vpadd_f32(*v45.f32, *v45.f32).f32[0]);
      v47 = vaddq_f32(v46, v46);
      v48 = v47;
      v48.i32[3] = 0;
      v49.i64[0] = v12[4];
      v49.i64[1] = *(v12 + 10);
      v50.i64[0] = v11[4];
      v50.i64[1] = *(v11 + 10);
      v51.i64[0] = v12[6];
      v51.i64[1] = *(v12 + 14);
      v39.i64[0] = v11[6];
      v39.i64[1] = *(v11 + 14);
      v52 = v10[7];
      v53 = v10[8];
      v152 = v10[6];
      v153 = v10[5];
      v54 = v153;
      v54.i32[3] = 0;
      v64 = v152;
      v64.i32[3] = 0;
      v56 = v10[9];
      v55 = v10[10];
      v151 = v52;
      v52.i32[3] = 0;
      *v36.f32 = vdup_laneq_s32(v56, 3);
      v157 = vsubq_f32(vaddq_f32(v38, v51), v24);
      v56.i32[3] = 0;
      *v24.f32 = vdup_laneq_s32(v55, 3);
      v57 = vaddq_f32(v48, v39);
      v55.i32[3] = 0;
      *v39.f32 = vdup_laneq_s32(v53, 3);
      v156 = vsubq_f32(v57, v25);
      v53.i32[3] = 0;
      v149 = v54;
      v150 = v53;
      v58 = vmulq_f32(v49, v54);
      v58.i64[0] = vpaddq_f32(v58, v58).u64[0];
      v59 = vmulq_f32(v50, v53);
      v59.i64[0] = vpaddq_f32(v59, v59).u64[0];
      v144 = vadd_f32(*v39.f32, vsub_f32(vpadd_f32(*v58.f32, *v58.f32), vpadd_f32(*v59.f32, *v59.f32)));
      v147 = v52;
      v148 = v64;
      v60 = vmulq_f32(v49, v64);
      v60.i64[0] = vpaddq_f32(v60, v60).u64[0];
      v145 = v55;
      v146 = v56;
      v61 = vmulq_f32(v50, v56);
      v61.i64[0] = vpaddq_f32(v61, v61).u64[0];
      v143 = vadd_f32(*v36.f32, vsub_f32(vpadd_f32(*v60.f32, *v60.f32), vpadd_f32(*v61.f32, *v61.f32)));
      v158 = v50;
      v159 = v49;
      v62 = vmulq_f32(v49, v52);
      v62.i64[0] = vpaddq_f32(v62, v62).u64[0];
      v63 = vmulq_f32(v50, v55);
      v63.i64[0] = vpaddq_f32(v63, v63).u64[0];
      v9.i32[0] = v10[1].i32[3];
      v142 = vadd_f32(*v24.f32, vsub_f32(vpadd_f32(*v62.f32, *v62.f32), vpadd_f32(*v63.f32, *v63.f32)));
      v64.i32[0] = v10[3].i32[3];
      _X16 = v10 + 11;
      v66 = vextq_s8(v38, v38, 8uLL).u64[0];
      v67 = vextq_s8(v48, v48, 8uLL).u64[0];
      v8.i32[0] = v10[4].i32[1];
      v154 = vext_s8(*v47.f32, v67, 4uLL);
      v155 = vext_s8(*v37.f32, v66, 4uLL);
      do
      {
        __asm { PRFM            #0, [X16,#0x60] }

        v73.i64[0] = _X16->i64[0];
        v73.i64[1] = _X16->u32[2];
        v74.i64[0] = _X16[1].i64[0];
        v74.i64[1] = _X16[1].u32[2];
        v75.i64[0] = _X16[2].i64[0];
        v75.i64[1] = _X16[2].u32[2];
        v76.i64[0] = _X16[3].i64[0];
        v76.i64[1] = _X16[3].u32[2];
        v77 = vextq_s8(v73, v73, 8uLL).u64[0];
        v78 = vmls_f32(vmul_f32(*v37.f32, vext_s8(*_X16->f32, v77, 4uLL)), v155, *_X16->f32);
        *v79.f32 = vext_s8(v78, vmls_f32(vmul_f32(v66, *_X16->f32), *v37.f32, v77), 4uLL);
        v79.i64[1] = v78.u32[0];
        v80 = vextq_s8(v74, v74, 8uLL).u64[0];
        v81 = vmls_f32(vmul_f32(*v47.f32, vext_s8(*v74.f32, v80, 4uLL)), v154, *v74.f32);
        *v82.f32 = vext_s8(v81, vmls_f32(vmul_f32(v67, *v74.f32), *v47.f32, v80), 4uLL);
        v83 = vaddq_f32(v75, v79);
        v82.i64[1] = v81.u32[0];
        v84 = &_X16->f32[3];
        v85 = vld1_dup_f32(v84);
        v86 = vaddq_f32(v76, v82);
        v87 = vmulq_n_f32(v168, v83.f32[0]);
        v87.i32[3] = 0;
        v88 = vmulq_lane_f32(v167, *v83.f32, 1);
        v88.i32[3] = 0;
        v89 = vmulq_laneq_f32(v166, v83, 2);
        v89.i32[3] = 0;
        v90 = vaddq_f32(v87, v88);
        v91 = vmulq_n_f32(v165, v86.f32[0]);
        v91.i32[3] = 0;
        v92 = vmulq_lane_f32(v164, *v86.f32, 1);
        v92.i32[3] = 0;
        v93 = vaddq_f32(v89, v90);
        v94 = vmulq_laneq_f32(v163, v86, 2);
        v94.i32[3] = 0;
        v95 = vaddq_f32(v94, vaddq_f32(v91, v92));
        if ((_X16[5].i32[1] & 0x10) != 0)
        {
          v96 = vmlaq_f32(vmulq_f32(v150, v95), v149, v93);
          v96.i64[0] = vpaddq_f32(v96, v96).u64[0];
          v97 = vmul_laneq_f32(vpadd_f32(*v96.f32, *v96.f32), v153, 3);
          v98 = vmlaq_f32(vmulq_f32(v146, v95), v148, v93);
          v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
          *v92.f32 = vmul_laneq_f32(vpadd_f32(*v98.f32, *v98.f32), v152, 3);
          v94 = vmlaq_f32(vmulq_f32(v145, v95), v147, v93);
          v94.i64[0] = vpaddq_f32(v94, v94).u64[0];
          *v94.f32 = vmul_laneq_f32(vpadd_f32(*v94.f32, *v94.f32), v151, 3);
          v99 = vmulq_n_f32(v147, v94.f32[0]);
          v99.i32[3] = 0;
          v100 = vmlaq_n_f32(v99, v148, v92.f32[0]);
          v100.i64[1] = vextq_s8(v100, v100, 8uLL).u32[0];
          v101 = vmlaq_n_f32(v100, v149, v97.f32[0]);
          v101.i64[1] = vextq_s8(v101, v101, 8uLL).u32[0];
          v102 = vmulq_n_f32(v145, v94.f32[0]);
          v102.i32[3] = 0;
          v103 = vmlaq_n_f32(v102, v146, v92.f32[0]);
          v103.i64[1] = vextq_s8(v103, v103, 8uLL).u32[0];
          v104 = vmlaq_n_f32(v103, v150, v97.f32[0]);
          v104.i64[1] = vextq_s8(v104, v104, 8uLL).u32[0];
          v93 = vsubq_f32(v93, v101);
          v95 = vsubq_f32(v95, v104);
          *v94.f32 = vmla_f32(vmul_f32(v142, *v94.f32), *v92.f32, v143);
          v92.i32[1] = v144.i32[1];
          *v94.f32 = vmla_f32(*v94.f32, v97, v144);
          v85 = vsub_f32(v85, *v94.f32);
        }

        v105 = &_X16[5].f32[3];
        v106 = vld1_dup_f32(v105);
        v107 = &_X16[1].f32[3];
        v108 = vld1_dup_f32(v107);
        f32 = _X16[5].f32;
        v110 = vld1_dup_f32(f32);
        v111 = _X16[4].f32;
        v112 = vld1_dup_f32(v111);
        v92.i32[0] = _X16[4].i32[3];
        v113 = vdup_lane_s32(*v92.f32, 0);
        v114 = &_X16[2].f32[3];
        v115 = vld1_dup_f32(v114);
        v116 = &_X16[4].f32[2];
        v117 = vld1_dup_f32(v116);
        v118 = &_X16[4].f32[1];
        v119 = vld1_dup_f32(v118);
        v94.i32[0] = _X16[5].i32[1] & 0x40;
        v120 = vbsl_s8(vdup_lane_s32(vceq_s32(*v94.f32, 0), 0), vneg_f32(v110), 0x80000000800000);
        v121 = vmulq_f32(v159, v93);
        v122 = vpaddq_f32(v121, v121).u64[0];
        v123 = vmulq_f32(v158, v95);
        v123.i64[0] = vpaddq_f32(v123, v123).u64[0];
        v124 = vpadd_f32(*v123.f32, *v123.f32);
        v125 = vmulq_f32(v157, v73);
        v125.i64[0] = vpaddq_f32(v125, v125).u64[0];
        v126 = vmulq_f32(v156, v74);
        v126.i64[0] = vpaddq_f32(v126, v126).u64[0];
        v127 = vadd_f32(v85, vsub_f32(vpadd_f32(*v125.f32, *v125.f32), vpadd_f32(*v126.f32, *v126.f32)));
        v128 = vmulq_f32(v73, v73);
        v128.i64[0] = vpaddq_f32(v128, v128).u64[0];
        v129 = vmulq_n_f32(v93, v64.f32[0]);
        v129.i32[3] = 0;
        v130 = vmulq_f32(v93, v129);
        v130.i64[0] = vpaddq_f32(v130, v130).u64[0];
        *v130.f32 = vmla_f32(vpadd_f32(*v130.f32, *v130.f32), vpadd_f32(*v128.f32, *v128.f32), v160);
        v131 = vmulq_f32(v74, v74);
        v131.i64[0] = vpaddq_f32(v131, v131).u64[0];
        v132 = vmulq_n_f32(v95, v8.f32[0]);
        v132.i32[3] = 0;
        v133 = vmulq_f32(v95, v132);
        v133.i64[0] = vpaddq_f32(v133, v133).u64[0];
        v134 = vadd_f32(*v130.f32, vsub_f32(vmul_n_f32(vpadd_f32(*v131.f32, *v131.f32), v9.f32[0]), vpadd_f32(*v133.f32, *v133.f32)));
        v135 = vrecpe_f32(v134);
        LODWORD(result) = 4;
        do
        {
          v135 = vmul_f32(v135, vrecps_f32(v134, v135));
          result = (result - 1);
        }

        while (result);
        v136 = vmls_f32(vadd_f32(vmul_f32(v106, vsub_f32(vpadd_f32(v122, v122), v124)), v127), v162, v112);
        v137 = vand_s8(vdup_lane_s32(vcgtz_f32(v134), 0), v135);
        v138 = vmul_f32(v115, v137);
        v139 = vmul_f32(vadd_f32(v112, vmax_f32(vmin_f32(vmul_f32(v108, v136), v110), v120)), v137);
        v140 = vsubq_f32(vmlaq_f32(vmulq_f32(v17, v93), v73, v14), vmlaq_f32(vmulq_f32(v18, v95), v74, v15));
        v140.i64[0] = vpaddq_f32(v140, v140).u64[0];
        v92.f32[0] = _X16[3].f32[3] * v92.f32[0];
        v141 = vmax_f32(vmin_f32(vadd_f32(vdup_lane_s32(*v92.f32, 0), vmla_f32(v139, vpadd_f32(*v140.f32, *v140.f32), v138)), v117), v119);
        *v140.f32 = vsub_f32(v141, v113);
        v14 = vmlaq_n_f32(v14, v73, vmul_f32(v161, *v140.f32).f32[0]);
        v14.i64[1] = vextq_s8(v14, v14, 8uLL).u32[0];
        v15 = vmlsq_lane_f32(v15, v74, vmul_f32(v9, *v140.f32), 0);
        v15.i64[1] = vextq_s8(v15, v15, 8uLL).u32[0];
        v17 = vmlaq_n_f32(v17, v93, vmul_f32(*v64.f32, *v140.f32).f32[0]);
        v17.i64[1] = vextq_s8(v17, v17, 8uLL).u32[0];
        v18 = vmlaq_n_f32(v18, v95, vmul_f32(v8, *v140.f32).f32[0]);
        _X16[4].i32[3] = v141.i32[0];
        v18.i64[1] = vextq_s8(v18, v18, 8uLL).u32[0];
        ++v20;
        _X16 += 6;
      }

      while (v20 != v19);
    }

    *v12 = v14.i64[0];
    *v13 = v14.i32[2];
    v12[2] = v17.i64[0];
    *v16 = v17.i32[2];
    *v11 = v15.i64[0];
    *(v11 + 2) = v15.i32[2];
    v11[2] = v18.i64[0];
    *(v11 + 6) = v18.i32[2];
  }

  return result;
}

_BYTE *physx::Dy::conclude1DStep(_BYTE *result)
{
  if (result)
  {
    v1 = result[1];
    if (result[1])
    {
      v2 = 160;
      if (*result == 2)
      {
        v2 = 96;
      }

      _X10 = result + 272;
      do
      {
        __asm { PRFM            #0, [X10] }

        if ((*(_X10 - 12) & 4) == 0)
        {
          *(_X10 - 17) = 0;
        }

        _X10 += v2;
        --v1;
      }

      while (v1);
    }
  }

  return result;
}

uint64_t physx::Dy::Articulation::setupSolverConstraintsTGS(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, double a6, float32x4_t a7, double a8, float32x4_t a9, double a10, double a11)
{
  v11 = 0;
  v12 = a1[1];
  v102 = *a1;
  v13 = *(*a1 + 168);
  v14 = a1[10];
  v15 = *(a1 + 92);
  *a4 = 0;
  v107 = v13;
  v16 = *v13;
  if (v16 >= 2)
  {
    v17 = a7.i32[0];
    v11 = 0;
    v112 = v14 + 144 * v15;
    v113 = a2;
    v96 = 1.0 / a7.f32[0];
    v97 = a7.i32[0];
    v95 = v96 * v96;
    v18 = v112 + 168;
    v19 = v112 + 251;
    v20 = 1;
    v21 = -0.5;
    __asm { FMOV            V0.2S, #-1.0 }

    v100 = _Q0.i64[0];
    v110 = v12;
    v101 = *v13;
    do
    {
      v27 = v12 + 40 * v20;
      v28 = *(v27 + 24);
      v29 = v20 + 1;
      if (v20 + 1 < v16)
      {
        v30 = ~(v19 >> 5) + (v18 >> 5);
        _X9 = *(v12 + 40 * v29 + 24);
        v32 = ~((_X9 + 359) >> 5) + (_X9 >> 5);
        do
        {
          __asm { PRFM            #0, [X9] }

          _X9 += 32;
          _CF = __CFADD__(v32++, 1);
        }

        while (!_CF);
        _X9 = v112 + 84 * v29;
        do
        {
          __asm { PRFM            #0, [X9] }

          _X9 += 32;
          _CF = __CFADD__(v30++, 1);
        }

        while (!_CF);
      }

      if ((*(v28 + 329) & 1) != 0 || *(v28 + 328) == 1)
      {
        v36 = v112 + 84 * v20;
        v37 = *(v36 + 56);
        v38 = *(v36 + 68);
        if (v37 == 0.0)
        {
          v41 = 1.0;
          v40 = 0.0;
          a8 = 0.0;
        }

        else
        {
          v39 = sqrtf(((v37 * v37) + 0.0) + (v38 * v38));
          v40 = v37 / v39;
          *&a8 = 0.0 / v39;
          v41 = v38 / v39;
        }

        LODWORD(a10) = *(v36 + 60);
        LODWORD(a11) = *(v36 + 64);
        a9.f32[0] = (((v37 * v41) - (v38 * v40)) - (*&a10 * *&a8)) + (*&a8 * *&a11);
        v124[0] = a9.f32[0];
        v124[1] = (((v41 * *&a10) - (v38 * *&a8)) - (*&a11 * v40)) + (*&a8 * v37);
        v124[2] = (((v41 * *&a11) - (v38 * *&a8)) - (v37 * *&a8)) + (v40 * *&a10);
        v124[3] = (((v37 * v40) + (v38 * v41)) + (*&a10 * *&a8)) + (*&a11 * *&a8);
        _Q0.i32[0] = *(v28 + 344);
        a7.i64[0] = *(v28 + 336);
        v122 = *a7.f32;
        v123 = _Q0.i32[0];
        v118 = 0.0;
        if (*(v28 + 328) == 1)
        {
          if (physx::Cm::ConeLimitHelper::getLimit(&v122, v124, &v119, &v118, *_Q0.i64, *a7.i64, a8, *a9.i64, a10, a11))
          {
            if (*(v28 + 320) <= 0.0)
            {
              v43 = *(v28 + 324) > 0.0;
              v42 = 1;
            }

            else
            {
              v42 = 1;
              v43 = 1;
            }
          }

          else
          {
            v42 = 0;
            v43 = 0;
          }

          a2 = v113;
        }

        else
        {
          v42 = 0;
          v43 = 0;
        }

        v45 = *(v36 + 36);
        v44 = *(v36 + 40);
        v46 = v21 + (v44 * v44);
        v47 = *(v36 + 28);
        v48 = *(v36 + 32);
        v49 = ((v48 * 0.0) + (v47 * 2.0)) + (v45 * 0.0);
        v117[0].f32[0] = ((v44 * ((v45 * -0.0) + (v48 * 0.0))) + (v46 * 2.0)) + (v47 * v49);
        v117[0].f32[1] = ((v44 * ((v47 * -0.0) + (v45 * 2.0))) + (v46 * 0.0)) + (v48 * v49);
        v117[1].f32[0] = ((v44 * ((v48 * -2.0) + (v47 * 0.0))) + (v46 * 0.0)) + (v45 * v49);
        if (v41 == -1.0)
        {
          if (v40 >= 0.0)
          {
            v50 = 1.8447e19;
          }

          else
          {
            v50 = -1.8447e19;
          }
        }

        else
        {
          v50 = v40 / (v41 + 1.0);
        }

        if (*(v28 + 329) == 1)
        {
          v51 = *(v28 + 356);
          v52 = v50 < ((*(v28 + 352) + v51) / (1.0 - (*(v28 + 352) * v51)));
          v53 = v50 > ((*(v28 + 348) - v51) / ((*(v28 + 348) * v51) + 1.0));
        }

        else
        {
          v52 = 0;
          v53 = 0;
        }

        v54 = v43 + v42 + v52 + v53;
        if (v54)
        {
          v105 = v43;
          v108 = v52;
          v109 = v11;
          v55 = a3 + 48 * v11;
          *v55 = v102;
          *(v55 + 16) = *(v27 + 32);
          *(v55 + 8) = v102;
          *(v55 + 18) = v20;
          *(v55 + 30) = (160 * v54 + 176) >> 4;
          v56 = (160 * v54 + 207) & 0x1FE0;
          v57 = *(a2 + 8);
          v114 = v43 + v42 + v52 + v53;
          if (v57 && (v58 = *(a2 + 16), (v58 + v56) <= 0x4000))
          {
            v61 = v57 + v58;
            v56 += v58;
          }

          else
          {
            v59 = v53;
            v60 = physx::PxcNpMemBlockPool::acquire(*a2, a5, (*a2 + 244), (*a2 + 240), 1);
            v53 = v59;
            v54 = v114;
            a2 = v113;
            v61 = v60;
            *(v113 + 8) = v60;
          }

          v62 = 0;
          *(a2 + 16) = v56;
          *(v55 + 32) = v61;
          *(v55 + 40) = 0;
          v111 = v61 + 176;
          *v61 = 4;
          *(v61 + 1) = v54;
          *(v61 + 2) = 0;
          *(v61 + 64) = v100;
          _Q0.i32[1] = 0;
          *(v61 + 32) = xmmword_1E30474D0;
          *(v61 + 48) = xmmword_1E30474D0;
          if (v42)
          {
            v63 = v53;
            v65 = *(v36 + 8);
            v64 = *(v36 + 12);
            v66 = v21 + (v64 * v64);
            v67 = *(v36 + 4);
            v68 = (((v120 + v120) * v67) + (*v36 * (v119 + v119))) + (v65 * (v121 + v121));
            *&v69 = ((v64 * ((v65 * (v119 + v119)) - (*v36 * (v121 + v121)))) + ((v120 + v120) * v66)) + (v67 * v68);
            *&v70 = ((v64 * ((*v36 * (v120 + v120)) - (v67 * (v119 + v119)))) + ((v121 + v121) * v66)) + (v65 * v68);
            v115 = ((v64 * ((v67 * (v121 + v121)) - (v65 * (v120 + v120)))) + ((v119 + v119) * v66)) + (*v36 * v68);
            v116 = __PAIR64__(v70, v69);
            a7.i32[0] = v17;
            *_Q0.i64 = physx::Dy::ArticulationHelper::createHardLimitTGS(v107, v110, v20, v111, &v115, v118, a7);
            if (v105)
            {
              v71.i32[0] = vdup_lane_s32(*(v117 + 4), 1).u32[0];
              v71.i32[1] = v117[0].i32[0];
              v72.i32[0] = vdup_lane_s32(v116, 1).u32[0];
              v72.f32[1] = v115;
              v73 = vmla_f32(vmul_f32(v116, vneg_f32(v71)), v72, *(v117 + 4));
              v74 = (v117[0].f32[0] * *&v116) - (v117[0].f32[1] * v115);
              v75 = (COERCE_FLOAT(vmul_f32(v73, v73).i32[1]) + (v73.f32[0] * v73.f32[0])) + (v74 * v74);
              if (v75 <= 0.0)
              {
                a9.i64[0] = 0;
                a7.i64[0] = 0;
              }

              else
              {
                v76 = 1.0 / sqrtf(v75);
                *a9.f32 = vmul_n_f32(v73, v76);
                a7.f32[0] = v74 * v76;
              }

              v98 = *a9.f32;
              v77 = *(v28 + 320);
              v78 = *(v28 + 324);
              *(v61 + 336) = 0;
              *(v61 + 344) = 0;
              *(v61 + 352) = 0;
              *(v61 + 360) = 0;
              *(v61 + 368) = a9.i64[0];
              *(v61 + 376) = a7.i32[0];
              *(v61 + 384) = a9.i64[0];
              *(v61 + 392) = a7.i32[0];
              *(v61 + 404) = -8388609;
              *(v61 + 420) = 0;
              *(v61 + 408) = 2139095039;
              *(v61 + 428) = 1065353216;
              v79 = *(v110 + 40 * v20 + 32);
              v126[0] = 0uLL;
              *&v80 = -a7.f32[0];
              v81 = a7.i32[0];
              v106 = a7.i64[0];
              v82.i64[0] = vnegq_f32(a9).u64[0];
              v82.i64[1] = v80;
              v83.i64[0] = a9.i64[0];
              v83.i64[1] = v81;
              v126[1] = v83;
              v125[0] = xmmword_1E3113F40;
              v125[1] = v82;
              _Q0 = physx::Dy::ArticulationHelper::getImpulseSelfResponse(v107, v79, v126, (v61 + 432), v20, v125, (v61 + 464));
              HIDWORD(a10) = v98.i32[1];
              a9.i32[1] = HIDWORD(v106);
              v87 = ((vmuls_lane_f32(*(v61 + 452), v98, 1) + (v98.f32[0] * *(v61 + 448))) + (*&v106 * *(v61 + 456))) - ((vmuls_lane_f32(*(v61 + 484), v98, 1) + (v98.f32[0] * *(v61 + 480))) + (*&v106 * *(v61 + 488)));
              if (v87 < 0.0)
              {
                physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyTGSContactPrep.cpp", 2965, "Warning: articulation ill-conditioned or under severe stress, tangential spring ignored", v84, v85, v86, v94);
              }

              v88 = 1.0 / v87;
              v89 = (v96 * v78) + (v95 * v77);
              v90 = 1.0 / (v89 + 1.0);
              *(v61 + 348) = 0;
              *(v61 + 364) = 0;
              *(v61 + 416) = 0;
              *(v61 + 380) = -(v90 * v89);
              *(v61 + 396) = 1.0 - v90;
              if (v87 <= 0.0)
              {
                v88 = 0.0;
              }

              *(v61 + 400) = 0;
              *(v61 + 424) = v88;
              v62 = 2;
              v17 = v97;
              v21 = -0.5;
            }

            else
            {
              v62 = 1;
            }

            a2 = v113;
            v54 = v114;
            v53 = v63;
          }

          if (v53)
          {
            v91 = v62 + 1;
            v12 = v110;
            a7.i32[0] = v17;
            *_Q0.i64 = physx::Dy::ArticulationHelper::createHardLimitTGS(v107, v110, v20, v111 + 160 * v62, v117, (*(v28 + 348) - v50) * 4.0, a7);
            v54 = v114;
            a2 = v113;
            v62 = v91;
            v92 = v109;
          }

          else
          {
            v92 = v109;
            v12 = v110;
          }

          if (v108)
          {
            *a7.f32 = vneg_f32(v117[0]);
            v126[0].i64[0] = a7.i64[0];
            v126[0].f32[2] = -v117[1].f32[0];
            a7.i32[0] = v17;
            *_Q0.i64 = physx::Dy::ArticulationHelper::createHardLimitTGS(v107, v12, v20, v111 + 160 * v62, v126[0].f32, (*(v28 + 352) - v50) * -4.0, a7);
            v54 = v114;
            a2 = v113;
          }

          v11 = (v92 + 1);
          *(*(v55 + 32) + 16 * *(v55 + 30)) = 0;
          *a4 += v54;
          v16 = v101;
        }

        else
        {
          v12 = v110;
        }
      }

      v18 += 84;
      v19 += 84;
      ++v20;
    }

    while (v29 != v16);
  }

  return v11;
}

double physx::Dy::ArticulationHelper::createHardLimitTGS(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, float *a5, float a6, float32x4_t a7)
{
  v9 = a7.f32[0];
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v11 = *a5;
  a7.f32[0] = a5[1];
  *(a4 + 32) = *a5;
  *(a4 + 36) = a7.i32[0];
  v12 = *(a5 + 2);
  *(a4 + 40) = v12;
  *(a4 + 48) = v11;
  *(a4 + 52) = a7.i32[0];
  *(a4 + 56) = v12;
  *(a4 + 68) = 0x7F7FFFFF00000000;
  *(a4 + 84) = 0;
  *(a4 + 76) = 0;
  *(a4 + 92) = 1065353216;
  v13 = *(a2 + 40 * a3 + 32);
  a7.i64[0] = *a5;
  v14.i64[0] = vnegq_f32(a7).u64[0];
  a7.i64[1] = *(a5 + 2);
  v22[0] = 0u;
  v22[1] = a7;
  v14.f32[2] = -a7.f32[2];
  v14.i32[3] = 0;
  v21[0] = 0u;
  v21[1] = v14;
  physx::Dy::ArticulationHelper::getImpulseSelfResponse(a1, v13, v22, (a4 + 96), a3, v21, (a4 + 128));
  v18 = (((a5[1] * *(a4 + 116)) + (*a5 * *(a4 + 112))) + (a5[2] * *(a4 + 120))) - (((a5[1] * *(a4 + 148)) + (*a5 * *(a4 + 144))) + (a5[2] * *(a4 + 152)));
  if (v18 < 0.0)
  {
    physx::shdfnd::Foundation::error(physx::shdfnd::Foundation::mInstance, 2, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyTGSContactPrep.cpp", 2935, "Warning: articulation ill-conditioned or under severe stress, joint limit ignored", v15, v16, v17, v21[0].i8[0]);
  }

  v19 = 1.0 / v18;
  if (v18 <= 0.0)
  {
    v19 = 0.0;
  }

  *(a4 + 12) = a6;
  *(a4 + 28) = v9 * -0.7;
  *(a4 + 80) = 2139095039;
  *(a4 + 44) = -1082130432;
  *(a4 + 88) = v19;
  *&result = 1065353216;
  *(a4 + 60) = 1065353216;
  return result;
}

char *physx::Dy::solveExtContactStep(char *result, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, float32x4_t *a7, float32x4_t *a8, int32x2_t a9, int32x2_t a10, float32x4_t *a11, float32x4_t *a12, float32x4_t *a13, float32x4_t *a14, float32x4_t *a15, char a16)
{
  if (*(result + 15))
  {
    v18 = vdup_lane_s32(a10, 0);
    _X16 = *(result + 4);
    v20 = &_X16[*(result + 15)];
    v21 = vsubq_f32(*a6, *a7);
    v22 = vdup_lane_s32(a9, 0);
    do
    {
      v23 = _X16->u8[2];
      v24 = _X16->u8[3];
      __asm { PRFM            #0, [X16,#0x50] }

      v30 = 112 * _X16->u8[2];
      if (_X16->i8[2])
      {
        v31 = 0;
        v32.i64[0] = _X16[2].i64[0];
        v32.i64[1] = _X16[2].u32[2];
        v33 = vmulq_f32(v32, vsubq_f32(*a6, *a7));
        v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
        v34 = vpadd_f32(*v33.f32, *v33.f32);
        v35 = &_X16[2].f32[3];
        *v33.f32 = vld1_dup_f32(v35);
        v36 = *a11;
        v37 = vneg_f32(*v33.f32);
        v38 = v30 + 80;
        v39 = 0;
        v40 = 0uLL;
        v41 = 0uLL;
        v42 = 0uLL;
        v43 = 0uLL;
        do
        {
          _X22 = &_X16[v31 / 0x10];
          __asm { PRFM            #0, [X22,#0xC0] }

          v46.i64[0] = _X16[v31 / 0x10 + 5].i64[0];
          v46.i64[1] = _X16[v31 / 0x10 + 5].u32[2];
          v47.i64[0] = _X16[v31 / 0x10 + 6].i64[0];
          v47.i64[1] = _X16[v31 / 0x10 + 6].u32[2];
          v48 = (_X16->f32 + v38);
          v49 = vld1_dup_f32(v48);
          v50 = vsubq_f32(vmlaq_f32(vmulq_f32(v46, *a4), v32, *a2), vmlaq_f32(vmulq_f32(v47, *a5), v32, *a3));
          v50.i64[0] = vpaddq_f32(v50, v50).u64[0];
          v51 = vmulq_f32(v46, *a8);
          v51.i64[0] = vpaddq_f32(v51, v51).u64[0];
          v52 = vmulq_f32(v36, v47);
          v52.i64[0] = vpaddq_f32(v52, v52).u64[0];
          v17.i32[0] = _X16[v31 / 0x10 + 7].i32[0];
          v53 = &_X16[v31 / 0x10 + 5].f32[3];
          v54 = vld1_dup_f32(v53);
          v16 = vmax_f32(vmul_n_f32(vsub_f32(vadd_f32(vdup_lane_s32(*v17.f32, 0), vmin_f32(v37, vmul_n_f32(vmax_f32(v22, vadd_f32(vsub_f32(vadd_f32(v34, vsub_f32(vpadd_f32(*v51.f32, *v51.f32), vpadd_f32(*v52.f32, *v52.f32))), vmul_n_f32(v18, v17.f32[0])), v54)), _X16[v31 / 0x10 + 7].f32[1]))), vpadd_f32(*v50.f32, *v50.f32)), _X16[v31 / 0x10 + 6].f32[3]), vneg_f32(v49));
          v55 = vmlaq_n_f32(*a2, _X16[v31 / 0x10 + 8], v16.f32[0]);
          v56 = _X16[v31 / 0x10 + 10];
          v17 = _X16[v31 / 0x10 + 11];
          v55.i64[1] = vextq_s8(v55, v55, 8uLL).u32[0];
          *a2 = v55;
          v57 = vmlaq_n_f32(*a4, v56, v16.f32[0]);
          v57.i64[1] = vextq_s8(v57, v57, 8uLL).u32[0];
          *a4 = v57;
          v58 = vmlaq_n_f32(*a3, _X16[v31 / 0x10 + 9], v16.f32[0]);
          v58.i64[1] = vextq_s8(v58, v58, 8uLL).u32[0];
          *a3 = v58;
          v59 = vmlaq_n_f32(*a5, v17, v16.f32[0]);
          v59.i64[1] = vextq_s8(v59, v59, 8uLL).u32[0];
          *a5 = v59;
          v40 = vmlaq_n_f32(v40, v32, v16.f32[0]);
          v40.i64[1] = vextq_s8(v40, v40, 8uLL).u32[0];
          v42 = vmlaq_n_f32(v42, v46, v16.f32[0]);
          v42.i64[1] = vextq_s8(v42, v42, 8uLL).u32[0];
          v41 = vmlaq_n_f32(v41, v32, v16.f32[0]);
          v41.i64[1] = vextq_s8(v41, v41, 8uLL).u32[0];
          v43 = vmlaq_n_f32(v43, v47, v16.f32[0]);
          v43.i64[1] = vextq_s8(v43, v43, 8uLL).u32[0];
          v60 = vadd_f32(v49, v16);
          *(_X16->i32 + v38) = v60.i32[0];
          v39 = vadd_f32(v39, v60);
          v38 += 4;
          v31 += 112;
        }

        while (v30 != v31);
      }

      else
      {
        v39 = 0;
        v40 = 0uLL;
        v41 = 0uLL;
        v42 = 0uLL;
        v43 = 0uLL;
      }

      v61 = (4 * v23 + 12) & 0x7F0;
      result = &_X16[7 * v23 + 5] + v61;
      if (a16 && v24)
      {
        v62 = 0;
        v63 = &_X16[3].f32[1];
        v64 = vld1_dup_f32(v63);
        v65 = vmax_f32(v39, v64);
        __asm { PRFM            #0, [X0] }

        v67 = *_X16[1].f32;
        v68 = vmul_n_f32(v65, v67.f32[0]);
        v69 = vmul_lane_f32(v65, v67, 1);
        v70 = vneg_f32(v69);
        v71 = &_X16[v30 / 0x10] + v61;
        v72 = 0uLL;
        do
        {
          _X22 = &v71[v62];
          __asm { PRFM            #0, [X22,#0xD0] }

          v75 = *&v71[v62 + 80];
          v76 = *&v71[v62 + 96];
          v77 = v76;
          v78 = *&v71[v62 + 112];
          v77.i32[3] = 0;
          v78.i32[3] = 0;
          v16.i32[0] = *&v71[v62 + 132];
          v79 = vdup_laneq_s32(v76, 3);
          v80 = vdup_laneq_s32(v75, 3);
          v75.i32[3] = 0;
          v81 = vmulq_f32(v77, *a8);
          v81.i64[0] = vpaddq_f32(v81, v81).u64[0];
          v82 = vmulq_f32(v78, *a11);
          v82.i64[0] = vpaddq_f32(v82, v82).u64[0];
          v83 = vmulq_f32(v21, v75);
          v83.i64[0] = vpaddq_f32(v83, v83).u64[0];
          v84 = vadd_f32(v80, vmla_laneq_f32(vadd_f32(vsub_f32(vpadd_f32(*v81.f32, *v81.f32), vpadd_f32(*v82.f32, *v82.f32)), vpadd_f32(*v83.f32, *v83.f32)), v18, v76, 3));
          v85 = vsubq_f32(vmlaq_f32(vmulq_f32(v77, *a4), v75, *a2), vmlaq_f32(vmulq_f32(v78, *a5), v75, *a3));
          v85.i64[0] = vpaddq_f32(v85, v85).u64[0];
          v86 = vmls_laneq_f32(vmls_laneq_f32(vdup_lane_s32(v16, 0), vsub_f32(vmul_n_f32(v84, *&v71[v62 + 128]), v79), *&v71[v62 + 112], 3), vpadd_f32(*v85.f32, *v85.f32), *&v71[v62 + 112], 3);
          v87 = vdupq_lane_s32(vcgt_f32(vabs_f32(v86), v68), 0);
          *v85.f32 = vbsl_s8(*v87.i8, vmin_f32(v69, vmax_f32(v70, v86)), v86);
          v16 = vsub_f32(*v85.f32, v16);
          v88 = vmlaq_n_f32(*a2, *&v71[v62 + 144], v16.f32[0]);
          v88.i64[1] = vextq_s8(v88, v88, 8uLL).u32[0];
          v89 = *&v71[v62 + 176];
          v90 = *&v71[v62 + 192];
          *a2 = v88;
          v91 = vmlaq_n_f32(*a4, v89, v16.f32[0]);
          v91.i64[1] = vextq_s8(v91, v91, 8uLL).u32[0];
          *a4 = v91;
          v17 = vmlaq_n_f32(*a3, *&v71[v62 + 160], v16.f32[0]);
          v17.i64[1] = vextq_s8(v17, v17, 8uLL).u32[0];
          v72 = vorrq_s8(v87, v72);
          *a3 = v17;
          v40 = vmlaq_n_f32(v40, v75, v16.f32[0]);
          v92 = vmlaq_n_f32(*a5, v90, v16.f32[0]);
          v40.i64[1] = vextq_s8(v40, v40, 8uLL).u32[0];
          v42 = vmlaq_n_f32(v42, v77, v16.f32[0]);
          v42.i64[1] = vextq_s8(v42, v42, 8uLL).u32[0];
          v41 = vmlaq_n_f32(v41, v75, v16.f32[0]);
          v92.i64[1] = vextq_s8(v92, v92, 8uLL).u32[0];
          v43 = vmlaq_n_f32(v43, v78, v16.f32[0]);
          v41.i64[1] = vextq_s8(v41, v41, 8uLL).u32[0];
          *a5 = v92;
          v43.i64[1] = vextq_s8(v43, v43, 8uLL).u32[0];
          *(_X22 + 33) = v85.i32[0];
          v62 += 128;
        }

        while (v24 << 7 != v62);
        _X16[3].i32[2] = v72.i32[0];
      }

      v93 = vmlaq_laneq_f32(*a12, v40, _X16[1], 2);
      v93.i64[1] = vextq_s8(v93, v93, 8uLL).u32[0];
      *a12 = v93;
      v94 = vmlaq_n_f32(*a14, v42, _X16->f32[1]);
      v94.i64[1] = vextq_s8(v94, v94, 8uLL).u32[0];
      *a14 = v94;
      v95 = vmlsq_laneq_f32(*a13, v41, _X16[1], 3);
      v95.i64[1] = vextq_s8(v95, v95, 8uLL).u32[0];
      *a13 = v95;
      v96 = vmlsq_lane_f32(*a15, v43, _X16->u32[2], 0);
      v96.i64[1] = vextq_s8(v96, v96, 8uLL).u32[0];
      *a15 = v96;
      _X16 = &result[128 * v24];
    }

    while (_X16 < v20);
  }

  return result;
}

_DWORD *physx::Dy::solveExtContactStep(char *a1, uint64_t a2, float a3, float32_t a4)
{
  v8 = *a1;
  if (v8 == *(a1 + 1))
  {
    (*(*v8 + 304))(v8, *(a1 + 8), *(a1 + 9), &v31, &v29);
    v39 = v32;
    v40 = v31;
    v37 = v30;
    v38 = v29;
    (*(**a1 + 240))(v28);
    (*(**(a1 + 1) + 240))(v27);
    v35 = v28[1];
    v36 = v28[0];
    v13 = v27[0];
    v14 = v27[1];
LABEL_8:
    v34 = v13;
    v33 = v14;
    goto LABEL_10;
  }

  if (*(a1 + 8) == 0xFFFF)
  {
    v9.i64[0] = *v8;
    v9.i64[1] = *(v8 + 8);
    v10.i64[0] = *(v8 + 16);
    v10.i64[1] = *(v8 + 24);
    v11.i64[0] = *(v8 + 48);
    v11.i64[1] = *(v8 + 56);
    v12.i64[0] = *(v8 + 32);
    v12.i64[1] = *(v8 + 40);
  }

  else
  {
    (*(*v8 + 312))(&v31);
    (*(**a1 + 240))(&v29);
    v9 = v31;
    v10 = v32;
    v11 = v29;
    v12 = v30;
  }

  v39 = v10;
  v40 = v9;
  v35 = v12;
  v36 = v11;
  if (*(a1 + 9) != 0xFFFF)
  {
    (*(**(a1 + 1) + 312))(&v31);
    (*(**(a1 + 1) + 240))(&v29);
    v37 = v32;
    v38 = v31;
    v13 = v29;
    v14 = v30;
    goto LABEL_8;
  }

  v15 = *(a1 + 1);
  v16.i64[0] = *v15;
  v16.i64[1] = *(v15 + 8);
  v14.i64[0] = *(v15 + 16);
  v14.i64[1] = *(v15 + 24);
  v37 = v14;
  v38 = v16;
  v16.i64[0] = *(v15 + 48);
  v16.i64[1] = *(v15 + 56);
  v34 = v16;
  v16.i64[0] = *(v15 + 32);
  v16.i64[1] = *(v15 + 40);
  v33 = v16;
LABEL_10:
  v31 = 0u;
  v29 = 0u;
  v28[0] = 0u;
  v27[0] = 0u;
  v14.f32[0] = a4;
  physx::Dy::solveExtContactStep(a1, &v40, &v38, &v39, &v37, &v36, &v34, &v35, LODWORD(a3), *v14.f32, &v33, &v31, &v29, v28, v27, 1);
  v17 = *a1;
  v18 = *(a1 + 8);
  if (*a1 == *(a1 + 1))
  {
    return (*(*v17 + 264))(v17, v18, &v31, v28, *(a1 + 9), &v29, v27, *(a2 + 56), *(a2 + 64));
  }

  if (v18 == 0xFFFF)
  {
    v20 = v39;
    v21 = v40.i32[2];
    *v17 = v40.i64[0];
    v17[2] = v21;
    v22 = *a1;
    *(v22 + 16) = v20.i64[0];
    *(v22 + 24) = v20.i32[2];
  }

  else
  {
    (*(*v17 + 256))(v17, v18, *(a2 + 56), *(a2 + 64), v31, v28[0]);
  }

  v23 = *(a1 + 9);
  result = *(a1 + 1);
  if (v23 != 0xFFFF)
  {
    return (*(*result + 256))(result, v23, *(a2 + 56), *(a2 + 64), v29, v27[0]);
  }

  v24 = v37;
  v25 = v38.i32[2];
  *result = v38.i64[0];
  result[2] = v25;
  v26 = *(a1 + 1);
  *(v26 + 16) = v24.i64[0];
  *(v26 + 24) = v24.i32[2];
  return result;
}

void physx::Dy::ArticulationBlockAllocator::~ArticulationBlockAllocator(physx::Dy::ArticulationBlockAllocator *this)
{
  physx::Dy::ArticulationBlockAllocator::~ArticulationBlockAllocator(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D1DD28;
  for (i = 88; i != 8; i -= 40)
  {
    physx::Dy::BlockBasedAllocator::~BlockBasedAllocator((this + i));
  }

  physx::Dy::BlockBasedAllocator::~BlockBasedAllocator((this + 8));
}

uint64_t physx::Dy::BlockBasedAllocator::allocate(physx::Dy::BlockBasedAllocator *this, int a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  if (v4)
  {
    v6 = (v4 + 0x8000);
    v7 = *(v4 + 0x8000);
    v8 = v7 + ((a2 + 15) & 0xFFFFFFF0);
    if (!(v8 >> 15))
    {
      goto LABEL_14;
    }
  }

  v9 = *(this + 8);
  if (v9 >= *(this + 6))
  {
    v13 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 32772, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowleveldynamics/src/DyFeatherstoneInverseDynamic.cpp", 1518);
    *(v13 + 0x8000) = 0;
    *(this + 1) = v13;
    v14 = *(this + 6);
    if ((*(this + 7) & 0x7FFFFFFFu) <= v14)
    {
      physx::shdfnd::Array<physx::Dy::BlockBasedAllocator::AllocationPage *,physx::shdfnd::ReflectionAllocator<physx::Dy::BlockBasedAllocator::AllocationPage *>>::growAndPushBack(this + 16, v5);
      v15 = *(this + 6);
    }

    else
    {
      *(*(this + 2) + 8 * v14) = v13;
      v15 = v14 + 1;
      *(this + 6) = v15;
    }

    *(this + 8) = v15;
    v4 = *(this + 1);
    v6 = (v4 + 0x8000);
    v7 = *(v4 + 0x8000);
    v8 = v7 + ((a2 + 15) & 0xFFFFFFF0);
    if (v8 >> 15)
    {
      return 0;
    }

LABEL_14:
    result = v4 + v7;
    *v6 = v8;
    return result;
  }

  *(this + 8) = v9 + 1;
  v10 = *(*(this + 2) + 8 * v9);
  *(this + 1) = v10;
  if ((a2 + 15) >= 0x8000)
  {
    v11 = 0;
  }

  else
  {
    v11 = (a2 + 15) & 0xFFFFFFF0;
  }

  *(v10 + 0x8000) = v11;
  if ((a2 + 15) >= 0x8000)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

void physx::Dy::BlockBasedAllocator::~BlockBasedAllocator(physx::Dy::BlockBasedAllocator *this)
{
  *this = &unk_1F5D1DD70;
  physx::Dy::BlockBasedAllocator::release(this);
  v2 = *(this + 7);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 2) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }
}

{
  physx::Dy::BlockBasedAllocator::~BlockBasedAllocator(this);

  JUMPOUT(0x1E6906520);
}

uint64_t physx::shdfnd::Array<physx::Dy::BlockBasedAllocator::AllocationPage *,physx::shdfnd::ReflectionAllocator<physx::Dy::BlockBasedAllocator::AllocationPage *>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
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
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::BlockBasedAllocator::AllocationPage *>::getName() [T = physx::Dy::BlockBasedAllocator::AllocationPage *]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  v10 = &v8[v9];
  if (v9)
  {
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
  }

  *v10 = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
    LODWORD(v9) = *(v3 + 8);
  }

  *v3 = v8;
  *(v3 + 8) = v9 + 1;
  *(v3 + 12) = v5;
  return result;
}

uint64_t physx::Dy::BlockBasedAllocator::release(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      if (*(*(v1 + 16) + 8 * i))
      {
        this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
        v2 = *(v1 + 24);
      }
    }
  }

  *(v1 + 24) = 0;
  *(v1 + 8) = 0;
  *(v1 + 32) = 0;
  return this;
}

void physx::Dy::UpdateContinuationTGSTask::~UpdateContinuationTGSTask(physx::Dy::UpdateContinuationTGSTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::UpdateContinuationTGSTask::runInternal(physx::Dy::UpdateContinuationTGSTask *this)
{
  v2 = *(this + 5);
  v1 = *(this + 6);
  v3 = *(this + 3);
  v4 = *(this + 7);
  v123 = *(v1 + 544);
  v5 = physx::Cm::FlushPool::allocate(*(v2 + 776), 48, 0x10u);
  *(v5 + 8) = *(v2 + 800);
  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  *v5 = &unk_1F5D1DE88;
  *(v5 + 40) = 0;
  *(v5 + 32) = 1;
  *(v5 + 24) = v3;
  if (v3)
  {
    (*(*v3 + 32))(v3);
    *(v5 + 16) = *(*(v5 + 24) + 16);
  }

  (*(*v4 + 32))(v4);
  v122 = v5;
  *(v5 + 40) = v4;
  v6 = *(v1 + 552);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v147 = 0;
    v146 = 0;
    v115 = *(v2 + 144);
    v116 = *(v2 + 140);
    if (v116)
    {
      v10 = *(v2 + 144) == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = !v10;
    v119 = v11;
    v117 = v2 + 104;
    v118 = v2 + 720;
    v120 = *(v1 + 552);
    v121 = v2;
    do
    {
      v145 = v8;
      v134 = v7;
      if (v119)
      {
        v12 = 0;
        v13 = 0;
        v14 = v7 + 1;
        v15 = (v123 + 4 * v7);
        v16 = 0;
        do
        {
          v17 = *v15++;
          v18 = *(v1 + 344) + 44 * v17;
          v12 += *(v18 + 8);
          v13 += *(v18 + 12);
          v16 = vadd_s32(*(v18 + 36), v16);
          ++v7;
        }

        while (v12 < v116 && v14++ < v6 && v13 < v115);
        v142 = v7;
        v144 = __PAIR64__(v13, v12);
        v143 = v16;
        v137 = vadd_s32(v16, vdup_lane_s32(v16, 1)).u32[0];
      }

      else
      {
        v137 = 0;
        v144 = 0;
        v143 = 0;
        v142 = v7;
      }

      v21 = *(v2 + 560);
      v138 = *(v2 + 544);
      v156 = *(v2 + 448);
      v148 = *(v2 + 688);
      v152 = *(v2 + 464);
      v22 = *(v2 + 496);
      v23 = *(v2 + 480);
      v24 = *(v2 + 512);
      v25 = *(v2 + 528);
      v140 = *(v2 + 656);
      v26 = *(v2 + 672);
      v27 = *(v2 + 704);
      v28 = physx::shdfnd::SListImpl::pop(*(v2 + 432));
      v29 = v138;
      v30 = v156;
      v31 = v25;
      v32 = v26;
      v33 = v28;
      v35 = v148;
      v34 = v152;
      v139 = v9;
      if (!v33)
      {
        v131 = v23;
        v36 = v32;
        v37 = physx::shdfnd::Foundation::mInstance;
        if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
        {
          v38 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ThreadContext>::getName() [T = physx::Dy::ThreadContext]";
        }

        else
        {
          v38 = "<allocation names disabled>";
        }

        v39 = (*(*(v37 + 24) + 16))(v37 + 24, 12343, v38, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
        if (v39)
        {
          v33 = (v39 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v33 - 8) = v33 - v39;
        }

        else
        {
          v33 = 0;
        }

        physx::Dy::ThreadContext::ThreadContext(v33, *(v2 + 440));
        v9 = v139;
        v32 = v36;
        v23 = v131;
        v31 = v25;
        v34 = v152;
        v30 = v156;
        v35 = v148;
        v29 = v138;
      }

      v40 = v21 + 8 * v9;
      v124 = v29 + 8 * v145;
      v126 = v35 + 32 * v147;
      v132 = v30 + 48 * v146;
      v128 = v34 + 48 * v146;
      v41 = v23 + 48 * v146;
      v149 = v22 + 8 * v146;
      v153 = v24 + 32 * v145;
      v157 = v31 + 8 * v145;
      v42 = v123 + 4 * v134;
      v43 = v142 - v134;
      v44 = v32 + 4 * v145;
      v45 = physx::Cm::FlushPool::allocate(*(v2 + 776), 192, 0x10u);
      *v45 = v33;
      *(v45 + 8) = v144;
      v135 = v45 + 8;
      *(v45 + 12) = HIDWORD(v144) & 0x7FFFFFFF;
      *(v45 + 16) = v143;
      *(v45 + 24) = v124;
      *(v45 + 32) = v40;
      *(v45 + 40) = 0;
      *(v45 + 48) = v126;
      *(v45 + 56) = v42;
      v46 = v45;
      *(v45 + 64) = v43;
      *(v45 + 72) = v140;
      *(v45 + 80) = v44;
      *(v45 + 88) = v132;
      *(v45 + 96) = v128;
      *(v45 + 104) = v41;
      *(v45 + 112) = v149;
      *(v45 + 144) = 0;
      v127 = v45 + 144;
      *(v45 + 120) = v153;
      *(v45 + 128) = v157;
      v125 = v45 + 148;
      v129 = v27 + v145;
      *(v45 + 136) = v129;
      *(v33 + 12240) = 0;
      *(v33 + 12212) = 0;
      *(v33 + 12264) = *(v33 + 12016);
      *(v33 + 12280) = *(v33 + 12064);
      *(v33 + 12048) = 0;
      *(v33 + 12024) = 0;
      *(v33 + 11912) = 0;
      *(v33 + 11904) = 0;
      *(v33 + 11896) = 0;
      v47 = *(v45 + 128);
      *(v33 + 11992) = *(v45 + 120);
      *(v33 + 11968) = v47;
      v133 = v45 + 24;
      *(v33 + 11976) = *(v45 + 24);
      *(v33 + 12000) = *(v45 + 72);
      physx::Dy::ThreadContext::resizeArrays(v33, 0, *(v45 + 12) & 0x7FFFFFFF);
      v48 = *(v46 + 64);
      v136 = v33;
      v130 = v46;
      if (v48)
      {
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = *(v33 + 11968);
        v53 = *(v33 + 11976);
        v54 = *(v33 + 11984);
        v55 = *(v33 + 12000);
        v56 = *(v33 + 12008);
        v57 = *(v46 + 56);
        do
        {
          v58 = *(*(v1 + 344) + 44 * *(v57 + 4 * v49));
          if (v58 <= 0xFFFFFF7F)
          {
            do
            {
              v59 = v58 >> 7;
              v60 = *(v1 + 248) + 32 * v59;
              v61 = *(v60 + 24);
              if (*(v60 + 5) == 1)
              {
                *(v54 + 8 * v51++) = v61;
              }

              else
              {
                *(v53 + 8 * v50) = v61;
                *(v52 + 8 * v50) = *(v61 + 40);
                *(v56 + 4 * v50) = v59;
                *(v55 + 4 * *(*(v1 + 264) + 4 * v59)) = v50++;
              }

              v58 = *(v60 + 8);
            }

            while (v58 < 0xFFFFFF80);
          }

          ++v49;
        }

        while (v49 != v48);
        v62 = 0;
        v63 = 0;
        v64 = *(v46 + 48);
        v150 = v57;
        v154 = v48;
        do
        {
          v158 = v62;
          for (i = *(*(v1 + 344) + 44 * *(v57 + 4 * v62) + 20); i != -1; i = *(v67 + 16 * (i % v66) + 8))
          {
            v66 = *(v1 + 304);
            v67 = *(*(v1 + 280) + 8 * (i / v66));
            v68 = *(*(*(v1 + 176) + 8 * (i / *(v1 + 200))) + 8 * (i % *(v1 + 200)));
            if (v68)
            {
              v69 = *(v1 + 832);
              v70 = *(v69 + 6);
              v71 = *v69;
              v72 = *(*(*v69 + 8 * (2 * i / v70)) + 4 * (2 * i % v70));
              v73 = *(*(v71 + 8 * (((2 * i) | 1) / v70)) + 4 * (((2 * i) | 1) % v70));
              v74 = v64 + 32 * v63;
              *(v74 + 24) = v68;
              v75 = v72 >> 7;
              v76 = *(v1 + 248) + 32 * (v72 >> 7);
              if (*(v76 + 5) == 1)
              {
                (*(**(v76 + 24) + 376))(*(v76 + 24), (v72 >> 1) & 0x3F, v64 + 32 * v63, v74 + 16);
              }

              else
              {
                if ((*(v76 + 4) & 4) != 0)
                {
                  *(v74 + 16) = 1;
                  v77 = *(*(v1 + 264) + 4 * v75);
                }

                else
                {
                  *(v74 + 16) = 0;
                  v77 = *(v55 + 4 * *(*(v1 + 264) + 4 * v75));
                }

                *v74 = v77;
              }

              ++v63;
              if (v73 < 0xFFFFFF80)
              {
                v78 = v73 >> 7;
                v79 = *(v1 + 248) + 32 * (v73 >> 7);
                if (*(v79 + 5) == 1)
                {
                  (*(**(v79 + 24) + 376))(*(v79 + 24), (v73 >> 1) & 0x3F, v74 + 8, v74 + 17);
                }

                else
                {
                  if ((*(v79 + 4) & 4) != 0)
                  {
                    *(v74 + 17) = 1;
                    v80 = *(*(v1 + 264) + 4 * v78);
                  }

                  else
                  {
                    *(v74 + 17) = 0;
                    v80 = *(v55 + 4 * *(*(v1 + 264) + 4 * v78));
                  }

                  *(v74 + 8) = v80;
                }
              }

              else
              {
                *(v74 + 17) = 3;
              }
            }
          }

          v62 = v158 + 1;
          v57 = v150;
        }

        while (v158 + 1 != v154);
      }

      else
      {
        v63 = 0;
      }

      *(v130 + 16) = v63;
      v2 = v121;
      v151 = physx::Cm::FlushPool::allocate(*(v121 + 776), 96, 0x10u);
      v81 = *(v121 + 800);
      *(v151 + 16) = 0;
      *(v151 + 24) = 0;
      *(v151 + 32) = 0;
      *v151 = &unk_1F5D1E048;
      *(v151 + 8) = v81;
      *(v151 + 40) = v130;
      *(v151 + 48) = v133;
      *(v151 + 56) = v1;
      *(v151 + 64) = v140;
      *(v151 + 72) = v129;
      *(v151 + 80) = v118;
      *(v151 + 88) = v121;
      v82 = physx::Cm::FlushPool::allocate(*(v121 + 776), 136, 0x10u);
      v83 = *(v130 + 128);
      v84 = *(v130 + 24);
      v85 = *(v121 + 576) + (v129 << 6);
      v86 = *(v121 + 592) + (v129 << 6);
      v87 = *(v121 + 608) + 48 * v129;
      v88 = *(v136 + 12008);
      v89 = *(v130 + 8);
      v90 = *(v121 + 88);
      v91 = *(v121 + 800);
      v141 = v82;
      *(v82 + 16) = 0;
      *(v82 + 24) = 0;
      *(v82 + 32) = 0;
      *v82 = &unk_1F5D1E0B8;
      *(v82 + 8) = v91;
      *(v82 + 40) = v83;
      *(v82 + 48) = v84;
      *(v82 + 56) = v85;
      *(v82 + 64) = v86;
      *(v82 + 72) = v87;
      *(v82 + 80) = v88;
      *(v82 + 88) = v89;
      *(v82 + 96) = v117;
      *(v82 + 104) = v90;
      *(v82 + 112) = v127;
      *(v82 + 120) = v125;
      *(v82 + 128) = v121;
      v159 = physx::Cm::FlushPool::allocate(*(v121 + 776), 88, 0x10u);
      v92 = *(v121 + 88);
      v93 = *(v121 + 800);
      *(v159 + 16) = 0;
      *(v159 + 24) = 0;
      *(v159 + 32) = 0;
      *v159 = &unk_1F5D1E198;
      *(v159 + 8) = v93;
      *(v159 + 40) = v130;
      *(v159 + 48) = v117;
      *(v159 + 56) = v92;
      *(v159 + 64) = v127;
      *(v159 + 72) = v125;
      *(v159 + 80) = v121;
      v94 = physx::Cm::FlushPool::allocate(*(v121 + 776), 64, 0x10u);
      v95 = *(v121 + 800);
      *(v94 + 16) = 0;
      *(v94 + 24) = 0;
      *(v94 + 32) = 0;
      *v94 = &unk_1F5D1E208;
      *(v94 + 8) = v95;
      *(v94 + 40) = v130;
      *(v94 + 48) = v121;
      *(v94 + 56) = 0;
      v155 = physx::Cm::FlushPool::allocate(*(v121 + 776), 72, 0x10u);
      v96 = *(v130 + 88);
      v97 = *(v121 + 800);
      v98 = *(v121 + 88);
      *(v155 + 16) = 0;
      *(v155 + 24) = 0;
      *(v155 + 32) = 0;
      *v155 = &unk_1F5D1E278;
      *(v155 + 8) = v97;
      *(v155 + 40) = v130;
      *(v155 + 48) = v98;
      *(v155 + 56) = v96;
      *(v155 + 64) = v121;
      v99 = physx::Cm::FlushPool::allocate(*(v121 + 776), 80, 0x10u);
      v100 = *(v130 + 88);
      v101 = *(v121 + 576) + (v129 << 6) + 64;
      v102 = *(v121 + 800);
      *(v99 + 16) = 0;
      *(v99 + 24) = 0;
      *(v99 + 32) = 0;
      *v99 = &unk_1F5D1E2E8;
      *(v99 + 8) = v102;
      *(v99 + 40) = v130;
      *(v99 + 48) = v100;
      *(v99 + 56) = v101;
      *(v99 + 64) = v136;
      *(v99 + 72) = v121;
      v103 = physx::Cm::FlushPool::allocate(*(v121 + 776), 88, 0x10u);
      v104 = *(v130 + 96);
      v105 = *(v121 + 88);
      v106 = *(v121 + 800);
      *(v103 + 16) = 0;
      *(v103 + 24) = 0;
      *(v103 + 32) = 0;
      *v103 = &unk_1F5D1E358;
      *(v103 + 8) = v106;
      *(v103 + 40) = v130;
      *(v103 + 48) = v104;
      *(v103 + 56) = v118;
      *(v103 + 64) = v136;
      *(v103 + 72) = v105;
      *(v103 + 80) = v121;
      v107 = physx::Cm::FlushPool::allocate(*(v121 + 776), 80, 0x10u);
      v108 = *(v121 + 800);
      *(v107 + 16) = 0;
      *(v107 + 24) = 0;
      *(v107 + 32) = 0;
      *v107 = &unk_1F5D1E4A8;
      *(v107 + 8) = v108;
      *(v107 + 40) = v130;
      *(v107 + 48) = v133;
      *(v107 + 56) = v135;
      *(v107 + 64) = v136;
      *(v107 + 72) = v121;
      v109 = physx::Cm::FlushPool::allocate(*(v121 + 776), 80, 0x10u);
      v110 = *(v121 + 800);
      *(v109 + 16) = 0;
      *(v109 + 24) = 0;
      *(v109 + 32) = 0;
      *v109 = &unk_1F5D1E588;
      *(v109 + 8) = v110;
      *(v109 + 40) = v136;
      *(v109 + 48) = v133;
      *(v109 + 56) = v135;
      *(v109 + 64) = v1;
      *(v109 + 72) = v121;
      v111 = physx::Cm::FlushPool::allocate(*(v121 + 776), 56, 0x10u);
      *(v111 + 8) = *(v121 + 800);
      *(v111 + 16) = 0;
      *(v111 + 32) = 0;
      *v111 = &unk_1F5D1E5F8;
      *(v111 + 40) = v136;
      *(v111 + 48) = v121;
      *(v111 + 32) = 1;
      *(v111 + 24) = v122;
      (*(*v122 + 32))(v122);
      *(v111 + 16) = *(*(v111 + 24) + 16);
      *(v109 + 32) = 1;
      *(v109 + 24) = v111;
      (*(*v111 + 32))(v111);
      *(v109 + 16) = *(*(v109 + 24) + 16);
      *(v107 + 32) = 1;
      *(v107 + 24) = v109;
      (*(*v109 + 32))(v109);
      *(v107 + 16) = *(*(v107 + 24) + 16);
      *(v103 + 32) = 1;
      *(v103 + 24) = v107;
      (*(*v107 + 32))(v107);
      *(v103 + 16) = *(*(v103 + 24) + 16);
      *(v99 + 32) = 1;
      *(v99 + 24) = v103;
      (*(*v103 + 32))(v103);
      *(v99 + 16) = *(*(v99 + 24) + 16);
      *(v155 + 32) = 1;
      *(v155 + 24) = v99;
      (*(*v99 + 32))(v99);
      *(v155 + 16) = *(*(v155 + 24) + 16);
      *(v94 + 32) = 1;
      *(v94 + 24) = v155;
      (*(*v155 + 32))(v155);
      *(v94 + 16) = *(*(v94 + 24) + 16);
      *(v94 + 56) = v103;
      (*(*v103 + 32))(v103);
      *(v159 + 32) = 1;
      *(v159 + 24) = v94;
      (*(*v94 + 32))(v94);
      *(v159 + 16) = *(*(v159 + 24) + 16);
      *(v141 + 32) = 1;
      *(v141 + 24) = v94;
      (*(*v94 + 32))(v94);
      *(v141 + 16) = *(*(v141 + 24) + 16);
      *(v151 + 32) = 1;
      *(v151 + 24) = v94;
      (*(*v94 + 32))(v94);
      *(v151 + 16) = *(*(v151 + 24) + 16);
      (*(*v111 + 40))(v111);
      (*(*v109 + 40))(v109);
      (*(*v107 + 40))(v107);
      (*(*v103 + 40))(v103);
      (*(*v99 + 40))(v99);
      (*(*v155 + 40))(v155);
      (*(*v94 + 40))(v94);
      (*(*v159 + 40))(v159);
      (*(*v141 + 40))(v141);
      (*(*v151 + 40))(v151);
      v8 = v144 + v145;
      v9 = HIDWORD(v144) + v139;
      v147 += v143.i32[0];
      v146 += v137 + (HIDWORD(v144) << 6);
      v7 = v142;
      v6 = v120;
    }

    while (v142 < v120);
  }

  (*(*v122 + 40))(v122);
  v112 = *(**(this + 7) + 40);

  return v112();
}

void physx::Dy::KinematicCopyTGSTask::~KinematicCopyTGSTask(physx::Dy::KinematicCopyTGSTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::KinematicCopyTGSTask::runInternal(uint64_t this)
{
  if (*(this + 48))
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(*(this + 40) + 4 * v3) >> 7;
      v5 = *(*(*(this + 56) + 24) + 32 * v4 + 24);
      v6 = *(v5 + 40);
      v7 = *(v6 + 92);
      v8 = *(this + 64) + v1;
      v9 = *(this + 72) + v1;
      v10 = *(this + 80) + v2;
      v11 = *(v6 + 128);
      v12 = sqrtf(*(v6 + 96));
      v13.i32[0] = *(v6 + 76);
      *(v9 + 16) = *(v6 + 16);
      *(v9 + 24) = *(v6 + 24);
      *v9 = xmmword_1E30474D0;
      *(v9 + 28) = 0uLL;
      *(v9 + 44) = 0uLL;
      *(v9 + 60) = 0;
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0uLL;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 54) = 0;
      *(v8 + 62) = 1;
      *(v8 + 44) = v12;
      *(v10 + 32) = 0;
      *(v10 + 36) = v4;
      *(v10 + 40) = v7;
      *&v14 = *(v6 + 64);
      DWORD2(v14) = *(v6 + 72);
      HIDWORD(v14) = v11;
      *v10 = v14;
      v13.i32[1] = *(v6 + 80);
      v13.i64[1] = *(v6 + 84);
      *(v10 + 16) = vextq_s8(v13, v13, 4uLL);
      v15 = *(v5 + 40);
      *v5 = *v15;
      *(v5 + 16) = *(v15 + 16);
      *(v5 + 24) = *(v15 + 24);
      ++v3;
      v2 += 48;
      v1 += 64;
    }

    while (v3 < *(this + 48));
  }

  return this;
}

void physx::Dy::DynamicsMergeTask::~DynamicsMergeTask(physx::Dy::DynamicsMergeTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::DynamicsMergeTask::release(physx::Dy::DynamicsMergeTask *this)
{
  (*(**(this + 5) + 40))(*(this + 5));
  result = *(this + 3);
  if (result)
  {
    v3 = *(*result + 40);

    return v3();
  }

  return result;
}

void physx::Dy::ArticulationTask::~ArticulationTask(physx::Dy::ArticulationTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::ArticulationTask::runInternal(physx::Dy::ArticulationTask *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 6) + 92);
    do
    {
      v6 = *v4;
      v4 += 96;
      v5 = v6;
      if (v3 <= v6)
      {
        v3 = v5;
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v7 = *(this + 5);
  v8 = physx::shdfnd::SListImpl::pop(*(v7 + 432));
  if (!v8)
  {
    v9 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v10 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Dy::ThreadContext>::getName() [T = physx::Dy::ThreadContext]";
    }

    else
    {
      v10 = "<allocation names disabled>";
    }

    v11 = (*(*(v9 + 24) + 16))(v9 + 24, 12343, v10, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/lowlevel/common/include/utils/PxcThreadCoherentCache.h", 82);
    if (v11)
    {
      v8 = (v11 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v8 - 8) = v8 - v11;
    }

    else
    {
      v8 = 0;
    }

    physx::Dy::ThreadContext::ThreadContext(v8, *(v7 + 440));
  }

  *(v8 + 12168) = 0;
  if ((*(v8 + 12172) & 0x7FFFFFFFu) < v3)
  {
    physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(v8 + 12160, v3);
  }

  *(v8 + 12168) = v3;
  *(v8 + 12184) = 0;
  if ((*(v8 + 12188) & 0x7FFFFFFFu) < v3)
  {
    physx::shdfnd::Array<physx::Cm::SpatialVectorF,physx::shdfnd::ReflectionAllocator<physx::Cm::SpatialVectorF>>::recreate(v8 + 12176, v3);
  }

  *(v8 + 12184) = v3;
  v12 = *(this + 14);
  if (v12)
  {
    v13 = 0;
    for (i = 0; i < v12; ++i)
    {
      v15 = *(this + 6);
      v16 = physx::Dy::ArticulationPImpl::sComputeUnconstrainedVelocitiesTGS[*(*(v15 + v13) + 40)];
      if (v16)
      {
        v16(v15 + v13, this + 60, *(this + 1), *(v8 + 12160), *(v8 + 12176), *(this + 18));
        v12 = *(this + 14);
      }

      v13 += 96;
    }
  }

  v17 = *(*(this + 5) + 432);
  pthread_mutex_lock((v17 + 8));
  *v8 = *v17;
  *v17 = v8;

  return pthread_mutex_unlock((v17 + 8));
}

void physx::Dy::CopyBackTask::~CopyBackTask(physx::Dy::CopyBackTask *this)
{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
}

{
  *this = &unk_1F5D1C1B0;
  *(this + 2) = 0;
  JUMPOUT(0x1E6906520);
}

uint64_t physx::Dy::CopyBackTask::runInternal(uint64_t this)
{
  v2 = *(this + 88);
  v1 = *(this + 92);
  if (v2 < v1)
  {
    v3 = *(this + 48);
    v4 = *(this + 56);
    v5 = *(this + 72);
    v6 = *(this + 80);
    v7 = *(v6 + 136);
    v8 = *(v6 + 272);
    v9 = *(this + 96);
    v10 = **(this + 40) + 8 * v2;
    v11 = v1 - v2;
    v12 = (*(this + 64) + 48 * v2 + 84);
    v13 = v2 << 6;
    this = 3;
    while (1)
    {
      v14 = vmul_n_f32(*(v3 + v13 + 112), v5);
      v15 = v5 * *(v3 + v13 + 120);
      v16 = v5 * *(v3 + v13 + 96);
      v17 = v5 * *(v3 + v13 + 100);
      v18 = v5 * *(v3 + v13 + 104);
      v19 = ((v16 * *(v4 + v13 + 92)) + (v17 * *(v4 + v13 + 104))) + (v18 * *(v4 + v13 + 116));
      v20 = ((v16 * *(v4 + v13 + 96)) + (v17 * *(v4 + v13 + 108))) + (v18 * *(v4 + v13 + 120));
      v21 = ((v16 * *(v4 + v13 + 100)) + (v17 * *(v4 + v13 + 112))) + (v18 * *(v4 + v13 + 124));
      v22 = *v10;
      v23 = *(*v10 + 40);
      v24 = *v23;
      *v22 = *v23;
      _Q21 = *(v23 + 4);
      *(v22 + 4) = _Q21;
      *(v22 + 20) = *(v23 + 20);
      _S22 = *(v4 + v13 + 64);
      _S23 = *(v4 + v13 + 68);
      _S29 = *(v4 + v13 + 72);
      _S25 = *(v4 + v13 + 76);
      __asm { FMLA            S24, S23, V21.S[1] }

      v35 = _S24 - (_S29 * *&_Q21);
      __asm
      {
        FMLS            S31, S22, V21.S[1]
        FMLA            S30, S25, V21.S[1]
      }

      v38 = (_S30 + (_S22 * *&_Q21)) - (v24 * _S23);
      __asm
      {
        FMLA            S19, S25, V21.S[2]
        FMLS            S19, S29, V21.S[1]
      }

      *&_Q21 = sqrtf((((_S31 * _S31) + (v35 * v35)) + (v38 * v38)) + (_S19 * _S19));
      v41 = v35 / *&_Q21;
      v42 = _S31 / *&_Q21;
      v43 = v38 / *&_Q21;
      v44 = _S19 / *&_Q21;
      *v23 = v35 / *&_Q21;
      *(v23 + 4) = v42;
      *(v23 + 8) = v38 / *&_Q21;
      *(v23 + 12) = _S19 / *&_Q21;
      *(v23 + 16) = *(v4 + v13 + 80);
      *(v23 + 24) = *(v4 + v13 + 88);
      v45 = *(v3 + v13 + 64);
      *(v23 + 64) = v45;
      v46 = *(v3 + v13 + 72);
      *(v23 + 72) = v46;
      LODWORD(_Q21) = *(v3 + v13 + 80);
      v47 = *(v3 + v13 + 84);
      v48 = *(v3 + v13 + 88);
      v49 = vadd_f32(vadd_f32(vmul_n_f32(*(v4 + v13 + 92), *&_Q21), vmul_n_f32(*(v4 + v13 + 104), v47)), vmul_n_f32(*(v4 + v13 + 116), v48));
      v50 = ((*&_Q21 * *(v4 + v13 + 100)) + (v47 * *(v4 + v13 + 112))) + (v48 * *(v4 + v13 + 124));
      *(v23 + 80) = v49;
      *(v23 + 88) = v50;
      v51 = *v12;
      v12 += 12;
      v52 = *(v7 + 4 * *(v8 + 4 * (v51 & 0x1FFFFFF)));
      v53 = *(v9 + 88);
      v54 = *(v23 + 140);
      if (*(v9 + 100) != 1)
      {
        if (*(v9 + 102) == 1)
        {
          v65 = 1.0;
          if (v52)
          {
            v66 = *(v23 + 152);
            if (v66 >= 2)
            {
              v65 = 1.0 / v66;
            }
          }

          *(v22 + 76) = v65;
        }

        if (v54 < 0.2 || v54 < v53)
        {
          v67 = *(v23 + 112);
          v68 = *(v23 + 116);
          v69 = *(v23 + 120);
          if (v67 <= 0.0)
          {
            v70 = 1.0;
          }

          else
          {
            v70 = 1.0 / v67;
          }

          if (v68 <= 0.0)
          {
            v71 = 1.0;
          }

          else
          {
            v71 = 1.0 / v68;
          }

          if (v69 <= 0.0)
          {
            v72 = 1.0;
          }

          else
          {
            v72 = 1.0 / v69;
          }

          v73 = v20 + v20;
          v74 = v21 + v21;
          v75 = (v44 * v44) + -0.5;
          v76 = (((v20 + v20) * v42) + (v41 * (v19 + v19))) + (v43 * v74);
          v77 = ((v73 * v75) - (((v43 * (v19 + v19)) - (v41 * v74)) * v44)) + (v42 * v76);
          v78 = ((v74 * v75) - (((v41 * v73) - (v42 * (v19 + v19))) * v44)) + (v43 * v76);
          v79 = vadd_f32(v14, *(v22 + 48));
          *(v22 + 48) = v79;
          v80 = v15 + *(v22 + 56);
          *(v22 + 56) = v80;
          v81 = ((((v19 + v19) * v75) - (((v42 * v74) - (v43 * v73)) * v44)) + (v41 * v76)) + *(v22 + 64);
          v82 = v77 + *(v22 + 68);
          *(v22 + 64) = v81;
          *(v22 + 68) = v82;
          v83 = v78 + *(v22 + 72);
          *(v22 + 72) = v83;
          v84 = *(v23 + 124);
          if (v84 == 0.0)
          {
            v84 = 1.0;
          }

          v85 = (((COERCE_FLOAT(vmul_f32(v79, v79).i32[1]) + (v79.f32[0] * v79.f32[0])) + (v80 * v80)) + ((((v71 * (v82 * v82)) + ((v81 * v81) * v70)) + ((v83 * v83) * v72)) * v84)) * 0.5;
          v86 = (*(v23 + 148) + 1);
          v87 = *(v23 + 132) * v86;
          if (v85 >= v87)
          {
            *(v22 + 48) = 0;
            *(v22 + 56) = 0;
            v88 = 1.0;
            *(v22 + 64) = 0;
            *(v22 + 72) = 0;
            if (v87 != 0.0)
            {
              v88 = fminf(v85 / v87, 2.0) * 0.5;
            }

            v89 = (v53 * (v86 + -1.0)) + (v88 * 0.4);
            *(v23 + 144) = v89;
            *(v22 + 28) = 8 * (v54 == 0.0);
            goto LABEL_66;
          }
        }

        goto LABEL_65;
      }

      v55 = *(v23 + 112);
      v56 = *(v23 + 116);
      if (v55 <= 0.0)
      {
        v57 = 1.0;
      }

      else
      {
        v57 = 1.0 / v55;
      }

      if (v56 <= 0.0)
      {
        v58 = 1.0;
      }

      else
      {
        v58 = 1.0 / v56;
      }

      v59 = *(v23 + 120);
      v60 = *(v23 + 124);
      v61 = v59 <= 0.0;
      v62 = 1.0 / v59;
      if (v61)
      {
        v62 = 1.0;
      }

      if (v60 == 0.0)
      {
        v60 = 1.0;
      }

      if (v52)
      {
        v63 = *(v23 + 152);
        if (v63 >= 0xA)
        {
          v63 = 10;
        }

        v64 = v63;
      }

      else
      {
        v64 = 0.0;
      }

      v90 = v19 + v19;
      v91 = v20 + v20;
      v92 = v21 + v21;
      v93 = (v44 * v44) + -0.5;
      v94 = (((v20 + v20) * v42) + (v41 * v90)) + (v43 * (v21 + v21));
      v95 = ((v90 * v93) - (((v42 * (v21 + v21)) - (v43 * (v20 + v20))) * v44)) + (v41 * v94);
      v96 = (((v20 + v20) * v93) - (((v43 * v90) - (v41 * v92)) * v44)) + (v42 * v94);
      v97 = ((v92 * v93) - (((v41 * v91) - (v42 * v90)) * v44)) + (v43 * v94);
      v98 = (((COERCE_FLOAT(vmul_f32(v14, v14).i32[1]) + (v14.f32[0] * v14.f32[0])) + (v15 * v15)) + (v60 * ((((v96 * v96) * v58) + ((v95 * v95) * v57)) + ((v97 * v97) * v62)))) * 0.5;
      v99 = v64 * *(v23 + 136);
      v100 = fmaxf(*(v22 + 60) - v53, 0.0);
      *(v22 + 60) = v100;
      v101 = (v53 + *(v22 + 76)) <= 1.0 ? v53 + *(v22 + 76) : 1.0;
      if (v98 >= v99)
      {
        break;
      }

      if (!v52)
      {
        v108 = 1.0;
LABEL_59:
        v104 = (v22 + 28);
        v109 = *(v22 + 28);
        *(v22 + 76) = v108;
        LOWORD(v106) = v109 & 1;
LABEL_60:
        v107 = 4 * v106;
        goto LABEL_61;
      }

      if (v64 > 1.0)
      {
        v102 = (v53 * -0.5) + 1.0;
        *(v23 + 64) = vmul_n_f32(v45, v102);
        *(v23 + 72) = v46 * v102;
        *(v23 + 80) = vmul_n_f32(v49, v102);
        *(v23 + 88) = v50 * v102;
        v101 = (v101 * 0.75) + 0.025;
      }

      v103 = *(v23 + 136);
      v104 = (v22 + 28);
      v105 = *(v22 + 28);
      *(v22 + 76) = v101;
      v106 = v105 & 1;
      if (v100 != 0.0 || v98 >= (v103 * 0.25))
      {
        goto LABEL_60;
      }

      if (v106)
      {
        v107 = 1;
      }

      else
      {
        v107 = 3;
      }

      *v23 = *v22;
      *(v23 + 16) = *(v22 + 16);
      *(v23 + 24) = *(v22 + 24);
LABEL_61:
      *v104 = v107;
      if (v54 < 0.2 || v54 < v53)
      {
        v110 = vadd_f32(v14, *(v22 + 48));
        v111 = v15 + *(v22 + 56);
        v112 = *(v22 + 68);
        v113 = v95 + *(v22 + 64);
        *(v22 + 48) = v110;
        *(v22 + 56) = v111;
        v114 = v96 + v112;
        *(v22 + 64) = v113;
        *(v22 + 68) = v114;
        v115 = v97 + *(v22 + 72);
        *(v22 + 72) = v115;
        v116 = *(v23 + 132);
        if (v98 >= v116)
        {
          v117 = (((COERCE_FLOAT(vmul_f32(v110, v110).i32[1]) + (v110.f32[0] * v110.f32[0])) + (v111 * v111)) + (v60 * (((v58 * (v114 * v114)) + ((v113 * v113) * v57)) + ((v115 * v115) * v62)))) * 0.5;
          v118 = (*(v23 + 148) + 1);
          if (v117 >= (v116 * v118))
          {
            *(v22 + 64) = 0;
            *(v22 + 72) = 0;
            v119 = 1.0;
            *(v22 + 48) = 0;
            *(v22 + 56) = 0;
            if (v116 != 0.0)
            {
              v119 = fminf(v117 / (v116 * v118), 2.0) * 0.5;
            }

            v89 = (v53 * (v118 + -1.0)) + (v119 * 0.4);
            *(v23 + 144) = v89;
            if (v54 == 0.0)
            {
              *v104 = v107 | 8;
            }

            goto LABEL_66;
          }
        }
      }

LABEL_65:
      v89 = fmaxf(v54 - v53, 0.0);
      *(v23 + 144) = v89;
LABEL_66:
      if (v89 == 0.0)
      {
        *(v22 + 28) |= 0x10u;
        *(v22 + 48) = 0;
        *(v22 + 56) = 0;
        *(v22 + 64) = 0;
        *(v22 + 72) = 0;
      }

      v10 += 8;
      v3 += 64;
      v4 += 64;
      if (!--v11)
      {
        return this;
      }
    }

    *(v22 + 60) = 1069547520;
    if (v52)
    {
      v108 = v101;
    }

    else
    {
      v108 = 1.0;
    }

    goto LABEL_59;
  }

  return this;
}