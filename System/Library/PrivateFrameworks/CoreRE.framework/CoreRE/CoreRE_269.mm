void physx::PCMSphereVsHeightfieldContactGenerationCallback::~PCMSphereVsHeightfieldContactGenerationCallback(physx::PCMSphereVsHeightfieldContactGenerationCallback *this)
{
  *this = &unk_1F5D22F30;
  v1 = *(this + 1217);
  if ((v1 & 0x80000000) == 0 && (v1 & 0x7FFFFFFF) != 0)
  {
    v2 = *(this + 607);
    if (v2 == (this + 3824))
    {
      *(this + 4848) = 0;
    }

    else if (v2)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

{
  *this = &unk_1F5D22F30;
  v1 = *(this + 1217);
  if ((v1 & 0x80000000) == 0 && (v1 & 0x7FFFFFFF) != 0)
  {
    v2 = *(this + 607);
    if (v2 == (this + 3824))
    {
      *(this + 4848) = 0;
    }

    else if (v2)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  JUMPOUT(0x1E6906520);
}

BOOL physx::Gu::MultiplePersistentContactManifold::addManifoldContactsToContactBuffer(uint64_t a1, uint64_t a2, float32x4_t *a3, int32x4_t *a4, float32x2_t *a5)
{
  *(a1 + 63) = 0;
  v5 = *(a1 + 62);
  if (*(a1 + 62))
  {
    v6 = 0;
    v7 = 0;
    v8 = a1 + 56;
    v9.i64[0] = 0x4000000040000000;
    v9.i64[1] = 0x4000000040000000;
    do
    {
      v10 = *(v8 + v6);
      v11 = a1 + 64 + 400 * *(v8 + v6);
      v12 = *(v11 + 384);
      *(a1 + 63) += v12;
      v13 = *(v11 + 32);
      if (v12 >= 2)
      {
        v14 = v12 - 1;
        v15 = (a1 + 160 + 400 * v10);
        do
        {
          v16 = *v15;
          v15 += 4;
          v13 = vaddq_f32(v13, v16);
          --v14;
        }

        while (v14);
      }

      v17 = v13;
      v17.i32[3] = 0;
      v18 = *a4;
      v18.i32[3] = 0;
      v19 = vdupq_laneq_s32(*a4, 3).u64[0];
      v20 = vmulq_n_f32(v17, vmla_f32(0xBF000000BF000000, v19, v19).f32[0]);
      v20.i32[3] = 0;
      v21 = vextq_s8(v18, v18, 8uLL).u64[0];
      v22 = vextq_s8(v17, v17, 8uLL).u64[0];
      v23 = vmls_f32(vmul_f32(*a4->i8, vext_s8(*v13.f32, v22, 4uLL)), vext_s8(*a4->i8, v21, 4uLL), *v13.f32);
      *v24.f32 = vext_s8(v23, vmls_f32(vmul_f32(*v13.f32, v21), *a4->i8, v22), 4uLL);
      v24.i64[1] = v23.u32[0];
      v25 = vmlaq_laneq_f32(v20, v24, *a4, 3);
      v25.i64[1] = vextq_s8(v25, v25, 8uLL).u32[0];
      v26 = vmulq_f32(v17, v18);
      v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
      v27 = vmlaq_n_f32(v25, v18, vpadd_f32(*v26.f32, *v26.f32).f32[0]);
      v28 = vaddq_f32(v27, v27);
      v28.i32[3] = 0;
      v29 = vmulq_f32(v28, v28);
      v29.i64[0] = vpaddq_f32(v29, v29).u64[0];
      v30 = vpadd_f32(*v29.f32, *v29.f32);
      v31 = vrsqrte_f32(v30);
      v32 = 4;
      do
      {
        v31 = vmul_f32(v31, vrsqrts_f32(vmul_f32(v31, v31), v30));
        --v32;
      }

      while (v32);
      v33 = vbsl_s8(vdup_lane_s32(vceqz_f32(v30), 0), v30, vmul_f32(v30, v31));
      v34 = vrecpe_f32(v33);
      v35 = 4;
      do
      {
        v34 = vmul_f32(v34, vrecps_f32(v33, v34));
        --v35;
      }

      while (v35);
      if (v7 <= 0x3F && v12)
      {
        v36 = 0;
        v37 = 0;
        v38 = vmulq_n_f32(v28, v34.f32[0]);
        v38.i32[3] = 0;
        v39 = vnegq_f32(v38);
        v40 = a1 + 400 * v10;
        do
        {
          v41 = *a3;
          v41.i32[3] = 0;
          v42 = vdupq_laneq_s32(*a3, 3).u64[0];
          v43 = *(v40 + v36 + 64);
          v44 = vmulq_n_f32(v43, vmla_f32(0xBF000000BF000000, v42, v42).f32[0]);
          v44.i32[3] = 0;
          v45 = vextq_s8(v41, v41, 8uLL).u64[0];
          v46 = vextq_s8(v43, v43, 8uLL).u64[0];
          v47 = vmls_f32(vmul_f32(*a3->f32, vext_s8(*v43.f32, v46, 4uLL)), vext_s8(*a3->f32, v45, 4uLL), *v43.f32);
          *v48.f32 = vext_s8(v47, vmls_f32(vmul_f32(v45, *v43.f32), *a3->f32, v46), 4uLL);
          v48.i64[1] = v47.u32[0];
          v49 = vmlaq_laneq_f32(v44, v48, *a3, 3);
          v49.i64[1] = vextq_s8(v49, v49, 8uLL).u32[0];
          v50 = vmulq_f32(v41, v43);
          v50.i64[0] = vpaddq_f32(v50, v50).u64[0];
          v51 = vmlaq_n_f32(v49, v41, vpadd_f32(*v50.f32, *v50.f32).f32[0]);
          v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
          v52 = vmlaq_f32(a3[1], v9, v51);
          v52.i64[1] = vextq_s8(v52, v52, 8uLL).u32[0];
          v53 = vmlaq_n_f32(v52, v39, COERCE_FLOAT(*a5));
          v53.i64[1] = vextq_s8(v53, v53, 8uLL).u32[0];
          v50.i32[0] = vsub_f32(vdup_laneq_s32(*(v40 + v36 + 96), 3), *a5).u32[0];
          v54 = a2 + (v7 << 6) + v36;
          *v54 = v38;
          *(v54 + 16) = v53;
          *(v54 + 12) = v50.i32[0];
          *(v54 + 52) = *(v40 + v36 + 112);
          v55 = v37 + 1;
          if (v37 + 1 >= v12)
          {
            break;
          }

          v56 = v7 + v37;
          v36 += 64;
          ++v37;
        }

        while (v56 < 0x3F);
        v7 = (v7 + v55);
        v5 = *(a1 + 62);
      }

      ++v6;
    }

    while (v6 < v5);
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 4096) = v7;
  return v7 != 0;
}

BOOL physx::Gu::pcmContactSphereMesh(uint64_t a1)
{
  v18 = MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  v184 = *MEMORY[0x1E69E9840];
  v7 = *v6;
  v9 = *v8;
  v10 = *(v8 + 24);
  v11 = *(v8 + 16);
  *v12.f32 = v11;
  v12.i64[1] = LODWORD(v10);
  v13 = *v2;
  v14 = v2[2];
  v15 = *(v2 + 6);
  *v16.f32 = v14;
  v16.i64[1] = LODWORD(v15);
  LODWORD(v18) = *(v17 + 4);
  v19 = vdup_lane_s32(*&v18, 0);
  v21.i32[0] = *v20;
  v162 = vdup_lane_s32(v21, 0);
  v163 = v19;
  v161[0] = v9;
  v161[1] = v12;
  v160[0] = v13;
  v160[1] = v16;
  v22 = vnegq_f32(v13);
  v23 = v22;
  v23.i32[3] = 0;
  v24 = vsubq_f32(v12, v16);
  v25 = vdupq_laneq_s32(v13, 3).u64[0];
  v26 = vmulq_n_f32(v24, vmla_f32(0xBF000000BF000000, v25, v25).f32[0]);
  v26.i32[3] = 0;
  v27 = vextq_s8(v23, v23, 8uLL).u64[0];
  v28 = vext_s8(*v22.f32, v27, 4uLL);
  v29 = vmls_f32(vmul_f32(*v22.f32, *&vextq_s8(v24, v24, 4uLL)), v28, *v24.f32);
  *v30.f32 = vext_s8(v29, vmls_f32(vmul_f32(v27, *v24.f32), *v22.f32, *&vextq_s8(v24, v24, 8uLL)), 4uLL);
  v30.i64[1] = v29.u32[0];
  v31 = vmlaq_laneq_f32(v26, v30, v13, 3);
  v31.i64[1] = vextq_s8(v31, v31, 8uLL).u32[0];
  v32 = vmulq_f32(v23, v24);
  v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
  v33 = vmlaq_n_f32(v31, v23, vpadd_f32(*v32.f32, *v32.f32).f32[0]);
  v34 = vaddq_f32(v33, v33);
  v34.i32[3] = 0;
  v35 = v9;
  v35.i32[3] = 0;
  v36 = vmulq_f32(v35, v23);
  v36.i64[0] = vpaddq_f32(v36, v36).u64[0];
  v37 = vsub_f32(vmul_f32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vpadd_f32(*v36.f32, *v36.f32));
  v38 = vmulq_laneq_f32(v23, v9, 3);
  v36.i64[0] = vextq_s8(v35, v35, 8uLL).u64[0];
  *v30.f32 = vmls_f32(vmul_f32(vext_s8(*v9.f32, *v36.f32, 4uLL), *v22.f32), v28, *v9.f32);
  *v9.f32 = vext_s8(*v30.f32, vmls_f32(vmul_f32(*v9.f32, v27), *v22.f32, *v36.f32), 4uLL);
  v9.i64[1] = v30.i64[0];
  v39 = vaddq_f32(vaddq_f32(v38, vmulq_laneq_f32(v35, v13, 3)), v9);
  v40 = v39;
  v40.i32[3] = v37.i32[1];
  v41 = vabdq_f32(v34, v7[1]);
  *v41.i8 = vpmax_f32(*&vextq_s8(v41, v41, 8uLL), *v41.i8);
  v42 = vmulq_f32(v40, *v7);
  v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
  if (vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(vdup_n_s32(0x3F7FF2E5u), vpadd_f32(*v42.f32, *v42.f32)), vcgt_f32(vpmax_f32(*v41.i8, *v41.i8), vmul_n_f32(vdup_n_s32(0x3CA3D70Au), *&v18))), 0), *&v18).u32[0] == -1)
  {
    v76 = v3;
    v77 = vmul_n_f32(vdup_n_s32(0x3A83126Fu), *&v18);
    v159 = v77;
    v78 = vsub_f32(v11, v14);
    v79 = (v10 - v15) + (v10 - v15);
    v77.i32[0] = *(v2 + 2);
    v80 = *(v2 + 3);
    v81 = (v80 * v80) + -0.5;
    v82 = vadd_f32(v78, v78);
    v83 = (vmuls_lane_f32(v82.f32[1], *v2, 1) + (COERCE_FLOAT(*v2) * v82.f32[0])) + (*v77.i32 * v79);
    v84.i32[0] = vdup_lane_s32(v82, 1).u32[0];
    v84.f32[1] = v79;
    *&v85 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v84, vneg_f32(vzip1_s32(v77, *v2))), vext_s8(v84, v82, 4uLL), *(v2 + 4))), v80), v82, v81), *v2, v83);
    v141 = ((v79 * v81) - (((-COERCE_FLOAT(HIDWORD(*v2)) * v82.f32[0]) + (COERCE_FLOAT(*v2) * v82.f32[1])) * v80)) + (*v77.i32 * v83);
    v142 = v85;
    *(&v85 + 1) = LODWORD(v141);
    *&v18 = *&v18 + *v21.i32;
    v140 = *&v18;
    v139 = v85;
    v86 = *(v1 + 48);
    v156[0] = xmmword_1E3047670;
    v156[1] = xmmword_1E3047670;
    v156[2] = xmmword_1E3060D60;
    v156[3] = xmmword_1E3047680;
    v157 = 0x3F80000000000000;
    v158 = 0;
    v87 = 1.0;
    v89 = *(v1 + 8) == 1.0 && *(v1 + 4) == 1.0;
    v90 = v89 && *(v1 + 12) == 1.0;
    if (!v90)
    {
      v137 = v40;
      v138 = v34;
      physx::Cm::FastVertex2ShapeScaling::init(v156, (v1 + 4), (v1 + 16));
      v40 = v137;
      v34 = v138;
    }

    v7[3].i8[14] = 0;
    *v7 = v40;
    v7[1] = v34;
    v183 = 0x44000000000;
    v181 = 1;
    v182 = v180;
    v91 = *(v86 + 80);
    v164.i32[2] = 2;
    *&v165 = v156;
    *(&v165 + 1) = v91;
    LOBYTE(v166[0]) = v90;
    v167 = 0;
    v164.i64[0] = &unk_1F5D22FB0;
    physx::Gu::PCMMeshContactGeneration::PCMMeshContactGeneration(v168, &v162, &v159, v161, v160, v7, v5, v180, v76);
    v174 = v139;
    v175 = v19;
    v179 = 0x4000000000;
    v177[1024] = 1;
    v178 = v177;
    v92 = vadd_f32(v19, v162);
    v176 = vmul_f32(v92, v92);
    v94 = v141;
    v93 = v142;
    v154 = v142;
    v155 = v141;
    v96 = xmmword_1E3047670;
    v95 = v140.i32[0];
    v152.i32[0] = v140.i32[0];
    v152.i32[1] = v140.i32[0];
    v153 = v140.i32[0];
    v149 = xmmword_1E3047670;
    v150 = xmmword_1E3047670;
    *&v151 = 1.0;
    if (v90)
    {
      v97 = vdup_lane_s32(v140, 0);
      v98 = xmmword_1E3047670;
    }

    else
    {
      physx::Cm::FastVertex2ShapeScaling::transformQueryBounds(v156, &v154, &v152, &v149);
      v96 = v149;
      v98 = v150;
      v87 = *&v151;
      v93 = v154;
      v94 = v155;
      v97 = v152;
      v95 = v153;
    }

    v143[0] = v96;
    v143[1] = v98;
    v144 = v87;
    v145 = v93;
    v146 = v94;
    v147 = v97;
    v148 = v95;
    (physx::Gu::gMidphaseBoxCBOverlapTable[*(v86 + 8) - 3])(v86, v143, &v164, 1, 1);
    if (v167)
    {
      physx::Gu::PCMMeshContactGeneration::processTriangleCache<16u,physx::Gu::PCMSphereVsMeshContactGeneration>(v168, v166 + 4);
      v167 = 0;
    }

    physx::Gu::PCMSphereVsMeshContactGeneration::generateLastContacts(v168);
    v100 = v173;
    if (v173)
    {
      v101 = HIDWORD(v173);
      if (HIDWORD(v173) >= 2)
      {
        v102 = 0;
        v103 = -1;
        v104 = 1;
        do
        {
          v105 = v169[v104 - 1];
          v106 = v169[v104];
          if (COERCE_FLOAT(*(v105 + 40)) > COERCE_FLOAT(*(v106 + 40)))
          {
            v169[v104 - 1] = v106;
            v169[v104] = v105;
            if (v104 - 2 >= 0)
            {
              v107 = &v169[v103 + 1];
              v108 = v102;
              do
              {
                v110 = *(v107 - 1);
                v109 = *v107;
                if (COERCE_FLOAT(*(*v107 + 40)) >= COERCE_FLOAT(*(v110 + 40)))
                {
                  break;
                }

                *v107 = v110;
                *--v107 = v109;
                --v108;
              }

              while (v108 > 0);
            }
          }

          ++v104;
          ++v103;
          ++v102;
        }

        while (v104 != v101);
      }

      if (v101)
      {
        v111 = 0;
        for (i = 0; i != v101; ++i)
        {
          v113 = v169[i];
          v113[1].i64[1] = v113;
          v113[2].i64[0] = v113;
          v114 = v113[3].i32[1] - v113[3].i32[0];
          v113[3].i32[2] = v114;
          v113[1].i64[0] = 0;
          v115 = v111;
          while (v115)
          {
            v116 = *&v168[v115 + 2040];
            v117 = *(v116 + 32);
            v118 = vmulq_f32(*v113, *v117);
            v118.i64[0] = vpaddq_f32(v118, v118).u64[0];
            v115 -= 8;
            if (vpadd_f32(*v118.f32, *v118.f32).f32[0] >= *&v170)
            {
              *(v116 + 16) = v113;
              v117[1].i64[1] = v113;
              v113[2].i64[0] = v117;
              *(*(v116 + 32) + 56) += v114;
              break;
            }
          }

          v111 += 8;
        }

        v119 = 0;
        v120 = v172;
        do
        {
          v121 = v169[v119];
          if (v121)
          {
            v122 = *(v121 + 32) == v121;
          }

          else
          {
            v122 = 0;
          }

          if (v122)
          {
            while (*(v121 + 16))
            {
              v123 = v121;
              v121 = *(v121 + 16);
              v124 = *(v123 + 48);
              v125 = *(v123 + 52);
              if (v124 < v125)
              {
                v126 = *(v121 + 52);
                do
                {
                  v127 = *(v121 + 48);
                  if (v127 < v126)
                  {
                    do
                    {
                      v128 = v120 + (v127 << 6);
                      v129 = vsubq_f32(*(v128 + 16), *(v120 + (v124 << 6) + 16));
                      v130 = vmulq_f32(v129, v129);
                      v130.i64[0] = vpaddq_f32(v130, v130).u64[0];
                      if (*&v171 > vpadd_f32(*v130.f32, *v130.f32).f32[0])
                      {
                        v131 = (v120 + ((v126 - 1) << 6));
                        v132 = *v131;
                        v133 = v131[1];
                        v134 = v131[2];
                        *(v128 + 48) = *(v131 + 12);
                        *(v128 + 16) = v133;
                        *(v128 + 32) = v134;
                        *v128 = v132;
                        v126 = *(v121 + 52) - 1;
                        *(v121 + 52) = v126;
                        --v127;
                      }

                      ++v127;
                    }

                    while (v127 < v126);
                    v125 = *(v123 + 52);
                  }

                  ++v124;
                }

                while (v124 < v125);
              }
            }
          }

          ++v119;
        }

        while (v119 != v101);
        v135 = v172;
        v100 = v173;
        v136 = HIDWORD(v173);
      }

      else
      {
        v136 = 0;
        v135 = v172;
      }

      physx::Gu::MultiplePersistentContactManifold::addManifoldContactPoints(v169[36], v135, v100, v169, v136, v99, &v170, 1);
      v173 = 0;
    }

    v164.i64[0] = &unk_1F5D22FB0;
    if ((v179 & 0x8000000000000000) == 0 && (v179 & 0x7FFFFFFF00000000) != 0 && v178 != v177 && v178)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    if ((v183 & 0x8000000000000000) == 0 && (v183 & 0x7FFFFFFF00000000) != 0 && v182 != v180 && v182)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  else
  {
    v43 = vdup_lane_s32(*v39.f32, 1);
    v44 = vdup_laneq_s32(v39, 2);
    v45 = vaddq_f32(v39, v39);
    v46 = vdup_laneq_s32(v45, 2);
    v47 = vdup_lane_s32(vmul_f32(*v39.f32, *v45.f32), 0);
    v48 = vmul_lane_f32(v43, *v45.f32, 1);
    v49 = vmul_laneq_f32(v44, v45, 2);
    v50 = vmul_n_f32(v43, v45.f32[0]);
    v51 = vmul_n_f32(v44, v45.f32[0]);
    v52 = vmul_lane_f32(vdup_lane_s32(*v45.f32, 0), v37, 1);
    v53 = vmul_lane_f32(v44, *v45.f32, 1);
    *v45.f32 = vmul_lane_f32(vdup_lane_s32(*v45.f32, 1), v37, 1);
    v54 = vmul_lane_f32(v46, v37, 1);
    __asm { FMOV            V7.2S, #1.0 }

    v59 = vsub_f32(_D7, v47);
    *v60.f32 = vext_s8(vsub_f32(vsub_f32(_D7, v48), v49), vadd_f32(v50, v54), 4uLL);
    v60.i64[1] = vsub_f32(v51, *v45.f32).u32[0];
    *&v61 = vext_s8(vsub_f32(v50, v54), vsub_f32(v59, v49), 4uLL);
    *(&v61 + 1) = vadd_f32(v53, v52).u32[0];
    v164 = v60;
    v165 = v61;
    *&v61 = vext_s8(vadd_f32(v51, *v45.f32), vsub_f32(v53, v52), 4uLL);
    *(&v61 + 1) = vsub_f32(v59, v48).u32[0];
    v166[0] = v61;
    v166[1] = v34;
    v180[0] = vmul_n_f32(vdup_n_s32(0x3D4CCCCDu), *&v18);
    v62 = v7[3].u8[14];
    if (v7[3].i8[14])
    {
      v63 = 0;
      v64 = &v7[3].i8[8];
      v65 = v7 + 4;
      do
      {
        v66 = v64[v63];
        LODWORD(v67) = v62 - 2;
        if (v63 >= v67)
        {
          v67 = v67;
        }

        else
        {
          v67 = v63;
        }

        _X8 = &v65[25 * v64[v67 + 1]];
        __asm
        {
          PRFM            #0, [X8]
          PRFM            #0, [X8,#0x80]
          PRFM            #0, [X8,#0x100]
        }

        v72 = physx::Gu::SinglePersistentContactManifold::refreshContactPoints(&v65[25 * v64[v63]], &v164, v180).u32[0];
        if (v65[25 * v66 + 24].i32[0])
        {
          v7[2].i32[v66] = v72;
          ++v63;
        }

        else
        {
          v73 = v7[3].i8[14] - 1;
          v7[3].i8[14] = v73;
          v74 = v64[v73];
          v64[v73] = v66;
          v64[v63] = v74;
        }

        v62 = v7[3].u8[14];
      }

      while (v63 < v62);
    }
  }

  return physx::Gu::MultiplePersistentContactManifold::addManifoldContactsToContactBuffer(v7, v5, v161, v160, &v163);
}

void physx::PCMSphereVsMeshContactGenerationCallback::~PCMSphereVsMeshContactGenerationCallback(physx::PCMSphereVsMeshContactGenerationCallback *this)
{
  *this = &unk_1F5D22FB0;
  v1 = *(this + 1433);
  if ((v1 & 0x80000000) == 0 && (v1 & 0x7FFFFFFF) != 0)
  {
    v2 = *(this + 715);
    if (v2 == (this + 4688))
    {
      *(this + 5712) = 0;
    }

    else if (v2)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }
}

{
  *this = &unk_1F5D22FB0;
  v1 = *(this + 1433);
  if ((v1 & 0x80000000) == 0 && (v1 & 0x7FFFFFFF) != 0)
  {
    v2 = *(this + 715);
    if (v2 == (this + 4688))
    {
      *(this + 5712) = 0;
    }

    else if (v2)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  JUMPOUT(0x1E6906520);
}

uint64_t physx::Gu::pcmContactSpherePlane(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, int32x2_t *a5, uint64_t a6, uint64_t a7)
{
  v7 = a3[1];
  v7.i32[3] = 0;
  v9 = *a4;
  v8 = *(a4 + 16);
  v8.i32[3] = 0;
  v10 = *a4;
  v10.i32[3] = 0;
  v11 = vdupq_laneq_s32(*a4, 3).u64[0];
  v12 = vsubq_f32(v7, v8);
  v13 = vmulq_n_f32(v12, vmla_f32(0xBF000000BF000000, v11, v11).f32[0]);
  v13.i32[3] = 0;
  v14 = *(a1 + 4);
  v15 = vextq_s8(v10, v10, 8uLL).u64[0];
  v16 = vmls_f32(vmul_f32(*a4, *&vextq_s8(v12, v12, 4uLL)), vext_s8(*a4, v15, 4uLL), *v12.f32);
  *v17.f32 = vext_s8(v16, vmls_f32(vmul_f32(v15, *v12.f32), *a4, *&vextq_s8(v12, v12, 8uLL)), 4uLL);
  v17.i64[1] = v16.u32[0];
  v18 = vmlsq_laneq_f32(v13, v17, *a4, 3);
  v18.i64[1] = vextq_s8(v18, v18, 8uLL).u32[0];
  v19 = vmulq_f32(v10, v12);
  v19.i64[0] = vpaddq_f32(v19, v19).u64[0];
  v18.i64[0] = vmlaq_n_f32(v18, v10, vpadd_f32(*v19.f32, *v19.f32).f32[0]).u64[0];
  v20 = vdup_lane_s32(vsub_f32(vadd_f32(*v18.f32, *v18.f32), v14), 0);
  v21 = vcge_f32(vdup_lane_s32(*a5, 0), v20).u8[0];
  if (v21)
  {
    LODWORD(v22) = vadd_f32(v11, v11).u32[0];
    v23 = vmulq_n_f32(v10, vadd_f32(*v9.i8, *v9.i8).f32[0]);
    v23.i32[3] = 0;
    *_Q3.f32 = vext_s8(v11, *&vextq_s8(v9, v9, 8uLL), 4uLL);
    _Q3.i64[1] = vneg_f32(vdup_lane_s32(*v9.i8, 1)).u32[0];
    v25 = vmlaq_n_f32(v23, _Q3, v22);
    __asm { FMOV            V3.2S, #-1.0 }

    v25.i64[1] = vextq_s8(v25, v25, 8uLL).u32[0];
    v25.i32[0] = vadd_f32(*v25.f32, *_Q3.f32).u32[0];
    v30 = vmlsq_lane_f32(v7, v25, v14, 0);
    v30.i64[1] = vextq_s8(v30, v30, 8uLL).u32[0];
    v31 = *(a7 + 4096);
    *(a7 + 4096) = v31 + 1;
    v32 = a7 + (v31 << 6);
    *v32 = v25;
    *(v32 + 16) = v30;
    *(v32 + 12) = v20.i32[0];
    *(v32 + 52) = -1;
  }

  return v21 & 1;
}

uint64_t physx::Gu::pcmContactSphereSphere(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x2_t *a5, uint64_t a6, uint64_t a7)
{
  v7.i64[0] = *(a3 + 16);
  v7.i64[1] = *(a3 + 24);
  v8.i64[0] = *(a4 + 16);
  v8.i64[1] = *(a4 + 24);
  v9 = *(a2 + 4);
  v10 = vsubq_f32(v7, v8);
  v11 = vmulq_f32(v10, v10);
  v11.i64[0] = vpaddq_f32(v11, v11).u64[0];
  v12 = vpadd_f32(*v11.f32, *v11.f32);
  v13 = vadd_f32(*(a1 + 4), v9);
  v14 = vadd_f32(*a5, v13);
  v15 = vcgt_f32(vdup_lane_s32(vmul_f32(v14, v14), 0), v12).u8[0];
  if (v15)
  {
    v16 = vrsqrte_f32(v12);
    v17 = 4;
    do
    {
      v16 = vmul_f32(v16, vrsqrts_f32(vmul_f32(v16, v16), v12));
      --v17;
    }

    while (v17);
    v18 = vbsl_s8(vdup_lane_s32(vceqz_f32(v12), 0), v12, vmul_f32(v12, v16));
    v19 = vrecpe_f32(v18);
    v20 = 4;
    do
    {
      v19 = vmul_f32(v19, vrecps_f32(v18, v19));
      --v20;
    }

    while (v20);
    v21 = vmulq_n_f32(v10, v19.f32[0]);
    v21.i32[3] = 0;
    v22 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcge_f32(vdup_n_s32(0x3727C5ACu), v18), 0)), 0x1FuLL)), xmmword_1E3047670, v21);
    v23 = vmlaq_n_f32(v8, v22, v9.f32[0]);
    v23.i64[1] = vextq_s8(v23, v23, 8uLL).u32[0];
    v24 = *(a7 + 4096);
    *(a7 + 4096) = v24 + 1;
    v25 = a7 + (v24 << 6);
    *v25 = v22;
    *(v25 + 16) = v23;
    *(v25 + 12) = vsub_f32(v18, v13).u32[0];
    *(v25 + 52) = -1;
  }

  return v15 & 1;
}

float32x4_t *physx::Gu::getPCMConvexData(float32x4_t *result, char a2, uint64_t a3)
{
  v3 = result[9].i64[0];
  v4 = vaddq_f32(vaddq_f32(vmulq_n_f32(result[3], *(v3 + 24)), vmulq_n_f32(result[4], *(v3 + 28))), vmulq_n_f32(result[5], *(v3 + 32)));
  *a3 = v4.i64[0];
  *(a3 + 8) = v4.i32[2];
  v5 = *(v3 + 38);
  v6 = *(v3 + 39);
  *(a3 + 12) = v5;
  *(a3 + 16) = v6;
  v7 = *(v3 + 36);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  v10 = v8 + 20 * v6;
  v11 = v7;
  v12 = v7 & 0x7FFF;
  *(a3 + 20) = v12;
  *(a3 + 24) = v8;
  *(a3 + 32) = v10;
  v13 = v10 + 12 * v5;
  v14 = v13 + 2 * v12 + 3 * v5;
  v15 = 4 * v12;
  if (v11 >= 0)
  {
    v15 = 0;
  }

  v16 = v14 + v15;
  if (v11 >= 0)
  {
    v14 = 0;
  }

  *(a3 + 40) = v16;
  *(a3 + 48) = v13;
  *(a3 + 56) = v14;
  *(a3 + 80) = v9;
  *(a3 + 64) = *(v3 + 56);
  if ((a2 & 1) == 0)
  {
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
  }

  return result;
}

uint64_t physx::Gu::getPCMConvexData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 12);
  v10 = *(a1 + 8) == 1.0 && *(a1 + 4) == 1.0;
  v11 = v10 & (v8 == 1.0);
  if (!v10 || v8 != 1.0)
  {
    physx::Cm::FastVertex2ShapeScaling::init(a2, (a1 + 4), (a1 + 16));
  }

  v12 = *(a1 + 48);
  v13 = *(a2 + 8);
  v14 = *(v12 + 4);
  v15 = *(a2 + 20);
  v16 = *(a2 + 32);
  v17 = *(v12 + 8);
  v18 = *(v12 + 12);
  v19 = ((*v12 * v13) + (v14 * v15)) + (v17 * v16);
  v20 = *(v12 + 16);
  v21 = *(v12 + 20);
  v22 = (fabsf(v13 * v18) + fabsf(v15 * v20)) + fabsf(v16 * v21);
  v23 = *(a2 + 12);
  v24 = vadd_f32(vmul_n_f32(*a2, *v12), vmul_n_f32(v23, v14));
  v25 = *(a2 + 24);
  v26 = vadd_f32(v24, vmul_n_f32(v25, v17));
  v27 = vadd_f32(vadd_f32(vabs_f32(vmul_n_f32(*a2, v18)), vabs_f32(vmul_n_f32(v23, v20))), vabs_f32(vmul_n_f32(v25, v21)));
  *a3 = vsub_f32(v26, v27);
  *(a3 + 8) = v19 - v22;
  *(a3 + 12) = vadd_f32(v26, v27);
  *(a3 + 20) = v19 + v22;
  v26.i32[0] = *(v12 + 24);
  v27.i32[0] = *(v12 + 28);
  v28 = *(v12 + 32);
  v29 = ((v26.f32[0] * *(a2 + 8)) + (v27.f32[0] * *(a2 + 20))) + (v28 * *(a2 + 32));
  *a4 = vadd_f32(vadd_f32(vmul_n_f32(*a2, v26.f32[0]), vmul_n_f32(*(a2 + 12), v27.f32[0])), vmul_n_f32(*(a2 + 24), v28));
  *(a4 + 8) = v29;
  v30 = *(v12 + 38);
  v31 = *(v12 + 39);
  *(a4 + 12) = v30;
  *(a4 + 16) = v31;
  v32 = *(v12 + 36);
  v33 = *(v12 + 40);
  v34 = *(v12 + 48);
  v35 = v33 + 20 * v31;
  v36 = v32;
  v37 = v32 & 0x7FFF;
  *(a4 + 20) = v37;
  *(a4 + 24) = v33;
  *(a4 + 32) = v35;
  v38 = v35 + 12 * v30;
  v39 = v38 + 2 * v37 + 3 * v30;
  v40 = 4 * v37;
  if (v36 >= 0)
  {
    v40 = 0;
  }

  v41 = v39 + v40;
  if (v36 >= 0)
  {
    v39 = 0;
  }

  *(a4 + 40) = v41;
  *(a4 + 48) = v38;
  *(a4 + 56) = v39;
  *(a4 + 80) = v34;
  *(a4 + 64) = *(v12 + 56);
  return v11;
}

uint64_t physx::Gu::PCMConvexVsMeshContactGeneration::generateTriangleFullContactManifold(uint64_t a1, uint64_t a2, __int32 a3, _DWORD *a4, unsigned int a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, _DWORD *a10, float32x2_t *a11, float32x4_t *a12)
{
  v158 = 0;
  v157 = vneg_f32(0x80000000800000);
  v156 = 0uLL;
  v20 = physx::testTriangleFaceNormal(a2, a8, a11, &v157, &v155, &v156, &v158);
  result = 0;
  if (v20)
  {
    v154 = 0;
    if (!physx::testPolyFaceNormal(a6, a7, a8, a11, &v157, &v154, &v156, &v158, v21, v22, v23, v24, v25) || !physx::testPolyEdgeNormal(a2, a5, a6, a7, a8, a11, &v157, &v156, &v158))
    {
      v58 = 0;
      v59 = 0;
      return v58 | v59;
    }

    v27 = *(a2 + 48);
    v28 = vsubq_f32(*(a2 + 64), v27);
    v29 = vsubq_f32(*(a2 + 80), v27);
    v30 = vmls_f32(vmul_f32(*v28.i8, *&vextq_s8(v29, v29, 4uLL)), *&vextq_s8(v28, v28, 4uLL), *v29.i8);
    *v31.f32 = vext_s8(v30, vmls_f32(vmul_f32(*&vextq_s8(v28, v28, 8uLL), *v29.i8), *v28.i8, *&vextq_s8(v29, v29, 8uLL)), 4uLL);
    v31.i64[1] = v30.u32[0];
    *v29.i8 = vpadd_f32(vmul_f32(*v31.f32, *v31.f32), vmul_f32(v30.u32[0], v30.u32[0]));
    v32 = vpadd_f32(*v29.i8, *v29.i8);
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
    v38 = vmulq_n_f32(v31, v36.f32[0]);
    v38.i32[3] = 0;
    v153 = v38;
    if (v158 == 1)
    {
      v60 = v154;
      v61 = vnegq_f32(v156);
      v61.i32[3] = 0;
      v62 = vmulq_f32(v38, v61);
      v62.i64[0] = vpaddq_f32(v62, v62).u64[0];
      if (vpadd_f32(*v62.f32, *v62.f32).f32[0] <= 0.70711)
      {
        if (a5 & 7) == 0 || (*(a1 + 4569))
        {
          v145 = *(a1 + 3736);
          v146 = *(v145 + 4368);
          v147 = v146 + 15;
          if ((*(v145 + 4372) & 0x7FFFFFFFu) < v146 + 15)
          {
            physx::shdfnd::Array<unsigned int,physx::shdfnd::InlineAllocator<4352u,physx::shdfnd::ReflectionAllocator<unsigned int>>>::recreate(v145, v146 + 15);
            v145 = *(a1 + 3736);
            v146 = *(v145 + 4368);
          }

          v58 = 0;
          v148 = *(v145 + 4360) + 4 * v146;
          *(v145 + 4368) = v147;
          *(v148 + 48) = a3;
          *(v148 + 52) = v60;
          *(v148 + 56) = a5;
          *(v148 + 36) = *a4;
          *(v148 + 40) = a4[1];
          *(v148 + 44) = a4[2];
          v149 = *(a2 + 48);
          *v148 = v149;
          *(v148 + 8) = DWORD2(v149);
          v150 = *(a2 + 64);
          *(v148 + 20) = DWORD2(v150);
          *(v148 + 12) = v150;
          v151 = *(a2 + 80);
          *(v148 + 24) = v151;
          *(v148 + 32) = DWORD2(v151);
        }

        else
        {
          v58 = 0;
        }

        goto LABEL_60;
      }

      v105 = (*(a6 + 24) + 20 * v154);
    }

    else
    {
      if (v158)
      {
        v63 = a8[5];
        v64 = vmulq_f32(v156, *v63);
        v64.i64[0] = vpaddq_f32(v64, v64).u64[0];
        v65 = vmulq_f32(v156, v63[1]);
        v65.i64[0] = vpaddq_f32(v65, v65).u64[0];
        v66 = vmulq_f32(v156, v63[2]);
        v66.i64[0] = vpaddq_f32(v66, v66).u64[0];
        v67 = vpadd_f32(*v66.f32, *v66.f32).u32[0];
        *v68.f32 = vext_s8(vpadd_f32(*v64.f32, *v64.f32), vpadd_f32(*v65.f32, *v65.f32), 4uLL);
        v68.i64[1] = v67;
        v69 = *(a6 + 24);
        v70 = *v69;
        v70.i32[3] = 0;
        v71 = vmulq_f32(v70, v68);
        v71.i64[0] = vpaddq_f32(v71, v71).u64[0];
        v72 = vpadd_f32(*v71.f32, *v71.f32);
        v73 = *(a6 + 16);
        if (v73 < 2)
        {
          v74 = 0;
        }

        else
        {
          v74 = 0;
          v75 = (v69 + 20);
          for (i = 1; i != v73; ++i)
          {
            v77 = *v75;
            v75 = (v75 + 20);
            v78 = v77;
            v78.i32[3] = 0;
            v79 = vmulq_f32(v78, v68);
            v79.i64[0] = vpaddq_f32(v79, v79).u64[0];
            v80 = vpadd_f32(*v79.f32, *v79.f32);
            if (vcgt_f32(v72, v80).u8[0])
            {
              v74 = i;
              v81 = -1;
            }

            else
            {
              v81 = 0;
            }

            v72 = vbsl_s8(vdup_n_s32(v81), v80, v72);
          }
        }

        v106 = *(a6 + 20);
        if (v106)
        {
          v107 = 0;
          v108 = vnegq_f32(v68);
          v108.i32[3] = 0;
          v109 = *(a6 + 48);
          v110 = vmul_f32(v72, v72);
          v111 = -1;
          do
          {
            v112 = (v109 + (2 * v107));
            v113 = *(v69 + 20 * *v112);
            v113.i32[3] = 0;
            v114 = *(v69 + 20 * v112[1]);
            v114.i32[3] = 0;
            v115 = vaddq_f32(v113, v114);
            v116 = vmulq_f32(v115, v115);
            v116.i64[0] = vpaddq_f32(v116, v116).u64[0];
            v117 = vpadd_f32(*v116.f32, *v116.f32);
            v118 = vmulq_f32(v108, v115);
            v118.i64[0] = vpaddq_f32(v118, v118).u64[0];
            v119 = vpadd_f32(*v118.f32, *v118.f32);
            v120 = vmul_f32(v119, v119);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v120, vmul_f32(v110, v117)), vcgez_f32(v119)), 0), *v108.f32).u32[0] == -1)
            {
              v121 = vrecpe_f32(v117);
              v122 = 4;
              do
              {
                v121 = vmul_f32(v121, vrecps_f32(v117, v121));
                --v122;
              }

              while (v122);
              v110 = vmul_f32(v120, v121);
              v111 = v107;
            }

            ++v107;
          }

          while (v107 != v106);
          if (v111 != -1)
          {
            v123 = (v109 + (2 * v111));
            v124 = *v123;
            v125 = *(v69 + 20 * *v123);
            v74 = v123[1];
            v125.i32[3] = 0;
            v126 = *(v69 + 20 * v74);
            v126.i32[3] = 0;
            v127 = vmulq_f32(v108, v125);
            v127.i64[0] = vpaddq_f32(v127, v127).u64[0];
            v128 = vmulq_f32(v108, v126);
            v128.i64[0] = vpaddq_f32(v128, v128).u64[0];
            if (vcgt_f32(vpadd_f32(*v127.f32, *v127.f32), vpadd_f32(*v128.f32, *v128.f32)).u8[0])
            {
              v74 = v124;
            }
          }
        }

        v129 = v69 + 20 * v74;
        v130 = a8[6];
        v131.i64[0] = *v129;
        v131.i64[1] = *(v129 + 8);
        v132 = vmulq_f32(*v130, v131);
        v132.i64[0] = vpaddq_f32(v132, v132).u64[0];
        v133 = vmulq_f32(v131, v130[1]);
        v133.i64[0] = vpaddq_f32(v133, v133).u64[0];
        v134 = vmulq_f32(v131, v130[2]);
        v134.i64[0] = vpaddq_f32(v134, v134).u64[0];
        v135 = vpadd_f32(*v134.f32, *v134.f32).u32[0];
        *v136.f32 = vext_s8(vpadd_f32(*v132.f32, *v132.f32), vpadd_f32(*v133.f32, *v133.f32), 4uLL);
        *&v136.u32[2] = v135;
        *v132.f32 = vpadd_f32(vmul_f32(*v136.f32, *v136.f32), vmul_f32(v135, v135));
        v137 = vpadd_f32(*v132.f32, *v132.f32);
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
        v143 = vmulq_n_f32(v136, v141.f32[0]);
        v143.i32[3] = 0;
        v152 = v143;
        v144 = vnegq_f32(v143);
        v144.i32[3] = 0;
        *a12 = v144;
        physx::generatedPolyContacts(a6, v129, a2, a3, a8, a9, a10, a11, &v152);
        goto LABEL_59;
      }

      v39 = *(a6 + 24);
      v40 = a8[5];
      v41 = vmulq_f32(v156, *v40);
      v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
      v42 = vmulq_f32(v156, v40[1]);
      v42.i64[0] = vpaddq_f32(v42, v42).u64[0];
      v43 = vmulq_f32(v156, v40[2]);
      v43.i64[0] = vpaddq_f32(v43, v43).u64[0];
      v44 = vpadd_f32(*v43.f32, *v43.f32).u32[0];
      *v45.f32 = vext_s8(vpadd_f32(*v41.f32, *v41.f32), vpadd_f32(*v42.f32, *v42.f32), 4uLL);
      v45.i64[1] = v44;
      v46 = *v39;
      v46.i32[3] = 0;
      v47 = vmulq_f32(v46, v45);
      v47.i64[0] = vpaddq_f32(v47, v47).u64[0];
      v48 = vpadd_f32(*v47.f32, *v47.f32);
      v49 = *(a6 + 16);
      if (v49 < 2)
      {
        v50 = 0;
      }

      else
      {
        v50 = 0;
        v51 = (v39 + 20);
        for (j = 1; j != v49; ++j)
        {
          v53 = *v51;
          v51 = (v51 + 20);
          v54 = v53;
          v54.i32[3] = 0;
          v55 = vmulq_f32(v54, v45);
          v55.i64[0] = vpaddq_f32(v55, v55).u64[0];
          v56 = vpadd_f32(*v55.f32, *v55.f32);
          if (vcgt_f32(v48, v56).u8[0])
          {
            v50 = j;
            v57 = -1;
          }

          else
          {
            v57 = 0;
          }

          v48 = vbsl_s8(vdup_n_s32(v57), v56, v48);
        }
      }

      v82 = *(a6 + 20);
      if (v82)
      {
        v83 = 0;
        v84 = vnegq_f32(v45);
        v84.i32[3] = 0;
        v85 = *(a6 + 48);
        v86 = vmul_f32(v48, v48);
        v87 = -1;
        do
        {
          v88 = (v85 + (2 * v83));
          v89 = *(v39 + 20 * *v88);
          v89.i32[3] = 0;
          v90 = *(v39 + 20 * v88[1]);
          v90.i32[3] = 0;
          v91 = vaddq_f32(v89, v90);
          v92 = vmulq_f32(v91, v91);
          v92.i64[0] = vpaddq_f32(v92, v92).u64[0];
          v93 = vpadd_f32(*v92.f32, *v92.f32);
          v94 = vmulq_f32(v84, v91);
          v94.i64[0] = vpaddq_f32(v94, v94).u64[0];
          v95 = vpadd_f32(*v94.f32, *v94.f32);
          v96 = vmul_f32(v95, v95);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v96, vmul_f32(v86, v93)), vcgez_f32(v95)), 0), *v38.f32).u32[0] == -1)
          {
            v97 = vrecpe_f32(v93);
            v98 = 4;
            do
            {
              v97 = vmul_f32(v97, vrecps_f32(v93, v97));
              --v98;
            }

            while (v98);
            v86 = vmul_f32(v96, v97);
            v87 = v83;
          }

          ++v83;
        }

        while (v83 != v82);
        if (v87 != -1)
        {
          v99 = (v85 + (2 * v87));
          v100 = *v99;
          v101 = *(v39 + 20 * *v99);
          v50 = v99[1];
          v101.i32[3] = 0;
          v102 = *(v39 + 20 * v50);
          v102.i32[3] = 0;
          v103 = vmulq_f32(v84, v101);
          v103.i64[0] = vpaddq_f32(v103, v103).u64[0];
          v104 = vmulq_f32(v84, v102);
          v104.i64[0] = vpaddq_f32(v104, v104).u64[0];
          if (vcgt_f32(vpadd_f32(*v103.f32, *v103.f32), vpadd_f32(*v104.f32, *v104.f32)).u8[0])
          {
            v50 = v100;
          }
        }
      }

      v105 = (v39 + 20 * v50);
    }

    *a12 = v38;
    physx::generatedTriangleContacts(a2, a3, a6, v105, a8, a9, a10, a11, &v153);
LABEL_59:
    v58 = 1;
LABEL_60:
    v59 = 1;
    return v58 | v59;
  }

  return result;
}

BOOL physx::testTriangleFaceNormal(float32x4_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4, _DWORD *a5, float32x4_t *a6, _DWORD *a7)
{
  v12 = a1[3];
  v13 = vsubq_f32(a1[4], v12);
  v14 = vsubq_f32(a1[5], v12);
  v15 = vmls_f32(vmul_f32(*v13.i8, *&vextq_s8(v14, v14, 4uLL)), *&vextq_s8(v13, v13, 4uLL), *v14.i8);
  *v16.f32 = vext_s8(v15, vmls_f32(vmul_f32(*&vextq_s8(v13, v13, 8uLL), *v14.i8), *v13.i8, *&vextq_s8(v14, v14, 8uLL)), 4uLL);
  v16.i64[1] = v15.u32[0];
  *v14.i8 = vpadd_f32(vmul_f32(*v16.f32, *v16.f32), vmul_f32(v15.u32[0], v15.u32[0]));
  v17 = vpadd_f32(*v14.i8, *v14.i8);
  v18 = vrsqrte_f32(v17);
  v19 = 4;
  do
  {
    v18 = vmul_f32(v18, vrsqrts_f32(vmul_f32(v18, v18), v17));
    --v19;
  }

  while (v19);
  v20 = vbsl_s8(vdup_lane_s32(vceqz_f32(v17), 0), v17, vmul_f32(v17, v18));
  v21 = vrecpe_f32(v20);
  v22 = 4;
  do
  {
    v21 = vmul_f32(v21, vrecps_f32(v20, v21));
    --v22;
  }

  while (v22);
  v29 = 0;
  v30 = 0;
  v23 = vmulq_n_f32(v16, v21.f32[0]);
  v23.i32[3] = 0;
  v28 = v23;
  v24 = vmulq_f32(v12, v23);
  v24.i64[0] = vpaddq_f32(v24, v24).u64[0];
  v25 = vpadd_f32(*v24.f32, *v24.f32);
  (*(*a2 + 24))(a2, &v28, &v30, &v29);
  v26 = vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(v25, vadd_f32(*a3, v29)), vcgt_f32(v30, vadd_f32(v25, *a3))), 0), v30).u32[0];
  if (v26 != -1)
  {
    *a4 = vadd_f32(vsub_f32(v25, v30), 0xB4000000B4000000);
    *a7 = 0;
    *a5 = 0;
    *a6 = v28;
  }

  return v26 != -1;
}

uint64_t physx::testPolyFaceNormal(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, void *a5, _DWORD *a6, int8x16_t *a7, _DWORD *a8, double a9, double a10, double a11, double a12, __n128 a13)
{
  v18 = *a7;
  v64 = 0;
  v65 = 0;
  v19 = *(a1 + 16);
  if (*(a3 + 56))
  {
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      a13.n128_u64[0] = vneg_f32(0x80000000800000);
      while (1)
      {
        v59 = a13;
        v61 = v18;
        v23 = (*(a1 + 24) + v20);
        v24 = *(*(a1 + 32) + 12 * v23[1].u8[3]);
        v24.i32[3] = 0;
        v25 = &v23->f32[3];
        v26 = vld1_dup_f32(v25);
        v63 = 0uLL;
        v27 = *v23;
        v27.i32[3] = 0;
        v63 = v27;
        v28 = vmulq_f32(v24, v27);
        v28.i64[0] = vpaddq_f32(v28, v28).u64[0];
        v29 = vpadd_f32(*v28.f32, *v28.f32);
        (*(*a2 + 24))(a2, &v63, &v65, &v64);
        if (vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(v29, vadd_f32(*a4, v64)), vcgt_f32(v65, vsub_f32(*a4, v26))), 0), v65).u32[0] == -1)
        {
          return 0;
        }

        v30 = vsub_f32(vneg_f32(v26), v65);
        a13.n128_u64[1] = v59.n128_u64[1];
        v31 = vcgt_f32(v59.n128_u64[0], v30).u8[0];
        v32 = (v31 & 1) == 0;
        if (v31)
        {
          v33 = -1;
        }

        else
        {
          v33 = 0;
        }

        v34 = vdupq_n_s32(v33);
        v18 = vbslq_s8(v34, v63, v61);
        if (!v32)
        {
          v22 = v21;
        }

        a13.n128_u64[0] = vbsl_s8(*v34.i8, v30, v59.n128_u64[0]);
        ++v21;
        v20 += 20;
        if (v21 >= *(a1 + 16))
        {
          goto LABEL_23;
        }
      }
    }
  }

  else if (v19)
  {
    v36 = 0;
    v37 = 0;
    v22 = 0;
    a13.n128_u64[0] = vneg_f32(0x80000000800000);
    while (1)
    {
      v60 = a13;
      v62 = v18;
      v38 = (*(a1 + 24) + v36);
      v39 = *(*(a1 + 32) + 12 * v38[1].u8[3]);
      v39.i32[3] = 0;
      v40 = &v38->f32[3];
      v41 = vld1_dup_f32(v40);
      v42 = *v38;
      v42.i32[3] = 0;
      v43 = *(a3 + 48);
      v44 = vmulq_f32(v42, *v43);
      v44.i64[0] = vpaddq_f32(v44, v44).u64[0];
      v45 = vmulq_f32(v42, v43[1]);
      v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
      v46 = vmulq_f32(v42, v43[2]);
      v46.i64[0] = vpaddq_f32(v46, v46).u64[0];
      *v44.f32 = vext_s8(vpadd_f32(*v44.f32, *v44.f32), vpadd_f32(*v45.f32, *v45.f32), 4uLL);
      v44.i64[1] = vpadd_f32(*v46.f32, *v46.f32).u32[0];
      *v45.f32 = vpadd_f32(vmul_f32(*v44.f32, *v44.f32), vmul_f32(*&v44.u32[2], *&v44.u32[2]));
      *v45.f32 = vpadd_f32(*v45.f32, *v45.f32);
      *v46.f32 = vrsqrte_f32(*v45.f32);
      *v45.f32 = vmul_f32(*v46.f32, vrsqrts_f32(vmul_f32(*v46.f32, *v46.f32), *v45.f32));
      v47 = vmulq_f32(v39, v42);
      v47.i64[0] = vpaddq_f32(v47, v47).u64[0];
      v48 = vmul_f32(*v45.f32, vpadd_f32(*v47.f32, *v47.f32));
      *v47.f32 = vneg_f32(v41);
      v49 = vmulq_n_f32(v44, v45.f32[0]);
      v49.i32[3] = 0;
      v50 = vmul_f32(*v45.f32, *v47.f32);
      v63 = v49;
      (*(*a2 + 24))(a2, &v63, &v65, &v64);
      if (vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(v48, vadd_f32(*a4, v64)), vcgt_f32(v65, vadd_f32(v50, *a4))), 0), v65).u32[0] == -1)
      {
        return 0;
      }

      v51 = vsub_f32(v50, v65);
      a13.n128_u64[1] = v60.n128_u64[1];
      v52 = vcgt_f32(v60.n128_u64[0], v51).u8[0];
      v53 = (v52 & 1) == 0;
      if (v52)
      {
        v54 = -1;
      }

      else
      {
        v54 = 0;
      }

      v55 = vdupq_n_s32(v54);
      v18 = vbslq_s8(v55, v63, v62);
      if (!v53)
      {
        v22 = v37;
      }

      a13.n128_u64[0] = vbsl_s8(*v55.i8, v51, v60.n128_u64[0]);
      ++v37;
      v36 += 20;
      if (v37 >= *(a1 + 16))
      {
        goto LABEL_23;
      }
    }
  }

  v22 = 0;
  a13.n128_u64[0] = vneg_f32(0x80000000800000);
LABEL_23:
  if (COERCE_FLOAT(*a5) > (a13.n128_f32[0] + 0.00000011921))
  {
    *a7 = v18;
    *a5 = a13.n128_u64[0];
    *a8 = 1;
  }

  *a6 = v22;
  return 1;
}

uint64_t physx::testPolyEdgeNormal(float32x4_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5, float32x2_t *a6, float32x2_t *a7, _OWORD *a8, _DWORD *a9)
{
  v12 = 0;
  v13 = 0;
  v95[7] = *MEMORY[0x1E69E9840];
  v14 = *a7;
  v15 = a5[6];
  v16 = v15[1];
  v17 = a1[3];
  v18 = a1[4];
  v19 = vmulq_n_f32(*v15, v17.f32[0]);
  v19.i32[3] = 0;
  v20 = vmulq_lane_f32(v16, *v17.f32, 1);
  v20.i32[3] = 0;
  v21 = v15[2];
  v22 = vmulq_laneq_f32(v21, v17, 2);
  v22.i32[3] = 0;
  v23 = vaddq_f32(vaddq_f32(v19, v20), v22);
  v24 = vmulq_n_f32(*v15, v18.f32[0]);
  v24.i32[3] = 0;
  v25 = vmulq_lane_f32(v16, *v18.f32, 1);
  v25.i32[3] = 0;
  v26 = vmulq_laneq_f32(v21, v18, 2);
  v26.i32[3] = 0;
  v27 = vaddq_f32(v26, vaddq_f32(v24, v25));
  v28 = a1[5];
  v29 = vmulq_n_f32(*v15, v28.f32[0]);
  v29.i32[3] = 0;
  v30 = vmulq_lane_f32(v16, *v28.f32, 1);
  v30.i32[3] = 0;
  v31 = vmulq_laneq_f32(v21, v28, 2);
  v31.i32[3] = 0;
  v32 = vaddq_f32(v31, vaddq_f32(v29, v30));
  v91[0] = v23;
  v91[1] = v27;
  v91[2] = v32;
  v33 = 2;
  do
  {
    if ((a2 >> (v33 + 3)))
    {
      *v95[2 * v13++ + 1].f32 = vsubq_f32(v91[v33], v90[v12 + 4]);
    }

    v33 = v12++;
  }

  while (v12 != 3);
  if (v13)
  {
    v34 = vsubq_f32(v27, v23);
    v35 = vsubq_f32(v32, v23);
    v36 = vmls_f32(vmul_f32(*v34.i8, *&vextq_s8(v35, v35, 4uLL)), *&vextq_s8(v34, v34, 4uLL), *v35.i8);
    *v37.f32 = vext_s8(v36, vmls_f32(vmul_f32(*&vextq_s8(v34, v34, 8uLL), *v35.i8), *v34.i8, *&vextq_s8(v35, v35, 8uLL)), 4uLL);
    v37.i64[1] = v36.u32[0];
    *v34.i8 = vpadd_f32(vmul_f32(*v37.f32, *v37.f32), vmul_f32(v36.u32[0], v36.u32[0]));
    v38 = vpadd_f32(*v34.i8, *v34.i8);
    v39 = vrsqrte_f32(v38);
    v40 = 4;
    do
    {
      v39 = vmul_f32(v39, vrsqrts_f32(vmul_f32(v39, v39), v38));
      --v40;
    }

    while (v40);
    v41 = vbsl_s8(vdup_lane_s32(vceqz_f32(v38), 0), v38, vmul_f32(v38, v39));
    v42 = vrecpe_f32(v41);
    v43 = 4;
    do
    {
      v42 = vmul_f32(v42, vrecps_f32(v41, v42));
      --v43;
    }

    while (v43);
    v44 = *(a3 + 16);
    if (v44)
    {
      v45 = 0;
      v46 = vmulq_n_f32(v37, v42.f32[0]);
      v46.i32[3] = 0;
      v94 = 0;
      v95[0] = 0;
      v92 = 0;
      v93 = 0;
      v47 = v13;
      v48 = xmmword_1E3115C00;
      v82 = a7;
      v84 = a3;
      v86 = v46;
      do
      {
        v49 = *(a3 + 24) + 20 * v45;
        v50.i64[0] = *v49;
        v50.i64[1] = *(v49 + 8);
        v51 = vmulq_f32(v46, v50);
        v51.i64[0] = vpaddq_f32(v51, v51).u64[0];
        if (vpadd_f32(*v51.f32, *v51.f32).f32[0] <= 0.0 && *(v49 + 18))
        {
          v52 = 0;
          v83 = *(a3 + 40) + *(v49 + 16);
          LODWORD(v53) = *(v49 + 18) - 1;
          while (2)
          {
            v54 = 0;
            v55 = *(v83 + v53);
            v53 = v52;
            v56 = *(v84 + 32);
            v57 = *(v56 + 12 * *(v83 + v53));
            v57.i32[3] = 0;
            v58 = *(v56 + 12 * v55);
            v58.i32[3] = 0;
            v59 = vsubq_f32(v58, v57);
            v60 = vextq_s8(v59, v59, 8uLL).u64[0];
            v61 = vextq_s8(v59, v59, 4uLL).u64[0];
            v88 = v60;
            v89 = v59.i64[0];
            v87 = v61;
            do
            {
              v62 = *v95[2 * v54 + 1].f32;
              v63 = vextq_s8(v62, v62, 8uLL).u64[0];
              v64 = vmls_f32(vmul_f32(*v59.i8, vext_s8(*v62.i8, v63, 4uLL)), v61, *v62.i8);
              *v65.f32 = vext_s8(v64, vmls_f32(vmul_f32(v60, *v62.i8), *v59.i8, v63), 4uLL);
              v65.i64[1] = v64.u32[0];
              if ((~vuzp1_s8(vmovn_s32(vcgtq_f32(v48, vabsq_f32(v65))), *v65.f32).u32[0] & 0xFFFFFF) != 0)
              {
                v66 = vmulq_f32(v46, v65);
                v66.i64[0] = vpaddq_f32(v66, v66).u64[0];
                if (vpadd_f32(*v66.f32, *v66.f32).f32[0] > 0.0)
                {
                  v67 = a5[6];
                  v68 = vmulq_f32(v65, *v67);
                  v68.i64[0] = vpaddq_f32(v68, v68).u64[0];
                  v69 = vmulq_f32(v65, v67[1]);
                  v69.i64[0] = vpaddq_f32(v69, v69).u64[0];
                  v70 = vmulq_f32(v65, v67[2]);
                  v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
                  v71 = vpadd_f32(*v70.f32, *v70.f32).u32[0];
                  *v72.f32 = vext_s8(vpadd_f32(*v68.f32, *v68.f32), vpadd_f32(*v69.f32, *v69.f32), 4uLL);
                  *&v72.u32[2] = v71;
                  *v68.f32 = vpadd_f32(vmul_f32(*v72.f32, *v72.f32), vmul_f32(v71, v71));
                  v73 = vpadd_f32(*v68.f32, *v68.f32);
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
                  v79 = vmulq_n_f32(v72, v77.f32[0]);
                  v79.i32[3] = 0;
                  v90[0] = v79;
                  (*(*a4 + 24))(a4, v90, v95, &v94);
                  (*(*a5 + 24))(a5, v90, &v93, &v92);
                  if (vuzp1_s8(vdup_lane_s16(vorr_s8(vcgt_f32(v95[0], vadd_f32(*a6, v92)), vcgt_f32(v93, vadd_f32(v94, *a6))), 0), v93).u32[0] == -1)
                  {
                    return 0;
                  }

                  v80 = vsub_f32(v94, v93);
                  v46 = v86;
                  if (vcgt_f32(v14, v80).u8[0])
                  {
                    *a8 = v90[0];
                    *a9 = 2;
                    v14 = v80;
                  }

                  v48 = xmmword_1E3115C00;
                  v60 = v88;
                  v59.i64[0] = v89;
                  v61 = v87;
                }
              }

              ++v54;
            }

            while (v54 != v47);
            v52 = v53 + 1;
            if (v53 + 1 < *(v49 + 18))
            {
              continue;
            }

            break;
          }

          a3 = v84;
          v44 = *(v84 + 16);
          a7 = v82;
        }

        ++v45;
      }

      while (v45 < v44);
    }

    *a7 = v14;
  }

  return 1;
}

void physx::generatedTriangleContacts(uint64_t a1, __int32 a2, uint64_t a3, float32x4_t *a4, uint64_t a5, uint64_t a6, _DWORD *a7, void *a8, int32x4_t *a9)
{
  v200 = a8;
  v216 = a6;
  v214 = a2;
  v219 = *MEMORY[0x1E69E9840];
  v215 = *a7;
  v213 = a9;
  *v14.f32 = physx::Gu::findRotationMatrixFromZAxis(a9);
  v211 = v15;
  v212 = v14;
  v210 = v16;
  v17 = *(a3 + 40);
  v18 = a4[1].u16[0];
  v19 = a4[1].u8[2];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v194 - v21;
  bzero(&v194 - v21, v21);
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v194 - v25;
  bzero(&v194 - v25, v27);
  v209.i64[0] = (v26 + 15);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v194 - v29;
  v31 = *(a1 + 64);
  v217[0] = *(a1 + 48);
  v217[1] = v31;
  v218 = *(a1 + 80);
  v32 = *(a3 + 32);
  v33 = *(*a5 + 32);
  v199 = v17;
  v198 = v18;
  v33(a5, v17 + v18, v19, v32, v23);
  v35 = v210;
  v34 = v211;
  v36 = v212;
  v37 = 0;
  v38 = xmmword_1E3116F50;
  v39 = xmmword_1E31137A0;
  do
  {
    v40 = v217[v37];
    v41 = vmulq_n_f32(v36, v40.f32[0]);
    v41.i32[3] = 0;
    v42 = vmulq_lane_f32(v34, *v40.f32, 1);
    v42.i32[3] = 0;
    v43 = vmulq_laneq_f32(v35, v40, 2);
    v43.i32[3] = 0;
    v44 = vaddq_f32(v43, vaddq_f32(v41, v42));
    v217[v37] = v44;
    v39 = vminq_f32(v39, v44);
    v38 = vmaxq_f32(v38, v44);
    ++v37;
  }

  while (v37 != 3);
  v207 = v39;
  v208 = v38;
  bzero(v30, v19);
  v46 = v210;
  v45 = v211;
  v47 = v212;
  v48 = v200;
  if (a4[1].i8[2])
  {
    v196 = a3;
    v197 = a5;
    v49 = 0;
    v50 = 0;
    v51 = v209.i64[0] & 0xFFFFFFFFFFFFFFF0;
    v194 = xmmword_1E3117360;
    v52 = vaddq_f32(v207, xmmword_1E3117360);
    v53 = v217[0];
    v54 = vdup_laneq_s32(v217[0], 2);
    v195 = xmmword_1E3117370;
    v55 = vaddq_f32(v208, xmmword_1E3117370);
    v56 = *&v217[0].i32[2] + COERCE_FLOAT(*v200);
    v208.i64[0] = v216 + (v215 << 6);
    v57 = xmmword_1E3116F50;
    v58 = xmmword_1E31137A0;
    v207.i32[0] = v215 + 5;
    v59 = vextq_s8(v53, v53, 8uLL);
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v209 = v217[0];
    v203 = v52;
    v202 = v55;
    v201 = v59;
    do
    {
      v61 = *(v23 + 16 * v49);
      v62 = vmulq_n_f32(v47, v61.f32[0]);
      v62.i32[3] = 0;
      v63 = vmulq_lane_f32(v45, *v61.f32, 1);
      v63.i32[3] = 0;
      v64 = vmulq_laneq_f32(v46, v61, 2);
      v64.i32[3] = 0;
      v65 = vaddq_f32(v64, vaddq_f32(v62, v63));
      *(v23 + 16 * v49) = v65;
      *(v51 + 8 * v49) = vdup_lane_s32(vsub_f32(*&vextq_s8(v65, v65, 8uLL), *v59.i8), 0);
      v66 = *(v23 + 16 * v49);
      v67 = v66;
      v67.i32[2] = v53.i32[2];
      *(v23 + 16 * v49) = v67;
      v68 = *&v65.i32[2];
      v65.i64[0] = vorrq_s8(vcgtq_f32(v52, v67), vcgtq_f32(v67, v55)).u64[0];
      v69 = vuzp1_s8(vmovn_s32(vceqq_s32(vorrq_s8(vdupq_lane_s32(*v65.i8, 0), vdupq_lane_s32(*v65.i8, 1)), v60)), *v61.f32).u32[0];
      if (v56 > *&v65.i32[2] && v69 != -1)
      {
        v72 = 0;
        v73 = vdup_lane_s32(*v66.f32, 0);
        v74 = vdup_lane_s32(*v66.f32, 1);
        v75 = 1;
        LODWORD(v76) = 2;
        while (1)
        {
          v77 = v217[v76];
          v76 = v72;
          v78 = vdup_lane_s32(*v77.i8, 1);
          v79 = v217[v72];
          v80 = vdup_lane_s32(*v79.i8, 1);
          v81 = vdup_lane_s32(*v77.i8, 0);
          v82 = vdup_lane_s32(*v79.i8, 0);
          if (vuzp1_s8(vdup_lane_s16(vorr_s8(vand_s8(vceq_f32(v73, v82), vceq_f32(v74, v80)), vand_s8(vceq_f32(v73, v81), vceq_f32(v74, v78))), 0), *v61.f32).u32[0] == -1)
          {
            break;
          }

          if (veor_s8(vcgt_f32(v78, v74), vcgt_f32(v80, v74)).u8[0] & 1) != 0 && (v83 = vsub_f32(v80, v78), v84 = vmul_f32(vsub_f32(v74, v78), vsub_f32(v82, v81)), v85 = vmul_n_f32(v83, v66.f32[0]), v86 = vadd_f32(v84, vmul_f32(vadd_f32(v81, 0x3400000034000000), v83)), v87 = vdup_lane_s32(vcgtz_f32(v83), 0), (vcge_f32(vbsl_s8(v87, v86, v85), vbsl_s8(v87, v85, v86)).u8[0]))
          {
            if ((v75 & 1) == 0)
            {
              goto LABEL_10;
            }

            v75 = 0;
            ++v72;
            if (v76 == 2)
            {
              break;
            }
          }

          else
          {
            ++v72;
            if (v76 == 2)
            {
              if (v75)
              {
                goto LABEL_10;
              }

              break;
            }
          }
        }

        v88 = *v213;
        v89 = vmulq_f32(*v213, vsubq_f32(*(a1 + 48), v61));
        v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
        *v89.f32 = vpadd_f32(*v89.f32, *v89.f32);
        v90 = vmlaq_n_f32(v61, *v213, v89.f32[0]);
        ++v50;
        v90.i64[1] = vextq_s8(v90, v90, 8uLL).u32[0];
        v89.i64[1] = v89.i64[0];
        v88.i32[3] = vnegq_f32(v89).i32[3];
        v91 = *a7;
        v92 = v216 + (v91 << 6);
        *v92 = v61;
        *(v92 + 16) = v90;
        *(v92 + 32) = v88;
        *(v92 + 48) = v214;
        v93 = v91 + 1;
        *a7 = v93;
        if ((v93 - v215) >= 0x10)
        {
          v206 = v57;
          v205 = v58;
          v204 = v67;
          physx::Gu::SinglePersistentContactManifold::reduceContacts(v208.i64[0], v93 - v215);
          v67 = v204;
          v60.i64[0] = -1;
          v60.i64[1] = -1;
          v59.i64[0] = v201.i64[0];
          v58 = v205;
          v55 = v202;
          v52 = v203;
          v57 = v206;
          v53 = v209;
          v46 = v210;
          v45 = v211;
          v47 = v212;
          *a7 = v207.i32[0];
        }
      }

LABEL_10:
      v58 = vminq_f32(v58, v67);
      v57 = vmaxq_f32(v57, v67);
      v30[v49++] = v56 > v68;
      v71 = a4[1].u8[2];
    }

    while (v49 < v71);
    if (v50 != v71)
    {
      v94 = vaddq_f32(v58, v194);
      v95 = *(v197 + 48);
      v96 = *a4;
      v96.i64[1] = a4->u32[2];
      v97 = vmulq_f32(*v95, v96);
      v98 = vmulq_f32(v96, v95[1]);
      v99 = vmulq_f32(v96, v95[2]);
      v97.i64[0] = vpaddq_f32(v97, v97).u64[0];
      v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
      v99.i64[0] = vpaddq_f32(v99, v99).u64[0];
      v100 = vpadd_f32(*v99.f32, *v99.f32).u32[0];
      *v101.f32 = vext_s8(vpadd_f32(*v97.f32, *v97.f32), vpadd_f32(*v98.f32, *v98.f32), 4uLL);
      v101.i64[1] = v100;
      v102 = vaddq_f32(v57, v195);
      *v97.f32 = vpadd_f32(vmul_f32(*v101.f32, *v101.f32), vmul_f32(*&v101.u32[2], *&v101.u32[2]));
      v103 = vpadd_f32(*v97.f32, *v97.f32);
      v104 = vrsqrte_f32(v103);
      v105 = 4;
      do
      {
        v104 = vmul_f32(v104, vrsqrts_f32(vmul_f32(v104, v104), v103));
        --v105;
      }

      while (v105);
      v106 = vbsl_s8(vdup_lane_s32(vceqz_f32(v103), 0), v103, vmul_f32(v103, v104));
      v107 = vrecpe_f32(v106);
      v108 = 4;
      do
      {
        v107 = vmul_f32(v107, vrecps_f32(v106, v107));
        --v108;
      }

      while (v108);
      v109 = 0;
      v110 = 0;
      v111 = (*(v196 + 32) + 12 * *(v199 + v198));
      v112 = vmulq_n_f32(v101, v107.f32[0]);
      v112.i32[3] = 0;
      v113 = *(v197 + 40);
      v114 = vmulq_n_f32(*v113, *v111);
      v114.i32[3] = 0;
      v115 = vmulq_n_f32(v113[1], v111[1]);
      v115.i32[3] = 0;
      v116 = vmulq_n_f32(v113[2], v111[2]);
      v116.i32[3] = 0;
      v117 = vmulq_f32(v112, vaddq_f32(vaddq_f32(v114, v115), v116));
      v117.i64[0] = vpaddq_f32(v117, v117).u64[0];
      v118 = vpadd_f32(*v117.f32, *v117.f32);
      v119 = vnegq_f32(v112);
      v120.i64[0] = -1;
      v120.i64[1] = -1;
      v206 = v94;
      v205 = v102;
      v204 = v112;
      v203 = v119;
      do
      {
        v121 = a4[1].u8[2];
        v122 = v217[v109];
        v123 = vorrq_s8(vcgtq_f32(v94, v122), vcgtq_f32(v122, v102)).u64[0];
        if (vuzp1_s8(vmovn_s32(vceqq_s32(vorrq_s8(vdupq_lane_s32(v123, 0), vdupq_lane_s32(v123, 1)), v120)), *v122.f32).u32[0] != -1 && v121 != 0)
        {
          v125 = 0;
          v126 = vdup_lane_s32(*v122.f32, 0);
          v127 = vdup_lane_s32(*v122.f32, 1);
          LODWORD(v128) = v121 - 1;
          v129 = 1;
          while (1)
          {
            v130 = *(v23 + 16 * v128);
            v128 = v125;
            v131 = vdup_lane_s32(*&v130, 1);
            v132 = *(v23 + 16 * v125);
            v133 = vdup_lane_s32(*&v132, 1);
            v134 = vdup_lane_s32(*&v130, 0);
            v135 = vdup_lane_s32(*&v132, 0);
            if (vuzp1_s8(vdup_lane_s16(vorr_s8(vand_s8(vceq_f32(v126, v135), vceq_f32(v127, v133)), vand_s8(vceq_f32(v126, v134), vceq_f32(v127, v131))), 0), *v122.f32).u32[0] == -1)
            {
              break;
            }

            if (veor_s8(vcgt_f32(v131, v127), vcgt_f32(v133, v127)).u8[0] & 1) != 0 && (v136 = vsub_f32(v133, v131), v137 = vmul_f32(vsub_f32(v127, v131), vsub_f32(v135, v134)), v138 = vmul_n_f32(v136, v122.f32[0]), v139 = vadd_f32(v137, vmul_f32(vadd_f32(v134, 0x3400000034000000), v136)), v140 = vdup_lane_s32(vcgtz_f32(v136), 0), (vcge_f32(vbsl_s8(v140, v139, v138), vbsl_s8(v140, v138, v139)).u8[0]))
            {
              if ((v129 & 1) == 0)
              {
                goto LABEL_34;
              }

              v129 = 0;
              ++v125;
              if (v121 - 1 == v128)
              {
                break;
              }
            }

            else
            {
              ++v125;
              if (v121 == v128 + 1)
              {
                if (v129)
                {
                  goto LABEL_34;
                }

                break;
              }
            }
          }

          ++v110;
          v141 = vmulq_f32(v47, v122);
          v141.i64[0] = vpaddq_f32(v141, v141).u64[0];
          v142 = vmulq_f32(v45, v122);
          v142.i64[0] = vpaddq_f32(v142, v142).u64[0];
          v143 = vmulq_f32(v46, v122);
          v143.i64[0] = vpaddq_f32(v143, v143).u64[0];
          v144 = vpadd_f32(*v143.f32, *v143.f32).u32[0];
          *v145.f32 = vext_s8(vpadd_f32(*v141.f32, *v141.f32), vpadd_f32(*v142.f32, *v142.f32), 4uLL);
          v145.i64[1] = v144;
          v146 = vmulq_f32(v112, v145);
          v146.i64[0] = vpaddq_f32(v146, v146).u64[0];
          v147 = vsub_f32(vpadd_f32(*v146.f32, *v146.f32), v118).f32[0];
          if (v147 <= COERCE_FLOAT(*v48))
          {
            v148 = vmlaq_n_f32(v145, v119, v147);
            v148.i64[1] = vextq_s8(v148, v148, 8uLL).u32[0];
            v149 = *v213;
            v150 = vmulq_f32(vsubq_f32(v148, v145), *v213);
            v150.i64[0] = vpaddq_f32(v150, v150).u64[0];
            v149.i32[3] = vpadd_f32(*&v150, *&v150).i32[1];
            v151 = *a7;
            v152 = (v216 + (v151 << 6));
            *v152 = v148;
            v152[1] = v145;
            v152[2] = v149;
            v152[3].i32[0] = v214;
            v153 = v151 + 1;
            *a7 = v153;
            if ((v153 - v215) >= 0x10)
            {
              physx::Gu::SinglePersistentContactManifold::reduceContacts(v208.i64[0], v153 - v215);
              v120.i64[0] = -1;
              v120.i64[1] = -1;
              v119 = v203;
              v112 = v204;
              v102 = v205;
              v94 = v206;
              v53 = v209;
              v46 = v210;
              v45 = v211;
              v47 = v212;
              *a7 = v207.i32[0];
            }
          }
        }

LABEL_34:
        ++v109;
      }

      while (v109 != 3);
      if (v110 != 3)
      {
        v154 = 0;
        LODWORD(v155) = a4[1].u8[2];
        v156 = v218;
        v157.i64[0] = -1;
        v157.i64[1] = -1;
        do
        {
          v158 = v217[v154];
          if (v155)
          {
            v159 = 0;
            v160 = vminq_f32(v158, v156);
            v161 = vmaxq_f32(v158, v156);
            LODWORD(v162) = v155 - 1;
            do
            {
              v163 = v162;
              v162 = v159;
              if ((v30[v159] & 1) != 0 || v30[v163] == 1)
              {
                v164 = *(v23 + 16 * v159);
                v165 = *(v23 + 16 * v163);
                v166 = vorrq_s8(vcgtq_f32(v160, vmaxq_f32(v164, v165)), vcgtq_f32(vminq_f32(v164, v165), v161)).u64[0];
                if (vuzp1_s8(vmovn_s32(vceqq_s32(vorrq_s8(vdupq_lane_s32(v166, 0), vdupq_lane_s32(v166, 1)), v157)), *v164.f32).u32[0] != -1)
                {
                  v167 = vsub_f32(*v158.f32, *v164.f32);
                  v168 = vsub_f32(*v156.f32, *v164.f32);
                  v169 = vsub_f32(vmul_lane_f32(vdup_lane_s32(v167, 0), v168, 1), vmul_n_f32(vdup_lane_s32(v167, 1), v168.f32[0]));
                  v170 = vsub_f32(*v158.f32, *v165.f32);
                  v171 = vsub_f32(*v156.f32, *v165.f32);
                  v172 = vsub_f32(vmul_lane_f32(vdup_lane_s32(v170, 0), v171, 1), vmul_n_f32(vdup_lane_s32(v170, 1), v171.f32[0]));
                  if (vmul_f32(v169, v172).f32[0] < 0.0)
                  {
                    v173 = vsub_f32(*v164.f32, *v158.f32);
                    v174 = vsub_f32(*v165.f32, *v158.f32);
                    v175 = vsub_f32(vmul_lane_f32(v173, v174, 1), vmul_lane_f32(v174, v173, 1));
                    v176 = vsub_f32(*v164.f32, *v156.f32);
                    v177 = vsub_f32(*v165.f32, *v156.f32);
                    if (vmul_f32(v175, vsub_f32(vmul_lane_f32(v176, v177, 1), vmul_lane_f32(v177, v176, 1))).f32[0] < 0.0)
                    {
                      v178 = vsub_f32(v172, v169);
                      v179 = vrecpe_f32(v178);
                      v180 = 4;
                      do
                      {
                        v179 = vmul_f32(v179, vrecps_f32(v178, v179));
                        --v180;
                      }

                      while (v180);
                      v164.i32[2] = vadd_f32(v54, *(v51 + 8 * v162)).u32[0];
                      v165.i32[2] = vadd_f32(v54, *(v51 + 8 * v163)).u32[0];
                      v181 = vmlsq_lane_f32(v164, vsubq_f32(v165, v164), vmul_f32(v169, v179), 0);
                      v182 = vsubq_f32(v181, v53);
                      if (*&v182.i32[2] <= COERCE_FLOAT(*v48))
                      {
                        v181.i64[1] = vextq_s8(v181, v181, 8uLL).u32[0];
                        v183 = v181;
                        v183.i32[2] = v53.i32[2];
                        v184 = vmulq_f32(v47, v181);
                        v184.i64[0] = vpaddq_f32(v184, v184).u64[0];
                        v185 = vmulq_f32(v45, v181);
                        v185.i64[0] = vpaddq_f32(v185, v185).u64[0];
                        *v184.f32 = vext_s8(vpadd_f32(*v184.f32, *v184.f32), vpadd_f32(*v185.f32, *v185.f32), 4uLL);
                        v186 = vmulq_f32(v46, v181);
                        v186.i64[0] = vpaddq_f32(v186, v186).u64[0];
                        v184.i64[1] = vpadd_f32(*v186.f32, *v186.f32).u32[0];
                        v187 = vmulq_f32(v47, v183);
                        v187.i64[0] = vpaddq_f32(v187, v187).u64[0];
                        v188 = vmulq_f32(v45, v183);
                        v188.i64[0] = vpaddq_f32(v188, v188).u64[0];
                        v189 = vmulq_f32(v46, v183);
                        v189.i64[0] = vpaddq_f32(v189, v189).u64[0];
                        *v187.f32 = vext_s8(vpadd_f32(*v187.f32, *v187.f32), vpadd_f32(*v188.f32, *v188.f32), 4uLL);
                        v187.i64[1] = vpadd_f32(*v189.f32, *v189.f32).u32[0];
                        v190 = *v213;
                        v190.i32[3] = vdupq_laneq_s32(v182, 2).i32[3];
                        v191 = *a7;
                        v192 = (v216 + (v191 << 6));
                        *v192 = v184;
                        v192[1] = v187;
                        v192[2] = v190;
                        v192[3].i32[0] = v214;
                        v193 = v191 + 1;
                        *a7 = v193;
                        if ((v193 - v215) >= 0x10)
                        {
                          v206 = v156;
                          v205 = v158;
                          v204 = v160;
                          v203 = v161;
                          physx::Gu::SinglePersistentContactManifold::reduceContacts(v208.i64[0], v193 - v215);
                          v161 = v203;
                          v160 = v204;
                          v158 = v205;
                          v156 = v206;
                          v157.i64[0] = -1;
                          v157.i64[1] = -1;
                          v53 = v209;
                          v46 = v210;
                          v45 = v211;
                          v47 = v212;
                          *a7 = v207.i32[0];
                        }
                      }
                    }
                  }
                }
              }

              v159 = v162 + 1;
              v155 = a4[1].u8[2];
            }

            while (v162 + 1 < v155);
          }

          ++v154;
          v156 = v158;
        }

        while (v154 != 3);
      }
    }
  }
}

void physx::generatedPolyContacts(uint64_t a1, uint64_t a2, float32x4_t *a3, __int32 a4, uint64_t a5, uint64_t a6, _DWORD *a7, void *a8, int32x4_t *a9)
{
  v191 = a6;
  v208 = a4;
  v214 = *MEMORY[0x1E69E9840];
  v209 = *a7;
  v15 = *(a1 + 40);
  v16 = *(a2 + 16);
  v207 = *a9;
  v200.i64[0] = a9;
  *v17.f32 = physx::Gu::findRotationMatrixFromZAxis(a9);
  v206 = v17;
  v205 = v18;
  v204 = v19;
  v20 = *(a2 + 18);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v187 - v22;
  bzero(&v187 - v22, v22);
  v24 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a5 + 32))(a5, v15 + v16, v20, *(a1 + 32), v24);
  v25 = v204;
  v26 = v205;
  v27 = v206;
  v29 = a3[4];
  v28 = a3 + 4;
  v213[0] = v28[-1];
  v213[1] = v29;
  v213[2] = v28[1];
  v30 = *v24;
  v31 = xmmword_1E31137A0;
  v32 = xmmword_1E3116F50;
  v33 = *v24;
  v34 = xmmword_1E3116F50;
  v35 = xmmword_1E31137A0;
  if (*(a2 + 18))
  {
    v36 = 0;
    v37 = xmmword_1E3116F50;
    v38 = xmmword_1E31137A0;
    do
    {
      v39 = v24[v36];
      v40 = vmulq_n_f32(v27, v39.f32[0]);
      v40.i32[3] = 0;
      v41 = vmulq_lane_f32(v26, *v39.f32, 1);
      v41.i32[3] = 0;
      v42 = vmulq_laneq_f32(v25, v39, 2);
      v42.i32[3] = 0;
      v43 = vaddq_f32(v42, vaddq_f32(v40, v41));
      v24[v36] = v43;
      v38 = vminq_f32(v38, v43);
      v37 = vmaxq_f32(v37, v43);
      ++v36;
    }

    while (v36 < *(a2 + 18));
    v33 = *v24;
    v35 = vaddq_f32(v38, xmmword_1E3117360);
    v34 = vaddq_f32(v37, xmmword_1E3117370);
  }

  v188 = v28 + 1;
  v189 = v28 - 1;
  v190 = v28;
  v44 = 0;
  v45 = 0;
  v207 = vnegq_f32(v207);
  v192 = a8;
  v46 = *&v33.i32[2] + COERCE_FLOAT(*a8);
  v47 = v191;
  v202 = v191 + (v209 << 6);
  v201 = v209 + 5;
  v48 = vextq_s8(v33, v33, 8uLL);
  v49.i64[0] = -1;
  v49.i64[1] = -1;
  v203 = v33;
  v196 = v30;
  v195 = v35;
  v194 = v34;
  v193 = v48;
  do
  {
    v50 = v213[v44];
    v51 = vmulq_n_f32(v27, v50.f32[0]);
    v51.i32[3] = 0;
    v52 = vmulq_lane_f32(v26, *v50.f32, 1);
    v52.i32[3] = 0;
    v53 = vmulq_laneq_f32(v25, v50, 2);
    v53.i32[3] = 0;
    v54 = vaddq_f32(v53, vaddq_f32(v51, v52));
    *&v212[1].u32[2 * v44 + 2] = vdup_lane_s32(vsub_f32(*&vextq_s8(v54, v54, 8uLL), *v48.i8), 0);
    v55 = v54;
    v55.i32[2] = v33.i32[2];
    v213[v44] = v55;
    if (v46 > *&v54.i32[2])
    {
      v212[1].i8[v44 + 5] = 1;
      v56 = *(a2 + 18);
      v57 = vorrq_s8(vcgtq_f32(v35, v55), vcgtq_f32(v55, v34)).u64[0];
      if (vuzp1_s8(vmovn_s32(vceqq_s32(vorrq_s8(vdupq_lane_s32(v57, 0), vdupq_lane_s32(v57, 1)), v49)), *v50.f32).u32[0] != -1 && v56 != 0)
      {
        v59 = 0;
        v60 = vdup_lane_s32(*v54.i8, 0);
        v61 = vdup_lane_s32(*v54.i8, 1);
        LODWORD(v62) = v56 - 1;
        v63 = 1;
        while (1)
        {
          v64 = v24[v62];
          v62 = v59;
          v65 = vdup_lane_s32(*v64.f32, 1);
          v66 = v24[v59];
          v67 = vdup_lane_s32(*v66.f32, 1);
          v68 = vdup_lane_s32(*v64.f32, 0);
          v69 = vdup_lane_s32(*v66.f32, 0);
          if (vuzp1_s8(vdup_lane_s16(vorr_s8(vand_s8(vceq_f32(v60, v69), vceq_f32(v61, v67)), vand_s8(vceq_f32(v60, v68), vceq_f32(v61, v65))), 0), *v50.f32).u32[0] == -1)
          {
            break;
          }

          if (veor_s8(vcgt_f32(v65, v61), vcgt_f32(v67, v61)).u8[0] & 1) != 0 && (v70 = vsub_f32(v67, v65), v71 = vmul_f32(vsub_f32(v61, v65), vsub_f32(v69, v68)), v72 = vmul_n_f32(v70, *v54.i32), v73 = vadd_f32(v71, vmul_f32(vadd_f32(v68, 0x3400000034000000), v70)), v74 = vdup_lane_s32(vcgtz_f32(v70), 0), (vcge_f32(vbsl_s8(v74, v73, v72), vbsl_s8(v74, v72, v73)).u8[0]))
          {
            if ((v63 & 1) == 0)
            {
              goto LABEL_12;
            }

            v63 = 0;
            ++v59;
            if (v56 - 1 == v62)
            {
              break;
            }
          }

          else
          {
            ++v59;
            if (v56 == v62 + 1)
            {
              if (v63)
              {
                goto LABEL_12;
              }

              break;
            }
          }
        }

        ++v45;
        v75 = vmulq_f32(vsubq_f32(v50, v30), *v200.i64[0]);
        v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
        *v75.f32 = vpadd_f32(*v75.f32, *v75.f32);
        v76 = vmlsq_lane_f32(v50, *v200.i64[0], *v75.f32, 0);
        v76.i64[1] = vextq_s8(v76, v76, 8uLL).u32[0];
        v77 = v207;
        v77.i32[3] = v75.i32[1];
        v78 = *a7;
        v79 = v47 + (v78 << 6);
        *v79 = v76;
        *(v79 + 16) = v50;
        *(v79 + 32) = v77;
        *(v79 + 48) = v208;
        v80 = v78 + 1;
        *a7 = v80;
        if ((v80 - v209) >= 0x10)
        {
          v199 = v31;
          v198 = v32;
          v197 = v55;
          physx::Gu::SinglePersistentContactManifold::reduceContacts(v202, v80 - v209);
          v55 = v197;
          v49.i64[0] = -1;
          v49.i64[1] = -1;
          v48.i64[0] = v193.i64[0];
          v34 = v194;
          v35 = v195;
          v30 = v196;
          v32 = v198;
          v31 = v199;
          v33 = v203;
          v25 = v204;
          v26 = v205;
          v27 = v206;
          *a7 = v201;
        }
      }
    }

LABEL_12:
    v31 = vminq_f32(v31, v55);
    v32 = vmaxq_f32(v32, v55);
    ++v44;
  }

  while (v44 != 3);
  v81 = v47;
  v82 = v192;
  if (v45 != 3)
  {
    v83 = vdup_laneq_s32(v33, 2);
    v84 = v190;
    v85 = v189;
    v86 = *v189;
    v87 = vsubq_f32(*v190, *v189);
    v88 = v188;
    v89 = vsubq_f32(*v188, *v189);
    v90 = vmls_f32(vmul_f32(*v87.i8, *&vextq_s8(v89, v89, 4uLL)), *&vextq_s8(v87, v87, 4uLL), *v89.i8);
    *v91.f32 = vext_s8(v90, vmls_f32(vmul_f32(*&vextq_s8(v87, v87, 8uLL), *v89.i8), *v87.i8, *&vextq_s8(v89, v89, 8uLL)), 4uLL);
    v91.i64[1] = v90.u32[0];
    *v89.i8 = vpadd_f32(vmul_f32(*v91.f32, *v91.f32), vmul_f32(v90.u32[0], v90.u32[0]));
    v92 = vpadd_f32(*v89.i8, *v89.i8);
    v93 = vrsqrte_f32(v92);
    v94 = 4;
    do
    {
      v93 = vmul_f32(v93, vrsqrts_f32(vmul_f32(v93, v93), v92));
      --v94;
    }

    while (v94);
    v95 = vbsl_s8(vdup_lane_s32(vceqz_f32(v92), 0), v92, vmul_f32(v92, v93));
    v96 = vrecpe_f32(v95);
    v97 = 4;
    do
    {
      v96 = vmul_f32(v96, vrecps_f32(v95, v96));
      --v97;
    }

    while (v97);
    LODWORD(v98) = *(a2 + 18);
    if (*(a2 + 18))
    {
      v99 = 0;
      v198.i32[0] = 0;
      v100 = vaddq_f32(v31, xmmword_1E3117360);
      v101 = vaddq_f32(v32, xmmword_1E3117370);
      v102 = vmulq_n_f32(v91, v96.f32[0]);
      v102.i32[3] = 0;
      v103 = vmulq_f32(v86, v102);
      v103.i64[0] = vpaddq_f32(v103, v103).u64[0];
      v104 = vpadd_f32(*v103.f32, *v103.f32);
      v194 = vnegq_f32(v102);
      v105.i64[0] = -1;
      v105.i64[1] = -1;
      __asm { FMOV            V11.2S, #1.0 }

      v197 = v100;
      v196 = v101;
      v195 = v102;
      do
      {
        v110 = v24[v99];
        v111 = vorrq_s8(vcgtq_f32(v100, v110), vcgtq_f32(v110, v101)).u64[0];
        if (vuzp1_s8(vmovn_s32(vceqq_s32(vorrq_s8(vdupq_lane_s32(v111, 0), vdupq_lane_s32(v111, 1)), v105)), *v110.f32).u32[0] != -1)
        {
          v112 = 0;
          v113 = vdup_lane_s32(*v110.f32, 0);
          v114 = vdup_lane_s32(*v110.f32, 1);
          v115 = 1;
          LODWORD(v116) = 2;
          while (1)
          {
            v117 = v213[v116];
            v116 = v112;
            v118 = vdup_lane_s32(*&v117, 1);
            v119 = v213[v112];
            v120 = vdup_lane_s32(*&v119, 1);
            v121 = vdup_lane_s32(*&v117, 0);
            v122 = vdup_lane_s32(*&v119, 0);
            if (vuzp1_s8(vdup_lane_s16(vorr_s8(vand_s8(vceq_f32(v113, v122), vceq_f32(v114, v120)), vand_s8(vceq_f32(v113, v121), vceq_f32(v114, v118))), 0), *v110.f32).u32[0] == -1)
            {
              break;
            }

            if (veor_s8(vcgt_f32(v118, v114), vcgt_f32(v120, v114)).u8[0] & 1) != 0 && (v123 = vsub_f32(v120, v118), v124 = vmul_f32(vsub_f32(v114, v118), vsub_f32(v122, v121)), v125 = vmul_n_f32(v123, v110.f32[0]), v126 = vadd_f32(v124, vmul_f32(vadd_f32(v121, 0x3400000034000000), v123)), v127 = vdup_lane_s32(vcgtz_f32(v123), 0), (vcge_f32(vbsl_s8(v127, v126, v125), vbsl_s8(v127, v125, v126)).u8[0]))
            {
              if ((v115 & 1) == 0)
              {
                goto LABEL_48;
              }

              v115 = 0;
              ++v112;
              if (v116 == 2)
              {
                break;
              }
            }

            else
            {
              ++v112;
              if (v116 == 2)
              {
                if (v115)
                {
                  goto LABEL_48;
                }

                break;
              }
            }
          }

          v128 = vmulq_f32(v27, v110);
          v128.i64[0] = vpaddq_f32(v128, v128).u64[0];
          v129 = vmulq_f32(v26, v110);
          v129.i64[0] = vpaddq_f32(v129, v129).u64[0];
          v130 = vmulq_f32(v25, v110);
          v130.i64[0] = vpaddq_f32(v130, v130).u64[0];
          *v131.f32 = vext_s8(vpadd_f32(*v128.f32, *v128.f32), vpadd_f32(*v129.f32, *v129.f32), 4uLL);
          v131.i64[1] = vpadd_f32(*v130.f32, *v130.f32).u32[0];
          v132 = vmulq_f32(v102, v131);
          v132.i64[0] = vpaddq_f32(v132, v132).u64[0];
          v133 = vsub_f32(vpadd_f32(*v132.f32, *v132.f32), v104).f32[0];
          if (v133 <= COERCE_FLOAT(*v82))
          {
            v199 = v131;
            v134 = vmlaq_n_f32(v131, v194, v133);
            v134.i64[1] = vextq_s8(v134, v134, 8uLL).u32[0];
            v212[0] = v134;
            v210 = 0;
            v211 = 0;
            physx::Gu::barycentricCoordinates(v212, v85, v84, v88, &v211, &v210);
            v135 = vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v210), vcgez_f32(v211)), vcge_f32(_D11, vadd_f32(v211, v210))), 0);
            if (vuzp1_s8(v135, v135).u32[0] == -1)
            {
              ++v198.i32[0];
              v136 = v212[0];
              v137 = vmulq_f32(vsubq_f32(v212[0], v199), *v200.i64[0]);
              v137.i64[0] = vpaddq_f32(v137, v137).u64[0];
              v138 = v207;
              v138.i32[3] = vpadd_f32(*&v137, *&v137).i32[1];
              v139 = *a7;
              v140 = (v81 + (v139 << 6));
              *v140 = v199;
              v140[1] = v136;
              v140[2] = v138;
              v140[3].i32[0] = v208;
              v141 = v139 + 1;
              *a7 = v141;
              if ((v141 - v209) >= 0x10)
              {
                physx::Gu::SinglePersistentContactManifold::reduceContacts(v202, v141 - v209);
                *a7 = v201;
              }
            }

            v27 = v206;
            v26 = v205;
            v25 = v204;
            v100 = v197;
            v101 = v196;
            v102 = v195;
            v105.i64[0] = -1;
            v105.i64[1] = -1;
            LODWORD(v98) = *(a2 + 18);
          }
        }

LABEL_48:
        ++v99;
      }

      while (v99 < v98);
    }

    else
    {
      v198.i32[0] = 0;
    }

    v142 = v203;
    if (v198.i32[0] != v98)
    {
      v143 = 0;
      v144 = 2;
      v145.i64[0] = -1;
      v145.i64[1] = -1;
      v146 = v98;
      do
      {
        v147 = v144;
        v144 = v143;
        if (((v212[1].i8[v143 + 5] & 1) != 0 || v212[1].i8[v147 + 5] == 1) && v146)
        {
          v148 = 0;
          v149 = v213[v143];
          v150 = v213[v147];
          v151 = vminq_f32(v149, v150);
          v152 = vmaxq_f32(v149, v150);
          LODWORD(v153) = v98 - 1;
          v200 = v149;
          v199 = v150;
          v198 = v151;
          v197 = v152;
          do
          {
            v154 = v24[v153];
            v153 = v148;
            v155 = v24[v148];
            v156 = vorrq_s8(vcgtq_f32(v151, vmaxq_f32(v155, v154)), vcgtq_f32(vminq_f32(v155, v154), v152)).u64[0];
            if (vuzp1_s8(vmovn_s32(vceqq_s32(vorrq_s8(vdupq_lane_s32(v156, 0), vdupq_lane_s32(v156, 1)), v145)), *v154.f32).u32[0] != -1)
            {
              v157 = vsub_f32(*v155.f32, *v149.f32);
              v158 = vsub_f32(*v154.f32, *v149.f32);
              v159 = vsub_f32(vmul_lane_f32(vdup_lane_s32(v157, 0), v158, 1), vmul_n_f32(vdup_lane_s32(v157, 1), v158.f32[0]));
              v160 = vsub_f32(*v155.f32, *v150.f32);
              v161 = vsub_f32(*v154.f32, *v150.f32);
              v162 = vsub_f32(vmul_lane_f32(vdup_lane_s32(v160, 0), v161, 1), vmul_n_f32(vdup_lane_s32(v160, 1), v161.f32[0]));
              if (vmul_f32(v159, v162).f32[0] < 0.0)
              {
                v163 = vsub_f32(*v149.f32, *v155.f32);
                v164 = vsub_f32(*v150.f32, *v155.f32);
                v165 = vsub_f32(vmul_lane_f32(v163, v164, 1), vmul_lane_f32(v164, v163, 1));
                v166 = vsub_f32(*v149.f32, *v154.f32);
                v167 = vsub_f32(*v150.f32, *v154.f32);
                if (vmul_f32(v165, vsub_f32(vmul_lane_f32(v166, v167, 1), vmul_lane_f32(v167, v166, 1))).f32[0] < 0.0)
                {
                  v168 = vsub_f32(v162, v159);
                  v169 = vrecpe_f32(v168);
                  v170 = 4;
                  do
                  {
                    v169 = vmul_f32(v169, vrecps_f32(v168, v169));
                    --v170;
                  }

                  while (v170);
                  v171 = vmul_f32(v159, v169);
                  v172 = v149;
                  v172.i32[2] = vadd_f32(v83, *&v212[1].u32[2 * v144 + 2]).u32[0];
                  v173 = v150;
                  v173.i32[2] = vadd_f32(v83, *&v212[1].u32[2 * v147 + 2]).u32[0];
                  v174 = vmlsq_lane_f32(v172, vsubq_f32(v173, v172), v171, 0);
                  v175 = vsubq_f32(v174, v142);
                  if (*&v175.i32[2] <= COERCE_FLOAT(*v82))
                  {
                    v174.i64[1] = vextq_s8(v174, v174, 8uLL).u32[0];
                    v176 = v174;
                    v176.i32[2] = v142.i32[2];
                    v177 = vmulq_f32(v27, v174);
                    v177.i64[0] = vpaddq_f32(v177, v177).u64[0];
                    v178 = vmulq_f32(v26, v174);
                    v178.i64[0] = vpaddq_f32(v178, v178).u64[0];
                    *v177.f32 = vext_s8(vpadd_f32(*v177.f32, *v177.f32), vpadd_f32(*v178.f32, *v178.f32), 4uLL);
                    v179 = vmulq_f32(v25, v174);
                    v179.i64[0] = vpaddq_f32(v179, v179).u64[0];
                    v177.i64[1] = vpadd_f32(*v179.f32, *v179.f32).u32[0];
                    v180 = vmulq_f32(v27, v176);
                    v180.i64[0] = vpaddq_f32(v180, v180).u64[0];
                    v181 = vmulq_f32(v26, v176);
                    v181.i64[0] = vpaddq_f32(v181, v181).u64[0];
                    v182 = vmulq_f32(v25, v176);
                    v182.i64[0] = vpaddq_f32(v182, v182).u64[0];
                    *v180.f32 = vext_s8(vpadd_f32(*v180.f32, *v180.f32), vpadd_f32(*v181.f32, *v181.f32), 4uLL);
                    v180.i64[1] = vpadd_f32(*v182.f32, *v182.f32).u32[0];
                    v183 = v207;
                    v183.i32[3] = vdupq_laneq_s32(v175, 2).i32[3];
                    v184 = *a7;
                    v185 = (v81 + (v184 << 6));
                    *v185 = v180;
                    v185[1] = v177;
                    v185[2] = v183;
                    v185[3].i32[0] = v208;
                    v186 = v184 + 1;
                    *a7 = v186;
                    if ((v186 - v209) >= 0x10)
                    {
                      physx::Gu::SinglePersistentContactManifold::reduceContacts(v202, v186 - v209);
                      v152 = v197;
                      v151 = v198;
                      v150 = v199;
                      v149 = v200;
                      v145.i64[0] = -1;
                      v145.i64[1] = -1;
                      v142 = v203;
                      v25 = v204;
                      v26 = v205;
                      v27 = v206;
                      *a7 = v201;
                    }
                  }
                }
              }
            }

            v148 = v153 + 1;
            v98 = *(a2 + 18);
          }

          while (v153 + 1 < v98);
          v146 = *(a2 + 18);
        }

        v143 = v144 + 1;
      }

      while (v144 != 2);
    }
  }
}

uint64_t physx::Gu::PCMConvexVsMeshContactGeneration::generateTriangleFullContactManifold(uint64_t a1, __int32 a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, _DWORD *a8, float32x2_t *a9, float32x4_t *a10)
{
  v82 = vneg_f32(0x80000000800000);
  v81 = 0uLL;
  v18 = physx::testTriangleFaceNormal(a1, a6, a9, &v82, &v80, &v81, &v83);
  result = 0;
  if (v18)
  {
    result = physx::testPolyFaceNormal(a4, a5, a6, a9, &v82, &v79, &v81, &v83, v19, v20, v21, v22, v23);
    if (result)
    {
      result = physx::testPolyEdgeNormal(a1, a3, a4, a5, a6, a9, &v82, &v81, &v83);
      if (result)
      {
        v25 = *(a1 + 48);
        v26 = vsubq_f32(*(a1 + 64), v25);
        v27 = vsubq_f32(*(a1 + 80), v25);
        v28 = vmls_f32(vmul_f32(*v26.i8, *&vextq_s8(v27, v27, 4uLL)), *&vextq_s8(v26, v26, 4uLL), *v27.i8);
        *v29.f32 = vext_s8(v28, vmls_f32(vmul_f32(*&vextq_s8(v26, v26, 8uLL), *v27.i8), *v26.i8, *&vextq_s8(v27, v27, 8uLL)), 4uLL);
        v29.i64[1] = v28.u32[0];
        *v27.i8 = vpadd_f32(vmul_f32(*v29.f32, *v29.f32), vmul_f32(v28.u32[0], v28.u32[0]));
        v30 = vpadd_f32(*v27.i8, *v27.i8);
        v31 = vrsqrte_f32(v30);
        v32 = 4;
        do
        {
          v31 = vmul_f32(v31, vrsqrts_f32(vmul_f32(v31, v31), v30));
          --v32;
        }

        while (v32);
        v33 = vbsl_s8(vdup_lane_s32(vceqz_f32(v30), 0), v30, vmul_f32(v30, v31));
        v34 = vrecpe_f32(v33);
        v35 = 4;
        do
        {
          v34 = vmul_f32(v34, vrecps_f32(v33, v34));
          --v35;
        }

        while (v35);
        v36 = vmulq_n_f32(v29, v34.f32[0]);
        v36.i32[3] = 0;
        *a10 = v36;
        v37 = *(a4 + 24);
        v38 = a6[5];
        v39 = vmulq_f32(v36, *v38);
        v39.i64[0] = vpaddq_f32(v39, v39).u64[0];
        v40 = vmulq_f32(v36, v38[1]);
        v40.i64[0] = vpaddq_f32(v40, v40).u64[0];
        v41 = vmulq_f32(v36, v38[2]);
        v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
        *v42.f32 = vext_s8(vpadd_f32(*v39.f32, *v39.f32), vpadd_f32(*v40.f32, *v40.f32), 4uLL);
        v42.i64[1] = vpadd_f32(*v41.f32, *v41.f32).u32[0];
        v43 = *v37;
        v43.i32[3] = 0;
        v78 = v36;
        v44 = vmulq_f32(v43, v42);
        v44.i64[0] = vpaddq_f32(v44, v44).u64[0];
        v45 = vpadd_f32(*v44.f32, *v44.f32);
        v46 = *(a4 + 16);
        if (v46 < 2)
        {
          v47 = 0;
        }

        else
        {
          v47 = 0;
          v48 = (v37 + 20);
          for (i = 1; i != v46; ++i)
          {
            v50 = *v48;
            v48 = (v48 + 20);
            v51 = v50;
            v51.i32[3] = 0;
            v52 = vmulq_f32(v51, v42);
            v52.i64[0] = vpaddq_f32(v52, v52).u64[0];
            v53 = vpadd_f32(*v52.f32, *v52.f32);
            if (vcgt_f32(v45, v53).u8[0])
            {
              v47 = i;
              v54 = -1;
            }

            else
            {
              v54 = 0;
            }

            v45 = vbsl_s8(vdup_n_s32(v54), v53, v45);
          }
        }

        v55 = *(a4 + 20);
        if (v55)
        {
          v56 = 0;
          v57 = vnegq_f32(v42);
          v57.i32[3] = 0;
          v58 = *(a4 + 48);
          v59 = vmul_f32(v45, v45);
          v60 = -1;
          do
          {
            v61 = (v58 + (2 * v56));
            v62 = *(v37 + 20 * *v61);
            v62.i32[3] = 0;
            v63 = *(v37 + 20 * v61[1]);
            v63.i32[3] = 0;
            v64 = vaddq_f32(v62, v63);
            v65 = vmulq_f32(v64, v64);
            v65.i64[0] = vpaddq_f32(v65, v65).u64[0];
            v66 = vpadd_f32(*v65.f32, *v65.f32);
            v67 = vmulq_f32(v57, v64);
            v67.i64[0] = vpaddq_f32(v67, v67).u64[0];
            v68 = vpadd_f32(*v67.f32, *v67.f32);
            v69 = vmul_f32(v68, v68);
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v69, vmul_f32(v59, v66)), vcgez_f32(v68)), 0), *v57.f32).u32[0] == -1)
            {
              v70 = vrecpe_f32(v66);
              v71 = 4;
              do
              {
                v70 = vmul_f32(v70, vrecps_f32(v66, v70));
                --v71;
              }

              while (v71);
              v59 = vmul_f32(v69, v70);
              v60 = v56;
            }

            ++v56;
          }

          while (v56 != v55);
          if (v60 != -1)
          {
            v72 = (v58 + (2 * v60));
            v73 = *v72;
            v74 = *(v37 + 20 * *v72);
            v47 = v72[1];
            v74.i32[3] = 0;
            v75 = *(v37 + 20 * v47);
            v75.i32[3] = 0;
            v76 = vmulq_f32(v57, v74);
            v76.i64[0] = vpaddq_f32(v76, v76).u64[0];
            v77 = vmulq_f32(v57, v75);
            v77.i64[0] = vpaddq_f32(v77, v77).u64[0];
            if (vcgt_f32(vpadd_f32(*v76.f32, *v76.f32), vpadd_f32(*v77.f32, *v77.f32)).u8[0])
            {
              v47 = v73;
            }
          }
        }

        physx::generatedTriangleContacts(a1, a2, a4, (v37 + 20 * v47), a6, a7, a8, a9, &v78);
        return 1;
      }
    }
  }

  return result;
}

uint64_t physx::Gu::PCMConvexVsMeshContactGeneration::generatePolyDataContactManifold(uint64_t a1, float32x4_t *a2, unsigned int a3, __int32 a4, uint64_t a5, uint64_t a6, _DWORD *a7, void *a8, float32x4_t *a9)
{
  v10 = *(*(a1 + 4544) + 24) + 20 * a3;
  v11 = *(*(a1 + 4552) + 48);
  v12.i64[0] = *v10;
  v12.i64[1] = *(v10 + 8);
  v13 = vmulq_f32(*v11, v12);
  v13.i64[0] = vpaddq_f32(v13, v13).u64[0];
  v14 = vmulq_f32(v12, v11[1]);
  v14.i64[0] = vpaddq_f32(v14, v14).u64[0];
  v15 = vmulq_f32(v12, v11[2]);
  v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
  v16 = vpadd_f32(*v15.f32, *v15.f32).u32[0];
  *v17.f32 = vext_s8(vpadd_f32(*v13.f32, *v13.f32), vpadd_f32(*v14.f32, *v14.f32), 4uLL);
  v17.i64[1] = v16;
  *v13.f32 = vpadd_f32(vmul_f32(*v17.f32, *v17.f32), vmul_f32(*&v17.u32[2], *&v17.u32[2]));
  v18 = vpadd_f32(*v13.f32, *v13.f32);
  v19 = vrsqrte_f32(v18);
  v20 = 4;
  do
  {
    v19 = vmul_f32(v19, vrsqrts_f32(vmul_f32(v19, v19), v18));
    --v20;
  }

  while (v20);
  v21 = vbsl_s8(vdup_lane_s32(vceqz_f32(v18), 0), v18, vmul_f32(v18, v19));
  v22 = vrecpe_f32(v21);
  v23 = 4;
  do
  {
    v22 = vmul_f32(v22, vrecps_f32(v21, v22));
    --v23;
  }

  while (v23);
  v24 = vmulq_n_f32(v17, v22.f32[0]);
  v24.i32[3] = 0;
  v27 = v24;
  v25 = vnegq_f32(v24);
  v25.i32[3] = 0;
  *a9 = v25;
  physx::generatedPolyContacts(*(a1 + 4544), v10, a2, a4, *(a1 + 4552), a6, a7, a8, &v27);
  return 1;
}

float32x2_t physx::Gu::findRotationMatrixFromZAxis(int32x4_t *a1)
{
  v1 = *a1;
  v2 = vdup_laneq_s32(*a1, 2);
  if (vabs_f32(v2).f32[0] < 0.9999)
  {
    v27 = vdup_lane_s32(*v1.f32, 1);
    __asm { FMOV            V0.2S, #1.0 }

    v29 = vadd_f32(v2, _D0);
    v30 = vrecpe_f32(v29);
    v31 = 4;
    do
    {
      v30 = vmul_f32(v30, vrecps_f32(v29, v30));
      --v31;
    }

    while (v31);
    v32 = vmul_f32(v30, vneg_f32(v27));
    return vext_s8(vmls_f32(v2, v32, v27), vmul_n_f32(v32, v1.f32[0]), 4uLL);
  }

  else
  {
    v3 = vsubq_f32(xmmword_1E3047680, v1);
    v4 = vpadd_f32(0x3F80000000000000, 1065353216);
    v5 = vpadd_f32(v4, v4);
    v6 = vmulq_f32(v3, v3);
    v7 = vextq_s8(v6, v6, 8uLL).u64[0];
    v8 = vmulq_f32(v3, xmmword_1E3117430);
    v9 = vextq_s8(v8, v8, 8uLL).u64[0];
    v10 = vrecpe_f32(v5);
    v11 = 4;
    do
    {
      v10 = vmul_f32(v10, vrecps_f32(v5, v10));
      --v11;
    }

    while (v11);
    v12 = vpadd_f32(*v6.i8, v7);
    v13 = vpadd_f32(v12, v12);
    v14 = vrecpe_f32(v13);
    v15 = 4;
    do
    {
      v14 = vmul_f32(v14, vrecps_f32(v13, v14));
      --v15;
    }

    while (v15);
    v16 = vpadd_f32(*v8.i8, v9);
    v17 = vmul_f32(v10, 0xC0000000C0000000);
    v18 = vmul_f32(v14, 0xC0000000C0000000);
    v19 = vmulq_n_f32(xmmword_1E3117430, vmulq_n_f32(v3, vmul_f32(v17, vmul_f32(vpadd_f32(v16, v16), v18)).f32[0]).f32[0]);
    v19.i32[3] = 0;
    v20 = vmlaq_n_f32(v19, v3, vmulq_n_f32(v3, v18.f32[0]).f32[0]);
    v20.i64[1] = vextq_s8(v20, v20, 8uLL).u32[0];
    result = vmlaq_n_f32(v20, xmmword_1E3117430, vmulq_n_f32(xmmword_1E3117430, v17.f32[0]).f32[0]).u64[0];
    __asm { FMOV            V16.2S, #1.0 }

    result.i32[0] = vadd_f32(result, _D16).u32[0];
  }

  return result;
}

BOOL physx::Gu::PersistentContactManifold::replaceManifoldPoint(uint64_t a1, float32x4_t *a2, float32x4_t *a3, _OWORD *a4, float32x2_t *a5)
{
  v5 = *(a1 + 64);
  if (*(a1 + 64))
  {
    v6 = 0;
    v7 = vmul_f32(*a5, *a5);
    v8 = *(a1 + 80);
    v9 = *a2;
    v10 = 1;
    v11 = 1;
    while (1)
    {
      v12 = vsubq_f32(*(v8 + v6 + 16), *a3);
      v13 = vmulq_f32(v12, v12);
      v13.i64[0] = vpaddq_f32(v13, v13).u64[0];
      v14 = vsubq_f32(*(v8 + v6), v9);
      v15 = vmulq_f32(v14, v14);
      v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
      if (vcgt_f32(v7, vmin_f32(vpadd_f32(*v13.f32, *v13.f32), vpadd_f32(*v15.f32, *v15.f32))).u8[0])
      {
        break;
      }

      v11 = v10 < v5;
      v6 += 48;
      ++v10;
      if (48 * v5 == v6)
      {
        return 0;
      }
    }

    *(v8 + v6) = v9;
    *(*(a1 + 80) + v6 + 16) = *a3;
    *(*(a1 + 80) + v6 + 32) = *a4;
  }

  else
  {
    return 0;
  }

  return v11;
}

uint64_t physx::Gu::PersistentContactManifold::reduceContactsForPCM(uint64_t a1, _OWORD *a2, __int128 *a3, int32x4_t *a4)
{
  v4 = 0;
  v138 = *MEMORY[0x1E69E9840];
  v133 = 0;
  v132 = 0;
  v5 = *(a1 + 80);
  v6 = v5[9];
  v136[6] = v5[8];
  v136[7] = v6;
  v7 = v5[11];
  v136[8] = v5[10];
  v136[9] = v7;
  v8 = v5[5];
  v136[2] = v5[4];
  v136[3] = v8;
  v9 = v5[7];
  v136[4] = v5[6];
  v136[5] = v9;
  v10 = v5[1];
  v134 = *v5;
  v135 = v10;
  v11 = v5[3];
  v136[0] = v5[2];
  v136[1] = v11;
  v12 = v136;
  v13 = *a3;
  v136[10] = *a2;
  v136[11] = v13;
  v137 = *a4;
  v14 = 4;
  v15 = vdup_laneq_s32(v137, 3);
  do
  {
    v16 = vdup_lane_s32(v12[1], 1);
    v17 = vcgt_f32(v15, v16).u8[0];
    if (v17)
    {
      v18 = -1;
    }

    else
    {
      v18 = 0;
    }

    v15 = vbsl_s8(vdup_n_s32(v18), v16, v15);
    if (v17)
    {
      v14 = v4;
    }

    ++v4;
    v12 += 6;
  }

  while (v4 != 4);
  v19 = 0;
  v20 = 1;
  *(&v132 + v14) = 1;
  v21 = &v134 + 3 * v14;
  v22 = v21[1];
  *v5 = *v21;
  v5[1] = v22;
  v5[2] = v21[2];
  v23 = *(a1 + 80);
  v24 = v23[1];
  v25 = vsubq_f32(v135, v24);
  v26 = vmulq_f32(v25, v25);
  v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
  v27 = vpadd_f32(*v26.f32, *v26.f32);
  v28 = 64;
  do
  {
    if ((*(&v132 + v20) & 1) == 0)
    {
      v29 = vsubq_f32(*(&v134 + v28), v24);
      v30 = vmulq_f32(v29, v29);
      v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
      v31 = vpadd_f32(*v30.f32, *v30.f32);
      v32 = vcgt_f32(v31, v27).u8[0];
      v33 = (v32 & 1) != 0 ? -1 : 0;
      v27 = vbsl_s8(vdup_n_s32(v33), v31, v27);
      if (v32)
      {
        v19 = v20;
      }
    }

    ++v20;
    v28 += 48;
  }

  while (v20 != 5);
  v34 = 0;
  *(&v132 + v19) = 1;
  v35 = &v134 + 3 * v19;
  v36 = v35[1];
  v37 = v35[2];
  v23[3] = *v35;
  v23[4] = v36;
  v23[5] = v37;
  v38 = 0x80000000800000;
  __asm { FMOV            V1.2S, #1.0 }

  do
  {
    if ((*(&v132 + v34) & 1) == 0)
    {
      v44 = *(a1 + 80);
      v45 = v44[1];
      v46 = vsubq_f32(v44[4], v45);
      v47 = vmulq_f32(v46, v46);
      v47.i64[0] = vpaddq_f32(v47, v47).u64[0];
      v48 = vpadd_f32(*v47.f32, *v47.f32);
      v49 = vrecpe_f32(v48);
      v50 = 4;
      do
      {
        v49 = vmul_f32(v49, vrecps_f32(v48, v49));
        --v50;
      }

      while (v50);
      v51 = vsubq_f32(*(&v134 + 3 * v34 + 1), v45);
      v52 = vmulq_f32(v51, v46);
      v52.i64[0] = vpaddq_f32(v52, v52).u64[0];
      v53 = vmlsq_lane_f32(v51, v46, vbic_s8(vmax_f32(vmin_f32(vmul_f32(v49, vpadd_f32(*v52.f32, *v52.f32)), _D1), 0), vceqz_f32(v48)), 0);
      v54 = vextq_s8(v53, v53, 8uLL).u32[0];
      v55 = vpadd_f32(vmul_f32(*v53.i8, *v53.i8), vmul_f32(v54, v54));
      v56 = vpadd_f32(v55, v55);
      v57 = vcgt_f32(v56, v38).u8[0];
      v58 = (v57 & 1) != 0 ? -1 : 0;
      v38 = vbsl_s8(vdup_n_s32(v58), v56, v38);
      if (v57)
      {
        v19 = v34;
      }
    }

    ++v34;
  }

  while (v34 != 5);
  v59 = 0;
  *(&v132 + v19) = 1;
  v60 = &v134.f32[12 * v19];
  v61 = *(a1 + 80);
  v62 = v60[2];
  v61[7] = v60[1];
  v61[8] = v62;
  v61[6] = *v60;
  v63 = 0x80000000800000;
  do
  {
    if (*(&v132 + v59))
    {
      goto LABEL_57;
    }

    v64 = *(a1 + 80);
    v65 = v64[4];
    v66 = v64[1];
    v67 = vsubq_f32(v65, v66);
    v68 = v64[7];
    v69 = vsubq_f32(v68, v66);
    v70 = *(&v134 + 3 * v59 + 1);
    v71 = vsubq_f32(v70, v66);
    v72 = vmulq_f32(v67, v71);
    v72.i64[0] = vpaddq_f32(v72, v72).u64[0];
    v73 = vpadd_f32(*v72.f32, *v72.f32);
    v74 = vmulq_f32(v69, v71);
    v74.i64[0] = vpaddq_f32(v74, v74).u64[0];
    v75 = vpadd_f32(*v74.f32, *v74.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vcltz_f32(v75), vcltz_f32(v73)), 0), v63).u32[0] == -1)
    {
      v96 = vmulq_f32(v71, v71);
      goto LABEL_52;
    }

    v76 = vsubq_f32(v70, v65);
    v77 = vmulq_f32(v67, v76);
    v77.i64[0] = vpaddq_f32(v77, v77).u64[0];
    v78 = vpadd_f32(*v77.f32, *v77.f32);
    v79 = vmulq_f32(v69, v76);
    v79.i64[0] = vpaddq_f32(v79, v79).u64[0];
    v80 = vpadd_f32(*v79.f32, *v79.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vcge_f32(v78, v80), vcgez_f32(v78)), 0), v63).u32[0] == -1)
    {
      v96 = vmulq_f32(v76, v76);
      goto LABEL_52;
    }

    v81 = vsubq_f32(v70, v68);
    v82 = vmulq_f32(v67, v81);
    v82.i64[0] = vpaddq_f32(v82, v82).u64[0];
    v83 = vpadd_f32(*v82.f32, *v82.f32);
    v84 = vmulq_f32(v69, v81);
    v84.i64[0] = vpaddq_f32(v84, v84).u64[0];
    v85 = vpadd_f32(*v84.f32, *v84.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgez_f32(v85), vcge_f32(v85, v83)), 0), v63).u32[0] == -1)
    {
      v96 = vmulq_f32(v81, v81);
      goto LABEL_52;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcltz_f32(v78), vcgez_f32(v73)), vcgt_f32(vmul_f32(v75, v78), vmul_f32(v73, v80))), 0), v63).u32[0] == -1)
    {
      v97 = vsub_f32(v73, v78);
      v98 = vrecpe_f32(v97);
      v99 = 4;
      do
      {
        v98 = vmul_f32(v98, vrecps_f32(v97, v98));
        --v99;
      }

      while (v99);
      v95 = vmlaq_n_f32(v66, v67, vmul_f32(v73, v98).f32[0]);
    }

    else
    {
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v83, v85), vcge_f32(v80, v78)), vcgt_f32(vmul_f32(v80, v83), vmul_f32(v78, v85))), 0), v63).u32[0] == -1)
      {
        v100 = vsubq_f32(v68, v65);
        v101 = vsub_f32(v80, v78);
        v102 = vadd_f32(v101, vsub_f32(v83, v85));
        v103 = vrecpe_f32(v102);
        v104 = 4;
        do
        {
          v103 = vmul_f32(v103, vrecps_f32(v102, v103));
          --v104;
        }

        while (v104);
        v105 = vmlaq_n_f32(v65, v100, vmul_f32(v101, v103).f32[0]);
        v105.i64[1] = vextq_s8(v105, v105, 8uLL).u32[0];
        v106 = vsubq_f32(v70, v105);
        goto LABEL_51;
      }

      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcltz_f32(v85), vcgez_f32(v75)), vcgt_f32(vmul_f32(v73, v85), vmul_f32(v75, v83))), 0), v63).u32[0] != -1)
      {
        v86 = vmls_f32(vmul_f32(*v67.f32, *&vextq_s8(v69, v69, 4uLL)), *&vextq_s8(v67, v67, 4uLL), *v69.f32);
        *v87.f32 = vext_s8(v86, vmls_f32(vmul_f32(*&vextq_s8(v67, v67, 8uLL), *v69.f32), *v67.f32, *&vextq_s8(v69, v69, 8uLL)), 4uLL);
        v87.i64[1] = v86.u32[0];
        v88 = vpadd_f32(vmul_f32(*v87.f32, *v87.f32), vmul_f32(v86.u32[0], v86.u32[0]));
        v89 = vpadd_f32(v88, v88);
        v90 = vmulq_f32(vsubq_f32(v66, v70), v87);
        v91 = vrecpe_f32(v89);
        v92 = 4;
        do
        {
          v91 = vmul_f32(v91, vrecps_f32(v89, v91));
          --v92;
        }

        while (v92);
        v93 = vpaddq_f32(v90, v90).u64[0];
        v94 = vmulq_n_f32(v87, *vand_s8(vmul_f32(v91, vpadd_f32(v93, v93)), vcgtz_f32(v89)).i32);
        v94.i32[3] = 0;
        v95 = vaddq_f32(v70, v94);
        goto LABEL_50;
      }

      v107 = vsub_f32(v75, v85);
      v108 = vrecpe_f32(v107);
      v109 = 4;
      do
      {
        v108 = vmul_f32(v108, vrecps_f32(v107, v108));
        --v109;
      }

      while (v109);
      v95 = vmlaq_n_f32(v66, v69, vmul_f32(v75, v108).f32[0]);
    }

    v95.i64[1] = vextq_s8(v95, v95, 8uLL).u32[0];
LABEL_50:
    v106 = vsubq_f32(v70, v95);
LABEL_51:
    v96 = vmulq_f32(v106, v106);
LABEL_52:
    v110 = vpaddq_f32(v96, v96).u64[0];
    v111 = vpadd_f32(v110, v110);
    v112 = vcgt_f32(v111, v63).u8[0];
    if (v112)
    {
      v113 = -1;
    }

    else
    {
      v113 = 0;
    }

    v63 = vbsl_s8(vdup_n_s32(v113), v111, v63);
    if (v112)
    {
      v19 = v59;
    }

LABEL_57:
    ++v59;
  }

  while (v59 != 5);
  if (*(&v132 + v19))
  {
    *(a1 + 64) = 3;
  }

  else
  {
    v114 = 0;
    *(&v132 + v19) = 1;
    v115 = &v134.f32[12 * v19];
    v116 = *(a1 + 80);
    v117 = v115[2];
    v116[10] = v115[1];
    v116[11] = v117;
    v116[9] = *v115;
    while ((*(&v132 + v114) & 1) != 0)
    {
      if (++v114 == 5)
      {
        v114 = 0;
        break;
      }
    }

    v118 = 0;
    v119 = 0;
    v120 = *(a1 + 80);
    v121 = &v134 + 3 * v114;
    v122 = vneg_f32(0x80000000800000);
    v123 = v120;
    do
    {
      v124 = *v123;
      v123 += 3;
      v125 = vsubq_f32(v124, *v121);
      v126 = vmulq_f32(v125, v125);
      v126.i64[0] = vpaddq_f32(v126, v126).u64[0];
      v127 = vpadd_f32(*v126.f32, *v126.f32);
      if (vcgt_f32(v122, v127).u8[0])
      {
        v119 = v118;
        v128 = -1;
      }

      else
      {
        v128 = 0;
      }

      v122 = vbsl_s8(vdup_n_s32(v128), v127, v122);
      ++v118;
    }

    while (v118 != 4);
    if (v120[3 * v119 + 2].f32[3] > v121[2].f32[3])
    {
      v129 = &v120[3 * v119];
      v130 = v121[1];
      *v129 = *v121;
      v129[1] = v130;
      v129[2] = v121[2];
    }
  }

  return 0;
}

uint64_t physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(uint64_t result, uint64_t a2, _OWORD *a3, float32x4_t *a4, uint64_t *a5)
{
  v5 = *(result + 64);
  if (*(result + 64))
  {
    v6 = 0;
    v7 = 0;
    v8 = *a5;
    v9 = 1;
    v10.i64[0] = 0x4000000040000000;
    v10.i64[1] = 0x4000000040000000;
    do
    {
      v11 = (*(result + 80) + v6);
      v12 = v11[2].f32[3];
      if (*&v8 >= v12)
      {
        v13 = v11[1];
        v14 = *a4;
        v14.i32[3] = 0;
        v15 = vdupq_laneq_s32(*a4, 3).u64[0];
        v16 = vmulq_n_f32(v13, vmla_f32(0xBF000000BF000000, v15, v15).f32[0]);
        v16.i32[3] = 0;
        v17 = vextq_s8(v14, v14, 8uLL).u64[0];
        v18 = vextq_s8(v13, v13, 8uLL).u64[0];
        v19 = vmls_f32(vmul_f32(*a4->f32, vext_s8(*v13.f32, v18, 4uLL)), vext_s8(*a4->f32, v17, 4uLL), *v13.f32);
        *v20.f32 = vext_s8(v19, vmls_f32(vmul_f32(v17, *v13.f32), *a4->f32, v18), 4uLL);
        v20.i64[1] = v19.u32[0];
        v21 = vmlaq_laneq_f32(v16, v20, *a4, 3);
        v21.i64[1] = vextq_s8(v21, v21, 8uLL).u32[0];
        v22 = vmulq_f32(v14, v13);
        v22.i64[0] = vpaddq_f32(v22, v22).u64[0];
        v23 = vmlaq_n_f32(v21, v14, vpadd_f32(*v22.f32, *v22.f32).f32[0]);
        v23.i64[1] = vextq_s8(v23, v23, 8uLL).u32[0];
        v24 = vmlaq_f32(a4[1], v10, v23);
        v24.i64[1] = vextq_s8(v24, v24, 8uLL).u32[0];
        v25 = a2 + (v7++ << 6);
        *v25 = *a3;
        *(v25 + 16) = v24;
        *(v25 + 12) = v12;
        *(v25 + 52) = -1;
        v5 = *(result + 64);
        v8 = *a5;
      }

      if (v7 > 0x3F)
      {
        break;
      }

      v6 += 48;
    }

    while (v9++ < v5);
  }

  else
  {
    LODWORD(v7) = 0;
  }

  *(a2 + 4096) = v7;
  return result;
}

uint64_t physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(uint64_t result, uint64_t a2, _OWORD *a3, float32x4_t *a4)
{
  LODWORD(v4) = *(result + 64);
  if (*(result + 64))
  {
    v5 = 0;
    v4 = 0;
    v6 = a2;
    do
    {
      v7 = (*(result + 80) + v5);
      v8 = v7[1];
      v9 = vmulq_n_f32(*a4, v8.f32[0]);
      v9.i32[3] = 0;
      v10 = vmulq_lane_f32(a4[1], *v8.f32, 1);
      v10.i32[3] = 0;
      v11 = vmulq_laneq_f32(a4[2], v8, 2);
      v11.i32[3] = 0;
      v12 = v4;
      v13 = vaddq_f32(a4[3], vaddq_f32(vaddq_f32(v9, v10), v11));
      ++v4;
      v10.i32[0] = v7[2].i32[3];
      *v6 = *a3;
      *(v6 + 16) = v13;
      *(v6 + 12) = v10.i32[0];
      *(v6 + 52) = -1;
      if (v12 > 0x3E)
      {
        break;
      }

      v6 += 64;
      v5 += 48;
    }

    while (v4 < *(result + 64));
  }

  *(a2 + 4096) = v4;
  return result;
}

uint64_t physx::Gu::PersistentContactManifold::addManifoldContactsToContactBuffer(uint64_t result, uint64_t a2, _OWORD *a3, float32x4_t *a4, float32x4_t *a5, float32x2_t *a6, float32x2_t *a7)
{
  v7 = *(result + 64);
  if (*(result + 64))
  {
    v8 = 0;
    v9 = 0;
    v10 = *a6;
    v11 = *a7;
    v12 = 1;
    v13.i64[0] = 0x4000000040000000;
    v13.i64[1] = 0x4000000040000000;
    do
    {
      v14 = *(result + 80) + v8;
      v15 = vsub_f32(vdup_lane_s32(*(v14 + 40), 1), v10);
      if ((vmvn_s8(vcge_f32(v11, v15)).u8[0] & 1) == 0)
      {
        v16 = *a5;
        v16.i32[3] = 0;
        v17 = vdupq_laneq_s32(*a5, 3).u64[0];
        v18 = vmulq_n_f32(*v14, vmla_f32(0xBF000000BF000000, v17, v17).f32[0]);
        v18.i32[3] = 0;
        v19 = vextq_s8(v16, v16, 8uLL).u64[0];
        v20 = vextq_s8(*v14, *v14, 8uLL).u64[0];
        v21 = vmls_f32(vmul_f32(*a5->f32, vext_s8(*v14, v20, 4uLL)), vext_s8(*a5->f32, v19, 4uLL), *v14);
        *v22.f32 = vext_s8(v21, vmls_f32(vmul_f32(v19, *v14), *a5->f32, v20), 4uLL);
        v22.i64[1] = v21.u32[0];
        v23 = vmlaq_laneq_f32(v18, v22, *a5, 3);
        v23.i64[1] = vextq_s8(v23, v23, 8uLL).u32[0];
        v24 = vmulq_f32(v16, *v14);
        v24.i64[0] = vpaddq_f32(v24, v24).u64[0];
        v25 = vmlaq_n_f32(v23, v16, vpadd_f32(*v24.f32, *v24.f32).f32[0]);
        v25.i64[1] = vextq_s8(v25, v25, 8uLL).u32[0];
        v26 = vmlaq_f32(a5[1], v13, v25);
        v26.i64[1] = vextq_s8(v26, v26, 8uLL).u32[0];
        v27 = vmlsq_lane_f32(v26, *a4, v10, 0);
        v27.i64[1] = vextq_s8(v27, v27, 8uLL).u32[0];
        v28 = a2 + (v9++ << 6);
        *v28 = *a3;
        *(v28 + 16) = v27;
        *(v28 + 12) = v15.i32[0];
        *(v28 + 52) = -1;
        v7 = *(result + 64);
        v10 = *a6;
        v11 = *a7;
      }

      if (v9 > 0x3F)
      {
        break;
      }

      v8 += 48;
    }

    while (v12++ < v7);
  }

  else
  {
    LODWORD(v9) = 0;
  }

  *(a2 + 4096) = v9;
  return result;
}

uint64_t physx::Gu::PersistentContactManifold::addBatchManifoldContacts(uint64_t result, int32x4_t *a2, unsigned int a3, double a4)
{
  v4 = result;
  if (a3 > 4)
  {
    result = physx::Gu::PersistentContactManifold::reduceBatchContacts(result, a2, a3, a4);
    LOBYTE(a3) = 4;
  }

  else if (a3)
  {
    v5 = 0;
    do
    {
      *(*(result + 80) + v5 * 16) = a2[v5];
      *(*(result + 80) + v5 * 16 + 16) = a2[v5 + 1];
      *(*(result + 80) + v5 * 16 + 32) = a2[v5 + 2];
      v5 += 3;
    }

    while (3 * a3 != v5);
  }

  *(v4 + 64) = a3;
  return result;
}

uint64_t physx::Gu::PersistentContactManifold::reduceBatchContacts(uint64_t result, int32x4_t *a2, unsigned int a3, double a4)
{
  v87 = *MEMORY[0x1E69E9840];
  if (a3 >= 0x40)
  {
    v4 = 64;
  }

  else
  {
    v4 = a3;
  }

  v5 = vdup_laneq_s32(a2[2], 3);
  v86[0] = 0;
  if (a3 < 2)
  {
    v7 = 0;
    v6 = 0;
    v9 = 0x80000000800000;
  }

  else
  {
    LODWORD(v6) = 0;
    v7 = 0;
    v8 = &a2[5];
    v9 = 0x80000000800000;
    v10 = 1;
    do
    {
      v86[v10] = v10;
      v11 = vdup_lane_s32(v8[1], 1);
      v9 = vmax_f32(v9, v11);
      v12 = vcgt_f32(v5, v11).u8[0];
      if (v12)
      {
        v7 = v10;
        v6 = v10;
      }

      else
      {
        v6 = v6;
      }

      if (v12)
      {
        v13 = -1;
      }

      else
      {
        v13 = 0;
      }

      v5 = vbsl_s8(vdup_n_s32(v13), v11, v5);
      ++v10;
      v8 += 6;
    }

    while (v4 != v10);
  }

  v85[0] = v7;
  v14 = (v4 - 1);
  v86[v6] = v86[v14];
  v15 = v86[0];
  v16 = v7;
  v17 = a2[3 * v7 + 1];
  if (v14 < 2)
  {
    v18 = 0;
  }

  else
  {
    LODWORD(v18) = 0;
    v19 = vsubq_f32(a2[3 * v86[0] + 1], v17);
    v20 = vmulq_f32(v19, v19);
    v20.i64[0] = vpaddq_f32(v20, v20).u64[0];
    v21 = vpadd_f32(*v20.f32, *v20.f32);
    for (i = 1; i != v14; ++i)
    {
      v23 = vsubq_f32(a2[3 * v86[i] + 1], v17);
      v24 = vmulq_f32(v23, v23);
      v24.i64[0] = vpaddq_f32(v24, v24).u64[0];
      v25 = vpadd_f32(*v24.f32, *v24.f32);
      v26 = vcgt_f32(v25, v21).u8[0];
      if (v26)
      {
        v15 = v86[i];
        v18 = i;
      }

      else
      {
        v18 = v18;
      }

      if (v26)
      {
        v27 = -1;
      }

      else
      {
        v27 = 0;
      }

      v21 = vbsl_s8(vdup_n_s32(v27), v25, v21);
    }
  }

  v28 = (v4 - 2);
  v86[v18] = v86[v28];
  v29 = vsubq_f32(a2[3 * v15 + 1], v17);
  v30 = a2[3 * v16 + 2];
  v31 = v30;
  v31.i32[3] = 0;
  v32 = vextq_s8(v31, v31, 8uLL).u64[0];
  v33 = vmls_f32(vmul_f32(*v29.i8, vext_s8(*v30.i8, v32, 4uLL)), *&vextq_s8(v29, v29, 4uLL), *v30.i8);
  *v34.f32 = vext_s8(v33, vmls_f32(vmul_f32(*&vextq_s8(v29, v29, 8uLL), *v30.i8), *v29.i8, v32), 4uLL);
  v34.i64[1] = v33.u32[0];
  v85[1] = v15;
  *v30.i8 = vpadd_f32(vmul_f32(*v34.f32, *v34.f32), vmul_f32(v33.u32[0], v33.u32[0]));
  v35 = vpadd_f32(*v30.i8, *v30.i8);
  v36 = vrsqrte_f32(v35);
  v37 = 4;
  do
  {
    v36 = vmul_f32(v36, vrsqrts_f32(vmul_f32(v36, v36), v35));
    --v37;
  }

  while (v37);
  v38 = vbsl_s8(vdup_lane_s32(vceqz_f32(v35), 0), v35, vmul_f32(v35, v36));
  v39 = vrecpe_f32(v38);
  v40 = 4;
  do
  {
    v39 = vmul_f32(v39, vrecps_f32(v38, v39));
    --v40;
  }

  while (v40);
  v41 = vmulq_n_f32(v34, v39.f32[0]);
  v41.i32[3] = 0;
  v42 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(v35), 0)), v41, v31);
  if (v4 == 2)
  {
    v56 = 127;
    v48 = -1;
    v49 = -1;
    v47 = -1;
    v45 = -1;
  }

  else
  {
    v43 = 0;
    v44 = 0x80000000800000;
    v45 = -1;
    v46 = vneg_f32(0x80000000800000);
    v47 = -1;
    v48 = -1;
    v49 = -1;
    do
    {
      v50 = vmulq_f32(v42, vsubq_f32(a2[3 * v86[v43] + 1], v17));
      v50.i64[0] = vpaddq_f32(v50, v50).u64[0];
      v51 = vpadd_f32(*v50.f32, *v50.f32);
      if (vcgt_f32(v51, v44).u8[0])
      {
        v49 = v86[v43];
        v48 = v43;
        v52 = -1;
      }

      else
      {
        v52 = 0;
      }

      v53 = vdup_n_s32(v52);
      v54 = vcgt_f32(v46, v51).u8[0];
      if (v54)
      {
        v55 = -1;
      }

      else
      {
        v55 = 0;
      }

      v44 = vbsl_s8(v53, v51, v44);
      v46 = vbsl_s8(vdup_n_s32(v55), v51, v46);
      if (v54)
      {
        v47 = v86[v43];
        v45 = v43;
      }

      ++v43;
    }

    while (v28 != v43);
    v56 = vmul_f32(v44, v46).u32[0];
  }

  v85[2] = v49;
  v57 = (v4 - 3);
  v86[v48] = v86[v57];
  if (v57 == v45)
  {
    v45 = v48;
  }

  if (v4 != 3 && *&v56 > 0.0)
  {
    v58 = 0;
    v59 = 0x80000000800000;
    do
    {
      v60 = vmulq_f32(v42, vsubq_f32(a2[3 * v86[v58] + 1], v17));
      v60.i64[0] = vpaddq_f32(v60, v60).u64[0];
      v61 = vpadd_f32(*v60.f32, *v60.f32);
      v62 = vcgt_f32(v61, v59).u8[0];
      if (v62)
      {
        v63 = -1;
      }

      else
      {
        v63 = 0;
      }

      v59 = vbsl_s8(vdup_n_s32(v63), v61, v59);
      if (v62)
      {
        v47 = v86[v58];
        v45 = v58;
      }

      ++v58;
    }

    while (v57 != v58);
  }

  v85[3] = v47;
  v64 = (v4 - 4);
  v86[v45] = v86[v64];
  *&a4 = *&a4 * 0.02;
  v65 = vdup_lane_s32(*&a4, 0);
  if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v65, v5), vcgt_f32(v9, v65)), 0), v65).u32[0] == -1)
  {
    for (j = 0; j != 4; ++j)
    {
      v74 = v85[j];
      if (v64)
      {
        v75 = vdup_lane_s32(a2[3 * v85[j] + 2].u64[1], 1);
        if (vcgt_f32(v75, v65).u8[0])
        {
          v76 = 0;
          v77 = -1;
          do
          {
            v78 = vdup_lane_s32(a2[3 * v86[v76] + 2].u64[1], 1);
            if (vcgt_f32(v75, v78).u8[0])
            {
              if (vcgt_f32(v65, v78).u8[0])
              {
                v77 = v76;
                v79 = -1;
              }

              else
              {
                v79 = 0;
              }

              v75 = vbsl_s8(vdup_n_s32(v79), v78, v75);
            }

            ++v76;
          }

          while (v64 != v76);
          if (v77 < v64)
          {
            v80 = v86[v77];
            v85[j] = v80;
            v86[v77] = v74;
            v74 = v80;
          }
        }
      }

      v81 = &a2[3 * v74];
      v82 = (*(result + 80) + 48 * j);
      v83 = *v81;
      v84 = v81[2];
      v82[1] = v81[1];
      v82[2] = v84;
      *v82 = v83;
    }
  }

  else
  {
    v66 = 0;
    v67 = v85;
    do
    {
      v68 = *v67++;
      v69 = &a2[3 * v68];
      v70 = (*(result + 80) + v66);
      v72 = v69[1];
      v71 = v69[2];
      *v70 = *v69;
      v70[1] = v72;
      v70[2] = v71;
      v66 += 48;
    }

    while (v66 != 192);
  }

  return result;
}

void physx::Gu::PersistentContactManifold::addBatchManifoldContactsCluster(uint64_t a1, float32x4_t *a2, unsigned int a3)
{
  if (a3 > 4)
  {
    physx::Gu::PersistentContactManifold::reduceBatchContactsCluster(a1, a2, a3);
    LOBYTE(a3) = 4;
  }

  else if (a3)
  {
    v4 = 0;
    do
    {
      *(*(a1 + 80) + v4 * 16) = a2[v4];
      *(*(a1 + 80) + v4 * 16 + 16) = a2[v4 + 1];
      *(*(a1 + 80) + v4 * 16 + 32) = a2[v4 + 2];
      v4 += 3;
    }

    while (3 * a3 != v4);
  }

  *(a1 + 64) = a3;
}

__n128 physx::Gu::PersistentContactManifold::reduceBatchContactsCluster(uint64_t a1, float32x4_t *a2, unsigned int a3)
{
  v114 = *MEMORY[0x1E69E9840];
  if (a3 >= 0x40)
  {
    v6 = 64;
  }

  else
  {
    v6 = a3;
  }

  bzero(v113, v6);
  if (a3)
  {
    v7 = 0;
    v8 = 0;
    v9 = a2 + 1;
    v10 = 0x80000000800000;
    do
    {
      v11 = *v9;
      v9 += 3;
      v12 = vmulq_f32(v11, v11);
      v12.i64[0] = vpaddq_f32(v12, v12).u64[0];
      v13 = vpadd_f32(*v12.f32, *v12.f32);
      if (vcgt_f32(v13, v10).u8[0])
      {
        v8 = v7;
        v14 = -1;
      }

      else
      {
        v14 = 0;
      }

      v10 = vbsl_s8(vdup_n_s32(v14), v13, v10);
      ++v7;
    }

    while (v6 != v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &a2[3 * v8];
  v17 = *(a1 + 80);
  v18 = *v16;
  v19 = v16[2];
  v17[1] = v16[1];
  v17[2] = v19;
  *v17 = v18;
  v113[v8] = 1;
  v109 = v8;
  v20 = *(a1 + 80);
  if (a3 < 2)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    v22 = v20[1];
    v23 = vsubq_f32(a2[1], v22);
    v24 = vmulq_f32(v23, v23);
    v24.i64[0] = vpaddq_f32(v24, v24).u64[0];
    v25 = vpadd_f32(*v24.f32, *v24.f32);
    v26 = a2 + 4;
    v27 = 1;
    do
    {
      v28 = *v26;
      v26 += 3;
      v29 = vsubq_f32(v28, v22);
      v30 = vmulq_f32(v29, v29);
      v30.i64[0] = vpaddq_f32(v30, v30).u64[0];
      v31 = vpadd_f32(*v30.f32, *v30.f32);
      if (vcgt_f32(v31, v25).u8[0])
      {
        v21 = v27;
        v32 = -1;
      }

      else
      {
        v32 = 0;
      }

      v25 = vbsl_s8(vdup_n_s32(v32), v31, v25);
      ++v27;
    }

    while (v6 != v27);
  }

  v33 = v21;
  v34 = &a2[3 * v21];
  v35 = *v34;
  v36 = v34[2];
  v20[4] = v34[1];
  v20[5] = v36;
  v113[v21] = 1;
  v20[3] = v35;
  v37 = *(a1 + 80);
  v38 = *(v37 + 16);
  v39 = *(v37 + 32);
  v40 = vsubq_f32(*(v37 + 64), v38);
  v41 = v39;
  v41.i32[3] = 0;
  v42 = vextq_s8(v41, v41, 8uLL).u64[0];
  v43 = vmls_f32(vmul_f32(*v40.i8, vext_s8(*v39.i8, v42, 4uLL)), *&vextq_s8(v40, v40, 4uLL), *v39.i8);
  *v44.f32 = vext_s8(v43, vmls_f32(vmul_f32(*&vextq_s8(v40, v40, 8uLL), *v39.i8), *v40.i8, v42), 4uLL);
  v44.i64[1] = v43.u32[0];
  v110 = v21;
  *v40.i8 = vpadd_f32(vmul_f32(*v44.f32, *v44.f32), vmul_f32(v43.u32[0], v43.u32[0]));
  v45 = vpadd_f32(*v40.i8, *v40.i8);
  v46 = vrsqrte_f32(v45);
  v47 = 4;
  do
  {
    v46 = vmul_f32(v46, vrsqrts_f32(vmul_f32(v46, v46), v45));
    --v47;
  }

  while (v47);
  v48 = vbsl_s8(vdup_lane_s32(vceqz_f32(v45), 0), v45, vmul_f32(v45, v46));
  v49 = vrecpe_f32(v48);
  v50 = 4;
  do
  {
    v49 = vmul_f32(v49, vrecps_f32(v48, v49));
    --v50;
  }

  while (v50);
  v51 = vmulq_n_f32(v44, v49.f32[0]);
  v51.i32[3] = 0;
  v52 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(v45), 0)), v51, v41);
  if (a3)
  {
    v53 = 0;
    v54 = 0x80000000800000;
    v55 = vneg_f32(0x80000000800000);
    v56 = a2 + 1;
    v57 = -1;
    v58 = -1;
    do
    {
      if ((v113[v53] & 1) == 0)
      {
        v59 = vmulq_f32(v52, vsubq_f32(*v56, v38));
        v59.i64[0] = vpaddq_f32(v59, v59).u64[0];
        v60 = vpadd_f32(*v59.f32, *v59.f32);
        if (vcgt_f32(v60, v54).u8[0])
        {
          v58 = v53;
          v61 = -1;
        }

        else
        {
          v61 = 0;
        }

        v54 = vbsl_s8(vdup_n_s32(v61), v60, v54);
        v62 = vcgt_f32(v55, v60).u8[0];
        v63 = (v62 & 1) != 0 ? -1 : 0;
        v55 = vbsl_s8(vdup_n_s32(v63), v60, v55);
        if (v62)
        {
          v57 = v53;
        }
      }

      ++v53;
      v56 += 3;
    }

    while (v6 != v53);
    v64 = vmul_f32(v55, v54).u32[0];
  }

  else
  {
    v64 = 127;
    v58 = -1;
    v57 = -1;
  }

  v65 = &a2[3 * v58];
  v66 = *v65;
  v67 = v65[2];
  *(v37 + 112) = v65[1];
  *(v37 + 128) = v67;
  *(v37 + 96) = v66;
  v113[v58] = 1;
  v111 = v58;
  if (a3 && *&v64 > 0.0)
  {
    v68 = 0;
    v69 = a2 + 1;
    v70 = 0x80000000800000;
    do
    {
      if ((v113[v68] & 1) == 0)
      {
        v71 = vmulq_f32(v52, vsubq_f32(*v69, *(*(a1 + 80) + 16)));
        v71.i64[0] = vpaddq_f32(v71, v71).u64[0];
        v72 = vpadd_f32(*v71.f32, *v71.f32);
        if (vcgt_f32(v72, v70).u8[0])
        {
          v57 = v68;
          v73 = -1;
        }

        else
        {
          v73 = 0;
        }

        v70 = vbsl_s8(vdup_n_s32(v73), v72, v70);
      }

      ++v68;
      v69 += 3;
    }

    while (v6 != v68);
  }

  v74 = &a2[3 * v57];
  v75 = *(a1 + 80);
  v76 = *v74;
  v77 = v74[2];
  v75[10] = v74[1];
  v75[11] = v77;
  v75[9] = v76;
  v113[v57] = 1;
  v112 = v57;
  if (a3)
  {
    v78 = 0;
    v79 = vneg_f32(0x80000000800000);
    do
    {
      if ((v113[v78] & 1) == 0)
      {
        v80 = 0;
        v81 = 0;
        v82 = &a2[3 * v78];
        v84 = v82[1];
        v83 = v82[2];
        v85 = (*(a1 + 80) + 16);
        v86 = v79;
        do
        {
          v87 = *v85;
          v85 += 3;
          v88 = vsubq_f32(v84, v87);
          v89 = vmulq_f32(v88, v88);
          v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
          v90 = vpadd_f32(*v89.f32, *v89.f32);
          if (vcgt_f32(v86, v90).u8[0])
          {
            v81 = v80;
            v91 = -1;
          }

          else
          {
            v91 = 0;
          }

          v86 = vbsl_s8(vdup_n_s32(v91), v90, v86);
          ++v80;
        }

        while (v80 != 4);
        if (a2[3 * *(&v109 + v81) + 2].f32[3] > v83.f32[3])
        {
          *(&v109 + v81) = v78;
        }
      }

      ++v78;
    }

    while (v78 != v6);
    v15 = v109;
    v33 = v110;
    v58 = v111;
    v92 = v112;
  }

  else
  {
    v92 = v57;
  }

  v93 = &a2[3 * v15];
  v94 = *(a1 + 80);
  v95 = *v93;
  v96 = v93[2];
  v94[1] = v93[1];
  v94[2] = v96;
  *v94 = v95;
  v97 = &a2[3 * v33];
  v98 = *(a1 + 80);
  v99 = *v97;
  v100 = v97[2];
  v98[4] = v97[1];
  v98[5] = v100;
  v98[3] = v99;
  v101 = &a2[3 * v58];
  v102 = *(a1 + 80);
  v103 = *v101;
  v104 = v101[2];
  v102[7] = v101[1];
  v102[8] = v104;
  v102[6] = v103;
  v105 = &a2[3 * v92];
  v106 = *(a1 + 80);
  result = *v105;
  v108 = v105[2];
  *(v106 + 160) = v105[1];
  *(v106 + 176) = v108;
  *(v106 + 144) = result;
  return result;
}

__n128 physx::Gu::PersistentContactManifold::reduceBatchContacts2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a3 >= 0x40)
  {
    v6 = 64;
  }

  else
  {
    v6 = a3;
  }

  bzero(v45, v6);
  if (a3 < 2)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = vdup_lane_s32(*(a2 + 40), 1);
    v9 = (a2 + 80);
    v10 = 1;
    do
    {
      v11 = vdup_lane_s32(v9[1], 1);
      if (vcgt_f32(v8, v11).u8[0])
      {
        LODWORD(v7) = v10;
        v12 = -1;
      }

      else
      {
        v12 = 0;
      }

      v8 = vbsl_s8(vdup_n_s32(v12), v11, v8);
      ++v10;
      v9 += 6;
    }

    while (v6 != v10);
    v7 = v7;
  }

  v13 = (a2 + 48 * v7);
  v14 = *(a1 + 80);
  v15 = *v13;
  v16 = v13[2];
  v14[1] = v13[1];
  v14[2] = v16;
  *v14 = v15;
  v45[v7] = 1;
  v17 = *(a1 + 80);
  if (a3 < 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = *(v17 + 16);
    v20 = vsubq_f32(*(a2 + 16), v19);
    v21 = vmulq_f32(v20, v20);
    v21.i64[0] = vpaddq_f32(v21, v21).u64[0];
    v22 = vpadd_f32(*v21.f32, *v21.f32);
    v23 = (a2 + 64);
    v24 = 1;
    do
    {
      v25 = *v23;
      v23 += 3;
      v26 = vsubq_f32(v25, v19);
      v27 = vmulq_f32(v26, v26);
      v27.i64[0] = vpaddq_f32(v27, v27).u64[0];
      v28 = vpadd_f32(*v27.f32, *v27.f32);
      if (vcgt_f32(v28, v22).u8[0])
      {
        v18 = v24;
        v29 = -1;
      }

      else
      {
        v29 = 0;
      }

      v22 = vbsl_s8(vdup_n_s32(v29), v28, v22);
      ++v24;
    }

    while (v6 != v24);
  }

  v30 = a2 + 48 * v18;
  result = *v30;
  v32 = *(v30 + 32);
  *(v17 + 64) = *(v30 + 16);
  *(v17 + 80) = v32;
  *(v17 + 48) = result;
  v45[v18] = 1;
  if (a3)
  {
    v33 = 0;
    result.n128_u32[0] = *(v30 + 44);
    v34 = (a2 + 44);
    v35 = v18;
    do
    {
      if ((v45[v33] & 1) == 0)
      {
        v36 = *(a1 + 80);
        v37 = *(v34 - 7);
        v38 = vsubq_f32(v36[1], v37);
        v39 = vsubq_f32(v36[4], v37);
        v40 = vmulq_f32(v38, v38);
        v40.i64[0] = vpaddq_f32(v40, v40).u64[0];
        v41 = vmulq_f32(v39, v39);
        v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
        if ((vcgt_f32(vpadd_f32(*v40.f32, *v40.f32), vpadd_f32(*v41.f32, *v41.f32)).u8[0] & 1) != 0 && result.n128_f32[0] > *v34)
        {
          v35 = v33;
        }
      }

      ++v33;
      v34 += 12;
    }

    while (v6 != v33);
    if (v35 != v18)
    {
      v42 = a2 + 48 * v35;
      v43 = *(a1 + 80);
      result = *v42;
      v44 = *(v42 + 32);
      *(v43 + 64) = *(v42 + 16);
      *(v43 + 80) = v44;
      *(v43 + 48) = result;
    }
  }

  return result;
}

uint64_t physx::Gu::PersistentContactManifold::addManifoldPoint(uint64_t a1, float32x4_t *a2, __int128 *a3, int32x4_t *a4, float32x2_t *a5)
{
  if (!physx::Gu::PersistentContactManifold::replaceManifoldPoint(a1, a2, a3, a4, a5))
  {
    if (*(a1 + 64) <= 3uLL)
    {
      *(*(a1 + 80) + 48 * *(a1 + 64)) = *a2;
      *(*(a1 + 80) + 48 * *(a1 + 64) + 16) = *a3;
      v9 = *a4;
      v10 = *(a1 + 80);
      v11 = *(a1 + 64);
      *(a1 + 64) = v11 + 1;
      *(v10 + 48 * v11 + 32) = v9;
      return 1;
    }

    physx::Gu::PersistentContactManifold::reduceContactsForPCM(a1, a2, a3, a4);
  }

  return 0;
}

__n128 physx::Gu::PersistentContactManifold::addManifoldPoint2(uint64_t a1, float32x4_t *a2, float32x4_t *a3, __n128 *a4, float32x2_t *a5)
{
  if (!physx::Gu::PersistentContactManifold::replaceManifoldPoint(a1, a2, a3, a4, a5))
  {
    v10 = *(a1 + 64);
    if (v10 >= 2)
    {
      if (v10 == 2)
      {
        v13 = *(a1 + 80);
        v14 = vsubq_f32(v13[1], *a3);
        v15 = vsubq_f32(v13[4], *a3);
        v16 = vmulq_f32(v14, v14);
        v16.i64[0] = vpaddq_f32(v16, v16).u64[0];
        v17 = vmulq_f32(v15, v15);
        v17.i64[0] = vpaddq_f32(v17, v17).u64[0];
        v18 = vcgt_f32(vpadd_f32(*v16.f32, *v16.f32), vpadd_f32(*v17.f32, *v17.f32)).u8[0];
        v19 = 16;
        if (v18)
        {
          v19 = 64;
        }

        v20 = 32;
        if (v18)
        {
          v20 = 80;
        }

        v21 = 3;
        if ((v18 & 1) == 0)
        {
          v21 = 0;
        }

        v13[v21] = *a2;
        *(*(a1 + 80) + v19) = *a3;
        result = *a4;
        *(*(a1 + 80) + v20) = *a4;
      }
    }

    else
    {
      *(*(a1 + 80) + 48 * *(a1 + 64)) = *a2;
      *(*(a1 + 80) + 48 * *(a1 + 64) + 16) = *a3;
      result = *a4;
      v11 = *(a1 + 80);
      v12 = *(a1 + 64);
      *(a1 + 64) = v12 + 1;
      *(v11 + 48 * v12 + 32) = result;
    }
  }

  return result;
}

void physx::Gu::PersistentContactManifold::addBatchManifoldContacts2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 > 2)
  {
    physx::Gu::PersistentContactManifold::reduceBatchContacts2(a1, a2, a3);
    LOBYTE(a3) = 2;
  }

  else if (a3)
  {
    v4 = 0;
    do
    {
      *(*(a1 + 80) + v4) = *(a2 + v4);
      *(*(a1 + 80) + v4 + 16) = *(a2 + v4 + 16);
      *(*(a1 + 80) + v4 + 32) = *(a2 + v4 + 32);
      v4 += 48;
    }

    while (48 * a3 != v4);
  }

  *(a1 + 64) = a3;
}

void physx::Gu::SinglePersistentContactManifold::reduceBatchContactsConvex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v114[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v111.i8[-((v7 + 15) & 0x1FFFFFFF0)];
  bzero(v8, v7);
  v9 = -1;
  v10 = 0x80000000800000;
  v11 = a4;
  do
  {
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    if (v12 < v13)
    {
      v14 = (a2 + 16 + (v12 << 6));
      do
      {
        v15 = *v14;
        v14 += 4;
        v16 = vmulq_f32(v15, v15);
        v16.i64[0] = vpaddq_f32(v16, v16).u64[0];
        v17 = vpadd_f32(*v16.f32, *v16.f32);
        if (vcgt_f32(v17, v10).u8[0])
        {
          v9 = v12;
          v18 = -1;
        }

        else
        {
          v18 = 0;
        }

        v10 = vbsl_s8(vdup_n_s32(v18), v17, v10);
        ++v12;
      }

      while (v13 != v12);
    }

    v11 = *(v11 + 16);
  }

  while (v11);
  v8[v9] = 1;
  v19 = a2 + (v9 << 6);
  v20 = *(v19 + 48);
  v22 = *(v19 + 16);
  v21 = *(v19 + 32);
  v23 = v22;
  *a1 = *v19;
  *(a1 + 16) = v22;
  *(a1 + 32) = v21;
  *(a1 + 48) = v20;
  v24 = *(v19 + 32);
  v25 = *(a4 + 48);
  v26 = vsubq_f32(*(a2 + (v25 << 6) + 16), v22);
  v27 = vmulq_f32(v26, v26);
  v27.i64[0] = vpaddq_f32(v27, v27).u64[0];
  v28 = vpadd_f32(*v27.f32, *v27.f32);
  v29 = a4;
  do
  {
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    if (v30 < v31)
    {
      v32 = (a2 + 16 + (v30 << 6));
      do
      {
        v33 = *v32;
        v32 += 4;
        v34 = vsubq_f32(v33, v23);
        v35 = vmulq_f32(v34, v34);
        v35.i64[0] = vpaddq_f32(v35, v35).u64[0];
        v36 = vpadd_f32(*v35.f32, *v35.f32);
        if (vcgt_f32(v36, v28).u8[0])
        {
          LODWORD(v25) = v30;
          v37 = -1;
        }

        else
        {
          v37 = 0;
        }

        v28 = vbsl_s8(vdup_n_s32(v37), v36, v28);
        ++v30;
      }

      while (v31 != v30);
    }

    v29 = *(v29 + 16);
  }

  while (v29);
  v8[v25] = 1;
  v38 = a2 + (v25 << 6);
  v39 = *(v38 + 48);
  v41 = *(v38 + 16);
  v40 = *(v38 + 32);
  *(a1 + 64) = *v38;
  *(a1 + 80) = v41;
  *(a1 + 96) = v40;
  *(a1 + 112) = v39;
  v42 = vsubq_f32(v41, v23);
  v43 = *(a1 + 32);
  v44 = v43;
  v44.i32[3] = 0;
  v45 = vextq_s8(v44, v44, 8uLL).u64[0];
  v46 = vmls_f32(vmul_f32(*v42.i8, vext_s8(*v43.i8, v45, 4uLL)), *&vextq_s8(v42, v42, 4uLL), *v43.i8);
  *v47.f32 = vext_s8(v46, vmls_f32(vmul_f32(*&vextq_s8(v42, v42, 8uLL), *v43.i8), *v42.i8, v45), 4uLL);
  v47.i64[1] = v46.u32[0];
  v48 = *(v38 + 32);
  v49 = vpadd_f32(vmul_f32(*v47.f32, *v47.f32), vmul_f32(v46.u32[0], v46.u32[0]));
  v50 = vpadd_f32(v49, v49);
  v51 = vrsqrte_f32(v50);
  v52 = 4;
  do
  {
    v51 = vmul_f32(v51, vrsqrts_f32(vmul_f32(v51, v51), v50));
    --v52;
  }

  while (v52);
  v53 = vdup_lane_s16(vcgtz_f32(v50), 0);
  v54 = vbsl_s8(vdup_lane_s32(vceqz_f32(v50), 0), v50, vmul_f32(v50, v51));
  v55 = vrecpe_f32(v54);
  v56 = 4;
  do
  {
    v55 = vmul_f32(v55, vrecps_f32(v54, v55));
    --v56;
  }

  while (v56);
  v57 = vdup_laneq_s32(v48, 3);
  v58 = vmulq_n_f32(v47, v55.f32[0]);
  v58.i32[3] = 0;
  v59 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v53), 0x1FuLL)), v58, v44);
  v60 = 0x80000000800000;
  v61 = vneg_f32(0x80000000800000);
  v62 = -1;
  v63 = -1;
  v64 = a4;
  do
  {
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    if (v65 < v66)
    {
      v67 = (a2 + 16 + (v65 << 6));
      do
      {
        if ((v8[v65] & 1) == 0)
        {
          v68 = vmulq_f32(v59, vsubq_f32(*v67, v23));
          v68.i64[0] = vpaddq_f32(v68, v68).u64[0];
          v69 = vpadd_f32(*v68.f32, *v68.f32);
          if (vcgt_f32(v69, v60).u8[0])
          {
            v63 = v65;
            v70 = -1;
          }

          else
          {
            v70 = 0;
          }

          v60 = vbsl_s8(vdup_n_s32(v70), v69, v60);
          v71 = vcgt_f32(v61, v69).u8[0];
          v72 = (v71 & 1) != 0 ? -1 : 0;
          v61 = vbsl_s8(vdup_n_s32(v72), v69, v61);
          if (v71)
          {
            v62 = v65;
          }
        }

        ++v65;
        v67 += 4;
      }

      while (v66 != v65);
    }

    v64 = *(v64 + 16);
  }

  while (v64);
  v73 = vmin_f32(vdup_laneq_s32(v24, 3), v57);
  v8[v63] = 1;
  v74 = (a2 + (v63 << 6));
  v76 = v74[1];
  v75 = v74[2];
  v77 = *v74;
  *(a1 + 176) = *(v74 + 12);
  *(a1 + 144) = v76;
  *(a1 + 160) = v75;
  *(a1 + 128) = v77;
  v78 = vdup_lane_s32(*(v74 + 40), 1);
  if (vmul_f32(v60, v61).f32[0] > 0.0)
  {
    v79 = 0x80000000800000;
    v80 = a4;
    do
    {
      v81 = *(v80 + 48);
      v82 = *(v80 + 52);
      if (v81 < v82)
      {
        v83 = (a2 + 16 + (v81 << 6));
        do
        {
          if ((v8[v81] & 1) == 0)
          {
            v84 = vmulq_f32(v59, vsubq_f32(*v83, v23));
            v84.i64[0] = vpaddq_f32(v84, v84).u64[0];
            v85 = vpadd_f32(*v84.f32, *v84.f32);
            v86 = vcgt_f32(v85, v79).u8[0];
            if (v86)
            {
              v87 = -1;
            }

            else
            {
              v87 = 0;
            }

            v79 = vbsl_s8(vdup_n_s32(v87), v85, v79);
            if (v86)
            {
              v62 = v81;
            }
          }

          ++v81;
          v83 += 4;
        }

        while (v82 != v81);
      }

      v80 = *(v80 + 16);
    }

    while (v80);
  }

  v88 = vmin_f32(v73, v78);
  v8[v62] = 1;
  v89 = (a2 + (v62 << 6));
  v91 = v89[1];
  v90 = v89[2];
  v92 = *v89;
  *(a1 + 240) = *(v89 + 12);
  *(a1 + 208) = v91;
  *(a1 + 224) = v90;
  *(a1 + 192) = v92;
  v111 = v89[2];
  v112 = 0;
  memset_pattern16(&__b, &unk_1E3113FF0, 0x10uLL);
  do
  {
    v93 = *(a4 + 48);
    v94 = *(a4 + 52);
    if (v93 < v94)
    {
      v95 = (a2 + 32 + (v93 << 6));
      do
      {
        if ((v8[v93] & 1) == 0)
        {
          v96 = *v95;
          LODWORD(v97) = HIDWORD(*v95);
          if (*&__b > v97)
          {
            v114[0] = __b;
            LODWORD(v112) = HIDWORD(v112);
            v98 = (&v112 + 4);
            p_b = &__b;
LABEL_55:
            *p_b = vdup_laneq_s32(v96, 3);
            *v98 = v93;
            goto LABEL_56;
          }

          if (*v114 > v97)
          {
            v98 = &v112;
            p_b = v114;
            goto LABEL_55;
          }
        }

LABEL_56:
        ++v93;
        v95 += 4;
      }

      while (v94 != v93);
    }

    a4 = *(a4 + 16);
  }

  while (a4);
  v100 = vmin_f32(v88, vdup_laneq_s32(v111, 3));
  v101 = &__b;
  v102 = &v112 + 1;
  v103 = 1;
  v104 = 4;
  do
  {
    v105 = v103;
    v106 = (a2 + (*v102 << 6));
    v107 = a1 + (v104 << 6);
    v109 = v106[1];
    v108 = v106[2];
    v110 = *v106;
    *(v107 + 48) = *(v106 + 12);
    *(v107 + 16) = v109;
    *(v107 + 32) = v108;
    *v107 = v110;
    v100 = vmin_f32(v100, *v101);
    v102 = &v112;
    v101 = v114;
    v104 = 5;
    v103 = 0;
  }

  while ((v105 & 1) != 0);
}

float32x2_t physx::Gu::SinglePersistentContactManifold::reduceBatchContactsCapsule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v8 = v55 - ((v7 + 15) & 0x1FFFFFFF0);
  bzero(v8, v7);
  v9 = vneg_f32(0x80000000800000);
  v10 = -1;
  v11 = a4;
  do
  {
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    if (v12 < v13)
    {
      v14 = (a2 + 32 + (v12 << 6));
      do
      {
        v15 = vdup_lane_s32(v14[1], 1);
        v16 = vcgt_f32(v9, v15).u8[0];
        if (v16)
        {
          v17 = -1;
        }

        else
        {
          v17 = 0;
        }

        v9 = vbsl_s8(vdup_n_s32(v17), v15, v9);
        if (v16)
        {
          v10 = v12;
        }

        ++v12;
        v14 += 8;
      }

      while (v13 != v12);
    }

    v11 = *(v11 + 16);
  }

  while (v11);
  v8[v10] = 1;
  v18 = (a2 + (v10 << 6));
  v19 = *v18;
  v20 = *(v18 + 12);
  v21 = v18[2];
  *(a1 + 16) = v18[1];
  *(a1 + 32) = v21;
  *(a1 + 48) = v20;
  *a1 = v19;
  v22 = v18[2];
  v23 = *(a4 + 48);
  v24 = *(a1 + 16);
  v25 = vsubq_f32(*(a2 + (v23 << 6) + 16), v24);
  v26 = vmulq_f32(v25, v25);
  v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
  v27 = vpadd_f32(*v26.f32, *v26.f32);
  v28 = a4;
  do
  {
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    if (v29 < v30)
    {
      v31 = (a2 + 16 + (v29 << 6));
      do
      {
        v32 = *v31;
        v31 += 4;
        v33 = vsubq_f32(v32, v24);
        v34 = vmulq_f32(v33, v33);
        v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
        v35 = vpadd_f32(*v34.f32, *v34.f32);
        v36 = vcgt_f32(v35, v27).u8[0];
        if (v36)
        {
          v37 = -1;
        }

        else
        {
          v37 = 0;
        }

        v27 = vbsl_s8(vdup_n_s32(v37), v35, v27);
        if (v36)
        {
          LODWORD(v23) = v29;
        }

        ++v29;
      }

      while (v30 != v29);
    }

    v28 = *(v28 + 16);
  }

  while (v28);
  v8[v23] = 1;
  v38 = (a2 + (v23 << 6));
  v40 = v38[1];
  v39 = v38[2];
  v41 = *v38;
  *(a1 + 112) = *(v38 + 12);
  *(a1 + 80) = v40;
  *(a1 + 96) = v39;
  *(a1 + 64) = v41;
  v42 = v38[2];
  v43 = vneg_f32(0x80000000800000);
  do
  {
    v44 = *(a4 + 48);
    v45 = *(a4 + 52);
    if (v44 < v45)
    {
      v46 = (a2 + 32 + (v44 << 6));
      do
      {
        if ((v8[v44] & 1) == 0)
        {
          v47 = vdup_lane_s32(v46[1], 1);
          v48 = vcgt_f32(v43, v47).u8[0];
          if (v48)
          {
            v49 = -1;
          }

          else
          {
            v49 = 0;
          }

          v43 = vbsl_s8(vdup_n_s32(v49), v47, v43);
          if (v48)
          {
            LODWORD(v23) = v44;
          }
        }

        ++v44;
        v46 += 8;
      }

      while (v45 != v44);
    }

    a4 = *(a4 + 16);
  }

  while (a4);
  v50 = (a2 + (v23 << 6));
  v51 = *v50;
  v52 = v50[1];
  v53 = v50[2];
  *(a1 + 176) = *(v50 + 12);
  *(a1 + 144) = v52;
  *(a1 + 160) = v53;
  *(a1 + 128) = v51;
  return vmin_f32(vmin_f32(vmin_f32(vdup_laneq_s32(v22, 3), vneg_f32(0x80000000800000)), vdup_laneq_s32(v42, 3)), vdup_lane_s32(*(v50 + 40), 1));
}

uint64_t physx::Gu::SinglePersistentContactManifold::reduceContacts(uint64_t a1, unsigned int a2)
{
  v107 = *MEMORY[0x1E69E9840];
  v4 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v5 = v88 - ((v4 + 15) & 0x1FFFFFFF0);
  bzero(v5, v4);
  v6 = *(a1 + 32);
  *v5 = 0;
  v7 = a2 - 2;
  if (a2 < 2)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    LODWORD(v8) = 0;
    LOBYTE(v9) = 0;
    v10 = vdup_laneq_s32(v6, 3);
    v11 = (a1 + 96);
    v12 = 1;
    do
    {
      v5[v12] = v12;
      v13 = vdup_lane_s32(v11[1], 1);
      v14 = vcgt_f32(v10, v13).u8[0];
      if (v14)
      {
        v15 = -1;
      }

      else
      {
        v15 = 0;
      }

      v10 = vbsl_s8(vdup_n_s32(v15), v13, v10);
      if (v14)
      {
        LOBYTE(v9) = v12;
        v8 = v12;
      }

      else
      {
        v8 = v8;
      }

      ++v12;
      v11 += 8;
    }

    while (v4 != v12);
    v9 = v9;
  }

  v16 = a2 - 1;
  v5[v8] = v5[v16];
  v17 = a1 + (v9 << 6);
  v18 = *(v17 + 16);
  v88[0] = *v17;
  v88[1] = v18;
  v89 = *(v17 + 32);
  v90[0] = *(v17 + 48);
  v19 = *v5;
  if (v16 < 2)
  {
    LODWORD(v20) = 0;
  }

  else
  {
    LODWORD(v20) = 0;
    v21 = vsubq_f32(*(a1 + (v19 << 6) + 16), v18);
    v22 = vmulq_f32(v21, v21);
    v22.i64[0] = vpaddq_f32(v22, v22).u64[0];
    v23 = vpadd_f32(*v22.f32, *v22.f32);
    v24 = *(v17 + 16);
    for (i = 1; i != v16; ++i)
    {
      v26 = vsubq_f32(*(a1 + (v5[i] << 6) + 16), v24);
      v27 = vmulq_f32(v26, v26);
      v27.i64[0] = vpaddq_f32(v27, v27).u64[0];
      v28 = vpadd_f32(*v27.f32, *v27.f32);
      v29 = vcgt_f32(v28, v23).u8[0];
      if (v29)
      {
        v30 = -1;
      }

      else
      {
        v30 = 0;
      }

      v23 = vbsl_s8(vdup_n_s32(v30), v28, v23);
      if (v29)
      {
        LOBYTE(v19) = v5[i];
        LODWORD(v20) = i;
      }
    }
  }

  v31 = v20;
  v5[v20] = v5[v7];
  v32 = (a1 + (v19 << 6));
  v33 = v32[1];
  v91 = *v32;
  v92 = v33;
  v93 = v32[2];
  v34 = vsubq_f32(v33, v18);
  v35 = v89;
  v35.i32[3] = 0;
  v36 = vextq_s8(v35, v35, 8uLL).u64[0];
  v37 = vmls_f32(vmul_f32(*v34.i8, vext_s8(*v89.i8, v36, 4uLL)), *&vextq_s8(v34, v34, 4uLL), *v89.i8);
  *v38.f32 = vext_s8(v37, vmls_f32(vmul_f32(*&vextq_s8(v34, v34, 8uLL), *v89.i8), *v34.i8, v36), 4uLL);
  v38.i64[1] = v37.u32[0];
  v94 = *(v32 + 12);
  *v34.i8 = vpadd_f32(vmul_f32(*v38.f32, *v38.f32), vmul_f32(v37.u32[0], v37.u32[0]));
  v39 = vpadd_f32(*v34.i8, *v34.i8);
  v40 = vrsqrte_f32(v39);
  v41 = 4;
  do
  {
    v40 = vmul_f32(v40, vrsqrts_f32(vmul_f32(v40, v40), v39));
    --v41;
  }

  while (v41);
  v42 = vbsl_s8(vdup_lane_s32(vceqz_f32(v39), 0), v39, vmul_f32(v39, v40));
  v43 = vrecpe_f32(v42);
  v44 = 4;
  do
  {
    v43 = vmul_f32(v43, vrecps_f32(v42, v43));
    --v44;
  }

  while (v44);
  v45 = vmulq_n_f32(v38, v43.f32[0]);
  v45.i32[3] = 0;
  v46 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgtz_f32(v39), 0)), v45, v35);
  if (a2 == 2)
  {
    v61 = 127;
    v51 = -1;
    v60 = 255;
    v50 = -1;
  }

  else
  {
    v47 = 0;
    v48 = 0x80000000800000;
    v49 = vneg_f32(0x80000000800000);
    v50 = -1;
    v51 = -1;
    v52 = -1;
    do
    {
      v53 = vmulq_f32(v46, vsubq_f32(*(a1 + (v5[v47] << 6) + 16), v18));
      v53.i64[0] = vpaddq_f32(v53, v53).u64[0];
      v54 = vpadd_f32(*v53.f32, *v53.f32);
      v55 = vcgt_f32(v54, v48).u8[0];
      if (v55)
      {
        v52 = v5[v47];
        v20 = v47;
      }

      else
      {
        v20 = v20;
      }

      if (v55)
      {
        v56 = -1;
      }

      else
      {
        v56 = 0;
      }

      v57 = vdup_n_s32(v56);
      v58 = vcgt_f32(v49, v54).u8[0];
      if (v58)
      {
        v59 = -1;
      }

      else
      {
        v59 = 0;
      }

      v48 = vbsl_s8(v57, v54, v48);
      v49 = vbsl_s8(vdup_n_s32(v59), v54, v49);
      if (v58)
      {
        v51 = v5[v47];
        v50 = v47;
      }

      ++v47;
    }

    while (v7 != v47);
    v60 = v52;
    v61 = vmul_f32(v48, v49).u32[0];
    v31 = v20;
  }

  v62 = (a1 + (v60 << 6));
  v63 = v62[1];
  v95 = *v62;
  v96 = v63;
  v97 = v62[2];
  v98 = *(v62 + 12);
  v64 = a2 - 3;
  v5[v31] = v5[v64];
  if (v64 == v50)
  {
    v65 = v20;
  }

  else
  {
    v65 = v50;
  }

  if (a2 != 3 && *&v61 > 0.0)
  {
    v66 = 0;
    v67 = 0x80000000800000;
    do
    {
      v68 = vmulq_f32(v46, vsubq_f32(*(a1 + (v5[v66] << 6) + 16), v18));
      v68.i64[0] = vpaddq_f32(v68, v68).u64[0];
      v69 = vpadd_f32(*v68.f32, *v68.f32);
      v70 = vcgt_f32(v69, v67).u8[0];
      if (v70)
      {
        v71 = -1;
      }

      else
      {
        v71 = 0;
      }

      v67 = vbsl_s8(vdup_n_s32(v71), v69, v67);
      if (v70)
      {
        v51 = v5[v66];
        v65 = v66;
      }

      ++v66;
    }

    while (v64 != v66);
  }

  v72 = (a1 + (v51 << 6));
  v73 = v72[1];
  v99 = *v72;
  v100 = v73;
  v101 = v72[2];
  v102 = *(v72 + 12);
  v74 = a2 - 4;
  v5[v65] = v5[v74];
  if (a2 == 4)
  {
    v81 = 255;
  }

  else
  {
    v75 = vneg_f32(0x80000000800000);
    v76 = -1;
    do
    {
      v78 = *v5++;
      v77 = v78;
      v79 = vdup_lane_s32(*(a1 + (v78 << 6) + 40), 1);
      if (vcgt_f32(v75, v79).u8[0])
      {
        v76 = v77;
        v80 = -1;
      }

      else
      {
        v80 = 0;
      }

      v75 = vbsl_s8(vdup_n_s32(v80), v79, v75);
      --v74;
    }

    while (v74);
    v81 = v76;
  }

  v82 = 0;
  v83 = (a1 + (v81 << 6));
  v84 = v83[1];
  v103 = *v83;
  v104 = v84;
  v105 = v83[2];
  v106 = *(v83 + 12);
  do
  {
    v85 = a1 + v82 * 4;
    v86 = v88[v82 / 4 + 1];
    *v85 = v88[v82 / 4];
    *(v85 + 16) = v86;
    *(v85 + 32) = v88[v82 / 4 + 2];
    *(v85 + 48) = v90[v82];
    v82 += 16;
  }

  while (v82 != 80);
  return 5;
}

float32x2_t physx::Gu::SinglePersistentContactManifold::refreshContactPoints(uint64_t a1, float32x4_t *a2, float32x2_t *a3)
{
  v3 = *(a1 + 384);
  if (v3)
  {
    v4 = vmul_f32(*a3, *a3);
    v5 = a1 + (v3 << 6) - 32;
    result = 0;
    do
    {
      v7 = *(v5 - 32);
      v8 = vmulq_n_f32(*a2, v7.f32[0]);
      v8.i32[3] = 0;
      v9 = vmulq_lane_f32(a2[1], *v7.f32, 1);
      v9.i32[3] = 0;
      v10 = vmulq_laneq_f32(a2[2], v7, 2);
      v10.i32[3] = 0;
      v11 = vaddq_f32(a2[3], vaddq_f32(vaddq_f32(v8, v9), v10));
      v13 = *(v5 - 16);
      v12 = *v5;
      v14 = *v5;
      v14.i32[3] = 0;
      v15 = vmulq_f32(v14, vsubq_f32(v11, v13));
      v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
      v16 = vpadd_f32(*v15.f32, *v15.f32);
      v17 = vmlsq_lane_f32(v11, v14, v16, 0);
      v17.i64[1] = vextq_s8(v17, v17, 8uLL).u32[0];
      v18 = vsubq_f32(v13, v17);
      v19 = vmulq_f32(v18, v18);
      v19.i64[0] = vpaddq_f32(v19, v19).u64[0];
      if (vuzp1_s8(vdup_lane_s16(vcgt_f32(vpadd_f32(*v19.f32, *v19.f32), v4), 0), result).u32[0] == -1)
      {
        v20 = (*(a1 + 384) - 1);
        *(a1 + 384) = v20;
        v21 = (a1 + (v20 << 6));
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        *(v5 + 16) = *(v21 + 12);
        *(v5 - 16) = v23;
        *v5 = v24;
        *(v5 - 32) = v22;
      }

      else
      {
        v12.i32[3] = v16.i32[1];
        *v5 = v12;
        result = vmin_f32(result, v16);
      }

      v5 -= 64;
      --v3;
    }

    while (v3);
  }

  else
  {
    return 0;
  }

  return result;
}

void physx::Gu::MultiplePersistentContactManifold::addManifoldContactPoints(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, unsigned int a5, uint64_t a6, void *a7, int a8)
{
  v10 = a1;
  if (*(a1 + 62))
  {
    v66 = 0;
    v67 = 0;
    v68 = &v65;
    v69 = vneg_f32(0x80000000800000);
    if (!a5)
    {
      return;
    }

    v11 = 0;
    v12 = a1 + 64;
    v13 = a1 + 56;
    v14 = a1 + 32;
    v15 = a1 + 160;
    v16 = a5;
    v62 = a5;
    while (1)
    {
      v17 = a4[v11];
      if (*(v17 + 32) == v17)
      {
        v18 = *(v10 + 62);
        if (*(v10 + 62))
        {
          v19 = v14;
          v20 = 0;
          do
          {
            v21 = v12 + 400 * *(v13 + v20);
            v22 = *(v21 + 32);
            v23 = *(v21 + 384);
            if (v23 >= 2)
            {
              v24 = v23 - 1;
              v25 = (v15 + 400 * *(v13 + v20));
              do
              {
                v26 = *v25;
                v25 += 4;
                v22 = vaddq_f32(v22, v26);
                --v24;
              }

              while (v24);
            }

            v22.i32[3] = 0;
            v27 = vmulq_f32(v22, v22);
            v27.i64[0] = vpaddq_f32(v27, v27).u64[0];
            v28 = vpadd_f32(*v27.f32, *v27.f32);
            v29 = vrsqrte_f32(v28);
            v30 = 4;
            do
            {
              v29 = vmul_f32(v29, vrsqrts_f32(vmul_f32(v29, v29), v28));
              --v30;
            }

            while (v30);
            v31 = vbsl_s8(vdup_lane_s32(vceqz_f32(v28), 0), v28, vmul_f32(v28, v29));
            v32 = vrecpe_f32(v31);
            v33 = 4;
            do
            {
              v32 = vmul_f32(v32, vrecps_f32(v31, v32));
              --v33;
            }

            while (v33);
            v34 = vmulq_n_f32(v22, v32.f32[0]);
            v34.i32[3] = 0;
            v35 = vmulq_f32(*v17, v34);
            v35.i64[0] = vpaddq_f32(v35, v35).u64[0];
            if (vpadd_f32(*v35.f32, *v35.f32).f32[0] >= COERCE_FLOAT(*a7))
            {
              if (v23)
              {
                v38 = 0;
                v39 = (v12 + 400 * *(v13 + v20));
                do
                {
                  v40 = a2 + ((a3 + v38) << 6);
                  v41 = *v39;
                  v42 = v39[1];
                  v43 = v39[2];
                  *(v40 + 48) = *(v39 + 12);
                  *(v40 + 16) = v42;
                  *(v40 + 32) = v43;
                  *v40 = v41;
                  ++v38;
                  v23 = *(v21 + 384);
                  v39 += 4;
                }

                while (v38 < v23);
              }

              v70 = a3;
              v71 = v23 + a3;
              v65 = v34;
              v68 = v17;
              v66 = 0;
              *(*(v17 + 24) + 16) = &v65;
              *(v17 + 56) += v23;
              v44 = v19;
              v45 = (v19 + 4 * *(v13 + v20));
              v46 = vld1_dup_f32(v45);
              *(v17 + 40) = vmin_f32(*(v17 + 40), v46);
              addBatchManifoldContactsToSingleManifold(v21, a2, *(v21 + 384) + a3, v17, a8);
              v47 = *(v13 + v20);
              v14 = v44;
              *(v44 + 4 * v47) = v48;
              v10 = a1;
              v16 = v62;
              goto LABEL_24;
            }

            ++v20;
          }

          while (v20 != v18);
          v14 = v19;
          if (v18 < 6)
          {
            goto LABEL_19;
          }

          v54 = 0;
          v55 = (v10 + 57);
          for (i = 1; i != v18; ++i)
          {
            v57 = *v55++;
            if (*(v19 + 4 * v57) > *(v19 + 4 * *(v13 + v54)))
            {
              v54 = i;
            }
          }

          if (*(v19 + 4 * *(v13 + v54)) > COERCE_FLOAT(*(v17 + 40)))
          {
            v58 = v12 + 400 * *(v13 + v54);
            *(v58 + 384) = 0;
            addBatchManifoldContactsToSingleManifold(v58, a2, a3, v17, a8);
            *(v14 + 4 * *(v13 + v54)) = v59;
          }

          return;
        }

        v18 = 0;
LABEL_19:
        addBatchManifoldContactsToSingleManifold(v12 + 400 * *(v13 + v18), a2, a3, v17, a8);
        v16 = v62;
        v36 = *(v10 + 62);
        *(v14 + 4 * *(v13 + v36)) = v37;
        *(v10 + 62) = v36 + 1;
      }

LABEL_24:
      if (++v11 == v16)
      {
        return;
      }
    }
  }

  if (!a5)
  {
    return;
  }

  v49 = 0;
  v50 = a1 + 56;
  v51 = a5;
  do
  {
    if (*(*a4 + 32) == *a4)
    {
      if (v49 > 5u)
      {
        return;
      }

      addBatchManifoldContactsToSingleManifold(v10 + 64 + 400 * *(v50 + v49), a2, a3, *a4, a8);
      v52 = *(v10 + 62);
      *(v10 + 32 + 4 * *(v50 + v52)) = v53;
      v49 = v52 + 1;
      *(v10 + 62) = v49;
    }

    ++a4;
    --v51;
  }

  while (v51);
}

void addBatchManifoldContactsToSingleManifold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 == 3)
  {
    if (*(a4 + 56) <= 3u)
    {
      v19 = 0;
      v20 = a4;
      do
      {
        v21 = *(v20 + 48);
        if (v21 < *(v20 + 52))
        {
          v22 = a2 + (v21 << 6);
          v23 = v19;
          do
          {
            v19 = v23 + 1;
            v24 = a1 + (v23 << 6);
            v25 = *v22;
            v26 = *(v22 + 16);
            v27 = *(v22 + 32);
            *(v24 + 48) = *(v22 + 48);
            *(v24 + 16) = v26;
            *(v24 + 32) = v27;
            *v24 = v25;
            ++v21;
            v22 += 64;
            v23 = v19;
          }

          while (v21 < *(v20 + 52));
        }

        v20 = *(v20 + 16);
      }

      while (v20);
      goto LABEL_27;
    }

    physx::Gu::SinglePersistentContactManifold::reduceBatchContactsCapsule(a1, a2, a3, a4);
    v18 = 3;
  }

  else
  {
    if (a5 == 1)
    {
      v6 = vneg_f32(0x80000000800000);
      v7 = -1;
      do
      {
        v8 = *(a4 + 48);
        v9 = *(a4 + 52);
        if (v8 < v9)
        {
          v10 = (a2 + 32 + (v8 << 6));
          do
          {
            v11 = vdup_lane_s32(v10[1], 1);
            v12 = vcgt_f32(v6, v11).u8[0];
            if (v12)
            {
              v13 = -1;
            }

            else
            {
              v13 = 0;
            }

            v6 = vbsl_s8(vdup_n_s32(v13), v11, v6);
            if (v12)
            {
              v7 = v8;
            }

            ++v8;
            v10 += 8;
          }

          while (v9 != v8);
        }

        a4 = *(a4 + 16);
      }

      while (a4);
      v14 = a2 + (v7 << 6);
      v15 = *v14;
      v16 = *(v14 + 16);
      v17 = *(v14 + 32);
      *(a1 + 48) = *(v14 + 48);
      *(a1 + 16) = v16;
      *(a1 + 32) = v17;
      *a1 = v15;
      v18 = 1;
      goto LABEL_30;
    }

    if (*(a4 + 56) <= 6u)
    {
      v19 = 0;
      v28 = a4;
      do
      {
        v29 = *(v28 + 48);
        if (v29 < *(v28 + 52))
        {
          v30 = a2 + (v29 << 6);
          v31 = v19;
          do
          {
            v19 = v31 + 1;
            v32 = a1 + (v31 << 6);
            v33 = *v30;
            v34 = *(v30 + 16);
            v35 = *(v30 + 32);
            *(v32 + 48) = *(v30 + 48);
            *(v32 + 16) = v34;
            *(v32 + 32) = v35;
            *v32 = v33;
            ++v29;
            v30 += 64;
            v31 = v19;
          }

          while (v29 < *(v28 + 52));
        }

        v28 = *(v28 + 16);
      }

      while (v28);
LABEL_27:
      *(a1 + 384) = v19;
      return;
    }

    physx::Gu::SinglePersistentContactManifold::reduceBatchContactsConvex(a1, a2, a3, a4);
    v18 = 6;
  }

LABEL_30:
  *(a1 + 384) = v18;
}

BOOL physx::Gu::MultiplePersistentContactManifold::addManifoldContactsToContactBuffer(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  *(a1 + 63) = 0;
  v3 = *(a1 + 62);
  if (*(a1 + 62))
  {
    v4 = 0;
    v5 = 0;
    v6 = a1 + 56;
    v7.i64[0] = 0x4000000040000000;
    v7.i64[1] = 0x4000000040000000;
    do
    {
      v8 = *(v6 + v4);
      v9 = a1 + 64 + 400 * *(v6 + v4);
      v10 = *(v9 + 384);
      *(a1 + 63) += v10;
      v11 = *(v9 + 32);
      if (v10 >= 2)
      {
        v12 = v10 - 1;
        v13 = (a1 + 160 + 400 * v8);
        do
        {
          v14 = *v13;
          v13 += 4;
          v11 = vaddq_f32(v11, v14);
          --v12;
        }

        while (v12);
      }

      v15 = v11;
      v15.i32[3] = 0;
      v16 = *a3;
      v16.i32[3] = 0;
      v17 = vdupq_laneq_s32(*a3, 3).u64[0];
      v18 = vmulq_n_f32(v15, vmla_f32(0xBF000000BF000000, v17, v17).f32[0]);
      v18.i32[3] = 0;
      v19 = vextq_s8(v16, v16, 8uLL).u64[0];
      v20 = vextq_s8(v15, v15, 8uLL).u64[0];
      v21 = vmls_f32(vmul_f32(*a3->f32, vext_s8(*v11.f32, v20, 4uLL)), vext_s8(*a3->f32, v19, 4uLL), *v11.f32);
      *v22.f32 = vext_s8(v21, vmls_f32(vmul_f32(*v11.f32, v19), *a3->f32, v20), 4uLL);
      v22.i64[1] = v21.u32[0];
      v23 = vmlaq_laneq_f32(v18, v22, *a3, 3);
      v23.i64[1] = vextq_s8(v23, v23, 8uLL).u32[0];
      v24 = vmulq_f32(v15, v16);
      v24.i64[0] = vpaddq_f32(v24, v24).u64[0];
      v25 = vmlaq_n_f32(v23, v16, vpadd_f32(*v24.f32, *v24.f32).f32[0]);
      v26 = vaddq_f32(v25, v25);
      v26.i32[3] = 0;
      v27 = vmulq_f32(v26, v26);
      v27.i64[0] = vpaddq_f32(v27, v27).u64[0];
      v28 = vpadd_f32(*v27.f32, *v27.f32);
      v29 = vrsqrte_f32(v28);
      v30 = 4;
      do
      {
        v29 = vmul_f32(v29, vrsqrts_f32(vmul_f32(v29, v29), v28));
        --v30;
      }

      while (v30);
      v31 = vbsl_s8(vdup_lane_s32(vceqz_f32(v28), 0), v28, vmul_f32(v28, v29));
      v32 = vrecpe_f32(v31);
      v33 = 4;
      do
      {
        v32 = vmul_f32(v32, vrecps_f32(v31, v32));
        --v33;
      }

      while (v33);
      if (v5 <= 0x3F && v10)
      {
        v34 = 0;
        v35 = 0;
        v36 = vmulq_n_f32(v26, v32.f32[0]);
        v36.i32[3] = 0;
        v37 = a1 + 400 * v8;
        do
        {
          v38 = *(v37 + v34 + 80);
          v39 = *a3;
          v39.i32[3] = 0;
          v40 = vdupq_laneq_s32(*a3, 3).u64[0];
          v41 = vmulq_n_f32(v38, vmla_f32(0xBF000000BF000000, v40, v40).f32[0]);
          v41.i32[3] = 0;
          v42 = vextq_s8(v39, v39, 8uLL).u64[0];
          v43 = vextq_s8(v38, v38, 8uLL).u64[0];
          v44 = vmls_f32(vmul_f32(*a3->f32, vext_s8(*v38.f32, v43, 4uLL)), vext_s8(*a3->f32, v42, 4uLL), *v38.f32);
          *v45.f32 = vext_s8(v44, vmls_f32(vmul_f32(v42, *v38.f32), *a3->f32, v43), 4uLL);
          v45.i64[1] = v44.u32[0];
          v46 = vmlaq_laneq_f32(v41, v45, *a3, 3);
          v46.i64[1] = vextq_s8(v46, v46, 8uLL).u32[0];
          v47 = vmulq_f32(v39, v38);
          v47.i64[0] = vpaddq_f32(v47, v47).u64[0];
          v48 = vmlaq_n_f32(v46, v39, vpadd_f32(*v47.f32, *v47.f32).f32[0]);
          v48.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
          v49 = vmlaq_f32(a3[1], v7, v48);
          v49.i64[1] = vextq_s8(v49, v49, 8uLL).u32[0];
          v50 = a2 + (v5 << 6) + v34;
          v47.i32[0] = *(v37 + v34 + 108);
          *v50 = v36;
          *(v50 + 16) = v49;
          *(v50 + 12) = v47.i32[0];
          *(v50 + 52) = *(v37 + v34 + 112);
          v51 = v35 + 1;
          if (v35 + 1 >= v10)
          {
            break;
          }

          v52 = v5 + v35;
          v34 += 64;
          ++v35;
        }

        while (v52 < 0x3F);
        v5 = (v5 + v51);
        v3 = *(a1 + 62);
      }

      ++v4;
    }

    while (v4 < v3);
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 4096) = v5;
  return v5 != 0;
}

uint64_t physx::Gu::MultiplePersistentContactManifold::fromBuffer(uint64_t this, unsigned __int8 *a2)
{
  if (!a2)
  {
    *this = xmmword_1E30474D0;
    *(this + 16) = xmmword_1E31137A0;
    goto LABEL_11;
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 1);
  *this = *a2;
  *(this + 16) = v3;
  if (!v2)
  {
LABEL_11:
    LODWORD(v2) = 0;
    *(this + 62) = 0;
LABEL_12:
    v2 = v2;
    do
    {
      *(this + 56 + v2) = v2;
      ++v2;
    }

    while (v2 != 6);
    return this;
  }

  v4 = 0;
  v5 = a2 + 48;
  v6 = (this + 112);
  do
  {
    *(this + 56 + v4) = v4;
    v7 = v5 + 16;
    v8 = *v5;
    v9 = this + 64 + 400 * v4;
    *(v9 + 384) = *v5;
    if (v8)
    {
      v10 = 0;
      v11 = v5 + 28;
      v12 = v6;
      do
      {
        v13 = *(v11 - 12);
        HIDWORD(v13) = 0;
        *(v12 - 3) = v13;
        v14 = *(v11 + 4);
        HIDWORD(v14) = 0;
        *(v12 - 2) = v14;
        *(v12 - 1) = *(v11 + 20);
        v15 = *v11;
        v11 += 48;
        *v12 = v15;
        v12 += 16;
        ++v10;
      }

      while (v10 < *(v9 + 384));
    }

    v5 = &v7[48 * v8];
    ++v4;
    v6 += 100;
  }

  while (v4 != v2);
  *(this + 62) = v2;
  if (v2 <= 5)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t physx::Gu::addManifoldPoint(float32x4_t *a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x2_t a5)
{
  v5 = vsubq_f32(*a3, a4[3]);
  v6 = vmulq_f32(*a4, v5);
  v7 = vmulq_f32(v5, a4[1]);
  v8 = vmulq_f32(v5, a4[2]);
  v6.i64[0] = vpaddq_f32(v6, v6).u64[0];
  v9 = vpaddq_f32(v7, v7).u64[0];
  v8.i64[0] = vpaddq_f32(v8, v8).u64[0];
  *v6.f32 = vext_s8(vpadd_f32(*v6.f32, *v6.f32), vpadd_f32(v9, v9), 4uLL);
  v6.i64[1] = vpadd_f32(*v8.f32, *v8.f32).u32[0];
  v14 = a5;
  v10 = *(a3 + 32);
  v10.i32[3] = HIDWORD(*(a3 + 64));
  v12 = v10;
  v13 = v6;
  *a1 = v6;
  a1[1] = *(a3 + 16);
  a1[2] = v10;
  return physx::Gu::PersistentContactManifold::addManifoldPoint(a2, &v13, (a3 + 16), &v12, &v14);
}

uint64_t physx::Gu::PCMHeightfieldContactGenerationCallback<physx::PCMSphereVsHeightfieldContactGenerationCallback>::onEvent(uint64_t a1, unsigned int a2, unsigned int *a3)
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
              v18 = &v45 + 3 * byte_1E311753E[v12];
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

      physx::Gu::PCMMeshContactGeneration::processTriangleCache<16u,physx::Gu::PCMSphereVsMeshContactGeneration>(a1 + 32, v54);
      a2 = v32 - v30;
      v5 = v31 + 1;
    }

    while (v31 + 1 != v29);
  }

  return 1;
}

BOOL physx::Gu::PCMMeshContactGeneration::processTriangleCache<16u,physx::Gu::PCMSphereVsMeshContactGeneration>(_BOOL8 result, uint64_t a2)
{
  v2 = *(a2 + 848);
  if (v2)
  {
    v3 = a2;
    v4 = result;
    v5 = (a2 + 832);
    v6 = (a2 + 768);
    v7 = (a2 + 576);
    do
    {
      --v2;
      v9 = *v6++;
      v8 = v9;
      v10 = *v5++;
      result = physx::Gu::PCMSphereVsMeshContactGeneration::processTriangle(v4, v3, v8, v10, v7);
      v3 += 36;
      v7 += 3;
    }

    while (v2);
  }

  return result;
}

uint64_t physx::Gu::PCMMeshContactGenerationCallback<physx::PCMSphereVsMeshContactGenerationCallback>::processHit(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, uint64_t a6, _DWORD *a7)
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
    physx::Gu::PCMMeshContactGeneration::processTriangleCache<16u,physx::Gu::PCMSphereVsMeshContactGeneration>(a1 + 896, a1 + 36);
    *(a1 + 884) = 0;
  }

  physx::Gu::TriangleCache<16u>::addTriangle(a1 + 36, v49, a7, v45, v47);
  return 1;
}

BOOL physx::Gu::sweepBoxTriangle(uint64_t a1, uint64_t a2, float32x2_t *a3, float *a4, float32x2_t *a5, float32x2_t *a6, unsigned __int32 *a7, char a8, double a9, double a10, double a11, __n128 a12, double a13, double a14, double a15, __n128 a16)
{
  v226 = *MEMORY[0x1E69E9840];
  v17 = *(a1 + 20);
  v18 = *(a1 + 8);
  v19 = *(a1 + 12);
  v20 = *a1;
  _D2 = vsub_f32(v19, *a1);
  a16.n128_u64[0] = *(a1 + 24);
  v22 = vsub_f32(a16.n128_u64[0], *a1);
  v23 = *(a1 + 32);
  _S20 = v23 - v18;
  __asm { FMLA            S0, S20, V2.S[1] }

  v29 = ((v17 - v18) * v22.f32[0]) - (_D2.f32[0] * (v23 - v18));
  v30 = (-_D2.f32[1] * v22.f32[0]) + (_D2.f32[0] * v22.f32[1]);
  if ((a8 & 1) == 0 && (((v29 * a3->f32[1]) + (_S0 * a3->f32[0])) + (v30 * a3[1].f32[0])) >= 0.0)
  {
    return 0;
  }

  v31 = 0;
  v32 = *a2;
  *&v33 = *(a2 + 4);
  v216 = v32;
  v34 = *(a2 + 12);
  *&v35 = v33;
  *(&v35 + 1) = __PAIR64__(v33, v34);
  v217[0] = v35;
  LODWORD(v35) = vdup_lane_s32(*&v33, 1).u32[0];
  *&v36 = __PAIR64__(v34, v35);
  v218 = v32;
  v221 = v34;
  v37 = *(a2 + 16);
  v220 = v37.i32[1];
  v224 = v32;
  *(&v36 + 1) = __PAIR64__(v35, v37.u32[0]);
  v217[1] = v36;
  *&v36 = __PAIR64__(DWORD1(v33), v37.u32[0]);
  *(&v36 + 1) = __PAIR64__(vdup_lane_s32(*&v33, 0).u32[1], LODWORD(v32));
  DWORD1(v33) = v37.i32[1];
  v219 = v36;
  *(&v33 + 1) = __PAIR64__(vdup_lane_s32(v37, 0).u32[1], v34);
  v222 = v33;
  v223 = v37.i32[1];
  v225 = v37;
  v210 = v20;
  v211 = v18;
  v212 = v19;
  v213 = v17;
  v214 = a16.n128_u64[0];
  v215 = v23;
  v38 = v17 + v18;
  v39 = vadd_f32(vadd_f32(v19, v20), a16.n128_u64[0]);
  v40 = v38 + v23;
  a12.n128_u64[0] = vmul_f32(v39, vdup_n_s32(0x3EAAAAABu));
  v41 = vdup_n_s32(0x3CA3D70Au);
  do
  {
    v42 = (&v210 + v31);
    v43 = *(&v210 + v31 + 8);
    *v42 = vadd_f32(*(&v210 + v31), vmul_f32(vsub_f32(*(&v210 + v31), a12.n128_u64[0]), v41));
    v42[1].f32[0] = v43 + ((v43 - (v40 * 0.33333)) * 0.02);
    v31 += 12;
  }

  while (v31 != 36);
  a12.n128_u32[0] = *a7;
  v200 = a12;
  v44 = v212.f32[0] - v210.f32[0];
  v45 = v212.f32[1] - v210.f32[1];
  v46 = v213 - v211;
  v47 = *&v214 - v210.f32[0];
  v48 = *(&v214 + 1) - v210.f32[1];
  _S22 = v215 - v211;
  v50 = a3[1].f32[0];
  _D4 = *a3;
  v52 = _D4.f32[1];
  __asm { FMLA            S23, S22, V4.S[1] }

  v54 = (v50 * (*&v214 - v210.f32[0])) - (COERCE_FLOAT(*a3) * (v215 - v211));
  v55 = (COERCE_FLOAT(*a3) * (*(&v214 + 1) - v210.f32[1])) - (COERCE_FLOAT(HIDWORD(*a3)) * (*&v214 - v210.f32[0]));
  v56 = (((v212.f32[1] - v210.f32[1]) * v54) + ((v212.f32[0] - v210.f32[0]) * _S23)) + ((v213 - v211) * v55);
  v57 = 1.0 / v56;
  v16.n128_u32[1] = 0;
  if (v56 == 0.0)
  {
    v57 = 0.0;
  }

  if (a8)
  {
    if (fabsf(v56) < 0.00001)
    {
      goto LABEL_49;
    }

    v58 = 0;
    v59 = 0;
    v60 = v217 + 1;
    v61 = -1;
    do
    {
      v62 = *(v60 - 2) - v210.f32[0];
      v63 = *(v60 - 1) - v210.f32[1];
      v64 = *v60 - v211;
      v65 = v57 * (((v54 * v63) + (v62 * _S23)) + (v64 * v55));
      if (v65 >= 0.0 && v65 <= 1.0)
      {
        v67 = (v63 * v46) - (v64 * v45);
        v68 = (v64 * v44) - (v62 * v46);
        v69 = (v62 * v45) - (v63 * v44);
        v70 = v57 * (((_D4.f32[1] * v68) + (_D4.f32[0] * v67)) + (v50 * v69));
        v71 = v65 + v70;
        if (v70 >= 0.0 && v71 <= 1.0)
        {
          v16.n128_f32[0] = v57 * (((v48 * v68) + (v47 * v67)) + (_S22 * v69));
          if (v16.n128_f32[0] >= 0.0 && v16.n128_f32[0] <= v200.n128_f32[0])
          {
            v61 = 0;
            v59 = v58;
            v200 = v16;
          }
        }
      }

      ++v58;
      v60 += 3;
    }

    while (v58 != 8);
  }

  else
  {
    if (v56 < 0.00001)
    {
      goto LABEL_49;
    }

    v74 = 0;
    v59 = 0;
    v75 = v217 + 1;
    v61 = -1;
    v76 = &dword_1E3117624;
    do
    {
      if ((((v29 * *(v76 - 1)) + (*(v76 - 2) * _S0)) + (*v76 * v30)) < 0.0)
      {
        v77 = *(v75 - 2) - v210.f32[0];
        v78 = *(v75 - 1) - v210.f32[1];
        v79 = *v75 - v211;
        v80 = ((v54 * v78) + (v77 * _S23)) + (v79 * v55);
        if (v80 >= 0.0 && v80 <= v56)
        {
          v82 = (v78 * v46) - (v79 * v45);
          v83 = (v79 * v44) - (v77 * v46);
          v84 = (v77 * v45) - (v78 * v44);
          v85 = ((_D4.f32[1] * v83) + (_D4.f32[0] * v82)) + (v50 * v84);
          v86 = v80 + v85;
          if (v85 >= 0.0 && v86 <= v56)
          {
            v16.n128_f32[0] = v57 * (((v48 * v83) + (v47 * v82)) + (_S22 * v84));
            if (v16.n128_f32[0] >= 0.0 && v16.n128_f32[0] <= v200.n128_f32[0])
            {
              v61 = 0;
              v59 = v74;
              v200 = v16;
            }
          }
        }
      }

      ++v74;
      v76 += 3;
      v75 += 3;
    }

    while (v74 != 8);
  }

  if (!v61)
  {
    v196 = (&v216 + 3 * v59);
    v197 = (v50 * v200.n128_f32[0]) + v196[1].f32[0];
    *a5 = vadd_f32(vmul_n_f32(_D4, v200.n128_f32[0]), *v196);
    a5[1].f32[0] = v197;
    a6->f32[0] = _S0;
    a6->f32[1] = v29;
    a6[1].f32[0] = v30;
    _D4.i32[0] = a3->i32[0];
    v52 = a3->f32[1];
    v50 = a3[1].f32[0];
    goto LABEL_50;
  }

LABEL_49:
  v61 = -1;
LABEL_50:
  v89 = -*a4;
  v90 = -a4[1];
  v91 = -a4[2];
  v92 = a1 + 4;
  v93 = fabsf(_D4.f32[0]);
  v94 = fabsf(v52);
  v95 = fabsf(v50);
  v96 = 872415232;
  v97 = 3;
  do
  {
    if (v93 >= 0.00000011921 || ((a16.n128_u32[0] = *(v92 - 4), a16.n128_f32[0] >= *a2) ? (v98 = a16.n128_f32[0] <= *(a2 + 12)) : (v98 = 0), v98))
    {
      if (v94 >= 0.00000011921 || ((a16.n128_u32[0] = *v92, *v92 >= *(a2 + 4)) ? (v99 = a16.n128_f32[0] <= *(a2 + 16)) : (v99 = 0), v99))
      {
        v100 = *(a2 + 8);
        a16.n128_u32[0] = *(v92 + 4);
        if (v95 >= 0.00000011921)
        {
          v101 = *(a2 + 20);
        }

        else
        {
          v101 = *(a2 + 20);
          if (a16.n128_f32[0] < v100 || a16.n128_f32[0] > v101)
          {
            goto LABEL_121;
          }
        }

        v103 = *(v92 - 4);
        v104 = (*a2 - v103) * v89;
        v105 = (*(a2 + 12) - v103) * v89;
        v106 = (v100 - a16.n128_f32[0]) * v91;
        v107 = (v101 - a16.n128_f32[0]) * v91;
        if (v104 <= v105)
        {
          v108 = 0;
        }

        else
        {
          v108 = 3;
        }

        if (v104 <= v105)
        {
          v109 = v105;
        }

        else
        {
          v109 = v104;
        }

        if (v104 > v105)
        {
          v104 = v105;
        }

        if (v106 <= v107)
        {
          v110 = v106;
        }

        else
        {
          v110 = v107;
        }

        if (v106 <= v107)
        {
          v111 = 2;
        }

        else
        {
          v107 = v106;
          v111 = 5;
        }

        v112 = -3.4028e38;
        if (v93 >= 0.00000011921)
        {
          v112 = v104;
        }

        v113 = 3.4028e38;
        if (v93 < 0.00000011921)
        {
          v108 = -1;
        }

        else
        {
          v113 = v109;
        }

        if (v94 >= 0.00000011921)
        {
          v114 = (*(a2 + 4) - *v92) * v90;
          v115 = (*(a2 + 16) - *v92) * v90;
          if (v114 <= v115)
          {
            v116 = 1;
          }

          else
          {
            v116 = 4;
          }

          if (v114 <= v115)
          {
            v117 = (*(a2 + 16) - *v92) * v90;
          }

          else
          {
            v117 = (*(a2 + 4) - *v92) * v90;
          }

          if (v114 > v115)
          {
            v114 = (*(a2 + 16) - *v92) * v90;
          }

          if (v114 > v112)
          {
            v112 = v114;
            v108 = v116;
          }

          if (v113 >= v117)
          {
            v113 = v117;
          }
        }

        if (v110 <= v112)
        {
          v110 = v112;
          v111 = v108;
        }

        if (v113 < v107)
        {
          v107 = v113;
        }

        if (v95 < 0.00000011921)
        {
          a16.n128_f32[0] = v112;
        }

        else
        {
          v113 = v107;
          a16.n128_f32[0] = v110;
        }

        if (v95 < 0.00000011921)
        {
          v111 = v108;
        }

        if (fmaxf(a16.n128_f32[0], 0.00000011921) > v113)
        {
          v111 = -1;
        }

        if (a16.n128_f32[0] >= 0.0 && v111 != -1 && a16.n128_f32[0] <= v200.n128_f32[0])
        {
          *a6 = *v120;
          a6[1].i32[0] = *(v120 + 2);
          *a5 = *(v92 - 4);
          a5[1].i32[0] = *(v92 + 4);
          v61 = 1;
          v200 = a16;
        }
      }
    }

LABEL_121:
    v92 += 12;
    --v97;
  }

  while (v97);
  v121 = 0;
  v122 = -1;
  v123 = physx::Gu::getBoxEdges(void)::Indices;
  v124 = -1;
  do
  {
    v125 = &v216 + 3 * *v123;
    v126 = *v125;
    v127 = v125[1];
    *&v208 = v126;
    *&v206 = v127;
    v128 = *(v125 + 2);
    v201.i32[0] = v128;
    v129 = &v216 + 3 * v123[1];
    v130 = *v129;
    v131 = v129[1];
    v132 = v129[2];
    v133 = *v129 - v126;
    v134 = v131 - v127;
    v135 = v132 - *&v128;
    v136 = sqrtf(((v134 * v134) + (v133 * v133)) + (v135 * v135));
    if (v136 > 0.0)
    {
      v137 = 0.01 / v136;
      v138 = v133 * v137;
      v139 = v134 * v137;
      v140 = v135 * v137;
      v126 = v126 - v138;
      *&v208 = v126;
      v127 = v127 - v139;
      *&v206 = v127;
      *&v128 = *&v128 - v140;
      v201.i32[0] = v128;
      v130 = v130 + v138;
      v131 = v131 + v139;
      v132 = v132 + v140;
    }

    v141 = a3->f32[0];
    v142 = a3->f32[1];
    v143 = a3[1].f32[0];
    {
      v144 = ((v131 - v127) * v143) - ((v132 - *&v128) * v142);
      v145 = ((v132 - *&v128) * v141) - ((v130 - v126) * v143);
      v146 = ((v130 - v126) * v142) - ((v131 - v127) * v141);
      v147 = fabsf(v144);
      v148 = fabsf(v145);
      v149 = fabsf(v146);
      if (v148 <= v147 || v148 <= v149)
      {
        v151 = v149 <= v147;
        if (v149 > v147)
        {
          v154 = -(v131 - v127);
        }

        else
        {
          v154 = -(v132 - *&v128);
        }

        if (v151)
        {
          v157 = &v204;
        }

        else
        {
          v157 = &v205;
        }

        if (v151)
        {
          v156 = &v206;
        }

        else
        {
          v156 = &v208;
        }

        if (v151)
        {
          v158 = v131 - v127;
        }

        else
        {
          v158 = v130 - v126;
        }

        v159 = v151;
        if (v151)
        {
          v155 = &v203;
        }

        else
        {
          v155 = &v204;
        }

        if (v151)
        {
          v153 = &v201;
        }

        else
        {
          v153 = &v206;
        }

        if (v151)
        {
          v152 = 2;
        }

        else
        {
          v152 = 1;
        }
      }

      else
      {
        v152 = 0;
        v153 = &v208;
        v154 = -(v130 - v126);
        v155 = &v205;
        v156 = &v201;
        v157 = &v203;
        v158 = v132 - *&v128;
        v159 = 2;
      }

      v160 = 0;
      v161 = ((v127 * v145) + (v144 * v126)) + (v146 * *&v128);
      v162 = 1.0 / ((v154 * a3->f32[v159]) + (v158 * a3->f32[v152]));
      v163 = (a1 + 8);
      do
      {
        v164 = (a1 + 12 * ((v160 + (v160 >> 1) + 1) & 3));
        v165 = *(v163 - 2);
        v166 = *(v163 - 1);
        v167 = *v163;
        v168 = (((v145 * v166) + (v165 * v144)) + (*v163 * v146)) - v161;
        v169 = v164[1];
        v170 = v164[2];
        if ((v168 * ((((v145 * v169) + (*v164 * v144)) + (v170 * v146)) - v161)) <= 0.0)
        {
          v171 = *v164 - v165;
          v172 = v169 - v166;
          v173 = v170 - v167;
          v174 = ((v145 * v172) + (v144 * v171)) + (v146 * v173);
          if (v174 != 0.0)
          {
            v175 = v168 / v174;
            v176 = v171 * v175;
            v177 = v172 * v175;
            v178 = v173 * v175;
            v179 = v165 - v176;
            v180 = v166 - v177;
            v181 = v167 - v178;
            v204 = v166 - v177;
            v205 = v165 - v176;
            v203 = v181;
            v182 = v162 * ((v154 * (*v157 - *v156)) + (v158 * (*v155 - *v153)));
            if (v182 >= 0.0)
            {
              v183 = v182 * a3->f32[0];
              v184 = v182 * a3->f32[1];
              v185 = v182 * a3[1].f32[0];
              v186 = v179 - v183;
              v187 = v180 - v184;
              v188 = v181 - v185;
              v189 = v200;
              if (((((v127 - v187) * (v131 - v187)) + ((v126 - v186) * (v130 - v186))) + ((*&v128 - v188) * (v132 - v188))) < 0.0 && v182 <= v200.n128_f32[0])
              {
                v61 = 2;
                v199 = v132 - *&v128;
                a5->f32[0] = v183 + v186;
                a5->f32[1] = v184 + v187;
                v93 = v131 - v127;
                a16.n128_u32[0] = v128;
                v96 = LODWORD(v127);
                v95 = v130 - v126;
                a5[1].f32[0] = v185 + v188;
                v94 = v126;
                v124 = v160;
                v122 = (v160 + (v160 >> 1) + 1) & 3;
                v189.n128_f32[0] = v182;
                v200 = v189;
              }
            }
          }
        }

        ++v160;
        v163 += 3;
      }

      while (v160 != 3);
    }

    v123 += 2;
    ++v121;
  }

  while (v121 != 12);
  v209 = a16.n128_u32[0];
  v207 = v199;
  v208 = __PAIR64__(v96, LODWORD(v94));
  v206 = __PAIR64__(LODWORD(v93), LODWORD(v95));
  v191 = v61 != -1;
  if (v61 != -1)
  {
    if (v61 == 2)
    {
      v192 = (a1 + 12 * v124);
      v193 = (a1 + 12 * v122);
      v194 = v193[1].f32[0] - v192[1].f32[0];
      v201 = vsub_f32(*v193, *v192);
      v202 = v194;
      physx::Gu::computeEdgeEdgeNormal(a6, &v208, &v206, v192, &v201, a3, v200.n128_f32[0]);
    }

    *a7 = v200.n128_u32[0];
  }

  return v191;
}

uint64_t physx::Gu::sweepBoxBox(__int128 *a1, uint64_t a2, float32x2_t *a3, _WORD *a4, uint64_t a5, float a6)
{
  v191 = *MEMORY[0x1E69E9840];
  if ((*a4 & 0x10) != 0 || !physx::Gu::intersectOBBOBB(a1 + 12, a1 + 9, a1, (a2 + 48), (a2 + 36), a2, 1))
  {
    physx::Gu::computeOBBPoints(v190, (a1 + 36), a1 + 12, a1, (a1 + 12), a1 + 3);
    physx::Gu::computeOBBPoints(v189, (a2 + 36), (a2 + 48), a2, (a2 + 12), (a2 + 24));
    v14 = 0;
    v15 = *(a1 + 14);
    v16 = a1[3];
    v187 = vneg_f32(v16);
    v188 = -v15;
    v185 = v16;
    v186 = v15;
    v17.i32[0] = *a1;
    v18.i32[0] = *(a1 + 1);
    v19.i32[0] = *(a1 + 3);
    v20 = *(a1 + 6);
    v21 = *(a1 + 7);
    v22 = *(a1 + 9);
    v23 = *(a1 + 10);
    v16.i32[0] = *(a1 + 11);
    v157 = (-(v23 * v18.f32[0]) - (*a1 * v22)) - (*(a1 + 2) * v16.f32[0]);
    v158 = *(a1 + 8);
    v155 = (-(v23 * v21) - (v20 * v22)) - (v158 * v16.f32[0]);
    v156 = (-(v23 * *(a1 + 4)) - (v19.f32[0] * v22)) - (*(a1 + 5) * v16.f32[0]);
    v24 = a3[1].f32[0];
    v25 = v20;
    v162 = *(a1 + 4);
    v164 = v19;
    v167 = v18;
    v168 = *a1;
    v19.i32[1] = v18.i32[0];
    v17.f32[1] = v162;
    v26 = v21;
    v165 = *(a1 + 2);
    v27.f32[0] = v165;
    v160 = *(a1 + 5);
    v27.f32[1] = v160;
    v28 = vneg_f32(vadd_f32(vadd_f32(vrev64_s32(vmul_f32(v19, *a3)), vmul_f32(v17, *a3)), vmul_n_f32(v27, v24)));
    v29 = -(((v20 * COERCE_FLOAT(*a3)) + vmuls_lane_f32(v21, *a3, 1)) + (v158 * v24));
    v30 = -1;
    do
    {
      LODWORD(v179) = 0;
      LODWORD(v177) = 0;
      v32 = *&v189[v14];
      v31 = *&v189[v14 + 4];
      v33 = *&v189[v14 + 8];
      *&v183 = v157 + (((v168 * v32) + (v167.f32[0] * v31)) + (v165 * v33));
      *(&v183 + 1) = v156 + (((v164.f32[0] * v32) + (v162 * v31)) + (v160 * v33));
      v184 = v155 + (((v25 * v32) + (v26 * v31)) + (v158 * v33));
      v181 = v28;
      v182 = v29;
      v34 = physx::Gu::intersectRayAABB(&v187, &v185, &v183, &v181, &v179, &v177);
      if (v34 != -1)
      {
        v35 = *&v179;
        if (*&v179 >= 0.0 && *&v179 <= a6)
        {
          v30 = 0;
          v38 = v37[1];
          v39 = v37[2];
          v40 = ((*v37 * *(a1 + 2)) + (v38 * *(a1 + 5))) + (v39 * *(a1 + 8));
          *(a5 + 36) = vadd_f32(vadd_f32(vmul_n_f32(*a1, *v37), vmul_n_f32(*(a1 + 12), v38)), vmul_n_f32(*(a1 + 24), v39));
          *(a5 + 44) = v40;
          *(a5 + 24) = v32;
          *(a5 + 28) = v31;
          *(a5 + 32) = v33;
          a6 = v35;
        }
      }

      v14 += 12;
    }

    while (v14 != 96);
    v41 = 0;
    v42 = *(a2 + 56);
    v43 = *(a2 + 48);
    v187 = vneg_f32(v43);
    v188 = -v42;
    v185 = v43;
    v186 = v42;
    v44 = *(a2 + 4);
    v45 = *(a2 + 8);
    v46 = *(a2 + 12);
    v47 = *(a2 + 16);
    v48 = *(a2 + 20);
    v49 = *(a2 + 24);
    v50 = *(a2 + 28);
    v52 = *(a2 + 32);
    v51 = *(a2 + 36);
    v53 = *(a2 + 40);
    v43.i32[0] = *(a2 + 44);
    v163 = (-(v53 * v44) - (*a2 * v51)) - (v45 * v43.f32[0]);
    v159 = (-(v53 * v50) - (v49 * v51)) - (v52 * v43.f32[0]);
    v161 = (-(v53 * v47) - (v46 * v51)) - (v48 * v43.f32[0]);
    v54 = a3->f32[1];
    v167.i32[0] = *a2;
    v166 = v46;
    v164.f32[0] = v49;
    v28.f32[0] = v44;
    v55 = v47;
    v56 = v50;
    v43.f32[0] = (*a2 * a3->f32[0]) + (v44 * v54);
    v57 = (v46 * a3->f32[0]) + (v47 * v54);
    v58 = (v49 * a3->f32[0]) + (v50 * v54);
    v59 = a3[1].f32[0];
    v6.f32[0] = v45;
    v60 = v48;
    v61 = v52;
    *&v183 = v43.f32[0] + (v45 * v59);
    *(&v183 + 1) = v57 + (v48 * v59);
    v184 = v58 + (v52 * v59);
    do
    {
      LODWORD(v179) = 0;
      LODWORD(v177) = 0;
      v169 = *&v190[v41];
      v62 = *&v190[v41 + 8];
      *&v181 = v163 + (((v167.f32[0] * v169.f32[0]) + vmuls_lane_f32(v28.f32[0], v169, 1)) + (v6.f32[0] * v62));
      *(&v181 + 1) = v161 + (((v166 * v169.f32[0]) + vmuls_lane_f32(v55, v169, 1)) + (v60 * v62));
      v182 = v159 + (((v164.f32[0] * v169.f32[0]) + vmuls_lane_f32(v56, v169, 1)) + (v61 * v62));
      v63 = physx::Gu::intersectRayAABB(&v187, &v185, &v181, &v183, &v179, &v177);
      if (v63 != -1)
      {
        v64 = *&v179;
        if (*&v179 >= 0.0 && *&v179 <= a6)
        {
          v67 = v66[1];
          v68 = -v67;
          v69 = v66[2];
          v70 = (-(v67 * *(a2 + 20)) - (*v66 * *(a2 + 8))) - (v69 * *(a2 + 32));
          *(a5 + 36) = vsub_f32(vsub_f32(vmul_n_f32(*(a2 + 12), v68), vmul_n_f32(*a2, *v66)), vmul_n_f32(*(a2 + 24), v69));
          *(a5 + 44) = v70;
          v71 = v62 + (v64 * a3[1].f32[0]);
          *(a5 + 24) = vadd_f32(v169, vmul_n_f32(*a3, v64));
          *(a5 + 32) = v71;
          v30 = 1;
          a6 = v64;
        }
      }

      v41 += 12;
    }

    while (v41 != 96);
    v72 = 0;
    v74 = a1[1];
    v73 = a1[2];
    v75 = *(a1 + 28);
    v76 = *(a1 + 24);
    v77 = *(a1 + 20);
    v78 = *(a1 + 12);
    v79 = *(a1 + 8);
    v80 = *(a1 + 4);
    v81 = *a1;
    do
    {
      v192 = vld3q_f32(v82);
      v83 = vaddq_f32(vmulq_n_f32(v192.val[0], *&v81), vmulq_n_f32(v192.val[1], *&v78));
      v84 = vaddq_f32(vmulq_n_f32(v192.val[0], *&v80), vmulq_n_f32(v192.val[1], *&v74));
      v85 = vaddq_f32(vmulq_n_f32(v192.val[0], *&v79), vmulq_n_f32(v192.val[1], *&v77));
      v192.val[0] = vmulq_n_f32(v192.val[2], *&v73);
      v192.val[1] = vaddq_f32(v83, vmulq_n_f32(v192.val[2], *&v76));
      v192.val[2] = vaddq_f32(v84, vmulq_n_f32(v192.val[2], *&v75));
      v86 = vaddq_f32(v85, v192.val[0]);
      v87 = (&v187 + v72);
      vst3q_f32(v87, *(&v192 + 16));
      v72 += 48;
    }

    while (v72 != 144);
    v88 = 0;
    v90 = *(a2 + 16);
    v89 = *(a2 + 32);
    v91 = *(a2 + 28);
    v92 = *(a2 + 24);
    v93 = *(a2 + 20);
    v94 = *(a2 + 12);
    v95 = *(a2 + 8);
    v96 = *(a2 + 4);
    v97 = *a2;
    do
    {
      v193 = vld3q_f32(v98);
      v99 = vaddq_f32(vmulq_n_f32(v193.val[0], *&v97), vmulq_n_f32(v193.val[1], *&v94));
      v100 = vaddq_f32(vmulq_n_f32(v193.val[0], *&v96), vmulq_n_f32(v193.val[1], *&v90));
      v101 = vaddq_f32(vmulq_n_f32(v193.val[0], *&v95), vmulq_n_f32(v193.val[1], *&v93));
      v193.val[0] = vmulq_n_f32(v193.val[2], *&v89);
      v193.val[1] = vaddq_f32(v99, vmulq_n_f32(v193.val[2], *&v92));
      v193.val[2] = vaddq_f32(v100, vmulq_n_f32(v193.val[2], *&v91));
      v102 = vaddq_f32(v101, v193.val[0]);
      v103 = (&v185 + v88);
      vst3q_f32(v103, *(&v193 + 16));
      v88 += 48;
    }

    while (v88 != 144);
    for (i = 0; i != 12; ++i)
    {
      v105 = &v187 + 3 * i;
      v106 = *v105;
      v107 = v105[1];
      v108 = v105[2];
      if ((((v107 * a3->f32[1]) + (*v105 * a3->f32[0])) + (v108 * a3[1].f32[0])) >= 0.0)
      {
        v109 = &physx::Gu::getBoxEdges(void)::Indices[2 * i];
        v110 = &v190[12 * *v109];
        v111 = *v110;
        v112 = v110[1];
        v179 = __PAIR64__(LODWORD(v112), LODWORD(v111));
        v113 = v110[2];
        v180 = v113;
        v114 = &v190[12 * v109[1]];
        v115 = *v114;
        v116 = v114[1];
        v177 = __PAIR64__(LODWORD(v116), LODWORD(v115));
        v117 = v114[2];
        v178 = v117;
        v118 = v115 - v111;
        v119 = v116 - v112;
        v120 = v117 - v113;
        v121 = sqrtf(((v119 * v119) + (v118 * v118)) + (v120 * v120));
        if (v121 > 0.0)
        {
          v122 = 0.01 / v121;
          v123 = v118 * v122;
          v124 = v119 * v122;
          v125 = v120 * v122;
          *&v179 = v111 - v123;
          *(&v179 + 1) = v112 - v124;
          v180 = v113 - v125;
          *&v177 = v115 + v123;
          *(&v177 + 1) = v116 + v124;
          v178 = v117 + v125;
        }

        v126 = &v186;
        v127 = &byte_1ECF17D51;
        v128 = 12;
        do
        {
          v129 = *(v126 - 2);
          v130 = *(v126 - 1);
          if ((((v130 * a3->f32[1]) + (v129 * a3->f32[0])) + (*v126 * a3[1].f32[0])) < 0.0 && (((v107 * v130) + (v106 * v129)) + (v108 * *v126)) < 0.0)
          {
            v131 = &v189[12 * *(v127 - 1)];
            v132 = *v131;
            v133 = v131[1];
            v175 = __PAIR64__(LODWORD(v133), LODWORD(v132));
            v134 = v131[2];
            v176 = v134;
            v135 = &v189[12 * *v127];
            v136 = *v135;
            v137 = v135[1];
            v173 = __PAIR64__(LODWORD(v137), LODWORD(v136));
            v138 = v135[2];
            v174 = v138;
            v139 = v136 - v132;
            v140 = v137 - v133;
            v141 = v138 - v134;
            v142 = sqrtf(((v140 * v140) + (v139 * v139)) + (v141 * v141));
            if (v142 > 0.0)
            {
              v143 = 0.01 / v142;
              v144 = v139 * v143;
              v145 = v140 * v143;
              v146 = v141 * v143;
              *&v175 = v132 - v144;
              *(&v175 + 1) = v133 - v145;
              v176 = v134 - v146;
              *&v173 = v136 + v144;
              *(&v173 + 1) = v137 + v145;
              v174 = v138 + v146;
            }

            v172 = 0.0;
            if (physx::Gu::intersectEdgeEdge(&v179, &v177, a3, &v175, &v173, &v172, &v170))
            {
              v147 = v172;
              if (v172 <= a6)
              {
                v56 = v180;
                v184 = v180;
                v6 = v179;
                v183 = v179;
                v167 = v177;
                v169.f32[0] = v178;
                v55 = v176;
                v182 = v176;
                v28 = v175;
                v181 = v175;
                v164 = v173;
                v166 = v174;
                v148 = (v172 * a3[1].f32[0]) + v171;
                *(a5 + 24) = vadd_f32(vmul_n_f32(*a3, v172), v170);
                *(a5 + 32) = v148;
                v30 = 2;
                a6 = v147;
              }
            }
          }

          v127 += 2;
          v126 += 3;
          --v128;
        }

        while (v128);
      }
    }

    v13 = v30 != -1;
    if (v30 != -1)
    {
      if (v30 == 2)
      {
        v187 = vsub_f32(v167, v6);
        v188 = v169.f32[0] - v56;
        v185 = vsub_f32(v164, v28);
        v186 = v166 - v55;
        physx::Gu::computeEdgeEdgeNormal((a5 + 36), &v183, &v187, &v181, &v185, a3, a6);
        v149 = *(a5 + 36);
        v150 = vmul_f32(v149, v149);
        v151 = *(a5 + 44);
        v152 = sqrtf((v150.f32[1] + (v149.f32[0] * v149.f32[0])) + (v151 * v151));
        if (v152 > 0.0)
        {
          v153 = 1.0 / v152;
          *(a5 + 36) = vmul_n_f32(v149, v153);
          *(a5 + 44) = v151 * v153;
        }
      }

      *(a5 + 20) = 3;
      *(a5 + 48) = a6;
    }
  }

  else
  {
    *(a5 + 20) = 2;
    *(a5 + 48) = 0;
    v12 = -a3[1].f32[0];
    *(a5 + 36) = vneg_f32(*a3);
    *(a5 + 44) = v12;
    return 1;
  }

  return v13;
}

uint64_t physx::Gu::sweepBoxSphere(Sphere *a1, float32x2_t *a2, float32x2_t *a3, float *a4, float32x2_t *a5, _WORD *a6, float a7, float a8)
{
  v110 = *MEMORY[0x1E69E9840];
  if ((*a6 & 0x10) != 0 || (v107 = *a2, v108 = a2[1].i32[0], v109 = a7, !physx::Gu::intersectSphereBox(&v107, a1, a3)))
  {
    physx::Gu::computeOBBPoints(&v107, (a1 + 36), a1 + 12, a1, (a1 + 12), a1 + 3);
    v17 = 0;
    v16 = 0;
    do
    {
      v18 = (&v107 + 12 * physx::Gu::getBoxEdges(void)::Indices[v17]);
      v19 = &v107 + 12 * physx::Gu::getBoxEdges(void)::Indices[v17 + 1];
      v20 = *(v19 + 1);
      v21 = *v19 - COERCE_FLOAT(*v18);
      v22 = vdup_lane_s32(*v18, 1);
      *&v23 = *v18;
      DWORD2(v23) = v18[1].i32[0];
      HIDWORD(v23) = *v19;
      v24 = *a2;
      v25 = vsub_f32(*a2, *v18).f32[0];
      *v99 = v23;
      v26 = *(v19 + 2);
      *&v99[16] = v20;
      v100 = v26;
      v101 = a7;
      v27 = v26 - *(&v23 + 2);
      v28 = vsub_f32(__PAIR64__(v24.u32[1], v20), v22);
      v29 = a2[1].f32[0];
      v30 = v29 - *(&v23 + 2);
      v31 = v28.f32[1];
      v32 = (vmuls_lane_f32(v28.f32[0], v28, 1) + (v25 * v21)) + ((v29 - *(&v23 + 2)) * v27);
      if (v32 > 0.0)
      {
        v33 = (vmul_f32(v28, v28).f32[0] + (v21 * v21)) + (v27 * v27);
        if (v32 >= v33)
        {
          v25 = v25 - v21;
          v31 = v28.f32[1] - v28.f32[0];
        }

        else
        {
          v34 = v32 / v33;
          v27 = v27 * v34;
          v25 = v25 - (v21 * v34);
          v31 = v28.f32[1] - (v28.f32[0] * v34);
        }

        v30 = v30 - v27;
      }

      v35 = sqrtf(((v31 * v31) + (v25 * v25)) + (v30 * v30)) - a7;
      if (v35 <= 0.0)
      {
        v40 = 0;
        v39 = 0.0;
      }

      else
      {
        v36 = v35 + -10.0;
        if (v35 <= 10.0)
        {
          v36 = 0.0;
        }

        v37 = v29 + (v36 * a3[1].f32[0]);
        v93 = v36;
        v102 = vadd_f32(v24, vmul_n_f32(*a3, v36));
        v103 = v37;
        physx::Gu::intersectRayCapsuleInternal(&v102, a3, v99, (v99 | 0xC), &v104, a7);
        v39 = 0.0;
        v40 = v38 == 0;
        if (v38)
        {
          v41 = v104;
          if (v104 >= v105 && v38 != 1)
          {
            v41 = v105;
          }

          v39 = v93 + v41;
        }
      }

      if (!v40 && v39 >= 0.0 && v39 <= a8)
      {
        v43 = (v39 * a3[1].f32[0]) + a2[1].f32[0];
        v44 = vadd_f32(vmul_n_f32(*a3, v39), *a2);
        v45 = vsub_f32(*&v99[12], *v99);
        v46 = v100 - *&v99[8];
        v47 = vsub_f32(v44, *v99);
        v48 = (COERCE_FLOAT(vmul_f32(v45, v47).i32[1]) + (v47.f32[0] * v45.f32[0])) + ((v43 - *&v99[8]) * (v100 - *&v99[8]));
        v49 = 0.0;
        if (v48 > 0.0)
        {
          v50 = (vmuls_lane_f32(v45.f32[1], v45, 1) + (v45.f32[0] * v45.f32[0])) + (v46 * v46);
          v49 = 1.0;
          if (v48 < v50)
          {
            v49 = v48 / v50;
          }
        }

        v51 = vsub_f32(vadd_f32(*v99, vmul_n_f32(v45, v49)), v44);
        v52 = (*&v99[8] + (v46 * v49)) - v43;
        *a5 = v51;
        a5[1].f32[0] = v52;
        v53 = sqrtf((COERCE_FLOAT(vmul_f32(v51, v51).i32[1]) + (v51.f32[0] * v51.f32[0])) + (v52 * v52));
        if (v53 > 0.0)
        {
          v54 = 1.0 / v53;
          *a5 = vmul_n_f32(v51, v54);
          a5[1].f32[0] = v52 * v54;
        }

        v16 = 1;
        a8 = v39;
      }

      v17 += 2;
    }

    while (v17 != 24);
    v55 = *(a1 + 2);
    v56 = *(a1 + 5);
    v57 = *a1;
    v58 = *(a1 + 12);
    v59 = *(a1 + 24);
    v60 = *(a1 + 8);
    v61 = a2->f32[0] - *(a1 + 9);
    v62 = a2->f32[1] - *(a1 + 10);
    v63 = a2[1].f32[0] - *(a1 + 11);
    *v99 = (vmuls_lane_f32(v62, *a1, 1) + (COERCE_FLOAT(*a1) * v61)) + (v55 * v63);
    *&v99[4] = (vmuls_lane_f32(v62, v58, 1) + (v58.f32[0] * v61)) + (v56 * v63);
    *&v99[8] = (vmuls_lane_f32(v62, v59, 1) + (v59.f32[0] * v61)) + (v60 * v63);
    v64 = a3->f32[0];
    v65 = a3->f32[1];
    v91 = v58;
    v92 = v57;
    v66 = a3[1].f32[0];
    v90 = v55;
    v67 = (vmuls_lane_f32(v65, v58, 1) + (v58.f32[0] * a3->f32[0])) + (v56 * v66);
    v94 = v59;
    v102.f32[0] = (vmuls_lane_f32(v65, v57, 1) + (v57.f32[0] * a3->f32[0])) + (v55 * v66);
    v102.f32[1] = v67;
    v98 = 0;
    v69 = *(a1 + 12);
    v68 = *(a1 + 13);
    v70 = *(a1 + 14);
    v105 = v68;
    v106 = v70;
    v103 = (vmuls_lane_f32(v65, v59, 1) + (v59.f32[0] * v64)) + (v60 * v66);
    v104 = v69 + a7;
    v71 = -v70;
    v95 = -(v69 + a7);
    v96 = -v68;
    v97 = -v70;
    v72 = physx::Gu::intersectRayAABB(&v95, &v104, v99, &v102, &v98 + 1, &v98);
    if (v72 != -1 && *(&v98 + 1) >= -0.00001 && *(&v98 + 1) <= a8)
    {
      a8 = fmaxf(*(&v98 + 1), 0.0);
      v74 = v73[1];
      v75 = v73[2];
      v76 = ((v90 * *v73) + (v56 * v74)) + (v60 * v75);
      *a5 = vadd_f32(vadd_f32(vmul_n_f32(v92, *v73), vmul_n_f32(v91, v74)), vmul_n_f32(v94, v75));
      a5[1].f32[0] = v76;
      v69 = *(a1 + 12);
      v68 = *(a1 + 13);
      v70 = *(a1 + 14);
      v71 = -v70;
      v16 = 1;
    }

    v104 = v69;
    v105 = v68 + a7;
    v106 = v70;
    v77 = -v69;
    v95 = -v69;
    v96 = -(v68 + a7);
    v97 = v71;
    v78 = physx::Gu::intersectRayAABB(&v95, &v104, v99, &v102, &v98 + 1, &v98);
    if (v78 != -1 && *(&v98 + 1) >= -0.00001 && *(&v98 + 1) <= a8)
    {
      a8 = fmaxf(*(&v98 + 1), 0.0);
      v80 = v79[1];
      v81 = v79[2];
      v82 = ((*v79 * *(a1 + 2)) + (v80 * *(a1 + 5))) + (v81 * *(a1 + 8));
      *a5 = vadd_f32(vadd_f32(vmul_n_f32(*a1, *v79), vmul_n_f32(*(a1 + 12), v80)), vmul_n_f32(*(a1 + 24), v81));
      a5[1].f32[0] = v82;
      v69 = *(a1 + 12);
      v68 = *(a1 + 13);
      v70 = *(a1 + 14);
      v77 = -v69;
      v16 = 1;
    }

    v104 = v69;
    v105 = v68;
    v106 = v70 + a7;
    v95 = v77;
    v96 = -v68;
    v97 = -(v70 + a7);
    v83 = physx::Gu::intersectRayAABB(&v95, &v104, v99, &v102, &v98 + 1, &v98);
    if (v83 == -1 || *(&v98 + 1) < -0.00001)
    {
      v84 = a4;
    }

    else
    {
      v84 = a4;
      if (*(&v98 + 1) <= a8)
      {
        a8 = fmaxf(*(&v98 + 1), 0.0);
        v86 = v85[1];
        v87 = v85[2];
        v88 = ((*v85 * *(a1 + 2)) + (v86 * *(a1 + 5))) + (v87 * *(a1 + 8));
        *a5 = vadd_f32(vadd_f32(vmul_n_f32(*a1, *v85), vmul_n_f32(*(a1 + 12), v86)), vmul_n_f32(*(a1 + 24), v87));
        a5[1].f32[0] = v88;
        v16 = 1;
      }
    }

    *v84 = a8;
  }

  else
  {
    *a4 = 0.0;
    v15 = -a3[1].f32[0];
    *a5 = vneg_f32(*a3);
    a5[1].f32[0] = v15;
    v16 = 1;
  }

  return v16 & 1;
}

uint64_t physx::Gu::triBoxSweepTestBoxSpace(float *a1, float *a2, float *a3, float *a4, float *a5, char a6, float a7)
{
  v7 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = v9 - *a1;
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  v16 = v14 - *a1;
  v17 = a1[8];
  v18 = ((v12 - v8) * (v17 - v10)) - ((v13 - v10) * (v15 - v8));
  v19 = ((v13 - v10) * v16) - (v11 * (v17 - v10));
  v20 = (v11 * (v15 - v8)) - ((v12 - v8) * v16);
  v21 = *a3;
  v22 = a3[1];
  v23 = v22 * v19;
  if (a6)
  {
    v24 = a3[2];
    v25 = (v23 + (v18 * v21)) + (v20 * v24);
    if (v25 >= 0.0)
    {
      return 0;
    }
  }

  else
  {
    v24 = a3[2];
    v25 = (v23 + (v21 * v18)) + (v24 * v20);
  }

  v27 = ((v8 * v19) + (v7 * v18)) + (v10 * v20);
  v28 = ((v12 * v19) + (v9 * v18)) + (v13 * v20);
  v29 = ((v15 * v19) + (v14 * v18)) + (v17 * v20);
  if (v27 >= v28)
  {
    v30 = ((v12 * v19) + (v9 * v18)) + (v13 * v20);
  }

  else
  {
    v30 = ((v8 * v19) + (v7 * v18)) + (v10 * v20);
  }

  if (v27 <= v28)
  {
    v27 = ((v12 * v19) + (v9 * v18)) + (v13 * v20);
  }

  if (v30 >= v29)
  {
    v30 = ((v15 * v19) + (v14 * v18)) + (v17 * v20);
  }

  if (v27 <= v29)
  {
    v27 = ((v15 * v19) + (v14 * v18)) + (v17 * v20);
  }

  v31 = fabsf(v18);
  v32 = fabsf(v19);
  v33 = *a2;
  v34 = a2[1];
  v35 = (v32 * v34) + (v31 * *a2);
  v36 = fabsf(v20);
  v37 = a2[2];
  v38 = v35 + (v36 * v37);
  v39 = -v38 - v27;
  v41 = (v38 - v30) >= 0.0 && v39 <= 0.0;
  if (fabsf(v25) >= 0.000001)
  {
    v44 = -1.0 / v25;
    v45 = v44 * v39;
    v46 = v44 * (v38 - v30);
    if (v45 >= v46)
    {
      v47 = v44 * (v38 - v30);
    }

    else
    {
      v47 = v45;
    }

    if (v45 <= v46)
    {
      v45 = v46;
    }

    if (v47 > 3.4028e38 || v45 < -3.4028e38)
    {
      return 0;
    }

    v42 = fminf(v45, 3.4028e38);
    v43 = fmaxf(v47, -3.4028e38);
  }

  else
  {
    if (!v41)
    {
      return 0;
    }

    v42 = 3.4028e38;
    v43 = -3.4028e38;
  }

  if (v7 >= v9)
  {
    v49 = a1[3];
  }

  else
  {
    v49 = *a1;
  }

  if (v7 <= v9)
  {
    v50 = a1[3];
  }

  else
  {
    v50 = *a1;
  }

  if (v49 >= v14)
  {
    v51 = a1[6];
  }

  else
  {
    v51 = v49;
  }

  if (v50 <= v14)
  {
    v52 = a1[6];
  }

  else
  {
    v52 = v50;
  }

  v53 = -v33 - v52;
  v55 = (v33 - v51) >= 0.0 && v53 <= 0.0;
  if (fabsf(v21) >= 0.000001)
  {
    v56 = -(*a4 * v53);
    v57 = -(*a4 * (v33 - v51));
    if (v56 >= v57)
    {
      v58 = -(*a4 * (v33 - v51));
    }

    else
    {
      v58 = -(*a4 * v53);
    }

    if (v56 > v57)
    {
      v57 = v56;
    }

    if (v58 > v42 || v57 < v43)
    {
      return 0;
    }

    if (v57 < v42)
    {
      v42 = v57;
    }

    if (v58 > v43)
    {
      v43 = v58;
    }
  }

  else if (!v55)
  {
    return 0;
  }

  if (v8 >= v12)
  {
    v60 = a1[4];
  }

  else
  {
    v60 = a1[1];
  }

  if (v8 <= v12)
  {
    v61 = a1[4];
  }

  else
  {
    v61 = a1[1];
  }

  if (v60 >= v15)
  {
    v62 = a1[7];
  }

  else
  {
    v62 = v60;
  }

  if (v61 <= v15)
  {
    v63 = a1[7];
  }

  else
  {
    v63 = v61;
  }

  v64 = -v34 - v63;
  v65 = v34 - v62;
  v67 = (v34 - v62) >= 0.0 && v64 <= 0.0;
  if (fabsf(v22) >= 0.000001)
  {
    v68 = a4[1];
    v69 = -(v68 * v64);
    v70 = -(v68 * v65);
    if (v69 >= v70)
    {
      v71 = v70;
    }

    else
    {
      v71 = -(v68 * v64);
    }

    if (v69 > v70)
    {
      v70 = v69;
    }

    if (v71 > v42 || v70 < v43)
    {
      return 0;
    }

    if (v70 < v42)
    {
      v42 = v70;
    }

    if (v71 > v43)
    {
      v43 = v71;
    }
  }

  else if (!v67)
  {
    return 0;
  }

  if (v10 >= v13)
  {
    v73 = a1[5];
  }

  else
  {
    v73 = a1[2];
  }

  if (v10 <= v13)
  {
    v74 = a1[5];
  }

  else
  {
    v74 = a1[2];
  }

  if (v73 >= v17)
  {
    v75 = a1[8];
  }

  else
  {
    v75 = v73;
  }

  if (v74 <= v17)
  {
    v76 = a1[8];
  }

  else
  {
    v76 = v74;
  }

  v77 = -v37 - v76;
  v78 = v37 - v75;
  v79 = v77 <= 0.0;
  if ((v37 - v75) < 0.0)
  {
    v79 = 0;
  }

  if (fabsf(v24) >= 0.000001)
  {
    v80 = a4[2];
    v81 = -(v80 * v77);
    v82 = -(v80 * v78);
    if (v81 >= v82)
    {
      v83 = v82;
    }

    else
    {
      v83 = -(v80 * v77);
    }

    if (v81 > v82)
    {
      v82 = v81;
    }

    if (v83 > v42 || v82 < v43)
    {
      return 0;
    }

    if (v82 < v42)
    {
      v42 = v82;
    }

    if (v83 > v43)
    {
      v43 = v83;
    }
  }

  else if (!v79)
  {
    return 0;
  }

  v85 = v79 && v67 && v55 && v41;
  v141 = v12 * 0.0;
  v142 = v8 * 0.0;
  v87 = a1 + 2;
  v88 = -3;
  do
  {
    v89 = v88 + 4;
    if (v88 == -1)
    {
      v89 = 0;
    }

    v90 = &a1[3 * v89];
    v91 = *v90;
    v92 = v90[1] - *(v87 - 1);
    v93 = v90[2] - *v87;
    if (((v93 * v93) + (v92 * v92)) >= 0.000001)
    {
      v94 = ((v7 * 0.0) - (v93 * v8)) + (v10 * v92);
      v95 = ((v9 * 0.0) - (v93 * v12)) + (v13 * v92);
      v96 = ((v14 * 0.0) - (v93 * v15)) + (v17 * v92);
      if (v94 >= v95)
      {
        v97 = ((v9 * 0.0) - (v93 * v12)) + (v13 * v92);
      }

      else
      {
        v97 = ((v7 * 0.0) - (v93 * v8)) + (v10 * v92);
      }

      if (v94 <= v95)
      {
        v94 = ((v9 * 0.0) - (v93 * v12)) + (v13 * v92);
      }

      if (v97 >= v96)
      {
        v97 = ((v14 * 0.0) - (v93 * v15)) + (v17 * v92);
      }

      if (v94 <= v96)
      {
        v94 = ((v14 * 0.0) - (v93 * v15)) + (v17 * v92);
      }

      v98 = ((v34 * fabsf(v93)) + (v33 * 0.0)) + (fabsf(v92) * v37);
      v99 = -v98 - v94;
      v100 = v98 - v97;
      v101 = v99 <= 0.0;
      if ((v98 - v97) < 0.0)
      {
        v101 = 0;
      }

      v102 = ((v21 * 0.0) - (v93 * v22)) + (v24 * v92);
      if (fabsf(v102) >= 0.000001)
      {
        v103 = (-1.0 / v102) * v99;
        v104 = (-1.0 / v102) * v100;
        if (v103 >= v104)
        {
          v105 = (-1.0 / v102) * v100;
        }

        else
        {
          v105 = (-1.0 / v102) * v99;
        }

        if (v103 <= v104)
        {
          v106 = (-1.0 / v102) * v100;
        }

        else
        {
          v106 = v103;
        }

        if (v105 > v42 || v106 < v43)
        {
          return 0;
        }

        v85 &= v101;
        if (v106 < v42)
        {
          v42 = v106;
        }

        if (v105 > v43)
        {
          v43 = v105;
        }
      }

      else if (!v101)
      {
        return 0;
      }
    }

    v108 = v91 - *(v87 - 2);
    if ((((v93 * v93) + 0.0) + (v108 * v108)) >= 0.000001)
    {
      v109 = (v142 + (v7 * v93)) - (v10 * v108);
      v110 = (v141 + (v9 * v93)) - (v13 * v108);
      v86 = v15 * 0.0;
      v111 = ((v15 * 0.0) + (v14 * v93)) - (v17 * v108);
      if (v109 >= v110)
      {
        v112 = (v141 + (v9 * v93)) - (v13 * v108);
      }

      else
      {
        v112 = (v142 + (v7 * v93)) - (v10 * v108);
      }

      if (v109 <= v110)
      {
        v109 = (v141 + (v9 * v93)) - (v13 * v108);
      }

      if (v112 >= v111)
      {
        v113 = (v86 + (v14 * v93)) - (v17 * v108);
      }

      else
      {
        v113 = v112;
      }

      if (v109 <= v111)
      {
        v109 = (v86 + (v14 * v93)) - (v17 * v108);
      }

      v114 = ((v34 * 0.0) + (fabsf(v93) * v33)) + (fabsf(v108) * v37);
      v115 = -v114 - v109;
      v116 = v114 - v113;
      v117 = v115 <= 0.0;
      if (v116 < 0.0)
      {
        v117 = 0;
      }

      v118 = ((v22 * 0.0) + (v21 * v93)) - (v24 * v108);
      if (fabsf(v118) >= 0.000001)
      {
        v119 = (-1.0 / v118) * v115;
        v120 = (-1.0 / v118) * v116;
        if (v119 >= v120)
        {
          v121 = (-1.0 / v118) * v116;
        }

        else
        {
          v121 = (-1.0 / v118) * v115;
        }

        if (v119 <= v120)
        {
          v122 = (-1.0 / v118) * v116;
        }

        else
        {
          v122 = (-1.0 / v118) * v115;
        }

        if (v121 > v42 || v122 < v43)
        {
          return 0;
        }

        v85 &= v117;
        if (v122 < v42)
        {
          v42 = v122;
        }

        if (v121 > v43)
        {
          v43 = v121;
        }
      }

      else if (!v117)
      {
        return 0;
      }
    }

    if (((v108 * v108) + (v92 * v92)) >= 0.000001)
    {
      v124 = ((v8 * v108) - (v7 * v92)) + (v10 * 0.0);
      v125 = ((v12 * v108) - (v9 * v92)) + (v13 * 0.0);
      v126 = ((v15 * v108) - (v14 * v92)) + (v17 * 0.0);
      if (v124 >= v125)
      {
        v127 = ((v12 * v108) - (v9 * v92)) + (v13 * 0.0);
      }

      else
      {
        v127 = ((v8 * v108) - (v7 * v92)) + (v10 * 0.0);
      }

      if (v124 <= v125)
      {
        v124 = ((v12 * v108) - (v9 * v92)) + (v13 * 0.0);
      }

      if (v127 >= v126)
      {
        v128 = ((v15 * v108) - (v14 * v92)) + (v17 * 0.0);
      }

      else
      {
        v128 = v127;
      }

      if (v124 <= v126)
      {
        v124 = ((v15 * v108) - (v14 * v92)) + (v17 * 0.0);
      }

      v129 = ((v34 * fabsf(v108)) + (fabsf(v92) * v33)) + (v37 * 0.0);
      v130 = -v129 - v124;
      v131 = v129 - v128;
      v132 = v130 <= 0.0;
      if (v131 < 0.0)
      {
        v132 = 0;
      }

      v133 = ((v22 * v108) - (v21 * v92)) + (v24 * 0.0);
      if (fabsf(v133) >= 0.000001)
      {
        v134 = (-1.0 / v133) * v130;
        v135 = (-1.0 / v133) * v131;
        if (v134 >= v135)
        {
          v136 = (-1.0 / v133) * v131;
        }

        else
        {
          v136 = (-1.0 / v133) * v130;
        }

        if (v134 <= v135)
        {
          v137 = (-1.0 / v133) * v131;
        }

        else
        {
          v137 = (-1.0 / v133) * v130;
        }

        if (v136 > v42 || v137 < v43)
        {
          return 0;
        }

        v85 &= v132;
        if (v137 < v42)
        {
          v42 = v137;
        }

        if (v136 > v43)
        {
          v43 = v136;
        }
      }

      else if (!v132)
      {
        return 0;
      }
    }

    v87 += 3;
  }

  while (!__CFADD__(v88++, 1));
  result = 0;
  if (v43 <= a7 && v42 >= 0.0)
  {
    if ((v43 > 0.0) | v85 & 1)
    {
      v140 = 0.0;
      if (v43 > 0.0)
      {
        v140 = v43;
      }

      *a5 = v140;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t physx::Gu::sweepCapsuleBox(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4, uint64_t a5, float *a6, uint64_t a7, _WORD *a8, float a9)
{
  v173 = *MEMORY[0x1E69E9840];
  if ((*a8 & 0x10) != 0)
  {
    goto LABEL_4;
  }

  v17 = vdup_lane_s32(*a2, 1);
  v18 = vdup_laneq_s32(*a2, 2);
  v19 = vdup_laneq_s32(*a2, 3);
  _Q4 = vaddq_f32(*a2, *a2);
  v21 = vdup_lane_s32(vmul_f32(*a2, *_Q4.f32), 0);
  v22 = vmul_lane_f32(v17, *_Q4.f32, 1);
  v23 = vmul_laneq_f32(v18, _Q4, 2);
  v24 = vmul_n_f32(v17, _Q4.f32[0]);
  v25 = vmul_n_f32(v18, _Q4.f32[0]);
  v26 = vmul_n_f32(v19, _Q4.f32[0]);
  v27 = vmul_lane_f32(v18, *_Q4.f32, 1);
  v28 = vmul_lane_f32(v19, *_Q4.f32, 1);
  *&v29 = vmul_laneq_f32(v19, _Q4, 2);
  __asm { FMOV            V4.2S, #1.0 }

  v34 = vsub_f32(*_Q4.f32, v21);
  _Q4.i32[0] = vadd_f32(v24, *&v29).u32[0];
  LODWORD(v35) = vsub_f32(v25, v28).u32[0];
  v36 = vsub_f32(v24, *&v29);
  LODWORD(v29) = vsub_f32(v34, v23).u32[0];
  *&v168 = (1.0 - v22.f32[1]) - v23.f32[1];
  HIDWORD(v168) = _Q4.i32[0];
  HIDWORD(v35) = v36.i32[1];
  v169 = v35;
  *(&v29 + 1) = vext_s8(vadd_f32(v25, v28), vsub_f32(v27, v26), 4uLL);
  DWORD1(v29) = vadd_f32(v27, v26).u32[0];
  v170 = v29;
  *&v171 = vsub_f32(v34, v22).u32[0];
  physx::Gu::distanceSegmentBoxSquared(a1, (a1 + 12), (a2 + 16), a3, &v168, 0, 0);
  if (v37 >= (*(a1 + 24) * *(a1 + 24)))
  {
LABEL_4:
    v40 = *(a1 + 12);
    v41 = *a1;
    v140 = *(a1 + 20) - *(a1 + 8);
    v141 = a9;
    v42 = a3->i32[0];
    v43 = a3->f32[1];
    v44 = -a3->f32[0];
    v45 = a3[1].f32[0];
    v143 = 1;
    v46 = physx::shdfnd::TempAllocator::allocate(&v168, 3024, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/sweep/GuSweepCapsuleBox.cpp", 198);
    v50 = 0;
    v142 = v46;
    v145.f32[0] = v44;
    v145.f32[1] = -v43;
    v146 = -v45;
    v147 = v42;
    v148 = -v43;
    v149 = -v45;
    v150 = v42;
    v151 = v43;
    v152 = -v45;
    v153 = v44;
    v154 = v43;
    v155 = -v45;
    v156 = v44;
    v157 = -v43;
    v158 = v45;
    v159 = v42;
    v160 = -v43;
    v161 = v45;
    v162 = v42;
    v163 = v43;
    v164 = v45;
    v165 = v44;
    v166 = v43;
    v167 = v45;
    _Q0.i64[0] = *a2;
    v53.i32[0] = *(a2 + 8);
    v52 = *(a2 + 12);
    v54 = vdup_lane_s32(*a2, 0);
    *v55.i32 = (v52 * v52) + -0.5;
    *v56.i8 = vneg_f32(__PAIR64__(v54.u32[1], v53.u32[0]));
    LODWORD(v57) = HIDWORD(*a2);
    v58.i64[0] = *(a2 + 16);
    v59 = *(a2 + 24);
    v60 = vdup_lane_s32(*v53.i8, 0);
    v61 = vdupq_lane_s32(v55, 0);
    _Q25 = vuzp2q_s32(v58, vzip1q_s32(v58, v58));
    v63.i64[0] = v56.i64[0];
    v63.f32[2] = -v57;
    v63.i32[3] = v56.i32[0];
    v64 = vuzp2q_s32(_Q0, vzip1q_s32(_Q0, _Q0));
    v65 = v64;
    v65.i32[1] = v53.i32[0];
    v65.i32[3] = v64.i32[0];
    v66.i64[0] = v58.i64[0];
    v66.i64[1] = __PAIR64__(v58.u32[0], LODWORD(v59));
    v67.i64[0] = *a2;
    v67.i32[2] = v53.i32[0];
    v67.i32[3] = *a2;
    v68 = vuzp2q_s32(v56, vzip1q_s32(v56, v56));
    v69 = v68;
    v69.f32[1] = -v57;
    v69.i32[3] = v68.i32[0];
    v70 = vextq_s8(vextq_s8(v53, v53, 4uLL), _Q0, 0xCuLL);
    v70.i32[3] = v70.i32[0];
    v71 = _Q25;
    v71.f32[1] = v59;
    v71.i32[3] = _Q25.i32[0];
    v72 = &byte_1E311770D;
    do
    {
      v73 = &v145 + 3 * *(v72 - 1);
      v47.i32[0] = *v73;
      v74.i32[0] = v73[1];
      v49.i32[0] = v73[2];
      v75 = &v145 + 3 * *v72;
      v76 = (&v145 + 12 * v72[1]);
      *_Q25.i8 = vadd_f32(*v76, *v76);
      v77 = v76[1].f32[0] + v76[1].f32[0];
      *&v78 = (vmuls_lane_f32(v57, *_Q25.i8, 1) + (*_Q0.i32 * *_Q25.i32)) + (*v53.i32 * v77);
      __asm { FMLA            S8, S0, V25.S[1] }

      v47.i32[1] = *v75;
      *v48.f32 = vadd_f32(*v47.i8, *v47.i8);
      v74.i32[1] = v75[1];
      v80 = vadd_f32(v74, v74);
      v49.i32[1] = v75[2];
      *v49.i8 = vadd_f32(*v49.i8, *v49.i8);
      *v47.i8 = vmla_f32(vmla_f32(vmul_lane_f32(v80, *_Q0.i8, 1), *v48.f32, v54), *v49.i8, v60);
      *v81.i8 = vzip1_s32(v80, *v49.i8);
      v82 = vzip1q_s32(v47, v47);
      v81.i64[1] = __PAIR64__(v80.u32[1], v48.u32[0]);
      v82.i32[2] = v47.i32[0];
      v83 = vuzp1q_s32(vextq_s8(v81, v81, 8uLL), vuzp2q_s32(v81, v48));
      *v84.f32 = vzip2_s32(*v49.i8, *v48.f32);
      v84.i32[2] = vdup_lane_s32(*_Q25.i8, 1).u32[0];
      v85 = vmulq_f32(v81, v63);
      v86 = vzip1q_s32(vrev64q_s32(v81), v49);
      v86.i32[1] = v48.i32[0];
      v84.f32[3] = v77;
      *v48.f32 = vzip2_s32(*v48.f32, v80);
      v48.f32[2] = v77;
      v48.i32[3] = _Q25.i32[0];
      *v87.f32 = vzip2_s32(v80, *v49.i8);
      v87.i64[1] = _Q25.i64[0];
      _Q25.i32[0] = vdup_lane_s32(*v47.i8, 1).u32[0];
      v47 = vaddq_f32(v66, vmlaq_f32(vmlaq_f32(vmulq_n_f32(vmlaq_f32(v85, v86, v65), v52), v61, v83), v82, v67));
      _Q25.i32[1] = v78;
      _Q25 = vaddq_f32(v71, vmlaq_f32(vmlaq_f32(vmulq_n_f32(vmlaq_f32(vmulq_f32(v84, v69), v48, v70), v52), v61, v87), vzip1q_s32(_Q25, _Q25), v65));
      v88 = (&v168 + v50);
      *v88 = v47;
      v88[1] = _Q25;
      *v88[2].i32 = v59 + (((v52 * _S8) + (v77 * *v55.i32)) + (*v53.i32 * *&v78));
      v50 += 36;
      v72 += 3;
    }

    while (v50 != 432);
    v89 = 0;
    v90 = vmul_f32(vsub_f32(v40, v41), 0x3F0000003F000000);
    v91 = v141;
    v92 = v140 * 0.5;
    v93 = &v170;
    v94 = v144;
    do
    {
      v95 = *(v93 - 4);
      v97 = *(v93 - 2);
      v96 = *(v93 - 1);
      v98 = *v93;
      v99 = v93[1];
      v100 = *v93 - v95.f32[1];
      v101 = v93[2];
      v102 = v93[3];
      v103 = v93[4];
      v104 = (v100 * (v103 - v97)) - ((v99 - v97) * (v102 - v95.f32[1]));
      v105 = ((v99 - v97) * (v101 - v95.f32[0])) - ((v96 - v95.f32[0]) * (v103 - v97));
      v106 = ((v96 - v95.f32[0]) * (v102 - v95.f32[1])) - (v100 * (v101 - v95.f32[0]));
      if ((((a4->f32[1] * v105) + (v104 * a4->f32[0])) + (v106 * a4[1].f32[0])) <= 0.0)
      {
        v107 = COERCE_DOUBLE(vadd_f32(v90, v95));
        v108 = v92 + v97;
        v109 = v90.f32[0] + v96;
        v110 = v90.f32[1] + v98;
        v111 = v92 + v99;
        v112 = v90.f32[0] + v101;
        v113 = v90.f32[1] + v102;
        v114 = v92 + v103;
        v115 = COERCE_DOUBLE(vsub_f32(v95, v90));
        v116 = v97 - v92;
        v117 = v96 - v90.f32[0];
        v118 = v98 - v90.f32[1];
        v119 = v99 - v92;
        v120 = v101 - v90.f32[0];
        v121 = v102 - v90.f32[1];
        v122 = v103 - v92;
        v123 = ((v90.f32[1] * v105) + (v104 * v90.f32[0])) + (v106 * v92);
        v124 = v123 < 0.0;
        if (v123 < 0.0)
        {
          v125 = v116;
        }

        else
        {
          v125 = v108;
        }

        if (v124)
        {
          v126 = v117;
        }

        else
        {
          v126 = v109;
        }

        if (v124)
        {
          v127 = v118;
        }

        else
        {
          v127 = v110;
        }

        if (v124)
        {
          v128 = v119;
        }

        else
        {
          v128 = v111;
        }

        if (v124)
        {
          v129 = v120;
        }

        else
        {
          v129 = v112;
        }

        if (v124)
        {
          v130 = v121;
        }

        else
        {
          v130 = v113;
        }

        if (v124)
        {
          v131 = v122;
        }

        else
        {
          v131 = v114;
        }

        if (v124)
        {
          v132 = v115;
        }

        else
        {
          v132 = v107;
        }

        *v46 = v132;
        *(v46 + 2) = v125;
        *(v46 + 3) = v126;
        *(v46 + 4) = v127;
        *(v46 + 5) = v128;
        *(v46 + 6) = v129;
        *(v46 + 7) = v130;
        *(v46 + 8) = v131;
        v94->i32[0] = v89;
        *(v46 + 9) = v117;
        *(v46 + 10) = v118;
        *(v46 + 11) = v119;
        *(v46 + 12) = v109;
        *(v46 + 13) = v110;
        *(v46 + 14) = v111;
        *(v46 + 15) = v112;
        *(v46 + 16) = v113;
        *(v46 + 17) = v114;
        if (((((((v111 - v119) * (v112 - v117)) - ((v109 - v117) * (v114 - v119))) * a4->f32[1]) + ((((v110 - v118) * (v114 - v119)) - ((v111 - v119) * (v113 - v118))) * a4->f32[0])) + ((((v109 - v117) * (v113 - v118)) - ((v110 - v118) * (v112 - v117))) * a4[1].f32[0])) > 0.0)
        {
          *(v46 + 12) = v112;
          *(v46 + 13) = v113;
          *(v46 + 14) = v114;
          *(v46 + 15) = v109;
          *(v46 + 16) = v110;
          *(v46 + 17) = v111;
        }

        v94->i32[1] = v89;
        *(v46 + 18) = v117;
        *(v46 + 19) = v118;
        *(v46 + 20) = v119;
        *(v46 + 21) = v112;
        *(v46 + 22) = v113;
        *(v46 + 23) = v114;
        *(v46 + 24) = v120;
        *(v46 + 25) = v121;
        *(v46 + 26) = v122;
        if (((((((v114 - v119) * (v120 - v117)) - ((v112 - v117) * (v122 - v119))) * a4->f32[1]) + ((((v113 - v118) * (v122 - v119)) - ((v114 - v119) * (v121 - v118))) * a4->f32[0])) + ((((v112 - v117) * (v121 - v118)) - ((v113 - v118) * (v120 - v117))) * a4[1].f32[0])) > 0.0)
        {
          *(v46 + 21) = v120;
          *(v46 + 22) = v121;
          *(v46 + 23) = v122;
          *(v46 + 24) = v112;
          *(v46 + 25) = v113;
          *(v46 + 26) = v114;
        }

        v94[1].i32[0] = v89;
        *(v46 + 108) = v115;
        *(v46 + 29) = v116;
        *(v46 + 30) = v120;
        *(v46 + 31) = v121;
        *(v46 + 32) = v122;
        *(v46 + 33) = v112;
        *(v46 + 34) = v113;
        *(v46 + 35) = v114;
        if (((((((v122 - v116) * (v112 - *&v115)) - ((v120 - *&v115) * (v114 - v116))) * a4->f32[1]) + ((((v121 - *(&v115 + 1)) * (v114 - v116)) - ((v122 - v116) * (v113 - *(&v115 + 1)))) * a4->f32[0])) + ((((v120 - *&v115) * (v113 - *(&v115 + 1))) - ((v121 - *(&v115 + 1)) * (v112 - *&v115))) * a4[1].f32[0])) > 0.0)
        {
          *(v46 + 30) = v112;
          *(v46 + 31) = v113;
          *(v46 + 32) = v114;
          *(v46 + 33) = v120;
          *(v46 + 34) = v121;
          *(v46 + 35) = v122;
        }

        v94[1].i32[1] = v89;
        *(v46 + 18) = v115;
        *(v46 + 38) = v116;
        *(v46 + 39) = v112;
        *(v46 + 40) = v113;
        *(v46 + 41) = v114;
        *(v46 + 21) = v107;
        *(v46 + 44) = v108;
        v133 = vsub_f32(*&v107, *&v115).f32[0];
        if (((((((v114 - v116) * v133) - ((v112 - *&v115) * (v108 - v116))) * a4->f32[1]) + ((((v113 - *(&v115 + 1)) * (v108 - v116)) - ((v114 - v116) * (*(&v107 + 1) - *(&v115 + 1)))) * a4->f32[0])) + (((-(v113 - *(&v115 + 1)) * v133) + ((v112 - *&v115) * (*(&v107 + 1) - *(&v115 + 1)))) * a4[1].f32[0])) > 0.0)
        {
          *(v46 + 156) = v107;
          *(v46 + 41) = v108;
          *(v46 + 42) = v112;
          *(v46 + 43) = v113;
          *(v46 + 44) = v114;
        }

        v94[2].i32[0] = v89;
        *(v46 + 180) = v107;
        *(v46 + 47) = v108;
        *(v46 + 48) = v109;
        *(v46 + 49) = v110;
        *(v46 + 50) = v111;
        *(v46 + 51) = v117;
        *(v46 + 52) = v118;
        *(v46 + 53) = v119;
        v134 = v117 - *&v107;
        if (((((((v111 - v108) * (v117 - *&v107)) - ((v109 - *&v107) * (v119 - v108))) * a4->f32[1]) + ((((v110 - *(&v107 + 1)) * (v119 - v108)) - ((v111 - v108) * (v118 - *(&v107 + 1)))) * a4->f32[0])) + ((((v109 - *&v107) * (v118 - *(&v107 + 1))) - ((v110 - *(&v107 + 1)) * (v117 - *&v107))) * a4[1].f32[0])) > 0.0)
        {
          *(v46 + 48) = v117;
          *(v46 + 49) = v118;
          *(v46 + 50) = v119;
          *(v46 + 51) = v109;
          *(v46 + 52) = v110;
          *(v46 + 53) = v111;
        }

        v94[2].i32[1] = v89;
        *(v46 + 27) = v107;
        *(v46 + 56) = v108;
        *(v46 + 57) = v117;
        *(v46 + 58) = v118;
        *(v46 + 59) = v119;
        *(v46 + 30) = v115;
        *(v46 + 62) = v116;
        *&v107 = vsub_f32(*&v115, *&v107).f32[0];
        if (((((((v119 - v108) * *&v107) - (v134 * (v116 - v108))) * a4->f32[1]) + ((((v118 - *(&v107 + 1)) * (v116 - v108)) - ((v119 - v108) * (*(&v115 + 1) - *(&v107 + 1)))) * a4->f32[0])) + (((-(v118 - *(&v107 + 1)) * *&v107) + (v134 * (*(&v115 + 1) - *(&v107 + 1)))) * a4[1].f32[0])) > 0.0)
        {
          *(v46 + 228) = v115;
          *(v46 + 59) = v116;
          *(v46 + 60) = v117;
          *(v46 + 61) = v118;
          *(v46 + 62) = v119;
        }

        v46 = (v46 + 252);
        v94[3].i32[0] = v89;
        v94 = (v94 + 28);
      }

      ++v89;
      v93 += 9;
    }

    while (v89 != 12);
    v135 = *(a1 + 24);
    v136 = (*(a1 + 8) + *(a1 + 20)) * 0.5;
    v137 = vmul_f32(vadd_f32(*a1, *(a1 + 12)), 0x3F0000003F000000);
    v168 = 0;
    v169 = 0;
    LODWORD(v170) = -1;
    WORD2(v170) = 0;
    v171 = 0uLL;
    *(&v170 + 1) = 0;
    v172 = 2139095039;
    v138 = v142;
    v145 = v137;
    v146 = v136;
    v39 = physx::Gu::sweepSphereTriangles((v94 - v144) >> 2, v142, &v145, a4, 0, &v168, v144, 0, v135, v141, 0, 0, 0);
    if (v39)
    {
      *a5 = *(&v170 + 1);
      *(a5 + 8) = v171;
      *a7 = *(&v171 + 4);
      v91 = *&v172;
      *(a7 + 8) = HIDWORD(v171);
    }

    if (v143 == 1)
    {
      physx::shdfnd::TempAllocator::deallocate(&v142, v138);
    }

    *a6 = v91;
  }

  else
  {
    *a6 = 0.0;
    v38 = -a4[1].f32[0];
    *a7 = vneg_f32(*a4);
    *(a7 + 8) = v38;
    return 1;
  }

  return v39;
}

uint64_t physx::Gu::sweepCapsuleCapsule(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float *a4, float32x2_t *a5, float32x2_t *a6, char a7, __int16 *a8, float a9)
{
  v183 = *MEMORY[0x1E69E9840];
  v18 = *(a1 + 24) + a2[3].f32[0];
  v19.i32[0] = *a1;
  if ((a7 & 0x10) == 0)
  {
    v20 = *(a1 + 12);
    if (v19.f32[0] == v20)
    {
      v21 = *(a1 + 4);
      if (v21 == *(a1 + 16))
      {
        v22 = *(a1 + 8);
        if (v22 == *(a1 + 20))
        {
          v23 = a2->f32[1];
          v24 = a2[1].f32[0];
          v25 = a2[1].f32[1] - a2->f32[0];
          v26 = a2[2].f32[0] - v23;
          v27 = a2[2].f32[1] - v24;
          v28 = v19.f32[0] - a2->f32[0];
          v29 = v21 - v23;
          v30 = v22 - v24;
          goto LABEL_10;
        }
      }
    }

    v31 = a2->f32[0];
    v32 = a2[1].f32[1];
    if (a2->f32[0] == v32)
    {
      v33 = a2->f32[1];
      v34 = a2[2].f32[0];
      if (v33 == v34)
      {
        v35 = a2[1].f32[0];
        if (v35 == a2[2].f32[1])
        {
          v25 = v20 - v19.f32[0];
          v36 = *(a1 + 4);
          v37 = *(a1 + 8);
          v26 = *(a1 + 16) - v36;
          v27 = *(a1 + 20) - v37;
          v28 = v31 - v19.f32[0];
          v29 = v33 - v36;
          v30 = v35 - v37;
LABEL_10:
          v38 = ((v26 * v29) + (v28 * v25)) + (v30 * v27);
          if (v38 > 0.0)
          {
            v39 = ((v26 * v26) + (v25 * v25)) + (v27 * v27);
            if (v38 < v39)
            {
              v40 = v38 / v39;
              v25 = v25 * v40;
              v26 = v26 * v40;
              v27 = v27 * v40;
            }

            v28 = v28 - v25;
            v29 = v29 - v26;
            v30 = v30 - v27;
          }

          if ((((v29 * v29) + (v28 * v28)) + (v30 * v30)) >= (v18 * v18))
          {
            goto LABEL_20;
          }

LABEL_18:
          *a4 = 0.0;
          v43 = -a3[1].f32[0];
          *a6 = vneg_f32(*a3);
          a6[1].f32[0] = v43;
          *a8 = 2;
          return 1;
        }
      }
    }

    else
    {
      v34 = a2[2].f32[0];
      v33 = a2->f32[1];
    }

    *v173 = v20 - v19.f32[0];
    *&v173[4] = vsub_f32(*(a1 + 16), *(a1 + 4));
    v41 = v32 - v31;
    v42 = a2[2].f32[1] - a2[1].f32[0];
    v169.f32[0] = v41;
    v169.f32[1] = v34 - v33;
    v170 = v42;
    if (physx::Gu::distanceSegmentSegmentSquared(a1, v173, a2, &v169, 0, 0) < (v18 * v18))
    {
      goto LABEL_18;
    }

    v19.i32[0] = *a1;
  }

LABEL_20:
  v44 = *(a2 + 12);
  v45 = a2[2].f32[1];
  v46 = a2[1].f32[0];
  v158 = vsub_f32(v44, *a2);
  v60 = vmul_f32(v158, 0x3F0000003F000000);
  v47 = (v45 - v46) * 0.5;
  v48 = *(a1 + 8);
  v50 = *(a1 + 12);
  v49 = *(a1 + 16);
  v51 = *(a1 + 20);
  v52 = v19.f32[0] + v60.f32[0];
  v53 = v47 + v48;
  v54 = v60.f32[1] + v49;
  v19.i32[1] = *(a1 + 4);
  v55 = vsub_f32(v19, v60);
  v56 = v50 - v60.f32[0];
  v57 = v49 - v60.f32[1];
  v58 = v51 - v47;
  v59 = v60.f32[0] + v50;
  v60.f32[0] = v47 + v51;
  v61 = v54 - (v60.f32[1] + v19.f32[1]);
  v62 = v60.f32[0] - (v47 + v48);
  v63 = v57 - (v60.f32[1] + v19.f32[1]);
  v64 = v58 - (v47 + v48);
  v65 = (v61 * v64) - (v62 * v63);
  v66 = (v62 * (v56 - v52)) - ((v59 - v52) * v64);
  v67 = ((v59 - v52) * v63) - (v61 * (v56 - v52));
  v68 = sqrtf(((v66 * v66) + (v65 * v65)) + (v67 * v67));
  v157 = v45 - v46;
  if (v68 > 0.0)
  {
    v69 = 1.0 / v68;
    v65 = v65 * v69;
    v66 = v66 * v69;
    v67 = v67 * v69;
  }

  v70 = v48 - v47;
  v71 = a3->f32[0];
  v72 = a3->f32[1];
  v73 = a3[1].f32[0];
  v74 = v18 * v65;
  v75 = v18 * v66;
  v76 = v18 * v67;
  if ((((v66 * v72) + (v65 * a3->f32[0])) + (v67 * v73)) >= 0.0)
  {
    v83 = v55.f32[0] - v74;
    v84 = v55.f32[1] - v75;
    v85 = v70 - v76;
    v80 = v56 - v74;
    v81 = v57 - v75;
    v82 = v58 - v76;
    v77 = v59 - v74;
    v78 = v54 - v75;
    v79 = v60.f32[0] - v76;
  }

  else
  {
    v77 = v55.f32[0] + v74;
    v78 = v55.f32[1] + v75;
    v79 = v70 + v76;
    v80 = v56 + v74;
    v81 = v57 + v75;
    v82 = v58 + v76;
    v83 = v59 + v74;
    v84 = v54 + v75;
    v85 = v60.f32[0] + v76;
  }

  v86 = vmul_f32(vadd_f32(v44, *a2), 0x3F0000003F000000);
  v87 = (v45 + v46) * 0.5;
  v88 = v77 - v80;
  v89 = v78 - v81;
  v90 = v79 - v82;
  v91 = v83 - v80;
  v92 = v84 - v81;
  v93 = v85 - v82;
  v94 = (v72 * (v85 - v82)) - (v73 * (v84 - v81));
  v95 = (v73 * (v83 - v80)) - (v71 * (v85 - v82));
  v96 = (v71 * v92) - (v72 * (v83 - v80));
  v97 = ((v89 * v95) + (v88 * v94)) + ((v79 - v82) * v96);
  if (v97 < 0.00001 || ((v98 = v86.f32[0] - v80, v99 = v86.f32[1] - v81, v100 = v87 - v82, v101 = ((v99 * v95) + (v98 * v94)) + ((v87 - v82) * v96), v101 >= 0.0) ? (v102 = v101 <= v97) : (v102 = 0), !v102 || ((v103 = (v99 * v90) - (v100 * v89), v104 = (v100 * v88) - (v98 * v90), v105 = (v98 * v89) - (v99 * v88), v106 = ((v72 * v104) + (v71 * v103)) + (v73 * v105), v106 >= 0.0) ? (v107 = v106 <= v97) : (v107 = 0), !v107 || ((v108 = (((v92 * v104) + (v91 * v103)) + (v93 * v105)) * (1.0 / v97), v108 >= 0.0) ? (_NF = v108 < a9) : (_NF = 0), !_NF))))
  {
    v110 = 0;
    v111 = 0;
    *v173 = v55;
    *&v173[8] = v70;
    v174 = v56;
    v175 = v57;
    *v176 = v58;
    *&v176[1] = v18;
    *&v176[2] = v56;
    *&v176[3] = v57;
    *&v176[4] = v58;
    *&v176[5] = v59;
    *&v176[6] = v54;
    v176[7] = v60.i32[0];
    *&v176[8] = v18;
    *&v176[9] = v59;
    *&v176[10] = v54;
    v176[11] = v60.i32[0];
    *&v176[12] = v52;
    *&v176[13] = v60.f32[1] + v19.f32[1];
    *&v176[14] = v53;
    *&v176[15] = v18;
    v177 = v55;
    v178 = v70;
    v179 = v52;
    v180 = v60.f32[1] + v19.f32[1];
    v181 = v53;
    v182 = v18;
    v159 = v86;
    do
    {
      v112 = &v173[v110];
      v113 = *&v173[v110 + 8];
      v114 = *&v176[v110 / 4] - v113;
      v115 = *&v173[v110];
      v116 = vsub_f32(*&v173[v110 + 12], v115);
      v117 = vsub_f32(v86, v115);
      v118 = v87 - v113;
      v119 = (COERCE_FLOAT(vmul_f32(v117, v116).i32[1]) + (v117.f32[0] * v116.f32[0])) + (v118 * v114);
      if (v119 > 0.0)
      {
        v120 = (vmuls_lane_f32(v116.f32[1], v116, 1) + (v116.f32[0] * v116.f32[0])) + (v114 * v114);
        if (v119 >= v120)
        {
          v117 = vsub_f32(v117, v116);
        }

        else
        {
          v121 = v119 / v120;
          v114 = v114 * v121;
          v117 = vsub_f32(v117, vmul_n_f32(v116, v121));
        }

        v118 = v118 - v114;
      }

      v122 = v112[6];
      v123 = sqrtf((COERCE_FLOAT(vmul_f32(v117, v117).i32[1]) + (v117.f32[0] * v117.f32[0])) + (v118 * v118)) - v122;
      if (v123 <= 0.0)
      {
        v128 = 0;
        v124 = 0.0;
      }

      else
      {
        v124 = 0.0;
        if (v123 <= 10.0)
        {
          v125 = 0.0;
        }

        else
        {
          v125 = v123 + -10.0;
        }

        v126 = v87 + (v125 * a3[1].f32[0]);
        v161 = v125;
        v169 = vadd_f32(v86, vmul_n_f32(*a3, v125));
        v170 = v126;
        physx::Gu::intersectRayCapsuleInternal(&v169, a3, v112, &v173[v110 + 12], &v171, v122);
        v128 = v127 == 0;
        if (v127)
        {
          v129 = v171.f32[0];
          if (v171.f32[0] >= v171.f32[1] && v127 != 1)
          {
            v129 = v171.f32[1];
          }

          v124 = v161 + v129;
        }

        v86 = v159;
      }

      if (v124 < 0.0)
      {
        v128 = 1;
      }

      if (v124 > a9)
      {
        v128 = 1;
      }

      if (!v128)
      {
        a9 = v124;
      }

      v111 |= !v128;
      v110 += 28;
    }

    while (v110 != 112);
    v108 = a9;
    if ((v111 & 1) == 0)
    {
      return 0;
    }
  }

  *a8 = 0;
  if ((a7 & 3) != 0)
  {
    v131 = v108 * a3[1].f32[0];
    v132 = *(a1 + 8) - v131;
    v133 = vmul_n_f32(*a3, v108);
    *v173 = vsub_f32(*a1, v133);
    *&v173[8] = v132;
    v134 = (*(a1 + 20) - v131) - v132;
    v160 = vsub_f32(vsub_f32(*(a1 + 12), v133), *v173);
    v162 = v108;
    v169 = v160;
    v170 = v134;
    v171 = v158;
    v172 = v157;
    edgeEdgeDist(&v167, &v165, v173, &v169, a2, &v171);
    if ((a7 & 2) != 0)
    {
      v137 = vsub_f32(v167, v165);
      v138 = v168 - v166;
      *a6 = v137;
      a6[1].f32[0] = v138;
      v139 = sqrtf((COERCE_FLOAT(vmul_f32(v137, v137).i32[1]) + (v137.f32[0] * v137.f32[0])) + (v138 * v138));
      if (v139 > 0.0)
      {
        *a6 = vmul_n_f32(v137, 1.0 / v139);
        a6[1].f32[0] = v138 * (1.0 / v139);
      }

      if (v139 < 0.001)
      {
        _S4 = v158.i32[0];
        _V5.S[1] = v160.i32[1];
        v142 = vmuls_lane_f32(-v157, v160, 1) + (v158.f32[1] * v134);
        v143 = (v157 * v160.f32[0]) - (v158.f32[0] * v134);
        __asm { FMLA            S3, S4, V5.S[1] }

        a6->f32[0] = v142;
        a6->f32[1] = v143;
        a6[1].f32[0] = _S3;
        v147 = sqrtf(((v143 * v143) + (v142 * v142)) + (_S3 * _S3));
        if (v147 > 0.0)
        {
          a6->f32[0] = v142 * (1.0 / v147);
          a6->f32[1] = v143 * (1.0 / v147);
          a6[1].f32[0] = _S3 * (1.0 / v147);
        }

        if (v147 < 0.001)
        {
          v148 = *(a1 + 20) - *(a1 + 8);
          v163 = vsub_f32(*(a1 + 12), *a1);
          v164 = v148;
          edgeEdgeDist(&v167, &v165, a1, &v163, a2, &v171);
          v149 = vsub_f32(v167, v165);
          v150 = v168 - v166;
          *a6 = v149;
          a6[1].f32[0] = v150;
          v151 = sqrtf((COERCE_FLOAT(vmul_f32(v149, v149).i32[1]) + (v149.f32[0] * v149.f32[0])) + (v150 * v150));
          if (v151 > 0.0)
          {
            v152 = 1.0 / v151;
            *a6 = vmul_n_f32(v149, v152);
            a6[1].f32[0] = v150 * v152;
          }
        }
      }

      *a8 = 2;
      v135 = 3;
    }

    else
    {
      v135 = 1;
    }

    v108 = v162;
    if (a7)
    {
      v153 = a2[3].f32[0];
      v154 = *(a1 + 24);
      v155 = (v153 * v168) + (v154 * v166);
      v156 = 1.0 / (v153 + v154);
      *a5 = vmul_n_f32(vadd_f32(vmul_n_f32(v167, v153), vmul_n_f32(v165, v154)), v156);
      a5[1].f32[0] = v156 * v155;
      *a8 = v135;
    }
  }

  *a4 = v108;
  return 1;
}

float32_t edgeEdgeDist(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5, float32x2_t *a6)
{
  v6 = a3[1].f32[0];
  v7 = a5[1].f32[0] - v6;
  v8 = a5->f32[0] - COERCE_FLOAT(*a3);
  v9 = a5->f32[1] - COERCE_FLOAT(HIDWORD(*a3));
  v10 = *a4;
  v11 = a4[1].f32[0];
  v12 = (vmuls_lane_f32(COERCE_FLOAT(HIDWORD(*a4)), *a4, 1) + (v10.f32[0] * v10.f32[0])) + (v11 * v11);
  v13 = a6->f32[1];
  v14 = a6[1].f32[0];
  v15 = ((v13 * v13) + (a6->f32[0] * a6->f32[0])) + (v14 * v14);
  v16 = (vmuls_lane_f32(v13, *a4, 1) + (COERCE_FLOAT(*a4) * a6->f32[0])) + (v11 * v14);
  v17 = (vmuls_lane_f32(v9, *a4, 1) + (COERCE_FLOAT(*a4) * v8)) + (v11 * v7);
  v18 = ((v9 * v13) + (a6->f32[0] * v8)) + (v14 * v7);
  v19 = (v12 * v15) - (v16 * v16);
  v20 = 0.0;
  if (v19 != 0.0)
  {
    v21 = ((v17 * v15) - (v18 * v16)) / v19;
    if (v21 >= 0.0)
    {
      v20 = v21;
      if (v21 > 1.0)
      {
        v20 = 1.0;
      }
    }
  }

  if (v15 != 0.0)
  {
    v22 = -(v18 - (v20 * v16)) / v15;
    if (v22 >= 0.0)
    {
      if (v22 <= 1.0)
      {
        goto LABEL_18;
      }

      v20 = 0.0;
      if (v12 != 0.0)
      {
        v24 = (v17 + v16) / v12;
        v22 = 1.0;
        if (v24 < 0.0)
        {
          goto LABEL_18;
        }

        v22 = 1.0;
        v20 = v24;
        if (v24 <= 1.0)
        {
          goto LABEL_18;
        }

        v20 = 1.0;
      }

      v22 = 1.0;
      goto LABEL_18;
    }
  }

  v22 = 0.0;
  if (v12 == 0.0 || (v23 = v17 / v12, v23 < 0.0))
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 1.0;
    if (v23 <= 1.0)
    {
      v20 = v23;
    }
  }

LABEL_18:
  *a1 = vadd_f32(*a3, vmul_n_f32(v10, v20));
  a1[1].f32[0] = v6 + (v11 * v20);
  result = (v22 * a6[1].f32[0]) + a5[1].f32[0];
  *a2 = vadd_f32(vmul_n_f32(*a6, v22), *a5);
  a2[1].f32[0] = result;
  return result;
}

uint64_t physx::Gu::sweepCapsuleTriangles_Precise(uint64_t result, uint64_t a2, uint64_t a3, float32x2_t *a4, unsigned int *a5, uint64_t a6, float32x2_t *a7, __int16 *a8, float a9, float32x4_t a10, float32x4_t a11, unsigned __int8 a12, float32x4_t *a13)
{
  v370 = *MEMORY[0x1E69E9840];
  v270 = result;
  if (!result)
  {
    return result;
  }

  v14 = *a8;
  v15 = *a3;
  v16 = *(a3 + 4);
  v17 = *(a3 + 8);
  v18 = *(a3 + 12);
  v20 = *(a3 + 16);
  v19 = *(a3 + 20);
  v21 = (*a3 - v18) * 0.5;
  v22 = (v16 - v20) * 0.5;
  v23 = (v17 - v19) * 0.5;
  v24 = sqrtf(((v22 * v22) + (v21 * v21)) + (v23 * v23));
  if (v24 == 0.0)
  {
    v32 = *(a3 + 24);

    return physx::Gu::sweepSphereTriangles(result, a2, a3, a4, a5, a6, a7, a12, v32, a9, (v14 & 0x80) != 0, (v14 & 0x40) != 0, (v14 & 0x10) == 0);
  }

  v25 = a12 | ((*a8 & 0x80u) >> 7);
  v26 = a4->f32[0];
  v27 = a4->f32[1];
  a10.i32[0] = a4[1].i32[0];
  v28 = fabsf((((v22 * (1.0 / v24)) * v27) + ((v21 * (1.0 / v24)) * a4->f32[0])) + ((v23 * (1.0 / v24)) * a10.f32[0]));
  v29 = (v15 + v18) * 0.5;
  v30 = (v16 + v20) * 0.5;
  v31 = (v17 + v19) * 0.5;
  v285.f32[0] = v29;
  v285.f32[1] = v30;
  v286 = v31;
  v269 = v14;
  if (v28 >= 0.99999)
  {
    v307 = v18 - v15;
    v308 = v20 - v16;
    v309 = v19 - v17;
    v310 = ((v308 * v308) + (v307 * v307)) + (v309 * v309);
    v34 = 1.0 / v310;
    if (v310 == 0.0)
    {
      v34 = 0.0;
    }

    v311 = v34;
    v279.f32[0] = v29 + (v24 * v26);
    v279.f32[1] = v30 + (v24 * v27);
    v280 = v31 + (v24 * a10.f32[0]);
    if (a5)
    {
      v35 = *a5;
    }

    else
    {
      v35 = 0;
    }

    v174 = 0;
    v175 = ((v27 * (v30 + (v24 * v27))) + ((v29 + (v24 * v26)) * v26)) + ((v31 + (v24 * a10.f32[0])) * a10.f32[0]);
    v266 = 2.0;
    v176 = -1;
    v177 = 1.0;
    v178 = a9;
    v268 = 0.0;
    v179 = 0.0;
    v180 = 0.0;
    while (1)
    {
      if (v35 == v174)
      {
        v181 = 0;
      }

      else
      {
        v181 = v174;
      }

      if (v174)
      {
        v182 = v181;
      }

      else
      {
        v182 = v35;
      }

      v183 = (a2 + 36 * v182);
      v184 = *(a3 + 24);
      v185 = v183[3];
      v186 = *v183;
      v187 = v183[1];
      v188 = v183[4];
      v189 = v183[5];
      v190 = v183[2];
      v191 = v183[6];
      v192 = v183[7];
      v193 = v183[8];
      v194 = ((*v183 + v185) + v191) * 0.33333;
      v195 = ((v187 + v188) + v192) * 0.33333;
      v196 = ((v190 + v189) + v193) * 0.33333;
      v197 = a4->f32[0];
      v198 = a4->f32[1];
      v199 = a4[1].f32[0];
      v200 = fmaxf((((v195 - v279.f32[1]) * v198) + ((v194 - v279.f32[0]) * a4->f32[0])) + ((v196 - v280) * v199), 0.0);
      if (v200 >= v178)
      {
        v200 = v178;
      }

      v201 = (sqrtf(((((v195 - v279.f32[1]) - (v198 * v200)) * ((v195 - v279.f32[1]) - (v198 * v200))) + (((v194 - v279.f32[0]) - (v197 * v200)) * ((v194 - v279.f32[0]) - (v197 * v200)))) + (((v196 - v280) - (v199 * v200)) * ((v196 - v280) - (v199 * v200)))) - v184) + -0.0001;
      v162 = v201 < 0.0;
      v202 = v201 * v201;
      v204 = !v162 && v202 > ((((v195 - v187) * (v195 - v187)) + ((v194 - v186) * (v194 - v186))) + ((v196 - v190) * (v196 - v190))) && v202 > ((((v195 - v188) * (v195 - v188)) + ((v194 - v185) * (v194 - v185))) + ((v196 - v189) * (v196 - v189)));
      v205 = (((v195 - v192) * (v195 - v192)) + ((v194 - v191) * (v194 - v191))) + ((v196 - v193) * (v196 - v193));
      if (!v204 || v202 <= v205)
      {
        v207 = ((v187 * v198) + (v186 * v197)) + (v190 * v199);
        v208 = ((v188 * v198) + (v185 * v197)) + (v189 * v199);
        v209 = ((v192 * v198) + (v191 * v197)) + (v193 * v199);
        if (v207 >= v208)
        {
          v210 = ((v188 * v198) + (v185 * v197)) + (v189 * v199);
        }

        else
        {
          v210 = ((v187 * v198) + (v186 * v197)) + (v190 * v199);
        }

        if (v210 >= v209)
        {
          v210 = ((v192 * v198) + (v191 * v197)) + (v193 * v199);
        }

        v211 = v184 + 0.002;
        if (v210 <= ((v175 + v178) + v211))
        {
          v212 = v175 - v211;
          v213 = v208 < v212 && v207 < v212;
          if (!v213 || v209 >= v212)
          {
            v215 = v185 - v186;
            v216 = v188 - v187;
            v217 = v189 - v190;
            v218 = v191 - v186;
            v219 = v192 - v187;
            v220 = v193 - v190;
            v221 = (v216 * v220) - (v217 * v219);
            v222 = (v217 * v218) - (v215 * v220);
            v223 = (v215 * v219) - (v216 * v218);
            v287 = __PAIR64__(LODWORD(v222), LODWORD(v221));
            v288 = v223;
            if ((v25 & 1) != 0 || (((v222 * v198) + (v221 * v197)) + (v223 * v199)) <= 0.0)
            {
              if ((v14 & 0x10) == 0)
              {
                if (physx::Gu::intersectCapsuleTriangle(&v287, (a2 + 36 * v182), v183 + 3, v183 + 6, a3, &v307))
                {
                  v244 = -a4[1].f32[0];
                  *a7 = vneg_f32(*a4);
                  a7[1].f32[0] = v244;
                  *(a6 + 16) = v182;
                  *(a6 + 20) = 1026;
                  v245 = -a4[1].f32[0];
                  *(a6 + 36) = vneg_f32(*a4);
                  *(a6 + 44) = v245;
                  *(a6 + 48) = 0;
                  return 1;
                }

                v222 = *(&v287 + 1);
                LODWORD(v221) = v287;
                v223 = v288;
                LOBYTE(v14) = v269;
              }

              v224 = sqrtf(((v222 * v222) + (v221 * v221)) + (v223 * v223));
              if (v224 != 0.0)
              {
                v225 = v177 / v224;
                *&v287 = v221 * v225;
                *(&v287 + 1) = v222 * v225;
                v288 = v223 * v225;
                LODWORD(v283[0]) = 0;
                v278.i8[0] = 0;
                if (physx::Gu::sweepSphereVSTri(v183, &v287, &v279, a4, v283, &v278, 0, *(a3 + 24)) && *v283 <= a9)
                {
                  v226 = -fabsf(((*(&v287 + 1) * a4->f32[1]) + (*&v287 * a4->f32[0])) + (v288 * a4[1].f32[0]));
                  if (*v283 <= v178)
                  {
                    v227 = v178;
                  }

                  else
                  {
                    v227 = *v283;
                  }

                  v177 = 1.0;
                  if (v227 < 1.0)
                  {
                    v227 = 1.0;
                  }

                  v228 = v227 * 0.001;
                  LOBYTE(v14) = v269;
                  if (v178 - v228) > *v283 || v266 > v226 && (v178 + v228) > *v283 || (v266 == v226 ? (v229 = *v283 < v178) : (v229 = 0), !v229 ? (v230 = 0) : (v230 = 1), *v283 == 0.0 || (v230))
                  {
                    v179 = *(&v287 + 1);
                    v180 = *&v287;
                    if ((v269 & 0x40) != 0)
                    {
                      v268 = v288;
                      v178 = *v283;
                      v176 = v182;
LABEL_176:
                      if (v176 != -1)
                      {
                        v246 = v14;
                        physx::Gu::computeSphereTriImpactData(&v287, v283, &v279, a4, a2 + 36 * v176, v178);
                        if ((v246 & 0x80) == 0 || a12)
                        {
                          v248 = *v283;
                          v249 = a6;
                          v250 = a7;
                          v247 = v268;
                        }

                        else
                        {
                          v247 = v268;
                          v248 = *v283;
                          v249 = a6;
                          v250 = a7;
                          if ((((v179 * a4->f32[1]) + (v180 * a4->f32[0])) + (v268 * a4[1].f32[0])) > 0.0)
                          {
                            v248 = -*v283;
                            *(v283 + 4) = vneg_f32(*(v283 + 4));
                          }
                        }

                        *(v249 + 24) = v287;
                        *(v249 + 32) = v288;
                        *(v249 + 36) = v248;
                        *(v249 + 40) = *(v283 + 4);
                        *(v249 + 48) = v178;
                        *(v249 + 16) = v176;
                        *(v249 + 20) = 3;
                        v250->f32[0] = v180;
                        v250->f32[1] = v179;
                        result = 1;
                        v250[1].f32[0] = v247;
                        return result;
                      }

                      return 0;
                    }

                    v266 = v226;
                    v268 = v288;
                    v178 = *v283;
                    v176 = v182;
                  }
                }

                else
                {
                  LOBYTE(v14) = v269;
                }
              }
            }
          }
        }
      }

      if (v270 == ++v174)
      {
        goto LABEL_176;
      }
    }
  }

  *(a6 + 16) = -1;
  if (a5)
  {
    v263 = *a5;
  }

  else
  {
    v263 = 0;
  }

  v36 = 0;
  v37 = *(a3 + 24);
  v38 = ((v30 * v27) + (v29 * v26)) + (v31 * a10.f32[0]);
  v279.f32[0] = v18 - v15;
  v279.f32[1] = v20 - v16;
  v280 = v19 - v17;
  v281 = (((v20 - v16) * (v20 - v16)) + (v279.f32[0] * v279.f32[0])) + ((v19 - v17) * (v19 - v17));
  *&v39 = 1.0 / v281;
  a10.i32[1] = 0;
  if (v281 == 0.0)
  {
    *&v39 = 0.0;
  }

  v282 = LODWORD(v39);
  v40 = v38 - (v37 + 0.002);
  v257 = 2.0;
  v41 = a9;
  HIDWORD(v39) = 0;
  *&v252 = 0.0;
  v253 = 0.0;
  v254 = 0.0;
  v260 = (v16 - v20) * 0.5;
  v261 = v21;
  v258 = v38;
  v259 = (v17 - v19) * 0.5;
  while (1)
  {
    v42 = v36 == v263 ? 0 : v36;
    v43 = v36 ? v42 : v263;
    v44 = (a2 + 36 * v43);
    v45 = v44 + 3;
    v46 = v44[1];
    v47 = v44[3] - *v44;
    v48 = v44[4] - v46;
    v49 = v44 + 6;
    v50 = v44[6] - *v44;
    v51 = v44[7] - v46;
    v52 = v44[2];
    v53 = v44[5] - v52;
    v54 = v44[8] - v52;
    *&v39 = (v48 * v54) - (v53 * v51);
    a11.f32[0] = (v53 * v50) - (v47 * v54);
    a10.f32[0] = (v47 * v51) - (v48 * v50);
    v278.i64[0] = __PAIR64__(a11.u32[0], LODWORD(v39));
    v278.i32[2] = a10.i32[0];
    if ((v25 & 1) != 0 || (v55 = (a11.f32[0] * a4->f32[1]) + (*&v39 * a4->f32[0]), a11.i32[0] = a4[1].i32[0], *&v39 = v55 + (a10.f32[0] * a11.f32[0]), *&v39 <= 0.0))
    {
      if (!a13 || physx::Gu::intersectTriangleBox(a13, (a2 + 36 * v43), v45, v49, v39, a10, a11))
      {
        break;
      }
    }

LABEL_99:
    if (++v36 == v270)
    {
      v173 = a6;
      v43 = *(a6 + 16);
      v166 = v41;
      v170 = v269;
      v169 = *&v252;
      goto LABEL_166;
    }
  }

  if ((v269 & 0x10) == 0 && physx::Gu::intersectCapsuleTriangle(v278.f32, v44, v45, v49, a3, &v279))
  {
    v231 = -a4[1].f32[0];
    *a7 = vneg_f32(*a4);
    a7[1].f32[0] = v231;
    *(a6 + 16) = v43;
    *(a6 + 20) = 1026;
    v232 = -a4[1].f32[0];
    *(a6 + 36) = vneg_f32(*a4);
    *(a6 + 44) = v232;
    *(a6 + 48) = 0;
    return 1;
  }

  v56 = v44[1];
  v57 = *v44 - v21;
  v58 = v56 - v22;
  v59 = v44[2];
  v60 = v44[3];
  v61 = v59 - v23;
  v62 = v60 - v21;
  v63 = v44[4];
  v64 = v44[5];
  v65 = v63 - v22;
  v66 = v64 - v23;
  v67 = v44[6];
  v68 = v44[7];
  v69 = v67 - v21;
  v70 = v68 - v22;
  v71 = v44[8];
  v72 = v71 - v23;
  v73 = v21 + *v44;
  v74 = v22 + v56;
  v75 = v23 + v59;
  v76 = v21 + v60;
  v77 = v22 + v63;
  v78 = v23 + v64;
  v79 = v21 + v67;
  v80 = v22 + v68;
  v81 = v23 + v71;
  v82 = (v67 - v21) - v57;
  v265 = v57;
  v264 = v82;
  if ((((v22 * v278.f32[1]) + (v278.f32[0] * v21)) + (v278.f32[2] * v23)) >= 0.0)
  {
    v83 = ((v77 - v74) * (v81 - v75)) - ((v78 - v75) * (v80 - v74));
    v84 = ((v78 - v75) * (v79 - v73)) - ((v76 - v73) * (v81 - v75));
    v86 = v21 + *v44;
    v87 = v74;
    v88 = v23 + v59;
    v89 = v21 + v60;
    v90 = v77;
    v91 = ((v76 - v73) * (v80 - v74)) - ((v77 - v74) * (v79 - v73));
    v92 = v78;
    v93 = v79;
    v94 = v80;
    v95 = v81;
  }

  else
  {
    v83 = ((v65 - v58) * (v72 - v61)) - ((v66 - v61) * (v70 - v58));
    v84 = ((v66 - v61) * v82) - ((v62 - v57) * (v72 - v61));
    v85 = -((v65 - v58) * v82);
    v86 = *v44 - v21;
    v87 = v58;
    v88 = v59 - v23;
    v89 = v60 - v21;
    v90 = v65;
    v91 = v85 + ((v62 - v57) * (v70 - v58));
    v92 = v66;
    v93 = v69;
    v94 = v70;
    v95 = v72;
  }

  v307 = v86;
  v308 = v87;
  v309 = v88;
  v310 = v89;
  v311 = v90;
  v312 = v92;
  v313 = v93;
  v314 = v94;
  v287 = __PAIR64__(LODWORD(v84), LODWORD(v83));
  v288 = v91;
  v315 = v95;
  v316 = v62;
  v317 = v65;
  v318 = v66;
  v319 = v76;
  v320 = v77;
  v321 = v78;
  v322 = v79;
  v323 = v80;
  v324 = v81;
  v96 = v79 - v62;
  v97 = v80 - v65;
  v98 = v81 - v66;
  v99 = ((v77 - v65) * (v81 - v66)) - ((v78 - v66) * (v80 - v65));
  v100 = ((v78 - v66) * (v79 - v62)) - ((v76 - v62) * (v81 - v66));
  v101 = ((v76 - v62) * (v80 - v65)) - ((v77 - v65) * (v79 - v62));
  v102 = a4->f32[0];
  v103 = a4->f32[1];
  v104 = a4[1].f32[0];
  if ((((v100 * v103) + (v99 * a4->f32[0])) + (v101 * v104)) > 0.0)
  {
    v319 = v79;
    v320 = v80;
    v321 = v81;
    v322 = v76;
    v99 = -v99;
    v100 = -v100;
    v101 = -v101;
    v323 = v77;
    v324 = v78;
  }

  v289 = v99;
  v290 = v100;
  v291 = v101;
  v325 = v62;
  v326 = v65;
  v327 = v66;
  v328 = v79;
  v329 = v80;
  v330 = v81;
  v331 = v69;
  v332 = v70;
  v333 = v72;
  v105 = (v97 * (v72 - v66)) - (v98 * (v70 - v65));
  v106 = (v98 * (v69 - v62)) - (v96 * (v72 - v66));
  v107 = (v96 * (v70 - v65)) - (v97 * (v69 - v62));
  if ((((v106 * v103) + (v105 * v102)) + (v107 * v104)) > 0.0)
  {
    v328 = v69;
    v329 = v70;
    v330 = v72;
    v331 = v79;
    v105 = -v105;
    v106 = -v106;
    v107 = -v107;
    v332 = v80;
    v333 = v81;
  }

  v292 = v105;
  v293 = v106;
  v294 = v107;
  v334 = v265;
  v335 = v58;
  v336 = v61;
  v337 = v69;
  v338 = v70;
  v339 = v72;
  v340 = v79;
  v341 = v80;
  v342 = v81;
  v108 = v79 - v265;
  v109 = v80 - v58;
  v110 = v81 - v61;
  v111 = ((v70 - v58) * (v81 - v61)) - ((v72 - v61) * (v80 - v58));
  v112 = ((v72 - v61) * (v79 - v265)) - (v264 * (v81 - v61));
  v113 = (v264 * (v80 - v58)) - ((v70 - v58) * (v79 - v265));
  if ((((v112 * v103) + (v111 * v102)) + (v113 * v104)) > 0.0)
  {
    v337 = v79;
    v338 = v80;
    v339 = v81;
    v340 = v69;
    v111 = -v111;
    v112 = -v112;
    v113 = -v113;
    v341 = v70;
    v342 = v72;
  }

  v295 = v111;
  v296 = v112;
  v297 = v113;
  v343 = v265;
  v344 = v58;
  v345 = v61;
  v346 = v79;
  v347 = v80;
  v348 = v81;
  v349 = v73;
  v350 = v74;
  v351 = v75;
  v114 = (v109 * (v75 - v61)) - (v110 * (v74 - v58));
  v115 = (v110 * (v73 - v265)) - (v108 * (v75 - v61));
  v116 = (v108 * (v74 - v58)) - (v109 * (v73 - v265));
  v23 = v259;
  if ((((v115 * v103) + (v114 * v102)) + (v116 * v104)) > 0.0)
  {
    v346 = v73;
    v347 = v74;
    v348 = v75;
    v349 = v79;
    v114 = -v114;
    v115 = -v115;
    v116 = -v116;
    v350 = v80;
    v351 = v81;
  }

  v22 = v260;
  v21 = v261;
  v298 = v114;
  v299 = v115;
  v300 = v116;
  v352 = v73;
  v353 = v74;
  v354 = v75;
  v355 = v76;
  v356 = v77;
  v357 = v78;
  v358 = v62;
  v359 = v65;
  v360 = v66;
  v117 = v62 - v73;
  v118 = v65 - v74;
  v119 = v66 - v75;
  v120 = ((v77 - v74) * (v66 - v75)) - ((v78 - v75) * (v65 - v74));
  v121 = ((v78 - v75) * (v62 - v73)) - ((v76 - v73) * (v66 - v75));
  v122 = ((v76 - v73) * (v65 - v74)) - ((v77 - v74) * (v62 - v73));
  if ((((v121 * v103) + (v120 * v102)) + (v122 * v104)) > 0.0)
  {
    v355 = v62;
    v356 = v65;
    v357 = v66;
    v358 = v76;
    v120 = -v120;
    v121 = -v121;
    v122 = -v122;
    v359 = v77;
    v360 = v78;
  }

  v301 = v120;
  v302 = v121;
  v303 = v122;
  v361 = v73;
  v362 = v74;
  v363 = v75;
  v364 = v62;
  v365 = v65;
  v366 = v66;
  v367 = v265;
  v368 = v58;
  v369 = v61;
  v123 = v265 - v73;
  v124 = v58 - v74;
  v125 = (v118 * (v61 - v75)) - (v119 * v124);
  v126 = (v119 * (v265 - v73)) - (v117 * (v61 - v75));
  v127 = (v117 * v124) - (v118 * v123);
  if ((((v126 * v103) + (v125 * v102)) + (v127 * v104)) > 0.0)
  {
    v364 = v265;
    v365 = v58;
    v366 = v61;
    v367 = v62;
    v125 = -v125;
    v126 = -v126;
    v127 = -v127;
    v368 = v65;
    v369 = v66;
  }

  v304 = v125;
  v305 = v126;
  v306 = v127;
  v129 = v278.f32[1];
  v128 = v278.f32[0];
  v130 = v278.f32[2];
  v131 = sqrtf(((v129 * v129) + (v128 * v128)) + (v130 * v130));
  if (v131 > 0.0)
  {
    v132 = 1.0 / v131;
    v128 = v278.f32[0] * v132;
    v129 = v278.f32[1] * v132;
    v278.f32[0] = v278.f32[0] * v132;
    v278.f32[1] = v278.f32[1] * v132;
    v130 = v278.f32[2] * v132;
    v278.f32[2] = v278.f32[2] * v132;
  }

  v133 = 0;
  v267 = -fabsf(((v103 * v129) + (v128 * v102)) + (v130 * v104));
  v134 = &v307;
  while (1)
  {
    v135 = (&v287 + v133);
    v136 = a4->f32[0];
    v137 = a4->f32[1];
    v138 = a4[1].f32[0];
    if ((v25 & 1) == 0 && (((v137 * v135[1]) + (*v135 * v136)) + (v135[2] * v138)) > 0.0)
    {
      goto LABEL_88;
    }

    v139 = *v134;
    v140 = v134[1];
    v142 = v134[2];
    v141 = v134[3];
    v144 = v134[4];
    v143 = v134[5];
    v145 = v134[6];
    v146 = v134[7];
    v147 = v134[8];
    v148 = ((*v134 + v141) + v145) * 0.33333;
    v149 = ((v140 + v144) + v146) * 0.33333;
    v150 = ((v142 + v143) + v147) * 0.33333;
    v151 = fmaxf(((v137 * (v149 - v285.f32[1])) + ((v148 - v285.f32[0]) * v136)) + ((v150 - v286) * v138), 0.0);
    if (v151 >= v41)
    {
      v151 = v41;
    }

    v152 = (sqrtf(((((v149 - v285.f32[1]) - (v137 * v151)) * ((v149 - v285.f32[1]) - (v137 * v151))) + (((v148 - v285.f32[0]) - (v136 * v151)) * ((v148 - v285.f32[0]) - (v136 * v151)))) + (((v150 - v286) - (v138 * v151)) * ((v150 - v286) - (v138 * v151)))) - v37) + -0.0001;
    v162 = v152 < 0.0;
    v153 = v152 * v152;
    v154 = !v162 && v153 > ((((v149 - v140) * (v149 - v140)) + ((v148 - v139) * (v148 - v139))) + ((v150 - v142) * (v150 - v142)));
    v155 = v154 && v153 > ((((v149 - v144) * (v149 - v144)) + ((v148 - v141) * (v148 - v141))) + ((v150 - v143) * (v150 - v143)));
    v156 = (((v149 - v146) * (v149 - v146)) + ((v148 - v145) * (v148 - v145))) + ((v150 - v147) * (v150 - v147));
    if (v155 && v153 > v156)
    {
      goto LABEL_88;
    }

    v158 = ((v137 * v140) + (v139 * v136)) + (v142 * v138);
    v159 = ((v137 * v144) + (v141 * v136)) + (v143 * v138);
    v160 = ((v137 * v146) + (v145 * v136)) + (v147 * v138);
    if (v158 >= v159)
    {
      v161 = v159;
    }

    else
    {
      v161 = v158;
    }

    if (v161 >= v160)
    {
      v161 = v160;
    }

    if (v161 > ((v37 + 0.002) + (v258 + v41)))
    {
      goto LABEL_88;
    }

    v162 = v159 < v40 && v158 < v40;
    v163 = v162;
    if (v163 && v160 < v40)
    {
      goto LABEL_88;
    }

    *&v39 = *(&v287 + v133);
    *a10.f32 = vmul_f32(*&v39, *&v39);
    a10.i32[0] = *(&v287 + v133 + 8);
    v164 = sqrtf((a10.f32[1] + (*&v39 * *&v39)) + (a10.f32[0] * a10.f32[0]));
    if (v164 == 0.0)
    {
      goto LABEL_88;
    }

    v165 = 1.0 / v164;
    *v135 = vmul_n_f32(*&v39, v165);
    *(&v287 + v133 + 8) = a10.f32[0] * v165;
    v277.i32[0] = 0;
    v276.i8[0] = 0;
    if (!physx::Gu::sweepSphereVSTri(v134, v135, &v285, a4, v277.f32, &v276, 0, v37))
    {
      goto LABEL_88;
    }

    v166 = v277.f32[0];
    if (v277.f32[0] > a9)
    {
      goto LABEL_88;
    }

    if (v277.f32[0] <= v41)
    {
      v167 = v41;
    }

    else
    {
      v167 = v277.f32[0];
    }

    if (v167 < 1.0)
    {
      v167 = 1.0;
    }

    v168 = v167 * 0.001;
    if ((v41 - v168) <= v277.f32[0] && (v257 <= v267 || (v41 + v168) <= v277.f32[0]))
    {
      v171 = v277.f32[0] < v41 && v257 == v267;
      v172 = v171;
      if (v277.f32[0] != 0.0 && !v172)
      {
        goto LABEL_88;
      }
    }

    *(a6 + 16) = v43;
    a10 = *v134;
    a11 = *(v134 + 4);
    v283[0] = *v134;
    v283[1] = a11;
    v284 = *(v134 + 8);
    v253 = v278.f32[1];
    v254 = v278.f32[0];
    v169 = v278.f32[2];
    v170 = v269;
    if ((v269 & 0x40) != 0)
    {
      break;
    }

    v252 = v278.i32[2];
    v257 = v267;
    v41 = v166;
LABEL_88:
    v133 += 12;
    v134 += 9;
    if (v133 == 84)
    {
      goto LABEL_99;
    }
  }

  v173 = a6;
LABEL_166:
  if (v43 == -1)
  {
    return 0;
  }

  *(v173 + 48) = v166;
  a7->f32[0] = v254;
  a7->f32[1] = v253;
  a7[1].f32[0] = v169;
  v233 = v170;
  physx::Gu::computeSphereTriImpactData((v173 + 24), (v173 + 36), &v285, a4, v283, v166);
  if (v233 < 0 && (a12 & 1) == 0 && (((v253 * a4->f32[1]) + (v254 * a4->f32[0])) + (v169 * a4[1].f32[0])) > 0.0)
  {
    v234 = -*(v173 + 44);
    *(v173 + 36) = vneg_f32(*(v173 + 36));
    *(v173 + 44) = v234;
  }

  v235 = *(v173 + 16);
  if (v235 != -1)
  {
    v236 = a2 + 36 * v235;
    v237 = *(v173 + 48);
    v238 = v237 * a4[1].f32[0];
    v239.i32[3] = 0;
    v277 = 0u;
    v278 = 0u;
    v240 = vmul_n_f32(*a4, v237);
    *v239.f32 = vadd_f32(v240, *a3);
    v239.f32[2] = v238 + *(a3 + 8);
    v276 = v239;
    *v241.f32 = vadd_f32(v240, *(a3 + 12));
    v241.f32[2] = v238 + *(a3 + 20);
    v241.i32[3] = 0;
    v242.i64[0] = *v236;
    v242.i64[1] = *(v236 + 8);
    v274 = v242;
    v275 = v241;
    v241.i64[0] = *(v236 + 12);
    v241.i64[1] = *(v236 + 20);
    v273 = v241;
    v241.i64[0] = *(v236 + 24);
    v241.i64[1] = *(v236 + 32);
    v272 = v241;
    physx::Gu::distanceSegmentTriangleSquared(&v276, &v275, &v274, &v273, &v272, &v278, &v277);
    v243 = v277.i32[2];
    *(v173 + 24) = v277.i64[0];
    *(v173 + 32) = v243;
    *(v173 + 20) = 3;
  }

  return 1;
}